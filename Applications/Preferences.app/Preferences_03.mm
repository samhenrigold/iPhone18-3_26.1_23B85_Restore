void sub_100054F18(void *a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    sub_10002A748(a1, a2, a3);
  }
}

uint64_t sub_100054F2C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100054F74(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100054FD0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v5[2] = *(a1 + 32);
  v6 = *(a1 + 48);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v7[2] = *(a2 + 32);
  v8 = *(a2 + 48);
  return sub_10005502C(v5, v7) & 1;
}

uint64_t sub_10005502C(unint64_t *a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  if (v2 == 255)
  {
    if (v3 == 255)
    {
      goto LABEL_3;
    }

    return 0;
  }

  if (v3 == 255)
  {
    return 0;
  }

  v12 = *a1;
  v11 = a1[1];
  v14 = *a2;
  v13 = *(a2 + 8);
  if (*(a1 + 16) > 1u)
  {
    if (v2 != 2)
    {
      v9 = v12 | v11;
      if (v9)
      {
        v9 = 0;
        if (v3 != 3 || v14 != 1 || v13)
        {
          return v9;
        }
      }

      else if (v3 != 3 || v13 | v14)
      {
        return v9;
      }

      goto LABEL_3;
    }

    if (v3 != 2)
    {
      return 0;
    }
  }

  else
  {
    if (!*(a1 + 16))
    {
      if (!*(a2 + 16))
      {
        v15 = a1;
        v16 = a2;
        sub_1000548F0();
        v17 = v14;
        v18 = static NSObject.== infix(_:_:)();
        sub_100054F18(v14, v13, 0);
        a1 = v15;
        a2 = v16;
        if (v18)
        {
          goto LABEL_3;
        }
      }

      return 0;
    }

    if (v3 != 1)
    {
      return 0;
    }
  }

  if (v12 != v14 || v11 != v13)
  {
    v19 = a1;
    v20 = a2;
    v21 = _stringCompareWithSmolCheck(_:_:expecting:)();
    a2 = v20;
    v22 = v21;
    a1 = v19;
    if ((v22 & 1) == 0)
    {
      return 0;
    }
  }

LABEL_3:
  if (a1[3] != *(a2 + 24) || a1[4] != *(a2 + 32))
  {
    v5 = a1;
    v6 = a2;
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
    a2 = v6;
    v8 = v7;
    a1 = v5;
    if ((v8 & 1) == 0)
    {
      return 0;
    }
  }

  if (a1[5] == *(a2 + 40) && a1[6] == *(a2 + 48))
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t sub_100055204(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

uint64_t sub_100055234(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_10005527C(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

BOOL sub_100055318(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_100055348@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_100055374@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t sub_10005544C@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_10008D580();

  *a2 = v3;
  return result;
}

unint64_t sub_100055490()
{
  result = qword_10015B348;
  if (!qword_10015B348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015B348);
  }

  return result;
}

unint64_t sub_1000554E8()
{
  result = qword_10015B350;
  if (!qword_10015B350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015B350);
  }

  return result;
}

unint64_t sub_100055540()
{
  result = qword_10015B358;
  if (!qword_10015B358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015B358);
  }

  return result;
}

unint64_t sub_100055598()
{
  result = qword_10015B360;
  if (!qword_10015B360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015B360);
  }

  return result;
}

uint64_t sub_1000555F0(uint64_t result, unsigned int a2)
{
  if (a2 >= 6)
  {
    *result = a2 - 6;
    *(result + 8) = 0;
    LOBYTE(a2) = 6;
    *(result + 16) = 0;
    *(result + 24) = 0;
  }

  *(result + 32) = a2;
  return result;
}

unint64_t sub_10005560C()
{
  if (*(v0 + 32) < 6u)
  {
    return 0;
  }

  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2] | v0[3];
  if (!(v4 | *v0 | v3))
  {
    return 0xD000000000000035;
  }

  v5 = v4 | v3;
  if (v2 == 1 && v5 == 0)
  {
    return 0xD00000000000002FLL;
  }

  if (v2 == 2 && v5 == 0)
  {
    return 0;
  }

  if (v2 == 3 && !v5)
  {
    return 0xD00000000000002DLL;
  }

  if (v2 == 4 && !v5)
  {
    return 0xD000000000000031;
  }

  if (v2 == 5 && !v5)
  {
    return 0xD000000000000032;
  }

  if (v2 == 6 && !v5)
  {
    return 0xD000000000000031;
  }

  if (v2 == 7 && !v5)
  {
    return 0xD000000000000038;
  }

  if (v2 == 8 && !v5)
  {
    return 0xD00000000000002CLL;
  }

  if (v2 == 9 && !v5)
  {
    return 0xD000000000000032;
  }

  if (v2 == 10 && !v5)
  {
    return 0;
  }

  if (v2 == 11 && !v5)
  {
    return 0xD000000000000036;
  }

  if (v2 == 12 && !v5)
  {
    return 0xD00000000000002FLL;
  }

  if (v2 == 13 && !v5)
  {
    return 0xD00000000000002ELL;
  }

  if (v2 == 14 && !v5)
  {
    return 0xD000000000000033;
  }

  if (v2 == 15 && !v5)
  {
    return 0xD000000000000030;
  }

  if (v2 == 16 && !v5)
  {
    return 0xD000000000000036;
  }

  if (v2 == 17 && !v5)
  {
    return 0xD000000000000035;
  }

  if (v2 == 18 && !v5)
  {
    return 0xD000000000000030;
  }

  if (v2 == 19 && !v5 || v2 == 20 && !v5)
  {
    return 0xD000000000000040;
  }

  if (v2 == 21 && !v5)
  {
    return 0xD000000000000036;
  }

  if (v2 == 22 && !v5)
  {
    return 0xD000000000000032;
  }

  if (v2 == 23 && !v5)
  {
    return 0xD000000000000030;
  }

  if (v2 == 24 && !v5)
  {
    return 0xD00000000000002DLL;
  }

  if (v2 == 25 && !v5)
  {
    return 0xD00000000000002FLL;
  }

  if (v2 == 26 && !v5)
  {
    return 0xD00000000000002FLL;
  }

  if (v2 == 27 && !v5)
  {
    return 0xD000000000000031;
  }

  if (v2 == 28 && !v5)
  {
    return 0xD00000000000002CLL;
  }

  if (v2 == 29 && !v5)
  {
    return 0xD00000000000003ELL;
  }

  if (v2 == 30 && !v5)
  {
    return 0xD000000000000030;
  }

  if (v2 == 31 && !v5)
  {
    return 0xD00000000000003BLL;
  }

  if (v2 == 32 && !v5)
  {
    return 0xD00000000000002FLL;
  }

  if (v2 == 33 && !v5)
  {
    return 0xD000000000000034;
  }

  if (v2 == 34 && !v5)
  {
    return 0xD000000000000031;
  }

  if (v2 == 35 && !v5)
  {
    return 0xD00000000000002FLL;
  }

  if (v2 == 36 && !v5)
  {
    return 0xD000000000000033;
  }

  if (v2 == 37 && !v5)
  {
    return 0xD00000000000002FLL;
  }

  if (v2 == 38 && !v5)
  {
    return 0xD000000000000032;
  }

  if (v2 == 39 && !v5)
  {
    return 0;
  }

  if (v2 != 40 || v5)
  {
    if ((v2 - 41) > 3 || v5)
    {
      return 0xD00000000000002DLL;
    }

    return 0;
  }

  return 0xD000000000000039;
}

uint64_t sub_100055B70()
{
  if (*(v0 + 32) != 6)
  {
    return 74;
  }

  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2] | v0[3];
  if (!(v3 | *v0 | v2))
  {
    return 3;
  }

  v4 = v3 | v2;
  if (v1 == 1 && v4 == 0)
  {
    return 4;
  }

  if (v1 == 2 && !v4)
  {
    return 73;
  }

  if (v1 == 3 && !v4)
  {
    return 5;
  }

  if (v1 == 4 && !v4)
  {
    return 6;
  }

  if (v1 == 5 && !v4)
  {
    return 7;
  }

  if (v1 == 6 && !v4)
  {
    return 8;
  }

  if (v1 == 7 && !v4)
  {
    return 9;
  }

  if (v1 == 8 && !v4)
  {
    return 10;
  }

  if (v1 == 9 && !v4)
  {
    return 11;
  }

  if (v1 == 11 && !v4)
  {
    return 12;
  }

  if (v1 == 12 && !v4)
  {
    return 13;
  }

  if (v1 == 13 && !v4)
  {
    return 14;
  }

  if (v1 == 14 && !v4)
  {
    return 15;
  }

  if (v1 == 15 && !v4)
  {
    return 16;
  }

  if (v1 == 16 && !v4)
  {
    return 17;
  }

  if (v1 == 17 && !v4)
  {
    return 18;
  }

  if (v1 == 18 && !v4)
  {
    return 20;
  }

  if (v1 == 19 && !v4)
  {
    return 21;
  }

  if (v1 == 20 && !v4)
  {
    return 1;
  }

  if (v1 == 21 && !v4)
  {
    return 23;
  }

  if (v1 == 22 && !v4)
  {
    return 24;
  }

  if (v1 == 23 && !v4)
  {
    return 19;
  }

  if (v1 == 24 && !v4)
  {
    return 25;
  }

  if (v1 == 26 && !v4)
  {
    return 26;
  }

  if (v1 == 27 && !v4)
  {
    return 27;
  }

  if (v1 == 28 && !v4)
  {
    return 30;
  }

  if (v1 == 29 && !v4)
  {
    return 31;
  }

  if (v1 == 30 && !v4)
  {
    return 32;
  }

  if (v1 == 31 && !v4)
  {
    return 33;
  }

  if (v1 == 32 && !v4)
  {
    return 36;
  }

  if (v1 == 34 && !v4)
  {
    return 59;
  }

  if (v1 == 35 && !v4)
  {
    return 64;
  }

  if (v1 == 36 && !v4)
  {
    return 67;
  }

  if (v1 == 38 && !v4)
  {
    return 69;
  }

  if (v1 == 39 && !v4)
  {
    return 70;
  }

  if (v1 == 40 && !v4)
  {
    return 71;
  }

  else
  {
    return 74;
  }
}

Swift::Int sub_100055E78()
{
  Hasher.init(_seed:)();
  sub_10002FE78(v1);
  return Hasher._finalize()();
}

uint64_t sub_100055EBC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return sub_100056108(v5, v7) & 1;
}

BOOL sub_100055F08(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v2;
  v8 = *(a1 + 32);
  v3 = *(a2 + 16);
  v5[0] = *a2;
  v5[1] = v3;
  v6 = *(a2 + 32);
  return (sub_100056108(v5, v7) & 1) == 0;
}

BOOL sub_100055F58(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return (sub_100056108(v5, v7) & 1) == 0;
}

uint64_t sub_100055FA8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v2;
  v8 = *(a1 + 32);
  v3 = *(a2 + 16);
  v5[0] = *a2;
  v5[1] = v3;
  v6 = *(a2 + 32);
  return sub_100056108(v5, v7) & 1;
}

void sub_100055FF8(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = *(v1 + 32);
  sub_100029920(v3, v4, v5, v6, v7);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
}

void sub_100056058(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  v6 = *(v2 + 8);
  v7 = *(v2 + 16);
  v8 = *(v2 + 24);
  v9 = *(v2 + 32);
  type metadata accessor for StaticPrimarySettingsListItemProvider();
  inited = swift_initStackObject();
  *(inited + 16) = v5;
  *(inited + 24) = v6;
  *(inited + 32) = v7;
  *(inited + 40) = v8;
  *(inited + 48) = v9;
  sub_100029920(v5, v6, v7, v8, v9);
  sub_10005AFAC(a1, a2);
  swift_setDeallocating();
  sub_10002C5C0(*(inited + 16), *(inited + 24), *(inited + 32), *(inited + 40), *(inited + 48));
}

