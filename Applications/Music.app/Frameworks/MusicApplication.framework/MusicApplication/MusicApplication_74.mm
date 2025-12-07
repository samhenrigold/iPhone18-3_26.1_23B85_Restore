void *sub_68ACCC(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v5 = *(a3 + 16);
  *(a1 + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v6 = v5 - 1;
  v32 = a3 + 56;
LABEL_2:
  v28 = v6;
LABEL_3:
  while (1)
  {
    v7 = a5[3];
    v8 = a5[4];
    if (!v8)
    {
      break;
    }

    v9 = a5[3];
LABEL_9:
    v12 = *(*(*a5 + 48) + (__clz(__rbit64(v8)) | (v9 << 6)));
    a5[3] = v9;
    a5[4] = (v8 - 1) & v8;
    sub_ABB5C0();
    Library.Menu.Identifier.rawValue.getter(v12);
    sub_AB93F0();

    v13 = sub_ABB610();
    v14 = -1 << *(a3 + 32);
    v15 = v13 & ~v14;
    v16 = v15 >> 6;
    v17 = 1 << v15;
    if (((1 << v15) & *(v32 + 8 * (v15 >> 6))) != 0)
    {
      v31 = ~v14;
      while (1)
      {
        v18 = 0xD000000000000029;
        v19 = "LibraryView.Playlists";
        switch(*(*(a3 + 48) + v15))
        {
          case 1:
            v18 = 0xD000000000000025;
            v19 = "LibraryView.Artists";
            break;
          case 2:
            v18 = 0xD000000000000023;
            v19 = "LibraryView.Albums";
            break;
          case 3:
            v18 = 0xD000000000000022;
            v19 = "LibraryView.Songs";
            break;
          case 4:
            v18 = 0xD000000000000021;
            v19 = "LibraryView.MadeForYou";
            break;
          case 5:
            v18 = 0xD000000000000026;
            v19 = "LibraryView.MusicVideos";
            break;
          case 6:
            v18 = 0xD000000000000027;
            v19 = "LibraryView.Genres";
            break;
          case 7:
            v18 = 0xD000000000000022;
            v19 = "LibraryView.Compilations";
            break;
          case 8:
            v18 = 0xD000000000000028;
            v19 = "LibraryView.Composers";
            break;
          case 9:
            v18 = 0xD000000000000025;
            v19 = "LibraryView.Shows";
            break;
          case 0xA:
            v18 = 0xD000000000000021;
            v19 = "LibraryView.Downloaded";
            break;
          case 0xB:
            v18 = 0xD000000000000026;
            v19 = "LibraryView.Downloading";
            break;
          case 0xC:
            v18 = 0xD000000000000027;
            v19 = "ByPlaylistOrderAscending";
            break;
          default:
            break;
        }

        v20 = v19 | 0x8000000000000000;
        v21 = 0xD000000000000029;
        v22 = "LibraryView.Playlists";
        switch(v12)
        {
          case 1:
            v21 = 0xD000000000000025;
            v22 = "LibraryView.Artists";
            break;
          case 2:
            v21 = 0xD000000000000023;
            v22 = "LibraryView.Albums";
            break;
          case 3:
            v21 = 0xD000000000000022;
            v22 = "LibraryView.Songs";
            break;
          case 4:
            v21 = 0xD000000000000021;
            v22 = "LibraryView.MadeForYou";
            break;
          case 5:
            v21 = 0xD000000000000026;
            v22 = "LibraryView.MusicVideos";
            break;
          case 6:
            v21 = 0xD000000000000027;
            v22 = "LibraryView.Genres";
            break;
          case 7:
            v21 = 0xD000000000000022;
            v22 = "LibraryView.Compilations";
            break;
          case 8:
            v21 = 0xD000000000000028;
            v22 = "LibraryView.Composers";
            break;
          case 9:
            v21 = 0xD000000000000025;
            v22 = "LibraryView.Shows";
            break;
          case 10:
            v21 = 0xD000000000000021;
            v22 = "LibraryView.Downloaded";
            break;
          case 11:
            v21 = 0xD000000000000026;
            v22 = "LibraryView.Downloading";
            break;
          case 12:
            v21 = 0xD000000000000027;
            v22 = "ByPlaylistOrderAscending";
            break;
          default:
            break;
        }

        if (v18 == v21 && v20 == (v22 | 0x8000000000000000))
        {
          break;
        }

        v23 = sub_ABB3C0();

        if (v23)
        {
          goto LABEL_43;
        }

        v15 = (v15 + 1) & v31;
        v16 = v15 >> 6;
        v17 = 1 << v15;
        if ((*(v32 + 8 * (v15 >> 6)) & (1 << v15)) == 0)
        {
          goto LABEL_3;
        }
      }

LABEL_43:
      v24 = a1[v16];
      a1[v16] = v24 & ~v17;
      if ((v24 & v17) != 0)
      {
        v6 = v28 - 1;
        if (__OFSUB__(v28, 1))
        {
          goto LABEL_52;
        }

        if (v28 == 1)
        {
          return &_swiftEmptySetSingleton;
        }

        goto LABEL_2;
      }
    }
  }

  v10 = (a5[2] + 64) >> 6;
  v11 = a5[3];
  while (1)
  {
    v9 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
LABEL_52:
      __break(1u);
      JUMPOUT(0x68B15CLL);
    }

    if (v9 >= v10)
    {
      break;
    }

    v8 = *(a5[1] + 8 * v9);
    ++v11;
    if (v8)
    {
      goto LABEL_9;
    }
  }

  if (v10 <= v7 + 1)
  {
    v26 = v7 + 1;
  }

  else
  {
    v26 = (a5[2] + 64) >> 6;
  }

  a5[3] = v26 - 1;
  a5[4] = 0;

  return sub_689D3C(a1, a2, v28, a3);
}

BOOL _s9MusicCore7LibraryO4MenuV7RequestV23__derived_struct_equalsySbAG_AGtFZ_0(uint64_t *a1, uint64_t *a2)
{
  if (a1[1])
  {
    if ((a2[1] & 1) == 0)
    {
      return 0;
    }

    sub_AB8510();
    if ((sub_AB8340() & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (a2[1])
    {
      return 0;
    }

    sub_13C80(0, &qword_E112E0, NSObject_ptr);
    if ((sub_ABA790() & 1) == 0)
    {
      return 0;
    }
  }

  if (a1[2] != a2[2])
  {
    return 0;
  }

  v4 = a1[3];
  v5 = a2[3];
  if (v4)
  {
    if (!v5)
    {
      return 0;
    }

    sub_13C80(0, &qword_E11F18, MPMediaPickerConfiguration_ptr);
    v6 = v5;
    v7 = v4;
    v8 = sub_ABA790();

    if ((v8 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  if (sub_67BBE8(a1[4], a2[4]) & 1) == 0 || ((*(a1 + 40) ^ *(a2 + 40)) & 1) != 0 || ((*(a1 + 41) ^ *(a2 + 41)) & 1) != 0 || ((*(a1 + 42) ^ *(a2 + 42)))
  {
    return 0;
  }

  v10 = a1[6];
  v9 = a1[7];
  v12 = a1[8];
  v11 = a1[9];
  v13 = a2[6];
  v14 = a2[7];
  v16 = a2[8];
  v15 = a2[9];
  if (v10)
  {
    if (v13)
    {
      sub_683EA8(v13, v14, v16, v15);
      sub_683EA8(v10, v9, v12, v11);
      if (sub_5D47CC(v10, v13) & 1) != 0 && (sub_67BBE8(v9, v14) & 1) != 0 && (sub_5D47CC(v12, v16))
      {
        v17 = sub_67BBE8(v11, v15);

        sub_683F08(v10, v9, v12, v11);
        return (v17 & 1) != 0;
      }

      v18 = v10;
      v19 = v9;
      v20 = v12;
      v21 = v11;
LABEL_27:
      sub_683F08(v18, v19, v20, v21);
      return 0;
    }

LABEL_25:
    sub_683EA8(v13, v14, v16, v15);
    sub_683EA8(v10, v9, v12, v11);
    sub_683F08(v10, v9, v12, v11);
    v18 = v13;
    v19 = v14;
    v20 = v16;
    v21 = v15;
    goto LABEL_27;
  }

  if (v13)
  {
    goto LABEL_25;
  }

  return 1;
}

void sub_68B474(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t *a4)
{
  v7 = a3 >> 1;
  swift_beginAccess();
  if (a2 <= v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = a2;
  }

  v9 = v8 - a2;
  v10 = (a1 + a2);
  for (i = v7 - a2; i; --i)
  {
    if (!v9)
    {
      __break(1u);
      return;
    }

    v12 = *v10++;
    v13 = *a4;

    v14 = sub_67B888(v12, v13);

    --v9;
    if (v14)
    {
      return;
    }
  }
}

void sub_68B53C(char *a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a1;
  v6 = sub_61A160(*a1, a2);
  if (v7)
  {
    goto LABEL_43;
  }

  v8 = v6;
  if ((v6 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_34;
  }

  v9 = *(a2 + 16);
  if (v9 < v6)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  sub_681820(a2, a2 + 32, 0, (2 * v6) | 1, a3);
  LOBYTE(v11) = v10;
  if (v8 >= (v9 - 1))
  {
LABEL_11:
    if (v11 == 13)
    {
      goto LABEL_12;
    }

LABEL_14:
    swift_beginAccess();
    v17 = *a3;

    v18 = sub_61A160(v11, v17);
    v20 = v19;

    if (v20)
    {
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
      goto LABEL_46;
    }

    v21 = __OFADD__(v18, 1);
    v11 = v18 + 1;
    if (!v21)
    {
      swift_beginAccess();
      if (*(*a3 + 16) >= v11)
      {
        if ((v11 & 0x8000000000000000) == 0)
        {
          goto LABEL_18;
        }

        goto LABEL_37;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  sub_68B474(a2 + 32, v8, (2 * v9) | 1, a3);
  if (v11 == 13)
  {
    if (v12 == 13)
    {
LABEL_12:
      swift_beginAccess();
      sub_5284D4(0, 0, v5);
LABEL_19:
      swift_endAccess();
      return;
    }

    v13 = v12;
    swift_beginAccess();
    v14 = *a3;

    v11 = sub_61A160(v13, v14);
    v16 = v15;

    if (v16)
    {
      goto LABEL_45;
    }

    swift_beginAccess();
    if (*(*a3 + 16) < v11)
    {
      goto LABEL_38;
    }

    if ((v11 & 0x8000000000000000) == 0)
    {
LABEL_18:
      sub_5284D4(v11, v11, v5);
      goto LABEL_19;
    }

    __break(1u);
    goto LABEL_11;
  }

  if (v12 == 13)
  {
    goto LABEL_14;
  }

  v22 = v12;
  swift_beginAccess();
  v23 = *a3;

  v24 = sub_61A160(v11, v23);
  v26 = v25;

  if (v26)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  swift_beginAccess();
  v27 = *a3;

  v28 = sub_61A160(v22, v27);
  v30 = v29;

  if ((v30 & 1) == 0)
  {
    if (v28 <= v24)
    {
      v31 = v24;
    }

    else
    {
      v31 = v28;
    }

    if (v28 >= v24)
    {
      v32 = v24;
    }

    else
    {
      v32 = v28;
    }

    v21 = __OFSUB__(v31, v32);
    v33 = v31 - v32;
    if (!v21)
    {
      v11 = v32 + v33 / 2;
      if (!__OFADD__(v32, v33 / 2))
      {
        swift_beginAccess();
        if (*(*a3 + 16) >= v11)
        {
          if ((v11 & 0x8000000000000000) == 0)
          {
            goto LABEL_18;
          }

          goto LABEL_42;
        }

LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
        goto LABEL_44;
      }

LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

LABEL_47:
  __break(1u);
}

void sub_68B870(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v7 = a1 + 56;
  v8 = 1 << *(a1 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a1 + 56);
  v11 = (v8 + 63) >> 6;

  v12 = 0;
  if (v10)
  {
    while (1)
    {
      v13 = v12;
LABEL_8:
      v14 = *(*(a1 + 48) + (__clz(__rbit64(v10)) | (v13 << 6)));
      sub_68B53C(&v14, a2, a3);
      if (v3)
      {
        break;
      }

      v10 &= v10 - 1;
      v12 = v13;
      if (!v10)
      {
        goto LABEL_5;
      }
    }

LABEL_11:
  }

  else
  {
LABEL_5:
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v13 >= v11)
      {
        goto LABEL_11;
      }

      v10 = *(v7 + 8 * v13);
      ++v12;
      if (v10)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }
}

unint64_t _s9MusicCore7LibraryO4MenuV10IdentifierO8rawValueAGSgSS_tcfC_0(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_D1BFC0;
  v6._object = a2;
  v4 = sub_ABB140(v3, v6);

  if (v4 >= 0xD)
  {
    return 13;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_68B9B0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = result;
  v7 = 0;
  v8 = 0;
  v9 = a3 + 56;
  v10 = 1 << *(a3 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(a3 + 56);
  v13 = (v10 + 63) >> 6;
  while (v12)
  {
    v14 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_11:
    v17 = v14 | (v8 << 6);
    result = sub_5E9960(*(*(a3 + 48) + v17), a4);
    if (result)
    {
      *(v6 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      if (__OFADD__(v7++, 1))
      {
        __break(1u);
LABEL_15:

        return sub_689D3C(v6, a2, v7, a3);
      }
    }
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
      goto LABEL_15;
    }

    v16 = *(v9 + 8 * v8);
    ++v15;
    if (v16)
    {
      v14 = __clz(__rbit64(v16));
      v12 = (v16 - 1) & v16;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void *sub_68BAE4(uint64_t a1, int64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(a1 + 32);
  v9 = v8 & 0x3F;
  v10 = ((1 << v8) + 63) >> 6;
  v11 = 8 * v10;

  if (v9 > 0xD)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v24 = v10;
    v25 = a2;
    v26 = v4;
    v23[1] = v23;
    __chkstk_darwin();
    v12 = v23 - ((v11 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v12, v11);
    v11 = 0;
    v4 = 0;
    v13 = 1 << *(a1 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(a1 + 56);
    a2 = (v13 + 63) >> 6;
    while (v15)
    {
      v16 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_12:
      v10 = v16 | (v4 << 6);
      if (sub_5E9960(*(*(a1 + 48) + v10), a3))
      {
        *&v12[(v10 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v10;
        if (__OFADD__(v11++, 1))
        {
          __break(1u);
LABEL_16:
          v20 = sub_689D3C(v12, v24, v11, a1);

          return v20;
        }
      }
    }

    v17 = v4;
    while (1)
    {
      v4 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v4 >= a2)
      {
        goto LABEL_16;
      }

      v18 = *(a1 + 56 + 8 * v4);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v15 = (v18 - 1) & v18;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_19:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v22 = swift_slowAlloc();

  v20 = sub_689960(v22, v10, a1, a2, a3);

  return v20;
}

void sub_68BD70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(a1 + 16);
  v7 = a1 + 40;
  v8 = _swiftEmptyArrayStorage;
LABEL_2:
  v9 = (v7 + 16 * v5);
  while (v6 != v5)
  {
    if (v5 >= v6)
    {
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:

LABEL_37:
      swift_beginAccess();
      v29 = sub_5208E8(v4);
      sub_5284D4(0, 0, v29);
      sub_6836B0(&v36, 0);
      swift_endAccess();
      return;
    }

    v4 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      goto LABEL_33;
    }

    v10 = *(v9 - 1);
    v11 = *v9;

    v12._rawValue = &off_D1BFC0;
    v37._countAndFlagsBits = v10;
    v37._object = v11;
    v13 = sub_ABB140(v12, v37);

    ++v5;
    v9 += 2;
    if (v13 < 0xD)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = sub_506E8C(0, *(v8 + 2) + 1, 1, v8);
      }

      v15 = *(v8 + 2);
      v14 = *(v8 + 3);
      if (v15 >= v14 >> 1)
      {
        v8 = sub_506E8C((v14 > 1), v15 + 1, 1, v8);
      }

      *(v8 + 2) = v15 + 1;
      v8[v15 + 32] = v13;
      v5 = v4;
      goto LABEL_2;
    }
  }

  v4 = 0;
  v16 = *(a2 + 16);
  v17 = a2 + 40;
  v18 = _swiftEmptyArrayStorage;
  v34 = a2 + 40;
LABEL_13:
  v19 = (v17 + 16 * v4);
  while (v16 != v4)
  {
    if (v4 >= v16)
    {
      goto LABEL_34;
    }

    v20 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      goto LABEL_35;
    }

    v21 = *(v19 - 1);
    v22 = *v19;

    v23._rawValue = &off_D1BFC0;
    v38._countAndFlagsBits = v21;
    v38._object = v22;
    v24 = sub_ABB140(v23, v38);

    ++v4;
    v19 += 2;
    if (v24 < 0xD)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v18 = sub_506E8C(0, *(v18 + 2) + 1, 1, v18);
      }

      v26 = *(v18 + 2);
      v25 = *(v18 + 3);
      if (v26 >= v25 >> 1)
      {
        v18 = sub_506E8C((v25 > 1), v26 + 1, 1, v18);
      }

      *(v18 + 2) = v26 + 1;
      v18[v26 + 32] = v24;
      v4 = v20;
      v17 = v34;
      goto LABEL_13;
    }
  }

  sub_615414(v18);

  v35 = v8;

  sub_6801C4(a3, a4);
  if (v32)
  {
  }

  else
  {
    swift_beginAccess();
    v27 = *(v8 + 2);
    if (v27)
    {
      v4 = 0;
      while (2)
      {
        if (v4 < *(v35 + 2))
        {
          switch(v35[v4 + 32])
          {
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 9:
            case 10:
            case 11:
            case 12:
              v28 = sub_ABB3C0();

              if (v28)
              {
                goto LABEL_37;
              }

              if (v27 == ++v4)
              {
                return;
              }

              continue;
            default:
              goto LABEL_36;
          }
        }

        break;
      }

      __break(1u);
      JUMPOUT(0x68C244);
    }
  }
}

void sub_68C278(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11F00, &qword_B1FFF8);
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = v59 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_68C948();
  sub_ABB680();
  if (v1)
  {
LABEL_3:
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E103E0, &unk_B16BD0);
    v67 = 1;
    v8 = sub_68D500(&qword_E11F08, &unk_E103E0, &unk_B16BD0, &protocol conformance descriptor for <A> [A]);
    sub_ABB1E0();
    v59[1] = v8;
    v60 = v7;
    v62 = v4;
    v63 = v6;
    v64 = v3;
    v9 = 0;
    v10 = v66;
    v11 = *(v66 + 16);
    v12 = v66 + 40;
    v65 = _swiftEmptyArrayStorage;
    v61 = v66 + 40;
LABEL_4:
    v13 = (v12 + 16 * v9);
    while (v11 != v9)
    {
      if (v9 >= *(v10 + 16))
      {
        __break(1u);
        goto LABEL_43;
      }

      ++v9;
      v14 = v13 + 2;
      v15 = *(v13 - 1);
      v16 = *v13;

      v17._rawValue = &off_D1BFC0;
      v68._countAndFlagsBits = v15;
      v68._object = v16;
      v18 = sub_ABB140(v17, v68);

      v13 = v14;
      if (v18 < 0xD)
      {
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v19 = v65;
        }

        else
        {
          v19 = sub_506E8C(0, *(v65 + 2) + 1, 1, v65);
        }

        v21 = *(v19 + 2);
        v20 = *(v19 + 3);
        if (v21 >= v20 >> 1)
        {
          v19 = sub_506E8C((v20 > 1), v21 + 1, 1, v19);
        }

        *(v19 + 2) = v21 + 1;
        v65 = v19;
        v19[v21 + 32] = v18;
        v12 = v61;
        goto LABEL_4;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0FB50, &unk_B1B178);
    v67 = 0;
    sub_68D500(&qword_E0FC40, &qword_E0FB50, &unk_B1B178, &protocol conformance descriptor for <> Set<A>);
    sub_ABB1E0();
    v61 = 0;
    v22 = v66;
    v23 = v66 + 56;
    v24 = 1 << *(v66 + 32);
    v25 = -1;
    if (v24 < 64)
    {
      v25 = ~(-1 << v24);
    }

    v26 = v25 & *(v66 + 56);
    v27 = (v24 + 63) >> 6;

    v28 = 0;
    v29 = _swiftEmptyArrayStorage;
    if (!v26)
    {
      goto LABEL_19;
    }

    do
    {
LABEL_17:
      while (1)
      {
        v30 = __clz(__rbit64(v26));
        v26 &= v26 - 1;
        v31 = (*(v22 + 48) + ((v28 << 10) | (16 * v30)));
        v32 = *v31;
        v33 = v31[1];

        v34._rawValue = &off_D1BFC0;
        v69._countAndFlagsBits = v32;
        v69._object = v33;
        v35 = sub_ABB140(v34, v69);

        if (v35 < 0xD)
        {
          break;
        }

        if (!v26)
        {
          goto LABEL_19;
        }
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v29 = sub_506E8C(0, *(v29 + 2) + 1, 1, v29);
      }

      v37 = v29;
      v38 = *(v29 + 2);
      v39 = v37;
      v40 = *(v37 + 3);
      if (v38 >= v40 >> 1)
      {
        v39 = sub_506E8C((v40 > 1), v38 + 1, 1, v39);
      }

      *(v39 + 2) = v38 + 1;
      v41 = &v39[v38];
      v29 = v39;
      v41[32] = v35;
    }

    while (v26);
LABEL_19:
    while (1)
    {
      v36 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      if (v36 >= v27)
      {

        v42 = sub_615414(v29);

        v67 = 2;
        v43 = v63;
        v44 = v64;
        v45 = v61;
        sub_ABB1E0();
        if (v45)
        {

          v67 = 2;
          sub_68D560();
          sub_ABB1E0();
          (*(v62 + 8))(v43, v44);
        }

        else
        {
          v61 = v42;
          v46 = 0;
          v47 = v66;
          v48 = *(v66 + 16);
          v49 = v66 + 40;
          v50 = _swiftEmptyArrayStorage;
          v60 = v66 + 40;
LABEL_32:
          v51 = (v49 + 16 * v46);
          while (v48 != v46)
          {
            if (v46 >= *(v47 + 16))
            {
              goto LABEL_44;
            }

            ++v46;
            v52 = v51 + 2;
            v53 = *(v51 - 1);
            v54 = *v51;

            v55._rawValue = &off_D1BFC0;
            v70._countAndFlagsBits = v53;
            v70._object = v54;
            v56 = sub_ABB140(v55, v70);

            v51 = v52;
            if (v56 < 0xD)
            {
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v50 = sub_506E8C(0, *(v50 + 2) + 1, 1, v50);
              }

              v58 = *(v50 + 2);
              v57 = *(v50 + 3);
              if (v58 >= v57 >> 1)
              {
                v50 = sub_506E8C((v57 > 1), v58 + 1, 1, v50);
              }

              *(v50 + 2) = v58 + 1;
              v50[v58 + 32] = v56;
              v49 = v60;
              goto LABEL_32;
            }
          }

          (*(v62 + 8))(v63, v64);
        }

        goto LABEL_3;
      }

      v26 = *(v23 + 8 * v36);
      ++v28;
      if (v26)
      {
        v28 = v36;
        goto LABEL_17;
      }
    }

LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
  }
}

unint64_t sub_68C948()
{
  result = qword_E11DF0;
  if (!qword_E11DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E11DF0);
  }

  return result;
}

unint64_t sub_68C99C()
{
  result = qword_E11E08;
  if (!qword_E11E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E11E08);
  }

  return result;
}

uint64_t sub_68C9F0(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E11E10, &qword_B1F758);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_68CA68()
{
  result = qword_E11E20;
  if (!qword_E11E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E11E20);
  }

  return result;
}

unint64_t sub_68CABC()
{
  result = qword_E11E30;
  if (!qword_E11E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E11E30);
  }

  return result;
}

unint64_t sub_68CB10(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_D1C118;
  v6._object = a2;
  v4 = sub_ABB140(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_68CB5C(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11EE0, &qword_B1FFF0);
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v8 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_68CABC();
  sub_ABB680();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11DF8, &qword_B1F750);
  HIBYTE(v8) = 0;
  sub_68D434(&qword_E11EE8, sub_68D4AC, &protocol conformance descriptor for <A> [A]);
  sub_ABB1E0();
  v7 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11E10, &qword_B1F758);
  HIBYTE(v8) = 1;
  sub_68C9F0(&qword_E11EF8, sub_68D4AC, &protocol conformance descriptor for <> Set<A>);
  sub_ABB1E0();
  (*(v3 + 8))(v5, v2);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v7;
}

unint64_t sub_68CDD0()
{
  result = qword_E11E38;
  if (!qword_E11E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E11E38);
  }

  return result;
}

unint64_t sub_68CE24(uint64_t a1)
{
  result = sub_68CE4C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_68CE4C()
{
  result = qword_E11E70;
  if (!qword_E11E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E11E70);
  }

  return result;
}

unint64_t sub_68CEA4()
{
  result = qword_E11E78;
  if (!qword_E11E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E11E78);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_9MusicCore7LibraryO4MenuV8RevisionVSg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_68CF80(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_68CFC8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy33_8_0(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_68D0B0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_68D0F8(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t sub_68D150()
{
  result = qword_E11E88;
  if (!qword_E11E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E11E88);
  }

  return result;
}

unint64_t sub_68D1A8()
{
  result = qword_E11E90;
  if (!qword_E11E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E11E90);
  }

  return result;
}

unint64_t sub_68D200()
{
  result = qword_E11E98;
  if (!qword_E11E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E11E98);
  }

  return result;
}

unint64_t sub_68D258()
{
  result = qword_E11EA0;
  if (!qword_E11EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E11EA0);
  }

  return result;
}

unint64_t sub_68D2B0()
{
  result = qword_E11EA8;
  if (!qword_E11EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E11EA8);
  }

  return result;
}

unint64_t sub_68D308()
{
  result = qword_E11EB0;
  if (!qword_E11EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E11EB0);
  }

  return result;
}

unint64_t sub_68D35C()
{
  result = qword_E11ED0;
  if (!qword_E11ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E11ED0);
  }

  return result;
}

