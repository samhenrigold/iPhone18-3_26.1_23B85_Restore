unint64_t sub_10026F834@<X0>(unint64_t result@<X0>, _OWORD *a2@<X8>)
{
  if (result >> 61 != 3)
  {
    sub_10007FC0C();
    swift_allocError();
    *(v22 + 8) = 0;
    *(v22 + 16) = 0;
    *v22 = 4;
    *(v22 + 24) = 3;
    swift_willThrow();
  }

  v2 = *((result & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  if (!*(v2 + 16))
  {
    __break(1u);
    goto LABEL_33;
  }

  result = sub_10008C908(1684632949, 0xE400000000000000);
  if ((v4 & 1) == 0)
  {
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v5 = *(*(v2 + 56) + 8 * result);
  if (v5 >> 61 != 1)
  {

    sub_10007FC0C();
    swift_allocError();
    *(v23 + 8) = 0;
    *(v23 + 16) = 0;
    *v23 = 4;
    *(v23 + 24) = 3;
    swift_willThrow();
  }

  if (!*(v2 + 16))
  {
    goto LABEL_34;
  }

  v7 = *((v5 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  v6 = *((v5 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
  sub_100069E2C(v7, v6);
  result = sub_10008C908(0x5555746E65726170, 0xEA00000000004449);
  if ((v8 & 1) == 0)
  {
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v9 = *(*(v2 + 56) + 8 * result);
  if (v9 >> 61 != 1)
  {

    sub_10007FC0C();
    swift_allocError();
    *(v24 + 8) = 0;
    *(v24 + 16) = 0;
    *v24 = 4;
    *(v24 + 24) = 3;
    swift_willThrow();

    v25 = v7;
    v26 = v6;
    return sub_10006A178(v25, v26);
  }

  if (!*(v2 + 16))
  {
    goto LABEL_36;
  }

  v10 = *((v9 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
  v47 = *((v9 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  sub_100069E2C(v47, v10);
  result = sub_10008C908(0x44495344746C61, 0xE700000000000000);
  if ((v11 & 1) == 0)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v12 = *(*(v2 + 56) + 8 * result);
  v13 = v12 & 0xE000000000000000;
  if ((v12 & 0xE000000000000000) == 0x2000000000000000)
  {
    if (*(v2 + 16))
    {
      *&v34 = *((v12 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      *(&v34 + 1) = *((v12 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      sub_100069E2C(v34, *(&v34 + 1));
      result = sub_10008C908(0x416465776F6C6C61, 0xEA00000000004449);
      if (v14)
      {
        v15 = *(*(v2 + 56) + 8 * result);
        if (v15 >> 61 != 1)
        {

          sub_10007FC0C();
          swift_allocError();
          *(v29 + 8) = 0;
          *(v29 + 16) = 0;
          *v29 = 4;
          *(v29 + 24) = 3;
          swift_willThrow();
          v28 = 0;
LABEL_24:
          a2 = v34;
          goto LABEL_25;
        }

        if (*(v2 + 16))
        {
          v33 = *((v15 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
          v31 = v10;
          v32 = *((v15 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
          sub_100069E2C(v33, v32);
          result = sub_10008C908(0xD000000000000011, 0x8000000100469620);
          if (v16)
          {
            v17 = *(*(v2 + 56) + 8 * result);

            if (v17 >> 61 == 1)
            {

              v18 = *((v17 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
              v19 = *((v17 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
              sub_100069E2C(v18, v19);

              *&v36 = v7;
              *(&v36 + 1) = v6;
              *&v37 = v47;
              *(&v37 + 1) = v31;
              v38 = v34;
              *&v39 = v33;
              *(&v39 + 1) = v32;
              *&v40 = v18;
              *(&v40 + 1) = v19;
              v41[0] = v7;
              v41[1] = v6;
              v41[2] = v47;
              v41[3] = v31;
              v42 = v34;
              v43 = v33;
              v44 = v32;
              v45 = v18;
              v46 = v19;
              sub_1001F6D00(&v36, v35);
              result = sub_1001F6D5C(v41);
              v20 = v39;
              a2[2] = v38;
              a2[3] = v20;
              a2[4] = v40;
              v21 = v37;
              *a2 = v36;
              a2[1] = v21;
              return result;
            }

            sub_10007FC0C();
            swift_allocError();
            *(v30 + 8) = 0;
            *(v30 + 16) = 0;
            *v30 = 4;
            *(v30 + 24) = 3;
            swift_willThrow();
            v28 = 1;
            v10 = v31;
            goto LABEL_24;
          }

LABEL_41:
          __break(1u);
          return result;
        }

LABEL_40:
        __break(1u);
        goto LABEL_41;
      }

LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  sub_10007FC0C();
  swift_allocError();
  *(v27 + 8) = 0;
  *(v27 + 16) = 0;
  *v27 = 4;
  *(v27 + 24) = 3;
  swift_willThrow();
  v28 = 0;
LABEL_25:

  sub_10006A178(v7, v6);
  result = sub_10006A178(v47, v10);
  if (v13 == 0x2000000000000000)
  {
    result = sub_10006A178(a2, *(&v34 + 1));
    if ((v28 & 1) == 0)
    {
      return result;
    }
  }

  else if (!v28)
  {
    return result;
  }

  v26 = v32;
  v25 = v33;
  return sub_10006A178(v25, v26);
}

uint64_t sub_10026FDD0()
{
  sub_10006A178(*(v0 + 16), *(v0 + 24));
  sub_10006A178(*(v0 + 32), *(v0 + 40));

  return _swift_deallocObject(v0, 49, 7);
}

uint64_t sub_10026FF50@<X0>(uint64_t a1@<X8>)
{
  sub_100068FC4(&qword_100504F00, &qword_10040C480);
  result = swift_allocObject();
  *(result + 16) = xmmword_10040A530;
  strcpy((result + 32), "formatVersion");
  *(result + 46) = -4864;
  *(result + 48) = 192;
  *(result + 56) = 0;
  *(result + 64) = 0;
  *(result + 72) = 0;
  *(result + 80) = -64;
  *(result + 88) = &off_1004C46A0;
  *(result + 96) = 0x444955556B6C74;
  *(result + 104) = 0xE700000000000000;
  *(result + 112) = 212;
  *(result + 120) = 0;
  *(result + 128) = 0;
  *(result + 136) = 0;
  *(result + 144) = -64;
  *(result + 152) = &off_1004C46F0;
  strcpy((result + 160), "clientMetadata");
  *(result + 175) = -18;
  *(result + 176) = 220;
  *(result + 184) = 0;
  *(result + 192) = 0;
  *(result + 200) = 0;
  *(result + 208) = -64;
  *(result + 216) = _swiftEmptyArrayStorage;
  *(result + 224) = 0x5649736561;
  *(result + 232) = 0xE500000000000000;
  *(result + 240) = 216;
  *(result + 248) = 0;
  *(result + 256) = 0;
  *(result + 264) = 0;
  *(result + 272) = -64;
  *(result + 280) = _swiftEmptyArrayStorage;
  *(result + 288) = 0xD000000000000013;
  *(result + 296) = 0x8000000100469720;
  *(result + 304) = 221;
  *(result + 312) = 0;
  *(result + 320) = 0;
  *(result + 328) = 0;
  *(result + 336) = -64;
  *(result + 344) = _swiftEmptyArrayStorage;
  *(result + 352) = 0xD000000000000011;
  *(result + 360) = 0x80000001004696A0;
  *(result + 368) = 218;
  *(result + 376) = 0;
  *(result + 384) = 0;
  *(result + 392) = 0;
  *(result + 400) = -64;
  *(result + 408) = _swiftEmptyArrayStorage;
  *a1 = 230;
  *(a1 + 8) = 0;
  *(a1 + 16) = result;
  *(a1 + 24) = 1;
  *(a1 + 32) = 64;
  *(a1 + 40) = _swiftEmptyArrayStorage;
  return result;
}

unint64_t sub_1002700F8@<X0>(unint64_t result@<X0>, _OWORD *a2@<X8>)
{
  if (result >> 61 != 3)
  {
    sub_10007FC0C();
    swift_allocError();
    *(v25 + 8) = 0;
    *(v25 + 16) = 0;
    *v25 = 4;
    *(v25 + 24) = 3;
    swift_willThrow();
  }

  v3 = *((result & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  if (!*(v3 + 16))
  {
    __break(1u);
    goto LABEL_37;
  }

  result = sub_10008C908(0x655674616D726F66, 0xED00006E6F697372);
  if ((v4 & 1) == 0)
  {
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v5 = *(*(v3 + 56) + 8 * result);
  if (v5 >> 61 != 1)
  {

    sub_10007FC0C();
    swift_allocError();
    *(v26 + 8) = 0;
    *(v26 + 16) = 0;
    *v26 = 4;
    *(v26 + 24) = 3;
    swift_willThrow();
  }

  if (!*(v3 + 16))
  {
    goto LABEL_38;
  }

  v7 = *((v5 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  v6 = *((v5 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
  sub_100069E2C(v7, v6);
  result = sub_10008C908(0x444955556B6C74, 0xE700000000000000);
  if ((v8 & 1) == 0)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v9 = *(*(v3 + 56) + 8 * result);
  if (v9 >> 61 == 1)
  {
    if (*(v3 + 16))
    {
      v10 = *((v9 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      v50 = *((v9 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      sub_100069E2C(v50, v10);
      result = sub_10008C908(0x654D746E65696C63, 0xEE00617461646174);
      if (v11)
      {
        v12 = *(*(v3 + 56) + 8 * result);
        v13 = v12 & 0xE000000000000000;
        if ((v12 & 0xE000000000000000) != 0x2000000000000000)
        {
          goto LABEL_24;
        }

        if (*(v3 + 16))
        {
          v40 = *((v12 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
          v41 = *((v12 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
          sub_100069E2C(v41, v40);
          result = sub_10008C908(0x5649736561, 0xE500000000000000);
          if (v14)
          {
            v15 = *(*(v3 + 56) + 8 * result);
            if (v15 >> 61 == 1)
            {
              v35 = v10;
              if (*(v3 + 16))
              {
                v38 = *((v15 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
                v39 = *((v15 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
                sub_100069E2C(v39, v38);
                result = sub_10008C908(0xD000000000000013, 0x8000000100469720);
                if (v16)
                {
                  v17 = *(*(v3 + 56) + 8 * result);
                  if (v17 >> 61 != 1)
                  {

                    sub_10007FC0C();
                    swift_allocError();
                    *(v33 + 8) = 0;
                    *(v33 + 16) = 0;
                    *v33 = 4;
                    *(v33 + 24) = 3;
                    swift_willThrow();
                    v32 = 0;
                    v31 = 1;
                    goto LABEL_25;
                  }

                  if (*(v3 + 16))
                  {
                    v36 = *((v17 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
                    v37 = *((v17 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
                    sub_100069E2C(v37, v36);
                    result = sub_10008C908(0xD000000000000011, 0x80000001004696A0);
                    if (v18)
                    {
                      v19 = *(*(v3 + 56) + 8 * result);

                      if (v19 >> 61 == 1)
                      {

                        v20 = *((v19 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
                        v21 = *((v19 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
                        sub_100069E2C(v20, v21);

                        *&v43 = v7;
                        *(&v43 + 1) = v6;
                        *&v44 = v50;
                        *(&v44 + 1) = v35;
                        *&v45 = v41;
                        *(&v45 + 1) = v40;
                        *&v46 = v39;
                        *(&v46 + 1) = v38;
                        *&v47 = v37;
                        *(&v47 + 1) = v36;
                        *&v48 = v20;
                        *(&v48 + 1) = v21;
                        v49[0] = v7;
                        v49[1] = v6;
                        v49[2] = v50;
                        v49[3] = v35;
                        v49[4] = v41;
                        v49[5] = v40;
                        v49[6] = v39;
                        v49[7] = v38;
                        v49[8] = v37;
                        v49[9] = v36;
                        v49[10] = v20;
                        v49[11] = v21;
                        sub_1002706E0(&v43, v42);
                        result = sub_10018C4A8(v49);
                        v22 = v46;
                        a2[2] = v45;
                        a2[3] = v22;
                        v23 = v48;
                        a2[4] = v47;
                        a2[5] = v23;
                        v24 = v44;
                        *a2 = v43;
                        a2[1] = v24;
                        return result;
                      }

                      sub_10007FC0C();
                      swift_allocError();
                      *(v34 + 8) = 0;
                      *(v34 + 16) = 0;
                      *v34 = 4;
                      *(v34 + 24) = 3;
                      swift_willThrow();
                      v31 = 1;
                      v32 = 1;
                      v10 = v35;
LABEL_25:

                      sub_10006A178(v7, v6);
                      result = sub_10006A178(v50, v10);
                      if (v13 == 0x2000000000000000)
                      {
                        result = sub_10006A178(v41, v40);
                        if ((v31 & 1) == 0)
                        {
                          goto LABEL_27;
                        }
                      }

                      else if (!v31)
                      {
LABEL_27:
                        if (!v32)
                        {
                          return result;
                        }

LABEL_31:
                        v29 = v36;
                        v28 = v37;
                        return sub_10006A178(v28, v29);
                      }

                      result = sub_10006A178(v39, v38);
                      if ((v32 & 1) == 0)
                      {
                        return result;
                      }

                      goto LABEL_31;
                    }

LABEL_47:
                    __break(1u);
                    return result;
                  }

LABEL_46:
                  __break(1u);
                  goto LABEL_47;
                }

LABEL_45:
                __break(1u);
                goto LABEL_46;
              }

LABEL_44:
              __break(1u);
              goto LABEL_45;
            }

LABEL_24:

            sub_10007FC0C();
            swift_allocError();
            *(v30 + 8) = 0;
            *(v30 + 16) = 0;
            *v30 = 4;
            *(v30 + 24) = 3;
            swift_willThrow();
            v31 = 0;
            v32 = 0;
            goto LABEL_25;
          }

LABEL_43:
          __break(1u);
          goto LABEL_44;
        }

LABEL_42:
        __break(1u);
        goto LABEL_43;
      }

LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  sub_10007FC0C();
  swift_allocError();
  *(v27 + 8) = 0;
  *(v27 + 16) = 0;
  *v27 = 4;
  *(v27 + 24) = 3;
  swift_willThrow();

  v28 = v7;
  v29 = v6;
  return sub_10006A178(v28, v29);
}

__n128 sub_100270718(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_100270744(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 104))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 16) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 16) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_100270798(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 104) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 104) = 0;
    }

    if (a2)
    {
      *(result + 8) = 0;
      *(result + 16) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

__n128 sub_100270810(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 14);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_10027083C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 120))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 16) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 16) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_100270890(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 120) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 120) = 0;
    }

    if (a2)
    {
      *(result + 8) = 0;
      *(result + 16) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t sub_10027090C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 16))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_100270960(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *result = a2 - 13;
    *(result + 8) = 0;
    if (a3 >= 0xD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

__n128 sub_1002709BC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 128);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  *(a1 + 96) = result;
  return result;
}

uint64_t sub_1002709F0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 152))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 16) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 16) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_100270A44(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 152) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 152) = 0;
    }

    if (a2)
    {
      *(result + 8) = 0;
      *(result + 16) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t sub_100270AC8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 120))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 64);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_100270B1C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 120) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 120) = 0;
    }

    if (a2)
    {
      *(result + 64) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_100270B8C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 33))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 32);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_100270BE0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2 + 1;
    }
  }

  return result;
}

__n128 sub_100270C54(uint64_t a1, uint64_t a2)
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

uint64_t sub_100270C70(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 80))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_100270CC4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 80) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

__n128 sub_100270D38(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = result;
  *(a1 + 80) = v6;
  return result;
}

uint64_t sub_100270D5C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 128))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_100270DB0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 128) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 128) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t sub_100270E34(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF && *(a1 + 48))
  {
    return (*a1 + 15);
  }

  v3 = (((*(a1 + 40) >> 58) >> 3) & 1 | (2 * ((*(a1 + 40) >> 58) & 4 | (*(a1 + 24) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xE)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_100270E9C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 15;
    if (a3 >= 0xF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 16) = 0;
      *(result + 24) = ((-a2 >> 1) & 3) << 60;
      *(result + 32) = 0;
      *(result + 40) = (((-a2 >> 1) & 7 | (8 * (-a2 & 0xF))) << 58) & 0x3000000000000000;
    }
  }

  return result;
}

__n128 sub_100270F14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_100270F30(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 96))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_100270F84(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 96) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 96) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

__n128 sub_100270FFC(uint64_t a1, uint64_t a2)
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

uint64_t sub_100271020(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 65))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 64);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_100271074(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 65) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 65) = 0;
    }

    if (a2)
    {
      *(result + 64) = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_1002710E0()
{
  result = qword_100508AD8;
  if (!qword_100508AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100508AD8);
  }

  return result;
}

uint64_t sub_100271134()
{
  sub_1001AF6EC(*(v0 + 32), *(v0 + 40), *(v0 + 48));

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100271178(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF && *(a1 + 32))
  {
    return (*a1 + 15);
  }

  v3 = (((*(a1 + 24) >> 58) >> 3) & 1 | (2 * ((*(a1 + 24) >> 58) & 4 | (*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xE)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1002711DC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 15;
    *(result + 8) = 0;
    if (a3 >= 0xF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = ((-a2 >> 1) & 3) << 60;
      *(result + 16) = 0;
      *(result + 24) = (((-a2 >> 1) & 7 | (8 * (-a2 & 0xF))) << 58) & 0x3000000000000000;
    }
  }

  return result;
}

uint64_t sub_100271248(uint64_t result, char a2)
{
  v2 = *(result + 24) & 0xCFFFFFFFFFFFFFFFLL | ((a2 & 1) << 61);
  *(result + 8) &= 0xCFFFFFFFFFFFFFFFLL;
  *(result + 24) = v2;
  return result;
}

id sub_1002712A4()
{
  result = [objc_allocWithZone(type metadata accessor for SECReportManager()) init];
  qword_100508AE0 = result;
  return result;
}

uint64_t sub_1002713E8()
{
  type metadata accessor for SECNetworkController(0);
  v1 = swift_allocObject();
  *(v0 + 24) = v1;
  v2 = OBJC_IVAR____TtC10seserviced20SECNetworkController_networkConfiguration;
  v3 = type metadata accessor for SECNetworkConfiguration(0);
  (*(*(v3 - 8) + 56))(v1 + v2, 1, 1, v3);
  *(v1 + OBJC_IVAR____TtC10seserviced20SECNetworkController_platformIdentifierLengthWithTag) = 19;
  *(v1 + OBJC_IVAR____TtC10seserviced20SECNetworkController_jsblSequenceCounterLastByteIndex) = 38;
  *(v1 + OBJC_IVAR____TtC10seserviced20SECNetworkController_platformIdTag) = 57120;
  *(v1 + OBJC_IVAR____TtC10seserviced20SECNetworkController_jsblSeqCounterTag) = 57137;
  *(v1 + OBJC_IVAR____TtC10seserviced20SECNetworkController_signatureTag) = 24375;
  *(v1 + OBJC_IVAR____TtC10seserviced20SECNetworkController_rndDevTag) = 133;
  v4 = swift_task_alloc();
  *(v0 + 32) = v4;
  *v4 = v0;
  v4[1] = sub_100271538;

  return sub_1002EA8CC();
}

uint64_t sub_100271538()
{
  *(*v1 + 40) = v0;

  if (v0)
  {
    v2 = sub_100271958;
  }

  else
  {
    v2 = sub_10027164C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10027164C(uint64_t a1, uint64_t a2)
{
  if (qword_1005019D8 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_1000958E4(v3, qword_10051B2C8);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "Running presentment reporting task", v6, 2u);
  }

  if (qword_100501DC8 != -1)
  {
    swift_once();
  }

  v7 = qword_10051B858;
  v8 = swift_task_alloc();
  *(v2 + 48) = v8;
  *v8 = v2;
  v8[1] = sub_1002717D4;

  return sub_1002EF15C(v7);
}

uint64_t sub_1002717D4()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_100271AF4;
  }

  else
  {
    v2 = sub_1002718E8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1002718E8()
{
  [*(v0 + 16) setTaskCompleted];

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100271958(uint64_t a1, uint64_t a2)
{
  if (qword_1005019D8 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_1000958E4(v3, qword_10051B2C8);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, v4, v5, "Error %@ encountered when sending daily presentment report, Trying tomorrow", v6, 0xCu);
    sub_1000C2998(v7);
  }

  v9 = *(v2 + 16);

  [v9 setTaskCompleted];

  v10 = *(v2 + 8);

  return v10();
}

uint64_t sub_100271AF4(uint64_t a1, uint64_t a2)
{
  if (qword_1005019D8 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_1000958E4(v3, qword_10051B2C8);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, v4, v5, "Error %@ encountered when sending daily presentment report, Trying tomorrow", v6, 0xCu);
    sub_1000C2998(v7);
  }

  v9 = *(v2 + 16);

  [v9 setTaskCompleted];

  v10 = *(v2 + 8);

  return v10();
}

void sub_100271C90()
{
  v0 = objc_opt_self();
  v1 = [v0 sharedScheduler];
  v2 = String._bridgeToObjectiveC()();
  aBlock[4] = sub_1002721D0;
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000A409C;
  aBlock[3] = &unk_1004CE6F0;
  v3 = _Block_copy(aBlock);
  [v1 registerForTaskWithIdentifier:v2 usingQueue:0 launchHandler:v3];
  _Block_release(v3);

  v4 = [v0 sharedScheduler];
  v5 = String._bridgeToObjectiveC()();
  aBlock[0] = 0;
  LODWORD(v3) = [v4 cancelTaskRequestWithIdentifier:v5 error:aBlock];

  if (v3)
  {
    v6 = aBlock[0];
  }

  else
  {
    v7 = aBlock[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_1005019D8 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_1000958E4(v8, qword_10051B2C8);
    swift_errorRetain();
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      aBlock[0] = v13;
      *v11 = 136315394;
      *(v11 + 4) = sub_1002FFA0C(0xD00000000000002FLL, 0x8000000100460850, aBlock);
      *(v11 + 12) = 2112;
      swift_errorRetain();
      v14 = _swift_stdlib_bridgeErrorToNSError();
      *(v11 + 14) = v14;
      *v12 = v14;
      _os_log_impl(&_mh_execute_header, v9, v10, "Unable to cancel task request %s with error %@", v11, 0x16u);
      sub_1000C2998(v12);

      sub_1000752F4(v13);
    }

    else
    {
    }
  }

  v15 = [v0 sharedScheduler];
  v16 = String._bridgeToObjectiveC()();
  v17 = [v15 deregisterTaskWithIdentifier:v16];

  if (v17)
  {
    if (qword_1005019D8 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_1000958E4(v18, qword_10051B2C8);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      aBlock[0] = v22;
      *v21 = 136315138;
      *(v21 + 4) = sub_1002FFA0C(0xD00000000000002FLL, 0x8000000100460850, aBlock);
      v23 = "Successfully removed legacy task with identifier %s";
LABEL_17:
      _os_log_impl(&_mh_execute_header, v19, v20, v23, v21, 0xCu);
      sub_1000752F4(v22);
    }
  }

  else
  {
    if (qword_1005019D8 != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    sub_1000958E4(v24, qword_10051B2C8);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      aBlock[0] = v22;
      *v21 = 136315138;
      *(v21 + 4) = sub_1002FFA0C(0xD00000000000002FLL, 0x8000000100460850, aBlock);
      v23 = "Unable to deregister task with identifier %s";
      goto LABEL_17;
    }
  }
}

id sub_1002721D0(void *a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  v10[4] = sub_1001350DC;
  v10[5] = v2;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_100080830;
  v10[3] = &unk_1004CE740;
  v3 = _Block_copy(v10);
  v4 = a1;

  [v4 setExpirationHandler:v3];
  _Block_release(v3);
  if (qword_1005019D8 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_1000958E4(v5, qword_10051B2C8);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "This task should be immediately removed", v8, 2u);
  }

  return [v4 setTaskCompleted];
}

uint64_t sub_100272370()
{
  v0 = sub_100068FC4(&qword_100504250, &qword_10040D610);
  __chkstk_darwin(v0 - 8);
  v2 = &v6 - v1;
  v3 = type metadata accessor for TaskPriority();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  *(v4 + 24) = 0;
  sub_1001F9BE8(0, 0, v2, &unk_1004137D8, v4);
}

uint64_t sub_10027247C()
{
  type metadata accessor for SECNetworkController(0);
  v1 = swift_allocObject();
  *(v0 + 16) = v1;
  v2 = OBJC_IVAR____TtC10seserviced20SECNetworkController_networkConfiguration;
  v3 = type metadata accessor for SECNetworkConfiguration(0);
  (*(*(v3 - 8) + 56))(v1 + v2, 1, 1, v3);
  *(v1 + OBJC_IVAR____TtC10seserviced20SECNetworkController_platformIdentifierLengthWithTag) = 19;
  *(v1 + OBJC_IVAR____TtC10seserviced20SECNetworkController_jsblSequenceCounterLastByteIndex) = 38;
  *(v1 + OBJC_IVAR____TtC10seserviced20SECNetworkController_platformIdTag) = 57120;
  *(v1 + OBJC_IVAR____TtC10seserviced20SECNetworkController_jsblSeqCounterTag) = 57137;
  *(v1 + OBJC_IVAR____TtC10seserviced20SECNetworkController_signatureTag) = 24375;
  *(v1 + OBJC_IVAR____TtC10seserviced20SECNetworkController_rndDevTag) = 133;
  v4 = swift_task_alloc();
  *(v0 + 24) = v4;
  *v4 = v0;
  v4[1] = sub_1002725CC;

  return sub_1002EA8CC();
}

uint64_t sub_1002725CC()
{
  v2 = *v1;
  *(v2 + 32) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1002728B8, 0, 0);
  }

  else
  {
    v3 = swift_task_alloc();
    *(v2 + 40) = v3;
    *v3 = v2;
    v3[1] = sub_100272744;

    return sub_1002EE178(_swiftEmptyArrayStorage);
  }
}

uint64_t sub_100272744()
{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = sub_100272A44;
  }

  else
  {
    v2 = sub_100272858;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100272858()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1002728B8(uint64_t a1, uint64_t a2)
{
  if (qword_1005019D8 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_1000958E4(v3, qword_10051B2C8);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, v4, v5, "Error %@ encountered during heartbeat reporting cancellation task", v6, 0xCu);
    sub_1000C2998(v7);
  }

  v9 = *(v2 + 8);

  return v9();
}

uint64_t sub_100272A44(uint64_t a1, uint64_t a2)
{
  if (qword_1005019D8 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_1000958E4(v3, qword_10051B2C8);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, v4, v5, "Error %@ encountered during heartbeat reporting cancellation task", v6, 0xCu);
    sub_1000C2998(v7);
  }

  v9 = *(v2 + 8);

  return v9();
}

uint64_t sub_100272BD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a4;
  v5 = type metadata accessor for StateInternal();
  v4[5] = v5;
  v4[6] = *(v5 - 8);
  v4[7] = swift_task_alloc();
  v6 = type metadata accessor for StateInternal.Discriminant();
  v4[8] = v6;
  v4[9] = *(v6 - 8);
  v4[10] = swift_task_alloc();
  v4[11] = swift_task_alloc();

  return _swift_task_switch(sub_100272CF8, 0, 0);
}

uint64_t sub_100272CF8()
{
  type metadata accessor for SECNetworkController(0);
  v1 = swift_allocObject();
  *(v0 + 96) = v1;
  v2 = OBJC_IVAR____TtC10seserviced20SECNetworkController_networkConfiguration;
  v3 = type metadata accessor for SECNetworkConfiguration(0);
  (*(*(v3 - 8) + 56))(v1 + v2, 1, 1, v3);
  *(v1 + OBJC_IVAR____TtC10seserviced20SECNetworkController_platformIdentifierLengthWithTag) = 19;
  *(v1 + OBJC_IVAR____TtC10seserviced20SECNetworkController_jsblSequenceCounterLastByteIndex) = 38;
  *(v1 + OBJC_IVAR____TtC10seserviced20SECNetworkController_platformIdTag) = 57120;
  *(v1 + OBJC_IVAR____TtC10seserviced20SECNetworkController_jsblSeqCounterTag) = 57137;
  *(v1 + OBJC_IVAR____TtC10seserviced20SECNetworkController_signatureTag) = 24375;
  *(v1 + OBJC_IVAR____TtC10seserviced20SECNetworkController_rndDevTag) = 133;
  v4 = swift_task_alloc();
  *(v0 + 104) = v4;
  *v4 = v0;
  v4[1] = sub_100272E48;

  return sub_1002EA8CC();
}

uint64_t sub_100272E48()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_1002735C4;
  }

  else
  {
    v2 = sub_100272F5C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100272F5C()
{
  if (qword_100501DC8 != -1)
  {
    swift_once();
  }

  v1 = qword_10051B858;
  *(v0 + 120) = qword_10051B858;

  return _swift_task_switch(sub_100272FF4, v1, 0);
}

uint64_t sub_100272FF4()
{
  v1 = v0[14];
  v0[16] = sub_100362B68(0, 0);
  v0[17] = v1;
  if (v1)
  {
    v2 = sub_100273780;
  }

  else
  {
    v2 = sub_100273084;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100273084()
{
  v30 = v0;
  v1 = v0[16];
  v29 = _swiftEmptyArrayStorage;
  if (v1 >> 62)
  {
    goto LABEL_16;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  for (i = v1; v2; i = v0[16])
  {
    v4 = 0;
    v5 = v0[9];
    v27 = v1 & 0xFFFFFFFFFFFFFF8;
    v28 = v1 & 0xC000000000000001;
    v21 = i + 32;
    v25 = enum case for StateInternal.Discriminant.installed(_:);
    v23 = (v0[6] + 8);
    v24 = (v5 + 104);
    v22 = (v5 + 8);
    v26 = v2;
    while (1)
    {
      if (v28)
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v4 >= *(v27 + 16))
        {
          goto LABEL_15;
        }

        v6 = *(v21 + 8 * v4);
      }

      v7 = v6;
      v8 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      v10 = v0[10];
      v9 = v0[11];
      v12 = v0[7];
      v11 = v0[8];
      v13 = v0[5];
      (*v24)(v9, v25, v11);
      CredentialInternal.state.getter();
      StateInternal.discriminant.getter();
      (*v23)(v12, v13);
      sub_1002751F8();
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      v1 = *v22;
      (*v22)(v10, v11);
      (v1)(v9, v11);
      if (v0[2] == v0[3])
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v1 = &v29;
        specialized ContiguousArray._endMutation()();
      }

      else
      {
      }

      ++v4;
      if (v8 == v26)
      {
        v14 = v29;
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    v2 = _CocoaArrayWrapper.endIndex.getter();
  }

  v14 = _swiftEmptyArrayStorage;
LABEL_18:
  v0[18] = v14;

  if (qword_1005019D8 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_1000958E4(v15, qword_10051B2C8);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&_mh_execute_header, v16, v17, "Running heartbeat reporting task", v18, 2u);
  }

  v19 = swift_task_alloc();
  v0[19] = v19;
  *v19 = v0;
  v19[1] = sub_1002733F8;

  return sub_1002EE178(v14);
}

uint64_t sub_1002733F8()
{
  *(*v1 + 160) = v0;

  if (v0)
  {
    v2 = sub_10027393C;
  }

  else
  {
    v2 = sub_10027352C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10027352C()
{
  [*(v0 + 32) setTaskCompleted];

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1002735C4(uint64_t a1, uint64_t a2)
{
  if (qword_1005019D8 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_1000958E4(v3, qword_10051B2C8);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, v4, v5, "Error %@ encountered when sending heartbeat report", v6, 0xCu);
    sub_1000C2998(v7);
  }

  v9 = *(v2 + 32);

  [v9 setTaskCompleted];

  v10 = *(v2 + 8);

  return v10();
}

uint64_t sub_100273780(uint64_t a1, uint64_t a2)
{
  if (qword_1005019D8 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_1000958E4(v3, qword_10051B2C8);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, v4, v5, "Error %@ encountered when sending heartbeat report", v6, 0xCu);
    sub_1000C2998(v7);
  }

  v9 = *(v2 + 32);

  [v9 setTaskCompleted];

  v10 = *(v2 + 8);

  return v10();
}

uint64_t sub_10027393C(uint64_t a1, uint64_t a2)
{
  if (qword_1005019D8 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_1000958E4(v3, qword_10051B2C8);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, v4, v5, "Error %@ encountered when sending heartbeat report", v6, 0xCu);
    sub_1000C2998(v7);
  }

  v9 = *(v2 + 32);

  [v9 setTaskCompleted];

  v10 = *(v2 + 8);

  return v10();
}

uint64_t sub_100273B44(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_100068FC4(&qword_100504250, &qword_10040D610);
  __chkstk_darwin(v5 - 8);
  v7 = &v12 - v6;
  if (qword_100501BC8 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = a1;
  v10 = a1;
  sub_1001F9BE8(0, 0, v7, a3, v9);
}

id sub_100273C7C(void *a1, const char *a2)
{
  if (qword_100501BC8 != -1)
  {
    v3 = a1;
    v4 = a2;
    swift_once();
    a1 = v3;
    a2 = v4;
  }

  return sub_100275044(a1, a2);
}

void sub_100273CE0()
{
  type metadata accessor for SESOnceOnlyTaskManager();

  if (qword_1005019D8 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_1000958E4(v0, qword_10051B2C8);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v5 = v3;
    *v2 = 136315138;
    *(v2 + 4) = sub_1002FFA0C(0xD000000000000031, 0x8000000100469830, &v5);
    _os_log_impl(&_mh_execute_header, oslog, v1, "Successfully registered one time task %s", v2, 0xCu);
    sub_1000752F4(v3);
  }
}

void sub_100273E60(uint64_t a1, uint64_t a2)
{
  if (qword_100501BC8 != -1)
  {
    swift_once();
  }

  v2 = (qword_100508AE0 + OBJC_IVAR____TtC10seserviced16SECReportManager_currentPresentmentReportingActivity);
  if (*(qword_100508AE0 + OBJC_IVAR____TtC10seserviced16SECReportManager_currentPresentmentReportingActivity + 16))
  {
    if (qword_1005019D8 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_1000958E4(v3, qword_10051B2C8);
    oslog = Logger.logObject.getter();
    v4 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(oslog, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v4, "Vienna presentment reporting task is already scheduled", v5, 2u);
    }
  }

  else
  {
    type metadata accessor for SESScheduledActivityManager();
    sub_100131F30(0, 1, 0, sub_100273AF8, 0, sub_100273B18, 0, v14, v15, 86400.0);
    v6 = *v2;
    v7 = v2[1];
    v8 = v2[2];
    v9 = v2[3];
    v10 = v2[4];
    v11 = v2[5];
    v12 = v15[1];
    *v2 = v15[0];
    *(v2 + 1) = v12;
    *(v2 + 2) = v15[2];
    sub_100274F1C(v6, v7, v8, v9, v10, v11);
  }
}

void sub_10027415C(uint64_t a1, uint64_t a2)
{
  if (qword_100501BC8 != -1)
  {
    swift_once();
  }

  v2 = (qword_100508AE0 + OBJC_IVAR____TtC10seserviced16SECReportManager_currentHeartbeatReportingActivity);
  if (*(qword_100508AE0 + OBJC_IVAR____TtC10seserviced16SECReportManager_currentHeartbeatReportingActivity + 16))
  {
    if (qword_1005019D8 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_1000958E4(v3, qword_10051B2C8);
    oslog = Logger.logObject.getter();
    v4 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(oslog, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v4, "Vienna heartbeat reporting task is already scheduled", v5, 2u);
    }
  }

  else
  {
    type metadata accessor for SESScheduledActivityManager();
    sub_100131F30(1, 1, 0, sub_100273B24, 0, sub_100273C70, 0, v14, v15, 1296000.0);
    v6 = *v2;
    v7 = v2[1];
    v8 = v2[2];
    v9 = v2[3];
    v10 = v2[4];
    v11 = v2[5];
    v12 = v15[1];
    *v2 = v15[0];
    *(v2 + 1) = v12;
    *(v2 + 2) = v15[2];
    sub_100274F1C(v6, v7, v8, v9, v10, v11);
  }
}

uint64_t sub_100274474(uint64_t a1, uint64_t a2)
{
  if (qword_100501BC8 != -1)
  {
    swift_once();
  }

  v3 = qword_100508AE0;
  v4 = OBJC_IVAR____TtC10seserviced16SECReportManager_currentPresentmentReportingActivity;
  *(v2 + 64) = qword_100508AE0;
  *(v2 + 72) = v4;
  v5 = v3 + v4;
  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = *(v5 + 40);
    *(v2 + 80) = v7;
    v8 = *(v5 + 24);
    *(v2 + 88) = v8;
    v9 = *(v5 + 8);
    v10 = *v5;
    *(v2 + 40) = v8;
    *(v2 + 16) = v10;
    *(v2 + 17) = BYTE1(v10) & 1;
    *(v2 + 18) = BYTE2(v10) & 1;
    *(v2 + 24) = v9;
    *(v2 + 32) = v6;
    *(v2 + 56) = v7;

    v11 = swift_task_alloc();
    *(v2 + 96) = v11;
    *v11 = v2;
    v11[1] = sub_10027469C;

    return sub_100133768(0, 0);
  }

  else
  {
    if (qword_1005019D8 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_1000958E4(v13, qword_10051B2C8);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "No reporting activity found", v16, 2u);
    }

    v17 = *(v2 + 8);

    return v17();
  }
}

uint64_t sub_10027469C(char a1)
{
  *(*v2 + 104) = a1;

  if (v1)
  {
    v3 = sub_1002747B0;
  }

  else
  {
    v3 = sub_1002753A4;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1002747B0(uint64_t a1, uint64_t a2)
{
  if (qword_1005019D8 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_1000958E4(v3, qword_10051B2C8);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v2 + 104);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    sub_100134EB4();
    swift_allocError();
    *v9 = v6 & 1;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "Error %@ encountered when cancelling vienna presentment reporting task", v7, 0xCu);
    sub_1000C2998(v8);
  }

  else
  {
  }

  v11 = *(v2 + 8);

  return v11();
}

uint64_t sub_100274984(uint64_t a1, uint64_t a2)
{
  if (qword_100501BC8 != -1)
  {
    swift_once();
  }

  v3 = qword_100508AE0;
  v4 = OBJC_IVAR____TtC10seserviced16SECReportManager_currentHeartbeatReportingActivity;
  *(v2 + 64) = qword_100508AE0;
  *(v2 + 72) = v4;
  v5 = v3 + v4;
  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = *(v5 + 40);
    *(v2 + 80) = v7;
    v8 = *(v5 + 24);
    *(v2 + 88) = v8;
    v9 = *(v5 + 8);
    v10 = *v5;
    *(v2 + 40) = v8;
    *(v2 + 16) = v10;
    *(v2 + 17) = BYTE1(v10) & 1;
    *(v2 + 18) = BYTE2(v10) & 1;
    *(v2 + 24) = v9;
    *(v2 + 32) = v6;
    *(v2 + 56) = v7;

    v11 = swift_task_alloc();
    *(v2 + 96) = v11;
    *v11 = v2;
    v11[1] = sub_100274BBC;

    return sub_100133768(sub_100272370, 0);
  }

  else
  {
    if (qword_1005019D8 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_1000958E4(v13, qword_10051B2C8);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "No reporting activity found", v16, 2u);
    }

    v17 = *(v2 + 8);

    return v17();
  }
}

uint64_t sub_100274BBC(char a1)
{
  *(*v2 + 104) = a1;

  if (v1)
  {
    v3 = sub_100274D64;
  }

  else
  {
    v3 = sub_100274CD0;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100274CD0()
{
  v2 = v0[8];
  v1 = v0[9];

  v3 = (v2 + v1);
  v4 = *(v2 + v1);
  v5 = *(v2 + v1 + 8);
  v6 = *(v2 + v1 + 16);
  v7 = *(v2 + v1 + 24);
  v8 = *(v2 + v1 + 32);
  v9 = *(v2 + v1 + 40);
  *v3 = 0u;
  v3[1] = 0u;
  v3[2] = 0u;
  sub_100274F1C(v4, v5, v6, v7, v8, v9);
  v10 = v0[1];

  return v10();
}

uint64_t sub_100274D64(uint64_t a1, uint64_t a2)
{
  if (qword_1005019D8 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_1000958E4(v3, qword_10051B2C8);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v2 + 104);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    sub_100134EB4();
    swift_allocError();
    *v9 = v6 & 1;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "Error %@ encountered when cancelling vienna heartbeat reporting task", v7, 0xCu);
    sub_1000C2998(v8);
  }

  else
  {
  }

  v11 = *(v2 + 8);

  return v11();
}

void sub_100274F1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a3)
  {
  }
}

uint64_t sub_100274F60()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100274F98()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000C288C;

  return sub_100272460();
}

id sub_100275044(void *a1, const char *a2)
{
  if (qword_1005019D8 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000958E4(v4, qword_10051B2C8);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, a2, v7, 2u);
  }

  return [a1 setTaskCompleted];
}

uint64_t sub_100275144(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10012E598;

  return sub_100272BD0(a1, v4, v5, v6);
}

unint64_t sub_1002751F8()
{
  result = qword_100508B20;
  if (!qword_100508B20)
  {
    type metadata accessor for StateInternal.Discriminant();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100508B20);
  }

  return result;
}

uint64_t sub_100275254()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100275294(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10012E598;

  return sub_1002713C8(a1, v4, v5, v6);
}

uint64_t sub_100275348(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100275360()
{

  return _swift_deallocObject(v0, 24, 7);
}

char *sub_1002753A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v38 = a2;
  v39 = a3;
  ObjectType = swift_getObjectType();
  v36 = sub_100068FC4(&unk_100504880, &unk_10040A5B0);
  v6 = *(v36 - 8);
  __chkstk_darwin(v36);
  v8 = &v34 - v7;
  v9 = type metadata accessor for UUID();
  v35 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v4[OBJC_IVAR____TtC10seserviced15SECAdminSession_remoteNotificationProxy] = 0;
  v12 = OBJC_IVAR____TtC10seserviced15SECAdminSession_useNetworkShim;
  LOBYTE(v41) = 0;
  v44 = 2;
  UserDefaultBacked.init(suiteName:key:initial:internalOnly:internalOnlyInitial:)();
  if (*(a1 + 128) == 2 && (v13 = vorrq_s8(vorrq_s8(vorrq_s8(*(a1 + 64), *(a1 + 96)), vorrq_s8(*(a1 + 80), *(a1 + 112))), vorrq_s8(*(a1 + 32), *(a1 + 48))), !(*&vorr_s8(*v13.i8, *&vextq_s8(v13, v13, 8uLL)) | *(a1 + 24) | *(a1 + 16))))
  {
    v20 = &v4[OBJC_IVAR____TtC10seserviced15SECAdminSession_clientInfo];
    v21 = *(a1 + 112);
    *(v20 + 6) = *(a1 + 96);
    *(v20 + 7) = v21;
    v20[128] = *(a1 + 128);
    v22 = *(a1 + 48);
    *(v20 + 2) = *(a1 + 32);
    *(v20 + 3) = v22;
    v23 = *(a1 + 80);
    *(v20 + 4) = *(a1 + 64);
    *(v20 + 5) = v23;
    v24 = *(a1 + 16);
    *v20 = *a1;
    *(v20 + 1) = v24;
    v25 = &v4[OBJC_IVAR____TtC10seserviced15SECAdminSession_sessionManagementDelegate];
    v26 = v38;
    v27 = v39;
    *v25 = v38;
    *(v25 + 1) = v27;
    sub_100113B54(v26, v27);
    UUID.init()();
    (*(v35 + 32))(&v4[OBJC_IVAR____TtC10seserviced15SECAdminSession_sessionIdentifier], v11, v9);
    v28 = v36;
    (*(v6 + 16))(v8, &v4[v12], v36);
    UserDefaultBacked.wrappedValue.getter();
    (*(v6 + 8))(v8, v28);
    if (v41 == 1)
    {
      v29 = type metadata accessor for SECNetworkShim(0);
      v30 = swift_allocObject();
      LOBYTE(v41) = 0;
      v44 = 2;
      UserDefaultBacked.init(suiteName:key:initial:internalOnly:internalOnlyInitial:)();
      v31 = &off_1004D1178;
    }

    else
    {
      v29 = type metadata accessor for SECNetworkController(0);
      v30 = swift_allocObject();
      v32 = OBJC_IVAR____TtC10seserviced20SECNetworkController_networkConfiguration;
      v33 = type metadata accessor for SECNetworkConfiguration(0);
      (*(*(v33 - 8) + 56))(v30 + v32, 1, 1, v33);
      *(v30 + OBJC_IVAR____TtC10seserviced20SECNetworkController_platformIdentifierLengthWithTag) = 19;
      *(v30 + OBJC_IVAR____TtC10seserviced20SECNetworkController_jsblSequenceCounterLastByteIndex) = 38;
      *(v30 + OBJC_IVAR____TtC10seserviced20SECNetworkController_platformIdTag) = 57120;
      *(v30 + OBJC_IVAR____TtC10seserviced20SECNetworkController_jsblSeqCounterTag) = 57137;
      *(v30 + OBJC_IVAR____TtC10seserviced20SECNetworkController_signatureTag) = 24375;
      *(v30 + OBJC_IVAR____TtC10seserviced20SECNetworkController_rndDevTag) = 133;
      v31 = &off_1004CFF58;
    }

    v42 = v29;
    v43 = v31;
    *&v41 = v30;
    sub_1000BC104(&v41, &v4[OBJC_IVAR____TtC10seserviced15SECAdminSession_networkController]);
    v40.receiver = v4;
    v40.super_class = ObjectType;
    v4 = objc_msgSendSuper2(&v40, "init");
    sub_10021C274(v38, v39);
  }

  else
  {
    sub_10012E3A0(a1);
    if (qword_1005019D8 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_1000958E4(v14, qword_10051B2C8);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "Non-privileged client trying to start admin session", v17, 2u);
    }

    sub_10009591C();
    swift_allocError();
    *v18 = 6;
    swift_willThrow();
    sub_10021C274(v38, v39);
    swift_unknownObjectRelease();
    (*(v6 + 8))(&v4[v12], v36);
    swift_deallocPartialClassInstance();
  }

  return v4;
}

uint64_t sub_1002759A4(uint64_t a1, uint64_t a2)
{
  v19 = v2;
  if (qword_1005019D8 != -1)
  {
    swift_once();
  }

  v3 = *(v2 + 40);
  v4 = type metadata accessor for Logger();
  sub_1000958E4(v4, qword_10051B2C8);
  v5 = v3;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v18 = v9;
    *v8 = 136315138;
    v10 = UUID.uuidString.getter();
    v12 = sub_1002FFA0C(v10, v11, &v18);

    *(v8 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v6, v7, "Starting SECServerAdminSession %s", v8, 0xCu);
    sub_1000752F4(v9);
  }

  v13 = *(v2 + 40) + OBJC_IVAR____TtC10seserviced15SECAdminSession_sessionManagementDelegate;
  swift_beginAccess();
  v15 = *v13;
  v14 = *(v13 + 8);
  if (*v13)
  {
    v15(*(v2 + 40), 0);
  }

  *v13 = 0;
  *(v13 + 8) = 0;
  swift_endAccess();
  sub_10021C274(v15, v14);
  v16 = *(v2 + 8);

  return v16();
}

uint64_t sub_100275B90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return _swift_task_switch(sub_100275BB4, 0, 0);
}

uint64_t sub_100275BB4(uint64_t a1, uint64_t a2)
{
  v23 = v2;
  if (qword_1005019D8 != -1)
  {
    swift_once();
  }

  v3 = *(v2 + 16);
  v4 = type metadata accessor for Logger();
  sub_1000958E4(v4, qword_10051B2C8);
  v5 = v3;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v22 = v9;
    *v8 = 136315138;
    v10 = UUID.uuidString.getter();
    v12 = sub_1002FFA0C(v10, v11, &v22);

    *(v8 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v6, v7, "Ending SECServerAdminSession %s", v8, 0xCu);
    sub_1000752F4(v9);
  }

  v13 = qword_100501A48;
  v14 = *(v2 + 16);
  if (v13 != -1)
  {
    swift_once();
    v14 = *(v2 + 16);
  }

  v15 = qword_10051B398;
  v16 = v14;
  os_unfair_lock_lock((v15 + 16));
  sub_1001B1178((v15 + 24), v16, &off_1004CE768, 4, v15, 0);
  v17 = *(v2 + 24);
  v18 = *(v2 + 16);
  os_unfair_lock_unlock((v15 + 16));

  sub_1001B0970();
  v17(v19);
  v20 = *(v2 + 8);

  return v20();
}

uint64_t sub_100275E20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[6] = a6;
  v7[7] = a7;
  v9 = swift_task_alloc();
  v7[8] = v9;
  *v9 = v7;
  v9[1] = sub_100275EC0;

  return sub_100276304(a5);
}

uint64_t sub_100275EC0()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_100276138;
  }

  else
  {
    v2 = sub_100275FD4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100275FD4()
{
  if (qword_100501DC8 != -1)
  {
    swift_once();
  }

  v1 = qword_10051B858;
  *(v0 + 80) = qword_10051B858;

  return _swift_task_switch(sub_10027606C, v1, 0);
}

uint64_t sub_10027606C()
{
  sub_10032C9E4();

  return _swift_task_switch(sub_1002760D4, 0, 0);
}

uint64_t sub_1002760D4()
{
  (*(v0 + 48))();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100276138(uint64_t a1, uint64_t a2)
{
  v15 = v2;
  if (qword_1005019D8 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_1000958E4(v3, qword_10051B2C8);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v6 = 136315138;
    swift_getErrorValue();
    v8 = Error.localizedDescription.getter();
    v10 = sub_1002FFA0C(v8, v9, &v14);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "Error %s encountered when deleting credential", v6, 0xCu);
    sub_1000752F4(v7);
  }

  else
  {
  }

  (*(v2 + 48))(v11);
  v12 = *(v2 + 8);

  return v12();
}

uint64_t sub_100276304(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for UUID();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();

  return _swift_task_switch(sub_1002763F4, 0, 0);
}

uint64_t sub_1002763F4()
{
  v27 = v0;
  sub_100068FC4(&unk_100504880, &unk_10040A5B0);
  UserDefaultBacked.wrappedValue.getter();
  if (*(v0 + 248))
  {
    v1 = *(v0 + 40);
    v2 = *(v0 + 16);
    v3 = *(v2 + 32);
    *(v0 + 250) = v3;
    v4 = -1;
    v5 = -1 << v3;
    if (-(-1 << v3) < 64)
    {
      v4 = ~(-1 << -(-1 << v3));
    }

    v6 = v4 & *(v2 + 56);
    *(v0 + 168) = OBJC_IVAR____TtC10seserviced15SECAdminSession_sessionIdentifier;

    if (v6)
    {
      v8 = 0;
LABEL_12:
      *(v0 + 176) = v6;
      *(v0 + 184) = v8;
      v18 = *(v0 + 56);
      v19 = *(v0 + 64);
      v20 = *(v0 + 32);
      v21 = *(v7 + 48) + *(v1 + 72) * (__clz(__rbit64(v6)) | (v8 << 6));
      v22 = *(v1 + 16);
      *(v0 + 192) = v22;
      *(v0 + 200) = (v1 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v22(v19, v21, v20);
      (*(v1 + 32))(v18, v19, v20);
      if (qword_100501C90 != -1)
      {
        swift_once();
      }

      v23 = swift_task_alloc();
      *(v0 + 208) = v23;
      *v23 = v0;
      v23[1] = sub_100276E88;
      v24 = *(v0 + 56);

      return sub_1002E7C64(v24);
    }

    else
    {
      v17 = 0;
      while (((63 - v5) >> 6) - 1 != v17)
      {
        v8 = v17 + 1;
        v6 = *(v7 + 8 * v17++ + 64);
        if (v6)
        {
          goto LABEL_12;
        }
      }

      v25 = *(v0 + 8);

      return v25();
    }
  }

  else
  {
    v9 = *(v0 + 16);
    _StringGuts.grow(_:)(35);

    strcpy(v26, "Admin session ");
    HIBYTE(v26[1]) = -18;
    v10._countAndFlagsBits = UUID.uuidString.getter();
    String.append(_:)(v10);

    v11._object = 0x8000000100467D00;
    v11._countAndFlagsBits = 0xD000000000000013;
    String.append(_:)(v11);
    v12 = v26[0];
    v13 = v26[1];
    *(v0 + 88) = v26[1];
    v14 = swift_allocObject();
    *(v0 + 96) = v14;
    *(v14 + 16) = v9;

    v15 = swift_task_alloc();
    *(v0 + 104) = v15;
    *v15 = v0;
    v15[1] = sub_1002767CC;

    return sub_1001FB560(sub_1001FB560, v12, v13, &unk_1004138C8, v14);
  }
}

uint64_t sub_1002767CC()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_1002776CC;
  }

  else
  {

    v2 = sub_1002768F0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1002768F0()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 16);
  v3 = *(v2 + 32);
  *(v0 + 249) = v3;
  v4 = -1;
  v5 = -1 << v3;
  if (-(-1 << v3) < 64)
  {
    v4 = ~(-1 << -(-1 << v3));
  }

  v6 = v4 & *(v2 + 56);
  *(v0 + 120) = *(v0 + 112);

  if (v6)
  {
    v8 = 0;
LABEL_8:
    *(v0 + 128) = v6;
    *(v0 + 136) = v8;
    v10 = *(v0 + 72);
    v11 = *(v0 + 80);
    v12 = *(v0 + 32);
    (*(v1 + 16))(v11, *(v7 + 48) + *(v1 + 72) * (__clz(__rbit64(v6)) | (v8 << 6)), v12);
    (*(v1 + 32))(v10, v11, v12);
    if (qword_100501DC8 != -1)
    {
      swift_once();
    }

    v13 = qword_10051B858;
    *(v0 + 144) = qword_10051B858;

    return _swift_task_switch(sub_100276AE4, v13, 0);
  }

  else
  {
    v9 = 0;
    while (((63 - v5) >> 6) - 1 != v9)
    {
      v8 = v9 + 1;
      v6 = *(v7 + 8 * v9++ + 64);
      if (v6)
      {
        goto LABEL_8;
      }
    }

    v14 = *(v0 + 8);

    return v14();
  }
}

uint64_t sub_100276AE4()
{
  v1 = v0[15];
  v2 = sub_10035E904();
  if (v1)
  {
    v0[20] = v1;
    v7 = sub_100276DC4;
  }

  else
  {
    v3 = v2;
    v4 = v0[18];
    v5 = v0[9];
    v6 = swift_task_alloc();
    v6[2] = v3;
    v6[3] = v4;
    v6[4] = v5;
    NSManagedObjectContext.performAndWait<A>(_:)();
    v0[19] = 0;

    v7 = sub_100276BD4;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_100276BD4()
{
  (*(*(v0 + 40) + 8))(*(v0 + 72), *(v0 + 32));
  v2 = *(v0 + 128);
  v1 = *(v0 + 136);
  *(v0 + 120) = *(v0 + 152);
  v3 = (v2 - 1) & v2;
  if (v3)
  {
    v4 = *(v0 + 16);
LABEL_7:
    *(v0 + 128) = v3;
    *(v0 + 136) = v1;
    v6 = *(v0 + 72);
    v7 = *(v0 + 80);
    v8 = *(v0 + 32);
    v9 = *(v0 + 40);
    (*(v9 + 16))(v7, *(v4 + 48) + *(v9 + 72) * (__clz(__rbit64(v3)) | (v1 << 6)), v8);
    (*(v9 + 32))(v6, v7, v8);
    if (qword_100501DC8 != -1)
    {
LABEL_15:
      swift_once();
    }

    v10 = qword_10051B858;
    *(v0 + 144) = qword_10051B858;

    return _swift_task_switch(sub_100276AE4, v10, 0);
  }

  else
  {
    while (1)
    {
      v5 = v1 + 1;
      if (__OFADD__(v1, 1))
      {
        __break(1u);
        goto LABEL_15;
      }

      if (v5 >= (((1 << *(v0 + 249)) + 63) >> 6))
      {
        break;
      }

      v4 = *(v0 + 16);
      v3 = *(v4 + 8 * v5 + 56);
      ++v1;
      if (v3)
      {
        v1 = v5;
        goto LABEL_7;
      }
    }

    v11 = *(v0 + 8);

    return v11();
  }
}

uint64_t sub_100276DC4()
{
  v1 = v0[9];
  v2 = v0[4];
  v3 = v0[5];

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_100276E88()
{
  *(*v1 + 216) = v0;

  if (v0)
  {
    v2 = sub_100277608;
  }

  else
  {
    v2 = sub_100276F9C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100276F9C(uint64_t a1, uint64_t a2)
{
  v30 = v2;
  if (qword_1005019D8 != -1)
  {
    swift_once();
  }

  v3 = v2[24];
  v4 = v2[6];
  v5 = v2[7];
  v7 = v2[3];
  v6 = v2[4];
  v8 = type metadata accessor for Logger();
  sub_1000958E4(v8, qword_10051B2C8);
  v3(v4, v5, v6);
  v9 = v7;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v13 = v2[5];
    v12 = v2[6];
    v28 = v2[4];
    v14 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    *v14 = 136315394;
    v15 = UUID.uuidString.getter();
    v17 = sub_1002FFA0C(v15, v16, &v29);

    *(v14 + 4) = v17;
    *(v14 + 12) = 2080;
    v18 = UUID.uuidString.getter();
    v20 = v19;
    v21 = *(v13 + 8);
    v21(v12, v28);
    v22 = sub_1002FFA0C(v18, v20, &v29);

    *(v14 + 14) = v22;
    _os_log_impl(&_mh_execute_header, v10, v11, "%s: Successfully deleted credential %s with SHIM", v14, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    v24 = v2[5];
    v23 = v2[6];
    v25 = v2[4];

    v21 = *(v24 + 8);
    v21(v23, v25);
  }

  v2[28] = v21;
  if (qword_100501DC8 != -1)
  {
    swift_once();
  }

  v26 = qword_10051B858;
  v2[29] = qword_10051B858;

  return _swift_task_switch(sub_100277228, v26, 0);
}

uint64_t sub_100277228()
{
  v1 = v0[27];
  v2 = sub_10035E904();
  if (v1)
  {
    v0[30] = v1;
    v7 = sub_100277540;
  }

  else
  {
    v3 = v2;
    v4 = v0[29];
    v5 = v0[7];
    v6 = swift_task_alloc();
    v6[2] = v3;
    v6[3] = v4;
    v6[4] = v5;
    NSManagedObjectContext.performAndWait<A>(_:)();

    v7 = sub_100277314;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_100277314()
{
  (*(v0 + 224))(*(v0 + 56), *(v0 + 32));
  v1 = *(v0 + 184);
  v2 = (*(v0 + 176) - 1) & *(v0 + 176);
  if (v2)
  {
    v3 = *(v0 + 16);
LABEL_7:
    *(v0 + 176) = v2;
    *(v0 + 184) = v1;
    v5 = *(v0 + 56);
    v6 = *(v0 + 64);
    v7 = *(v0 + 32);
    v8 = *(v0 + 40);
    v9 = *(v3 + 48) + *(v8 + 72) * (__clz(__rbit64(v2)) | (v1 << 6));
    v10 = *(v8 + 16);
    *(v0 + 192) = v10;
    *(v0 + 200) = (v8 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v10(v6, v9, v7);
    (*(v8 + 32))(v5, v6, v7);
    if (qword_100501C90 != -1)
    {
LABEL_15:
      swift_once();
    }

    v11 = swift_task_alloc();
    *(v0 + 208) = v11;
    *v11 = v0;
    v11[1] = sub_100276E88;
    v12 = *(v0 + 56);

    return sub_1002E7C64(v12);
  }

  else
  {
    while (1)
    {
      v4 = v1 + 1;
      if (__OFADD__(v1, 1))
      {
        __break(1u);
        goto LABEL_15;
      }

      if (v4 >= (((1 << *(v0 + 250)) + 63) >> 6))
      {
        break;
      }

      v3 = *(v0 + 16);
      v2 = *(v3 + 8 * v4 + 56);
      ++v1;
      if (v2)
      {
        v1 = v4;
        goto LABEL_7;
      }
    }

    v14 = *(v0 + 8);

    return v14();
  }
}

uint64_t sub_100277540()
{
  v1 = v0[28];
  v2 = v0[7];
  v3 = v0[4];

  v1(v2, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_100277608()
{
  v1 = v0[7];
  v2 = v0[4];
  v3 = v0[5];

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1002776CC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100277778(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[19] = a2;
  v3[20] = a3;
  sub_100068FC4(&unk_10050BE80, &unk_10040B360);
  v3[21] = swift_task_alloc();
  v4 = type metadata accessor for UUID();
  v3[22] = v4;
  v3[23] = *(v4 - 8);
  v3[24] = swift_task_alloc();
  v3[25] = swift_task_alloc();

  return _swift_task_switch(sub_1002778A8, 0, 0);
}

uint64_t sub_1002778A8()
{
  v0[4].type = 0;
  v1 = [*&v0[4].align listAppletsAndRefreshCache:0 outError:&v0[4].type];
  type = v0[4].type;
  if (!v1)
  {
    v44 = type;
    _convertNSErrorToError(_:)();

    swift_willThrow();

    name = v0->name;
    goto LABEL_61;
  }

  v3 = v1;
  sub_10009393C(0, &qword_100504280, NFApplet_ptr);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = type;

  if (v4 >> 62)
  {
LABEL_48:
    v6 = _CocoaArrayWrapper.endIndex.getter();
    if (!v6)
    {
      goto LABEL_49;
    }
  }

  else
  {
    v6 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      goto LABEL_49;
    }
  }

  v7 = 0;
  v66 = v4 & 0xC000000000000001;
  v8 = *&v0[5].align;
  v64 = v4 + 32;
  v65 = v4 & 0xFFFFFFFFFFFFFF8;
  v56 = (v8 + 32);
  v57 = (v8 + 48);
  offs = v0[5].offs;
  v59 = offs + 14;
  v60 = (v8 + 8);
  v54 = v8;
  v62 = (v8 + 56);
  v63 = v0;
  v61 = v6;
  while (1)
  {
    while (1)
    {
LABEL_7:
      if (v66)
      {
        v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v7 >= *(v65 + 16))
        {
          goto LABEL_46;
        }

        v11 = *(v64 + 8 * v7);
      }

      v12 = v11;
      if (__OFADD__(v7++, 1))
      {
LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
        goto LABEL_48;
      }

      v14 = objc_opt_self();
      v15 = [v12 discretionaryData];
      v4 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v17 = v16;

      isa = Data._bridgeToObjectiveC()().super.isa;
      sub_10006A178(v4, v17);
      v19 = [v14 TLVsWithData:isa];

      if (v19)
      {
        break;
      }

      v9 = v0[5].name;
      v10 = v0[5].type;

      (*v62)(v9, 1, 1, v10);
LABEL_6:
      sub_100156C78(v0[5].name);
      if (v7 == v6)
      {
        goto LABEL_49;
      }
    }

    sub_10009393C(0, &qword_100502418, SESTLV_ptr);
    v20 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v67 = v12;
    if (!(v20 >> 62))
    {
      v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v0 = &stru_1004F5000;
      if (v21)
      {
        goto LABEL_14;
      }

LABEL_40:
      v0 = v63;
      v4 = v63[5].name;
      v43 = v63[5].type;

      (*v62)(v4, 1, 1, v43);
LABEL_41:
      v6 = v61;
      goto LABEL_6;
    }

    v42 = _CocoaArrayWrapper.endIndex.getter();
    if (v42 < 0)
    {
      goto LABEL_47;
    }

    v21 = v42;
    v0 = &stru_1004F5000;
    if (!v42)
    {
      goto LABEL_40;
    }

LABEL_14:
    v4 = 0;
    while (1)
    {
      if ((v20 & 0xC000000000000001) != 0)
      {
        v22 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v4 >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_45;
        }

        v22 = *(v20 + 8 * v4 + 32);
      }

      v23 = v22;
      if ([v22 tag] == 254)
      {
        v24 = [v23 v0[113].type];
        if (v24)
        {
          break;
        }
      }

      ++v4;

      if (v21 == v4)
      {
        goto LABEL_40;
      }
    }

    v25 = v24;
    v26 = [v24 value];
    if (!v26)
    {
      __break(1u);
    }

    v27 = v26;
    v0 = v63;
    v28 = v63[5].name;
    v4 = v63[5].type;

    v29 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v31 = v30;

    sub_1001E0778(v29, v31, v28);
    if ((*v57)(v28, 1, v4) == 1)
    {

      goto LABEL_41;
    }

    (*v56)(v63[6].name, v63[5].name, v63[5].type);
    v4 = v67;
    if (([v67 managedBySP] & 1) == 0)
    {
      break;
    }

    if (!*(offs + 2) || (v4 = *(offs + 5), sub_100278ACC(&unk_100507480, &protocol conformance descriptor for UUID), v32 = dispatch thunk of Hashable._rawHashValue(seed:)(), v33 = -1 << *(offs + 32), v34 = v32 & ~v33, ((*(v59 + ((v34 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v34) & 1) == 0))
    {
LABEL_31:
      v0 = v63;
      v40 = v63[6].name;
      v41 = v63[5].type;

      goto LABEL_33;
    }

    v58 = ~v33;
    v35 = *(v54 + 72);
    v36 = *(v54 + 16);
    while (1)
    {
      v37 = v63[6].offs;
      v4 = v63[5].type;
      v36(v37, *(offs + 6) + v34 * v35, v4);
      sub_100278ACC(&qword_100502C18, &protocol conformance descriptor for UUID);
      v38 = dispatch thunk of static Equatable.== infix(_:_:)();
      v39 = *v60;
      (*v60)(v37, v4);
      if (v38)
      {
        break;
      }

      v34 = (v34 + 1) & v58;
      if (((*(v59 + ((v34 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v34) & 1) == 0)
      {
        goto LABEL_31;
      }
    }

    v0 = v63;
    v39(v63[6].name, v63[5].type);
    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
    v6 = v61;
    if (v7 == v61)
    {
      goto LABEL_49;
    }
  }

  v40 = v63[6].name;
  v41 = v63[5].type;

LABEL_33:
  (*v60)(v40, v41);
  v6 = v61;
  if (v7 != v61)
  {
    goto LABEL_7;
  }

LABEL_49:

  if ((_swiftEmptyArrayStorage & 0x8000000000000000) != 0 || (_swiftEmptyArrayStorage & 0x4000000000000000) != 0)
  {
    if (!_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_56;
    }

LABEL_52:
    v46 = *&v0[4].align;
    v47 = Array._bridgeToObjectiveC()().super.isa;
    v0[6].type = v47;

    v0->type = v0;
    *&v0->align = sub_1002781BC;
    v48 = swift_continuation_init();
    v0[4].name = sub_100068FC4(&unk_100504290, &qword_10040B5A8);
    v0[2].type = _NSConcreteStackBlock;
    *&v0[2].align = 1107296256;
    v0[3].offs = sub_1001E95B0;
    v0[3].name = &unk_1004CE7E8;
    v0[3].type = v48;
    [v46 deleteAppletsAndConnectToServer:v47 completion:&v0[2].type];

    return _swift_continuation_await(&v0->type);
  }

  else
  {
    if (_swiftEmptyArrayStorage[2])
    {
      goto LABEL_52;
    }

LABEL_56:

    if (qword_1005019D8 != -1)
    {
      swift_once();
    }

    v49 = type metadata accessor for Logger();
    sub_1000958E4(v49, qword_10051B2C8);
    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      *v52 = 0;
      _os_log_impl(&_mh_execute_header, v50, v51, "Nothing to delete in the SE when deleting ", v52, 2u);
    }

    name = v0->name;
LABEL_61:

    return name();
  }
}

uint64_t sub_1002781BC()
{
  v1 = *(*v0 + 48);
  *(*v0 + 216) = v1;
  if (v1)
  {
    v2 = sub_1002783AC;
  }

  else
  {
    v2 = sub_1002782F8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1002782F8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1002783AC(uint64_t a1)
{
  v2 = *(v1 + 208);
  swift_willThrow();

  v3 = *(v1 + 8);

  return v3();
}

uint64_t type metadata accessor for SECAdminSession(uint64_t a1)
{
  result = qword_100508B58;
  if (!qword_100508B58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10027860C(uint64_t a1)
{
  sub_1002186C8();
  if (v1 <= 0x3F)
  {
    type metadata accessor for UUID();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_100278720()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000C288C;

  return sub_100275984();
}

uint64_t sub_1002787AC(uint64_t a1, uint64_t a2)
{
  v5 = sub_100068FC4(&qword_100504250, &qword_10040D610);
  __chkstk_darwin(v5 - 8);
  v7 = &v12 - v6;
  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v2;
  v9[5] = a1;
  v9[6] = a2;
  v10 = v2;

  sub_1001F9BE8(0, 0, v7, &unk_10040BDA0, v9);
}

uint64_t sub_1002788CC(char a1, char a2)
{
  *(v3 + 40) = v2;
  *(v3 + 49) = a2;
  *(v3 + 48) = a1;
  return _swift_task_switch(sub_1002788F4, 0, 0);
}

uint64_t sub_1002788F4()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  v3 = *(v0 + 49);
  swift_beginAccess();
  sub_10020178C(v1, 0, v3, v2);
  swift_endAccess();
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_10027899C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1002789E4()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100278A1C(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1000C288C;

  return sub_100277778(a1, a2, v6);
}

uint64_t sub_100278ACC(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for UUID();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_100278B3C()
{
  if (qword_100501978 != -1)
  {
    swift_once();
  }

  if (sub_100130A24())
  {
    type metadata accessor for SECDefaultAppReconciler(0);
    oslog = Logger.logObject.getter();
    v0 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(oslog, v0))
    {
      v1 = swift_slowAlloc();
      *v1 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v0, "reconcileDefaultContactlessApp: pending migration -- no op", v1, 2u);
    }

    return;
  }

  sub_100326DF8(v44);
  if (*(&v44[0] + 1))
  {
    v46 = v44[0];
    *v47 = v44[1];
    *&v47[16] = v45;
    if (sub_1000B6274())
    {
      v2 = v46;
      if (__PAIR128__(0x8000000100465B40, 0xD000000000000012) == v46)
      {
        v3 = *v47;
      }

      else
      {
        v10 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v3 = *v47;
        if ((v10 & 1) == 0)
        {
          goto LABEL_26;
        }
      }

      if (v3 == 3)
      {

        v52 = *&v47[8];
        sub_1000B6B54(&v52);
        type metadata accessor for SECDefaultAppReconciler(0);
        v11 = Logger.logObject.getter();
        v12 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v11, v12))
        {
          v13 = swift_slowAlloc();
          *v13 = 0;
          _os_log_impl(&_mh_execute_header, v11, v12, "Passbook is default -- no op", v13, 2u);
        }

        return;
      }

LABEL_26:
      if (v3 == 2)
      {
        v52 = 0u;
        v53 = 0u;
        v54 = 1;
        if (sub_100306124(5, &v52, 0, 0))
        {
          v49 = 0;
          v50 = 0u;
          v51 = 1;
          v14 = sub_100306124(7, &v49._countAndFlagsBits, 0, 0);
LABEL_32:
          TCCContext.DefaultAppCapableTCCService.tccService.getter();
          v15 = TCCContext.checkTCCAccess(to:for:)();
          if (v15 < 2)
          {
            type metadata accessor for SECDefaultAppReconciler(0);
            v48 = *&v47[8];

            sub_1000B6AF8(&v48, v43);
            v16 = Logger.logObject.getter();
            v17 = static os_log_type_t.info.getter();

            sub_1000B6B54(&v48);
            if (os_log_type_enabled(v16, v17))
            {
              v18 = swift_slowAlloc();
              v19 = swift_slowAlloc();
              v43[0] = v19;
              *v18 = 136315138;
              sub_1000B6B54(&v48);
              v20 = sub_1002FFA0C(v2._countAndFlagsBits, v2._object, v43);

              *(v18 + 4) = v20;
              _os_log_impl(&_mh_execute_header, v16, v17, "Default app %s still eligible to use HCE first time after restore -- no op", v18, 0xCu);
              sub_1000752F4(v19);

LABEL_40:

              return;
            }

            goto LABEL_56;
          }

          if (v15 == 3)
          {
            type metadata accessor for SECDefaultAppReconciler(0);
            v48 = *&v47[8];

            sub_1000B6AF8(&v48, v43);
            v28 = Logger.logObject.getter();
            v29 = static os_log_type_t.info.getter();

            sub_1000B6B54(&v48);
            if (os_log_type_enabled(v28, v29))
            {
              v30 = swift_slowAlloc();
              v31 = swift_slowAlloc();
              v43[0] = v31;
              *v30 = 136315138;

              v32 = sub_1002FFA0C(v2._countAndFlagsBits, v2._object, v43);

              *(v30 + 4) = v32;
              _os_log_impl(&_mh_execute_header, v28, v29, "Default app %s found after restore", v30, 0xCu);
              sub_1000752F4(v31);
            }

            if (v14)
            {
              goto LABEL_55;
            }

            v33 = Logger.logObject.getter();
            v34 = static os_log_type_t.info.getter();
            if (os_log_type_enabled(v33, v34))
            {
              v35 = swift_slowAlloc();
              *v35 = 0;
              _os_log_impl(&_mh_execute_header, v33, v34, "Ineligible to use app after restore, attempt to fallback to counterpart service", v35, 2u);
            }

            v36 = 1;
          }

          else
          {
            if (v15 != 2)
            {
              _assertionFailure(_:_:file:line:flags:)();
              __break(1u);
              return;
            }

            type metadata accessor for SECDefaultAppReconciler(0);
            v48 = *&v47[8];

            sub_1000B6AF8(&v48, v43);
            v37 = Logger.logObject.getter();
            v38 = static os_log_type_t.info.getter();

            sub_1000B6B54(&v48);
            if (os_log_type_enabled(v37, v38))
            {
              v39 = swift_slowAlloc();
              v40 = swift_slowAlloc();
              v43[0] = v40;
              *v39 = 136315138;

              v41 = sub_1002FFA0C(v2._countAndFlagsBits, v2._object, v43);

              *(v39 + 4) = v41;
              _os_log_impl(&_mh_execute_header, v37, v38, "Default app %s TCC revoked, attempt to fallback to counterpart service", v39, 0xCu);
              sub_1000752F4(v40);
            }

            v36 = 0;
          }

          sub_100279544(&v46, v36);
LABEL_55:

LABEL_56:
          v24 = &v48;
          goto LABEL_57;
        }
      }

      else
      {
        if (v3 != 1)
        {
          type metadata accessor for SECDefaultAppReconciler(0);
          v52 = *&v47[8];

          sub_1000B6AF8(&v52, &v49);
          v16 = Logger.logObject.getter();
          v25 = static os_log_type_t.fault.getter();
          if (os_log_type_enabled(v16, v25))
          {
            v26 = swift_slowAlloc();
            v27 = swift_slowAlloc();
            v49._countAndFlagsBits = v27;
            *v26 = 136315394;
            *(v26 + 4) = sub_1002FFA0C(v2._countAndFlagsBits, v2._object, &v49._countAndFlagsBits);
            *(v26 + 12) = 2048;

            sub_1000B6B54(&v52);
            *(v26 + 14) = v3;

            sub_1000B6B54(&v52);
            _os_log_impl(&_mh_execute_header, v16, v25, "Unexpected default app info has no tcc string %s, domain %lu", v26, 0x16u);
            sub_1000752F4(v27);

            goto LABEL_40;
          }

          sub_1000B6B54(&v52);

          v24 = &v52;
LABEL_57:
          sub_1000B6B54(v24);
          return;
        }

        v52 = 0u;
        v53 = 0u;
        v54 = 1;
        if (sub_100306124(3, &v52, 0, 0))
        {
          v49 = 0;
          v50 = 0u;
          v51 = 1;
          v14 = sub_100306124(0, &v49._countAndFlagsBits, 0, 0);
          goto LABEL_32;
        }
      }

      type metadata accessor for SECDefaultAppReconciler(0);
      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 0;
        _os_log_impl(&_mh_execute_header, v21, v22, "Reconcile Default Contactless: Ineligible to use default app, attempt to fallback to counterpart service", v23, 2u);
      }

      sub_100279544(&v46, 1);

      v49 = *&v47[8];
      v24 = &v49;
      goto LABEL_57;
    }

    v49 = v46;
    sub_1000B6B54(&v49);
    v52 = *&v47[8];
    sub_1000B6B54(&v52);
  }

  v4 = sub_10032798C();
  type metadata accessor for SECDefaultAppReconciler(0);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.info.getter();
  v7 = os_log_type_enabled(v5, v6);
  if (v4)
  {
    if (v7)
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "Default app not installed -- configuring none as default", v8, 2u);
    }

    sub_100327738();
  }

  else
  {
    if (v7)
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "No default app found in user default before first reconciliation after restore -- configuring passbook as default", v9, 2u);
    }

    sub_1003262E0();
  }
}

void sub_100279544(Swift::String *a1, char a2)
{
  countAndFlagsBits = a1[1]._countAndFlagsBits;
  if (countAndFlagsBits != 2 && countAndFlagsBits != 1)
  {
    __break(1u);
    goto LABEL_30;
  }

  v5 = TCCContext.DefaultAppCapableTCCService.fallbackTCCService.getter();
  if (v5 == 2)
  {
    v31 = 0u;
    v32 = 0u;
    v33 = 1;
    v6 = 0;
    goto LABEL_7;
  }

  if (v5)
  {
LABEL_30:
    _StringGuts.grow(_:)(37);

    *&v27 = 0xD000000000000023;
    *(&v27 + 1) = 0x8000000100469900;
    String.append(_:)(*a1);
    goto LABEL_31;
  }

  v31 = 0u;
  v32 = 0u;
  v33 = 1;
  v6 = 7;
LABEL_7:
  if (sub_100306124(v6, &v31, 0, 0))
  {
    TCCContext.DefaultAppCapableTCCService.fallbackTCCService.getter();
    v7 = a1->_countAndFlagsBits;
    object = a1->_object;
    v9 = TCCContext.checkTCCAccess(to:for:)();
    if (v9 < 2)
    {
      type metadata accessor for SECDefaultAppReconciler(0);
      v11 = a1[1]._object;
      v10 = a1[2]._countAndFlagsBits;

      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        *&v27 = v15;
        *v14 = 136315138;
        *(v14 + 4) = sub_1002FFA0C(v7, object, &v27);
        _os_log_impl(&_mh_execute_header, v12, v13, "Default app %s is granted for fallback TCC Service, pivoting", v14, 0xCu);
        sub_1000752F4(v15);
      }

      v16 = 1;
      if (countAndFlagsBits != 2)
      {
        v16 = 2;
      }

      *&v27 = v7;
      *(&v27 + 1) = object;
      v28 = v16;
      v29 = v11;
      v30 = v10;
      sub_10032743C(&v27);
      return;
    }

    if (v9 - 2 <= 1)
    {
      type metadata accessor for SECDefaultAppReconciler(0);
      v27 = *&a1[1]._object;

      sub_1000B6AF8(&v27, v26);
      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.info.getter();

      sub_1000B6B54(&v27);
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v26[0] = v24;
        *v23 = 136315138;
        *(v23 + 4) = sub_1002FFA0C(v7, object, v26);
        _os_log_impl(&_mh_execute_header, v21, v22, "Default app %s TCC denied/unknown for fallback TCC, overwriting passbook as default due to ineligibility", v23, 0xCu);
        sub_1000752F4(v24);
      }

      sub_1003262E0();
      return;
    }

LABEL_31:
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return;
  }

  type metadata accessor for SECDefaultAppReconciler(0);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.info.getter();
  v19 = os_log_type_enabled(v17, v18);
  if (a2)
  {
    if (v19)
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "Default app ineligible for both services, configuring Passbook as default due to ineligibility", v20, 2u);
    }

    sub_1003262E0();
  }

  else
  {
    if (v19)
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "Default app ineligible for both services, configuring None as default due to TCC revocation", v25, 2u);
    }

    sub_100327738();
  }
}

uint64_t type metadata accessor for SECDefaultAppReconciler(uint64_t a1)
{
  result = qword_100508BC0;
  if (!qword_100508BC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100279A78(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for Logger();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_100279B38(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for Logger();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100279BDC(uint64_t a1)
{
  result = type metadata accessor for TCCContext();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Logger();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_100279C60(uint64_t a1)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = v1;

  return _swift_task_switch(sub_100279CF0, 0, 0);
}

uint64_t sub_100279CF0()
{
  v161 = v0;
  v1 = sub_10013044C(0xD000000000000010, 0x80000001004619E0);
  if (v2 >> 60 == 15)
  {
    __break(1u);
  }

  v3 = *(v0 + 48);
  v4 = v1;
  v5 = v2;
  isa = Data._bridgeToObjectiveC()().super.isa;
  sub_10006A2D0(v4, v5);
  v7 = sub_1003AF1FC(v3, isa);

  if (v7)
  {
    v8 = type metadata accessor for SERXPCInternalErrors();
    sub_10027B2FC();
    swift_allocError();
    v10 = v9;
    v160[0] = 0;
    v160[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(23);
    *(v0 + 16) = 0;
    *(v0 + 24) = 0xE000000000000000;
    v11._countAndFlagsBits = 0xD000000000000014;
    v11._object = 0x8000000100469CB0;
    String.append(_:)(v11);
    *(v0 + 32) = v7;
    sub_100068FC4(&unk_100503F80, &qword_100409CF0);
    _print_unlocked<A, B>(_:_:)();
    v12._countAndFlagsBits = 46;
    v12._object = 0xE100000000000000;
    String.append(_:)(v12);
    v13 = *(v0 + 24);
    *v10 = *(v0 + 16);
    v10[1] = v13;
    (*(*(v8 - 8) + 104))(v10, enum case for SERXPCInternalErrors.resourceUnavailable(_:), v8);
    swift_willThrow();

LABEL_21:
    v41 = *(v0 + 8);

    return v41();
  }

  v14 = *(v0 + 48);
  v15 = sub_1002B3B94(&off_1004C4790);
  v17 = v16;
  v18 = Data._bridgeToObjectiveC()().super.isa;
  *(v0 + 16) = 0;
  v19 = sub_1003AEB5C(v14, v18, (v0 + 16));

  v20 = *(v0 + 16);
  if (!v19)
  {
    v38 = v20;
    _convertNSErrorToError(_:)();

    swift_willThrow();
LABEL_20:
    sub_10006A178(v15, v17);
    goto LABEL_21;
  }

  v21 = v20;
  v22 = sub_1003B0934(v19);
  v23 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v25 = v24;

  v26 = Data._bridgeToObjectiveC()().super.isa;
  sub_10006A178(v23, v25);
  v27 = [objc_opt_self() TLVWithData:v26];

  if (!v27)
  {
    goto LABEL_18;
  }

  if ([v27 tag] != 254)
  {

LABEL_18:
    v39 = type metadata accessor for SERXPCInternalErrors();
    sub_10027B2FC();
    swift_allocError();
    *v40 = 0xD000000000000026;
    v40[1] = 0x8000000100469930;
    (*(*(v39 - 8) + 104))(v40, enum case for SERXPCInternalErrors.formatError(_:), v39);
    swift_willThrow();
    goto LABEL_19;
  }

  v28 = [v27 childWithTag:57130];
  if (!v28)
  {
LABEL_15:
    v36 = type metadata accessor for SERXPCInternalErrors();
    sub_10027B2FC();
    swift_allocError();
    *v37 = 0xD000000000000033;
    v37[1] = 0x8000000100469960;
    (*(*(v36 - 8) + 104))(v37, enum case for SERXPCInternalErrors.formatError(_:), v36);
    swift_willThrow();

LABEL_19:
    goto LABEL_20;
  }

  v29 = v28;
  sub_10027AED0(0);
  if (v30 & 1) != 0 || (sub_10027AED0(1), (v31) || (v158 = sub_10027AED0(2), (v32) || (v156 = sub_10027AED0(3), (v33) || (v155 = sub_10027AED0(4), (v34) || (sub_10027AED0(5), (v35))
  {

    goto LABEL_15;
  }

  sub_10027AED0(12);
  if ((SEType.isEOS.getter() & 1) == 0)
  {
    goto LABEL_67;
  }

  result = sub_10013044C(0xD0000000000000DELL, 0x80000001004699A0);
  v135 = result;
  v136 = v43;
  if (v43 >> 60 == 15)
  {
    __break(1u);
    goto LABEL_78;
  }

  result = sub_10013044C(0xD0000000000000DELL, 0x8000000100469A80);
  v133 = result;
  v134 = v44;
  if (v44 >> 60 == 15)
  {
LABEL_78:
    __break(1u);
    goto LABEL_79;
  }

  result = sub_10013044C(0xD0000000000000DELL, 0x8000000100469B60);
  v131 = result;
  v132 = v45;
  if (v45 >> 60 == 15)
  {
LABEL_79:
    __break(1u);
    return result;
  }

  v152 = *(v0 + 48);
  v46 = sub_1003AF3C4(v152, v45);
  v47 = [v46 isProd];

  if (v47)
  {
    v48 = v135;
  }

  else
  {
    v48 = v133;
  }

  if (v47)
  {
    v49 = v136;
  }

  else
  {
    v49 = v134;
  }

  sub_100069E2C(v48, v49);
  v129 = v48;
  v130 = v49;
  v50 = Data._bridgeToObjectiveC()().super.isa;
  *(v0 + 16) = 0;
  v51 = sub_1003AEA90(v152, v50, 2, (v0 + 16));

  v52 = *(v0 + 16);
  v141 = v51;
  if (!v51)
  {
    v63 = v52;
    _convertNSErrorToError(_:)();

    swift_willThrow();
LABEL_63:

    return swift_unexpectedError();
  }

  v53 = qword_100501BD0;
  v54 = v52;
  if (v53 != -1)
  {
    swift_once();
  }

  v55 = type metadata accessor for Logger();
  sub_1000958E4(v55, qword_100508BF8);
  v56 = Logger.logObject.getter();
  v148 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v56, v148))
  {
    v145 = swift_slowAlloc();
    buf = swift_slowAlloc();
    v160[0] = buf;
    *v145 = 136315138;
    log = v56;
    v57 = sub_1003AAA78(v141);
    v127 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v142 = v58;

    *(v0 + 16) = sub_100288788(v127, v142);
    sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
    sub_10007A2D0();
    v59 = BidirectionalCollection<>.joined(separator:)();
    v61 = v60;
    sub_10006A178(v127, v142);

    v62 = sub_1002FFA0C(v59, v61, v160);

    *(v145 + 4) = v62;
    _os_log_impl(&_mh_execute_header, log, v148, "MemoryReserve from SYSTEM OS: %s", v145, 0xCu);
    sub_1000752F4(buf);
  }

  else
  {
  }

  if (sub_1003B0984(v141) != 27010)
  {
    goto LABEL_48;
  }

  v65 = sub_1003AF3C4(*(v0 + 48), v64);
  v66 = [v65 chipId];

  if (v66 != 56)
  {
    goto LABEL_48;
  }

  v67 = *(v0 + 48);
  v68 = Data._bridgeToObjectiveC()().super.isa;
  *(v0 + 16) = 0;
  v69 = sub_1003AEA90(v67, v68, 2, (v0 + 16));

  v70 = *(v0 + 16);
  if (!v69)
  {
    v82 = v70;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    goto LABEL_63;
  }

  v71 = v70;
  v72 = v69;

  v73 = v72;
  v74 = Logger.logObject.getter();
  LOBYTE(v72) = static os_log_type_t.default.getter();
  v141 = v73;

  v146 = v72;
  v149 = v74;
  if (os_log_type_enabled(v74, v72))
  {
    bufa = swift_slowAlloc();
    v143 = swift_slowAlloc();
    v160[0] = v143;
    *bufa = 136315138;
    v75 = sub_1003AAA78(v73);
    loga = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v77 = v76;

    *(v0 + 16) = sub_100288788(loga, v77);
    sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
    sub_10007A2D0();
    v78 = BidirectionalCollection<>.joined(separator:)();
    v80 = v79;
    sub_10006A178(loga, v77);

    v81 = sub_1002FFA0C(v78, v80, v160);

    *(bufa + 4) = v81;
    _os_log_impl(&_mh_execute_header, v149, v146, "MemoryReserve from SYSTEM OS (EOSV3): %s", bufa, 0xCu);
    sub_1000752F4(v143);
  }

  else
  {
  }

LABEL_48:
  v83 = sub_1003B0934(v141);
  v84 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v86 = v85;

  v144 = v84;
  v147 = v86;
  if ((sub_1002B3E60(&off_1004C47B8, v84, v86) & 1) == 0)
  {
    v103 = type metadata accessor for SERXPCInternalErrors();
    sub_10027B2FC();
    swift_allocError();
    *v104 = 0xD00000000000002BLL;
    v104[1] = 0x8000000100469C80;
    (*(*(v103 - 8) + 104))(v104, enum case for SERXPCInternalErrors.formatError(_:), v103);
    swift_willThrow();
    sub_10006A178(v15, v17);

    sub_10006A178(v84, v86);
    sub_10006A178(v129, v130);
    sub_10006A2D0(v131, v132);
    sub_10006A2D0(v133, v134);
    sub_10006A2D0(v135, v136);
    goto LABEL_21;
  }

  v87 = v86;
  v88 = 0;
  v89 = v84;
  do
  {
    sub_100069E2C(v89, v87);
    v150 = sub_100090214(v89, v87, v88 + 6, 1, 0);
    sub_10006A178(v89, v87);
    sub_100069E2C(v89, v87);
    v153 = v88;
    v92 = sub_100090214(v89, v87, v88 + 4, 1, 0);
    v93 = v87;
    v94 = v92;
    sub_10006A178(v89, v93);
    v95 = v94 << 9;
    if (v150 <= 0x500Fu)
    {
      v87 = v147;
      v96 = v88;
      if (!v150 || v150 == 20488)
      {
        goto LABEL_50;
      }
    }

    else
    {
      v87 = v147;
      v96 = v88;
      if (v150 == 20496 || v150 == 36872 || v150 == 36880)
      {
        goto LABEL_50;
      }
    }

    v97 = Logger.logObject.getter();
    v128 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v97, v128))
    {
      v126 = v97;
      v98 = swift_slowAlloc();
      v125 = swift_slowAlloc();
      v160[0] = v125;
      *v98 = 136315394;
      sub_100068FC4(&qword_100502440, &unk_10040B240);
      v99 = swift_allocObject();
      *(v99 + 16) = xmmword_1004098F0;
      *(v99 + 56) = &type metadata for UInt16;
      *(v99 + 64) = &protocol witness table for UInt16;
      *(v99 + 32) = v150;
      v100 = String.init(format:_:)();
      v102 = sub_1002FFA0C(v100, v101, v160);
      v96 = v153;

      *(v98 + 4) = v102;
      *(v98 + 12) = 2048;
      *(v98 + 14) = v95;
      _os_log_impl(&_mh_execute_header, v126, v128, "Unexpected rule of reserve item %s -> %ld, new item introduced? ", v98, 0x16u);
      sub_1000752F4(v125);
    }

    else
    {
    }

    v87 = v147;
LABEL_50:
    v90 = v96 + 4;
    v91 = v90 >= 0x40;
    v88 = v90;
    v89 = v144;
  }

  while (!v91);
  sub_10006A178(v144, v87);

  sub_10006A178(v129, v130);
  sub_10006A2D0(v131, v132);
  sub_10006A2D0(v133, v134);
  sub_10006A2D0(v135, v136);
LABEL_67:
  v105 = (v155 - v156);
  if (__OFSUB__(v155, v156))
  {
    __break(1u);
  }

  else
  {
    v106 = objc_allocWithZone(type metadata accessor for MemoryUsage());
    v158 = MemoryUsage.init(pHeap:cor:cod:usedIndices:)();
    v107 = objc_allocWithZone(type metadata accessor for SERMemoryInfo());
    v105 = SERMemoryInfo.init(availableIndices:totalIndices:availablePersistentExcludingIndex:availableCommonPoolPersistent:reservedFlashForSE:reservedFlashForEUICC:)();
    if (qword_100501BD0 == -1)
    {
      goto LABEL_69;
    }
  }

  swift_once();
LABEL_69:
  v108 = type metadata accessor for Logger();
  sub_1000958E4(v108, qword_100508BF8);
  v109 = v158;
  v110 = v105;
  v111 = Logger.logObject.getter();
  v112 = static os_log_type_t.default.getter();

  v157 = v109;
  v159 = v110;
  if (os_log_type_enabled(v111, v112))
  {
    v113 = swift_slowAlloc();
    v160[0] = swift_slowAlloc();
    *v113 = 136315394;
    v154 = v112;
    v114 = [v109 debugDescription];
    v151 = v111;
    v115 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v117 = v116;

    v118 = sub_1002FFA0C(v115, v117, v160);

    *(v113 + 4) = v118;
    *(v113 + 12) = 2080;
    v119 = [v159 description];
    v120 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v122 = v121;

    v123 = sub_1002FFA0C(v120, v122, v160);

    *(v113 + 14) = v123;
    v111 = v151;
    _os_log_impl(&_mh_execute_header, v151, v154, "freeMemory: %s\nMemoryInfo: %s", v113, 0x16u);
    swift_arrayDestroy();
  }

  sub_10006A178(v15, v17);

  v124 = *(v0 + 8);

  return v124(v157, v159);
}

id sub_10027AED0(char a1)
{
  v3 = [v1 value];
  if (v3)
  {
    v4 = v3;
    v5 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;

    v8.super.isa = Data._bridgeToObjectiveC()().super.isa;
    sub_10006A178(v5, v7);
  }

  else
  {
    v8.super.isa = 0;
  }

  v9 = [objc_opt_self() TLVWithTag:dword_1004139B8[a1] fromData:v8.super.isa];

  if (v9)
  {
    result = [v9 value];
    if (result)
    {
      v11 = result;
      v12 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v14 = v13;

      v23 = sub_1000939F8(v12, v14, 0, 0, 0);
      sub_10006A178(v12, v14);

      return v23;
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    if (qword_100501BD0 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_1000958E4(v15, qword_100508BF8);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v24 = v19;
      *v18 = 136315138;
      v20 = String.init<A>(describing:)();
      v22 = sub_1002FFA0C(v20, v21, &v24);

      *(v18 + 4) = v22;
      _os_log_impl(&_mh_execute_header, v16, v17, "Failed to parse Available Memory's child %s ", v18, 0xCu);
      sub_1000752F4(v19);
    }

    return 0;
  }

  return result;
}

Swift::Int sub_10027B16C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(dword_1004139B8[v1]);
  return Hasher._finalize()();
}

Swift::Int sub_10027B1F4()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(dword_1004139B8[v1]);
  return Hasher._finalize()();
}

uint64_t sub_10027B240@<X0>(unsigned int *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10027B4FC(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_10027B284(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for Logger();
  sub_1000B6A94(v2, qword_100508BF8);
  sub_1000958E4(v2, qword_100508BF8);
  String.init(cString:)();
  return Logger.init(subsystem:category:)();
}

unint64_t sub_10027B2FC()
{
  result = qword_100507080;
  if (!qword_100507080)
  {
    type metadata accessor for SERXPCInternalErrors();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100507080);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AvailableMemoryTag(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF4)
  {
    goto LABEL_17;
  }

  if (a2 + 12 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 12) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 12;
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

      return (*a1 | (v4 << 8)) - 12;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 12;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v8 = v6 - 13;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AvailableMemoryTag(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF4)
  {
    v4 = 0;
  }

  if (a2 > 0xF3)
  {
    v5 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
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
    *result = a2 + 12;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10027B4A8()
{
  result = qword_100508C10;
  if (!qword_100508C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100508C10);
  }

  return result;
}

uint64_t sub_10027B4FC(unsigned int a1)
{
  if (a1 > 0x11)
  {
    return 13;
  }

  else
  {
    return byte_1004139EC[a1];
  }
}

void *sub_10027B51C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  v2 = a1;
  sub_10019F464(0, v1, 0);
  v3 = v2 + 64;
  result = _HashTable.startBucket.getter();
  v5 = result;
  v6 = 0;
  v7 = *(v2 + 36);
  v32 = v2 + 72;
  v33 = v1;
  v34 = v7;
  v36 = v2 + 64;
  v35 = v2;
  while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(v2 + 32))
  {
    if ((*(v3 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
    {
      goto LABEL_22;
    }

    if (v7 != *(v2 + 36))
    {
      goto LABEL_23;
    }

    v38 = v5 >> 6;
    v37 = v6;
    v9 = (*(v2 + 48) + 16 * v5);
    v10 = *v9;
    v11 = v9[1];
    v41 = *v9;
    v12 = (*(v2 + 56) + 24 * v5);
    v13 = *v12;
    v14 = v12[1];
    v39 = *v12;
    sub_100068FC4(&unk_100507CD0, &unk_100414C50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100409900;
    *(inited + 32) = 0xD000000000000021;
    *(inited + 40) = 0x8000000100469D60;
    sub_100069E2C(v10, v11);
    v40 = v14;
    sub_100069E2C(v13, v14);
    sub_100288788(v10, v11);
    sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
    sub_10007A2D0();
    v16 = BidirectionalCollection<>.joined(separator:)();
    v18 = v17;

    *(inited + 48) = v16;
    *(inited + 56) = v18;
    *(inited + 64) = 0x44492079654BLL;
    *(inited + 72) = 0xE600000000000000;
    sub_100288788(v39, v14);
    v19 = BidirectionalCollection<>.joined(separator:)();
    v21 = v20;

    *(inited + 80) = v19;
    *(inited + 88) = v21;
    v22 = sub_1000910F0(inited);
    swift_setDeallocating();
    sub_100068FC4(&unk_100504020, &qword_100409CC0);
    swift_arrayDestroy();
    sub_10006A178(v41, v11);
    result = sub_10006A178(v39, v40);
    v24 = _swiftEmptyArrayStorage[2];
    v23 = _swiftEmptyArrayStorage[3];
    if (v24 >= v23 >> 1)
    {
      result = sub_10019F464((v23 > 1), v24 + 1, 1);
    }

    _swiftEmptyArrayStorage[2] = v24 + 1;
    _swiftEmptyArrayStorage[v24 + 4] = v22;
    v2 = v35;
    v8 = 1 << *(v35 + 32);
    v3 = v36;
    if (v5 >= v8)
    {
      goto LABEL_24;
    }

    v25 = *(v36 + 8 * v38);
    if ((v25 & (1 << v5)) == 0)
    {
      goto LABEL_25;
    }

    v7 = v34;
    if (v34 != *(v35 + 36))
    {
      goto LABEL_26;
    }

    v26 = v25 & (-2 << (v5 & 0x3F));
    if (v26)
    {
      v8 = __clz(__rbit64(v26)) | v5 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v27 = v38 << 6;
      v28 = v38 + 1;
      v29 = (v32 + 8 * v38);
      while (v28 < (v8 + 63) >> 6)
      {
        v31 = *v29++;
        v30 = v31;
        v27 += 64;
        ++v28;
        if (v31)
        {
          result = sub_1000937D4(v5, v34, 0);
          v8 = __clz(__rbit64(v30)) + v27;
          goto LABEL_4;
        }
      }

      result = sub_1000937D4(v5, v34, 0);
    }

LABEL_4:
    v6 = v37 + 1;
    v5 = v8;
    if (v37 + 1 == v33)
    {
      return _swiftEmptyArrayStorage;
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
LABEL_26:
  __break(1u);
  return result;
}

void sub_10027B91C()
{
  v1 = v0;
  v2 = *v0;
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v29[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v7 = qword_10051B7F0;
  *v6 = qword_10051B7F0;
  (*(v4 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v3);
  v8 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  (*(v4 + 8))(v6, v3);
  if ((v7 & 1) == 0)
  {
    __break(1u);
LABEL_14:
    swift_once();
LABEL_9:

    v15 = sub_10013044C(0xD000000000000012, 0x8000000100461630);
    if (v16 >> 60 == 15)
    {
      __break(1u);
    }

    else
    {
      v17 = v15;
      v18 = v16;
      sub_1001C1974(v6, v15, v16);
      sub_10006A2D0(v17, v18);

      v29[3] = v2;
      v29[4] = &off_1004CE8A0;
      v29[0] = v1;

      v19 = sub_10013044C(0xD000000000000012, 0x8000000100461630);
      if (v20 >> 60 != 15)
      {
        v21 = v19;
        v22 = v20;
        sub_1001BF594(v29, v19, v20);
        sub_10006A2D0(v21, v22);
        sub_1000752F4(v29);
        *(v1 + 16) = 1;
        v23 = sub_10013044C(0xD000000000000012, 0x8000000100461630);
        if (v24 >> 60 != 15)
        {
          v25 = v23;
          v26 = v24;

          v27 = sub_1001C1BA4(v25, v26);
          sub_10006A2D0(v25, v26);
          sub_10027CF30(v27);

          return;
        }

        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
    swift_unexpectedError();
    __break(1u);
    return;
  }

  if ((v1[2] & 1) == 0)
  {
    sub_100068FC4(&unk_100504720, &qword_100414C40);
    v6 = swift_allocObject();
    *(v6 + 1) = xmmword_100409A40;
    *(v6 + 4) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v6 + 5) = v12;
    *(v6 + 6) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v6 + 7) = v13;
    *(v6 + 8) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v6 + 9) = v14;
    if (qword_100501A58 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_14;
  }

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "LyonExpress is already running", v11, 2u);
  }
}

uint64_t sub_10027BD00(unint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = (&v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v10 = qword_10051B7F0;
  *v9 = qword_10051B7F0;
  (*(v7 + 104))(v9, enum case for DispatchPredicate.onQueue(_:), v6);
  v11 = v10;
  LOBYTE(v10) = _dispatchPreconditionTest(_:)();
  (*(v7 + 8))(v9, v6);
  if ((v10 & 1) == 0)
  {
    __break(1u);
LABEL_18:
    swift_once();
    goto LABEL_6;
  }

  if (*(v3 + 16) != 1)
  {
    v18 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v18, v17))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v18, v17, "LyonExpress is not running", v19, 2u);
    }

    goto LABEL_15;
  }

  if (qword_100501A58 != -1)
  {
    goto LABEL_18;
  }

LABEL_6:
  result = sub_10013044C(0xD000000000000012, 0x8000000100461630);
  if (v13 >> 60 != 15)
  {
    v14 = result;
    v15 = v13;
    v16 = sub_1001C2924(a1, a2, result, v13);
    sub_10006A2D0(v14, v15);
    if (v16)
    {
      v17 = sub_100280304(v16);

      return v17;
    }

    v20 = OBJC_IVAR____TtC10seserviced11LyonExpress_logger;
    sub_100069E2C(a1, a2);
    v17 = v3 + v20;
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();
    sub_10006A178(a1, a2);
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v30 = v24;
      *v23 = 136315138;
      v29 = sub_100288788(a1, a2);
      sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
      sub_10007A2D0();
      v17 = BidirectionalCollection<>.joined(separator:)();
      v26 = v25;

      v27 = sub_1002FFA0C(v17, v26, &v30);

      *(v23 + 4) = v27;
      _os_log_impl(&_mh_execute_header, v21, v22, "Configured items missing for key %s", v23, 0xCu);
      sub_1000752F4(v24);
    }

LABEL_15:
    sub_100079E24();
    swift_allocError();
    *v28 = 0;
    swift_willThrow();
    return v17;
  }

  __break(1u);
  return result;
}

uint64_t sub_10027C110(void *a1, unint64_t a2)
{
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = (&v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v9 = qword_10051B7F0;
  *v8 = qword_10051B7F0;
  (*(v6 + 104))(v8, enum case for DispatchPredicate.onQueue(_:), v5);
  v10 = v9;
  LOBYTE(v9) = _dispatchPreconditionTest(_:)();
  (*(v6 + 8))(v8, v5);
  if ((v9 & 1) == 0)
  {
    __break(1u);
LABEL_12:
    swift_once();
LABEL_6:
    result = sub_10013044C(0xD000000000000012, 0x8000000100461630);
    if (v12 >> 60 == 15)
    {
      __break(1u);
    }

    else
    {
      v13 = result;
      v14 = v12;
      v15 = sub_1001C1F18(a1, a2, result, v12);
      sub_10006A2D0(v13, v14);
      return v15;
    }

    return result;
  }

  if (*(v2 + 16) == 1)
  {
    if (qword_100501A58 == -1)
    {
      goto LABEL_6;
    }

    goto LABEL_12;
  }

  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&_mh_execute_header, v16, v17, "LyonExpress is not running", v18, 2u);
  }

  return 0;
}

uint64_t sub_10027C37C(unint64_t a1, unint64_t a2)
{
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = (v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v9 = qword_10051B7F0;
  *v8 = qword_10051B7F0;
  (*(v6 + 104))(v8, enum case for DispatchPredicate.onQueue(_:), v5);
  v10 = v9;
  LOBYTE(v9) = _dispatchPreconditionTest(_:)();
  result = (*(v6 + 8))(v8, v5);
  if (v9)
  {
    if (*(v2 + 16) == 1)
    {
      v12 = OBJC_IVAR____TtC10seserviced11LyonExpress_activeExpressEndpoints;
      swift_beginAccess();
      v13 = *(v2 + v12);
      if (*(v13 + 16))
      {
        v14 = sub_10008C8DC(a1, a2);
        if (v15)
        {
          v16 = (*(v13 + 56) + 24 * v14);
          v17 = *v16;
          v18 = v16[1];
          swift_endAccess();
          sub_100069E2C(v17, v18);
          return v17;
        }
      }

      swift_endAccess();
      sub_100069E2C(a1, a2);
      v22 = Logger.logObject.getter();
      v23 = static os_log_type_t.error.getter();
      sub_10006A178(a1, a2);
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v31[0] = v25;
        *v24 = 136315138;
        v30[1] = sub_100288788(a1, a2);
        sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
        sub_10007A2D0();
        v26 = BidirectionalCollection<>.joined(separator:)();
        v28 = v27;

        v29 = sub_1002FFA0C(v26, v28, v31);

        *(v24 + 4) = v29;
        _os_log_impl(&_mh_execute_header, v22, v23, "Invalid pass %s not an active express endpoint", v24, 0xCu);
        sub_1000752F4(v25);
      }
    }

    else
    {
      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        *v21 = 0;
        _os_log_impl(&_mh_execute_header, v19, v20, "LyonExpress is not running", v21, 2u);
      }
    }

    return 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_10027C718(unint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = (v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v10 = qword_10051B7F0;
  *v9 = qword_10051B7F0;
  (*(v7 + 104))(v9, enum case for DispatchPredicate.onQueue(_:), v6);
  v11 = v10;
  LOBYTE(v10) = _dispatchPreconditionTest(_:)();
  (*(v7 + 8))(v9, v6);
  if ((v10 & 1) == 0)
  {
    __break(1u);
LABEL_25:
    swift_once();
    goto LABEL_6;
  }

  if (*(v3 + 16) != 1)
  {
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v22, v23, "LyonExpress is not running", v24, 2u);
    }

    return 0;
  }

  if (qword_100501A58 != -1)
  {
    goto LABEL_25;
  }

LABEL_6:
  result = sub_10013044C(0xD000000000000012, 0x8000000100461630);
  if (v13 >> 60 != 15)
  {
    v14 = result;
    v15 = v13;
    v16 = sub_1001C2924(a1, a2, result, v13);
    sub_10006A2D0(v14, v15);
    if (!v16)
    {
      sub_100069E2C(a1, a2);
      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.error.getter();
      sub_10006A178(a1, a2);
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v38[0] = v28;
        *v27 = 136315138;
        v39 = sub_100288788(a1, a2);
        sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
        sub_10007A2D0();
        v29 = BidirectionalCollection<>.joined(separator:)();
        v31 = v30;

        v32 = sub_1002FFA0C(v29, v31, v38);

        *(v27 + 4) = v32;
        v33 = "Configured items missing for key %s";
LABEL_21:
        _os_log_impl(&_mh_execute_header, v25, v26, v33, v27, 0xCu);
        sub_1000752F4(v28);
      }

LABEL_22:

      return 0;
    }

    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    if (*(v16 + 16))
    {
      v19 = sub_10008C908(v17, v18);
      v21 = v20;

      if (v21)
      {
        sub_1000754F0(*(v16 + 56) + 32 * v19, v38);

        sub_100068FC4(&qword_100502458, &qword_10040C1F0);
        if (swift_dynamicCast())
        {
          return v39;
        }

LABEL_19:
        sub_100069E2C(a1, a2);
        v25 = Logger.logObject.getter();
        v26 = static os_log_type_t.error.getter();
        sub_10006A178(a1, a2);
        if (os_log_type_enabled(v25, v26))
        {
          v27 = swift_slowAlloc();
          v28 = swift_slowAlloc();
          v38[0] = v28;
          *v27 = 136315138;
          v39 = sub_100288788(a1, a2);
          sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
          sub_10007A2D0();
          v34 = BidirectionalCollection<>.joined(separator:)();
          v36 = v35;

          v37 = sub_1002FFA0C(v34, v36, v38);

          *(v27 + 4) = v37;
          v33 = "GRKs missing for %s";
          goto LABEL_21;
        }

        goto LABEL_22;
      }
    }

    else
    {
    }

    goto LABEL_19;
  }

  __break(1u);
  return result;
}

uint64_t sub_10027CC74()
{
  type metadata accessor for LyonExpress(0);
  swift_allocObject();
  result = sub_10027CCB4();
  qword_10051B690 = result;
  return result;
}

uint64_t sub_10027CCB4()
{
  *(v0 + 16) = 0;
  String.init(cString:)();
  Logger.init(subsystem:category:)();
  v1 = OBJC_IVAR____TtC10seserviced11LyonExpress_activeExpressEndpoints;
  *(v0 + v1) = sub_100091354(_swiftEmptyArrayStorage);
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v4[4] = sub_100280E48;
  v4[5] = v0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 1107296256;
  v4[2] = sub_100193978;
  v4[3] = &unk_1004CE8B0;
  v2 = _Block_copy(v4);

  os_state_add_handler();
  _Block_release(v2);
  return v0;
}

_DWORD *sub_10027CE00()
{
  swift_beginAccess();

  v1 = sub_10027B51C(v0);

  v8 = sub_100068FC4(&unk_100504010, &unk_100409CB0);
  *&v7 = v1;
  sub_100075D50(&v7, v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_100315178(v6, 0xD000000000000016, 0x8000000100469D20, isUniquelyReferenced_nonNull_native);
  sub_1001950D4(_swiftEmptyDictionarySingleton);

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v4 = sub_100015DA0("lyonexpress.state", isa);

  return v4;
}

void sub_10027CF30(char *a1)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v183 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v183 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100501D90 != -1)
  {
    goto LABEL_216;
  }

  while (1)
  {
    v12 = qword_10051B7F0;
    *v11 = qword_10051B7F0;
    v13 = *(v9 + 104);
    LODWORD(v207) = enum case for DispatchPredicate.onQueue(_:);
    *&v206 = v9 + 104;
    *&v205 = v13;
    v13(v11);
    v203 = v12;
    LOBYTE(v12) = _dispatchPreconditionTest(_:)();
    v14 = *(v9 + 8);
    v9 += 8;
    v202 = v14;
    (v14)(v11, v8);
    if ((v12 & 1) == 0)
    {
      __break(1u);
LABEL_218:
      swift_once();
      goto LABEL_7;
    }

    v2 = OBJC_IVAR____TtC10seserviced11LyonExpress_logger;
    if (*(v1 + 16) != 1)
    {
      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = 0;
        _os_log_impl(&_mh_execute_header, v27, v28, "LyonExpress is not running", v29, 2u);
      }

      return;
    }

    v201 = v4;

    v204 = v1;
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.info.getter();

    v17 = os_log_type_enabled(v15, v16);
    v209 = a1;
    v200 = v7;
    v199 = v8;
    if (v17)
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v216 = v19;
      *v18 = 136315138;
      v20 = sub_1001C337C();
      v22 = sub_1002FFA0C(v20, v21, &v216);

      *(v18 + 4) = v22;
      _os_log_impl(&_mh_execute_header, v15, v16, "%s", v18, 0xCu);
      sub_1000752F4(v19);
    }

    if (qword_100501D78 != -1)
    {
      goto LABEL_218;
    }

LABEL_7:
    v1 = off_10050B110;
    v23 = sub_1000CAAC4();
    a1 = v209;
    v24 = v23 & 0xC000000000000001;
    v193 = v209[16];
    v196 = v2;
    v194 = v23;
    if (v193 != 2)
    {
      break;
    }

    if (v24)
    {

      __CocoaSet.makeIterator()();
      v1 = type metadata accessor for Peer(0);
      sub_10025D554(&qword_100503F20, type metadata accessor for Peer, &unk_1004109B0);
      Set.Iterator.init(_cocoa:)();
      v9 = v216;
      v4 = v217;
      v26 = v218;
      v7 = v219;
      v2 = v220;
    }

    else
    {
      v33 = -1 << *(v23 + 32);
      v4 = v23 + 56;
      v26 = ~v33;
      v34 = -v33;
      if (v34 < 64)
      {
        v35 = ~(-1 << v34);
      }

      else
      {
        v35 = -1;
      }

      v2 = v35 & *(v23 + 56);

      v7 = 0;
    }

    v8 = (v26 + 64) >> 6;
    v207 = (v5 + 16);
    v208 = v26;
    *&v206 = v5 + 8;
    *&v25 = 136315138;
    v205 = v25;
    while (v9 < 0)
    {
      v1 = v9 & 0x7FFFFFFFFFFFFFFFLL;
      v40 = __CocoaSet.Iterator.next()();
      if (!v40 || (v212 = v40, type metadata accessor for Peer(0), swift_dynamicCast(), v39 = v215[0], v11 = v7, v5 = v2, !v215[0]))
      {
LABEL_38:
        sub_100093854(v9);
        goto LABEL_78;
      }

LABEL_34:
      if (*v39 == _TtC10seserviced8LyonPeer && *(v39 + OBJC_IVAR____TtC10seserviced8LyonPeer_sessionState) != 1)
      {

        v41 = Logger.logObject.getter();
        v42 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v41, v42))
        {
          v43 = swift_slowAlloc();
          v199 = v43;
          v203 = swift_slowAlloc();
          v215[0] = v203;
          *v43 = v205;
          isa = v207->isa;
          v202 = v41;
          v45 = v200;
          v46 = v201;
          isa(v200, v39 + OBJC_IVAR____TtC10seserviced4Peer_clientIdentifier, v201);
          sub_10025D554(&qword_100504C70, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
          v47 = dispatch thunk of CustomStringConvertible.description.getter();
          LODWORD(v198) = v42;
          v48 = v47;
          v50 = v49;
          (*v206)(v45, v46);
          v51 = sub_1002FFA0C(v48, v50, v215);
          a1 = v209;

          v52 = v199;
          *(v199 + 4) = v51;
          v53 = v202;
          _os_log_impl(&_mh_execute_header, v202, v198, "Disconnecting %s due to biolockout", v52, 0xCu);
          sub_1000752F4(v203);
        }

        else
        {
        }

        v36 = *(v39 + OBJC_IVAR____TtC10seserviced8LyonPeer_analyticsData);
        *(v36 + 84) = 3;
        *(v36 + 88) = 0;
        if (qword_1005018F8 != -1)
        {
          swift_once();
        }

        v1 = qword_10051B188;
        sub_100080E48(v39, 0);
      }

      v7 = v11;
      v2 = v5;
    }

    v37 = v7;
    v38 = v2;
    v11 = v7;
    if (v2)
    {
LABEL_30:
      v5 = (v38 - 1) & v38;
      v39 = *(*(v9 + 48) + ((v11 << 9) | (8 * __clz(__rbit64(v38)))));

      if (!v39)
      {
        goto LABEL_38;
      }

      goto LABEL_34;
    }

    while (1)
    {
      v11 = v37 + 1;
      if (__OFADD__(v37, 1))
      {
        break;
      }

      if (v11 >= v8)
      {
        goto LABEL_38;
      }

      v38 = *(v4 + 8 * v11);
      ++v37;
      if (v38)
      {
        goto LABEL_30;
      }
    }

LABEL_207:
    __break(1u);
LABEL_208:
    __break(1u);
LABEL_209:
    __break(1u);
LABEL_210:
    __break(1u);
LABEL_211:
    __break(1u);
LABEL_212:
    __break(1u);
LABEL_213:
    __break(1u);
LABEL_214:
    __break(1u);
LABEL_215:
    __break(1u);
LABEL_216:
    swift_once();
  }

  if (v24)
  {

    __CocoaSet.makeIterator()();
    type metadata accessor for Peer(0);
    sub_10025D554(&qword_100503F20, type metadata accessor for Peer, &unk_1004109B0);
    Set.Iterator.init(_cocoa:)();
    v4 = v217;
    v208 = v216;
    v31 = v218;
    v7 = v219;
    v32 = v220;
  }

  else
  {
    v54 = -1 << *(v23 + 32);
    v4 = v23 + 56;
    v31 = ~v54;
    v55 = -v54;
    if (v55 < 64)
    {
      v56 = ~(-1 << v55);
    }

    else
    {
      v56 = -1;
    }

    v32 = v56 & *(v23 + 56);
    v7 = 0;
  }

  v195 = v31;
  a1 = ((v31 + 64) >> 6);
  v191 = v5 + 16;
  v190 = (v5 + 8);
  *&v30 = 136315138;
  v189 = v30;
  v1 = v208;
  while (v1 < 0)
  {
    v62 = __CocoaSet.Iterator.next()();
    if (!v62)
    {
      v1 = v208;
      goto LABEL_77;
    }

    v212 = v62;
    type metadata accessor for Peer(0);
    swift_dynamicCast();
    v5 = v215[0];
    v8 = v7;
    v2 = v32;
    v1 = v208;
    if (!v215[0])
    {
      goto LABEL_77;
    }

LABEL_59:
    if (*v5 == _TtC10seserviced8LyonPeer)
    {
      v63 = (v5 + OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier);
      v57 = *(v5 + OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier + 8);
      if (v57 >> 60 != 15)
      {
        v198 = v2;
        v64 = v9;
        v65 = *v63;
        v66 = *(v209 + 3);
        sub_100069E2C(*v63, v57);
        v197 = v65;
        v67 = v65;
        v9 = v64;
        if ((sub_1000C66AC(v67, v57, v66) & 1) == 0)
        {

          v68 = Logger.logObject.getter();
          v69 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v68, v69))
          {
            v70 = swift_slowAlloc();
            v187 = v70;
            v188 = swift_slowAlloc();
            v215[0] = v188;
            *v70 = v189;
            v71 = *v191;
            v72 = v200;
            LODWORD(v186) = v69;
            v73 = v201;
            (v71)(v200, v5 + OBJC_IVAR____TtC10seserviced4Peer_clientIdentifier, v201);
            sub_10025D554(&qword_100504C70, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
            v185 = dispatch thunk of CustomStringConvertible.description.getter();
            *&v192 = v57;
            v75 = v74;
            (v190->isa)(v72, v73);
            v76 = sub_1002FFA0C(v185, v75, v215);
            v57 = v192;

            v77 = v187;
            *(v187 + 1) = v76;
            _os_log_impl(&_mh_execute_header, v68, v186, "Disconnecting %s because it is no longer an express key", v77, 0xCu);
            sub_1000752F4(v188);
          }

          if (qword_1005018F8 != -1)
          {
            swift_once();
          }

          sub_100080E48(v5, 256);
          v1 = v208;
        }

        v2 = v198;
        if (*(v5 + OBJC_IVAR____TtC10seserviced8LyonPeer_sessionState) == 1)
        {
          *&v192 = v57;
          if (qword_100501950 != -1)
          {
            swift_once();
          }

          v78 = qword_10051B268;
          v79 = v203;
          *v11 = v203;
          v80 = v199;
          (v205)(v11, v207, v199);
          v81 = v79;
          LOBYTE(v79) = _dispatchPreconditionTest(_:)();
          (v202)(v11, v80);
          if ((v79 & 1) == 0)
          {
            goto LABEL_226;
          }

          if (*(v78 + 16) == 1)
          {
            v57 = v192;
            if (qword_100501960 != -1)
            {
              swift_once();
            }

            v82 = qword_10051B288;

            sub_10011333C(v5, v82, v5, v78);
          }

          else
          {
            v83 = Logger.logObject.getter();
            v84 = static os_log_type_t.error.getter();
            if (os_log_type_enabled(v83, v84))
            {
              v85 = swift_slowAlloc();
              *v85 = 0;
              _os_log_impl(&_mh_execute_header, v83, v84, "Not running", v85, 2u);
            }

            v57 = v192;
          }

          if (qword_1005018E8 != -1)
          {
            swift_once();
          }

          v58 = *(qword_10051B168 + OBJC_IVAR____TtC10seserviced6LyonSE_urskSlotManager);
          v59 = qword_10051B168;
          sub_1000757C8(v5, v58, v59);

          v1 = v208;
        }

        sub_10006A2D0(v197, v57);
      }
    }

    v7 = v8;
    v32 = v2;
  }

  v60 = v7;
  v61 = v32;
  v8 = v7;
  if (v32)
  {
LABEL_55:
    v2 = (v61 - 1) & v61;
    v5 = *(*(v1 + 48) + ((v8 << 9) | (8 * __clz(__rbit64(v61)))));

    if (!v5)
    {
      goto LABEL_77;
    }

    goto LABEL_59;
  }

  while (1)
  {
    v8 = v60 + 1;
    if (__OFADD__(v60, 1))
    {
      goto LABEL_208;
    }

    if (v8 >= a1)
    {
      break;
    }

    v61 = *(v4 + 8 * v8);
    ++v60;
    if (v61)
    {
      goto LABEL_55;
    }
  }

LABEL_77:
  sub_100093854(v1);
  a1 = v209;
LABEL_78:
  v5 = _swiftEmptyArrayStorage;
  v86 = sub_100091354(_swiftEmptyArrayStorage);
  v87 = OBJC_IVAR____TtC10seserviced11LyonExpress_activeExpressEndpoints;
  v8 = v204;
  swift_beginAccess();
  v195 = v87;
  *(v8 + v87) = v86;

  v2 = *(a1 + 3);
  v4 = v2 + 56;
  v88 = 1 << *(v2 + 32);
  v89 = -1;
  if (v88 < 64)
  {
    v89 = ~(-1 << v88);
  }

  v1 = v89 & *(v2 + 56);
  v90 = (v88 + 63) >> 6;
  v201 = "Update Aliro Versions";

  v7 = 0;
  *&v91 = 136315138;
  v192 = v91;
  v206 = xmmword_1004098F0;
  v209 = _swiftEmptyArrayStorage;
  a1 = v196;
  v202 = (v2 + 56);
  v200 = v90;
  if (!v1)
  {
    goto LABEL_81;
  }

LABEL_85:
  while (2)
  {
    v93 = (*(v2 + 48) + ((v7 << 10) | (16 * __clz(__rbit64(v1)))));
    v9 = *v93;
    v11 = v93[1];
    sub_100069E2C(*v93, v11);
    if (qword_100501A58 != -1)
    {
      swift_once();
    }

    v94 = sub_10013044C(0xD000000000000012, v201 | 0x8000000000000000);
    if (v95 >> 60 == 15)
    {
      goto LABEL_238;
    }

    v96 = v94;
    v97 = v95;
    v5 = (v1 - 1) & v1;
    v203 = v5;
    v98 = sub_1001C2924(v9, v11, v94, v95);
    sub_10006A2D0(v96, v97);
    v207 = v11;
    v208 = v9;
    if (!v98)
    {
      sub_100069E2C(v9, v11);
      v8 = v204;
      v105 = Logger.logObject.getter();
      v106 = static os_log_type_t.error.getter();
      sub_10006A178(v9, v11);
      if (!os_log_type_enabled(v105, v106))
      {

        v109 = v9;
        goto LABEL_101;
      }

      v5 = swift_slowAlloc();
      v107 = swift_slowAlloc();
      v211[0] = v107;
      *v5 = v192;
      v108 = v11 >> 62;
      v4 = v202;
      v191 = v105;
      LODWORD(v190) = v106;
      *&v189 = v5;
      v188 = v107;
      if ((v11 >> 62) > 1)
      {
        if (v108 != 2)
        {
          v113 = _swiftEmptyArrayStorage;
          goto LABEL_141;
        }

        v187 = v2;
        v111 = *(v9 + 16);
        v110 = *(v9 + 24);
        v2 = v110 - v111;
        if (__OFSUB__(v110, v111))
        {
LABEL_229:
          __break(1u);
          goto LABEL_230;
        }

        if (!v2)
        {
LABEL_113:
          v113 = _swiftEmptyArrayStorage;
          a1 = v196;
          v2 = v187;
LABEL_141:
          v212 = v113;
          sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
          sub_10007A2D0();
          v125 = BidirectionalCollection<>.joined(separator:)();
          v127 = v126;

          v128 = sub_1002FFA0C(v125, v127, v211);

          v129 = v189;
          *(v189 + 4) = v128;
          v130 = v191;
          _os_log_impl(&_mh_execute_header, v191, v190, "Configured items missing for key %s", v129, 0xCu);
          v5 = v188;
          sub_1000752F4(v188);

          sub_10006A178(v9, v11);

          v8 = v204;
          goto LABEL_103;
        }
      }

      else
      {
        v187 = v2;
        if (v108)
        {
          v114 = HIDWORD(v9) - v9;
          if (__OFSUB__(HIDWORD(v9), v9))
          {
LABEL_230:
            __break(1u);
LABEL_231:
            __break(1u);
LABEL_232:
            __break(1u);
LABEL_233:
            __break(1u);
LABEL_234:
            __break(1u);
LABEL_235:
            __break(1u);
LABEL_236:
            __break(1u);
LABEL_237:
            __break(1u);
LABEL_238:
            __break(1u);
LABEL_239:
            __break(1u);
LABEL_240:
            __break(1u);
LABEL_241:
            __break(1u);
            goto LABEL_242;
          }

          v2 = v114;
          if (!v114)
          {
            goto LABEL_113;
          }
        }

        else
        {
          v2 = BYTE6(v11);
          if (!BYTE6(v11))
          {
            goto LABEL_113;
          }
        }
      }

      v210 = _swiftEmptyArrayStorage;
      v8 = v2 & ~(v2 >> 63);
      v1 = &v210;
      *&v205 = v11 >> 62;
      sub_10019F3C0(0, v8, 0);
      v112 = v205;
      v113 = v210;
      if (v205 == 2)
      {
        v4 = *(v9 + 16);
      }

      else
      {
        if (v205 != 1)
        {
          if (v2 < 0)
          {
            goto LABEL_231;
          }

          v4 = 0;
LABEL_120:
          v199 = v9;
          v197 = v9 >> 32;
          v198 = BYTE6(v11);
          while (1)
          {
            if (!v8)
            {
              goto LABEL_209;
            }

            if (v112 == 2)
            {
              if (v4 < *(v9 + 16))
              {
                goto LABEL_210;
              }

              if (v4 >= *(v9 + 24))
              {
                goto LABEL_213;
              }

              v118 = __DataStorage._bytes.getter();
              if (!v118)
              {
                goto LABEL_240;
              }

              v9 = v118;
              v1 = v11 & 0x3FFFFFFFFFFFFFFFLL;
              v119 = __DataStorage._offset.getter();
              v117 = v4 - v119;
              if (__OFSUB__(v4, v119))
              {
                goto LABEL_215;
              }
            }

            else
            {
              if (v112 != 1)
              {
                if (v4 >= v198)
                {
                  goto LABEL_211;
                }

                v212 = v9;
                LOWORD(v213) = v11;
                BYTE2(v213) = BYTE2(v11);
                HIBYTE(v213) = BYTE3(v11);
                LOBYTE(v214) = BYTE4(v11);
                HIBYTE(v214) = BYTE5(v11);
                v1 = *(&v212 + v4);
                goto LABEL_137;
              }

              if (v4 < v199 || v4 >= v197)
              {
                goto LABEL_212;
              }

              v115 = __DataStorage._bytes.getter();
              if (!v115)
              {
                goto LABEL_239;
              }

              v9 = v115;
              v1 = v11 & 0x3FFFFFFFFFFFFFFFLL;
              v116 = __DataStorage._offset.getter();
              v117 = v4 - v116;
              if (__OFSUB__(v4, v116))
              {
                goto LABEL_214;
              }
            }

            v1 = *(v9 + v117);
LABEL_137:
            sub_100068FC4(&qword_100502440, &unk_10040B240);
            v120 = swift_allocObject();
            *(v120 + 16) = v206;
            *(v120 + 56) = &type metadata for UInt8;
            *(v120 + 64) = &protocol witness table for UInt8;
            *(v120 + 32) = v1;
            a1 = String.init(format:_:)();
            v122 = v121;
            v210 = v113;
            v5 = v113[2];
            v123 = v113[3];
            if (v5 >= v123 >> 1)
            {
              v1 = &v210;
              sub_10019F3C0((v123 > 1), v5 + 1, 1);
              v113 = v210;
            }

            v113[2] = v5 + 1;
            v124 = &v113[2 * v5];
            v124[4] = a1;
            v124[5] = v122;
            ++v4;
            --v8;
            --v2;
            v11 = v207;
            v9 = v208;
            v112 = v205;
            if (!v2)
            {
              a1 = v196;
              v2 = v187;
              v4 = v202;
              goto LABEL_141;
            }
          }
        }

        v4 = v9;
      }

      if (v2 < 0)
      {
LABEL_227:
        __break(1u);
LABEL_228:
        __break(1u);
        goto LABEL_229;
      }

      goto LABEL_120;
    }

    v99 = swift_allocObject();
    *(v99 + 16) = v9;
    *(v99 + 24) = v11;
    sub_100069E2C(v9, v11);
    if (qword_1005019E8 != -1)
    {
      swift_once();
    }

    v100 = swift_allocObject();
    *(v100 + 16) = sub_10023F790;
    *(v100 + 24) = v99;

    v101 = sub_1000CAA04();

    v9 = sub_1000CA810(v101);

    if (!v9)
    {

      v8 = v204;
      v102 = Logger.logObject.getter();
      v103 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v102, v103))
      {
        v104 = swift_slowAlloc();
        *v104 = 0;
        _os_log_impl(&_mh_execute_header, v102, v103, "Failed to retrieve endpoint", v104, 2u);
      }

      sub_10006A178(v208, v11);

      goto LABEL_102;
    }

    v131 = [v9 homeUUIDString];
    if (v131)
    {
      v132 = v131;
      v133 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v135 = v134;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v209 = sub_10012EA44(0, *(v209 + 2) + 1, 1, v209);
      }

      v5 = *(v209 + 2);
      v136 = *(v209 + 3);
      if (v5 >= v136 >> 1)
      {
        v209 = sub_10012EA44((v136 > 1), v5 + 1, 1, v209);
      }

      v137 = v209;
      *(v209 + 2) = v5 + 1;
      v138 = &v137[16 * v5];
      *(v138 + 4) = v133;
      *(v138 + 5) = v135;
      v8 = v204;
      goto LABEL_193;
    }

    v139 = v208;
    sub_100069E2C(v208, v11);
    v8 = v204;
    v5 = Logger.logObject.getter();
    v140 = static os_log_type_t.default.getter();
    sub_10006A178(v139, v11);
    if (!os_log_type_enabled(v5, v140))
    {
      goto LABEL_192;
    }

    v190 = v5;
    v141 = swift_slowAlloc();
    v142 = swift_slowAlloc();
    v211[0] = v142;
    v188 = v141;
    *v141 = v192;
    v143 = v11 >> 62;
    v199 = HIDWORD(v139);
    LODWORD(v189) = v140;
    v186 = v142;
    if ((v11 >> 62) <= 1)
    {
      if (!v143)
      {
        v144 = BYTE6(v11);
        goto LABEL_158;
      }

      if (!__OFSUB__(v199, v208))
      {
        v144 = v199 - v208;
        goto LABEL_158;
      }

LABEL_243:
      __break(1u);
    }

    if (v143 != 2)
    {
      v149 = _swiftEmptyArrayStorage;
      goto LABEL_191;
    }

    v146 = *(v208 + 16);
    v145 = *(v208 + 24);
    v144 = v145 - v146;
    if (__OFSUB__(v145, v146))
    {
LABEL_242:
      __break(1u);
      goto LABEL_243;
    }

LABEL_158:
    if (!v144)
    {
      v149 = _swiftEmptyArrayStorage;
      goto LABEL_190;
    }

    v210 = _swiftEmptyArrayStorage;
    v147 = v144 & ~(v144 >> 63);
    *&v205 = v143;
    sub_10019F3C0(0, v147, 0);
    v148 = v205;
    v149 = v210;
    v198 = v208;
    v187 = v2;
    if (v205 == 2)
    {
      v150 = *(v208 + 16);
LABEL_165:
      if ((v144 & 0x8000000000000000) == 0)
      {
        goto LABEL_169;
      }

      goto LABEL_241;
    }

    if (v205 == 1)
    {
      v150 = v198;
      goto LABEL_165;
    }

    if (v144 < 0)
    {
      __break(1u);
LABEL_245:
      __break(1u);
LABEL_246:
      __break(1u);
      return;
    }

    v150 = 0;
LABEL_169:
    v191 = v208 >> 32;
    v197 = BYTE6(v207);
    while (2)
    {
      if (!v147)
      {
        goto LABEL_228;
      }

      if (v148 == 2)
      {
        if (v150 < *(v208 + 16))
        {
          goto LABEL_233;
        }

        if (v150 >= *(v208 + 24))
        {
          goto LABEL_236;
        }

        v155 = __DataStorage._bytes.getter();
        if (!v155)
        {
          goto LABEL_246;
        }

        v152 = v155;
        v156 = __DataStorage._offset.getter();
        v154 = v150 - v156;
        if (__OFSUB__(v150, v156))
        {
          goto LABEL_237;
        }

LABEL_183:
        v157 = *(v152 + v154);
      }

      else
      {
        if (v148 == 1)
        {
          if (v150 < v198 || v150 >= v191)
          {
            goto LABEL_232;
          }

          v151 = __DataStorage._bytes.getter();
          if (!v151)
          {
            goto LABEL_245;
          }

          v152 = v151;
          v153 = __DataStorage._offset.getter();
          v154 = v150 - v153;
          if (__OFSUB__(v150, v153))
          {
            goto LABEL_235;
          }

          goto LABEL_183;
        }

        if (v150 >= v197)
        {
          goto LABEL_234;
        }

        LODWORD(v212) = v208;
        BYTE4(v212) = v199;
        *(&v212 + 5) = *(&v208 + 5);
        HIBYTE(v212) = HIBYTE(v208);
        v213 = v207;
        v214 = WORD2(v207);
        v157 = *(&v212 + v150);
      }

      sub_100068FC4(&qword_100502440, &unk_10040B240);
      v158 = swift_allocObject();
      *(v158 + 16) = v206;
      *(v158 + 56) = &type metadata for UInt8;
      *(v158 + 64) = &protocol witness table for UInt8;
      *(v158 + 32) = v157;
      v159 = String.init(format:_:)();
      v210 = v149;
      v162 = v149[2];
      v161 = v149[3];
      if (v162 >= v161 >> 1)
      {
        v185 = v159;
        v184 = v160;
        sub_10019F3C0((v161 > 1), v162 + 1, 1);
        v160 = v184;
        v159 = v185;
        v149 = v210;
      }

      v149[2] = v162 + 1;
      v163 = &v149[2 * v162];
      v163[4] = v159;
      v163[5] = v160;
      ++v150;
      --v147;
      --v144;
      v8 = v204;
      v148 = v205;
      if (v144)
      {
        continue;
      }

      break;
    }

    a1 = v196;
    v2 = v187;
LABEL_190:
    v11 = v207;
LABEL_191:
    v212 = v149;
    sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
    sub_10007A2D0();
    v164 = BidirectionalCollection<>.joined(separator:)();
    v166 = v165;

    v167 = sub_1002FFA0C(v164, v166, v211);

    v168 = v188;
    *(v188 + 4) = v167;
    v5 = v190;
    _os_log_impl(&_mh_execute_header, v190, v189, "%s has no home UUID set", v168, 0xCu);
    sub_1000752F4(v186);

LABEL_192:

LABEL_193:
    v169 = v195;
    swift_beginAccess();
    v170 = (v8 + v169);
    v171 = v208;
    sub_10027EEE8(v170, v98, v208, v11);
    swift_endAccess();

    v109 = v171;
LABEL_101:
    sub_10006A178(v109, v11);
LABEL_102:
    v4 = v202;
LABEL_103:
    v90 = v200;
    v1 = v203;
    if (v203)
    {
      continue;
    }

    break;
  }

LABEL_81:
  while (2)
  {
    v92 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
      goto LABEL_207;
    }

    if (v92 < v90)
    {
      v1 = *(v4 + 8 * v92);
      ++v7;
      if (!v1)
      {
        continue;
      }

      v7 = v92;
      goto LABEL_85;
    }

    break;
  }

  if (qword_100501B00 != -1)
  {
    swift_once();
  }

  v172 = qword_10051B4D0;
  v173 = OBJC_IVAR____TtC10seserviced21LyonGeofenceException_homeDelegates;
  swift_beginAccess();
  v208 = v172;
  v174 = *(v172 + v173);
  v175 = v195;
  if (v174 >> 62)
  {
    v176 = _CocoaArrayWrapper.endIndex.getter();
    if (!v176)
    {
      goto LABEL_220;
    }

LABEL_198:
    if (v176 >= 1)
    {

      v177 = 0;
      do
      {
        if ((v174 & 0xC000000000000001) != 0)
        {
          v178 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v178 = *(v174 + 8 * v177 + 32);
        }

        v179 = v178;
        ++v177;
        v180 = *&v178[OBJC_IVAR____TtC10seserviced16LyonHomeDelegate_homeUUID + 8];
        v211[0] = *&v178[OBJC_IVAR____TtC10seserviced16LyonHomeDelegate_homeUUID];
        v211[1] = v180;
        __chkstk_darwin(v178);
        *(&v183 - 2) = v211;

        v181 = sub_1002F784C(sub_10012E558, (&v183 - 4), v209);

        v179[OBJC_IVAR____TtC10seserviced16LyonHomeDelegate_isExpress] = v181 & 1;
      }

      while (v176 != v177);

      v8 = v204;
      v175 = v195;
      goto LABEL_220;
    }

    __break(1u);
LABEL_226:
    __break(1u);
    goto LABEL_227;
  }

  v176 = *((v174 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v176)
  {
    goto LABEL_198;
  }

LABEL_220:

  sub_1001DD3DC();
  if (qword_100501BF0 != -1)
  {
    swift_once();
  }

  sub_1002A24A4(v193 == 2, 2, 2, *(*(v8 + v175) + 16) != 0, 0, 2);
  if (qword_100501B58 != -1)
  {
    swift_once();
  }

  v182 = sub_1000E39D0();
  sub_10022C6BC(v182);
}

void sub_10027EEE8(uint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(a2 + 16))
  {

LABEL_8:
    v15 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v15, v20))
    {
LABEL_11:

      return;
    }

    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v131 = v22;
    *v21 = 136315138;
    v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = sub_1002FFA0C(v23, v24, &v131);

    *(v21 + 4) = v25;
    _os_log_impl(&_mh_execute_header, v15, v20, "Primary reader identifier with key: %s expected to be a string", v21, 0xCu);
    sub_1000752F4(v22);

LABEL_10:

    goto LABEL_11;
  }

  v10 = sub_10008C908(v8, v9);
  v12 = v11;

  if ((v12 & 1) == 0)
  {
    goto LABEL_8;
  }

  sub_1000754F0(*(a2 + 56) + 32 * v10, &v131);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_8;
  }

  v13 = sub_10013044C(v130.n128_i64[0], v130.n128_u64[1]);
  if (v14 >> 60 == 15)
  {

    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v15, v16))
    {

      goto LABEL_11;
    }

    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v131 = v18;
    *v17 = 136315138;
    v19 = sub_1002FFA0C(v130.n128_i64[0], v130.n128_u64[1], &v131);

    *(v17 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v15, v16, "Cannot get data representation of %s", v17, 0xCu);
    sub_1000752F4(v18);

    goto LABEL_10;
  }

  v26 = v13;
  v27 = v14;

  sub_100069E2C(v26, v27);
  sub_100288640(8, v26, v27, &v131);
  v29 = v131;
  v28 = v132;
  sub_100069E2C(v131, v132);
  sub_100069E2C(a3, a4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v131 = *a1;
  sub_1003155DC(a3, a4, -1, v29, v28, isUniquelyReferenced_nonNull_native);
  v128 = v29;
  v129 = v28;
  sub_10006A178(v29, v28);
  v126 = v131;
  *a1 = v131;
  v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(a2 + 16))
  {

LABEL_67:
    v101 = v26;
    sub_100069E2C(a3, a4);
    v102 = Logger.logObject.getter();
    v103 = static os_log_type_t.error.getter();
    sub_10006A178(a3, a4);
    if (!os_log_type_enabled(v102, v103))
    {
LABEL_70:
      sub_10006A2D0(v101, v27);
      sub_10006A178(v128, v28);

      return;
    }

    v104 = swift_slowAlloc();
    v131 = swift_slowAlloc();
    *v104 = 136315394;
    v105 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v107 = sub_1002FFA0C(v105, v106, &v131);

    *(v104 + 4) = v107;
    *(v104 + 12) = 2080;
    sub_100288788(a3, a4);
    sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
    sub_10007A2D0();
    v108 = BidirectionalCollection<>.joined(separator:)();
    v110 = v109;

    v111 = sub_1002FFA0C(v108, v110, &v131);

    *(v104 + 14) = v111;
    v112 = "No ecp2info with key %s found for endpoint %s";
LABEL_69:
    _os_log_impl(&_mh_execute_header, v102, v103, v112, v104, 0x16u);
    swift_arrayDestroy();

    goto LABEL_70;
  }

  v33 = sub_10008C908(v31, v32);
  v35 = v34;

  if ((v35 & 1) == 0)
  {
    goto LABEL_67;
  }

  sub_1000754F0(*(a2 + 56) + 32 * v33, &v131);
  sub_100068FC4(&qword_100505FD0, &qword_10040B550);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_67;
  }

  v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v130.n128_u64[0] + 16))
  {
    v101 = v26;

LABEL_73:

LABEL_74:
    sub_100069E2C(a3, a4);
    v102 = Logger.logObject.getter();
    v103 = static os_log_type_t.error.getter();
    sub_10006A178(a3, a4);
    if (!os_log_type_enabled(v102, v103))
    {
      goto LABEL_70;
    }

    v104 = swift_slowAlloc();
    v131 = swift_slowAlloc();
    *v104 = 136315394;
    v113 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v115 = sub_1002FFA0C(v113, v114, &v131);

    *(v104 + 4) = v115;
    *(v104 + 12) = 2080;
    sub_100288788(a3, a4);
    sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
    sub_10007A2D0();
    v116 = BidirectionalCollection<>.joined(separator:)();
    v118 = v117;

    v119 = sub_1002FFA0C(v116, v118, &v131);

    *(v104 + 14) = v119;
    v112 = "No aux keys with key: %s found for endpoint %s";
    goto LABEL_69;
  }

  v38 = sub_10008C908(v36, v37);
  v40 = v39;

  if ((v40 & 1) == 0)
  {
    v101 = v26;
    goto LABEL_73;
  }

  sub_1000754F0(*(v130.n128_u64[0] + 56) + 32 * v38, &v131);

  sub_100068FC4(&unk_100503EC0, &unk_100417130);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v101 = v26;
    goto LABEL_74;
  }

  v41 = v130.n128_u64[0];
  v124 = *(v130.n128_u64[0] + 16);
  if (!v124)
  {
LABEL_77:

    sub_10006A178(v128, v129);
    sub_10006A2D0(v26, v27);
    return;
  }

  v42 = 0;
  v122 = v27;
  while (v42 < *(v41 + 16))
  {
    v125 = v42;
    v43 = *(v41 + 8 * v42 + 32);
    v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v46 = v45;
    if (!*(v43 + 16) || (v47 = v44, , v48 = sub_10008C908(v47, v46), v50 = v49, , (v50 & 1) == 0) || (sub_1000754F0(*(v43 + 56) + 32 * v48, &v131), (swift_dynamicCast() & 1) == 0))
    {

LABEL_28:
      v54 = Logger.logObject.getter();
      v55 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v54, v55))
      {
        v56 = swift_slowAlloc();
        v123 = swift_slowAlloc();
        v131 = v123;
        *v56 = 136315394;
        v57 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v59 = v26;
        v60 = sub_1002FFA0C(v57, v58, &v131);
        v27 = v122;

        *(v56 + 4) = v60;
        v26 = v59;
        *(v56 + 12) = 2048;
        *(v56 + 14) = 8;
        _os_log_impl(&_mh_execute_header, v54, v55, "Auxiliary reader identifier with key %s expected to be a Data of length %ld", v56, 0x16u);
        sub_1000752F4(v123);
      }

      goto LABEL_30;
    }

    v51 = v130.n128_u64[1];
    v52 = v130.n128_u64[1] >> 62;
    if ((v130.n128_u64[1] >> 62) > 1)
    {
      if (v52 != 2)
      {
        goto LABEL_48;
      }

      v61 = *(v130.n128_u64[0] + 16);
      v62 = *(v130.n128_u64[0] + 24);
      v63 = __OFSUB__(v62, v61);
      v53 = v62 - v61;
      if (v63)
      {
        goto LABEL_79;
      }
    }

    else if (v52)
    {
      LODWORD(v53) = v130.n128_u32[1] - v130.n128_u32[0];
      if (__OFSUB__(v130.n128_u32[1], v130.n128_u32[0]))
      {
        goto LABEL_80;
      }

      v53 = v53;
    }

    else
    {
      v53 = v130.n128_u8[14];
    }

    if (v53 != 8)
    {
LABEL_48:

      sub_10006A178(v130.n128_i64[0], v130.n128_u64[1]);
      goto LABEL_28;
    }

    v64 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    if (!*(v43 + 16))
    {

      goto LABEL_51;
    }

    v66 = sub_10008C908(v64, v65);
    v68 = v67;

    if ((v68 & 1) == 0)
    {

      v51 = v130.n128_u64[1];
LABEL_51:
      v54 = Logger.logObject.getter();
      v74 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v54, v74))
      {
        v75 = swift_slowAlloc();
        v121 = swift_slowAlloc();
        v131 = v121;
        *v75 = 136315138;
        v76 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v78 = sub_1002FFA0C(v76, v77, &v131);

        *(v75 + 4) = v78;
        _os_log_impl(&_mh_execute_header, v54, v74, "Priority with key %s expected as NSNumber", v75, 0xCu);
        sub_1000752F4(v121);

        v80 = v130.n128_u64[1];
        v79 = v130.n128_u64[0];
      }

      else
      {
        v79 = v130.n128_u64[0];
        v80 = v51;
      }

      sub_10006A178(v79, v80);