uint64_t sub_100056108(void *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v5 = a2[2];
  v4 = a2[3];
  v6 = *(a2 + 32);
  v7 = *a1;
  v8 = a1[1];
  v10 = a1[2];
  v9 = a1[3];
  v11 = *(a1 + 32);
  if (v11 > 2)
  {
    if (*(a1 + 32) <= 4u)
    {
      if (v11 == 3)
      {
        if (v6 != 3)
        {
          v12 = 5;
LABEL_356:
          if (*(a2 + 32) <= 2u)
          {
            v19 = 3;
            if (v6 != 1)
            {
              v19 = 4;
            }

            if (*(a2 + 32))
            {
              v18 = v19;
            }

            else
            {
              v18 = 2;
            }

            return v12 < v18;
          }

          if (*(a2 + 32) <= 4u)
          {
            v17 = v6 == 3;
            v18 = 5;
            if (!v17)
            {
              v18 = 6;
            }

            return v12 < v18;
          }

          if (v6 == 5)
          {
            v18 = 7;
            return v12 < v18;
          }

LABEL_368:
          if (v5 | v3 | v2 | v4)
          {
            v20 = v5 | v3 | v4;
            if (v2 != 1 || v20)
            {
              if (v2 != 2 || v20)
              {
                if (v2 != 3 || v20)
                {
                  if (v2 != 4 || v20)
                  {
                    if (v2 != 5 || v20)
                    {
                      if (v2 != 6 || v20)
                      {
                        if (v2 != 7 || v20)
                        {
                          if (v2 != 8 || v20)
                          {
                            if (v2 != 9 || v20)
                            {
                              if (v2 != 10 || v20)
                              {
                                if (v2 != 11 || v20)
                                {
                                  if (v2 != 12 || v20)
                                  {
                                    if (v2 != 13 || v20)
                                    {
                                      if (v2 != 14 || v20)
                                      {
                                        if (v2 != 15 || v20)
                                        {
                                          if (v2 != 16 || v20)
                                          {
                                            if (v2 != 17 || v20)
                                            {
                                              if (v2 != 18 || v20)
                                              {
                                                if (v2 != 19 || v20)
                                                {
                                                  if (v2 != 20 || v20)
                                                  {
                                                    if (v2 != 21 || v20)
                                                    {
                                                      if (v2 != 22 || v20)
                                                      {
                                                        if (v2 != 23 || v20)
                                                        {
                                                          if (v2 != 24 || v20)
                                                          {
                                                            if (v2 != 25 || v20)
                                                            {
                                                              if (v2 != 26 || v20)
                                                              {
                                                                if (v2 != 27 || v20)
                                                                {
                                                                  if (v2 != 28 || v20)
                                                                  {
                                                                    if (v2 != 29 || v20)
                                                                    {
                                                                      if (v2 != 30 || v20)
                                                                      {
                                                                        if (v2 != 31 || v20)
                                                                        {
                                                                          if (v2 != 32 || v20)
                                                                          {
                                                                            if (v2 != 33 || v20)
                                                                            {
                                                                              if (v2 != 34 || v20)
                                                                              {
                                                                                if (v2 != 35 || v20)
                                                                                {
                                                                                  if (v2 != 36 || v20)
                                                                                  {
                                                                                    if (v2 != 37 || v20)
                                                                                    {
                                                                                      if (v2 != 38 || v20)
                                                                                      {
                                                                                        if (v2 != 39 || v20)
                                                                                        {
                                                                                          if (v2 != 40 || v20)
                                                                                          {
                                                                                            if (v2 != 41 || v20)
                                                                                            {
                                                                                              if (v2 != 42 || v20)
                                                                                              {
                                                                                                if (v2 != 43 || v20)
                                                                                                {
                                                                                                  if (v20)
                                                                                                  {
                                                                                                    v21 = 0;
                                                                                                  }

                                                                                                  else
                                                                                                  {
                                                                                                    v21 = v2 == 44;
                                                                                                  }

                                                                                                  v18 = 50;
                                                                                                  if (!v21)
                                                                                                  {
                                                                                                    v18 = 51;
                                                                                                  }
                                                                                                }

                                                                                                else
                                                                                                {
                                                                                                  v18 = 49;
                                                                                                }
                                                                                              }

                                                                                              else
                                                                                              {
                                                                                                v18 = 48;
                                                                                              }
                                                                                            }

                                                                                            else
                                                                                            {
                                                                                              v18 = 47;
                                                                                            }
                                                                                          }

                                                                                          else
                                                                                          {
                                                                                            v18 = 46;
                                                                                          }
                                                                                        }

                                                                                        else
                                                                                        {
                                                                                          v18 = 45;
                                                                                        }
                                                                                      }

                                                                                      else
                                                                                      {
                                                                                        v18 = 44;
                                                                                      }
                                                                                    }

                                                                                    else
                                                                                    {
                                                                                      v18 = 43;
                                                                                    }
                                                                                  }

                                                                                  else
                                                                                  {
                                                                                    v18 = 42;
                                                                                  }
                                                                                }

                                                                                else
                                                                                {
                                                                                  v18 = 41;
                                                                                }
                                                                              }

                                                                              else
                                                                              {
                                                                                v18 = 40;
                                                                              }
                                                                            }

                                                                            else
                                                                            {
                                                                              v18 = 39;
                                                                            }
                                                                          }

                                                                          else
                                                                          {
                                                                            v18 = 38;
                                                                          }
                                                                        }

                                                                        else
                                                                        {
                                                                          v18 = 37;
                                                                        }
                                                                      }

                                                                      else
                                                                      {
                                                                        v18 = 36;
                                                                      }
                                                                    }

                                                                    else
                                                                    {
                                                                      v18 = 35;
                                                                    }
                                                                  }

                                                                  else
                                                                  {
                                                                    v18 = 34;
                                                                  }
                                                                }

                                                                else
                                                                {
                                                                  v18 = 33;
                                                                }
                                                              }

                                                              else
                                                              {
                                                                v18 = 32;
                                                              }
                                                            }

                                                            else
                                                            {
                                                              v18 = 31;
                                                            }
                                                          }

                                                          else
                                                          {
                                                            v18 = 30;
                                                          }
                                                        }

                                                        else
                                                        {
                                                          v18 = 29;
                                                        }
                                                      }

                                                      else
                                                      {
                                                        v18 = 28;
                                                      }
                                                    }

                                                    else
                                                    {
                                                      v18 = 27;
                                                    }
                                                  }

                                                  else
                                                  {
                                                    v18 = 26;
                                                  }
                                                }

                                                else
                                                {
                                                  v18 = 25;
                                                }
                                              }

                                              else
                                              {
                                                v18 = 24;
                                              }
                                            }

                                            else
                                            {
                                              v18 = 23;
                                            }
                                          }

                                          else
                                          {
                                            v18 = 22;
                                          }
                                        }

                                        else
                                        {
                                          v18 = 21;
                                        }
                                      }

                                      else
                                      {
                                        v18 = 20;
                                      }
                                    }

                                    else
                                    {
                                      v18 = 19;
                                    }
                                  }

                                  else
                                  {
                                    v18 = 18;
                                  }
                                }

                                else
                                {
                                  v18 = 17;
                                }
                              }

                              else
                              {
                                v18 = 16;
                              }
                            }

                            else
                            {
                              v18 = 15;
                            }
                          }

                          else
                          {
                            v18 = 14;
                          }
                        }

                        else
                        {
                          v18 = 13;
                        }
                      }

                      else
                      {
                        v18 = 12;
                      }
                    }

                    else
                    {
                      v18 = 11;
                    }
                  }

                  else
                  {
                    v18 = 10;
                  }
                }

                else
                {
                  v18 = 9;
                }
              }

              else
              {
                v18 = 8;
              }
            }

            else
            {
              v18 = 1;
            }
          }

          else
          {
            v18 = 0;
          }

          return v12 < v18;
        }
      }

      else if (v6 != 4)
      {
        v12 = 6;
        goto LABEL_356;
      }

      goto LABEL_22;
    }

    if (v11 == 5)
    {
      if (v6 != 5)
      {
        v12 = 7;
        goto LABEL_356;
      }

      goto LABEL_22;
    }

    v14 = v10 | v8;
    if (!(v10 | v8 | v7 | v9))
    {
      if (v6 != 6)
      {
        v12 = 0;
        goto LABEL_356;
      }

      if (v5 | v3 | v2 | v4)
      {
        v12 = 0;
        goto LABEL_368;
      }

      return 0;
    }

    v15 = v14 | v9;
    v16 = (v14 | v9) == 0;
    if (v7 != 1 || v15)
    {
      if (v7 != 2 || v15)
      {
        if (v7 != 3 || v15)
        {
          if (v7 != 4 || v15)
          {
            if (v7 != 5 || v15)
            {
              if (v7 != 6 || v15)
              {
                if (v7 != 7 || v15)
                {
                  if (v7 != 8 || v15)
                  {
                    if (v7 != 9 || v15)
                    {
                      if (v7 != 10 || v15)
                      {
                        if (v7 != 11 || v15)
                        {
                          if (v7 != 12 || v15)
                          {
                            if (v7 != 13 || v15)
                            {
                              if (v7 != 14 || v15)
                              {
                                if (v7 != 15 || v15)
                                {
                                  if (v7 != 16 || v15)
                                  {
                                    if (v7 != 17 || v15)
                                    {
                                      if (v7 != 18 || v15)
                                      {
                                        if (v7 != 19 || v15)
                                        {
                                          if (v7 != 20 || v15)
                                          {
                                            if (v7 != 21 || v15)
                                            {
                                              if (v7 != 22 || v15)
                                              {
                                                if (v7 != 23 || v15)
                                                {
                                                  if (v7 != 24 || v15)
                                                  {
                                                    if (v7 != 25 || v15)
                                                    {
                                                      if (v7 != 26 || v15)
                                                      {
                                                        if (v7 != 27 || v15)
                                                        {
                                                          if (v7 != 28 || v15)
                                                          {
                                                            if (v7 != 29 || v15)
                                                            {
                                                              if (v7 != 30 || v15)
                                                              {
                                                                if (v7 != 31 || v15)
                                                                {
                                                                  if (v7 != 32 || v15)
                                                                  {
                                                                    if (v7 != 33 || v15)
                                                                    {
                                                                      if (v7 != 34 || v15)
                                                                      {
                                                                        if (v7 != 35 || v15)
                                                                        {
                                                                          if (v7 != 36 || v15)
                                                                          {
                                                                            if (v7 != 37 || v15)
                                                                            {
                                                                              if (v7 != 38 || v15)
                                                                              {
                                                                                if (v7 != 39 || v15)
                                                                                {
                                                                                  if (v7 != 40 || v15)
                                                                                  {
                                                                                    if (v7 != 41 || v15)
                                                                                    {
                                                                                      if (v7 != 42 || v15)
                                                                                      {
                                                                                        if (v7 != 43 || v15)
                                                                                        {
                                                                                          if (v7 != 44 || v15)
                                                                                          {
                                                                                            if (v6 != 6 || v2 != 45)
                                                                                            {
                                                                                              goto LABEL_354;
                                                                                            }
                                                                                          }

                                                                                          else if (v6 != 6 || v2 != 44)
                                                                                          {
                                                                                            goto LABEL_354;
                                                                                          }

                                                                                          if (!(v5 | v3 | v4))
                                                                                          {
                                                                                            return 0;
                                                                                          }
                                                                                        }

                                                                                        else
                                                                                        {
                                                                                          if (v6 == 6 && v2 == 43 && !(v5 | v3 | v4))
                                                                                          {
                                                                                            return 0;
                                                                                          }

                                                                                          v16 = v14 == 0;
                                                                                          if (!v14)
                                                                                          {
                                                                                            v12 = 49;
                                                                                            goto LABEL_356;
                                                                                          }
                                                                                        }
                                                                                      }

                                                                                      else
                                                                                      {
                                                                                        if (v6 == 6 && v2 == 42 && !(v5 | v3 | v4))
                                                                                        {
                                                                                          return 0;
                                                                                        }

                                                                                        v16 = v14 == 0;
                                                                                        if (!v14)
                                                                                        {
                                                                                          v12 = 48;
                                                                                          goto LABEL_356;
                                                                                        }
                                                                                      }
                                                                                    }

                                                                                    else
                                                                                    {
                                                                                      if (v6 == 6 && v2 == 41 && !(v5 | v3 | v4))
                                                                                      {
                                                                                        return 0;
                                                                                      }

                                                                                      v16 = v14 == 0;
                                                                                      if (!v14)
                                                                                      {
                                                                                        v12 = 47;
                                                                                        goto LABEL_356;
                                                                                      }
                                                                                    }
                                                                                  }

                                                                                  else
                                                                                  {
                                                                                    if (v6 == 6 && v2 == 40 && !(v5 | v3 | v4))
                                                                                    {
                                                                                      return 0;
                                                                                    }

                                                                                    v16 = v14 == 0;
                                                                                    if (!v14)
                                                                                    {
                                                                                      v12 = 46;
                                                                                      goto LABEL_356;
                                                                                    }
                                                                                  }
                                                                                }

                                                                                else
                                                                                {
                                                                                  if (v6 == 6 && v2 == 39 && !(v5 | v3 | v4))
                                                                                  {
                                                                                    return 0;
                                                                                  }

                                                                                  v16 = v14 == 0;
                                                                                  if (!v14)
                                                                                  {
                                                                                    v12 = 45;
                                                                                    goto LABEL_356;
                                                                                  }
                                                                                }
                                                                              }

                                                                              else
                                                                              {
                                                                                if (v6 == 6 && v2 == 38 && !(v5 | v3 | v4))
                                                                                {
                                                                                  return 0;
                                                                                }

                                                                                v16 = v14 == 0;
                                                                                if (!v14)
                                                                                {
                                                                                  v12 = 44;
                                                                                  goto LABEL_356;
                                                                                }
                                                                              }
                                                                            }

                                                                            else
                                                                            {
                                                                              if (v6 == 6 && v2 == 37 && !(v5 | v3 | v4))
                                                                              {
                                                                                return 0;
                                                                              }

                                                                              v16 = v14 == 0;
                                                                              if (!v14)
                                                                              {
                                                                                v12 = 43;
                                                                                goto LABEL_356;
                                                                              }
                                                                            }
                                                                          }

                                                                          else
                                                                          {
                                                                            if (v6 == 6 && v2 == 36 && !(v5 | v3 | v4))
                                                                            {
                                                                              return 0;
                                                                            }

                                                                            v16 = v14 == 0;
                                                                            if (!v14)
                                                                            {
                                                                              v12 = 42;
                                                                              goto LABEL_356;
                                                                            }
                                                                          }
                                                                        }

                                                                        else
                                                                        {
                                                                          if (v6 == 6 && v2 == 35 && !(v5 | v3 | v4))
                                                                          {
                                                                            return 0;
                                                                          }

                                                                          v16 = v14 == 0;
                                                                          if (!v14)
                                                                          {
                                                                            v12 = 41;
                                                                            goto LABEL_356;
                                                                          }
                                                                        }
                                                                      }

                                                                      else
                                                                      {
                                                                        if (v6 == 6 && v2 == 34 && !(v5 | v3 | v4))
                                                                        {
                                                                          return 0;
                                                                        }

                                                                        v16 = v14 == 0;
                                                                        if (!v14)
                                                                        {
                                                                          v12 = 40;
                                                                          goto LABEL_356;
                                                                        }
                                                                      }
                                                                    }

                                                                    else
                                                                    {
                                                                      if (v6 == 6 && v2 == 33 && !(v5 | v3 | v4))
                                                                      {
                                                                        return 0;
                                                                      }

                                                                      v16 = v14 == 0;
                                                                      if (!v14)
                                                                      {
                                                                        v12 = 39;
                                                                        goto LABEL_356;
                                                                      }
                                                                    }
                                                                  }

                                                                  else
                                                                  {
                                                                    if (v6 == 6 && v2 == 32 && !(v5 | v3 | v4))
                                                                    {
                                                                      return 0;
                                                                    }

                                                                    v16 = v14 == 0;
                                                                    if (!v14)
                                                                    {
                                                                      v12 = 38;
                                                                      goto LABEL_356;
                                                                    }
                                                                  }
                                                                }

                                                                else
                                                                {
                                                                  if (v6 == 6 && v2 == 31 && !(v5 | v3 | v4))
                                                                  {
                                                                    return 0;
                                                                  }

                                                                  v16 = v14 == 0;
                                                                  if (!v14)
                                                                  {
                                                                    v12 = 37;
                                                                    goto LABEL_356;
                                                                  }
                                                                }
                                                              }

                                                              else
                                                              {
                                                                if (v6 == 6 && v2 == 30 && !(v5 | v3 | v4))
                                                                {
                                                                  return 0;
                                                                }

                                                                v16 = v14 == 0;
                                                                if (!v14)
                                                                {
                                                                  v12 = 36;
                                                                  goto LABEL_356;
                                                                }
                                                              }
                                                            }

                                                            else
                                                            {
                                                              if (v6 == 6 && v2 == 29 && !(v5 | v3 | v4))
                                                              {
                                                                return 0;
                                                              }

                                                              v16 = v14 == 0;
                                                              if (!v14)
                                                              {
                                                                v12 = 35;
                                                                goto LABEL_356;
                                                              }
                                                            }
                                                          }

                                                          else
                                                          {
                                                            if (v6 == 6 && v2 == 28 && !(v5 | v3 | v4))
                                                            {
                                                              return 0;
                                                            }

                                                            v16 = v14 == 0;
                                                            if (!v14)
                                                            {
                                                              v12 = 34;
                                                              goto LABEL_356;
                                                            }
                                                          }
                                                        }

                                                        else
                                                        {
                                                          if (v6 == 6 && v2 == 27 && !(v5 | v3 | v4))
                                                          {
                                                            return 0;
                                                          }

                                                          v16 = v14 == 0;
                                                          if (!v14)
                                                          {
                                                            v12 = 33;
                                                            goto LABEL_356;
                                                          }
                                                        }
                                                      }

                                                      else
                                                      {
                                                        if (v6 == 6 && v2 == 26 && !(v5 | v3 | v4))
                                                        {
                                                          return 0;
                                                        }

                                                        v16 = v14 == 0;
                                                        if (!v14)
                                                        {
                                                          v12 = 32;
                                                          goto LABEL_356;
                                                        }
                                                      }
                                                    }

                                                    else
                                                    {
                                                      if (v6 == 6 && v2 == 25 && !(v5 | v3 | v4))
                                                      {
                                                        return 0;
                                                      }

                                                      v16 = v14 == 0;
                                                      if (!v14)
                                                      {
                                                        v12 = 31;
                                                        goto LABEL_356;
                                                      }
                                                    }
                                                  }

                                                  else
                                                  {
                                                    if (v6 == 6 && v2 == 24 && !(v5 | v3 | v4))
                                                    {
                                                      return 0;
                                                    }

                                                    v16 = v14 == 0;
                                                    if (!v14)
                                                    {
                                                      v12 = 30;
                                                      goto LABEL_356;
                                                    }
                                                  }
                                                }

                                                else
                                                {
                                                  if (v6 == 6 && v2 == 23 && !(v5 | v3 | v4))
                                                  {
                                                    return 0;
                                                  }

                                                  v16 = v14 == 0;
                                                  if (!v14)
                                                  {
                                                    v12 = 29;
                                                    goto LABEL_356;
                                                  }
                                                }
                                              }

                                              else
                                              {
                                                if (v6 == 6 && v2 == 22 && !(v5 | v3 | v4))
                                                {
                                                  return 0;
                                                }

                                                v16 = v14 == 0;
                                                if (!v14)
                                                {
                                                  v12 = 28;
                                                  goto LABEL_356;
                                                }
                                              }
                                            }

                                            else
                                            {
                                              if (v6 == 6 && v2 == 21 && !(v5 | v3 | v4))
                                              {
                                                return 0;
                                              }

                                              v16 = v14 == 0;
                                              if (!v14)
                                              {
                                                v12 = 27;
                                                goto LABEL_356;
                                              }
                                            }
                                          }

                                          else
                                          {
                                            if (v6 == 6 && v2 == 20 && !(v5 | v3 | v4))
                                            {
                                              return 0;
                                            }

                                            v16 = v14 == 0;
                                            if (!v14)
                                            {
                                              v12 = 26;
                                              goto LABEL_356;
                                            }
                                          }
                                        }

                                        else
                                        {
                                          if (v6 == 6 && v2 == 19 && !(v5 | v3 | v4))
                                          {
                                            return 0;
                                          }

                                          v16 = v14 == 0;
                                          if (!v14)
                                          {
                                            v12 = 25;
                                            goto LABEL_356;
                                          }
                                        }
                                      }

                                      else
                                      {
                                        if (v6 == 6 && v2 == 18 && !(v5 | v3 | v4))
                                        {
                                          return 0;
                                        }

                                        v16 = v14 == 0;
                                        if (!v14)
                                        {
                                          v12 = 24;
                                          goto LABEL_356;
                                        }
                                      }
                                    }

                                    else
                                    {
                                      if (v6 == 6 && v2 == 17 && !(v5 | v3 | v4))
                                      {
                                        return 0;
                                      }

                                      v16 = v14 == 0;
                                      if (!v14)
                                      {
                                        v12 = 23;
                                        goto LABEL_356;
                                      }
                                    }
                                  }

                                  else
                                  {
                                    if (v6 == 6 && v2 == 16 && !(v5 | v3 | v4))
                                    {
                                      return 0;
                                    }

                                    v16 = v14 == 0;
                                    if (!v14)
                                    {
                                      v12 = 22;
                                      goto LABEL_356;
                                    }
                                  }
                                }

                                else
                                {
                                  if (v6 == 6 && v2 == 15 && !(v5 | v3 | v4))
                                  {
                                    return 0;
                                  }

                                  v16 = v14 == 0;
                                  if (!v14)
                                  {
                                    v12 = 21;
                                    goto LABEL_356;
                                  }
                                }
                              }

                              else
                              {
                                if (v6 == 6 && v2 == 14 && !(v5 | v3 | v4))
                                {
                                  return 0;
                                }

                                v16 = v14 == 0;
                                if (!v14)
                                {
                                  v12 = 20;
                                  goto LABEL_356;
                                }
                              }
                            }

                            else
                            {
                              if (v6 == 6 && v2 == 13 && !(v5 | v3 | v4))
                              {
                                return 0;
                              }

                              v16 = v14 == 0;
                              if (!v14)
                              {
                                v12 = 19;
                                goto LABEL_356;
                              }
                            }
                          }

                          else
                          {
                            if (v6 == 6 && v2 == 12 && !(v5 | v3 | v4))
                            {
                              return 0;
                            }

                            v16 = v14 == 0;
                            if (!v14)
                            {
                              v12 = 18;
                              goto LABEL_356;
                            }
                          }
                        }

                        else
                        {
                          if (v6 == 6 && v2 == 11 && !(v5 | v3 | v4))
                          {
                            return 0;
                          }

                          v16 = v14 == 0;
                          if (!v14)
                          {
                            v12 = 17;
                            goto LABEL_356;
                          }
                        }
                      }

                      else
                      {
                        if (v6 == 6 && v2 == 10 && !(v5 | v3 | v4))
                        {
                          return 0;
                        }

                        v16 = v14 == 0;
                        if (!v14)
                        {
                          v12 = 16;
                          goto LABEL_356;
                        }
                      }
                    }

                    else
                    {
                      if (v6 == 6 && v2 == 9 && !(v5 | v3 | v4))
                      {
                        return 0;
                      }

                      v16 = v14 == 0;
                      if (!v14)
                      {
                        v12 = 15;
                        goto LABEL_356;
                      }
                    }
                  }

                  else
                  {
                    if (v6 == 6 && v2 == 8 && !(v5 | v3 | v4))
                    {
                      return 0;
                    }

                    v16 = v14 == 0;
                    if (!v14)
                    {
                      v12 = 14;
                      goto LABEL_356;
                    }
                  }
                }

                else
                {
                  if (v6 == 6 && v2 == 7 && !(v5 | v3 | v4))
                  {
                    return 0;
                  }

                  v16 = v14 == 0;
                  if (!v14)
                  {
                    v12 = 13;
                    goto LABEL_356;
                  }
                }
              }

              else
              {
                if (v6 == 6 && v2 == 6 && !(v5 | v3 | v4))
                {
                  return 0;
                }

                v16 = v14 == 0;
                if (!v14)
                {
                  v12 = 12;
                  goto LABEL_356;
                }
              }
            }

            else
            {
              if (v6 == 6 && v2 == 5 && !(v5 | v3 | v4))
              {
                return 0;
              }

              v16 = v14 == 0;
              if (!v14)
              {
                v12 = 11;
                goto LABEL_356;
              }
            }
          }

          else
          {
            if (v6 == 6 && v2 == 4 && !(v5 | v3 | v4))
            {
              return 0;
            }

            v16 = v14 == 0;
            if (!v14)
            {
              v12 = 10;
              goto LABEL_356;
            }
          }
        }

        else
        {
          if (v6 == 6 && v2 == 3 && !(v5 | v3 | v4))
          {
            return 0;
          }

          v16 = v14 == 0;
          if (!v14)
          {
            v12 = 9;
            goto LABEL_356;
          }
        }
      }

      else
      {
        if (v6 == 6 && v2 == 2 && !(v5 | v3 | v4))
        {
          return 0;
        }

        v16 = v14 == 0;
        if (!v14)
        {
          v12 = 8;
          goto LABEL_356;
        }
      }
    }

    else
    {
      if (v6 == 6 && v2 == 1 && !(v5 | v3 | v4))
      {
        return 0;
      }

      v16 = v14 == 0;
      if (!v14)
      {
        v12 = 1;
        goto LABEL_356;
      }
    }

LABEL_354:
    v12 = 50;
    if (v7 != 44 || !v16)
    {
      v12 = 51;
    }

    goto LABEL_356;
  }

  if (!*(a1 + 32))
  {
    if (*(a2 + 32))
    {
      v12 = 2;
      goto LABEL_356;
    }

    v17 = v7 == v2 && v8 == v3;
    if (!v17 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_25;
    }

    if (v10 != v5)
    {
      goto LABEL_45;
    }

    goto LABEL_44;
  }

  if (v11 == 1)
  {
    if (v6 != 1)
    {
      v12 = 3;
      goto LABEL_356;
    }

LABEL_22:
    if ((v7 != v2 || v8 != v3) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_25;
    }

    return 0;
  }

  if (v6 != 2)
  {
    v12 = 4;
    goto LABEL_356;
  }

  if (v7 == v2 && v8 == v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    if (v10 != v5)
    {
LABEL_45:
      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        return 0;
      }

      goto LABEL_25;
    }

LABEL_44:
    if (v9 == v4)
    {
      return 0;
    }

    goto LABEL_45;
  }

LABEL_25:

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t sub_10005717C()
{
  v1 = type metadata accessor for PrimarySettingsListItemViewType(0);
  __chkstk_darwin(v1);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for PrimarySettingsListItemModel(0);
  sub_10003B29C(v0 + *(v4 + 20), v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload > 7)
    {
      if (EnumCaseMultiPayload != 8)
      {
        if (EnumCaseMultiPayload != 9)
        {
          v6 = *(v3 + 3);
          sub_100054F18(*v3, *(v3 + 1), v3[16]);
          return v6;
        }

        v6 = *(v3 + 3);
        sub_100054F18(*v3, *(v3 + 1), v3[16]);
        goto LABEL_13;
      }
    }

    else if (EnumCaseMultiPayload == 5 || EnumCaseMultiPayload == 6)
    {
      v6 = *(v3 + 3);
      sub_10002A748(*v3, *(v3 + 1), v3[16]);
      return v6;
    }

    v6 = *(v3 + 3);
    sub_10002A748(*v3, *(v3 + 1), v3[16]);
LABEL_13:

    return v6;
  }

  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v7 = type metadata accessor for PrimarySettingsListFamilyLinkModel;
    }

    else
    {
      v7 = type metadata accessor for PrimarySettingsListItemViewType;
    }

    sub_100057510(v3, v7);
    return 0;
  }

  else if (EnumCaseMultiPayload == 2)
  {
    v6 = *(v3 + 3);
    sub_10002A748(*v3, *(v3 + 1), v3[16]);
  }

  else
  {
    return *v3;
  }

  return v6;
}

unint64_t sub_100057384()
{
  v0._countAndFlagsBits = sub_100026A58();
  String.append(_:)(v0);

  return 0xD00000000000001DLL;
}

unint64_t sub_1000573F8()
{
  result = qword_10015B398;
  if (!qword_10015B398)
  {
    type metadata accessor for PrimarySettingsListItemModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015B398);
  }

  return result;
}

BOOL sub_100057450()
{
  sub_10005717C();
  v1 = v0;
  sub_10005717C();
  if (v1)
  {
    if (v2)
    {
      sub_10002EAE0();
      v3 = StringProtocol.localizedStandardCompare<A>(_:)();

      return v3 == -1;
    }

    else
    {

      return 1;
    }
  }

  else
  {
    if (v2)
    {
    }

    return 0;
  }
}

uint64_t sub_100057510(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100057574(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PrimarySettingsListFamilyLinkModel(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100057638(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_100057930();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v2 + 16);
}

uint64_t sub_1000576A8(uint64_t result, uint64_t a2)
{
  if (*(v2 + 16) == (result & 1))
  {
    *(v2 + 16) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100057930();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_100057790()
{

  v1 = OBJC_IVAR____TtC11SettingsApp30PrimarySettingsListToggleState___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for PrimarySettingsListToggleState(uint64_t a1)
{
  result = qword_10015B578;
  if (!qword_10015B578)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100057888(uint64_t a1)
{
  result = type metadata accessor for ObservationRegistrar();
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

unint64_t sub_100057930()
{
  result = qword_10015B610;
  if (!qword_10015B610)
  {
    type metadata accessor for PrimarySettingsListToggleState(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015B610);
  }

  return result;
}

id sub_100057998@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v34 = a1;
  v3 = sub_10004DED0(&unk_10015EDB0, &unk_100111C70);
  __chkstk_darwin(v3 - 8);
  v5 = &v32 - v4;
  v6 = type metadata accessor for PrimarySettingsListItemModel(0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v2 + 16);
  v11 = *(v2 + 24);
  v12 = *(v2 + 32);
  v13 = *(v2 + 40);
  v14 = *(v2 + 48);
  type metadata accessor for StaticPrimarySettingsListItemProvider();
  inited = swift_initStackObject();
  *(inited + 16) = v10;
  *(inited + 24) = v11;
  *(inited + 32) = v12;
  *(inited + 40) = v13;
  *(inited + 48) = v14;
  v16 = v11;
  v17 = v6;
  v18 = v12;
  v19 = v7;
  v20 = v34;
  sub_100029920(v10, v16, v18, v13, v14);
  sub_10005AFAC(v20, v5);
  swift_setDeallocating();
  sub_10002C5C0(*(inited + 16), *(inited + 24), *(inited + 32), *(inited + 40), *(inited + 48));
  if ((*(v19 + 48))(v5, 1, v6) == 1)
  {
    sub_10002C8C0(v5);
    v21 = 1;
    v22 = v33;
    return (*(v19 + 56))(v22, v21, 1, v17);
  }

  sub_10002C634(v5, v9);
  v23 = *(v6 + 24);
  if (*(v20 + 64) >= 0x40u)
  {
    v24 = *&v9[v23] | 4;
  }

  else
  {
    v24 = *&v9[v23];
  }

  v25 = v9;
  if (v24)
  {
    goto LABEL_16;
  }

  result = [objc_opt_self() defaultStore];
  if (result)
  {
    v27 = result;
    v28 = [result aa_primaryAppleAccount];

    if (v28)
    {
      if (([v28 aa_isSuspended] & 1) != 0 || !objc_msgSend(v28, "aa_isPrimaryEmailVerified"))
      {
      }

      else
      {
        v29 = [v28 aa_suspensionInfo];
        if (!v29)
        {

          goto LABEL_16;
        }

        v30 = v29;
        v31 = [v29 isiCloudSuspended];

        if ((v31 & 1) == 0)
        {
          goto LABEL_16;
        }
      }

      v24 |= 1uLL;
    }

LABEL_16:
    *(v25 + v23) = v24;
    v22 = v33;
    sub_10002C634(v25, v33);
    v21 = 0;
    return (*(v19 + 56))(v22, v21, 1, v17);
  }

  __break(1u);
  return result;
}

uint64_t sub_100057C78()
{
  sub_10002C5C0(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));

  return swift_deallocClassInstance();
}

double sub_100057CEC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned __int8 a3@<W2>, uint64_t a4@<X8>)
{
  if ((a3 >> 6) > 1u)
  {
    LocalizedStringKey.init(stringLiteral:)();
    v8 = Text.init(_:tableName:bundle:comment:)();
    v10 = v9;
    v12 = v11 & 1;
    sub_100009670(v8, v9, v11 & 1);

    _ConditionalContent<>.init(storage:)();
  }

  else
  {
    if (a3 >> 6)
    {
      LocalizedStringKey.init(stringLiteral:)();
      v5 = Text.init(_:tableName:bundle:comment:)();
    }

    else
    {
      *&v14 = a1;
      *(&v14 + 1) = a2;
      sub_10002EAE0();

      v5 = Text.init<A>(_:)();
    }

    v8 = v5;
    v10 = v6;
    v12 = v7 & 1;
    sub_100009670(v5, v6, v7 & 1);

    _ConditionalContent<>.init(storage:)();
  }

  sub_10004DED0(&qword_10015B6F0, &qword_100113BD0);
  sub_100040F70();
  _ConditionalContent<>.init(storage:)();
  sub_100009680(v8, v10, v12);

  result = *&v14;
  *a4 = v14;
  *(a4 + 16) = v15;
  *(a4 + 32) = v16;
  *(a4 + 33) = v17;
  return result;
}

uint64_t sub_100058024@<X0>(uint64_t a1@<X0>, unsigned __int8 a3@<W2>, uint64_t a4@<X8>)
{
  v7 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  __chkstk_darwin(v7 - 8);
  if ((a3 >> 6) > 1u)
  {
    if (a3 >> 6 == 2)
    {
      LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v8._countAndFlagsBits = 543516481;
      v8._object = 0xE400000000000000;
      LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v8);
      sub_100058918();
      v9 = BinaryInteger.formatted()();
      LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v9);

      v10._countAndFlagsBits = 544175136;
      v10._object = 0xE400000000000000;
      LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v10);
      *&v28 = a1;
      v11 = BinaryInteger.formatted()();
      LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v11);

      v12._countAndFlagsBits = 0;
      v12._object = 0xE000000000000000;
      LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v12);
      LocalizedStringKey.init(stringInterpolation:)();
    }

    else
    {
      LocalizedStringKey.init(stringLiteral:)();
    }

    v18 = Text.init(_:tableName:bundle:comment:)();
    v20 = v13;
    v22 = v14 & 1;
    sub_100009670(v18, v13, v14 & 1);

    _ConditionalContent<>.init(storage:)();
    sub_10004DED0(&qword_10015B6E8, &unk_100110F60);
    sub_10004DED0(&qword_10015B6F0, &qword_100113BD0);
    sub_100040FEC();
    sub_100040F70();
    goto LABEL_9;
  }

  if (a3 >> 6)
  {
    LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v15._countAndFlagsBits = 543516481;
    v15._object = 0xE400000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v15);
    *&v28 = a1;
    sub_100058918();
    v16 = BinaryInteger.formatted()();
    LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v16);

    v17._countAndFlagsBits = 0x6E756F7920726F20;
    v17._object = 0xEB00000000726567;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v17);
    LocalizedStringKey.init(stringInterpolation:)();
    v18 = Text.init(_:tableName:bundle:comment:)();
    v20 = v19;
    v22 = v21 & 1;
    sub_100009670(v18, v19, v21 & 1);

    sub_10004DED0(&qword_10015B6F0, &qword_100113BD0);
    sub_100040F70();
    _ConditionalContent<>.init(storage:)();
    sub_10004DED0(&qword_10015B6E8, &unk_100110F60);
    sub_100040FEC();
LABEL_9:
    _ConditionalContent<>.init(storage:)();
    sub_100009680(v18, v20, v22);

    v24 = v28;
    v25 = v29;
    v26 = v30;
    v27 = v31;
    goto LABEL_10;
  }

  LocalizedStringKey.init(stringLiteral:)();
  Text.init(_:tableName:bundle:comment:)();
  _ConditionalContent<>.init(storage:)();
  sub_10005887C(v28, *(&v28 + 1), v29, *(&v29 + 1));
  sub_10005887C(v28, *(&v28 + 1), v29, *(&v29 + 1));
  sub_10004DED0(&qword_10015B6F0, &qword_100113BD0);
  sub_100040F70();
  _ConditionalContent<>.init(storage:)();
  sub_100041078(v28, *(&v28 + 1), v29, *(&v29 + 1), v30, SHIBYTE(v30));
  sub_10004DED0(&qword_10015B6E8, &unk_100110F60);
  sub_100040FEC();
  _ConditionalContent<>.init(storage:)();
  sub_1000588D4(v28, *(&v28 + 1), v29, *(&v29 + 1));
  sub_1000410CC(v28, *(&v28 + 1), v29, *(&v29 + 1), v30, SHIBYTE(v30));
  result = sub_1000588D4(v28, *(&v28 + 1), v29, *(&v29 + 1));
  v24 = v28;
  v25 = v29;
  v26 = v30;
  v27 = v31;