uint64_t sub_68D3B0()
{

  return swift_deallocObject();
}

uint64_t sub_68D3E8(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v3;
  v5[2] = *(a1 + 32);
  v6 = *(a1 + 48);
  return v2(v5);
}

uint64_t sub_68D434(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E11DF8, &qword_B1F750);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_68D4AC()
{
  result = qword_E11EF0;
  if (!qword_E11EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E11EF0);
  }

  return result;
}

uint64_t sub_68D500(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

unint64_t sub_68D560()
{
  result = qword_E11F10;
  if (!qword_E11F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E11F10);
  }

  return result;
}

unint64_t sub_68D5B4()
{
  result = qword_E11F20;
  if (!qword_E11F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E11F20);
  }

  return result;
}

unint64_t sub_68D608()
{
  result = qword_E11F28;
  if (!qword_E11F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E11F28);
  }

  return result;
}

uint64_t *sub_68D65C@<X0>(uint64_t *result@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *result;
  v5 = v3[3] >> 1;
  if (*result >= v3[2])
  {
    v7 = __OFSUB__(v4, v5);
    v6 = v4 - v5 < 0;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  if (v6 != v7)
  {
    *a2 = *(v3[1] + v4);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_68D694()
{

  return swift_deallocObject();
}

uint64_t sub_68D6D4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t _s4MenuV9MoveErrorV7FailureOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF)
  {
    goto LABEL_17;
  }

  if (a2 + 241 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 241) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 241;
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

      return (*a1 | (v4 << 8)) - 241;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 241;
    }
  }

LABEL_17:
  v6 = ((*a1 >> 3) & 0xE | (*a1 >> 7)) ^ 0xF;
  if (v6 >= 0xE)
  {
    v6 = -1;
  }

  return v6 + 1;
}

uint64_t _s4MenuV9MoveErrorV7FailureOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 241 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 241) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF)
  {
    v4 = 0;
  }

  if (a2 > 0xE)
  {
    v5 = ((a2 - 15) >> 8) + 1;
    *result = a2 - 15;
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
    *result = 16 * (((-a2 >> 1) & 7) - 8 * a2);
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_68D8DC()
{
  result = qword_E11F50;
  if (!qword_E11F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E11F50);
  }

  return result;
}

Swift::Int sub_68D930(uint64_t a1, unsigned __int8 a2)
{
  sub_ABB5C0();
  sub_AB93F0();

  return sub_ABB610();
}

Swift::Int sub_68DA48(uint64_t a1, unsigned __int8 a2)
{
  sub_ABB5C0();
  sub_AB93F0();

  return sub_ABB610();
}

Swift::Int sub_68DB60(uint64_t a1, unsigned __int8 a2)
{
  sub_ABB5C0();
  sub_AB93F0();

  return sub_ABB610();
}

unint64_t Library.SortConfiguration.storageKey.getter(unsigned __int8 a1)
{
  sub_ABAD90(33);

  v2 = 0xE600000000000000;
  v3 = 0x736D75626C61;
  v4 = 0xE900000000000073;
  v5 = 0x7473696C79616C70;
  if (a1 != 5)
  {
    v5 = 0x73676E6F73;
    v4 = 0xE500000000000000;
  }

  v6 = 0xEA0000000000756FLL;
  v7 = 0x59726F466564616DLL;
  if (a1 != 3)
  {
    v7 = 0x646956636973756DLL;
    v6 = 0xEB00000000736F65;
  }

  if (a1 <= 4u)
  {
    v5 = v7;
    v4 = v6;
  }

  v8 = 0xE700000000000000;
  v9 = 0x73747369747261;
  if (a1 != 1)
  {
    v9 = 0x74616C69706D6F63;
    v8 = 0xEC000000736E6F69;
  }

  if (a1)
  {
    v3 = v9;
    v2 = v8;
  }

  if (a1 <= 2u)
  {
    v10._countAndFlagsBits = v3;
  }

  else
  {
    v10._countAndFlagsBits = v5;
  }

  if (a1 <= 2u)
  {
    v11 = v2;
  }

  else
  {
    v11 = v4;
  }

  v10._object = v11;
  sub_AB94A0(v10);

  return 0xD00000000000001FLL;
}

uint64_t Library.SortConfiguration.rawValue.getter(unsigned __int8 a1)
{
  v1 = 0x736D75626C61;
  v2 = 0x7473696C79616C70;
  if (a1 != 5)
  {
    v2 = 0x73676E6F73;
  }

  v3 = 0x59726F466564616DLL;
  if (a1 != 3)
  {
    v3 = 0x646956636973756DLL;
  }

  if (a1 <= 4u)
  {
    v2 = v3;
  }

  v4 = 0x73747369747261;
  if (a1 != 1)
  {
    v4 = 0x74616C69706D6F63;
  }

  if (a1)
  {
    v1 = v4;
  }

  if (a1 <= 2u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

double sub_68DEFC(uint64_t a1)
{
  sub_AB93F0();

  return result;
}

unint64_t sub_68E024@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s9MusicCore7LibraryO17SortConfigurationO8rawValueAESgSS_tcfC_0(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_68E054(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0x736D75626C61;
  v5 = 0xE900000000000073;
  v6 = 0x7473696C79616C70;
  if (v2 != 5)
  {
    v6 = 0x73676E6F73;
    v5 = 0xE500000000000000;
  }

  v7 = 0xEA0000000000756FLL;
  v8 = 0x59726F466564616DLL;
  if (v2 != 3)
  {
    v8 = 0x646956636973756DLL;
    v7 = 0xEB00000000736F65;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE700000000000000;
  v10 = 0x73747369747261;
  if (v2 != 1)
  {
    v10 = 0x74616C69706D6F63;
    v9 = 0xEC000000736E6F69;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 2);
  v11 = v2 == 2;
  v12 = v2 - 2 < 0;
  if (*v1 <= 2u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

unint64_t _s9MusicCore7LibraryO17SortConfigurationO8rawValueAESgSS_tcfC_0(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_D1C1D0;
  v6._object = a2;
  v4 = sub_ABB140(v3, v6);

  if (v4 >= 7)
  {
    return 7;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_68E194()
{
  result = qword_E11F58;
  if (!qword_E11F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E11F58);
  }

  return result;
}

void *sub_68E1F8(uint64_t a1)
{
  v2 = sub_AB31C0();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0DC30, &unk_B15160);
  v6 = *(v19 - 8);
  __chkstk_darwin();
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = _swiftEmptyArrayStorage;
  if (v9)
  {
    v20 = _swiftEmptyArrayStorage;
    sub_503858(0, v9, 0);
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v10 = v20;
    v13 = a1 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
    v17 = *(v11 + 56);
    v18 = v12;
    do
    {
      v18(v5, v13, v2);
      swift_dynamicCast();
      v20 = v10;
      v15 = v10[2];
      v14 = v10[3];
      if (v15 >= v14 >> 1)
      {
        sub_503858((v14 > 1), v15 + 1, 1);
        v10 = v20;
      }

      v10[2] = v15 + 1;
      sub_4FE54C(v8, v10 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v15);
      v13 += v17;
      --v9;
    }

    while (v9);
  }

  return v10;
}

uint64_t sub_68E42C(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_693640();

    v1 = sub_ABAFF0();
  }

  else
  {
    v1 = a1;

    sub_ABB3E0();
    sub_693640();
  }

  return v1;
}

void *sub_68E4B4(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = _swiftEmptyArrayStorage;
  if (v2)
  {
    sub_503A08(0, v2, 0);
    result = _swiftEmptyArrayStorage;
    v4 = (a1 + 32);
    v5 = _swiftEmptyArrayStorage[2];
    do
    {
      v6 = *v4;
      v8 = result;
      v7 = result[3];
      if (v5 >= v7 >> 1)
      {
        sub_503A08((v7 > 1), v5 + 1, 1);
        result = v8;
      }

      result[2] = v5 + 1;
      *(result + v5 + 8) = v6;
      ++v4;
      ++v5;
      --v2;
    }

    while (v2);
  }

  return result;
}

void *sub_68E580(uint64_t a1, __n128 a2)
{
  v3 = *(a1 + 16);
  result = _swiftEmptyArrayStorage;
  if (v3)
  {
    v7 = _swiftEmptyArrayStorage;
    sub_ABAEC0();
    v5 = a1 + 32;
    do
    {
      sub_9ACA0(v5, v6);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E15430, &qword_B17288);
      swift_dynamicCast();
      sub_ABAE90();
      sub_ABAED0();
      sub_ABAEE0();
      sub_ABAEA0();
      v5 += 40;
      --v3;
    }

    while (v3);
    return v7;
  }

  return result;
}

uint64_t SortOptions.SortType.localizedTitle.getter(Swift::Int a1)
{
  sub_68E6F0(a1, v5);
  v1 = v6;
  v2 = v7;
  __swift_project_boxed_opaque_existential_1(v5, v6);
  v3 = (*(v2 + 8))(v1, v2);
  __swift_destroy_boxed_opaque_existential_0(v5);
  return v3;
}

Swift::Int sub_68E6F0@<X0>(Swift::Int result@<X0>, uint64_t a2@<X8>)
{
  switch(result)
  {
    case 1:
      v7 = &type metadata for PlaylistOrderSort;
      v8 = &off_D2BE88;
      goto LABEL_12;
    case 2:
      v5 = &type metadata for TitleSort;
      v6 = &off_D2BE28;
      goto LABEL_18;
    case 3:
      v5 = &type metadata for RecentlyAddedSort;
      v6 = &off_D2BEC8;
      goto LABEL_18;
    case 4:
      v5 = &type metadata for RecentlyPlayedSort;
      v6 = &off_D2BEE8;
      goto LABEL_18;
    case 5:
      v5 = &type metadata for RecentlyUpdatedSort;
      v6 = &off_D2BF08;
      goto LABEL_18;
    case 6:
      v5 = &type metadata for ArtistSort;
      v6 = &off_D2BE48;
      goto LABEL_18;
    case 7:
      v5 = &type metadata for AlbumSort;
      v6 = &off_D2BE68;
      goto LABEL_18;
    case 8:
      v5 = &type metadata for PlaylistTypeSort;
      v6 = &off_D2BEA8;
LABEL_18:
      *(a2 + 24) = v5;
      *(a2 + 32) = v6;
      return result;
    case 9:
      v7 = &type metadata for YearSort;
      v8 = &off_D2BF28;
LABEL_12:
      *(a2 + 24) = v7;
      *(a2 + 32) = v8;
      *a2 = 0;
      return result;
    case 10:
      v2 = &type metadata for YearSort;
      v3 = &off_D2BF28;
      goto LABEL_16;
    case 11:
      v4 = a2;
      result = sub_5089F4(&off_D1C2C8);
      *(v4 + 24) = &type metadata for ReleaseDateSort;
      *(v4 + 32) = &off_D2BF48;
      *v4 = 1;
      goto LABEL_6;
    case 12:
      v4 = a2;
      result = sub_5089F4(&off_D1C2F0);
      *(v4 + 24) = &type metadata for ReleaseDateSort;
      *(v4 + 32) = &off_D2BF48;
      *v4 = 0;
LABEL_6:
      *(v4 + 8) = result;
      break;
    default:
      v2 = &type metadata for PlaylistOrderSort;
      v3 = &off_D2BE88;
LABEL_16:
      *(a2 + 24) = v2;
      *(a2 + 32) = v3;
      *a2 = 1;
      break;
  }

  return result;
}

id SortOptions.SortType.image.getter(char a1)
{
  result = 0;
  v3 = 1 << a1;
  if ((v3 & 0x1FC) == 0)
  {
    if ((v3 & 0xC01) != 0)
    {
      v4 = [objc_opt_self() configurationWithScale:1];
      v5 = sub_AB9260();
      v6 = [objc_opt_self() systemImageNamed:v5];

      if (v6)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v4 = [objc_opt_self() configurationWithScale:1];
      v7 = sub_AB9260();
      v6 = [objc_opt_self() systemImageNamed:v7];

      if (v6)
      {
LABEL_6:
        v8 = [v6 imageWithConfiguration:v4];

        return v8;
      }
    }

    return 0;
  }

  return result;
}

uint64_t SortOptions.SortType.sortDescriptors(for:)(uint64_t a1, Swift::Int a2)
{
  sub_68E6F0(a2, v7);
  v3 = v8;
  v4 = v9;
  __swift_project_boxed_opaque_existential_1(v7, v8);
  v5 = (*(v4 + 24))(a1, v3, v4);
  __swift_destroy_boxed_opaque_existential_0(v7);
  return v5;
}

unint64_t SortOptions.SortType.rawValue.getter(char a1)
{
  result = 0x656C7469547942;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000019;
      break;
    case 2:
      return result;
    case 3:
      result = 0xD000000000000012;
      break;
    case 5:
      result = 0xD000000000000012;
      break;
    case 6:
      result = 0x7473697472417942;
      break;
    case 7:
      result = 0x6D75626C417942;
      break;
    case 8:
      result = 0x696C79616C507942;
      break;
    case 9:
      result = 0xD000000000000010;
      break;
    case 10:
      result = 0x646E656373417942;
      break;
    case 11:
      result = 0xD000000000000016;
      break;
    case 12:
      result = 0xD000000000000017;
      break;
    default:
      result = 0xD000000000000018;
      break;
  }

  return result;
}

uint64_t sub_68ECA8(char *a1, char *a2)
{
  v2 = *a2;
  v3 = SortOptions.SortType.rawValue.getter(*a1);
  v5 = v4;
  if (v3 == SortOptions.SortType.rawValue.getter(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_ABB3C0();
  }

  return v8 & 1;
}

unint64_t sub_68ED78@<X0>(Swift::String *a1@<X0>, MusicCore::SortOptions::SortType_optional *a2@<X8>)
{
  result = _s9MusicCore11SortOptionsV0C4TypeO8rawValueAESgSS_tcfC_0(a1->_countAndFlagsBits, a1->_object);
  a2->value = result;
  return result;
}

unint64_t sub_68EDA8@<X0>(unint64_t *a1@<X8>)
{
  result = SortOptions.SortType.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t SortOptions.ContentType.localizedTitle.getter(unsigned __int8 a1)
{
  sub_AB35C0();
  __chkstk_darwin();
  v2 = sub_AB9250();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v7 = &v11[-v6];
  if ((a1 >> 6) > 2u && a1 != 192 && a1 != 193)
  {
    return 0;
  }

  sub_AB91E0();
  (*(v3 + 16))(v5, v7, v2);
  if (qword_E0CB80 != -1)
  {
    swift_once();
  }

  v8 = qword_E71B20;
  sub_AB3550();
  v9 = sub_AB9320();
  (*(v3 + 8))(v7, v2);
  return v9;
}

char *SortOptions.ContentType.availableSortTypes(withSelectedType:)(unsigned __int8 a1, uint64_t a2)
{
  v4 = 0;
  v5 = _swiftEmptyArrayStorage;
  do
  {
    v6 = *(&off_D1C298 + v4 + 32);
    switch(*(&off_D1C298 + v4 + 32))
    {
      case 1:
        v7 = &type metadata for PlaylistOrderSort;
        v22 = &type metadata for PlaylistOrderSort;
        v8 = &off_D2BE88;
        goto LABEL_15;
      case 2:
        v7 = &type metadata for TitleSort;
        v8 = &off_D2BE28;
        goto LABEL_21;
      case 3:
        v7 = &type metadata for RecentlyAddedSort;
        v8 = &off_D2BEC8;
        goto LABEL_21;
      case 4:
        v7 = &type metadata for RecentlyPlayedSort;
        v8 = &off_D2BEE8;
        goto LABEL_21;
      case 5:
        v7 = &type metadata for RecentlyUpdatedSort;
        v8 = &off_D2BF08;
        goto LABEL_21;
      case 6:
        v7 = &type metadata for ArtistSort;
        v8 = &off_D2BE48;
        goto LABEL_21;
      case 7:
        v7 = &type metadata for AlbumSort;
        v8 = &off_D2BE68;
        goto LABEL_21;
      case 8:
        v7 = &type metadata for PlaylistTypeSort;
        v8 = &off_D2BEA8;
LABEL_21:
        v22 = v7;
        v23 = v8;
        break;
      case 9:
        v7 = &type metadata for YearSort;
        v22 = &type metadata for YearSort;
        v8 = &off_D2BF28;
LABEL_15:
        v23 = v8;
        LOBYTE(v21[0]) = 0;
        break;
      case 0xA:
        v7 = &type metadata for YearSort;
        v22 = &type metadata for YearSort;
        v8 = &off_D2BF28;
        goto LABEL_19;
      case 0xB:
        v9 = sub_5089F4(&off_D1C5E8);
        v23 = &off_D2BF48;
        LOBYTE(v21[0]) = 1;
        goto LABEL_9;
      case 0xC:
        v9 = sub_5089F4(&off_D1C610);
        v23 = &off_D2BF48;
        LOBYTE(v21[0]) = 0;
LABEL_9:
        v7 = &type metadata for ReleaseDateSort;
        v22 = &type metadata for ReleaseDateSort;
        v21[1] = v9;
        v8 = &off_D2BF48;
        break;
      default:
        v7 = &type metadata for PlaylistOrderSort;
        v22 = &type metadata for PlaylistOrderSort;
        v8 = &off_D2BE88;
LABEL_19:
        v23 = v8;
        LOBYTE(v21[0]) = 1;
        break;
    }

    __swift_project_boxed_opaque_existential_1(v21, v7);
    (v8[2])();
    v11 = sub_5E9D44(a2, v10);

    __swift_destroy_boxed_opaque_existential_0(v21);
    if (v11)
    {
      v12 = a1;
      if (v6 > 8)
      {
        if (v6 > 10)
        {
          v12 = 24;
          if (v6 == 11)
          {
            v13 = 0xD000000000000017;
            v14 = 0x8000000000B492C0;
          }

          else
          {
            v13 = 0xD000000000000016;
            v14 = 0x8000000000B492E0;
          }
        }

        else
        {
          v13 = 0x646E656373417942;
          v14 = 0xEF72616559676E69;
          if (v6 != 9)
          {
            v12 = 24;
            v13 = 0xD000000000000010;
            v14 = 0x8000000000B49300;
          }
        }
      }

      else
      {
        v12 = v6 - 2;
        if ((v6 - 2) < 7)
        {
LABEL_53:
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v5 = sub_506EC4(0, *(v5 + 2) + 1, 1, v5);
          }

          v19 = *(v5 + 2);
          v18 = *(v5 + 3);
          if (v19 >= v18 >> 1)
          {
            v5 = sub_506EC4((v18 > 1), v19 + 1, 1, v5);
          }

          *(v5 + 2) = v19 + 1;
          v5[v19 + 32] = v6;
          goto LABEL_3;
        }

        if (v6)
        {
          v13 = 0xD000000000000018;
          v14 = 0x8000000000B493A0;
        }

        else
        {
          v12 = 24;
          v13 = 0xD000000000000019;
          v14 = 0x8000000000B49380;
        }
      }

      v15 = 0xE700000000000000;
      v16 = 0x656C7469547942;
      switch(v12)
      {
        case 0:
          v15 = 0x8000000000B493A0;
          if (v13 == 0xD000000000000018)
          {
            goto LABEL_49;
          }

          goto LABEL_51;
        case 1:
          v15 = 0x8000000000B49380;
          if (v13 != 0xD000000000000019)
          {
            goto LABEL_51;
          }

          goto LABEL_49;
        case 2:
          goto LABEL_48;
        case 3:
        case 5:
        case 6:
        case 7:
        case 8:
          goto LABEL_51;
        case 4:
          v15 = 0x8000000000B49340;
          if (v13 != 0xD000000000000018)
          {
            goto LABEL_51;
          }

          goto LABEL_49;
        case 9:
          v15 = 0x8000000000B49300;
          if (v13 != 0xD000000000000010)
          {
            goto LABEL_51;
          }

          goto LABEL_49;
        case 10:
          v16 = 0x646E656373417942;
          v15 = 0xEF72616559676E69;
LABEL_48:
          if (v13 == v16)
          {
            goto LABEL_49;
          }

          goto LABEL_51;
        case 11:
          v15 = 0x8000000000B492E0;
          if (v13 != 0xD000000000000016)
          {
            goto LABEL_51;
          }

          goto LABEL_49;
        case 12:
          v15 = 0x8000000000B492C0;
          if (v13 != 0xD000000000000017)
          {
            goto LABEL_51;
          }

LABEL_49:
          if (v14 == v15)
          {

            LOBYTE(v6) = a1;
          }

          else
          {
LABEL_51:
            v17 = sub_ABB3C0();

            if (v17)
            {
              LOBYTE(v6) = a1;
            }
          }

          break;
        default:
          goto LABEL_53;
      }

      goto LABEL_53;
    }

LABEL_3:
    ++v4;
  }

  while (v4 != 10);
  return v5;
}

uint64_t SortOptions.ContentType.defaultSortType.getter(unsigned __int8 a1)
{
  if ((a1 >> 6) > 1u)
  {
    if (a1 >> 6 == 2)
    {
      return 8;
    }

    else
    {
      return 0x206u >> (8 * (a1 + 64));
    }
  }

  else
  {
    if (a1 >> 6)
    {
      if ((a1 & 0x3F) == 0)
      {
        return 6;
      }
    }

    else if ((a1 & 1) == 0)
    {
      return 6;
    }

    return 2;
  }
}

unint64_t sub_68F6E4(uint64_t a1)
{
  v1 = 0x676E6F5374726F73;
  if (a1 != 192)
  {
    v2 = a1;
    sub_ABB5C0();
    v3 = SortOptions.ContentType.identifier.getter(v2);
    sub_AB93F0();

    v4 = sub_ABB610();
    sub_ABB5C0();
    sub_AB93F0();
    if (v4 != sub_ABB610())
    {
      v1 = 0x75626C4174726F53;
      if ((v2 & 0xC0) != 0x40)
      {
        sub_ABB5C0();
        sub_AB93F0();

        v6 = sub_ABB610();
        sub_ABB5C0();
        sub_AB93F0();
        if (v6 == sub_ABB610())
        {
          return v1;
        }

        goto LABEL_5;
      }

      if ((v2 & 0x3F) != 0)
      {
LABEL_5:

        v7._countAndFlagsBits = 0x6570795474726F53;
        v7._object = 0xE800000000000000;
        sub_AB94A0(v7);

        return v3;
      }
    }
  }

  return v1;
}

unint64_t SortOptions.ContentType.identifier.getter(unsigned __int8 a1)
{
  if ((a1 >> 6) > 1u)
  {
    if (a1 >> 6 == 2)
    {
      if (a1)
      {
        return 0xD000000000000018;
      }

      else
      {
        return 0x7473696C79616C70;
      }
    }

    else
    {
      v5 = 0x736569766F6DLL;
      if (a1 != 193)
      {
        v5 = 0x7473696C79616C70;
      }

      if (a1 == 192)
      {
        return 0x73676E6F73;
      }

      else
      {
        return v5;
      }
    }
  }

  else if (a1 >> 6)
  {
    v2 = 0x736D75626C61;
    v3 = 0xD000000000000016;
    v4 = 0x7265736F706D6F63;
    if ((a1 & 0x3F) != 3)
    {
      v4 = 0x626C4165726E6567;
    }

    if ((a1 & 0x3F) != 2)
    {
      v3 = v4;
    }

    if ((a1 & 0x3F) != 0)
    {
      v2 = 0x6C41747369747261;
    }

    if ((a1 & 0x3Fu) <= 1)
    {
      return v2;
    }

    else
    {
      return v3;
    }
  }

  else if (a1)
  {
    return 0xD000000000000011;
  }

  else
  {
    return 0x646956636973756DLL;
  }
}

Swift::String __swiftcall SortOptions.ContentType.storageKey(using:)(Swift::String_optional using)
{
  if (using.value._object)
  {
    object = using.value._object;
    countAndFlagsBits = using.value._countAndFlagsBits;
    v8 = sub_68F6E4(v1);
    v9 = v4;

    v10._countAndFlagsBits = 45;
    v10._object = 0xE100000000000000;
    sub_AB94A0(v10);

    v11._countAndFlagsBits = countAndFlagsBits;
    v11._object = object;
    sub_AB94A0(v11);

    v5 = v8;
    v6 = v9;
  }

  else
  {
    v5 = sub_68F6E4(v1);
  }

  result._object = v6;
  result._countAndFlagsBits = v5;
  return result;
}

double SortOptions.ContentType.hash(into:)(uint64_t a1, unsigned __int8 a2)
{
  sub_AB93F0();

  return result;
}

Swift::Int SortOptions.ContentType.hashValue.getter(unsigned __int8 a1)
{
  sub_ABB5C0();
  SortOptions.ContentType.identifier.getter(a1);
  sub_AB93F0();

  return sub_ABB610();
}

Swift::Int sub_68FD60(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v5 = *v3;
  sub_ABB5C0();
  a3(v5);
  sub_AB93F0();

  return sub_ABB610();
}

double sub_68FDE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  (a4)(*v4, a2, a3);
  sub_AB93F0();

  return result;
}

Swift::Int sub_68FE54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v6 = *v4;
  sub_ABB5C0();
  a4(v6);
  sub_AB93F0();

  return sub_ABB610();
}

uint64_t static SortOptions.ViewType.Albums.preferredItemSortDescriptors.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E10AA0, &unk_B19F90);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_AF82E0;
  sub_AB92A0();
  v1 = objc_allocWithZone(NSSortDescriptor);
  v2 = sub_AB9260();

  v3 = [v1 initWithKey:v2 ascending:1];

  *(v0 + 32) = v3;
  sub_AB92A0();
  v4 = objc_allocWithZone(NSSortDescriptor);
  v5 = sub_AB9260();

  v6 = [v4 initWithKey:v5 ascending:1];

  *(v0 + 40) = v6;
  sub_AB92A0();
  v7 = objc_allocWithZone(NSSortDescriptor);
  v8 = sub_AB9260();

  v9 = [v7 initWithKey:v8 ascending:1];

  *(v0 + 48) = v9;
  return v0;
}

