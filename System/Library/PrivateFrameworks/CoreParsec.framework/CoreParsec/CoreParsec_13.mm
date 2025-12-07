unint64_t sub_100122BB8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t j)
{
  if (qword_10021BFE0 != -1)
  {
    swift_once();
  }

  v6 = qword_10021EA50;
  isa = Data._bridgeToObjectiveC()().super.isa;
  [v6 updateData:isa];

  [v6 seekToOffset:0];
  v8 = *(j + 16);
  v9 = Data.count.getter();
  if (v9 < 0)
  {
    __break(1u);
    __break(1u);
LABEL_60:
    __break(1u);
  }

  v10 = v9;
  v55 = v4;
  if (v8)
  {
    v11 = 0;
    v12 = j + 32;
    v53 = j + 32;
    v54 = v8;
    while (1)
    {
      v13 = *(v12 + 8 * v11);
      while (1)
      {
        v14 = [v6 position];
        if ((v14 & 0x8000000000000000) == 0 && v14 >= v10)
        {
          j = 0;
          goto LABEL_55;
        }

        v15 = 0;
        v16 = 0;
        for (i = 0; ; ++i)
        {
          if (i > 9)
          {
            v26 = 0;
            goto LABEL_21;
          }

          LOBYTE(v57) = 0;
          [v6 position];
          if (j >= [sub_100005A98() position] && (objc_msgSend(v6, "position"), j <= objc_msgSend(sub_100005A98(), "length")))
          {
            j = [v6 data];
            v18 = [v6 position];
            sub_1000067F8(v18, v19, v20, v21, v22, v23, v24, v25, v53, v54, v55);

            [v6 setPosition:{objc_msgSend(v6, "position") + 1}];
          }

          else
          {
            [v6 _setError];
          }

          v16 |= (v57 & 0x7F) << v15;
          if ((v57 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
        }

        v26 = [v6 hasError] ? 0 : v16;
LABEL_21:
        j = v26 & 7;
        if (v13 == (v26 >> 3))
        {
          break;
        }

        PBReaderSkipValueWithTag();
      }

      if (j != 2)
      {
        break;
      }

      v27 = 0;
      for (j = 0; j <= 9; j = (j + 1))
      {
        LOBYTE(v57) = 0;
        v28 = [v6 position] + 1;
        if (v28 >= [v6 position] && (v29 = objc_msgSend(v6, "position") + 1, v29 <= objc_msgSend(v6, "length")))
        {
          v30 = [v6 data];
          [v30 getBytes:&v57 range:{objc_msgSend(v6, "position"), 1}];

          [v6 setPosition:{objc_msgSend(v6, "position") + 1}];
        }

        else
        {
          [v6 _setError];
        }

        sub_100008B00();
        if ((v31 & 0x80) == 0)
        {
          [v6 hasError];
          break;
        }

        v27 += 7;
      }

      v32 = [v6 position];
      if ((v32 & 0x8000000000000000) != 0)
      {
        goto LABEL_60;
      }

      ++v11;
      v10 = v32;
      v12 = v53;
      if (v11 == v54)
      {
        goto LABEL_36;
      }
    }

    sub_10011DDBC();
    swift_allocError();
    v50 = v49;
    v57 = 0;
    v58 = 0xE000000000000000;
    _StringGuts.grow(_:)(38);

    v57 = 0xD000000000000024;
    v58 = 0x80000001001B23E0;
    v51._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    j = v51._object;
    String.append(_:)(v51);

    v52 = v58;
    *v50 = v57;
    *(v50 + 8) = v52;
    *(v50 + 41) = 12;
    swift_willThrow();
    [v6 updateData:0];
  }

  else
  {
LABEL_36:
    while (1)
    {
      v33 = [v6 position];
      if ((v33 & 0x8000000000000000) == 0 && v33 >= v10)
      {
        break;
      }

      v34 = 0;
      for (k = 0; k <= 9; ++k)
      {
        LOBYTE(v57) = 0;
        [v6 position];
        if (j >= [sub_100005A98() position] && (objc_msgSend(v6, "position"), j <= objc_msgSend(sub_100005A98(), "length")))
        {
          j = [v6 data];
          v36 = [v6 position];
          sub_1000067F8(v36, v37, v38, v39, v40, v41, v42, v43, v53, v54, v55);

          [v6 setPosition:{objc_msgSend(v6, "position") + 1}];
        }

        else
        {
          [v6 _setError];
        }

        sub_100008B00();
        if ((v44 & 0x80) == 0)
        {
          [v6 hasError];
          break;
        }

        v34 += 7;
      }

      j = 0;
      v45 = *(a1 + 16) + 1;
      v46 = (a1 + 40);
      while (--v45)
      {
        v47 = v46;
        v46 += 2;
        if (*(v47 - 1) <= 0 && *v47 >= 0)
        {
          goto LABEL_55;
        }
      }

      PBReaderSkipValueWithTag();
    }

    j = 0;
LABEL_55:
    [v6 updateData:0];
  }

  return j;
}

void sub_100123108()
{
  sub_100005510();
  if (v4)
  {
    sub_100005DE0();
    if (v5 != v6)
    {
      sub_100005900();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_10000381C();
    }
  }

  sub_100006994();
  if (v3)
  {
    sub_100046184(&qword_10021C7C0, &qword_1001A1328);
    v7 = swift_allocObject();
    v8 = j__malloc_size(v7);
    v7[2] = v2;
    v7[3] = 2 * ((v8 - 32) / 40);
  }

  else
  {
    v7 = _swiftEmptyArrayStorage;
  }

  if (v1)
  {
    if (v7 != v0 || &v0[5 * v2 + 4] <= v7 + 4)
    {
      memmove(v7 + 4, v0 + 4, 40 * v2);
    }

    v0[2] = 0;
  }

  else
  {
    sub_100046184(&qword_10021C7C8, &qword_1001A1330);
    swift_arrayInitWithCopy();
  }
}

void sub_100123220()
{
  sub_100005510();
  if (v4)
  {
    sub_100005DE0();
    if (v5 != v6)
    {
      sub_100005900();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_10000381C();
    }
  }

  sub_10000AC58();
  if (v2)
  {
    sub_100046184(&qword_10021C7A8, &qword_1001A1308);
    v7 = swift_allocObject();
    j__malloc_size(v7);
    sub_100007D6C();
    *(v7 + 2) = v3;
    *(v7 + 3) = v8;
  }

  else
  {
    v7 = _swiftEmptyArrayStorage;
  }

  v9 = v7 + 32;
  v10 = v0 + 32;
  if (v1)
  {
    if (v7 != v0 || &v10[8 * v3] <= v9)
    {
      memmove(v9, v10, 8 * v3);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    memcpy(v9, v10, 8 * v3);
  }
}

char *sub_1001232FC(char *result, int64_t a2, char a3, char *a4)
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
    sub_100046184(&qword_10021C7D0, &qword_1001A1338);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 8);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[8 * v8] <= v12)
    {
      memmove(v12, v13, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 8 * v8);
  }

  return v10;
}

