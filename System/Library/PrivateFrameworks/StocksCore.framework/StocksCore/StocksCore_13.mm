uint64_t sub_1DAB88568()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  sub_1DAA87074(v0 + 72, &qword_1EE123E28, MEMORY[0x1E69E64E8], sub_1DAA58DCC);

  return swift_deallocClassInstance();
}

void sub_1DAB885E8(uint64_t a1)
{
  if (!qword_1ECBE80D0)
  {
    sub_1DAA58DCC(255, &qword_1EE123E28, MEMORY[0x1E69E64E8]);
    v1 = sub_1DACB8C24();
    if (!v2)
    {
      atomic_store(v1, &qword_1ECBE80D0);
    }
  }
}

uint64_t sub_1DAB8869C(uint64_t a1, const char *a2, uint64_t a3, ...)
{
  if (qword_1EE121838 != -1)
  {
    swift_once();
  }

  v5 = qword_1EE13E310;
  v6 = sub_1DACB9904();
  sub_1DAA41D64(0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1DACC1D20;
  sub_1DAA4436C(0, &qword_1EE123B10, MEMORY[0x1E69E7280]);
  sub_1DACB9DD4();
  *(v7 + 56) = MEMORY[0x1E69E6158];
  *(v7 + 64) = sub_1DAA443C8();
  *(v7 + 32) = 0;
  *(v7 + 40) = 0xE000000000000000;
  sub_1DACB8C64(a2, a3, 2, &dword_1DAA3F000, v5, v6, v7);
}

uint64_t sub_1DAB887D4(__int128 *a1)
{
  v1 = 0x73752D6E65;
  v2 = a1[7];
  v32 = a1[6];
  v33 = v2;
  v34 = *(a1 + 16);
  v3 = a1[3];
  v28 = a1[2];
  v29 = v3;
  v4 = a1[5];
  v30 = a1[4];
  v31 = v4;
  v5 = a1[1];
  v26 = *a1;
  v27 = v5;
  v6 = v5;
  v7 = objc_opt_self();
  sub_1DACB71E4();
  v8 = [v7 sharedPreferences];
  v9 = v8;
  if (!v8)
  {
    v13 = 0xE500000000000000;
LABEL_8:

    v18 = 0xE200000000000000;
    v16 = 21333;
    goto LABEL_9;
  }

  v10 = [v8 stocksLanguageCode];
  if (v10)
  {
    v11 = v10;
    v1 = sub_1DACB9324();
    v13 = v12;
  }

  else
  {
    v13 = 0xE500000000000000;
  }

  v14 = [v9 stocksCountryCode];
  if (!v14)
  {
    goto LABEL_8;
  }

  v15 = v14;
  v16 = sub_1DACB9324();
  v18 = v17;

LABEL_9:
  sub_1DACB71E4();
  MEMORY[0x1E1276F20](59, 0xE100000000000000);
  MEMORY[0x1E1276F20](v1, v13);
  MEMORY[0x1E1276F20](59, 0xE100000000000000);
  MEMORY[0x1E1276F20](v16, v18);

  sub_1DACB88F4();
  sub_1DAA58BFC(0, &qword_1ECBE80D8, sub_1DAB8B890, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  inited[1] = xmmword_1DACC1D20;
  inited[2] = v6;
  __src[0] = v26;
  __src[1] = v27;
  __src[2] = v28;
  __src[3] = v29;
  __src[4] = v30;
  __src[5] = v31;
  __src[6] = v32;
  __src[7] = v33;
  v25 = v34;
  nullsub_1();
  memmove(inited + 3, __src, 0x88uLL);
  sub_1DAA806E4(&v26, v22);
  sub_1DAB68A1C(inited);
  swift_setDeallocating();
  sub_1DAA889F4((inited + 2), sub_1DAB8B890);
  sub_1DACB8D24();

  v22[6] = v32;
  v22[7] = v33;
  v23 = v34;
  v22[2] = v28;
  v22[3] = v29;
  v22[4] = v30;
  v22[5] = v31;
  v22[0] = v26;
  v22[1] = v27;
  sub_1DAA837F0(0, &qword_1ECBE9AC0, MEMORY[0x1E69D6B18]);
  swift_allocObject();
  sub_1DAA806E4(&v26, &v21);
  return sub_1DACB8AE4();
}

uint64_t sub_1DAB88B38(uint64_t a1, __int128 *a2)
{
  v4 = *v2;
  v5 = a2[1];
  v45 = *a2;
  v46[0] = v5;
  *(v46 + 10) = *(a2 + 26);
  sub_1DACBA284();
  sub_1DABE6B08(v44);
  v6 = sub_1DACBA2C4();
  v7 = -1 << *(v4 + 32);
  v8 = v6 & ~v7;
  v34 = a2;
  if (((*(v4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
LABEL_43:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v45 = *v32;
    sub_1DAA8DB84(v34, v44);
    sub_1DAB89EAC(v34, v8, isUniquelyReferenced_nonNull_native);
    *v32 = v45;
    v25 = v34[1];
    *a1 = *v34;
    *(a1 + 16) = v25;
    *(a1 + 26) = *(v34 + 26);
    return 1;
  }

  v40 = ~v7;
  v36 = *(a2 + 41);
  v9 = *a2;
  v10 = *(a2 + 1);
  v38 = *(a2 + 4);
  v39 = *(a2 + 3);
  v41 = *(v4 + 48);
  v33 = *(a2 + 40);
  v37 = v33 & 0xE0;
  v43 = *(a2 + 2);
  while (1)
  {
    v11 = v41 + 48 * v8;
    result = *v11;
    v13 = *(v11 + 16);
    v14 = *(v11 + 24);
    v15 = *(v11 + 32);
    v16 = *(v11 + 40);
    v42 = *(v11 + 41);
    if (*v11 != v9 || *(v11 + 8) != v10)
    {
      result = sub_1DACBA174();
      if ((result & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    v18 = *(v13 + 16);
    if (v18 != *(v43 + 16))
    {
      goto LABEL_5;
    }

    if (v18 && v13 != v43)
    {
      break;
    }

LABEL_17:
    if ((v14 != v39 || v15 != v38) && (sub_1DACBA174() & 1) == 0)
    {
      goto LABEL_5;
    }

    v20 = v16 >> 5;
    if (v16 >> 5 > 2)
    {
      if (v20 == 3)
      {
        if (v37 != 96)
        {
          goto LABEL_5;
        }
      }

      else if (v20 == 4)
      {
        if (v37 != 128)
        {
          goto LABEL_5;
        }
      }

      else if (v33 != 160)
      {
        goto LABEL_5;
      }
    }

    else if (v20)
    {
      if (v20 == 1)
      {
        if (v37 != 32)
        {
          goto LABEL_5;
        }
      }

      else if (v37 != 64)
      {
        goto LABEL_5;
      }
    }

    else if (v33 > 0x1F)
    {
      goto LABEL_5;
    }

    if (v42 == v36)
    {
      sub_1DAA934A8(v34);
      v26 = *(v4 + 48) + 48 * v8;
      v28 = *v26;
      v27 = *(v26 + 8);
      v30 = *(v26 + 16);
      v29 = *(v26 + 24);
      v31 = *(v26 + 32);
      LOWORD(v26) = *(v26 + 40);
      *a1 = v28;
      *(a1 + 8) = v27;
      *(a1 + 16) = v30;
      *(a1 + 24) = v29;
      *(a1 + 32) = v31;
      *(a1 + 40) = v26;
      sub_1DACB71E4();
      sub_1DACB71E4();
      sub_1DACB71E4();
      return 0;
    }

LABEL_5:
    v8 = (v8 + 1) & v40;
    if (((*(v4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      goto LABEL_43;
    }
  }

  v21 = (v13 + 40);
  v22 = (v43 + 40);
  while (v18)
  {
    result = *(v21 - 1);
    if (result != *(v22 - 1) || *v21 != *v22)
    {
      result = sub_1DACBA174();
      if ((result & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    v21 += 2;
    v22 += 2;
    if (!--v18)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1DAB88E84(uint64_t a1, __int128 *a2)
{
  v4 = *v2;
  v5 = a2[7];
  *v80 = a2[6];
  *&v80[16] = v5;
  *&v80[32] = *(a2 + 16);
  v6 = a2[3];
  v77 = a2[2];
  v78 = v6;
  v7 = a2[5];
  *v79 = a2[4];
  *&v79[16] = v7;
  v8 = a2[1];
  v75 = *a2;
  v76 = v8;
  sub_1DACBA284();
  sub_1DAB08BD4(v73);
  v9 = sub_1DACBA2C4();
  v10 = v4 + 56;
  v11 = -1 << *(v4 + 32);
  v12 = v9 & ~v11;
  if (((*(v4 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
  {
LABEL_84:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v73[0] = *v58;
    sub_1DAA806E4(a2, &v75);
    sub_1DAB8A1D8(a2, v12, isUniquelyReferenced_nonNull_native);
    *v58 = *&v73[0];
    v41 = a2[7];
    *(a1 + 96) = a2[6];
    *(a1 + 112) = v41;
    *(a1 + 128) = *(a2 + 16);
    v42 = a2[3];
    *(a1 + 32) = a2[2];
    *(a1 + 48) = v42;
    v43 = a2[5];
    *(a1 + 64) = a2[4];
    *(a1 + 80) = v43;
    v44 = a2[1];
    result = 1;
    *a1 = *a2;
    *(a1 + 16) = v44;
    return result;
  }

  v13 = ~v11;
  v67 = *(a2 + 64);
  v14 = *a2;
  v15 = *(a2 + 1);
  v16 = *(a2 + 2);
  *(&v70 + 1) = *(a2 + 4);
  v71 = *(a2 + 3);
  *(&v69 + 1) = *(a2 + 6);
  *&v70 = *(a2 + 5);
  v68 = *(a2 + 9);
  *&v69 = *(a2 + 7);
  *(&v63 + 1) = *(a2 + 11);
  v64 = *(a2 + 10);
  v62 = *(a2 + 14);
  *&v63 = *(a2 + 12);
  v57 = *(a2 + 15);
  v60 = *(a2 + 13);
  v61 = *(a2 + 16);
  v65 = ~v11;
  v66 = v4 + 56;
  while (1)
  {
    v17 = *(v4 + 48) + 136 * v12;
    v75 = *v17;
    v18 = *(v17 + 48);
    v19 = *(v17 + 64);
    v20 = *(v17 + 32);
    v76 = *(v17 + 16);
    v77 = v20;
    v78 = v18;
    *v79 = v19;
    v21 = *(v17 + 80);
    v22 = *(v17 + 96);
    v23 = *(v17 + 112);
    *&v80[32] = *(v17 + 128);
    *v80 = v22;
    *&v80[16] = v23;
    *&v79[16] = v21;
    if (v75 != __PAIR128__(v15, v14) && (sub_1DACBA174() & 1) == 0 || v76 != __PAIR128__(v71, v16) && (sub_1DACBA174() & 1) == 0 || __PAIR128__(v77, *(&v77 + 1)) != v70 && (sub_1DACBA174() & 1) == 0 || __PAIR128__(v78, *(&v78 + 1)) != v69 && (sub_1DACBA174() & 1) == 0)
    {
      goto LABEL_5;
    }

    if (v79[0] <= 3u)
    {
      v24 = 0x75636F7470797263;
      if (v79[0] != 2)
      {
        v24 = 0x797469757165;
      }

      v25 = 0xEE0079636E657272;
      if (v79[0] != 2)
      {
        v25 = 0xE600000000000000;
      }

      v26 = 0x79636E6572727563;
      if (!v79[0])
      {
        v26 = 0x6E776F6E6B6E75;
      }

      v27 = 0xE700000000000000;
      if (v79[0])
      {
        v27 = 0xE800000000000000;
      }

      if (v79[0] <= 1u)
      {
        v28 = v26;
      }

      else
      {
        v28 = v24;
      }

      if (v79[0] <= 1u)
      {
        v29 = v27;
      }

      else
      {
        v29 = v25;
      }

LABEL_36:
      v30 = v67;
      if (v67 <= 3)
      {
        goto LABEL_37;
      }

      goto LABEL_51;
    }

    if (v79[0] <= 5u)
    {
      if (v79[0] == 4)
      {
        v28 = 6714469;
      }

      else
      {
        v28 = 0x73657275747566;
      }

      if (v79[0] == 4)
      {
        v29 = 0xE300000000000000;
      }

      else
      {
        v29 = 0xE700000000000000;
      }

      goto LABEL_36;
    }

    v30 = v67;
    if (v79[0] == 6)
    {
      v29 = 0xE500000000000000;
      v28 = 0x7865646E69;
      if (v67 <= 3)
      {
        goto LABEL_37;
      }
    }

    else
    {
      v28 = 0x75466C617574756DLL;
      v29 = 0xEA0000000000646ELL;
      if (v67 <= 3)
      {
LABEL_37:
        if (v30 > 1)
        {
          if (v30 == 2)
          {
            v32 = 0x75636F7470797263;
          }

          else
          {
            v32 = 0x797469757165;
          }

          if (v30 == 2)
          {
            v31 = 0xEE0079636E657272;
          }

          else
          {
            v31 = 0xE600000000000000;
          }
        }

        else if (v30)
        {
          v31 = 0xE800000000000000;
          v32 = 0x79636E6572727563;
        }

        else
        {
          v31 = 0xE700000000000000;
          v32 = 0x6E776F6E6B6E75;
        }

        goto LABEL_65;
      }
    }

LABEL_51:
    v33 = 0x75466C617574756DLL;
    if (v30 == 6)
    {
      v33 = 0x7865646E69;
    }

    v34 = 0xEA0000000000646ELL;
    if (v30 == 6)
    {
      v34 = 0xE500000000000000;
    }

    v35 = 0x73657275747566;
    if (v30 == 4)
    {
      v35 = 6714469;
    }

    v36 = 0xE700000000000000;
    if (v30 == 4)
    {
      v36 = 0xE300000000000000;
    }

    v32 = v30 <= 5 ? v35 : v33;
    v31 = v30 <= 5 ? v36 : v34;
LABEL_65:
    v37 = v4;
    if (v28 == v32 && v29 == v31)
    {
      sub_1DAA806E4(&v75, v73);
    }

    else
    {
      v38 = sub_1DACBA174();
      sub_1DAA806E4(&v75, v73);

      if ((v38 & 1) == 0)
      {
        goto LABEL_4;
      }
    }

    if (*&v79[8] != __PAIR128__(v64, v68) && (sub_1DACBA174() & 1) == 0 || __PAIR128__(*&v79[24], *v80) != v63 && (sub_1DACBA174() & 1) == 0)
    {
      goto LABEL_4;
    }

    if (*&v80[16])
    {
      if (!v62 || *&v80[8] != __PAIR128__(v62, v60) && (sub_1DACBA174() & 1) == 0)
      {
        goto LABEL_4;
      }
    }

    else if (v62)
    {
      goto LABEL_4;
    }

    if (!*&v80[32])
    {
      if (!v61)
      {
        break;
      }

LABEL_4:
      sub_1DAA9B1C8(&v75);
      v4 = v37;
      v13 = v65;
      v10 = v66;
      goto LABEL_5;
    }

    if (!v61)
    {
      goto LABEL_4;
    }

    if (*&v80[24] == __PAIR128__(v61, v57))
    {
      break;
    }

    v39 = sub_1DACBA174();
    sub_1DAA9B1C8(&v75);
    v4 = v37;
    v13 = v65;
    v10 = v66;
    if (v39)
    {
      goto LABEL_86;
    }

LABEL_5:
    v12 = (v12 + 1) & v13;
    if (((*(v10 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      goto LABEL_84;
    }
  }

  sub_1DAA9B1C8(&v75);
  v4 = v37;
LABEL_86:
  sub_1DAA9B1C8(a2);
  v46 = *(v4 + 48) + 136 * v12;
  v73[0] = *v46;
  v47 = *(v46 + 48);
  v48 = *(v46 + 64);
  v49 = *(v46 + 32);
  v73[1] = *(v46 + 16);
  v73[2] = v49;
  v73[3] = v47;
  v73[4] = v48;
  v50 = *(v46 + 80);
  v51 = *(v46 + 96);
  v52 = *(v46 + 112);
  v74 = *(v46 + 128);
  v73[6] = v51;
  v73[7] = v52;
  v73[5] = v50;
  v53 = *(v46 + 112);
  *(a1 + 96) = *(v46 + 96);
  *(a1 + 112) = v53;
  *(a1 + 128) = *(v46 + 128);
  v54 = *(v46 + 48);
  *(a1 + 32) = *(v46 + 32);
  *(a1 + 48) = v54;
  v55 = *(v46 + 80);
  *(a1 + 64) = *(v46 + 64);
  *(a1 + 80) = v55;
  v56 = *(v46 + 16);
  *a1 = *v46;
  *(a1 + 16) = v56;
  sub_1DAA806E4(v73, v72);
  return 0;
}

uint64_t sub_1DAB89518(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1DAA83070(0, &qword_1ECBE6DE0, sub_1DAB073D0, &type metadata for Watchlist, MEMORY[0x1E69E6A10]);
  result = sub_1DACB9C34();
  v5 = result;
  if (*(v3 + 16))
  {
    v38 = v1;
    v39 = v3;
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    v40 = result;
    while (1)
    {
      if (!v10)
      {
        v16 = v6;
        while (1)
        {
          v6 = v16 + 1;
          if (__OFADD__(v16, 1))
          {
            __break(1u);
            goto LABEL_47;
          }

          if (v6 >= v11)
          {
            break;
          }

          v17 = v7[v6];
          ++v16;
          if (v17)
          {
            v15 = __clz(__rbit64(v17));
            v41 = (v17 - 1) & v17;
            goto LABEL_15;
          }
        }

        v37 = 1 << *(v3 + 32);
        if (v37 >= 64)
        {
          bzero(v7, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
        }

        else
        {
          *v7 = -1 << v37;
        }

        v2 = v38;
        *(v3 + 16) = 0;
        goto LABEL_45;
      }

      v15 = __clz(__rbit64(v10));
      v41 = (v10 - 1) & v10;
LABEL_15:
      v18 = *(v3 + 48) + 48 * (v15 | (v6 << 6));
      v19 = *v18;
      v20 = *(v18 + 8);
      v21 = *(v18 + 16);
      v43 = *(v18 + 32);
      v44 = *(v18 + 24);
      v22 = *(v18 + 40);
      v42 = *(v18 + 41);
      sub_1DACBA284();
      sub_1DACB9404();
      MEMORY[0x1E1277D70](*(v21 + 16));
      v23 = *(v21 + 16);
      if (v23)
      {
        v24 = v21 + 40;
        do
        {
          sub_1DACB71E4();
          sub_1DACB9404();

          v24 += 16;
          --v23;
        }

        while (v23);
      }

      sub_1DACB9404();
      v25 = v22 >> 5;
      if (v22 >> 5 <= 2)
      {
        break;
      }

      v5 = v40;
      if (v25 == 3)
      {
        v27 = 4;
LABEL_29:
        v28 = v42;
        goto LABEL_30;
      }

      v28 = v42;
      if (v25 == 4)
      {
        v27 = 5;
LABEL_30:
        MEMORY[0x1E1277D70](v27);
        v29 = v22 & 1;
        goto LABEL_31;
      }

      v29 = 0;
LABEL_31:
      MEMORY[0x1E1277D70](v29);
      MEMORY[0x1E1277D70](v28);
      result = sub_1DACBA2C4();
      v30 = -1 << *(v5 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v12 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v12 + 8 * v32);
          if (v36 != -1)
          {
            v13 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_47:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v31) & ~*(v12 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = *(v5 + 48) + 48 * v13;
      *v14 = v19;
      *(v14 + 8) = v20;
      *(v14 + 16) = v21;
      *(v14 + 24) = v44;
      *(v14 + 32) = v43;
      *(v14 + 40) = v22;
      *(v14 + 41) = v28;
      ++*(v5 + 16);
      v3 = v39;
      v10 = v41;
    }

    v26 = 2;
    if (v25 != 1)
    {
      v26 = 3;
    }

    if (v25)
    {
      v27 = v26;
    }

    else
    {
      v27 = 1;
    }

    v5 = v40;
    goto LABEL_29;
  }

LABEL_45:

  *v2 = v5;
  return result;
}

uint64_t sub_1DAB898C8(uint64_t a1)
{
  v2 = v1;
  v36 = sub_1DACB7DC4();
  v3 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  sub_1DAB8BC44(0);
  result = sub_1DACB9C34();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v1;
    v31 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v34 = v3 + 32;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v32 = *(v3 + 72);
      v33 = v20;
      v20(v35, v19, v36);
      sub_1DAA4CCDC(&qword_1EE125270, MEMORY[0x1E6969680], MEMORY[0x1E6969690]);
      result = sub_1DACB91E4();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = v33(*(v7 + 48) + v15 * v32, v35, v36);
      ++*(v7 + 16);
      v5 = v31;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero(v9, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v30;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
  return result;
}

unint64_t sub_1DAB89C18(uint64_t a1)
{
  v2 = *v1;
  sub_1DAA83070(0, &qword_1ECBE6DD8, sub_1DAB07284, &type metadata for Stock, MEMORY[0x1E69E6A10]);
  result = sub_1DACB9C34();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    for (i = (v7 + 63) >> 6; v9; ++*(v4 + 16))
    {
      v11 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_12:
      v14 = *(v2 + 48) + 136 * (v11 | (v5 << 6));
      v15 = *(v14 + 80);
      v16 = *(v14 + 112);
      v45 = *(v14 + 96);
      v46 = v16;
      v17 = *(v14 + 16);
      v18 = *(v14 + 48);
      v41 = *(v14 + 32);
      v42 = v18;
      v19 = *(v14 + 48);
      v20 = *(v14 + 80);
      v43 = *(v14 + 64);
      v44 = v20;
      v21 = *(v14 + 16);
      v39 = *v14;
      v40 = v21;
      v22 = *(v14 + 112);
      v36 = v45;
      v37 = v22;
      v32 = v41;
      v33 = v19;
      v34 = v43;
      v35 = v15;
      v47 = *(v14 + 128);
      v38 = *(v14 + 128);
      v30 = v39;
      v31 = v17;
      sub_1DACBA284();
      sub_1DAB08BD4(v29);
      sub_1DACBA2C4();
      result = sub_1DACB9BE4();
      *(v4 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      v23 = *(v4 + 48) + 136 * result;
      v24 = v46;
      *(v23 + 96) = v45;
      *(v23 + 112) = v24;
      *(v23 + 128) = v47;
      v25 = v42;
      *(v23 + 32) = v41;
      *(v23 + 48) = v25;
      v26 = v44;
      *(v23 + 64) = v43;
      *(v23 + 80) = v26;
      v27 = v40;
      *v23 = v39;
      *(v23 + 16) = v27;
    }

    v12 = v5;
    while (1)
    {
      v5 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        return result;
      }

      if (v5 >= i)
      {
        break;
      }

      v13 = v6[v5];
      ++v12;
      if (v13)
      {
        v11 = __clz(__rbit64(v13));
        v9 = (v13 - 1) & v13;
        goto LABEL_12;
      }
    }

    v28 = 1 << *(v2 + 32);
    if (v28 >= 64)
    {
      bzero((v2 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v28;
    }

    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1DAB89EAC(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  v36 = result;
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1DAB89518(v6 + 1);
    }

    else
    {
      if (v7 > v6)
      {
        result = sub_1DAB8A84C();
        goto LABEL_51;
      }

      sub_1DAB8AF74(v6 + 1);
    }

    v8 = *v3;
    v9 = *(v5 + 16);
    v44 = *v5;
    v45[0] = v9;
    *(v45 + 10) = *(v5 + 26);
    sub_1DACBA284();
    sub_1DABE6B08(v43);
    result = sub_1DACBA2C4();
    v10 = -1 << *(v8 + 32);
    a2 = result & ~v10;
    v41 = v8 + 56;
    if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v39 = ~v10;
      v32 = *(v5 + 40);
      v33 = *(v5 + 41);
      v11 = *v5;
      v12 = *(v5 + 8);
      v37 = *(v5 + 32);
      v38 = *(v5 + 24);
      v40 = *(v8 + 48);
      v34 = v32 & 0xE0;
      v42 = *(v5 + 16);
      do
      {
        v13 = v40 + 48 * a2;
        result = *v13;
        v14 = *(v13 + 16);
        v15 = *(v13 + 24);
        v16 = *(v13 + 32);
        v17 = *(v13 + 40);
        v18 = *(v13 + 41);
        v19 = *v13 == v11 && *(v13 + 8) == v12;
        if (v19 || (result = sub_1DACBA174(), (result & 1) != 0))
        {
          v20 = *(v14 + 16);
          if (v20 == *(v42 + 16))
          {
            if (v20)
            {
              v21 = v14 == v42;
            }

            else
            {
              v21 = 1;
            }

            if (!v21)
            {
              v23 = (v14 + 40);
              v24 = (v42 + 40);
              while (v20)
              {
                result = *(v23 - 1);
                if (result != *(v24 - 1) || *v23 != *v24)
                {
                  result = sub_1DACBA174();
                  if ((result & 1) == 0)
                  {
                    goto LABEL_11;
                  }
                }

                v23 += 2;
                v24 += 2;
                if (!--v20)
                {
                  goto LABEL_23;
                }
              }

              __break(1u);
              goto LABEL_54;
            }

LABEL_23:
            if (v15 == v38 && v16 == v37 || (result = sub_1DACBA174(), (result & 1) != 0))
            {
              v22 = v17 >> 5;
              if (v17 >> 5 > 2)
              {
                if (v22 == 3)
                {
                  if (v34 == 96)
                  {
                    goto LABEL_10;
                  }
                }

                else if (v22 == 4)
                {
                  if (v34 == 128)
                  {
                    goto LABEL_10;
                  }
                }

                else if (v32 == 160)
                {
LABEL_10:
                  if (v18 == v33)
                  {
                    goto LABEL_55;
                  }
                }
              }

              else if (v22)
              {
                if (v22 == 1)
                {
                  if (v34 == 32)
                  {
                    goto LABEL_10;
                  }
                }

                else if (v34 == 64)
                {
                  goto LABEL_10;
                }
              }

              else if (v32 <= 0x1F)
              {
                goto LABEL_10;
              }
            }
          }
        }

LABEL_11:
        a2 = (a2 + 1) & v39;
      }

      while (((*(v41 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
    }
  }

LABEL_51:
  v26 = *v35;
  *(*v35 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v27 = (*(v26 + 48) + 48 * a2);
  v28 = v36[1];
  *v27 = *v36;
  v27[1] = v28;
  *(v27 + 26) = *(v36 + 26);
  v29 = *(v26 + 16);
  v30 = __OFADD__(v29, 1);
  v31 = v29 + 1;
  if (v30)
  {
LABEL_54:
    __break(1u);
LABEL_55:
    result = sub_1DACBA1E4();
    __break(1u);
  }

  else
  {
    *(v26 + 16) = v31;
  }

  return result;
}

uint64_t sub_1DAB8A1D8(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1DAB89C18(v6 + 1);
    }

    else
    {
      if (v7 > v6)
      {
        result = sub_1DAB8AD9C();
        goto LABEL_99;
      }

      sub_1DAB8B62C(v6 + 1);
    }

    v8 = *v3;
    v9 = *(v5 + 112);
    v75 = *(v5 + 96);
    v76 = v9;
    v77 = *(v5 + 128);
    v10 = *(v5 + 48);
    v71 = *(v5 + 32);
    v72 = v10;
    v11 = *(v5 + 80);
    v73 = *(v5 + 64);
    v74 = v11;
    v12 = *(v5 + 16);
    v69 = *v5;
    v70 = v12;
    sub_1DACBA284();
    sub_1DAB08BD4(v68);
    result = sub_1DACBA2C4();
    v13 = v8 + 56;
    v14 = -1 << *(v8 + 32);
    a2 = result & ~v14;
    if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v15 = ~v14;
      v61 = *(v5 + 64);
      v16 = *v5;
      v17 = *(v5 + 8);
      v18 = *(v5 + 16);
      v66 = *(v5 + 32);
      v67 = *(v5 + 24);
      v64 = *(v5 + 48);
      v65 = *(v5 + 40);
      v62 = *(v5 + 72);
      v63 = *(v5 + 56);
      v57 = *(v5 + 88);
      v58 = *(v5 + 80);
      v54 = *(v5 + 112);
      v55 = *(v5 + 96);
      v51 = *(v5 + 120);
      v52 = *(v5 + 104);
      v53 = *(v5 + 128);
      v59 = ~v14;
      v60 = v8 + 56;
      while (1)
      {
        v19 = *(v8 + 48) + 136 * a2;
        v69 = *v19;
        v20 = *(v19 + 48);
        v21 = *(v19 + 64);
        v22 = *(v19 + 32);
        v70 = *(v19 + 16);
        v71 = v22;
        v72 = v20;
        v73 = v21;
        v23 = *(v19 + 80);
        v24 = *(v19 + 96);
        v25 = *(v19 + 112);
        v77 = *(v19 + 128);
        v75 = v24;
        v76 = v25;
        v74 = v23;
        if (v69 != v16 || *(&v69 + 1) != v17)
        {
          result = sub_1DACBA174();
          if ((result & 1) == 0)
          {
            goto LABEL_12;
          }
        }

        if (v70 != v18 || *(&v70 + 1) != v67)
        {
          result = sub_1DACBA174();
          if ((result & 1) == 0)
          {
            goto LABEL_12;
          }
        }

        if (v71 != v66 || *(&v71 + 1) != v65)
        {
          result = sub_1DACBA174();
          if ((result & 1) == 0)
          {
            goto LABEL_12;
          }
        }

        if (v72 != v64 || *(&v72 + 1) != v63)
        {
          result = sub_1DACBA174();
          if ((result & 1) == 0)
          {
            goto LABEL_12;
          }
        }

        if (v73 <= 3u)
        {
          break;
        }

        if (v73 <= 5u)
        {
          if (v73 == 4)
          {
            v30 = 6714469;
          }

          else
          {
            v30 = 0x73657275747566;
          }

          if (v73 == 4)
          {
            v31 = 0xE300000000000000;
          }

          else
          {
            v31 = 0xE700000000000000;
          }

          goto LABEL_47;
        }

        v32 = v61;
        if (v73 == 6)
        {
          v31 = 0xE500000000000000;
          v30 = 0x7865646E69;
          if (v61 <= 3)
          {
            goto LABEL_48;
          }
        }

        else
        {
          v30 = 0x75466C617574756DLL;
          v31 = 0xEA0000000000646ELL;
          if (v61 <= 3)
          {
LABEL_48:
            if (v32 > 1)
            {
              if (v32 == 2)
              {
                v34 = 0x75636F7470797263;
              }

              else
              {
                v34 = 0x797469757165;
              }

              if (v32 == 2)
              {
                v33 = 0xEE0079636E657272;
              }

              else
              {
                v33 = 0xE600000000000000;
              }
            }

            else if (v32)
            {
              v33 = 0xE800000000000000;
              v34 = 0x79636E6572727563;
            }

            else
            {
              v33 = 0xE700000000000000;
              v34 = 0x6E776F6E6B6E75;
            }

            goto LABEL_76;
          }
        }

LABEL_62:
        v35 = 0x75466C617574756DLL;
        if (v32 == 6)
        {
          v35 = 0x7865646E69;
        }

        v36 = 0xEA0000000000646ELL;
        if (v32 == 6)
        {
          v36 = 0xE500000000000000;
        }

        v37 = 0x73657275747566;
        if (v32 == 4)
        {
          v37 = 6714469;
        }

        v38 = 0xE700000000000000;
        if (v32 == 4)
        {
          v38 = 0xE300000000000000;
        }

        if (v32 <= 5)
        {
          v34 = v37;
        }

        else
        {
          v34 = v35;
        }

        if (v32 <= 5)
        {
          v33 = v38;
        }

        else
        {
          v33 = v36;
        }

LABEL_76:
        v39 = v8;
        if (v30 == v34 && v31 == v33)
        {
          sub_1DAA806E4(&v69, v68);

          v15 = v59;
        }

        else
        {
          v40 = sub_1DACBA174();
          sub_1DAA806E4(&v69, v68);

          v15 = v59;
          if ((v40 & 1) == 0)
          {
            goto LABEL_11;
          }
        }

        if ((*(&v73 + 1) != v62 || v74 != v58) && (sub_1DACBA174() & 1) == 0 || (*(&v74 + 1) != v57 || v75 != v55) && (sub_1DACBA174() & 1) == 0)
        {
LABEL_11:
          result = sub_1DAA9B1C8(&v69);
          v8 = v39;
          v13 = v60;
          goto LABEL_12;
        }

        if (v76)
        {
          if (!v54 || (*(&v75 + 1) != v52 || v76 != v54) && (sub_1DACBA174() & 1) == 0)
          {
            goto LABEL_11;
          }
        }

        else if (v54)
        {
          goto LABEL_11;
        }

        if (v77)
        {
          if (!v53)
          {
            goto LABEL_11;
          }

          if (*(&v76 + 1) == v51 && v77 == v53)
          {
            goto LABEL_102;
          }

          v41 = sub_1DACBA174();
          result = sub_1DAA9B1C8(&v69);
          v8 = v39;
          v13 = v60;
          if (v41)
          {
            goto LABEL_103;
          }
        }

        else
        {
          result = sub_1DAA9B1C8(&v69);
          v8 = v39;
          v13 = v60;
          if (!v53)
          {
            goto LABEL_103;
          }
        }

LABEL_12:
        a2 = (a2 + 1) & v15;
        if (((*(v13 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
        {
          goto LABEL_99;
        }
      }

      v26 = 0x75636F7470797263;
      if (v73 != 2)
      {
        v26 = 0x797469757165;
      }

      v27 = 0xEE0079636E657272;
      if (v73 != 2)
      {
        v27 = 0xE600000000000000;
      }

      v28 = 0x79636E6572727563;
      if (!v73)
      {
        v28 = 0x6E776F6E6B6E75;
      }

      v29 = 0xE700000000000000;
      if (v73)
      {
        v29 = 0xE800000000000000;
      }

      if (v73 <= 1u)
      {
        v30 = v28;
      }

      else
      {
        v30 = v26;
      }

      if (v73 <= 1u)
      {
        v31 = v29;
      }

      else
      {
        v31 = v27;
      }

LABEL_47:
      v32 = v61;
      if (v61 <= 3)
      {
        goto LABEL_48;
      }

      goto LABEL_62;
    }
  }

LABEL_99:
  v42 = *v56;
  *(*v56 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v43 = *(v42 + 48) + 136 * a2;
  v44 = *(v5 + 48);
  *(v43 + 32) = *(v5 + 32);
  *(v43 + 48) = v44;
  *(v43 + 128) = *(v5 + 128);
  v45 = *(v5 + 112);
  *(v43 + 96) = *(v5 + 96);
  *(v43 + 112) = v45;
  v46 = *(v5 + 80);
  *(v43 + 64) = *(v5 + 64);
  *(v43 + 80) = v46;
  v47 = *(v5 + 16);
  *v43 = *v5;
  *(v43 + 16) = v47;
  v48 = *(v42 + 16);
  v49 = __OFADD__(v48, 1);
  v50 = v48 + 1;
  if (v49)
  {
    __break(1u);
LABEL_102:
    sub_1DAA9B1C8(&v69);
LABEL_103:
    result = sub_1DACBA1E4();
    __break(1u);
  }

  else
  {
    *(v42 + 16) = v50;
  }

  return result;
}

void *sub_1DAB8A84C()
{
  v1 = v0;
  sub_1DAA83070(0, &qword_1ECBE6DE0, sub_1DAB073D0, &type metadata for Watchlist, MEMORY[0x1E69E6A10]);
  v2 = *v0;
  v3 = sub_1DACB9C24();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v17 = 48 * (v14 | (v8 << 6));
        v18 = *(v2 + 48) + v17;
        v20 = *v18;
        v19 = *(v18 + 8);
        v22 = *(v18 + 16);
        v21 = *(v18 + 24);
        v23 = *(v18 + 32);
        LOWORD(v18) = *(v18 + 40);
        v24 = *(v4 + 48) + v17;
        *v24 = v20;
        *(v24 + 8) = v19;
        *(v24 + 16) = v22;
        *(v24 + 24) = v21;
        *(v24 + 32) = v23;
        *(v24 + 40) = v18;
        sub_1DACB71E4();
        sub_1DACB71E4();
        result = sub_1DACB71E4();
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

      v16 = *(v2 + 56 + 8 * v8);
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

void *sub_1DAB8AA08()
{
  v1 = v0;
  sub_1DAA58DCC(0, &qword_1EE11F760, MEMORY[0x1E69E6A10]);
  v2 = *v0;
  v3 = sub_1DACB9C24();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
        result = sub_1DACB71E4();
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

      v16 = *(v2 + 56 + 8 * v8);
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

void *sub_1DAB8AB74()
{
  v1 = v0;
  v2 = sub_1DACB7DC4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAB8BC44(0);
  v6 = *v0;
  v7 = sub_1DACB9C24();
  v8 = v7;
  if (*(v6 + 16))
  {
    v22 = v1;
    result = (v7 + 56);
    v10 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v6 + 56 + 8 * v10)
    {
      result = memmove(result, (v6 + 56), 8 * v10);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v6 + 56);
    v16 = (v13 + 63) >> 6;
    v23 = v3 + 32;
    for (i = v3 + 16; v15; result = (*(v3 + 32))(*(v8 + 48) + v20, v5, v2))
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v20 = *(v3 + 72) * (v17 | (v12 << 6));
      (*(v3 + 16))(v5, *(v6 + 48) + v20, v2);
    }

    v18 = v12;
    while (1)
    {
      v12 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v12 >= v16)
      {

        v1 = v22;
        goto LABEL_21;
      }

      v19 = *(v6 + 56 + 8 * v12);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v8;
  }

  return result;
}

void *sub_1DAB8AD9C()
{
  v1 = v0;
  sub_1DAA83070(0, &qword_1ECBE6DD8, sub_1DAB07284, &type metadata for Stock, MEMORY[0x1E69E6A10]);
  v2 = *v0;
  v3 = sub_1DACB9C24();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; result = sub_1DAA806E4(v25, v24))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v16 = 136 * (v13 | (v8 << 6));
      v17 = (*(v2 + 48) + v16);
      v19 = v17[1];
      v18 = v17[2];
      v20 = v17[4];
      v25[3] = v17[3];
      v25[4] = v20;
      v21 = v17[5];
      v22 = v17[6];
      v23 = v17[7];
      v26 = *(v17 + 16);
      v25[6] = v22;
      v25[7] = v23;
      v25[5] = v21;
      v25[0] = *v17;
      v25[1] = v19;
      v25[2] = v18;
      memmove((*(v4 + 48) + v16), v17, 0x88uLL);
    }

    v14 = v8;
    while (1)
    {
      v8 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v15 = *(v2 + 56 + 8 * v8);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
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

uint64_t sub_1DAB8AF74(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1DAA83070(0, &qword_1ECBE6DE0, sub_1DAB073D0, &type metadata for Watchlist, MEMORY[0x1E69E6A10]);
  result = sub_1DACB9C34();
  v5 = result;
  if (!*(v3 + 16))
  {

LABEL_42:
    *v2 = v5;
    return result;
  }

  v39 = v1;
  v40 = v3;
  v6 = 0;
  v7 = v3 + 56;
  v8 = 1 << *(v3 + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(v3 + 56);
  v11 = (v8 + 63) >> 6;
  v12 = result + 56;
  v41 = result;
  while (v10)
  {
    v15 = __clz(__rbit64(v10));
    v42 = (v10 - 1) & v10;
LABEL_15:
    v18 = *(v3 + 48) + 48 * (v15 | (v6 << 6));
    v19 = *v18;
    v20 = *(v18 + 8);
    v22 = *(v18 + 16);
    v21 = *(v18 + 24);
    v23 = *(v18 + 32);
    v43 = *(v18 + 40);
    v44 = *(v18 + 41);
    sub_1DACBA284();
    sub_1DACB71E4();
    sub_1DACB71E4();
    v45 = v23;
    sub_1DACB71E4();
    sub_1DACB9404();
    MEMORY[0x1E1277D70](*(v22 + 16));
    v24 = *(v22 + 16);
    if (v24)
    {
      v25 = v22 + 40;
      do
      {
        sub_1DACB71E4();
        sub_1DACB9404();

        v25 += 16;
        --v24;
      }

      while (v24);
    }

    v26 = v21;
    sub_1DACB9404();
    v27 = v43 >> 5;
    if (v43 >> 5 <= 2)
    {
      v28 = 2;
      if (v27 != 1)
      {
        v28 = 3;
      }

      if (v27)
      {
        v29 = v28;
      }

      else
      {
        v29 = 1;
      }

      v5 = v41;
      v30 = v44;
      goto LABEL_29;
    }

    v30 = v44;
    if (v27 == 3)
    {
      v29 = 4;
      v5 = v41;
      goto LABEL_29;
    }

    v5 = v41;
    if (v27 == 4)
    {
      v29 = 5;
LABEL_29:
      MEMORY[0x1E1277D70](v29);
      v31 = v43 & 1;
      goto LABEL_30;
    }

    v31 = 0;
LABEL_30:
    MEMORY[0x1E1277D70](v31);
    MEMORY[0x1E1277D70](v30);
    result = sub_1DACBA2C4();
    v32 = -1 << *(v5 + 32);
    v33 = result & ~v32;
    v34 = v33 >> 6;
    if (((-1 << v33) & ~*(v12 + 8 * (v33 >> 6))) == 0)
    {
      v35 = 0;
      v36 = (63 - v32) >> 6;
      while (++v34 != v36 || (v35 & 1) == 0)
      {
        v37 = v34 == v36;
        if (v34 == v36)
        {
          v34 = 0;
        }

        v35 |= v37;
        v38 = *(v12 + 8 * v34);
        if (v38 != -1)
        {
          v13 = __clz(__rbit64(~v38)) + (v34 << 6);
          goto LABEL_7;
        }
      }

      goto LABEL_44;
    }

    v13 = __clz(__rbit64((-1 << v33) & ~*(v12 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
    *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
    v14 = *(v5 + 48) + 48 * v13;
    *v14 = v19;
    *(v14 + 8) = v20;
    *(v14 + 16) = v22;
    *(v14 + 24) = v26;
    *(v14 + 32) = v45;
    *(v14 + 40) = v43;
    *(v14 + 41) = v30;
    ++*(v5 + 16);
    v3 = v40;
    v10 = v42;
  }

  v16 = v6;
  while (1)
  {
    v6 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v6 >= v11)
    {

      v2 = v39;
      goto LABEL_42;
    }

    v17 = *(v7 + 8 * v6);
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v42 = (v17 - 1) & v17;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_44:
  __break(1u);
  return result;
}

uint64_t sub_1DAB8B31C(uint64_t a1)
{
  v2 = v1;
  v33 = sub_1DACB7DC4();
  v3 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_1DAB8BC44(0);
  v7 = sub_1DACB9C34();
  result = v6;
  if (*(v6 + 16))
  {
    v28 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v31 = v3 + 16;
    v32 = v3;
    v15 = v7 + 56;
    v29 = (v3 + 32);
    v30 = result;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v32 + 72);
      (*(v32 + 16))(v5, *(result + 48) + v20 * (v17 | (v9 << 6)), v33);
      sub_1DAA4CCDC(&qword_1EE125270, MEMORY[0x1E6969680], MEMORY[0x1E6969690]);
      result = sub_1DACB91E4();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v15 + 8 * v23);
          if (v27 != -1)
          {
            v16 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v29)(*(v7 + 48) + v16 * v20, v5, v33);
      ++*(v7 + 16);
      result = v30;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v2 = v28;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v7;
  }

  return result;
}

unint64_t sub_1DAB8B62C(uint64_t a1)
{
  v2 = *v1;
  sub_1DAA83070(0, &qword_1ECBE6DD8, sub_1DAB07284, &type metadata for Stock, MEMORY[0x1E69E6A10]);
  result = sub_1DACB9C34();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    for (i = (v6 + 63) >> 6; v8; ++*(v4 + 16))
    {
      v10 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_12:
      v13 = *(v2 + 48) + 136 * (v10 | (v5 << 6));
      v14 = *(v13 + 64);
      v15 = *(v13 + 16);
      v16 = *(v13 + 32);
      v45 = *(v13 + 48);
      v46 = v14;
      v44 = v16;
      v17 = *(v13 + 80);
      v18 = *(v13 + 96);
      v19 = *(v13 + 112);
      v50 = *(v13 + 128);
      v48 = v18;
      v49 = v19;
      v47 = v17;
      v42 = *v13;
      v43 = v15;
      v20 = *(v13 + 112);
      v39 = *(v13 + 96);
      v40 = v20;
      v41 = *(v13 + 128);
      v21 = *(v13 + 48);
      v35 = *(v13 + 32);
      v36 = v21;
      v22 = *(v13 + 80);
      v37 = *(v13 + 64);
      v38 = v22;
      v23 = *(v13 + 16);
      v33 = *v13;
      v34 = v23;
      sub_1DACBA284();
      sub_1DAA806E4(&v42, &v31);
      sub_1DAB08BD4(v32);
      sub_1DACBA2C4();
      result = sub_1DACB9BE4();
      *(v4 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      v24 = *(v4 + 48) + 136 * result;
      *v24 = v42;
      v25 = v46;
      v27 = v43;
      v26 = v44;
      *(v24 + 48) = v45;
      *(v24 + 64) = v25;
      *(v24 + 16) = v27;
      *(v24 + 32) = v26;
      v28 = v47;
      v29 = v48;
      v30 = v49;
      *(v24 + 128) = v50;
      *(v24 + 96) = v29;
      *(v24 + 112) = v30;
      *(v24 + 80) = v28;
    }

    v11 = v5;
    while (1)
    {
      v5 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v5 >= i)
      {
        goto LABEL_14;
      }

      v12 = *(v2 + 56 + 8 * v5);
      ++v11;
      if (v12)
      {
        v10 = __clz(__rbit64(v12));
        v8 = (v12 - 1) & v12;
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_14:

    *v1 = v4;
  }

  return result;
}

void sub_1DAB8B890()
{
  if (!qword_1ECBE7DF0)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1ECBE7DF0);
    }
  }
}

uint64_t sub_1DAB8B8F0(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  sub_1DACBA284();
  sub_1DACB9404();
  v6 = sub_1DACBA2C4();
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
    if (v11 || (sub_1DACBA174() & 1) != 0)
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
    sub_1DAB8AA08();
    v14 = v16;
  }

  v12 = *(*(v14 + 48) + 16 * v8);
  sub_1DAB8BA2C(v8);
  *v2 = v16;
  return v12;
}

unint64_t sub_1DAB8BA2C(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    sub_1DACB71F4();
    v8 = sub_1DACB9BD4();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        sub_1DACBA284();
        sub_1DACB71E4();
        sub_1DACB9404();
        v10 = sub_1DACBA2C4();

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
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
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

  return result;
}

unint64_t sub_1DAB8BBF0()
{
  result = qword_1EE1201B0;
  if (!qword_1EE1201B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1201B0);
  }

  return result;
}

void sub_1DAB8BC44(uint64_t a1)
{
  if (!qword_1ECBE80E0)
  {
    sub_1DACB7DC4();
    sub_1DAA4CCDC(&qword_1EE125270, MEMORY[0x1E6969680], MEMORY[0x1E6969690]);
    v1 = sub_1DACB9C54();
    if (!v2)
    {
      atomic_store(v1, &qword_1ECBE80E0);
    }
  }
}

unint64_t sub_1DAB8BCFC()
{
  result = qword_1ECBE80E8;
  if (!qword_1ECBE80E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE80E8);
  }

  return result;
}

void sub_1DAB8BD74(void *a1)
{
  v2 = v1;
  v4 = sub_1DACB92F4();
  v5 = sub_1DACB92F4();
  [a1 encodeObject:v4 forKey:v5];

  v6 = sub_1DACB7C04();
  v7 = sub_1DACB92F4();
  [a1 encodeObject:v6 forKey:v7];

  v8 = *(v2 + OBJC_IVAR___SCUpdateAdsUserIDCommand_overwrite);
  v9 = sub_1DACB92F4();
  [a1 encodeBool:v8 forKey:v9];
}

id sub_1DAB8BF10(void *a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  sub_1DAA492B4(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1DACB7CC4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1DACB92F4();
  v13 = [a1 decodeObjectForKey_];

  if (v13)
  {
    sub_1DACB9B74();
    swift_unknownObjectRelease();
  }

  else
  {
    v32 = 0u;
    v33 = 0u;
  }

  v34 = v32;
  v35 = v33;
  if (!*(&v33 + 1))
  {

    v17 = sub_1DAADFABC;
    v18 = &v34;
LABEL_16:
    sub_1DAB0826C(v18, v17);
    goto LABEL_17;
  }

  if (swift_dynamicCast())
  {
    v14 = ObjectType;
    v27 = v30;
    v28 = v31;
    v15 = sub_1DACB92F4();
    v16 = [a1 decodeObjectForKey_];

    if (v16)
    {
      sub_1DACB9B74();
      swift_unknownObjectRelease();
    }

    else
    {
      v32 = 0u;
      v33 = 0u;
    }

    v34 = v32;
    v35 = v33;
    v19 = v14;
    if (*(&v33 + 1))
    {
      v20 = swift_dynamicCast();
      (*(v9 + 56))(v7, v20 ^ 1u, 1, v8);
      if ((*(v9 + 48))(v7, 1, v8) != 1)
      {
        (*(v9 + 32))(v11, v7, v8);
        v22 = &v2[OBJC_IVAR___SCUpdateAdsUserIDCommand_userID];
        v23 = v28;
        *v22 = v27;
        v22[1] = v23;
        (*(v9 + 16))(&v2[OBJC_IVAR___SCUpdateAdsUserIDCommand_userIDCreatedDate], v11, v8);
        v24 = sub_1DACB92F4();
        v25 = [a1 decodeBoolForKey_];

        (*(v9 + 8))(v11, v8);
        v2[OBJC_IVAR___SCUpdateAdsUserIDCommand_overwrite] = v25;
        v29.receiver = v2;
        v29.super_class = v19;
        v26 = objc_msgSendSuper2(&v29, sel_init);

        return v26;
      }
    }

    else
    {

      sub_1DAB0826C(&v34, sub_1DAADFABC);
      (*(v9 + 56))(v7, 1, 1, v8);
    }

    v17 = sub_1DAA492B4;
    v18 = v7;
    goto LABEL_16;
  }

LABEL_17:
  swift_deallocPartialClassInstance();
  return 0;
}

uint64_t sub_1DAB8C458(void *a1, uint64_t a2)
{
  v4 = [a1 encryptedValues];
  v5 = sub_1DACB92F4();
  v6 = [v4 objectForKeyedSubscript_];

  swift_unknownObjectRelease();
  if ((*(a2 + OBJC_IVAR___SCUpdateAdsUserIDCommand_overwrite) & 1) != 0 || !v6)
  {
    v7 = [a1 encryptedValues];
    v8 = sub_1DACB92F4();
    v9 = sub_1DACB92F4();
    [v7 setObject:v8 forKeyedSubscript:v9];
    swift_unknownObjectRelease();

    v10 = [a1 encryptedValues];
    v11 = sub_1DACB7C04();
    v12 = sub_1DACB92F4();
    [v10 setObject:v11 forKeyedSubscript:v12];
    swift_unknownObjectRelease();
  }

  return swift_unknownObjectRelease();
}

uint64_t sub_1DAB8C7D4(void *a1, uint64_t a2)
{
  sub_1DAB8DAC8(0, &qword_1ECBE8128, sub_1DAB8DA74, &type metadata for TestWatchlistService.TestData.CodingKeys, MEMORY[0x1E69E6F58]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAB8DA74();
  sub_1DACBA304();
  v10[1] = a2;
  sub_1DAA61950(0, &qword_1EE11FAC0, &type metadata for Stock, MEMORY[0x1E69E62F8]);
  sub_1DAB8DB30(&qword_1ECBE8130, sub_1DAA8534C, MEMORY[0x1E69E6300]);
  sub_1DACBA0E4();
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1DAB8C9BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x736B636F7473 && a2 == 0xE600000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1DACBA174();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1DAB8CA40(uint64_t a1)
{
  v2 = sub_1DAB8DA74();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DAB8CA7C(uint64_t a1)
{
  v2 = sub_1DAB8DA74();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *sub_1DAB8CAB8@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1DAB8D6FC(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1DAB8CB00()
{
  sub_1DAB8D59C();
  sub_1DACB83F4();
  v0 = sub_1DACB89D4();
  sub_1DAA61950(0, &qword_1EE11FAC0, &type metadata for Stock, MEMORY[0x1E69E62F8]);
  v1 = sub_1DACB8A64();

  return v1;
}

uint64_t sub_1DAB8CBB8@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = a2[5];
  v7 = a2[6];
  v8 = *(*a1 + 16);
  if (v8)
  {
    v20 = MEMORY[0x1E69E7CC0];
    sub_1DACB71E4();
    sub_1DAA5859C(0, v8, 0);
    v9 = v20;
    v10 = (v5 + 56);
    do
    {
      v12 = *(v10 - 1);
      v11 = *v10;
      v14 = *(v20 + 16);
      v13 = *(v20 + 24);
      sub_1DACB71E4();
      if (v14 >= v13 >> 1)
      {
        sub_1DAA5859C((v13 > 1), v14 + 1, 1);
      }

      *(v20 + 16) = v14 + 1;
      v15 = v20 + 16 * v14;
      *(v15 + 32) = v12;
      *(v15 + 40) = v11;
      v10 += 17;
      --v8;
    }

    while (v8);
    v6 = v19;
  }

  else
  {
    sub_1DACB71E4();
    v9 = MEMORY[0x1E69E7CC0];
  }

  v17 = a2[3];
  v16 = a2[4];
  *a3 = v6;
  *(a3 + 8) = v7;
  *(a3 + 16) = v9;
  *(a3 + 24) = v17;
  *(a3 + 32) = v16;
  *(a3 + 40) = 160;
  return sub_1DACB71E4();
}

uint64_t sub_1DAB8CCE0()
{
  sub_1DAA61950(0, &qword_1EE11FE90, &type metadata for Watchlist, MEMORY[0x1E69D6B18]);
  sub_1DAA61950(0, &qword_1EE11F490, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1DACC4A10;
  sub_1DAA61950(0, &qword_1EE11FAC0, &type metadata for Stock, MEMORY[0x1E69E62F8]);
  sub_1DACB8BB4();
  sub_1DACB71F4();
  v1 = sub_1DACB89D4();
  v2 = sub_1DACB8A64();

  *(v0 + 32) = v2;
  v3 = sub_1DACB89D4();
  sub_1DAB8D628(0);
  sub_1DAB8D6A4();
  v4 = sub_1DACB8A34();

  return v4;
}

uint64_t sub_1DAB8CE80()
{

  return swift_deallocClassInstance();
}

void *sub_1DAB8CEEC()
{
  v1 = v0;
  v2 = sub_1DACB7E44();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = sub_1DACB92E4();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v16[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v16[-v8];
  v16[31] = 0;
  sub_1DAB8DAC8(0, &qword_1ECBE72D8, sub_1DAB32748, &type metadata for StockTestDataLocator, MEMORY[0x1E69D6548]);
  swift_allocObject();
  v0[2] = sub_1DACB8414();
  v0[3] = sub_1DACB9324();
  v0[4] = v10;
  sub_1DACB9284();
  (*(v4 + 16))(v7, v9, v3);
  if (qword_1EE123DD8 != -1)
  {
    swift_once();
  }

  v11 = qword_1EE13E470;
  sub_1DACB7DF4();
  v12 = sub_1DACB9384();
  v14 = v13;
  (*(v4 + 8))(v9, v3);
  v1[5] = v12;
  v1[6] = v14;
  return v1;
}

uint64_t sub_1DAB8D180(uint64_t a1)
{
  v1 = *(a1 + 80);
  v2 = *(a1 + 112);
  v18 = *(a1 + 96);
  v19 = v2;
  v3 = *(a1 + 16);
  v4 = *(a1 + 48);
  v14 = *(a1 + 32);
  v15 = v4;
  v5 = *(a1 + 48);
  v6 = *(a1 + 80);
  v16 = *(a1 + 64);
  v17 = v6;
  v7 = *(a1 + 16);
  v13[0] = *a1;
  v13[1] = v7;
  v8 = *(a1 + 112);
  v11[6] = v18;
  v11[7] = v8;
  v11[2] = v14;
  v11[3] = v5;
  v11[4] = v16;
  v11[5] = v1;
  v20 = *(a1 + 128);
  v12 = *(a1 + 128);
  v11[0] = v13[0];
  v11[1] = v3;
  sub_1DAA61950(0, &qword_1ECBE9AC0, &type metadata for Stock, MEMORY[0x1E69D6B18]);
  swift_allocObject();
  sub_1DAA806E4(v13, v10);
  return sub_1DACB8AE4();
}

uint64_t sub_1DAB8D24C(uint64_t a1, uint64_t a2)
{
  sub_1DAA61950(0, &qword_1EE11D3F0, MEMORY[0x1E69E6158], MEMORY[0x1E69D6B18]);
  swift_allocObject();
  sub_1DACB71E4();
  return sub_1DACB8AE4();
}

uint64_t sub_1DAB8D2C4(uint64_t a1)
{
  sub_1DAA61774(0);
  swift_allocObject();
  sub_1DACB71E4();
  return sub_1DACB8AE4();
}

uint64_t sub_1DAB8D318()
{
  sub_1DAB8D59C();
  sub_1DACB83F4();
  v0 = sub_1DACB89D4();
  sub_1DAA61950(0, &qword_1EE11FAC0, &type metadata for Stock, MEMORY[0x1E69E62F8]);
  v1 = sub_1DACB8A64();

  return v1;
}

uint64_t sub_1DAB8D3CC(uint64_t a1)
{
  sub_1DAA61950(0, &qword_1EE11FE90, &type metadata for Watchlist, MEMORY[0x1E69D6B18]);
  swift_allocObject();
  sub_1DACB71E4();
  sub_1DACB71E4();
  sub_1DACB71E4();
  return sub_1DACB8AE4();
}

uint64_t sub_1DAB8D49C()
{
  sub_1DAA61950(0, &qword_1EE11FDF0, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69D6B18]);
  swift_allocObject();
  return sub_1DACB8AE4();
}

uint64_t sub_1DAB8D4FC()
{
  v1 = *v0;
  sub_1DAA61950(0, &qword_1EE123B50, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1DACC1D20;
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  *(v2 + 32) = v3;
  *(v2 + 40) = v4;
  sub_1DAA61774(0);
  swift_allocObject();
  sub_1DACB71E4();
  return sub_1DACB8AE4();
}

unint64_t sub_1DAB8D59C()
{
  result = qword_1ECBE80F8;
  if (!qword_1ECBE80F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE80F8);
  }

  return result;
}

void sub_1DAB8D628(uint64_t a1)
{
  if (!qword_1ECBE8100)
  {
    sub_1DAA61950(255, &qword_1EE11FE90, &type metadata for Watchlist, MEMORY[0x1E69D6B18]);
    v1 = sub_1DACB9724();
    if (!v2)
    {
      atomic_store(v1, &qword_1ECBE8100);
    }
  }
}

unint64_t sub_1DAB8D6A4()
{
  result = qword_1ECBE8108;
  if (!qword_1ECBE8108)
  {
    sub_1DAB8D628(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8108);
  }

  return result;
}

void *sub_1DAB8D6FC(void *a1)
{
  sub_1DAB8DAC8(0, &qword_1ECBE8110, sub_1DAB8DA74, &type metadata for TestWatchlistService.TestData.CodingKeys, MEMORY[0x1E69E6F48]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v11 - v6;
  v8 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAB8DA74();
  v9 = v8;
  sub_1DACBA2F4();
  if (!v1)
  {
    sub_1DAA61950(0, &qword_1EE11FAC0, &type metadata for Stock, MEMORY[0x1E69E62F8]);
    sub_1DAB8DB30(&qword_1ECBE8120, sub_1DAB8BBF0, MEMORY[0x1E69E6330]);
    sub_1DACB9FE4();
    (*(v5 + 8))(v7, v4);
    v9 = v11[1];
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v9;
}

uint64_t sub_1DAB8D914(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DACB7D04();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DACB6D04();
  v8 = sub_1DACB7CE4();
  v10 = v9;
  (*(v5 + 8))(v7, v4);
  v12[0] = a1;
  v12[1] = a2;
  v12[2] = MEMORY[0x1E69E7CC0];
  v12[3] = v8;
  v12[4] = v10;
  v13 = 160;
  sub_1DAA61950(0, &qword_1EE11FE90, &type metadata for Watchlist, MEMORY[0x1E69D6B18]);
  swift_allocObject();
  sub_1DACB71E4();
  return sub_1DACB8AE4();
}

unint64_t sub_1DAB8DA74()
{
  result = qword_1ECBE8118;
  if (!qword_1ECBE8118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8118);
  }

  return result;
}

void sub_1DAB8DAC8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t sub_1DAB8DB30(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1DAA61950(255, &qword_1EE11FAC0, &type metadata for Stock, MEMORY[0x1E69E62F8]);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1DAB8DBD4()
{
  result = qword_1ECBE8138;
  if (!qword_1ECBE8138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8138);
  }

  return result;
}

unint64_t sub_1DAB8DC2C()
{
  result = qword_1ECBE8140;
  if (!qword_1ECBE8140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8140);
  }

  return result;
}

unint64_t sub_1DAB8DC84()
{
  result = qword_1ECBE8148;
  if (!qword_1ECBE8148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8148);
  }

  return result;
}

_OWORD *sub_1DAB8DCF8@<X0>(_OWORD *result@<X0>, __int128 *a2@<X1>, _OWORD *a3@<X2>, __int128 *a4@<X3>, _OWORD *a5@<X4>, uint64_t a6@<X5>, unint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char a10, double a11, char a12, uint64_t a13, char a14, uint64_t a15, char a16, uint64_t a17, unint64_t a18, uint64_t a19, unint64_t a20, uint64_t a21, unint64_t a22, uint64_t a23, unint64_t a24, uint64_t a25, unint64_t a26, uint64_t a27, unint64_t a28)
{
  v29 = a28;
  v31 = a24;
  v33 = a22;
  v35 = a20;
  v37 = a18;
  if (a7)
  {
    v38 = a6;
  }

  else
  {
    v38 = 0;
  }

  v39 = 0xE000000000000000;
  if (a7)
  {
    v39 = a7;
  }

  if (!a18)
  {
    a17 = 0x46464646464623;
  }

  v54 = a17;
  if (!a18)
  {
    v37 = 0xE700000000000000;
  }

  if (!a20)
  {
    a19 = 0x30303030303023;
    v35 = 0xE700000000000000;
  }

  if (!a22)
  {
    a21 = 0x46464646464623;
    v33 = 0xE700000000000000;
  }

  if (!a24)
  {
    a23 = 0x46464646464623;
    v31 = 0xE700000000000000;
  }

  if (a26)
  {
    v40 = a25;
  }

  else
  {
    v40 = 0x46464646464623;
  }

  if (a26)
  {
    v41 = a26;
  }

  else
  {
    v41 = 0xE700000000000000;
  }

  if (!a28)
  {
    a27 = 0x46464646464623;
    v29 = 0xE700000000000000;
  }

  if (a16)
  {
    v42 = 0;
  }

  else
  {
    v42 = a15;
  }

  if (a14)
  {
    v44 = 0;
  }

  else
  {
    v44 = a13;
  }

  if (a12)
  {
    a11 = 0.0;
  }

  v45 = result[1];
  if (a10)
  {
    a8 = 0;
  }

  *a9 = *result;
  *(a9 + 16) = v45;
  v46 = *a2;
  v47 = a2[1];
  *(a9 + 32) = result[2];
  *(a9 + 48) = v46;
  v48 = a2[2];
  *(a9 + 64) = v47;
  *(a9 + 80) = v48;
  v49 = a3[1];
  *(a9 + 96) = *a3;
  *(a9 + 112) = v49;
  v50 = *a4;
  v51 = a4[1];
  *(a9 + 128) = a3[2];
  *(a9 + 144) = v50;
  v52 = a4[2];
  *(a9 + 160) = v51;
  *(a9 + 176) = v52;
  v53 = a5[1];
  *(a9 + 192) = *a5;
  *(a9 + 208) = v53;
  *(a9 + 224) = v38;
  *(a9 + 232) = v39;
  *(a9 + 240) = a8;
  *(a9 + 248) = a11;
  *(a9 + 256) = v44;
  *(a9 + 264) = v42;
  *(a9 + 272) = v54;
  *(a9 + 280) = v37;
  *(a9 + 288) = a19;
  *(a9 + 296) = v35;
  *(a9 + 304) = a21;
  *(a9 + 312) = v33;
  *(a9 + 320) = a23;
  *(a9 + 328) = v31;
  *(a9 + 336) = v40;
  *(a9 + 344) = v41;
  *(a9 + 352) = a27;
  *(a9 + 360) = v29;
  return result;
}

uint64_t sub_1DAB8DE78(char a1)
{
  result = 0x616D496567646162;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000013;
      break;
    case 2:
      result = 0x6567616D69;
      break;
    case 3:
      result = 0x74616E7265746C61;
      break;
    case 4:
      result = 0x6F65646976;
      break;
    case 5:
      result = 0x4C52556F65646976;
      break;
    case 6:
      result = 0x6469576F65646976;
      break;
    case 7:
      result = 0xD000000000000015;
      break;
    case 8:
      result = 0x50706F5474786574;
      break;
    case 9:
      result = 0xD000000000000013;
      break;
    case 10:
      result = 0x756F72676B636162;
      break;
    case 11:
      result = 0xD000000000000018;
      break;
    case 12:
      result = 0x646165687473616DLL;
      break;
    case 13:
      v3 = 0x54656772616CLL;
      goto LABEL_15;
    case 14:
      v3 = 0x546C6C616D73;
LABEL_15:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x7865000000000000;
      break;
    case 15:
      result = 0x655473726566666FLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DAB8E068(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_1DAB8DE78(*a1);
  v5 = v4;
  if (v3 == sub_1DAB8DE78(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1DACBA174();
  }

  return v8 & 1;
}

uint64_t sub_1DAB8E0F0()
{
  v1 = *v0;
  sub_1DACBA284();
  sub_1DAB8DE78(v1);
  sub_1DACB9404();

  return sub_1DACBA2C4();
}

uint64_t sub_1DAB8E154(uint64_t a1)
{
  sub_1DAB8DE78(*v1);
  sub_1DACB9404();
}

uint64_t sub_1DAB8E1A8(uint64_t a1)
{
  v2 = *v1;
  sub_1DACBA284();
  sub_1DAB8DE78(v2);
  sub_1DACB9404();

  return sub_1DACBA2C4();
}

unint64_t sub_1DAB8E208@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1DAB92508(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_1DAB8E238@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1DAB8DE78(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1DAB8E280@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DAB92508(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DAB8E2A8(uint64_t a1)
{
  v2 = sub_1DAB8FF40();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DAB8E2E4(uint64_t a1)
{
  v2 = sub_1DAB8FF40();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DAB8E320@<X0>(void *a1@<X0>, int64_t *a2@<X8>)
{
  sub_1DAB92150(0, &qword_1EE123CC0, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v161 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAB8FF40();
  sub_1DACBA2F4();
  if (v2)
  {
    v11 = a1;
  }

  else
  {
    v218 = MEMORY[0x1E69E7CC0];
    v217 = 0;
    v10 = sub_1DAB8FF94();
    sub_1DACB9F84();
    v207 = v9;
    v208 = v6;
    v206 = v10;
    v203 = v7;
    v204 = a1;
    v202 = a2;
    if (v212)
    {
      v205 = v212;
      v13 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      swift_beginAccess();
      v14 = sub_1DAA9A3B0(0, 1, 1, MEMORY[0x1E69E7CC0]);
      v16 = *(v14 + 2);
      v15 = *(v14 + 3);
      v17 = v14;
      if (v16 >= v15 >> 1)
      {
        v17 = sub_1DAA9A3B0((v15 > 1), v16 + 1, 1, v14);
      }

      *(v17 + 2) = v16 + 1;
      v18 = &v17[16 * v16];
      *(v18 + 4) = 0x616D496567646162;
      *(v18 + 5) = 0xEA00000000006567;
      v13 = v17;
      v218 = v17;
      swift_endAccess();
      v205 = v212;
    }

    v19 = v211;
    v20 = v213;
    v21 = v214;
    v23 = v215;
    v22 = v216;
    v217 = 1;
    sub_1DACB9F84();
    v197 = v19;
    v198 = v20;
    v199 = v21;
    v200 = v23;
    v201 = v22;
    if (v212)
    {
      v195 = v212;
      v24 = v13;
    }

    else
    {
      swift_beginAccess();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v13 = sub_1DAA9A3B0(0, *(v13 + 2) + 1, 1, v13);
      }

      v26 = *(v13 + 2);
      v25 = *(v13 + 3);
      v24 = v13;
      if (v26 >= v25 >> 1)
      {
        v24 = sub_1DAA9A3B0((v25 > 1), v26 + 1, 1, v13);
      }

      *(v24 + 2) = v26 + 1;
      v27 = &v24[16 * v26];
      *(v27 + 4) = 0xD000000000000013;
      *(v27 + 5) = 0x80000001DACE17A0;
      v218 = v24;
      swift_endAccess();
      v195 = v212;
    }

    v28 = v211;
    v29 = v213;
    v30 = v214;
    v31 = v216;
    v196 = v215;
    v217 = 2;
    sub_1DACB9F84();
    v190 = v28;
    v191 = v29;
    v192 = v30;
    v193 = v31;
    if (v212)
    {
      v194 = v24;
      v189 = v212;
    }

    else
    {
      swift_beginAccess();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v24 = sub_1DAA9A3B0(0, *(v24 + 2) + 1, 1, v24);
      }

      v33 = *(v24 + 2);
      v32 = *(v24 + 3);
      v34 = v24;
      if (v33 >= v32 >> 1)
      {
        v34 = sub_1DAA9A3B0((v32 > 1), v33 + 1, 1, v24);
      }

      *(v34 + 2) = v33 + 1;
      v35 = &v34[16 * v33];
      *(v35 + 4) = 0x6567616D69;
      *(v35 + 5) = 0xE500000000000000;
      v194 = v34;
      v218 = v34;
      swift_endAccess();
      v189 = v212;
    }

    v36 = v211;
    v38 = v213;
    v37 = v214;
    v40 = v215;
    v39 = v216;
    v217 = 3;
    sub_1DACB9F84();
    v186 = v36;
    v187 = v38;
    v188 = v40;
    v206 = v37;
    if (v212)
    {
      v185 = v212;
    }

    else
    {
      swift_beginAccess();
      v41 = v194;
      v42 = v39;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v41 = sub_1DAA9A3B0(0, *(v41 + 2) + 1, 1, v41);
      }

      v44 = *(v41 + 2);
      v43 = *(v41 + 3);
      v45 = v41;
      if (v44 >= v43 >> 1)
      {
        v45 = sub_1DAA9A3B0((v43 > 1), v44 + 1, 1, v41);
      }

      *(v45 + 2) = v44 + 1;
      v46 = &v45[16 * v44];
      strcpy(v46 + 32, "alternateImage");
      v46[47] = -18;
      v194 = v45;
      v218 = v45;
      swift_endAccess();
      v185 = v212;
      v39 = v42;
    }

    v47 = v211;
    v48 = v213;
    v49 = v214;
    v50 = v215;
    v51 = v216;
    v217 = 4;
    sub_1DAB90794();
    sub_1DACB9F84();
    v183 = v47;
    v184 = v48;
    v180 = v49;
    v181 = v51;
    v182 = v50;
    if (v212)
    {
      v179 = v212;
    }

    else
    {
      swift_beginAccess();
      v52 = v194;
      v53 = v39;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v52 = sub_1DAA9A3B0(0, *(v52 + 2) + 1, 1, v52);
      }

      v55 = *(v52 + 2);
      v54 = *(v52 + 3);
      v56 = v52;
      if (v55 >= v54 >> 1)
      {
        v56 = sub_1DAA9A3B0((v54 > 1), v55 + 1, 1, v52);
      }

      *(v56 + 2) = v55 + 1;
      v57 = &v56[16 * v55];
      *(v57 + 4) = 0x6F65646976;
      *(v57 + 5) = 0xE500000000000000;
      v194 = v56;
      v218 = v56;
      swift_endAccess();
      v179 = v212;
      v39 = v53;
    }

    v58 = v211;
    v60 = v213;
    v59 = v214;
    v217 = 5;
    sub_1DACB9F84();
    v178 = v58;
    v177 = v60;
    v61 = v210;
    v176 = v209;
    if (!v210)
    {
      v62 = v59;
      swift_beginAccess();
      v63 = v39;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v194 = sub_1DAA9A3B0(0, *(v194 + 2) + 1, 1, v194);
      }

      v64 = v194;
      v66 = *(v194 + 2);
      v65 = *(v194 + 3);
      if (v66 >= v65 >> 1)
      {
        v64 = sub_1DAA9A3B0((v65 > 1), v66 + 1, 1, v194);
      }

      *(v64 + 2) = v66 + 1;
      v67 = &v64[16 * v66];
      *(v67 + 4) = 0x4C52556F65646976;
      *(v67 + 5) = 0xE800000000000000;
      v194 = v64;
      v218 = v64;
      swift_endAccess();
      v39 = v63;
      v59 = v62;
    }

    v217 = 6;
    sub_1DACB9F84();
    LODWORD(v174) = v210;
    v175 = v209;
    if (v210)
    {
      v68 = v59;
      swift_beginAccess();
      v69 = v39;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v194 = sub_1DAA9A3B0(0, *(v194 + 2) + 1, 1, v194);
      }

      v70 = v194;
      v72 = *(v194 + 2);
      v71 = *(v194 + 3);
      if (v72 >= v71 >> 1)
      {
        v70 = sub_1DAA9A3B0((v71 > 1), v72 + 1, 1, v194);
      }

      *(v70 + 2) = v72 + 1;
      v73 = &v70[16 * v72];
      *(v73 + 4) = 0x6469576F65646976;
      *(v73 + 5) = 0xEA00000000006874;
      v194 = v70;
      v218 = v70;
      swift_endAccess();
      v39 = v69;
      v59 = v68;
    }

    v217 = 7;
    sub_1DACB9F84();
    v74 = v59;
    v75 = v209;
    v76 = v210;
    if (v210)
    {
      v77 = v39;
      swift_beginAccess();
      v78 = v194;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v78 = sub_1DAA9A3B0(0, *(v78 + 2) + 1, 1, v78);
      }

      v80 = *(v78 + 2);
      v79 = *(v78 + 3);
      if (v80 >= v79 >> 1)
      {
        v78 = sub_1DAA9A3B0((v79 > 1), v80 + 1, 1, v78);
      }

      *(v78 + 2) = v80 + 1;
      v81 = &v78[16 * v80];
      *(v81 + 4) = 0xD000000000000015;
      *(v81 + 5) = 0x80000001DACE17F0;
      v194 = v78;
      v218 = v78;
      swift_endAccess();
    }

    else
    {
      v77 = v39;
    }

    v217 = 8;
    sub_1DACB9F84();
    v82 = v209;
    v83 = v210;
    if (v210)
    {
      swift_beginAccess();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v194 = sub_1DAA9A3B0(0, *(v194 + 2) + 1, 1, v194);
      }

      v85 = *(v194 + 2);
      v84 = *(v194 + 3);
      if (v85 >= v84 >> 1)
      {
        v194 = sub_1DAA9A3B0((v84 > 1), v85 + 1, 1, v194);
      }

      v86 = v194;
      *(v194 + 2) = v85 + 1;
      v87 = &v86[16 * v85];
      strcpy(v87 + 32, "textTopPadding");
      v87[47] = -18;
      v218 = v86;
      swift_endAccess();
    }

    v217 = 9;
    sub_1DACB9F84();
    v173 = *&v209;
    LODWORD(v172) = v210;
    if (v210)
    {
      swift_beginAccess();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v194 = sub_1DAA9A3B0(0, *(v194 + 2) + 1, 1, v194);
      }

      v89 = *(v194 + 2);
      v88 = *(v194 + 3);
      if (v89 >= v88 >> 1)
      {
        v194 = sub_1DAA9A3B0((v88 > 1), v89 + 1, 1, v194);
      }

      v90 = v194;
      *(v194 + 2) = v89 + 1;
      v91 = &v90[16 * v89];
      *(v91 + 4) = 0xD000000000000013;
      *(v91 + 5) = 0x80000001DACE1820;
      v218 = v90;
      swift_endAccess();
    }

    v217 = 10;
    sub_1DACB9F84();
    v170 = *&v209;
    v171 = v210;
    if (!v210)
    {
      swift_beginAccess();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v194 = sub_1DAA9A3B0(0, *(v194 + 2) + 1, 1, v194);
      }

      v93 = *(v194 + 2);
      v92 = *(v194 + 3);
      if (v93 >= v92 >> 1)
      {
        v194 = sub_1DAA9A3B0((v92 > 1), v93 + 1, 1, v194);
      }

      v94 = v194;
      *(v194 + 2) = v93 + 1;
      v95 = &v94[16 * v93];
      *(v95 + 4) = 0x756F72676B636162;
      *(v95 + 5) = 0xEF726F6C6F43646ELL;
      v218 = v94;
      swift_endAccess();
    }

    v217 = 11;
    sub_1DACB9F84();
    v168 = *&v209;
    v169 = v210;
    if (!v210)
    {
      swift_beginAccess();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v194 = sub_1DAA9A3B0(0, *(v194 + 2) + 1, 1, v194);
      }

      v97 = *(v194 + 2);
      v96 = *(v194 + 3);
      if (v97 >= v96 >> 1)
      {
        v194 = sub_1DAA9A3B0((v96 > 1), v97 + 1, 1, v194);
      }

      v98 = v194;
      *(v194 + 2) = v97 + 1;
      v99 = &v98[16 * v97];
      *(v99 + 4) = 0xD000000000000018;
      *(v99 + 5) = 0x80000001DACE1850;
      v218 = v98;
      swift_endAccess();
    }

    v217 = 12;
    sub_1DACB9F84();
    v166 = *&v209;
    v167 = v210;
    if (!v210)
    {
      swift_beginAccess();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v194 = sub_1DAA9A3B0(0, *(v194 + 2) + 1, 1, v194);
      }

      v101 = *(v194 + 2);
      v100 = *(v194 + 3);
      if (v101 >= v100 >> 1)
      {
        v194 = sub_1DAA9A3B0((v100 > 1), v101 + 1, 1, v194);
      }

      v102 = v194;
      *(v194 + 2) = v101 + 1;
      v103 = &v102[16 * v101];
      strcpy(v103 + 32, "mastheadColor");
      *(v103 + 23) = -4864;
      v218 = v102;
      swift_endAccess();
    }

    v217 = 13;
    sub_1DACB9F84();
    v164 = *&v209;
    v165 = v210;
    if (!v210)
    {
      swift_beginAccess();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v194 = sub_1DAA9A3B0(0, *(v194 + 2) + 1, 1, v194);
      }

      v105 = *(v194 + 2);
      v104 = *(v194 + 3);
      if (v105 >= v104 >> 1)
      {
        v194 = sub_1DAA9A3B0((v104 > 1), v105 + 1, 1, v194);
      }

      v106 = v194;
      *(v194 + 2) = v105 + 1;
      v107 = &v106[16 * v105];
      strcpy(v107 + 32, "largeTextColor");
      v107[47] = -18;
      v218 = v106;
      swift_endAccess();
    }

    v217 = 14;
    sub_1DACB9F84();
    v162 = *&v209;
    v163 = v210;
    if (!v210)
    {
      swift_beginAccess();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v194 = sub_1DAA9A3B0(0, *(v194 + 2) + 1, 1, v194);
      }

      v109 = *(v194 + 2);
      v108 = *(v194 + 3);
      if (v109 >= v108 >> 1)
      {
        v194 = sub_1DAA9A3B0((v108 > 1), v109 + 1, 1, v194);
      }

      v110 = v194;
      *(v194 + 2) = v109 + 1;
      v111 = &v110[16 * v109];
      strcpy(v111 + 32, "smallTextColor");
      v111[47] = -18;
      v218 = v110;
      swift_endAccess();
    }

    LOBYTE(v209) = 15;
    sub_1DACB9F84();
    v112 = v212;
    if (v212)
    {
      v161 = v211;
      v113 = *(v194 + 2) == 0;
    }

    else
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v194 = sub_1DAA9A3B0(0, *(v194 + 2) + 1, 1, v194);
      }

      v115 = *(v194 + 2);
      v114 = *(v194 + 3);
      v161 = v115 + 1;
      if (v115 >= v114 >> 1)
      {
        v194 = sub_1DAA9A3B0((v114 > 1), v161, 1, v194);
      }

      v113 = 0;
      v116 = v194;
      *(v194 + 2) = v161;
      v117 = &v116[16 * v115];
      *(v117 + 4) = 0x655473726566666FLL;
      *(v117 + 5) = 0xEF726F6C6F437478;
      v161 = 0x46464646464623;
    }

    v118 = v176;
    if (!v61)
    {
      v118 = 0.0;
    }

    v176 = v118;
    if (!v61)
    {
      v61 = 0xE000000000000000;
    }

    v119 = v175;
    if (v174)
    {
      v119 = 0.0;
    }

    v175 = v119;
    if (v76)
    {
      v75 = 0.0;
    }

    if (v83)
    {
      v120 = 0;
    }

    else
    {
      v120 = *&v82;
    }

    if (v172)
    {
      v121 = 0;
    }

    else
    {
      v121 = v173;
    }

    v122 = v171;
    v123 = v170;
    if (!v171)
    {
      v123 = 0x46464646464623;
    }

    v174 = v123;
    v124 = 0xE700000000000000;
    if (!v171)
    {
      v122 = 0xE700000000000000;
    }

    v173 = v122;
    v125 = 0x30303030303023;
    if (v169)
    {
      v125 = v168;
    }

    v172 = v125;
    if (v169)
    {
      v126 = v169;
    }

    else
    {
      v126 = 0xE700000000000000;
    }

    v171 = v126;
    v127 = v167;
    v128 = v166;
    if (!v167)
    {
      v128 = 0x46464646464623;
    }

    v170 = v128;
    if (!v167)
    {
      v127 = 0xE700000000000000;
    }

    v169 = v127;
    v129 = v165;
    v130 = v164;
    if (!v165)
    {
      v130 = 0x46464646464623;
    }

    v168 = v130;
    if (!v165)
    {
      v129 = 0xE700000000000000;
    }

    v167 = v129;
    v131 = v163;
    v132 = v162;
    if (!v163)
    {
      v132 = 0x46464646464623;
    }

    v166 = v132;
    if (!v163)
    {
      v131 = 0xE700000000000000;
    }

    v165 = v131;
    if (v112)
    {
      v124 = v112;
    }

    v164 = v124;
    if (v113)
    {
      sub_1DAA41DCC();
      v133 = sub_1DACB9AD4();
      v134 = sub_1DACB9914();
      sub_1DACB8C64("loaded PaywallVisualSpec configuration with no need for fallback values", 71, 2, &dword_1DAA3F000, v133, v134, MEMORY[0x1E69E7CC0]);
    }

    else
    {
      sub_1DAA41D64(0);
      v135 = swift_allocObject();
      *(v135 + 16) = xmmword_1DACC1D20;
      sub_1DAA61590(0, &qword_1EE123EA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
      *(v135 + 56) = v136;
      *(v135 + 64) = sub_1DAAF691C();
      *(v135 + 32) = v194;
      sub_1DAA41DCC();
      sub_1DACB71E4();
      v133 = sub_1DACB9AD4();
      v137 = sub_1DACB9914();
      sub_1DACB8C64("loaded PaywallVisualSpec configuration with fallback values for keys: %@", 72, 2, &dword_1DAA3F000, v133, v137, v135);
    }

    (*(v203 + 8))(v207, v208);

    v138 = v202;
    v139 = v205;
    *v202 = v197;
    v138[1] = v139;
    v141 = v199;
    v140 = v200;
    v138[2] = v198;
    v138[3] = v141;
    v138[4] = v140;
    v142 = v190;
    v138[5] = v201;
    v138[6] = v142;
    v143 = v191;
    v138[7] = v195;
    v138[8] = v143;
    v144 = v196;
    v138[9] = v192;
    v138[10] = v144;
    v145 = v186;
    v138[11] = v193;
    v138[12] = v145;
    v146 = v187;
    v138[13] = v189;
    v138[14] = v146;
    v147 = v188;
    v138[15] = v206;
    v138[16] = v147;
    v148 = v183;
    v138[17] = v77;
    v138[18] = v148;
    v149 = v184;
    v138[19] = v185;
    v138[20] = v149;
    v150 = v182;
    v138[21] = v180;
    v138[22] = v150;
    v151 = v178;
    v138[23] = v181;
    v138[24] = v151;
    v152 = v177;
    v138[25] = v179;
    v138[26] = v152;
    v153 = *&v176;
    v138[27] = v74;
    v138[28] = v153;
    v154 = *&v175;
    v138[29] = v61;
    v138[30] = v154;
    *(v138 + 31) = v75;
    v138[32] = v120;
    v138[33] = v121;
    v155 = v173;
    v138[34] = v174;
    v138[35] = v155;
    v156 = v171;
    v138[36] = v172;
    v138[37] = v156;
    v157 = v169;
    v138[38] = v170;
    v138[39] = v157;
    v158 = v167;
    v138[40] = v168;
    v138[41] = v158;
    v159 = v165;
    v138[42] = v166;
    v138[43] = v159;
    v160 = v164;
    v138[44] = v161;
    v138[45] = v160;
    v11 = v204;
  }

  return __swift_destroy_boxed_opaque_existential_1(v11);
}

unint64_t sub_1DAB8FF40()
{
  result = qword_1EE124CF0[0];
  if (!qword_1EE124CF0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE124CF0);
  }

  return result;
}

unint64_t sub_1DAB8FF94()
{
  result = qword_1EE124AE0;
  if (!qword_1EE124AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE124AE0);
  }

  return result;
}

uint64_t sub_1DAB8FFEC(void *a1)
{
  sub_1DAB92150(0, &qword_1EE123C08, MEMORY[0x1E69E6F58]);
  v66 = v3;
  v68 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = v41 - v4;
  v6 = v1[1];
  v65 = *v1;
  v7 = v1[2];
  v8 = v1[3];
  v10 = v1[4];
  v9 = v1[5];
  v11 = v1[6];
  v62 = v1[7];
  v63 = v11;
  v12 = v1[8];
  v60 = v1[9];
  v61 = v12;
  v13 = v1[10];
  v58 = v1[11];
  v59 = v13;
  v14 = v1[12];
  v56 = v1[13];
  v57 = v14;
  v15 = v1[15];
  v55 = v1[14];
  v54 = v15;
  v16 = v1[17];
  v53 = v1[16];
  v52 = v16;
  v17 = v1[19];
  v46 = v1[18];
  v47 = v17;
  v18 = v1[21];
  v48 = v1[20];
  v49 = v18;
  v19 = v1[23];
  v50 = v1[22];
  v51 = v19;
  v20 = v1[25];
  v42 = v1[24];
  v43 = v20;
  v21 = v1[27];
  v44 = v1[26];
  v45 = v21;
  v22 = v1[29];
  v41[15] = v1[28];
  v41[16] = v22;
  v41[14] = v1[30];
  v23 = v1[33];
  v41[13] = v1[32];
  v41[12] = v23;
  v24 = v1[35];
  v41[10] = v1[34];
  v41[11] = v24;
  v25 = v1[37];
  v41[8] = v1[36];
  v41[9] = v25;
  v26 = v1[39];
  v41[6] = v1[38];
  v41[7] = v26;
  v27 = v1[41];
  v41[4] = v1[40];
  v41[5] = v27;
  v28 = v1[43];
  v41[2] = v1[42];
  v41[3] = v28;
  v29 = v1[45];
  v41[0] = v1[44];
  v41[1] = v29;
  v30 = a1[3];
  v64 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v30);
  v31 = v65;
  sub_1DAB921B4(v65, v6, v7, v8, v10, v9);
  sub_1DAB8FF40();
  sub_1DACBA304();
  v70 = v31;
  v71 = v6;
  v32 = v66;
  v72 = v7;
  v73 = v8;
  v33 = v5;
  v74 = v10;
  v75 = v9;
  v69 = 0;
  sub_1DAB92204();
  v34 = v67;
  sub_1DACBA074();
  if (v34)
  {
    sub_1DAA88788(v70, v71, v72, v73, v74, v75);
    return (*(v68 + 8))(v5, v32);
  }

  else
  {
    v36 = v53;
    v37 = v54;
    v39 = v55;
    v38 = v56;
    v40 = v57;
    sub_1DAA88788(v70, v71, v72, v73, v74, v75);
    v70 = v63;
    v71 = v62;
    v72 = v61;
    v73 = v60;
    v74 = v59;
    v75 = v58;
    v69 = 1;
    sub_1DAB921B4(v63, v62, v61, v60, v59, v58);
    sub_1DACBA074();
    sub_1DAA88788(v70, v71, v72, v73, v74, v75);
    v70 = v40;
    v71 = v38;
    v72 = v39;
    v73 = v37;
    v74 = v36;
    v75 = v52;
    v69 = 2;
    sub_1DAB921B4(v40, v38, v39, v37, v36, v52);
    sub_1DACBA074();
    sub_1DAA88788(v70, v71, v72, v73, v74, v75);
    v70 = v46;
    v71 = v47;
    v72 = v48;
    v73 = v49;
    v74 = v50;
    v75 = v51;
    v69 = 3;
    sub_1DAB921B4(v46, v47, v48, v49, v50, v51);
    sub_1DACBA074();
    sub_1DAA88788(v70, v71, v72, v73, v74, v75);
    v70 = v42;
    v71 = v43;
    v72 = v44;
    v73 = v45;
    v69 = 4;
    sub_1DAB92258(v42, v43, v44, v45);
    sub_1DAB9229C();
    sub_1DACBA074();
    sub_1DAB907E8(v70, v71, v72, v73);
    LOBYTE(v70) = 5;
    sub_1DACBA094();
    LOBYTE(v70) = 6;
    sub_1DACBA0C4();
    LOBYTE(v70) = 7;
    sub_1DACBA0B4();
    LOBYTE(v70) = 8;
    sub_1DACBA0C4();
    LOBYTE(v70) = 9;
    sub_1DACBA0C4();
    LOBYTE(v70) = 10;
    sub_1DACBA094();
    LOBYTE(v70) = 11;
    sub_1DACBA094();
    LOBYTE(v70) = 12;
    sub_1DACBA094();
    LOBYTE(v70) = 13;
    sub_1DACBA094();
    LOBYTE(v70) = 14;
    sub_1DACBA094();
    LOBYTE(v70) = 15;
    sub_1DACBA094();
    return (*(v68 + 8))(v33, v32);
  }
}

unint64_t sub_1DAB90794()
{
  result = qword_1EE124F78;
  if (!qword_1EE124F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE124F78);
  }

  return result;
}

void sub_1DAB907E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }
}

uint64_t sub_1DAB9082C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v268 = *a1;
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v258 = *(a1 + 48);
  v257 = *(a1 + 56);
  v259 = *(a1 + 64);
  v260 = *(a1 + 72);
  v262 = *(a1 + 80);
  v256 = *(a1 + 88);
  v252 = *(a1 + 96);
  v251 = *(a1 + 104);
  v247 = *(a1 + 120);
  v248 = *(a1 + 112);
  v249 = *(a1 + 128);
  v240 = *(a1 + 136);
  v237 = *(a1 + 144);
  v238 = *(a1 + 152);
  v235 = *(a1 + 168);
  v236 = *(a1 + 160);
  v234 = *(a1 + 176);
  v231 = *(a1 + 184);
  v8 = *(a1 + 192);
  v7 = *(a1 + 200);
  v10 = *(a1 + 208);
  v9 = *(a1 + 216);
  v11 = *(a1 + 248);
  v224 = *(a1 + 232);
  v225 = *(a1 + 224);
  v221 = *(a1 + 240);
  v219 = *(a1 + 256);
  v217 = *(a1 + 264);
  v211 = *(a1 + 272);
  v214 = *(a1 + 280);
  v12 = *(a1 + 288);
  v13 = *(a1 + 296);
  v14 = *(a1 + 304);
  v15 = *(a1 + 312);
  v16 = *(a1 + 320);
  v17 = *(a1 + 328);
  v18 = *(a1 + 336);
  v19 = *(a1 + 344);
  v20 = *(a1 + 352);
  v21 = *(a1 + 360);
  v22 = *(a2 + 248);
  v23 = *a2;
  v24 = *(a2 + 8);
  v25 = *(a2 + 16);
  v271 = *(a2 + 32);
  v269 = *(a2 + 24);
  v270 = *(a2 + 40);
  v264 = *(a2 + 48);
  v265 = *(a2 + 56);
  v261 = *(a2 + 64);
  v266 = *(a2 + 72);
  v255 = *(a2 + 80);
  v254 = *(a2 + 88);
  v250 = *(a2 + 96);
  v253 = *(a2 + 104);
  v244 = *(a2 + 120);
  v245 = *(a2 + 112);
  v241 = *(a2 + 128);
  v242 = *(a2 + 136);
  v263 = *(a2 + 144);
  v239 = *(a2 + 152);
  v243 = *(a2 + 168);
  v230 = *(a2 + 176);
  v232 = *(a2 + 184);
  v233 = *(a2 + 160);
  v228 = *(a2 + 200);
  v229 = *(a2 + 192);
  v226 = *(a2 + 208);
  v227 = *(a2 + 216);
  v222 = *(a2 + 232);
  v223 = *(a2 + 224);
  v220 = *(a2 + 240);
  v218 = *(a2 + 256);
  v215 = *(a2 + 264);
  v216 = *(a2 + 272);
  v213 = *(a2 + 280);
  v212 = *(a2 + 288);
  v210 = *(a2 + 296);
  v208 = *(a2 + 312);
  v209 = *(a2 + 304);
  v206 = *(a2 + 328);
  v207 = *(a2 + 320);
  v26 = *(a2 + 336);
  v27 = *(a2 + 344);
  v28 = *(a2 + 352);
  v29 = *(a2 + 360);
  v30 = v2;
  if (!v2)
  {
    v202 = v7;
    v203 = v8;
    v193 = *(a2 + 344);
    v194 = v13;
    v190 = v21;
    v191 = *(a2 + 336);
    v204 = v10;
    v205 = v9;
    v195 = v12;
    v196 = v15;
    v188 = *(a2 + 352);
    v189 = *(a2 + 360);
    v197 = v14;
    v198 = v17;
    v199 = v16;
    v200 = v19;
    v201 = v18;
    v192 = v20;
    v33 = v268;
    v34 = v5;
    sub_1DAB921B4(v268, 0, v4, v3, v5, v6);
    v46 = v24;
    if (!v24)
    {
      v45 = v4;
      sub_1DAB921B4(v23, 0, v25, v269, v271, v270);
      v37 = 0;
      v44 = v34;
      goto LABEL_18;
    }

    v47 = v23;
    v48 = v23;
    v49 = v269;
    v246 = v4;
    v267 = v46;
    v50 = v6;
    v51 = v271;
    sub_1DAB921B4(v48, v46, v25, v269, v271, v270);
    v52 = v270;
LABEL_15:
    v275 = v33;
    v276 = v30;
    v277 = v246;
    v278 = v3;
    v279 = v34;
    v280 = v50;
    v281 = v47;
    v282 = v267;
    v283 = v25;
    v284 = v49;
    v285 = v51;
    v286 = v52;
LABEL_76:
    sub_1DAB92554(&v275);
    return 0;
  }

  v31 = v9;
  v32 = v8;
  v33 = v268;
  v34 = v5;
  v267 = v24;
  if (!v24)
  {
    v53 = v4;
    v54 = v4;
    v50 = v6;
    sub_1DAB921B4(v268, v30, v54, v3, v5, v6);
    v47 = v23;
    v55 = v23;
    v49 = v269;
    v51 = v271;
    sub_1DAB921B4(v55, 0, v25, v269, v271, v270);
    v246 = v53;
    sub_1DAB921B4(v268, v30, v53, v3, v34, v50);

    v52 = v270;
    goto LABEL_15;
  }

  v202 = v7;
  v203 = v32;
  v193 = v27;
  v194 = v13;
  v190 = v21;
  v191 = v26;
  v204 = v10;
  v205 = v31;
  v195 = v12;
  v196 = v15;
  v188 = v28;
  v189 = v29;
  v197 = v14;
  v198 = v17;
  v199 = v16;
  v200 = v19;
  v201 = v18;
  v192 = v20;
  v35 = v23;
  v36 = v4;
  v37 = v30;
  if ((v268 != v23 || v30 != v24) && (v38 = v24, v39 = v36, v40 = sub_1DACBA174(), v36 = v39, v24 = v38, (v40 & 1) == 0) || (v36 != v25 || v3 != v269) && (v41 = v24, v42 = v36, v43 = sub_1DACBA174(), v36 = v42, v24 = v41, (v43 & 1) == 0))
  {
    v56 = v36;
    sub_1DAB921B4(v268, v37, v36, v3, v34, v6);
    sub_1DAB921B4(v35, v24, v25, v269, v271, v270);
    sub_1DAB921B4(v268, v37, v56, v3, v34, v6);
    sub_1DAA88788(v35, v267, v25, v269, v271, v270);

    v57 = v268;
    v58 = v37;
    v59 = v56;
    v60 = v3;
    v61 = v34;
    v62 = v6;
LABEL_78:
    sub_1DAA88788(v57, v58, v59, v60, v61, v62);
    return 0;
  }

  if (v34 == v271 && v6 == v270)
  {
    v44 = v34;
    v45 = v36;
    sub_1DAB921B4(v268, v37, v36, v3, v34, v6);
    sub_1DAB921B4(v35, v267, v25, v269, v34, v6);
    sub_1DAB921B4(v268, v37, v45, v3, v34, v6);
    sub_1DAA88788(v35, v267, v25, v269, v34, v6);

LABEL_18:
    sub_1DAA88788(v33, v37, v45, v3, v44, v6);
    v63 = v263;
    v64 = v260;
    v65 = v259;
    v66 = v258;
    v67 = v257;
    v69 = v265;
    v68 = v266;
    goto LABEL_19;
  }

  v80 = v36;
  v187 = sub_1DACBA174();
  sub_1DAB921B4(v268, v37, v80, v3, v34, v6);
  sub_1DAB921B4(v23, v267, v25, v269, v271, v270);
  sub_1DAB921B4(v268, v37, v80, v3, v34, v6);
  sub_1DAA88788(v23, v267, v25, v269, v271, v270);

  sub_1DAA88788(v268, v37, v80, v3, v34, v6);
  v63 = v263;
  v64 = v260;
  v65 = v259;
  v66 = v258;
  v67 = v257;
  v69 = v265;
  v68 = v266;
  if ((v187 & 1) == 0)
  {
    return 0;
  }

LABEL_19:
  if (!v67)
  {
    v71 = v262;
    v70 = v256;
    sub_1DAB921B4(v66, 0, v65, v64, v262, v256);
    if (!v69)
    {
      sub_1DAB921B4(v264, 0, v261, v68, v255, v254);
      v67 = 0;
      goto LABEL_38;
    }

    v72 = v264;
    v73 = v69;
    v74 = v261;
    v75 = v68;
    v76 = v65;
    v77 = v69;
    v78 = v255;
    v79 = v254;
    sub_1DAB921B4(v264, v73, v261, v75, v255, v254);
    goto LABEL_35;
  }

  v70 = v256;
  v71 = v262;
  if (!v69)
  {
    sub_1DAB921B4(v66, v67, v65, v64, v262, v256);
    v72 = v264;
    v74 = v261;
    v81 = v68;
    v78 = v255;
    v79 = v254;
    sub_1DAB921B4(v264, 0, v261, v81, v255, v254);
    v82 = v65;
    v76 = v65;
    v77 = v265;
    sub_1DAB921B4(v66, v67, v82, v64, v262, v256);

LABEL_35:
    v275 = v66;
    v276 = v67;
    v277 = v76;
    v278 = v64;
    v279 = v262;
    v280 = v70;
    v281 = v72;
    v282 = v77;
    v283 = v74;
    v284 = v266;
    v285 = v78;
    v286 = v79;
    goto LABEL_76;
  }

  if ((v66 != v264 || v67 != v69) && (sub_1DACBA174() & 1) == 0 || (v65 != v261 || v64 != v68) && (sub_1DACBA174() & 1) == 0)
  {
    sub_1DAB921B4(v66, v67, v65, v64, v262, v256);
    sub_1DAB921B4(v264, v69, v261, v68, v255, v254);
    sub_1DAB921B4(v66, v67, v65, v260, v262, v256);
    sub_1DAA88788(v264, v69, v261, v266, v255, v254);

    v57 = v66;
    v58 = v67;
    v59 = v259;
    v60 = v260;
    v61 = v262;
    v62 = v256;
    goto LABEL_78;
  }

  if (v262 == v255 && v256 == v254)
  {
    sub_1DAB921B4(v66, v67, v65, v64, v262, v256);
    sub_1DAB921B4(v264, v265, v261, v68, v262, v256);
    sub_1DAB921B4(v66, v67, v65, v64, v262, v256);
    sub_1DAA88788(v264, v265, v261, v68, v262, v256);

    v63 = v263;
LABEL_38:
    sub_1DAA88788(v66, v67, v65, v64, v71, v70);
    goto LABEL_39;
  }

  v272 = sub_1DACBA174();
  sub_1DAB921B4(v66, v67, v65, v64, v262, v256);
  sub_1DAB921B4(v264, v265, v261, v68, v255, v254);
  sub_1DAB921B4(v66, v67, v65, v64, v262, v256);
  sub_1DAA88788(v264, v265, v261, v266, v255, v254);

  sub_1DAA88788(v258, v67, v65, v64, v262, v256);
  v63 = v263;
  if ((v272 & 1) == 0)
  {
    return 0;
  }

LABEL_39:
  v83 = v251;
  if (!v251)
  {
    v84 = v240;
    sub_1DAB921B4(v252, 0, v248, v247, v249, v240);
    v85 = v243;
    if (!v253)
    {
      v92 = v233;
      sub_1DAB921B4(v250, 0, v245, v244, v241, v242);
      v91 = 0;
      v89 = v248;
      v90 = v249;
      v88 = v247;
      v87 = v252;
      goto LABEL_58;
    }

    v94 = v244;
    v93 = v245;
    v95 = v241;
    v96 = v242;
    sub_1DAB921B4(v250, v253, v245, v244, v241, v242);
    v98 = v248;
    v97 = v249;
    v99 = v247;
    v100 = v252;
    v83 = 0;
    goto LABEL_55;
  }

  v84 = v240;
  v85 = v243;
  if (!v253)
  {
    v100 = v252;
    v99 = v247;
    v98 = v248;
    v97 = v249;
    sub_1DAB921B4(v252, v251, v248, v247, v249, v240);
    v94 = v244;
    v93 = v245;
    v95 = v241;
    v96 = v242;
    sub_1DAB921B4(v250, 0, v245, v244, v241, v242);
    sub_1DAB921B4(v252, v251, v248, v247, v249, v240);

LABEL_55:
    v275 = v100;
    v276 = v83;
    v277 = v98;
    v278 = v99;
    v279 = v97;
    v280 = v84;
    v281 = v250;
    v282 = v253;
    v283 = v93;
    v284 = v94;
    v285 = v95;
    v286 = v96;
    goto LABEL_76;
  }

  if ((v252 != v250 || v251 != v253) && (v83 = v251, v86 = v253, (sub_1DACBA174() & 1) == 0) || (v248 != v245 || v247 != v244) && (v83 = v251, v86 = v253, (sub_1DACBA174() & 1) == 0))
  {
    sub_1DAB921B4(v252, v83, v248, v247, v249, v240);
    sub_1DAB921B4(v250, v86, v245, v244, v241, v242);
    sub_1DAB921B4(v252, v83, v248, v247, v249, v240);
    sub_1DAA88788(v250, v253, v245, v244, v241, v242);

    v57 = v252;
    v58 = v83;
    v59 = v248;
    v60 = v247;
    v61 = v249;
    v62 = v240;
    goto LABEL_78;
  }

  if (v249 == v241 && v240 == v242)
  {
    v87 = v252;
    v88 = v247;
    v89 = v248;
    v90 = v249;
    sub_1DAB921B4(v252, v251, v248, v247, v249, v240);
    sub_1DAB921B4(v250, v253, v245, v244, v249, v240);
    sub_1DAB921B4(v252, v251, v248, v247, v249, v240);
    sub_1DAA88788(v250, v253, v245, v244, v249, v240);

    v91 = v251;
    v63 = v263;
    v92 = v233;
LABEL_58:
    sub_1DAA88788(v87, v91, v89, v88, v90, v84);
    goto LABEL_59;
  }

  v273 = sub_1DACBA174();
  sub_1DAB921B4(v252, v83, v248, v247, v249, v240);
  sub_1DAB921B4(v250, v253, v245, v244, v241, v242);
  sub_1DAB921B4(v252, v83, v248, v247, v249, v240);
  v85 = v243;
  sub_1DAA88788(v250, v253, v245, v244, v241, v242);

  sub_1DAA88788(v252, v83, v248, v247, v249, v240);
  v63 = v263;
  v92 = v233;
  if ((v273 & 1) == 0)
  {
    return 0;
  }

LABEL_59:
  v101 = v238;
  if (!v238)
  {
    v102 = v231;
    sub_1DAB921B4(v237, 0, v236, v235, v234, v231);
    if (!v239)
    {
      sub_1DAB921B4(v63, 0, v92, v85, v230, v232);
      v112 = 0;
      v109 = v234;
      v110 = v235;
      v104 = v236;
      v111 = v237;
      goto LABEL_82;
    }

    v113 = v85;
    v114 = v230;
    v115 = v232;
    sub_1DAB921B4(v63, v239, v92, v113, v230, v232);
    v116 = v234;
    v117 = v235;
    v104 = v236;
    v118 = v237;
    v101 = 0;
    goto LABEL_75;
  }

  v102 = v231;
  v103 = v235;
  v104 = v236;
  v105 = v237;
  if (!v239)
  {
    v117 = v235;
    v116 = v234;
    v118 = v237;
    sub_1DAB921B4(v237, v238, v236, v235, v234, v231);
    v119 = v85;
    v114 = v230;
    v115 = v232;
    sub_1DAB921B4(v63, 0, v92, v119, v230, v232);
    sub_1DAB921B4(v237, v238, v236, v235, v234, v231);

LABEL_75:
    v275 = v118;
    v276 = v101;
    v277 = v104;
    v278 = v117;
    v279 = v116;
    v280 = v102;
    v281 = v63;
    v282 = v239;
    v283 = v92;
    v284 = v243;
    v285 = v114;
    v286 = v115;
    goto LABEL_76;
  }

  if ((v237 != v63 || v238 != v239) && (v106 = sub_1DACBA174(), v101 = v238, v107 = v239, v104 = v236, v105 = v237, v103 = v235, (v106 & 1) == 0) || (v104 != v92 || v103 != v85) && (v108 = sub_1DACBA174(), v101 = v238, v107 = v239, v104 = v236, v105 = v237, v103 = v235, (v108 & 1) == 0))
  {
    v120 = v103;
    v121 = v105;
    sub_1DAB921B4(v105, v101, v104, v103, v234, v231);
    sub_1DAB921B4(v63, v107, v92, v85, v230, v232);
    sub_1DAB921B4(v121, v101, v104, v120, v234, v231);
    sub_1DAA88788(v63, v107, v92, v243, v230, v232);

    v57 = v237;
    v58 = v101;
    v59 = v104;
    v60 = v120;
    v61 = v234;
    v62 = v231;
    goto LABEL_78;
  }

  if (v234 == v230 && v231 == v232)
  {
    v109 = v234;
    v110 = v103;
    v111 = v105;
    sub_1DAB921B4(v105, v238, v104, v103, v234, v231);
    sub_1DAB921B4(v63, v239, v92, v85, v234, v231);
    sub_1DAB921B4(v111, v238, v104, v110, v234, v231);
    sub_1DAA88788(v63, v239, v92, v85, v234, v231);

    v112 = v238;
LABEL_82:
    sub_1DAA88788(v111, v112, v104, v110, v109, v102);
    goto LABEL_83;
  }

  v137 = v104;
  v138 = v103;
  v139 = v105;
  v274 = sub_1DACBA174();
  sub_1DAB921B4(v139, v101, v137, v138, v234, v231);
  sub_1DAB921B4(v63, v239, v92, v85, v230, v232);
  sub_1DAB921B4(v139, v101, v137, v138, v234, v231);
  sub_1DAA88788(v263, v239, v92, v85, v230, v232);

  sub_1DAA88788(v139, v101, v236, v138, v234, v231);
  if ((v274 & 1) == 0)
  {
    return 0;
  }

LABEL_83:
  v123 = v202;
  if (!v202)
  {
    v132 = 0;
    sub_1DAB92258(v203, 0, v204, v205);
    v126 = v228;
    if (!v228)
    {
      sub_1DAB92258(v229, 0, v226, v227);
      v131 = 0;
      v124 = v205;
      v129 = v203;
      goto LABEL_100;
    }

    v133 = v229;
    v135 = v226;
    v134 = v227;
    sub_1DAB92258(v229, v228, v226, v227);
    v124 = v205;
    v136 = v203;
LABEL_96:
    sub_1DAB907E8(v136, v132, v204, v124);
    sub_1DAB907E8(v133, v126, v135, v134);
    return 0;
  }

  v124 = v205;
  v125 = v203;
  v126 = v228;
  if (!v228)
  {
    v136 = v203;
    v132 = v202;
    sub_1DAB92258(v203, v202, v204, v205);
    v133 = v229;
    v135 = v226;
    v134 = v227;
    sub_1DAB92258(v229, 0, v226, v227);
    sub_1DAB92258(v203, v202, v204, v205);

    goto LABEL_96;
  }

  if (v203 != v229 || v202 != v228)
  {
    v127 = sub_1DACBA174();
    v123 = v202;
    v125 = v203;
    if ((v127 & 1) == 0)
    {
      sub_1DAB92258(v203, v202, v204, v205);
      sub_1DAB92258(v229, v228, v226, v227);
      sub_1DAB92258(v203, v202, v204, v205);
      sub_1DAB907E8(v229, v228, v226, v227);

      sub_1DAB907E8(v203, v202, v204, v205);
      return 0;
    }
  }

  if (v204 == v226 && v205 == v227)
  {
    v128 = v125;
    v129 = v125;
    v130 = v123;
    sub_1DAB92258(v128, v123, v204, v205);
    sub_1DAB92258(v229, v228, v204, v205);
    sub_1DAB92258(v129, v130, v204, v205);
    sub_1DAB907E8(v229, v228, v204, v205);

    v131 = v130;
LABEL_100:
    sub_1DAB907E8(v129, v131, v204, v124);
    goto LABEL_101;
  }

  v140 = v123;
  v141 = sub_1DACBA174();
  sub_1DAB92258(v125, v140, v204, v205);
  sub_1DAB92258(v229, v228, v226, v227);
  sub_1DAB92258(v125, v140, v204, v205);
  sub_1DAB907E8(v229, v228, v226, v227);

  sub_1DAB907E8(v125, v140, v204, v205);
  if ((v141 & 1) == 0)
  {
    return 0;
  }

LABEL_101:
  if (v225 == v223 && v224 == v222)
  {
    result = 0;
    if (v221 != v220)
    {
      return result;
    }

    v142 = v192;
    v143 = v193;
    v145 = v200;
    v144 = v201;
    v147 = v198;
    v146 = v199;
    v149 = v196;
    v148 = v197;
    v151 = v194;
    v150 = v195;
    if (v11 != v22)
    {
      return result;
    }
  }

  else
  {
    v152 = sub_1DACBA174();
    result = 0;
    if ((v152 & 1) == 0)
    {
      return result;
    }

    v145 = v200;
    v144 = v201;
    v147 = v198;
    v146 = v199;
    v149 = v196;
    v148 = v197;
    v151 = v194;
    v150 = v195;
    v143 = v193;
    if (v221 != v220)
    {
      return result;
    }

    v142 = v192;
    if (v11 != v22)
    {
      return result;
    }
  }

  if (v219 != v218 || v217 != v215)
  {
    return result;
  }

  if (v211 != v216 || v214 != v213)
  {
    v153 = v150;
    v154 = v151;
    v155 = v142;
    v156 = v144;
    v157 = v145;
    v158 = v146;
    v159 = v147;
    v160 = v148;
    v161 = v149;
    v162 = v143;
    v163 = sub_1DACBA174();
    v143 = v162;
    v151 = v154;
    v150 = v153;
    v149 = v161;
    v148 = v160;
    v147 = v159;
    v146 = v158;
    v145 = v157;
    v144 = v156;
    v142 = v155;
    if ((v163 & 1) == 0)
    {
      return 0;
    }
  }

  if (v150 != v212 || v151 != v210)
  {
    v164 = v142;
    v165 = v144;
    v166 = v145;
    v167 = v146;
    v168 = v147;
    v169 = v148;
    v170 = v149;
    v171 = v143;
    v172 = sub_1DACBA174();
    v143 = v171;
    v149 = v170;
    v148 = v169;
    v147 = v168;
    v146 = v167;
    v145 = v166;
    v144 = v165;
    v142 = v164;
    if ((v172 & 1) == 0)
    {
      return 0;
    }
  }

  if (v148 != v209 || v149 != v208)
  {
    v173 = v142;
    v174 = v144;
    v175 = v145;
    v176 = v146;
    v177 = v147;
    v178 = v143;
    v179 = sub_1DACBA174();
    v143 = v178;
    v147 = v177;
    v146 = v176;
    v145 = v175;
    v144 = v174;
    v142 = v173;
    if ((v179 & 1) == 0)
    {
      return 0;
    }
  }

  if (v146 != v207 || v147 != v206)
  {
    v180 = v142;
    v181 = v144;
    v182 = v145;
    v183 = v143;
    v184 = sub_1DACBA174();
    v143 = v183;
    v145 = v182;
    v144 = v181;
    v142 = v180;
    if ((v184 & 1) == 0)
    {
      return 0;
    }
  }

  if (v144 != v191 || v145 != v143)
  {
    v185 = v142;
    v186 = sub_1DACBA174();
    v142 = v185;
    if ((v186 & 1) == 0)
    {
      return 0;
    }
  }

  if (v142 == v188 && v190 == v189)
  {
    return 1;
  }

  return sub_1DACBA174();
}

void sub_1DAB92150(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1DAB8FF40();
    v7 = a3(a1, &type metadata for PaywallVisualSpec.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_1DAB921B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
    sub_1DACB71E4();
    sub_1DACB71E4();

    sub_1DACB71E4();
  }
}

unint64_t sub_1DAB92204()
{
  result = qword_1EE124AE8;
  if (!qword_1EE124AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE124AE8);
  }

  return result;
}

void sub_1DAB92258(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    sub_1DACB71E4();

    sub_1DACB71E4();
  }
}

unint64_t sub_1DAB9229C()
{
  result = qword_1EE124F80;
  if (!qword_1EE124F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE124F80);
  }

  return result;
}

uint64_t sub_1DAB922F8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 368))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 232);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1DAB92340(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 360) = 0;
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
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 368) = 1;
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
      *(result + 232) = (a2 - 1);
      return result;
    }

    *(result + 368) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1DAB92404()
{
  result = qword_1ECBE8150;
  if (!qword_1ECBE8150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8150);
  }

  return result;
}

unint64_t sub_1DAB9245C()
{
  result = qword_1EE124CE0;
  if (!qword_1EE124CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE124CE0);
  }

  return result;
}

unint64_t sub_1DAB924B4()
{
  result = qword_1EE124CE8;
  if (!qword_1EE124CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE124CE8);
  }

  return result;
}

unint64_t sub_1DAB92508(uint64_t a1, uint64_t a2)
{
  v2 = sub_1DACB9F04();

  if (v2 >= 0x10)
  {
    return 16;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1DAB92554(uint64_t a1)
{
  sub_1DAB925B0(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1DAB925B0(uint64_t a1)
{
  if (!qword_1ECBE8158)
  {
    sub_1DAA61590(255, &qword_1EE121830, &type metadata for MultiResolutionImage, MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1ECBE8158);
    }
  }
}

uint64_t sub_1DAB92638()
{
  v1 = *v0;
  sub_1DACB71E4();
  return v1;
}

uint64_t sub_1DAB92668()
{
  v1 = *(v0 + 16);
  sub_1DACB71E4();
  return v1;
}

uint64_t sub_1DAB9269C()
{
  if (*v0)
  {
    return 0x74754179786F7270;
  }

  else
  {
    return 0x736F4879786F7270;
  }
}

uint64_t sub_1DAB926E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x736F4879786F7270 && a2 == 0xE900000000000074;
  if (v6 || (sub_1DACBA174() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x74754179786F7270 && a2 == 0xEF6769666E6F436FLL)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1DACBA174();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1DAB927D4(uint64_t a1)
{
  v2 = sub_1DAB92CBC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DAB92810(uint64_t a1)
{
  v2 = sub_1DAB92CBC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DAB9284C(void *a1)
{
  sub_1DAB92D10(0, &qword_1EE123BE8, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v11 - v6;
  v8 = *(v1 + 16);
  v11[1] = *(v1 + 24);
  v11[2] = v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAB92CBC();
  sub_1DACBA304();
  v13 = 0;
  v9 = v11[3];
  sub_1DACBA024();
  if (!v9)
  {
    v12 = 1;
    sub_1DACBA024();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1DAB929CC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1DAB92D10(0, &qword_1EE123CA0, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v17 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAB92CBC();
  sub_1DACBA2F4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v20 = 0;
  v10 = sub_1DACB9F34();
  v12 = v11;
  v18 = v10;
  v19 = 1;
  v13 = sub_1DACB9F34();
  v15 = v14;
  (*(v7 + 8))(v9, v6);
  *a2 = v18;
  a2[1] = v12;
  a2[2] = v13;
  a2[3] = v15;
  sub_1DACB71E4();
  sub_1DACB71E4();
  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1DAB92C10(uint64_t *a1, void *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a2[1];
  v7 = a2[2];
  v8 = a2[3];
  if (v3)
  {
    if (!v6)
    {
      return 0;
    }

    v9 = *a1 == *a2 && v3 == v6;
    if (!v9 && (sub_1DACBA174() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  if (v5)
  {
    if (v8 && (v4 == v7 && v5 == v8 || (sub_1DACBA174() & 1) != 0))
    {
      return 1;
    }
  }

  else if (!v8)
  {
    return 1;
  }

  return 0;
}

unint64_t sub_1DAB92CBC()
{
  result = qword_1EE124810;
  if (!qword_1EE124810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE124810);
  }

  return result;
}

void sub_1DAB92D10(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1DAB92CBC();
    v7 = a3(a1, &type metadata for EmbedProxyConfiguration.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1DAB92D74(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_1DAB92DEC()
{
  result = qword_1ECBE8160;
  if (!qword_1ECBE8160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8160);
  }

  return result;
}

unint64_t sub_1DAB92E44()
{
  result = qword_1EE124800;
  if (!qword_1EE124800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE124800);
  }

  return result;
}

unint64_t sub_1DAB92E9C()
{
  result = qword_1EE124808;
  if (!qword_1EE124808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE124808);
  }

  return result;
}

uint64_t sub_1DAB92F2C()
{
  v0 = sub_1DACB78E4();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1DACB7E44();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = sub_1DACB92E4();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1DACB7904();
  __swift_allocate_value_buffer(v6, qword_1ECBE8168);
  __swift_project_value_buffer(v6, qword_1ECBE8168);
  sub_1DACB9284();
  sub_1DACB7DF4();
  (*(v1 + 104))(v3, *MEMORY[0x1E6968DF0], v0);
  return sub_1DACB7914();
}

uint64_t sub_1DAB93144()
{
  sub_1DAB947A8(0, &qword_1EE123A80, MEMORY[0x1E6968E10], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = v12 - v1;
  v12[0] = sub_1DACB78E4();
  v3 = *(v12[0] - 8);
  MEMORY[0x1EEE9AC00](v12[0]);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1DACB7E44();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v7 = sub_1DACB92E4();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v8 = sub_1DACB7904();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = sub_1DACB7084();
  __swift_allocate_value_buffer(v10, qword_1ECBE8180);
  __swift_project_value_buffer(v10, qword_1ECBE8180);
  sub_1DACB9284();
  sub_1DACB7DF4();
  (*(v3 + 104))(v5, *MEMORY[0x1E6968DF0], v12[0]);
  sub_1DACB7914();
  (*(v9 + 56))(v2, 1, 1, v8);
  return sub_1DACB7094();
}

uint64_t sub_1DAB93494()
{
  v0 = sub_1DACB7284();
  MEMORY[0x1EEE9AC00](v0);
  (*(v2 + 104))(&v11 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E695A508]);
  sub_1DAB947A8(0, &qword_1ECBE8198, MEMORY[0x1E695A298], MEMORY[0x1E69E6F90]);
  v3 = sub_1DACB70E4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1DACC1D30;
  v8 = v7 + v6;
  v9 = *(v4 + 104);
  v9(v8, *MEMORY[0x1E695A280], v3);
  v9(v8 + v5, *MEMORY[0x1E695A288], v3);
  v9(v8 + 2 * v5, *MEMORY[0x1E695A278], v3);
  v9(v8 + 3 * v5, *MEMORY[0x1E695A290], v3);
  sub_1DAB955E0(0, &qword_1ECBE81A0, MEMORY[0x1E695A488]);
  sub_1DAB93D00();
  sub_1DAB93D54();
  return sub_1DACB7404();
}

uint64_t sub_1DAB93748()
{
  sub_1DAB955E0(0, &qword_1ECBE81A0, MEMORY[0x1E695A488]);
  v1 = v0;
  v2 = *(v0 - 8);
  v3 = MEMORY[0x1EEE9AC00](v0);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v11 - v6;
  sub_1DAB93D00();
  sub_1DACB7224();
  v8 = sub_1DAB93D54();
  MEMORY[0x1E1274D80](v5, &type metadata for SymbolWidgetConfigurationIntent, v1, v8);
  v9 = *(v2 + 8);
  v9(v5, v1);
  MEMORY[0x1E1274D70](v7, &type metadata for SymbolWidgetConfigurationIntent, v1, v8);
  return (v9)(v7, v1);
}

uint64_t sub_1DAB938D0()
{
  swift_getKeyPath();
  sub_1DAB93D00();
  v0 = sub_1DACB71F4();

  swift_getKeyPath();
  sub_1DACB71F4();
  v1 = sub_1DACB71F4();

  sub_1DAB956A4(0, &qword_1EE11F490, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1DACCB1F0;
  *(v2 + 32) = v0;
  *(v2 + 40) = v1;
  sub_1DACB71F4();
  v3 = sub_1DACB71E4();

  return v3;
}

uint64_t sub_1DAB93A28@<X0>(uint64_t a1@<X8>)
{
  v14[1] = a1;
  sub_1DAB955E0(0, &qword_1ECBE81D0, MEMORY[0x1E695A4A8]);
  MEMORY[0x1EEE9AC00](v1 - 8);
  sub_1DAB955E0(0, &qword_1ECBE81D8, MEMORY[0x1E695A4A0]);
  MEMORY[0x1EEE9AC00](v2);
  sub_1DAB955E0(0, &qword_1ECBE81A0, MEMORY[0x1E695A488]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v8 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v14 - v9;
  sub_1DAB93D00();
  sub_1DACB7254();
  sub_1DACB7244();
  swift_getKeyPath();
  sub_1DAB95644(0);
  sub_1DACB7234();

  sub_1DACB7244();
  sub_1DACB7264();
  sub_1DACB7204();
  v11 = sub_1DAB93D54();
  MEMORY[0x1E1274D80](v8, &type metadata for SymbolWidgetConfigurationIntent, v4, v11);
  v12 = *(v5 + 8);
  v12(v8, v4);
  MEMORY[0x1E1274D70](v10, &type metadata for SymbolWidgetConfigurationIntent, v4, v11);
  return (v12)(v10, v4);
}

unint64_t sub_1DAB93D00()
{
  result = qword_1EE11D890;
  if (!qword_1EE11D890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11D890);
  }

  return result;
}

unint64_t sub_1DAB93D54()
{
  result = qword_1ECBE81A8;
  if (!qword_1ECBE81A8)
  {
    sub_1DAB955E0(255, &qword_1ECBE81A0, MEMORY[0x1E695A488]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE81A8);
  }

  return result;
}

uint64_t sub_1DAB93DEC(_OWORD *a1, uint64_t *a2)
{
  v2 = a1[1];
  v9[0] = *a1;
  v9[1] = v2;
  v3 = a1[3];
  v5 = *a1;
  v4 = a1[1];
  v9[2] = a1[2];
  v9[3] = v3;
  v8[4] = v5;
  v8[5] = v4;
  v6 = a1[3];
  v8[6] = a1[2];
  v8[7] = v6;
  sub_1DAB95504(v9, v8);
  sub_1DACB71F4();
  sub_1DACB71F4();
  sub_1DACB6FC4();
}

uint64_t (*sub_1DAB93EA8(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1DACB6FA4();
  return sub_1DAADD2B0;
}

uint64_t sub_1DAB93F40(char *a1, uint64_t *a2)
{
  sub_1DACB71F4();
  sub_1DACB71F4();
  sub_1DACB6FC4();
}

uint64_t (*sub_1DAB93FD0(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1DACB6FA4();
  return sub_1DAAD9D74;
}

uint64_t sub_1DAB94044@<X0>(uint64_t *a1@<X8>)
{
  v55 = a1;
  v54 = sub_1DACB7274();
  v56 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v53 = v37 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = MEMORY[0x1E69E6720];
  sub_1DAB947A8(0, &qword_1EE123AA0, MEMORY[0x1E6959F70], MEMORY[0x1E69E6720]);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v52 = v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v50 = v37 - v6;
  sub_1DAB947A8(0, &qword_1EE123A80, MEMORY[0x1E6968E10], v2);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v51 = v37 - v8;
  v9 = sub_1DACB78E4();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1DACB7E44();
  MEMORY[0x1EEE9AC00](v13 - 8);
  v14 = sub_1DACB92E4();
  MEMORY[0x1EEE9AC00](v14 - 8);
  v15 = sub_1DACB7904();
  v47 = v15;
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v37[1] = v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAB9480C(0);
  v49 = v18;
  sub_1DACB9284();
  sub_1DACB7DF4();
  v20 = *(v10 + 104);
  v38 = *MEMORY[0x1E6968DF0];
  v19 = v38;
  v39 = v9;
  v20(v12, v38, v9);
  v40 = v20;
  v41 = v10 + 104;
  sub_1DACB7914();
  sub_1DACB9284();
  sub_1DACB7DF4();
  v20(v12, v19, v9);
  v21 = v51;
  sub_1DACB7914();
  v22 = *(v16 + 56);
  v46 = v16 + 56;
  v48 = v22;
  v22(v21, 0, 1, v15);
  v23 = sub_1DACB6E84();
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v24 = *(v23 - 8);
  v25 = *(v24 + 56);
  v42 = v25;
  v43 = v24 + 56;
  v26 = v50;
  v25(v50, 1, 1, v23);
  v25(v52, 1, 1, v23);
  v44 = *MEMORY[0x1E695A500];
  v27 = *(v56 + 104);
  v56 += 104;
  v45 = v27;
  v27(v53);
  sub_1DAB823B8();
  v28 = v26;
  *v55 = sub_1DACB7014();
  sub_1DAB948C8(0);
  v49 = v29;
  sub_1DACB9284();
  sub_1DACB7DF4();
  v30 = v38;
  v31 = v39;
  v32 = v40;
  v40(v12, v38, v39);
  sub_1DACB7914();
  sub_1DACB9284();
  sub_1DACB7DF4();
  v32(v12, v30, v31);
  v33 = v51;
  sub_1DACB7914();
  v48(v33, 0, 1, v47);
  LOBYTE(v57) = 0;
  v34 = v28;
  v35 = v42;
  v42(v34, 1, 1, v23);
  v35(v52, 1, 1, v23);
  v45(v53, v44, v54);
  sub_1DAB950C4();
  result = sub_1DACB6FE4();
  v55[1] = result;
  return result;
}

void sub_1DAB947A8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1DAB9480C(uint64_t a1)
{
  if (!qword_1EE11F1A8)
  {
    sub_1DAB956A4(255, &qword_1EE11E6D8, &type metadata for SymbolWidgetEntity, MEMORY[0x1E69E6720]);
    sub_1DAB94984(&qword_1EE11E6D0, &qword_1EE11E6D8, &type metadata for SymbolWidgetEntity, sub_1DAADD25C);
    v1 = sub_1DACB7044();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE11F1A8);
    }
  }
}

void sub_1DAB948C8(uint64_t a1)
{
  if (!qword_1EE11F198)
  {
    sub_1DAB956A4(255, &qword_1EE11DF80, &type metadata for NewsDisplayConfiguration, MEMORY[0x1E69E6720]);
    sub_1DAB94984(&qword_1EE11DF78, &qword_1EE11DF80, &type metadata for NewsDisplayConfiguration, sub_1DAB94A10);
    v1 = sub_1DACB7044();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE11F198);
    }
  }
}

uint64_t sub_1DAB94984(unint64_t *a1, unint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1DAB956A4(255, a2, a3, MEMORY[0x1E69E6720]);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1DAB94A10()
{
  result = qword_1EE120DE8;
  if (!qword_1EE120DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE120DE8);
  }

  return result;
}

uint64_t sub_1DAB94A64(uint64_t a1)
{
  v2[36] = a1;
  type metadata accessor for SymbolEntity(0);
  v3 = swift_task_alloc();
  v4 = *v1;
  v2[37] = v3;
  v2[38] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1DAB94AF8, 0, 0);
}

uint64_t sub_1DAB94AF8()
{
  v14 = v0;
  sub_1DACB6FB4();
  v1 = *(v0 + 96);
  *(v0 + 16) = *(v0 + 80);
  *(v0 + 32) = v1;
  v2 = *(v0 + 128);
  *(v0 + 48) = *(v0 + 112);
  *(v0 + 64) = v2;
  if (*(v0 + 16))
  {
    v3 = *(v0 + 296);
    v8 = *(v0 + 16);
    v9 = *(v0 + 88);
    v10 = *(v0 + 104);
    v11 = *(v0 + 120);
    v12 = *(v0 + 136);
    v4 = *(v0 + 96);
    *(v0 + 144) = *(v0 + 80);
    *(v0 + 160) = v4;
    v5 = *(v0 + 128);
    *(v0 + 176) = *(v0 + 112);
    *(v0 + 192) = v5;
    sub_1DAB9516C(v0 + 144, v0 + 208);
    sub_1DAB9C4C0(&v8, v13);
    SymbolEntity.init(from:)(v13, v3);
    sub_1DAC45D08(v3, v13);
    *(v0 + 272) = v13[0];
    sub_1DAB951C8();
    sub_1DACB6E94();
    sub_1DAB9521C(v0 + 16);
  }

  else
  {
    sub_1DAB95118();
    swift_allocError();
    swift_willThrow();
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1DAB94C90@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ECBE5AF0 != -1)
  {
    swift_once();
  }

  v2 = sub_1DACB7904();
  v3 = __swift_project_value_buffer(v2, qword_1ECBE8168);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1DAB94D38(uint64_t a1, uint64_t a2)
{
  v13[1] = a1;
  v2 = sub_1DACB7284();
  MEMORY[0x1EEE9AC00](v2);
  (*(v4 + 104))(v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E695A508]);
  sub_1DAB947A8(0, &qword_1ECBE8198, MEMORY[0x1E695A298], MEMORY[0x1E69E6F90]);
  v5 = sub_1DACB70E4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 72);
  v8 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1DACC1D30;
  v10 = v9 + v8;
  v11 = *(v6 + 104);
  v11(v10, *MEMORY[0x1E695A280], v5);
  v11(v10 + v7, *MEMORY[0x1E695A288], v5);
  v11(v10 + 2 * v7, *MEMORY[0x1E695A278], v5);
  v11(v10 + 3 * v7, *MEMORY[0x1E695A290], v5);
  sub_1DAB955E0(0, &qword_1ECBE81A0, MEMORY[0x1E695A488]);
  sub_1DAB93D54();
  return sub_1DACB7404();
}

uint64_t sub_1DAB94FEC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DAA94754;

  return sub_1DAB94A64(a1);
}

void sub_1DAB95088()
{
  sub_1DAB9558C();

  JUMPOUT(0x1E12747C0);
}

unint64_t sub_1DAB950C4()
{
  result = qword_1EE120DF8;
  if (!qword_1EE120DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE120DF8);
  }

  return result;
}

unint64_t sub_1DAB95118()
{
  result = qword_1ECBE81B0;
  if (!qword_1ECBE81B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE81B0);
  }

  return result;
}

unint64_t sub_1DAB951C8()
{
  result = qword_1EE122A78;
  if (!qword_1EE122A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE122A78);
  }

  return result;
}

uint64_t sub_1DAB9521C(uint64_t a1)
{
  sub_1DAB956A4(0, &qword_1EE11E6D8, &type metadata for SymbolWidgetEntity, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1DAB952A0()
{
  result = qword_1EE11D888;
  if (!qword_1EE11D888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11D888);
  }

  return result;
}

unint64_t sub_1DAB952F8()
{
  result = qword_1EE11D898;
  if (!qword_1EE11D898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11D898);
  }

  return result;
}

uint64_t sub_1DAB953AC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1DAB953F4(uint64_t a1)
{
  if (!qword_1ECBE81C0)
  {
    sub_1DAB955E0(255, &qword_1ECBE81A0, MEMORY[0x1E695A488]);
    sub_1DAB93D00();
    sub_1DAB93D54();
    v1 = sub_1DACB7424();
    if (!v2)
    {
      atomic_store(v1, &qword_1ECBE81C0);
    }
  }
}

unint64_t sub_1DAB954B0()
{
  result = qword_1ECBE81C8;
  if (!qword_1ECBE81C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE81C8);
  }

  return result;
}

uint64_t sub_1DAB95504(uint64_t a1, uint64_t a2)
{
  sub_1DAB956A4(0, &qword_1EE11E6D8, &type metadata for SymbolWidgetEntity, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1DAB9558C()
{
  result = qword_1EE11D8A0;
  if (!qword_1EE11D8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11D8A0);
  }

  return result;
}

void sub_1DAB955E0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1DAB93D00();
    v7 = a3(a1, &type metadata for SymbolWidgetConfigurationIntent, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_1DAB95644(uint64_t a1)
{
  if (!qword_1ECBE81E0)
  {
    sub_1DAB9480C(255);
    v1 = sub_1DACBA314();
    if (!v2)
    {
      atomic_store(v1, &qword_1ECBE81E0);
    }
  }
}

void sub_1DAB956A4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

id sub_1DAB956F8()
{
  sub_1DACB8014();
  sub_1DACB7FF4();
  if (qword_1EE124160 != -1)
  {
    swift_once();
  }

  sub_1DACB7FE4();

  if (v8)
  {
    v0 = 2;
  }

  else
  {
    v0 = 1;
  }

  if (v8 - 2 >= 6)
  {
    v1 = v0;
  }

  else
  {
    v1 = 2;
  }

  v2 = objc_allocWithZone(MEMORY[0x1E695B8A0]);
  v3 = sub_1DACB92F4();

  v4 = [v2 initWithContainerIdentifier:v3 environment:v1];

  v5 = [objc_allocWithZone(MEMORY[0x1E695B8B0]) init];
  [v5 setUseZoneWidePCS_];
  v6 = [objc_allocWithZone(MEMORY[0x1E695B888]) initWithContainerID:v4 options:v5];

  return v6;
}

void *sub_1DAB9588C()
{
  v0 = sub_1DACB7E44();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_1DACB92E4();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = &v16[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v16[-v6];
  v8 = sub_1DACB9324();
  v10 = v9;
  sub_1DACB9284();
  (*(v2 + 16))(v5, v7, v1);
  if (qword_1EE123DD8 != -1)
  {
    swift_once();
  }

  v11 = qword_1EE13E470;
  sub_1DACB7DF4();
  v12 = sub_1DACB9384();
  v14 = v13;
  (*(v2 + 8))(v7, v1);
  return sub_1DAB95AA4(v8, v10, v12, v14, &qword_1ECBE81E8);
}

uint64_t sub_1DAB95AA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v22 = a3;
  v23 = a4;
  v20 = a1;
  v21 = a2;
  v19 = a5;
  v5 = sub_1DACB78E4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1DACB7E44();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v10 = sub_1DACB92E4();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v11 = sub_1DACB7904();
  MEMORY[0x1EEE9AC00](v11 - 8);
  sub_1DAA8D904(0, &qword_1EE123A98, sub_1DAA8D9E8, MEMORY[0x1E69E6158], MEMORY[0x1E695A088]);
  sub_1DACB9284();
  sub_1DACB7DF4();
  v12 = *MEMORY[0x1E6968DF0];
  v13 = *(v6 + 104);
  v18[1] = v6 + 104;
  v14 = v5;
  v13(v8, v12, v5);
  sub_1DACB7914();
  v15 = sub_1DACB6F34();
  v16 = v19;
  *v19 = v15;
  sub_1DACB9284();
  sub_1DACB7DF4();
  v13(v8, v12, v14);
  sub_1DACB7914();
  v16[1] = sub_1DACB6F34();
  v24 = v20;
  v25 = v21;
  sub_1DACB6EE4();
  v24 = v22;
  v25 = v23;
  return sub_1DACB6EE4();
}

uint64_t sub_1DAB95DB4@<X0>(void *a1@<X8>)
{
  if (qword_1ECBE5B00 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  v1 = unk_1ECBE81F0;
  *a1 = qword_1ECBE81E8;
  a1[1] = v1;
  sub_1DACB71F4();

  return sub_1DACB71F4();
}

uint64_t sub_1DAB95E68(uint64_t *a1, uint64_t *a2)
{
  sub_1DACB71E4();
  sub_1DACB71F4();
  sub_1DACB71F4();
  sub_1DACB6EE4();
}

uint64_t (*sub_1DAB95EF8(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1DACB6EC4();
  return sub_1DAAD9D74;
}

uint64_t sub_1DAB95FC4(uint64_t *a1, uint64_t *a2)
{
  sub_1DACB71E4();
  sub_1DACB71F4();
  sub_1DACB71F4();
  sub_1DACB6EE4();
}

uint64_t (*sub_1DAB96054(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1DACB6EC4();
  return sub_1DAADD2B0;
}

uint64_t sub_1DAB960EC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v30 = a2;
  v3 = sub_1DACB78E4();
  v24 = v3;
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1DACB7E44();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v8 = sub_1DACB92E4();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v9 = sub_1DACB7904();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v10 = a1[1];
  v29 = *a1;
  v11 = a1[3];
  v26 = a1[2];
  v27 = v10;
  v25 = v11;
  v12 = a1[4];
  v28 = *(a1 + 20);
  sub_1DAA8D904(0, &qword_1EE123A98, sub_1DAA8D9E8, MEMORY[0x1E69E6158], MEMORY[0x1E695A088]);
  sub_1DACB9284();
  sub_1DACB7DF4();
  v13 = *MEMORY[0x1E6968DF0];
  v14 = v4 + 104;
  v15 = *(v4 + 104);
  v23 = v14;
  v15(v6, v13, v3);
  sub_1DACB7914();
  v16 = sub_1DACB6F34();
  v17 = v30;
  *v30 = v16;
  sub_1DACB9284();
  sub_1DACB7DF4();
  v15(v6, v13, v24);
  sub_1DACB7914();
  v17[1] = sub_1DACB6F34();
  v18 = v25;
  v33 = v25;
  v34 = v12;
  sub_1DACB71E4();
  sub_1DACB6EE4();
  v33 = v29;
  v34 = v27;
  v35 = v26;
  v36 = v18;
  v37 = v12;
  v38 = v28;
  v19 = sub_1DAA6BA64();
  v21 = v20;

  v31 = v19;
  v32 = v21;
  return sub_1DACB6EE4();
}

uint64_t sub_1DAB9645C@<X0>(void *a1@<X8>)
{
  if (qword_1EE11E468 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = qword_1EE11E470;

  return sub_1DACB71F4();
}

uint64_t sub_1DAB964CC@<X0>(void *a1@<X8>)
{
  if (qword_1EE11E468 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = qword_1EE11E470;

  return sub_1DACB71F4();
}

void *sub_1DAB9653C@<X0>(void *a2@<X8>)
{
  result = sub_1DACB6ED4();
  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_1DAB96578@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ECBE5B10 != -1)
  {
    swift_once();
  }

  v2 = sub_1DACB7354();
  v3 = __swift_project_value_buffer(v2, qword_1ECBE81F8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1DAB96620@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ECBE5B10 != -1)
  {
    swift_once();
  }

  v2 = sub_1DACB7354();
  v3 = __swift_project_value_buffer(v2, qword_1ECBE81F8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1DAB966C8(uint64_t a1)
{
  v2 = sub_1DAB972AC();

  return MEMORY[0x1EEDB2C58](a1, v2);
}

uint64_t sub_1DAB96718()
{
  v0 = MEMORY[0x1E69E6720];
  sub_1DAA8E498(0, &qword_1EE11F170, MEMORY[0x1E695A3E8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v12 - v2;
  sub_1DAA8E498(0, &qword_1EE123A80, MEMORY[0x1E6968E10], v0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v12 - v5;
  v7 = sub_1DACB7904();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = sub_1DACB92C4();
  MEMORY[0x1EEE9AC00](v9 - 8);
  sub_1DACB92B4();
  sub_1DACB92A4();
  sub_1DACB6ED4();
  sub_1DACB9294();

  sub_1DACB92A4();
  sub_1DACB78F4();
  (*(v8 + 56))(v6, 1, 1, v7);
  v10 = sub_1DACB7164();
  (*(*(v10 - 8) + 56))(v3, 1, 1, v10);
  return sub_1DACB7174();
}

uint64_t sub_1DAB969C4(uint64_t a1)
{
  v2 = sub_1DAB9715C();

  return MEMORY[0x1EEDB3F68](a1, v2);
}

uint64_t sub_1DAB96A10()
{
  sub_1DAA8E498(0, &qword_1EE123AB0, sub_1DAADA3B0, MEMORY[0x1E6959D18]);
  sub_1DACB6D94();
  sub_1DACB6D84();
  result = sub_1DACB6D54();
  qword_1EE11E470 = result;
  return result;
}

uint64_t sub_1DAB96AA4()
{
  v14 = MEMORY[0x1E6968E10];
  sub_1DAA8E498(0, &qword_1EE123A80, MEMORY[0x1E6968E10], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v13 = &v12 - v1;
  v2 = sub_1DACB78E4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1DACB7E44();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v7 = sub_1DACB92E4();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v8 = sub_1DACB7904();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = sub_1DACB7354();
  __swift_allocate_value_buffer(v10, qword_1ECBE81F8);
  __swift_project_value_buffer(v10, qword_1ECBE81F8);
  sub_1DACB9284();
  sub_1DACB7DF4();
  (*(v3 + 104))(v5, *MEMORY[0x1E6968DF0], v2);
  sub_1DACB7914();
  (*(v9 + 56))(v13, 1, 1, v8);
  sub_1DAA8E498(0, &qword_1ECBE6D78, v14, MEMORY[0x1E69E6F90]);
  *(swift_allocObject() + 16) = xmmword_1DACC4A00;
  sub_1DACB78D4();
  sub_1DACB78D4();
  sub_1DACB78D4();
  sub_1DACB78D4();
  sub_1DACB78D4();
  sub_1DACB78D4();
  return sub_1DACB7334();
}

unint64_t sub_1DAB96EFC()
{
  result = qword_1EE11E458;
  if (!qword_1EE11E458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11E458);
  }

  return result;
}

unint64_t sub_1DAB96F54()
{
  result = qword_1EE11E440;
  if (!qword_1EE11E440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11E440);
  }

  return result;
}

unint64_t sub_1DAB96FAC()
{
  result = qword_1EE11E418;
  if (!qword_1EE11E418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11E418);
  }

  return result;
}

unint64_t sub_1DAB97004()
{
  result = qword_1EE11E5D8;
  if (!qword_1EE11E5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11E5D8);
  }

  return result;
}

unint64_t sub_1DAB9705C()
{
  result = qword_1EE11E438;
  if (!qword_1EE11E438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11E438);
  }

  return result;
}

unint64_t sub_1DAB970B0()
{
  result = qword_1EE11E430;
  if (!qword_1EE11E430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11E430);
  }

  return result;
}

unint64_t sub_1DAB97104()
{
  result = qword_1EE11E448;
  if (!qword_1EE11E448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11E448);
  }

  return result;
}

unint64_t sub_1DAB9715C()
{
  result = qword_1EE11E428;
  if (!qword_1EE11E428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11E428);
  }

  return result;
}

unint64_t sub_1DAB971B4()
{
  result = qword_1EE11F148;
  if (!qword_1EE11F148)
  {
    sub_1DAA8D904(255, &qword_1EE11F140, sub_1DAB97104, &type metadata for WatchlistWidgetEntity, MEMORY[0x1E695A570]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11F148);
  }

  return result;
}

unint64_t sub_1DAB97248()
{
  result = qword_1EE11E420;
  if (!qword_1EE11E420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11E420);
  }

  return result;
}

unint64_t sub_1DAB972AC()
{
  result = qword_1EE11E450;
  if (!qword_1EE11E450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11E450);
  }

  return result;
}

uint64_t sub_1DAB97328()
{
  v0 = sub_1DACB78E4();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1DACB7E44();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = sub_1DACB92E4();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1DACB7904();
  __swift_allocate_value_buffer(v6, qword_1ECBE8210);
  __swift_project_value_buffer(v6, qword_1ECBE8210);
  sub_1DACB9284();
  sub_1DACB7DF4();
  (*(v1 + 104))(v3, *MEMORY[0x1E6968DF0], v0);
  return sub_1DACB7914();
}

uint64_t sub_1DAB97548()
{
  sub_1DAB9A5F4(0, &qword_1EE123A80, MEMORY[0x1E6968E10], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = v12 - v1;
  v12[0] = sub_1DACB78E4();
  v3 = *(v12[0] - 8);
  MEMORY[0x1EEE9AC00](v12[0]);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1DACB7E44();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v7 = sub_1DACB92E4();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v8 = sub_1DACB7904();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = sub_1DACB7084();
  __swift_allocate_value_buffer(v10, qword_1ECBE8228);
  __swift_project_value_buffer(v10, qword_1ECBE8228);
  sub_1DACB9284();
  sub_1DACB7DF4();
  (*(v3 + 104))(v5, *MEMORY[0x1E6968DF0], v12[0]);
  sub_1DACB7914();
  (*(v9 + 56))(v2, 1, 1, v8);
  return sub_1DACB7094();
}

uint64_t sub_1DAB97898()
{
  v0 = sub_1DACB7284();
  MEMORY[0x1EEE9AC00](v0);
  (*(v2 + 104))(&v11 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E695A508]);
  sub_1DAB9A5F4(0, &qword_1ECBE8198, MEMORY[0x1E695A298], MEMORY[0x1E69E6F90]);
  v3 = sub_1DACB70E4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1DACC1D40;
  v8 = v7 + v6;
  v9 = *(v4 + 104);
  v9(v8, *MEMORY[0x1E695A288], v3);
  v9(v8 + v5, *MEMORY[0x1E695A278], v3);
  sub_1DAB9A9D4(0, &qword_1ECBE8240, sub_1DAB980E8, &type metadata for WatchlistWidgetConfigurationIntent, MEMORY[0x1E695A488]);
  sub_1DAB9813C(0);
  sub_1DAB980E8();
  sub_1DAB981FC();
  sub_1DAB9828C(&qword_1ECBE8258, sub_1DAB9813C, MEMORY[0x1E695A678]);
  return sub_1DACB7404();
}

uint64_t sub_1DAB97B74()
{
  swift_getKeyPath();
  sub_1DAB980E8();
  v0 = sub_1DACB71F4();

  swift_getKeyPath();
  sub_1DACB71F4();
  v1 = sub_1DACB71F4();

  swift_getKeyPath();
  sub_1DACB71F4();
  v2 = sub_1DACB71F4();

  swift_getKeyPath();
  sub_1DACB71F4();
  v3 = sub_1DACB71F4();

  sub_1DAB9AA9C(0, &qword_1EE11F490, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1DACCC700;
  *(v4 + 32) = v0;
  *(v4 + 40) = v1;
  *(v4 + 48) = v2;
  *(v4 + 56) = v3;
  sub_1DACB71F4();
  v5 = sub_1DACB71E4();

  return v5;
}

uint64_t sub_1DAB97D90@<X0>(uint64_t a1@<X8>)
{
  v20[1] = a1;
  v1 = sub_1DACB70E4();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1DACB7384();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAB9813C(0);
  v10 = v9;
  v11 = *(v9 - 8);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = v20 - v15;
  (*(v6 + 104))(v8, *MEMORY[0x1E695A5A8], v5);
  (*(v2 + 104))(v4, *MEMORY[0x1E695A280], v1);
  sub_1DAB9A9D4(0, &qword_1ECBE8240, sub_1DAB980E8, &type metadata for WatchlistWidgetConfigurationIntent, MEMORY[0x1E695A488]);
  sub_1DAB980E8();
  sub_1DAB981FC();
  sub_1DACB7414();
  v17 = sub_1DAB9828C(&qword_1ECBE8258, sub_1DAB9813C, MEMORY[0x1E695A678]);
  MEMORY[0x1E1274D80](v14, &type metadata for WatchlistWidgetConfigurationIntent, v10, v17);
  v18 = *(v11 + 8);
  v18(v14, v10);
  MEMORY[0x1E1274D70](v16, &type metadata for WatchlistWidgetConfigurationIntent, v10, v17);
  return (v18)(v16, v10);
}

unint64_t sub_1DAB980E8()
{
  result = qword_1EE11D7C8;
  if (!qword_1EE11D7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11D7C8);
  }

  return result;
}

void sub_1DAB9813C(uint64_t a1)
{
  if (!qword_1ECBE8248)
  {
    sub_1DAB9A9D4(255, &qword_1ECBE8240, sub_1DAB980E8, &type metadata for WatchlistWidgetConfigurationIntent, MEMORY[0x1E695A488]);
    sub_1DAB980E8();
    sub_1DAB981FC();
    v1 = sub_1DACB7424();
    if (!v2)
    {
      atomic_store(v1, &qword_1ECBE8248);
    }
  }
}

unint64_t sub_1DAB981FC()
{
  result = qword_1ECBE8250;
  if (!qword_1ECBE8250)
  {
    sub_1DAB9A9D4(255, &qword_1ECBE8240, sub_1DAB980E8, &type metadata for WatchlistWidgetConfigurationIntent, MEMORY[0x1E695A488]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8250);
  }

  return result;
}

uint64_t sub_1DAB9828C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1DAB982EC(uint64_t a1)
{
  sub_1DAB9A9D4(0, &qword_1ECBE8240, sub_1DAB980E8, &type metadata for WatchlistWidgetConfigurationIntent, MEMORY[0x1E695A488]);
  v2 = v1;
  v3 = *(v1 - 8);
  v4 = MEMORY[0x1EEE9AC00](v1);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v12 - v7;
  sub_1DAB980E8();
  sub_1DACB7224();
  v9 = sub_1DAB981FC();
  MEMORY[0x1E1274D80](v6, &type metadata for WatchlistWidgetConfigurationIntent, v2, v9);
  v10 = *(v3 + 8);
  v10(v6, v2);
  MEMORY[0x1E1274D70](v8, &type metadata for WatchlistWidgetConfigurationIntent, v2, v9);
  return (v10)(v8, v2);
}

uint64_t sub_1DAB98480()
{
  swift_getKeyPath();
  sub_1DAB980E8();
  v0 = sub_1DACB71F4();

  swift_getKeyPath();
  sub_1DACB71F4();
  v1 = sub_1DACB71F4();

  swift_getKeyPath();
  sub_1DACB71F4();
  v2 = sub_1DACB71F4();

  sub_1DAB9AA9C(0, &qword_1EE11F490, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1DACCC710;
  *(v3 + 32) = v0;
  *(v3 + 40) = v1;
  *(v3 + 48) = v2;
  sub_1DACB71F4();
  v4 = sub_1DACB71E4();

  return v4;
}

uint64_t sub_1DAB985D4@<X0>(uint64_t a1@<X8>)
{
  v14[1] = a1;
  sub_1DAB9A9D4(0, &qword_1ECBE8270, sub_1DAB980E8, &type metadata for WatchlistWidgetConfigurationIntent, MEMORY[0x1E695A4A8]);
  MEMORY[0x1EEE9AC00](v1 - 8);
  sub_1DAB9A9D4(0, &qword_1ECBE8278, sub_1DAB980E8, &type metadata for WatchlistWidgetConfigurationIntent, MEMORY[0x1E695A4A0]);
  MEMORY[0x1EEE9AC00](v2);
  sub_1DAB9A9D4(0, &qword_1ECBE8240, sub_1DAB980E8, &type metadata for WatchlistWidgetConfigurationIntent, MEMORY[0x1E695A488]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v8 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v14 - v9;
  sub_1DAB980E8();
  sub_1DACB7254();
  sub_1DACB7244();
  swift_getKeyPath();
  sub_1DAB9AA3C(0);
  sub_1DACB7234();

  sub_1DACB7244();
  sub_1DACB7264();
  sub_1DACB7204();
  v11 = sub_1DAB981FC();
  MEMORY[0x1E1274D80](v8, &type metadata for WatchlistWidgetConfigurationIntent, v4, v11);
  v12 = *(v5 + 8);
  v12(v8, v4);
  MEMORY[0x1E1274D70](v10, &type metadata for WatchlistWidgetConfigurationIntent, v4, v11);
  return (v12)(v10, v4);
}

uint64_t sub_1DAB988F4(uint64_t *a1, uint64_t *a2)
{
  sub_1DAB9A940(*a1, a1[1]);
  sub_1DACB71F4();
  sub_1DACB71F4();
  sub_1DACB71F4();
  sub_1DACB71F4();
  sub_1DACB6FC4();
}

uint64_t (*sub_1DAB989BC(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1DACB6FA4();
  return sub_1DAADD2B0;
}

uint64_t sub_1DAB98A54(char *a1, uint64_t *a2)
{
  sub_1DACB71F4();
  sub_1DACB71F4();
  sub_1DACB71F4();
  sub_1DACB71F4();
  sub_1DACB6FC4();
}

uint64_t (*sub_1DAB98B10(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1DACB6FA4();
  return sub_1DAAD9D74;
}

uint64_t sub_1DAB98BB8(char *a1, uint64_t *a2)
{
  sub_1DACB71F4();
  sub_1DACB71F4();
  sub_1DACB71F4();
  sub_1DACB71F4();
  sub_1DACB6FC4();
}

uint64_t (*sub_1DAB98C70(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1DACB6FA4();
  return sub_1DAADD2B0;
}

uint64_t sub_1DAB98D18(char *a1, uint64_t *a2)
{
  sub_1DACB71F4();
  sub_1DACB71F4();
  sub_1DACB71F4();
  sub_1DACB71F4();
  sub_1DACB6FC4();
}

uint64_t (*sub_1DAB98DD0(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1DACB6FA4();
  return sub_1DAADD2B0;
}

uint64_t sub_1DAB98E44@<X0>(uint64_t *a1@<X8>)
{
  v68 = a1;
  v1 = MEMORY[0x1E69E6720];
  sub_1DAB9A5F4(0, &qword_1EE11D138, MEMORY[0x1E695A810], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v54 = &v47 - v3;
  v67 = sub_1DACB7274();
  v69 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67);
  v66 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAB9A5F4(0, &qword_1EE123AA0, MEMORY[0x1E6959F70], v1);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v52 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v59 = &v47 - v8;
  sub_1DAB9A5F4(0, &qword_1EE123A80, MEMORY[0x1E6968E10], v1);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v51 = &v47 - v10;
  v11 = sub_1DACB78E4();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1DACB7E44();
  MEMORY[0x1EEE9AC00](v15 - 8);
  v16 = sub_1DACB92E4();
  MEMORY[0x1EEE9AC00](v16 - 8);
  v17 = sub_1DACB7904();
  v58 = v17;
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v49 = &v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAB999B0(0);
  v48 = v20;
  sub_1DACB9284();
  sub_1DACB7DF4();
  v22 = *(v12 + 104);
  v50 = *MEMORY[0x1E6968DF0];
  v21 = v50;
  v56 = v11;
  v22(v14, v50, v11);
  v55 = v22;
  v57 = v12 + 104;
  sub_1DACB7914();
  sub_1DACB9284();
  sub_1DACB7DF4();
  v22(v14, v21, v11);
  v23 = v51;
  sub_1DACB7914();
  v60 = *(v18 + 56);
  v65 = v18 + 56;
  v60(v23, 0, 1, v17);
  v24 = sub_1DACB6E84();
  v70 = 0;
  v71 = 0;
  v25 = *(v24 - 8);
  v26 = *(v25 + 56);
  v61 = v26;
  v62 = v25 + 56;
  v26(v59, 1, 1, v24);
  v26(v52, 1, 1, v24);
  v64 = *MEMORY[0x1E695A500];
  v63 = *(v69 + 104);
  v69 += 104;
  v63(v66);
  sub_1DAB972AC();
  *v68 = sub_1DACB7014();
  sub_1DAB948C8(0);
  v48 = v27;
  sub_1DACB9284();
  sub_1DACB7DF4();
  v28 = v50;
  v30 = v55;
  v29 = v56;
  v55(v14, v50, v56);
  sub_1DACB7914();
  sub_1DACB9284();
  sub_1DACB7DF4();
  v30(v14, v28, v29);
  sub_1DACB7914();
  v60(v23, 0, 1, v58);
  LOBYTE(v70) = 0;
  v31 = v59;
  v53 = v24;
  v32 = v61;
  v61(v59, 1, 1, v24);
  v32(v52, 1, 1, v24);
  (v63)(v66, v64, v67);
  sub_1DAB950C4();
  v33 = v31;
  v68[1] = sub_1DACB6FE4();
  sub_1DAB9A4E4(0);
  v52 = v34;
  sub_1DACB9284();
  sub_1DACB7DF4();
  v35 = v50;
  v37 = v55;
  v36 = v56;
  v55(v14, v50, v56);
  sub_1DACB7914();
  sub_1DACB9284();
  sub_1DACB7DF4();
  v38 = v35;
  v37(v14, v35, v36);
  v39 = v51;
  sub_1DACB7914();
  v60(v39, 0, 1, v58);
  LOBYTE(v70) = 0;
  v40 = sub_1DACB9734();
  v41 = *(v40 - 8);
  v47 = *(v41 + 56);
  v48 = v41 + 56;
  v47(v54, 1, 1, v40);
  v61(v33, 1, 1, v53);
  (v63)(v66, v64, v67);
  v68[2] = sub_1DACB7034();
  sub_1DACB9284();
  sub_1DACB7DF4();
  v42 = v38;
  v43 = v38;
  v44 = v56;
  v45 = v55;
  v55(v14, v43, v56);
  sub_1DACB7914();
  sub_1DACB9284();
  sub_1DACB7DF4();
  v45(v14, v42, v44);
  sub_1DACB7914();
  v60(v39, 0, 1, v58);
  LOBYTE(v70) = 0;
  v47(v54, 1, 1, v40);
  v61(v59, 1, 1, v53);
  (v63)(v66, v64, v67);
  result = sub_1DACB7034();
  v68[3] = result;
  return result;
}

void sub_1DAB999B0(uint64_t a1)
{
  if (!qword_1EE11F1A0)
  {
    sub_1DAB9AA9C(255, &qword_1EE11E410, &type metadata for WatchlistWidgetEntity, MEMORY[0x1E69E6720]);
    sub_1DAB99A6C(&qword_1EE11E408, &qword_1EE11E410, &type metadata for WatchlistWidgetEntity, sub_1DAB97104);
    v1 = sub_1DACB7044();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE11F1A0);
    }
  }
}

uint64_t sub_1DAB99A6C(unint64_t *a1, unint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1DAB9AA9C(255, a2, a3, MEMORY[0x1E69E6720]);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1DAB99AF8(uint64_t a1)
{
  v2[7] = a1;
  sub_1DAB9A5F4(0, qword_1EE11EF28, type metadata accessor for SymbolEntity, MEMORY[0x1E69E6720]);
  v3 = swift_task_alloc();
  v4 = *v1;
  v2[8] = v3;
  v2[9] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1DAB99BBC, 0, 0);
}

uint64_t sub_1DAB99BBC()
{
  v14 = v0;
  sub_1DACB6FB4();
  v1 = *(v0 + 40);
  if (v1)
  {
    v2 = *(v0 + 48);
  }

  else
  {
    if (qword_1ECBE5B00 != -1)
    {
      swift_once();
    }

    v1 = qword_1ECBE81E8;
    v2 = unk_1ECBE81F0;
    sub_1DACB71F4();
    sub_1DACB71F4();
  }

  v3 = *(v0 + 64);
  v12 = v1;
  *&v13 = v2;
  sub_1DAB99D58(&v10);
  v12 = v10;
  v13 = v11;
  v4 = type metadata accessor for SymbolEntity(0);
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  sub_1DAAF42EC(&v12, v3, &v8);
  v5 = v9;
  *(v0 + 16) = v8;
  *(v0 + 32) = v5;
  sub_1DAAF3184();
  sub_1DACB6E94();

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1DAB99D58@<X0>(void *a2@<X8>)
{
  v3 = sub_1DACB78E4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1DACB7E44();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v8 = sub_1DACB92E4();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v9 = sub_1DACB7904();
  MEMORY[0x1EEE9AC00](v9 - 8);
  sub_1DACB6ED4();
  v16 = v19;
  v17 = v18;
  sub_1DACB6ED4();

  v10 = v18;
  v11 = v19;
  sub_1DAB9A9D4(0, &qword_1EE123A98, sub_1DAA8D9E8, MEMORY[0x1E69E6158], MEMORY[0x1E695A088]);
  sub_1DACB9284();
  sub_1DACB7DF4();
  (*(v4 + 104))(v6, *MEMORY[0x1E6968DF0], v3);
  sub_1DACB7914();
  v12 = sub_1DACB6F34();
  v18 = v10;
  v19 = v11;
  result = sub_1DACB6EE4();
  v14 = v16;
  *a2 = v17;
  a2[1] = v14;
  a2[2] = v12;
  return result;
}

uint64_t sub_1DAB9A09C@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ECBE5B18 != -1)
  {
    swift_once();
  }

  v2 = sub_1DACB7904();
  v3 = __swift_project_value_buffer(v2, qword_1ECBE8210);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1DAB9A144(uint64_t a1, uint64_t a2)
{
  v2 = sub_1DACB7284();
  MEMORY[0x1EEE9AC00](v2);
  (*(v4 + 104))(&v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E695A508]);
  sub_1DAB9A5F4(0, &qword_1ECBE8198, MEMORY[0x1E695A298], MEMORY[0x1E69E6F90]);
  v5 = sub_1DACB70E4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 72);
  v8 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1DACC1D40;
  v10 = v9 + v8;
  v11 = *(v6 + 104);
  v11(v10, *MEMORY[0x1E695A288], v5);
  v11(v10 + v7, *MEMORY[0x1E695A278], v5);
  sub_1DAB9A9D4(0, &qword_1ECBE8240, sub_1DAB980E8, &type metadata for WatchlistWidgetConfigurationIntent, MEMORY[0x1E695A488]);
  sub_1DAB9813C(0);
  sub_1DAB981FC();
  sub_1DAB9828C(&qword_1ECBE8258, sub_1DAB9813C, MEMORY[0x1E695A678]);
  return sub_1DACB7404();
}

uint64_t sub_1DAB9A40C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DAA94754;

  return sub_1DAB99AF8(a1);
}

void sub_1DAB9A4A8()
{
  sub_1DAB9A980();

  JUMPOUT(0x1E12747C0);
}

void sub_1DAB9A4E4(uint64_t a1)
{
  if (!qword_1EE11F190)
  {
    v1 = MEMORY[0x1E69E6370];
    sub_1DAB9AA9C(255, &qword_1EE11D130, MEMORY[0x1E69E6370], MEMORY[0x1E69E6720]);
    sub_1DAB99A6C(&qword_1EE11D128, &qword_1EE11D130, v1, sub_1DAB9A5A0);
    v2 = sub_1DACB7044();
    if (!v3)
    {
      atomic_store(v2, &qword_1EE11F190);
    }
  }
}

unint64_t sub_1DAB9A5A0()
{
  result = qword_1EE11D250;
  if (!qword_1EE11D250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11D250);
  }

  return result;
}

void sub_1DAB9A5F4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_1DAB9A658(uint64_t a1)
{
  result = sub_1DAB9A680();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1DAB9A680()
{
  result = qword_1EE11D7D0;
  if (!qword_1EE11D7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11D7D0);
  }

  return result;
}

unint64_t sub_1DAB9A6D8()
{
  result = qword_1EE11D7C0;
  if (!qword_1EE11D7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11D7C0);
  }

  return result;
}

unint64_t sub_1DAB9A730()
{
  result = qword_1EE11D7D8;
  if (!qword_1EE11D7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11D7D8);
  }

  return result;
}

void sub_1DAB9A834(uint64_t a1)
{
  if (!qword_1ECBE8268)
  {
    sub_1DAB9A9D4(255, &qword_1ECBE8240, sub_1DAB980E8, &type metadata for WatchlistWidgetConfigurationIntent, MEMORY[0x1E695A488]);
    sub_1DAB9813C(255);
    sub_1DAB980E8();
    sub_1DAB981FC();
    sub_1DAB9828C(&qword_1ECBE8258, sub_1DAB9813C, MEMORY[0x1E695A678]);
    v1 = sub_1DACB7424();
    if (!v2)
    {
      atomic_store(v1, &qword_1ECBE8268);
    }
  }
}

uint64_t sub_1DAB9A940(uint64_t result, uint64_t a2)
{
  if (result)
  {
    sub_1DACB71F4();

    return sub_1DACB71F4();
  }

  return result;
}

unint64_t sub_1DAB9A980()
{
  result = qword_1EE11D7E0;
  if (!qword_1EE11D7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11D7E0);
  }

  return result;
}

void sub_1DAB9A9D4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void sub_1DAB9AA3C(uint64_t a1)
{
  if (!qword_1ECBE8280)
  {
    sub_1DAB999B0(255);
    v1 = sub_1DACBA314();
    if (!v2)
    {
      atomic_store(v1, &qword_1ECBE8280);
    }
  }
}

void sub_1DAB9AA9C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1DAB9AAF0()
{
  sub_1DAA8E560(0, &qword_1EE123A80, MEMORY[0x1E6968E10], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = v12 - v1;
  v12[0] = sub_1DACB78E4();
  v3 = *(v12[0] - 8);
  MEMORY[0x1EEE9AC00](v12[0]);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1DACB7E44();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v7 = sub_1DACB92E4();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v8 = sub_1DACB7904();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = sub_1DACB7354();
  __swift_allocate_value_buffer(v10, qword_1ECBE8288);
  __swift_project_value_buffer(v10, qword_1ECBE8288);
  sub_1DACB9284();
  sub_1DACB7DF4();
  (*(v3 + 104))(v5, *MEMORY[0x1E6968DF0], v12[0]);
  sub_1DACB7914();
  (*(v9 + 56))(v2, 1, 1, v8);
  return sub_1DACB7344();
}

uint64_t sub_1DAB9ADF4@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ECBE5B28 != -1)
  {
    swift_once();
  }

  v2 = sub_1DACB7354();
  v3 = __swift_project_value_buffer(v2, qword_1ECBE8288);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1DAB9AE9C()
{
  v0 = MEMORY[0x1E69E6720];
  sub_1DAA8E560(0, &qword_1EE11F170, MEMORY[0x1E695A3E8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v50 = &v33 - v2;
  sub_1DAA8E560(0, &qword_1EE123A80, MEMORY[0x1E6968E10], v0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v36 = &v33 - v4;
  v34 = sub_1DACB78E4();
  v5 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v37 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1DACB7E44();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v8 = sub_1DACB92E4();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v49 = sub_1DACB7904();
  v9 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  sub_1DAA8E560(0, &qword_1ECBE82B8, sub_1DAB9BF68, MEMORY[0x1E69E6F90]);
  sub_1DAB9BF68(0);
  v11 = v10;
  v40 = v10;
  v12 = *(*(v10 - 8) + 72);
  v13 = (*(*(v10 - 8) + 80) + 32) & ~*(*(v10 - 8) + 80);
  v38 = 2 * v12;
  v14 = swift_allocObject();
  v39 = v14;
  *(v14 + 16) = xmmword_1DACC2610;
  v15 = (v14 + v13);
  v35 = *(v11 + 48);
  *v15 = 0;
  sub_1DACB9284();
  sub_1DACB7DF4();
  v43 = *MEMORY[0x1E6968DF0];
  v16 = *(v5 + 104);
  v48 = v5 + 104;
  v17 = v37;
  v16(v37);
  v33 = v16;
  sub_1DACB7914();
  v18 = *(v9 + 56);
  v45 = v9 + 56;
  v46 = v18;
  v19 = v36;
  v18(v36, 1, 1, v49);
  v42 = sub_1DACB7164();
  v20 = *(v42 - 8);
  v41 = *(v20 + 56);
  v44 = v20 + 56;
  v41(v50, 1, 1, v42);
  v47 = v15;
  v21 = v19;
  sub_1DACB7174();
  v22 = &v15[v12];
  v23 = v40;
  v35 = *(v40 + 48);
  *v22 = 1;
  sub_1DACB9284();
  sub_1DACB7DF4();
  v24 = v34;
  (v16)(v17, v43, v34);
  v25 = v17;
  sub_1DACB7914();
  v26 = v21;
  v27 = v21;
  v28 = v49;
  v46(v27, 1, 1, v49);
  v29 = v50;
  v41(v50, 1, 1, v42);
  sub_1DACB7174();
  v30 = &v47[v38];
  v38 = *(v23 + 48);
  *v30 = 2;
  sub_1DACB9284();
  sub_1DACB7DF4();
  (v33)(v25, v43, v24);
  sub_1DACB7914();
  v46(v26, 1, 1, v28);
  v41(v29, 1, 1, v42);
  sub_1DACB7174();
  v31 = sub_1DAB68FA4(v39);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_1ECBE82A0 = v31;
  return result;
}

uint64_t sub_1DAB9B54C()
{
  if (qword_1ECBE5B30 != -1)
  {
    swift_once();
  }

  return sub_1DACB71E4();
}

uint64_t sub_1DAB9B5A8@<X0>(char *a3@<X8>)
{
  v4 = sub_1DACB9F04();

  v6 = 3;
  if (v4 < 3)
  {
    v6 = v4;
  }

  *a3 = v6;
  return result;
}

uint64_t sub_1DAB9B610()
{
  v1 = 0x737961776C61;
  if (*v0 != 1)
  {
    v1 = 0x726576656ELL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x756F487265746661;
  }
}

uint64_t sub_1DAB9B668(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE600000000000000;
  v4 = 0x737961776C61;
  if (v2 != 1)
  {
    v4 = 0x726576656ELL;
    v3 = 0xE500000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x756F487265746661;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xEA00000000007372;
  }

  v7 = 0xE600000000000000;
  v8 = 0x737961776C61;
  if (*a2 != 1)
  {
    v8 = 0x726576656ELL;
    v7 = 0xE500000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x756F487265746661;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xEA00000000007372;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1DACBA174();
  }

  return v11 & 1;
}

unint64_t sub_1DAB9B760()
{
  result = qword_1EE120DC8;
  if (!qword_1EE120DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE120DC8);
  }

  return result;
}

uint64_t sub_1DAB9B7B4()
{
  sub_1DACBA284();
  sub_1DACB9404();

  return sub_1DACBA2C4();
}

uint64_t sub_1DAB9B854(uint64_t a1)
{
  sub_1DACB9404();
}

uint64_t sub_1DAB9B8E0(uint64_t a1)
{
  sub_1DACBA284();
  sub_1DACB9404();

  return sub_1DACBA2C4();
}

void sub_1DAB9B988(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEA00000000007372;
  v4 = 0xE600000000000000;
  v5 = 0x737961776C61;
  if (v2 != 1)
  {
    v5 = 0x726576656ELL;
    v4 = 0xE500000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x756F487265746661;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_1DAB9B9E8()
{
  result = qword_1EE120DF0;
  if (!qword_1EE120DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE120DF0);
  }

  return result;
}

unint64_t sub_1DAB9BA40()
{
  result = qword_1EE120E00;
  if (!qword_1EE120E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE120E00);
  }

  return result;
}

unint64_t sub_1DAB9BA98()
{
  result = qword_1EE120DC0;
  if (!qword_1EE120DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE120DC0);
  }

  return result;
}

unint64_t sub_1DAB9BAFC()
{
  result = qword_1EE120DE0;
  if (!qword_1EE120DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE120DE0);
  }

  return result;
}

unint64_t sub_1DAB9BB50()
{
  result = qword_1EE120E08;
  if (!qword_1EE120E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE120E08);
  }

  return result;
}

unint64_t sub_1DAB9BBA8()
{
  result = qword_1EE120E10;
  if (!qword_1EE120E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE120E10);
  }

  return result;
}

uint64_t sub_1DAB9BBFC@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ECBE5B28 != -1)
  {
    swift_once();
  }

  v2 = sub_1DACB7354();
  v3 = __swift_project_value_buffer(v2, qword_1ECBE8288);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1DAB9BCF4(uint64_t a1)
{
  v2 = sub_1DAB950C4();

  return MEMORY[0x1EEDB2C20](a1, v2);
}

unint64_t sub_1DAB9BD44()
{
  result = qword_1EE120DD8;
  if (!qword_1EE120DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE120DD8);
  }

  return result;
}

unint64_t sub_1DAB9BD9C()
{
  result = qword_1EE120DB8;
  if (!qword_1EE120DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE120DB8);
  }

  return result;
}

uint64_t sub_1DAB9BDF4()
{
  if (qword_1ECBE5B30 != -1)
  {
    swift_once();
  }

  return sub_1DACB71E4();
}

uint64_t sub_1DAB9BE50(uint64_t a1)
{
  v2 = sub_1DAB9BBA8();

  return MEMORY[0x1EEDB3D68](a1, v2);
}

unint64_t sub_1DAB9BEA0()
{
  result = qword_1ECBE82A8;
  if (!qword_1ECBE82A8)
  {
    sub_1DAB9BEF8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE82A8);
  }

  return result;
}

void sub_1DAB9BEF8()
{
  if (!qword_1ECBE82B0)
  {
    v0 = sub_1DACB9724();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECBE82B0);
    }
  }
}

void sub_1DAB9BF68(uint64_t a1)
{
  if (!qword_1ECBE7E30)
  {
    sub_1DACB7184();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1ECBE7E30);
    }
  }
}

uint64_t sub_1DAB9BFD8@<X0>(__int128 *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1DACB78E4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1DACB7E44();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v9 = sub_1DACB92E4();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v10 = sub_1DACB7904();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v11 = a1[7];
  v34 = a1[6];
  v35 = v11;
  v36 = *(a1 + 16);
  v12 = a1[3];
  v30 = a1[2];
  v31 = v12;
  v13 = a1[5];
  v32 = a1[4];
  v33 = v13;
  v14 = a1[1];
  v28 = *a1;
  v29 = v14;
  sub_1DAA8D96C(0, &qword_1EE123A98, sub_1DAA8D9E8, MEMORY[0x1E69E6158], MEMORY[0x1E695A088]);
  sub_1DACB9284();
  sub_1DACB7DF4();
  v15 = *MEMORY[0x1E6968DF0];
  v16 = *(v5 + 104);
  v16(v7, v15, v4);
  sub_1DACB7914();
  v26 = sub_1DACB6F34();
  *a2 = v26;
  sub_1DACB9284();
  sub_1DACB7DF4();
  v16(v7, v15, v4);
  sub_1DACB7914();
  v25 = sub_1DACB6F34();
  a2[1] = v25;
  sub_1DACB9284();
  sub_1DACB7DF4();
  v16(v7, v15, v4);
  sub_1DACB7914();
  v24 = sub_1DACB6F34();
  a2[2] = v24;
  sub_1DACB9284();
  sub_1DACB7DF4();
  v16(v7, v15, v4);
  sub_1DACB7914();
  v17 = sub_1DACB6F34();
  v19 = *(&v32 + 1);
  v18 = v33;
  a2[3] = v17;
  a2[4] = v19;
  v20 = *(&v33 + 1);
  v21 = v34;
  a2[5] = v18;
  a2[6] = v20;
  a2[7] = v21;
  v22 = v29;
  v27 = v29;
  sub_1DACB71E4();
  sub_1DACB71E4();
  sub_1DACB71E4();
  sub_1DACB6EE4();
  v27 = v22;
  sub_1DACB71E4();
  sub_1DACB6EE4();
  v27 = v30;
  sub_1DACB71E4();
  sub_1DACB6EE4();
  v27 = v31;
  sub_1DACB71E4();
  sub_1DACB6EE4();
  return sub_1DAA9B1C8(&v28);
}

double sub_1DAB9C4C0@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[4];
  v3 = a1[5];
  v5 = a1[7];
  v22 = a1[6];
  sub_1DACB6ED4();
  sub_1DACB6ED4();
  sub_1DACB6ED4();
  sub_1DACB71E4();
  sub_1DACB71E4();
  sub_1DACB71E4();
  MEMORY[0x1E1276F20](58, 0xE100000000000000);
  MEMORY[0x1E1276F20]();
  v6 = qword_1EE122610;
  sub_1DACB71E4();
  if (v6 != -1)
  {
    swift_once();
  }

  v7 = qword_1EE13E388;
  if (*(qword_1EE13E388 + 16))
  {
    v8 = sub_1DAA4BF3C(v23, v24);
    if (v9)
    {
      v10 = v8;

      v11 = (*(v7 + 56) + 16 * v10);
      v13 = *v11;
      v12 = v11[1];
LABEL_8:
      sub_1DACB71E4();
      goto LABEL_9;
    }
  }

  v12 = v24;
  v13 = v23;
  if (!v3)
  {
    goto LABEL_8;
  }

  v13 = v4;
  v12 = v3;
LABEL_9:
  v14 = qword_1EE13E390;
  if (*(qword_1EE13E390 + 16) && (v15 = sub_1DAA4BF3C(v23, v24), (v16 & 1) != 0))
  {
    v17 = v15;

    v18 = (*(v14 + 56) + 16 * v17);
    v20 = *v18;
    v19 = v18[1];
    sub_1DACB71E4();

    v5 = v19;
  }

  else
  {

    if (v5)
    {

      v20 = v22;
    }

    else
    {
      v20 = v23;
      v5 = v24;
    }
  }

  *a2 = v23;
  *(a2 + 8) = v24;
  *(a2 + 16) = v23;
  *(a2 + 24) = v24;
  *(a2 + 32) = v23;
  *(a2 + 40) = v24;
  *(a2 + 48) = v23;
  *(a2 + 56) = v24;
  *(a2 + 64) = 0;
  *(a2 + 72) = v13;
  *(a2 + 80) = v12;
  *(a2 + 88) = v20;
  *(a2 + 96) = v5;
  result = 0.0;
  *(a2 + 104) = 0u;
  *(a2 + 120) = 0u;
  return result;
}

uint64_t sub_1DAB9C76C(void *a1, uint64_t *a2)
{
  sub_1DACB71E4();
  sub_1DACB71E4();
  sub_1DACB71F4();
  sub_1DACB71F4();
  sub_1DACB71F4();
  sub_1DACB71F4();
  sub_1DACB71E4();
  sub_1DACB6EE4();
}

uint64_t (*sub_1DAB9C864(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1DACB6EC4();
  return sub_1DAAD9D74;
}

uint64_t sub_1DAB9C930(void *a1, uint64_t *a2)
{
  sub_1DACB71E4();
  sub_1DACB71E4();
  sub_1DACB71F4();
  sub_1DACB71F4();
  sub_1DACB71F4();
  sub_1DACB71F4();
  sub_1DACB71E4();
  sub_1DACB6EE4();
}

uint64_t (*sub_1DAB9CA2C(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1DACB6EC4();
  return sub_1DAADD2B0;
}

uint64_t sub_1DAB9CAD4(void *a1, uint64_t *a2)
{
  sub_1DACB71E4();
  sub_1DACB71E4();
  sub_1DACB71F4();
  sub_1DACB71F4();
  sub_1DACB71F4();
  sub_1DACB71F4();
  sub_1DACB71E4();
  sub_1DACB6EE4();
}

uint64_t (*sub_1DAB9CBD0(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1DACB6EC4();
  return sub_1DAADD2B0;
}

uint64_t sub_1DAB9CC78(void *a1, uint64_t *a2)
{
  sub_1DACB71E4();
  sub_1DACB71E4();
  sub_1DACB71F4();
  sub_1DACB71F4();
  sub_1DACB71F4();
  sub_1DACB71F4();
  sub_1DACB71E4();
  sub_1DACB6EE4();
}

uint64_t (*sub_1DAB9CD74(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1DACB6EC4();
  return sub_1DAADD2B0;
}

uint64_t sub_1DAB9CDE8()
{
  v1 = *(v0 + 32);
  sub_1DACB71E4();
  return v1;
}

uint64_t sub_1DAB9CE18()
{
  v1 = *(v0 + 48);
  sub_1DACB71E4();
  return v1;
}

uint64_t sub_1DAB9CE48@<X0>(void *a1@<X8>)
{
  if (qword_1EE11E728 != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v1 = *algn_1EE11E738;
  v2 = qword_1EE11E740;
  *a1 = qword_1EE11E730;
  a1[1] = v1;
  a1[2] = v2;
  sub_1DACB71F4();
  sub_1DACB71F4();

  return sub_1DACB71F4();
}

uint64_t sub_1DAB9CED4@<X0>(void *a1@<X8>)
{
  if (qword_1EE11E728 != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v1 = *algn_1EE11E738;
  v2 = qword_1EE11E740;
  *a1 = qword_1EE11E730;
  a1[1] = v1;
  a1[2] = v2;
  sub_1DACB71F4();
  sub_1DACB71F4();

  return sub_1DACB71F4();
}

uint64_t sub_1DAB9CF60@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ECBE5B40 != -1)
  {
    swift_once();
  }

  v2 = sub_1DACB7354();
  v3 = __swift_project_value_buffer(v2, qword_1ECBE82C0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1DAB9D008@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ECBE5B40 != -1)
  {
    swift_once();
  }

  v2 = sub_1DACB7354();
  v3 = __swift_project_value_buffer(v2, qword_1ECBE82C0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1DAB9D0B0(uint64_t a1)
{
  v2 = sub_1DAB823B8();

  return MEMORY[0x1EEDB2C58](a1, v2);
}

uint64_t sub_1DAB9D100@<X0>(uint64_t a1@<X8>)
{
  v20 = a1;
  v2 = MEMORY[0x1E69E6720];
  sub_1DAA8E4FC(0, &qword_1EE11F170, MEMORY[0x1E695A3E8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v19 = v16 - v4;
  sub_1DAA8E4FC(0, &qword_1EE123A80, MEMORY[0x1E6968E10], v2);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v16 - v6;
  v17 = sub_1DACB7904();
  v8 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v18 = v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1DACB92C4();
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v16[1] = v1[2];
  v12 = v1[5];
  v13 = v1[7];
  sub_1DACB92B4();
  sub_1DACB92A4();
  if (!v12)
  {
    if (!v13)
    {
      sub_1DACB6ED4();
    }

    sub_1DACB71E4();
  }

  sub_1DACB71E4();
  sub_1DACB9294();

  sub_1DACB92A4();
  sub_1DACB78F4();
  sub_1DACB92B4();
  sub_1DACB92A4();
  sub_1DACB6ED4();
  sub_1DACB9294();

  sub_1DACB92A4();
  sub_1DACB78F4();
  (*(v8 + 56))(v7, 0, 1, v17);
  v14 = sub_1DACB7164();
  (*(*(v14 - 8) + 56))(v19, 1, 1, v14);
  return sub_1DACB7174();
}

uint64_t sub_1DAB9D478(uint64_t a1)
{
  v2 = sub_1DAB9DB2C();

  return MEMORY[0x1EEDB3F68](a1, v2);
}

uint64_t sub_1DAB9D4D0()
{
  v14 = MEMORY[0x1E6968E10];
  sub_1DAA8E4FC(0, &qword_1EE123A80, MEMORY[0x1E6968E10], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v13 = &v12 - v1;
  v2 = sub_1DACB78E4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1DACB7E44();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v7 = sub_1DACB92E4();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v8 = sub_1DACB7904();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = sub_1DACB7354();
  __swift_allocate_value_buffer(v10, qword_1ECBE82C0);
  __swift_project_value_buffer(v10, qword_1ECBE82C0);
  sub_1DACB9284();
  sub_1DACB7DF4();
  (*(v3 + 104))(v5, *MEMORY[0x1E6968DF0], v2);
  sub_1DACB7914();
  (*(v9 + 56))(v13, 1, 1, v8);
  sub_1DAA8E4FC(0, &qword_1ECBE6D78, v14, MEMORY[0x1E69E6F90]);
  *(swift_allocObject() + 16) = xmmword_1DACCAE40;
  sub_1DACB78D4();
  sub_1DACB78D4();
  sub_1DACB78D4();
  sub_1DACB78D4();
  sub_1DACB78D4();
  sub_1DACB78D4();
  sub_1DACB78D4();
  sub_1DACB78D4();
  sub_1DACB78D4();
  sub_1DACB78D4();
  return sub_1DACB7334();
}

unint64_t sub_1DAB9D974()
{
  result = qword_1EE11E720;
  if (!qword_1EE11E720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11E720);
  }

  return result;
}

unint64_t sub_1DAB9D9CC()
{
  result = qword_1EE11E708;
  if (!qword_1EE11E708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11E708);
  }

  return result;
}

unint64_t sub_1DAB9DA24()
{
  result = qword_1EE11E6E0;
  if (!qword_1EE11E6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11E6E0);
  }

  return result;
}

unint64_t sub_1DAB9DA80()
{
  result = qword_1EE11E700;
  if (!qword_1EE11E700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11E700);
  }

  return result;
}

unint64_t sub_1DAB9DAD4()
{
  result = qword_1EE11E6F8;
  if (!qword_1EE11E6F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11E6F8);
  }

  return result;
}

unint64_t sub_1DAB9DB2C()
{
  result = qword_1EE11E6F0;
  if (!qword_1EE11E6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11E6F0);
  }

  return result;
}

unint64_t sub_1DAB9DB84()
{
  result = qword_1EE11F158;
  if (!qword_1EE11F158)
  {
    sub_1DAA8D96C(255, &qword_1EE11F150, sub_1DAADD25C, &type metadata for SymbolWidgetEntity, MEMORY[0x1E695A570]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11F158);
  }

  return result;
}

unint64_t sub_1DAB9DC18()
{
  result = qword_1EE11E6E8;
  if (!qword_1EE11E6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11E6E8);
  }

  return result;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1DAB9DC80(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_1DAB9DCC8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1DAB9DD34@<X0>(uint64_t *a1@<X8>)
{
  sub_1DAB9DDA0(0);
  sub_1DACB6D94();
  sub_1DACB6D84();
  result = sub_1DACB6D54();
  *a1 = result;
  return result;
}

void sub_1DAB9DDA0(uint64_t a1)
{
  if (!qword_1EE123AB0)
  {
    sub_1DAADA3B0();
    v1 = sub_1DACB6D64();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE123AB0);
    }
  }
}

uint64_t sub_1DAB9DDF8(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 88) = a1;
  *(v2 + 96) = v3;
  return MEMORY[0x1EEE6DFA0](sub_1DAB9DE1C, 0, 0);
}

uint64_t sub_1DAB9DE1C()
{
  v15 = v0;
  if (qword_1EE11D388 != -1)
  {
    swift_once();
  }

  v1 = sub_1DACB8C94();
  v0[13] = __swift_project_value_buffer(v1, qword_1EE11D390);
  sub_1DACB71E4();
  v2 = sub_1DACB8C74();
  v3 = sub_1DACB9914();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[11];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v14 = v6;
    *v5 = 136315138;
    v0[10] = v4;
    sub_1DAA488A4(0, &qword_1EE123EA0, MEMORY[0x1E69E6158]);
    sub_1DAA587CC();
    v7 = sub_1DACB9214();
    v9 = sub_1DAA7ABE4(v7, v8, &v14);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_1DAA3F000, v2, v3, "Fetching watchlists for entities with identifiers=[%s]", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x1E1278C00](v6, -1, -1);
    MEMORY[0x1E1278C00](v5, -1, -1);
  }

  sub_1DACB6D24();
  v10 = v0[5];
  v11 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v10);
  v0[14] = (*(v11 + 40))(1, v10, v11);
  v12 = swift_task_alloc();
  v0[15] = v12;
  *v12 = v0;
  v12[1] = sub_1DAB9E070;

  return MEMORY[0x1EEE44EE0](v0 + 7);
}