uint64_t sub_690044(unsigned __int8 a1, char a2)
{
  if (a1 == 194)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E10AA0, &unk_B19F90);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_AF82B0;
    sub_AB92A0();
    v4 = objc_allocWithZone(NSSortDescriptor);
    v5 = sub_AB9260();

    v6 = [v4 initWithKey:v5 ascending:a2 & 1];

    *(v3 + 32) = v6;
    return v3;
  }

  else
  {
    result = sub_ABAFD0();
    __break(1u);
  }

  return result;
}

void sub_6901A4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E10AA0, &unk_B19F90);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_AF7C50;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E10EF0, &unk_B1DCB0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_AF85F0;
  *(v1 + 32) = sub_AB92A0();
  *(v1 + 40) = v2;
  *(v1 + 48) = sub_AB92A0();
  *(v1 + 56) = v3;
  isa = sub_AB9740().super.isa;

  v5 = objc_opt_self();
  v6 = [v5 sortDescriptorWithKeyPath:isa ascending:1];

  *(v0 + 32) = v6;
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_AF8820;
  *(v7 + 32) = sub_AB92A0();
  *(v7 + 40) = v8;
  *(v7 + 48) = sub_AB92A0();
  *(v7 + 56) = v9;
  *(v7 + 64) = sub_AB92A0();
  *(v7 + 72) = v10;
  v11 = sub_AB9740().super.isa;

  v12 = [v5 sortDescriptorWithKeyPath:v11 ascending:1];

  *(v0 + 40) = v12;
  qword_E71F50 = v0;
}

void sub_690380()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E10AA0, &unk_B19F90);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_B13C80;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E10EF0, &unk_B1DCB0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_AF8820;
  *(v1 + 32) = sub_AB92A0();
  *(v1 + 40) = v2;
  *(v1 + 48) = sub_AB92A0();
  *(v1 + 56) = v3;
  *(v1 + 64) = sub_AB92A0();
  *(v1 + 72) = v4;
  isa = sub_AB9740().super.isa;

  v6 = objc_opt_self();
  v7 = [v6 sortDescriptorWithKeyPath:isa ascending:1];

  *(v0 + 32) = v7;
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_AF85F0;
  *(v8 + 32) = sub_AB92A0();
  *(v8 + 40) = v9;
  *(v8 + 48) = sub_AB92A0();
  *(v8 + 56) = v10;
  v11 = sub_AB9740().super.isa;

  v12 = [v6 sortDescriptorWithKeyPath:v11 ascending:1];

  *(v0 + 40) = v12;
  sub_AB92A0();
  v13 = objc_allocWithZone(NSSortDescriptor);
  v14 = sub_AB9260();

  v15 = [v13 initWithKey:v14 ascending:1];

  *(v0 + 48) = v15;
  sub_AB92A0();
  v16 = objc_allocWithZone(NSSortDescriptor);
  v17 = sub_AB9260();

  v18 = [v16 initWithKey:v17 ascending:1];

  *(v0 + 56) = v18;
  sub_AB92A0();
  v19 = objc_allocWithZone(NSSortDescriptor);
  v20 = sub_AB9260();

  v21 = [v19 initWithKey:v20 ascending:1];

  *(v0 + 64) = v21;
  qword_E71F58 = v0;
}

void sub_690654()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E10AA0, &unk_B19F90);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_AF7C50;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E10EF0, &unk_B1DCB0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_AF85F0;
  *(v1 + 32) = sub_AB92A0();
  *(v1 + 40) = v2;
  *(v1 + 48) = sub_AB92A0();
  *(v1 + 56) = v3;
  isa = sub_AB9740().super.isa;

  v5 = [objc_opt_self() sortDescriptorWithKeyPath:isa ascending:1];

  *(v0 + 32) = v5;
  sub_AB92A0();
  v6 = objc_allocWithZone(NSSortDescriptor);
  v7 = sub_AB9260();

  v8 = [v6 initWithKey:v7 ascending:1];

  *(v0 + 40) = v8;
  qword_E71F60 = v0;
}

void sub_6907BC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E10AA0, &unk_B19F90);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_AF82E0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E10EF0, &unk_B1DCB0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_AF8820;
  *(v1 + 32) = sub_AB92A0();
  *(v1 + 40) = v2;
  *(v1 + 48) = sub_AB92A0();
  *(v1 + 56) = v3;
  *(v1 + 64) = sub_AB92A0();
  *(v1 + 72) = v4;
  isa = sub_AB9740().super.isa;

  v6 = objc_opt_self();
  v7 = [v6 sortDescriptorWithKeyPath:isa ascending:1];

  *(v0 + 32) = v7;
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_AF8820;
  *(v8 + 32) = sub_AB92A0();
  *(v8 + 40) = v9;
  *(v8 + 48) = sub_AB92A0();
  *(v8 + 56) = v10;
  *(v8 + 64) = sub_AB92A0();
  *(v8 + 72) = v11;
  v12 = sub_AB9740().super.isa;

  v13 = [v6 sortDescriptorWithKeyPath:v12 ascending:1];

  *(v0 + 40) = v13;
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_AF85F0;
  *(v14 + 32) = sub_AB92A0();
  *(v14 + 40) = v15;
  *(v14 + 48) = sub_AB92A0();
  *(v14 + 56) = v16;
  v17 = sub_AB9740().super.isa;

  v18 = [v6 sortDescriptorWithKeyPath:v17 ascending:1];

  *(v0 + 48) = v18;
  qword_E71F68 = v0;
}

void sub_690A30(unsigned __int8 a1)
{
  if ((a1 >> 6) <= 1u)
  {
    if (a1 >> 6)
    {
      if (qword_E0CE40 == -1)
      {
        goto LABEL_8;
      }

      goto LABEL_15;
    }

LABEL_7:
    if (qword_E0CE38 == -1)
    {
LABEL_8:

      return;
    }

LABEL_15:
    swift_once();
    goto LABEL_8;
  }

  if (a1 >> 6 != 3)
  {
    goto LABEL_17;
  }

  if (a1 == 192)
  {
    goto LABEL_7;
  }

  if (a1 == 194)
  {
    if (qword_E0CE48 != -1)
    {
      swift_once();
    }

    v1 = qword_E71F68;

    sub_68E42C(v1);
  }

  else
  {
LABEL_17:
    sub_ABAFD0();
    __break(1u);
  }
}

void sub_690B90()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E10AA0, &unk_B19F90);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_AF7C50;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E10EF0, &unk_B1DCB0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_AF8820;
  *(v1 + 32) = sub_AB92A0();
  *(v1 + 40) = v2;
  *(v1 + 48) = sub_AB92A0();
  *(v1 + 56) = v3;
  *(v1 + 64) = sub_AB92A0();
  *(v1 + 72) = v4;
  isa = sub_AB9740().super.isa;

  v6 = objc_opt_self();
  v7 = [v6 sortDescriptorWithKeyPath:isa ascending:1];

  *(v0 + 32) = v7;
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_AF85F0;
  *(v8 + 32) = sub_AB92A0();
  *(v8 + 40) = v9;
  *(v8 + 48) = sub_AB92A0();
  *(v8 + 56) = v10;
  v11 = sub_AB9740().super.isa;

  v12 = [v6 sortDescriptorWithKeyPath:v11 ascending:1];

  *(v0 + 40) = v12;
  qword_E71F70 = v0;
}

uint64_t sub_690D68(unsigned __int8 a1)
{
  if (a1 == 194)
  {
    if (qword_E0CE50 != -1)
    {
      swift_once();
    }

    v1 = qword_E71F70;

    return sub_68E42C(v1);
  }

  else
  {
    result = sub_ABAFD0();
    __break(1u);
  }

  return result;
}

void sub_690E24()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E10AA0, &unk_B19F90);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_B13C80;
  sub_AB92A0();
  v1 = objc_allocWithZone(NSSortDescriptor);
  v2 = sub_AB9260();

  v3 = [v1 initWithKey:v2 ascending:0];

  *(v0 + 32) = v3;
  sub_AB92A0();
  v4 = objc_allocWithZone(NSSortDescriptor);
  v5 = sub_AB9260();

  v6 = [v4 initWithKey:v5 ascending:1];

  *(v0 + 40) = v6;
  sub_AB92A0();
  v7 = objc_allocWithZone(NSSortDescriptor);
  v8 = sub_AB9260();

  v9 = [v7 initWithKey:v8 ascending:1];

  *(v0 + 48) = v9;
  sub_AB92A0();
  v10 = objc_allocWithZone(NSSortDescriptor);
  v11 = sub_AB9260();

  v12 = [v10 initWithKey:v11 ascending:1];

  *(v0 + 56) = v12;
  sub_AB92A0();
  v13 = objc_allocWithZone(NSSortDescriptor);
  v14 = sub_AB9260();

  v15 = [v13 initWithKey:v14 ascending:1];

  *(v0 + 64) = v15;
  qword_E71F78 = v0;
}

uint64_t sub_69110C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_AB35C0();
  __chkstk_darwin();
  v4 = sub_AB9250();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v13[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v9 = &v13[-v8];
  sub_AB91E0();
  (*(v5 + 16))(v7, v9, v4);
  if (qword_E0CB80 != -1)
  {
    swift_once();
  }

  v10 = qword_E71B20;
  sub_AB3550();
  v11 = sub_AB9320();
  (*(v5 + 8))(v9, v4);
  return v11;
}

void *sub_6912F8(char a1)
{
  if ((a1 & 0xC0) == 0x80)
  {
    return _swiftEmptyArrayStorage;
  }

  result = sub_ABAFD0();
  __break(1u);
  return result;
}

uint64_t sub_69136C()
{
  sub_AB35C0();
  __chkstk_darwin();
  v0 = sub_AB9250();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = &v9[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v5 = &v9[-v4];
  sub_AB91E0();
  (*(v1 + 16))(v3, v5, v0);
  if (qword_E0CB80 != -1)
  {
    swift_once();
  }

  v6 = qword_E71B20;
  sub_AB3550();
  v7 = sub_AB9320();
  (*(v1 + 8))(v5, v0);
  return v7;
}

uint64_t sub_69157C(unsigned __int8 a1, char a2)
{
  if ((a1 >> 6) <= 1u || a1 >> 6 == 3 && a1 == 193)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E10AA0, &unk_B19F90);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_AF7C50;
    sub_AB92A0();
    v4 = objc_allocWithZone(NSSortDescriptor);
    v5 = sub_AB9260();

    v6 = [v4 initWithKey:v5 ascending:a2 & 1];

    *(v3 + 32) = v6;
    sub_AB92A0();
    v7 = objc_allocWithZone(NSSortDescriptor);
    v8 = sub_AB9260();

    v9 = [v7 initWithKey:v8 ascending:1];

    *(v3 + 40) = v9;
    return v3;
  }

  else
  {
    result = sub_ABAFD0();
    __break(1u);
  }

  return result;
}

uint64_t sub_691770()
{
  sub_AB35C0();
  __chkstk_darwin();
  v0 = sub_AB9250();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = &v9[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v5 = &v9[-v4];
  sub_AB91E0();
  (*(v1 + 16))(v3, v5, v0);
  if (qword_E0CB80 != -1)
  {
    swift_once();
  }

  v6 = qword_E71B20;
  sub_AB3550();
  v7 = sub_AB9320();
  (*(v1 + 8))(v5, v0);
  return v7;
}

unint64_t NSUserDefaults.sortType(for:keyDomain:)(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a1;
  if (a3)
  {
    v11 = sub_68F6E4(a1);
    v13 = v6;

    v16._countAndFlagsBits = 45;
    v16._object = 0xE100000000000000;
    sub_AB94A0(v16);

    v17._countAndFlagsBits = a2;
    v17._object = a3;
    sub_AB94A0(v17);

    v7 = v11;
    v8 = v13;
  }

  else
  {
    v7 = sub_68F6E4(a1);
    v8 = v9;
  }

  v12 = v7;
  sub_4FD6CC();
  NSUserDefaults.subscript.getter(&v14);

  if (!v15)
  {
    sub_607768(&v14);
    goto LABEL_9;
  }

  if ((swift_dynamicCast() & 1) == 0 || (result = _s9MusicCore11SortOptionsV0C4TypeO8rawValueAESgSS_tcfC_0(v12, v8), result == 13))
  {
LABEL_9:
    if ((v3 >> 6) > 1u)
    {
      if (v3 >> 6 == 2)
      {
        return 8;
      }

      else
      {
        return 0x206u >> (8 * (v3 + 64));
      }
    }

    if (v3 >> 6)
    {
      if ((v3 & 0x3F) == 0)
      {
        return 6;
      }
    }

    else if ((v3 & 1) == 0)
    {
      return 6;
    }

    return 2;
  }

  return result;
}

void NSUserDefaults.setSortType(_:for:keyDomain:)(char a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a4)
  {
    v28 = sub_68F6E4(a2);
    v29 = v8;

    v31._countAndFlagsBits = 45;
    v31._object = 0xE100000000000000;
    sub_AB94A0(v31);

    v32._countAndFlagsBits = a3;
    v32._object = a4;
    sub_AB94A0(v32);

    v9 = v28;
    v10 = v29;
  }

  else
  {
    v9 = sub_68F6E4(a2);
    v10 = v11;
  }

  if ((a2 & 0xC0) == 0x40)
  {
    v12 = (a2 & 0x3F) == 0;
    if (a4)
    {
      goto LABEL_12;
    }
  }

  else
  {
    sub_ABB5C0();
    SortOptions.ContentType.identifier.getter(a2);
    sub_AB93F0();

    v13 = sub_ABB610();
    sub_ABB5C0();
    sub_AB93F0();
    v12 = v13 == sub_ABB610();
    if (a4)
    {
LABEL_12:
      v19 = SortOptions.SortType.rawValue.getter(a1);
      v20 = v22;
      v21 = 0;
      goto LABEL_14;
    }
  }

  if (!v12)
  {
    goto LABEL_12;
  }

  v14 = NSUserDefaults.sortType(for:keyDomain:)(a2, a3, 0);
  v15 = SortOptions.SortType.rawValue.getter(v14);
  v17 = v16;
  v19 = SortOptions.SortType.rawValue.getter(a1);
  v20 = v18;
  if (v15 == v19 && v17 == v18)
  {

    v21 = 0;
  }

  else
  {
    v23 = sub_ABB3C0();

    v21 = v23 ^ 1;
  }

LABEL_14:
  v30 = &type metadata for String;
  v28 = v19;
  v29 = v20;
  v27[0] = v9;
  v27[1] = v10;
  v24 = sub_4FD6CC();
  NSUserDefaults.subscript.setter(&v28, v27, &type metadata for String, v24);
  if (v21)
  {
    v25 = CFNotificationCenterGetDarwinNotifyCenter();
    v26 = sub_AB9260();
    CFNotificationCenterPostNotification(v25, v26, 0, 0, 1u);
  }
}

id MPModelPlaylist.canBeSorted.getter()
{
  if ([v0 hasLoadedValueForKey:MPModelPropertyAlbumLibraryAdded])
  {
    return [v0 isLibraryAdded];
  }

  if ([v0 hasLoadedValueForKey:MPModelPropertyMovieLibraryAdded])
  {
    return [v0 isLibraryAdded];
  }

  if ([v0 hasLoadedValueForKey:MPModelPropertyPlaylistLibraryAdded])
  {
    return [v0 isLibraryAdded];
  }

  if ([v0 hasLoadedValueForKey:MPModelPropertySongLibraryAdded])
  {
    return [v0 isLibraryAdded];
  }

  if ([v0 hasLoadedValueForKey:MPModelPropertyTVEpisodeLibraryAdded])
  {
    return [v0 isLibraryAdded];
  }

  if ([v0 hasLoadedValueForKey:MPModelPropertyTVSeasonLibraryAdded])
  {
    return [v0 isLibraryAdded];
  }

  result = [v0 hasLoadedValueForKey:MPModelPropertyArtistLibraryAdded];
  if (result)
  {
    return [v0 isLibraryAdded];
  }

  return result;
}

uint64_t MPModelPlaylist.sortStorageKeyDomain.getter()
{
  v1 = [v0 identifiers];
  v2 = [v1 universalStore];

  if (!v2)
  {
    goto LABEL_8;
  }

  v3 = [v2 globalPlaylistID];
  swift_unknownObjectRelease();
  if (!v3)
  {
    goto LABEL_8;
  }

  v4 = sub_AB92A0();
  v6 = v5;

  v7 = HIBYTE(v6) & 0xF;
  if ((v6 & 0x2000000000000000) == 0)
  {
    v7 = v4 & 0xFFFFFFFFFFFFLL;
  }

  if (!v7)
  {

LABEL_8:
    v9 = [v0 identifiers];
    v8 = MPIdentifierSet.bestLibraryIdentifier.getter();

    return v8;
  }

  sub_4FD6CC();
  v8 = sub_ABAAB0();

  return v8;
}