LABEL_10:
  *a4 = v24;
  *(a4 + 16) = v25;
  *(a4 + 32) = v26;
  *(a4 + 34) = v27;
  return result;
}

uint64_t sub_10005879C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10004DED0(&qword_10015B6C0, &qword_100110F10);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10005880C(uint64_t a1)
{
  v2 = sub_10004DED0(&qword_10015B6C0, &qword_100110F10);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10005887C(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  sub_100009670(a1, a2, a3 & 1);
}

uint64_t sub_1000588B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t (*a7)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, void), uint64_t (*a8)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (a6)
  {
    return a8(a1, a2, a3, a4, a5 & 1);
  }

  else
  {
    return a7(a1, a2, a3, a4, a5, (a5 >> 8) & 1);
  }
}

uint64_t sub_1000588D4(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  sub_100009680(a1, a2, a3 & 1);
}

unint64_t sub_100058918()
{
  result = qword_10015B708;
  if (!qword_10015B708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015B708);
  }

  return result;
}

uint64_t sub_100058988@<X0>(uint64_t a1@<X8>)
{
  sub_10002EAE0();

  v2 = Text.init<A>(_:)();
  v4 = v3;
  v6 = v5 & 1;
  View.badge(_:)();
  sub_100009680(v2, v4, v6);

  v7 = (a1 + *(sub_10004DED0(&qword_10015B720, &qword_100111018) + 36));
  sub_10004DED0(&qword_10015B728, &qword_100111020);
  static BadgeProminence.increased.getter();
  result = swift_getKeyPath();
  *v7 = result;
  return result;
}

unint64_t sub_100058A98()
{
  result = qword_10015B730;
  if (!qword_10015B730)
  {
    sub_100052374(&qword_10015B720, &qword_100111018);
    swift_getOpaqueTypeConformance2();
    sub_100058B54();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015B730);
  }

  return result;
}

unint64_t sub_100058B54()
{
  result = qword_10015B738;
  if (!qword_10015B738)
  {
    sub_100052374(&qword_10015B728, &qword_100111020);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015B738);
  }

  return result;
}

uint64_t sub_100058BD4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10004DED0(&qword_10015B740, &qword_100111160);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v10[-v5];
  v7 = v1[1];
  v13[0] = *v1;
  v13[1] = v7;
  v13[2] = v1[2];
  v12 = v13;
  v11 = v13;
  sub_100042EB8();
  Label.init(title:icon:)();
  sub_1000525A0(&qword_10015B750, &qword_10015B740, &qword_100111160, &protocol conformance descriptor for Label<A, B>);
  View.badge(_:)();
  (*(v4 + 8))(v6, v3);
  v8 = (a1 + *(sub_10004DED0(&qword_10015B758, &unk_100111168) + 36));
  sub_10004DED0(&qword_10015B728, &qword_100111020);
  static BadgeProminence.increased.getter();
  result = swift_getKeyPath();
  *v8 = result;
  return result;
}

uint64_t sub_100058DDC(uint64_t a1)
{
  v2 = type metadata accessor for BadgeProminence();
  __chkstk_darwin(v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return EnvironmentValues.badgeProminence.setter();
}

unint64_t sub_100058EA4()
{
  result = qword_10015B760;
  if (!qword_10015B760)
  {
    sub_100052374(&qword_10015B758, &unk_100111168);
    sub_100052374(&qword_10015B740, &qword_100111160);
    sub_1000525A0(&qword_10015B750, &qword_10015B740, &qword_100111160, &protocol conformance descriptor for Label<A, B>);
    swift_getOpaqueTypeConformance2();
    sub_1000525A0(&qword_10015B738, &qword_10015B728, &qword_100111020, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015B760);
  }

  return result;
}

uint64_t sub_100059010@<X0>(uint64_t *a1@<X8>)
{
  static FamilySettingsFactory.sharedProvider.getter();
  sub_100018544(v4, v4[3]);
  type metadata accessor for PrimarySettingsListFamilyLinkModel(0);
  v2 = dispatch thunk of FamilySettingsViewsProtocol.familyRow(for:info:)();
  result = sub_10000665C(v4);
  *a1 = v2;
  return result;
}

uint64_t sub_1000590B8@<X0>(uint64_t a2@<X8>)
{
  sub_10002EAE0();

  v3 = Text.init<A>(_:)();
  v5 = v4;
  v7 = v6;
  static Color.blue.getter();
  v8 = Text.foregroundStyle<A>(_:)();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  sub_100009680(v3, v5, v7 & 1);

  *a2 = v8;
  *(a2 + 8) = v10;
  *(a2 + 16) = v12 & 1;
  *(a2 + 24) = v14;
  return result;
}

double sub_1000591B0@<D0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3 == 255)
  {
    v4 = 0;
  }

  else
  {
    v4 = *a1;
  }

  if (v3 == 255)
  {
    v5 = 0;
  }

  else
  {
    v5 = a1[1];
  }

  sub_10005950C(*a1, a1[1], v3);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 16) = v3;
  *(a2 + 24) = v7;
  *(a2 + 32) = v8;
  *(a2 + 40) = v9;
  *(a2 + 48) = v10;
  result = *&v11;
  *(a2 + 56) = v11;
  return result;
}

uint64_t sub_10005925C()
{
  sub_10004DED0(&qword_10015B7F8, &qword_100111348);
  sub_10005931C();
  return Label.init(title:icon:)();
}

unint64_t sub_10005931C()
{
  result = qword_10015B800;
  if (!qword_10015B800)
  {
    sub_100052374(&qword_10015B7F8, &qword_100111348);
    sub_1000593A8();
    sub_1000594B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015B800);
  }

  return result;
}

unint64_t sub_1000593A8()
{
  result = qword_10015B808;
  if (!qword_10015B808)
  {
    sub_100052374(&qword_10015B810, &qword_100111350);
    sub_100059434();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015B808);
  }

  return result;
}

unint64_t sub_100059434()
{
  result = qword_10015B818;
  if (!qword_10015B818)
  {
    sub_100052374(&qword_10015B820, &qword_100111358);
    sub_100042EB8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015B818);
  }

  return result;
}

unint64_t sub_1000594B8()
{
  result = qword_10015B828;
  if (!qword_10015B828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015B828);
  }

  return result;
}

id sub_10005950C(id result, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_100039F14(result, a2, a3);
  }

  return result;
}

unint64_t sub_100059520()
{
  result = qword_10015B830;
  if (!qword_10015B830)
  {
    sub_100052374(&qword_10015B838, &unk_100111360);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015B830);
  }

  return result;
}

uint64_t sub_1000595C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10004DED0(&qword_10015B918, &qword_100111400);
  v5 = __chkstk_darwin(v4 - 8);
  v47 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v46 = (&v42 - v7);
  v8 = *(a1 + 16);
  if (v8 == 255)
  {
    sub_100059C60(&v71);
  }

  else
  {
    v10 = *a1;
    v9 = *(a1 + 8);
    sub_10005950C(*a1, v9, *(a1 + 16));
    sub_100039F14(v10, v9, v8);
    LODWORD(v45) = static Edge.Set.top.getter();
    type metadata accessor for PrimarySettingsListFollowUpHeader(0);
    sub_10004DED0(&qword_10015B848, &qword_100111378);
    ScaledMetric.wrappedValue.getter();
    EdgeInsets.init(_all:)();
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;
    LOBYTE(v62) = 0;
    v44 = static Edge.Set.leading.getter();
    EdgeInsets.init(_all:)();
    v20 = v19;
    v22 = v21;
    v24 = v23;
    v26 = v25;
    LOBYTE(v71) = 0;
    v43 = static Edge.Set.all.getter();
    sub_10004DED0(&qword_10015B840, &qword_100111370);
    ScaledMetric.wrappedValue.getter();
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    sub_100054F18(v10, v9, v8);
    *&v48[6] = v69[4];
    *&v48[22] = v69[5];
    *&v48[38] = v70;
    *&v62 = v10;
    *(&v62 + 1) = v9;
    LOBYTE(v63) = v8;
    BYTE8(v63) = v45;
    *&v64 = v12;
    *(&v64 + 1) = v14;
    *&v65 = v16;
    *(&v65 + 1) = v18;
    LOBYTE(v66) = 0;
    BYTE8(v66) = v44;
    *&v67 = v20;
    *(&v67 + 1) = v22;
    *&v68 = v24;
    *(&v68 + 1) = v26;
    LOBYTE(v69[0]) = 0;
    BYTE1(v69[0]) = v43;
    *(v69 + 2) = *v48;
    *(&v69[1] + 2) = *&v48[16];
    *(&v69[2] + 2) = *&v48[32];
    *&v69[3] = *(&v70 + 1);
    nullsub_1();
    v79 = v69[1];
    v80 = v69[2];
    v81 = *&v69[3];
    v75 = v66;
    v76 = v67;
    v77 = v68;
    v78 = v69[0];
    v71 = v62;
    v72 = v63;
    v73 = v64;
    v74 = v65;
  }

  v27 = static HorizontalAlignment.leading.getter();
  v28 = v46;
  *v46 = v27;
  *(v28 + 8) = 0;
  *(v28 + 16) = 1;
  v29 = sub_10004DED0(&qword_10015B920, &qword_100111408);
  v45 = &v42;
  __chkstk_darwin(v29);
  *(&v42 - 2) = a1;
  sub_10004DED0(&qword_10015B0B8, &qword_100111410);
  sub_1000525A0(&qword_10015B0C0, &qword_10015B0B8, &qword_100111410, &protocol conformance descriptor for TupleView<A>);
  LabelGroup.init(content:)();
  v56 = v78;
  v57 = v79;
  v58 = v80;
  v59 = v81;
  v54 = v76;
  v55 = v77;
  v49 = v71;
  v50 = v72;
  v52 = v74;
  v53 = v75;
  v51 = v73;
  v30 = v47;
  sub_100059CA0(v28, v47, &qword_10015B918, &qword_100111400);
  v31 = v56;
  v60[8] = v57;
  v60[9] = v58;
  v60[4] = v53;
  v60[5] = v54;
  v32 = v54;
  v33 = v55;
  v60[6] = v55;
  v60[7] = v56;
  v34 = v49;
  v35 = v50;
  v60[0] = v49;
  v60[1] = v50;
  v36 = v53;
  v37 = v52;
  v38 = v51;
  v60[2] = v51;
  v60[3] = v52;
  v39 = v58;
  *(a2 + 128) = v57;
  *(a2 + 144) = v39;
  *(a2 + 64) = v36;
  *(a2 + 80) = v32;
  *(a2 + 96) = v33;
  *(a2 + 112) = v31;
  *a2 = v34;
  *(a2 + 16) = v35;
  v61 = v59;
  *(a2 + 160) = v59;
  *(a2 + 32) = v38;
  *(a2 + 48) = v37;
  v40 = sub_10004DED0(&qword_10015B928, &qword_100111418);
  sub_100059CA0(v30, a2 + *(v40 + 48), &qword_10015B918, &qword_100111400);
  sub_100059CA0(v60, &v62, &qword_10015B930, &qword_100111420);
  sub_1000068B0(v28, &qword_10015B918, &qword_100111400);
  sub_1000068B0(v30, &qword_10015B918, &qword_100111400);
  v69[1] = v57;
  v69[2] = v58;
  v66 = v53;
  v67 = v54;
  *&v69[3] = v59;
  v68 = v55;
  v69[0] = v56;
  v62 = v49;
  v63 = v50;
  v64 = v51;
  v65 = v52;
  return sub_1000068B0(&v62, &qword_10015B930, &qword_100111420);
}

uint64_t sub_100059AD4@<X0>(uint64_t a2@<X8>)
{
  sub_10002EAE0();

  v3 = Text.init<A>(_:)();
  v5 = v4;
  v7 = v6;
  v9 = v8;

  v10 = Text.init<A>(_:)();
  v12 = v11;
  v13 = v7 & 1;
  v18 = v7 & 1;
  v15 = v14 & 1;
  *a2 = v3;
  *(a2 + 8) = v5;
  *(a2 + 16) = v13;
  *(a2 + 24) = v9;
  *(a2 + 32) = v10;
  *(a2 + 40) = v11;
  *(a2 + 48) = v14 & 1;
  *(a2 + 56) = v16;
  sub_100009670(v3, v5, v13);

  sub_100009670(v10, v12, v15);

  sub_100009680(v10, v12, v15);

  sub_100009680(v3, v5, v18);
}

uint64_t sub_100059C0C@<X0>(uint64_t a1@<X8>)
{
  *a1 = static VerticalAlignment.top.getter();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v3 = sub_10004DED0(&qword_10015B910, &qword_1001113F8);
  return sub_1000595C8(v1, a1 + *(v3 + 44));
}

double sub_100059C60(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 255;
  result = 0.0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  return result;
}

uint64_t sub_100059CA0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_10004DED0(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_100059D24@<X0>(uint64_t a1@<X8>)
{
  sub_10002EAE0();

  result = Text.init<A>(_:)();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_100059DB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  *a2 = *a1;
  *(a2 + 8) = v2;
  v6 = *(a1 + 16);
  *(a2 + 16) = v6;
  *(a2 + 24) = v4;
  *(a2 + 32) = v5;
  sub_10005950C(v3, v2, v6);
}

unint64_t sub_100059E10()
{
  result = qword_10015BA88;
  if (!qword_10015BA88)
  {
    sub_100052374(&qword_10015BA80, &qword_1001115E0);
    sub_100038EA0();
    sub_10003900C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015BA88);
  }

  return result;
}

uint64_t sub_100059E9C()
{
  sub_10002A748(*(v0 + 16), *(v0 + 24), *(v0 + 32));

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_100059EE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  *a2 = *a1;
  *(a2 + 8) = v2;
  v7 = *(a1 + 16);
  *(a2 + 16) = v7;
  *(a2 + 24) = v4;
  *(a2 + 32) = v5;
  *(a2 + 40) = v6;
  sub_100039F14(v3, v2, v7);
}

uint64_t sub_100059F48(uint64_t a1)
{
  sub_10002A748(*(v1 + 16), *(v1 + 24), *(v1 + 32));

  return _swift_deallocObject(v1, a1, 7);
}

uint64_t sub_100059F98@<X0>(void *a1@<X8>)
{
  v2 = v1[3];
  v3 = v1[4];
  *a1 = v1[2];
  a1[1] = v2;
  a1[2] = v3;
}

uint64_t sub_100059FAC@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  a1[1] = v2;
}

uint64_t sub_10005A04C@<X0>(uint64_t a2@<X8>)
{
  sub_10002EAE0();

  v3 = Text.init<A>(_:)();
  v21 = v4;
  v22 = v3;
  v20 = v5;
  v23 = v6;

  v7 = Text.init<A>(_:)();
  v9 = v8;
  v11 = v10;
  static Font.footnote.getter();
  v12 = Text.font(_:)();
  v14 = v13;
  v16 = v15;
  v18 = v17;

  sub_100009680(v7, v9, v11 & 1);

  *a2 = v22;
  *(a2 + 8) = v21;
  *(a2 + 16) = v20 & 1;
  *(a2 + 24) = v23;
  *(a2 + 32) = v12;
  *(a2 + 40) = v14;
  *(a2 + 48) = v16 & 1;
  *(a2 + 56) = v18;
  sub_100009670(v22, v21, v20 & 1);

  sub_100009670(v12, v14, v16 & 1);

  sub_100009680(v12, v14, v16 & 1);

  sub_100009680(v22, v21, v20 & 1);
}

uint64_t sub_10005A1E0()
{
  sub_10004DED0(&qword_10015B0B8, &qword_100111410);
  sub_1000525A0(&qword_10015B0C0, &qword_10015B0B8, &qword_100111410, &protocol conformance descriptor for TupleView<A>);
  sub_100042EB8();
  return Label.init(title:icon:)();
}

uint64_t sub_10005A2D8@<X0>(uint64_t a1@<X8>)
{
  v22 = a1;
  v2 = sub_10004DED0(&qword_10015BBA8, &qword_100111990);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = v19 - v7;
  v9 = sub_10004DED0(&qword_10015BBB0, &qword_100111998);
  v10 = *(v9 - 8);
  v20 = v9;
  v21 = v10;
  __chkstk_darwin(v9);
  v12 = v19 - v11;
  swift_allocBox();
  v14 = v13;
  v15 = *(v1 + 40);
  type metadata accessor for PrimarySettingsListToggleState(0);
  v19[2] = sub_100057930();

  Bindable<A>.init(wrappedValue:)();
  (*(v3 + 16))(v6, v14, v2);
  Bindable.projectedValue.getter();
  v16 = *(v3 + 8);
  v16(v6, v2);
  swift_getKeyPath();
  Bindable<A>.subscript.getter();

  v16(v8, v2);
  v23 = v19[1];
  sub_10004DED0(&qword_10015B740, &qword_100111160);
  sub_1000525A0(&qword_10015B750, &qword_10015B740, &qword_100111160, &protocol conformance descriptor for Label<A, B>);
  Toggle.init(isOn:label:)();
  swift_getKeyPath();
  v24 = v15;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  LOBYTE(v24) = *(v15 + 16);
  sub_1000525A0(&qword_10015BBB8, &qword_10015BBB0, &qword_100111998, &protocol conformance descriptor for Toggle<A>);

  v17 = v20;
  View.onChange<A>(of:initial:_:)();

  (*(v21 + 8))(v12, v17);
}

uint64_t sub_10005A688(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v4 = sub_10004DED0(&qword_10015BBA8, &qword_100111990);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v12 - v6;
  v8 = *a2;
  v9 = swift_projectBox();
  (*(v5 + 16))(v7, v9, v4);
  Bindable.wrappedValue.getter();
  (*(v5 + 8))(v7, v4);
  v10 = *(v12[1] + 24);

  v10(v8);
}

id sub_10005A7F4()
{
  v1 = OBJC_IVAR____TtC11SettingsApp48DefaultsObservingPrimarySettingsListItemProvider_defaultsObserver;
  swift_beginAccess();
  sub_10005AF3C(v0 + v1, &v4);
  if (v5)
  {
    sub_10001EFEC(&v4, &v6);
    sub_100018544(&v6, *(&v7 + 1));
    [v0 na_removeNotificationBlockObserver:_bridgeAnythingToObjectiveC<A>(_:)()];
    swift_unknownObjectRelease();
    sub_10000665C(&v6);
  }

  else
  {
    sub_10005AED4(&v4);
  }

  v6 = 0u;
  v7 = 0u;
  swift_beginAccess();
  sub_10005AE64(&v6, v0 + v1);
  swift_endAccess();
  v3.receiver = v0;
  v3.super_class = type metadata accessor for DefaultsObservingPrimarySettingsListItemProvider();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_10005A9A4()
{
  v1 = *&v0[OBJC_IVAR____TtC11SettingsApp48DefaultsObservingPrimarySettingsListItemProvider_userDefaults];
  v2 = String._bridgeToObjectiveC()();
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_10005AE5C;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10005AC08;
  aBlock[3] = &unk_10014E268;
  v4 = _Block_copy(aBlock);

  v5 = [v0 na_addNotificationBlockObserverForObject:v1 keyPath:v2 options:1 usingBlock:v4];

  _Block_release(v4);
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  v6 = OBJC_IVAR____TtC11SettingsApp48DefaultsObservingPrimarySettingsListItemProvider_defaultsObserver;
  swift_beginAccess();
  sub_10005AE64(aBlock, &v0[v6]);
  return swift_endAccess();
}

void sub_10005AB00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *(Strong + OBJC_IVAR____TtC11SettingsApp48DefaultsObservingPrimarySettingsListItemProvider_userDefaults);
    v6 = String._bridgeToObjectiveC()();
    v7 = [v5 BOOLForKey:v6];

    v8 = OBJC_IVAR____TtC11SettingsApp48DefaultsObservingPrimarySettingsListItemProvider_shouldShow;
    if (v7 != v4[OBJC_IVAR____TtC11SettingsApp48DefaultsObservingPrimarySettingsListItemProvider_shouldShow])
    {
      type metadata accessor for PrimarySettingsListModel(0);
      sub_1000A2E28("Defaults Changed", 16, 2);
    }

    v4[v8] = v7;
  }
}

uint64_t sub_10005AC08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v7[3] = swift_getObjectType();
  v7[0] = a2;
  v5 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  swift_unknownObjectRetain();
  v4(v7, v5);

  return sub_10000665C(v7);
}

void sub_10005AD20(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(*v2 + OBJC_IVAR____TtC11SettingsApp48DefaultsObservingPrimarySettingsListItemProvider_shouldShow) == 1)
  {
    v4 = *v2 + OBJC_IVAR____TtC11SettingsApp48DefaultsObservingPrimarySettingsListItemProvider_id;
    v5 = *v4;
    v6 = *(v4 + 8);
    v7 = *(v4 + 16);
    v8 = *(v4 + 24);
    v9 = *(v4 + 32);
    type metadata accessor for StaticPrimarySettingsListItemProvider();
    inited = swift_initStackObject();
    *(inited + 16) = v5;
    *(inited + 24) = v6;
    *(inited + 32) = v7;
    *(inited + 40) = v8;
    *(inited + 48) = v9;
    sub_100029920(v5, v6, v7, v8, v9);
    sub_10005AFAC(a1, a2);
    swift_setDeallocating();
    sub_10002C5C0(*(inited + 16), *(inited + 24), *(inited + 32), *(inited + 40), *(inited + 48));
  }

  else
  {
    v12 = type metadata accessor for PrimarySettingsListItemModel(0);
    v13 = *(*(v12 - 8) + 56);

    v13(a2, 1, 1, v12);
  }
}