uint64_t sub_1DAB9E070()
{
  v2 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v3 = sub_1DAB7CDDC;
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1((v2 + 16));
    v3 = sub_1DAB9E194;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DAB9E194()
{
  v62 = v0;
  v1 = v0[7];
  sub_1DACB71E4();
  sub_1DACB71E4();
  v2 = sub_1DACB8C74();
  v3 = sub_1DACB9914();

  v47 = v1;
  v43 = v0;
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[11];
    v5 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    *&v55 = v52;
    *v5 = 136315394;
    v0[8] = v4;
    sub_1DAA488A4(0, &qword_1EE123EA0, MEMORY[0x1E69E6158]);
    sub_1DAA587CC();
    v6 = sub_1DACB9214();
    v8 = sub_1DAA7ABE4(v6, v7, &v55);

    *(v5 + 4) = v8;
    *(v5 + 12) = 2080;
    v9 = *(v1 + 16);
    v10 = MEMORY[0x1E69E7CC0];
    if (v9)
    {
      v48 = v3;
      v50 = v2;
      *&v56 = MEMORY[0x1E69E7CC0];
      sub_1DAA5859C(0, v9, 0);
      v10 = v56;
      v11 = *(v56 + 16);
      v12 = 16 * v11;
      v13 = (v1 + 40);
      do
      {
        v14 = *(v13 - 1);
        v15 = *v13;
        *&v56 = v10;
        v16 = v11 + 1;
        v17 = *(v10 + 24);
        sub_1DACB71E4();
        if (v11 >= v17 >> 1)
        {
          sub_1DAA5859C((v17 > 1), v16, 1);
          v10 = v56;
        }

        *(v10 + 16) = v16;
        v18 = v10 + v12;
        *(v18 + 32) = v14;
        *(v18 + 40) = v15;
        v12 += 16;
        v13 += 6;
        ++v11;
        --v9;
      }

      while (v9);
      v0 = v43;
      v1 = v47;
      v2 = v50;
      v3 = v48;
    }

    v0[9] = v10;
    v19 = sub_1DACB9214();
    v21 = v20;

    v22 = sub_1DAA7ABE4(v19, v21, &v55);

    *(v5 + 14) = v22;
    _os_log_impl(&dword_1DAA3F000, v2, v3, "Fetching watchlists for entities with identifiers=[%s], watchlists=[%s]", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E1278C00](v52, -1, -1);
    MEMORY[0x1E1278C00](v5, -1, -1);
  }

  v23 = v0[11];
  v46 = *(v23 + 16);
  if (v46)
  {
    v24 = 0;
    v44 = (v1 + 73);
    v45 = v23 + 32;
    v25 = MEMORY[0x1E69E7CC0];
    do
    {
      v26 = v44;
      v27 = (v45 + 16 * v24);
      v28 = v27[1];
      v51 = v25;
      v53 = *v27;
      v49 = v24 + 1;
      v29 = *(v1 + 16) + 1;
      while (1)
      {
        if (!--v29)
        {
          sub_1DACB71E4();
          sub_1DAB95AA4(v53, v28, 0, 0xE000000000000000, &v56);
          v38 = v56;
          goto LABEL_22;
        }

        v30 = *(v26 - 41);
        v31 = *(v26 - 33);
        v32 = *(v26 - 25);
        v33 = *(v26 - 17);
        v34 = *(v26 - 9);
        v35 = *(v26 - 1);
        v36 = *v26;
        if (v33 == v53 && v34 == v28)
        {
          break;
        }

        v26 += 48;
        if (sub_1DACBA174())
        {
          goto LABEL_21;
        }
      }

      v33 = v53;
LABEL_21:
      *&v56 = v30;
      *(&v56 + 1) = v31;
      v57 = v32;
      v58 = v33;
      v59 = v34;
      v60 = v35;
      v61 = v36;
      sub_1DACB71E4();
      sub_1DACB71E4();
      sub_1DACB71E4();
      sub_1DAB960EC(&v56, &v55);
      v38 = v55;
LABEL_22:
      v54 = v38;
      v25 = v51;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v25 = sub_1DAADC3A8(0, *(v51 + 2) + 1, 1, v51);
      }

      v40 = *(v25 + 2);
      v39 = *(v25 + 3);
      if (v40 >= v39 >> 1)
      {
        v25 = sub_1DAADC3A8((v39 > 1), v40 + 1, 1, v25);
      }

      *(v25 + 2) = v40 + 1;
      *&v25[16 * v40 + 32] = v54;
      v1 = v47;
      v24 = v49;
    }

    while (v49 != v46);
  }

  else
  {
    v25 = MEMORY[0x1E69E7CC0];
  }

  v41 = v43[1];

  return v41(v25);
}

