unint64_t sub_1003753B0()
{
  result = qword_10118CB98;
  if (!qword_10118CB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118CB98);
  }

  return result;
}

unint64_t sub_100375408()
{
  result = qword_10118CBA0;
  if (!qword_10118CBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118CBA0);
  }

  return result;
}

unint64_t sub_100375460()
{
  result = qword_10118CBA8;
  if (!qword_10118CBA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118CBA8);
  }

  return result;
}

void sub_1003754F0(__int16 a1)
{
  v1 = a1;
  if ((a1 & 0xFF00) != 0x200)
  {
    type metadata accessor for MusicLibrary();
    static MusicLibrary.shared.getter();
    v2 = static MusicLibrary.== infix(_:_:)();

    v3 = &off_101098A68;
    if (v2)
    {
      v4 = &off_101098A40;
    }

    else
    {
      v4 = &off_101098A68;
    }

    v5 = v4[2];
    if (!v5)
    {
LABEL_71:

      return;
    }

    v6 = 0;
    if (v2)
    {
      v3 = &off_101098A40;
    }

    v7 = v3 + 4;
    while (1)
    {
      if (v6 >= v4[2])
      {
        __break(1u);
        return;
      }

      v8 = *(v7 + v6);
      if (v8 > 3)
      {
        if (*(v7 + v6) > 5u)
        {
          if (v8 == 6)
          {
            v13 = 0xD000000000000010;
            v14 = 0x8000000100E3C6C0;
            if (v1 > 3u)
            {
              goto LABEL_38;
            }
          }

          else
          {
            v13 = 0x7473696C79616C70;
            v14 = 0xEC00000065707954;
            if (v1 > 3u)
            {
              goto LABEL_38;
            }
          }
        }

        else
        {
          if (v8 == 4)
          {
            v13 = 0x656C746974;
          }

          else
          {
            v13 = 0x79616C507473616CLL;
          }

          if (v8 == 4)
          {
            v14 = 0xE500000000000000;
          }

          else
          {
            v14 = 0xEE00657461446465;
          }

          if (v1 > 3u)
          {
            goto LABEL_38;
          }
        }
      }

      else
      {
        v9 = 0x44657361656C6572;
        if (v8 != 2)
        {
          v9 = 1918985593;
        }

        v10 = 0xEB00000000657461;
        if (v8 != 2)
        {
          v10 = 0xE400000000000000;
        }

        v11 = 0xD000000000000010;
        if (!*(v7 + v6))
        {
          v11 = 0x614E747369747261;
        }

        v12 = 0xEA0000000000656DLL;
        if (*(v7 + v6))
        {
          v12 = 0x8000000100E3C680;
        }

        if (*(v7 + v6) <= 1u)
        {
          v13 = v11;
        }

        else
        {
          v13 = v9;
        }

        if (*(v7 + v6) <= 1u)
        {
          v14 = v12;
        }

        else
        {
          v14 = v10;
        }

        if (v1 > 3u)
        {
LABEL_38:
          v15 = 0xD000000000000010;
          if (v1 != 6)
          {
            v15 = 0x7473696C79616C70;
          }

          v16 = 0xEC00000065707954;
          if (v1 == 6)
          {
            v16 = 0x8000000100E3C6C0;
          }

          v17 = 0x79616C507473616CLL;
          if (v1 == 4)
          {
            v17 = 0x656C746974;
          }

          v18 = 0xEE00657461446465;
          if (v1 == 4)
          {
            v18 = 0xE500000000000000;
          }

          if (v1 <= 5u)
          {
            v19 = v17;
          }

          else
          {
            v19 = v15;
          }

          if (v1 <= 5u)
          {
            v20 = v18;
          }

          else
          {
            v20 = v16;
          }

          if (v13 != v19)
          {
            goto LABEL_60;
          }

          goto LABEL_59;
        }
      }

      if (v1 > 1u)
      {
        if (v1 == 2)
        {
          v23 = 0x44657361656C6572;
        }

        else
        {
          v23 = 1918985593;
        }

        if (v1 == 2)
        {
          v20 = 0xEB00000000657461;
        }

        else
        {
          v20 = 0xE400000000000000;
        }

        if (v13 != v23)
        {
          goto LABEL_60;
        }
      }

      else
      {
        v21 = 0x614E747369747261;
        v20 = 0xEA0000000000656DLL;
        if (v1)
        {
          v21 = 0xD000000000000010;
          v20 = 0x8000000100E3C680;
        }

        if (v13 != v21)
        {
          goto LABEL_60;
        }
      }

LABEL_59:
      if (v14 == v20)
      {

LABEL_73:

        return;
      }

LABEL_60:
      v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v22)
      {
        goto LABEL_73;
      }

      if (v5 == ++v6)
      {
        goto LABEL_71;
      }
    }
  }
}

void sub_100375870(__int16 a1)
{
  v2 = a1;
  if ((a1 & 0xFF00) != 0x200)
  {
    v3 = *(v1 + *(_s10TVEpisodesVMa(0) + 44));
    v4 = *(v3 + 16);
    if (v4)
    {
      v5 = 0;
      v6 = v3 + 32;
      while (1)
      {
        if (v5 >= *(v3 + 16))
        {
          __break(1u);
          return;
        }

        v7 = *(v6 + v5);
        if (v7 > 3)
        {
          if (*(v6 + v5) > 5u)
          {
            if (v7 == 6)
            {
              v12 = 0xD000000000000010;
              v13 = 0x8000000100E3C6C0;
              if (v2 > 3u)
              {
                goto LABEL_33;
              }
            }

            else
            {
              v12 = 0x7473696C79616C70;
              v13 = 0xEC00000065707954;
              if (v2 > 3u)
              {
                goto LABEL_33;
              }
            }
          }

          else
          {
            if (v7 == 4)
            {
              v12 = 0x656C746974;
            }

            else
            {
              v12 = 0x79616C507473616CLL;
            }

            if (v7 == 4)
            {
              v13 = 0xE500000000000000;
            }

            else
            {
              v13 = 0xEE00657461446465;
            }

            if (v2 > 3u)
            {
              goto LABEL_33;
            }
          }
        }

        else
        {
          v8 = 0x44657361656C6572;
          if (v7 != 2)
          {
            v8 = 1918985593;
          }

          v9 = 0xEB00000000657461;
          if (v7 != 2)
          {
            v9 = 0xE400000000000000;
          }

          v10 = 0xD000000000000010;
          if (!*(v6 + v5))
          {
            v10 = 0x614E747369747261;
          }

          v11 = 0xEA0000000000656DLL;
          if (*(v6 + v5))
          {
            v11 = 0x8000000100E3C680;
          }

          if (*(v6 + v5) <= 1u)
          {
            v12 = v10;
          }

          else
          {
            v12 = v8;
          }

          if (*(v6 + v5) <= 1u)
          {
            v13 = v11;
          }

          else
          {
            v13 = v9;
          }

          if (v2 > 3u)
          {
LABEL_33:
            v14 = 0xD000000000000010;
            if (v2 != 6)
            {
              v14 = 0x7473696C79616C70;
            }

            v15 = 0xEC00000065707954;
            if (v2 == 6)
            {
              v15 = 0x8000000100E3C6C0;
            }

            v16 = 0x79616C507473616CLL;
            if (v2 == 4)
            {
              v16 = 0x656C746974;
            }

            v17 = 0xEE00657461446465;
            if (v2 == 4)
            {
              v17 = 0xE500000000000000;
            }

            if (v2 <= 5u)
            {
              v18 = v16;
            }

            else
            {
              v18 = v14;
            }

            if (v2 <= 5u)
            {
              v19 = v17;
            }

            else
            {
              v19 = v15;
            }

            if (v12 != v18)
            {
              goto LABEL_55;
            }

            goto LABEL_54;
          }
        }

        if (v2 > 1u)
        {
          if (v2 == 2)
          {
            v22 = 0x44657361656C6572;
          }

          else
          {
            v22 = 1918985593;
          }

          if (v2 == 2)
          {
            v19 = 0xEB00000000657461;
          }

          else
          {
            v19 = 0xE400000000000000;
          }

          if (v12 != v22)
          {
            goto LABEL_55;
          }
        }

        else
        {
          v20 = 0x614E747369747261;
          v19 = 0xEA0000000000656DLL;
          if (v2)
          {
            v20 = 0xD000000000000010;
            v19 = 0x8000000100E3C680;
          }

          if (v12 != v20)
          {
            goto LABEL_55;
          }
        }

LABEL_54:
        if (v13 == v19)
        {

          return;
        }

LABEL_55:
        v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v21 & 1) == 0 && v4 != ++v5)
        {
          continue;
        }

        return;
      }
    }
  }
}

void sub_100375B90(__int16 a1)
{
  v1 = a1;
  if ((a1 & 0xFF00) != 0x200)
  {
    type metadata accessor for MusicLibrary();
    static MusicLibrary.shared.getter();
    v2 = static MusicLibrary.== infix(_:_:)();

    v3 = &off_101098AB8;
    if (v2)
    {
      v4 = &off_101098A90;
    }

    else
    {
      v4 = &off_101098AB8;
    }

    v5 = v4[2];
    if (!v5)
    {
LABEL_71:

      return;
    }

    v6 = 0;
    if (v2)
    {
      v3 = &off_101098A90;
    }

    v7 = v3 + 4;
    while (1)
    {
      if (v6 >= v4[2])
      {
        __break(1u);
        return;
      }

      v8 = *(v7 + v6);
      if (v8 > 3)
      {
        if (*(v7 + v6) > 5u)
        {
          if (v8 == 6)
          {
            v13 = 0xD000000000000010;
            v14 = 0x8000000100E3C6C0;
            if (v1 > 3u)
            {
              goto LABEL_38;
            }
          }

          else
          {
            v13 = 0x7473696C79616C70;
            v14 = 0xEC00000065707954;
            if (v1 > 3u)
            {
              goto LABEL_38;
            }
          }
        }

        else
        {
          if (v8 == 4)
          {
            v13 = 0x656C746974;
          }

          else
          {
            v13 = 0x79616C507473616CLL;
          }

          if (v8 == 4)
          {
            v14 = 0xE500000000000000;
          }

          else
          {
            v14 = 0xEE00657461446465;
          }

          if (v1 > 3u)
          {
            goto LABEL_38;
          }
        }
      }

      else
      {
        v9 = 0x44657361656C6572;
        if (v8 != 2)
        {
          v9 = 1918985593;
        }

        v10 = 0xEB00000000657461;
        if (v8 != 2)
        {
          v10 = 0xE400000000000000;
        }

        v11 = 0xD000000000000010;
        if (!*(v7 + v6))
        {
          v11 = 0x614E747369747261;
        }

        v12 = 0xEA0000000000656DLL;
        if (*(v7 + v6))
        {
          v12 = 0x8000000100E3C680;
        }

        if (*(v7 + v6) <= 1u)
        {
          v13 = v11;
        }

        else
        {
          v13 = v9;
        }

        if (*(v7 + v6) <= 1u)
        {
          v14 = v12;
        }

        else
        {
          v14 = v10;
        }

        if (v1 > 3u)
        {
LABEL_38:
          v15 = 0xD000000000000010;
          if (v1 != 6)
          {
            v15 = 0x7473696C79616C70;
          }

          v16 = 0xEC00000065707954;
          if (v1 == 6)
          {
            v16 = 0x8000000100E3C6C0;
          }

          v17 = 0x79616C507473616CLL;
          if (v1 == 4)
          {
            v17 = 0x656C746974;
          }

          v18 = 0xEE00657461446465;
          if (v1 == 4)
          {
            v18 = 0xE500000000000000;
          }

          if (v1 <= 5u)
          {
            v19 = v17;
          }

          else
          {
            v19 = v15;
          }

          if (v1 <= 5u)
          {
            v20 = v18;
          }

          else
          {
            v20 = v16;
          }

          if (v13 != v19)
          {
            goto LABEL_60;
          }

          goto LABEL_59;
        }
      }

      if (v1 > 1u)
      {
        if (v1 == 2)
        {
          v23 = 0x44657361656C6572;
        }

        else
        {
          v23 = 1918985593;
        }

        if (v1 == 2)
        {
          v20 = 0xEB00000000657461;
        }

        else
        {
          v20 = 0xE400000000000000;
        }

        if (v13 != v23)
        {
          goto LABEL_60;
        }
      }

      else
      {
        v21 = 0x614E747369747261;
        v20 = 0xEA0000000000656DLL;
        if (v1)
        {
          v21 = 0xD000000000000010;
          v20 = 0x8000000100E3C680;
        }

        if (v13 != v21)
        {
          goto LABEL_60;
        }
      }

LABEL_59:
      if (v14 == v20)
      {

LABEL_73:

        return;
      }

LABEL_60:
      v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v22)
      {
        goto LABEL_73;
      }

      if (v5 == ++v6)
      {
        goto LABEL_71;
      }
    }
  }
}

void sub_100375F40(__int16 a1, uint64_t (*a2)(void))
{
  v2 = a1;
  if ((a1 & 0xFF00) != 0x200)
  {
    v3 = a2();
    v4 = *(v3 + 16);
    if (!v4)
    {
LABEL_66:

      return;
    }

    v5 = 0;
    while (1)
    {
      if (v5 >= *(v3 + 16))
      {
        __break(1u);
        return;
      }

      v6 = *(v3 + v5 + 32);
      if (v6 > 3)
      {
        if (*(v3 + v5 + 32) > 5u)
        {
          if (v6 == 6)
          {
            v11 = 0xD000000000000010;
            v12 = 0x8000000100E3C6C0;
            if (v2 > 3u)
            {
              goto LABEL_33;
            }
          }

          else
          {
            v11 = 0x7473696C79616C70;
            v12 = 0xEC00000065707954;
            if (v2 > 3u)
            {
              goto LABEL_33;
            }
          }
        }

        else
        {
          if (v6 == 4)
          {
            v11 = 0x656C746974;
          }

          else
          {
            v11 = 0x79616C507473616CLL;
          }

          if (v6 == 4)
          {
            v12 = 0xE500000000000000;
          }

          else
          {
            v12 = 0xEE00657461446465;
          }

          if (v2 > 3u)
          {
            goto LABEL_33;
          }
        }
      }

      else
      {
        v7 = 0x44657361656C6572;
        if (v6 != 2)
        {
          v7 = 1918985593;
        }

        v8 = 0xEB00000000657461;
        if (v6 != 2)
        {
          v8 = 0xE400000000000000;
        }

        v9 = 0xD000000000000010;
        if (!*(v3 + v5 + 32))
        {
          v9 = 0x614E747369747261;
        }

        v10 = 0xEA0000000000656DLL;
        if (*(v3 + v5 + 32))
        {
          v10 = 0x8000000100E3C680;
        }

        if (*(v3 + v5 + 32) <= 1u)
        {
          v11 = v9;
        }

        else
        {
          v11 = v7;
        }

        if (*(v3 + v5 + 32) <= 1u)
        {
          v12 = v10;
        }

        else
        {
          v12 = v8;
        }

        if (v2 > 3u)
        {
LABEL_33:
          v13 = 0xD000000000000010;
          if (v2 != 6)
          {
            v13 = 0x7473696C79616C70;
          }

          v14 = 0xEC00000065707954;
          if (v2 == 6)
          {
            v14 = 0x8000000100E3C6C0;
          }

          v15 = 0x79616C507473616CLL;
          if (v2 == 4)
          {
            v15 = 0x656C746974;
          }

          v16 = 0xEE00657461446465;
          if (v2 == 4)
          {
            v16 = 0xE500000000000000;
          }

          if (v2 <= 5u)
          {
            v17 = v15;
          }

          else
          {
            v17 = v13;
          }

          if (v2 <= 5u)
          {
            v18 = v16;
          }

          else
          {
            v18 = v14;
          }

          if (v11 != v17)
          {
            goto LABEL_55;
          }

          goto LABEL_54;
        }
      }

      if (v2 > 1u)
      {
        if (v2 == 2)
        {
          v21 = 0x44657361656C6572;
        }

        else
        {
          v21 = 1918985593;
        }

        if (v2 == 2)
        {
          v18 = 0xEB00000000657461;
        }

        else
        {
          v18 = 0xE400000000000000;
        }

        if (v11 != v21)
        {
          goto LABEL_55;
        }
      }

      else
      {
        v19 = 0x614E747369747261;
        v18 = 0xEA0000000000656DLL;
        if (v2)
        {
          v19 = 0xD000000000000010;
          v18 = 0x8000000100E3C680;
        }

        if (v11 != v19)
        {
          goto LABEL_55;
        }
      }

LABEL_54:
      if (v12 == v18)
      {

LABEL_68:

        return;
      }

LABEL_55:
      v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v20)
      {
        goto LABEL_68;
      }

      if (v4 == ++v5)
      {
        goto LABEL_66;
      }
    }
  }
}

uint64_t sub_100376264(unsigned __int16 a1)
{
  v2 = a1;
  if ((a1 & 0xFF00) == 0x200)
  {
    return v2;
  }

  v3 = *(v1 + 72);
  v4 = *(v3 + 16);
  if (!v4)
  {
    return 512;
  }

  v5 = a1;
  v6 = (v3 + 32);
  while (1)
  {
    v8 = *v6++;
    v7 = v8;
    if (v8 <= 3)
    {
      break;
    }

    if (v7 > 5)
    {
      if (v7 == 6)
      {
        v13 = 0xD000000000000010;
        v14 = 0x8000000100E3C6C0;
        if (v2 > 3u)
        {
          goto LABEL_33;
        }
      }

      else
      {
        v13 = 0x7473696C79616C70;
        v14 = 0xEC00000065707954;
        if (v2 > 3u)
        {
          goto LABEL_33;
        }
      }
    }

    else
    {
      if (v7 == 4)
      {
        v13 = 0x656C746974;
      }

      else
      {
        v13 = 0x79616C507473616CLL;
      }

      if (v7 == 4)
      {
        v14 = 0xE500000000000000;
      }

      else
      {
        v14 = 0xEE00657461446465;
      }

      if (v2 > 3u)
      {
        goto LABEL_33;
      }
    }

LABEL_20:
    if (v2 > 1u)
    {
      if (v5 == 2)
      {
        v22 = 0x44657361656C6572;
      }

      else
      {
        v22 = 1918985593;
      }

      if (v5 == 2)
      {
        v16 = 0xEB00000000657461;
      }

      else
      {
        v16 = 0xE400000000000000;
      }

      if (v13 == v22)
      {
        goto LABEL_56;
      }
    }

    else
    {
      v15 = 0x614E747369747261;
      v16 = 0xEA0000000000656DLL;
      if (v5)
      {
        v15 = 0xD000000000000010;
        v16 = 0x8000000100E3C680;
      }

      if (v13 == v15)
      {
        goto LABEL_56;
      }
    }

LABEL_57:
    v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v23)
    {
      return v2 & 0x1FF;
    }

    if (!--v4)
    {
      return 512;
    }
  }

  v9 = 0x44657361656C6572;
  if (v7 != 2)
  {
    v9 = 1918985593;
  }

  v10 = 0xEB00000000657461;
  if (v7 != 2)
  {
    v10 = 0xE400000000000000;
  }

  v11 = 0x614E747369747261;
  if (v7)
  {
    v11 = 0xD000000000000010;
  }

  v12 = 0xEA0000000000656DLL;
  if (v7)
  {
    v12 = 0x8000000100E3C680;
  }

  if (v7 <= 1)
  {
    v13 = v11;
  }

  else
  {
    v13 = v9;
  }

  if (v7 <= 1)
  {
    v14 = v12;
  }

  else
  {
    v14 = v10;
  }

  if (v2 <= 3u)
  {
    goto LABEL_20;
  }

LABEL_33:
  v17 = 0x7473696C79616C70;
  if (v5 == 6)
  {
    v17 = 0xD000000000000010;
  }

  v18 = 0xEC00000065707954;
  if (v5 == 6)
  {
    v18 = 0x8000000100E3C6C0;
  }

  v19 = 0x79616C507473616CLL;
  if (v5 == 4)
  {
    v19 = 0x656C746974;
  }

  v20 = 0xEE00657461446465;
  if (v5 == 4)
  {
    v20 = 0xE500000000000000;
  }

  if (v2 <= 5u)
  {
    v21 = v19;
  }

  else
  {
    v21 = v17;
  }

  if (v2 <= 5u)
  {
    v16 = v20;
  }

  else
  {
    v16 = v18;
  }

  if (v13 != v21)
  {
    goto LABEL_57;
  }

LABEL_56:
  if (v14 != v16)
  {
    goto LABEL_57;
  }

  return v2 & 0x1FF;
}

void sub_100376548(__int16 a1)
{
  v1 = a1;
  if ((a1 & 0xFF00) != 0x200)
  {
    type metadata accessor for MusicLibrary();
    static MusicLibrary.shared.getter();
    v2 = static MusicLibrary.== infix(_:_:)();

    v3 = &off_101098C48;
    if (v2)
    {
      v4 = &off_101098C20;
    }

    else
    {
      v4 = &off_101098C48;
    }

    v5 = v4[2];
    if (!v5)
    {
LABEL_71:

      return;
    }

    v6 = 0;
    if (v2)
    {
      v3 = &off_101098C20;
    }

    v7 = v3 + 4;
    while (1)
    {
      if (v6 >= v4[2])
      {
        __break(1u);
        return;
      }

      v8 = *(v7 + v6);
      if (v8 > 3)
      {
        if (*(v7 + v6) > 5u)
        {
          if (v8 == 6)
          {
            v13 = 0xD000000000000010;
            v14 = 0x8000000100E3C6C0;
            if (v1 > 3u)
            {
              goto LABEL_38;
            }
          }

          else
          {
            v13 = 0x7473696C79616C70;
            v14 = 0xEC00000065707954;
            if (v1 > 3u)
            {
              goto LABEL_38;
            }
          }
        }

        else
        {
          if (v8 == 4)
          {
            v13 = 0x656C746974;
          }

          else
          {
            v13 = 0x79616C507473616CLL;
          }

          if (v8 == 4)
          {
            v14 = 0xE500000000000000;
          }

          else
          {
            v14 = 0xEE00657461446465;
          }

          if (v1 > 3u)
          {
            goto LABEL_38;
          }
        }
      }

      else
      {
        v9 = 0x44657361656C6572;
        if (v8 != 2)
        {
          v9 = 1918985593;
        }

        v10 = 0xEB00000000657461;
        if (v8 != 2)
        {
          v10 = 0xE400000000000000;
        }

        v11 = 0xD000000000000010;
        if (!*(v7 + v6))
        {
          v11 = 0x614E747369747261;
        }

        v12 = 0xEA0000000000656DLL;
        if (*(v7 + v6))
        {
          v12 = 0x8000000100E3C680;
        }

        if (*(v7 + v6) <= 1u)
        {
          v13 = v11;
        }

        else
        {
          v13 = v9;
        }

        if (*(v7 + v6) <= 1u)
        {
          v14 = v12;
        }

        else
        {
          v14 = v10;
        }

        if (v1 > 3u)
        {
LABEL_38:
          v15 = 0xD000000000000010;
          if (v1 != 6)
          {
            v15 = 0x7473696C79616C70;
          }

          v16 = 0xEC00000065707954;
          if (v1 == 6)
          {
            v16 = 0x8000000100E3C6C0;
          }

          v17 = 0x79616C507473616CLL;
          if (v1 == 4)
          {
            v17 = 0x656C746974;
          }

          v18 = 0xEE00657461446465;
          if (v1 == 4)
          {
            v18 = 0xE500000000000000;
          }

          if (v1 <= 5u)
          {
            v19 = v17;
          }

          else
          {
            v19 = v15;
          }

          if (v1 <= 5u)
          {
            v20 = v18;
          }

          else
          {
            v20 = v16;
          }

          if (v13 != v19)
          {
            goto LABEL_60;
          }

          goto LABEL_59;
        }
      }

      if (v1 > 1u)
      {
        if (v1 == 2)
        {
          v23 = 0x44657361656C6572;
        }

        else
        {
          v23 = 1918985593;
        }

        if (v1 == 2)
        {
          v20 = 0xEB00000000657461;
        }

        else
        {
          v20 = 0xE400000000000000;
        }

        if (v13 != v23)
        {
          goto LABEL_60;
        }
      }

      else
      {
        v21 = 0x614E747369747261;
        v20 = 0xEA0000000000656DLL;
        if (v1)
        {
          v21 = 0xD000000000000010;
          v20 = 0x8000000100E3C680;
        }

        if (v13 != v21)
        {
          goto LABEL_60;
        }
      }

LABEL_59:
      if (v14 == v20)
      {

LABEL_73:

        return;
      }

LABEL_60:
      v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v22)
      {
        goto LABEL_73;
      }

      if (v5 == ++v6)
      {
        goto LABEL_71;
      }
    }
  }
}

uint64_t sub_1003768C8(unsigned __int16 a1)
{
  v2 = a1;
  if ((a1 & 0xFF00) == 0x200)
  {
    return v2;
  }

  v3 = *(v1 + 64);
  v4 = *(v3 + 16);
  if (!v4)
  {
    return 512;
  }

  v5 = a1;
  v6 = (v3 + 32);
  while (1)
  {
    v8 = *v6++;
    v7 = v8;
    if (v8 <= 3)
    {
      break;
    }

    if (v7 > 5)
    {
      if (v7 == 6)
      {
        v13 = 0xD000000000000010;
        v14 = 0x8000000100E3C6C0;
        if (v2 > 3u)
        {
          goto LABEL_33;
        }
      }

      else
      {
        v13 = 0x7473696C79616C70;
        v14 = 0xEC00000065707954;
        if (v2 > 3u)
        {
          goto LABEL_33;
        }
      }
    }

    else
    {
      if (v7 == 4)
      {
        v13 = 0x656C746974;
      }

      else
      {
        v13 = 0x79616C507473616CLL;
      }

      if (v7 == 4)
      {
        v14 = 0xE500000000000000;
      }

      else
      {
        v14 = 0xEE00657461446465;
      }

      if (v2 > 3u)
      {
        goto LABEL_33;
      }
    }

LABEL_20:
    if (v2 > 1u)
    {
      if (v5 == 2)
      {
        v22 = 0x44657361656C6572;
      }

      else
      {
        v22 = 1918985593;
      }

      if (v5 == 2)
      {
        v16 = 0xEB00000000657461;
      }

      else
      {
        v16 = 0xE400000000000000;
      }

      if (v13 == v22)
      {
        goto LABEL_56;
      }
    }

    else
    {
      v15 = 0x614E747369747261;
      v16 = 0xEA0000000000656DLL;
      if (v5)
      {
        v15 = 0xD000000000000010;
        v16 = 0x8000000100E3C680;
      }

      if (v13 == v15)
      {
        goto LABEL_56;
      }
    }

LABEL_57:
    v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v23)
    {
      return v2 & 0x1FF;
    }

    if (!--v4)
    {
      return 512;
    }
  }

  v9 = 0x44657361656C6572;
  if (v7 != 2)
  {
    v9 = 1918985593;
  }

  v10 = 0xEB00000000657461;
  if (v7 != 2)
  {
    v10 = 0xE400000000000000;
  }

  v11 = 0x614E747369747261;
  if (v7)
  {
    v11 = 0xD000000000000010;
  }

  v12 = 0xEA0000000000656DLL;
  if (v7)
  {
    v12 = 0x8000000100E3C680;
  }

  if (v7 <= 1)
  {
    v13 = v11;
  }

  else
  {
    v13 = v9;
  }

  if (v7 <= 1)
  {
    v14 = v12;
  }

  else
  {
    v14 = v10;
  }

  if (v2 <= 3u)
  {
    goto LABEL_20;
  }

LABEL_33:
  v17 = 0x7473696C79616C70;
  if (v5 == 6)
  {
    v17 = 0xD000000000000010;
  }

  v18 = 0xEC00000065707954;
  if (v5 == 6)
  {
    v18 = 0x8000000100E3C6C0;
  }

  v19 = 0x79616C507473616CLL;
  if (v5 == 4)
  {
    v19 = 0x656C746974;
  }

  v20 = 0xEE00657461446465;
  if (v5 == 4)
  {
    v20 = 0xE500000000000000;
  }

  if (v2 <= 5u)
  {
    v21 = v19;
  }

  else
  {
    v21 = v17;
  }

  if (v2 <= 5u)
  {
    v16 = v20;
  }

  else
  {
    v16 = v18;
  }

  if (v13 != v21)
  {
    goto LABEL_57;
  }

LABEL_56:
  if (v14 != v16)
  {
    goto LABEL_57;
  }

  return v2 & 0x1FF;
}

double sub_100376BEC@<D0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t)@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  v7 = v4;
  v29 = a4;
  sub_10010FC20(&unk_10118BCE0, &qword_100EC6450);
  __chkstk_darwin();
  v10 = &v28 - v9;
  v11 = type metadata accessor for IndexPath();
  v12 = *(v11 - 8);
  __chkstk_darwin();
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000089F8(a1, v10, &unk_10118BCE0, &qword_100EC6450);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_1000095E8(v10, &unk_10118BCE0, &qword_100EC6450);
  }

  else
  {
    v15 = (*(v12 + 32))(v14, v10, v11);
    v16 = a2(v15);
    isa = IndexPath._bridgeToObjectiveC()().super.isa;
    v18 = [v16 cellForItemAtIndexPath:isa];

    if (v18)
    {
      v19 = *&v7[*a3];
      v20 = v19;
      [v18 bounds];
      [v20 convertRect:v18 fromCoordinateSpace:?];
      v34[0] = v19;
      v34[1] = v21;
      v34[2] = v22;
      v34[3] = v23;
      v34[4] = v24;
      v35 = 0;
      PresentationSource.Position.init(source:permittedArrowDirections:)(v34, 15, v30);
      v36 = v30[0];
      v37 = v30[1];
      v38 = v31;
      *&v39 = v32;
      *(&v39 + 1) = v33;
      v25 = v7;
      PresentationSource.init(viewController:position:)(v25, &v36, v29);

      (*(v12 + 8))(v14, v11);
      return result;
    }

    (*(v12 + 8))(v14, v11);
  }

  v38 = 0;
  v36 = 0u;
  v37 = 0u;
  v39 = xmmword_100EBCEF0;
  v27 = v7;
  *&result = PresentationSource.init(viewController:position:)(v27, &v36, v29).n128_u64[0];
  return result;
}

void sub_100376F9C(void (*a1)(__int128 *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    for (i = (a3 + 32); ; ++i)
    {
      v7 = *i;
      swift_unknownObjectRetain();
      a1(&v7);
      if (v3)
      {
        break;
      }

      swift_unknownObjectRelease();
      if (!--v4)
      {
        return;
      }
    }

    swift_unknownObjectRelease();
  }
}