uint64_t MPModelPlaylist.legacyPreferredTracklistSortDescriptors.getter()
{
  if (([v0 hasLoadedValueForKey:MPModelPropertyAlbumLibraryAdded] & 1) == 0 && (objc_msgSend(v0, "hasLoadedValueForKey:", MPModelPropertyMovieLibraryAdded) & 1) == 0 && (objc_msgSend(v0, "hasLoadedValueForKey:", MPModelPropertyPlaylistLibraryAdded) & 1) == 0 && (objc_msgSend(v0, "hasLoadedValueForKey:", MPModelPropertySongLibraryAdded) & 1) == 0 && (objc_msgSend(v0, "hasLoadedValueForKey:", MPModelPropertyTVEpisodeLibraryAdded) & 1) == 0 && (objc_msgSend(v0, "hasLoadedValueForKey:", MPModelPropertyTVSeasonLibraryAdded) & 1) == 0 && !objc_msgSend(v0, "hasLoadedValueForKey:", MPModelPropertyArtistLibraryAdded) || !objc_msgSend(v0, "isLibraryAdded"))
  {
    return 0;
  }

  v1 = [objc_opt_self() standardUserDefaults];
  v2 = [v0 sortStorageKeyDomain];
  if (v2)
  {
    v3 = v2;
    v4 = sub_AB92A0();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v8 = NSUserDefaults.sortType(for:keyDomain:)(194, v4, v6);

  sub_68E6F0(v8, v12);
  v9 = v13;
  v10 = v14;
  __swift_project_boxed_opaque_existential_1(v12, v13);
  v11 = (*(v10 + 24))(194, v9, v10);
  __swift_destroy_boxed_opaque_existential_0(v12);
  return v11;
}

Class sub_692240(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  v5 = a3();

  if (v5)
  {
    sub_693640();
    v6.super.isa = sub_AB9740().super.isa;
  }

  else
  {
    v6.super.isa = 0;
  }

  return v6.super.isa;
}

id MPModelPlaylist.preferredTracklistSortDescriptors.getter()
{
  v1 = v0;
  if (([v0 hasLoadedValueForKey:MPModelPropertyAlbumLibraryAdded] & 1) == 0 && (objc_msgSend(v0, "hasLoadedValueForKey:", MPModelPropertyMovieLibraryAdded) & 1) == 0 && (objc_msgSend(v0, "hasLoadedValueForKey:", MPModelPropertyPlaylistLibraryAdded) & 1) == 0 && (objc_msgSend(v0, "hasLoadedValueForKey:", MPModelPropertySongLibraryAdded) & 1) == 0 && (objc_msgSend(v0, "hasLoadedValueForKey:", MPModelPropertyTVEpisodeLibraryAdded) & 1) == 0 && (objc_msgSend(v0, "hasLoadedValueForKey:", MPModelPropertyTVSeasonLibraryAdded) & 1) == 0 && !objc_msgSend(v0, "hasLoadedValueForKey:", MPModelPropertyArtistLibraryAdded) || !objc_msgSend(v0, "isLibraryAdded"))
  {
    return 0;
  }

  result = [v0 sortStorageKeyDomain];
  if (result)
  {
    v3 = result;
    v4 = sub_AB92A0();
    v6 = v5;

    v7 = [objc_opt_self() standardUserDefaults];
    v62[0] = 0x2D74726F53;
    v62[1] = 0xE500000000000000;
    v63._countAndFlagsBits = v4;
    v63._object = v6;
    sub_AB94A0(v63);

    sub_693598();
    sub_6935EC();
    NSUserDefaults.decodeValue<A>(_:forKey:)(&type metadata for Actions.SortPlaylist.TrackListSort, v62);

    v8 = LOWORD(v62[0]);
    if ((v62[0] & 0xFF00) == 0x200)
    {
      result = [v1 legacyPreferredTracklistSortDescriptors];
      if (result)
      {
        v9 = result;
        sub_693640();
        v10 = sub_AB9760();

        return v10;
      }
    }

    else
    {
      v11 = LOBYTE(v62[0]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E10AA0, &unk_B19F90);
      if (v8 <= 1u)
      {
        if (v11)
        {
          v49 = swift_allocObject();
          *(v49 + 16) = xmmword_AF7C50;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E10EF0, &unk_B1DCB0);
          v50 = swift_allocObject();
          *(v50 + 16) = xmmword_AF85F0;
          *(v50 + 32) = sub_AB92A0();
          *(v50 + 40) = v51;
          *(v50 + 48) = sub_AB92A0();
          *(v50 + 56) = v52;
          isa = sub_AB9740().super.isa;

          v54 = objc_opt_self();
          v55 = [v54 sortDescriptorWithKeyPath:isa ascending:(v8 >> 8) & 1];

          *(v49 + 32) = v55;
          v56 = swift_allocObject();
          *(v56 + 16) = xmmword_AF8820;
          *(v56 + 32) = sub_AB92A0();
          *(v56 + 40) = v57;
          *(v56 + 48) = sub_AB92A0();
          *(v56 + 56) = v58;
          *(v56 + 64) = sub_AB92A0();
          *(v56 + 72) = v59;
          v60 = sub_AB9740().super.isa;

          v61 = [v54 sortDescriptorWithKeyPath:v60 ascending:1];

          result = v49;
          *(v49 + 40) = v61;
        }

        else
        {
          v24 = (v8 >> 8) & 1;
          v25 = swift_allocObject();
          *(v25 + 16) = xmmword_AF82B0;
          sub_AB92A0();
          v26 = objc_allocWithZone(NSSortDescriptor);
          v27 = sub_AB9260();

          v28 = [v26 initWithKey:v27 ascending:v24];

          result = v25;
          *(v25 + 32) = v28;
        }
      }

      else if (v11 == 2)
      {
        v29 = swift_allocObject();
        *(v29 + 16) = xmmword_AF82E0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E10EF0, &unk_B1DCB0);
        v30 = swift_allocObject();
        *(v30 + 16) = xmmword_AF8820;
        *(v30 + 32) = sub_AB92A0();
        *(v30 + 40) = v31;
        *(v30 + 48) = sub_AB92A0();
        *(v30 + 56) = v32;
        *(v30 + 64) = sub_AB92A0();
        *(v30 + 72) = v33;
        v34 = sub_AB9740().super.isa;

        v35 = objc_opt_self();
        v36 = [v35 sortDescriptorWithKeyPath:v34 ascending:(v8 >> 8) & 1];

        *(v29 + 32) = v36;
        v37 = swift_allocObject();
        *(v37 + 16) = xmmword_AF8820;
        *(v37 + 32) = sub_AB92A0();
        *(v37 + 40) = v38;
        *(v37 + 48) = sub_AB92A0();
        *(v37 + 56) = v39;
        *(v37 + 64) = sub_AB92A0();
        *(v37 + 72) = v40;
        v41 = sub_AB9740().super.isa;

        v42 = [v35 sortDescriptorWithKeyPath:v41 ascending:1];

        *(v29 + 40) = v42;
        v43 = swift_allocObject();
        *(v43 + 16) = xmmword_AF85F0;
        *(v43 + 32) = sub_AB92A0();
        *(v43 + 40) = v44;
        *(v43 + 48) = sub_AB92A0();
        *(v43 + 56) = v45;
        v46 = sub_AB9740().super.isa;

        v47 = [v35 sortDescriptorWithKeyPath:v46 ascending:1];

        result = v29;
        *(v29 + 48) = v47;
      }

      else
      {
        v12 = swift_allocObject();
        *(v12 + 16) = xmmword_AF7C50;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E10EF0, &unk_B1DCB0);
        v13 = swift_allocObject();
        *(v13 + 16) = xmmword_AF8820;
        *(v13 + 32) = sub_AB92A0();
        *(v13 + 40) = v14;
        *(v13 + 48) = sub_AB92A0();
        *(v13 + 56) = v15;
        *(v13 + 64) = sub_AB92A0();
        *(v13 + 72) = v16;
        v17 = sub_AB9740().super.isa;

        v18 = objc_opt_self();
        v19 = [v18 sortDescriptorWithKeyPath:v17 ascending:(v8 >> 8) & 1];

        *(v12 + 32) = v19;
        v20 = swift_allocObject();
        *(v20 + 16) = xmmword_AF85F0;
        *(v20 + 32) = sub_AB92A0();
        *(v20 + 40) = v21;
        *(v20 + 48) = sub_AB92A0();
        *(v20 + 56) = v22;
        v23 = sub_AB9740().super.isa;

        v48 = [v18 sortDescriptorWithKeyPath:v23 ascending:1];

        result = v12;
        *(v12 + 40) = v48;
      }
    }
  }

  return result;
}

uint64_t sub_692BF4()
{
  v0 = sub_AB4BC0();
  __swift_allocate_value_buffer(v0, static Logger.sortOptions);
  __swift_project_value_buffer(v0, static Logger.sortOptions);
  return sub_AB4BB0();
}

uint64_t Logger.sortOptions.unsafeMutableAddressor()
{
  if (qword_E0CE60 != -1)
  {
    swift_once();
  }

  v0 = sub_AB4BC0();

  return __swift_project_value_buffer(v0, static Logger.sortOptions);
}

uint64_t static Logger.sortOptions.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_E0CE60 != -1)
  {
    swift_once();
  }

  v2 = sub_AB4BC0();
  v3 = __swift_project_value_buffer(v2, static Logger.sortOptions);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

BOOL _s9MusicCore11SortOptionsV11ContentTypeO2eeoiySbAE_AEtFZ_0(int a1, int a2)
{
  v2 = a2;
  v3 = a1;
  if ((a1 >> 6) > 1u)
  {
    if (a1 >> 6 != 2 && a1 == 192 && a2 == 192)
    {
      return 1;
    }
  }

  else if (a1 >> 6)
  {
    if ((a2 & 0xC0) == 0x40)
    {
      return ((a2 ^ a1) & 0x3F) == 0;
    }
  }

  else if (a2 < 0x40u)
  {
    return ((a2 ^ a1) & 1) == 0;
  }

  sub_ABB5C0();
  SortOptions.ContentType.identifier.getter(v3);
  sub_AB93F0();

  v6 = sub_ABB610();
  sub_ABB5C0();
  SortOptions.ContentType.identifier.getter(v2);
  sub_AB93F0();

  return v6 == sub_ABB610();
}

uint64_t sub_692EA0(unsigned __int8 a1, char a2)
{
  if (a1 == 194)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E10AA0, &unk_B19F90);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_AF7C50;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E10EF0, &unk_B1DCB0);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_AF8820;
    *(v4 + 32) = sub_AB92A0();
    *(v4 + 40) = v5;
    *(v4 + 48) = sub_AB92A0();
    *(v4 + 56) = v6;
    *(v4 + 64) = sub_AB92A0();
    *(v4 + 72) = v7;
    isa = sub_AB9740().super.isa;

    v9 = objc_opt_self();
    v10 = [v9 sortDescriptorWithKeyPath:isa ascending:a2 & 1];

    *(v3 + 32) = v10;
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_AF85F0;
    *(v11 + 32) = sub_AB92A0();
    *(v11 + 40) = v12;
    *(v11 + 48) = sub_AB92A0();
    *(v11 + 56) = v13;
    v14 = sub_AB9740().super.isa;

    v15 = [v9 sortDescriptorWithKeyPath:v14 ascending:1];

    *(v3 + 40) = v15;
    return v3;
  }

  else
  {
    result = sub_ABAFD0();
    __break(1u);
  }

  return result;
}

uint64_t sub_6930B8(unsigned __int8 a1)
{
  if ((a1 >> 6) <= 1u)
  {
    if (a1 >> 6)
    {
      goto LABEL_10;
    }

LABEL_6:
    if (qword_E0CE58 != -1)
    {
      swift_once();
    }

    v1 = qword_E71F78;

    return v1;
  }

  if (a1 >> 6 == 2)
  {
    goto LABEL_10;
  }

  if (a1 == 192)
  {
    goto LABEL_6;
  }

  if (a1 == 193)
  {
LABEL_10:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E10AA0, &unk_B19F90);
    v1 = swift_allocObject();
    *(v1 + 16) = xmmword_AF82B0;
    sub_AB92A0();
    v2 = objc_allocWithZone(NSSortDescriptor);
    v3 = sub_AB9260();

    v4 = [v2 initWithKey:v3 ascending:0];

    *(v1 + 32) = v4;
    return v1;
  }

  result = sub_ABAFD0();
  __break(1u);
  return result;
}

uint64_t sub_6932B0(char a1, void *a2, uint64_t a3)
{
  if ((a1 & 0xC0) == 0x80)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E10AA0, &unk_B19F90);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_AF82B0;
    sub_AB92A0();
    v4 = objc_allocWithZone(NSSortDescriptor);
    v5 = sub_AB9260();

    v6 = [v4 initWithKey:v5 ascending:0];

    *(v3 + 32) = v6;
    return v3;
  }

  else
  {
    result = sub_ABAFD0();
    __break(1u);
  }

  return result;
}

void *sub_6933C4(unsigned __int8 a1)
{
  v1 = a1 >> 6;
  if (v1 < 2)
  {
    return _swiftEmptyArrayStorage;
  }

  if (v1 == 2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E10AA0, &unk_B19F90);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_AF82B0;
    sub_AB92A0();
    v4 = objc_allocWithZone(NSSortDescriptor);
    v5 = sub_AB9260();

    v6 = [v4 initWithKey:v5 ascending:1];

    result = v3;
    *(v3 + 32) = v6;
  }

  else
  {
    if ((a1 & 0xFE) == 0xC0)
    {
      return _swiftEmptyArrayStorage;
    }

    if (qword_E0CE30 != -1)
    {
      swift_once();
    }

    if (qword_E71F50 >> 62)
    {
      sub_693640();

      v7 = sub_ABAFF0();
    }

    else
    {
      v7 = qword_E71F50;

      sub_ABB3E0();
      sub_693640();
    }

    return v7;
  }

  return result;
}

unint64_t _s9MusicCore11SortOptionsV0C4TypeO8rawValueAESgSS_tcfC_0(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_D1C490;
  v6._object = a2;
  v4 = sub_ABB140(v3, v6);

  if (v4 >= 0xD)
  {
    return 13;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_693598()
{
  result = qword_E11F68;
  if (!qword_E11F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E11F68);
  }

  return result;
}

unint64_t sub_6935EC()
{
  result = qword_E11F70;
  if (!qword_E11F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E11F70);
  }

  return result;
}

unint64_t sub_693640()
{
  result = qword_E10380;
  if (!qword_E10380)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_E10380);
  }

  return result;
}

unint64_t sub_693690()
{
  result = qword_E11F78;
  if (!qword_E11F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E11F78);
  }

  return result;
}

unint64_t sub_6936E8()
{
  result = qword_E11F80;
  if (!qword_E11F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E11F80);
  }

  return result;
}

unint64_t sub_693740()
{
  result = qword_E11F88;
  if (!qword_E11F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E11F88);
  }

  return result;
}

unint64_t sub_693798()
{
  result = qword_E11F90;
  if (!qword_E11F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E11F90);
  }

  return result;
}

unint64_t sub_6937F0()
{
  result = qword_E11F98;
  if (!qword_E11F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E11F98);
  }

  return result;
}

unint64_t sub_693848()
{
  result = qword_E11FA0;
  if (!qword_E11FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E11FA0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SortOptions.ContentType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x1D)
  {
    goto LABEL_17;
  }

  if (a2 + 227 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 227) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 227;
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

      return (*a1 | (v4 << 8)) - 227;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 227;
    }
  }

LABEL_17:
  v6 = ((*a1 >> 1) & 0x1C | (*a1 >> 6)) ^ 0x1F;
  if (v6 >= 0x1C)
  {
    v6 = -1;
  }

  return v6 + 1;
}

uint64_t storeEnumTagSinglePayload for SortOptions.ContentType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 227 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 227) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0x1D)
  {
    v4 = 0;
  }

  if (a2 > 0x1C)
  {
    v5 = ((a2 - 29) >> 8) + 1;
    *result = a2 - 29;
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
    *result = 8 * (((-a2 >> 2) & 7) - 8 * a2);
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_693A18(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = v1 >> 6;
  v3 = (v1 & 7) + 3;
  if (v2 == 3)
  {
    return v3;
  }

  else
  {
    return v2;
  }
}

_BYTE *sub_693A34(_BYTE *result, unsigned int a2)
{
  if (a2 < 3)
  {
    *result = *result & 7 | (a2 << 6);
  }

  else
  {
    *result = (a2 + 5) & 7 | 0xC0;
  }

  return result;
}

uint64_t static MPModelPlaylist.artworkPlaceholderSystemImageName(for:)(uint64_t a1, char a2)
{
  result = 0x6F6E2E636973756DLL;
  if ((a2 & 1) == 0)
  {
    v4 = a1 - 1;
    if (v4 <= 2)
    {
      return *&aGearshapgenius[8 * v4];
    }
  }

  return result;
}

uint64_t MPModelPlaylist.artworkPlaceholderImage.getter()
{
  v1 = 0x6F6E2E636973756DLL;
  if ([v0 hasLoadedValueForKey:MPModelPropertyPlaylistType])
  {
    v2 = [v0 type] - 1;
    if (v2 <= 2)
    {
      return *&aGearshapgenius[8 * v2];
    }
  }

  return v1;
}

id MPModelPlaylist.preferredArtworkCatalog.getter()
{
  if (![v0 hasLoadedValueForKey:MPModelPropertyPlaylistType])
  {
    goto LABEL_12;
  }

  v1 = [v0 type];
  if (v1 > 8)
  {
    goto LABEL_12;
  }

  if (((1 << v1) & 0x173) != 0)
  {
    result = MPModelPlaylist.coverArtworkCatalog.getter();
    if (!result)
    {
      result = [v0 artworkCatalog];
      if (!result)
      {
        if ([v0 hasLoadedValueForKey:MPModelPropertyPlaylistTracksTiledArtwork])
        {
          v3 = [v0 tracksTiledArtworkCatalogWithRows:2 columns:2];
          return v3;
        }

        return 0;
      }
    }

    return result;
  }

  if (v1 == 3)
  {
    return 0;
  }

  if (v1 != 7 || ![v0 hasLoadedValueForKey:MPModelPropertyPlaylistEditorialArtwork] || (result = objc_msgSend(v0, "editorialArtworkCatalog")) == 0)
  {
LABEL_12:
    v3 = [v0 artworkCatalog];
    return v3;
  }

  return result;
}

char *ModelObjectBackedStoreItemMetadata.init(modelObject:)(void *a1)
{
  v3 = OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObject;
  *&v1[OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObject] = 0;
  v4 = &v1[OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObjectStoreID];
  *v4 = 0;
  *(v4 + 1) = 0;
  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (v5)
  {
    v6 = [v5 anyObject];
    goto LABEL_5;
  }

  objc_opt_self();
  v7 = swift_dynamicCastObjCClass();
  if (v7)
  {
    v6 = [v7 innerObject];
LABEL_5:
    v8 = v6;
    if (v8)
    {
      goto LABEL_7;
    }
  }

  v8 = a1;
LABEL_7:
  v9 = v8;
  ObjectType = swift_getObjectType();
  v11 = [v9 identifiers];
  v12 = static MPIdentifierSet.bestIdentifier<A>(for:purpose:identifiers:)(ObjectType, 2, 0, v11);
  v14 = v13;

  if (v14)
  {
    v21.receiver = v1;
    v21.super_class = type metadata accessor for ModelObjectBackedStoreItemMetadata();
    v15 = objc_msgSendSuper2(&v21, "init");
    v16 = OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObject;
    swift_beginAccess();
    v17 = *&v15[v16];
    *&v15[v16] = a1;
    v18 = v15;

    v19 = &v18[OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObjectStoreID];
    swift_beginAccess();
    *v19 = v12;
    *(v19 + 1) = v14;
  }

  else
  {

    type metadata accessor for ModelObjectBackedStoreItemMetadata();
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v18;
}

id ModelObjectBackedStoreItemMetadata.__allocating_init(storePlatformDictionary:parentStoreItemMetadata:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  isa = sub_AB8FD0().super.isa;

  v6 = [v4 initWithStorePlatformDictionary:isa parentStoreItemMetadata:a2];

  return v6;
}

id ModelObjectBackedStoreItemMetadata.init(storePlatformDictionary:parentStoreItemMetadata:)(uint64_t a1, void *a2)
{
  *&v2[OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObject] = 0;
  v4 = &v2[OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObjectStoreID];
  *v4 = 0;
  *(v4 + 1) = 0;
  isa = sub_AB8FD0().super.isa;

  v8.receiver = v2;
  v8.super_class = type metadata accessor for ModelObjectBackedStoreItemMetadata();
  v6 = objc_msgSendSuper2(&v8, "initWithStorePlatformDictionary:parentStoreItemMetadata:", isa, a2);

  return v6;
}

id ModelObjectBackedStoreItemMetadata.__allocating_init(storePlatformDictionary:expirationDate:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5.super.isa = sub_AB8FD0().super.isa;

  v6 = sub_AB3430();
  v7 = *(v6 - 8);
  isa = 0;
  if ((*(v7 + 48))(a2, 1, v6) != 1)
  {
    isa = sub_AB3370().super.isa;
    (*(v7 + 8))(a2, v6);
  }

  v9 = [objc_allocWithZone(v3) initWithStorePlatformDictionary:v5.super.isa expirationDate:isa];

  return v9;
}

id ModelObjectBackedStoreItemMetadata.init(storePlatformDictionary:expirationDate:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0FF60, &qword_B1BCA0);
  __chkstk_darwin();
  v6 = &v15 - v5;
  *&v3[OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObject] = 0;
  v7 = &v3[OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObjectStoreID];
  *v7 = 0;
  *(v7 + 1) = 0;
  v8.super.isa = sub_AB8FD0().super.isa;

  sub_5E41F0(a2, v6);
  v9 = sub_AB3430();
  v10 = *(v9 - 8);
  isa = 0;
  if ((*(v10 + 48))(v6, 1, v9) != 1)
  {
    isa = sub_AB3370().super.isa;
    (*(v10 + 8))(v6, v9);
  }

  v12 = type metadata accessor for ModelObjectBackedStoreItemMetadata();
  v15.receiver = v3;
  v15.super_class = v12;
  v13 = objc_msgSendSuper2(&v15, "initWithStorePlatformDictionary:expirationDate:", v8.super.isa, isa);

  sub_12E1C(a2, &qword_E0FF60, &qword_B1BCA0);
  return v13;
}

id ModelObjectBackedStoreItemMetadata.__allocating_init(storePlatformDictionary:parentStoreItemMetadata:expirationDate:)(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v7.super.isa = sub_AB8FD0().super.isa;

  v8 = sub_AB3430();
  v9 = *(v8 - 8);
  isa = 0;
  if ((*(v9 + 48))(a3, 1, v8) != 1)
  {
    isa = sub_AB3370().super.isa;
    (*(v9 + 8))(a3, v8);
  }

  v11 = [objc_allocWithZone(v4) initWithStorePlatformDictionary:v7.super.isa parentStoreItemMetadata:a2 expirationDate:isa];

  return v11;
}

id ModelObjectBackedStoreItemMetadata.init(storePlatformDictionary:parentStoreItemMetadata:expirationDate:)(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = sub_69D4C4(a1, a2, a3);

  return v4;
}

id sub_6948D4(uint64_t a1, SEL *a2)
{
  v4 = objc_allocWithZone(v2);
  isa = sub_AB8FD0().super.isa;

  v6 = [v4 *a2];

  return v6;
}

id sub_694964(uint64_t a1, SEL *a2)
{
  *&v2[OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObject] = 0;
  v4 = &v2[OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObjectStoreID];
  *v4 = 0;
  *(v4 + 1) = 0;
  isa = sub_AB8FD0().super.isa;

  v8.receiver = v2;
  v8.super_class = type metadata accessor for ModelObjectBackedStoreItemMetadata();
  v6 = objc_msgSendSuper2(&v8, *a2, isa);

  return v6;
}

id sub_694A10(char *a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  sub_AB8FF0();
  *&a1[OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObject] = 0;
  v6 = &a1[OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObjectStoreID];
  *v6 = 0;
  *(v6 + 1) = 0;
  isa = sub_AB8FD0().super.isa;

  v10.receiver = a1;
  v10.super_class = type metadata accessor for ModelObjectBackedStoreItemMetadata();
  v8 = objc_msgSendSuper2(&v10, *a4, isa);

  return v8;
}

void ModelObjectBackedStoreItemMetadata.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObject) = 0;
  v1 = (v0 + OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObjectStoreID);
  *v1 = 0;
  v1[1] = 0;
  sub_ABAFD0();
  __break(1u);
}