uint64_t sub_1DAB9E630()
{
  if (qword_1EE11D388 != -1)
  {
    swift_once();
  }

  v1 = sub_1DACB8C94();
  v0[10] = __swift_project_value_buffer(v1, qword_1EE11D390);
  v2 = sub_1DACB8C74();
  v3 = sub_1DACB9914();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1DAA3F000, v2, v3, "Fetching watchlists for suggested entities.", v4, 2u);
    MEMORY[0x1E1278C00](v4, -1, -1);
  }

  sub_1DACB6D24();
  v5 = v0[5];
  v6 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v5);
  v0[11] = (*(v6 + 40))(1, v5, v6);
  v7 = swift_task_alloc();
  v0[12] = v7;
  *v7 = v0;
  v7[1] = sub_1DAB9E7D0;

  return MEMORY[0x1EEE44EE0](v0 + 7);
}

uint64_t sub_1DAB9E7D0()
{
  v2 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v3 = sub_1DAB9EC40;
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1((v2 + 16));
    v3 = sub_1DAB9E8F4;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DAB9E8F4()
{
  v44 = v0;
  v1 = v0[7];
  sub_1DACB71E4();
  v2 = sub_1DACB8C74();
  v3 = sub_1DACB9914();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v6 = v5;
    v41[0] = v5;
    *v4 = 136315138;
    v7 = *(v1 + 16);
    v8 = MEMORY[0x1E69E7CC0];
    if (v7)
    {
      v34 = v5;
      v35 = v4;
      v36 = v3;
      v37 = v2;
      v42[0] = MEMORY[0x1E69E7CC0];
      sub_1DAA5859C(0, v7, 0);
      v8 = v42[0];
      v9 = *(v42[0] + 16);
      v10 = 16 * v9;
      v38 = v1;
      v11 = (v1 + 40);
      do
      {
        v12 = *(v11 - 1);
        v13 = *v11;
        v42[0] = v8;
        v14 = v9 + 1;
        v15 = *(v8 + 24);
        sub_1DACB71E4();
        if (v9 >= v15 >> 1)
        {
          sub_1DAA5859C((v15 > 1), v14, 1);
          v8 = v42[0];
        }

        *(v8 + 16) = v14;
        v16 = v8 + v10;
        *(v16 + 32) = v12;
        *(v16 + 40) = v13;
        v10 += 16;
        v11 += 6;
        ++v9;
        --v7;
      }

      while (v7);
      v2 = v37;
      v1 = v38;
      v3 = v36;
      v6 = v34;
      v4 = v35;
    }

    v0[8] = v8;
    sub_1DAA488A4(0, &qword_1EE123EA0, MEMORY[0x1E69E6158]);
    sub_1DAA587CC();
    v17 = sub_1DACB9214();
    v19 = v18;

    v20 = sub_1DAA7ABE4(v17, v19, v41);

    *(v4 + 4) = v20;
    _os_log_impl(&dword_1DAA3F000, v2, v3, "Fetched watchlists for suggested entities, watchlists=[%s]", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x1E1278C00](v6, -1, -1);
    MEMORY[0x1E1278C00](v4, -1, -1);
  }

  v21 = *(v1 + 16);
  if (v21)
  {
    v40 = MEMORY[0x1E69E7CC0];
    sub_1DAB25D98(0, v21, 0);
    v22 = v40;
    v23 = v1 + 73;
    do
    {
      v24 = *(v23 - 33);
      v25 = *(v23 - 25);
      v26 = *(v23 - 17);
      v27 = *(v23 - 9);
      v28 = *(v23 - 1);
      v42[0] = *(v23 - 41);
      v42[1] = v24;
      v42[2] = v25;
      v42[3] = v26;
      v42[4] = v27;
      v43 = v28;
      sub_1DACB71E4();
      sub_1DACB71E4();
      sub_1DACB71E4();
      sub_1DAB960EC(v42, v41);
      v29 = *v41;
      v31 = *(v40 + 16);
      v30 = *(v40 + 24);
      if (v31 >= v30 >> 1)
      {
        v39 = *v41;
        sub_1DAB25D98((v30 > 1), v31 + 1, 1);
        v29 = v39;
      }

      v23 += 48;
      *(v40 + 16) = v31 + 1;
      *(v40 + 16 * v31 + 32) = v29;
      --v21;
    }

    while (v21);
  }

  else
  {

    v22 = MEMORY[0x1E69E7CC0];
  }

  v32 = v0[1];

  return v32(v22);
}