uint64_t sub_10005AE64(uint64_t a1, uint64_t a2)
{
  v4 = sub_10004DED0(&qword_10015C8D0, &unk_100116750);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10005AED4(uint64_t a1)
{
  v2 = sub_10004DED0(&qword_10015C8D0, &unk_100116750);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10005AF3C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10004DED0(&qword_10015C8D0, &unk_100116750);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10005AFAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for PrimarySettingsListItemViewType(0);
  __chkstk_darwin(v5);
  v7 = &v39[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v2 + 32);
  v40 = *(v2 + 16);
  v41 = v8;
  v42 = *(v2 + 48);
  v9 = sub_100027320();
  v10 = sub_100062250(0, v9, a1);

  if ((v10 & 1) == 0)
  {
    v22 = sub_100027320();
    v23 = sub_100062250(1, v22, a1);

    v24 = v23 & 1;
    v25 = sub_100029F88();
    if (v27 >= 3u)
    {
      if (!(v25 | v26))
      {
        *v7 = sub_10002A770(v25, v26, v27);
        v35 = 8;
        goto LABEL_13;
      }
    }

    else
    {
      sub_10002A748(v25, v26, v27);
    }

    v28 = sub_100029F88();
    v30 = v29;
    v32 = v31;
    v33 = sub_10002A770(v28, v29, v31);
    *v7 = v28;
    *(v7 + 1) = v30;
    v7[16] = v32;
    *(v7 + 3) = v33;
    v35 = 32;
LABEL_13:
    *&v7[v35] = v34;
    swift_storeEnumTagMultiPayload();
    v36 = v41;
    *a2 = v40;
    *(a2 + 16) = v36;
    *(a2 + 32) = v42;
    v37 = type metadata accessor for PrimarySettingsListItemModel(0);
    sub_10002C3F0(v7, a2 + *(v37 + 20));
    *(a2 + *(v37 + 24)) = v24;
    (*(*(v37 - 8) + 56))(a2, 0, 1, v37);
    return sub_10002698C(&v40, v39);
  }

  if (qword_10015AAC8 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_10000659C(v11, qword_1001696D0);

  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v39[0] = v15;
    *v14 = 136446210;
    v16 = sub_100026A58();
    v18 = sub_100025CF0(v16, v17, v39);

    *(v14 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v12, v13, "Not including %{public}s due to being hidden.", v14, 0xCu);
    sub_10000665C(v15);
  }

  v19 = type metadata accessor for PrimarySettingsListItemModel(0);
  v20 = *(*(v19 - 8) + 56);

  return v20(a2, 1, 1, v19);
}

uint64_t sub_10005B338@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v47 = a1;
  v4 = sub_10004DED0(&qword_10015BDA8, &unk_100111BF0);
  __chkstk_darwin(v4 - 8);
  v6 = &v40 - v5;
  v7 = type metadata accessor for PrimarySettingsListSectionModel(0);
  v42 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10004DED0(&unk_10015FB70, &unk_100112010);
  v11 = __chkstk_darwin(v10 - 8);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v40 - v14;
  v16 = *(v2 + 40);
  v17 = *(v16 + 16);
  if (v17)
  {
    v40 = v2;
    v41 = a2;
    v51 = _swiftEmptyArrayStorage;
    v18 = type metadata accessor for LocalizedStringResource();
    v19 = *(v18 - 8);
    v20 = *(v19 + 56);
    v21 = v19 + 56;
    v44 = v18;
    v45 = v15;
    v20(v15, 1, 1);
    v43 = 0;
    v46 = 0;
    v22 = v16 + 32;
    v23 = (v42 + 48);
    v24 = (v21 - 8);
    do
    {
      sub_10000B270(v22, v48);
      v25 = v49;
      v26 = v50;
      sub_100018544(v48, v49);
      sub_10006041C(v47, v25, v26);
      sub_10000665C(v48);
      if ((*v23)(v6, 1, v7) == 1)
      {
        sub_1000068B0(v6, &qword_10015BDA8, &unk_100111BF0);
      }

      else
      {
        sub_10002C928(v6, v9);
        if (!v46)
        {
          v27 = *(v9 + 4);
          v43 = *(v9 + 3);
          v46 = v27;
        }

        v28 = v45;
        sub_10002C98C(v45, v13);
        if ((*v24)(v13, 1, v44) == 1)
        {
          sub_1000068B0(v28, &unk_10015FB70, &unk_100112010);
          sub_1000068B0(v13, &unk_10015FB70, &unk_100112010);
          sub_10002C98C(&v9[*(v7 + 24)], v28);
        }

        else
        {
          sub_1000068B0(v13, &unk_10015FB70, &unk_100112010);
        }

        sub_10002C9FC(v29);
        sub_10002CA38(v9);
      }

      v22 += 40;
      --v17;
    }

    while (v17);
    v30 = v40;
    v31 = v41;
    v32 = *(v40 + 16);
    v33 = *(v40 + 24);
    v34 = v51;
    *v41 = v32;
    v31[1] = v33;
    v35 = *(v30 + 32);
    *(v31 + 16) = v35;
    v36 = v45;
    v37 = v46;
    v31[3] = v43;
    v31[4] = v37;
    sub_10002CA94(v36, v31 + *(v7 + 24));
    *(v31 + *(v7 + 28)) = v34;
    (*(v42 + 56))(v31, 0, 1, v7);
    return sub_100025974(v32, v33, v35);
  }

  else
  {
    v39 = *(v42 + 56);

    return v39(a2, 1, 1, v7);
  }
}

uint64_t sub_10005B76C()
{
  sub_100025CD8(*(v0 + 16), *(v0 + 24), *(v0 + 32));

  return swift_deallocClassInstance();
}

uint64_t sub_10005B7B0()
{
  v1 = *(*v0 + 40);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v1 + 32;
    do
    {
      sub_10000B270(v3, v7);
      v4 = v8;
      v5 = v9;
      sub_100018544(v7, v8);
      sub_10005FEBC(v4, v5);
      result = sub_10000665C(v7);
      v3 += 40;
      --v2;
    }

    while (v2);
  }

  return result;
}

uint64_t sub_10005B858@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for OSSignpostError();
  v78 = *(v5 - 8);
  v79 = v5;
  __chkstk_darwin(v5);
  v77 = &v73 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for OSSignpostID();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v73 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v81 = &v73 - v13;
  __chkstk_darwin(v12);
  v82 = &v73 - v14;
  v15 = sub_10004DED0(&unk_10015EDB0, &unk_100111C70);
  __chkstk_darwin(v15 - 8);
  v17 = &v73 - v16;
  v18 = type metadata accessor for PrimarySettingsListItemModel(0);
  __chkstk_darwin(v18);
  v21 = &v73 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(v2 + 40);
  v23 = *(v22 + 16);
  if (v23)
  {
    v75 = v11;
    v76 = v7;
    v83 = v2;
    v84 = v8;
    v80 = a2;
    v24 = v22 + 32;
    v85 = v19;
    v25 = (v19 + 48);
    v26 = _swiftEmptyArrayStorage;
    do
    {
      sub_10000B270(v24, v86);
      v27 = v87;
      v28 = v88;
      sub_100018544(v86, v87);
      sub_10005ECBC(a1, v27, v28);
      sub_10000665C(v86);
      if ((*v25)(v17, 1, v18) == 1)
      {
        sub_10002C8C0(v17);
      }

      else
      {
        sub_10002C634(v17, v21);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v26 = sub_10002C850(0, v26[2] + 1, 1, v26);
        }

        v30 = v26[2];
        v29 = v26[3];
        v31 = v85;
        if (v30 >= v29 >> 1)
        {
          v32 = sub_10002C850((v29 > 1), v30 + 1, 1, v26);
          v31 = v85;
          v26 = v32;
        }

        v26[2] = v30 + 1;
        sub_10002C634(v21, v26 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 9) * v30);
      }

      v24 += 40;
      --v23;
    }

    while (v23);
    v33 = v83;
    if (*(v83 + 33))
    {
      v74 = sub_10002E11C();
      v35 = v34;
      if (qword_10015AAE0 != -1)
      {
        swift_once();
      }

      v36 = type metadata accessor for OSSignposter();
      v37 = sub_10000659C(v36, qword_100169718);

      v38 = v82;
      static OSSignpostID.exclusive.getter();
      v39 = OSSignposter.logHandle.getter();
      v40 = static os_signpost_type_t.begin.getter();

      v41 = OS_os_log.signpostsEnabled.getter();
      v42 = v76;
      if (v41)
      {
        v43 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        v73 = v37;
        v45 = v44;
        v86[0] = v44;
        *v43 = 136315138;
        *(v43 + 4) = sub_100025CF0(v74, v35, v86);
        v46 = OSSignpostID.rawValue.getter();
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v39, v40, v46, "StaticPrimarySettingsListSectionProvider.produceListSectionModel(with:) Sorting", "Section Provider: %s", v43, 0xCu);
        sub_10000665C(v45);
      }

      v47 = v84;
      (*(v84 + 16))(v81, v38, v42);
      type metadata accessor for OSSignpostIntervalState();
      swift_allocObject();
      OSSignpostIntervalState.init(id:isOpen:)();
      v48 = *(v47 + 8);
      v84 = v47 + 8;
      v48(v38, v42);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v26 = sub_1000BA19C(v26);
      }

      v49 = v26[2];
      v86[0] = v26 + ((*(v85 + 80) + 32) & ~*(v85 + 80));
      v86[1] = v49;
      sub_10002E75C(v86);

      v50 = OSSignposter.logHandle.getter();
      v51 = v75;
      OSSignpostIntervalState.signpostID.getter();
      v52 = static os_signpost_type_t.end.getter();

      if (OS_os_log.signpostsEnabled.getter())
      {

        v53 = v77;
        checkForErrorAndConsumeState(state:)();

        v55 = v78;
        v54 = v79;
        if ((*(v78 + 88))(v53, v79) == enum case for OSSignpostError.doubleEnd(_:))
        {
          v56 = 0;
          v57 = 0;
          v85 = "[Error] Interval already ended";
        }

        else
        {
          (*(v55 + 8))(v53, v54);
          v85 = "Section Provider: %s";
          v57 = 2;
          v56 = 1;
        }

        v61 = swift_slowAlloc();
        v62 = swift_slowAlloc();
        v86[0] = v62;
        *v61 = v57;
        *(v61 + 1) = v56;
        *(v61 + 2) = 2080;
        v63 = sub_100025CF0(v74, v35, v86);

        *(v61 + 4) = v63;
        v64 = v75;
        v65 = OSSignpostID.rawValue.getter();
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v50, v52, v65, "StaticPrimarySettingsListSectionProvider.produceListSectionModel(with:) Sorting", v85, v61, 0xCu);
        sub_10000665C(v62);

        v48(v64, v76);
        v33 = v83;
      }

      else
      {

        v48(v51, v42);
      }
    }

    v66 = *(v33 + 16);
    v67 = *(v33 + 24);
    v68 = *(v33 + 32);
    v69 = type metadata accessor for PrimarySettingsListSectionModel(0);
    v70 = *(v69 + 24);
    v71 = type metadata accessor for LocalizedStringResource();
    v72 = v80;
    (*(*(v71 - 8) + 56))(v80 + v70, 1, 1, v71);
    *v72 = v66;
    *(v72 + 8) = v67;
    *(v72 + 16) = v68;
    *(v72 + 24) = 0;
    *(v72 + 32) = 0;
    *(v72 + *(v69 + 28)) = v26;
    (*(*(v69 - 8) + 56))(v72, 0, 1, v69);
    return sub_100025974(v66, v67, v68);
  }

  else
  {
    v58 = type metadata accessor for PrimarySettingsListSectionModel(0);
    v59 = *(*(v58 - 8) + 56);

    return v59(a2, 1, 1, v58);
  }
}

uint64_t sub_10005C0E8()
{
  v1 = *(*v0 + 40);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v1 + 32;
    do
    {
      sub_10000B270(v3, v7);
      v4 = v8;
      v5 = v9;
      sub_100018544(v7, v8);
      sub_10005E75C(v4, v5);
      result = sub_10000665C(v7);
      v3 += 40;
      --v2;
    }

    while (v2);
  }

  return result;
}

uint64_t sub_10005C190(char **a1, uint64_t a2, char *a3, uint64_t a4)
{
  v5 = v4;
  v147 = a4;
  v145 = a1;
  v7 = type metadata accessor for PrimarySettingsListItemViewType(0);
  v8 = __chkstk_darwin(v7);
  v168 = &v141 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v12 = &v141 - v11;
  v13 = __chkstk_darwin(v10);
  v159 = &v141 - v14;
  __chkstk_darwin(v13);
  v158 = &v141 - v15;
  v16 = type metadata accessor for PrimarySettingsListItemModel(0);
  v155 = *(v16 - 8);
  v17 = __chkstk_darwin(v16);
  v149 = &v141 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v164 = &v141 - v20;
  v21 = __chkstk_darwin(v19);
  v169 = &v141 - v22;
  v23 = __chkstk_darwin(v21);
  v167 = &v141 - v24;
  v25 = __chkstk_darwin(v23);
  v161 = &v141 - v26;
  v27 = __chkstk_darwin(v25);
  v157 = &v141 - v28;
  v29 = __chkstk_darwin(v27);
  v143 = &v141 - v30;
  result = __chkstk_darwin(v29);
  v142 = &v141 - v32;
  v156 = a3;
  v33 = *(a3 + 1);
  if (v33 < 1)
  {
    v35 = _swiftEmptyArrayStorage;
LABEL_192:
    v12 = *v145;
    if (!*v145)
    {
      goto LABEL_231;
    }

    a3 = v35;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = a3;
LABEL_195:
      v174 = result;
      v137 = *(result + 16);
      if (v137 >= 2)
      {
        while (*v156)
        {
          v138 = *(result + 16 * v137);
          a3 = result;
          v139 = *(result + 16 * (v137 - 1) + 40);
          sub_10005D330(*v156 + *(v155 + 72) * v138, *v156 + *(v155 + 72) * *(result + 16 * (v137 - 1) + 32), *v156 + *(v155 + 72) * v139, v12);
          if (v5)
          {
          }

          if (v139 < v138)
          {
            goto LABEL_218;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            a3 = sub_10005E064(a3);
          }

          if (v137 - 2 >= *(a3 + 2))
          {
            goto LABEL_219;
          }

          v140 = &a3[16 * v137];
          *v140 = v138;
          *(v140 + 1) = v139;
          v174 = a3;
          sub_10005DFD8(v137 - 1);
          result = v174;
          v137 = *(v174 + 2);
          if (v137 <= 1)
          {
          }
        }

        goto LABEL_229;
      }
    }

LABEL_225:
    result = sub_10005E064(a3);
    goto LABEL_195;
  }

  v34 = 0;
  v35 = _swiftEmptyArrayStorage;
  v165 = v7;
  v166 = v16;
LABEL_4:
  v150 = v35;
  v146 = v34;
  if ((v34 + 1) >= v33)
  {
    v45 = v34 + 1;
    v64 = v147;
    goto LABEL_72;
  }

  v160 = v33;
  v144 = v5;
  v36 = *v156;
  v37 = *(v155 + 72);
  a3 = (*v156 + v37 * (v34 + 1));
  v38 = v142;
  sub_10002E9A8(a3, v142, type metadata accessor for PrimarySettingsListItemModel);
  v39 = v36 + v37 * v34;
  v40 = v143;
  sub_10002E9A8(v39, v143, type metadata accessor for PrimarySettingsListItemModel);
  LODWORD(v154) = sub_100057450();
  sub_10002E888(v40, type metadata accessor for PrimarySettingsListItemModel);
  result = sub_10002E888(v38, type metadata accessor for PrimarySettingsListItemModel);
  v41 = (v146 + 2);
  v163 = v37;
  v42 = v36 + v37 * (v146 + 2);
  while (1)
  {
    v45 = v160;
    if (v160 == v41)
    {
      break;
    }

    v46 = v157;
    sub_10002E9A8(v42, v157, type metadata accessor for PrimarySettingsListItemModel);
    sub_10002E9A8(a3, v161, type metadata accessor for PrimarySettingsListItemModel);
    sub_10002E9A8(v46 + *(v16 + 20), v158, type metadata accessor for PrimarySettingsListItemViewType);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 4)
    {
      if (EnumCaseMultiPayload <= 1)
      {
        if (EnumCaseMultiPayload)
        {
          v55 = type metadata accessor for PrimarySettingsListFamilyLinkModel;
        }

        else
        {
          v55 = type metadata accessor for PrimarySettingsListItemViewType;
        }

        sub_10002E888(v158, v55);
        v162 = 0;
        v50 = 0;
      }

      else if (EnumCaseMultiPayload == 2)
      {
        v56 = *v158;
        v57 = *(v158 + 8);
        v50 = *(v158 + 32);
        v162 = *(v158 + 24);
        sub_10002A748(v56, v57, *(v158 + 16));
      }

      else
      {
        v50 = *(v158 + 8);
        v162 = *v158;
      }
    }

    else
    {
      if (EnumCaseMultiPayload <= 7)
      {
        if (EnumCaseMultiPayload == 5 || EnumCaseMultiPayload == 6)
        {
          v48 = *v158;
          v49 = *(v158 + 8);
          v50 = *(v158 + 32);
          v162 = *(v158 + 24);
          sub_10002A748(v48, v49, *(v158 + 16));
          goto LABEL_28;
        }

LABEL_20:
        v53 = *v158;
        v54 = *(v158 + 8);
        v50 = *(v158 + 32);
        v162 = *(v158 + 24);
        sub_10002A748(v53, v54, *(v158 + 16));
LABEL_21:

        goto LABEL_28;
      }

      if (EnumCaseMultiPayload == 8)
      {
        goto LABEL_20;
      }

      if (EnumCaseMultiPayload == 9)
      {
        v51 = *v158;
        v52 = *(v158 + 8);
        v50 = *(v158 + 32);
        v162 = *(v158 + 24);
        sub_100054F18(v51, v52, *(v158 + 16));
        goto LABEL_21;
      }

      v58 = *v158;
      v59 = *(v158 + 8);
      v50 = *(v158 + 32);
      v162 = *(v158 + 24);
      sub_100054F18(v58, v59, *(v158 + 16));
    }

LABEL_28:
    sub_10002E9A8(v161 + *(v16 + 20), v159, type metadata accessor for PrimarySettingsListItemViewType);
    v60 = swift_getEnumCaseMultiPayload();
    if (v60 <= 4)
    {
      if (v60 <= 1)
      {
        if (v60)
        {
          v63 = type metadata accessor for PrimarySettingsListFamilyLinkModel;
        }

        else
        {
          v63 = type metadata accessor for PrimarySettingsListItemViewType;
        }

        sub_10002E888(v159, v63);
        v61 = 0;
        v62 = 0;
        if (!v50)
        {
LABEL_53:
          if (v62)
          {
          }

          v44 = 0;
          goto LABEL_7;
        }
      }

      else if (v60 == 2)
      {
        v61 = *(v159 + 24);
        v62 = *(v159 + 32);
        sub_10002A748(*v159, *(v159 + 8), *(v159 + 16));

        if (!v50)
        {
          goto LABEL_53;
        }
      }

      else
      {
        v61 = *v159;
        v62 = *(v159 + 8);
        if (!v50)
        {
          goto LABEL_53;
        }
      }
    }

    else
    {
      if (v60 <= 7)
      {
        if (v60 == 5 || v60 == 6)
        {
          v61 = *(v159 + 24);
          v62 = *(v159 + 32);
          sub_10002A748(*v159, *(v159 + 8), *(v159 + 16));
          if (!v50)
          {
            goto LABEL_53;
          }

          goto LABEL_50;
        }

LABEL_41:
        v61 = *(v159 + 24);
        v62 = *(v159 + 32);
        sub_10002A748(*v159, *(v159 + 8), *(v159 + 16));
LABEL_42:

        if (!v50)
        {
          goto LABEL_53;
        }

        goto LABEL_50;
      }

      if (v60 == 8)
      {
        goto LABEL_41;
      }

      if (v60 == 9)
      {
        v61 = *(v159 + 24);
        v62 = *(v159 + 32);
        sub_100054F18(*v159, *(v159 + 8), *(v159 + 16));
        goto LABEL_42;
      }

      v61 = *(v159 + 24);
      v62 = *(v159 + 32);
      sub_100054F18(*v159, *(v159 + 8), *(v159 + 16));
      if (!v50)
      {
        goto LABEL_53;
      }
    }

LABEL_50:
    if (v62)
    {
      v172 = v162;
      v173 = v50;
      v170 = v61;
      v171 = v62;
      sub_10002EAE0();
      v43 = StringProtocol.localizedStandardCompare<A>(_:)();

      v44 = v43 == -1;
    }

    else
    {

      v44 = 1;
    }

LABEL_7:
    v16 = v166;
    sub_10002E888(v161, type metadata accessor for PrimarySettingsListItemModel);
    result = sub_10002E888(v157, type metadata accessor for PrimarySettingsListItemModel);
    ++v41;
    v42 += v163;
    a3 += v163;
    if ((v154 ^ v44))
    {
      v45 = v41 - 1;
      break;
    }
  }

  v5 = v144;
  v64 = v147;
  v34 = v146;
  if (v154)
  {
    if (v45 < v146)
    {
      goto LABEL_222;
    }

    if (v146 < v45)
    {
      v65 = v163 * (v45 - 1);
      v66 = v45 * v163;
      v160 = v45;
      v67 = v146;
      v68 = v146 * v163;
      do
      {
        if (v67 != --v45)
        {
          v69 = *v156;
          if (!*v156)
          {
            goto LABEL_228;
          }

          a3 = (v69 + v68);
          sub_10002C634(v69 + v68, v149);
          if (v68 < v65 || a3 >= v69 + v66)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v68 != v65)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          result = sub_10002C634(v149, v69 + v65);
          v64 = v147;
        }

        ++v67;
        v65 -= v163;
        v66 -= v163;
        v68 += v163;
      }

      while (v67 < v45);
      v5 = v144;
      v16 = v166;
      v34 = v146;
      v45 = v160;
    }
  }