void *ModelObjectBackedStoreItemMetadata.modelObject.getter()
{
  v1 = OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObject;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void ModelObjectBackedStoreItemMetadata.modelObject.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObject;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t ModelObjectBackedStoreItemMetadata.modelObjectStoreID.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObjectStoreID);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

double ModelObjectBackedStoreItemMetadata.modelObjectStoreID.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObjectStoreID);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  return result;
}

char *ModelObjectBackedStoreItemMetadata.appending(_:)(uint64_t a1)
{
  v14.receiver = v1;
  v14.super_class = type metadata accessor for ModelObjectBackedStoreItemMetadata();
  v3 = objc_msgSendSuper2(&v14, "metadataByAppendingMetadata:", a1);
  v4 = OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObject;
  swift_beginAccess();
  v5 = *&v1[v4];
  v6 = OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObject;
  swift_beginAccess();
  v7 = *&v3[v6];
  *&v3[v6] = v5;
  v8 = v5;

  v9 = &v1[OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObjectStoreID];
  swift_beginAccess();
  v11 = *v9;
  v10 = *(v9 + 1);
  v12 = &v3[OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObjectStoreID];
  swift_beginAccess();
  *v12 = v11;
  *(v12 + 1) = v10;

  return v3;
}

void ModelObjectBackedStoreItemMetadata.artistName.getter()
{
  v8[0] = 0;
  v8[1] = 0;
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = v8;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_69D6B8;
  *(v3 + 24) = v2;
  v7[4] = sub_2D4D0;
  v7[5] = v3;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 1107296256;
  v7[2] = sub_1822E0;
  v7[3] = &block_descriptor_189;
  v4 = _Block_copy(v7);
  v5 = v0;

  [v1 performWithoutEnforcement:v4];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
  }
}

void sub_69519C(uint64_t a1, void *a2)
{
  v4 = OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObject;
  swift_beginAccess();
  v5 = *(a1 + v4);
  if (v5)
  {
    objc_opt_self();
    v6 = swift_dynamicCastObjCClass();
    if (v6)
    {
      v7 = v6;
      v8 = v5;
      v9 = [v7 artist];
      if (v9)
      {
LABEL_7:
        v12 = v9;
        v13 = [v9 name];

        if (v13)
        {
          v14 = sub_AB92A0();
          v16 = v15;

LABEL_12:
          *a2 = v14;
          a2[1] = v16;

          return;
        }
      }

LABEL_9:

      goto LABEL_10;
    }

    objc_opt_self();
    v10 = swift_dynamicCastObjCClass();
    if (v10)
    {
      v11 = v10;
      v8 = v5;
      v9 = [v11 artist];
      if (v9)
      {
        goto LABEL_7;
      }

      goto LABEL_9;
    }

    objc_opt_self();
    v17 = swift_dynamicCastObjCClass();
    if (v17)
    {
      v18 = v17;
      v19 = v5;
      v20 = [v18 show];
      v21 = v20;
      if (!v20)
      {
        v22 = [v18 season];
        v14 = [v22 show];

        if (!v14)
        {

          goto LABEL_11;
        }

        v21 = v14;
        v20 = 0;
      }

      v23 = v20;
      v24 = [v21 title];

      if (v24)
      {
        v14 = sub_AB92A0();
        v16 = v25;

        goto LABEL_12;
      }

LABEL_10:
      v14 = 0;
LABEL_11:
      v16 = 0;
      goto LABEL_12;
    }
  }
}

void ModelObjectBackedStoreItemMetadata.artistStoreID.getter(uint64_t a1@<X8>)
{
  v25 = 0;
  v3 = objc_opt_self();
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = &v25;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_69D6D8;
  *(v5 + 24) = v4;
  aBlock[4] = sub_36C08;
  aBlock[5] = v5;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1822E0;
  aBlock[3] = &block_descriptor_13_4;
  v6 = _Block_copy(aBlock);
  v7 = v1;

  [v3 performWithoutEnforcement:v6];
  _Block_release(v6);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    v9 = v25;
    if (!v25)
    {
      goto LABEL_11;
    }

    objc_opt_self();
    v10 = swift_dynamicCastObjCClass();
    if (v10)
    {
      v11 = v10;
      v12 = v9;
      v13 = [v11 anyObject];
    }

    else
    {
      objc_opt_self();
      v14 = swift_dynamicCastObjCClass();
      v15 = v9;
      if (!v14)
      {
LABEL_8:
        v16 = v9;
LABEL_9:
        v17 = v16;
        ObjectType = swift_getObjectType();
        v19 = [v17 identifiers];
        v20 = static MPIdentifierSet.bestIdentifier<A>(for:purpose:identifiers:)(ObjectType, 2, 0, v19);
        v22 = v21;

        if (v22)
        {
          *(a1 + 24) = &type metadata for String;
          *a1 = v20;
          *(a1 + 8) = v22;
LABEL_12:
          v23 = v25;

          return;
        }

LABEL_11:
        *a1 = 0u;
        *(a1 + 16) = 0u;
        goto LABEL_12;
      }

      v13 = [v14 innerObject];
    }

    v16 = v13;
    if (v16)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  __break(1u);
}

void sub_695674(uint64_t a1, void **a2)
{
  v4 = OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObject;
  swift_beginAccess();
  v5 = *(a1 + v4);
  if (v5)
  {
    objc_opt_self();
    v6 = swift_dynamicCastObjCClass();
    if (v6 || (objc_opt_self(), (v6 = swift_dynamicCastObjCClass()) != 0))
    {
      v7 = [v6 artist];
LABEL_5:
      v8 = *a2;
      *a2 = v7;

      return;
    }

    objc_opt_self();
    v9 = swift_dynamicCastObjCClass();
    if (v9)
    {
      v10 = v9;
      v11 = v5;
      v12 = [v10 show];
      if (v12)
      {
        v13 = v12;

        v7 = v13;
      }

      else
      {
        v14 = [v10 season];
        if (v14)
        {
          v15 = v14;
          v16 = [v14 show];

          v7 = v16;
        }

        else
        {

          v7 = 0;
        }
      }

      goto LABEL_5;
    }
  }
}

void ModelObjectBackedStoreItemMetadata.audioTraits.getter()
{
  v8 = _swiftEmptyArrayStorage;
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = &v8;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_69D6E0;
  *(v3 + 24) = v2;
  aBlock[4] = sub_36C08;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1822E0;
  aBlock[3] = &block_descriptor_23_4;
  v4 = _Block_copy(aBlock);
  v5 = v0;

  [v1 performWithoutEnforcement:v4];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
  }
}

void sub_6959B4(uint64_t a1, char **a2)
{
  v4 = OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObject;
  swift_beginAccess();
  v5 = *(a1 + v4);
  if (!v5)
  {
    return;
  }

  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (v6)
  {
    goto LABEL_3;
  }

  objc_opt_self();
  v29 = swift_dynamicCastObjCClass();
  if (!v29)
  {
    objc_opt_self();
    v6 = swift_dynamicCastObjCClass();
    if (!v6)
    {
      return;
    }

LABEL_3:
    v7 = v6;
    v8 = v5;
    if (([v7 traits] & 0x10) != 0)
    {
      v9 = *a2;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *a2 = v9;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v9 = sub_506314(0, *(v9 + 2) + 1, 1, v9);
        *a2 = v9;
      }

      v11 = *(v9 + 2);
      v12 = *(v9 + 3);
      v13 = v11 + 1;
      if (v11 >= v12 >> 1)
      {
        v62 = v11 + 1;
        v50 = v9;
        v51 = *(v9 + 2);
        v52 = sub_506314((v12 > 1), v11 + 1, 1, v50);
        v11 = v51;
        v13 = v62;
        v9 = v52;
        *a2 = v52;
      }

      *(v9 + 2) = v13;
      v14 = &v9[16 * v11];
      *(v14 + 4) = 0x736F6D7461;
      *(v14 + 5) = 0xE500000000000000;
    }

    if (([v7 traits] & 4) != 0)
    {
      v15 = *a2;
      v16 = swift_isUniquelyReferenced_nonNull_native();
      *a2 = v15;
      if ((v16 & 1) == 0)
      {
        v15 = sub_506314(0, *(v15 + 2) + 1, 1, v15);
        *a2 = v15;
      }

      v17 = *(v15 + 2);
      v18 = *(v15 + 3);
      v19 = v17 + 1;
      if (v17 >= v18 >> 1)
      {
        v63 = v17 + 1;
        v53 = v15;
        v54 = *(v15 + 2);
        v55 = sub_506314((v18 > 1), v17 + 1, 1, v53);
        v17 = v54;
        v19 = v63;
        v15 = v55;
        *a2 = v55;
      }

      *(v15 + 2) = v19;
      v20 = &v15[16 * v17];
      *(v20 + 4) = 0x6C2D7365722D6968;
      *(v20 + 5) = 0xEF7373656C73736FLL;
    }

    if (([v7 traits] & 2) == 0)
    {
      goto LABEL_29;
    }

    v21 = *a2;
    v22 = swift_isUniquelyReferenced_nonNull_native();
    *a2 = v21;
    if ((v22 & 1) == 0)
    {
      v21 = sub_506314(0, *(v21 + 2) + 1, 1, v21);
      *a2 = v21;
    }

    v23 = *(v21 + 2);
    v24 = *(v21 + 3);
    v25 = v23 + 1;
    if (v23 >= v24 >> 1)
    {
      v62 = v23 + 1;
      v56 = v21;
      v57 = *(v21 + 2);
      v58 = sub_506314((v24 > 1), v23 + 1, 1, v56);
      v23 = v57;
      v25 = v62;
      v21 = v58;
      *a2 = v58;
    }

    *(v21 + 2) = v25;
    v26 = &v21[16 * v23];
    v27 = 0x7373656C73736F6CLL;
    v28 = 0xE800000000000000;
    goto LABEL_28;
  }

  v7 = v29;
  v8 = v5;
  if (([v7 traits] & 0x10) != 0)
  {
    v30 = *a2;
    v31 = swift_isUniquelyReferenced_nonNull_native();
    *a2 = v30;
    if ((v31 & 1) == 0)
    {
      v30 = sub_506314(0, *(v30 + 2) + 1, 1, v30);
      *a2 = v30;
    }

    v32 = *(v30 + 2);
    v33 = *(v30 + 3);
    v34 = v32 + 1;
    if (v32 >= v33 >> 1)
    {
      v62 = v32 + 1;
      v59 = v30;
      v60 = *(v30 + 2);
      v61 = sub_506314((v33 > 1), v32 + 1, 1, v59);
      v32 = v60;
      v34 = v62;
      v30 = v61;
      *a2 = v61;
    }

    *(v30 + 2) = v34;
    v26 = &v30[16 * v32];
    v27 = 0x736F6D7461;
    v28 = 0xE500000000000000;
LABEL_28:
    *(v26 + 4) = v27;
    *(v26 + 5) = v28;
  }

LABEL_29:
  if (([v7 traits] & 8) != 0)
  {
    v35 = *a2;
    v36 = swift_isUniquelyReferenced_nonNull_native();
    *a2 = v35;
    if ((v36 & 1) == 0)
    {
      v35 = sub_506314(0, *(v35 + 2) + 1, 1, v35);
      *a2 = v35;
    }

    v37 = *(v35 + 2);
    v38 = *(v35 + 3);
    v39 = v37 + 1;
    if (v37 >= v38 >> 1)
    {
      v64 = v37 + 1;
      v47 = v35;
      v48 = *(v35 + 2);
      v49 = sub_506314((v38 > 1), v37 + 1, 1, v47);
      v37 = v48;
      v39 = v64;
      v35 = v49;
      *a2 = v49;
    }

    *(v35 + 2) = v39;
    v40 = &v35[16 * v37];
    *(v40 + 4) = 0x6C616974617073;
    *(v40 + 5) = 0xE700000000000000;
  }

  if (([v7 traits] & 0x20) != 0)
  {
    v41 = *a2;
    v42 = swift_isUniquelyReferenced_nonNull_native();
    *a2 = v41;
    if ((v42 & 1) == 0)
    {
      v41 = sub_506314(0, *(v41 + 2) + 1, 1, v41);
      *a2 = v41;
    }

    v44 = *(v41 + 2);
    v43 = *(v41 + 3);
    if (v44 >= v43 >> 1)
    {
      *a2 = sub_506314((v43 > 1), v44 + 1, 1, v41);
    }

    v45 = *a2;
    *(v45 + 2) = v44 + 1;
    v46 = &v45[16 * v44];
    *(v46 + 4) = 0x646E756F72727573;
    *(v46 + 5) = 0xE800000000000000;
  }

  else
  {
  }
}

void ModelObjectBackedStoreItemMetadata.isBeats1.getter()
{
  v8 = 0;
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = &v8;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_69D6E8;
  *(v3 + 24) = v2;
  aBlock[4] = sub_36C08;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1822E0;
  aBlock[3] = &block_descriptor_33_2;
  v4 = _Block_copy(aBlock);
  v5 = v0;

  [v1 performWithoutEnforcement:v4];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
  }
}

void ModelObjectBackedStoreItemMetadata.collectionName.getter()
{
  v8[0] = 0;
  v8[1] = 0;
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = v8;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_69D714;
  *(v3 + 24) = v2;
  v7[4] = sub_36C08;
  v7[5] = v3;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 1107296256;
  v7[2] = sub_1822E0;
  v7[3] = &block_descriptor_43_10;
  v4 = _Block_copy(v7);
  v5 = v0;

  [v1 performWithoutEnforcement:v4];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
  }
}

void ModelObjectBackedStoreItemMetadata.collectionStoreID.getter(uint64_t a1@<X8>)
{
  v25 = 0;
  v3 = objc_opt_self();
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = &v25;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_69D740;
  *(v5 + 24) = v4;
  aBlock[4] = sub_36C08;
  aBlock[5] = v5;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1822E0;
  aBlock[3] = &block_descriptor_53_1;
  v6 = _Block_copy(aBlock);
  v7 = v1;

  [v3 performWithoutEnforcement:v6];
  _Block_release(v6);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    v9 = v25;
    if (!v25)
    {
      goto LABEL_11;
    }

    objc_opt_self();
    v10 = swift_dynamicCastObjCClass();
    if (v10)
    {
      v11 = v10;
      v12 = v9;
      v13 = [v11 anyObject];
    }

    else
    {
      objc_opt_self();
      v14 = swift_dynamicCastObjCClass();
      v15 = v9;
      if (!v14)
      {
LABEL_8:
        v16 = v9;
LABEL_9:
        v17 = v16;
        ObjectType = swift_getObjectType();
        v19 = [v17 identifiers];
        v20 = static MPIdentifierSet.bestIdentifier<A>(for:purpose:identifiers:)(ObjectType, 2, 0, v19);
        v22 = v21;

        if (v22)
        {
          *(a1 + 24) = &type metadata for String;
          *a1 = v20;
          *(a1 + 8) = v22;
LABEL_12:
          v23 = v25;

          return;
        }

LABEL_11:
        *a1 = 0u;
        *(a1 + 16) = 0u;
        goto LABEL_12;
      }

      v13 = [v14 innerObject];
    }

    v16 = v13;
    if (v16)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  __break(1u);
}

void sub_696450(uint64_t a1, void **a2)
{
  v4 = OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObject;
  swift_beginAccess();
  if (*(a1 + v4))
  {
    objc_opt_self();
    v5 = swift_dynamicCastObjCClass();
    if (v5)
    {
      v6 = &selRef_album;
    }

    else
    {
      objc_opt_self();
      v5 = swift_dynamicCastObjCClass();
      if (!v5)
      {
        return;
      }

      v6 = &selRef_season;
    }

    v7 = [v5 *v6];
    v8 = *a2;
    *a2 = v7;
  }
}

void ModelObjectBackedStoreItemMetadata.isCompilation.getter()
{
  v8 = 0;
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = &v8;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_69D748;
  *(v3 + 24) = v2;
  aBlock[4] = sub_36C08;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1822E0;
  aBlock[3] = &block_descriptor_63_3;
  v4 = _Block_copy(aBlock);
  v5 = v0;

  [v1 performWithoutEnforcement:v4];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
  }
}

void ModelObjectBackedStoreItemMetadata.composerName.getter()
{
  v8[0] = 0;
  v8[1] = 0;
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = v8;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_69D774;
  *(v3 + 24) = v2;
  v7[4] = sub_36C08;
  v7[5] = v3;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 1107296256;
  v7[2] = sub_1822E0;
  v7[3] = &block_descriptor_73_0;
  v4 = _Block_copy(v7);
  v5 = v0;

  [v1 performWithoutEnforcement:v4];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
  }
}

double sub_696840(uint64_t a1, uint64_t *a2, SEL *a3, const char **a4)
{
  v8 = OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObject;
  swift_beginAccess();
  v10 = *(a1 + v8);
  if (v10)
  {
    objc_opt_self();
    v11 = swift_dynamicCastObjCClass();
    if (v11)
    {
      v12 = v11;
      v13 = v10;
      v14 = [v12 *a3];
      if (v14 && (v15 = *a4, v16 = v14, v17 = [v14 v15], v16, v17))
      {
        v18 = sub_AB92A0();
        v20 = v19;
      }

      else
      {

        v18 = 0;
        v20 = 0;
      }

      *a2 = v18;
      a2[1] = v20;
    }
  }

  return result;
}

void ModelObjectBackedStoreItemMetadata.copyrightText.getter()
{
  v8[0] = 0;
  v8[1] = 0;
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = v8;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_69D7A0;
  *(v3 + 24) = v2;
  v7[4] = sub_36C08;
  v7[5] = v3;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 1107296256;
  v7[2] = sub_1822E0;
  v7[3] = &block_descriptor_83;
  v4 = _Block_copy(v7);
  v5 = v0;

  [v1 performWithoutEnforcement:v4];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
  }
}

void ModelObjectBackedStoreItemMetadata.curatorName.getter()
{
  v8[0] = 0;
  v8[1] = 0;
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = v8;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_69D7D8;
  *(v3 + 24) = v2;
  v7[4] = sub_36C08;
  v7[5] = v3;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 1107296256;
  v7[2] = sub_1822E0;
  v7[3] = &block_descriptor_93_0;
  v4 = _Block_copy(v7);
  v5 = v0;

  [v1 performWithoutEnforcement:v4];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
  }
}

double sub_696C54(uint64_t a1, uint64_t *a2)
{
  v4 = OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObject;
  swift_beginAccess();
  v6 = *(a1 + v4);
  if (v6)
  {
    objc_opt_self();
    v7 = swift_dynamicCastObjCClass();
    if (v7)
    {
      v8 = v7;
      v9 = v6;
      v10 = [v8 curator];
      if (v10)
      {
        v11 = v10;
        v12 = [v10 name];
        if (v12)
        {
          v13 = v12;
          v14 = sub_AB92A0();
          v16 = v15;
        }

        else
        {
          v17 = [v11 shortName];
          if (v17)
          {
            v18 = v17;
            v14 = sub_AB92A0();
            v16 = v19;
          }

          else
          {

            v14 = 0;
            v16 = 0;
          }
        }

        *a2 = v14;
        a2[1] = v16;
      }

      else
      {
      }
    }
  }

  return result;
}

void ModelObjectBackedStoreItemMetadata.descriptionText.getter()
{
  v8[0] = 0;
  v8[1] = 0;
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = v8;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_69D7E0;
  *(v3 + 24) = v2;
  v7[4] = sub_36C08;
  v7[5] = v3;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 1107296256;
  v7[2] = sub_1822E0;
  v7[3] = &block_descriptor_103_1;
  v4 = _Block_copy(v7);
  v5 = v0;

  [v1 performWithoutEnforcement:v4];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
  }
}

double sub_696F20(uint64_t a1, uint64_t *a2)
{
  v4 = OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObject;
  swift_beginAccess();
  v6 = *(a1 + v4);
  if (v6)
  {
    objc_opt_self();
    v7 = swift_dynamicCastObjCClass();
    if (v7)
    {
      v8 = v7;
      v9 = v6;
      v10 = [v8 descriptionText];
      if (!v10)
      {
        goto LABEL_13;
      }
    }

    else
    {
      objc_opt_self();
      v11 = swift_dynamicCastObjCClass();
      if (v11)
      {
        v12 = v11;
        v9 = v6;
        v10 = [v12 descriptionText];
        if (!v10)
        {
          goto LABEL_13;
        }
      }

      else
      {
        objc_opt_self();
        v13 = swift_dynamicCastObjCClass();
        if (v13)
        {
          v14 = v13;
          v9 = v6;
          v10 = [v14 descriptionText];
          if (!v10)
          {
LABEL_13:

            v16 = 0;
            v18 = 0;
            goto LABEL_14;
          }
        }

        else
        {
          objc_opt_self();
          v19 = swift_dynamicCastObjCClass();
          if (!v19)
          {
            return result;
          }

          v20 = v19;
          v9 = v6;
          v10 = [v20 descriptionText];
          if (!v10)
          {
            goto LABEL_13;
          }
        }
      }
    }

    v15 = v10;
    v16 = sub_AB92A0();
    v18 = v17;

LABEL_14:
    *a2 = v16;
    a2[1] = v18;
  }

  return result;
}

void ModelObjectBackedStoreItemMetadata.discCount.getter()
{
  v8 = 0;
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = &v8;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_69D7E8;
  *(v3 + 24) = v2;
  aBlock[4] = sub_36C08;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1822E0;
  aBlock[3] = &block_descriptor_113;
  v4 = _Block_copy(aBlock);
  v5 = v0;

  [v1 performWithoutEnforcement:v4];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
  }
}

void ModelObjectBackedStoreItemMetadata.discNumber.getter()
{
  v8 = 0;
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = &v8;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_69D824;
  *(v3 + 24) = v2;
  aBlock[4] = sub_36C08;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1822E0;
  aBlock[3] = &block_descriptor_123_2;
  v4 = _Block_copy(aBlock);
  v5 = v0;

  [v1 performWithoutEnforcement:v4];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
  }
}

void ModelObjectBackedStoreItemMetadata.duration.getter()
{
  v8 = 0;
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = &v8;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_69D850;
  *(v3 + 24) = v2;
  aBlock[4] = sub_36C08;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1822E0;
  aBlock[3] = &block_descriptor_133_0;
  v4 = _Block_copy(aBlock);
  v5 = v0;

  [v1 performWithoutEnforcement:v4];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
  }
}

void sub_6975C8(uint64_t a1, void *a2)
{
  v4 = OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObject;
  swift_beginAccess();
  if (*(a1 + v4))
  {
    objc_opt_self();
    v5 = swift_dynamicCastObjCClass();
    if (v5 || (objc_opt_self(), (v5 = swift_dynamicCastObjCClass()) != 0) || (objc_opt_self(), (v5 = swift_dynamicCastObjCClass()) != 0))
    {
      [v5 duration];
      *a2 = v6;
    }
  }
}

void ModelObjectBackedStoreItemMetadata.editorNotes.getter()
{
  v8[0] = 0;
  v8[1] = 0;
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = v8;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_69D858;
  *(v3 + 24) = v2;
  v7[4] = sub_36C08;
  v7[5] = v3;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 1107296256;
  v7[2] = sub_1822E0;
  v7[3] = &block_descriptor_143_0;
  v4 = _Block_copy(v7);
  v5 = v0;

  [v1 performWithoutEnforcement:v4];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
  }
}