uint64_t sub_1DAB9EC40()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DAB9ECCC()
{
  v14 = v0;
  if (qword_1ECBE5B00 != -1)
  {
    swift_once();
  }

  v1 = qword_1ECBE81E8;
  v2 = unk_1ECBE81F0;
  v3 = qword_1EE11D388;
  sub_1DACB71F4();
  sub_1DACB71F4();
  if (v3 != -1)
  {
    swift_once();
  }

  v4 = sub_1DACB8C94();
  __swift_project_value_buffer(v4, qword_1EE11D390);
  sub_1DACB71F4();
  sub_1DACB71F4();
  v5 = sub_1DACB8C74();
  v6 = sub_1DACB9914();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v13 = v8;
    *v7 = 136315138;
    sub_1DACB6ED4();
    v9 = sub_1DAA7ABE4(v0[2], v0[3], &v13);

    *(v7 + 4) = v9;
    _os_log_impl(&dword_1DAA3F000, v5, v6, "Default watchlist entity requested, returning '%s' watchlist", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x1E1278C00](v8, -1, -1);
    MEMORY[0x1E1278C00](v7, -1, -1);
  }

  v10 = v0[4];
  *v10 = v1;
  v10[1] = v2;
  v11 = v0[1];

  return v11();
}

uint64_t sub_1DAB9EECC@<X0>(uint64_t *a1@<X8>)
{
  sub_1DAB9DDA0(0);
  sub_1DACB6D94();
  sub_1DACB6D84();
  result = sub_1DACB6D54();
  *a1 = result;
  return result;
}

