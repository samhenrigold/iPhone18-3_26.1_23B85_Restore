void sub_100A05BBC(uint64_t a1)
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
        sub_100993D24(*(*(a1 + 48) + (v10 | (v9 << 6))));
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

void *sub_100A05CB0(uint64_t a1, void *a2)
{
  v5 = a2;
  if (a2[2])
  {
    v6 = a1;
    v59 = 0;
    v7 = *(a1 + 56);
    v79 = a1 + 56;
    v8 = -1 << *(a1 + 32);
    v78 = ~v8;
    if (-v8 < 64)
    {
      v9 = ~(-1 << -v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & v7;
    v64 = (63 - v8) >> 6;
    v82 = a2 + 7;

    v80 = 0;
    v77 = "LibraryView.RecentlyAdded";
    v76 = "LibraryView.Playlists";
    v75 = "LibraryView.Artists";
    v74 = "LibraryView.Albums";
    v73 = "LibraryView.Songs";
    v72 = "LibraryView.MadeForYou";
    v71 = "LibraryView.MusicVideos";
    v70 = "LibraryView.Genres";
    v69 = "LibraryView.Compilations";
    v68 = "LibraryView.Composers";
    v67 = "LibraryView.Shows";
    v66 = "LibraryView.Downloaded";
    do
    {
LABEL_6:
      if (!v10)
      {
        v12 = v79;
        v13 = v80;
        while (1)
        {
          v14 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v14 >= v64)
          {
            v28 = v6;
            goto LABEL_106;
          }

          v10 = *(v79 + 8 * v14);
          ++v13;
          if (v10)
          {
            v80 = v14;
            goto LABEL_13;
          }
        }

LABEL_109:
        __break(1u);
        goto LABEL_110;
      }

      v12 = v79;
LABEL_13:
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
      v16 = *(*(v6 + 48) + (v15 | (v80 << 6)));
      v84 = v6;
      v85 = v12;
      v86 = v78;
      v87 = v80;
      v88 = v10;
      Hasher.init(_seed:)();
      v81 = v16;
      Library.Menu.Identifier.rawValue.getter(v16);
      String.hash(into:)();

      v17 = Hasher._finalize()();
      v18 = -1 << *(v5 + 32);
      v2 = v17 & ~v18;
      v3 = v2 >> 6;
      v4 = 1 << v2;
    }

    while (((1 << v2) & v82[v2 >> 6]) == 0);
    v65 = v6;
    v19 = ~v18;
    while (1)
    {
      v20 = 0xD000000000000029;
      v21 = "nt";
      switch(*(v5[6] + v2))
      {
        case 1:
          v20 = 0xD000000000000025;
          v22 = &v100;
          goto LABEL_28;
        case 2:
          v20 = 0xD000000000000023;
          v22 = &v99;
          goto LABEL_28;
        case 3:
          v20 = 0xD000000000000022;
          v22 = &v98;
          goto LABEL_28;
        case 4:
          v20 = 0xD000000000000021;
          v22 = &v97;
          goto LABEL_28;
        case 5:
          v20 = 0xD000000000000026;
          v22 = &v96;
          goto LABEL_28;
        case 6:
          v20 = 0xD000000000000027;
          v22 = &v95;
          goto LABEL_28;
        case 7:
          v20 = 0xD000000000000022;
          v22 = &v94;
          goto LABEL_28;
        case 8:
          v20 = 0xD000000000000028;
          v22 = &v93;
          goto LABEL_28;
        case 9:
          v20 = 0xD000000000000025;
          v22 = &v92;
          goto LABEL_28;
        case 0xA:
          v20 = 0xD000000000000021;
          v22 = &v91;
          goto LABEL_28;
        case 0xB:
          v20 = 0xD000000000000026;
          v22 = &v90;
          goto LABEL_28;
        case 0xC:
          v20 = 0xD000000000000027;
          v22 = &v89;
LABEL_28:
          v21 = *(v22 - 32);
          break;
        default:
          break;
      }

      v23 = v21 | 0x8000000000000000;
      v24 = 0xD000000000000029;
      v25 = "nt";
      switch(v81)
      {
        case 1:
          v24 = 0xD000000000000025;
          v26 = &v100;
          goto LABEL_42;
        case 2:
          v24 = 0xD000000000000023;
          v26 = &v99;
          goto LABEL_42;
        case 3:
          v24 = 0xD000000000000022;
          v26 = &v98;
          goto LABEL_42;
        case 4:
          v24 = 0xD000000000000021;
          v26 = &v97;
          goto LABEL_42;
        case 5:
          v24 = 0xD000000000000026;
          v26 = &v96;
          goto LABEL_42;
        case 6:
          v24 = 0xD000000000000027;
          v26 = &v95;
          goto LABEL_42;
        case 7:
          v24 = 0xD000000000000022;
          v26 = &v94;
          goto LABEL_42;
        case 8:
          v24 = 0xD000000000000028;
          v26 = &v93;
          goto LABEL_42;
        case 9:
          v24 = 0xD000000000000025;
          v26 = &v92;
          goto LABEL_42;
        case 10:
          v24 = 0xD000000000000021;
          v26 = &v91;
          goto LABEL_42;
        case 11:
          v24 = 0xD000000000000026;
          v26 = &v90;
          goto LABEL_42;
        case 12:
          v24 = 0xD000000000000027;
          v26 = &v89;
LABEL_42:
          v25 = *(v26 - 32);
          break;
        default:
          break;
      }

      if (v20 == v24 && v23 == (v25 | 0x8000000000000000))
      {
        break;
      }

      v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v27)
      {
        goto LABEL_51;
      }

      v2 = (v2 + 1) & v19;
      v3 = v2 >> 6;
      v4 = 1 << v2;
      if ((v82[v2 >> 6] & (1 << v2)) == 0)
      {
        v6 = v65;
        goto LABEL_6;
      }
    }

LABEL_51:
    v29 = *(v5 + 32);
    v60 = ((1 << v29) + 63) >> 6;
    v11 = 8 * v60;
    if ((v29 & 0x3Fu) <= 0xD)
    {
      goto LABEL_52;
    }

LABEL_110:
    v53 = v11;

    if (swift_stdlib_isStackAllocationSafe())
    {

LABEL_52:
      v61 = &v58;
      __chkstk_darwin();
      v31 = &v58 - ((v30 + 15) & 0x3FFFFFFFFFFFFFF0);
      memcpy(v31, v82, v30);
      v32 = *&v31[8 * v3] & ~v4;
      v33 = v5[2];
      v63 = v31;
      *&v31[8 * v3] = v32;
      v34 = v33 - 1;
LABEL_53:
      v62 = v34;
LABEL_54:
      while (v10)
      {
        v35 = v79;
LABEL_61:
        v38 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
        v3 = *(*(v65 + 48) + (v38 | (v80 << 6)));
        v84 = v65;
        v85 = v35;
        v86 = v78;
        v87 = v80;
        v88 = v10;
        Hasher.init(_seed:)();
        Library.Menu.Identifier.rawValue.getter(v3);
        String.hash(into:)();

        v2 = v83;
        v39 = Hasher._finalize()();
        v40 = -1 << *(v5 + 32);
        v41 = v39 & ~v40;
        v4 = v41 >> 6;
        v42 = 1 << v41;
        if (((1 << v41) & v82[v41 >> 6]) != 0)
        {
          v81 = ~v40;
          while (1)
          {
            v43 = 0xD000000000000029;
            v44 = "nt";
            switch(*(v5[6] + v41))
            {
              case 1:
                v43 = 0xD000000000000025;
                v45 = &v100;
                goto LABEL_76;
              case 2:
                v43 = 0xD000000000000023;
                v45 = &v99;
                goto LABEL_76;
              case 3:
                v43 = 0xD000000000000022;
                v45 = &v98;
                goto LABEL_76;
              case 4:
                v43 = 0xD000000000000021;
                v45 = &v97;
                goto LABEL_76;
              case 5:
                v43 = 0xD000000000000026;
                v45 = &v96;
                goto LABEL_76;
              case 6:
                v43 = 0xD000000000000027;
                v45 = &v95;
                goto LABEL_76;
              case 7:
                v43 = 0xD000000000000022;
                v45 = &v94;
                goto LABEL_76;
              case 8:
                v43 = 0xD000000000000028;
                v45 = &v93;
                goto LABEL_76;
              case 9:
                v43 = 0xD000000000000025;
                v45 = &v92;
                goto LABEL_76;
              case 0xA:
                v43 = 0xD000000000000021;
                v45 = &v91;
                goto LABEL_76;
              case 0xB:
                v43 = 0xD000000000000026;
                v45 = &v90;
                goto LABEL_76;
              case 0xC:
                v43 = 0xD000000000000027;
                v45 = &v89;
LABEL_76:
                v44 = *(v45 - 32);
                break;
              default:
                break;
            }

            v2 = v44 | 0x8000000000000000;
            v46 = 0xD000000000000029;
            v47 = "nt";
            switch(v3)
            {
              case 1uLL:
                v46 = 0xD000000000000025;
                v48 = &v100;
                goto LABEL_90;
              case 2uLL:
                v46 = 0xD000000000000023;
                v48 = &v99;
                goto LABEL_90;
              case 3uLL:
                v46 = 0xD000000000000022;
                v48 = &v98;
                goto LABEL_90;
              case 4uLL:
                v46 = 0xD000000000000021;
                v48 = &v97;
                goto LABEL_90;
              case 5uLL:
                v46 = 0xD000000000000026;
                v48 = &v96;
                goto LABEL_90;
              case 6uLL:
                v46 = 0xD000000000000027;
                v48 = &v95;
                goto LABEL_90;
              case 7uLL:
                v46 = 0xD000000000000022;
                v48 = &v94;
                goto LABEL_90;
              case 8uLL:
                v46 = 0xD000000000000028;
                v48 = &v93;
                goto LABEL_90;
              case 9uLL:
                v46 = 0xD000000000000025;
                v48 = &v92;
                goto LABEL_90;
              case 0xAuLL:
                v46 = 0xD000000000000021;
                v48 = &v91;
                goto LABEL_90;
              case 0xBuLL:
                v46 = 0xD000000000000026;
                v48 = &v90;
                goto LABEL_90;
              case 0xCuLL:
                v46 = 0xD000000000000027;
                v48 = &v89;
LABEL_90:
                v47 = *(v48 - 32);
                break;
              default:
                break;
            }

            if (v43 == v46 && v2 == (v47 | 0x8000000000000000))
            {
              break;
            }

            v49 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v49)
            {
              goto LABEL_97;
            }

            v41 = (v41 + 1) & v81;
            v4 = v41 >> 6;
            v42 = 1 << v41;
            if ((v82[v41 >> 6] & (1 << v41)) == 0)
            {
              goto LABEL_54;
            }
          }

LABEL_97:
          v50 = v63[v4];
          v63[v4] = v50 & ~v42;
          if ((v50 & v42) != 0)
          {
            v34 = v62 - 1;
            if (__OFSUB__(v62, 1))
            {
              __break(1u);
            }

            if (v62 == 1)
            {

              v5 = &_swiftEmptySetSingleton;
              goto LABEL_105;
            }

            goto LABEL_53;
          }
        }
      }

      v35 = v79;
      v36 = v80;
      while (1)
      {
        v37 = v36 + 1;
        if (__OFADD__(v36, 1))
        {
          __break(1u);
          goto LABEL_109;
        }

        if (v37 >= v64)
        {
          break;
        }

        v10 = *(v79 + 8 * v37);
        ++v36;
        if (v10)
        {
          v80 = v37;
          goto LABEL_61;
        }
      }

      if (v64 <= v80 + 1)
      {
        v51 = v80 + 1;
      }

      else
      {
        v51 = v64;
      }

      v84 = v65;
      v85 = v79;
      v86 = v78;
      v87 = v51 - 1;
      v88 = 0;
      v5 = sub_100A0582C(v63, v60, v62, v5);
      goto LABEL_105;
    }

    v54 = swift_slowAlloc();
    memcpy(v54, v82, v53);
    v55 = v59;
    sub_100A066B8(v54, v60, v5, v2, &v84);
    v57 = v56;

    if (v55)
    {

      __break(1u);
      return result;
    }

    v5 = v57;
LABEL_105:
    v28 = v84;
LABEL_106:
    sub_10005C9F8(v28);
  }

  else
  {

    return &_swiftEmptySetSingleton;
  }

  return v5;
}