void sub_100123410()
{
  sub_100005510();
  if (v4)
  {
    sub_100005DE0();
    if (v5 != v6)
    {
      sub_100005900();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_10000381C();
    }
  }

  sub_10000AC58();
  if (v2)
  {
    sub_100046184(v7, v8);
    v9 = swift_allocObject();
    j__malloc_size(v9);
    sub_100007D6C();
    *(v9 + 2) = v3;
    *(v9 + 3) = v10;
  }

  else
  {
    v9 = _swiftEmptyArrayStorage;
  }

  v11 = v9 + 32;
  v12 = v0 + 32;
  if (v1)
  {
    if (v9 != v0 || &v12[16 * v3] <= v11)
    {
      memmove(v11, v12, 16 * v3);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    memcpy(v11, v12, 16 * v3);
  }
}

void sub_1001234E4()
{
  sub_100005510();
  if (v4)
  {
    sub_100005DE0();
    if (v5 != v6)
    {
      sub_100005900();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_10000381C();
    }
  }

  sub_10000AC58();
  if (v2)
  {
    sub_100046184(&qword_10021C7A0, &qword_1001A1300);
    v7 = swift_allocObject();
    v8 = j__malloc_size(v7);
    *(v7 + 2) = v3;
    *(v7 + 3) = 2 * ((v8 - 32) / 24);
  }

  else
  {
    v7 = _swiftEmptyArrayStorage;
  }

  v9 = v7 + 32;
  v10 = v0 + 32;
  v11 = 24 * v3;
  if (v1)
  {
    if (v7 != v0 || &v10[v11] <= v9)
    {
      memmove(v9, v10, v11);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    memcpy(v9, v10, v11);
  }
}

void sub_1001235CC()
{
  sub_100005510();
  if (v4)
  {
    sub_100005DE0();
    if (v5 != v6)
    {
      sub_100005900();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_10000381C();
    }
  }

  sub_100006994();
  if (v3)
  {
    sub_100046184(&qword_10021C7B8, &qword_1001A1320);
    v7 = swift_allocObject();
    j__malloc_size(v7);
    sub_100007D6C();
    *(v7 + 2) = v2;
    *(v7 + 3) = v8;
  }

  else
  {
    v7 = _swiftEmptyArrayStorage;
  }

  v9 = v7 + 32;
  v10 = v0 + 32;
  if (v1)
  {
    if (v7 != v0 || &v10[32 * v2] <= v9)
    {
      memmove(v9, v10, 32 * v2);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1001236B0()
{
  sub_100005510();
  if (v4)
  {
    sub_100005DE0();
    if (v5 != v6)
    {
      sub_100005900();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_10000381C();
    }
  }

  sub_100006994();
  if (v3)
  {
    sub_100046184(&qword_10021C7B0, &qword_1001A1318);
    v7 = swift_allocObject();
    j__malloc_size(v7);
    sub_100007D6C();
    *(v7 + 2) = v2;
    *(v7 + 3) = v8;
  }

  else
  {
    v7 = _swiftEmptyArrayStorage;
  }

  v9 = v7 + 32;
  v10 = v0 + 32;
  if (v1)
  {
    if (v7 != v0 || &v10[64 * v2] <= v9)
    {
      memmove(v9, v10, v2 << 6);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

char *sub_100123794(char *__src, uint64_t a2, char *__dst)
{
  if (__dst != __src || &__src[56 * a2] <= __dst)
  {
    return memmove(__dst, __src, 56 * a2);
  }

  return __src;
}

char *sub_1001237C4(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[24 * a2] <= a3)
  {
    return sub_100006164(a3, result);
  }

  return result;
}

unsigned __int8 *sub_1001237E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = String.init<A>(_:)();
  v6 = result;
  v7 = v5;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_100107FD4(result, v5);
    v36 = v35;

    v7 = v36;
    if ((v36 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v8 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
    }

    v9 = *result;
    if (v9 == 43)
    {
      if (v8 >= 1)
      {
        v20 = v8 - 1;
        if (v8 != 1)
        {
          v21 = a3 + 48;
          v22 = a3 + 55;
          v23 = a3 + 87;
          if (a3 > 10)
          {
            v21 = 58;
          }

          else
          {
            v23 = 97;
            v22 = 65;
          }

          if (result)
          {
            v14 = 0;
            v24 = result + 1;
            do
            {
              v25 = *v24;
              if (v25 < 0x30 || v25 >= v21)
              {
                if (v25 < 0x41 || v25 >= v22)
                {
                  v18 = 0;
                  if (v25 < 0x61 || v25 >= v23)
                  {
                    goto LABEL_127;
                  }

                  v26 = -87;
                }

                else
                {
                  v26 = -55;
                }
              }

              else
              {
                v26 = -48;
              }

              v27 = v14 * a3;
              if ((v14 * a3) >> 64 != (v14 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v14 = v27 + (v25 + v26);
              if (__OFADD__(v27, (v25 + v26)))
              {
                goto LABEL_126;
              }

              ++v24;
              --v20;
            }

            while (v20);
LABEL_46:
            v18 = v14;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v18 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v9 != 45)
    {
      if (v8)
      {
        v28 = a3 + 48;
        v29 = a3 + 55;
        v30 = a3 + 87;
        if (a3 > 10)
        {
          v28 = 58;
        }

        else
        {
          v30 = 97;
          v29 = 65;
        }

        if (result)
        {
          v31 = 0;
          do
          {
            v32 = *result;
            if (v32 < 0x30 || v32 >= v28)
            {
              if (v32 < 0x41 || v32 >= v29)
              {
                v18 = 0;
                if (v32 < 0x61 || v32 >= v30)
                {
                  goto LABEL_127;
                }

                v33 = -87;
              }

              else
              {
                v33 = -55;
              }
            }

            else
            {
              v33 = -48;
            }

            v34 = v31 * a3;
            if ((v31 * a3) >> 64 != (v31 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v31 = v34 + (v32 + v33);
            if (__OFADD__(v34, (v32 + v33)))
            {
              goto LABEL_126;
            }

            ++result;
            --v8;
          }

          while (v8);
          v18 = v34 + (v32 + v33);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v8 >= 1)
    {
      v10 = v8 - 1;
      if (v8 != 1)
      {
        v11 = a3 + 48;
        v12 = a3 + 55;
        v13 = a3 + 87;
        if (a3 > 10)
        {
          v11 = 58;
        }

        else
        {
          v13 = 97;
          v12 = 65;
        }

        if (result)
        {
          v14 = 0;
          v15 = result + 1;
          while (1)
          {
            v16 = *v15;
            if (v16 < 0x30 || v16 >= v11)
            {
              if (v16 < 0x41 || v16 >= v12)
              {
                v18 = 0;
                if (v16 < 0x61 || v16 >= v13)
                {
                  goto LABEL_127;
                }

                v17 = -87;
              }

              else
              {
                v17 = -55;
              }
            }

            else
            {
              v17 = -48;
            }

            v19 = v14 * a3;
            if ((v14 * a3) >> 64 != (v14 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v14 = v19 - (v16 + v17);
            if (__OFSUB__(v19, (v16 + v17)))
            {
              goto LABEL_126;
            }

            ++v15;
            if (!--v10)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v18 = 0;
LABEL_127:

        return v18;
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

  v37 = HIBYTE(v7) & 0xF;
  v62 = v6;
  v63 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v37)
      {
        v39 = 0;
        v55 = a3 + 48;
        v56 = a3 + 55;
        v57 = a3 + 87;
        if (a3 > 10)
        {
          v55 = 58;
        }

        else
        {
          v57 = 97;
          v56 = 65;
        }

        v58 = &v62;
        while (1)
        {
          v59 = *v58;
          if (v59 < 0x30 || v59 >= v55)
          {
            if (v59 < 0x41 || v59 >= v56)
            {
              v18 = 0;
              if (v59 < 0x61 || v59 >= v57)
              {
                goto LABEL_127;
              }

              v60 = -87;
            }

            else
            {
              v60 = -55;
            }
          }

          else
          {
            v60 = -48;
          }

          v61 = v39 * a3;
          if ((v39 * a3) >> 64 != (v39 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v39 = v61 + (v59 + v60);
          if (__OFADD__(v61, (v59 + v60)))
          {
            goto LABEL_126;
          }

          v58 = (v58 + 1);
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v37)
    {
      v38 = v37 - 1;
      if (v38)
      {
        v39 = 0;
        v40 = a3 + 48;
        v41 = a3 + 55;
        v42 = a3 + 87;
        if (a3 > 10)
        {
          v40 = 58;
        }

        else
        {
          v42 = 97;
          v41 = 65;
        }

        v43 = &v62 + 1;
        while (1)
        {
          v44 = *v43;
          if (v44 < 0x30 || v44 >= v40)
          {
            if (v44 < 0x41 || v44 >= v41)
            {
              v18 = 0;
              if (v44 < 0x61 || v44 >= v42)
              {
                goto LABEL_127;
              }

              v45 = -87;
            }

            else
            {
              v45 = -55;
            }
          }

          else
          {
            v45 = -48;
          }

          v46 = v39 * a3;
          if ((v39 * a3) >> 64 != (v39 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v39 = v46 - (v44 + v45);
          if (__OFSUB__(v46, (v44 + v45)))
          {
            goto LABEL_126;
          }

          ++v43;
          if (!--v38)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v37)
  {
    v47 = v37 - 1;
    if (v47)
    {
      v39 = 0;
      v48 = a3 + 48;
      v49 = a3 + 55;
      v50 = a3 + 87;
      if (a3 > 10)
      {
        v48 = 58;
      }

      else
      {
        v50 = 97;
        v49 = 65;
      }

      v51 = &v62 + 1;
      do
      {
        v52 = *v51;
        if (v52 < 0x30 || v52 >= v48)
        {
          if (v52 < 0x41 || v52 >= v49)
          {
            v18 = 0;
            if (v52 < 0x61 || v52 >= v50)
            {
              goto LABEL_127;
            }

            v53 = -87;
          }

          else
          {
            v53 = -55;
          }
        }

        else
        {
          v53 = -48;
        }

        v54 = v39 * a3;
        if ((v39 * a3) >> 64 != (v39 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v39 = v54 + (v52 + v53);
        if (__OFADD__(v54, (v52 + v53)))
        {
          goto LABEL_126;
        }

        ++v51;
        --v47;
      }

      while (v47);
LABEL_125:
      v18 = v39;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> PGetTimeWindowEndFunction.perform(with:arguments:)(SQLiter::SQLiteContext with, Swift::OpaquePointer arguments)
{
  v3 = sub_10011DE10();
  if (!v2)
  {
    v4 = v3;
    swift_beginAccess();
    v5 = *(v4 + 40);

    SQLiteContext.setDouble(_:)(v5);
  }
}

uint64_t sub_100123E40()
{
  v1 = *v0;

  return v1;
}

void sub_100123E70(void *a1@<X8>)
{
  _CPStartNetworkSearchFeedback.redactUnused()();
  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_100123EA0(uint64_t a1)
{
  v2 = sub_100123FC8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100123EDC(uint64_t a1)
{
  v2 = sub_100123FC8();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_100123F1C()
{
  result = qword_10021C910;
  if (!qword_10021C910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021C910);
  }

  return result;
}

unint64_t sub_100123F74()
{
  result = qword_10021C918;
  if (!qword_10021C918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021C918);
  }

  return result;
}

unint64_t sub_100123FC8()
{
  result = qword_10021C920;
  if (!qword_10021C920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021C920);
  }

  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> PMessageNameFunction.perform(with:arguments:)(SQLiter::SQLiteContext with, Swift::OpaquePointer arguments)
{
  if (*(arguments._rawValue + 2))
  {
    v4 = *(arguments._rawValue + 4);
    if (SQLiteArgument.isNull.getter(v4))
    {
      SQLiteContext.setNull()();
    }

    else
    {
      sub_10011DE10();
      if (!v2)
      {
        SQLiteBaseSchematizer.getSQLiteBridge()();
        v6 = v5;

        ObjectType = swift_getObjectType();
        (*(v6 + 24))(v4, ObjectType, v6);
        v9 = v8;
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        v10 = swift_getObjectType();
        (*(v9 + 16))(v16, v10, v9);
        swift_unknownObjectRelease();
        v12 = v17;
        v11 = v18;
        sub_100007534(v16, v17);
        v13 = (*(*(v11 + 8) + 8))(v12);
        v15 = v14;
        sub_100007378(v16);
        SQLiteContext.setString(_:destructor:)(v13, v15, 1, with.context._rawValue);
      }
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t static ValueType.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  sub_10011FB8C(a1, &v27);
  sub_10011FB8C(a2, &v29);
  if (!v28)
  {
    sub_10011FB8C(&v27, v26);
    if (!v32)
    {
      goto LABEL_4;
    }

    goto LABEL_10;
  }

  if (v28 != 1)
  {
    sub_100008628();
    if (v17)
    {
      v18 = v16 | v14 | v15;
      if (v13 != 1 || v18)
      {
        if (v13 != 2 || v18)
        {
          if (v13 != 3 || v18)
          {
            if (v13 != 4 || v18)
            {
              if (v13 != 5 || v18)
              {
                if (v13 != 6 || v18)
                {
                  if (v13 != 7 || v18)
                  {
                    sub_100003CA0();
                    if (!v11 || v29 != 8)
                    {
                      goto LABEL_11;
                    }
                  }

                  else
                  {
                    sub_100003CA0();
                    if (!v11 || v29 != 7)
                    {
                      goto LABEL_11;
                    }
                  }
                }

                else
                {
                  sub_100003CA0();
                  if (!v11 || v29 != 6)
                  {
                    goto LABEL_11;
                  }
                }
              }

              else
              {
                sub_100003CA0();
                if (!v11 || v29 != 5)
                {
                  goto LABEL_11;
                }
              }
            }

            else
            {
              sub_100003CA0();
              if (!v11 || v29 != 4)
              {
                goto LABEL_11;
              }
            }
          }

          else
          {
            sub_100003CA0();
            if (!v11 || v29 != 3)
            {
              goto LABEL_11;
            }
          }
        }

        else
        {
          sub_100003CA0();
          if (!v11 || v29 != 2)
          {
            goto LABEL_11;
          }
        }
      }

      else
      {
        sub_100003CA0();
        if (!v11 || v29 != 1)
        {
          goto LABEL_11;
        }
      }

      v20 = vorrq_s8(v30, v31);
      if (vorr_s8(*v20.i8, *&vextq_s8(v20, v20, 8uLL)))
      {
LABEL_11:
        sub_1001244BC(&v27);
        v12 = 0;
        return v12 & 1;
      }
    }

    else
    {
      sub_100003CA0();
      if (!v11)
      {
        goto LABEL_11;
      }

      v19 = vorrq_s8(v30, v31);
      if (*&vorr_s8(*v19.i8, *&vextq_s8(v19, v19, 8uLL)) | v29)
      {
        goto LABEL_11;
      }
    }

    sub_10011FBE8(&v27);
    v12 = 1;
    return v12 & 1;
  }

  sub_10011FB8C(&v27, v26);
  if (v32 != 1)
  {
LABEL_10:
    sub_100007378(v26);
    goto LABEL_11;
  }

LABEL_4:
  sub_100008C84(v26, v24);
  sub_100008C84(&v29, v22);
  v3 = v25;
  sub_100007534(v24, v25);
  sub_100003C24();
  v5 = v4(v3);
  v7 = v6;
  v8 = v23;
  sub_100007534(v22, v23);
  sub_100003C24();
  v11 = v5 == v9(v8) && v7 == v10;
  if (v11)
  {
    v12 = 1;
  }

  else
  {
    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  sub_100007378(v22);
  sub_100007378(v24);
  sub_10011FBE8(&v27);
  return v12 & 1;
}

uint64_t sub_1001244BC(uint64_t a1)
{
  v2 = sub_100046184(&qword_10021CA60, &qword_1001A1448);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t ValueType.description.getter()
{
  sub_10011FB8C(v0, &v26);
  if (!v27)
  {
    sub_100008C84(&v26, v24);
    _StringGuts.grow(_:)(38);
    v6 = v25;
    sub_100007534(v24, v25);
    sub_100003C24();
    v8 = v7(v6);

    v23 = v8;
    v9._countAndFlagsBits = 0xD000000000000021;
    v9._object = 0x80000001001B2490;
    String.append(_:)(v9);
    v10 = v25;
    sub_100007534(v24, v25);
    sub_100003C24();
    v12._countAndFlagsBits = v11(v10);
    String.append(_:)(v12);

    v4 = 41;
    v5 = 0xE100000000000000;
    goto LABEL_5;
  }

  if (v27 == 1)
  {
    sub_100008C84(&v26, v24);
    _StringGuts.grow(_:)(20);

    v23 = 0x206567617373656DLL;
    v1 = v25;
    sub_100007534(v24, v25);
    sub_100003C24();
    v3._countAndFlagsBits = v2(v1);
    String.append(_:)(v3);

    v4 = 0x616D6568637320;
    v5 = 0xE700000000000000;
LABEL_5:
    String.append(_:)(*&v4);
    v13 = v23;
    sub_100007378(v24);
    return v13;
  }

  sub_100008628();
  if (!v18)
  {
    return 0xD000000000000011;
  }

  v19 = v17 | v15 | v16;
  if (v14 == 1 && !v19)
  {
    goto LABEL_9;
  }

  if (v14 == 2 && !v19)
  {
    return 0xD000000000000011;
  }

  if (v14 == 3 && !v19)
  {
LABEL_9:
    sub_1000044F8();
    return v20 | 2;
  }

  else if (v14 != 4 || v19)
  {
    if (v14 != 5 || v19)
    {
      if (v14 != 6 || v19)
      {
        if (v14 == 7 && v19 == 0)
        {
          return 0x7274732074786574;
        }

        else
        {
          return 0x64207972616E6962;
        }
      }

      else
      {
        return 0x6E61656C6F6F62;
      }
    }

    else
    {
      sub_1000044F8();
      return v22 | 4;
    }
  }

  else
  {
    return 0x676E6974616F6C66;
  }
}

uint64_t sub_100124848(uint64_t a1)
{
  if ((*(a1 + 40) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 40) & 3;
  }
}

__n128 sub_100124864(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_100124878(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 41))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 40);
  if (v3 >= 3)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1001248B4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_100124900(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 40) = a2;
  return result;
}

uint64_t sub_100124944(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFD && *(a1 + 17))
    {
      v2 = *a1 + 252;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 3)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100124984(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
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

void sub_1001249E0(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t *a4@<X8>)
{
  switch(a3)
  {
    case 1:
      a4[3] = &type metadata for String;
      *a4 = a1;
      a4[1] = a2;
      sub_100007D78();

      return;
    case 2:
      v8 = *(a1 + 16);
      if (v8)
      {
        sub_100142F90(0, v8, 0);
        v9 = a1 + 48;
        do
        {
          v10 = sub_10000623C();
          sub_10011CE44(v10, v11, v12);
          v13 = sub_10000623C();
          sub_1001249E0(v13, v14, v15, v16);
          v17 = sub_10000623C();
          sub_10011CE88(v17, v18, v19);
          v21 = _swiftEmptyArrayStorage[2];
          v20 = _swiftEmptyArrayStorage[3];
          if (v21 >= v20 >> 1)
          {
            sub_100142F90((v20 > 1), v21 + 1, 1);
          }

          v9 += 24;
          _swiftEmptyArrayStorage[2] = v21 + 1;
          sub_100028734(v60, &_swiftEmptyArrayStorage[4 * v21 + 4]);
          --v8;
        }

        while (v8);
      }

      a4[3] = sub_100046184(&qword_100215398, &qword_1001996A0);
      *a4 = _swiftEmptyArrayStorage;
      goto LABEL_25;
    case 3:
      sub_100046184(&qword_100216690, &qword_1001A0410);
      v22 = static _DictionaryStorage.copy(original:)();
      v23 = 0;
      sub_100004154();
      i = v26 & v25;
      v29 = (v28 + 63) >> 6;
      v55 = v22 + 64;
      v56 = v22;
      if ((v26 & v25) != 0)
      {
        goto LABEL_12;
      }

      break;
    default:
      a4[3] = sub_100005180(0, &qword_100216EF0, NSNumber_ptr);
      *a4 = a1;
      sub_100007D78();

      v7 = v5;
      return;
  }

LABEL_13:
  v31 = v23;
  while (1)
  {
    v23 = v31 + 1;
    if (__OFADD__(v31, 1))
    {
      __break(1u);
LABEL_27:
      __break(1u);
      return;
    }

    if (v23 >= v29)
    {
      break;
    }

    v32 = *(a1 + 64 + 8 * v23);
    ++v31;
    if (v32)
    {
      v30 = __clz(__rbit64(v32));
      for (i = (v32 - 1) & v32; ; i &= i - 1)
      {
        v33 = v30 | (v23 << 6);
        v34 = (*(v24 + 48) + 16 * v33);
        v35 = *v34;
        v36 = v34[1];

        v37 = sub_10000AC68();
        sub_10011CE44(v37, v38, v39);
        v40 = sub_10000AC68();
        sub_1001249E0(v40, v41, v42, v43);
        v44 = sub_10000AC68();
        sub_10011CE88(v44, v45, v46);
        sub_10000813C();
        v22 = v56;
        *(v55 + v47) |= v48;
        v49 = (v56[6] + 16 * v33);
        *v49 = v35;
        v49[1] = v36;
        sub_100028734(v60, (v56[7] + 32 * v33));
        v50 = v56[2];
        v51 = __OFADD__(v50, 1);
        v52 = v50 + 1;
        if (v51)
        {
          break;
        }

        v56[2] = v52;
        v24 = a1;
        if (!i)
        {
          goto LABEL_13;
        }

LABEL_12:
        v30 = __clz(__rbit64(i));
      }

      goto LABEL_27;
    }
  }

  a4[3] = sub_100046184(qword_100214E88, qword_100198FA0);
  *a4 = v22;
LABEL_25:
  sub_100007D78();
}

void sub_100124CE8(void *a1)
{
  v2 = v1;
  v3 = a1;
  sub_100009848(a1, v74);
  v4 = sub_100005180(0, &qword_100216EF0, NSNumber_ptr);
  if (sub_100006C34(v73, v5, v6, v4) || sub_100006C34(v73, v7, v8, &type metadata for String))
  {
    sub_100007378(v3);
    goto LABEL_31;
  }

  v9 = sub_100046184(&qword_100215398, &qword_1001996A0);
  if (sub_100006C34(&v75, v10, v11, v9))
  {
    v12 = v75;
    v13 = *(v75 + 16);
    if (v13)
    {
      v67 = v3;
      sub_100142FB0(0, v13, 0);
      v14 = 0;
      v15 = v12 + 32;
      v69 = v12;
      while (v14 < *(v12 + 16))
      {
        sub_100009848(v15, v73);
        sub_100009848(v73, v72);
        sub_100124CE8(v72);
        if (v2)
        {

          sub_100007378(v67);
          sub_100007378(v73);

          goto LABEL_31;
        }

        v19 = v16;
        v20 = v17;
        v21 = v18;
        v22 = v13;
        sub_100007378(v73);
        v24 = _swiftEmptyArrayStorage[2];
        v23 = _swiftEmptyArrayStorage[3];
        if (v24 >= v23 >> 1)
        {
          sub_100142FB0((v23 > 1), v24 + 1, 1);
        }

        ++v14;
        _swiftEmptyArrayStorage[2] = v24 + 1;
        v25 = &_swiftEmptyArrayStorage[3 * v24];
        v25[4] = v19;
        v25[5] = v20;
        *(v25 + 48) = v21;
        v15 += 32;
        v13 = v22;
        v26 = v22 == v14;
        v12 = v69;
        v2 = 0;
        if (v26)
        {
          sub_100007378(v67);

          goto LABEL_31;
        }
      }

      goto LABEL_34;
    }

    sub_100007378(v3);
LABEL_31:
    sub_100007378(v74);
    sub_10000623C();
    return;
  }

  v27 = sub_100046184(qword_100214E88, qword_100198FA0);
  if (!sub_100006C34(&v75, v28, v29, v27))
  {
    sub_10011DDBC();
    swift_allocError();
    v60 = v59;
    v73[0] = 0;
    v73[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(16);

    strcpy(v73, "invalid type: ");
    HIBYTE(v73[1]) = -18;
    sub_100007534(v3, v3[3]);
    v72[0] = swift_getDynamicType();
    sub_100046184(&qword_1002153B0, &qword_1001996B8);
    v61._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v61);

    v62 = v73[1];
    *v60 = v73[0];
    *(v60 + 8) = v62;
    *(v60 + 41) = 3;
    swift_willThrow();
    v63 = v3;
LABEL_27:
    sub_100007378(v63);
    goto LABEL_31;
  }

  v30 = v75;
  sub_100046184(&qword_10021CA98, &unk_1001A1660);
  v31 = static _DictionaryStorage.copy(original:)();
  v32 = 0;
  v64 = v30 + 64;
  v68 = v3;
  v70 = v30;
  sub_100004154();
  v35 = v34 & v33;
  v37 = (v36 + 63) >> 6;
  v65 = v37;
  v66 = v38 + 64;
  if (v35)
  {
    while (1)
    {
      v39 = __clz(__rbit64(v35));
      v71 = (v35 - 1) & v35;
LABEL_22:
      v42 = v39 | (v32 << 6);
      v43 = (*(v70 + 48) + 16 * v42);
      v44 = *v43;
      v45 = v43[1];
      sub_100009848(*(v70 + 56) + 32 * v42, v73);
      sub_100009848(v73, v72);

      sub_100124CE8(v72);
      if (v1)
      {
        break;
      }

      v49 = v46;
      v50 = v47;
      v51 = v48;
      sub_100007378(v73);
      sub_10000813C();
      *(v66 + v52) |= v53;
      v54 = (v31[6] + 16 * v42);
      *v54 = v44;
      v54[1] = v45;
      v55 = v31[7] + 24 * v42;
      *v55 = v49;
      *(v55 + 8) = v50;
      *(v55 + 16) = v51;
      v56 = v31[2];
      v57 = __OFADD__(v56, 1);
      v58 = v56 + 1;
      if (v57)
      {
        goto LABEL_35;
      }

      v31[2] = v58;
      v3 = v68;
      v37 = v65;
      v35 = v71;
      if (!v71)
      {
        goto LABEL_17;
      }
    }

    sub_100007378(v68);
    v63 = v73;
    goto LABEL_27;
  }

LABEL_17:
  v40 = v32;
  while (1)
  {
    v32 = v40 + 1;
    if (__OFADD__(v40, 1))
    {
      break;
    }

    if (v32 >= v37)
    {

      sub_100007378(v3);
      goto LABEL_31;
    }

    v41 = *(v64 + 8 * v32);
    ++v40;
    if (v41)
    {
      v39 = __clz(__rbit64(v41));
      v71 = (v41 - 1) & v41;
      goto LABEL_22;
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
}

id sub_1001251EC(void *a1)
{
  sub_100007534(a1, a1[3]);
  sub_10000DF0C();
  dispatch thunk of Decoder.singleValueContainer()();
  if (v2)
  {
    sub_100007378(a1);
  }

  else
  {
    sub_100007534(v5, v5[3]);
    sub_10000DF0C();
    v1 = [objc_allocWithZone(NSNumber) initWithLongLong:dispatch thunk of SingleValueDecodingContainer.decode(_:)()];
    sub_100007378(v5);
    sub_100007378(a1);
  }

  return v1;
}

uint64_t sub_1001253B8(uint64_t a1, id a2, uint64_t a3, char a4)
{
  switch(a4)
  {
    case 1:
      sub_10000450C();
      result = String.encode(to:)();
      break;
    case 2:
      sub_10012578C();
      sub_10000450C();
      result = Array<A>.encode(to:)();
      break;
    case 3:
      sub_10012578C();
      sub_10000450C();
      result = Dictionary<>.encode(to:)();
      break;
    default:
      [a2 longLongValue];
      result = Int64.encode(to:)();
      break;
  }

  return result;
}

void sub_100125488(void *a1, uint64_t a2, char a3, void *a4, uint64_t a5, char a6)
{
  switch(a3)
  {
    case 1:
      if (a6 == 1 && (a1 != a4 || a2 != a5))
      {

        _stringCompareWithSmolCheck(_:_:expecting:)();
      }

      break;
    case 2:
      if (a6 == 2)
      {

        sub_1001257E0(a1, a4);
      }

      break;
    case 3:
      if (a6 == 3)
      {

        sub_10011AF78(a1, a4);
      }

      break;
    default:
      if (!a6)
      {
        sub_100005180(0, &qword_10021A4C0, NSObject_ptr);
        static NSObject.== infix(_:_:)();
      }

      break;
  }
}

id sub_1001255BC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1001251EC(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
  }

  return result;
}

unint64_t sub_100125628()
{
  result = qword_10021CA70;
  if (!qword_10021CA70)
  {
    sub_1000461CC(&qword_10021CA68, &qword_1001A1650);
    sub_1001256AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021CA70);
  }

  return result;
}

unint64_t sub_1001256AC()
{
  result = qword_10021CA78;
  if (!qword_10021CA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021CA78);
  }

  return result;
}

unint64_t sub_100125700()
{
  result = qword_10021CA88;
  if (!qword_10021CA88)
  {
    sub_1000461CC(&qword_10021CA80, &qword_1001A1658);
    sub_1001256AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021CA88);
  }

  return result;
}

unint64_t sub_10012578C()
{
  result = qword_10021CA90;
  if (!qword_10021CA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021CA90);
  }

  return result;
}

void sub_1001257E0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16) && v2 && a1 != a2)
  {
    v3 = (a2 + 48);
    v4 = (a1 + 48);
    while (2)
    {
      v5 = *(v4 - 2);
      v6 = *(v3 - 2);
      v7 = *v3;
      switch(*v4)
      {
        case 1:
          if (v7 == 1)
          {
            if (v5 == v6 && *(v4 - 1) == *(v3 - 1))
            {
              goto LABEL_13;
            }

            sub_100003898();
            if (_stringCompareWithSmolCheck(_:_:expecting:)())
            {
              goto LABEL_13;
            }
          }

          break;
        case 2:
          if (v7 == 2)
          {
            v18 = sub_100005994();
            sub_10011CE44(v18, v19, 2);
            v20 = sub_100003898();
            sub_10011CE44(v20, v21, 2);
            sub_1001257E0(v5, v6);
            v12 = v22;
            v23 = sub_100005994();
            sub_10011CE88(v23, v24, 2);
            v15 = sub_100003898();
            v17 = 2;
            goto LABEL_12;
          }

          break;
        case 3:
          if (v7 == 3)
          {
            v25 = sub_100005994();
            sub_10011CE44(v25, v26, 3);
            v27 = sub_100003898();
            sub_10011CE44(v27, v28, 3);
            sub_10011AF78(v5, v6);
            v12 = v29;
            v30 = sub_100005994();
            sub_10011CE88(v30, v31, 3);
            v15 = sub_100003898();
            v17 = 3;
            goto LABEL_12;
          }

          break;
        default:
          if (!*v3)
          {
            sub_100005180(0, &qword_10021A4C0, NSObject_ptr);
            v8 = sub_100005994();
            sub_10011CE44(v8, v9, 0);
            v10 = sub_100003898();
            sub_10011CE44(v10, v11, 0);
            v12 = static NSObject.== infix(_:_:)();
            v13 = sub_100005994();
            sub_10011CE88(v13, v14, 0);
            v15 = sub_100003898();
            v17 = 0;
LABEL_12:
            sub_10011CE88(v15, v16, v17);
            if (v12)
            {
LABEL_13:
              v3 += 24;
              v4 += 24;
              if (--v2)
              {
                continue;
              }
            }
          }

          break;
      }

      break;
    }
  }
}

uint64_t sub_1001259C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_100008C84(a1, v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *v3;
    sub_100136258(v9, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v8;
  }

  else
  {
    sub_10000F94C(a1, &qword_10021CC58, &qword_1001A16F0);
    sub_100139ABC(a2, a3, v9);

    return sub_10000F94C(v9, &qword_10021CC58, &qword_1001A16F0);
  }

  return result;
}

uint64_t sub_100125A94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_100008C84(a1, v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *v3;
    sub_100136294(v9, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v8;
  }

  else
  {
    sub_10000F94C(a1, &qword_10021CC50, &qword_1001A16E8);
    sub_100139C74(a2, a3, v9);

    return sub_10000F94C(v9, &qword_10021CC50, &qword_1001A16E8);
  }

  return result;
}

void *sub_100125B68(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  v2 = a1;
  sub_100142F70(0, v1, 0);
  result = sub_10012B638(v2);
  v6 = result;
  v7 = 0;
  v8 = v2 + 64;
  v27 = v4;
  v28 = v1;
  v26 = v2 + 72;
  v29 = v2 + 64;
  while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(v2 + 32))
  {
    v9 = v6 >> 6;
    if ((*(v8 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
    {
      goto LABEL_22;
    }

    if (*(v2 + 36) != v4)
    {
      goto LABEL_23;
    }

    v31 = v7;
    v32 = v4;
    v30 = v5;
    v10 = (*(v2 + 48) + 16 * v6);
    v11 = v10[1];
    v37 = *v10;
    v12 = *(v2 + 56) + 40 * v6;
    v36 = *v12;
    v13 = *(v12 + 16);
    v34 = *(v12 + 24);
    v35 = *(v12 + 8);
    v33 = *(v12 + 32);

    v14 = v2;
    v16 = _swiftEmptyArrayStorage[2];
    v15 = _swiftEmptyArrayStorage[3];

    if (v16 >= v15 >> 1)
    {
      result = sub_100142F70((v15 > 1), v16 + 1, 1);
    }

    _swiftEmptyArrayStorage[2] = v16 + 1;
    v17 = &_swiftEmptyArrayStorage[7 * v16];
    v17[4] = v37;
    v17[5] = v11;
    *(v17 + 48) = v36;
    v17[7] = v35;
    v17[8] = v13;
    v17[9] = v34;
    *(v17 + 80) = v33;
    v18 = 1 << *(v14 + 32);
    if (v6 >= v18)
    {
      goto LABEL_24;
    }

    v2 = v14;
    v8 = v29;
    v19 = *(v29 + 8 * v9);
    if ((v19 & (1 << v6)) == 0)
    {
      goto LABEL_25;
    }

    if (*(v2 + 36) != v32)
    {
      goto LABEL_26;
    }

    v20 = v19 & (-2 << (v6 & 0x3F));
    if (v20)
    {
      v18 = __clz(__rbit64(v20)) | v6 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v21 = v9 << 6;
      v22 = v9 + 1;
      v23 = (v26 + 8 * v9);
      while (v22 < (v18 + 63) >> 6)
      {
        v25 = *v23++;
        v24 = v25;
        v21 += 64;
        ++v22;
        if (v25)
        {
          result = sub_10012B72C(v6, v32, v30 & 1);
          v18 = __clz(__rbit64(v24)) + v21;
          goto LABEL_19;
        }
      }

      result = sub_10012B72C(v6, v32, v30 & 1);
    }

LABEL_19:
    v5 = 0;
    v7 = v31 + 1;
    v6 = v18;
    v4 = v27;
    if (v31 + 1 == v28)
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

void *sub_100125DF4(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = _swiftEmptyArrayStorage;
  if (v1)
  {
    v12 = _swiftEmptyArrayStorage;
    sub_100142F90(0, v1, 0);
    v2 = _swiftEmptyArrayStorage;
    v4 = (a1 + 48);
    do
    {
      v5 = *(v4 - 2);
      v6 = *(v4 - 1);
      v7 = *v4;
      sub_10011CE44(v5, v6, *v4);
      sub_1001249E0(v5, v6, v7, v11);
      sub_10011CE88(v5, v6, v7);
      v12 = v2;
      v9 = v2[2];
      v8 = v2[3];
      if (v9 >= v8 >> 1)
      {
        sub_100142F90((v8 > 1), v9 + 1, 1);
        v2 = v12;
      }

      v4 += 24;
      v2[2] = v9 + 1;
      sub_100028734(v11, &v2[4 * v9 + 4]);
      --v1;
    }

    while (v1);
  }

  return v2;
}

void *sub_100125F04()
{
  v2 = *(v0 + 80);
  if (v2)
  {

    return v2;
  }

  sub_100126270();
  if (v1)
  {
    return v2;
  }

  sub_1000089E4(v0 + 72, v45);
  v35 = v0;
  v3 = *(v0 + 72);

  sub_100046184(&qword_10021CC68, &qword_1001A1700);
  v2 = Dictionary.init(dictionaryLiteral:)();
  v4 = v3 + 64;
  sub_100008150();
  v7 = v6 & v5;
  v9 = (v8 + 63) >> 6;
  v37 = v3;

  v10 = 0;
  v36 = v4;
  if (v7)
  {
    goto LABEL_9;
  }

  do
  {
LABEL_5:
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
      goto LABEL_22;
    }

    if (v11 >= v9)
    {

      *(v35 + 80) = v2;

      return v2;
    }

    v7 = *(v4 + 8 * v11);
    ++v10;
  }

  while (!v7);
  v10 = v11;
LABEL_9:
  while (1)
  {
    v12 = __clz(__rbit64(v7)) | (v10 << 6);
    v13 = (*(v37 + 48) + 16 * v12);
    v15 = *v13;
    v14 = v13[1];
    sub_1000092B4(*(v37 + 56) + 40 * v12, v42);
    v41[0] = v15;
    v41[1] = v14;
    v16 = v43;
    v17 = v44;
    sub_100007534(v42, v43);
    v18 = *(v17 + 32);

    v19 = v18(v16, v17);
    sub_10012B678(v41, v39);

    sub_100008C84(&v40, v38);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v46 = v2;
    v21 = sub_1000BBA18(v19);
    v23 = v2[2];
    v24 = (v22 & 1) == 0;
    v25 = v23 + v24;
    if (__OFADD__(v23, v24))
    {
      break;
    }

    v26 = v21;
    v27 = v22;
    sub_100046184(&qword_10021CC78, &unk_1001A1710);
    if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v25))
    {
      v28 = sub_1000BBA18(v19);
      if ((v27 & 1) != (v29 & 1))
      {
        goto LABEL_24;
      }

      v26 = v28;
    }

    v2 = v46;
    if (v27)
    {
      v30 = (v46[7] + 40 * v26);
      sub_100007378(v30);
      sub_100008C84(v38, v30);
    }

    else
    {
      v46[(v26 >> 6) + 8] |= 1 << v26;
      *(v2[6] + 8 * v26) = v19;
      sub_100008C84(v38, v2[7] + 40 * v26);
      v31 = v2[2];
      v32 = __OFADD__(v31, 1);
      v33 = v31 + 1;
      if (v32)
      {
        goto LABEL_23;
      }

      v2[2] = v33;
    }

    v7 &= v7 - 1;
    sub_10000F94C(v41, &qword_10021CC70, &qword_1001A1708);
    v4 = v36;
    if (!v7)
    {
      goto LABEL_5;
    }
  }

LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_100126270()
{
  v2 = v1;
  for (result = sub_1000089E4(v0 + 96, v15); ; result = )
  {
    v4 = 0;
    v5 = *(v0 + 96);
    v6 = (v5 + 64);
    v7 = 1 << *(v5 + 32);
    v8 = (v7 + 63) >> 6;
    if (!v8)
    {
      break;
    }

    while (!*v6)
    {
      ++v6;
      v4 -= 64;
      if (!--v8)
      {
        return result;
      }
    }

    v9 = __clz(__rbit64(*v6));
    if (v9 - v7 == v4)
    {
      break;
    }

    if (-v4 < 0 || (v10 = v9 - v4, v10 >= v7))
    {
      __break(1u);
LABEL_15:
      __break(1u);
      return result;
    }

    if (((*v6 >> v9) & 1) == 0)
    {
      goto LABEL_15;
    }

    v11 = (*(v5 + 48) + 16 * v10);
    v12 = *v11;
    v13 = v11[1];

    sub_100025A1C(v12, v13, v14);
    if (v2)
    {
    }

    sub_100007378(v14);
  }

  return result;
}

void *sub_100126378(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = 0;
  v7[8] = 0;
  sub_100046184(&qword_10021CC68, &qword_1001A1700);
  v10 = &type metadata for String;
  v7[9] = Dictionary.init(dictionaryLiteral:)();
  v7[10] = 0;
  sub_100046184(&qword_10021CC88, &qword_1001A1728);
  v805 = v7;
  v7[11] = Dictionary.init(dictionaryLiteral:)();

  v12 = sub_100125B68(v11);
  v794 = a4;

  *&v906 = v12;

  sub_10012A3D0(&v906, sub_10012B624, sub_10012A454);
  v13 = v8;
  if (v8)
  {
    goto LABEL_518;
  }

  v14 = v906;
  v15 = *(v906 + 16);
  if (v15)
  {
    *&v906 = _swiftEmptyArrayStorage;
    sub_100142E5C(v15);
    v16 = v906;
    v17 = (v14 + 40);
    do
    {
      v19 = *(v17 - 1);
      v18 = *v17;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_10000BF20();
        sub_10000AF58();
        sub_1000EC984();
        v16 = v906;
      }

      v21 = v16[2];
      v20 = v16[3];
      v10 = v21 + 1;
      if (v21 >= v20 >> 1)
      {
        sub_1000066A8(v20);
        sub_10001361C();
        sub_1000EC984();
        v16 = v906;
      }

      v16[2] = v10;
      v22 = &v16[2 * v21];
      v22[4] = v19;
      v22[5] = v18;
      v17 += 7;
      --v15;
    }

    while (v15);
  }

  else
  {

    v16 = _swiftEmptyArrayStorage;
  }

  v805[5] = v16;
  v805[12] = v794;
  v23 = *(a5 + 16);
  if (v23)
  {
    *&v906 = _swiftEmptyArrayStorage;

    sub_100142E5C(v23);
    v26 = sub_10012B638(a5);
    v27 = 0;
    v28 = a5 + 64;
    v870 = v23;
    v29 = a5;
    if (v26 < 0)
    {
      goto LABEL_483;
    }

    while (1)
    {
      if (v26 >= 1 << *(v29 + 32))
      {
        goto LABEL_483;
      }

      v30 = v26 >> 6;
      v10 = 1 << v26;
      if ((*(v28 + 8 * (v26 >> 6)) & (1 << v26)) == 0)
      {
        goto LABEL_484;
      }

      if (*(v29 + 36) != v24)
      {
LABEL_485:
        __break(1u);
LABEL_486:
        __break(1u);
LABEL_487:
        __break(1u);
LABEL_488:
        __break(1u);
LABEL_489:
        __break(1u);
        goto LABEL_490;
      }

      v887 = v25;
      v31 = v24;
      v32 = (*(v29 + 48) + 16 * v26);
      v33 = v32[1];
      v896 = *v32;
      v34 = v906;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_10000BF20();
        sub_10000AF58();
        sub_1000EC984();
        v34 = v906;
      }

      v36 = v34[2];
      v35 = v34[3];
      v29 = a5;
      v37 = v31;
      if (v36 >= v35 >> 1)
      {
        sub_1000066A8(v35);
        sub_10012B7A4();
        sub_1000EC984();
        v37 = v31;
        v29 = a5;
        v34 = v906;
      }

      v34[2] = v36 + 1;
      v38 = &v34[2 * v36];
      v38[4] = v896;
      v38[5] = v33;
      v39 = 1 << *(v29 + 32);
      if (v26 >= v39)
      {
        goto LABEL_486;
      }

      v28 = a5 + 64;
      v40 = *(a5 + 64 + 8 * v30);
      if ((v40 & v10) == 0)
      {
        goto LABEL_487;
      }

      if (*(v29 + 36) != v37)
      {
        goto LABEL_488;
      }

      v41 = v40 & (-2 << (v26 & 0x3F));
      if (v41)
      {
        v39 = __clz(__rbit64(v41)) | v26 & 0x7FFFFFFFFFFFFFC0;
        v42 = v870;
      }

      else
      {
        v43 = v30 << 6;
        v44 = v30 + 1;
        v42 = v870;
        v45 = (a5 + 72 + 8 * v30);
        while (v44 < (v39 + 63) >> 6)
        {
          v47 = *v45++;
          v46 = v47;
          v43 += 64;
          ++v44;
          if (v47)
          {
            sub_10012B72C(v26, v37, v887 & 1);
            v39 = __clz(__rbit64(v46)) + v43;
            goto LABEL_30;
          }
        }

        sub_10012B72C(v26, v37, v887 & 1);
LABEL_30:
        v29 = a5;
      }

      if (++v27 == v42)
      {
        break;
      }

      v25 = 0;
      v24 = *(v29 + 36);
      v26 = v39;
      if (v39 < 0)
      {
        goto LABEL_483;
      }
    }

    v13 = v8;
  }

  else
  {

    v34 = _swiftEmptyArrayStorage;
  }

  *&v906 = v34;

  sub_10012A3D0(&v906, sub_1000255B4, sub_1000255C8);
  v48 = v13;

  v805[6] = v906;
  v805[13] = a5;
  v854 = sub_100046184(&qword_100216690, &qword_1001A0410);
  v49 = static _DictionaryStorage.copy(original:)();
  sub_100004538();
  v52 = v51 & v50;
  v786 = (v53 + 63) >> 6;

  v54 = 0;
  v798 = v49;
  if (v52)
  {
LABEL_37:
    sub_10000FE58();
    goto LABEL_43;
  }

  while (1)
  {
    v57 = v54;
    v58 = v786;
    do
    {
      if (__OFADD__(v57, 1))
      {
        goto LABEL_494;
      }

      if (v57 + 1 >= v58)
      {

        v805[2] = a1;
        v805[3] = a2;
        v805[4] = v49;
        v805[7] = a6;
        v805[8] = a7;
        swift_unknownObjectRelease();
        return v805;
      }

      sub_10012B858();
    }

    while (!v59);
    sub_100003C00();
    v52 = v61 & v60;
LABEL_43:
    v62 = *(*(a3 + 48) + 16 * (v55 | (v56 << 6)) + 8);
    sub_1000149A8();
    v65 = *v63;
    v64 = *(v63 + 8);
    v824 = *v63;
    v806 = v52;
    v807 = v66;
    v808 = v67;
    switch(*(v63 + 16))
    {
      case 1:
        v907 = &type metadata for String;
        *&v906 = v65;
        *(&v906 + 1) = v64;

        v69 = sub_100008380();
        v71 = 1;
        goto LABEL_464;
      case 2:
        v72 = *(v65 + 16);
        v783 = v62;
        if (!v72)
        {

          v754 = sub_100005680();
          sub_10011CE44(v754, v755, v756);
          v72 = _swiftEmptyArrayStorage;
          goto LABEL_467;
        }

        v908 = _swiftEmptyArrayStorage;

        sub_10011CE44(v65, v64, 2);
        v795 = v72;
        sub_100142E74(v72);
        sub_10000BA54();
        v799 = v74;
        v75 = v65;
LABEL_47:
        if (v73 >= v75[2])
        {
          goto LABEL_510;
        }

        sub_10001AE30();
        v78 = v799 + v76 * v77;
        v79 = *v78;
        v80 = *(v78 + 8);
        v836 = *v78;
        v814 = v81;
        switch(*(v78 + 16))
        {
          case 1:
            v907 = &type metadata for String;
            *&v906 = v79;
            *(&v906 + 1) = v80;

            goto LABEL_270;
          case 2:
            v791 = *(v78 + 8);
            v49 = *(v79 + 2);
            if (!v49)
            {

              v233 = _swiftEmptyArrayStorage;
              goto LABEL_269;
            }

            v905 = _swiftEmptyArrayStorage;

            v83 = &v905;
            v829 = v49;
            sub_100142E74(v49);
            v79 = v836;
            v84 = 0;
LABEL_52:
            if (v84 >= *(v79 + 2))
            {
              goto LABEL_505;
            }

            sub_10001AE30();
            v87 = &v836[v85 * v86 + 32];
            v10 = *v87;
            v88 = *(v87 + 8);
            v867 = *v87;
            v838 = v89;
            switch(*(v87 + 16))
            {
              case 1:
                sub_10012B7D4(&type metadata for String);
                goto LABEL_148;
              case 2:
                v821 = *(v87 + 8);
                v80 = *(v10 + 16);
                if (!v80)
                {

                  v83 = _swiftEmptyArrayStorage;
                  goto LABEL_147;
                }

                sub_100142E74(v80);
                v91 = 0;
                v855 = v80;
                while (1)
                {
                  if (v91 >= *(v10 + 16))
                  {
                    goto LABEL_482;
                  }

                  v92 = v48;
                  sub_100019088();
                  v65 = *v93;
                  v94 = *(v93 + 8);
                  v888 = *v93;
                  v871 = v95;
                  switch(*(v93 + 16))
                  {
                    case 1:
                      v907 = &type metadata for String;
                      *&v906 = v65;
                      *(&v906 + 1) = v94;

                      goto LABEL_89;
                    case 2:
                      v98 = *v93;
                      v65 = *(v65 + 16);
                      if (v65)
                      {

                        sub_100142E74(v65);
                        v99 = v98 + 48;
                        do
                        {
                          v100 = *(v99 - 2);
                          v13 = *v99;
                          v101 = sub_10000AC78();
                          sub_10012B7BC(v101, v102, v103);
                          v104 = sub_10000AC78();
                          sub_1001249E0(v104, v105, v106, v107);
                          v108 = sub_10000AC78();
                          sub_10011CE88(v108, v109, v110);
                          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                          {
                            sub_10000BF20();
                            v111 = sub_10000AF58();
                            sub_100142F90(v111, v112, v113);
                          }

                          sub_10002DF58();
                          if (v115)
                          {
                            sub_1000066A8(v114);
                            sub_10001361C();
                            sub_100142F90(v116, v117, v118);
                          }

                          v99 += 24;
                          _swiftEmptyArrayStorage[2] = v100;
                          sub_100007948();
                          --v65;
                        }

                        while (v65);
                        v10 = v867;
                        v98 = v888;
                      }

                      else
                      {
                      }

                      v907 = sub_100046184(&qword_100215398, &qword_1001996A0);
                      sub_100007D94(v98, v94);
                      goto LABEL_89;
                    case 3:
                      v897 = v92;
                      sub_10012B76C();
                      v119 = static _DictionaryStorage.copy(original:)();
                      v79 = (v65 + 64);
                      sub_10000624C();
                      v122 = v121 & v120;
                      v843 = v94;
                      sub_10000C898(v65, v94);
                      v124 = v123 >> 6;
                      if (v122)
                      {
                        goto LABEL_69;
                      }

                      break;
                    default:
                      v96 = sub_10012B6E8();
                      sub_1000189E8(v96);
                      v97 = v65;
LABEL_89:
                      v48 = v92;
                      goto LABEL_90;
                  }

LABEL_70:
                  v126 = v94;
                  while (1)
                  {
                    v94 = v126 + 1;
                    if (__OFADD__(v126, 1))
                    {
                      __break(1u);
                      goto LABEL_474;
                    }

                    if (v94 >= v124)
                    {
                      break;
                    }

                    ++v126;
                    if (*&v79[8 * v94])
                    {
                      sub_100003C00();
                      v122 = v128 & v127;
                      while (1)
                      {
                        v129 = v125 | (v94 << 6);
                        v130 = *(v65 + 56);
                        v131 = (*(v65 + 48) + 16 * v129);
                        v132 = v131[1];
                        v879 = *v131;
                        v133 = v130 + 24 * v129;
                        v13 = *v133;
                        v134 = *(v133 + 8);
                        switch(*(v133 + 16))
                        {
                          case 1:
                            v907 = &type metadata for String;
                            *&v906 = v13;
                            *(&v906 + 1) = v134;

                            sub_10001361C();
                            goto LABEL_81;
                          case 2:

                            sub_10011CE44(v13, v134, 2);
                            v49 = v897;
                            v849 = sub_100125DF4(v13);
                            v139 = sub_100046184(&qword_100215398, &qword_1001996A0);
                            v140 = sub_10000CD04(v139);
                            v141 = v134;
                            v142 = 2;
                            goto LABEL_79;
                          case 3:

                            sub_10011CE44(v13, v134, 3);
                            v49 = v897;
                            v849 = sub_10012A210(v13);
                            v143 = sub_100046184(qword_100214E88, qword_100198FA0);
                            v140 = sub_10000CD04(v143);
                            v141 = v134;
                            v142 = 3;
LABEL_79:
                            sub_10011CE88(v140, v141, v142);
                            *&v906 = v849;
                            break;
                          default:
                            v135 = sub_10012B6E8();
                            sub_10000CEEC(v135);

                            v136 = v13;
                            v137 = v134;
                            v138 = 0;
LABEL_81:
                            sub_10011CE44(v136, v137, v138);
                            break;
                        }

                        sub_10012B81C();
                        sub_100006C50(v144);
                        v145 = (v119[6] + 16 * v129);
                        *v145 = v879;
                        v145[1] = v132;
                        sub_10001AC7C(v146, (v119[7] + 32 * v129));
                        v10 = v867;
                        if (v148)
                        {
                          break;
                        }

                        v119[2] = v147;
                        v65 = v888;
                        if (!v122)
                        {
                          goto LABEL_70;
                        }

LABEL_69:
                        sub_10000B118();
                      }

LABEL_481:
                      __break(1u);
LABEL_482:
                      __break(1u);
LABEL_483:
                      __break(1u);
LABEL_484:
                      __break(1u);
                      goto LABEL_485;
                    }
                  }

                  v149 = sub_100046184(qword_100214E88, qword_100198FA0);
                  v150 = sub_100007754(v149);
                  sub_1000385FC(v150, v843);
                  v48 = v897;
LABEL_90:
                  v80 = v855;
                  v83 = _swiftEmptyArrayStorage;
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    sub_1000099D0();
                    v83 = _swiftEmptyArrayStorage;
                  }

                  sub_10001BEB8();
                  if (v115)
                  {
                    v152 = sub_1000066A8(v151);
                    sub_10002510C(v152);
                    v83 = _swiftEmptyArrayStorage;
                  }

                  sub_100015BA8();
                  v91 = v871;
                  if (v871 == v855)
                  {
LABEL_147:
                    v231 = sub_100046184(&qword_100215398, &qword_1001996A0);
                    v232 = sub_100007AC8(v231);
                    sub_100007D94(v232, v821);
LABEL_148:
                    v233 = v905;
                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                    {
                      v83 = &v905;
                      v234 = sub_10000AF58();
                      sub_100142F90(v234, v235, v236);
                      v233 = v905;
                    }

                    sub_10000FFD4();
                    if (v115)
                    {
                      v238 = sub_100006FF0(v237);
                      sub_10002510C(v238);
                      v233 = v905;
                    }

                    v233[2] = v79;
                    sub_10012B754(&v233[4 * v80]);
                    v79 = v836;
                    v84 = v838;
                    if (v838 == v829)
                    {
LABEL_269:
                      v907 = sub_100046184(&qword_100215398, &qword_1001996A0);
                      sub_10011CE88(v79, v791, 2);
                      *&v906 = v233;
LABEL_270:
                      v72 = v908;
                      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                      {
                        v400 = sub_10000AF58();
                        sub_100142F90(v400, v401, v402);
                        v72 = v908;
                      }

                      sub_10000FFD4();
                      if (v115)
                      {
                        v404 = sub_1000066A8(v403);
                        sub_10002510C(v404);
                        v72 = v908;
                      }

                      v72[2] = v79;
                      sub_10012B754(&v72[4 * v80]);
                      v73 = v814;
                      v75 = v824;
                      if (v814 == v795)
                      {
LABEL_467:
                        v907 = sub_100046184(&qword_100215398, &qword_1001996A0);
                        v757 = sub_100005680();
                        sub_10011CE88(v757, v758, v759);
                        *&v906 = v72;
                        goto LABEL_468;
                      }

                      goto LABEL_47;
                    }

                    goto LABEL_52;
                  }
                }

              case 3:
                sub_10012B810();
                v79 = static _DictionaryStorage.copy(original:)();
                v812 = v10 + 64;
                sub_10000451C();
                v155 = v154 & v153;
                v822 = v88;
                sub_10011CE44(v10, v88, 3);
                v156 = 0;
                v83 = ((v83 + 63) >> 6);
                v825 = v83;
                v809 = v79;
                if (v155)
                {
                  goto LABEL_97;
                }

                break;
              default:
                v90 = sub_10012B6E8();
                sub_10012B878(v90);
                goto LABEL_148;
            }

LABEL_98:
            v158 = v156;
            do
            {
              v156 = v158 + 1;
              if (__OFADD__(v158, 1))
              {
                goto LABEL_478;
              }

              if (v156 >= v83)
              {
                v229 = sub_100046184(qword_100214E88, qword_100198FA0);
                v230 = sub_100007AC8(v229);
                sub_10011CE88(v230, v822, 3);
                *&v906 = v79;
                goto LABEL_148;
              }

              ++v158;
            }

            while (!*(v812 + 8 * v156));
            sub_100003C00();
            v155 = v160 & v159;
LABEL_103:
            v65 = *(*(v10 + 48) + 16 * (v157 | (v156 << 6)) + 8);
            sub_1000149A8();
            v80 = *v161;
            v49 = *(v161 + 8);
            v872 = v155;
            v880 = v65;
            v889 = *v161;
            v856 = v162;
            switch(*(v161 + 16))
            {
              case 1:
                v907 = &type metadata for String;
                *&v906 = v80;
                *(&v906 + 1) = v49;

                sub_10012B7B0();
                goto LABEL_137;
              case 2:
                v167 = *(v80 + 16);
                if (v167)
                {

                  v818 = v49;
                  sub_10001267C();
                  sub_10011CE44(v168, v169, v170);
                  sub_100142E74(v167);
                  v171 = (v80 + 48);
                  do
                  {
                    v172 = *(v171 - 2);
                    v173 = *(v171 - 1);
                    v174 = *v171;
                    v171 += 24;
                    switch(v174)
                    {
                      case 1:
                        v907 = &type metadata for String;
                        *&v906 = v172;
                        *(&v906 + 1) = v173;

                        break;
                      case 2:

                        v49 = v48;
                        sub_100125DF4(v176);
                        sub_10012B804();
                        v177 = sub_100046184(&qword_100215398, &qword_1001996A0);
                        v178 = sub_10001BD6C(v177);
                        v180 = 2;
                        goto LABEL_111;
                      case 3:

                        v49 = v48;
                        sub_10012A210(v181);
                        sub_10012B804();
                        v182 = sub_100046184(qword_100214E88, qword_100198FA0);
                        v178 = sub_10001BD6C(v182);
                        v180 = 3;
LABEL_111:
                        sub_10011CE88(v178, v179, v180);
                        *&v906 = v13;
                        break;
                      default:
                        v907 = sub_10012B6E8();
                        *&v906 = v172;
                        v175 = v172;
                        break;
                    }

                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                    {
                      sub_1000099D0();
                    }

                    v184 = _swiftEmptyArrayStorage[2];
                    v183 = _swiftEmptyArrayStorage[3];
                    if (v184 >= v183 >> 1)
                    {
                      sub_1000066A8(v183);
                      sub_10012B7A4();
                      sub_100142F90(v185, v186, v187);
                    }

                    _swiftEmptyArrayStorage[2] = v184 + 1;
                    sub_10012B754(&_swiftEmptyArrayStorage[4 * v184]);
                    --v167;
                  }

                  while (v167);
                  v79 = v809;
                  v155 = v872;
                  v65 = v880;
                  v80 = v818;
                  v13 = v889;
                }

                else
                {
                  v65 = v880;

                  sub_10001267C();
                  v13 = v80;
                  v80 = v49;
                  sub_10011CE44(v219, v220, v221);
                }

                v222 = sub_100046184(&qword_100215398, &qword_1001996A0);
                v223 = sub_10000CD04(v222);
                sub_100007D94(v223, v80);
                v83 = v825;
                goto LABEL_141;
              case 3:
                v898 = v48;
                v188 = *(v161 + 8);
                v13 = static _DictionaryStorage.copy(original:)();
                v189 = v80 + 64;
                sub_10000451C();
                v49 = v80;
                i = v191 & v190;

                v819 = v188;
                sub_10011CE44(v49, v188, 3);
                v193 = 0;
                v850 = v13;
                if (i)
                {
                  goto LABEL_120;
                }

                break;
              default:
                v13 = *v161;
                v80 = *(v161 + 8);
                v163 = sub_10012B6E8();
                sub_10000CEEC(v163);

                v164 = v13;
                v165 = v49;
                v166 = 0;
LABEL_137:
                sub_10011CE44(v164, v165, v166);
                goto LABEL_141;
            }

LABEL_121:
            v195 = v193;
            v83 = v825;
            v80 = v889;
            do
            {
              v193 = v195 + 1;
              if (__OFADD__(v195, 1))
              {
                goto LABEL_476;
              }

              if (v193 >= ((v854 + 63) >> 6))
              {
                v907 = sub_100046184(qword_100214E88, qword_100198FA0);
                sub_10002D45C(v889, v819);
                v48 = v898;
                v10 = v867;
                v79 = v809;
LABEL_141:
                sub_10000863C();
                sub_100006C50(v224);
                v226 = (*(v79 + 6) + 16 * v225);
                *v226 = v856;
                v226[1] = v65;
                sub_100028734(&v906, (*(v79 + 7) + 32 * v225));
                v227 = *(v79 + 2);
                v148 = __OFADD__(v227, 1);
                v228 = v227 + 1;
                if (v148)
                {
                  goto LABEL_503;
                }

                *(v79 + 2) = v228;
                if (!v155)
                {
                  goto LABEL_98;
                }

LABEL_97:
                sub_10000B118();
                goto LABEL_103;
              }

              ++v195;
            }

            while (!*(v189 + 8 * v193));
            sub_100003C00();
            for (i = v197 & v196; ; i &= i - 1)
            {
              v198 = v194 | (v193 << 6);
              v199 = (v889[6] + 16 * v198);
              v200 = v199[1];
              v864 = *v199;
              sub_10012B778();
              v202 = *v201;
              v203 = v201[1];
              switch(*(v201 + 16))
              {
                case 1:
                  v907 = &type metadata for String;
                  *&v906 = v202;
                  *(&v906 + 1) = v203;

                  v204 = sub_10000EC48();
                  v206 = 1;
                  goto LABEL_132;
                case 2:

                  v207 = sub_10000EC48();
                  v209 = sub_10012B738(v207, v208, 2);
                  v801 = sub_100125DF4(v209);
                  v898 = v49;
                  v907 = sub_100046184(&qword_100215398, &qword_1001996A0);
                  v210 = sub_10000EC48();
                  v212 = 2;
                  goto LABEL_130;
                case 3:

                  v213 = sub_10000EC48();
                  v215 = sub_10012B738(v213, v214, 3);
                  v801 = sub_10012A210(v215);
                  v898 = v49;
                  v907 = sub_100046184(qword_100214E88, qword_100198FA0);
                  v210 = sub_10000EC48();
                  v212 = 3;
LABEL_130:
                  sub_10011CE88(v210, v211, v212);
                  *&v906 = v801;
                  break;
                default:
                  v907 = sub_10012B6E8();
                  *&v906 = v202;

                  v204 = sub_10000EC48();
                  v206 = 0;
LABEL_132:
                  sub_10011CE44(v204, v205, v206);
                  break;
              }

              sub_10000F660();
              v13 = v850;
              sub_100006C50(v216);
              v217 = (*(v850 + 48) + 16 * v198);
              *v217 = v864;
              v217[1] = v200;
              sub_10000E238();
              v155 = v872;
              if (v148)
              {
                break;
              }

              *(v850 + 16) = v218;
              v65 = v880;
              if (!i)
              {
                goto LABEL_121;
              }

LABEL_120:
              v194 = __clz(__rbit64(i));
            }

LABEL_501:
            __break(1u);
LABEL_502:
            __break(1u);
LABEL_503:
            __break(1u);
LABEL_504:
            __break(1u);
LABEL_505:
            __break(1u);
LABEL_506:
            __break(1u);
LABEL_507:
            __break(1u);
LABEL_508:
            __break(1u);
LABEL_509:
            __break(1u);
LABEL_510:
            __break(1u);
LABEL_511:
            __break(1u);
LABEL_512:
            __break(1u);
LABEL_513:
            __break(1u);
LABEL_514:
            __break(1u);
LABEL_515:
            __break(1u);
LABEL_516:
            __break(1u);
LABEL_517:
            __break(1u);
LABEL_518:

            __break(1u);
            return result;
          case 3:
            v239 = static _DictionaryStorage.copy(original:)();
            sub_10000624C();
            v851 = v241 & v240;
            v792 = v80;
            sub_10000BFD8(v79);
            sub_100012F74();
            v826 = v239;
            v813 = v242;
LABEL_155:
            if (v851)
            {
              sub_100006BD4();
            }

            else
            {
              v244 = v243;
              do
              {
                if (__OFADD__(v244, 1))
                {
                  goto LABEL_493;
                }

                if (v244 + 1 >= v242)
                {
                  v907 = sub_100046184(qword_100214E88, qword_100198FA0);
                  sub_1000385FC(v836, v792);
                  goto LABEL_270;
                }

                sub_10012B858();
              }

              while (!v245);
              sub_100003C00();
            }

            sub_10000FF48();
            sub_10012B830();
            v857 = v65;
            v830 = v246;
            v851 = v247;
            v834 = v248;
            switch(v249)
            {
              case 1:
                v907 = &type metadata for String;
                *&v906 = v65;
                *(&v906 + 1) = v80;

                v251 = sub_100008380();
                v253 = 1;
                goto LABEL_259;
              case 2:
                v79 = *(v65 + 16);
                v810 = v72;
                if (v79)
                {
                  v905 = _swiftEmptyArrayStorage;

                  v787 = v80;
                  sub_10011CE44(v65, v80, 2);
                  sub_100142E74(v79);
                  sub_10000BA54();
                  v865 = v255;
                  do
                  {
                    if (v254 >= *(v65 + 16))
                    {
                      goto LABEL_500;
                    }

                    sub_10001AE30();
                    v258 = v865 + v256 * v257;
                    v10 = *v258;
                    v259 = *(v258 + 8);
                    v890 = *v258;
                    v873 = v260;
                    switch(*(v258 + 16))
                    {
                      case 1:
                        sub_10012B7D4(&type metadata for String);
                        goto LABEL_204;
                      case 2:
                        v262 = *(v10 + 16);
                        if (v262)
                        {
                          v13 = *(v258 + 8);

                          sub_100142E74(v262);
                          v263 = (v10 + 48);
                          do
                          {
                            v264 = *(v263 - 2);
                            v265 = *(v263 - 1);
                            v266 = *v263;
                            v263 += 24;
                            switch(v266)
                            {
                              case 1:
                                v907 = &type metadata for String;
                                *&v906 = v264;
                                *(&v906 + 1) = v265;

                                break;
                              case 2:

                                v49 = v48;
                                v269 = sub_100125DF4(v268);
                                v907 = sub_100046184(&qword_100215398, &qword_1001996A0);
                                v270 = v264;
                                v271 = v265;
                                v272 = 2;
                                goto LABEL_175;
                              case 3:

                                v49 = v48;
                                v269 = sub_10012A210(v273);
                                v907 = sub_100046184(qword_100214E88, qword_100198FA0);
                                v270 = v264;
                                v271 = v265;
                                v272 = 3;
LABEL_175:
                                sub_10011CE88(v270, v271, v272);
                                *&v906 = v269;
                                break;
                              default:
                                v907 = sub_10012B6E8();
                                *&v906 = v264;
                                v267 = v264;
                                break;
                            }

                            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                            {
                              sub_1000099D0();
                            }

                            sub_10002DF58();
                            if (v115)
                            {
                              sub_1000066A8(v274);
                              sub_10001361C();
                              sub_100142F90(v275, v276, v277);
                            }

                            _swiftEmptyArrayStorage[2] = v265;
                            sub_100007948();
                            --v262;
                          }

                          while (v262);
                          v10 = v890;
                          v259 = v13;
                        }

                        else
                        {
                        }

                        v311 = sub_100046184(&qword_100215398, &qword_1001996A0);
                        v312 = sub_100007AC8(v311);
                        sub_100007D94(v312, v259);
                        goto LABEL_204;
                      case 3:
                        v899 = v48;
                        sub_10012B810();
                        v278 = static _DictionaryStorage.copy(original:)();
                        sub_100023FA0();
                        sub_100003CAC();
                        v281 = v280 & v279;
                        v839 = v282;
                        sub_10000C898(v10, v282);
                        v284 = v283 >> 6;
                        if (v281)
                        {
                          goto LABEL_184;
                        }

                        break;
                      default:
                        v261 = sub_10012B6E8();
                        sub_10012B878(v261);
                        goto LABEL_204;
                    }

LABEL_185:
                    v286 = v48;
                    v65 = v857;
                    while (1)
                    {
                      v48 = v286 + 1;
                      if (__OFADD__(v286, 1))
                      {
                        goto LABEL_475;
                      }

                      if (v48 >= v284)
                      {
                        break;
                      }

                      ++v286;
                      if (*&v79[8 * v48])
                      {
                        sub_100003C00();
                        v281 = v288 & v287;
                        while (1)
                        {
                          v13 = v285 | (v48 << 6);
                          v289 = (*(v10 + 48) + 16 * v13);
                          v290 = v289[1];
                          v881 = *v289;
                          v291 = *(v10 + 56) + 24 * v13;
                          v293 = *v291;
                          v292 = *(v291 + 8);
                          switch(*(v291 + 16))
                          {
                            case 1:
                              v907 = &type metadata for String;
                              *&v906 = v293;
                              *(&v906 + 1) = v292;

                              v294 = sub_100014CB0();
                              v296 = 1;
                              goto LABEL_196;
                            case 2:

                              v297 = sub_100014CB0();
                              v299 = sub_10012B738(v297, v298, 2);
                              v844 = sub_100125DF4(v299);
                              v899 = v49;
                              v907 = sub_100046184(&qword_100215398, &qword_1001996A0);
                              v300 = sub_100014CB0();
                              v302 = 2;
                              goto LABEL_194;
                            case 3:

                              v303 = sub_100014CB0();
                              v305 = sub_10012B738(v303, v304, 3);
                              v844 = sub_10012A210(v305);
                              v899 = v49;
                              v907 = sub_100046184(qword_100214E88, qword_100198FA0);
                              v300 = sub_100014CB0();
                              v302 = 3;
LABEL_194:
                              sub_10011CE88(v300, v301, v302);
                              *&v906 = v844;
                              break;
                            default:
                              v907 = sub_10012B6E8();
                              *&v906 = v293;

                              v294 = sub_100014CB0();
                              v296 = 0;
LABEL_196:
                              sub_10011CE44(v294, v295, v296);
                              break;
                          }

                          sub_100006C50((v13 >> 3) & 0x1FFFFFFFFFFFFFF8);
                          v306 = (v278[6] + 16 * v13);
                          *v306 = v881;
                          v306[1] = v290;
                          sub_10001AC7C(v307, (v278[7] + 32 * v13));
                          v10 = v890;
                          if (v148)
                          {
                            break;
                          }

                          v278[2] = v308;
                          if (!v281)
                          {
                            goto LABEL_185;
                          }

LABEL_184:
                          sub_10012B7F0();
                        }

LABEL_499:
                        __break(1u);
LABEL_500:
                        __break(1u);
                        goto LABEL_501;
                      }
                    }

                    v309 = sub_100046184(qword_100214E88, qword_100198FA0);
                    v310 = sub_100007AC8(v309);
                    sub_1000385FC(v310, v839);
                    v48 = v899;
LABEL_204:
                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                    {
                      sub_100008B14();
                    }

                    sub_10001BEB8();
                    if (v115)
                    {
                      v314 = sub_100006FF0(v313);
                      sub_10002510C(v314);
                    }

                    sub_100015BA8();
                    v254 = v873;
                  }

                  while (v873 != v79);
                  v80 = v787;
                }

                else
                {

                  v390 = sub_100005680();
                  sub_10011CE44(v390, v391, v392);
                }

                v907 = sub_100046184(&qword_100215398, &qword_1001996A0);
                v393 = sub_100008380();
                sub_100007D94(v393, v394);
                v239 = v826;
                goto LABEL_263;
              case 3:
                v79 = v72;
                sub_10012B76C();
                static _DictionaryStorage.copy(original:)();
                sub_10000BBDC();
                v784 = v315;
                sub_10000624C();
                v318 = v317 & v316;
                v810 = v72;

                v788 = v80;
                sub_10000BFD8(v65);
                sub_10012B864();
                v773 = v10;
                v777 = v72;
                if (v318)
                {
                  goto LABEL_211;
                }

                break;
              default:
                v250 = sub_10012B6E8();
                sub_1000189E8(v250);

                v251 = sub_100008380();
                v253 = 0;
LABEL_259:
                sub_10011CE44(v251, v252, v253);
                goto LABEL_264;
            }

LABEL_212:
            v320 = v65;
            do
            {
              v65 = v320 + 1;
              if (__OFADD__(v320, 1))
              {
                goto LABEL_491;
              }

              if (v65 >= v72)
              {
                v907 = sub_100046184(qword_100214E88, qword_100198FA0);
                sub_10011CE88(v857, v788, 3);
                *&v906 = v10;
LABEL_263:
                v72 = v810;
LABEL_264:
                sub_10000863C();
                sub_100006C50(v395);
                v397 = (v239[6] + 16 * v396);
                *v397 = v834;
                v397[1] = v72;
                sub_10001AC7C(v398, (v239[7] + 32 * v396));
                if (!v148)
                {
                  v239[2] = v399;
                  v242 = v813;
                  v243 = v830;
                  goto LABEL_155;
                }

                goto LABEL_512;
              }

              ++v320;
            }

            while (!*(v784 + 8 * v65));
            sub_100003C00();
            v318 = v322 & v321;
LABEL_217:
            v80 = *(v857[6] + 16 * (v319 | (v65 << 6)) + 8);
            sub_1000149A8();
            v79 = *v323;
            v49 = *(v323 + 8);
            v874 = v318;
            v882 = v80;
            v891 = *v323;
            v861 = v324;
            switch(*(v323 + 16))
            {
              case 1:
                v907 = &type metadata for String;
                *&v906 = v79;
                *(&v906 + 1) = v49;

                sub_10012B7B0();
                goto LABEL_251;
              case 2:
                v329 = *(v79 + 2);
                if (v329)
                {
                  v905 = _swiftEmptyArrayStorage;

                  v802 = v49;
                  sub_10001267C();
                  sub_10011CE44(v330, v331, v332);
                  sub_100142E74(v329);
                  v333 = v79 + 48;
                  do
                  {
                    v334 = *(v333 - 2);
                    v335 = *(v333 - 1);
                    v336 = *v333;
                    v333 += 24;
                    switch(v336)
                    {
                      case 1:
                        v907 = &type metadata for String;
                        *&v906 = v334;
                        *(&v906 + 1) = v335;

                        break;
                      case 2:

                        v49 = v48;
                        sub_100125DF4(v338);
                        sub_10012B804();
                        v339 = sub_100046184(&qword_100215398, &qword_1001996A0);
                        v340 = sub_10001BD6C(v339);
                        v342 = 2;
                        goto LABEL_225;
                      case 3:

                        v49 = v48;
                        sub_10012A210(v343);
                        sub_10012B804();
                        v344 = sub_100046184(qword_100214E88, qword_100198FA0);
                        v340 = sub_10001BD6C(v344);
                        v342 = 3;
LABEL_225:
                        sub_10011CE88(v340, v341, v342);
                        *&v906 = v13;
                        break;
                      default:
                        v907 = sub_10012B6E8();
                        *&v906 = v334;
                        v337 = v334;
                        break;
                    }

                    v345 = v905;
                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                    {
                      sub_100008B14();
                      v345 = v905;
                    }

                    sub_10012B794();
                    if (v115)
                    {
                      sub_100006FF0(v346);
                      sub_10012B7A4();
                      sub_100142F90(v347, v348, v349);
                      v345 = v905;
                    }

                    v345[2] = v335;
                    sub_100007948();
                    --v329;
                  }

                  while (v329);
                  v72 = v777;
                  v318 = v874;
                  v80 = v882;
                  v79 = v802;
                  v13 = v891;
                }

                else
                {
                  v80 = v882;

                  sub_10001267C();
                  v13 = v79;
                  v79 = v49;
                  sub_10011CE44(v381, v382, v383);
                }

                v384 = sub_100046184(&qword_100215398, &qword_1001996A0);
                v385 = sub_10000CD04(v384);
                sub_100007D94(v385, v79);
                v239 = v826;
                goto LABEL_255;
              case 3:
                v900 = v48;
                v350 = *(v323 + 8);
                v13 = static _DictionaryStorage.copy(original:)();
                v351 = v79 + 64;
                sub_10000624C();
                v49 = v79;
                j = v353 & v352;

                v803 = v350;
                sub_10000C898(v49, v350);
                v356 = v355 >> 6;
                v845 = v13;
                if (j)
                {
                  goto LABEL_234;
                }

                break;
              default:
                v13 = *v323;
                v79 = *(v323 + 8);
                v325 = sub_10012B6E8();
                sub_10000CEEC(v325);

                v326 = v13;
                v327 = v49;
                v328 = 0;
LABEL_251:
                sub_10011CE44(v326, v327, v328);
                goto LABEL_255;
            }

            while (1)
            {
              v358 = v350;
              v239 = v826;
              v79 = v891;
              do
              {
                v350 = v358 + 1;
                if (__OFADD__(v358, 1))
                {
                  goto LABEL_489;
                }

                if (v350 >= v356)
                {
                  v907 = sub_100046184(qword_100214E88, qword_100198FA0);
                  sub_10002D45C(v891, v803);
                  v48 = v900;
                  v10 = v773;
                  v72 = v777;
LABEL_255:
                  sub_10000863C();
                  sub_100006C50(v386);
                  v388 = (*(v10 + 48) + 16 * v387);
                  *v388 = v861;
                  v388[1] = v80;
                  sub_10001BC4C();
                  if (v148)
                  {
                    goto LABEL_511;
                  }

                  *(v10 + 16) = v389;
                  if (!v318)
                  {
                    goto LABEL_212;
                  }

LABEL_211:
                  sub_10000B118();
                  goto LABEL_217;
                }

                ++v358;
              }

              while (!v351[v350]);
              sub_100003C00();
              for (j = v360 & v359; ; j &= j - 1)
              {
                v361 = *(*(v891 + 6) + 16 * (v357 | (v350 << 6)) + 8);
                sub_10012B778();
                v363 = *v362;
                v364 = v362[1];
                switch(*(v362 + 16))
                {
                  case 1:
                    v907 = &type metadata for String;
                    *&v906 = v363;
                    *(&v906 + 1) = v364;

                    v365 = sub_10000EC48();
                    v367 = 1;
                    goto LABEL_246;
                  case 2:

                    v368 = sub_10000EC48();
                    v370 = sub_10012B738(v368, v369, 2);
                    v775 = sub_100125DF4(v370);
                    v900 = v49;
                    v907 = sub_100046184(&qword_100215398, &qword_1001996A0);
                    v371 = sub_10000EC48();
                    v373 = 2;
                    goto LABEL_244;
                  case 3:

                    v374 = sub_10000EC48();
                    v376 = sub_10012B738(v374, v375, 3);
                    v775 = sub_10012A210(v376);
                    v900 = v49;
                    v907 = sub_100046184(qword_100214E88, qword_100198FA0);
                    v371 = sub_10000EC48();
                    v373 = 3;
LABEL_244:
                    sub_10011CE88(v371, v372, v373);
                    *&v906 = v775;
                    break;
                  default:
                    v907 = sub_10012B6E8();
                    *&v906 = v363;

                    v365 = sub_10000EC48();
                    v367 = 0;
LABEL_246:
                    sub_10011CE44(v365, v366, v367);
                    break;
                }

                sub_10000F660();
                v13 = v845;
                sub_100006C50(v377);
                sub_10000FEB4();
                *v378 = v379;
                v378[1] = v361;
                sub_10000E238();
                v318 = v874;
                if (v148)
                {
                  goto LABEL_509;
                }

                *(v845 + 16) = v380;
                v80 = v882;
                if (!j)
                {
                  break;
                }

LABEL_234:
                v357 = __clz(__rbit64(j));
              }
            }

          default:
            v907 = sub_10012B6E8();
            *&v906 = v79;
            v82 = v79;
            goto LABEL_270;
        }

      case 3:
        v405 = v62;
        sub_10012B76C();
        v406 = static _DictionaryStorage.copy(original:)();
        sub_10000624C();
        v820 = v408 & v407;
        v783 = v405;

        v776 = v64;
        sub_10000BFD8(v65);
        sub_100012F74();
        v785 = v409;
        v793 = v406;
LABEL_277:
        if (v820)
        {
          sub_100006BD4();
LABEL_284:
          sub_10000FF48();
          v415 = v413 + 24 * v414;
          v417 = *v415;
          v416 = *(v415 + 8);
          v837 = *v415;
          v804 = v418;
          v820 = v419;
          v811 = v420;
          switch(*(v415 + 16))
          {
            case 1:
              v907 = &type metadata for String;
              *&v906 = v417;
              *(&v906 + 1) = v416;

              sub_10012B7B0();
              goto LABEL_456;
            case 2:
              v425 = *(v417 + 16);
              v778 = v52;
              if (v425)
              {
                v908 = _swiftEmptyArrayStorage;

                v769 = v416;
                sub_10001267C();
                sub_10011CE44(v426, v427, v428);
                v429 = &v908;
                v823 = v425;
                sub_100142E74(v425);
                sub_10000BA54();
                v827 = v431;
                v432 = v417;
                while (2)
                {
                  if (v430 >= v432[2])
                  {
                    goto LABEL_508;
                  }

                  sub_10001AE30();
                  v435 = v827 + v433 * v434;
                  v437 = *v435;
                  v436 = *(v435 + 8);
                  v846 = v438;
                  v852 = *v435;
                  switch(*(v435 + 16))
                  {
                    case 1:
                      v907 = &type metadata for String;
                      *&v906 = v437;
                      *(&v906 + 1) = v436;

                      goto LABEL_363;
                    case 2:
                      v815 = *(v435 + 8);
                      v425 = v437[2];
                      if (!v425)
                      {

                        v429 = _swiftEmptyArrayStorage;
                        goto LABEL_362;
                      }

                      v905 = _swiftEmptyArrayStorage;

                      v429 = &v905;
                      sub_100142E74(v425);
                      sub_10000BA54();
                      v840 = v425;
                      do
                      {
                        if (v441 >= v437[2])
                        {
                          goto LABEL_492;
                        }

                        sub_100019088();
                        v10 = *v442;
                        v443 = *(v442 + 8);
                        v892 = *v442;
                        v875 = v444;
                        switch(*(v442 + 16))
                        {
                          case 1:
                            v907 = &type metadata for String;
                            *&v906 = v10;
                            *(&v906 + 1) = v443;

                            goto LABEL_318;
                          case 2:
                            v858 = *(v442 + 8);
                            v446 = *v442;
                            v10 = *(v10 + 16);
                            if (v10)
                            {

                              sub_100142E74(v10);
                              v447 = v446 + 48;
                              do
                              {
                                v13 = *v447;
                                v448 = sub_10000DF20();
                                sub_10012B7BC(v448, v449, v450);
                                v451 = sub_10000DF20();
                                sub_1001249E0(v451, v452, v453, v454);
                                v455 = sub_10000DF20();
                                sub_10011CE88(v455, v456, v457);
                                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                                {
                                  sub_1000099D0();
                                }

                                v432 = _swiftEmptyArrayStorage[2];
                                v458 = _swiftEmptyArrayStorage[3];
                                if (v432 >= v458 >> 1)
                                {
                                  v459 = sub_1000066A8(v458);
                                  sub_100142F90(v459, v432 + 1, 1);
                                }

                                v447 += 24;
                                _swiftEmptyArrayStorage[2] = v432 + 1;
                                sub_100007948();
                                --v10;
                              }

                              while (v10);
                              v425 = v840;
                              v446 = v892;
                            }

                            else
                            {
                            }

                            v907 = sub_100046184(&qword_100215398, &qword_1001996A0);
                            sub_100007D94(v446, v858);
                            goto LABEL_318;
                          case 3:
                            sub_10012B810();
                            v461 = v460;
                            v462 = static _DictionaryStorage.copy(original:)();
                            v432 = (v10 + 64);
                            sub_10000451C();
                            v465 = v464 & v463;
                            v859 = v461;
                            sub_10000BFD8(v10);
                            v466 = 0;
                            v467 = (v429 + 63) >> 6;
                            v868 = v462;
                            if (v465)
                            {
                              goto LABEL_305;
                            }

                            break;
                          default:
                            v445 = sub_10012B6E8();
                            sub_10012B878(v445);
                            goto LABEL_318;
                        }

LABEL_306:
                        v469 = v466;
                        while (1)
                        {
                          v466 = v469 + 1;
                          if (__OFADD__(v469, 1))
                          {
LABEL_474:
                            __break(1u);
LABEL_475:
                            __break(1u);
LABEL_476:
                            __break(1u);
LABEL_477:
                            __break(1u);
LABEL_478:
                            __break(1u);
LABEL_479:
                            __break(1u);
LABEL_480:
                            __break(1u);
                            goto LABEL_481;
                          }

                          if (v466 >= v467)
                          {
                            break;
                          }

                          ++v469;
                          if (v432[v466])
                          {
                            v901 = v48;
                            sub_100003C00();
                            v465 = v471 & v470;
                            while (1)
                            {
                              v472 = v468 | (v466 << 6);
                              v473 = (*(v10 + 48) + 16 * v472);
                              v474 = v473[1];
                              v883 = *v473;
                              sub_10012B778();
                              v13 = *(v475 + 16);

                              v476 = sub_10000DF20();
                              sub_10012B7BC(v476, v477, v478);
                              v479 = sub_10000DF20();
                              sub_1001249E0(v479, v480, v481, v482);
                              v483 = sub_10000DF20();
                              sub_10011CE88(v483, v484, v485);
                              sub_10000F660();
                              v462 = v868;
                              sub_100006C50(v486);
                              v487 = (v868[6] + 16 * v472);
                              *v487 = v883;
                              v487[1] = v474;
                              sub_100028734(&v906, (v868[7] + 32 * v472));
                              v488 = v868[2];
                              v148 = __OFADD__(v488, 1);
                              v489 = v488 + 1;
                              if (v148)
                              {
                                break;
                              }

                              v868[2] = v489;
                              v10 = v892;
                              v48 = v901;
                              if (!v465)
                              {
                                goto LABEL_306;
                              }

LABEL_305:
                              v901 = v48;
                              sub_10000FE58();
                            }

LABEL_490:
                            __break(1u);
LABEL_491:
                            __break(1u);
LABEL_492:
                            __break(1u);
LABEL_493:
                            __break(1u);
LABEL_494:
                            __break(1u);
LABEL_495:
                            __break(1u);
LABEL_496:
                            __break(1u);
LABEL_497:
                            __break(1u);
LABEL_498:
                            __break(1u);
                            goto LABEL_499;
                          }
                        }

                        v490 = sub_100046184(qword_100214E88, qword_100198FA0);
                        v491 = sub_100007AC8(v490);
                        sub_10011CE88(v491, v859, 3);
                        *&v906 = v462;
                        v437 = v852;
                        v425 = v840;
LABEL_318:
                        v429 = v905;
                        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                        {
                          sub_100008B14();
                          v429 = v905;
                        }

                        sub_10001BEB8();
                        if (v115)
                        {
                          v493 = sub_100006FF0(v492);
                          sub_10002510C(v493);
                          v429 = v905;
                        }

                        sub_100015BA8();
                        v441 = v875;
                      }

                      while (v875 != v425);
LABEL_362:
                      v570 = sub_100046184(&qword_100215398, &qword_1001996A0);
                      v571 = sub_100007754(v570);
                      sub_100007D94(v571, v815);
LABEL_363:
                      v572 = v908;
                      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                      {
                        v429 = &v908;
                        v573 = sub_10000AF58();
                        sub_100142F90(v573, v574, v575);
                        v572 = v908;
                      }

                      sub_10000FFD4();
                      if (v115)
                      {
                        v577 = sub_1000066A8(v576);
                        v429 = &v908;
                        sub_10002510C(v577);
                        v572 = v908;
                      }

                      v572[2] = v432;
                      sub_10012B754(&v572[4 * v425]);
                      v430 = v846;
                      v432 = v837;
                      if (v846 == v823)
                      {
                        v746 = v769;
                        goto LABEL_459;
                      }

                      continue;
                    case 3:
                      sub_10012B76C();
                      v10 = static _DictionaryStorage.copy(original:)();
                      v432 = v437 + 8;
                      sub_10000451C();
                      v496 = (v495 & v494);
                      v816 = v436;
                      sub_10011CE44(v437, v436, 3);
                      v497 = 0;
                      v498 = v429 + 63;
                      v429 = v496;
                      v425 = v498 >> 6;
                      v789 = v10;
                      v800 = v437 + 8;
                      v796 = v498 >> 6;
                      if (v429)
                      {
                        goto LABEL_325;
                      }

LABEL_326:
                      v500 = v497;
                      do
                      {
                        v497 = v500 + 1;
                        if (__OFADD__(v500, 1))
                        {
                          goto LABEL_480;
                        }

                        if (v497 >= v425)
                        {
                          v568 = sub_100046184(qword_100214E88, qword_100198FA0);
                          v569 = sub_100007754(v568);
                          sub_10011CE88(v569, v816, 3);
                          *&v906 = v10;
                          goto LABEL_363;
                        }

                        ++v500;
                      }

                      while (!v432[v497]);
                      sub_100003C00();
                      v429 = (v502 & v501);
                      break;
                    default:
                      v439 = sub_10012B6E8();
                      sub_1000189E8(v439);
                      v440 = v437;
                      goto LABEL_363;
                  }

                  break;
                }

LABEL_331:
                v503 = *(v437[6] + 16 * (v499 | (v497 << 6)) + 8);
                sub_1000149A8();
                v505 = *v504;
                v506 = *(v504 + 8);
                v876 = v503;
                v884 = *v504;
                v862 = v507;
                switch(*(v504 + 16))
                {
                  case 1:
                    v907 = &type metadata for String;
                    *&v906 = v505;
                    *(&v906 + 1) = v506;
                    v13 = v48;

                    sub_10012B7B0();
                    goto LABEL_352;
                  case 2:
                    v831 = v429;
                    v512 = v48;
                    v513 = v505[2];
                    v13 = *v504;
                    if (v513)
                    {
                      v905 = _swiftEmptyArrayStorage;

                      sub_10001267C();
                      sub_10011CE44(v514, v515, v516);
                      sub_100142E74(v513);
                      v517 = v905;
                      v518 = v13 + 48;
                      do
                      {
                        v519 = *(v518 - 16);
                        v520 = sub_100005AA4();
                        sub_10012B7BC(v520, v521, v522);
                        v523 = sub_100005AA4();
                        sub_1001249E0(v523, v524, v525, v526);
                        v527 = sub_100005AA4();
                        sub_10011CE88(v527, v528, v529);
                        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                        {
                          sub_100008B14();
                          v517 = v905;
                        }

                        sub_10012B794();
                        if (v115)
                        {
                          sub_100006FF0(v530);
                          sub_10012B7A4();
                          sub_100142F90(v531, v532, v533);
                          v517 = v905;
                        }

                        v518 += 24;
                        v517[2] = v519;
                        sub_100007948();
                        --v513;
                      }

                      while (v513);
                      v432 = v800;
                      v425 = v796;
                      v503 = v876;
                      v13 = v884;
                      v558 = v506;
                    }

                    else
                    {

                      sub_10001267C();
                      v558 = v506;
                      sub_10011CE44(v559, v560, v561);
                    }

                    v562 = sub_100046184(&qword_100215398, &qword_1001996A0);
                    v563 = sub_10000CD04(v562);
                    sub_100007D94(v563, v558);
                    v48 = v512;
                    v437 = v852;
                    v429 = v831;
                    goto LABEL_356;
                  case 3:
                    v832 = v429;
                    v534 = *v504;
                    v13 = static _DictionaryStorage.copy(original:)();
                    sub_10000451C();
                    v893 = v536 & v535;

                    sub_10011CE44(v534, v506, 3);
                    v537 = 0;
                    v841 = v13;
                    break;
                  default:
                    v13 = v48;
                    v508 = *v504;
                    v907 = sub_10012B6E8();
                    *&v906 = v508;

                    v509 = v508;
                    v48 = v13;
                    v510 = v506;
                    v511 = 0;
LABEL_352:
                    sub_10011CE44(v509, v510, v511);
                    goto LABEL_356;
                }

                while (1)
                {
                  if (v893)
                  {
                    sub_100006BD4();
                    v893 = v539;
                    v902 = v48;
                    goto LABEL_349;
                  }

                  v540 = v537;
                  v429 = v832;
                  do
                  {
                    v537 = v540 + 1;
                    if (__OFADD__(v540, 1))
                    {
                      goto LABEL_479;
                    }

                    if (v537 >= ((v854 + 63) >> 6))
                    {
                      v907 = sub_100046184(qword_100214E88, qword_100198FA0);
                      sub_10002D45C(v884, v506);
                      v437 = v852;
                      v10 = v789;
                      v432 = v800;
                      v425 = v796;
LABEL_356:
                      sub_10000863C();
                      sub_100006C50(v564);
                      v566 = (*(v10 + 48) + 16 * v565);
                      *v566 = v862;
                      v566[1] = v503;
                      sub_10001BC4C();
                      if (v148)
                      {
                        goto LABEL_507;
                      }

                      *(v10 + 16) = v567;
                      if (!v429)
                      {
                        goto LABEL_326;
                      }

LABEL_325:
                      sub_10012B844();
                      goto LABEL_331;
                    }

                    ++v540;
                  }

                  while (!*(v534 + v537 + 8));
                  sub_100003C00();
                  v893 = v542 & v541;
                  v902 = v48;
LABEL_349:
                  v543 = *(v884[6] + 16 * (v538 | (v537 << 6)) + 8);
                  sub_10012B778();

                  v544 = sub_10000DF20();
                  sub_10012B7BC(v544, v545, v546);
                  v547 = sub_10000DF20();
                  sub_1001249E0(v547, v548, v549, v550);
                  v551 = sub_10000DF20();
                  sub_10011CE88(v551, v552, v553);
                  sub_10000F660();
                  sub_100006C50(v554);
                  v13 = v841;
                  sub_10000FEB4();
                  *v555 = v556;
                  v555[1] = v543;
                  sub_10000E238();
                  if (v148)
                  {
                    goto LABEL_506;
                  }

                  *(v841 + 16) = v557;
                  v48 = v902;
                  v503 = v876;
                }
              }

              sub_10001267C();
              v746 = v416;
              sub_10011CE44(v743, v744, v745);
              v572 = _swiftEmptyArrayStorage;
LABEL_459:
              v747 = sub_100046184(&qword_100215398, &qword_1001996A0);
              v748 = sub_100007754(v747);
              sub_10011CE88(v748, v746, 2);
              *&v906 = v572;
              goto LABEL_460;
            case 3:
              sub_10012B76C();
              v578 = v416;
              v579 = static _DictionaryStorage.copy(original:)();
              sub_10000624C();
              v842 = v581 & v580;
              v778 = v52;

              v770 = v416;
              sub_10000BFD8(v417);
              sub_100012F74();
              v828 = v579;
              v797 = v582;
LABEL_370:
              if (v842)
              {
                sub_100006BD4();
              }

              else
              {
                v584 = v583;
                do
                {
                  if (__OFADD__(v584, 1))
                  {
                    goto LABEL_498;
                  }

                  if (v584 + 1 >= v582)
                  {
                    v907 = sub_100046184(qword_100214E88, qword_100198FA0);
                    sub_1000385FC(v837, v770);
LABEL_460:
                    v52 = v778;
LABEL_461:
                    sub_10000863C();
                    sub_100006C50(v749);
                    v751 = (v793[6] + 16 * v750);
                    *v751 = v811;
                    v751[1] = v52;
                    sub_10001AC7C(v752, (v793[7] + 32 * v750));
                    if (!v148)
                    {
                      v793[2] = v753;
                      v409 = v785;
                      v410 = v804;
                      goto LABEL_277;
                    }

                    goto LABEL_517;
                  }

                  sub_10012B858();
                }

                while (!v585);
                sub_100003C00();
              }

              break;
            default:
              v421 = sub_10012B6E8();
              sub_1000189E8(v421);

              v422 = v417;
              v423 = v416;
              v424 = 0;
LABEL_456:
              sub_10011CE44(v422, v423, v424);
              goto LABEL_461;
          }

          sub_10000FF48();
          v835 = v586;
          sub_10012B830();
          v853 = v417;
          v833 = v587;
          v842 = v588;
          switch(v589)
          {
            case 1:
              v907 = &type metadata for String;
              *&v906 = v417;
              *(&v906 + 1) = v578;

              v591 = sub_100008380();
              v593 = 1;
              goto LABEL_448;
            case 2:
              v594 = *(v417 + 16);
              v790 = v52;
              if (v594)
              {
                v908 = _swiftEmptyArrayStorage;

                v771 = v578;
                sub_10011CE44(v417, v578, 2);
                sub_100142E74(v594);
                sub_10000BA54();
                while (1)
                {
                  if (v595 >= *(v417 + 16))
                  {
                    goto LABEL_504;
                  }

                  sub_100019088();
                  v10 = *v596;
                  v597 = *(v596 + 8);
                  v894 = *v596;
                  v877 = v598;
                  switch(*(v596 + 16))
                  {
                    case 1:
                      sub_10012B7D4(&type metadata for String);
                      goto LABEL_406;
                    case 2:
                      v600 = *(v10 + 16);
                      if (v600)
                      {
                        v847 = *(v596 + 8);
                        v905 = _swiftEmptyArrayStorage;

                        sub_100142E74(v600);
                        v601 = v905;
                        v602 = (v10 + 48);
                        do
                        {
                          v603 = *(v602 - 2);
                          v13 = *v602;
                          v604 = sub_10000AC78();
                          sub_10012B7BC(v604, v605, v606);
                          v607 = sub_10000AC78();
                          sub_1001249E0(v607, v608, v609, v610);
                          v611 = sub_10000AC78();
                          sub_10011CE88(v611, v612, v613);
                          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                          {
                            sub_100008B14();
                            v601 = v905;
                          }

                          sub_10002DF58();
                          if (v115)
                          {
                            sub_100006FF0(v614);
                            sub_10001361C();
                            sub_100142F90(v615, v616, v617);
                            v601 = v905;
                          }

                          v602 += 24;
                          v601[2] = v603;
                          sub_100007948();
                          --v600;
                        }

                        while (v600);
                        v10 = v894;
                        v597 = v847;
                      }

                      else
                      {
                      }

                      v649 = sub_100046184(&qword_100215398, &qword_1001996A0);
                      v650 = sub_100007AC8(v649);
                      sub_100007D94(v650, v597);
                      goto LABEL_406;
                    case 3:
                      v903 = v48;
                      sub_10012B810();
                      v618 = static _DictionaryStorage.copy(original:)();
                      sub_100023FA0();
                      sub_100003CAC();
                      v621 = v620 & v619;
                      v848 = v622;
                      sub_10000C898(v10, v622);
                      v624 = v623 >> 6;
                      v869 = v618;
                      if (v621)
                      {
                        goto LABEL_393;
                      }

                      break;
                    default:
                      v599 = sub_10012B6E8();
                      sub_10012B878(v599);
                      goto LABEL_406;
                  }

                  while (1)
                  {
                    v626 = v48;
                    v417 = v853;
LABEL_395:
                    v48 = v626 + 1;
                    if (__OFADD__(v626, 1))
                    {
                      goto LABEL_477;
                    }

                    if (v48 >= v624)
                    {
                      break;
                    }

                    ++v626;
                    if (!*(v594 + 8 * v48))
                    {
                      goto LABEL_395;
                    }

                    sub_100003C00();
                    v621 = v628 & v627;
                    while (1)
                    {
                      v629 = v625 | (v48 << 6);
                      v630 = (*(v10 + 48) + 16 * v629);
                      v631 = v630[1];
                      v885 = *v630;
                      sub_10012B778();
                      v13 = *(v632 + 16);

                      v633 = sub_10000AC78();
                      sub_10012B7BC(v633, v634, v635);
                      v636 = sub_10000AC78();
                      sub_1001249E0(v636, v637, v638, v639);
                      v640 = sub_10000AC78();
                      sub_10011CE88(v640, v641, v642);
                      sub_10000F660();
                      v618 = v869;
                      sub_100006C50(v643);
                      v644 = (v869[6] + 16 * v629);
                      *v644 = v885;
                      v644[1] = v631;
                      sub_100028734(&v906, (v869[7] + 32 * v629));
                      v645 = v869[2];
                      v148 = __OFADD__(v645, 1);
                      v646 = v645 + 1;
                      if (v148)
                      {
                        goto LABEL_502;
                      }

                      v869[2] = v646;
                      v10 = v894;
                      if (!v621)
                      {
                        break;
                      }

LABEL_393:
                      sub_10012B7F0();
                    }
                  }

                  v647 = sub_100046184(qword_100214E88, qword_100198FA0);
                  v648 = sub_100007AC8(v647);
                  sub_10011CE88(v648, v848, 3);
                  *&v906 = v618;
                  v48 = v903;
LABEL_406:
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    sub_10000BF20();
                    v651 = sub_10000AF58();
                    sub_100142F90(v651, v652, v653);
                  }

                  sub_10001BEB8();
                  if (v115)
                  {
                    v655 = sub_1000066A8(v654);
                    sub_10002510C(v655);
                  }

                  sub_100015BA8();
                  v595 = v877;
                  if (v877 == v594)
                  {
                    v578 = v771;
                    goto LABEL_451;
                  }
                }
              }

              v733 = sub_100005680();
              sub_10011CE44(v733, v734, v735);
LABEL_451:
              v907 = sub_100046184(&qword_100215398, &qword_1001996A0);
              v736 = sub_100008380();
              sub_100007D94(v736, v737);
              v579 = v828;
              goto LABEL_452;
            case 3:
              sub_10012B76C();
              static _DictionaryStorage.copy(original:)();
              sub_10000BBDC();
              v768 = v656;
              sub_10000624C();
              v659 = v658 & v657;
              v790 = v52;

              v772 = v578;
              sub_10000BFD8(v417);
              sub_10012B864();
              v766 = v10;
              v767 = v52;
              if (v659)
              {
                goto LABEL_413;
              }

LABEL_414:
              v661 = v417;
              do
              {
                v417 = v661 + 1;
                if (__OFADD__(v661, 1))
                {
                  goto LABEL_497;
                }

                if (v417 >= v52)
                {
                  v907 = sub_100046184(qword_100214E88, qword_100198FA0);
                  sub_10011CE88(v853, v772, 3);
                  *&v906 = v10;
LABEL_452:
                  v52 = v790;
LABEL_453:
                  sub_10000863C();
                  sub_100006C50(v738);
                  v740 = (v579[6] + 16 * v739);
                  *v740 = v835;
                  v740[1] = v52;
                  sub_10001AC7C(v741, (v579[7] + 32 * v739));
                  if (!v148)
                  {
                    v579[2] = v742;
                    v582 = v797;
                    v583 = v833;
                    goto LABEL_370;
                  }

                  goto LABEL_516;
                }

                ++v661;
              }

              while (!*(v768 + 8 * v417));
              sub_100003C00();
              v659 = v663 & v662;
              break;
            default:
              v590 = sub_10012B6E8();
              sub_1000189E8(v590);

              v591 = sub_100008380();
              v593 = 0;
LABEL_448:
              sub_10011CE44(v591, v592, v593);
              goto LABEL_453;
          }

LABEL_419:
          v664 = *(v853[6] + 16 * (v660 | (v417 << 6)) + 8);
          sub_1000149A8();
          v13 = *v665;
          v666 = *(v665 + 8);
          v878 = v664;
          v886 = v659;
          v895 = *v665;
          v860 = v667;
          switch(*(v665 + 16))
          {
            case 1:
              v907 = &type metadata for String;
              *&v906 = v13;
              *(&v906 + 1) = v666;

              sub_10012B7B0();
              goto LABEL_440;
            case 2:
              v672 = *(v13 + 16);
              if (v672)
              {
                v908 = _swiftEmptyArrayStorage;

                sub_10001267C();
                sub_10011CE44(v673, v674, v675);
                sub_100142E74(v672);
                v676 = v908;
                v677 = v13 + 48;
                do
                {
                  v678 = *(v677 - 16);
                  v679 = sub_100005AA4();
                  sub_10012B7BC(v679, v680, v681);
                  v682 = sub_100005AA4();
                  sub_1001249E0(v682, v683, v684, v685);
                  v686 = sub_100005AA4();
                  sub_10011CE88(v686, v687, v688);
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    sub_10000BF20();
                    v689 = sub_10000AF58();
                    sub_100142F90(v689, v690, v691);
                    v676 = v908;
                  }

                  sub_10012B794();
                  if (v115)
                  {
                    sub_1000066A8(v692);
                    sub_10012B7A4();
                    sub_100142F90(v693, v694, v695);
                    v676 = v908;
                  }

                  v677 += 24;
                  v676[2] = v678;
                  sub_100007948();
                  --v672;
                }

                while (v672);
                v52 = v767;
                v659 = v886;
                v578 = v666;
                v13 = v895;
              }

              else
              {

                sub_10001267C();
                v578 = v666;
                sub_10011CE44(v724, v725, v726);
              }

              v727 = sub_100046184(&qword_100215398, &qword_1001996A0);
              v728 = sub_10000CD04(v727);
              sub_100007D94(v728, v578);
              v579 = v828;
              goto LABEL_444;
            case 3:
              v904 = v48;
              v696 = *(v665 + 8);
              v697 = static _DictionaryStorage.copy(original:)();
              v698 = v13 + 64;
              sub_10000624C();
              v701 = v700 & v699;

              v702 = v13;
              v13 = v697;
              v774 = v696;
              sub_10000C898(v702, v696);
              v704 = v703 >> 6;
              break;
            default:
              v578 = *(v665 + 8);
              v668 = sub_10012B6E8();
              sub_10000CEEC(v668);

              v669 = v13;
              v670 = v666;
              v671 = 0;
LABEL_440:
              sub_10011CE44(v669, v670, v671);
              goto LABEL_444;
          }

          while (1)
          {
            v578 = v895;
            if (v701)
            {
              sub_10012B844();
              v866 = v701;
              goto LABEL_437;
            }

            v706 = v48;
            v579 = v828;
            do
            {
              v48 = v706 + 1;
              if (__OFADD__(v706, 1))
              {
                goto LABEL_495;
              }

              if (v48 >= v704)
              {
                v907 = sub_100046184(qword_100214E88, qword_100198FA0);
                sub_10002D45C(v895, v774);
                v48 = v904;
                v10 = v766;
                v52 = v767;
LABEL_444:
                sub_10000863C();
                sub_100006C50(v729);
                v731 = (*(v10 + 48) + 16 * v730);
                *v731 = v860;
                v731[1] = v664;
                sub_10001BC4C();
                if (v148)
                {
                  goto LABEL_515;
                }

                *(v10 + 16) = v732;
                if (!v659)
                {
                  goto LABEL_414;
                }

LABEL_413:
                sub_10000B118();
                goto LABEL_419;
              }

              ++v706;
            }

            while (!*(v698 + 8 * v48));
            sub_100003C00();
            v866 = v708 & v707;
LABEL_437:
            v709 = *(v895[6] + 16 * (v705 | (v48 << 6)) + 8);
            sub_10012B778();

            v710 = sub_10012B784();
            sub_10012B7BC(v710, v711, v712);
            v713 = sub_10012B784();
            sub_1001249E0(v713, v714, v715, v716);
            v717 = sub_10012B784();
            sub_10011CE88(v717, v718, v719);
            sub_10000F660();
            sub_100006C50(v720);
            v13 = v697;
            sub_10000FEB4();
            *v721 = v722;
            v721[1] = v709;
            sub_10000E238();
            if (v148)
            {
              goto LABEL_514;
            }

            *(v697 + 16) = v723;
            v664 = v878;
            v659 = v886;
            v701 = v866;
          }
        }

        v411 = v410;
        while (1)
        {
          if (__OFADD__(v411, 1))
          {
            goto LABEL_496;
          }

          if (v411 + 1 >= v409)
          {
            break;
          }

          sub_10012B858();
          if (v412)
          {
            sub_100003C00();
            goto LABEL_284;
          }
        }

        v907 = sub_100046184(qword_100214E88, qword_100198FA0);
        sub_10011CE88(v824, v776, 3);
        *&v906 = v793;
LABEL_468:
        v62 = v783;
LABEL_469:
        sub_10000863C();
        sub_100006C50(v760);
        v762 = (v798[6] + 16 * v761);
        *v762 = v808;
        v762[1] = v62;
        sub_100028734(&v906, (v798[7] + 32 * v761));
        v763 = v798[2];
        v148 = __OFADD__(v763, 1);
        v764 = v763 + 1;
        if (v148)
        {
          goto LABEL_513;
        }

        v49 = v798;
        v798[2] = v764;
        v52 = v806;
        v54 = v807;
        if (v806)
        {
          goto LABEL_37;
        }

        break;
      default:
        v68 = sub_10012B6E8();
        sub_1000189E8(v68);

        v69 = sub_100008380();
        v71 = 0;
LABEL_464:
        sub_10011CE44(v69, v70, v71);
        goto LABEL_469;
    }
  }
}

void sub_1001295D4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = v3;
  sub_1000089E4(v3 + 88, v25);
  v9 = *(v3 + 88);

  v10 = sub_1000E2418();
  sub_100025DE8(v10, v11, v9, v12);

  if (v24)
  {
    sub_100008C84(&v23, &v26);
    sub_100008C84(&v26, a3);
  }

  else
  {
    sub_10000F94C(&v23, &qword_10021CC50, &qword_1001A16E8);
    sub_1000089E4(v5 + 104, &v23);

    sub_1000E2418();
    v13 = sub_1001442CC();

    if (v13)
    {
      v14 = type metadata accessor for ProtoOneOf();
      swift_allocObject();

      v15 = sub_1000E2418();
      sub_100142290(v15, v16, v13);
      if (!v4)
      {
        v18 = v17;
        v27 = v14;
        v28 = &off_100200188;
        *&v26 = v17;
        sub_100005D5C(v5 + 88, &v22);

        sub_100125A94(&v26, a1, a2);
        swift_endAccess();
        sub_100005D5C(v5 + 104, &v26);
        v19 = sub_1000E2418();
        sub_100139B7C(v19, v20);
        swift_endAccess();

        a3[3] = v14;
        a3[4] = &off_100200188;
        *a3 = v18;
      }
    }

    else
    {
      sub_10011DDBC();
      swift_allocError();
      *v21 = 7;
      *(v21 + 8) = 0u;
      *(v21 + 24) = 0u;
      *(v21 + 40) = 3584;
      swift_willThrow();
    }
  }
}

void *sub_1001297D8(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ProtobufPayload();
  v5 = swift_allocObject();
  v5[5] = type metadata accessor for ProtoMessageSchema();
  v5[6] = &off_1001FF278;
  v5[2] = v2;
  v5[7] = a1;
  v5[8] = a2;
  sub_10012A1B8();

  v6 = sub_100003898();
  sub_100014924(v6, v7);
  return v5;
}

uint64_t sub_100129864()
{

  swift_unknownObjectRelease();
}

uint64_t sub_1001298CC()
{

  swift_unknownObjectRelease();

  return v0;
}

uint64_t sub_100129934()
{
  sub_1001298CC();

  return _swift_deallocClassInstance(v0, 112, 7);
}

void *sub_1001299EC(void *a1)
{
  v2 = v1;
  v108 = a1;
  v3 = a1[4];
  sub_100046184(&qword_10021CA98, &unk_1001A1660);
  static _DictionaryStorage.copy(original:)();
  v94 = v3 + 64;
  sub_100008150();
  v6 = v5 & v4;
  v8 = (v7 + 63) >> 6;
  v96 = v9;
  v97 = v3;

  v10 = 0;
  if (v6)
  {
    while (1)
    {
      v11 = __clz(__rbit64(v6));
      v98 = (v6 - 1) & v6;
LABEL_8:
      v15 = v11 | (v10 << 6);
      v16 = (*(v97 + 48) + 16 * v15);
      v18 = *v16;
      v17 = v16[1];
      sub_100009848(*(v97 + 56) + 32 * v15, v101);
      sub_100009848(v101, v100);

      sub_100124CE8(v100);
      if (v2)
      {
        break;
      }

      v22 = v19;
      v23 = v20;
      v24 = v21;
      sub_100007378(v101);
      sub_10012B81C();
      sub_100006C50(v25);
      v26 = (v96[6] + 16 * v15);
      *v26 = v18;
      v26[1] = v17;
      v27 = v96[7] + 24 * v15;
      *v27 = v22;
      *(v27 + 8) = v23;
      *(v27 + 16) = v24;
      v28 = v96[2];
      v29 = __OFADD__(v28, 1);
      v30 = v28 + 1;
      if (v29)
      {
        goto LABEL_52;
      }

      v96[2] = v30;
      v2 = 0;
      v6 = v98;
      if (!v98)
      {
        goto LABEL_3;
      }
    }

    return sub_100007378(v101);
  }

  else
  {
LABEL_3:
    v12 = v10;
    while (1)
    {
      v10 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
LABEL_49:
        __break(1u);
        goto LABEL_50;
      }

      if (v10 >= v8)
      {
        break;
      }

      ++v12;
      if (*(v94 + 8 * v10))
      {
        sub_100003C00();
        v98 = v14 & v13;
        goto LABEL_8;
      }
    }

    v31 = v108;
    sub_1000089E4((v108 + 11), v104);
    v32 = v31[11];

    v33 = Dictionary.init(dictionaryLiteral:)();
    v34 = v32 + 64;
    sub_100004538();
    v37 = v36 & v35;
    v39 = (v38 + 63) >> 6;

    v40 = 0;
    v92 = v39;
    if (!v37)
    {
      goto LABEL_14;
    }

    while (2)
    {
      v41 = v40;
LABEL_17:
      v42 = (*(v32 + 48) + ((v41 << 10) | (16 * __clz(__rbit64(v37)))));
      v44 = *v42;
      v43 = v42[1];

      sub_1001295D4(v44, v43, v101);
      if (v2)
      {
      }

      sub_1000092B4(v101, v100);
      v45 = OneOfModel.init(_:)(v100);
      v37 &= v37 - 1;
      swift_isUniquelyReferenced_nonNull_native();
      v100[0] = v33;
      sub_10013651C(v45, v44, v43);
      v95 = v100[0];
      v46 = v102;
      v47 = v103;
      sub_100007534(v101, v102);
      v48 = (*(v47 + 24))(v46, v47) + 56;
      sub_100004538();
      v51 = v50 & v49;
      v53 = (v52 + 63) >> 6;
      v99 = v54;

      v55 = 0;
      if (!v51)
      {
        goto LABEL_20;
      }

      do
      {
        v56 = v55;
LABEL_23:
        v57 = (*(v99 + 48) + ((v56 << 10) | (16 * __clz(__rbit64(v51)))));
        v58 = *v57;
        v59 = v57[1];

        sub_100025A1C(v58, v59, v100);
        v51 &= v51 - 1;
        sub_100007378(v100);

        v55 = v56;
      }

      while (v51);
      while (1)
      {
LABEL_20:
        v56 = v55 + 1;
        if (__OFADD__(v55, 1))
        {
          __break(1u);
          goto LABEL_49;
        }

        if (v56 >= v53)
        {
          break;
        }

        v51 = *(v48 + 8 * v56);
        ++v55;
        if (v51)
        {
          goto LABEL_23;
        }
      }

      sub_100007378(v101);
      v40 = v41;
      v2 = 0;
      v33 = v95;
      v39 = v92;
      v34 = v32 + 64;
      if (v37)
      {
        continue;
      }

      break;
    }

LABEL_14:
    while (1)
    {
      v41 = v40 + 1;
      if (__OFADD__(v40, 1))
      {
        break;
      }

      if (v41 >= v39)
      {

        v60 = v108;
        sub_1000089E4((v108 + 9), v100);
        v61 = v60[9];

        v62 = Dictionary.init(dictionaryLiteral:)();
        v63 = v61 + 64;
        sub_100008150();
        v66 = v65 & v64;
        v68 = (v67 + 63) >> 6;

        v69 = 0;
        v93 = v68;
        if (v66)
        {
          goto LABEL_32;
        }

LABEL_28:
        while (1)
        {
          v70 = v69 + 1;
          if (__OFADD__(v69, 1))
          {
            goto LABEL_51;
          }

          if (v70 >= v68)
          {

            return v96;
          }

          v66 = *(v63 + 8 * v70);
          ++v69;
          if (v66)
          {
            v69 = v70;
LABEL_32:
            while (1)
            {
              v71 = (*(v61 + 48) + ((v69 << 10) | (16 * __clz(__rbit64(v66)))));
              v72 = *v71;
              v73 = v71[1];

              sub_100025A1C(v72, v73, v101);
              if (v2)
              {
                break;
              }

              PropertyModel.init(_:)(v101, &v105);
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v101[0] = v62;
              v75 = sub_100005B74(v72, v73);
              v77 = v62[2];
              v78 = (v76 & 1) == 0;
              v79 = v77 + v78;
              if (__OFADD__(v77, v78))
              {
                goto LABEL_53;
              }

              v80 = v75;
              v81 = v76;
              sub_100046184(&qword_10021CC80, &qword_1001A1720);
              if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v79))
              {
                v82 = sub_100005B74(v72, v73);
                if ((v81 & 1) != (v83 & 1))
                {
                  goto LABEL_55;
                }

                v80 = v82;
              }

              v2 = 0;
              v62 = v101[0];
              if (v81)
              {
                v84 = *(v101[0] + 56) + 40 * v80;
                *(v84 + 32) = v107;
                v85 = v106;
                *v84 = v105;
                *(v84 + 16) = v85;
              }

              else
              {
                *(v101[0] + 8 * (v80 >> 6) + 64) |= 1 << v80;
                v86 = (v62[6] + 16 * v80);
                *v86 = v72;
                v86[1] = v73;
                v87 = v62[7] + 40 * v80;
                v88 = v106;
                *v87 = v105;
                *(v87 + 16) = v88;
                *(v87 + 32) = v107;
                v89 = v62[2];
                v29 = __OFADD__(v89, 1);
                v90 = v89 + 1;
                if (v29)
                {
                  goto LABEL_54;
                }

                v62[2] = v90;
              }

              v66 &= v66 - 1;
              v68 = v93;
              v63 = v61 + 64;
              if (!v66)
              {
                goto LABEL_28;
              }
            }
          }
        }
      }

      v37 = *(v34 + 8 * v41);
      ++v40;
      if (v37)
      {
        goto LABEL_17;
      }
    }

LABEL_50:
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
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  return result;
}

unint64_t sub_10012A1B8()
{
  result = qword_10021E1B0;
  if (!qword_10021E1B0)
  {
    type metadata accessor for ProtobufPayload();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021E1B0);
  }

  return result;
}

_OWORD *sub_10012A210(uint64_t a1)
{
  sub_100046184(&qword_100216690, &qword_1001A0410);
  result = static _DictionaryStorage.copy(original:)();
  v3 = result;
  v4 = 0;
  v28 = result;
  v29 = a1;
  v7 = *(a1 + 64);
  v6 = a1 + 64;
  v5 = v7;
  v8 = 1 << *(v6 - 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & v5;
  v11 = (v8 + 63) >> 6;
  v27 = result + 4;
  if ((v9 & v5) != 0)
  {
    while (1)
    {
      v12 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_10:
      v15 = v12 | (v4 << 6);
      v16 = *(v29 + 56);
      v17 = (*(v29 + 48) + 16 * v15);
      v18 = v17[1];
      v31 = *v17;
      v19 = v16 + 24 * v15;
      v20 = *v19;
      v21 = *(v19 + 8);
      v22 = *(v19 + 16);

      sub_10011CE44(v20, v21, v22);
      sub_1001249E0(v20, v21, v22, v30);
      sub_10011CE88(v20, v21, v22);
      v3 = v28;
      *(v27 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v23 = (v28[6] + 16 * v15);
      *v23 = v31;
      v23[1] = v18;
      result = sub_100028734(v30, (v28[7] + 32 * v15));
      v24 = v28[2];
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        break;
      }

      v28[2] = v26;
      if (!v10)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v13 = v4;
    while (1)
    {
      v4 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v4 >= v11)
      {
        return v3;
      }

      v14 = *(v6 + 8 * v4);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v10 = (v14 - 1) & v14;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10012A3D0(uint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(void *))
{
  v6 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v6 = a2(v6);
  }

  v7 = *(v6 + 16);
  v9[0] = v6 + 32;
  v9[1] = v7;
  result = a3(v9);
  *a1 = v6;
  return result;
}

Swift::Int sub_10012A454(uint64_t *a1)
{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        sub_100046184(&qword_10021CC90, &qword_1001A1730);
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v6[2] = v5;
      }

      v7[0] = (v6 + 4);
      v7[1] = v5;
      sub_10012AB00(v7, v8, a1, v4);
      v6[2] = 0;
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
    return sub_10012A558(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_10012A558(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 56 * a3 - 56;
    v6 = result - a3;
    while (2)
    {
      v7 = v6;
      v8 = v5;
      do
      {
        v9 = *(v8 + 96);
        if (v9 >= *(v8 + 40))
        {
          break;
        }

        if (!v4)
        {
          __break(1u);
          return result;
        }

        v11 = *(v8 + 56);
        v10 = *(v8 + 64);
        v12 = *(v8 + 72);
        v13 = *(v8 + 104);
        v14 = *(v8 + 16);
        result = *(v8 + 48);
        *(v8 + 56) = *v8;
        v15 = *(v8 + 80);
        *(v8 + 72) = v14;
        *(v8 + 88) = *(v8 + 32);
        *(v8 + 104) = result;
        *v8 = v11;
        *(v8 + 8) = v10;
        *(v8 + 16) = v12;
        *(v8 + 24) = v15;
        *(v8 + 40) = v9;
        *(v8 + 48) = v13;
        v8 -= 56;
      }

      while (!__CFADD__(v7++, 1));
      ++a3;
      v5 += 56;
      --v6;
      if (a3 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_10012A5F8(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v91 = _swiftEmptyArrayStorage;
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = _swiftEmptyArrayStorage;
    while (1)
    {
      v9 = v7;
      v10 = v7 + 1;
      if (v7 + 1 < v6)
      {
        v11 = (*a3 + 16 * v10);
        v12 = (*a3 + 16 * v7);
        if (*v11 == *v12 && v11[1] == v12[1])
        {
          v14 = 0;
        }

        else
        {
          v14 = _stringCompareWithSmolCheck(_:_:expecting:)();
        }

        v10 = v9 + 2;
        v15 = 16 * v9;
        v16 = v12 + 5;
        while (v10 < v6)
        {
          if (*(v16 - 1) == *(v16 - 3) && *v16 == *(v16 - 2))
          {
            if (v14)
            {
              goto LABEL_21;
            }
          }

          else if ((v14 ^ _stringCompareWithSmolCheck(_:_:expecting:)()))
          {
            break;
          }

          ++v10;
          v16 += 2;
        }

        if ((v14 & 1) == 0)
        {
          goto LABEL_28;
        }

LABEL_21:
        if (v10 < v9)
        {
          goto LABEL_121;
        }

        if (v9 < v10)
        {
          v18 = 16 * v10;
          v19 = v10;
          v20 = v9;
          do
          {
            if (v20 != --v19)
            {
              v21 = *a3;
              if (!*a3)
              {
                goto LABEL_126;
              }

              v22 = (v21 + v15);
              v23 = v21 + v18;
              v24 = *v22;
              v25 = v22[1];
              *v22 = *(v23 - 16);
              *(v23 - 16) = v24;
              *(v23 - 8) = v25;
            }

            ++v20;
            v18 -= 16;
            v15 += 16;
          }

          while (v20 < v19);
        }
      }

LABEL_28:
      v26 = a3[1];
      if (v10 < v26)
      {
        if (__OFSUB__(v10, v9))
        {
          goto LABEL_120;
        }

        if (v10 - v9 < a4)
        {
          if (__OFADD__(v9, a4))
          {
            goto LABEL_122;
          }

          if (v9 + a4 >= v26)
          {
            v27 = a3[1];
          }

          else
          {
            v27 = v9 + a4;
          }

          if (v27 < v9)
          {
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
            return;
          }

          if (v10 != v27)
          {
            v86 = v5;
            v88 = v9;
            v28 = *a3;
            v29 = *a3 + 16 * v10;
            v30 = v9 - v10;
            do
            {
              v31 = v10;
              v32 = (v28 + 16 * v10);
              v33 = *v32;
              v34 = v32[1];
              v35 = v30;
              v36 = v29;
              do
              {
                v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
                if (v37 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
                {
                  break;
                }

                if (!v28)
                {
                  goto LABEL_124;
                }

                v33 = *v36;
                v34 = v36[1];
                *v36 = *(v36 - 1);
                *(v36 - 1) = v34;
                *(v36 - 2) = v33;
                v36 -= 2;
              }

              while (!__CFADD__(v35++, 1));
              v10 = v31 + 1;
              v29 += 16;
              --v30;
            }

            while (v31 + 1 != v27);
            v10 = v27;
            v5 = v86;
            v9 = v88;
          }
        }
      }

      if (v10 < v9)
      {
        goto LABEL_119;
      }

      v87 = v10;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_10006C888();
        v8 = v82;
      }

      v39 = v8[2];
      v40 = v39 + 1;
      if (v39 >= v8[3] >> 1)
      {
        sub_10006C888();
        v8 = v83;
      }

      v8[2] = v40;
      v41 = v8 + 4;
      v42 = &v8[2 * v39 + 4];
      *v42 = v9;
      v42[1] = v87;
      v89 = *a1;
      if (!*a1)
      {
        goto LABEL_127;
      }

      if (v39)
      {
        while (1)
        {
          v43 = v40 - 1;
          v44 = &v41[2 * v40 - 2];
          v45 = &v8[2 * v40];
          if (v40 >= 4)
          {
            break;
          }

          if (v40 == 3)
          {
            v46 = v8[4];
            v47 = v8[5];
            v56 = __OFSUB__(v47, v46);
            v48 = v47 - v46;
            v49 = v56;
LABEL_69:
            if (v49)
            {
              goto LABEL_109;
            }

            v61 = *v45;
            v60 = v45[1];
            v62 = __OFSUB__(v60, v61);
            v63 = v60 - v61;
            v64 = v62;
            if (v62)
            {
              goto LABEL_112;
            }

            v65 = v44[1];
            v66 = v65 - *v44;
            if (__OFSUB__(v65, *v44))
            {
              goto LABEL_115;
            }

            if (__OFADD__(v63, v66))
            {
              goto LABEL_117;
            }

            if (v63 + v66 >= v48)
            {
              if (v48 < v66)
              {
                v43 = v40 - 2;
              }

              goto LABEL_91;
            }

            goto LABEL_84;
          }

          if (v40 < 2)
          {
            goto LABEL_111;
          }

          v68 = *v45;
          v67 = v45[1];
          v56 = __OFSUB__(v67, v68);
          v63 = v67 - v68;
          v64 = v56;
LABEL_84:
          if (v64)
          {
            goto LABEL_114;
          }

          v70 = *v44;
          v69 = v44[1];
          v56 = __OFSUB__(v69, v70);
          v71 = v69 - v70;
          if (v56)
          {
            goto LABEL_116;
          }

          if (v71 < v63)
          {
            goto LABEL_98;
          }

LABEL_91:
          if (v43 - 1 >= v40)
          {
            __break(1u);
LABEL_104:
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
LABEL_110:
            __break(1u);
LABEL_111:
            __break(1u);
LABEL_112:
            __break(1u);
LABEL_113:
            __break(1u);
LABEL_114:
            __break(1u);
LABEL_115:
            __break(1u);
LABEL_116:
            __break(1u);
LABEL_117:
            __break(1u);
LABEL_118:
            __break(1u);
LABEL_119:
            __break(1u);
LABEL_120:
            __break(1u);
LABEL_121:
            __break(1u);
LABEL_122:
            __break(1u);
            goto LABEL_123;
          }

          if (!*a3)
          {
            goto LABEL_125;
          }

          v75 = &v41[2 * v43 - 2];
          v76 = *v75;
          v77 = &v41[2 * v43];
          v78 = v77[1];
          sub_10012B2BC((*a3 + 16 * *v75), (*a3 + 16 * *v77), (*a3 + 16 * v78), v89);
          if (v5)
          {
            goto LABEL_102;
          }

          if (v78 < v76)
          {
            goto LABEL_104;
          }

          v79 = v8;
          v80 = v8[2];
          if (v43 > v80)
          {
            goto LABEL_105;
          }

          *v75 = v76;
          v75[1] = v78;
          if (v43 >= v80)
          {
            goto LABEL_106;
          }

          v40 = v80 - 1;
          memmove(&v41[2 * v43], v77 + 2, 16 * (v80 - 1 - v43));
          v79[2] = v80 - 1;
          v81 = v80 > 2;
          v8 = v79;
          if (!v81)
          {
            goto LABEL_98;
          }
        }

        v50 = &v41[2 * v40];
        v51 = *(v50 - 8);
        v52 = *(v50 - 7);
        v56 = __OFSUB__(v52, v51);
        v53 = v52 - v51;
        if (v56)
        {
          goto LABEL_107;
        }

        v55 = *(v50 - 6);
        v54 = *(v50 - 5);
        v56 = __OFSUB__(v54, v55);
        v48 = v54 - v55;
        v49 = v56;
        if (v56)
        {
          goto LABEL_108;
        }

        v57 = v45[1];
        v58 = v57 - *v45;
        if (__OFSUB__(v57, *v45))
        {
          goto LABEL_110;
        }

        v56 = __OFADD__(v48, v58);
        v59 = v48 + v58;
        if (v56)
        {
          goto LABEL_113;
        }

        if (v59 >= v53)
        {
          v73 = *v44;
          v72 = v44[1];
          v56 = __OFSUB__(v72, v73);
          v74 = v72 - v73;
          if (v56)
          {
            goto LABEL_118;
          }

          if (v48 < v74)
          {
            v43 = v40 - 2;
          }

          goto LABEL_91;
        }

        goto LABEL_69;
      }

LABEL_98:
      v6 = a3[1];
      v7 = v87;
      if (v87 >= v6)
      {
        v91 = v8;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_128;
  }

  sub_10012B058(&v91, *a1, a3);
LABEL_102:
}

void sub_10012AB00(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v97 = _swiftEmptyArrayStorage;
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = _swiftEmptyArrayStorage;
    v92 = a4;
    while (1)
    {
      v9 = v7 + 1;
      if (v7 + 1 < v6)
      {
        v10 = *(*a3 + 56 * v9 + 40);
        v11 = *a3 + 56 * v7;
        v12 = *(v11 + 40);
        v13 = (v11 + 152);
        v14 = v7 + 2;
        while (1)
        {
          v15 = v14;
          if (++v9 >= v6)
          {
            break;
          }

          v16 = (v10 < v12) ^ (*v13 >= *(v13 - 7));
          v13 += 7;
          ++v14;
          if ((v16 & 1) == 0)
          {
            goto LABEL_9;
          }
        }

        v9 = v6;
LABEL_9:
        if (v10 < v12)
        {
          if (v9 < v7)
          {
            goto LABEL_108;
          }

          if (v7 < v9)
          {
            if (v6 >= v15)
            {
              v6 = v15;
            }

            v17 = 56 * v6 - 16;
            v18 = 56 * v7 + 48;
            v19 = v9;
            v20 = v7;
            do
            {
              if (v20 != --v19)
              {
                v21 = *a3;
                if (!*a3)
                {
                  goto LABEL_113;
                }

                v22 = (v21 + v18);
                v23 = (v21 + v17);
                v24 = *(v22 - 6);
                v25 = *(v22 - 5);
                v26 = *(v22 - 32);
                v27 = *(v22 - 1);
                v28 = *v22;
                v29 = *(v22 - 24);
                v30 = *(v23 - 3);
                v31 = *(v23 - 1);
                v32 = *(v23 - 5);
                *v22 = v23[1];
                *(v22 - 2) = v30;
                *(v22 - 1) = v31;
                *(v22 - 3) = v32;
                *(v23 - 5) = v24;
                *(v23 - 4) = v25;
                *(v23 - 24) = v26;
                *(v23 - 1) = v29;
                *v23 = v27;
                *(v23 + 8) = v28;
              }

              ++v20;
              v17 -= 56;
              v18 += 56;
            }

            while (v20 < v19);
            v6 = a3[1];
          }
        }
      }

      if (v9 < v6)
      {
        if (__OFSUB__(v9, v7))
        {
          goto LABEL_107;
        }

        if (v9 - v7 < a4)
        {
          if (__OFADD__(v7, a4))
          {
            goto LABEL_109;
          }

          if (v7 + a4 < v6)
          {
            v6 = v7 + a4;
          }

          if (v6 < v7)
          {
LABEL_110:
            __break(1u);
LABEL_111:
            __break(1u);
LABEL_112:
            __break(1u);
LABEL_113:
            __break(1u);
LABEL_114:
            __break(1u);
LABEL_115:
            __break(1u);
            return;
          }

          if (v9 != v6)
          {
            v33 = *a3;
            v34 = *a3 + 56 * v9 - 56;
            v35 = v7 - v9;
            do
            {
              v36 = v35;
              v37 = v34;
              do
              {
                v38 = *(v37 + 96);
                if (v38 >= *(v37 + 40))
                {
                  break;
                }

                if (!v33)
                {
                  goto LABEL_111;
                }

                v40 = *(v37 + 56);
                v39 = *(v37 + 64);
                v41 = *(v37 + 72);
                v42 = *(v37 + 104);
                v43 = *(v37 + 16);
                v44 = *(v37 + 48);
                *(v37 + 56) = *v37;
                v45 = *(v37 + 80);
                *(v37 + 72) = v43;
                *(v37 + 88) = *(v37 + 32);
                *(v37 + 104) = v44;
                *v37 = v40;
                *(v37 + 8) = v39;
                *(v37 + 16) = v41;
                *(v37 + 24) = v45;
                *(v37 + 40) = v38;
                *(v37 + 48) = v42;
                v37 -= 56;
              }

              while (!__CFADD__(v36++, 1));
              ++v9;
              v34 += 56;
              --v35;
            }

            while (v9 != v6);
            v9 = v6;
          }
        }
      }

      if (v9 < v7)
      {
        goto LABEL_106;
      }

      v94 = v9;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_10006C888();
        v8 = v90;
      }

      v47 = v8[2];
      v48 = v47 + 1;
      if (v47 >= v8[3] >> 1)
      {
        sub_10006C888();
        v8 = v91;
      }

      v8[2] = v48;
      v49 = v8 + 4;
      v50 = &v8[2 * v47 + 4];
      *v50 = v7;
      v50[1] = v94;
      __dst = *a1;
      if (!*a1)
      {
        goto LABEL_114;
      }

      if (v47)
      {
        while (1)
        {
          v51 = v48 - 1;
          v52 = &v49[2 * v48 - 2];
          v53 = &v8[2 * v48];
          if (v48 >= 4)
          {
            break;
          }

          if (v48 == 3)
          {
            v54 = v8[4];
            v55 = v8[5];
            v64 = __OFSUB__(v55, v54);
            v56 = v55 - v54;
            v57 = v64;
LABEL_56:
            if (v57)
            {
              goto LABEL_96;
            }

            v69 = *v53;
            v68 = v53[1];
            v70 = __OFSUB__(v68, v69);
            v71 = v68 - v69;
            v72 = v70;
            if (v70)
            {
              goto LABEL_99;
            }

            v73 = v52[1];
            v74 = v73 - *v52;
            if (__OFSUB__(v73, *v52))
            {
              goto LABEL_102;
            }

            if (__OFADD__(v71, v74))
            {
              goto LABEL_104;
            }

            if (v71 + v74 >= v56)
            {
              if (v56 < v74)
              {
                v51 = v48 - 2;
              }

              goto LABEL_78;
            }

            goto LABEL_71;
          }

          if (v48 < 2)
          {
            goto LABEL_98;
          }

          v76 = *v53;
          v75 = v53[1];
          v64 = __OFSUB__(v75, v76);
          v71 = v75 - v76;
          v72 = v64;
LABEL_71:
          if (v72)
          {
            goto LABEL_101;
          }

          v78 = *v52;
          v77 = v52[1];
          v64 = __OFSUB__(v77, v78);
          v79 = v77 - v78;
          if (v64)
          {
            goto LABEL_103;
          }

          if (v79 < v71)
          {
            goto LABEL_85;
          }

LABEL_78:
          if (v51 - 1 >= v48)
          {
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
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
            goto LABEL_110;
          }

          if (!*a3)
          {
            goto LABEL_112;
          }

          v83 = &v49[2 * v51 - 2];
          v84 = *v83;
          v85 = &v49[2 * v51];
          v86 = v85[1];
          sub_10012B460((*a3 + 56 * *v83), (*a3 + 56 * *v85), *a3 + 56 * v86, __dst);
          if (v5)
          {
            goto LABEL_89;
          }

          if (v86 < v84)
          {
            goto LABEL_91;
          }

          v87 = v8;
          v88 = v8[2];
          if (v51 > v88)
          {
            goto LABEL_92;
          }

          *v83 = v84;
          v83[1] = v86;
          if (v51 >= v88)
          {
            goto LABEL_93;
          }

          v48 = v88 - 1;
          memmove(&v49[2 * v51], v85 + 2, 16 * (v88 - 1 - v51));
          v87[2] = v88 - 1;
          v89 = v88 > 2;
          v8 = v87;
          v5 = 0;
          if (!v89)
          {
            goto LABEL_85;
          }
        }

        v58 = &v49[2 * v48];
        v59 = *(v58 - 8);
        v60 = *(v58 - 7);
        v64 = __OFSUB__(v60, v59);
        v61 = v60 - v59;
        if (v64)
        {
          goto LABEL_94;
        }

        v63 = *(v58 - 6);
        v62 = *(v58 - 5);
        v64 = __OFSUB__(v62, v63);
        v56 = v62 - v63;
        v57 = v64;
        if (v64)
        {
          goto LABEL_95;
        }

        v65 = v53[1];
        v66 = v65 - *v53;
        if (__OFSUB__(v65, *v53))
        {
          goto LABEL_97;
        }

        v64 = __OFADD__(v56, v66);
        v67 = v56 + v66;
        if (v64)
        {
          goto LABEL_100;
        }

        if (v67 >= v61)
        {
          v81 = *v52;
          v80 = v52[1];
          v64 = __OFSUB__(v80, v81);
          v82 = v80 - v81;
          if (v64)
          {
            goto LABEL_105;
          }

          if (v56 < v82)
          {
            v51 = v48 - 2;
          }

          goto LABEL_78;
        }

        goto LABEL_56;
      }

LABEL_85:
      v6 = a3[1];
      v7 = v94;
      a4 = v92;
      if (v94 >= v6)
      {
        v97 = v8;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_115;
  }

  sub_10012B184(&v97, *a1, a3);
LABEL_89:
}

uint64_t sub_10012B058(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v5 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_10011775C(v5);
    v5 = result;
  }

  v14 = v4;
  *v4 = v5;
  v7 = (v5 + 16);
  for (i = *(v5 + 16); ; *v7 = i)
  {
    v4 = (i - 2);
    if (i < 2)
    {
LABEL_10:
      *v14 = v5;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v9 = (v5 + 16 * i);
    v10 = *v9;
    v11 = &v7[2 * i];
    v12 = v11[1];
    sub_10012B2BC((*a3 + 16 * *v9), (*a3 + 16 * *v11), (*a3 + 16 * v12), a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v12 < v10)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (v4 >= *v7)
    {
      goto LABEL_12;
    }

    *v9 = v10;
    v9[1] = v12;
    v13 = *v7 - i;
    if (*v7 < i)
    {
      goto LABEL_13;
    }

    i = *v7 - 1;
    result = memmove(v11, v11 + 2, 16 * v13);
  }

  *v14 = v5;
  __break(1u);
  return result;
}

uint64_t sub_10012B184(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v15 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_10011775C(v15);
    v15 = result;
  }

  v12 = v4;
  *v4 = v15;
  v6 = (v15 + 16);
  for (i = *(v15 + 16); ; *v6 = i)
  {
    if (i < 2)
    {
LABEL_10:
      *v12 = v15;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v4 = (v15 + 16 * i);
    v8 = *v4;
    v9 = &v6[2 * i];
    v10 = v9[1];
    sub_10012B460((*a3 + 56 * *v4), (*a3 + 56 * *v9), *a3 + 56 * v10, a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v10 < v8)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (i - 2 >= *v6)
    {
      goto LABEL_12;
    }

    *v4 = v8;
    v4[1] = v10;
    v11 = *v6 - i;
    if (*v6 < i)
    {
      goto LABEL_13;
    }

    i = *v6 - 1;
    result = memmove(v9, v9 + 2, 16 * v11);
  }

  *v12 = v15;
  __break(1u);
  return result;
}

uint64_t sub_10012B2BC(char *a1, char *a2, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 16;
  v9 = (a3 - a2) / 16;
  if (v8 < v9)
  {
    sub_10001B82C(a1, (a2 - a1) / 16, a4);
    v10 = &v4[16 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_36;
      }

      v12 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      v13 = v6;
      v12 = v7 == v6;
      v6 += 16;
      if (!v12)
      {
        goto LABEL_16;
      }

LABEL_17:
      v7 += 16;
    }

    v13 = v4;
    v12 = v7 == v4;
    v4 += 16;
    if (v12)
    {
      goto LABEL_17;
    }

LABEL_16:
    *v7 = *v13;
    goto LABEL_17;
  }

  sub_10001B82C(a2, (a3 - a2) / 16, a4);
  v10 = &v4[16 * v9];
LABEL_19:
  v14 = v6 - 16;
  for (v5 -= 16; v10 > v4 && v6 > v7; v5 -= 16)
  {
    v16 = *(v10 - 2) == *(v6 - 2) && *(v10 - 1) == *(v6 - 1);
    if (!v16 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v12 = v5 + 16 == v6;
      v6 -= 16;
      if (!v12)
      {
        *v5 = *v14;
        v6 = v14;
      }

      goto LABEL_19;
    }

    if (v10 != v5 + 16)
    {
      *v5 = *(v10 - 1);
    }

    v10 -= 16;
  }

LABEL_36:
  v17 = (v10 - v4) / 16;
  if (v6 != v4 || v6 >= &v4[16 * v17])
  {
    memmove(v6, v4, 16 * v17);
  }

  return 1;
}

uint64_t sub_10012B460(char *__src, char *a2, unint64_t a3, char *__dst)
{
  v4 = __dst;
  v5 = a3;
  v6 = a2;
  v7 = __src;
  v8 = (a2 - __src) / 56;
  v9 = (a3 - a2) / 56;
  if (v8 < v9)
  {
    sub_100123794(__src, (a2 - __src) / 56, __dst);
    v10 = &v4[56 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_28;
      }

      if (*(v6 + 5) >= *(v4 + 5))
      {
        break;
      }

      v12 = v6;
      v13 = v7 == v6;
      v6 += 56;
      if (!v13)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 56;
    }

    v12 = v4;
    v13 = v7 == v4;
    v4 += 56;
    if (v13)
    {
      goto LABEL_13;
    }

LABEL_12:
    v14 = *v12;
    v15 = *(v12 + 1);
    v16 = *(v12 + 2);
    *(v7 + 6) = *(v12 + 6);
    *(v7 + 1) = v15;
    *(v7 + 2) = v16;
    *v7 = v14;
    goto LABEL_13;
  }

  sub_100123794(a2, (a3 - a2) / 56, __dst);
  v10 = &v4[56 * v9];
LABEL_15:
  for (v5 -= 56; v10 > v4 && v6 > v7; v5 -= 56)
  {
    if (*(v10 - 2) < *(v6 - 2))
    {
      v21 = v6 - 56;
      v13 = v5 + 56 == v6;
      v6 -= 56;
      if (!v13)
      {
        v22 = *v21;
        v23 = *(v21 + 1);
        v24 = *(v21 + 2);
        *(v5 + 48) = *(v21 + 6);
        *(v5 + 16) = v23;
        *(v5 + 32) = v24;
        *v5 = v22;
        v6 = v21;
      }

      goto LABEL_15;
    }

    if (v10 != (v5 + 56))
    {
      v18 = *(v10 - 56);
      v19 = *(v10 - 40);
      v20 = *(v10 - 24);
      *(v5 + 48) = *(v10 - 1);
      *(v5 + 16) = v19;
      *(v5 + 32) = v20;
      *v5 = v18;
    }

    v10 -= 56;
  }

LABEL_28:
  v25 = 56 * ((v10 - v4) / 56);
  if (v6 != v4 || v6 >= &v4[v25])
  {
    memmove(v6, v4, v25);
  }

  return 1;
}

uint64_t sub_10012B678(uint64_t a1, uint64_t a2)
{
  v4 = sub_100046184(&qword_10021CC70, &qword_1001A1708);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_10012B6E8()
{
  result = qword_100216EF0;
  if (!qword_100216EF0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100216EF0);
  }

  return result;
}

uint64_t sub_10012B72C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

_OWORD *sub_10012B754@<X0>(uint64_t a1@<X8>)
{

  return sub_100028734((v1 - 120), (a1 + 32));
}

uint64_t sub_10012B7D4@<X0>(uint64_t a1@<X8>)
{
  *(v3 - 96) = a1;
  *(v3 - 120) = v2;
  *(v3 - 112) = v1;
}

id sub_10012B878(uint64_t a1)
{
  *(v2 - 96) = a1;
  *(v2 - 120) = v1;

  return v1;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> PJSONFunction.perform(with:arguments:)(SQLiter::SQLiteContext with, Swift::OpaquePointer arguments)
{
  if (*(arguments._rawValue + 2))
  {
    v4 = *(arguments._rawValue + 4);
    if (SQLiteArgument.isNull.getter(v4))
    {
      SQLiteContext.setNull()();
    }

    else
    {
      sub_10011DE10();
      if (!v2)
      {
        SQLiteBaseSchematizer.getSQLiteBridge()();
        v6 = v5;

        ObjectType = swift_getObjectType();
        v8 = (*(v6 + 24))(v4, ObjectType, v6);
        v10 = v9;
        v12 = v11;
        v14 = v13;
        swift_unknownObjectRelease();
        sub_10013116C(with.context._rawValue, v8, v10, v12, v14);
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
      }
    }
  }

  else
  {
    __break(1u);
  }
}

__n128 TagPathAndType.init(tagPath:type:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = a1;
  v3 = *(a2 + 16);
  *(a3 + 8) = *a2;
  *(a3 + 24) = v3;
  result = *(a2 + 25);
  *(a3 + 33) = result;
  return result;
}

__n128 sub_10012BA94(uint64_t a1, uint64_t a2)
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

uint64_t sub_10012BAB0(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 49))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_10012BAF0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10012BB50(uint64_t a1)
{
  if ((*(a1 + 41) & 0xFu) <= 0xD)
  {
    return *(a1 + 41) & 0xF;
  }

  else
  {
    return (*a1 + 14);
  }
}

__n128 sub_10012BB6C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 26) = *(a2 + 26);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_10012BB80(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF2 && *(a1 + 42))
  {
    return (*a1 + 242);
  }

  v3 = *(a1 + 41);
  if (v3 >= 0xF)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10012BBBC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF1)
  {
    *(result + 26) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 242;
    if (a3 >= 0xF2)
    {
      *(result + 42) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF2)
    {
      *(result + 42) = 0;
    }

    if (a2)
    {
      *(result + 41) = -a2;
    }
  }

  return result;
}

uint64_t sub_10012BC08(uint64_t result, unsigned int a2)
{
  if (a2 > 0xD)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 14;
    LOBYTE(a2) = 14;
  }

  *(result + 41) = a2;
  return result;
}

uint64_t sub_10012BC40(uint64_t result)
{
  if (result >= 6u)
  {
    return 6;
  }

  else
  {
    return result;
  }
}

uint64_t sub_10012BC64@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10012BC40(*a1);
  *a2 = result;
  return result;
}

void sub_10012BC90(void *a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  v6 = v3;
  sub_10011FB8C(v6, &v54);
  if (!v58)
  {
    sub_100008C84(&v54, &v51);
    sub_100008650();
    while (1)
    {
      if (v5 > 9)
      {
        v22 = 0;
        goto LABEL_26;
      }

      v59 = 0;
      [a1 position];
      if (v6 >= [sub_100003CC4() position] && (objc_msgSend(a1, "position"), v6 <= objc_msgSend(sub_100003CC4(), "length")))
      {
        [a1 data];
        objc_claimAutoreleasedReturnValue();
        [v6 getBytes:&v59 range:{sub_100006C60(), 1}];

        sub_100011B0C([a1 position]);
      }

      else
      {
        [a1 _setError];
      }

      sub_100004554();
      if ((v19 & 0x80) == 0)
      {
        break;
      }

      sub_10000AC88();
    }

    v23 = [a1 hasError];
    v22 = a2;
    if (v23)
    {
      v22 = 0;
    }

LABEL_26:
    *(a3 + 40) = v22;
    *(a3 + 48) = 0;
    *(a3 + 56) = 1;
    sub_100008C84(&v51, a3);
    v24 = 7;
    goto LABEL_27;
  }

  if (v58 == 1)
  {
    sub_100008C84(&v54, &v51);
    v10 = v52;
    v11 = v53;
    sub_100007534(&v51, v52);
    v12 = PBReaderReadData();
    if (v12)
    {
      v13 = v12;
      v14 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v16 = v15;

      v17 = (*(v11 + 64))(v14, v16, v10, v11);
      if (v4)
      {
        sub_100014A40(v14, v16);
      }

      else
      {
        v27 = v17;
        v28 = v18;
        sub_100014A40(v14, v16);
        *a3 = v27;
        *(a3 + 8) = v28;
        *(a3 + 57) = 10;
      }

      sub_100007378(&v51);
      return;
    }

    __break(1u);
    goto LABEL_126;
  }

  a2 = a2;
  if (v56 | v57 | v54 | v55 | *(&v54 + 1))
  {
    v20 = v56 | v57 | v55 | *(&v54 + 1);
    if (v54 == 1 && !v20)
    {
      if (a2 - 1 >= 4)
      {
        if (a2 == 5)
        {
          LODWORD(v51) = 0;
          [a1 position];
          if (v6 >= [sub_100007DB0() position])
          {
            [a1 position];
            if (v6 <= [sub_100007DB0() length])
            {
              [a1 data];
              objc_claimAutoreleasedReturnValue();
              sub_100006C60();
              [sub_100006268() getBytes:? range:?];

              [a1 setPosition:{objc_msgSend(a1, "position") + 4}];
              v21 = v51;
              goto LABEL_106;
            }
          }

          [a1 _setError];
        }

        else
        {
          v34 = 0;
          while (a2 <= 9)
          {
            sub_10000F674();
            if (v6 >= [sub_100003CC4() position] && (objc_msgSend(a1, "position"), v6 <= objc_msgSend(sub_100003CC4(), "length")))
            {
              [a1 data];
              objc_claimAutoreleasedReturnValue();
              sub_100006C60();
              [sub_100006268() getBytes:? range:?];

              sub_100011B0C([a1 position]);
            }

            else
            {
              [a1 _setError];
            }

            sub_100008170();
            if ((v35 & 0x80) == 0)
            {
              if ([a1 hasError])
              {
                v21 = 0;
              }

              else
              {
                v21 = 0;
              }

              goto LABEL_106;
            }

            v34 += 7;
            ++a2;
          }
        }

        v21 = 0;
LABEL_106:
        *a3 = v21;
        v24 = 1;
        goto LABEL_27;
      }

LABEL_29:
      sub_10012C544();
      swift_allocError();
      v26 = v25;
      sub_10011FB8C(v6, v25);
      *(v26 + 41) = a2;
      swift_willThrow();
      return;
    }

    if (v54 == 2 && !v20)
    {
      sub_100008650();
      while (1)
      {
        if (v5 > 9)
        {
          v32 = 0;
          goto LABEL_67;
        }

        sub_10000F674();
        if (v6 >= [sub_100003CC4() position] && (objc_msgSend(a1, "position"), v6 <= objc_msgSend(sub_100003CC4(), "length")))
        {
          [a1 data];
          objc_claimAutoreleasedReturnValue();
          sub_100006C60();
          [sub_100006268() getBytes:? range:?];

          sub_100011B0C([a1 position]);
        }

        else
        {
          [a1 _setError];
        }

        sub_100004554();
        if ((v29 & 0x80) == 0)
        {
          break;
        }

        sub_10000AC88();
      }

      if ([a1 hasError])
      {
        v32 = 0;
      }

      else
      {
        v32 = a2;
      }

LABEL_67:
      *a3 = v32;
      v24 = 2;
      goto LABEL_27;
    }

    if (v54 != 3 || v20)
    {
      if (v54 != 4 || v20)
      {
        if (v54 != 5 || v20)
        {
          if (v54 != 6 || v20)
          {
            if (v54 != 7 || v20)
            {
              v46 = PBReaderReadData();
              if (!v46)
              {
LABEL_126:
                __break(1u);
                goto LABEL_127;
              }

              v47 = v46;
              v48 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
              v50 = v49;

              *a3 = v48;
              *(a3 + 8) = v50;
              v24 = 9;
            }

            else
            {
              v40 = PBReaderReadString();
              if (!v40)
              {
LABEL_127:
                __break(1u);
                return;
              }

              v41 = v40;
              v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v44 = v43;

              *a3 = v42;
              *(a3 + 8) = v44;
              v24 = 8;
            }
          }

          else
          {
            sub_100008650();
            while (1)
            {
              if (v5 > 9)
              {
                v45 = 0;
                goto LABEL_122;
              }

              sub_10000F674();
              if (v6 >= [sub_100003CC4() position] && (objc_msgSend(a1, "position"), v6 <= objc_msgSend(sub_100003CC4(), "length")))
              {
                [a1 data];
                objc_claimAutoreleasedReturnValue();
                sub_100006C60();
                [sub_100006268() getBytes:? range:?];

                sub_100011B0C([a1 position]);
              }

              else
              {
                [a1 _setError];
              }

              sub_100004554();
              if ((v37 & 0x80) == 0)
              {
                break;
              }

              sub_10000AC88();
            }

            v45 = (a2 != 0) & ~[a1 hasError];
LABEL_122:
            *a3 = v45;
            v24 = 6;
          }
        }

        else
        {
          *&v51 = 0;
          [a1 position];
          if (v6 >= [sub_10000DF30() position] && (objc_msgSend(a1, "position"), v6 <= objc_msgSend(sub_10000DF30(), "length")))
          {
            [a1 data];
            objc_claimAutoreleasedReturnValue();
            sub_100006C60();
            [sub_100006268() getBytes:? range:?];

            [a1 setPosition:{objc_msgSend(a1, "position") + 8}];
            v36 = v51;
          }

          else
          {
            [a1 _setError];
            v36 = 0;
          }

          *a3 = v36;
          v24 = 5;
        }
      }

      else
      {
        LODWORD(v51) = 0;
        [a1 position];
        if (v6 >= [sub_100007DB0() position] && (objc_msgSend(a1, "position"), v6 <= objc_msgSend(sub_100007DB0(), "length")))
        {
          [a1 data];
          objc_claimAutoreleasedReturnValue();
          sub_100006C60();
          [sub_100006268() getBytes:? range:?];

          [a1 setPosition:{objc_msgSend(a1, "position") + 4}];
          v33 = v51;
        }

        else
        {
          [a1 _setError];
          v33 = 0;
        }

        *a3 = v33;
        v24 = 4;
      }

LABEL_27:
      *(a3 + 57) = v24;
      return;
    }

    if (a2 - 2 < 4)
    {
      goto LABEL_29;
    }

    if (a2 == 1)
    {
      *&v51 = 0;
      [a1 position];
      if (v6 >= [sub_10000DF30() position])
      {
        [a1 position];
        if (v6 <= [sub_10000DF30() length])
        {
          [a1 data];
          objc_claimAutoreleasedReturnValue();
          sub_100006C60();
          [sub_100006268() getBytes:? range:?];

          [a1 setPosition:{objc_msgSend(a1, "position") + 8}];
          v30 = v51;
          goto LABEL_124;
        }
      }

      [a1 _setError];
    }

    else
    {
      v38 = 0;
      while (a2 <= 9)
      {
        sub_10000F674();
        if (v6 >= [sub_100003CC4() position] && (objc_msgSend(a1, "position"), v6 <= objc_msgSend(sub_100003CC4(), "length")))
        {
          [a1 data];
          objc_claimAutoreleasedReturnValue();
          sub_100006C60();
          [sub_100006268() getBytes:? range:?];

          sub_100011B0C([a1 position]);
        }

        else
        {
          [a1 _setError];
        }

        sub_100008170();
        if ((v39 & 0x80) == 0)
        {
          if ([a1 hasError])
          {
            v30 = 0;
          }

          else
          {
            v30 = 0;
          }

          goto LABEL_124;
        }

        v38 += 7;
        ++a2;
      }
    }

    v30 = 0;
LABEL_124:
    *a3 = v30;
    v24 = 3;
    goto LABEL_27;
  }

  if (a2)
  {
    goto LABEL_29;
  }

  sub_100008650();
  while (v5 <= 9)
  {
    sub_10000F674();
    if (v6 >= [sub_100003CC4() position] && (objc_msgSend(a1, "position"), v6 <= objc_msgSend(sub_100003CC4(), "length")))
    {
      [a1 data];
      objc_claimAutoreleasedReturnValue();
      sub_100006C60();
      [sub_100006268() getBytes:? range:?];

      sub_100011B0C([a1 position]);
    }

    else
    {
      [a1 _setError];
    }

    sub_100004554();
    if ((v31 & 0x80) == 0)
    {
      [a1 hasError];
      break;
    }

    sub_10000AC88();
  }

  *a3 = 0;
  *(a3 + 57) = 0;
}

unint64_t sub_10012C544()
{
  result = qword_10021CDD0;
  if (!qword_10021CDD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021CDD0);
  }

  return result;
}

uint64_t sub_10012C598(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 42))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 40);
      if (v3 <= 2)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10012C5D8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 42) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 42) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ProtoWireType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_10012C718()
{
  result = qword_10021CDD8;
  if (!qword_10021CDD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021CDD8);
  }

  return result;
}

void sub_10012C76C(uint64_t a1, unint64_t a2, Swift::String forSchemaName, sqlite3_context *a4)
{
  v7 = SQLiteMessageTypeRegistry.id(forSchemaName:)(forSchemaName);
  v9 = v8;
  if (v8)
  {
    goto LABEL_2;
  }

  v11 = v7;
  sub_100003898();
  v12 = Data.count.getter();
  v13 = v12 + 4;
  if (__OFADD__(v12, 4))
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v13 < 0xFFFFFFFF80000000)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v13 > 0x7FFFFFFF)
  {
LABEL_13:
    __break(1u);
    return;
  }

  v14 = sqlite3_malloc(v12 + 4);
  if (!v14)
  {
    sub_10012CFB0();
    v9 = swift_allocError();
    *v21 = 3;
    swift_willThrow();
LABEL_2:
    v22 = v9;
    v10 = sub_100046184(&qword_100216900, &unk_10019AE20);
    SQLiteContext.setError<A>(_:message:code:)(&v22, 0xD000000000000014, 0x80000001001B2680, -1, a4, v10);

    return;
  }

  v15 = v14;
  v16 = sub_100003898();
  sub_100014924(v16, v17);
  v18 = sub_100003898();
  v20 = sub_10012C908(v18, v19, v15, a1, a2);
  sub_100003898();
  *(v20 + Data.count.getter()) = v11;

  SQLiteContext.setBuffer(_:ofSize:destructor:)(v15, v13, 2, a4);
}

uint64_t sub_10012C908(uint64_t result, unint64_t a2, void *a3, uint64_t a4, unint64_t a5)
{
  v9 = result;
  switch(a2 >> 62)
  {
    case 1uLL:
      v18 = result >> 32;
      if (result >> 32 >= result)
      {
        v19 = result;
        sub_100014924(a4, a5);
        v14 = a2 & 0x3FFFFFFFFFFFFFFFLL;
        v15 = v19;
        v16 = v18;
        goto LABEL_8;
      }

      __break(1u);
      return result;
    case 2uLL:
      v13 = *(result + 16);
      v12 = *(result + 24);
      sub_100014924(a4, a5);
      v14 = a2 & 0x3FFFFFFFFFFFFFFFLL;
      v15 = v13;
      v16 = v12;
LABEL_8:
      v17 = sub_10012CEB8(v15, v16, v14, a3, a4, a5);
      goto LABEL_9;
    case 3uLL:
      sub_100014924(a4, a5);
      v11 = 0;
      v10 = 0;
      goto LABEL_5;
    default:
      sub_100014924(a4, a5);
      v10 = a2 & 0xFFFFFFFFFFFFFFLL;
      v11 = v9;
LABEL_5:
      v17 = sub_10012CDC0(v11, v10, a3, a4, a5);
LABEL_9:
      v20 = v17;
      sub_100014A40(a4, a5);
      return v20;
  }
}

uint64_t *sub_10012CA3C(sqlite3_value *a1)
{
  result = SQLiteArgument.withUnsafeBytes<A>(_:)(sub_10012CDA4, v1, a1);
  if (!v2)
  {
    return v4;
  }

  return result;
}

void sub_10012CA94(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v9 = type metadata accessor for Data.Deallocator();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    if (__OFSUB__(a2, 4))
    {
      __break(1u);
    }

    else
    {
      sub_100135A54(*(a1 + a2 - 4), v29);
      if (!v4)
      {
        v30 = type metadata accessor for ProtobufPayload();
        sub_1000092B4(v29, v26);
        (*(v10 + 104))(v12, enum case for Data.Deallocator.none(_:), v9);
        v13 = Data.init(bytesNoCopy:count:deallocator:)();
        v15 = v14;
        sub_100007378(v29);
        v16 = v27;
        v17 = v28;
        v18 = sub_100026EEC(v26, v27);
        v19 = __chkstk_darwin(v18);
        v21 = v26 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v22 + 16))(v21, v19);
        v23 = sub_100026F3C(v21, v13, v15, v30, v16, v17);
        sub_100007378(v26);
        v24 = sub_10012A1B8();
        *a4 = a3;
        a4[1] = &off_1001FF590;
        a4[2] = v23;
        a4[3] = v24;
      }
    }
  }

  else
  {
    sub_10011DDBC();
    swift_allocError();
    *v25 = 0xD000000000000031;
    *(v25 + 8) = 0x80000001001B2640;
    *(v25 + 41) = 3;
    swift_willThrow();
  }
}

uint64_t sub_10012CD20()
{
  v0 = SQLiteMessageTypeRegistry.deinit();

  return _swift_deallocClassInstance(v0, 48, 7);
}

uint64_t *sub_10012CD74(sqlite3_value *a1)
{
  result = sub_10012CA3C(a1);
  if (v1)
  {
    return v3;
  }

  return result;
}

void *sub_10012CDC0(uint64_t a1, uint64_t a2, void *__dst, uint64_t a4, unint64_t a5)
{
  __src = a1;
  v14 = WORD2(a2);
  v13 = a2;
  v8 = 0;
  switch(a5 >> 62)
  {
    case 1uLL:
      if (__OFSUB__(HIDWORD(a4), a4))
      {
        __break(1u);
LABEL_9:
        __break(1u);
LABEL_10:
        __break(1u);
      }

      v8 = HIDWORD(a4) - a4;
LABEL_6:
      memcpy(__dst, &__src, v8);
      if (!__dst)
      {
        goto LABEL_10;
      }

      sub_100014A40(a4, a5);
      return __dst;
    case 2uLL:
      v10 = *(a4 + 16);
      v9 = *(a4 + 24);
      v8 = v9 - v10;
      if (!__OFSUB__(v9, v10))
      {
        goto LABEL_6;
      }

      goto LABEL_9;
    case 3uLL:
      goto LABEL_6;
    default:
      v8 = BYTE6(a5);
      goto LABEL_6;
  }
}

void *sub_10012CEB8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, unint64_t a6)
{
  v10 = __DataStorage._bytes.getter();
  if (v10)
  {
    v11 = v10;
    result = __DataStorage._offset.getter();
    if (__OFSUB__(a1, result))
    {
      __break(1u);
LABEL_13:
      __break(1u);
LABEL_14:
      __break(1u);
      goto LABEL_15;
    }

    v13 = (a1 - result + v11);
  }

  else
  {
    v13 = 0;
  }

  result = __DataStorage._length.getter();
  v14 = 0;
  switch(a6 >> 62)
  {
    case 1uLL:
      if (__OFSUB__(HIDWORD(a5), a5))
      {
        goto LABEL_13;
      }

      v14 = HIDWORD(a5) - a5;
      break;
    case 2uLL:
      v16 = *(a5 + 16);
      v15 = *(a5 + 24);
      v14 = v15 - v16;
      if (__OFSUB__(v15, v16))
      {
        goto LABEL_14;
      }

      break;
    case 3uLL:
      break;
    default:
      v14 = BYTE6(a6);
      break;
  }

  result = memcpy(a4, v13, v14);
  if (a4)
  {
    sub_100014A40(a5, a6);
    return a4;
  }

LABEL_15:
  __break(1u);
  return result;
}

unint64_t sub_10012CFB0()
{
  result = qword_10021CF10;
  if (!qword_10021CF10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021CF10);
  }

  return result;
}

uint64_t CharacterSet.init(stringLiteral:)(uint64_t a1, uint64_t a2)
{
  CharacterSet.init(charactersIn:)();
}

uint64_t sub_10012D0E4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CharacterSet();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static ProtobufPayload.create(with:payload:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  sub_1000092B4(a1, v10);
  type metadata accessor for ProtobufPayload();
  v5 = swift_allocObject();
  sub_100008C84(v10, v5 + 16);
  *(v5 + 56) = a2;
  *(v5 + 64) = a3;
  sub_100006278();
  sub_1000270E0(v6, v7, v8, &protocol conformance descriptor for ProtobufPayload);
  sub_100014924(a2, a3);
  return v5;
}

uint64_t sub_10012D240(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v10 = a1[3];
  v11 = a1[4];
  sub_100026EEC(a1, v10);
  sub_100003A6C();
  __chkstk_darwin(v12);
  sub_100003CD0();
  (*(v13 + 16))(v5);
  v14 = a4(v5, a2, a3, v4, v10, v11);
  sub_100007378(a1);
  return v14;
}

void *ProtobufPayload.__allocating_init(with:from:payload:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v8 = v6;
  ObjectType = swift_getObjectType();
  (*(a4 + 40))(v21, a1, a2, ObjectType, a4);
  if (v7)
  {
    sub_100014A40(a5, a6);
    swift_unknownObjectRelease();
  }

  else
  {

    swift_unknownObjectRelease();
    v16 = v22;
    v17 = v23;
    sub_100026EEC(v21, v22);
    sub_100003A6C();
    __chkstk_darwin(v18);
    sub_100003CD0();
    (*(v19 + 16))(a4);
    a3 = sub_100026F3C(a4, a5, a6, v8, v16, v17);
    sub_100007378(v21);
  }

  return a3;
}

uint64_t ProtobufPayload.value(forKey:)()
{
  sub_100008660();
  v1 = sub_100004564();
  result = v2(v1);
  if (!v0)
  {
    v11 = sub_100006C78(result, v4, v5, v6, v7, v8, v9, v10, v13, v14);
    ProtobufPayload.value(forProperty:)(v11);
    sub_10000F68C();
    return sub_100007378(v12);
  }

  return result;
}

uint64_t ProtobufPayload.value(forKeypath:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v8 = *(v3 + 56);
  v9 = *(v3 + 64);
  sub_1000092B4(v3 + 16, v12);
  v12[40] = 1;
  sub_10013C89C(a1, a2, v12, v13);
  sub_10000F68C();
  result = sub_10011FBE8(v10);
  if (!v4)
  {
    static ProtoTagPathHelper.extractValue(from:pathAndType:)(v8, v9, v13, a3);
    return sub_10012F098(v13);
  }

  return result;
}

uint64_t ProtobufPayload.value(forProperty:)(void *a1)
{
  sub_100007534(a1, a1[3]);
  v3 = sub_100008B38();
  result = v4(v3);
  if (!v1)
  {
    sub_100007534(a1, a1[3]);
    v6 = sub_100008B38();
    v8 = v7(v6);
    sub_100046184(&qword_10021C7A0, &qword_1001A1300);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_100197F20;
    *(v9 + 32) = v8;
    *(v9 + 40) = 0;
    *(v9 + 48) = 0;
    sub_10011FB8C(v16, &v15);
    v10 = sub_100007DD0();
    static ProtoTagPathHelper.extractValue(from:pathAndType:)(v10, v11, v12, v13);
    sub_10000F68C();
    sub_10012F098(v14);
    return sub_10011FBE8(v16);
  }

  return result;
}

void *ProtobufPayload.forEachValue(ofKey:block:)(uint64_t a1, uint64_t a2, void (*a3)(_OWORD *), uint64_t a4)
{
  v6 = v4;
  v10 = v6[5];
  v11 = v6[6];
  sub_100007534(v6 + 2, v10);
  result = (*(v11 + 48))(v14, a1, a2, v10, v11);
  if (!v5)
  {
    static ProtoTagPathHelper.extractValues(from:property:block:)(v6[7], v6[8], v14, a3);
    sub_10000F68C();
    return sub_100007378(v13);
  }

  return result;
}

uint64_t ProtobufPayload.forEachValue(matchingPath:handler:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = static PropertyPathUtil.parse(_:)(a1, a2);
  if (v5)
  {
  }

  v8 = v6;
  sub_100006278();
  v12 = sub_1000270E0(v9, v10, v11, &protocol conformance descriptor for ProtobufPayload);
  sub_10012D874(v4, v12, v8);
}

uint64_t sub_10012D874(uint64_t result, uint64_t a2, void *a3)
{
  if (a3[2])
  {
    v5 = a3[4];
    v4 = a3[5];
    ObjectType = swift_getObjectType();
    v7 = *(a2 + 16);

    v7(v16, ObjectType, a2);
    v9 = v17;
    v8 = v18;
    sub_100007534(v16, v17);
    v15 = a2;
    v10 = *(v8 + 48);

    v11 = v22[7];
    v10(&v19, v5, v4, v9, v8);
    if (v11)
    {

      swift_bridgeObjectRelease_n();
      sub_100007378(v16);
      v19 = 0u;
      v20 = 0u;
      v21 = 0;
      return sub_10000F94C(&v19, &qword_10021CC58, &qword_1001A16F0);
    }

    sub_100007378(v16);
    if (!*(&v20 + 1))
    {

      return sub_10000F94C(&v19, &qword_10021CC58, &qword_1001A16F0);
    }

    v13 = sub_100008C84(&v19, v22);
    *&v19 = 0;
    v14 = __chkstk_darwin(v13);
    (*(v15 + 72))(v22, sub_10012F1C4, v14);
    sub_100007378(v22);
  }

  else
  {
    __break(1u);
  }

  return v12;
}

uint64_t sub_10012DAD8(uint64_t result, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, char a7, uint64_t (*a8)(uint64_t, uint64_t *, uint64_t, uint64_t, uint64_t), uint64_t a9, uint64_t a10)
{
  if ((a6 & 1) == 0)
  {
    v17 = *a2;
    if (*a2 != a5)
    {
      v25 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (!v25)
      {
        goto LABEL_35;
      }

      __break(1u);
      goto LABEL_16;
    }
  }

  if (a7)
  {
    result = a8(result, a2, a3, a4, a5);
    v19 = *a2 + 1;
    v20 = __OFADD__(*a2, 1);
    if (!v10)
    {
LABEL_19:
      if (!v20)
      {
        goto LABEL_35;
      }

      __break(1u);
      goto LABEL_21;
    }

    if (!v20)
    {
      goto LABEL_35;
    }

    __break(1u);
  }

  sub_100026258(result, v30);
  if (v31 != 10)
  {
LABEL_16:
    result = sub_10002633C(v30);
    v19 = *a2 + 1;
    if (!__OFADD__(*a2, 1))
    {
      goto LABEL_35;
    }

    __break(1u);
    goto LABEL_19;
  }

  v11 = v30[0];
  v14 = v30[1];

  v13 = sub_10012DCE4(1, a10);
  v15 = v21;
  v12 = v22;
  if ((v22 & 1) == 0)
  {
LABEL_12:
    sub_10012EEEC(v13, v18, v15, v12);
    v24 = v23;
    goto LABEL_27;
  }

LABEL_21:
  v29 = v18;
  v32 = v11;
  type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain_n();
  v26 = swift_dynamicCastClass();
  if (!v26)
  {
    swift_unknownObjectRelease();
    v26 = _swiftEmptyArrayStorage;
  }

  v27 = v26[2];

  if (__OFSUB__(v12 >> 1, v15))
  {
    __break(1u);
    goto LABEL_37;
  }

  if (v27 != (v12 >> 1) - v15)
  {
LABEL_37:
    swift_unknownObjectRelease();
    v11 = v32;
    v18 = v29;
    goto LABEL_12;
  }

  v24 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  v11 = v32;
  if (v24)
  {
    goto LABEL_28;
  }

  v24 = _swiftEmptyArrayStorage;
LABEL_27:
  swift_unknownObjectRelease();
LABEL_28:
  sub_10012D874(v11, v14, v24);
  swift_unknownObjectRelease();

  v19 = *a2 + 1;
  v28 = __OFADD__(*a2, 1);
  if (v10)
  {
    if (v28)
    {
      __break(1u);
      goto LABEL_34;
    }

LABEL_35:
    *a2 = v19;
    return result;
  }

LABEL_34:
  if (!v28)
  {
    goto LABEL_35;
  }

  __break(1u);
  return result;
}

uint64_t sub_10012DCE4(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = *(a2 + 16);
    result = sub_10008C560(0, result, v3);
    if (v4)
    {
      result = v3;
    }

    if (v3 >= result)
    {
      v5 = sub_1000F0800(result, v3, a2);

      return v5;
    }
  }

  __break(1u);
  return result;
}

void *ProtobufPayload.getArray(matchingPath:)(uint64_t a1, unint64_t a2)
{
  v4 = _swiftEmptyArrayStorage;
  v3[2] = &v4;
  ProtobufPayload.forEachValue(matchingPath:handler:)(a1, a2, sub_10012F0EC, v3);
  return v4;
}

uint64_t sub_10012DDF4(uint64_t a1, uint64_t *a2)
{
  sub_100135B90();
  v4 = *(*a2 + 16);
  sub_100135C34(v4);
  v5 = *a2;
  *(v5 + 16) = v4 + 1;
  return sub_100026258(a1, v5 + (v4 << 6) + 32);
}

uint64_t ProtobufPayload.value(forOneofName:)()
{
  sub_100008660();
  v1 = sub_100004564();
  result = v2(v1);
  if (!v0)
  {
    v11 = sub_100006C78(result, v4, v5, v6, v7, v8, v9, v10, v14, v15);
    ProtobufPayload.value(forOneof:)(v11, v12);
    sub_10000F68C();
    return sub_100007378(v13);
  }

  return result;
}

uint64_t ProtobufPayload.value(forOneof:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_100007534(a1, a1[3]);
  v4 = sub_10000DF3C();
  v6 = v5(v4);
  sub_10012DF4C(v6, (v2 + 16), _swiftEmptyArrayStorage, a2);
}

id sub_10012DF4C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  if (qword_10021BFE0 != -1)
  {
    swift_once();
  }

  v7 = qword_10021EA50;
  isa = Data._bridgeToObjectiveC()().super.isa;
  [v7 updateData:isa];

  [v7 seekToOffset:0];
  v9 = *(a5 + 16);
  v10 = Data.count.getter();
  if (v10 < 0)
  {
    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
  }

  v11 = v10;
  if (v9)
  {
    v12 = 0;
    v13 = a5 + 32;
    v64 = a5 + 32;
    v65 = v9;
    while (1)
    {
      v14 = *(v13 + 8 * v12);
      while (1)
      {
        v15 = [v7 position];
        if ((v15 & 0x8000000000000000) == 0 && v15 >= v11)
        {
          goto LABEL_59;
        }

        v16 = 0;
        v17 = 0;
        for (i = 0; ; ++i)
        {
          if (i > 9)
          {
            v22 = 0;
            goto LABEL_21;
          }

          LOBYTE(v71) = 0;
          v19 = [v7 position] + 1;
          if (v19 >= [v7 position] && (v20 = objc_msgSend(v7, "position") + 1, v20 <= objc_msgSend(v7, "length")))
          {
            v21 = [v7 data];
            [v21 getBytes:&v71 range:{objc_msgSend(v7, "position"), 1}];

            [v7 setPosition:{objc_msgSend(v7, "position") + 1}];
          }

          else
          {
            [v7 _setError];
          }

          v17 |= (v71 & 0x7F) << v16;
          if ((v71 & 0x80) == 0)
          {
            break;
          }

          v16 += 7;
        }

        v22 = [v7 hasError] ? 0 : v17;
LABEL_21:
        v23 = v22 & 7;
        if (v14 == (v22 >> 3))
        {
          break;
        }

        PBReaderSkipValueWithTag();
      }

      if (v23 != 2)
      {
        break;
      }

      v24 = 0;
      v25 = 0;
      for (j = 0; ; ++j)
      {
        if (j > 9)
        {
          v30 = 0;
          goto LABEL_37;
        }

        LOBYTE(v71) = 0;
        v27 = [v7 position] + 1;
        if (v27 >= [v7 position] && (v28 = objc_msgSend(v7, "position") + 1, v28 <= objc_msgSend(v7, "length")))
        {
          v29 = [v7 data];
          [v29 getBytes:&v71 range:{objc_msgSend(v7, "position"), 1}];

          [v7 setPosition:{objc_msgSend(v7, "position") + 1}];
        }

        else
        {
          [v7 _setError];
        }

        v25 |= (v71 & 0x7F) << v24;
        if ((v71 & 0x80) == 0)
        {
          break;
        }

        v24 += 7;
      }

      if ([v7 hasError])
      {
        v30 = 0;
      }

      else
      {
        v30 = v25;
      }

      if (v30 < 0)
      {
        goto LABEL_71;
      }

LABEL_37:
      v31 = [v7 position];
      if ((v31 & 0x8000000000000000) != 0)
      {
        goto LABEL_72;
      }

      ++v12;
      v11 = (v31 + v30);
      v13 = v64;
      if (v12 == v65)
      {
        goto LABEL_39;
      }
    }

    sub_10011DDBC();
    swift_allocError();
    v48 = v62;
    *&v71 = 0;
    *(&v71 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(38);

    *&v71 = 0xD000000000000024;
    *(&v71 + 1) = 0x80000001001B23E0;
    LOBYTE(v70[0]) = v23;
    goto LABEL_62;
  }

LABEL_39:
  v32 = [v7 position];
  if ((v32 & 0x8000000000000000) == 0 && v32 >= v11)
  {
LABEL_59:
    *(a6 + 96) = 0;
    *(a6 + 64) = 0u;
    *(a6 + 80) = 0u;
    *(a6 + 32) = 0u;
    *(a6 + 48) = 0u;
    *a6 = 0u;
    *(a6 + 16) = 0u;
    return [v7 updateData:0];
  }

  v33 = 0;
  v34 = 0;
  for (k = 0; ; ++k)
  {
    if (k > 9)
    {
      v39 = 0;
      goto LABEL_53;
    }

    LOBYTE(v71) = 0;
    v36 = [v7 position] + 1;
    if (v36 >= [v7 position] && (v37 = objc_msgSend(v7, "position") + 1, v37 <= objc_msgSend(v7, "length")))
    {
      v38 = [v7 data];
      [v38 getBytes:&v71 range:{objc_msgSend(v7, "position"), 1}];

      [v7 setPosition:{objc_msgSend(v7, "position") + 1}];
    }

    else
    {
      [v7 _setError];
    }

    v34 |= (v71 & 0x7F) << v33;
    if ((v71 & 0x80) == 0)
    {
      break;
    }

    v33 += 7;
  }

  if ([v7 hasError])
  {
    v39 = 0;
  }

  else
  {
    v39 = v34;
  }

LABEL_53:
  v40 = v39 & 7;
  v41 = (v39 >> 3);
  v42 = *(a1 + 16) + 1;
  v43 = (a1 + 40);
  do
  {
    if (!--v42)
    {
      PBReaderSkipValueWithTag();
      goto LABEL_39;
    }

    v44 = v43;
    v43 += 2;
  }

  while (*(v44 - 1) > v41 || *v44 < v41);
  v46 = sub_10012BC40(v40);
  if (v46 == 6)
  {
    sub_10011DDBC();
    swift_allocError();
    v48 = v47;
    *&v71 = 0;
    *(&v71 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(21);

    *&v71 = 0xD000000000000013;
    *(&v71 + 1) = 0x80000001001B2740;
    LOBYTE(v70[0]) = v40;
LABEL_62:
    v49._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v49);

    v50 = *(&v71 + 1);
    *v48 = v71;
    *(v48 + 8) = v50;
    *(v48 + 41) = 12;
    swift_willThrow();
    goto LABEL_64;
  }

  v51 = v46;
  v52 = a2[3];
  v53 = a2[4];
  sub_100007534(a2, v52);
  v54 = (*(v53 + 40))(v52, v53);
  if (!v68)
  {
    sub_10014341C(v41, v54, &v71);

    v55 = &selRef_resultWithError_;
    if (*(&v72 + 1))
    {
      sub_100008C84(&v71, v75);
      sub_1000092B4(v75, v74);
      v56 = v76;
      v57 = v77;
      sub_100007534(v75, v76);
      (*(v57 + 40))(v70, v56, v57);
      sub_10012BC90(v7, v51, &v71);
      sub_10011FBE8(v70);
      sub_100008C84(v74, a6);
      v63 = v72;
      *(a6 + 40) = v71;
      *(a6 + 56) = v63;
      *(a6 + 72) = v73[0];
      *(a6 + 82) = *(v73 + 10);
      sub_100007378(v75);
    }

    else
    {
      sub_10000F94C(&v71, &qword_10021CC58, &qword_1001A16F0);
      sub_10011DDBC();
      swift_allocError();
      v59 = v58;
      *&v71 = 0x6761742068746957;
      *(&v71 + 1) = 0xE900000000000020;
      v70[0] = v41;
      v60._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v60);

      v61 = *(&v71 + 1);
      *v59 = v71;
      *(v59 + 8) = v61;
      *(v59 + 41) = 4;
      swift_willThrow();
    }

    return [v7 v55[166]];
  }

LABEL_64:
  v55 = &selRef_resultWithError_;
  return [v7 v55[166]];
}

Swift::String_optional __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ProtobufPayload.propertyName(forOneofName:)(Swift::String forOneofName)
{
  v3 = v1;
  object = forOneofName._object;
  countAndFlagsBits = forOneofName._countAndFlagsBits;
  v6 = v3[5];
  v7 = v3[6];
  v8 = sub_100007534(v3 + 2, v6);
  v9 = object;
  v10 = v8;
  (*(v7 + 56))(v16, countAndFlagsBits, v9, v6, v7);
  if (!v2)
  {
    v10 = ProtobufPayload.propertyName(forOneof:)(v16);
    v3 = v11;
    sub_10000F68C();
    sub_100007378(v12);
  }

  v13 = v10;
  v14 = v3;
  result.value._object = v14;
  result.value._countAndFlagsBits = v13;
  return result;
}

uint64_t ProtobufPayload.propertyName(forOneof:)(void *a1)
{
  sub_100007534(a1, a1[3]);
  v4 = sub_10000DF3C();
  v6 = v5(v4);
  v7 = sub_100122BB8(v6, *(v1 + 56), *(v1 + 64), _swiftEmptyArrayStorage);
  v9 = v8;

  if (!v2)
  {
    if (v9)
    {
      return 0;
    }

    else
    {
      v11 = a1[3];
      v12 = a1[4];
      sub_100007534(a1, v11);
      return (*(v12 + 32))(v7, v11, v12);
    }
  }

  return result;
}

uint64_t ProtobufPayload.property(forOneofName:)()
{
  sub_100008660();
  v1 = sub_100004564();
  result = v2(v1);
  if (!v0)
  {
    v11 = sub_100006C78(result, v4, v5, v6, v7, v8, v9, v10, v14, v15);
    ProtobufPayload.property(forOneof:)(v11, v12);
    sub_10000F68C();
    return sub_100007378(v13);
  }

  return result;
}

uint64_t ProtobufPayload.property(forOneof:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = ProtobufPayload.propertyName(forOneof:)(a1);
  if (!v3)
  {
    if (v6)
    {
      sub_100007534((v2 + 16), *(v2 + 40));
      v7 = sub_100007DD0();
      v8(v7);
    }

    else
    {
      *(a2 + 32) = 0;
      *a2 = 0u;
      *(a2 + 16) = 0u;
    }
  }

  return result;
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ProtobufPayload.asJSON()()
{
  v1 = v0;
  v2 = type metadata accessor for String.Encoding();
  __chkstk_darwin(v2 - 8);
  v4 = v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for JSONEncoder.OutputFormatting();
  __chkstk_darwin(v5);
  sub_100003CD0();
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  sub_100046184(&qword_10021CF28, &qword_1001A1E48);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100198F10;
  static JSONEncoder.OutputFormatting.prettyPrinted.getter();
  static JSONEncoder.OutputFormatting.sortedKeys.getter();
  v21 = v6;
  sub_1000270E0(&qword_10021CF30, 255, &type metadata accessor for JSONEncoder.OutputFormatting, &protocol conformance descriptor for JSONEncoder.OutputFormatting);
  sub_100046184(&qword_10021CF38, &qword_1001A1E50);
  sub_10012F108();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  dispatch thunk of JSONEncoder.outputFormatting.setter();
  v21 = v1;
  type metadata accessor for ProtobufPayload();
  sub_100006278();
  sub_1000270E0(v7, v8, v9, &protocol conformance descriptor for ProtobufPayload);
  v10 = v20[1];
  v11 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  if (!v10)
  {
    v13 = v11;
    v14 = v12;
    static String.Encoding.utf8.getter();
    v4 = String.init(data:encoding:)();
    v5 = v15;
    sub_100014A40(v13, v14);
    if (!v5)
    {
      sub_10011DDBC();
      swift_allocError();
      sub_10000AC94(v18, 0x80000001001B26F0);
    }
  }

  v16 = v4;
  v17 = v5;
  result._object = v17;
  result._countAndFlagsBits = v16;
  return result;
}