uint64_t sub_1DAB9EF38(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DAB07898;

  return sub_1DAB9DDF8(a1);
}

uint64_t sub_1DAB9EFCC(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1DAB07890;

  return sub_1DAB9E60C();
}

uint64_t sub_1DAB9F05C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_1DAB97004();
  *v5 = v2;
  v5[1] = sub_1DAA94754;

  return MEMORY[0x1EEDB2ED8](a1, a2, v6);
}

uint64_t sub_1DAB9F110(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DAA94754;

  return sub_1DAB9ECAC(a1);
}

uint64_t sub_1DAB9F1A8(uint64_t a1, uint64_t a2)
{
  v3[14] = a1;
  v3[15] = a2;
  v3[16] = *v2;
  return MEMORY[0x1EEE6DFA0](sub_1DAB9F1D0, 0, 0);
}

uint64_t sub_1DAB9F1D0()
{
  v13 = v0;
  if (qword_1EE11D388 != -1)
  {
    swift_once();
  }

  v1 = sub_1DACB8C94();
  v0[17] = __swift_project_value_buffer(v1, qword_1EE11D390);
  sub_1DACB71E4();
  v2 = sub_1DACB8C74();
  v3 = sub_1DACB9914();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[14];
    v4 = v0[15];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v12 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_1DAA7ABE4(v5, v4, &v12);
    _os_log_impl(&dword_1DAA3F000, v2, v3, "Querying watchlists matching string=%s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x1E1278C00](v7, -1, -1);
    MEMORY[0x1E1278C00](v6, -1, -1);
  }

  sub_1DACB6D24();
  v8 = v0[5];
  v9 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v8);
  v0[18] = (*(v9 + 40))(1, v8, v9);
  v10 = swift_task_alloc();
  v0[19] = v10;
  *v10 = v0;
  v10[1] = sub_1DAB9F3E0;

  return MEMORY[0x1EEE44EE0](v0 + 11);
}