void sub_100377034(void (*a1)(uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = a3;
  if ((a3 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for ImpressionTracker();
    sub_10003D8C4(&qword_1011831E8, type metadata accessor for ImpressionTracker, &unk_100ECEA04);
    Set.Iterator.init(_cocoa:)();
    v5 = v21;
    v6 = v22;
    v7 = v23;
    v8 = v24;
    v9 = v25;
  }

  else
  {
    v10 = -1 << *(a3 + 32);
    v6 = a3 + 56;
    v7 = ~v10;
    v11 = -v10;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v9 = v12 & *(a3 + 56);

    v8 = 0;
  }

  v20 = v5;
  if (v5 < 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v13 = v8;
  v14 = v9;
  v15 = v8;
  if (v9)
  {
LABEL_12:
    v16 = (v14 - 1) & v14;
    v17 = *(*(v5 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));

    if (v17)
    {
      while (1)
      {
        v26 = v17;
        a1(&v26);

        if (v4)
        {
          break;
        }

        v8 = v15;
        v9 = v16;
        v5 = v20;
        if ((v20 & 0x8000000000000000) == 0)
        {
          goto LABEL_8;
        }

LABEL_14:
        if (!__CocoaSet.Iterator.next()())
        {
          goto LABEL_19;
        }

        type metadata accessor for ImpressionTracker();
        swift_dynamicCast();
        v17 = v26;
        v15 = v8;
        v16 = v9;
        if (!v26)
        {
          goto LABEL_21;
        }
      }

      v18 = v20;
    }

    else
    {
LABEL_21:
      v5 = v20;
LABEL_19:
      v18 = v5;
    }

    sub_10005C9F8(v18);
  }

  else
  {
    while (1)
    {
      v15 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v15 >= ((v7 + 64) >> 6))
      {
        goto LABEL_19;
      }

      v14 = *(v6 + 8 * v15);
      ++v13;
      if (v14)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

void sub_100377268(void (*a1)(_OWORD *), uint64_t a2, uint64_t a3)
{
  v3 = a3 + 56;
  v4 = 1 << *(a3 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a3 + 56);
  v7 = (v4 + 63) >> 6;

  v8 = 0;
  if (v6)
  {
    while (1)
    {
      v9 = v8;
LABEL_8:
      v10 = (*(a3 + 48) + ((v9 << 11) | (32 * __clz(__rbit64(v6)))));
      v11 = v10[1];
      v19[0] = *v10;
      v19[1] = v11;
      v12 = *(&v19[0] + 1);
      v13 = *&v19[0];
      v14 = *(&v11 + 1);
      v15 = v11;
      sub_100198BAC(*&v19[0], *(&v19[0] + 1), v11, *(&v11 + 1));
      v16 = v20;
      a1(v19);
      v20 = v16;
      if (v16)
      {
        break;
      }

      v6 &= v6 - 1;
      sub_100110A18(v13, v12, v15, v14);
      v8 = v9;
      if (!v6)
      {
        goto LABEL_5;
      }
    }

    sub_100110A18(v13, v12, v15, v14);
LABEL_12:
  }

  else
  {
LABEL_5:
    while (1)
    {
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (v9 >= v7)
      {
        goto LABEL_12;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }
}

void sub_1003773C4(void (*a1)(__int128 *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    for (i = (a3 + 32); ; ++i)
    {
      v7 = *i;

      a1(&v7);
      if (v3)
      {
        break;
      }

      if (!--v4)
      {
        return;
      }
    }
  }
}

uint64_t sub_10037745C(char *a1)
{
  v3 = sub_10010FC20(&qword_10118D050, &qword_100EC8D68);
  v31 = *(v3 - 8);
  __chkstk_darwin();
  v5 = &v30 - v4;
  v6 = sub_10010FC20(&qword_10118D058, &qword_100EC8D70);
  __chkstk_darwin();
  v8 = &v30 - v7;
  v9 = _s10TVEpisodesVMa(0);
  __chkstk_darwin();
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v13 = &v30 - v12;
  v32 = v1;
  v14 = *(v1 + 48);
  v15 = *(*v14 + 96);
  swift_beginAccess();
  sub_1003C16C8(v14 + v15, v13, _s10TVEpisodesVMa);
  sub_1006534A4(v13, a1);
  if ((v16 & 1) == 0)
  {
    sub_1003C16C8(a1, v11, _s10TVEpisodesVMa);
    sub_1003C16C8(v11, v8, _s10TVEpisodesVMa);
    v17 = sub_10003D8C4(&qword_10118D060, _s10TVEpisodesVMa, &unk_100ED9FE0);
    (*(v17 + 48))(v9, v17);
    sub_100020674(&qword_10118D068, &qword_10118D050, &qword_100EC8D68, &protocol conformance descriptor for MusicLibrarySectionedRequest<A, B>);
    v18 = MusicAutoupdatableRequest.autoupdatingResponse.getter();
    (*(v31 + 8))(v5, v3);
    sub_1003C1730(v11, _s10TVEpisodesVMa);
    *&v8[*(v6 + 36)] = v18;
    RequestResponse.Controller.request.setter(v8);
  }

  sub_1003A38C8();
  v19 = *(v9 + 52);
  v20 = *&v13[v19];
  v21 = *&v13[v19 + 8];
  v22 = &a1[v19];
  v23 = v20 == *v22 && v21 == *(v22 + 1);
  if (!v23 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    sub_1003A454C();
  }

  v24 = *(v9 + 40);
  v25 = *&v13[v24];
  v26 = *&v13[v24 + 8];
  v27 = &a1[v24];
  v28 = v25 == *v27 && v26 == *(v27 + 1);
  if (!v28 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    sub_1003A5634();
  }

  sub_1003C1730(a1, _s10TVEpisodesVMa);
  return sub_1003C1730(v13, _s10TVEpisodesVMa);
}

uint64_t sub_1003777F4(uint64_t a1)
{
  v3 = sub_10010FC20(&qword_1011828F8, &qword_100EBE238);
  v47 = *(v3 - 8);
  __chkstk_darwin();
  v5 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v7 = &v46 - v6;
  v46 = sub_10010FC20(&unk_10118CE40, &qword_100EC8A40);
  __chkstk_darwin();
  v9 = &v46 - v8;
  v10 = _s9PlaylistsVMa(0);
  __chkstk_darwin();
  v12 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v14 = &v46 - v13;
  v48 = v1;
  v15 = *(v1 + 48);
  v16 = *(*v15 + 96);
  swift_beginAccess();
  sub_1003C16C8(v15 + v16, v14, _s9PlaylistsVMa);
  v49 = v14;
  v50 = a1;
  if ((sub_10019891C(v14, a1) & 1) == 0)
  {
    sub_1003C16C8(v50, v12, _s9PlaylistsVMa);
    sub_1003C16C8(v12, v9, _s9PlaylistsVMa);
    type metadata accessor for TitledSection();
    type metadata accessor for Playlist.Folder.Item();
    sub_10003D8C4(&unk_101182930, &type metadata accessor for Playlist.Folder.Item, &protocol conformance descriptor for Playlist.Folder.Item);
    MusicLibrarySectionedRequest.init()();
    MusicLibrarySectionedRequest.deferIdentifierResolution.setter();

    MusicLibrarySectionedRequest.library.setter();
    MusicLibrarySectionedRequest.includeOnlyDownloadedContent.setter();
    sub_10018E714(v5);
    sub_10018ECCC();
    sub_10018EFFC();
    MusicLibrarySectionedRequest.filterItems(text:)(*&v12[*(v10 + 36)]);
    MusicLibrarySectionedRequest.limit.setter();
    v17 = v47;
    (*(v47 + 32))(v7, v5, v3);
    sub_100020674(&qword_10118CE50, &qword_1011828F8, &qword_100EBE238, &protocol conformance descriptor for MusicLibrarySectionedRequest<A, B>);
    v18 = MusicAutoupdatableRequest.autoupdatingResponse.getter();
    (*(v17 + 8))(v7, v3);
    sub_1003C1730(v12, _s9PlaylistsVMa);
    *&v9[*(v46 + 36)] = v18;
    RequestResponse.Controller.request.setter(v9);
  }

  sub_1003A3AF8();
  v19 = *(v10 + 32);
  if (qword_10117F298 != -1)
  {
    swift_once();
  }

  v20 = _s9PlaylistsV5ScopeVMa(0);
  v21 = sub_1000060E4(v20, qword_101218730);
  v47 = v19;
  v22 = sub_1001982EC(&v49[v19], v21);
  if (v22)
  {
    v23 = 0xD000000000000011;
  }

  else
  {
    v23 = 0xD000000000000010;
  }

  if (v22)
  {
    v24 = "LibraryPlaylists";
  }

  else
  {
    v24 = "v32@0:8@16@24";
  }

  v51 = v23;
  v52 = v24 | 0x8000000000000000;

  v25._countAndFlagsBits = 0x704F7265746C6946;
  v25._object = 0xEC0000006E6F6974;
  String.append(_:)(v25);

  v27 = v51;
  v26 = v52;
  v28 = *(v10 + 32);
  v29 = sub_1001982EC((v50 + v28), v21);
  if (v29)
  {
    v30 = 0xD000000000000011;
  }

  else
  {
    v30 = 0xD000000000000010;
  }

  if (v29)
  {
    v31 = "LibraryPlaylists";
  }

  else
  {
    v31 = "v32@0:8@16@24";
  }

  v51 = v30;
  v52 = v31 | 0x8000000000000000;

  v32._countAndFlagsBits = 0x704F7265746C6946;
  v32._object = 0xEC0000006E6F6974;
  String.append(_:)(v32);

  if (v27 == v51 && v26 == v52)
  {
  }

  else
  {
    v33 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v33 & 1) == 0)
    {
      sub_1003A47BC();
    }
  }

  v34 = sub_1001982EC(&v49[v47], v21);
  if (v34)
  {
    v35 = 0xD000000000000011;
  }

  else
  {
    v35 = 0xD000000000000010;
  }

  if (v34)
  {
    v36 = "LibraryPlaylists";
  }

  else
  {
    v36 = "v32@0:8@16@24";
  }

  v51 = v35;
  v52 = v36 | 0x8000000000000000;

  v37._countAndFlagsBits = 0x53746E65746E6F43;
  v37._object = 0xEB0000000074726FLL;
  String.append(_:)(v37);

  v39 = v51;
  v38 = v52;
  v40 = sub_1001982EC((v50 + v28), v21);
  if (v40)
  {
    v41 = 0xD000000000000011;
  }

  else
  {
    v41 = 0xD000000000000010;
  }

  if (v40)
  {
    v42 = "LibraryPlaylists";
  }

  else
  {
    v42 = "v32@0:8@16@24";
  }

  v51 = v41;
  v52 = v42 | 0x8000000000000000;

  v43._countAndFlagsBits = 0x53746E65746E6F43;
  v43._object = 0xEB0000000074726FLL;
  String.append(_:)(v43);

  if (v39 == v51 && v38 == v52)
  {
  }

  else
  {
    v44 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v44 & 1) == 0)
    {
      sub_1003A58A4();
    }
  }

  sub_1003C1730(v50, _s9PlaylistsVMa);
  return sub_1003C1730(v49, _s9PlaylistsVMa);
}

uint64_t sub_100377E84(uint64_t a1)
{
  v72 = a1;
  v2 = type metadata accessor for Artist();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v60 = &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s11MusicVideosV5ScopeOMa(0);
  __chkstk_darwin();
  v67 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v66 = &v59 - v6;
  __chkstk_darwin();
  v65 = &v59 - v7;
  __chkstk_darwin();
  v64 = &v59 - v8;
  __chkstk_darwin();
  v62 = &v59 - v9;
  v10 = sub_10010FC20(&qword_10118CEE8, &qword_100EC8B10);
  v68 = *(v10 - 8);
  __chkstk_darwin();
  v12 = &v59 - v11;
  v63 = sub_10010FC20(&qword_10118CEF0, &qword_100EC8B18);
  __chkstk_darwin();
  v14 = &v59 - v13;
  v15 = _s11MusicVideosVMa(0);
  __chkstk_darwin();
  v17 = &v59 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v19 = &v59 - v18;
  v69 = v1;
  v20 = *(v1 + 48);
  v21 = *(*v20 + 96);
  swift_beginAccess();
  sub_1003C16C8(v20 + v21, v19, _s11MusicVideosVMa);
  v71 = v19;
  v22 = sub_100701750(v19, v72);
  v70 = v2;
  if ((v22 & 1) == 0)
  {
    sub_1003C16C8(v72, v17, _s11MusicVideosVMa);
    sub_1003C16C8(v17, v14, _s11MusicVideosVMa);
    type metadata accessor for TitledSection();
    type metadata accessor for MusicVideo();
    MusicLibrarySectionedRequest.init()();

    MusicLibrarySectionedRequest.library.setter();
    MusicLibrarySectionedRequest.includeOnlyDownloadedContent.setter();
    MusicLibrarySectionedRequest.filterItems(text:)(*&v17[v15[8]]);
    v23 = v62;
    sub_1003C16C8(&v17[v15[7]], v62, _s11MusicVideosV5ScopeOMa);
    v61 = v3;
    v24 = (*(v3 + 48))(v23, 1, v2);
    v25 = v14;
    if (v24 != 1)
    {
      v26 = v60;
      v27 = v61;
      v28 = *(v61 + 32);
      v59 = v25;
      v29 = v70;
      v28(v60, v23, v70);
      swift_getKeyPath();
      MusicLibrarySectionedRequest.filterItems<A>(matching:contains:)();

      v25 = v59;
      (*(v27 + 8))(v26, v29);
    }

    sub_1006FDE90();
    sub_1006FF31C(*&v17[v15[9]], v12);
    sub_100020674(&qword_10118CEF8, &qword_10118CEE8, &qword_100EC8B10, &protocol conformance descriptor for MusicLibrarySectionedRequest<A, B>);
    v30 = MusicAutoupdatableRequest.autoupdatingResponse.getter();
    (*(v68 + 8))(v12, v10);
    sub_1003C1730(v17, _s11MusicVideosVMa);
    *(v25 + *(v63 + 36)) = v30;
    RequestResponse.Controller.request.setter(v25);
    v2 = v70;
    v3 = v61;
  }

  v68 = 0xD000000000000012;
  sub_1003A3D20();
  v63 = v15[7];
  v31 = v64;
  sub_1003C16C8(&v71[v63], v64, _s11MusicVideosV5ScopeOMa);
  v32 = *(v3 + 48);
  v33 = v32(v31, 1, v2);
  v34 = "impressionParentId";
  v35 = 0xD000000000000012;
  v36 = "impressionParentId";
  if (v33 != 1)
  {
    sub_1003C1730(v31, _s11MusicVideosV5ScopeOMa);
    v36 = "LibraryArtistDetail";
    v35 = 0xD000000000000013;
  }

  v73 = v35;
  v74 = v36 | 0x8000000000000000;

  v37._countAndFlagsBits = 0x704F7265746C6946;
  v37._object = 0xEC0000006E6F6974;
  String.append(_:)(v37);

  v39 = v73;
  v38 = v74;
  v40 = v15[7];
  v41 = v65;
  sub_1003C16C8(v72 + v40, v65, _s11MusicVideosV5ScopeOMa);
  v42 = v32(v41, 1, v2);
  v43 = 0xD000000000000012;
  v44 = "impressionParentId";
  if (v42 != 1)
  {
    sub_1003C1730(v41, _s11MusicVideosV5ScopeOMa);
    v44 = "LibraryArtistDetail";
    v43 = 0xD000000000000013;
  }

  v73 = v43;
  v74 = v44 | 0x8000000000000000;

  v45._countAndFlagsBits = 0x704F7265746C6946;
  v45._object = 0xEC0000006E6F6974;
  String.append(_:)(v45);

  if (v39 == v73 && v38 == v74)
  {

    v46 = v70;
  }

  else
  {
    v47 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v46 = v70;
    if ((v47 & 1) == 0)
    {
      sub_1003A4B5C();
    }
  }

  v48 = v66;
  sub_1003C16C8(&v71[v63], v66, _s11MusicVideosV5ScopeOMa);
  v49 = v32(v48, 1, v46);
  v50 = 0xD000000000000012;
  v51 = "impressionParentId";
  if (v49 != 1)
  {
    sub_1003C1730(v48, _s11MusicVideosV5ScopeOMa);
    v51 = "LibraryArtistDetail";
    v50 = 0xD000000000000013;
  }

  v73 = v50;
  v74 = v51 | 0x8000000000000000;

  v52._countAndFlagsBits = 0x53746E65746E6F43;
  v52._object = 0xEB0000000074726FLL;
  String.append(_:)(v52);

  v54 = v73;
  v53 = v74;
  v55 = v67;
  sub_1003C16C8(v72 + v40, v67, _s11MusicVideosV5ScopeOMa);
  if (v32(v55, 1, v46) != 1)
  {
    sub_1003C1730(v55, _s11MusicVideosV5ScopeOMa);
    v34 = "LibraryArtistDetail";
    v68 = 0xD000000000000013;
  }

  v73 = v68;
  v74 = v34 | 0x8000000000000000;

  v56._countAndFlagsBits = 0x53746E65746E6F43;
  v56._object = 0xEB0000000074726FLL;
  String.append(_:)(v56);

  if (v54 == v73 && v53 == v74)
  {
  }

  else
  {
    v57 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v57 & 1) == 0)
    {
      sub_1003A5C44();
    }
  }

  sub_1003C1730(v72, _s11MusicVideosVMa);
  return sub_1003C1730(v71, _s11MusicVideosVMa);
}

uint64_t sub_100378808(uint64_t a1)
{
  v3 = sub_10010FC20(&qword_10118CE70, &qword_100EC8A70);
  v31 = *(v3 - 8);
  __chkstk_darwin();
  v5 = &v30 - v4;
  v6 = sub_10010FC20(&qword_10118CE78, &qword_100EC8A78);
  __chkstk_darwin();
  v8 = &v30 - v7;
  v9 = _s6AlbumsVMa(0);
  __chkstk_darwin();
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v13 = &v30 - v12;
  v32 = v1;
  v14 = *(v1 + 48);
  v15 = *(*v14 + 96);
  swift_beginAccess();
  sub_1003C16C8(v14 + v15, v13, _s6AlbumsVMa);
  if ((sub_10028CB8C(v13, a1) & 1) == 0)
  {
    sub_1003C16C8(a1, v11, _s6AlbumsVMa);
    sub_1003C16C8(v11, v8, _s6AlbumsVMa);
    v16 = sub_10003D8C4(&qword_10118CE80, _s6AlbumsVMa, &unk_100EC48EC);
    (*(v16 + 48))(v9, v16);
    sub_100020674(&qword_10118CE88, &qword_10118CE70, &qword_100EC8A70, &protocol conformance descriptor for MusicLibrarySectionedRequest<A, B>);
    v17 = MusicAutoupdatableRequest.autoupdatingResponse.getter();
    (*(v31 + 8))(v5, v3);
    sub_1003C1730(v11, _s6AlbumsVMa);
    *&v8[*(v6 + 36)] = v17;
    RequestResponse.Controller.request.setter(v8);
  }

  sub_1003A3F48();
  v18 = sub_10028A59C();
  v20 = v19;
  if (v18 == sub_10028A59C() && v20 == v21)
  {
  }

  else
  {
    v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v23 & 1) == 0)
    {
      sub_1003A4FF0();
    }
  }

  v24 = sub_100288A9C();
  v26 = v25;
  if (v24 == sub_100288A9C() && v26 == v27)
  {
  }

  else
  {
    v28 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v28 & 1) == 0)
    {
      sub_1003A60D8();
    }
  }

  sub_1003C1730(a1, _s6AlbumsVMa);
  return sub_1003C1730(v13, _s6AlbumsVMa);
}

uint64_t sub_100378C30(__int128 *a1)
{
  v2 = v1;
  v4 = sub_10010FC20(&qword_10118B098, &qword_100EC8B80);
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v24 - v6;
  v8 = *(v2 + 48);
  swift_beginAccess();
  v9 = v8[3];
  v35[1] = v8[2];
  v35[2] = v9;
  v10 = v8[5];
  *v36 = v8[4];
  *&v36[16] = v10;
  v35[0] = v8[1];
  sub_10030DC78(v35, v31);
  sub_10030D694(v35, a1);
  if ((v11 & 1) == 0)
  {
    v12 = a1[3];
    v28 = a1[2];
    v29 = v12;
    v13 = a1[4];
    v14 = a1[1];
    v26 = *a1;
    v27 = v14;
    v33[2] = v28;
    v33[3] = v12;
    v33[4] = v13;
    v33[0] = v26;
    v33[1] = v14;
    v31[3] = v12;
    v31[4] = v13;
    v31[1] = v14;
    v31[2] = v28;
    v30 = v13;
    v31[0] = v26;
    v15 = sub_1003BEAB8();
    v16 = *(v15 + 48);
    sub_10030DC78(a1, v34);
    sub_10030DC78(v33, v34);
    v25 = v4;
    v17 = v5;
    v16(&_s7ArtistsVN, v15);
    v34[2] = v28;
    v34[3] = v29;
    v34[4] = v30;
    v34[0] = v26;
    v34[1] = v27;
    sub_10030DCB0(v34);
    sub_100020674(&qword_10118CF18, &qword_10118B098, &qword_100EC8B80, &protocol conformance descriptor for MusicLibrarySectionedRequest<A, B>);
    v18 = v25;
    v19 = MusicAutoupdatableRequest.autoupdatingResponse.getter();
    (*(v17 + 8))(v7, v18);
    v32 = v19;
    RequestResponse.Controller.request.setter(v31);
  }

  sub_1003A4170();
  v31[0] = *&v36[8];
  v20 = *&v36[8];
  v34[0] = *(a1 + 56);
  v21 = v34[0];
  sub_100118E9C(v31, v33);
  sub_100118E9C(v34, v33);
  sub_10030DCB0(a1);
  if (v20 == v21)
  {
    sub_100015BB0(v34);
    sub_100015BB0(v31);
  }

  else
  {
    v22 = _stringCompareWithSmolCheck(_:_:expecting:)();
    sub_100015BB0(v34);
    sub_100015BB0(v31);
    if ((v22 & 1) == 0)
    {
      sub_1003A6334();
    }
  }

  return sub_10030DCB0(v35);
}

uint64_t sub_100378EFC(unsigned __int8 *a1)
{
  v2 = v1;
  v4 = sub_10010FC20(&unk_10118CF80, &qword_100EC8C08);
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v25 - v6;
  v8 = *(v2 + 48);
  swift_beginAccess();
  v9 = *(v8 + 80);
  v42 = *(v8 + 64);
  v43 = v9;
  v44 = *(v8 + 96);
  v45 = *(v8 + 112);
  v10 = *(v8 + 32);
  v41[0] = *(v8 + 16);
  v41[1] = v10;
  v41[2] = *(v8 + 48);
  sub_100363198(v41, v34);
  sub_100457548(v41, a1);
  if ((v11 & 1) == 0)
  {
    v12 = *(a1 + 1);
    v27 = *a1;
    v28 = v12;
    v13 = *(a1 + 3);
    v29 = *(a1 + 2);
    v30 = v13;
    v37[0] = v27;
    v37[1] = v12;
    v37[2] = v29;
    v37[3] = v13;
    v14 = *(a1 + 5);
    v31 = *(a1 + 4);
    v32 = v14;
    v33 = *(a1 + 12);
    v37[4] = v31;
    v37[5] = v14;
    v38 = v33;
    v34[0] = v27;
    v34[1] = v12;
    v35 = *(a1 + 12);
    v15 = *(a1 + 5);
    v34[4] = v31;
    v34[5] = v15;
    v34[2] = v29;
    v34[3] = v13;
    v16 = sub_1003BF19C();
    v17 = *(v16 + 48);
    sub_100363198(a1, v39);
    sub_100363198(v37, v39);
    v26 = v4;
    v18 = v5;
    v17(&_s9ComposersVN, v16);
    v39[4] = v31;
    v39[5] = v32;
    v40 = v33;
    v39[0] = v27;
    v39[1] = v28;
    v39[2] = v29;
    v39[3] = v30;
    sub_1003BF1F0(v39);
    sub_100020674(&qword_10118CF90, &unk_10118CF80, &qword_100EC8C08, &protocol conformance descriptor for MusicLibrarySectionedRequest<A, B>);
    v19 = v26;
    v20 = MusicAutoupdatableRequest.autoupdatingResponse.getter();
    (*(v18 + 8))(v7, v19);
    v36 = v20;
    RequestResponse.Controller.request.setter(v34);
  }

  sub_10003DD5C(&unk_1010A96A8, sub_1003BF470);
  if (v44 != *(a1 + 5) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    sub_10003E4A4(&unk_1010A96A8, sub_1003BF378);
  }

  v34[0] = v42;
  v21 = v42;
  v39[0] = *(a1 + 3);
  v22 = v39[0];
  sub_100118E9C(v34, v37);
  sub_100118E9C(v39, v37);
  sub_1003BF1F0(a1);
  if (v21 == v22)
  {
    sub_100015BB0(v39);
    sub_100015BB0(v34);
  }

  else
  {
    v23 = _stringCompareWithSmolCheck(_:_:expecting:)();
    sub_100015BB0(v39);
    sub_100015BB0(v34);
    if ((v23 & 1) == 0)
    {
      sub_1003A647C(&unk_1010A96A8, sub_1003BF244);
    }
  }

  return sub_1003BF1F0(v41);
}

uint64_t sub_100379288(unsigned __int8 *a1)
{
  v2 = v1;
  v4 = sub_10010FC20(&qword_10118CFA0, &qword_100EC8C38);
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v25 - v6;
  v8 = *(v2 + 48);
  swift_beginAccess();
  v9 = *(v8 + 80);
  v42 = *(v8 + 64);
  v43 = v9;
  v44 = *(v8 + 96);
  v45 = *(v8 + 112);
  v10 = *(v8 + 32);
  v41[0] = *(v8 + 16);
  v41[1] = v10;
  v41[2] = *(v8 + 48);
  sub_1003BF504(v41, v34);
  sub_100457548(v41, a1);
  if ((v11 & 1) == 0)
  {
    v12 = *(a1 + 1);
    v27 = *a1;
    v28 = v12;
    v13 = *(a1 + 3);
    v29 = *(a1 + 2);
    v30 = v13;
    v37[0] = v27;
    v37[1] = v12;
    v37[2] = v29;
    v37[3] = v13;
    v14 = *(a1 + 5);
    v31 = *(a1 + 4);
    v32 = v14;
    v33 = *(a1 + 12);
    v37[4] = v31;
    v37[5] = v14;
    v38 = v33;
    v34[0] = v27;
    v34[1] = v12;
    v35 = *(a1 + 12);
    v15 = *(a1 + 5);
    v34[4] = v31;
    v34[5] = v15;
    v34[2] = v29;
    v34[3] = v13;
    v16 = sub_1003BF560();
    v17 = *(v16 + 48);
    sub_1003BF504(a1, v39);
    sub_1003BF504(v37, v39);
    v26 = v4;
    v18 = v5;
    v17(&_s6GenresVN, v16);
    v39[4] = v31;
    v39[5] = v32;
    v40 = v33;
    v39[0] = v27;
    v39[1] = v28;
    v39[2] = v29;
    v39[3] = v30;
    sub_1003BF5B4(v39);
    sub_100020674(&qword_10118CFB0, &qword_10118CFA0, &qword_100EC8C38, &protocol conformance descriptor for MusicLibrarySectionedRequest<A, B>);
    v19 = v26;
    v20 = MusicAutoupdatableRequest.autoupdatingResponse.getter();
    (*(v18 + 8))(v7, v19);
    v36 = v20;
    RequestResponse.Controller.request.setter(v34);
  }

  sub_10003DD5C(&unk_1010A9770, sub_1003BF834);
  if (v44 != *(a1 + 5) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    sub_10003E4A4(&unk_1010A9770, sub_1003BF73C);
  }

  v34[0] = v42;
  v21 = v42;
  v39[0] = *(a1 + 3);
  v22 = v39[0];
  sub_100118E9C(v34, v37);
  sub_100118E9C(v39, v37);
  sub_1003BF5B4(a1);
  if (v21 == v22)
  {
    sub_100015BB0(v39);
    sub_100015BB0(v34);
  }

  else
  {
    v23 = _stringCompareWithSmolCheck(_:_:expecting:)();
    sub_100015BB0(v39);
    sub_100015BB0(v34);
    if ((v23 & 1) == 0)
    {
      sub_1003A647C(&unk_1010A9770, sub_1003BF608);
    }
  }

  return sub_1003BF5B4(v41);
}

uint64_t sub_100379614(__int128 *a1)
{
  v2 = v1;
  v4 = sub_10010FC20(&qword_101180370, &qword_100EBA5E0);
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v28 - v6;
  v8 = *(v2 + 48);
  swift_beginAccess();
  v9 = v8[4];
  v40[2] = v8[3];
  v41 = v9;
  v10 = v8[6];
  v42 = v8[5];
  v43 = v10;
  v11 = v8[2];
  v40[0] = v8[1];
  v40[1] = v11;
  sub_1001103E0(v40, v36);
  sub_10010B864(v40, a1);
  if ((v12 & 1) == 0)
  {
    v13 = a1[3];
    v14 = a1[1];
    v32 = a1[2];
    v33 = v13;
    v15 = a1[1];
    v30 = *a1;
    v31 = v15;
    v38[0] = v30;
    v38[1] = v15;
    v38[2] = v32;
    v38[3] = v13;
    v16 = a1[5];
    v17 = a1[3];
    v34 = a1[4];
    v35 = v16;
    v38[4] = v34;
    v38[5] = v16;
    v18 = a1[5];
    v36[4] = v34;
    v36[5] = v18;
    v36[2] = v32;
    v36[3] = v17;
    v36[0] = v30;
    v36[1] = v14;
    v19 = sub_1003BEDFC();
    v20 = *(v19 + 48);
    sub_1001103E0(a1, v39);
    sub_1001103E0(v38, v39);
    v29 = v4;
    v21 = v5;
    v20(&_s6MoviesVN, v19);
    v39[2] = v32;
    v39[3] = v33;
    v39[4] = v34;
    v39[5] = v35;
    v39[0] = v30;
    v39[1] = v31;
    sub_100110418(v39);
    sub_100020674(&unk_10118CF68, &qword_101180370, &qword_100EBA5E0, &protocol conformance descriptor for MusicLibrarySectionedRequest<A, B>);
    v22 = v29;
    v23 = MusicAutoupdatableRequest.autoupdatingResponse.getter();
    (*(v21 + 8))(v7, v22);
    v37 = v23;
    RequestResponse.Controller.request.setter(v36);
  }

  sub_1003A42EC();
  if (__PAIR128__(v43, *(&v42 + 1)) != *(a1 + 72) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    sub_1003A539C();
  }

  v36[0] = v41;
  v24 = v41;
  v39[0] = a1[3];
  v25 = v39[0];
  sub_100118E9C(v36, v38);
  sub_100118E9C(v39, v38);
  sub_100110418(a1);
  if (v24 == v25)
  {
    sub_100015BB0(v39);
    sub_100015BB0(v36);
  }

  else
  {
    v26 = _stringCompareWithSmolCheck(_:_:expecting:)();
    sub_100015BB0(v39);
    sub_100015BB0(v36);
    if ((v26 & 1) == 0)
    {
      sub_1003A647C(&unk_1010A95B8, sub_1003BEE50);
    }
  }

  return sub_100110418(v40);
}

uint64_t sub_10037993C(unsigned __int8 *a1)
{
  v2 = v1;
  v4 = sub_10010FC20(&qword_10118CFC0, &qword_100EC8C68);
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v25 - v6;
  v8 = *(v2 + 48);
  swift_beginAccess();
  v9 = *(v8 + 80);
  v42 = *(v8 + 64);
  v43 = v9;
  v44 = *(v8 + 96);
  v45 = *(v8 + 112);
  v10 = *(v8 + 32);
  v41[0] = *(v8 + 16);
  v41[1] = v10;
  v41[2] = *(v8 + 48);
  sub_1003BF8F0(v41, v34);
  sub_100457548(v41, a1);
  if ((v11 & 1) == 0)
  {
    v12 = *(a1 + 1);
    v27 = *a1;
    v28 = v12;
    v13 = *(a1 + 3);
    v29 = *(a1 + 2);
    v30 = v13;
    v37[0] = v27;
    v37[1] = v12;
    v37[2] = v29;
    v37[3] = v13;
    v14 = *(a1 + 5);
    v31 = *(a1 + 4);
    v32 = v14;
    v33 = *(a1 + 12);
    v37[4] = v31;
    v37[5] = v14;
    v38 = v33;
    v34[0] = v27;
    v34[1] = v12;
    v35 = *(a1 + 12);
    v15 = *(a1 + 5);
    v34[4] = v31;
    v34[5] = v15;
    v34[2] = v29;
    v34[3] = v13;
    v16 = sub_1003BF94C();
    v17 = *(v16 + 48);
    sub_1003BF8F0(a1, v39);
    sub_1003BF8F0(v37, v39);
    v26 = v4;
    v18 = v5;
    v17(&_s7TVShowsVN, v16);
    v39[4] = v31;
    v39[5] = v32;
    v40 = v33;
    v39[0] = v27;
    v39[1] = v28;
    v39[2] = v29;
    v39[3] = v30;
    sub_1003BF9A0(v39);
    sub_100020674(&qword_10118CFD0, &qword_10118CFC0, &qword_100EC8C68, &protocol conformance descriptor for MusicLibrarySectionedRequest<A, B>);
    v19 = v26;
    v20 = MusicAutoupdatableRequest.autoupdatingResponse.getter();
    (*(v18 + 8))(v7, v19);
    v36 = v20;
    RequestResponse.Controller.request.setter(v34);
  }

  sub_10003DD5C(&unk_1010A9838, sub_1003BFC20);
  if (v44 != *(a1 + 5) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    sub_10003E4A4(&unk_1010A9838, sub_1003BFB28);
  }

  v34[0] = v42;
  v21 = v42;
  v39[0] = *(a1 + 3);
  v22 = v39[0];
  sub_100118E9C(v34, v37);
  sub_100118E9C(v39, v37);
  sub_1003BF9A0(a1);
  if (v21 == v22)
  {
    sub_100015BB0(v39);
    sub_100015BB0(v34);
  }

  else
  {
    v23 = _stringCompareWithSmolCheck(_:_:expecting:)();
    sub_100015BB0(v39);
    sub_100015BB0(v34);
    if ((v23 & 1) == 0)
    {
      sub_1003A647C(&unk_1010A9838, sub_1003BF9F4);
    }
  }

  return sub_1003BF9A0(v41);
}

uint64_t sub_100379CC8(__int128 *a1)
{
  v2 = v1;
  v4 = sub_10010FC20(&qword_10118CF20, &qword_100EC8B98);
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v21 - v6;
  v8 = *(v2 + 48);
  swift_beginAccess();
  v9 = *(v8 + 48);
  v35[1] = *(v8 + 32);
  v35[2] = v9;
  v36 = *(v8 + 64);
  v37 = *(v8 + 80);
  v35[0] = *(v8 + 16);
  sub_10021817C(v35, v28);
  if ((sub_1007B9D2C(v35, a1) & 1) == 0)
  {
    v10 = a1[3];
    v25 = a1[2];
    v26 = v10;
    v27 = *(a1 + 64);
    v11 = a1[1];
    v23 = *a1;
    v24 = v11;
    v31[2] = v25;
    v31[3] = v10;
    v32 = v27;
    v31[0] = v23;
    v31[1] = v11;
    v29 = v27;
    v28[2] = v25;
    v28[3] = v10;
    v28[0] = v23;
    v28[1] = v11;
    v12 = sub_1003BEC68();
    v13 = *(v12 + 48);
    sub_10021817C(a1, v33);
    sub_10021817C(v31, v33);
    v22 = v4;
    v14 = v5;
    v13(&_s5SongsVN, v12);
    v33[2] = v25;
    v33[3] = v26;
    v34 = v27;
    v33[0] = v23;
    v33[1] = v24;
    sub_1003BECBC(v33);
    sub_100020674(&unk_10118CF30, &qword_10118CF20, &qword_100EC8B98, &protocol conformance descriptor for MusicLibrarySectionedRequest<A, B>);
    v15 = v22;
    v16 = MusicAutoupdatableRequest.autoupdatingResponse.getter();
    (*(v14 + 8))(v7, v15);
    v30 = v16;
    RequestResponse.Controller.request.setter(v28);
  }

  sub_1003A43D0();
  v28[0] = v36;
  v17 = v36;
  v33[0] = a1[3];
  v18 = v33[0];
  sub_100118E9C(v28, v31);
  sub_100118E9C(v33, v31);
  sub_1003BECBC(a1);
  if (v17 == v18)
  {
    sub_100015BB0(v33);
    sub_100015BB0(v28);
  }

  else
  {
    v19 = _stringCompareWithSmolCheck(_:_:expecting:)();
    sub_100015BB0(v33);
    sub_100015BB0(v28);
    if ((v19 & 1) == 0)
    {
      sub_1003A647C(&unk_1010A9568, sub_1003BED10);
    }
  }

  return sub_1003BECBC(v35);
}

uint64_t sub_100379FBC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10010FC20(&qword_10118CFF0, &qword_100EC8CB8);
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v23[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v9 = &v23[-v8];
  v10 = *(v2 + 48);
  swift_beginAccess();
  v11 = *(v10 + 80);
  v29 = *(v10 + 64);
  v30 = v11;
  v31 = *(v10 + 96);
  v32 = *(v10 + 112);
  v12 = *(v10 + 32);
  v28[0] = *(v10 + 16);
  v28[1] = v12;
  v28[2] = *(v10 + 48);
  sub_10003D868(v28, v25);
  sub_100457548(v28, a1);
  if ((v13 & 1) == 0)
  {
    v14 = *(a1 + 80);
    v25[4] = *(a1 + 64);
    v25[5] = v14;
    v26 = *(a1 + 96);
    v15 = *(a1 + 16);
    v25[0] = *a1;
    v25[1] = v15;
    v16 = *(a1 + 48);
    v25[2] = *(a1 + 32);
    v25[3] = v16;
    sub_10003D868(a1, v24);
    sub_10003D868(a1, v24);
    type metadata accessor for TitledSection();
    type metadata accessor for RecentlyAddedMusicItem();
    sub_10003D8C4(&qword_10118CFF8, &type metadata accessor for RecentlyAddedMusicItem, &protocol conformance descriptor for RecentlyAddedMusicItem);
    MusicLibrarySectionedRequest.init()();

    MusicLibrarySectionedRequest.library.setter();
    v17 = *(a1 + 16);
    MusicLibrarySectionedRequest.includeOnlyDownloadedContent.setter();
    MusicLibrarySectionedRequest.filterItems(text:)(*(a1 + 24));
    MusicLibrarySectionedRequest.limit.setter();
    swift_getKeyPath();
    MusicLibrarySectionedRequest.sortItems<A>(by:ascending:)();
    if (v17 == 1)
    {

      MusicLibrarySectionedRequest.excludeNonPinnedPlaylists.setter();
      sub_10003D90C(a1);
    }

    else
    {
      sub_10003D90C(a1);
    }

    (*(v5 + 32))(v9, v7, v4);
    sub_100020674(&qword_10118D000, &qword_10118CFF0, &qword_100EC8CB8, &protocol conformance descriptor for MusicLibrarySectionedRequest<A, B>);
    v18 = MusicAutoupdatableRequest.autoupdatingResponse.getter();
    (*(v5 + 8))(v9, v4);
    v27 = v18;
    RequestResponse.Controller.request.setter(v25);
  }

  sub_10003DD5C(&unk_1010A9928, sub_1003BFFD8);
  if (v31 != *(a1 + 80) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    sub_10003E4A4(&unk_1010A9928, sub_1003BFEE0);
  }

  v25[0] = v29;
  v19 = v29;
  v24[0] = *(a1 + 48);
  v20 = v24[0];
  sub_100118E9C(v25, v23);
  sub_100118E9C(v24, v23);
  sub_10003D90C(a1);
  if (v19 == v20)
  {
    sub_100015BB0(v24);
    sub_100015BB0(v25);
  }

  else
  {
    v21 = _stringCompareWithSmolCheck(_:_:expecting:)();
    sub_100015BB0(v24);
    sub_100015BB0(v25);
    if ((v21 & 1) == 0)
    {
      sub_1003A647C(&unk_1010A9928, sub_1003BFDAC);
    }
  }

  return sub_10003D90C(v28);
}