LABEL_30:

      goto LABEL_31;
    }

    sub_1000754F0(*(v43 + 56) + 32 * v66, &v131);

    sub_100156F48();
    v51 = v130.n128_u64[1];
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_51;
    }

    if (*(v126 + 16) && (v69 = sub_10008C8DC(v130.n128_i64[0], v130.n128_i64[1]), (v70 & 1) != 0) && (v71 = v26, v72 = *(*(v126 + 56) + 24 * v69 + 16), v73 = v72 < [v130.n128_u64[0] integerValue], v26 = v71, v73))
    {

      sub_10006A178(v130.n128_i64[0], v130.n128_u64[1]);
    }

    else
    {
      sub_100069E2C(a3, a4);
      v127 = [v130.n128_u64[0] integerValue];
      v81 = swift_isUniquelyReferenced_nonNull_native();
      v131 = *a1;
      v82 = v131;
      v84 = sub_10008C8DC(v130.n128_i64[0], v130.n128_i64[1]);
      v85 = *(v82 + 16);
      v86 = (v83 & 1) == 0;
      v87 = v85 + v86;
      if (__OFADD__(v85, v86))
      {
        goto LABEL_81;
      }

      if (*(v82 + 24) >= v87)
      {
        v91 = v130;
        if ((v81 & 1) == 0)
        {
          v100 = v83;
          sub_100311984();
          v83 = v100;
          v91 = v130;
        }
      }

      else
      {
        v120 = v83;
        sub_10030B160(v87, v81);
        v88 = sub_10008C8DC(v130.n128_i64[0], v130.n128_i64[1]);
        v90 = v89 & 1;
        v83 = v120;
        if ((v120 & 1) != v90)
        {
          goto LABEL_83;
        }

        v84 = v88;
        v91 = v130;
      }

      v92 = v127;
      v93 = v131;
      v126 = v131;
      if (v83)
      {
        v94 = (v131[7] + 24 * v84);
        v95 = *v94;
        v96 = v94[1];
        *v94 = a3;
        v94[1] = a4;
        v94[2] = v92;
        sub_10006A178(v95, v96);

        sub_10006A178(v130.n128_i64[0], v130.n128_u64[1]);
        *a1 = v93;
      }

      else
      {
        v131[(v84 >> 6) + 8] |= 1 << v84;
        *(v93[6] + 16 * v84) = v91;
        v97 = (v93[7] + 24 * v84);
        *v97 = a3;
        v97[1] = a4;
        v97[2] = v92;

        v98 = v93[2];
        v63 = __OFADD__(v98, 1);
        v99 = v98 + 1;
        if (v63)
        {
          goto LABEL_82;
        }

        v93[2] = v99;
        *a1 = v93;
      }
    }