void sub_100A066B8(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v5 = *(a3 + 16);
  *(a1 + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v6 = v5 - 1;
  v31 = a3 + 56;
  while (2)
  {
    v27 = v6;
    while (1)
    {
LABEL_3:
      v7 = a5[3];
      v8 = a5[4];
      if (!v8)
      {
        v10 = (a5[2] + 64) >> 6;
        v11 = a5[3];
        while (1)
        {
          v9 = v11 + 1;
          if (__OFADD__(v11, 1))
          {
            __break(1u);
            goto LABEL_52;
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
          v25 = v7 + 1;
        }

        else
        {
          v25 = (a5[2] + 64) >> 6;
        }

        a5[3] = v25 - 1;
        a5[4] = 0;

        sub_100A0582C(a1, a2, v27, a3);
        return;
      }

      v9 = a5[3];
LABEL_9:
      v12 = *(*(*a5 + 48) + (__clz(__rbit64(v8)) | (v9 << 6)));
      a5[3] = v9;
      a5[4] = (v8 - 1) & v8;
      Hasher.init(_seed:)();
      Library.Menu.Identifier.rawValue.getter(v12);
      String.hash(into:)();

      v13 = Hasher._finalize()();
      v14 = -1 << *(a3 + 32);
      v15 = v13 & ~v14;
      v16 = v15 >> 6;
      v17 = 1 << v15;
      if (((1 << v15) & *(v31 + 8 * (v15 >> 6))) != 0)
      {
        v30 = ~v14;
        while (1)
        {
          v18 = 0xD000000000000029;
          v19 = "nt";
          switch(*(*(a3 + 48) + v15))
          {
            case 1:
              v18 = 0xD000000000000025;
              v19 = "LibraryView.RecentlyAdded";
              break;
            case 2:
              v18 = 0xD000000000000023;
              v19 = "LibraryView.Playlists";
              break;
            case 3:
              v18 = 0xD000000000000022;
              v19 = "LibraryView.Artists";
              break;
            case 4:
              v18 = 0xD000000000000021;
              v19 = "LibraryView.Albums";
              break;
            case 5:
              v18 = 0xD000000000000026;
              v19 = "LibraryView.Songs";
              break;
            case 6:
              v18 = 0xD000000000000027;
              v19 = "LibraryView.MadeForYou";
              break;
            case 7:
              v18 = 0xD000000000000022;
              v19 = "LibraryView.MusicVideos";
              break;
            case 8:
              v18 = 0xD000000000000028;
              v19 = "LibraryView.Genres";
              break;
            case 9:
              v18 = 0xD000000000000025;
              v19 = "LibraryView.Compilations";
              break;
            case 0xA:
              v18 = 0xD000000000000021;
              v19 = "LibraryView.Composers";
              break;
            case 0xB:
              v18 = 0xD000000000000026;
              v19 = "LibraryView.Shows";
              break;
            case 0xC:
              v18 = 0xD000000000000027;
              v19 = "LibraryView.Downloaded";
              break;
            default:
              break;
          }

          v20 = v19 | 0x8000000000000000;
          v21 = 0xD000000000000029;
          v22 = "nt";
          switch(v12)
          {
            case 1:
              v21 = 0xD000000000000025;
              v22 = "LibraryView.RecentlyAdded";
              break;
            case 2:
              v21 = 0xD000000000000023;
              v22 = "LibraryView.Playlists";
              break;
            case 3:
              v21 = 0xD000000000000022;
              v22 = "LibraryView.Artists";
              break;
            case 4:
              v21 = 0xD000000000000021;
              v22 = "LibraryView.Albums";
              break;
            case 5:
              v21 = 0xD000000000000026;
              v22 = "LibraryView.Songs";
              break;
            case 6:
              v21 = 0xD000000000000027;
              v22 = "LibraryView.MadeForYou";
              break;
            case 7:
              v21 = 0xD000000000000022;
              v22 = "LibraryView.MusicVideos";
              break;
            case 8:
              v21 = 0xD000000000000028;
              v22 = "LibraryView.Genres";
              break;
            case 9:
              v21 = 0xD000000000000025;
              v22 = "LibraryView.Compilations";
              break;
            case 10:
              v21 = 0xD000000000000021;
              v22 = "LibraryView.Composers";
              break;
            case 11:
              v21 = 0xD000000000000026;
              v22 = "LibraryView.Shows";
              break;
            case 12:
              v21 = 0xD000000000000027;
              v22 = "LibraryView.Downloaded";
              break;
            default:
              break;
          }

          if (v18 == v21 && v20 == (v22 | 0x8000000000000000))
          {
            break;
          }

          v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v23)
          {
            goto LABEL_43;
          }

          v15 = (v15 + 1) & v30;
          v16 = v15 >> 6;
          v17 = 1 << v15;
          if ((*(v31 + 8 * (v15 >> 6)) & (1 << v15)) == 0)
          {
            goto LABEL_3;
          }
        }

LABEL_43:
        v24 = a1[v16];
        a1[v16] = v24 & ~v17;
        if ((v24 & v17) != 0)
        {
          break;
        }
      }
    }

    v6 = v27 - 1;
    if (__OFSUB__(v27, 1))
    {
LABEL_52:
      __break(1u);
    }

    else if (v27 != 1)
    {
      continue;
    }

    break;
  }
}

BOOL _s9MusicCore7LibraryO4MenuV7RequestV23__derived_struct_equalsySbAG_AGtFZ_0(uint64_t *a1, uint64_t *a2)
{
  if (a1[1])
  {
    if ((a2[1] & 1) == 0)
    {
      return 0;
    }

    type metadata accessor for MusicLibrary();
    if ((static MusicLibrary.== infix(_:_:)() & 1) == 0)
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

    sub_100009F78(0, &qword_1011AAEA0, NSObject_ptr);
    if ((static NSObject.== infix(_:_:)() & 1) == 0)
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

    sub_100009F78(0, &qword_1011ABAD8, MPMediaPickerConfiguration_ptr);
    v6 = v5;
    v7 = v4;
    v8 = static NSObject.== infix(_:_:)();

    if ((v8 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  sub_1009F9754(a1[4], a2[4]);
  if (v9 & 1) == 0 || ((*(a1 + 40) ^ *(a2 + 40)) & 1) != 0 || ((*(a1 + 41) ^ *(a2 + 41)) & 1) != 0 || ((*(a1 + 42) ^ *(a2 + 42)))
  {
    return 0;
  }

  v11 = a1[6];
  v10 = a1[7];
  v13 = a1[8];
  v12 = a1[9];
  v14 = a2[6];
  v15 = a2[7];
  v17 = a2[8];
  v16 = a2[9];
  if (v11)
  {
    if (v14)
    {
      sub_100A00D74(v14, v15, v17, v16);
      sub_100A00D74(v11, v10, v13, v12);
      sub_10095CBC8(v11, v14);
      if (v18)
      {
        sub_1009F9754(v10, v15);
        if (v19)
        {
          sub_10095CBC8(v13, v17);
          if (v20)
          {
            sub_1009F9754(v12, v16);
            v22 = v21;

            sub_1005BF344(v11, v10, v13, v12);
            return (v22 & 1) != 0;
          }
        }
      }

      v23 = v11;
      v24 = v10;
      v25 = v13;
      v26 = v12;
LABEL_27:
      sub_1005BF344(v23, v24, v25, v26);
      return 0;
    }

LABEL_25:
    sub_100A00D74(v14, v15, v17, v16);
    sub_100A00D74(v11, v10, v13, v12);
    sub_1005BF344(v11, v10, v13, v12);
    v23 = v14;
    v24 = v15;
    v25 = v17;
    v26 = v16;
    goto LABEL_27;
  }

  if (v14)
  {
    goto LABEL_25;
  }

  return 1;
}

void sub_100A06DF8(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t *a4)
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

    v14 = sub_1009F945C(v12, v13);

    --v9;
    if (v14)
    {
      return;
    }
  }
}

void sub_100A06EC0(char *a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a1;
  v6 = sub_100999FF4(*a1, a2);
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

  sub_1009FEC88(a2, a2 + 32, 0, (2 * v6) | 1, a3);
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

    v18 = sub_100999FF4(v11, v17);
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

  sub_100A06DF8(a2 + 32, v8, (2 * v9) | 1, a3);
  if (v11 == 13)
  {
    if (v12 == 13)
    {
LABEL_12:
      swift_beginAccess();
      sub_1008BBFD0(0, 0, v5);
LABEL_19:
      swift_endAccess();
      return;
    }

    v13 = v12;
    swift_beginAccess();
    v14 = *a3;

    v11 = sub_100999FF4(v13, v14);
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
      sub_1008BBFD0(v11, v11, v5);
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

  v24 = sub_100999FF4(v11, v23);
  v26 = v25;

  if (v26)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  swift_beginAccess();
  v27 = *a3;

  v28 = sub_100999FF4(v22, v27);
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

void sub_100A071F4(uint64_t a1, uint64_t a2, uint64_t *a3)
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
      sub_100A06EC0(&v14, a2, a3);
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

unint64_t _s9MusicCore7LibraryO4MenuV10IdentifierO8rawValueAGSgSS_tcfC_0(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1010C7C90, v2);

  if (v3 >= 0xD)
  {
    return 13;
  }

  else
  {
    return v3;
  }
}

Swift::Int sub_100A07334(Swift::Int result, uint64_t a2, uint64_t a3, uint64_t a4)
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
    result = sub_10096A3C8(*(*(a3 + 48) + v17), a4);
    if (result)
    {
      *(v6 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      if (__OFADD__(v7++, 1))
      {
        __break(1u);
LABEL_15:

        return sub_100A0582C(v6, a2, v7, a3);
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

Swift::Int sub_100A07468(uint64_t a1, int64_t a2, uint64_t a3)
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
      if (sub_10096A3C8(*(*(a1 + 48) + v10), a3))
      {
        *&v12[(v10 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v10;
        if (__OFADD__(v11++, 1))
        {
          __break(1u);
LABEL_16:
          v20 = sub_100A0582C(v12, v24, v11, a1);

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

  v20 = sub_100A05450(v22, v10, a1, a2, a3);

  return v20;
}

void sub_100A076F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
      v29 = sub_1008B4BC0(v4);
      sub_1008BBFD0(0, 0, v29);
      sub_100A006DC(&v36, 0);
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

    v12._countAndFlagsBits = v10;
    v12._object = v11;
    v13 = _findStringSwitchCase(cases:string:)(&off_1010C7C90, v12);

    ++v5;
    v9 += 2;
    if (v13 < 0xD)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = sub_10089CF3C(0, *(v8 + 2) + 1, 1, v8);
      }

      v15 = *(v8 + 2);
      v14 = *(v8 + 3);
      if (v15 >= v14 >> 1)
      {
        v8 = sub_10089CF3C((v14 > 1), v15 + 1, 1, v8);
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

    v23._countAndFlagsBits = v21;
    v23._object = v22;
    v24 = _findStringSwitchCase(cases:string:)(&off_1010C7C90, v23);

    ++v4;
    v19 += 2;
    if (v24 < 0xD)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v18 = sub_10089CF3C(0, *(v18 + 2) + 1, 1, v18);
      }

      v26 = *(v18 + 2);
      v25 = *(v18 + 3);
      if (v26 >= v25 >> 1)
      {
        v18 = sub_10089CF3C((v25 > 1), v26 + 1, 1, v18);
      }

      *(v18 + 2) = v26 + 1;
      v18[v26 + 32] = v24;
      v4 = v20;
      v17 = v34;
      goto LABEL_13;
    }
  }

  sub_10099546C(v18);

  v35 = v8;

  sub_1009FD764(a3, a4);
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
              v28 = _stringCompareWithSmolCheck(_:_:expecting:)();

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
    }
  }
}

void sub_100A07BC8(void *a1)
{
  v3 = sub_10010FC20(&qword_1011ABAC0, &qword_100EF58B8);
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = v59 - v5;
  sub_10000954C(a1, a1[3]);
  sub_100A08298();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
LABEL_3:
    sub_10000959C(a1);
  }

  else
  {
    v7 = sub_10010FC20(&unk_1011A9FA0, &unk_100EEC490);
    v67 = 1;
    v8 = sub_100A08E24(&qword_1011ABAC8, &unk_1011A9FA0, &unk_100EEC490, &protocol conformance descriptor for <A> [A]);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
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

      v17._countAndFlagsBits = v15;
      v17._object = v16;
      v18 = _findStringSwitchCase(cases:string:)(&off_1010C7C90, v17);

      v13 = v14;
      if (v18 < 0xD)
      {
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v19 = v65;
        }

        else
        {
          v19 = sub_10089CF3C(0, *(v65 + 2) + 1, 1, v65);
        }

        v21 = *(v19 + 2);
        v20 = *(v19 + 3);
        if (v21 >= v20 >> 1)
        {
          v19 = sub_10089CF3C((v20 > 1), v21 + 1, 1, v19);
        }

        *(v19 + 2) = v21 + 1;
        v65 = v19;
        v19[v21 + 32] = v18;
        v12 = v61;
        goto LABEL_4;
      }
    }

    sub_10010FC20(&qword_1011A9710, &unk_100EF0A38);
    v67 = 0;
    sub_100A08E24(&qword_1011A9800, &qword_1011A9710, &unk_100EF0A38, &protocol conformance descriptor for <> Set<A>);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
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

        v34._countAndFlagsBits = v32;
        v34._object = v33;
        v35 = _findStringSwitchCase(cases:string:)(&off_1010C7C90, v34);

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
        v29 = sub_10089CF3C(0, *(v29 + 2) + 1, 1, v29);
      }

      v37 = v29;
      v38 = *(v29 + 2);
      v39 = v37;
      v40 = *(v37 + 3);
      if (v38 >= v40 >> 1)
      {
        v39 = sub_10089CF3C((v40 > 1), v38 + 1, 1, v39);
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

        v42 = sub_10099546C(v29);

        v67 = 2;
        v43 = v63;
        v44 = v64;
        v45 = v61;
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        if (v45)
        {

          v67 = 2;
          sub_100A08E84();
          KeyedDecodingContainer.decode<A>(_:forKey:)();
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

            v55._countAndFlagsBits = v53;
            v55._object = v54;
            v56 = _findStringSwitchCase(cases:string:)(&off_1010C7C90, v55);

            v51 = v52;
            if (v56 < 0xD)
            {
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v50 = sub_10089CF3C(0, *(v50 + 2) + 1, 1, v50);
              }

              v58 = *(v50 + 2);
              v57 = *(v50 + 3);
              if (v58 >= v57 >> 1)
              {
                v50 = sub_10089CF3C((v57 > 1), v58 + 1, 1, v50);
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

unint64_t sub_100A08298()
{
  result = qword_1011AB9B0;
  if (!qword_1011AB9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011AB9B0);
  }

  return result;
}

unint64_t sub_100A082EC()
{
  result = qword_1011AB9C8;
  if (!qword_1011AB9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011AB9C8);
  }

  return result;
}

uint64_t sub_100A08340(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1001109D0(&qword_1011AB9D0, &qword_100EF5018);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100A083B8()
{
  result = qword_1011AB9E0;
  if (!qword_1011AB9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011AB9E0);
  }

  return result;
}

unint64_t sub_100A0840C()
{
  result = qword_1011AB9F0;
  if (!qword_1011AB9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011AB9F0);
  }

  return result;
}

unint64_t sub_100A08460(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1010C7DE8, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100A084AC(void *a1)
{
  v2 = sub_10010FC20(&qword_1011ABAA0, &qword_100EF58B0);
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v8 - v4;
  sub_10000954C(a1, a1[3]);
  sub_100A0840C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  sub_10010FC20(&qword_1011AB9B8, &qword_100EF5010);
  HIBYTE(v8) = 0;
  sub_100A08D58(&qword_1011ABAA8, sub_100A08DD0, &protocol conformance descriptor for <A> [A]);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v7 = v9;
  sub_10010FC20(&qword_1011AB9D0, &qword_100EF5018);
  HIBYTE(v8) = 1;
  sub_100A08340(&qword_1011ABAB8, sub_100A08DD0, &protocol conformance descriptor for <> Set<A>);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v3 + 8))(v5, v2);
  sub_10000959C(a1);
  return v7;
}

unint64_t sub_100A08720()
{
  result = qword_1011AB9F8;
  if (!qword_1011AB9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011AB9F8);
  }

  return result;
}

unint64_t sub_100A08778()
{
  result = qword_1011ABA38;
  if (!qword_1011ABA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011ABA38);
  }

  return result;
}

uint64_t sub_100A08820(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_100A08838(uint64_t a1, int a2)
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

uint64_t sub_100A08880(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for VerticalToggleSlider.Mode(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_20;
  }

  v2 = a2 + 2;
  if (a2 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 <= 1)
  {
    if (!v4)
    {
      goto LABEL_20;
    }

    v5 = a1[1];
    if (!a1[1])
    {
      goto LABEL_20;
    }

    return (*a1 | (v5 << 8)) - 2;
  }

  if (v4 == 2)
  {
    v5 = *(a1 + 1);
    if (*(a1 + 1))
    {
      return (*a1 | (v5 << 8)) - 2;
    }
  }

  else
  {
    v5 = *(a1 + 1);
    if (v5)
    {
      return (*a1 | (v5 << 8)) - 2;
    }
  }

LABEL_20:
  v7 = *a1;
  v8 = v7 >= 2;
  v9 = (v7 + 2147483646) & 0x7FFFFFFF;
  if (!v8)
  {
    v9 = -1;
  }

  if (v9 + 1 >= 2)
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_100A08990(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

__n128 sub_100A089F8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_100A08A0C(uint64_t *a1, int a2)
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

uint64_t sub_100A08A54(uint64_t result, int a2, int a3)
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

unint64_t sub_100A08AAC()
{
  result = qword_1011ABA48;
  if (!qword_1011ABA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011ABA48);
  }

  return result;
}

unint64_t sub_100A08B04()
{
  result = qword_1011ABA50;
  if (!qword_1011ABA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011ABA50);
  }

  return result;
}

unint64_t sub_100A08B5C()
{
  result = qword_1011ABA58;
  if (!qword_1011ABA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011ABA58);
  }

  return result;
}

unint64_t sub_100A08BB4()
{
  result = qword_1011ABA60;
  if (!qword_1011ABA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011ABA60);
  }

  return result;
}

unint64_t sub_100A08C0C()
{
  result = qword_1011ABA68;
  if (!qword_1011ABA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011ABA68);
  }

  return result;
}