uint64_t sub_10037A404@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a1;
  v38 = a2;
  v34 = sub_10010FC20(&qword_10118C550, &qword_100EBD5B0);
  v36 = *(v34 - 8);
  __chkstk_darwin();
  v3 = &v33 - v2;
  sub_10010FC20(&qword_10118D3E8, &unk_100EC9140);
  __chkstk_darwin();
  v5 = &v33 - v4;
  v6 = sub_10010FC20(&unk_10118D3F0, &qword_100EC7D18);
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v35 = &v33 - v8;
  sub_10010FC20(&unk_10118C4D0, &unk_100EC9150);
  __chkstk_darwin();
  v10 = &v33 - v9;
  v11 = sub_10010FC20(&unk_10118D400, &unk_100EC7CC0);
  v12 = *(v11 - 8);
  __chkstk_darwin();
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v16 = &v33 - v15;
  RequestResponse.Controller.revision.getter();
  RequestResponse.Revision.content.getter(v10);

  v17 = sub_10010FC20(&unk_10118C4E0, &unk_100EC9160);
  if ((*(*(v17 - 8) + 48))(v10, 1, v17) == 1)
  {
    v18 = &unk_10118C4D0;
    v19 = &unk_100EC9150;
    v20 = v10;
LABEL_5:
    sub_1000095E8(v20, v18, v19);
LABEL_6:
    v21 = 1;
    v22 = v38;
    goto LABEL_7;
  }

  (*(v12 + 16))(v14, v10, v11);
  sub_1000095E8(v10, &unk_10118C4E0, &unk_100EC9160);
  (*(v12 + 32))(v16, v14, v11);
  MusicLibrarySectionedResponse.sections.getter();
  IndexPath.section.getter();
  Array.subscript.getter(v6, v5);

  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    (*(v12 + 8))(v16, v11);
    v18 = &qword_10118D3E8;
    v19 = &unk_100EC9140;
    v20 = v5;
    goto LABEL_5;
  }

  v25 = v35;
  (*(v7 + 32))(v35, v5, v6);
  MusicLibrarySection.items.getter();
  sub_100020674(&unk_10118C230, &qword_10118C550, &qword_100EBD5B0, &protocol conformance descriptor for MusicItemCollection<A>);
  v26 = v34;
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  v27 = dispatch thunk of Collection.distance(from:to:)();
  v28 = *(v36 + 8);
  v36 += 8;
  v33 = v28;
  v28(v3, v26);
  if (IndexPath.item.getter() >= v27)
  {
    (*(v7 + 8))(v25, v6);
    (*(v12 + 8))(v16, v11);
    goto LABEL_6;
  }

  v29 = IndexPath.item.getter();
  v30 = NSNotFound.getter();
  v22 = v38;
  if (v29 == v30)
  {
    (*(v7 + 8))(v35, v6);
    (*(v12 + 8))(v16, v11);
    v21 = 1;
  }

  else
  {
    v31 = v35;
    MusicLibrarySection.items.getter();
    IndexPath.item.getter();
    v32 = v34;
    MusicItemCollection.subscript.getter();
    v33(v3, v32);
    (*(v7 + 8))(v31, v6);
    (*(v12 + 8))(v16, v11);
    v21 = 0;
  }

LABEL_7:
  v23 = type metadata accessor for Composer();
  return (*(*(v23 - 8) + 56))(v22, v21, 1, v23);
}

uint64_t sub_10037AA20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a1;
  v38 = a2;
  v34 = sub_10010FC20(&qword_1011828F0, &unk_100ED1640);
  v36 = *(v34 - 8);
  __chkstk_darwin();
  v3 = &v33 - v2;
  sub_10010FC20(&qword_10118CEB8, &unk_100EC8AE0);
  __chkstk_darwin();
  v5 = &v33 - v4;
  v6 = sub_10010FC20(&unk_10118CEC0, &unk_100EE0420);
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v35 = &v33 - v8;
  sub_10010FC20(&unk_10118CDC0, &unk_100EC89D0);
  __chkstk_darwin();
  v10 = &v33 - v9;
  v11 = sub_10010FC20(&qword_101193C80, &qword_100EDE790);
  v12 = *(v11 - 8);
  __chkstk_darwin();
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v16 = &v33 - v15;
  RequestResponse.Controller.revision.getter();
  RequestResponse.Revision.content.getter(v10);

  v17 = sub_10010FC20(&unk_10118CDD0, &unk_100EC89E0);
  if ((*(*(v17 - 8) + 48))(v10, 1, v17) == 1)
  {
    v18 = &unk_10118CDC0;
    v19 = &unk_100EC89D0;
    v20 = v10;
LABEL_5:
    sub_1000095E8(v20, v18, v19);
LABEL_6:
    v21 = 1;
    v22 = v38;
    goto LABEL_7;
  }

  (*(v12 + 16))(v14, v10, v11);
  sub_1000095E8(v10, &unk_10118CDD0, &unk_100EC89E0);
  (*(v12 + 32))(v16, v14, v11);
  MusicLibrarySectionedResponse.sections.getter();
  IndexPath.section.getter();
  Array.subscript.getter(v6, v5);

  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    (*(v12 + 8))(v16, v11);
    v18 = &qword_10118CEB8;
    v19 = &unk_100EC8AE0;
    v20 = v5;
    goto LABEL_5;
  }

  v25 = v35;
  (*(v7 + 32))(v35, v5, v6);
  MusicLibrarySection.items.getter();
  sub_100020674(&qword_10118C1D0, &qword_1011828F0, &unk_100ED1640, &protocol conformance descriptor for MusicItemCollection<A>);
  v26 = v34;
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  v27 = dispatch thunk of Collection.distance(from:to:)();
  v28 = *(v36 + 8);
  v36 += 8;
  v33 = v28;
  v28(v3, v26);
  if (IndexPath.item.getter() >= v27)
  {
    (*(v7 + 8))(v25, v6);
    (*(v12 + 8))(v16, v11);
    goto LABEL_6;
  }

  v29 = IndexPath.item.getter();
  v30 = NSNotFound.getter();
  v22 = v38;
  if (v29 == v30)
  {
    (*(v7 + 8))(v35, v6);
    (*(v12 + 8))(v16, v11);
    v21 = 1;
  }

  else
  {
    v31 = v35;
    MusicLibrarySection.items.getter();
    IndexPath.item.getter();
    v32 = v34;
    MusicItemCollection.subscript.getter();
    v33(v3, v32);
    (*(v7 + 8))(v31, v6);
    (*(v12 + 8))(v16, v11);
    v21 = 0;
  }

LABEL_7:
  v23 = type metadata accessor for Playlist.Folder.Item();
  return (*(*(v23 - 8) + 56))(v22, v21, 1, v23);
}

uint64_t sub_10037B03C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a1;
  v38 = a2;
  v34 = sub_10010FC20(&qword_10118D210, &qword_100EBD760);
  v36 = *(v34 - 8);
  __chkstk_darwin();
  v3 = &v33 - v2;
  sub_10010FC20(&qword_10118D218, &qword_100EC8F20);
  __chkstk_darwin();
  v5 = &v33 - v4;
  v6 = sub_10010FC20(&unk_10118D220, &qword_100EC8F28);
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v35 = &v33 - v8;
  sub_10010FC20(&unk_10118DE60, &unk_100EC8F30);
  __chkstk_darwin();
  v10 = &v33 - v9;
  v11 = sub_10010FC20(&unk_10118D230, &qword_100EC9E50);
  v12 = *(v11 - 8);
  __chkstk_darwin();
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v16 = &v33 - v15;
  RequestResponse.Controller.revision.getter();
  RequestResponse.Revision.content.getter(v10);

  v17 = sub_10010FC20(&unk_10118DE70, &unk_100EC8F40);
  if ((*(*(v17 - 8) + 48))(v10, 1, v17) == 1)
  {
    v18 = &unk_10118DE60;
    v19 = &unk_100EC8F30;
    v20 = v10;
LABEL_5:
    sub_1000095E8(v20, v18, v19);
LABEL_6:
    v21 = 1;
    v22 = v38;
    goto LABEL_7;
  }

  (*(v12 + 16))(v14, v10, v11);
  sub_1000095E8(v10, &unk_10118DE70, &unk_100EC8F40);
  (*(v12 + 32))(v16, v14, v11);
  MusicLibrarySectionedResponse.sections.getter();
  IndexPath.section.getter();
  Array.subscript.getter(v6, v5);

  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    (*(v12 + 8))(v16, v11);
    v18 = &qword_10118D218;
    v19 = &qword_100EC8F20;
    v20 = v5;
    goto LABEL_5;
  }

  v25 = v35;
  (*(v7 + 32))(v35, v5, v6);
  MusicLibrarySection.items.getter();
  sub_100020674(&unk_10118C240, &qword_10118D210, &qword_100EBD760, &protocol conformance descriptor for MusicItemCollection<A>);
  v26 = v34;
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  v27 = dispatch thunk of Collection.distance(from:to:)();
  v28 = *(v36 + 8);
  v36 += 8;
  v33 = v28;
  v28(v3, v26);
  if (IndexPath.item.getter() >= v27)
  {
    (*(v7 + 8))(v25, v6);
    (*(v12 + 8))(v16, v11);
    goto LABEL_6;
  }

  v29 = IndexPath.item.getter();
  v30 = NSNotFound.getter();
  v22 = v38;
  if (v29 == v30)
  {
    (*(v7 + 8))(v35, v6);
    (*(v12 + 8))(v16, v11);
    v21 = 1;
  }

  else
  {
    v31 = v35;
    MusicLibrarySection.items.getter();
    IndexPath.item.getter();
    v32 = v34;
    MusicItemCollection.subscript.getter();
    v33(v3, v32);
    (*(v7 + 8))(v31, v6);
    (*(v12 + 8))(v16, v11);
    v21 = 0;
  }

LABEL_7:
  v23 = type metadata accessor for Genre();
  return (*(*(v23 - 8) + 56))(v22, v21, 1, v23);
}

uint64_t sub_10037B658@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a1;
  v38 = a2;
  v34 = sub_10010FC20(&unk_101181600, &unk_100EBD070);
  v36 = *(v34 - 8);
  __chkstk_darwin();
  v3 = &v33 - v2;
  sub_10010FC20(&unk_10118D1D0, &qword_100EC8EF8);
  __chkstk_darwin();
  v5 = &v33 - v4;
  v6 = sub_10010FC20(&qword_101193AF0, &unk_100EC0370);
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v35 = &v33 - v8;
  sub_10010FC20(&unk_1011846C0, &unk_100ED13F0);
  __chkstk_darwin();
  v10 = &v33 - v9;
  v11 = sub_10010FC20(&unk_101193AA0, &unk_100EC0380);
  v12 = *(v11 - 8);
  __chkstk_darwin();
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v16 = &v33 - v15;
  RequestResponse.Controller.revision.getter();
  RequestResponse.Revision.content.getter(v10);

  v17 = sub_10010FC20(&unk_10118D1E0, &unk_100EC03B0);
  if ((*(*(v17 - 8) + 48))(v10, 1, v17) == 1)
  {
    v18 = &unk_1011846C0;
    v19 = &unk_100ED13F0;
    v20 = v10;
LABEL_5:
    sub_1000095E8(v20, v18, v19);
LABEL_6:
    v21 = 1;
    v22 = v38;
    goto LABEL_7;
  }

  (*(v12 + 16))(v14, v10, v11);
  sub_1000095E8(v10, &unk_10118D1E0, &unk_100EC03B0);
  (*(v12 + 32))(v16, v14, v11);
  MusicLibrarySectionedResponse.sections.getter();
  IndexPath.section.getter();
  Array.subscript.getter(v6, v5);

  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    (*(v12 + 8))(v16, v11);
    v18 = &unk_10118D1D0;
    v19 = &qword_100EC8EF8;
    v20 = v5;
    goto LABEL_5;
  }

  v25 = v35;
  (*(v7 + 32))(v35, v5, v6);
  MusicLibrarySection.items.getter();
  sub_100020674(&unk_10118C260, &unk_101181600, &unk_100EBD070, &protocol conformance descriptor for MusicItemCollection<A>);
  v26 = v34;
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  v27 = dispatch thunk of Collection.distance(from:to:)();
  v28 = *(v36 + 8);
  v36 += 8;
  v33 = v28;
  v28(v3, v26);
  if (IndexPath.item.getter() >= v27)
  {
    (*(v7 + 8))(v25, v6);
    (*(v12 + 8))(v16, v11);
    goto LABEL_6;
  }

  v29 = IndexPath.item.getter();
  v30 = NSNotFound.getter();
  v22 = v38;
  if (v29 == v30)
  {
    (*(v7 + 8))(v35, v6);
    (*(v12 + 8))(v16, v11);
    v21 = 1;
  }

  else
  {
    v31 = v35;
    MusicLibrarySection.items.getter();
    IndexPath.item.getter();
    v32 = v34;
    MusicItemCollection.subscript.getter();
    v33(v3, v32);
    (*(v7 + 8))(v31, v6);
    (*(v12 + 8))(v16, v11);
    v21 = 0;
  }

LABEL_7:
  v23 = type metadata accessor for MusicVideo();
  return (*(*(v23 - 8) + 56))(v22, v21, 1, v23);
}

uint64_t sub_10037BC74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a1;
  v38 = a2;
  v34 = sub_10010FC20(&qword_10118D1A0, &qword_100EBD6B0);
  v36 = *(v34 - 8);
  __chkstk_darwin();
  v3 = &v33 - v2;
  sub_10010FC20(&qword_10118D1A8, &qword_100EC8EC8);
  __chkstk_darwin();
  v5 = &v33 - v4;
  v6 = sub_10010FC20(&qword_10118D1B0, &qword_100EC8ED0);
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v35 = &v33 - v8;
  sub_10010FC20(&qword_10118D1B8, &qword_100EC8ED8);
  __chkstk_darwin();
  v10 = &v33 - v9;
  v11 = sub_10010FC20(&qword_10118D1C0, &qword_100EC8EE0);
  v12 = *(v11 - 8);
  __chkstk_darwin();
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v16 = &v33 - v15;
  RequestResponse.Controller.revision.getter();
  RequestResponse.Revision.content.getter(v10);

  v17 = sub_10010FC20(&qword_10118D1C8, &unk_100EC8EE8);
  if ((*(*(v17 - 8) + 48))(v10, 1, v17) == 1)
  {
    v18 = &qword_10118D1B8;
    v19 = &qword_100EC8ED8;
    v20 = v10;
LABEL_5:
    sub_1000095E8(v20, v18, v19);
LABEL_6:
    v21 = 1;
    v22 = v38;
    goto LABEL_7;
  }

  (*(v12 + 16))(v14, v10, v11);
  sub_1000095E8(v10, &qword_10118D1C8, &unk_100EC8EE8);
  (*(v12 + 32))(v16, v14, v11);
  MusicLibrarySectionedResponse.sections.getter();
  IndexPath.section.getter();
  Array.subscript.getter(v6, v5);

  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    (*(v12 + 8))(v16, v11);
    v18 = &qword_10118D1A8;
    v19 = &qword_100EC8EC8;
    v20 = v5;
    goto LABEL_5;
  }

  v25 = v35;
  (*(v7 + 32))(v35, v5, v6);
  MusicLibrarySection.items.getter();
  sub_100020674(&unk_10118C2A0, &qword_10118D1A0, &qword_100EBD6B0, &protocol conformance descriptor for MusicItemCollection<A>);
  v26 = v34;
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  v27 = dispatch thunk of Collection.distance(from:to:)();
  v28 = *(v36 + 8);
  v36 += 8;
  v33 = v28;
  v28(v3, v26);
  if (IndexPath.item.getter() >= v27)
  {
    (*(v7 + 8))(v25, v6);
    (*(v12 + 8))(v16, v11);
    goto LABEL_6;
  }

  v29 = IndexPath.item.getter();
  v30 = NSNotFound.getter();
  v22 = v38;
  if (v29 == v30)
  {
    (*(v7 + 8))(v35, v6);
    (*(v12 + 8))(v16, v11);
    v21 = 1;
  }

  else
  {
    v31 = v35;
    MusicLibrarySection.items.getter();
    IndexPath.item.getter();
    v32 = v34;
    MusicItemCollection.subscript.getter();
    v33(v3, v32);
    (*(v7 + 8))(v31, v6);
    (*(v12 + 8))(v16, v11);
    v21 = 0;
  }

LABEL_7:
  v23 = type metadata accessor for Song();
  return (*(*(v23 - 8) + 56))(v22, v21, 1, v23);
}

uint64_t sub_10037C290@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a1;
  v38 = a2;
  v34 = sub_10010FC20(&qword_10118D130, &qword_100EBD670);
  v36 = *(v34 - 8);
  __chkstk_darwin();
  v3 = &v33 - v2;
  sub_10010FC20(&qword_10118D138, &qword_100EC8E70);
  __chkstk_darwin();
  v5 = &v33 - v4;
  v6 = sub_10010FC20(&qword_10118D140, &qword_100EC8E78);
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v35 = &v33 - v8;
  sub_10010FC20(&qword_10118D148, &unk_100EC8E80);
  __chkstk_darwin();
  v10 = &v33 - v9;
  v11 = sub_10010FC20(&qword_10118D150, &unk_100ED8080);
  v12 = *(v11 - 8);
  __chkstk_darwin();
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v16 = &v33 - v15;
  RequestResponse.Controller.revision.getter();
  RequestResponse.Revision.content.getter(v10);

  v17 = sub_10010FC20(&qword_10118D158, &unk_100EC8E90);
  if ((*(*(v17 - 8) + 48))(v10, 1, v17) == 1)
  {
    v18 = &qword_10118D148;
    v19 = &unk_100EC8E80;
    v20 = v10;
LABEL_5:
    sub_1000095E8(v20, v18, v19);
LABEL_6:
    v21 = 1;
    v22 = v38;
    goto LABEL_7;
  }

  (*(v12 + 16))(v14, v10, v11);
  sub_1000095E8(v10, &qword_10118D158, &unk_100EC8E90);
  (*(v12 + 32))(v16, v14, v11);
  MusicLibrarySectionedResponse.sections.getter();
  IndexPath.section.getter();
  Array.subscript.getter(v6, v5);

  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    (*(v12 + 8))(v16, v11);
    v18 = &qword_10118D138;
    v19 = &qword_100EC8E70;
    v20 = v5;
    goto LABEL_5;
  }

  v25 = v35;
  (*(v7 + 32))(v35, v5, v6);
  MusicLibrarySection.items.getter();
  sub_100020674(&unk_10118C270, &qword_10118D130, &qword_100EBD670, &protocol conformance descriptor for MusicItemCollection<A>);
  v26 = v34;
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  v27 = dispatch thunk of Collection.distance(from:to:)();
  v28 = *(v36 + 8);
  v36 += 8;
  v33 = v28;
  v28(v3, v26);
  if (IndexPath.item.getter() >= v27)
  {
    (*(v7 + 8))(v25, v6);
    (*(v12 + 8))(v16, v11);
    goto LABEL_6;
  }

  v29 = IndexPath.item.getter();
  v30 = NSNotFound.getter();
  v22 = v38;
  if (v29 == v30)
  {
    (*(v7 + 8))(v35, v6);
    (*(v12 + 8))(v16, v11);
    v21 = 1;
  }

  else
  {
    v31 = v35;
    MusicLibrarySection.items.getter();
    IndexPath.item.getter();
    v32 = v34;
    MusicItemCollection.subscript.getter();
    v33(v3, v32);
    (*(v7 + 8))(v31, v6);
    (*(v12 + 8))(v16, v11);
    v21 = 0;
  }

LABEL_7:
  v23 = type metadata accessor for TVEpisode();
  return (*(*(v23 - 8) + 56))(v22, v21, 1, v23);
}

uint64_t sub_10037C8AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a1;
  v38 = a2;
  v34 = sub_10010FC20(&qword_1011815C0, &unk_100EBD040);
  v36 = *(v34 - 8);
  __chkstk_darwin();
  v3 = &v33 - v2;
  sub_10010FC20(&qword_10118D120, &unk_100EC8E30);
  __chkstk_darwin();
  v5 = &v33 - v4;
  v6 = sub_10010FC20(&qword_1011846D8, &unk_100EC0390);
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v35 = &v33 - v8;
  sub_10010FC20(&unk_1011846E0, &qword_100EC8E40);
  __chkstk_darwin();
  v10 = &v33 - v9;
  v11 = sub_10010FC20(&unk_10118F1E0, &qword_100EC03A0);
  v12 = *(v11 - 8);
  __chkstk_darwin();
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v16 = &v33 - v15;
  RequestResponse.Controller.revision.getter();
  RequestResponse.Revision.content.getter(v10);

  v17 = sub_10010FC20(&unk_101184700, &unk_100EC03C0);
  if ((*(*(v17 - 8) + 48))(v10, 1, v17) == 1)
  {
    v18 = &unk_1011846E0;
    v19 = &qword_100EC8E40;
    v20 = v10;
LABEL_5:
    sub_1000095E8(v20, v18, v19);
LABEL_6:
    v21 = 1;
    v22 = v38;
    goto LABEL_7;
  }

  (*(v12 + 16))(v14, v10, v11);
  sub_1000095E8(v10, &unk_101184700, &unk_100EC03C0);
  (*(v12 + 32))(v16, v14, v11);
  MusicLibrarySectionedResponse.sections.getter();
  IndexPath.section.getter();
  Array.subscript.getter(v6, v5);

  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    (*(v12 + 8))(v16, v11);
    v18 = &qword_10118D120;
    v19 = &unk_100EC8E30;
    v20 = v5;
    goto LABEL_5;
  }

  v25 = v35;
  (*(v7 + 32))(v35, v5, v6);
  MusicLibrarySection.items.getter();
  sub_100020674(&unk_10118C140, &qword_1011815C0, &unk_100EBD040, &protocol conformance descriptor for MusicItemCollection<A>);
  v26 = v34;
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  v27 = dispatch thunk of Collection.distance(from:to:)();
  v28 = *(v36 + 8);
  v36 += 8;
  v33 = v28;
  v28(v3, v26);
  if (IndexPath.item.getter() >= v27)
  {
    (*(v7 + 8))(v25, v6);
    (*(v12 + 8))(v16, v11);
    goto LABEL_6;
  }

  v29 = IndexPath.item.getter();
  v30 = NSNotFound.getter();
  v22 = v38;
  if (v29 == v30)
  {
    (*(v7 + 8))(v35, v6);
    (*(v12 + 8))(v16, v11);
    v21 = 1;
  }

  else
  {
    v31 = v35;
    MusicLibrarySection.items.getter();
    IndexPath.item.getter();
    v32 = v34;
    MusicItemCollection.subscript.getter();
    v33(v3, v32);
    (*(v7 + 8))(v31, v6);
    (*(v12 + 8))(v16, v11);
    v21 = 0;
  }

LABEL_7:
  v23 = type metadata accessor for Album();
  return (*(*(v23 - 8) + 56))(v22, v21, 1, v23);
}

uint64_t sub_10037CEC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a1;
  v38 = a2;
  v34 = sub_10010FC20(&qword_101193B90, &qword_100EBD7A0);
  v36 = *(v34 - 8);
  __chkstk_darwin();
  v3 = &v33 - v2;
  sub_10010FC20(&unk_10118D0E0, &qword_100EC8E08);
  __chkstk_darwin();
  v5 = &v33 - v4;
  v6 = sub_10010FC20(&qword_1011A1980, &unk_100EC8E10);
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v35 = &v33 - v8;
  sub_10010FC20(&qword_10118D0F0, &unk_100EE1210);
  __chkstk_darwin();
  v10 = &v33 - v9;
  v11 = sub_10010FC20(&qword_10118D0F8, &unk_100EC8E20);
  v12 = *(v11 - 8);
  __chkstk_darwin();
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v16 = &v33 - v15;
  RequestResponse.Controller.revision.getter();
  RequestResponse.Revision.content.getter(v10);

  v17 = sub_10010FC20(&unk_10118D100, &unk_100EE1220);
  if ((*(*(v17 - 8) + 48))(v10, 1, v17) == 1)
  {
    v18 = &qword_10118D0F0;
    v19 = &unk_100EE1210;
    v20 = v10;
LABEL_5:
    sub_1000095E8(v20, v18, v19);
LABEL_6:
    v21 = 1;
    v22 = v38;
    goto LABEL_7;
  }

  (*(v12 + 16))(v14, v10, v11);
  sub_1000095E8(v10, &unk_10118D100, &unk_100EE1220);
  (*(v12 + 32))(v16, v14, v11);
  MusicLibrarySectionedResponse.sections.getter();
  IndexPath.section.getter();
  Array.subscript.getter(v6, v5);

  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    (*(v12 + 8))(v16, v11);
    v18 = &unk_10118D0E0;
    v19 = &qword_100EC8E08;
    v20 = v5;
    goto LABEL_5;
  }

  v25 = v35;
  (*(v7 + 32))(v35, v5, v6);
  MusicLibrarySection.items.getter();
  sub_100020674(&qword_10118C150, &qword_101193B90, &qword_100EBD7A0, &protocol conformance descriptor for MusicItemCollection<A>);
  v26 = v34;
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  v27 = dispatch thunk of Collection.distance(from:to:)();
  v28 = *(v36 + 8);
  v36 += 8;
  v33 = v28;
  v28(v3, v26);
  if (IndexPath.item.getter() >= v27)
  {
    (*(v7 + 8))(v25, v6);
    (*(v12 + 8))(v16, v11);
    goto LABEL_6;
  }

  v29 = IndexPath.item.getter();
  v30 = NSNotFound.getter();
  v22 = v38;
  if (v29 == v30)
  {
    (*(v7 + 8))(v35, v6);
    (*(v12 + 8))(v16, v11);
    v21 = 1;
  }

  else
  {
    v31 = v35;
    MusicLibrarySection.items.getter();
    IndexPath.item.getter();
    v32 = v34;
    MusicItemCollection.subscript.getter();
    v33(v3, v32);
    (*(v7 + 8))(v31, v6);
    (*(v12 + 8))(v16, v11);
    v21 = 0;
  }

LABEL_7:
  v23 = type metadata accessor for Artist();
  return (*(*(v23 - 8) + 56))(v22, v21, 1, v23);
}

uint64_t sub_10037D4E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a1;
  v38 = a2;
  v34 = sub_10010FC20(&qword_10118D0B0, &qword_100EBD730);
  v36 = *(v34 - 8);
  __chkstk_darwin();
  v3 = &v33 - v2;
  sub_10010FC20(&qword_10118D0B8, &qword_100EC8DD8);
  __chkstk_darwin();
  v5 = &v33 - v4;
  v6 = sub_10010FC20(&unk_10118D0C0, &qword_100EC8DE0);
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v35 = &v33 - v8;
  sub_10010FC20(&unk_1011A3860, &qword_100EC8DE8);
  __chkstk_darwin();
  v10 = &v33 - v9;
  v11 = sub_10010FC20(&unk_10118D0D0, &qword_100EC8DF0);
  v12 = *(v11 - 8);
  __chkstk_darwin();
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v16 = &v33 - v15;
  RequestResponse.Controller.revision.getter();
  RequestResponse.Revision.content.getter(v10);

  v17 = sub_10010FC20(&qword_1011A3880, &unk_100EC8DF8);
  if ((*(*(v17 - 8) + 48))(v10, 1, v17) == 1)
  {
    v18 = &unk_1011A3860;
    v19 = &qword_100EC8DE8;
    v20 = v10;
LABEL_5:
    sub_1000095E8(v20, v18, v19);
LABEL_6:
    v21 = 1;
    v22 = v38;
    goto LABEL_7;
  }

  (*(v12 + 16))(v14, v10, v11);
  sub_1000095E8(v10, &qword_1011A3880, &unk_100EC8DF8);
  (*(v12 + 32))(v16, v14, v11);
  MusicLibrarySectionedResponse.sections.getter();
  IndexPath.section.getter();
  Array.subscript.getter(v6, v5);

  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    (*(v12 + 8))(v16, v11);
    v18 = &qword_10118D0B8;
    v19 = &qword_100EC8DD8;
    v20 = v5;
    goto LABEL_5;
  }

  v25 = v35;
  (*(v7 + 32))(v35, v5, v6);
  MusicLibrarySection.items.getter();
  sub_100020674(&unk_10118C250, &qword_10118D0B0, &qword_100EBD730, &protocol conformance descriptor for MusicItemCollection<A>);
  v26 = v34;
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  v27 = dispatch thunk of Collection.distance(from:to:)();
  v28 = *(v36 + 8);
  v36 += 8;
  v33 = v28;
  v28(v3, v26);
  if (IndexPath.item.getter() >= v27)
  {
    (*(v7 + 8))(v25, v6);
    (*(v12 + 8))(v16, v11);
    goto LABEL_6;
  }

  v29 = IndexPath.item.getter();
  v30 = NSNotFound.getter();
  v22 = v38;
  if (v29 == v30)
  {
    (*(v7 + 8))(v35, v6);
    (*(v12 + 8))(v16, v11);
    v21 = 1;
  }

  else
  {
    v31 = v35;
    MusicLibrarySection.items.getter();
    IndexPath.item.getter();
    v32 = v34;
    MusicItemCollection.subscript.getter();
    v33(v3, v32);
    (*(v7 + 8))(v31, v6);
    (*(v12 + 8))(v16, v11);
    v21 = 0;
  }

LABEL_7:
  v23 = type metadata accessor for MusicMovie();
  return (*(*(v23 - 8) + 56))(v22, v21, 1, v23);
}

uint64_t sub_10037DB00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a1;
  v38 = a2;
  v34 = sub_10010FC20(&unk_1011A3E20, &qword_100EC8DA0);
  v36 = *(v34 - 8);
  __chkstk_darwin();
  v3 = &v33 - v2;
  sub_10010FC20(&unk_10118D080, &qword_100EC8DA8);
  __chkstk_darwin();
  v5 = &v33 - v4;
  v6 = sub_10010FC20(&unk_101196FB0, &unk_100EC8DB0);
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v35 = &v33 - v8;
  sub_10010FC20(&unk_10118D090, &unk_100ED5CB0);
  __chkstk_darwin();
  v10 = &v33 - v9;
  v11 = sub_10010FC20(&unk_101196F90, &qword_100EC8DC0);
  v12 = *(v11 - 8);
  __chkstk_darwin();
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v16 = &v33 - v15;
  RequestResponse.Controller.revision.getter();
  RequestResponse.Revision.content.getter(v10);

  v17 = sub_10010FC20(&unk_10118D0A0, &unk_100EC8DC8);
  if ((*(*(v17 - 8) + 48))(v10, 1, v17) == 1)
  {
    v18 = &unk_10118D090;
    v19 = &unk_100ED5CB0;
    v20 = v10;
LABEL_5:
    sub_1000095E8(v20, v18, v19);
LABEL_6:
    v21 = 1;
    v22 = v38;
    goto LABEL_7;
  }

  (*(v12 + 16))(v14, v10, v11);
  sub_1000095E8(v10, &unk_10118D0A0, &unk_100EC8DC8);
  (*(v12 + 32))(v16, v14, v11);
  MusicLibrarySectionedResponse.sections.getter();
  IndexPath.section.getter();
  Array.subscript.getter(v6, v5);

  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    (*(v12 + 8))(v16, v11);
    v18 = &unk_10118D080;
    v19 = &qword_100EC8DA8;
    v20 = v5;
    goto LABEL_5;
  }

  v25 = v35;
  (*(v7 + 32))(v35, v5, v6);
  MusicLibrarySection.items.getter();
  sub_100020674(&unk_101197060, &unk_1011A3E20, &qword_100EC8DA0, &protocol conformance descriptor for MusicItemCollection<A>);
  v26 = v34;
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  v27 = dispatch thunk of Collection.distance(from:to:)();
  v28 = *(v36 + 8);
  v36 += 8;
  v33 = v28;
  v28(v3, v26);
  if (IndexPath.item.getter() >= v27)
  {
    (*(v7 + 8))(v25, v6);
    (*(v12 + 8))(v16, v11);
    goto LABEL_6;
  }

  v29 = IndexPath.item.getter();
  v30 = NSNotFound.getter();
  v22 = v38;
  if (v29 == v30)
  {
    (*(v7 + 8))(v35, v6);
    (*(v12 + 8))(v16, v11);
    v21 = 1;
  }

  else
  {
    v31 = v35;
    MusicLibrarySection.items.getter();
    IndexPath.item.getter();
    v32 = v34;
    MusicItemCollection.subscript.getter();
    v33(v3, v32);
    (*(v7 + 8))(v31, v6);
    (*(v12 + 8))(v16, v11);
    v21 = 0;
  }

LABEL_7:
  v23 = type metadata accessor for RecentlyAddedMusicItem();
  return (*(*(v23 - 8) + 56))(v22, v21, 1, v23);
}