LABEL_72:
  v70 = *(v156 + 1);
  if (v45 >= v70)
  {
    goto LABEL_81;
  }

  if (__OFSUB__(v45, v34))
  {
    goto LABEL_221;
  }

  if (v45 - v34 >= v64)
  {
LABEL_81:
    a3 = v45;
    if (v45 < v34)
    {
      goto LABEL_220;
    }

    goto LABEL_82;
  }

  if (__OFADD__(v34, v64))
  {
    goto LABEL_223;
  }

  if (&v34[v64] >= v70)
  {
    a3 = *(v156 + 1);
  }

  else
  {
    a3 = &v34[v64];
  }

  if (a3 < v34)
  {
LABEL_224:
    __break(1u);
    goto LABEL_225;
  }

  if (v45 == a3)
  {
    goto LABEL_81;
  }

  v144 = v5;
  v119 = *v156;
  v120 = *(v155 + 72);
  v121 = *v156 + v120 * (v45 - 1);
  v162 = -v120;
  v163 = v119;
  v122 = v34 - v45;
  v148 = v120;
  v123 = v119 + v45 * v120;
  v151 = a3;
  while (2)
  {
    v160 = v45;
    v152 = v123;
    v124 = v123;
    v153 = v122;
    v154 = v121;
LABEL_135:
    v125 = v167;
    sub_10002E9A8(v124, v167, type metadata accessor for PrimarySettingsListItemModel);
    sub_10002E9A8(v121, v169, type metadata accessor for PrimarySettingsListItemModel);
    sub_10002E9A8(v125 + *(v16 + 20), v12, type metadata accessor for PrimarySettingsListItemViewType);
    v126 = swift_getEnumCaseMultiPayload();
    if (v126 <= 4)
    {
      if (v126 <= 1)
      {
        if (v126)
        {
          v129 = type metadata accessor for PrimarySettingsListFamilyLinkModel;
        }

        else
        {
          v129 = type metadata accessor for PrimarySettingsListItemViewType;
        }

        sub_10002E888(v12, v129);
        v127 = 0;
        v128 = 0;
      }

      else if (v126 == 2)
      {
        v127 = *(v12 + 3);
        v128 = *(v12 + 4);
        sub_10002A748(*v12, *(v12 + 1), v12[16]);
      }

      else
      {
        v127 = *v12;
        v128 = *(v12 + 1);
      }
    }

    else if (v126 > 7)
    {
      if (v126 == 8)
      {
        goto LABEL_146;
      }

      if (v126 == 9)
      {
        v127 = *(v12 + 3);
        v128 = *(v12 + 4);
        sub_100054F18(*v12, *(v12 + 1), v12[16]);
        goto LABEL_147;
      }

      v127 = *(v12 + 3);
      v128 = *(v12 + 4);
      sub_100054F18(*v12, *(v12 + 1), v12[16]);
    }

    else
    {
      if (v126 == 5 || v126 == 6)
      {
        v127 = *(v12 + 3);
        v128 = *(v12 + 4);
        sub_10002A748(*v12, *(v12 + 1), v12[16]);
        goto LABEL_154;
      }

LABEL_146:
      v127 = *(v12 + 3);
      v128 = *(v12 + 4);
      sub_10002A748(*v12, *(v12 + 1), v12[16]);
LABEL_147:
    }

LABEL_154:
    sub_10002E9A8(v169 + *(v16 + 20), v168, type metadata accessor for PrimarySettingsListItemViewType);
    v130 = swift_getEnumCaseMultiPayload();
    if (v130 <= 4)
    {
      if (v130 > 1)
      {
        if (v130 == 2)
        {
          v132 = *(v168 + 24);
          v131 = *(v168 + 32);
          sub_10002A748(*v168, *(v168 + 8), *(v168 + 16));

          if (!v128)
          {
            goto LABEL_186;
          }
        }

        else
        {
          v132 = *v168;
          v131 = *(v168 + 8);
          if (!v128)
          {
            goto LABEL_186;
          }
        }

        goto LABEL_178;
      }

      if (v130)
      {
        v133 = type metadata accessor for PrimarySettingsListFamilyLinkModel;
      }

      else
      {
        v133 = type metadata accessor for PrimarySettingsListItemViewType;
      }

      sub_10002E888(v168, v133);
      v132 = 0;
      v131 = 0;
      if (v128)
      {
        goto LABEL_178;
      }

LABEL_186:
      if (v131)
      {
      }

      sub_10002E888(v169, type metadata accessor for PrimarySettingsListItemModel);
      sub_10002E888(v167, type metadata accessor for PrimarySettingsListItemModel);
      v16 = v166;
LABEL_133:
      v45 = v160 + 1;
      v121 = v154 + v148;
      v122 = v153 - 1;
      v123 = v152 + v148;
      a3 = v151;
      if (v160 + 1 != v151)
      {
        continue;
      }

      v5 = v144;
      if (v151 < v146)
      {
        goto LABEL_220;
      }

LABEL_82:
      result = swift_isUniquelyReferenced_nonNull_native();
      v151 = a3;
      if (result)
      {
        v35 = v150;
      }

      else
      {
        result = sub_10005E15C(0, *(v150 + 2) + 1, 1, v150);
        v35 = result;
      }

      v72 = *(v35 + 2);
      v71 = *(v35 + 3);
      v73 = v72 + 1;
      if (v72 >= v71 >> 1)
      {
        result = sub_10005E15C((v71 > 1), v72 + 1, 1, v35);
        v35 = result;
      }

      *(v35 + 2) = v73;
      v74 = &v35[16 * v72];
      v75 = v151;
      *(v74 + 4) = v146;
      *(v74 + 5) = v75;
      v76 = *v145;
      if (!*v145)
      {
        goto LABEL_230;
      }

      if (v72)
      {
        while (2)
        {
          v77 = v73 - 1;
          if (v73 >= 4)
          {
            v82 = &v35[16 * v73 + 32];
            v83 = *(v82 - 64);
            v84 = *(v82 - 56);
            v88 = __OFSUB__(v84, v83);
            v85 = v84 - v83;
            if (v88)
            {
              goto LABEL_207;
            }

            v87 = *(v82 - 48);
            v86 = *(v82 - 40);
            v88 = __OFSUB__(v86, v87);
            v80 = v86 - v87;
            v81 = v88;
            if (v88)
            {
              goto LABEL_208;
            }

            v89 = &v35[16 * v73];
            v91 = *v89;
            v90 = *(v89 + 1);
            v88 = __OFSUB__(v90, v91);
            v92 = v90 - v91;
            if (v88)
            {
              goto LABEL_210;
            }

            v88 = __OFADD__(v80, v92);
            v93 = v80 + v92;
            if (v88)
            {
              goto LABEL_213;
            }

            if (v93 >= v85)
            {
              v111 = &v35[16 * v77 + 32];
              v113 = *v111;
              v112 = *(v111 + 1);
              v88 = __OFSUB__(v112, v113);
              v114 = v112 - v113;
              if (v88)
              {
                goto LABEL_217;
              }

              if (v80 < v114)
              {
                v77 = v73 - 2;
              }
            }

            else
            {
LABEL_101:
              if (v81)
              {
                goto LABEL_209;
              }

              v94 = &v35[16 * v73];
              v96 = *v94;
              v95 = *(v94 + 1);
              v97 = __OFSUB__(v95, v96);
              v98 = v95 - v96;
              v99 = v97;
              if (v97)
              {
                goto LABEL_212;
              }

              v100 = &v35[16 * v77 + 32];
              v102 = *v100;
              v101 = *(v100 + 1);
              v88 = __OFSUB__(v101, v102);
              v103 = v101 - v102;
              if (v88)
              {
                goto LABEL_215;
              }

              if (__OFADD__(v98, v103))
              {
                goto LABEL_216;
              }

              if (v98 + v103 < v80)
              {
                goto LABEL_115;
              }

              if (v80 < v103)
              {
                v77 = v73 - 2;
              }
            }
          }

          else
          {
            if (v73 == 3)
            {
              v78 = *(v35 + 4);
              v79 = *(v35 + 5);
              v88 = __OFSUB__(v79, v78);
              v80 = v79 - v78;
              v81 = v88;
              goto LABEL_101;
            }

            v104 = &v35[16 * v73];
            v106 = *v104;
            v105 = *(v104 + 1);
            v88 = __OFSUB__(v105, v106);
            v98 = v105 - v106;
            v99 = v88;
LABEL_115:
            if (v99)
            {
              goto LABEL_211;
            }

            v107 = &v35[16 * v77];
            v109 = *(v107 + 4);
            v108 = *(v107 + 5);
            v88 = __OFSUB__(v108, v109);
            v110 = v108 - v109;
            if (v88)
            {
              goto LABEL_214;
            }

            if (v110 < v98)
            {
              break;
            }
          }

          v115 = v77 - 1;
          if (v77 - 1 >= v73)
          {
            __break(1u);
LABEL_205:
            __break(1u);
LABEL_206:
            __break(1u);
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
            __break(1u);
LABEL_217:
            __break(1u);
LABEL_218:
            __break(1u);
LABEL_219:
            __break(1u);
LABEL_220:
            __break(1u);
LABEL_221:
            __break(1u);
LABEL_222:
            __break(1u);
LABEL_223:
            __break(1u);
            goto LABEL_224;
          }

          if (!*v156)
          {
            goto LABEL_227;
          }

          a3 = v35;
          v116 = *&v35[16 * v115 + 32];
          v117 = *&v35[16 * v77 + 40];
          sub_10005D330(*v156 + *(v155 + 72) * v116, *v156 + *(v155 + 72) * *&v35[16 * v77 + 32], *v156 + *(v155 + 72) * v117, v76);
          if (v5)
          {
          }

          if (v117 < v116)
          {
            goto LABEL_205;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            a3 = sub_10005E064(a3);
          }

          if (v115 >= *(a3 + 2))
          {
            goto LABEL_206;
          }

          v118 = &a3[16 * v115];
          *(v118 + 4) = v116;
          *(v118 + 5) = v117;
          v174 = a3;
          result = sub_10005DFD8(v77);
          v35 = v174;
          v73 = *(v174 + 2);
          if (v73 <= 1)
          {
            break;
          }

          continue;
        }
      }

      v33 = *(v156 + 1);
      v34 = v151;
      v16 = v166;
      if (v151 >= v33)
      {
        goto LABEL_192;
      }

      goto LABEL_4;
    }

    break;
  }

  if (v130 > 7)
  {
    if (v130 == 8)
    {
      goto LABEL_167;
    }

    if (v130 == 9)
    {
      v132 = *(v168 + 24);
      v131 = *(v168 + 32);
      sub_100054F18(*v168, *(v168 + 8), *(v168 + 16));
      goto LABEL_168;
    }

    v132 = *(v168 + 24);
    v131 = *(v168 + 32);
    sub_100054F18(*v168, *(v168 + 8), *(v168 + 16));
    if (!v128)
    {
      goto LABEL_186;
    }
  }

  else
  {
    if (v130 == 5 || v130 == 6)
    {
      v132 = *(v168 + 24);
      v131 = *(v168 + 32);
      sub_10002A748(*v168, *(v168 + 8), *(v168 + 16));
      if (!v128)
      {
        goto LABEL_186;
      }

      goto LABEL_178;
    }

LABEL_167:
    v132 = *(v168 + 24);
    v131 = *(v168 + 32);
    sub_10002A748(*v168, *(v168 + 8), *(v168 + 16));
LABEL_168:

    if (!v128)
    {
      goto LABEL_186;
    }
  }

LABEL_178:
  if (!v131)
  {

    sub_10002E888(v169, type metadata accessor for PrimarySettingsListItemModel);
    result = sub_10002E888(v167, type metadata accessor for PrimarySettingsListItemModel);
    v16 = v166;
    if (!v163)
    {
      goto LABEL_226;
    }

LABEL_183:
    v135 = v164;
    sub_10002C634(v124, v164);
    swift_arrayInitWithTakeFrontToBack();
    sub_10002C634(v135, v121);
    v121 += v162;
    v124 += v162;
    if (__CFADD__(v122++, 1))
    {
      goto LABEL_133;
    }

    goto LABEL_135;
  }

  v172 = v127;
  v173 = v128;
  v170 = v132;
  v171 = v131;
  sub_10002EAE0();
  v134 = StringProtocol.localizedStandardCompare<A>(_:)();

  sub_10002E888(v169, type metadata accessor for PrimarySettingsListItemModel);
  result = sub_10002E888(v167, type metadata accessor for PrimarySettingsListItemModel);
  v16 = v166;
  if (v134 != -1)
  {
    goto LABEL_133;
  }

  if (v163)
  {
    goto LABEL_183;
  }

LABEL_226:
  __break(1u);
LABEL_227:
  __break(1u);
LABEL_228:
  __break(1u);
LABEL_229:
  __break(1u);
LABEL_230:
  __break(1u);
LABEL_231:
  __break(1u);
  return result;
}