unint64_t sub_100A08C64()
{
  result = qword_1011ABA70;
  if (!qword_1011ABA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011ABA70);
  }

  return result;
}

unint64_t sub_100A08CB8()
{
  result = qword_1011ABA90;
  if (!qword_1011ABA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011ABA90);
  }

  return result;
}

uint64_t sub_100A08D0C(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v3;
  v5[2] = *(a1 + 32);
  v6 = *(a1 + 48);
  return v2(v5);
}

uint64_t sub_100A08D58(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1001109D0(&qword_1011AB9B8, &qword_100EF5010);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100A08DD0()
{
  result = qword_1011ABAB0;
  if (!qword_1011ABAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011ABAB0);
  }

  return result;
}

uint64_t sub_100A08E24(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1001109D0(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100A08E84()
{
  result = qword_1011ABAD0;
  if (!qword_1011ABAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011ABAD0);
  }

  return result;
}

unint64_t sub_100A08ED8()
{
  result = qword_1011ABAE0;
  if (!qword_1011ABAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011ABAE0);
  }

  return result;
}

unint64_t sub_100A08F2C()
{
  result = qword_1011ABAE8;
  if (!qword_1011ABAE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011ABAE8);
  }

  return result;
}

uint64_t *sub_100A08F80@<X0>(uint64_t *result@<X0>, _BYTE *a2@<X8>)
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

unint64_t sub_100A09154()
{
  result = qword_1011ABB10;
  if (!qword_1011ABB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011ABB10);
  }

  return result;
}

Swift::Int sub_100A091A8(uint64_t a1, unsigned __int8 a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int sub_100A092C0(uint64_t a1, unsigned __int8 a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int sub_100A093D8(uint64_t a1, unsigned __int8 a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t Library.SortConfiguration.storageKey.getter(unsigned __int8 a1)
{
  _StringGuts.grow(_:)(33);

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
    v10 = v3;
  }

  else
  {
    v10 = v5;
  }

  if (a1 <= 2u)
  {
    v11 = v2;
  }

  else
  {
    v11 = v4;
  }

  v12 = v11;
  String.append(_:)(*&v10);

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

double sub_100A09774(uint64_t a1)
{
  String.hash(into:)();

  return result;
}

unint64_t sub_100A0989C@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s9MusicCore7LibraryO17SortConfigurationO8rawValueAESgSS_tcfC_0(*a1);
  *a2 = result;
  return result;
}

void sub_100A098CC(uint64_t *a1@<X8>)
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

unint64_t _s9MusicCore7LibraryO17SortConfigurationO8rawValueAESgSS_tcfC_0(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1010C7EA0, v2);

  if (v3 >= 7)
  {
    return 7;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_100A09A0C()
{
  result = qword_1011ABB18;
  if (!qword_1011ABB18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011ABB18);
  }

  return result;
}

uint64_t sub_100A09A70(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_100A0EBBC();

    v1 = _bridgeCocoaArray<A>(_:)();
  }

  else
  {
    v1 = a1;

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    sub_100A0EBBC();
  }

  return v1;
}

void *sub_100A09AF8(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = _swiftEmptyArrayStorage;
  if (v2)
  {
    sub_100899FF0(0, v2, 0);
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
        sub_100899FF0((v7 > 1), v5 + 1, 1);
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

void *sub_100A09BC4(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = _swiftEmptyArrayStorage;
  if (v2)
  {
    v6 = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v4 = a1 + 32;
    do
    {
      sub_1000160F8(v4, v5);
      sub_10010FC20(&qword_1011AEFF0, &qword_100EECB48);
      swift_dynamicCast();
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v4 += 40;
      --v2;
    }

    while (v2);
    return v6;
  }

  return result;
}

uint64_t SortOptions.SortType.localizedTitle.getter(Swift::Int a1)
{
  sub_100A09D34(a1, v5);
  v1 = v6;
  v2 = v7;
  sub_10000954C(v5, v6);
  v3 = (*(v2 + 8))(v1, v2);
  sub_10000959C(v5);
  return v3;
}

Swift::Int sub_100A09D34@<X0>(Swift::Int result@<X0>, uint64_t a2@<X8>)
{
  switch(result)
  {
    case 1:
      v7 = &type metadata for PlaylistOrderSort;
      v8 = &off_1010D7B58;
      goto LABEL_12;
    case 2:
      v5 = &type metadata for TitleSort;
      v6 = &off_1010D7AF8;
      goto LABEL_18;
    case 3:
      v5 = &type metadata for RecentlyAddedSort;
      v6 = &off_1010D7B98;
      goto LABEL_18;
    case 4:
      v5 = &type metadata for RecentlyPlayedSort;
      v6 = &off_1010D7BB8;
      goto LABEL_18;
    case 5:
      v5 = &type metadata for RecentlyUpdatedSort;
      v6 = &off_1010D7BD8;
      goto LABEL_18;
    case 6:
      v5 = &type metadata for ArtistSort;
      v6 = &off_1010D7B18;
      goto LABEL_18;
    case 7:
      v5 = &type metadata for AlbumSort;
      v6 = &off_1010D7B38;
      goto LABEL_18;
    case 8:
      v5 = &type metadata for PlaylistTypeSort;
      v6 = &off_1010D7B78;
LABEL_18:
      *(a2 + 24) = v5;
      *(a2 + 32) = v6;
      return result;
    case 9:
      v7 = &type metadata for YearSort;
      v8 = &off_1010D7BF8;
LABEL_12:
      *(a2 + 24) = v7;
      *(a2 + 32) = v8;
      *a2 = 0;
      return result;
    case 10:
      v2 = &type metadata for YearSort;
      v3 = &off_1010D7BF8;
      goto LABEL_16;
    case 11:
      v4 = a2;
      result = sub_10089E644(&off_1010C7F98);
      *(v4 + 24) = &type metadata for ReleaseDateSort;
      *(v4 + 32) = &off_1010D7C18;
      *v4 = 1;
      goto LABEL_6;
    case 12:
      v4 = a2;
      result = sub_10089E644(&off_1010C7FC0);
      *(v4 + 24) = &type metadata for ReleaseDateSort;
      *(v4 + 32) = &off_1010D7C18;
      *v4 = 0;
LABEL_6:
      *(v4 + 8) = result;
      break;
    default:
      v2 = &type metadata for PlaylistOrderSort;
      v3 = &off_1010D7B58;
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
      v5 = String._bridgeToObjectiveC()();
      v6 = [objc_opt_self() systemImageNamed:v5];

      if (v6)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v4 = [objc_opt_self() configurationWithScale:1];
      v7 = String._bridgeToObjectiveC()();
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
  sub_100A09D34(a2, v7);
  v3 = v8;
  v4 = v9;
  sub_10000954C(v7, v8);
  v5 = (*(v4 + 24))(a1, v3, v4);
  sub_10000959C(v7);
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

uint64_t sub_100A0A284(char *a1, char *a2)
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
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

unint64_t sub_100A0A354@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s9MusicCore11SortOptionsV0C4TypeO8rawValueAESgSS_tcfC_0(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_100A0A384@<X0>(unint64_t *a1@<X8>)
{
  result = SortOptions.SortType.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t SortOptions.ContentType.localizedTitle.getter(unsigned __int8 a1)
{
  type metadata accessor for Locale();
  __chkstk_darwin();
  v2 = type metadata accessor for String.LocalizationValue();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v7 = &v11[-v6];
  if ((a1 >> 6) > 2u && a1 != 192 && a1 != 193)
  {
    return 0;
  }

  String.LocalizationValue.init(stringLiteral:)();
  (*(v3 + 16))(v5, v7, v2);
  if (qword_1011A6740 != -1)
  {
    swift_once();
  }

  v8 = qword_101219808;
  static Locale.current.getter();
  v9 = String.init(localized:table:bundle:locale:comment:)();
  (*(v3 + 8))(v7, v2);
  return v9;
}

char *SortOptions.ContentType.availableSortTypes(withSelectedType:)(unsigned __int8 a1, uint64_t a2)
{
  v4 = 0;
  v5 = _swiftEmptyArrayStorage;
  do
  {
    v6 = *(&off_1010C7F68 + v4 + 32);
    switch(*(&off_1010C7F68 + v4 + 32))
    {
      case 1:
        v7 = &type metadata for PlaylistOrderSort;
        v22 = &type metadata for PlaylistOrderSort;
        v8 = &off_1010D7B58;
        goto LABEL_15;
      case 2:
        v7 = &type metadata for TitleSort;
        v8 = &off_1010D7AF8;
        goto LABEL_21;
      case 3:
        v7 = &type metadata for RecentlyAddedSort;
        v8 = &off_1010D7B98;
        goto LABEL_21;
      case 4:
        v7 = &type metadata for RecentlyPlayedSort;
        v8 = &off_1010D7BB8;
        goto LABEL_21;
      case 5:
        v7 = &type metadata for RecentlyUpdatedSort;
        v8 = &off_1010D7BD8;
        goto LABEL_21;
      case 6:
        v7 = &type metadata for ArtistSort;
        v8 = &off_1010D7B18;
        goto LABEL_21;
      case 7:
        v7 = &type metadata for AlbumSort;
        v8 = &off_1010D7B38;
        goto LABEL_21;
      case 8:
        v7 = &type metadata for PlaylistTypeSort;
        v8 = &off_1010D7B78;
LABEL_21:
        v22 = v7;
        v23 = v8;
        break;
      case 9:
        v7 = &type metadata for YearSort;
        v22 = &type metadata for YearSort;
        v8 = &off_1010D7BF8;
LABEL_15:
        v23 = v8;
        LOBYTE(v21[0]) = 0;
        break;
      case 0xA:
        v7 = &type metadata for YearSort;
        v22 = &type metadata for YearSort;
        v8 = &off_1010D7BF8;
        goto LABEL_19;
      case 0xB:
        v9 = sub_10089E644(&off_1010C82B8);
        v23 = &off_1010D7C18;
        LOBYTE(v21[0]) = 1;
        goto LABEL_9;
      case 0xC:
        v9 = sub_10089E644(&off_1010C82E0);
        v23 = &off_1010D7C18;
        LOBYTE(v21[0]) = 0;
LABEL_9:
        v7 = &type metadata for ReleaseDateSort;
        v22 = &type metadata for ReleaseDateSort;
        v21[1] = v9;
        v8 = &off_1010D7C18;
        break;
      default:
        v7 = &type metadata for PlaylistOrderSort;
        v22 = &type metadata for PlaylistOrderSort;
        v8 = &off_1010D7B58;
LABEL_19:
        v23 = v8;
        LOBYTE(v21[0]) = 1;
        break;
    }

    sub_10000954C(v21, v7);
    v10 = (v8[2])();
    v11 = sub_10096A744(a2, v10);

    sub_10000959C(v21);
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
            v14 = 0x8000000100E5A570;
          }

          else
          {
            v13 = 0xD000000000000016;
            v14 = 0x8000000100E5A550;
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
            v14 = 0x8000000100E5A520;
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
            v5 = sub_10089CF74(0, *(v5 + 2) + 1, 1, v5);
          }

          v19 = *(v5 + 2);
          v18 = *(v5 + 3);
          if (v19 >= v18 >> 1)
          {
            v5 = sub_10089CF74((v18 > 1), v19 + 1, 1, v5);
          }

          *(v5 + 2) = v19 + 1;
          v5[v19 + 32] = v6;
          goto LABEL_3;
        }

        if (v6)
        {
          v13 = 0xD000000000000018;
          v14 = 0x8000000100E5A450;
        }

        else
        {
          v12 = 24;
          v13 = 0xD000000000000019;
          v14 = 0x8000000100E5A470;
        }
      }

      v15 = 0xE700000000000000;
      v16 = 0x656C7469547942;
      switch(v12)
      {
        case 0:
          v15 = 0x8000000100E5A450;
          if (v13 == 0xD000000000000018)
          {
            goto LABEL_49;
          }

          goto LABEL_51;
        case 1:
          v15 = 0x8000000100E5A470;
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
          v15 = 0x8000000100E5A4C0;
          if (v13 != 0xD000000000000018)
          {
            goto LABEL_51;
          }

          goto LABEL_49;
        case 9:
          v15 = 0x8000000100E5A520;
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
          v15 = 0x8000000100E5A550;
          if (v13 != 0xD000000000000016)
          {
            goto LABEL_51;
          }

          goto LABEL_49;
        case 12:
          v15 = 0x8000000100E5A570;
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
            v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

unint64_t sub_100A0AC58(uint64_t a1)
{
  v1 = 0x676E6F5374726F73;
  if (a1 != 192)
  {
    v2 = a1;
    Hasher.init(_seed:)();
    v3 = SortOptions.ContentType.identifier.getter(v2);
    String.hash(into:)();

    v4 = Hasher._finalize()();
    Hasher.init(_seed:)();
    String.hash(into:)();
    if (v4 != Hasher._finalize()())
    {
      v1 = 0x75626C4174726F53;
      if ((v2 & 0xC0) != 0x40)
      {
        Hasher.init(_seed:)();
        String.hash(into:)();

        v7 = Hasher._finalize()();
        Hasher.init(_seed:)();
        String.hash(into:)();
        if (v7 == Hasher._finalize()())
        {
          return v1;
        }

        goto LABEL_5;
      }

      if ((v2 & 0x3F) != 0)
      {
LABEL_5:

        v5._countAndFlagsBits = 0x6570795474726F53;
        v5._object = 0xE800000000000000;
        String.append(_:)(v5);

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
    v10 = sub_100A0AC58(v1);
    v11 = v4;

    v5._countAndFlagsBits = 45;
    v5._object = 0xE100000000000000;
    String.append(_:)(v5);

    v6._countAndFlagsBits = countAndFlagsBits;
    v6._object = object;
    String.append(_:)(v6);

    v7 = v10;
    v8 = v11;
  }

  else
  {
    v7 = sub_100A0AC58(v1);
  }

  result._object = v8;
  result._countAndFlagsBits = v7;
  return result;
}

double SortOptions.ContentType.hash(into:)(uint64_t a1, unsigned __int8 a2)
{
  String.hash(into:)();

  return result;
}

Swift::Int SortOptions.ContentType.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  SortOptions.ContentType.identifier.getter(a1);
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int sub_100A0B2D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v5 = *v3;
  Hasher.init(_seed:)();
  a3(v5);
  String.hash(into:)();

  return Hasher._finalize()();
}

double sub_100A0B358(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  (a4)(*v4, a2, a3);
  String.hash(into:)();

  return result;
}

Swift::Int sub_100A0B3C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v6 = *v4;
  Hasher.init(_seed:)();
  a4(v6);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t static SortOptions.ViewType.Albums.preferredItemSortDescriptors.getter()
{
  sub_10010FC20(&qword_1011AA660, &unk_100EEF850);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_100EBE270;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v1 = objc_allocWithZone(NSSortDescriptor);
  v2 = String._bridgeToObjectiveC()();

  v3 = [v1 initWithKey:v2 ascending:1];

  *(v0 + 32) = v3;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = objc_allocWithZone(NSSortDescriptor);
  v5 = String._bridgeToObjectiveC()();

  v6 = [v4 initWithKey:v5 ascending:1];

  *(v0 + 40) = v6;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = objc_allocWithZone(NSSortDescriptor);
  v8 = String._bridgeToObjectiveC()();

  v9 = [v7 initWithKey:v8 ascending:1];

  *(v0 + 48) = v9;
  return v0;
}

uint64_t sub_100A0B5B8(unsigned __int8 a1, char a2)
{
  if (a1 == 194)
  {
    sub_10010FC20(&qword_1011AA660, &unk_100EEF850);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_100EBC6C0;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v4 = objc_allocWithZone(NSSortDescriptor);
    v5 = String._bridgeToObjectiveC()();

    v6 = [v4 initWithKey:v5 ascending:a2 & 1];

    *(v3 + 32) = v6;
    return v3;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

void sub_100A0B718()
{
  sub_10010FC20(&qword_1011AA660, &unk_100EEF850);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_100EBC6D0;
  sub_10010FC20(&unk_1011AAAB0, &unk_100EF3570);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_100EBDC20;
  *(v1 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v1 + 40) = v2;
  *(v1 + 48) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v1 + 56) = v3;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v5 = objc_opt_self();
  v6 = [v5 sortDescriptorWithKeyPath:isa ascending:1];

  *(v0 + 32) = v6;
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_100EBE260;
  *(v7 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v7 + 40) = v8;
  *(v7 + 48) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v7 + 56) = v9;
  *(v7 + 64) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v7 + 72) = v10;
  v11 = Array._bridgeToObjectiveC()().super.isa;

  v12 = [v5 sortDescriptorWithKeyPath:v11 ascending:1];

  *(v0 + 40) = v12;
  qword_101219C38 = v0;
}

void sub_100A0B8F4()
{
  sub_10010FC20(&qword_1011AA660, &unk_100EEF850);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_100EC3620;
  sub_10010FC20(&unk_1011AAAB0, &unk_100EF3570);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_100EBE260;
  *(v1 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v1 + 40) = v2;
  *(v1 + 48) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v1 + 56) = v3;
  *(v1 + 64) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v1 + 72) = v4;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v6 = objc_opt_self();
  v7 = [v6 sortDescriptorWithKeyPath:isa ascending:1];

  *(v0 + 32) = v7;
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_100EBDC20;
  *(v8 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v8 + 40) = v9;
  *(v8 + 48) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v8 + 56) = v10;
  v11 = Array._bridgeToObjectiveC()().super.isa;

  v12 = [v6 sortDescriptorWithKeyPath:v11 ascending:1];

  *(v0 + 40) = v12;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = objc_allocWithZone(NSSortDescriptor);
  v14 = String._bridgeToObjectiveC()();

  v15 = [v13 initWithKey:v14 ascending:1];

  *(v0 + 48) = v15;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = objc_allocWithZone(NSSortDescriptor);
  v17 = String._bridgeToObjectiveC()();

  v18 = [v16 initWithKey:v17 ascending:1];

  *(v0 + 56) = v18;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = objc_allocWithZone(NSSortDescriptor);
  v20 = String._bridgeToObjectiveC()();

  v21 = [v19 initWithKey:v20 ascending:1];

  *(v0 + 64) = v21;
  qword_101219C40 = v0;
}

void sub_100A0BBC8()
{
  sub_10010FC20(&qword_1011AA660, &unk_100EEF850);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_100EBC6D0;
  sub_10010FC20(&unk_1011AAAB0, &unk_100EF3570);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_100EBDC20;
  *(v1 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v1 + 40) = v2;
  *(v1 + 48) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v1 + 56) = v3;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v5 = [objc_opt_self() sortDescriptorWithKeyPath:isa ascending:1];

  *(v0 + 32) = v5;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = objc_allocWithZone(NSSortDescriptor);
  v7 = String._bridgeToObjectiveC()();

  v8 = [v6 initWithKey:v7 ascending:1];

  *(v0 + 40) = v8;
  qword_101219C48 = v0;
}

void sub_100A0BD30()
{
  sub_10010FC20(&qword_1011AA660, &unk_100EEF850);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_100EBE270;
  sub_10010FC20(&unk_1011AAAB0, &unk_100EF3570);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_100EBE260;
  *(v1 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v1 + 40) = v2;
  *(v1 + 48) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v1 + 56) = v3;
  *(v1 + 64) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v1 + 72) = v4;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v6 = objc_opt_self();
  v7 = [v6 sortDescriptorWithKeyPath:isa ascending:1];

  *(v0 + 32) = v7;
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_100EBE260;
  *(v8 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v8 + 40) = v9;
  *(v8 + 48) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v8 + 56) = v10;
  *(v8 + 64) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v8 + 72) = v11;
  v12 = Array._bridgeToObjectiveC()().super.isa;

  v13 = [v6 sortDescriptorWithKeyPath:v12 ascending:1];

  *(v0 + 40) = v13;
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_100EBDC20;
  *(v14 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v14 + 40) = v15;
  *(v14 + 48) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v14 + 56) = v16;
  v17 = Array._bridgeToObjectiveC()().super.isa;

  v18 = [v6 sortDescriptorWithKeyPath:v17 ascending:1];

  *(v0 + 48) = v18;
  qword_101219C50 = v0;
}