uint64_t *sub_10037E11C(uint64_t *a1, int a2, char a3)
{
  v4 = v3;
  LODWORD(v94) = a2;
  ObjectType = swift_getObjectType();
  sub_10010FC20(&unk_10118F670, &unk_100EC89B0);
  __chkstk_darwin();
  v89 = &v89 - v7;
  v8 = _s9PlaylistsV5ScopeVMa(0);
  __chkstk_darwin();
  *&v99 = &v89 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = _s9PlaylistsVMa(0);
  __chkstk_darwin();
  v11 = &v89 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v95 = &v89 - v12;
  v13 = OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController_pendingSelectedPlaylistItem;
  v14 = type metadata accessor for Playlist.Folder.Item();
  (*(*(v14 - 8) + 56))(&v3[v13], 1, 1, v14);
  v15 = OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController____lazy_storage___globalHeaderRegistration;
  v16 = sub_10010FC20(&unk_10118A650, &qword_100EC02B0);
  v17 = *(*(v16 - 8) + 56);
  v17(&v4[v15], 1, 1, v16);
  v17(&v4[OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController____lazy_storage___headerRegistration], 1, 1, v16);
  v18 = OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController____lazy_storage___listPlaylistCellRegistration;
  v19 = sub_10010FC20(&qword_10118CCD8, &qword_100EC8898);
  (*(*(v19 - 8) + 56))(&v4[v18], 1, 1, v19);
  v20 = OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController____lazy_storage___listFolderCellRegistration;
  v21 = sub_10010FC20(&qword_10118CCE8, &qword_100EC88A0);
  (*(*(v21 - 8) + 56))(&v4[v20], 1, 1, v21);
  v22 = OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController____lazy_storage___gridPlaylistCellRegistration;
  v23 = sub_10010FC20(&qword_10118CCF8, &qword_100EC88A8);
  (*(*(v23 - 8) + 56))(&v4[v22], 1, 1, v23);
  v24 = OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController____lazy_storage___gridFolderCellRegistration;
  v25 = sub_10010FC20(&unk_10118CD08, &qword_100EC88B0);
  (*(*(v25 - 8) + 56))(&v4[v24], 1, 1, v25);
  *&v4[OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController____lazy_storage___collectionView] = 0;
  v26 = OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController_prefetchingController;
  v27 = objc_allocWithZone(type metadata accessor for ArtworkPrefetchingController());
  *&v4[v26] = sub_10003AAD8(0xD000000000000020, 0x8000000100E483C0);
  *&v4[OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController_dragDropController] = 0;
  *&v4[OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController____lazy_storage___searchController] = 0;
  v28 = OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController____lazy_storage___actionMetricsReportingContext;
  v29 = type metadata accessor for Actions.MetricsReportingContext(0);
  (*(*(v29 - 8) + 56))(&v4[v28], 1, 1, v29);
  *&v4[OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController____lazy_storage___playShuffleHeaderDataSource] = 0;
  *&v4[OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController____lazy_storage___impressionsTracker] = 0;
  v30 = OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController____lazy_storage___pageProperties;
  v31 = sub_10010FC20(&unk_1011839D0, &qword_100EBF430);
  (*(*(v31 - 8) + 56))(&v4[v30], 1, 1, v31);
  *&v4[OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController____lazy_storage___contextBarButtonItem] = 0;
  *&v4[OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController____lazy_storage___plusBarButtonItem] = 0;
  *&v4[OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController____lazy_storage___playBarButtonItem] = 0;
  *&v4[OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController____lazy_storage___shuffleBarButtonItem] = 0;
  *&v4[OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController____lazy_storage___playShuffleBarButtonGroup] = 0;
  *&v4[OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController____lazy_storage___playShuffleBarButtonGroups] = 0;
  *&v4[OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController____lazy_storage___contextAndFilterBarButtonGroup] = 0;
  *&v4[OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController_folderResponse] = 0;
  v32 = &v4[OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController_folderResponseSubscription];
  *v32 = 0u;
  *(v32 + 1) = 0u;
  *(v32 + 4) = 0;
  *&v4[OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController_foregroundObserver] = 0;
  sub_1003C16C8(a1, &v4[OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController_scope], _s9PlaylistsV5ScopeVMa);
  if (qword_10117F298 != -1)
  {
    swift_once();
  }

  v96 = v8;
  v33 = sub_1000060E4(v8, qword_101218730);
  v34 = sub_1001982EC(a1, v33);
  if (v34)
  {
    v35 = 0xD000000000000011;
  }

  else
  {
    v35 = 0xD000000000000010;
  }

  if (v34)
  {
    v36 = "LibraryPlaylists";
  }

  else
  {
    v36 = "v32@0:8@16@24";
  }

  _s23LayoutVariantControllerCMa();
  swift_allocObject();
  *&v4[OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController_layoutVariantController] = sub_10059A684(v35, v36 | 0x8000000000000000, a3 & 1);
  v98 = a1;
  v37 = a1;
  v38 = v99;
  sub_1003C16C8(v37, v99, _s9PlaylistsV5ScopeVMa);
  type metadata accessor for MusicLibrary();
  *v11 = static MusicLibrary.shared.getter();
  *(v11 + 2) = 0;
  v11[24] = 1;
  v39 = v92;
  v40 = &v11[*(v92 + 9)];
  *v40 = 0;
  *(v40 + 1) = 0xE000000000000000;
  v93 = v39[10];
  *&v11[v93] = &_swiftEmptySetSingleton;
  v41 = &v11[v39[11]];
  *v41 = 263;
  v42 = v39[8];
  sub_1003C16C8(v38, &v11[v42], _s9PlaylistsV5ScopeVMa);
  v11[8] = v94 & 1;
  v11[9] = 0;
  v90 = objc_opt_self();
  v43 = [v90 standardUserDefaults];
  v91 = v42;
  v44 = sub_1001982EC(&v11[v42], v33);
  if (v44)
  {
    v45 = 0xD000000000000011;
  }

  else
  {
    v45 = 0xD000000000000010;
  }

  v94 = "LibraryPlaylists";
  v92 = "v32@0:8@16@24";
  if (v44)
  {
    v46 = "LibraryPlaylists";
  }

  else
  {
    v46 = "v32@0:8@16@24";
  }

  v101 = v45;
  v102 = v46 | 0x8000000000000000;

  v47._countAndFlagsBits = 0x53746E65746E6F43;
  v47._object = 0xEB0000000074726FLL;
  String.append(_:)(v47);

  sub_100110448();
  sub_10011049C();
  NSUserDefaults.decodeValue<A>(_:forKey:)(&_s11ContentSortVN, &v101);

  sub_100375B90(v101);
  if ((v48 & 0xFF00) == 0x200)
  {
    v49 = v33;
    v50 = sub_1001982EC(v99, v33);
    v48 = sub_10045FDA0(v50 & 1 | 0xFFFFFF80);
    if ((v48 & 0xFF00) == 0x200)
    {
      LOBYTE(v51) = 1;
      LOBYTE(v48) = 7;
      goto LABEL_20;
    }
  }

  else
  {
    v49 = v33;
  }

  v51 = (v48 >> 8) & 1;
LABEL_20:
  v52 = 0xD000000000000010;
  *v41 = v48;
  v41[1] = v51;
  v53 = [v90 standardUserDefaults];
  v54 = v49;
  v55 = sub_1001982EC(&v11[v91], v49);
  if (v55)
  {
    v52 = 0xD000000000000011;
  }

  v56 = v94;
  if ((v55 & 1) == 0)
  {
    v56 = v92;
  }

  v57 = v56 | 0x8000000000000000;
  v58 = sub_10010FC20(&unk_10118CD70, &qword_100EBE248);
  v101 = v52;
  v102 = v57;

  v59._countAndFlagsBits = 0x704F7265746C6946;
  v59._object = 0xEC0000006E6F6974;
  String.append(_:)(v59);

  sub_100178DD8(&unk_101182910, sub_100178D84, &protocol conformance descriptor for <> Set<A>);
  sub_100178DD8(&unk_101182920, sub_100178E50, &protocol conformance descriptor for <> Set<A>);
  NSUserDefaults.decodeValue<A>(_:forKey:)(v58, &v101);

  v60 = v101;
  if (!v101)
  {
    v61 = sub_10018F3F4();
    v62 = Optional<A>.convertToSet.getter(v61);
    if (v62)
    {
      v60 = v62;
    }

    else
    {
      v60 = &_swiftEmptySetSingleton;
    }
  }

  v64 = v98;
  v63 = v99;
  v65 = v96;
  v66 = sub_10018F5B8();
  v67 = sub_1003AE5C4(v66, v60);

  sub_1003C1730(v63, _s9PlaylistsV5ScopeVMa);
  *&v11[v93] = v67;
  v68 = v95;
  sub_1003C1790(v11, v95, _s9PlaylistsVMa);
  sub_10010FC20(&qword_101191390, &unk_100EC89C0);
  swift_allocObject();
  *&v4[OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController_responseController] = sub_1003A13B8(v68);
  v100.receiver = v4;
  v100.super_class = ObjectType;
  v69 = objc_msgSendSuper2(&v100, "initWithNibName:bundle:", 0, 0);
  sub_10037EDC4();
  v70 = String._bridgeToObjectiveC()();

  [v69 setTitle:v70];

  if (sub_1001982EC(v64, v54))
  {
    v71 = 6;
  }

  else
  {
    v72 = v64 + *(v65 + 20);
    v73 = v89;
    sub_1000089F8(v72, v89, &unk_10118F670, &unk_100EC89B0);
    v74 = type metadata accessor for Playlist.Folder();
    v75 = (*(*(v74 - 8) + 48))(v73, 1, v74);
    sub_1000095E8(v73, &unk_10118F670, &unk_100EC89B0);
    if (v75 == 1)
    {
      v71 = 10;
    }

    else
    {
      v71 = 11;
    }
  }

  UIViewController.playActivityFeatureIdentifier.setter(v71);
  v76 = [v69 traitCollection];

  v77 = UITraitCollection.preferredLargeTitleDisplayMode.getter();
  v79 = v78;

  if ((v79 & 1) == 0)
  {
    v80 = [v69 navigationItem];
    [v80 setLargeTitleDisplayMode:v77];
  }

  v81 = v69;
  v82 = [v81 navigationItem];
  [v82 _setSupportsTwoLineLargeTitles:1];

  v83 = [v81 navigationItem];
  [v83 _setLargeTitleTwoLineMode:1];

  sub_10010FC20(&unk_101182D80, "ʫ\n");
  v84 = swift_allocObject();
  v99 = xmmword_100EBC6B0;
  *(v84 + 16) = xmmword_100EBC6B0;
  v85 = sub_100217F14();
  *(v84 + 32) = &type metadata for LibraryFilterTrait;
  *(v84 + 40) = v85;
  UIViewController.registerForTraitChanges<A>(_:handler:)();
  swift_unknownObjectRelease();

  v86 = swift_allocObject();
  *(v86 + 16) = v99;
  v87 = sub_100137E8C();
  *(v86 + 32) = &type metadata for MusicLibraryTrait;
  *(v86 + 40) = v87;
  UIViewController.registerForTraitChanges<A>(_:handler:)();
  swift_unknownObjectRelease();

  sub_1003C1730(v64, _s9PlaylistsV5ScopeVMa);
  return v81;
}

uint64_t sub_10037EDC4()
{
  type metadata accessor for Locale();
  __chkstk_darwin();
  type metadata accessor for String.LocalizationValue();
  __chkstk_darwin();
  sub_10010FC20(&unk_10118F670, &unk_100EC89B0);
  __chkstk_darwin();
  v2 = &v16[-v1];
  v3 = type metadata accessor for Playlist.Folder();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v16[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = _s9PlaylistsV5ScopeVMa(0);
  sub_1000089F8(v0 + *(v7 + 20), v2, &unk_10118F670, &unk_100EC89B0);
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    sub_1000095E8(v2, &unk_10118F670, &unk_100EC89B0);
    v8 = *v0;
    sub_10010FC20(&unk_101182940, &qword_100EBE250);
    v9 = type metadata accessor for Playlist.Variant();
    v10 = *(v9 - 8);
    v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_100EBC6B0;
    (*(v10 + 104))(v12 + v11, enum case for Playlist.Variant.personalMix(_:), v9);
    v13 = sub_10010DF7C(v12);
    swift_setDeallocating();
    (*(v10 + 8))(v12 + v11, v9);
    swift_deallocClassInstance();
    sub_10018FF54(v8, v13);

    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    return String.init(localized:table:bundle:locale:comment:)();
  }

  else
  {
    (*(v4 + 32))(v6, v2, v3);
    v14 = Playlist.Folder.name.getter();
    (*(v4 + 8))(v6, v3);
    return v14;
  }
}

void sub_10037F198()
{
  v1 = v0;
  sub_10010FC20(&qword_101183990, &qword_100EBC750);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_100EBC6C0;
  *(v2 + 32) = sub_100395058();
  v3 = sub_100393588();
  v4 = 1;
  [(objc_class *)v3 setHidden:(sub_1003923F8() & 1) == 0];

  v5 = [v0 traitCollection];
  v6 = [v5 horizontalSizeClass];

  if (v6 != 1)
  {
    v4 = sub_1003951D4();
  }

  v7 = sub_100394FE0();
  v8 = v7;
  if (v7 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v10 = 0;
    while (1)
    {
      if ((v8 & 0xC000000000000001) != 0)
      {
        v11 = sub_1007E953C(v10, v8);
      }

      else
      {
        if (v10 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v11 = *(v8 + 8 * v10 + 32);
      }

      v12 = v11;
      v13 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      [v11 setHidden:v4];

      ++v10;
      if (v13 == i)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }

LABEL_16:

  v14 = *&v1[OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController____lazy_storage___playShuffleBarButtonGroups];

  sub_1003BBFC8(0, 0, v14);

  v15 = [v1 navigationItem];
  sub_100009F78(0, &unk_1011842F0, UIBarButtonItemGroup_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v15 setTrailingItemGroups:isa];
}

uint64_t sub_10037F3EC(uint64_t a1, uint64_t a2)
{

  sub_10010FC20(&unk_10118CE30, &unk_100EC8A30);
  return MusicLibraryRequest.library.setter();
}

double sub_10037F438()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v67.receiver = v0;
  v67.super_class = ObjectType;
  objc_msgSendSuper2(&v67, "viewDidLoad");
  v3 = sub_10037FC08();
  v4 = sub_100380204();
  [v3 setCollectionViewLayout:v4];

  v5 = OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController____lazy_storage___collectionView;
  v6 = *&v1[OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController_prefetchingController];
  [*&v1[OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController____lazy_storage___collectionView] setPrefetchDataSource:v6];
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = ObjectType;
  v9 = (v6 + OBJC_IVAR____TtC5Music28ArtworkPrefetchingController_defaultArtworkMetricsProvider);
  v10 = *(v6 + OBJC_IVAR____TtC5Music28ArtworkPrefetchingController_defaultArtworkMetricsProvider);
  v11 = *(v6 + OBJC_IVAR____TtC5Music28ArtworkPrefetchingController_defaultArtworkMetricsProvider + 8);
  *v9 = sub_1003C1434;
  v9[1] = v8;

  sub_100020438(v10, v11);

  v12 = (v6 + OBJC_IVAR____TtC5Music28ArtworkPrefetchingController_artworkProvider);
  v13 = *(v6 + OBJC_IVAR____TtC5Music28ArtworkPrefetchingController_artworkProvider);
  v14 = *(v6 + OBJC_IVAR____TtC5Music28ArtworkPrefetchingController_artworkProvider + 8);
  *v12 = sub_100380820;
  v12[1] = 0;
  sub_100020438(v13, v14);
  sub_10037F198();
  v15 = *&v1[v5];
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v17 = &v15[OBJC_IVAR____TtC5Music23HIMetricsCollectionView_metricsDidUpdate];
  v18 = *&v15[OBJC_IVAR____TtC5Music23HIMetricsCollectionView_metricsDidUpdate];
  v19 = *&v15[OBJC_IVAR____TtC5Music23HIMetricsCollectionView_metricsDidUpdate + 8];
  *v17 = sub_1003C143C;
  v17[1] = v16;
  v20 = v15;

  sub_100020438(v18, v19);

  v21 = *&v1[OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController_layoutVariantController];
  v22 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v23 = *(v21 + 16);
  v24 = *(v21 + 24);
  *(v21 + 16) = sub_1003C1444;
  *(v21 + 24) = v22;

  sub_100020438(v23, v24);

  v25 = sub_100380E10();
  v26 = [v1 traitCollection];
  v27 = [v26 horizontalSizeClass];

  [*(v25 + 32) setHidesNavigationBarDuringPresentation:v27 == 1];

  sub_10010FC20(&unk_101182D80, "ʫ\n");
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_100EBC6B0;
  *(v28 + 32) = type metadata accessor for UITraitHorizontalSizeClass();
  *(v28 + 40) = &protocol witness table for UITraitHorizontalSizeClass;
  UIViewController.registerForTraitChanges<A>(_:handler:)();
  swift_unknownObjectRelease();

  v29 = *&v1[OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController_responseController];
  v30 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v31 = v29[2];
  v32 = v29[3];
  v29[2] = sub_1003C1450;
  v29[3] = v30;

  sub_100020438(v31, v32);

  v33 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v34 = v29[4];
  v35 = v29[5];
  v29[4] = sub_1003C1458;
  v29[5] = v33;

  sub_100020438(v34, v35);

  v36 = *&v1[OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController____lazy_storage___searchController];
  v37 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v38 = *(v36 + 88);
  v39 = *(v36 + 96);
  *(v36 + 88) = sub_1003C1460;
  *(v36 + 96) = v37;

  sub_100020438(v38, v39);

  v40 = sub_10010FC20(&unk_10118A650, &qword_100EC02B0);
  v61[3] = v40;
  v41 = sub_10001C8B8(v61);
  sub_1003830C0(v41);
  v62[3] = v40;
  v42 = sub_10001C8B8(v62);
  sub_100383344(v42);
  v63[3] = sub_10010FC20(&qword_10118CCD8, &qword_100EC8898);
  v43 = sub_10001C8B8(v63);
  sub_1003835CC(v43);
  v64[3] = sub_10010FC20(&qword_10118CCE8, &qword_100EC88A0);
  v44 = sub_10001C8B8(v64);
  sub_10038386C(v44);
  v65[3] = sub_10010FC20(&qword_10118CCF8, &qword_100EC88A8);
  v45 = sub_10001C8B8(v65);
  sub_100383AE4(v45);
  v66[3] = sub_10010FC20(&unk_10118CD08, &qword_100EC88B0);
  v46 = sub_10001C8B8(v66);
  sub_100383D5C(v46);
  swift_arrayDestroy();
  [*&v1[v5] setSpringLoaded:1];
  v47 = *&v1[v5];
  v48 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v49 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v50 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for CollectionViewDragDropController(0);
  v51 = swift_allocObject();
  *(v51 + 24) = 0u;
  *(v51 + 40) = 0u;
  *(v51 + 56) = 0u;
  *(v51 + 72) = 0u;
  *(v51 + 88) = 1;
  *(v51 + 96) = 0;
  v52 = OBJC_IVAR____TtC5Music32CollectionViewDragDropController_activeDropContext;
  v53 = type metadata accessor for CollectionViewDragDropController.DropContext(0);
  (*(*(v53 - 8) + 56))(v51 + v52, 1, 1, v53);
  *(v51 + OBJC_IVAR____TtC5Music32CollectionViewDragDropController_dragDelegate) = 0;
  *(v51 + OBJC_IVAR____TtC5Music32CollectionViewDragDropController_dropDelegate) = 0;
  *(v51 + 16) = v47;
  *(v51 + 24) = sub_1003C1468;
  *(v51 + 32) = v48;
  *(v51 + 40) = sub_1003C1470;
  v54 = *(v51 + 56);
  v55 = *(v51 + 64);
  *(v51 + 64) = 0;
  *(v51 + 48) = v49;
  *(v51 + 56) = 0;
  v56 = v47;
  swift_retain_n();
  swift_retain_n();

  sub_100020438(v54, v55);
  v57 = *(v51 + 72);
  v58 = *(v51 + 80);
  *(v51 + 72) = sub_1003C1478;
  *(v51 + 80) = v50;

  sub_100020438(v57, v58);
  sub_100321DD8();
  sub_100322048();

  *&v1[OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController_dragDropController] = v51;

  RequestResponse.Controller.isAutomaticReloadingEnabled.setter(1);
  sub_10038556C();
  v59 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for NotificationObserver();
  swift_allocObject();
  *&v1[OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController_foregroundObserver] = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(UISceneWillEnterForegroundNotification, 0, 1, 1, sub_1003C1480, v59);

  return result;
}

id sub_10037FC08()
{
  v1 = v0;
  sub_10010FC20(&unk_10118F670, &unk_100EC89B0);
  __chkstk_darwin();
  v3 = &v56 - v2;
  v4 = _s9PlaylistsV5ScopeVMa(0);
  __chkstk_darwin();
  v6 = (&v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for UICollectionLayoutListConfiguration.Appearance();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for UICollectionLayoutListConfiguration();
  v12 = *(v11 - 8);
  __chkstk_darwin();
  v14 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *&v1[OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController____lazy_storage___collectionView];
  if (v15)
  {
    v16 = *&v1[OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController____lazy_storage___collectionView];
LABEL_14:
    v55 = v15;
    return v16;
  }

  v57 = v4;
  v58 = OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController____lazy_storage___collectionView;
  sub_100009F78(0, &qword_101184600, UICollectionViewCompositionalLayout_ptr);
  (*(v8 + 104))(v10, enum case for UICollectionLayoutListConfiguration.Appearance.plain(_:), v7);
  UICollectionLayoutListConfiguration.init(appearance:)();
  v17 = static UICollectionViewCompositionalLayout.list(using:)();
  (*(v12 + 8))(v14, v11);
  v18 = type metadata accessor for HIMetricsCollectionView();
  objc_allocWithZone(v18);
  v19 = v17;
  v20 = sub_100188F30(v19, 1, 0);
  result = [v1 view];
  if (result)
  {
    v22 = result;
    [result bounds];
    v24 = v23;
    v26 = v25;
    v28 = v27;
    v30 = v29;

    v60.receiver = v20;
    v60.super_class = v18;
    v31 = v20;
    objc_msgSendSuper2(&v60, "frame");
    v33 = v32;
    v35 = v34;
    v37 = v36;
    v39 = v38;
    v59.receiver = v31;
    v59.super_class = v18;
    objc_msgSendSuper2(&v59, "setFrame:", v24, v26, v28, v30);
    sub_1001891B4(v33, v35, v37, v39);
    [v31 setAutoresizingMask:18];

    result = [v1 view];
    if (result)
    {
      v40 = result;
      [result addSubview:v31];

      v41 = v31;
      [v41 _setShouldPrefetchCellsWhenPerformingReloadData:1];
      [v41 setDataSource:v1];
      [v41 setDelegate:v1];
      [v41 setKeyboardDismissMode:1];
      [v41 setAllowsFocus:1];
      [v41 setRemembersLastFocusedIndexPath:1];

      v42 = OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController_scope;
      swift_beginAccess();
      sub_1003C16C8(&v1[v42], v6, _s9PlaylistsV5ScopeVMa);
      v43 = v57;
      sub_1000089F8(v6 + *(v57 + 20), v3, &unk_10118F670, &unk_100EC89B0);
      v44 = type metadata accessor for Playlist.Folder();
      v45 = (*(*(v44 - 8) + 48))(v3, 1, v44);
      sub_1000095E8(v3, &unk_10118F670, &unk_100EC89B0);
      if (v45 == 1)
      {
        if (qword_10117F298 != -1)
        {
          swift_once();
        }

        v46 = sub_1000060E4(v43, qword_101218730);
        if (sub_1001982EC(v6, v46))
        {
          v47 = AccessibilityIdentifier.libraryMadeForYouView.unsafeMutableAddressor();
        }

        else
        {
          v47 = AccessibilityIdentifier.libraryPlaylistsView.unsafeMutableAddressor();
        }

        countAndFlagsBits = *v47;
        object = v47[1];
        v51 = v47[2];
        v52 = v47[3];
      }

      else
      {
        v48._object = 0x8000000100E483F0;
        v48._countAndFlagsBits = 0xD00000000000001CLL;
        v61 = AccessibilityIdentifier.init(name:)(v48);
        countAndFlagsBits = v61.rawValue._countAndFlagsBits;
        object = v61.rawValue._object;
        v51 = v61.name._countAndFlagsBits;
        v52 = v61.name._object;
      }

      sub_1003C1730(v6, _s9PlaylistsV5ScopeVMa);
      v53 = UIView.withAccessibilityIdentifier(_:)(countAndFlagsBits, object, v51, v52);

      v54 = *&v1[v58];
      *&v1[v58] = v53;
      v16 = v53;

      v15 = 0;
      goto LABEL_14;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_100380204()
{
  sub_10010FC20(&unk_10118F670, &unk_100EC89B0);
  __chkstk_darwin();
  v2 = &aBlock[-1] - v1;
  v3 = sub_10037FC08();
  v4 = v3[OBJC_IVAR____TtC5Music23HIMetricsCollectionView_metrics + 56];

  if (v4)
  {
    v5 = 1;
  }

  else
  {
    v5 = *(*&v0[OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController_layoutVariantController] + 32);
  }

  v6 = *&v0[OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController____lazy_storage___collectionView];
  v7 = &v0[OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController_scope];
  swift_beginAccess();
  v8 = _s9PlaylistsV5ScopeVMa(0);
  sub_1000089F8(&v7[*(v8 + 20)], v2, &unk_10118F670, &unk_100EC89B0);
  v9 = type metadata accessor for Playlist.Folder();
  v10 = (*(*(v9 - 8) + 48))(v2, 1, v9);
  v11 = v6;
  sub_1000095E8(v2, &unk_10118F670, &unk_100EC89B0);
  if (v10 == 1)
  {
    v12 = 0;
    if ((v5 & 1) == 0)
    {
LABEL_6:
      v13 = sub_10059B450(v11, v12, static MPCPlayerCommandRequest.isAvailable(in:), 0);

      return v13;
    }
  }

  else
  {
    v14 = [v0 traitCollection];
    v15 = [v14 horizontalSizeClass];

    v12 = v15 == 1;
    if ((v5 & 1) == 0)
    {
      goto LABEL_6;
    }
  }

  v16 = [objc_allocWithZone(UICollectionViewCompositionalLayoutConfiguration) init];
  v17 = swift_allocObject();
  *(v17 + 16) = 0;
  if (v12)
  {
    v18 = objc_opt_self();
    v19 = [v18 fractionalWidthDimension:1.0];
    v20 = [v18 estimatedDimension:65.0];
    v21 = [objc_opt_self() sizeWithWidthDimension:v19 heightDimension:v20];

    UICollectionView.elementKindGlobalHeader.unsafeMutableAddressor();

    v22 = String._bridgeToObjectiveC()();

    v23 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v21 elementKind:v22 alignment:1];

    sub_10010FC20(&qword_101183990, &qword_100EBC750);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_100EBC6C0;
    *(v24 + 32) = v23;
    sub_100009F78(0, &unk_1011913A0, NSCollectionLayoutBoundarySupplementaryItem_ptr);
    v25 = v23;
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v16 setBoundarySupplementaryItems:isa];

    v27 = *(v17 + 16);
    *(v17 + 16) = v25;
  }

  v28 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v29 = swift_allocObject();
  *(v29 + 16) = v28;
  *(v29 + 24) = 0u;
  *(v29 + 40) = 0u;
  *(v29 + 56) = 0u;
  *(v29 + 72) = static MPCPlayerCommandRequest.isAvailable(in:);
  *(v29 + 80) = 0;
  *(v29 + 88) = v17;
  v30 = objc_allocWithZone(UICollectionViewCompositionalLayout);
  aBlock[4] = sub_1002193FC;
  aBlock[5] = v29;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1005A63A8;
  aBlock[3] = &unk_1010A9EB8;
  v31 = _Block_copy(aBlock);

  v13 = [v30 initWithSectionProvider:v31 configuration:v16];

  _Block_release(v31);

  return v13;
}

void sub_1003806E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    if (*(*(Strong + OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController_layoutVariantController) + 32) == 1)
    {
      v7 = [objc_opt_self() currentTraitCollection];
      [v7 displayScale];
    }

    else
    {
      v8 = sub_10037FC08();
      v9 = sub_100189858();

      v9(a1, a2);
    }
  }
}

unint64_t sub_100380820@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v29 = a2;
  v30 = a3;
  v4 = sub_10010FC20(&qword_1011828F0, &unk_100ED1640);
  v27 = *(v4 - 8);
  v28 = v4;
  __chkstk_darwin();
  v6 = &v25 - v5;
  v7 = sub_10010FC20(&unk_10118CEC0, &unk_100EE0420);
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v25 - v9;
  v11 = type metadata accessor for Playlist.Folder.Item();
  v25 = *(v11 - 8);
  v26 = v11;
  __chkstk_darwin();
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_101182900, &qword_100EBE240);
  __chkstk_darwin();
  v15 = &v25 - v14;
  v16 = sub_10010FC20(&qword_101193C80, &qword_100EDE790);
  v17 = *(v16 - 8);
  __chkstk_darwin();
  v19 = &v25 - v18;
  sub_1000089F8(a1, v31, &unk_101183F30, qword_100EBF960);
  if (!v32)
  {
    sub_1000095E8(v31, &unk_101183F30, qword_100EBF960);
    (*(v17 + 56))(v15, 1, 1, v16);
    goto LABEL_7;
  }

  v20 = swift_dynamicCast();
  (*(v17 + 56))(v15, v20 ^ 1u, 1, v16);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
LABEL_7:
    sub_1000095E8(v15, &unk_101182900, &qword_100EBE240);
    v24 = type metadata accessor for Artwork();
    return (*(*(v24 - 8) + 56))(v30, 1, 1, v24);
  }

  (*(v17 + 32))(v19, v15, v16);
  v21 = MusicLibrarySectionedResponse.sections.getter();
  result = IndexPath.section.getter();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *(v21 + 16))
  {
    (*(v8 + 16))(v10, v21 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * result, v7);

    MusicLibrarySection.items.getter();
    (*(v8 + 8))(v10, v7);
    IndexPath.item.getter();
    v23 = v28;
    MusicItemCollection.subscript.getter();
    (*(v27 + 8))(v6, v23);
    Playlist.Folder.Item.artwork.getter();
    (*(v25 + 8))(v13, v26);
    return (*(v17 + 8))(v19, v16);
  }

  __break(1u);
  return result;
}

void sub_100380CF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    if ((*(a1 + 56) ^ *(a2 + 56)))
    {
      v7 = sub_10037FC08();
      v8 = sub_100380204();
      sub_100189E04(v8);
    }
  }
}

void sub_100380D88(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = sub_10037FC08();
    v5 = sub_100380204();

    sub_100189E04(v5);
  }
}

uint64_t sub_100380E10()
{
  v1 = OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController____lazy_storage___searchController;
  if (*&v0[OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController____lazy_storage___searchController])
  {
    v2 = *&v0[OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController____lazy_storage___searchController];
  }

  else
  {
    type metadata accessor for LibrarySearchController();
    swift_allocObject();
    v3 = v0;
    v2 = sub_10043F158(0, 0, v3);

    *&v0[v1] = v2;
  }

  return v2;
}

double sub_100380EB4(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t a4)
{
  v7 = sub_10010FC20(&qword_101193C80, &qword_100EDE790);
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v50 = &v45 - v9;
  sub_10010FC20(&unk_10118CDC0, &unk_100EC89D0);
  __chkstk_darwin();
  v11 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v13 = &v45 - v12;
  v53 = *(sub_10010FC20(&unk_101182900, &qword_100EBE240) - 8);
  v14 = *(v53 + 64);
  __chkstk_darwin();
  v55 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v54 = &v45 - v15;
  __chkstk_darwin();
  v52 = &v45 - v16;
  __chkstk_darwin();
  v51 = &v45 - v17;
  __chkstk_darwin();
  v19 = &v45 - v18;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v48 = a2;
    v49 = a1;
    v56 = a3;
    RequestResponse.Revision.content.getter(v13);
    v20 = sub_10010FC20(&unk_10118CDD0, &unk_100EC89E0);
    v21 = *(*(v20 - 8) + 48);
    if (v21(v13, 1, v20) == 1)
    {
      sub_1000095E8(v13, &unk_10118CDC0, &unk_100EC89D0);
      v22 = 1;
    }

    else
    {
      (*(v8 + 16))(v19, v13, v7);
      sub_1000095E8(v13, &unk_10118CDD0, &unk_100EC89E0);
      v22 = 0;
    }

    (*(v8 + 56))(v19, v22, 1, v7);
    v47 = sub_10037FC08();
    RequestResponse.Controller.revision.getter();
    RequestResponse.Revision.content.getter(v11);

    if (v21(v11, 1, v20) == 1)
    {
      sub_1000095E8(v11, &unk_10118CDC0, &unk_100EC89D0);
      v46 = 0;
    }

    else
    {
      v24 = v50;
      (*(v8 + 16))(v50, v11, v7);
      sub_1000095E8(v11, &unk_10118CDD0, &unk_100EC89E0);
      v46 = MusicLibrarySectionedResponse.sections.getter();
      (*(v8 + 8))(v24, v7);
    }

    v25 = v48;
    v26 = v51;
    sub_1000089F8(v19, v51, &unk_101182900, &qword_100EBE240);
    if ((*(v8 + 48))(v26, 1, v7) == 1)
    {
      sub_1000095E8(v26, &unk_101182900, &qword_100EBE240);
      v51 = 0;
    }

    else
    {
      v51 = MusicLibrarySectionedResponse.sections.getter();
      (*(v8 + 8))(v26, v7);
    }

    v27 = Strong;
    v28 = [*(sub_100380E10() + 32) searchBar];
    LODWORD(v50) = [v28 isFirstResponder];

    v29 = v52;
    v30 = v19;
    v45 = v19;
    sub_1000089F8(v19, v52, &unk_101182900, &qword_100EBE240);
    v31 = *(v53 + 80);
    v32 = swift_allocObject();
    v33 = v56;
    v32[2] = v25;
    v32[3] = v33;
    v32[4] = v27;
    sub_10003D17C(v29, v32 + ((v31 + 40) & ~v31), &unk_101182900, &qword_100EBE240);
    v34 = v54;
    sub_1000089F8(v19, v54, &unk_101182900, &qword_100EBE240);
    v35 = swift_allocObject();
    v53 = v35;
    *(v35 + 16) = v27;
    sub_10003D17C(v34, v35 + ((v31 + 24) & ~v31), &unk_101182900, &qword_100EBE240);
    v36 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v37 = v55;
    sub_1000089F8(v30, v55, &unk_101182900, &qword_100EBE240);
    v38 = (v31 + 32) & ~v31;
    v39 = swift_allocObject();
    v40 = v49;
    *(v39 + 16) = v36;
    *(v39 + 24) = v40;
    sub_10003D17C(v37, v39 + v38, &unk_101182900, &qword_100EBE240);
    v41 = v27;

    v42 = sub_10010FC20(&unk_10118CEC0, &unk_100EE0420);
    v43 = sub_1003C1614();
    v44 = v47;
    UICollectionView.performSectionedAIDiff<A>(oldItems:newItems:startingSectionIndex:finalSectionIndex:animated:modelUpdateHandler:identityComparator:visualComparator:alongsideUpdates:completion:)(v46, v51, 0, 0, 1, v50 ^ 1, sub_1003C14B0, v32, sub_100381808, 0, sub_1003818C8, 0, sub_1003C1524, v53, sub_1003C1594, v39, v42, v43);

    sub_1000095E8(v45, &unk_101182900, &qword_100EBE240);
  }

  else
  {
    a2();
  }

  return result;
}