uint64_t sub_1DAB9F3E0()
{
  v2 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    v3 = sub_1DAB9FC64;
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1((v2 + 16));
    v3 = sub_1DAB9F504;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

void sub_1DAB9F504()
{
  v93 = v0;
  v1 = v0[11];
  sub_1DACB71E4();
  v2 = sub_1DACB8C74();
  v3 = sub_1DACB9914();

  v82 = v1;
  v84 = v0;
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v6 = v5;
    *&v90 = v5;
    *v4 = 136315138;
    v7 = *(v1 + 16);
    v8 = MEMORY[0x1E69E7CC0];
    if (v7)
    {
      v77 = v5;
      v79 = v4;
      v85 = v3;
      v91[0] = MEMORY[0x1E69E7CC0];
      sub_1DAA5859C(0, v7, 0);
      v8 = v91[0];
      v9 = *(v91[0] + 16);
      v10 = 16 * v9;
      v11 = (v1 + 40);
      do
      {
        v12 = *(v11 - 1);
        v13 = *v11;
        v91[0] = v8;
        v14 = v9 + 1;
        v15 = *(v8 + 24);
        sub_1DACB71E4();
        if (v9 >= v15 >> 1)
        {
          sub_1DAA5859C((v15 > 1), v14, 1);
          v8 = v91[0];
        }

        *(v8 + 16) = v14;
        v16 = v8 + v10;
        *(v16 + 32) = v12;
        *(v16 + 40) = v13;
        v10 += 16;
        v11 += 6;
        ++v9;
        --v7;
      }

      while (v7);
      v1 = v82;
      v0 = v84;
      v3 = v85;
      v6 = v77;
      v4 = v79;
    }

    v0[13] = v8;
    sub_1DAA488A4(0, &qword_1EE123EA0, MEMORY[0x1E69E6158]);
    sub_1DAA587CC();
    v17 = sub_1DACB9214();
    v19 = v18;

    v20 = sub_1DAA7ABE4(v17, v19, &v90);

    *(v4 + 4) = v20;
    _os_log_impl(&dword_1DAA3F000, v2, v3, "Fetched all watchlists for property query, watchlists=[%s]", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x1E1278C00](v6, -1, -1);
    MEMORY[0x1E1278C00](v4, -1, -1);
  }

  v21 = *(v1 + 16);
  if (v21)
  {
    v22 = 0;
    v80 = -v21;
    v23 = v1 + 73;
    v73 = v1 + 73;
    v74 = MEMORY[0x1E69E7CC0];
    do
    {
      v24 = (v23 + 48 * v22);
      v25 = v22 + 1;
      while (1)
      {
        if ((v25 - 1) >= *(v1 + 16))
        {
          __break(1u);
          return;
        }

        v86 = v25;
        v26 = *(v24 - 41);
        v27 = *(v24 - 33);
        v28 = *(v24 - 25);
        v75 = *(v24 - 17);
        v29 = *(v24 - 9);
        v76 = *(v24 - 1);
        v78 = *v24;
        v84[7] = sub_1DACB93A4();
        v84[8] = v30;
        v84[9] = sub_1DACB93A4();
        v84[10] = v31;
        sub_1DAA642D8();
        sub_1DACB71E4();
        sub_1DACB71E4();
        sub_1DACB71E4();
        v32 = sub_1DACB9B64();

        if (v32)
        {
          break;
        }

        v25 = v86 + 1;
        v1 = v82;
        v24 += 48;
        if (v80 + v86 + 1 == 1)
        {
          goto LABEL_23;
        }
      }

      v33 = v74;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v91[0] = v74;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1DAB25C88(0, *(v74 + 16) + 1, 1);
        v33 = v91[0];
      }

      v1 = v82;
      v35 = v78;
      v37 = *(v33 + 16);
      v36 = *(v33 + 24);
      if (v37 >= v36 >> 1)
      {
        sub_1DAB25C88((v36 > 1), v37 + 1, 1);
        v35 = v78;
        v33 = v91[0];
      }

      *(v33 + 16) = v37 + 1;
      v74 = v33;
      v38 = v33 + 48 * v37;
      *(v38 + 32) = v26;
      *(v38 + 40) = v27;
      *(v38 + 48) = v28;
      *(v38 + 56) = v75;
      *(v38 + 64) = v29;
      *(v38 + 72) = v76;
      *(v38 + 73) = v35;
      v22 = v86;
      v23 = v73;
    }

    while (v80 + v86);
  }

  else
  {
    v74 = MEMORY[0x1E69E7CC0];
  }