void sub_100A0BFA4(unsigned __int8 a1)
{
  if ((a1 >> 6) <= 1u)
  {
    if (a1 >> 6)
    {
      if (qword_1011A6A00 == -1)
      {
        goto LABEL_8;
      }

      goto LABEL_15;
    }

LABEL_7:
    if (qword_1011A69F8 == -1)
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
    if (qword_1011A6A08 != -1)
    {
      swift_once();
    }

    v1 = qword_101219C50;

    sub_100A09A70(v1);
  }

  else
  {
LABEL_17:
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }
}

void sub_100A0C104()
{
  sub_10010FC20(&qword_1011AA660, &unk_100EEF850);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_100EBC6D0;
  sub_10010FC20(&unk_1011AAAB0, &unk_100EF3570);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_100EBE260;
  *(v1 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v1 + 40) = v2;
  *(v1 + 48) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v1 + 56) = v3;
  *(v1 + 64) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v1 + 72) = v4;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v6 = objc_opt_self();
  v7 = [v6 sortDescriptorWithKeyPath:isa ascending:1];

  *(v0 + 32) = v7;
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_100EBDC20;
  *(v8 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v8 + 40) = v9;
  *(v8 + 48) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v8 + 56) = v10;
  v11 = Array._bridgeToObjectiveC()().super.isa;

  v12 = [v6 sortDescriptorWithKeyPath:v11 ascending:1];

  *(v0 + 40) = v12;
  qword_101219C58 = v0;
}