LABEL_31:
    v41 = v130.n128_u64[0];
    v42 = v125 + 1;
    if (v124 == v125 + 1)
    {
      goto LABEL_77;
    }
  }

  __break(1u);
LABEL_79:
  __break(1u);
LABEL_80:
  __break(1u);
LABEL_81:
  __break(1u);
LABEL_82:
  __break(1u);
LABEL_83:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void *sub_10027FC38(uint64_t a1, unint64_t a2)
{
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = (&v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    goto LABEL_82;
  }

  while (1)
  {
    v9 = qword_10051B7F0;
    *v8 = qword_10051B7F0;
    (*(v6 + 104))(v8, enum case for DispatchPredicate.onQueue(_:), v5);
    v10 = v9;
    v11 = _dispatchPreconditionTest(_:)();
    (*(v6 + 8))(v8, v5);
    if ((v11 & 1) == 0)
    {
      __break(1u);
LABEL_84:
      __break(1u);
      goto LABEL_85;
    }

    if (*(v2 + 16) != 1)
    {
      break;
    }

    v70 = &_swiftEmptySetSingleton;
    v12 = OBJC_IVAR____TtC10seserviced11LyonExpress_activeExpressEndpoints;
    swift_beginAccess();
    v5 = *(v2 + v12);
    v8 = (v5 + 64);
    v13 = 1 << *(v5 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v5 + 64);
    v16 = (v13 + 63) >> 6;
    if (a1)
    {
      v17 = 0;
    }

    else
    {
      v17 = a2 == 0xC000000000000000;
    }

    v18 = !v17;
    v67 = v18;
    v2 = a2 >> 62;
    v19 = __OFSUB__(HIDWORD(a1), a1);
    v63 = v19;
    v61 = a2;
    v62 = HIDWORD(a1) - a1;
    v65 = a1;
    v66 = BYTE6(a2);

    v6 = 0;
    v64 = 0;
    v68 = a2 >> 62;
LABEL_16:
    if (v15)
    {
      goto LABEL_21;
    }

    while (1)
    {
      v20 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      if (v20 >= v16)
      {

        return v70;
      }

      v15 = v8[v20];
      ++v6;
      if (v15)
      {
        v6 = v20;
LABEL_21:
        v21 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
        v22 = v21 | (v6 << 6);
        v23 = (*(v5 + 48) + 16 * v22);
        a2 = *v23;
        v24 = v23[1];
        v25 = (*(v5 + 56) + 24 * v22);
        a1 = *v25;
        v26 = v25[1];
        v27 = v26 >> 62;
        if (v26 >> 62 == 3)
        {
          if (a1)
          {
            v28 = 0;
          }

          else
          {
            v28 = v26 == 0xC000000000000000;
          }

          v30 = !v28 || v2 < 3;
          if (((v30 | v67) & 1) == 0)
          {
            sub_100069E2C(a2, v24);
            v31 = 0;
            v32 = 0xC000000000000000;
            goto LABEL_53;
          }

LABEL_43:
          v33 = 0;
          if (v2 > 1)
          {
LABEL_44:
            if (v2 == 2)
            {
              v39 = *(v65 + 16);
              v38 = *(v65 + 24);
              v36 = __OFSUB__(v38, v39);
              v37 = v38 - v39;
              if (!v36)
              {
                goto LABEL_46;
              }

LABEL_85:
              __break(1u);
LABEL_86:
              __break(1u);
LABEL_87:
              __break(1u);
LABEL_88:
              __break(1u);
LABEL_89:
              __break(1u);
LABEL_90:
              __break(1u);
LABEL_91:
              __break(1u);
            }

            if (!v33)
            {
LABEL_52:
              sub_100069E2C(a2, v24);
              v31 = a1;
              v32 = v26;
LABEL_53:
              sub_100069E2C(v31, v32);
LABEL_54:
              sub_100069E2C(a2, v24);
              sub_1000D589C(&v71, a2, v24);
              sub_10006A178(a1, v26);
              sub_10006A178(a2, v24);
              v41 = *(&v71 + 1);
              v40 = v71;
LABEL_55:
              sub_10006A178(v40, v41);
              v2 = v68;
            }

            goto LABEL_16;
          }
        }

        else if (v27 > 1)
        {
          if (v27 != 2)
          {
            goto LABEL_43;
          }

          v35 = *(a1 + 16);
          v34 = *(a1 + 24);
          v36 = __OFSUB__(v34, v35);
          v33 = v34 - v35;
          if (v36)
          {
            goto LABEL_87;
          }

          if (v2 > 1)
          {
            goto LABEL_44;
          }
        }

        else if (v27)
        {
          LODWORD(v33) = HIDWORD(a1) - a1;
          if (__OFSUB__(HIDWORD(a1), a1))
          {
            goto LABEL_86;
          }

          v33 = v33;
          if (v2 > 1)
          {
            goto LABEL_44;
          }
        }

        else
        {
          v33 = BYTE6(v26);
          if (v2 > 1)
          {
            goto LABEL_44;
          }
        }

        v37 = v66;
        if (v2)
        {
          v37 = v62;
          if (v63)
          {
            goto LABEL_84;
          }
        }

LABEL_46:
        if (v33 == v37)
        {
          if (v33 < 1)
          {
            goto LABEL_52;
          }

          v60 = v5;
          if (v27 > 1)
          {
            if (v27 != 2)
            {
              *(&v71 + 6) = 0;
              *&v71 = 0;
              sub_100069E2C(a2, v24);
              sub_100069E2C(a1, v26);
              goto LABEL_68;
            }

            v42 = *(a1 + 16);
            v58 = *(a1 + 24);
            v59 = v42;
            sub_100069E2C(a2, v24);
            sub_100069E2C(a1, v26);
            v43 = __DataStorage._bytes.getter();
            if (v43)
            {
              v44 = v43;
              v45 = __DataStorage._offset.getter();
              v46 = v59;
              if (__OFSUB__(v59, v45))
              {
                goto LABEL_90;
              }

              v57 = v59 - v45 + v44;
            }

            else
            {
              v57 = 0;
              v46 = v59;
            }

            if (__OFSUB__(v58, v46))
            {
              goto LABEL_89;
            }

            __DataStorage._length.getter();
            v51 = v57;
          }

          else
          {
            if (!v27)
            {
              *&v71 = a1;
              WORD4(v71) = v26;
              BYTE10(v71) = BYTE2(v26);
              BYTE11(v71) = BYTE3(v26);
              BYTE12(v71) = BYTE4(v26);
              BYTE13(v71) = BYTE5(v26);
              sub_100069E2C(a2, v24);
              sub_100069E2C(a1, v26);
LABEL_68:
              v50 = v64;
              sub_10019F024(&v71, v65, v61, &v69);
              v64 = v50;
              v5 = v60;
              if (v69)
              {
                goto LABEL_54;
              }

LABEL_76:
              sub_10006A178(a2, v24);
              v40 = a1;
              v41 = v26;
              goto LABEL_55;
            }

            v59 = (a1 >> 32) - a1;
            if (a1 >> 32 < a1)
            {
              goto LABEL_88;
            }

            sub_100069E2C(a2, v24);
            sub_100069E2C(a1, v26);
            v47 = __DataStorage._bytes.getter();
            if (v47)
            {
              v58 = v47;
              v48 = __DataStorage._offset.getter();
              if (__OFSUB__(a1, v48))
              {
                goto LABEL_91;
              }

              v49 = a1 - v48 + v58;
            }

            else
            {
              v49 = 0;
            }

            __DataStorage._length.getter();
            v51 = v49;
          }

          v52 = v64;
          sub_10019F024(v51, v65, v61, &v71);
          v64 = v52;
          v5 = v60;
          if (v71)
          {
            goto LABEL_54;
          }

          goto LABEL_76;
        }

        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_82:
    swift_once();
  }

  v53 = Logger.logObject.getter();
  v54 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v53, v54))
  {
    v55 = swift_slowAlloc();
    *v55 = 0;
    _os_log_impl(&_mh_execute_header, v53, v54, "LyonExpress is not running", v55, 2u);
  }

  return &_swiftEmptySetSingleton;
}