LABEL_23:
  v39 = v84;

  sub_1DACB71E4();
  v40 = v74;
  sub_1DACB71F4();
  v41 = sub_1DACB8C74();
  v42 = sub_1DACB9914();

  if (os_log_type_enabled(v41, v42))
  {
    v43 = v84[14];
    v44 = v84[15];
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    *&v90 = v46;
    *v45 = 136315394;
    *(v45 + 4) = sub_1DAA7ABE4(v43, v44, &v90);
    *(v45 + 12) = 2080;
    v47 = *(v74 + 16);
    v48 = MEMORY[0x1E69E7CC0];
    if (v47)
    {
      v81 = v46;
      v83 = v42;
      v87 = v41;
      v91[0] = MEMORY[0x1E69E7CC0];
      sub_1DAA5859C(0, v47, 0);
      v48 = v91[0];
      v49 = *(v91[0] + 16);
      v50 = 16 * v49;
      v51 = (v74 + 40);
      do
      {
        v52 = *(v51 - 1);
        v53 = *v51;
        v91[0] = v48;
        v54 = v49 + 1;
        v55 = *(v48 + 24);
        sub_1DACB71E4();
        if (v49 >= v55 >> 1)
        {
          sub_1DAA5859C((v55 > 1), v54, 1);
          v48 = v91[0];
        }

        *(v48 + 16) = v54;
        v56 = v48 + v50;
        *(v56 + 32) = v52;
        *(v56 + 40) = v53;
        v50 += 16;
        v51 += 6;
        ++v49;
        --v47;
      }

      while (v47);
      v39 = v84;
      v41 = v87;
      v40 = v74;
      v42 = v83;
      v46 = v81;
    }

    v39[12] = v48;
    sub_1DAA488A4(0, &qword_1EE123EA0, MEMORY[0x1E69E6158]);
    sub_1DAA587CC();
    v57 = sub_1DACB9214();
    v59 = v58;

    v60 = sub_1DAA7ABE4(v57, v59, &v90);

    *(v45 + 14) = v60;
    _os_log_impl(&dword_1DAA3F000, v41, v42, "Filtered down watchlists matching string=%s, watchlists=[%s]", v45, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E1278C00](v46, -1, -1);
    MEMORY[0x1E1278C00](v45, -1, -1);
  }

  v61 = *(v40 + 16);
  if (v61)
  {
    v89 = MEMORY[0x1E69E7CC0];
    sub_1DAB25D98(0, v61, 0);
    v62 = v89;
    v63 = v40 + 73;
    do
    {
      v64 = *(v63 - 33);
      v65 = *(v63 - 25);
      v66 = *(v63 - 17);
      v67 = *(v63 - 9);
      v68 = *(v63 - 1);
      v91[0] = *(v63 - 41);
      v91[1] = v64;
      v91[2] = v65;
      v91[3] = v66;
      v91[4] = v67;
      v92 = v68;
      sub_1DACB71E4();
      sub_1DACB71E4();
      sub_1DACB71E4();
      sub_1DAB960EC(v91, &v90);
      v69 = v90;
      v71 = *(v89 + 16);
      v70 = *(v89 + 24);
      if (v71 >= v70 >> 1)
      {
        v88 = v90;
        sub_1DAB25D98((v70 > 1), v71 + 1, 1);
        v69 = v88;
      }

      v63 += 48;
      *(v89 + 16) = v71 + 1;
      *(v89 + 16 * v71 + 32) = v69;
      --v61;
    }

    while (v61);

    v39 = v84;
  }

  else
  {

    v62 = MEMORY[0x1E69E7CC0];
  }

  v72 = v39[1];

  v72(v62);
}