double sub_697810(uint64_t a1, uint64_t *a2, SEL *a3)
{
  v6 = OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObject;
  swift_beginAccess();
  v8 = *(a1 + v6);
  if (v8)
  {
    objc_opt_self();
    v9 = swift_dynamicCastObjCClass();
    if (v9)
    {
      v10 = v9;
      v11 = v8;
      v12 = [v10 *a3];
      if (!v12)
      {
        goto LABEL_13;
      }
    }

    else
    {
      objc_opt_self();
      v13 = swift_dynamicCastObjCClass();
      if (v13)
      {
        v14 = v13;
        v11 = v8;
        v12 = [v14 *a3];
        if (!v12)
        {
          goto LABEL_13;
        }
      }

      else
      {
        objc_opt_self();
        v15 = swift_dynamicCastObjCClass();
        if (v15)
        {
          v16 = v15;
          v11 = v8;
          v12 = [v16 *a3];
          if (!v12)
          {
LABEL_13:

            v18 = 0;
            v20 = 0;
            goto LABEL_14;
          }
        }

        else
        {
          objc_opt_self();
          v21 = swift_dynamicCastObjCClass();
          if (!v21)
          {
            return result;
          }

          v22 = v21;
          v11 = v8;
          v12 = [v22 *a3];
          if (!v12)
          {
            goto LABEL_13;
          }
        }
      }
    }

    v17 = v12;
    v18 = sub_AB92A0();
    v20 = v19;

LABEL_14:
    *a2 = v18;
    a2[1] = v20;
  }

  return result;
}

void ModelObjectBackedStoreItemMetadata.shortEditorNotes.getter()
{
  v8[0] = 0;
  v8[1] = 0;
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = v8;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_69D87C;
  *(v3 + 24) = v2;
  v7[4] = sub_36C08;
  v7[5] = v3;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 1107296256;
  v7[2] = sub_1822E0;
  v7[3] = &block_descriptor_153_1;
  v4 = _Block_copy(v7);
  v5 = v0;

  [v1 performWithoutEnforcement:v4];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
  }
}

void ModelObjectBackedStoreItemMetadata.episodeCount.getter()
{
  v8 = 0;
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = &v8;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_69D8A0;
  *(v3 + 24) = v2;
  aBlock[4] = sub_36C08;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1822E0;
  aBlock[3] = &block_descriptor_163;
  v4 = _Block_copy(aBlock);
  v5 = v0;

  [v1 performWithoutEnforcement:v4];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
  }
}

void ModelObjectBackedStoreItemMetadata.explicitRating.getter()
{
  v8 = 0;
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = &v8;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_69D8CC;
  *(v3 + 24) = v2;
  aBlock[4] = sub_36C08;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1822E0;
  aBlock[3] = &block_descriptor_173_0;
  v4 = _Block_copy(aBlock);
  v5 = v0;

  [v1 performWithoutEnforcement:v4];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
  }
}

void sub_697E84(uint64_t a1, void *a2)
{
  v4 = OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObject;
  swift_beginAccess();
  if (*(a1 + v4))
  {
    objc_opt_self();
    v5 = swift_dynamicCastObjCClass();
    if (v5 || (objc_opt_self(), (v5 = swift_dynamicCastObjCClass()) != 0))
    {
      *a2 = [v5 explicitRating];
    }
  }
}

void ModelObjectBackedStoreItemMetadata.genreNames.getter()
{
  v15 = 0;
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = &v15;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_69D8D4;
  *(v3 + 24) = v2;
  aBlock[4] = sub_36C08;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1822E0;
  aBlock[3] = &block_descriptor_183_0;
  v4 = _Block_copy(aBlock);
  v5 = v0;

  [v1 performWithoutEnforcement:v4];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    if (v15)
    {
      v7 = [v15 name];
      if (v7)
      {
        v8 = v7;
        v9 = sub_AB92A0();
        v11 = v10;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0FD00, &qword_B1B4D8);
        v12 = swift_allocObject();
        *(v12 + 16) = xmmword_AF4EC0;
        *(v12 + 56) = &type metadata for String;
        *(v12 + 32) = v9;
        *(v12 + 40) = v11;
      }
    }

    v13 = v15;
  }
}

void sub_698184(uint64_t a1, void **a2)
{
  v4 = OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObject;
  swift_beginAccess();
  if (*(a1 + v4))
  {
    objc_opt_self();
    v5 = swift_dynamicCastObjCClass();
    if (v5 || (objc_opt_self(), (v5 = swift_dynamicCastObjCClass()) != 0) || (objc_opt_self(), (v5 = swift_dynamicCastObjCClass()) != 0))
    {
      v6 = [v5 genre];
      v7 = *a2;
      *a2 = v6;
    }
  }
}

void ModelObjectBackedStoreItemMetadata.handle.getter()
{
  v8[0] = 0;
  v8[1] = 0;
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = v8;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_69D8DC;
  *(v3 + 24) = v2;
  v7[4] = sub_36C08;
  v7[5] = v3;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 1107296256;
  v7[2] = sub_1822E0;
  v7[3] = &block_descriptor_193_0;
  v4 = _Block_copy(v7);
  v5 = v0;

  [v1 performWithoutEnforcement:v4];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
  }
}

void ModelObjectBackedStoreItemMetadata.hasArtistBiography.getter()
{
  v8 = 0;
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = &v8;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_69D908;
  *(v3 + 24) = v2;
  aBlock[4] = sub_36C08;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1822E0;
  aBlock[3] = &block_descriptor_203;
  v4 = _Block_copy(aBlock);
  v5 = v0;

  [v1 performWithoutEnforcement:v4];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
  }
}

void ModelObjectBackedStoreItemMetadata.hasLyrics.getter()
{
  v8 = 0;
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = &v8;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_69D934;
  *(v3 + 24) = v2;
  aBlock[4] = sub_36C08;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1822E0;
  aBlock[3] = &block_descriptor_213_1;
  v4 = _Block_copy(aBlock);
  v5 = v0;

  [v1 performWithoutEnforcement:v4];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
  }
}

void sub_698724(uint64_t a1, unsigned __int8 *a2)
{
  v4 = OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObject;
  swift_beginAccess();
  v5 = *(a1 + v4);
  if (v5)
  {
    objc_opt_self();
    v6 = swift_dynamicCastObjCClass();
    if (v6)
    {
      v7 = v6;
      v8 = v5;
      v9 = [v7 lyrics];
      if (v9)
      {
        v10 = v9;
        v11 = [v9 hasStoreLyrics];

        *a2 = v11;
      }

      else
      {
      }
    }
  }
}

void ModelObjectBackedStoreItemMetadata.hasTimeSyncedLyrics.getter()
{
  v8 = 0;
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = &v8;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_69D93C;
  *(v3 + 24) = v2;
  aBlock[4] = sub_36C08;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1822E0;
  aBlock[3] = &block_descriptor_223_0;
  v4 = _Block_copy(aBlock);
  v5 = v0;

  [v1 performWithoutEnforcement:v4];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
  }
}

void sub_69898C(uint64_t a1, unsigned __int8 *a2)
{
  v4 = OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObject;
  swift_beginAccess();
  v5 = *(a1 + v4);
  if (v5)
  {
    objc_opt_self();
    v6 = swift_dynamicCastObjCClass();
    if (v6)
    {
      v7 = v6;
      v8 = v5;
      v9 = [v7 lyrics];
      if (v9)
      {
        v10 = v9;
        v11 = [v9 hasTimeSyncedLyrics];

        *a2 = v11;
      }

      else
      {
      }
    }
  }
}

void ModelObjectBackedStoreItemMetadata.hasSocialPosts.getter()
{
  v8 = 0;
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = &v8;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_69D944;
  *(v3 + 24) = v2;
  aBlock[4] = sub_36C08;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1822E0;
  aBlock[3] = &block_descriptor_233_0;
  v4 = _Block_copy(aBlock);
  v5 = v0;

  [v1 performWithoutEnforcement:v4];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
  }
}

void sub_698BF4(uint64_t a1, _BYTE *a2)
{
  v4 = OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObject;
  swift_beginAccess();
  if (*(a1 + v4))
  {
    objc_opt_self();
    v5 = swift_dynamicCastObjCClass();
    if (v5 || (objc_opt_self(), (v5 = swift_dynamicCastObjCClass()) != 0))
    {
      *a2 = [v5 hasSocialPosts];
    }
  }
}

void ModelObjectBackedStoreItemMetadata.isExplicitContent.getter()
{
  v8 = 0;
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = &v8;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_69D94C;
  *(v3 + 24) = v2;
  aBlock[4] = sub_36C08;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1822E0;
  aBlock[3] = &block_descriptor_243;
  v4 = _Block_copy(aBlock);
  v5 = v0;

  [v1 performWithoutEnforcement:v4];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
  }
}

void sub_698E38(uint64_t a1, _BYTE *a2)
{
  v4 = OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObject;
  swift_beginAccess();
  if (*(a1 + v4))
  {
    objc_opt_self();
    v5 = swift_dynamicCastObjCClass();
    if (!v5)
    {
      objc_opt_self();
      v5 = swift_dynamicCastObjCClass();
      if (!v5)
      {
        objc_opt_self();
        v5 = swift_dynamicCastObjCClass();
        if (v5)
        {
          v6 = &selRef_isExplicitSong;
          goto LABEL_5;
        }

        objc_opt_self();
        v5 = swift_dynamicCastObjCClass();
        if (!v5)
        {
          return;
        }
      }
    }

    v6 = &selRef_hasExplicitContent;
LABEL_5:
    *a2 = [v5 *v6];
  }
}

void ModelObjectBackedStoreItemMetadata.isMasteredForiTunes.getter()
{
  v8 = 0;
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = &v8;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_69D954;
  *(v3 + 24) = v2;
  aBlock[4] = sub_36C08;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1822E0;
  aBlock[3] = &block_descriptor_253_1;
  v4 = _Block_copy(aBlock);
  v5 = v0;

  [v1 performWithoutEnforcement:v4];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
  }
}

void sub_6990C8(uint64_t a1, _BYTE *a2)
{
  v4 = OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObject;
  swift_beginAccess();
  if (*(a1 + v4))
  {
    objc_opt_self();
    v5 = swift_dynamicCastObjCClass();
    if (v5 || (objc_opt_self(), (v5 = swift_dynamicCastObjCClass()) != 0))
    {
      *a2 = [v5 traits] & 1;
    }
  }
}

void ModelObjectBackedStoreItemMetadata.isPreorder.getter()
{
  v8 = 0;
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = &v8;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_69D95C;
  *(v3 + 24) = v2;
  aBlock[4] = sub_36C08;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1822E0;
  aBlock[3] = &block_descriptor_263_0;
  v4 = _Block_copy(aBlock);
  v5 = v0;

  [v1 performWithoutEnforcement:v4];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
  }
}

void ModelObjectBackedStoreItemMetadata.isPrivatePerson.getter()
{
  v8 = 0;
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = &v8;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_69D988;
  *(v3 + 24) = v2;
  aBlock[4] = sub_36C08;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1822E0;
  aBlock[3] = &block_descriptor_273_0;
  v4 = _Block_copy(aBlock);
  v5 = v0;

  [v1 performWithoutEnforcement:v4];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
  }
}

void ModelObjectBackedStoreItemMetadata.isVerifiedPerson.getter()
{
  v8 = 0;
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = &v8;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_69D9B4;
  *(v3 + 24) = v2;
  aBlock[4] = sub_36C08;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1822E0;
  aBlock[3] = &block_descriptor_283;
  v4 = _Block_copy(aBlock);
  v5 = v0;

  [v1 performWithoutEnforcement:v4];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
  }
}

void ModelObjectBackedStoreItemMetadata.isOnboardedPerson.getter()
{
  v8 = 0;
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = &v8;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_69D9E0;
  *(v3 + 24) = v2;
  aBlock[4] = sub_36C08;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1822E0;
  aBlock[3] = &block_descriptor_293;
  v4 = _Block_copy(aBlock);
  v5 = v0;

  [v1 performWithoutEnforcement:v4];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
  }
}

void sub_6997FC(uint64_t a1, _BYTE *a2)
{
  v4 = OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObject;
  swift_beginAccess();
  if (*(a1 + v4))
  {
    objc_opt_self();
    v5 = swift_dynamicCastObjCClass();
    if (v5)
    {
      *a2 = [v5 hasLightweightProfile] ^ 1;
    }
  }
}

void ModelObjectBackedStoreItemMetadata.itemKind.getter()
{
  v8[0] = 0;
  v8[1] = 0;
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = v8;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_69D9E8;
  *(v3 + 24) = v2;
  v7[4] = sub_36C08;
  v7[5] = v3;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 1107296256;
  v7[2] = sub_1822E0;
  v7[3] = &block_descriptor_303;
  v4 = _Block_copy(v7);
  v5 = v0;

  [v1 performWithoutEnforcement:v4];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
  }
}

void sub_699A10(uint64_t a1, uint64_t *a2)
{
  v4 = OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObject;
  swift_beginAccess();
  v5 = *(a1 + v4);
  if (v5)
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      goto LABEL_4;
    }

    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      goto LABEL_4;
    }

    objc_opt_self();
    v7 = swift_dynamicCastObjCClass();
    if (v7)
    {
      v8 = v7;
      v9 = v5;
      v10 = [v8 curatorKind];
      if (v10 <= 1)
      {
        if (!v10)
        {

          return;
        }

        if (v10 == (&dword_0 + 1))
        {
          goto LABEL_22;
        }
      }

      else if (v10 == (&dword_0 + 2) || v10 == (&dword_0 + 3) || v10 == &dword_4)
      {
        goto LABEL_22;
      }

      sub_ABAD90(24);
      v16._countAndFlagsBits = 0xD000000000000013;
      v16._object = 0x8000000000B4AB80;
      sub_AB94A0(v16);
      v17._object = 0x8000000000B6FD60;
      v17._countAndFlagsBits = 0xD000000000000012;
      sub_AB94A0(v17);
      v18._countAndFlagsBits = 32;
      v18._object = 0xE100000000000000;
      sub_AB94A0(v18);
      type metadata accessor for MPModelCuratorKind(0);
      sub_ABAF70();
      sub_ABAFD0();
      __break(1u);
      return;
    }

    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      goto LABEL_4;
    }

    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      goto LABEL_4;
    }

    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      goto LABEL_4;
    }

    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      goto LABEL_4;
    }

    objc_opt_self();
    v14 = swift_dynamicCastObjCClass();
    if (v14)
    {
      v15 = v14;
      v9 = v5;
      [v15 isArtistUploadedContent];
      [v15 hasVideo];
LABEL_22:
      v11 = sub_AB92A0();
      v13 = v12;

      *a2 = v11;
      a2[1] = v13;
      goto LABEL_5;
    }

    objc_opt_self();
    if (swift_dynamicCastObjCClass() || (objc_opt_self(), swift_dynamicCastObjCClass()) || (objc_opt_self(), swift_dynamicCastObjCClass()) || (objc_opt_self(), swift_dynamicCastObjCClass()))
    {
LABEL_4:
      *a2 = sub_AB92A0();
      a2[1] = v6;
LABEL_5:
    }
  }
}

void ModelObjectBackedStoreItemMetadata.lastModifiedDate.getter(uint64_t a1@<X8>)
{
  v3 = sub_AB3430();
  (*(*(v3 - 8) + 56))(a1, 1, 1, v3);
  v4 = objc_opt_self();
  v5 = swift_allocObject();
  *(v5 + 16) = v1;
  *(v5 + 24) = a1;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_69D9F0;
  *(v6 + 24) = v5;
  v10[4] = sub_36C08;
  v10[5] = v6;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_1822E0;
  v10[3] = &block_descriptor_313;
  v7 = _Block_copy(v10);
  v8 = v1;

  [v4 performWithoutEnforcement:v7];
  _Block_release(v7);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }
}

void sub_699FE0(uint64_t a1, uint64_t a2)
{
  v23 = a2;
  v3 = sub_AB36A0();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0FF60, &qword_B1BCA0);
  __chkstk_darwin();
  v8 = &v23 - v7;
  v9 = sub_AB2DC0();
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v14 = &v23 - v13;
  v15 = OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObject;
  swift_beginAccess();
  v16 = *(a1 + v15);
  if (v16)
  {
    objc_opt_self();
    v17 = swift_dynamicCastObjCClass();
    if (v17)
    {
      v18 = v17;
      v19 = v16;
      v20 = [v18 lastModifiedDateComponents];
      if (v20)
      {
        v21 = v20;
        sub_AB2D70();

        (*(v10 + 32))(v14, v12, v9);
        v22 = [objc_opt_self() storeServerCalendar];
        sub_AB3640();

        sub_AB3650();
        (*(v4 + 8))(v6, v3);
        (*(v10 + 8))(v14, v9);
        sub_160B4(v8, v23, &qword_E0FF60, &qword_B1BCA0);
      }

      else
      {
      }
    }
  }
}

void ModelObjectBackedStoreItemMetadata.movementCount.getter()
{
  v8 = 0;
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = &v8;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_69D9F8;
  *(v3 + 24) = v2;
  aBlock[4] = sub_36C08;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1822E0;
  aBlock[3] = &block_descriptor_323;
  v4 = _Block_copy(aBlock);
  v5 = v0;

  [v1 performWithoutEnforcement:v4];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
  }
}

void ModelObjectBackedStoreItemMetadata.movementName.getter()
{
  v8[0] = 0;
  v8[1] = 0;
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = v8;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_69DA24;
  *(v3 + 24) = v2;
  v7[4] = sub_36C08;
  v7[5] = v3;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 1107296256;
  v7[2] = sub_1822E0;
  v7[3] = &block_descriptor_333;
  v4 = _Block_copy(v7);
  v5 = v0;

  [v1 performWithoutEnforcement:v4];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
  }
}

void ModelObjectBackedStoreItemMetadata.movementNumber.getter()
{
  v8 = 0;
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = &v8;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_69DA50;
  *(v3 + 24) = v2;
  aBlock[4] = sub_36C08;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1822E0;
  aBlock[3] = &block_descriptor_343_0;
  v4 = _Block_copy(aBlock);
  v5 = v0;

  [v1 performWithoutEnforcement:v4];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
  }
}

void ModelObjectBackedStoreItemMetadata.name.getter()
{
  v8[0] = 0;
  v8[1] = 0;
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = v8;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_69DA7C;
  *(v3 + 24) = v2;
  v7[4] = sub_36C08;
  v7[5] = v3;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 1107296256;
  v7[2] = sub_1822E0;
  v7[3] = &block_descriptor_353;
  v4 = _Block_copy(v7);
  v5 = v0;

  [v1 performWithoutEnforcement:v4];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
  }
}

double sub_69A914(uint64_t a1, void *a2)
{
  v4 = OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObject;
  swift_beginAccess();
  v6 = *(a1 + v4);
  if (v6)
  {
    objc_opt_self();
    v7 = swift_dynamicCastObjCClass();
    if (v7)
    {
LABEL_15:
      v12 = v7;
      v10 = v6;
      v11 = [v12 title];
LABEL_16:
      v13 = v11;
      if (v13)
      {
LABEL_17:
        v14 = v13;
LABEL_18:
        v15 = sub_AB92A0();
        v17 = v16;

LABEL_27:
        *a2 = v15;
        a2[1] = v17;

        return result;
      }

      goto LABEL_25;
    }

    objc_opt_self();
    v8 = swift_dynamicCastObjCClass();
    if (!v8)
    {
      objc_opt_self();
      v8 = swift_dynamicCastObjCClass();
      if (!v8)
      {
        objc_opt_self();
        v7 = swift_dynamicCastObjCClass();
        if (v7)
        {
          goto LABEL_15;
        }

        objc_opt_self();
        v8 = swift_dynamicCastObjCClass();
        if (!v8)
        {
          objc_opt_self();
          v8 = swift_dynamicCastObjCClass();
          if (!v8)
          {
            objc_opt_self();
            v8 = swift_dynamicCastObjCClass();
            if (!v8)
            {
              objc_opt_self();
              v7 = swift_dynamicCastObjCClass();
              if (!v7)
              {
                objc_opt_self();
                v7 = swift_dynamicCastObjCClass();
                if (!v7)
                {
                  objc_opt_self();
                  v18 = swift_dynamicCastObjCClass();
                  if (v18)
                  {
                    v19 = v18;
                    v10 = v6;
                    v20 = [v19 show];
                    v15 = v20;
                    if (!v20)
                    {

                      goto LABEL_26;
                    }

                    v14 = [v20 title];

                    if (v14)
                    {
                      goto LABEL_18;
                    }
                  }

                  else
                  {
                    objc_opt_self();
                    v21 = swift_dynamicCastObjCClass();
                    if (!v21)
                    {
                      return result;
                    }

                    v22 = v21;
                    v10 = v6;
                    v13 = [v22 title];
                    if (v13)
                    {
                      goto LABEL_17;
                    }
                  }

LABEL_25:

                  v15 = 0;
LABEL_26:
                  v17 = 0;
                  goto LABEL_27;
                }
              }

              goto LABEL_15;
            }
          }
        }
      }
    }

    v9 = v8;
    v10 = v6;
    v11 = [v9 name];
    goto LABEL_16;
  }

  return result;
}

void ModelObjectBackedStoreItemMetadata.nameRaw.getter()
{
  v8[0] = 0;
  v8[1] = 0;
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = v8;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_69DA84;
  *(v3 + 24) = v2;
  v7[4] = sub_36C08;
  v7[5] = v3;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 1107296256;
  v7[2] = sub_1822E0;
  v7[3] = &block_descriptor_363_0;
  v4 = _Block_copy(v7);
  v5 = v0;

  [v1 performWithoutEnforcement:v4];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
  }
}

Class sub_69AE50(void *a1, uint64_t a2, void (*a3)(void))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0FF60, &qword_B1BCA0);
  __chkstk_darwin();
  v6 = &v14 - v5;
  v7 = a1;
  a3();

  v8 = sub_AB3430();
  v9 = *(v8 - 8);
  v10 = (*(v9 + 48))(v6, 1, v8);
  v11 = 0;
  if (v10 != 1)
  {
    isa = sub_AB3370().super.isa;
    (*(v9 + 8))(v6, v8);
    v11 = isa;
  }

  return v11;
}

void ModelObjectBackedStoreItemMetadata.releaseDate.getter(uint64_t a1@<X8>)
{
  v3 = sub_AB3430();
  (*(*(v3 - 8) + 56))(a1, 1, 1, v3);
  v4 = objc_opt_self();
  v5 = swift_allocObject();
  *(v5 + 16) = v1;
  *(v5 + 24) = a1;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_69DAB0;
  *(v6 + 24) = v5;
  v10[4] = sub_36C08;
  v10[5] = v6;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_1822E0;
  v10[3] = &block_descriptor_373;
  v7 = _Block_copy(v10);
  v8 = v1;

  [v4 performWithoutEnforcement:v7];
  _Block_release(v7);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }
}