uint64_t sub_100280304(uint64_t a1)
{
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = (&v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v7 = qword_10051B7F0;
  *v6 = qword_10051B7F0;
  (*(v4 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v3);
  v8 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  v10 = *(v4 + 8);
  v9 = v4 + 8;
  v10(v6, v3);
  if ((v7 & 1) == 0)
  {
    __break(1u);
LABEL_44:
    v1 = sub_10012E5A4((v11 > 1), v6, 1, v1);
    goto LABEL_13;
  }

  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(a1 + 16))
  {
    goto LABEL_8;
  }

  v14 = sub_10008C908(v12, v13);
  v16 = v15;

  if ((v16 & 1) == 0 || (sub_1000754F0(*(a1 + 56) + 32 * v14, v67), (swift_dynamicCast() & 1) == 0))
  {
LABEL_9:

    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v67[0] = v23;
      *v22 = 136315138;
      v24 = Dictionary.description.getter();
      v26 = sub_1002FFA0C(v24, v25, v67);

      *(v22 + 4) = v26;
      _os_log_impl(&_mh_execute_header, v20, v21, "Cannot get data representation of primary reader identifier in %s", v22, 0xCu);
      sub_1000752F4(v23);
    }

    sub_100079E24();
    swift_allocError();
    *v27 = 0;
    return swift_willThrow();
  }

  v17 = v66[0];
  v9 = v66[1];

  v18 = sub_10013044C(v17, v9);
  if (v19 >> 60 == 15)
  {
LABEL_8:

    goto LABEL_9;
  }

  v29 = v18;
  v30 = v19;
  sub_100069E2C(v18, v19);
  v63 = v29;
  v64 = v30;
  sub_100288640(8, v29, v30, v67);
  v65 = *v67;
  v1 = sub_10012E5A4(0, 1, 1, _swiftEmptyArrayStorage);
  v3 = *(v1 + 2);
  v11 = *(v1 + 3);
  v6 = (v3 + 1);
  v62 = v17;
  if (v3 >= v11 >> 1)
  {
    goto LABEL_44;
  }

LABEL_13:
  *(v1 + 2) = v6;
  *&v1[16 * v3 + 32] = v65;
  v68 = v1;
  v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(a1 + 16))
  {

LABEL_23:

    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v46, v47))
    {
LABEL_26:

      sub_100079E24();
      swift_allocError();
      *v53 = 0;
      swift_willThrow();
      return sub_10006A2D0(v63, v64);
    }

    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v67[0] = v49;
    *v48 = 136315138;
    v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v52 = sub_1002FFA0C(v50, v51, v67);

    *(v48 + 4) = v52;
    _os_log_impl(&_mh_execute_header, v46, v47, "No ecp2info with key %s found for endpoint", v48, 0xCu);
    sub_1000752F4(v49);