uint64_t sub_100A0C2DC(unsigned __int8 a1)
{
  if (a1 == 194)
  {
    if (qword_1011A6A10 != -1)
    {
      swift_once();
    }

    v1 = qword_101219C58;

    return sub_100A09A70(v1);
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

void sub_100A0C398()
{
  sub_10010FC20(&qword_1011AA660, &unk_100EEF850);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_100EC3620;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v1 = objc_allocWithZone(NSSortDescriptor);
  v2 = String._bridgeToObjectiveC()();

  v3 = [v1 initWithKey:v2 ascending:0];

  *(v0 + 32) = v3;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = objc_allocWithZone(NSSortDescriptor);
  v5 = String._bridgeToObjectiveC()();

  v6 = [v4 initWithKey:v5 ascending:1];

  *(v0 + 40) = v6;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = objc_allocWithZone(NSSortDescriptor);
  v8 = String._bridgeToObjectiveC()();

  v9 = [v7 initWithKey:v8 ascending:1];

  *(v0 + 48) = v9;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = objc_allocWithZone(NSSortDescriptor);
  v11 = String._bridgeToObjectiveC()();

  v12 = [v10 initWithKey:v11 ascending:1];

  *(v0 + 56) = v12;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = objc_allocWithZone(NSSortDescriptor);
  v14 = String._bridgeToObjectiveC()();

  v15 = [v13 initWithKey:v14 ascending:1];

  *(v0 + 64) = v15;
  qword_101219C60 = v0;
}

uint64_t sub_100A0C680(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Locale();
  __chkstk_darwin();
  v4 = type metadata accessor for String.LocalizationValue();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v13[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v9 = &v13[-v8];
  String.LocalizationValue.init(stringLiteral:)();
  (*(v5 + 16))(v7, v9, v4);
  if (qword_1011A6740 != -1)
  {
    swift_once();
  }

  v10 = qword_101219808;
  static Locale.current.getter();
  v11 = String.init(localized:table:bundle:locale:comment:)();
  (*(v5 + 8))(v9, v4);
  return v11;
}

void *sub_100A0C86C(char a1)
{
  if ((a1 & 0xC0) == 0x80)
  {
    return _swiftEmptyArrayStorage;
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_100A0C8E0()
{
  type metadata accessor for Locale();
  __chkstk_darwin();
  v0 = type metadata accessor for String.LocalizationValue();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = &v9[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v5 = &v9[-v4];
  String.LocalizationValue.init(stringLiteral:)();
  (*(v1 + 16))(v3, v5, v0);
  if (qword_1011A6740 != -1)
  {
    swift_once();
  }

  v6 = qword_101219808;
  static Locale.current.getter();
  v7 = String.init(localized:table:bundle:locale:comment:)();
  (*(v1 + 8))(v5, v0);
  return v7;
}

uint64_t sub_100A0CAF0(unsigned __int8 a1, char a2)
{
  if ((a1 >> 6) <= 1u || a1 >> 6 == 3 && a1 == 193)
  {
    sub_10010FC20(&qword_1011AA660, &unk_100EEF850);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_100EBC6D0;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v4 = objc_allocWithZone(NSSortDescriptor);
    v5 = String._bridgeToObjectiveC()();

    v6 = [v4 initWithKey:v5 ascending:a2 & 1];

    *(v3 + 32) = v6;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = objc_allocWithZone(NSSortDescriptor);
    v8 = String._bridgeToObjectiveC()();

    v9 = [v7 initWithKey:v8 ascending:1];

    *(v3 + 40) = v9;
    return v3;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_100A0CCE4()
{
  type metadata accessor for Locale();
  __chkstk_darwin();
  v0 = type metadata accessor for String.LocalizationValue();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = &v9[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v5 = &v9[-v4];
  String.LocalizationValue.init(stringLiteral:)();
  (*(v1 + 16))(v3, v5, v0);
  if (qword_1011A6740 != -1)
  {
    swift_once();
  }

  v6 = qword_101219808;
  static Locale.current.getter();
  v7 = String.init(localized:table:bundle:locale:comment:)();
  (*(v1 + 8))(v5, v0);
  return v7;
}

unint64_t NSUserDefaults.sortType(for:keyDomain:)(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a1;
  if (a3)
  {
    v13 = sub_100A0AC58(a1);
    v15 = v6;

    v7._countAndFlagsBits = 45;
    v7._object = 0xE100000000000000;
    String.append(_:)(v7);

    v8._countAndFlagsBits = a2;
    v8._object = a3;
    String.append(_:)(v8);

    v9 = v13;
    v10 = v15;
  }

  else
  {
    v9 = sub_100A0AC58(a1);
    v10 = v11;
  }

  v14 = v9;
  sub_10000988C();
  NSUserDefaults.subscript.getter(&v16);

  if (!v17)
  {
    sub_100011E58(&v16);
    goto LABEL_9;
  }

  if ((swift_dynamicCast() & 1) == 0 || (v18._countAndFlagsBits = v14, v18._object = v10, result = _s9MusicCore11SortOptionsV0C4TypeO8rawValueAESgSS_tcfC_0(v18), result == 13))
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
    v30 = sub_100A0AC58(a2);
    v31 = v8;

    v9._countAndFlagsBits = 45;
    v9._object = 0xE100000000000000;
    String.append(_:)(v9);

    v10._countAndFlagsBits = a3;
    v10._object = a4;
    String.append(_:)(v10);

    v11 = v30;
    v12 = v31;
  }

  else
  {
    v11 = sub_100A0AC58(a2);
    v12 = v13;
  }

  if ((a2 & 0xC0) == 0x40)
  {
    v14 = (a2 & 0x3F) == 0;
    if (a4)
    {
      goto LABEL_12;
    }
  }

  else
  {
    Hasher.init(_seed:)();
    SortOptions.ContentType.identifier.getter(a2);
    String.hash(into:)();

    v15 = Hasher._finalize()();
    Hasher.init(_seed:)();
    String.hash(into:)();
    v14 = v15 == Hasher._finalize()();
    if (a4)
    {
LABEL_12:
      v21 = SortOptions.SortType.rawValue.getter(a1);
      v22 = v24;
      v23 = 0;
      goto LABEL_14;
    }
  }

  if (!v14)
  {
    goto LABEL_12;
  }

  v16 = NSUserDefaults.sortType(for:keyDomain:)(a2, a3, 0);
  v17 = SortOptions.SortType.rawValue.getter(v16);
  v19 = v18;
  v21 = SortOptions.SortType.rawValue.getter(a1);
  v22 = v20;
  if (v17 == v21 && v19 == v20)
  {

    v23 = 0;
  }

  else
  {
    v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v23 = v25 ^ 1;
  }

LABEL_14:
  v32 = &type metadata for String;
  v30 = v21;
  v31 = v22;
  v29[0] = v11;
  v29[1] = v12;
  v26 = sub_10000988C();
  NSUserDefaults.subscript.setter(&v30, v29, &type metadata for String, v26);
  if (v23)
  {
    v27 = CFNotificationCenterGetDarwinNotifyCenter();
    v28 = String._bridgeToObjectiveC()();
    CFNotificationCenterPostNotification(v27, v28, 0, 0, 1u);
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

  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
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

  sub_10000988C();
  v8 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();

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
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v8 = NSUserDefaults.sortType(for:keyDomain:)(194, v4, v6);

  sub_100A09D34(v8, v12);
  v9 = v13;
  v10 = v14;
  sub_10000954C(v12, v13);
  v11 = (*(v10 + 24))(194, v9, v10);
  sub_10000959C(v12);
  return v11;
}

Class sub_100A0D7BC(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  v5 = a3();

  if (v5)
  {
    sub_100A0EBBC();
    v6.super.isa = Array._bridgeToObjectiveC()().super.isa;
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
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;

    v7 = [objc_opt_self() standardUserDefaults];
    v63[0] = 0x2D74726F53;
    v63[1] = 0xE500000000000000;
    v8._countAndFlagsBits = v4;
    v8._object = v6;
    String.append(_:)(v8);

    sub_100A0EB14();
    sub_100A0EB68();
    NSUserDefaults.decodeValue<A>(_:forKey:)(&type metadata for Actions.SortPlaylist.TrackListSort, v63);

    v9 = LOWORD(v63[0]);
    if ((v63[0] & 0xFF00) == 0x200)
    {
      result = [v1 legacyPreferredTracklistSortDescriptors];
      if (result)
      {
        v10 = result;
        sub_100A0EBBC();
        v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        return v11;
      }
    }

    else
    {
      v12 = LOBYTE(v63[0]);
      sub_10010FC20(&qword_1011AA660, &unk_100EEF850);
      if (v9 <= 1u)
      {
        if (v12)
        {
          v50 = swift_allocObject();
          *(v50 + 16) = xmmword_100EBC6D0;
          sub_10010FC20(&unk_1011AAAB0, &unk_100EF3570);
          v51 = swift_allocObject();
          *(v51 + 16) = xmmword_100EBDC20;
          *(v51 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
          *(v51 + 40) = v52;
          *(v51 + 48) = static String._unconditionallyBridgeFromObjectiveC(_:)();
          *(v51 + 56) = v53;
          isa = Array._bridgeToObjectiveC()().super.isa;

          v55 = objc_opt_self();
          v56 = [v55 sortDescriptorWithKeyPath:isa ascending:(v9 >> 8) & 1];

          *(v50 + 32) = v56;
          v57 = swift_allocObject();
          *(v57 + 16) = xmmword_100EBE260;
          *(v57 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
          *(v57 + 40) = v58;
          *(v57 + 48) = static String._unconditionallyBridgeFromObjectiveC(_:)();
          *(v57 + 56) = v59;
          *(v57 + 64) = static String._unconditionallyBridgeFromObjectiveC(_:)();
          *(v57 + 72) = v60;
          v61 = Array._bridgeToObjectiveC()().super.isa;

          v62 = [v55 sortDescriptorWithKeyPath:v61 ascending:1];

          result = v50;
          *(v50 + 40) = v62;
        }

        else
        {
          v25 = (v9 >> 8) & 1;
          v26 = swift_allocObject();
          *(v26 + 16) = xmmword_100EBC6C0;
          static String._unconditionallyBridgeFromObjectiveC(_:)();
          v27 = objc_allocWithZone(NSSortDescriptor);
          v28 = String._bridgeToObjectiveC()();

          v29 = [v27 initWithKey:v28 ascending:v25];

          result = v26;
          *(v26 + 32) = v29;
        }
      }

      else if (v12 == 2)
      {
        v30 = swift_allocObject();
        *(v30 + 16) = xmmword_100EBE270;
        sub_10010FC20(&unk_1011AAAB0, &unk_100EF3570);
        v31 = swift_allocObject();
        *(v31 + 16) = xmmword_100EBE260;
        *(v31 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *(v31 + 40) = v32;
        *(v31 + 48) = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *(v31 + 56) = v33;
        *(v31 + 64) = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *(v31 + 72) = v34;
        v35 = Array._bridgeToObjectiveC()().super.isa;

        v36 = objc_opt_self();
        v37 = [v36 sortDescriptorWithKeyPath:v35 ascending:(v9 >> 8) & 1];

        *(v30 + 32) = v37;
        v38 = swift_allocObject();
        *(v38 + 16) = xmmword_100EBE260;
        *(v38 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *(v38 + 40) = v39;
        *(v38 + 48) = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *(v38 + 56) = v40;
        *(v38 + 64) = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *(v38 + 72) = v41;
        v42 = Array._bridgeToObjectiveC()().super.isa;

        v43 = [v36 sortDescriptorWithKeyPath:v42 ascending:1];

        *(v30 + 40) = v43;
        v44 = swift_allocObject();
        *(v44 + 16) = xmmword_100EBDC20;
        *(v44 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *(v44 + 40) = v45;
        *(v44 + 48) = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *(v44 + 56) = v46;
        v47 = Array._bridgeToObjectiveC()().super.isa;

        v48 = [v36 sortDescriptorWithKeyPath:v47 ascending:1];

        result = v30;
        *(v30 + 48) = v48;
      }

      else
      {
        v13 = swift_allocObject();
        *(v13 + 16) = xmmword_100EBC6D0;
        sub_10010FC20(&unk_1011AAAB0, &unk_100EF3570);
        v14 = swift_allocObject();
        *(v14 + 16) = xmmword_100EBE260;
        *(v14 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *(v14 + 40) = v15;
        *(v14 + 48) = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *(v14 + 56) = v16;
        *(v14 + 64) = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *(v14 + 72) = v17;
        v18 = Array._bridgeToObjectiveC()().super.isa;

        v19 = objc_opt_self();
        v20 = [v19 sortDescriptorWithKeyPath:v18 ascending:(v9 >> 8) & 1];

        *(v13 + 32) = v20;
        v21 = swift_allocObject();
        *(v21 + 16) = xmmword_100EBDC20;
        *(v21 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *(v21 + 40) = v22;
        *(v21 + 48) = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *(v21 + 56) = v23;
        v24 = Array._bridgeToObjectiveC()().super.isa;

        v49 = [v19 sortDescriptorWithKeyPath:v24 ascending:1];

        result = v13;
        *(v13 + 40) = v49;
      }
    }
  }

  return result;
}

uint64_t sub_100A0E170()
{
  v0 = type metadata accessor for Logger();
  sub_100006080(v0, static Logger.sortOptions);
  sub_1000060E4(v0, static Logger.sortOptions);
  return Logger.init(subsystem:category:)();
}

uint64_t Logger.sortOptions.unsafeMutableAddressor()
{
  if (qword_1011A6A20 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();

  return sub_1000060E4(v0, static Logger.sortOptions);
}

uint64_t static Logger.sortOptions.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1011A6A20 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v3 = sub_1000060E4(v2, static Logger.sortOptions);
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

  Hasher.init(_seed:)();
  SortOptions.ContentType.identifier.getter(v3);
  String.hash(into:)();

  v6 = Hasher._finalize()();
  Hasher.init(_seed:)();
  SortOptions.ContentType.identifier.getter(v2);
  String.hash(into:)();

  return v6 == Hasher._finalize()();
}

uint64_t sub_100A0E41C(unsigned __int8 a1, char a2)
{
  if (a1 == 194)
  {
    sub_10010FC20(&qword_1011AA660, &unk_100EEF850);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_100EBC6D0;
    sub_10010FC20(&unk_1011AAAB0, &unk_100EF3570);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_100EBE260;
    *(v4 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v4 + 40) = v5;
    *(v4 + 48) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v4 + 56) = v6;
    *(v4 + 64) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v4 + 72) = v7;
    isa = Array._bridgeToObjectiveC()().super.isa;

    v9 = objc_opt_self();
    v10 = [v9 sortDescriptorWithKeyPath:isa ascending:a2 & 1];

    *(v3 + 32) = v10;
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_100EBDC20;
    *(v11 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v11 + 40) = v12;
    *(v11 + 48) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v11 + 56) = v13;
    v14 = Array._bridgeToObjectiveC()().super.isa;

    v15 = [v9 sortDescriptorWithKeyPath:v14 ascending:1];

    *(v3 + 40) = v15;
    return v3;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_100A0E634(unsigned __int8 a1)
{
  if ((a1 >> 6) <= 1u)
  {
    if (a1 >> 6)
    {
      goto LABEL_10;
    }

LABEL_6:
    if (qword_1011A6A18 != -1)
    {
      swift_once();
    }

    v1 = qword_101219C60;

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
    sub_10010FC20(&qword_1011AA660, &unk_100EEF850);
    v1 = swift_allocObject();
    *(v1 + 16) = xmmword_100EBC6C0;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v2 = objc_allocWithZone(NSSortDescriptor);
    v3 = String._bridgeToObjectiveC()();

    v4 = [v2 initWithKey:v3 ascending:0];

    *(v1 + 32) = v4;
    return v1;
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_100A0E82C(char a1, void *a2, uint64_t a3)
{
  if ((a1 & 0xC0) == 0x80)
  {
    sub_10010FC20(&qword_1011AA660, &unk_100EEF850);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_100EBC6C0;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v4 = objc_allocWithZone(NSSortDescriptor);
    v5 = String._bridgeToObjectiveC()();

    v6 = [v4 initWithKey:v5 ascending:0];

    *(v3 + 32) = v6;
    return v3;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

void *sub_100A0E940(unsigned __int8 a1)
{
  v1 = a1 >> 6;
  if (v1 < 2)
  {
    return _swiftEmptyArrayStorage;
  }

  if (v1 == 2)
  {
    sub_10010FC20(&qword_1011AA660, &unk_100EEF850);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_100EBC6C0;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v4 = objc_allocWithZone(NSSortDescriptor);
    v5 = String._bridgeToObjectiveC()();

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

    if (qword_1011A69F0 != -1)
    {
      swift_once();
    }

    if (qword_101219C38 >> 62)
    {
      sub_100A0EBBC();

      v7 = _bridgeCocoaArray<A>(_:)();
    }

    else
    {
      v7 = qword_101219C38;

      dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
      sub_100A0EBBC();
    }

    return v7;
  }

  return result;
}

unint64_t _s9MusicCore11SortOptionsV0C4TypeO8rawValueAESgSS_tcfC_0(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1010C8160, v2);

  if (v3 >= 0xD)
  {
    return 13;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_100A0EB14()
{
  result = qword_1011ABB28;
  if (!qword_1011ABB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011ABB28);
  }

  return result;
}

unint64_t sub_100A0EB68()
{
  result = qword_1011ABB30;
  if (!qword_1011ABB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011ABB30);
  }

  return result;
}

unint64_t sub_100A0EBBC()
{
  result = qword_1011A9F40;
  if (!qword_1011A9F40)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1011A9F40);
  }

  return result;
}

unint64_t sub_100A0EC0C()
{
  result = qword_1011ABB38;
  if (!qword_1011ABB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011ABB38);
  }

  return result;
}

unint64_t sub_100A0EC64()
{
  result = qword_1011ABB40;
  if (!qword_1011ABB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011ABB40);
  }

  return result;
}

unint64_t sub_100A0ECBC()
{
  result = qword_1011ABB48;
  if (!qword_1011ABB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011ABB48);
  }

  return result;
}

unint64_t sub_100A0ED14()
{
  result = qword_1011ABB50;
  if (!qword_1011ABB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011ABB50);
  }

  return result;
}

unint64_t sub_100A0ED6C()
{
  result = qword_1011ABB58;
  if (!qword_1011ABB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011ABB58);
  }

  return result;
}

unint64_t sub_100A0EDC4()
{
  result = qword_1011ABB60;
  if (!qword_1011ABB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011ABB60);
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

uint64_t sub_100A0EF94(unsigned __int8 *a1)
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

_BYTE *sub_100A0EFB0(_BYTE *result, unsigned int a2)
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
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v6 = [v4 initWithStorePlatformDictionary:isa parentStoreItemMetadata:a2];

  return v6;
}

id ModelObjectBackedStoreItemMetadata.init(storePlatformDictionary:parentStoreItemMetadata:)(uint64_t a1, void *a2)
{
  *&v2[OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObject] = 0;
  v4 = &v2[OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObjectStoreID];
  *v4 = 0;
  *(v4 + 1) = 0;
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v8.receiver = v2;
  v8.super_class = type metadata accessor for ModelObjectBackedStoreItemMetadata();
  v6 = objc_msgSendSuper2(&v8, "initWithStorePlatformDictionary:parentStoreItemMetadata:", isa, a2);

  return v6;
}

id ModelObjectBackedStoreItemMetadata.__allocating_init(storePlatformDictionary:expirationDate:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  isa = 0;
  if ((*(v7 + 48))(a2, 1, v6) != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v7 + 8))(a2, v6);
  }

  v9 = [objc_allocWithZone(v3) initWithStorePlatformDictionary:v5.super.isa expirationDate:isa];

  return v9;
}

id ModelObjectBackedStoreItemMetadata.init(storePlatformDictionary:expirationDate:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_10010FC20(&qword_1011A9B20, &qword_100EF1560);
  __chkstk_darwin();
  v6 = &v15 - v5;
  *&v3[OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObject] = 0;
  v7 = &v3[OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObjectStoreID];
  *v7 = 0;
  *(v7 + 1) = 0;
  v8.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  sub_1009667F4(a2, v6);
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  isa = 0;
  if ((*(v10 + 48))(v6, 1, v9) != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v10 + 8))(v6, v9);
  }

  v12 = type metadata accessor for ModelObjectBackedStoreItemMetadata();
  v15.receiver = v3;
  v15.super_class = v12;
  v13 = objc_msgSendSuper2(&v15, "initWithStorePlatformDictionary:expirationDate:", v8.super.isa, isa);

  sub_1000095E8(a2, &qword_1011A9B20, &qword_100EF1560);
  return v13;
}

id ModelObjectBackedStoreItemMetadata.__allocating_init(storePlatformDictionary:parentStoreItemMetadata:expirationDate:)(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v7.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  isa = 0;
  if ((*(v9 + 48))(a3, 1, v8) != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v9 + 8))(a3, v8);
  }

  v11 = [objc_allocWithZone(v4) initWithStorePlatformDictionary:v7.super.isa parentStoreItemMetadata:a2 expirationDate:isa];

  return v11;
}

id ModelObjectBackedStoreItemMetadata.init(storePlatformDictionary:parentStoreItemMetadata:expirationDate:)(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = sub_100A18A3C(a1, a2, a3);

  return v4;
}

id sub_100A0FE4C(uint64_t a1, SEL *a2)
{
  v4 = objc_allocWithZone(v2);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v6 = [v4 *a2];

  return v6;
}

id sub_100A0FEDC(uint64_t a1, SEL *a2)
{
  *&v2[OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObject] = 0;
  v4 = &v2[OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObjectStoreID];
  *v4 = 0;
  *(v4 + 1) = 0;
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v8.receiver = v2;
  v8.super_class = type metadata accessor for ModelObjectBackedStoreItemMetadata();
  v6 = objc_msgSendSuper2(&v8, *a2, isa);

  return v6;
}

id sub_100A0FF88(char *a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  *&a1[OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObject] = 0;
  v6 = &a1[OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObjectStoreID];
  *v6 = 0;
  *(v6 + 1) = 0;
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

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
  _assertionFailure(_:_:file:line:flags:)();
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
  *(v3 + 16) = sub_100A18BF8;
  *(v3 + 24) = v2;
  v7[4] = sub_100029B94;
  v7[5] = v3;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 1107296256;
  v7[2] = sub_100029B9C;
  v7[3] = &unk_1010D7C88;
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

void sub_100A10714(uint64_t a1, void *a2)
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
          v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
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
        v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
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
  *(v5 + 16) = sub_100A18C00;
  *(v5 + 24) = v4;
  aBlock[4] = sub_10018A020;
  aBlock[5] = v5;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100029B9C;
  aBlock[3] = &unk_1010D7D00;
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

void sub_100A10BEC(uint64_t a1, void **a2)
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
  *(v3 + 16) = sub_100A18C08;
  *(v3 + 24) = v2;
  aBlock[4] = sub_10018A020;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100029B9C;
  aBlock[3] = &unk_1010D7D78;
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

void sub_100A10F2C(uint64_t a1, char **a2)
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
        v9 = sub_10089C4F8(0, *(v9 + 2) + 1, 1, v9);
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
        v52 = sub_10089C4F8((v12 > 1), v11 + 1, 1, v50);
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
        v15 = sub_10089C4F8(0, *(v15 + 2) + 1, 1, v15);
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
        v55 = sub_10089C4F8((v18 > 1), v17 + 1, 1, v53);
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
      v21 = sub_10089C4F8(0, *(v21 + 2) + 1, 1, v21);
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
      v58 = sub_10089C4F8((v24 > 1), v23 + 1, 1, v56);
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
      v30 = sub_10089C4F8(0, *(v30 + 2) + 1, 1, v30);
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
      v61 = sub_10089C4F8((v33 > 1), v32 + 1, 1, v59);
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
      v35 = sub_10089C4F8(0, *(v35 + 2) + 1, 1, v35);
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
      v49 = sub_10089C4F8((v38 > 1), v37 + 1, 1, v47);
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
      v41 = sub_10089C4F8(0, *(v41 + 2) + 1, 1, v41);
      *a2 = v41;
    }

    v44 = *(v41 + 2);
    v43 = *(v41 + 3);
    if (v44 >= v43 >> 1)
    {
      *a2 = sub_10089C4F8((v43 > 1), v44 + 1, 1, v41);
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
  *(v3 + 16) = sub_100A18C10;
  *(v3 + 24) = v2;
  aBlock[4] = sub_10018A020;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100029B9C;
  aBlock[3] = &unk_1010D7DF0;
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
  *(v3 + 16) = sub_100A18C3C;
  *(v3 + 24) = v2;
  v7[4] = sub_10018A020;
  v7[5] = v3;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 1107296256;
  v7[2] = sub_100029B9C;
  v7[3] = &unk_1010D7E68;
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
  *(v5 + 16) = sub_100A18C68;
  *(v5 + 24) = v4;
  aBlock[4] = sub_10018A020;
  aBlock[5] = v5;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100029B9C;
  aBlock[3] = &unk_1010D7EE0;
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

void sub_100A119C8(uint64_t a1, void **a2)
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
  *(v3 + 16) = sub_100A18C70;
  *(v3 + 24) = v2;
  aBlock[4] = sub_10018A020;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100029B9C;
  aBlock[3] = &unk_1010D7F58;
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
  *(v3 + 16) = sub_100A18C9C;
  *(v3 + 24) = v2;
  v7[4] = sub_10018A020;
  v7[5] = v3;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 1107296256;
  v7[2] = sub_100029B9C;
  v7[3] = &unk_1010D7FD0;
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

double sub_100A11DB8(uint64_t a1, uint64_t *a2, SEL *a3, const char **a4)
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
        v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
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
  *(v3 + 16) = sub_100A18CC8;
  *(v3 + 24) = v2;
  v7[4] = sub_10018A020;
  v7[5] = v3;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 1107296256;
  v7[2] = sub_100029B9C;
  v7[3] = &unk_1010D8048;
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
  *(v3 + 16) = sub_100A18D00;
  *(v3 + 24) = v2;
  v7[4] = sub_10018A020;
  v7[5] = v3;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 1107296256;
  v7[2] = sub_100029B9C;
  v7[3] = &unk_1010D80C0;
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

double sub_100A121CC(uint64_t a1, uint64_t *a2)
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
          v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v16 = v15;
        }

        else
        {
          v17 = [v11 shortName];
          if (v17)
          {
            v18 = v17;
            v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
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
  *(v3 + 16) = sub_100A18D08;
  *(v3 + 24) = v2;
  v7[4] = sub_10018A020;
  v7[5] = v3;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 1107296256;
  v7[2] = sub_100029B9C;
  v7[3] = &unk_1010D8138;
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

double sub_100A12498(uint64_t a1, uint64_t *a2)
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
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
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
  *(v3 + 16) = sub_100A18D10;
  *(v3 + 24) = v2;
  aBlock[4] = sub_10018A020;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100029B9C;
  aBlock[3] = &unk_1010D81B0;
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
  *(v3 + 16) = sub_100A18D3C;
  *(v3 + 24) = v2;
  aBlock[4] = sub_10018A020;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100029B9C;
  aBlock[3] = &unk_1010D8228;
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
  *(v3 + 16) = sub_100A18D68;
  *(v3 + 24) = v2;
  aBlock[4] = sub_10018A020;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100029B9C;
  aBlock[3] = &unk_1010D82A0;
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

void sub_100A12B40(uint64_t a1, void *a2)
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
  *(v3 + 16) = sub_100A18D70;
  *(v3 + 24) = v2;
  v7[4] = sub_10018A020;
  v7[5] = v3;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 1107296256;
  v7[2] = sub_100029B9C;
  v7[3] = &unk_1010D8318;
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

double sub_100A12D88(uint64_t a1, uint64_t *a2, SEL *a3)
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
    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
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
  *(v3 + 16) = sub_100A18D94;
  *(v3 + 24) = v2;
  v7[4] = sub_10018A020;
  v7[5] = v3;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 1107296256;
  v7[2] = sub_100029B9C;
  v7[3] = &unk_1010D8390;
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
  *(v3 + 16) = sub_100A18DB8;
  *(v3 + 24) = v2;
  aBlock[4] = sub_10018A020;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100029B9C;
  aBlock[3] = &unk_1010D8408;
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
  *(v3 + 16) = sub_100A18DE4;
  *(v3 + 24) = v2;
  aBlock[4] = sub_10018A020;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100029B9C;
  aBlock[3] = &unk_1010D8480;
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

void sub_100A133FC(uint64_t a1, void *a2)
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
  *(v3 + 16) = sub_100A18DEC;
  *(v3 + 24) = v2;
  aBlock[4] = sub_10018A020;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100029B9C;
  aBlock[3] = &unk_1010D84F8;
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
        v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v11 = v10;

        sub_10010FC20(&qword_1011A98C0, &qword_100EF0D98);
        v12 = swift_allocObject();
        *(v12 + 16) = xmmword_100EBC6B0;
        *(v12 + 56) = &type metadata for String;
        *(v12 + 32) = v9;
        *(v12 + 40) = v11;
      }
    }

    v13 = v15;
  }
}

void sub_100A136FC(uint64_t a1, void **a2)
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
  *(v3 + 16) = sub_100A18DF4;
  *(v3 + 24) = v2;
  v7[4] = sub_10018A020;
  v7[5] = v3;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 1107296256;
  v7[2] = sub_100029B9C;
  v7[3] = &unk_1010D8570;
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
  *(v3 + 16) = sub_100A18E20;
  *(v3 + 24) = v2;
  aBlock[4] = sub_10018A020;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100029B9C;
  aBlock[3] = &unk_1010D85E8;
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
  *(v3 + 16) = sub_100A18E4C;
  *(v3 + 24) = v2;
  aBlock[4] = sub_10018A020;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100029B9C;
  aBlock[3] = &unk_1010D8660;
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

void sub_100A13C9C(uint64_t a1, unsigned __int8 *a2)
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
  *(v3 + 16) = sub_100A18E54;
  *(v3 + 24) = v2;
  aBlock[4] = sub_10018A020;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100029B9C;
  aBlock[3] = &unk_1010D86D8;
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

void sub_100A13F04(uint64_t a1, unsigned __int8 *a2)
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
  *(v3 + 16) = sub_100A18E5C;
  *(v3 + 24) = v2;
  aBlock[4] = sub_10018A020;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100029B9C;
  aBlock[3] = &unk_1010D8750;
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

void sub_100A1416C(uint64_t a1, _BYTE *a2)
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
  *(v3 + 16) = sub_100A18E64;
  *(v3 + 24) = v2;
  aBlock[4] = sub_10018A020;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100029B9C;
  aBlock[3] = &unk_1010D87C8;
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

void sub_100A143B0(uint64_t a1, _BYTE *a2)
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
  *(v3 + 16) = sub_100A18E6C;
  *(v3 + 24) = v2;
  aBlock[4] = sub_10018A020;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100029B9C;
  aBlock[3] = &unk_1010D8840;
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

void sub_100A14640(uint64_t a1, _BYTE *a2)
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
  *(v3 + 16) = sub_100A18E74;
  *(v3 + 24) = v2;
  aBlock[4] = sub_10018A020;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100029B9C;
  aBlock[3] = &unk_1010D88B8;
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
  *(v3 + 16) = sub_100A18EA0;
  *(v3 + 24) = v2;
  aBlock[4] = sub_10018A020;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100029B9C;
  aBlock[3] = &unk_1010D8930;
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
  *(v3 + 16) = sub_100A18ECC;
  *(v3 + 24) = v2;
  aBlock[4] = sub_10018A020;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100029B9C;
  aBlock[3] = &unk_1010D89A8;
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
  *(v3 + 16) = sub_100A18EF8;
  *(v3 + 24) = v2;
  aBlock[4] = sub_10018A020;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100029B9C;
  aBlock[3] = &unk_1010D8A20;
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

void sub_100A14D74(uint64_t a1, _BYTE *a2)
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
  *(v3 + 16) = sub_100A18F00;
  *(v3 + 24) = v2;
  v7[4] = sub_10018A020;
  v7[5] = v3;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 1107296256;
  v7[2] = sub_100029B9C;
  v7[3] = &unk_1010D8A98;
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

void sub_100A14F88(uint64_t a1, uint64_t *a2)
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

        if (v10 == 1)
        {
          goto LABEL_22;
        }
      }

      else if (v10 == 2 || v10 == 3 || v10 == 4)
      {
        goto LABEL_22;
      }

      _StringGuts.grow(_:)(24);
      v16._countAndFlagsBits = 0xD000000000000013;
      v16._object = 0x8000000100E53D80;
      String.append(_:)(v16);
      v17._object = 0x8000000100E60570;
      v17._countAndFlagsBits = 0xD000000000000012;
      String.append(_:)(v17);
      v18._countAndFlagsBits = 32;
      v18._object = 0xE100000000000000;
      String.append(_:)(v18);
      type metadata accessor for MPModelCuratorKind(0);
      _print_unlocked<A, B>(_:_:)();
      _assertionFailure(_:_:file:line:flags:)();
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
      v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v13 = v12;

      *a2 = v11;
      a2[1] = v13;
      goto LABEL_5;
    }

    objc_opt_self();
    if (swift_dynamicCastObjCClass() || (objc_opt_self(), swift_dynamicCastObjCClass()) || (objc_opt_self(), swift_dynamicCastObjCClass()) || (objc_opt_self(), swift_dynamicCastObjCClass()))
    {
LABEL_4:
      *a2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      a2[1] = v6;
LABEL_5:
    }
  }
}