uint64_t sub_10005D330(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v102 = a3;
  v7 = type metadata accessor for PrimarySettingsListItemViewType(0);
  v8 = __chkstk_darwin(v7);
  v10 = &v90 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = &v90 - v12;
  v14 = __chkstk_darwin(v11);
  v16 = &v90 - v15;
  __chkstk_darwin(v14);
  v18 = &v90 - v17;
  v19 = type metadata accessor for PrimarySettingsListItemModel(0);
  v20 = __chkstk_darwin(v19);
  v99 = &v90 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v95 = &v90 - v23;
  v24 = __chkstk_darwin(v22);
  v101 = &v90 - v25;
  result = __chkstk_darwin(v24);
  v100 = &v90 - v27;
  v96 = *(v28 + 72);
  if (!v96)
  {
    __break(1u);
LABEL_156:
    __break(1u);
LABEL_157:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v96 == -1)
  {
    goto LABEL_156;
  }

  v29 = v102 - a2;
  if (v102 - a2 == 0x8000000000000000 && v96 == -1)
  {
    goto LABEL_157;
  }

  v30 = (a2 - a1) / v96;
  v109 = a1;
  v108 = a4;
  v97 = v7;
  v98 = v19;
  if (v30 < v29 / v96)
  {
    v31 = v30 * v96;
    if (a4 < a1 || a1 + v31 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v95 = a4 + v31;
    v107 = a4 + v31;
    if (v31 < 1 || a2 >= v102)
    {
      goto LABEL_154;
    }

    while (1)
    {
      v34 = v100;
      sub_10002E9A8(a2, v100, type metadata accessor for PrimarySettingsListItemModel);
      sub_10002E9A8(a4, v101, type metadata accessor for PrimarySettingsListItemModel);
      sub_10002E9A8(v34 + *(v19 + 20), v18, type metadata accessor for PrimarySettingsListItemViewType);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload <= 4)
      {
        if (EnumCaseMultiPayload <= 1)
        {
          if (EnumCaseMultiPayload)
          {
            v43 = type metadata accessor for PrimarySettingsListFamilyLinkModel;
          }

          else
          {
            v43 = type metadata accessor for PrimarySettingsListItemViewType;
          }

          sub_10002E888(v18, v43);
          v99 = 0;
          v38 = 0;
        }

        else if (EnumCaseMultiPayload == 2)
        {
          v44 = *v18;
          v45 = *(v18 + 1);
          v38 = *(v18 + 4);
          v99 = *(v18 + 3);
          sub_10002A748(v44, v45, v18[16]);
        }

        else
        {
          v38 = *(v18 + 1);
          v99 = *v18;
        }
      }

      else
      {
        if (EnumCaseMultiPayload <= 7)
        {
          if (EnumCaseMultiPayload == 5 || EnumCaseMultiPayload == 6)
          {
            v36 = *v18;
            v37 = *(v18 + 1);
            v38 = *(v18 + 4);
            v99 = *(v18 + 3);
            sub_10002A748(v36, v37, v18[16]);
            goto LABEL_39;
          }

LABEL_31:
          v41 = *v18;
          v42 = *(v18 + 1);
          v38 = *(v18 + 4);
          v99 = *(v18 + 3);
          sub_10002A748(v41, v42, v18[16]);
LABEL_32:

          goto LABEL_39;
        }

        if (EnumCaseMultiPayload == 8)
        {
          goto LABEL_31;
        }

        if (EnumCaseMultiPayload == 9)
        {
          v39 = *v18;
          v40 = *(v18 + 1);
          v38 = *(v18 + 4);
          v99 = *(v18 + 3);
          sub_100054F18(v39, v40, v18[16]);
          goto LABEL_32;
        }

        v46 = *v18;
        v47 = *(v18 + 1);
        v38 = *(v18 + 4);
        v99 = *(v18 + 3);
        sub_100054F18(v46, v47, v18[16]);
      }

LABEL_39:
      sub_10002E9A8(v101 + *(v19 + 20), v16, type metadata accessor for PrimarySettingsListItemViewType);
      v48 = swift_getEnumCaseMultiPayload();
      v49 = a4;
      v50 = a2;
      if (v48 <= 4)
      {
        if (v48 <= 1)
        {
          if (v48)
          {
            v56 = type metadata accessor for PrimarySettingsListFamilyLinkModel;
          }

          else
          {
            v56 = type metadata accessor for PrimarySettingsListItemViewType;
          }

          sub_10002E888(v16, v56);
          v52 = 0;
          v51 = 0;
          if (!v38)
          {
LABEL_44:
            if (v51)
            {
            }

            sub_10002E888(v101, type metadata accessor for PrimarySettingsListItemModel);
            sub_10002E888(v100, type metadata accessor for PrimarySettingsListItemModel);
            a2 = v50;
            v53 = v96;
            goto LABEL_58;
          }
        }

        else if (v48 == 2)
        {
          v52 = *(v16 + 3);
          v51 = *(v16 + 4);
          sub_10002A748(*v16, *(v16 + 1), v16[16]);

          if (!v38)
          {
            goto LABEL_44;
          }
        }

        else
        {
          v52 = *v16;
          v51 = *(v16 + 1);
          if (!v38)
          {
            goto LABEL_44;
          }
        }
      }

      else
      {
        if (v48 <= 7)
        {
          if (v48 == 5 || v48 == 6)
          {
            v52 = *(v16 + 3);
            v51 = *(v16 + 4);
            sub_10002A748(*v16, *(v16 + 1), v16[16]);
            if (!v38)
            {
              goto LABEL_44;
            }

            goto LABEL_56;
          }

LABEL_54:
          v52 = *(v16 + 3);
          v51 = *(v16 + 4);
          sub_10002A748(*v16, *(v16 + 1), v16[16]);
LABEL_55:

          if (!v38)
          {
            goto LABEL_44;
          }

          goto LABEL_56;
        }

        if (v48 == 8)
        {
          goto LABEL_54;
        }

        if (v48 == 9)
        {
          v52 = *(v16 + 3);
          v51 = *(v16 + 4);
          sub_100054F18(*v16, *(v16 + 1), v16[16]);
          goto LABEL_55;
        }

        v52 = *(v16 + 3);
        v51 = *(v16 + 4);
        sub_100054F18(*v16, *(v16 + 1), v16[16]);
        if (!v38)
        {
          goto LABEL_44;
        }
      }

LABEL_56:
      if (!v51)
      {

        sub_10002E888(v101, type metadata accessor for PrimarySettingsListItemModel);
        sub_10002E888(v100, type metadata accessor for PrimarySettingsListItemModel);
        a2 = v50;
        v53 = v96;
LABEL_65:
        a4 = v49;
        if (a1 < a2 || a1 >= a2 + v53)
        {
          v19 = v98;
          swift_arrayInitWithTakeFrontToBack();
        }

        else
        {
          v19 = v98;
          if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        a2 += v53;
        goto LABEL_71;
      }

      v105 = v99;
      v106 = v38;
      v103 = v52;
      v104 = v51;
      sub_10002EAE0();
      v54 = StringProtocol.localizedStandardCompare<A>(_:)();

      sub_10002E888(v101, type metadata accessor for PrimarySettingsListItemModel);
      sub_10002E888(v100, type metadata accessor for PrimarySettingsListItemModel);
      v53 = v96;
      a2 = v50;
      if (v54 == -1)
      {
        goto LABEL_65;
      }

LABEL_58:
      v55 = v49;
      a4 = v49 + v53;
      if (a1 < v49 || a1 >= a4)
      {
        v19 = v98;
        swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v19 = v98;
        if (a1 != v55)
        {
          swift_arrayInitWithTakeBackToFront();
        }
      }

      v108 = a4;
LABEL_71:
      a1 += v53;
      v109 = a1;
      if (a4 >= v95 || a2 >= v102)
      {
        goto LABEL_154;
      }
    }
  }

  v32 = v29 / v96 * v96;
  if (a4 < a2 || a2 + v32 <= a4)
  {
    swift_arrayInitWithTakeFrontToBack();
  }

  else if (a4 != a2)
  {
    swift_arrayInitWithTakeBackToFront();
  }

  v100 = a2;
  v57 = a4 + v32;
  if (v32 < 1)
  {
    goto LABEL_153;
  }

  v58 = -v96;
  v59 = v57;
  v94 = a4;
  v101 = -v96;
  while (2)
  {
    while (2)
    {
      v91 = v57;
      v60 = v100;
      v100 += v58;
      v96 = v60;
      while (1)
      {
        v61 = v102;
        if (v60 <= a1)
        {
          v109 = v60;
          v107 = v91;
          goto LABEL_154;
        }

        v93 = v57;
        v62 = v59 + v58;
        v63 = v95;
        sub_10002E9A8(v59 + v58, v95, type metadata accessor for PrimarySettingsListItemModel);
        sub_10002E9A8(v100, v99, type metadata accessor for PrimarySettingsListItemModel);
        sub_10002E9A8(v63 + *(v19 + 20), v13, type metadata accessor for PrimarySettingsListItemViewType);
        v64 = swift_getEnumCaseMultiPayload();
        if (v64 <= 4)
        {
          if (v64 <= 1)
          {
            v72 = v64 ? type metadata accessor for PrimarySettingsListFamilyLinkModel : type metadata accessor for PrimarySettingsListItemViewType;
            sub_10002E888(v13, v72);
            v102 = 0;
            v67 = 0;
          }

          else if (v64 == 2)
          {
            v73 = *v13;
            v74 = *(v13 + 1);
            v67 = *(v13 + 4);
            v102 = *(v13 + 3);
            sub_10002A748(v73, v74, v13[16]);
          }

          else
          {
            v67 = *(v13 + 1);
            v102 = *v13;
          }
        }

        else
        {
          if (v64 <= 7)
          {
            if (v64 == 5 || v64 == 6)
            {
              v65 = *v13;
              v66 = *(v13 + 1);
              v67 = *(v13 + 4);
              v102 = *(v13 + 3);
              sub_10002A748(v65, v66, v13[16]);
              goto LABEL_109;
            }

LABEL_101:
            v70 = *v13;
            v71 = *(v13 + 1);
            v67 = *(v13 + 4);
            v102 = *(v13 + 3);
            sub_10002A748(v70, v71, v13[16]);
LABEL_102:

            goto LABEL_109;
          }

          if (v64 == 8)
          {
            goto LABEL_101;
          }

          if (v64 == 9)
          {
            v68 = *v13;
            v69 = *(v13 + 1);
            v67 = *(v13 + 4);
            v102 = *(v13 + 3);
            sub_100054F18(v68, v69, v13[16]);
            goto LABEL_102;
          }

          v75 = *v13;
          v76 = *(v13 + 1);
          v67 = *(v13 + 4);
          v102 = *(v13 + 3);
          sub_100054F18(v75, v76, v13[16]);
        }

LABEL_109:
        sub_10002E9A8(v99 + *(v19 + 20), v10, type metadata accessor for PrimarySettingsListItemViewType);
        v77 = swift_getEnumCaseMultiPayload();
        if (v77 <= 4)
        {
          if (v77 <= 1)
          {
            if (v77)
            {
              v86 = type metadata accessor for PrimarySettingsListFamilyLinkModel;
            }

            else
            {
              v86 = type metadata accessor for PrimarySettingsListItemViewType;
            }

            sub_10002E888(v10, v86);
            v78 = 0;
            v79 = 0;
            if (v67)
            {
LABEL_126:
              if (v79)
              {
                v105 = v102;
                v106 = v67;
                v103 = v78;
                v104 = v79;
                sub_10002EAE0();
                v85 = StringProtocol.localizedStandardCompare<A>(_:)();

                v80 = v85 == -1;
              }

              else
              {

                v80 = 1;
              }

              goto LABEL_129;
            }
          }

          else if (v77 == 2)
          {
            v87 = *v10;
            v88 = *(v10 + 1);
            v78 = *(v10 + 3);
            v79 = *(v10 + 4);
            v92 = *(v10 + 5);
            sub_10002A748(v87, v88, v10[16]);

            if (v67)
            {
              goto LABEL_126;
            }
          }

          else
          {
            v78 = *v10;
            v79 = *(v10 + 1);
            if (v67)
            {
              goto LABEL_126;
            }
          }
        }

        else
        {
          if (v77 <= 7)
          {
            if (v77 == 5 || v77 == 6)
            {
              v78 = *(v10 + 3);
              v79 = *(v10 + 4);
              sub_10002A748(*v10, *(v10 + 1), v10[16]);
              if (v67)
              {
                goto LABEL_126;
              }

              goto LABEL_114;
            }

LABEL_124:
            v83 = *v10;
            v84 = *(v10 + 1);
            v78 = *(v10 + 3);
            v79 = *(v10 + 4);
            v92 = *(v10 + 6);
            sub_10002A748(v83, v84, v10[16]);
LABEL_125:

            if (v67)
            {
              goto LABEL_126;
            }

            goto LABEL_114;
          }

          if (v77 == 8)
          {
            goto LABEL_124;
          }

          if (v77 == 9)
          {
            v81 = *v10;
            v82 = *(v10 + 1);
            v78 = *(v10 + 3);
            v79 = *(v10 + 4);
            v92 = *(v10 + 6);
            sub_100054F18(v81, v82, v10[16]);
            goto LABEL_125;
          }

          v78 = *(v10 + 3);
          v79 = *(v10 + 4);
          sub_100054F18(*v10, *(v10 + 1), v10[16]);
          if (v67)
          {
            goto LABEL_126;
          }
        }

LABEL_114:
        if (v79)
        {
        }

        v80 = 0;
LABEL_129:
        v19 = v98;
        v102 = v61 + v101;
        sub_10002E888(v99, type metadata accessor for PrimarySettingsListItemModel);
        sub_10002E888(v95, type metadata accessor for PrimarySettingsListItemModel);
        if (v80)
        {
          break;
        }

        v57 = v62;
        if (v61 < v59 || v102 >= v59)
        {
          swift_arrayInitWithTakeFrontToBack();
          v58 = v101;
        }

        else
        {
          v58 = v101;
          if (v61 != v59)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v59 = v62;
        v60 = v96;
        if (v62 <= v94)
        {
          v100 = v96;
          goto LABEL_153;
        }
      }

      if (v61 >= v96 && v102 < v96)
      {
        v57 = v93;
        v89 = v94;
        v58 = v101;
        if (v61 != v96)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        if (v59 <= v89)
        {
          goto LABEL_153;
        }

        continue;
      }

      break;
    }

    swift_arrayInitWithTakeFrontToBack();
    v57 = v93;
    v58 = v101;
    if (v59 > v94)
    {
      continue;
    }

    break;
  }

LABEL_153:
  v109 = v100;
  v107 = v57;
LABEL_154:
  sub_10005E078(&v109, &v108, &v107);
  return 1;
}

uint64_t sub_10005DFD8(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_10005E064(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_10005E078(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = type metadata accessor for PrimarySettingsListItemModel(0);
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

char *sub_10005E15C(char *result, int64_t a2, char a3, char *a4)
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
    sub_10004DED0(&qword_10015BE70, &qword_100116A80);
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

void *sub_10005E274(uint64_t a1)
{
  v3 = sub_10004DED0(&qword_10015BDA8, &unk_100111BF0);
  __chkstk_darwin(v3 - 8);
  v5 = &v15 - v4;
  v6 = type metadata accessor for PrimarySettingsListSectionModel(0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = v1[5];
  v11 = v1[6];
  sub_100018544(v1 + 2, v10);
  sub_10006041C(a1, v10, v11);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_1000260A0(v5);
    return _swiftEmptyArrayStorage;
  }

  else
  {
    sub_10002C928(v5, v9);
    sub_10004DED0(&qword_10015BF30, &qword_100111CE8);
    v13 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_1001103C0;
    sub_10002C928(v9, v14 + v13);
    return v14;
  }
}

uint64_t sub_10005E434()
{
  sub_10000665C((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_10005E46C()
{
  v1 = *v0;
  v2 = *(*v0 + 40);
  v3 = *(*v0 + 48);
  sub_100018544((v1 + 16), v2);
  return sub_10005FEBC(v2, v3);
}

uint64_t sub_10005E4D4(void *a1)
{
  swift_getObjectType();
  v14 = _typeName(_:qualified:)();
  v15 = v3;
  v4._countAndFlagsBits = 0x203A6469207B20;
  v4._object = 0xE700000000000000;
  String.append(_:)(v4);
  v5 = v1 + *a1;
  v6 = *(v5 + 16);
  v16[0] = *v5;
  v16[1] = v6;
  v17 = *(v5 + 32);
  sub_10002698C(v16, v13);
  v7 = sub_100026A58();
  v9 = v8;
  sub_100026A04(v16);
  v10._countAndFlagsBits = v7;
  v10._object = v9;
  String.append(_:)(v10);

  v11._countAndFlagsBits = 32032;
  v11._object = 0xE200000000000000;
  String.append(_:)(v11);
  return v14;
}

uint64_t sub_10005E5A0()
{
  v11 = _typeName(_:qualified:)();
  v12 = v1;
  v2._countAndFlagsBits = 0x203A6469207B20;
  v2._object = 0xE700000000000000;
  String.append(_:)(v2);
  v3 = *(v0 + 32);
  v13[0] = *(v0 + 16);
  v13[1] = v3;
  v14 = *(v0 + 48);
  sub_10002698C(v13, v10);
  v4 = sub_100026A58();
  v6 = v5;
  sub_100026A04(v13);
  v7._countAndFlagsBits = v4;
  v7._object = v6;
  String.append(_:)(v7);

  v8._countAndFlagsBits = 32032;
  v8._object = 0xE200000000000000;
  String.append(_:)(v8);
  return v11;
}

uint64_t sub_10005E680(uint64_t a1, uint64_t a2)
{
  swift_getDynamicType();
  v11 = _typeName(_:qualified:)();
  v4._countAndFlagsBits = 0x203A6469207B20;
  v4._object = 0xE700000000000000;
  String.append(_:)(v4);
  (*(a2 + 8))(v12, a1, a2);
  v5 = sub_100026A58();
  v7 = v6;
  sub_100026A04(v12);
  v8._countAndFlagsBits = v5;
  v8._object = v7;
  String.append(_:)(v8);

  v9._countAndFlagsBits = 32032;
  v9._object = 0xE200000000000000;
  String.append(_:)(v9);
  return v11;
}

uint64_t sub_10005E75C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for OSSignpostError();
  v52 = *(v6 - 8);
  v53 = v6;
  __chkstk_darwin(v6);
  v55 = &v48[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for OSSignpostID();
  v57 = *(v8 - 8);
  v58 = v8;
  v9 = __chkstk_darwin(v8);
  v56 = &v48[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = __chkstk_darwin(v9);
  v13 = &v48[-v12];
  v14 = __chkstk_darwin(v11);
  v16 = &v48[-v15];
  v17 = *(a1 - 8);
  __chkstk_darwin(v14);
  v19 = &v48[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_10015AAE0 != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for OSSignposter();
  v21 = sub_10000659C(v20, qword_100169718);
  (*(v17 + 16))(v19, v3, a1);
  static OSSignpostID.exclusive.getter();
  v54 = v21;
  v22 = OSSignposter.logHandle.getter();
  v23 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v24 = swift_slowAlloc();
    v51 = v3;
    v25 = v24;
    v26 = swift_slowAlloc();
    v50 = v13;
    v27 = v26;
    v59 = v26;
    *v25 = 136315138;
    v28 = (*(a2 + 16))(a1, a2);
    v49 = v23;
    v29 = a2;
    v31 = v30;
    (*(v17 + 8))(v19, a1);
    v32 = sub_100025CF0(v28, v31, &v59);
    a2 = v29;

    *(v25 + 4) = v32;
    v33 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v22, v49, v33, "PrimarySettingsListItemModelProviding.performDeferredSetupForProvider()", "Item Provider: %s", v25, 0xCu);
    sub_10000665C(v27);
    v13 = v50;
  }

  else
  {

    (*(v17 + 8))(v19, a1);
  }

  v34 = v57;
  v35 = v58;
  (*(v57 + 16))(v13, v16, v58);
  type metadata accessor for OSSignpostIntervalState();
  swift_allocObject();
  OSSignpostIntervalState.init(id:isOpen:)();
  v36 = *(v34 + 8);
  v36(v16, v35);
  (*(a2 + 24))(a1, a2);
  v37 = OSSignposter.logHandle.getter();
  v38 = v56;
  OSSignpostIntervalState.signpostID.getter();
  v39 = static os_signpost_type_t.end.getter();
  v40 = OS_os_log.signpostsEnabled.getter();
  v41 = v55;
  if (v40)
  {

    checkForErrorAndConsumeState(state:)();

    v43 = v52;
    v42 = v53;
    if ((*(v52 + 88))(v41, v53) == enum case for OSSignpostError.doubleEnd(_:))
    {
      v44 = "[Error] Interval already ended";
    }

    else
    {
      (*(v43 + 8))(v41, v42);
      v44 = "";
    }

    v45 = swift_slowAlloc();
    *v45 = 0;
    v46 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v37, v39, v46, "PrimarySettingsListItemModelProviding.performDeferredSetupForProvider()", v44, v45, 2u);
  }

  return (v36)(v38, v35);
}

uint64_t sub_10005ECBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for OSSignpostID();
  v40 = *(v8 - 8);
  v41 = v8;
  v9 = __chkstk_darwin(v8);
  v39 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v13 = &v35 - v12;
  v14 = *(a2 - 8);
  __chkstk_darwin(v11);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10015AAE0 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for OSSignposter();
  sub_10000659C(v17, qword_100169718);
  (*(v14 + 16))(v16, v3, a2);
  static OSSignpostID.exclusive.getter();
  v18 = OSSignposter.logHandle.getter();
  v37 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v19 = swift_slowAlloc();
    v36 = a1;
    v20 = v19;
    v21 = swift_slowAlloc();
    v38 = v13;
    v22 = v21;
    v42 = v21;
    *v20 = 136315138;
    v23 = (*(a3 + 16))(a2, a3);
    v35 = v4;
    v24 = a3;
    v26 = v25;
    (*(v14 + 8))(v16, a2);
    v27 = sub_100025CF0(v23, v26, &v42);
    a3 = v24;

    *(v20 + 4) = v27;
    v28 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v18, v37, v28, "PrimarySettingsListItemModelProviding.produceListItemModel(with:)", "Item Provider: %s", v20, 0xCu);
    sub_10000665C(v22);
    v13 = v38;

    a1 = v36;
  }

  else
  {

    (*(v14 + 8))(v16, a2);
  }

  v29 = v40;
  v30 = v41;
  (*(v40 + 16))(v39, v13, v41);
  type metadata accessor for OSSignpostIntervalState();
  swift_allocObject();
  v31 = OSSignpostIntervalState.init(id:isOpen:)();
  v32 = v13;
  v33 = v31;
  (*(v29 + 8))(v32, v30);
  (*(a3 + 32))(a1, a2, a3);
  sub_10005F080(v33);
}

uint64_t sub_10005F080(uint64_t a1)
{
  v1 = type metadata accessor for OSSignpostError();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OSSignpostID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10015AAE0 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for OSSignposter();
  sub_10000659C(v9, qword_100169718);
  v10 = OSSignposter.logHandle.getter();
  OSSignpostIntervalState.signpostID.getter();
  v11 = static os_signpost_type_t.end.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {

    checkForErrorAndConsumeState(state:)();

    if ((*(v2 + 88))(v4, v1) == enum case for OSSignpostError.doubleEnd(_:))
    {
      v12 = "[Error] Interval already ended";
    }

    else
    {
      (*(v2 + 8))(v4, v1);
      v12 = "";
    }

    v13 = swift_slowAlloc();
    *v13 = 0;
    v14 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v10, v11, v14, "PrimarySettingsListItemModelProviding.produceListItemModel(with:)", v12, v13, 2u);
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_10005F30C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for OSSignpostError();
  v52 = *(v6 - 8);
  v53 = v6;
  __chkstk_darwin(v6);
  v55 = &v48[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for OSSignpostID();
  v57 = *(v8 - 8);
  v58 = v8;
  v9 = __chkstk_darwin(v8);
  v56 = &v48[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = __chkstk_darwin(v9);
  v13 = &v48[-v12];
  v14 = __chkstk_darwin(v11);
  v16 = &v48[-v15];
  v17 = *(a1 - 8);
  __chkstk_darwin(v14);
  v19 = &v48[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_10015AAE0 != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for OSSignposter();
  v21 = sub_10000659C(v20, qword_100169718);
  (*(v17 + 16))(v19, v3, a1);
  static OSSignpostID.exclusive.getter();
  v54 = v21;
  v22 = OSSignposter.logHandle.getter();
  v23 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v24 = swift_slowAlloc();
    v51 = v3;
    v25 = v24;
    v26 = swift_slowAlloc();
    v50 = v13;
    v27 = v26;
    v59 = v26;
    *v25 = 136315138;
    v28 = (*(a2 + 8))(a1, a2);
    v49 = v23;
    v29 = a2;
    v31 = v30;
    (*(v17 + 8))(v19, a1);
    v32 = sub_100025CF0(v28, v31, &v59);
    a2 = v29;

    *(v25 + 4) = v32;
    v33 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v22, v49, v33, "PrimarySettingsListSectionCollectionModelProviding.performDeferredSetupForProvider()", "Section Collection Provider: %s", v25, 0xCu);
    sub_10000665C(v27);
    v13 = v50;
  }

  else
  {

    (*(v17 + 8))(v19, a1);
  }

  v34 = v57;
  v35 = v58;
  (*(v57 + 16))(v13, v16, v58);
  type metadata accessor for OSSignpostIntervalState();
  swift_allocObject();
  OSSignpostIntervalState.init(id:isOpen:)();
  v36 = *(v34 + 8);
  v36(v16, v35);
  (*(a2 + 16))(a1, a2);
  v37 = OSSignposter.logHandle.getter();
  v38 = v56;
  OSSignpostIntervalState.signpostID.getter();
  v39 = static os_signpost_type_t.end.getter();
  v40 = OS_os_log.signpostsEnabled.getter();
  v41 = v55;
  if (v40)
  {

    checkForErrorAndConsumeState(state:)();

    v43 = v52;
    v42 = v53;
    if ((*(v52 + 88))(v41, v53) == enum case for OSSignpostError.doubleEnd(_:))
    {
      v44 = "[Error] Interval already ended";
    }

    else
    {
      (*(v43 + 8))(v41, v42);
      v44 = "";
    }

    v45 = swift_slowAlloc();
    *v45 = 0;
    v46 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v37, v39, v46, "PrimarySettingsListSectionCollectionModelProviding.performDeferredSetupForProvider()", v44, v45, 2u);
  }

  return (v36)(v38, v35);
}

uint64_t sub_10005F86C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for OSSignpostID();
  v40 = *(v8 - 8);
  v9 = __chkstk_darwin(v8);
  v39 = v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v13 = v35 - v12;
  v14 = *(a2 - 8);
  __chkstk_darwin(v11);
  v16 = v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10015AAE0 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for OSSignposter();
  sub_10000659C(v17, qword_100169718);
  (*(v14 + 16))(v16, v3, a2);
  static OSSignpostID.exclusive.getter();
  v18 = OSSignposter.logHandle.getter();
  v37 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v19 = swift_slowAlloc();
    v36 = a1;
    v20 = v19;
    v21 = swift_slowAlloc();
    v38 = v13;
    v22 = v21;
    v41 = v21;
    *v20 = 136315138;
    v23 = (*(a3 + 8))(a2, a3);
    v35[1] = v4;
    v24 = a3;
    v26 = v25;
    (*(v14 + 8))(v16, a2);
    v27 = sub_100025CF0(v23, v26, &v41);
    a3 = v24;

    *(v20 + 4) = v27;
    v28 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v18, v37, v28, "PrimarySettingsListSectionCollectionModelProviding.produceListSectionCollectionModel(with:)", "Section Collection Provider: %s", v20, 0xCu);
    sub_10000665C(v22);
    v13 = v38;

    a1 = v36;
  }

  else
  {

    (*(v14 + 8))(v16, a2);
  }

  v29 = v40;
  (*(v40 + 16))(v39, v13, v8);
  type metadata accessor for OSSignpostIntervalState();
  swift_allocObject();
  v30 = OSSignpostIntervalState.init(id:isOpen:)();
  v31 = v13;
  v32 = v30;
  (*(v29 + 8))(v31, v8);
  v33 = (*(a3 + 24))(a1, a2, a3);
  sub_10005FC30(v32);

  return v33;
}

uint64_t sub_10005FC30(uint64_t a1)
{
  v1 = type metadata accessor for OSSignpostError();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OSSignpostID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10015AAE0 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for OSSignposter();
  sub_10000659C(v9, qword_100169718);
  v10 = OSSignposter.logHandle.getter();
  OSSignpostIntervalState.signpostID.getter();
  v11 = static os_signpost_type_t.end.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {

    checkForErrorAndConsumeState(state:)();

    if ((*(v2 + 88))(v4, v1) == enum case for OSSignpostError.doubleEnd(_:))
    {
      v12 = "[Error] Interval already ended";
    }

    else
    {
      (*(v2 + 8))(v4, v1);
      v12 = "";
    }

    v13 = swift_slowAlloc();
    *v13 = 0;
    v14 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v10, v11, v14, "PrimarySettingsListSectionCollectionModelProviding.produceListSectionCollectionModel(with:)", v12, v13, 2u);
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_10005FEBC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for OSSignpostError();
  v52 = *(v6 - 8);
  v53 = v6;
  __chkstk_darwin(v6);
  v55 = &v48[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for OSSignpostID();
  v57 = *(v8 - 8);
  v58 = v8;
  v9 = __chkstk_darwin(v8);
  v56 = &v48[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = __chkstk_darwin(v9);
  v13 = &v48[-v12];
  v14 = __chkstk_darwin(v11);
  v16 = &v48[-v15];
  v17 = *(a1 - 8);
  __chkstk_darwin(v14);
  v19 = &v48[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_10015AAE0 != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for OSSignposter();
  v21 = sub_10000659C(v20, qword_100169718);
  (*(v17 + 16))(v19, v3, a1);
  static OSSignpostID.exclusive.getter();
  v54 = v21;
  v22 = OSSignposter.logHandle.getter();
  v23 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v24 = swift_slowAlloc();
    v51 = v3;
    v25 = v24;
    v26 = swift_slowAlloc();
    v50 = v13;
    v27 = v26;
    v59 = v26;
    *v25 = 136315138;
    v28 = (*(a2 + 16))(a1, a2);
    v49 = v23;
    v29 = a2;
    v31 = v30;
    (*(v17 + 8))(v19, a1);
    v32 = sub_100025CF0(v28, v31, &v59);
    a2 = v29;

    *(v25 + 4) = v32;
    v33 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v22, v49, v33, "PrimarySettingsListSectionModelProviding.performDeferredSetupForProvider()", "Section Provider: %s", v25, 0xCu);
    sub_10000665C(v27);
    v13 = v50;
  }

  else
  {

    (*(v17 + 8))(v19, a1);
  }

  v34 = v57;
  v35 = v58;
  (*(v57 + 16))(v13, v16, v58);
  type metadata accessor for OSSignpostIntervalState();
  swift_allocObject();
  OSSignpostIntervalState.init(id:isOpen:)();
  v36 = *(v34 + 8);
  v36(v16, v35);
  (*(a2 + 24))(a1, a2);
  v37 = OSSignposter.logHandle.getter();
  v38 = v56;
  OSSignpostIntervalState.signpostID.getter();
  v39 = static os_signpost_type_t.end.getter();
  v40 = OS_os_log.signpostsEnabled.getter();
  v41 = v55;
  if (v40)
  {

    checkForErrorAndConsumeState(state:)();

    v43 = v52;
    v42 = v53;
    if ((*(v52 + 88))(v41, v53) == enum case for OSSignpostError.doubleEnd(_:))
    {
      v44 = "[Error] Interval already ended";
    }

    else
    {
      (*(v43 + 8))(v41, v42);
      v44 = "";
    }

    v45 = swift_slowAlloc();
    *v45 = 0;
    v46 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v37, v39, v46, "PrimarySettingsListSectionModelProviding.performDeferredSetupForProvider()", v44, v45, 2u);
  }

  return (v36)(v38, v35);
}

uint64_t sub_10006041C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for OSSignpostID();
  v40 = *(v8 - 8);
  v41 = v8;
  v9 = __chkstk_darwin(v8);
  v39 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v13 = &v35 - v12;
  v14 = *(a2 - 8);
  __chkstk_darwin(v11);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10015AAE0 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for OSSignposter();
  sub_10000659C(v17, qword_100169718);
  (*(v14 + 16))(v16, v3, a2);
  static OSSignpostID.exclusive.getter();
  v18 = OSSignposter.logHandle.getter();
  v37 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v19 = swift_slowAlloc();
    v36 = a1;
    v20 = v19;
    v21 = swift_slowAlloc();
    v38 = v13;
    v22 = v21;
    v42 = v21;
    *v20 = 136315138;
    v23 = (*(a3 + 16))(a2, a3);
    v35 = v4;
    v24 = a3;
    v26 = v25;
    (*(v14 + 8))(v16, a2);
    v27 = sub_100025CF0(v23, v26, &v42);
    a3 = v24;

    *(v20 + 4) = v27;
    v28 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v18, v37, v28, "PrimarySettingsListSectionModelProviding.produceListSectionModel(with:)", "Section Provider: %s", v20, 0xCu);
    sub_10000665C(v22);
    v13 = v38;

    a1 = v36;
  }

  else
  {

    (*(v14 + 8))(v16, a2);
  }

  v29 = v40;
  v30 = v41;
  (*(v40 + 16))(v39, v13, v41);
  type metadata accessor for OSSignpostIntervalState();
  swift_allocObject();
  v31 = OSSignpostIntervalState.init(id:isOpen:)();
  v32 = v13;
  v33 = v31;
  (*(v29 + 8))(v32, v30);
  (*(a3 + 32))(a1, a2, a3);
  sub_1000608D4(v33);
}

uint64_t sub_1000607E0()
{
  v1 = v0;
  v11 = _typeName(_:qualified:)();
  v2._countAndFlagsBits = 0x203A6469207B20;
  v2._object = 0xE700000000000000;
  String.append(_:)(v2);
  v3 = *(v0 + 16);
  v4 = *(v1 + 24);
  LOBYTE(v1) = *(v1 + 32);
  sub_100025974(v3, v4, v1);
  v5 = sub_10002598C(v3, v4, v1);
  v7 = v6;
  sub_100025CD8(v3, v4, v1);
  v8._countAndFlagsBits = v5;
  v8._object = v7;
  String.append(_:)(v8);

  v9._countAndFlagsBits = 32032;
  v9._object = 0xE200000000000000;
  String.append(_:)(v9);
  return v11;
}

uint64_t sub_1000608D4(uint64_t a1)
{
  v1 = type metadata accessor for OSSignpostError();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OSSignpostID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10015AAE0 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for OSSignposter();
  sub_10000659C(v9, qword_100169718);
  v10 = OSSignposter.logHandle.getter();
  OSSignpostIntervalState.signpostID.getter();
  v11 = static os_signpost_type_t.end.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {

    checkForErrorAndConsumeState(state:)();

    if ((*(v2 + 88))(v4, v1) == enum case for OSSignpostError.doubleEnd(_:))
    {
      v12 = "[Error] Interval already ended";
    }

    else
    {
      (*(v2 + 8))(v4, v1);
      v12 = "";
    }

    v13 = swift_slowAlloc();
    *v13 = 0;
    v14 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v10, v11, v14, "PrimarySettingsListSectionModelProviding.produceListSectionModel(with:)", v12, v13, 2u);
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_100060B60(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    LOBYTE(a2) = 3;
  }

  *(result + 16) = a2;
  return result;
}

Swift::Int sub_100060B78()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  Hasher.init(_seed:)();
  sub_10002F3D4(v5, v1, v2, v3);
  return Hasher._finalize()();
}

uint64_t sub_100060C90(uint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  if (a3 > 1u)
  {
    if (a3 != 2)
    {
      switch(a1)
      {
        case 1:
          if (a6 != 3)
          {
            v6 = 1;
            goto LABEL_20;
          }

          v6 = 1;
          if (a4 == 1)
          {
            goto LABEL_76;
          }

          goto LABEL_78;
        case 2:
          if (a6 != 3)
          {
            v6 = 2;
            goto LABEL_20;
          }

          v6 = 2;
          if (a4 == 2)
          {
            goto LABEL_76;
          }

          goto LABEL_78;
        case 3:
          if (a6 != 3)
          {
            v6 = 3;
            goto LABEL_20;
          }

          v6 = 3;
          if (a4 == 3)
          {
            goto LABEL_76;
          }

          goto LABEL_78;
        case 4:
          if (a6 != 3)
          {
            v6 = 4;
            goto LABEL_20;
          }

          v6 = 4;
          if (a4 == 4)
          {
            goto LABEL_76;
          }

          goto LABEL_78;
        case 5:
          if (a6 != 3)
          {
            v6 = 8;
            goto LABEL_20;
          }

          v6 = 8;
          if (a4 == 5)
          {
            goto LABEL_76;
          }

          goto LABEL_78;
        case 6:
          if (a6 != 3)
          {
            v6 = 9;
            goto LABEL_20;
          }

          v6 = 9;
          if (a4 == 6)
          {
            goto LABEL_76;
          }

          goto LABEL_78;
        case 7:
          if (a6 != 3)
          {
            v6 = 10;
            goto LABEL_20;
          }

          v6 = 10;
          if (a4 == 7)
          {
            goto LABEL_76;
          }

          goto LABEL_78;
        case 8:
          if (a6 != 3)
          {
            v6 = 11;
            goto LABEL_20;
          }

          v6 = 11;
          if (a4 != 8)
          {
            goto LABEL_78;
          }

          goto LABEL_76;
        case 9:
          if (a6 != 3)
          {
            v6 = 12;
            goto LABEL_20;
          }

          v6 = 12;
          if (a4 == 9)
          {
            goto LABEL_76;
          }

          goto LABEL_78;
        case 10:
          if (a6 != 3)
          {
            v6 = 13;
            goto LABEL_20;
          }

          v6 = 13;
          if (a4 == 10)
          {
            goto LABEL_76;
          }

          goto LABEL_78;
        case 11:
          if (a6 != 3)
          {
            v6 = 14;
            goto LABEL_20;
          }

          v6 = 14;
          if (a4 == 11)
          {
            goto LABEL_76;
          }

          goto LABEL_78;
        case 12:
          if (a6 != 3)
          {
            v6 = 15;
            goto LABEL_20;
          }

          v6 = 15;
          if (a4 == 12)
          {
            goto LABEL_76;
          }

          goto LABEL_78;
        case 13:
          if (a6 != 3)
          {
            v6 = 16;
            goto LABEL_20;
          }

          v6 = 16;
          if (a4 == 13)
          {
            goto LABEL_76;
          }

          goto LABEL_78;
        case 14:
          if (a6 != 3)
          {
            v6 = 17;
            goto LABEL_20;
          }

          v6 = 17;
          if (a4 == 14)
          {
            goto LABEL_76;
          }

          goto LABEL_78;
        case 15:
          if (a6 != 3)
          {
            v6 = 18;
            goto LABEL_20;
          }

          v6 = 18;
          if (a4 == 15)
          {
            goto LABEL_76;
          }

          goto LABEL_78;
        case 16:
          if (a6 != 3)
          {
            v6 = 19;
            goto LABEL_20;
          }

          v6 = 19;
          if (a4 == 16)
          {
            goto LABEL_76;
          }

          goto LABEL_78;
        case 17:
          if (a6 != 3)
          {
            v6 = 20;
            goto LABEL_20;
          }

          v6 = 20;
LABEL_76:
          if (!a5)
          {
            return 0;
          }

          goto LABEL_78;
        default:
          v6 = 0;
          if (a6 != 3 || a5 | a4)
          {
            goto LABEL_20;
          }

          return 0;
      }
    }

    if (a6 != 2)
    {
      v6 = 7;
      goto LABEL_20;
    }

LABEL_9:
    if (a1 == a4 && a2 == a5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      return 0;
    }

    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  if (a3)
  {
    if (a6 != 1)
    {
      v6 = 6;
      goto LABEL_20;
    }

    goto LABEL_9;
  }

  if (!a6)
  {
    goto LABEL_9;
  }

  v6 = 5;
LABEL_20:
  if (a6 > 1u)
  {
    if (a6 == 2)
    {
      v8 = 7;
    }

    else
    {
LABEL_78:
      v8 = 0;
      switch(a4)
      {
        case 0:
          return v6 < v8;
        case 1:
          v8 = 1;
          break;
        case 2:
          v8 = 2;
          break;
        case 3:
          v8 = 3;
          break;
        case 4:
          v8 = 4;
          break;
        case 5:
          v8 = 8;
          break;
        case 6:
          v8 = 9;
          break;
        case 7:
          v8 = 10;
          break;
        case 8:
          v8 = 11;
          break;
        case 9:
          v8 = 12;
          break;
        case 10:
          v8 = 13;
          break;
        case 11:
          v8 = 14;
          break;
        case 12:
          v8 = 15;
          break;
        case 13:
          v8 = 16;
          break;
        case 14:
          v8 = 17;
          break;
        case 15:
          v8 = 18;
          break;
        case 16:
          v8 = 19;
          break;
        case 17:
          v8 = 20;
          break;
        default:
          JUMPOUT(0);
      }
    }
  }

  else if (a6)
  {
    v8 = 6;
  }

  else
  {
    v8 = 5;
  }

  return v6 < v8;
}

unint64_t sub_1000610F8()
{
  v1._countAndFlagsBits = sub_10002598C(*v0, *(v0 + 8), *(v0 + 16));
  String.append(_:)(v1);

  return 0xD000000000000020;
}

unint64_t sub_10006115C()
{
  result = qword_10015BF48;
  if (!qword_10015BF48)
  {
    type metadata accessor for LocalizedStringResource();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015BF48);
  }

  return result;
}