LABEL_25:

    goto LABEL_26;
  }

  v33 = sub_10008C908(v31, v32);
  v35 = v34;

  if ((v35 & 1) == 0)
  {
    goto LABEL_23;
  }

  sub_1000754F0(*(a1 + 56) + 32 * v33, v67);
  sub_100068FC4(&qword_100505FD0, &qword_10040B550);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_23;
  }

  v36 = v66[0];
  v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v36 + 16))
  {

    goto LABEL_38;
  }

  v39 = sub_10008C908(v37, v38);
  v41 = v40;

  if ((v41 & 1) == 0)
  {

    goto LABEL_38;
  }

  sub_1000754F0(*(v36 + 56) + 32 * v39, v67);

  sub_100068FC4(&unk_100503EC0, &unk_100417130);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_38:

    v46 = Logger.logObject.getter();
    v57 = static os_log_type_t.debug.getter();

    if (!os_log_type_enabled(v46, v57))
    {

      goto LABEL_26;
    }

    v58 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    v67[0] = v59;
    *v58 = 136315138;
    v60 = sub_1002FFA0C(v62, v9, v67);

    *(v58 + 4) = v60;
    _os_log_impl(&_mh_execute_header, v46, v57, "No aux keys found for endpoint with primary reader ID %s", v58, 0xCu);
    sub_1000752F4(v59);

    goto LABEL_25;
  }

  v42 = v66[0];
  v43 = *(v66[0] + 16);
  if (v43)
  {
    v44 = 0;
    v45 = _swiftEmptyArrayStorage;
    while (v44 < *(v42 + 16))
    {
      v66[0] = *(v42 + 32 + 8 * v44);

      sub_100280B20(v66, v67);

      if (v67[1] >> 60 == 15)
      {
        result = sub_10006A2D0(v67[0], v67[1]);
      }

      else
      {
        v65 = *v67;
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_10012E5A4(0, *(v45 + 2) + 1, 1, v45);
          v45 = result;
        }

        v55 = *(v45 + 2);
        v54 = *(v45 + 3);
        v56 = v65;
        if (v55 >= v54 >> 1)
        {
          result = sub_10012E5A4((v54 > 1), v55 + 1, 1, v45);
          v56 = v65;
          v45 = result;
        }

        *(v45 + 2) = v55 + 1;
        *&v45[16 * v55 + 32] = v56;
      }

      if (v43 == ++v44)
      {
        goto LABEL_42;
      }
    }

    __break(1u);
  }

  else
  {
    v45 = _swiftEmptyArrayStorage;
LABEL_42:

    sub_1002F8F48(v45);
    sub_10006A2D0(v63, v64);
    return v68;
  }

  return result;
}