uint64_t sub_10038164C(void (*a1)(__n128), uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_10010FC20(&unk_101182900, &qword_100EBE240);
  v7 = __chkstk_darwin();
  v9 = &v16 - v8;
  a1(v7);
  v10 = *(a3 + OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController_prefetchingController);
  sub_1000089F8(a4, v9, &unk_101182900, &qword_100EBE240);
  v11 = sub_10010FC20(&qword_101193C80, &qword_100EDE790);
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v9, 1, v11) == 1)
  {
    sub_1000095E8(v9, &unk_101182900, &qword_100EBE240);
    v17 = 0u;
    v18 = 0u;
  }

  else
  {
    *(&v18 + 1) = v11;
    v13 = sub_10001C8B8(&v17);
    (*(v12 + 32))(v13, v9, v11);
  }

  v14 = OBJC_IVAR____TtC5Music28ArtworkPrefetchingController_context;
  swift_beginAccess();
  sub_10006B010(&v17, v10 + v14, &unk_101183F30, qword_100EBF960);
  return swift_endAccess();
}

uint64_t sub_100381808(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Playlist.Folder.Item();
  sub_10003D8C4(&unk_1011913F0, &type metadata accessor for Playlist.Folder.Item, &protocol conformance descriptor for Playlist.Folder.Item);
  sub_10003D8C4(&qword_10118D3E0, &type metadata accessor for Playlist.Folder.Item, &protocol conformance descriptor for Playlist.Folder.Item);
  return static MusicItem<>.==~ infix(_:_:)() & 1;
}

uint64_t sub_1003818C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MusicFavoriteStatus();
  v66 = *(v4 - 8);
  v67 = v4;
  __chkstk_darwin();
  v65 = &v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v64 = &v63 - v6;
  v7 = type metadata accessor for Artwork();
  v8 = *(v7 - 8);
  v70 = v7;
  v71 = v8;
  __chkstk_darwin();
  v63 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_10010FC20(&unk_101191420, &unk_100EC9120);
  __chkstk_darwin();
  v72 = &v63 - v10;
  sub_10010FC20(&unk_101188920, &qword_100EBCC50);
  __chkstk_darwin();
  v68 = &v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v73 = &v63 - v12;
  __chkstk_darwin();
  v74 = &v63 - v13;
  v14 = type metadata accessor for Playlist();
  v76 = *(v14 - 8);
  v77 = v14;
  __chkstk_darwin();
  v75 = &v63 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v78 = &v63 - v16;
  v17 = type metadata accessor for Playlist.Folder.Item();
  v18 = *(v17 - 8);
  __chkstk_darwin();
  v20 = &v63 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_101191430, &unk_100EC9130);
  v21 = __chkstk_darwin();
  v23 = &v63 - v22;
  v25 = *(v24 + 56);
  v26 = *(v18 + 16);
  v26(&v63 - v22, a1, v17, v21);
  (v26)(&v23[v25], a2, v17);
  v27 = *(v18 + 88);
  v28 = v27(v23, v17);
  v29 = v28;
  if (v28 != enum case for Playlist.Folder.Item.folder(_:))
  {
    if (v28 != enum case for Playlist.Folder.Item.playlist(_:))
    {
      goto LABEL_10;
    }

    (v26)(v20, v23, v17);
    v31 = *(v18 + 96);
    v31(v20, v17);
    if (v27(&v23[v25], v17) != v29)
    {
      (*(v76 + 8))(v20, v77);
      goto LABEL_10;
    }

    v31(&v23[v25], v17);
    v32 = v77;
    v33 = *(v76 + 32);
    v33(v78, v20, v77);
    v33(v75, &v23[v25], v32);
    v34 = Playlist.name.getter();
    v36 = v35;
    if (v34 == Playlist.name.getter() && v36 == v37)
    {

      v38 = v73;
      v39 = v74;
    }

    else
    {
      v42 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v38 = v73;
      v39 = v74;
      if ((v42 & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    Playlist.artwork.getter();
    Playlist.artwork.getter();
    v43 = *(v69 + 48);
    v44 = v72;
    sub_1000089F8(v39, v72, &unk_101188920, &qword_100EBCC50);
    v45 = v44;
    sub_1000089F8(v38, v44 + v43, &unk_101188920, &qword_100EBCC50);
    v46 = v70;
    v47 = *(v71 + 48);
    if (v47(v44, 1, v70) == 1)
    {
      sub_1000095E8(v38, &unk_101188920, &qword_100EBCC50);
      v48 = v72;
      sub_1000095E8(v39, &unk_101188920, &qword_100EBCC50);
      if (v47(v48 + v43, 1, v46) == 1)
      {
        sub_1000095E8(v48, &unk_101188920, &qword_100EBCC50);
LABEL_22:
        v55 = v64;
        Playlist.favoriteStatus.getter();
        v56 = v65;
        Playlist.favoriteStatus.getter();
        v40 = static MusicFavoriteStatus.== infix(_:_:)();
        v57 = *(v66 + 8);
        v58 = v56;
        v59 = v67;
        v57(v58, v67);
        v60 = v55;
        v50 = v76;
        v57(v60, v59);
        goto LABEL_23;
      }

      goto LABEL_19;
    }

    v49 = v68;
    sub_1000089F8(v44, v68, &unk_101188920, &qword_100EBCC50);
    if (v47(v44 + v43, 1, v46) == 1)
    {
      sub_1000095E8(v73, &unk_101188920, &qword_100EBCC50);
      v48 = v72;
      sub_1000095E8(v74, &unk_101188920, &qword_100EBCC50);
      (*(v71 + 8))(v49, v46);
LABEL_19:
      sub_1000095E8(v48, &unk_101191420, &unk_100EC9120);
      goto LABEL_20;
    }

    v51 = v71;
    v52 = v45 + v43;
    v53 = v63;
    (*(v71 + 32))(v63, v52, v46);
    sub_10003D8C4(&unk_10118D3D0, &type metadata accessor for Artwork, &protocol conformance descriptor for Artwork);
    LODWORD(v69) = dispatch thunk of static Equatable.== infix(_:_:)();
    v54 = *(v51 + 8);
    v54(v53, v46);
    sub_1000095E8(v73, &unk_101188920, &qword_100EBCC50);
    sub_1000095E8(v74, &unk_101188920, &qword_100EBCC50);
    v54(v49, v46);
    sub_1000095E8(v45, &unk_101188920, &qword_100EBCC50);
    if (v69)
    {
      goto LABEL_22;
    }

LABEL_20:
    v40 = 0;
    v50 = v76;
LABEL_23:
    v61 = *(v50 + 8);
    v62 = v77;
    v61(v75, v77);
    v61(v78, v62);
    (*(v18 + 8))(v23, v17);
    return v40 & 1;
  }

  if (v27(&v23[v25], v17) != v28)
  {
LABEL_10:
    sub_1000095E8(v23, &unk_101191430, &unk_100EC9130);
    goto LABEL_11;
  }

  v30 = *(v18 + 8);
  v30(&v23[v25], v17);
  v30(v23, v17);
LABEL_11:
  v40 = 0;
  return v40 & 1;
}

double sub_1003821F0(char *a1, uint64_t a2)
{
  sub_10010FC20(&unk_101182900, &qword_100EBE240);
  __chkstk_darwin();
  v5 = &v27 - v4;
  sub_10010FC20(&unk_10118CDC0, &unk_100EC89D0);
  __chkstk_darwin();
  v7 = &v27 - v6;
  v8 = sub_10010FC20(&qword_101193C80, &qword_100EDE790);
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v27 - v10;
  if (qword_10117F238 != -1)
  {
    swift_once();
  }

  sub_100174190();
  sub_10037F198();
  RequestResponse.Controller.revision.getter();
  RequestResponse.Revision.content.getter(v7);

  v12 = sub_10010FC20(&unk_10118CDD0, &unk_100EC89E0);
  if ((*(*(v12 - 8) + 48))(v7, 1, v12) == 1)
  {
    sub_1000095E8(v7, &unk_10118CDC0, &unk_100EC89D0);
    v13 = 1;
  }

  else
  {
    (*(v9 + 16))(v11, v7, v8);
    sub_1000095E8(v7, &unk_10118CDD0, &unk_100EC89E0);
    v14 = MusicLibrarySectionedResponse.isEmpty.getter(v8);
    (*(v9 + 8))(v11, v8);
    v13 = !v14;
  }

  [a1 setNeedsUpdateContentUnavailableConfiguration];
  v15 = sub_10037FC08();
  [v15 setBouncesVertically:v13 & 1];

  [*&a1[OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController____lazy_storage___collectionView] setAlwaysBounceVertical:v13 & 1];
  v16 = sub_100380E10();
  sub_1000089F8(a2, v5, &unk_101182900, &qword_100EBE240);
  if ((*(v9 + 48))(v5, 1, v8) == 1)
  {
    sub_1000095E8(v5, &unk_101182900, &qword_100EBE240);
  }

  else
  {
    v17 = MusicLibrarySectionedResponse.isEmpty.getter(v8);
    (*(v9 + 8))(v5, v8);
    if (!v17)
    {
      v26 = *(v16 + 64);
      *(v16 + 64) = 1;
      if (v26)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }
  }

  v18 = (*(*&a1[OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController____lazy_storage___searchController] + 120) + OBJC_IVAR____TtCC5Music23LibrarySearchControllerP33_D5FA0BEF708D1E9261BCB607AD690C3E11BarDelegate_text);
  v19 = v18[1];
  if (!v19)
  {
    v25 = *(v16 + 64);
    *(v16 + 64) = 0;
    if ((v25 & 1) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v20 = *v18 & 0xFFFFFFFFFFFFLL;
  if ((v19 & 0x2000000000000000) != 0)
  {
    v21 = HIBYTE(v19) & 0xF;
  }

  else
  {
    v21 = v20;
  }

  v22 = v21 != 0;
  v23 = *(v16 + 64);
  *(v16 + 64) = v22;
  if (v23 != v22)
  {
LABEL_14:
    sub_10043EAB8();
  }

LABEL_15:

  return result;
}

void sub_1003825F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a4;
  sub_10010FC20(&unk_101182900, &qword_100EBE240);
  __chkstk_darwin();
  v6 = &v30 - v5;
  sub_10010FC20(&unk_10118BCE0, &qword_100EC6450);
  __chkstk_darwin();
  v8 = &v30 - v7;
  sub_10010FC20(&qword_1011831B0, &qword_100ED2570);
  __chkstk_darwin();
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v12 = &v30 - v11;
  v13 = type metadata accessor for Playlist.Folder.Item();
  v14 = *(v13 - 8);
  __chkstk_darwin();
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v18 = Strong;
    v31 = v10;

    v19 = RequestResponse.Controller.revision.getter();

    v20 = *(v19 + *(*v19 + 112));

    if (v20 == *(a3 + *(*a3 + 112)))
    {
      v21 = OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController_pendingSelectedPlaylistItem;
      swift_beginAccess();
      sub_1000089F8(v18 + v21, v12, &qword_1011831B0, &qword_100ED2570);
      if ((*(v14 + 48))(v12, 1, v13) == 1)
      {

        sub_1000095E8(v12, &qword_1011831B0, &qword_100ED2570);
        return;
      }

      (*(v14 + 32))(v16, v12, v13);
      v30 = sub_10037FC08();
      sub_1000089F8(v32, v6, &unk_101182900, &qword_100EBE240);
      v22 = sub_10010FC20(&qword_101193C80, &qword_100EDE790);
      v23 = *(v22 - 8);
      if ((*(v23 + 48))(v6, 1, v22) == 1)
      {
        sub_1000095E8(v6, &unk_101182900, &qword_100EBE240);
        v24 = type metadata accessor for IndexPath();
        (*(*(v24 - 8) + 56))(v8, 1, 1, v24);
        isa = 0;
      }

      else
      {
        sub_1005046D4(v16, v8);
        (*(v23 + 8))(v6, v22);
        v26 = type metadata accessor for IndexPath();
        v27 = *(v26 - 8);
        isa = 0;
        if ((*(v27 + 48))(v8, 1, v26) != 1)
        {
          isa = IndexPath._bridgeToObjectiveC()().super.isa;
          (*(v27 + 8))(v8, v26);
        }
      }

      v28 = v30;
      [v30 selectItemAtIndexPath:isa animated:0 scrollPosition:0];

      (*(v14 + 8))(v16, v13);
      v29 = v31;
      (*(v14 + 56))(v31, 1, 1, v13);
      swift_beginAccess();
      sub_10006B010(v29, v18 + v21, &qword_1011831B0, &qword_100ED2570);
      swift_endAccess();
    }
  }
}

double sub_100382B34(uint64_t a1, uint64_t a2)
{
  sub_10010FC20(&unk_10118CDC0, &unk_100EC89D0);
  __chkstk_darwin();
  v3 = &v14[-v2];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    RequestResponse.Controller.revision.getter();
    RequestResponse.Revision.content.getter(v3);

    v7 = sub_10010FC20(&unk_10118CDD0, &unk_100EC89E0);
    if ((*(*(v7 - 8) + 48))(v3, 1, v7) == 1)
    {
      sub_1000095E8(v3, &unk_10118CDC0, &unk_100EC89D0);
      v8 = _swiftEmptyArrayStorage;
    }

    else
    {
      v8 = *&v3[*(v7 + 36)];

      sub_1000095E8(v3, &unk_10118CDD0, &unk_100EC89E0);
    }

    v9 = v8[2];

    v10 = sub_100382E3C();
    swift_getKeyPath();
    v15 = v10;
    sub_10003D8C4(&unk_101193C40, _s17PlayShuffleHeaderV10DataSourceCMa, &unk_100ED73D4);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v11 = *(v10 + 48);

    if ((v9 == 0) == v11)
    {
    }

    else
    {
      v12 = *&v6[OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController____lazy_storage___playShuffleHeaderDataSource];
      v13 = v9 == 0;
      if (((v9 == 0) ^ *(v12 + 48)))
      {
        swift_getKeyPath();
        __chkstk_darwin();
        *&v14[-16] = v12;
        v14[-8] = v13;
        v15 = v12;

        ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
      }

      else
      {

        *(v12 + 48) = v13;
      }
    }
  }

  return result;
}

uint64_t sub_100382E3C()
{
  v1 = OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController____lazy_storage___playShuffleHeaderDataSource;
  if (*(v0 + OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController____lazy_storage___playShuffleHeaderDataSource))
  {
    v2 = *(v0 + OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController____lazy_storage___playShuffleHeaderDataSource);
  }

  else
  {
    v3 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v4 = swift_allocObject();
    swift_unknownObjectWeakInit();
    _s17PlayShuffleHeaderV10DataSourceCMa(0);
    v2 = swift_allocObject();
    *(v2 + 48) = 0;

    ObservationRegistrar.init()();
    *(v2 + 16) = sub_1003C18A8;
    *(v2 + 24) = v3;
    *(v2 + 32) = sub_1003C141C;
    *(v2 + 40) = v4;

    *(v0 + v1) = v2;
  }

  return v2;
}

double sub_100382F60(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v5 = _s9PlaylistsVMa(0);
  __chkstk_darwin();
  v7 = &v16[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = *(Strong + OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController_responseController);
    v11 = Strong;

    if (a2)
    {
      v12 = a2;
    }

    else
    {
      a1 = 0;
      v12 = 0xE000000000000000;
    }

    v13 = *(v10 + 48);
    v14 = *(*v13 + 96);
    swift_beginAccess();
    sub_1003C16C8(v13 + v14, v7, _s9PlaylistsVMa);
    v15 = &v7[*(v5 + 36)];

    *v15 = a1;
    v15[1] = v12;
    sub_1003777F4(v7);
  }

  return result;
}

uint64_t sub_1003830C0@<X0>(uint64_t a1@<X8>)
{
  sub_10010FC20(&unk_10118C540, &qword_100EC0500);
  __chkstk_darwin();
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v6 = &v11[-v5];
  v7 = OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController____lazy_storage___globalHeaderRegistration;
  swift_beginAccess();
  sub_1000089F8(v1 + v7, v6, &unk_10118C540, &qword_100EC0500);
  v8 = sub_10010FC20(&unk_10118A650, &qword_100EC02B0);
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v6, 1, v8) != 1)
  {
    return (*(v9 + 32))(a1, v6, v8);
  }

  sub_1000095E8(v6, &unk_10118C540, &qword_100EC0500);
  UICollectionView.elementKindGlobalHeader.unsafeMutableAddressor();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100009F78(0, &unk_101184750, UICollectionViewCell_ptr);

  UICollectionView.SupplementaryRegistration.init(elementKind:handler:)();
  (*(v9 + 16))(v4, a1, v8);
  (*(v9 + 56))(v4, 0, 1, v8);
  swift_beginAccess();
  sub_10006B010(v4, v1 + v7, &unk_10118C540, &qword_100EC0500);
  return swift_endAccess();
}

uint64_t sub_100383344@<X0>(uint64_t a1@<X8>)
{
  sub_10010FC20(&unk_10118C540, &qword_100EC0500);
  __chkstk_darwin();
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v6 = &v11[-v5];
  v7 = OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController____lazy_storage___headerRegistration;
  swift_beginAccess();
  sub_1000089F8(v1 + v7, v6, &unk_10118C540, &qword_100EC0500);
  v8 = sub_10010FC20(&unk_10118A650, &qword_100EC02B0);
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v6, 1, v8) != 1)
  {
    return (*(v9 + 32))(a1, v6, v8);
  }

  sub_1000095E8(v6, &unk_10118C540, &qword_100EC0500);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100009F78(0, &unk_101184750, UICollectionViewCell_ptr);
  UICollectionView.SupplementaryRegistration.init(elementKind:handler:)();
  (*(v9 + 16))(v4, a1, v8);
  (*(v9 + 56))(v4, 0, 1, v8);
  swift_beginAccess();
  sub_10006B010(v4, v1 + v7, &unk_10118C540, &qword_100EC0500);
  return swift_endAccess();
}

uint64_t sub_1003835CC@<X0>(uint64_t a1@<X8>)
{
  ObjectType = swift_getObjectType();
  sub_10010FC20(&qword_10118D318, &qword_100EC9048);
  __chkstk_darwin();
  v5 = &v14[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v7 = &v14[-v6];
  v8 = OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController____lazy_storage___listPlaylistCellRegistration;
  swift_beginAccess();
  sub_1000089F8(v1 + v8, v7, &qword_10118D318, &qword_100EC9048);
  v9 = sub_10010FC20(&qword_10118CCD8, &qword_100EC8898);
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v7, 1, v9) != 1)
  {
    return (*(v10 + 32))(a1, v7, v9);
  }

  sub_1000095E8(v7, &qword_10118D318, &qword_100EC9048);
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  *(v12 + 24) = ObjectType;
  sub_100009F78(0, &unk_101184790, UICollectionViewListCell_ptr);
  type metadata accessor for Playlist();
  UICollectionView.CellRegistration.init(handler:)();
  (*(v10 + 16))(v5, a1, v9);
  (*(v10 + 56))(v5, 0, 1, v9);
  swift_beginAccess();
  sub_10006B010(v5, v1 + v8, &qword_10118D318, &qword_100EC9048);
  return swift_endAccess();
}

uint64_t sub_10038386C@<X0>(uint64_t a1@<X8>)
{
  sub_10010FC20(&unk_101191440, &qword_100EC9028);
  __chkstk_darwin();
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v6 = &v11[-v5];
  v7 = OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController____lazy_storage___listFolderCellRegistration;
  swift_beginAccess();
  sub_1000089F8(v1 + v7, v6, &unk_101191440, &qword_100EC9028);
  v8 = sub_10010FC20(&qword_10118CCE8, &qword_100EC88A0);
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v6, 1, v8) != 1)
  {
    return (*(v9 + 32))(a1, v6, v8);
  }

  sub_1000095E8(v6, &unk_101191440, &qword_100EC9028);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100009F78(0, &unk_101184790, UICollectionViewListCell_ptr);
  type metadata accessor for Playlist.Folder();
  UICollectionView.CellRegistration.init(handler:)();
  (*(v9 + 16))(v4, a1, v8);
  (*(v9 + 56))(v4, 0, 1, v8);
  swift_beginAccess();
  sub_10006B010(v4, v1 + v7, &unk_101191440, &qword_100EC9028);
  return swift_endAccess();
}

uint64_t sub_100383AE4@<X0>(uint64_t a1@<X8>)
{
  sub_10010FC20(&qword_10118D2B8, &unk_100EC8FF0);
  __chkstk_darwin();
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v6 = &v11[-v5];
  v7 = OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController____lazy_storage___gridPlaylistCellRegistration;
  swift_beginAccess();
  sub_1000089F8(v1 + v7, v6, &qword_10118D2B8, &unk_100EC8FF0);
  v8 = sub_10010FC20(&qword_10118CCF8, &qword_100EC88A8);
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v6, 1, v8) != 1)
  {
    return (*(v9 + 32))(a1, v6, v8);
  }

  sub_1000095E8(v6, &qword_10118D2B8, &unk_100EC8FF0);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100009F78(0, &unk_101184750, UICollectionViewCell_ptr);
  type metadata accessor for Playlist();
  UICollectionView.CellRegistration.init(handler:)();
  (*(v9 + 16))(v4, a1, v8);
  (*(v9 + 56))(v4, 0, 1, v8);
  swift_beginAccess();
  sub_10006B010(v4, v1 + v7, &qword_10118D2B8, &unk_100EC8FF0);
  return swift_endAccess();
}

uint64_t sub_100383D5C@<X0>(uint64_t a1@<X8>)
{
  sub_10010FC20(&unk_10118D260, &qword_100EC8F88);
  __chkstk_darwin();
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v6 = &v11[-v5];
  v7 = OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController____lazy_storage___gridFolderCellRegistration;
  swift_beginAccess();
  sub_1000089F8(v1 + v7, v6, &unk_10118D260, &qword_100EC8F88);
  v8 = sub_10010FC20(&unk_10118CD08, &qword_100EC88B0);
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v6, 1, v8) != 1)
  {
    return (*(v9 + 32))(a1, v6, v8);
  }

  sub_1000095E8(v6, &unk_10118D260, &qword_100EC8F88);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100009F78(0, &unk_101184750, UICollectionViewCell_ptr);
  type metadata accessor for Playlist.Folder();
  UICollectionView.CellRegistration.init(handler:)();
  (*(v9 + 16))(v4, a1, v8);
  (*(v9 + 56))(v4, 0, 1, v8);
  swift_beginAccess();
  sub_10006B010(v4, v1 + v7, &unk_10118D260, &qword_100EC8F88);
  return swift_endAccess();
}

char *sub_100383FD4(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for Playlist.Folder();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v56 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v57 = &v48 - v6;
  _s9PlaylistsVMa(0);
  __chkstk_darwin();
  v8 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_10118CDB0, &unk_100EC0360);
  __chkstk_darwin();
  v51 = &v48 - v9;
  v53 = type metadata accessor for Playlist();
  v55 = *(v53 - 8);
  __chkstk_darwin();
  v52 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v54 = &v48 - v11;
  sub_10010FC20(&qword_1011831B0, &qword_100ED2570);
  __chkstk_darwin();
  v13 = &v48 - v12;
  v14 = type metadata accessor for Playlist.Folder.Item();
  v15 = *(v14 - 8);
  __chkstk_darwin();
  v17 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v19 = &v48 - v18;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v21 = result;
    v50 = v4;
    v49 = v3;
    v22 = OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController_responseController;

    sub_10037AA20(a1, v13);

    if ((*(v15 + 48))(v13, 1, v14) == 1)
    {

      sub_1000095E8(v13, &qword_1011831B0, &qword_100ED2570);
      return 0;
    }

    (*(v15 + 32))(v19, v13, v14);
    (*(v15 + 16))(v17, v19, v14);
    v23 = (*(v15 + 88))(v17, v14);
    v24 = v23;
    if (v23 == enum case for Playlist.Folder.Item.folder(_:))
    {
      (*(v15 + 96))(v17, v14);
      v25 = v50;
      v55 = v19;
      v26 = v57;
      v27 = v17;
      v28 = v49;
      (*(v50 + 32))(v57, v27, v49);
      sub_10010FC20(&qword_101185210, &unk_100EC0C30);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_100EBC6B0;
      v54 = type metadata accessor for DragDropToFolder(0);
      *(inited + 56) = v54;
      *(inited + 64) = sub_10003D8C4(&qword_10118D3B0, type metadata accessor for DragDropToFolder, &unk_100ED254C);
      v30 = sub_10001C8B8((inited + 32));
      v31 = *(v25 + 16);
      v31(v30, v26, v28);
      (*(v15 + 104))(v30, v24, v14);
      *(v30 + *(v54 + 5)) = 0;
      v32 = sub_100797240(_swiftEmptyArrayStorage, inited);
      swift_setDeallocating();
      sub_10000959C((inited + 32));
      v33 = v56;
      v31(v56, v26, v28);
      v34 = sub_10079D160(v32, v33);

      (*(v50 + 8))(v26, v28);
      (*(v15 + 8))(v55, v14);
    }

    else
    {
      if (v23 != enum case for Playlist.Folder.Item.playlist(_:))
      {
        v42 = *(v15 + 8);
        v42(v19, v14);

        v42(v17, v14);
        return 0;
      }

      (*(v15 + 96))(v17, v14);
      v35 = v53;
      (*(v55 + 4))(v54, v17, v53);
      v36 = *(*&v21[v22] + 48);
      v37 = *(*v36 + 96);
      swift_beginAccess();
      sub_1003C16C8(v36 + v37, v8, _s9PlaylistsVMa);
      v38 = v51;
      sub_1001917EC(v19, v51);
      sub_1003C1730(v8, _s9PlaylistsVMa);
      v39 = type metadata accessor for MusicPlaybackIntentDescriptor();
      v40 = *(v39 - 8);
      if ((*(v40 + 48))(v38, 1, v39) == 1)
      {
        sub_1000095E8(v38, &unk_10118CDB0, &unk_100EC0360);
        v41 = 0;
      }

      else
      {
        v41 = MusicPlaybackIntentDescriptor.playbackIntent.getter();
        (*(v40 + 8))(v38, v39);
      }

      v43 = v54;
      v44 = sub_10079AA48(v41);
      v45 = sub_100797240(&off_10109A928, v44);

      v46 = v55;
      v47 = v52;
      (*(v55 + 2))(v52, v43, v35);
      v34 = sub_10079C9B4(v45, v47);

      (*(v46 + 1))(v43, v35);
      (*(v15 + 8))(v19, v14);
    }

    return v34;
  }

  return result;
}

void *sub_1003847E0@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v90 = type metadata accessor for Playlist.Folder();
  v87 = *(v90 - 8);
  __chkstk_darwin();
  v89 = &v83 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = type metadata accessor for Playlist();
  v85 = *(v88 - 8);
  __chkstk_darwin();
  v86 = &v83 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_1011831B0, &qword_100ED2570);
  __chkstk_darwin();
  v8 = &v83 - v7;
  v9 = type metadata accessor for Playlist.Folder.Item();
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = &v83 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v91 = &v83 - v13;
  sub_10010FC20(&unk_10118BCE0, &qword_100EC6450);
  __chkstk_darwin();
  v94 = &v83 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v16 = &v83 - v15;
  v17 = type metadata accessor for IndexPath();
  v18 = *(v17 - 8);
  __chkstk_darwin();
  v93 = &v83 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    *(a3 + 32) = 0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    return result;
  }

  v21 = result;
  v92 = a3;
  sub_1000089F8(a1, v16, &unk_10118BCE0, &qword_100EC6450);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    v22 = v18;
    v23 = &unk_10118BCE0;
    v24 = &qword_100EC6450;
    v25 = v16;
LABEL_7:
    sub_1000095E8(v25, v23, v24);
    v29 = v17;
    v30 = v21;
    v31 = [v30 traitCollection];
    sub_100137E8C();
    UITraitCollection.subscript.getter();

    v32 = v95;
    v33 = &v30[OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController_scope];
    swift_beginAccess();
    v34 = *(_s9PlaylistsV5ScopeVMa(0) + 20);
    v35 = type metadata accessor for DragDropToFolder.Destination(0);
    v36 = v92;
    v92[3] = v35;
    v36[4] = sub_10003D8C4(&qword_10119E620, type metadata accessor for DragDropToFolder.Destination, &unk_100ED2530);
    v37 = sub_10001C8B8(v36);
    sub_1000089F8(&v33[v34], v37 + *(v35 + 20), &unk_10118F670, &unk_100EC89B0);
    v38 = v94;
    (*(v22 + 56))(v94, 1, 1, v29);
    sub_100376BEC(v38, sub_10037FC08, &OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController____lazy_storage___collectionView, (v37 + *(v35 + 24)));

    result = sub_1000095E8(v38, &unk_10118BCE0, &qword_100EC6450);
    *v37 = v32;
    return result;
  }

  v26 = v93;
  (*(v18 + 32))(v93, v16, v17);

  sub_10037AA20(v26, v8);

  v27 = v10;
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    v28 = v26;
    v22 = v18;
    (*(v18 + 8))(v28, v17);
    v23 = &qword_1011831B0;
    v24 = &qword_100ED2570;
    v25 = v8;
    goto LABEL_7;
  }

  v39 = v17;
  v84 = v18;
  v40 = v91;
  (*(v27 + 32))(v91, v8, v9);
  v41 = v9;
  v42 = sub_10037FC08();
  v43 = UICollectionView.isDraggingCell(at:)();

  v44 = v27;
  if (v43)
  {

    (*(v27 + 8))(v40, v41);
    result = (*(v84 + 8))(v26, v39);
    v45 = v92;
    v92[4] = 0;
    *v45 = 0u;
    *(v45 + 1) = 0u;
  }

  else
  {
    (*(v27 + 16))(v12, v40, v41);
    v46 = (*(v27 + 88))(v12, v41);
    v47 = v41;
    v48 = v92;
    v49 = v39;
    if (v46 == enum case for Playlist.Folder.Item.folder(_:))
    {
      (*(v44 + 96))(v12, v41);
      v50 = v87;
      (*(v87 + 32))(v89, v12, v90);
      v51 = v21;
      v52 = [v51 traitCollection];
      v83 = v47;
      v53 = v52;
      sub_100137E8C();
      UITraitCollection.subscript.getter();

      v88 = v95;
      v54 = type metadata accessor for DragDropToFolder.Destination(0);
      v48[3] = v54;
      v48[4] = sub_10003D8C4(&qword_10119E620, type metadata accessor for DragDropToFolder.Destination, &unk_100ED2530);
      v55 = sub_10001C8B8(v48);
      v56 = v39;
      v57 = *(v54 + 20);
      v59 = v89;
      v58 = v90;
      (*(v50 + 16))(v55 + v57, v89, v90);
      v60 = v55 + v57;
      v61 = v58;
      (*(v50 + 56))(v60, 0, 1, v58);
      v62 = v84;
      v63 = v44;
      v64 = v94;
      (*(v84 + 56))(v94, 1, 1, v56);
      sub_100376BEC(v64, sub_10037FC08, &OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController____lazy_storage___collectionView, (v55 + *(v54 + 24)));

      sub_1000095E8(v64, &unk_10118BCE0, &qword_100EC6450);
      (*(v50 + 8))(v59, v61);
      (*(v63 + 8))(v91, v83);
      result = (*(v62 + 8))(v93, v56);
      *v55 = v88;
    }

    else if (v46 == enum case for Playlist.Folder.Item.playlist(_:))
    {
      (*(v44 + 96))(v12, v41);
      v65 = v85;
      v66 = v86;
      v67 = v12;
      v68 = v88;
      (*(v85 + 32))(v86, v67, v88);
      v69 = v21;
      v70 = [v69 traitCollection];
      v83 = v41;
      v71 = v70;
      sub_100137E8C();
      UITraitCollection.subscript.getter();

      v90 = v95;
      v72 = type metadata accessor for DragDropToPlaylist.Destination(0);
      v48[3] = v72;
      v48[4] = sub_10003D8C4(&unk_10118D3A0, type metadata accessor for DragDropToPlaylist.Destination, &unk_100EE17E0);
      v92 = sub_10001C8B8(v48);
      v73 = v92 + *(v72 + 20);
      (*(v65 + 16))(v73, v66, v68);
      v74 = type metadata accessor for DragDropToPlaylist.Destination.PlaylistDestination(0);
      v75 = v84;
      v76 = v49;
      v77 = *(v84 + 56);
      v77(&v73[*(v74 + 20)], 1, 1, v76);
      v78 = &v73[*(v74 + 24)];
      *v78 = 0;
      *(v78 + 1) = 0;
      (*(*(v74 - 8) + 56))(v73, 0, 1, v74);
      v79 = v44;
      v80 = v94;
      v77(v94, 1, 1, v76);
      v81 = v92;
      sub_100376BEC(v80, sub_10037FC08, &OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController____lazy_storage___collectionView, (v92 + *(v72 + 24)));

      sub_1000095E8(v80, &unk_10118BCE0, &qword_100EC6450);
      (*(v65 + 8))(v86, v88);
      (*(v79 + 8))(v91, v83);
      result = (*(v75 + 8))(v93, v76);
      *v81 = v90;
    }

    else
    {

      v82 = *(v44 + 8);
      v82(v40, v41);
      (*(v84 + 8))(v93, v39);
      v48[4] = 0;
      *v48 = 0u;
      *(v48 + 1) = 0u;
      return (v82)(v12, v41);
    }
  }

  return result;
}