void sub_69B124(uint64_t a1, uint64_t a2)
{
  v61 = a2;
  v3 = sub_AB2DC0();
  v59 = *(v3 - 8);
  v60 = v3;
  __chkstk_darwin();
  v58 = &v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11FE0, &qword_B20828);
  __chkstk_darwin();
  v6 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v8 = &v57 - v7;
  __chkstk_darwin();
  v10 = &v57 - v9;
  __chkstk_darwin();
  v12 = &v57 - v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0FF60, &qword_B1BCA0);
  __chkstk_darwin();
  v14 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v16 = &v57 - v15;
  __chkstk_darwin();
  v18 = &v57 - v17;
  __chkstk_darwin();
  v20 = &v57 - v19;
  v21 = OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObject;
  swift_beginAccess();
  v22 = *(a1 + v21);
  if (v22)
  {
    objc_opt_self();
    v23 = swift_dynamicCastObjCClass();
    if (v23)
    {
      v24 = v23;
      v25 = v22;
      v26 = [v24 releaseDateComponents];
      if (v26)
      {
        v27 = v26;
        sub_AB2D70();

        v28 = 0;
      }

      else
      {
        v28 = 1;
      }

      v36 = v59;
      v35 = v60;
      (*(v59 + 56))(v10, v28, 1, v60);
      sub_69DBE0(v10, v12);
      if ((*(v36 + 48))(v12, 1, v35))
      {

        sub_12E1C(v12, &qword_E11FE0, &qword_B20828);
        v37 = sub_AB3430();
        (*(*(v37 - 8) + 56))(v20, 1, 1, v37);
      }

      else
      {
        v38 = v58;
        (*(v36 + 16))(v58, v12, v35);
        sub_12E1C(v12, &qword_E11FE0, &qword_B20828);
        sub_AB2D90();

        (*(v36 + 8))(v38, v35);
      }

      v16 = v20;
    }

    else
    {
      objc_opt_self();
      v29 = swift_dynamicCastObjCClass();
      if (v29)
      {
        v30 = v29;
        v31 = v22;
        v32 = [v30 releaseDateComponents];
        if (v32)
        {
          v33 = v32;
          sub_AB2D70();

          v34 = 0;
        }

        else
        {
          v34 = 1;
        }

        v46 = v59;
        v45 = v60;
        (*(v59 + 56))(v6, v34, 1, v60);
        sub_69DBE0(v6, v8);
        if ((*(v46 + 48))(v8, 1, v45))
        {

          sub_12E1C(v8, &qword_E11FE0, &qword_B20828);
          v47 = sub_AB3430();
          (*(*(v47 - 8) + 56))(v18, 1, 1, v47);
        }

        else
        {
          v48 = v58;
          (*(v46 + 16))(v58, v8, v45);
          sub_12E1C(v8, &qword_E11FE0, &qword_B20828);
          sub_AB2D90();

          (*(v46 + 8))(v48, v45);
        }

        v16 = v18;
      }

      else
      {
        objc_opt_self();
        v39 = swift_dynamicCastObjCClass();
        if (v39)
        {
          v40 = v39;
          v41 = v22;
          v42 = [v40 releaseDate];
          if (v42)
          {
            v43 = v42;
            sub_AB33F0();

            v44 = 0;
            v41 = v43;
          }

          else
          {
            v44 = 1;
          }

          v55 = sub_AB3430();
          (*(*(v55 - 8) + 56))(v16, v44, 1, v55);
        }

        else
        {
          objc_opt_self();
          v49 = swift_dynamicCastObjCClass();
          if (!v49)
          {
            return;
          }

          v50 = v49;
          v51 = v22;
          v52 = [v50 releaseDate];
          if (v52)
          {
            v53 = v52;
            sub_AB33F0();

            v54 = 0;
            v51 = v53;
          }

          else
          {
            v54 = 1;
          }

          v56 = sub_AB3430();
          (*(*(v56 - 8) + 56))(v14, v54, 1, v56);
          v16 = v14;
        }
      }
    }

    sub_160B4(v16, v61, &qword_E0FF60, &qword_B1BCA0);
  }
}

id sub_69B7F8(void *a1, uint64_t a2, void (*a3)(void *__return_ptr))
{
  v4 = a1;
  a3(v12);

  v5 = v13;
  if (v13)
  {
    __swift_project_boxed_opaque_existential_1(v12, v13);
    v6 = *(v5 - 8);
    v7 = __chkstk_darwin();
    v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v6 + 16))(v9, v7);
    v10 = sub_ABB3A0();
    (*(v6 + 8))(v9, v5);
    __swift_destroy_boxed_opaque_existential_0(v12);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

void ModelObjectBackedStoreItemMetadata.socialProfileID.getter(_OWORD *a1@<X8>)
{
  *a1 = 0u;
  a1[1] = 0u;
  v3 = objc_opt_self();
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = a1;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_69DAB8;
  *(v5 + 24) = v4;
  v9[4] = sub_36C08;
  v9[5] = v5;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_1822E0;
  v9[3] = &block_descriptor_383;
  v6 = _Block_copy(v9);
  v7 = v1;

  [v3 performWithoutEnforcement:v6];
  _Block_release(v6);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }
}

void sub_69BAA8(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObject;
  swift_beginAccess();
  if (*(a1 + v4))
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v5 = (a1 + OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObjectStoreID);
      swift_beginAccess();
      v6 = v5[1];
      if (v6)
      {
        v7 = *v5;
        v8 = &type metadata for String;
      }

      else
      {
        v7 = 0;
        v8 = 0;
        v9[2] = 0;
      }

      v9[0] = v7;
      v9[1] = v6;
      v9[3] = v8;

      sub_160B4(v9, a2, &qword_E11F60, &unk_B1BC70);
    }
  }
}

void ModelObjectBackedStoreItemMetadata.seasonNumber.getter()
{
  v8 = 0;
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = &v8;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_69DAC0;
  *(v3 + 24) = v2;
  aBlock[4] = sub_36C08;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1822E0;
  aBlock[3] = &block_descriptor_393;
  v4 = _Block_copy(aBlock);
  v5 = v0;

  [v1 performWithoutEnforcement:v4];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
  }
}

void sub_69BD2C(uint64_t a1, void *a2)
{
  v4 = OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObject;
  swift_beginAccess();
  v5 = *(a1 + v4);
  if (v5)
  {
    objc_opt_self();
    v6 = swift_dynamicCastObjCClass();
    if (v6)
    {
      v7 = v6;
      v8 = v5;
      v9 = [v7 season];
      if (v9)
      {
        v10 = v9;
        v11 = [v9 number];

        *a2 = v11;
      }

      else
      {
      }
    }
  }
}

void ModelObjectBackedStoreItemMetadata.shortName.getter()
{
  v8[0] = 0;
  v8[1] = 0;
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = v8;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_69DAC8;
  *(v3 + 24) = v2;
  v7[4] = sub_36C08;
  v7[5] = v3;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 1107296256;
  v7[2] = sub_1822E0;
  v7[3] = &block_descriptor_403_1;
  v4 = _Block_copy(v7);
  v5 = v0;

  [v1 performWithoutEnforcement:v4];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
  }
}

double sub_69BF7C(uint64_t a1, uint64_t *a2, void *a3, SEL *a4, void *a5, SEL *a6)
{
  v10 = OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObject;
  swift_beginAccess();
  v12 = *(a1 + v10);
  if (v12)
  {
    objc_opt_self();
    v13 = swift_dynamicCastObjCClass();
    if (v13)
    {
      v14 = v13;
      v15 = v12;
      v16 = [v14 *a4];
      if (v16)
      {
        v17 = v16;
        v18 = sub_AB92A0();
        v20 = v19;

LABEL_11:
        *a2 = v18;
        a2[1] = v20;

        return result;
      }
    }

    else
    {
      objc_opt_self();
      v21 = swift_dynamicCastObjCClass();
      if (!v21)
      {
        return result;
      }

      v22 = v21;
      v23 = v12;
      v24 = [v22 *a6];
      if (v24)
      {
        v25 = v24;
        v18 = sub_AB92A0();
        v20 = v26;

        goto LABEL_11;
      }
    }

    v18 = 0;
    v20 = 0;
    goto LABEL_11;
  }

  return result;
}

id sub_69C0DC(void *a1, uint64_t a2, void (*a3)(void))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0DC30, &unk_B15160);
  __chkstk_darwin();
  v6 = &v15 - v5;
  v7 = a1;
  a3();

  v8 = sub_AB31C0();
  v9 = *(v8 - 8);
  v10 = (*(v9 + 48))(v6, 1, v8);
  v11 = 0;
  if (v10 != 1)
  {
    sub_AB30F0(v10);
    v13 = v12;
    (*(v9 + 8))(v6, v8);
    v11 = v13;
  }

  return v11;
}

void ModelObjectBackedStoreItemMetadata.shortURL.getter(uint64_t a1@<X8>)
{
  v3 = sub_AB31C0();
  (*(*(v3 - 8) + 56))(a1, 1, 1, v3);
  v4 = objc_opt_self();
  v5 = swift_allocObject();
  *(v5 + 16) = v1;
  *(v5 + 24) = a1;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_69DB04;
  *(v6 + 24) = v5;
  v10[4] = sub_36C08;
  v10[5] = v6;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_1822E0;
  v10[3] = &block_descriptor_413_0;
  v7 = _Block_copy(v10);
  v8 = v1;

  [v4 performWithoutEnforcement:v7];
  _Block_release(v7);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }
}

void ModelObjectBackedStoreItemMetadata.showComposer.getter()
{
  v8 = 0;
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = &v8;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_69DB28;
  *(v3 + 24) = v2;
  aBlock[4] = sub_36C08;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1822E0;
  aBlock[3] = &block_descriptor_423;
  v4 = _Block_copy(aBlock);
  v5 = v0;

  [v1 performWithoutEnforcement:v4];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
  }
}

void sub_69C554(uint64_t a1, _BYTE *a2, void *a3, SEL *a4)
{
  v7 = OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObject;
  swift_beginAccess();
  if (*(a1 + v7))
  {
    objc_opt_self();
    v8 = swift_dynamicCastObjCClass();
    if (v8)
    {
      *a2 = [v8 *a4];
    }
  }
}

double ModelObjectBackedStoreItemMetadata.storeID.getter@<D0>(void *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObjectStoreID);
  swift_beginAccess();
  v4 = v3[1];
  if (v4)
  {
    v5 = *v3;
    v6 = &type metadata for String;
  }

  else
  {
    v5 = 0;
    v6 = 0;
    a1[2] = 0;
  }

  *a1 = v5;
  a1[1] = v4;
  a1[3] = v6;

  return result;
}

void ModelObjectBackedStoreItemMetadata.isStoreRedownloadable.getter()
{
  v8 = 0;
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = &v8;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_69DB54;
  *(v3 + 24) = v2;
  aBlock[4] = sub_36C08;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1822E0;
  aBlock[3] = &block_descriptor_433;
  v4 = _Block_copy(aBlock);
  v5 = v0;

  [v1 performWithoutEnforcement:v4];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
  }
}

void sub_69C88C(uint64_t a1, _BYTE *a2)
{
  v4 = OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObject;
  swift_beginAccess();
  v5 = *(a1 + v4);
  if (v5)
  {
    ObjectType = swift_getObjectType();
    v7 = swift_conformsToProtocol2();
    if (v7)
    {
      v8 = *(v7 + 16);
      v9 = v7;
      v10 = v5;
      v11 = v8(ObjectType, v9);

      *a2 = v11 & 1;
    }
  }
}

void ModelObjectBackedStoreItemMetadata.trackCount.getter()
{
  v8 = 0;
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = &v8;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_69DB5C;
  *(v3 + 24) = v2;
  aBlock[4] = sub_36C08;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1822E0;
  aBlock[3] = &block_descriptor_443_0;
  v4 = _Block_copy(aBlock);
  v5 = v0;

  [v1 performWithoutEnforcement:v4];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
  }
}

void sub_69CAF0(uint64_t a1, void *a2, void *a3, SEL *a4)
{
  v7 = OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObject;
  swift_beginAccess();
  if (*(a1 + v7))
  {
    objc_opt_self();
    v8 = swift_dynamicCastObjCClass();
    if (v8)
    {
      *a2 = [v8 *a4];
    }
  }
}

void ModelObjectBackedStoreItemMetadata.trackNumber.getter()
{
  v8 = 0;
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = &v8;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_69DB88;
  *(v3 + 24) = v2;
  aBlock[4] = sub_36C08;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1822E0;
  aBlock[3] = &block_descriptor_453;
  v4 = _Block_copy(aBlock);
  v5 = v0;

  [v1 performWithoutEnforcement:v4];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
  }
}

void sub_69CD20(uint64_t a1, void *a2)
{
  v4 = OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObject;
  swift_beginAccess();
  if (*(a1 + v4))
  {
    objc_opt_self();
    v5 = swift_dynamicCastObjCClass();
    if (v5)
    {
      v6 = &selRef_trackNumber;
    }

    else
    {
      objc_opt_self();
      v5 = swift_dynamicCastObjCClass();
      if (!v5)
      {
        return;
      }

      v6 = &selRef_episodeNumber;
    }

    *a2 = [v5 *v6];
  }
}

void ModelObjectBackedStoreItemMetadata.url.getter(uint64_t a1@<X8>)
{
  v3 = sub_AB31C0();
  (*(*(v3 - 8) + 56))(a1, 1, 1, v3);
  v4 = objc_opt_self();
  v5 = swift_allocObject();
  *(v5 + 16) = v1;
  *(v5 + 24) = a1;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_69DB90;
  *(v6 + 24) = v5;
  v10[4] = sub_36C08;
  v10[5] = v6;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_1822E0;
  v10[3] = &block_descriptor_463;
  v7 = _Block_copy(v10);
  v8 = v1;

  [v4 performWithoutEnforcement:v7];
  _Block_release(v7);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }
}

void sub_69CF8C(uint64_t a1, uint64_t a2, SEL *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0DC30, &unk_B15160);
  __chkstk_darwin();
  v7 = &v17 - v6;
  v8 = OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObject;
  swift_beginAccess();
  v9 = *(a1 + v8);
  if (v9)
  {
    objc_opt_self();
    v10 = swift_dynamicCastObjCClass();
    if (v10)
    {
      v11 = v10;
      v12 = v9;
      v13 = [v11 *a3];
      if (v13)
      {
        v14 = v13;
        sub_AB3150();

        v15 = 0;
        v12 = v14;
      }

      else
      {
        v15 = 1;
      }

      v16 = sub_AB31C0();
      (*(*(v16 - 8) + 56))(v7, v15, 1, v16);
      sub_160B4(v7, a2, &qword_E0DC30, &unk_B15160);
    }
  }
}

id sub_69D114(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  a3();
  v6 = v5;

  if (v6)
  {
    v7 = sub_AB9260();
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void ModelObjectBackedStoreItemMetadata.workName.getter()
{
  v8[0] = 0;
  v8[1] = 0;
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = v8;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_69DBB4;
  *(v3 + 24) = v2;
  v7[4] = sub_36C08;
  v7[5] = v3;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 1107296256;
  v7[2] = sub_1822E0;
  v7[3] = &block_descriptor_473;
  v4 = _Block_copy(v7);
  v5 = v0;

  [v1 performWithoutEnforcement:v4];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
  }
}

double sub_69D308(uint64_t a1, uint64_t *a2, void *a3, SEL *a4)
{
  v7 = OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObject;
  swift_beginAccess();
  v9 = *(a1 + v7);
  if (v9)
  {
    objc_opt_self();
    v10 = swift_dynamicCastObjCClass();
    if (v10)
    {
      v11 = v10;
      v12 = v9;
      v13 = [v11 *a4];
      if (v13)
      {
        v14 = v13;
        v15 = sub_AB92A0();
        v17 = v16;
      }

      else
      {

        v15 = 0;
        v17 = 0;
      }

      *a2 = v15;
      a2[1] = v17;
    }
  }

  return result;
}

id ModelObjectBackedStoreItemMetadata.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ModelObjectBackedStoreItemMetadata();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_69D4C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0FF60, &qword_B1BCA0);
  __chkstk_darwin();
  v8 = &v17 - v7;
  *&v4[OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObject] = 0;
  v9 = &v4[OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObjectStoreID];
  *v9 = 0;
  *(v9 + 1) = 0;
  v10.super.isa = sub_AB8FD0().super.isa;

  sub_5E41F0(a3, v8);
  v11 = sub_AB3430();
  v12 = *(v11 - 8);
  isa = 0;
  if ((*(v12 + 48))(v8, 1, v11) != 1)
  {
    isa = sub_AB3370().super.isa;
    (*(v12 + 8))(v8, v11);
  }

  v14 = type metadata accessor for ModelObjectBackedStoreItemMetadata();
  v17.receiver = v4;
  v17.super_class = v14;
  v15 = objc_msgSendSuper2(&v17, "initWithStorePlatformDictionary:parentStoreItemMetadata:expirationDate:", v10.super.isa, a2, isa);

  sub_12E1C(a3, &qword_E0FF60, &qword_B1BCA0);
  return v15;
}

uint64_t sub_69D680()
{

  return swift_deallocObject();
}

double block_copy_helper_189(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_69DBE0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11FE0, &qword_B20828);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t MotionMode.allowsMotion.getter()
{
  v1 = v0;
  v2 = sub_AB3870();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin();
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v1, v2, v4);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == enum case for MotionMode.off(_:))
  {
    return 0;
  }

  if (v7 == enum case for MotionMode.wifiOnly(_:))
  {
    v9 = [objc_opt_self() sharedMonitor];
    [v9 networkType];

    return ICEnvironmentNetworkTypeIsWiFi();
  }

  else if (v7 == enum case for MotionMode.on(_:))
  {
    return 1;
  }

  else
  {
    v10 = 0;
    v11 = 0xE000000000000000;
    sub_ABAD90(24);

    v10 = 0xD00000000000001ELL;
    v11 = 0x8000000000B6FDA0;
    sub_69E14C();
    v12._countAndFlagsBits = sub_ABB330();
    sub_AB94A0(v12);

    result = sub_ABAFD0();
    __break(1u);
  }

  return result;
}

unint64_t sub_69E14C()
{
  result = qword_E11FE8;
  if (!qword_E11FE8)
  {
    sub_AB3870();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E11FE8);
  }

  return result;
}

id sub_69E1A4()
{
  type metadata accessor for NetworkMonitor(0);
  v0 = swift_allocObject();
  result = NetworkMonitor.init()();
  static NetworkMonitor.shared = v0;
  return result;
}

uint64_t NetworkMonitor.__allocating_init()()
{
  v0 = swift_allocObject();
  NetworkMonitor.init()();
  return v0;
}

uint64_t *NetworkMonitor.shared.unsafeMutableAddressor()
{
  if (qword_E0CE68 != -1)
  {
    swift_once();
  }

  return &static NetworkMonitor.shared;
}

double static NetworkMonitor.shared.getter()
{
  if (qword_E0CE68 != -1)
  {
    swift_once();
  }

  return result;
}

uint64_t NetworkMonitor.isOnline.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510(&v1);

  return v1;
}

void sub_69E33C(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510(&v3);

  *a2 = v3;
}

uint64_t sub_69E3BC(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_AB5520();
}

double NetworkMonitor.$isOnline.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11FF8, &qword_B27800);
  sub_AB54E0();
  swift_endAccess();
  return result;
}

double sub_69E4A4(void *a1)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11FF8, &qword_B27800);
  sub_AB54E0();
  swift_endAccess();
  return result;
}

uint64_t sub_69E51C(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E12B60, &qword_B24860);
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin();
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3, v7);
  (v10)(v6, v9, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11FF8, &qword_B27800);
  sub_AB54F0();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