void ModelObjectBackedStoreItemMetadata.lastModifiedDate.getter(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for Date();
  (*(*(v3 - 8) + 56))(a1, 1, 1, v3);
  v4 = objc_opt_self();
  v5 = swift_allocObject();
  *(v5 + 16) = v1;
  *(v5 + 24) = a1;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_100A18F08;
  *(v6 + 24) = v5;
  v10[4] = sub_10018A020;
  v10[5] = v6;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_100029B9C;
  v10[3] = &unk_1010D8B10;
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

void sub_100A15558(uint64_t a1, uint64_t a2, __n128 a3)
{
  v24 = a2;
  v4 = type metadata accessor for Calendar();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_1011A9B20, &qword_100EF1560);
  __chkstk_darwin();
  v9 = &v24 - v8;
  v10 = type metadata accessor for DateComponents();
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v15 = &v24 - v14;
  v16 = OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObject;
  swift_beginAccess();
  v17 = *(a1 + v16);
  if (v17)
  {
    objc_opt_self();
    v18 = swift_dynamicCastObjCClass();
    if (v18)
    {
      v19 = v18;
      v20 = v17;
      v21 = [v19 lastModifiedDateComponents];
      if (v21)
      {
        v22 = v21;
        static DateComponents._unconditionallyBridgeFromObjectiveC(_:)();

        (*(v11 + 32))(v15, v13, v10);
        v23 = [objc_opt_self() storeServerCalendar];
        static Calendar._unconditionallyBridgeFromObjectiveC(_:)();

        Calendar.date(from:)();
        (*(v5 + 8))(v7, v4);
        (*(v11 + 8))(v15, v10);
        sub_10006B010(v9, v24, &qword_1011A9B20, &qword_100EF1560);
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
  *(v3 + 16) = sub_100A18F10;
  *(v3 + 24) = v2;
  aBlock[4] = sub_10018A020;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100029B9C;
  aBlock[3] = &unk_1010D8B88;
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
  *(v3 + 16) = sub_100A18F3C;
  *(v3 + 24) = v2;
  v7[4] = sub_10018A020;
  v7[5] = v3;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 1107296256;
  v7[2] = sub_100029B9C;
  v7[3] = &unk_1010D8C00;
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
  *(v3 + 16) = sub_100A18F68;
  *(v3 + 24) = v2;
  aBlock[4] = sub_10018A020;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100029B9C;
  aBlock[3] = &unk_1010D8C78;
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
  *(v3 + 16) = sub_100A18F94;
  *(v3 + 24) = v2;
  v7[4] = sub_10018A020;
  v7[5] = v3;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 1107296256;
  v7[2] = sub_100029B9C;
  v7[3] = &unk_1010D8CF0;
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

double sub_100A15E8C(uint64_t a1, void *a2)
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
        v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
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
  *(v3 + 16) = sub_100A18F9C;
  *(v3 + 24) = v2;
  v7[4] = sub_10018A020;
  v7[5] = v3;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 1107296256;
  v7[2] = sub_100029B9C;
  v7[3] = &unk_1010D8D68;
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

Class sub_100A163C8(void *a1, uint64_t a2, void (*a3)(void))
{
  sub_10010FC20(&qword_1011A9B20, &qword_100EF1560);
  __chkstk_darwin();
  v6 = &v14 - v5;
  v7 = a1;
  a3();

  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  v10 = (*(v9 + 48))(v6, 1, v8);
  v11 = 0;
  if (v10 != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v9 + 8))(v6, v8);
    v11 = isa;
  }

  return v11;
}

void ModelObjectBackedStoreItemMetadata.releaseDate.getter(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for Date();
  (*(*(v3 - 8) + 56))(a1, 1, 1, v3);
  v4 = objc_opt_self();
  v5 = swift_allocObject();
  *(v5 + 16) = v1;
  *(v5 + 24) = a1;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_100A18FC8;
  *(v6 + 24) = v5;
  v10[4] = sub_10018A020;
  v10[5] = v6;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_100029B9C;
  v10[3] = &unk_1010D8DE0;
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

void sub_100A1669C(uint64_t a1, uint64_t a2, __n128 a3)
{
  v62 = a2;
  v4 = type metadata accessor for DateComponents();
  v60 = *(v4 - 8);
  v61 = v4;
  __chkstk_darwin();
  v59 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_1011ABBA0, &qword_100EF60E8);
  __chkstk_darwin();
  v7 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v9 = &v58 - v8;
  __chkstk_darwin();
  v11 = &v58 - v10;
  __chkstk_darwin();
  v13 = &v58 - v12;
  sub_10010FC20(&qword_1011A9B20, &qword_100EF1560);
  __chkstk_darwin();
  v15 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v17 = &v58 - v16;
  __chkstk_darwin();
  v19 = &v58 - v18;
  __chkstk_darwin();
  v21 = &v58 - v20;
  v22 = OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObject;
  swift_beginAccess();
  v23 = *(a1 + v22);
  if (v23)
  {
    objc_opt_self();
    v24 = swift_dynamicCastObjCClass();
    if (v24)
    {
      v25 = v24;
      v26 = v23;
      v27 = [v25 releaseDateComponents];
      if (v27)
      {
        v28 = v27;
        static DateComponents._unconditionallyBridgeFromObjectiveC(_:)();

        v29 = 0;
      }

      else
      {
        v29 = 1;
      }

      v37 = v60;
      v36 = v61;
      (*(v60 + 56))(v11, v29, 1, v61);
      sub_100A190F8(v11, v13);
      if ((*(v37 + 48))(v13, 1, v36))
      {

        sub_1000095E8(v13, &qword_1011ABBA0, &qword_100EF60E8);
        v38 = type metadata accessor for Date();
        (*(*(v38 - 8) + 56))(v21, 1, 1, v38);
      }

      else
      {
        v39 = v59;
        (*(v37 + 16))(v59, v13, v36);
        sub_1000095E8(v13, &qword_1011ABBA0, &qword_100EF60E8);
        DateComponents.date.getter();

        (*(v37 + 8))(v39, v36);
      }

      v17 = v21;
    }

    else
    {
      objc_opt_self();
      v30 = swift_dynamicCastObjCClass();
      if (v30)
      {
        v31 = v30;
        v32 = v23;
        v33 = [v31 releaseDateComponents];
        if (v33)
        {
          v34 = v33;
          static DateComponents._unconditionallyBridgeFromObjectiveC(_:)();

          v35 = 0;
        }

        else
        {
          v35 = 1;
        }

        v47 = v60;
        v46 = v61;
        (*(v60 + 56))(v7, v35, 1, v61);
        sub_100A190F8(v7, v9);
        if ((*(v47 + 48))(v9, 1, v46))
        {

          sub_1000095E8(v9, &qword_1011ABBA0, &qword_100EF60E8);
          v48 = type metadata accessor for Date();
          (*(*(v48 - 8) + 56))(v19, 1, 1, v48);
        }

        else
        {
          v49 = v59;
          (*(v47 + 16))(v59, v9, v46);
          sub_1000095E8(v9, &qword_1011ABBA0, &qword_100EF60E8);
          DateComponents.date.getter();

          (*(v47 + 8))(v49, v46);
        }

        v17 = v19;
      }

      else
      {
        objc_opt_self();
        v40 = swift_dynamicCastObjCClass();
        if (v40)
        {
          v41 = v40;
          v42 = v23;
          v43 = [v41 releaseDate];
          if (v43)
          {
            v44 = v43;
            static Date._unconditionallyBridgeFromObjectiveC(_:)();

            v45 = 0;
            v42 = v44;
          }

          else
          {
            v45 = 1;
          }

          v56 = type metadata accessor for Date();
          (*(*(v56 - 8) + 56))(v17, v45, 1, v56);
        }

        else
        {
          objc_opt_self();
          v50 = swift_dynamicCastObjCClass();
          if (!v50)
          {
            return;
          }

          v51 = v50;
          v52 = v23;
          v53 = [v51 releaseDate];
          if (v53)
          {
            v54 = v53;
            static Date._unconditionallyBridgeFromObjectiveC(_:)();

            v55 = 0;
            v52 = v54;
          }

          else
          {
            v55 = 1;
          }

          v57 = type metadata accessor for Date();
          (*(*(v57 - 8) + 56))(v15, v55, 1, v57);
          v17 = v15;
        }
      }
    }

    sub_10006B010(v17, v62, &qword_1011A9B20, &qword_100EF1560);
  }
}

id sub_100A16D70(void *a1, uint64_t a2, void (*a3)(void *__return_ptr))
{
  v4 = a1;
  a3(v12);

  v5 = v13;
  if (v13)
  {
    sub_10000954C(v12, v13);
    v6 = *(v5 - 8);
    v7 = __chkstk_darwin();
    v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v6 + 16))(v9, v7);
    v10 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v6 + 8))(v9, v5);
    sub_10000959C(v12);
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
  *(v5 + 16) = sub_100A18FD0;
  *(v5 + 24) = v4;
  v9[4] = sub_10018A020;
  v9[5] = v5;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_100029B9C;
  v9[3] = &unk_1010D8E58;
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