void sub_100385378(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v4 = Strong, , v4, v5 = RequestResponse.Controller.revision.getter(), , v6 = *(v5 + *(*v5 + 112)), , v6))
  {
    swift_beginAccess();
    v7 = swift_unknownObjectWeakLoadStrong();
    if (v7)
    {
      v8 = v7;

      v9 = type metadata accessor for CollectionViewDragDropController.DropContext(0);
      v10 = (*(*(v9 - 8) + 48))(a1, 1, v9) != 1;
      RequestResponse.Controller.isPaused.setter(v10);
    }
  }

  else
  {
    if (qword_10117F268 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_1000060E4(v11, qword_1012186C8);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "Won't pause playlists response controller since initial response hasn't loaded.", v14, 2u);
    }
  }
}

uint64_t sub_10038556C()
{
  v1 = v0;
  sub_10010FC20(&qword_101182140, &unk_100EBD2A0);
  __chkstk_darwin();
  v3 = &v30 - v2;
  v30 = sub_10010FC20(&qword_10118D350, &qword_100EC9098);
  v31 = *(v30 - 8);
  __chkstk_darwin();
  v5 = &v30 - v4;
  v6 = sub_10010FC20(&qword_10118D358, &qword_100EC90A0);
  v33 = *(v6 - 8);
  v34 = v6;
  __chkstk_darwin();
  v32 = &v30 - v7;
  v38 = sub_10010FC20(&unk_10118CE30, &unk_100EC8A30);
  v35 = *(v38 - 8);
  __chkstk_darwin();
  v9 = &v30 - v8;
  sub_10010FC20(&unk_10118F670, &unk_100EC89B0);
  __chkstk_darwin();
  v11 = &v30 - v10;
  v12 = type metadata accessor for Playlist.Folder();
  v13 = *(v12 - 8);
  __chkstk_darwin();
  v36 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = &v1[OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController_scope];
  swift_beginAccess();
  v16 = _s9PlaylistsV5ScopeVMa(0);
  sub_1000089F8(&v15[*(v16 + 20)], v11, &unk_10118F670, &unk_100EC89B0);
  v17 = *(v13 + 48);
  v37 = v12;
  if (v17(v11, 1, v12) == 1)
  {
    return sub_1000095E8(v11, &unk_10118F670, &unk_100EC89B0);
  }

  (*(v13 + 32))(v36, v11, v37);
  type metadata accessor for Playlist.Folder.Item();
  sub_10003D8C4(&unk_101182930, &type metadata accessor for Playlist.Folder.Item, &protocol conformance descriptor for Playlist.Folder.Item);
  MusicLibraryRequest.init()();
  v19 = [v1 traitCollection];
  sub_100137E8C();
  UITraitCollection.subscript.getter();

  MusicLibraryRequest.library.setter();
  swift_getKeyPath();
  *&v39 = Playlist.Folder.id.getter();
  *(&v39 + 1) = v20;
  MusicLibraryRequest.filter<A>(matching:equalTo:)();

  sub_100020674(&qword_10118D360, &unk_10118CE30, &unk_100EC8A30, &protocol conformance descriptor for MusicLibraryRequest<A>);
  v21 = MusicAutoupdatableRequest.autoupdatingResponse.getter();
  v22 = OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController_folderResponse;
  swift_beginAccess();
  *&v1[v22] = v21;

  swift_beginAccess();
  if (*&v1[v22])
  {
    swift_endAccess();

    dispatch thunk of MusicAutoupdatingResponse.$response.getter();

    sub_100009F78(0, &qword_101182960, OS_dispatch_queue_ptr);
    v23 = static OS_dispatch_queue.main.getter();
    *&v39 = v23;
    v24 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
    (*(*(v24 - 8) + 56))(v3, 1, 1, v24);
    sub_100020674(&unk_10118D368, &qword_10118D350, &qword_100EC9098, &protocol conformance descriptor for Published<A>.Publisher);
    sub_1000206BC();
    v25 = v32;
    v26 = v30;
    Publisher.receive<A>(on:options:)();
    sub_1000095E8(v3, &qword_101182140, &unk_100EBD2A0);

    (*(v31 + 8))(v5, v26);
    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_100020674(&qword_10118D378, &qword_10118D358, &qword_100EC90A0, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
    v27 = v34;
    v28 = Publisher<>.sink(receiveValue:)();

    (*(v33 + 8))(v25, v27);
    *(&v40 + 1) = type metadata accessor for AnyCancellable();
    v41 = &protocol witness table for AnyCancellable;
    *&v39 = v28;
    (*(v35 + 8))(v9, v38);
    (*(v13 + 8))(v36, v37);
  }

  else
  {
    (*(v35 + 8))(v9, v38);
    (*(v13 + 8))(v36, v37);
    swift_endAccess();
    v39 = 0u;
    v40 = 0u;
    v41 = 0;
  }

  v29 = OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController_folderResponseSubscription;
  swift_beginAccess();
  sub_10006B010(&v39, &v1[v29], &qword_10118D380, &qword_100EBDE20);
  return swift_endAccess();
}

void sub_100385D1C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_100385D70();
  }
}

void sub_100385D70()
{
  v43 = type metadata accessor for Playlist.Folder.Item();
  v1 = *(v43 - 8);
  __chkstk_darwin();
  v42 = &v31 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_1011831B0, &qword_100ED2570);
  __chkstk_darwin();
  v4 = &v31 - v3;
  v5 = type metadata accessor for IndexPath();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v41 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v9 = &v31 - v8;
  v10 = sub_10037FC08();
  v11 = [v10 indexPathsForVisibleItems];

  v45 = v5;
  v12 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v13 = v12;
  v52 = *(v12 + 16);
  if (v52)
  {
    v14 = 0;
    v49 = v6 + 16;
    v50 = OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController_responseController;
    v48 = (v1 + 48);
    v38 = (v1 + 88);
    v39 = (v1 + 16);
    v37 = enum case for Playlist.Folder.Item.folder(_:);
    v36 = (v1 + 8);
    v47 = (v6 + 8);
    v34 = (v6 + 32);
    v44 = _swiftEmptyArrayStorage;
    v32 = v0;
    v15 = v43;
    v16 = v45;
    v17 = v0;
    v40 = v6;
    v51 = v13;
    v35 = v4;
    while (v14 < *(v13 + 16))
    {
      v18 = (*(v6 + 80) + 32) & ~*(v6 + 80);
      v19 = *(v6 + 72);
      (*(v6 + 16))(v9, v13 + v18 + v19 * v14, v16);
      sub_10037AA20(v9, v4);
      if ((*v48)(v4, 1, v15) == 1)
      {
        sub_1000095E8(v4, &qword_1011831B0, &qword_100ED2570);
        (*v47)(v9, v16);
      }

      else
      {
        v46 = v18;
        v20 = v17;
        v21 = v42;
        (*v39)(v42, v4, v15);
        v22 = (*v38)(v21, v15);
        v23 = *v36;
        (*v36)(v21, v15);
        v23(v4, v15);
        if (v22 == v37)
        {
          v16 = v45;
          v33 = *v34;
          v33(v41, v9, v45);
          v24 = v44;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v53 = v24;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_10066CB48(0, v24[2] + 1, 1);
            v24 = v53;
          }

          v6 = v40;
          v4 = v35;
          v26 = v46;
          v28 = v24[2];
          v27 = v24[3];
          if (v28 >= v27 >> 1)
          {
            sub_10066CB48((v27 > 1), v28 + 1, 1);
            v24 = v53;
          }

          v24[2] = v28 + 1;
          v44 = v24;
          v33(v24 + v26 + v28 * v19, v41, v16);
          v17 = v32;
          v15 = v43;
        }

        else
        {
          v16 = v45;
          (*v47)(v9, v45);
          v15 = v43;
          v17 = v20;
          v6 = v40;
          v4 = v35;
        }
      }

      ++v14;
      v13 = v51;
      if (v52 == v14)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v44 = _swiftEmptyArrayStorage;
    v17 = v0;
LABEL_15:

    v29 = *(v17 + OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController____lazy_storage___collectionView);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v29 reconfigureItemsAtIndexPaths:isa];
  }
}

void sub_1003862E8(char a1)
{
  v2 = v1;
  v22.receiver = v1;
  v22.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v22, "viewWillAppear:", a1 & 1);
  v4 = sub_10037FC08();
  UICollectionView.clearSelection(using:animated:)([v2 transitionCoordinator], a1);

  swift_unknownObjectRelease();
  v5 = [v2 transitionCoordinator];
  if (v5)
  {
    v6 = v5;
    v7 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = sub_1003C142C;
    aBlock[5] = v7;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1007E9F28;
    aBlock[3] = &unk_1010A9D78;
    v8 = _Block_copy(aBlock);

    [v6 animateAlongsideTransition:0 completion:v8];
    _Block_release(v8);
    swift_unknownObjectRelease();
  }

  else
  {
    RequestResponse.Controller.isAutomaticReloadingEnabled.setter(1);
  }

  sub_100385D70();
  v20 = v2;
  v9 = sub_100386664();
  *(v9 + 145) = 1;
  v10 = v9[4];
  v11 = *(v10 + 16);

  if (v11)
  {
    v12 = 0;
    v13 = (v10 + 40);
    do
    {
      if (v12 >= *(v10 + 16))
      {
        __break(1u);
LABEL_22:
        swift_once();
        if (byte_101218F00)
        {
          goto LABEL_18;
        }

LABEL_16:
        if (*(v9 + 145))
        {
          sub_10039C59C();
        }

        goto LABEL_18;
      }

      v16 = *v13;
      v17 = qword_10117F808;
      swift_unknownObjectRetain();
      if (v17 == -1)
      {
        if (byte_101218F00)
        {
          goto LABEL_11;
        }
      }

      else
      {
        swift_once();
        if (byte_101218F00)
        {
LABEL_11:
          v14 = 0;
          goto LABEL_7;
        }
      }

      v14 = *(v9 + 145);
LABEL_7:
      ++v12;
      ObjectType = swift_getObjectType();
      (*(v16 + 16))(v14, ObjectType, v16);
      swift_unknownObjectRelease();
      v13 += 2;
    }

    while (v11 != v12);
  }

  if (qword_10117F808 != -1)
  {
    goto LABEL_22;
  }

  if ((byte_101218F00 & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_18:

  type metadata accessor for ApplicationMainMenu();
  v18 = sub_100314AEC();
  if (v18)
  {
    v19 = v18;
    sub_1007CA708(v20, v18);
  }
}

double sub_1003865EC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;

    RequestResponse.Controller.isAutomaticReloadingEnabled.setter(1);
  }

  return result;
}

void *sub_100386664()
{
  v1 = OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController____lazy_storage___impressionsTracker;
  if (*&v0[OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController____lazy_storage___impressionsTracker])
  {
    v2 = *&v0[OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController____lazy_storage___impressionsTracker];
  }

  else
  {
    v3 = sub_10037FC08();
    sub_10010FC20(&qword_10118CD20, &qword_100EC8930);
    swift_allocObject();
    v2 = sub_10039AEB8(v0, v3, 1, 0);
    *&v0[v1] = v2;
  }

  return v2;
}

uint64_t sub_10038675C(char a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  type metadata accessor for MetricsEvent.Page(0);
  __chkstk_darwin();
  v6 = &v27[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v8 = &v27[-v7];
  v9 = _s9PlaylistsV5ScopeVMa(0);
  *&v10 = __chkstk_darwin().n128_u64[0];
  v12 = &v27[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v28.receiver = v2;
  v28.super_class = ObjectType;
  objc_msgSendSuper2(&v28, "viewDidAppear:", a1 & 1, v10);
  v13 = *MetricsReportingController.shared.unsafeMutableAddressor();
  v14 = OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController_scope;
  swift_beginAccess();
  sub_1003C16C8(v2 + v14, v12, _s9PlaylistsV5ScopeVMa);
  v15 = qword_10117F298;
  v16 = v13;
  if (v15 != -1)
  {
    swift_once();
  }

  v17 = sub_1000060E4(v9, qword_101218730);
  if (sub_1001982EC(v12, v17))
  {
    v18 = MetricsEvent.Page.libraryMadeForYou.unsafeMutableAddressor();
  }

  else
  {
    v18 = MetricsEvent.Page.libraryPlaylistsList.unsafeMutableAddressor();
  }

  sub_1003C16C8(v18, v6, type metadata accessor for MetricsEvent.Page);
  sub_1003C1730(v12, _s9PlaylistsV5ScopeVMa);
  sub_1003C1790(v6, v8, type metadata accessor for MetricsEvent.Page);
  v19 = sub_10053771C();
  v21 = v20;
  if (qword_10117F600 != -1)
  {
    swift_once();
  }

  v22 = qword_101218AD0;
  v23 = GroupActivitiesManager.hasJoined.getter();
  v24 = GroupActivitiesManager.participantsCount.getter();
  v25 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_maxParticipantsCount;
  swift_beginAccess();
  (*((swift_isaMask & *v16) + 0xA0))(v8, v19, v21, v23 & 1, v24, *(v22 + v25));

  return sub_1003C1730(v8, type metadata accessor for MetricsEvent.Page);
}

void sub_100386AB4(char a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = _s9PlaylistsV5ScopeVMa(0);
  *&v6 = __chkstk_darwin().n128_u64[0];
  v8 = (&v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15.receiver = v2;
  v15.super_class = ObjectType;
  objc_msgSendSuper2(&v15, "viewWillDisappear:", a1 & 1, v6);
  v9 = OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController_scope;
  swift_beginAccess();
  sub_1003C16C8(v2 + v9, v8, _s9PlaylistsV5ScopeVMa);
  if (qword_10117F298 != -1)
  {
    swift_once();
  }

  v10 = sub_1000060E4(v5, qword_101218730);
  v11 = sub_1001982EC(v8, v10);
  sub_1003C1730(v8, _s9PlaylistsV5ScopeVMa);
  if (v11)
  {
    sub_100386C3C();
  }

  type metadata accessor for ApplicationMainMenu();
  v12 = sub_100314AEC();
  if (v12)
  {
    v13 = v12;
    sub_1006F49A4();
  }
}

double sub_100386C3C()
{
  v1 = v0;
  sub_10010FC20(&unk_1011839D0, &qword_100EBF430);
  __chkstk_darwin();
  v3 = v34 - v2;
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_10118BCE0, &qword_100EC6450);
  __chkstk_darwin();
  v9 = v34 - v8;
  v10 = _s9PlaylistsV5ScopeVMa(0);
  __chkstk_darwin();
  v12 = (v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController_scope;
  swift_beginAccess();
  sub_1003C16C8(v1 + v13, v12, _s9PlaylistsV5ScopeVMa);
  if (qword_10117F298 != -1)
  {
    swift_once();
  }

  v14 = sub_1000060E4(v10, qword_101218730);
  v15 = sub_1001982EC(v12, v14);
  sub_1003C1730(v12, _s9PlaylistsV5ScopeVMa);
  if (v15)
  {
    sub_100386664();
    v17 = type metadata accessor for IndexPath();
    (*(*(v17 - 8) + 56))(v9, 1, 1, v17);
    Date.init()();
    v19 = sub_10039EFB0(2u, v7, v9, v18);

    (*(v5 + 8))(v7, v4);
    sub_1000095E8(v9, &unk_10118BCE0, &qword_100EC6450);
    if (v19)
    {
      v20 = *(v19 + 16);
      if (v20)
      {
        v34[0] = _swiftEmptyArrayStorage;
        sub_10066CB8C(0, v20, 0);
        v21 = 32;
        v22 = v34[0];
        do
        {
          v23 = *(v19 + v21);
          v34[0] = v22;
          v25 = v22[2];
          v24 = v22[3];

          if (v25 >= v24 >> 1)
          {
            sub_10066CB8C((v24 > 1), v25 + 1, 1);
            v22 = v34[0];
          }

          v22[2] = v25 + 1;
          v22[v25 + 4] = v23;
          v21 += 8;
          --v20;
        }

        while (v20);
      }

      else
      {

        v22 = _swiftEmptyArrayStorage;
      }

      v26 = *MetricsReportingController.shared.unsafeMutableAddressor();
      sub_100391AB0(v3);
      v27 = sub_10053771C();
      v29 = v28;
      if (qword_10117F600 != -1)
      {
        swift_once();
      }

      v30 = qword_101218AD0;
      v31 = GroupActivitiesManager.hasJoined.getter();
      v32 = GroupActivitiesManager.participantsCount.getter();
      v33 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_maxParticipantsCount;
      swift_beginAccess();
      (*((swift_isaMask & *v26) + 0xA8))(v22, v3, v27, v29, v31 & 1, v32, *(v30 + v33));

      sub_1000095E8(v3, &unk_1011839D0, &qword_100EBF430);
    }

    sub_10039C118();
  }

  return result;
}

void sub_1003871F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = sub_10010FC20(&unk_10118D330, &qword_100ED15D0);
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v12 - v7;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_4;
  }

  v10 = Strong;

  v11 = sub_1006E688C();

  if (v11)
  {

LABEL_4:
    v14 = 0;
    v12 = 0u;
    v13 = 0u;
    UICollectionViewCell.contentConfiguration.setter();
    return;
  }

  sub_100382E3C();
  sub_1003C13C8();
  UIHostingConfiguration<>.init(content:)();
  static Edge.Set.all.getter();
  *(&v13 + 1) = v5;
  v14 = sub_100020674(&unk_10118D340, &unk_10118D330, &qword_100ED15D0, &protocol conformance descriptor for UIHostingConfiguration<A, B>);
  sub_10001C8B8(&v12);
  UIHostingConfiguration.margins(_:_:)();

  (*(v6 + 8))(v8, v5);
  UICollectionViewCell.contentConfiguration.setter();
}

void sub_1003873EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v22[0] = a1;
  v22[1] = a4;
  sub_10010FC20(&unk_10118CDC0, &unk_100EC89D0);
  __chkstk_darwin();
  v6 = v22 - v5;
  v7 = sub_10010FC20(&qword_101193C80, &qword_100EDE790);
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = v22 - v9;
  v11 = sub_10010FC20(&unk_10118CEC0, &unk_100EE0420);
  v12 = *(v11 - 8);
  __chkstk_darwin();
  v14 = v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v16 = v22 - v15;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v18 = Strong;
    RequestResponse.Controller.revision.getter();
    RequestResponse.Revision.content.getter(v6);

    v19 = sub_10010FC20(&unk_10118CDD0, &unk_100EC89E0);
    if ((*(*(v19 - 8) + 48))(v6, 1, v19) == 1)
    {
      sub_1000095E8(v6, &unk_10118CDC0, &unk_100EC89D0);

      return;
    }

    (*(v8 + 16))(v10, v6, v7);
    sub_1000095E8(v6, &unk_10118CDD0, &unk_100EC89E0);
    v20 = MusicLibrarySectionedResponse.sections.getter();
    (*(v8 + 8))(v10, v7);
    v21 = IndexPath.section.getter();
    if ((v21 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v21 < *(v20 + 16))
    {
      (*(v12 + 16))(v14, v20 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v21, v11);

      (*(v12 + 32))(v16, v14, v11);
      swift_getKeyPath();
      MusicLibrarySection.subscript.getter();

      sub_1005FF7FC(v22[2], v22[3], v23);

      UICollectionViewCell.contentConfiguration.setter();

      (*(v12 + 8))(v16, v11);
      return;
    }

    __break(1u);
  }
}

void sub_1003877A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_10010FC20(&unk_10118D320, &unk_100EC9050);
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v12 = v18 - v11;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    __chkstk_darwin();
    v18[-4] = a3;
    v18[-3] = v13;
    v18[-2] = a5;
    v14 = v13;
    sub_10010FC20(&unk_1011847A0, &unk_100EC0470);
    v15 = _s8ListCellVMa(255);
    v16 = sub_10003D8C4(&qword_10118D2E0, _s8ListCellVMa, &unk_100ED7588);
    v18[0] = v15;
    v18[1] = v16;
    swift_getOpaqueTypeConformance2();
    UIHostingConfiguration<>.init(content:)();
    static Edge.Set.horizontal.getter();

    UIHostingConfiguration.margins(_:_:)();
    v17 = *(v8 + 8);
    v17(v10, v7);
    static Edge.Set.vertical.getter();
    v18[3] = v7;
    v18[4] = sub_100020674(&unk_1011847B0, &unk_10118D320, &unk_100EC9050, &protocol conformance descriptor for UIHostingConfiguration<A, B>);
    sub_10001C8B8(v18);
    UIHostingConfiguration.margins(_:_:)();
    v17(v12, v7);
    UICollectionViewCell.contentConfiguration.setter();
  }
}

uint64_t sub_100387A80@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v75 = a2;
  sub_10010FC20(&unk_10118D2F0, &unk_100EBCE10);
  __chkstk_darwin();
  v77 = &v64 - v3;
  v72 = type metadata accessor for MusicFavoriteStatus();
  v4 = *(v72 - 1);
  __chkstk_darwin();
  v71 = (&v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v70 = (&v64 - v6);
  v67 = type metadata accessor for Date();
  v66 = *(v67 - 8);
  __chkstk_darwin();
  v64 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_101188C20, &qword_100EC2030);
  __chkstk_darwin();
  v65 = &v64 - v8;
  v76 = _s9PlaylistsV5ScopeVMa(0);
  __chkstk_darwin();
  v10 = (&v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for ArtworkImage.Placeholder(0);
  __chkstk_darwin();
  v12 = &v64 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_10118A5E0, &unk_100EBCD90);
  __chkstk_darwin();
  v14 = &v64 - v13;
  type metadata accessor for ArtworkImage.Info(0);
  __chkstk_darwin();
  v16 = &v64 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = _s8ListCellVMa(0);
  __chkstk_darwin();
  v19 = &v64 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  Playlist.artworkViewModel.getter(v14);
  Playlist.variant.getter();
  v20 = sub_10010FC20(&unk_101182950, &qword_100EC0420);
  (*(*(v20 - 8) + 56))(v12, 0, 11, v20);
  ArtworkImage.Size.init(cgSize:)(0x4050000000000000, 0x4050000000000000, 0, v81);
  v21 = Corner.small.unsafeMutableAddressor();
  v22 = *v21;
  v23 = v21[1];
  v24 = *(v21 + 16);
  v73 = v16;
  ArtworkImage.Info.init(viewModel:placeholder:aspectRatio:size:corner:)(v14, v12, 0, 1, v81, v22, v23, v24, v16);
  v69 = Playlist.name.getter();
  v68 = v25;
  v26 = OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController_scope;
  swift_beginAccess();
  v74 = a1;
  sub_1003C16C8(a1 + v26, v10, _s9PlaylistsV5ScopeVMa);
  if (qword_10117F298 != -1)
  {
    swift_once();
  }

  v27 = sub_1000060E4(v76, qword_101218730);
  v28 = sub_1001982EC(v10, v27);
  sub_1003C1730(v10, _s9PlaylistsV5ScopeVMa);
  if (v28)
  {
    v29 = v65;
    Playlist.lastModifiedDate.getter();
    v30 = v66;
    v31 = v67;
    if ((*(v66 + 48))(v29, 1, v67) == 1)
    {
      sub_1000095E8(v29, &qword_101188C20, &qword_100EC2030);
LABEL_9:
      v76 = Playlist.curatorName.getter();
      v67 = v38;

      goto LABEL_10;
    }

    v33 = v64;
    static Date.now.getter();
    Date.lastUpdatedDateString(relativeTo:)();
    v76 = v34;
    v36 = v35;
    v37 = *(v30 + 8);
    v37(v33, v31);
    v37(v29, v31);
    if (!v36)
    {
      goto LABEL_9;
    }

    v67 = v36;
  }

  else
  {
    v76 = Playlist.curatorName.getter();
    v67 = v32;
  }

LABEL_10:
  v39 = v70;
  Playlist.favoriteStatus.getter();
  v40 = v71;
  v41 = v72;
  (*(v4 + 104))(v71, enum case for MusicFavoriteStatus.favorited(_:), v72);
  LODWORD(v66) = static MusicFavoriteStatus.== infix(_:_:)();
  v42 = *(v4 + 8);
  v42(v40, v41);
  v42(v39, v41);
  v43 = type metadata accessor for ContentRating();
  v44 = *(*(v43 - 8) + 56);
  v44(v77, 1, 1, v43);
  v80 = 0;
  v78 = 0u;
  v79 = 0u;
  sub_10010FC20(&unk_1011847C0, &unk_100EC0480);
  swift_allocObject();
  v71 = OptionalObservableObject.init(publisher:)(&v78);
  v80 = 0;
  v78 = 0u;
  v79 = 0u;
  sub_10010FC20(&unk_10118D300, &qword_100EBCE20);
  swift_allocObject();
  v70 = OptionalObservableObject.init(publisher:)(&v78);
  v45 = static HierarchicalShapeStyle.primary.getter();
  *(v19 + 3) = &type metadata for HierarchicalShapeStyle;
  *(v19 + 4) = &protocol witness table for HierarchicalShapeStyle;
  *v19 = v45;
  v19[40] = 0;
  v46 = &v19[v17[6]];
  v47 = v17[9];
  v48 = v17[10];
  v44(&v19[v48], 1, 1, v43);
  v72 = &v19[v17[11]];
  v49 = v17[14];
  *&v19[v49] = swift_getKeyPath();
  sub_10010FC20(&qword_10118A610, &qword_100EBCDD0);
  swift_storeEnumTagMultiPayload();
  v50 = v73;
  sub_1003C16C8(v73, &v19[v17[5]], type metadata accessor for ArtworkImage.Info);
  *(v46 + 1) = 0;
  *(v46 + 2) = 0;
  *v46 = 0;
  v51 = &v19[v17[7]];
  v52 = v68;
  *v51 = v69;
  v51[1] = v52;
  v53 = &v19[v17[8]];
  v54 = v77;
  v55 = v67;
  *v53 = v76;
  *(v53 + 1) = v55;
  v19[v47] = v66 & 1;
  sub_100123348(v54, &v19[v48]);
  v56 = &v19[v17[12]];
  sub_100020674(&unk_1011847D0, &unk_1011847C0, &unk_100EC0480, &protocol conformance descriptor for OptionalObservableObject<A>);

  *v56 = ObservedObject.init(wrappedValue:)();
  v56[1] = v57;
  v58 = &v19[v17[13]];
  sub_100020674(&qword_10118D310, &unk_10118D300, &qword_100EBCE20, &protocol conformance descriptor for OptionalObservableObject<A>);
  v59 = ObservedObject.init(wrappedValue:)();
  v61 = v60;

  sub_1000095E8(v54, &unk_10118D2F0, &unk_100EBCE10);
  sub_1003C1730(v50, type metadata accessor for ArtworkImage.Info);
  *v58 = v59;
  v58[1] = v61;
  v62 = v72;
  *v72 = 0;
  *(v62 + 1) = 0;
  sub_10003D8C4(&unk_101184780, type metadata accessor for ArtworkPrefetchingController.CacheReference, &unk_100EC2A40);
  sub_10003D8C4(&qword_10118D2E0, _s8ListCellVMa, &unk_100ED7588);

  View.artworkCaching(owner:)();

  return sub_1003C1730(v19, _s8ListCellVMa);
}

void sub_100388498(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_10010FC20(&qword_10118D2C8, &qword_100EC9030);
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v10 = v14 - v9;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    __chkstk_darwin();
    v14[-2] = a3;
    sub_10010FC20(&qword_10118D2D0, &unk_100EC9038);
    sub_1003C12B8();
    UIHostingConfiguration<>.init(content:)();
    static Edge.Set.horizontal.getter();

    UIHostingConfiguration.margins(_:_:)();
    v13 = *(v6 + 8);
    v13(v8, v5);
    static Edge.Set.vertical.getter();
    v14[3] = v5;
    v14[4] = sub_100020674(&qword_10118D2E8, &qword_10118D2C8, &qword_100EC9030, &protocol conformance descriptor for UIHostingConfiguration<A, B>);
    sub_10001C8B8(v14);
    UIHostingConfiguration.margins(_:_:)();
    v13(v10, v5);
    UICollectionViewCell.contentConfiguration.setter();
  }
}

uint64_t sub_100388704@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v72 = a2;
  sub_10010FC20(&unk_10118D2F0, &unk_100EBCE10);
  __chkstk_darwin();
  v4 = v61 - v3;
  type metadata accessor for ArtworkImage.Placeholder(0);
  __chkstk_darwin();
  v6 = v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_10118A5E0, &unk_100EBCD90);
  __chkstk_darwin();
  v8 = v61 - v7;
  type metadata accessor for ArtworkImage.Info(0);
  __chkstk_darwin();
  v10 = v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _s8ListCellVMa(0);
  __chkstk_darwin();
  v13 = v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ArtworkImage.ViewModel(0);
  (*(*(v14 - 8) + 56))(v8, 1, 1, v14);
  v15 = enum case for Playlist.Variant.folder(_:);
  v16 = type metadata accessor for Playlist.Variant();
  v17 = *(v16 - 8);
  (*(v17 + 104))(v6, v15, v16);
  (*(v17 + 56))(v6, 0, 1, v16);
  v18 = sub_10010FC20(&unk_101182950, &qword_100EC0420);
  (*(*(v18 - 8) + 56))(v6, 0, 11, v18);
  ArtworkImage.Size.init(width:height:fittingAspectRatio:contentMode:)(0x4050000000000000, 0, 0x4050000000000000, 0, 0x3FF0000000000000, 0, 2, v76);
  v19 = Corner.small.unsafeMutableAddressor();
  v20 = *v19;
  v21 = v19[1];
  v22 = *(v19 + 16);
  v71 = v10;
  ArtworkImage.Info.init(viewModel:placeholder:aspectRatio:size:corner:)(v8, v6, 0, 1, v76, v20, v21, v22, v10);
  if (qword_10117F238 != -1)
  {
    swift_once();
  }

  sub_1001740C0();
  sub_100177D14(a1);
  v24 = v23;

  if (v24)
  {
    v25 = *(v24 + OBJC_IVAR____TtCOE5MusicO9MusicCore7Library7Folders11PreviewData_viewModel);
    v26 = *(v24 + OBJC_IVAR____TtCOE5MusicO9MusicCore7Library7Folders11PreviewData_viewModel + 8);
    v68 = *(v24 + OBJC_IVAR____TtCOE5MusicO9MusicCore7Library7Folders11PreviewData_viewModel + 16);
    v69 = v26;
    v70 = v25;
  }

  else
  {
    ArtworkImage.GridPreview.ViewModel.init(items:numberOfRows:numberOfColumns:)();
    v69 = v28;
    v70 = v27;
    v68 = v29;
  }

  v30 = Playlist.Folder.name.getter();
  v66 = v31;
  v67 = v30;
  v32 = sub_100174488(a1);
  if (v33)
  {
    v34 = v32;
  }

  else
  {
    v34 = 0;
  }

  v35 = 0xE000000000000000;
  if (v33)
  {
    v35 = v33;
  }

  v64 = v35;
  v65 = v34;
  v36 = type metadata accessor for ContentRating();
  v37 = *(*(v36 - 8) + 56);
  v37(v4, 1, 1, v36);
  v75 = 0;
  v73 = 0u;
  v74 = 0u;
  sub_10010FC20(&unk_1011847C0, &unk_100EC0480);
  v62 = v4;
  swift_allocObject();
  v61[2] = OptionalObservableObject.init(publisher:)(&v73);
  v75 = 0;
  v73 = 0u;
  v74 = 0u;
  sub_10010FC20(&unk_10118D300, &qword_100EBCE20);
  swift_allocObject();
  v61[1] = OptionalObservableObject.init(publisher:)(&v73);
  v38 = static HierarchicalShapeStyle.primary.getter();
  *(v13 + 3) = &type metadata for HierarchicalShapeStyle;
  *(v13 + 4) = &protocol witness table for HierarchicalShapeStyle;
  *v13 = v38;
  v13[40] = 0;
  v39 = &v13[v11[6]];
  v40 = v11[9];
  v41 = v11[10];
  v37(&v13[v41], 1, 1, v36);
  v63 = &v13[v11[11]];
  v42 = v11[14];
  *&v13[v42] = swift_getKeyPath();
  sub_10010FC20(&qword_10118A610, &qword_100EBCDD0);
  swift_storeEnumTagMultiPayload();
  v43 = v71;
  sub_1003C16C8(v71, &v13[v11[5]], type metadata accessor for ArtworkImage.Info);
  v44 = v69;
  *v39 = v70;
  *(v39 + 1) = v44;
  v45 = v67;
  *(v39 + 2) = v68;
  v46 = &v13[v11[7]];
  v47 = v65;
  v48 = v66;
  *v46 = v45;
  *(v46 + 1) = v48;
  v49 = &v13[v11[8]];
  *v49 = v47;
  *(v49 + 1) = v64;
  v13[v40] = 0;
  v50 = &v13[v41];
  v51 = v62;
  sub_100123348(v62, v50);
  v52 = &v13[v11[12]];
  sub_100020674(&unk_1011847D0, &unk_1011847C0, &unk_100EC0480, &protocol conformance descriptor for OptionalObservableObject<A>);

  *v52 = ObservedObject.init(wrappedValue:)();
  v52[1] = v53;
  v54 = &v13[v11[13]];
  sub_100020674(&qword_10118D310, &unk_10118D300, &qword_100EBCE20, &protocol conformance descriptor for OptionalObservableObject<A>);
  v55 = ObservedObject.init(wrappedValue:)();
  v57 = v56;

  sub_1000095E8(v51, &unk_10118D2F0, &unk_100EBCE10);
  sub_1003C1730(v43, type metadata accessor for ArtworkImage.Info);
  *v54 = v55;
  v54[1] = v57;
  v58 = sub_10003D8C4(&qword_10118D2E0, _s8ListCellVMa, &unk_100ED7588);
  v59 = v63;
  *v63 = 0;
  *(v59 + 1) = 0;
  View.placeholderStyle(_:)(sub_1003C1884, 0, v11, v58);
  return sub_1003C1730(v13, _s8ListCellVMa);
}

void sub_100388E28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_10010FC20(&qword_10118D2C0, &unk_100ED1530);
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = v13 - v7;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    __chkstk_darwin();
    v13[-2] = a3;
    v13[-1] = v9;
    v10 = v9;
    sub_10010FC20(&unk_101184760, &unk_100EC0410);
    v11 = _s8GridCellVMa(255);
    v12 = sub_10003D8C4(&qword_10118D290, _s8GridCellVMa, &unk_100ED75D8);
    v13[0] = v11;
    v13[1] = v12;
    swift_getOpaqueTypeConformance2();
    UIHostingConfiguration<>.init(content:)();
    static Edge.Set.all.getter();
    v13[3] = v5;
    v13[4] = sub_100020674(&unk_101184770, &qword_10118D2C0, &unk_100ED1530, &protocol conformance descriptor for UIHostingConfiguration<A, B>);
    sub_10001C8B8(v13);
    UIHostingConfiguration.margins(_:_:)();
    (*(v6 + 8))(v8, v5);
    UICollectionViewCell.contentConfiguration.setter();
  }
}