void sub_100280B20(uint64_t *a1@<X0>, __int128 *a2@<X8>)
{
  v3 = *a1;
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (*(v3 + 16))
  {
    v6 = sub_10008C908(v4, v5);
    v8 = v7;

    if (v8)
    {
      sub_1000754F0(*(v3 + 56) + 32 * v6, v15);
      if (swift_dynamicCast())
      {
        sub_100288640(8, v13, v14, v15);
        v9 = *v15;
        goto LABEL_9;
      }
    }
  }

  else
  {
  }

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "Aux Reader identifier expected to be of type Data", v12, 2u);
  }

  v9 = xmmword_1004098E0;
LABEL_9:
  *a2 = v9;
}

uint64_t sub_100280C7C(uint64_t a1, uint64_t a2)
{
  v3 = OBJC_IVAR____TtC10seserviced11LyonExpress_logger;
  v4 = type metadata accessor for Logger();
  (*(*(v4 - 8) + 8))(v2 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for LyonExpress(uint64_t a1)
{
  result = qword_100508C50;
  if (!qword_100508C50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100280D7C(uint64_t a1, uint64_t a2)
{
  result = type metadata accessor for Logger();
  if (v3 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_100280E4C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100280E64()
{
  sub_10006A178(*(v0 + 16), *(v0 + 24));

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100280E9C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100280ED4()
{
  [objc_opt_self() interfaceWithProtocol:&OBJC_PROTOCOL____TtP10seserviced32CredentialServerInternalProtocol_];
  sub_10009393C(0, &qword_100508CE8, NSSet_ptr);
  sub_100068FC4(&qword_100504D48, &qword_10040C010);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_100413A40;
  v1 = type metadata accessor for CredentialInternal();
  *(v0 + 56) = sub_100068FC4(&qword_100508CF0, &qword_100413A50);
  *(v0 + 32) = v1;
  v2 = type metadata accessor for InstanceInfoInternal();
  *(v0 + 88) = sub_100068FC4(&qword_100508CF8, &qword_100413A58);
  *(v0 + 64) = v2;
  v3 = type metadata accessor for ApplicationInfoInternal();
  *(v0 + 120) = sub_100068FC4(&qword_100508D00, &qword_100413A60);
  *(v0 + 96) = v3;
  v4 = sub_10009393C(0, &qword_100508D08, NSArray_ptr);
  *(v0 + 152) = sub_100068FC4(&qword_100508D10, &qword_100413A68);
  *(v0 + 128) = v4;
  v5 = sub_10009393C(0, &qword_100508D18, NSUUID_ptr);
  *(v0 + 184) = sub_100068FC4(&qword_100508D20, &qword_100413A70);
  *(v0 + 160) = v5;
  v6 = sub_10009393C(0, &qword_100508D28, NSString_ptr);
  *(v0 + 216) = sub_100068FC4(&qword_100508D30, &qword_100413A78);
  *(v0 + 192) = v6;
  v7 = sub_10009393C(0, &qword_100507150, NSData_ptr);
  *(v0 + 248) = sub_100068FC4(&qword_100508D38, &unk_100413A80);
  *(v0 + 224) = v7;
  NSSet.init(objects:)();
  result = static Set._forceBridgeFromObjectiveC(_:result:)();
  __break(1u);
  return result;
}

void sub_10028115C()
{
  v2 = sub_100068FC4(&qword_100505440, &unk_100413B30);
  v81 = *(v2 - 8);
  v82 = v2;
  __chkstk_darwin(v2);
  v93 = &v73 - v3;
  v4 = sub_100068FC4(&qword_100505450, &qword_10040CCD8);
  v87 = *(v4 - 8);
  v88 = v4;
  __chkstk_darwin(v4);
  v6 = &v73 - v5;
  v91 = sub_100068FC4(&qword_100505460, &qword_100413B40);
  v86 = *(v91 - 8);
  __chkstk_darwin(v91);
  v80 = &v73 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v79 = &v73 - v9;
  __chkstk_darwin(v10);
  v78 = &v73 - v11;
  __chkstk_darwin(v12);
  v92 = &v73 - v13;
  __chkstk_darwin(v14);
  v90 = &v73 - v15;
  __chkstk_darwin(v16);
  v19 = &v73 - v18;
  if (*(v0 + 112))
  {
    __chkstk_darwin(v17);
    *(&v73 - 2) = v20;
    v21 = v20;
    sub_100068FC4(&qword_100508E98, &qword_100413B18);
    NSManagedObjectContext.performAndWait<A>(_:)();
    v22 = v1;

    if (!v1)
    {
      v23 = v96;
      if (v96 >> 62)
      {
        goto LABEL_20;
      }

      v24 = *((v96 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v24)
      {
        while (1)
        {
          v84 = v6;
          v96 = _swiftEmptyArrayStorage;
          sub_10019F788(0, v24 & ~(v24 >> 63), 0);
          if (v24 < 0)
          {
            break;
          }

          v25 = 0;
          v26 = v96;
          v89 = v23 & 0xC000000000000001;
          v85 = v23 & 0xFFFFFFFFFFFFFF8;
          while (1)
          {
            v27 = v25 + 1;
            if (__OFADD__(v25, 1))
            {
              break;
            }

            if (v89)
            {
              v28 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v25 >= *(v85 + 16))
              {
                goto LABEL_19;
              }

              v28 = *(v23 + 8 * v25 + 32);
            }

            v29 = v28;
            v95[0] = v28;
            sub_100281CC4(v95, &v94, v19);
            v22 = 0;
            v6 = v23;

            v96 = v26;
            v31 = v26[2];
            v30 = v26[3];
            v32 = v26;
            if (v31 >= v30 >> 1)
            {
              sub_10019F788((v30 > 1), v31 + 1, 1);
              v32 = v96;
            }

            v32[2] = v31 + 1;
            sub_100285764(v19, v32 + ((*(v86 + 80) + 32) & ~*(v86 + 80)) + *(v86 + 72) * v31, &qword_100505460, &qword_100413B40);
            ++v25;
            v26 = v32;
            v23 = v6;
            if (v27 == v24)
            {

              v6 = v84;
              goto LABEL_22;
            }
          }

          __break(1u);
LABEL_19:
          __break(1u);
LABEL_20:
          v24 = _CocoaArrayWrapper.endIndex.getter();
          if (!v24)
          {
            goto LABEL_21;
          }
        }

        __break(1u);
        goto LABEL_44;
      }

LABEL_21:

      v26 = _swiftEmptyArrayStorage;
LABEL_22:
      v36 = v26[2];
      v76 = v26;
      v89 = v36;
      if (v36)
      {
        v84 = 0;
        v96 = _swiftEmptyArrayStorage;
        sub_10019F748(0, v36, 0);
        v37 = v96;
        v38 = v26 + ((*(v86 + 80) + 32) & ~*(v86 + 80));
        v85 = *(v86 + 72);
        v39 = v36;
        do
        {
          v40 = v90;
          sub_1000938D4(v38, v90, &qword_100505460, &qword_100413B40);
          v41 = *(v88 + 48);
          v42 = v92;
          sub_100285764(v40, v92, &qword_100505460, &qword_100413B40);
          v43 = *(v91 + 48);
          sub_10006A178(*(v42 + *(v91 + 64)), *(v42 + *(v91 + 64) + 8));
          v44 = type metadata accessor for CredentialType();
          (*(*(v44 - 8) + 32))(v6, v42 + v43, v44);
          *&v6[v41] = 1;
          v45 = type metadata accessor for UUID();
          (*(*(v45 - 8) + 8))(v42, v45);
          v96 = v37;
          v47 = v37[2];
          v46 = v37[3];
          if (v47 >= v46 >> 1)
          {
            sub_10019F748((v46 > 1), v47 + 1, 1);
            v37 = v96;
          }

          v37[2] = v47 + 1;
          sub_100285764(v6, v37 + ((*(v87 + 80) + 32) & ~*(v87 + 80)) + *(v87 + 72) * v47, &qword_100505450, &qword_10040CCD8);
          v38 += v85;
          --v39;
        }

        while (v39);
        v22 = v84;
        if (v37[2])
        {
          goto LABEL_28;
        }
      }

      else
      {
        v37 = _swiftEmptyArrayStorage;
        if (_swiftEmptyArrayStorage[2])
        {
LABEL_28:
          sub_100068FC4(&qword_100508EA0, &qword_100413B48);
          v48 = static _DictionaryStorage.allocate(capacity:)();
          goto LABEL_31;
        }
      }

      v48 = _swiftEmptyDictionarySingleton;
LABEL_31:
      v49 = v89;
      v96 = v48;
      sub_1002852D4(v37, 1, &v96);
      v50 = v76;
      if (v22)
      {
LABEL_44:

        __break(1u);
LABEL_45:
        swift_unexpectedError();
        __break(1u);
        return;
      }

      if (v49)
      {
        v74 = 0;
        v75 = v96;
        v96 = _swiftEmptyArrayStorage;
        sub_10019F708(0, v49, 0);
        v51 = v96;
        v52 = v50 + ((*(v86 + 80) + 32) & ~*(v86 + 80));
        v77 = *(v86 + 72);
        do
        {
          v88 = v51;
          v89 = v49;
          v87 = v52;
          v53 = v90;
          sub_1000938D4(v52, v90, &qword_100505460, &qword_100413B40);
          v86 = *(v82 + 48);
          v54 = v92;
          sub_1000938D4(v53, v92, &qword_100505460, &qword_100413B40);
          v55 = v91;
          v85 = *(v91 + 48);
          sub_10006A178(*(v54 + *(v91 + 64)), *(v54 + *(v91 + 64) + 8));
          v83 = type metadata accessor for UUID();
          v56 = *(v83 - 8);
          (*(v56 + 32))(v93, v54, v83);
          v57 = v78;
          sub_1000938D4(v53, v78, &qword_100505460, &qword_100413B40);
          v84 = *(v55 + 48);
          sub_10006A178(*(v57 + *(v55 + 64)), *(v57 + *(v55 + 64) + 8));
          v58 = v79;
          sub_1000938D4(v53, v79, &qword_100505460, &qword_100413B40);
          sub_10006A178(*(v58 + *(v55 + 64)), *(v58 + *(v55 + 64) + 8));
          v59 = v80;
          sub_1000938D4(v53, v80, &qword_100505460, &qword_100413B40);
          v60 = *(v55 + 48);
          v61 = objc_allocWithZone(type metadata accessor for Reservation());
          v62 = Reservation.init(uuid:type:metadata:)();
          sub_100075768(v53, &qword_100505460, &qword_100413B40);
          v63 = type metadata accessor for CredentialType();
          v64 = *(*(v63 - 8) + 8);
          v64(v59 + v60, v63);
          v65 = *(v56 + 8);
          v66 = v59;
          v67 = v83;
          v65(v66, v83);
          v65(v58, v67);
          v51 = v88;
          v64(&v84[v57], v63);
          *(v93 + v86) = v62;
          v64(v92 + v85, v63);
          v96 = v51;
          v69 = v51[2];
          v68 = v51[3];
          if (v69 >= v68 >> 1)
          {
            sub_10019F708((v68 > 1), v69 + 1, 1);
            v51 = v96;
          }

          v51[2] = v69 + 1;
          sub_100285764(v93, v51 + ((*(v81 + 80) + 32) & ~*(v81 + 80)) + *(v81 + 72) * v69, &qword_100505440, &unk_100413B30);
          v52 = v87 + v77;
          v49 = v89 - 1;
        }

        while (v89 != 1);

        v22 = v74;
        if (v51[2])
        {
          goto LABEL_38;
        }
      }

      else
      {

        if (_swiftEmptyArrayStorage[2])
        {
LABEL_38:
          sub_100068FC4(&unk_10050ABD0, &unk_100413B50);
          v70 = static _DictionaryStorage.allocate(capacity:)();
          goto LABEL_41;
        }
      }

      v70 = _swiftEmptyDictionarySingleton;
LABEL_41:
      v96 = v70;

      sub_100284CFC(v71, 1, &v96);
      if (!v22)
      {

        v72 = objc_allocWithZone(type metadata accessor for ReservationState());
        ReservationState.init(counts:reservations:)();
        return;
      }

      goto LABEL_45;
    }
  }

  else
  {
    v33 = objc_allocWithZone(NSError);
    v34 = String._bridgeToObjectiveC()();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;
    [v33 initWithDomain:v34 code:21 userInfo:isa];

    swift_willThrow();
  }
}

uint64_t sub_100281CC4@<X0>(void **a1@<X0>, void *a2@<X1>, char *a3@<X8>)
{
  v50 = a2;
  v46 = a3;
  v4 = type metadata accessor for UUID();
  v47 = *(v4 - 8);
  v48 = v4;
  __chkstk_darwin(v4);
  v6 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v49 = &v43 - v8;
  v9 = sub_100068FC4(&qword_100507468, &qword_10040FA20);
  __chkstk_darwin(v9 - 8);
  v11 = &v43 - v10;
  v12 = type metadata accessor for CredentialType();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *a1;
  v18 = [v17 type];
  if (v18)
  {
    v19 = v18;
    v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = v21;
  }

  else
  {
    v20 = 0;
    v22 = 0;
  }

  sub_1002820E0(v20, v22, v11);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_100075768(v11, &qword_100507468, &qword_10040FA20);
  }

  else
  {
    v23 = *(v13 + 32);
    v23(v16, v11, v12);
    v24 = [v17 uuid];
    if (v24)
    {
      v45 = v23;
      v25 = v24;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v26 = v47;
      v27 = v6;
      v28 = v48;
      v44 = *(v47 + 32);
      v44(v49, v27, v48);
      v29 = [v17 metadata];
      if (v29)
      {
        v30 = v29;
        v31 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v50 = v32;

        v33 = sub_100068FC4(&qword_100505460, &qword_100413B40);
        v34 = *(v33 + 48);
        v35 = v46;
        v36 = &v46[*(v33 + 64)];
        v44(v46, v49, v28);
        result = v45(&v35[v34], v16, v12);
        v38 = v50;
        *v36 = v31;
        v36[1] = v38;
        return result;
      }

      (*(v26 + 8))(v49, v28);
    }

    (*(v13 + 8))(v16, v12);
  }

  v39 = objc_allocWithZone(NSError);
  v40 = String._bridgeToObjectiveC()();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v42 = [v39 initWithDomain:v40 code:23 userInfo:isa];

  result = swift_willThrow();
  *v50 = v42;
  return result;
}

uint64_t sub_1002820E0@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = sub_100068FC4(&qword_100507468, &qword_10040FA20);
  __chkstk_darwin(v6 - 8);
  v8 = v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = v34 - v10;
  v12 = type metadata accessor for CredentialType();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = v34 - v17;
  __chkstk_darwin(v19);
  v21 = v34 - v20;
  __chkstk_darwin(v22);
  if (!a2)
  {
    v29 = 1;
    return (*(v13 + 56))(a3, v29, 1, v12);
  }

  v35 = v34 - v23;
  v36 = a3;

  v24 = sub_10013044C(a1, a2);
  v26 = a1;
  if (v25 >> 60 != 15)
  {
    v27 = v24;
    v28 = v25;
    v34[1] = v26;
    sub_100069E2C(v24, v25);
    CredentialType.init(deserialize:)();
    if ((*(v13 + 48))(v11, 1, v12) != 1)
    {

      v32 = v11;
      v30 = *(v13 + 32);
      v30(v21, v32, v12);
      (*(v13 + 16))(v18, v21, v12);
      v31 = v35;
      CredentialType.init(fromLegacy:)();
      sub_10006A2D0(v27, v28);
      goto LABEL_10;
    }

    sub_10006A2D0(v27, v28);
    sub_100075768(v11, &qword_100507468, &qword_10040FA20);
  }

  CredentialType.init(rawValue:)();
  if ((*(v13 + 48))(v8, 1, v12) != 1)
  {
    v30 = *(v13 + 32);
    v30(v15, v8, v12);
    (*(v13 + 16))(v18, v15, v12);
    v31 = v35;
    CredentialType.init(fromLegacy:)();
    v21 = v15;
LABEL_10:
    a3 = v36;
    (*(v13 + 8))(v21, v12);
    v30(a3, v31, v12);
    v29 = 0;
    return (*(v13 + 56))(a3, v29, 1, v12);
  }

  sub_100075768(v8, &qword_100507468, &qword_10040FA20);
  v29 = 1;
  a3 = v36;
  return (*(v13 + 56))(a3, v29, 1, v12);
}

void sub_100282498(uint64_t *a1@<X8>)
{
  v3 = objc_allocWithZone(NSFetchRequest);
  v4 = String._bridgeToObjectiveC()();
  v5 = [v3 initWithEntityName:v4];

  type metadata accessor for Item();
  v6 = NSManagedObjectContext.fetch<A>(_:)();

  if (!v1)
  {
    *a1 = v6;
  }
}

unint64_t sub_100282540(void *a1)
{
  if (!*(v1 + 112))
  {
    v11 = objc_allocWithZone(NSError);
    v6 = String._bridgeToObjectiveC()();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;
    [v11 initWithDomain:v6 code:21 userInfo:isa];

    swift_willThrow();
    return v6;
  }

  __chkstk_darwin(a1);
  v16 = v4;
  v5 = v4;
  sub_100068FC4(&qword_100508E98, &qword_100413B18);
  v6 = v5;
  NSManagedObjectContext.performAndWait<A>(_:)();

  if (v2)
  {
    return v6;
  }

  __chkstk_darwin(v7);
  v16 = a1;
  result = sub_10033322C(sub_10028525C, &v15, v8);
  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

LABEL_12:

    return 0;
  }

  v13 = result;
  v14 = _CocoaArrayWrapper.endIndex.getter();
  result = v13;
  if (!v14)
  {
    goto LABEL_12;
  }

LABEL_5:
  if ((result & 0xC000000000000001) != 0)
  {
    v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_8;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v10 = *(result + 32);
LABEL_8:
    v6 = v10;

    return v6;
  }

  __break(1u);
  return result;
}

uint64_t sub_100282770(id *a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v29 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100068FC4(&qword_1005031D0, &unk_100413B20);
  __chkstk_darwin(v7);
  v9 = &v29 - v8;
  v10 = sub_100068FC4(&unk_10050BE80, &unk_10040B360);
  __chkstk_darwin(v10 - 8);
  v30 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v29 - v13;
  v16 = __chkstk_darwin(v15);
  v18 = &v29 - v17;
  v19 = [*a1 uuid];
  if (v19)
  {
    v20 = v19;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v21 = *(v5 + 56);
    v21(v18, 0, 1, v4);
  }

  else
  {
    v21 = *(v5 + 56);
    v21(v18, 1, 1, v4);
  }

  (*(v5 + 16))(v14, a2, v4);
  v21(v14, 0, 1, v4);
  v22 = *(v7 + 48);
  sub_1000938D4(v18, v9, &unk_10050BE80, &unk_10040B360);
  sub_1000938D4(v14, &v9[v22], &unk_10050BE80, &unk_10040B360);
  v23 = *(v5 + 48);
  if (v23(v9, 1, v4) != 1)
  {
    v25 = v30;
    sub_1000938D4(v9, v30, &unk_10050BE80, &unk_10040B360);
    if (v23(&v9[v22], 1, v4) != 1)
    {
      v26 = v29;
      (*(v5 + 32))(v29, &v9[v22], v4);
      sub_10028527C();
      v24 = dispatch thunk of static Equatable.== infix(_:_:)();
      v27 = *(v5 + 8);
      v27(v26, v4);
      sub_100075768(v14, &unk_10050BE80, &unk_10040B360);
      sub_100075768(v18, &unk_10050BE80, &unk_10040B360);
      v27(v30, v4);
      sub_100075768(v9, &unk_10050BE80, &unk_10040B360);
      return v24 & 1;
    }

    sub_100075768(v14, &unk_10050BE80, &unk_10040B360);
    sub_100075768(v18, &unk_10050BE80, &unk_10040B360);
    (*(v5 + 8))(v25, v4);
    goto LABEL_9;
  }

  sub_100075768(v14, &unk_10050BE80, &unk_10040B360);
  sub_100075768(v18, &unk_10050BE80, &unk_10040B360);
  if (v23(&v9[v22], 1, v4) != 1)
  {
LABEL_9:
    sub_100075768(v9, &qword_1005031D0, &unk_100413B20);
    v24 = 0;
    return v24 & 1;
  }

  sub_100075768(v9, &unk_10050BE80, &unk_10040B360);
  v24 = 1;
  return v24 & 1;
}

char *sub_100282BF8(void *a1)
{
  v3 = sub_100068FC4(&qword_100507468, &qword_10040FA20);
  __chkstk_darwin(v3 - 8);
  v5 = &v19 - v4;
  v6 = type metadata accessor for UUID();
  __chkstk_darwin(v6 - 8);
  v7 = sub_100282540(a1);
  if (v1)
  {
    return v5;
  }

  v8 = v7;
  if (!v7)
  {
    return 0;
  }

  result = [v7 uuid];
  if (!result)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v10 = result;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v11 = [v8 type];
  if (v11)
  {
    v12 = v11;
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;
  }

  else
  {
    v13 = 0;
    v15 = 0;
  }

  sub_1002820E0(v13, v15, v5);
  v16 = type metadata accessor for CredentialType();
  result = (*(*(v16 - 8) + 48))(v5, 1, v16);
  if (result == 1)
  {
    goto LABEL_13;
  }

  result = [v8 metadata];
  if (result)
  {
    v17 = result;
    static Data._unconditionallyBridgeFromObjectiveC(_:)();

    v18 = objc_allocWithZone(type metadata accessor for Reservation());
    v5 = Reservation.init(uuid:type:metadata:)();

    return v5;
  }

LABEL_14:
  __break(1u);
  return result;
}

Class sub_100282E1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  isa = v4;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v3 + 112);
  if (v13)
  {
    v14 = v13;
    v15 = UUID.init()();
    v20[1] = v20;
    __chkstk_darwin(v15);
    v20[-6] = v14;
    v20[-5] = a1;
    v20[-4] = v12;
    v20[-3] = a2;
    v20[-2] = a3;
    type metadata accessor for Reservation();
    NSManagedObjectContext.performAndWait<A>(_:)();
    v16 = (v10 + 8);

    if (!v4)
    {
      isa = v20[3];
    }

    (*v16)(v12, v9);
  }

  else
  {
    v17 = objc_allocWithZone(NSError);
    v18 = String._bridgeToObjectiveC()();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;
    [v17 initWithDomain:v18 code:21 userInfo:isa];

    swift_willThrow();
  }

  return isa;
}

void sub_10028305C(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, void *a6@<X8>)
{
  v35 = a4;
  v36 = a5;
  v30 = a2;
  v31 = a3;
  v33 = a1;
  v29 = a6;
  v37 = type metadata accessor for CredentialType();
  v8 = *(v37 - 8);
  __chkstk_darwin(v37);
  v34 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for UUID();
  v10 = *(v32 - 8);
  __chkstk_darwin(v32);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Item();
  v13 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext:a1];
  v14 = CredentialType.serialize()();
  v16 = v15;
  v17 = sub_100288788(v14, v15);
  v28 = v6;
  v38 = v17;
  sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
  sub_10007A2D0();
  BidirectionalCollection<>.joined(separator:)();
  sub_10006A178(v14, v16);

  v18 = String._bridgeToObjectiveC()();

  [v13 setType:v18];

  v19 = v31;
  isa = UUID._bridgeToObjectiveC()().super.isa;
  [v13 setUuid:isa];

  v21 = v35;
  v22 = v36;
  v23 = Data._bridgeToObjectiveC()().super.isa;
  [v13 setMetadata:v23];

  (*(v10 + 16))(v12, v19, v32);
  (*(v8 + 16))(v34, v30, v37);
  v24 = objc_allocWithZone(type metadata accessor for Reservation());
  sub_100069E2C(v21, v22);
  v25 = Reservation.init(uuid:type:metadata:)();
  v38 = 0;
  if ([v33 save:&v38])
  {
    v26 = v38;

    *v29 = v25;
  }

  else
  {
    v27 = v38;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }
}

void sub_1002833C4(void *a1@<X1>, uint64_t a2@<X2>, unint64_t a3@<X3>, void *a4@<X4>, void *a5@<X8>)
{
  v60 = a3;
  v56 = a5;
  v57 = a4;
  v59 = a2;
  v6 = type metadata accessor for UUID();
  v58 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100068FC4(&qword_100507468, &qword_10040FA20);
  __chkstk_darwin(v9 - 8);
  v11 = &v49 - v10;
  v12 = type metadata accessor for CredentialType();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v49 - v17;
  v19 = v61;
  v20 = sub_100282540(a1);
  if (!v19)
  {
    v51 = v15;
    v52 = v6;
    v53 = v8;
    v54 = v18;
    v61 = a1;
    v22 = v59;
    v21 = v60;
    v55 = v13;
    if (v20)
    {
      v50 = v20;
      v23 = [v20 type];
      if (v23)
      {
        v24 = v23;
        v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v27 = v26;
      }

      else
      {
        v25 = 0;
        v27 = 0;
      }

      v30 = v12;
      v31 = v58;
      sub_1002820E0(v25, v27, v11);
      v32 = v55;
      v33 = (*(v55 + 48))(v11, 1, v30);
      v34 = v50;
      if (v33 == 1)
      {
        sub_100075768(v11, &qword_100507468, &qword_10040FA20);
        v62 = 0;
        v63 = 0xE000000000000000;
        _StringGuts.grow(_:)(43);

        v62 = 0xD000000000000012;
        v63 = 0x8000000100469F50;
        v35 = [v34 type];
        if (v35)
        {
          v36 = v35;
          sub_1000B9C54();
          v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v39 = v38;

          v40._countAndFlagsBits = v37;
          v40._object = v39;
          String.append(_:)(v40);

          v41._countAndFlagsBits = 0xD000000000000017;
          v41._object = 0x8000000100469F70;
          String.append(_:)(v41);
          sub_10030990C(23, 0, v62, v63, 0);
          swift_willThrow();
        }

        else
        {
          __break(1u);
        }
      }

      else
      {
        v42 = v54;
        (*(v32 + 32))(v54, v11, v30);
        (*(v31 + 16))(v53, v61, v52);
        (*(v32 + 16))(v51, v42, v30);
        v43 = objc_allocWithZone(type metadata accessor for Reservation());
        sub_100069E2C(v22, v21);
        v44 = Reservation.init(uuid:type:metadata:)();
        isa = Data._bridgeToObjectiveC()().super.isa;
        [v34 setMetadata:isa];

        v62 = 0;
        if ([v57 save:&v62])
        {
          v46 = *(v32 + 8);
          v47 = v62;
          v46(v54, v30);

          *v56 = v44;
        }

        else
        {
          v48 = v62;
          _convertNSErrorToError(_:)();

          swift_willThrow();
          (*(v32 + 8))(v54, v30);
        }
      }
    }

    else
    {
      sub_1000B9C54();
      v62 = 0;
      v63 = 0xE000000000000000;
      _StringGuts.grow(_:)(35);

      v62 = 0xD000000000000020;
      v63 = 0x8000000100469F20;
      v28._countAndFlagsBits = UUID.uuidString.getter();
      String.append(_:)(v28);

      v29._countAndFlagsBits = 46;
      v29._object = 0xE100000000000000;
      String.append(_:)(v29);
      sub_10030990C(22, 0, v62, v63, 0);
      swift_willThrow();
    }
  }
}

void sub_100283934(uint64_t a1, void *a2, void *a3)
{
  v5 = sub_100282540(a2);
  if (!v3)
  {
    v6 = v5;
    if (v5)
    {
      [a3 deleteObject:v5];
      v11 = 0;
      if ([a3 save:&v11])
      {
        v7 = v11;
      }

      else
      {
        v10 = v11;
        _convertNSErrorToError(_:)();

        swift_willThrow();
      }
    }

    else
    {
      sub_1000B9C54();
      _StringGuts.grow(_:)(35);

      v8._countAndFlagsBits = UUID.uuidString.getter();
      String.append(_:)(v8);

      v9._countAndFlagsBits = 46;
      v9._object = 0xE100000000000000;
      String.append(_:)(v9);
      sub_10030990C(22, 0, 0xD000000000000020, 0x8000000100469F20, 0);
      swift_willThrow();
    }
  }
}

void sub_100283ABC(uint64_t a1, void *a2)
{
  if (*(a1 + 112))
  {
    __chkstk_darwin(a1);
    v5 = v4;
    sub_100068FC4(&qword_100508E98, &qword_100413B18);
    NSManagedObjectContext.performAndWait<A>(_:)();

    if (v2)
    {
      return;
    }

    if (v14 >> 62)
    {
      v6 = _CocoaArrayWrapper.endIndex.getter();
      if (v6)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v6 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v6)
      {
LABEL_5:
        if (v6 < 1)
        {
          __break(1u);
        }

        for (i = 0; i != v6; ++i)
        {
          if ((v14 & 0xC000000000000001) != 0)
          {
            v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v8 = *(v14 + i + 4);
          }

          v9 = v8;
          [a2 deleteObject:v8];
        }
      }
    }

    v14 = 0;
    if ([a2 save:&v14])
    {
      v13 = v14;
      return;
    }

    v12.super.isa = v14;
    _convertNSErrorToError(_:)();
    goto LABEL_16;
  }

  v10 = objc_allocWithZone(NSError);
  v11 = String._bridgeToObjectiveC()();
  v12.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  [v10 initWithDomain:v11 code:21 userInfo:v12.super.isa];

LABEL_16:
  swift_willThrow();
}