id NetworkMonitor.init()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11FF8, &qword_B27800);
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v4 = aBlock - v3;
  result = [objc_opt_self() sharedCloudController];
  if (result)
  {
    v6 = result;
    v7 = OBJC_IVAR____TtC9MusicCore14NetworkMonitor__isOnline;
    v8 = [result hasProperNetworkConditionsToShowCloudMedia];

    LOBYTE(aBlock[0]) = v8;
    sub_AB54D0();
    (*(v2 + 32))(v0 + v7, v4, v1);
    v9 = [objc_opt_self() defaultCenter];
    v10 = MPCloudControllerHasProperNetworkConditionsToShowCloudMediaDidChangeNotification;
    v11 = [objc_opt_self() mainQueue];
    v12 = swift_allocObject();
    swift_weakInit();
    aBlock[4] = sub_69EA28;
    aBlock[5] = v12;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_69EA30;
    aBlock[3] = &block_descriptor_190;
    v13 = _Block_copy(aBlock);

    v14 = [v9 addObserverForName:v10 object:0 queue:v11 usingBlock:v13];
    _Block_release(v13);
    swift_unknownObjectRelease();

    return v0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_69E90C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

id sub_69E944(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    result = [objc_opt_self() sharedCloudController];
    if (result)
    {
      v3 = result;
      if (([result shouldProhibitMusicActionForCurrentNetworkConditions] & 1) == 0)
      {
        [v3 hasProperNetworkConditionsToShowCloudMedia];
      }

      swift_getKeyPath();
      swift_getKeyPath();
      return sub_AB5520();
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_69EA30(uint64_t a1, uint64_t a2)
{
  v3 = sub_AB2BD0();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 32);
  sub_AB2B90();

  v7(v6);

  return (*(v4 + 8))(v6, v3);
}

double block_copy_helper_190(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t NetworkMonitor.deinit()
{
  v1 = OBJC_IVAR____TtC9MusicCore14NetworkMonitor__isOnline;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11FF8, &qword_B27800);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t NetworkMonitor.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC9MusicCore14NetworkMonitor__isOnline;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11FF8, &qword_B27800);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for NetworkMonitor(uint64_t a1)
{
  result = qword_E12028;
  if (!qword_E12028)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_69ECAC(uint64_t a1)
{
  sub_69ED3C();
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_69ED3C()
{
  if (!qword_E12BD0)
  {
    v0 = sub_AB5540();
    if (!v1)
    {
      atomic_store(v0, &qword_E12BD0);
    }
  }
}

uint64_t static Notice.variant(_:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v200 = a2;
  sub_AB9230();
  __chkstk_darwin();
  v205 = type metadata accessor for Notice.Thumbnail(0);
  v203 = *(v205 - 8);
  __chkstk_darwin();
  v4 = &v193 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E10D80, &unk_B1D048);
  __chkstk_darwin();
  v6 = &v193 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v8 = &v193 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E120B0, &qword_B208D8);
  __chkstk_darwin();
  v10 = &v193 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v12 = (&v193 - v11);
  __chkstk_darwin();
  v198 = (&v193 - v13);
  sub_AB35C0();
  __chkstk_darwin();
  v204 = &v193 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_AB9250();
  v16 = *(v15 - 8);
  v201 = v15;
  v202 = v16;
  __chkstk_darwin();
  v199 = &v193 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v19 = &v193 - v18;
  type metadata accessor for Notice.Variant(0);
  __chkstk_darwin();
  v21 = (&v193 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_6A2290(a1, v21, type metadata accessor for Notice.Variant);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v79 = *v21;
      v78 = v21[1];
      v80 = Notice.Variant.id.getter();
      v193 = v81;
      v194 = v80;
      if (v78)
      {
        v196 = v78;
        v197 = v79;
        v195 = 0x7265646C6F66;
        v82 = v205;
        v83 = v202;
        v84 = v203;
        v85 = v19;
        v86 = v200;
        v87 = v201;
        v88 = v199;
      }

      else
      {
        v85 = v19;
        sub_AB91E0();
        v87 = v201;
        v83 = v202;
        v88 = v199;
        (*(v202 + 16))(v199, v19, v201);
        v82 = v205;
        v84 = v203;
        if (qword_E0CB80 != -1)
        {
          swift_once();
        }

        v195 = 0x672E657261757173;
        v178 = qword_E71B20;
        sub_AB3550();
        v179 = sub_AB9320();
        v196 = v180;
        v197 = v179;
        (*(v83 + 8))(v19, v87);
        v86 = v200;
      }

      sub_AB91E0();
      (*(v83 + 16))(v88, v85, v87);
      if (qword_E0CB80 != -1)
      {
        swift_once();
      }

      v181 = qword_E71B20;
      sub_AB3550();
      v205 = sub_AB9320();
      v183 = v182;
      (*(v83 + 8))(v85, v87);
      v184 = sub_AB7550();
      v185 = v198;
      *v198 = v184;
      swift_storeEnumTagMultiPayload();
      v186 = *(v84 + 56);
      v186(v185, 0, 1, v82);
      v187 = type metadata accessor for Notice(0);
      v188 = v187[5];
      v186(v86 + v188, 1, 1, v82);
      v189 = (v86 + v187[7]);
      v174 = (v86 + v187[8]);
      v112 = v86 + v187[9];
      v113 = v86 + v187[10];
      v190 = v193;
      *v86 = v194;
      v86[1] = v190;
      result = sub_6A1DB0(v185, v86 + v188);
      v191 = (v86 + v187[6]);
      v192 = v196;
      *v191 = v197;
      v191[1] = v192;
      *v189 = v205;
      v189[1] = v183;
      goto LABEL_74;
    case 2u:
      v62 = *v21;
      v61 = v21[1];
      v63 = v21[2];
      v64 = Notice.Variant.id.getter();
      v194 = v65;
      v195 = v64;
      if (v63)
      {
        v196 = v63;
        v197 = v61;
        v67 = v201;
        v66 = v202;
        v68 = v19;
        v70 = v199;
        v69 = v200;
      }

      else
      {
        v68 = v19;
        sub_AB91E0();
        v67 = v201;
        v66 = v202;
        v70 = v199;
        (*(v202 + 16))(v199, v19, v201);
        if (qword_E0CB80 != -1)
        {
          swift_once();
        }

        v156 = qword_E71B20;
        sub_AB3550();
        v157 = sub_AB9320();
        v196 = v158;
        v197 = v157;
        (*(v66 + 8))(v19, v67);
        v69 = v200;
      }

      sub_AB9220();
      v209._countAndFlagsBits = 0;
      v209._object = 0xE000000000000000;
      sub_AB9210(v209);
      v206 = v62;
      sub_AB91F0();
      v159._object = 0x8000000000B6FE70;
      v159._countAndFlagsBits = 0xD000000000000015;
      goto LABEL_65;
    case 3u:
      v74 = *v21;
      v73 = v21[1];
      v75 = v21[2];
      v76 = Notice.Variant.id.getter();
      v194 = v77;
      v195 = v76;
      if (v75)
      {
        v196 = v75;
        v197 = v73;
        v67 = v201;
        v66 = v202;
        v68 = v19;
        v70 = v199;
        v69 = v200;
      }

      else
      {
        v68 = v19;
        sub_AB91E0();
        v67 = v201;
        v66 = v202;
        v70 = v199;
        (*(v202 + 16))(v199, v19, v201);
        if (qword_E0CB80 != -1)
        {
          swift_once();
        }

        v160 = qword_E71B20;
        sub_AB3550();
        v161 = sub_AB9320();
        v196 = v162;
        v197 = v161;
        (*(v66 + 8))(v19, v67);
        v69 = v200;
      }

      sub_AB9220();
      v210._countAndFlagsBits = 0;
      v210._object = 0xE000000000000000;
      sub_AB9210(v210);
      v206 = v74;
      sub_AB91F0();
      v159._countAndFlagsBits = 0xD000000000000013;
      v159._object = 0x8000000000B6FE50;
LABEL_65:
      sub_AB9210(v159);
      sub_AB9240();
      (*(v66 + 16))(v70, v68, v67);
      if (qword_E0CB80 != -1)
      {
        swift_once();
      }

      v163 = qword_E71B20;
      sub_AB3550();
      v164 = sub_AB9320();
      v166 = v165;
      (*(v66 + 8))(v68, v67);
      v167 = sub_AB7550();
      v168 = v198;
      *v198 = v167;
      v169 = v205;
      swift_storeEnumTagMultiPayload();
      v170 = *(v203 + 56);
      v170(v168, 0, 1, v169);
      v171 = type metadata accessor for Notice(0);
      v172 = v171[5];
      v170(v69 + v172, 1, 1, v169);
      v173 = (v69 + v171[7]);
      v174 = (v69 + v171[8]);
      v112 = v69 + v171[9];
      v113 = v69 + v171[10];
      v175 = v194;
      *v69 = v195;
      v69[1] = v175;
      result = sub_6A1DB0(v168, v69 + v172);
      v176 = (v69 + v171[6]);
      v177 = v196;
      *v176 = v197;
      v176[1] = v177;
      *v173 = v164;
      v173[1] = v166;
LABEL_74:
      *v174 = 0;
      v174[1] = 0;
      break;
    case 4u:
      v47 = *v21;
      v46 = v21[1];
      v48 = Notice.Variant.id.getter();
      v194 = v49;
      if (v46)
      {
        v196 = v46;
        v197 = v47;
        v50 = v205;
        v52 = v201;
        v51 = v202;
        v53 = v19;
      }

      else
      {
        v53 = v19;
        sub_AB91E0();
        v52 = v201;
        v51 = v202;
        (*(v202 + 16))(v199, v19, v201);
        if (qword_E0CB80 != -1)
        {
          swift_once();
        }

        v134 = qword_E71B20;
        sub_AB3550();
        v135 = sub_AB9320();
        v196 = v136;
        v197 = v135;
        (*(v51 + 8))(v19, v52);
        v50 = v205;
      }

      v137 = v200;
      v138 = qword_E0D528;

      if (v138 != -1)
      {
        swift_once();
      }

      v195 = v48;
      if (static DeviceCapabilities.isInternalInstall == 1)
      {
        sub_AB91E0();
        (*(v51 + 16))(v199, v53, v52);
        if (qword_E0CB80 != -1)
        {
          swift_once();
        }

        v139 = qword_E71B20;
        sub_AB3550();
        v140 = sub_AB9320();
        v204 = v141;
        v205 = v140;
        (*(v51 + 8))(v53, v52);
        v143 = swift_allocObject();
        *(v143 + 16) = v47;
        *(v143 + 24) = v46;
        v142 = sub_6A1E58;
      }

      else
      {

        v142 = 0;
        v143 = 0;
        v204 = 0;
        v205 = 0;
      }

      v144 = sub_AB7550();
      v145 = v198;
      *v198 = v144;
      swift_storeEnumTagMultiPayload();
      v146 = *(v203 + 56);
      v146(v145, 0, 1, v50);
      v147 = type metadata accessor for Notice(0);
      v148 = v50;
      v149 = v147[5];
      v146(v137 + v149, 1, 1, v148);
      v150 = (v137 + v147[7]);
      v151 = (v137 + v147[8]);
      v112 = v137 + v147[9];
      v113 = v137 + v147[10];
      v152 = v194;
      *v137 = v195;
      v137[1] = v152;
      result = sub_6A1DB0(v145, v137 + v149);
      v153 = (v137 + v147[6]);
      v154 = v196;
      *v153 = v197;
      v153[1] = v154;
      v155 = v204;
      *v150 = v205;
      v150[1] = v155;
      *v151 = v142;
      v151[1] = v143;
      *v112 = 2;
      goto LABEL_37;
    case 5u:
      v91 = Notice.Variant.id.getter();
      v196 = v92;
      v197 = v91;
      v41 = v19;
      sub_AB91E0();
      v43 = v201;
      v42 = v202;
      (*(v202 + 16))(v199, v19, v201);
      if (qword_E0CB80 == -1)
      {
        goto LABEL_34;
      }

      goto LABEL_75;
    case 6u:
    case 7u:
    case 8u:
      v99 = Notice.Variant.id.getter();
      v196 = v100;
      v197 = v99;
      v41 = v19;
      sub_AB91E0();
      v43 = v201;
      v42 = v202;
      (*(v202 + 16))(v199, v19, v201);
      if (qword_E0CB80 == -1)
      {
        goto LABEL_34;
      }

      goto LABEL_75;
    case 9u:
      v59 = Notice.Variant.id.getter();
      v196 = v60;
      v197 = v59;
      v41 = v19;
      sub_AB91E0();
      v43 = v201;
      v42 = v202;
      (*(v202 + 16))(v199, v19, v201);
      if (qword_E0CB80 == -1)
      {
        goto LABEL_34;
      }

      goto LABEL_75;
    case 0xAu:
      v95 = Notice.Variant.id.getter();
      v196 = v96;
      v197 = v95;
      v56 = v19;
      sub_AB91E0();
      v58 = v201;
      v57 = v202;
      (*(v202 + 16))(v199, v19, v201);
      if (qword_E0CB80 == -1)
      {
        goto LABEL_32;
      }

      goto LABEL_81;
    case 0xBu:
      v44 = Notice.Variant.id.getter();
      v196 = v45;
      v197 = v44;
      v41 = v19;
      sub_AB91E0();
      v43 = v201;
      v42 = v202;
      (*(v202 + 16))(v199, v19, v201);
      if (qword_E0CB80 == -1)
      {
        goto LABEL_34;
      }

      goto LABEL_75;
    case 0xCu:
      v54 = Notice.Variant.id.getter();
      v196 = v55;
      v197 = v54;
      v56 = v19;
      sub_AB91E0();
      v58 = v201;
      v57 = v202;
      (*(v202 + 16))(v199, v19, v201);
      if (qword_E0CB80 == -1)
      {
        goto LABEL_32;
      }

      goto LABEL_81;
    case 0xDu:
      v93 = Notice.Variant.id.getter();
      v196 = v94;
      v197 = v93;
      v56 = v19;
      sub_AB91E0();
      v58 = v201;
      v57 = v202;
      (*(v202 + 16))(v199, v19, v201);
      if (qword_E0CB80 == -1)
      {
        goto LABEL_32;
      }

      goto LABEL_81;
    case 0xEu:
      v39 = Notice.Variant.id.getter();
      v196 = v40;
      v197 = v39;
      v41 = v19;
      sub_AB91E0();
      v43 = v201;
      v42 = v202;
      (*(v202 + 16))(v199, v19, v201);
      if (qword_E0CB80 == -1)
      {
        goto LABEL_34;
      }

LABEL_75:
      swift_once();
LABEL_34:
      v101 = qword_E71B20;
      sub_AB3550();
      v36 = sub_AB9320();
      v38 = v102;
      (*(v42 + 8))(v41, v43);
      goto LABEL_35;
    case 0xFu:
      v71 = Notice.Variant.id.getter();
      v196 = v72;
      v197 = v71;
      v56 = v19;
      sub_AB91E0();
      v58 = v201;
      v57 = v202;
      (*(v202 + 16))(v199, v19, v201);
      if (qword_E0CB80 == -1)
      {
        goto LABEL_32;
      }

      goto LABEL_81;
    case 0x10u:
      v31 = Notice.Variant.id.getter();
      v196 = v32;
      v197 = v31;
      sub_AB91E0();
      v34 = v201;
      v33 = v202;
      (*(v202 + 16))(v199, v19, v201);
      if (qword_E0CB80 != -1)
      {
        swift_once();
      }

      v35 = qword_E71B20;
      sub_AB3550();
      v36 = sub_AB9320();
      v38 = v37;
      (*(v33 + 8))(v19, v34);
      goto LABEL_35;
    case 0x11u:
      v89 = Notice.Variant.id.getter();
      v196 = v90;
      v197 = v89;
      v56 = v19;
      sub_AB91E0();
      v58 = v201;
      v57 = v202;
      (*(v202 + 16))(v199, v19, v201);
      if (qword_E0CB80 == -1)
      {
        goto LABEL_32;
      }

LABEL_81:
      swift_once();
LABEL_32:
      v97 = qword_E71B20;
      sub_AB3550();
      v36 = sub_AB9320();
      v38 = v98;
      (*(v57 + 8))(v56, v58);
LABEL_35:
      v103 = sub_AB7550();
      v104 = v198;
      *v198 = v103;
      v105 = v205;
      swift_storeEnumTagMultiPayload();
      v106 = *(v203 + 56);
      v106(v104, 0, 1, v105);
      v107 = type metadata accessor for Notice(0);
      v108 = v107[5];
      v109 = v200;
      v106(v200 + v108, 1, 1, v105);
      v110 = (v109 + v107[7]);
      v111 = (v109 + v107[8]);
      v112 = v109 + v107[9];
      v113 = v109 + v107[10];
      v114 = v196;
      *v109 = v197;
      v109[1] = v114;
      result = sub_6A1DB0(v104, v109 + v108);
      v116 = (v109 + v107[6]);
      *v116 = v36;
      v116[1] = v38;
      *v110 = 0;
      v110[1] = 0;
      *v111 = 0;
      v111[1] = 0;
      break;
    default:
      v22 = *v21;
      v197 = v21[1];
      v198 = v22;
      v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E120B8, &qword_B208E0);
      v24 = *(v23 + 48);
      v193 = *(v21 + *(v23 + 64));
      sub_6A1E60(v21 + v24, v8);
      v25 = Notice.Variant.id.getter();
      v195 = v26;
      v196 = v25;
      sub_15F84(v8, v6, &unk_E10D80, &unk_B1D048);
      v27 = sub_AB8A60();
      v28 = *(v27 - 8);
      if ((*(v28 + 48))(v6, 1, v27) == 1)
      {
        sub_12E1C(v6, &unk_E10D80, &unk_B1D048);
        v29 = 1;
        v30 = v205;
      }

      else
      {
        (*(v28 + 32))(v4, v6, v27);
        v30 = v205;
        swift_storeEnumTagMultiPayload();
        sub_6A1ED0(v4, v10);
        v29 = 0;
      }

      v117 = v203;
      v118 = *(v203 + 56);
      v118(v10, v29, 1, v30);
      v203 = *(v117 + 48);
      v119 = (v203)(v10, 1, v30);
      v194 = v118;
      if (v119 == 1)
      {
        *v12 = sub_AB7550();
        swift_storeEnumTagMultiPayload();
        v118(v12, 0, 1, v30);
        if ((v203)(v10, 1, v30) != 1)
        {
          sub_12E1C(v10, &qword_E120B0, &qword_B208D8);
        }
      }

      else
      {
        sub_6A1ED0(v10, v12);
        v118(v12, 0, 1, v30);
      }

      sub_AB9220();
      v207._countAndFlagsBits = 0;
      v207._object = 0xE000000000000000;
      sub_AB9210(v207);
      v206 = v193;
      sub_AB91F0();
      v208._countAndFlagsBits = 0x297328676E6F7320;
      v208._object = 0xEE00646564646120;
      sub_AB9210(v208);
      sub_AB9240();
      v121 = v201;
      v120 = v202;
      (*(v202 + 16))(v199, v19, v201);
      if (qword_E0CB80 != -1)
      {
        swift_once();
      }

      v122 = qword_E71B20;
      sub_AB3550();
      v123 = sub_AB9320();
      v125 = v124;
      (*(v120 + 8))(v19, v121);
      sub_12E1C(v8, &unk_E10D80, &unk_B1D048);
      v126 = type metadata accessor for Notice(0);
      v127 = v126[5];
      v128 = v200;
      v194(v200 + v127, 1, 1, v205);
      v129 = (v128 + v126[7]);
      v130 = (v128 + v126[8]);
      v112 = v128 + v126[9];
      v113 = v128 + v126[10];
      v131 = v195;
      *v128 = v196;
      v128[1] = v131;
      result = sub_6A1DB0(v12, v128 + v127);
      v132 = (v128 + v126[6]);
      v133 = v197;
      *v132 = v198;
      v132[1] = v133;
      *v129 = v123;
      v129[1] = v125;
      *v130 = 0;
      v130[1] = 0;
      break;
  }

  *v112 = 0;
LABEL_37:
  v112[8] = 0;
  *v113 = 1;
  return result;
}

uint64_t Notice.thumbnail.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for Notice(0) + 20);

  return sub_6A1DB0(a1, v3);
}

uint64_t Notice.message.getter()
{
  v1 = *(v0 + *(type metadata accessor for Notice(0) + 24));

  return v1;
}

void Notice.message.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Notice(0) + 24));

  *v5 = a1;
  v5[1] = a2;
}

uint64_t Notice.headnote.getter()
{
  v1 = *(v0 + *(type metadata accessor for Notice(0) + 28));

  return v1;
}

void Notice.headnote.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Notice(0) + 28));

  *v5 = a1;
  v5[1] = a2;
}

uint64_t Notice.link.getter()
{
  v1 = (v0 + *(type metadata accessor for Notice(0) + 32));
  v2 = *v1;
  sub_307CC(*v1, v1[1]);
  return v2;
}

uint64_t Notice.link.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Notice(0) + 32));
  result = sub_17654(*v5, v5[1]);
  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t Notice.hapticFeedback.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for Notice(0);
  v6 = v2 + *(result + 36);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t Notice.isDismissable.setter(char a1)
{
  result = type metadata accessor for Notice(0);
  *(v1 + *(result + 40)) = a1;
  return result;
}

uint64_t Notice.init(id:image:message:headnote:link:hapticFeedback:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, uint64_t a11, unsigned __int8 a12)
{
  v38 = a7;
  v39 = a8;
  v36 = a5;
  v37 = a6;
  v35 = a12;
  v33 = a11;
  v34 = a4;
  v32 = a10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E120B0, &qword_B208D8);
  __chkstk_darwin();
  v17 = &v32 - v16;
  *(&v32 - v16) = a3;
  v18 = type metadata accessor for Notice.Thumbnail(0);
  swift_storeEnumTagMultiPayload();
  v19 = *(*(v18 - 8) + 56);
  v19(v17, 0, 1, v18);
  v20 = type metadata accessor for Notice(0);
  v21 = v20[5];
  v19(&a9[v21], 1, 1, v18);
  v22 = &a9[v20[7]];
  v23 = &a9[v20[8]];
  v24 = v20[10];
  v25 = &a9[v20[9]];
  *a9 = a1;
  *(a9 + 1) = a2;
  result = sub_6A1DB0(v17, &a9[v21]);
  v27 = &a9[v20[6]];
  v28 = v36;
  *v27 = v34;
  *(v27 + 1) = v28;
  v29 = v38;
  *v22 = v37;
  *(v22 + 1) = v29;
  v31 = v32;
  v30 = v33;
  *v23 = v39;
  *(v23 + 1) = v31;
  *v25 = v30;
  v25[8] = v35 & 1;
  a9[v24] = 1;
  return result;
}

uint64_t Notice.init(id:thumbnail:message:headnote:link:hapticFeedback:isDismissable:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, uint64_t a11, char a12, char a13)
{
  v17 = type metadata accessor for Notice(0);
  v18 = v17[5];
  v19 = type metadata accessor for Notice.Thumbnail(0);
  (*(*(v19 - 8) + 56))(&a9[v18], 1, 1, v19);
  v20 = &a9[v17[7]];
  v21 = &a9[v17[8]];
  v22 = v17[10];
  v23 = &a9[v17[9]];
  *a9 = a1;
  *(a9 + 1) = a2;
  result = sub_6A1DB0(a3, &a9[v18]);
  v25 = &a9[v17[6]];
  *v25 = a4;
  *(v25 + 1) = a5;
  *v20 = a6;
  *(v20 + 1) = a7;
  *v21 = a8;
  *(v21 + 1) = a10;
  *v23 = a11;
  v23[8] = a12 & 1;
  a9[v22] = a13;
  return result;
}

uint64_t Notice.init(id:symbol:message:headnote:link:hapticFeedback:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, unsigned __int8 a13)
{
  v37 = a7;
  v38 = a8;
  v36 = a6;
  v35 = a13;
  v33 = a12;
  v34 = a5;
  v31 = a10;
  v32 = a11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E120B0, &qword_B208D8);
  __chkstk_darwin();
  v17 = (&v31 - v16);
  *v17 = sub_AB7550();
  v18 = type metadata accessor for Notice.Thumbnail(0);
  swift_storeEnumTagMultiPayload();
  v19 = *(*(v18 - 8) + 56);
  v19(v17, 0, 1, v18);
  v20 = type metadata accessor for Notice(0);
  v21 = v20[5];
  v19((a9 + v21), 1, 1, v18);
  v22 = (a9 + v20[7]);
  v23 = (a9 + v20[8]);
  v24 = v20[10];
  v25 = a9 + v20[9];
  *a9 = a1;
  a9[1] = a2;
  result = sub_6A1DB0(v17, a9 + v21);
  v27 = (a9 + v20[6]);
  v28 = v36;
  *v27 = v34;
  v27[1] = v28;
  v29 = v38;
  *v22 = v37;
  v22[1] = v29;
  v30 = v32;
  *v23 = v31;
  v23[1] = v30;
  *v25 = v33;
  v25[8] = v35 & 1;
  *(a9 + v24) = 1;
  return result;
}

uint64_t Notice.withLink(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_6A2290(v3, a3, type metadata accessor for Notice);
  v7 = (a3 + *(type metadata accessor for Notice(0) + 32));
  v8 = *v7;
  v9 = v7[1];

  result = sub_17654(v8, v9);
  *v7 = a1;
  v7[1] = a2;
  return result;
}

unint64_t Notice.Variant.id.getter()
{
  type metadata accessor for Notice.Variant(0);
  __chkstk_darwin();
  v2 = &v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_6A2290(v0, v2, type metadata accessor for Notice.Variant);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = 0x7478654E79616C70;
  switch(EnumCaseMultiPayload)
  {
    case 1:
      sub_6A2C40(v2, type metadata accessor for Notice.Variant);
      result = 0x466F546465766F6DLL;
      break;
    case 2:
      sub_6A2C40(v2, type metadata accessor for Notice.Variant);
      result = 0xD000000000000016;
      break;
    case 3:
      sub_6A2C40(v2, type metadata accessor for Notice.Variant);
      result = 0xD000000000000014;
      break;
    case 4:
      sub_6A2C40(v2, type metadata accessor for Notice.Variant);
      result = 0x726F727265;
      break;
    case 5:
      return result;
    case 6:
      result = 0x7473614C79616C70;
      break;
    case 7:
      result = 0x6575516F54646461;
      break;
    case 8:
      result = 0x6574664179616C70;
      break;
    case 9:
      result = 0x417972617262696CLL;
      break;
    case 10:
      result = 0x72437265646C6F66;
      break;
    case 11:
      result = 0x436E6F6974617473;
      break;
    case 12:
      result = 0x64656E6E6970;
      break;
    case 13:
      result = 0x64656E6E69706E75;
      break;
    case 14:
      result = 0x657469726F766166;
      break;
    case 15:
      result = 0x69726F7661666E75;
      break;
    case 16:
      result = 0x4C74736567677573;
      break;
    case 17:
      result = 0xD00000000000001DLL;
      break;
    default:

      v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E120B8, &qword_B208E0);
      sub_12E1C(&v2[*(v5 + 48)], &unk_E10D80, &unk_B1D048);
      result = 0x506F546465646461;
      break;
  }

  return result;
}