uint64_t sub_100389074@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v70 = a2;
  v69 = type metadata accessor for MusicFavoriteStatus();
  v67 = *(v69 - 8);
  __chkstk_darwin();
  v68 = &v57 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v64 = &v57 - v4;
  v5 = type metadata accessor for Date();
  v60 = *(v5 - 8);
  v61 = v5;
  __chkstk_darwin();
  v58 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_101188C20, &qword_100EC2030);
  __chkstk_darwin();
  v59 = &v57 - v7;
  v8 = _s9PlaylistsV5ScopeVMa(0);
  __chkstk_darwin();
  v10 = (&v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for ArtworkImage.Placeholder(0);
  __chkstk_darwin();
  v12 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_10118A5E0, &unk_100EBCD90);
  __chkstk_darwin();
  v14 = &v57 - v13;
  type metadata accessor for ArtworkImage.Info(0);
  __chkstk_darwin();
  v16 = &v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = _s8GridCellVMa(0);
  __chkstk_darwin();
  v19 = &v57 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  Playlist.artworkViewModel.getter(v14);
  Playlist.variant.getter();
  v20 = sub_10010FC20(&unk_101182950, &qword_100EC0420);
  (*(*(v20 - 8) + 56))(v12, 0, 11, v20);
  v21 = sub_10037FC08();
  v22 = *&v21[OBJC_IVAR____TtC5Music23HIMetricsCollectionView_metrics + 48];

  ArtworkImage.Size.init(width:height:fittingAspectRatio:contentMode:)(v22, 0, 0, 1, 0x3FF0000000000000, 0, 2, v71);
  v23 = Corner.medium.unsafeMutableAddressor();
  v24 = *v23;
  v25 = v23[1];
  v26 = *(v23 + 16);
  v65 = v16;
  ArtworkImage.Info.init(viewModel:placeholder:aspectRatio:size:corner:)(v14, v12, 0, 1, v71, v24, v25, v26, v16);
  v27 = Playlist.name.getter();
  v62 = v28;
  v63 = v27;
  v29 = OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController_scope;
  swift_beginAccess();
  v66 = a1;
  sub_1003C16C8(a1 + v29, v10, _s9PlaylistsV5ScopeVMa);
  if (qword_10117F298 != -1)
  {
    swift_once();
  }

  v30 = sub_1000060E4(v8, qword_101218730);
  v31 = sub_1001982EC(v10, v30);
  sub_1003C1730(v10, _s9PlaylistsV5ScopeVMa);
  if (v31)
  {
    v32 = v59;
    Playlist.lastModifiedDate.getter();
    v34 = v60;
    v33 = v61;
    if ((*(v60 + 48))(v32, 1, v61) == 1)
    {
      sub_1000095E8(v32, &qword_101188C20, &qword_100EC2030);
LABEL_8:
      v35 = Playlist.curatorName.getter();
      v37 = v42;

      goto LABEL_9;
    }

    v38 = v58;
    static Date.now.getter();
    Date.lastUpdatedDateString(relativeTo:)();
    v35 = v39;
    v37 = v40;
    v41 = *(v34 + 8);
    v41(v38, v33);
    v41(v32, v33);
    if (!v37)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v35 = Playlist.curatorName.getter();
    v37 = v36;
  }

LABEL_9:
  v43 = v64;
  Playlist.favoriteStatus.getter();
  v44 = v67;
  v45 = v68;
  v46 = v69;
  (*(v67 + 104))(v68, enum case for MusicFavoriteStatus.favorited(_:), v69);
  v47 = static MusicFavoriteStatus.== infix(_:_:)();
  v48 = *(v44 + 8);
  v48(v45, v46);
  v48(v43, v46);
  v49 = v17[10];
  v50 = type metadata accessor for ContentRating();
  (*(*(v50 - 8) + 56))(&v19[v49], 1, 1, v50);
  sub_1003C1790(v65, v19, type metadata accessor for ArtworkImage.Info);
  v51 = &v19[v17[5]];
  *v51 = 0;
  *(v51 + 1) = 0;
  *(v51 + 2) = 0;
  *&v19[v17[6]] = 0x3FF0000000000000;
  v52 = &v19[v17[7]];
  v53 = v62;
  *v52 = v63;
  *(v52 + 1) = v53;
  v54 = &v19[v17[8]];
  *v54 = v35;
  v54[1] = v37;
  v19[v17[9]] = v47 & 1;
  v19[v17[11]] = 0;
  v55 = v17[12];
  *&v19[v55] = swift_getKeyPath();
  sub_10010FC20(&qword_10118A610, &qword_100EBCDD0);
  swift_storeEnumTagMultiPayload();
  sub_10003D8C4(&unk_101184780, type metadata accessor for ArtworkPrefetchingController.CacheReference, &unk_100EC2A40);
  sub_10003D8C4(&qword_10118D290, _s8GridCellVMa, &unk_100ED75D8);

  View.artworkCaching(owner:)();

  return sub_1003C1730(v19, _s8GridCellVMa);
}

void sub_100389838(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_10010FC20(&qword_10118D270, &qword_100EC8F90);
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = v13 - v7;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    __chkstk_darwin();
    v13[-2] = v9;
    v13[-1] = a3;
    v10 = v9;
    sub_10010FC20(&qword_10118D278, &qword_100EC8F98);
    v11 = sub_1001109D0(&qword_10118D280, &qword_100EC8FA0);
    v12 = sub_1003C0E84();
    v13[0] = v11;
    v13[1] = v12;
    swift_getOpaqueTypeConformance2();
    UIHostingConfiguration<>.init(content:)();
    static Edge.Set.all.getter();
    v13[3] = v5;
    v13[4] = sub_100020674(&qword_10118D2A0, &qword_10118D270, &qword_100EC8F90, &protocol conformance descriptor for UIHostingConfiguration<A, B>);
    sub_10001C8B8(v13);
    UIHostingConfiguration.margins(_:_:)();
    (*(v6 + 8))(v8, v5);
    UICollectionViewCell.contentConfiguration.setter();
  }
}

uint64_t sub_100389A60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v55 = a3;
  type metadata accessor for ArtworkImage.Placeholder(0);
  __chkstk_darwin();
  v6 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_10118A5E0, &unk_100EBCD90);
  __chkstk_darwin();
  v8 = &v50 - v7;
  type metadata accessor for ArtworkImage.Info(0);
  __chkstk_darwin();
  v10 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _s8GridCellVMa(0);
  __chkstk_darwin();
  v13 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_10010FC20(&qword_10118D280, &qword_100EC8FA0);
  __chkstk_darwin();
  v53 = &v50 - v14;
  v15 = type metadata accessor for ArtworkImage.ViewModel(0);
  (*(*(v15 - 8) + 56))(v8, 1, 1, v15);
  v16 = enum case for Playlist.Variant.folder(_:);
  v17 = type metadata accessor for Playlist.Variant();
  v18 = *(v17 - 8);
  (*(v18 + 104))(v6, v16, v17);
  (*(v18 + 56))(v6, 0, 1, v17);
  v19 = sub_10010FC20(&unk_101182950, &qword_100EC0420);
  (*(*(v19 - 8) + 56))(v6, 0, 11, v19);
  v20 = sub_10037FC08();
  v21 = *&v20[OBJC_IVAR____TtC5Music23HIMetricsCollectionView_metrics + 48];

  v54 = a1;
  ArtworkImage.Size.init(width:height:fittingAspectRatio:contentMode:)(v21, 0, *(*(a1 + OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController____lazy_storage___collectionView) + OBJC_IVAR____TtC5Music23HIMetricsCollectionView_metrics + 48), 0, 0x3FF0000000000000, 0, 2, v56);
  v22 = Corner.medium.unsafeMutableAddressor();
  v23 = *v22;
  v24 = v22[1];
  v25 = *(v22 + 16);
  v51 = v10;
  ArtworkImage.Info.init(viewModel:placeholder:aspectRatio:size:corner:)(v8, v6, 0, 1, v56, v23, v24, v25, v10);
  if (qword_10117F238 != -1)
  {
    swift_once();
  }

  sub_1001740C0();
  sub_100177D14(a2);
  v27 = v26;

  if (v27)
  {
    v28 = *(v27 + OBJC_IVAR____TtCOE5MusicO9MusicCore7Library7Folders11PreviewData_viewModel);
    v29 = *(v27 + OBJC_IVAR____TtCOE5MusicO9MusicCore7Library7Folders11PreviewData_viewModel + 8);
    v30 = *(v27 + OBJC_IVAR____TtCOE5MusicO9MusicCore7Library7Folders11PreviewData_viewModel + 16);
  }

  else
  {
    ArtworkImage.GridPreview.ViewModel.init(items:numberOfRows:numberOfColumns:)();
    v28 = v31;
    v29 = v32;
    v30 = v33;
  }

  v34 = Playlist.Folder.name.getter();
  v36 = v35;
  v37 = sub_100174488(a2);
  if (v38)
  {
    v39 = v37;
  }

  else
  {
    v39 = 0;
  }

  if (v38)
  {
    v40 = v38;
  }

  else
  {
    v40 = 0xE000000000000000;
  }

  v41 = v11[10];
  v42 = type metadata accessor for ContentRating();
  (*(*(v42 - 8) + 56))(&v13[v41], 1, 1, v42);
  sub_1003C1790(v51, v13, type metadata accessor for ArtworkImage.Info);
  v43 = &v13[v11[5]];
  *v43 = v28;
  *(v43 + 1) = v29;
  *(v43 + 2) = v30;
  *&v13[v11[6]] = 0x3FF0000000000000;
  v44 = &v13[v11[7]];
  *v44 = v34;
  v44[1] = v36;
  v45 = &v13[v11[8]];
  *v45 = v39;
  *(v45 + 1) = v40;
  v13[v11[9]] = 0;
  v13[v11[11]] = 0;
  v46 = v11[12];
  *&v13[v46] = swift_getKeyPath();
  sub_10010FC20(&qword_10118A610, &qword_100EBCDD0);
  swift_storeEnumTagMultiPayload();
  v47 = sub_10003D8C4(&qword_10118D290, _s8GridCellVMa, &unk_100ED75D8);
  v48 = v53;
  View.placeholderStyle(_:)(sub_1003C1884, 0, v11, v47);
  sub_1003C1730(v13, _s8GridCellVMa);
  sub_10003D8C4(&unk_101184780, type metadata accessor for ArtworkPrefetchingController.CacheReference, &unk_100EC2A40);
  sub_1003C0E84();

  View.artworkCaching(owner:)();

  return sub_1000095E8(v48, &qword_10118D280, &qword_100EC8FA0);
}

uint64_t sub_10038A094(uint64_t a1)
{
  v3[3] = &type metadata for Color;
  v3[4] = &protocol witness table for Color;
  v3[0] = static Color.accentColor.getter();
  return sub_10006B010(v3, a1, &unk_10118D2A8, &unk_100EC8FE0);
}

uint64_t sub_10038A0F4@<X0>(char *a1@<X8>)
{
  sub_10010FC20(&unk_1011838F0, &qword_100EC1070);
  __chkstk_darwin();
  v4 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v6 = &v31 - v5;
  sub_10010FC20(&unk_1011838D0, &unk_100EC0320);
  __chkstk_darwin();
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v10 = &v31 - v9;
  v11 = OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController____lazy_storage___actionMetricsReportingContext;
  swift_beginAccess();
  sub_1000089F8(v1 + v11, v10, &unk_1011838D0, &unk_100EC0320);
  v12 = type metadata accessor for Actions.MetricsReportingContext(0);
  v13 = *(v12 - 1);
  if ((*(v13 + 48))(v10, 1, v12) != 1)
  {
    return sub_1003C1790(v10, a1, type metadata accessor for Actions.MetricsReportingContext);
  }

  v37 = v1;
  sub_1000095E8(v10, &unk_1011838D0, &unk_100EC0320);
  v14 = MetricsEvent.Page.libraryPlaylistsList.unsafeMutableAddressor();
  sub_1003C16C8(v14, v6, type metadata accessor for MetricsEvent.Page);
  v15 = type metadata accessor for MetricsEvent.Page(0);
  v16 = v4;
  v17 = *(*(v15 - 8) + 56);
  v17(v6, 0, 1, v15);
  v36 = v16;
  sub_1000089F8(v6, v16, &unk_1011838F0, &qword_100EC1070);
  MetricsReportingController.shared.unsafeMutableAddressor();
  v18 = sub_10053771C();
  v34 = v19;
  v35 = v18;
  if (qword_10117F600 != -1)
  {
    swift_once();
  }

  v20 = qword_101218AD0;
  v33 = GroupActivitiesManager.hasJoined.getter();
  v32 = GroupActivitiesManager.participantsCount.getter();
  sub_1000095E8(v6, &unk_1011838F0, &qword_100EC1070);
  v21 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_maxParticipantsCount;
  swift_beginAccess();
  v22 = *(v20 + v21);
  v23 = v12[5];
  v17(&a1[v23], 1, 1, v15);
  v24 = v12[7];
  v25 = &a1[v12[6]];
  v26 = v12[8];
  *a1 = xmmword_100EBEF60;
  sub_10006B010(v36, &a1[v23], &unk_1011838F0, &qword_100EC1070);
  v27 = v34;
  *v25 = v35;
  *(v25 + 1) = v27;
  *&a1[v24] = 0;
  *&a1[v26] = 0;
  v28 = &a1[v12[9]];
  *v28 = v33 & 1;
  *(v28 + 1) = v32;
  *(v28 + 2) = v22;
  sub_1003C16C8(a1, v8, type metadata accessor for Actions.MetricsReportingContext);
  (*(v13 + 56))(v8, 0, 1, v12);
  v29 = v37;
  swift_beginAccess();
  sub_10006B010(v8, v29 + v11, &unk_1011838D0, &unk_100EC0320);
  return swift_endAccess();
}

uint64_t sub_10038A804(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = sub_10010FC20(&unk_10118A650, &qword_100EC02B0);
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = v18 - v8;
  v10 = UICollectionView.elementKindGlobalHeader.unsafeMutableAddressor();
  v11 = *v10 == a2 && v10[1] == a3;
  if (!v11 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    if (static String._unconditionallyBridgeFromObjectiveC(_:)() != a2 || v12 != a3)
    {
      v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v14)
      {
LABEL_14:
        sub_100383344(v9);
        goto LABEL_15;
      }

      strcpy(v18, "Unknown kind=");
      v18[7] = -4864;
      v15._countAndFlagsBits = a2;
      v15._object = a3;
      String.append(_:)(v15);
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    goto LABEL_14;
  }

  sub_1003830C0(v9);
LABEL_15:
  sub_100009F78(0, &unk_101184750, UICollectionViewCell_ptr);
  v16 = UICollectionView.dequeueConfiguredReusableSupplementary<A>(using:for:)();
  (*(v7 + 8))(v9, v6);
  return v16;
}

id sub_10038AB64(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v111 = a1;
  sub_10010FC20(&unk_10118ABC0, &unk_100EC03E0);
  __chkstk_darwin();
  v103 = &v86 - v5;
  v6 = type metadata accessor for UICellAccessory.DisclosureIndicatorOptions();
  v104 = *(v6 - 8);
  v105 = v6;
  __chkstk_darwin();
  v101 = &v86 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = type metadata accessor for UICellAccessory.DisplayedState();
  v100 = *(v102 - 8);
  __chkstk_darwin();
  v99 = &v86 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = sub_10010FC20(&qword_10118CCE8, &qword_100EC88A0);
  v93 = *(v94 - 8);
  __chkstk_darwin();
  v92 = &v86 - v9;
  v10 = sub_10010FC20(&qword_10118CCD8, &qword_100EC8898);
  v106 = *(v10 - 8);
  v107 = v10;
  __chkstk_darwin();
  v12 = &v86 - v11;
  sub_10010FC20(&unk_10118D250, &unk_100EC8F78);
  __chkstk_darwin();
  v108 = &v86 - v13;
  sub_10010FC20(&unk_10118F670, &unk_100EC89B0);
  __chkstk_darwin();
  v95 = &v86 - v14;
  v88 = sub_10010FC20(&unk_10118CD08, &qword_100EC88B0);
  v87 = *(v88 - 8);
  __chkstk_darwin();
  v86 = &v86 - v15;
  v98 = type metadata accessor for Playlist.Folder();
  v97 = *(v98 - 8);
  __chkstk_darwin();
  v96 = &v86 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_1011814D0, &qword_100EC12A0);
  __chkstk_darwin();
  v18 = &v86 - v17;
  v91 = sub_10010FC20(&qword_10118CCF8, &qword_100EC88A8);
  v90 = *(v91 - 8);
  __chkstk_darwin();
  v20 = &v86 - v19;
  v21 = type metadata accessor for Playlist();
  v109 = *(v21 - 8);
  v110 = v21;
  __chkstk_darwin();
  v89 = &v86 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_1011831B0, &qword_100ED2570);
  __chkstk_darwin();
  v24 = &v86 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v26 = &v86 - v25;
  __chkstk_darwin();
  v28 = &v86 - v27;
  __chkstk_darwin();
  v30 = &v86 - v29;
  __chkstk_darwin();
  v112 = a2;
  v113 = &v86 - v31;
  sub_10037AA20(a2, &v86 - v31);
  v32 = v2;
  v33 = sub_10037FC08();
  v34 = v33[OBJC_IVAR____TtC5Music23HIMetricsCollectionView_metrics + 56];

  if ((v34 & 1) == 0 && (*(*&v3[OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController_layoutVariantController] + 32) & 1) == 0)
  {
    sub_1000089F8(v113, v30, &qword_1011831B0, &qword_100ED2570);
    v53 = type metadata accessor for Playlist.Folder.Item();
    v54 = *(v53 - 8);
    if ((*(v54 + 48))(v30, 1, v53) != 1)
    {
      sub_1000089F8(v30, v28, &qword_1011831B0, &qword_100ED2570);
      v71 = (*(v54 + 88))(v28, v53);
      if (v71 == enum case for Playlist.Folder.Item.folder(_:))
      {
        (*(v54 + 96))(v28, v53);
        v72 = v97;
        v73 = v96;
        v74 = v98;
        (*(v97 + 32))(v96, v28, v98);
        v75 = v86;
        sub_100383D5C(v86);
        v76 = v95;
        (*(v72 + 16))(v95, v73, v74);
        (*(v72 + 56))(v76, 0, 1, v74);
        v77 = v112;
        v78 = sub_1007F9980(v75, v112, v76);
        sub_1000095E8(v76, &unk_10118F670, &unk_100EC89B0);
        (*(v87 + 8))(v75, v88);
        v40 = v78;
        sub_10038BD78(v73, v32, v77);
        (*(v72 + 8))(v73, v74);
        goto LABEL_19;
      }

      if (v71 == enum case for Playlist.Folder.Item.playlist(_:))
      {
        (*(v54 + 96))(v28, v53);
        v80 = v109;
        v79 = v110;
        v81 = v89;
        (*(v109 + 32))(v89, v28, v110);
        sub_100383AE4(v20);
        v82 = *(v80 + 16);
        v82(v18, v81, v79);
        (*(v80 + 56))(v18, 0, 1, v79);
        v83 = sub_1007F9444(v20, v112, v18);
        sub_1000095E8(v18, &unk_1011814D0, &qword_100EC12A0);
        (*(v90 + 8))(v20, v91);
        v115 = v79;
        v116 = &protocol witness table for Playlist;
        v84 = sub_10001C8B8(v114);
        v82(v84, v81, v79);
        v40 = v83;

        (*(v80 + 8))(v81, v79);
        sub_1000095E8(v114, &qword_1011A3DD0, &unk_100EC03F0);
        goto LABEL_19;
      }

      (*(v54 + 8))(v28, v53);
    }

    sub_100383AE4(v20);
    (*(v109 + 56))(v18, 1, 1, v110);
    v55 = sub_1007F9444(v20, v112, v18);
    sub_1000095E8(v18, &unk_1011814D0, &qword_100EC12A0);
    (*(v90 + 8))(v20, v91);
    v56 = type metadata accessor for EntityIdentifier();
    (*(*(v56 - 8) + 56))(v108, 1, 1, v56);
    v40 = v55;
    UIView.appEntityIdentifier.setter();

LABEL_19:
    sub_1000095E8(v30, &qword_1011831B0, &qword_100ED2570);
    UICollectionViewCell.configurationUpdateHandler.setter();

    v41 = v113;
    goto LABEL_20;
  }

  v35 = v113;
  sub_1000089F8(v113, v26, &qword_1011831B0, &qword_100ED2570);
  v36 = type metadata accessor for Playlist.Folder.Item();
  v37 = *(v36 - 8);
  if ((*(v37 + 48))(v26, 1, v36) == 1)
  {
LABEL_4:
    sub_1003835CC(v12);
    (*(v109 + 56))(v18, 1, 1, v110);
    v38 = sub_1007F9EBC(v12, v112, v18);
    sub_1000095E8(v18, &unk_1011814D0, &qword_100EC12A0);
    (*(v106 + 8))(v12, v107);
    v39 = type metadata accessor for EntityIdentifier();
    (*(*(v39 - 8) + 56))(v108, 1, 1, v39);
    v40 = v38;
    UIView.appEntityIdentifier.setter();

    sub_1000095E8(v35, &qword_1011831B0, &qword_100ED2570);
    v41 = v26;
    goto LABEL_20;
  }

  sub_1000089F8(v26, v24, &qword_1011831B0, &qword_100ED2570);
  v42 = (*(v37 + 88))(v24, v36);
  if (v42 == enum case for Playlist.Folder.Item.folder(_:))
  {
    (*(v37 + 96))(v24, v36);
    v43 = v97;
    v44 = v96;
    v45 = v98;
    (*(v97 + 32))(v96, v24, v98);
    v46 = v32;
    v47 = v92;
    sub_10038386C(v92);
    v48 = v95;
    (*(v43 + 16))(v95, v44, v45);
    (*(v43 + 56))(v48, 0, 1, v45);
    v49 = v112;
    v50 = sub_1007FA3F8(v47, v112, v48);
    sub_1000095E8(v48, &unk_10118F670, &unk_100EC89B0);
    v51 = v47;
    v32 = v46;
    v52 = v113;
    (*(v93 + 8))(v51, v94);
    v40 = v50;
    sub_10038BD78(v44, v32, v49);
    (*(v43 + 8))(v44, v45);
  }

  else
  {
    if (v42 != enum case for Playlist.Folder.Item.playlist(_:))
    {
      (*(v37 + 8))(v24, v36);
      goto LABEL_4;
    }

    (*(v37 + 96))(v24, v36);
    v57 = v109;
    v58 = v89;
    v59 = v24;
    v60 = v110;
    (*(v109 + 32))(v89, v59, v110);
    sub_1003835CC(v12);
    v61 = *(v57 + 16);
    v61(v18, v58, v60);
    (*(v57 + 56))(v18, 0, 1, v60);
    v62 = sub_1007F9EBC(v12, v112, v18);
    sub_1000095E8(v18, &unk_1011814D0, &qword_100EC12A0);
    (*(v106 + 8))(v12, v107);
    v115 = v60;
    v116 = &protocol witness table for Playlist;
    v63 = sub_10001C8B8(v114);
    v61(v63, v58, v60);
    v52 = v113;
    v40 = v62;

    (*(v57 + 8))(v58, v60);
    sub_1000095E8(v114, &qword_1011A3DD0, &unk_100EC03F0);
  }

  sub_1000095E8(v26, &qword_1011831B0, &qword_100ED2570);
  sub_10010FC20(&unk_101184740, &qword_100ED5D60);
  type metadata accessor for UICellAccessory();
  *(swift_allocObject() + 16) = xmmword_100EBC6B0;
  v64 = v100;
  v65 = v99;
  v66 = v102;
  (*(v100 + 104))(v99, enum case for UICellAccessory.DisplayedState.always(_:), v102);
  v67 = type metadata accessor for UICellAccessory.LayoutDimension();
  (*(*(v67 - 8) + 56))(v103, 1, 1, v67);
  v68 = v101;
  UICellAccessory.DisclosureIndicatorOptions.init(isHidden:reservedLayoutWidth:tintColor:)();
  static UICellAccessory.disclosureIndicator(displayed:options:)();
  (*(v104 + 8))(v68, v105);
  (*(v64 + 8))(v65, v66);
  UICollectionViewListCell.accessories.setter();

  v69 = [v32 traitCollection];
  v70 = [v69 userInterfaceIdiom];

  if (v70 != 6)
  {
    [v40 directionalLayoutMargins];
    [v40 setDirectionalLayoutMargins:?];
  }

  v41 = v52;
LABEL_20:
  sub_1000095E8(v41, &qword_1011831B0, &qword_100ED2570);
  return v40;
}

void sub_10038BD78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v46 = a3;
  v48 = type metadata accessor for IndexPath();
  v45 = *(v48 - 8);
  v5 = *(v45 + 64);
  __chkstk_darwin();
  v47 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for Playlist.Folder();
  v6 = *(v44 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin();
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  __chkstk_darwin();
  v9 = &v38 - v8;
  if (qword_10117F238 != -1)
  {
    swift_once();
  }

  v10 = *(*(a2 + OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController_responseController) + 48) + *(**(*(a2 + OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController_responseController) + 48) + 96);
  swift_beginAccess();
  v11 = *v10;
  LODWORD(v10) = *(v10 + 8);

  LOBYTE(v10) = sub_1001747E4(a1, v11, v10);

  if ((v10 & 1) == 0)
  {
    sub_1001740C0();
    sub_100177D14(a1);
    v13 = v12;

    if (v13)
    {
      v14 = *(v13 + OBJC_IVAR____TtCOE5MusicO9MusicCore7Library7Folders11PreviewData_viewModel);
      v15 = *(v13 + OBJC_IVAR____TtCOE5MusicO9MusicCore7Library7Folders11PreviewData_viewModel + 8);
      v41 = *(v13 + OBJC_IVAR____TtCOE5MusicO9MusicCore7Library7Folders11PreviewData_viewModel + 16);
      v42 = v15;
      v43 = v14;
    }

    else
    {
      ArtworkImage.GridPreview.ViewModel.init(items:numberOfRows:numberOfColumns:)();
      v42 = v17;
      v43 = v16;
      v41 = v18;
    }

    v19 = sub_100174488(a1);
    v39 = v20;
    v40 = v19;
    v21 = type metadata accessor for TaskPriority();
    v22 = *(*(v21 - 8) + 56);
    v38 = v9;
    v22(v9, 1, 1, v21);
    v23 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v24 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    v25 = v44;
    (*(v6 + 16))(v24, a1, v44);
    v26 = v45;
    (*(v45 + 16))(v47, v46, v48);
    v27 = (*(v6 + 80) + 40) & ~*(v6 + 80);
    v28 = (v7 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
    v29 = (v28 + 31) & 0xFFFFFFFFFFFFFFF8;
    v30 = (*(v26 + 80) + v29 + 16) & ~*(v26 + 80);
    v31 = swift_allocObject();
    *(v31 + 2) = 0;
    *(v31 + 3) = 0;
    *(v31 + 4) = v23;
    (*(v6 + 32))(&v31[v27], v24, v25);
    v32 = &v31[v28];
    v33 = v42;
    *v32 = v43;
    *(v32 + 1) = v33;
    v34 = v40;
    *(v32 + 2) = v41;
    v35 = &v31[v29];
    v36 = v39;
    *v35 = v34;
    v35[1] = v36;
    (*(v26 + 32))(&v31[v30], v47, v48);
    v37 = v38;
    sub_10035EB10(0, 0, v38, &unk_100EC9008, v31);

    sub_1000095E8(v37, &unk_101181520, &qword_100EBCC60);
  }
}

uint64_t sub_10038C1DC(uint64_t a1, uint64_t a2)
{
  v37 = a1;
  sub_10010FC20(&qword_1011888C0, &qword_100EC2FA0);
  __chkstk_darwin();
  v33 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v34 = &v33 - v4;
  v5 = type metadata accessor for UIBackgroundConfiguration();
  v35 = *(v5 - 8);
  v36 = v5;
  __chkstk_darwin();
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v9 = &v33 - v8;
  __chkstk_darwin();
  v11 = &v33 - v10;
  v12 = type metadata accessor for UICellConfigurationState.DropState();
  v13 = *(v12 - 8);
  __chkstk_darwin();
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v17 = &v33 - v16;
  UICellConfigurationState.cellDropState.getter();
  (*(v13 + 104))(v15, enum case for UICellConfigurationState.DropState.targeted(_:), v12);
  v18 = static UICellConfigurationState.DropState.== infix(_:_:)();
  v19 = *(v13 + 8);
  v19(v15, v12);
  v19(v17, v12);
  if (v18)
  {
    static UIBackgroundConfiguration.listCell()();
    v20 = type metadata accessor for UICellConfigurationState();
    v38[3] = v20;
    v38[4] = &protocol witness table for UICellConfigurationState;
    v21 = sub_10001C8B8(v38);
    (*(*(v20 - 8) + 16))(v21, a2, v20);
    UIBackgroundConfiguration.updated(for:)();
    v23 = v35;
    v22 = v36;
    v24 = *(v35 + 8);
    v24(v9, v36);
    sub_10000959C(v38);
    if (qword_10117F258 != -1)
    {
      swift_once();
    }

    UIBackgroundConfiguration.cornerRadius.setter();
    NSDirectionalEdgeInsets.Edge.all.unsafeMutableAddressor();

    NSDirectionalEdgeInsets.init(edge:length:)(v25, -8.0);
    UIBackgroundConfiguration.backgroundInsets.setter();
    v26 = v34;
    (*(v23 + 16))(v34, v11, v22);
    (*(v23 + 56))(v26, 0, 1, v22);
    UICollectionViewCell.backgroundConfiguration.setter();
    return (v24)(v11, v22);
  }

  else
  {
    v28 = v35;
    v29 = v36;
    if (UICellConfigurationState.isFocused.getter())
    {
      Corner.medium.unsafeMutableAddressor();
      static UIBackgroundConfiguration.clear()();
      UIBackgroundConfiguration.cornerRadius.setter();
      v30 = [objc_opt_self() tintColor];
      UIBackgroundConfiguration.strokeColor.setter();
      UIBackgroundConfiguration.strokeWidth.setter();
      UIBackgroundConfiguration.strokeOutset.setter();
      v31 = v33;
      (*(v28 + 32))(v33, v7, v29);
      (*(v28 + 56))(v31, 0, 1, v29);
    }

    else
    {
      v32 = v34;
      static UIBackgroundConfiguration.clear()();
      (*(v28 + 56))(v32, 0, 1, v29);
    }

    return UICollectionViewCell.backgroundConfiguration.setter();
  }
}

uint64_t sub_10038C6AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 144) = v16;
  *(v8 + 128) = v15;
  *(v8 + 112) = a7;
  *(v8 + 120) = a8;
  *(v8 + 96) = a5;
  *(v8 + 104) = a6;
  *(v8 + 88) = a4;
  v9 = type metadata accessor for Playlist.Folder();
  *(v8 + 152) = v9;
  v10 = *(v9 - 8);
  *(v8 + 160) = v10;
  *(v8 + 168) = *(v10 + 64);
  *(v8 + 176) = swift_task_alloc();
  v11 = type metadata accessor for IndexPath();
  *(v8 + 184) = v11;
  v12 = *(v11 - 8);
  *(v8 + 192) = v12;
  *(v8 + 200) = *(v12 + 64);
  *(v8 + 208) = swift_task_alloc();
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  *(v8 + 216) = swift_task_alloc();
  _s9PlaylistsVMa(0);
  *(v8 + 224) = swift_task_alloc();
  *(v8 + 232) = swift_task_alloc();

  return _swift_task_switch(sub_10038C864, 0, 0);
}

uint64_t sub_10038C864()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[30] = Strong;
  if (Strong)
  {
    if (qword_10117F238 != -1)
    {
      v6 = Strong;
      swift_once();
      Strong = v6;
    }

    v2 = OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController_responseController;
    v0[31] = qword_101218670;
    v0[32] = v2;
    v0[33] = *(Strong + v2);
    v0[34] = type metadata accessor for MainActor();
    v0[35] = static MainActor.shared.getter();
    v4 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_10038C9E8, v4, v3);
  }

  else
  {

    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_10038C9E8()
{
  v1 = *(v0 + 264);
  v2 = *(v0 + 232);

  v3 = *(v1 + 48);
  v4 = *(*v3 + 96);
  swift_beginAccess();
  sub_1003C16C8(v3 + v4, v2, _s9PlaylistsVMa);

  return _swift_task_switch(sub_10038CAAC, 0, 0);
}

uint64_t sub_10038CAAC()
{
  v1 = v0[32];
  v2 = v0[29];
  v3 = v0[30];
  v0[36] = *v2;

  sub_1003C1730(v2, _s9PlaylistsVMa);
  v0[37] = *(v3 + v1);
  v0[38] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10038CB78, v5, v4);
}

uint64_t sub_10038CB78()
{
  v1 = *(v0 + 296);
  v2 = *(v0 + 224);

  v3 = *(v1 + 48);
  v4 = *(*v3 + 96);
  swift_beginAccess();
  sub_1003C16C8(v3 + v4, v2, _s9PlaylistsVMa);

  return _swift_task_switch(sub_10038CC38, 0, 0);
}

uint64_t sub_10038CC38()
{
  v1 = v0[28];
  v2 = *(v1 + 8);
  sub_1003C1730(v1, _s9PlaylistsVMa);
  v3 = swift_task_alloc();
  v0[39] = v3;
  *v3 = v0;
  v3[1] = sub_10038CCF8;
  v4 = v0[36];
  v5 = v0[12];

  return sub_100174920(v5, v4, v2);
}

uint64_t sub_10038CCF8()
{

  return _swift_task_switch(sub_10038CE10, 0, 0);
}