uint64_t sub_1000611DC(uint64_t a1)
{
  v2 = type metadata accessor for OpenURLAction();
  __chkstk_darwin(v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return EnvironmentValues.openURL.setter();
}

uint64_t sub_1000612A4(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for PrimarySettingsListSection(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10004DED0(&unk_10015D490, &qword_100112150);
  __chkstk_darwin(v7 - 8);
  v9 = &v20 - v8;
  v10 = URL.scheme.getter();
  v12 = sub_1000BBCA4(v10, v11);
  if (v12 == 10)
  {

    return static OpenURLAction.Result.systemAction.getter();
  }

  else
  {
    v13 = v12;
    v14 = type metadata accessor for TaskPriority();
    (*(*(v14 - 8) + 56))(v9, 1, 1, v14);
    sub_100034514(a2, &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PrimarySettingsListSection);
    type metadata accessor for MainActor();
    v15 = static MainActor.shared.getter();
    v16 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v17 = v16 + v5;
    v18 = swift_allocObject();
    *(v18 + 16) = v15;
    *(v18 + 24) = &protocol witness table for MainActor;
    sub_100061724(v6, v18 + v16);
    *(v18 + v17) = v13;
    sub_100094AF4(0, 0, v9, &unk_100112160, v18);

    return static OpenURLAction.Result.handled.getter();
  }
}

uint64_t sub_1000614D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 64) = a5;
  *(v5 + 24) = a4;
  v6 = type metadata accessor for EnvironmentValues();
  *(v5 + 32) = v6;
  *(v5 + 40) = *(v6 - 8);
  *(v5 + 48) = swift_task_alloc();
  type metadata accessor for MainActor();
  *(v5 + 56) = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000615D0, v8, v7);
}