void sub_100A17020(uint64_t a1, uint64_t a2)
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

      sub_10006B010(v9, a2, &qword_1011ABB20, &unk_100EF1530);
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
  *(v3 + 16) = sub_100A18FD8;
  *(v3 + 24) = v2;
  aBlock[4] = sub_10018A020;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100029B9C;
  aBlock[3] = &unk_1010D8ED0;
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

void sub_100A172A4(uint64_t a1, void *a2)
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
  *(v3 + 16) = sub_100A18FE0;
  *(v3 + 24) = v2;
  v7[4] = sub_10018A020;
  v7[5] = v3;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 1107296256;
  v7[2] = sub_100029B9C;
  v7[3] = &unk_1010D8F48;
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

double sub_100A174F4(uint64_t a1, uint64_t *a2, void *a3, SEL *a4, void *a5, SEL *a6)
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
        v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
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
        v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
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

id sub_100A17654(void *a1, uint64_t a2, void (*a3)(void))
{
  sub_10010FC20(&qword_1011A77F0, &unk_100EEAA20);
  __chkstk_darwin();
  v6 = &v15 - v5;
  v7 = a1;
  a3();

  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  v10 = (*(v9 + 48))(v6, 1, v8);
  v11 = 0;
  if (v10 != 1)
  {
    URL._bridgeToObjectiveC()(v10);
    v13 = v12;
    (*(v9 + 8))(v6, v8);
    v11 = v13;
  }

  return v11;
}

void ModelObjectBackedStoreItemMetadata.shortURL.getter(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for URL();
  (*(*(v3 - 8) + 56))(a1, 1, 1, v3);
  v4 = objc_opt_self();
  v5 = swift_allocObject();
  *(v5 + 16) = v1;
  *(v5 + 24) = a1;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_100A1901C;
  *(v6 + 24) = v5;
  v10[4] = sub_10018A020;
  v10[5] = v6;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_100029B9C;
  v10[3] = &unk_1010D8FC0;
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
  *(v3 + 16) = sub_100A19040;
  *(v3 + 24) = v2;
  aBlock[4] = sub_10018A020;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100029B9C;
  aBlock[3] = &unk_1010D9038;
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

void sub_100A17ACC(uint64_t a1, _BYTE *a2, void *a3, SEL *a4)
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
  *(v3 + 16) = sub_100A1906C;
  *(v3 + 24) = v2;
  aBlock[4] = sub_10018A020;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100029B9C;
  aBlock[3] = &unk_1010D90B0;
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

void sub_100A17E04(uint64_t a1, _BYTE *a2)
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
  *(v3 + 16) = sub_100A19074;
  *(v3 + 24) = v2;
  aBlock[4] = sub_10018A020;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100029B9C;
  aBlock[3] = &unk_1010D9128;
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

void sub_100A18068(uint64_t a1, void *a2, void *a3, SEL *a4)
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
  *(v3 + 16) = sub_100A190A0;
  *(v3 + 24) = v2;
  aBlock[4] = sub_10018A020;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100029B9C;
  aBlock[3] = &unk_1010D91A0;
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

void sub_100A18298(uint64_t a1, void *a2)
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
  v3 = type metadata accessor for URL();
  (*(*(v3 - 8) + 56))(a1, 1, 1, v3);
  v4 = objc_opt_self();
  v5 = swift_allocObject();
  *(v5 + 16) = v1;
  *(v5 + 24) = a1;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_100A190A8;
  *(v6 + 24) = v5;
  v10[4] = sub_10018A020;
  v10[5] = v6;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_100029B9C;
  v10[3] = &unk_1010D9218;
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

void sub_100A18504(uint64_t a1, uint64_t a2, SEL *a3)
{
  sub_10010FC20(&qword_1011A77F0, &unk_100EEAA20);
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
        static URL._unconditionallyBridgeFromObjectiveC(_:)();

        v15 = 0;
        v12 = v14;
      }

      else
      {
        v15 = 1;
      }

      v16 = type metadata accessor for URL();
      (*(*(v16 - 8) + 56))(v7, v15, 1, v16);
      sub_10006B010(v7, a2, &qword_1011A77F0, &unk_100EEAA20);
    }
  }
}

id sub_100A1868C(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();
  v6 = v5;

  if (v6)
  {
    v7 = String._bridgeToObjectiveC()();
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
  *(v3 + 16) = sub_100A190CC;
  *(v3 + 24) = v2;
  v7[4] = sub_10018A020;
  v7[5] = v3;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 1107296256;
  v7[2] = sub_100029B9C;
  v7[3] = &unk_1010D9290;
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

double sub_100A18880(uint64_t a1, uint64_t *a2, void *a3, SEL *a4)
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
        v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
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

id sub_100A18A3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  sub_10010FC20(&qword_1011A9B20, &qword_100EF1560);
  __chkstk_darwin();
  v8 = &v17 - v7;
  *&v4[OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObject] = 0;
  v9 = &v4[OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObjectStoreID];
  *v9 = 0;
  *(v9 + 1) = 0;
  v10.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  sub_1009667F4(a3, v8);
  v11 = type metadata accessor for Date();
  v12 = *(v11 - 8);
  isa = 0;
  if ((*(v12 + 48))(v8, 1, v11) != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v12 + 8))(v8, v11);
  }

  v14 = type metadata accessor for ModelObjectBackedStoreItemMetadata();
  v17.receiver = v4;
  v17.super_class = v14;
  v15 = objc_msgSendSuper2(&v17, "initWithStorePlatformDictionary:parentStoreItemMetadata:expirationDate:", v10.super.isa, a2, isa);

  sub_1000095E8(a3, &qword_1011A9B20, &qword_100EF1560);
  return v15;
}

uint64_t sub_100A190F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&qword_1011ABBA0, &qword_100EF60E8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t MotionMode.allowsMotion.getter(__n128 a1)
{
  v2 = v1;
  v3 = type metadata accessor for MotionMode();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin();
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, v2, v3, v5);
  v8 = (*(v4 + 88))(v7, v3);
  if (v8 == enum case for MotionMode.off(_:))
  {
    return 0;
  }

  if (v8 == enum case for MotionMode.wifiOnly(_:))
  {
    v10 = [objc_opt_self() sharedMonitor];
    [v10 networkType];

    return ICEnvironmentNetworkTypeIsWiFi();
  }

  else if (v8 == enum case for MotionMode.on(_:))
  {
    return 1;
  }

  else
  {
    v13 = 0;
    v14 = 0xE000000000000000;
    _StringGuts.grow(_:)(24);

    v13 = 0xD00000000000001ELL;
    v14 = 0x8000000100E605B0;
    sub_100A194E4(v11);
    v12._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v12);

    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

unint64_t sub_100A194E4(__n128 a1)
{
  result = qword_1011ABBA8;
  if (!qword_1011ABBA8)
  {
    type metadata accessor for MotionMode();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011ABBA8);
  }

  return result;
}

id sub_100A1953C()
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
  if (qword_1011A6A28 != -1)
  {
    swift_once();
  }

  return &static NetworkMonitor.shared;
}

double static NetworkMonitor.shared.getter()
{
  if (qword_1011A6A28 != -1)
  {
    swift_once();
  }

  return result;
}

uint64_t NetworkMonitor.isOnline.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v1);

  return v1;
}

void sub_100A19704(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v3);

  *a2 = v3;
}