uint64_t sub_10038CE10()
{
  v1 = v0[12];
  sub_1001740C0();
  sub_100177D14(v1);
  v3 = v2;

  if (v3)
  {
    v5 = *(v3 + OBJC_IVAR____TtCOE5MusicO9MusicCore7Library7Folders11PreviewData_viewModel);
    v4 = *(v3 + OBJC_IVAR____TtCOE5MusicO9MusicCore7Library7Folders11PreviewData_viewModel + 8);
    v6 = *(v3 + OBJC_IVAR____TtCOE5MusicO9MusicCore7Library7Folders11PreviewData_viewModel + 16);

    v7 = v0[13];
    if (v7)
    {
LABEL_3:
      if (!v5)
      {
        goto LABEL_15;
      }

      v8 = static ArtworkImage.GridPreview.ViewModel.__derived_struct_equals(_:_:)(v7, v0[14], v0[15], v5, v4, v6);

      if ((v8 & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_8;
    }
  }

  else
  {
    ArtworkImage.GridPreview.ViewModel.init(items:numberOfRows:numberOfColumns:)();
    v5 = v9;
    v4 = v10;
    v6 = v11;
    v7 = v0[13];
    if (v7)
    {
      goto LABEL_3;
    }
  }

  if (v5)
  {
    goto LABEL_14;
  }

LABEL_8:
  v12 = v0[17];
  v13 = sub_100174488(v0[12]);
  if (!v12)
  {
    if (!v14)
    {
      goto LABEL_20;
    }

LABEL_14:

LABEL_15:
    v16 = v0[26];
    v17 = v0[27];
    v38 = v0[30];
    v39 = v17;
    v36 = v16;
    v18 = v0[24];
    v20 = v0[22];
    v19 = v0[23];
    v21 = v0[20];
    v37 = v0[25];
    v23 = v0[18];
    v22 = v0[19];
    v34 = v19;
    v35 = v0[12];
    v24 = type metadata accessor for TaskPriority();
    (*(*(v24 - 8) + 56))(v17, 1, 1, v24);
    v25 = swift_allocObject();
    swift_unknownObjectWeakInit();
    (*(v18 + 16))(v16, v23, v19);
    (*(v21 + 16))(v20, v35, v22);

    v26 = static MainActor.shared.getter();
    v27 = (*(v18 + 80) + 40) & ~*(v18 + 80);
    v28 = (v37 + *(v21 + 80) + v27) & ~*(v21 + 80);
    v29 = swift_allocObject();
    *(v29 + 2) = v26;
    *(v29 + 3) = &protocol witness table for MainActor;
    *(v29 + 4) = v25;
    (*(v18 + 32))(&v29[v27], v36, v34);
    (*(v21 + 32))(&v29[v28], v20, v22);

    v30 = v29;
    v15 = v38;
    sub_1001F4CB8(0, 0, v39, &unk_100EC9018, v30);

    goto LABEL_16;
  }

  if (!v14)
  {
    goto LABEL_15;
  }

  if (v13 == v0[16] && v14 == v0[17])
  {
    v15 = v0[30];

    goto LABEL_16;
  }

  v33 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v33 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_20:
  v15 = v0[30];
LABEL_16:

  v31 = v0[1];

  return v31();
}

uint64_t sub_10038D184(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[8] = a5;
  v6[9] = a6;
  v6[7] = a4;
  v7 = type metadata accessor for Playlist.Folder.Item();
  v6[10] = v7;
  v6[11] = *(v7 - 8);
  v6[12] = swift_task_alloc();
  v8 = sub_10010FC20(&qword_1011828F0, &unk_100ED1640);
  v6[13] = v8;
  v6[14] = *(v8 - 8);
  v6[15] = swift_task_alloc();
  v6[16] = swift_task_alloc();
  sub_10010FC20(&qword_10118CEB8, &unk_100EC8AE0);
  v6[17] = swift_task_alloc();
  v9 = sub_10010FC20(&unk_10118CEC0, &unk_100EE0420);
  v6[18] = v9;
  v6[19] = *(v9 - 8);
  v6[20] = swift_task_alloc();
  sub_10010FC20(&unk_10118CDC0, &unk_100EC89D0);
  v6[21] = swift_task_alloc();
  v10 = sub_10010FC20(&qword_101193C80, &qword_100EDE790);
  v6[22] = v10;
  v6[23] = *(v10 - 8);
  v6[24] = swift_task_alloc();
  v6[25] = swift_task_alloc();
  type metadata accessor for MainActor();
  v6[26] = static MainActor.shared.getter();
  v12 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10038D43C, v12, v11);
}

uint64_t sub_10038D43C()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = v0[21];
    RequestResponse.Controller.revision.getter();
    RequestResponse.Revision.content.getter(v3);

    v4 = sub_10010FC20(&unk_10118CDD0, &unk_100EC89E0);
    if ((*(*(v4 - 8) + 48))(v3, 1, v4) == 1)
    {
      sub_1000095E8(v0[21], &unk_10118CDC0, &unk_100EC89D0);
LABEL_14:
      v42 = v0[9];
      v43 = sub_10037FC08();
      v44 = [v43 indexPathsForVisibleItems];

      type metadata accessor for IndexPath();
      v45 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v46 = swift_task_alloc();
      *(v46 + 16) = v2;
      *(v46 + 24) = v42;
      sub_1007F4E08(sub_1003C1288, v46, v45);

      v47 = *&v2[OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController____lazy_storage___collectionView];
      isa = Array._bridgeToObjectiveC()().super.isa;

      [v47 reconfigureItemsAtIndexPaths:isa];

      goto LABEL_15;
    }

    v55 = v2;
    v6 = v0[24];
    v5 = v0[25];
    v8 = v0[22];
    v7 = v0[23];
    v9 = v0[21];
    v10 = v0[18];
    v11 = v0[19];
    v12 = v0[17];
    (*(v7 + 16))(v6, v9, v8);
    sub_1000095E8(v9, &unk_10118CDD0, &unk_100EC89E0);
    (*(v7 + 32))(v5, v6, v8);
    MusicLibrarySectionedResponse.sections.getter();
    IndexPath.section.getter();
    Array.subscript.getter(v10, v12);

    if ((*(v11 + 48))(v12, 1, v10) == 1)
    {
      v13 = v0[17];
      (*(v0[23] + 8))(v0[25], v0[22]);
      sub_1000095E8(v13, &qword_10118CEB8, &unk_100EC8AE0);
LABEL_13:
      v2 = v55;
      goto LABEL_14;
    }

    v14 = v0[16];
    v15 = v0[13];
    v16 = v0[14];
    (*(v0[19] + 32))(v0[20], v0[17], v0[18]);
    v17 = IndexPath.item.getter();
    MusicLibrarySection.items.getter();
    sub_100020674(&qword_10118C1D0, &qword_1011828F0, &unk_100ED1640, &protocol conformance descriptor for MusicItemCollection<A>);
    dispatch thunk of Collection.startIndex.getter();
    dispatch thunk of Collection.endIndex.getter();
    v18 = dispatch thunk of Collection.distance(from:to:)();
    v19 = *(v16 + 8);
    v19(v14, v15);
    if (v17 < v18)
    {
      v20 = v0[15];
      v22 = v0[12];
      v21 = v0[13];
      v24 = v0[10];
      v23 = v0[11];
      MusicLibrarySection.items.getter();
      IndexPath.item.getter();
      MusicItemCollection.subscript.getter();
      v19(v20, v21);
      v25 = Playlist.Folder.Item.id.getter();
      v27 = v26;
      (*(v23 + 8))(v22, v24);
      if (v25 == Playlist.Folder.id.getter() && v27 == v28)
      {

LABEL_11:
        v30 = v0[23];
        v53 = v0[22];
        v54 = v0[25];
        v31 = v0[19];
        v51 = v0[18];
        v52 = v0[20];
        v32 = v0[8];
        v33 = sub_10037FC08();
        sub_10010FC20(&qword_10118AC80, &qword_100EC9020);
        v34 = type metadata accessor for IndexPath();
        v35 = *(v34 - 8);
        v36 = (*(v35 + 80) + 32) & ~*(v35 + 80);
        v37 = swift_allocObject();
        *(v37 + 16) = xmmword_100EBC6B0;
        (*(v35 + 16))(v37 + v36, v32, v34);
        v38 = Array._bridgeToObjectiveC()().super.isa;

        [v33 reconfigureItemsAtIndexPaths:v38];

        (*(v31 + 8))(v52, v51);
        (*(v30 + 8))(v54, v53);
        goto LABEL_15;
      }

      v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v29)
      {
        goto LABEL_11;
      }
    }

    v39 = v0[25];
    v41 = v0[22];
    v40 = v0[23];
    (*(v0[19] + 8))(v0[20], v0[18]);
    (*(v40 + 8))(v39, v41);
    goto LABEL_13;
  }

LABEL_15:

  v49 = v0[1];

  return v49();
}

uint64_t sub_10038DAC4(uint64_t a1)
{
  sub_10010FC20(&qword_1011831B0, &qword_100ED2570);
  __chkstk_darwin();
  v3 = &v14 - v2;
  sub_10037AA20(a1, &v14 - v2);
  v4 = type metadata accessor for Playlist.Folder.Item();
  v5 = *(v4 - 8);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_1000095E8(v3, &qword_1011831B0, &qword_100ED2570);
    Playlist.Folder.id.getter();
    v6 = 0;
  }

  else
  {
    v7 = Playlist.Folder.Item.id.getter();
    v9 = v8;
    (*(v5 + 8))(v3, v4);
    v10 = Playlist.Folder.id.getter();
    if (v9)
    {
      if (v7 == v10 && v9 == v11)
      {

        v6 = 1;
      }

      else
      {
        v6 = _stringCompareWithSmolCheck(_:_:expecting:)();
      }
    }

    else
    {
      v6 = 0;
    }
  }

  return v6 & 1;
}

BOOL sub_10038DFB8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = type metadata accessor for IndexPath();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = a3;
  v10 = UICollectionView.isDraggingCell(at:)();

  (*(v6 + 8))(v8, v5);
  return (v10 & 1) == 0;
}

void sub_10038E0AC(void *a1, uint64_t *a2)
{
  v164 = a2;
  v148 = a1;
  ObjectType = swift_getObjectType();
  sub_10010FC20(&unk_10119F3A0, &qword_100EC7CD0);
  __chkstk_darwin();
  v152 = &v125 - v3;
  v4 = type metadata accessor for Playlist.Folder();
  v155 = *(v4 - 8);
  v156 = v4;
  __chkstk_darwin();
  v154 = &v125 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = type metadata accessor for Date();
  v132 = *(v133 - 8);
  __chkstk_darwin();
  v131 = &v125 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_10118BCE0, &qword_100EC6450);
  __chkstk_darwin();
  v130 = &v125 - v7;
  type metadata accessor for MetricsPageProperties(0);
  __chkstk_darwin();
  v134 = &v125 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for MetricsEvent.Page(0);
  __chkstk_darwin();
  v128 = &v125 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v129 = &v125 - v10;
  type metadata accessor for MetricsEvent.Click(0);
  __chkstk_darwin();
  v135 = &v125 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v161 = _s9PlaylistsV5ScopeVMa(0);
  __chkstk_darwin();
  v153 = (&v125 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v14 = &v125 - v13;
  __chkstk_darwin();
  v127 = (&v125 - v15);
  __chkstk_darwin();
  v147 = (&v125 - v16);
  v149 = type metadata accessor for IndexPath();
  v151 = *(v149 - 8);
  __chkstk_darwin();
  v145 = v17;
  v146 = &v125 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_101183A20, &unk_100EBCF80);
  __chkstk_darwin();
  v150 = &v125 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v143 = &v125 - v19;
  __chkstk_darwin();
  v144 = &v125 - v20;
  v140 = type metadata accessor for ContainerDetail.Source(0);
  __chkstk_darwin();
  v141 = &v125 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v142 = &v125 - v22;
  v23 = sub_10010FC20(&qword_1011828F8, &qword_100EBE238);
  v137 = *(v23 - 8);
  __chkstk_darwin();
  v25 = &v125 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v136 = &v125 - v26;
  v160 = _s9PlaylistsVMa(0);
  __chkstk_darwin();
  v28 = &v125 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v158 = type metadata accessor for Playlist();
  v162 = *(v158 - 8);
  __chkstk_darwin();
  v138 = &v125 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v139 = &v125 - v30;
  __chkstk_darwin();
  v159 = &v125 - v31;
  sub_10010FC20(&qword_1011831B0, &qword_100ED2570);
  __chkstk_darwin();
  v33 = &v125 - v32;
  v34 = type metadata accessor for Playlist.Folder.Item();
  v35 = *(v34 - 8);
  __chkstk_darwin();
  v37 = &v125 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v39 = &v125 - v38;
  v163 = v2;
  v40 = *&v2[OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController_responseController];
  sub_10037AA20(v164, v33);
  if ((*(v35 + 6))(v33, 1, v34) == 1)
  {
    sub_1000095E8(v33, &qword_1011831B0, &qword_100ED2570);
    return;
  }

  (*(v35 + 4))(v39, v33, v34);
  v41 = *(v35 + 2);
  v126 = v39;
  v41(v37, v39, v34);
  v42 = (*(v35 + 11))(v37, v34);
  v43 = v34;
  if (v42 == enum case for Playlist.Folder.Item.folder(_:))
  {
    (*(v35 + 12))(v37, v34);
    v45 = v154;
    v44 = v155;
    v46 = v156;
    (*(v155 + 32))(v154, v37, v156);
    v47 = *(v40 + 48) + *(**(v40 + 48) + 96);
    swift_beginAccess();
    sub_1003C16C8(v47 + *(v160 + 32), v14, _s9PlaylistsV5ScopeVMa);
    v48 = *(v161 + 20);
    sub_1000095E8(&v14[v48], &unk_10118F670, &unk_100EC89B0);
    (*(v44 + 16))(&v14[v48], v45, v46);
    (*(v44 + 56))(&v14[v48], 0, 1, v46);
    v49 = v153;
    sub_1003C16C8(v14, v153, _s9PlaylistsV5ScopeVMa);
    v50 = v163;
    v51 = [v163 traitCollection];
    v52 = [v51 horizontalSizeClass];

    v53 = objc_allocWithZone(ObjectType);
    v54 = sub_10037E11C(v49, 0, v52 != 2);
    (*(v44 + 8))(v45, v46);
    sub_1003C1730(v14, _s9PlaylistsV5ScopeVMa);
  }

  else
  {
    ObjectType = v35;
    if (v42 != enum case for Playlist.Folder.Item.playlist(_:))
    {
      v96 = ObjectType[1];
      v96(v126, v34);
      v96(v37, v34);
      return;
    }

    ObjectType[12](v37, v34);
    v55 = v162;
    v56 = v158;
    v57 = v159;
    (*(v162 + 32))(v159, v37, v158);
    v58 = *(v40 + 48);
    v59 = *(*v58 + 96);
    swift_beginAccess();
    sub_1003C16C8(v58 + v59, v28, _s9PlaylistsVMa);
    type metadata accessor for TitledSection();
    sub_10003D8C4(&unk_101182930, &type metadata accessor for Playlist.Folder.Item, &protocol conformance descriptor for Playlist.Folder.Item);
    v156 = v43;
    MusicLibrarySectionedRequest.init()();
    MusicLibrarySectionedRequest.deferIdentifierResolution.setter();

    MusicLibrarySectionedRequest.library.setter();
    MusicLibrarySectionedRequest.includeOnlyDownloadedContent.setter();
    sub_10018E714(v25);
    sub_10018ECCC();
    sub_10018EFFC();
    MusicLibrarySectionedRequest.filterItems(text:)(*&v28[*(v160 + 36)]);
    MusicLibrarySectionedRequest.limit.setter();
    v60 = v137;
    v61 = v136;
    (*(v137 + 32))(v136, v25, v23);
    sub_1003C1730(v28, _s9PlaylistsVMa);
    LOBYTE(v58) = MusicLibrarySectionedRequest.includeOnlyDownloadedContent.getter();
    (*(v60 + 8))(v61, v23);
    v62 = *(v55 + 16);
    v63 = v139;
    v62(v139, v57, v56);
    v64 = sub_10010FC20(&qword_10118A430, &qword_100EC8F70);
    v65 = *(v64 + 64);
    v66 = v142;
    v142[*(v64 + 48)] = v58 & 1;
    v67 = _s6AlbumsV5ScopeOMa(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v67 - 8) + 56))(v66, 0, 1, v67);
    *(v66 + v65) = 0;
    swift_storeEnumTagMultiPayload();
    v68 = type metadata accessor for URL();
    v69 = *(v68 - 8);
    v70 = v144;
    v154 = *(v69 + 56);
    v155 = v68;
    v153 = (v69 + 56);
    (v154)(v144, 1, 1);
    v71 = v138;
    v62(v138, v63, v56);
    v72 = v141;
    sub_1003C16C8(v66, v141, type metadata accessor for ContainerDetail.Source);
    v73 = v143;
    sub_1000089F8(v70, v143, &qword_101183A20, &unk_100EBCF80);
    v74 = sub_100866288(v71, v72, 0, 0, v73, 0);
    v75 = objc_allocWithZone(type metadata accessor for ContainerDetail.ViewController(0));
    v76 = sub_100137F48(v74, v75);
    sub_1000095E8(v70, &qword_101183A20, &unk_100EBCF80);
    sub_1003C1730(v66, type metadata accessor for ContainerDetail.Source);
    v77 = *(v55 + 8);
    v162 = v55 + 8;
    v160 = v77;
    v77(v63, v56);
    v50 = v163;
    *&v76[OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_artworkCachingReference] = *(*&v163[OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController_prefetchingController] + OBJC_IVAR____TtC5Music28ArtworkPrefetchingController_cachingReference);

    sub_100009F78(0, &qword_101184710, UIViewControllerTransition_ptr);
    v78 = [objc_allocWithZone(UIZoomTransitionOptions) init];
    UIZoomTransitionOptions.alignmentRectProvider.setter();
    v79 = v151;
    v80 = v146;
    v81 = v149;
    (*(v151 + 16))(v146, v164, v149);
    v82 = (*(v79 + 80) + 24) & ~*(v79 + 80);
    v83 = swift_allocObject();
    v84 = v148;
    *(v83 + 16) = v148;
    (*(v79 + 32))(v83 + v82, v80, v81);
    v85 = v84;
    v86 = static UIViewControllerTransition.zoom(options:sourceViewProvider:)();

    v164 = v76;
    [v76 setPreferredTransition:v86];

    v87 = OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController_scope;
    swift_beginAccess();
    v88 = v147;
    sub_1003C16C8(v50 + v87, v147, _s9PlaylistsV5ScopeVMa);
    if (qword_10117F298 != -1)
    {
      swift_once();
    }

    v89 = sub_1000060E4(v161, qword_101218730);
    v90 = sub_1001982EC(v88, v89);
    sub_1003C1730(v88, _s9PlaylistsV5ScopeVMa);
    if (v90)
    {
      v91 = Playlist.id.getter();
      v93 = v92;
      (v154)(v150, 1, 1, v155);
      v94 = v127;
      sub_1003C16C8(v50 + v87, v127, _s9PlaylistsV5ScopeVMa);
      if (sub_1001982EC(v94, v89))
      {
        v95 = MetricsEvent.Page.libraryMadeForYou.unsafeMutableAddressor();
      }

      else
      {
        v95 = MetricsEvent.Page.libraryPlaylistsList.unsafeMutableAddressor();
      }

      v97 = v135;
      v98 = v134;
      v99 = v128;
      sub_1003C16C8(v95, v128, type metadata accessor for MetricsEvent.Page);
      sub_1003C1730(v94, _s9PlaylistsV5ScopeVMa);
      v100 = v99;
      v101 = v129;
      sub_1003C1790(v100, v129, type metadata accessor for MetricsEvent.Page);
      MetricsEvent.Page.metricsPageProperties.getter(v98);
      sub_1003C1730(v101, type metadata accessor for MetricsEvent.Page);
      sub_100386664();
      v102 = v130;
      (*(v151 + 56))(v130, 1, 1, v81);
      v103 = v131;
      Date.init()();
      v105 = sub_10039EFB0(1u, v103, v102, v104);

      (*(v132 + 8))(v103, v133);
      sub_1000095E8(v102, &unk_10118BCE0, &qword_100EC6450);
      if (v105)
      {
        v106 = *(v105 + 16);
        if (v106)
        {
          v165 = _swiftEmptyArrayStorage;
          sub_10066CB8C(0, v106, 0);
          v107 = 32;
          v108 = v165;
          do
          {
            v109 = *(v105 + v107);
            v165 = v108;
            v111 = v108[2];
            v110 = v108[3];

            if (v111 >= v110 >> 1)
            {
              sub_10066CB8C((v110 > 1), v111 + 1, 1);
              v108 = v165;
            }

            v108[2] = v111 + 1;
            v108[v111 + 4] = v109;
            v107 += 8;
            --v106;
          }

          while (v106);

          v50 = v163;
          v97 = v135;
          v98 = v134;
        }

        else
        {

          v108 = _swiftEmptyArrayStorage;
        }
      }

      else
      {
        v108 = 0;
      }

      MetricsEvent.Click.init(targetIdentifier:targetType:actionType:actionURL:locations:actionContext:actionDetails:metricsPageProperties:snapshotImpressions:)(v91, v93, 17, 28, v150, 0, 0, 12, v97, 0, 0, 0xFF00u, v98, v108);
      v112 = *MetricsReportingController.shared.unsafeMutableAddressor();
      v113 = sub_10053771C();
      v115 = v114;
      if (qword_10117F600 != -1)
      {
        swift_once();
      }

      v116 = qword_101218AD0;
      v117 = GroupActivitiesManager.hasJoined.getter();
      v118 = GroupActivitiesManager.participantsCount.getter();
      v119 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_maxParticipantsCount;
      swift_beginAccess();
      (*((swift_isaMask & *v112) + 0xB8))(v97, v113, v115, v117 & 1, v118, *(v116 + v119));

      sub_1003C1730(v97, type metadata accessor for MetricsEvent.Click);
    }

    (v160)(v159, v158);
    v43 = v156;
    v35 = ObjectType;
    v54 = v164;
  }

  v120 = [v50 navigationController];
  v121 = v126;
  if (v120)
  {
    v122 = v120;
    v123 = v152;
    UIViewController.traitOverrides.getter();
    v124 = type metadata accessor for UITraitOverrides();
    (*(*(v124 - 8) + 56))(v123, 0, 1, v124);
    UINavigationController.push(_:traitOverrides:animated:)(v54, v123, 1);

    sub_1000095E8(v123, &unk_10119F3A0, &qword_100EC7CD0);
    (*(v35 + 1))(v121, v43);
  }

  else
  {
    (*(v35 + 1))(v126, v43);
  }
}

uint64_t sub_10038F7A0(uint64_t a1)
{
  type metadata accessor for Playlist.Folder.Item();
  v2 = __chkstk_darwin();
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v4, a1, v2);
  return sub_100735138(v4, 1);
}

unint64_t sub_10038F860(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v108 = a4;
  v5 = type metadata accessor for UUID();
  v117 = *(v5 - 8);
  __chkstk_darwin();
  v116 = &v99 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = *(sub_10010FC20(&unk_1011838D0, &unk_100EC0320) - 8);
  __chkstk_darwin();
  v114 = v7;
  v115 = &v99 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v120 = &v99 - v8;
  sub_10010FC20(&unk_10118BCE0, &qword_100EC6450);
  __chkstk_darwin();
  v10 = &v99 - v9;
  v110 = *(sub_10010FC20(&unk_1011845D0, &unk_100EBF380) - 8);
  __chkstk_darwin();
  v111 = v11;
  v112 = &v99 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v122 = &v99 - v12;
  _s9PlaylistsVMa(0);
  __chkstk_darwin();
  v14 = &v99 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_10118CDB0, &unk_100EC0360);
  __chkstk_darwin();
  v16 = &v99 - v15;
  sub_10010FC20(&unk_1011838E0, &unk_100EC1670);
  __chkstk_darwin();
  v107 = &v99 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v109 = &v99 - v18;
  __chkstk_darwin();
  v20 = &v99 - v19;
  __chkstk_darwin();
  v22 = &v99 - v21;
  sub_10010FC20(&unk_10118AB20, &unk_100EBF390);
  __chkstk_darwin();
  v118 = &v99 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v121 = &v99 - v24;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v26 = Strong;
  v106 = v5;
  sub_10010FC20(&unk_101183900, &unk_100EC1680);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_100EBC6B0;
  v104 = v27;
  sub_10048D214((v27 + 32));
  v28 = [v26 traitCollection];
  sub_100137E8C();
  UITraitCollection.subscript.getter();

  v105 = v137[0];
  v29 = *(*&v26[OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController_responseController] + 48);
  v30 = *(*v29 + 96);
  swift_beginAccess();
  sub_1003C16C8(v29 + v30, v14, _s9PlaylistsVMa);
  sub_1001917EC(a3, v16);
  sub_1003C1730(v14, _s9PlaylistsVMa);
  PlaybackIntentDescriptor.IntentType.init(_:)(v16, v22);
  memset(v137, 0, 40);
  if (qword_10117F608 != -1)
  {
    swift_once();
  }

  v31 = qword_101218AD8;
  sub_1000089F8(v22, v20, &unk_1011838E0, &unk_100EC1670);
  v32 = v31;
  v33 = UIViewController.playActivityInformation.getter();
  v103 = v34;
  v36 = v35;
  v38 = v37;
  sub_1000089F8(v137, &v129, &unk_101183910, &unk_100EBDD00);
  v119 = v26;
  if (*(&v130 + 1))
  {
    sub_100059A8C(&v129, &v133);
    v39 = v32;
  }

  else
  {
    v102 = v33;
    *&v138 = v26;
    sub_100009F78(0, &qword_101183D40, UIViewController_ptr);
    v41 = v26;
    sub_10010FC20(&unk_101183920, &unk_100EC0330);
    if (swift_dynamicCast())
    {
      sub_100059A8C(&v141, &v133);
      v39 = v32;
    }

    else
    {
      v143 = 0;
      v141 = 0u;
      v142 = 0u;
      *&v133 = v41;
      v42 = v41;
      v43 = String.init<A>(reflecting:)();
      v134 = &type metadata for Player.CommandIssuerIdentity;
      v135 = &protocol witness table for Player.CommandIssuerIdentity;
      *&v133 = v43;
      *(&v133 + 1) = v44;
      v39 = v32;
      if (*(&v142 + 1))
      {
        sub_1000095E8(&v141, &unk_101183910, &unk_100EBDD00);
      }
    }

    v33 = v102;
    if (*(&v130 + 1))
    {
      sub_1000095E8(&v129, &unk_101183910, &unk_100EBDD00);
    }
  }

  v45 = v121;
  Actions.PlaybackContext.init(controller:intent:playActivityInformation:issuer:)(v39, v20, v33, v103, v36, v38, &v133, v121);
  sub_1000095E8(v137, &unk_101183910, &unk_100EBDD00);
  sub_1000095E8(v22, &unk_1011838E0, &unk_100EC1670);
  v46 = type metadata accessor for Actions.PlaybackContext(0);
  v47 = *(v46 - 8);
  (*(v47 + 56))(v45, 0, 1, v46);
  v48 = type metadata accessor for PlaylistContext(0);
  (*(*(v48 - 8) + 56))(v122, 1, 1, v48);
  v49 = type metadata accessor for IndexPath();
  v50 = *(v49 - 8);
  (*(v50 + 16))(v10, v108, v49);
  (*(v50 + 56))(v10, 0, 1, v49);
  v51 = v119;
  sub_100376BEC(v10, sub_10037FC08, &OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController____lazy_storage___collectionView, v137);
  sub_1000095E8(v10, &unk_10118BCE0, &qword_100EC6450);
  v52 = v120;
  sub_10038A0F4(v120);
  v53 = type metadata accessor for Actions.MetricsReportingContext(0);
  (*(*(v53 - 8) + 56))(v52, 0, 1, v53);
  sub_100008FE4(v104 + 32, v136);

  sub_1000089F8(v137, &v129, &unk_1011845E0, &unk_100EBF3A0);
  if (v132 == 1)
  {
    v143 = 0;
    v141 = 0u;
    v142 = 0u;
    v144 = xmmword_100EBCEF0;
    PresentationSource.init(viewController:position:)(v51, &v141, &v133);
    v54 = v118;
    if (v132 != 1)
    {
      sub_1000095E8(&v129, &unk_1011845E0, &unk_100EBF3A0);
    }
  }

  else
  {
    sub_10012B828(&v129, &v133);
    v54 = v118;
  }

  swift_getObjectType();
  v55 = swift_conformsToProtocol2();
  if (v55)
  {
    v103 = v55;
    v56 = v51;
    v104 = v51;
  }

  else
  {
    v103 = 0;
    v104 = 0;
  }

  v108 = swift_allocBox();
  v58 = v57;
  sub_1000089F8(v121, v54, &unk_10118AB20, &unk_100EBF390);
  v59 = *(v47 + 48);
  if (v59(v54, 1, v46) == 1)
  {
    v60 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
    v61 = v109;
    (*(*(v60 - 8) + 56))(v109, 1, 1, v60);
    v131 = 0;
    v129 = 0u;
    v130 = 0u;
    v62 = v61;
    v63 = v107;
    sub_1000089F8(v62, v107, &unk_1011838E0, &unk_100EC1670);
    v102 = v39;
    v64 = UIViewController.playActivityInformation.getter();
    v100 = v66;
    v101 = v65;
    v68 = v67;
    sub_1000089F8(&v129, &v127, &unk_101183910, &unk_100EBDD00);
    if (v128)
    {
      sub_100059A8C(&v127, &v138);
    }

    else
    {
      v126 = v51;
      sub_100009F78(0, &qword_101183D40, UIViewController_ptr);
      v69 = v51;
      sub_10010FC20(&unk_101183920, &unk_100EC0330);
      if (swift_dynamicCast())
      {
        sub_100059A8C(&v123, &v138);
        v54 = v118;
      }

      else
      {
        v125 = 0;
        v123 = 0u;
        v124 = 0u;
        *&v138 = v69;
        v70 = v69;
        v71 = String.init<A>(reflecting:)();
        *(&v139 + 1) = &type metadata for Player.CommandIssuerIdentity;
        v140 = &protocol witness table for Player.CommandIssuerIdentity;
        *&v138 = v71;
        *(&v138 + 1) = v72;
        v54 = v118;
        if (*(&v124 + 1))
        {
          sub_1000095E8(&v123, &unk_101183910, &unk_100EBDD00);
        }
      }

      v51 = v119;
      v63 = v107;
      if (v128)
      {
        sub_1000095E8(&v127, &unk_101183910, &unk_100EBDD00);
      }
    }

    Actions.PlaybackContext.init(controller:intent:playActivityInformation:issuer:)(v102, v63, v64, v101, v100, v68, &v138, v58);
    sub_1000095E8(&v129, &unk_101183910, &unk_100EBDD00);
    sub_1000095E8(v109, &unk_1011838E0, &unk_100EC1670);
    if (v59(v54, 1, v46) != 1)
    {
      sub_1000095E8(v54, &unk_10118AB20, &unk_100EBF390);
    }
  }

  else
  {
    sub_1003C1790(v54, v58, type metadata accessor for Actions.PlaybackContext);
  }

  v73 = *(v46 + 28);
  sub_1000089F8(&v58[v73], &v138, &unk_101183910, &unk_100EBDD00);
  if (*(&v139 + 1))
  {
    sub_100059A8C(&v138, &v129);
  }

  else
  {
    *&v129 = v51;
    v74 = v51;
    v75 = String.init<A>(reflecting:)();
    *(&v130 + 1) = &type metadata for Player.CommandIssuerIdentity;
    v131 = &protocol witness table for Player.CommandIssuerIdentity;
    *&v129 = v75;
    *(&v129 + 1) = v76;
    if (*(&v139 + 1))
    {
      sub_1000095E8(&v138, &unk_101183910, &unk_100EBDD00);
    }
  }

  sub_10010FC20(&unk_101183930, &unk_100EC1690);
  v77 = swift_allocObject();
  *(v77 + 16) = xmmword_100EBDC20;
  *(v77 + 56) = &type metadata for Player.CommandIssuerIdentity;
  *(v77 + 64) = &protocol witness table for Player.CommandIssuerIdentity;
  *(v77 + 32) = 0x4D747865746E6F43;
  *(v77 + 40) = 0xEB00000000756E65;
  sub_100008FE4(&v129, v77 + 72);
  v78 = static Player.CommandIssuer<>.combining(_:)(v77);
  v80 = v79;

  sub_10000959C(&v129);
  *(&v130 + 1) = &type metadata for Player.CommandIssuerIdentity;
  v131 = &protocol witness table for Player.CommandIssuerIdentity;
  *&v129 = v78;
  *(&v129 + 1) = v80;
  sub_10006B010(&v129, &v58[v73], &unk_101183910, &unk_100EBDD00);
  sub_100008FE4(v136, &v129);
  sub_10010FC20(&unk_10118AB50, &unk_100EBE7D0);
  v118 = String.init<A>(describing:)();
  v109 = v81;
  v107 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100008FE4(v136, &v127);
  sub_10012B7A8(&v133, &v129);
  v82 = v115;
  sub_1000089F8(v120, v115, &unk_1011838D0, &unk_100EC0320);
  v83 = v112;
  sub_1000089F8(v122, v112, &unk_1011845D0, &unk_100EBF380);
  v84 = (*(v113 + 80) + 160) & ~*(v113 + 80);
  v85 = (v114 + v84 + 7) & 0xFFFFFFFFFFFFFFF8;
  v86 = (v85 + 15) & 0xFFFFFFFFFFFFFFF8;
  v87 = (*(v110 + 80) + v86 + 8) & ~*(v110 + 80);
  v114 = (v87 + v111 + 7) & 0xFFFFFFFFFFFFFFF8;
  v88 = (v87 + v111 + 31) & 0xFFFFFFFFFFFFFFF8;
  v89 = swift_allocObject();
  sub_100059A8C(&v127, v89 + 16);
  *(v89 + 56) = v105;
  sub_10012B828(&v129, v89 + 64);
  sub_10003D17C(v82, v89 + v84, &unk_1011838D0, &unk_100EC0320);
  v90 = v108;
  *(v89 + v85) = v107;
  *(v89 + v86) = v90;
  sub_10003D17C(v83, v89 + v87, &unk_1011845D0, &unk_100EBF380);
  v91 = v89 + v114;
  v92 = v103;
  *v91 = v104;
  *(v91 + 8) = v92;
  *(v91 + 16) = 2;
  v93 = (v89 + v88);
  *v93 = variable initialization expression of Library.Context.playlistVariants;
  v93[1] = 0;
  swift_unknownObjectRetain();

  v94 = v116;
  UUID.init()();
  v95 = UUID.uuidString.getter();
  v97 = v96;
  (*(v117 + 8))(v94, v106);
  v145._countAndFlagsBits = v118;
  v145._object = v109;
  ActionMenuBuilder.init(id:debugDescription:actionBuilder:)(&v138, v145, v95, v97, sub_1001CFB84, v89);
  swift_unknownObjectRelease();
  sub_10012BA6C(&v133);
  sub_10000959C(v136);

  v40 = ActionMenuBuilder.uiMenu(excluding:includeUnsupported:)(&off_10109A950, 0);
  v133 = v138;
  sub_100015BB0(&v133);
  v129 = v139;
  sub_100015BB0(&v129);

  sub_1000095E8(v120, &unk_1011838D0, &unk_100EC0320);
  sub_1000095E8(v137, &unk_1011845E0, &unk_100EBF3A0);
  sub_1000095E8(v122, &unk_1011845D0, &unk_100EBF380);
  sub_1000095E8(v121, &unk_10118AB20, &unk_100EBF390);
  return v40;
}