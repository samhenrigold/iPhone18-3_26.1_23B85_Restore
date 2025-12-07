uint64_t sub_100469200(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (__OFADD__(a2, 1))
  {
    goto LABEL_66;
  }

  v9 = a3;
  if (a2 + 1 >= a3)
  {
    sub_1003A5228();
    v17 = swift_allocError();
    *v73 = v9;
LABEL_59:
    swift_willThrow();
    v96 = v17;
    swift_errorRetain();
    sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
    if (swift_dynamicCast())
    {
    }
  }

  v10 = result;
  v11 = a2 + 2;
  v12 = *result;
  v13 = *(result + 8);
  v14 = *(result + 16);
  v15 = *(result + 20);
  v16 = *(result + 22);
  if (a2 + 2 >= a3)
  {
LABEL_56:
    sub_1003A5228();
    v17 = swift_allocError();
    *v74 = v9;

LABEL_58:
    swift_willThrow();

    *v10 = v12;
    *(v10 + 8) = v13;
    *(v10 + 16) = v14;
    *(v10 + 20) = v15;
    *(v10 + 22) = v16;
    goto LABEL_59;
  }

  v17 = v8;
  v18 = a4;
  v78 = a2 + 2;
  v79 = result;
  while (1)
  {
    swift_retain_n();
    sub_10042B1A0(v10, v11, v9, a5, a6, a7, a8, &v92);
    if (v17)
    {

      goto LABEL_58;
    }

    v22 = v92;
    v23 = DWORD2(v92);
    v24 = HIDWORD(v92);
    v25 = BYTE6(v93);
    v26 = *(&v93 + 1);
    v27 = *v18;
    v28 = v18[1];
    v90 = WORD2(v93);
    v91 = v92;
    v88 = v93;
    v89 = BYTE6(v93);
    v84 = *(&v93 + 1);
    v85 = HIDWORD(v92);
    v86 = DWORD2(v92);
    if (*v18)
    {
      break;
    }

    v41 = *(v28 + 16);
    if (!v41)
    {

      v11 = v78;
      v10 = v79;
      v57 = v89;
      v56 = v90;
      v17 = 0;
LABEL_51:
      v75 = v75 & 0xFF00000000000000 | v88 | (v56 << 32) | (v57 << 48);
      sub_10046A8F4(v22, v23 | (v24 << 32), v75, v41, sub_1003E555C);

      v71 = v18[2];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v18[2] = v71;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1003E557C(0, *(v71 + 16) + 1, 1);
        v71 = v18[2];
      }

      v20 = *(v71 + 16);
      v19 = *(v71 + 24);
      if (v20 >= v19 >> 1)
      {
        sub_1003E557C((v19 > 1), v20 + 1, 1);
      }

      v21 = v18[2];
      *(v21 + 16) = v20 + 1;
      *(v21 + 8 * v20 + 32) = v26;
      goto LABEL_8;
    }

    v54 = HIDWORD(v92) - DWORD2(v92);

    swift_beginAccess();
    v55 = v23;
    v38 = 0;
    v57 = v89;
    v56 = v90;
    v58 = (v28 + 54);
    v87 = (v89 | (v90 << 8)) + v55;
    while (1)
    {
      v59 = *(v58 - 14);
      v60 = *(v58 - 10);
      if (v60 - v59 == v54)
      {
        v61 = *(v58 - 22);
        v62 = *(v58 - 1);
        v63 = *v58;
        v64 = *(v58 - 6) == v88 && v62 == v56;
        v65 = v64 && v63 == v57;
        if (v65 && v61 == v91)
        {
          break;
        }

        swift_beginAccess();
        v67 = memcmp((*(v61 + 24) + (v63 | (v62 << 8)) + v59), (*(v91 + 24) + v87), v60 - v59);
        v57 = v89;
        v56 = v90;
        if (!v67)
        {
          break;
        }
      }

      v58 += 24;
      if (v41 == ++v38)
      {
        v41 = 0;
        v26 = v84;
        v17 = 0;
        v11 = v78;
        v10 = v79;
        v18 = a4;
        v9 = a3;
        v22 = v91;
        v24 = v85;
        v23 = v86;
        goto LABEL_51;
      }
    }

LABEL_43:

    v18 = a4;
    v68 = a4[2];
    v69 = swift_isUniquelyReferenced_nonNull_native();
    a4[2] = v68;
    v17 = 0;
    v11 = v78;
    v10 = v79;
    v9 = a3;
    if ((v69 & 1) == 0)
    {
      a4[2] = sub_10046B6B0(v68);
    }

    if ((v38 & 0x8000000000000000) != 0)
    {
      goto LABEL_64;
    }

    v70 = a4[2];
    if (v38 >= *(v70 + 16))
    {
      goto LABEL_65;
    }

    *(v70 + 8 * v38 + 32) = v84;

LABEL_8:
    v12 = *v10;
    v13 = *(v10 + 8);
    v14 = *(v10 + 16);
    v15 = *(v10 + 20);
    v16 = *(v10 + 22);
    if (v11 >= v9)
    {
      goto LABEL_56;
    }
  }

  v29 = WORD2(v93);
  sub_1004A6E94();
  swift_beginAccess();
  v30 = v25 | (v29 << 8);
  sub_1004A6EA4();
  result = sub_1004A6F14();
  v31 = 1 << *(v27 + 16);
  v32 = __OFSUB__(v31, 1);
  v33 = v31 - 1;
  if (!v32)
  {
    v34 = v33 & result;
    v35 = sub_1004A46F4();
    *&v101 = v27 + 16;
    *(&v101 + 1) = v27 + 32;
    *&v102 = v34;
    *(&v102 + 1) = v35;
    *&v103 = v36;
    *(&v103 + 1) = v37;
    v104 = 0;
    v38 = sub_1004A4724();
    v40 = v39;
    v41 = v102;
    v92 = v101;
    v93 = v102;
    v94 = v103;
    v95 = v104;

    if (v40)
    {
      v9 = a3;
      v17 = 0;
      v10 = v79;
    }

    else
    {
      v42 = v28 + 32;
      v43 = v30 + v86;
      do
      {
        v45 = (v42 + 24 * v38);
        v46 = *(v45 + 2);
        v47 = *(v45 + 3);
        if (v47 - v46 == v85 - v86)
        {
          v48 = *v45;
          v49 = *(v45 + 10);
          v50 = *(v45 + 22);
          v51 = *(v45 + 4) == v88 && v49 == v90;
          v52 = v51 && v50 == v89;
          v53 = v52 && v48 == v91;
          if (v53 || (swift_beginAccess(), !memcmp((*(v48 + 24) + (v50 | (v49 << 8)) + v46), (*(v91 + 24) + v43), v47 - v46)))
          {

            goto LABEL_43;
          }
        }

        sub_1004A4744();
        v97 = v92;
        v98 = v93;
        v99 = v94;
        v100 = v95;
        v41 = v93;
        v38 = sub_1004A4724();
      }

      while ((v44 & 1) == 0);
      v26 = v84;
      v17 = 0;
      v10 = v79;
      v9 = a3;
      v22 = v91;
    }

    v18 = a4;
    v11 = v78;
    v24 = v85;
    v23 = v86;
    v57 = v89;
    v56 = v90;
    goto LABEL_51;
  }

  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
  return result;
}

void sub_1004698A4(uint64_t result@<X0>, uint64_t a2@<X1>, int64_t a3@<X2>, char a4@<W3>, unint64_t *a5@<X8>)
{
  v10 = __OFADD__(a2, 1);
  v11 = a2 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    if (v11 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v19 = a3;
      goto LABEL_6;
    }

    v12 = result;
    v9 = a4;
    v8 = a5;
    v13 = *result;
    v14 = *(result + 8);
    v15 = *(result + 16);
    v16 = *(result + 20);
    v17 = *(result + 22);
    sub_10046517C(result, &v57);
    if (v5)
    {
      *v12 = v13;
      *(v12 + 8) = v14;
      *(v12 + 16) = v15;
      *(v12 + 20) = v16;
      *(v12 + 22) = v17;
LABEL_6:
      swift_willThrow();
      return;
    }

    v7 = 0xD000000000000020;
    v6 = 0x80000001004B03C0;
    sub_10046C184(v57, v58, v59 | (v60 << 32) | (v61 << 48), 0xD000000000000020, 0x80000001004B03C0, 216);
    v20 = HIBYTE(v11) & 0xF;
    v21 = result & 0xFFFFFFFFFFFFLL;
    if ((v11 & 0x2000000000000000) != 0)
    {
      v22 = HIBYTE(v11) & 0xF;
    }

    else
    {
      v22 = result & 0xFFFFFFFFFFFFLL;
    }

    if (!v22)
    {
      goto LABEL_71;
    }

    if ((v11 & 0x1000000000000000) == 0)
    {
      v23 = v8;
      v24 = v9;
      if ((v11 & 0x2000000000000000) != 0)
      {
        v57 = result;
        v58 = v11 & 0xFFFFFFFFFFFFFFLL;
        if (result == 43)
        {
          if (v20)
          {
            v21 = v20 - 1;
            if (v20 != 1)
            {
              v27 = 0;
              v35 = &v57 + 1;
              while (1)
              {
                v36 = *v35 - 48;
                if (v36 > 9)
                {
                  break;
                }

                if (!is_mul_ok(v27, 0xAuLL))
                {
                  break;
                }

                v30 = __CFADD__(10 * v27, v36);
                v27 = 10 * v27 + v36;
                if (v30)
                {
                  break;
                }

                ++v35;
                if (!--v21)
                {
                  goto LABEL_70;
                }
              }
            }

            goto LABEL_69;
          }

LABEL_85:
          __break(1u);
          goto LABEL_86;
        }

        if (result != 45)
        {
          if (v20)
          {
            v27 = 0;
            v38 = &v57;
            while (1)
            {
              v39 = *v38 - 48;
              if (v39 > 9)
              {
                break;
              }

              if (!is_mul_ok(v27, 0xAuLL))
              {
                break;
              }

              v30 = __CFADD__(10 * v27, v39);
              v27 = 10 * v27 + v39;
              if (v30)
              {
                break;
              }

              v38 = (v38 + 1);
              if (!--v20)
              {
                goto LABEL_68;
              }
            }
          }

          goto LABEL_69;
        }

        if (v20)
        {
          v21 = v20 - 1;
          if (v20 != 1)
          {
            v27 = 0;
            v31 = &v57 + 1;
            while (1)
            {
              v32 = *v31 - 48;
              if (v32 > 9)
              {
                break;
              }

              if (!is_mul_ok(v27, 0xAuLL))
              {
                break;
              }

              v30 = 10 * v27 >= v32;
              v27 = 10 * v27 - v32;
              if (!v30)
              {
                break;
              }

              ++v31;
              if (!--v21)
              {
                goto LABEL_70;
              }
            }
          }

          goto LABEL_69;
        }
      }

      else
      {
        if ((result & 0x1000000000000000) != 0)
        {
          v25 = ((v11 & 0xFFFFFFFFFFFFFFFLL) + 32);
        }

        else
        {
          v51 = result;
          v56 = v11;
          v52 = sub_1004A67E4();
          v24 = v9;
          v23 = v8;
          v25 = v52;
          result = v51;
          v21 = v53;
          v11 = v56;
        }

        v26 = *v25;
        if (v26 == 43)
        {
          if (v21 >= 1)
          {
            if (--v21)
            {
              v27 = 0;
              if (v25)
              {
                v33 = v25 + 1;
                while (1)
                {
                  v34 = *v33 - 48;
                  if (v34 > 9)
                  {
                    goto LABEL_69;
                  }

                  if (!is_mul_ok(v27, 0xAuLL))
                  {
                    goto LABEL_69;
                  }

                  v30 = __CFADD__(10 * v27, v34);
                  v27 = 10 * v27 + v34;
                  if (v30)
                  {
                    goto LABEL_69;
                  }

                  ++v33;
                  if (!--v21)
                  {
                    goto LABEL_70;
                  }
                }
              }

              goto LABEL_68;
            }

            goto LABEL_69;
          }

          goto LABEL_84;
        }

        if (v26 != 45)
        {
          if (v21)
          {
            v27 = 0;
            if (v25)
            {
              while (1)
              {
                v37 = *v25 - 48;
                if (v37 > 9)
                {
                  goto LABEL_69;
                }

                if (!is_mul_ok(v27, 0xAuLL))
                {
                  goto LABEL_69;
                }

                v30 = __CFADD__(10 * v27, v37);
                v27 = 10 * v27 + v37;
                if (v30)
                {
                  goto LABEL_69;
                }

                ++v25;
                if (!--v21)
                {
                  goto LABEL_70;
                }
              }
            }

            goto LABEL_68;
          }

LABEL_69:
          v27 = 0;
          LOBYTE(v21) = 1;
LABEL_70:
          v62 = v21;
          if (v21)
          {
LABEL_71:
            v57 = 0;
            v58 = 0xE000000000000000;
            v40 = result;
            v41 = v11;
            sub_1004A6724(18);

            v57 = v40;
            v58 = v41;
            v63._countAndFlagsBits = v7 - 16;
            v63._object = 0x80000001004B0E80;
            sub_1004A5994(v63);
            v42 = v57;
            v43 = v58;
            sub_1003A527C();
            swift_allocError();
            *v44 = v42;
            *(v44 + 8) = v43;
            *(v44 + 16) = v7;
            *(v44 + 24) = v6;
            v45 = 218;
LABEL_72:
            *(v44 + 32) = v45;
            swift_willThrow();

            return;
          }

          goto LABEL_76;
        }

        if (v21 >= 1)
        {
          if (--v21)
          {
            v27 = 0;
            if (v25)
            {
              v28 = v25 + 1;
              while (1)
              {
                v29 = *v28 - 48;
                if (v29 > 9)
                {
                  goto LABEL_69;
                }

                if (!is_mul_ok(v27, 0xAuLL))
                {
                  goto LABEL_69;
                }

                v30 = 10 * v27 >= v29;
                v27 = 10 * v27 - v29;
                if (!v30)
                {
                  goto LABEL_69;
                }

                ++v28;
                if (!--v21)
                {
                  goto LABEL_70;
                }
              }
            }

LABEL_68:
            LOBYTE(v21) = 0;
            goto LABEL_70;
          }

          goto LABEL_69;
        }

        __break(1u);
      }

      __break(1u);
LABEL_84:
      __break(1u);
      goto LABEL_85;
    }
  }

  v62 = 0;
  v54 = result;
  v55 = v11;

  v27 = sub_10010C818(v54, v55, 10);
  v47 = v46;

  result = v54;
  v11 = v55;
  if (v47)
  {
    goto LABEL_71;
  }

  v24 = v9;
  v23 = v8;
LABEL_76:
  if (v24)
  {
LABEL_80:
    *v23 = v27;
    v49 = v23;
    v50 = sub_1004A5924();

    v49[1] = v50;
    return;
  }

  v48 = sub_100262EC4(result, v11);
  if ((v48 & 0x100) == 0)
  {
    v23 = v8;
    if (v48 == 48)
    {

      sub_1003A527C();
      swift_allocError();
      strcpy(v44, "starts with 0");
      *(v44 + 14) = -4864;
      *(v44 + 16) = v7;
      *(v44 + 24) = v6;
      v45 = 221;
      goto LABEL_72;
    }

    goto LABEL_80;
  }

LABEL_86:
  __break(1u);
}

void sub_100469DF8(uint64_t *a1)
{
  v2 = *(a1 + 2);
  v1 = *(a1 + 3);
  if (v1 == v2)
  {
    sub_1003A5324();
    swift_allocError();
LABEL_3:
    swift_willThrow();
    return;
  }

  if (v1 < v2)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v4 = *(a1 + 4);
  v5 = *(a1 + 10);
  v6 = *(a1 + 22);
  if (v4 - (v6 | (v5 << 8)) < v1)
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    return;
  }

  v37 = *a1;
  v29 = v37;
  v30 = v2;
  v31 = v1;
  v10 = v4;
  v32 = v4;
  v11 = v6;
  v12 = v5;
  v33 = v5;
  v34 = v6;
  v35 = v2;
  v36 = v1;
  v7 = v2;
  while (1)
  {
    if (v7 < v30)
    {
      __break(1u);
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

    if ((v7 - v30) >= v31 - v30)
    {
      goto LABEL_18;
    }

    swift_beginAccess();
    if (*(*(v29 + 24) + (v34 | (v33 << 8)) + v7) != 32)
    {
      break;
    }

    if (++v7 == v1)
    {

      sub_1003A52D0(&v29);
      *(a1 + 2) = v1;
      return;
    }
  }

  v8 = v37;

  sub_1003A52D0(&v29);
  v21 = v8;
  v22 = v2;
  v23 = v1;
  v24 = v10;
  v25 = v12;
  v26 = v11;
  v27 = v2;
  v28 = v1;

  sub_1003A52D0(&v21);
  if (v27 >= v7)
  {
    sub_1004A6724(24);

    v13 = v8;
    v14 = v2;
    v15 = v1;
    v16 = v10;
    v17 = v12;
    v18 = v11;
    v19 = v2;
    v20 = v1;
    if ((v7 - v2) >= (v1 - v2))
    {
      goto LABEL_22;
    }

    swift_beginAccess();

    sub_1003A52D0(&v13);
    v38._countAndFlagsBits = sub_1004A6CE4();
    sub_1004A5994(v38);

    sub_1003A527C();
    swift_allocError();
    *v9 = 0xD000000000000016;
    v9[1] = 0x80000001004B0E60;
    v9[2] = 0xD000000000000020;
    v9[3] = 0x80000001004B03C0;
    v9[4] = 241;
    goto LABEL_3;
  }

  if (v1 < v7)
  {
    goto LABEL_21;
  }

  *(a1 + 2) = v7;
}

unint64_t sub_10046A0DC(uint64_t *a1, unint64_t a2, unint64_t a3)
{
  v5 = a1[3];
  v6 = a1[4];
  v8 = *(a1 + 2);
  v7 = *(a1 + 3);
  v36 = *(a1 + 10);
  v9 = *(a1 + 22);
  v39 = *a1;
  swift_beginAccess();
  if ((a3 & 0x2000000000000000) != 0)
  {
    v10 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v10 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v11 = 4 * v10;
  v12 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v12) = 1;
  }

  v13 = 4 << v12;
  v31 = (v7 - v8);
  if (v5 <= v8 + v31)
  {
    v14 = v8 + v31;
  }

  else
  {
    v14 = v5;
  }

  v15 = v5 - v8;
  v16 = v9 | (v36 << 8);
  result = 15;
  v35 = v8;
  v37 = v5;
  v18 = v5;
  v34 = v14;
  v33 = v16;
  while (v11 != result >> 14)
  {
    v19 = result & 0xC;
    v20 = result;
    if (v19 == v13)
    {
      v25 = result;
      v26 = sub_10010C210(result, a2, a3);
      v16 = v33;
      v14 = v34;
      v11 = 4 * v10;
      v20 = v26;
      result = v25;
    }

    v21 = v20 >> 16;
    if (v20 >> 16 >= v10)
    {
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      v30 = result;
      v27 = sub_1004A5A24();
      v16 = v33;
      v14 = v34;
      v11 = 4 * v10;
      v24 = v27;
      result = v30;
      if (v19 != v13)
      {
        goto LABEL_20;
      }
    }

    else
    {
      if ((a3 & 0x2000000000000000) != 0)
      {
        v38[0] = a2;
        v38[1] = a3 & 0xFFFFFFFFFFFFFFLL;
        v22 = v38;
      }

      else
      {
        v22 = ((a3 & 0xFFFFFFFFFFFFFFFLL) + 32);
        if ((a2 & 0x1000000000000000) == 0)
        {
          v29 = result;
          v23 = sub_1004A67E4();
          v16 = v33;
          v14 = v34;
          v11 = 4 * v10;
          v22 = v23;
          result = v29;
        }
      }

      v24 = *(v22 + v21);
      if (v19 != v13)
      {
LABEL_20:
        if ((a3 & 0x1000000000000000) == 0)
        {
          goto LABEL_21;
        }

        goto LABEL_25;
      }
    }

    result = sub_10010C210(result, a2, a3);
    v16 = v33;
    v14 = v34;
    v11 = 4 * v10;
    if ((a3 & 0x1000000000000000) == 0)
    {
LABEL_21:
      result = (result & 0xFFFFFFFFFFFF0000) + 65540;
      if (v6 == v18)
      {
        goto LABEL_38;
      }

      goto LABEL_27;
    }

LABEL_25:
    if (v10 <= result >> 16)
    {
      goto LABEL_44;
    }

    result = sub_1004A59F4();
    v16 = v33;
    v14 = v34;
    v11 = 4 * v10;
    if (v6 == v18)
    {
LABEL_38:
      sub_1003BD79C(a1, v38);
      goto LABEL_39;
    }

LABEL_27:
    if (v18 >= v6)
    {
      goto LABEL_41;
    }

    if (v37 < v35)
    {
      goto LABEL_42;
    }

    if (v14 == v18)
    {
      goto LABEL_43;
    }

    v28 = *(*(v39 + 24) + v16 + v18++);
    ++v15;
    if (((v28 ^ v24) & 0xDF) != 0)
    {
      sub_1003BD79C(a1, v38);
LABEL_37:

      return 0;
    }
  }

  result = sub_1003BD79C(a1, v38);
  if (v6 == v18)
  {
LABEL_39:

    return 1;
  }

  if (v18 < v37 || v18 >= v6)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  if (v18 < v35)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  if (v15 < v31)
  {
    goto LABEL_37;
  }

LABEL_47:
  __break(1u);
  return result;
}

unint64_t sub_10046A3D8(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v6 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v6 = a3 & 0xFFFFFFFFFFFFLL;
  }

  v38 = v6;
  v7 = 4 * v6;
  v8 = (a3 >> 59) & 1;
  if ((a4 & 0x1000000000000000) == 0)
  {
    LOBYTE(v8) = 1;
  }

  v9 = 4 << v8;
  v35 = a4 & 0xFFFFFFFFFFFFFFLL;
  v34 = (a4 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v10 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v10 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v41 = v9;
  v42 = v10;
  v40 = 4 * v10;
  v45 = a1;
  v11 = (a1 >> 59) & 1;
  if ((a2 & 0x1000000000000000) == 0)
  {
    LOBYTE(v11) = 1;
  }

  v12 = 4 << v11;
  v36 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v37 = a2 & 0xFFFFFFFFFFFFFFLL;
  result = 15;
  v14 = 15;
  while (1)
  {
    v15 = v14 >> 14;
    v16 = v14 >> 14 == v7;
    if (v14 >> 14 == v7)
    {
      v17 = 0;
      goto LABEL_28;
    }

    v18 = v14;
    if ((v14 & 0xC) == v41)
    {
      v21 = result;
      v18 = sub_10010C210(v14, a3, a4);
      result = v21;
    }

    v19 = v18 >> 16;
    if (v18 >> 16 >= v38)
    {
      goto LABEL_49;
    }

    if ((a4 & 0x1000000000000000) != 0)
    {
      v31 = result;
      v17 = sub_1004A5A24();
      result = v31;
    }

    else
    {
      if ((a4 & 0x2000000000000000) != 0)
      {
        v43 = a3;
        v44 = v35;
        v20 = &v43;
      }

      else
      {
        v20 = v34;
        if ((a3 & 0x1000000000000000) == 0)
        {
          v30 = result;
          v20 = sub_1004A67E4();
          result = v30;
        }
      }

      v17 = *(v20 + v19);
    }

    if ((v14 & 0xC) == v41)
    {
      v22 = result;
      v14 = sub_10010C210(v14, a3, a4);
      result = v22;
      if ((a4 & 0x1000000000000000) == 0)
      {
LABEL_23:
        v14 = (v14 & 0xFFFFFFFFFFFF0000) + 65540;
        goto LABEL_28;
      }
    }

    else if ((a4 & 0x1000000000000000) == 0)
    {
      goto LABEL_23;
    }

    if (v38 <= v14 >> 16)
    {
      goto LABEL_51;
    }

    v23 = result;
    v14 = sub_1004A59F4();
    result = v23;
LABEL_28:
    if (v40 == result >> 14)
    {
      return v16;
    }

    v24 = result & 0xC;
    v25 = result;
    if (v24 == v12)
    {
      v29 = result;
      v25 = sub_10010C210(result, v45, a2);
      result = v29;
    }

    v26 = v25 >> 16;
    if (v25 >> 16 >= v42)
    {
      break;
    }

    if ((a2 & 0x1000000000000000) != 0)
    {
      v33 = result;
      v28 = sub_1004A5A24();
      result = v33;
      if (v24 != v12)
      {
        goto LABEL_38;
      }
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v43 = v45;
        v44 = v37;
        v27 = &v43;
      }

      else
      {
        v27 = v36;
        if ((v45 & 0x1000000000000000) == 0)
        {
          v32 = result;
          v27 = sub_1004A67E4();
          result = v32;
        }
      }

      v28 = *(v27 + v26);
      if (v24 != v12)
      {
LABEL_38:
        if ((a2 & 0x1000000000000000) == 0)
        {
          goto LABEL_39;
        }

        goto LABEL_43;
      }
    }

    result = sub_10010C210(result, v45, a2);
    if ((a2 & 0x1000000000000000) == 0)
    {
LABEL_39:
      result = (result & 0xFFFFFFFFFFFF0000) + 65540;
      if (v15 == v7)
      {
        return 0;
      }

      goto LABEL_45;
    }

LABEL_43:
    if (v42 <= result >> 16)
    {
      goto LABEL_50;
    }

    result = sub_1004A59F4();
    if (v15 == v7)
    {
      return 0;
    }

LABEL_45:
    if (((v28 ^ v17) & 0xDF) != 0)
    {
      return 0;
    }
  }

  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
  return result;
}

uint64_t sub_10046A724(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(BOOL, uint64_t, uint64_t))
{
  v6 = v4;
  v11 = v4[1];
  v9 = v4 + 1;
  v10 = v11;

  result = swift_isUniquelyReferenced_nonNull_native();
  *v9 = v11;
  if ((result & 1) == 0)
  {
    result = a4(0, *(v10 + 16) + 1, 1);
    v10 = *v9;
  }

  v14 = *(v10 + 16);
  v13 = *(v10 + 24);
  if (v14 >= v13 >> 1)
  {
    result = a4(v13 > 1, v14 + 1, 1);
    v10 = *v9;
  }

  *(v10 + 16) = v14 + 1;
  v15 = v10 + 16 * v14;
  *(v15 + 32) = a1;
  *(v15 + 40) = a2;
  v6[1] = v10;
  if (*v6)
  {
    swift_beginAccess();
    if (sub_1004A4754() > v14)
    {
      result = swift_isUniquelyReferenced_native();
      v16 = *v6;
      if ((result & 1) == 0)
      {
        if (!v16)
        {
LABEL_16:
          __break(1u);
          return result;
        }

        v17 = sub_1004A4774();

        *v6 = v17;
        v16 = v17;
      }

      if (v16)
      {
        return sub_1004A4714();
      }

      __break(1u);
      goto LABEL_16;
    }
  }

  else if (v14 < 0xF)
  {
    return result;
  }

  return sub_10046B08C(sub_1001E737C);
}

uint64_t sub_10046A8F4(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(BOOL, uint64_t, uint64_t))
{
  v8 = a2;
  v10 = HIDWORD(a2);
  v11 = v5 + 1;
  v12 = v5[1];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5[1] = v12;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    a5(0, *(v12 + 16) + 1, 1);
    v12 = *v11;
  }

  v15 = *(v12 + 16);
  v14 = *(v12 + 24);
  if (v15 >= v14 >> 1)
  {
    a5(v14 > 1, v15 + 1, 1);
    v12 = *v11;
  }

  *(v12 + 16) = v15 + 1;
  v16 = v12 + 24 * v15;
  *(v16 + 32) = a1;
  *(v16 + 40) = v8;
  *(v16 + 44) = v10;
  *(v16 + 48) = a3;
  *(v16 + 52) = WORD2(a3);
  *(v16 + 54) = BYTE6(a3);
  v5[1] = v12;
  if (*v5)
  {
    swift_beginAccess();
    if (sub_1004A4754() > v15)
    {

      result = swift_isUniquelyReferenced_native();
      v18 = *v5;
      if ((result & 1) == 0)
      {
        if (!v18)
        {
LABEL_18:
          __break(1u);
          return result;
        }

        v19 = sub_1004A4774();

        *v5 = v19;
        v18 = v19;
      }

      if (v18)
      {
        return sub_1004A4714();
      }

      __break(1u);
      goto LABEL_18;
    }

LABEL_13:

    return sub_10046B08C(sub_10046B264);
  }

  if (v15 >= 0xF)
  {
    goto LABEL_13;
  }
}

char *sub_10046AB0C(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000C9C0(&qword_1005DD370, &qword_10050A088);
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
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  v15 = 16 * v8;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[v15])
    {
      memmove(v13, v14, v15);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v15);
  }

  return v10;
}

void *sub_10046AC10(void *result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_10000C9C0(&qword_1005D7F38, &qword_1004F30D0);
  v10 = *(type metadata accessor for ParameterValue(0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for ParameterValue(0) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_10046AE3C(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6, uint64_t a7)
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
    sub_10000C9C0(a5, a6);
    v13 = swift_allocObject();
    v14 = j__malloc_size(v13);
    *(v13 + 2) = v11;
    *(v13 + 3) = 2 * ((v14 - 32) / 24);
  }

  else
  {
    v13 = _swiftEmptyArrayStorage;
  }

  v15 = v13 + 32;
  v16 = a4 + 32;
  if (v8)
  {
    if (v13 != a4 || v15 >= &v16[24 * v11])
    {
      memmove(v15, v16, 24 * v11);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void *sub_10046AF58(void *result, int64_t a2, char a3, void *a4)
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
    sub_10000C9C0(&qword_1005DD348, &qword_10050A020);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10000C9C0(&qword_1005DD350, &qword_10050A028);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_10046B08C(void *(*a1)(uint64_t *__return_ptr, uint64_t, void, uint64_t, uint64_t))
{
  v3 = *v1;
  if (*v1)
  {
    swift_beginAccess();
    v4 = *(v3 + 24) & 0x3FLL;
  }

  else
  {
    v4 = 0;
  }

  v5 = v1[1];
  if (v4 || *(v5 + 16) >= 0x10uLL)
  {
    v7 = sub_1004A4784();
    if (v4 <= v7)
    {
      v8 = v7;
    }

    else
    {
      v8 = v4;
    }

    v6 = sub_10046B184(v5, v8, 0, v4, a1);
  }

  else
  {
    v6 = 0;
  }

  *v1 = v6;
  return result;
}

uint64_t sub_10046B184(uint64_t a1, uint64_t a2, char a3, uint64_t a4, void *(*a5)(uint64_t *__return_ptr, uint64_t, void, uint64_t, uint64_t))
{
  if (a3)
  {
    v8 = 0;
  }

  else
  {
    v8 = a2;
  }

  v9 = sub_1004A4784();
  result = 0;
  if (v9 <= v8)
  {
    v9 = v8;
  }

  if (v9 <= a4)
  {
    v9 = a4;
  }

  if (v9 >= 5)
  {
    v11 = sub_1004A4794();
    sub_10046B20C(a1, v11 + 16, v11 + 32, a5);
    return v11;
  }

  return result;
}

Swift::Int sub_10046B264(uint64_t result, uint64_t a2, void *a3, uint64_t a4)
{
  if (a2)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      v6 = 0;
      while (1)
      {
        sub_1004A6E94();
        swift_beginAccess();
        sub_1004A6EA4();
        v7 = sub_1004A6F14();
        if (__OFSUB__(1 << *a3, 1))
        {
          break;
        }

        if (sub_1004A46F4())
        {
          while (1)
          {
            sub_1004A4744();
          }
        }

        v7 = sub_1004A4734();
        if (++v6 == a2)
        {
          return v7;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  return v7;
}

Swift::Int sub_10046B3B0(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7)
{
  v10 = a2;
  v12 = HIDWORD(a2);
  sub_1004A6E94();
  v13 = v10;
  swift_beginAccess();
  v30 = a3;
  v14 = (a3 >> 24) & 0xFFFF00 | BYTE6(a3);
  sub_1004A6EA4();
  result = sub_1004A6F14();
  if (__OFSUB__(1 << *a6, 1))
  {
    __break(1u);
  }

  else
  {
    sub_1004A46F4();
    v16 = sub_1004A4724();
    if ((v17 & 1) == 0)
    {
      v18 = v12 - v10;
      v29 = v14 + v13;
      do
      {
        v20 = (a4 + 24 * v16);
        v22 = *(v20 + 2);
        v21 = *(v20 + 3);
        if (v21 - v22 == v18)
        {
          v23 = *v20;
          v24 = *(v20 + 10);
          v25 = *(v20 + 22);
          v26 = *(v20 + 4) == v30 && v24 == WORD2(v30);
          v27 = v26 && v25 == BYTE6(v30);
          if (v27 && v23 == a1)
          {
            break;
          }

          swift_beginAccess();
          if (!memcmp((*(v23 + 24) + (v25 | (v24 << 8)) + v22), (*(a1 + 24) + v29), v21 - v22))
          {
            break;
          }
        }

        sub_1004A4744();
        v16 = sub_1004A4724();
      }

      while ((v19 & 1) == 0);
    }

    return v16;
  }

  return result;
}

uint64_t sub_10046B6C4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _DWORD *a4@<X8>, __n128 a5@<Q0>)
{
  result = sub_10040691C(a1, a2, a3, a5);
  if (!v5)
  {
    *a4 = result;
  }

  return result;
}

uint64_t sub_10046B6F0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _DWORD *a4@<X8>, __n128 a5@<Q0>)
{
  result = sub_100405E9C(a1, a2, a3, a5);
  if (!v5)
  {
    *a4 = result;
  }

  return result;
}

uint64_t sub_10046B71C(unint64_t a1, unint64_t a2, char a3, char a4, uint64_t *a5, uint64_t a6, int64_t a7)
{
  if (__OFADD__(a6, 1))
  {
    __break(1u);
    goto LABEL_48;
  }

  v12 = a7;
  if (a6 + 1 < a7)
  {
    v16 = v8;
    v7 = a5;
    v10 = a2;
    v11 = a1;
    v9 = *a5;
    v17 = *(a5 + 2);
    v15 = *(a5 + 3);
    LODWORD(v14) = *(a5 + 4);
    v55 = *(a5 + 10);
    v18 = *(a5 + 22);
    v38 = v18;
    if ((a4 & 1) == 0)
    {

      v35 = v17;
      v36 = v14;
      if ((v10 & 0x1000000000000000) != 0)
      {
LABEL_34:
        v14 = sub_1004A59E4();
LABEL_13:
        v12 = v55;
        v13 = *(v7 + 2);
        v37 = v15;
        if ((v14 & 0x8000000000000000) == 0 && v14 <= (v15 - v13))
        {
          LODWORD(v15) = v18;
          swift_beginAccess();
          v20 = sub_1004A58D4();
          if (!__CFADD__(v13, v14))
          {
            v12 = v21;
            *(v7 + 2) = v13 + v14;
            if (v20 == v11 && v21 == v10)
            {
              goto LABEL_21;
            }

            v15 = v20;
            if (sub_1004A6D34())
            {
              goto LABEL_21;
            }

            if (a3)
            {
              sub_1004A6724(40);

              v59._countAndFlagsBits = v11;
              v59._object = v10;
              sub_1004A5994(v59);
              v60._countAndFlagsBits = 0x20646E756F6620;
              v60._object = 0xE700000000000000;
              sub_1004A5994(v60);
              v61._countAndFlagsBits = v15;
              v61._object = v12;
              sub_1004A5994(v61);

              sub_1003A527C();
              swift_allocError();
              *v31 = 0xD00000000000001DLL;
              v31[1] = 0x80000001004B0EE0;
              v31[2] = 0xD000000000000020;
              v31[3] = 0x80000001004B03C0;
              v31[4] = 283;
              swift_willThrow();

              v17 = v35;
              LODWORD(v14) = v36;
              LOWORD(v12) = v55;
              LODWORD(v15) = v37;
              goto LABEL_36;
            }

            v13 = v15;
            LODWORD(v15) = v37;
            if ((v12 & 0x1000000000000000) == 0)
            {
              if ((v12 & 0x2000000000000000) != 0)
              {
                v32 = HIBYTE(v12) & 0xF;
              }

              else
              {
                v32 = v13 & 0xFFFFFFFFFFFFLL;
              }

              if (v14 == v32)
              {
LABEL_45:
                if (sub_10046A3D8(v11, v10, v13, v12))
                {
LABEL_21:
                }
              }

LABEL_52:
              sub_1004A6724(42);

              v62._countAndFlagsBits = v11;
              v62._object = v10;
              sub_1004A5994(v62);
              v63._countAndFlagsBits = 0x20646E756F6620;
              v63._object = 0xE700000000000000;
              sub_1004A5994(v63);
              v64._countAndFlagsBits = v13;
              v64._object = v12;
              sub_1004A5994(v64);

              sub_1003A527C();
              swift_allocError();
              *v33 = 0xD00000000000001FLL;
              v33[1] = 0x80000001004B0EC0;
              v33[2] = 0xD000000000000020;
              v33[3] = 0x80000001004B03C0;
              v33[4] = 280;
              swift_willThrow();

              v17 = v35;
              LODWORD(v14) = v36;
              LOWORD(v12) = v55;
              goto LABEL_36;
            }

LABEL_51:
            if (v14 == sub_1004A59E4())
            {
              goto LABEL_45;
            }

            goto LABEL_52;
          }

          goto LABEL_49;
        }

        if (v15 >= v13)
        {
          v14 = v36;
          if (v36 - (v18 | (v55 << 8)) >= v15)
          {
            v47 = v9;
            v48 = v13;
            v49 = v15;
            v50 = v36;
            v51 = v55;
            v52 = v18;
            v53 = v13;
            v54 = v15;

            v24 = sub_10046A0DC(&v47, v11, v10);
            sub_1003A52D0(&v47);
            if (v24)
            {
              sub_1003A5324();
              swift_allocError();
            }

            else
            {
              sub_1004A6724(23);

              v56._countAndFlagsBits = v11;
              v56._object = v10;
              sub_1004A5994(v56);
              v57._countAndFlagsBits = 544106784;
              v57._object = 0xE400000000000000;
              sub_1004A5994(v57);
              v39 = v9;
              v40 = v13;
              v41 = v15;
              v42 = v36;
              v43 = v12;
              v44 = v18;
              v45 = v13;
              v46 = v15;
              swift_beginAccess();

              v26 = sub_1004A58D4();
              v28 = v27;
              sub_1003A52D0(&v39);
              v58._countAndFlagsBits = v26;
              v58._object = v28;
              sub_1004A5994(v58);

              sub_1003A527C();
              swift_allocError();
              *v29 = 0x6F74206465697254;
              v29[1] = 0xEF20657372617020;
              v29[2] = 0xD000000000000020;
              v29[3] = 0x80000001004B03C0;
              LOWORD(v12) = v55;
              v29[4] = 264;
            }

            swift_willThrow();

            v17 = v35;
            goto LABEL_36;
          }

          goto LABEL_50;
        }

LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
LABEL_50:
        __break(1u);
        goto LABEL_51;
      }

LABEL_10:
      if ((v10 & 0x2000000000000000) != 0)
      {
        v14 = HIBYTE(v10) & 0xF;
      }

      else
      {
        v14 = v11 & 0xFFFFFFFFFFFFLL;
      }

      goto LABEL_13;
    }

    if (a6 + 2 >= a7)
    {
      sub_1003A5228();
      swift_allocError();
      *v25 = v12;

      LOWORD(v12) = v55;
    }

    else
    {
      if (a6 + 3 >= a7)
      {
        sub_1003A5228();
        swift_allocError();
        *v30 = v12;
        swift_retain_n();
      }

      else
      {
        swift_retain_n();
        sub_100469DF8(v7);
        if (!v16)
        {

          goto LABEL_33;
        }
      }

      swift_willThrow();

      *v7 = v9;
      *(v7 + 2) = v17;
      *(v7 + 3) = v15;
      *(v7 + 4) = v14;
      LOWORD(v12) = v55;
      *(v7 + 10) = v55;
      *(v7 + 22) = v18;
    }

    swift_willThrow();
    swift_errorRetain();
    sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
    if (!swift_dynamicCast())
    {

LABEL_36:
      *v7 = v9;
      *(v7 + 2) = v17;
      *(v7 + 3) = v15;
      *(v7 + 4) = v14;
      *(v7 + 10) = v12;
      *(v7 + 22) = v38;
      return swift_willThrow();
    }

LABEL_33:
    v35 = v17;
    v36 = v14;
    if ((v10 & 0x1000000000000000) != 0)
    {
      goto LABEL_34;
    }

    goto LABEL_10;
  }

  sub_1003A5228();
  swift_allocError();
  *v19 = v12;
  return swift_willThrow();
}

void sub_10046BE40(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, _BYTE *a5)
{
  v39 = a5;
  if (__OFADD__(a2, 1))
  {
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  if (a2 + 1 >= a3)
  {
    sub_1003A5228();
    swift_allocError();
    *v13 = a3;
    goto LABEL_8;
  }

  v8 = *(a1 + 8);
  v7 = *(a1 + 12);
  if (v7 < v8)
  {
    goto LABEL_39;
  }

  v9 = *(a1 + 16);
  v10 = *(a1 + 20);
  v11 = *(a1 + 22);
  if (v9 - (v11 | (v10 << 8)) < v7)
  {
    goto LABEL_40;
  }

  v19 = v11 | (v10 << 8);
  v12 = *a1;
  v31 = *a1;
  v32 = v8;
  v33 = v7;
  v21 = v10;
  v22 = v9;
  v34 = v9;
  v35 = v10;
  v20 = v11;
  v36 = v11;
  v37 = v8;
  v38 = v7;
  if (v8 == v7)
  {
LABEL_6:
    swift_retain_n();
    sub_1003A52D0(&v31);
    sub_1003A5324();
    swift_allocError();
    swift_willThrow();

    *a1 = v12;
    *(a1 + 8) = v8;
    *(a1 + 12) = v7;
    *(a1 + 16) = v22;
    *(a1 + 20) = v21;
    *(a1 + 22) = v20;
LABEL_8:
    swift_willThrow();
    return;
  }

  v15 = v8;
  while (1)
  {
    if (v15 < v32)
    {
      __break(1u);
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    if ((v15 - v32) >= v33 - v32)
    {
      goto LABEL_37;
    }

    swift_beginAccess();
    v16 = *(*(v31 + 24) + (v36 | (v35 << 8)) + v15);
    if (*a4 == 1)
    {
      *a4 = 0;
      if (v16 != 34 && v16 != 92)
      {
        break;
      }

      goto LABEL_11;
    }

    v17 = v16 == 10 || v16 == 13;
    if (v17 || (v16 & 0x80) != 0)
    {
      break;
    }

    if (v16 == 92)
    {
      *a4 = 1;
      *v39 = 1;
    }

    else
    {
      if (!*(*(v31 + 24) + (v36 | (v35 << 8)) + v15) || v16 == 34)
      {
        break;
      }

      *a4 = 0;
    }

LABEL_11:
    if (v7 == ++v15)
    {
      goto LABEL_6;
    }
  }

  swift_retain_n();
  sub_1003A52D0(&v31);
  v23 = v12;
  v24 = v8;
  v25 = v7;
  v26 = v22;
  v27 = v21;
  v28 = v20;
  v29 = v8;
  v30 = v7;

  sub_1003A52D0(&v23);
  v18 = v15 - v29;
  if (__OFSUB__(v15, v29))
  {
    goto LABEL_41;
  }

  if (v7 < v18 || (v7 - v18) < v8)
  {
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  if (__CFADD__(v19, v8))
  {
    goto LABEL_43;
  }

  if ((v19 + v8) >> 24)
  {
    ByteBuffer._copyIntoByteBufferWithSliceIndex0_slowPath(index:length:)(v8, v18, v12);
  }

  else
  {
  }

  if (!__CFADD__(v8, v18))
  {
    *(a1 + 8) = v8 + v18;
    return;
  }

LABEL_44:
  __break(1u);
}

void sub_10046C184(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (HIDWORD(a2) < a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (a3 - (BYTE6(a3) | (WORD2(a3) << 8)) < HIDWORD(a2))
  {
LABEL_7:
    __break(1u);
    return;
  }

  v19 = v6;
  v20 = v7;
  v13[0] = a1;
  v13[1] = a2;
  v14 = a3;
  v15 = WORD2(a3);
  v16 = BYTE6(a3);
  v17 = a2;
  v18 = HIDWORD(a2);

  sub_100477068(v13);
  if (!v11)
  {
    sub_1003A527C();
    swift_allocError();
    strcpy(v12, "Invalid UTF8");
    v12[13] = 0;
    *(v12 + 7) = -5120;
    *(v12 + 2) = a4;
    *(v12 + 3) = a5;
    *(v12 + 4) = a6;
    swift_willThrow();
  }
}

uint64_t *sub_10046C278(uint64_t *result, uint64_t a2, int64_t a3, char a4)
{
  v5 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
  }

  else
  {
    if (v5 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v14 = a3;
      return swift_willThrow();
    }

    v8 = result;
    v9 = *result;
    v10 = result[1];
    v11 = *(result + 4);
    v12 = *(result + 10);
    v13 = *(result + 22);

    sub_1004698A4(v8, v5, a3, a4 & 1, &v15);
    if (v4)
    {

      *v8 = v9;
      *(v8 + 8) = v10;
      *(v8 + 16) = v11;
      *(v8 + 20) = v12;
      *(v8 + 22) = v13;
      return swift_willThrow();
    }

    return v15;
  }

  return result;
}

void sub_10046C378(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (__OFADD__(a2, 1))
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if (a2 + 1 >= a3)
  {
    sub_1003A5228();
    swift_allocError();
    *v14 = a3;
    goto LABEL_16;
  }

  v5 = *(a1 + 8);
  v6 = *(a1 + 12);
  if (v6 < v5)
  {
    goto LABEL_29;
  }

  v7 = *(a1 + 16);
  v8 = *(a1 + 20);
  v9 = *(a1 + 22);
  if (v7 - (v9 | (v8 << 8)) < v6)
  {
    goto LABEL_30;
  }

  v16 = v9 | (v8 << 8);
  v10 = *a1;
  v27 = *a1;
  v28 = v5;
  v29 = v6;
  v35 = v7;
  v30 = v7;
  v17 = v9;
  v18 = v8;
  v31 = v8;
  v32 = v9;
  v33 = v5;
  v34 = v6;
  if (v5 == v6)
  {
LABEL_14:
    swift_retain_n();
    sub_1003A52D0(&v27);
    sub_1003A5324();
    swift_allocError();
    swift_willThrow();

    *a1 = v10;
    *(a1 + 8) = v5;
    *(a1 + 12) = v6;
    *(a1 + 16) = v35;
    *(a1 + 20) = v18;
    *(a1 + 22) = v17;
LABEL_16:
    swift_willThrow();
    return;
  }

  v11 = v5;
  while (1)
  {
    if (v11 < v28)
    {
      __break(1u);
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    if ((v11 - v28) >= v29 - v28)
    {
      goto LABEL_27;
    }

    swift_beginAccess();
    v12 = *(*(v27 + 24) + (v32 | (v31 << 8)) + v11);
    if (v12 == 10 || v12 == 13)
    {
      break;
    }

    if (v6 == ++v11)
    {
      goto LABEL_14;
    }
  }

  swift_retain_n();
  sub_1003A52D0(&v27);
  v19 = v10;
  v20 = v5;
  v21 = v6;
  v22 = v35;
  v23 = v18;
  v24 = v17;
  v25 = v5;
  v26 = v6;

  sub_1003A52D0(&v19);
  v15 = v11 - v25;
  if (__OFSUB__(v11, v25))
  {
    goto LABEL_31;
  }

  if (v6 >= v15 && (v6 - v15) >= v5)
  {
    if (__CFADD__(v16, v5))
    {
      goto LABEL_33;
    }

    if ((v16 + v5) >> 24)
    {
      ByteBuffer._copyIntoByteBufferWithSliceIndex0_slowPath(index:length:)(v5, v15, v10);
    }

    else
    {
    }

    if (!__CFADD__(v5, v15))
    {
      *(a1 + 8) = v5 + v15;
      return;
    }

    goto LABEL_34;
  }

LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
}

void sub_10046C660(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (__OFADD__(a2, 1))
  {
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  if (a2 + 1 >= a3)
  {
    sub_1003A5228();
    swift_allocError();
    *v11 = a3;
    goto LABEL_8;
  }

  v6 = *(a1 + 8);
  v5 = *(a1 + 12);
  if (v5 < v6)
  {
    goto LABEL_31;
  }

  v7 = *(a1 + 16);
  v8 = *(a1 + 20);
  v9 = *(a1 + 22);
  if (v7 - (v9 | (v8 << 8)) < v5)
  {
    goto LABEL_32;
  }

  v17 = v9 | (v8 << 8);
  v10 = *a1;
  v28 = *a1;
  v29 = v6;
  v30 = v5;
  v36 = v7;
  v31 = v7;
  v18 = v9;
  v19 = v8;
  v32 = v8;
  v33 = v9;
  v34 = v6;
  v35 = v5;
  if (v6 == v5)
  {
LABEL_6:
    swift_retain_n();
    sub_1003A52D0(&v28);
    sub_1003A5324();
    swift_allocError();
    swift_willThrow();

    *a1 = v10;
    *(a1 + 8) = v6;
    *(a1 + 12) = v5;
    *(a1 + 16) = v36;
    *(a1 + 20) = v19;
    *(a1 + 22) = v18;
LABEL_8:
    swift_willThrow();
    return;
  }

  v12 = v6;
  while (1)
  {
    if (v12 < v29)
    {
      __break(1u);
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    if ((v12 - v29) >= v30 - v29)
    {
      goto LABEL_29;
    }

    swift_beginAccess();
    v13 = *(*(v28 + 24) + (v33 | (v32 << 8)) + v12);
    if ((v13 | 4) != 0x2F)
    {
      v14 = isalnum(v13);
      if (v13 != 61 && v14 == 0)
      {
        break;
      }
    }

    if (v5 == ++v12)
    {
      goto LABEL_6;
    }
  }

  swift_retain_n();
  sub_1003A52D0(&v28);
  v20 = v10;
  v21 = v6;
  v22 = v5;
  v23 = v36;
  v24 = v19;
  v25 = v18;
  v26 = v6;
  v27 = v5;

  sub_1003A52D0(&v20);
  v16 = v12 - v26;
  if (__OFSUB__(v12, v26))
  {
    goto LABEL_33;
  }

  if (v5 >= v16 && (v5 - v16) >= v6)
  {
    if (__CFADD__(v17, v6))
    {
      goto LABEL_35;
    }

    if ((v17 + v6) >> 24)
    {
      ByteBuffer._copyIntoByteBufferWithSliceIndex0_slowPath(index:length:)(v6, v16, v10);
    }

    else
    {
    }

    if (!__CFADD__(v6, v16))
    {
      *(a1 + 8) = v6 + v16;
      return;
    }

    goto LABEL_36;
  }

LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
}

void sub_10046C958(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (__OFADD__(a2, 1))
  {
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  if (a2 + 1 >= a3)
  {
    sub_1003A5228();
    swift_allocError();
    *v10 = a3;
    goto LABEL_8;
  }

  v5 = *(a1 + 8);
  v6 = *(a1 + 12);
  if (v6 < v5)
  {
    goto LABEL_32;
  }

  v7 = *(a1 + 16);
  v8 = *(a1 + 20);
  v9 = *(a1 + 22);
  if (v7 - (v9 | (v8 << 8)) < v6)
  {
    goto LABEL_33;
  }

  v17 = v9 | (v8 << 8);
  v19 = *(a1 + 16);
  v20 = *a1;
  v30 = *a1;
  v31 = v5;
  v32 = v6;
  v33 = v7;
  v18 = v8;
  v34 = v8;
  v21 = v9;
  v35 = v9;
  v36 = v5;
  v37 = v6;
  v38 = v5;
  if (v5 == v6)
  {
LABEL_6:
    swift_retain_n();
    sub_1003A52D0(&v30);
    sub_1003A5324();
    swift_allocError();
    swift_willThrow();

    *a1 = v20;
    *(a1 + 8) = v38;
    *(a1 + 12) = v6;
    *(a1 + 16) = v19;
    *(a1 + 20) = v18;
    *(a1 + 22) = v21;
LABEL_8:
    swift_willThrow();
    return;
  }

  v11 = v38;
  while (1)
  {
    if (v11 < v31)
    {
      __break(1u);
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    if ((v11 - v31) >= v32 - v31)
    {
      goto LABEL_30;
    }

    swift_beginAccess();
    v12 = *(*(v30 + 24) + (v35 | (v34 << 8)) + v11);
    if ((v12 - 59) <= 0xFFFFFFF4)
    {
      v13 = (v12 - 45) > 0x32 || ((1 << (v12 - 45)) & 0x4000000000003) == 0;
      if (v13 && (v12 & 0xFFFFFFDF) - 91 < 0xFFFFFFE6)
      {
        break;
      }
    }

    if (v6 == ++v11)
    {
      goto LABEL_6;
    }
  }

  swift_retain_n();
  sub_1003A52D0(&v30);
  v22 = v20;
  v14 = v38;
  v23 = v38;
  v24 = v6;
  v25 = v19;
  v26 = v18;
  v27 = v21;
  v28 = v38;
  v29 = v6;

  sub_1003A52D0(&v22);
  v15 = v11 - v28;
  if (__OFSUB__(v11, v28))
  {
    goto LABEL_34;
  }

  if (v6 >= v15 && (v6 - v15) >= v14)
  {
    if (__CFADD__(v17, v14))
    {
      goto LABEL_36;
    }

    if ((v17 + v14) >> 24)
    {
      ByteBuffer._copyIntoByteBufferWithSliceIndex0_slowPath(index:length:)(v14, v15, v20);

      v16 = v15;
      LODWORD(v14) = v38;
    }

    else
    {

      v16 = v15;
    }

    if (!__CFADD__(v14, v16))
    {
      *(a1 + 8) = v14 + v16;
      return;
    }

    goto LABEL_37;
  }

LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
}

void sub_10046CC90(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, _BYTE *a5)
{
  if (__OFADD__(a2, 1))
  {
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if (a2 + 1 >= a3)
  {
    sub_1003A5228();
    swift_allocError();
    *v12 = a3;
    goto LABEL_8;
  }

  v7 = *(a1 + 8);
  v8 = *(a1 + 12);
  if (v8 < v7)
  {
    goto LABEL_31;
  }

  v9 = *(a1 + 16);
  v10 = *(a1 + 20);
  v11 = *(a1 + 22);
  if (v9 - (v11 | (v10 << 8)) < v8)
  {
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v19 = v11 | (v10 << 8);
  v20 = *a1;
  v21 = *(a1 + 22);
  v32 = *a1;
  v33 = v7;
  v34 = v8;
  v22 = v10;
  v23 = v9;
  v35 = v9;
  v36 = v10;
  v37 = v11;
  v38 = v7;
  v39 = v8;
  v40 = v7;
  if (v7 == v8)
  {
LABEL_6:
    swift_retain_n();
    sub_1003A52D0(&v32);
    sub_1003A5324();
    swift_allocError();
    swift_willThrow();

    *a1 = v20;
    *(a1 + 8) = v40;
    *(a1 + 12) = v8;
    *(a1 + 16) = v23;
    *(a1 + 20) = v22;
    *(a1 + 22) = v21;
LABEL_8:
    swift_willThrow();
    return;
  }

  v15 = v40;
  while (1)
  {
    if (v15 < v33)
    {
      __break(1u);
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    if ((v15 - v33) >= v34 - v33)
    {
      goto LABEL_29;
    }

    swift_beginAccess();
    if (*a4 == 1)
    {
      *a4 = 0;
      goto LABEL_11;
    }

    v16 = *(*(v32 + 24) + (v37 | (v36 << 8)) + v15);
    if (v16 == 92)
    {
      *a4 = 1;
      *a5 = 1;
      goto LABEL_11;
    }

    if (v16 == 34)
    {
      break;
    }

LABEL_11:
    if (v8 == ++v15)
    {
      goto LABEL_6;
    }
  }

  swift_retain_n();
  sub_1003A52D0(&v32);
  v24 = v20;
  v17 = v40;
  v25 = v40;
  v26 = v8;
  v27 = v23;
  v28 = v22;
  v29 = v21;
  v30 = v40;
  v31 = v8;

  sub_1003A52D0(&v24);
  v18 = v15 - v30;
  if (__OFSUB__(v15, v30))
  {
    goto LABEL_33;
  }

  if (v8 < v18 || (v8 - v18) < v17)
  {
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (__CFADD__(v19, v17))
  {
    goto LABEL_35;
  }

  if ((v19 + v17) >> 24)
  {
    ByteBuffer._copyIntoByteBufferWithSliceIndex0_slowPath(index:length:)(v17, v18, v20);

    LODWORD(v17) = v40;
  }

  else
  {
  }

  if (!__CFADD__(v17, v18))
  {
    *(a1 + 8) = v17 + v18;
    return;
  }

LABEL_36:
  __break(1u);
}

void sub_10046CFC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (__OFADD__(a2, 1))
  {
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  if (a2 + 1 >= a3)
  {
    sub_1003A5228();
    swift_allocError();
    *v11 = a3;
    goto LABEL_8;
  }

  v5 = *(a1 + 8);
  v6 = *(a1 + 12);
  if (v6 < v5)
  {
    goto LABEL_32;
  }

  v7 = *(a1 + 16);
  v8 = *(a1 + 20);
  v9 = *(a1 + 22);
  if (v7 - (v9 | (v8 << 8)) < v6)
  {
    goto LABEL_33;
  }

  v16 = v9 | (v8 << 8);
  v10 = *a1;
  v27 = *a1;
  v28 = v5;
  v29 = v6;
  v35 = v7;
  v30 = v7;
  v17 = v9;
  v18 = v8;
  v31 = v8;
  v32 = v9;
  v33 = v5;
  v34 = v6;
  if (v5 == v6)
  {
LABEL_6:
    swift_retain_n();
    sub_1003A52D0(&v27);
    sub_1003A5324();
    swift_allocError();
    swift_willThrow();

    *a1 = v10;
    *(a1 + 8) = v5;
    *(a1 + 12) = v6;
    *(a1 + 16) = v35;
    *(a1 + 20) = v18;
    *(a1 + 22) = v17;
LABEL_8:
    swift_willThrow();
    return;
  }

  v12 = v5;
  while (1)
  {
    if (v12 < v28)
    {
      __break(1u);
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    if ((v12 - v28) >= v29 - v28)
    {
      goto LABEL_30;
    }

    swift_beginAccess();
    v13 = *(*(v27 + 24) + (v32 | (v31 << 8)) + v12);
    v14 = v13 > 0x29 || ((1 << v13) & 0x30400000000) == 0;
    if (!v14 || v13 == 123)
    {
      break;
    }

    if (v6 == ++v12)
    {
      goto LABEL_6;
    }
  }

  swift_retain_n();
  sub_1003A52D0(&v27);
  v19 = v10;
  v20 = v5;
  v21 = v6;
  v22 = v35;
  v23 = v18;
  v24 = v17;
  v25 = v5;
  v26 = v6;

  sub_1003A52D0(&v19);
  v15 = v12 - v25;
  if (__OFSUB__(v12, v25))
  {
    goto LABEL_34;
  }

  if (v6 >= v15 && (v6 - v15) >= v5)
  {
    if (__CFADD__(v16, v5))
    {
      goto LABEL_36;
    }

    if ((v16 + v5) >> 24)
    {
      ByteBuffer._copyIntoByteBufferWithSliceIndex0_slowPath(index:length:)(v5, v15, v10);
    }

    else
    {
    }

    if (!__CFADD__(v5, v15))
    {
      *(a1 + 8) = v5 + v15;
      return;
    }

    goto LABEL_37;
  }

LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
}

uint64_t sub_10046D2B8(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (__OFADD__(a2, 1))
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (a2 + 1 < a3)
  {
    v5 = result;
    v6 = *(result + 8);
    v7 = *(result + 12);
    if (v7 >= v6)
    {
      v8 = *(result + 16);
      v9 = *(result + 20);
      v10 = *(result + 22);
      if (v8 - (v10 | (v9 << 8)) >= v7)
      {
        v15 = v10 | (v9 << 8);
        v3 = *result;
        v26 = *result;
        v27 = v6;
        v28 = v7;
        v34 = v8;
        v29 = v8;
        v16 = v10;
        v17 = v9;
        v30 = v9;
        v31 = v10;
        v32 = v6;
        v33 = v7;
        if (v6 == v7)
        {
LABEL_6:
          swift_retain_n();
          sub_1003A52D0(&v26);
          sub_1003A5324();
          swift_allocError();
          swift_willThrow();

          *v5 = v3;
          *(v5 + 8) = v6;
          *(v5 + 12) = v7;
          *(v5 + 16) = v34;
          *(v5 + 20) = v17;
          *(v5 + 22) = v16;
          goto LABEL_8;
        }

        v12 = v6;
        while (1)
        {
          if (v12 < v27)
          {
            __break(1u);
LABEL_27:
            __break(1u);
            goto LABEL_28;
          }

          if ((v12 - v27) >= v28 - v27)
          {
            goto LABEL_27;
          }

          swift_beginAccess();
          result = *(*(v26 + 24) + (v31 | (v30 << 8)) + v12);
          if (result != 45 && result != 95)
          {
            result = isalnum(result);
            if (!result)
            {
              break;
            }
          }

          if (v7 == ++v12)
          {
            goto LABEL_6;
          }
        }

        swift_retain_n();
        sub_1003A52D0(&v26);
        v18 = v3;
        v19 = v6;
        v20 = v7;
        v21 = v34;
        v22 = v17;
        v23 = v16;
        v24 = v6;
        v25 = v7;

        result = sub_1003A52D0(&v18);
        v13 = v12 - v24;
        if (__OFSUB__(v12, v24))
        {
          goto LABEL_31;
        }

        if (v7 >= v13 && (v7 - v13) >= v6)
        {
          if (__CFADD__(v15, v6))
          {
            goto LABEL_33;
          }

          if ((v15 + v6) >> 24)
          {
            v14 = v12 - v24;
            v13 = ByteBuffer._copyIntoByteBufferWithSliceIndex0_slowPath(index:length:)(v6, v13, v3);

            v3 = v13;
            LODWORD(v13) = v14;
          }

          else
          {
          }

          if (!__CFADD__(v6, v13))
          {
            *(v5 + 8) = v6 + v13;
            return v3;
          }

          goto LABEL_34;
        }

LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
        return result;
      }

LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  sub_1003A5228();
  swift_allocError();
  *v11 = a3;
LABEL_8:
  swift_willThrow();
  return v3;
}

void sub_10046D5B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (__OFADD__(a2, 1))
  {
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (a2 + 1 >= a3)
  {
    sub_1003A5228();
    swift_allocError();
    *v11 = a3;
    goto LABEL_8;
  }

  v5 = *(a1 + 8);
  v6 = *(a1 + 12);
  if (v6 < v5)
  {
    goto LABEL_33;
  }

  v7 = *(a1 + 16);
  v8 = *(a1 + 20);
  v9 = *(a1 + 22);
  if (v7 - (v9 | (v8 << 8)) < v6)
  {
    goto LABEL_34;
  }

  v17 = v9 | (v8 << 8);
  v10 = *a1;
  v28 = *a1;
  v29 = v5;
  v30 = v6;
  v36 = v7;
  v31 = v7;
  v18 = v9;
  v19 = v8;
  v32 = v8;
  v33 = v9;
  v34 = v5;
  v35 = v6;
  if (v5 == v6)
  {
LABEL_6:
    swift_retain_n();
    sub_1003A52D0(&v28);
    sub_1003A5324();
    swift_allocError();
    swift_willThrow();

    *a1 = v10;
    *(a1 + 8) = v5;
    *(a1 + 12) = v6;
    *(a1 + 16) = v36;
    *(a1 + 20) = v19;
    *(a1 + 22) = v18;
LABEL_8:
    swift_willThrow();
    return;
  }

  v12 = v5;
  while (1)
  {
    if (v12 < v29)
    {
      __break(1u);
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    if ((v12 - v29) >= v30 - v29)
    {
      goto LABEL_31;
    }

    swift_beginAccess();
    v13 = *(*(v28 + 24) + (v33 | (v32 << 8)) + v12);
    v14 = v13 == 10 || v13 == 13;
    if (v14 || v13 < 1)
    {
      break;
    }

    if (v6 == ++v12)
    {
      goto LABEL_6;
    }
  }

  swift_retain_n();
  sub_1003A52D0(&v28);
  v20 = v10;
  v21 = v5;
  v22 = v6;
  v23 = v36;
  v24 = v19;
  v25 = v18;
  v26 = v5;
  v27 = v6;

  sub_1003A52D0(&v20);
  v16 = v12 - v26;
  if (__OFSUB__(v12, v26))
  {
    goto LABEL_35;
  }

  if (v6 >= v16 && (v6 - v16) >= v5)
  {
    if (__CFADD__(v17, v5))
    {
      goto LABEL_37;
    }

    if ((v17 + v5) >> 24)
    {
      ByteBuffer._copyIntoByteBufferWithSliceIndex0_slowPath(index:length:)(v5, v16, v10);
    }

    else
    {
    }

    if (!__CFADD__(v5, v16))
    {
      *(a1 + 8) = v5 + v16;
      return;
    }

    goto LABEL_38;
  }

LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
}

char *sub_10046D8A4(char *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (__OFADD__(a2, 1))
  {
    __break(1u);
  }

  else
  {
    if (a2 + 1 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v18 = a3;
      return swift_willThrow();
    }

    v11 = result;
    v12 = *(result + 1);
    v20 = *(result + 10);
    v21 = *(result + 4);
    v19 = result[22];
    v22 = *result;

    sub_100425158(v11, a4, a5, a6, a7, a8, &v23, a9);
    if (v9)
    {

      *v11 = v22;
      *(v11 + 1) = v12;
      *(v11 + 4) = v21;
      *(v11 + 10) = v20;
      v11[22] = v19;
      return swift_willThrow();
    }

    return v23;
  }

  return result;
}

char *sub_10046D9E8(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  result = sub_10046D8A4(a1, a2, a3, a4, a5, a6, a7, a8, a9);
  if (v9)
  {
    swift_errorRetain();
    sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
    if (swift_dynamicCast())
    {

      return 0;
    }

    else
    {
    }
  }

  return result;
}

char *sub_10046DA9C(char *result, uint64_t a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = a2 + 1;
  if (!__OFADD__(a2, 1))
  {
    v9 = a3;
    if (v8 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v16 = v9;
    }

    else
    {
      v10 = result;
      v11 = *result;
      v12 = *(result + 3);
      v13 = *(result + 4);
      v21 = *(result + 10);
      v22 = *(result + 2);
      v14 = result[22];
      if (a2 + 2 >= a3)
      {
        sub_1003A5228();
        swift_allocError();
        *v17 = v9;
      }

      else
      {

        sub_100469DF8(v10);
        if (!v7)
        {
          v9 = sub_1003FE11C(v10, v8, v9, a4, a5, a6, a7);

          return v9;
        }

        *v10 = v11;
        *(v10 + 8) = v22;
        *(v10 + 12) = v12;
        *(v10 + 16) = v13;
        *(v10 + 20) = v21;
        *(v10 + 22) = v14;
      }

      swift_willThrow();

      *v10 = v11;
      *(v10 + 8) = v22;
      *(v10 + 12) = v12;
      *(v10 + 16) = v13;
      *(v10 + 20) = v21;
      *(v10 + 22) = v14;
    }

    swift_willThrow();
    return v9;
  }

  __break(1u);
  return result;
}

char *sub_10046DC3C(char *a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  result = sub_10046DA9C(a1, a2, a3, a4, a5, a6, a7);
  if (v7)
  {
    swift_errorRetain();
    sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
    if (swift_dynamicCast())
    {

      return 0;
    }

    else
    {
    }
  }

  return result;
}

char *sub_10046DCF0(char *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
  }

  else
  {
    if (v8 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v18 = a3;
      return swift_willThrow();
    }

    v14 = result;
    v15 = *result;
    v16 = *(result + 1);
    v17 = *(result + 4);
    v19 = result[22];
    v20 = *(result + 10);
    v21 = _swiftEmptyArrayStorage;

    sub_10042CF04(&v21, v14, v8, a3, a4, a5, a6, a7);
    if (v7)
    {

      *v14 = v15;
      *(v14 + 1) = v16;
      *(v14 + 4) = v17;
      *(v14 + 10) = v20;
      v14[22] = v19;
      return swift_willThrow();
    }

    return v21;
  }

  return result;
}

uint64_t sub_10046DF08(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(unint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v9 = a2 + 1;
  if (!__OFADD__(a2, 1))
  {
    if (v9 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v20 = a3;
    }

    else
    {
      v13 = result;
      v14 = *result;
      v15 = *(result + 8);
      v25 = *(result + 20);
      v26 = *(result + 16);
      v24 = *(result + 22);

      v19 = a8(v13, v9, a3, a4, a5, a6, a7);
      if (!v8)
      {
        v23 = v19;

        v22 = 0;
        v21 = v23;
        return v21 | (v22 << 32);
      }

      *v13 = v14;
      *(v13 + 8) = v15;
      *(v13 + 16) = v26;
      *(v13 + 20) = v25;
      *(v13 + 22) = v24;
    }

    swift_willThrow();

    swift_errorRetain();
    sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
    if ((swift_dynamicCast() & 1) == 0)
    {
    }

    v21 = 0;
    v22 = 1;
    return v21 | (v22 << 32);
  }

  __break(1u);
  return result;
}

uint64_t *sub_10046E0EC(uint64_t *result, uint64_t a2, int64_t a3)
{
  v5 = a2 + 1;
  if (!__OFADD__(a2, 1))
  {
    if (v5 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v14 = a3;
    }

    else
    {
      v7 = result;
      v8 = *result;
      v9 = result[1];
      v10 = *(result + 4);
      v11 = *(result + 10);
      v12 = *(result + 22);

      sub_10046B71C(0x3CuLL, 0xE100000000000000, 0, 0, v7, v5, a3);
      if (!v3)
      {
        v13 = sub_10046C278(v7, v5, a3, 1);
        v4 = v13;
        if ((v13 & 0x8000000000000000) == 0)
        {
          sub_10046B71C(0x3EuLL, 0xE100000000000000, 0, 0, v7, v5, a3);

          return v4;
        }

        sub_1003A527C();
        swift_allocError();
        *v15 = 0xD000000000000011;
        v15[1] = 0x80000001004B08A0;
        v15[2] = 0xD000000000000020;
        v15[3] = 0x80000001004B03C0;
        v15[4] = 202;
        swift_willThrow();
      }

      *v7 = v8;
      *(v7 + 8) = v9;
      *(v7 + 16) = v10;
      *(v7 + 20) = v11;
      *(v7 + 22) = v12;
    }

    swift_willThrow();
    return v4;
  }

  __break(1u);
  return result;
}

uint64_t *sub_10046E2AC(uint64_t *result, uint64_t a2, int64_t a3, unint64_t a4)
{
  v5 = a2 + 1;
  if (!__OFADD__(a2, 1))
  {
    v6 = a3;
    if (v5 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v15 = v6;
    }

    else
    {
      v8 = result;
      v9 = *result;
      v10 = result[1];
      v11 = *(result + 4);
      v12 = *(result + 10);
      v13 = *(result + 22);

      sub_10046B71C(a4, 0xE100000000000000, 0, 0, v8, v5, v6);
      if (!v4)
      {
        v14 = sub_10046C278(v8, v5, v6, 1);
        v6 = v14;
        if ((v14 & 0x8000000000000000) == 0)
        {

          return v6;
        }

        v6 = 0x80000001004B08A0;
        sub_1003A527C();
        swift_allocError();
        *v16 = 0xD000000000000011;
        v16[1] = 0x80000001004B08A0;
        v16[2] = 0xD000000000000020;
        v16[3] = 0x80000001004B03C0;
        v16[4] = 202;
        swift_willThrow();
      }

      *v8 = v9;
      *(v8 + 8) = v10;
      *(v8 + 16) = v11;
      *(v8 + 20) = v12;
      *(v8 + 22) = v13;
    }

    swift_willThrow();
    return v6;
  }

  __break(1u);
  return result;
}

uint64_t *sub_10046E43C(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v9 = a2 + 1;
  if (!__OFADD__(a2, 1))
  {
    v10 = a3;
    if (v9 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v18 = v10;
    }

    else
    {
      v11 = result;
      v12 = *result;
      v13 = *(result + 2);
      v14 = *(result + 3);
      v15 = *(result + 4);
      v16 = *(result + 10);
      v25 = *(result + 22);
      if (a2 + 2 >= a3)
      {
        sub_1003A5228();
        swift_allocError();
        *v19 = v10;

        v17 = v25;
      }

      else
      {

        sub_100469DF8(v11);
        if (!v8)
        {
          v10 = a8(v11, v9, v10, a4, a5, a6, a7);

          return v10;
        }

        *v11 = v12;
        *(v11 + 8) = v13;
        *(v11 + 12) = v14;
        *(v11 + 16) = v15;
        *(v11 + 20) = v16;
        v17 = v25;
        *(v11 + 22) = v25;
      }

      swift_willThrow();

      *v11 = v12;
      *(v11 + 8) = v13;
      *(v11 + 12) = v14;
      *(v11 + 16) = v15;
      *(v11 + 20) = v16;
      *(v11 + 22) = v17;
    }

    swift_willThrow();
    return v10;
  }

  __break(1u);
  return result;
}

uint64_t *sub_10046E600(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(uint64_t *__return_ptr, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v9 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
  }

  else
  {
    if (v9 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v19 = a3;
      return swift_willThrow();
    }

    v12 = result;
    v13 = *result;
    v14 = result[1];
    v21 = *(result + 10);
    v22 = *(result + 4);
    v20 = *(result + 22);

    a8(&v23, v12, v9, a3, a4, a5, a6, a7);
    if (v8)
    {

      *v12 = v13;
      *(v12 + 8) = v14;
      *(v12 + 16) = v22;
      *(v12 + 20) = v21;
      *(v12 + 22) = v20;
      return swift_willThrow();
    }

    return v23;
  }

  return result;
}

uint64_t *sub_10046E73C(uint64_t *result, uint64_t a2, int64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = a2 + 1;
  if (!__OFADD__(a2, 1))
  {
    if (v9 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v17 = a3;
    }

    else
    {
      v11 = result;
      v8 = a7;
      v15 = *result;
      v16 = result[1];
      v19 = *(result + 10);
      v20 = *(result + 4);
      v18 = *(result + 22);

      sub_10046B71C(0x5BuLL, 0xE100000000000000, 0, 0, v11, v9, a3);
      if (!v7)
      {
        v8 = sub_10041485C(v11, v9, a3, a4, a5, a6, v8);
        sub_10046B71C(0x5DuLL, 0xE100000000000000, 0, 0, v11, v9, a3);

        return v8;
      }

      *v11 = v15;
      *(v11 + 8) = v16;
      *(v11 + 16) = v20;
      *(v11 + 20) = v19;
      *(v11 + 22) = v18;
    }

    swift_willThrow();
    return v8;
  }

  __break(1u);
  return result;
}

uint64_t *sub_10046E8CC(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(uint64_t *__return_ptr, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v9 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
  }

  else
  {
    if (v9 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v19 = a3;
      return swift_willThrow();
    }

    v12 = result;
    v13 = *result;
    v14 = result[1];
    v21 = *(result + 10);
    v22 = *(result + 4);
    v20 = *(result + 22);

    a8(&v23, v12, v9, a3, a4, a5, a6, a7);
    if (v8)
    {

      *v12 = v13;
      *(v12 + 8) = v14;
      *(v12 + 16) = v22;
      *(v12 + 20) = v21;
      *(v12 + 22) = v20;
      return swift_willThrow();
    }

    return v23;
  }

  return result;
}

uint64_t *sub_10046EA30(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
  }

  else
  {
    if (v8 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v19 = a3;
    }

    else
    {
      v11 = result;
      v12 = *result;
      v13 = result[1];
      v14 = *(result + 4);
      v21 = *(result + 22);
      v22 = *(result + 10);

      v18 = sub_100429544(v11, v8, a3, a4, a5, a6, a7);
      if (!v7)
      {
        v20 = v18;

        return v20;
      }

      *v11 = v12;
      *(v11 + 8) = v13;
      *(v11 + 16) = v14;
      *(v11 + 20) = v22;
      *(v11 + 22) = v21;
    }

    swift_willThrow();

    swift_errorRetain();
    sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
    if (swift_dynamicCast())
    {

      return 0;
    }

    else
    {
    }
  }

  return result;
}

uint64_t *sub_10046EBFC(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
  }

  else
  {
    if (v8 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v19 = a3;
    }

    else
    {
      v10 = result;
      v11 = *result;
      v12 = result[1];
      v21 = *(result + 10);
      v22 = *(result + 4);
      v13 = *(result + 22);

      v18 = sub_100427DB0(v10, v8, a3, a4, a5, a6, a7);
      if (!v7)
      {
        v20 = v18;
        sub_10046B71C(0x40uLL, 0xE100000000000000, 0, 0, v10, v8, a3);

        return v20;
      }

      *v10 = v11;
      *(v10 + 8) = v12;
      *(v10 + 16) = v22;
      *(v10 + 20) = v21;
      *(v10 + 22) = v13;
    }

    return swift_willThrow();
  }

  return result;
}

uint64_t sub_10046ED7C(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = a3 + 1;
  if (__OFADD__(a3, 1))
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  v10 = a4;
  if (v12 < a4)
  {
    v7 = a1;
    v37 = a2;
    v13 = *a1;
    v11 = a1[1];
    v14 = *(a1 + 4);
    v38 = *(a1 + 22);
    v39 = *(a1 + 10);

    v15 = sub_100424288(v7, v12, v10);
    v8 = v6;
    if (v6)
    {
LABEL_53:

      *v7 = v13;
      *(v7 + 8) = v11;
      *(v7 + 16) = v14;
      *(v7 + 20) = v39;
      *(v7 + 22) = v38;
      return swift_willThrow();
    }

    v44 = v15;
    v9 = v37;
    v45 = *v37;
    v36 = v13;
    v35 = v14;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_5:
      v16 = v10;
      v17 = v44;
      v19 = v45[2];
      v18 = v45[3];
      if (v19 >= v18 >> 1)
      {
        v45 = sub_100461AE4((v18 > 1), v19 + 1, 1, v45);
        v17 = v44;
      }

      v45[2] = v19 + 1;
      v45[v19 + 4] = v17;
      if (v12 + 1 < v16)
      {
        v40 = v12 + 3;
        v41 = v12 + 2;
        while (1)
        {
          v12 = *v7;
          v10 = *(v7 + 8);
          LODWORD(v44) = *(v7 + 12);
          v9 = *(v7 + 16);
          v43 = *(v7 + 20);
          v42 = *(v7 + 22);
          if (v41 < v16)
          {
            break;
          }

          sub_1003A5228();
          swift_allocError();
          *v21 = v16;

LABEL_24:
          swift_willThrow();
          swift_errorRetain();
          sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
          if (swift_dynamicCast())
          {

            v8 = v46;
          }

          else
          {

            swift_errorRetain();
            if ((swift_dynamicCast() & 1) == 0)
            {

              goto LABEL_49;
            }

            v8 = v46;
          }

          if (v41 >= v16)
          {
            sub_1003A5228();
            swift_allocError();
            *v32 = v16;
            goto LABEL_48;
          }

          if (v44 == v10)
          {
            sub_1003A5324();
            swift_allocError();
            LODWORD(v44) = v10;
            goto LABEL_47;
          }

          swift_beginAccess();
          if (v10 == -1)
          {
            __break(1u);
            goto LABEL_56;
          }

          v24 = *(*(v12 + 24) + (v42 | (v43 << 8)) + v10);
          *(v7 + 8) = v10 + 1;
          if ((v24 - 47) > 0x11 || ((1 << (v24 - 47)) & 0x20801) == 0)
          {
            sub_1004A6724(20);

            v47._countAndFlagsBits = sub_1004A6CE4();
            sub_1004A5994(v47);

            sub_1003A527C();
            swift_allocError();
            *v33 = 0xD000000000000012;
            v33[1] = 0x80000001004B0D10;
            v33[2] = 0xD000000000000020;
            v33[3] = 0x80000001004B03C0;
            v33[4] = 1312;
LABEL_47:
            swift_willThrow();
LABEL_48:
            swift_willThrow();
LABEL_49:

            *v37 = v45;
            *v7 = v12;
            *(v7 + 8) = v10;
            *(v7 + 12) = v44;
            *(v7 + 16) = v9;
            *(v7 + 20) = v43;
            *(v7 + 22) = v42;
            goto LABEL_50;
          }

          sub_10000C9C0(&qword_1005D65C0, &unk_1004DD1B0);
          v29 = swift_allocObject();
          *(v29 + 16) = xmmword_1004CEAA0;
          *(v29 + 32) = v24;

          v8 = 0;
LABEL_36:

          v27 = v45[2];
          v26 = v45[3];
          if (v27 >= v26 >> 1)
          {
            v45 = sub_100461AE4((v26 > 1), v27 + 1, 1, v45);
          }

          v45[2] = v27 + 1;
          v45[v27 + 4] = v29;
        }

        if (v40 >= v16)
        {
          sub_1003A5228();
          swift_allocError();
          *v22 = v16;
          swift_retain_n();
          swift_retain_n();
        }

        else
        {
          swift_retain_n();
          swift_retain_n();
          sub_100428388(v7, v40, v16);
          if (!v8)
          {
            v29 = v20;

            goto LABEL_40;
          }

          *v7 = v12;
          *(v7 + 8) = v10;
          *(v7 + 12) = v44;
          *(v7 + 16) = v9;
          *(v7 + 20) = v43;
          *(v7 + 22) = v42;
        }

        swift_willThrow();
        swift_errorRetain();
        sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
        if (swift_dynamicCast())
        {
        }

        else
        {

          swift_errorRetain();
          if ((swift_dynamicCast() & 1) == 0)
          {

LABEL_23:

            *v7 = v12;
            *(v7 + 8) = v10;
            *(v7 + 12) = v44;
            *(v7 + 16) = v9;
            *(v7 + 20) = v43;
            *(v7 + 22) = v42;
            goto LABEL_24;
          }
        }

        if (v40 < v16)
        {
          sub_1004293F0(v7);
          v8 = 0;
          v29 = v28;
LABEL_40:

          goto LABEL_36;
        }

        sub_1003A5228();
        swift_allocError();
        *v23 = v16;
        swift_willThrow();
        goto LABEL_23;
      }

      *v9 = v45;
      sub_1003A5228();
      swift_allocError();
      *v31 = v16;
LABEL_50:
      v13 = v36;
      v14 = v35;
      swift_willThrow();
      swift_errorRetain();
      sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
      if (swift_dynamicCast())
      {
      }

      goto LABEL_53;
    }

LABEL_57:
    v45 = sub_100461AE4(0, v45[2] + 1, 1, v45);
    goto LABEL_5;
  }

  sub_1003A5228();
  swift_allocError();
  *v30 = v10;
  return swift_willThrow();
}

uint64_t sub_10046F5C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  result = a8(a1, a2, a3, a4, a5, a6, a7);
  if (v8)
  {
    swift_errorRetain();
    sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
    if (swift_dynamicCast())
    {

      return 0;
    }

    else
    {
    }
  }

  return result;
}

uint64_t *sub_10046F674(uint64_t *result, uint64_t a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = (a2 + 1);
  if (__OFADD__(a2, 1))
  {
    __break(1u);
  }

  else
  {
    if (v8 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v16 = a3;
    }

    else
    {
      v10 = result;
      v11 = *result;
      v12 = *(result + 3);
      v23 = *(result + 2);
      v13 = *(result + 4);
      v14 = *(result + 10);
      v15 = *(result + 22);
      if (a2 + 2 >= a3)
      {
        sub_1003A5228();
        swift_allocError();
        *v17 = a3;
      }

      else
      {

        sub_100469DF8(v10);
        if (!v7)
        {
          v18 = sub_1003FBA08(v10, v8, a3, a4, a5, a6, a7);

          sub_10046DC3C(v10, v8, a3, a4, a5, a6, a7);

          return v18;
        }

        *v10 = v11;
        *(v10 + 8) = v23;
        *(v10 + 12) = v12;
        *(v10 + 16) = v13;
        *(v10 + 20) = v14;
        *(v10 + 22) = v15;
      }

      swift_willThrow();

      *v10 = v11;
      *(v10 + 8) = v23;
      *(v10 + 12) = v12;
      *(v10 + 16) = v13;
      *(v10 + 20) = v14;
      *(v10 + 22) = v15;
    }

    swift_willThrow();
    swift_errorRetain();
    sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
    if (swift_dynamicCast())
    {

      return 0;
    }

    else
    {
    }
  }

  return result;
}

uint64_t *sub_10046F8E8(uint64_t *result, uint64_t a2, int64_t a3)
{
  v4 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
  }

  else
  {
    if (v4 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v12 = a3;
    }

    else
    {
      v6 = result;
      v7 = *result;
      v8 = result[1];
      v9 = *(result + 4);
      v10 = *(result + 10);
      v11 = *(result + 22);

      sub_10046B71C(0x3DuLL, 0xE100000000000000, 0, 0, v6, v4, a3);
      if (!v3)
      {
        sub_10042D750(v6, v4, a3);
        v14 = v13;

        return v14;
      }

      *v6 = v7;
      *(v6 + 8) = v8;
      *(v6 + 16) = v9;
      *(v6 + 20) = v10;
      *(v6 + 22) = v11;
    }

    swift_willThrow();
    swift_errorRetain();
    sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
    if (swift_dynamicCast())
    {

      return 0;
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_10046FA9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t (*a9)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  result = a9(a1, a2, a3, a4, a5, a6, a7, a8);
  if (v9)
  {
    swift_errorRetain();
    sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
    if (swift_dynamicCast())
    {

      return 0;
    }

    else
    {
    }
  }

  return result;
}

uint64_t *sub_10046FB50(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
  }

  else
  {
    if (v8 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v19 = a3;
    }

    else
    {
      v11 = result;
      v12 = *result;
      v13 = result[1];
      v14 = *(result + 4);
      v21 = *(result + 22);
      v22 = *(result + 10);

      v18 = sub_100420280(v11, v8, a3, a4, a5, a6, a7);
      if (!v7)
      {
        v20 = v18;

        return v20;
      }

      *v11 = v12;
      *(v11 + 8) = v13;
      *(v11 + 16) = v14;
      *(v11 + 20) = v22;
      *(v11 + 22) = v21;
    }

    swift_willThrow();

    swift_errorRetain();
    sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
    if (swift_dynamicCast())
    {

      return 0;
    }

    else
    {
    }
  }

  return result;
}

uint64_t *sub_10046FD40(uint64_t *a1, uint64_t a2, int64_t a3)
{
  result = sub_10046E0EC(a1, a2, a3);
  if (v3)
  {
    swift_errorRetain();
    sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
    if (swift_dynamicCast())
    {

      return 0;
    }

    else
    {
    }
  }

  return result;
}

uint64_t *sub_10046FE18(uint64_t *a1, uint64_t a2, int64_t a3, unint64_t a4)
{
  result = sub_10046E2AC(a1, a2, a3, a4);
  if (v4)
  {
    swift_errorRetain();
    sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
    if (swift_dynamicCast())
    {

      return 0;
    }

    else
    {
    }
  }

  return result;
}

uint64_t *sub_10046FEF0(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v5 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
  }

  else
  {
    if (v5 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v15 = a3;
    }

    else
    {
      v8 = result;
      v9 = *result;
      v10 = result[1];
      v11 = *(result + 4);
      v12 = *(result + 10);
      v13 = *(result + 22);

      v14 = a4(v8, v5, a3);
      if (!v4)
      {
        v16 = v14;

        return v16;
      }

      *v8 = v9;
      *(v8 + 8) = v10;
      *(v8 + 16) = v11;
      *(v8 + 20) = v12;
      *(v8 + 22) = v13;
    }

    swift_willThrow();
    swift_errorRetain();
    sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
    if (swift_dynamicCast())
    {

      return 0;
    }

    else
    {
    }
  }

  return result;
}

uint64_t *sub_100470120(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(uint64_t *__return_ptr, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  result = sub_10046E600(a1, a2, a3, a4, a5, a6, a7, a8);
  if (v8)
  {
    swift_errorRetain();
    sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
    if (swift_dynamicCast())
    {

      return 0;
    }

    else
    {
    }
  }

  return result;
}

uint64_t *sub_1004701D4(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
  }

  else
  {
    if (v8 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v19 = a3;
    }

    else
    {
      v11 = result;
      v12 = *result;
      v13 = result[1];
      v14 = *(result + 4);
      v21 = *(result + 22);
      v22 = *(result + 10);

      v18 = sub_100421650(v11, v8, a3, a4, a5, a6, a7);
      if (!v7)
      {
        v20 = v18;

        return v20;
      }

      *v11 = v12;
      *(v11 + 8) = v13;
      *(v11 + 16) = v14;
      *(v11 + 20) = v22;
      *(v11 + 22) = v21;
    }

    swift_willThrow();

    swift_errorRetain();
    sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
    if (swift_dynamicCast())
    {

      return 0;
    }

    else
    {
    }
  }

  return result;
}

uint64_t *sub_1004703AC(uint64_t *a1, uint64_t a2, int64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  result = sub_10046E73C(a1, a2, a3, a4, a5, a6, a7);
  if (v7)
  {
    swift_errorRetain();
    sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
    if (swift_dynamicCast())
    {

      return 0xF000000000000007;
    }

    else
    {
    }
  }

  return result;
}

uint64_t *sub_1004704A0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  result = sub_10046EBFC(a1, a2, a3, a4, a5, a6, a7);
  if (v7)
  {
    swift_errorRetain();
    sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
    if (swift_dynamicCast())
    {

      return 0;
    }

    else
    {
    }
  }

  return result;
}

uint64_t *sub_100470558@<X0>(uint64_t *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a5@<X8>)
{
  v6 = a2 + 1;
  if (!__OFADD__(a2, 1))
  {
    if (v6 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v12 = a3;
    }

    else
    {
      v9 = result;
      v10 = *result;
      v11 = result[1];
      v19 = *(result + 10);
      v20 = *(result + 4);
      v18 = *(result + 22);

      sub_10041AFA0(v9, v6, a3, v21);
      if (!v5)
      {
        v13 = v21[0];
        v14 = v21[1];
        v15 = v21[2];
        v16 = v21[3];
        v17 = v22;

LABEL_10:
        *a5 = v13;
        *(a5 + 8) = v14;
        *(a5 + 16) = v15;
        *(a5 + 24) = v16;
        *(a5 + 32) = v17;
        return result;
      }

      *v9 = v10;
      *(v9 + 8) = v11;
      *(v9 + 16) = v20;
      *(v9 + 20) = v19;
      *(v9 + 22) = v18;
    }

    swift_willThrow();

    swift_errorRetain();
    sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
    if ((swift_dynamicCast() & 1) == 0)
    {
    }

    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    goto LABEL_10;
  }

  __break(1u);
  return result;
}

uint64_t *sub_100470748(uint64_t *result, uint64_t a2, int64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
  }

  else
  {
    if (v8 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v17 = a3;
    }

    else
    {
      v10 = result;
      v13 = *result;
      v14 = result[1];
      v15 = *(result + 4);
      v16 = *(result + 10);
      v21 = *(result + 22);

      sub_10046B71C(0x3FuLL, 0xE100000000000000, 0, 0, v10, v8, a3);
      if (!v7)
      {
        v18 = sub_1004244FC(v10, v8, a3, a4, a5, a6, a7);

        return v18;
      }

      *v10 = v13;
      *(v10 + 8) = v14;
      *(v10 + 16) = v15;
      *(v10 + 20) = v16;
      *(v10 + 22) = v21;
    }

    swift_willThrow();
    swift_errorRetain();
    sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
    if (swift_dynamicCast())
    {

      return 0;
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_100470918(uint64_t result, uint64_t a2, int64_t a3)
{
  v4 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
  }

  else
  {
    if (v4 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v13 = a3;
    }

    else
    {
      v6 = result;
      v7 = *result;
      v8 = *(result + 8);
      v9 = *(result + 16);
      v10 = *(result + 20);
      v11 = *(result + 22);

      sub_10046B71C(0x494C41564449553BuLL, 0xED00003D59544944, 0, 0, v6, v4, a3);
      if (!v3)
      {
        v14 = sub_10041EC70(v6, v4, a3, v12);

        v15 = 0;
        v16 = v14;
        return v16 | (v15 << 32);
      }

      *v6 = v7;
      *(v6 + 8) = v8;
      *(v6 + 16) = v9;
      *(v6 + 20) = v10;
      *(v6 + 22) = v11;
    }

    swift_willThrow();
    swift_errorRetain();
    sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
    if (swift_dynamicCast())
    {

      v16 = 0;
      v15 = 1;
      return v16 | (v15 << 32);
    }
  }

  return result;
}

uint64_t *sub_100470B0C(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v9 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
  }

  else
  {
    if (v9 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v20 = a3;
    }

    else
    {
      v13 = result;
      v14 = *result;
      v15 = result[1];
      v23 = *(result + 10);
      v24 = *(result + 4);
      v22 = *(result + 22);

      v19 = a8(v13, v9, a3, a4, a5, a6, a7);
      if (!v8)
      {
        v21 = v19;

        return v21;
      }

      *v13 = v14;
      *(v13 + 8) = v15;
      *(v13 + 16) = v24;
      *(v13 + 20) = v23;
      *(v13 + 22) = v22;
    }

    swift_willThrow();

    swift_errorRetain();
    sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
    if (swift_dynamicCast())
    {

      return 0;
    }

    else
    {
    }
  }

  return result;
}

uint64_t *sub_100470D40(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v9 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
  }

  else
  {
    if (v9 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v20 = a3;
    }

    else
    {
      v13 = result;
      v14 = *result;
      v15 = result[1];
      v23 = *(result + 10);
      v24 = *(result + 4);
      v22 = *(result + 22);

      v19 = a8(v13, v9, a3, a4, a5, a6, a7);
      if (!v8)
      {
        v21 = v19;

        return v21;
      }

      *v13 = v14;
      *(v13 + 8) = v15;
      *(v13 + 16) = v24;
      *(v13 + 20) = v23;
      *(v13 + 22) = v22;
    }

    swift_willThrow();

    swift_errorRetain();
    sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
    if (swift_dynamicCast())
    {

      return 0;
    }

    else
    {
    }
  }

  return result;
}

uint64_t *sub_100470F5C(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v9 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
  }

  else
  {
    if (v9 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v20 = a3;
    }

    else
    {
      v13 = result;
      v14 = *result;
      v15 = result[1];
      v23 = *(result + 10);
      v24 = *(result + 4);
      v22 = *(result + 22);

      v19 = a8(v13, v9, a3, a4, a5, a6, a7);
      if (!v8)
      {
        v21 = v19;

        return v21;
      }

      *v13 = v14;
      *(v13 + 8) = v15;
      *(v13 + 16) = v24;
      *(v13 + 20) = v23;
      *(v13 + 22) = v22;
    }

    swift_willThrow();

    swift_errorRetain();
    sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
    if (swift_dynamicCast())
    {

      return 0;
    }

    else
    {
    }
  }

  return result;
}

uint64_t *sub_10047112C(uint64_t *result, uint64_t a2, int64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
  }

  else
  {
    if (v8 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v17 = a3;
    }

    else
    {
      v10 = result;
      v13 = *result;
      v14 = result[1];
      v15 = *(result + 4);
      v16 = *(result + 10);
      v21 = *(result + 22);

      sub_10046B71C(0x2EuLL, 0xE100000000000000, 0, 0, v10, v8, a3);
      if (!v7)
      {
        v18 = sub_10042C924(v10, v8, a3, a4, a5, a6, a7);

        return v18;
      }

      *v10 = v13;
      *(v10 + 8) = v14;
      *(v10 + 16) = v15;
      *(v10 + 20) = v16;
      *(v10 + 22) = v21;
    }

    swift_willThrow();
    swift_errorRetain();
    sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
    if (swift_dynamicCast())
    {

      return 0;
    }

    else
    {
    }
  }

  return result;
}

void sub_1004712FC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1004A5584();
  if ((v8 & 0x100) != 0)
  {
    goto LABEL_15;
  }

  if (__OFADD__(a4, 1))
  {
    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    return;
  }

  if (a4 + 1 < a5)
  {
    v9 = *a3;
    v10 = *(a3 + 2);
    v11 = *(a3 + 10);
    v12 = *(a3 + 22);
    v18 = *(a3 + 12);
    if (v18 == v10)
    {
      sub_1003A5324();
      swift_allocError();
LABEL_10:
      swift_willThrow();
      *a3 = v9;
      *(a3 + 2) = v10;
      *(a3 + 12) = v18;
      *(a3 + 10) = v11;
      *(a3 + 22) = v12;
      goto LABEL_11;
    }

    v14 = v8;
    swift_beginAccess();
    if (v10 != -1)
    {
      v15 = *(*(v9 + 24) + (v12 | (v11 << 8)) + v10);
      *(a3 + 2) = v10 + 1;
      if (v15 == v14)
      {
        return;
      }

      sub_1004A6724(23);

      strcpy(v19, "looking for ");
      BYTE5(v19[1]) = 0;
      HIWORD(v19[1]) = -5120;
      v21._countAndFlagsBits = sub_1004A6CE4();
      sub_1004A5994(v21);

      v22._countAndFlagsBits = 0x20646E756F6620;
      v22._object = 0xE700000000000000;
      sub_1004A5994(v22);
      v20 = v15;
      v23._countAndFlagsBits = sub_1004A6CE4();
      sub_1004A5994(v23);

      v16 = v19[1];
      sub_1003A527C();
      swift_allocError();
      *v17 = v19[0];
      v17[1] = v16;
      v17[2] = 0xD000000000000020;
      v17[3] = 0x80000001004B03C0;
      v17[4] = 295;
      goto LABEL_10;
    }

    goto LABEL_14;
  }

  sub_1003A5228();
  swift_allocError();
  *v13 = a5;
LABEL_11:
  swift_willThrow();
}

uint64_t sub_100471550(uint64_t *a1, char **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = a3 + 1;
  if (__OFADD__(a3, 1))
  {
    __break(1u);
LABEL_25:
    v12 = sub_1004613E4(0, *(v12 + 2) + 1, 1, v12);
    goto LABEL_12;
  }

  v11 = a4;
  if (v14 >= a4)
  {
    sub_1003A5228();
    swift_allocError();
    *v24 = v11;
    return swift_willThrow();
  }

  v8 = a1;
  v15 = *a1;
  v13 = a1[1];
  v16 = *(a1 + 4);
  v17 = *(a1 + 10);
  v18 = *(a1 + 22);
  if (a3 + 2 >= a4)
  {
    sub_1003A5228();
    swift_allocError();
    *v25 = v11;

    goto LABEL_8;
  }

  v47 = *(a1 + 10);
  v48 = *(a1 + 4);
  v46 = *(a1 + 22);
  v45 = a2;
  swift_retain_n();
  sub_1004026F0(v8, v14 + 1, v11, a5, a6, a7, a8, v64);
  v23 = a8;
  v10 = v9;
  if (v9)
  {

    v18 = v46;
    v17 = v47;
    v16 = v48;
LABEL_8:
    swift_willThrow();

LABEL_9:
    *v8 = v15;
    v8[1] = v13;
    *(v8 + 4) = v16;
    *(v8 + 10) = v17;
    *(v8 + 22) = v18;
    return swift_willThrow();
  }

  v49 = a5;
  v50 = a6;
  v51 = a7;
  v66 = v23;
  v44 = v15;

  v61 = v64[2];
  v62 = v64[3];
  v63[0] = v65[0];
  *(v63 + 15) = *(v65 + 15);
  v59 = v64[0];
  v60 = v64[1];
  v12 = *v45;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_25;
  }

LABEL_12:
  v28 = *(v12 + 2);
  v27 = *(v12 + 3);
  if (v28 >= v27 >> 1)
  {
    v12 = sub_1004613E4((v27 > 1), v28 + 1, 1, v12);
  }

  *(v12 + 2) = v28 + 1;
  v29 = &v12[96 * v28];
  v30 = v60;
  *(v29 + 2) = v59;
  *(v29 + 3) = v30;
  v31 = v61;
  v32 = v62;
  v33 = v63[0];
  *(v29 + 111) = *(v63 + 15);
  *(v29 + 5) = v32;
  *(v29 + 6) = v33;
  *(v29 + 4) = v31;
  v34 = v14 + 2;
  v35 = *v8;
  v36 = v8[1];
  v37 = *(v8 + 4);
  v38 = *(v8 + 10);
  v39 = *(v8 + 22);
  if (v34 >= v11)
  {
    sub_1003A5228();
    swift_allocError();
    *v43 = v11;
  }

  else
  {
    while (1)
    {
      swift_retain_n();
      sub_1004026F0(v8, v34, v11, v49, v50, v51, v66, v57);
      if (v10)
      {
        break;
      }

      *&v56[15] = *(v58 + 15);
      v55 = v57[3];
      *v56 = v58[0];
      v53 = v57[1];
      v54 = v57[2];
      v52 = v57[0];
      v41 = *(v12 + 2);
      v40 = *(v12 + 3);
      if (v41 >= v40 >> 1)
      {
        v12 = sub_1004613E4((v40 > 1), v41 + 1, 1, v12);
      }

      *(v12 + 2) = v41 + 1;
      v42 = &v12[96 * v41];
      *(v42 + 2) = v52;
      *(v42 + 3) = v53;
      *(v42 + 111) = *&v56[15];
      *(v42 + 5) = v55;
      *(v42 + 6) = *v56;
      *(v42 + 4) = v54;
      v35 = *v8;
      v36 = v8[1];
      v37 = *(v8 + 4);
      v38 = *(v8 + 10);
      v39 = *(v8 + 22);
    }
  }

  swift_willThrow();

  *v8 = v35;
  v8[1] = v36;
  *(v8 + 4) = v37;
  *(v8 + 10) = v38;
  *(v8 + 22) = v39;
  swift_willThrow();
  swift_errorRetain();
  sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    *v45 = v12;

    v15 = v44;
    v17 = v47;
    v16 = v48;
    v18 = v46;
    goto LABEL_9;
  }

  *v45 = v12;
  return result;
}

uint64_t sub_10047199C(uint64_t *a1, char **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = a3 + 1;
  if (__OFADD__(a3, 1))
  {
    __break(1u);
    goto LABEL_29;
  }

  if (v14 >= a4)
  {
    sub_1003A5228();
    swift_allocError();
    *v21 = a4;
    return swift_willThrow();
  }

  v11 = a1;
  v66 = a5;
  v67 = a6;
  v68 = a7;
  v69 = a8;
  v12 = *a1;
  v15 = *(a1 + 3);
  v63 = *(a1 + 2);
  v16 = *(a1 + 4);
  v17 = *(a1 + 10);
  v18 = *(a1 + 22);
  v76 = a4;
  v62 = v18;
  v65 = a3 + 2;
  if (a3 + 2 >= a4)
  {
    sub_1003A5228();
    swift_allocError();
    *v22 = a4;

    goto LABEL_8;
  }

  sub_100469DF8(v11);
  if (v10)
  {
    *v11 = v12;
    *(v11 + 8) = v63;
    *(v11 + 12) = v15;
    *(v11 + 16) = v16;
    *(v11 + 20) = v17;
    *(v11 + 22) = v18;
LABEL_8:
    v23 = v69;
    swift_willThrow();

    goto LABEL_9;
  }

  v23 = v69;
LABEL_9:
  sub_1003F60D8(v11, v14, v76, v66, v67, v68, v23, v72);
  v8 = 0;
  v58 = v15;
  v13 = a2;
  v9 = *a2;
  v59 = v17;
  v60 = v16;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_29:
    v9 = sub_100460FE0(0, *(v9 + 2) + 1, 1, v9);
  }

  v25 = *(v9 + 2);
  v24 = *(v9 + 3);
  if (v25 >= v24 >> 1)
  {
    v9 = sub_100460FE0((v24 > 1), v25 + 1, 1, v9);
  }

  *(v9 + 2) = v25 + 1;
  v26 = &v9[184 * v25];
  v27 = v72[0];
  v28 = v72[1];
  v29 = v72[3];
  *(v26 + 4) = v72[2];
  *(v26 + 5) = v29;
  *(v26 + 2) = v27;
  *(v26 + 3) = v28;
  v30 = v72[4];
  v31 = v72[5];
  v32 = v72[7];
  *(v26 + 8) = v72[6];
  *(v26 + 9) = v32;
  *(v26 + 6) = v30;
  *(v26 + 7) = v31;
  v33 = v72[8];
  v34 = v72[9];
  v35 = v72[10];
  v26[208] = v73;
  *(v26 + 11) = v34;
  *(v26 + 12) = v35;
  *(v26 + 10) = v33;
  v36 = v76;
  if (v65 < v76)
  {
    v37 = v14 + 2;
    for (i = v14 + 2; ; v37 = i)
    {
      v38 = *v11;
      v39 = *(v11 + 8);
      v40 = *(v11 + 12);
      v41 = *(v11 + 16);
      v70 = *(v11 + 20);
      v71 = *(v11 + 22);
      if (v37 >= v36)
      {
        break;
      }

      sub_100469DF8(v11);
      if (v8)
      {
        *v11 = v38;
        *(v11 + 8) = v39;
        *(v11 + 12) = v40;
        *(v11 + 16) = v41;
        *(v11 + 20) = v70;
        *(v11 + 22) = v71;
LABEL_18:
        v43 = v68;
        swift_willThrow();

        goto LABEL_19;
      }

      v43 = v68;
LABEL_19:
      sub_1003F60D8(v11, v65, v76, v66, v67, v43, v69, v74);
      v8 = 0;

      v45 = *(v9 + 2);
      v44 = *(v9 + 3);
      if (v45 >= v44 >> 1)
      {
        v9 = sub_100460FE0((v44 > 1), v45 + 1, 1, v9);
      }

      *(v9 + 2) = v45 + 1;
      v46 = &v9[184 * v45];
      v47 = v74[0];
      v48 = v74[1];
      v49 = v74[3];
      *(v46 + 4) = v74[2];
      *(v46 + 5) = v49;
      *(v46 + 2) = v47;
      *(v46 + 3) = v48;
      v50 = v74[4];
      v51 = v74[5];
      v52 = v74[7];
      *(v46 + 8) = v74[6];
      *(v46 + 9) = v52;
      *(v46 + 6) = v50;
      *(v46 + 7) = v51;
      v53 = v74[8];
      v54 = v74[9];
      v55 = v74[10];
      v46[208] = v75;
      *(v46 + 11) = v54;
      *(v46 + 12) = v55;
      *(v46 + 10) = v53;
      v36 = v76;
    }

    sub_1003A5228();
    swift_allocError();
    *v42 = v36;

    goto LABEL_18;
  }

  sub_1003A5228();
  swift_allocError();
  *v56 = v36;
  swift_willThrow();
  swift_errorRetain();
  sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
  if (swift_dynamicCast())
  {

    *v13 = v9;
    return result;
  }

  *v13 = v9;

  *v11 = v12;
  *(v11 + 8) = v63;
  *(v11 + 12) = v58;
  *(v11 + 16) = v60;
  *(v11 + 20) = v59;
  *(v11 + 22) = v62;
  return swift_willThrow();
}

uint64_t *sub_100471E6C(uint64_t *result, char **a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3 + 1;
  if (__OFADD__(a3, 1))
  {
    __break(1u);
  }

  else
  {
    if (v6 >= a4)
    {
      sub_1003A5228();
      swift_allocError();
      *v27 = a4;
    }

    else
    {
      v9 = result;
      v10 = *result;
      v11 = result[1];
      v12 = *(result + 4);
      v13 = *(result + 10);
      v14 = a3 + 2;
      v15 = *(result + 22);

      if (v14 >= a4)
      {
        sub_1003A5228();
        v5 = swift_allocError();
        *v28 = a4;
      }

      else
      {
        v30 = v13;
        v31 = v12;
        v32 = v10;
        while (1)
        {
          v16 = *v9;
          v17 = *(v9 + 8);
          v18 = *(v9 + 16);
          v19 = *(v9 + 20);
          v20 = *(v9 + 22);
          if (v6 + 2 >= a4)
          {
            sub_1003A5228();
            v5 = swift_allocError();
            *v29 = a4;

            goto LABEL_16;
          }

          sub_100469DF8(v9);
          if (v5)
          {
            break;
          }

          sub_10042DEC4(v9, v6 + 1, a4, &v33);
          v5 = 0;

          v21 = *a2;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v21 = sub_1004618C0(0, *(v21 + 2) + 1, 1, v21);
          }

          v23 = *(v21 + 2);
          v22 = *(v21 + 3);
          if (v23 >= v22 >> 1)
          {
            v21 = sub_1004618C0((v22 > 1), v23 + 1, 1, v21);
          }

          *(v21 + 2) = v23 + 1;
          v24 = &v21[40 * v23];
          v25 = v33;
          v26 = *v34;
          *(v24 + 63) = *&v34[15];
          *(v24 + 2) = v25;
          *(v24 + 3) = v26;
          *a2 = v21;
        }

        *v9 = v16;
        *(v9 + 8) = v17;
        *(v9 + 16) = v18;
        *(v9 + 20) = v19;
        *(v9 + 22) = v20;
LABEL_16:
        swift_willThrow();

        *v9 = v16;
        *(v9 + 8) = v17;
        *(v9 + 16) = v18;
        *(v9 + 20) = v19;
        *(v9 + 22) = v20;
        v10 = v32;
        v13 = v30;
        v12 = v31;
      }

      swift_willThrow();
      v35 = v5;
      swift_errorRetain();
      sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
      if (swift_dynamicCast())
      {
      }

      *v9 = v10;
      *(v9 + 8) = v11;
      *(v9 + 16) = v12;
      *(v9 + 20) = v13;
      *(v9 + 22) = v15;
    }

    return swift_willThrow();
  }

  return result;
}

void sub_100472178(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v46 = a7;
  v47 = a8;
  v44 = a5;
  v45 = a6;
  v14 = sub_10000C9C0(&qword_1005DD360, &unk_10050A060);
  __chkstk_darwin(v14 - 8);
  v16 = &v39[-v15];
  v17 = type metadata accessor for SearchReturnData(0);
  v18 = *(v17 - 8);
  v54 = v17;
  v55 = v18;
  __chkstk_darwin(v17);
  v58 = &v39[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v20);
  v57 = &v39[-v21];
  if (__OFADD__(a3, 1))
  {
    __break(1u);
  }

  else
  {
    if (a3 + 1 < a4)
    {
      v22 = *a1;
      v23 = *(a1 + 8);
      v42 = *(a1 + 16);
      v56 = a3 + 2;
      v41 = *(a1 + 20);
      v24 = a3 + 3;
      v53 = (v55 + 56);
      v51 = (v55 + 48);
      v40 = *(a1 + 22);
      v43 = v22;

      v48 = a2;
      v49 = a4;
      v52 = a3 + 3;
      v50 = v16;
      while (1)
      {
        if (v56 >= a4)
        {
          sub_1003A5228();
          v9 = swift_allocError();
          *v31 = a4;
        }

        else
        {
          v25 = *a1;
          v26 = *(a1 + 8);
          v27 = *(a1 + 12);
          v28 = *(a1 + 16);
          v29 = *(a1 + 20);
          v30 = *(a1 + 22);
          if (v24 >= a4)
          {
            sub_1003A5228();
            v9 = swift_allocError();
            *v32 = a4;
          }

          else
          {

            sub_100469DF8(a1);
            if (!v9)
            {
              sub_10041C3D8(a1, v56, a4, v44, v45, v46, v47);
              v9 = 0;

              v16 = v50;
              (*v53)(v50, 0, 1, v54);
              a2 = v48;
              a4 = v49;
              goto LABEL_14;
            }

            *a1 = v25;
            *(a1 + 8) = v26;
            *(a1 + 12) = v27;
            *(a1 + 16) = v28;
            *(a1 + 20) = v29;
            *(a1 + 22) = v30;
          }

          swift_willThrow();

          *a1 = v25;
          *(a1 + 8) = v26;
          *(a1 + 12) = v27;
          *(a1 + 16) = v28;
          *(a1 + 20) = v29;
          *(a1 + 22) = v30;
          a2 = v48;
          a4 = v49;
          v16 = v50;
        }

        swift_willThrow();
        v59 = v9;
        swift_errorRetain();
        sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
        if (!swift_dynamicCast())
        {

          *a1 = v43;
          *(a1 + 8) = v23;
          *(a1 + 16) = v42;
          *(a1 + 20) = v41;
          *(a1 + 22) = v40;
          goto LABEL_22;
        }

        v33 = v54;
        (*v53)(v16, 1, 1, v54);

        if ((*v51)(v16, 1, v33) == 1)
        {
          sub_100025F40(v16, &qword_1005DD360, &unk_10050A060);

          return;
        }

        v9 = 0;
LABEL_14:
        v34 = v57;
        sub_100475480(v16, v57, type metadata accessor for SearchReturnData);
        sub_1004754E8(v34, v58, type metadata accessor for SearchReturnData);
        v35 = *a2;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v35 = sub_100461C3C(0, v35[2] + 1, 1, v35);
        }

        v37 = v35[2];
        v36 = v35[3];
        if (v37 >= v36 >> 1)
        {
          v35 = sub_100461C3C((v36 > 1), v37 + 1, 1, v35);
        }

        sub_100475550(v57, type metadata accessor for SearchReturnData);
        v35[2] = v37 + 1;
        sub_100475480(v58, v35 + ((*(v55 + 80) + 32) & ~*(v55 + 80)) + *(v55 + 72) * v37, type metadata accessor for SearchReturnData);
        *a2 = v35;
        v24 = v52;
      }
    }

    sub_1003A5228();
    swift_allocError();
    *v38 = a4;
LABEL_22:
    swift_willThrow();
  }
}

uint64_t sub_1004726D0(uint64_t *a1, char **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = a3 + 1;
  if (__OFADD__(a3, 1))
  {
    __break(1u);
    goto LABEL_27;
  }

  v8 = a4;
  if (v16 < a4)
  {
    v10 = a1;
    v48 = a2;
    v13 = *a1;
    v15 = a1[1];
    v49 = *(a1 + 10);
    v50 = *(a1 + 4);
    v19 = *(a1 + 22);

    sub_10042A98C(v10, v16, v8, a5, a6, a7, a8, v59);
    v22 = a7;
    v11 = v9;
    if (v9)
    {
LABEL_24:

      *v10 = v13;
      *(v10 + 8) = v15;
      *(v10 + 16) = v50;
      *(v10 + 20) = v49;
      *(v10 + 22) = v19;
      return swift_willThrow();
    }

    v51 = a5;
    v52 = a6;
    v53 = v22;
    v60 = a8;
    v12 = v48;
    v14 = *v48;
    v46 = v19;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v23 = v14;
LABEL_6:
      v24 = v8;
      v26 = *(v23 + 2);
      v25 = *(v23 + 3);
      if (v26 >= v25 >> 1)
      {
        v23 = sub_100461D70((v25 > 1), v26 + 1, 1, v23);
      }

      *(v23 + 2) = v26 + 1;
      v27 = &v23[64 * v26];
      v28 = v59[0];
      v29 = v59[1];
      v30 = v59[3];
      *(v27 + 4) = v59[2];
      *(v27 + 5) = v30;
      *(v27 + 2) = v28;
      *(v27 + 3) = v29;
      v47 = v23;
      if (v16 + 1 >= v24)
      {
        sub_1003A5228();
        swift_allocError();
        *v42 = v24;
      }

      else
      {
        v45 = v13;
        v31 = v16 + 2;
        v32 = *v10;
        v33 = *(v10 + 8);
        v34 = *(v10 + 16);
        v35 = *(v10 + 20);
        v36 = *(v10 + 22);
        if (v31 >= v24)
        {
LABEL_18:
          sub_1003A5228();
          swift_allocError();
          *v43 = v24;
        }

        else
        {
          v37 = v23;
          while (1)
          {
            swift_retain_n();
            sub_10042AC78(v10, v31, v24, v51, v52, v53, v60, v58);
            if (v11)
            {
              break;
            }

            v56 = v58[2];
            v57 = v58[3];
            v54 = v58[0];
            v55 = v58[1];
            v39 = *(v37 + 2);
            v38 = *(v37 + 3);
            if (v39 >= v38 >> 1)
            {
              v37 = sub_100461D70((v38 > 1), v39 + 1, 1, v37);
            }

            *(v37 + 2) = v39 + 1;
            v40 = &v37[64 * v39];
            *(v40 + 4) = v56;
            *(v40 + 5) = v57;
            *(v40 + 2) = v54;
            *(v40 + 3) = v55;
            v32 = *v10;
            v33 = *(v10 + 8);
            v34 = *(v10 + 16);
            v35 = *(v10 + 20);
            v36 = *(v10 + 22);
            if (v31 >= v24)
            {
              goto LABEL_18;
            }
          }

          v47 = v37;
        }

        swift_willThrow();

        *v10 = v32;
        *(v10 + 8) = v33;
        *(v10 + 16) = v34;
        *(v10 + 20) = v35;
        *(v10 + 22) = v36;
        v12 = v48;
        v13 = v45;
      }

      v19 = v46;
      swift_willThrow();
      swift_errorRetain();
      sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
      if (swift_dynamicCast())
      {

        *v12 = v47;
        return result;
      }

      *v12 = v47;

      goto LABEL_24;
    }

LABEL_27:
    v23 = sub_100461D70(0, *(v14 + 2) + 1, 1, v14);
    goto LABEL_6;
  }

  sub_1003A5228();
  swift_allocError();
  *v41 = v8;
  return swift_willThrow();
}

uint64_t sub_100472AC4(uint64_t *a1, char **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = a3 + 1;
  if (__OFADD__(a3, 1))
  {
    __break(1u);
LABEL_25:
    v52 = sub_100461254(0, *(v52 + 2) + 1, 1, v52);
    goto LABEL_12;
  }

  v11 = a4;
  if (v15 >= a4)
  {
    sub_1003A5228();
    swift_allocError();
    *v20 = v11;
    return swift_willThrow();
  }

  v8 = a1;
  v16 = *a1;
  v17 = *(a1 + 2);
  v18 = *(a1 + 3);
  v19 = *(a1 + 4);
  v12 = a3 + 2;
  v60 = *(a1 + 22);
  v61 = *(a1 + 10);
  v58 = v19;
  v59 = v18;
  if (a3 + 2 >= a4)
  {
    sub_1003A5228();
    swift_allocError();
    *v21 = v11;

    goto LABEL_8;
  }

  v55 = a5;
  v56 = a6;
  v54 = a7;
  v57 = a8;
  v51 = a2;

  sub_100469DF8(v8);
  if (v9)
  {
    *v8 = v16;
    *(v8 + 8) = v17;
    *(v8 + 12) = v18;
    *(v8 + 16) = v19;
    *(v8 + 20) = v61;
    *(v8 + 22) = v60;
LABEL_8:
    swift_willThrow();
LABEL_9:

    *v8 = v16;
    *(v8 + 8) = v17;
    *(v8 + 12) = v59;
    *(v8 + 16) = v58;
    *(v8 + 20) = v61;
    *(v8 + 22) = v60;
    return swift_willThrow();
  }

  v23 = sub_10041ED48(v8, v15, v11, v55, v56, v54, v57);
  v10 = 0;
  v14 = v24;
  v13 = v25;
  v48 = HIDWORD(v24);
  v49 = v23;
  v52 = *v51;
  v46 = v16;
  v45 = v17;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_25;
  }

LABEL_12:
  v26 = v52;
  v28 = *(v52 + 2);
  v27 = *(v52 + 3);
  if (v28 >= v27 >> 1)
  {
    v26 = sub_100461254((v27 > 1), v28 + 1, 1, v52);
  }

  *(v26 + 2) = v28 + 1;
  v53 = v26;
  v29 = &v26[24 * v28];
  *(v29 + 4) = v49;
  *(v29 + 10) = v14;
  *(v29 + 11) = v48;
  *(v29 + 12) = v13;
  *(v29 + 26) = WORD2(v13);
  v29[54] = BYTE6(v13);
  v30 = v15 + 2;
  v31 = *(v8 + 8);
  v32 = *(v8 + 16);
  v33 = *(v8 + 20);
  v50 = *(v8 + 22);
  v47 = *v8;
  if (v30 >= v11)
  {
    sub_1003A5228();
    swift_allocError();
    *v43 = v11;

    v16 = v46;
    v17 = v45;
    v44 = v50;
  }

  else
  {

    sub_100469DF8(v8);
    v16 = v46;
    v17 = v45;
    if (!v10)
    {
      while (1)
      {
        v34 = sub_10041ED48(v8, v12, v11, v55, v56, v54, v57);
        v36 = v35;
        v38 = v37;

        v39 = v53;
        v41 = *(v53 + 2);
        v40 = *(v53 + 3);
        if (v41 >= v40 >> 1)
        {
          v39 = sub_100461254((v40 > 1), v41 + 1, 1, v53);
        }

        *(v39 + 2) = v41 + 1;
        v53 = v39;
        v42 = &v39[24 * v41];
        *(v42 + 4) = v34;
        *(v42 + 5) = v36;
        *(v42 + 12) = v38;
        *(v42 + 26) = WORD2(v38);
        v42[54] = BYTE6(v38);

        sub_100469DF8(v8);
      }
    }

    *v8 = v47;
    *(v8 + 8) = v31;
    *(v8 + 16) = v32;
    *(v8 + 20) = v33;
    v44 = v50;
    *(v8 + 22) = v50;
  }

  swift_willThrow();
  *v51 = v53;

  *v8 = v47;
  *(v8 + 8) = v31;
  *(v8 + 16) = v32;
  *(v8 + 20) = v33;
  *(v8 + 22) = v44;
  swift_willThrow();
  swift_errorRetain();
  sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_9;
  }
}

uint64_t sub_100472F7C(uint64_t *a1, char **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = a3 + 1;
  if (__OFADD__(a3, 1))
  {
    __break(1u);
LABEL_26:
    v49 = sub_10046154C(0, *(v49 + 2) + 1, 1, v49);
    goto LABEL_12;
  }

  v13 = a4;
  if (v16 >= a4)
  {
    sub_1003A5228();
    swift_allocError();
    *v20 = v13;
    return swift_willThrow();
  }

  v9 = a1;
  v8 = *a1;
  v17 = *(a1 + 2);
  v15 = *(a1 + 4);
  v55 = *(a1 + 10);
  v56 = *(a1 + 3);
  v14 = a3 + 2;
  v12 = *(a1 + 22);
  if (a3 + 2 >= a4)
  {
    sub_1003A5228();
    swift_allocError();
    *v21 = v13;

    v19 = v55;
    v18 = v56;
    goto LABEL_8;
  }

  v52 = a5;
  v53 = a6;
  v51 = a7;
  v54 = a8;
  v48 = a2;

  sub_100469DF8(v9);
  if (v10)
  {
    *v9 = v8;
    v19 = v55;
    v18 = v56;
    *(v9 + 8) = v17;
    *(v9 + 12) = v56;
    *(v9 + 16) = v15;
    *(v9 + 20) = v55;
    *(v9 + 22) = v12;
LABEL_8:
    swift_willThrow();
LABEL_9:

    *v9 = v8;
    *(v9 + 8) = v17;
    *(v9 + 12) = v18;
    *(v9 + 16) = v15;
    *(v9 + 20) = v19;
    *(v9 + 22) = v12;
    return swift_willThrow();
  }

  sub_1004213C4(v9, v16, v13, v52, v53, v51, v54, &v57);
  v11 = 0;
  v49 = *v48;
  v46 = v17;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_26;
  }

LABEL_12:
  v23 = v49;
  v25 = *(v49 + 2);
  v24 = *(v49 + 3);
  v26 = v25 + 1;
  if (v25 >= v24 >> 1)
  {
    v43 = sub_10046154C((v24 > 1), v25 + 1, 1, v49);
    v26 = v25 + 1;
    v23 = v43;
  }

  *(v23 + 2) = v26;
  v50 = v23;
  v27 = &v23[48 * v25];
  v28 = v57;
  v29 = v58[0];
  *(v27 + 63) = *(v58 + 15);
  *(v27 + 2) = v28;
  *(v27 + 3) = v29;
  v30 = v16 + 2;
  v31 = *v9;
  v32 = *(v9 + 8);
  v44 = *(v9 + 20);
  v45 = *(v9 + 16);
  v47 = *(v9 + 22);
  if (v30 >= v13)
  {
    sub_1003A5228();
    swift_allocError();
    *v40 = v13;

    v41 = v45;
    v17 = v46;
    v42 = v44;
  }

  else
  {

    for (i = v9; ; i = v9)
    {
      sub_100469DF8(i);
      v17 = v46;
      if (v11)
      {
        break;
      }

      sub_1004213C4(v9, v14, v13, v52, v53, v51, v54, &v59);
      v11 = 0;

      v34 = v50;
      v36 = *(v50 + 2);
      v35 = *(v50 + 3);
      if (v36 >= v35 >> 1)
      {
        v34 = sub_10046154C((v35 > 1), v36 + 1, 1, v50);
      }

      *(v34 + 2) = v36 + 1;
      v50 = v34;
      v37 = &v34[48 * v36];
      v38 = v59;
      v39 = v60[0];
      *(v37 + 63) = *(v60 + 15);
      *(v37 + 2) = v38;
      *(v37 + 3) = v39;
      v31 = *v9;
      v32 = *(v9 + 8);
      v44 = *(v9 + 20);
      v45 = *(v9 + 16);
      v47 = *(v9 + 22);
    }

    *v9 = v31;
    *(v9 + 8) = v32;
    v42 = v44;
    v41 = v45;
    *(v9 + 16) = v45;
    *(v9 + 20) = v44;
    *(v9 + 22) = v47;
  }

  swift_willThrow();

  *v9 = v31;
  *(v9 + 8) = v32;
  *(v9 + 16) = v41;
  *(v9 + 20) = v42;
  *(v9 + 22) = v47;
  swift_willThrow();
  swift_errorRetain();
  sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    *v48 = v50;

    v19 = v55;
    v18 = v56;
    goto LABEL_9;
  }

  *v48 = v50;
  return result;
}

uint64_t sub_100473404(uint64_t *a1, char **a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t a7, uint64_t a8, void (*a9)(unint64_t *__return_ptr, uint64_t *, uint64_t, uint64_t, uint64_t (*)(void), uint64_t, uint64_t, uint64_t))
{
  v16 = a3 + 1;
  if (__OFADD__(a3, 1))
  {
    __break(1u);
    goto LABEL_27;
  }

  v13 = a4;
  if (v16 < a4)
  {
    v56 = a2;
    v19 = *a1;
    v15 = a1[1];
    v58 = *(a1 + 10);
    v59 = *(a1 + 4);
    v57 = *(a1 + 22);

    v60 = a1;
    a9(&v61, a1, v16, v13, a5, a6, a7, a8);
    v10 = v9;
    if (v9)
    {
      v24 = v58;
      v23 = v59;
LABEL_24:

      *v60 = v19;
      v60[1] = v15;
      *(v60 + 4) = v23;
      *(v60 + 10) = v24;
      *(v60 + 22) = v57;
      return swift_willThrow();
    }

    v54 = a5;
    v50 = v19;
    v14 = v62;
    v55 = v61;
    v12 = v63;
    v11 = *v56;
    v53 = v64;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v26 = v13;
      v27 = v11;
LABEL_8:
      v29 = *(v27 + 2);
      v28 = *(v27 + 3);
      if (v29 >= v28 >> 1)
      {
        v27 = sub_100461148((v28 > 1), v29 + 1, 1, v27);
      }

      *(v27 + 2) = v29 + 1;
      v30 = &v27[32 * v29];
      *(v30 + 4) = v55;
      *(v30 + 5) = v14;
      *(v30 + 6) = v12;
      v30[56] = v53;
      if (v16 + 1 >= v26)
      {
        *v56 = v27;
        sub_1003A5228();
        v10 = swift_allocError();
        *v46 = v26;
      }

      else
      {
        v31 = *v60;
        v32 = v60[1];
        v33 = *(v60 + 4);
        v34 = *(v60 + 10);
        v35 = *(v60 + 22);
        v49 = v27;
        if (v16 + 2 >= v26)
        {
LABEL_19:
          sub_1003A5228();
          v10 = swift_allocError();
          *v47 = v26;

          v36 = v49;
        }

        else
        {
          v52 = v26;
          v51 = v16 + 2;
          while (1)
          {
            v36 = v27;

            sub_100469DF8(v60);
            if (v10)
            {
              break;
            }

            sub_100466470(v60, &v61);
            v55 = v55 & 0xFF00000000000000 | v63 | (WORD2(v63) << 32) | (BYTE6(v63) << 48);
            sub_10046C184(v61, v62, v55, 0xD000000000000020, 0x80000001004B03C0, 115);
            v10 = 0;
            v37 = v54();
            v39 = v38;

            v40 = sub_1003BE578(61, 0xE100000000000000, v37, v39);
            v42 = v41;

            v27 = v36;
            v43 = *(v36 + 2);
            v44 = *(v27 + 3);
            if (v43 >= v44 >> 1)
            {
              v27 = sub_100461148((v44 > 1), v43 + 1, 1, v27);
            }

            *(v27 + 2) = v43 + 1;
            v45 = &v27[32 * v43];
            *(v45 + 4) = v37;
            *(v45 + 5) = v39;
            *(v45 + 6) = v40;
            v45[56] = v42 & 1;
            v31 = *v60;
            v32 = v60[1];
            v33 = *(v60 + 4);
            v34 = *(v60 + 10);
            v35 = *(v60 + 22);
            v26 = v52;
            if (v51 >= v52)
            {
              goto LABEL_19;
            }
          }
        }

        swift_willThrow();

        *v56 = v36;
        *v60 = v31;
        v60[1] = v32;
        *(v60 + 4) = v33;
        *(v60 + 10) = v34;
        *(v60 + 22) = v35;
      }

      swift_willThrow();
      v65 = v10;
      swift_errorRetain();
      sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
      v19 = v50;
      v24 = v58;
      v23 = v59;
      if (swift_dynamicCast())
      {
      }

      goto LABEL_24;
    }

LABEL_27:
    v27 = sub_100461148(0, *(v11 + 2) + 1, 1, v11);
    v26 = v13;
    goto LABEL_8;
  }

  sub_1003A5228();
  swift_allocError();
  *v25 = v13;
  return swift_willThrow();
}

uint64_t sub_1004738C0(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v48 = a1;
  v10 = a3 + 1;
  if (__OFADD__(a3, 1))
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  if (v10 < a4)
  {
    v41 = a2;
    v12 = a1;
    v13 = *a1;
    v9 = *(a1 + 8);
    v44 = *(a1 + 16);
    v42 = *(a1 + 20);
    v14 = *(a1 + 22);

    v15 = v44;
    v16 = v42;
    v17 = sub_100424288(v48, v10, a4);
    v8 = v6;
    if (v6)
    {
LABEL_53:

      *v12 = v13;
      *(v12 + 8) = v9;
      *(v12 + 16) = v15;
      *(v12 + 20) = v16;
      *(v12 + 22) = v14;
      return swift_willThrow();
    }

    v45 = v17;
    v47 = a4;
    v39 = v14;
    v7 = *v41;
    v40 = v13;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_5:
      v12 = v48;
      v19 = v7[2];
      v18 = v7[3];
      if (v19 >= v18 >> 1)
      {
        v7 = sub_100461AE4((v18 > 1), v19 + 1, 1, v7);
      }

      v7[2] = v19 + 1;
      v7[v19 + 4] = v45;
      v20 = v47;
      if (v10 + 1 < v47)
      {
        v46 = v10 + 2;
        v43 = v10 + 3;
        while (1)
        {
          v21 = *v12;
          v22 = *(v12 + 8);
          v10 = *(v12 + 12);
          LODWORD(v45) = *(v12 + 16);
          v23 = *(v12 + 20);
          v48 = *(v12 + 22);
          if (v46 < v20)
          {
            break;
          }

          sub_1003A5228();
          v8 = swift_allocError();
          *v25 = v20;

LABEL_24:
          swift_willThrow();
          swift_errorRetain();
          sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
          if (swift_dynamicCast())
          {
          }

          else
          {

            swift_errorRetain();
            if ((swift_dynamicCast() & 1) == 0)
            {

              goto LABEL_49;
            }

            v8 = v49;
          }

          if (v46 >= v47)
          {
            sub_1003A5228();
            swift_allocError();
            *v36 = v47;
            goto LABEL_48;
          }

          if (v10 == v22)
          {
            sub_1003A5324();
            swift_allocError();
            LODWORD(v10) = v22;
            goto LABEL_47;
          }

          swift_beginAccess();
          if (v22 == -1)
          {
            __break(1u);
            goto LABEL_56;
          }

          v28 = *(*(v21 + 24) + (v48 | (v23 << 8)) + v22);
          *(v12 + 8) = v22 + 1;
          if ((v28 - 47) > 0x11 || ((1 << (v28 - 47)) & 0x20801) == 0)
          {
            sub_1004A6724(20);

            v50._countAndFlagsBits = sub_1004A6CE4();
            sub_1004A5994(v50);

            sub_1003A527C();
            swift_allocError();
            *v37 = 0xD000000000000012;
            v37[1] = 0x80000001004B0D10;
            v37[2] = 0xD000000000000020;
            v37[3] = 0x80000001004B03C0;
            v37[4] = 1312;
LABEL_47:
            swift_willThrow();
LABEL_48:
            swift_willThrow();
LABEL_49:

            *v41 = v7;
            *v12 = v21;
            *(v12 + 8) = v22;
            *(v12 + 12) = v10;
            *(v12 + 16) = v45;
            *(v12 + 20) = v23;
            *(v12 + 22) = v48;
            goto LABEL_50;
          }

          sub_10000C9C0(&qword_1005D65C0, &unk_1004DD1B0);
          v33 = swift_allocObject();
          *(v33 + 16) = xmmword_1004CEAA0;
          *(v33 + 32) = v28;

          v8 = 0;
LABEL_36:

          v31 = v7[2];
          v30 = v7[3];
          if (v31 >= v30 >> 1)
          {
            v7 = sub_100461AE4((v30 > 1), v31 + 1, 1, v7);
          }

          v7[2] = v31 + 1;
          v7[v31 + 4] = v33;
          v20 = v47;
        }

        if (v43 >= v20)
        {
          sub_1003A5228();
          v8 = swift_allocError();
          *v26 = v20;
          swift_retain_n();
          swift_retain_n();
        }

        else
        {
          swift_retain_n();
          swift_retain_n();
          sub_10042F624(v12, v43, v20);
          if (!v8)
          {
            v33 = v24;

            goto LABEL_40;
          }

          *v12 = v21;
          *(v12 + 8) = v22;
          *(v12 + 12) = v10;
          *(v12 + 16) = v45;
          *(v12 + 20) = v23;
          *(v12 + 22) = v48;
        }

        swift_willThrow();
        swift_errorRetain();
        sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
        if (swift_dynamicCast())
        {
        }

        else
        {

          swift_errorRetain();
          if ((swift_dynamicCast() & 1) == 0)
          {

LABEL_23:

            *v12 = v21;
            *(v12 + 8) = v22;
            *(v12 + 12) = v10;
            *(v12 + 16) = v45;
            *(v12 + 20) = v23;
            *(v12 + 22) = v48;
            goto LABEL_24;
          }
        }

        if (v43 < v47)
        {
          sub_1004293F0(v12);
          v8 = 0;
          v33 = v32;
LABEL_40:

          goto LABEL_36;
        }

        sub_1003A5228();
        v8 = swift_allocError();
        *v27 = v47;
        swift_willThrow();
        goto LABEL_23;
      }

      *v41 = v7;
      sub_1003A5228();
      swift_allocError();
      *v35 = v47;
LABEL_50:
      v13 = v40;
      v15 = v44;
      swift_willThrow();
      swift_errorRetain();
      sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
      if (swift_dynamicCast())
      {
      }

      v16 = v42;
      v14 = v39;
      goto LABEL_53;
    }

LABEL_57:
    v7 = sub_100461AE4(0, v7[2] + 1, 1, v7);
    goto LABEL_5;
  }

  sub_1003A5228();
  swift_allocError();
  *v34 = a4;
  return swift_willThrow();
}

uint64_t sub_100474120(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v11 = a3 + 1;
  if (__OFADD__(a3, 1))
  {
    __break(1u);
LABEL_42:
    __break(1u);
  }

  else
  {
    if (v11 >= a4)
    {
      sub_1003A5228();
      swift_allocError();
      *v31 = a4;
      return swift_willThrow();
    }

    v41 = a2;
    v12 = a1;
    v13 = *a1;
    v10 = a1[1];
    v42 = *(a1 + 4);
    v14 = *(a1 + 10);
    v15 = *(a1 + 22);

    v16 = v42;
    v17 = sub_100424018(v12, v11, a4);
    v9 = v5;
    if (v5)
    {
      goto LABEL_39;
    }

    v6 = v17;
    v39 = v13;
    v40 = v12;
    v7 = v11;
    v37 = v15;
    v4 = v41;
    v8 = *v41;
    v38 = v14;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_5;
    }
  }

  v8 = sub_100461AE4(0, v8[2] + 1, 1, v8);
LABEL_5:
  v19 = v8[2];
  v18 = v8[3];
  if (v19 >= v18 >> 1)
  {
    v8 = sub_100461AE4((v18 > 1), v19 + 1, 1, v8);
  }

  v8[2] = v19 + 1;
  v8[v19 + 4] = v6;
  if (v7 + 1 >= a4)
  {
    *v4 = v8;
    sub_1003A5228();
    swift_allocError();
    *v32 = a4;
    v33 = v42;
    v14 = v38;
    v13 = v39;
    goto LABEL_36;
  }

  v20 = v7 + 2;
  v45 = v7 + 2;
  v4 = v40;
  while (1)
  {
    v21 = *v40;
    v7 = *(v40 + 8);
    v46 = *(v40 + 12);
    v44 = *(v40 + 16);
    v22 = *(v40 + 20);
    v23 = *(v40 + 22);
    if (v20 >= a4)
    {
      sub_1003A5228();
      v9 = swift_allocError();
      *v26 = a4;
    }

    else
    {
      v43 = v8;
      v24 = *(v40 + 22);
      swift_retain_n();

      sub_10042F624(v40, v20, a4);
      if (!v9)
      {
        v28 = v25;

        v8 = v43;
        goto LABEL_24;
      }

      *v40 = v21;
      *(v40 + 8) = v7;
      *(v40 + 12) = v46;
      *(v40 + 16) = v44;
      *(v40 + 20) = v22;
      v23 = v24;
      *(v40 + 22) = v24;
      v8 = v43;
    }

    swift_willThrow();
    swift_errorRetain();
    sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
    if (swift_dynamicCast())
    {
    }

    else
    {

      swift_errorRetain();
      if ((swift_dynamicCast() & 1) == 0)
      {

        goto LABEL_32;
      }

      v9 = v48;
    }

    if (v45 >= a4)
    {
      sub_1003A5228();
      swift_allocError();
      *v34 = a4;
      swift_willThrow();
LABEL_32:

      v33 = v42;
      goto LABEL_35;
    }

    if (v46 == v7)
    {
      break;
    }

    swift_beginAccess();
    if (v7 == -1)
    {
      goto LABEL_42;
    }

    v27 = *(*(v21 + 24) + (v23 | (v22 << 8)) + v7);
    *(v40 + 8) = v7 + 1;
    if (v27 != 38 && v27 != 61)
    {
      sub_1004A6724(20);

      v49._countAndFlagsBits = sub_1004A6CE4();
      sub_1004A5994(v49);

      sub_1003A527C();
      swift_allocError();
      *v35 = 0xD000000000000012;
      v35[1] = 0x80000001004B0CF0;
      v4 = v40;
      v35[2] = 0xD000000000000020;
      v35[3] = 0x80000001004B03C0;
      v35[4] = 1293;
      goto LABEL_34;
    }

    sub_10000C9C0(&qword_1005D65C0, &unk_1004DD1B0);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_1004CEAA0;
    *(v28 + 32) = v27;

    v9 = 0;
LABEL_24:

    v30 = v8[2];
    v29 = v8[3];
    if (v30 >= v29 >> 1)
    {
      v8 = sub_100461AE4((v29 > 1), v30 + 1, 1, v8);
    }

    v8[2] = v30 + 1;
    v8[v30 + 4] = v28;
    v20 = v45;
  }

  sub_1003A5324();
  swift_allocError();
  v46 = v7;
LABEL_34:
  v33 = v42;
  swift_willThrow();
  swift_willThrow();

LABEL_35:
  *v41 = v8;
  *v4 = v21;
  *(v4 + 8) = v7;
  *(v4 + 12) = v46;
  *(v4 + 16) = v44;
  *(v4 + 20) = v22;
  *(v4 + 22) = v23;
  v13 = v39;
  v14 = v38;
LABEL_36:
  swift_willThrow();
  swift_errorRetain();
  sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
  if (swift_dynamicCast())
  {
  }

  v15 = v37;
  v16 = v33;
  v12 = v40;
LABEL_39:

  *v12 = v13;
  *(v12 + 8) = v10;
  *(v12 + 16) = v16;
  *(v12 + 20) = v14;
  *(v12 + 22) = v15;
  return swift_willThrow();
}

uint64_t sub_100474808(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = a3 + 1;
  if (__OFADD__(a3, 1))
  {
    __break(1u);
  }

  else
  {
    if (v12 >= a4)
    {
      sub_1003A5228();
      swift_allocError();
      *v34 = a4;
      return swift_willThrow();
    }

    v6 = a1;
    v41 = a2;
    v14 = *a1;
    v11 = a1[1];
    v42 = *(a1 + 4);
    v15 = *(a1 + 10);
    v40 = *(a1 + 22);

    v47 = v12;
    v16 = v42;
    v17 = sub_100424288(v6, v12, a4);
    v9 = v7;
    if (v7)
    {
      goto LABEL_43;
    }

    v12 = v17;
    v10 = v47;
    v49 = a4;
    v38 = v15;
    v8 = *v41;
    v39 = v14;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_5;
    }
  }

  v8 = sub_100461AE4(0, v8[2] + 1, 1, v8);
LABEL_5:
  v19 = v8[2];
  v18 = v8[3];
  if (v19 >= v18 >> 1)
  {
    v8 = sub_100461AE4((v18 > 1), v19 + 1, 1, v8);
  }

  v8[2] = v19 + 1;
  v8[v19 + 4] = v12;
  v20 = v49;
  if (v10 + 1 >= v49)
  {
    *v41 = v8;
    sub_1003A5228();
    swift_allocError();
    *v35 = v49;
    goto LABEL_40;
  }

  v21 = v10 + 2;
  v22 = v10 + 3;
  for (i = v10 + 3; ; v22 = i)
  {
    v24 = *v6;
    v46 = *(v6 + 12);
    v48 = *(v6 + 8);
    v44 = *(v6 + 20);
    v45 = *(v6 + 16);
    v43 = *(v6 + 22);
    if (v21 >= v20)
    {
      sub_1003A5228();
      swift_allocError();
      *v26 = v20;

      goto LABEL_24;
    }

    if (v22 >= v20)
    {
      sub_1003A5228();
      swift_allocError();
      *v27 = v20;
      swift_retain_n();
      swift_retain_n();
    }

    else
    {
      swift_retain_n();
      swift_retain_n();
      sub_10042F624(v6, v22, v20);
      if (!v9)
      {
        v33 = v25;

        goto LABEL_34;
      }

      *v6 = v24;
      *(v6 + 8) = v48;
      *(v6 + 12) = v46;
      *(v6 + 16) = v45;
      *(v6 + 20) = v44;
      *(v6 + 22) = v43;
    }

    swift_willThrow();
    swift_errorRetain();
    sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
    if (swift_dynamicCast())
    {

LABEL_19:

      if (i < v49)
      {
        sub_100430538(v6);
        v9 = 0;
        v33 = v32;
LABEL_34:

        goto LABEL_30;
      }

      sub_1003A5228();
      swift_allocError();
      *v28 = v49;
      swift_willThrow();
      goto LABEL_23;
    }

    swift_errorRetain();
    if (swift_dynamicCast())
    {

      goto LABEL_19;
    }

LABEL_23:

    *v6 = v24;
    *(v6 + 8) = v48;
    *(v6 + 12) = v46;
    *(v6 + 16) = v45;
    *(v6 + 20) = v44;
    *(v6 + 22) = v43;
LABEL_24:
    swift_willThrow();
    swift_errorRetain();
    sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
    if (!swift_dynamicCast())
    {
      break;
    }

LABEL_28:

    if (v21 >= v49)
    {
      sub_1003A5228();
      swift_allocError();
      *v36 = v49;
      swift_willThrow();
      goto LABEL_39;
    }

    sub_1004306E4(v6);
    v9 = 0;
    v33 = v29;
LABEL_30:

    v31 = v8[2];
    v30 = v8[3];
    if (v31 >= v30 >> 1)
    {
      v8 = sub_100461AE4((v30 > 1), v31 + 1, 1, v8);
    }

    v8[2] = v31 + 1;
    v8[v31 + 4] = v33;
    v20 = v49;
  }

  swift_errorRetain();
  if (swift_dynamicCast())
  {

    goto LABEL_28;
  }

LABEL_39:

  *v41 = v8;
  *v6 = v24;
  *(v6 + 8) = v48;
  *(v6 + 12) = v46;
  *(v6 + 16) = v45;
  *(v6 + 20) = v44;
  *(v6 + 22) = v43;
LABEL_40:
  v14 = v39;
  swift_willThrow();
  swift_errorRetain();
  sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
  if (swift_dynamicCast())
  {
  }

  v15 = v38;
  v16 = v42;
LABEL_43:

  *v6 = v14;
  *(v6 + 8) = v11;
  *(v6 + 16) = v16;
  *(v6 + 20) = v15;
  *(v6 + 22) = v40;
  return swift_willThrow();
}

uint64_t sub_100474EDC(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v10 = a3 + 1;
  if (__OFADD__(a3, 1))
  {
    __break(1u);
  }

  else
  {
    if (v10 >= a4)
    {
      sub_1003A5228();
      swift_allocError();
      *v27 = a4;
      return swift_willThrow();
    }

    v5 = a1;
    v35 = a2;
    v12 = *a1;
    v9 = a1[1];
    v13 = *(a1 + 4);
    v14 = *(a1 + 10);
    v36 = *(a1 + 22);

    v34 = a4;
    v15 = v13;
    v16 = sub_100424018(v5, v10, a4);
    v7 = v6;
    if (v6)
    {
      goto LABEL_31;
    }

    v4 = v16;
    v31 = v14;
    v8 = *v35;
    v33 = v12;
    v32 = v13;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_5;
    }
  }

  v8 = sub_100461AE4(0, v8[2] + 1, 1, v8);
LABEL_5:
  v18 = v8[2];
  v17 = v8[3];
  if (v18 >= v17 >> 1)
  {
    v8 = sub_100461AE4((v17 > 1), v18 + 1, 1, v8);
  }

  v8[2] = v18 + 1;
  v8[v18 + 4] = v4;
  if (v10 + 1 >= v34)
  {
    *v35 = v8;
    sub_1003A5228();
    swift_allocError();
    *v28 = v34;
    goto LABEL_28;
  }

  v19 = v10 + 2;
  while (1)
  {
    v20 = *v5;
    v40 = *(v5 + 12);
    v41 = *(v5 + 8);
    v38 = *(v5 + 20);
    v39 = *(v5 + 16);
    v37 = *(v5 + 22);
    if (v19 >= v34)
    {
      sub_1003A5228();
      swift_allocError();
      *v22 = v34;
    }

    else
    {
      swift_retain_n();

      sub_10042F624(v5, v19, v34);
      if (!v7)
      {
        v24 = v21;

        goto LABEL_19;
      }

      *v5 = v20;
      *(v5 + 8) = v41;
      *(v5 + 12) = v40;
      *(v5 + 16) = v39;
      *(v5 + 20) = v38;
      *(v5 + 22) = v37;
    }

    swift_willThrow();
    swift_errorRetain();
    sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
    if (!swift_dynamicCast())
    {
      break;
    }

LABEL_17:

    if (v19 >= v34)
    {
      sub_1003A5228();
      swift_allocError();
      *v29 = v34;
      swift_willThrow();
      goto LABEL_27;
    }

    sub_100430538(v5);
    v7 = 0;
    v24 = v23;
LABEL_19:

    v26 = v8[2];
    v25 = v8[3];
    if (v26 >= v25 >> 1)
    {
      v8 = sub_100461AE4((v25 > 1), v26 + 1, 1, v8);
    }

    v8[2] = v26 + 1;
    v8[v26 + 4] = v24;
  }

  swift_errorRetain();
  if (swift_dynamicCast())
  {

    goto LABEL_17;
  }

LABEL_27:

  *v35 = v8;
  *v5 = v20;
  *(v5 + 8) = v41;
  *(v5 + 12) = v40;
  *(v5 + 16) = v39;
  *(v5 + 20) = v38;
  *(v5 + 22) = v37;
LABEL_28:
  v12 = v33;
  swift_willThrow();
  swift_errorRetain();
  sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
  if (swift_dynamicCast())
  {
  }

  v14 = v31;
  v15 = v32;
LABEL_31:

  *v5 = v12;
  *(v5 + 8) = v9;
  *(v5 + 16) = v15;
  *(v5 + 20) = v14;
  *(v5 + 22) = v36;
  return swift_willThrow();
}

uint64_t sub_1004753EC()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100475480(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1004754E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100475550(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1004755C4()
{
  result = qword_1005DD378;
  if (!qword_1005DD378)
  {
    result = swift_getWitnessTable(byte_10050A0C4, &type metadata for ParseBuffer, v0, v1);
    atomic_store(result, &qword_1005DD378);
  }

  return result;
}

uint64_t sub_100475674(unint64_t a1, char a2)
{
  LODWORD(v3) = a1;
  v4 = HIDWORD(a1);
  if (a2)
  {
    v5 = *(v2 + 20);
    result = sub_1002F178C(0x2DuLL, 0xE100000000000000, v2 + 8, v5);
    if (v7)
    {
      v8._countAndFlagsBits = 45;
      v8._object = 0xE100000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v8, v5);
    }

    v9 = result;
    v10 = *(v2 + 20);
    v11 = __CFADD__(v10, result);
    v12 = v10 + result;
    if (v11)
    {
      __break(1u);
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    *(v2 + 20) = v12;
    result = sub_10049813C(v3);
    v13 = v9 + result;
    if (__OFADD__(v9, result))
    {
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    v3 = *(v2 + 20);
    result = sub_1002F178C(0x2D3AuLL, 0xE200000000000000, v2 + 8, v3);
    if (v14)
    {
      v15._countAndFlagsBits = 11578;
      v15._object = 0xE200000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v15, v3);
    }

    v16 = *(v2 + 20);
    v11 = __CFADD__(v16, result);
    v17 = v16 + result;
    if (v11)
    {
      goto LABEL_23;
    }

    *(v2 + 20) = v17;
    v18 = v13 + result;
    if (__OFADD__(v13, result))
    {
LABEL_25:
      __break(1u);
      return result;
    }

    v19 = sub_10049813C(v4);
    v20 = __OFADD__(v18, v19);
    result = v18 + v19;
    if (!v20)
    {
      return result;
    }

    __break(1u);
  }

  v21 = sub_10049813C(v3);
  v22 = *(v2 + 20);
  result = sub_1002F178C(0x3AuLL, 0xE100000000000000, v2 + 8, v22);
  if (v23)
  {
    v24._countAndFlagsBits = 58;
    v24._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v24, v22);
  }

  v25 = *(v2 + 20);
  v11 = __CFADD__(v25, result);
  v26 = v25 + result;
  if (v11)
  {
    goto LABEL_20;
  }

  *(v2 + 20) = v26;
  v27 = v21 + result;
  if (__OFADD__(v21, result))
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v28 = sub_10049813C(v4);
  v20 = __OFADD__(v27, v28);
  result = v27 + v28;
  if (v20)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  return result;
}

void PartialRange.hash(into:)(uint64_t a1, unint64_t a2, char a3)
{
  v3 = a2;
  v4 = HIDWORD(a2);
  sub_1004A6EB4(a3 & 1);
  sub_1004A6EE4(v3);
  sub_1004A6EE4(v4);
}

Swift::Int PartialRange.hashValue.getter(unint64_t a1, char a2)
{
  sub_1004A6E94();
  sub_1004A6EB4(a2 & 1);
  sub_1004A6EE4(a1);
  sub_1004A6EE4(HIDWORD(a1));
  return sub_1004A6F14();
}

Swift::Int sub_1004758C0()
{
  v2 = *v0;
  v1 = *(v0 + 4);
  v3 = *(v0 + 8);
  sub_1004A6E94();
  sub_1004A6EB4(v3);
  sub_1004A6EE4(v2);
  sub_1004A6EE4(v1);
  return sub_1004A6F14();
}

void sub_10047592C()
{
  v2 = *v0;
  v1 = *(v0 + 4);
  sub_1004A6EB4(*(v0 + 8));
  sub_1004A6EE4(v2);
  sub_1004A6EE4(v1);
}

Swift::Int sub_100475974(uint64_t a1)
{
  v3 = *v1;
  v2 = *(v1 + 4);
  v4 = *(v1 + 8);
  sub_1004A6E94();
  sub_1004A6EB4(v4);
  sub_1004A6EE4(v3);
  sub_1004A6EE4(v2);
  return sub_1004A6F14();
}

unint64_t sub_100475A10()
{
  result = qword_1005DD380;
  if (!qword_1005DD380)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PartialRange, &type metadata for PartialRange, v0, v1);
    atomic_store(result, &qword_1005DD380);
  }

  return result;
}

uint64_t sub_100475A74(uint64_t a1)
{
  v2 = v1;
  v32 = a1;
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = *(v1 + 20);
    result = sub_1002F178C(0, 0xE000000000000000, v1 + 8, v5);
    if (v7)
    {
      v8._countAndFlagsBits = 0;
      v8._object = 0xE000000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v8, v5);
    }

    v9 = result;
    v10 = *(v1 + 20);
    v11 = __CFADD__(v10, result);
    v12 = v10 + result;
    if (v11)
    {
      goto LABEL_29;
    }

    *(v1 + 20) = v12;
  }

  else
  {
    v9 = 0;
    v12 = *(v1 + 20);
  }

  v13 = v12;
  result = sub_1002F178C(0x28uLL, 0xE100000000000000, v1 + 8, v12);
  if (v14)
  {
    v15._countAndFlagsBits = 40;
    v15._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v15, v13);
  }

  v16 = *(v1 + 20);
  v11 = __CFADD__(v16, result);
  v17 = v16 + result;
  if (v11)
  {
    goto LABEL_24;
  }

  *(v1 + 20) = v17;
  v18 = v9 + result;
  if (__OFADD__(v9, result))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  __chkstk_darwin(result);
  v31[2] = sub_10044CF7C;
  v31[3] = 0;
  v31[4] = v2;
  v31[5] = &v32;
  v31[6] = 32;
  v31[7] = 0xE100000000000000;
  result = sub_1004520C0(0, sub_10044D69C, v31, a1);
  v19 = v18 + result;
  if (__OFADD__(v18, result))
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v20 = *(v2 + 20);
  result = sub_1002F178C(0x29uLL, 0xE100000000000000, v2 + 8, v20);
  if (v21)
  {
    v22._countAndFlagsBits = 41;
    v22._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v22, v20);
  }

  v23 = *(v2 + 20);
  v24 = (v23 + result);
  if (__CFADD__(v23, result))
  {
    goto LABEL_27;
  }

  *(v2 + 20) = v24;
  v25 = __OFADD__(v19, result);
  v26 = v19 + result;
  if (v25)
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    return result;
  }

  if (!v4)
  {
    return v26;
  }

  result = sub_1002F178C(0, 0xE000000000000000, v2 + 8, v24);
  if (v27)
  {
    v28._countAndFlagsBits = 0;
    v28._object = 0xE000000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v28, v24);
  }

  v29 = *(v2 + 20);
  v11 = __CFADD__(v29, result);
  v30 = v29 + result;
  if (v11)
  {
    goto LABEL_30;
  }

  *(v2 + 20) = v30;
  v25 = __OFADD__(v26, result);
  result += v26;
  if (v25)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  return result;
}

void PermanentFlag.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    sub_1004A6EB4(0);
    sub_1004A5834();
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  }

  else
  {
    sub_1004A6EB4(1uLL);
  }
}

Swift::Int PermanentFlag.hashValue.getter(uint64_t a1, uint64_t a2)
{
  sub_1004A6E94();
  if (a2)
  {
    sub_1004A6EB4(0);
    sub_1004A5834();
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  }

  else
  {
    sub_1004A6EB4(1uLL);
  }

  return sub_1004A6F14();
}

Swift::Int sub_100475DB4()
{
  v1 = *(v0 + 8);
  sub_1004A6E94();
  if (v1)
  {
    sub_1004A6EB4(0);
    sub_1004A5834();
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  }

  else
  {
    sub_1004A6EB4(1uLL);
  }

  return sub_1004A6F14();
}

void sub_100475E40(uint64_t a1)
{
  if (*(v1 + 8))
  {
    sub_1004A6EB4(0);
    sub_1004A5834();
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  }

  else
  {
    sub_1004A6EB4(1uLL);
  }
}

Swift::Int sub_100475ED4(uint64_t a1)
{
  v2 = *(v1 + 8);
  sub_1004A6E94();
  if (v2)
  {
    sub_1004A6EB4(0);
    sub_1004A5834();
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  }

  else
  {
    sub_1004A6EB4(1uLL);
  }

  return sub_1004A6F14();
}

uint64_t sub_100475F70(unint64_t a1, void *a2)
{
  v3 = v2;
  if (a2)
  {
    v3 = v2 + 5;
    v4 = v2[5];
    result = sub_1002F178C(a1, a2, (v3 - 3), v4);
    if (v8)
    {
      v9._countAndFlagsBits = a1;
      v9._object = a2;
      result = ByteBuffer._setStringSlowpath(_:at:)(v9, v4);
    }

    v10 = *v3 + result;
    if (!__CFADD__(*v3, result))
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  v12 = v3[5];
  v3 += 5;
  v11 = v12;
  result = sub_1002F178C(0x2A5CuLL, 0xE200000000000000, (v3 - 3), v12);
  if (v13)
  {
    v14._countAndFlagsBits = 10844;
    v14._object = 0xE200000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v14, v11);
  }

  v10 = *v3 + result;
  if (!__CFADD__(*v3, result))
  {
LABEL_10:
    *v3 = v10;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_100476040(void *a1)
{
  v2 = v1;
  v32 = a1;
  v4 = a1[2];
  if (v4)
  {
    v5 = *(v1 + 20);
    result = sub_1002F178C(0, 0xE000000000000000, v1 + 8, v5);
    if (v7)
    {
      v8._countAndFlagsBits = 0;
      v8._object = 0xE000000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v8, v5);
    }

    v9 = result;
    v10 = *(v1 + 20);
    v11 = __CFADD__(v10, result);
    v12 = v10 + result;
    if (v11)
    {
      goto LABEL_29;
    }

    *(v1 + 20) = v12;
  }

  else
  {
    v9 = 0;
    v12 = *(v1 + 20);
  }

  v13 = v12;
  result = sub_1002F178C(0x28uLL, 0xE100000000000000, v1 + 8, v12);
  if (v14)
  {
    v15._countAndFlagsBits = 40;
    v15._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v15, v13);
  }

  v16 = *(v1 + 20);
  v11 = __CFADD__(v16, result);
  v17 = v16 + result;
  if (v11)
  {
    goto LABEL_24;
  }

  *(v1 + 20) = v17;
  v18 = v9 + result;
  if (__OFADD__(v9, result))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  __chkstk_darwin(result);
  v31[2] = sub_100476260;
  v31[3] = 0;
  v31[4] = v2;
  v31[5] = &v32;
  v31[6] = 32;
  v31[7] = 0xE100000000000000;
  result = sub_1004532E0(0, sub_100430E50, v31, a1);
  v19 = v18 + result;
  if (__OFADD__(v18, result))
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v20 = *(v2 + 20);
  result = sub_1002F178C(0x29uLL, 0xE100000000000000, v2 + 8, v20);
  if (v21)
  {
    v22._countAndFlagsBits = 41;
    v22._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v22, v20);
  }

  v23 = *(v2 + 20);
  v24 = (v23 + result);
  if (__CFADD__(v23, result))
  {
    goto LABEL_27;
  }

  *(v2 + 20) = v24;
  v25 = __OFADD__(v19, result);
  v26 = v19 + result;
  if (v25)
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    return result;
  }

  if (!v4)
  {
    return v26;
  }

  result = sub_1002F178C(0, 0xE000000000000000, v2 + 8, v24);
  if (v27)
  {
    v28._countAndFlagsBits = 0;
    v28._object = 0xE000000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v28, v24);
  }

  v29 = *(v2 + 20);
  v11 = __CFADD__(v29, result);
  v30 = v29 + result;
  if (v11)
  {
    goto LABEL_30;
  }

  *(v2 + 20) = v30;
  v25 = __OFADD__(v26, result);
  result += v26;
  if (v25)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  return result;
}

uint64_t sub_10047628C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t (*a3)(void *, uint64_t, __n128)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X5>, unint64_t a7@<X6>, void *a8@<X7>, uint64_t *a9@<X8>)
{
  result = sub_100490FC4(*a1, *a2, a2[1], a2[2], a3, a4, a5, *a6, a7, a8);
  if (!v9)
  {
    *a9 = result;
  }

  return result;
}

BOOL _s12NIOIMAPCore213PermanentFlagO21__derived_enum_equalsySbAC_ACtFZ_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    return !a4;
  }

  if (!a4)
  {
    return 0;
  }

  v4 = sub_1004A5834();
  v6 = v5;
  if (v4 == sub_1004A5834() && v6 == v7)
  {

    return 1;
  }

  v9 = sub_1004A6D34();

  return v9 & 1;
}

unint64_t sub_1004763AC()
{
  result = qword_1005DD388;
  if (!qword_1005DD388)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PermanentFlag, &type metadata for PermanentFlag, v0, v1);
    atomic_store(result, &qword_1005DD388);
  }

  return result;
}

unint64_t sub_100476414()
{
  result = qword_1005DD390;
  if (!qword_1005DD390)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PreviewText, &type metadata for PreviewText, v0, v1);
    atomic_store(result, &qword_1005DD390);
  }

  return result;
}

uint64_t sub_100476478(unint64_t a1, void *a2)
{
  v3 = v2;
  v6 = *(v2 + 20);
  result = sub_1002F178C(a1, a2, v2 + 8, v6);
  if (v8)
  {
    v9._countAndFlagsBits = a1;
    v9._object = a2;
    result = ByteBuffer._setStringSlowpath(_:at:)(v9, v6);
  }

  v10 = result;
  v11 = *(v2 + 20);
  v12 = (v11 + result);
  if (__CFADD__(v11, result))
  {
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  *(v2 + 20) = v12;
  result = sub_1002F178C(0x20uLL, 0xE100000000000000, v2 + 8, v12);
  if (v13)
  {
    v14._countAndFlagsBits = 32;
    v14._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v14, v12);
  }

  v15 = *(v2 + 20);
  v16 = (v15 + result);
  if (__CFADD__(v15, result))
  {
    goto LABEL_14;
  }

  *(v2 + 20) = v16;
  v17 = v10 + result;
  if (__OFADD__(v10, result))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v18 = sub_1004A6CE4();
  v20 = v19;
  v21 = sub_1002F178C(v18, v19, v2 + 8, v16);
  if (v22)
  {
    v23._countAndFlagsBits = v18;
    v23._object = v20;
    v21 = ByteBuffer._setStringSlowpath(_:at:)(v23, v16);
  }

  v24 = v21;

  v25 = *(v3 + 20);
  v26 = __CFADD__(v25, v24);
  v27 = v25 + v24;
  if (v26)
  {
    goto LABEL_16;
  }

  *(v3 + 20) = v27;
  result = v17 + v24;
  if (__OFADD__(v17, v24))
  {
LABEL_17:
    __break(1u);
  }

  return result;
}

BOOL static BodyStructure.Singlepart.Text.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a1 == a4 && a2 == a5)
  {
    return a3 == a6;
  }

  v8 = sub_1004A6D34();
  result = 0;
  if (v8)
  {
    return a3 == a6;
  }

  return result;
}

Swift::Int BodyStructure.Singlepart.Text.hashValue.getter(uint64_t a1, uint64_t a2, Swift::UInt a3)
{
  sub_1004A6E94();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  sub_1004A6EB4(a3);
  return sub_1004A6F14();
}

Swift::Int sub_1004766B8()
{
  v1 = *(v0 + 16);
  sub_1004A6E94();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  sub_1004A6EB4(v1);
  return sub_1004A6F14();
}

void sub_10047671C(uint64_t a1)
{
  v2 = *(v1 + 16);
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  sub_1004A6EB4(v2);
}

Swift::Int sub_100476754(uint64_t a1)
{
  v2 = *(v1 + 16);
  sub_1004A6E94();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  sub_1004A6EB4(v2);
  return sub_1004A6F14();
}

unint64_t sub_1004767B8()
{
  result = qword_1005DD398;
  if (!qword_1005DD398)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for QuotaLimit, &type metadata for QuotaLimit, v0, v1);
    atomic_store(result, &qword_1005DD398);
  }

  return result;
}

BOOL sub_10047680C(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return v2 == v3;
  }

  v5 = sub_1004A6D34();
  result = 0;
  if (v5)
  {
    return v2 == v3;
  }

  return result;
}

BOOL static QuotaResource.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1 == a5 && a2 == a6)
  {
    if (a3 != a7)
    {
      return 0;
    }

    return a4 == a8;
  }

  v13 = sub_1004A6D34();
  result = 0;
  if ((v13 & 1) != 0 && a3 == a7)
  {
    return a4 == a8;
  }

  return result;
}

void QuotaResource.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, Swift::UInt a4, Swift::UInt a5)
{
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  sub_1004A6EB4(a4);
  sub_1004A6EB4(a5);
}

Swift::Int QuotaResource.hashValue.getter(uint64_t a1, uint64_t a2, Swift::UInt a3, Swift::UInt a4)
{
  sub_1004A6E94();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  sub_1004A6EB4(a3);
  sub_1004A6EB4(a4);
  return sub_1004A6F14();
}

Swift::Int sub_1004769B8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_1004A6E94();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  sub_1004A6EB4(v1);
  sub_1004A6EB4(v2);
  return sub_1004A6F14();
}

void sub_100476A30(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  sub_1004A6EB4(v2);
  sub_1004A6EB4(v3);
}

Swift::Int sub_100476A78(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  sub_1004A6E94();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  sub_1004A6EB4(v2);
  sub_1004A6EB4(v3);
  return sub_1004A6F14();
}

unint64_t sub_100476AF0()
{
  result = qword_1005DD3A0;
  if (!qword_1005DD3A0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for QuotaResource, &type metadata for QuotaResource, v0, v1);
    atomic_store(result, &qword_1005DD3A0);
  }

  return result;
}

BOOL sub_100476B44(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v5 = a2[2];
  v4 = a2[3];
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    if (v2 != v5)
    {
      return 0;
    }

    return v3 == v4;
  }

  v7 = sub_1004A6D34();
  result = 0;
  if ((v7 & 1) != 0 && v2 == v5)
  {
    return v3 == v4;
  }

  return result;
}

void *sub_100476BD8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  result = _swiftEmptyArrayStorage;
  if (v3)
  {
    sub_100091C48(0, v3, 0);
    result = _swiftEmptyArrayStorage;
    v6 = a1 + 56;
    while (1)
    {
      v24 = v3;
      v25 = result;
      v7 = *(v6 - 24);
      v8 = *(v6 - 16);
      v9 = *(a2 + 20);

      result = sub_1002F178C(v7, v8, a2 + 8, v9);
      if (v10)
      {
        v11._countAndFlagsBits = v7;
        v11._object = v8;
        result = ByteBuffer._setStringSlowpath(_:at:)(v11, v9);
      }

      v12 = *(a2 + 20);
      v13 = (v12 + result);
      if (__CFADD__(v12, result))
      {
        break;
      }

      v23 = result;
      *(a2 + 20) = v13;
      v26._countAndFlagsBits = sub_1004A6CE4();
      sub_1004A5994(v26);

      v27._countAndFlagsBits = 32;
      v27._object = 0xE100000000000000;
      sub_1004A5994(v27);
      v28._countAndFlagsBits = sub_1004A6CE4();
      sub_1004A5994(v28);

      v14 = sub_1002F178C(0x20uLL, 0xE100000000000000, a2 + 8, v13);
      if (v15)
      {
        v16._countAndFlagsBits = 32;
        v16._object = 0xE100000000000000;
        v14 = ByteBuffer._setStringSlowpath(_:at:)(v16, v13);
      }

      v17 = v14;

      result = v8;
      v18 = *(a2 + 20);
      v19 = __CFADD__(v18, v17);
      v20 = v18 + v17;
      if (v19)
      {
        goto LABEL_15;
      }

      *(a2 + 20) = v20;

      if (__OFADD__(v23, v17))
      {
        goto LABEL_16;
      }

      result = v25;
      v22 = v25[2];
      v21 = v25[3];
      if (v22 >= v21 >> 1)
      {
        sub_100091C48((v21 > 1), v22 + 1, 1);
        result = v25;
      }

      v6 += 32;
      result[2] = v22 + 1;
      result[v22 + 4] = v23 + v17;
      --v3;
      if (v24 == 1)
      {
        return result;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
  }

  return result;
}

uint64_t sub_100476E0C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(v4 + 20);
  result = sub_1002F178C(0x2041544F5551uLL, 0xE600000000000000, v4 + 8, v9);
  if (v11)
  {
    v12._countAndFlagsBits = 0x2041544F5551;
    v12._object = 0xE600000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v12, v9);
  }

  v13 = result;
  v14 = *(v4 + 20);
  v15 = __CFADD__(v14, result);
  v16 = v14 + result;
  if (v15)
  {
    __break(1u);
    goto LABEL_12;
  }

  *(v4 + 20) = v16;
  result = sub_1003B1E70(a1, a2, a3 & 0xFFFFFFFFFFFFFFLL);
  v17 = v13 + result;
  if (__OFADD__(v13, result))
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v18 = *(v4 + 20);
  result = sub_1002F178C(0x20uLL, 0xE100000000000000, v4 + 8, v18);
  if (v19)
  {
    v20._countAndFlagsBits = 32;
    v20._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v20, v18);
  }

  v21 = *(v4 + 20);
  v15 = __CFADD__(v21, result);
  v22 = v21 + result;
  if (v15)
  {
    goto LABEL_13;
  }

  *(v4 + 20) = v22;
  v23 = v17 + result;
  if (__OFADD__(v17, result))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v24 = sub_100476F44(a4);
  v25 = __OFADD__(v23, v24);
  result = v23 + v24;
  if (v25)
  {
LABEL_15:
    __break(1u);
  }

  return result;
}

uint64_t sub_100476F44(uint64_t a1)
{
  v2 = v1;
  v4 = *(v1 + 20);
  result = sub_1002F178C(0x28uLL, 0xE100000000000000, v1 + 8, v4);
  if (v6)
  {
    v7._countAndFlagsBits = 40;
    v7._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v7, v4);
  }

  v8 = result;
  v9 = *(v2 + 20);
  v10 = __CFADD__(v9, result);
  v11 = v9 + result;
  if (v10)
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  *(v2 + 20) = v11;
  result = sub_100476BD8(a1, v2);
  v12 = *(result + 16);
  if (v12)
  {
    v13 = 0;
    v14 = (result + 32);
    while (1)
    {
      v15 = *v14++;
      v16 = __OFADD__(v13, v15);
      v13 += v15;
      if (v16)
      {
        break;
      }

      if (!--v12)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
    goto LABEL_17;
  }

  v13 = 0;
LABEL_10:

  v17 = v8 + v13;
  if (__OFADD__(v8, v13))
  {
    goto LABEL_18;
  }

  v18 = *(v2 + 20);
  result = sub_1002F178C(0x29uLL, 0xE100000000000000, v2 + 8, v18);
  if (v19)
  {
    v20._countAndFlagsBits = 41;
    v20._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v20, v18);
  }

  v21 = *(v2 + 20);
  v10 = __CFADD__(v21, result);
  v22 = v21 + result;
  if (v10)
  {
    goto LABEL_19;
  }

  *(v2 + 20) = v22;
  v16 = __OFADD__(v17, result);
  result += v17;
  if (v16)
  {
LABEL_20:
    __break(1u);
  }

  return result;
}

uint64_t sub_100477068(uint64_t *a1)
{
  v2 = a1[3];
  v1 = a1[4];
  v3 = *a1;
  v5 = *(a1 + 2);
  v4 = *(a1 + 3);
  v6 = *(a1 + 10);
  v7 = *(a1 + 22);
  v8 = sub_100460DC4(0, (v1 - v2) & ~((v1 - v2) >> 63), 0, _swiftEmptyArrayStorage);
  swift_beginAccess();
  v9 = v3;
  v10 = 0;
  v11 = 0;
  v12 = v5 + (v4 - v5);
  v13 = v7 | (v6 << 8);
  v14 = 8 * v1;
  v15 = xmmword_1004ED250;
  v16 = xmmword_1004ED260;
  v17 = xmmword_1004ED270;
  result = 49376;
  v19 = v2;
  while (1)
  {
    LODWORD(v55) = v10;
    BYTE4(v55) = v11;
    if (!v11)
    {
      break;
    }

    if ((v10 & 0x80) == 0)
    {
      v46 = v17;
      v48 = v16;
      v50 = v15;
      v52 = v14;
      v35 = v13;
      v36 = v12;
      v37 = v9;
      sub_1002A57BC();
      result = UnsafeExtractedAttachment.part.modify();
      v39 = *(v38 + 4);
      if (!v39)
      {
        goto LABEL_79;
      }

      *v38 >>= 8;
      *(v38 + 4) = v39 - 8;
      (result)(v54, 0);
      v22 = (v10 + 1);
      v9 = v37;
      v12 = v36;
      v13 = v35;
      v14 = v52;
      v16 = v48;
      v15 = v50;
      v17 = v46;
      result = 49376;
      goto LABEL_49;
    }

LABEL_11:
    if (v19 == v1)
    {
      goto LABEL_12;
    }

    if (v19 < v2 || v19 >= v1)
    {
      goto LABEL_76;
    }

    if (v19 < v5)
    {
      goto LABEL_77;
    }

    if (v19 >= v12)
    {
      goto LABEL_78;
    }

    v24 = v19 + 1;
    v10 = (*(*(v9 + 24) + v13 + v19) << v11) | ((-255 << v11) - 1) & v10;
    v23 = v11 + 8;
    if ((v11 + 8) > 0x1Fu)
    {
      goto LABEL_44;
    }

    if (v24 == v1)
    {
      goto LABEL_12;
    }

    if (v19 < v2 || v24 >= v1)
    {
      goto LABEL_76;
    }

    if (v19 < v5)
    {
      goto LABEL_77;
    }

    if (v12 == v24)
    {
      goto LABEL_78;
    }

    v25 = v19 + 2;
    v10 = (*(*(v9 + 24) + v13 + v24) << v23) | ((-255 << v23) - 1) & v10;
    v23 = v11 + 16;
    if ((v11 + 16) > 0x1Fu)
    {
      v19 += 2;
    }

    else
    {
      if (v25 == v1)
      {
        goto LABEL_12;
      }

      if (v19 < v2 || v25 >= v1)
      {
        goto LABEL_76;
      }

      if (v19 < v5)
      {
        goto LABEL_77;
      }

      if (v12 == v25)
      {
        goto LABEL_78;
      }

      v24 = v19 + 3;
      v10 = (*(*(v9 + 24) + v13 + v25) << v23) | ((-255 << v23) - 1) & v10;
      v23 = v11 + 24;
      if ((v11 + 24) > 0x1Fu)
      {
LABEL_44:
        v19 = v24;
        goto LABEL_45;
      }

      if (v24 == v1)
      {
        goto LABEL_12;
      }

      if (v19 < v2 || v24 >= v1)
      {
        goto LABEL_76;
      }

      if (v19 < v5)
      {
        goto LABEL_77;
      }

      if (v12 == v24)
      {
        goto LABEL_78;
      }

      v26 = v19 + 4;
      v10 = (*(*(v9 + 24) + v13 + v24) << v23) | ((-255 << v23) - 1) & v10;
      if (v11 >= 0xE0u)
      {
        if (v26 != v1)
        {
          if (v19 < v2 || v26 >= v1)
          {
            goto LABEL_76;
          }

          if (v19 < v5)
          {
            goto LABEL_77;
          }

          if (v12 == v26)
          {
            goto LABEL_78;
          }

          v19 += 5;
          v10 = (*(*(v9 + 24) + v13 + v26) << v11) | ((-255 << v11) - 1) & v10;
          v23 = v11 + 40;
          goto LABEL_45;
        }

LABEL_12:
        v23 = v14 + v11 - 8 * v19;
        v19 = v1;
        if (!v23)
        {
LABEL_72:
          v54[0] = 0;
          v54[1] = 0xE000000000000000;
          v55 = v8;
          sub_10000C9C0(&qword_1005D8288, &qword_1004F3FE0);
          sub_100477A68();
          sub_1004A58B4();

          return v54[0];
        }

        goto LABEL_45;
      }

      v23 = v11 + 32;
      v19 += 4;
    }

LABEL_45:
    if ((v10 & 0xC0E0) == 0x80C0)
    {
      if ((v10 & 0x1E) == 0)
      {
        goto LABEL_71;
      }

      v27 = 16;
    }

    else if ((v10 & 0xC0C0F0) == 0x8080E0)
    {
      if ((v10 & 0x200F) == 0 || (v10 & 0x200F) == 0x200D)
      {
        goto LABEL_71;
      }

      v27 = 24;
    }

    else
    {
      if ((v10 & 0xC0C0C0F8) != 0x808080F0 || (v10 & 0x3007) == 0 || __rev16(v10 & 0x3007) > 0x400)
      {
LABEL_71:
        v43 = sub_1004A6FB4();
        LODWORD(v55) = v10 >> ((8 * v43) & 0x38);
        BYTE4(v55) = v23 - 8 * v43;

        return 0;
      }

      v27 = 32;
    }

    LODWORD(v55) = v10 >> v27;
    BYTE4(v55) = v23 - v27;
    v22 = ((1 << (v27 >> 1) << (v27 >> 1)) - 1) & (v10 + 16843009);
LABEL_49:
    v28 = __clz(v22) >> 3;
    switch(v28)
    {
      case 1u:
        v29 = ((v22 - 65793) >> 2) & 0xFC0 | ((v22 - 65793) >> 16) & 0x3F | (((v22 - 65793) & 0xF) << 12);
        break;
      case 2u:
        v29 = (((v22 - 257) & 0x1F) << 6) | ((v22 - 257) >> 8) & 0x3F;
        break;
      case 3u:
        v29 = v22 - 1;
        break;
      default:
        v30 = vdupq_n_s32(v22 - 16843009);
        v31.i64[0] = vshlq_u32(v30, v15).u64[0];
        v31.i64[1] = vshlq_u32(v30, v16).i64[1];
        v32 = vandq_s8(v31, v17);
        *v32.i8 = vorr_s8(*v32.i8, *&vextq_s8(v32, v32, 8uLL));
        v29 = v32.i32[0] | v32.i32[1];
        break;
    }

    v10 = v55;
    v11 = BYTE4(v55);
    v34 = *(v8 + 2);
    v33 = *(v8 + 3);
    if (v34 >= v33 >> 1)
    {
      v44 = v12;
      v45 = v9;
      v40 = v8;
      v41 = v13;
      v53 = v14;
      v49 = v16;
      v51 = v15;
      v47 = v17;
      v42 = sub_100460DC4((v33 > 1), v34 + 1, 1, v40);
      v17 = v47;
      v16 = v49;
      v15 = v51;
      v14 = v53;
      v13 = v41;
      v12 = v44;
      v9 = v45;
      v8 = v42;
      result = 49376;
    }

    *(v8 + 2) = v34 + 1;
    *&v8[4 * v34 + 32] = v29;
  }

  if (v19 == v1)
  {
    goto LABEL_72;
  }

  if (v19 >= v2 && v19 < v1)
  {
    if (v19 < v5)
    {
      goto LABEL_74;
    }

    if (v19 >= v12)
    {
      goto LABEL_75;
    }

    v20 = *(*(v9 + 24) + v13 + v19);
    v21 = *(*(v9 + 24) + v13 + v19++);
    if ((v20 & 0x80000000) == 0)
    {
      v22 = v21 + 1;
      goto LABEL_49;
    }

    v10 = v10 & 0xFFFFFF00 | v21;
    v11 = 8;
    goto LABEL_11;
  }

  __break(1u);
LABEL_74:
  __break(1u);
LABEL_75:
  __break(1u);
LABEL_76:
  __break(1u);
LABEL_77:
  __break(1u);
LABEL_78:
  __break(1u);
LABEL_79:
  __break(1u);
  return result;
}

uint64_t QuotaRoot.init(_:)(uint64_t a1, unint64_t a2)
{
  sub_1003BD9F8(&v20);
  v5 = *(&v21 + 1);
  v4 = v22;
  v6 = sub_1003B2588(a1, a2, &v20, v22);
  if ((v6 & 0x100000000) != 0)
  {
    v7 = sub_1003B51F4(a1, a2, v4);
  }

  else
  {
    v7 = v6;
  }

  v9 = v4 + v7;
  if (__OFADD__(v4, v7))
  {
    __break(1u);
    goto LABEL_10;
  }

  if (v9 < v5)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  *(&v21 + 1) = v5;
  v22 = v4 + v7;
  if (v21 - (BYTE6(v21) | (WORD2(v21) << 8)) < v9)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  HIDWORD(v20) = v4 + v7;
  v18[0] = v20;
  v18[1] = v21;
  v19 = v22;
  v10 = v20;
  v11 = v21;
  v12 = WORD2(v21);
  v13 = BYTE6(v21);
  v14 = *(&v21 + 1);
  v15 = v22 - *(&v21 + 1);
  sub_1003BD79C(v18, v17);
  v16 = ByteBuffer.getSlice(at:length:)(v14, v15, v10, *(&v10 + 1), v11 | (v12 << 32) | (v13 << 48));
  result = sub_1003A52D0(v18);
  if (v16)
  {
    sub_1003A52D0(v18);
    return v16;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t String.init(_:)(uint64_t result, unint64_t a2, uint64_t a3)
{
  if (HIDWORD(a2) < a2)
  {
    __break(1u);
  }

  else if (a3 - (BYTE6(a3) | (WORD2(a3) << 8)) >= HIDWORD(a2))
  {
    v11 = v3;
    v12 = v4;
    v5[0] = result;
    v5[1] = a2;
    v6 = a3;
    v7 = WORD2(a3);
    v8 = BYTE6(a3);
    v9 = a2;
    v10 = HIDWORD(a2);
    return sub_100477068(v5);
  }

  __break(1u);
  return result;
}

uint64_t QuotaRoot.debugDescription.getter(uint64_t result, unint64_t a2, uint64_t a3)
{
  if (HIDWORD(a2) < a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (HIDWORD(a2) > a3 - (BYTE6(a3) | (WORD2(a3) << 8)))
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v5[0] = result;
  v5[1] = a2;
  v6 = a3;
  v7 = WORD2(a3);
  v8 = BYTE6(a3);
  v9 = a2;
  v10 = HIDWORD(a2);

  result = sub_100477068(v5);
  if (!v3)
  {
    swift_beginAccess();

    v4 = sub_1004A58D4();

    return v4;
  }

  return result;
}

unint64_t sub_100477A04()
{
  result = qword_1005DD3A8;
  if (!qword_1005DD3A8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for QuotaRoot, &type metadata for QuotaRoot, v0, v1);
    atomic_store(result, &qword_1005DD3A8);
  }

  return result;
}

unint64_t sub_100477A68()
{
  result = qword_1005D8290;
  if (!qword_1005D8290)
  {
    v3 = sub_10000DEFC(&qword_1005D8288, &qword_1004F3FE0);
    result = swift_getWitnessTable(&protocol conformance descriptor for [A], v3, v0, v1);
    atomic_store(result, &qword_1005D8290);
  }

  return result;
}

void sub_100477ACC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v10 = *(v5 + 20);
  v11 = sub_1002F178C(0x4F4F5241544F5551uLL, 0xEA00000000002054, v5 + 8, v10);
  if (v12)
  {
    v13._countAndFlagsBits = 0x4F4F5241544F5551;
    v13._object = 0xEA00000000002054;
    v11 = ByteBuffer._setStringSlowpath(_:at:)(v13, v10);
  }

  v14 = v11;
  v15 = *(v5 + 20);
  v16 = __CFADD__(v15, v11);
  v17 = v15 + v11;
  if (v16)
  {
    __break(1u);
    goto LABEL_12;
  }

  *(v5 + 20) = v17;
  sub_100441F24(a1);
  v19 = v14 + v18;
  if (__OFADD__(v14, v18))
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v20 = *(v5 + 20);
  v21 = sub_1002F178C(0x20uLL, 0xE100000000000000, v5 + 8, v20);
  if (v22)
  {
    v23._countAndFlagsBits = 32;
    v23._object = 0xE100000000000000;
    v21 = ByteBuffer._setStringSlowpath(_:at:)(v23, v20);
  }

  v24 = *(v5 + 20);
  v16 = __CFADD__(v24, v21);
  v25 = v24 + v21;
  if (v16)
  {
    goto LABEL_13;
  }

  *(v5 + 20) = v25;
  if (__OFADD__(v19, v21))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (__OFADD__(v19 + v21, sub_1003B1E70(a3, a4, a5 & 0xFFFFFFFFFFFFFFLL)))
  {
LABEL_15:
    __break(1u);
  }
}

uint64_t ResponseOrContinuationRequest.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Response(0);
  __chkstk_darwin(v4 - 8);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ResponseOrContinuationRequest(0);
  __chkstk_darwin(v7);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10047B198(v2, v9, type metadata accessor for ResponseOrContinuationRequest);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_10047B200(v9, v6, type metadata accessor for Response);
    sub_1004A6EB4(1uLL);
    Response.hash(into:)(a1);
    return sub_10047B268(v6, type metadata accessor for Response);
  }

  else
  {
    v11 = *v9;
    v12 = *(v9 + 1);
    v13 = *(v9 + 2);
    v14 = v9[24];
    sub_1004A6EB4(0);
    if (v14)
    {
      sub_1004A6EB4(1uLL);
      swift_beginAccess();
      sub_1004A6EA4();
      v15 = v11;
      v16 = v12;
      v17 = v13;
      v18 = 1;
    }

    else
    {
      sub_1004A6EB4(0);
      if ((~v11 & 0xF000000000000007) != 0)
      {
        sub_1004A6EC4(1u);
        ResponseTextCode.hash(into:)(a1, v11);
      }

      else
      {
        sub_1004A6EC4(0);
      }

      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
      v15 = v11;
      v16 = v12;
      v17 = v13;
      v18 = 0;
    }

    return sub_1001C21E4(v15, v16, v17, v18);
  }
}

uint64_t Response.tag.getter()
{
  v1 = type metadata accessor for Response(0);
  __chkstk_darwin(v1);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10047B198(v0, v3, type metadata accessor for Response);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload >= 2)
    {
      v5 = *v3;
      sub_100173584(*(v3 + 2), *(v3 + 3), *(v3 + 4), v3[40]);
      return v5;
    }

    goto LABEL_6;
  }

  if (EnumCaseMultiPayload == 3 || (v7 = EnumCaseMultiPayload, result = 0, v7 == 4))
  {
LABEL_6:
    sub_10047B268(v3, type metadata accessor for Response);
    return 0;
  }

  return result;
}

void Response.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for ResponsePayload(0);
  __chkstk_darwin(v4 - 8);
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Response(0);
  __chkstk_darwin(v7);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10047B198(v2, v9, type metadata accessor for Response);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v17 = *v9;
      sub_1004A6EB4(3uLL);
      if ((~v17 & 0xF000000000000007) != 0)
      {
        sub_1004A6EC4(1u);
        ResponseTextCode.hash(into:)(a1, v17);
      }

      else
      {
        sub_1004A6EC4(0);
      }

      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
      sub_10001114C(v17);
    }

    else if (EnumCaseMultiPayload == 4)
    {
      sub_1004A6EB4(4uLL);
      swift_beginAccess();
      sub_1004A6EA4();
    }

    else
    {
      sub_1004A6EB4(5uLL);
    }
  }

  else if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v11 = *(v9 + 9);
      v22[8] = *(v9 + 8);
      v22[9] = v11;
      v22[10] = *(v9 + 10);
      v23 = *(v9 + 88);
      v12 = *(v9 + 5);
      v22[4] = *(v9 + 4);
      v22[5] = v12;
      v13 = *(v9 + 7);
      v22[6] = *(v9 + 6);
      v22[7] = v13;
      v14 = *(v9 + 1);
      v22[0] = *v9;
      v15 = *(v9 + 2);
      v16 = *(v9 + 3);
      v22[1] = v14;
      v22[2] = v15;
      v22[3] = v16;
      sub_1004A6EB4(1uLL);
      FetchResponse.hash(into:)(a1);
      sub_100304408(v22);
    }

    else
    {
      v18 = *(v9 + 2);
      v19 = *(v9 + 3);
      v20 = *(v9 + 4);
      v21 = v9[40];
      sub_1004A6EB4(2uLL);
      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
      TaggedResponse.State.hash(into:)(a1, v18, v19, v20, v21);

      sub_100173584(v18, v19, v20, v21);
    }
  }

  else
  {
    sub_10047B200(v9, v6, type metadata accessor for ResponsePayload);
    sub_1004A6EB4(0);
    ResponsePayload.hash(into:)(a1);
    sub_10047B268(v6, type metadata accessor for ResponsePayload);
  }
}

Swift::Int sub_1004782C4(uint64_t (*a1)(void *))
{
  sub_1004A6E94();
  a1(v3);
  return sub_1004A6F14();
}

Swift::Int sub_100478324(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *))
{
  sub_1004A6E94();
  a3(v5);
  return sub_1004A6F14();
}

Swift::Int sub_100478388(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
{
  sub_1004A6E94();
  a4(v6);
  return sub_1004A6F14();
}

void sub_10047840C(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for ResponsePayload(0);
  __chkstk_darwin(v3 - 8);
  v5 = &v18[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0) - 16];
  v6 = type metadata accessor for Response(0);
  __chkstk_darwin(v6);
  v8 = &v18[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 16];
  sub_10047B198(a2, v8, type metadata accessor for Response);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v15 = *v8;
      sub_10047DC94(*v8, *(v8 + 1), *(v8 + 2));
      sub_10001114C(v15);
    }

    else if (EnumCaseMultiPayload == 4)
    {
      sub_10047D5E0(*v8, *(v8 + 1), *(v8 + 4) | (*(v8 + 10) << 32) | (v8[22] << 48));
    }

    else
    {
      ResponseEncodeBuffer.writeContinuationRequest(_:)(0xF000000000000007, 0x676E696C6469uLL, 0xE600000000000000, 0);
    }
  }

  else if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v10 = *(v8 + 9);
      v24 = *(v8 + 8);
      v25 = v10;
      v26 = *(v8 + 10);
      v27 = *(v8 + 88);
      v11 = *(v8 + 5);
      v20 = *(v8 + 4);
      v21 = v11;
      v12 = *(v8 + 7);
      v22 = *(v8 + 6);
      v23 = v12;
      v13 = *(v8 + 1);
      v17 = *v8;
      *v18 = v13;
      v14 = *(v8 + 3);
      *&v18[16] = *(v8 + 2);
      v19 = v14;
      sub_10047CFEC(&v17);
      sub_100304408(&v17);
    }

    else
    {
      v16 = *(v8 + 1);
      v17 = *v8;
      *v18 = v16;
      *&v18[9] = *(v8 + 25);
      sub_10049EF7C(&v17);
      v28 = v17;
      sub_1002F9A9C(&v28);
      v29[0] = *v18;
      *(v29 + 9) = *&v18[9];
      sub_10030457C(v29);
    }
  }

  else
  {
    sub_10047B200(v8, v5, type metadata accessor for ResponsePayload);
    sub_10047C504(v5);
    sub_10047B268(v5, type metadata accessor for ResponsePayload);
  }
}

void sub_1004786DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v170 = a2;
  v6 = type metadata accessor for ResponsePayload(0);
  __chkstk_darwin(v6 - 8);
  v164 = &v158 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v165 = type metadata accessor for Response(0);
  v171 = *(v165 - 8);
  __chkstk_darwin(v165);
  v9 = &v158 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v158 - v11;
  v13 = sub_10000C9C0(&qword_1005D8498, &unk_1004F49B8);
  __chkstk_darwin(v13 - 8);
  v166 = &v158 - v14;
  v15 = *(a3 - 8);
  __chkstk_darwin(v16);
  v18 = &v158 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v158 = *(AssociatedTypeWitness - 8);
  v20 = __chkstk_darwin(AssociatedTypeWitness);
  v22 = &v158 - v21;
  (*(v15 + 16))(v18, v170, a3, v20);
  v23 = v12;
  sub_1004A5AC4();
  v25 = v165;
  v24 = v166;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v169 = v22;
  v170 = AssociatedTypeWitness;
  v168 = AssociatedConformanceWitness;
  sub_1004A6414();
  v27 = *(v171 + 48);
  v171 += 48;
  v167 = v27;
  if (v27(v24, 1, v25) == 1)
  {
LABEL_2:
    (*(v158 + 8))(v169, v170);
    return;
  }

  v163 = v12;
  v159 = v9;
  while (1)
  {
    sub_10047B200(v24, v23, type metadata accessor for Response);
    sub_10047B198(v23, v9, type metadata accessor for Response);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 2)
    {
      break;
    }

    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v28 = *(v9 + 9);
        v182[8] = *(v9 + 8);
        v182[9] = v28;
        v182[10] = *(v9 + 10);
        v183 = *(v9 + 88);
        v29 = *(v9 + 5);
        v182[4] = *(v9 + 4);
        v182[5] = v29;
        v30 = *(v9 + 7);
        v182[6] = *(v9 + 6);
        v182[7] = v30;
        v31 = *(v9 + 1);
        v182[0] = *v9;
        v182[1] = v31;
        v32 = *(v9 + 3);
        v182[2] = *(v9 + 2);
        v182[3] = v32;
        sub_10047CFEC(v182);
        sub_100304408(v182);
        sub_10047B268(v23, type metadata accessor for Response);
      }

      else
      {
        v34 = *v9;
        v35 = *(v9 + 1);
        v37 = *(v9 + 2);
        v36 = *(v9 + 3);
        v160 = *(v9 + 4);
        v161 = v36;
        LODWORD(v162) = v9[40];
        v175 = v34;
        v176 = v35;

        v184._countAndFlagsBits = 32;
        v184._object = 0xE100000000000000;
        sub_1004A5994(v184);
        v39 = v175;
        v38 = v176;
        v40 = *(a1 + 20);
        v41 = sub_1002F178C(v175, v176, a1 + 8, v40);
        if (v42)
        {
          v43._countAndFlagsBits = v39;
          v43._object = v38;
          v41 = ByteBuffer._setStringSlowpath(_:at:)(v43, v40);
        }

        v44 = v41;

        v45 = *(a1 + 20);
        v46 = __CFADD__(v45, v44);
        v47 = v45 + v44;
        if (v46)
        {
          goto LABEL_92;
        }

        v48 = v37;
        *(a1 + 20) = v47;
        v49 = v37;
        v51 = v160;
        v50 = v161;
        sub_10049F548(v49, v161, v160, v162);
        v52 = *(a1 + 20);
        v53 = sub_1002F178C(0xA0DuLL, 0xE200000000000000, a1 + 8, v52);
        if (v54)
        {
          v55._countAndFlagsBits = 2573;
          v55._object = 0xE200000000000000;
          v53 = ByteBuffer._setStringSlowpath(_:at:)(v55, v52);
        }

        v56 = v53;

        v24 = v166;
        sub_100173584(v48, v50, v51, v162);
        v23 = v163;
        sub_10047B268(v163, type metadata accessor for Response);
        v57 = *(a1 + 20);
        v46 = __CFADD__(v57, v56);
        v58 = v57 + v56;
        if (v46)
        {
          goto LABEL_93;
        }

        *(a1 + 20) = v58;
        v25 = v165;
      }
    }

    else
    {
      sub_10047B200(v9, v164, type metadata accessor for ResponsePayload);
      v69 = *(a1 + 20);
      v70 = v69 + 2;
      if (v69 >= 0xFFFFFFFE)
      {
        goto LABEL_89;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v71 = *(a1 + 24);
        v46 = v70 >= v71;
        v72 = v70 - v71;
        if (v46)
        {
          v73 = v72;
        }

        else
        {
          v73 = 0;
        }

        v74 = variable initialization expression of Engine.isProcessingUpdates();
        ByteBuffer._copyStorageAndRebase(extraCapacity:resetIndices:)(v73, v74 & 1);
      }

      ByteBuffer._ensureAvailableCapacity(_:at:)(2u, v69);
      v75 = *(a1 + 8);
      v76 = *(a1 + 24);
      v77 = *(a1 + 28);
      v78 = *(a1 + 30);
      swift_beginAccess();
      v79 = v78 | (v77 << 8);
      v80 = v76 - v79;
      if (v76 - v79 >= v69)
      {
        v80 = v69;
      }

      if (!v69)
      {
        v80 = 0;
      }

      *(*(v75 + 24) + v79 + v80) = 8234;
      v81 = *(a1 + 20);
      v46 = __CFADD__(v81, 2);
      v82 = v81 + 2;
      if (v46)
      {
        goto LABEL_94;
      }

      *(a1 + 20) = v82;
      sub_100480F60(v164);
      v83 = *(a1 + 20);
      v84 = v83 + 2;
      if (v83 >= 0xFFFFFFFE)
      {
        goto LABEL_101;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v85 = *(a1 + 24);
        v46 = v84 >= v85;
        v86 = v84 - v85;
        if (v46)
        {
          v87 = v86;
        }

        else
        {
          v87 = 0;
        }

        v88 = variable initialization expression of Engine.isProcessingUpdates();
        ByteBuffer._copyStorageAndRebase(extraCapacity:resetIndices:)(v87, v88 & 1);
      }

      ByteBuffer._ensureAvailableCapacity(_:at:)(2u, v83);
      v89 = *(a1 + 8);
      v90 = *(a1 + 24);
      v91 = *(a1 + 28);
      v92 = *(a1 + 30);
      swift_beginAccess();
      v93 = v92 | (v91 << 8);
      v94 = v90 - v93;
      if (v90 - v93 >= v83)
      {
        v94 = v83;
      }

      if (!v83)
      {
        v94 = 0;
      }

      *(*(v89 + 24) + v93 + v94) = 2573;
      sub_10047B268(v164, type metadata accessor for ResponsePayload);
      v23 = v163;
      sub_10047B268(v163, type metadata accessor for Response);
      v95 = *(a1 + 20);
      v46 = __CFADD__(v95, 2);
      v96 = v95 + 2;
      if (v46)
      {
        goto LABEL_102;
      }

      *(a1 + 20) = v96;
      v24 = v166;
    }

LABEL_5:
    sub_1004A6414();
    if (v167(v24, 1, v25) == 1)
    {
      goto LABEL_2;
    }
  }

  if (EnumCaseMultiPayload != 3)
  {
    if (EnumCaseMultiPayload == 4)
    {
      v60 = *(v9 + 2);
      v59 = *(v9 + 3);
      if (v59 < v60)
      {
        goto LABEL_91;
      }

      v61 = *(v9 + 4);
      v62 = *(v9 + 10);
      v63 = v9[22];
      if (v61 - (v63 | (v62 << 8)) < v59)
      {
        goto LABEL_97;
      }

      v64 = *v9;
      v175 = *v9;
      v176 = __PAIR64__(v59, v60);
      v177 = v61;
      v178 = v62;
      v179 = v63;
      v180 = v60;
      v181 = v59;
      v65 = v59 - v60;
      swift_beginAccess();
      if (v65 < -4)
      {
        goto LABEL_99;
      }

      v66 = 4 * ((v65 + 2) / 3);
      v67 = *(v64 + 24);
      v162 = v64;

      if (v65 < 1)
      {
        v68 = _swiftEmptyArrayStorage;
      }

      else
      {
        v68 = sub_1004A5C64();
        v68[2] = v66;
      }

      v173 = 0;
      sub_1003C511C(&unk_1005BB228, 256, &unk_1005BB348, 256, v67 + (v63 | (v62 << 8)) + v60, v65, (v68 + 4), v66, 0, &v173);
      if (v66 < v173)
      {
        goto LABEL_103;
      }

      v68[2] = v173;
      sub_1003A52D0(&v175);
      v138 = *(a1 + 20);
      v139 = sub_1002F178C(0x202BuLL, 0xE200000000000000, a1 + 8, v138);
      if (v140)
      {
        v141._countAndFlagsBits = 8235;
        v141._object = 0xE200000000000000;
        v139 = ByteBuffer._setStringSlowpath(_:at:)(v141, v138);
      }

      v25 = v165;
      v9 = v159;
      v142 = *(a1 + 20);
      v143 = (v142 + v139);
      if (__CFADD__(v142, v139))
      {
        goto LABEL_104;
      }

      *(a1 + 20) = v143;
      if (*a1 == 1)
      {
        v173 = 91;
        v174 = 0xE100000000000000;
        v172 = v68[2];
        v185._countAndFlagsBits = sub_1004A6CE4();
        sub_1004A5994(v185);

        v186._countAndFlagsBits = 0x5D736574796220;
        v186._object = 0xE700000000000000;
        sub_1004A5994(v186);
        v145 = v173;
        v144 = v174;
        v146 = sub_1002F178C(v173, v174, a1 + 8, v143);
        if (v147)
        {
          v148._countAndFlagsBits = v145;
          v148._object = v144;
          v146 = ByteBuffer._setStringSlowpath(_:at:)(v148, v143);
        }

        v149 = v146;

        v150 = *(a1 + 20);
        v46 = __CFADD__(v150, v149);
        v151 = v150 + v149;
        v23 = v163;
        if (v46)
        {
          goto LABEL_106;
        }

        *(a1 + 20) = v151;
      }

      else
      {
        sub_10041F128(v68);

        v151 = *(a1 + 20);
        v23 = v163;
      }

      v152 = v151;
      v153 = sub_1002F178C(0xA0DuLL, 0xE200000000000000, a1 + 8, v151);
      if (v154)
      {
        v155._countAndFlagsBits = 2573;
        v155._object = 0xE200000000000000;
        v153 = ByteBuffer._setStringSlowpath(_:at:)(v155, v152);
      }

      v156 = v153;

      v24 = v166;
      sub_10047B268(v23, type metadata accessor for Response);
      v157 = *(a1 + 20);
      v46 = __CFADD__(v157, v156);
      v137 = v157 + v156;
      if (v46)
      {
        goto LABEL_105;
      }
    }

    else
    {
      v117 = *(a1 + 20);
      v118 = sub_1002F178C(0x202BuLL, 0xE200000000000000, a1 + 8, v117);
      if (v119)
      {
        v120._countAndFlagsBits = 8235;
        v120._object = 0xE200000000000000;
        v118 = ByteBuffer._setStringSlowpath(_:at:)(v120, v117);
      }

      v121 = *(a1 + 20);
      v122 = (v121 + v118);
      if (__CFADD__(v121, v118))
      {
        goto LABEL_90;
      }

      *(a1 + 20) = v122;
      v123 = sub_1004A5924();
      if (v123 <= 0)
      {
        v124 = 32;
      }

      else
      {
        v124 = 0x676E696C6469;
      }

      if (v123 <= 0)
      {
        v125 = 0xE100000000000000;
      }

      else
      {
        v125 = 0xE600000000000000;
      }

      v126 = sub_1002F178C(v124, v125, a1 + 8, v122);
      if (v127)
      {
        v128._countAndFlagsBits = v124;
        v128._object = v125;
        v126 = ByteBuffer._setStringSlowpath(_:at:)(v128, v122);
      }

      v129 = v126;

      v130 = *(a1 + 20);
      v131 = (v130 + v129);
      if (__CFADD__(v130, v129))
      {
        goto LABEL_96;
      }

      *(a1 + 20) = v131;
      v132 = sub_1002F178C(0xA0DuLL, 0xE200000000000000, a1 + 8, (v130 + v129));
      if (v133)
      {
        v134._countAndFlagsBits = 2573;
        v134._object = 0xE200000000000000;
        v132 = ByteBuffer._setStringSlowpath(_:at:)(v134, v131);
      }

      v135 = v132;
      v24 = v166;
      sub_10047B268(v23, type metadata accessor for Response);
      v136 = *(a1 + 20);
      v46 = __CFADD__(v136, v135);
      v137 = v136 + v135;
      if (v46)
      {
        goto LABEL_98;
      }
    }

    *(a1 + 20) = v137;
    goto LABEL_5;
  }

  v98 = *v9;
  v97 = *(v9 + 1);
  v99 = *(v9 + 2);
  v100 = *(a1 + 20);
  v101 = sub_1002F178C(0x202AuLL, 0xE200000000000000, a1 + 8, v100);
  if (v102)
  {
    v103._countAndFlagsBits = 8234;
    v103._object = 0xE200000000000000;
    v101 = ByteBuffer._setStringSlowpath(_:at:)(v103, v100);
  }

  v104 = *(a1 + 20);
  v105 = (v104 + v101);
  if (!__CFADD__(v104, v101))
  {
    *(a1 + 20) = v105;
    v106 = sub_1002F178C(0x20455942uLL, 0xE400000000000000, a1 + 8, v105);
    if (v107)
    {
      v108._countAndFlagsBits = 541415746;
      v108._object = 0xE400000000000000;
      v106 = ByteBuffer._setStringSlowpath(_:at:)(v108, v105);
    }

    v109 = *(a1 + 20);
    v46 = __CFADD__(v109, v106);
    v110 = v109 + v106;
    if (v46)
    {
      goto LABEL_95;
    }

    *(a1 + 20) = v110;
    sub_100482A88(v98, v97, v99);
    v111 = *(a1 + 20);
    v112 = sub_1002F178C(0xA0DuLL, 0xE200000000000000, a1 + 8, v111);
    if (v113)
    {
      v114._countAndFlagsBits = 2573;
      v114._object = 0xE200000000000000;
      v112 = ByteBuffer._setStringSlowpath(_:at:)(v114, v111);
    }

    v115 = *(a1 + 20);
    v46 = __CFADD__(v115, v112);
    v116 = v115 + v112;
    if (v46)
    {
      goto LABEL_100;
    }

    *(a1 + 20) = v116;
    sub_10001114C(v98);

    sub_10047B268(v23, type metadata accessor for Response);
    v25 = v165;
    v24 = v166;
    goto LABEL_5;
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
  __break(1u);
LABEL_95:
  __break(1u);
LABEL_96:
  __break(1u);
LABEL_97:
  __break(1u);
LABEL_98:
  __break(1u);
LABEL_99:
  __break(1u);
LABEL_100:
  __break(1u);
LABEL_101:
  __break(1u);
LABEL_102:
  __break(1u);
LABEL_103:
  __break(1u);
LABEL_104:
  __break(1u);
LABEL_105:
  __break(1u);
LABEL_106:
  __break(1u);
}

void FetchResponse.hash(into:)(uint64_t a1)
{
  v3 = *(v1 + 144);
  v17[8] = *(v1 + 128);
  v17[9] = v3;
  v17[10] = *(v1 + 160);
  v18 = *(v1 + 176);
  v4 = *(v1 + 80);
  v17[4] = *(v1 + 64);
  v17[5] = v4;
  v5 = *(v1 + 112);
  v17[6] = *(v1 + 96);
  v17[7] = v5;
  v6 = *(v1 + 16);
  v17[0] = *v1;
  v17[1] = v6;
  v7 = *(v1 + 48);
  v17[2] = *(v1 + 32);
  v17[3] = v7;
  v8 = sub_1003043EC(v17);
  if (v8 <= 2)
  {
    if (v8)
    {
      if (v8 != 1)
      {
        v16 = sub_1002F9BA4(v17);
        v27 = *(v16 + 128);
        v28 = *(v16 + 144);
        v29 = *(v16 + 160);
        v30 = *(v16 + 176);
        v23 = *(v16 + 64);
        v24 = *(v16 + 80);
        v25 = *(v16 + 96);
        v26 = *(v16 + 112);
        v19 = *v16;
        v20 = *(v16 + 16);
        v21 = *(v16 + 32);
        v22 = *(v16 + 48);
        sub_1004A6EB4(2uLL);
        MessageAttribute.hash(into:)(a1);
        return;
      }

      v14 = *sub_1002F9BA4(v17);
      v15 = 1;
    }

    else
    {
      v14 = *sub_1002F9BA4(v17);
      v15 = 0;
    }

    sub_1004A6EB4(v15);
    sub_1004A6EE4(v14);
    return;
  }

  if (v8 > 4)
  {
    if (v8 == 5)
    {
      v13 = 5;
    }

    else
    {
      v13 = 6;
    }
  }

  else
  {
    if (v8 != 3)
    {
      sub_1002F9BA4(v17);
      sub_1004A6EB4(4uLL);
      swift_beginAccess();
      sub_1004A6EA4();
      return;
    }

    v9 = sub_1002F9BA4(v17);
    v10 = *(v9 + 32);
    v11 = *(v9 + 40);
    v12 = *(v9 + 16);
    v19 = *v9;
    v20 = v12;
    LOBYTE(v21) = v10;
    sub_1004A6EB4(3uLL);
    StreamingKind.hash(into:)(a1);
    v13 = v11;
  }

  sub_1004A6EB4(v13);
}

Swift::Int FetchResponse.hashValue.getter()
{
  sub_1004A6E94();
  FetchResponse.hash(into:)(v1);
  return sub_1004A6F14();
}

Swift::Int sub_1004795E0(uint64_t a1)
{
  sub_1004A6E94();
  FetchResponse.hash(into:)(v2);
  return sub_1004A6F14();
}

uint64_t sub_10047961C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 144);
  v13[8] = *(a1 + 128);
  v13[9] = v2;
  v13[10] = *(a1 + 160);
  v14 = *(a1 + 176);
  v3 = *(a1 + 80);
  v13[4] = *(a1 + 64);
  v13[5] = v3;
  v4 = *(a1 + 112);
  v13[6] = *(a1 + 96);
  v13[7] = v4;
  v5 = *(a1 + 16);
  v13[0] = *a1;
  v13[1] = v5;
  v6 = *(a1 + 48);
  v13[2] = *(a1 + 32);
  v13[3] = v6;
  v7 = *(a2 + 144);
  v15[8] = *(a2 + 128);
  v15[9] = v7;
  v15[10] = *(a2 + 160);
  v16 = *(a2 + 176);
  v8 = *(a2 + 80);
  v15[4] = *(a2 + 64);
  v15[5] = v8;
  v9 = *(a2 + 112);
  v15[6] = *(a2 + 96);
  v15[7] = v9;
  v10 = *(a2 + 16);
  v15[0] = *a2;
  v15[1] = v10;
  v11 = *(a2 + 48);
  v15[2] = *(a2 + 32);
  v15[3] = v11;
  return _s12NIOIMAPCore213FetchResponseO21__derived_enum_equalsySbAC_ACtFZ_0(v13, v15) & 1;
}

void StreamingKind.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v5 = *v2;
  v4 = *(v2 + 8);
  v6 = *(v2 + 16);
  v7 = *(v2 + 32);
  if (!(v7 >> 6))
  {
    sub_1004A6EB4(0);
    v10 = *(v5 + 16);
    sub_1004A6EB4(v10);
    if (v10)
    {
      v11 = (v5 + 32);
      do
      {
        v12 = *v11++;
        sub_1004A6EB4(v12);
        --v10;
      }

      while (v10);
    }

    if ((v6 & 1) == 0)
    {
      sub_1004A6EC4(1u);
      v9 = v4;
      goto LABEL_21;
    }

LABEL_9:
    sub_1004A6EC4(0);
    return;
  }

  v8 = *(v2 + 24);
  if (v7 >> 6 != 1)
  {
    v13 = (*(v2 + 17) << 8) | ((*(v2 + 21) | (*(v2 + 23) << 16)) << 40) | v6;
    if (v7 == 128 && (v8 | v4 | v5 | v13) == 0)
    {
      v9 = 2;
    }

    else if (v7 == 128 && v5 == 1 && !(v8 | v4 | v13))
    {
      v9 = 3;
    }

    else
    {
      v9 = 4;
    }

    goto LABEL_21;
  }

  sub_1004A6EB4(1uLL);
  SectionSpecifier.hash(into:)(a1, v5, v4, v6);
  if (v7)
  {
    goto LABEL_9;
  }

  sub_1004A6EC4(1u);
  v9 = v8;
LABEL_21:
  sub_1004A6EB4(v9);
}

Swift::Int StreamingKind.hashValue.getter()
{
  sub_1004A6E94();
  StreamingKind.hash(into:)(v1);
  return sub_1004A6F14();
}

Swift::Int sub_100479838(uint64_t a1)
{
  sub_1004A6E94();
  StreamingKind.hash(into:)(v2);
  return sub_1004A6F14();
}

uint64_t sub_100479874(uint64_t a1, int8x16_t *a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = a2[1];
  v7[0] = *a2;
  v7[1] = v3;
  v8 = a2[2].i8[0];
  return _s12NIOIMAPCore213StreamingKindO21__derived_enum_equalsySbAC_ACtFZ_0(v5, v7) & 1;
}

void *StreamingKind.sectionSpecifier.getter()
{
  v1 = *v0;
  v2 = *(v0 + 32);
  if (v2 >> 6)
  {
    v3 = v0[1];
    v4 = v0[2];
    if (v2 >> 6 == 1)
    {

      sub_100051190(v3, v4);
    }

    else
    {
      return _swiftEmptyArrayStorage;
    }
  }

  else
  {
  }

  return v1;
}

uint64_t StreamingKind.offset.getter()
{
  result = *(v0 + 8);
  v2 = *(v0 + 32);
  if (v2 >> 6)
  {
    if (v2 >> 6 == 1)
    {
      return *(v0 + 24);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t StreamingKind.debugDescription.getter()
{
  v1 = v0;
  if (qword_1005DB9D0 != -1)
  {
    swift_once();
  }

  v2 = static ByteBufferAllocator.zeroCapacityWithDefaultAllocator;
  v3 = dword_1005DE398;
  v4 = word_1005DE39C;
  v5 = byte_1005DE39E;

  LOBYTE(v10) = 0;
  BYTE5(v10) = 0;
  *(&v10 + 1) = 65537;
  *(&v10 + 1) = v2;
  *&v11 = qword_1005DE390;
  DWORD2(v11) = v3;
  WORD6(v11) = v4;
  BYTE14(v11) = v5;
  *&v12 = sub_1003DBA20(_swiftEmptyArrayStorage);
  *(&v12 + 1) = v6;
  v13 = v7;
  result = sub_10047C5F4(v1);
  if (DWORD1(v11) < v11)
  {
    __break(1u);
  }

  else if (v3 - (v5 | (v4 << 8)) >= DWORD1(v11))
  {
    v14[0] = v2;
    v14[1] = v11;
    v15 = v3;
    v16 = WORD6(v11);
    v17 = v5;
    v18 = v11;
    v19 = DWORD1(v11);
    *&v20[0] = 0;
    *(&v20[0] + 1) = 0xE000000000000000;

    sub_1004A5874(DWORD1(v11) - v11);
    sub_1003BB2E4(v14, v20);
    sub_1003A52D0(v14);
    v9 = *&v20[0];
    v20[0] = v10;
    v20[1] = v11;
    v20[2] = v12;
    v21 = v13;
    sub_1003E5C94(v20);
    return v9;
  }

  __break(1u);
  return result;
}

uint64_t _s12NIOIMAPCore213StreamingKindO21__derived_enum_equalsySbAC_ACtFZ_0(uint64_t *a1, int8x16_t *a2)
{
  v4 = *a1;
  result = a1[1];
  v5 = *(a1 + 16);
  v6 = *(a1 + 32);
  if (!(v6 >> 6))
  {
    if (a2[2].u8[0] > 0x3Fu)
    {
      return 0;
    }

    v15 = a2->i64[0];
    v16 = *(v4 + 16);
    if (v16 != *(a2->i64[0] + 16))
    {
      return 0;
    }

    if (v16)
    {
      v17 = v4 == v15;
    }

    else
    {
      v17 = 1;
    }

    if (!v17)
    {
      v26 = (v4 + 32);
      v27 = (v15 + 32);
      while (v16)
      {
        if (*v26 != *v27)
        {
          return 0;
        }

        ++v26;
        ++v27;
        if (!--v16)
        {
          goto LABEL_21;
        }
      }

      goto LABEL_81;
    }

LABEL_21:
    if (v5)
    {
      if ((a2[1].i8[0] & 1) == 0)
      {
        return 0;
      }
    }

    else if ((a2[1].i8[0] & 1) != 0 || result != a2->i64[1])
    {
      return 0;
    }

    return 1;
  }

  v7 = a1[3];
  if (v6 >> 6 != 1)
  {
    v18 = (*(a1 + 17) << 8) | ((*(a1 + 21) | (*(a1 + 23) << 16)) << 40) | v5;
    if (v6 == 128 && (v7 | result | v4 | v18) == 0)
    {
      v21 = a2[2].u8[0];
      if ((v21 & 0xC0) != 0x80)
      {
        return 0;
      }

      if (v21 != 128)
      {
        return 0;
      }

      v22 = vorrq_s8(*a2, a2[1]);
      return !*&vorr_s8(*v22.i8, *&vextq_s8(v22, v22, 8uLL));
    }

    if (v6 == 128 && v4 == 1 && !(v7 | result | v18))
    {
      v20 = a2[2].u8[0];
      if ((v20 & 0xC0) != 0x80 || v20 != 128 || a2->i64[0] != 1)
      {
        return 0;
      }
    }

    else
    {
      v23 = a2[2].u8[0];
      if ((v23 & 0xC0) != 0x80 || v23 != 128 || a2->i64[0] != 2)
      {
        return 0;
      }
    }

    return !(a2[1].i64[0] | a2[1].i64[1] | a2->i64[1]);
  }

  v8 = a2[2].i8[0];
  if ((v8 & 0xC0) != 0x40)
  {
    return 0;
  }

  v9 = a2->i64[0];
  v10 = *(v4 + 16);
  if (v10 != *(a2->i64[0] + 16))
  {
    return 0;
  }

  v11 = a2->i64[1];
  v12 = a2[1].i64[1];
  v13 = a2[1].u8[0];
  if (v10)
  {
    v14 = v4 == v9;
  }

  else
  {
    v14 = 1;
  }

  if (!v14)
  {
    v24 = (v4 + 32);
    v25 = (v9 + 32);
    while (v10)
    {
      if (*v24 != *v25)
      {
        return 0;
      }

      ++v24;
      ++v25;
      if (!--v10)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_81:
    __break(1u);
    return result;
  }

LABEL_10:
  if (!v5)
  {
    if (!a2[1].i8[0])
    {
LABEL_56:
      if ((sub_10020FB40(result, a2->i64[1]) & 1) == 0)
      {
        return 0;
      }

      goto LABEL_72;
    }

    return 0;
  }

  if (v5 == 1)
  {
    if (v13 != 1)
    {
      return 0;
    }

    goto LABEL_56;
  }

  if (result > 1)
  {
    if (result == 2)
    {
      result = 0;
      if (v13 == 2 && v11 == 2)
      {
        goto LABEL_72;
      }
    }

    else
    {
      result = 0;
      if (v13 == 2 && v11 == 3)
      {
        goto LABEL_72;
      }
    }
  }

  else
  {
    if (!result)
    {
      if (v13 != 2 || v11)
      {
        return result;
      }

LABEL_72:
      if (v6)
      {
        if ((v8 & 1) == 0)
        {
          return 0;
        }
      }

      else if ((v8 & 1) != 0 || v7 != v12)
      {
        return 0;
      }

      return 1;
    }

    result = 0;
    if (v13 == 2 && v11 == 1)
    {
      goto LABEL_72;
    }
  }

  return result;
}

uint64_t _s12NIOIMAPCore213FetchResponseO21__derived_enum_equalsySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 144);
  v94[8] = *(a1 + 128);
  v94[9] = v3;
  v94[10] = *(a1 + 160);
  v95 = *(a1 + 176);
  v4 = *(a1 + 80);
  v94[4] = *(a1 + 64);
  v94[5] = v4;
  v5 = *(a1 + 112);
  v94[6] = *(a1 + 96);
  v94[7] = v5;
  v6 = *(a1 + 16);
  v94[0] = *a1;
  v94[1] = v6;
  v7 = *(a1 + 48);
  v94[2] = *(a1 + 32);
  v94[3] = v7;
  v8 = sub_1003043EC(v94);
  if (v8 <= 2)
  {
    if (v8)
    {
      if (v8 != 1)
      {
        v38 = sub_1002F9BA4(v94);
        v104 = *(v38 + 128);
        v105 = *(v38 + 144);
        v106 = *(v38 + 160);
        v107 = *(v38 + 176);
        v100 = *(v38 + 64);
        v101 = *(v38 + 80);
        v102 = *(v38 + 96);
        v103 = *(v38 + 112);
        v96 = *v38;
        v97 = *(v38 + 16);
        v98 = *(v38 + 32);
        v99 = *(v38 + 48);
        v39 = *(a2 + 16);
        v70 = *a2;
        v71 = v39;
        v40 = *(a2 + 48);
        v72 = *(a2 + 32);
        v73 = v40;
        v41 = *(a2 + 80);
        v74 = *(a2 + 64);
        v75 = v41;
        v42 = *(a2 + 112);
        v76 = *(a2 + 96);
        v77 = v42;
        v43 = *(a2 + 144);
        v78 = *(a2 + 128);
        v79 = v43;
        v80 = *(a2 + 160);
        v81 = *(a2 + 176);
        if (sub_1003043EC(&v70) == 2)
        {
          v44 = sub_1002F9BA4(&v70);
          v45 = *(v44 + 144);
          v90 = *(v44 + 128);
          v91 = v45;
          v92 = *(v44 + 160);
          v93 = *(v44 + 176);
          v46 = *(v44 + 80);
          v86 = *(v44 + 64);
          v87 = v46;
          v47 = *(v44 + 112);
          v88 = *(v44 + 96);
          v89 = v47;
          v48 = *(v44 + 16);
          v82 = *v44;
          v83 = v48;
          v49 = *(v44 + 48);
          v84 = *(v44 + 32);
          v85 = v49;
          v21 = _s12NIOIMAPCore216MessageAttributeO21__derived_enum_equalsySbAC_ACtFZ_0(&v96, v82.i8);
          return v21 & 1;
        }

LABEL_22:
        v21 = 0;
        return v21 & 1;
      }

      v22 = *sub_1002F9BA4(v94);
      v23 = *(a2 + 48);
      v98 = *(a2 + 32);
      v99 = v23;
      v24 = *(a2 + 16);
      v96 = *a2;
      v97 = v24;
      v25 = *(a2 + 112);
      v102 = *(a2 + 96);
      v103 = v25;
      v26 = *(a2 + 80);
      v100 = *(a2 + 64);
      v101 = v26;
      v107 = *(a2 + 176);
      v27 = *(a2 + 160);
      v105 = *(a2 + 144);
      v106 = v27;
      v104 = *(a2 + 128);
      if (sub_1003043EC(&v96) != 1)
      {
        goto LABEL_22;
      }
    }

    else
    {
      v22 = *sub_1002F9BA4(v94);
      v33 = *(a2 + 48);
      v98 = *(a2 + 32);
      v99 = v33;
      v34 = *(a2 + 16);
      v96 = *a2;
      v97 = v34;
      v35 = *(a2 + 112);
      v102 = *(a2 + 96);
      v103 = v35;
      v36 = *(a2 + 80);
      v100 = *(a2 + 64);
      v101 = v36;
      v107 = *(a2 + 176);
      v37 = *(a2 + 160);
      v105 = *(a2 + 144);
      v106 = v37;
      v104 = *(a2 + 128);
      if (sub_1003043EC(&v96))
      {
        goto LABEL_22;
      }
    }

    v21 = *sub_1002F9BA4(&v96) == v22;
    return v21 & 1;
  }

  if (v8 > 4)
  {
    if (v8 == 5)
    {
      v28 = *(a2 + 144);
      v104 = *(a2 + 128);
      v105 = v28;
      v106 = *(a2 + 160);
      v107 = *(a2 + 176);
      v29 = *(a2 + 80);
      v100 = *(a2 + 64);
      v101 = v29;
      v30 = *(a2 + 112);
      v102 = *(a2 + 96);
      v103 = v30;
      v31 = *(a2 + 16);
      v96 = *a2;
      v97 = v31;
      v32 = *(a2 + 48);
      v98 = *(a2 + 32);
      v99 = v32;
      if (sub_1003043EC(&v96) != 5)
      {
        goto LABEL_22;
      }
    }

    else
    {
      v62 = *(a2 + 144);
      v104 = *(a2 + 128);
      v105 = v62;
      v106 = *(a2 + 160);
      v107 = *(a2 + 176);
      v63 = *(a2 + 80);
      v100 = *(a2 + 64);
      v101 = v63;
      v64 = *(a2 + 112);
      v102 = *(a2 + 96);
      v103 = v64;
      v65 = *(a2 + 16);
      v96 = *a2;
      v97 = v65;
      v66 = *(a2 + 48);
      v98 = *(a2 + 32);
      v99 = v66;
      if (sub_1003043EC(&v96) != 6)
      {
        goto LABEL_22;
      }
    }

    v21 = 1;
    return v21 & 1;
  }

  if (v8 != 3)
  {
    v50 = sub_1002F9BA4(v94);
    v51 = *v50;
    v52 = *(v50 + 8);
    v53 = *(v50 + 16);
    v54 = *(v50 + 20);
    v55 = *(v50 + 22);
    v56 = *(a2 + 144);
    v104 = *(a2 + 128);
    v105 = v56;
    v106 = *(a2 + 160);
    v107 = *(a2 + 176);
    v57 = *(a2 + 80);
    v100 = *(a2 + 64);
    v101 = v57;
    v58 = *(a2 + 112);
    v102 = *(a2 + 96);
    v103 = v58;
    v59 = *(a2 + 16);
    v96 = *a2;
    v97 = v59;
    v60 = *(a2 + 48);
    v98 = *(a2 + 32);
    v99 = v60;
    if (sub_1003043EC(&v96) == 4)
    {
      v61 = sub_1002F9BA4(&v96);
      v21 = sub_10020FBD0(v51, v52, v53 | (v54 << 32) | (v55 << 48), *v61, *(v61 + 8), *(v61 + 16) | (*(v61 + 20) << 32) | (*(v61 + 22) << 48));
      return v21 & 1;
    }

    goto LABEL_22;
  }

  v9 = sub_1002F9BA4(v94);
  v68 = *(v9 + 16);
  v69 = *v9;
  v10 = *(v9 + 32);
  v11 = *(v9 + 40);
  v12 = *(a2 + 48);
  v98 = *(a2 + 32);
  v99 = v12;
  v13 = *(a2 + 16);
  v96 = *a2;
  v97 = v13;
  v14 = *(a2 + 112);
  v102 = *(a2 + 96);
  v103 = v14;
  v15 = *(a2 + 80);
  v100 = *(a2 + 64);
  v101 = v15;
  v107 = *(a2 + 176);
  v16 = *(a2 + 160);
  v105 = *(a2 + 144);
  v106 = v16;
  v104 = *(a2 + 128);
  if (sub_1003043EC(&v96) != 3)
  {
    goto LABEL_22;
  }

  v17 = sub_1002F9BA4(&v96);
  v18 = *(v17 + 32);
  v19 = *(v17 + 40);
  v70 = v69;
  v71 = v68;
  LOBYTE(v72) = v10;
  v20 = *(v17 + 16);
  v82 = *v17;
  v83 = v20;
  LOBYTE(v84) = v18;
  if ((_s12NIOIMAPCore213StreamingKindO21__derived_enum_equalsySbAC_ACtFZ_0(&v70, &v82) & 1) == 0)
  {
    goto LABEL_22;
  }

  v21 = v11 == v19;
  return v21 & 1;
}

uint64_t _s12NIOIMAPCore28ResponseO21__derived_enum_equalsySbAC_ACtFZ_0(uint64_t a1, char *a2)
{
  v90 = a2;
  v3 = type metadata accessor for ResponsePayload(0);
  __chkstk_darwin(v3 - 8);
  v89 = &v87 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Response(0);
  __chkstk_darwin(v5);
  v7 = &v87 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = (&v87 - v9);
  __chkstk_darwin(v11);
  v13 = &v87 - v12;
  __chkstk_darwin(v14);
  v16 = &v87 - v15;
  __chkstk_darwin(v17);
  v19 = &v87 - v18;
  v20 = sub_10000C9C0(&qword_1005DD520, &qword_10050AEA0);
  __chkstk_darwin(v20 - 8);
  v23 = &v87 + *(v22 + 56) - v21;
  v24 = a1;
  v25 = &v87 - v21;
  sub_10047B198(v24, &v87 - v21, type metadata accessor for Response);
  sub_10047B198(v90, v23, type metadata accessor for Response);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        sub_10047B198(v25, v16, type metadata accessor for Response);
        v27 = *(v16 + 9);
        v91[8] = *(v16 + 8);
        v91[9] = v27;
        v91[10] = *(v16 + 10);
        v92 = *(v16 + 88);
        v28 = *(v16 + 5);
        v91[4] = *(v16 + 4);
        v91[5] = v28;
        v29 = *(v16 + 7);
        v91[6] = *(v16 + 6);
        v91[7] = v29;
        v30 = *(v16 + 1);
        v91[0] = *v16;
        v91[1] = v30;
        v31 = *(v16 + 3);
        v91[2] = *(v16 + 2);
        v91[3] = v31;
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v32 = *(v23 + 9);
          v93[8] = *(v23 + 8);
          v93[9] = v32;
          v93[10] = *(v23 + 10);
          v94 = *(v23 + 88);
          v33 = *(v23 + 5);
          v93[4] = *(v23 + 4);
          v93[5] = v33;
          v34 = *(v23 + 7);
          v93[6] = *(v23 + 6);
          v93[7] = v34;
          v35 = *(v23 + 1);
          v93[0] = *v23;
          v93[1] = v35;
          v36 = *(v23 + 3);
          v93[2] = *(v23 + 2);
          v93[3] = v36;
          ResponseO21__derived_enum_equalsySbAC_ACtFZ_0 = _s12NIOIMAPCore213FetchResponseO21__derived_enum_equalsySbAC_ACtFZ_0(v91, v93);
          sub_100304408(v93);
          sub_100304408(v91);
LABEL_38:
          sub_10047B268(v25, type metadata accessor for Response);
          return ResponseO21__derived_enum_equalsySbAC_ACtFZ_0 & 1;
        }

        sub_100304408(v91);
        goto LABEL_35;
      }

      sub_10047B198(v25, v13, type metadata accessor for Response);
      v46 = *v13;
      v47 = *(v13 + 1);
      v49 = *(v13 + 2);
      v48 = *(v13 + 3);
      v50 = *(v13 + 4);
      v51 = v13[40];
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v89 = v50;
        v90 = v25;
        v52 = *v23;
        v53 = *(v23 + 1);
        v55 = *(v23 + 2);
        v54 = *(v23 + 3);
        v88 = *(v23 + 4);
        v56 = v23[40];
        v57 = v46 == v52 && v47 == v53;
        if (!v57 && (sub_1004A6D34() & 1) == 0)
        {
          v58 = v48;
          v59 = v49;
          goto LABEL_93;
        }

        v58 = v48;
        if (v51)
        {
          v59 = v49;
          if (v51 == 1)
          {
            if (v56 == 1)
            {
              v60 = v55 & 0xF000000000000007;
              if ((~v49 & 0xF000000000000007) != 0)
              {
                if (v60 == 0xF000000000000007)
                {
                  goto LABEL_71;
                }

                sub_1000110C4(v55);
                v69 = _s12NIOIMAPCore216ResponseTextCodeO21__derived_enum_equalsySbAC_ACtFZ_0(v49, v55);
                sub_10001114C(v55);
                if ((v69 & 1) == 0)
                {
                  goto LABEL_71;
                }
              }

              else if (v60 != 0xF000000000000007)
              {
LABEL_71:
                LOBYTE(v56) = 1;
                LOBYTE(v51) = 1;
                goto LABEL_93;
              }

              v70 = v54;
              v57 = v58 == v54;
              v71 = v88;
              v72 = v89;
              if (!v57 || v89 != v88)
              {
                v74 = sub_1004A6D34();

                sub_100173584(v55, v70, v71, 1u);

                v75 = v59;
                v76 = v58;
                v77 = v72;
                v78 = 1;
                goto LABEL_87;
              }

LABEL_89:

              sub_100173584(v55, v58, v72, v51);

              sub_100173584(v59, v58, v72, v51);
LABEL_90:
              v61 = v90;
              goto LABEL_30;
            }

            LOBYTE(v51) = 1;
LABEL_93:

            sub_100173584(v55, v54, v88, v56);

            sub_100173584(v59, v58, v89, v51);
LABEL_94:
            sub_10047B268(v90, type metadata accessor for Response);
            goto LABEL_36;
          }

          if (v56 != 2)
          {
            LOBYTE(v51) = 2;
            goto LABEL_93;
          }

          v68 = v55 & 0xF000000000000007;
          if ((~v49 & 0xF000000000000007) != 0)
          {
            if (v68 == 0xF000000000000007)
            {
              goto LABEL_79;
            }

            sub_1000110C4(v55);
            v79 = _s12NIOIMAPCore216ResponseTextCodeO21__derived_enum_equalsySbAC_ACtFZ_0(v49, v55);
            sub_10001114C(v55);
            if ((v79 & 1) == 0)
            {
              goto LABEL_79;
            }
          }

          else if (v68 != 0xF000000000000007)
          {
LABEL_79:
            LOBYTE(v56) = 2;
            LOBYTE(v51) = 2;
            goto LABEL_93;
          }

          v80 = v54;
          v57 = v58 == v54;
          v81 = v88;
          v72 = v89;
          if (v57 && v89 == v88)
          {
            goto LABEL_89;
          }

          v74 = sub_1004A6D34();

          sub_100173584(v55, v80, v81, 2u);

          v75 = v59;
          v76 = v58;
          v77 = v72;
          v78 = 2;
LABEL_87:
          sub_100173584(v75, v76, v77, v78);
          if ((v74 & 1) == 0)
          {
            goto LABEL_94;
          }

          goto LABEL_90;
        }

        v59 = v49;
        if (v56)
        {
LABEL_92:
          LOBYTE(v51) = 0;
          goto LABEL_93;
        }

        v67 = v55 & 0xF000000000000007;
        if ((~v49 & 0xF000000000000007) != 0)
        {
          if (v67 == 0xF000000000000007)
          {
            goto LABEL_91;
          }

          sub_1000110C4(v55);
          v83 = _s12NIOIMAPCore216ResponseTextCodeO21__derived_enum_equalsySbAC_ACtFZ_0(v49, v55);
          sub_10001114C(v55);
          if ((v83 & 1) == 0)
          {
            goto LABEL_91;
          }
        }

        else if (v67 != 0xF000000000000007)
        {
LABEL_91:
          LOBYTE(v56) = 0;
          goto LABEL_92;
        }

        v84 = v54;
        v57 = v58 == v54;
        v85 = v88;
        v72 = v89;
        if (v57 && v89 == v88)
        {
          goto LABEL_89;
        }

        v74 = sub_1004A6D34();

        sub_100173584(v55, v84, v85, 0);

        v75 = v59;
        v76 = v58;
        v77 = v72;
        v78 = 0;
        goto LABEL_87;
      }

      sub_100173584(v49, v48, v50, v51);
    }

    else
    {
      sub_10047B198(v25, v19, type metadata accessor for Response);
      if (!swift_getEnumCaseMultiPayload())
      {
        v62 = v89;
        sub_10047B200(v23, v89, type metadata accessor for ResponsePayload);
        ResponseO21__derived_enum_equalsySbAC_ACtFZ_0 = _s12NIOIMAPCore215ResponsePayloadO21__derived_enum_equalsySbAC_ACtFZ_0(v19, v62);
        sub_10047B268(v62, type metadata accessor for ResponsePayload);
        sub_10047B268(v19, type metadata accessor for ResponsePayload);
        goto LABEL_38;
      }

      sub_10047B268(v19, type metadata accessor for ResponsePayload);
    }

LABEL_35:
    sub_100025F40(v25, &qword_1005DD520, &qword_10050AEA0);
LABEL_36:
    ResponseO21__derived_enum_equalsySbAC_ACtFZ_0 = 0;
    return ResponseO21__derived_enum_equalsySbAC_ACtFZ_0 & 1;
  }

  if (EnumCaseMultiPayload != 3)
  {
    if (EnumCaseMultiPayload == 4)
    {
      sub_10047B198(v25, v7, type metadata accessor for Response);
      v38 = *v7;
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        ResponseO21__derived_enum_equalsySbAC_ACtFZ_0 = sub_10020FBD0(v38, *(v7 + 1), *(v7 + 4) | (v7[22] << 48) | (*(v7 + 10) << 32), *v23, *(v23 + 1), *(v23 + 4) | (*(v23 + 10) << 32) | (v23[22] << 48));

        goto LABEL_38;
      }

      goto LABEL_35;
    }

    if (swift_getEnumCaseMultiPayload() != 5)
    {
      goto LABEL_35;
    }

    goto LABEL_29;
  }

  sub_10047B198(v25, v10, type metadata accessor for Response);
  v39 = *v10;
  v40 = v10[1];
  v41 = v10[2];
  if (swift_getEnumCaseMultiPayload() != 3)
  {
    sub_10001114C(v39);

    goto LABEL_35;
  }

  v42 = *v23;
  v43 = *(v23 + 1);
  v44 = *(v23 + 2);
  v45 = *v23 & 0xF000000000000007;
  if ((~v39 & 0xF000000000000007) != 0)
  {
    if (v45 != 0xF000000000000007)
    {
      sub_1000110C4(*v23);
      v64 = _s12NIOIMAPCore216ResponseTextCodeO21__derived_enum_equalsySbAC_ACtFZ_0(v39, v42);
      sub_10001114C(v42);
      if (v64)
      {
        goto LABEL_42;
      }

      sub_10001114C(v42);
    }

    sub_10001114C(v39);
    goto LABEL_61;
  }

  if (v45 != 0xF000000000000007)
  {
    sub_10001114C(*v23);

LABEL_61:

    goto LABEL_62;
  }

LABEL_42:
  if (v40 == v43 && v41 == v44)
  {
    sub_10001114C(v42);

    sub_10001114C(v39);

    goto LABEL_29;
  }

  v66 = sub_1004A6D34();
  sub_10001114C(v42);

  sub_10001114C(v39);

  if ((v66 & 1) == 0)
  {
LABEL_62:
    sub_10047B268(v25, type metadata accessor for Response);
    goto LABEL_36;
  }

LABEL_29:
  v61 = v25;
LABEL_30:
  sub_10047B268(v61, type metadata accessor for Response);
  ResponseO21__derived_enum_equalsySbAC_ACtFZ_0 = 1;
  return ResponseO21__derived_enum_equalsySbAC_ACtFZ_0 & 1;
}

uint64_t _s12NIOIMAPCore229ResponseOrContinuationRequestO21__derived_enum_equalsySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Response(0);
  __chkstk_darwin(v4 - 8);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ResponseOrContinuationRequest(0);
  __chkstk_darwin(v7);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v33 - v11;
  v13 = sub_10000C9C0(&qword_1005DD528, &qword_10050AEA8);
  __chkstk_darwin(v13 - 8);
  v15 = &v33 - v14;
  v17 = &v33 + *(v16 + 56) - v14;
  sub_10047B198(a1, &v33 - v14, type metadata accessor for ResponseOrContinuationRequest);
  sub_10047B198(a2, v17, type metadata accessor for ResponseOrContinuationRequest);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_10047B198(v15, v12, type metadata accessor for ResponseOrContinuationRequest);
    v20 = *v12;
    v19 = *(v12 + 1);
    v21 = *(v12 + 2);
    v22 = v12[24];
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1001C21E4(v20, v19, v21, v22);
LABEL_7:
      sub_100025F40(v15, &qword_1005DD528, &qword_10050AEA8);
LABEL_28:
      v18 = 0;
      return v18 & 1;
    }

    v23 = *v17;
    v24 = *(v17 + 1);
    v25 = *(v17 + 2);
    if (v22)
    {
      if (v17[24])
      {
        v26 = sub_10020FBD0(v20, v19, v21 & 0xFFFFFFFFFFFFFFLL, *v17, *(v17 + 1), v25 & 0xFFFFFFFFFFFFFFLL);
        sub_1001C21E4(v23, v24, v25, 1);
        sub_1001C21E4(v20, v19, v21, 1);
        if (v26)
        {
          goto LABEL_31;
        }

        goto LABEL_27;
      }

      goto LABEL_25;
    }

    if (v17[24])
    {
      v27 = 1;
LABEL_26:
      sub_1001C21E4(v23, v24, v25, v27);
      sub_1001C21E4(v20, v19, v21, v22);
      goto LABEL_27;
    }

    v28 = v23 & 0xF000000000000007;
    if ((~v20 & 0xF000000000000007) != 0)
    {
      if (v28 != 0xF000000000000007)
      {
        sub_1000110C4(*v17);
        v29 = _s12NIOIMAPCore216ResponseTextCodeO21__derived_enum_equalsySbAC_ACtFZ_0(v20, v23);
        sub_10001114C(v23);
        if (v29)
        {
LABEL_19:
          if (v19 == v24 && v21 == v25)
          {
            sub_1001C21E4(v23, v19, v21, 0);
            sub_1001C21E4(v20, v19, v21, 0);
LABEL_31:
            sub_10047B268(v15, type metadata accessor for ResponseOrContinuationRequest);
            v18 = 1;
            return v18 & 1;
          }

          v31 = sub_1004A6D34();
          sub_1001C21E4(v23, v24, v25, 0);
          sub_1001C21E4(v20, v19, v21, 0);
          if (v31)
          {
            goto LABEL_31;
          }

LABEL_27:
          sub_10047B268(v15, type metadata accessor for ResponseOrContinuationRequest);
          goto LABEL_28;
        }
      }
    }

    else if (v28 == 0xF000000000000007)
    {
      goto LABEL_19;
    }

LABEL_25:
    v27 = 0;
    goto LABEL_26;
  }

  sub_10047B198(v15, v9, type metadata accessor for ResponseOrContinuationRequest);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_10047B268(v9, type metadata accessor for Response);
    goto LABEL_7;
  }

  sub_10047B200(v17, v6, type metadata accessor for Response);
  v18 = _s12NIOIMAPCore28ResponseO21__derived_enum_equalsySbAC_ACtFZ_0(v9, v6);
  sub_10047B268(v6, type metadata accessor for Response);
  sub_10047B268(v9, type metadata accessor for Response);
  sub_10047B268(v15, type metadata accessor for ResponseOrContinuationRequest);
  return v18 & 1;
}

uint64_t sub_10047B198(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10047B200(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10047B268(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10047B36C(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10047B3B8()
{
  result = qword_1005DD3C0;
  if (!qword_1005DD3C0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for FetchResponse, &type metadata for FetchResponse, v0, v1);
    atomic_store(result, &qword_1005DD3C0);
  }

  return result;
}

unint64_t sub_10047B410()
{
  result = qword_1005DD3C8;
  if (!qword_1005DD3C8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for StreamingKind, &type metadata for StreamingKind, v0, v1);
    atomic_store(result, &qword_1005DD3C8);
  }

  return result;
}

uint64_t sub_10047B464(uint64_t a1)
{
  result = type metadata accessor for Response(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10047B4D0(uint64_t a1)
{
  result = type metadata accessor for ResponsePayload(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10047B568(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16) >> 2;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t sub_10047B5B8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 4 * -a2;
      *(result + 24) = 0;
      *(result + 32) = 0;
      return result;
    }

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10047B608(uint64_t result, unsigned int a2)
{
  if (a2 < 2)
  {
    v2 = *(result + 32) & 1 | (a2 << 6);
    *(result + 16) &= 3uLL;
    *(result + 32) = v2;
  }

  else
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0x80;
  }

  return result;
}

uint64_t ResponseCodeAppend.init(uidValidity:uids:)@<X0>(int a1@<W0>, uint64_t a2@<X1>, _DWORD *a3@<X8>)
{
  *a3 = a1;
  v4 = a3 + *(type metadata accessor for ResponseCodeAppend(0) + 20);

  return sub_10009DE7C(a2, v4);
}

uint64_t type metadata accessor for ResponseCodeAppend(uint64_t a1)
{
  result = qword_1005DD590;
  if (!qword_1005DD590)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ResponseCodeAppend.uids.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ResponseCodeAppend(0) + 20);

  return sub_100027CF4(v3, a1);
}

uint64_t ResponseCodeAppend.uids.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for ResponseCodeAppend(0) + 20);

  return sub_1000E8F80(a1, v3);
}

uint64_t static ResponseCodeAppend.__derived_struct_equals(_:_:)(_DWORD *a1, _DWORD *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  type metadata accessor for ResponseCodeAppend(0);
  sub_100016D2C();

  return sub_1004A7034();
}

uint64_t ResponseCodeAppend.hash(into:)(uint64_t a1)
{
  sub_1004A6EE4(*v1);
  type metadata accessor for ResponseCodeAppend(0);
  sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
  sub_1000956A0();
  return sub_1004A5564();
}

Swift::Int ResponseCodeAppend.hashValue.getter()
{
  sub_1004A6E94();
  sub_1004A6EE4(*v0);
  type metadata accessor for ResponseCodeAppend(0);
  sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
  sub_1000956A0();
  sub_1004A5564();
  return sub_1004A6F14();
}

Swift::Int sub_10047B938()
{
  sub_1004A6E94();
  sub_1004A6EE4(*v0);
  sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
  sub_1000956A0();
  sub_1004A5564();
  return sub_1004A6F14();
}

uint64_t sub_10047B9C0(uint64_t a1)
{
  sub_1004A6EE4(*v1);
  sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
  sub_1000956A0();
  return sub_1004A5564();
}

Swift::Int sub_10047BA30(uint64_t a1)
{
  sub_1004A6E94();
  sub_1004A6EE4(*v1);
  sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
  sub_1000956A0();
  sub_1004A5564();
  return sub_1004A6F14();
}

uint64_t sub_10047BAB4(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  sub_100016D2C();

  return sub_1004A7034();
}

uint64_t sub_10047BB24()
{
  v12._countAndFlagsBits = sub_1004A6CE4();
  sub_1004A5994(v12);

  v13._countAndFlagsBits = 32;
  v13._object = 0xE100000000000000;
  sub_1004A5994(v13);
  v1 = *(v0 + 20);
  v2 = sub_1002F178C(0x4955444E45505041uLL, 0xEA00000000002044, v0 + 8, v1);
  if (v3)
  {
    v4._countAndFlagsBits = 0x4955444E45505041;
    v4._object = 0xEA00000000002044;
    v2 = ByteBuffer._setStringSlowpath(_:at:)(v4, v1);
  }

  v5 = v2;

  v7 = *(v0 + 20);
  v8 = __CFADD__(v7, v5);
  v9 = v7 + v5;
  if (v8)
  {
    __break(1u);
    goto LABEL_7;
  }

  *(v0 + 20) = v9;
  type metadata accessor for ResponseCodeAppend(0);
  v10 = sub_10048E5D0(v0);
  v11 = __OFADD__(v5, v10);
  result = v5 + v10;
  if (v11)
  {
LABEL_7:
    __break(1u);
  }

  return result;
}

unint64_t sub_10047BC48()
{
  result = qword_1005DD530;
  if (!qword_1005DD530)
  {
    v3 = type metadata accessor for ResponseCodeAppend(255);
    result = swift_getWitnessTable(protocol conformance descriptor for ResponseCodeAppend, v3, v0, v1);
    atomic_store(result, &qword_1005DD530);
  }

  return result;
}

uint64_t sub_10047BCB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = sub_10000C9C0(&qword_1005CD1D0, &unk_1004CF2C0);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_10047BD4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = sub_10000C9C0(&qword_1005CD1D0, &unk_1004CF2C0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

void sub_10047BDD4(uint64_t a1)
{
  sub_100051C44(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t static ResponseCodeCopy.__derived_struct_equals(_:_:)(int a1, int32x2_t *a2, int32x2_t *a3, int a4, int32x2_t *a5, int32x2_t *a6)
{
  if (a1 != a4 || (sub_100102A80(a2, a5) & 1) == 0)
  {
    return 0;
  }

  return sub_100102A80(a3, a6);
}

void ResponseCodeCopy.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1004A6EE4(a2);
  v6 = *(a3 + 16);
  sub_1004A6EB4(v6);
  if (v6)
  {
    v7 = (a3 + 36);
    do
    {
      v8 = *v7;
      sub_1004A6EE4(*(v7 - 1));
      sub_1004A6EE4(v8);
      v7 += 2;
      --v6;
    }

    while (v6);
  }

  v9 = *(a4 + 16);
  sub_1004A6EB4(v9);
  if (v9)
  {
    v10 = (a4 + 36);
    do
    {
      v11 = *v10;
      sub_1004A6EE4(*(v10 - 1));
      sub_1004A6EE4(v11);
      v10 += 2;
      --v9;
    }

    while (v9);
  }
}

Swift::Int ResponseCodeCopy.hashValue.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1004A6E94();
  ResponseCodeCopy.hash(into:)(v7, a1, a2, a3);
  return sub_1004A6F14();
}

Swift::Int sub_10047BFB4()
{
  v1 = *v0;
  v3 = *(v0 + 1);
  v2 = *(v0 + 2);
  sub_1004A6E94();
  ResponseCodeCopy.hash(into:)(v5, v1, v3, v2);
  return sub_1004A6F14();
}

Swift::Int sub_10047C01C(uint64_t a1)
{
  v2 = *v1;
  v4 = *(v1 + 1);
  v3 = *(v1 + 2);
  sub_1004A6E94();
  ResponseCodeCopy.hash(into:)(v6, v2, v4, v3);
  return sub_1004A6F14();
}

uint64_t sub_10047C074(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(a2 + 16);
  v3 = *(a1 + 16);
  if ((sub_100102A80(*(a1 + 8), *(a2 + 8)) & 1) == 0)
  {
    return 0;
  }

  return sub_100102A80(v3, v2);
}

uint64_t sub_10047C0D8(uint64_t a1, void *a2, void *a3)
{
  v24._countAndFlagsBits = sub_1004A6CE4();
  sub_1004A5994(v24);

  v25._countAndFlagsBits = 32;
  v25._object = 0xE100000000000000;
  sub_1004A5994(v25);
  v6 = *(v3 + 20);
  v7 = sub_1002F178C(0x2044495559504F43uLL, 0xE800000000000000, v3 + 8, v6);
  if (v8)
  {
    v9._countAndFlagsBits = 0x2044495559504F43;
    v9._object = 0xE800000000000000;
    v7 = ByteBuffer._setStringSlowpath(_:at:)(v9, v6);
  }

  v10 = v7;

  v12 = *(v3 + 20);
  v13 = __CFADD__(v12, v10);
  v14 = v12 + v10;
  if (v13)
  {
    __break(1u);
    goto LABEL_12;
  }

  *(v3 + 20) = v14;
  result = sub_10047C258(a2);
  v15 = v10 + result;
  if (__OFADD__(v10, result))
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v16 = *(v3 + 20);
  result = sub_1002F178C(0x20uLL, 0xE100000000000000, v3 + 8, v16);
  if (v17)
  {
    v18._countAndFlagsBits = 32;
    v18._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v18, v16);
  }

  v19 = *(v3 + 20);
  v13 = __CFADD__(v19, result);
  v20 = v19 + result;
  if (v13)
  {
    goto LABEL_13;
  }

  *(v3 + 20) = v20;
  v21 = v15 + result;
  if (__OFADD__(v15, result))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v22 = sub_10047C258(a3);
  v23 = __OFADD__(v21, v22);
  result = v22 + v21;
  if (v23)
  {
LABEL_15:
    __break(1u);
  }

  return result;
}

void *sub_10047C258(void *result)
{
  v2 = v1;
  v3 = result;
  v20 = result;
  v4 = result[2];
  if (v4)
  {
    v5 = *(v1 + 20);
    result = sub_1002F178C(0, 0xE000000000000000, v1 + 8, v5);
    if (v6)
    {
      v7._countAndFlagsBits = 0;
      v7._object = 0xE000000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v7, v5);
    }

    v8 = result;
    v9 = *(v2 + 20);
    v10 = __CFADD__(v9, result);
    v11 = v9 + result;
    if (v10)
    {
      goto LABEL_17;
    }

    *(v2 + 20) = v11;
  }

  else
  {
    v8 = 0;
  }

  __chkstk_darwin(result);
  v19[2] = sub_10047C3D4;
  v19[3] = 0;
  v19[4] = v2;
  v19[5] = &v20;
  v19[6] = 44;
  v19[7] = 0xE100000000000000;
  result = sub_1004530D4(0, sub_10043BF1C, v19, v3);
  v12 = result + v8;
  if (__OFADD__(v8, result))
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (!v4)
  {
    return (result + v8);
  }

  v13 = *(v2 + 20);
  result = sub_1002F178C(0, 0xE000000000000000, v2 + 8, v13);
  if (v14)
  {
    v15._countAndFlagsBits = 0;
    v15._object = 0xE000000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v15, v13);
  }

  v16 = *(v2 + 20);
  v10 = __CFADD__(v16, result);
  v17 = v16 + result;
  if (v10)
  {
    goto LABEL_18;
  }

  *(v2 + 20) = v17;
  v18 = __OFADD__(v12, result);
  result = (result + v12);
  if (v18)
  {
    __break(1u);
    goto LABEL_16;
  }

  return result;
}

uint64_t sub_10047C3D4(unsigned int *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1004A095C(*a1);
  v6 = 0;
  if (v3 < v4)
  {
    v7 = *(a2 + 20);
    result = sub_1002F178C(0x3AuLL, 0xE100000000000000, a2 + 8, v7);
    if (v9)
    {
      v10._countAndFlagsBits = 58;
      v10._object = 0xE100000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v10, v7);
    }

    v11 = result;
    v12 = *(a2 + 20);
    v13 = __CFADD__(v12, result);
    v14 = v12 + result;
    if (v13)
    {
      goto LABEL_9;
    }

    *(a2 + 20) = v14;
    result = sub_1004A095C(v4);
    v6 = v11 + result;
    if (__OFADD__(v11, result))
    {
LABEL_10:
      __break(1u);
      return result;
    }
  }

  result = v5 + v6;
  if (__OFADD__(v5, v6))
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  return result;
}

unint64_t sub_10047C4A0()
{
  result = qword_1005DD5C8;
  if (!qword_1005DD5C8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ResponseCodeCopy, &type metadata for ResponseCodeCopy, v0, v1);
    atomic_store(result, &qword_1005DD5C8);
  }

  return result;
}

void sub_10047C504(uint64_t a1)
{
  v3 = *(v1 + 20);
  v4 = sub_1002F178C(0x202AuLL, 0xE200000000000000, v1 + 8, v3);
  if (v5)
  {
    v6._countAndFlagsBits = 8234;
    v6._object = 0xE200000000000000;
    v4 = ByteBuffer._setStringSlowpath(_:at:)(v6, v3);
  }

  v7 = v4;
  v8 = *(v1 + 20);
  v9 = __CFADD__(v8, v4);
  v10 = v8 + v4;
  if (v9)
  {
    __break(1u);
    goto LABEL_11;
  }

  *(v1 + 20) = v10;
  sub_100480F60(a1);
  v12 = v7 + v11;
  if (__OFADD__(v7, v11))
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v13 = *(v1 + 20);
  v14 = sub_1002F178C(0xA0DuLL, 0xE200000000000000, v1 + 8, v13);
  if (v15)
  {
    v16._countAndFlagsBits = 2573;
    v16._object = 0xE200000000000000;
    v14 = ByteBuffer._setStringSlowpath(_:at:)(v16, v13);
  }

  v17 = *(v1 + 20);
  v9 = __CFADD__(v17, v14);
  v18 = v17 + v14;
  if (v9)
  {
    goto LABEL_12;
  }

  *(v1 + 20) = v18;
  if (__OFADD__(v12, v14))
  {
LABEL_13:
    __break(1u);
  }
}

uint64_t sub_10047C5F4(uint64_t a1)
{
  v5 = v1;
  v6 = *(a1 + 32);
  if (v6 >> 6)
  {
    v7 = *a1;
    v8 = *(a1 + 8);
    v2 = *(a1 + 16);
    v4 = *(a1 + 24);
    if (v6 >> 6 == 1)
    {
      v9 = v1[5];
      result = sub_1002F178C(0x59444F42uLL, 0xE400000000000000, (v1 + 2), v9);
      if (v11)
      {
        v12._countAndFlagsBits = 1497648962;
        v12._object = 0xE400000000000000;
        result = ByteBuffer._setStringSlowpath(_:at:)(v12, v9);
      }

      v13 = result;
      v14 = v1[5];
      v15 = __CFADD__(v14, result);
      v16 = v14 + result;
      if (v15)
      {
        __break(1u);
      }

      else
      {
        v1[5] = v16;
        result = sub_100492D08(v7, v8, v2);
        v17 = __OFADD__(v13, result);
        v3 = v13 + result;
        if (!v17)
        {
          if (v6)
          {
            v18 = 0;
LABEL_37:
            result = v3 + v18;
            if (!__OFADD__(v3, v18))
            {
              return result;
            }

            __break(1u);
            goto LABEL_40;
          }

          goto LABEL_33;
        }
      }

      __break(1u);
      goto LABEL_47;
    }
  }

  else
  {
    v7 = 0x5952414E4942;
    v5 = v1 + 5;
    v19 = v1[5];
    v8 = (v5 - 3);
    result = sub_1002F178C(0x5952414E4942uLL, 0xE600000000000000, (v5 - 3), v19);
    if (v20)
    {
      v21._countAndFlagsBits = 0x5952414E4942;
      v21._object = 0xE600000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v21, v19);
    }

    LODWORD(v22) = *v5 + result;
    if (!__CFADD__(*v5, result))
    {
      goto LABEL_43;
    }

    __break(1u);
  }

  v22 = v2 | v8;
  if (!(v2 | v8 | v7 | v4) && v6 == 128)
  {
    v7 = 0x323238434652;
    v24 = v5[5];
    v5 += 5;
    v23 = v24;
    result = sub_1002F178C(0x323238434652uLL, 0xE600000000000000, (v5 - 3), v24);
    if (v25)
    {
      v26._countAndFlagsBits = 0x323238434652;
      v26._object = 0xE600000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v26, v23);
    }

    v22 = (*v5 + result);
    if (!__CFADD__(*v5, result))
    {
      goto LABEL_43;
    }

    __break(1u);
  }

  v27 = v22 | v4;
  if (v6 != 128 || v7 != 1 || v27 != 0)
  {
    v31 = v5[5];
    v5 += 5;
    v30 = v31;
    result = sub_1002F178C(0x482E323238434652uLL, 0xED00005245444145, (v5 - 3), v31);
    if (v32)
    {
      v33._countAndFlagsBits = 0x482E323238434652;
      v33._object = 0xED00005245444145;
      result = ByteBuffer._setStringSlowpath(_:at:)(v33, v30);
    }

    LODWORD(v22) = *v5 + result;
    if (!__CFADD__(*v5, result))
    {
      goto LABEL_43;
    }

    __break(1u);
LABEL_33:
    v44._countAndFlagsBits = sub_1004A6CE4();
    sub_1004A5994(v44);

    v45._countAndFlagsBits = 62;
    v45._object = 0xE100000000000000;
    sub_1004A5994(v45);
    v34 = v5[5];
    v35 = sub_1002F178C(0x3CuLL, 0xE100000000000000, (v5 + 2), v34);
    if (v36)
    {
      v37._countAndFlagsBits = 60;
      v37._object = 0xE100000000000000;
      v35 = ByteBuffer._setStringSlowpath(_:at:)(v37, v34);
    }

    v18 = v35;

    v38 = v5[5];
    v15 = __CFADD__(v38, v18);
    v39 = v38 + v18;
    if (!v15)
    {
      v5[5] = v39;
      goto LABEL_37;
    }

LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
    return result;
  }

LABEL_40:
  v41 = v5[5];
  v5 += 5;
  v40 = v41;
  result = sub_1002F178C(0x542E323238434652uLL, 0xEB00000000545845, (v5 - 3), v41);
  if (v42)
  {
    v43._countAndFlagsBits = 0x542E323238434652;
    v43._object = 0xEB00000000545845;
    result = ByteBuffer._setStringSlowpath(_:at:)(v43, v40);
  }

  LODWORD(v22) = *v5 + result;
  if (__CFADD__(*v5, result))
  {
    goto LABEL_48;
  }

LABEL_43:
  *v5 = v22;
  return result;
}

uint64_t ResponseEncodeBuffer.writeResponse(_:)(uint64_t a1)
{
  v2 = type metadata accessor for ResponsePayload(0);
  __chkstk_darwin(v2 - 8);
  v4 = &v23[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0) - 16];
  v5 = type metadata accessor for Response(0);
  __chkstk_darwin(v5);
  v7 = &v23[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 16];
  sub_100460C04(a1, v7);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v18 = *v7;
      v15 = sub_10047DC94(*v7, *(v7 + 1), *(v7 + 2));
      sub_10001114C(v18);
    }

    else if (EnumCaseMultiPayload == 4)
    {
      sub_10047D5E0(*v7, *(v7 + 1), *(v7 + 4) | (*(v7 + 10) << 32) | (v7[22] << 48));
      v15 = v16;
    }

    else
    {
      ResponseEncodeBuffer.writeContinuationRequest(_:)(0xF000000000000007, 0x676E696C6469uLL, 0xE600000000000000, 0);
      return v20;
    }
  }

  else if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v9 = *(v7 + 9);
      v29 = *(v7 + 8);
      v30 = v9;
      v31 = *(v7 + 10);
      v32 = *(v7 + 88);
      v10 = *(v7 + 5);
      v25 = *(v7 + 4);
      v26 = v10;
      v11 = *(v7 + 7);
      v27 = *(v7 + 6);
      v28 = v11;
      v12 = *(v7 + 1);
      v22 = *v7;
      *v23 = v12;
      v13 = *(v7 + 3);
      *&v23[16] = *(v7 + 2);
      v24 = v13;
      sub_10047CFEC(&v22);
      v15 = v14;
      sub_100304408(&v22);
    }

    else
    {
      v19 = *(v7 + 1);
      v22 = *v7;
      *v23 = v19;
      *&v23[9] = *(v7 + 25);
      v15 = sub_10049EF7C(&v22);
      v33 = v22;
      sub_1002F9A9C(&v33);
      v34[0] = *v23;
      *(v34 + 9) = *&v23[9];
      sub_10030457C(v34);
    }
  }

  else
  {
    sub_10047D7FC(v7, v4);
    sub_10047C504(v4);
    v15 = v17;
    sub_10041A078(v4);
  }

  return v15;
}

unint64_t ResponseEncodeBuffer.readBytes()()
{
  v1 = v0;
  result = EncodeBuffer.nextChunk()();
  if (*(v0 + 20) == *(v0 + 16))
  {
    v3 = result;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v5 = *(v0 + 8);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      swift_beginAccess();
      v6 = ByteBuffer._Storage.allocateStorage(capacity:)(*(v5 + 16));

      *(v1 + 8) = v6;
      v5 = v6;
    }

    swift_beginAccess();
    *(v1 + 24) = *(v5 + 16);
    *(v1 + 28) = 0;
    *(v1 + 30) = 0;
    *(v1 + 16) = 0;
    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t ResponseEncodeBuffer.init(buffer:options:loggingMode:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, char a4@<W3>, char a5@<W4>, uint64_t a6@<X8>)
{
  v7 = a3;
  v8 = a2;
  v11 = HIDWORD(a2);
  v12 = HIDWORD(a3);
  v13 = HIWORD(a3);
  if (a4)
  {
    v14 = 256;
  }

  else
  {
    v14 = 0;
  }

  result = sub_1003DBA20(_swiftEmptyArrayStorage);
  *a6 = a5;
  *(a6 + 5) = 0x80;
  *(a6 + 1) = v14;
  *(a6 + 8) = a1;
  *(a6 + 16) = v8;
  *(a6 + 20) = v11;
  *(a6 + 24) = v7;
  *(a6 + 28) = v12;
  *(a6 + 30) = v13;
  *(a6 + 32) = result;
  *(a6 + 40) = v16;
  *(a6 + 48) = v17;
  return result;
}

uint64_t ResponseEncodeBuffer.init(buffer:capabilities:loggingMode:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a5@<W4>, uint64_t a6@<X8>)
{

  result = sub_1003DBA20(_swiftEmptyArrayStorage);
  *a6 = a5;
  *(a6 + 5) = 0x80;
  *(a6 + 1) = 256;
  *(a6 + 8) = a1;
  *(a6 + 16) = a2;
  *(a6 + 24) = a3;
  *(a6 + 28) = WORD2(a3);
  *(a6 + 30) = BYTE6(a3);
  *(a6 + 32) = result;
  *(a6 + 40) = v12;
  *(a6 + 48) = v13;
  return result;
}

void ResponseEncodeBuffer.writeContinuationRequest(_:)(unint64_t a1, unint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v10 = *(v4 + 20);
  v11 = sub_1002F178C(0x202BuLL, 0xE200000000000000, v4 + 8, v10);
  if (v12)
  {
    v13._countAndFlagsBits = 8235;
    v13._object = 0xE200000000000000;
    v11 = ByteBuffer._setStringSlowpath(_:at:)(v13, v10);
  }

  v14 = v11;
  v15 = *(v4 + 20);
  v16 = __CFADD__(v15, v11);
  v17 = v15 + v11;
  if (v16)
  {
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  *(v4 + 20) = v17;
  if ((a4 & 1) == 0)
  {
    v21 = sub_100482A88(a1, a2, a3);
    v22 = v14 + v21;
    if (!__OFADD__(v14, v21))
    {
      goto LABEL_16;
    }

    __break(1u);
    goto LABEL_13;
  }

  v18 = a2;
  v4 = HIDWORD(a2) - a2;
  if (HIDWORD(a2) < a2)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v19 = (WORD2(a3) << 8) | BYTE6(a3);
  if ((a3 - v19) < HIDWORD(a2))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v32[0] = a1;
  v32[1] = a2;
  v33 = a3;
  v34 = WORD2(a3);
  v35 = BYTE6(a3);
  v36 = a2;
  v37 = HIDWORD(a2);
  swift_beginAccess();
  if (v4 < -4)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  a3 = (4 * ((v4 + 2) / 3));
  a2 = *(a1 + 24);
  a4 = v19 + v18;

  if (v4 < 1)
  {
LABEL_13:
    v20 = _swiftEmptyArrayStorage;
    goto LABEL_14;
  }

  v20 = sub_1004A5C64();
  v20[2] = a3;
LABEL_14:
  v31 = 0;
  sub_1003C511C(&unk_1005BB228, 256, &unk_1005BB348, 256, a2 + a4, v4, (v20 + 4), a3, 0, &v31);
  if (a3 < v31)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v20[2] = v31;
  sub_1003A52D0(v32);
  sub_1003E0AC4(v20);
  v24 = v23;

  v22 = v14 + v24;
  if (__OFADD__(v14, v24))
  {
LABEL_28:
    __break(1u);
    return;
  }

LABEL_16:
  v25 = *(v5 + 20);
  v26 = sub_1002F178C(0xA0DuLL, 0xE200000000000000, v5 + 8, v25);
  if (v27)
  {
    v28._countAndFlagsBits = 2573;
    v28._object = 0xE200000000000000;
    v26 = ByteBuffer._setStringSlowpath(_:at:)(v28, v25);
  }

  v29 = *(v5 + 20);
  v16 = __CFADD__(v29, v26);
  v30 = v29 + v26;
  if (v16)
  {
    goto LABEL_22;
  }

  *(v5 + 20) = v30;
  if (__OFADD__(v22, v26))
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }
}

void sub_10047CFEC(uint64_t a1)
{
  v2 = v1;
  v3 = *(a1 + 144);
  v87[8] = *(a1 + 128);
  v87[9] = v3;
  v87[10] = *(a1 + 160);
  v88 = *(a1 + 176);
  v4 = *(a1 + 80);
  v87[4] = *(a1 + 64);
  v87[5] = v4;
  v5 = *(a1 + 112);
  v87[6] = *(a1 + 96);
  v87[7] = v5;
  v6 = *(a1 + 16);
  v87[0] = *a1;
  v87[1] = v6;
  v7 = *(a1 + 48);
  v87[2] = *(a1 + 32);
  v87[3] = v7;
  v8 = sub_1003043EC(v87);
  if (v8 <= 2)
  {
LABEL_12:
    if (!v8)
    {
LABEL_31:
      v47 = *sub_1002F9BA4(v87);
      v48 = *(v1 + 20);
      v49 = sub_1002F178C(0x202AuLL, 0xE200000000000000, v1 + 8, v48);
      if (v50)
      {
        v51._countAndFlagsBits = 8234;
        v51._object = 0xE200000000000000;
        v49 = ByteBuffer._setStringSlowpath(_:at:)(v51, v48);
      }

      v52 = v49;
      v53 = *(v1 + 20);
      v54 = (v53 + v49);
      if (!__CFADD__(v53, v49))
      {
        *(v1 + 20) = v54;
        LODWORD(v89) = v47;
        v55 = sub_1004A6CE4();
        v57 = v56;
        v58 = sub_1002F178C(v55, v56, v1 + 8, v54);
        if (v59)
        {
          v60._countAndFlagsBits = v55;
          v60._object = v57;
          v58 = ByteBuffer._setStringSlowpath(_:at:)(v60, v54);
        }

        v61 = v58;

        v62 = *(v2 + 20);
        v63 = (v62 + v61);
        if (!__CFADD__(v62, v61))
        {
          *(v2 + 20) = v63;
          if (!__OFADD__(v52, v61))
          {
            v64 = sub_1002F178C(0x2820484354454620uLL, 0xE800000000000000, v2 + 8, (v62 + v61));
            if (v65)
            {
              v66._countAndFlagsBits = 0x2820484354454620;
              v66._object = 0xE800000000000000;
              v64 = ByteBuffer._setStringSlowpath(_:at:)(v66, v63);
            }

            v67 = *(v2 + 20);
            v19 = __CFADD__(v67, v64);
            v68 = v67 + v64;
            if (!v19)
            {
              *(v2 + 20) = v68;
              if (!__OFADD__(v52 + v61, v64))
              {
                return;
              }

              __break(1u);
              goto LABEL_44;
            }

LABEL_67:
            __break(1u);
LABEL_68:
            __break(1u);
LABEL_69:
            __break(1u);
LABEL_70:
            __break(1u);
            goto LABEL_71;
          }

          goto LABEL_65;
        }

        goto LABEL_63;
      }

      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
      __break(1u);
      goto LABEL_64;
    }

    if (v8 != 1)
    {
LABEL_44:
      v69 = sub_1002F9BA4(v87);
      v97 = *(v69 + 128);
      v98 = *(v69 + 144);
      v99 = *(v69 + 160);
      v100 = *(v69 + 176);
      v93 = *(v69 + 64);
      v94 = *(v69 + 80);
      v95 = *(v69 + 96);
      v96 = *(v69 + 112);
      v89 = *v69;
      v90 = *(v69 + 16);
      v91 = *(v69 + 32);
      v92 = *(v69 + 48);
      v70 = *(v2 + 1) | (*(v2 + 5) << 32);
      if ((v70 & 0x8000000000000000) == 0)
      {
LABEL_73:
        __break(1u);
        return;
      }

      if ((*(v2 + 1) & 1) == 0)
      {
        *(v2 + 5) = 0x80;
        *(v2 + 1) = v70 & 0x100 | 1;
        sub_10044A37C(&v89);
        return;
      }

      v71 = *(v2 + 20);
      v72 = sub_1002F178C(0x20uLL, 0xE100000000000000, v2 + 8, v71);
      if (v73)
      {
        v74._countAndFlagsBits = 32;
        v74._object = 0xE100000000000000;
        v72 = ByteBuffer._setStringSlowpath(_:at:)(v74, v71);
      }

      v75 = *(v2 + 20);
      v19 = __CFADD__(v75, v72);
      v76 = v75 + v72;
      if (v19)
      {
        goto LABEL_69;
      }

      *(v2 + 20) = v76;
      if (!__OFADD__(v72, sub_10044A37C(&v89)))
      {
        return;
      }

      __break(1u);
      goto LABEL_52;
    }

    v23 = *sub_1002F9BA4(v87);
    v24 = *(v1 + 20);
    v25 = sub_1002F178C(0x202AuLL, 0xE200000000000000, v1 + 8, v24);
    if (v26)
    {
      v27._countAndFlagsBits = 8234;
      v27._object = 0xE200000000000000;
      v25 = ByteBuffer._setStringSlowpath(_:at:)(v27, v24);
    }

    v28 = v25;
    v29 = *(v1 + 20);
    v19 = __CFADD__(v29, v25);
    v30 = v29 + v25;
    if (v19)
    {
      goto LABEL_62;
    }

    *(v1 + 20) = v30;
    v31 = sub_1004A095C(v23);
    v32 = v28 + v31;
    if (__OFADD__(v28, v31))
    {
LABEL_64:
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
      goto LABEL_67;
    }

    v33 = *(v1 + 20);
    v34 = sub_1002F178C(0x4354454644495520uLL, 0xEB00000000282048, v1 + 8, v33);
    if (v35)
    {
      v36._countAndFlagsBits = 0x4354454644495520;
      v36._object = 0xEB00000000282048;
      v34 = ByteBuffer._setStringSlowpath(_:at:)(v36, v33);
    }

    v37 = *(v1 + 20);
    v19 = __CFADD__(v37, v34);
    v38 = v37 + v34;
    if (v19)
    {
      goto LABEL_66;
    }

    *(v1 + 20) = v38;
    v22 = __OFADD__(v32, v34);
    v8 = v32 + v34;
    if (!v22)
    {
      return;
    }

    __break(1u);
    goto LABEL_24;
  }

  if (v8 <= 4)
  {
    if (v8 != 3)
    {
LABEL_52:
      v77 = sub_1002F9BA4(v87);
      v78 = *v77;
      v79 = *(v77 + 8);
      v80 = *(v77 + 16);
      HIDWORD(v89) = *(v77 + 12);
      LODWORD(v90) = v80;
      *(&v90 + 3) = *(v77 + 19);
      *&v89 = v78;
      DWORD2(v89) = v79;
      if (*v2 != 1)
      {
        ByteBuffer.writeBuffer(_:)(&v89);
        return;
      }

      v101._countAndFlagsBits = sub_1004A6CE4();
      sub_1004A5994(v101);

      v102._countAndFlagsBits = 0x5D736574796220;
      v102._object = 0xE700000000000000;
      sub_1004A5994(v102);
      v81 = *(v2 + 20);
      v82 = sub_1002F178C(0x5BuLL, 0xE100000000000000, v2 + 8, v81);
      if (v83)
      {
        v84._countAndFlagsBits = 91;
        v84._object = 0xE100000000000000;
        v82 = ByteBuffer._setStringSlowpath(_:at:)(v84, v81);
      }

      v85 = v82;

      v86 = *(v2 + 20);
      v19 = __CFADD__(v86, v85);
      v46 = v86 + v85;
      if (!v19)
      {
LABEL_56:
        *(v2 + 20) = v46;
        return;
      }

      goto LABEL_68;
    }

    v9 = sub_1002F9BA4(v87);
    v10 = *(v9 + 32);
    v11 = *(v9 + 16);
    v89 = *v9;
    v90 = v11;
    LOBYTE(v91) = v10;
    v12 = *(v1 + 1) | (*(v1 + 5) << 32);
    if ((v12 & 0x8000000000000000) == 0)
    {
LABEL_71:
      __break(1u);
      goto LABEL_72;
    }

    if ((*(v1 + 1) & 1) == 0)
    {
      *(v1 + 5) = 0x80;
      *(v1 + 1) = v12 & 0x100 | 1;
      sub_10047D860(&v89);
      return;
    }

    v13 = *(v1 + 20);
    v14 = sub_1002F178C(0x20uLL, 0xE100000000000000, v1 + 8, v13);
    if (v15)
    {
      v16._countAndFlagsBits = 32;
      v16._object = 0xE100000000000000;
      v14 = ByteBuffer._setStringSlowpath(_:at:)(v16, v13);
    }

    v17 = v14;
    v18 = *(v1 + 20);
    v19 = __CFADD__(v18, v14);
    v20 = v18 + v14;
    if (v19)
    {
      goto LABEL_70;
    }

    *(v1 + 20) = v20;
    v21 = sub_10047D860(&v89);
    v22 = __OFADD__(v17, v21);
    v8 = v17 + v21;
    if (!v22)
    {
      return;
    }

    __break(1u);
    goto LABEL_12;
  }

LABEL_24:
  if (v8 != 5)
  {
    v39 = *(v1 + 1) | (*(v1 + 5) << 32);
    if ((v39 & 0x8000000000000000) == 0)
    {
LABEL_72:
      __break(1u);
      goto LABEL_73;
    }

    v40 = v39 & 0x8000000100;
    *(v1 + 1) = v40;
    *(v1 + 5) = BYTE4(v40);
    v41 = *(v1 + 20);
    v42 = sub_1002F178C(0xA0D29uLL, 0xE300000000000000, v1 + 8, v41);
    if (v43)
    {
      v44._countAndFlagsBits = 658729;
      v44._object = 0xE300000000000000;
      v42 = ByteBuffer._setStringSlowpath(_:at:)(v44, v41);
    }

    v45 = *(v1 + 20);
    v19 = __CFADD__(v45, v42);
    v46 = v45 + v42;
    if (!v19)
    {
      goto LABEL_56;
    }

    __break(1u);
    goto LABEL_31;
  }
}

void sub_10047D5E0(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = a2;
  v6 = HIDWORD(a2) - a2;
  if (HIDWORD(a2) < a2)
  {
    __break(1u);
    goto LABEL_18;
  }

  v7 = (WORD2(a3) << 8) | BYTE6(a3);
  if ((a3 - v7) < HIDWORD(a2))
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v32[0] = a1;
  v32[1] = a2;
  v33 = a3;
  v34 = WORD2(a3);
  v35 = BYTE6(a3);
  v36 = a2;
  v37 = HIDWORD(a2);
  swift_beginAccess();
  if (v6 < -4)
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v9 = 4 * ((v6 + 2) / 3);
  v10 = *(a1 + 24);
  v11 = v7 + v5;

  if (v6 < 1)
  {
    v12 = _swiftEmptyArrayStorage;
  }

  else
  {
    v12 = sub_1004A5C64();
    v12[2] = v9;
  }

  v31 = 0;
  sub_1003C511C(&unk_1005BB228, 256, &unk_1005BB348, 256, v10 + v11, v6, (v12 + 4), v9, 0, &v31);
  if (v9 < v31)
  {
    goto LABEL_20;
  }

  v12[2] = v31;
  sub_1003A52D0(v32);
  v13 = *(v4 + 20);
  v14 = sub_1002F178C(0x202BuLL, 0xE200000000000000, v4 + 8, v13);
  if (v15)
  {
    v16._countAndFlagsBits = 8235;
    v16._object = 0xE200000000000000;
    v14 = ByteBuffer._setStringSlowpath(_:at:)(v16, v13);
  }

  v17 = v14;
  v18 = *(v4 + 20);
  v19 = __CFADD__(v18, v14);
  v20 = v18 + v14;
  if (v19)
  {
    goto LABEL_21;
  }

  *(v4 + 20) = v20;
  sub_1003E0AC4(v12);
  v22 = v21;

  v23 = __OFADD__(v17, v22);
  v24 = v17 + v22;
  if (v23)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v25 = *(v4 + 20);
  v26 = sub_1002F178C(0xA0DuLL, 0xE200000000000000, v4 + 8, v25);
  if (v27)
  {
    v28._countAndFlagsBits = 2573;
    v28._object = 0xE200000000000000;
    v26 = ByteBuffer._setStringSlowpath(_:at:)(v28, v25);
  }

  v29 = *(v4 + 20);
  v19 = __CFADD__(v29, v26);
  v30 = v29 + v26;
  if (v19)
  {
    goto LABEL_23;
  }

  *(v4 + 20) = v30;
  if (__OFADD__(v24, v26))
  {
LABEL_24:
    __break(1u);
  }
}

uint64_t sub_10047D7FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ResponsePayload(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10047D860(uint64_t a1)
{
  v2 = v1;
  v3 = sub_10047C5F4(a1);
  v4 = *(v1 + 20);
  result = sub_1002F178C(0x20uLL, 0xE100000000000000, v1 + 8, v4);
  if (v6)
  {
    v7._countAndFlagsBits = 32;
    v7._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v7, v4);
  }

  v8 = *(v1 + 20);
  v9 = (v8 + result);
  if (__CFADD__(v8, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  *(v1 + 20) = v9;
  v10 = v3 + result;
  if (__OFADD__(v3, result))
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v18._countAndFlagsBits = sub_1004A6CE4();
  sub_1004A5994(v18);

  v19._countAndFlagsBits = 658813;
  v19._object = 0xE300000000000000;
  sub_1004A5994(v19);
  v11 = sub_1002F178C(0x7BuLL, 0xE100000000000000, v1 + 8, v9);
  if (v12)
  {
    v13._countAndFlagsBits = 123;
    v13._object = 0xE100000000000000;
    v11 = ByteBuffer._setStringSlowpath(_:at:)(v13, v9);
  }

  v14 = v11;

  v15 = *(v2 + 20);
  v16 = __CFADD__(v15, v14);
  v17 = v15 + v14;
  if (v16)
  {
    goto LABEL_12;
  }

  *(v2 + 20) = v17;
  result = v10 + v14;
  if (__OFADD__(v10, v14))
  {
LABEL_13:
    __break(1u);
  }

  return result;
}

uint64_t sub_10047D9BC(char a1, uint64_t (*a2)(__int128 *))
{
  if (qword_1005DB9D0 != -1)
  {
    swift_once();
  }

  v4 = static ByteBufferAllocator.zeroCapacityWithDefaultAllocator;
  v5 = dword_1005DE398;
  v6 = word_1005DE39C;
  v7 = byte_1005DE39E;

  LOBYTE(v13) = a1 & 1;
  BYTE5(v13) = 0x80;
  *(&v13 + 1) = 256;
  *(&v13 + 1) = v4;
  *&v14 = qword_1005DE390;
  DWORD2(v14) = v5;
  WORD6(v14) = v6;
  BYTE14(v14) = v7;
  *&v15 = sub_1003DBA20(_swiftEmptyArrayStorage);
  *(&v15 + 1) = v8;
  v16 = v9;
  result = a2(&v13);
  if (DWORD1(v14) < v14)
  {
    __break(1u);
  }

  else if (DWORD2(v14) - (BYTE14(v14) | (WORD6(v14) << 8)) >= DWORD1(v14))
  {
    v17[0] = *(&v13 + 1);
    v17[1] = v14;
    v18 = DWORD2(v14);
    v19 = WORD6(v14);
    v20 = BYTE14(v14);
    v21 = v14;
    v22 = DWORD1(v14);
    v11 = DWORD1(v14) - v14;
    *&v23[0] = 0;
    *(&v23[0] + 1) = 0xE000000000000000;

    sub_1004A5874(v11);
    sub_1003BB2E4(v17, v23);
    sub_1003A52D0(v17);
    v12 = *&v23[0];
    v23[0] = v13;
    v23[1] = v14;
    v23[2] = v15;
    v24 = v16;
    sub_10047DB60(v23);
    return v12;
  }

  __break(1u);
  return result;
}

Swift::Int ResponseEncodingOptions.hashValue.getter(char a1)
{
  sub_1004A6E94();
  sub_1004A6EC4(a1 & 1);
  return sub_1004A6F14();
}

unint64_t sub_10047DC30()
{
  result = qword_1005DD5D0;
  if (!qword_1005DD5D0)
  {
    result = swift_getWitnessTable("ټ\a", &type metadata for ResponseEncodingOptions, v0, v1);
    atomic_store(result, &qword_1005DD5D0);
  }

  return result;
}

uint64_t sub_10047DC94(unint64_t a1, uint64_t a2, void *a3)
{
  v7 = *(v3 + 20);
  result = sub_1002F178C(0x202AuLL, 0xE200000000000000, v3 + 8, v7);
  if (v9)
  {
    v10._countAndFlagsBits = 8234;
    v10._object = 0xE200000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v10, v7);
  }

  v11 = result;
  v12 = *(v3 + 20);
  v13 = (v12 + result);
  if (__CFADD__(v12, result))
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  *(v3 + 20) = v13;
  result = sub_1002F178C(0x20455942uLL, 0xE400000000000000, v3 + 8, v13);
  if (v14)
  {
    v15._countAndFlagsBits = 541415746;
    v15._object = 0xE400000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v15, v13);
  }

  v16 = result;
  v17 = *(v3 + 20);
  v18 = __CFADD__(v17, result);
  v19 = v17 + result;
  if (v18)
  {
    goto LABEL_15;
  }

  *(v3 + 20) = v19;
  result = sub_100482A88(a1, a2, a3);
  v20 = v16 + result;
  if (__OFADD__(v16, result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v21 = v11 + v20;
  if (__OFADD__(v11, v20))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v22 = *(v3 + 20);
  result = sub_1002F178C(0xA0DuLL, 0xE200000000000000, v3 + 8, v22);
  if (v23)
  {
    v24._countAndFlagsBits = 2573;
    v24._object = 0xE200000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v24, v22);
  }

  v25 = *(v3 + 20);
  v18 = __CFADD__(v25, result);
  v26 = v25 + result;
  if (v18)
  {
    goto LABEL_18;
  }

  *(v3 + 20) = v26;
  v27 = __OFADD__(v21, result);
  result += v21;
  if (v27)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

double sub_10047DDFC@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  v3 = a1[1];
  *a2 = v2;
  a2[1] = v3;

  return result;
}

Swift::Int sub_10047DE08(Swift::UInt a1, Swift::UInt a2, unsigned __int8 a3)
{
  sub_1004A6E94();
  if (a3)
  {
    if (a3 == 1)
    {
      v6 = a3;
    }

    else
    {
      sub_1004A6EB4(2uLL);
      v6 = a1;
      a1 = a2;
    }

    goto LABEL_7;
  }

  sub_1004A6EB4(0);
  v7 = 0;
  if ((a2 & 1) == 0)
  {
    v6 = 1;
LABEL_7:
    sub_1004A6EB4(v6);
    v7 = a1;
  }

  sub_1004A6EB4(v7);
  return sub_1004A6F14();
}

void sub_10047DEBC()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  if (*(v0 + 16))
  {
    if (v3 != 1)
    {
      sub_1004A6EB4(2uLL);
      v3 = v1;
      v1 = v2;
    }

    goto LABEL_6;
  }

  sub_1004A6EB4(0);
  v4 = 0;
  if ((v2 & 1) == 0)
  {
    v3 = 1;
LABEL_6:
    sub_1004A6EB4(v3);
    v4 = v1;
  }

  sub_1004A6EB4(v4);
}

Swift::Int sub_10047DF30(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  sub_1004A6E94();
  if (v4)
  {
    if (v4 != 1)
    {
      sub_1004A6EB4(2uLL);
      v4 = v2;
      v2 = v3;
    }

    goto LABEL_6;
  }

  sub_1004A6EB4(0);
  v5 = 0;
  if ((v3 & 1) == 0)
  {
    v4 = 1;
LABEL_6:
    sub_1004A6EB4(v4);
    v5 = v2;
  }

  sub_1004A6EB4(v5);
  return sub_1004A6F14();
}

uint64_t ResponseParser.Options.parsedStringCache.getter()
{
  v1 = *(v0 + 32);
  sub_1001C1F84(v1, *(v0 + 40));
  return v1;
}

uint64_t ResponseParser.Options.parsedStringCache.setter(uint64_t a1, uint64_t a2)
{
  result = sub_1000B5158(*(v2 + 32), *(v2 + 40));
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t ResponseParser.Options.init(bufferLimit:messageAttributeLimit:bodySizeLimit:literalSizeLimit:parsedStringCache:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  *a7 = result;
  a7[1] = a2;
  a7[2] = a3;
  a7[3] = a4;
  a7[4] = a5;
  a7[5] = a6;
  return result;
}

double ResponseParser.init(options:)@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[3];
  v7 = a1[4];
  if (v7)
  {
    v8 = a1[5];
    v9 = swift_allocObject();
    *(v9 + 16) = v7;
    *(v9 + 24) = v8;
    v10 = sub_10047E1C0;
  }

  else
  {
    v10 = sub_10047DDFC;
    v9 = 0;
  }

  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  *(v11 + 24) = v9;
  v12 = a1[2];
  *a2 = sub_10047E180;
  *(a2 + 8) = v11;
  *(a2 + 16) = v6;
  *(a2 + 24) = 0x7FFFFFFFFFFFFFFFLL;
  *(a2 + 32) = v4;
  *(a2 + 40) = v5;
  *(a2 + 48) = v12;
  result = 0.0;
  *(a2 + 56) = xmmword_1004B1230;
  *(a2 + 72) = 0;
  return result;
}

uint64_t sub_10047E148()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10047E180(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v6[0] = a1;
  v6[1] = a2;
  v3(&v5, v6);
  return v5;
}

uint64_t sub_10047E1C0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(v2 + 16))(*a1, a1[1]);
  *a2 = result;
  a2[1] = v5;
  return result;
}

void ResponseParser.parseResponseStream(buffer:)(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v49 = a2;
  v4 = type metadata accessor for Response(0);
  __chkstk_darwin(v4);
  v6 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v47 - v8;
  v10 = *a1;
  v12 = *(a1 + 2);
  v11 = *(a1 + 3);
  v13 = *(a1 + 4);
  v14 = *(a1 + 10);
  v15 = *(a1 + 22);
  v62 = *a1;
  v68 = v11;
  v69 = v12;
  v63 = v12;
  v64 = v11;
  v65 = v13;
  v66 = v14;
  v67 = v15;
  v17 = *(v2 + 56);
  v16 = *(v2 + 64);
  if (!*(v2 + 72))
  {
    swift_retain_n();
    v22 = v16 & 1;
    v9 = v49;
    v16 = v48;
    sub_10047EA9C(&v62, 1, 0x64, v22, v2, v49);
    if (v16)
    {

      v62 = v10;
      v21 = v68;
      v20 = v69;
      v63 = v69;
      v64 = v68;
      v65 = v13;
      v66 = v14;
      v67 = v15;
      swift_willThrow();
      v19 = v16;
      goto LABEL_10;
    }

    goto LABEL_20;
  }

  if (*(v2 + 72) != 1)
  {
    if (!v17)
    {
LABEL_23:
      if (__OFADD__(v16, 1))
      {
LABEL_42:
        __break(1u);
        goto LABEL_43;
      }

      sub_1002F9F80(&v50);
      v29 = v59;
      *(v9 + 8) = v58;
      *(v9 + 9) = v29;
      *(v9 + 10) = v60;
      *(v9 + 88) = v61;
      v30 = v55;
      *(v9 + 4) = v54;
      *(v9 + 5) = v30;
      v31 = v57;
      *(v9 + 6) = v56;
      *(v9 + 7) = v31;
      v32 = v51;
      *v9 = v50;
      *(v9 + 1) = v32;
      v33 = v53;
      *(v9 + 2) = v52;
      *(v9 + 3) = v33;
      swift_storeEnumTagMultiPayload();
      *(v2 + 56) = v16 + 1;
      *(v2 + 64) = 0;
      *(v2 + 72) = 0;
      v34 = v49;
      sub_10047B200(v9, v49, type metadata accessor for Response);

      goto LABEL_31;
    }

    v23 = *(v2 + 64);
    v21 = v68;
    v24 = v68 - v69;
    if (v68 == v69)
    {
      sub_1003A5324();
      v19 = swift_allocError();
      swift_willThrow();

      v20 = v69;
      goto LABEL_10;
    }

    if (v17 > v24)
    {
      v35 = ByteBuffer.readSlice(length:)(v24);
      if (v35)
      {
LABEL_29:
        v38 = (HIDWORD(v36) - v36);
        v39 = v17 - v38;
        if (__OFSUB__(v17, v38))
        {
LABEL_43:
          __break(1u);
          goto LABEL_44;
        }

        *&v50 = v35;
        *(&v50 + 1) = v36;
        LODWORD(v51) = v37;
        WORD2(v51) = WORD2(v37);
        BYTE6(v51) = BYTE6(v37);
        sub_1002F9F6C(&v50);
        v40 = v59;
        *(v6 + 8) = v58;
        *(v6 + 9) = v40;
        *(v6 + 10) = v60;
        *(v6 + 88) = v61;
        v41 = v55;
        *(v6 + 4) = v54;
        *(v6 + 5) = v41;
        v42 = v57;
        *(v6 + 6) = v56;
        *(v6 + 7) = v42;
        v43 = v51;
        *v6 = v50;
        *(v6 + 1) = v43;
        v44 = v53;
        *(v6 + 2) = v52;
        *(v6 + 3) = v44;
        swift_storeEnumTagMultiPayload();
        *(v2 + 56) = v39;
        *(v2 + 64) = v23;
        *(v2 + 72) = 2;
        v34 = v49;
        sub_10047B200(v6, v49, type metadata accessor for Response);
LABEL_31:
        v45 = v69;
        v46 = type metadata accessor for ResponseOrContinuationRequest(0);
        swift_storeEnumTagMultiPayload();
        (*(*(v46 - 8) + 56))(v34, 0, 1, v46);
        v26 = v63;
        if (__CFADD__(v45, v63 - v45))
        {
LABEL_38:
          __break(1u);
          goto LABEL_39;
        }

        if (v68 < v63)
        {
LABEL_39:
          __break(1u);
          goto LABEL_40;
        }

        goto LABEL_33;
      }

      __break(1u);
    }

    v35 = ByteBuffer.readSlice(length:)(v17);
    if (!v35)
    {
LABEL_44:
      __break(1u);
      return;
    }

    goto LABEL_29;
  }

  v18 = v49;
  v16 = v48;
  sub_10047E878(&v62, v17, v49);
  if (!v16)
  {
    v2 = type metadata accessor for ResponseOrContinuationRequest(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v2 - 8) + 56))(v18, 0, 1, v2);
    v26 = v68 - v64 + v63;
    if (__CFADD__(v69, v68 - (v69 + v64) + v63))
    {
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    if (v68 >= v26)
    {
      goto LABEL_33;
    }

    __break(1u);
LABEL_20:

    v28 = type metadata accessor for ResponseOrContinuationRequest(0);
    (*(*(v28 - 8) + 56))(v9, 0, 1, v28);
    v26 = v68 - v64 + v63;
    if (__CFADD__(v69, v68 - (v69 + v64) + v63))
    {
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    if (v68 >= v26)
    {
      goto LABEL_33;
    }

    __break(1u);
    goto LABEL_23;
  }

  v19 = v16;
  v21 = v68;
  v20 = v69;
LABEL_10:
  *&v50 = v19;
  swift_errorRetain();
  sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
  if (!swift_dynamicCast())
  {
    goto LABEL_14;
  }

  v25 = type metadata accessor for ResponseOrContinuationRequest(0);
  (*(*(v25 - 8) + 56))(v49, 1, 1, v25);

  v26 = v21 - v64 + v63;
  if (__CFADD__(v20, v21 - (v20 + v64) + v63))
  {
    __break(1u);
    goto LABEL_36;
  }

  if (v21 < v26)
  {
    __break(1u);
LABEL_14:

    v27 = v21 - v64 + v63;
    if (!__CFADD__(v20, v21 - (v20 + v64) + v63))
    {
      if (v21 >= v27)
      {
        *(a1 + 2) = v27;

        return;
      }

      goto LABEL_37;
    }

LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

LABEL_33:
  *(a1 + 2) = v26;
}

uint64_t sub_10047E878@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v8 = *a1;
  v9 = *(a1 + 8);
  v10 = *(a1 + 16);
  v11 = *(a1 + 20);
  v12 = *(a1 + 22);

  sub_10042B7FC(a1, 1, 100, &v31);
  if (v4)
  {

    *a1 = v8;
    *(a1 + 8) = v9;
    *(a1 + 16) = v10;
    *(a1 + 20) = v11;
    *(a1 + 22) = v12;
    return swift_willThrow();
  }

  else
  {

    v19 = v31;
    LODWORD(v20) = v32;
    WORD2(v20) = v33;
    BYTE6(v20) = v34;
    sub_1002F9F6C(&v19);
    v14 = v28;
    *(a3 + 128) = v27;
    *(a3 + 144) = v14;
    *(a3 + 160) = v29;
    *(a3 + 176) = v30;
    v15 = v24;
    *(a3 + 64) = v23;
    *(a3 + 80) = v15;
    v16 = v26;
    *(a3 + 96) = v25;
    *(a3 + 112) = v16;
    v17 = v20;
    *a3 = v19;
    *(a3 + 16) = v17;
    v18 = v22;
    *(a3 + 32) = v21;
    *(a3 + 48) = v18;
    type metadata accessor for Response(0);
    result = swift_storeEnumTagMultiPayload();
    if (*(v3 + 72) == 1 && *(v3 + 56) == a2)
    {
      *(v3 + 56) = 0;
      *(v3 + 64) = a2;
      *(v3 + 72) = 2;
    }

    else
    {

      sub_1004A6724(19);
      v35._object = 0x80000001004B0F30;
      v35._countAndFlagsBits = 0xD000000000000011;
      sub_1004A5994(v35);
      sub_1004A6934();
      result = sub_1004A69A4();
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_10047EA9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, int a4@<W4>, __int128 *a5@<X5>, uint64_t a6@<X8>)
{
  v7 = v6;
  LODWORD(v127) = a4;
  v13 = type metadata accessor for ResponsePayload(0);
  __chkstk_darwin(v13 - 8);
  v15 = &v117[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = type metadata accessor for ResponseParser._Response(0);
  __chkstk_darwin(v16);
  v124 = &v117[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v18);
  v125 = a2;
  v126 = &v117[-v20];
  v21 = __OFADD__(a2, 1);
  v22 = (a2 + 1);
  if (v21)
  {
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
    *&v139 = 0;
    *(&v139 + 1) = 0xE000000000000000;
    sub_1004A6724(19);
    v135 = v139;
    v168._object = 0x80000001004B0F30;
    v168._countAndFlagsBits = 0xD000000000000011;
    sub_1004A5994(v168);
    *&v139 = v7;
    *(&v139 + 1) = a3;
    LOBYTE(v140) = v22;
    sub_1004A6934();
    result = sub_1004A69A4();
    __break(1u);
    return result;
  }

  v122 = v15;
  v123 = v19;
  v128 = a6;
  *&v130 = a3;
  if (v22 >= a3)
  {
    sub_1003A5228();
    swift_allocError();
    *v29 = a3;
  }

  else
  {
    v23 = a5;
    v24 = *a1;
    v25 = *(a1 + 8);
    v26 = *(a1 + 16);
    v27 = *(a1 + 20);
    v28 = *(a1 + 22);
    sub_100469DF8(a1);
    if (!v6)
    {
      a5 = v23;
      goto LABEL_9;
    }

    *a1 = v24;
    *(a1 + 8) = v25;
    *(a1 + 16) = v26;
    *(a1 + 20) = v27;
    *(a1 + 22) = v28;
    a5 = v23;
    a3 = v130;
  }

  swift_willThrow();

  if (v22 < a3)
  {
LABEL_9:
    v32 = *(a1 + 16);
    v119 = *(a1 + 20);
    v120 = v32;
    v118 = *(a1 + 22);
    v33 = *a5;
    v34 = *(a5 + 1);
    v35 = a5;
    v36 = *(a5 + 2);
    *&v129 = v35;
    v37 = *(v35 + 3);

    v121 = a1;
    if (v127)
    {
      v38 = v164;
      sub_10040424C(a1, v22, v130, v33, v34, v36, v37, v164);
    }

    else
    {
      v38 = v165;
      sub_10040512C(a1, v22, v130, v33, v34, v36, v37, v165);
    }

    a5 = v129;
    a3 = v126;
    v48 = *(v38 + 9);
    v126[8] = *(v38 + 8);
    a3[9] = v48;
    a3[10] = *(v38 + 10);
    *(a3 + 88) = *(v38 + 88);
    v49 = *(v38 + 5);
    a3[4] = *(v38 + 4);
    a3[5] = v49;
    v50 = *(v38 + 7);
    a3[6] = *(v38 + 6);
    a3[7] = v50;
    v51 = *(v38 + 1);
    *a3 = *v38;
    a3[1] = v51;
    v52 = *(v38 + 3);
    a3[2] = *(v38 + 2);
    a3[3] = v52;
    a1 = v121;
    goto LABEL_25;
  }

  sub_1003A5228();
  v30 = swift_allocError();
  *v31 = a3;
  swift_willThrow();
  *&v151[0] = v30;
  swift_errorRetain();
  sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
  if (swift_dynamicCast())
  {
  }

  else
  {

    *&v151[0] = v30;
    swift_errorRetain();
    if ((swift_dynamicCast() & 1) == 0)
    {

      goto LABEL_22;
    }
  }

  if (v22 >= a3)
  {
    sub_1003A5228();
    v30 = swift_allocError();
    *v47 = a3;
    swift_willThrow();
    goto LABEL_22;
  }

  v39 = *a1;
  v40 = *(a1 + 16);
  v119 = *(a1 + 20);
  v120 = v40;
  v118 = *(a1 + 22);
  v41 = a3;
  v42 = *a5;
  v43 = *(a5 + 1);
  *&v129 = a5;
  v44 = *(a5 + 2);
  v45 = *(a5 + 3);
  v127 = v39;

  v46 = v122;
  sub_100412604(a1, v22, v41, v42, v43, v44, v45);

  a3 = v126;
  sub_10047B200(v46, v126, type metadata accessor for ResponsePayload);
  a5 = v129;
LABEL_25:
  LOBYTE(v22) = v123;
  swift_storeEnumTagMultiPayload();

  v7 = v124;
  sub_100480A54(a3, v124);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_100480D50(a3, type metadata accessor for ResponseParser._Response);
    sub_10047B200(v7, v128, type metadata accessor for ResponsePayload);
    type metadata accessor for Response(0);
LABEL_60:
    swift_storeEnumTagMultiPayload();
    type metadata accessor for ResponseOrContinuationRequest(0);
    return swift_storeEnumTagMultiPayload();
  }

  v56 = *(v7 + 144);
  v57 = *(v7 + 112);
  v158 = *(v7 + 128);
  v159 = v56;
  v58 = *(v7 + 144);
  v160 = *(v7 + 160);
  v59 = *(v7 + 80);
  v60 = *(v7 + 48);
  v154 = *(v7 + 64);
  v155 = v59;
  v61 = *(v7 + 80);
  v62 = *(v7 + 112);
  v156 = *(v7 + 96);
  v157 = v62;
  v63 = *(v7 + 16);
  v151[0] = *v7;
  v151[1] = v63;
  v64 = *(v7 + 48);
  v66 = *v7;
  v65 = *(v7 + 16);
  v152 = *(v7 + 32);
  v153 = v64;
  v162[8] = v158;
  v162[9] = v58;
  v162[10] = *(v7 + 160);
  v162[4] = v154;
  v162[5] = v61;
  v162[6] = v156;
  v162[7] = v57;
  v162[0] = v66;
  v162[1] = v65;
  v161 = *(v7 + 176);
  v163 = *(v7 + 176);
  v162[2] = v152;
  v162[3] = v60;
  v67 = sub_1003043EC(v162);
  if (v67 <= 2)
  {
    if (!v67)
    {
      v82 = sub_1002F9BA4(v162);
      v7 = *(a5 + 7);
      a3 = *(a5 + 8);
      v83 = a5 + 56;
      LOBYTE(v22) = v83[16];
      if (!v22 && (a3 & 1) != 0)
      {
        v84 = *v82;
        sub_100480D50(v126, type metadata accessor for ResponseParser._Response);
        *v83 = 0;
        *(v83 + 1) = 0;
        v83[16] = 0;
        LODWORD(v139) = v84;
        sub_1002F9BA4(&v139);
        goto LABEL_59;
      }

      goto LABEL_71;
    }

    if (v67 == 1)
    {
      v68 = sub_1002F9BA4(v162);
      v7 = *(a5 + 7);
      a3 = *(a5 + 8);
      v69 = a5 + 56;
      LOBYTE(v22) = v69[16];
      if (!v22 && (a3 & 1) != 0)
      {
        v70 = *v68;
        sub_100480D50(v126, type metadata accessor for ResponseParser._Response);
        *v69 = 0;
        *(v69 + 1) = 0;
        v69[16] = 0;
        LODWORD(v139) = v70;
        sub_1002F9B90(&v139);
LABEL_59:
        v107 = v148;
        v108 = v128;
        *(v128 + 128) = v147;
        *(v108 + 144) = v107;
        *(v108 + 160) = v149;
        *(v108 + 176) = v150;
        v109 = v144;
        *(v108 + 64) = v143;
        *(v108 + 80) = v109;
        v110 = v146;
        *(v108 + 96) = v145;
        *(v108 + 112) = v110;
        v111 = v140;
        *v108 = v139;
        *(v108 + 16) = v111;
        v112 = v142;
        *(v108 + 32) = v141;
        *(v108 + 48) = v112;
        type metadata accessor for Response(0);
        goto LABEL_60;
      }

      goto LABEL_71;
    }

    v92 = sub_1002F9BA4(v162);
    if (!*(a5 + 72) && (a5[4] & 1) == 0)
    {
      v93 = *(a5 + 5);
      v94 = *(a5 + 7);
      if (v94 < v93)
      {
        v95 = v92;
        sub_100480D50(v126, type metadata accessor for ResponseParser._Response);
        *(a5 + 7) = v94 + 1;
        *(a5 + 8) = 0;
        *(a5 + 72) = 0;
        v96 = *(v95 + 48);
        v98 = *v95;
        v97 = *(v95 + 16);
        v141 = *(v95 + 32);
        v142 = v96;
        v139 = v98;
        v140 = v97;
        v99 = *(v95 + 112);
        v101 = *(v95 + 64);
        v100 = *(v95 + 80);
        v145 = *(v95 + 96);
        v146 = v99;
        v143 = v101;
        v144 = v100;
        v103 = *(v95 + 144);
        v102 = *(v95 + 160);
        v104 = *(v95 + 128);
        v150 = *(v95 + 176);
        v148 = v103;
        v149 = v102;
        v147 = v104;
        sub_1002F9E70(&v139);
        goto LABEL_59;
      }

      sub_100480AB8();
      v30 = swift_allocError();
      *v115 = v94;
      v115[1] = v93;
      swift_willThrow();
      sub_100480B0C(v151);
      goto LABEL_65;
    }

    goto LABEL_67;
  }

  v22 = &v135;
  if (v67 != 3)
  {
    if (v67 != 4)
    {
      if (*(a5 + 72) || (a5[4] & 1) != 0)
      {
        goto LABEL_68;
      }

      v105 = *(a5 + 5);
      v106 = *(a5 + 7);
      if (v106 < v105)
      {
        sub_100480D50(v126, type metadata accessor for ResponseParser._Response);
        *(a5 + 56) = xmmword_1004B1230;
        *(a5 + 72) = 0;
        sub_1002F9EEC(&v139);
        goto LABEL_59;
      }

      sub_100480AB8();
      v30 = swift_allocError();
      *v116 = v106;
      v116[1] = v105;
      swift_willThrow();
LABEL_65:
      sub_100480D50(v126, type metadata accessor for ResponseParser._Response);
      goto LABEL_19;
    }

    v71 = sub_1002F9BA4(v162);
    v72 = *v71;
    v73 = *(v71 + 16);
    a3 = *(v71 + 32);
    v7 = *(v71 + 40);
    *(v138 + 9) = *(a5 + 57);
    v74 = a5[3];
    v137 = a5[2];
    v138[0] = v74;
    v75 = a5[1];
    v135 = *a5;
    v136 = v75;
    if ((v7 & 0x8000000000000000) != 0 || (v22 = *&v138[0], v7 < *&v138[0]))
    {
      *(v134 + 9) = *(a5 + 57);
      v76 = a5[3];
      v133 = a5[2];
      v134[0] = v76;
      v77 = a5[1];
      v131 = *a5;
      v132 = v77;
      if (BYTE8(v134[1]) || (v134[1] & 1) != 0)
      {
        goto LABEL_70;
      }

      v78 = a5;
      v79 = *(&v134[0] + 1);
      v80 = *(&v133 + 1);
      if (*(&v134[0] + 1) < *(&v133 + 1))
      {
        v129 = v73;
        v130 = v72;
        sub_100480D50(v126, type metadata accessor for ResponseParser._Response);
        *(v78 + 7) = v79 + 1;
        *(v78 + 8) = 0;
        v81 = 1;
LABEL_50:
        *(v78 + 72) = v81;
        v139 = v130;
        v140 = v129;
        LOBYTE(v141) = a3;
        *(&v141 + 1) = v7;
        sub_1002F9F58(&v139);
        goto LABEL_59;
      }

      goto LABEL_61;
    }

LABEL_62:
    sub_1004809EC(&v135, &v139);
    sub_100480B0C(v151);
    sub_100480B60();
    v30 = swift_allocError();
    *v114 = v7;
    v114[1] = v22;
    swift_willThrow();
    sub_100480A24(&v135);
    goto LABEL_65;
  }

  v85 = sub_1002F9BA4(v162);
  v86 = *v85;
  v87 = *(v85 + 16);
  a3 = *(v85 + 32);
  v7 = *(v85 + 40);
  *(v138 + 9) = *(a5 + 57);
  v88 = a5[3];
  v137 = a5[2];
  v138[0] = v88;
  v89 = a5[1];
  v135 = *a5;
  v136 = v89;
  if ((v7 & 0x8000000000000000) == 0)
  {
    v22 = *&v138[0];
    if (v7 >= *&v138[0])
    {
      goto LABEL_62;
    }
  }

  *(v134 + 9) = *(a5 + 57);
  v90 = a5[3];
  v133 = a5[2];
  v134[0] = v90;
  v91 = a5[1];
  v131 = *a5;
  v132 = v91;
  if (BYTE8(v134[1]) || (v134[1] & 1) != 0)
  {
    goto LABEL_69;
  }

  v78 = a5;
  v79 = *(&v134[0] + 1);
  v80 = *(&v133 + 1);
  if (*(&v134[0] + 1) < *(&v133 + 1))
  {
    v129 = v87;
    v130 = v86;
    sub_100480D50(v126, type metadata accessor for ResponseParser._Response);
    *(v78 + 7) = v7;
    *(v78 + 8) = v79 + 1;
    v81 = 2;
    goto LABEL_50;
  }

LABEL_61:
  sub_1004809EC(&v131, &v139);
  sub_100480B0C(v151);
  sub_100480AB8();
  v30 = swift_allocError();
  *v113 = v79;
  v113[1] = v80;
  swift_willThrow();
  sub_100480A24(&v131);
  sub_100480D50(v126, type metadata accessor for ResponseParser._Response);
  a5 = v78;
LABEL_19:
  a3 = v130;
LABEL_22:
  *&v139 = v30;
  swift_errorRetain();
  sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
  if (swift_dynamicCast())
  {

    v53 = a5[3];
    v166[2] = a5[2];
    v167[0] = v53;
    *(v167 + 9) = *(a5 + 57);
    v54 = a5[1];
    v166[0] = *a5;
    v166[1] = v54;
    sub_1004809EC(v166, v162);
    sub_10047F920(a1, v125, a3);
    sub_100480A24(v166);
  }
}

uint64_t sub_10047F728(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 73))
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

uint64_t sub_10047F770(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 73) = 1;
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

    *(result + 73) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10047F7D4(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_10047F7EC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 48))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 32);
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

uint64_t sub_10047F848(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2;
    }
  }

  return result;
}

unint64_t sub_10047F8CC()
{
  result = qword_1005DD5D8;
  if (!qword_1005DD5D8)
  {
    result = swift_getWitnessTable(byte_10050B280, &type metadata for ResponseParser.Mode, v0, v1);
    atomic_store(result, &qword_1005DD5D8);
  }

  return result;
}

uint64_t sub_10047F920(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  v8 = swift_allocObject();
  v9 = v3[3];
  v8[3] = v3[2];
  v8[4] = v9;
  *(v8 + 73) = *(v3 + 57);
  v10 = v3[1];
  v8[1] = *v3;
  v8[2] = v10;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_100480BEC;
  *(v11 + 24) = v8;
  v30[0] = sub_100411AC0;
  v30[1] = v11;
  v12 = swift_allocObject();
  v13 = v3[3];
  v12[3] = v3[2];
  v12[4] = v13;
  *(v12 + 73) = *(v3 + 57);
  v14 = v3[1];
  v12[1] = *v3;
  v12[2] = v14;
  result = swift_allocObject();
  *(result + 16) = sub_100480C08;
  *(result + 24) = v12;
  v30[2] = sub_100411C00;
  v30[3] = result;
  v16 = __OFADD__(a2, 1);
  v17 = a2 + 1;
  if (!v16)
  {
    sub_1004809EC(v3, v29);
    sub_1004809EC(v3, v29);
    v18 = 0;
    for (i = 0; ; i = 1)
    {
      v27 = v18;
      *(swift_allocObject() + 16) = *&v30[2 * i];
      if (v17 >= a3)
      {
        sub_1003A5228();
        swift_allocError();
        *v25 = a3;
      }

      else
      {
        v20 = *a1;
        v21 = a1[1];
        v22 = *(a1 + 4);
        v23 = *(a1 + 10);
        v24 = *(a1 + 22);

        sub_100411BE4(a1, v17, a3);
        if (!v5)
        {

          sub_10000C9C0(&qword_1005DA5D8, &qword_100504BA0);
          return swift_arrayDestroy();
        }

        *a1 = v20;
        a1[1] = v21;
        *(a1 + 4) = v22;
        *(a1 + 10) = v23;
        *(a1 + 22) = v24;
      }

      swift_willThrow();
      swift_errorRetain();
      sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
      if (swift_dynamicCast())
      {
      }

      else
      {

        swift_errorRetain();
        if ((swift_dynamicCast() & 1) == 0)
        {
          sub_10000C9C0(&qword_1005DA5D8, &qword_100504BA0);
          swift_arrayDestroy();
        }
      }

      v5 = 0;
      v18 = 1;
      if (v27)
      {
        sub_10000C9C0(&qword_1005DA5D8, &qword_100504BA0);
        swift_arrayDestroy();
        sub_1003A527C();
        swift_allocError();
        *v26 = 0xD000000000000019;
        v26[1] = 0x80000001004B08C0;
        v26[2] = 0xD000000000000020;
        v26[3] = 0x80000001004B03C0;
        v26[4] = 284;
        return swift_willThrow();
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10047FD68@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  result = sub_100423A7C(a1, a2, a3, *a4, a4[1], a4[2], a4[3]);
  if (!v5)
  {
    *a5 = result;
    *(a5 + 8) = v8;
    *(a5 + 16) = v9;
    *(a5 + 24) = v10 & 1;
    type metadata accessor for ResponseOrContinuationRequest(0);
    return swift_storeEnumTagMultiPayload();
  }

  return result;
}

uint64_t *sub_10047FDCC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (**a4)(void)@<X3>, _OWORD *a5@<X8>)
{
  result = sub_100412E98(a1, a2, a3, *a4, a4[1], a4[2], a4[3], &v9);
  if (!v5)
  {
    v8 = v10[0];
    *a5 = v9;
    a5[1] = v8;
    *(a5 + 25) = *(v10 + 9);
    type metadata accessor for Response(0);
    swift_storeEnumTagMultiPayload();
    type metadata accessor for ResponseOrContinuationRequest(0);
    return swift_storeEnumTagMultiPayload();
  }

  return result;
}

Swift::Int sub_10047FE54()
{
  v1 = v0;
  v2 = type metadata accessor for ResponsePayload(0);
  __chkstk_darwin(v2 - 8);
  v4 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ResponseParser._Response(0);
  __chkstk_darwin(v5);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1004A6E94();
  sub_100480A54(v1, v7);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = *(v7 + 9);
    v39 = *(v7 + 8);
    v40 = v8;
    v41 = *(v7 + 10);
    v42 = *(v7 + 88);
    v9 = *(v7 + 5);
    v35 = *(v7 + 4);
    v36 = v9;
    v10 = *(v7 + 7);
    v37 = *(v7 + 6);
    v38 = v10;
    v11 = *(v7 + 1);
    v31 = *v7;
    v32 = v11;
    v12 = *(v7 + 3);
    v33 = *(v7 + 2);
    v34 = v12;
    sub_1004A6EB4(1uLL);
    v43[8] = v39;
    v43[9] = v40;
    v43[10] = v41;
    v44 = v42;
    v43[4] = v35;
    v43[5] = v36;
    v43[6] = v37;
    v43[7] = v38;
    v43[0] = v31;
    v43[1] = v32;
    v43[2] = v33;
    v43[3] = v34;
    v13 = sub_1003043EC(v43);
    if (v13 > 2)
    {
      if (v13 == 3)
      {
        v21 = sub_1002F9BA4(v43);
        v22 = *(v21 + 32);
        v18 = *(v21 + 40);
        v23 = *(v21 + 16);
        v46 = *v21;
        v47 = v23;
        LOBYTE(v48) = v22;
        v20 = 3;
      }

      else
      {
        if (v13 != 4)
        {
          sub_1004A6EB4(5uLL);
          return sub_1004A6F14();
        }

        v16 = sub_1002F9BA4(v43);
        v17 = *(v16 + 32);
        v18 = *(v16 + 40);
        v19 = *(v16 + 16);
        v46 = *v16;
        v47 = v19;
        LOBYTE(v48) = v17;
        v20 = 4;
      }

      sub_1004A6EB4(v20);
      StreamingKind.hash(into:)(v45);
      sub_1004A6EB4(v18);
    }

    else
    {
      if (!v13)
      {
        v14 = *sub_1002F9BA4(v43);
        v15 = 0;
        goto LABEL_11;
      }

      if (v13 == 1)
      {
        v14 = *sub_1002F9BA4(v43);
        v15 = 1;
LABEL_11:
        sub_1004A6EB4(v15);
        sub_1004A6EE4(v14);
        return sub_1004A6F14();
      }

      v24 = sub_1002F9BA4(v43);
      v25 = *(v24 + 144);
      v54 = *(v24 + 128);
      v55 = v25;
      v56 = *(v24 + 160);
      v57 = *(v24 + 176);
      v26 = *(v24 + 80);
      v50 = *(v24 + 64);
      v51 = v26;
      v27 = *(v24 + 112);
      v52 = *(v24 + 96);
      v53 = v27;
      v28 = *(v24 + 16);
      v46 = *v24;
      v47 = v28;
      v29 = *(v24 + 48);
      v48 = *(v24 + 32);
      v49 = v29;
      sub_1004A6EB4(2uLL);
      MessageAttribute.hash(into:)(v45);
    }

    sub_100480B0C(&v31);
    return sub_1004A6F14();
  }

  sub_10047B200(v7, v4, type metadata accessor for ResponsePayload);
  sub_1004A6EB4(0);
  ResponsePayload.hash(into:)(v45);
  sub_100480D50(v4, type metadata accessor for ResponsePayload);
  return sub_1004A6F14();
}

uint64_t sub_100480174(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = type metadata accessor for ResponsePayload(0);
  __chkstk_darwin(v5 - 8);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100480A54(v3, v10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = *(v10 + 9);
    v17[8] = *(v10 + 8);
    v17[9] = v11;
    v17[10] = *(v10 + 10);
    v18 = *(v10 + 88);
    v12 = *(v10 + 5);
    v17[4] = *(v10 + 4);
    v17[5] = v12;
    v13 = *(v10 + 7);
    v17[6] = *(v10 + 6);
    v17[7] = v13;
    v14 = *(v10 + 1);
    v17[0] = *v10;
    v17[1] = v14;
    v15 = *(v10 + 3);
    v17[2] = *(v10 + 2);
    v17[3] = v15;
    sub_1004A6EB4(1uLL);
    sub_100404A7C(a1);
    return sub_100480B0C(v17);
  }

  else
  {
    sub_10047B200(v10, v7, type metadata accessor for ResponsePayload);
    sub_1004A6EB4(0);
    ResponsePayload.hash(into:)(a1);
    return sub_100480D50(v7, type metadata accessor for ResponsePayload);
  }
}

Swift::Int sub_100480308(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = type metadata accessor for ResponsePayload(0);
  __chkstk_darwin(v4 - 8);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1004A6E94();
  sub_100480A54(v3, v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = *(v9 + 9);
    v41 = *(v9 + 8);
    v42 = v10;
    v43 = *(v9 + 10);
    v44 = *(v9 + 88);
    v11 = *(v9 + 5);
    v37 = *(v9 + 4);
    v38 = v11;
    v12 = *(v9 + 7);
    v39 = *(v9 + 6);
    v40 = v12;
    v13 = *(v9 + 1);
    v33 = *v9;
    v34 = v13;
    v14 = *(v9 + 3);
    v35 = *(v9 + 2);
    v36 = v14;
    sub_1004A6EB4(1uLL);
    v45[8] = v41;
    v45[9] = v42;
    v45[10] = v43;
    v46 = v44;
    v45[4] = v37;
    v45[5] = v38;
    v45[6] = v39;
    v45[7] = v40;
    v45[0] = v33;
    v45[1] = v34;
    v45[2] = v35;
    v45[3] = v36;
    v15 = sub_1003043EC(v45);
    if (v15 > 2)
    {
      if (v15 == 3)
      {
        v23 = sub_1002F9BA4(v45);
        v24 = *(v23 + 32);
        v20 = *(v23 + 40);
        v25 = *(v23 + 16);
        v48 = *v23;
        v49 = v25;
        LOBYTE(v50) = v24;
        v22 = 3;
      }

      else
      {
        if (v15 != 4)
        {
          sub_1004A6EB4(5uLL);
          return sub_1004A6F14();
        }

        v18 = sub_1002F9BA4(v45);
        v19 = *(v18 + 32);
        v20 = *(v18 + 40);
        v21 = *(v18 + 16);
        v48 = *v18;
        v49 = v21;
        LOBYTE(v50) = v19;
        v22 = 4;
      }

      sub_1004A6EB4(v22);
      StreamingKind.hash(into:)(v47);
      sub_1004A6EB4(v20);
    }

    else
    {
      if (!v15)
      {
        v16 = *sub_1002F9BA4(v45);
        v17 = 0;
        goto LABEL_11;
      }

      if (v15 == 1)
      {
        v16 = *sub_1002F9BA4(v45);
        v17 = 1;
LABEL_11:
        sub_1004A6EB4(v17);
        sub_1004A6EE4(v16);
        return sub_1004A6F14();
      }

      v26 = sub_1002F9BA4(v45);
      v27 = *(v26 + 144);
      v56 = *(v26 + 128);
      v57 = v27;
      v58 = *(v26 + 160);
      v59 = *(v26 + 176);
      v28 = *(v26 + 80);
      v52 = *(v26 + 64);
      v53 = v28;
      v29 = *(v26 + 112);
      v54 = *(v26 + 96);
      v55 = v29;
      v30 = *(v26 + 16);
      v48 = *v26;
      v49 = v30;
      v31 = *(v26 + 48);
      v50 = *(v26 + 32);
      v51 = v31;
      sub_1004A6EB4(2uLL);
      MessageAttribute.hash(into:)(v47);
    }

    sub_100480B0C(&v33);
    return sub_1004A6F14();
  }

  sub_10047B200(v9, v6, type metadata accessor for ResponsePayload);
  sub_1004A6EB4(0);
  ResponsePayload.hash(into:)(v47);
  sub_100480D50(v6, type metadata accessor for ResponsePayload);
  return sub_1004A6F14();
}

uint64_t sub_10048062C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ResponsePayload(0);
  __chkstk_darwin(v4 - 8);
  v6 = v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ResponseParser._Response(0);
  __chkstk_darwin(v7);
  v9 = v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = v30 - v11;
  v13 = sub_10000C9C0(&qword_1005DD6A8, &qword_10050B3D8);
  __chkstk_darwin(v13 - 8);
  v15 = v30 - v14;
  v17 = v30 + *(v16 + 56) - v14;
  sub_100480A54(a1, v30 - v14);
  sub_100480A54(a2, v17);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_100480A54(v15, v9);
    v18 = *(v9 + 9);
    v30[8] = *(v9 + 8);
    v30[9] = v18;
    v30[10] = *(v9 + 10);
    v31 = *(v9 + 88);
    v19 = *(v9 + 5);
    v30[4] = *(v9 + 4);
    v30[5] = v19;
    v20 = *(v9 + 7);
    v30[6] = *(v9 + 6);
    v30[7] = v20;
    v21 = *(v9 + 1);
    v30[0] = *v9;
    v30[1] = v21;
    v22 = *(v9 + 3);
    v30[2] = *(v9 + 2);
    v30[3] = v22;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v23 = *(v17 + 9);
      v32[8] = *(v17 + 8);
      v32[9] = v23;
      v32[10] = *(v17 + 10);
      v33 = *(v17 + 88);
      v24 = *(v17 + 5);
      v32[4] = *(v17 + 4);
      v32[5] = v24;
      v25 = *(v17 + 7);
      v32[6] = *(v17 + 6);
      v32[7] = v25;
      v26 = *(v17 + 1);
      v32[0] = *v17;
      v32[1] = v26;
      v27 = *(v17 + 3);
      v32[2] = *(v17 + 2);
      v32[3] = v27;
      v28 = sub_100405AE8(v30, v32);
      sub_100480B0C(v32);
      sub_100480B0C(v30);
LABEL_9:
      sub_100480D50(v15, type metadata accessor for ResponseParser._Response);
      return v28 & 1;
    }

    sub_100480B0C(v30);
  }

  else
  {
    sub_100480A54(v15, v12);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_10047B200(v17, v6, type metadata accessor for ResponsePayload);
      v28 = _s12NIOIMAPCore215ResponsePayloadO21__derived_enum_equalsySbAC_ACtFZ_0(v12, v6);
      sub_100480D50(v6, type metadata accessor for ResponsePayload);
      sub_100480D50(v12, type metadata accessor for ResponsePayload);
      goto LABEL_9;
    }

    sub_100480D50(v12, type metadata accessor for ResponsePayload);
  }

  sub_100480DB0(v15);
  v28 = 0;
  return v28 & 1;
}

BOOL sub_100480934(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (!a3)
  {
    if (!a6)
    {
      if (a2)
      {
        if (a5)
        {
          return 1;
        }
      }

      else if (!(a5 & 1 | (a1 != a4)))
      {
        return 1;
      }
    }

    return 0;
  }

  v7 = a6 == 1 && a1 == a4;
  v10 = a6 == 2 && a1 == a4 && a2 == a5;
  if (a3 == 1)
  {
    return v7;
  }

  else
  {
    return v10;
  }
}

uint64_t type metadata accessor for ResponseParser._Response(uint64_t a1)
{
  result = qword_1005DD660;
  if (!qword_1005DD660)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100480A54(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ResponseParser._Response(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_100480AB8()
{
  result = qword_1005DD5E0;
  if (!qword_1005DD5E0)
  {
    result = swift_getWitnessTable("ټ\a", &type metadata for ExceededMaximumMessageAttributesError, v0, v1);
    atomic_store(result, &qword_1005DD5E0);
  }

  return result;
}

unint64_t sub_100480B60()
{
  result = qword_1005DD5E8;
  if (!qword_1005DD5E8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ExceededMaximumBodySizeError, &type metadata for ExceededMaximumBodySizeError, v0, v1);
    atomic_store(result, &qword_1005DD5E8);
  }

  return result;
}

uint64_t sub_100480BB4()
{

  return _swift_deallocObject(v0, 89, 7);
}

uint64_t sub_100480C24(uint64_t a1)
{
  result = type metadata accessor for ResponsePayload(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_100480CA0()
{
  result = qword_1005DD698;
  if (!qword_1005DD698)
  {
    result = swift_getWitnessTable(aA_19, &type metadata for ResponseParser.ResponseState, v0, v1);
    atomic_store(result, &qword_1005DD698);
  }

  return result;
}

unint64_t sub_100480CF8()
{
  result = qword_1005DD6A0;
  if (!qword_1005DD6A0)
  {
    v3 = type metadata accessor for ResponseParser._Response(255);
    result = swift_getWitnessTable(byte_10050B370, v3, v0, v1);
    atomic_store(result, &qword_1005DD6A0);
  }

  return result;
}

uint64_t sub_100480D50(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100480DB0(uint64_t a1)
{
  v2 = sub_10000C9C0(&qword_1005DD6A8, &qword_10050B3D8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100480E30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = (a2 + 40);
  v6 = *(a2 + 16) + 1;
  while (1)
  {
    if (!--v6)
    {
      return a1;
    }

    v8 = *(v5 - 1);
    v7 = *v5;
    v9 = *(a3 + 20);

    result = sub_1002F178C(0x20uLL, 0xE100000000000000, a3 + 8, v9);
    if (v11)
    {
      v12._countAndFlagsBits = 32;
      v12._object = 0xE100000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v12, v9);
    }

    v13 = *(a3 + 20);
    v14 = (v13 + result);
    if (__CFADD__(v13, result))
    {
      break;
    }

    *(a3 + 20) = v14;
    v15 = __OFADD__(a1, result);
    v16 = a1 + result;
    if (v15)
    {
      goto LABEL_15;
    }

    result = sub_1002F178C(v8, v7, a3 + 8, v14);
    if (v17)
    {
      v18._countAndFlagsBits = v8;
      v18._object = v7;
      result = ByteBuffer._setStringSlowpath(_:at:)(v18, v14);
    }

    v19 = result;
    v20 = *(a3 + 20);
    v21 = __CFADD__(v20, result);
    v22 = v20 + result;
    if (v21)
    {
      goto LABEL_16;
    }

    v5 += 4;
    *(a3 + 20) = v22;

    v15 = __OFADD__(v16, v19);
    a1 = v16 + v19;
    if (v15)
    {
      __break(1u);
      return a1;
    }
  }

  __break(1u);
LABEL_15:
  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

void sub_100480F60(uint64_t a1)
{
  v3 = type metadata accessor for MessageData(0);
  __chkstk_darwin(v3 - 8);
  v5 = &v45[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for ResponsePayload(0);
  __chkstk_darwin(v6);
  v8 = &v45[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_10048230C(a1, v8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload > 6)
    {
      if (EnumCaseMultiPayload == 7)
      {
        sub_100476E0C(*v8, *(v8 + 1), *(v8 + 4) | (*(v8 + 10) << 32) | (v8[22] << 48), *(v8 + 3));

        return;
      }

      if (EnumCaseMultiPayload == 8)
      {
        v10 = *(v8 + 1);
        v46 = *v8;
        v47 = v10;
        LODWORD(v48) = *(v8 + 8);
        sub_10045B638(&v46);
        sub_1004826B0(&v46);
        return;
      }

      goto LABEL_26;
    }

    if (EnumCaseMultiPayload == 5)
    {
      v15 = *v8;
      v16 = *(v8 + 1);
      v17 = *(v8 + 2);
      v18 = *v1;
      *v1 = 0;
      v19 = *(v1 + 20);
      v20 = sub_1002F178C(0x204449uLL, 0xE300000000000000, v1 + 8, v19);
      if (v21)
      {
        v22._countAndFlagsBits = 2114633;
        v22._object = 0xE300000000000000;
        v20 = ByteBuffer._setStringSlowpath(_:at:)(v22, v19);
      }

      v23 = v20;
      v24 = *(v1 + 20);
      v25 = __CFADD__(v24, v20);
      v26 = v24 + v20;
      if (v25)
      {
LABEL_31:
        __break(1u);
        goto LABEL_32;
      }

      *(v1 + 20) = v26;
      sub_100430E74(v15, v16, v17);
      if (__OFADD__(v23, v27))
      {
LABEL_32:
        __break(1u);
        return;
      }

      *v1 = v18;
    }

    else
    {
      sub_100477ACC(*v8, *(v8 + 2), *(v8 + 2), *(v8 + 3), *(v8 + 8) | (*(v8 + 18) << 32) | (v8[38] << 48));
    }

    return;
  }

  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_1004823FC(v8, v5);
      sub_10044C820(v5);
      sub_10048276C(v5, type metadata accessor for MessageData);
      return;
    }

    if (EnumCaseMultiPayload == 3)
    {
      sub_1003C3ED0(*v8);

      return;
    }

    v28 = *v8;
    v29 = *(v1 + 20);
    v30 = sub_1002F178C(0x44454C42414E45uLL, 0xE700000000000000, v1 + 8, v29);
    if (v31)
    {
      v32._countAndFlagsBits = 0x44454C42414E45;
      v32._object = 0xE700000000000000;
      v30 = ByteBuffer._setStringSlowpath(_:at:)(v32, v29);
    }

    v33 = v30;
    v34 = *(v1 + 20);
    v25 = __CFADD__(v34, v30);
    v35 = v34 + v30;
    if (!v25)
    {
      *(v1 + 20) = v35;
      v36 = sub_100480E30(0, v28, v1);

      v8 = (v33 + v36);
      if (!__OFADD__(v33, v36))
      {
        return;
      }

      __break(1u);
LABEL_26:
      v37 = *v8;
      v38 = *(v8 + 1);
      v39 = *(v8 + 2);
      v40 = v8[24];
      sub_1003A395C(*v8, v38, v39, v40);
      sub_100208C4C(v37, v38, v39, v40);
      return;
    }

    __break(1u);
    goto LABEL_31;
  }

  if (EnumCaseMultiPayload)
  {
    v41 = *(v8 + 7);
    v52 = *(v8 + 6);
    v53 = v41;
    v54 = *(v8 + 8);
    v42 = *(v8 + 3);
    v48 = *(v8 + 2);
    v49 = v42;
    v43 = *(v8 + 5);
    v50 = *(v8 + 4);
    v51 = v43;
    v44 = *(v8 + 1);
    v46 = *v8;
    v47 = v44;
    sub_10043EB74(&v46);
    sub_1003045EC(&v46);
  }

  else
  {
    v11 = *v8;
    v12 = *(v8 + 1);
    v13 = *(v8 + 2);
    v14 = v8[24];
    sub_1004A163C(*v8, v12, v13, v14);
    sub_100482460(v11, v12, v13, v14);
  }
}

uint64_t ResponsePayload.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for MessageData(0);
  __chkstk_darwin(v4 - 8);
  v6 = v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ResponsePayload(0);
  __chkstk_darwin(v7);
  v9 = v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10048230C(v2, v9);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload <= 6)
    {
      if (EnumCaseMultiPayload == 5)
      {
        v27 = *(v9 + 1);
        v28 = *(v9 + 2);
        sub_1004A6EB4(5uLL);
        sub_1002E5DBC(a1, v27, v28);
      }

      else
      {
        v42 = *(v9 + 2);
        sub_1004A6EB4(6uLL);
        sub_1004A6EB4(v42 | (v42 << 32));

        swift_beginAccess();
        sub_1004A6EA4();
      }
    }

    else if (EnumCaseMultiPayload == 7)
    {
      v29 = *(v9 + 3);
      sub_1004A6EB4(7uLL);
      swift_beginAccess();
      sub_1004A6EA4();
      sub_1004A6EB4(*(v29 + 16));
      v30 = *(v29 + 16);
      if (v30)
      {
        v31 = (v29 + 56);
        do
        {
          v32 = *(v31 - 1);
          v33 = *v31;

          _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
          sub_1004A6EB4(v32);
          sub_1004A6EB4(v33);

          v31 += 4;
          --v30;
        }

        while (v30);
      }
    }

    else if (EnumCaseMultiPayload == 8)
    {
      v13 = *v9;
      v14 = *(v9 + 1);
      v15 = *(v9 + 2);
      v16 = *(v9 + 3);
      v17 = *(v9 + 8);
      sub_1004A6EB4(8uLL);
      if (v15 < 0)
      {
        v45[1] = v17;
        v46 = v16;
        v47 = v14;
        sub_1004A6EB4(1uLL);
        sub_1004A6EB4(*(v13 + 16));
        v43 = *(v13 + 16);
        if (v43)
        {
          v44 = v13 + 54;
          do
          {
            v44 += 24;
            swift_beginAccess();
            sub_1004A6EA4();
            --v43;
          }

          while (v43);
        }

        sub_1004A6EB4(v15 | (v15 << 32));
        v18 = v13;
        v21 = v46;
        v19 = v47;
        v20 = v15;
      }

      else
      {
        sub_1004A6EB4(0);
        sub_1003A1460(a1, v14, v15);
        sub_1004A6EB4(v17 | (v17 << 32));
        v18 = v13;
        v19 = v14;
        v20 = v15;
        v21 = v16;
      }

      return sub_100482370(v18, v19, v20, v21);
    }

    else
    {
      v34 = *v9;
      v35 = *(v9 + 1);
      v36 = *(v9 + 2);
      v37 = v9[24];
      sub_1004A6EB4(9uLL);
      ApplePushService.hash(into:)(a1, v34, v35, v36, v37);
      return sub_100208C4C(v34, v35, v36, v37);
    }
  }

  else if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v38 = *(v9 + 7);
      v48[6] = *(v9 + 6);
      v48[7] = v38;
      v48[8] = *(v9 + 8);
      v39 = *(v9 + 3);
      v48[2] = *(v9 + 2);
      v48[3] = v39;
      v40 = *(v9 + 5);
      v48[4] = *(v9 + 4);
      v48[5] = v40;
      v41 = *(v9 + 1);
      v48[0] = *v9;
      v48[1] = v41;
      sub_1004A6EB4(1uLL);
      MailboxData.hash(into:)(a1);
      return sub_1003045EC(v48);
    }

    else
    {
      v22 = *v9;
      v23 = *(v9 + 1);
      v24 = *(v9 + 2);
      v25 = v9[24];
      sub_1004A6EB4(0);
      UntaggedStatus.hash(into:)(a1, v22, v23, v24, v25);
      return sub_100482460(v22, v23, v24, v25);
    }
  }

  else if (EnumCaseMultiPayload == 2)
  {
    sub_1004823FC(v9, v6);
    sub_1004A6EB4(2uLL);
    MessageData.hash(into:)(a1);
    return sub_10048276C(v6, type metadata accessor for MessageData);
  }

  else
  {
    v11 = *v9;
    if (EnumCaseMultiPayload == 3)
    {
      v12 = 3;
    }

    else
    {
      v12 = 4;
    }

    sub_1004A6EB4(v12);
    sub_1002E5AF4(a1, v11);
  }
}

Swift::Int ResponsePayload.hashValue.getter()
{
  sub_1004A6E94();
  ResponsePayload.hash(into:)(v1);
  return sub_1004A6F14();
}

Swift::Int sub_1004818A8(uint64_t a1)
{
  sub_1004A6E94();
  ResponsePayload.hash(into:)(v2);
  return sub_1004A6F14();
}

uint64_t _s12NIOIMAPCore215ResponsePayloadO21__derived_enum_equalsySbAC_ACtFZ_0(unint64_t a1, uint64_t a2)
{
  v99 = a1;
  v3 = type metadata accessor for MessageData(0);
  __chkstk_darwin(v3 - 8);
  v93 = &v93 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ResponsePayload(0);
  __chkstk_darwin(v5);
  v98 = &v93 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v96 = &v93 - v8;
  __chkstk_darwin(v9);
  v97 = &v93 - v10;
  __chkstk_darwin(v11);
  v13 = &v93 - v12;
  __chkstk_darwin(v14);
  v16 = &v93 - v15;
  __chkstk_darwin(v17);
  v94 = (&v93 - v18);
  __chkstk_darwin(v19);
  v21 = (&v93 - v20);
  __chkstk_darwin(v22);
  v95 = &v93 - v23;
  __chkstk_darwin(v24);
  v26 = (&v93 - v25);
  __chkstk_darwin(v27);
  v29 = &v93 - v28;
  v30 = sub_10000C9C0(&qword_1005DD778, &qword_10050B470);
  __chkstk_darwin(v30 - 8);
  v32 = &v93 - v31;
  v34 = &v93 + *(v33 + 56) - v31;
  sub_10048230C(v99, &v93 - v31);
  sub_10048230C(a2, v34);
  v100 = v32;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 4)
  {
    if (EnumCaseMultiPayload <= 1)
    {
      v42 = v34;
      if (EnumCaseMultiPayload)
      {
        v36 = v100;
        sub_10048230C(v100, v26);
        v70 = v26[7];
        v107 = v26[6];
        v108 = v70;
        v109 = v26[8];
        v71 = v26[3];
        v103 = v26[2];
        v104 = v71;
        v72 = v26[5];
        v105 = v26[4];
        v106 = v72;
        v73 = v26[1];
        v101 = *v26;
        v102 = v73;
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v74 = *(v34 + 7);
          v116 = *(v34 + 6);
          v117 = v74;
          v118 = *(v34 + 8);
          v75 = *(v34 + 3);
          v112 = *(v34 + 2);
          v113 = v75;
          v76 = *(v34 + 5);
          v114 = *(v34 + 4);
          v115 = v76;
          v77 = *(v34 + 1);
          v110 = *v34;
          v111 = v77;
          v41 = _s12NIOIMAPCore211MailboxDataO21__derived_enum_equalsySbAC_ACtFZ_0(&v101, &v110);
          sub_1003045EC(&v110);
          sub_1003045EC(&v101);
          goto LABEL_34;
        }

        sub_1003045EC(&v101);
      }

      else
      {
        v43 = v100;
        sub_10048230C(v100, v29);
        v44 = *v29;
        v45 = *(v29 + 1);
        v46 = *(v29 + 2);
        v47 = v29[24];
        if (!swift_getEnumCaseMultiPayload())
        {
          v90 = *v42;
          v99 = *(v42 + 1);
          v91 = *(v42 + 2);
          v92 = v42[24];
          v41 = _s12NIOIMAPCore214UntaggedStatusO21__derived_enum_equalsySbAC_ACtFZ_0(v44, v45, v46, v47, v90, v99, v91, v92);
          sub_100482460(v90, v99, v91, v92);
          sub_100482460(v44, v45, v46, v47);
          sub_10048276C(v43, type metadata accessor for ResponsePayload);
          return v41 & 1;
        }

        sub_100482460(v44, v45, v46, v47);
        v36 = v43;
      }

      goto LABEL_48;
    }

    if (EnumCaseMultiPayload != 2)
    {
      v36 = v100;
      if (EnumCaseMultiPayload == 3)
      {
        sub_10048230C(v100, v21);
        v59 = *v21;
        if (swift_getEnumCaseMultiPayload() == 3)
        {
LABEL_28:
          v41 = sub_1001CE84C(v59, *v34);

          goto LABEL_34;
        }
      }

      else
      {
        v58 = v94;
        sub_10048230C(v100, v94);
        v59 = *v58;
        v60 = swift_getEnumCaseMultiPayload();
        if (v60 == 4)
        {
          goto LABEL_28;
        }
      }

      goto LABEL_41;
    }

    v36 = v100;
    v52 = v95;
    sub_10048230C(v100, v95);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      sub_10048276C(v52, type metadata accessor for MessageData);
LABEL_48:
      sub_100482704(v36);
LABEL_49:
      v41 = 0;
      return v41 & 1;
    }

    v53 = v93;
    sub_1004823FC(v34, v93);
    v41 = _s12NIOIMAPCore211MessageDataO21__derived_enum_equalsySbAC_ACtFZ_0(v52, v53);
    sub_10048276C(v53, type metadata accessor for MessageData);
    sub_10048276C(v52, type metadata accessor for MessageData);
    goto LABEL_34;
  }

  if (EnumCaseMultiPayload > 6)
  {
    v36 = v100;
    v37 = v34;
    if (EnumCaseMultiPayload == 7)
    {
      v54 = v97;
      sub_10048230C(v100, v97);
      v55 = *v54;
      v56 = *(v54 + 24);
      if (swift_getEnumCaseMultiPayload() != 7)
      {

LABEL_41:

        goto LABEL_48;
      }

      v57 = *(v34 + 3);
      if (!sub_10020FBD0(v55, *(v54 + 8), *(v54 + 16) | (*(v54 + 22) << 48) | (*(v54 + 20) << 32), *v34, *(v34 + 1), *(v34 + 4) | (*(v34 + 10) << 32) | (v34[22] << 48)))
      {

        sub_10048276C(v36, type metadata accessor for ResponsePayload);
        goto LABEL_49;
      }

      v41 = sub_100398608(v56, v57);

LABEL_34:
      sub_10048276C(v36, type metadata accessor for ResponsePayload);
      return v41 & 1;
    }

    if (EnumCaseMultiPayload == 8)
    {
      v38 = v96;
      sub_10048230C(v100, v96);
      v39 = *(v38 + 16);
      v101 = *v38;
      v102 = v39;
      LODWORD(v103) = *(v38 + 32);
      if (swift_getEnumCaseMultiPayload() != 8)
      {
        sub_1004826B0(&v101);
        goto LABEL_48;
      }

      v40 = *(v34 + 1);
      v110 = *v34;
      v111 = v40;
      LODWORD(v112) = *(v34 + 8);
      v41 = _s12NIOIMAPCore216MetadataResponseO21__derived_enum_equalsySbAC_ACtFZ_0(&v101, &v110);
      sub_1004826B0(&v110);
      sub_1004826B0(&v101);
      goto LABEL_34;
    }

    v61 = v98;
    sub_10048230C(v100, v98);
    v62 = *v61;
    v63 = *(v61 + 8);
    v64 = *(v61 + 16);
    v65 = *(v61 + 24);
    if (swift_getEnumCaseMultiPayload() != 9)
    {
      sub_100208C4C(v62, v63, v64, v65);
      goto LABEL_48;
    }

    v66 = *v34;
    v67 = *(v34 + 1);
    v68 = *(v37 + 2);
    v69 = v37[24];
    v41 = _s12NIOIMAPCore216ApplePushServiceO21__derived_enum_equalsySbAC_ACtFZ_0(v62, v63, v64, v65, *v37, *(v37 + 1), v68, v69);
    sub_100208C4C(v66, v67, v68, v69);
    sub_100208C4C(v62, v63, v64, v65);
    goto LABEL_31;
  }

  v36 = v100;
  if (EnumCaseMultiPayload != 5)
  {
    sub_10048230C(v100, v13);
    v78 = *v13;
    v79 = *(v13 + 2);
    v99 = *(v13 + 3);
    v80 = *(v13 + 8);
    v81 = *(v13 + 18);
    v82 = v13[38];
    v83 = swift_getEnumCaseMultiPayload();
    if (v83 == 6)
    {
      v84 = *(v13 + 2);
      v85 = *v34;
      v86 = *(v34 + 2);
      if ((v84 | (v84 << 32)) == (*(v34 + 2) | (*(v34 + 2) << 32)))
      {
        v87 = *(v34 + 3);
        v98 = *(v34 + 8);
        v97 = *(v34 + 18);
        v96 = v34[38];
        v88 = sub_1000FFC98(v78, v85);

        if (v88)
        {
          v41 = sub_10020FBD0(v79, v99, v80 | (v81 << 32) | (v82 << 48), v86, v87, v98 | (v97 << 32) | (v96 << 48));

LABEL_31:
          sub_10048276C(v100, type metadata accessor for ResponsePayload);
          return v41 & 1;
        }
      }

      else
      {
      }

      goto LABEL_55;
    }

LABEL_47:

    goto LABEL_48;
  }

  sub_10048230C(v100, v16);
  v48 = *(v16 + 1);
  v49 = *(v16 + 2);
  if (swift_getEnumCaseMultiPayload() != 5)
  {

    goto LABEL_47;
  }

  v50 = *(v34 + 2);
  if ((sub_10020FB40(v48, *(v34 + 1)) & 1) == 0)
  {

LABEL_55:

    goto LABEL_56;
  }

  v51 = sub_10020FA9C(v49, v50);

  if ((v51 & 1) == 0)
  {
LABEL_56:
    sub_10048276C(v100, type metadata accessor for ResponsePayload);
    goto LABEL_49;
  }

  sub_10048276C(v100, type metadata accessor for ResponsePayload);
  v41 = 1;
  return v41 & 1;
}

uint64_t type metadata accessor for ResponsePayload(uint64_t a1)
{
  result = qword_1005DD728;
  if (!qword_1005DD728)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10048230C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ResponsePayload(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100482370(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 < 0)
  {
  }

  else
  {
  }
}

uint64_t sub_1004823FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MessageData(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100482460(uint64_t result, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 <= 4u)
  {
    sub_10001114C(result);
  }

  return result;
}

unint64_t sub_1004824AC()
{
  result = qword_1005DD6B0;
  if (!qword_1005DD6B0)
  {
    v3 = type metadata accessor for ResponsePayload(255);
    result = swift_getWitnessTable(protocol conformance descriptor for ResponsePayload, v3, v0, v1);
    atomic_store(result, &qword_1005DD6B0);
  }

  return result;
}

void sub_100482504(uint64_t a1)
{
  type metadata accessor for MessageData(319);
  if (v1 <= 0x3F)
  {
    sub_100214F50();
    if (v2 <= 0x3F)
    {
      sub_1002E8F98(319);
      if (v3 <= 0x3F)
      {
        sub_1004825DC();
        if (v4 <= 0x3F)
        {
          sub_10048263C(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1004825DC()
{
  if (!qword_1005DD738)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1005DD738);
    }
  }
}

void sub_10048263C(uint64_t a1)
{
  if (!qword_1005DD740)
  {
    sub_10000DEFC(&unk_1005DD748, &qword_10050B468);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1005DD740);
    }
  }
}

uint64_t sub_100482704(uint64_t a1)
{
  v2 = sub_10000C9C0(&qword_1005DD778, &qword_10050B470);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10048276C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t ResponseText.debugDescription.getter(unint64_t a1, uint64_t a2, void *a3)
{
  if (qword_1005DB9D0 != -1)
  {
    swift_once();
  }

  v6 = static ByteBufferAllocator.zeroCapacityWithDefaultAllocator;
  v7 = qword_1005DE390;
  v8 = word_1005DE39C;
  v9 = byte_1005DE39E;

  v26 = HIDWORD(qword_1005DE390);
  LOBYTE(v29) = 0;
  BYTE5(v29) = 0;
  *(&v29 + 1) = 65537;
  *(&v29 + 1) = v6;
  LODWORD(v30) = v7;
  *(&v30 + 4) = *(&qword_1005DE390 + 4);
  WORD6(v30) = v8;
  BYTE14(v30) = v9;
  *&v31 = sub_1003DBA20(_swiftEmptyArrayStorage);
  *(&v31 + 1) = v10;
  v32 = v11;
  v12 = DWORD1(v30);
  if ((~a1 & 0xF000000000000007) != 0)
  {
    result = sub_1002F178C(0x5BuLL, 0xE100000000000000, &v29 + 8, v26);
    if (v14)
    {
      v15._countAndFlagsBits = 91;
      v15._object = 0xE100000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v15, v26);
    }

    if (__CFADD__(DWORD1(v30), result))
    {
      goto LABEL_22;
    }

    DWORD1(v30) += result;
    sub_100483514(a1);
    v16 = DWORD1(v30);
    result = sub_1002F178C(0x205DuLL, 0xE200000000000000, &v29 + 8, DWORD1(v30));
    if (v17)
    {
      v18._countAndFlagsBits = 8285;
      v18._object = 0xE200000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v18, v16);
    }

    v12 = DWORD1(v30) + result;
    if (__CFADD__(DWORD1(v30), result))
    {
      goto LABEL_23;
    }

    DWORD1(v30) += result;
  }

  if (sub_1004A5924() <= 0)
  {

    a3 = 0xE100000000000000;
    a2 = 32;
  }

  v19 = sub_1002F178C(a2, a3, &v29 + 8, v12);
  if (v20)
  {
    v21._countAndFlagsBits = a2;
    v21._object = a3;
    v19 = ByteBuffer._setStringSlowpath(_:at:)(v21, v12);
  }

  v22 = v19;

  v23 = (DWORD1(v30) + v22);
  if (__CFADD__(DWORD1(v30), v22))
  {
    __break(1u);
  }

  else
  {
    DWORD1(v30) += v22;
    if (v23 >= v30)
    {
      if (DWORD2(v30) - (BYTE14(v30) | (WORD6(v30) << 8)) >= v23)
      {
        v33 = *(&v29 + 1);
        v34 = v30;
        v35 = v23;
        v36 = DWORD2(v30);
        v37 = WORD6(v30);
        v38 = BYTE14(v30);
        v39 = v30;
        v40 = v23;
        v24 = v23 - v30;
        *&v27[0] = 0;
        *(&v27[0] + 1) = 0xE000000000000000;

        sub_1004A5874(v24);
        sub_1003BB2E4(&v33, v27);
        sub_1003A52D0(&v33);
        v25 = *&v27[0];
        v27[0] = v29;
        v27[1] = v30;
        v27[2] = v31;
        v28 = v32;
        sub_1003E5C94(v27);
        return v25;
      }

      goto LABEL_21;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_100482A88(unint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v7 = 0;
  if ((~a1 & 0xF000000000000007) != 0)
  {
    v9 = *(v3 + 20);
    result = sub_1002F178C(0x5BuLL, 0xE100000000000000, v3 + 8, v9);
    if (v11)
    {
      v12._countAndFlagsBits = 91;
      v12._object = 0xE100000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v12, v9);
    }

    v13 = result;
    v14 = *(v3 + 20);
    v15 = __CFADD__(v14, result);
    v16 = v14 + result;
    if (v15)
    {
      goto LABEL_19;
    }

    *(v3 + 20) = v16;
    result = sub_100483514(a1);
    v17 = v13 + result;
    if (__OFADD__(v13, result))
    {
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    v18 = *(v3 + 20);
    result = sub_1002F178C(0x205DuLL, 0xE200000000000000, v3 + 8, v18);
    if (v19)
    {
      v20._countAndFlagsBits = 8285;
      v20._object = 0xE200000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v20, v18);
    }

    v21 = *(v3 + 20);
    v15 = __CFADD__(v21, result);
    v22 = v21 + result;
    if (v15)
    {
      goto LABEL_21;
    }

    *(v3 + 20) = v22;
    v7 = v17 + result;
    if (__OFADD__(v17, result))
    {
LABEL_22:
      __break(1u);
      return result;
    }
  }

  if (sub_1004A5924() <= 0)
  {

    a3 = 0xE100000000000000;
    a2 = 32;
  }

  v23 = *(v3 + 20);
  v24 = sub_1002F178C(a2, a3, v3 + 8, v23);
  if (v25)
  {
    v26._countAndFlagsBits = a2;
    v26._object = a3;
    v24 = ByteBuffer._setStringSlowpath(_:at:)(v26, v23);
  }

  v27 = v24;

  v28 = *(v4 + 20);
  v15 = __CFADD__(v28, v27);
  v29 = v28 + v27;
  if (v15)
  {
    __break(1u);
    goto LABEL_18;
  }

  *(v4 + 20) = v29;
  result = v7 + v27;
  if (__OFADD__(v7, v27))
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  return result;
}

uint64_t ResponseText.code.setter(uint64_t a1)
{
  result = sub_10001114C(*v1);
  *v1 = a1;
  return result;
}

uint64_t ResponseText.hash(into:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((~a2 & 0xF000000000000007) != 0)
  {
    sub_1004A6EC4(1u);
    ResponseTextCode.hash(into:)(a1, a2);
  }

  else
  {
    sub_1004A6EC4(0);
  }

  return _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
}

Swift::Int ResponseText.hashValue.getter(unint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1004A6E94();
  if ((~a1 & 0xF000000000000007) != 0)
  {
    sub_1004A6EC4(1u);
    ResponseTextCode.hash(into:)(v5, a1);
  }

  else
  {
    sub_1004A6EC4(0);
  }

  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  return sub_1004A6F14();
}

Swift::Int sub_100482D84()
{
  v1 = *v0;
  sub_1004A6E94();
  if ((~v1 & 0xF000000000000007) != 0)
  {
    sub_1004A6EC4(1u);
    ResponseTextCode.hash(into:)(v3, v1);
  }

  else
  {
    sub_1004A6EC4(0);
  }

  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  return sub_1004A6F14();
}

uint64_t sub_100482E0C(uint64_t a1)
{
  v3 = *v1;
  if ((~*v1 & 0xF000000000000007) != 0)
  {
    sub_1004A6EC4(1u);
    ResponseTextCode.hash(into:)(a1, v3);
  }

  else
  {
    sub_1004A6EC4(0);
  }

  return _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
}

Swift::Int sub_100482E94(uint64_t a1)
{
  v2 = *v1;
  sub_1004A6E94();
  if ((~v2 & 0xF000000000000007) != 0)
  {
    sub_1004A6EC4(1u);
    ResponseTextCode.hash(into:)(v4, v2);
  }

  else
  {
    sub_1004A6EC4(0);
  }

  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  return sub_1004A6F14();
}

uint64_t _s12NIOIMAPCore212ResponseTextV23__derived_struct_equalsySbAC_ACtFZ_0(unint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = a4 & 0xF000000000000007;
  if ((~a1 & 0xF000000000000007) != 0)
  {
    if (v6 == 0xF000000000000007)
    {
      return 0;
    }

    v7 = a1;
    v8 = a6;
    v9 = a5;
    v10 = a3;
    v11 = a2;
    sub_1000110C4(a4);
    LOBYTE(v7) = _s12NIOIMAPCore216ResponseTextCodeO21__derived_enum_equalsySbAC_ACtFZ_0(v7, a4);
    sub_10001114C(a4);
    a2 = v11;
    a3 = v10;
    a5 = v9;
    a6 = v8;
    if ((v7 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6 != 0xF000000000000007)
  {
    return 0;
  }

  if (a2 == a5 && a3 == a6)
  {
    return 1;
  }

  return sub_1004A6D34();
}

unint64_t sub_100483034()
{
  result = qword_1005DD780;
  if (!qword_1005DD780)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ResponseText, &type metadata for ResponseText, v0, v1);
    atomic_store(result, &qword_1005DD780);
  }

  return result;
}

char *ResponseTextCode.debugDescription.getter(unint64_t a1)
{
  if (qword_1005DB9D0 != -1)
  {
    swift_once();
  }

  v2 = static ByteBufferAllocator.zeroCapacityWithDefaultAllocator;
  v3 = dword_1005DE398;
  v4 = word_1005DE39C;
  v5 = byte_1005DE39E;

  LOBYTE(v10) = 0;
  BYTE5(v10) = 0;
  *(&v10 + 1) = 65537;
  *(&v10 + 1) = v2;
  *&v11 = qword_1005DE390;
  DWORD2(v11) = v3;
  WORD6(v11) = v4;
  BYTE14(v11) = v5;
  *&v12 = sub_1003DBA20(_swiftEmptyArrayStorage);
  *(&v12 + 1) = v6;
  v13 = v7;
  result = sub_100483514(a1);
  if (DWORD1(v11) < v11)
  {
    __break(1u);
  }

  else if (v3 - (v5 | (v4 << 8)) >= DWORD1(v11))
  {
    v14[0] = v2;
    v14[1] = v11;
    v15 = v3;
    v16 = WORD6(v11);
    v17 = v5;
    v18 = v11;
    v19 = DWORD1(v11);
    *&v20[0] = 0;
    *(&v20[0] + 1) = 0xE000000000000000;

    sub_1004A5874(DWORD1(v11) - v11);
    sub_1003BB2E4(v14, v20);
    sub_1003A52D0(v14);
    v9 = *&v20[0];
    v20[0] = v10;
    v20[1] = v11;
    v20[2] = v12;
    v21 = v13;
    sub_1003E5C94(v20);
    return v9;
  }

  __break(1u);
  return result;
}

uint64_t sub_100483224@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X8>)
{
  v27 = a5;
  v28 = a6;
  v10 = sub_10000C9C0(&qword_1005DC5C8, &qword_10050B730);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v27 - v12;
  v14 = sub_10000C9C0(a2, a3);
  __chkstk_darwin(v14 - 8);
  v16 = &v27 - v15;
  v17 = sub_10000C9C0(&qword_1005DC5D0, &qword_10050B9D0);
  __chkstk_darwin(v17 - 8);
  v19 = &v27 - v18;
  v20 = sub_10000C9C0(&qword_1005DC830, &qword_100504AB0);
  __chkstk_darwin(v20 - 8);
  v22 = &v27 - v21;
  sub_10000E268(a1, v16, a2, a3);
  v23 = sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
  v24 = (*(*(v23 - 8) + 32))(v19, v16, v23);
  if (sub_1003DAE18(v24) < 1)
  {
    sub_100025F40(v19, &qword_1005DC5D0, &qword_10050B9D0);
    v25 = 1;
  }

  else
  {
    sub_100025FDC(v19, v13, &qword_1005DC5D0, &qword_10050B9D0);
    sub_100025FDC(v13, v22, &qword_1005DC5C8, &qword_10050B730);
    v25 = 0;
  }

  (*(v11 + 56))(v22, v25, 1, v10);
  result = (*(v11 + 48))(v22, 1, v10);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_100025F40(a1, a4, v27);
    return sub_100025FDC(v22, v28, &qword_1005DC5C8, &qword_10050B730);
  }

  return result;
}

char *sub_100483514(unint64_t a1)
{
  v2 = v1;
  v4 = v305;
  v5 = sub_10000C9C0(&qword_1005DC5D8, &unk_100502CC0);
  __chkstk_darwin(v5 - 8);
  v7 = &v304[-1] - v6;
  v8 = type metadata accessor for ResponseCodeAppend(0);
  __chkstk_darwin(v8 - 8);
  v10 = &v304[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  switch((a1 >> 59) & 0x1E | (a1 >> 2) & 1)
  {
    case 1uLL:

      v12 = sub_1003C3ED0(v128);
      goto LABEL_70;
    case 2uLL:
      v4 = 0xEF205347414C4654;
      v95 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v96 = *(v2 + 20);

      v97 = sub_1002F178C(0x4E454E414D524550uLL, 0xEF205347414C4654, v2 + 8, v96);
      if (v98)
      {
        v99._countAndFlagsBits = 0x4E454E414D524550;
        v99._object = 0xEF205347414C4654;
        v97 = ByteBuffer._setStringSlowpath(_:at:)(v99, v96);
      }

      v100 = v97;
      v101 = *(v2 + 20);
      v26 = __CFADD__(v101, v97);
      v102 = v101 + v97;
      if (v26)
      {
        goto LABEL_268;
      }

      *(v2 + 20) = v102;
      a1 = sub_100476040(v95);

      result = (v100 + a1);
      if (!__OFADD__(v100, a1))
      {
        return result;
      }

      __break(1u);
LABEL_56:
      v103 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0xE0);
      *(v4 + 12) = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0xD0);
      *(v4 + 13) = v103;
      v104 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x100);
      *(v4 + 14) = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0xF0);
      *(v4 + 15) = v104;
      v105 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0xA0);
      *(v4 + 8) = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x90);
      *(v4 + 9) = v105;
      v106 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0xC0);
      *(v4 + 10) = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0xB0);
      *(v4 + 11) = v106;
      v107 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x60);
      *(v4 + 4) = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x50);
      *(v4 + 5) = v107;
      v108 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x80);
      *(v4 + 6) = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x70);
      *(v4 + 7) = v108;
      v109 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
      *v4 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      *(v4 + 1) = v109;
      v110 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x40);
      *(v4 + 2) = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x30);
      *(v4 + 3) = v110;
      v111 = *(v2 + 20);
      sub_10042ECA8(v305, v304);
      v112 = sub_1002F178C(0x4C41525245464552uLL, 0xE900000000000020, v2 + 8, v111);
      if (v113)
      {
        v114._countAndFlagsBits = 0x4C41525245464552;
        v114._object = 0xE900000000000020;
        v112 = ByteBuffer._setStringSlowpath(_:at:)(v114, v111);
      }

      v115 = v112;
      v116 = *(v2 + 20);
      v26 = __CFADD__(v116, v112);
      v117 = v116 + v112;
      if (v26)
      {
        goto LABEL_269;
      }

      *(v2 + 20) = v117;
      a1 = sub_1004328B0(v305);
      sub_10042ED04(v305);
      result = (v115 + a1);
      if (!__OFADD__(v115, a1))
      {
        return result;
      }

      __break(1u);
LABEL_62:
      v118 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v119 = *(v2 + 20);
      v120 = sub_1002F178C(0x205458454E444955uLL, 0xE800000000000000, v2 + 8, v119);
      if (v121)
      {
        v122._countAndFlagsBits = 0x205458454E444955;
        v122._object = 0xE800000000000000;
        v120 = ByteBuffer._setStringSlowpath(_:at:)(v122, v119);
      }

      v10 = v120;
      v123 = *(v2 + 20);
      v26 = __CFADD__(v123, v120);
      v124 = v123 + v120;
      if (v26)
      {
        goto LABEL_270;
      }

      *(v2 + 20) = v124;
      v125 = sub_1004A095C(v118);
      v28 = __OFADD__(v10, v125);
      result = &v10[v125];
      if (v28)
      {
        __break(1u);
LABEL_68:
        v126 = swift_projectBox();
        sub_100486B00(v126, v10);
        v127 = sub_10047BB24();
        sub_100486B64(v10);
        return v127;
      }

      return result;
    case 3uLL:
      goto LABEL_62;
    case 4uLL:
      goto LABEL_33;
    case 5uLL:
      goto LABEL_77;
    case 6uLL:
      v158 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v159 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
      v160 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x20);

      v127 = sub_10046002C(v158, v159, v160);

      goto LABEL_98;
    case 7uLL:
      goto LABEL_68;
    case 8uLL:
      goto LABEL_97;
    case 9uLL:
      goto LABEL_47;
    case 0xAuLL:
      v161 = swift_projectBox();
      sub_10000E268(v161, v7, &qword_1005DC5D8, &unk_100502CC0);
      v162 = *(v2 + 20);
      v163 = sub_1002F178C(0x4445494649444F4DuLL, 0xE900000000000020, v2 + 8, v162);
      if (v164)
      {
        v165._countAndFlagsBits = 0x4445494649444F4DLL;
        v165._object = 0xE900000000000020;
        v163 = ByteBuffer._setStringSlowpath(_:at:)(v165, v162);
      }

      v166 = v163;
      v167 = *(v2 + 20);
      v26 = __CFADD__(v167, v163);
      v168 = v167 + v163;
      if (v26)
      {
        goto LABEL_273;
      }

      *(v2 + 20) = v168;
      a1 = sub_10048DC20(v7);
      sub_100025F40(v7, &qword_1005DC5D8, &unk_100502CC0);
      result = (v166 + a1);
      if (!__OFADD__(v166, a1))
      {
        return result;
      }

      __break(1u);
LABEL_97:
      v169 = a1 & 0xFFFFFFFFFFFFFFBLL;
      v170 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v171 = *(v169 + 24);
      v172 = *(v169 + 32);

      v127 = sub_10047C0D8(v170, v171, v172);
LABEL_98:

LABEL_99:

      return v127;
    case 0xBuLL:
      v50 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v51 = *(v2 + 20);
      v52 = sub_1002F178C(0x4D54534548474948uLL, 0xEE0020514553444FLL, v2 + 8, v51);
      if (v53)
      {
        v54._countAndFlagsBits = 0x4D54534548474948;
        v54._object = 0xEE0020514553444FLL;
        v52 = ByteBuffer._setStringSlowpath(_:at:)(v54, v51);
      }

      v55 = v52;
      v56 = *(v2 + 20);
      v57 = (v56 + v52);
      if (__CFADD__(v56, v52))
      {
        goto LABEL_266;
      }

      *(v2 + 20) = v57;
      v305[0] = v50;
      v58 = sub_1004A6CE4();
      v60 = v59;
      v61 = sub_1002F178C(v58, v59, v2 + 8, v57);
      if (v62)
      {
        v63._countAndFlagsBits = v58;
        v63._object = v60;
        v61 = ByteBuffer._setStringSlowpath(_:at:)(v63, v57);
      }

      a1 = v61;

      v64 = *(v2 + 20);
      v26 = __CFADD__(v64, a1);
      v65 = v64 + a1;
      if (v26)
      {
        goto LABEL_275;
      }

      *(v2 + 20) = v65;
      result = (v55 + a1);
      if (!__OFADD__(v55, a1))
      {
        return result;
      }

      __break(1u);
LABEL_33:
      v66 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v67 = *(v2 + 20);
      v68 = sub_1002F178C(0x44494C4156444955uLL, 0xEC00000020595449, v2 + 8, v67);
      if (v69)
      {
        v70._countAndFlagsBits = 0x44494C4156444955;
        v70._object = 0xEC00000020595449;
        v68 = ByteBuffer._setStringSlowpath(_:at:)(v70, v67);
      }

      v71 = v68;
      v72 = *(v2 + 20);
      v73 = (v72 + v68);
      if (__CFADD__(v72, v68))
      {
        goto LABEL_267;
      }

      *(v2 + 20) = v73;
      LODWORD(v305[0]) = v66;
      v74 = sub_1004A6CE4();
      v76 = v75;
      v77 = sub_1002F178C(v74, v75, v2 + 8, v73);
      if (v78)
      {
        v79._countAndFlagsBits = v74;
        v79._object = v76;
        v77 = ByteBuffer._setStringSlowpath(_:at:)(v79, v73);
      }

      a1 = v77;

      v80 = *(v2 + 20);
      v26 = __CFADD__(v80, a1);
      v81 = v80 + a1;
      if (v26)
      {
        goto LABEL_276;
      }

      *(v2 + 20) = v81;
      result = (v71 + a1);
      if (!__OFADD__(v71, a1))
      {
        return result;
      }

      __break(1u);
LABEL_42:
      v82 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v305[0] = 0;
      v305[1] = 0xE000000000000000;
      sub_1004A6724(23);

      v305[0] = 0xD000000000000015;
      v305[1] = 0x80000001004B0FD0;
      v304[0] = v82;
      v307._countAndFlagsBits = sub_1004A6CE4();
      sub_1004A5994(v307);

      v84 = v305[0];
      v83 = v305[1];
      v85 = *(v2 + 20);
      v86 = sub_1002F178C(v305[0], v305[1], v2 + 8, v85);
      if (v87)
      {
        v88._countAndFlagsBits = v84;
        v88._object = v83;
        v86 = ByteBuffer._setStringSlowpath(_:at:)(v88, v85);
      }

      a1 = v86;

      v89 = *(v2 + 20);
      result = a1;
      v26 = __CFADD__(v89, a1);
      v90 = v89 + a1;
      if (!v26)
      {
        goto LABEL_89;
      }

      __break(1u);
LABEL_47:
      v91 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v92 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
      v93 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
      v94 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x28);

      return sub_100485C14(v91, v92, v93, v94);
    case 0xCuLL:
      goto LABEL_42;
    case 0xDuLL:
      goto LABEL_86;
    case 0xEuLL:
      goto LABEL_16;
    case 0xFuLL:
      goto LABEL_56;
    case 0x10uLL:
      v14 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v13 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
      v15 = *(v2 + 20);

      v16 = sub_1002F178C(0x49584F424C49414DuLL, 0xEB00000000282044, v2 + 8, v15);
      if (v17)
      {
        v18._countAndFlagsBits = 0x49584F424C49414DLL;
        v18._object = 0xEB00000000282044;
        v16 = ByteBuffer._setStringSlowpath(_:at:)(v18, v15);
      }

      v19 = v16;
      v20 = *(v2 + 20);
      v21 = (v20 + v16);
      if (__CFADD__(v20, v16))
      {
        goto LABEL_264;
      }

      *(v2 + 20) = v21;

      v22 = sub_1002F178C(v14, v13, v2 + 8, v21);
      if (v23)
      {
        v24._countAndFlagsBits = v14;
        v24._object = v13;
        v22 = ByteBuffer._setStringSlowpath(_:at:)(v24, v21);
      }

      a1 = v22;

      v25 = *(v2 + 20);
      v26 = __CFADD__(v25, a1);
      v27 = v25 + a1;
      if (v26)
      {
        goto LABEL_274;
      }

      *(v2 + 20) = v27;

      v28 = __OFADD__(v19, a1);
      v29 = v19 + a1;
      if (v28)
      {
        goto LABEL_279;
      }

      v30 = *(v2 + 20);
      v31 = sub_1002F178C(0x29uLL, 0xE100000000000000, v2 + 8, v30);
      if (v32)
      {
        a1 = v2 + 8;
        v33._countAndFlagsBits = 41;
        v33._object = 0xE100000000000000;
        v31 = ByteBuffer._setStringSlowpath(_:at:)(v33, v30);
      }

      v34 = *(v2 + 20);
      v26 = __CFADD__(v34, v31);
      v35 = v34 + v31;
      if (v26)
      {
        goto LABEL_280;
      }

      *(v2 + 20) = v35;
      v28 = __OFADD__(v29, v31);
      result = (v29 + v31);
      if (!v28)
      {
        return result;
      }

      __break(1u);
LABEL_16:
      v37 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v38 = *(v2 + 20);

      v39 = sub_1002F178C(0xD000000000000010, 0x80000001004B0F50, v2 + 8, v38);
      if (v40)
      {
        v41._object = 0x80000001004B0F50;
        v41._countAndFlagsBits = 0xD000000000000010;
        v39 = ByteBuffer._setStringSlowpath(_:at:)(v41, v38);
      }

      v42 = v39;
      v43 = *(v2 + 20);
      v44 = (v43 + v39);
      if (__CFADD__(v43, v39))
      {
        goto LABEL_265;
      }

      *(v2 + 20) = v44;
      v305[0] = v37;
      if (*(v37 + 16))
      {
        v39 = sub_1002F178C(0x20uLL, 0xE100000000000000, v2 + 8, v44);
        if (v45)
        {
          v46._countAndFlagsBits = 32;
          v46._object = 0xE100000000000000;
          v39 = ByteBuffer._setStringSlowpath(_:at:)(v46, v44);
        }

        v47 = v39;
        v48 = *(v2 + 20);
        v26 = __CFADD__(v48, v39);
        v49 = v48 + v39;
        if (v26)
        {
          goto LABEL_282;
        }

        *(v2 + 20) = v49;
      }

      else
      {
        v47 = 0;
      }

      __chkstk_darwin(v39);
      *(&v303 - 6) = sub_100485D38;
      *(&v303 - 5) = 0;
      *(&v303 - 4) = v2;
      *(&v303 - 3) = v305;
      *(&v303 - 2) = 32;
      *(&v303 - 1) = 0xE100000000000000;
      v173 = sub_1004533DC(0, sub_100486D14, (&v303 - 8), v37);
      v174 = v47 + v173;
      if (__OFADD__(v47, v173))
      {
        goto LABEL_278;
      }

      if (*(v37 + 16))
      {
        v175 = *(v2 + 20);
        v176 = sub_1002F178C(0, 0xE000000000000000, v2 + 8, v175);
        if (v177)
        {
          v178._countAndFlagsBits = 0;
          v178._object = 0xE000000000000000;
          v176 = ByteBuffer._setStringSlowpath(_:at:)(v178, v175);
        }

        v179 = v176;
        v180 = *(v2 + 20);
        v26 = __CFADD__(v180, v176);
        v181 = v180 + v176;
        if (v26)
        {
LABEL_283:
          __break(1u);
          JUMPOUT(0x100484C4CLL);
        }

        *(v2 + 20) = v181;
      }

      else
      {
        v179 = 0;
      }

      v182 = v174 + v179;
      if (__OFADD__(v174, v179))
      {
        goto LABEL_281;
      }

      result = (v42 + v182);
      if (__OFADD__(v42, v182))
      {
        __break(1u);
LABEL_114:
        v183 = *(v2 + 20);
        result = sub_1002F178C(0x544F55515245564FuLL, 0xE900000000000041, v2 + 8, v183);
        if (v184)
        {
          v185._object = 0xE900000000000041;
          v185._countAndFlagsBits = 0x544F55515245564FLL;
          result = ByteBuffer._setStringSlowpath(_:at:)(v185, v183);
        }

        v186 = *(v2 + 20);
        v26 = __CFADD__(v186, result);
        v90 = v186 + result;
        if (!v26)
        {
          goto LABEL_89;
        }

        __break(1u);
LABEL_119:
        v187 = *(v2 + 20);
        result = sub_1002F178C(0x44455249505845uLL, 0xE700000000000000, v2 + 8, v187);
        if (v188)
        {
          v189._countAndFlagsBits = 0x44455249505845;
          v189._object = 0xE700000000000000;
          result = ByteBuffer._setStringSlowpath(_:at:)(v189, v187);
        }

        v190 = *(v2 + 20);
        v26 = __CFADD__(v190, result);
        v90 = v190 + result;
        if (!v26)
        {
          goto LABEL_89;
        }

        __break(1u);
LABEL_124:
        v191 = *(v2 + 20);
        result = sub_1002F178C(0xD000000000000014, 0x80000001004B0A30, v2 + 8, v191);
        if (v192)
        {
          v193._countAndFlagsBits = 0xD000000000000014;
          v193._object = 0x80000001004B0A30;
          result = ByteBuffer._setStringSlowpath(_:at:)(v193, v191);
        }

        v194 = *(v2 + 20);
        v26 = __CFADD__(v194, result);
        v90 = v194 + result;
        if (!v26)
        {
          goto LABEL_89;
        }

        __break(1u);
LABEL_129:
        v195 = *(v2 + 20);
        result = sub_1002F178C(0xD000000000000010, 0x80000001004B0F90, v2 + 8, v195);
        if (v196)
        {
          v197._object = 0x80000001004B0F90;
          v197._countAndFlagsBits = 0xD000000000000010;
          result = ByteBuffer._setStringSlowpath(_:at:)(v197, v195);
        }

        v198 = *(v2 + 20);
        v26 = __CFADD__(v198, result);
        v90 = v198 + result;
        if (!v26)
        {
          goto LABEL_89;
        }

        __break(1u);
LABEL_134:
        v199 = *(v2 + 20);
        result = sub_1002F178C(0x4952572D44414552uLL, 0xEA00000000004554, v2 + 8, v199);
        if (v200)
        {
          v201._countAndFlagsBits = 0x4952572D44414552;
          v201._object = 0xEA00000000004554;
          result = ByteBuffer._setStringSlowpath(_:at:)(v201, v199);
        }

        v202 = *(v2 + 20);
        v26 = __CFADD__(v202, result);
        v90 = v202 + result;
        if (!v26)
        {
          goto LABEL_89;
        }

        __break(1u);
LABEL_139:
        v203 = *(v2 + 20);
        result = sub_1002F178C(0xD000000000000012, 0x80000001004B0F70, v2 + 8, v203);
        if (v204)
        {
          v205._countAndFlagsBits = 0xD000000000000012;
          v205._object = 0x80000001004B0F70;
          result = ByteBuffer._setStringSlowpath(_:at:)(v205, v203);
        }

        v206 = *(v2 + 20);
        v26 = __CFADD__(v206, result);
        v90 = v206 + result;
        if (!v26)
        {
          goto LABEL_89;
        }

        __break(1u);
LABEL_144:
        v207 = *(v2 + 20);
        result = sub_1002F178C(0x4445534F4C43uLL, 0xE600000000000000, v2 + 8, v207);
        if (v208)
        {
          v209._countAndFlagsBits = 0x4445534F4C43;
          v209._object = 0xE600000000000000;
          result = ByteBuffer._setStringSlowpath(_:at:)(v209, v207);
        }

        v210 = *(v2 + 20);
        v26 = __CFADD__(v210, result);
        v90 = v210 + result;
        if (!v26)
        {
          goto LABEL_89;
        }

        __break(1u);
LABEL_149:
        v211 = *(v2 + 20);
        result = sub_1002F178C(0x544F4E4E4143uLL, 0xE600000000000000, v2 + 8, v211);
        if (v212)
        {
          v213._countAndFlagsBits = 0x544F4E4E4143;
          v213._object = 0xE600000000000000;
          result = ByteBuffer._setStringSlowpath(_:at:)(v213, v211);
        }

        v214 = *(v2 + 20);
        v26 = __CFADD__(v214, result);
        v90 = v214 + result;
        if (!v26)
        {
          goto LABEL_89;
        }

        __break(1u);
LABEL_154:
        v215 = *(v2 + 20);
        result = sub_1002F178C(0x5542544E45494C43uLL, 0xE900000000000047, v2 + 8, v215);
        if (v216)
        {
          v217._object = 0xE900000000000047;
          v217._countAndFlagsBits = 0x5542544E45494C43;
          result = ByteBuffer._setStringSlowpath(_:at:)(v217, v215);
        }

        v218 = *(v2 + 20);
        v26 = __CFADD__(v218, result);
        v90 = v218 + result;
        if (!v26)
        {
          goto LABEL_89;
        }

        __break(1u);
LABEL_159:
        v219 = *(v2 + 20);
        result = sub_1002F178C(0x4553524150uLL, 0xE500000000000000, v2 + 8, v219);
        if (v220)
        {
          v221._countAndFlagsBits = 0x4553524150;
          v221._object = 0xE500000000000000;
          result = ByteBuffer._setStringSlowpath(_:at:)(v221, v219);
        }

        v222 = *(v2 + 20);
        v26 = __CFADD__(v222, result);
        v90 = v222 + result;
        if (!v26)
        {
          goto LABEL_89;
        }

        __break(1u);
LABEL_164:
        v223 = *(v2 + 20);
        result = sub_1002F178C(0xD000000000000013, 0x80000001004B0A50, v2 + 8, v223);
        if (v224)
        {
          v225._countAndFlagsBits = 0xD000000000000013;
          v225._object = 0x80000001004B0A50;
          result = ByteBuffer._setStringSlowpath(_:at:)(v225, v223);
        }

        v226 = *(v2 + 20);
        v26 = __CFADD__(v226, result);
        v90 = v226 + result;
        if (!v26)
        {
          goto LABEL_89;
        }

        __break(1u);
LABEL_169:
        v227 = *(v2 + 20);
        result = sub_1002F178C(0x4C4E4F2D44414552uLL, 0xE900000000000059, v2 + 8, v227);
        if (v228)
        {
          v229._object = 0xE900000000000059;
          v229._countAndFlagsBits = 0x4C4E4F2D44414552;
          result = ByteBuffer._setStringSlowpath(_:at:)(v229, v227);
        }

        v230 = *(v2 + 20);
        v26 = __CFADD__(v230, result);
        v90 = v230 + result;
        if (!v26)
        {
          goto LABEL_89;
        }

        __break(1u);
LABEL_174:
        v231 = *(v2 + 20);
        result = sub_1002F178C(0x52545441455355uLL, 0xE700000000000000, v2 + 8, v231);
        if (v232)
        {
          v233._countAndFlagsBits = 0x52545441455355;
          v233._object = 0xE700000000000000;
          result = ByteBuffer._setStringSlowpath(_:at:)(v233, v231);
        }

        v234 = *(v2 + 20);
        v26 = __CFADD__(v234, result);
        v90 = v234 + result;
        if (!v26)
        {
          goto LABEL_89;
        }

        __break(1u);
LABEL_179:
        v235 = *(v2 + 20);
        result = sub_1002F178C(0x4559444145524C41uLL, 0xED00005354534958, v2 + 8, v235);
        if (v236)
        {
          v237._countAndFlagsBits = 0x4559444145524C41;
          v237._object = 0xED00005354534958;
          result = ByteBuffer._setStringSlowpath(_:at:)(v237, v235);
        }

        v238 = *(v2 + 20);
        v26 = __CFADD__(v238, result);
        v90 = v238 + result;
        if (!v26)
        {
          goto LABEL_89;
        }

        __break(1u);
LABEL_184:
        v239 = *(v2 + 20);
        result = sub_1002F178C(0x5259434156495250uLL, 0xEF44455249555145, v2 + 8, v239);
        if (v240)
        {
          v241._countAndFlagsBits = 0x5259434156495250;
          v241._object = 0xEF44455249555145;
          result = ByteBuffer._setStringSlowpath(_:at:)(v241, v239);
        }

        v242 = *(v2 + 20);
        v26 = __CFADD__(v242, result);
        v90 = v242 + result;
        if (!v26)
        {
          goto LABEL_89;
        }

        __break(1u);
LABEL_189:
        v243 = *(v2 + 20);
        result = sub_1002F178C(0x4553554E49uLL, 0xE500000000000000, v2 + 8, v243);
        if (v244)
        {
          v245._countAndFlagsBits = 0x4553554E49;
          v245._object = 0xE500000000000000;
          result = ByteBuffer._setStringSlowpath(_:at:)(v245, v243);
        }

        v246 = *(v2 + 20);
        v26 = __CFADD__(v246, result);
        v90 = v246 + result;
        if (!v26)
        {
          goto LABEL_89;
        }

        __break(1u);
LABEL_194:
        v247 = *(v2 + 20);
        result = sub_1002F178C(0x5441455243595254uLL, 0xE900000000000045, v2 + 8, v247);
        if (v248)
        {
          v249._object = 0xE900000000000045;
          v249._countAndFlagsBits = 0x5441455243595254;
          result = ByteBuffer._setStringSlowpath(_:at:)(v249, v247);
        }

        v250 = *(v2 + 20);
        v26 = __CFADD__(v250, result);
        v90 = v250 + result;
        if (!v26)
        {
          goto LABEL_89;
        }

        __break(1u);
LABEL_199:
        v251 = *(v2 + 20);
        result = sub_1002F178C(0x4945474E55505845uLL, 0xED00004445555353, v2 + 8, v251);
        if (v252)
        {
          v253._countAndFlagsBits = 0x4945474E55505845;
          v253._object = 0xED00004445555353;
          result = ByteBuffer._setStringSlowpath(_:at:)(v253, v251);
        }

        v254 = *(v2 + 20);
        v26 = __CFADD__(v254, result);
        v90 = v254 + result;
        if (!v26)
        {
          goto LABEL_89;
        }

        __break(1u);
LABEL_204:
        v255 = *(v2 + 20);
        result = sub_1002F178C(0x414C494156414E55uLL, 0xEB00000000454C42, v2 + 8, v255);
        if (v256)
        {
          v257._countAndFlagsBits = 0x414C494156414E55;
          v257._object = 0xEB00000000454C42;
          result = ByteBuffer._setStringSlowpath(_:at:)(v257, v255);
        }

        v258 = *(v2 + 20);
        v26 = __CFADD__(v258, result);
        v90 = v258 + result;
        if (!v26)
        {
          goto LABEL_89;
        }

        __break(1u);
LABEL_209:
        v259 = *(v2 + 20);
        result = sub_1002F178C(0x5453544F4E444955uLL, 0xEC000000594B4349, v2 + 8, v259);
        if (v260)
        {
          v261._countAndFlagsBits = 0x5453544F4E444955;
          v261._object = 0xEC000000594B4349;
          result = ByteBuffer._setStringSlowpath(_:at:)(v261, v259);
        }

        v262 = *(v2 + 20);
        v26 = __CFADD__(v262, result);
        v90 = v262 + result;
        if (!v26)
        {
          goto LABEL_89;
        }

        __break(1u);
LABEL_214:
        v263 = *(v2 + 20);
        result = sub_1002F178C(0x41544341544E4F43uLL, 0xEC0000004E494D44, v2 + 8, v263);
        if (v264)
        {
          v265._countAndFlagsBits = 0x41544341544E4F43;
          v265._object = 0xEC0000004E494D44;
          result = ByteBuffer._setStringSlowpath(_:at:)(v265, v263);
        }

        v266 = *(v2 + 20);
        v26 = __CFADD__(v266, result);
        v90 = v266 + result;
        if (!v26)
        {
          goto LABEL_89;
        }

        __break(1u);
LABEL_219:
        v267 = *(v2 + 20);
        result = sub_1002F178C(0x514553444F4D4F4EuLL, 0xE800000000000000, v2 + 8, v267);
        if (v268)
        {
          v269._countAndFlagsBits = 0x514553444F4D4F4ELL;
          v269._object = 0xE800000000000000;
          result = ByteBuffer._setStringSlowpath(_:at:)(v269, v267);
        }

        v270 = *(v2 + 20);
        v26 = __CFADD__(v270, result);
        v90 = v270 + result;
        if (!v26)
        {
          goto LABEL_89;
        }

        __break(1u);
LABEL_224:
        v271 = *(v2 + 20);
        result = sub_1002F178C(0x4445564153544F4EuLL, 0xE800000000000000, v2 + 8, v271);
        if (v272)
        {
          v273._countAndFlagsBits = 0x4445564153544F4ELL;
          v273._object = 0xE800000000000000;
          result = ByteBuffer._setStringSlowpath(_:at:)(v273, v271);
        }

        v274 = *(v2 + 20);
        v26 = __CFADD__(v274, result);
        v90 = v274 + result;
        if (!v26)
        {
          goto LABEL_89;
        }

        __break(1u);
LABEL_229:
        v275 = *(v2 + 20);
        result = sub_1002F178C(0x4955514552444955uLL, 0xEB00000000444552, v2 + 8, v275);
        if (v276)
        {
          v277._countAndFlagsBits = 0x4955514552444955;
          v277._object = 0xEB00000000444552;
          result = ByteBuffer._setStringSlowpath(_:at:)(v277, v275);
        }

        v278 = *(v2 + 20);
        v26 = __CFADD__(v278, result);
        v90 = v278 + result;
        if (!v26)
        {
          goto LABEL_89;
        }

        __break(1u);
LABEL_234:
        v279 = *(v2 + 20);
        result = sub_1002F178C(0x4954505552524F43uLL, 0xEA00000000004E4FLL, v2 + 8, v279);
        if (v280)
        {
          v281._object = 0xEA00000000004E4FLL;
          v281._countAndFlagsBits = 0x4954505552524F43;
          result = ByteBuffer._setStringSlowpath(_:at:)(v281, v279);
        }

        v282 = *(v2 + 20);
        v26 = __CFADD__(v282, result);
        v90 = v282 + result;
        if (!v26)
        {
          goto LABEL_89;
        }

        __break(1u);
LABEL_239:
        v283 = *(v2 + 20);
        result = sub_1002F178C(0x4D5245504F4EuLL, 0xE600000000000000, v2 + 8, v283);
        if (v284)
        {
          v285._countAndFlagsBits = 0x4D5245504F4ELL;
          v285._object = 0xE600000000000000;
          result = ByteBuffer._setStringSlowpath(_:at:)(v285, v283);
        }

        v286 = *(v2 + 20);
        v26 = __CFADD__(v286, result);
        v90 = v286 + result;
        if (!v26)
        {
          goto LABEL_89;
        }

        __break(1u);
LABEL_244:
        v287 = *(v2 + 20);
        result = sub_1002F178C(0x5542524556524553uLL, 0xE900000000000047, v2 + 8, v287);
        if (v288)
        {
          v289._object = 0xE900000000000047;
          v289._countAndFlagsBits = 0x5542524556524553;
          result = ByteBuffer._setStringSlowpath(_:at:)(v289, v287);
        }

        v290 = *(v2 + 20);
        v26 = __CFADD__(v290, result);
        v90 = v290 + result;
        if (!v26)
        {
          goto LABEL_89;
        }

        __break(1u);
LABEL_249:
        v291 = *(v2 + 20);
        result = sub_1002F178C(0x54534958454E4F4EuLL, 0xEB00000000544E45, v2 + 8, v291);
        if (v292)
        {
          v293._countAndFlagsBits = 0x54534958454E4F4ELL;
          v293._object = 0xEB00000000544E45;
          result = ByteBuffer._setStringSlowpath(_:at:)(v293, v291);
        }

        v294 = *(v2 + 20);
        v26 = __CFADD__(v294, result);
        v90 = v294 + result;
        if (!v26)
        {
          goto LABEL_89;
        }

        __break(1u);
LABEL_254:
        v295 = *(v2 + 20);
        result = sub_1002F178C(0xD000000000000011, 0x80000001004B0A70, v2 + 8, v295);
        if (v296)
        {
          v297._countAndFlagsBits = 0xD000000000000011;
          v297._object = 0x80000001004B0A70;
          result = ByteBuffer._setStringSlowpath(_:at:)(v297, v295);
        }

        v298 = *(v2 + 20);
        v26 = __CFADD__(v298, result);
        v90 = v298 + result;
        if (!v26)
        {
          goto LABEL_89;
        }

        __break(1u);
LABEL_259:
        v299 = *(v2 + 20);
        result = sub_1002F178C(0x54494D494CuLL, 0xE500000000000000, v2 + 8, v299);
        if (v300)
        {
          v301._countAndFlagsBits = 0x54494D494CLL;
          v301._object = 0xE500000000000000;
          result = ByteBuffer._setStringSlowpath(_:at:)(v301, v299);
        }

        v302 = *(v2 + 20);
        v26 = __CFADD__(v302, result);
        v90 = v302 + result;
        if (!v26)
        {
LABEL_89:
          *(v2 + 20) = v90;
          return result;
        }

        __break(1u);
LABEL_264:
        __break(1u);
LABEL_265:
        __break(1u);
LABEL_266:
        __break(1u);
LABEL_267:
        __break(1u);
LABEL_268:
        __break(1u);
LABEL_269:
        __break(1u);
LABEL_270:
        __break(1u);
LABEL_271:
        __break(1u);
LABEL_272:
        __break(1u);
LABEL_273:
        __break(1u);
LABEL_274:
        __break(1u);
LABEL_275:
        __break(1u);
LABEL_276:
        __break(1u);
LABEL_277:
        __break(1u);
LABEL_278:
        __break(1u);
LABEL_279:
        __break(1u);
LABEL_280:
        __break(1u);
LABEL_281:
        __break(1u);
LABEL_282:
        __break(1u);
        goto LABEL_283;
      }

      return result;
    case 0x11uLL:
      switch(__ROR8__(a1 + 0x7FFFFFFFFFFFFFFCLL, 3))
      {
        case 1:
          goto LABEL_179;
        case 2:
          goto LABEL_159;
        case 3:
          goto LABEL_169;
        case 4:
          goto LABEL_134;
        case 5:
          goto LABEL_194;
        case 6:
          goto LABEL_209;
        case 7:
          goto LABEL_174;
        case 8:
          goto LABEL_224;
        case 9:
          goto LABEL_144;
        case 0xALL:
          goto LABEL_219;
        case 0xBLL:
          goto LABEL_129;
        case 0xCLL:
          goto LABEL_139;
        case 0xDLL:
          goto LABEL_204;
        case 0xELL:
          goto LABEL_124;
        case 0xFLL:
          goto LABEL_164;
        case 0x10:
          goto LABEL_119;
        case 0x11:
          goto LABEL_184;
        case 0x12:
          goto LABEL_214;
        case 0x13:
          goto LABEL_239;
        case 0x14:
          goto LABEL_189;
        case 0x15:
          goto LABEL_199;
        case 0x16:
          goto LABEL_234;
        case 0x17:
          goto LABEL_244;
        case 0x18:
          goto LABEL_154;
        case 0x19:
          goto LABEL_149;
        case 0x1ALL:
          goto LABEL_259;
        case 0x1BLL:
          goto LABEL_114;
        case 0x1CLL:
          goto LABEL_249;
        case 0x1DLL:
          goto LABEL_254;
        case 0x1ELL:
          goto LABEL_229;
        default:
          v129 = *(v2 + 20);
          result = sub_1002F178C(0x5452454C41uLL, 0xE500000000000000, v2 + 8, v129);
          if (v130)
          {
            a1 = v2 + 8;
            v131._countAndFlagsBits = 0x5452454C41;
            v131._object = 0xE500000000000000;
            result = ByteBuffer._setStringSlowpath(_:at:)(v131, v129);
          }

          v132 = *(v2 + 20);
          v26 = __CFADD__(v132, result);
          v90 = v132 + result;
          if (!v26)
          {
            goto LABEL_89;
          }

          __break(1u);
          break;
      }

LABEL_77:
      v133 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v134 = *(v2 + 20);
      v135 = sub_1002F178C(0x204E4545534E55uLL, 0xE700000000000000, v2 + 8, v134);
      if (v136)
      {
        v137._countAndFlagsBits = 0x204E4545534E55;
        v137._object = 0xE700000000000000;
        v135 = ByteBuffer._setStringSlowpath(_:at:)(v137, v134);
      }

      v138 = v135;
      v139 = *(v2 + 20);
      v140 = (v139 + v135);
      if (__CFADD__(v139, v135))
      {
        goto LABEL_271;
      }

      *(v2 + 20) = v140;
      LODWORD(v305[0]) = v133;
      v141 = sub_1004A6CE4();
      v143 = v142;
      v144 = sub_1002F178C(v141, v142, v2 + 8, v140);
      if (v145)
      {
        v146._countAndFlagsBits = v141;
        v146._object = v143;
        v144 = ByteBuffer._setStringSlowpath(_:at:)(v146, v140);
      }

      a1 = v144;

      v147 = *(v2 + 20);
      v26 = __CFADD__(v147, a1);
      v148 = v147 + a1;
      if (v26)
      {
        goto LABEL_277;
      }

      *(v2 + 20) = v148;
      result = (v138 + a1);
      if (!__OFADD__(v138, a1))
      {
        return result;
      }

      __break(1u);
LABEL_86:
      v149 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v305[0] = 0xD000000000000011;
      v305[1] = 0x80000001004B0FB0;
      v304[0] = v149;
      v308._countAndFlagsBits = sub_1004A6CE4();
      sub_1004A5994(v308);

      v151 = v305[0];
      v150 = v305[1];
      v152 = *(v2 + 20);
      v153 = sub_1002F178C(v305[0], v305[1], v2 + 8, v152);
      if (v154)
      {
        v155._countAndFlagsBits = v151;
        v155._object = v150;
        v153 = ByteBuffer._setStringSlowpath(_:at:)(v155, v152);
      }

      v156 = v153;

      v157 = *(v2 + 20);
      result = v156;
      v26 = __CFADD__(v157, v156);
      v90 = v157 + v156;
      if (!v26)
      {
        goto LABEL_89;
      }

      goto LABEL_272;
    default:

      v12 = sub_10048595C(v11);
LABEL_70:
      v127 = v12;
      goto LABEL_99;
  }
}

void ResponseTextCode.hash(into:)(uint64_t a1, unint64_t a2)
{
  v4 = sub_10000C9C0(&qword_1005DC5C8, &qword_10050B730);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v55 - v6;
  v8 = sub_10000C9C0(&qword_1005DC5D8, &unk_100502CC0);
  __chkstk_darwin(v8 - 8);
  v10 = v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = v55 - v12;
  v14 = type metadata accessor for ResponseCodeAppend(0);
  __chkstk_darwin(v14);
  v16 = (v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  switch((a2 >> 59) & 0x1E | (a2 >> 2) & 1)
  {
    case 1uLL:
      v40 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      sub_1004A6EB4(3uLL);

      sub_1002E5AF4(a1, v40);
      goto LABEL_32;
    case 2uLL:
      v30 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      sub_1004A6EB4(5uLL);

      sub_1003AF39C(a1, v30);
      goto LABEL_32;
    case 3uLL:
      v25 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v26 = 9;
      goto LABEL_28;
    case 4uLL:
      v25 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v26 = 10;
      goto LABEL_28;
    case 5uLL:
      v25 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v26 = 11;
LABEL_28:
      sub_1004A6EB4(v26);
      sub_1004A6EE4(v25);
      return;
    case 6uLL:
      v42 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v43 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
      v44 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
      sub_1004A6EB4(0xCuLL);

      sub_1003AF0EC(a1, v42);
      sub_1003AF0EC(a1, v43);
      sub_1003AF0EC(a1, v44);

      goto LABEL_32;
    case 7uLL:
      v39 = swift_projectBox();
      sub_100486B00(v39, v16);
      sub_1004A6EB4(0xDuLL);
      sub_1004A6EE4(*v16);
      sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
      sub_1000956A0();
      sub_1004A5564();
      sub_100486B64(v16);
      return;
    case 8uLL:
      v46 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v48 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
      v47 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
      sub_1004A6EB4(0xEuLL);
      sub_1004A6EE4(v46);
      sub_1004A6EB4(*(v48 + 16));
      v49 = *(v48 + 16);
      if (v49)
      {
        v50 = (v48 + 36);
        do
        {
          v51 = *v50;
          sub_1004A6EE4(*(v50 - 1));
          sub_1004A6EE4(v51);
          v50 += 2;
          --v49;
        }

        while (v49);
      }

      sub_1004A6EB4(*(v47 + 16));
      v52 = *(v47 + 16);
      if (v52)
      {
        v53 = (v47 + 36);
        do
        {
          v54 = *v53;
          sub_1004A6EE4(*(v53 - 1));
          sub_1004A6EE4(v54);
          v53 += 2;
          --v52;
        }

        while (v52);
      }

      return;
    case 9uLL:
      v29 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x28);
      sub_1004A6EB4(0x11uLL);
      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
      if (v29)
      {
        sub_1004A6EC4(1u);

        _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
      }

      else
      {
        sub_1004A6EC4(0);
      }

      return;
    case 0xAuLL:
      v45 = swift_projectBox();
      sub_10000E268(v45, v13, &qword_1005DC5D8, &unk_100502CC0);
      sub_1004A6EB4(0x15uLL);
      sub_10000E268(v13, v10, &qword_1005DC5D8, &unk_100502CC0);
      if ((*(v5 + 48))(v10, 1, v4) == 1)
      {
        sub_1004A6EB4(1uLL);
      }

      else
      {
        sub_100025FDC(v10, v7, &qword_1005DC5C8, &qword_10050B730);
        sub_1004A6EB4(0);
        sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
        sub_1000956A0();
        sub_1004A5564();
        sub_100025F40(v7, &qword_1005DC5C8, &qword_10050B730);
      }

      sub_100025F40(v13, &qword_1005DC5D8, &unk_100502CC0);
      return;
    case 0xBuLL:
      v24 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      sub_1004A6EB4(0x16uLL);
      sub_1004A6EF4(v24);
      return;
    case 0xCuLL:
      v27 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v28 = 23;
      goto LABEL_30;
    case 0xDuLL:
      v27 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v28 = 24;
LABEL_30:
      sub_1004A6EB4(v28);
      v41 = v27;
      goto LABEL_78;
    case 0xEuLL:
      v20 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      sub_1004A6EB4(0x1BuLL);
      sub_1004A6EB4(*(v20 + 16));
      v21 = *(v20 + 16);
      if (!v21)
      {
        return;
      }

      v55[2] = a1;

      v55[1] = v20;
      v22 = v20 + 64;
      do
      {
        v23 = *(v22 - 16);
        v55[3] = *(v22 - 8);

        _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
        if (v23)
        {
          sub_1004A6EC4(1u);
          swift_beginAccess();
          sub_1004A6EA4();
        }

        else
        {
          sub_1004A6EC4(0);
        }

        v22 += 40;
        --v21;
      }

      while (v21);
      goto LABEL_34;
    case 0xFuLL:
      v31 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0xE0);
      v57[12] = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0xD0);
      v57[13] = v31;
      v32 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x100);
      v57[14] = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0xF0);
      v57[15] = v32;
      v33 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0xA0);
      v57[8] = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x90);
      v57[9] = v33;
      v34 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0xC0);
      v57[10] = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0xB0);
      v57[11] = v34;
      v35 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x60);
      v57[4] = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x50);
      v57[5] = v35;
      v36 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x80);
      v57[6] = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x70);
      v57[7] = v36;
      v37 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
      v57[0] = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v57[1] = v37;
      v38 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x40);
      v57[2] = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x30);
      v57[3] = v38;
      sub_1004A6EB4(0x1CuLL);
      sub_10042ECA8(v57, &v56);
      IMAPURL.hash(into:)(a1);
      sub_10042ED04(v57);
      return;
    case 0x10uLL:
      sub_1004A6EB4(0x2EuLL);

      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
      goto LABEL_32;
    case 0x11uLL:
      switch(__ROR8__(a2 + 0x7FFFFFFFFFFFFFFCLL, 3))
      {
        case 1:
          v41 = 1;
          break;
        case 2:
          v41 = 4;
          break;
        case 3:
          v41 = 6;
          break;
        case 4:
          v41 = 7;
          break;
        case 5:
          v41 = 8;
          break;
        case 6:
          v41 = 15;
          break;
        case 7:
          v41 = 16;
          break;
        case 8:
          v41 = 18;
          break;
        case 9:
          v41 = 19;
          break;
        case 0xALL:
          v41 = 20;
          break;
        case 0xBLL:
          v41 = 25;
          break;
        case 0xCLL:
          v41 = 26;
          break;
        case 0xDLL:
          v41 = 29;
          break;
        case 0xELL:
          v41 = 30;
          break;
        case 0xFLL:
          v41 = 31;
          break;
        case 0x10:
          v41 = 32;
          break;
        case 0x11:
          v41 = 33;
          break;
        case 0x12:
          v41 = 34;
          break;
        case 0x13:
          v41 = 35;
          break;
        case 0x14:
          v41 = 36;
          break;
        case 0x15:
          v41 = 37;
          break;
        case 0x16:
          v41 = 38;
          break;
        case 0x17:
          v41 = 39;
          break;
        case 0x18:
          v41 = 40;
          break;
        case 0x19:
          v41 = 41;
          break;
        case 0x1ALL:
          v41 = 42;
          break;
        case 0x1BLL:
          v41 = 43;
          break;
        case 0x1CLL:
          v41 = 44;
          break;
        case 0x1DLL:
          v41 = 45;
          break;
        case 0x1ELL:
          v41 = 47;
          break;
        default:
          v41 = 0;
          break;
      }

LABEL_78:
      sub_1004A6EB4(v41);
      return;
    default:
      v17 = *(a2 + 16);
      sub_1004A6EB4(2uLL);
      sub_1004A6EB4(*(v17 + 16));
      v18 = *(v17 + 16);
      if (!v18)
      {
        return;
      }

      v19 = v17 + 40;
      do
      {

        _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

        v19 += 16;
        --v18;
      }

      while (v18);
LABEL_32:

LABEL_34:

      return;
  }
}

Swift::Int ResponseTextCode.hashValue.getter(unint64_t a1)
{
  sub_1004A6E94();
  ResponseTextCode.hash(into:)(v3, a1);
  return sub_1004A6F14();
}

Swift::Int sub_100485740()
{
  v1 = *v0;
  sub_1004A6E94();
  ResponseTextCode.hash(into:)(v3, v1);
  return sub_1004A6F14();
}

Swift::Int sub_100485790(uint64_t a1)
{
  v2 = *v1;
  sub_1004A6E94();
  ResponseTextCode.hash(into:)(v4, v2);
  return sub_1004A6F14();
}

uint64_t static ResponseTextCode.modified(_:)(uint64_t a1)
{
  return sub_100485828(a1, &qword_1005CD1D0, &unk_1004CF2C0, &unk_1005D91B0, &unk_1004CF400);
}

{
  return sub_100485828(a1, &qword_1005CDA68, &qword_1004CF7D0, &qword_1005CDA58, &qword_1004CF7C0);
}

uint64_t sub_100485828(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v10 = sub_10000C9C0(a2, a3);
  __chkstk_darwin(v10 - 8);
  v12 = &v18 - v11;
  sub_10000C9C0(&qword_1005DC5D8, &unk_100502CC0);
  v13 = swift_allocBox();
  v15 = v14;
  sub_10000E268(a1, v12, a2, a3);
  sub_100483224(v12, a4, a5, a2, a3, v15);
  v16 = sub_10000C9C0(&qword_1005DC5C8, &qword_10050B730);
  (*(*(v16 - 8) + 56))(v15, 0, 1, v16);
  return v13 | 0x5000000000000000;
}

uint64_t sub_10048595C(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 20);
  result = sub_1002F178C(0x5352414843444142uLL, 0xEA00000000005445, v1 + 8, v4);
  if (v6)
  {
    v7._countAndFlagsBits = 0x5352414843444142;
    v7._object = 0xEA00000000005445;
    result = ByteBuffer._setStringSlowpath(_:at:)(v7, v4);
  }

  v8 = result;
  v9 = *(v1 + 20);
  v10 = (v9 + result);
  if (__CFADD__(v9, result))
  {
    __break(1u);
    goto LABEL_28;
  }

  *(v1 + 20) = v10;
  v11 = a1[2];
  if (v11)
  {
    result = sub_1002F178C(0x20uLL, 0xE100000000000000, v1 + 8, v10);
    if (v12)
    {
      v13._countAndFlagsBits = 32;
      v13._object = 0xE100000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v13, v10);
    }

    v14 = result;
    v15 = *(v1 + 20);
    v16 = (v15 + result);
    if (__CFADD__(v15, result))
    {
      goto LABEL_29;
    }

    *(v1 + 20) = v16;
    v42 = a1;
    result = sub_1002F178C(0, 0xE000000000000000, v1 + 8, v16);
    if (v17)
    {
      v18._countAndFlagsBits = 0;
      v18._object = 0xE000000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v18, v16);
    }

    v19 = result;
    v20 = *(v1 + 20);
    v21 = (v20 + result);
    if (__CFADD__(v20, result))
    {
      goto LABEL_30;
    }

    *(v1 + 20) = v21;
    result = sub_1002F178C(0x28uLL, 0xE100000000000000, v1 + 8, v21);
    if (v22)
    {
      v23._countAndFlagsBits = 40;
      v23._object = 0xE100000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v23, v21);
    }

    v24 = *(v1 + 20);
    v25 = __CFADD__(v24, result);
    v26 = v24 + result;
    if (v25)
    {
      goto LABEL_31;
    }

    *(v1 + 20) = v26;
    v27 = v19 + result;
    if (__OFADD__(v19, result))
    {
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    __chkstk_darwin(result);
    v41[2] = sub_1003C40B8;
    v41[3] = 0;
    v41[4] = v2;
    v41[5] = &v42;
    v41[6] = 32;
    v41[7] = 0xE100000000000000;
    result = sub_100451B60(0, sub_100430E50, v41, a1);
    v28 = v27 + result;
    if (__OFADD__(v27, result))
    {
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    v29 = *(v2 + 20);
    result = sub_1002F178C(0x29uLL, 0xE100000000000000, v2 + 8, v29);
    if (v30)
    {
      v31._countAndFlagsBits = 41;
      v31._object = 0xE100000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v31, v29);
    }

    v32 = *(v2 + 20);
    v33 = (v32 + result);
    if (__CFADD__(v32, result))
    {
      goto LABEL_34;
    }

    *(v2 + 20) = v33;
    v34 = __OFADD__(v28, result);
    v35 = v28 + result;
    if (v34)
    {
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    result = sub_1002F178C(0, 0xE000000000000000, v2 + 8, v33);
    if (v36)
    {
      v37._countAndFlagsBits = 0;
      v37._object = 0xE000000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v37, v33);
    }

    v38 = *(v2 + 20);
    v25 = __CFADD__(v38, result);
    v39 = v38 + result;
    if (v25)
    {
      goto LABEL_36;
    }

    *(v2 + 20) = v39;
    v40 = v35 + result;
    if (__OFADD__(v35, result))
    {
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    v34 = __OFADD__(v14, v40);
    v11 = v14 + v40;
    if (v34)
    {
LABEL_38:
      __break(1u);
      return result;
    }
  }

  result = v8 + v11;
  if (__OFADD__(v8, v11))
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  return result;
}

uint64_t sub_100485C14(unint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v5 = v4;
  v10 = *(v4 + 20);
  result = sub_1002F178C(a1, a2, v4 + 8, v10);
  if (v12)
  {
    v13._countAndFlagsBits = a1;
    v13._object = a2;
    result = ByteBuffer._setStringSlowpath(_:at:)(v13, v10);
  }

  v14 = result;
  v15 = *(v4 + 20);
  v16 = (v15 + result);
  if (__CFADD__(v15, result))
  {
    goto LABEL_12;
  }

  *(v4 + 20) = v16;
  if (a4)
  {
    v24._countAndFlagsBits = a3;
    v24._object = a4;
    sub_1004A5994(v24);
    v17 = sub_1002F178C(0x20uLL, 0xE100000000000000, v4 + 8, v16);
    if (v18)
    {
      v19._countAndFlagsBits = 32;
      v19._object = 0xE100000000000000;
      v17 = ByteBuffer._setStringSlowpath(_:at:)(v19, v16);
    }

    v20 = v17;

    v21 = *(v5 + 20);
    v22 = __CFADD__(v21, v20);
    v23 = v21 + v20;
    if (v22)
    {
      goto LABEL_13;
    }

    *(v5 + 20) = v23;
    result = v14 + v20;
    if (!__OFADD__(v14, v20))
    {
      return result;
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
  }

  return result;
}

uint64_t sub_100485D38(__int128 *a1)
{
  v1 = a1[1];
  v3 = *a1;
  v4[0] = v1;
  *(v4 + 15) = *(a1 + 31);
  return sub_10044886C(&v3);
}

uint64_t sub_100485D80@<X0>(uint64_t *a1@<X0>, __int128 *a2@<X1>, uint64_t (*a3)(uint64_t *, uint64_t, __n128)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X5>, uint64_t *a7@<X8>, unint64_t a8@<X6>, void *a9@<X7>)
{
  v11 = *a1;
  v12 = *(a2 + 2);
  v19 = *a2;
  v13 = *(a2 + 24);
  v16 = *(a2 + 10);
  v14 = a2 + 40;
  v15 = v16;
  LOWORD(v16) = *(v14 + 2);
  v17 = *a6;
  v20 = v12;
  v21 = v13;
  v22 = v15;
  v23 = v16;
  v24 = v14[6];
  result = sub_100492BAC(v11, &v19, a3, a4, a5, v17, a8, a9);
  if (!v9)
  {
    *a7 = result;
  }

  return result;
}

uint64_t _s12NIOIMAPCore216ResponseTextCodeO21__derived_enum_equalsySbAC_ACtFZ_0(unint64_t a1, unint64_t a2)
{
  v4 = sub_10000C9C0(&qword_1005DC5D8, &unk_100502CC0);
  __chkstk_darwin(v4 - 8);
  v6 = &v72[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v9 = &v72[-v8];
  v10 = type metadata accessor for ResponseCodeAppend(0);
  __chkstk_darwin(v10);
  v12 = &v72[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v13);
  v15 = &v72[-v14];
  switch((a1 >> 59) & 0x1E | (a1 >> 2) & 1)
  {
    case 1uLL:
      if (((a2 >> 59) & 0x1E | (a2 >> 2) & 1) != 1)
      {
        goto LABEL_148;
      }

      v55 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v56 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x10);

      return sub_1001CE84C(v55, v56);
    case 2uLL:
      if (((a2 >> 59) & 0x1E | (a2 >> 2) & 1) != 2)
      {
        goto LABEL_148;
      }

      v33 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v34 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x10);

      v21 = sub_10039F304(v33, v34);
      goto LABEL_33;
    case 3uLL:
      if (((a2 >> 59) & 0x1E | (a2 >> 2) & 1) != 3)
      {
        goto LABEL_148;
      }

      goto LABEL_51;
    case 4uLL:
      goto LABEL_17;
    case 5uLL:
      if (((a2 >> 59) & 0x1E | (a2 >> 2) & 1) != 5)
      {
        goto LABEL_148;
      }

LABEL_51:
      v24 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v25 = a1 & 0xFFFFFFFFFFFFFFBLL;
      goto LABEL_52;
    case 6uLL:
      if (((a2 >> 59) & 0x1E | (a2 >> 2) & 1) != 6)
      {
        goto LABEL_148;
      }

      v58 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
      v57 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
      v59 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v60 = a2 & 0xFFFFFFFFFFFFFFBLL;
      v61 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v62 = *(v60 + 24);
      v63 = *(v60 + 32);

      if (sub_10039EF50(v59, v61) & 1) != 0 && (sub_10039EF50(v58, v62))
      {
        v64 = sub_10039EF50(v57, v63);

        if (v64)
        {
          goto LABEL_147;
        }
      }

      else
      {
      }

      goto LABEL_148;
    case 7uLL:
      if (((a2 >> 59) & 0x1E | (a2 >> 2) & 1) != 7)
      {
        goto LABEL_148;
      }

      v52 = swift_projectBox();
      v53 = swift_projectBox();
      sub_100486B00(v52, v15);
      sub_100486B00(v53, v12);
      if (*v15 == *v12)
      {
        sub_100016D2C();
        v54 = sub_1004A7034();
        sub_100486B64(v12);
        sub_100486B64(v15);
        if (v54)
        {
          goto LABEL_147;
        }
      }

      else
      {
        sub_100486B64(v12);
        sub_100486B64(v15);
      }

      goto LABEL_148;
    case 8uLL:
      if (((a2 >> 59) & 0x1E | (a2 >> 2) & 1) != 8)
      {
        goto LABEL_148;
      }

      v67 = a2 & 0xFFFFFFFFFFFFFFBLL;
      if (*((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10) != *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x10))
      {
        goto LABEL_148;
      }

      v68 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
      v69 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
      v70 = *(v67 + 32);
      if ((sub_100102A80(v68, *(v67 + 24)) & 1) == 0 || (sub_100102A80(v69, v70) & 1) == 0)
      {
        goto LABEL_148;
      }

      goto LABEL_147;
    case 9uLL:
      if (((a2 >> 59) & 0x1E | (a2 >> 2) & 1) != 9)
      {
        goto LABEL_148;
      }

      v26 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v27 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
      v29 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
      v28 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x28);
      v31 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
      v30 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x28);
      if (v26 != *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x10) || v27 != *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x18))
      {
        v32 = 0;
        if ((sub_1004A6D34() & 1) == 0)
        {
          return v32 & 1;
        }
      }

      if (v28)
      {
        if (!v30 || (v29 != v31 || v28 != v30) && (sub_1004A6D34() & 1) == 0)
        {
          goto LABEL_148;
        }

LABEL_147:
        v32 = 1;
        return v32 & 1;
      }

      if (!v30)
      {
        goto LABEL_147;
      }

LABEL_148:
      v32 = 0;
      return v32 & 1;
    case 0xAuLL:
      if (((a2 >> 59) & 0x1E | (a2 >> 2) & 1) != 0xA)
      {
        goto LABEL_148;
      }

      v65 = swift_projectBox();
      v66 = swift_projectBox();
      sub_10000E268(v65, v9, &qword_1005DC5D8, &unk_100502CC0);
      sub_10000E268(v66, v6, &qword_1005DC5D8, &unk_100502CC0);
      v32 = sub_100489074(v9, v6);
      sub_100025F40(v6, &qword_1005DC5D8, &unk_100502CC0);
      sub_100025F40(v9, &qword_1005DC5D8, &unk_100502CC0);
      return v32 & 1;
    case 0xBuLL:
      if (((a2 >> 59) & 0x1E | (a2 >> 2) & 1) != 0xB)
      {
        goto LABEL_148;
      }

      v22 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v23 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      if (((v23 | v22) & 0x8000000000000000) == 0)
      {
        goto LABEL_55;
      }

      __break(1u);
LABEL_17:
      if (((a2 >> 59) & 0x1E | (a2 >> 2) & 1) != 4)
      {
        goto LABEL_148;
      }

      v24 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v25 = a2 & 0xFFFFFFFFFFFFFFBLL;
LABEL_52:
      v32 = v24 == *(v25 + 16);
      return v32 & 1;
    case 0xCuLL:
      if (((a2 >> 59) & 0x1E | (a2 >> 2) & 1) != 0xC)
      {
        goto LABEL_148;
      }

      goto LABEL_54;
    case 0xDuLL:
      if (((a2 >> 59) & 0x1E | (a2 >> 2) & 1) != 0xD)
      {
        goto LABEL_148;
      }

LABEL_54:
      v23 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v22 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
LABEL_55:
      v32 = v23 == v22;
      return v32 & 1;
    case 0xEuLL:
      if (((a2 >> 59) & 0x1E | (a2 >> 2) & 1) != 0xE)
      {
        goto LABEL_148;
      }

      v19 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v20 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x10);

      v21 = sub_10039F410(v19, v20);
LABEL_33:
      v35 = v21;

      return v35 & 1;
    case 0xFuLL:
      v36 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0xE0);
      v73[12] = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0xD0);
      v73[13] = v36;
      v37 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x100);
      v73[14] = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0xF0);
      v73[15] = v37;
      v38 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0xA0);
      v73[8] = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x90);
      v73[9] = v38;
      v39 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0xC0);
      v73[10] = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0xB0);
      v73[11] = v39;
      v40 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x60);
      v73[4] = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x50);
      v73[5] = v40;
      v41 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x80);
      v73[6] = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x70);
      v73[7] = v41;
      v42 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
      v73[0] = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v73[1] = v42;
      v43 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x40);
      v73[2] = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x30);
      v73[3] = v43;
      if (((a2 >> 59) & 0x1E | (a2 >> 2) & 1) != 0xF)
      {
        goto LABEL_148;
      }

      v44 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0xE0);
      v74[12] = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0xD0);
      v74[13] = v44;
      v45 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x100);
      v74[14] = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0xF0);
      v74[15] = v45;
      v46 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0xA0);
      v74[8] = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x90);
      v74[9] = v46;
      v47 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0xC0);
      v74[10] = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0xB0);
      v74[11] = v47;
      v48 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x60);
      v74[4] = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x50);
      v74[5] = v48;
      v49 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x80);
      v74[6] = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x70);
      v74[7] = v49;
      v50 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
      v74[0] = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v74[1] = v50;
      v51 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x40);
      v74[2] = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x30);
      v74[3] = v51;
      sub_10042ECA8(v74, v72);
      v32 = _s12NIOIMAPCore27IMAPURLV23__derived_struct_equalsySbAC_ACtFZ_0(v73, v74);
      sub_10042ED04(v74);
      return v32 & 1;
    case 0x10uLL:
      if (((a2 >> 59) & 0x1E | (a2 >> 2) & 1) != 0x10)
      {
        goto LABEL_148;
      }

      if (*((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10) == *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x10) && *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x18) == *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x18))
      {
        goto LABEL_147;
      }

      return sub_1004A6D34();
    case 0x11uLL:
      switch(__ROR8__(a1 + 0x7FFFFFFFFFFFFFFCLL, 3))
      {
        case 1:
          if (((a2 >> 59) & 0x1E | (a2 >> 2) & 1) != 0x11 || a2 != 0x800000000000000CLL)
          {
            goto LABEL_148;
          }

          goto LABEL_147;
        case 2:
          if (((a2 >> 59) & 0x1E | (a2 >> 2) & 1) != 0x11 || a2 != 0x8000000000000014)
          {
            goto LABEL_148;
          }

          goto LABEL_147;
        case 3:
          if (((a2 >> 59) & 0x1E | (a2 >> 2) & 1) != 0x11 || a2 != 0x800000000000001CLL)
          {
            goto LABEL_148;
          }

          goto LABEL_147;
        case 4:
          if (((a2 >> 59) & 0x1E | (a2 >> 2) & 1) != 0x11 || a2 != 0x8000000000000024)
          {
            goto LABEL_148;
          }

          goto LABEL_147;
        case 5:
          if (((a2 >> 59) & 0x1E | (a2 >> 2) & 1) != 0x11)
          {
            goto LABEL_148;
          }

          v71 = 40;
          break;
        case 6:
          if (((a2 >> 59) & 0x1E | (a2 >> 2) & 1) != 0x11 || a2 != 0x8000000000000034)
          {
            goto LABEL_148;
          }

          goto LABEL_147;
        case 7:
          if (((a2 >> 59) & 0x1E | (a2 >> 2) & 1) != 0x11 || a2 != 0x800000000000003CLL)
          {
            goto LABEL_148;
          }

          goto LABEL_147;
        case 8:
          if (((a2 >> 59) & 0x1E | (a2 >> 2) & 1) != 0x11 || a2 != 0x8000000000000044)
          {
            goto LABEL_148;
          }

          goto LABEL_147;
        case 9:
          if (((a2 >> 59) & 0x1E | (a2 >> 2) & 1) != 0x11)
          {
            goto LABEL_148;
          }

          v71 = 72;
          break;
        case 0xALL:
          if (((a2 >> 59) & 0x1E | (a2 >> 2) & 1) != 0x11)
          {
            goto LABEL_148;
          }

          v71 = 80;
          break;
        case 0xBLL:
          if (((a2 >> 59) & 0x1E | (a2 >> 2) & 1) != 0x11)
          {
            goto LABEL_148;
          }

          v71 = 88;
          break;
        case 0xCLL:
          if (((a2 >> 59) & 0x1E | (a2 >> 2) & 1) != 0x11 || a2 != 0x8000000000000064)
          {
            goto LABEL_148;
          }

          goto LABEL_147;
        case 0xDLL:
          if (((a2 >> 59) & 0x1E | (a2 >> 2) & 1) != 0x11)
          {
            goto LABEL_148;
          }

          v71 = 104;
          break;
        case 0xELL:
          if (((a2 >> 59) & 0x1E | (a2 >> 2) & 1) != 0x11 || a2 != 0x8000000000000074)
          {
            goto LABEL_148;
          }

          goto LABEL_147;
        case 0xFLL:
          if (((a2 >> 59) & 0x1E | (a2 >> 2) & 1) != 0x11 || a2 != 0x800000000000007CLL)
          {
            goto LABEL_148;
          }

          goto LABEL_147;
        case 0x10:
          if (((a2 >> 59) & 0x1E | (a2 >> 2) & 1) != 0x11 || a2 != 0x8000000000000084)
          {
            goto LABEL_148;
          }

          goto LABEL_147;
        case 0x11:
          if (((a2 >> 59) & 0x1E | (a2 >> 2) & 1) != 0x11)
          {
            goto LABEL_148;
          }

          v71 = 136;
          break;
        case 0x12:
          if (((a2 >> 59) & 0x1E | (a2 >> 2) & 1) != 0x11)
          {
            goto LABEL_148;
          }

          v71 = 144;
          break;
        case 0x13:
          if (((a2 >> 59) & 0x1E | (a2 >> 2) & 1) != 0x11)
          {
            goto LABEL_148;
          }

          v71 = 152;
          break;
        case 0x14:
          if (((a2 >> 59) & 0x1E | (a2 >> 2) & 1) != 0x11)
          {
            goto LABEL_148;
          }

          v71 = 160;
          break;
        case 0x15:
          if (((a2 >> 59) & 0x1E | (a2 >> 2) & 1) != 0x11)
          {
            goto LABEL_148;
          }

          v71 = 168;
          break;
        case 0x16:
          if (((a2 >> 59) & 0x1E | (a2 >> 2) & 1) != 0x11)
          {
            goto LABEL_148;
          }

          v71 = 176;
          break;
        case 0x17:
          if (((a2 >> 59) & 0x1E | (a2 >> 2) & 1) != 0x11)
          {
            goto LABEL_148;
          }

          v71 = 184;
          break;
        case 0x18:
          if (((a2 >> 59) & 0x1E | (a2 >> 2) & 1) != 0x11 || a2 != 0x80000000000000C4)
          {
            goto LABEL_148;
          }

          goto LABEL_147;
        case 0x19:
          if (((a2 >> 59) & 0x1E | (a2 >> 2) & 1) != 0x11)
          {
            goto LABEL_148;
          }

          v71 = 200;
          break;
        case 0x1ALL:
          if (((a2 >> 59) & 0x1E | (a2 >> 2) & 1) != 0x11)
          {
            goto LABEL_148;
          }

          v71 = 208;
          break;
        case 0x1BLL:
          if (((a2 >> 59) & 0x1E | (a2 >> 2) & 1) != 0x11)
          {
            goto LABEL_148;
          }

          v71 = 216;
          break;
        case 0x1CLL:
          if (((a2 >> 59) & 0x1E | (a2 >> 2) & 1) != 0x11 || a2 != 0x80000000000000E4)
          {
            goto LABEL_148;
          }

          goto LABEL_147;
        case 0x1DLL:
          if (((a2 >> 59) & 0x1E | (a2 >> 2) & 1) != 0x11)
          {
            goto LABEL_148;
          }

          v71 = 232;
          break;
        case 0x1ELL:
          if (((a2 >> 59) & 0x1E | (a2 >> 2) & 1) != 0x11 || a2 != 0x80000000000000F4)
          {
            goto LABEL_148;
          }

          goto LABEL_147;
        default:
          if (((a2 >> 59) & 0x1E | (a2 >> 2) & 1) != 0x11 || a2 != 0x8000000000000004)
          {
            goto LABEL_148;
          }

          goto LABEL_147;
      }

      if (a2 == (v71 | 0x8000000000000004))
      {
        goto LABEL_147;
      }

      goto LABEL_148;
    default:
      if ((a2 >> 59) & 0x1E | (a2 >> 2) & 1)
      {
        goto LABEL_148;
      }

      v16 = *(a1 + 16);
      v17 = *(a2 + 16);

      return sub_10020FB40(v16, v17);
  }
}

uint64_t sub_100486B00(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ResponseCodeAppend(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100486B64(uint64_t a1)
{
  v2 = type metadata accessor for ResponseCodeAppend(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100486BC4()
{
  result = qword_1005DD788;
  if (!qword_1005DD788)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ResponseTextCode, &type metadata for ResponseTextCode, v0, v1);
    atomic_store(result, &qword_1005DD788);
  }

  return result;
}

uint64_t sub_100486C18(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x6F && *(a1 + 8))
  {
    return (*a1 + 111);
  }

  v3 = ((((*a1 >> 57) & 0x78 | *a1 & 7) >> 2) & 0xFFFFFF9F | (32 * (*a1 & 3))) ^ 0x7F;
  if (v3 >= 0x6E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_100486C74(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x6E)
  {
    *result = a2 - 111;
    if (a3 >= 0x6F)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x6F)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 5) & 3 | (4 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

unint64_t *sub_100486CC4(unint64_t *result, uint64_t a2)
{
  if (a2 < 0x11)
  {
    *result = ((a2 << 59) | (4 * a2)) & 0xF000000000000007 | *result & 0xFFFFFFFFFFFFFF8;
  }

  else
  {
    *result = (8 * (a2 - 17)) | 0x8000000000000004;
  }

  return result;
}

uint64_t sub_100486D38(uint64_t *a1)
{
  result = *a1;
  v4 = a1[4];
  if (v4 >> 62)
  {
    v6 = a1[1];
    v5 = a1[2];
    v7 = a1[3];
    v8 = a1[5];
    v9 = a1[6];
    v10 = a1[7];
    if (v4 >> 62 == 1)
    {
      if (v4)
      {
        result = sub_100462978(result, a1[1], v5, v7);
        goto LABEL_24;
      }
    }

    else
    {
      v11 = v8 | v9 | v10;
      if (v4 == 0x8000000000000000 && (v5 | v6 | result | v7 | v11) == 0)
      {
LABEL_32:
        v31 = *(v1 + 20);
        result = sub_1002F178C(0x4249524353425553uLL, 0xEA00000000004445, v1 + 8, v31);
        if (v32)
        {
          v33._countAndFlagsBits = 0x4249524353425553;
          v33._object = 0xEA00000000004445;
          result = ByteBuffer._setStringSlowpath(_:at:)(v33, v31);
        }

        v34 = *(v1 + 20);
        v16 = __CFADD__(v34, result);
        v17 = v34 + result;
        if (!v16)
        {
          goto LABEL_40;
        }

        __break(1u);
LABEL_37:
        v35 = *(v1 + 20);
        result = sub_1002F178C(0x2D4C414943455053uLL, 0xEB00000000455355, v1 + 8, v35);
        if (v36)
        {
          v37._countAndFlagsBits = 0x2D4C414943455053;
          v37._object = 0xEB00000000455355;
          result = ByteBuffer._setStringSlowpath(_:at:)(v37, v35);
        }

        v38 = *(v1 + 20);
        v16 = __CFADD__(v38, result);
        v17 = v38 + result;
        if (!v16)
        {
LABEL_40:
          *(v1 + 20) = v17;
          return result;
        }

LABEL_45:
        __break(1u);
        return result;
      }

      if (v4 != 0x8000000000000000 || result != 1 || v5 | v6 | v7 | v11)
      {
        goto LABEL_37;
      }

      v8 = 0x4E4552444C494843;
      v10 = *(v1 + 20);
      result = sub_1002F178C(0x4E4552444C494843uLL, 0xE800000000000000, v1 + 8, v10);
      if (v13)
      {
        v14._countAndFlagsBits = 0x4E4552444C494843;
        v14._object = 0xE800000000000000;
        result = ByteBuffer._setStringSlowpath(_:at:)(v14, v10);
      }

      v15 = *(v1 + 20);
      v16 = __CFADD__(v15, result);
      v17 = v15 + result;
      if (!v16)
      {
        goto LABEL_40;
      }

      __break(1u);
    }

    v18 = *(v1 + 20);
    v19 = result;
    result = sub_1002F178C(result, v6, v1 + 8, v18);
    if (v20)
    {
      v21._countAndFlagsBits = v19;
      v21._object = v6;
      result = ByteBuffer._setStringSlowpath(_:at:)(v21, v18);
    }

    v22 = *(v1 + 20);
    v16 = __CFADD__(v22, result);
    v23 = v22 + result;
    if (v16)
    {
      __break(1u);
      goto LABEL_43;
    }

    *(v1 + 20) = v23;
LABEL_24:
    if (HIBYTE(v10) == 255)
    {
      return result;
    }

    v24 = result;
    v25 = *(v1 + 20);
    sub_1003A30E8(v8, v9, v10, HIBYTE(v10) & 1);
    result = sub_1002F178C(0x20uLL, 0xE100000000000000, v1 + 8, v25);
    if (v26)
    {
      v27._countAndFlagsBits = 32;
      v27._object = 0xE100000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v27, v25);
    }

    v28 = *(v1 + 20);
    v16 = __CFADD__(v28, result);
    v29 = v28 + result;
    if (!v16)
    {
      *(v1 + 20) = v29;
      v30 = v24 + result;
      if (!__OFADD__(v24, result))
      {
        v1 = sub_100462BEC(v8, v9, v10 & 0xFFFFFFFFFFFFFFLL | ((HIBYTE(v10) & 1) << 56));
        sub_1003A3390(v8, v9, v10);
        result = v30 + v1;
        if (!__OFADD__(v30, v1))
        {
          return result;
        }

        __break(1u);
        goto LABEL_32;
      }

LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  return sub_10043CED8(result);
}

uint64_t static ReturnOption.__derived_enum_equals(_:_:)(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[4];
  if (v4 >> 62)
  {
    v5 = a1[1];
    v6 = a1[2];
    v7 = a1[3];
    v8 = a1[5];
    v9 = a1[6];
    v10 = a1[7];
    if (v4 >> 62 == 1)
    {
      v28[0] = v3;
      v28[1] = v5;
      v28[2] = v6;
      v28[3] = v7;
      v28[4] = v4 & 0x3FFFFFFFFFFFFFFFLL;
      v28[5] = v8;
      v28[6] = v9;
      v28[7] = v10;
      v11 = *(a2 + 32);
      if (v11 >> 62 == 1)
      {
        v12 = *(a2 + 56);
        v13 = *(a2 + 16);
        v24[0] = *a2;
        v24[1] = v13;
        v25 = v11 & 0x3FFFFFFFFFFFFFFFLL;
        v26 = *(a2 + 40);
        v27 = v12;
        return sub_1004369D8(v28, v24);
      }

      return 0;
    }

    v17 = v6 | v5;
    v18 = v8 | v9 | v10;
    if (v4 == 0x8000000000000000 && (v17 | v3 | v7 | v18) == 0)
    {
      v21 = *(a2 + 32);
      if (v21 >> 62 != 2)
      {
        return 0;
      }

      if (v21 != 0x8000000000000000)
      {
        return 0;
      }

      v22 = vorrq_s8(*a2, *(a2 + 16));
      if (*&vorr_s8(*v22.i8, *&vextq_s8(v22, v22, 8uLL)) | *(a2 + 48) | *(a2 + 56) | *(a2 + 40))
      {
        return 0;
      }
    }

    else
    {
      if (v4 == 0x8000000000000000 && v3 == 1 && !(v17 | v7 | v18))
      {
        v20 = *(a2 + 32);
        if (v20 >> 62 != 2 || *(a2 + 48) | *(a2 + 56) | *(a2 + 40) || v20 != 0x8000000000000000 || *a2 != 1)
        {
          return 0;
        }
      }

      else
      {
        v23 = *(a2 + 32);
        if (v23 >> 62 != 2 || *(a2 + 48) | *(a2 + 56) | *(a2 + 40) || v23 != 0x8000000000000000 || *a2 != 2)
        {
          return 0;
        }
      }

      if (*(a2 + 16) | *(a2 + 24) | *(a2 + 8))
      {
        return 0;
      }
    }

    return 1;
  }

  if (*(a2 + 32) >> 62)
  {
    return 0;
  }

  v15 = *a2;

  return sub_1002F32E8(v3, v15);
}

void ReturnOption.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[4];
  if (v4 >> 62)
  {
    v5 = v1[1];
    v6 = v1[2];
    v7 = v1[3];
    v8 = v1[5];
    v9 = v1[6];
    v10 = v1[7];
    if (v4 >> 62 == 1)
    {
      sub_1004A6EB4(3uLL);
      if (v4)
      {
        sub_1004A6EB4(1uLL);
        _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
      }

      else
      {
        sub_1004A6EB4(0);
      }

      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

      sub_1003B0040(a1, v8, v9, v10);
    }

    else
    {
      v11 = v8 | v9 | v10;
      if (v4 == 0x8000000000000000 && (v6 | v5 | v3 | v7 | v11) == 0)
      {
        v13 = 0;
      }

      else if (v4 == 0x8000000000000000 && v3 == 1 && !(v6 | v5 | v7 | v11))
      {
        v13 = 1;
      }

      else
      {
        v13 = 4;
      }

      sub_1004A6EB4(v13);
    }
  }

  else
  {
    sub_1004A6EB4(2uLL);

    sub_1002E5960(a1, v3);
  }
}

Swift::Int ReturnOption.hashValue.getter()
{
  sub_1004A6E94();
  ReturnOption.hash(into:)(v1);
  return sub_1004A6F14();
}

Swift::Int sub_100487428(uint64_t a1)
{
  sub_1004A6E94();
  ReturnOption.hash(into:)(v2);
  return sub_1004A6F14();
}

uint64_t sub_100487464(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[4];
  v6 = *a2;
  v7 = a2[4];
  if (v5 >> 62)
  {
    v8 = a1[1];
    v9 = a1[2];
    v10 = a1[3];
    v12 = a1[5];
    v11 = a1[6];
    v13 = a1[7];
    v14 = a2[1];
    v15 = a2[2];
    v16 = a2[3];
    v17 = a2[5];
    v18 = a2[6];
    v19 = a2[7];
    if (v5 >> 62 == 1)
    {
      v24[0] = v4;
      v24[1] = v8;
      v24[2] = v9;
      v24[3] = v10;
      v24[4] = v5 & 0x3FFFFFFFFFFFFFFFLL;
      v24[5] = v12;
      v24[6] = v11;
      v24[7] = v13;
      if (v7 >> 62 == 1)
      {
        v25[0] = v6;
        v25[1] = v14;
        v25[2] = v15;
        v25[3] = v16;
        v25[4] = v7 & 0x3FFFFFFFFFFFFFFFLL;
        v25[5] = v17;
        v25[6] = v18;
        v25[7] = v19;
        return sub_1004369D8(v24, v25);
      }

      return 0;
    }

    v22 = v9 | v8;
    v23 = v12 | v11 | v13;
    if (v5 != 0x8000000000000000 || v22 | v4 | v10 | v23)
    {
      if (v5 == 0x8000000000000000 && v4 == 1 && !(v22 | v10 | v23))
      {
        if (v7 >> 62 != 2 || v7 != 0x8000000000000000 || v6 != 1)
        {
          return 0;
        }
      }

      else if (v7 >> 62 != 2 || v7 != 0x8000000000000000 || v6 != 2)
      {
        return 0;
      }

      if (v15 | v14 | v16 || v18 | v17 | v19)
      {
        return 0;
      }
    }

    else if (v7 >> 62 != 2 || v7 != 0x8000000000000000 || v15 | v14 | v6 | v16 | v17 | v18 | v19)
    {
      return 0;
    }

    return 1;
  }

  if (v7 >> 62)
  {
    return 0;
  }

  return sub_1002F32E8(v4, v6);
}

unint64_t sub_10048761C()
{
  result = qword_1005DD790;
  if (!qword_1005DD790)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ReturnOption, &type metadata for ReturnOption, v0, v1);
    atomic_store(result, &qword_1005DD790);
  }

  return result;
}

unint64_t sub_100487670(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 >= 0)
  {
    return v1 >> 62;
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_10048768C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32) >> 1;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_1004876DC(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    *(a1 + 56) = 0;
    result = 0.0;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 64) = 1;
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
      result = 0.0;
      *a1 = 0u;
      *(a1 + 16) = 0u;
      *(a1 + 32) = 2 * -a2;
      *(a1 + 40) = 0;
      *(a1 + 48) = 0;
      *(a1 + 56) = 0;
      return result;
    }

    *(a1 + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *sub_10048774C(void *result, uint64_t a2)
{
  if (a2 < 2)
  {
    result[4] = result[4] & 1 | (a2 << 62);
  }

  else
  {
    *result = (a2 - 2);
    result[1] = 0;
    result[2] = 0;
    result[3] = 0;
    result[4] = 0x8000000000000000;
    result[5] = 0;
    result[6] = 0;
    result[7] = 0;
  }

  return result;
}

uint64_t sub_100487790(uint64_t a1)
{
  v3 = sub_1003B1E70(*a1, *(a1 + 8), *(a1 + 16) | (*(a1 + 20) << 32) | (*(a1 + 22) << 48));
  v4 = *(v1 + 20);
  result = sub_1002F178C(0x20uLL, 0xE100000000000000, v1 + 8, v4);
  if (v6)
  {
    v7._countAndFlagsBits = 32;
    v7._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v7, v4);
  }

  v8 = *(v1 + 20);
  v9 = (v8 + result);
  if (__CFADD__(v8, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  *(v1 + 20) = v9;
  v10 = v3 + result;
  if (__OFADD__(v3, result))
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v12 = *(a1 + 24);
  v11 = *(a1 + 32);
  result = sub_1002F178C(v12, v11, v1 + 8, v9);
  if (v13)
  {
    v14._countAndFlagsBits = v12;
    v14._object = v11;
    result = ByteBuffer._setStringSlowpath(_:at:)(v14, v9);
  }

  v15 = *(v1 + 20);
  v16 = __CFADD__(v15, result);
  v17 = v15 + result;
  if (v16)
  {
    goto LABEL_12;
  }

  *(v1 + 20) = v17;
  v18 = __OFADD__(v10, result);
  result += v10;
  if (v18)
  {
LABEL_13:
    __break(1u);
  }

  return result;
}

uint64_t RumpURLAndMechanism.init(urlRump:mechanism:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *a6 = result;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 20) = WORD2(a3);
  *(a6 + 22) = BYTE6(a3);
  *(a6 + 24) = a4;
  *(a6 + 32) = a5;
  return result;
}

uint64_t static RumpURLAndMechanism.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2)
{
  if (!sub_10020FBD0(*a1, *(a1 + 8), *(a1 + 16) | (*(a1 + 20) << 32) | (*(a1 + 22) << 48), *a2, *(a2 + 8), *(a2 + 16) | (*(a2 + 20) << 32) | (*(a2 + 22) << 48)))
  {
    return 0;
  }

  if (*(a1 + 24) == *(a2 + 24) && *(a1 + 32) == *(a2 + 32))
  {
    return 1;
  }

  return sub_1004A6D34();
}

uint64_t RumpURLAndMechanism.hash(into:)(uint64_t a1)
{
  swift_beginAccess();
  sub_1004A6EA4();
  return _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
}

Swift::Int RumpURLAndMechanism.hashValue.getter()
{
  sub_1004A6E94();
  swift_beginAccess();
  sub_1004A6EA4();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  return sub_1004A6F14();
}

Swift::Int sub_100487A94(uint64_t a1)
{
  sub_1004A6E94();
  RumpURLAndMechanism.hash(into:)(v2);
  return sub_1004A6F14();
}

uint64_t sub_100487AD0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  v3 = *(a1 + 32);
  v4 = *(a2 + 24);
  v5 = *(a2 + 32);
  if (!sub_10020FBD0(*a1, *(a1 + 8), *(a1 + 16) | (*(a1 + 20) << 32) | (*(a1 + 22) << 48), *a2, *(a2 + 8), *(a2 + 16) | (*(a2 + 20) << 32) | (*(a2 + 22) << 48)))
  {
    return 0;
  }

  if (v2 == v4 && v3 == v5)
  {
    return 1;
  }

  return sub_1004A6D34();
}

unint64_t sub_100487B90()
{
  result = qword_1005DD798;
  if (!qword_1005DD798)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for RumpURLAndMechanism, &type metadata for RumpURLAndMechanism, v0, v1);
    atomic_store(result, &qword_1005DD798);
  }

  return result;
}

unint64_t sub_100487C1C(unsigned __int8 a1)
{
  v2 = v1;
  v3 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v4._countAndFlagsBits = 49;
    }

    else
    {
      v4._countAndFlagsBits = 0x7974696E69666E69;
    }

    if (v3 == 1)
    {
      v5 = 0xE100000000000000;
    }

    else
    {
      v5 = 0xE800000000000000;
    }
  }

  else
  {
    v5 = 0xE100000000000000;
    v4._countAndFlagsBits = 48;
  }

  v4._object = v5;
  sub_1004A5994(v4);

  v6 = *(v1 + 20);
  v7 = sub_1002F178C(0x204854504544uLL, 0xE600000000000000, v1 + 8, v6);
  if (v8)
  {
    v9._countAndFlagsBits = 0x204854504544;
    v9._object = 0xE600000000000000;
    v7 = ByteBuffer._setStringSlowpath(_:at:)(v9, v6);
  }

  v10 = v7;

  v12 = *(v2 + 20);
  v13 = __CFADD__(v12, v10);
  v14 = v12 + v10;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    *(v2 + 20) = v14;
    return v10;
  }

  return result;
}

uint64_t sub_100487D14(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE100000000000000;
  v4 = 49;
  if (v2 != 1)
  {
    v4 = 0x7974696E69666E69;
    v3 = 0xE800000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 48;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE100000000000000;
  }

  v7 = 0xE100000000000000;
  v8 = 49;
  if (*a2 != 1)
  {
    v8 = 0x7974696E69666E69;
    v7 = 0xE800000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 48;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE100000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1004A6D34();
  }

  return v11 & 1;
}

unint64_t sub_100487E04@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1004882CC(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_100487E34(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE100000000000000;
  v4 = 0xE100000000000000;
  v5 = 49;
  if (v2 != 1)
  {
    v5 = 0x7974696E69666E69;
    v4 = 0xE800000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 48;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t ScopeOption.hash(into:)(uint64_t a1, unsigned __int8 a2)
{
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
}

Swift::Int ScopeOption.hashValue.getter(char a1)
{
  sub_1004A6E94();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

  return sub_1004A6F14();
}

Swift::Int sub_100487F7C()
{
  sub_1004A6E94();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

  return sub_1004A6F14();
}

uint64_t sub_100488008(uint64_t a1)
{
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
}

Swift::Int sub_100488080(uint64_t a1)
{
  sub_1004A6E94();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

  return sub_1004A6F14();
}

uint64_t _s12NIOIMAPCore211ScopeOptionV23__derived_struct_equalsySbAC_ACtFZ_0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v3 = 49;
    }

    else
    {
      v3 = 0x7974696E69666E69;
    }

    if (v2 == 1)
    {
      v4 = 0xE100000000000000;
    }

    else
    {
      v4 = 0xE800000000000000;
    }

    v5 = a2;
    if (a2)
    {
LABEL_9:
      if (v5 == 1)
      {
        v6 = 49;
      }

      else
      {
        v6 = 0x7974696E69666E69;
      }

      if (v5 == 1)
      {
        v7 = 0xE100000000000000;
      }

      else
      {
        v7 = 0xE800000000000000;
      }

      if (v3 != v6)
      {
        goto LABEL_21;
      }

      goto LABEL_19;
    }
  }

  else
  {
    v4 = 0xE100000000000000;
    v3 = 48;
    v5 = a2;
    if (a2)
    {
      goto LABEL_9;
    }
  }

  v7 = 0xE100000000000000;
  if (v3 != 48)
  {
LABEL_21:
    v8 = sub_1004A6D34();
    goto LABEL_22;
  }

LABEL_19:
  if (v4 != v7)
  {
    goto LABEL_21;
  }

  v8 = 1;
LABEL_22:

  return v8 & 1;
}

unint64_t sub_100488200()
{
  result = qword_1005DD7A0;
  if (!qword_1005DD7A0)
  {
    result = swift_getWitnessTable("Ͱ\a", &type metadata for ScopeOption, v0, v1);
    atomic_store(result, &qword_1005DD7A0);
  }

  return result;
}

unint64_t sub_100488278()
{
  result = qword_1005DD7A8;
  if (!qword_1005DD7A8)
  {
    result = swift_getWitnessTable(byte_10050BD74, &type metadata for ScopeOption._Backing, v0, v1);
    atomic_store(result, &qword_1005DD7A8);
  }

  return result;
}

unint64_t sub_1004882CC(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1005BB7B0;
  v6._object = a2;
  v4 = sub_1004A6AF4(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

void sub_100488324(uint64_t a1)
{
  v2 = v1;
  v4 = *(v1 + 20);
  v5 = sub_1002F178C(0x22204741542820uLL, 0xE700000000000000, v1 + 8, v4);
  if (v6)
  {
    v7._countAndFlagsBits = 0x22204741542820;
    v7._object = 0xE700000000000000;
    v5 = ByteBuffer._setStringSlowpath(_:at:)(v7, v4);
  }

  v8 = v5;
  v9 = *(v1 + 20);
  v10 = (v9 + v5);
  if (__CFADD__(v9, v5))
  {
    goto LABEL_35;
  }

  *(v1 + 20) = v10;
  v11 = *a1;
  v12 = *(a1 + 8);
  v13 = sub_1002F178C(*a1, v12, v1 + 8, v10);
  if (v14)
  {
    v15._countAndFlagsBits = v11;
    v15._object = v12;
    v13 = ByteBuffer._setStringSlowpath(_:at:)(v15, v10);
  }

  v16 = *(v1 + 20);
  v17 = (v16 + v13);
  if (__CFADD__(v16, v13))
  {
    goto LABEL_36;
  }

  *(v1 + 20) = v17;
  v18 = __OFADD__(v8, v13);
  v19 = v8 + v13;
  if (v18)
  {
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v20 = sub_1002F178C(0x22uLL, 0xE100000000000000, v1 + 8, v17);
  if (v21)
  {
    v22._countAndFlagsBits = 34;
    v22._object = 0xE100000000000000;
    v20 = ByteBuffer._setStringSlowpath(_:at:)(v22, v17);
  }

  v23 = *(v1 + 20);
  v24 = (v23 + v20);
  if (__CFADD__(v23, v20))
  {
    goto LABEL_38;
  }

  *(v1 + 20) = v24;
  v25 = v19 + v20;
  if (__OFADD__(v19, v20))
  {
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v26 = *(a1 + 16);
  if (!v26)
  {
    v36 = v25;
    goto LABEL_18;
  }

  v27 = sub_1002F178C(0x584F424C49414D20uLL, 0xE900000000000020, v1 + 8, v24);
  if (v28)
  {
    v29._countAndFlagsBits = 0x584F424C49414D20;
    v29._object = 0xE900000000000020;
    v27 = ByteBuffer._setStringSlowpath(_:at:)(v29, v24);
  }

  v30 = v27;
  v31 = *(v1 + 20);
  v32 = __CFADD__(v31, v27);
  v33 = v31 + v27;
  if (v32)
  {
    goto LABEL_43;
  }

  *(v1 + 20) = v33;
  sub_100441F24(v26);
  v35 = v30 + v34;
  if (__OFADD__(v30, v34))
  {
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v36 = v25 + v35;
  if (__OFADD__(v25, v35))
  {
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

LABEL_18:
  if (*(a1 + 32))
  {
    v37 = 0;
  }

  else
  {
    v38 = *(v1 + 20);
    v39 = sub_1002F178C(0x494C415644495520uLL, 0xED00002059544944, v1 + 8, v38);
    if (v40)
    {
      v41._countAndFlagsBits = 0x494C415644495520;
      v41._object = 0xED00002059544944;
      v39 = ByteBuffer._setStringSlowpath(_:at:)(v41, v38);
    }

    v42 = v39;
    v43 = *(v1 + 20);
    v44 = (v43 + v39);
    if (__CFADD__(v43, v39))
    {
      goto LABEL_45;
    }

    *(v1 + 20) = v44;
    v45 = sub_1004A6CE4();
    v47 = v46;
    v48 = sub_1002F178C(v45, v46, v1 + 8, v44);
    if (v49)
    {
      v50._countAndFlagsBits = v45;
      v50._object = v47;
      v48 = ByteBuffer._setStringSlowpath(_:at:)(v50, v44);
    }

    v51 = v48;

    v52 = *(v2 + 20);
    v32 = __CFADD__(v52, v51);
    v53 = v52 + v51;
    if (v32)
    {
      goto LABEL_46;
    }

    *(v2 + 20) = v53;
    v37 = v42 + v51;
    if (__OFADD__(v42, v51))
    {
LABEL_47:
      __break(1u);
      return;
    }
  }

  v54 = v36 + v37;
  if (__OFADD__(v36, v37))
  {
    goto LABEL_40;
  }

  v55 = *(v2 + 20);
  v56 = sub_1002F178C(0x29uLL, 0xE100000000000000, v2 + 8, v55);
  if (v57)
  {
    v58._countAndFlagsBits = 41;
    v58._object = 0xE100000000000000;
    v56 = ByteBuffer._setStringSlowpath(_:at:)(v58, v55);
  }

  v59 = *(v2 + 20);
  v32 = __CFADD__(v59, v56);
  v60 = v59 + v56;
  if (v32)
  {
    goto LABEL_41;
  }

  *(v2 + 20) = v60;
  if (__OFADD__(v54, v56))
  {
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }
}

uint64_t SearchCorrelator.init(tag:mailbox:uidValidity:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *a6 = result;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  *(a6 + 28) = a5;
  *(a6 + 32) = BYTE4(a5) & 1;
  return result;
}

void SearchCorrelator.hash(into:)(uint64_t a1)
{
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  if (*(v1 + 16))
  {
    v2 = *(v1 + 24);
    sub_1004A6EC4(1u);
    sub_1004A6EB4(v2 | (v2 << 32));
  }

  else
  {
    sub_1004A6EC4(0);
  }

  if (*(v1 + 32) == 1)
  {
    sub_1004A6EC4(0);
  }

  else
  {
    v3 = *(v1 + 28);
    sub_1004A6EC4(1u);
    sub_1004A6EE4(v3);
  }
}

Swift::Int SearchCorrelator.hashValue.getter()
{
  sub_1004A6E94();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  if (*(v0 + 16))
  {
    v1 = *(v0 + 24);
    sub_1004A6EC4(1u);
    sub_1004A6EB4(v1 | (v1 << 32));
  }

  else
  {
    sub_1004A6EC4(0);
  }

  if (*(v0 + 32) == 1)
  {
    sub_1004A6EC4(0);
  }

  else
  {
    v2 = *(v0 + 28);
    sub_1004A6EC4(1u);
    sub_1004A6EE4(v2);
  }

  return sub_1004A6F14();
}

void sub_1004887AC(uint64_t a1)
{
  v2 = *(v1 + 16);
  v4 = *(v1 + 24);
  v3 = *(v1 + 28);
  v5 = *(v1 + 32);
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  if (v2)
  {
    sub_1004A6EC4(1u);
    sub_1004A6EB4(v4 | (v4 << 32));
    if (v5)
    {
LABEL_3:
      sub_1004A6EC4(0);
      return;
    }
  }

  else
  {
    sub_1004A6EC4(0);
    if (v5)
    {
      goto LABEL_3;
    }
  }

  sub_1004A6EC4(1u);
  sub_1004A6EE4(v3);
}

Swift::Int sub_100488834(uint64_t a1)
{
  v2 = *(v1 + 16);
  v4 = *(v1 + 24);
  v3 = *(v1 + 28);
  v5 = *(v1 + 32);
  sub_1004A6E94();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  if (!v2)
  {
    sub_1004A6EC4(0);
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_1004A6EC4(1u);
    sub_1004A6EE4(v3);
    return sub_1004A6F14();
  }

  sub_1004A6EC4(1u);
  sub_1004A6EB4(v4 | (v4 << 32));
  if (!v5)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_1004A6EC4(0);
  return sub_1004A6F14();
}

BOOL sub_1004888F4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return _s12NIOIMAPCore216SearchCorrelatorV23__derived_struct_equalsySbAC_ACtFZ_0(v5, v7);
}

BOOL _s12NIOIMAPCore216SearchCorrelatorV23__derived_struct_equalsySbAC_ACtFZ_0(uint64_t *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (!v4 && (sub_1004A6D34() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2];
  v6 = *(a2 + 16);
  if (v5)
  {
    if (!v6 || (*(a1 + 6) | (*(a1 + 6) << 32)) != (*(a2 + 24) | (*(a2 + 24) << 32)) || (sub_1000FFC98(v5, v6) & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  v7 = *(a2 + 32);
  if ((a1[4] & 1) == 0)
  {
    if (*(a1 + 7) != *(a2 + 28))
    {
      v7 = 1;
    }

    return (v7 & 1) == 0;
  }

  return (*(a2 + 32) & 1) != 0;
}

unint64_t sub_1004889F4()
{
  result = qword_1005DD7B0;
  if (!qword_1005DD7B0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SearchCorrelator, &type metadata for SearchCorrelator, v0, v1);
    atomic_store(result, &qword_1005DD7B0);
  }

  return result;
}

uint64_t sub_100488A58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_10048CDAC(a1, a2, a3, a4);

  return v4;
}

uint64_t sub_100488A9C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C9C0(&qword_1005CD1D0, &unk_1004CF2C0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v19 - v6;
  v8 = sub_10000C9C0(&qword_1005CD1C0, &unk_1004CEC40);
  __chkstk_darwin(v8 - 8);
  v10 = &v19 - v9;
  v11 = sub_10000C9C0(&qword_1005DD7C8, &qword_10050C208);
  __chkstk_darwin(v11 - 8);
  v13 = &v19 - v12;
  v15 = *(v14 + 56);
  sub_10000E268(a1, &v19 - v12, &qword_1005CD1C0, &unk_1004CEC40);
  sub_10000E268(a2, &v13[v15], &qword_1005CD1C0, &unk_1004CEC40);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_10000E268(v13, v10, &qword_1005CD1C0, &unk_1004CEC40);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      sub_100025FDC(&v13[v15], v7, &qword_1005CD1D0, &unk_1004CF2C0);
      sub_100016D2C();
      v17 = sub_1004A7034();
      sub_100025F40(v7, &qword_1005CD1D0, &unk_1004CF2C0);
      sub_100025F40(v10, &qword_1005CD1D0, &unk_1004CF2C0);
      sub_100025F40(v13, &qword_1005CD1C0, &unk_1004CEC40);
      return v17 & 1;
    }

    sub_100025F40(v10, &qword_1005CD1D0, &unk_1004CF2C0);
    goto LABEL_6;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
LABEL_6:
    sub_100025F40(v13, &qword_1005DD7C8, &qword_10050C208);
    v17 = 0;
    return v17 & 1;
  }

  sub_100025F40(v13, &qword_1005CD1C0, &unk_1004CEC40);
  v17 = 1;
  return v17 & 1;
}

uint64_t sub_100488D88(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C9C0(&qword_1005CDA68, &qword_1004CF7D0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v19 - v6;
  v8 = sub_10000C9C0(&qword_1005CDA78, &unk_1004CF7E0);
  __chkstk_darwin(v8 - 8);
  v10 = &v19 - v9;
  v11 = sub_10000C9C0(&qword_1005DBC60, &qword_1004FE590);
  __chkstk_darwin(v11 - 8);
  v13 = &v19 - v12;
  v15 = *(v14 + 56);
  sub_10000E268(a1, &v19 - v12, &qword_1005CDA78, &unk_1004CF7E0);
  sub_10000E268(a2, &v13[v15], &qword_1005CDA78, &unk_1004CF7E0);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_10000E268(v13, v10, &qword_1005CDA78, &unk_1004CF7E0);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      sub_100025FDC(&v13[v15], v7, &qword_1005CDA68, &qword_1004CF7D0);
      sub_100016D2C();
      v17 = sub_1004A7034();
      sub_100025F40(v7, &qword_1005CDA68, &qword_1004CF7D0);
      sub_100025F40(v10, &qword_1005CDA68, &qword_1004CF7D0);
      sub_100025F40(v13, &qword_1005CDA78, &unk_1004CF7E0);
      return v17 & 1;
    }

    sub_100025F40(v10, &qword_1005CDA68, &qword_1004CF7D0);
    goto LABEL_6;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
LABEL_6:
    sub_100025F40(v13, &qword_1005DBC60, &qword_1004FE590);
    v17 = 0;
    return v17 & 1;
  }

  sub_100025F40(v13, &qword_1005CDA78, &unk_1004CF7E0);
  v17 = 1;
  return v17 & 1;
}

uint64_t sub_100489074(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C9C0(&qword_1005DC5C8, &qword_10050B730);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v19 - v6;
  v8 = sub_10000C9C0(&qword_1005DC5D8, &unk_100502CC0);
  __chkstk_darwin(v8 - 8);
  v10 = &v19 - v9;
  v11 = sub_10000C9C0(&qword_1005DD7C0, &qword_10050C200);
  __chkstk_darwin(v11 - 8);
  v13 = &v19 - v12;
  v15 = *(v14 + 56);
  sub_10000E268(a1, &v19 - v12, &qword_1005DC5D8, &unk_100502CC0);
  sub_10000E268(a2, &v13[v15], &qword_1005DC5D8, &unk_100502CC0);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_10000E268(v13, v10, &qword_1005DC5D8, &unk_100502CC0);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      sub_100025FDC(&v13[v15], v7, &qword_1005DC5C8, &qword_10050B730);
      sub_100016D2C();
      v17 = sub_1004A7034();
      sub_100025F40(v7, &qword_1005DC5C8, &qword_10050B730);
      sub_100025F40(v10, &qword_1005DC5C8, &qword_10050B730);
      sub_100025F40(v13, &qword_1005DC5D8, &unk_100502CC0);
      return v17 & 1;
    }

    sub_100025F40(v10, &qword_1005DC5C8, &qword_10050B730);
    goto LABEL_6;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
LABEL_6:
    sub_100025F40(v13, &qword_1005DD7C0, &qword_10050C200);
    v17 = 0;
    return v17 & 1;
  }

  sub_100025F40(v13, &qword_1005DC5D8, &unk_100502CC0);
  v17 = 1;
  return v17 & 1;
}

unint64_t static SearchKey.__derived_enum_equals(_:_:)(unint64_t a1, unint64_t a2)
{
  while (2)
  {
    v2 = a2;
    v3 = a1;
    v4 = sub_10000C9C0(&qword_1005CDA78, &unk_1004CF7E0);
    __chkstk_darwin(v4 - 8);
    v6 = &v91 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
    __chkstk_darwin(v7);
    v9 = &v91 - v8;
    v10 = sub_10000C9C0(&qword_1005CD1C0, &unk_1004CEC40);
    __chkstk_darwin(v10 - 8);
    v12 = &v91 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
    __chkstk_darwin(v13);
    v15 = &v91 - v14;
    switch((v3 >> 59) & 0x1E | (v3 >> 2) & 1)
    {
      case 1uLL:
        if (((v2 >> 59) & 0x1E | (v2 >> 2) & 1) != 1)
        {
          return 0;
        }

        goto LABEL_59;
      case 2uLL:
        if (((v2 >> 59) & 0x1E | (v2 >> 2) & 1) == 2)
        {
          goto LABEL_68;
        }

        return 0;
      case 3uLL:
        if (((v2 >> 59) & 0x1E | (v2 >> 2) & 1) == 3)
        {
          goto LABEL_68;
        }

        return 0;
      case 4uLL:
        if (((v2 >> 59) & 0x1E | (v2 >> 2) & 1) == 4)
        {
          goto LABEL_68;
        }

        return 0;
      case 5uLL:
        if (((v2 >> 59) & 0x1E | (v2 >> 2) & 1) == 5)
        {
          goto LABEL_49;
        }

        return 0;
      case 6uLL:
        if (((v2 >> 59) & 0x1E | (v2 >> 2) & 1) == 6)
        {
          goto LABEL_59;
        }

        return 0;
      case 7uLL:
        if (((v2 >> 59) & 0x1E | (v2 >> 2) & 1) == 7)
        {
          goto LABEL_59;
        }

        return 0;
      case 8uLL:
        if (((v2 >> 59) & 0x1E | (v2 >> 2) & 1) == 8)
        {
          goto LABEL_68;
        }

        return 0;
      case 9uLL:
        if (((v2 >> 59) & 0x1E | (v2 >> 2) & 1) == 9)
        {
          goto LABEL_68;
        }

        return 0;
      case 0xAuLL:
        if (((v2 >> 59) & 0x1E | (v2 >> 2) & 1) != 0xA)
        {
          return 0;
        }

LABEL_68:
        v68 = *((v3 & 0xFFFFFFFFFFFFFFBLL) + 0x26);
        v69 = *((v3 & 0xFFFFFFFFFFFFFFBLL) + 0x24);
        v70 = *((v3 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
        v72 = *((v3 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        v71 = *((v3 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
        v73 = v2 & 0xFFFFFFFFFFFFFFBLL;
        v74 = *((v2 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        v75 = *(v73 + 24);
        v76 = v70 | (v68 << 48) | (v69 << 32);
        v77 = *(v73 + 32) | (*(v73 + 36) << 32) | (*(v73 + 38) << 48);

        v32 = sub_10020FBD0(v72, v71, v76, v74, v75, v77);

        return v32 & 1;
      case 0xBuLL:
        if (((v2 >> 59) & 0x1E | (v2 >> 2) & 1) != 0xB)
        {
          return 0;
        }

LABEL_49:
        v62 = sub_1004A5834();
        v64 = v63;
        if (v62 == sub_1004A5834() && v64 == v65)
        {

          return 1;
        }

        v89 = sub_1004A6D34();

        return v89 & 1;
      case 0xCuLL:
        if (((v2 >> 59) & 0x1E | (v2 >> 2) & 1) != 0xC)
        {
          return 0;
        }

        v33 = v3 & 0xFFFFFFFFFFFFFFBLL;
        v34 = *((v3 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        v35 = *((v3 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
        v36 = *((v3 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
        v37 = *(v33 + 40);
        v38 = *(v33 + 48);
        v39 = *(v33 + 52);
        v40 = *(v33 + 54);
        v41 = v2 & 0xFFFFFFFFFFFFFFBLL;
        v42 = *((v2 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        v43 = *((v2 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
        v44 = *((v2 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
        v45 = *(v41 + 40);
        v46 = *(v41 + 48);
        v47 = *(v41 + 52);
        v48 = *(v41 + 54);
        if ((v34 != v42 || v35 != v43) && (sub_1004A6D34() & 1) == 0)
        {
          return 0;
        }

        return sub_10020FBD0(v36, v37, v38 | (v39 << 32) | (v40 << 48), v44, v45, v46 | (v47 << 32) | (v48 << 48));
      case 0xDuLL:
        if (((v2 >> 59) & 0x1E | (v2 >> 2) & 1) == 0xD)
        {
          goto LABEL_94;
        }

        return 0;
      case 0xEuLL:
        if (((v2 >> 59) & 0x1E | (v2 >> 2) & 1) != 0xE)
        {
          return 0;
        }

        v30 = *((v3 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        v31 = *((v2 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        sub_1000B3664(v31);
        v32 = static SearchKey.__derived_enum_equals(_:_:)(v30, v31);
        sub_1000B37D8(v31);
        return v32 & 1;
      case 0xFuLL:
        if (((v2 >> 59) & 0x1E | (v2 >> 2) & 1) != 0xF)
        {
          return 0;
        }

        v51 = *((v3 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        v52 = *((v3 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
        v53 = *((v2 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        v54 = *((v2 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
        if ((static SearchKey.__derived_enum_equals(_:_:)(v51, v53) & 1) == 0)
        {
          return 0;
        }

        a1 = v52;
        a2 = v54;

        continue;
      case 0x10uLL:
        if (((v2 >> 59) & 0x1E | (v2 >> 2) & 1) == 0x10)
        {
          goto LABEL_59;
        }

        return 0;
      case 0x11uLL:
        if (((v2 >> 59) & 0x1E | (v2 >> 2) & 1) == 0x11)
        {
          goto LABEL_59;
        }

        return 0;
      case 0x12uLL:
        if (((v2 >> 59) & 0x1E | (v2 >> 2) & 1) != 0x12)
        {
          return 0;
        }

LABEL_59:
        v67 = *((v3 & 0xFFFFFFFFFFFFFFBLL) + 0x10) == *((v2 & 0xFFFFFFFFFFFFFFBLL) + 0x10) && *((v3 & 0xFFFFFFFFFFFFFFBLL) + 0x18) == *((v2 & 0xFFFFFFFFFFFFFFBLL) + 0x18) && *((v3 & 0xFFFFFFFFFFFFFFBLL) + 0x20) == *((v2 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
        goto LABEL_95;
      case 0x13uLL:
        if (((v2 >> 59) & 0x1E | (v2 >> 2) & 1) == 0x13)
        {
          goto LABEL_94;
        }

        return 0;
      case 0x14uLL:
        if (((v2 >> 59) & 0x1E | (v2 >> 2) & 1) != 0x14)
        {
          return 0;
        }

        v56 = swift_projectBox();
        v57 = swift_projectBox();
        sub_10000E268(v56, v15, &qword_1005CD1C0, &unk_1004CEC40);
        sub_10000E268(v57, v12, &qword_1005CD1C0, &unk_1004CEC40);
        v58 = sub_100488A9C(v15, v12);
        sub_100025F40(v12, &qword_1005CD1C0, &unk_1004CEC40);
        v59 = v15;
        v60 = &qword_1005CD1C0;
        v61 = &unk_1004CEC40;
        goto LABEL_80;
      case 0x15uLL:
        if (((v2 >> 59) & 0x1E | (v2 >> 2) & 1) == 0x15)
        {
          goto LABEL_73;
        }

        return 0;
      case 0x16uLL:
        if (((v2 >> 59) & 0x1E | (v2 >> 2) & 1) != 0x16)
        {
          return 0;
        }

LABEL_73:
        v78 = *((v2 & 0xFFFFFFFFFFFFFFBLL) + 0x14);
        if (*((v3 & 0xFFFFFFFFFFFFFFBLL) + 0x14))
        {
          if (*((v2 & 0xFFFFFFFFFFFFFFBLL) + 0x14))
          {
            return 1;
          }
        }

        else
        {
          if (*((v2 & 0xFFFFFFFFFFFFFFBLL) + 0x10) != *((v3 & 0xFFFFFFFFFFFFFFBLL) + 0x10))
          {
            v78 = 1;
          }

          if ((v78 & 1) == 0)
          {
            return 1;
          }
        }

        return 0;
      case 0x17uLL:
        if (((v2 >> 59) & 0x1E | (v2 >> 2) & 1) != 0x17)
        {
          return 0;
        }

        v79 = swift_projectBox();
        v80 = swift_projectBox();
        sub_10000E268(v79, v9, &qword_1005CDA78, &unk_1004CF7E0);
        sub_10000E268(v80, v6, &qword_1005CDA78, &unk_1004CF7E0);
        v58 = sub_100488D88(v9, v6);
        sub_100025F40(v6, &qword_1005CDA78, &unk_1004CF7E0);
        v59 = v9;
        v60 = &qword_1005CDA78;
        v61 = &unk_1004CF7E0;
LABEL_80:
        sub_100025F40(v59, v60, v61);
        return v58 & 1;
      case 0x18uLL:
        if (((v2 >> 59) & 0x1E | (v2 >> 2) & 1) != 0x18)
        {
          return 0;
        }

        v49 = *((v3 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        v50 = *((v2 & 0xFFFFFFFFFFFFFFBLL) + 0x10);

        v32 = sub_1003986D8(v49, v50);

        return v32 & 1;
      case 0x19uLL:
        if (((v2 >> 59) & 0x1E | (v2 >> 2) & 1) != 0x19)
        {
          return 0;
        }

        goto LABEL_94;
      case 0x1AuLL:
        if (((v2 >> 59) & 0x1E | (v2 >> 2) & 1) != 0x1A)
        {
          return 0;
        }

LABEL_94:
        v67 = *((v3 & 0xFFFFFFFFFFFFFFBLL) + 0x10) == *((v2 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
LABEL_95:
        v88 = v67;
        return v88 & 1;
      case 0x1BuLL:
        if (((v2 >> 59) & 0x1E | (v2 >> 2) & 1) == 0x1B)
        {
          goto LABEL_88;
        }

        return 0;
      case 0x1CuLL:
        if (((v2 >> 59) & 0x1E | (v2 >> 2) & 1) == 0x1C)
        {
          v81 = v3 & 0xFFFFFFFFFFFFFFBLL;
          v82 = *((v3 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
          v83 = *(v81 + 40);
          v84 = v2 & 0xFFFFFFFFFFFFFFBLL;
          v85 = *((v2 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
          v86 = *((v2 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
          v87 = *(v84 + 40);
          if (sub_10020FB40(*(v81 + 24), v85) & 1) != 0 && (sub_1003A3714(v82, v86))
          {
            if ((v87 | v83) < 0)
            {
              __break(1u);
              JUMPOUT(0x100489E58);
            }

            if (v87 == v83)
            {
              return 1;
            }
          }
        }

        return 0;
      case 0x1DuLL:
        if (((v2 >> 59) & 0x1E | (v2 >> 2) & 1) == 0x1D)
        {
          goto LABEL_88;
        }

        return 0;
      case 0x1EuLL:
        if (((v2 >> 59) & 0x1E | (v2 >> 2) & 1) != 0x1E)
        {
          return 0;
        }

LABEL_88:
        if (*((v3 & 0xFFFFFFFFFFFFFFBLL) + 0x10) == *((v2 & 0xFFFFFFFFFFFFFFBLL) + 0x10) && *((v3 & 0xFFFFFFFFFFFFFFBLL) + 0x18) == *((v2 & 0xFFFFFFFFFFFFFFBLL) + 0x18))
        {
          return 1;
        }

        return sub_1004A6D34();
      case 0x1FuLL:
        v55 = (v2 >> 59) & 0x1E | (v2 >> 2) & 1;
        switch(__ROR8__(v3 + 0xFFFFFFFFFFFFFFCLL, 3))
        {
          case 1:
            return v55 == 31 && v2 == 0xF00000000000000CLL;
          case 2:
            return v55 == 31 && v2 == 0xF000000000000014;
          case 3:
            return v55 == 31 && v2 == 0xF00000000000001CLL;
          case 4:
            return v55 == 31 && v2 == 0xF000000000000024;
          case 5:
            if (v55 != 31)
            {
              return 0;
            }

            v90 = 40;
            break;
          case 6:
            return v55 == 31 && v2 == 0xF000000000000034;
          case 7:
            return v55 == 31 && v2 == 0xF00000000000003CLL;
          case 8:
            return v55 == 31 && v2 == 0xF000000000000044;
          case 9:
            if (v55 != 31)
            {
              return 0;
            }

            v90 = 72;
            break;
          case 0xALL:
            if (v55 != 31)
            {
              return 0;
            }

            v90 = 80;
            break;
          case 0xBLL:
            if (v55 != 31)
            {
              return 0;
            }

            v90 = 88;
            break;
          case 0xCLL:
            return v55 == 31 && v2 == 0xF000000000000064;
          case 0xDLL:
            if (v55 != 31)
            {
              return 0;
            }

            v90 = 104;
            break;
          default:
            return v55 == 31 && v2 == 0xF000000000000004;
        }

        return v2 == (v90 | 0xF000000000000004);
      default:
        if ((v2 >> 59) & 0x1E | (v2 >> 2) & 1)
        {
          return 0;
        }

        v16 = *(v3 + 38);
        v17 = *(v3 + 36);
        v18 = *(v3 + 32);
        v21 = v3 + 16;
        v19 = *(v3 + 16);
        v20 = *(v21 + 8);
        v22 = *(v2 + 16);
        v23 = *(v2 + 24);
        v24 = *(v2 + 32);
        v25 = *(v2 + 36);
        v26 = *(v2 + 38);
        v27 = v18 | (v16 << 48) | (v17 << 32);
        v28 = v24 | (v25 << 32) | (v26 << 48);

        LOBYTE(v27) = sub_10020FBD0(v19, v20, v27, v22, v23, v28);

        return v27 & 1;
    }
  }
}

uint64_t sub_100489F10(unint64_t a1)
{
  while (2)
  {
    result = 0;
    switch((a1 >> 59) & 0x1E | (a1 >> 2) & 1)
    {
      case 1uLL:
      case 5uLL:
      case 6uLL:
      case 7uLL:
      case 0xBuLL:
      case 0xDuLL:
      case 0x10uLL:
      case 0x11uLL:
      case 0x12uLL:
      case 0x13uLL:
      case 0x14uLL:
      case 0x15uLL:
      case 0x16uLL:
      case 0x17uLL:
      case 0x19uLL:
      case 0x1AuLL:
      case 0x1BuLL:
      case 0x1CuLL:
      case 0x1DuLL:
      case 0x1EuLL:
      case 0x1FuLL:
        return result;
      case 0xEuLL:
        v4 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        sub_1000B3664(v4);
        v5 = sub_100489F10(v4);
        sub_1000B37D8(v4);
        return v5 & 1;
      case 0xFuLL:
        v3 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        a1 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
        if ((sub_100489F10(v3) & 1) == 0)
        {
          continue;
        }

        return 1;
      case 0x18uLL:
        v6 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        v7 = *(v6 + 16);

        v8 = 0;
        break;
      default:
        return 1;
    }

    break;
  }

  do
  {
    if (v7 == v8)
    {

      return 0;
    }

    if (v8 >= *(v6 + 16))
    {
      __break(1u);
      JUMPOUT(0x10048A034);
    }

    v9 = v8 + 1;
    v10 = *(v6 + 8 * v8 + 32);
    sub_1000B3664(v10);
    v11 = sub_100489F10(v10);
    sub_1000B37D8(v10);
    v8 = v9;
  }

  while ((v11 & 1) == 0);

  return 1;
}

void SearchKey.hash(into:)(uint64_t a1, unint64_t a2)
{
  while (2)
  {
    v2 = a2;
    v3 = a1;
    v4 = sub_10000C9C0(&qword_1005CDA68, &qword_1004CF7D0);
    v58 = *(v4 - 8);
    __chkstk_darwin(v4);
    v6 = &v56 - v5;
    v7 = sub_10000C9C0(&qword_1005CDA78, &unk_1004CF7E0);
    __chkstk_darwin(v7 - 8);
    v9 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    __chkstk_darwin(v10);
    v12 = &v56 - v11;
    v13 = sub_10000C9C0(&qword_1005CD1D0, &unk_1004CF2C0);
    v57 = *(v13 - 8);
    __chkstk_darwin(v13);
    v15 = &v56 - v14;
    v16 = sub_10000C9C0(&qword_1005CD1C0, &unk_1004CEC40);
    __chkstk_darwin(v16 - 8);
    v18 = &v56 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
    __chkstk_darwin(v19);
    v21 = &v56 - v20;
    switch((v2 >> 59) & 0x1E | (v2 >> 2) & 1)
    {
      case 1uLL:
        v40 = v2 & 0xFFFFFFFFFFFFFFBLL;
        v24 = *((v2 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        v25 = *((v2 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
        v26 = *(v40 + 32);
        v27 = 15;
        goto LABEL_36;
      case 2uLL:
        v30 = 16;
        goto LABEL_39;
      case 3uLL:
        v30 = 17;
        goto LABEL_39;
      case 4uLL:
        v30 = 18;
        goto LABEL_39;
      case 5uLL:
        v29 = 19;
        goto LABEL_30;
      case 6uLL:
        v45 = v2 & 0xFFFFFFFFFFFFFFBLL;
        v24 = *((v2 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        v25 = *((v2 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
        v26 = *(v45 + 32);
        v27 = 20;
        goto LABEL_36;
      case 7uLL:
        v39 = v2 & 0xFFFFFFFFFFFFFFBLL;
        v24 = *((v2 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        v25 = *((v2 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
        v26 = *(v39 + 32);
        v27 = 21;
        goto LABEL_36;
      case 8uLL:
        v30 = 22;
        goto LABEL_39;
      case 9uLL:
        v30 = 23;
        goto LABEL_39;
      case 0xAuLL:
        v30 = 24;
LABEL_39:
        sub_1004A6EB4(v30);
        swift_beginAccess();
        goto LABEL_40;
      case 0xBuLL:
        v29 = 25;
LABEL_30:
        sub_1004A6EB4(v29);
        sub_1004A5834();

        _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

        goto LABEL_52;
      case 0xCuLL:
        sub_1004A6EB4(0x1AuLL);
        _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
        swift_beginAccess();
        goto LABEL_40;
      case 0xDuLL:
        v31 = *((v2 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        v32 = 27;
        goto LABEL_56;
      case 0xEuLL:
        v28 = *((v2 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        sub_1004A6EB4(0x1CuLL);
        sub_1000B3664(v28);
        SearchKey.hash(into:)(v3, v28);

        sub_1000B37D8(v28);
        return;
      case 0xFuLL:
        v37 = *((v2 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        v38 = *((v2 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
        sub_1004A6EB4(0x1DuLL);
        SearchKey.hash(into:)(v3, v37);
        a1 = v3;
        a2 = v38;

        continue;
      case 0x10uLL:
        v23 = v2 & 0xFFFFFFFFFFFFFFBLL;
        v24 = *((v2 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        v25 = *((v2 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
        v26 = *(v23 + 32);
        v27 = 30;
        goto LABEL_36;
      case 0x11uLL:
        v41 = v2 & 0xFFFFFFFFFFFFFFBLL;
        v24 = *((v2 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        v25 = *((v2 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
        v26 = *(v41 + 32);
        v27 = 31;
        goto LABEL_36;
      case 0x12uLL:
        v46 = v2 & 0xFFFFFFFFFFFFFFBLL;
        v24 = *((v2 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        v25 = *((v2 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
        v26 = *(v46 + 32);
        v27 = 32;
LABEL_36:
        sub_1004A6EB4(v27);
        sub_1004A6EB4(v24);
        sub_1004A6EB4(v25);
        sub_1004A6EB4(v26);
        return;
      case 0x13uLL:
        v31 = *((v2 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        v32 = 33;
        goto LABEL_56;
      case 0x14uLL:
        v42 = swift_projectBox();
        sub_10000E268(v42, v21, &qword_1005CD1C0, &unk_1004CEC40);
        sub_1004A6EB4(0x22uLL);
        sub_10000E268(v21, v18, &qword_1005CD1C0, &unk_1004CEC40);
        if ((*(v57 + 48))(v18, 1, v13) == 1)
        {
          sub_1004A6EB4(1uLL);
        }

        else
        {
          sub_100025FDC(v18, v15, &qword_1005CD1D0, &unk_1004CF2C0);
          sub_1004A6EB4(0);
          sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
          sub_1000956A0();
          sub_1004A5564();
          sub_100025F40(v15, &qword_1005CD1D0, &unk_1004CF2C0);
        }

        v53 = &qword_1005CD1C0;
        v54 = &unk_1004CEC40;
        v55 = v21;
        goto LABEL_61;
      case 0x15uLL:
        v43 = *((v2 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        v44 = *((v2 & 0xFFFFFFFFFFFFFFBLL) + 0x14);
        sub_1004A6EB4(0x23uLL);
        if (v44)
        {
          goto LABEL_32;
        }

        goto LABEL_43;
      case 0x16uLL:
        v43 = *((v2 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        v47 = *((v2 & 0xFFFFFFFFFFFFFFBLL) + 0x14);
        sub_1004A6EB4(0x24uLL);
        if (v47)
        {
LABEL_32:
          sub_1004A6EB4(1uLL);
        }

        else
        {
LABEL_43:
          sub_1004A6EB4(0);
          sub_1004A6EE4(v43);
        }

        return;
      case 0x17uLL:
        v48 = swift_projectBox();
        sub_10000E268(v48, v12, &qword_1005CDA78, &unk_1004CF7E0);
        sub_1004A6EB4(0x25uLL);
        sub_10000E268(v12, v9, &qword_1005CDA78, &unk_1004CF7E0);
        if ((*(v58 + 48))(v9, 1, v4) == 1)
        {
          sub_1004A6EB4(1uLL);
        }

        else
        {
          sub_100025FDC(v9, v6, &qword_1005CDA68, &qword_1004CF7D0);
          sub_1004A6EB4(0);
          sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
          sub_1000956A0();
          sub_1004A5564();
          sub_100025F40(v6, &qword_1005CDA68, &qword_1004CF7D0);
        }

        v53 = &qword_1005CDA78;
        v54 = &unk_1004CF7E0;
        v55 = v12;
LABEL_61:
        sub_100025F40(v55, v53, v54);
        return;
      case 0x18uLL:
        v33 = *((v2 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        sub_1004A6EB4(0x26uLL);
        sub_1004A6EB4(*(v33 + 16));
        v34 = *(v33 + 16);
        if (!v34)
        {
          return;
        }

        v35 = 32;
        do
        {
          v36 = *(v33 + v35);
          sub_1000B3664(v36);
          SearchKey.hash(into:)(v3, v36);
          sub_1000B37D8(v36);
          v35 += 8;
          --v34;
        }

        while (v34);
        goto LABEL_52;
      case 0x19uLL:
        v31 = *((v2 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        v32 = 39;
        goto LABEL_56;
      case 0x1AuLL:
        v31 = *((v2 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        v32 = 40;
LABEL_56:
        sub_1004A6EB4(v32);
        sub_1004A6EB4(v31);
        return;
      case 0x1BuLL:
        v22 = 41;
        goto LABEL_51;
      case 0x1CuLL:
        v49 = v2 & 0xFFFFFFFFFFFFFFBLL;
        v50 = *((v2 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
        v51 = *(v49 + 32);
        v52 = *(v49 + 40);
        sub_1004A6EB4(0x2AuLL);

        sub_1003A1770(v3, v50, v51);
        sub_1004A6EF4(v52);

        return;
      case 0x1DuLL:
        v22 = 43;
        goto LABEL_51;
      case 0x1EuLL:
        v22 = 44;
LABEL_51:
        sub_1004A6EB4(v22);

        _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
LABEL_52:

        break;
      case 0x1FuLL:
        switch(__ROR8__(v2 + 0xFFFFFFFFFFFFFFCLL, 3))
        {
          case 1:
            goto LABEL_32;
          case 2:
            sub_1004A6EB4(2uLL);
            break;
          case 3:
            sub_1004A6EB4(3uLL);
            break;
          case 4:
            sub_1004A6EB4(4uLL);
            break;
          case 5:
            sub_1004A6EB4(5uLL);
            break;
          case 6:
            sub_1004A6EB4(6uLL);
            break;
          case 7:
            sub_1004A6EB4(7uLL);
            break;
          case 8:
            sub_1004A6EB4(8uLL);
            break;
          case 9:
            sub_1004A6EB4(9uLL);
            break;
          case 0xALL:
            sub_1004A6EB4(0xAuLL);
            break;
          case 0xBLL:
            sub_1004A6EB4(0xBuLL);
            break;
          case 0xCLL:
            sub_1004A6EB4(0xCuLL);
            break;
          case 0xDLL:
            sub_1004A6EB4(0xDuLL);
            break;
          default:
            sub_1004A6EB4(0);
            break;
        }

        break;
      default:
        sub_1004A6EB4(0xEuLL);
        swift_beginAccess();
LABEL_40:
        sub_1004A6EA4();
        break;
    }

    break;
  }
}

Swift::Int SearchKey.hashValue.getter(unint64_t a1)
{
  sub_1004A6E94();
  SearchKey.hash(into:)(v3, a1);
  return sub_1004A6F14();
}

Swift::Int sub_10048AC58()
{
  v1 = *v0;
  sub_1004A6E94();
  SearchKey.hash(into:)(v3, v1);
  return sub_1004A6F14();
}

Swift::Int sub_10048ACA8(uint64_t a1)
{
  v2 = *v1;
  sub_1004A6E94();
  SearchKey.hash(into:)(v4, v2);
  return sub_1004A6F14();
}

void sub_10048ACF8(unint64_t a1)
{
  LODWORD(v1) = (a1 >> 59) & 0x1E | (a1 >> 2) & 1;
  if (v1 <= 0x1F)
  {
    if (((1 << v1) & 0xFEFF0000) != 0)
    {
      return;
    }

    if (v1 == 15)
    {
      v2 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
      sub_10048ACF8(*((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10));
      v4 = v3;
      sub_10048ACF8(v2);
      if (!__OFADD__(v4, a1))
      {
        return;
      }

      __break(1u);
    }

    if (v1 == 24)
    {
      v5 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v6 = *(v5 + 16);

      v1 = 0;
      v7 = 0;
      while (v6 != v1)
      {
        if (v1 >= *(v5 + 16))
        {
          __break(1u);
          return;
        }

        v8 = v1 + 1;
        v9 = *(v5 + 8 * v1 + 32);
        sub_1000B3664(v9);
        sub_10048ACF8(v9);
        v11 = v10;
        a1 = sub_1000B37D8(v9);
        v1 = v8;
        v12 = __OFADD__(v7, v11);
        v7 += v11;
        if (v12)
        {
          __break(1u);
          goto LABEL_14;
        }
      }

      goto LABEL_19;
    }
  }

LABEL_14:
  if (v1 >= 0xE)
  {
    v13 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
    sub_1000B3664(v13);
    sub_10048ACF8(v13);
    v15 = v14;
    sub_1000B37D8(v13);
    if (__OFADD__(v15, 1))
    {
      __break(1u);
LABEL_19:
    }
  }
}

uint64_t sub_10048AE40(unint64_t a1)
{
  v2 = v1;
  v4 = sub_10000C9C0(&qword_1005CDA78, &unk_1004CF7E0);
  __chkstk_darwin(v4 - 8);
  v6 = &v446 - v5;
  v7 = sub_10000C9C0(&qword_1005CD1C0, &unk_1004CEC40);
  __chkstk_darwin(v7 - 8);
  v9 = &v446 - v8;
  switch((a1 >> 59) & 0x1E | (a1 >> 2) & 1)
  {
    case 1uLL:
      goto LABEL_115;
    case 2uLL:
      goto LABEL_83;
    case 3uLL:
      goto LABEL_103;
    case 4uLL:
      goto LABEL_42;
    case 5uLL:
      goto LABEL_139;
    case 6uLL:
      goto LABEL_161;
    case 7uLL:
      goto LABEL_109;
    case 8uLL:
      goto LABEL_179;
    case 9uLL:
      goto LABEL_59;
    case 0xAuLL:
      goto LABEL_173;
    case 0xBuLL:
      goto LABEL_33;
    case 0xCuLL:
      goto LABEL_48;
    case 0xDuLL:
      v268 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v451 = 0x2052454752414CLL;
      v452 = 0xE700000000000000;
      v450 = v268;
      v455._countAndFlagsBits = sub_1004A6CE4();
      sub_1004A5994(v455);

      v270 = v451;
      v269 = v452;
      v271 = *(v2 + 20);
      v272 = sub_1002F178C(v451, v452, v2 + 8, v271);
      if (v273)
      {
        v274._countAndFlagsBits = v270;
        v274._object = v269;
        v272 = ByteBuffer._setStringSlowpath(_:at:)(v274, v271);
      }

      a1 = v272;

      v275 = *(v2 + 20);
      result = a1;
      v21 = __CFADD__(v275, a1);
      v33 = v275 + a1;
      if (!v21)
      {
        goto LABEL_259;
      }

      __break(1u);
LABEL_161:
      v276 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v277 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
      v278 = *(v2 + 20);
      v279 = sub_1002F178C(0x204E4FuLL, 0xE300000000000000, v2 + 8, v278);
      if (v280)
      {
        v281._countAndFlagsBits = 2117199;
        v281._object = 0xE300000000000000;
        v279 = ByteBuffer._setStringSlowpath(_:at:)(v281, v278);
      }

      v282 = v279;
      v283 = *(v2 + 20);
      v21 = __CFADD__(v283, v279);
      v284 = v283 + v279;
      if (v21)
      {
        goto LABEL_344;
      }

      *(v2 + 20) = v284;
      a1 = v2;
      v285 = sub_10043132C(v276, v277);
      v44 = __OFADD__(v282, v285);
      result = v282 + v285;
      if (!v44)
      {
        return result;
      }

      __break(1u);
LABEL_167:
      v286 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v287 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
      v288 = *(v2 + 20);
      v289 = sub_1002F178C(0x434E4953544E4553uLL, 0xEA00000000002045, v2 + 8, v288);
      if (v290)
      {
        v291._countAndFlagsBits = 0x434E4953544E4553;
        v291._object = 0xEA00000000002045;
        v289 = ByteBuffer._setStringSlowpath(_:at:)(v291, v288);
      }

      v292 = v289;
      v293 = *(v2 + 20);
      v21 = __CFADD__(v293, v289);
      v294 = v293 + v289;
      if (v21)
      {
        goto LABEL_345;
      }

      *(v2 + 20) = v294;
      a1 = v2;
      v295 = sub_10043132C(v286, v287);
      v44 = __OFADD__(v292, v295);
      result = v292 + v295;
      if (!v44)
      {
        return result;
      }

      __break(1u);
LABEL_173:
      v296 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v297 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
      v298 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
      v299 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x24);
      v300 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x26);
      v301 = *(v2 + 20);

      v302 = sub_1002F178C(0x204F54uLL, 0xE300000000000000, v2 + 8, v301);
      if (v303)
      {
        v304._countAndFlagsBits = 2117460;
        v304._object = 0xE300000000000000;
        v302 = ByteBuffer._setStringSlowpath(_:at:)(v304, v301);
      }

      v305 = v302;
      v306 = *(v2 + 20);
      v21 = __CFADD__(v306, v302);
      v307 = v306 + v302;
      if (v21)
      {
        goto LABEL_346;
      }

      *(v2 + 20) = v307;
      a1 = v2;
      v2 = sub_1003B1E70(v296, v297, v298 | (v299 << 32) | (v300 << 48));

      result = v305 + v2;
      if (!__OFADD__(v305, v2))
      {
        return result;
      }

      __break(1u);
LABEL_179:
      v308 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v309 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
      v310 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
      v311 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x24);
      v312 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x26);
      v313 = *(v2 + 20);

      v314 = sub_1002F178C(0x205443454A425553uLL, 0xE800000000000000, v2 + 8, v313);
      if (v315)
      {
        v316._countAndFlagsBits = 0x205443454A425553;
        v316._object = 0xE800000000000000;
        v314 = ByteBuffer._setStringSlowpath(_:at:)(v316, v313);
      }

      v317 = v314;
      v318 = *(v2 + 20);
      v21 = __CFADD__(v318, v314);
      v319 = v318 + v314;
      if (v21)
      {
        goto LABEL_347;
      }

      *(v2 + 20) = v319;
      a1 = v2;
      v2 = sub_1003B1E70(v308, v309, v310 | (v311 << 32) | (v312 << 48));

      result = v317 + v2;
      if (!__OFADD__(v317, v2))
      {
        return result;
      }

      __break(1u);
LABEL_185:
      v321 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v320 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
      v322 = *(v2 + 20);

      v323 = sub_1002F178C(0x4449444145524854uLL, 0xE900000000000020, v2 + 8, v322);
      if (v324)
      {
        v325._countAndFlagsBits = 0x4449444145524854;
        v325._object = 0xE900000000000020;
        v323 = ByteBuffer._setStringSlowpath(_:at:)(v325, v322);
      }

      v326 = v323;
      v327 = *(v2 + 20);
      v328 = (v327 + v323);
      if (__CFADD__(v327, v323))
      {
        goto LABEL_348;
      }

      *(v2 + 20) = v328;

      v329 = sub_1002F178C(v321, v320, v2 + 8, v328);
      if (v330)
      {
        v331._countAndFlagsBits = v321;
        v331._object = v320;
        v329 = ByteBuffer._setStringSlowpath(_:at:)(v331, v328);
      }

      a1 = v329;

      v332 = *(v2 + 20);
      v21 = __CFADD__(v332, a1);
      v333 = v332 + a1;
      if (v21)
      {
        goto LABEL_354;
      }

      *(v2 + 20) = v333;

      result = v326 + a1;
      if (!__OFADD__(v326, a1))
      {
        return result;
      }

      __break(1u);
LABEL_194:
      v255 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v334 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x14);
      v257 = *(v2 + 20);
      v335 = sub_1002F178C(0x524F464542444955uLL, 0xEA00000000002045, v2 + 8, v257);
      if (v336)
      {
        v337._countAndFlagsBits = 0x524F464542444955;
        v337._object = 0xEA00000000002045;
        v335 = ByteBuffer._setStringSlowpath(_:at:)(v337, v257);
      }

      v45 = v335;
      v338 = *(v2 + 20);
      v339 = (v338 + v335);
      if (__CFADD__(v338, v335))
      {
        goto LABEL_349;
      }

      *(v2 + 20) = v339;
      if (!v334)
      {
        goto LABEL_248;
      }

      v340 = sub_1002F178C(0x24uLL, 0xE100000000000000, v2 + 8, v339);
      if (v341)
      {
        v342._countAndFlagsBits = 36;
        v342._object = 0xE100000000000000;
        v340 = ByteBuffer._setStringSlowpath(_:at:)(v342, v339);
      }

      v343 = *(v2 + 20);
      v21 = __CFADD__(v343, v340);
      v344 = v343 + v340;
      if (v21)
      {
        goto LABEL_364;
      }

      *(v2 + 20) = v344;
      goto LABEL_249;
    case 0xEuLL:
      goto LABEL_19;
    case 0xFuLL:
      goto LABEL_89;
    case 0x10uLL:
      goto LABEL_13;
    case 0x11uLL:
LABEL_127:
      v9 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v224 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
      v225 = *(v2 + 20);
      v226 = sub_1002F178C(0x204E4F544E4553uLL, 0xE700000000000000, v2 + 8, v225);
      if (v227)
      {
        v228._countAndFlagsBits = 0x204E4F544E4553;
        v228._object = 0xE700000000000000;
        v226 = ByteBuffer._setStringSlowpath(_:at:)(v228, v225);
      }

      v229 = v226;
      v230 = *(v2 + 20);
      v21 = __CFADD__(v230, v226);
      v231 = v230 + v226;
      if (v21)
      {
        goto LABEL_340;
      }

      *(v2 + 20) = v231;
      v232 = sub_10043132C(v9, v224);
      v44 = __OFADD__(v229, v232);
      result = v229 + v232;
      if (!v44)
      {
        return result;
      }

      __break(1u);
LABEL_133:
      v233 = swift_projectBox();
      sub_10000E268(v233, v9, &qword_1005CD1C0, &unk_1004CEC40);
      v234 = *(v2 + 20);
      v235 = sub_1002F178C(0x20444955uLL, 0xE400000000000000, v2 + 8, v234);
      if (v236)
      {
        v237._countAndFlagsBits = 541346133;
        v237._object = 0xE400000000000000;
        v235 = ByteBuffer._setStringSlowpath(_:at:)(v237, v234);
      }

      v238 = v235;
      v239 = *(v2 + 20);
      v21 = __CFADD__(v239, v235);
      v240 = v239 + v235;
      if (v21)
      {
        goto LABEL_341;
      }

      *(v2 + 20) = v240;
      a1 = v2;
      v2 = sub_10048DA10(v9);
      sub_100025F40(v9, &qword_1005CD1C0, &unk_1004CEC40);
      result = v238 + v2;
      if (!__OFADD__(v238, v2))
      {
        return result;
      }

      __break(1u);
LABEL_139:
      v242 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v241 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
      v243 = *(v2 + 20);

      v244 = sub_1002F178C(0x2044524F5759454BuLL, 0xE800000000000000, v2 + 8, v243);
      if (v245)
      {
        v246._countAndFlagsBits = 0x2044524F5759454BLL;
        v246._object = 0xE800000000000000;
        v244 = ByteBuffer._setStringSlowpath(_:at:)(v246, v243);
      }

      v247 = v244;
      v248 = *(v2 + 20);
      v249 = (v248 + v244);
      if (__CFADD__(v248, v244))
      {
        goto LABEL_342;
      }

      *(v2 + 20) = v249;
      v250 = sub_1002F178C(v242, v241, v2 + 8, v249);
      if (v251)
      {
        v252._countAndFlagsBits = v242;
        v252._object = v241;
        v250 = ByteBuffer._setStringSlowpath(_:at:)(v252, v249);
      }

      a1 = v250;

      v253 = *(v2 + 20);
      v21 = __CFADD__(v253, a1);
      v254 = v253 + a1;
      if (v21)
      {
        goto LABEL_353;
      }

      *(v2 + 20) = v254;
      result = v247 + a1;
      if (!__OFADD__(v247, a1))
      {
        return result;
      }

      __break(1u);
LABEL_148:
      v255 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v256 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x14);
      v257 = *(v2 + 20);
      v258 = sub_1002F178C(0x5245544641444955uLL, 0xE900000000000020, v2 + 8, v257);
      if (v259)
      {
        v260._countAndFlagsBits = 0x5245544641444955;
        v260._object = 0xE900000000000020;
        v258 = ByteBuffer._setStringSlowpath(_:at:)(v260, v257);
      }

      v45 = v258;
      v261 = *(v2 + 20);
      v262 = (v261 + v258);
      if (__CFADD__(v261, v258))
      {
        goto LABEL_343;
      }

      *(v2 + 20) = v262;
      if (!v256)
      {
        goto LABEL_244;
      }

      v263 = sub_1002F178C(0x24uLL, 0xE100000000000000, v2 + 8, v262);
      if (v264)
      {
        v265._countAndFlagsBits = 36;
        v265._object = 0xE100000000000000;
        v263 = ByteBuffer._setStringSlowpath(_:at:)(v265, v262);
      }

      v266 = *(v2 + 20);
      v21 = __CFADD__(v266, v263);
      v267 = v266 + v263;
      if (v21)
      {
        goto LABEL_363;
      }

      *(v2 + 20) = v267;
      goto LABEL_245;
    case 0x12uLL:
      goto LABEL_167;
    case 0x13uLL:
      v345 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v451 = 0x2052454C4C414D53;
      v452 = 0xE800000000000000;
      v450 = v345;
      v456._countAndFlagsBits = sub_1004A6CE4();
      sub_1004A5994(v456);

      v347 = v451;
      v346 = v452;
      v348 = *(v2 + 20);
      v6 = 0;
      v349 = sub_1002F178C(v451, v452, v2 + 8, v348);
      if (v350)
      {
        v351._countAndFlagsBits = v347;
        v351._object = v346;
        v349 = ByteBuffer._setStringSlowpath(_:at:)(v351, v348);
      }

      v352 = v349;

      v353 = *(v2 + 20);
      result = v352;
      v21 = __CFADD__(v353, v352);
      v33 = v353 + v352;
      if (!v21)
      {
        goto LABEL_259;
      }

      __break(1u);
LABEL_207:
      v354 = swift_projectBox();
      sub_10000E268(v354, v6, &qword_1005CDA78, &unk_1004CF7E0);
      v355 = sub_10048D800(v6);
      sub_100025F40(v6, &qword_1005CDA78, &unk_1004CF7E0);
      return v355;
    case 0x14uLL:
      goto LABEL_133;
    case 0x15uLL:
      goto LABEL_148;
    case 0x16uLL:
      goto LABEL_194;
    case 0x17uLL:
      goto LABEL_207;
    case 0x18uLL:
      goto LABEL_70;
    case 0x19uLL:
      goto LABEL_65;
    case 0x1AuLL:
      goto LABEL_218;
    case 0x1BuLL:
      goto LABEL_8;
    case 0x1CuLL:
      v356 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v357 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
      v358 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x20);

      v359 = sub_10048D020(v356, v357, v358);

      return v359;
    case 0x1DuLL:
      v361 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v360 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
      v362 = *(v2 + 20);

      v363 = sub_1002F178C(0x2044494C49414D45uLL, 0xE800000000000000, v2 + 8, v362);
      if (v364)
      {
        v365._countAndFlagsBits = 0x2044494C49414D45;
        v365._object = 0xE800000000000000;
        v363 = ByteBuffer._setStringSlowpath(_:at:)(v365, v362);
      }

      v366 = v363;
      v367 = *(v2 + 20);
      v368 = (v367 + v363);
      if (__CFADD__(v367, v363))
      {
        goto LABEL_350;
      }

      *(v2 + 20) = v368;

      v369 = sub_1002F178C(v361, v360, v2 + 8, v368);
      if (v370)
      {
        v371._countAndFlagsBits = v361;
        v371._object = v360;
        v369 = ByteBuffer._setStringSlowpath(_:at:)(v371, v368);
      }

      a1 = v369;

      v372 = *(v2 + 20);
      v21 = __CFADD__(v372, a1);
      v373 = v372 + a1;
      if (v21)
      {
        goto LABEL_355;
      }

      *(v2 + 20) = v373;

      result = v366 + a1;
      if (!__OFADD__(v366, a1))
      {
        return result;
      }

      __break(1u);
LABEL_218:
      v374 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v451 = 0x205245474E554F59;
      v452 = 0xE800000000000000;
      v450 = v374;
      v457._countAndFlagsBits = sub_1004A6CE4();
      sub_1004A5994(v457);

      v50 = v451;
      v45 = v452;
      v52 = *(v2 + 20);
      v375 = sub_1002F178C(v451, v452, v2 + 8, v52);
      if (v376)
      {
        v377._countAndFlagsBits = v50;
        v377._object = v45;
        v375 = ByteBuffer._setStringSlowpath(_:at:)(v377, v52);
      }

      v378 = v375;

      v379 = *(v2 + 20);
      result = v378;
      v21 = __CFADD__(v379, v378);
      v33 = v379 + v378;
      if (!v21)
      {
        goto LABEL_259;
      }

      __break(1u);
      goto LABEL_223;
    case 0x1EuLL:
      goto LABEL_185;
    case 0x1FuLL:
      goto LABEL_121;
    default:
      v10 = *(a1 + 16);
      v11 = *(a1 + 24);
      v12 = *(a1 + 32);
      v13 = *(a1 + 36);
      v14 = *(a1 + 38);
      v15 = *(v2 + 20);

      v16 = sub_1002F178C(0x20434342uLL, 0xE400000000000000, v2 + 8, v15);
      if (v17)
      {
        v18._countAndFlagsBits = 541279042;
        v18._object = 0xE400000000000000;
        v16 = ByteBuffer._setStringSlowpath(_:at:)(v18, v15);
      }

      v19 = v16;
      v20 = *(v2 + 20);
      v21 = __CFADD__(v20, v16);
      v22 = v20 + v16;
      if (v21)
      {
        goto LABEL_338;
      }

      *(v2 + 20) = v22;
      a1 = v2;
      v2 = sub_1003B1E70(v10, v11, v12 | (v13 << 32) | (v14 << 48));

      result = v19 + v2;
      if (!__OFADD__(v19, v2))
      {
        return result;
      }

      __break(1u);
LABEL_8:
      v24 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v25 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
      v451 = 0x205245544C4946;
      v452 = 0xE700000000000000;

      v453._countAndFlagsBits = v24;
      v453._object = v25;
      sub_1004A5994(v453);

      v27 = v451;
      v26 = v452;
      v28 = *(v2 + 20);
      v29 = sub_1002F178C(v451, v452, v2 + 8, v28);
      if (v30)
      {
        v31._countAndFlagsBits = v27;
        v31._object = v26;
        v29 = ByteBuffer._setStringSlowpath(_:at:)(v31, v28);
      }

      a1 = v29;

      v32 = *(v2 + 20);
      result = a1;
      v21 = __CFADD__(v32, a1);
      v33 = v32 + a1;
      if (!v21)
      {
        goto LABEL_259;
      }

      __break(1u);
LABEL_13:
      v34 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v35 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
      v36 = *(v2 + 20);
      v37 = sub_1002F178C(0x4F464542544E4553uLL, 0xEB00000000204552, v2 + 8, v36);
      if (v38)
      {
        v39._countAndFlagsBits = 0x4F464542544E4553;
        v39._object = 0xEB00000000204552;
        v37 = ByteBuffer._setStringSlowpath(_:at:)(v39, v36);
      }

      v40 = v37;
      v41 = *(v2 + 20);
      v21 = __CFADD__(v41, v37);
      v42 = v41 + v37;
      if (v21)
      {
        goto LABEL_328;
      }

      *(v2 + 20) = v42;
      a1 = v2;
      v43 = sub_10043132C(v34, v35);
      v44 = __OFADD__(v40, v43);
      result = v40 + v43;
      if (!v44)
      {
        return result;
      }

      __break(1u);
LABEL_19:
      v45 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v46 = *(v2 + 20);
      sub_1000B3664(v45);
      v47 = sub_1002F178C(0x20544F4EuLL, 0xE400000000000000, v2 + 8, v46);
      if (v48)
      {
        v49._countAndFlagsBits = 542396238;
        v49._object = 0xE400000000000000;
        v47 = ByteBuffer._setStringSlowpath(_:at:)(v49, v46);
      }

      v50 = v47;
      v51 = *(v2 + 20);
      v52 = (v51 + v47);
      if (__CFADD__(v51, v47))
      {
        goto LABEL_329;
      }

      *(v2 + 20) = v52;
      sub_10048ACF8(v45);
      if (v53 < 2)
      {
LABEL_223:
        v2 = sub_10048AE40(v45);
        sub_1000B37D8(v45);
LABEL_224:
        result = v50 + v2;
        if (!__OFADD__(v50, v2))
        {
          return result;
        }

        __break(1u);
        goto LABEL_227;
      }

      v54 = sub_1002F178C(0x28uLL, 0xE100000000000000, v2 + 8, v52);
      if (v55)
      {
        v56._countAndFlagsBits = 40;
        v56._object = 0xE100000000000000;
        v54 = ByteBuffer._setStringSlowpath(_:at:)(v56, v52);
      }

      v57 = v54;
      v58 = *(v2 + 20);
      v21 = __CFADD__(v58, v54);
      v59 = v58 + v54;
      if (v21)
      {
        goto LABEL_361;
      }

      *(v2 + 20) = v59;
      v60 = sub_10048AE40(v45);
      v44 = __OFADD__(v57, v60);
      v61 = v57 + v60;
      if (v44)
      {
LABEL_365:
        __break(1u);
        goto LABEL_366;
      }

      v52 = *(v2 + 20);
      v62 = sub_1002F178C(0x29uLL, 0xE100000000000000, v2 + 8, v52);
      if (v63)
      {
        v64._countAndFlagsBits = 41;
        v64._object = 0xE100000000000000;
        v62 = ByteBuffer._setStringSlowpath(_:at:)(v64, v52);
      }

      a1 = v62;
      sub_1000B37D8(v45);
      v65 = *(v2 + 20);
      v21 = __CFADD__(v65, a1);
      v66 = v65 + a1;
      if (v21)
      {
        goto LABEL_367;
      }

      *(v2 + 20) = v66;
      v2 = v61 + a1;
      if (!__OFADD__(v61, a1))
      {
        goto LABEL_224;
      }

      __break(1u);
LABEL_33:
      v68 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v67 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
      v69 = *(v2 + 20);

      v70 = sub_1002F178C(0x524F5759454B4E55uLL, 0xEA00000000002044, v2 + 8, v69);
      if (v71)
      {
        v72._countAndFlagsBits = 0x524F5759454B4E55;
        v72._object = 0xEA00000000002044;
        v70 = ByteBuffer._setStringSlowpath(_:at:)(v72, v69);
      }

      v73 = v70;
      v74 = *(v2 + 20);
      v75 = (v74 + v70);
      if (__CFADD__(v74, v70))
      {
        goto LABEL_330;
      }

      *(v2 + 20) = v75;
      v76 = sub_1002F178C(v68, v67, v2 + 8, v75);
      if (v77)
      {
        v78._countAndFlagsBits = v68;
        v78._object = v67;
        v76 = ByteBuffer._setStringSlowpath(_:at:)(v78, v75);
      }

      a1 = v76;

      v79 = *(v2 + 20);
      v21 = __CFADD__(v79, a1);
      v80 = v79 + a1;
      if (v21)
      {
        goto LABEL_351;
      }

      *(v2 + 20) = v80;
      result = v73 + a1;
      if (!__OFADD__(v73, a1))
      {
        return result;
      }

      __break(1u);
LABEL_42:
      v81 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v82 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
      v83 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
      v84 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x24);
      v85 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x26);
      v86 = *(v2 + 20);

      v87 = sub_1002F178C(0x204D4F5246uLL, 0xE500000000000000, v2 + 8, v86);
      if (v88)
      {
        v89._countAndFlagsBits = 0x204D4F5246;
        v89._object = 0xE500000000000000;
        v87 = ByteBuffer._setStringSlowpath(_:at:)(v89, v86);
      }

      v90 = v87;
      v91 = *(v2 + 20);
      v21 = __CFADD__(v91, v87);
      v92 = v91 + v87;
      if (v21)
      {
        goto LABEL_331;
      }

      *(v2 + 20) = v92;
      a1 = v2;
      v2 = sub_1003B1E70(v81, v82, v83 | (v84 << 32) | (v85 << 48));

      result = v90 + v2;
      if (!__OFADD__(v90, v2))
      {
        return result;
      }

      __break(1u);
LABEL_48:
      v93 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v94 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
      v95 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
      v448 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x28);
      v449 = v95;
      v447 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x30);
      v96 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x34);
      v97 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x36);
      v98 = *(v2 + 20);
      v99 = sub_1002F178C(0x20524544414548uLL, 0xE700000000000000, v2 + 8, v98);
      if (v100)
      {
        v101._countAndFlagsBits = 0x20524544414548;
        v101._object = 0xE700000000000000;
        v99 = ByteBuffer._setStringSlowpath(_:at:)(v101, v98);
      }

      v102 = v99;
      v103 = *(v2 + 20);
      v21 = __CFADD__(v103, v99);
      v104 = v103 + v99;
      if (v21)
      {
        goto LABEL_332;
      }

      *(v2 + 20) = v104;
      sub_100441B60(v93, v94);
      v106 = v102 + v105;
      if (__OFADD__(v102, v105))
      {
        goto LABEL_352;
      }

      v107 = *(v2 + 20);
      v108 = sub_1002F178C(0x20uLL, 0xE100000000000000, v2 + 8, v107);
      if (v109)
      {
        v110._countAndFlagsBits = 32;
        v110._object = 0xE100000000000000;
        v108 = ByteBuffer._setStringSlowpath(_:at:)(v110, v107);
      }

      v111 = *(v2 + 20);
      v21 = __CFADD__(v111, v108);
      v112 = v111 + v108;
      if (v21)
      {
        goto LABEL_356;
      }

      *(v2 + 20) = v112;
      v113 = v106 + v108;
      if (__OFADD__(v106, v108))
      {
LABEL_358:
        __break(1u);
LABEL_359:
        __break(1u);
        goto LABEL_360;
      }

      a1 = v2;
      v114 = sub_1003B1E70(v449, v448, v447 | (v96 << 32) | (v97 << 48));
      v44 = __OFADD__(v113, v114);
      result = v113 + v114;
      if (!v44)
      {
        return result;
      }

      __break(1u);
LABEL_59:
      v115 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v116 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
      v117 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
      v118 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x24);
      v119 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x26);
      v120 = *(v2 + 20);

      v121 = sub_1002F178C(0x2054584554uLL, 0xE500000000000000, v2 + 8, v120);
      if (v122)
      {
        v123._countAndFlagsBits = 0x2054584554;
        v123._object = 0xE500000000000000;
        v121 = ByteBuffer._setStringSlowpath(_:at:)(v123, v120);
      }

      v124 = v121;
      v125 = *(v2 + 20);
      v21 = __CFADD__(v125, v121);
      v126 = v125 + v121;
      if (v21)
      {
        goto LABEL_333;
      }

      *(v2 + 20) = v126;
      a1 = v2;
      v2 = sub_1003B1E70(v115, v116, v117 | (v118 << 32) | (v119 << 48));

      result = v124 + v2;
      if (!__OFADD__(v124, v2))
      {
        return result;
      }

      __break(1u);
LABEL_65:
      v127 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v451 = 0x205245444C4FLL;
      v452 = 0xE600000000000000;
      v450 = v127;
      v454._countAndFlagsBits = sub_1004A6CE4();
      sub_1004A5994(v454);

      v129 = v451;
      v128 = v452;
      v130 = *(v2 + 20);
      v131 = sub_1002F178C(v451, v452, v2 + 8, v130);
      if (v132)
      {
        v133._countAndFlagsBits = v129;
        v133._object = v128;
        v131 = ByteBuffer._setStringSlowpath(_:at:)(v133, v130);
      }

      a1 = v131;

      v134 = *(v2 + 20);
      result = a1;
      v21 = __CFADD__(v134, a1);
      v33 = v134 + a1;
      if (!v21)
      {
        goto LABEL_259;
      }

      __break(1u);
LABEL_70:
      v135 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v136 = *(v135 + 16);
      if (!v136)
      {
        goto LABEL_256;
      }

      if (v136 != 1)
      {
        swift_bridgeObjectRetain_n();
        v405 = sub_100488A58(0, v135, v2, v135);

        return v405;
      }

      v137 = *(v135 + 32);
      sub_1000B3664(v137);
      sub_10048ACF8(v137);
      if (v138 < 2)
      {
        v406 = sub_10048AE40(v137);
        sub_1000B37D8(v137);
        return v406;
      }

      v139 = *(v2 + 20);
      v140 = sub_1002F178C(0x28uLL, 0xE100000000000000, v2 + 8, v139);
      if (v141)
      {
        v142._countAndFlagsBits = 40;
        v142._object = 0xE100000000000000;
        v140 = ByteBuffer._setStringSlowpath(_:at:)(v142, v139);
      }

      v143 = v140;
      v144 = *(v2 + 20);
      v21 = __CFADD__(v144, v140);
      v145 = v144 + v140;
      if (v21)
      {
        goto LABEL_373;
      }

      *(v2 + 20) = v145;
      v146 = sub_10048AE40(v137);
      v44 = __OFADD__(v143, v146);
      v147 = v143 + v146;
      if (v44)
      {
LABEL_374:
        __break(1u);
        goto LABEL_375;
      }

      v148 = *(v2 + 20);
      v149 = sub_1002F178C(0x29uLL, 0xE100000000000000, v2 + 8, v148);
      if (v150)
      {
        v151._countAndFlagsBits = 41;
        v151._object = 0xE100000000000000;
        v149 = ByteBuffer._setStringSlowpath(_:at:)(v151, v148);
      }

      a1 = v149;
      sub_1000B37D8(v137);
      v152 = *(v2 + 20);
      v21 = __CFADD__(v152, a1);
      v153 = v152 + a1;
      if (v21)
      {
LABEL_375:
        __break(1u);
        JUMPOUT(0x10048CBA0);
      }

      *(v2 + 20) = v153;
      result = v147 + a1;
      if (!__OFADD__(v147, a1))
      {
        return result;
      }

      __break(1u);
LABEL_83:
      v154 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v155 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
      v156 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
      v157 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x24);
      v158 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x26);
      v159 = *(v2 + 20);

      v160 = sub_1002F178C(0x2059444F42uLL, 0xE500000000000000, v2 + 8, v159);
      if (v161)
      {
        v162._countAndFlagsBits = 0x2059444F42;
        v162._object = 0xE500000000000000;
        v160 = ByteBuffer._setStringSlowpath(_:at:)(v162, v159);
      }

      v163 = v160;
      v164 = *(v2 + 20);
      v21 = __CFADD__(v164, v160);
      v165 = v164 + v160;
      if (v21)
      {
        goto LABEL_334;
      }

      *(v2 + 20) = v165;
      a1 = v2;
      v2 = sub_1003B1E70(v154, v155, v156 | (v157 << 32) | (v158 << 48));

      result = v163 + v2;
      if (!__OFADD__(v163, v2))
      {
        return result;
      }

      __break(1u);
LABEL_89:
      v52 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v45 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
      v166 = *(v2 + 20);
      v167 = sub_1002F178C(0x20524FuLL, 0xE300000000000000, v2 + 8, v166);
      if (v168)
      {
        v169._countAndFlagsBits = 2118223;
        v169._object = 0xE300000000000000;
        v167 = ByteBuffer._setStringSlowpath(_:at:)(v169, v166);
      }

      v50 = v167;
      v170 = *(v2 + 20);
      v171 = (v170 + v167);
      if (__CFADD__(v170, v167))
      {
        goto LABEL_335;
      }

      *(v2 + 20) = v171;
      sub_10048ACF8(v52);
      if (v172 < 2)
      {
LABEL_227:
        v187 = sub_10048AE40(v52);
        goto LABEL_228;
      }

      v173 = sub_1002F178C(0x28uLL, 0xE100000000000000, v2 + 8, v171);
      if (v174)
      {
        v175._countAndFlagsBits = 40;
        v175._object = 0xE100000000000000;
        v173 = ByteBuffer._setStringSlowpath(_:at:)(v175, v171);
      }

      v176 = v173;
      v177 = *(v2 + 20);
      v21 = __CFADD__(v177, v173);
      v178 = v177 + v173;
      if (v21)
      {
        goto LABEL_362;
      }

      *(v2 + 20) = v178;
      a1 = v2;
      v179 = sub_10048AE40(v52);
      v180 = v176 + v179;
      if (__OFADD__(v176, v179))
      {
LABEL_366:
        __break(1u);
LABEL_367:
        __break(1u);
LABEL_368:
        __break(1u);
LABEL_369:
        __break(1u);
        goto LABEL_370;
      }

      v181 = *(v2 + 20);
      v182 = sub_1002F178C(0x29uLL, 0xE100000000000000, v2 + 8, v181);
      if (v183)
      {
        a1 = v2 + 8;
        v184._countAndFlagsBits = 41;
        v184._object = 0xE100000000000000;
        v182 = ByteBuffer._setStringSlowpath(_:at:)(v184, v181);
      }

      v185 = *(v2 + 20);
      v21 = __CFADD__(v185, v182);
      v186 = v185 + v182;
      if (v21)
      {
        goto LABEL_368;
      }

      *(v2 + 20) = v186;
      v44 = __OFADD__(v180, v182);
      v187 = v180 + v182;
      if (v44)
      {
        __break(1u);
LABEL_103:
        v188 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        v189 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
        v190 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
        v191 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x24);
        v192 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x26);
        v193 = *(v2 + 20);

        v194 = sub_1002F178C(0x204343uLL, 0xE300000000000000, v2 + 8, v193);
        if (v195)
        {
          v196._countAndFlagsBits = 2114371;
          v196._object = 0xE300000000000000;
          v194 = ByteBuffer._setStringSlowpath(_:at:)(v196, v193);
        }

        v197 = v194;
        v198 = *(v2 + 20);
        v21 = __CFADD__(v198, v194);
        v199 = v198 + v194;
        if (!v21)
        {
          *(v2 + 20) = v199;
          a1 = v2;
          v2 = sub_1003B1E70(v188, v189, v190 | (v191 << 32) | (v192 << 48));

          result = v197 + v2;
          if (!__OFADD__(v197, v2))
          {
            return result;
          }

          __break(1u);
LABEL_109:
          v200 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
          v201 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
          v202 = *(v2 + 20);
          v203 = sub_1002F178C(0x2045434E4953uLL, 0xE600000000000000, v2 + 8, v202);
          if (v204)
          {
            v205._countAndFlagsBits = 0x2045434E4953;
            v205._object = 0xE600000000000000;
            v203 = ByteBuffer._setStringSlowpath(_:at:)(v205, v202);
          }

          v206 = v203;
          v207 = *(v2 + 20);
          v21 = __CFADD__(v207, v203);
          v208 = v207 + v203;
          if (v21)
          {
            goto LABEL_337;
          }

          *(v2 + 20) = v208;
          a1 = v2;
          v209 = sub_10043132C(v200, v201);
          v44 = __OFADD__(v206, v209);
          result = v206 + v209;
          if (!v44)
          {
            return result;
          }

          __break(1u);
LABEL_115:
          v210 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
          v211 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
          v212 = *(v2 + 20);
          v213 = sub_1002F178C(0x2045524F464542uLL, 0xE700000000000000, v2 + 8, v212);
          if (v214)
          {
            v215._countAndFlagsBits = 0x2045524F464542;
            v215._object = 0xE700000000000000;
            v213 = ByteBuffer._setStringSlowpath(_:at:)(v215, v212);
          }

          v216 = v213;
          v217 = *(v2 + 20);
          v21 = __CFADD__(v217, v213);
          v218 = v217 + v213;
          if (v21)
          {
            goto LABEL_339;
          }

          *(v2 + 20) = v218;
          a1 = v2;
          v219 = sub_10043132C(v210, v211);
          v44 = __OFADD__(v216, v219);
          result = v216 + v219;
          if (!v44)
          {
            return result;
          }

          __break(1u);
LABEL_121:
          v220 = *(v2 + 20);
          switch(__ROR8__(a1 + 0xFFFFFFFFFFFFFFCLL, 3))
          {
            case 1:
              goto LABEL_298;
            case 2:
              goto LABEL_283;
            case 3:
              goto LABEL_288;
            case 4:
              goto LABEL_268;
            case 5:
              goto LABEL_303;
            case 6:
              goto LABEL_313;
            case 7:
              goto LABEL_293;
            case 8:
              goto LABEL_323;
            case 9:
              goto LABEL_278;
            case 0xALL:
              goto LABEL_318;
            case 0xBLL:
              result = sub_1002F178C(0x4E4545534E55uLL, 0xE600000000000000, v2 + 8, *(v2 + 20));
              if (v407)
              {
                v408._countAndFlagsBits = 0x4E4545534E55;
                v408._object = 0xE600000000000000;
                result = ByteBuffer._setStringSlowpath(_:at:)(v408, v220);
              }

              v409 = *(v2 + 20);
              v21 = __CFADD__(v409, result);
              v33 = v409 + result;
              if (!v21)
              {
                goto LABEL_259;
              }

              __break(1u);
LABEL_268:
              result = sub_1002F178C(0x57454EuLL, 0xE300000000000000, v2 + 8, v220);
              if (v410)
              {
                v411._countAndFlagsBits = 5719374;
                v411._object = 0xE300000000000000;
                result = ByteBuffer._setStringSlowpath(_:at:)(v411, v220);
              }

              v412 = *(v2 + 20);
              v21 = __CFADD__(v412, result);
              v33 = v412 + result;
              if (!v21)
              {
                goto LABEL_259;
              }

              __break(1u);
LABEL_273:
              result = sub_1002F178C(0x5446415244uLL, 0xE500000000000000, v2 + 8, v220);
              if (v413)
              {
                v414._countAndFlagsBits = 0x5446415244;
                v414._object = 0xE500000000000000;
                result = ByteBuffer._setStringSlowpath(_:at:)(v414, v220);
              }

              v415 = *(v2 + 20);
              v21 = __CFADD__(v415, result);
              v33 = v415 + result;
              if (!v21)
              {
                goto LABEL_259;
              }

              __break(1u);
LABEL_278:
              result = sub_1002F178C(0x4554454C45444E55uLL, 0xE900000000000044, v2 + 8, v220);
              if (v416)
              {
                v417._object = 0xE900000000000044;
                v417._countAndFlagsBits = 0x4554454C45444E55;
                result = ByteBuffer._setStringSlowpath(_:at:)(v417, v220);
              }

              v418 = *(v2 + 20);
              v21 = __CFADD__(v418, result);
              v33 = v418 + result;
              if (!v21)
              {
                goto LABEL_259;
              }

              __break(1u);
LABEL_283:
              result = sub_1002F178C(0x444554454C4544uLL, 0xE700000000000000, v2 + 8, v220);
              if (v419)
              {
                v420._countAndFlagsBits = 0x444554454C4544;
                v420._object = 0xE700000000000000;
                result = ByteBuffer._setStringSlowpath(_:at:)(v420, v220);
              }

              v421 = *(v2 + 20);
              v21 = __CFADD__(v421, result);
              v33 = v421 + result;
              if (!v21)
              {
                goto LABEL_259;
              }

              __break(1u);
LABEL_288:
              result = sub_1002F178C(0x44454747414C46uLL, 0xE700000000000000, v2 + 8, v220);
              if (v422)
              {
                v423._countAndFlagsBits = 0x44454747414C46;
                v423._object = 0xE700000000000000;
                result = ByteBuffer._setStringSlowpath(_:at:)(v423, v220);
              }

              v424 = *(v2 + 20);
              v21 = __CFADD__(v424, result);
              v33 = v424 + result;
              if (!v21)
              {
                goto LABEL_259;
              }

              __break(1u);
LABEL_293:
              result = sub_1002F178C(0x4E454553uLL, 0xE400000000000000, v2 + 8, v220);
              if (v425)
              {
                v426._countAndFlagsBits = 1313162579;
                v426._object = 0xE400000000000000;
                result = ByteBuffer._setStringSlowpath(_:at:)(v426, v220);
              }

              v427 = *(v2 + 20);
              v21 = __CFADD__(v427, result);
              v33 = v427 + result;
              if (!v21)
              {
                goto LABEL_259;
              }

              __break(1u);
LABEL_298:
              result = sub_1002F178C(0x4445524557534E41uLL, 0xE800000000000000, v2 + 8, v220);
              if (v428)
              {
                v429._countAndFlagsBits = 0x4445524557534E41;
                v429._object = 0xE800000000000000;
                result = ByteBuffer._setStringSlowpath(_:at:)(v429, v220);
              }

              v430 = *(v2 + 20);
              v21 = __CFADD__(v430, result);
              v33 = v430 + result;
              if (!v21)
              {
                goto LABEL_259;
              }

              __break(1u);
LABEL_303:
              result = sub_1002F178C(0x444C4FuLL, 0xE300000000000000, v2 + 8, v220);
              if (v431)
              {
                v432._countAndFlagsBits = 4475983;
                v432._object = 0xE300000000000000;
                result = ByteBuffer._setStringSlowpath(_:at:)(v432, v220);
              }

              v433 = *(v2 + 20);
              v21 = __CFADD__(v433, result);
              v33 = v433 + result;
              if (!v21)
              {
                goto LABEL_259;
              }

              __break(1u);
LABEL_308:
              result = sub_1002F178C(0x54464152444E55uLL, 0xE700000000000000, v2 + 8, v220);
              if (v434)
              {
                v435._countAndFlagsBits = 0x54464152444E55;
                v435._object = 0xE700000000000000;
                result = ByteBuffer._setStringSlowpath(_:at:)(v435, v220);
              }

              v436 = *(v2 + 20);
              v21 = __CFADD__(v436, result);
              v33 = v436 + result;
              if (!v21)
              {
                goto LABEL_259;
              }

              __break(1u);
LABEL_313:
              result = sub_1002F178C(0x544E45434552uLL, 0xE600000000000000, v2 + 8, v220);
              if (v437)
              {
                v438._countAndFlagsBits = 0x544E45434552;
                v438._object = 0xE600000000000000;
                result = ByteBuffer._setStringSlowpath(_:at:)(v438, v220);
              }

              v439 = *(v2 + 20);
              v21 = __CFADD__(v439, result);
              v33 = v439 + result;
              if (!v21)
              {
                goto LABEL_259;
              }

              __break(1u);
LABEL_318:
              result = sub_1002F178C(0x454747414C464E55uLL, 0xE900000000000044, v2 + 8, v220);
              if (v440)
              {
                v441._object = 0xE900000000000044;
                v441._countAndFlagsBits = 0x454747414C464E55;
                result = ByteBuffer._setStringSlowpath(_:at:)(v441, v220);
              }

              v442 = *(v2 + 20);
              v21 = __CFADD__(v442, result);
              v33 = v442 + result;
              if (!v21)
              {
                goto LABEL_259;
              }

              __break(1u);
LABEL_323:
              result = sub_1002F178C(0x524557534E414E55uLL, 0xEA00000000004445, v2 + 8, v220);
              if (v443)
              {
                v444._countAndFlagsBits = 0x524557534E414E55;
                v444._object = 0xEA00000000004445;
                result = ByteBuffer._setStringSlowpath(_:at:)(v444, v220);
              }

              v445 = *(v2 + 20);
              v21 = __CFADD__(v445, result);
              v33 = v445 + result;
              if (!v21)
              {
                goto LABEL_259;
              }

              __break(1u);
              break;
            case 0xCLL:
              goto LABEL_273;
            case 0xDLL:
              goto LABEL_308;
            default:
              result = sub_1002F178C(0x4C4C41uLL, 0xE300000000000000, v2 + 8, *(v2 + 20));
              if (v221)
              {
                a1 = v2 + 8;
                v222._countAndFlagsBits = 5000257;
                v222._object = 0xE300000000000000;
                result = ByteBuffer._setStringSlowpath(_:at:)(v222, v220);
              }

              v223 = *(v2 + 20);
              v21 = __CFADD__(v223, result);
              v33 = v223 + result;
              if (!v21)
              {
                goto LABEL_259;
              }

              __break(1u);
              goto LABEL_127;
          }

LABEL_328:
          __break(1u);
LABEL_329:
          __break(1u);
LABEL_330:
          __break(1u);
LABEL_331:
          __break(1u);
LABEL_332:
          __break(1u);
LABEL_333:
          __break(1u);
LABEL_334:
          __break(1u);
LABEL_335:
          __break(1u);
        }

        __break(1u);
LABEL_337:
        __break(1u);
LABEL_338:
        __break(1u);
LABEL_339:
        __break(1u);
LABEL_340:
        __break(1u);
LABEL_341:
        __break(1u);
LABEL_342:
        __break(1u);
LABEL_343:
        __break(1u);
LABEL_344:
        __break(1u);
LABEL_345:
        __break(1u);
LABEL_346:
        __break(1u);
LABEL_347:
        __break(1u);
LABEL_348:
        __break(1u);
LABEL_349:
        __break(1u);
LABEL_350:
        __break(1u);
LABEL_351:
        __break(1u);
LABEL_352:
        __break(1u);
LABEL_353:
        __break(1u);
LABEL_354:
        __break(1u);
LABEL_355:
        __break(1u);
LABEL_356:
        __break(1u);
        goto LABEL_357;
      }

LABEL_228:
      v380 = v50 + v187;
      if (__OFADD__(v50, v187))
      {
LABEL_357:
        __break(1u);
        goto LABEL_358;
      }

      v381 = *(v2 + 20);
      v382 = sub_1002F178C(0x20uLL, 0xE100000000000000, v2 + 8, v381);
      if (v383)
      {
        v384._countAndFlagsBits = 32;
        v384._object = 0xE100000000000000;
        v382 = ByteBuffer._setStringSlowpath(_:at:)(v384, v381);
      }

      v385 = *(v2 + 20);
      v386 = (v385 + v382);
      if (__CFADD__(v385, v382))
      {
        goto LABEL_359;
      }

      *(v2 + 20) = v386;
      v257 = v380 + v382;
      if (__OFADD__(v380, v382))
      {
LABEL_360:
        __break(1u);
LABEL_361:
        __break(1u);
LABEL_362:
        __break(1u);
LABEL_363:
        __break(1u);
LABEL_364:
        __break(1u);
        goto LABEL_365;
      }

      sub_10048ACF8(v45);
      if (v387 < 2)
      {
LABEL_252:
        v400 = sub_10048AE40(v45);
LABEL_253:
        v44 = __OFADD__(v257, v400);
        result = v257 + v400;
        if (!v44)
        {
          return result;
        }

        __break(1u);
LABEL_256:
        v401 = *(v2 + 20);
        result = sub_1002F178C(0x2928uLL, 0xE200000000000000, v2 + 8, v401);
        if (v402)
        {
          v403._countAndFlagsBits = 10536;
          v403._object = 0xE200000000000000;
          result = ByteBuffer._setStringSlowpath(_:at:)(v403, v401);
        }

        v404 = *(v2 + 20);
        v21 = __CFADD__(v404, result);
        v33 = v404 + result;
        if (!v21)
        {
LABEL_259:
          *(v2 + 20) = v33;
          return result;
        }

        goto LABEL_372;
      }

      v388 = sub_1002F178C(0x28uLL, 0xE100000000000000, v2 + 8, v386);
      if (v389)
      {
        v390._countAndFlagsBits = 40;
        v390._object = 0xE100000000000000;
        v388 = ByteBuffer._setStringSlowpath(_:at:)(v390, v386);
      }

      v391 = v388;
      v392 = *(v2 + 20);
      v21 = __CFADD__(v392, v388);
      v393 = v392 + v388;
      if (v21)
      {
        goto LABEL_369;
      }

      *(v2 + 20) = v393;
      v394 = sub_10048AE40(v45);
      v255 = v391 + v394;
      if (__OFADD__(v391, v394))
      {
LABEL_370:
        __break(1u);
LABEL_371:
        __break(1u);
LABEL_372:
        __break(1u);
LABEL_373:
        __break(1u);
        goto LABEL_374;
      }

      v45 = *(v2 + 20);
      v395 = sub_1002F178C(0x29uLL, 0xE100000000000000, v2 + 8, v45);
      if (v396)
      {
        v397._countAndFlagsBits = 41;
        v397._object = 0xE100000000000000;
        v395 = ByteBuffer._setStringSlowpath(_:at:)(v397, v45);
      }

      v398 = *(v2 + 20);
      v21 = __CFADD__(v398, v395);
      v399 = v398 + v395;
      if (v21)
      {
        goto LABEL_371;
      }

      *(v2 + 20) = v399;
      v44 = __OFADD__(v255, v395);
      v400 = v255 + v395;
      if (!v44)
      {
        goto LABEL_253;
      }

      __break(1u);
LABEL_244:
      v263 = sub_1004A095C(v255);
LABEL_245:
      v44 = __OFADD__(v45, v263);
      result = v45 + v263;
      if (v44)
      {
        __break(1u);
LABEL_248:
        v340 = sub_1004A095C(v255);
LABEL_249:
        v44 = __OFADD__(v45, v340);
        result = v45 + v340;
        if (v44)
        {
          __break(1u);
          goto LABEL_252;
        }
      }

      return result;
  }
}

unint64_t sub_10048CC5C()
{
  result = qword_1005DD7B8;
  if (!qword_1005DD7B8)
  {
    result = swift_getWitnessTable("Ѯ\a", &type metadata for SearchKey, v0, v1);
    atomic_store(result, &qword_1005DD7B8);
  }

  return result;
}

uint64_t sub_10048CCB0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x61 && *(a1 + 8))
  {
    return (*a1 + 97);
  }

  v3 = ((((*a1 >> 57) & 0x78 | *a1 & 7) >> 2) & 0xFFFFFF9F | (32 * (*a1 & 3))) ^ 0x7F;
  if (v3 >= 0x60)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_10048CD0C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x60)
  {
    *result = a2 - 97;
    if (a3 >= 0x61)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x61)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 5) & 3 | (4 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

unint64_t *sub_10048CD5C(unint64_t *result, uint64_t a2)
{
  if (a2 < 0x1F)
  {
    *result = ((a2 << 59) | (4 * a2)) & 0xF000000000000007 | *result & 0xFFFFFFFFFFFFFF8;
  }

  else
  {
    *result = (8 * (a2 - 31)) | 0xF000000000000004;
  }

  return result;
}

uint64_t sub_10048CDAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = 0;
  v8 = *(a2 + 16);
  v35 = a2 + 32;
  v34 = v8;
  while (1)
  {
    if (v8 == v7)
    {
      return a1;
    }

    v11 = *(v35 + 8 * v7);
    sub_1000B3664(v11);
    sub_10048ACF8(v11);
    if (v12 < 2)
    {
      result = sub_10048AE40(v11);
    }

    else
    {
      v13 = a4;
      v14 = *(a3 + 20);
      result = sub_1002F178C(0x28uLL, 0xE100000000000000, a3 + 8, v14);
      if (v15)
      {
        v16._countAndFlagsBits = 40;
        v16._object = 0xE100000000000000;
        result = ByteBuffer._setStringSlowpath(_:at:)(v16, v14);
      }

      v17 = result;
      v18 = *(a3 + 20);
      v19 = __CFADD__(v18, result);
      v20 = v18 + result;
      if (v19)
      {
        goto LABEL_25;
      }

      *(a3 + 20) = v20;
      result = sub_10048AE40(v11);
      v21 = v17 + result;
      if (__OFADD__(v17, result))
      {
        goto LABEL_26;
      }

      v22 = *(a3 + 20);
      result = sub_1002F178C(0x29uLL, 0xE100000000000000, a3 + 8, v22);
      if (v23)
      {
        v24._countAndFlagsBits = 41;
        v24._object = 0xE100000000000000;
        result = ByteBuffer._setStringSlowpath(_:at:)(v24, v22);
      }

      v25 = *(a3 + 20);
      v19 = __CFADD__(v25, result);
      v26 = v25 + result;
      if (v19)
      {
        goto LABEL_27;
      }

      *(a3 + 20) = v26;
      v27 = __OFADD__(v21, result);
      result += v21;
      if (v27)
      {
        goto LABEL_29;
      }

      a4 = v13;
      v8 = v34;
    }

    v28 = a1 + result;
    if (__OFADD__(a1, result))
    {
      break;
    }

    if (v7 >= *(a4 + 16) - 1)
    {
      v9 = 0;
    }

    else
    {
      v29 = *(a3 + 20);
      result = sub_1002F178C(0x20uLL, 0xE100000000000000, a3 + 8, v29);
      if (v30)
      {
        v31._countAndFlagsBits = 32;
        v31._object = 0xE100000000000000;
        result = ByteBuffer._setStringSlowpath(_:at:)(v31, v29);
      }

      v9 = result;
      v32 = *(a3 + 20);
      v19 = __CFADD__(v32, result);
      v33 = v32 + result;
      if (v19)
      {
        goto LABEL_28;
      }

      *(a3 + 20) = v33;
    }

    result = sub_1000B37D8(v11);
    ++v7;
    a1 = v28 + v9;
    if (__OFADD__(v28, v9))
    {
      goto LABEL_24;
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
  return result;
}

uint64_t static SearchModificationSequence.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((sub_10020FB40(a2, a6) & 1) == 0)
  {
    return 0;
  }

  result = sub_1003A3714(a3, a7);
  if ((result & 1) == 0)
  {
    return 0;
  }

  if (((a8 | a4) & 0x8000000000000000) == 0)
  {
    return a8 == a4;
  }

  __break(1u);
  return result;
}

uint64_t sub_10048D020(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = *(v3 + 20);
  result = sub_1002F178C(0x514553444F4DuLL, 0xE600000000000000, v3 + 8, v6);
  if (v8)
  {
    v9._countAndFlagsBits = 0x514553444F4DLL;
    v9._object = 0xE600000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v9, v6);
  }

  v10 = *(v3 + 20);
  v11 = (v10 + result);
  if (__CFADD__(v10, result))
  {
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
    goto LABEL_66;
  }

  *(v3 + 20) = v11;
  v69 = *(a3 + 16);
  v66 = result;
  if (v69)
  {
    result = sub_1002F178C(0, 0xE000000000000000, v3 + 8, v11);
    if (v12)
    {
      v13._countAndFlagsBits = 0;
      v13._object = 0xE000000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v13, v11);
    }

    v14 = *(v3 + 20);
    LODWORD(v11) = v14 + result;
    if (__CFADD__(v14, result))
    {
LABEL_68:
      __break(1u);
LABEL_69:
      __break(1u);
      return result;
    }

    v67 = result;
    *(v3 + 20) = v11;
  }

  else
  {
    v67 = 0;
  }

  v15 = 0;
  v16 = 0;
  v17 = 0;
  v68 = a2;
  while (v69 != v16)
  {
    if (v16 >= *(a2 + 16))
    {
      goto LABEL_51;
    }

    v20 = a2 + v15;
    v21 = *(a2 + v15 + 32);
    v23 = *(a3 + v15 + 32);
    v22 = *(a3 + v15 + 40);
    v71 = *(v20 + 40);

    result = sub_1002F178C(0x20uLL, 0xE100000000000000, v4 + 8, v11);
    if (v24)
    {
      v25._countAndFlagsBits = 32;
      v25._object = 0xE100000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v25, v11);
    }

    v26 = result;
    v27 = *(v4 + 20);
    v28 = __CFADD__(v27, result);
    v29 = v27 + result;
    if (v28)
    {
      goto LABEL_52;
    }

    *(v4 + 20) = v29;
    result = sub_1003E669C(v21, v71);
    v19 = __OFADD__(v26, result);
    v30 = v26 + result;
    if (v19)
    {
      goto LABEL_53;
    }

    v31 = *(v4 + 20);
    result = sub_1002F178C(0x20uLL, 0xE100000000000000, v4 + 8, v31);
    if (v32)
    {
      v33._countAndFlagsBits = 32;
      v33._object = 0xE100000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v33, v31);
    }

    a2 = v68;
    v34 = *(v4 + 20);
    v35 = (v34 + result);
    if (__CFADD__(v34, result))
    {
      goto LABEL_54;
    }

    *(v4 + 20) = v35;
    v19 = __OFADD__(v30, result);
    v36 = v30 + result;
    if (v19)
    {
      goto LABEL_55;
    }

    result = sub_1002F178C(v23, v22, v4 + 8, v35);
    if (v37)
    {
      v38._countAndFlagsBits = v23;
      v38._object = v22;
      result = ByteBuffer._setStringSlowpath(_:at:)(v38, v35);
    }

    v39 = *(v4 + 20);
    v11 = (v39 + result);
    if (__CFADD__(v39, result))
    {
      goto LABEL_56;
    }

    *(v4 + 20) = v11;
    v40 = v36 + result;
    if (__OFADD__(v36, result))
    {
      goto LABEL_57;
    }

    v41 = v17 + v40;
    if (__OFADD__(v17, v40))
    {
      goto LABEL_58;
    }

    if (v16 >= v69 - 1)
    {

      v18 = 0;
    }

    else
    {
      v42 = sub_1002F178C(0, 0xE000000000000000, v4 + 8, v11);
      if (v43)
      {
        v44._countAndFlagsBits = 0;
        v44._object = 0xE000000000000000;
        v42 = ByteBuffer._setStringSlowpath(_:at:)(v44, v11);
      }

      v18 = v42;

      v45 = *(v4 + 20);
      LODWORD(v11) = v45 + v18;
      if (__CFADD__(v45, v18))
      {
        goto LABEL_60;
      }

      *(v4 + 20) = v11;
    }

    v15 += 16;
    ++v16;
    v19 = __OFADD__(v41, v18);
    v17 = v41 + v18;
    if (v19)
    {
      goto LABEL_59;
    }
  }

  v46 = v67 + v17;
  if (__OFADD__(v67, v17))
  {
    goto LABEL_62;
  }

  if (v69)
  {
    result = sub_1002F178C(0, 0xE000000000000000, v4 + 8, v11);
    if (v47)
    {
      v48._countAndFlagsBits = 0;
      v48._object = 0xE000000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v48, v11);
    }

    v49 = *(v4 + 20);
    LODWORD(v11) = v49 + result;
    if (__CFADD__(v49, result))
    {
      goto LABEL_69;
    }

    *(v4 + 20) = v11;
    v50 = v46 + result;
    if (__OFADD__(v46, result))
    {
      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      __break(1u);
      goto LABEL_61;
    }
  }

  else
  {
    result = 0;
    v50 = v67 + v17;
  }

  v51 = v66 + v50;
  if (__OFADD__(v66, v50))
  {
    goto LABEL_63;
  }

  result = sub_1002F178C(0x20uLL, 0xE100000000000000, v4 + 8, v11);
  if (v52)
  {
    v53._countAndFlagsBits = 32;
    v53._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v53, v11);
  }

  v54 = *(v4 + 20);
  v55 = (v54 + result);
  if (__CFADD__(v54, result))
  {
    goto LABEL_64;
  }

  *(v4 + 20) = v55;
  v56 = v51 + result;
  if (__OFADD__(v51, result))
  {
    goto LABEL_65;
  }

  v57 = sub_1004A6CE4();
  v59 = v58;
  v60 = sub_1002F178C(v57, v58, v4 + 8, v55);
  if (v61)
  {
    v62._countAndFlagsBits = v57;
    v62._object = v59;
    v60 = ByteBuffer._setStringSlowpath(_:at:)(v62, v55);
  }

  v63 = v60;

  v64 = *(v4 + 20);
  v28 = __CFADD__(v64, v63);
  v65 = v64 + v63;
  if (v28)
  {
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  *(v4 + 20) = v65;
  result = v56 + v63;
  if (__OFADD__(v56, v63))
  {
    goto LABEL_67;
  }

  return result;
}

Swift::Int SearchModificationSequence.hashValue.getter(uint64_t a1, uint64_t a2, uint64_t a3, Swift::UInt64 a4)
{
  sub_1004A6E94();
  sub_1003A1770(v8, a2, a3);
  sub_1004A6EF4(a4);
  return sub_1004A6F14();
}

Swift::Int sub_10048D548()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = v0[3];
  sub_1004A6E94();
  sub_1003A1770(v5, v1, v2);
  sub_1004A6EF4(v3);
  return sub_1004A6F14();
}

void sub_10048D5AC(uint64_t a1)
{
  v2 = v1[1];
  v3 = v1[2];
  v4 = v1[3];
  sub_1003A1770(a1, v2, v3);
  sub_1004A6EF4(v4);
}

Swift::Int sub_10048D5E4(uint64_t a1)
{
  v2 = v1[1];
  v3 = v1[2];
  v4 = v1[3];
  sub_1004A6E94();
  sub_1003A1770(v6, v2, v3);
  sub_1004A6EF4(v4);
  return sub_1004A6F14();
}

uint64_t sub_10048D644(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  if ((sub_10020FB40(a1[1], a2[1]) & 1) == 0)
  {
    return 0;
  }

  result = sub_1003A3714(v2, v4);
  if ((result & 1) == 0)
  {
    return 0;
  }

  if (((v5 | v3) & 0x8000000000000000) == 0)
  {
    return v5 == v3;
  }

  __break(1u);
  return result;
}

unint64_t sub_10048D6B8()
{
  result = qword_1005DD7D0;
  if (!qword_1005DD7D0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SearchModificationSequence, &type metadata for SearchModificationSequence, v0, v1);
    atomic_store(result, &qword_1005DD7D0);
  }

  return result;
}

uint64_t sub_10048D71C(unint64_t a1, char a2, uint64_t (*a3)(unint64_t))
{
  v5 = a1;
  v6 = HIDWORD(a1);
  if (a2)
  {
    v7 = a1;
  }

  else
  {
    v7 = HIDWORD(a1);
  }

  if (a2)
  {
    a1 = HIDWORD(a1);
  }

  else
  {
    a1 = a1;
  }

  v8 = a3(a1);
  v9 = 0;
  if (v5 < v6)
  {
    v10 = *(v3 + 20);
    result = sub_1002F178C(0x3AuLL, 0xE100000000000000, v3 + 8, v10);
    if (v12)
    {
      v13._countAndFlagsBits = 58;
      v13._object = 0xE100000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v13, v10);
    }

    v14 = result;
    v15 = *(v3 + 20);
    v16 = __CFADD__(v15, result);
    v17 = v15 + result;
    if (v16)
    {
      goto LABEL_15;
    }

    *(v3 + 20) = v17;
    result = a3(v7);
    v9 = v14 + result;
    if (__OFADD__(v14, result))
    {
LABEL_16:
      __break(1u);
      return result;
    }
  }

  result = v8 + v9;
  if (__OFADD__(v8, v9))
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  return result;
}

uint64_t sub_10048D800(uint64_t a1)
{
  v3 = sub_10000C9C0(&qword_1005CDA68, &qword_1004CF7D0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v18[-v5];
  v7 = sub_10000C9C0(&qword_1005CDA78, &unk_1004CF7E0);
  __chkstk_darwin(v7 - 8);
  v9 = &v18[-v8];
  sub_10000E268(a1, &v18[-v8], &qword_1005CDA78, &unk_1004CF7E0);
  if ((*(v4 + 48))(v9, 1, v3) == 1)
  {
    v10 = *(v1 + 20);
    result = sub_1002F178C(0x24uLL, 0xE100000000000000, v1 + 8, v10);
    if (v12)
    {
      v13._countAndFlagsBits = 36;
      v13._object = 0xE100000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v13, v10);
    }

    v14 = *(v1 + 20);
    v15 = __CFADD__(v14, result);
    v16 = v14 + result;
    if (v15)
    {
      __break(1u);
    }

    else
    {
      *(v1 + 20) = v16;
    }
  }

  else
  {
    sub_100025FDC(v9, v6, &qword_1005CDA68, &qword_1004CF7D0);
    v17 = sub_10048E5FC(v1, sub_10048EEE8, sub_10048FA70);
    sub_100025F40(v6, &qword_1005CDA68, &qword_1004CF7D0);
    return v17;
  }

  return result;
}

uint64_t sub_10048DA10(uint64_t a1)
{
  v3 = sub_10000C9C0(&qword_1005CD1D0, &unk_1004CF2C0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v18[-v5];
  v7 = sub_10000C9C0(&qword_1005CD1C0, &unk_1004CEC40);
  __chkstk_darwin(v7 - 8);
  v9 = &v18[-v8];
  sub_10000E268(a1, &v18[-v8], &qword_1005CD1C0, &unk_1004CEC40);
  if ((*(v4 + 48))(v9, 1, v3) == 1)
  {
    v10 = *(v1 + 20);
    result = sub_1002F178C(0x24uLL, 0xE100000000000000, v1 + 8, v10);
    if (v12)
    {
      v13._countAndFlagsBits = 36;
      v13._object = 0xE100000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v13, v10);
    }

    v14 = *(v1 + 20);
    v15 = __CFADD__(v14, result);
    v16 = v14 + result;
    if (v15)
    {
      __break(1u);
    }

    else
    {
      *(v1 + 20) = v16;
    }
  }

  else
  {
    sub_100025FDC(v9, v6, &qword_1005CD1D0, &unk_1004CF2C0);
    v17 = sub_10048E5FC(v1, sub_10048EEE8, sub_10048FA70);
    sub_100025F40(v6, &qword_1005CD1D0, &unk_1004CF2C0);
    return v17;
  }

  return result;
}

uint64_t sub_10048DC20(uint64_t a1)
{
  v3 = sub_10000C9C0(&qword_1005DC5C8, &qword_10050B730);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v18[-v5];
  v7 = sub_10000C9C0(&qword_1005DC5D8, &unk_100502CC0);
  __chkstk_darwin(v7 - 8);
  v9 = &v18[-v8];
  sub_10000E268(a1, &v18[-v8], &qword_1005DC5D8, &unk_100502CC0);
  if ((*(v4 + 48))(v9, 1, v3) == 1)
  {
    v10 = *(v1 + 20);
    result = sub_1002F178C(0x24uLL, 0xE100000000000000, v1 + 8, v10);
    if (v12)
    {
      v13._countAndFlagsBits = 36;
      v13._object = 0xE100000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v13, v10);
    }

    v14 = *(v1 + 20);
    v15 = __CFADD__(v14, result);
    v16 = v14 + result;
    if (v15)
    {
      __break(1u);
    }

    else
    {
      *(v1 + 20) = v16;
    }
  }

  else
  {
    sub_100025FDC(v9, v6, &qword_1005DC5C8, &qword_10050B730);
    v17 = sub_10048E5FC(v1, sub_10048EF2C, sub_10048FA34);
    sub_100025F40(v6, &qword_1005DC5C8, &qword_10050B730);
    return v17;
  }

  return result;
}

uint64_t sub_10048DE30(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10000C9C0(&qword_1005DBC78, &unk_100502CB0);
  __chkstk_darwin(v4 - 8);
  v6 = (&v84 - v5);
  v7 = sub_10000C9C0(&qword_1005DC5D0, &qword_10050B9D0);
  __chkstk_darwin(v7 - 8);
  v9 = &v84 - v8;
  v10 = sub_10000C9C0(&qword_1005DC5D8, &unk_100502CC0);
  __chkstk_darwin(v10 - 8);
  v12 = &v84 - v11;
  v13 = type metadata accessor for SearchReturnData(0);
  __chkstk_darwin(v13);
  v15 = &v84 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10048F660(a1, v15);
  LODWORD(result) = swift_getEnumCaseMultiPayload();
  if (result > 2)
  {
    if (result > 4)
    {
      goto LABEL_16;
    }

    if (result != 3)
    {
      goto LABEL_43;
    }

    v17 = *v15;
    v86 = 0x20544E554F43;
    v87 = 0xE600000000000000;
    v85 = v17;
    v88._countAndFlagsBits = sub_1004A6CE4();
    sub_1004A5994(v88);

    v12 = v86;
    v18 = v87;
    v15 = *(v2 + 20);
    v19 = sub_1002F178C(v86, v87, v2 + 8, v15);
    if (v20)
    {
      v21._countAndFlagsBits = v12;
      v21._object = v18;
      v19 = ByteBuffer._setStringSlowpath(_:at:)(v21, v15);
    }

    v22 = v19;

    v23 = *(v2 + 20);
    result = v22;
    v24 = __CFADD__(v23, v22);
    v25 = v23 + v22;
    if (!v24)
    {
      goto LABEL_46;
    }

    __break(1u);
  }

  if (!result)
  {
LABEL_32:
    v54 = *v15;
    v86 = 0;
    v87 = 0xE000000000000000;
    v90._countAndFlagsBits = 542001485;
    v90._object = 0xE400000000000000;
    sub_1004A5994(v90);
    LODWORD(v85) = v54;
    sub_1004A6934();
    v12 = v86;
    v55 = v87;
    v15 = *(v2 + 20);
    v56 = sub_1002F178C(v86, v87, v2 + 8, v15);
    if (v57)
    {
      v58._countAndFlagsBits = v12;
      v58._object = v55;
      v56 = ByteBuffer._setStringSlowpath(_:at:)(v58, v15);
    }

    v59 = v56;

    v60 = *(v2 + 20);
    result = v59;
    v24 = __CFADD__(v60, v59);
    v25 = v60 + v59;
    if (!v24)
    {
      goto LABEL_46;
    }

    __break(1u);
    goto LABEL_37;
  }

  if (result != 1)
  {
LABEL_37:
    sub_100025FDC(v15, v12, &qword_1005DC5D8, &unk_100502CC0);
    v61 = *(v2 + 20);
    result = sub_1002F178C(0x204C4C41uLL, 0xE400000000000000, v2 + 8, v61);
    if (v62)
    {
      v63._countAndFlagsBits = 541871169;
      v63._object = 0xE400000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v63, v61);
    }

    v64 = result;
    v65 = *(v2 + 20);
    v24 = __CFADD__(v65, result);
    v66 = v65 + result;
    if (!v24)
    {
      *(v2 + 20) = v66;
      v2 = sub_10048DC20(v12);
      sub_100025F40(v12, &qword_1005DC5D8, &unk_100502CC0);
      result = v64 + v2;
      if (!__OFADD__(v64, v2))
      {
        return result;
      }

      __break(1u);
LABEL_43:
      v67 = *v15;
      v86 = 0;
      v87 = 0xE000000000000000;
      v91._countAndFlagsBits = 0x20514553444F4DLL;
      v91._object = 0xE700000000000000;
      sub_1004A5994(v91);
      v85 = v67;
      sub_1004A6934();
      v69 = v86;
      v68 = v87;
      v70 = *(v2 + 20);
      v71 = sub_1002F178C(v86, v87, v2 + 8, v70);
      if (v72)
      {
        v73._countAndFlagsBits = v69;
        v73._object = v68;
        v71 = ByteBuffer._setStringSlowpath(_:at:)(v73, v70);
      }

      v74 = v71;

      v75 = *(v2 + 20);
      result = v74;
      v24 = __CFADD__(v75, v74);
      v25 = v75 + v74;
      if (!v24)
      {
LABEL_46:
        *(v2 + 20) = v25;
        return result;
      }

      goto LABEL_57;
    }

    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  v26 = *v15;
  v86 = 0;
  v87 = 0xE000000000000000;
  v89._countAndFlagsBits = 542654797;
  v89._object = 0xE400000000000000;
  sub_1004A5994(v89);
  LODWORD(v85) = v26;
  sub_1004A6934();
  v27 = v86;
  v9 = v87;
  v15 = *(v2 + 20);
  v6 = 0;
  v28 = sub_1002F178C(v86, v87, v2 + 8, v15);
  if (v29)
  {
    v30._countAndFlagsBits = v27;
    v30._object = v9;
    v28 = ByteBuffer._setStringSlowpath(_:at:)(v30, v15);
  }

  v31 = v28;

  v32 = *(v2 + 20);
  result = v31;
  v24 = __CFADD__(v32, v31);
  v25 = v32 + v31;
  if (!v24)
  {
    goto LABEL_46;
  }

  __break(1u);
LABEL_16:
  if (result != 5)
  {
    sub_100025FDC(v15, v6, &qword_1005DBC78, &unk_100502CB0);
    v76 = sub_10048FA88(v6);
    sub_100025F40(v6, &qword_1005DBC78, &unk_100502CB0);
    return v76;
  }

  v33 = *v15;
  v34 = *(v15 + 8);
  v35 = sub_10000C9C0(&qword_1005DC5E0, &qword_100502CD0);
  sub_100025FDC(v15 + *(v35 + 48), v9, &qword_1005DC5D0, &qword_10050B9D0);
  v36 = *(v2 + 20);
  result = sub_1002F178C(0x204C414954524150uLL, 0xE900000000000028, v2 + 8, v36);
  if (v37)
  {
    v38._countAndFlagsBits = 0x204C414954524150;
    v38._object = 0xE900000000000028;
    result = ByteBuffer._setStringSlowpath(_:at:)(v38, v36);
  }

  v39 = result;
  v40 = *(v2 + 20);
  v24 = __CFADD__(v40, result);
  v41 = v40 + result;
  if (v24)
  {
    goto LABEL_56;
  }

  *(v2 + 20) = v41;
  result = sub_100475674(v33, v34);
  v42 = __OFADD__(v39, result);
  v43 = v39 + result;
  if (v42)
  {
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  v44 = *(v2 + 20);
  result = sub_1002F178C(0x20uLL, 0xE100000000000000, v2 + 8, v44);
  if (v45)
  {
    v46._countAndFlagsBits = 32;
    v46._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v46, v44);
  }

  v47 = *(v2 + 20);
  v48 = (v47 + result);
  if (__CFADD__(v47, result))
  {
    goto LABEL_59;
  }

  *(v2 + 20) = v48;
  v42 = __OFADD__(v43, result);
  v49 = v43 + result;
  if (v42)
  {
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
  if ((sub_1004A70C4() & 1) == 0)
  {
    result = sub_10048E5FC(v2, sub_10048EF2C, sub_10048FA34);
    v42 = __OFADD__(v49, result);
    v15 = v49 + result;
    if (v42)
    {
LABEL_64:
      __break(1u);
      return result;
    }

    v53 = *(v2 + 20);
    goto LABEL_50;
  }

  result = sub_1002F178C(0x4C494EuLL, 0xE300000000000000, v2 + 8, v48);
  if (v50)
  {
    v51._countAndFlagsBits = 4999502;
    v51._object = 0xE300000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v51, v48);
  }

  v52 = *(v2 + 20);
  v24 = __CFADD__(v52, result);
  v53 = v52 + result;
  if (v24)
  {
    goto LABEL_63;
  }

  *(v2 + 20) = v53;
  v42 = __OFADD__(v49, result);
  v15 = v49 + result;
  if (v42)
  {
    __break(1u);
    goto LABEL_32;
  }

LABEL_50:
  v77 = v53;
  v78 = sub_1002F178C(0x29uLL, 0xE100000000000000, v2 + 8, v53);
  if (v79)
  {
    v80._countAndFlagsBits = 41;
    v80._object = 0xE100000000000000;
    v78 = ByteBuffer._setStringSlowpath(_:at:)(v80, v77);
  }

  v81 = v78;
  result = sub_100025F40(v9, &qword_1005DC5D0, &qword_10050B9D0);
  v82 = *(v2 + 20);
  v24 = __CFADD__(v82, v81);
  v83 = v82 + v81;
  if (v24)
  {
    goto LABEL_61;
  }

  *(v2 + 20) = v83;
  result = v15 + v81;
  if (__OFADD__(v15, v81))
  {
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  return result;
}

unint64_t sub_10048E5A0(unint64_t result)
{
  v1 = (result + 1);
  if (result == -1)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (!HIDWORD(result))
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v1 <= HIDWORD(result))
  {
    return result & 0xFFFFFFFF00000000 | v1;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_10048E5FC(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t *, void *))
{
  v30 = a2;
  v31 = a3;
  v4 = sub_10000C9C0(&qword_1005DCD70, &unk_100508290);
  __chkstk_darwin(v4 - 8);
  v6 = &v29 - v5;
  v7 = sub_10000C9C0(&qword_1005CD7B0, &unk_1004D16C0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v29 - v9;
  sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
  sub_1004A7094();
  sub_10048F9D0();
  if (sub_1004A5E84() < 1)
  {
    v15 = 0;
  }

  else
  {
    v11 = *(a1 + 20);
    result = sub_1002F178C(0, 0xE000000000000000, a1 + 8, v11);
    if (v13)
    {
      v14._countAndFlagsBits = 0;
      v14._object = 0xE000000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v14, v11);
    }

    v15 = result;
    v16 = *(a1 + 20);
    v17 = __CFADD__(v16, result);
    v18 = v16 + result;
    if (v17)
    {
      goto LABEL_17;
    }

    *(a1 + 20) = v18;
  }

  v19 = (*(v8 + 16))(v6, v10, v7);
  __chkstk_darwin(v19);
  v20 = v31;
  *(&v29 - 6) = v30;
  *(&v29 - 5) = 0;
  *(&v29 - 4) = a1;
  *(&v29 - 3) = v10;
  *(&v29 - 2) = 44;
  *(&v29 - 1) = 0xE100000000000000;
  v21 = sub_100451840(0, v20, (&v29 - 8));
  result = sub_100025F40(v6, &qword_1005DCD70, &unk_100508290);
  v22 = v15 + v21;
  if (__OFADD__(v15, v21))
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (sub_1004A5E84() < 1)
  {
    v28 = v15 + v21;
    goto LABEL_13;
  }

  v23 = *(a1 + 20);
  result = sub_1002F178C(0, 0xE000000000000000, a1 + 8, v23);
  if (v24)
  {
    v25._countAndFlagsBits = 0;
    v25._object = 0xE000000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v25, v23);
  }

  v26 = *(a1 + 20);
  v17 = __CFADD__(v26, result);
  v27 = v26 + result;
  if (!v17)
  {
    *(a1 + 20) = v27;
    v28 = v22 + result;
    if (!__OFADD__(v22, result))
    {
LABEL_13:
      (*(v8 + 8))(v10, v7);
      return v28;
    }

    __break(1u);
    goto LABEL_16;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_10048E8CC(unint64_t a1, uint64_t a2)
{
  v3 = sub_10048E5A0(a1);
  v4 = v3;
  v5 = HIDWORD(v3);
  v6 = sub_10049FCFC(v3);
  v7 = 0;
  if (v4 < v5)
  {
    v8 = *(a2 + 20);
    result = sub_1002F178C(0x3AuLL, 0xE100000000000000, a2 + 8, v8);
    if (v10)
    {
      v11._countAndFlagsBits = 58;
      v11._object = 0xE100000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v11, v8);
    }

    v12 = result;
    v13 = *(a2 + 20);
    v14 = __CFADD__(v13, result);
    v15 = v13 + result;
    if (v14)
    {
      goto LABEL_9;
    }

    *(a2 + 20) = v15;
    result = sub_10049FCFC(v5);
    v7 = v12 + result;
    if (__OFADD__(v12, result))
    {
LABEL_10:
      __break(1u);
      return result;
    }
  }

  result = v6 + v7;
  if (__OFADD__(v6, v7))
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  return result;
}

void SearchReturnData.hash(into:)(uint64_t a1)
{
  v33 = a1;
  v32 = sub_10000C9C0(&qword_1005DBC78, &unk_100502CB0);
  __chkstk_darwin(v32);
  v3 = &v32 - v2;
  v4 = sub_10000C9C0(&qword_1005DC5D0, &qword_10050B9D0);
  __chkstk_darwin(v4 - 8);
  v6 = &v32 - v5;
  v7 = sub_10000C9C0(&qword_1005DC5C8, &qword_10050B730);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v32 - v9;
  v11 = sub_10000C9C0(&qword_1005DC5D8, &unk_100502CC0);
  __chkstk_darwin(v11 - 8);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v32 - v15;
  v17 = type metadata accessor for SearchReturnData(0);
  __chkstk_darwin(v17);
  v19 = &v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10048F660(v1, v19);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        sub_100025FDC(v19, v16, &qword_1005DC5D8, &unk_100502CC0);
        sub_1004A6EB4(2uLL);
        sub_10000E268(v16, v13, &qword_1005DC5D8, &unk_100502CC0);
        if ((*(v8 + 48))(v13, 1, v7) == 1)
        {
          sub_1004A6EB4(1uLL);
        }

        else
        {
          sub_100025FDC(v13, v10, &qword_1005DC5C8, &qword_10050B730);
          sub_1004A6EB4(0);
          sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
          sub_1000956A0();
          sub_1004A5564();
          sub_100025F40(v10, &qword_1005DC5C8, &qword_10050B730);
        }

        v29 = &qword_1005DC5D8;
        v30 = &unk_100502CC0;
        v28 = v16;
        goto LABEL_18;
      }

      v22 = *v19;
      v23 = 1;
    }

    else
    {
      v22 = *v19;
      v23 = 0;
    }

    sub_1004A6EB4(v23);
    sub_1004A6EE4(v22);
    return;
  }

  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload == 5)
    {
      v25 = *v19;
      v24 = *(v19 + 1);
      v26 = v19[8];
      v27 = sub_10000C9C0(&qword_1005DC5E0, &qword_100502CD0);
      sub_100025FDC(&v19[*(v27 + 48)], v6, &qword_1005DC5D0, &qword_10050B9D0);
      sub_1004A6EB4(5uLL);
      sub_1004A6EB4(v26);
      sub_1004A6EE4(v25);
      sub_1004A6EE4(v24);
      sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
      sub_1000956A0();
      sub_1004A5564();
      v28 = v6;
      v29 = &qword_1005DC5D0;
      v30 = &qword_10050B9D0;
    }

    else
    {
      sub_100025FDC(v19, v3, &qword_1005DBC78, &unk_100502CB0);
      v31 = v33;
      sub_1004A6EB4(6uLL);
      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
      ParameterValue.hash(into:)(v31);
      v28 = v3;
      v29 = &qword_1005DBC78;
      v30 = &unk_100502CB0;
    }

LABEL_18:
    sub_100025F40(v28, v29, v30);
    return;
  }

  v21 = *v19;
  if (EnumCaseMultiPayload == 3)
  {
    sub_1004A6EB4(3uLL);
    sub_1004A6EB4(v21);
  }

  else
  {
    sub_1004A6EB4(4uLL);
    sub_1004A6EF4(v21);
  }
}

Swift::Int SearchReturnData.hashValue.getter()
{
  sub_1004A6E94();
  SearchReturnData.hash(into:)(v1);
  return sub_1004A6F14();
}

Swift::Int sub_10048EEAC(uint64_t a1)
{
  sub_1004A6E94();
  SearchReturnData.hash(into:)(v2);
  return sub_1004A6F14();
}

uint64_t _s12NIOIMAPCore216SearchReturnDataO21__derived_enum_equalsySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v67 = a1;
  v68 = a2;
  v62 = sub_10000C9C0(&qword_1005DBC78, &unk_100502CB0);
  __chkstk_darwin(v62);
  v65 = (&v61 - v2);
  v3 = sub_10000C9C0(&qword_1005DC5D0, &qword_10050B9D0);
  __chkstk_darwin(v3 - 8);
  v63 = &v61 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v64 = &v61 - v6;
  v7 = sub_10000C9C0(&qword_1005DC5D8, &unk_100502CC0);
  __chkstk_darwin(v7 - 8);
  v9 = &v61 - v8;
  v10 = type metadata accessor for SearchReturnData(0);
  __chkstk_darwin(v10);
  v66 = (&v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v12);
  v14 = &v61 - v13;
  __chkstk_darwin(v15);
  v17 = (&v61 - v16);
  __chkstk_darwin(v18);
  v20 = (&v61 - v19);
  __chkstk_darwin(v21);
  v23 = (&v61 - v22);
  __chkstk_darwin(v24);
  v26 = (&v61 - v25);
  __chkstk_darwin(v27);
  v29 = (&v61 - v28);
  v30 = sub_10000C9C0(&qword_1005DD8A8, &qword_10050C358);
  __chkstk_darwin(v30 - 8);
  v32 = &v61 - v31;
  v34 = &v61 + *(v33 + 56) - v31;
  sub_10048F660(v67, &v61 - v31);
  sub_10048F660(v68, v34);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        sub_10048F660(v32, v23);
        if (swift_getEnumCaseMultiPayload() == 2)
        {
          sub_100025FDC(v34, v9, &qword_1005DC5D8, &unk_100502CC0);
          v49 = sub_100489074(v23, v9);
          sub_100025F40(v9, &qword_1005DC5D8, &unk_100502CC0);
          sub_100025F40(v23, &qword_1005DC5D8, &unk_100502CC0);
          goto LABEL_25;
        }

        v54 = &qword_1005DC5D8;
        v55 = &unk_100502CC0;
        goto LABEL_35;
      }

      sub_10048F660(v32, v26);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        goto LABEL_37;
      }

      v38 = *v34;
      v39 = *v26;
    }

    else
    {
      sub_10048F660(v32, v29);
      if (swift_getEnumCaseMultiPayload())
      {
        goto LABEL_37;
      }

      v38 = *v34;
      v39 = *v29;
    }

    v37 = v38 == v39;
    goto LABEL_22;
  }

  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload == 5)
    {
      sub_10048F660(v32, v14);
      v40 = *(sub_10000C9C0(&qword_1005DC5E0, &qword_100502CD0) + 48);
      if (swift_getEnumCaseMultiPayload() == 5)
      {
        v41 = v14[8];
        v42 = *v14;
        v43 = *v34;
        v44 = v34[8];
        v45 = &v14[v40];
        v46 = v64;
        sub_100025FDC(v45, v64, &qword_1005DC5D0, &qword_10050B9D0);
        v47 = &v34[v40];
        v48 = v63;
        sub_100025FDC(v47, v63, &qword_1005DC5D0, &qword_10050B9D0);
        if (sub_1004759F8(v42, v41, v43, v44))
        {
          sub_100016D2C();
          v49 = sub_1004A7034();
          sub_100025F40(v48, &qword_1005DC5D0, &qword_10050B9D0);
          sub_100025F40(v46, &qword_1005DC5D0, &qword_10050B9D0);
LABEL_25:
          sub_1003EBFD4(v32, v36);
          return v49 & 1;
        }

        v57 = &qword_1005DC5D0;
        v58 = &qword_10050B9D0;
        sub_100025F40(v48, &qword_1005DC5D0, &qword_10050B9D0);
        v59 = v46;
LABEL_42:
        sub_100025F40(v59, v57, v58);
        sub_1003EBFD4(v32, v60);
        goto LABEL_38;
      }

      v54 = &qword_1005DC5D0;
      v55 = &qword_10050B9D0;
      v56 = &v14[v40];
LABEL_36:
      sub_100025F40(v56, v54, v55);
      goto LABEL_37;
    }

    v23 = v66;
    sub_10048F660(v32, v66);
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      v52 = v65;
      sub_100025FDC(v34, v65, &qword_1005DBC78, &unk_100502CB0);
      if (*v23 == *v52 && v23[1] == v52[1] || (sub_1004A6D34()) && (_s12NIOIMAPCore214ParameterValueO21__derived_enum_equalsySbAC_ACtFZ_0(v23 + *(v62 + 52), v52 + *(v62 + 52)))
      {
        sub_100025F40(v52, &qword_1005DBC78, &unk_100502CB0);
        sub_100025F40(v23, &qword_1005DBC78, &unk_100502CB0);
        sub_1003EBFD4(v32, v53);
        v49 = 1;
        return v49 & 1;
      }

      v57 = &qword_1005DBC78;
      v58 = &unk_100502CB0;
      sub_100025F40(v52, &qword_1005DBC78, &unk_100502CB0);
      v59 = v23;
      goto LABEL_42;
    }

    v54 = &qword_1005DBC78;
    v55 = &unk_100502CB0;
LABEL_35:
    v56 = v23;
    goto LABEL_36;
  }

  if (EnumCaseMultiPayload == 3)
  {
    sub_10048F660(v32, v20);
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      v37 = *v20 == *v34;
      goto LABEL_22;
    }

    goto LABEL_37;
  }

  sub_10048F660(v32, v17);
  v50 = *v17;
  result = swift_getEnumCaseMultiPayload();
  if (result != 4)
  {
LABEL_37:
    sub_100025F40(v32, &qword_1005DD8A8, &qword_10050C358);
LABEL_38:
    v49 = 0;
    return v49 & 1;
  }

  if (((*v34 | v50) & 0x8000000000000000) == 0)
  {
    v37 = *v34 == v50;
LABEL_22:
    v49 = v37;
    goto LABEL_25;
  }

  __break(1u);
  return result;
}

uint64_t type metadata accessor for SearchReturnData(uint64_t a1)
{
  result = qword_1005DD850;
  if (!qword_1005DD850)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10048F660(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchReturnData(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_10048F70C(uint64_t a1)
{
  sub_10048F7B4(319);
  if (v1 <= 0x3F)
  {
    sub_10048F864(319);
    if (v2 <= 0x3F)
    {
      sub_10048F8D8(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_10048F7B4(uint64_t a1)
{
  if (!qword_1005DD860)
  {
    v2 = sub_10048F810();
    CommandSet = type metadata accessor for LastCommandSet(a1, &type metadata for UnknownMessageIdentifier, v2, v3);
    if (!v5)
    {
      atomic_store(CommandSet, &qword_1005DD860);
    }
  }
}

unint64_t sub_10048F810()
{
  result = qword_1005DD868;
  if (!qword_1005DD868)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for UnknownMessageIdentifier, &type metadata for UnknownMessageIdentifier, v0, v1);
    atomic_store(result, &qword_1005DD868);
  }

  return result;
}

void sub_10048F864(uint64_t a1)
{
  if (!qword_1005DD870)
  {
    sub_10000DEFC(&qword_1005DC5D0, &qword_10050B9D0);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1005DD870);
    }
  }
}

void sub_10048F8D8(uint64_t a1)
{
  if (!qword_1005DD878)
  {
    v4[0] = &type metadata for String;
    v4[1] = type metadata accessor for ParameterValue(255);
    v4[2] = &protocol witness table for String;
    v4[3] = sub_10048F988(&qword_1005DC4A8, type metadata accessor for ParameterValue, protocol conformance descriptor for ParameterValue);
    v2 = type metadata accessor for KeyValue(a1, v4);
    if (!v3)
    {
      atomic_store(v2, &qword_1005DD878);
    }
  }
}

uint64_t sub_10048F988(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10048F9D0()
{
  result = qword_1005DC300;
  if (!qword_1005DC300)
  {
    v3 = sub_10000DEFC(&qword_1005CD7B0, &unk_1004D16C0);
    result = swift_getWitnessTable(&protocol conformance descriptor for RangeSet<A>.Ranges, v3, v0, v1);
    atomic_store(result, &qword_1005DC300);
  }

  return result;
}

uint64_t sub_10048FA88(unint64_t *a1)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = *(v1 + 20);
  result = sub_1002F178C(*a1, v4, v1 + 8, v5);
  if (v7)
  {
    v8._countAndFlagsBits = v3;
    v8._object = v4;
    result = ByteBuffer._setStringSlowpath(_:at:)(v8, v5);
  }

  v9 = result;
  v10 = *(v1 + 20);
  v11 = (v10 + result);
  if (__CFADD__(v10, result))
  {
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  *(v1 + 20) = v11;
  result = sub_1002F178C(0x20uLL, 0xE100000000000000, v1 + 8, v11);
  if (v12)
  {
    v13._countAndFlagsBits = 32;
    v13._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v13, v11);
  }

  v14 = *(v1 + 20);
  v15 = __CFADD__(v14, result);
  v16 = v14 + result;
  if (v15)
  {
    goto LABEL_11;
  }

  *(v1 + 20) = v16;
  v17 = v9 + result;
  if (__OFADD__(v9, result))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v18 = sub_10000C9C0(&qword_1005DBC78, &unk_100502CB0);
  v19 = sub_100463ACC(a1 + *(v18 + 52));
  v20 = __OFADD__(v17, v19);
  result = v17 + v19;
  if (v20)
  {
LABEL_13:
    __break(1u);
  }

  return result;
}

uint64_t sub_10048FB98(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    return 0;
  }

  v2 = v1;
  v4 = *(v1 + 20);
  result = sub_1002F178C(0x204E525554455220uLL, 0xE900000000000028, v1 + 8, v4);
  if (v6)
  {
    v7._countAndFlagsBits = 0x204E525554455220;
    v7._object = 0xE900000000000028;
    result = ByteBuffer._setStringSlowpath(_:at:)(v7, v4);
  }

  v8 = result;
  v9 = *(v1 + 20);
  v10 = (v9 + result);
  if (__CFADD__(v9, result))
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  *(v1 + 20) = v10;
  v31 = a1;
  result = sub_1002F178C(0, 0xE000000000000000, v1 + 8, v10);
  if (v11)
  {
    v12._countAndFlagsBits = 0;
    v12._object = 0xE000000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v12, v10);
  }

  v13 = result;
  v14 = *(v2 + 20);
  v15 = __CFADD__(v14, result);
  v16 = v14 + result;
  if (v15)
  {
    goto LABEL_23;
  }

  *(v2 + 20) = v16;
  __chkstk_darwin(result);
  v30[2] = sub_1004904D0;
  v30[3] = 0;
  v30[4] = v2;
  v30[5] = &v31;
  v30[6] = 32;
  v30[7] = 0xE100000000000000;
  result = sub_100452AD8(0, sub_100490A64, v30, a1);
  v17 = v13 + result;
  if (__OFADD__(v13, result))
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v18 = *(v2 + 20);
  result = sub_1002F178C(0, 0xE000000000000000, v2 + 8, v18);
  if (v19)
  {
    v20._countAndFlagsBits = 0;
    v20._object = 0xE000000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v20, v18);
  }

  v21 = *(v2 + 20);
  v22 = (v21 + result);
  if (__CFADD__(v21, result))
  {
    goto LABEL_25;
  }

  *(v2 + 20) = v22;
  v23 = v17 + result;
  if (__OFADD__(v17, result))
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v24 = __OFADD__(v8, v23);
  v25 = v8 + v23;
  if (v24)
  {
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    return result;
  }

  result = sub_1002F178C(0x29uLL, 0xE100000000000000, v2 + 8, v22);
  if (v26)
  {
    v27._countAndFlagsBits = 41;
    v27._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v27, v22);
  }

  v28 = *(v2 + 20);
  v15 = __CFADD__(v28, result);
  v29 = v28 + result;
  if (v15)
  {
    goto LABEL_28;
  }

  *(v2 + 20) = v29;
  v24 = __OFADD__(v25, result);
  result += v25;
  if (!v24)
  {
    return result;
  }

  __break(1u);
  return 0;
}

void SearchReturnOption.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for ParameterValue(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000C9C0(&qword_1005D7F50, &unk_100502FF0);
  __chkstk_darwin(v8 - 8);
  v10 = &v21 - v9;
  v11 = sub_10000C9C0(&qword_1005DBCA8, &unk_100504BF0);
  __chkstk_darwin(v11);
  v13 = &v21 - v12;
  v14 = type metadata accessor for SearchReturnOption(0);
  __chkstk_darwin(v14);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1004908A4(v2, v16);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        sub_1003E05A4(v16, v13);
        sub_1004A6EB4(6uLL);
        _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
        sub_1003E0614(&v13[*(v11 + 52)], v10);
        if ((*(v5 + 48))(v10, 1, v4) == 1)
        {
          sub_1004A6EC4(0);
        }

        else
        {
          sub_1002FC114(v10, v7);
          sub_1004A6EC4(1u);
          ParameterValue.hash(into:)(a1);
          sub_100490A04(v7, type metadata accessor for ParameterValue);
        }

        sub_100025F40(v13, &qword_1005DBCA8, &unk_100504BF0);
      }

      else
      {
        sub_1004A6EB4(0);
      }
    }

    else
    {
      v19 = *v16;
      v18 = *(v16 + 1);
      v20 = v16[8];
      sub_1004A6EB4(5uLL);
      sub_1004A6EB4((v20 & 1) != 0);
      sub_1004A6EE4(v19);
      sub_1004A6EE4(v18);
    }
  }

  else if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload == 5)
    {
      sub_1004A6EB4(3uLL);
    }

    else
    {
      sub_1004A6EB4(4uLL);
    }
  }

  else if (EnumCaseMultiPayload == 3)
  {
    sub_1004A6EB4(1uLL);
  }

  else
  {
    sub_1004A6EB4(2uLL);
  }
}

Swift::Int SearchReturnOption.hashValue.getter()
{
  sub_1004A6E94();
  SearchReturnOption.hash(into:)(v1);
  return sub_1004A6F14();
}

Swift::Int sub_100490118(uint64_t a1)
{
  sub_1004A6E94();
  SearchReturnOption.hash(into:)(v2);
  return sub_1004A6F14();
}

uint64_t sub_100490154(uint64_t a1)
{
  v3 = sub_10000C9C0(&qword_1005DBCA8, &unk_100504BF0);
  __chkstk_darwin(v3 - 8);
  v5 = &v42[-v4];
  v6 = type metadata accessor for SearchReturnOption(0);
  __chkstk_darwin(v6);
  v8 = &v42[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1004908A4(a1, v8);
  LODWORD(result) = swift_getEnumCaseMultiPayload();
  if (result <= 2)
  {
    goto LABEL_9;
  }

  if (result > 4)
  {
    if (result != 5)
    {
      goto LABEL_34;
    }

    v16 = *(v1 + 20);
    v8 = 0;
    result = sub_1002F178C(0x544E554F43uLL, 0xE500000000000000, v1 + 8, v16);
    if (v17)
    {
      v8 = v1;
      v18._countAndFlagsBits = 0x544E554F43;
      v18._object = 0xE500000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v18, v16);
    }

    v19 = *(v1 + 20);
    v13 = __CFADD__(v19, result);
    v14 = v19 + result;
    if (!v13)
    {
      goto LABEL_37;
    }

    __break(1u);
    goto LABEL_18;
  }

  if (result == 3)
  {
    v5 = *(v1 + 20);
    v8 = 0;
    result = sub_1002F178C(0x58414DuLL, 0xE300000000000000, v1 + 8, v5);
    if (v10)
    {
      v8 = v1;
      v11._countAndFlagsBits = 5783885;
      v11._object = 0xE300000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v11, v5);
    }

    v12 = *(v1 + 20);
    v13 = __CFADD__(v12, result);
    v14 = v12 + result;
    if (!v13)
    {
      goto LABEL_37;
    }

    __break(1u);
LABEL_9:
    if (result)
    {
      if (result == 1)
      {
        sub_1003E05A4(v8, v5);
        v15 = sub_100490AA4(v5);
        sub_100025F40(v5, &qword_1005DBCA8, &unk_100504BF0);
        return v15;
      }

LABEL_24:
      v30 = *(v1 + 20);
      result = sub_1002F178C(0x4E494DuLL, 0xE300000000000000, v1 + 8, v30);
      if (v31)
      {
        v32._countAndFlagsBits = 5130573;
        v32._object = 0xE300000000000000;
        result = ByteBuffer._setStringSlowpath(_:at:)(v32, v30);
      }

      v33 = *(v1 + 20);
      v13 = __CFADD__(v33, result);
      v14 = v33 + result;
      if (!v13)
      {
        goto LABEL_37;
      }

      __break(1u);
      goto LABEL_29;
    }

LABEL_18:
    v20 = *v8;
    v21 = v8[8];
    v22 = *(v1 + 20);
    result = sub_1002F178C(0x204C414954524150uLL, 0xE800000000000000, v1 + 8, v22);
    if (v23)
    {
      v24._countAndFlagsBits = 0x204C414954524150;
      v24._object = 0xE800000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v24, v22);
    }

    v25 = result;
    v26 = *(v1 + 20);
    v13 = __CFADD__(v26, result);
    v27 = v26 + result;
    if (v13)
    {
      __break(1u);
LABEL_40:
      __break(1u);
      return result;
    }

    *(v1 + 20) = v27;
    v28 = sub_100475674(v20, v21);
    v29 = __OFADD__(v25, v28);
    result = v25 + v28;
    if (!v29)
    {
      return result;
    }

    __break(1u);
    goto LABEL_24;
  }

LABEL_29:
  v34 = *(v1 + 20);
  result = sub_1002F178C(0x4C4C41uLL, 0xE300000000000000, v1 + 8, v34);
  if (v35)
  {
    v36._countAndFlagsBits = 5000257;
    v36._object = 0xE300000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v36, v34);
  }

  v37 = *(v1 + 20);
  v13 = __CFADD__(v37, result);
  v14 = v37 + result;
  if (!v13)
  {
    goto LABEL_37;
  }

  __break(1u);
LABEL_34:
  v38 = *(v1 + 20);
  result = sub_1002F178C(0x45564153uLL, 0xE400000000000000, v1 + 8, v38);
  if (v39)
  {
    v40._countAndFlagsBits = 1163280723;
    v40._object = 0xE400000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v40, v38);
  }

  v41 = *(v1 + 20);
  v13 = __CFADD__(v41, result);
  v14 = v41 + result;
  if (v13)
  {
    goto LABEL_40;
  }

LABEL_37:
  *(v1 + 20) = v14;
  return result;
}

BOOL _s12NIOIMAPCore218SearchReturnOptionO21__derived_enum_equalsySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C9C0(&qword_1005DBCA8, &unk_100504BF0);
  __chkstk_darwin(v4 - 8);
  v6 = (&v23 - v5);
  v7 = type metadata accessor for SearchReturnOption(0);
  __chkstk_darwin(v7);
  v9 = (&v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v10);
  v12 = &v23 - v11;
  v13 = sub_10000C9C0(&qword_1005DD960, &unk_10050C3E8);
  __chkstk_darwin(v13 - 8);
  v15 = &v23 - v14;
  v17 = &v23 + *(v16 + 56) - v14;
  sub_1004908A4(a1, &v23 - v14);
  sub_1004908A4(a2, v17);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload <= 4)
    {
      if (EnumCaseMultiPayload == 3)
      {
        if (swift_getEnumCaseMultiPayload() != 3)
        {
          goto LABEL_26;
        }
      }

      else if (swift_getEnumCaseMultiPayload() != 4)
      {
        goto LABEL_26;
      }

      goto LABEL_24;
    }

    if (EnumCaseMultiPayload == 5)
    {
      if (swift_getEnumCaseMultiPayload() != 5)
      {
        goto LABEL_26;
      }

      goto LABEL_24;
    }

    if (swift_getEnumCaseMultiPayload() == 6)
    {
LABEL_24:
      sub_100490A04(v15, type metadata accessor for SearchReturnOption);
      return 1;
    }

    goto LABEL_26;
  }

  if (!EnumCaseMultiPayload)
  {
    sub_1004908A4(v15, v12);
    v20 = *v12;
    if (!swift_getEnumCaseMultiPayload())
    {
      v21 = v17[8];
      if (v12[8])
      {
        if (*v17 != v20)
        {
          v21 = 0;
        }

        if (v21 == 1)
        {
          goto LABEL_24;
        }
      }

      else
      {
        if (*v17 != v20)
        {
          LOBYTE(v21) = 1;
        }

        if ((v21 & 1) == 0)
        {
          goto LABEL_24;
        }
      }

      sub_100490A04(v15, type metadata accessor for SearchReturnOption);
      return 0;
    }

LABEL_26:
    sub_100025F40(v15, &qword_1005DD960, &unk_10050C3E8);
    return 0;
  }

  if (EnumCaseMultiPayload != 1)
  {
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      goto LABEL_26;
    }

    goto LABEL_24;
  }

  sub_1004908A4(v15, v9);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_100025F40(v9, &qword_1005DBCA8, &unk_100504BF0);
    goto LABEL_26;
  }

  sub_1003E05A4(v17, v6);
  v19 = sub_100436BFC(v9, v6);
  sub_100025F40(v6, &qword_1005DBCA8, &unk_100504BF0);
  sub_100025F40(v9, &qword_1005DBCA8, &unk_100504BF0);
  sub_100490A04(v15, type metadata accessor for SearchReturnOption);
  return v19;
}

uint64_t type metadata accessor for SearchReturnOption(uint64_t a1)
{
  result = qword_1005DD928;
  if (!qword_1005DD928)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1004908A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchReturnOption(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_100490950(uint64_t a1)
{
  sub_1003E0740(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
  }
}

uint64_t sub_1004909BC(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100490A04(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100490A64@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_100492264(*a1, a2, *(v3 + 16), *(v3 + 24), *(v3 + 32), **(v3 + 40), *(v3 + 48), *(v3 + 56));
  if (!v4)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_100490AA4(unint64_t *a1)
{
  v2 = v1;
  v4 = sub_10000C9C0(&qword_1005D7F50, &unk_100502FF0);
  __chkstk_darwin(v4 - 8);
  v6 = v30 - v5;
  v7 = type metadata accessor for ParameterValue(0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v30[0] = v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  v10 = a1[1];
  v12 = *(v1 + 20);
  result = sub_1002F178C(*a1, v10, v1 + 8, v12);
  if (v14)
  {
    v15._countAndFlagsBits = v11;
    v15._object = v10;
    result = ByteBuffer._setStringSlowpath(_:at:)(v15, v12);
  }

  v16 = result;
  v17 = *(v2 + 20);
  v18 = (v17 + result);
  if (__CFADD__(v17, result))
  {
    __break(1u);
    goto LABEL_15;
  }

  *(v2 + 20) = v18;
  v19 = sub_10000C9C0(&qword_1005DBCA8, &unk_100504BF0);
  sub_1003E0614(a1 + *(v19 + 52), v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_1002FC2A8(v6);
    v20 = 0;
  }

  else
  {
    v21 = v30[0];
    sub_1002FC114(v6, v30[0]);
    result = sub_1002F178C(0x20uLL, 0xE100000000000000, v2 + 8, v18);
    if (v22)
    {
      v23 = v16;
      v24._countAndFlagsBits = 32;
      v24._object = 0xE100000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v24, v18);
      v25 = result;
    }

    else
    {
      v25 = result;
      v23 = v16;
    }

    v26 = *(v2 + 20);
    v27 = __CFADD__(v26, v25);
    v28 = v26 + v25;
    if (v27)
    {
      goto LABEL_16;
    }

    *(v2 + 20) = v28;
    v29 = sub_100463ACC(v21);
    result = sub_1002FC1DC(v21);
    v20 = v25 + v29;
    if (__OFADD__(v25, v29))
    {
LABEL_17:
      __break(1u);
      return result;
    }

    v16 = v23;
  }

  result = v16 + v20;
  if (__OFADD__(v16, v20))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  return result;
}

NIOIMAPCore2::SectionSpecifier::Part __swiftcall SectionSpecifier.Part.dropLast()()
{
  v1 = sub_1003A8BB0(1uLL, v0);
  v3 = v2;
  v5 = v4;
  v7 = v6;
  if ((v6 & 1) == 0)
  {

LABEL_3:
    sub_1003AA91C(v1, v3, v5, v7);
    v9 = v8;
LABEL_10:
    swift_unknownObjectRelease();
    return v9;
  }

  sub_1004A6DA4();
  swift_unknownObjectRetain_n();

  v10 = swift_dynamicCastClass();
  if (!v10)
  {
    swift_unknownObjectRelease();
    v10 = _swiftEmptyArrayStorage;
  }

  v11 = v10[2];

  if (__OFSUB__(v7 >> 1, v5))
  {
    __break(1u);
    goto LABEL_13;
  }

  if (v11 != (v7 >> 1) - v5)
  {
LABEL_13:
    swift_unknownObjectRelease();
    goto LABEL_3;
  }

  v9 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  if (!v9)
  {
    v9 = _swiftEmptyArrayStorage;
    goto LABEL_10;
  }

  return v9;
}

NIOIMAPCore2::SectionSpecifier::Part __swiftcall SectionSpecifier.Part.appending(_:)(Swift::Int a1)
{
  v2.array._rawValue = v1;
  sub_10000C9C0(&qword_1005D14D8, &qword_1004F1B10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004CEAA0;
  *(inited + 32) = a1;

  sub_1003AA9EC(inited);
  return v2;
}

NIOIMAPCore2::SectionSpecifier::Part __swiftcall SectionSpecifier.Part.dropFirst()()
{
  v1 = *(v0 + 16);
  if (!v1)
  {
  }

  sub_1003AA91C(v0, v0 + 32, 1, (2 * v1) | 1);
  return result;
}

uint64_t sub_100490EA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t *, uint64_t), uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8, void *a9)
{
  v22 = a3;
  result = a4(&v22, a6);
  v14 = a1 + result;
  if (__OFADD__(a1, result))
  {
    __break(1u);
    goto LABEL_12;
  }

  sub_10000C9C0(&qword_1005CD7B0, &unk_1004D16C0);
  sub_10048F9D0();
  result = sub_1004A5E84();
  if (__OFSUB__(result, 1))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (result - 1 <= a2)
  {
    result = 0;
  }

  else
  {
    v15 = *(a6 + 20);
    result = sub_1002F178C(a8, a9, a6 + 8, v15);
    if (v16)
    {
      v17._countAndFlagsBits = a8;
      v17._object = a9;
      result = ByteBuffer._setStringSlowpath(_:at:)(v17, v15);
    }

    v18 = *(a6 + 20);
    v19 = __CFADD__(v18, result);
    v20 = v18 + result;
    if (v19)
    {
      goto LABEL_14;
    }

    *(a6 + 20) = v20;
  }

  v21 = __OFADD__(v14, result);
  result += v14;
  if (v21)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
  }

  return result;
}

uint64_t sub_100490FC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void *, uint64_t, __n128), uint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9, void *a10)
{
  v25[0] = a3;
  v25[1] = a4;

  result = (a5)(v25, a7);
  v16 = a1 + result;
  if (__OFADD__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  if (*(a8 + 16) - 1 <= a2)
  {

    v21 = 0;
  }

  else
  {
    v17 = *(a7 + 20);
    v18 = sub_1002F178C(a9, a10, a7 + 8, v17);
    if (v19)
    {
      v20._countAndFlagsBits = a9;
      v20._object = a10;
      v18 = ByteBuffer._setStringSlowpath(_:at:)(v20, v17);
    }

    v21 = v18;

    v22 = *(a7 + 20);
    v23 = __CFADD__(v22, v21);
    v24 = v22 + v21;
    if (v23)
    {
      goto LABEL_12;
    }

    *(a7 + 20) = v24;
  }

  result = v16 + v21;
  if (__OFADD__(v16, v21))
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
  }

  return result;
}

uint64_t sub_1004910D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t *, uint64_t), uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8, void *a9)
{
  v26 = a3;

  result = a4(&v26, a6);
  v16 = __OFADD__(a1, result);
  v17 = a1 + result;
  if (v16)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (*(a7 + 16) - 1 <= a2)
  {

    v22 = 0;
  }

  else
  {
    v18 = *(a6 + 20);
    v19 = sub_1002F178C(a8, a9, a6 + 8, v18);
    if (v20)
    {
      v21._countAndFlagsBits = a8;
      v21._object = a9;
      v19 = ByteBuffer._setStringSlowpath(_:at:)(v21, v18);
    }

    v22 = v19;

    v23 = *(a6 + 20);
    v24 = __CFADD__(v23, v22);
    v25 = v23 + v22;
    if (v24)
    {
      goto LABEL_12;
    }

    *(a6 + 20) = v25;
  }

  result = v17 + v22;
  if (__OFADD__(v17, v22))
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
  }

  return result;
}

uint64_t sub_1004911E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *, uint64_t, __n128), uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, void *a8)
{
  v14 = *a2;
  v16 = *(a2 + 16);
  v15 = *(a2 + 24);
  v17 = *(a2 + 32);
  v29[0] = *(a2 + 8);
  v29[1] = v16;
  v29[2] = v15;
  v30 = v17;

  result = (a3)(v29, a5);
  v19 = __OFADD__(a1, result);
  v20 = a1 + result;
  if (v19)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v14 >= *(a6 + 16) - 1)
  {

    v25 = 0;
  }

  else
  {
    v21 = *(a5 + 20);
    v22 = sub_1002F178C(a7, a8, a5 + 8, v21);
    if (v23)
    {
      v24._countAndFlagsBits = a7;
      v24._object = a8;
      v22 = ByteBuffer._setStringSlowpath(_:at:)(v24, v21);
    }

    v25 = v22;

    v26 = *(a5 + 20);
    v27 = __CFADD__(v26, v25);
    v28 = v26 + v25;
    if (v27)
    {
      goto LABEL_12;
    }

    *(a5 + 20) = v28;
  }

  result = v20 + v25;
  if (__OFADD__(v20, v25))
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
  }

  return result;
}

uint64_t sub_1004913C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(char *, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, void *a8, uint64_t *a9, uint64_t *a10, uint64_t (*a11)(void, __n128), uint64_t (*a12)(void))
{
  v39 = a6;
  v37 = a7;
  v38 = a8;
  v40 = a4;
  v41 = a1;
  v15 = sub_10000C9C0(a9, a10);
  v16 = v15 - 8;
  v17 = __chkstk_darwin(v15);
  v19 = (&v36 - v18);
  v20 = a11(0, v17);
  __chkstk_darwin(v20 - 8);
  v22 = &v36 - v21;
  sub_10000E268(a2, v19, a9, a10);
  v23 = *v19;
  sub_100494BE4(v19 + *(v16 + 56), v22, a12);
  result = a3(v22, a5);
  v25 = v41 + result;
  if (__OFADD__(v41, result))
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v23 >= *(v39 + 16) - 1)
  {
    sub_100494C4C(v22, a12);
    v32 = 0;
  }

  else
  {
    v26 = *(a5 + 20);
    v28 = v37;
    v27 = v38;
    v29 = sub_1002F178C(v37, v38, a5 + 8, v26);
    if (v30)
    {
      v31._countAndFlagsBits = v28;
      v31._object = v27;
      v32 = ByteBuffer._setStringSlowpath(_:at:)(v31, v26);
    }

    else
    {
      v32 = v29;
    }

    result = sub_100494C4C(v22, a12);
    v33 = *(a5 + 20);
    v34 = __CFADD__(v33, v32);
    v35 = v33 + v32;
    if (v34)
    {
      goto LABEL_13;
    }

    *(a5 + 20) = v35;
  }

  result = v25 + v32;
  if (__OFADD__(v25, v32))
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
  }

  return result;
}

uint64_t sub_1004915B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void *, uint64_t), uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10, void *a11)
{
  v25[0] = a3;
  v25[1] = a4;
  v26 = a5;
  v27 = WORD2(a5);
  v28 = BYTE6(a5);

  result = a6(v25, a8);
  v16 = a1 + result;
  if (__OFADD__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  if (*(a9 + 16) - 1 <= a2)
  {

    v21 = 0;
  }

  else
  {
    v17 = *(a8 + 20);
    v18 = sub_1002F178C(a10, a11, a8 + 8, v17);
    if (v19)
    {
      v20._countAndFlagsBits = a10;
      v20._object = a11;
      v18 = ByteBuffer._setStringSlowpath(_:at:)(v20, v17);
    }

    v21 = v18;

    v22 = *(a8 + 20);
    v23 = __CFADD__(v22, v21);
    v24 = v22 + v21;
    if (v23)
    {
      goto LABEL_12;
    }

    *(a8 + 20) = v24;
  }

  result = v16 + v21;
  if (__OFADD__(v16, v21))
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
  }

  return result;
}

uint64_t sub_100491774(uint64_t a1, __int128 *a2, uint64_t (*a3)(__int128 *, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, void *a8, uint64_t *a9, uint64_t *a10, uint64_t (*a11)(__int128 *))
{
  v17 = *(a2 + 8);
  v18 = a2[1];
  v30 = *a2;
  *v39 = *a2;
  *&v39[16] = v18;
  v19 = a2[3];
  *&v39[32] = a2[2];
  *&v39[48] = v19;
  *&v39[64] = v17;
  v35 = *&v39[8];
  v36 = *&v39[24];
  v37 = *&v39[40];
  v38 = *&v39[56];
  sub_10000E268(v39, &v31, a9, a10);
  result = a3(&v35, a5);
  v21 = a1 + result;
  if (__OFADD__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v30 >= *(a6 + 16) - 1)
  {
    v31 = v35;
    v32 = v36;
    v33 = v37;
    v34 = v38;
    a11(&v31);
    v26 = 0;
  }

  else
  {
    v22 = *(a5 + 20);
    v23 = sub_1002F178C(a7, a8, a5 + 8, v22);
    if (v24)
    {
      v25._countAndFlagsBits = a7;
      v25._object = a8;
      v23 = ByteBuffer._setStringSlowpath(_:at:)(v25, v22);
    }

    v26 = v23;
    v31 = v35;
    v32 = v36;
    v33 = v37;
    v34 = v38;
    result = a11(&v31);
    v27 = *(a5 + 20);
    v28 = __CFADD__(v27, v26);
    v29 = v27 + v26;
    if (v28)
    {
      goto LABEL_12;
    }

    *(a5 + 20) = v29;
  }

  result = v21 + v26;
  if (__OFADD__(v21, v26))
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
  }

  return result;
}

uint64_t sub_1004918F8(uint64_t a1, uint64_t a2, char a3, uint64_t (*a4)(char *, uint64_t), uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8, void *a9)
{
  v23 = a3;
  result = a4(&v23, a6);
  v15 = __OFADD__(a1, result);
  v16 = a1 + result;
  if (v15)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (*(a7 + 16) - 1 <= a2)
  {
    result = 0;
  }

  else
  {
    v17 = *(a6 + 20);
    result = sub_1002F178C(a8, a9, a6 + 8, v17);
    if (v18)
    {
      v19._countAndFlagsBits = a8;
      v19._object = a9;
      result = ByteBuffer._setStringSlowpath(_:at:)(v19, v17);
    }

    v20 = *(a6 + 20);
    v21 = __CFADD__(v20, result);
    v22 = v20 + result;
    if (v21)
    {
      goto LABEL_12;
    }

    *(a6 + 20) = v22;
  }

  v15 = __OFADD__(v16, result);
  result += v16;
  if (v15)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
  }

  return result;
}

void sub_1004919E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *, uint64_t, double), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v28._countAndFlagsBits = a7;
  v28._object = a8;
  v12 = *a2;
  v11 = *(a2 + 8);
  v14 = *(a2 + 16);
  v13 = *(a2 + 24);
  v15 = *(a2 + 32);
  v16 = *(a2 + 44);
  v17 = *(a2 + 40);
  v32[0] = v11;
  v32[1] = v14;
  v32[2] = v13;
  v32[3] = v15;
  v34 = v16;
  v33 = v17;
  v31 = v17 | (v16 << 32);
  v18 = sub_100447BE8(v11, v14, v13, v15, v31);
  v19 = a3(v32, a5, v18);
  v20 = a1 + v19;
  if (__OFADD__(a1, v19))
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v12 >= *(a6 + 16) - 1)
  {
    sub_1001FC9B4(v11, v14, v13, v15, v31);
    v24 = 0;
  }

  else
  {
    v30 = a1 + v19;
    v21 = *(a5 + 20);
    v22 = sub_1002F178C(v28._countAndFlagsBits, v28._object, a5 + 8, v21);
    if (v23)
    {
      v24 = ByteBuffer._setStringSlowpath(_:at:)(v28, v21);
    }

    else
    {
      v24 = v22;
    }

    sub_1001FC9B4(v11, v14, v13, v15, v31);
    v25 = *(a5 + 20);
    v26 = __CFADD__(v25, v24);
    v27 = v25 + v24;
    if (v26)
    {
      goto LABEL_13;
    }

    *(a5 + 20) = v27;
    v20 = v30;
  }

  if (__OFADD__(v20, v24))
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
  }
}

uint64_t sub_100491C4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void *, uint64_t, __n128), uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10, void *a11)
{
  v25[0] = a3;
  v25[1] = a4;
  v25[2] = a5;

  result = (a6)(v25, a8);
  v16 = a1 + result;
  if (__OFADD__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  if (*(a9 + 16) - 1 <= a2)
  {

    v21 = 0;
  }

  else
  {
    v17 = *(a8 + 20);
    v18 = sub_1002F178C(a10, a11, a8 + 8, v17);
    if (v19)
    {
      v20._countAndFlagsBits = a10;
      v20._object = a11;
      v18 = ByteBuffer._setStringSlowpath(_:at:)(v20, v17);
    }

    v21 = v18;

    v22 = *(a8 + 20);
    v23 = __CFADD__(v22, v21);
    v24 = v22 + v21;
    if (v23)
    {
      goto LABEL_12;
    }

    *(a8 + 20) = v24;
  }

  result = v16 + v21;
  if (__OFADD__(v16, v21))
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
  }

  return result;
}

uint64_t sub_100491DBC(uint64_t a1, uint64_t a2, uint64_t (*a3)(__int128 *, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, void *a8)
{
  v15 = *a2;
  v14 = *(a2 + 8);
  v16 = *(a2 + 24);
  v17 = *(a2 + 28);
  v18 = *(a2 + 30);
  v19 = *(a2 + 32);
  v20 = *(a2 + 40);
  v37 = *a2;
  *&v38 = v14;
  *(&v38 + 1) = *(a2 + 16);
  LODWORD(v39) = v16;
  WORD2(v39) = v17;
  BYTE6(v39) = v18;
  *(&v39 + 1) = v19;
  v40 = v20;
  v34 = v38;
  v35 = v39;
  v36 = v20;
  sub_10000E268(&v37, &v31, qword_1005DCF78, &unk_10050C820);
  result = a3(&v34, a5);
  v22 = a1 + result;
  if (__OFADD__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v15 >= *(a6 + 16) - 1)
  {
    v31 = v34;
    v32 = v35;
    v33 = v36;
    sub_1003A36B8(&v31);
    v27 = 0;
  }

  else
  {
    v23 = *(a5 + 20);
    v24 = sub_1002F178C(a7, a8, a5 + 8, v23);
    if (v25)
    {
      v26._countAndFlagsBits = a7;
      v26._object = a8;
      v24 = ByteBuffer._setStringSlowpath(_:at:)(v26, v23);
    }

    v27 = v24;
    v31 = v34;
    v32 = v35;
    v33 = v36;
    result = sub_1003A36B8(&v31);
    v28 = *(a5 + 20);
    v29 = __CFADD__(v28, v27);
    v30 = v28 + v27;
    if (v29)
    {
      goto LABEL_12;
    }

    *(a5 + 20) = v30;
  }

  result = v22 + v27;
  if (__OFADD__(v22, v27))
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
  }

  return result;
}

uint64_t sub_100491F40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void *, uint64_t), uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10, void *a11)
{
  v26[0] = a3;
  v26[1] = a4;
  v27 = a5;
  v29 = BYTE6(a5);
  v28 = WORD2(a5);
  sub_10045945C();
  result = a6(v26, a8);
  v17 = a1 + result;
  if (__OFADD__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  if (*(a9 + 16) - 1 <= a2)
  {
    sub_100020D08(a3);
    v22 = 0;
  }

  else
  {
    v30 = a1 + result;
    v18 = *(a8 + 20);
    v19 = sub_1002F178C(a10, a11, a8 + 8, v18);
    if (v20)
    {
      v21._countAndFlagsBits = a10;
      v21._object = a11;
      v19 = ByteBuffer._setStringSlowpath(_:at:)(v21, v18);
    }

    v22 = v19;
    result = sub_100020D08(a3);
    v23 = *(a8 + 20);
    v24 = __CFADD__(v23, v22);
    v25 = v23 + v22;
    v17 = v30;
    if (v24)
    {
      goto LABEL_12;
    }

    *(a8 + 20) = v25;
  }

  result = v17 + v22;
  if (__OFADD__(v17, v22))
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
  }

  return result;
}

uint64_t sub_100492104(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t (*a6)(void *, uint64_t), uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10, void *a11)
{
  v31[0] = a3;
  v31[1] = a4;
  v18 = HIBYTE(a5) & 1;
  v32 = a5;
  v34 = BYTE6(a5);
  v33 = WORD2(a5);
  v35 = HIBYTE(a5) & 1;
  sub_1003A30E8(a3, a4, a5, HIBYTE(a5) & 1);
  result = a6(v31, a8);
  v20 = a1 + result;
  if (__OFADD__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  if (*(a9 + 16) - 1 <= a2)
  {
    sub_1003A30F4(a3, a4, a5, v18);
    v26 = 0;
  }

  else
  {
    v30 = a1 + result;
    v21 = *(a8 + 20);
    v22 = v36;
    v23 = sub_1002F178C(a10, a11, a8 + 8, v21);
    v36 = v22;
    if (v24)
    {
      v25._countAndFlagsBits = a10;
      v25._object = a11;
      v23 = ByteBuffer._setStringSlowpath(_:at:)(v25, v21);
    }

    v26 = v23;
    result = sub_1003A30F4(a3, a4, a5, v18);
    v27 = *(a8 + 20);
    v28 = __CFADD__(v27, v26);
    v29 = v27 + v26;
    v20 = v30;
    if (v28)
    {
      goto LABEL_12;
    }

    *(a8 + 20) = v29;
  }

  result = v20 + v26;
  if (__OFADD__(v20, v26))
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
  }

  return result;
}

uint64_t sub_1004922C0(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4, uint64_t (*a5)(uint64_t *, uint64_t, double), uint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9, void *a10)
{
  v29 = a3;
  v30 = a4;
  v17 = sub_100459434(a3, a4);
  result = a5(&v29, a7, v17);
  v19 = __OFADD__(a1, result);
  v20 = a1 + result;
  if (v19)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (*(a8 + 16) - 1 <= a2)
  {
    sub_100459448(a3, a4);
    v25 = 0;
  }

  else
  {
    v21 = *(a7 + 20);
    v22 = sub_1002F178C(a9, a10, a7 + 8, v21);
    if (v23)
    {
      v24._countAndFlagsBits = a9;
      v24._object = a10;
      v22 = ByteBuffer._setStringSlowpath(_:at:)(v24, v21);
    }

    v25 = v22;
    result = sub_100459448(a3, a4);
    v26 = *(a7 + 20);
    v27 = __CFADD__(v26, v25);
    v28 = v26 + v25;
    if (v27)
    {
      goto LABEL_12;
    }

    *(a7 + 20) = v28;
  }

  result = v20 + v25;
  if (__OFADD__(v20, v25))
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
  }

  return result;
}

uint64_t sub_100492448(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t (*a5)(uint64_t *, uint64_t), uint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9, void *a10)
{
  v25 = a3;
  v26 = a4;

  result = a5(&v25, a7);
  v16 = a1 + result;
  if (__OFADD__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  if (*(a8 + 16) - 1 <= a2)
  {

    v21 = 0;
  }

  else
  {
    v17 = *(a7 + 20);
    v18 = sub_1002F178C(a9, a10, a7 + 8, v17);
    if (v19)
    {
      v20._countAndFlagsBits = a9;
      v20._object = a10;
      v18 = ByteBuffer._setStringSlowpath(_:at:)(v20, v17);
    }

    v21 = v18;

    v22 = *(a7 + 20);
    v23 = __CFADD__(v22, v21);
    v24 = v22 + v21;
    if (v23)
    {
      goto LABEL_12;
    }

    *(a7 + 20) = v24;
  }

  result = v16 + v21;
  if (__OFADD__(v16, v21))
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
  }

  return result;
}

uint64_t sub_10049255C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t *, uint64_t), uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8, void *a9)
{
  v23 = a3;
  result = a4(&v23, a6);
  v15 = __OFADD__(a1, result);
  v16 = a1 + result;
  if (v15)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (*(a7 + 16) - 1 <= a2)
  {
    result = 0;
  }

  else
  {
    v17 = *(a6 + 20);
    result = sub_1002F178C(a8, a9, a6 + 8, v17);
    if (v18)
    {
      v19._countAndFlagsBits = a8;
      v19._object = a9;
      result = ByteBuffer._setStringSlowpath(_:at:)(v19, v17);
    }

    v20 = *(a6 + 20);
    v21 = __CFADD__(v20, result);
    v22 = v20 + result;
    if (v21)
    {
      goto LABEL_12;
    }

    *(a6 + 20) = v22;
  }

  v15 = __OFADD__(v16, result);
  result += v16;
  if (v15)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
  }

  return result;
}

uint64_t sub_100492644(uint64_t a1, uint64_t *a2, uint64_t (*a3)(void *, uint64_t, __n128), uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, void *a8)
{
  v14 = *a2;
  v16 = a2[2];
  v15 = a2[3];
  v17 = a2[4];
  v29[0] = a2[1];
  v29[1] = v16;
  v29[2] = v15;
  v29[3] = v17;

  result = (a3)(v29, a5);
  v19 = __OFADD__(a1, result);
  v20 = a1 + result;
  if (v19)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v14 >= *(a6 + 16) - 1)
  {

    v25 = 0;
  }

  else
  {
    v21 = *(a5 + 20);
    v22 = sub_1002F178C(a7, a8, a5 + 8, v21);
    if (v23)
    {
      v24._countAndFlagsBits = a7;
      v24._object = a8;
      v22 = ByteBuffer._setStringSlowpath(_:at:)(v24, v21);
    }

    v25 = v22;

    v26 = *(a5 + 20);
    v27 = __CFADD__(v26, v25);
    v28 = v26 + v25;
    if (v27)
    {
      goto LABEL_12;
    }

    *(a5 + 20) = v28;
  }

  result = v20 + v25;
  if (__OFADD__(v20, v25))
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
  }

  return result;
}

uint64_t sub_100492780(uint64_t a1, uint64_t a2, int a3, uint64_t (*a4)(int *, uint64_t), uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8, void *a9)
{
  v23 = a3;
  result = a4(&v23, a6);
  v15 = __OFADD__(a1, result);
  v16 = a1 + result;
  if (v15)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (*(a7 + 16) - 1 <= a2)
  {
    result = 0;
  }

  else
  {
    v17 = *(a6 + 20);
    result = sub_1002F178C(a8, a9, a6 + 8, v17);
    if (v18)
    {
      v19._countAndFlagsBits = a8;
      v19._object = a9;
      result = ByteBuffer._setStringSlowpath(_:at:)(v19, v17);
    }

    v20 = *(a6 + 20);
    v21 = __CFADD__(v20, result);
    v22 = v20 + result;
    if (v21)
    {
      goto LABEL_12;
    }

    *(a6 + 20) = v22;
  }

  v15 = __OFADD__(v16, result);
  result += v16;
  if (v15)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
  }

  return result;
}

uint64_t sub_100492868(uint64_t a1, uint64_t a2, uint64_t (*a3)(__int128 *, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, void *a8)
{
  v15 = *a2;
  v14 = *(a2 + 8);
  v16 = *(a2 + 24);
  v17 = *(a2 + 28);
  v18 = *(a2 + 30);
  v19 = *(a2 + 48);
  v39 = *a2;
  *&v40 = v14;
  *(&v40 + 1) = *(a2 + 16);
  *v41 = v16;
  *&v41[4] = v17;
  v41[6] = v18;
  *&v41[8] = *(a2 + 32);
  *&v41[24] = v19;
  v42 = *(a2 + 56);
  v35 = v40;
  v36 = *v41;
  v37 = *&v41[16];
  v38 = v42;
  sub_10000E268(&v39, &v31, &qword_1005DCF18, &unk_10050C7D0);
  result = a3(&v35, a5);
  v21 = __OFADD__(a1, result);
  v22 = a1 + result;
  if (v21)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v15 >= *(a6 + 16) - 1)
  {
    v31 = v35;
    v32 = v36;
    v33 = v37;
    v34 = v38;
    sub_1002EED64(&v31);
    v27 = 0;
  }

  else
  {
    v23 = *(a5 + 20);
    v24 = sub_1002F178C(a7, a8, a5 + 8, v23);
    if (v25)
    {
      v26._countAndFlagsBits = a7;
      v26._object = a8;
      v24 = ByteBuffer._setStringSlowpath(_:at:)(v26, v23);
    }

    v27 = v24;
    v31 = v35;
    v32 = v36;
    v33 = v37;
    v34 = v38;
    result = sub_1002EED64(&v31);
    v28 = *(a5 + 20);
    v29 = __CFADD__(v28, v27);
    v30 = v28 + v27;
    if (v29)
    {
      goto LABEL_12;
    }

    *(a5 + 20) = v30;
  }

  result = v22 + v27;
  if (__OFADD__(v22, v27))
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
  }

  return result;
}

uint64_t sub_100492A08(uint64_t a1, uint64_t a2, uint64_t (*a3)(__int128 *, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, void *a8)
{
  v15 = *a2;
  v14 = *(a2 + 8);
  v16 = *(a2 + 24);
  v17 = *(a2 + 28);
  v18 = *(a2 + 30);
  v19 = *(a2 + 16);
  v20 = *(a2 + 32);
  v23 = *(a2 + 48);
  v21 = a2 + 48;
  v22 = v23;
  LOWORD(v23) = *(v21 + 4);
  v24 = *(v21 + 6);
  v40 = v15;
  *&v41 = v14;
  *(&v41 + 1) = v19;
  *v42 = v16;
  *&v42[4] = v17;
  v42[6] = v18;
  *&v42[8] = v20;
  v42[30] = v24;
  *&v42[28] = v23;
  *&v42[24] = v22;
  v38 = v41;
  v39[0] = *v42;
  *(v39 + 15) = *&v42[15];
  sub_10000E268(&v40, &v36, &qword_1005DCF20, &qword_100508A80);
  result = a3(&v38, a5);
  v26 = __OFADD__(a1, result);
  v27 = a1 + result;
  if (v26)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v15 >= *(a6 + 16) - 1)
  {
    v36 = v38;
    v37[0] = v39[0];
    *(v37 + 15) = *(v39 + 15);
    sub_1003A315C(&v36);
    v32 = 0;
  }

  else
  {
    v28 = *(a5 + 20);
    v29 = sub_1002F178C(a7, a8, a5 + 8, v28);
    if (v30)
    {
      v31._countAndFlagsBits = a7;
      v31._object = a8;
      v29 = ByteBuffer._setStringSlowpath(_:at:)(v31, v28);
    }

    v32 = v29;
    v36 = v38;
    v37[0] = v39[0];
    *(v37 + 15) = *(v39 + 15);
    result = sub_1003A315C(&v36);
    v33 = *(a5 + 20);
    v34 = __CFADD__(v33, v32);
    v35 = v33 + v32;
    if (v34)
    {
      goto LABEL_12;
    }

    *(a5 + 20) = v35;
  }

  result = v27 + v32;
  if (__OFADD__(v27, v32))
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
  }

  return result;
}

uint64_t sub_100492BAC(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t *, uint64_t, __n128), uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, void *a8)
{
  v15 = *a2;
  v14 = *(a2 + 8);
  v16 = *(a2 + 16);
  v17 = *(a2 + 24);
  v20 = *(a2 + 40);
  v18 = a2 + 40;
  v19 = v20;
  LOWORD(v20) = *(v18 + 4);
  v21 = *(v18 + 6);
  v33[0] = v14;
  v33[1] = v16;
  v34 = v17;
  v37 = v21;
  v36 = v20;
  v35 = v19;

  result = (a3)(v33, a5);
  v23 = __OFADD__(a1, result);
  v24 = a1 + result;
  if (v23)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v15 >= *(a6 + 16) - 1)
  {

    v29 = 0;
  }

  else
  {
    v25 = *(a5 + 20);
    v26 = sub_1002F178C(a7, a8, a5 + 8, v25);
    if (v27)
    {
      v28._countAndFlagsBits = a7;
      v28._object = a8;
      v26 = ByteBuffer._setStringSlowpath(_:at:)(v28, v25);
    }

    v29 = v26;

    v30 = *(a5 + 20);
    v31 = __CFADD__(v30, v29);
    v32 = v30 + v29;
    if (v31)
    {
      goto LABEL_12;
    }

    *(a5 + 20) = v32;
  }

  result = v24 + v29;
  if (__OFADD__(v24, v29))
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
  }

  return result;
}

uint64_t sub_100492D08(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = a3;
  v8 = *(v3 + 20);
  result = sub_1002F178C(0x5BuLL, 0xE100000000000000, v3 + 8, v8);
  if (v10)
  {
    v11._countAndFlagsBits = 91;
    v11._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v11, v8);
  }

  v12 = result;
  v13 = *(v3 + 20);
  v14 = (v13 + result);
  if (__CFADD__(v13, result))
  {
    goto LABEL_36;
  }

  *(v3 + 20) = v14;
  if (!a1)
  {
    v22 = 0;
    goto LABEL_28;
  }

  v41 = a1;
  v15 = a1[2];
  if (v15)
  {
    result = sub_1002F178C(0, 0xE000000000000000, v3 + 8, v14);
    if (v16)
    {
      v17._countAndFlagsBits = 0;
      v17._object = 0xE000000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v17, v14);
    }

    v18 = result;
    v19 = *(v4 + 20);
    v20 = __CFADD__(v19, result);
    v21 = v19 + result;
    if (v20)
    {
      goto LABEL_42;
    }

    *(v4 + 20) = v21;
  }

  else
  {
    v18 = 0;
  }

  __chkstk_darwin(result);
  v40[2] = sub_1004945DC;
  v40[3] = 0;
  v40[4] = v4;
  v40[5] = &v41;
  v40[6] = 46;
  v40[7] = 0xE100000000000000;
  result = sub_100452D20(0, sub_100494B78, v40, a1);
  v23 = v18 + result;
  if (__OFADD__(v18, result))
  {
    goto LABEL_40;
  }

  if (!v15)
  {
    v29 = v18 + result;
    goto LABEL_18;
  }

  v24 = *(v4 + 20);
  result = sub_1002F178C(0, 0xE000000000000000, v4 + 8, v24);
  if (v25)
  {
    v26._countAndFlagsBits = 0;
    v26._object = 0xE000000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v26, v24);
  }

  v27 = *(v4 + 20);
  v20 = __CFADD__(v27, result);
  v28 = v27 + result;
  if (v20)
  {
    goto LABEL_43;
  }

  *(v4 + 20) = v28;
  v29 = v23 + result;
  if (__OFADD__(v23, result))
  {
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

LABEL_18:
  if (a2)
  {
    v30 = 0;
  }

  else
  {
    v30 = v5 == 2;
  }

  v32 = !v30 && v15 != 0;
  result = sub_1004942FC(a2, v5, v32);
  v22 = v29 + result;
  if (__OFADD__(v29, result))
  {
    goto LABEL_41;
  }

LABEL_28:
  v33 = v12 + v22;
  if (__OFADD__(v12, v22))
  {
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v34 = *(v4 + 20);
  result = sub_1002F178C(0x5DuLL, 0xE100000000000000, v4 + 8, v34);
  if (v35)
  {
    v36._countAndFlagsBits = 93;
    v36._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v36, v34);
  }

  v37 = *(v4 + 20);
  v20 = __CFADD__(v37, result);
  v38 = v37 + result;
  if (v20)
  {
    goto LABEL_38;
  }

  *(v4 + 20) = v38;
  v39 = __OFADD__(v33, result);
  result += v33;
  if (v39)
  {
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
  }

  return result;
}

uint64_t sub_100492F74(void *a1)
{
  v3 = *(v1 + 20);
  result = sub_1002F178C(0x5BuLL, 0xE100000000000000, v1 + 8, v3);
  if (v5)
  {
    v6._countAndFlagsBits = 91;
    v6._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v6, v3);
  }

  v7 = result;
  v8 = *(v1 + 20);
  v9 = __CFADD__(v8, result);
  v10 = v8 + result;
  if (v9)
  {
    __break(1u);
    goto LABEL_11;
  }

  *(v1 + 20) = v10;
  result = sub_100493F10(a1);
  v11 = v7 + result;
  if (__OFADD__(v7, result))
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v12 = *(v1 + 20);
  result = sub_1002F178C(0x5DuLL, 0xE100000000000000, v1 + 8, v12);
  if (v13)
  {
    v14._countAndFlagsBits = 93;
    v14._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v14, v12);
  }

  v15 = *(v1 + 20);
  v9 = __CFADD__(v15, result);
  v16 = v15 + result;
  if (v9)
  {
    goto LABEL_12;
  }

  *(v1 + 20) = v16;
  v17 = __OFADD__(v11, result);
  result += v11;
  if (v17)
  {
LABEL_13:
    __break(1u);
  }

  return result;
}

uint64_t SectionSpecifier.init(part:kind:)(uint64_t result, uint64_t a2, unsigned __int8 a3)
{
  if (*(result + 16))
  {
    v3 = 0;
  }

  else
  {
    v3 = a3 >= 2u;
  }

  if (v3 && a2 == 2)
  {
    __break(1u);
  }

  return result;
}

uint64_t *SectionSpecifier.complete.unsafeMutableAddressor()
{
  if (qword_1005DBBD8 != -1)
  {
    swift_once();
  }

  return &static SectionSpecifier.complete;
}

uint64_t SectionSpecifier.debugDescription.getter(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  if (qword_1005DB9D0 != -1)
  {
    swift_once();
  }

  v6 = static ByteBufferAllocator.zeroCapacityWithDefaultAllocator;
  v7 = dword_1005DE398;
  v8 = word_1005DE39C;
  v9 = byte_1005DE39E;

  LOBYTE(v19) = 0;
  BYTE5(v19) = 0;
  *(&v19 + 1) = 65537;
  *(&v19 + 1) = v6;
  *&v20 = qword_1005DE390;
  DWORD2(v20) = v7;
  WORD6(v20) = v8;
  BYTE14(v20) = v9;
  *&v21 = sub_1003DBA20(_swiftEmptyArrayStorage);
  *(&v21 + 1) = v10;
  v22 = v11;
  sub_100493F10(a1);
  if (a2)
  {
    v12 = 0;
  }

  else
  {
    v12 = v3 == 2;
  }

  v14 = !v12 && a1[2] != 0;
  result = sub_1004942FC(a2, v3, v14);
  if (DWORD1(v20) < v20)
  {
    __break(1u);
  }

  else if (DWORD2(v20) - (BYTE14(v20) | (WORD6(v20) << 8)) >= DWORD1(v20))
  {
    v23[0] = *(&v19 + 1);
    v23[1] = v20;
    v24 = DWORD2(v20);
    v25 = WORD6(v20);
    v26 = BYTE14(v20);
    v27 = v20;
    v28 = DWORD1(v20);
    *&v17[0] = 0;
    *(&v17[0] + 1) = 0xE000000000000000;

    sub_1004A5874(DWORD1(v20) - v20);
    sub_1003BB2E4(v23, v17);
    sub_1003A52D0(v23);
    v16 = *&v17[0];
    v17[0] = v19;
    v17[1] = v20;
    v17[2] = v21;
    v18 = v22;
    sub_1003E5C94(v17);
    return v16;
  }

  __break(1u);
  return result;
}

void *SectionSpecifier.Part.debugDescription.getter(void *a1)
{
  if (qword_1005DB9D0 != -1)
  {
    swift_once();
  }

  v2 = static ByteBufferAllocator.zeroCapacityWithDefaultAllocator;
  v3 = dword_1005DE398;
  v4 = word_1005DE39C;
  v5 = byte_1005DE39E;

  LOBYTE(v10) = 0;
  BYTE5(v10) = 0;
  *(&v10 + 1) = 65537;
  *(&v10 + 1) = v2;
  *&v11 = qword_1005DE390;
  DWORD2(v11) = v3;
  WORD6(v11) = v4;
  BYTE14(v11) = v5;
  *&v12 = sub_1003DBA20(_swiftEmptyArrayStorage);
  *(&v12 + 1) = v6;
  v13 = v7;
  result = sub_100493F10(a1);
  if (DWORD1(v11) < v11)
  {
    __break(1u);
  }

  else if (v3 - (v5 | (v4 << 8)) >= DWORD1(v11))
  {
    v14[0] = v2;
    v14[1] = v11;
    v15 = v3;
    v16 = WORD6(v11);
    v17 = v5;
    v18 = v11;
    v19 = DWORD1(v11);
    *&v20[0] = 0;
    *(&v20[0] + 1) = 0xE000000000000000;

    sub_1004A5874(DWORD1(v11) - v11);
    sub_1003BB2E4(v14, v20);
    sub_1003A52D0(v14);
    v9 = *&v20[0];
    v20[0] = v10;
    v20[1] = v11;
    v20[2] = v12;
    v21 = v13;
    sub_1003E5C94(v20);
    return v9;
  }

  __break(1u);
  return result;
}

void SectionSpecifier.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v7 = *(a2 + 16);
  sub_1004A6EB4(v7);
  if (v7)
  {
    v8 = (a2 + 32);
    do
    {
      v9 = *v8++;
      sub_1004A6EB4(v9);
      --v7;
    }

    while (v7);
  }

  if (a4)
  {
    if (a4 == 1)
    {
      sub_1004A6EB4(3uLL);
      v10 = *(a3 + 16);
      sub_1004A6EB4(v10);
      if (v10)
      {
        v11 = a3 + 40;
        do
        {

          _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

          v11 += 16;
          --v10;
        }

        while (v10);
      }
    }

    else
    {
      sub_1004A6EB4(qword_10050C830[a3]);
    }
  }

  else
  {
    sub_1004A6EB4(2uLL);
    v12 = *(a3 + 16);
    sub_1004A6EB4(v12);
    if (v12)
    {
      v13 = a3 + 40;
      do
      {

        _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

        v13 += 16;
        --v12;
      }

      while (v12);
    }
  }
}

Swift::Int SectionSpecifier.hashValue.getter(uint64_t a1, uint64_t a2, char a3)
{
  sub_1004A6E94();
  SectionSpecifier.hash(into:)(v7, a1, a2, a3);
  return sub_1004A6F14();
}

Swift::Int sub_1004935E0()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  sub_1004A6E94();
  SectionSpecifier.hash(into:)(v5, v1, v2, v3);
  return sub_1004A6F14();
}

Swift::Int sub_100493648(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  sub_1004A6E94();
  SectionSpecifier.hash(into:)(v6, v2, v3, v4);
  return sub_1004A6F14();
}

void sub_1004936B8()
{
  static SectionSpecifier.complete = _swiftEmptyArrayStorage;
  unk_1005DEA70 = 0;
  byte_1005DEA78 = 2;
}

uint64_t static SectionSpecifier.complete.getter()
{
  if (qword_1005DBBD8 != -1)
  {
    swift_once();
  }

  v0 = static SectionSpecifier.complete;
  v1 = unk_1005DEA70;
  v2 = byte_1005DEA78;

  sub_100051190(v1, v2);
  return v0;
}

void sub_10049375C()
{
  static SectionSpecifier.header = _swiftEmptyArrayStorage;
  *algn_1005DEA88 = 1;
  byte_1005DEA90 = 2;
}

uint64_t *SectionSpecifier.header.unsafeMutableAddressor()
{
  if (qword_1005DBBE0 != -1)
  {
    swift_once();
  }

  return &static SectionSpecifier.header;
}

uint64_t static SectionSpecifier.header.getter()
{
  if (qword_1005DBBE0 != -1)
  {
    swift_once();
  }

  v0 = static SectionSpecifier.header;
  v1 = *algn_1005DEA88;
  v2 = byte_1005DEA90;

  sub_100051190(v1, v2);
  return v0;
}

void sub_100493854()
{
  static SectionSpecifier.text = _swiftEmptyArrayStorage;
  unk_1005DEAA0 = 3;
  byte_1005DEAA8 = 2;
}

uint64_t *SectionSpecifier.text.unsafeMutableAddressor()
{
  if (qword_1005DBBE8 != -1)
  {
    swift_once();
  }

  return &static SectionSpecifier.text;
}

uint64_t static SectionSpecifier.text.getter()
{
  if (qword_1005DBBE8 != -1)
  {
    swift_once();
  }

  v0 = static SectionSpecifier.text;
  v1 = unk_1005DEAA0;
  v2 = byte_1005DEAA8;

  sub_100051190(v1, v2);
  return v0;
}

uint64_t static SectionSpecifier.Kind.< infix(_:_:)(uint64_t a1, unsigned __int8 a2, unint64_t a3, unsigned __int8 a4)
{
  if (a2 <= 1u)
  {
    return a4 > 1u && a3 > 2;
  }

  v6 = a4 != 2 || (a3 & 0xFFFFFFFFFFFFFFFDLL) != 0;
  if (a1 != 2)
  {
    v6 = 0;
  }

  if (a3)
  {
    v7 = 0;
  }

  else
  {
    v7 = a4 == 2;
  }

  v8 = !v7;
  if (a1)
  {
    v9 = 1;
  }

  else
  {
    v9 = v8;
  }

  if (a1 <= 1)
  {
    return v9;
  }

  else
  {
    return v6;
  }
}

void SectionSpecifier.Part.hash(into:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  sub_1004A6EB4(v3);
  if (v3)
  {
    v4 = (a2 + 32);
    do
    {
      v5 = *v4++;
      sub_1004A6EB4(v5);
      --v3;
    }

    while (v3);
  }
}

Swift::Int SectionSpecifier.Part.hashValue.getter(uint64_t a1)
{
  sub_1004A6E94();
  v2 = *(a1 + 16);
  sub_1004A6EB4(v2);
  if (v2)
  {
    v3 = (a1 + 32);
    do
    {
      v4 = *v3++;
      sub_1004A6EB4(v4);
      --v2;
    }

    while (v2);
  }

  return sub_1004A6F14();
}

void sub_100493BC8()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  sub_1004A6EB4(v2);
  if (v2)
  {
    v3 = (v1 + 32);
    do
    {
      v4 = *v3++;
      sub_1004A6EB4(v4);
      --v2;
    }

    while (v2);
  }
}

Swift::Int sub_100493C1C(uint64_t a1)
{
  v2 = *v1;
  sub_1004A6E94();
  v3 = *(v2 + 16);
  sub_1004A6EB4(v3);
  if (v3)
  {
    v4 = (v2 + 32);
    do
    {
      v5 = *v4++;
      sub_1004A6EB4(v5);
      --v3;
    }

    while (v3);
  }

  return sub_1004A6F14();
}

void SectionSpecifier.Kind.hash(into:)(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    if (a3 == 1)
    {
      sub_1004A6EB4(3uLL);
      v4 = *(a2 + 16);
      sub_1004A6EB4(v4);
      if (v4)
      {
        v5 = a2 + 40;
        do
        {

          _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

          v5 += 16;
          --v4;
        }

        while (v4);
      }
    }

    else
    {
      sub_1004A6EB4(qword_10050C830[a2]);
    }
  }

  else
  {
    sub_1004A6EB4(2uLL);
    v6 = *(a2 + 16);
    sub_1004A6EB4(v6);
    if (v6)
    {
      v7 = a2 + 40;
      do
      {

        _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

        v7 += 16;
        --v6;
      }

      while (v6);
    }
  }
}

Swift::Int SectionSpecifier.Kind.hashValue.getter(uint64_t a1, char a2)
{
  sub_1004A6E94();
  SectionSpecifier.Kind.hash(into:)(v5, a1, a2);
  return sub_1004A6F14();
}

Swift::Int sub_100493DE0()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_1004A6E94();
  SectionSpecifier.Kind.hash(into:)(v4, v1, v2);
  return sub_1004A6F14();
}

Swift::Int sub_100493E3C(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  sub_1004A6E94();
  SectionSpecifier.Kind.hash(into:)(v5, v2, v3);
  return sub_1004A6F14();
}

void *sub_100493F10(void *result)
{
  v2 = v1;
  v3 = result;
  v20 = result;
  v4 = result[2];
  if (v4)
  {
    v5 = *(v1 + 20);
    result = sub_1002F178C(0, 0xE000000000000000, v1 + 8, v5);
    if (v6)
    {
      v7._countAndFlagsBits = 0;
      v7._object = 0xE000000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v7, v5);
    }

    v8 = result;
    v9 = *(v2 + 20);
    v10 = __CFADD__(v9, result);
    v11 = v9 + result;
    if (v10)
    {
      goto LABEL_17;
    }

    *(v2 + 20) = v11;
  }

  else
  {
    v8 = 0;
  }

  __chkstk_darwin(result);
  v19[2] = sub_1004945DC;
  v19[3] = 0;
  v19[4] = v2;
  v19[5] = &v20;
  v19[6] = 46;
  v19[7] = 0xE100000000000000;
  result = sub_100452D20(0, sub_100494CDC, v19, v3);
  v12 = result + v8;
  if (__OFADD__(v8, result))
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (!v4)
  {
    return (result + v8);
  }

  v13 = *(v2 + 20);
  result = sub_1002F178C(0, 0xE000000000000000, v2 + 8, v13);
  if (v14)
  {
    v15._countAndFlagsBits = 0;
    v15._object = 0xE000000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v15, v13);
  }

  v16 = *(v2 + 20);
  v10 = __CFADD__(v16, result);
  v17 = v16 + result;
  if (v10)
  {
    goto LABEL_18;
  }

  *(v2 + 20) = v17;
  v18 = __OFADD__(v12, result);
  result = (result + v12);
  if (v18)
  {
    __break(1u);
    goto LABEL_16;
  }

  return result;
}

uint64_t sub_100494094(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  v3 = *(a2 + 8);
  if (!*(a1 + 8) || *(a1 + 8) == 1)
  {
    return v3 > 1 && v2 > 2;
  }

  v6 = *a1;
  v7 = v3 != 2 || (v2 & 0xFFFFFFFFFFFFFFFDLL) != 0;
  if (v6 != 2)
  {
    v7 = 0;
  }

  if (v2)
  {
    v8 = 0;
  }

  else
  {
    v8 = v3 == 2;
  }

  v9 = !v8;
  if (v6)
  {
    v9 = 1;
  }

  if (v6 <= 1)
  {
    return v9;
  }

  else
  {
    return v7;
  }
}

uint64_t sub_100494100(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  if (*(a2 + 8) && *(a2 + 8) != 1)
  {
    v7 = *a2;
    v8 = v3 != 2 || (v2 & 0xFFFFFFFFFFFFFFFDLL) != 0;
    if (v7 != 2)
    {
      v8 = 0;
    }

    if (v2)
    {
      v9 = 0;
    }

    else
    {
      v9 = v3 == 2;
    }

    v10 = !v9;
    if (v7)
    {
      v10 = 1;
    }

    if (v7 > 1)
    {
      v10 = v8;
    }

    return v10 ^ 1u;
  }

  else
  {
    v5 = v3 > 1 && v2 > 2;
    return !v5;
  }
}

uint64_t sub_100494174(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  v3 = *(a2 + 8);
  if (*(a1 + 8) && *(a1 + 8) != 1)
  {
    v7 = *a1;
    v8 = v3 != 2 || (v2 & 0xFFFFFFFFFFFFFFFDLL) != 0;
    if (v7 != 2)
    {
      v8 = 0;
    }

    if (v2)
    {
      v9 = 0;
    }

    else
    {
      v9 = v3 == 2;
    }

    v10 = !v9;
    if (v7)
    {
      v10 = 1;
    }

    if (v7 > 1)
    {
      v10 = v8;
    }

    return v10 ^ 1u;
  }

  else
  {
    v5 = v3 > 1 && v2 > 2;
    return !v5;
  }
}

uint64_t sub_1004941E8(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  if (!*(a2 + 8) || *(a2 + 8) == 1)
  {
    return v3 > 1 && v2 > 2;
  }

  v6 = *a2;
  v7 = v3 != 2 || (v2 & 0xFFFFFFFFFFFFFFFDLL) != 0;
  if (v6 != 2)
  {
    v7 = 0;
  }

  if (v2)
  {
    v8 = 0;
  }

  else
  {
    v8 = v3 == 2;
  }

  v9 = !v8;
  if (v6)
  {
    v9 = 1;
  }

  if (v6 <= 1)
  {
    return v9;
  }

  else
  {
    return v7;
  }
}

Swift::Bool __swiftcall SectionSpecifier.Part.isSubPart(of:)(NIOIMAPCore2::SectionSpecifier::Part of)
{
  v2 = *(of.array._rawValue + 2);
  if (v2 >= *(v1 + 16))
  {
    return 0;
  }

  v3 = (v1 + 32);
  v4 = (of.array._rawValue + 32);
  do
  {
    result = v2 == 0;
    if (!v2)
    {
      break;
    }

    v7 = *v3++;
    v6 = v7;
    v8 = *v4++;
    --v2;
  }

  while (v6 == v8);
  return result;
}

Swift::Bool __swiftcall SectionSpecifier.Part.isChildPart(of:)(NIOIMAPCore2::SectionSpecifier::Part of)
{
  v2 = v1[2];
  v3 = *(of.array._rawValue + 2);
  if (v2 != v3 + 1 || v3 != ((v2 - 1) & 0x7FFFFFFFFFFFFFFFLL))
  {
    return 0;
  }

  if (v3 && of.array._rawValue != v1)
  {
    v4 = v1 + 4;
    v5 = (of.array._rawValue + 32);
    while (1)
    {
      v7 = *v5++;
      v6 = v7;
      v8 = *v4++;
      if (v6 != v8)
      {
        break;
      }

      if (!--v3)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_1004942FC(uint64_t a1, unsigned __int8 a2, char a3)
{
  v6 = 0;
  if ((a3 & 1) == 0)
  {
    goto LABEL_13;
  }

  v7 = *(v3 + 20);
  result = sub_1002F178C(0x2EuLL, 0xE100000000000000, v3 + 8, v7);
  if (v9)
  {
    v10._countAndFlagsBits = 46;
    v10._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v10, v7);
  }

  v6 = result;
  v11 = *(v3 + 20);
  v12 = __CFADD__(v11, result);
  v13 = v11 + result;
  if (v12)
  {
    __break(1u);
    goto LABEL_43;
  }

  *(v3 + 20) = v13;
  for (i = a2; !a2; i = a2)
  {
    a2 = 73;
    v15 = *(v3 + 20);
    result = sub_1002F178C(0x462E524544414548uLL, 0xEE002053444C4549, v3 + 8, v15);
    if (v16)
    {
      v17._countAndFlagsBits = 0x462E524544414548;
      v17._object = 0xEE002053444C4549;
      result = ByteBuffer._setStringSlowpath(_:at:)(v17, v15);
    }

    v18 = *(v3 + 20);
    v12 = __CFADD__(v18, result);
    v19 = v18 + result;
    if (v12)
    {
      goto LABEL_44;
    }

    *(v3 + 20) = v19;
    v20 = v6 + result;
    if (__OFADD__(v6, result))
    {
      goto LABEL_46;
    }

    v21 = sub_100430C04(a1);
    a1 = v20 + v21;
    if (!__OFADD__(v20, v21))
    {
      return a1;
    }

    __break(1u);
LABEL_13:
    ;
  }

  if (i != 1)
  {
    goto LABEL_22;
  }

  v22 = *(v3 + 20);
  result = sub_1002F178C(0xD000000000000012, 0x80000001004B0C10, v3 + 8, v22);
  if (v23)
  {
    v24._object = 0x80000001004B0C10;
    v24._countAndFlagsBits = 0xD000000000000012;
    result = ByteBuffer._setStringSlowpath(_:at:)(v24, v22);
  }

  v25 = *(v3 + 20);
  v12 = __CFADD__(v25, result);
  v26 = v25 + result;
  if (v12)
  {
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  *(v3 + 20) = v26;
  v27 = v6 + result;
  if (__OFADD__(v6, result))
  {
    goto LABEL_45;
  }

  v28 = sub_100430C04(a1);
  a1 = v27 + v28;
  if (!__OFADD__(v27, v28))
  {
    return a1;
  }

  __break(1u);
LABEL_22:
  if (a1 <= 1)
  {
    if (!a1)
    {
      return a1;
    }

    v29 = *(v3 + 20);
    result = sub_1002F178C(0x524544414548uLL, 0xE600000000000000, v3 + 8, v29);
    if (v30)
    {
      v31._countAndFlagsBits = 0x524544414548;
      v31._object = 0xE600000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v31, v29);
    }

    v32 = *(v3 + 20);
    v12 = __CFADD__(v32, result);
    v33 = v32 + result;
    if (v12)
    {
LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
      goto LABEL_50;
    }

    *(v3 + 20) = v33;
    a1 = v6 + result;
    if (!__OFADD__(v6, result))
    {
      return a1;
    }

    __break(1u);
  }

  if (a1 == 2)
  {
    v34 = *(v3 + 20);
    result = sub_1002F178C(0x454D494DuLL, 0xE400000000000000, v3 + 8, v34);
    if (v35)
    {
      v36._countAndFlagsBits = 1162692941;
      v36._object = 0xE400000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v36, v34);
    }

    v37 = *(v3 + 20);
    v12 = __CFADD__(v37, result);
    v38 = v37 + result;
    if (v12)
    {
      goto LABEL_48;
    }

    *(v3 + 20) = v38;
    a1 = v6 + result;
    if (!__OFADD__(v6, result))
    {
      return a1;
    }

    __break(1u);
  }

  v39 = *(v3 + 20);
  result = sub_1002F178C(0x54584554uLL, 0xE400000000000000, v3 + 8, v39);
  if (v40)
  {
    v41._countAndFlagsBits = 1415071060;
    v41._object = 0xE400000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v41, v39);
  }

  v42 = *(v3 + 20);
  v12 = __CFADD__(v42, result);
  v43 = v42 + result;
  if (v12)
  {
    goto LABEL_49;
  }

  *(v3 + 20) = v43;
  a1 = v6 + result;
  if (!__OFADD__(v6, result))
  {
    return a1;
  }

LABEL_50:
  __break(1u);
  return result;
}

void *sub_1004945DC(void *result, uint64_t a2)
{
  if ((*result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (HIDWORD(*result))
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v3 = sub_1004A6CE4();
  v5 = v4;
  v6 = *(a2 + 20);
  v7 = sub_1002F178C(v3, v4, a2 + 8, v6);
  if (v8)
  {
    v9._countAndFlagsBits = v3;
    v9._object = v5;
    v7 = ByteBuffer._setStringSlowpath(_:at:)(v9, v6);
  }

  v10 = v7;

  v11 = *(a2 + 20);
  v12 = __CFADD__(v11, v10);
  v13 = v11 + v10;
  if (!v12)
  {
    *(a2 + 20) = v13;
    return v10;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_1004946A0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t (*a3)(uint64_t *, uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X5>, unint64_t a7@<X6>, void *a8@<X7>, uint64_t *a9@<X8>)
{
  result = sub_10049255C(*a1, *a2, a2[1], a3, a4, a5, *a6, a7, a8);
  if (!v9)
  {
    *a9 = result;
  }

  return result;
}

uint64_t _s12NIOIMAPCore216SectionSpecifierV4KindO21__derived_enum_equalsySbAE_AEtFZ_0(uint64_t a1, char a2, uint64_t a3, char a4)
{
  if (!a2)
  {
    if (!a4)
    {
      return sub_10020FB40(a1, a3);
    }

    return 0;
  }

  if (a2 == 1)
  {
    if (a4 == 1)
    {
      return sub_10020FB40(a1, a3);
    }

    return 0;
  }

  if (a1 > 1)
  {
    if (a1 == 2)
    {
      return a4 == 2 && a3 == 2;
    }

    else
    {
      return a4 == 2 && a3 == 3;
    }
  }

  else
  {
    if (!a1)
    {
      return a4 == 2 && !a3;
    }

    return a4 == 2 && a3 == 1;
  }
}

uint64_t _s12NIOIMAPCore216SectionSpecifierV4PartV23__derived_struct_equalsySbAE_AEtFZ_0(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

BOOL _s12NIOIMAPCore216SectionSpecifierV23__derived_struct_equalsySbAC_ACtFZ_0(_BOOL8 result, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  v6 = *(result + 16);
  if (v6 != *(a4 + 16))
  {
    return 0;
  }

  if (v6)
  {
    v7 = result == a4;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
LABEL_10:
    if (a3)
    {
      if (a3 != 1)
      {
        if (a2 > 1)
        {
          if (a2 == 2)
          {
            if (a6 != 2 || a5 != 2)
            {
              return 0;
            }
          }

          else if (a6 != 2 || a5 != 3)
          {
            return 0;
          }
        }

        else if (a2)
        {
          if (a6 != 2 || a5 != 1)
          {
            return 0;
          }
        }

        else if (a6 != 2 || a5)
        {
          return 0;
        }

        return 1;
      }

      if (a6 == 1)
      {
        return (sub_10020FB40(a2, a5) & 1) != 0;
      }
    }

    else if (!a6)
    {
      return (sub_10020FB40(a2, a5) & 1) != 0;
    }

    return 0;
  }

  v8 = (result + 32);
  v9 = (a4 + 32);
  while (v6)
  {
    if (*v8 != *v9)
    {
      return 0;
    }

    ++v8;
    ++v9;
    if (!--v6)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

BOOL _s12NIOIMAPCore216SectionSpecifierV4PartV1loiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  if (v3 >= v2)
  {
    v4 = *(a1 + 16);
  }

  else
  {
    v4 = *(a2 + 16);
  }

  v5 = (a1 + 32);
  v6 = (a2 + 32);
  do
  {
    if (!v4)
    {
      return v2 < v3;
    }

    v8 = *v5++;
    v7 = v8;
    v9 = *v6++;
    --v4;
    v10 = v7 < v9;
  }

  while (v7 == v9);
  return v10;
}

uint64_t _s12NIOIMAPCore216SectionSpecifierV1loiySbAC_ACtFZ_0(uint64_t result, uint64_t a2, unsigned __int8 a3, uint64_t a4, unint64_t a5, unsigned __int8 a6)
{
  v6 = *(result + 16);
  v7 = *(a4 + 16);
  if (v6 == v7)
  {
    if (v6)
    {
      v8 = result == a4;
    }

    else
    {
      v8 = 1;
    }

    if (v8)
    {
LABEL_10:
      if (a3 > 1u)
      {
        v20 = a6 != 2 || (a5 & 0xFFFFFFFFFFFFFFFDLL) != 0;
        if (a2 != 2)
        {
          v20 = 0;
        }

        if (a5)
        {
          v21 = 0;
        }

        else
        {
          v21 = a6 == 2;
        }

        v22 = !v21;
        if (a2)
        {
          v23 = 1;
        }

        else
        {
          v23 = v22;
        }

        if (a2 <= 1)
        {
          return v23;
        }

        else
        {
          return v20;
        }
      }

      else
      {
        return a6 > 1u && a5 > 2;
      }
    }

    else
    {
      v9 = (result + 32);
      v10 = (a4 + 32);
      v11 = *(result + 16);
      while (v11)
      {
        if (*v9 != *v10)
        {
          goto LABEL_17;
        }

        ++v9;
        ++v10;
        if (!--v11)
        {
          goto LABEL_10;
        }
      }

      __break(1u);
    }
  }

  else
  {
LABEL_17:
    if (v7 >= v6)
    {
      v13 = *(result + 16);
    }

    else
    {
      v13 = *(a4 + 16);
    }

    v14 = (result + 32);
    v15 = (a4 + 32);
    do
    {
      if (!v13)
      {
        return v6 < v7;
      }

      v17 = *v14++;
      v16 = v17;
      v18 = *v15++;
      --v13;
      v19 = v16 < v18;
    }

    while (v16 == v18);
    return v19;
  }

  return result;
}

unint64_t sub_100494A44()
{
  result = qword_1005DD968;
  if (!qword_1005DD968)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SectionSpecifier, &type metadata for SectionSpecifier, v0, v1);
    atomic_store(result, &qword_1005DD968);
  }

  return result;
}

unint64_t sub_100494A9C()
{
  result = qword_1005DD970;
  if (!qword_1005DD970)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SectionSpecifier.Part, &type metadata for SectionSpecifier.Part, v0, v1);
    atomic_store(result, &qword_1005DD970);
  }

  return result;
}

unint64_t sub_100494AF4()
{
  result = qword_1005DD978;
  if (!qword_1005DD978)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SectionSpecifier.Kind, &type metadata for SectionSpecifier.Kind, v0, v1);
    atomic_store(result, &qword_1005DD978);
  }

  return result;
}

uint64_t sub_100494B90@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_10049255C(*a1, *a2, a2[1], *(v3 + 16), *(v3 + 24), *(v3 + 32), **(v3 + 40), *(v3 + 48), *(v3 + 56));
  if (!v4)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_100494BE4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100494C4C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100494D28(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    return 0;
  }

  v2 = v1;
  v4 = *(v1 + 20);
  result = sub_1002F178C(0x20uLL, 0xE100000000000000, v1 + 8, v4);
  if (v6)
  {
    v7._countAndFlagsBits = 32;
    v7._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v7, v4);
  }

  v8 = result;
  v9 = *(v1 + 20);
  v10 = (v9 + result);
  if (__CFADD__(v9, result))
  {
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  *(v1 + 20) = v10;
  v36 = a1;
  result = sub_1002F178C(0, 0xE000000000000000, v1 + 8, v10);
  if (v11)
  {
    v12._countAndFlagsBits = 0;
    v12._object = 0xE000000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v12, v10);
  }

  v13 = result;
  v14 = *(v1 + 20);
  v15 = (v14 + result);
  if (__CFADD__(v14, result))
  {
    goto LABEL_27;
  }

  *(v1 + 20) = v15;
  result = sub_1002F178C(0x28uLL, 0xE100000000000000, v1 + 8, v15);
  if (v16)
  {
    v17._countAndFlagsBits = 40;
    v17._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v17, v15);
  }

  v18 = *(v1 + 20);
  v19 = __CFADD__(v18, result);
  v20 = v18 + result;
  if (v19)
  {
    goto LABEL_28;
  }

  *(v1 + 20) = v20;
  v21 = v13 + result;
  if (__OFADD__(v13, result))
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  __chkstk_darwin(result);
  v35[2] = sub_100495C78;
  v35[3] = 0;
  v35[4] = v2;
  v35[5] = &v36;
  v35[6] = 32;
  v35[7] = 0xE100000000000000;
  result = sub_100451E78(0, sub_1004974C0, v35, a1);
  v22 = v21 + result;
  if (__OFADD__(v21, result))
  {
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v23 = *(v2 + 20);
  result = sub_1002F178C(0x29uLL, 0xE100000000000000, v2 + 8, v23);
  if (v24)
  {
    v25._countAndFlagsBits = 41;
    v25._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v25, v23);
  }

  v26 = *(v2 + 20);
  v27 = (v26 + result);
  if (__CFADD__(v26, result))
  {
    goto LABEL_31;
  }

  *(v2 + 20) = v27;
  v28 = __OFADD__(v22, result);
  v29 = v22 + result;
  if (v28)
  {
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  result = sub_1002F178C(0, 0xE000000000000000, v2 + 8, v27);
  if (v30)
  {
    v31._countAndFlagsBits = 0;
    v31._object = 0xE000000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v31, v27);
  }

  v32 = *(v2 + 20);
  v19 = __CFADD__(v32, result);
  v33 = v32 + result;
  if (v19)
  {
    goto LABEL_33;
  }

  *(v2 + 20) = v33;
  v34 = v29 + result;
  if (__OFADD__(v29, result))
  {
LABEL_34:
    __break(1u);
    return result;
  }

  result = v8 + v34;
  if (!__OFADD__(v8, v34))
  {
    return result;
  }

  __break(1u);
  return 0;
}

uint64_t QResyncParameter.init(uidValidity:modificationSequenceValue:knownUIDs:sequenceMatchData:)@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for QResyncParameter(0);
  v11 = *(v10 + 24);
  v12 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  (*(*(v12 - 8) + 56))(a5 + v11, 1, 1, v12);
  v13 = *(v10 + 28);
  matched = type metadata accessor for SequenceMatchData(0);
  (*(*(matched - 8) + 56))(a5 + v13, 1, 1, matched);
  *a5 = a1;
  *(a5 + 8) = a2;
  sub_10027F8A8(a3, a5 + v11, &qword_1005CD510, &unk_1004CF2E0);
  return sub_10027F8A8(a4, a5 + v13, &qword_1005DBE10, &unk_10050C850);
}

void QResyncParameter.hash(into:)(uint64_t a1)
{
  v3 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v11 - v5;
  v7 = sub_10000C9C0(&qword_1005CD510, &unk_1004CF2E0);
  __chkstk_darwin(v7 - 8);
  v9 = &v11 - v8;
  sub_1004A6EE4(*v1);
  sub_1004A6EF4(*(v1 + 8));
  v10 = type metadata accessor for QResyncParameter(0);
  sub_10000E268(v1 + *(v10 + 24), v9, &qword_1005CD510, &unk_1004CF2E0);
  if ((*(v4 + 48))(v9, 1, v3) == 1)
  {
    sub_1004A6EC4(0);
  }

  else
  {
    sub_100025FDC(v9, v6, &unk_1005D91B0, &unk_1004CF400);
    sub_1004A6EC4(1u);
    sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
    sub_1000956A0();
    sub_1004A5564();
    sub_100025F40(v6, &unk_1005D91B0, &unk_1004CF400);
  }

  sub_1003B0110(a1);
}

Swift::Int QResyncParameter.hashValue.getter()
{
  v1 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v11[-1] - v3;
  v5 = sub_10000C9C0(&qword_1005CD510, &unk_1004CF2E0);
  __chkstk_darwin(v5 - 8);
  v7 = &v11[-1] - v6;
  sub_1004A6E94();
  sub_1004A6EE4(*v0);
  sub_1004A6EF4(*(v0 + 8));
  v8 = type metadata accessor for QResyncParameter(0);
  sub_10000E268(v0 + *(v8 + 24), v7, &qword_1005CD510, &unk_1004CF2E0);
  if ((*(v2 + 48))(v7, 1, v1) == 1)
  {
    sub_1004A6EC4(0);
  }

  else
  {
    sub_100025FDC(v7, v4, &unk_1005D91B0, &unk_1004CF400);
    sub_1004A6EC4(1u);
    sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
    sub_1000956A0();
    sub_1004A5564();
    sub_100025F40(v4, &unk_1005D91B0, &unk_1004CF400);
  }

  sub_1003B0110(v11);
  return sub_1004A6F14();
}

void SelectParameter.hash(into:)(uint64_t a1)
{
  v31 = a1;
  v1 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  v27 = *(v1 - 8);
  v28 = v1;
  __chkstk_darwin(v1);
  v26 = &v26 - v2;
  v3 = sub_10000C9C0(&qword_1005CD510, &unk_1004CF2E0);
  __chkstk_darwin(v3 - 8);
  v5 = &v26 - v4;
  v29 = type metadata accessor for QResyncParameter(0);
  __chkstk_darwin(v29);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ParameterValue(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10000C9C0(&qword_1005D7F50, &unk_100502FF0);
  __chkstk_darwin(v12 - 8);
  v14 = &v26 - v13;
  v15 = sub_10000C9C0(&qword_1005DBCA8, &unk_100504BF0);
  __chkstk_darwin(v15);
  v17 = &v26 - v16;
  v18 = type metadata accessor for SelectParameter(0);
  __chkstk_darwin(v18);
  v20 = &v26 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100496F08(v30, v20);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_100496F6C(v20, v7, type metadata accessor for QResyncParameter);
      v22 = v31;
      sub_1004A6EB4(1uLL);
      sub_1004A6EE4(*v7);
      sub_1004A6EF4(*(v7 + 1));
      sub_10000E268(&v7[*(v29 + 24)], v5, &qword_1005CD510, &unk_1004CF2E0);
      if ((*(v27 + 48))(v5, 1, v28) == 1)
      {
        sub_1004A6EC4(0);
      }

      else
      {
        v24 = v5;
        v25 = v26;
        sub_100025FDC(v24, v26, &unk_1005D91B0, &unk_1004CF400);
        sub_1004A6EC4(1u);
        sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
        sub_1000956A0();
        sub_1004A5564();
        sub_100025F40(v25, &unk_1005D91B0, &unk_1004CF400);
      }

      sub_1003B0110(v22);
      sub_100496FD4(v7, type metadata accessor for QResyncParameter);
    }

    else
    {
      sub_1004A6EB4(2uLL);
    }
  }

  else
  {
    sub_100025FDC(v20, v17, &qword_1005DBCA8, &unk_100504BF0);
    v23 = v31;
    sub_1004A6EB4(0);
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    sub_10000E268(&v17[*(v15 + 52)], v14, &qword_1005D7F50, &unk_100502FF0);
    if ((*(v9 + 48))(v14, 1, v8) == 1)
    {
      sub_1004A6EC4(0);
    }

    else
    {
      sub_100496F6C(v14, v11, type metadata accessor for ParameterValue);
      sub_1004A6EC4(1u);
      ParameterValue.hash(into:)(v23);
      sub_100496FD4(v11, type metadata accessor for ParameterValue);
    }

    sub_100025F40(v17, &qword_1005DBCA8, &unk_100504BF0);
  }
}

Swift::Int SelectParameter.hashValue.getter()
{
  sub_1004A6E94();
  SelectParameter.hash(into:)(v1);
  return sub_1004A6F14();
}

Swift::Int sub_100495C34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
{
  sub_1004A6E94();
  a4(v6);
  return sub_1004A6F14();
}

uint64_t sub_100495C78(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C9C0(&qword_1005DBCA8, &unk_100504BF0);
  __chkstk_darwin(v4 - 8);
  v6 = &v22[-v5];
  v7 = type metadata accessor for QResyncParameter(0);
  __chkstk_darwin(v7 - 8);
  v9 = &v22[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = type metadata accessor for SelectParameter(0);
  __chkstk_darwin(v10);
  v12 = &v22[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_100496F08(a1, v12);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_100025FDC(v12, v6, &qword_1005DBCA8, &unk_100504BF0);
    v14 = sub_10049EB14(v6);
    sub_100025F40(v6, &qword_1005DBCA8, &unk_100504BF0);
    return v14;
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_100496F6C(v12, v9, type metadata accessor for QResyncParameter);
    v14 = sub_100495EB0(v9);
    sub_100496FD4(v9, type metadata accessor for QResyncParameter);
    return v14;
  }

  v16 = *(a2 + 20);
  result = sub_1002F178C(0x524F5453444E4F43uLL, 0xE900000000000045, a2 + 8, v16);
  if (v17)
  {
    v18._countAndFlagsBits = 0x524F5453444E4F43;
    v18._object = 0xE900000000000045;
    result = ByteBuffer._setStringSlowpath(_:at:)(v18, v16);
  }

  v19 = *(a2 + 20);
  v20 = __CFADD__(v19, result);
  v21 = v19 + result;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 20) = v21;
  }

  return result;
}

uint64_t sub_100495EB0(_DWORD *a1)
{
  v2 = v1;
  v4 = sub_10000C9C0(&qword_1005DBE10, &unk_10050C850);
  __chkstk_darwin(v4 - 8);
  v84 = &v82 - v5;
  matched = type metadata accessor for SequenceMatchData(0);
  v83 = *(matched - 8);
  __chkstk_darwin(matched);
  v86 = &v82 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000C9C0(&qword_1005CD510, &unk_1004CF2E0);
  __chkstk_darwin(v7 - 8);
  v9 = &v82 - v8;
  v10 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v82 = &v82 - v12;
  v89 = 0x20434E5953455251;
  v90 = 0xE900000000000028;
  v87 = a1;
  v88 = *a1;
  v91._countAndFlagsBits = sub_1004A6CE4();
  sub_1004A5994(v91);

  v92._countAndFlagsBits = 32;
  v92._object = 0xE100000000000000;
  sub_1004A5994(v92);
  v14 = v89;
  v13 = v90;
  v15 = *(v2 + 20);
  v16 = sub_1002F178C(v89, v90, v2 + 8, v15);
  if (v17)
  {
    v18._countAndFlagsBits = v14;
    v18._object = v13;
    v16 = ByteBuffer._setStringSlowpath(_:at:)(v18, v15);
  }

  v19 = v16;

  v21 = *(v2 + 20);
  v22 = (v21 + v19);
  if (__CFADD__(v21, v19))
  {
    __break(1u);
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  *(v2 + 20) = v22;
  v89 = *(v87 + 1);
  v23 = sub_1004A6CE4();
  v25 = v24;
  v26 = sub_1002F178C(v23, v24, v2 + 8, v22);
  if (v27)
  {
    v28._countAndFlagsBits = v23;
    v28._object = v25;
    v26 = ByteBuffer._setStringSlowpath(_:at:)(v28, v22);
  }

  v29 = v26;

  v30 = *(v2 + 20);
  v31 = (v30 + v29);
  if (__CFADD__(v30, v29))
  {
    goto LABEL_41;
  }

  *(v2 + 20) = v31;
  v32 = v19 + v29;
  if (__OFADD__(v19, v29))
  {
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v33 = type metadata accessor for QResyncParameter(0);
  sub_10000E268(v87 + *(v33 + 24), v9, &qword_1005CD510, &unk_1004CF2E0);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    result = sub_100025F40(v9, &qword_1005CD510, &unk_1004CF2E0);
    v34 = 0;
    v36 = matched;
    v35 = v86;
  }

  else
  {
    v37 = v82;
    sub_100025FDC(v9, v82, &unk_1005D91B0, &unk_1004CF400);
    result = sub_1002F178C(0x20uLL, 0xE100000000000000, v2 + 8, v31);
    v35 = v86;
    if (v38)
    {
      v39._countAndFlagsBits = 32;
      v39._object = 0xE100000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v39, v31);
    }

    v40 = result;
    v36 = matched;
    v41 = *(v2 + 20);
    v42 = __CFADD__(v41, result);
    v43 = v41 + result;
    if (v42)
    {
      goto LABEL_47;
    }

    *(v2 + 20) = v43;
    v44 = sub_10048E5D0(v2);
    result = sub_100025F40(v37, &unk_1005D91B0, &unk_1004CF400);
    v34 = v40 + v44;
    if (__OFADD__(v40, v44))
    {
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
      goto LABEL_51;
    }
  }

  v45 = __OFADD__(v32, v34);
  v46 = v32 + v34;
  if (v45)
  {
    goto LABEL_43;
  }

  v47 = v84;
  sub_10000E268(v87 + *(v33 + 28), v84, &qword_1005DBE10, &unk_10050C850);
  if ((*(v83 + 48))(v47, 1, v36) == 1)
  {
    result = sub_100025F40(v47, &qword_1005DBE10, &unk_10050C850);
    v48 = 0;
  }

  else
  {
    sub_100496F6C(v47, v35, type metadata accessor for SequenceMatchData);
    v49 = *(v2 + 20);
    result = sub_1002F178C(0x20uLL, 0xE100000000000000, v2 + 8, v49);
    if (v50)
    {
      v51._countAndFlagsBits = 32;
      v51._object = 0xE100000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v51, v49);
    }

    v52 = result;
    v53 = *(v2 + 20);
    v54 = (v53 + result);
    if (__CFADD__(v53, result))
    {
      goto LABEL_49;
    }

    *(v2 + 20) = v54;
    result = sub_1002F178C(0x28uLL, 0xE100000000000000, v2 + 8, v54);
    if (v55)
    {
      v56._countAndFlagsBits = 40;
      v56._object = 0xE100000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v56, v54);
    }

    v57 = result;
    v58 = *(v2 + 20);
    v42 = __CFADD__(v58, result);
    v59 = v58 + result;
    if (v42)
    {
      goto LABEL_50;
    }

    *(v2 + 20) = v59;
    result = sub_10048DA10(v35);
    v45 = __OFADD__(v57, result);
    v60 = v57 + result;
    if (v45)
    {
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
      goto LABEL_53;
    }

    v61 = *(v2 + 20);
    result = sub_1002F178C(0x20uLL, 0xE100000000000000, v2 + 8, v61);
    if (v62)
    {
      v63._countAndFlagsBits = 32;
      v63._object = 0xE100000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v63, v61);
    }

    v64 = *(v2 + 20);
    v42 = __CFADD__(v64, result);
    v65 = v64 + result;
    if (v42)
    {
      goto LABEL_52;
    }

    *(v2 + 20) = v65;
    v66 = v60 + result;
    if (__OFADD__(v60, result))
    {
LABEL_53:
      __break(1u);
      goto LABEL_54;
    }

    result = sub_10048DA10(v35 + *(v36 + 20));
    v67 = v66 + result;
    if (__OFADD__(v66, result))
    {
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
      goto LABEL_56;
    }

    v68 = *(v2 + 20);
    v69 = sub_1002F178C(0x29uLL, 0xE100000000000000, v2 + 8, v68);
    if (v70)
    {
      v71._countAndFlagsBits = 41;
      v71._object = 0xE100000000000000;
      v69 = ByteBuffer._setStringSlowpath(_:at:)(v71, v68);
    }

    v72 = v69;
    result = sub_100496FD4(v35, type metadata accessor for SequenceMatchData);
    v73 = *(v2 + 20);
    v42 = __CFADD__(v73, v72);
    v74 = v73 + v72;
    if (v42)
    {
      goto LABEL_55;
    }

    *(v2 + 20) = v74;
    v75 = v67 + v72;
    if (__OFADD__(v67, v72))
    {
LABEL_56:
      __break(1u);
      goto LABEL_57;
    }

    v45 = __OFADD__(v52, v75);
    v48 = v52 + v75;
    if (v45)
    {
LABEL_57:
      __break(1u);
      return result;
    }
  }

  v76 = v46 + v48;
  if (__OFADD__(v46, v48))
  {
    goto LABEL_44;
  }

  v77 = *(v2 + 20);
  result = sub_1002F178C(0x29uLL, 0xE100000000000000, v2 + 8, v77);
  if (v78)
  {
    v79._countAndFlagsBits = 41;
    v79._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v79, v77);
  }

  v80 = *(v2 + 20);
  v42 = __CFADD__(v80, result);
  v81 = v80 + result;
  if (v42)
  {
    goto LABEL_45;
  }

  *(v2 + 20) = v81;
  v45 = __OFADD__(v76, result);
  result += v76;
  if (v45)
  {
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  return result;
}

void _s12NIOIMAPCore216QResyncParameterV23__derived_struct_equalsySbAC_ACtFZ_0(uint64_t a1, __n128 a2)
{
  matched = type metadata accessor for SequenceMatchData(0);
  v50 = *(matched - 8);
  __chkstk_darwin(matched);
  v5 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000C9C0(&qword_1005DBE10, &unk_10050C850);
  __chkstk_darwin(v6 - 8);
  v48 = &v41 - v7;
  v49 = sub_10000C9C0(&qword_1005DDAD8, &qword_10050C970);
  __chkstk_darwin(v49);
  v9 = &v41 - v8;
  v10 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v41 - v12;
  v14 = sub_10000C9C0(&qword_1005CD510, &unk_1004CF2E0);
  __chkstk_darwin(v14 - 8);
  v16 = &v41 - v15;
  v17 = sub_10000C9C0(&qword_1005CE810, &unk_1004D1120);
  __chkstk_darwin(v17);
  v20 = &v41 - v19;
  if (*a1 == *v18)
  {
    v21 = *(a1 + 8);
    v22 = *(v18 + 8);
    if ((v22 | v21) < 0)
    {
      __break(1u);
      return;
    }

    if (v22 == v21)
    {
      v46 = matched;
      v47 = v9;
      v42 = v5;
      v23 = v18;
      v43 = type metadata accessor for QResyncParameter(0);
      v44 = a1;
      v24 = *(v43 + 24);
      v25 = *(v17 + 48);
      sub_10000E268(a1 + v24, v20, &qword_1005CD510, &unk_1004CF2E0);
      v45 = v23;
      v26 = v23 + v24;
      v27 = v25;
      sub_10000E268(v26, &v20[v25], &qword_1005CD510, &unk_1004CF2E0);
      v28 = *(v11 + 48);
      if (v28(v20, 1, v10) == 1)
      {
        if (v28(&v20[v27], 1, v10) == 1)
        {
          sub_100025F40(v20, &qword_1005CD510, &unk_1004CF2E0);
LABEL_11:
          v33 = *(v43 + 28);
          v34 = *(v49 + 48);
          v35 = v47;
          sub_10000E268(v44 + v33, v47, &qword_1005DBE10, &unk_10050C850);
          sub_10000E268(v45 + v33, v35 + v34, &qword_1005DBE10, &unk_10050C850);
          v36 = *(v50 + 48);
          v37 = v46;
          if (v36(v35, 1, v46) == 1)
          {
            if (v36(v35 + v34, 1, v37) == 1)
            {
              sub_100025F40(v35, &qword_1005DBE10, &unk_10050C850);
              return;
            }
          }

          else
          {
            v38 = v48;
            sub_10000E268(v35, v48, &qword_1005DBE10, &unk_10050C850);
            if (v36(v35 + v34, 1, v37) != 1)
            {
              v39 = v35 + v34;
              v40 = v42;
              sub_100496F6C(v39, v42, type metadata accessor for SequenceMatchData);
              _s12NIOIMAPCore217SequenceMatchDataV23__derived_struct_equalsySbAC_ACtFZ_0(v38, v40);
              sub_100496FD4(v40, type metadata accessor for SequenceMatchData);
              sub_100496FD4(v38, type metadata accessor for SequenceMatchData);
              sub_100025F40(v35, &qword_1005DBE10, &unk_10050C850);
              return;
            }

            sub_100496FD4(v38, type metadata accessor for SequenceMatchData);
          }

          v29 = &qword_1005DDAD8;
          v30 = &qword_10050C970;
          v31 = v35;
          goto LABEL_17;
        }
      }

      else
      {
        sub_10000E268(v20, v16, &qword_1005CD510, &unk_1004CF2E0);
        if (v28(&v20[v27], 1, v10) != 1)
        {
          sub_100025FDC(&v20[v27], v13, &unk_1005D91B0, &unk_1004CF400);
          sub_100016D2C();
          v32 = sub_1004A7034();
          sub_100025F40(v13, &unk_1005D91B0, &unk_1004CF400);
          sub_100025F40(v16, &unk_1005D91B0, &unk_1004CF400);
          sub_100025F40(v20, &qword_1005CD510, &unk_1004CF2E0);
          if ((v32 & 1) == 0)
          {
            return;
          }

          goto LABEL_11;
        }

        sub_100025F40(v16, &unk_1005D91B0, &unk_1004CF400);
      }

      v29 = &qword_1005CE810;
      v30 = &unk_1004D1120;
      v31 = v20;
LABEL_17:
      sub_100025F40(v31, v29, v30);
    }
  }
}

BOOL _s12NIOIMAPCore215SelectParameterO21__derived_enum_equalsySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for QResyncParameter(0);
  __chkstk_darwin(v4 - 8);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000C9C0(&qword_1005DBCA8, &unk_100504BF0);
  __chkstk_darwin(v7 - 8);
  v9 = (&v26 - v8);
  v10 = type metadata accessor for SelectParameter(0);
  __chkstk_darwin(v10);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = (&v26 - v14);
  v16 = sub_10000C9C0(&qword_1005DBCB8, &qword_1004FE5D0);
  __chkstk_darwin(v16 - 8);
  v18 = &v26 - v17;
  v20 = *(v19 + 56);
  sub_100496F08(a1, &v26 - v17);
  sub_100496F08(a2, &v18[v20]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_100496F08(v18, v15);
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_100025FDC(&v18[v20], v9, &qword_1005DBCA8, &unk_100504BF0);
      v24 = sub_100436BFC(v15, v9);
      sub_100025F40(v9, &qword_1005DBCA8, &unk_100504BF0);
      sub_100025F40(v15, &qword_1005DBCA8, &unk_100504BF0);
      goto LABEL_12;
    }

    sub_100025F40(v15, &qword_1005DBCA8, &unk_100504BF0);
    goto LABEL_10;
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_100496F08(v18, v12);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_100496F6C(&v18[v20], v6, type metadata accessor for QResyncParameter);
      _s12NIOIMAPCore216QResyncParameterV23__derived_struct_equalsySbAC_ACtFZ_0(v12, v22);
      v24 = v23;
      sub_100496FD4(v6, type metadata accessor for QResyncParameter);
      sub_100496FD4(v12, type metadata accessor for QResyncParameter);
LABEL_12:
      sub_100496FD4(v18, type metadata accessor for SelectParameter);
      return v24;
    }

    sub_100496FD4(v12, type metadata accessor for QResyncParameter);
    goto LABEL_10;
  }

  if (swift_getEnumCaseMultiPayload() != 2)
  {
LABEL_10:
    sub_100025F40(v18, &qword_1005DBCB8, &qword_1004FE5D0);
    return 0;
  }

  sub_100496FD4(v18, type metadata accessor for SelectParameter);
  return 1;
}

uint64_t sub_100496F08(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SelectParameter(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100496F6C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100496FD4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1004970C4(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100497120(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10000C9C0(&qword_1005CD510, &unk_1004CF2E0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = sub_10000C9C0(&qword_1005DBE10, &unk_10050C850);
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 28);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_100497240(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_10000C9C0(&qword_1005CD510, &unk_1004CF2E0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 24);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    v14 = sub_10000C9C0(&qword_1005DBE10, &unk_10050C850);
    v15 = *(*(v14 - 8) + 56);
    v16 = a1 + *(a4 + 28);

    return v15(v16, a2, a2, v14);
  }
}

void sub_100497358(uint64_t a1)
{
  sub_100035D34(319);
  if (v2 <= 0x3F)
  {
    sub_1004973F4(319, v1);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1004973F4(uint64_t a1, __n128 a2)
{
  if (!qword_1005DD9F8)
  {
    type metadata accessor for SequenceMatchData(255);
    v2 = sub_1004A6374();
    if (!v3)
    {
      atomic_store(v2, &qword_1005DD9F8);
    }
  }
}

void sub_10049744C(uint64_t a1)
{
  sub_1003E0740(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for QResyncParameter(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

uint64_t sub_1004974C0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_10049136C(*a1, a2, *(v3 + 16), *(v3 + 24), *(v3 + 32), **(v3 + 40), *(v3 + 48), *(v3 + 56));
  if (!v4)
  {
    *a3 = result;
  }

  return result;
}

uint64_t SequenceMatchData.init(knownSequenceSet:knownUidSet:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_100025FDC(a1, a3, &qword_1005CD1C0, &unk_1004CEC40);
  matched = type metadata accessor for SequenceMatchData(0);
  return sub_100025FDC(a2, a3 + *(matched + 20), &qword_1005CD1C0, &unk_1004CEC40);
}

uint64_t type metadata accessor for SequenceMatchData(uint64_t a1)
{
  result = qword_1005DDB40;
  if (!qword_1005DDB40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1004975C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C9C0(&qword_1005CD1C0, &unk_1004CEC40);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10049763C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C9C0(&qword_1005CD1C0, &unk_1004CEC40);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t SequenceMatchData.knownUidSet.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for SequenceMatchData(0) + 20);

  return sub_1004975C4(v3, a1);
}

uint64_t SequenceMatchData.knownUidSet.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for SequenceMatchData(0) + 20);

  return sub_10049763C(a1, v3);
}

void SequenceMatchData.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v3 = sub_10000C9C0(&qword_1005CD1D0, &unk_1004CF2C0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v15 - v5;
  v7 = sub_10000C9C0(&qword_1005CD1C0, &unk_1004CEC40);
  __chkstk_darwin(v7 - 8);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v15 - v11;
  sub_1004975C4(v2, &v15 - v11);
  v13 = *(v4 + 48);
  if (v13(v12, 1, v3) == 1)
  {
    sub_1004A6EB4(1uLL);
  }

  else
  {
    sub_100025FDC(v12, v6, &qword_1005CD1D0, &unk_1004CF2C0);
    sub_1004A6EB4(0);
    sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
    sub_1000956A0();
    sub_1004A5564();
    sub_100025F40(v6, &qword_1005CD1D0, &unk_1004CF2C0);
  }

  matched = type metadata accessor for SequenceMatchData(0);
  sub_1004975C4(v2 + *(matched + 20), v9);
  if (v13(v9, 1, v3) == 1)
  {
    sub_1004A6EB4(1uLL);
  }

  else
  {
    sub_100025FDC(v9, v6, &qword_1005CD1D0, &unk_1004CF2C0);
    sub_1004A6EB4(0);
    sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
    sub_1000956A0();
    sub_1004A5564();
    sub_100025F40(v6, &qword_1005CD1D0, &unk_1004CF2C0);
  }
}

Swift::Int SequenceMatchData.hashValue.getter()
{
  sub_1004A6E94();
  SequenceMatchData.hash(into:)(v1);
  return sub_1004A6F14();
}

Swift::Int sub_100497A64(uint64_t a1)
{
  sub_1004A6E94();
  SequenceMatchData.hash(into:)(v2);
  return sub_1004A6F14();
}

uint64_t _s12NIOIMAPCore217SequenceMatchDataV23__derived_struct_equalsySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C9C0(&qword_1005CD1D0, &unk_1004CF2C0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v35 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v34 - v8;
  v10 = sub_10000C9C0(&qword_1005CD1C0, &unk_1004CEC40);
  __chkstk_darwin(v10 - 8);
  v36 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v34 - v13;
  v15 = sub_10000C9C0(&qword_1005DD7C8, &qword_10050C208);
  __chkstk_darwin(v15);
  v17 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v34 - v19;
  v22 = *(v21 + 48);
  sub_1004975C4(a1, &v34 - v19);
  v37 = a2;
  sub_1004975C4(a2, &v20[v22]);
  v23 = *(v5 + 48);
  if (v23(v20, 1, v4) != 1)
  {
    sub_1004975C4(v20, v14);
    if (v23(&v20[v22], 1, v4) != 1)
    {
      v34 = a1;
      sub_100025FDC(&v20[v22], v9, &qword_1005CD1D0, &unk_1004CF2C0);
      sub_100016D2C();
      v27 = sub_1004A7034();
      sub_100025F40(v9, &qword_1005CD1D0, &unk_1004CF2C0);
      a1 = v34;
      sub_100025F40(v14, &qword_1005CD1D0, &unk_1004CF2C0);
      if (v27)
      {
        goto LABEL_9;
      }

      v24 = &qword_1005CD1C0;
      v25 = &unk_1004CEC40;
LABEL_7:
      v26 = v20;
LABEL_16:
      sub_100025F40(v26, v24, v25);
      return 0;
    }

    sub_100025F40(v14, &qword_1005CD1D0, &unk_1004CF2C0);
LABEL_6:
    v24 = &qword_1005DD7C8;
    v25 = &qword_10050C208;
    goto LABEL_7;
  }

  if (v23(&v20[v22], 1, v4) != 1)
  {
    goto LABEL_6;
  }

LABEL_9:
  sub_100025F40(v20, &qword_1005CD1C0, &unk_1004CEC40);
  v28 = *(type metadata accessor for SequenceMatchData(0) + 20);
  v29 = *(v15 + 48);
  sub_1004975C4(a1 + v28, v17);
  sub_1004975C4(v37 + v28, &v17[v29]);
  if (v23(v17, 1, v4) == 1)
  {
    if (v23(&v17[v29], 1, v4) == 1)
    {
      goto LABEL_19;
    }

    goto LABEL_14;
  }

  v30 = v36;
  sub_1004975C4(v17, v36);
  if (v23(&v17[v29], 1, v4) == 1)
  {
    sub_100025F40(v30, &qword_1005CD1D0, &unk_1004CF2C0);
LABEL_14:
    v24 = &qword_1005DD7C8;
    v25 = &qword_10050C208;
LABEL_15:
    v26 = v17;
    goto LABEL_16;
  }

  v32 = v35;
  sub_100025FDC(&v17[v29], v35, &qword_1005CD1D0, &unk_1004CF2C0);
  sub_100016D2C();
  v33 = sub_1004A7034();
  sub_100025F40(v32, &qword_1005CD1D0, &unk_1004CF2C0);
  sub_100025F40(v30, &qword_1005CD1D0, &unk_1004CF2C0);
  if ((v33 & 1) == 0)
  {
    v24 = &qword_1005CD1C0;
    v25 = &unk_1004CEC40;
    goto LABEL_15;
  }

LABEL_19:
  sub_100025F40(v17, &qword_1005CD1C0, &unk_1004CEC40);
  return 1;
}

unint64_t sub_100497F5C()
{
  result = qword_1005DDAE0;
  if (!qword_1005DDAE0)
  {
    matched = type metadata accessor for SequenceMatchData(255);
    result = swift_getWitnessTable(protocol conformance descriptor for SequenceMatchData, matched, v0, v1);
    atomic_store(result, &qword_1005DDAE0);
  }

  return result;
}

uint64_t sub_100497FC8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C9C0(&qword_1005CD1C0, &unk_1004CEC40);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_100498054(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C9C0(&qword_1005CD1C0, &unk_1004CEC40);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void sub_1004980D0(uint64_t a1)
{
  sub_1003DA76C(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_10049813C(int a1)
{
  v2 = v1;
  if (a1 != -1)
  {
    v3 = sub_1004A6CE4();
    v5 = v4;
    v7 = v2[5];
    v2 += 5;
    v6 = v7;
    v8 = sub_1002F178C(v3, v4, (v2 - 3), v7);
    if (v9)
    {
      v10._countAndFlagsBits = v3;
      v10._object = v5;
      v8 = ByteBuffer._setStringSlowpath(_:at:)(v10, v6);
    }

    v11 = v8;

    result = v11;
    v13 = *v2 + v11;
    if (!__CFADD__(*v2, v11))
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  v15 = v2[5];
  v2 += 5;
  v14 = v15;
  result = sub_1002F178C(0x2AuLL, 0xE100000000000000, (v2 - 3), v15);
  if (v16)
  {
    v17._countAndFlagsBits = 42;
    v17._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v17, v14);
  }

  v13 = *v2 + result;
  if (!__CFADD__(*v2, result))
  {
LABEL_10:
    *v2 = v13;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_100498238(uint64_t a1)
{
  v2 = sub_1004983E0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100498274(uint64_t a1)
{
  v2 = sub_1004983E0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t SequenceNumber.encode(to:)(void *a1, uint64_t a2)
{
  v3 = sub_10000C9C0(&qword_1005DDB78, &qword_10050CA08);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8 - v5;
  sub_10002587C(a1, a1[3]);
  sub_1004983E0();
  sub_1004A6FA4();
  sub_1004A6C94();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_1004983E0()
{
  result = qword_1005DDB80;
  if (!qword_1005DDB80)
  {
    result = swift_getWitnessTable(byte_10050CCE0, &type metadata for SequenceNumber.CodingKeys, v0, v1);
    atomic_store(result, &qword_1005DDB80);
  }

  return result;
}

void *SequenceNumber.init(from:)(void *a1)
{
  v3 = sub_10000C9C0(&qword_1005DDB88, &qword_10050CA10);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - v5;
  v7 = sub_10002587C(a1, a1[3]);
  sub_1004983E0();
  sub_1004A6F84();
  if (!v1)
  {
    v7 = sub_1004A6BB4();
    (*(v4 + 8))(v6, v3);
  }

  sub_1000197E0(a1);
  return v7;
}

unint64_t sub_100498588(void *a1)
{
  a1[1] = sub_1004985D8();
  a1[2] = sub_10049862C();
  a1[3] = sub_100498680();
  a1[4] = sub_1004986D4();
  a1[5] = sub_100498728();
  result = sub_10049877C();
  a1[6] = result;
  return result;
}

unint64_t sub_1004985D8()
{
  result = qword_1005DDB90;
  if (!qword_1005DDB90)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SequenceNumber, &type metadata for SequenceNumber, v0, v1);
    atomic_store(result, &qword_1005DDB90);
  }

  return result;
}

unint64_t sub_10049862C()
{
  result = qword_1005DDB98;
  if (!qword_1005DDB98)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SequenceNumber, &type metadata for SequenceNumber, v0, v1);
    atomic_store(result, &qword_1005DDB98);
  }

  return result;
}

unint64_t sub_100498680()
{
  result = qword_1005DDBA0;
  if (!qword_1005DDBA0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SequenceNumber, &type metadata for SequenceNumber, v0, v1);
    atomic_store(result, &qword_1005DDBA0);
  }

  return result;
}

unint64_t sub_1004986D4()
{
  result = qword_1005DDBA8;
  if (!qword_1005DDBA8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SequenceNumber, &type metadata for SequenceNumber, v0, v1);
    atomic_store(result, &qword_1005DDBA8);
  }

  return result;
}

unint64_t sub_100498728()
{
  result = qword_1005DDBB0;
  if (!qword_1005DDBB0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SequenceNumber, &type metadata for SequenceNumber, v0, v1);
    atomic_store(result, &qword_1005DDBB0);
  }

  return result;
}

unint64_t sub_10049877C()
{
  result = qword_1005DDBB8;
  if (!qword_1005DDBB8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SequenceNumber, &type metadata for SequenceNumber, v0, v1);
    atomic_store(result, &qword_1005DDBB8);
  }

  return result;
}

unint64_t sub_1004987D4()
{
  result = qword_1005DDBC0;
  if (!qword_1005DDBC0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SequenceNumber, &type metadata for SequenceNumber, v0, v1);
    atomic_store(result, &qword_1005DDBC0);
  }

  return result;
}

uint64_t sub_100498828@<X0>(void *a1@<X0>, _DWORD *a2@<X8>)
{
  v5 = sub_10000C9C0(&qword_1005DDB88, &qword_10050CA10);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11 - v7;
  sub_10002587C(a1, a1[3]);
  sub_1004983E0();
  sub_1004A6F84();
  if (v2)
  {
    return sub_1000197E0(a1);
  }

  v9 = sub_1004A6BB4();
  (*(v6 + 8))(v8, v5);
  result = sub_1000197E0(a1);
  *a2 = v9;
  return result;
}

uint64_t sub_100498988(void *a1)
{
  v2 = sub_10000C9C0(&qword_1005DDB78, &qword_10050CA08);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7 - v4;
  sub_10002587C(a1, a1[3]);
  sub_1004983E0();
  sub_1004A6FA4();
  sub_1004A6C94();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_100498ACC()
{
  result = qword_1005DDBC8;
  if (!qword_1005DDBC8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SequenceNumber, &type metadata for SequenceNumber, v0, v1);
    atomic_store(result, &qword_1005DDBC8);
  }

  return result;
}

unint64_t sub_100498B44()
{
  result = qword_1005DDBD0;
  if (!qword_1005DDBD0)
  {
    result = swift_getWitnessTable(byte_10050CCB8, &type metadata for SequenceNumber.CodingKeys, v0, v1);
    atomic_store(result, &qword_1005DDBD0);
  }

  return result;
}

unint64_t sub_100498B9C()
{
  result = qword_1005DDBD8;
  if (!qword_1005DDBD8)
  {
    result = swift_getWitnessTable(byte_10050CC28, &type metadata for SequenceNumber.CodingKeys, v0, v1);
    atomic_store(result, &qword_1005DDBD8);
  }

  return result;
}

unint64_t sub_100498BF4()
{
  result = qword_1005DDBE0;
  if (!qword_1005DDBE0)
  {
    result = swift_getWitnessTable(aQ_14, &type metadata for SequenceNumber.CodingKeys, v0, v1);
    atomic_store(result, &qword_1005DDBE0);
  }

  return result;
}

BOOL static BodyStructure.Singlepart.__derived_struct_equals(_:_:)(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *a2;
  v6 = *a1 >> 62;
  if (!v6)
  {
    if (v5 >> 62)
    {
      return 0;
    }

    v30 = (v4 & 0x3FFFFFFFFFFFFFFFLL);
    v31 = v30[4];
    v32 = v30[5];
    v33 = *(v5 + 32);
    v34 = *(v5 + 40);
    v35 = v30[2] == *(v5 + 16) && v30[3] == *(v5 + 24);
    if (!v35 && (sub_1004A6D34() & 1) == 0)
    {
      return 0;
    }

    v36 = v31 == v33 && v32 == v34;
    if (!v36 && (sub_1004A6D34() & 1) == 0)
    {
      return 0;
    }

    goto LABEL_31;
  }

  if (v6 == 1)
  {
    v7 = v4 & 0x3FFFFFFFFFFFFFFFLL;
    v8 = *(v7 + 16);
    v9 = *(v7 + 24);
    v10 = *(v7 + 112);
    v149[4] = *(v7 + 96);
    v149[5] = v10;
    v149[6] = *(v7 + 128);
    v11 = *(v7 + 144);
    v12 = *(v7 + 48);
    v149[0] = *(v7 + 32);
    v149[1] = v12;
    v13 = *(v7 + 80);
    v149[2] = *(v7 + 64);
    v149[3] = v13;
    v14 = *(v7 + 200);
    v109 = *(v7 + 184);
    v110 = v14;
    v15 = *(v7 + 168);
    v107 = *(v7 + 152);
    v108 = v15;
    v16 = *(v7 + 264);
    v17 = *(v7 + 280);
    v113 = *(v7 + 248);
    v114 = v16;
    v18 = *(v7 + 232);
    v111 = *(v7 + 216);
    v112 = v18;
    v19 = *(v7 + 312);
    v116 = *(v7 + 296);
    v117 = v19;
    v150 = v11;
    v118 = *(v7 + 328);
    v115 = v17;
    if (v5 >> 62 != 1)
    {
      return 0;
    }

    v20 = *(v7 + 336);
    memcpy(__dst, ((v5 & 0x3FFFFFFFFFFFFFFFLL) + 16), 0x148uLL);
    if (__PAIR128__(v9, v8) != __dst[0] && (sub_1004A6D34() & 1) == 0)
    {
      return 0;
    }

    v151[4] = __dst[5];
    v151[5] = __dst[6];
    v151[6] = __dst[7];
    v152 = *&__dst[8];
    v151[0] = __dst[1];
    v151[1] = __dst[2];
    v151[2] = __dst[3];
    v151[3] = __dst[4];
    sub_100259990(__dst, &v94);
    if (_s12NIOIMAPCore28EnvelopeV23__derived_struct_equalsySbAC_ACtFZ_0(v149, v151))
    {
      v102 = v115;
      v103 = v116;
      v104 = v117;
      v105 = v118;
      v98 = v111;
      v99 = v112;
      v100 = v113;
      v101 = v114;
      v94 = v107;
      v95 = v108;
      v96 = v109;
      v97 = v110;
      if (sub_10000FE88(&v94) == 1)
      {
        v21 = UInt32.init(_:)(&v94);
        v22 = *(v21 + 80);
        v131 = *(v21 + 64);
        v132 = v22;
        v133 = *(v21 + 96);
        *&v134 = *(v21 + 112);
        v23 = *(v21 + 16);
        v127 = *v21;
        v128 = v23;
        v24 = *(v21 + 48);
        v129 = *(v21 + 32);
        v130 = v24;
        v90 = *(&__dst[16] + 8);
        v91 = *(&__dst[17] + 8);
        v92 = *(&__dst[18] + 8);
        v93 = BYTE8(__dst[19]);
        v86 = *(&__dst[12] + 8);
        v87 = *(&__dst[13] + 8);
        v88 = *(&__dst[14] + 8);
        v89 = *(&__dst[15] + 8);
        v82 = *(&__dst[8] + 8);
        v83 = *(&__dst[9] + 8);
        v84 = *(&__dst[10] + 8);
        v85 = *(&__dst[11] + 8);
        if (sub_10000FE88(&v82) == 1)
        {
          v25 = UInt32.init(_:)(&v82);
          v26 = *(v25 + 80);
          v142 = *(v25 + 64);
          v143 = v26;
          v144 = *(v25 + 96);
          *&v145 = *(v25 + 112);
          v27 = *(v25 + 16);
          v138 = *v25;
          v139 = v27;
          v28 = *(v25 + 48);
          v140 = *(v25 + 32);
          v141 = v28;
          v29 = _s12NIOIMAPCore213BodyStructureO9MultipartV23__derived_struct_equalsySbAE_AEtFZ_0(&v127, &v138);
LABEL_46:
          v81 = v29;
          sub_1002599EC(__dst);
          if ((v81 & 1) == 0 || v20 != *&__dst[20])
          {
            return 0;
          }

          goto LABEL_31;
        }
      }

      else
      {
        v60 = UInt32.init(_:)(&v94);
        v61 = v60[9];
        v135 = v60[8];
        v136 = v61;
        v137 = v60[10];
        v62 = v60[5];
        v131 = v60[4];
        v132 = v62;
        v63 = v60[6];
        v134 = v60[7];
        v133 = v63;
        v64 = v60[1];
        v127 = *v60;
        v128 = v64;
        v65 = v60[2];
        v130 = v60[3];
        v129 = v65;
        v93 = BYTE8(__dst[19]);
        v91 = *(&__dst[17] + 8);
        v92 = *(&__dst[18] + 8);
        v89 = *(&__dst[15] + 8);
        v90 = *(&__dst[16] + 8);
        v87 = *(&__dst[13] + 8);
        v88 = *(&__dst[14] + 8);
        v85 = *(&__dst[11] + 8);
        v86 = *(&__dst[12] + 8);
        v83 = *(&__dst[9] + 8);
        v84 = *(&__dst[10] + 8);
        v82 = *(&__dst[8] + 8);
        if (sub_10000FE88(&v82) != 1)
        {
          v75 = UInt32.init(_:)(&v82);
          v76 = v75[9];
          v146 = v75[8];
          v147 = v76;
          v148 = v75[10];
          v77 = v75[5];
          v142 = v75[4];
          v143 = v77;
          v78 = v75[6];
          v145 = v75[7];
          v144 = v78;
          v79 = v75[1];
          v138 = *v75;
          v139 = v79;
          v80 = v75[2];
          v141 = v75[3];
          v140 = v80;
          v29 = static BodyStructure.Singlepart.__derived_struct_equals(_:_:)(&v127, &v138);
          goto LABEL_46;
        }
      }

      UInt32.init(_:)(&v82);
    }

    sub_1002599EC(__dst);
    return 0;
  }

  if (v5 >> 62 != 2)
  {
    return 0;
  }

  v37 = (v4 & 0x3FFFFFFFFFFFFFFFLL);
  v38 = v37[4];
  v39 = (v5 & 0x3FFFFFFFFFFFFFFFLL);
  v40 = v39[4];
  if (v37[2] == v39[2] && v37[3] == v39[3])
  {
    if (v38 != v40)
    {
      return 0;
    }

    goto LABEL_31;
  }

  v42 = 0;
  if ((sub_1004A6D34() & 1) != 0 && v38 == v40)
  {
LABEL_31:
    v43 = *(a1 + 3);
    v44 = *(a1 + 7);
    v126[2] = *(a1 + 5);
    v126[3] = v44;
    v126[4] = *(a1 + 9);
    v45 = *(a1 + 1);
    v126[1] = v43;
    v126[0] = v45;
    v46 = *(a2 + 24);
    v47 = *(a2 + 56);
    v125[2] = *(a2 + 40);
    v125[3] = v47;
    v125[4] = *(a2 + 72);
    v48 = *(a2 + 8);
    v125[1] = v46;
    v125[0] = v48;
    if (_s12NIOIMAPCore213BodyStructureO6FieldsV23__derived_struct_equalsySbAE_AEtFZ_0(v126, v125))
    {
      v49 = *(a1 + 17);
      v109 = *(a1 + 15);
      v110 = v49;
      v111 = *(a1 + 19);
      *&v112 = a1[21];
      v50 = *(a1 + 13);
      v107 = *(a1 + 11);
      v108 = v50;
      v51 = *(a2 + 136);
      v84 = *(a2 + 120);
      v85 = v51;
      v86 = *(a2 + 152);
      *&v87 = *(a2 + 168);
      v52 = *(a2 + 104);
      v82 = *(a2 + 88);
      v83 = v52;
      v53 = v107;
      if (*(&v107 + 1) == 1)
      {
        if (*(&v82 + 1) == 1)
        {
          v42 = 1;
          *&__dst[0] = v107;
          *(&__dst[0] + 1) = 1;
          v54 = *(a1 + 15);
          v55 = *(a1 + 19);
          __dst[3] = *(a1 + 17);
          __dst[4] = v55;
          *&__dst[5] = a1[21];
          __dst[1] = *(a1 + 13);
          __dst[2] = v54;
          sub_10000E268(&v107, &v94, &qword_1005DBCE8, &qword_1004FE600);
          sub_10000E268(&v82, &v94, &qword_1005DBCE8, &qword_1004FE600);
          v56 = __dst;
LABEL_40:
          sub_100025F40(v56, &qword_1005DBCE8, &qword_1004FE600);
          return v42;
        }
      }

      else if (*(&v82 + 1) != 1)
      {
        v119[0] = v82;
        v66 = *(a2 + 120);
        v67 = *(a2 + 152);
        v120 = *(a2 + 136);
        v121 = v67;
        v122 = *(a2 + 168);
        v68 = *(a2 + 104);
        v119[2] = v66;
        v119[1] = v68;
        *&__dst[5] = v122;
        __dst[3] = v120;
        __dst[4] = v67;
        __dst[1] = v68;
        __dst[2] = v66;
        __dst[0] = v82;
        v69 = *(a1 + 13);
        *&v99 = a1[21];
        v70 = *(a1 + 19);
        v97 = *(a1 + 17);
        v98 = v70;
        v71 = *(a1 + 15);
        v95 = v69;
        v96 = v71;
        v94 = v107;
        sub_10000E268(&v107, v123, &qword_1005DBCE8, &qword_1004FE600);
        sub_10000E268(&v82, v123, &qword_1005DBCE8, &qword_1004FE600);
        v42 = _s12NIOIMAPCore213BodyStructureO10SinglepartV9ExtensionV23__derived_struct_equalsySbAG_AGtFZ_0(&v94, __dst);
        sub_100025F40(v119, &qword_1005DBCE8, &qword_1004FE600);
        v123[0] = v53;
        v72 = *(a1 + 15);
        v73 = *(a1 + 19);
        v123[3] = *(a1 + 17);
        v123[4] = v73;
        v124 = a1[21];
        v123[1] = *(a1 + 13);
        v123[2] = v72;
        v56 = v123;
        goto LABEL_40;
      }

      __dst[0] = v107;
      v57 = *(a1 + 15);
      v58 = *(a1 + 19);
      __dst[3] = *(a1 + 17);
      __dst[4] = v58;
      v59 = a1[21];
      __dst[1] = *(a1 + 13);
      __dst[2] = v57;
      *&__dst[5] = v59;
      *(&__dst[5] + 8) = v82;
      *(&__dst[10] + 1) = *(a2 + 168);
      *(&__dst[9] + 8) = *(a2 + 152);
      *(&__dst[8] + 8) = *(a2 + 136);
      *(&__dst[7] + 8) = *(a2 + 120);
      *(&__dst[6] + 8) = *(a2 + 104);
      sub_10000E268(&v107, &v94, &qword_1005DBCE8, &qword_1004FE600);
      sub_10000E268(&v82, &v94, &qword_1005DBCE8, &qword_1004FE600);
      sub_100025F40(__dst, &qword_1005DBCF0, &qword_1004FE608);
    }

    return 0;
  }

  return v42;
}

uint64_t sub_1004993BC(uint64_t a1)
{
  v2 = v1;
  v4 = *a1 >> 62;
  if (v4)
  {
    if (v4 == 1)
    {
      memcpy(__dst, ((*a1 & 0x3FFFFFFFFFFFFFFFLL) + 16), 0x148uLL);
      v5 = *(a1 + 24);
      v6 = *(a1 + 56);
      v46[2] = *(a1 + 40);
      v46[3] = v6;
      v46[4] = *(a1 + 72);
      v46[0] = *(a1 + 8);
      v46[1] = v5;
      sub_100259990(__dst, v39);
      sub_10049AF5C(__dst, v46);
      v8 = v7;
      sub_1002599EC(__dst);
      goto LABEL_7;
    }

    v15 = *((*a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    v16 = *((*a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
    v17 = *((*a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
    v18 = *(a1 + 24);
    v19 = *(a1 + 56);
    __dst[2] = *(a1 + 40);
    __dst[3] = v19;
    __dst[4] = *(a1 + 72);
    __dst[0] = *(a1 + 8);
    __dst[1] = v18;

    sub_10049B274(v15, v16, v17, __dst);
    v8 = v20;
  }

  else
  {
    v9 = *((*a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    v10 = *((*a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
    v11 = *((*a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
    v12 = *((*a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x28);
    v13 = *(a1 + 24);
    v14 = *(a1 + 56);
    __dst[2] = *(a1 + 40);
    __dst[3] = v14;
    __dst[4] = *(a1 + 72);
    __dst[0] = *(a1 + 8);
    __dst[1] = v13;

    v8 = sub_10049AE30(v9, v10, v11, v12, __dst);
  }

LABEL_7:
  v21 = *(a1 + 88);
  v22 = *(a1 + 136);
  v44[2] = *(a1 + 120);
  v44[3] = v22;
  v44[4] = *(a1 + 152);
  v45 = *(a1 + 168);
  v23 = *(a1 + 104);
  v44[0] = v21;
  v44[1] = v23;
  if (*(&v21 + 1) == 1)
  {
    return v8;
  }

  v39[0] = v44[0];
  v24 = *(a1 + 120);
  v25 = *(a1 + 152);
  v39[3] = *(a1 + 136);
  v39[4] = v25;
  v40 = *(a1 + 168);
  v26 = *(a1 + 104);
  v39[2] = v24;
  v39[1] = v26;
  v27 = *(v2 + 20);
  v28 = *(a1 + 136);
  v42[2] = *(a1 + 120);
  v42[3] = v28;
  v42[4] = *(a1 + 152);
  v43 = *(a1 + 168);
  v29 = *(a1 + 104);
  v42[0] = *(a1 + 88);
  v42[1] = v29;
  sub_1003FF7C8(v42, v41);
  result = sub_1002F178C(0x20uLL, 0xE100000000000000, v2 + 8, v27);
  if (v31)
  {
    v32._countAndFlagsBits = 32;
    v32._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v32, v27);
  }

  v33 = *(v2 + 20);
  v34 = __CFADD__(v33, result);
  v35 = v33 + result;
  if (v34)
  {
    __break(1u);
    goto LABEL_15;
  }

  *(v2 + 20) = v35;
  v36 = v8 + result;
  if (__OFADD__(v8, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  sub_10049B448(v39);
  v38 = v37;
  result = sub_100025F40(v44, &qword_1005DBCE8, &qword_1004FE600);
  v8 = v36 + v38;
  if (!__OFADD__(v36, v38))
  {
    return v8;
  }

LABEL_16:
  __break(1u);
  return result;
}

double BodyStructure.Singlepart.Extension.init(digest:dispositionAndLanguage:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v10 = xmmword_1004B1230;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0;
  *&v9 = a1;
  *(&v9 + 1) = a2;
  sub_10027F8A8(a3, &v10, &qword_1005DBCD8, &qword_1004FE5F0);
  v17 = v11;
  v18 = v12;
  v19 = v13;
  v20 = v14;
  v15 = v9;
  v16 = v10;
  v21[2] = v11;
  v21[3] = v12;
  v21[4] = v13;
  v22 = v14;
  v21[0] = v9;
  v21[1] = v10;
  sub_1003FF7C8(&v15, &v8);
  sub_1003FF824(v21);
  v5 = v18;
  *(a4 + 32) = v17;
  *(a4 + 48) = v5;
  *(a4 + 64) = v19;
  *(a4 + 80) = v20;
  result = *&v15;
  v7 = v16;
  *a4 = v15;
  *(a4 + 16) = v7;
  return result;
}

__n128 BodyStructure.Singlepart.init(kind:fields:extension:)@<Q0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *&v13[88] = xmmword_1004B1230;
  memset(&v13[104], 0, 72);
  v5 = *a2;
  *&v13[24] = a2[1];
  v6 = a2[3];
  *&v13[40] = a2[2];
  *&v13[56] = v6;
  *&v13[72] = a2[4];
  *v13 = a1;
  *&v13[8] = v5;
  sub_10027F8A8(a3, &v13[88], &qword_1005DBCE8, &qword_1004FE600);
  v22 = *&v13[128];
  v23 = *&v13[144];
  v24 = *&v13[160];
  v18 = *&v13[64];
  v19 = *&v13[80];
  v20 = *&v13[96];
  v21 = *&v13[112];
  v14 = *v13;
  v15 = *&v13[16];
  v16 = *&v13[32];
  v17 = *&v13[48];
  v25[8] = *&v13[128];
  v25[9] = *&v13[144];
  v25[10] = *&v13[160];
  v25[4] = *&v13[64];
  v25[5] = *&v13[80];
  v25[6] = *&v13[96];
  v25[7] = *&v13[112];
  v25[0] = *v13;
  v25[1] = *&v13[16];
  v25[2] = *&v13[32];
  v25[3] = *&v13[48];
  sub_1002578F8(&v14, &v12);
  sub_100257954(v25);
  v7 = v23;
  *(a4 + 128) = v22;
  *(a4 + 144) = v7;
  *(a4 + 160) = v24;
  v8 = v19;
  *(a4 + 64) = v18;
  *(a4 + 80) = v8;
  v9 = v21;
  *(a4 + 96) = v20;
  *(a4 + 112) = v9;
  v10 = v15;
  *a4 = v14;
  *(a4 + 16) = v10;
  result = v17;
  *(a4 + 32) = v16;
  *(a4 + 48) = result;
  return result;
}

__n128 BodyStructure.Singlepart.Message.init(message:envelope:body:lineCount:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v6 = a4[10];
  *(a6 + 280) = a4[9];
  *(a6 + 296) = v6;
  *(a6 + 264) = a4[8];
  v7 = *(a3 + 80);
  *(a6 + 80) = *(a3 + 64);
  *(a6 + 96) = v7;
  *(a6 + 112) = *(a3 + 96);
  v8 = *(a3 + 16);
  *(a6 + 16) = *a3;
  *(a6 + 32) = v8;
  v9 = *(a3 + 48);
  *(a6 + 48) = *(a3 + 32);
  *(a6 + 64) = v9;
  v10 = a4[6];
  *(a6 + 248) = a4[7];
  *(a6 + 232) = v10;
  v11 = a4[4];
  *(a6 + 216) = a4[5];
  *(a6 + 200) = v11;
  v12 = a4[2];
  *(a6 + 184) = a4[3];
  *(a6 + 168) = v12;
  v14 = *a4;
  result = a4[1];
  *(a6 + 152) = result;
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 128) = *(a3 + 112);
  *(a6 + 312) = *(a4 + 176);
  *(a6 + 136) = v14;
  *(a6 + 320) = a5;
  return result;
}

uint64_t BodyStructure.Singlepart.kind.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t BodyStructure.Singlepart.kind.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

void BodyStructure.Singlepart.hash(into:)(uint64_t a1)
{
  BodyStructure.Singlepart.Kind.hash(into:)(a1, *v1);
  BodyStructure.Fields.hash(into:)(a1);
  v3 = v1[12];
  if (v3 == 1)
  {
    goto LABEL_4;
  }

  v4 = v1[14];
  v5 = v1[16];
  v6 = v1[18];
  v7 = v1[19];
  v8 = v1[21];
  v16 = v1[20];
  v17 = v1[17];
  sub_1004A6EC4(1u);
  if (v3)
  {
    sub_1004A6EC4(1u);
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    if (v4 == 1)
    {
LABEL_4:
      sub_1004A6EC4(0);
      return;
    }
  }

  else
  {
    sub_1004A6EC4(0);
    if (v4 == 1)
    {
      goto LABEL_4;
    }
  }

  sub_1004A6EC4(1u);
  if (!v4)
  {
    sub_1004A6EC4(0);
    goto LABEL_13;
  }

  v13 = v8;
  v14 = v7;
  v15 = v6;
  sub_1004A6EC4(1u);
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  v9 = *(v17 + 16);
  sub_1004A6EB4(v9);

  if (!v9)
  {
LABEL_11:

    v7 = v14;
    v6 = v15;
    v8 = v13;
LABEL_13:

    sub_1003B0794(a1, v6, v7, v16, v8);
    return;
  }

  v10 = 0;
  v11 = v17 + 40;
  v12 = v5 + 40;
  while (v10 < *(v5 + 16))
  {
    ++v10;

    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

    v11 += 16;
    v12 += 16;
    if (v9 == v10)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
}

Swift::Int BodyStructure.Singlepart.hashValue.getter()
{
  sub_1004A6E94();
  BodyStructure.Singlepart.hash(into:)(v1);
  return sub_1004A6F14();
}

Swift::Int sub_100499C24(uint64_t a1)
{
  sub_1004A6E94();
  BodyStructure.Singlepart.hash(into:)(v2);
  return sub_1004A6F14();
}

BOOL static BodyStructure.Singlepart.Message.__derived_struct_equals(_:_:)(uint64_t *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (v4 || (sub_1004A6D34()) && (v5 = *(a1 + 6), v31[4] = *(a1 + 5), v31[5] = v5, v31[6] = *(a1 + 7), v32 = a1[16], v6 = *(a1 + 2), v31[0] = *(a1 + 1), v31[1] = v6, v7 = *(a1 + 4), v31[2] = *(a1 + 3), v31[3] = v7, v8 = *(a2 + 16), v9 = *(a2 + 32), v10 = *(a2 + 64), v29[2] = *(a2 + 48), v29[3] = v10, v29[0] = v8, v29[1] = v9, v11 = *(a2 + 80), v12 = *(a2 + 96), v13 = *(a2 + 112), v30 = *(a2 + 128), v29[5] = v12, v29[6] = v13, v29[4] = v11, _s12NIOIMAPCore28EnvelopeV23__derived_struct_equalsySbAC_ACtFZ_0(v31, v29)) && (v28 = *(a1 + 312), v14 = *(a1 + 27), v27[4] = *(a1 + 25), v27[5] = v14, v15 = *(a1 + 31), v27[6] = *(a1 + 29), v27[7] = v15, v16 = *(a1 + 19), v27[0] = *(a1 + 17), v27[1] = v16, v17 = *(a1 + 23), v27[2] = *(a1 + 21), v27[3] = v17, v18 = *(a1 + 35), v27[8] = *(a1 + 33), v27[9] = v18, v27[10] = *(a1 + 37), v19 = *(a2 + 280), v25[8] = *(a2 + 264), v25[9] = v19, v25[10] = *(a2 + 296), v26 = *(a2 + 312), v20 = *(a2 + 216), v25[4] = *(a2 + 200), v25[5] = v20, v21 = *(a2 + 248), v25[6] = *(a2 + 232), v25[7] = v21, v22 = *(a2 + 152), v25[0] = *(a2 + 136), v25[1] = v22, v23 = *(a2 + 184), v25[2] = *(a2 + 168), v25[3] = v23, _s12NIOIMAPCore213BodyStructureO21__derived_enum_equalsySbAC_ACtFZ_0(v27, v25)))
  {
    return a1[40] == *(a2 + 320);
  }

  else
  {
    return 0;
  }
}

uint64_t BodyStructure.Singlepart.Kind.hash(into:)(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    if (a2 >> 62 == 1)
    {
      memcpy(__dst, ((a2 & 0x3FFFFFFFFFFFFFFFLL) + 16), 0x148uLL);
      sub_1004A6EB4(1uLL);
      sub_100259990(__dst, v14);
      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
      v27 = *&__dst[10];
      v28 = *&__dst[12];
      v29 = *&__dst[14];
      v30 = __dst[16];
      v23 = *&__dst[2];
      v24 = *&__dst[4];
      v25 = *&__dst[6];
      v26 = *&__dst[8];
      Envelope.hash(into:)(a1);
      v14[8] = *&__dst[33];
      v14[9] = *&__dst[35];
      v14[10] = *&__dst[37];
      v15 = __dst[39];
      v14[4] = *&__dst[25];
      v14[5] = *&__dst[27];
      v14[6] = *&__dst[29];
      v14[7] = *&__dst[31];
      v14[0] = *&__dst[17];
      v14[1] = *&__dst[19];
      v14[2] = *&__dst[21];
      v14[3] = *&__dst[23];
      if (sub_10000FE88(v14) == 1)
      {
        v3 = UInt32.init(_:)(v14);
        sub_1004A6EB4(1uLL);
        sub_1003AF454(a1, *v3);
        _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
        v4 = *(v3 + 72);
        v19 = *(v3 + 56);
        v20 = v4;
        v5 = *(v3 + 104);
        v21 = *(v3 + 88);
        v22 = v5;
        v6 = *(v3 + 40);
        v17 = *(v3 + 24);
        v18 = v6;
        sub_1003B053C(a1);
      }

      else
      {
        v9 = UInt32.init(_:)(v14);
        sub_1004A6EB4(0);
        BodyStructure.Singlepart.Kind.hash(into:)(a1, *v9);
        v10 = *(v9 + 24);
        v11 = *(v9 + 56);
        *&__dst[45] = *(v9 + 40);
        *&__dst[47] = v11;
        *&__dst[49] = *(v9 + 72);
        *&__dst[41] = *(v9 + 8);
        *&__dst[43] = v10;
        BodyStructure.Fields.hash(into:)(a1);
        v12 = *(v9 + 136);
        v19 = *(v9 + 120);
        v20 = v12;
        v21 = *(v9 + 152);
        *&v22 = *(v9 + 168);
        v13 = *(v9 + 104);
        v17 = *(v9 + 88);
        v18 = v13;
        sub_1003B0920(a1);
      }

      sub_1004A6EB4(__dst[40]);
      return sub_1002599EC(__dst);
    }

    v7 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
    sub_1004A6EB4(2uLL);

    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    sub_1004A6EB4(v7);
  }

  else
  {
    sub_1004A6EB4(0);

    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  }
}

Swift::Int BodyStructure.Singlepart.Kind.hashValue.getter(unint64_t a1)
{
  sub_1004A6E94();
  BodyStructure.Singlepart.Kind.hash(into:)(v3, a1);
  return sub_1004A6F14();
}

Swift::Int sub_10049A100()
{
  v1 = *v0;
  sub_1004A6E94();
  BodyStructure.Singlepart.Kind.hash(into:)(v3, v1);
  return sub_1004A6F14();
}

Swift::Int sub_10049A150(uint64_t a1)
{
  v2 = *v1;
  sub_1004A6E94();
  BodyStructure.Singlepart.Kind.hash(into:)(v4, v2);
  return sub_1004A6F14();
}

void BodyStructure.Singlepart.Message.hash(into:)(uint64_t a1)
{
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  Envelope.hash(into:)(a1);
  v3 = *(v1 + 280);
  v10[8] = *(v1 + 264);
  v10[9] = v3;
  v10[10] = *(v1 + 296);
  v11 = *(v1 + 312);
  v4 = *(v1 + 216);
  v10[4] = *(v1 + 200);
  v10[5] = v4;
  v5 = *(v1 + 248);
  v10[6] = *(v1 + 232);
  v10[7] = v5;
  v6 = *(v1 + 152);
  v10[0] = *(v1 + 136);
  v10[1] = v6;
  v7 = *(v1 + 184);
  v10[2] = *(v1 + 168);
  v10[3] = v7;
  if (sub_10000FE88(v10) == 1)
  {
    v8 = *UInt32.init(_:)(v10);
    sub_1004A6EB4(1uLL);
    sub_1003AF454(a1, v8);
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    sub_1003B053C(a1);
  }

  else
  {
    v9 = *UInt32.init(_:)(v10);
    sub_1004A6EB4(0);
    BodyStructure.Singlepart.Kind.hash(into:)(a1, v9);
    BodyStructure.Fields.hash(into:)(a1);
    sub_1003B0920(a1);
  }

  sub_1004A6EB4(*(v1 + 320));
}

Swift::Int BodyStructure.Singlepart.Message.hashValue.getter()
{
  sub_1004A6E94();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  v1 = *(v0 + 96);
  v28 = *(v0 + 80);
  v29 = v1;
  v30 = *(v0 + 112);
  v31 = *(v0 + 128);
  v2 = *(v0 + 32);
  v24 = *(v0 + 16);
  v25 = v2;
  v3 = *(v0 + 64);
  v26 = *(v0 + 48);
  v27 = v3;
  Envelope.hash(into:)(v23);
  v4 = *(v0 + 280);
  v43[8] = *(v0 + 264);
  v43[9] = v4;
  v43[10] = *(v0 + 296);
  v44 = *(v0 + 312);
  v5 = *(v0 + 216);
  v43[4] = *(v0 + 200);
  v43[5] = v5;
  v6 = *(v0 + 248);
  v43[6] = *(v0 + 232);
  v43[7] = v6;
  v7 = *(v0 + 152);
  v43[0] = *(v0 + 136);
  v43[1] = v7;
  v8 = *(v0 + 184);
  v43[2] = *(v0 + 168);
  v43[3] = v8;
  if (sub_10000FE88(v43) == 1)
  {
    v9 = UInt32.init(_:)(v43);
    v10 = *v9;
    v11 = *(v9 + 72);
    v39 = *(v9 + 56);
    v40 = v11;
    v12 = *(v9 + 104);
    v41 = *(v9 + 88);
    v42 = v12;
    v13 = *(v9 + 40);
    v37 = *(v9 + 24);
    v38 = v13;
    sub_1004A6EB4(1uLL);
    sub_1003AF454(v23, v10);
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    sub_1003B053C(v23);
  }

  else
  {
    v14 = UInt32.init(_:)(v43);
    v15 = *v14;
    v16 = *(v14 + 24);
    v17 = *(v14 + 56);
    v34 = *(v14 + 40);
    v35 = v17;
    v18 = *(v14 + 72);
    v32 = *(v14 + 8);
    v33 = v16;
    v19 = *(v14 + 120);
    v20 = *(v14 + 152);
    v40 = *(v14 + 136);
    v41 = v20;
    *&v42 = *(v14 + 168);
    v21 = *(v14 + 88);
    v36 = v18;
    v37 = v21;
    v38 = *(v14 + 104);
    v39 = v19;
    sub_1004A6EB4(0);
    BodyStructure.Singlepart.Kind.hash(into:)(v23, v15);
    BodyStructure.Fields.hash(into:)(v23);
    sub_1003B0920(v23);
  }

  sub_1004A6EB4(*(v0 + 320));
  return sub_1004A6F14();
}

void sub_10049A5E0(uint64_t a1)
{
  v3 = *(v1 + 320);
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  Envelope.hash(into:)(a1);
  v4 = *(v1 + 280);
  v11[8] = *(v1 + 264);
  v11[9] = v4;
  v11[10] = *(v1 + 296);
  v12 = *(v1 + 312);
  v5 = *(v1 + 216);
  v11[4] = *(v1 + 200);
  v11[5] = v5;
  v6 = *(v1 + 248);
  v11[6] = *(v1 + 232);
  v11[7] = v6;
  v7 = *(v1 + 152);
  v11[0] = *(v1 + 136);
  v11[1] = v7;
  v8 = *(v1 + 184);
  v11[2] = *(v1 + 168);
  v11[3] = v8;
  if (sub_10000FE88(v11) == 1)
  {
    v9 = UInt32.init(_:)(v11);
    sub_1004A6EB4(1uLL);
    sub_1003AF454(a1, *v9);
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    sub_1003B053C(a1);
  }

  else
  {
    v10 = UInt32.init(_:)(v11);
    sub_1004A6EB4(0);
    BodyStructure.Singlepart.Kind.hash(into:)(a1, *v10);
    BodyStructure.Fields.hash(into:)(a1);
    sub_1003B0920(a1);
  }

  sub_1004A6EB4(v3);
}

Swift::Int sub_10049A7AC(uint64_t a1)
{
  v2 = *(v1 + 96);
  v37 = *(v1 + 80);
  v38 = v2;
  v39 = *(v1 + 112);
  v40 = *(v1 + 128);
  v3 = *(v1 + 32);
  v33 = *(v1 + 16);
  v34 = v3;
  v4 = *(v1 + 64);
  v35 = *(v1 + 48);
  v36 = v4;
  v5 = *(v1 + 320);
  sub_1004A6E94();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  Envelope.hash(into:)(v21);
  v6 = *(v1 + 280);
  v41[8] = *(v1 + 264);
  v41[9] = v6;
  v41[10] = *(v1 + 296);
  v42 = *(v1 + 312);
  v7 = *(v1 + 216);
  v41[4] = *(v1 + 200);
  v41[5] = v7;
  v8 = *(v1 + 248);
  v41[6] = *(v1 + 232);
  v41[7] = v8;
  v9 = *(v1 + 152);
  v41[0] = *(v1 + 136);
  v41[1] = v9;
  v10 = *(v1 + 184);
  v41[2] = *(v1 + 168);
  v41[3] = v10;
  if (sub_10000FE88(v41) == 1)
  {
    v11 = UInt32.init(_:)(v41);
    sub_1004A6EB4(1uLL);
    sub_1003AF454(v21, *v11);
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    v12 = *(v11 + 72);
    v29 = *(v11 + 56);
    v30 = v12;
    v13 = *(v11 + 104);
    v31 = *(v11 + 88);
    v32 = v13;
    v14 = *(v11 + 40);
    v27 = *(v11 + 24);
    v28 = v14;
    sub_1003B053C(v21);
  }

  else
  {
    v15 = UInt32.init(_:)(v41);
    sub_1004A6EB4(0);
    BodyStructure.Singlepart.Kind.hash(into:)(v21, *v15);
    v16 = *(v15 + 24);
    v17 = *(v15 + 56);
    v24 = *(v15 + 40);
    v25 = v17;
    v26 = *(v15 + 72);
    v22 = *(v15 + 8);
    v23 = v16;
    BodyStructure.Fields.hash(into:)(v21);
    v18 = *(v15 + 136);
    v29 = *(v15 + 120);
    v30 = v18;
    v31 = *(v15 + 152);
    *&v32 = *(v15 + 168);
    v19 = *(v15 + 104);
    v27 = *(v15 + 88);
    v28 = v19;
    sub_1003B0920(v21);
  }

  sub_1004A6EB4(v5);
  return sub_1004A6F14();
}

uint64_t sub_10049A9A0(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *(a1 + 6);
  v31[4] = *(a1 + 5);
  v31[5] = v6;
  v31[6] = *(a1 + 7);
  v32 = a1[16];
  v7 = *(a1 + 2);
  v31[0] = *(a1 + 1);
  v31[1] = v7;
  v8 = *(a1 + 4);
  v31[2] = *(a1 + 3);
  v31[3] = v8;
  v9 = *(a1 + 23);
  v27[2] = *(a1 + 21);
  v27[3] = v9;
  v10 = *(a1 + 19);
  v27[0] = *(a1 + 17);
  v27[1] = v10;
  v11 = *(a1 + 31);
  v27[6] = *(a1 + 29);
  v27[7] = v11;
  v12 = *(a1 + 27);
  v27[4] = *(a1 + 25);
  v27[5] = v12;
  v28 = *(a1 + 312);
  v13 = *(a1 + 37);
  v27[9] = *(a1 + 35);
  v27[10] = v13;
  v27[8] = *(a1 + 33);
  v14 = a1[40];
  v15 = *a2;
  v16 = a2[1];
  v17 = *(a2 + 6);
  v33[4] = *(a2 + 5);
  v33[5] = v17;
  v33[6] = *(a2 + 7);
  v34 = a2[16];
  v18 = *(a2 + 2);
  v33[0] = *(a2 + 1);
  v33[1] = v18;
  v19 = *(a2 + 4);
  v33[2] = *(a2 + 3);
  v33[3] = v19;
  v20 = *(a2 + 23);
  v29[2] = *(a2 + 21);
  v29[3] = v20;
  v21 = *(a2 + 19);
  v29[0] = *(a2 + 17);
  v29[1] = v21;
  v22 = *(a2 + 31);
  v29[6] = *(a2 + 29);
  v29[7] = v22;
  v23 = *(a2 + 27);
  v29[4] = *(a2 + 25);
  v29[5] = v23;
  v30 = *(a2 + 312);
  v24 = *(a2 + 37);
  v29[9] = *(a2 + 35);
  v29[10] = v24;
  v29[8] = *(a2 + 33);
  v25 = a2[40];
  if (v4 == v15 && v5 == v16 || (sub_1004A6D34()) && _s12NIOIMAPCore28EnvelopeV23__derived_struct_equalsySbAC_ACtFZ_0(v31, v33))
  {
    return _s12NIOIMAPCore213BodyStructureO21__derived_enum_equalsySbAC_ACtFZ_0(v27, v29) & (v14 == v25);
  }

  else
  {
    return 0;
  }
}

void BodyStructure.Singlepart.Extension.hash(into:)(uint64_t a1)
{
  v2 = v1;
  if (v2[1])
  {
    sub_1004A6EC4(1u);
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  }

  else
  {
    sub_1004A6EC4(0);
  }

  v4 = v2[3];
  if (v4 == 1)
  {
    sub_1004A6EC4(0);
    return;
  }

  v5 = v2[6];
  v17 = v2[5];
  v6 = v2[7];
  v7 = v2[8];
  v9 = v2[9];
  v8 = v2[10];
  sub_1004A6EC4(1u);
  if (!v4)
  {
    sub_1004A6EC4(0);
    goto LABEL_13;
  }

  v14 = v8;
  v15 = v9;
  v16 = v7;
  sub_1004A6EC4(1u);
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  v10 = *(v5 + 16);
  sub_1004A6EB4(v10);

  if (!v10)
  {
LABEL_11:

    v7 = v16;
    v8 = v14;
    v9 = v15;
LABEL_13:

    sub_1003B0794(a1, v6, v7, v9, v8);
    return;
  }

  v11 = 0;
  v12 = v5 + 40;
  v13 = v17 + 40;
  while (v11 < *(v17 + 16))
  {
    ++v11;

    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

    v12 += 16;
    v13 += 16;
    if (v10 == v11)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
}

Swift::Int BodyStructure.Singlepart.Extension.hashValue.getter()
{
  sub_1004A6E94();
  BodyStructure.Singlepart.Extension.hash(into:)(v1);
  return sub_1004A6F14();
}

Swift::Int sub_10049AD88(uint64_t a1)
{
  sub_1004A6E94();
  BodyStructure.Singlepart.Extension.hash(into:)(v2);
  return sub_1004A6F14();
}

BOOL sub_10049ADC4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v7[2] = *(a1 + 32);
  v7[3] = v2;
  v7[4] = *(a1 + 64);
  v8 = *(a1 + 80);
  v3 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v3;
  v4 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v9[3] = v4;
  v9[4] = *(a2 + 64);
  v10 = *(a2 + 80);
  v5 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v5;
  return _s12NIOIMAPCore213BodyStructureO10SinglepartV9ExtensionV23__derived_struct_equalsySbAG_AGtFZ_0(v7, v9);
}

uint64_t sub_10049AE30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v9 = sub_1004498E0(a1, a2);
  v10 = *(v5 + 20);
  result = sub_1002F178C(0x20uLL, 0xE100000000000000, v5 + 8, v10);
  if (v12)
  {
    v13._countAndFlagsBits = 32;
    v13._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v13, v10);
  }

  v14 = *(v5 + 20);
  v15 = __CFADD__(v14, result);
  v16 = v14 + result;
  if (v15)
  {
    __break(1u);
    goto LABEL_13;
  }

  *(v5 + 20) = v16;
  v17 = __OFADD__(v9, result);
  v18 = v9 + result;
  if (v17)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  result = sub_1004499A8(a3, a4);
  v19 = v18 + result;
  if (__OFADD__(v18, result))
  {
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v20 = *(v5 + 20);
  result = sub_1002F178C(0x20uLL, 0xE100000000000000, v5 + 8, v20);
  if (v21)
  {
    v22._countAndFlagsBits = 32;
    v22._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v22, v20);
  }

  v23 = *(v5 + 20);
  v15 = __CFADD__(v23, result);
  v24 = v23 + result;
  if (v15)
  {
    goto LABEL_15;
  }

  *(v5 + 20) = v24;
  v25 = v19 + result;
  if (__OFADD__(v19, result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  sub_1003F0B84(a5);
  v17 = __OFADD__(v25, v26);
  result = v25 + v26;
  if (v17)
  {
LABEL_17:
    __break(1u);
  }

  return result;
}

void sub_10049AF5C(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = *(v2 + 20);
  v7 = sub_1002F178C(0x4547415353454D22uLL, 0xEA00000000002022, v2 + 8, v6);
  if (v8)
  {
    v9._countAndFlagsBits = 0x4547415353454D22;
    v9._object = 0xEA00000000002022;
    v7 = ByteBuffer._setStringSlowpath(_:at:)(v9, v6);
  }

  v10 = v7;
  v11 = *(v2 + 20);
  v12 = __CFADD__(v11, v7);
  v13 = v11 + v7;
  if (v12)
  {
    __break(1u);
    goto LABEL_26;
  }

  *(v2 + 20) = v13;
  v14 = sub_1004499A8(*a1, *(a1 + 8));
  v15 = v10 + v14;
  if (__OFADD__(v10, v14))
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v16 = *(v2 + 20);
  v17 = sub_1002F178C(0x20uLL, 0xE100000000000000, v2 + 8, v16);
  if (v18)
  {
    v19._countAndFlagsBits = 32;
    v19._object = 0xE100000000000000;
    v17 = ByteBuffer._setStringSlowpath(_:at:)(v19, v16);
  }

  v20 = *(v2 + 20);
  v12 = __CFADD__(v20, v17);
  v21 = v20 + v17;
  if (v12)
  {
    goto LABEL_27;
  }

  *(v2 + 20) = v21;
  v22 = v15 + v17;
  if (__OFADD__(v15, v17))
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  sub_1003F0B84(a2);
  v24 = __OFADD__(v22, v23);
  v25 = v22 + v23;
  if (v24)
  {
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v26 = *(v2 + 20);
  v27 = sub_1002F178C(0x20uLL, 0xE100000000000000, v2 + 8, v26);
  if (v28)
  {
    v29._countAndFlagsBits = 32;
    v29._object = 0xE100000000000000;
    v27 = ByteBuffer._setStringSlowpath(_:at:)(v29, v26);
  }

  v30 = *(v2 + 20);
  v12 = __CFADD__(v30, v27);
  v31 = v30 + v27;
  if (v12)
  {
    goto LABEL_30;
  }

  *(v2 + 20) = v31;
  v32 = v25 + v27;
  if (__OFADD__(v25, v27))
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v33 = *(a1 + 96);
  v61[4] = *(a1 + 80);
  v61[5] = v33;
  v61[6] = *(a1 + 112);
  v62 = *(a1 + 128);
  v34 = *(a1 + 32);
  v61[0] = *(a1 + 16);
  v61[1] = v34;
  v35 = *(a1 + 64);
  v61[2] = *(a1 + 48);
  v61[3] = v35;
  sub_1003E7CBC(v61);
  v37 = v32 + v36;
  if (__OFADD__(v32, v36))
  {
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v38 = *(v2 + 20);
  v39 = sub_1002F178C(0x20uLL, 0xE100000000000000, v2 + 8, v38);
  if (v40)
  {
    v41._countAndFlagsBits = 32;
    v41._object = 0xE100000000000000;
    v39 = ByteBuffer._setStringSlowpath(_:at:)(v41, v38);
  }

  v42 = *(v2 + 20);
  v12 = __CFADD__(v42, v39);
  v43 = v42 + v39;
  if (v12)
  {
    goto LABEL_33;
  }

  *(v2 + 20) = v43;
  v44 = v37 + v39;
  if (__OFADD__(v37, v39))
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v60 = *(a1 + 312);
  v45 = *(a1 + 216);
  v59[4] = *(a1 + 200);
  v59[5] = v45;
  v46 = *(a1 + 248);
  v59[6] = *(a1 + 232);
  v59[7] = v46;
  v47 = *(a1 + 152);
  v59[0] = *(a1 + 136);
  v59[1] = v47;
  v48 = *(a1 + 184);
  v59[2] = *(a1 + 168);
  v59[3] = v48;
  v49 = *(a1 + 280);
  v59[8] = *(a1 + 264);
  v59[9] = v49;
  v59[10] = *(a1 + 296);
  v50 = sub_1003AA66C(v59);
  v51 = v44 + v50;
  if (__OFADD__(v44, v50))
  {
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v63._countAndFlagsBits = sub_1004A6CE4();
  sub_1004A5994(v63);

  v52 = *(v2 + 20);
  v53 = sub_1002F178C(0x20uLL, 0xE100000000000000, v2 + 8, v52);
  if (v54)
  {
    v55._countAndFlagsBits = 32;
    v55._object = 0xE100000000000000;
    v53 = ByteBuffer._setStringSlowpath(_:at:)(v55, v52);
  }

  v56 = v53;

  v57 = *(v3 + 20);
  v12 = __CFADD__(v57, v56);
  v58 = v57 + v56;
  if (v12)
  {
    goto LABEL_36;
  }

  *(v3 + 20) = v58;
  if (__OFADD__(v51, v56))
  {
LABEL_37:
    __break(1u);
  }
}

void sub_10049B274(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  v9 = *(v4 + 20);
  v10 = sub_1002F178C(0x20225458455422uLL, 0xE700000000000000, v4 + 8, v9);
  if (v11)
  {
    v12._countAndFlagsBits = 0x20225458455422;
    v12._object = 0xE700000000000000;
    v10 = ByteBuffer._setStringSlowpath(_:at:)(v12, v9);
  }

  v13 = v10;
  v14 = *(v4 + 20);
  v15 = __CFADD__(v14, v10);
  v16 = v14 + v10;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  *(v4 + 20) = v16;
  v17 = sub_1004499A8(a1, a2);
  v18 = v13 + v17;
  if (__OFADD__(v13, v17))
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v19 = *(v4 + 20);
  v20 = sub_1002F178C(0x20uLL, 0xE100000000000000, v4 + 8, v19);
  if (v21)
  {
    v22._countAndFlagsBits = 32;
    v22._object = 0xE100000000000000;
    v20 = ByteBuffer._setStringSlowpath(_:at:)(v22, v19);
  }

  v23 = *(v4 + 20);
  v15 = __CFADD__(v23, v20);
  v24 = v23 + v20;
  if (v15)
  {
    goto LABEL_17;
  }

  *(v4 + 20) = v24;
  v25 = v18 + v20;
  if (__OFADD__(v18, v20))
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  sub_1003F0B84(a4);
  v27 = v25 + v26;
  if (__OFADD__(v25, v26))
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v35._countAndFlagsBits = sub_1004A6CE4();
  sub_1004A5994(v35);

  v28 = *(v4 + 20);
  v29 = sub_1002F178C(0x20uLL, 0xE100000000000000, v4 + 8, v28);
  if (v30)
  {
    v31._countAndFlagsBits = 32;
    v31._object = 0xE100000000000000;
    v29 = ByteBuffer._setStringSlowpath(_:at:)(v31, v28);
  }

  v32 = v29;

  v33 = *(v5 + 20);
  v15 = __CFADD__(v33, v32);
  v34 = v33 + v32;
  if (v15)
  {
    goto LABEL_20;
  }

  *(v5 + 20) = v34;
  if (__OFADD__(v27, v32))
  {
LABEL_21:
    __break(1u);
  }
}

void sub_10049B448(uint64_t a1)
{
  v3 = *(a1 + 8);
  if (v3)
  {
    sub_100441B60(*a1, v3);
    v5 = v4;
  }

  else
  {
    v6 = *(v1 + 20);
    v7 = sub_1002F178C(0x4C494EuLL, 0xE300000000000000, v1 + 8, v6);
    if (v8)
    {
      v9._countAndFlagsBits = 4999502;
      v9._object = 0xE300000000000000;
      v7 = ByteBuffer._setStringSlowpath(_:at:)(v9, v6);
    }

    v5 = v7;
    v10 = *(v1 + 20);
    v11 = __CFADD__(v10, v7);
    v12 = v10 + v7;
    if (v11)
    {
      goto LABEL_18;
    }

    *(v1 + 20) = v12;
  }

  if (*(a1 + 24) == 1)
  {
    v13 = 0;
  }

  else
  {
    v24 = *(a1 + 24);
    v14 = *(a1 + 16);
    v23 = *(a1 + 40);
    v15 = *(v1 + 20);
    v16 = sub_1002F178C(0x20uLL, 0xE100000000000000, v1 + 8, v15);
    if (v17)
    {
      v18._countAndFlagsBits = 32;
      v18._object = 0xE100000000000000;
      v16 = ByteBuffer._setStringSlowpath(_:at:)(v18, v15);
    }

    v19 = v16;
    v20 = *(v1 + 20);
    v11 = __CFADD__(v20, v16);
    v21 = v20 + v16;
    if (v11)
    {
      goto LABEL_16;
    }

    *(v1 + 20) = v21;
    v25 = v14;
    v26 = v24;
    v27 = v23;
    sub_1003E2110(&v25);
    v13 = v19 + v22;
    if (__OFADD__(v19, v22))
    {
LABEL_17:
      __break(1u);
LABEL_18:
      __break(1u);
      return;
    }
  }

  if (__OFADD__(v5, v13))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }
}

BOOL _s12NIOIMAPCore213BodyStructureO10SinglepartV9ExtensionV23__derived_struct_equalsySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2)
  {
    if (v3)
    {
      if (*a1 == *a2 && v2 == v3)
      {
        goto LABEL_8;
      }

      v5 = a1;
      v6 = a2;
      v7 = sub_1004A6D34();
      a2 = v6;
      v8 = v7;
      a1 = v5;
      if (v8)
      {
        goto LABEL_8;
      }
    }

    return 0;
  }

  if (v3)
  {
    return 0;
  }

LABEL_8:
  v9 = *(a1 + 64);
  v45[2] = *(a1 + 48);
  v45[3] = v9;
  v46 = *(a1 + 80);
  v10 = *(a1 + 32);
  v45[0] = *(a1 + 16);
  v45[1] = v10;
  v11 = *(a2 + 64);
  v43[2] = *(a2 + 48);
  v43[3] = v11;
  v44 = *(a2 + 80);
  v12 = *(a2 + 32);
  v43[0] = *(a2 + 16);
  v43[1] = v12;
  v13 = v45[0];
  if (*(&v45[0] + 1) == 1)
  {
    if (*(&v43[0] + 1) == 1)
    {
      v14 = 1;
      *&v33 = *&v45[0];
      *(&v33 + 1) = 1;
      v15 = *(a1 + 48);
      v34 = *(a1 + 32);
      v35 = v15;
      v36 = *(a1 + 64);
      v37 = *(a1 + 80);
      sub_10000E268(v45, v47, &qword_1005DBCD8, &qword_1004FE5F0);
      sub_10000E268(v43, v47, &qword_1005DBCD8, &qword_1004FE5F0);
      v16 = &v33;
LABEL_16:
      sub_100025F40(v16, &qword_1005DBCD8, &qword_1004FE5F0);
      return v14;
    }
  }

  else if (*(&v43[0] + 1) != 1)
  {
    v26 = v43[0];
    v19 = *(a2 + 48);
    v27 = *(a2 + 32);
    v28 = v19;
    v29 = *(a2 + 64);
    v30 = *(a2 + 80);
    v37 = v30;
    v35 = v19;
    v36 = v29;
    v33 = v43[0];
    v34 = v27;
    v20 = *(a1 + 32);
    v21 = *(a1 + 48);
    v22 = *(a1 + 64);
    v48 = *(a1 + 80);
    v47[2] = v21;
    v47[3] = v22;
    v47[1] = v20;
    v47[0] = v45[0];
    v23 = a1;
    sub_10000E268(v45, v31, &qword_1005DBCD8, &qword_1004FE5F0);
    sub_10000E268(v43, v31, &qword_1005DBCD8, &qword_1004FE5F0);
    v14 = _s12NIOIMAPCore213BodyStructureO22DispositionAndLanguageV23__derived_struct_equalsySbAE_AEtFZ_0(v47, &v33);
    sub_100025F40(&v26, &qword_1005DBCD8, &qword_1004FE5F0);
    v31[0] = v13;
    v24 = *(v23 + 48);
    v31[1] = *(v23 + 32);
    v31[2] = v24;
    v31[3] = *(v23 + 64);
    v32 = *(v23 + 80);
    v16 = v31;
    goto LABEL_16;
  }

  v17 = *(a1 + 48);
  v34 = *(a1 + 32);
  v35 = v17;
  v36 = *(a1 + 64);
  v18 = *(a2 + 48);
  v39 = *(a2 + 32);
  v33 = v45[0];
  v37 = *(a1 + 80);
  v38 = v43[0];
  v40 = v18;
  v41 = *(a2 + 64);
  v42 = *(a2 + 80);
  sub_10000E268(v45, v47, &qword_1005DBCD8, &qword_1004FE5F0);
  sub_10000E268(v43, v47, &qword_1005DBCD8, &qword_1004FE5F0);
  sub_100025F40(&v33, &qword_1005DBCE0, &qword_1004FE5F8);
  return 0;
}

BOOL _s12NIOIMAPCore213BodyStructureO10SinglepartV4KindO21__derived_enum_equalsySbAG_AGtFZ_0(unint64_t a1, unint64_t a2)
{
  if (!(a1 >> 62))
  {
    if (a2 >> 62)
    {
      return 0;
    }

    v15 = *(a1 + 32);
    v16 = *(a1 + 40);
    v17 = *(a2 + 32);
    v18 = *(a2 + 40);
    v19 = *(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24);
    if (!v19 && (sub_1004A6D34() & 1) == 0)
    {
      return 0;
    }

    v20 = v15 == v17 && v16 == v18;
    return v20 || (sub_1004A6D34() & 1) != 0;
  }

  if (a1 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return 0;
    }

    v21 = *((a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
    v22 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
    v23 = *((a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x10) == *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x10) && *((a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x18) == *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
    return (v23 || (sub_1004A6D34() & 1) != 0) && v21 == v22;
  }

  v2 = *((a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x70);
  v30[4] = *((a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x60);
  v30[5] = v2;
  v30[6] = *((a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x80);
  v3 = *((a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x30);
  v30[0] = *((a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
  v30[1] = v3;
  v4 = *((a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x50);
  v30[2] = *((a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x40);
  v30[3] = v4;
  v5 = *((a1 & 0x3FFFFFFFFFFFFFFFLL) + 0xC8);
  v28[2] = *((a1 & 0x3FFFFFFFFFFFFFFFLL) + 0xB8);
  v28[3] = v5;
  v6 = *((a1 & 0x3FFFFFFFFFFFFFFFLL) + 0xA8);
  v28[0] = *((a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x98);
  v28[1] = v6;
  v7 = *((a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x108);
  v8 = *((a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x118);
  v28[6] = *((a1 & 0x3FFFFFFFFFFFFFFFLL) + 0xF8);
  v28[7] = v7;
  v9 = *((a1 & 0x3FFFFFFFFFFFFFFFLL) + 0xE8);
  v28[4] = *((a1 & 0x3FFFFFFFFFFFFFFFLL) + 0xD8);
  v28[5] = v9;
  v10 = *((a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x138);
  v28[9] = *((a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x128);
  v28[10] = v10;
  v11 = *((a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
  v12 = *((a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
  v31 = *((a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x90);
  v29 = *((a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x148);
  v28[8] = v8;
  if (a2 >> 62 != 1)
  {
    return 0;
  }

  v13 = *((a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x150);
  memcpy(__dst, ((a2 & 0x3FFFFFFFFFFFFFFFLL) + 16), sizeof(__dst));
  if (__PAIR128__(v12, v11) != *__dst && (sub_1004A6D34() & 1) == 0)
  {
    return 0;
  }

  v32[4] = *&__dst[80];
  v32[5] = *&__dst[96];
  v32[6] = *&__dst[112];
  v33 = *&__dst[128];
  v32[0] = *&__dst[16];
  v32[1] = *&__dst[32];
  v32[2] = *&__dst[48];
  v32[3] = *&__dst[64];
  sub_100259990(__dst, v25);
  if (_s12NIOIMAPCore28EnvelopeV23__derived_struct_equalsySbAC_ACtFZ_0(v30, v32))
  {
    v26 = __dst[312];
    v25[4] = *&__dst[200];
    v25[5] = *&__dst[216];
    v25[6] = *&__dst[232];
    v25[7] = *&__dst[248];
    v25[0] = *&__dst[136];
    v25[1] = *&__dst[152];
    v25[2] = *&__dst[168];
    v25[3] = *&__dst[184];
    v25[8] = *&__dst[264];
    v25[9] = *&__dst[280];
    v25[10] = *&__dst[296];
    v14 = _s12NIOIMAPCore213BodyStructureO21__derived_enum_equalsySbAC_ACtFZ_0(v28, v25);
    sub_1002599EC(__dst);
    return v14 && v13 == *&__dst[320];
  }

  sub_1002599EC(__dst);
  return 0;
}

unint64_t sub_10049BBF8()
{
  result = qword_1005DDBE8;
  if (!qword_1005DDBE8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for BodyStructure.Singlepart, &type metadata for BodyStructure.Singlepart, v0, v1);
    atomic_store(result, &qword_1005DDBE8);
  }

  return result;
}

unint64_t sub_10049BC50()
{
  result = qword_1005DDBF0;
  if (!qword_1005DDBF0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for BodyStructure.Singlepart.Kind, &type metadata for BodyStructure.Singlepart.Kind, v0, v1);
    atomic_store(result, &qword_1005DDBF0);
  }

  return result;
}

unint64_t sub_10049BCA8()
{
  result = qword_1005DDBF8;
  if (!qword_1005DDBF8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for BodyStructure.Singlepart.Message, &type metadata for BodyStructure.Singlepart.Message, v0, v1);
    atomic_store(result, &qword_1005DDBF8);
  }

  return result;
}

unint64_t sub_10049BD00()
{
  result = qword_1005DDC00;
  if (!qword_1005DDC00)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for BodyStructure.Singlepart.Text, &type metadata for BodyStructure.Singlepart.Text, v0, v1);
    atomic_store(result, &qword_1005DDC00);
  }

  return result;
}

unint64_t sub_10049BD58()
{
  result = qword_1005DDC08;
  if (!qword_1005DDC08)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for BodyStructure.Singlepart.Extension, &type metadata for BodyStructure.Singlepart.Extension, v0, v1);
    atomic_store(result, &qword_1005DDC08);
  }

  return result;
}

uint64_t sub_10049BDAC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 176))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10049BDF4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 176) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 176) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10049BE9C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 328))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10049BEE4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *(result + 312) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 328) = 1;
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

    *(result + 328) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10049BF98(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 88))
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

uint64_t sub_10049BFF4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 88) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 88) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t StoreOperation.rawValue.getter(char a1)
{
  if (!a1)
  {
    return 43;
  }

  if (a1 == 1)
  {
    return 45;
  }

  return 0;
}

uint64_t sub_10049C0A4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE100000000000000;
  v4 = 45;
  if (v2 != 1)
  {
    v4 = 0;
    v3 = 0xE000000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 43;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE100000000000000;
  }

  v7 = 0xE100000000000000;
  v8 = 45;
  if (*a2 != 1)
  {
    v8 = 0;
    v7 = 0xE000000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 43;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE100000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1004A6D34();
  }

  return v11 & 1;
}

unint64_t sub_10049C168@<X0>(Swift::String *a1@<X0>, NIOIMAPCore2::StoreOperation_optional *a2@<X8>)
{
  result = _s12NIOIMAPCore214StoreOperationO8rawValueACSgSS_tcfC_0(a1->_countAndFlagsBits, a1->_object);
  a2->value = result;
  return result;
}

void sub_10049C198(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE100000000000000;
  v4 = 0xE100000000000000;
  v5 = 45;
  if (v2 != 1)
  {
    v5 = 0;
    v4 = 0xE000000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 43;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

Swift::Int sub_10049C1D0()
{
  sub_1004A6E94();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

  return sub_1004A6F14();
}

uint64_t sub_10049C24C(uint64_t a1)
{
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
}

Swift::Int sub_10049C2B4(uint64_t a1)
{
  sub_1004A6E94();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

  return sub_1004A6F14();
}

void StoreData.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = BYTE1(a2);
  if (a2 < 0)
  {
    sub_1004A6EB4(1uLL);
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

    sub_1004A6EC4(v4 & 1);
    v7 = *(a3 + 16);
    sub_1004A6EB4(v7);
    if (v7)
    {
      v8 = a3 + 54;
      do
      {
        v8 += 24;
        swift_beginAccess();
        sub_1004A6EA4();
        --v7;
      }

      while (v7);
    }
  }

  else
  {
    sub_1004A6EB4(0);
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

    sub_1004A6EC4(v4 & 1);
    v5 = *(a3 + 16);
    sub_1004A6EB4(v5);
    if (v5)
    {
      v6 = a3 + 40;
      do
      {
        sub_1004A5834();

        _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

        v6 += 16;
        --v5;
      }

      while (v5);
    }
  }
}

Swift::Int StoreData.hashValue.getter(uint64_t a1, uint64_t a2)
{
  sub_1004A6E94();
  StoreData.hash(into:)(v5, a1, a2);
  return sub_1004A6F14();
}

Swift::Int sub_10049C594()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1004A6E94();
  StoreData.hash(into:)(v4, v1, v2);
  return sub_1004A6F14();
}

Swift::Int sub_10049C5E8(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  sub_1004A6E94();
  StoreData.hash(into:)(v5, v2, v3);
  return sub_1004A6F14();
}

void StoreGmailLabels.hash(into:)(uint64_t a1, __int16 a2, uint64_t a3)
{
  v4 = HIBYTE(a2);
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

  sub_1004A6EC4(v4 & 1);
  v5 = *(a3 + 16);
  sub_1004A6EB4(v5);
  if (v5)
  {
    v6 = a3 + 54;
    do
    {
      v6 += 24;
      swift_beginAccess();
      sub_1004A6EA4();
      --v5;
    }

    while (v5);
  }
}

Swift::Int StoreGmailLabels.hashValue.getter(__int16 a1, uint64_t a2)
{
  v3 = HIBYTE(a1);
  sub_1004A6E94();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

  sub_1004A6EC4(v3 & 1);
  v4 = *(a2 + 16);
  sub_1004A6EB4(v4);
  if (v4)
  {
    v5 = a2 + 54;
    do
    {
      v5 += 24;
      swift_beginAccess();
      sub_1004A6EA4();
      --v4;
    }

    while (v4);
  }

  return sub_1004A6F14();
}

Swift::Int sub_10049C838()
{
  if (v0[1])
  {
    v1 = 256;
  }

  else
  {
    v1 = 0;
  }

  return StoreGmailLabels.hashValue.getter(v1 | *v0, *(v0 + 1));
}

void sub_10049C858(uint64_t a1)
{
  if (v1[1])
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  StoreGmailLabels.hash(into:)(a1, v2 | *v1, *(v1 + 1));
}

uint64_t static StoreFlags.add(silent:list:)(char a1)
{

  if (a1)
  {
    return 256;
  }

  else
  {
    return 0;
  }
}

uint64_t static StoreFlags.remove(silent:list:)(char a1)
{

  if (a1)
  {
    return 257;
  }

  else
  {
    return 1;
  }
}

uint64_t static StoreFlags.replace(silent:list:)(char a1)
{

  if (a1)
  {
    return 258;
  }

  else
  {
    return 2;
  }
}

void StoreFlags.hash(into:)(uint64_t a1, __int16 a2, uint64_t a3)
{
  v4 = HIBYTE(a2);
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

  sub_1004A6EC4(v4 & 1);
  v5 = *(a3 + 16);
  sub_1004A6EB4(v5);
  if (v5)
  {
    v6 = a3 + 40;
    do
    {
      sub_1004A5834();

      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

      v6 += 16;
      --v5;
    }

    while (v5);
  }
}

Swift::Int StoreFlags.hashValue.getter(__int16 a1, uint64_t a2)
{
  sub_1004A6E94();
  StoreFlags.hash(into:)(v5, a1 & 0x1FF, a2);
  return sub_1004A6F14();
}

Swift::Int sub_10049CA8C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 1);
  sub_1004A6E94();
  if (v2)
  {
    v4 = 256;
  }

  else
  {
    v4 = 0;
  }

  StoreFlags.hash(into:)(v6, v4 | v1, v3);
  return sub_1004A6F14();
}

void sub_10049CAF4(uint64_t a1)
{
  if (v1[1])
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  StoreFlags.hash(into:)(a1, v2 | *v1, *(v1 + 1));
}

Swift::Int sub_10049CB2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, void, uint64_t))
{
  v6 = *v4;
  v7 = v4[1];
  v8 = *(v4 + 1);
  sub_1004A6E94();
  if (v7)
  {
    v9 = 256;
  }

  else
  {
    v9 = 0;
  }

  a4(v11, v9 | v6, v8);
  return sub_1004A6F14();
}

uint64_t sub_10049CBB0(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (a1[1])
  {
    v5 = 256;
  }

  else
  {
    v5 = 0;
  }

  if (a2[1])
  {
    v6 = 256;
  }

  else
  {
    v6 = 0;
  }

  return sub_10049CED8(v5 | *a1, *(a1 + 1), v6 | *a2, *(a2 + 1), a5) & 1;
}

uint64_t sub_10049CC04(__int16 a1, void *a2)
{
  if ((a1 & 0x100) != 0)
  {
    v4 = 0x544E454C49532ELL;
  }

  else
  {
    v4 = 0;
  }

  if ((a1 & 0x100) != 0)
  {
    v5 = 0xE700000000000000;
  }

  else
  {
    v5 = 0xE000000000000000;
  }

  v6 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v7._countAndFlagsBits = 45;
    }

    else
    {
      v7._countAndFlagsBits = 0;
    }

    if (v6 == 1)
    {
      v8 = 0xE100000000000000;
    }

    else
    {
      v8 = 0xE000000000000000;
    }
  }

  else
  {
    v8 = 0xE100000000000000;
    v7._countAndFlagsBits = 43;
  }

  v7._object = v8;
  sub_1004A5994(v7);

  v20._countAndFlagsBits = 0x5347414C46;
  v20._object = 0xE500000000000000;
  sub_1004A5994(v20);
  v21._countAndFlagsBits = v4;
  v21._object = v5;
  sub_1004A5994(v21);

  v22._countAndFlagsBits = 32;
  v22._object = 0xE100000000000000;
  sub_1004A5994(v22);
  v9 = *(v2 + 20);
  v10 = sub_1002F178C(0, 0xE000000000000000, v2 + 8, v9);
  if (v11)
  {
    v12._countAndFlagsBits = 0;
    v12._object = 0xE000000000000000;
    v10 = ByteBuffer._setStringSlowpath(_:at:)(v12, v9);
  }

  v13 = v10;

  v15 = *(v2 + 20);
  v16 = __CFADD__(v15, v13);
  v17 = v15 + v13;
  if (v16)
  {
    __break(1u);
    goto LABEL_21;
  }

  *(v2 + 20) = v17;
  v18 = sub_1003F0FE8(a2);
  v19 = __OFADD__(v13, v18);
  result = v13 + v18;
  if (v19)
  {
LABEL_21:
    __break(1u);
  }

  return result;
}

uint64_t sub_10049CD5C(__int16 a1, uint64_t a2)
{
  v4 = a1;
  if ((a1 & 0x100) != 0)
  {
    v5 = 0x544E454C49532ELL;
  }

  else
  {
    v5 = 0;
  }

  if ((a1 & 0x100) != 0)
  {
    v6 = 0xE700000000000000;
  }

  else
  {
    v6 = 0xE000000000000000;
  }

  sub_1004A6724(16);
  if (v4)
  {
    if (v4 == 1)
    {
      v7._countAndFlagsBits = 45;
    }

    else
    {
      v7._countAndFlagsBits = 0;
    }

    if (v4 == 1)
    {
      v8 = 0xE100000000000000;
    }

    else
    {
      v8 = 0xE000000000000000;
    }
  }

  else
  {
    v8 = 0xE100000000000000;
    v7._countAndFlagsBits = 43;
  }

  v7._object = v8;
  sub_1004A5994(v7);

  v20._countAndFlagsBits = 0x42414C2D4D472D58;
  v20._object = 0xEB00000000534C45;
  sub_1004A5994(v20);
  v21._countAndFlagsBits = v5;
  v21._object = v6;
  sub_1004A5994(v21);

  v22._countAndFlagsBits = 32;
  v22._object = 0xE100000000000000;
  sub_1004A5994(v22);
  v9 = *(v2 + 20);
  v10 = sub_1002F178C(0, 0xE000000000000000, v2 + 8, v9);
  if (v11)
  {
    v12._countAndFlagsBits = 0;
    v12._object = 0xE000000000000000;
    v10 = ByteBuffer._setStringSlowpath(_:at:)(v12, v9);
  }

  v13 = v10;

  v15 = *(v2 + 20);
  v16 = __CFADD__(v15, v13);
  v17 = v15 + v13;
  if (v16)
  {
    __break(1u);
    goto LABEL_21;
  }

  *(v2 + 20) = v17;
  v18 = sub_1003F5D94(a2);
  v19 = __OFADD__(v13, v18);
  result = v13 + v18;
  if (v19)
  {
LABEL_21:
    __break(1u);
  }

  return result;
}

uint64_t sub_10049CED8(unsigned int a1, uint64_t a2, unsigned __int16 a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v8 = a3;
  v9 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v10 = 45;
    }

    else
    {
      v10 = 0;
    }

    if (v9 == 1)
    {
      v11 = 0xE100000000000000;
    }

    else
    {
      v11 = 0xE000000000000000;
    }
  }

  else
  {
    v11 = 0xE100000000000000;
    v10 = 43;
  }

  v12 = a3;
  v13 = 0xE100000000000000;
  v14 = 45;
  if (a3 != 1)
  {
    v14 = 0;
    v13 = 0xE000000000000000;
  }

  if (a3)
  {
    v15 = v14;
  }

  else
  {
    v15 = 43;
  }

  if (v8)
  {
    v16 = v13;
  }

  else
  {
    v16 = 0xE100000000000000;
  }

  if (v10 == v15 && v11 == v16)
  {

    if (((a1 ^ v12) & 0x100) != 0)
    {
      return 0;
    }
  }

  else
  {
    v17 = sub_1004A6D34();

    if (v17 & 1) == 0 || (((a1 ^ v12) >> 8))
    {
      return 0;
    }
  }

  return a5(a2, a4);
}

uint64_t _s12NIOIMAPCore29StoreDataO21__derived_enum_equalsySbAC_ACtFZ_0(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  if ((a1 & 0x8000000000000000) == 0)
  {
    if ((a3 & 0x8000000000000000) != 0)
    {
      goto LABEL_23;
    }

    if (a1)
    {
      v4 = 45;
      if (a1 == 1)
      {
        v5 = 0xE100000000000000;
      }

      else
      {
        v4 = 0;
        v5 = 0xE000000000000000;
      }

      v6 = a3;
      if (a3)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v5 = 0xE100000000000000;
      v4 = 43;
      v6 = a3;
      if (a3)
      {
LABEL_8:
        if (v6 == 1)
        {
          v7 = 0xE100000000000000;
          v8 = 45;
        }

        else
        {
          v8 = 0;
          v7 = 0xE000000000000000;
        }

LABEL_15:
        if (v4 == v8 && v5 == v7)
        {
          v12 = (a3 >> 8) & 1;
          v13 = (a1 >> 8) & 1;

          if (v13 != v12)
          {
            goto LABEL_23;
          }
        }

        else
        {
          v16 = sub_1004A6D34();

          if ((v16 & 1) == 0 || ((a1 >> 8) & 1) != ((a3 >> 8) & 1))
          {
            goto LABEL_23;
          }
        }

        if (sub_10010321C(a2, a4))
        {
          v9 = 1;
          return v9 & 1;
        }

LABEL_23:
        v9 = 0;
        return v9 & 1;
      }
    }

    v7 = 0xE100000000000000;
    v8 = 43;
    goto LABEL_15;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    goto LABEL_23;
  }

  v9 = sub_10049CED8(a1 & 0x1FF, a2, a3 & 0x1FF, a4, sub_1003A370C);
  return v9 & 1;
}

unint64_t _s12NIOIMAPCore214StoreOperationO8rawValueACSgSS_tcfC_0(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1005BB818;
  v6._object = a2;
  v4 = sub_1004A6AF4(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_10049D1DC()
{
  result = qword_1005DDC10;
  if (!qword_1005DDC10)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for StoreOperation, &type metadata for StoreOperation, v0, v1);
    atomic_store(result, &qword_1005DDC10);
  }

  return result;
}

unint64_t sub_10049D234()
{
  result = qword_1005DDC18;
  if (!qword_1005DDC18)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for StoreData, &type metadata for StoreData, v0, v1);
    atomic_store(result, &qword_1005DDC18);
  }

  return result;
}

unint64_t sub_10049D28C()
{
  result = qword_1005DDC20;
  if (!qword_1005DDC20)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for StoreGmailLabels, &type metadata for StoreGmailLabels, v0, v1);
    atomic_store(result, &qword_1005DDC20);
  }

  return result;
}

unint64_t sub_10049D2E4()
{
  result = qword_1005DDC28;
  if (!qword_1005DDC28)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for StoreFlags, &type metadata for StoreFlags, v0, v1);
    atomic_store(result, &qword_1005DDC28);
  }

  return result;
}

uint64_t sub_10049D354(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = (*a1 >> 3) & 0xFFFFFFC0 | (*a1 >> 2);
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t sub_10049D3A8(uint64_t result, int a2, int a3)
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
      *result = (8 * -a2) & 0x7FFFFFE00 | (4 * (-a2 & 0x3FLL));
      *(result + 8) = 0;
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

void StoreModifier.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for ParameterValue(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000C9C0(&qword_1005D7F50, &unk_100502FF0);
  __chkstk_darwin(v8 - 8);
  v10 = &v18 - v9;
  v11 = sub_10000C9C0(&qword_1005DBCA8, &unk_100504BF0);
  __chkstk_darwin(v11);
  v13 = &v18 - v12;
  v14 = type metadata accessor for StoreModifier(0);
  __chkstk_darwin(v14);
  v16 = (&v18 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10049DC4C(v2, v16);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1003E05A4(v16, v13);
    sub_1004A6EB4(1uLL);
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    sub_1003E0614(&v13[*(v11 + 52)], v10);
    if ((*(v5 + 48))(v10, 1, v4) == 1)
    {
      sub_1004A6EC4(0);
    }

    else
    {
      sub_1002FC114(v10, v7);
      sub_1004A6EC4(1u);
      ParameterValue.hash(into:)(a1);
      sub_10049DDAC(v7, type metadata accessor for ParameterValue);
    }

    sub_100025F40(v13, &qword_1005DBCA8, &unk_100504BF0);
  }

  else
  {
    v17 = *v16;
    sub_1004A6EB4(0);
    sub_1004A6EF4(v17);
  }
}

Swift::Int StoreModifier.hashValue.getter()
{
  sub_1004A6E94();
  StoreModifier.hash(into:)(v1);
  return sub_1004A6F14();
}

Swift::Int sub_10049D730(uint64_t a1)
{
  sub_1004A6E94();
  StoreModifier.hash(into:)(v2);
  return sub_1004A6F14();
}

unint64_t sub_10049D76C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C9C0(&qword_1005DBCA8, &unk_100504BF0);
  __chkstk_darwin(v4 - 8);
  v6 = (v29 - v5);
  v7 = type metadata accessor for StoreModifier(0);
  __chkstk_darwin(v7);
  v9 = (v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10049DC4C(a1, v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1003E05A4(v9, v6);
    v10 = sub_10049EB14(v6);
    sub_100025F40(v6, &qword_1005DBCA8, &unk_100504BF0);
    return v10;
  }

  v12 = *v9;
  v13 = *(a2 + 20);
  result = sub_1002F178C(0x45474E4148434E55uLL, 0xEF2045434E495344, a2 + 8, v13);
  if (v14)
  {
    v15._countAndFlagsBits = 0x45474E4148434E55;
    v15._object = 0xEF2045434E495344;
    result = ByteBuffer._setStringSlowpath(_:at:)(v15, v13);
  }

  v16 = result;
  v17 = *(a2 + 20);
  v18 = (v17 + result);
  if (__CFADD__(v17, result))
  {
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  *(a2 + 20) = v18;
  v29[0] = v12;
  v19 = sub_1004A6CE4();
  v21 = v20;
  v22 = sub_1002F178C(v19, v20, a2 + 8, v18);
  if (v23)
  {
    v24._countAndFlagsBits = v19;
    v24._object = v21;
    v22 = ByteBuffer._setStringSlowpath(_:at:)(v24, v18);
  }

  v25 = v22;

  v26 = *(a2 + 20);
  v27 = __CFADD__(v26, v25);
  v28 = v26 + v25;
  if (v27)
  {
    goto LABEL_12;
  }

  *(a2 + 20) = v28;
  result = v16 + v25;
  if (__OFADD__(v16, v25))
  {
LABEL_13:
    __break(1u);
  }

  return result;
}

uint64_t _s12NIOIMAPCore213StoreModifierO21__derived_enum_equalsySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C9C0(&qword_1005DBCA8, &unk_100504BF0);
  __chkstk_darwin(v4 - 8);
  v6 = (&v22 - v5);
  v7 = type metadata accessor for StoreModifier(0);
  __chkstk_darwin(v7);
  v9 = (&v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v10);
  v12 = (&v22 - v11);
  v13 = sub_10000C9C0(&qword_1005DBCC0, &qword_1004FE5D8);
  __chkstk_darwin(v13 - 8);
  v15 = &v22 - v14;
  v17 = *(v16 + 56);
  sub_10049DC4C(a1, &v22 - v14);
  sub_10049DC4C(a2, &v15[v17]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_10049DC4C(v15, v9);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1003E05A4(&v15[v17], v6);
      v18 = sub_100436BFC(v9, v6);
      sub_100025F40(v6, &qword_1005DBCA8, &unk_100504BF0);
      sub_100025F40(v9, &qword_1005DBCA8, &unk_100504BF0);
LABEL_7:
      sub_10049DDAC(v15, type metadata accessor for StoreModifier);
      return v18;
    }

    sub_100025F40(v9, &qword_1005DBCA8, &unk_100504BF0);
LABEL_9:
    sub_100025F40(v15, &qword_1005DBCC0, &qword_1004FE5D8);
    return 0;
  }

  sub_10049DC4C(v15, v12);
  v19 = *v12;
  result = swift_getEnumCaseMultiPayload();
  if (result == 1)
  {
    goto LABEL_9;
  }

  v21 = *&v15[v17];
  if (((v21 | v19) & 0x8000000000000000) == 0)
  {
    v18 = v21 == v19;
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t type metadata accessor for StoreModifier(uint64_t a1)
{
  result = qword_1005DDCA8;
  if (!qword_1005DDCA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10049DC4C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StoreModifier(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_10049DCF8(uint64_t a1)
{
  sub_1003E0740(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
  }
}

uint64_t sub_10049DD64(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10049DDAC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10049DE0C(uint64_t result, uint64_t a2, uint64_t *a3)
{
  v4 = result;
  LODWORD(v5) = 0;
  v6 = 0;
  if (result)
  {
    v7 = (a2 + result);
  }

  else
  {
    v7 = 0;
  }

  while (1)
  {
    v18 = v5;
    v19 = v6;
    if (!v6)
    {
      break;
    }

    if ((v5 & 0x80) != 0)
    {
      if (!v4)
      {
        goto LABEL_21;
      }

      v11 = v4;
      if (v4 == v7)
      {
        goto LABEL_21;
      }

LABEL_9:
      v4 = v11 + 1;
      LODWORD(v5) = (*v11 << v6) | ((-255 << v6) - 1) & v5;
      v13 = v6 + 8;
      if ((v6 + 8) >= 0x20u)
      {
        goto LABEL_20;
      }

      if (v4 == v7)
      {
        goto LABEL_18;
      }

      v4 = v11 + 2;
      LODWORD(v5) = (v11[1] << (v6 + 8)) | ((-255 << (v6 + 8)) - 1) & v5;
      v13 = v6 + 16;
      if ((v6 + 16) > 0x1Fu)
      {
        goto LABEL_20;
      }

      if (v4 == v7)
      {
        goto LABEL_18;
      }

      v4 = v11 + 3;
      LODWORD(v5) = (v11[2] << v13) | ((-255 << v13) - 1) & v5;
      v13 = v6 + 24;
      if ((v6 + 24) > 0x1Fu)
      {
        goto LABEL_20;
      }

      if (v4 == v7)
      {
        goto LABEL_18;
      }

      v4 = v11 + 4;
      LODWORD(v5) = (v11[3] << v13) | ((-255 << v13) - 1) & v5;
      v13 = v6 + 32;
      if (v6 < 0xE0u)
      {
LABEL_20:
        v6 = v13;
        goto LABEL_21;
      }

      if (v4 == v7 || (v4 = v11 + 5, LODWORD(v5) = (v11[4] << v6) | ((-255 << v6) - 1) & v5, v13 = v6 + 40, v6 += 40, v6 < 0x20u))
      {
LABEL_18:
        v6 = v13;
        if (!v13)
        {
          return result;
        }
      }

LABEL_21:
      if ((v5 & 0xC0E0) == 0x80C0)
      {
        if ((v5 & 0x1E) != 0)
        {
          v14 = 16;
LABEL_24:
          v18 = v5 >> v14;
          v19 = v6 - v14;
          goto LABEL_25;
        }
      }

      else if ((v5 & 0xC0C0F0) == 0x8080E0)
      {
        if ((v5 & 0x200F) != 0 && (v5 & 0x200F) != 0x200D)
        {
          v14 = 24;
          goto LABEL_24;
        }
      }

      else if ((v5 & 0xC0C0C0F8) == 0x808080F0 && (v5 & 0x3007) != 0 && __rev16(v5 & 0x3007) <= 0x400)
      {
        v14 = 32;
        goto LABEL_24;
      }

      result = sub_1004A6FB4();
      v5 = v5 >> ((8 * result) & 0x38);
      v6 -= 8 * result;
    }

    else
    {
      sub_1002A57BC();
      v15 = UnsafeExtractedAttachment.part.modify();
      sub_1002A5810(0);
      (v15)(&v16, 0);
LABEL_25:
      LODWORD(v5) = v18;
      v6 = v19;
      v8 = a3[1];
      v16 = *a3;
      v17 = v8;
      *a3 = 0;
      a3[1] = 0xE000000000000000;
      result = sub_1004A58C4();
      v9 = v17;
      *a3 = v16;
      a3[1] = v9;
    }
  }

  if (v4 && v4 != v7)
  {
    v10 = *v4++;
    v11 = v4;
    v12 = v10;
    if ((v10 & 0x80000000) == 0)
    {
      goto LABEL_25;
    }

    LODWORD(v5) = v5 & 0xFFFFFF00 | v12;
    v6 = 8;
    if (v4 == v7)
    {
      goto LABEL_21;
    }

    goto LABEL_9;
  }

  return result;
}

uint64_t static TaggedCommand.__derived_struct_equals(_:_:)(uint64_t *a1, void *a2, __n128 a3)
{
  v5 = *a1 == *a2 && a1[1] == a2[1];
  if (!v5 && (sub_1004A6D34() & 1) == 0)
  {
    return 0;
  }

  v6 = *(type metadata accessor for TaggedCommand(0) + 20);

  return _s12NIOIMAPCore27CommandO21__derived_enum_equalsySbAC_ACtFZ_0(a1 + v6, a2 + v6);
}

uint64_t type metadata accessor for TaggedCommand(uint64_t a1)
{
  result = qword_1005DDD40;
  if (!qword_1005DDD40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t CommandEncodeBuffer.writeCommand(_:)(Swift::String *a1)
{
  v19 = *a1;

  v20._countAndFlagsBits = 32;
  v20._object = 0xE100000000000000;
  sub_1004A5994(v20);
  v3 = *(v1 + 20);
  v4 = sub_1002F178C(v19._countAndFlagsBits, v19._object, v1 + 8, v3);
  if (v5)
  {
    v4 = ByteBuffer._setStringSlowpath(_:at:)(v19, v3);
  }

  v6 = v4;

  v8 = *(v1 + 20);
  v9 = __CFADD__(v8, v6);
  v10 = v8 + v6;
  if (v9)
  {
    __break(1u);
    goto LABEL_11;
  }

  *(v1 + 20) = v10;
  v11 = type metadata accessor for TaggedCommand(0);
  result = sub_1003CFAA8(a1 + *(v11 + 20));
  v12 = __OFADD__(v6, result);
  v13 = v6 + result;
  if (v12)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v14 = *(v1 + 20);
  result = sub_1002F178C(0xA0DuLL, 0xE200000000000000, v1 + 8, v14);
  if (v15)
  {
    v16._countAndFlagsBits = 2573;
    v16._object = 0xE200000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v16, v14);
  }

  v17 = *(v1 + 20);
  v9 = __CFADD__(v17, result);
  v18 = v17 + result;
  if (v9)
  {
    goto LABEL_12;
  }

  *(v1 + 20) = v18;
  v12 = __OFADD__(v13, result);
  result += v13;
  if (v12)
  {
LABEL_13:
    __break(1u);
  }

  return result;
}

uint64_t TaggedCommand.init(tag:command:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = a1;
  a4[1] = a2;
  v5 = a4 + *(type metadata accessor for TaggedCommand(0) + 20);

  return sub_1004003F0(a3, v5);
}

uint64_t TaggedCommand.command.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for TaggedCommand(0) + 20);

  return sub_10049E7CC(v3, a1);
}

uint64_t TaggedCommand.command.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for TaggedCommand(0) + 20);

  return sub_10049E830(a1, v3);
}

void TaggedCommand.hash(into:)(uint64_t a1)
{
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  type metadata accessor for TaggedCommand(0);
  Command.hash(into:)(a1);
}

Swift::Int TaggedCommand.hashValue.getter()
{
  sub_1004A6E94();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  type metadata accessor for TaggedCommand(0);
  Command.hash(into:)(v1);
  return sub_1004A6F14();
}

Swift::Int sub_10049E5D8()
{
  sub_1004A6E94();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  Command.hash(into:)(v1);
  return sub_1004A6F14();
}

Swift::Int sub_10049E674(uint64_t a1)
{
  sub_1004A6E94();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  Command.hash(into:)(v2);
  return sub_1004A6F14();
}

uint64_t sub_10049E6C8(uint64_t *a1, void *a2, uint64_t a3)
{
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (!v6 && (sub_1004A6D34() & 1) == 0)
  {
    return 0;
  }

  v7 = *(a3 + 20);

  return _s12NIOIMAPCore27CommandO21__derived_enum_equalsySbAC_ACtFZ_0(a1 + v7, a2 + v7);
}

uint64_t sub_10049E7CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Command(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10049E830(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Command(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_10049E8C4()
{
  result = qword_1005DDCE0;
  if (!qword_1005DDCE0)
  {
    v3 = type metadata accessor for TaggedCommand(255);
    result = swift_getWitnessTable(protocol conformance descriptor for TaggedCommand, v3, v0, v1);
    atomic_store(result, &qword_1005DDCE0);
  }

  return result;
}

uint64_t sub_10049E930(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for Command(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10049E9F0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for Command(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10049EA94(uint64_t a1)
{
  result = type metadata accessor for Command(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10049EB14(unint64_t *a1)
{
  v2 = v1;
  v4 = sub_10000C9C0(&qword_1005D7F50, &unk_100502FF0);
  __chkstk_darwin(v4 - 8);
  v6 = v30 - v5;
  v7 = type metadata accessor for ParameterValue(0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v30[0] = v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  v10 = a1[1];
  v12 = *(v1 + 20);
  result = sub_1002F178C(*a1, v10, v1 + 8, v12);
  if (v14)
  {
    v15._countAndFlagsBits = v11;
    v15._object = v10;
    result = ByteBuffer._setStringSlowpath(_:at:)(v15, v12);
  }

  v16 = result;
  v17 = *(v2 + 20);
  v18 = (v17 + result);
  if (__CFADD__(v17, result))
  {
    __break(1u);
    goto LABEL_15;
  }

  *(v2 + 20) = v18;
  v19 = sub_10000C9C0(&qword_1005DBCA8, &unk_100504BF0);
  sub_1003E0614(a1 + *(v19 + 52), v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_1002FC2A8(v6);
    v20 = 0;
  }

  else
  {
    v21 = v30[0];
    sub_1002FC114(v6, v30[0]);
    result = sub_1002F178C(0x20uLL, 0xE100000000000000, v2 + 8, v18);
    if (v22)
    {
      v23 = v16;
      v24._countAndFlagsBits = 32;
      v24._object = 0xE100000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v24, v18);
      v25 = result;
    }

    else
    {
      v25 = result;
      v23 = v16;
    }

    v26 = *(v2 + 20);
    v27 = __CFADD__(v26, v25);
    v28 = v26 + v25;
    if (v27)
    {
      goto LABEL_16;
    }

    *(v2 + 20) = v28;
    v29 = sub_100463ACC(v21);
    result = sub_1002FC1DC(v21);
    v20 = v25 + v29;
    if (__OFADD__(v25, v29))
    {
LABEL_17:
      __break(1u);
      return result;
    }

    v16 = v23;
  }

  result = v16 + v20;
  if (__OFADD__(v16, v20))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  return result;
}

uint64_t sub_10049ED68(void *a1)
{
  if (!a1[2])
  {
    return 0;
  }

  v2 = v1;
  v30 = a1;
  v4 = *(v1 + 20);
  result = sub_1002F178C(0, 0xE000000000000000, v1 + 8, v4);
  if (v6)
  {
    v7._countAndFlagsBits = 0;
    v7._object = 0xE000000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v7, v4);
  }

  v8 = result;
  v9 = *(v1 + 20);
  v10 = (v9 + result);
  if (__CFADD__(v9, result))
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  *(v1 + 20) = v10;
  result = sub_1002F178C(0x28uLL, 0xE100000000000000, v1 + 8, v10);
  if (v11)
  {
    v12._countAndFlagsBits = 40;
    v12._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v12, v10);
  }

  v13 = *(v1 + 20);
  v14 = __CFADD__(v13, result);
  v15 = v13 + result;
  if (v14)
  {
    goto LABEL_23;
  }

  *(v1 + 20) = v15;
  v16 = v8 + result;
  if (__OFADD__(v8, result))
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  __chkstk_darwin(result);
  v29[2] = sub_100430E24;
  v29[3] = 0;
  v29[4] = v2;
  v29[5] = &v30;
  v29[6] = 32;
  v29[7] = 0xE100000000000000;
  result = sub_100451B60(0, sub_100430E50, v29, a1);
  v17 = v16 + result;
  if (__OFADD__(v16, result))
  {
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v18 = *(v2 + 20);
  result = sub_1002F178C(0x29uLL, 0xE100000000000000, v2 + 8, v18);
  if (v19)
  {
    v20._countAndFlagsBits = 41;
    v20._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v20, v18);
  }

  v21 = *(v2 + 20);
  v22 = (v21 + result);
  if (__CFADD__(v21, result))
  {
    goto LABEL_26;
  }

  *(v2 + 20) = v22;
  v23 = __OFADD__(v17, result);
  v24 = v17 + result;
  if (v23)
  {
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    return result;
  }

  result = sub_1002F178C(0, 0xE000000000000000, v2 + 8, v22);
  if (v25)
  {
    v26._countAndFlagsBits = 0;
    v26._object = 0xE000000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v26, v22);
  }

  v27 = *(v2 + 20);
  v14 = __CFADD__(v27, result);
  v28 = v27 + result;
  if (v14)
  {
    goto LABEL_28;
  }

  *(v2 + 20) = v28;
  v23 = __OFADD__(v24, result);
  result += v24;
  if (!v23)
  {
    return result;
  }

  __break(1u);
  return 0;
}

uint64_t TaggedResponse.init(tag:state:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X8>)
{
  *a7 = result;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3;
  *(a7 + 24) = a4;
  *(a7 + 32) = a5;
  *(a7 + 40) = a6;
  return result;
}

uint64_t sub_10049EF7C(__int128 *a1)
{
  v20 = *a1;
  v21 = v20;
  sub_10035A4AC(&v21, v19);
  v22._countAndFlagsBits = 32;
  v22._object = 0xE100000000000000;
  sub_1004A5994(v22);
  v3 = v20;
  v4 = *(v1 + 20);
  v5 = sub_1002F178C(v20, *(&v20 + 1), v1 + 8, v4);
  if (v6)
  {
    v5 = ByteBuffer._setStringSlowpath(_:at:)(v3, v4);
  }

  v7 = v5;

  v9 = *(v1 + 20);
  v10 = __CFADD__(v9, v7);
  v11 = v9 + v7;
  if (v10)
  {
    __break(1u);
    goto LABEL_11;
  }

  *(v1 + 20) = v11;
  result = sub_10049F548(*(a1 + 2), *(a1 + 3), *(a1 + 4), *(a1 + 40));
  v12 = __OFADD__(v7, result);
  v13 = v7 + result;
  if (v12)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v14 = *(v1 + 20);
  result = sub_1002F178C(0xA0DuLL, 0xE200000000000000, v1 + 8, v14);
  if (v15)
  {
    v16._countAndFlagsBits = 2573;
    v16._object = 0xE200000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v16, v14);
  }

  v17 = *(v1 + 20);
  v10 = __CFADD__(v17, result);
  v18 = v17 + result;
  if (v10)
  {
    goto LABEL_12;
  }

  *(v1 + 20) = v18;
  v12 = __OFADD__(v13, result);
  result += v13;
  if (v12)
  {
LABEL_13:
    __break(1u);
  }

  return result;
}

uint64_t TaggedResponse.state.getter()
{
  v1 = *(v0 + 16);
  sub_10001123C(v1, *(v0 + 24), *(v0 + 32), *(v0 + 40));
  return v1;
}

uint64_t TaggedResponse.state.setter(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  result = sub_100173584(*(v4 + 16), *(v4 + 24), *(v4 + 32), *(v4 + 40));
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  *(v4 + 32) = a3;
  *(v4 + 40) = a4;
  return result;
}

uint64_t TaggedResponse.hash(into:)(uint64_t a1)
{
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);

  return TaggedResponse.State.hash(into:)(a1, v3, v4, v5, v6);
}

Swift::Int TaggedResponse.hashValue.getter()
{
  sub_1004A6E94();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  TaggedResponse.State.hash(into:)(v2, *(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40));
  return sub_1004A6F14();
}

Swift::Int sub_10049F1F8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  sub_1004A6E94();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  TaggedResponse.State.hash(into:)(v6, v1, v2, v3, v4);
  return sub_1004A6F14();
}

uint64_t sub_10049F278(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

  return TaggedResponse.State.hash(into:)(a1, v3, v4, v5, v6);
}

Swift::Int sub_10049F2E0(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  sub_1004A6E94();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  TaggedResponse.State.hash(into:)(v7, v2, v3, v4, v5);
  return sub_1004A6F14();
}

uint64_t sub_10049F35C(__int128 *a1, __int128 *a2)
{
  v2 = a1[1];
  v5 = *a1;
  v6[0] = v2;
  *(v6 + 9) = *(a1 + 25);
  v3 = a2[1];
  v7 = *a2;
  v8[0] = v3;
  *(v8 + 9) = *(a2 + 25);
  return _s12NIOIMAPCore214TaggedResponseV23__derived_struct_equalsySbAC_ACtFZ_0(&v5, &v7) & 1;
}

uint64_t _s12NIOIMAPCore214TaggedResponseV23__derived_struct_equalsySbAC_ACtFZ_0(uint64_t *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (v4 || (v5 = sub_1004A6D34(), result = 0, (v5 & 1) != 0))
  {
    v8 = a1[2];
    v7 = a1[3];
    v9 = a1[4];
    v10 = *(a1 + 40);
    v12 = *(a2 + 16);
    v11 = *(a2 + 24);
    v13 = *(a2 + 32);
    v14 = *(a2 + 40);
    if (v10)
    {
      if (v10 == 1)
      {
        if (v14 == 1)
        {
          goto LABEL_13;
        }
      }

      else if (v14 == 2)
      {
        goto LABEL_13;
      }
    }

    else if (!*(a2 + 40))
    {
LABEL_13:
      v15 = v12 & 0xF000000000000007;
      if ((~v8 & 0xF000000000000007) != 0)
      {
        if (v15 == 0xF000000000000007)
        {
          return 0;
        }

        sub_1000110C4(*(a2 + 16));
        v16 = _s12NIOIMAPCore216ResponseTextCodeO21__derived_enum_equalsySbAC_ACtFZ_0(v8, v12);
        sub_10001114C(v12);
        if ((v16 & 1) == 0)
        {
          return 0;
        }
      }

      else if (v15 != 0xF000000000000007)
      {
        return 0;
      }

      if (v7 == v11 && v9 == v13 || (sub_1004A6D34() & 1) != 0)
      {
        return 1;
      }
    }

    return 0;
  }

  return result;
}

unint64_t sub_10049F4D4()
{
  result = qword_1005DDD78;
  if (!qword_1005DDD78)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TaggedResponse, &type metadata for TaggedResponse, v0, v1);
    atomic_store(result, &qword_1005DDD78);
  }

  return result;
}

uint64_t sub_10049F548(unint64_t a1, uint64_t a2, void *a3, char a4)
{
  v8 = *(v4 + 20);
  if (a4)
  {
    if (a4 != 1)
    {
      goto LABEL_15;
    }

    result = sub_1002F178C(0x204F4EuLL, 0xE300000000000000, v4 + 8, *(v4 + 20));
    if (v10)
    {
      v11._countAndFlagsBits = 2117454;
      v11._object = 0xE300000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v11, v8);
    }

    v12 = result;
    v13 = *(v4 + 20);
    v14 = __CFADD__(v13, result);
    v15 = v13 + result;
    if (v14)
    {
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    *(v4 + 20) = v15;
    v16 = sub_100482A88(a1, a2, a3);
    v17 = __OFADD__(v12, v16);
    result = v12 + v16;
    if (!v17)
    {
      return result;
    }

    __break(1u);
  }

  result = sub_1002F178C(0x204B4FuLL, 0xE300000000000000, v4 + 8, v8);
  if (v18)
  {
    v19._countAndFlagsBits = 2116431;
    v19._object = 0xE300000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v19, v8);
  }

  v20 = result;
  v21 = *(v4 + 20);
  v14 = __CFADD__(v21, result);
  v22 = v21 + result;
  if (v14)
  {
    goto LABEL_21;
  }

  *(v4 + 20) = v22;
  v23 = sub_100482A88(a1, a2, a3);
  v17 = __OFADD__(v20, v23);
  result = v20 + v23;
  if (!v17)
  {
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1002F178C(0x20444142uLL, 0xE400000000000000, v4 + 8, v8);
  if (v24)
  {
    v25._countAndFlagsBits = 541344066;
    v25._object = 0xE400000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v25, v8);
  }

  v26 = result;
  v27 = *(v4 + 20);
  v14 = __CFADD__(v27, result);
  v28 = v27 + result;
  if (v14)
  {
    goto LABEL_22;
  }

  *(v4 + 20) = v28;
  v29 = sub_100482A88(a1, a2, a3);
  v17 = __OFADD__(v26, v29);
  result = v26 + v29;
  if (v17)
  {
LABEL_23:
    __break(1u);
  }

  return result;
}

uint64_t TaggedResponse.State.hash(into:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v7 = a2 & 0xF000000000000007;
  if (a5)
  {
    if (a5 == 1)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  else
  {
    v8 = 0;
  }

  sub_1004A6EB4(v8);
  if (v7 == 0xF000000000000007)
  {
    sub_1004A6EC4(0);
  }

  else
  {
    sub_1004A6EC4(1u);
    ResponseTextCode.hash(into:)(a1, a2);
  }

  return _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
}

Swift::Int TaggedResponse.State.hashValue.getter(unint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  sub_1004A6E94();
  TaggedResponse.State.hash(into:)(v9, a1, a2, a3, a4);
  return sub_1004A6F14();
}

Swift::Int sub_10049F818()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  sub_1004A6E94();
  TaggedResponse.State.hash(into:)(v6, v1, v2, v3, v4);
  return sub_1004A6F14();
}

Swift::Int sub_10049F88C(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  sub_1004A6E94();
  TaggedResponse.State.hash(into:)(v7, v2, v3, v4, v5);
  return sub_1004A6F14();
}

BOOL _s12NIOIMAPCore214TaggedResponseV5StateO21__derived_enum_equalsySbAE_AEtFZ_0(unint64_t a1, uint64_t a2, uint64_t a3, char a4, unint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  if (a4)
  {
    if (a4 == 1)
    {
      if (a8 != 1)
      {
        return 0;
      }
    }

    else if (a8 != 2)
    {
      return 0;
    }
  }

  else if (a8)
  {
    return 0;
  }

  v10 = a5 & 0xF000000000000007;
  if ((~a1 & 0xF000000000000007) != 0)
  {
    if (v10 == 0xF000000000000007)
    {
      return 0;
    }

    v11 = a1;
    v12 = a6;
    v13 = a2;
    sub_1000110C4(a5);
    LOBYTE(v11) = _s12NIOIMAPCore216ResponseTextCodeO21__derived_enum_equalsySbAC_ACtFZ_0(v11, a5);
    sub_10001114C(a5);
    a2 = v13;
    a6 = v12;
    if ((v11 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v10 != 0xF000000000000007)
  {
    return 0;
  }

  return a2 == a6 && a3 == a7 || (sub_1004A6D34() & 1) != 0;
}

unint64_t sub_10049FA1C()
{
  result = qword_1005DDD80;
  if (!qword_1005DDD80)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TaggedResponse.State, &type metadata for TaggedResponse.State, v0, v1);
    atomic_store(result, &qword_1005DDD80);
  }

  return result;
}

uint64_t sub_10049FA80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = sub_1004A5814();
  v8 = v7;

  if (v6 == 27503 && v8 == 0xE200000000000000 || (sub_1004A6D34() & 1) != 0 || v6 == 28526 && v8 == 0xE200000000000000 || (sub_1004A6D34() & 1) != 0 || v6 == 6578530 && v8 == 0xE300000000000000)
  {
  }

  else
  {
    v10 = sub_1004A6D34();

    if ((v10 & 1) == 0)
    {
      sub_10001114C(a3);

      return 0;
    }
  }

  return a3;
}

unint64_t sub_10049FBE8()
{
  result = qword_1005DDD88;
  if (!qword_1005DDD88)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ThreadID, &type metadata for ThreadID, v0, v1);
    atomic_store(result, &qword_1005DDD88);
  }

  return result;
}

unint64_t sub_10049FC40()
{
  result = qword_1005DDD90;
  if (!qword_1005DDD90)
  {
    result = swift_getWitnessTable("ɜ\a", &type metadata for ThreadID, v0, v1);
    atomic_store(result, &qword_1005DDD90);
  }

  return result;
}

unint64_t sub_10049FC98()
{
  result = qword_1005DDD98;
  if (!qword_1005DDD98)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ThreadID, &type metadata for ThreadID, v0, v1);
    atomic_store(result, &qword_1005DDD98);
  }

  return result;
}

uint64_t sub_10049FD00(int a1)
{
  v2 = v1;
  if (a1 != -1)
  {
    v3 = sub_1004A6CE4();
    v5 = v4;
    v7 = v2[5];
    v2 += 5;
    v6 = v7;
    v8 = sub_1002F178C(v3, v4, (v2 - 3), v7);
    if (v9)
    {
      v10._countAndFlagsBits = v3;
      v10._object = v5;
      v8 = ByteBuffer._setStringSlowpath(_:at:)(v10, v6);
    }

    v11 = v8;

    result = v11;
    v13 = *v2 + v11;
    if (!__CFADD__(*v2, v11))
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  v15 = v2[5];
  v2 += 5;
  v14 = v15;
  result = sub_1002F178C(0x2AuLL, 0xE100000000000000, (v2 - 3), v15);
  if (v16)
  {
    v17._countAndFlagsBits = 42;
    v17._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v17, v14);
  }

  v13 = *v2 + result;
  if (!__CFADD__(*v2, result))
  {
LABEL_10:
    *v2 = v13;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_10049FDFC(int a1)
{
  if (qword_1005DB9D0 != -1)
  {
    swift_once();
  }

  v2 = static ByteBufferAllocator.zeroCapacityWithDefaultAllocator;
  v3 = dword_1005DE398;
  v4 = word_1005DE39C;
  v5 = byte_1005DE39E;

  LOBYTE(v10) = 0;
  BYTE5(v10) = 0;
  *(&v10 + 1) = 65537;
  *(&v10 + 1) = v2;
  *&v11 = qword_1005DE390;
  DWORD2(v11) = v3;
  WORD6(v11) = v4;
  BYTE14(v11) = v5;
  *&v12 = sub_1003DBA20(_swiftEmptyArrayStorage);
  *(&v12 + 1) = v6;
  v13 = v7;
  result = sub_10049FD00(a1);
  if (DWORD1(v11) < v11)
  {
    __break(1u);
  }

  else if (v3 - (v5 | (v4 << 8)) >= DWORD1(v11))
  {
    v14[0] = v2;
    v14[1] = v11;
    v15 = v3;
    v16 = WORD6(v11);
    v17 = v5;
    v18 = v11;
    v19 = DWORD1(v11);
    *&v20[0] = 0;
    *(&v20[0] + 1) = 0xE000000000000000;

    sub_1004A5874(DWORD1(v11) - v11);
    sub_1003BB2E4(v14, v20);
    sub_1003A52D0(v14);
    v9 = *&v20[0];
    v20[0] = v10;
    v20[1] = v11;
    v20[2] = v12;
    v21 = v13;
    sub_1003E5C94(v20);
    return v9;
  }

  __break(1u);
  return result;
}

uint64_t sub_10049FF8C(uint64_t a1)
{
  v2 = sub_1004A0134();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10049FFC8(uint64_t a1)
{
  v2 = sub_1004A0134();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t UID.encode(to:)(void *a1, uint64_t a2)
{
  v3 = sub_10000C9C0(&qword_1005DDDA0, &qword_10050E890);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8 - v5;
  sub_10002587C(a1, a1[3]);
  sub_1004A0134();
  sub_1004A6FA4();
  sub_1004A6C94();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_1004A0134()
{
  result = qword_1005DDDA8;
  if (!qword_1005DDDA8)
  {
    result = swift_getWitnessTable(asc_10050EB5C, &type metadata for UID.CodingKeys, v0, v1);
    atomic_store(result, &qword_1005DDDA8);
  }

  return result;
}

void *UID.init(from:)(void *a1)
{
  v3 = sub_10000C9C0(&qword_1005DDDB0, &qword_10050E898);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - v5;
  v7 = sub_10002587C(a1, a1[3]);
  sub_1004A0134();
  sub_1004A6F84();
  if (!v1)
  {
    v7 = sub_1004A6BB4();
    (*(v4 + 8))(v6, v3);
  }

  sub_1000197E0(a1);
  return v7;
}

unint64_t sub_1004A02DC(void *a1)
{
  a1[1] = sub_1004A032C();
  a1[2] = sub_1004A0380();
  a1[3] = sub_1004A03D4();
  a1[4] = sub_1004A0428();
  a1[5] = sub_100050D64();
  result = sub_1004A047C();
  a1[6] = result;
  return result;
}

unint64_t sub_1004A032C()
{
  result = qword_1005DDDB8;
  if (!qword_1005DDDB8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for UID, &type metadata for UID, v0, v1);
    atomic_store(result, &qword_1005DDDB8);
  }

  return result;
}

unint64_t sub_1004A0380()
{
  result = qword_1005DDDC0;
  if (!qword_1005DDDC0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for UID, &type metadata for UID, v0, v1);
    atomic_store(result, &qword_1005DDDC0);
  }

  return result;
}

unint64_t sub_1004A03D4()
{
  result = qword_1005DDDC8;
  if (!qword_1005DDDC8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for UID, &type metadata for UID, v0, v1);
    atomic_store(result, &qword_1005DDDC8);
  }

  return result;
}

unint64_t sub_1004A0428()
{
  result = qword_1005DDDD0;
  if (!qword_1005DDDD0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for UID, &type metadata for UID, v0, v1);
    atomic_store(result, &qword_1005DDDD0);
  }

  return result;
}

unint64_t sub_1004A047C()
{
  result = qword_1005DDDD8;
  if (!qword_1005DDDD8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for UID, &type metadata for UID, v0, v1);
    atomic_store(result, &qword_1005DDDD8);
  }

  return result;
}

unint64_t sub_1004A04D4()
{
  result = qword_1005DDDE0;
  if (!qword_1005DDDE0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for UID, &type metadata for UID, v0, v1);
    atomic_store(result, &qword_1005DDDE0);
  }

  return result;
}

uint64_t sub_1004A0528@<X0>(void *a1@<X0>, _DWORD *a2@<X8>)
{
  v5 = sub_10000C9C0(&qword_1005DDDB0, &qword_10050E898);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11 - v7;
  sub_10002587C(a1, a1[3]);
  sub_1004A0134();
  sub_1004A6F84();
  if (v2)
  {
    return sub_1000197E0(a1);
  }

  v9 = sub_1004A6BB4();
  (*(v6 + 8))(v8, v5);
  result = sub_1000197E0(a1);
  *a2 = v9;
  return result;
}

uint64_t sub_1004A0688(void *a1)
{
  v2 = sub_10000C9C0(&qword_1005DDDA0, &qword_10050E890);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7 - v4;
  sub_10002587C(a1, a1[3]);
  sub_1004A0134();
  sub_1004A6FA4();
  sub_1004A6C94();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_1004A07E0()
{
  result = qword_1005DDDE8;
  if (!qword_1005DDDE8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for UID, &type metadata for UID, v0, v1);
    atomic_store(result, &qword_1005DDDE8);
  }

  return result;
}

unint64_t sub_1004A0858()
{
  result = qword_1005DDDF0;
  if (!qword_1005DDDF0)
  {
    result = swift_getWitnessTable(a5_14, &type metadata for UID.CodingKeys, v0, v1);
    atomic_store(result, &qword_1005DDDF0);
  }

  return result;
}

unint64_t sub_1004A08B0()
{
  result = qword_1005DDDF8;
  if (!qword_1005DDDF8)
  {
    result = swift_getWitnessTable(byte_10050EAA4, &type metadata for UID.CodingKeys, v0, v1);
    atomic_store(result, &qword_1005DDDF8);
  }

  return result;
}

unint64_t sub_1004A0908()
{
  result = qword_1005DDE00;
  if (!qword_1005DDE00)
  {
    result = swift_getWitnessTable("Շ\a", &type metadata for UID.CodingKeys, v0, v1);
    atomic_store(result, &qword_1005DDE00);
  }

  return result;
}

double UIDBatchesResponse.init(correlator:batches:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 32);
  *a3 = *a1;
  *(a3 + 16) = v3;
  result = *(a1 + 24);
  *(a3 + 24) = result;
  *(a3 + 32) = v4 & 1;
  *(a3 + 40) = a2;
  return result;
}

void sub_1004A0994(uint64_t a1)
{
  v2 = v1;
  v4 = *(v1 + 20);
  v5 = sub_1002F178C(0x4843544142444955uLL, 0xEA00000000005345, v1 + 8, v4);
  if (v6)
  {
    v7._countAndFlagsBits = 0x4843544142444955;
    v7._object = 0xEA00000000005345;
    v5 = ByteBuffer._setStringSlowpath(_:at:)(v7, v4);
  }

  v8 = v5;
  v9 = *(v1 + 20);
  v10 = __CFADD__(v9, v5);
  v11 = v9 + v5;
  if (v10)
  {
    __break(1u);
    goto LABEL_21;
  }

  *(v1 + 20) = v11;
  v12 = *(a1 + 16);
  v42[0] = *a1;
  v42[1] = v12;
  v43 = *(a1 + 32);
  sub_100488324(v42);
  v14 = v8 + v13;
  if (__OFADD__(v8, v13))
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v15 = *(a1 + 40);
  v16 = v15[2];
  if (v16)
  {
    v17 = *(v1 + 20);
    v18 = sub_1002F178C(0x20uLL, 0xE100000000000000, v1 + 8, v17);
    if (v19)
    {
      v20._countAndFlagsBits = 32;
      v20._object = 0xE100000000000000;
      v18 = ByteBuffer._setStringSlowpath(_:at:)(v20, v17);
    }

    v21 = v18;
    v22 = *(v1 + 20);
    v23 = (v22 + v18);
    if (__CFADD__(v22, v18))
    {
      goto LABEL_23;
    }

    *(v1 + 20) = v23;
    v41 = v15;
    v24 = sub_1002F178C(0, 0xE000000000000000, v1 + 8, v23);
    if (v25)
    {
      v26._countAndFlagsBits = 0;
      v26._object = 0xE000000000000000;
      v24 = ByteBuffer._setStringSlowpath(_:at:)(v26, v23);
    }

    v27 = v24;
    v28 = *(v2 + 20);
    v10 = __CFADD__(v28, v24);
    v29 = v28 + v24;
    if (v10)
    {
      goto LABEL_24;
    }

    *(v2 + 20) = v29;
    __chkstk_darwin(v24);
    v40[2] = sub_1004A0DFC;
    v40[3] = 0;
    v40[4] = v2;
    v40[5] = &v41;
    v40[6] = 44;
    v40[7] = 0xE100000000000000;
    v30 = sub_1004530D4(0, sub_100494B90, v40, v15);
    v31 = v27 + v30;
    if (__OFADD__(v27, v30))
    {
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    v32 = *(v2 + 20);
    v33 = sub_1002F178C(0, 0xE000000000000000, v2 + 8, v32);
    if (v34)
    {
      v35._countAndFlagsBits = 0;
      v35._object = 0xE000000000000000;
      v33 = ByteBuffer._setStringSlowpath(_:at:)(v35, v32);
    }

    v36 = *(v2 + 20);
    v10 = __CFADD__(v36, v33);
    v37 = v36 + v33;
    if (v10)
    {
      goto LABEL_26;
    }

    *(v2 + 20) = v37;
    v38 = v31 + v33;
    if (__OFADD__(v31, v33))
    {
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    v39 = __OFADD__(v21, v38);
    v16 = v21 + v38;
    if (v39)
    {
LABEL_28:
      __break(1u);
      return;
    }
  }

  if (__OFADD__(v14, v16))
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }
}

double UIDBatchesResponse.correlator.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 32);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = *(v1 + 24);
  *(a1 + 32) = v4;

  return result;
}

__n128 UIDBatchesResponse.correlator.setter(uint64_t a1)
{

  result = *a1;
  v4 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v4;
  *(v1 + 32) = *(a1 + 32);
  return result;
}

void UIDBatchesResponse.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 16);
  v4 = *(v1 + 24);
  v3 = *(v1 + 28);
  v5 = *(v1 + 32);
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  if (v2)
  {
    sub_1004A6EC4(1u);
    sub_1004A6EB4(v4 | (v4 << 32));
    if (v5)
    {
LABEL_3:
      sub_1004A6EC4(0);
      goto LABEL_6;
    }
  }

  else
  {
    sub_1004A6EC4(0);
    if (v5)
    {
      goto LABEL_3;
    }
  }

  sub_1004A6EC4(1u);
  sub_1004A6EE4(v3);
LABEL_6:
  v6 = *(v1 + 40);
  v7 = *(v6 + 16);
  sub_1004A6EB4(v7);
  if (v7)
  {
    v8 = (v6 + 36);
    do
    {
      v9 = *v8;
      sub_1004A6EE4(*(v8 - 1));
      sub_1004A6EE4(v9);
      v8 += 2;
      --v7;
    }

    while (v7);
  }
}

Swift::Int UIDBatchesResponse.hashValue.getter()
{
  sub_1004A6E94();
  UIDBatchesResponse.hash(into:)(v1);
  return sub_1004A6F14();
}

Swift::Int sub_1004A0D78(uint64_t a1)
{
  sub_1004A6E94();
  UIDBatchesResponse.hash(into:)(v2);
  return sub_1004A6F14();
}

uint64_t sub_1004A0DB4(_OWORD *a1, __int128 *a2)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v3 = *a2;
  v4 = a2[1];
  v7[2] = a1[2];
  v8[0] = v3;
  v5 = a2[2];
  v8[1] = v4;
  v8[2] = v5;
  return _s12NIOIMAPCore218UIDBatchesResponseV23__derived_struct_equalsySbAC_ACtFZ_0(v7, v8) & 1;
}

uint64_t sub_1004A0DFC(unsigned int *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = sub_1004A095C(v3);
  v6 = 0;
  if (v4 < v3)
  {
    v7 = *(a2 + 20);
    result = sub_1002F178C(0x3AuLL, 0xE100000000000000, a2 + 8, v7);
    if (v9)
    {
      v10._countAndFlagsBits = 58;
      v10._object = 0xE100000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v10, v7);
    }

    v11 = result;
    v12 = *(a2 + 20);
    v13 = __CFADD__(v12, result);
    v14 = v12 + result;
    if (v13)
    {
      goto LABEL_9;
    }

    *(a2 + 20) = v14;
    result = sub_1004A095C(v4);
    v6 = v11 + result;
    if (__OFADD__(v11, result))
    {
LABEL_10:
      __break(1u);
      return result;
    }
  }

  result = v5 + v6;
  if (__OFADD__(v5, v6))
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  return result;
}

uint64_t _s12NIOIMAPCore218UIDBatchesResponseV23__derived_struct_equalsySbAC_ACtFZ_0(uint64_t *a1, uint64_t a2)
{
  v4 = a1[2];
  v6 = *(a1 + 6);
  v5 = *(a1 + 7);
  v7 = *(a1 + 32);
  v8 = *(a2 + 16);
  v10 = *(a2 + 24);
  v9 = *(a2 + 28);
  v11 = *(a2 + 32);
  if ((*a1 != *a2 || a1[1] != *(a2 + 8)) && (sub_1004A6D34() & 1) == 0)
  {
    return 0;
  }

  if (v4)
  {
    if (!v8 || (v6 | (v6 << 32)) != (v10 | (v10 << 32)) || (sub_1000FFC98(v4, v8) & 1) == 0)
    {
      return 0;
    }
  }

  else if (v8)
  {
    return 0;
  }

  if (v7)
  {
    if ((v11 & 1) == 0)
    {
      return 0;
    }
  }

  else if ((v11 & 1) != 0 || v5 != v9)
  {
    return 0;
  }

  v12 = a1[5];
  v13 = *(a2 + 40);

  return sub_100102A80(v12, v13);
}

unint64_t sub_1004A0FC8()
{
  result = qword_1005DDE08;
  if (!qword_1005DDE08)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for UIDBatchesResponse, &type metadata for UIDBatchesResponse, v0, v1);
    atomic_store(result, &qword_1005DDE08);
  }

  return result;
}

unint64_t UIDValidity.init<A>(exactly:)(char *a1, uint64_t a2, uint64_t a3)
{
  v29[2] = *(*(a3 + 24) + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  __chkstk_darwin(AssociatedTypeWitness);
  v29[1] = v29 - v6;
  v7 = *(a2 - 8);
  __chkstk_darwin(v8);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = v29 - v12;
  v14 = sub_1004A64B4();
  v15 = sub_1004A64A4();
  if (v14)
  {
    if (v15 > 64)
    {
      goto LABEL_3;
    }
  }

  else if (v15 > 63)
  {
LABEL_3:
    v30 = 0;
    sub_1001C08B0();
    sub_1004A6474();
    v16 = sub_1004A5634();
    v17 = *(v7 + 8);
    v17(v13, a2);
    if ((v16 & 1) == 0)
    {
LABEL_4:
      v18 = a1;
LABEL_19:
      v17(v18, a2);
      v23 = 0;
      v22 = 1;
      goto LABEL_20;
    }

    goto LABEL_7;
  }

  (*(v7 + 16))(v13, a1, a2);
  v19 = sub_1004A6494();
  v17 = *(v7 + 8);
  v17(v13, a2);
  if (v19 <= 0)
  {
    goto LABEL_4;
  }

LABEL_7:
  (*(v7 + 16))(v10, a1, a2);
  if (sub_1004A64B4())
  {
    swift_getAssociatedConformanceWitness();
    sub_1004A6DE4();
    sub_1004A6D04();
    v20 = sub_1004A5634();
    v17(v13, a2);
    if (v20)
    {
      goto LABEL_18;
    }
  }

  if (sub_1004A64A4() >= 32)
  {
    LODWORD(v30) = -1;
    v24 = sub_1004A64B4();
    v25 = sub_1004A64A4();
    if (v24)
    {
      if (v25 <= 32)
      {
        v29[0] = a1;
        swift_getAssociatedConformanceWitness();
        sub_1004A6DE4();
        sub_1004A6D04();
        v26 = sub_1004A5624();
        v17(v13, a2);
        if (v26)
        {
          sub_1004A6494();
        }

        a1 = v29[0];
        goto LABEL_10;
      }
    }

    else if (v25 < 33)
    {
      sub_1004A6494();
      goto LABEL_10;
    }

    sub_1000D40AC();
    sub_1004A6474();
    v27 = sub_1004A5634();
    v17(v13, a2);
    if (v27)
    {
LABEL_18:
      v17(a1, a2);
      v18 = v10;
      goto LABEL_19;
    }
  }

LABEL_10:
  v21 = sub_1004A6494();
  v17(a1, a2);
  v17(v10, a2);
  v22 = 0;
  v23 = v21;
LABEL_20:
  LOBYTE(v30) = v22;
  return v23 | (v22 << 32);
}

NIOIMAPCore2::UIDValidity __swiftcall UIDValidity.init(integerLiteral:)(NIOIMAPCore2::UIDValidity integerLiteral)
{
  if (!integerLiteral.rawValue)
  {
    __break(1u);
  }

  return integerLiteral;
}

unint64_t sub_1004A15C4()
{
  result = qword_1005DDE10;
  if (!qword_1005DDE10)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for UIDValidity, &type metadata for UIDValidity, v0, v1);
    atomic_store(result, &qword_1005DDE10);
  }

  return result;
}

_DWORD *sub_1004A1618@<X0>(_DWORD *result@<X0>, _DWORD *a2@<X8>)
{
  if (*result)
  {
    *a2 = *result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1004A163C(unint64_t a1, uint64_t a2, void *a3, unsigned __int8 a4)
{
  v8 = *(v4 + 20);
  v9 = a4;
  if (a4 > 1u)
  {
    if (a4 == 2)
    {
      goto LABEL_17;
    }

    if (a4 != 3)
    {
      goto LABEL_23;
    }

    result = sub_1002F178C(0x2048545541455250uLL, 0xE800000000000000, v4 + 8, *(v4 + 20));
    if (v11)
    {
      v12._countAndFlagsBits = 0x2048545541455250;
      v12._object = 0xE800000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v12, v8);
    }

    v13 = result;
    v14 = *(v4 + 20);
    v15 = __CFADD__(v14, result);
    v16 = v14 + result;
    if (v15)
    {
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    *(v4 + 20) = v16;
    v17 = sub_100482A88(a1, a2, a3);
    v18 = __OFADD__(v13, v17);
    result = v13 + v17;
    if (!v18)
    {
      return result;
    }

    __break(1u);
  }

  if (v9)
  {
    goto LABEL_29;
  }

  result = sub_1002F178C(0x204B4FuLL, 0xE300000000000000, v4 + 8, v8);
  if (v19)
  {
    v20._countAndFlagsBits = 2116431;
    v20._object = 0xE300000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v20, v8);
  }

  v21 = result;
  v22 = *(v4 + 20);
  v15 = __CFADD__(v22, result);
  v23 = v22 + result;
  if (v15)
  {
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  *(v4 + 20) = v23;
  v24 = sub_100482A88(a1, a2, a3);
  v18 = __OFADD__(v21, v24);
  result = v21 + v24;
  if (!v18)
  {
    return result;
  }

  __break(1u);
LABEL_17:
  result = sub_1002F178C(0x20444142uLL, 0xE400000000000000, v4 + 8, v8);
  if (v25)
  {
    v26._countAndFlagsBits = 541344066;
    v26._object = 0xE400000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v26, v8);
  }

  v27 = result;
  v28 = *(v4 + 20);
  v15 = __CFADD__(v28, result);
  v29 = v28 + result;
  if (v15)
  {
    __break(1u);
    goto LABEL_35;
  }

  *(v4 + 20) = v29;
  v30 = sub_100482A88(a1, a2, a3);
  v18 = __OFADD__(v27, v30);
  result = v27 + v30;
  if (!v18)
  {
    return result;
  }

  __break(1u);
LABEL_23:
  result = sub_1002F178C(0x20455942uLL, 0xE400000000000000, v4 + 8, v8);
  if (v31)
  {
    v32._countAndFlagsBits = 541415746;
    v32._object = 0xE400000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v32, v8);
  }

  v33 = result;
  v34 = *(v4 + 20);
  v15 = __CFADD__(v34, result);
  v35 = v34 + result;
  if (v15)
  {
    goto LABEL_36;
  }

  *(v4 + 20) = v35;
  v36 = sub_100482A88(a1, a2, a3);
  v18 = __OFADD__(v33, v36);
  result = v33 + v36;
  if (!v18)
  {
    return result;
  }

  __break(1u);
LABEL_29:
  result = sub_1002F178C(0x204F4EuLL, 0xE300000000000000, v4 + 8, v8);
  if (v37)
  {
    v38._countAndFlagsBits = 2117454;
    v38._object = 0xE300000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v38, v8);
  }

  v39 = result;
  v40 = *(v4 + 20);
  v15 = __CFADD__(v40, result);
  v41 = v40 + result;
  if (v15)
  {
    goto LABEL_38;
  }

  *(v4 + 20) = v41;
  v42 = sub_100482A88(a1, a2, a3);
  v18 = __OFADD__(v39, v42);
  result = v39 + v42;
  if (v18)
  {
LABEL_39:
    __break(1u);
  }

  return result;
}

uint64_t UntaggedStatus.hash(into:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  v7 = a2 & 0xF000000000000007;
  if (a5 <= 1u)
  {
    v8 = a5 != 0;
  }

  else if (a5 == 2)
  {
    v8 = 2;
  }

  else if (a5 == 3)
  {
    v8 = 3;
  }

  else
  {
    v8 = 4;
  }

  sub_1004A6EB4(v8);
  if (v7 == 0xF000000000000007)
  {
    sub_1004A6EC4(0);
  }

  else
  {
    sub_1004A6EC4(1u);
    ResponseTextCode.hash(into:)(a1, a2);
  }

  return _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
}

Swift::Int UntaggedStatus.hashValue.getter(unint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  sub_1004A6E94();
  UntaggedStatus.hash(into:)(v9, a1, a2, a3, a4);
  return sub_1004A6F14();
}

Swift::Int sub_1004A1A30()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  sub_1004A6E94();
  UntaggedStatus.hash(into:)(v6, v1, v2, v3, v4);
  return sub_1004A6F14();
}

Swift::Int sub_1004A1AA4(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  sub_1004A6E94();
  UntaggedStatus.hash(into:)(v7, v2, v3, v4, v5);
  return sub_1004A6F14();
}

BOOL _s12NIOIMAPCore214UntaggedStatusO21__derived_enum_equalsySbAC_ACtFZ_0(unint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4, unint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  if (a4 > 1u)
  {
    if (a4 == 2)
    {
      if (a8 != 2)
      {
        return 0;
      }
    }

    else if (a4 == 3)
    {
      if (a8 != 3)
      {
        return 0;
      }
    }

    else if (a8 != 4)
    {
      return 0;
    }

    goto LABEL_16;
  }

  if (a4)
  {
    if (a8 != 1)
    {
      return 0;
    }

LABEL_16:
    v9 = a3;
    v10 = a7;
    v11 = a5 & 0xF000000000000007;
    if ((~a1 & 0xF000000000000007) != 0)
    {
      if (v11 == 0xF000000000000007)
      {
        return 0;
      }

      v12 = a1;
      v13 = a6;
      v14 = a2;
      sub_1000110C4(a5);
      LOBYTE(v12) = _s12NIOIMAPCore216ResponseTextCodeO21__derived_enum_equalsySbAC_ACtFZ_0(v12, a5);
      sub_10001114C(a5);
      a2 = v14;
      a6 = v13;
      if ((v12 & 1) == 0)
      {
        return 0;
      }
    }

    else if (v11 != 0xF000000000000007)
    {
      return 0;
    }

    if (a2 == a6 && v9 == v10)
    {
      return 1;
    }

    return (sub_1004A6D34() & 1) != 0;
  }

  if (a8)
  {
    return 0;
  }

  v8 = a5 & 0xF000000000000007;
  if ((~a1 & 0xF000000000000007) != 0)
  {
    if (v8 == 0xF000000000000007)
    {
      return 0;
    }

    v16 = a1;
    v17 = a7;
    v18 = a6;
    v19 = a3;
    v20 = a2;
    sub_1000110C4(a5);
    LOBYTE(v16) = _s12NIOIMAPCore216ResponseTextCodeO21__derived_enum_equalsySbAC_ACtFZ_0(v16, a5);
    sub_10001114C(a5);
    a2 = v20;
    a3 = v19;
    a6 = v18;
    a7 = v17;
    if ((v16 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v8 != 0xF000000000000007)
  {
    return 0;
  }

  if (a2 == a6 && a3 == a7)
  {
    return 1;
  }

  return (sub_1004A6D34() & 1) != 0;
}

unint64_t sub_1004A1CF8()
{
  result = qword_1005DDE18;
  if (!qword_1005DDE18)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for UntaggedStatus, &type metadata for UntaggedStatus, v0, v1);
    atomic_store(result, &qword_1005DDE18);
  }

  return result;
}

uint64_t sub_1004A1D58(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 25))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 24);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1004A1DA0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

uint64_t sub_1004A1DF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = sub_1004A5814();
  v8 = v7;

  if (v6 == 27503 && v8 == 0xE200000000000000 || (sub_1004A6D34() & 1) != 0 || v6 == 28526 && v8 == 0xE200000000000000 || (sub_1004A6D34() & 1) != 0 || v6 == 6578530 && v8 == 0xE300000000000000 || (sub_1004A6D34() & 1) != 0 || v6 == 0x68747561657270 && v8 == 0xE700000000000000 || (sub_1004A6D34() & 1) != 0 || v6 == 6650210 && v8 == 0xE300000000000000)
  {
  }

  else
  {
    v10 = sub_1004A6D34();

    if ((v10 & 1) == 0)
    {
      sub_10001114C(a3);

      return 0;
    }
  }

  return a3;
}

unint64_t sub_1004A201C()
{
  result = qword_1005DDE20;
  if (!qword_1005DDE20)
  {
    result = swift_getWitnessTable("9u\a", &type metadata for URLAuthenticationMechanism, v0, v1);
    atomic_store(result, &qword_1005DDE20);
  }

  return result;
}

uint64_t sub_1004A2080(_OWORD *a1)
{
  v3 = v1;
  v4 = a1[9];
  v90[8] = a1[8];
  v90[9] = v4;
  v5 = a1[11];
  v90[10] = a1[10];
  v90[11] = v5;
  v6 = a1[5];
  v90[4] = a1[4];
  v90[5] = v6;
  v7 = a1[7];
  v90[6] = a1[6];
  v90[7] = v7;
  v8 = a1[1];
  v90[0] = *a1;
  v90[1] = v8;
  v9 = a1[3];
  v90[2] = a1[2];
  v90[3] = v9;
  v10 = sub_1004A2F48(v90);
  v11 = sub_1004A2F54(v90);
  if (v10 != 1)
  {
    v25 = *v11;
    v24 = *(v11 + 8);
    v26 = *(v11 + 16);
    v22 = *(v11 + 24);
    v12 = *(v11 + 32);
    LOBYTE(v93[0]) = *(v11 + 20) & 1;
    result = sub_1004480DC(v25, v24, v26 | (LOBYTE(v93[0]) << 32));
    v14 = result;
    if (!v12)
    {
      return result;
    }

    v28 = *(v3 + 20);
    result = sub_1002F178C(0x3FuLL, 0xE100000000000000, v3 + 8, v28);
    if (v29)
    {
      v30._countAndFlagsBits = 63;
      v30._object = 0xE100000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v30, v28);
    }

    v13 = result;
    v31 = *(v3 + 20);
    v32 = (v31 + result);
    if (__CFADD__(v31, result))
    {
      goto LABEL_52;
    }

    *(v3 + 20) = v32;
    result = sub_1002F178C(v22, v12, v3 + 8, v32);
    if (v33)
    {
      v34._countAndFlagsBits = v22;
      v34._object = v12;
      result = ByteBuffer._setStringSlowpath(_:at:)(v34, v32);
    }

    v35 = *(v3 + 20);
    v36 = __CFADD__(v35, result);
    v37 = v35 + result;
    if (v36)
    {
      goto LABEL_53;
    }

    *(v3 + 20) = v37;
    v38 = v13 + result;
    if (__OFADD__(v13, result))
    {
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
      goto LABEL_56;
    }

    result = v14 + v38;
    if (!__OFADD__(v14, v38))
    {
      return result;
    }

    __break(1u);
LABEL_18:
    v40 = *(v3 + 20);
    result = sub_1002F178C(0x3D4552495058453BuLL, 0xE800000000000000, v3 + 8, v40);
    if (v41)
    {
      v42._countAndFlagsBits = 0x3D4552495058453BLL;
      v42._object = 0xE800000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v42, v40);
    }

    v43 = *(v3 + 20);
    v36 = __CFADD__(v43, result);
    v44 = v43 + result;
    if (v36)
    {
      goto LABEL_66;
    }

    v45 = result;
    *(v3 + 20) = v44;
    v46 = sub_1003F54F8(v12, v13, v14);
    v47 = *(v3 + 20);
    result = sub_1002F178C(0x54uLL, 0xE100000000000000, v3 + 8, v47);
    if (v48)
    {
      v49._countAndFlagsBits = 84;
      v49._object = 0xE100000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v49, v47);
    }

    v50 = *(v3 + 20);
    v36 = __CFADD__(v50, result);
    v51 = v50 + result;
    if (v36)
    {
      goto LABEL_67;
    }

    *(v3 + 20) = v51;
    v52 = __OFADD__(v46, result);
    v53 = v46 + result;
    if (v52)
    {
LABEL_68:
      __break(1u);
      goto LABEL_69;
    }

    v16 = v22;
    v91[0] = v83;
    v91[1] = v85;
    v92 = v84 & 1;
    result = sub_1003F5630(v91);
    v54 = v53 + result;
    if (__OFADD__(v53, result))
    {
LABEL_69:
      __break(1u);
      goto LABEL_70;
    }

    v23 = v45 + v54;
    if (__OFADD__(v45, v54))
    {
LABEL_70:
      __break(1u);
      return result;
    }

    goto LABEL_27;
  }

  v12 = *(v11 + 72);
  v13 = *(v11 + 80);
  v14 = *(v11 + 88);
  v85 = *(v11 + 112);
  v83 = *(v11 + 96);
  v84 = *(v11 + 128);
  v15 = *(v11 + 129);
  v88 = *(v11 + 144);
  v89 = *(v11 + 136);
  v87 = *(v11 + 152);
  v2 = *(v11 + 160);
  v16 = *(v11 + 168);
  v86 = *(v11 + 176);
  v17 = *v11;
  v18 = *(v11 + 16);
  v19 = *(v11 + 32);
  v20 = *(v11 + 48);
  v94 = *(v11 + 64);
  v93[2] = v19;
  v93[3] = v20;
  v93[0] = v17;
  v93[1] = v18;
  v21 = sub_10045A160(v93);
  if (!v16)
  {
    v39 = 0;
    goto LABEL_49;
  }

  v22 = v16;
  v82 = v21;
  if ((v15 & 1) == 0)
  {
    goto LABEL_18;
  }

  v23 = 0;
LABEL_27:
  v55 = *(v3 + 20);
  result = sub_1002F178C(0x485455414C52553BuLL, 0xE90000000000003DLL, v3 + 8, v55);
  if (v56)
  {
    v57._countAndFlagsBits = 0x485455414C52553BLL;
    v57._object = 0xE90000000000003DLL;
    result = ByteBuffer._setStringSlowpath(_:at:)(v57, v55);
  }

  v58 = *(v3 + 20);
  v36 = __CFADD__(v58, result);
  v59 = v58 + result;
  if (v36)
  {
    goto LABEL_55;
  }

  *(v3 + 20) = v59;
  v60 = v23 + result;
  if (__OFADD__(v23, result))
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  result = sub_100395D84(v89, v88, v87);
  v61 = v60 + result;
  if (__OFADD__(v60, result))
  {
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  v62 = *(v3 + 20);
  result = sub_1002F178C(0x3AuLL, 0xE100000000000000, v3 + 8, v62);
  if (v63)
  {
    v64._countAndFlagsBits = 58;
    v64._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v64, v62);
  }

  v65 = result;
  v66 = *(v3 + 20);
  v67 = (v66 + result);
  if (__CFADD__(v66, result))
  {
    goto LABEL_58;
  }

  *(v3 + 20) = v67;
  result = sub_1002F178C(v2, v16, v3 + 8, v67);
  if (v68)
  {
    v69._countAndFlagsBits = v2;
    v69._object = v16;
    result = ByteBuffer._setStringSlowpath(_:at:)(v69, v67);
  }

  v70 = *(v3 + 20);
  v71 = (v70 + result);
  if (__CFADD__(v70, result))
  {
    goto LABEL_59;
  }

  *(v3 + 20) = v71;
  v72 = v65 + result;
  if (__OFADD__(v65, result))
  {
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  result = sub_1002F178C(0x3AuLL, 0xE100000000000000, v3 + 8, v71);
  if (v73)
  {
    v74._countAndFlagsBits = 58;
    v74._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v74, v71);
  }

  v75 = *(v3 + 20);
  v76 = (v75 + result);
  if (__CFADD__(v75, result))
  {
    goto LABEL_61;
  }

  *(v3 + 20) = v76;
  v77 = v72 + result;
  if (__OFADD__(v72, result))
  {
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  result = sub_1002F178C(v86._countAndFlagsBits, v86._object, v3 + 8, v76);
  if (v78)
  {
    result = ByteBuffer._setStringSlowpath(_:at:)(v86, v76);
  }

  v79 = *(v3 + 20);
  v36 = __CFADD__(v79, result);
  v80 = v79 + result;
  if (v36)
  {
    goto LABEL_63;
  }

  *(v3 + 20) = v80;
  v81 = v77 + result;
  if (__OFADD__(v77, result))
  {
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  v52 = __OFADD__(v61, v81);
  v39 = v61 + v81;
  if (v52)
  {
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  v21 = v82;
LABEL_49:
  v52 = __OFADD__(v21, v39);
  result = v21 + v39;
  if (v52)
  {
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  return result;
}

void URLCommand.hash(into:)(uint64_t a1)
{
  v3 = v1[9];
  v25[8] = v1[8];
  v25[9] = v3;
  v4 = v1[11];
  v25[10] = v1[10];
  v25[11] = v4;
  v5 = v1[5];
  v25[4] = v1[4];
  v25[5] = v5;
  v6 = v1[7];
  v25[6] = v1[6];
  v25[7] = v6;
  v7 = v1[1];
  v25[0] = *v1;
  v25[1] = v7;
  v8 = v1[3];
  v25[2] = v1[2];
  v25[3] = v8;
  if (sub_1004A2F48(v25) != 1)
  {
    v16 = sub_1004A2F54(v25);
    v17 = *(v16 + 16);
    v18 = *(v16 + 20);
    v19 = *(v16 + 32);
    sub_1004A6EB4(0);
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    if (v18)
    {
      sub_1004A6EC4(0);
      if (!v19)
      {
        goto LABEL_18;
      }
    }

    else
    {
      sub_1004A6EC4(1u);
      sub_1004A6EE4(v17);
      if (!v19)
      {
        goto LABEL_18;
      }
    }

    sub_1004A6EC4(1u);
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    return;
  }

  v9 = sub_1004A2F54(v25);
  v10 = *(v9 + 16);
  v11 = *(v9 + 20);
  v12 = *(v9 + 24);
  v13 = *(v9 + 40);
  v20 = *(v9 + 56);
  v21 = *(v9 + 48);
  v22 = *(v9 + 64);
  *&v24[64] = *(v9 + 130);
  *&v24[80] = *(v9 + 146);
  v14 = *(v9 + 168);
  *&v24[94] = *(v9 + 160);
  v15 = *(v9 + 65);
  *v24 = *(v9 + 66);
  *&v24[16] = *(v9 + 82);
  *&v24[32] = *(v9 + 98);
  *&v24[48] = *(v9 + 114);
  v23 = *(v9 + 176);
  sub_1004A6EB4(1uLL);
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  if (v11)
  {
    sub_1004A6EC4(0);
  }

  else
  {
    sub_1004A6EC4(1u);
    sub_1004A6EE4(v10);
  }

  sub_1004A6EE4(v12);
  if (v13)
  {
    sub_1004A6EC4(1u);
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    if (v15)
    {
      goto LABEL_15;
    }
  }

  else
  {
    sub_1004A6EC4(0);
    if (v15)
    {
      goto LABEL_15;
    }
  }

  sub_1004A6EC4(1u);
  sub_1004A6EB4(v21);
  if ((v22 & 1) == 0)
  {
    sub_1004A6EC4(1u);
    sub_1004A6EB4(v20);
    if (v14)
    {
      goto LABEL_16;
    }

    goto LABEL_18;
  }

LABEL_15:
  sub_1004A6EC4(0);
  if (v14)
  {
LABEL_16:
    v25[14] = *&v24[38];
    v25[15] = *&v24[54];
    v25[16] = *&v24[70];
    v25[17] = *&v24[86];
    v25[12] = *&v24[6];
    v25[13] = *&v24[22];
    v27 = v23;
    v26 = v14;
    sub_1004A6EC4(1u);
    AuthenticatedURL.hash(into:)(a1);
    return;
  }

LABEL_18:
  sub_1004A6EC4(0);
}

Swift::Int URLCommand.hashValue.getter()
{
  sub_1004A6E94();
  URLCommand.hash(into:)(v1);
  return sub_1004A6F14();
}

Swift::Int sub_1004A283C(uint64_t a1)
{
  sub_1004A6E94();
  URLCommand.hash(into:)(v2);
  return sub_1004A6F14();
}

uint64_t sub_1004A2878(_OWORD *a1, __int128 *a2)
{
  v2 = a1[9];
  v15[8] = a1[8];
  v15[9] = v2;
  v3 = a1[11];
  v15[10] = a1[10];
  v15[11] = v3;
  v4 = a1[5];
  v15[4] = a1[4];
  v15[5] = v4;
  v5 = a1[7];
  v15[6] = a1[6];
  v15[7] = v5;
  v6 = a1[1];
  v15[0] = *a1;
  v15[1] = v6;
  v7 = a1[3];
  v15[2] = a1[2];
  v15[3] = v7;
  v8 = a2[9];
  v16[8] = a2[8];
  v16[9] = v8;
  v9 = a2[11];
  v16[10] = a2[10];
  v16[11] = v9;
  v10 = a2[5];
  v16[4] = a2[4];
  v16[5] = v10;
  v11 = a2[7];
  v16[6] = a2[6];
  v16[7] = v11;
  v12 = a2[1];
  v16[0] = *a2;
  v16[1] = v12;
  v13 = a2[3];
  v16[2] = a2[2];
  v16[3] = v13;
  return _s12NIOIMAPCore210URLCommandO21__derived_enum_equalsySbAC_ACtFZ_0(v15, v16) & 1;
}

uint64_t _s12NIOIMAPCore210URLCommandO21__derived_enum_equalsySbAC_ACtFZ_0(_OWORD *a1, __int128 *a2)
{
  v3 = a1[9];
  v100[8] = a1[8];
  v100[9] = v3;
  v4 = a1[11];
  v100[10] = a1[10];
  v100[11] = v4;
  v5 = a1[5];
  v100[4] = a1[4];
  v100[5] = v5;
  v6 = a1[7];
  v100[6] = a1[6];
  v100[7] = v6;
  v7 = a1[1];
  v100[0] = *a1;
  v100[1] = v7;
  v8 = a1[3];
  v100[2] = a1[2];
  v100[3] = v8;
  if (sub_1004A2F48(v100) != 1)
  {
    v40 = sub_1004A2F54(v100);
    v41 = *v40;
    v42 = *(v40 + 8);
    v43 = *(v40 + 16);
    v44 = *(v40 + 20);
    v46 = *(v40 + 24);
    v45 = *(v40 + 32);
    v47 = a2[9];
    *&v76[32] = a2[8];
    *&v76[48] = v47;
    v48 = a2[11];
    *&v76[64] = a2[10];
    *&v76[80] = v48;
    v49 = a2[5];
    v74 = a2[4];
    v75 = v49;
    v50 = a2[7];
    *v76 = a2[6];
    *&v76[16] = v50;
    v51 = a2[3];
    v72 = a2[2];
    v73 = v51;
    v52 = a2[1];
    v70 = *a2;
    v71 = v52;
    v53 = sub_1004A2F48(&v70);
    v54 = sub_1004A2F54(&v70);
    if (v53 == 1)
    {
      return 0;
    }

    v55 = *(v54 + 16);
    v56 = *(v54 + 20);
    v58 = *(v54 + 24);
    v57 = *(v54 + 32);
    if ((v41 != *v54 || v42 != *(v54 + 8)) && (sub_1004A6D34() & 1) == 0)
    {
      return 0;
    }

    if (v44)
    {
      if ((v56 & 1) == 0)
      {
        return 0;
      }
    }

    else if ((v56 & 1) != 0 || v43 != v55)
    {
      return 0;
    }

    if (v45)
    {
      if (!v57 || (v46 != v58 || v45 != v57) && (sub_1004A6D34() & 1) == 0)
      {
        return 0;
      }
    }

    else if (v57)
    {
      return 0;
    }

    return 1;
  }

  v9 = sub_1004A2F54(v100);
  v10 = *v9;
  v11 = v9[1];
  v12 = v9[3];
  v94 = v9[2];
  v95 = v12;
  v92 = v10;
  v93 = v11;
  v13 = v9[4];
  v14 = v9[5];
  v15 = v9[7];
  *&v96[32] = v9[6];
  *&v96[48] = v15;
  *v96 = v13;
  *&v96[16] = v14;
  v16 = v9[8];
  v17 = v9[9];
  v18 = v9[11];
  v97 = v9[10];
  v98 = v18;
  *&v96[64] = v16;
  *&v96[80] = v17;
  v19 = a2[1];
  v99[0] = *a2;
  v99[1] = v19;
  v20 = a2[3];
  v99[2] = a2[2];
  v99[3] = v20;
  v21 = a2[5];
  v99[4] = a2[4];
  v99[5] = v21;
  v22 = a2[7];
  v99[6] = a2[6];
  v99[7] = v22;
  v23 = a2[9];
  v99[8] = a2[8];
  v99[9] = v23;
  v24 = a2[11];
  v99[10] = a2[10];
  v99[11] = v24;
  if (sub_1004A2F48(v99) != 1)
  {
    sub_1004A2F54(v99);
    return 0;
  }

  v25 = sub_1004A2F54(v99);
  v26 = v25[3];
  v28 = *v25;
  v27 = v25[1];
  v88 = v25[2];
  v89 = v26;
  v86 = v28;
  v87 = v27;
  v29 = v25[7];
  v31 = v25[4];
  v30 = v25[5];
  *&v90[32] = v25[6];
  *&v90[48] = v29;
  *v90 = v31;
  *&v90[16] = v30;
  v32 = v25[11];
  v34 = v25[8];
  v33 = v25[9];
  *&v90[96] = v25[10];
  v91 = v32;
  *&v90[64] = v34;
  *&v90[80] = v33;
  v105[2] = v94;
  v105[3] = v95;
  v106 = *v96;
  v105[0] = v92;
  v105[1] = v93;
  v35 = v25[3];
  v107[2] = v25[2];
  v107[3] = v35;
  v108 = *(v25 + 32);
  v36 = v25[1];
  v107[0] = *v25;
  v107[1] = v36;
  if (!_s12NIOIMAPCore211MessagePathV23__derived_struct_equalsySbAC_ACtFZ_0(v105, v107))
  {
    return 0;
  }

  v82 = *&v96[40];
  v83 = *&v96[56];
  v84 = *&v96[72];
  v37 = v97;
  v85 = *&v96[88];
  v80 = *&v96[8];
  v81 = *&v96[24];
  v38 = *(&v97 + 1);
  v39 = v98;
  if (!*(&v97 + 1))
  {
    if (!*&v90[104])
    {
      sub_1004A30F4(&v96[8], &v70);
      sub_1004A30F4(&v90[8], &v70);
      goto LABEL_35;
    }

    goto LABEL_29;
  }

  if (!*&v90[104])
  {
LABEL_29:
    v72 = *&v96[40];
    v73 = *&v96[56];
    v74 = *&v96[72];
    v70 = *&v96[8];
    v71 = *&v96[24];
    v75 = __PAIR128__(v97, *&v96[88]);
    *v76 = __PAIR128__(v98, *(&v97 + 1));
    *&v76[40] = *&v90[24];
    *&v76[24] = *&v90[8];
    v77 = *&v90[88];
    *&v76[88] = *&v90[72];
    *&v76[72] = *&v90[56];
    *&v76[56] = *&v90[40];
    *&v76[16] = *(&v98 + 1);
    v78 = *&v90[104];
    v79 = v91;
    sub_1004A30F4(&v96[8], &v61);
    sub_1004A30F4(&v90[8], &v61);
    sub_100025F40(&v70, &qword_1005DDE38, &qword_10050FA30);
    return 0;
  }

  v72 = *&v90[40];
  v73 = *&v90[56];
  v74 = *&v90[72];
  v75 = *&v90[88];
  v70 = *&v90[8];
  v71 = *&v90[24];
  *v76 = *&v90[104];
  *&v76[8] = v91;
  v101[1] = *&v96[24];
  v101[0] = *&v96[8];
  v102 = v96[88];
  v101[4] = *&v96[72];
  v101[3] = *&v96[56];
  v101[2] = *&v96[40];
  v103[1] = *&v90[24];
  v103[0] = *&v90[8];
  v104 = v90[88];
  v103[4] = *&v90[72];
  v103[3] = *&v90[56];
  v103[2] = *&v90[40];
  if ((_s12NIOIMAPCore220AuthenticatedURLRumpV23__derived_struct_equalsySbAC_ACtFZ_0(v101, v103) & 1) == 0)
  {
    sub_1004A30F4(&v96[8], &v61);
    sub_1004A30F4(&v90[8], &v61);
    sub_100025F40(&v70, &qword_1005DDE30, &qword_10050FA28);
    v63 = v82;
    v64 = v83;
    v65 = v84;
    v61 = v80;
    v62 = v81;
    v66 = v85;
    v67 = v37;
    v68 = v38;
    v69 = v39;
    sub_100025F40(&v61, &qword_1005DDE30, &qword_10050FA28);
    return 0;
  }

  if (*&v90[96] != v97 && (sub_1004A6D34() & 1) == 0)
  {
    sub_1004A30F4(&v96[8], &v61);
    sub_1004A30F4(&v90[8], &v61);
    sub_100025F40(&v70, &qword_1005DDE30, &qword_10050FA28);
LABEL_37:
    v63 = v82;
    v64 = v83;
    v65 = v84;
    v61 = v80;
    v62 = v81;
    v66 = v85;
    v67 = v37;
    v68 = v38;
    v69 = v39;
    sub_100025F40(&v61, &qword_1005DDE30, &qword_10050FA28);
    return 0;
  }

  if (v98 != v91)
  {
    v60 = sub_1004A6D34();
    sub_1004A30F4(&v96[8], &v61);
    sub_1004A30F4(&v90[8], &v61);
    sub_100025F40(&v70, &qword_1005DDE30, &qword_10050FA28);
    if (v60)
    {
      goto LABEL_35;
    }

    goto LABEL_37;
  }

  sub_1004A30F4(&v96[8], &v61);
  sub_1004A30F4(&v90[8], &v61);
  sub_100025F40(&v70, &qword_1005DDE30, &qword_10050FA28);
LABEL_35:
  v72 = v82;
  v73 = v83;
  v74 = v84;
  v70 = v80;
  v71 = v81;
  *&v75 = v85;
  *(&v75 + 1) = v37;
  *v76 = v38;
  *&v76[8] = v39;
  sub_100025F40(&v70, &qword_1005DDE30, &qword_10050FA28);
  return 1;
}

unint64_t sub_1004A2F68()
{
  result = qword_1005DDE28;
  if (!qword_1005DDE28)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for URLCommand, &type metadata for URLCommand, v0, v1);
    atomic_store(result, &qword_1005DDE28);
  }

  return result;
}

uint64_t sub_1004A2FBC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 192))
  {
    return *a1 + 0x80000000;
  }

  v2 = (*(a1 + 16) >> 33) & 0x7FFFFFFF | ((*(a1 + 64) >> 9) << 31);
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_1004A3018(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    *(a1 + 184) = 0;
    result = 0.0;
    *(a1 + 168) = 0u;
    *(a1 + 152) = 0u;
    *(a1 + 136) = 0u;
    *(a1 + 120) = 0u;
    *(a1 + 104) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 192) = 1;
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
      *a1 = 0;
      *(a1 + 8) = 0;
      *(a1 + 16) = -a2 << 33;
      result = 0.0;
      *(a1 + 24) = 0u;
      *(a1 + 40) = 0u;
      *(a1 + 56) = 0;
      *(a1 + 64) = 512;
      *(a1 + 72) = 0u;
      *(a1 + 88) = 0u;
      *(a1 + 104) = 0u;
      *(a1 + 120) = 0u;
      *(a1 + 136) = 0u;
      *(a1 + 152) = 0u;
      *(a1 + 168) = 0u;
      *(a1 + 184) = 0;
      return result;
    }

    *(a1 + 192) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1004A30C4(uint64_t result, uint64_t a2)
{
  v2 = *(result + 64) & 0x1FFLL | (a2 << 63);
  *(result + 16) &= 0x1FFFFFFFFuLL;
  *(result + 64) = v2;
  return result;
}

uint64_t sub_1004A30F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C9C0(&qword_1005DDE30, &qword_10050FA28);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

double URLFetchData.init(url:data:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, _OWORD *a7@<X8>)
{
  *&v11 = a1;
  *(&v11 + 1) = a2;
  *v12 = a3;
  *&v12[4] = WORD2(a3);
  v12[6] = BYTE6(a3);
  *&v12[8] = a4;
  *&v12[16] = a5;
  *&v12[24] = a6;
  v12[30] = BYTE6(a6);
  *&v12[28] = WORD2(a6);
  v13[0] = a1;
  v13[1] = a2;
  v14 = a3;
  v15 = WORD2(a3);
  v16 = BYTE6(a3);
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v21 = BYTE6(a6);
  v20 = WORD2(a6);
  sub_1003A3100(&v11, &v10);
  sub_1003A315C(v13);
  v8 = *v12;
  *a7 = v11;
  a7[1] = v8;
  result = *&v12[15];
  *(a7 + 31) = *&v12[15];
  return result;
}

uint64_t sub_1004A320C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1003B1E70(*a1, *(a1 + 8), *(a1 + 16) | (*(a1 + 20) << 32) | (*(a1 + 22) << 48));
  v5 = *(v1 + 20);
  result = sub_1002F178C(0x20uLL, 0xE100000000000000, v1 + 8, v5);
  if (v7)
  {
    v8._countAndFlagsBits = 32;
    v8._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v8, v5);
  }

  v9 = *(v1 + 20);
  v10 = (v9 + result);
  if (__CFADD__(v9, result))
  {
    goto LABEL_14;
  }

  *(v1 + 20) = v10;
  v11 = v4 + result;
  if (__OFADD__(v4, result))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    return result;
  }

  if (*(a1 + 24))
  {
    v12 = *(a1 + 40) | ((*(a1 + 44) | (*(a1 + 46) << 16)) << 32);
    v13 = *(a1 + 32);

    v15 = sub_1003B1E70(v14, v13, v12);

    result = v11 + v15;
    if (!__OFADD__(v11, v15))
    {
      return result;
    }

LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  result = sub_1002F178C(0x4C494EuLL, 0xE300000000000000, v1 + 8, v10);
  if (v16)
  {
    v17._countAndFlagsBits = 4999502;
    v17._object = 0xE300000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v17, v10);
  }

  v18 = result;
  v19 = *(v2 + 20);
  v20 = __CFADD__(v19, result);
  v21 = v19 + result;
  if (v20)
  {
    goto LABEL_16;
  }

  *(v2 + 20) = v21;
  result += v11;
  if (__OFADD__(v11, v18))
  {
    goto LABEL_13;
  }

  return result;
}

void URLFetchData.hash(into:)()
{
  swift_beginAccess();
  sub_1004A6EA4();
  if (*(v0 + 24))
  {
    sub_1004A6EC4(1u);
    swift_beginAccess();
    sub_1004A6EA4();
  }

  else
  {
    sub_1004A6EC4(0);
  }
}

Swift::Int URLFetchData.hashValue.getter()
{
  sub_1004A6E94();
  URLFetchData.hash(into:)();
  return sub_1004A6F14();
}

Swift::Int sub_1004A3488(uint64_t a1)
{
  sub_1004A6E94();
  URLFetchData.hash(into:)();
  return sub_1004A6F14();
}

uint64_t sub_1004A34C4(__int128 *a1, __int128 *a2)
{
  v2 = a1[1];
  v5 = *a1;
  v6[0] = v2;
  *(v6 + 15) = *(a1 + 31);
  v3 = a2[1];
  v7 = *a2;
  v8[0] = v3;
  *(v8 + 15) = *(a2 + 31);
  return _s12NIOIMAPCore212URLFetchDataV23__derived_struct_equalsySbAC_ACtFZ_0(&v5, &v7) & 1;
}

uint64_t _s12NIOIMAPCore212URLFetchDataV23__derived_struct_equalsySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (sub_10020FBD0(*a1, *(a1 + 8), *(a1 + 16) | (*(a1 + 20) << 32) | (*(a1 + 22) << 48), *a2, *(a2 + 8), *(a2 + 16) | (*(a2 + 20) << 32) | (*(a2 + 22) << 48)))
  {
    v4 = *(a2 + 24);
    if (*(a1 + 24))
    {
      if (v4)
      {
        v5 = *(a1 + 32);
        v6 = *(a1 + 40) | ((*(a1 + 44) | (*(a1 + 46) << 16)) << 32);
        v7 = *(a2 + 32);
        v8 = *(a2 + 40) | ((*(a2 + 44) | (*(a2 + 46) << 16)) << 32);

        LOBYTE(v8) = sub_10020FBD0(v9, v5, v6 & 0xFFFFFFFFFFFFFFLL, v4, v7, v8 & 0xFFFFFFFFFFFFFFLL);

        if (v8)
        {
          return 1;
        }
      }
    }

    else if (!v4)
    {
      return 1;
    }
  }

  return 0;
}

unint64_t sub_1004A3614()
{
  result = qword_1005DDE40;
  if (!qword_1005DDE40)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for URLFetchData, &type metadata for URLFetchData, v0, v1);
    atomic_store(result, &qword_1005DDE40);
  }

  return result;
}

unint64_t sub_1004A367C()
{
  result = qword_1005DDE48;
  if (!qword_1005DDE48)
  {
    result = swift_getWitnessTable("9r\a", &type metadata for URLMessageSection, v0, v1);
    atomic_store(result, &qword_1005DDE48);
  }

  return result;
}

unint64_t sub_1004A37B4()
{
  result = qword_1005DDE50;
  if (!qword_1005DDE50)
  {
    result = swift_getWitnessTable("!q\a", &type metadata for UseAttribute, v0, v1);
    atomic_store(result, &qword_1005DDE50);
  }

  return result;
}

void UserAuthenticationMechanism.init(encodedUser:authenticationMechanism:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a2 && a4 == 1)
  {
    __break(1u);
  }
}

uint64_t sub_1004A382C(unint64_t a1, void *a2, unint64_t a3, void *a4)
{
  if (a2)
  {
    v7 = *(v4 + 20);
    result = sub_1002F178C(a1, a2, v4 + 8, v7);
    if (v11)
    {
      v12._countAndFlagsBits = a1;
      v12._object = a2;
      result = ByteBuffer._setStringSlowpath(_:at:)(v12, v7);
    }

    v13 = result;
    v14 = *(v4 + 20);
    v15 = __CFADD__(v14, result);
    v16 = v14 + result;
    if (v15)
    {
      goto LABEL_23;
    }

    *(v4 + 20) = v16;
    if (a4)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v13 = 0;
    if (a4)
    {
LABEL_6:
      if (a4 == 1)
      {
        result = 0;
      }

      else
      {
        v22 = *(v4 + 20);
        result = sub_1002F178C(0x3D485455413BuLL, 0xE600000000000000, v4 + 8, v22);
        if (v23)
        {
          v24._countAndFlagsBits = 0x3D485455413BLL;
          v24._object = 0xE600000000000000;
          result = ByteBuffer._setStringSlowpath(_:at:)(v24, v22);
        }

        v25 = result;
        v26 = *(v4 + 20);
        v27 = (v26 + result);
        if (__CFADD__(v26, result))
        {
          goto LABEL_25;
        }

        *(v4 + 20) = v27;
        result = sub_1002F178C(a3, a4, v4 + 8, v27);
        if (v28)
        {
          v29._countAndFlagsBits = a3;
          v29._object = a4;
          result = ByteBuffer._setStringSlowpath(_:at:)(v29, v27);
        }

        v30 = *(v4 + 20);
        v15 = __CFADD__(v30, result);
        v31 = v30 + result;
        if (v15)
        {
          goto LABEL_26;
        }

        *(v4 + 20) = v31;
        v32 = __OFADD__(v25, result);
        result += v25;
        if (v32)
        {
LABEL_27:
          __break(1u);
          return result;
        }
      }

      goto LABEL_20;
    }
  }

  v17 = *(v4 + 20);
  result = sub_1002F178C(0x2A3D485455413BuLL, 0xE700000000000000, v4 + 8, v17);
  if (v18)
  {
    v19._countAndFlagsBits = 0x2A3D485455413BLL;
    v19._object = 0xE700000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v19, v17);
  }

  v20 = *(v4 + 20);
  v15 = __CFADD__(v20, result);
  v21 = v20 + result;
  if (v15)
  {
    goto LABEL_24;
  }

  *(v4 + 20) = v21;
LABEL_20:
  v32 = __OFADD__(v13, result);
  result += v13;
  if (v32)
  {
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  return result;
}

void UserAuthenticationMechanism.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3)
  {
    sub_1004A6EC4(1u);
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    if (a5 == 1)
    {
LABEL_3:
      sub_1004A6EC4(0);
      return;
    }
  }

  else
  {
    sub_1004A6EC4(0);
    if (a5 == 1)
    {
      goto LABEL_3;
    }
  }

  sub_1004A6EC4(1u);
  if (a5)
  {
    sub_1004A6EB4(1uLL);

    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  }

  else
  {
    sub_1004A6EB4(0);
  }
}

Swift::Int UserAuthenticationMechanism.hashValue.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1004A6E94();
  if (a2)
  {
    sub_1004A6EC4(1u);
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  }

  else
  {
    sub_1004A6EC4(0);
  }

  if (a4 == 1)
  {
    sub_1004A6EC4(0);
  }

  else
  {
    sub_1004A6EC4(1u);
    if (a4)
    {
      sub_1004A6EB4(1uLL);
      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    }

    else
    {
      sub_1004A6EB4(0);
    }
  }

  return sub_1004A6F14();
}

void sub_1004A3BD4(uint64_t a1)
{
  v2 = *(v1 + 24);
  if (*(v1 + 8))
  {
    sub_1004A6EC4(1u);
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    if (v2 == 1)
    {
LABEL_3:
      sub_1004A6EC4(0);
      return;
    }
  }

  else
  {
    sub_1004A6EC4(0);
    if (v2 == 1)
    {
      goto LABEL_3;
    }
  }

  sub_1004A6EC4(1u);
  if (v2)
  {
    sub_1004A6EB4(1uLL);

    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  }

  else
  {
    sub_1004A6EB4(0);
  }
}

Swift::Int sub_1004A3CA0(uint64_t a1)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 24);
  sub_1004A6E94();
  if (v2)
  {
    sub_1004A6EC4(1u);
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  }

  else
  {
    sub_1004A6EC4(0);
  }

  if (v3 == 1)
  {
    sub_1004A6EC4(0);
  }

  else
  {
    sub_1004A6EC4(1u);
    if (v3)
    {
      sub_1004A6EB4(1uLL);
      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    }

    else
    {
      sub_1004A6EB4(0);
    }
  }

  return sub_1004A6F14();
}

uint64_t _s12NIOIMAPCore227UserAuthenticationMechanismV23__derived_struct_equalsySbAC_ACtFZ_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2)
  {
    if (!a6)
    {
      return 0;
    }

    if (a1 != a5 || a2 != a6)
    {
      v8 = a3;
      v9 = a4;
      v10 = a8;
      v11 = a7;
      v12 = sub_1004A6D34();
      a3 = v8;
      a4 = v9;
      a7 = v11;
      a8 = v10;
      if ((v12 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (a6)
  {
    return 0;
  }

  if (a4 == 1)
  {
    if (a8 == 1)
    {
      return 1;
    }
  }

  else if (a8 != 1)
  {
    if (a4)
    {
      if (a8 && (a3 == a7 && a4 == a8 || (sub_1004A6D34() & 1) != 0))
      {
        return 1;
      }
    }

    else if (!a8)
    {
      return 1;
    }
  }

  return 0;
}

unint64_t sub_1004A3E60()
{
  result = qword_1005DDE58;
  if (!qword_1005DDE58)
  {
    result = swift_getWitnessTable("yp\a", &type metadata for UserAuthenticationMechanism, v0, v1);
    atomic_store(result, &qword_1005DDE58);
  }

  return result;
}

void operator delete[]()
{
    ;
  }
}

void operator delete(void *__p)
{
    ;
  }
}

void operator new[]()
{
    ;
  }
}

void operator new()
{
    ;
  }
}