uint64_t sub_100283D1C()
{
  v0 = type metadata accessor for URL.DirectoryHint();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100068FC4(&unk_10050BEA0, &unk_10040F450);
  __chkstk_darwin(v4 - 8);
  v6 = &v9 - v5;
  v7 = type metadata accessor for URL();
  sub_1000B6A94(v7, qword_100508D48);
  sub_1000958E4(v7, qword_100508D48);
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  (*(v1 + 104))(v3, enum case for URL.DirectoryHint.inferFromPath(_:), v0);
  return URL.init(filePath:directoryHint:relativeTo:)();
}

uint64_t sub_100283EC8()
{
  v0 = type metadata accessor for URL.DirectoryHint();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100068FC4(&unk_10050BEA0, &unk_10040F450);
  __chkstk_darwin(v4 - 8);
  v6 = &v9 - v5;
  v7 = type metadata accessor for URL();
  sub_1000B6A94(v7, qword_100508D60);
  sub_1000958E4(v7, qword_100508D60);
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  (*(v1 + 104))(v3, enum case for URL.DirectoryHint.inferFromPath(_:), v0);
  return URL.init(filePath:directoryHint:relativeTo:)();
}

void sub_100284074()
{
  v1 = v0;
  v2 = type metadata accessor for NSPersistentStore.StoreType();
  v85 = *(v2 - 8);
  v86 = v2;
  __chkstk_darwin(v2);
  v84 = &v77 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for URL.DirectoryHint();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v77 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v82 = &v77 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v77 - v12;
  __chkstk_darwin(v14);
  v92 = &v77 - v15;
  swift_defaultActor_initialize();
  *(v0 + 112) = 0;
  v81 = OBJC_IVAR____TtC10seserviced24SERPersistenceController_logger;
  Logger.init(subsystem:category:)();
  if (qword_100501BE0 != -1)
  {
    swift_once();
  }

  sub_1000958E4(v8, qword_100508D48);
  v16 = objc_allocWithZone(NSManagedObjectModel);
  URL._bridgeToObjectiveC()(v17);
  v19 = v18;
  v20 = [v16 initWithContentsOfURL:v18];

  v90 = v20;
  if (!v20)
  {
    sub_1000B9C54();
    sub_10030990C(21, 0, 0xD00000000000001ELL, 0x8000000100469E60, 0);
    swift_willThrow();

    return;
  }

  v89 = v1;
  if (qword_100501BE8 != -1)
  {
    swift_once();
  }

  v21 = sub_1000958E4(v8, qword_100508D60);
  v22 = *(v9 + 16);
  v80 = v21;
  v87 = v22;
  v88 = v9 + 16;
  (v22)(v13);
  v93[0] = 0xD000000000000022;
  v93[1] = 0x8000000100469E80;
  (*(v5 + 104))(v7, enum case for URL.DirectoryHint.inferFromPath(_:), v4);
  sub_10012512C();
  URL.appending<A>(path:directoryHint:)();
  (*(v5 + 8))(v7, v4);
  v23 = v9 + 8;
  v24 = *(v9 + 8);
  v91 = v8;
  v24(v13, v8);
  v25 = objc_opt_self();
  URL.pathComponents.getter();
  isa = Array._bridgeToObjectiveC()().super.isa;

  v27 = [v25 pathWithComponents:isa];

  v28 = v27;
  v29 = v27;
  v30 = v27;
  if (!v27)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v30 = String._bridgeToObjectiveC()();

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v29 = String._bridgeToObjectiveC()();

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v28 = String._bridgeToObjectiveC()();
  }

  v79 = v29;
  v31 = objc_opt_self();
  v32 = v27;
  v33 = [v31 defaultManager];
  v34 = v91;
  v87(v13, v80, v91);
  URL._bridgeToObjectiveC()(v35);
  v37 = v36;
  v24(v13, v34);
  v93[0] = 0;
  LODWORD(v34) = [v33 createDirectoryAtURL:v37 withIntermediateDirectories:1 attributes:0 error:v93];

  if (!v34)
  {
    v62 = v93[0];

    _convertNSErrorToError(_:)();
    swift_willThrow();

    v24(v92, v91);
    return;
  }

  v78 = v24;
  v80 = v23;
  v38 = v93[0];
  v39 = [v31 defaultManager];
  v40 = [v39 fileExistsAtPath:v30];

  v41 = [v31 defaultManager];
  v42 = v79;
  v43 = [v41 isReadableFileAtPath:v79];

  v44 = [v31 defaultManager];
  v45 = [v44 isWritableFileAtPath:v28];

  v46 = v82;
  v47 = v91;
  v48 = v92;
  v87(v82, v92, v91);
  v49 = Logger.logObject.getter();
  v50 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v53 = v46;
    v54 = v47;
    LODWORD(v88) = v45;
    v93[0] = v52;
    *v51 = 136315906;
    v55 = URL.description.getter();
    LODWORD(v87) = v43;
    v57 = v56;
    v78(v53, v54);
    v58 = sub_1002FFA0C(v55, v57, v93);

    *(v51 + 4) = v58;
    *(v51 + 12) = 2080;
    if (v40)
    {
      v59 = 1702195828;
    }

    else
    {
      v59 = 0x65736C6166;
    }

    if (v40)
    {
      v60 = 0xE400000000000000;
    }

    else
    {
      v60 = 0xE500000000000000;
    }

    v61 = sub_1002FFA0C(v59, v60, v93);

    *(v51 + 14) = v61;
    *(v51 + 22) = 1024;
    *(v51 + 24) = v87;
    *(v51 + 28) = 1024;
    *(v51 + 30) = v88;
    _os_log_impl(&_mh_execute_header, v49, v50, "Storage path %s for ReservationsManager exists %s R_OK %{BOOL}d W_OK %{BOOL}d ", v51, 0x22u);
    swift_arrayDestroy();

    v48 = v92;
  }

  else
  {

    v78(v46, v47);
  }

  sub_100068FC4(&qword_100508EA8, &qword_100413B60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100409900;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v64;
  *(inited + 48) = 1;
  *(inited + 56) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 64) = v65;
  *(inited + 72) = 1;
  v66 = sub_100091C10(inited);
  swift_setDeallocating();
  sub_100068FC4(&qword_100508EB0, &qword_100413B68);
  swift_arrayDestroy();
  v67 = objc_allocWithZone(NSPersistentStoreCoordinator);
  v68 = v90;
  v69 = [v67 initWithManagedObjectModel:v90];
  v70 = v84;
  static NSPersistentStore.StoreType.sqlite.getter();
  sub_100195B30(v66);
  v71 = v83;
  v72 = NSPersistentStoreCoordinator.addPersistentStore(type:configuration:at:options:)();
  if (v71)
  {

    (*(v85 + 8))(v70, v86);
LABEL_24:
    v78(v48, v91);
    return;
  }

  v73 = v72;

  (*(v85 + 8))(v70, v86);
  v74 = [objc_allocWithZone(NSManagedObjectContext) initWithConcurrencyType:1];
  v75 = *(v89 + 112);
  *(v89 + 112) = v74;
  v76 = v74;

  if (v76)
  {

    [v76 setPersistentStoreCoordinator:v69];

    goto LABEL_24;
  }

  __break(1u);
}