uint64_t sub_1000615D0()
{
  v1 = *(v0 + 24);

  LOBYTE(v1) = *(v1 + 8);

  if ((v1 & 1) == 0)
  {
    v3 = *(v0 + 40);
    v2 = *(v0 + 48);
    v4 = *(v0 + 32);
    static os_log_type_t.fault.getter();
    v5 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v3 + 8))(v2, v4);
  }

  v6 = *(v0 + 64);

  sub_100010CD0();

  sub_1000951B0(v6);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_100061724(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PrimarySettingsListSection(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100061788(uint64_t a1)
{
  v3 = *(type metadata accessor for PrimarySettingsListSection(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1000612A4(a1, v4);
}

uint64_t sub_100061808(uint64_t a1, uint64_t a2)
{
  v4 = sub_10004DED0(&qword_10015C0D0, &qword_100112108);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100061878(uint64_t a1)
{
  v4 = *(type metadata accessor for PrimarySettingsListSection(0) - 8);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v8 = *(v7 + *(v4 + 64));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10000A924;

  return sub_1000614D8(a1, v5, v6, v7, v8);
}

uint64_t sub_100061990()
{
  if (*v0)
  {
    return 0xD000000000000013;
  }

  else
  {
    return 0x6E6564646968;
  }
}

Swift::Int sub_1000619CC()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_100061A14(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

void sub_100061A58(uint64_t a1)
{
  if (!qword_10015C1A8)
  {
    sub_100052374(&unk_10015FC00, &qword_100111C00);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_10015C1A8);
    }
  }
}

void sub_100061AD0(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  if (!*a2)
  {
    sub_100052374(a3, a4);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v7)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for TapToRadarManager.SearchActionType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TapToRadarManager.SearchActionType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100061C94()
{
  result = qword_10015C210;
  if (!qword_10015C210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015C210);
  }

  return result;
}

uint64_t sub_100061D08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(a3 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_100061E00(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for GenerativeModelsAvailability.Availability.UnavailableInfo.UnavailableReason();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (sub_100063E44(&qword_10015C2B8, &protocol conformance descriptor for GenerativeModelsAvailability.Availability.UnavailableInfo.UnavailableReason), v7 = dispatch thunk of Hashable._rawHashValue(seed:)(), v8 = -1 << *(a2 + 32), v9 = v7 & ~v8, v18 = a2 + 56, ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0))
  {
    v17 = a2;
    v10 = ~v8;
    v11 = v4 + 16;
    v12 = *(v4 + 16);
    v13 = *(v11 + 56);
    v14 = (v11 - 8);
    do
    {
      v12(v6, *(v17 + 48) + v13 * v9, v3);
      sub_100063E44(&qword_10015C2C0, &protocol conformance descriptor for GenerativeModelsAvailability.Availability.UnavailableInfo.UnavailableReason);
      v15 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*v14)(v6, v3);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

uint64_t sub_100061FF0(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) && (v3 = AnyHashable._rawHashValue(seed:)(*(a2 + 40)), v4 = -1 << *(a2 + 32), v5 = v3 & ~v4, ((*(a2 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0))
  {
    v6 = ~v4;
    do
    {
      sub_1000069D8(*(a2 + 48) + 40 * v5, v9);
      v7 = static AnyHashable.== infix(_:_:)();
      sub_100017E04(v9);
      if (v7)
      {
        break;
      }

      v5 = (v5 + 1) & v6;
    }

    while (((*(a2 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t sub_1000620C8(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) && (static String._unconditionallyBridgeFromObjectiveC(_:)(), Hasher.init(_seed:)(), String.hash(into:)(), v3 = Hasher._finalize()(), , v4 = -1 << *(a2 + 32), v5 = v3 & ~v4, ((*(a2 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0))
  {
    v6 = ~v4;
    while (1)
    {
      v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v9 = v8;
      if (v7 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v9 == v10)
      {
        break;
      }

      v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v12 & 1) == 0)
      {
        v5 = (v5 + 1) & v6;
        if ((*(a2 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
        {
          continue;
        }
      }

      return v12 & 1;
    }

    v12 = 1;
  }

  else
  {
    v12 = 0;
  }

  return v12 & 1;
}

id sub_100062250(int a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for NSBundle.PluginLocation();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v197 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = &v197 - v12;
  __chkstk_darwin(v11);
  v15 = &v197 - v14;
  v16 = type metadata accessor for PrimarySettingsListItemVisibilityRule(0);
  v212 = *(v16 - 8);
  v213 = v16;
  __chkstk_darwin(v16);
  v18 = (&v197 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = *(a2 + 16);
  if (!v19)
  {
    return (v19 & 1);
  }

  v20 = sub_100029DE0(a1 & 1);
  if ((v21 & 1) == 0)
  {
LABEL_93:
    LOBYTE(v19) = 0;
    return (v19 & 1);
  }

  v202 = v10;
  v209 = v7;
  v203 = v13;
  v207 = a1;
  v22 = *(*(a2 + 56) + 8 * v20);
  v23 = *(v22 + 16);

  v211 = v23;
  if (!v23)
  {
LABEL_92:

    goto LABEL_93;
  }

  v24 = 0;
  v204 = (v209 + 32);
  v205 = (v209 + 8);
  v210 = a3;
  v206 = v6;
  v208 = v15;
  while (1)
  {
    if (v24 >= *(v22 + 16))
    {
      __break(1u);
LABEL_213:
      __break(1u);
LABEL_214:
      __break(1u);
LABEL_215:
      swift_once();
LABEL_95:
      v83 = type metadata accessor for Logger();
      sub_10000659C(v83, qword_1001696B8);

      v84 = Logger.logObject.getter();
      v85 = static os_log_type_t.debug.getter();

      v86 = os_log_type_enabled(v84, v85);
      v87 = v207;
      if (v86)
      {
        v88 = swift_slowAlloc();
        v219[0] = swift_slowAlloc();
        *v88 = 136446466;
        v89 = Array.description.getter();
        v91 = v90;

        v92 = sub_100025CF0(v89, v91, v219);

        *(v88 + 4) = v92;
        *(v88 + 12) = 2082;
        if (v87)
        {
          v93 = 0xD000000000000013;
        }

        else
        {
          v93 = 0x6E6564646968;
        }

        if (v87)
        {
          v94 = 0x80000001001216D0;
        }

        else
        {
          v94 = 0xE600000000000000;
        }

        v95 = sub_100025CF0(v93, v94, v219);

        *(v88 + 14) = v95;
        _os_log_impl(&_mh_execute_header, v84, v85, "Some Features in '%{public}s' are restricted, should apply '%{public}s' visibility.", v88, 0x16u);
        swift_arrayDestroy();

        sub_100063DF0(v6);
        v96 = v6;
LABEL_103:
        sub_100063DF0(v96);
        goto LABEL_140;
      }

      sub_100063DF0(v6);
      v121 = v6;
LABEL_138:
      sub_100063DF0(v121);
      goto LABEL_139;
    }

    sub_100029F24(v22 + ((*(v212 + 80) + 32) & ~*(v212 + 80)) + *(v212 + 72) * v24, v18);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 3)
    {
      if (EnumCaseMultiPayload > 1)
      {
        if (EnumCaseMultiPayload != 2)
        {
          v52 = *v18;
          v53 = *(*v18 + 16);
          v40 = *(v18 + 8) == 1;
          v201 = v53;
          if (v40)
          {
            sub_100063D94(a3, v219);
            sub_100063D94(a3, v219);
            if (v53)
            {
              v54 = 0;
              v199 = v52 + 32;
              v200 = v22;
              while (1)
              {
                if (v54 >= *(v52 + 16))
                {
                  goto LABEL_213;
                }

                v56 = *(a3 + 8);
                if (!*(v56 + 16))
                {
                  break;
                }

                v57 = v52;
                v58 = (v199 + 16 * v54);
                v60 = *v58;
                v59 = v58[1];
                Hasher.init(_seed:)();

                String.hash(into:)();
                v61 = Hasher._finalize()();
                v62 = -1 << *(v56 + 32);
                v6 = v61 & ~v62;
                if (((*(v56 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
                {
LABEL_61:

                  a3 = v210;
                  v22 = v200;
LABEL_62:
                  sub_100063DF0(a3);
                  sub_100063DF0(a3);
                  goto LABEL_6;
                }

                ++v54;
                v63 = ~v62;
                while (1)
                {
                  v64 = (*(v56 + 48) + 16 * v6);
                  v65 = *v64 == v60 && v64[1] == v59;
                  if (v65 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                  {
                    break;
                  }

                  v6 = (v6 + 1) & v63;
                  if (((*(v56 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
                  {
                    goto LABEL_61;
                  }
                }

                a3 = v210;
                v52 = v57;
                v22 = v200;
                if (v54 == v201)
                {
                  goto LABEL_143;
                }
              }

              goto LABEL_62;
            }

LABEL_143:

            if (qword_10015AAC0 != -1)
            {
              swift_once();
            }

            v122 = type metadata accessor for Logger();
            sub_10000659C(v122, qword_1001696B8);

            v84 = Logger.logObject.getter();
            v123 = static os_log_type_t.debug.getter();

            v124 = os_log_type_enabled(v84, v123);
            v125 = v207;
            if (v124)
            {
              v126 = swift_slowAlloc();
              v219[0] = swift_slowAlloc();
              *v126 = 136446466;
              v127 = Array.description.getter();
              v129 = v128;

              v130 = sub_100025CF0(v127, v129, v219);

              *(v126 + 4) = v130;
              *(v126 + 12) = 2082;
              if (v125)
              {
                v131 = 0xD000000000000013;
              }

              else
              {
                v131 = 0x6E6564646968;
              }

              if (v125)
              {
                v132 = 0x80000001001216D0;
              }

              else
              {
                v132 = 0xE600000000000000;
              }

              v133 = sub_100025CF0(v131, v132, v219);

              *(v126 + 14) = v133;
              _os_log_impl(&_mh_execute_header, v84, v123, "All Features in '%{public}s' are restricted, should apply '%{public}s' visibility.", v126, 0x16u);
              swift_arrayDestroy();

              sub_100063DF0(a3);
              v96 = a3;
              goto LABEL_103;
            }

            sub_100063DF0(a3);
            v121 = a3;
            goto LABEL_138;
          }

          sub_100063D94(a3, v219);
          sub_100063D94(a3, v219);
          if (v53)
          {
            v72 = 0;
            v199 = v52 + 32;
            v198 = v52;
            while (v72 < *(v52 + 16))
            {
              v73 = *(a3 + 8);
              if (*(v73 + 16))
              {
                v74 = (v199 + 16 * v72);
                v76 = *v74;
                v75 = v74[1];
                Hasher.init(_seed:)();

                String.hash(into:)();
                v77 = Hasher._finalize()();
                v78 = -1 << *(v73 + 32);
                v79 = v77 & ~v78;
                if ((*(v73 + 56 + ((v79 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v79))
                {
                  v80 = ~v78;
                  while (1)
                  {
                    v81 = (*(v73 + 48) + 16 * v79);
                    v82 = *v81 == v76 && v81[1] == v75;
                    if (v82 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                    {
                      break;
                    }

                    v79 = (v79 + 1) & v80;
                    if (((*(v73 + 56 + ((v79 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v79) & 1) == 0)
                    {
                      goto LABEL_75;
                    }
                  }

                  v6 = v210;
                  if (qword_10015AAC0 != -1)
                  {
                    goto LABEL_215;
                  }

                  goto LABEL_95;
                }

LABEL_75:

                a3 = v210;
                v6 = v206;
                v52 = v198;
                v53 = v201;
              }

              if (++v72 == v53)
              {
                goto LABEL_90;
              }
            }

            goto LABEL_214;
          }

LABEL_90:
          sub_100063DF0(a3);
          sub_100063DF0(a3);

          goto LABEL_7;
        }

        v32 = v18[1];
        v33 = *(a3 + 8);
        if (!*(v33 + 16))
        {

          goto LABEL_7;
        }

        v34 = *v18;
        Hasher.init(_seed:)();
        String.hash(into:)();
        v35 = Hasher._finalize()();
        v36 = -1 << *(v33 + 32);
        v37 = v35 & ~v36;
        if ((*(v33 + 56 + ((v37 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v37))
        {
          v38 = ~v36;
          while (1)
          {
            v39 = (*(v33 + 48) + 16 * v37);
            v40 = *v39 == v34 && v39[1] == v32;
            if (v40 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {
              break;
            }

            v37 = (v37 + 1) & v38;
            if (((*(v33 + 56 + ((v37 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v37) & 1) == 0)
            {
              goto LABEL_5;
            }
          }

          if (qword_10015AAC0 != -1)
          {
            swift_once();
          }

          v97 = type metadata accessor for Logger();
          sub_10000659C(v97, qword_1001696B8);

          v84 = Logger.logObject.getter();
          v98 = static os_log_type_t.debug.getter();

          v99 = os_log_type_enabled(v84, v98);
          v100 = v207;
          if (!v99)
          {
            goto LABEL_139;
          }

          v101 = swift_slowAlloc();
          v219[0] = swift_slowAlloc();
          *v101 = 136446466;
          v102 = sub_100025CF0(v34, v32, v219);

          *(v101 + 4) = v102;
          *(v101 + 12) = 2082;
          if (v100)
          {
            v103 = 0xD000000000000013;
          }

          else
          {
            v103 = 0x6E6564646968;
          }

          if (v100)
          {
            v104 = 0x80000001001216D0;
          }

          else
          {
            v104 = 0xE600000000000000;
          }

          v105 = sub_100025CF0(v103, v104, v219);

          *(v101 + 14) = v105;
          v106 = "Feature '%{public}s' is restricted, should apply '%{public}s' visibility.";
LABEL_134:
          _os_log_impl(&_mh_execute_header, v84, v98, v106, v101, 0x16u);
          swift_arrayDestroy();

          goto LABEL_135;
        }
      }

      else
      {
        if (!EnumCaseMultiPayload)
        {
          v27 = *v18;
          v26 = v18[1];
          v28 = sub_10004DED0(&qword_10015B390, &qword_100110640);
          (*v204)(v15, v18 + *(v28 + 48), v6);
          sub_10002CC5C();
          if ((static NSBundle.settingsExperiencePluginExists(name:location:)() & 1) == 0)
          {

            if (qword_10015AAC0 != -1)
            {
              swift_once();
            }

            v134 = type metadata accessor for Logger();
            sub_10000659C(v134, qword_1001696B8);
            v135 = *(v209 + 16);
            v136 = v203;
            v137 = v208;
            v135(v203, v208, v6);

            v138 = Logger.logObject.getter();
            v139 = v6;
            v140 = static os_log_type_t.debug.getter();

            if (os_log_type_enabled(v138, v140))
            {
              v141 = swift_slowAlloc();
              v219[0] = swift_slowAlloc();
              *v141 = 136446722;
              v142 = sub_100025CF0(v27, v26, v219);

              *(v141 + 4) = v142;
              *(v141 + 12) = 2082;
              v135(v202, v136, v139);
              v143 = String.init<A>(describing:)();
              v145 = v144;
              v146 = *v205;
              (*v205)(v136, v139);
              v147 = sub_100025CF0(v143, v145, v219);

              *(v141 + 14) = v147;
              *(v141 + 22) = 2082;
              if (v207)
              {
                v148 = 0xD000000000000013;
              }

              else
              {
                v148 = 0x6E6564646968;
              }

              if (v207)
              {
                v149 = 0x80000001001216D0;
              }

              else
              {
                v149 = 0xE600000000000000;
              }

              v150 = sub_100025CF0(v148, v149, v219);

              *(v141 + 24) = v150;
              _os_log_impl(&_mh_execute_header, v138, v140, "Bundle '%{public}s' in location '%{public}s' does not exist, should apply '%{public}s' visibility.", v141, 0x20u);
              swift_arrayDestroy();

              v146(v208, v139);
            }

            else
            {

              v188 = *v205;
              (*v205)(v136, v139);
              v188(v137, v139);
            }

            goto LABEL_141;
          }

          (*v205)(v15, v6);

          goto LABEL_8;
        }

        v43 = *v18;
        v42 = v18[1];
        v44 = *(a3 + 16);
        v45 = *(a3 + 24);
        if (*(v45 + 16))
        {
          Hasher.init(_seed:)();
          String.hash(into:)();
          v46 = Hasher._finalize()();
          v47 = -1 << *(v45 + 32);
          v48 = v46 & ~v47;
          if (((*(v45 + 56 + ((v48 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v48) & 1) == 0)
          {
LABEL_114:

            if (qword_10015AAC0 != -1)
            {
              swift_once();
            }

            v107 = type metadata accessor for Logger();
            sub_10000659C(v107, qword_1001696B8);

            v84 = Logger.logObject.getter();
            v98 = static os_log_type_t.debug.getter();

            v108 = os_log_type_enabled(v84, v98);
            v109 = v207;
            if (v108)
            {
              v101 = swift_slowAlloc();
              v219[0] = swift_slowAlloc();
              *v101 = 136446466;
              v110 = sub_100025CF0(v43, v42, v219);

              *(v101 + 4) = v110;
              *(v101 + 12) = 2082;
              if (v109)
              {
                v111 = 0xD000000000000013;
              }

              else
              {
                v111 = 0x6E6564646968;
              }

              if (v109)
              {
                v112 = 0x80000001001216D0;
              }

              else
              {
                v112 = 0xE600000000000000;
              }

              v113 = sub_100025CF0(v111, v112, v219);

              *(v101 + 14) = v113;
              v106 = "Application '%{public}s' is not in allowed application list, should apply '%{public}s' visibility.";
              goto LABEL_134;
            }

            goto LABEL_139;
          }

          v49 = ~v47;
          while (1)
          {
            v50 = (*(v45 + 48) + 16 * v48);
            v51 = *v50 == v43 && v50[1] == v42;
            if (v51 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {
              break;
            }

            v48 = (v48 + 1) & v49;
            if (((*(v45 + 56 + ((v48 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v48) & 1) == 0)
            {
              goto LABEL_114;
            }
          }
        }

        if (!*(v44 + 16))
        {

          a3 = v210;
          goto LABEL_6;
        }

        Hasher.init(_seed:)();
        String.hash(into:)();
        v66 = Hasher._finalize()();
        v67 = -1 << *(v44 + 32);
        v68 = v66 & ~v67;
        a3 = v210;
        if ((*(v44 + 56 + ((v68 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v68))
        {
          v69 = ~v67;
          while (1)
          {
            v70 = (*(v44 + 48) + 16 * v68);
            v71 = *v70 == v43 && v70[1] == v42;
            if (v71 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {
              break;
            }

            v68 = (v68 + 1) & v69;
            if (((*(v44 + 56 + ((v68 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v68) & 1) == 0)
            {
              goto LABEL_5;
            }
          }

          if (qword_10015AAC0 != -1)
          {
            swift_once();
          }

          v114 = type metadata accessor for Logger();
          sub_10000659C(v114, qword_1001696B8);

          v84 = Logger.logObject.getter();
          v98 = static os_log_type_t.debug.getter();

          v115 = os_log_type_enabled(v84, v98);
          v116 = v207;
          if (v115)
          {
            v101 = swift_slowAlloc();
            v219[0] = swift_slowAlloc();
            *v101 = 136446466;
            v117 = sub_100025CF0(v43, v42, v219);

            *(v101 + 4) = v117;
            *(v101 + 12) = 2082;
            if (v116)
            {
              v118 = 0xD000000000000013;
            }

            else
            {
              v118 = 0x6E6564646968;
            }

            if (v116)
            {
              v119 = 0x80000001001216D0;
            }

            else
            {
              v119 = 0xE600000000000000;
            }

            v120 = sub_100025CF0(v118, v119, v219);

            *(v101 + 14) = v120;
            v106 = "Application '%{public}s' is in restricted application list, should apply '%{public}s' visibility.";
            goto LABEL_134;
          }

LABEL_139:

LABEL_140:

LABEL_141:
          LOBYTE(v19) = 1;
          return (v19 & 1);
        }
      }

LABEL_5:

LABEL_6:
      v6 = v206;
LABEL_7:
      v15 = v208;
      goto LABEL_8;
    }

    if (EnumCaseMultiPayload <= 5)
    {
      break;
    }

    if (EnumCaseMultiPayload != 7)
    {

      LOBYTE(v19) = *v18 ^ *(v18 + 1) ^ 1;
      return (v19 & 1);
    }

    v41 = *v18;
    if (v41 == (*a3 & 1))
    {

      if (qword_10015AAC0 != -1)
      {
        swift_once();
      }

      v167 = type metadata accessor for Logger();
      sub_10000659C(v167, qword_1001696B8);
      v84 = Logger.logObject.getter();
      v168 = static os_log_type_t.debug.getter();
      v169 = os_log_type_enabled(v84, v168);
      v170 = v207;
      if (!v169)
      {
        goto LABEL_140;
      }

      v171 = swift_slowAlloc();
      v172 = swift_slowAlloc();
      v219[0] = v172;
      *v171 = 67240450;
      *(v171 + 4) = v41;
      *(v171 + 8) = 2082;
      if (v170)
      {
        v173 = 0xD000000000000013;
      }

      else
      {
        v173 = 0x6E6564646968;
      }

      if (v170)
      {
        v174 = 0x80000001001216D0;
      }

      else
      {
        v174 = 0xE600000000000000;
      }

      v175 = sub_100025CF0(v173, v174, v219);

      *(v171 + 10) = v175;
      _os_log_impl(&_mh_execute_header, v84, v168, "Shared iPad is equal to '%{BOOL,public}d', should apply '%{public}s' visibility.", v171, 0x12u);
      sub_10000665C(v172);

LABEL_135:

      goto LABEL_140;
    }

LABEL_8:
    if (++v24 == v211)
    {
      goto LABEL_92;
    }
  }

  if (EnumCaseMultiPayload != 4)
  {
    v55 = *(v18 + 40);
    sub_100046A2C(v18, v219);
    if (v55 == (isFeatureEnabled(_:)() & 1))
    {

      if (qword_10015AAC0 != -1)
      {
        swift_once();
      }

      v151 = type metadata accessor for Logger();
      sub_10000659C(v151, qword_1001696B8);
      sub_10000B270(v219, v217);
      v152 = Logger.logObject.getter();
      v153 = static os_log_type_t.debug.getter();
      v154 = os_log_type_enabled(v152, v153);
      v155 = v207;
      if (v154)
      {
        v156 = swift_slowAlloc();
        v216 = swift_slowAlloc();
        *v156 = 136315650;
        sub_100018544(v217, v218);
        dispatch thunk of FeatureFlagsKey.domain.getter();
        v214 = StaticString.description.getter();
        v215 = v157;
        v158._countAndFlagsBits = 47;
        v158._object = 0xE100000000000000;
        String.append(_:)(v158);
        sub_100018544(v217, v218);
        dispatch thunk of FeatureFlagsKey.feature.getter();
        v159._countAndFlagsBits = StaticString.description.getter();
        String.append(_:)(v159);

        v160 = v214;
        v161 = v215;
        sub_10000665C(v217);
        v162 = sub_100025CF0(v160, v161, &v216);

        *(v156 + 4) = v162;
        *(v156 + 12) = 1026;
        *(v156 + 14) = v55;
        *(v156 + 18) = 2082;
        if (v155)
        {
          v163 = 0xD000000000000013;
        }

        else
        {
          v163 = 0x6E6564646968;
        }

        if (v155)
        {
          v164 = 0x80000001001216D0;
        }

        else
        {
          v164 = 0xE600000000000000;
        }

        v165 = sub_100025CF0(v163, v164, &v216);

        *(v156 + 20) = v165;
        _os_log_impl(&_mh_execute_header, v152, v153, "Feature Flag '%s' is equal to '%{BOOL,public}d', should apply '%{public}s' visibility.", v156, 0x1Cu);
        swift_arrayDestroy();

        v166 = v219;
      }

      else
      {

        sub_10000665C(v219);
        v166 = v217;
      }

      sub_10000665C(v166);
      goto LABEL_141;
    }

    sub_10000665C(v219);
    goto LABEL_8;
  }

  v29 = *(v18 + 8);
  result = MobileGestalt_get_current_device();
  if (result)
  {
    v31 = result;
    v219[0] = result;
    swift_getAtKeyPath();

    if (v29 == LOBYTE(v217[0]))
    {

      v176 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
      v178 = v177;

      if (v178)
      {
        v179 = v207;
        if (qword_10015AAC0 != -1)
        {
          swift_once();
        }

        v180 = type metadata accessor for Logger();
        sub_10000659C(v180, qword_1001696B8);

        v181 = Logger.logObject.getter();
        v182 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v181, v182))
        {
          v183 = swift_slowAlloc();
          v219[0] = swift_slowAlloc();
          *v183 = 136446722;
          v184 = sub_100025CF0(v176, v178, v219);

          *(v183 + 4) = v184;
          *(v183 + 12) = 1026;
          *(v183 + 14) = v29;
          *(v183 + 18) = 2082;
          if (v179)
          {
            v185 = 0xD000000000000013;
          }

          else
          {
            v185 = 0x6E6564646968;
          }

          if (v179)
          {
            v186 = 0x80000001001216D0;
          }

          else
          {
            v186 = 0xE600000000000000;
          }

          v187 = sub_100025CF0(v185, v186, v219);

          *(v183 + 20) = v187;
          _os_log_impl(&_mh_execute_header, v181, v182, "Capability '%{public}s' is equal to '%{BOOL,public}d', should apply '%{public}s' visibility.", v183, 0x1Cu);
          swift_arrayDestroy();
        }

        else
        {
        }
      }

      else
      {
        v189 = v207;
        if (qword_10015AAC0 != -1)
        {
          swift_once();
        }

        v190 = type metadata accessor for Logger();
        sub_10000659C(v190, qword_1001696B8);
        v181 = Logger.logObject.getter();
        v191 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v181, v191))
        {
          v192 = swift_slowAlloc();
          v193 = swift_slowAlloc();
          v219[0] = v193;
          *v192 = 67240450;
          *(v192 + 4) = v29;
          *(v192 + 8) = 2082;
          if (v189)
          {
            v194 = 0xD000000000000013;
          }

          else
          {
            v194 = 0x6E6564646968;
          }

          if (v189)
          {
            v195 = 0x80000001001216D0;
          }

          else
          {
            v195 = 0xE600000000000000;
          }

          v196 = sub_100025CF0(v194, v195, v219);

          *(v192 + 10) = v196;
          _os_log_impl(&_mh_execute_header, v181, v191, "Capability is equal to '%{BOOL,public}d', should apply '%{public}s' visibility.", v192, 0x12u);
          sub_10000665C(v193);
        }
      }

      goto LABEL_141;
    }

    goto LABEL_8;
  }

  __break(1u);
  return result;
}

uint64_t sub_100063C90(uint64_t a1, uint64_t a2)
{
  v4 = a1 + 64;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 64);
  v8 = (v5 + 63) >> 6;

  v10 = 0;
  while (v7)
  {
    v11 = v10;
LABEL_10:
    v12 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v13 = *(*(a1 + 48) + (v12 | (v11 << 6)));

    LOBYTE(v13) = sub_100062250(v13, a1, a2);

    if (v13)
    {
      v14 = 0;
LABEL_13:

      return v14;
    }
  }

  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v11 >= v8)
    {
      v14 = 1;
      goto LABEL_13;
    }

    v7 = *(v4 + 8 * v11);
    ++v10;
    if (v7)
    {
      v10 = v11;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100063E44(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for GenerativeModelsAvailability.Availability.UnavailableInfo.UnavailableReason();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100063E88()
{
  v2 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = sub_1000640F4;
  }

  else
  {
    *(v2 + 97) = *(v2 + 96);
    v3 = sub_100063FA4;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100063FC0(uint64_t a1)
{
  if (*(v1 + 97) == 1)
  {

    v2 = *(v1 + 8);

    return v2();
  }

  else
  {
    v5 = *(v1 + 56);
    v4 = *(v1 + 64);
    v6 = *(v1 + 48);
    AsyncStream.Continuation.yield<A>()();
    (*(v5 + 8))(v4, v6);
    v7 = swift_task_alloc();
    *(v1 + 80) = v7;
    v8 = sub_10004DED0(&unk_10015F9F0, &qword_100112470);
    *v7 = v1;
    v7[1] = sub_100063E88;

    return AsyncDebounceSequence.Iterator.next()(v1 + 96, v8);
  }
}

uint64_t sub_1000640F4()
{
  *(v0 + 24) = *(v0 + 88);
  sub_10004DED0(&unk_10015C800, &unk_100112BC0);
  swift_dynamicCast();

  return swift_willThrowTypedImpl();
}

uint64_t sub_100064180(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = swift_task_alloc();
  v2[5] = v3;
  v4 = sub_10004DED0(&unk_10015F9F0, &qword_100112470);
  *v3 = v2;
  v3[1] = sub_100064234;

  return AsyncDebounceSequence.Iterator.next()(v2 + 7, v4);
}

uint64_t sub_100064234()
{
  v2 = *v1;
  *(v2 + 48) = v0;

  v3 = *(v2 + 24);
  if (v0)
  {
    if (v3)
    {
      swift_getObjectType();
      v4 = dispatch thunk of Actor.unownedExecutor.getter();
      v6 = v5;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v7 = sub_1000643F0;
  }

  else
  {
    *(v2 + 57) = *(v2 + 56);
    if (v3)
    {
      swift_getObjectType();
      v4 = dispatch thunk of Actor.unownedExecutor.getter();
      v6 = v8;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v7 = sub_1000643D4;
  }

  return _swift_task_switch(v7, v4, v6);
}

uint64_t sub_1000643F0()
{
  v0[2] = v0[6];
  sub_10004DED0(&unk_10015C800, &unk_100112BC0);
  swift_dynamicCast();
  swift_willThrowTypedImpl();
  v1 = v0[1];

  return v1();
}

uint64_t sub_100064498()
{
  v1 = v0;
  v2 = sub_10004DED0(&unk_10015FAA0, qword_100112870);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v24 - v4;
  v27 = sub_10004DED0(&qword_10015C440, &qword_1001123D0);
  v6 = *(v27 - 8);
  __chkstk_darwin(v27);
  v8 = &v24 - v7;
  v28 = OBJC_IVAR____TtC11SettingsApp21AccountsStateProvider_observationTasks;
  v9 = *(*(v1 + OBJC_IVAR____TtC11SettingsApp21AccountsStateProvider_observationTasks) + 16);
  if (v9)
  {
    v29 = v6;
    v25 = v3;
    v26 = v2;

    v10 = 32;
    do
    {

      Task.cancel()();

      v10 += 8;
      --v9;
    }

    while (v9);

    v3 = v25;
    v2 = v26;
    v6 = v29;
  }

  v11 = OBJC_IVAR____TtC11SettingsApp21AccountsStateProvider_snapshotsContinuation;
  v12 = v27;
  (*(v6 + 16))(v8, v1 + OBJC_IVAR____TtC11SettingsApp21AccountsStateProvider_snapshotsContinuation, v27);
  AsyncStream.Continuation.finish()();
  v13 = *(v6 + 8);
  v29 = v6 + 8;
  v13(v8, v12);
  v14 = OBJC_IVAR____TtC11SettingsApp21AccountsStateProvider_onReceiveAccountStoreEventContinuation;
  (*(v3 + 16))(v5, v1 + OBJC_IVAR____TtC11SettingsApp21AccountsStateProvider_onReceiveAccountStoreEventContinuation, v2);
  AsyncStream.Continuation.finish()();
  v15 = *(v3 + 8);
  v15(v5, v2);
  v16 = OBJC_IVAR____TtC11SettingsApp21AccountsStateProvider_observationToken;
  v17 = *(v1 + OBJC_IVAR____TtC11SettingsApp21AccountsStateProvider_observationToken);
  if (v17)
  {
    v18 = v17;
    dispatch thunk of NSKeyValueObservation.invalidate()();
  }

  v19 = OBJC_IVAR____TtC11SettingsApp21AccountsStateProvider_snapshots;
  v20 = sub_10004DED0(&qword_10015C448, qword_1001123D8);
  (*(*(v20 - 8) + 8))(v1 + v19, v20);
  v13((v1 + v11), v12);
  v21 = OBJC_IVAR____TtC11SettingsApp21AccountsStateProvider_onReceiveAccountStoreEvent;
  v22 = sub_10004DED0(&qword_10015C900, &qword_1001123C0);
  (*(*(v22 - 8) + 8))(v1 + v21, v22);
  v15((v1 + v14), v2);

  swift_defaultActor_destroy();
  return v1;
}

uint64_t sub_100064834()
{
  sub_100064498();

  return _swift_defaultActor_deallocate(v0);
}

id sub_100064874(uint64_t a1)
{
  v2 = v1;
  v3 = *(v1 + 160);
  swift_willThrow();

  result = [*(v2 + 152) defaultStore];
  if (!result)
  {
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  v5 = result;
  v6 = [objc_allocWithZone(AIDAServiceOwnersManager) initWithAccountStore:result];

  v7 = [v6 accountForService:AIDAServiceTypeStore];
  v72 = v7;
  if (v7)
  {
    v8 = v7;
    v9 = [v8 userFullName];
    if (v9)
    {
      v10 = v9;
      v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v70 = v12;
      v71 = v11;

      v69 = [v8 aa_isCloudSubscriber];
      goto LABEL_20;
    }

    goto LABEL_18;
  }

  v13 = objc_opt_self();
  v14 = [v13 sharedInstance];
  v15 = [v14 protoAccount];

  if (!v15)
  {
LABEL_12:
    v22 = [v13 sharedInstance];
    v23 = [v22 protoAccount];

    if (v23)
    {
      if ([v23 proto_ageRange] == 2)
      {
        v24 = [objc_opt_self() sharedManager];
        v25 = [v24 isAgeBasedAccountSupportEnabled];

        if (v25)
        {
          v26 = [objc_allocWithZone(AKAgeRangeSettingsCache) init];
          v27 = [v26 ageRangeSettings];

          if (v27)
          {
            v28 = [v27 u18Limit];

            v29 = v28 - 1;
          }

          else
          {
            v29 = 17;
          }

          v71 = v29;
          v64 = [objc_allocWithZone(AKAgeRangeSettingsCache) init];
          v65 = [v64 ageRangeSettings];

          if (v65)
          {
            v66 = [v65 u13Limit];

            v70 = v66;
            v21 = 128;
            goto LABEL_19;
          }

          v69 = 128;
          v70 = 13;
          goto LABEL_20;
        }
      }
    }

LABEL_18:
    v70 = 0;
    v71 = 0;
    v21 = 192;
    goto LABEL_19;
  }

  if ([v15 proto_ageRange] != 1 || (v16 = objc_msgSend(objc_opt_self(), "sharedManager"), v17 = objc_msgSend(v16, "isAgeAttestationPhase1Enabled"), v16, !v17))
  {

    goto LABEL_12;
  }

  v18 = [objc_allocWithZone(AKAgeRangeSettingsCache) init];
  v19 = [v18 ageRangeSettings];

  if (v19)
  {
    v20 = [v19 u13Limit];

    v70 = 0;
    v71 = v20 - 1;
    v21 = 64;
LABEL_19:
    v69 = v21;
    goto LABEL_20;
  }

  v69 = 64;
  v70 = 0;
  v71 = 12;
LABEL_20:
  result = [*(v2 + 152) defaultStore];
  if (!result)
  {
LABEL_60:
    __break(1u);
    return result;
  }

  v30 = result;
  v31 = [result dmc_visibleSecondaryRemoteManagementAccounts];

  sub_100018308();
  v32 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v32 >> 62)
  {
LABEL_50:
    v33 = _CocoaArrayWrapper.endIndex.getter();
    v68 = v2;
    if (v33)
    {
LABEL_23:
      v2 = 0;
      v75 = v32 & 0xFFFFFFFFFFFFFF8;
      v76 = v32 & 0xC000000000000001;
      v78 = _swiftEmptyArrayStorage;
      v73 = v33;
      v74 = v32;
      while (1)
      {
        if (v76)
        {
          v35 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v2 >= *(v75 + 16))
          {
            goto LABEL_49;
          }

          v35 = *(v32 + 8 * v2 + 32);
        }

        v36 = v35;
        v32 = v2 + 1;
        if (__OFADD__(v2, 1))
        {
          __break(1u);
LABEL_49:
          __break(1u);
          goto LABEL_50;
        }

        result = [v35 identifier];
        if (!result)
        {
          break;
        }

        v37 = result;
        v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v40 = v39;
        result = [v36 accountDescription];
        if (!result)
        {
          goto LABEL_56;
        }

        v41 = result;
        v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v44 = v43;

        result = [v36 username];
        if (!result)
        {
          goto LABEL_57;
        }

        v45 = result;

        v46 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v48 = v47;

        v77 = v2 + 1;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v78 = sub_1000C50C0(0, *(v78 + 2) + 1, 1, v78);
        }

        v50 = *(v78 + 2);
        v49 = *(v78 + 3);
        if (v50 >= v49 >> 1)
        {
          v78 = sub_1000C50C0((v49 > 1), v50 + 1, 1, v78);
        }

        *(v78 + 2) = v50 + 1;
        v51 = &v78[56 * v50];
        *(v51 + 4) = v38;
        *(v51 + 5) = v40;
        *(v51 + 6) = v42;
        *(v51 + 7) = v44;
        *(v51 + 8) = v46;
        *(v51 + 9) = v48;
        v51[80] = 0;
        v52 = [v36 dmc_bearerReauthURL];
        if (v52)
        {

          result = [v36 identifier];
          v32 = v74;
          if (!result)
          {
            goto LABEL_58;
          }

          v53 = result;

          v54 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v56 = v55;

          v57 = [objc_opt_self() mainBundle];
          v80._object = 0x800000010011EB70;
          v58._countAndFlagsBits = 0x6150207265746E45;
          v58._object = 0xEE0064726F777373;
          v59._countAndFlagsBits = 0;
          v59._object = 0xE000000000000000;
          v80._countAndFlagsBits = 0xD000000000000014;
          v60 = NSLocalizedString(_:tableName:bundle:value:comment:)(v58, 0, v57, v59, v80);

          v62 = *(v78 + 2);
          v61 = *(v78 + 3);
          if (v62 >= v61 >> 1)
          {
            v78 = sub_1000C50C0((v61 > 1), v62 + 1, 1, v78);
          }

          v34 = v73;

          *(v78 + 2) = v62 + 1;
          v63 = &v78[56 * v62];
          *(v63 + 4) = v54;
          *(v63 + 5) = v56;
          *(v63 + 3) = v60;
          *(v63 + 4) = xmmword_100110E00;
          v63[80] = 1;
        }

        else
        {

          v34 = v73;
          v32 = v74;
        }

        ++v2;
        if (v77 == v34)
        {
          goto LABEL_52;
        }
      }

      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
      goto LABEL_59;
    }
  }

  else
  {
    v33 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v68 = v2;
    if (v33)
    {
      goto LABEL_23;
    }
  }

  v78 = _swiftEmptyArrayStorage;
LABEL_52:

  v67 = *(v68 + 8);

  return v67(v71, v70, v69, v78);
}

void *sub_100065070(uint64_t a1)
{
  v2 = type metadata accessor for PresentationDetent();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_10004DED0(&qword_10015C480, &qword_100112498);
    v9 = static _SetStorage.allocate(capacity:)();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_10006555C(&qword_10015C488, &protocol conformance descriptor for PresentationDetent);
      v16 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v6, *(v9 + 48) + v18 * v14, v2);
          sub_10006555C(&qword_10015C490, &protocol conformance descriptor for PresentationDetent);
          v23 = dispatch thunk of static Equatable.== infix(_:_:)();
          v24 = *v15;
          (*v15)(v6, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

void *sub_100065368(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10004DED0(&qword_10015C478, &qword_100112490);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v25 = v1;
    v26 = a1 + 32;
    v6 = v1;
    while (1)
    {
      v7 = *(v26 + 8 * v4);
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      Hasher.init(_seed:)();
      v27 = v7;
      String.hash(into:)();
      v8 = Hasher._finalize()();

      v10 = -1 << *(v3 + 32);
      v11 = v8 & ~v10;
      v12 = v11 >> 6;
      v13 = *(v5 + 8 * (v11 >> 6));
      v14 = 1 << v11;
      if (((1 << v11) & v13) == 0)
      {
        goto LABEL_15;
      }

      v15 = ~v10;
      do
      {
        v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v18 = v17;
        if (v16 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v18 == v19)
        {

LABEL_4:
          v6 = v25;
          goto LABEL_5;
        }

        v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v21)
        {

          goto LABEL_4;
        }

        v11 = (v11 + 1) & v15;
        v12 = v11 >> 6;
        v13 = *(v5 + 8 * (v11 >> 6));
        v14 = 1 << v11;
      }

      while (((1 << v11) & v13) != 0);
      v6 = v25;
LABEL_15:
      *(v5 + 8 * v12) = v14 | v13;
      *(*(v3 + 48) + 8 * v11) = v27;
      v22 = *(v3 + 16);
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        __break(1u);
        return result;
      }

      *(v3 + 16) = v24;
LABEL_5:
      if (++v4 == v6)
      {
        return v3;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

uint64_t sub_10006555C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PresentationDetent();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1000655A4()
{
  result = qword_10015C498;
  if (!qword_10015C498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015C498);
  }

  return result;
}

Swift::Int sub_1000655F8(Swift::UInt a1, Swift::UInt a2, unsigned __int8 a3, uint64_t a4)
{
  Hasher.init(_seed:)();
  if ((a3 >> 6) > 1u)
  {
    if (a3 >> 6 == 2)
    {
      Hasher._combine(_:)(3uLL);
      Hasher._combine(_:)(a1);
      v8 = a2;
    }

    else
    {
      v8 = 0;
    }

    goto LABEL_8;
  }

  if (a3 >> 6)
  {
    Hasher._combine(_:)(2uLL);
    v8 = a1;
LABEL_8:
    Hasher._combine(_:)(v8);
    goto LABEL_9;
  }

  Hasher._combine(_:)(1uLL);
  String.hash(into:)();
  Hasher._combine(_:)(a3 & 1);
LABEL_9:
  sub_1000658BC(v10, a4);
  return Hasher._finalize()();
}

void sub_100065710(uint64_t a1)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = v5 >> 6;
  if (v5 >> 6 > 1)
  {
    if (v7 == 2)
    {
      Hasher._combine(_:)(3uLL);
      Hasher._combine(_:)(v3);
      v8 = v4;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    if (!v7)
    {
      Hasher._combine(_:)(1uLL);
      String.hash(into:)();
      Hasher._combine(_:)(v5 & 1);
      goto LABEL_9;
    }

    Hasher._combine(_:)(2uLL);
    v8 = v3;
  }

  Hasher._combine(_:)(v8);
LABEL_9:

  sub_1000658BC(a1, v6);
}

Swift::Int sub_1000657E0(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  Hasher.init(_seed:)();
  v6 = v4 >> 6;
  if (v4 >> 6 > 1)
  {
    if (v6 == 2)
    {
      Hasher._combine(_:)(3uLL);
      Hasher._combine(_:)(v2);
      v7 = v3;
    }

    else
    {
      v7 = 0;
    }

    goto LABEL_8;
  }

  if (v6)
  {
    Hasher._combine(_:)(2uLL);
    v7 = v2;
LABEL_8:
    Hasher._combine(_:)(v7);
    goto LABEL_9;
  }

  Hasher._combine(_:)(1uLL);
  String.hash(into:)();
  Hasher._combine(_:)(v4 & 1);
LABEL_9:
  sub_1000658BC(v9, v5);
  return Hasher._finalize()();
}

void sub_1000658BC(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  Hasher._combine(_:)(v3);
  if (v3)
  {
    v4 = (a2 + 80);
    do
    {
      v5 = *(v4 - 6);
      v6 = *(v4 - 5);
      v7 = *(v4 - 4);
      v8 = *(v4 - 3);
      v9 = *(v4 - 2);
      v10 = *(v4 - 1);
      v11 = *v4;
      if (*v4)
      {
        Hasher._combine(_:)(1uLL);

        String.hash(into:)();
        String.hash(into:)();
        Hasher._combine(_:)(v9);
      }

      else
      {
        Hasher._combine(_:)(0);

        String.hash(into:)();
        String.hash(into:)();
        String.hash(into:)();
      }

      sub_100065B0C(v5, v6, v7, v8, v9, v10, v11);
      v4 += 56;
      --v3;
    }

    while (v3);
  }
}

uint64_t sub_1000659EC(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8)
{
  if ((a3 >> 6) > 1u)
  {
    if (a3 >> 6 == 2)
    {
      if ((a7 & 0xC0) != 0x80 || a1 != a5 || a2 != a6)
      {
        return 0;
      }
    }

    else if (a7 < 0xC0u || a6 | a5 || a7 != 192)
    {
      return 0;
    }
  }

  else if (a3 >> 6)
  {
    if ((a7 & 0xC0) != 0x40 || a1 != a5)
    {
      return 0;
    }
  }

  else
  {
    if (a7 >= 0x40u)
    {
      return 0;
    }

    if (a1 == a5 && a2 == a6)
    {
      if ((a3 ^ a7))
      {
        return 0;
      }
    }

    else
    {
      v9 = a4;
      v10 = a8;
      if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        return 0;
      }

      a4 = v9;
      a8 = v10;
      if ((a3 ^ a7))
      {
        return 0;
      }
    }
  }

  return sub_10006C604(a4, a8);
}

uint64_t sub_100065B0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{

  if ((a7 & 1) == 0)
  {
  }

  return result;
}

unint64_t sub_100065B78()
{
  result = qword_10015C4A0;
  if (!qword_10015C4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015C4A0);
  }

  return result;
}

uint64_t sub_100065BCC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v5[2] = *(a1 + 32);
  v6 = *(a1 + 48);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v7[2] = *(a2 + 32);
  v8 = *(a2 + 48);
  return sub_1000663C4(v5, v7) & 1;
}

Swift::Int sub_100065C28()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 48);
  Hasher.init(_seed:)();
  if (v2)
  {
    Hasher._combine(_:)(1uLL);
    String.hash(into:)();
    String.hash(into:)();
    Hasher._combine(_:)(v1);
  }

  else
  {
    Hasher._combine(_:)(0);
    String.hash(into:)();
    String.hash(into:)();
    String.hash(into:)();
  }

  return Hasher._finalize()();
}