uint64_t sub_100A19784(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t NetworkMonitor.$isOnline.getter()
{
  swift_beginAccess();
  sub_10010FC20(&qword_1011ABBB8, &qword_100EFD0C0);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t sub_100A1986C(void *a1)
{
  swift_beginAccess();
  sub_10010FC20(&qword_1011ABBB8, &qword_100EFD0C0);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t sub_100A198E4(uint64_t a1, uint64_t *a2)
{
  v3 = sub_10010FC20(&qword_1011AC720, &qword_100EFA120);
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin();
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3, v7);
  (v10)(v6, v9, v3);
  swift_beginAccess();
  sub_10010FC20(&qword_1011ABBB8, &qword_100EFD0C0);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

id NetworkMonitor.init()()
{
  v1 = sub_10010FC20(&qword_1011ABBB8, &qword_100EFD0C0);
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
    Published.init(initialValue:)();
    (*(v2 + 32))(v0 + v7, v4, v1);
    v9 = [objc_opt_self() defaultCenter];
    v10 = MPCloudControllerHasProperNetworkConditionsToShowCloudMediaDidChangeNotification;
    v11 = [objc_opt_self() mainQueue];
    v12 = swift_allocObject();
    swift_weakInit();
    aBlock[4] = sub_100A19DB0;
    aBlock[5] = v12;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100A19DB8;
    aBlock[3] = &unk_1010D92E0;
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

id sub_100A19CCC(uint64_t a1, uint64_t a2)
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
      return static Published.subscript.setter();
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_100A19DB8(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for Notification();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 32);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();

  v7(v6);

  return (*(v4 + 8))(v6, v3);
}

uint64_t NetworkMonitor.deinit()
{
  v1 = OBJC_IVAR____TtC9MusicCore14NetworkMonitor__isOnline;
  v2 = sub_10010FC20(&qword_1011ABBB8, &qword_100EFD0C0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t NetworkMonitor.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC9MusicCore14NetworkMonitor__isOnline;
  v2 = sub_10010FC20(&qword_1011ABBB8, &qword_100EFD0C0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for NetworkMonitor(uint64_t a1)
{
  result = qword_1011ABBE8;
  if (!qword_1011ABBE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100A1A014(uint64_t a1)
{
  sub_100008E80();
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t static Notice.variant(_:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v205 = a2;
  type metadata accessor for String.LocalizationValue.StringInterpolation();
  __chkstk_darwin();
  v210 = type metadata accessor for Notice.Thumbnail(0);
  v208 = *(v210 - 8);
  __chkstk_darwin();
  v4 = &v198 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_1011AA940, &unk_100EF2908);
  __chkstk_darwin();
  v6 = &v198 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v8 = &v198 - v7;
  sub_10010FC20(&qword_1011ABC70, &qword_100EF6198);
  __chkstk_darwin();
  v10 = &v198 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v12 = (&v198 - v11);
  __chkstk_darwin();
  v203 = (&v198 - v13);
  type metadata accessor for Locale();
  __chkstk_darwin();
  v209 = &v198 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for String.LocalizationValue();
  v16 = *(v15 - 8);
  v206 = v15;
  v207 = v16;
  __chkstk_darwin();
  v204 = &v198 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v19 = &v198 - v18;
  type metadata accessor for Notice.Variant(0);
  __chkstk_darwin();
  v21 = (&v198 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100A1D4A0(a1, v21, type metadata accessor for Notice.Variant);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v79 = *v21;
      v78 = v21[1];
      v80 = Notice.Variant.id.getter();
      v198 = v81;
      v199 = v80;
      if (v78)
      {
        v201 = v78;
        v202 = v79;
        v200 = 0x7265646C6F66;
        v82 = v210;
        v83 = v207;
        v84 = v208;
        v85 = v19;
        v86 = v205;
        v87 = v206;
        v88 = v204;
      }

      else
      {
        v85 = v19;
        String.LocalizationValue.init(stringLiteral:)();
        v87 = v206;
        v83 = v207;
        v88 = v204;
        (*(v207 + 16))(v204, v19, v206);
        v82 = v210;
        v84 = v208;
        if (qword_1011A6740 != -1)
        {
          swift_once();
        }

        v200 = 0x672E657261757173;
        v183 = qword_101219808;
        static Locale.current.getter();
        v184 = String.init(localized:table:bundle:locale:comment:)();
        v201 = v185;
        v202 = v184;
        (*(v83 + 8))(v19, v87);
        v86 = v205;
      }

      String.LocalizationValue.init(stringLiteral:)();
      (*(v83 + 16))(v88, v85, v87);
      if (qword_1011A6740 != -1)
      {
        swift_once();
      }

      v186 = qword_101219808;
      static Locale.current.getter();
      v210 = String.init(localized:table:bundle:locale:comment:)();
      v188 = v187;
      (*(v83 + 8))(v85, v87);
      v189 = Image.init(_internalSystemName:)();
      v190 = v203;
      *v203 = v189;
      swift_storeEnumTagMultiPayload();
      v191 = *(v84 + 56);
      v191(v190, 0, 1, v82);
      v192 = type metadata accessor for Notice(0);
      v193 = v192[5];
      v191(v86 + v193, 1, 1, v82);
      v194 = (v86 + v192[7]);
      v179 = (v86 + v192[8]);
      v112 = v86 + v192[9];
      v113 = v86 + v192[10];
      v195 = v198;
      *v86 = v199;
      v86[1] = v195;
      result = sub_100A1CFF8(v190, v86 + v193);
      v196 = (v86 + v192[6]);
      v197 = v201;
      *v196 = v202;
      v196[1] = v197;
      *v194 = v210;
      v194[1] = v188;
      goto LABEL_74;
    case 2u:
      v62 = *v21;
      v61 = v21[1];
      v63 = v21[2];
      v64 = Notice.Variant.id.getter();
      v199 = v65;
      v200 = v64;
      if (v63)
      {
        v201 = v63;
        v202 = v61;
        v67 = v206;
        v66 = v207;
        v68 = v19;
        v70 = v204;
        v69 = v205;
      }

      else
      {
        v68 = v19;
        String.LocalizationValue.init(stringLiteral:)();
        v67 = v206;
        v66 = v207;
        v70 = v204;
        (*(v207 + 16))(v204, v19, v206);
        if (qword_1011A6740 != -1)
        {
          swift_once();
        }

        v158 = qword_101219808;
        static Locale.current.getter();
        v159 = String.init(localized:table:bundle:locale:comment:)();
        v201 = v160;
        v202 = v159;
        (*(v66 + 8))(v19, v67);
        v69 = v205;
      }

      String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v161._countAndFlagsBits = 0;
      v161._object = 0xE000000000000000;
      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v161);
      v211 = v62;
      String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
      v162 = 0x8000000100E60680;
      v163 = 0xD000000000000015;
      goto LABEL_65;
    case 3u:
      v74 = *v21;
      v73 = v21[1];
      v75 = v21[2];
      v76 = Notice.Variant.id.getter();
      v199 = v77;
      v200 = v76;
      if (v75)
      {
        v201 = v75;
        v202 = v73;
        v67 = v206;
        v66 = v207;
        v68 = v19;
        v70 = v204;
        v69 = v205;
      }

      else
      {
        v68 = v19;
        String.LocalizationValue.init(stringLiteral:)();
        v67 = v206;
        v66 = v207;
        v70 = v204;
        (*(v207 + 16))(v204, v19, v206);
        if (qword_1011A6740 != -1)
        {
          swift_once();
        }

        v164 = qword_101219808;
        static Locale.current.getter();
        v165 = String.init(localized:table:bundle:locale:comment:)();
        v201 = v166;
        v202 = v165;
        (*(v66 + 8))(v19, v67);
        v69 = v205;
      }

      String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v167._countAndFlagsBits = 0;
      v167._object = 0xE000000000000000;
      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v167);
      v211 = v74;
      String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
      v163 = 0xD000000000000013;
      v162 = 0x8000000100E60660;
LABEL_65:
      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(*&v163);
      String.LocalizationValue.init(stringInterpolation:)();
      (*(v66 + 16))(v70, v68, v67);
      if (qword_1011A6740 != -1)
      {
        swift_once();
      }

      v168 = qword_101219808;
      static Locale.current.getter();
      v169 = String.init(localized:table:bundle:locale:comment:)();
      v171 = v170;
      (*(v66 + 8))(v68, v67);
      v172 = Image.init(_internalSystemName:)();
      v173 = v203;
      *v203 = v172;
      v174 = v210;
      swift_storeEnumTagMultiPayload();
      v175 = *(v208 + 56);
      v175(v173, 0, 1, v174);
      v176 = type metadata accessor for Notice(0);
      v177 = v176[5];
      v175(v69 + v177, 1, 1, v174);
      v178 = (v69 + v176[7]);
      v179 = (v69 + v176[8]);
      v112 = v69 + v176[9];
      v113 = v69 + v176[10];
      v180 = v199;
      *v69 = v200;
      v69[1] = v180;
      result = sub_100A1CFF8(v173, v69 + v177);
      v181 = (v69 + v176[6]);
      v182 = v201;
      *v181 = v202;
      v181[1] = v182;
      *v178 = v169;
      v178[1] = v171;
LABEL_74:
      *v179 = 0;
      v179[1] = 0;
      break;
    case 4u:
      v47 = *v21;
      v46 = v21[1];
      v48 = Notice.Variant.id.getter();
      v199 = v49;
      if (v46)
      {
        v201 = v46;
        v202 = v47;
        v50 = v210;
        v52 = v206;
        v51 = v207;
        v53 = v19;
      }

      else
      {
        v53 = v19;
        String.LocalizationValue.init(stringLiteral:)();
        v52 = v206;
        v51 = v207;
        (*(v207 + 16))(v204, v19, v206);
        if (qword_1011A6740 != -1)
        {
          swift_once();
        }

        v136 = qword_101219808;
        static Locale.current.getter();
        v137 = String.init(localized:table:bundle:locale:comment:)();
        v201 = v138;
        v202 = v137;
        (*(v51 + 8))(v19, v52);
        v50 = v210;
      }

      v139 = v205;
      v140 = qword_1011A70E8;

      if (v140 != -1)
      {
        swift_once();
      }

      v200 = v48;
      if (static DeviceCapabilities.isInternalInstall == 1)
      {
        String.LocalizationValue.init(stringLiteral:)();
        (*(v51 + 16))(v204, v53, v52);
        if (qword_1011A6740 != -1)
        {
          swift_once();
        }

        v141 = qword_101219808;
        static Locale.current.getter();
        v142 = String.init(localized:table:bundle:locale:comment:)();
        v209 = v143;
        v210 = v142;
        (*(v51 + 8))(v53, v52);
        v145 = swift_allocObject();
        *(v145 + 16) = v47;
        *(v145 + 24) = v46;
        v144 = sub_100A1D068;
      }

      else
      {

        v144 = 0;
        v145 = 0;
        v209 = 0;
        v210 = 0;
      }

      v146 = Image.init(_internalSystemName:)();
      v147 = v203;
      *v203 = v146;
      swift_storeEnumTagMultiPayload();
      v148 = *(v208 + 56);
      v148(v147, 0, 1, v50);
      v149 = type metadata accessor for Notice(0);
      v150 = v50;
      v151 = v149[5];
      v148(v139 + v151, 1, 1, v150);
      v152 = (v139 + v149[7]);
      v153 = (v139 + v149[8]);
      v112 = v139 + v149[9];
      v113 = v139 + v149[10];
      v154 = v199;
      *v139 = v200;
      v139[1] = v154;
      result = sub_100A1CFF8(v147, v139 + v151);
      v155 = (v139 + v149[6]);
      v156 = v201;
      *v155 = v202;
      v155[1] = v156;
      v157 = v209;
      *v152 = v210;
      v152[1] = v157;
      *v153 = v144;
      v153[1] = v145;
      *v112 = 2;
      goto LABEL_37;
    case 5u:
      v91 = Notice.Variant.id.getter();
      v201 = v92;
      v202 = v91;
      v41 = v19;
      String.LocalizationValue.init(stringLiteral:)();
      v43 = v206;
      v42 = v207;
      (*(v207 + 16))(v204, v19, v206);
      if (qword_1011A6740 == -1)
      {
        goto LABEL_34;
      }

      goto LABEL_75;
    case 6u:
    case 7u:
    case 8u:
      v99 = Notice.Variant.id.getter();
      v201 = v100;
      v202 = v99;
      v41 = v19;
      String.LocalizationValue.init(stringLiteral:)();
      v43 = v206;
      v42 = v207;
      (*(v207 + 16))(v204, v19, v206);
      if (qword_1011A6740 == -1)
      {
        goto LABEL_34;
      }

      goto LABEL_75;
    case 9u:
      v59 = Notice.Variant.id.getter();
      v201 = v60;
      v202 = v59;
      v41 = v19;
      String.LocalizationValue.init(stringLiteral:)();
      v43 = v206;
      v42 = v207;
      (*(v207 + 16))(v204, v19, v206);
      if (qword_1011A6740 == -1)
      {
        goto LABEL_34;
      }

      goto LABEL_75;
    case 0xAu:
      v95 = Notice.Variant.id.getter();
      v201 = v96;
      v202 = v95;
      v56 = v19;
      String.LocalizationValue.init(stringLiteral:)();
      v58 = v206;
      v57 = v207;
      (*(v207 + 16))(v204, v19, v206);
      if (qword_1011A6740 == -1)
      {
        goto LABEL_32;
      }

      goto LABEL_81;
    case 0xBu:
      v44 = Notice.Variant.id.getter();
      v201 = v45;
      v202 = v44;
      v41 = v19;
      String.LocalizationValue.init(stringLiteral:)();
      v43 = v206;
      v42 = v207;
      (*(v207 + 16))(v204, v19, v206);
      if (qword_1011A6740 == -1)
      {
        goto LABEL_34;
      }

      goto LABEL_75;
    case 0xCu:
      v54 = Notice.Variant.id.getter();
      v201 = v55;
      v202 = v54;
      v56 = v19;
      String.LocalizationValue.init(stringLiteral:)();
      v58 = v206;
      v57 = v207;
      (*(v207 + 16))(v204, v19, v206);
      if (qword_1011A6740 == -1)
      {
        goto LABEL_32;
      }

      goto LABEL_81;
    case 0xDu:
      v93 = Notice.Variant.id.getter();
      v201 = v94;
      v202 = v93;
      v56 = v19;
      String.LocalizationValue.init(stringLiteral:)();
      v58 = v206;
      v57 = v207;
      (*(v207 + 16))(v204, v19, v206);
      if (qword_1011A6740 == -1)
      {
        goto LABEL_32;
      }

      goto LABEL_81;
    case 0xEu:
      v39 = Notice.Variant.id.getter();
      v201 = v40;
      v202 = v39;
      v41 = v19;
      String.LocalizationValue.init(stringLiteral:)();
      v43 = v206;
      v42 = v207;
      (*(v207 + 16))(v204, v19, v206);
      if (qword_1011A6740 == -1)
      {
        goto LABEL_34;
      }

LABEL_75:
      swift_once();
LABEL_34:
      v101 = qword_101219808;
      static Locale.current.getter();
      v36 = String.init(localized:table:bundle:locale:comment:)();
      v38 = v102;
      (*(v42 + 8))(v41, v43);
      goto LABEL_35;
    case 0xFu:
      v71 = Notice.Variant.id.getter();
      v201 = v72;
      v202 = v71;
      v56 = v19;
      String.LocalizationValue.init(stringLiteral:)();
      v58 = v206;
      v57 = v207;
      (*(v207 + 16))(v204, v19, v206);
      if (qword_1011A6740 == -1)
      {
        goto LABEL_32;
      }

      goto LABEL_81;
    case 0x10u:
      v31 = Notice.Variant.id.getter();
      v201 = v32;
      v202 = v31;
      String.LocalizationValue.init(stringLiteral:)();
      v34 = v206;
      v33 = v207;
      (*(v207 + 16))(v204, v19, v206);
      if (qword_1011A6740 != -1)
      {
        swift_once();
      }

      v35 = qword_101219808;
      static Locale.current.getter();
      v36 = String.init(localized:table:bundle:locale:comment:)();
      v38 = v37;
      (*(v33 + 8))(v19, v34);
      goto LABEL_35;
    case 0x11u:
      v89 = Notice.Variant.id.getter();
      v201 = v90;
      v202 = v89;
      v56 = v19;
      String.LocalizationValue.init(stringLiteral:)();
      v58 = v206;
      v57 = v207;
      (*(v207 + 16))(v204, v19, v206);
      if (qword_1011A6740 == -1)
      {
        goto LABEL_32;
      }

LABEL_81:
      swift_once();
LABEL_32:
      v97 = qword_101219808;
      static Locale.current.getter();
      v36 = String.init(localized:table:bundle:locale:comment:)();
      v38 = v98;
      (*(v57 + 8))(v56, v58);
LABEL_35:
      v103 = Image.init(_internalSystemName:)();
      v104 = v203;
      *v203 = v103;
      v105 = v210;
      swift_storeEnumTagMultiPayload();
      v106 = *(v208 + 56);
      v106(v104, 0, 1, v105);
      v107 = type metadata accessor for Notice(0);
      v108 = v107[5];
      v109 = v205;
      v106(v205 + v108, 1, 1, v105);
      v110 = (v109 + v107[7]);
      v111 = (v109 + v107[8]);
      v112 = v109 + v107[9];
      v113 = v109 + v107[10];
      v114 = v201;
      *v109 = v202;
      v109[1] = v114;
      result = sub_100A1CFF8(v104, v109 + v108);
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
      v202 = v21[1];
      v203 = v22;
      v23 = sub_10010FC20(&qword_1011ABC78, &qword_100EF61A0);
      v24 = *(v23 + 48);
      v198 = *(v21 + *(v23 + 64));
      sub_100A1D070(v21 + v24, v8);
      v25 = Notice.Variant.id.getter();
      v200 = v26;
      v201 = v25;
      sub_1000089F8(v8, v6, &unk_1011AA940, &unk_100EF2908);
      v27 = type metadata accessor for Artwork();
      v28 = *(v27 - 8);
      if ((*(v28 + 48))(v6, 1, v27) == 1)
      {
        sub_1000095E8(v6, &unk_1011AA940, &unk_100EF2908);
        v29 = 1;
        v30 = v210;
      }

      else
      {
        (*(v28 + 32))(v4, v6, v27);
        v30 = v210;
        swift_storeEnumTagMultiPayload();
        sub_100A1D0E0(v4, v10);
        v29 = 0;
      }

      v117 = v208;
      v118 = *(v208 + 56);
      v118(v10, v29, 1, v30);
      v208 = *(v117 + 48);
      v119 = (v208)(v10, 1, v30);
      v199 = v118;
      if (v119 == 1)
      {
        *v12 = Image.init(_internalSystemName:)();
        swift_storeEnumTagMultiPayload();
        v118(v12, 0, 1, v30);
        if ((v208)(v10, 1, v30) != 1)
        {
          sub_1000095E8(v10, &qword_1011ABC70, &qword_100EF6198);
        }
      }

      else
      {
        sub_100A1D0E0(v10, v12);
        v118(v12, 0, 1, v30);
      }

      String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v120._countAndFlagsBits = 0;
      v120._object = 0xE000000000000000;
      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v120);
      v211 = v198;
      String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
      v121._countAndFlagsBits = 0x297328676E6F7320;
      v121._object = 0xEE00646564646120;
      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v121);
      String.LocalizationValue.init(stringInterpolation:)();
      v123 = v206;
      v122 = v207;
      (*(v207 + 16))(v204, v19, v206);
      if (qword_1011A6740 != -1)
      {
        swift_once();
      }

      v124 = qword_101219808;
      static Locale.current.getter();
      v125 = String.init(localized:table:bundle:locale:comment:)();
      v127 = v126;
      (*(v122 + 8))(v19, v123);
      sub_1000095E8(v8, &unk_1011AA940, &unk_100EF2908);
      v128 = type metadata accessor for Notice(0);
      v129 = v128[5];
      v130 = v205;
      v199(v205 + v129, 1, 1, v210);
      v131 = (v130 + v128[7]);
      v132 = (v130 + v128[8]);
      v112 = v130 + v128[9];
      v113 = v130 + v128[10];
      v133 = v200;
      *v130 = v201;
      v130[1] = v133;
      result = sub_100A1CFF8(v12, v130 + v129);
      v134 = (v130 + v128[6]);
      v135 = v202;
      *v134 = v203;
      v134[1] = v135;
      *v131 = v125;
      v131[1] = v127;
      *v132 = 0;
      v132[1] = 0;
      break;
  }

  *v112 = 0;
LABEL_37:
  v112[8] = 0;
  *v113 = 1;
  return result;
}