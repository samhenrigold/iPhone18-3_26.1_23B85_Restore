uint64_t sub_1A94576EC(__int128 *a1, uint64_t a2)
{
  v4 = sub_1A957B188();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a1[3];
  v25 = a1[2];
  v26 = v8;
  v27 = *(a1 + 8);
  v10 = *a1;
  v9 = a1[1];
  v22[0] = a1;
  v23 = v10;
  v24 = v9;
  v11 = sub_1A957D548();
  v12 = 1 << *(a2 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(a2 + 56);
  v15 = (v12 + 63) >> 6;
  v22[2] = v5 + 16;
  v22[3] = v11;
  v22[1] = v5 + 8;

  v17 = 0;
  for (i = 0; v14; v17 ^= v21)
  {
    v19 = i;
LABEL_9:
    v20 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
    (*(v5 + 16))(v7, *(a2 + 48) + *(v5 + 72) * (v20 | (v19 << 6)), v4);
    sub_1A9459260(&qword_1EB386498, MEMORY[0x1E6969610], MEMORY[0x1E6969620]);
    v21 = sub_1A957C058();
    result = (*(v5 + 8))(v7, v4);
  }

  while (1)
  {
    v19 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v19 >= v15)
    {

      return MEMORY[0x1AC5863C0](v17);
    }

    v14 = *(a2 + 56 + 8 * v19);
    ++i;
    if (v14)
    {
      i = v19;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void *sub_1A9457918(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_1A9457A70(uint64_t result, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return v3;
}

void *sub_1A9457A90(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 40);
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  sub_1A9457A70(*a1, v5, v6);
  result = sub_1A957C998();
  v9 = v10[0];
  if (v10[0] >> 14 < v7 >> 14)
  {
    __break(1u);
  }

  else
  {
    v10[0] = v4;
    v10[1] = v5;
    v11 = v6;
    v12 = v7;
    v13 = v9;
    sub_1A9453308(v10, v3, v2);
    return sub_1A9458200(v4, v5, v6);
  }

  return result;
}

uint64_t sub_1A9457B5C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_1A94592A8();
  result = MEMORY[0x1AC585770](v2, &type metadata for TTSStringTagger.ScriptTag, v3);
  v11 = result;
  if (v2)
  {
    v5 = (a1 + 48);
    do
    {
      v7 = *(v5 - 2);
      v6 = *(v5 - 1);
      v8 = *v5;
      v5 += 24;
      sub_1A9457A70(v7, v6, v8);
      sub_1A9455564(v9, v7, v6, v8);
      sub_1A9458200(v9[0], v9[1], v10);
      --v2;
    }

    while (v2);
    return v11;
  }

  return result;
}

uint64_t _s12TextToSpeech15TTSStringTaggerC9ScriptTagO2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *(a1 + 16);
  v6 = *a2;
  v5 = *(a2 + 8);
  v7 = *(a2 + 16);
  if (!*(a1 + 16))
  {
    if (*(a2 + 16))
    {
LABEL_26:
      sub_1A9457A70(*a2, *(a2 + 8), v7);
      sub_1A9457A70(v3, v2, v4);
      sub_1A9458200(v3, v2, v4);
      sub_1A9458200(v6, v5, v7);
      return 0;
    }

    v12 = *a1;
    if (v3 != v6 || v2 != v5)
    {
      v8 = sub_1A957D3E8();
      sub_1A9457A70(v6, v5, 0);
      sub_1A9457A70(v3, v2, 0);
      sub_1A9458200(v3, v2, 0);
      v9 = v6;
      v10 = v5;
      v11 = 0;
      goto LABEL_11;
    }

    sub_1A9457A70(v12, v2, 0);
    sub_1A9457A70(v3, v2, 0);
    sub_1A9458200(v3, v2, 0);
    v19 = v3;
    v20 = v2;
    v21 = 0;
LABEL_30:
    sub_1A9458200(v19, v20, v21);
    return 1;
  }

  if (v4 == 1)
  {
    if (v7 == 1)
    {
      sub_1A9457A70(*a2, *(a2 + 8), 1u);
      sub_1A9457A70(v3, v2, 1u);
      v8 = sub_1A9454870(v3, v6);
      sub_1A9458200(v3, v2, 1u);
      v9 = v6;
      v10 = v5;
      v11 = 1;
LABEL_11:
      sub_1A9458200(v9, v10, v11);
      return v8 & 1;
    }

    goto LABEL_26;
  }

  if (!(v3 | v2))
  {
    if (v7 != 2 || (v5 | v6) != 0)
    {
      goto LABEL_26;
    }

    sub_1A9458200(*a1, v2, 2u);
    v19 = 0;
    v20 = 0;
    v21 = 2;
    goto LABEL_30;
  }

  if (v7 != 2 || v6 != 1 || v5 != 0)
  {
    goto LABEL_26;
  }

  sub_1A9458200(*a1, v2, 2u);
  v17 = 1;
  sub_1A9458200(1, 0, 2u);
  return v17;
}

uint64_t _s12TextToSpeech15TTSStringTaggerC25CombinedScriptLanguageTagV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 24);
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 24);
  v7 = *(a1 + 16);
  v8 = *(a2 + 16);
  v13 = *a1;
  v14 = v2;
  v15 = v7;
  v10 = v4;
  v11 = v5;
  v12 = v8;
  sub_1A9457A70(v13, v2, v7);
  sub_1A9457A70(v4, v5, v8);
  LOBYTE(v4) = _s12TextToSpeech15TTSStringTaggerC9ScriptTagO2eeoiySbAE_AEtFZ_0(&v13, &v10);
  sub_1A9458200(v10, v11, v12);
  sub_1A9458200(v13, v14, v15);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  return sub_1A9454A28(v3, v6);
}

unint64_t sub_1A9457EE8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1A937829C(&qword_1EB387790, &qword_1A958F0A8);
    v3 = sub_1A957D128();

    for (i = (a1 + 64); ; i += 40)
    {
      v5 = *(i - 4);
      v6 = *(i - 3);
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      sub_1A9457A70(v7, v8, v9);
      result = sub_1A937A490(v5, v6);
      if (v11)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v3[6] + 16 * result);
      *v12 = v5;
      v12[1] = v6;
      v13 = v3[7] + 24 * result;
      *v13 = v7;
      *(v13 + 8) = v8;
      *(v13 + 16) = v9;
      v14 = v3[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v3[2] = v16;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1A945800C(unint64_t result, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  v5 = &a2[-result];
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_15;
  }

  v8 = a2;
  v9 = *v4;
  v10 = v9 + 32 + 40 * result;
  sub_1A937829C(&qword_1EB387750, &qword_1A958F070);
  result = swift_arrayDestroy();
  v11 = __OFSUB__(a3, v5);
  v12 = a3 - v5;
  if (v11)
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (!v12)
  {
    goto LABEL_10;
  }

  v13 = *(v9 + 16);
  v11 = __OFSUB__(v13, v8);
  v14 = v13 - v8;
  if (v11)
  {
    goto LABEL_16;
  }

  result = v10 + 40 * a3;
  a2 = (v9 + 32 + 40 * v8);
  if (result != a2 || result >= &a2[40 * v14])
  {
    result = memmove(result, a2, 40 * v14);
  }

  v15 = *(v9 + 16);
  v11 = __OFADD__(v15, v12);
  v16 = v15 + v12;
  if (v11)
  {
    goto LABEL_17;
  }

  *(v9 + 16) = v16;
LABEL_10:
  if (a3 <= 0)
  {
    return result;
  }

  v17 = *a4;
  v18 = *(a4 + 16);
  *(v10 + 32) = *(a4 + 32);
  *v10 = v17;
  *(v10 + 16) = v18;
  a2 = v19;
  result = a4;
  if (a3 != 1)
  {
LABEL_18:
    result = sub_1A9459310(result, a2);
    __break(1u);
    return result;
  }

  return sub_1A9459310(a4, v19);
}

unint64_t sub_1A945812C(unint64_t result, _BYTE *a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v5 = *v3;
  v6 = *(*v3 + 16);
  if (v6 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v7 = result;
  v8 = &a2[-result];
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v9 = __OFSUB__(1, v8);
  v10 = 1 - v8;
  if (v9)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = v6 + v10;
  if (__OFADD__(v6, v10))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v5;
  if (!isUniquelyReferenced_nonNull_native || v11 > v5[3] >> 1)
  {
    if (v6 <= v11)
    {
      v14 = v11;
    }

    else
    {
      v14 = v6;
    }

    v5 = sub_1A945705C(isUniquelyReferenced_nonNull_native, v14, 1, v5);
    *v3 = v5;
  }

  result = sub_1A945800C(v7, a2, 1, a3);
  *v3 = v5;
  return result;
}

uint64_t sub_1A9458200(uint64_t result, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return v3;
}

uint64_t sub_1A9458220(uint64_t result, uint64_t a2, unsigned __int8 a3)
{
  if (a3 != 0xFF)
  {
    return sub_1A9458200(result, a2, a3);
  }

  return result;
}

uint64_t sub_1A9458234(uint64_t result, uint64_t a2, unsigned __int8 a3)
{
  if (a3 != 0xFF)
  {
    return sub_1A9457A70(result, a2, a3);
  }

  return result;
}

uint64_t sub_1A9458248(uint64_t a1)
{
  v2 = v1[6];
  v3 = v1[7];
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  result = sub_1A9452E70(*a1, v5, v6, v1[4]);
  v9 = result;
  if (result)
  {
    return v9 & 1;
  }

  if (v2 >> 14 >= v7 >> 14)
  {
    v10[0] = v4;
    v10[1] = v5;
    v11 = v6;
    v12 = v7;
    v13 = v2;
    sub_1A9457A70(v4, v5, v6);
    sub_1A9453308(v10, v3, v14);
    sub_1A9458200(v4, v5, v6);
    return v9 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1A945833C(uint64_t a1)
{
  v3 = sub_1A937829C(&qword_1EB387728, &qword_1A958F048);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v69 - v4;
  v83 = sub_1A957B2E8();
  v6 = *(v83 - 8);
  v7 = MEMORY[0x1EEE9AC00](v83);
  v77 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v76 = &v69 - v9;
  v10 = sub_1A937829C(&qword_1EB386A68, &qword_1A9587F40);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v78 = &v69 - v11;
  v84 = sub_1A957B308();
  v12 = *(v84 - 8);
  MEMORY[0x1EEE9AC00](v84);
  v14 = &v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v1 + 16) = 0;
  v15 = MEMORY[0x1E69E7CC8];
  *(v1 + 32) = MEMORY[0x1E69E7CC8];
  v16 = swift_slowAlloc();
  v69 = v1;
  *(v1 + 40) = v16;
  v17 = *(a1 + 16);
  if (v17)
  {
    v19 = *(v12 + 16);
    v18 = v12 + 16;
    v81 = v14;
    v82 = v19;
    v20 = *(v18 + 64);
    v72 = (v20 + 32) & ~v20;
    v73 = v20;
    v21 = a1 + v72;
    v22 = *(v18 + 56);
    v23 = (v6 + 8);
    v85 = MEMORY[0x1E69E7CC8];
    v74 = (v18 - 8);
    v71 = xmmword_1A9587160;
    v24 = v78;
    v70 = (v6 + 8);
    v75 = v5;
    v79 = v22;
    v80 = v18;
    while (1)
    {
      v26 = v81;
      v82(v81, v21, v84);
      v27 = v76;
      sub_1A957B2F8();
      sub_1A957B2B8();
      v28 = *v23;
      (*v23)(v27, v83);
      v29 = sub_1A957B188();
      v30 = *(v29 - 8);
      if ((*(v30 + 48))(v24, 1, v29) == 1)
      {
        sub_1A937B960(v24, &qword_1EB386A68, &qword_1A9587F40);
      }

      else
      {
        v31 = sub_1A957B148();
        v32 = v24;
        v33 = v31;
        v35 = v34;
        (*(v30 + 8))(v32, v29);
        if (v33 == 7236963 && v35 == 0xE300000000000000)
        {

          v36 = v85;
LABEL_11:
          v24 = v78;
          if (*(v36 + 16) && (v38 = sub_1A937A490(1936613704, 0xE400000000000000), (v39 & 1) != 0))
          {
            v40 = *(*(v36 + 56) + 8 * v38);
          }

          else
          {
            v40 = MEMORY[0x1E69E7CC0];
          }

          sub_1A937829C(&qword_1EB386B18, &unk_1A95916F0);
          v41 = v72;
          v42 = swift_allocObject();
          *(v42 + 16) = v71;
          v82((v42 + v41), v26, v84);
          v86 = v40;
          sub_1A942AF14(v42);
          v43 = v85;
          v44 = v86;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v86 = v43;
          sub_1A9456AEC(v44, 1936613704, 0xE400000000000000, isUniquelyReferenced_nonNull_native);
          v85 = v86;
          goto LABEL_17;
        }

        v37 = sub_1A957D3E8();

        v36 = v85;
        if (v37)
        {
          goto LABEL_11;
        }

        v24 = v78;
      }

LABEL_17:
      v46 = v77;
      sub_1A957B2F8();
      sub_1A957B2D8();
      v28(v46, v83);
      v47 = sub_1A957B238();
      v48 = *(v47 - 8);
      if ((*(v48 + 48))(v5, 1, v47) == 1)
      {
        (*v74)(v26, v84);
        sub_1A937B960(v5, &qword_1EB387728, &qword_1A958F048);
        v25 = v79;
      }

      else
      {
        v50 = sub_1A957B148();
        v51 = v49;
        if (v50 == 1936613704 && v49 == 0xE400000000000000 || (sub_1A957D3E8() & 1) != 0 || v50 == 1953390920 && v51 == 0xE400000000000000 || (sub_1A957D3E8() & 1) != 0)
        {

          v52 = 0xE400000000000000;
          v53 = 1768841544;
        }

        else
        {
          v53 = 1735287112;
          if (v50 == 1869439306 && v51 == 0xE400000000000000)
          {

            v52 = 0xE400000000000000;
          }

          else
          {
            v52 = 0xE400000000000000;
            v66 = sub_1A957D3E8();

            if ((v66 & 1) == 0)
            {
              v53 = sub_1A957B148();
              v52 = v67;
            }
          }
        }

        (*(v48 + 8))(v75, v47);
        v54 = v85;
        if (*(v85 + 16) && (v55 = sub_1A937A490(v53, v52), (v56 & 1) != 0))
        {
          v57 = v53;
          v58 = *(*(v54 + 56) + 8 * v55);
        }

        else
        {
          v57 = v53;
          v58 = MEMORY[0x1E69E7CC0];
        }

        sub_1A937829C(&qword_1EB386B18, &unk_1A95916F0);
        v59 = v72;
        v25 = v79;
        v60 = swift_allocObject();
        *(v60 + 16) = v71;
        v61 = v81;
        v62 = v84;
        v82((v60 + v59), v81, v84);
        v86 = v58;
        sub_1A942AF14(v60);
        v63 = v85;
        v64 = v86;
        v65 = swift_isUniquelyReferenced_nonNull_native();
        v86 = v63;
        sub_1A9456AEC(v64, v57, v52, v65);

        v85 = v86;
        (*v74)(v61, v62);
        v24 = v78;
        v23 = v70;
        v5 = v75;
      }

      v21 += v25;
      if (!--v17)
      {
        goto LABEL_36;
      }
    }
  }

  v85 = v15;
LABEL_36:
  result = v69;
  *(v69 + 24) = v85;
  return result;
}

void type metadata accessor for UScriptCode()
{
  if (!qword_1EB385F40)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1EB385F40);
    }
  }
}

unint64_t sub_1A9458BA0()
{
  result = qword_1EB387708;
  if (!qword_1EB387708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB387708);
  }

  return result;
}

unint64_t sub_1A9458BF8()
{
  result = qword_1EB387710;
  if (!qword_1EB387710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB387710);
  }

  return result;
}

uint64_t sub_1A9458D74(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_1A9458D90(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1A9458DD8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1A9458E30(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    sub_1A9459140();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1A9458EB8(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (!a2)
  {
    return 0;
  }

  if (v5 >= a2)
  {
    return (*(v4 + 48))(a1);
  }

  v6 = ((*(*(*(a3 + 16) - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  v7 = a2 - v5;
  v8 = v6 & 0xFFFFFFF8;
  if ((v6 & 0xFFFFFFF8) != 0)
  {
    v9 = 2;
  }

  else
  {
    v9 = v7 + 1;
  }

  if (v9 >= 0x10000)
  {
    v10 = 4;
  }

  else
  {
    v10 = 2;
  }

  if (v9 < 0x100)
  {
    v10 = 1;
  }

  if (v9 >= 2)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  if (v11 > 1)
  {
    if (v11 == 2)
    {
      v12 = *(a1 + v6);
      if (!v12)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v12 = *(a1 + v6);
      if (!v12)
      {
        goto LABEL_24;
      }
    }
  }

  else if (!v11 || (v12 = *(a1 + v6)) == 0)
  {
LABEL_24:
    if (v5)
    {
      return (*(v4 + 48))(a1);
    }

    return 0;
  }

  v13 = v12 - 1;
  if (v8)
  {
    v13 = 0;
    LODWORD(v8) = *a1;
  }

  return v5 + (v8 | v13) + 1;
}

unsigned int *sub_1A9458FBC(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = ((*(v5 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v6 >= a3)
  {
    v11 = 0;
    v12 = a2 - v6;
    if (a2 <= v6)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v8 = a3 - v6;
    if (((*(v5 + 64) + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v9 = v8 + 1;
    }

    else
    {
      v9 = 2;
    }

    if (v9 >= 0x10000)
    {
      v10 = 4;
    }

    else
    {
      v10 = 2;
    }

    if (v9 < 0x100)
    {
      v10 = 1;
    }

    if (v9 >= 2)
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    v12 = a2 - v6;
    if (a2 <= v6)
    {
LABEL_14:
      if (v11 > 1)
      {
        if (v11 != 2)
        {
          *(result + v7) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_30;
        }

        *(result + v7) = 0;
      }

      else if (v11)
      {
        *(result + v7) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_30;
      }

      if (!a2)
      {
        return result;
      }

LABEL_30:
      v16 = *(v5 + 56);

      return v16();
    }
  }

  if (((*(v5 + 64) + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v13 = v12;
  }

  else
  {
    v13 = 1;
  }

  if (((*(v5 + 64) + 7) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v14 = ~v6 + a2;
    v15 = result;
    bzero(result, v7);
    result = v15;
    *v15 = v14;
  }

  if (v11 > 1)
  {
    if (v11 == 2)
    {
      *(result + v7) = v13;
    }

    else
    {
      *(result + v7) = v13;
    }
  }

  else if (v11)
  {
    *(result + v7) = v13;
  }

  return result;
}

void sub_1A9459140()
{
  if (!qword_1EB387718)
  {
    v0 = sub_1A957CA18();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB387718);
    }
  }
}

__n128 sub_1A9459198(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_1A94591AC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1A94591F4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

uint64_t sub_1A9459238(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_1A9459260(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1A94592A8()
{
  result = qword_1EB387758;
  if (!qword_1EB387758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB387758);
  }

  return result;
}

uint64_t sub_1A94592FC(uint64_t result, uint64_t a2, unsigned __int8 a3)
{
  if (a3 != 0xFF)
  {
    return sub_1A9458200(result, a2, a3);
  }

  return result;
}

uint64_t sub_1A9459310(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A937829C(&qword_1EB387778, &qword_1A958F090);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t *MobileAssetManager.DownloadOptions.union(_:)@<X0>(unint64_t *result@<X0>, unint64_t *a2@<X8>)
{
  if (HIDWORD(*result))
  {
    v3 = *result;
  }

  else
  {
    v3 = *v2;
  }

  *a2 = *v2 | *result | v3 & 0xFFFFFFFF00000000;
  return result;
}

unint64_t *MobileAssetManager.DownloadOptions.formUnion(_:)(unint64_t *result)
{
  if (HIDWORD(*result))
  {
    v2 = *result;
  }

  else
  {
    v2 = *v1;
  }

  *v1 = *v1 | *result | v2 & 0xFFFFFFFF00000000;
  return result;
}

uint64_t static MobileAssetManager.DownloadOptions.downloadTimeout(_:)@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  if ((result & 0x80000000) != 0)
  {
    __break(1u);
  }

  else
  {
    *a2 = result << 32;
  }

  return result;
}

uint64_t sub_1A94594C8@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if (((~v4 | 0xFFFFFFFF00000000) & v7) != 0)
      {
        if (HIDWORD(v6))
        {
          v8 = v6;
        }

        else
        {
          v8 = v4;
        }

        v4 = v8 & 0xFFFFFFFF00000000 | v6 | v4;
      }

      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

id MobileAssetManager.DownloadOptions.maOptions.getter()
{
  v1 = *v0;
  v2 = [objc_allocWithZone(MEMORY[0x1E69B1950]) init];
  [v2 setAllowsCellularAccess_];
  [v2 setDiscretionary_];
  [v2 setAllowsExpensiveAccess_];
  [v2 setAllowsConstrainedAccess_];
  [v2 setRequiresPowerPluggedIn_];
  [v2 setPrefersInfraWiFi_];
  [v2 setAllowDaemonConnectionRetries_];
  [v2 setTimeoutIntervalForResource_];
  return v2;
}

BOOL sub_1A9459670(unint64_t *a1, unint64_t a2)
{
  v3 = a2 & *v2;
  if (v3 != a2)
  {
    if (HIDWORD(a2))
    {
      v4 = a2;
    }

    else
    {
      v4 = *v2;
    }

    *v2 = *v2 | a2 | v4 & 0xFFFFFFFF00000000;
  }

  *a1 = a2;
  return v3 != a2;
}

unsigned int *sub_1A94596B0@<X0>(unsigned int *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2 & v3;
  if (v4)
  {
    *v2 &= v3 ^ 0xFFFFFFFFLL;
  }

  *a2 = v4;
  *(a2 + 8) = v4 == 0;
  return result;
}

unint64_t sub_1A94596E8@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2;
  if (HIDWORD(result))
  {
    v4 = result;
  }

  else
  {
    v4 = *v2;
  }

  *v2 = v3 | result | v4 & 0xFFFFFFFF00000000;
  *a2 = result & v3;
  *(a2 + 8) = (result & v3) == 0;
  return result;
}

unint64_t sub_1A94597C4()
{
  result = qword_1EB387798;
  if (!qword_1EB387798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB387798);
  }

  return result;
}

unint64_t sub_1A9459820()
{
  result = qword_1EB386040;
  if (!qword_1EB386040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB386040);
  }

  return result;
}

unint64_t sub_1A9459878()
{
  result = qword_1EB386030;
  if (!qword_1EB386030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB386030);
  }

  return result;
}

void TTSMarkupSpeech.init(ssml:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v22 = a4;
  v10 = sub_1A957CC58();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v22 - v12;
  type metadata accessor for SSMLParser();
  v14 = static SSMLParser.parseRootElement(ssml:)(a1, a2);

  if (!v5)
  {
    v15 = v11;
    v16 = v22;
    sub_1A93D1250(&v23);
    sub_1A937829C(&qword_1EB3868E8, &unk_1A958F280);
    if (swift_dynamicCast())
    {

      v17 = *(a3 - 8);
      (*(v17 + 56))(v13, 0, 1, a3);
      (*(v17 + 32))(a5, v13, a3);
    }

    else
    {
      (*(*(a3 - 8) + 56))(v13, 1, 1, a3);
      (*(v15 + 8))(v13, v10);
      v23 = 0;
      v24 = 0xE000000000000000;
      sub_1A957CF08();

      v23 = 0xD000000000000026;
      v24 = 0x80000001A95C3120;
      (*(v16 + 8))(&v25, a3, v16);
      v18 = SSMLTag.rawValue.getter();
      MEMORY[0x1AC585140](v18);

      v19 = v23;
      v20 = v24;
      sub_1A938189C();
      swift_allocError();
      *v21 = v19;
      v21[1] = v20;
      swift_willThrow();
    }
  }
}

uint64_t TTSMarkupSpeech.attributeText.getter(uint64_t a1, uint64_t a2)
{
  v2 = (*(a2 + 16))(a1);
  v3 = v2;
  v4 = *(v2 + 16);
  v5 = MEMORY[0x1E69E7CC0];
  if (v4)
  {
    v6 = sub_1A945A7C0(*(v2 + 16), 0);
    v7 = sub_1A945B35C(&v27, v6 + 4, v4, v3);
    v8 = v27;

    sub_1A932D088(v8);
    if (v7 == v4)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v6 = v5;
LABEL_5:
  v27 = v6;
  sub_1A945A754(&v27);

  v9 = v27;
  v10 = *(v27 + 16);
  if (v10)
  {
    sub_1A93ABB68(0, v10, 0);
    v11 = 0;
    v12 = v5;
    v13 = v9 + 7;
    while (v11 < v9[2])
    {
      v14 = *(v13 - 2);
      v15 = *(v13 - 1);
      v16 = *v13;
      v27 = *(v13 - 3);
      v28 = v14;
      swift_bridgeObjectRetain_n();

      MEMORY[0x1AC585140](8765, 0xE200000000000000);
      MEMORY[0x1AC585140](v15, v16);
      MEMORY[0x1AC585140](34, 0xE100000000000000);

      v17 = v27;
      v18 = v28;
      v20 = *(v12 + 16);
      v19 = *(v12 + 24);
      if (v20 >= v19 >> 1)
      {
        sub_1A93ABB68((v19 > 1), v20 + 1, 1);
      }

      ++v11;
      *(v12 + 16) = v20 + 1;
      v21 = v12 + 16 * v20;
      *(v21 + 32) = v17;
      *(v21 + 40) = v18;
      v13 += 4;
      if (v10 == v11)
      {

        goto LABEL_13;
      }
    }

    __break(1u);

    __break(1u);
  }

  else
  {

    v12 = MEMORY[0x1E69E7CC0];
LABEL_13:
    v27 = v12;
    sub_1A937829C(&qword_1EB386B68, &qword_1A9591620);
    sub_1A93BD360();
    v22 = sub_1A957C088();
    v24 = v23;

    v25 = HIBYTE(v24) & 0xF;
    if ((v24 & 0x2000000000000000) == 0)
    {
      v25 = v22 & 0xFFFFFFFFFFFFLL;
    }

    if (v25)
    {
      v27 = 32;
      v28 = 0xE100000000000000;
      MEMORY[0x1AC585140](v22, v24);

      return v27;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

uint64_t TTSMarkupSpeech.asSSML()(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1A9459EC4, 0, 0);
}

uint64_t sub_1A9459EC4()
{
  v1 = *(v0 + 72);
  v5 = *(v0 + 56);
  *(v0 + 40) = v5;
  v2 = sub_1A93981E4((v0 + 16));
  (*(*(v5 - 8) + 16))(v2, v1);
  v3 = swift_task_alloc();
  *(v0 + 80) = v3;
  *v3 = v0;
  v3[1] = sub_1A9459FA8;

  return sub_1A93A12A8(v0 + 16);
}

uint64_t sub_1A9459FA8(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 88) = a1;
  *(v3 + 96) = a2;

  return MEMORY[0x1EEE6DFA0](sub_1A945A0A8, 0, 0);
}

uint64_t sub_1A945A0A8()
{
  sub_1A9378138(v0 + 2);
  v1 = v0[1];
  v2 = v0[11];
  v3 = v0[12];

  return v1(v2, v3);
}

uint64_t TTSMarkupLeaf.startingTag.getter(uint64_t a1, uint64_t a2)
{
  v8 = 60;
  v9 = 0xE100000000000000;
  v3 = *(a2 + 8);
  (*(v3 + 8))(&v7, a1, v3);
  v4 = SSMLTag.rawValue.getter();
  MEMORY[0x1AC585140](v4);

  v5 = TTSMarkupSpeech.attributeText.getter(a1, v3);
  MEMORY[0x1AC585140](v5);

  MEMORY[0x1AC585140](15919, 0xE200000000000000);
  return v8;
}

BOOL TTSMarkupContainer.isEmpty.getter(uint64_t a1, uint64_t a2)
{
  (*(a2 + 16))(v4, a1);
  v2 = v4[3] == 0;
  sub_1A9383404(v4);
  return v2;
}

uint64_t TTSMarkupContainer.ssml.getter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  v16 = (*(v4 + 48))(a1, v4);
  v17 = v5;
  (*(a2 + 16))(v13, a1, a2);
  v6 = v14;
  if (v14)
  {
    v7 = v15;
    sub_1A93780F4(v13, v14);
    v8 = (*(v7 + 64))(v6, v7);
    v10 = v9;
    sub_1A9378138(v13);
  }

  else
  {
    sub_1A9383404(v13);
    v8 = 0;
    v10 = 0xE000000000000000;
  }

  MEMORY[0x1AC585140](v8, v10);

  v11 = (*(v4 + 56))(a1, v4);
  MEMORY[0x1AC585140](v11);

  return v16;
}

uint64_t TTSMarkupContainer.startingTag.getter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  (*(v4 + 8))(v11, a1, v4);
  v5 = SSMLTag.rawValue.getter();
  MEMORY[0x1AC585140](v5);

  v6 = TTSMarkupSpeech.attributeText.getter(a1, v4);
  MEMORY[0x1AC585140](v6);

  (*(a2 + 16))(v11, a1, a2);
  v7 = v11[3];
  sub_1A9383404(v11);
  if (v7)
  {
    v8 = 0;
  }

  else
  {
    v8 = 47;
  }

  if (v7)
  {
    v9 = 0xE000000000000000;
  }

  else
  {
    v9 = 0xE100000000000000;
  }

  MEMORY[0x1AC585140](v8, v9);

  MEMORY[0x1AC585140](62, 0xE100000000000000);
  return 60;
}

uint64_t TTSMarkupContainer.endingTag.getter(uint64_t a1, uint64_t a2)
{
  (*(a2 + 16))(v8);
  v4 = v8[3];
  sub_1A9383404(v8);
  if (!v4)
  {
    return 0;
  }

  v8[0] = 12092;
  v8[1] = 0xE200000000000000;
  (*(*(a2 + 8) + 8))(&v7, a1);
  v5 = SSMLTag.rawValue.getter();
  MEMORY[0x1AC585140](v5);

  MEMORY[0x1AC585140](62, 0xE100000000000000);
  return v8[0];
}

Swift::String __swiftcall TTSMarkupSpeech.asPlainText()()
{
  v3 = v1;
  v4 = v0;
  v5 = sub_1A957B308();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v18[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A957B108();
  sub_1A937829C(&qword_1EB386B18, &unk_1A95916F0);
  v9 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1A9587160;
  (*(v6 + 16))(v10 + v9, v8, v5);
  sub_1A93F5050(v10, v20);

  v18[3] = v4;
  v18[4] = v3;
  v11 = sub_1A93981E4(v18);
  (*(*(v4 - 8) + 16))(v11, v2, v4);
  ImperativeMarkupWriter.process(markup:)(v18, v19);
  sub_1A945B4E0(v20);
  (*(v6 + 8))(v8, v5);
  sub_1A9378138(v18);
  v12 = v19[2];
  v13 = v19[3];

  v14 = v12;
  v15 = v13;
  result._object = v15;
  result._countAndFlagsBits = v14;
  return result;
}

uint64_t sub_1A945A754(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1A945B7A0(v2);
  }

  v3 = v2[2];
  v5[0] = (v2 + 4);
  v5[1] = v3;
  result = sub_1A945A844(v5);
  *a1 = v2;
  return result;
}

void *sub_1A945A7C0(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  sub_1A937829C(&qword_1EB3877A8, &qword_1A958F330);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 1;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 5);
  return result;
}

uint64_t sub_1A945A844(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1A957D388();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_1A937829C(&qword_1EB3877A0, &unk_1A958F320);
        v5 = sub_1A957C518();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_1A945AA1C(v7, v8, a1, v4);
      *(v6 + 16) = 0;
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
    return sub_1A945A94C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1A945A94C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 32 * a3 - 32;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 32 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *v12 && v10 == *(v12 + 8);
      if (v13 || (result = sub_1A957D3E8(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 32;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      result = *(v12 + 32);
      v10 = *(v12 + 40);
      v14 = *(v12 + 48);
      v15 = *(v12 + 56);
      v16 = *(v12 + 16);
      *(v12 + 32) = *v12;
      *(v12 + 48) = v16;
      *v12 = result;
      *(v12 + 8) = v10;
      *(v12 + 16) = v14;
      *(v12 + 24) = v15;
      v12 -= 32;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1A945AA1C(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v99 = result;
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = MEMORY[0x1E69E7CC0];
LABEL_105:
    v8 = *v99;
    if (!*v99)
    {
      goto LABEL_143;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_137:
      result = sub_1A938911C(v7);
      v7 = result;
    }

    v90 = v7 + 16;
    v91 = *(v7 + 2);
    if (v91 >= 2)
    {
      while (*a3)
      {
        v92 = &v7[16 * v91];
        v93 = *v92;
        v94 = &v90[2 * v91];
        v95 = v94[1];
        sub_1A945B000((*a3 + 32 * *v92), (*a3 + 32 * *v94), (*a3 + 32 * v95), v8);
        if (v4)
        {
        }

        if (v95 < v93)
        {
          goto LABEL_129;
        }

        if (v91 - 2 >= *v90)
        {
          goto LABEL_130;
        }

        *v92 = v93;
        *(v92 + 1) = v95;
        v96 = *v90 - v91;
        if (*v90 < v91)
        {
          goto LABEL_131;
        }

        v91 = *v90 - 1;
        result = memmove(v94, v94 + 2, 16 * v96);
        *v90 = v91;
        if (v91 <= 1)
        {
        }
      }

      goto LABEL_141;
    }
  }

  v6 = 0;
  v7 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v8 = v6++;
    if (v6 < v5)
    {
      v9 = (*a3 + 32 * v6);
      result = *v9;
      v10 = (*a3 + 32 * v8);
      if (*v9 == *v10 && v9[1] == v10[1])
      {
        v12 = 0;
      }

      else
      {
        result = sub_1A957D3E8();
        v12 = result;
      }

      v6 = v8 + 2;
      if (v8 + 2 < v5)
      {
        v13 = v10 + 5;
        v14 = v10 + 5;
        do
        {
          result = v13[3];
          v16 = v14[4];
          v14 += 4;
          v15 = v16;
          if (result == *(v13 - 1) && v15 == *v13)
          {
            if (v12)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = sub_1A957D3E8();
            if ((v12 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v6;
          v13 = v14;
        }

        while (v5 != v6);
        v6 = v5;
      }

LABEL_23:
      if (v12)
      {
LABEL_24:
        if (v6 < v8)
        {
          goto LABEL_134;
        }

        if (v8 < v6)
        {
          v18 = 32 * v6 - 16;
          v19 = (32 * v8) | 0x18;
          v20 = v6;
          v21 = v8;
          do
          {
            if (v21 != --v20)
            {
              v28 = *a3;
              if (!*a3)
              {
                goto LABEL_140;
              }

              v22 = (v28 + v19);
              v23 = (v28 + v18);
              v24 = *(v22 - 3);
              v25 = *(v22 - 1);
              v26 = *v22;
              v27 = *v23;
              *(v22 - 3) = *(v23 - 1);
              *(v22 - 1) = v27;
              *(v23 - 1) = v24;
              *v23 = v25;
              *(v23 + 1) = v26;
            }

            ++v21;
            v18 -= 32;
            v19 += 32;
          }

          while (v21 < v20);
        }
      }
    }

    v29 = a3[1];
    if (v6 < v29)
    {
      if (__OFSUB__(v6, v8))
      {
        goto LABEL_133;
      }

      if (v6 - v8 < a4)
      {
        if (__OFADD__(v8, a4))
        {
          goto LABEL_135;
        }

        if (v8 + a4 >= v29)
        {
          v30 = a3[1];
        }

        else
        {
          v30 = v8 + a4;
        }

        if (v30 < v8)
        {
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (v6 != v30)
        {
          break;
        }
      }
    }

LABEL_54:
    if (v6 < v8)
    {
      goto LABEL_132;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1A9389130(0, *(v7 + 2) + 1, 1, v7);
      v7 = result;
    }

    v45 = *(v7 + 2);
    v44 = *(v7 + 3);
    v46 = v45 + 1;
    if (v45 >= v44 >> 1)
    {
      result = sub_1A9389130((v44 > 1), v45 + 1, 1, v7);
      v7 = result;
    }

    *(v7 + 2) = v46;
    v47 = &v7[16 * v45];
    *(v47 + 4) = v8;
    *(v47 + 5) = v6;
    v48 = *v99;
    if (!*v99)
    {
      goto LABEL_142;
    }

    if (v45)
    {
      while (1)
      {
        v49 = v46 - 1;
        if (v46 >= 4)
        {
          break;
        }

        if (v46 == 3)
        {
          v50 = *(v7 + 4);
          v51 = *(v7 + 5);
          v60 = __OFSUB__(v51, v50);
          v52 = v51 - v50;
          v53 = v60;
LABEL_74:
          if (v53)
          {
            goto LABEL_120;
          }

          v66 = &v7[16 * v46];
          v68 = *v66;
          v67 = *(v66 + 1);
          v69 = __OFSUB__(v67, v68);
          v70 = v67 - v68;
          v71 = v69;
          if (v69)
          {
            goto LABEL_123;
          }

          v72 = &v7[16 * v49 + 32];
          v74 = *v72;
          v73 = *(v72 + 1);
          v60 = __OFSUB__(v73, v74);
          v75 = v73 - v74;
          if (v60)
          {
            goto LABEL_126;
          }

          if (__OFADD__(v70, v75))
          {
            goto LABEL_127;
          }

          if (v70 + v75 >= v52)
          {
            if (v52 < v75)
            {
              v49 = v46 - 2;
            }

            goto LABEL_95;
          }

          goto LABEL_88;
        }

        v76 = &v7[16 * v46];
        v78 = *v76;
        v77 = *(v76 + 1);
        v60 = __OFSUB__(v77, v78);
        v70 = v77 - v78;
        v71 = v60;
LABEL_88:
        if (v71)
        {
          goto LABEL_122;
        }

        v79 = &v7[16 * v49];
        v81 = *(v79 + 4);
        v80 = *(v79 + 5);
        v60 = __OFSUB__(v80, v81);
        v82 = v80 - v81;
        if (v60)
        {
          goto LABEL_125;
        }

        if (v82 < v70)
        {
          goto LABEL_3;
        }

LABEL_95:
        v8 = v49 - 1;
        if (v49 - 1 >= v46)
        {
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
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
          goto LABEL_136;
        }

        if (!*a3)
        {
          goto LABEL_139;
        }

        v87 = *&v7[16 * v8 + 32];
        v88 = *&v7[16 * v49 + 40];
        sub_1A945B000((*a3 + 32 * v87), (*a3 + 32 * *&v7[16 * v49 + 32]), (*a3 + 32 * v88), v48);
        if (v4)
        {
        }

        if (v88 < v87)
        {
          goto LABEL_116;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_1A938911C(v7);
        }

        if (v8 >= *(v7 + 2))
        {
          goto LABEL_117;
        }

        v89 = &v7[16 * v8];
        *(v89 + 4) = v87;
        *(v89 + 5) = v88;
        result = sub_1A93CE710(v49);
        v46 = *(v7 + 2);
        if (v46 <= 1)
        {
          goto LABEL_3;
        }
      }

      v54 = &v7[16 * v46 + 32];
      v55 = *(v54 - 64);
      v56 = *(v54 - 56);
      v60 = __OFSUB__(v56, v55);
      v57 = v56 - v55;
      if (v60)
      {
        goto LABEL_118;
      }

      v59 = *(v54 - 48);
      v58 = *(v54 - 40);
      v60 = __OFSUB__(v58, v59);
      v52 = v58 - v59;
      v53 = v60;
      if (v60)
      {
        goto LABEL_119;
      }

      v61 = &v7[16 * v46];
      v63 = *v61;
      v62 = *(v61 + 1);
      v60 = __OFSUB__(v62, v63);
      v64 = v62 - v63;
      if (v60)
      {
        goto LABEL_121;
      }

      v60 = __OFADD__(v52, v64);
      v65 = v52 + v64;
      if (v60)
      {
        goto LABEL_124;
      }

      if (v65 >= v57)
      {
        v83 = &v7[16 * v49 + 32];
        v85 = *v83;
        v84 = *(v83 + 1);
        v60 = __OFSUB__(v84, v85);
        v86 = v84 - v85;
        if (v60)
        {
          goto LABEL_128;
        }

        if (v52 < v86)
        {
          v49 = v46 - 2;
        }

        goto LABEL_95;
      }

      goto LABEL_74;
    }

LABEL_3:
    v5 = a3[1];
    if (v6 >= v5)
    {
      goto LABEL_105;
    }
  }

  v31 = *a3;
  v32 = *a3 + 32 * v6 - 32;
  v97 = v8;
  v33 = (v8 - v6);
LABEL_43:
  v34 = (v31 + 32 * v6);
  v35 = *v34;
  v36 = v34[1];
  v37 = v33;
  v38 = v32;
  while (1)
  {
    v39 = v35 == *v38 && v36 == *(v38 + 8);
    if (v39 || (result = sub_1A957D3E8(), (result & 1) == 0))
    {
LABEL_42:
      ++v6;
      v32 += 32;
      --v33;
      if (v6 != v30)
      {
        goto LABEL_43;
      }

      v6 = v30;
      v8 = v97;
      goto LABEL_54;
    }

    if (!v31)
    {
      break;
    }

    v35 = *(v38 + 32);
    v36 = *(v38 + 40);
    v40 = *(v38 + 48);
    v41 = *(v38 + 56);
    v42 = *(v38 + 16);
    *(v38 + 32) = *v38;
    *(v38 + 48) = v42;
    *v38 = v35;
    *(v38 + 8) = v36;
    *(v38 + 16) = v40;
    *(v38 + 24) = v41;
    v38 -= 32;
    if (__CFADD__(v37++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
  return result;
}

uint64_t sub_1A945B000(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 31;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 5;
  v11 = a3 - __src;
  v12 = a3 - __src + 31;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 5;
  if (v10 < v12 >> 5)
  {
    if (a4 != __dst || &__dst[32 * v10] <= a4)
    {
      memmove(a4, __dst, 32 * v10);
    }

    v14 = &v4[32 * v10];
    if (v8 < 32)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v17 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v17 && (sub_1A957D3E8() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v17 = v7 == v4;
      v4 += 32;
      if (!v17)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 32;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v17 = v7 == v6;
    v6 += 32;
    if (v17)
    {
      goto LABEL_13;
    }

LABEL_12:
    v16 = *(v15 + 1);
    *v7 = *v15;
    *(v7 + 1) = v16;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[32 * v13] <= a4)
  {
    memmove(a4, __src, 32 * v13);
  }

  v14 = &v4[32 * v13];
  if (v11 >= 32 && v6 > v7)
  {
LABEL_28:
    v18 = v6 - 32;
    v5 -= 32;
    v19 = v14;
    do
    {
      v20 = *(v19 - 4);
      v21 = *(v19 - 3);
      v19 -= 32;
      v22 = v20 == *(v6 - 4) && v21 == *(v6 - 3);
      if (!v22 && (sub_1A957D3E8() & 1) != 0)
      {
        if (v5 + 32 != v6)
        {
          v24 = *(v6 - 1);
          *v5 = *v18;
          *(v5 + 1) = v24;
        }

        if (v14 <= v4 || (v6 -= 32, v18 <= v7))
        {
          v6 = v18;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 32 != v14)
      {
        v23 = *(v19 + 1);
        *v5 = *v19;
        *(v5 + 1) = v23;
      }

      v5 -= 32;
      v14 = v19;
    }

    while (v19 > v4);
    v14 = v19;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0x1FuLL : 0)) & 0xFFFFFFFFFFFFFFE0])
  {
    memmove(v6, v4, 32 * ((v14 - v4) / 32));
  }

  return 1;
}

void *sub_1A945B228(void *result, int64_t a2, char a3, void *a4)
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
    sub_1A937829C(&qword_1EB3877A8, &qword_1A958F330);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1A937829C(&qword_1EB3877A0, &unk_1A958F320);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1A945B35C(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_25:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v27 = -1 << *(a4 + 32);
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = (v12 << 10) | (16 * v17);
      v19 = (*(a4 + 48) + v18);
      v21 = *v19;
      v20 = v19[1];
      v22 = (*(a4 + 56) + v18);
      v23 = *v22;
      v24 = v22[1];
      *v11 = v21;
      v11[1] = v20;
      v11[2] = v23;
      v11[3] = v24;
      if (v14 == v10)
      {

        goto LABEL_23;
      }

      v11 += 4;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= v12 + 1)
    {
      v26 = v12 + 1;
    }

    else
    {
      v26 = v13;
    }

    v12 = v26 - 1;
    v10 = result;
LABEL_23:
    v7 = v27;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t dispatch thunk of TTSMarkupSpeech.accept<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  return (*(a5 + 72))(a1, a2, a3, a4);
}

{
  v13 = (*(a5 + 80) + **(a5 + 80));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1A9382328;

  return v13(a1, a2, a3, a4, a5);
}

void *sub_1A945B7B4()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 24);
  }

  else
  {
    type metadata accessor for VoiceDatabaseXPC.Server();

    v1 = VoiceDatabaseXPC.Server.__allocating_init(daemon:)(v2);
    *(v0 + 24) = v1;
  }

  return v1;
}

uint64_t (*sub_1A945B838(uint64_t *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_1A945B7B4();
  return sub_1A945B880;
}

uint64_t sub_1A945B890()
{
  if (*(v0 + 32))
  {
    v1 = *(v0 + 32);
  }

  else
  {
    type metadata accessor for VoiceDatabase(0);
    v4 = 0;

    v1 = VoiceDatabase.__allocating_init(additionalLoaders:context:)(v2, &v4);
    *(v0 + 32) = v1;
  }

  return v1;
}

uint64_t (*sub_1A945B924(uint64_t *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_1A945B890();
  return sub_1A945B96C;
}

uint64_t sub_1A945B97C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 184))();
  *a2 = result;
  return result;
}

uint64_t sub_1A945B9C8(void *a1, uint64_t a2)
{
  v2 = *(**a2 + 192);

  return v2(v3);
}

void *sub_1A945BA1C()
{
  v1 = v0[5];
  v2 = v1;
  if (v1 == 1)
  {
    type metadata accessor for SSELoaderManager();
    v3 = v0;
    v4 = (*(*v0 + 160))();
    v2 = SSELoaderManager.__allocating_init(database:)(v4);
    v5 = v0[5];
    v3[5] = v2;

    sub_1A945BAB0(v5);
  }

  sub_1A945BAC0(v1);
  return v2;
}

uint64_t sub_1A945BAB0(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_1A945BAC0(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_1A945BAD0(uint64_t a1)
{
  v2 = *(v1 + 40);
  *(v1 + 40) = a1;
  return sub_1A945BAB0(v2);
}

uint64_t (*sub_1A945BAE0(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = sub_1A945BA1C();
  return sub_1A945BB28;
}

uint64_t sub_1A945BB28(uint64_t *a1, char a2)
{
  v2 = a1[1];
  v3 = *(v2 + 40);
  *(v2 + 40) = *a1;
  if (a2)
  {

    sub_1A945BAB0(v3);
  }

  else
  {

    return sub_1A945BAB0(v3);
  }
}

uint64_t sub_1A945BB98()
{
  swift_beginAccess();
  v1 = *(v0 + 48);

  return v1;
}

uint64_t sub_1A945BBE4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
}

uint64_t sub_1A945BC38()
{
  swift_beginAccess();
  v1 = *(v0 + 64);

  return v1;
}

uint64_t sub_1A945BC84(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
}

void *VoiceDatabaseDaemon.__allocating_init(startTransaction:endTransaction:additionalLoaders:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  v10[3] = 0;
  v10[4] = 0;
  v10[5] = 1;
  type metadata accessor for TTSExecutor();
  v11 = TTSExecutor.__allocating_init()();
  v10[9] = a4;
  v10[10] = v11;
  v10[6] = a1;
  v10[7] = a2;
  v10[8] = a3;
  v10[2] = a5;
  return v10;
}

void *VoiceDatabaseDaemon.init(startTransaction:endTransaction:additionalLoaders:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = 0;
  v5[4] = 0;
  v5[5] = 1;
  type metadata accessor for TTSExecutor();
  v11 = TTSExecutor.__allocating_init()();
  v5[9] = a4;
  v5[10] = v11;
  v5[6] = a1;
  v5[7] = a2;
  v5[8] = a3;
  v5[2] = a5;
  return v5;
}

uint64_t sub_1A945BE30()
{
  *(v1 + 16) = v0;
  sub_1A937829C(&qword_1EB388000, &qword_1A9587710);
  *(v1 + 24) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A945BECC, 0, 0);
}

uint64_t sub_1A945BECC()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = (*(*v2 + 304))();
  (*(*v2 + 160))(v3);

  sub_1A957C668();
  v4 = sub_1A957C688();
  (*(*(v4 - 8) + 56))(v1, 0, 1, v4);
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = v2;

  v0[4] = sub_1A938A404(0, 0, v1, &unk_1A958F360, v5);
  v6 = swift_task_alloc();
  v0[5] = v6;
  *v6 = v0;
  v6[1] = sub_1A945C070;

  return MEMORY[0x1EEE6DA40]();
}

uint64_t sub_1A945C070()
{

  return MEMORY[0x1EEE6DFA0](sub_1A945C16C, 0, 0);
}

uint64_t sub_1A945C16C()
{
  v1 = (*(**(v0 + 16) + 136))();
  *(v0 + 48) = v1;
  v2 = (*v1 + 144) & 0xFFFFFFFFFFFFLL | 0xBED8000000000000;
  *(v0 + 56) = *(*v1 + 144);
  *(v0 + 64) = v2;

  return MEMORY[0x1EEE6DFA0](sub_1A945C214, v1, 0);
}

uint64_t sub_1A945C214()
{
  (*(v0 + 56))();

  return MEMORY[0x1EEE6DFA0](sub_1A945C288, 0, 0);
}

uint64_t sub_1A945C288()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A945C2F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  v5 = sub_1A957B0B8();
  v4[4] = v5;
  v4[5] = *(v5 - 8);
  v4[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A945C3B4, 0, 0);
}

uint64_t sub_1A945C3B4(uint64_t a1)
{
  v3 = v1[5];
  v2 = v1[6];
  v5 = v1[3];
  v4 = v1[4];
  sub_1A957B0A8();
  v6 = sub_1A957B088();
  v8 = v7;
  (*(v3 + 8))(v2, v4);
  MEMORY[0x1AC585140](v6, v8);

  v1[7] = 95;
  v1[8] = 0xE100000000000000;
  v10 = (*(*v5 + 208))(v9);
  v10(95, 0xE100000000000000);

  v11 = swift_task_alloc();
  v1[9] = v11;
  *v11 = v1;
  v11[1] = sub_1A945C544;
  v12 = v1[2];
  v13 = v1[3];
  v14 = MEMORY[0x1E69E7CA8] + 8;
  v15 = MEMORY[0x1E69E7CA8] + 8;
  v16 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DD58](v12, v14, v15, 0, 0, &unk_1A958F420, v13, v16);
}

void sub_1A945C544()
{

  if (v0)
  {
  }

  else
  {

    MEMORY[0x1EEE6DFA0](sub_1A945C668, 0, 0);
  }
}

uint64_t sub_1A945C668()
{
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  v3 = (*(**(v0 + 24) + 232))();
  v3(v2, v1);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1A945C728(uint64_t a1)
{
  v4 = *(v1 + 32);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1A9382328;

  return sub_1A945C2F4(a1, v5, v6, v4);
}

uint64_t sub_1A945C7C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a2;
  v3[3] = a3;
  sub_1A937829C(&qword_1EB388000, &qword_1A9587710);
  v3[4] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A945C864, 0, 0);
}

uint64_t sub_1A945C864()
{
  v2 = v0[3];
  v1 = v0[4];
  sub_1A957C648();
  v3 = sub_1A957C688();
  v4 = *(*(v3 - 8) + 56);
  v4(v1, 0, 1, v3);
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = v2;

  sub_1A945D9A0(v1, &unk_1A958F430, v5);
  sub_1A93F8190(v1);
  v4(v1, 1, 1, v3);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v2;

  sub_1A945D9A0(v1, &unk_1A958F440, v6);
  sub_1A93F8190(v1);

  v7 = v0[1];

  return v7();
}

uint64_t sub_1A945C9F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_1A937829C(&qword_1EB388000, &qword_1A9587710);
  *(v4 + 24) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A945CA8C, 0, 0);
}

uint64_t sub_1A945CA8C()
{
  v1 = (*(**(v0 + 16) + 160))();
  *(v0 + 32) = v1;
  v4 = (*(*v1 + 328) + **(*v1 + 328));
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *v2 = v0;
  v2[1] = sub_1A945CBE0;

  return v4();
}

uint64_t sub_1A945CBE0()
{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = sub_1A945CED0;
  }

  else
  {

    v2 = sub_1A945CCFC;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1A945CCFC()
{
  v2 = v0[2];
  v1 = v0[3];
  type metadata accessor for AXCatalogUpdater();
  sub_1A93F1E88();
  v3 = sub_1A957C688();
  v4 = *(*(v3 - 8) + 56);
  v4(v1, 1, 1, v3);
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = v2;

  sub_1A93C4B70(0, 0, v1, &unk_1A958F468, v5);

  (*(*v2 + 288))(v6);
  sub_1A957C648();
  v4(v1, 0, 1, v3);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v2;

  sub_1A93C4B70(0, 0, v1, &unk_1A958F478, v7);

  v8 = v0[1];

  return v8();
}

uint64_t sub_1A945CED0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A945CF3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_1A957B0B8();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A945CFFC, 0, 0);
}

uint64_t sub_1A945CFFC(uint64_t a1)
{
  v3 = v1[4];
  v2 = v1[5];
  v5 = v1[2];
  v4 = v1[3];
  sub_1A957B0A8();
  v6 = sub_1A957B088();
  v8 = v7;
  (*(v3 + 8))(v2, v4);
  MEMORY[0x1AC585140](v6, v8);

  v1[6] = 95;
  v1[7] = 0xE100000000000000;
  v10 = (*(*v5 + 208))(v9);
  v10(95, 0xE100000000000000);

  type metadata accessor for AXCatalogUpdater();
  v11 = swift_task_alloc();
  v1[8] = v11;
  *v11 = v1;
  v11[1] = sub_1A945D158;

  return static AXCatalogUpdater.updateCatalog()();
}

uint64_t sub_1A945D158()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_1A94623B8;
  }

  else
  {
    v2 = sub_1A94623B4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1A945D26C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1A937829C(&qword_1EB388000, &qword_1A9587710);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v22 - v9;
  sub_1A93F8120(a3, v22 - v9);
  v11 = sub_1A957C688();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_1A93F8190(v10);
  }

  else
  {
    sub_1A957C678();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_1A957C5A8();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_1A957C1C8() + 32;

      sub_1A937829C(&qword_1EB387250, &qword_1A958C010);
      v19 = (v17 | v15);
      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_1A93F8190(a3);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1A93F8190(a3);
  sub_1A937829C(&qword_1EB387250, &qword_1A958C010);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_1A945D4E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_1A957B0B8();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A945D5A8, 0, 0);
}

uint64_t sub_1A945D5A8(uint64_t a1)
{
  v3 = v1[4];
  v2 = v1[5];
  v4 = v1[2];
  v5 = v1[3];
  sub_1A957B0A8();
  v6 = sub_1A957B088();
  v8 = v7;
  (*(v3 + 8))(v2, v5);
  MEMORY[0x1AC585140](v6, v8);

  v1[6] = 95;
  v1[7] = 0xE100000000000000;
  v10 = (*(*v4 + 208))(v9);
  v10(95, 0xE100000000000000);

  v12 = (*(*v4 + 160))(v11);
  v1[8] = v12;
  v15 = (*(*v12 + 280) + **(*v12 + 280));
  v13 = swift_task_alloc();
  v1[9] = v13;
  *v13 = v1;
  v13[1] = sub_1A945D7BC;

  return v15();
}

uint64_t sub_1A945D7BC()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_1A945D8D8;
  }

  else
  {

    v2 = sub_1A94623B4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1A945D8D8()
{
  v1 = v0[7];
  v2 = v0[6];
  v3 = v0[2];

  v5 = (*(*v3 + 232))(v4);
  v5(v2, v1);

  v6 = v0[1];

  return v6();
}

uint64_t sub_1A945D9A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = sub_1A937829C(&qword_1EB388000, &qword_1A9587710);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v18 - v8;
  sub_1A93F8120(a1, v18 - v8);
  v10 = sub_1A957C688();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_1A93F8190(v9);
    if (*(a3 + 16))
    {
LABEL_3:
      swift_getObjectType();
      swift_unknownObjectRetain();
      v12 = sub_1A957C5A8();
      v14 = v13;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    sub_1A957C678();
    (*(v11 + 8))(v9, v10);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v12 = 0;
  v14 = 0;
LABEL_6:
  v15 = *v4;
  v16 = (v14 | v12);
  if (v14 | v12)
  {
    v19[0] = 0;
    v19[1] = 0;
    v16 = v19;
    v19[2] = v12;
    v19[3] = v14;
  }

  v18[1] = 1;
  v18[2] = v16;
  v18[3] = v15;
  swift_task_create();
}

uint64_t sub_1A945DB70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_1A937829C(&qword_1EB388000, &qword_1A9587710);
  *(v4 + 24) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A945DC0C, 0, 0);
}

uint64_t sub_1A945DC0C()
{
  v1 = (*(**(v0 + 16) + 184))();
  *(v0 + 32) = v1;
  if (v1)
  {
    v9 = (*(*v1 + 120) + **(*v1 + 120));
    v2 = swift_task_alloc();
    *(v0 + 40) = v2;
    *v2 = v0;
    v2[1] = sub_1A945DE3C;

    return v9();
  }

  else
  {
    v4 = *(v0 + 16);
    v5 = *(v0 + 24);
    sub_1A957C668();
    v6 = sub_1A957C688();
    (*(*(v6 - 8) + 56))(v5, 0, 1, v6);
    v7 = swift_allocObject();
    v7[2] = 0;
    v7[3] = 0;
    v7[4] = v4;

    sub_1A945D26C(0, 0, v5, &unk_1A958F450, v7);

    v8 = *(v0 + 8);

    return v8();
  }
}

uint64_t sub_1A945DE3C()
{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = sub_1A945CED0;
  }

  else
  {

    v2 = sub_1A945DF58;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1A945DF58()
{
  v1 = v0[2];
  v2 = v0[3];
  sub_1A957C668();
  v3 = sub_1A957C688();
  (*(*(v3 - 8) + 56))(v2, 0, 1, v3);
  v4 = swift_allocObject();
  v4[2] = 0;
  v4[3] = 0;
  v4[4] = v1;

  sub_1A945D26C(0, 0, v2, &unk_1A958F450, v4);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1A945E068(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  v5 = sub_1A957B0B8();
  v4[4] = v5;
  v4[5] = *(v5 - 8);
  v4[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A945E128, 0, 0);
}

uint64_t sub_1A945E128(uint64_t a1)
{
  v3 = v1[5];
  v2 = v1[6];
  v4 = v1[3];
  v5 = v1[4];
  sub_1A957B0A8();
  v6 = sub_1A957B088();
  v8 = v7;
  (*(v3 + 8))(v2, v5);
  MEMORY[0x1AC585140](v6, v8);

  v1[7] = 95;
  v1[8] = 0xE100000000000000;
  v10 = (*(*v4 + 208))(v9);
  v10(95, 0xE100000000000000);

  v12 = (*(*v4 + 184))(v11);
  v1[9] = v12;
  if (v12)
  {
    v20 = (*(*v12 + 144) + **(*v12 + 144));
    v13 = swift_task_alloc();
    v1[10] = v13;
    *v13 = v1;
    v13[1] = sub_1A945E3D4;

    return v20();
  }

  else
  {
    v16 = v1[7];
    v15 = v1[8];
    v17 = v1[2];
    v18 = (*(*v1[3] + 232))();
    v18(v16, v15);

    *v17 = 1;

    v19 = v1[1];

    return v19();
  }
}

uint64_t sub_1A945E3D4()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_1A945E5C8;
  }

  else
  {

    v2 = sub_1A945E4F0;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1A945E4F0()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 56);
  v3 = *(v0 + 16);
  v4 = *(v0 + 72) == 0;
  v5 = (*(**(v0 + 24) + 232))();
  v5(v2, v1);

  *v3 = v4;

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1A945E5C8()
{
  v1 = v0[8];
  v2 = v0[7];
  v3 = v0[3];

  v5 = (*(*v3 + 232))(v4);
  v5(v2, v1);

  v6 = v0[1];

  return v6();
}

uint64_t sub_1A945E690(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1A945E6B4, 0, 0);
}

uint64_t sub_1A945E6B4()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  sub_1A945E8E8();
  v4 = swift_task_alloc();
  v0[5] = v4;
  v4[2] = v1;
  v4[3] = v3;
  v4[4] = v2;
  v5 = swift_task_alloc();
  v0[6] = v5;
  *v5 = v0;
  v5[1] = sub_1A945E7D0;

  return MEMORY[0x1EEE6DE08]();
}

uint64_t sub_1A945E7D0()
{

  if (!v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1A93DE3FC, 0, 0);
  }

  return result;
}

unint64_t sub_1A945E8E8()
{
  result = qword_1ED96FE68;
  if (!qword_1ED96FE68)
  {
    type metadata accessor for TTSExecutor();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED96FE68);
  }

  return result;
}

uint64_t sub_1A945E940(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_1A957B0B8();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A945EA04, 0, 0);
}

uint64_t sub_1A945EA04(uint64_t a1)
{
  v3 = v1[7];
  v2 = v1[8];
  v4 = v1[6];
  v5 = v1[3];
  sub_1A957B0A8();
  v6 = sub_1A957B088();
  v8 = v7;
  (*(v3 + 8))(v2, v4);
  MEMORY[0x1AC585140](v6, v8);

  v1[9] = 95;
  v1[10] = 0xE100000000000000;
  v10 = (*(*v5 + 208))(v9);
  v10(95, 0xE100000000000000);

  v11 = swift_task_alloc();
  v1[11] = v11;
  *v11 = v1;
  v11[1] = sub_1A945EB5C;
  v12 = v1[4];
  v13 = v1[5];
  v14 = v1[3];

  return sub_1A945EE8C(v11, v12, v13, v14);
}

uint64_t sub_1A945EB5C()
{

  if (v0)
  {

    v1 = sub_1A945ED38;
  }

  else
  {
    v1 = sub_1A945EC74;
  }

  return MEMORY[0x1EEE6DFA0](v1, 0, 0);
}

uint64_t sub_1A945EC74()
{
  v2 = *(v0 + 72);
  v1 = *(v0 + 80);
  v3 = (*(**(v0 + 24) + 232))();
  v3(v2, v1);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1A945ED38()
{
  v2 = *(v0 + 72);
  v1 = *(v0 + 80);
  v3 = (*(**(v0 + 24) + 232))();
  v3(v2, v1);
}

uint64_t sub_1A945EDD8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1A93836DC;

  return sub_1A945E940(a1, v4, v5, v6);
}

uint64_t sub_1A945EE8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a3;
  v4[7] = a4;
  v4[5] = a2;

  return MEMORY[0x1EEE6DFA0](sub_1A945EF20, 0, 0);
}

uint64_t sub_1A945EF20()
{
  v1 = v0[6];
  v2 = v0[5] == 0xD000000000000026 && 0x80000001A95C3280 == v1;
  if (v2 || (sub_1A957D3E8() & 1) != 0 || v0[5] == 0xD00000000000002CLL && 0x80000001A95C32B0 == v1 || (sub_1A957D3E8() & 1) != 0)
  {
    v3 = v0[7];
    v4 = *(*v3 + 184);
    v5 = (*v3 + 184) & 0xFFFFFFFFFFFFLL | 0xA17C000000000000;
    v0[8] = v4;
    v0[9] = v5;
    v6 = v4();
    v0[10] = v6;
    if (v6)
    {
      v21 = (*(*v6 + 136) + **(*v6 + 136));
      v7 = swift_task_alloc();
      v0[11] = v7;
      *v7 = v0;
      v7[1] = sub_1A945F428;
      v8 = v21;
    }

    else
    {
      v9 = (v0[8])();
      v0[12] = v9;
      if (v9)
      {
        v22 = (*(*v9 + 144) + **(*v9 + 144));
        v10 = swift_task_alloc();
        v0[13] = v10;
        *v10 = v0;
        v10[1] = sub_1A945F738;
        v8 = v22;
      }

      else
      {
        v8 = v0[1];
      }
    }

    return v8();
  }

  else
  {
    v13 = v0[6];
    v12 = v0[7];
    v14 = v0[5];
    v15 = *(*v12 + 160);
    v16 = (*v12 + 160) & 0xFFFFFFFFFFFFLL | 0xA400000000000000;
    v0[14] = v15;
    v0[15] = v16;
    v17 = v15();
    v0[16] = v17;
    v18 = swift_allocObject();
    *(v18 + 16) = v14;
    *(v18 + 24) = v13;
    *(v18 + 32) = 0;
    *(v18 + 40) = 1;
    v0[2] = v18;
    v19 = *(*v17 + 320);

    v23 = (v19 + *v19);
    v20 = swift_task_alloc();
    v0[17] = v20;
    *v20 = v0;
    v20[1] = sub_1A945F890;

    return v23(v0 + 2);
  }
}

uint64_t sub_1A945F428()
{

  if (v0)
  {

    v1 = sub_1A9462340;
  }

  else
  {

    v1 = sub_1A945F59C;
  }

  return MEMORY[0x1EEE6DFA0](v1, 0, 0);
}

uint64_t sub_1A945F59C()
{
  v1 = (*(v0 + 64))();
  *(v0 + 96) = v1;
  if (v1)
  {
    v5 = (*(*v1 + 144) + **(*v1 + 144));
    v2 = swift_task_alloc();
    *(v0 + 104) = v2;
    *v2 = v0;
    v2[1] = sub_1A945F738;
    v3 = v5;
  }

  else
  {
    v3 = *(v0 + 8);
  }

  return v3();
}

uint64_t sub_1A945F738()
{
  v2 = *v1;

  if (v0)
  {
  }

  v3 = *(v2 + 8);

  return v3();
}

uint64_t sub_1A945F890()
{

  return MEMORY[0x1EEE6DFA0](sub_1A945F9F8, 0, 0);
}

uint64_t sub_1A945F9F8()
{
  *(v0 + 160) = 0;
  v1 = sub_1A957C1C8();
  notify_register_check((v1 + 32), (v0 + 160));

  *(v0 + 24) = 0;
  notify_get_state(*(v0 + 160), (v0 + 24));
  v2 = notify_cancel(*(v0 + 160));
  if (*(v0 + 24))
  {
    v3 = *(v0 + 48);
    v4 = *(v0 + 40);
    v5 = (*(v0 + 112))(v2);
    *(v0 + 144) = v5;
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v3;
    *(v6 + 32) = *(v0 + 24);
    *(v6 + 40) = 0;
    *(v0 + 32) = v6;
    v7 = *(*v5 + 320);

    v11 = (v7 + *v7);
    v8 = swift_task_alloc();
    *(v0 + 152) = v8;
    *v8 = v0;
    v8[1] = sub_1A945FC4C;

    return v11(v0 + 32);
  }

  else
  {
    v10 = *(v0 + 8);

    return v10();
  }
}

uint64_t sub_1A945FC4C()
{

  return MEMORY[0x1EEE6DFA0](sub_1A945FDB4, 0, 0);
}

uint64_t sub_1A945FDB4()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A945FE3C()
{
  v1 = sub_1A94A8B3C();
  swift_beginAccess();
  v2 = *(**v1 + 120);

  v2(0xD000000000000027, 0x80000001A95C3150, &unk_1A958F388, v0);

  swift_beginAccess();
  v3 = *v1;
  v10 = 0;
  *&v11[0] = 0x4105180000000000;
  v12[1] = 0;

  v9 = *sub_1A953C330();
  v8 = 0;
  v4 = TTSTaskRunner.TaskConfiguration.init(identifier:type:requiredConditions:cardinality:)(0xD000000000000027, 0x80000001A95C3150, v11, &v9, &v8, v6);
  (*(*v3 + 128))(v6, v4);

  v11[2] = v6[2];
  *v12 = *v7;
  *&v12[9] = *&v7[9];
  v11[0] = v6[0];
  v11[1] = v6[1];
  return sub_1A93F03AC(v11);
}

uint64_t sub_1A945FFCC(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_1A957B0B8();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A946008C, 0, 0);
}

uint64_t sub_1A946008C(uint64_t a1)
{
  v3 = v1[4];
  v2 = v1[5];
  v4 = v1[2];
  v5 = v1[3];
  sub_1A957B0A8();
  v6 = sub_1A957B088();
  v8 = v7;
  (*(v3 + 8))(v2, v5);
  MEMORY[0x1AC585140](v6, v8);

  v1[6] = 95;
  v1[7] = 0xE100000000000000;
  v10 = (*(*v4 + 208))(v9);
  v10(95, 0xE100000000000000);

  v13 = (*(*v4 + 296) + **(*v4 + 296));
  v11 = swift_task_alloc();
  v1[8] = v11;
  *v11 = v1;
  v11[1] = sub_1A9460274;

  return v13();
}

uint64_t sub_1A9460274()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_1A946044C;
  }

  else
  {
    v2 = sub_1A9460388;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1A9460388()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = (*(**(v0 + 16) + 232))();
  v3(v2, v1);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1A946044C()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = (*(**(v0 + 16) + 232))();
  v3(v2, v1);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1A9460510()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1A9382328;

  return sub_1A945FFCC(v0);
}

uint64_t sub_1A94605A0()
{
  v1[251] = v0;
  v2 = sub_1A937829C(&qword_1EB3872C0, &qword_1A958C800);
  v1[252] = v2;
  v1[253] = *(v2 - 8);
  v1[254] = swift_task_alloc();
  v3 = sub_1A957BC88();
  v1[255] = v3;
  v1[256] = *(v3 - 8);
  v1[257] = swift_task_alloc();
  v1[258] = swift_task_alloc();
  v1[259] = swift_task_alloc();
  sub_1A937829C(&qword_1EB386988, &qword_1A9587830);
  v1[260] = swift_task_alloc();
  type metadata accessor for VoiceQueryCriteria(0);
  v1[261] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A9460744, 0, 0);
}

uint64_t sub_1A9460744()
{
  v14 = v0;
  v1 = v0[261];
  v2 = v0[260];
  v3 = v0[251];
  v4 = *(*v3 + 160);
  v5 = *v3 + 160;
  v0[262] = v4;
  v0[263] = v5 & 0xFFFFFFFFFFFFLL | 0xA400000000000000;
  v6 = v4();
  v0[264] = v6;
  v7 = sub_1A957B308();
  (*(*(v7 - 8) + 56))(v2, 1, 1, v7);
  v12 = *sub_1A9493C84();
  sub_1A9431DA8();
  VoiceQueryCriteria.init(identifier:locale:forbiddenTraits:requiredTraits:)(0, 0, v2, &v13, &v12, v1);
  v11 = (*(*v6 + 392) + **(*v6 + 392));
  v8 = swift_task_alloc();
  v0[265] = v8;
  *v8 = v0;
  v8[1] = sub_1A9460930;
  v9 = v0[261];

  return v11(v9);
}

uint64_t sub_1A9460930(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 2088);
  *(v3 + 2128) = a1;
  *(v3 + 2136) = v1;

  sub_1A9391040(v4);

  if (v1)
  {
    v5 = sub_1A9461518;
  }

  else
  {
    v5 = sub_1A9460A8C;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

void sub_1A9460A8C()
{
  v44 = v0;
  v1 = *(v0 + 2128);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = 0;
    v4 = MEMORY[0x1E69E7CC0];
    do
    {
      v5 = (v1 + 32 + 280 * v3);
      v6 = v3;
      while (1)
      {
        if (v6 >= *(v1 + 16))
        {
          __break(1u);
          return;
        }

        memcpy((v0 + 16), v5, 0x118uLL);
        v3 = v6 + 1;
        if (*(v0 + 264))
        {
          break;
        }

        v5 += 280;
        ++v6;
        if (v2 == v3)
        {
          goto LABEL_15;
        }
      }

      sub_1A937B3DC(v0 + 16, v0 + 296);
      v43 = v4;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1A9461C94(0, *(v4 + 16) + 1, 1);
        v4 = v43;
      }

      v8 = *(v4 + 16);
      v7 = *(v4 + 24);
      if (v8 >= v7 >> 1)
      {
        sub_1A9461C94((v7 > 1), v8 + 1, 1);
        v4 = v43;
      }

      *(v4 + 16) = v8 + 1;
      memcpy((v4 + 280 * v8 + 32), (v0 + 16), 0x118uLL);
    }

    while (v2 - 1 != v6);
  }

  else
  {
    v4 = MEMORY[0x1E69E7CC0];
  }

LABEL_15:
  *(v0 + 2144) = v4;
  v9 = *(v0 + 2072);
  v10 = *(v0 + 2048);
  v11 = *(v0 + 2040);

  v12 = sub_1A93772F8();
  *(v0 + 2152) = v12;
  v13 = *(v10 + 16);
  *(v0 + 2160) = v13;
  *(v0 + 2168) = (v10 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v13(v9, v12, v11);

  v14 = sub_1A957BC68();
  v15 = sub_1A957CA58();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 134217984;
    *(v16 + 4) = *(v4 + 16);

    _os_log_impl(&dword_1A9324000, v14, v15, "Found %ld upgradeable voices, queuing updates.", v16, 0xCu);
    MEMORY[0x1AC587CD0](v16, -1, -1);
  }

  else
  {
  }

  v17 = *(v0 + 2072);
  v18 = *(v0 + 2048);
  v19 = *(v0 + 2040);
  v20 = *(v18 + 8);
  *(v0 + 2176) = v20;
  *(v0 + 2184) = (v18 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v20(v17, v19);
  v21 = *(v4 + 16);
  *(v0 + 2192) = v21;
  if (v21)
  {
    *(v0 + 2200) = 0;
    v22 = *(v0 + 2160);
    v23 = *(v0 + 2152);
    v24 = *(v0 + 2064);
    v25 = *(v0 + 2040);
    memcpy((v0 + 576), (*(v0 + 2144) + 32), 0x118uLL);
    v26 = *(v0 + 576);
    *(v0 + 2208) = v26;
    v27 = *(v0 + 584);
    *(v0 + 2216) = v27;
    v22(v24, v23, v25);
    sub_1A937B3DC(v0 + 576, v0 + 856);
    sub_1A937B3DC(v0 + 576, v0 + 1136);
    v28 = sub_1A957BC68();
    v29 = sub_1A957CA58();
    sub_1A937B48C(v0 + 576);
    v30 = os_log_type_enabled(v28, v29);
    v31 = *(v0 + 2176);
    v32 = *(v0 + 2064);
    v33 = *(v0 + 2040);
    if (v30)
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v43 = v35;
      *v34 = 136315138;

      v36 = sub_1A937A5C0(v26, v27, &v43);

      *(v34 + 4) = v36;
      _os_log_impl(&dword_1A9324000, v28, v29, "Updating voice %s.", v34, 0xCu);
      sub_1A9378138(v35);
      MEMORY[0x1AC587CD0](v35, -1, -1);
      MEMORY[0x1AC587CD0](v34, -1, -1);

      v37 = v31(v32, v33);
    }

    else
    {

      v37 = v31(v32, v33);
    }

    v39 = (*(v0 + 2096))(v37);
    *(v0 + 2224) = v39;
    memcpy((v0 + 1416), (v0 + 576), 0x118uLL);
    v42 = (*(*v39 + 472) + **(*v39 + 472));
    v40 = swift_task_alloc();
    *(v0 + 2232) = v40;
    *v40 = v0;
    v40[1] = sub_1A9461038;
    v41 = *(v0 + 2032);

    v42(v41, v0 + 1416);
  }

  else
  {

    v38 = *(v0 + 8);

    v38();
  }
}

uint64_t sub_1A9461038()
{
  v2 = *v1;
  *(*v1 + 2240) = v0;

  if (v0)
  {

    v3 = sub_1A94615C8;
  }

  else
  {
    (*(v2[253] + 8))(v2[254], v2[252]);

    v3 = sub_1A946117C;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1A946117C()
{
  v25 = v0;
  sub_1A937B48C(v0 + 576);
  v1 = *(v0 + 2200) + 1;
  if (v1 == *(v0 + 2192))
  {

    v2 = *(v0 + 8);

    return v2();
  }

  else
  {
    *(v0 + 2200) = v1;
    v4 = *(v0 + 2160);
    v5 = *(v0 + 2152);
    v6 = *(v0 + 2064);
    v7 = *(v0 + 2040);
    memcpy((v0 + 576), (*(v0 + 2144) + 280 * v1 + 32), 0x118uLL);
    v8 = *(v0 + 576);
    *(v0 + 2208) = v8;
    v9 = *(v0 + 584);
    *(v0 + 2216) = v9;
    v4(v6, v5, v7);
    sub_1A937B3DC(v0 + 576, v0 + 856);
    sub_1A937B3DC(v0 + 576, v0 + 1136);
    v10 = sub_1A957BC68();
    v11 = sub_1A957CA58();
    sub_1A937B48C(v0 + 576);
    v12 = os_log_type_enabled(v10, v11);
    v13 = *(v0 + 2176);
    v14 = *(v0 + 2064);
    v15 = *(v0 + 2040);
    if (v12)
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v24 = v17;
      *v16 = 136315138;

      v18 = sub_1A937A5C0(v8, v9, &v24);

      *(v16 + 4) = v18;
      _os_log_impl(&dword_1A9324000, v10, v11, "Updating voice %s.", v16, 0xCu);
      sub_1A9378138(v17);
      MEMORY[0x1AC587CD0](v17, -1, -1);
      MEMORY[0x1AC587CD0](v16, -1, -1);

      v19 = v13(v14, v15);
    }

    else
    {

      v19 = v13(v14, v15);
    }

    v20 = (*(v0 + 2096))(v19);
    *(v0 + 2224) = v20;
    memcpy((v0 + 1416), (v0 + 576), 0x118uLL);
    v23 = (*(*v20 + 472) + **(*v20 + 472));
    v21 = swift_task_alloc();
    *(v0 + 2232) = v21;
    *v21 = v0;
    v21[1] = sub_1A9461038;
    v22 = *(v0 + 2032);

    return v23(v22, v0 + 1416);
  }
}

uint64_t sub_1A9461518()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A94615C8()
{
  v44 = v0;
  v1 = *(v0 + 2240);
  (*(v0 + 2160))(*(v0 + 2056), *(v0 + 2152), *(v0 + 2040));
  sub_1A937B3DC(v0 + 576, v0 + 1696);
  v2 = v1;
  v3 = sub_1A957BC68();
  v4 = sub_1A957CA78();
  sub_1A937B48C(v0 + 576);

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 2240);
    v6 = *(v0 + 2216);
    v7 = *(v0 + 2208);
    v41 = *(v0 + 2176);
    v8 = *(v0 + 2056);
    v9 = *(v0 + 2040);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v43 = v11;
    *v10 = 136315394;

    v12 = sub_1A937A5C0(v7, v6, &v43);

    *(v10 + 4) = v12;
    *(v10 + 12) = 2080;
    swift_getErrorValue();
    v13 = sub_1A957D478();
    v15 = sub_1A937A5C0(v13, v14, &v43);

    *(v10 + 14) = v15;
    _os_log_impl(&dword_1A9324000, v3, v4, "Failed to upgrade voice %s with error: %s", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1AC587CD0](v11, -1, -1);
    MEMORY[0x1AC587CD0](v10, -1, -1);

    sub_1A937B48C(v0 + 576);
    v41(v8, v9);
  }

  else
  {
    v16 = *(v0 + 2176);
    v17 = *(v0 + 2056);
    v18 = *(v0 + 2040);

    sub_1A937B48C(v0 + 576);
    v16(v17, v18);
  }

  v19 = *(v0 + 2200) + 1;
  if (v19 == *(v0 + 2192))
  {

    v20 = *(v0 + 8);

    return v20();
  }

  else
  {
    *(v0 + 2200) = v19;
    v22 = *(v0 + 2160);
    v23 = *(v0 + 2152);
    v24 = *(v0 + 2064);
    v25 = *(v0 + 2040);
    memcpy((v0 + 576), (*(v0 + 2144) + 280 * v19 + 32), 0x118uLL);
    v26 = *(v0 + 576);
    *(v0 + 2208) = v26;
    v27 = *(v0 + 584);
    *(v0 + 2216) = v27;
    v22(v24, v23, v25);
    sub_1A937B3DC(v0 + 576, v0 + 856);
    sub_1A937B3DC(v0 + 576, v0 + 1136);
    v28 = sub_1A957BC68();
    v29 = sub_1A957CA58();
    sub_1A937B48C(v0 + 576);
    v30 = os_log_type_enabled(v28, v29);
    v31 = *(v0 + 2176);
    v32 = *(v0 + 2064);
    v33 = *(v0 + 2040);
    if (v30)
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v43 = v35;
      *v34 = 136315138;

      v36 = sub_1A937A5C0(v26, v27, &v43);

      *(v34 + 4) = v36;
      _os_log_impl(&dword_1A9324000, v28, v29, "Updating voice %s.", v34, 0xCu);
      sub_1A9378138(v35);
      MEMORY[0x1AC587CD0](v35, -1, -1);
      MEMORY[0x1AC587CD0](v34, -1, -1);
    }

    v37 = v31(v32, v33);
    v38 = (*(v0 + 2096))(v37);
    *(v0 + 2224) = v38;
    memcpy((v0 + 1416), (v0 + 576), 0x118uLL);
    v42 = (*(*v38 + 472) + **(*v38 + 472));
    v39 = swift_task_alloc();
    *(v0 + 2232) = v39;
    *v39 = v0;
    v39[1] = sub_1A9461038;
    v40 = *(v0 + 2032);

    return v42(v40, v0 + 1416);
  }
}

void sub_1A9461B30()
{
  v0 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v1 = sub_1A957C0C8();
  v2 = [v0 initWithSuiteName_];

  if (v2)
  {
    v3 = sub_1A957C0C8();
    [v2 removeObjectForKey_];
  }
}

void *VoiceDatabaseDaemon.deinit()
{

  sub_1A945BAB0(*(v0 + 40));

  return v0;
}

uint64_t VoiceDatabaseDaemon.__deallocating_deinit()
{
  VoiceDatabaseDaemon.deinit();

  return swift_deallocClassInstance();
}

char *sub_1A9461C94(char *a1, int64_t a2, char a3)
{
  result = sub_1A94275AC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t dispatch thunk of VoiceDatabaseDaemon.initialize()()
{
  v4 = (*(*v0 + 272) + **(*v0 + 272));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1A93836DC;

  return v4();
}

uint64_t dispatch thunk of VoiceDatabaseDaemon.handleDarwinNotification(_:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 280) + **(*v2 + 280));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1A93836DC;

  return v8(a1, a2);
}

uint64_t sub_1A9461FB8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_1A93836DC;

  return sub_1A945C7C8(v5, a2, v2);
}

uint64_t sub_1A9462050()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A93836DC;

  return sub_1A945C9F0(v3, v4, v5, v2);
}

uint64_t sub_1A94620E4()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A93836DC;

  return sub_1A945DB70(v3, v4, v5, v2);
}

uint64_t sub_1A9462178(uint64_t a1)
{
  v4 = *(v1 + 32);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1A93836DC;

  return sub_1A945E068(a1, v5, v6, v4);
}

uint64_t sub_1A9462218()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A93836DC;

  return sub_1A945CF3C(v3, v4, v5, v2);
}

uint64_t sub_1A94622AC()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A93836DC;

  return sub_1A945D4E8(v3, v4, v5, v2);
}

uint64_t sub_1A9462340()
{

  return sub_1A945F59C();
}

uint64_t TTSSSEParamCustomUnit.init(rawValue:)@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_1A957D158();

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_1A9462440()
{
  sub_1A957D4F8();
  sub_1A957C228();
  return sub_1A957D548();
}

uint64_t sub_1A946249C(uint64_t a1)
{
  sub_1A957D4F8();
  sub_1A957C228();
  return sub_1A957D548();
}

uint64_t sub_1A94624E4@<X0>(BOOL *a2@<X8>)
{
  v3 = sub_1A957D158();

  *a2 = v3 != 0;
  return result;
}

uint64_t TTSExtendedParameterInfo.name.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t TTSExtendedParameterInfo.footerText.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

TextToSpeech::TTSExtendedParameterInfo __swiftcall TTSExtendedParameterInfo.init(name:footerText:)(Swift::String name, Swift::String_optional footerText)
{
  v2->value = name;
  v2[1] = footerText;
  result.footerText = footerText;
  result.name = name;
  return result;
}

uint64_t sub_1A94625B8()
{
  if (*v0)
  {
    return 0x65547265746F6F66;
  }

  else
  {
    return 1701667182;
  }
}

uint64_t sub_1A94625F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v5 || (sub_1A957D3E8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x65547265746F6F66 && a2 == 0xEA00000000007478)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1A957D3E8();

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

uint64_t sub_1A94626D4(uint64_t a1)
{
  v2 = sub_1A94628E0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A9462710(uint64_t a1)
{
  v2 = sub_1A94628E0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t TTSExtendedParameterInfo.encode(to:)(void *a1)
{
  v3 = sub_1A937829C(&qword_1EB3877B0, &qword_1A958F488);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v10 - v5;
  v7 = *(v1 + 16);
  v10[1] = *(v1 + 24);
  v10[2] = v7;
  sub_1A93780F4(a1, a1[3]);
  sub_1A94628E0();
  sub_1A957D598();
  v12 = 0;
  v8 = v10[3];
  sub_1A957D2E8();
  if (!v8)
  {
    v11 = 1;
    sub_1A957D298();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_1A94628E0()
{
  result = qword_1EB3894E0;
  if (!qword_1EB3894E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3894E0);
  }

  return result;
}

uint64_t TTSExtendedParameterInfo.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_1A937829C(&qword_1EB3877B8, &qword_1A958F490);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16 - v7;
  sub_1A93780F4(a1, a1[3]);
  sub_1A94628E0();
  sub_1A957D588();
  if (v2)
  {
    return sub_1A9378138(a1);
  }

  v19 = 0;
  v9 = sub_1A957D1E8();
  v11 = v10;
  v17 = v9;
  v18 = 1;
  v12 = sub_1A957D198();
  v14 = v13;
  (*(v6 + 8))(v8, v5);
  *a2 = v17;
  a2[1] = v11;
  a2[2] = v12;
  a2[3] = v14;

  sub_1A9378138(a1);
}

__n128 AUParameter.ttsExtendedInfo.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = v1;
  v4 = sub_1A957C168();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [v2 displayName];
  sub_1A957C0F8();

  sub_1A957C158();
  v9 = sub_1A957C108();
  v11 = v10;

  (*(v5 + 8))(v7, v4);
  if (v11 >> 60 == 15)
  {
    v12 = [v2 displayName];
    v13 = sub_1A957C0F8();
    v15 = v14;

    a1->n128_u64[0] = v13;
    a1->n128_u64[1] = v15;
    a1[1].n128_u64[0] = 0;
    a1[1].n128_u64[1] = 0;
  }

  else
  {
    sub_1A957AD98();
    swift_allocObject();
    sub_1A957AD88();
    sub_1A9462D64();
    sub_1A957AD78();
    sub_1A945093C(v9, v11);

    v16 = v18[3];
    result = v19;
    a1->n128_u64[0] = v18[2];
    a1->n128_u64[1] = v16;
    a1[1] = result;
  }

  return result;
}

unint64_t sub_1A9462D64()
{
  result = qword_1EB3877C0;
  if (!qword_1EB3877C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3877C0);
  }

  return result;
}

id static AUParameterTree.ttsCreateParameter(withIdentifier:name:address:min:max:unit:unitName:valueStrings:dependentParameters:footerText:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, uint64_t a7, void *a8, float a9, float a10, void *a11, void *a12, uint64_t a13, uint64_t a14)
{
  v17 = sub_1A957C168();
  MEMORY[0x1EEE9AC00](v17 - 8);
  sub_1A957ADF8();
  swift_allocObject();

  sub_1A957ADE8();
  sub_1A9463028();
  v18 = sub_1A957ADD8();
  v20 = v19;

  sub_1A957C158();
  sub_1A957C118();
  v22 = v21;
  sub_1A9442638(v18, v20);
  if (!v22)
  {
  }

  v23 = a11;
  v24 = sub_1A957C0C8();
  v25 = sub_1A957C0C8();

  if (a8)
  {
    a8 = sub_1A957C0C8();
  }

  v26 = a12;
  if (a11)
  {
    v23 = sub_1A957C4B8();
  }

  if (a12)
  {
    sub_1A93B1EF4();
    v26 = sub_1A957C4B8();
  }

  v27 = objc_opt_self();
  *&v28 = a9;
  *&v29 = a10;
  v30 = [v27 createParameterWithIdentifier:v24 name:v25 address:a5 min:a6 max:a8 unit:0 unitName:v28 flags:v29 valueStrings:v23 dependentParameters:v26];

  return v30;
}

unint64_t sub_1A9463028()
{
  result = qword_1EB385FF0;
  if (!qword_1EB385FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB385FF0);
  }

  return result;
}

unint64_t sub_1A9463080()
{
  result = qword_1EB3877C8;
  if (!qword_1EB3877C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3877C8);
  }

  return result;
}

uint64_t sub_1A94630E4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1A946312C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1A9463190()
{
  result = qword_1EB39A3B0[0];
  if (!qword_1EB39A3B0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB39A3B0);
  }

  return result;
}

unint64_t sub_1A94631E8()
{
  result = qword_1EB3894D0;
  if (!qword_1EB3894D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3894D0);
  }

  return result;
}

unint64_t sub_1A9463240()
{
  result = qword_1EB3894D8;
  if (!qword_1EB3894D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3894D8);
  }

  return result;
}

uint64_t TTSSpeechEvent.description.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 48);
  v13 = *(v0 + 32);
  v14 = v2;
  v3 = *(v0 + 16);
  v12[0] = *v0;
  v12[1] = v3;
  v4 = *(v0 + 48);
  v9 = v13;
  v10 = v4;
  v15 = *(v0 + 64);
  v11 = *(v0 + 64);
  v7 = v12[0];
  v8 = v1;
  sub_1A946330C(v12, v6);
  return sub_1A957C198();
}

uint64_t sub_1A9463348(uint64_t a1)
{
  v2 = sub_1A946C46C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A9463384(uint64_t a1)
{
  v2 = sub_1A946C46C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1A94633C0(char a1)
{
  result = 0x696F506B63656863;
  switch(a1)
  {
    case 1:
      result = 0x65756575716E65;
      break;
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
      result = 0x72776552656C7572;
      break;
    case 4:
      result = 0x776552726568746FLL;
      break;
    case 5:
      result = 0x7472617473;
      break;
    case 6:
      result = 0x696C537472617473;
      break;
    case 7:
      result = 0x7245686365657073;
      break;
    case 8:
      result = 0x6573756170;
      break;
    case 9:
      result = 0x656D75736572;
      break;
    case 10:
      result = 1886352499;
      break;
    case 11:
      result = 0x64656873696E6966;
      break;
    case 12:
      result = 0xD000000000000013;
      break;
    case 13:
      result = 0xD000000000000011;
      break;
    case 14:
    case 15:
      result = 0x6465766965636572;
      break;
    case 16:
      result = 0x655272656B72616DLL;
      break;
    case 17:
      result = 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1A94635CC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1A946C53C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1A9463600(uint64_t a1)
{
  v2 = sub_1A946BE84();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A946363C(uint64_t a1)
{
  v2 = sub_1A946BE84();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A9463678(uint64_t a1)
{
  v2 = sub_1A946C418();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A94636B4(uint64_t a1)
{
  v2 = sub_1A946C418();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A9463710@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6673736563637573 && a2 == 0xEC000000796C6C75)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1A957D3E8();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1A946379C(uint64_t a1)
{
  v2 = sub_1A946C0D0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A94637D8(uint64_t a1)
{
  v2 = sub_1A946C0D0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A9463814()
{
  if (*v0)
  {
    return 28532;
  }

  else
  {
    return 1836020326;
  }
}

uint64_t sub_1A9463840(uint64_t a1)
{
  v2 = sub_1A946BED8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A946387C(uint64_t a1)
{
  v2 = sub_1A946BED8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A94638B8(uint64_t a1)
{
  v2 = sub_1A946BF2C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A94638F4(uint64_t a1)
{
  v2 = sub_1A946BF2C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A9463930@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1836020326 && a2 == 0xE400000000000000;
  if (v5 || (sub_1A957D3E8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 28532 && a2 == 0xE200000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1A957D3E8();

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

uint64_t sub_1A9463A04(uint64_t a1)
{
  v2 = sub_1A946C3C4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A9463A40(uint64_t a1)
{
  v2 = sub_1A946C3C4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A9463A7C()
{
  v1 = 1836020326;
  if (*v0 != 1)
  {
    v1 = 28532;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 7956599;
  }
}

uint64_t sub_1A9463ABC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1A946CAEC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1A9463AE4(uint64_t a1)
{
  v2 = sub_1A946C31C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A9463B20(uint64_t a1)
{
  v2 = sub_1A946C31C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A9463B5C(uint64_t a1)
{
  v2 = sub_1A946C1CC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A9463B98(uint64_t a1)
{
  v2 = sub_1A946C1CC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A9463BD4(uint64_t a1)
{
  v2 = sub_1A946C028();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A9463C10(uint64_t a1)
{
  v2 = sub_1A946C028();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A9463C4C(uint64_t a1)
{
  v2 = sub_1A946C07C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A9463C88(uint64_t a1)
{
  v2 = sub_1A946C07C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A9463CC4(uint64_t a1)
{
  v2 = sub_1A946BFD4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A9463D00(uint64_t a1)
{
  v2 = sub_1A946BFD4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A9463D3C(uint64_t a1)
{
  v2 = sub_1A946BF80();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A9463D78(uint64_t a1)
{
  v2 = sub_1A946BF80();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A9463DB4(uint64_t a1)
{
  v2 = sub_1A946C178();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A9463DF0(uint64_t a1)
{
  v2 = sub_1A946C178();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A9463E2C()
{
  v1 = 0x6C616E696769726FLL;
  v2 = 0x65676E6172;
  if (*v0 != 2)
  {
    v2 = 0x696669746E656469;
  }

  if (*v0)
  {
    v1 = 0x6D6563616C706572;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1A9463EB0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1A946CBFC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1A9463ED8(uint64_t a1)
{
  v2 = sub_1A946C370();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A9463F14(uint64_t a1)
{
  v2 = sub_1A946C370();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A9463F54(uint64_t a1)
{
  v2 = sub_1A946C220();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A9463F90(uint64_t a1)
{
  v2 = sub_1A946C220();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A9463FE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x686365657073 && a2 == 0xE600000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1A957D3E8();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1A9464064(uint64_t a1)
{
  v2 = sub_1A946C2C8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A94640A0(uint64_t a1)
{
  v2 = sub_1A946C2C8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A94640DC()
{
  if (*v0)
  {
    return 0x6563696F76;
  }

  else
  {
    return 0x6563696C73;
  }
}

uint64_t sub_1A9464100@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 0x6563696C73 && a2 == 0xE500000000000000;
  if (v5 || (sub_1A957D3E8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6563696F76 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1A957D3E8();

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

uint64_t sub_1A94641D0(uint64_t a1)
{
  v2 = sub_1A946C274();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A946420C(uint64_t a1)
{
  v2 = sub_1A946C274();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A9464248(uint64_t a1)
{
  v2 = sub_1A946C124();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A9464284(uint64_t a1)
{
  v2 = sub_1A946C124();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t TTSSpeechEvent.encode(to:)(void *a1)
{
  v3 = sub_1A937829C(&qword_1EB3877D0, &qword_1A958F720);
  v126 = *(v3 - 8);
  v127 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v125 = &v82 - v4;
  v124 = sub_1A937829C(&qword_1EB3877D8, &qword_1A958F728);
  v112 = *(v124 - 8);
  MEMORY[0x1EEE9AC00](v124);
  v123 = &v82 - v5;
  v87 = sub_1A937829C(&qword_1EB3877E0, &qword_1A958F730);
  v86 = *(v87 - 8);
  MEMORY[0x1EEE9AC00](v87);
  v85 = &v82 - v6;
  v84 = sub_1A937829C(&qword_1EB3877E8, &qword_1A958F738);
  v83 = *(v84 - 8);
  MEMORY[0x1EEE9AC00](v84);
  v82 = &v82 - v7;
  v90 = sub_1A937829C(&qword_1EB3877F0, &qword_1A958F740);
  v89 = *(v90 - 8);
  MEMORY[0x1EEE9AC00](v90);
  v88 = &v82 - v8;
  v93 = sub_1A937829C(&qword_1EB3877F8, &qword_1A958F748);
  v92 = *(v93 - 8);
  MEMORY[0x1EEE9AC00](v93);
  v91 = &v82 - v9;
  v122 = sub_1A937829C(&qword_1EB387800, &qword_1A958F750);
  v111 = *(v122 - 8);
  MEMORY[0x1EEE9AC00](v122);
  v121 = &v82 - v10;
  v96 = sub_1A937829C(&qword_1EB387808, &qword_1A958F758);
  v95 = *(v96 - 8);
  MEMORY[0x1EEE9AC00](v96);
  v94 = &v82 - v11;
  v99 = sub_1A937829C(&qword_1EB387810, &qword_1A958F760);
  v98 = *(v99 - 8);
  MEMORY[0x1EEE9AC00](v99);
  v97 = &v82 - v12;
  v102 = sub_1A937829C(&qword_1EB387818, &qword_1A958F768);
  v101 = *(v102 - 8);
  MEMORY[0x1EEE9AC00](v102);
  v100 = &v82 - v13;
  v119 = sub_1A937829C(&qword_1EB387820, &qword_1A958F770);
  v110 = *(v119 - 8);
  MEMORY[0x1EEE9AC00](v119);
  v116 = &v82 - v14;
  v120 = sub_1A937829C(&qword_1EB387828, &qword_1A958F778);
  v118 = *(v120 - 8);
  MEMORY[0x1EEE9AC00](v120);
  v117 = &v82 - v15;
  v139 = sub_1A937829C(&qword_1EB387830, &qword_1A958F780);
  v107 = *(v139 - 8);
  MEMORY[0x1EEE9AC00](v139);
  v138 = &v82 - v16;
  v115 = sub_1A937829C(&qword_1EB387838, &qword_1A958F788);
  v109 = *(v115 - 8);
  MEMORY[0x1EEE9AC00](v115);
  v137 = &v82 - v17;
  v136 = sub_1A937829C(&qword_1EB387840, &qword_1A958F790);
  v108 = *(v136 - 8);
  MEMORY[0x1EEE9AC00](v136);
  v135 = &v82 - v18;
  v114 = sub_1A937829C(&qword_1EB387848, &qword_1A958F798);
  v106 = *(v114 - 8);
  MEMORY[0x1EEE9AC00](v114);
  v134 = &v82 - v19;
  v105 = sub_1A937829C(&qword_1EB387850, &qword_1A958F7A0);
  v104 = *(v105 - 8);
  MEMORY[0x1EEE9AC00](v105);
  v103 = &v82 - v20;
  v21 = sub_1A937829C(&qword_1EB387858, &qword_1A958F7A8);
  v113 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v82 - v22;
  v143 = sub_1A937829C(&qword_1EB387860, &qword_1A958F7B0);
  v141 = *(v143 - 8);
  MEMORY[0x1EEE9AC00](v143);
  v25 = &v82 - v24;
  v26 = *v1;
  v27 = *(v1 + 1) | ((*(v1 + 5) | (v1[7] << 16)) << 32);
  v28 = *(v1 + 2);
  v140 = *(v1 + 1);
  v29 = *(v1 + 3);
  v30 = *(v1 + 4);
  v132 = v28;
  v133 = v29;
  v31 = *(v1 + 5);
  v32 = *(v1 + 6);
  v130 = v30;
  v131 = v31;
  v33 = *(v1 + 7);
  v128 = v32;
  v129 = v33;
  v34 = v1[64];
  sub_1A93780F4(a1, a1[3]);
  sub_1A946BE84();
  v142 = v25;
  v35 = v26;
  sub_1A957D598();
  v36 = v26 | (v27 << 8);
  if (v34 > 4)
  {
    if (v34 <= 7)
    {
      v37 = v142;
      if (v34 == 5)
      {
        LOBYTE(v145) = 6;
        sub_1A946C274();
        v39 = v117;
        v38 = v143;
        sub_1A957D288();
        LOBYTE(v145) = 0;
        v40 = v120;
        v63 = v144;
        sub_1A957D2E8();
        if (!v63)
        {
          LOBYTE(v145) = 1;
          sub_1A957D298();
        }

        v41 = &v148;
      }

      else
      {
        v38 = v143;
        if (v34 == 6)
        {
          LOBYTE(v145) = 7;
          sub_1A946C220();
          v39 = v116;
          sub_1A957D288();
          v40 = v119;
          sub_1A957D2E8();
          v41 = &v142;
        }

        else
        {
          LOBYTE(v145) = 11;
          sub_1A946C0D0();
          v39 = v121;
          sub_1A957D288();
          v40 = v122;
          sub_1A957D2F8();
          v41 = &v143;
        }
      }

      (*(*(v41 - 32) + 8))(v39, v40);
      v70 = *(v141 + 8);
      v71 = v37;
      return v70(v71, v38);
    }

    v54 = v142;
    if (v34 == 8)
    {
      LOBYTE(v145) = 16;
      sub_1A946BF2C();
      v64 = v123;
      v65 = v143;
      sub_1A957D288();
      LOBYTE(v145) = v35;
      HIBYTE(v145) = BYTE6(v27);
      *(&v145 + 5) = WORD2(v27);
      *(&v145 + 1) = v27;
      v146 = v140;
      type metadata accessor for _NSRange(0);
      sub_1A946ECA8(&qword_1EB387868, type metadata accessor for _NSRange, MEMORY[0x1E6969F98]);
      v66 = v124;
      sub_1A957D338();
      (*(v112 + 8))(v64, v66);
      return (*(v141 + 8))(v54, v65);
    }

    if (v34 != 9)
    {
      v72 = v132 | v140 | v133;
      if (v72 | v130 | v131 | v128 | v129 | v36)
      {
        v73 = v72 | v130 | v131 | v128 | v129;
        if (v36 != 1 || v73)
        {
          v38 = v143;
          if (v36 != 2 || v73)
          {
            if (v36 != 3 || v73)
            {
              if (v36 != 4 || v73)
              {
                if (v36 != 5 || v73)
                {
                  if (v36 != 6 || v73)
                  {
                    LOBYTE(v145) = 15;
                    sub_1A946BF80();
                    v81 = v85;
                    sub_1A957D288();
                    (*(v86 + 8))(v81, v87);
                  }

                  else
                  {
                    LOBYTE(v145) = 14;
                    sub_1A946BFD4();
                    v80 = v82;
                    sub_1A957D288();
                    (*(v83 + 8))(v80, v84);
                  }
                }

                else
                {
                  LOBYTE(v145) = 13;
                  sub_1A946C028();
                  v79 = v88;
                  sub_1A957D288();
                  (*(v89 + 8))(v79, v90);
                }
              }

              else
              {
                LOBYTE(v145) = 12;
                sub_1A946C07C();
                v78 = v91;
                sub_1A957D288();
                (*(v92 + 8))(v78, v93);
              }
            }

            else
            {
              LOBYTE(v145) = 10;
              sub_1A946C124();
              v77 = v94;
              sub_1A957D288();
              (*(v95 + 8))(v77, v96);
            }
          }

          else
          {
            LOBYTE(v145) = 9;
            sub_1A946C178();
            v76 = v97;
            sub_1A957D288();
            (*(v98 + 8))(v76, v99);
          }
        }

        else
        {
          LOBYTE(v145) = 8;
          sub_1A946C1CC();
          v74 = v100;
          v38 = v143;
          sub_1A957D288();
          (*(v101 + 8))(v74, v102);
        }
      }

      else
      {
        LOBYTE(v145) = 1;
        sub_1A946C418();
        v75 = v103;
        v38 = v143;
        sub_1A957D288();
        (*(v104 + 8))(v75, v105);
      }

      v70 = *(v141 + 8);
      v71 = v54;
      return v70(v71, v38);
    }

    LOBYTE(v145) = 17;
    sub_1A946BED8();
    v55 = v125;
    v56 = v143;
    sub_1A957D288();
    LOBYTE(v145) = v26;
    HIBYTE(v145) = BYTE6(v27);
    *(&v145 + 5) = WORD2(v27);
    *(&v145 + 1) = v27;
    v146 = v140;
    v147 = 0;
    type metadata accessor for _NSRange(0);
    sub_1A946ECA8(&qword_1EB387868, type metadata accessor for _NSRange, MEMORY[0x1E6969F98]);
    v57 = v127;
    v58 = v144;
    sub_1A957D338();
    if (!v58)
    {
      v145 = v132;
      v146 = v133;
      v147 = 1;
      sub_1A957D338();
    }

    (*(v126 + 8))(v55, v57);
    return (*(v141 + 8))(v54, v56);
  }

  v43 = v134;
  v42 = v135;
  v45 = v138;
  v44 = v139;
  v127 = v36;
  v47 = v136;
  v46 = v137;
  if (v34 <= 1)
  {
    v59 = v143;
    if (v34)
    {
      LOBYTE(v145) = 2;
      sub_1A946C3C4();
      v60 = v142;
      sub_1A957D288();
      LOBYTE(v145) = 0;
      v68 = v114;
      v69 = v144;
      sub_1A957D2E8();
      if (!v69)
      {
        LOBYTE(v145) = 1;
        sub_1A957D2E8();
      }

      (*(v106 + 8))(v43, v68);
    }

    else
    {
      LOBYTE(v145) = 0;
      sub_1A946C46C();
      v60 = v142;
      sub_1A957D288();
      sub_1A957D2E8();
      (*(v113 + 8))(v23, v21);
    }

    return (*(v141 + 8))(v60, v59);
  }

  else
  {
    v48 = v143;
    if (v34 == 2)
    {
      LOBYTE(v145) = 3;
      sub_1A946C370();
      v56 = v48;
      v54 = v142;
      sub_1A957D288();
      LOBYTE(v145) = 0;
      v61 = v144;
      sub_1A957D2E8();
      if (v61)
      {
        v62 = v108;
      }

      else
      {
        LOBYTE(v145) = 1;
        sub_1A957D2E8();
        v62 = v108;
        v145 = v130;
        v146 = v131;
        v147 = 2;
        type metadata accessor for _NSRange(0);
        sub_1A946ECA8(&qword_1EB387868, type metadata accessor for _NSRange, MEMORY[0x1E6969F98]);
        sub_1A957D338();
        LOBYTE(v145) = 3;
        sub_1A957D2E8();
      }

      (*(v62 + 8))(v42, v47);
      return (*(v141 + 8))(v54, v56);
    }

    v49 = v142;
    if (v34 == 3)
    {
      LOBYTE(v145) = 4;
      sub_1A946C31C();
      v50 = v46;
      sub_1A957D288();
      LOBYTE(v145) = 0;
      v51 = v115;
      v52 = v144;
      sub_1A957D2E8();
      if (v52)
      {
        v53 = v109;
      }

      else
      {
        LOBYTE(v145) = 1;
        sub_1A957D2E8();
        v53 = v109;
        LOBYTE(v145) = 2;
        sub_1A957D2E8();
      }

      (*(v53 + 8))(v50, v51);
    }

    else
    {
      LOBYTE(v145) = 5;
      sub_1A946C2C8();
      sub_1A957D288();
      sub_1A957D2E8();
      (*(v107 + 8))(v45, v44);
    }

    return (*(v141 + 8))(v49, v48);
  }
}

uint64_t TTSSpeechEvent.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 1);
  v3 = *(v1 + 3);
  v4 = *(v1 + 4);
  v5 = *(v1 + 5);
  v6 = *(v1 + 6);
  v7 = *(v1 + 7);
  v8 = v1[64];
  v9 = (*(v1 + 1) << 8) | ((*(v1 + 5) | (v1[7] << 16)) << 40) | *v1;
  if (v8 <= 4)
  {
    if (v1[64] <= 1u)
    {
      if (v1[64])
      {
        MEMORY[0x1AC5863C0](2);
        sub_1A957C228();
        goto LABEL_22;
      }

      v10 = 0;
      goto LABEL_20;
    }

    if (v8 == 2)
    {
      MEMORY[0x1AC5863C0](3);
      sub_1A957C228();
      sub_1A957C228();
      MEMORY[0x1AC5863C0](v4);
      MEMORY[0x1AC5863C0](v5);
    }

    else
    {
      if (v8 != 3)
      {
        v10 = 5;
LABEL_20:
        MEMORY[0x1AC5863C0](v10);
        goto LABEL_22;
      }

      MEMORY[0x1AC5863C0](4);
      sub_1A957C228();
      sub_1A957C228();
    }

LABEL_22:

    return sub_1A957C228();
  }

  if (v1[64] <= 7u)
  {
    if (v8 == 5)
    {
      MEMORY[0x1AC5863C0](6);
      sub_1A957C228();
      if (!v3)
      {
        return sub_1A957D518();
      }

      sub_1A957D518();
      goto LABEL_22;
    }

    if (v8 != 6)
    {
      MEMORY[0x1AC5863C0](11);
      return sub_1A957D518();
    }

    v10 = 7;
    goto LABEL_20;
  }

  if (v8 == 8)
  {
    MEMORY[0x1AC5863C0](16);
    MEMORY[0x1AC5863C0](v9);
    v12 = v2;
  }

  else if (v8 == 9)
  {
    v11 = *(v1 + 2);
    MEMORY[0x1AC5863C0](17);
    MEMORY[0x1AC5863C0](v9);
    MEMORY[0x1AC5863C0](v2);
    MEMORY[0x1AC5863C0](v11);
    v12 = v3;
  }

  else
  {
    v14 = *(v1 + 2) | v2 | v3;
    if (v14 | v4 | v5 | v6 | v9 | v7)
    {
      v15 = v14 | v4 | v5 | v6 | v7;
      if (v9 == 1 && v15 == 0)
      {
        v12 = 8;
      }

      else if (v9 != 2 || v15)
      {
        if (v9 != 3 || v15)
        {
          if (v9 != 4 || v15)
          {
            if (v9 != 5 || v15)
            {
              if (v9 != 6 || v15)
              {
                v12 = 15;
              }

              else
              {
                v12 = 14;
              }
            }

            else
            {
              v12 = 13;
            }
          }

          else
          {
            v12 = 12;
          }
        }

        else
        {
          v12 = 10;
        }
      }

      else
      {
        v12 = 9;
      }
    }

    else
    {
      v12 = 1;
    }
  }

  return MEMORY[0x1AC5863C0](v12);
}

uint64_t TTSSpeechEvent.hashValue.getter()
{
  sub_1A957D4F8();
  TTSSpeechEvent.hash(into:)(v1);
  return sub_1A957D548();
}

uint64_t TTSSpeechEvent.init(from:)@<X0>(void *a1@<X0>, unint64_t *a2@<X8>)
{
  v192 = a2;
  v198 = sub_1A937829C(&qword_1EB387870, &qword_1A958F7B8);
  v178 = *(v198 - 8);
  MEMORY[0x1EEE9AC00](v198);
  v191 = v141 - v3;
  v177 = sub_1A937829C(&qword_1EB387878, &qword_1A958F7C0);
  v197 = *(v177 - 8);
  MEMORY[0x1EEE9AC00](v177);
  v190 = v141 - v4;
  v193 = sub_1A937829C(&qword_1EB387880, &qword_1A958F7C8);
  v176 = *(v193 - 8);
  MEMORY[0x1EEE9AC00](v193);
  v189 = v141 - v5;
  v175 = sub_1A937829C(&qword_1EB387888, &qword_1A958F7D0);
  v174 = *(v175 - 8);
  MEMORY[0x1EEE9AC00](v175);
  v188 = v141 - v6;
  v173 = sub_1A937829C(&qword_1EB387890, &qword_1A958F7D8);
  v172 = *(v173 - 8);
  MEMORY[0x1EEE9AC00](v173);
  v187 = v141 - v7;
  v171 = sub_1A937829C(&qword_1EB387898, &qword_1A958F7E0);
  v170 = *(v171 - 8);
  MEMORY[0x1EEE9AC00](v171);
  v186 = v141 - v8;
  v169 = sub_1A937829C(&qword_1EB3878A0, &qword_1A958F7E8);
  v168 = *(v169 - 8);
  MEMORY[0x1EEE9AC00](v169);
  v185 = v141 - v9;
  v167 = sub_1A937829C(&qword_1EB3878A8, &qword_1A958F7F0);
  v166 = *(v167 - 8);
  MEMORY[0x1EEE9AC00](v167);
  v184 = v141 - v10;
  v165 = sub_1A937829C(&qword_1EB3878B0, &qword_1A958F7F8);
  v164 = *(v165 - 8);
  MEMORY[0x1EEE9AC00](v165);
  v183 = v141 - v11;
  v162 = sub_1A937829C(&qword_1EB3878B8, &qword_1A958F800);
  v160 = *(v162 - 8);
  MEMORY[0x1EEE9AC00](v162);
  v182 = v141 - v12;
  v161 = sub_1A937829C(&qword_1EB3878C0, &qword_1A958F808);
  v159 = *(v161 - 8);
  MEMORY[0x1EEE9AC00](v161);
  v181 = v141 - v13;
  v158 = sub_1A937829C(&qword_1EB3878C8, &qword_1A958F810);
  v155 = *(v158 - 8);
  MEMORY[0x1EEE9AC00](v158);
  v196 = v141 - v14;
  v154 = sub_1A937829C(&qword_1EB3878D0, &qword_1A958F818);
  v153 = *(v154 - 8);
  MEMORY[0x1EEE9AC00](v154);
  v179 = v141 - v15;
  v157 = sub_1A937829C(&qword_1EB3878D8, &qword_1A958F820);
  v156 = *(v157 - 8);
  MEMORY[0x1EEE9AC00](v157);
  v180 = v141 - v16;
  v151 = sub_1A937829C(&qword_1EB3878E0, &qword_1A958F828);
  v163 = *(v151 - 8);
  MEMORY[0x1EEE9AC00](v151);
  v195 = v141 - v17;
  v152 = sub_1A937829C(&qword_1EB3878E8, &qword_1A958F830);
  v150 = *(v152 - 8);
  MEMORY[0x1EEE9AC00](v152);
  v194 = v141 - v18;
  v149 = sub_1A937829C(&qword_1EB3878F0, &qword_1A958F838);
  v148 = *(v149 - 8);
  MEMORY[0x1EEE9AC00](v149);
  v20 = v141 - v19;
  v21 = sub_1A937829C(&qword_1EB3878F8, &qword_1A958F840);
  v147 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v23 = v141 - v22;
  v24 = sub_1A937829C(&qword_1EB387900, &unk_1A958F848);
  v25 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v27 = v141 - v26;
  v28 = a1[3];
  v199 = a1;
  sub_1A93780F4(a1, v28);
  sub_1A946BE84();
  v29 = v200;
  sub_1A957D588();
  if (v29)
  {
LABEL_43:
    v98 = v199;
    return sub_1A9378138(v98);
  }

  v143 = v23;
  v144 = v20;
  v142 = v21;
  v31 = v194;
  v30 = v195;
  v32 = v196;
  v33 = v197;
  v145 = 0;
  v34 = v198;
  v146 = v25;
  v200 = v24;
  v35 = sub_1A957D268();
  if (*(v35 + 16) != 1 || (v36 = *(v35 + 32), v36 == 18))
  {
    v41 = sub_1A957CF58();
    swift_allocError();
    v43 = v42;
    sub_1A937829C(&qword_1EB386EE0, &qword_1A9589FC0);
    *v43 = &type metadata for TTSSpeechEvent;
    v44 = v200;
    sub_1A957D188();
    sub_1A957CF48();
    (*(*(v41 - 8) + 104))(v43, *MEMORY[0x1E69E6AF8], v41);
    swift_willThrow();
    (*(v146 + 8))(v27, v44);
LABEL_42:
    swift_unknownObjectRelease();
    goto LABEL_43;
  }

  v141[1] = v35;
  v37 = v193;
  switch(v36)
  {
    case 1:
      LOBYTE(v203) = 1;
      sub_1A946C418();
      v79 = v144;
      v52 = v200;
      v80 = v145;
      sub_1A957D178();
      if (v80)
      {
        goto LABEL_41;
      }

      v145 = 0;
      (*(v148 + 8))(v79, v149);
      (*(v146 + 8))(v27, v52);
      swift_unknownObjectRelease();
      v108 = 0;
      v39 = 0;
      v33 = 0;
      v37 = 0;
      v45 = 0;
      v105 = 0;
      v48 = 0;
      v107 = 0;
      v109 = 0;
      v110 = 10;
      v54 = v199;
      goto LABEL_53;
    case 2:
      LOBYTE(v203) = 2;
      sub_1A946C3C4();
      v52 = v200;
      v68 = v145;
      sub_1A957D178();
      if (v68)
      {
        goto LABEL_41;
      }

      LOBYTE(v203) = 0;
      v37 = v152;
      v69 = sub_1A957D1E8();
      v62 = v199;
      v197 = v114;
      v105 = v69;
      LOBYTE(v203) = 1;
      v115 = sub_1A957D1E8();
      v116 = v31;
      v45 = (v150 + 8);
      v48 = v146 + 8;
      v145 = 0;
      v39 = v115;
      v33 = v134;
      (*(v150 + 8))(v116, v37);
      (*v48)(v27, v200);
      swift_unknownObjectRelease();
      v107 = v105;
      v109 = v105 & 0xFFFFFFFFFFFFFF00;
      v110 = 1;
      goto LABEL_51;
    case 3:
      LOBYTE(v203) = 3;
      sub_1A946C370();
      v37 = v200;
      v72 = v145;
      sub_1A957D178();
      if (v72)
      {
        goto LABEL_37;
      }

      LOBYTE(v203) = 0;
      v73 = v151;
      v74 = sub_1A957D1E8();
      v62 = v199;
      v197 = v117;
      v198 = v27;
      v194 = v74;
      LOBYTE(v203) = 1;
      v118 = v30;
      v119 = v73;
      v39 = sub_1A957D1E8();
      v33 = v135;
      type metadata accessor for _NSRange(0);
      LOBYTE(v201) = 2;
      sub_1A946ECA8(&qword_1EB387908, type metadata accessor for _NSRange, MEMORY[0x1E6969FA8]);
      sub_1A957D238();
      v37 = v203;
      v45 = v204;
      LOBYTE(v201) = 3;
      v139 = sub_1A957D1E8();
      v145 = 0;
      v105 = v139;
      v48 = v140;
      (*(v163 + 8))(v118, v119);
      (*(v146 + 8))(v198, v200);
      swift_unknownObjectRelease();
      v107 = v194;
      v109 = v194 & 0xFFFFFFFFFFFFFF00;
      v110 = 2;
      goto LABEL_51;
    case 4:
      LOBYTE(v203) = 4;
      sub_1A946C31C();
      v58 = v180;
      v37 = v200;
      v59 = v145;
      sub_1A957D178();
      if (v59)
      {
        goto LABEL_37;
      }

      v105 = v27;
      LOBYTE(v203) = 0;
      v60 = v157;
      v61 = sub_1A957D1E8();
      v62 = v199;
      v63 = v146;
      v197 = v112;
      v194 = v61;
      LOBYTE(v203) = 1;
      v48 = v58;
      v113 = v60;
      v39 = sub_1A957D1E8();
      v33 = v132;
      LOBYTE(v203) = 2;
      v133 = sub_1A957D1E8();
      v145 = 0;
      v37 = v133;
      v45 = v138;
      (*(v156 + 8))(v48, v113);
      (*(v63 + 8))(v105, v200);
      swift_unknownObjectRelease();
      v107 = v194;
      v109 = v194 & 0xFFFFFFFFFFFFFF00;
      v110 = 3;
      goto LABEL_51;
    case 5:
      LOBYTE(v203) = 5;
      sub_1A946C2C8();
      v84 = v179;
      v45 = v200;
      v85 = v145;
      sub_1A957D178();
      if (v85)
      {
        goto LABEL_33;
      }

      v33 = v154;
      v99 = sub_1A957D1E8();
      v49 = v199;
      v100 = v146;
      v145 = 0;
      v105 = v99;
      v126 = v84;
      v39 = v127;
      (*(v153 + 8))(v126, v33);
      v128 = *(v100 + 8);
      v48 = v100 + 8;
      v128(v27, v45);
      swift_unknownObjectRelease();
      v108 = v39;
      v107 = v105;
      v109 = v105 & 0xFFFFFFFFFFFFFF00;
      v110 = 4;
      goto LABEL_50;
    case 6:
      LOBYTE(v203) = 6;
      sub_1A946C274();
      v88 = v32;
      v37 = v200;
      v89 = v145;
      sub_1A957D178();
      if (v89)
      {
LABEL_37:
        (*(v146 + 8))(v27, v37);
        goto LABEL_42;
      }

      v105 = v27;
      LOBYTE(v203) = 0;
      v101 = v158;
      v102 = sub_1A957D1E8();
      v62 = v199;
      v103 = v146;
      v197 = v129;
      v194 = v102;
      LOBYTE(v203) = 1;
      v39 = sub_1A957D198();
      v130 = v88;
      v131 = v101;
      v45 = (v155 + 8);
      v48 = v103 + 8;
      v145 = 0;
      v33 = v136;
      (*(v155 + 8))(v130, v131);
      (*(v103 + 8))(v105, v37);
      swift_unknownObjectRelease();
      v107 = v194;
      v109 = v194 & 0xFFFFFFFFFFFFFF00;
      v110 = 5;
LABEL_51:
      v54 = v62;
      goto LABEL_52;
    case 7:
      LOBYTE(v203) = 7;
      sub_1A946C220();
      v75 = v181;
      v45 = v200;
      v76 = v145;
      sub_1A957D178();
      if (v76)
      {
        goto LABEL_33;
      }

      v33 = v161;
      v77 = sub_1A957D1E8();
      v49 = v199;
      v78 = v146;
      v145 = 0;
      v105 = v77;
      v120 = v75;
      v39 = v121;
      (*(v159 + 8))(v120, v33);
      v122 = *(v78 + 8);
      v48 = v78 + 8;
      v122(v27, v45);
      swift_unknownObjectRelease();
      v108 = v39;
      v107 = v105;
      v109 = v105 & 0xFFFFFFFFFFFFFF00;
      v110 = 6;
      goto LABEL_50;
    case 8:
      LOBYTE(v203) = 8;
      sub_1A946C1CC();
      v92 = v182;
      v52 = v200;
      v93 = v145;
      sub_1A957D178();
      if (v93)
      {
        goto LABEL_41;
      }

      v145 = 0;
      (*(v160 + 8))(v92, v162);
      (*(v146 + 8))(v27, v52);
      swift_unknownObjectRelease();
      v108 = 0;
      v39 = 0;
      v33 = 0;
      v37 = 0;
      v45 = 0;
      v105 = 0;
      v48 = 0;
      v109 = 0;
      v110 = 10;
      v107 = 1;
      v54 = v199;
      goto LABEL_53;
    case 9:
      LOBYTE(v203) = 9;
      sub_1A946C178();
      v66 = v183;
      v52 = v200;
      v67 = v145;
      sub_1A957D178();
      if (v67)
      {
        goto LABEL_41;
      }

      v145 = 0;
      (*(v164 + 8))(v66, v165);
      (*(v146 + 8))(v27, v52);
      swift_unknownObjectRelease();
      v108 = 0;
      v39 = 0;
      v33 = 0;
      v37 = 0;
      v45 = 0;
      v105 = 0;
      v48 = 0;
      v109 = 0;
      v110 = 10;
      v107 = 2;
      v54 = v199;
      goto LABEL_53;
    case 10:
      LOBYTE(v203) = 10;
      sub_1A946C124();
      v90 = v184;
      v52 = v200;
      v91 = v145;
      sub_1A957D178();
      if (v91)
      {
        goto LABEL_41;
      }

      v145 = 0;
      (*(v166 + 8))(v90, v167);
      (*(v146 + 8))(v27, v52);
      swift_unknownObjectRelease();
      v108 = 0;
      v39 = 0;
      v33 = 0;
      v37 = 0;
      v45 = 0;
      v105 = 0;
      v48 = 0;
      v109 = 0;
      v110 = 10;
      v107 = 3;
      v54 = v199;
      goto LABEL_53;
    case 11:
      LOBYTE(v203) = 11;
      sub_1A946C0D0();
      v33 = v185;
      v45 = v200;
      v55 = v145;
      sub_1A957D178();
      if (v55)
      {
        goto LABEL_33;
      }

      v39 = v169;
      v56 = sub_1A957D1F8();
      v49 = v199;
      v57 = v146;
      v105 = v56;
      v145 = 0;
      (*(v168 + 8))(v33, v39);
      v111 = *(v57 + 8);
      v48 = v57 + 8;
      v111(v27, v45);
      swift_unknownObjectRelease();
      v109 = 0;
      v107 = v105 & 1;
      v110 = 7;
      goto LABEL_50;
    case 12:
      LOBYTE(v203) = 12;
      sub_1A946C07C();
      v64 = v186;
      v52 = v200;
      v65 = v145;
      sub_1A957D178();
      if (v65)
      {
        goto LABEL_41;
      }

      v145 = 0;
      (*(v170 + 8))(v64, v171);
      (*(v146 + 8))(v27, v52);
      swift_unknownObjectRelease();
      v108 = 0;
      v39 = 0;
      v33 = 0;
      v37 = 0;
      v45 = 0;
      v105 = 0;
      v48 = 0;
      v109 = 0;
      v110 = 10;
      v107 = 4;
      v54 = v199;
      goto LABEL_53;
    case 13:
      LOBYTE(v203) = 13;
      sub_1A946C028();
      v86 = v187;
      v52 = v200;
      v87 = v145;
      sub_1A957D178();
      if (v87)
      {
        goto LABEL_41;
      }

      v145 = 0;
      (*(v172 + 8))(v86, v173);
      (*(v146 + 8))(v27, v52);
      swift_unknownObjectRelease();
      v108 = 0;
      v39 = 0;
      v33 = 0;
      v37 = 0;
      v45 = 0;
      v105 = 0;
      v48 = 0;
      v109 = 0;
      v110 = 10;
      v107 = 5;
      v54 = v199;
      goto LABEL_53;
    case 14:
      LOBYTE(v203) = 14;
      sub_1A946BFD4();
      v51 = v188;
      v52 = v200;
      v53 = v145;
      sub_1A957D178();
      if (v53)
      {
        goto LABEL_41;
      }

      v145 = 0;
      (*(v174 + 8))(v51, v175);
      (*(v146 + 8))(v27, v52);
      swift_unknownObjectRelease();
      v108 = 0;
      v39 = 0;
      v33 = 0;
      v37 = 0;
      v45 = 0;
      v105 = 0;
      v48 = 0;
      v109 = 0;
      v110 = 10;
      v107 = 6;
      v54 = v199;
      goto LABEL_53;
    case 15:
      LOBYTE(v203) = 15;
      sub_1A946BF80();
      v70 = v189;
      v52 = v200;
      v71 = v145;
      sub_1A957D178();
      if (!v71)
      {
        v145 = 0;
        (*(v176 + 8))(v70, v37);
        (*(v146 + 8))(v27, v52);
        swift_unknownObjectRelease();
        v108 = 0;
        v39 = 0;
        v33 = 0;
        v37 = 0;
        v45 = 0;
        v105 = 0;
        v48 = 0;
        v109 = 0;
        v110 = 10;
        v107 = 7;
        v54 = v199;
        goto LABEL_53;
      }

LABEL_41:
      (*(v146 + 8))(v27, v52);
      goto LABEL_42;
    case 16:
      LOBYTE(v203) = 16;
      sub_1A946BF2C();
      v39 = v190;
      v45 = v200;
      v46 = v145;
      sub_1A957D178();
      if (!v46)
      {
        type metadata accessor for _NSRange(0);
        sub_1A946ECA8(&qword_1EB387908, type metadata accessor for _NSRange, MEMORY[0x1E6969FA8]);
        v47 = v177;
        sub_1A957D238();
        v48 = 0;
        v49 = v199;
        v50 = v146;
        v145 = 0;
        v104 = *(v33 + 1);
        v33 += 8;
        v104(v39, v47);
        v106 = *(v50 + 8);
        v105 = v50 + 8;
        v106(v27, v45);
        swift_unknownObjectRelease();
        v107 = v203;
        v108 = v204;
        v109 = v203 & 0xFFFFFFFFFFFFFF00;
        v110 = 8;
        goto LABEL_50;
      }

LABEL_33:
      (*(v146 + 8))(v27, v45);
      goto LABEL_42;
    case 17:
      v81 = v34;
      LOBYTE(v203) = 17;
      sub_1A946BED8();
      v82 = v191;
      v37 = v200;
      v83 = v145;
      sub_1A957D178();
      if (v83)
      {
        (*(v146 + 8))(v27, v37);
        swift_unknownObjectRelease();
        v98 = v199;
        return sub_1A9378138(v98);
      }

      v45 = v27;
      type metadata accessor for _NSRange(0);
      LOBYTE(v201) = 0;
      sub_1A946ECA8(&qword_1EB387908, type metadata accessor for _NSRange, MEMORY[0x1E6969FA8]);
      sub_1A957D238();
      v97 = v146;
      v194 = v203;
      v197 = v204;
      v205 = 1;
      v48 = v82;
      sub_1A957D238();
      v105 = 0;
      v145 = 0;
      (*(v178 + 8))(v82, v81);
      (*(v97 + 8))(v45, v37);
      swift_unknownObjectRelease();
      v39 = v201;
      v33 = v202;
      v107 = v194;
      v109 = v194 & 0xFFFFFFFFFFFFFF00;
      v110 = 9;
      v54 = v199;
LABEL_52:
      v108 = v197;
      goto LABEL_53;
    default:
      LOBYTE(v203) = 0;
      sub_1A946C46C();
      v38 = v143;
      v39 = v200;
      v40 = v145;
      sub_1A957D178();
      if (v40)
      {
        (*(v146 + 8))(v27, v39);
        goto LABEL_42;
      }

      v45 = v142;
      v95 = sub_1A957D1E8();
      v49 = v199;
      v96 = v146;
      v145 = 0;
      v48 = v95;
      v123 = v38;
      v105 = v124;
      (*(v147 + 8))(v123, v45);
      v125 = *(v96 + 8);
      v37 = v96 + 8;
      v125(v27, v39);
      swift_unknownObjectRelease();
      v108 = v105;
      v107 = v48;
      v110 = 0;
      v109 = v48 & 0xFFFFFFFFFFFFFF00;
LABEL_50:
      v54 = v49;
LABEL_53:
      v137 = v192;
      *v192 = v109 | v107;
      v137[1] = v108;
      v137[2] = v39;
      v137[3] = v33;
      v137[4] = v37;
      v137[5] = v45;
      v137[6] = v105;
      v137[7] = v48;
      *(v137 + 64) = v110;
      result = sub_1A9378138(v54);
      break;
  }

  return result;
}

uint64_t sub_1A946806C()
{
  sub_1A957D4F8();
  TTSSpeechEvent.hash(into:)(v1);
  return sub_1A957D548();
}

uint64_t sub_1A94680B0(uint64_t a1)
{
  sub_1A957D4F8();
  TTSSpeechEvent.hash(into:)(v2);
  return sub_1A957D548();
}

double TTSSpeechEvent.markup.getter@<D0>(_OWORD *a1@<X8>)
{
  if (*(v1 + 64) == 5)
  {
    v5 = v1;
    v3 = *v1;
    v4 = *(v5 + 8);

    TTSMarkup.SpeechDocument.init(ssml:)(v3, v4, a1);
  }

  else
  {
    result = 0.0;
    a1[1] = 0u;
    a1[2] = 0u;
    *a1 = 0u;
  }

  return result;
}

void TTSSpeechEvent.redacted.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  v13 = *(v1 + 32);
  v14 = v2;
  v15 = *(v1 + 64);
  v3 = *(v1 + 16);
  v12[0] = *v1;
  v12[1] = v3;
  if (v15 > 2u)
  {
    if (v15 == 3)
    {
      v10 = *(&v12[0] + 1);
      *a1 = *&v12[0];
      *(a1 + 8) = v10;
      *(a1 + 16) = 0;
      *(a1 + 24) = 0xE000000000000000;
      *(a1 + 32) = 0;
      *(a1 + 40) = 0xE000000000000000;
      v6 = 3;
      goto LABEL_13;
    }

    if (v15 != 4)
    {
LABEL_8:
      v8 = *(v1 + 48);
      *(a1 + 32) = *(v1 + 32);
      *(a1 + 48) = v8;
      *(a1 + 64) = *(v1 + 64);
      v9 = *(v1 + 16);
      *a1 = *v1;
      *(a1 + 16) = v9;
      sub_1A946330C(v12, v11);
      return;
    }

    *a1 = 0;
    *(a1 + 8) = 0xE000000000000000;
    v7 = 4;
LABEL_10:
    *(a1 + 64) = v7;
    return;
  }

  if (v15 == 1)
  {
    *a1 = 0;
    *(a1 + 8) = 0xE000000000000000;
    *(a1 + 16) = 0;
    *(a1 + 24) = 0xE000000000000000;
    v7 = 1;
    goto LABEL_10;
  }

  if (v15 != 2)
  {
    goto LABEL_8;
  }

  v4 = *(&v14 + 1);
  v5 = v14;
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0xE000000000000000;
  *(a1 + 32) = v13;
  *(a1 + 48) = __PAIR128__(v4, v5);
  v6 = 2;
LABEL_13:
  *(a1 + 64) = v6;
}

Swift::Void __swiftcall TTSSpeechEvent.emit(forJob:)(Swift::String forJob)
{
  object = forJob._object;
  countAndFlagsBits = forJob._countAndFlagsBits;
  if (qword_1EB39A4C0 != -1)
  {
    swift_once();
  }

  v4 = *(v1 + 48);
  v6[2] = *(v1 + 32);
  v6[3] = v4;
  v7 = *(v1 + 64);
  v5 = *(v1 + 16);
  v6[0] = *v1;
  v6[1] = v5;
  (*((*MEMORY[0x1E69E7D40] & *qword_1EB39A4C8) + 0x128))(v6, countAndFlagsBits, object);
}

uint64_t TTSSpeechEvent.logLevel.getter(uint64_t a1)
{
  v2 = v1[4].u8[0];
  if (v2 == 4 || v2 == 7)
  {
    return sub_1A957CA98();
  }

  if (v2 != 10)
  {
    return sub_1A957CA68();
  }

  v5 = vorrq_s8(v1[2], v1[3]);
  v6 = *&vorr_s8(*v5.i8, *&vextq_s8(v5, v5, 8uLL)) | v1[1].i64[1] | v1[1].i64[0] | v1->i64[1];
  if ((v1->i64[0] - 1) <= 2 && v6 == 0)
  {
    return sub_1A957CA98();
  }

  if (v1->i64[0] != 4 || v6 != 0)
  {
    return sub_1A957CA68();
  }

  return sub_1A957CA58();
}

uint64_t TTSLoggedSpeechEvent.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t TTSLoggedSpeechEvent.identifier.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t TTSLoggedSpeechEvent.event.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 64);
  v9 = *(v1 + 48);
  v10 = v2;
  v11 = *(v1 + 80);
  v3 = v11;
  v4 = *(v1 + 32);
  v8[0] = *(v1 + 16);
  v5 = v8[0];
  v8[1] = v4;
  *(a1 + 32) = v9;
  *(a1 + 48) = v2;
  *(a1 + 64) = v3;
  *a1 = v5;
  *(a1 + 16) = v4;
  return sub_1A946330C(v8, v7);
}

__n128 TTSLoggedSpeechEvent.event.setter(uint64_t a1)
{
  v3 = *(v1 + 64);
  v7[2] = *(v1 + 48);
  v7[3] = v3;
  v8 = *(v1 + 80);
  v4 = *(v1 + 32);
  v7[0] = *(v1 + 16);
  v7[1] = v4;
  sub_1A946C4C0(v7);
  v5 = *(a1 + 48);
  *(v1 + 48) = *(a1 + 32);
  *(v1 + 64) = v5;
  *(v1 + 80) = *(a1 + 64);
  result = *(a1 + 16);
  *(v1 + 16) = *a1;
  *(v1 + 32) = result;
  return result;
}

uint64_t TTSLoggedSpeechEvent.timestamp.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for TTSLoggedSpeechEvent(0) + 24);
  v4 = sub_1A957B078();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t TTSLoggedSpeechEvent.timestamp.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for TTSLoggedSpeechEvent(0) + 24);
  v4 = sub_1A957B078();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t TTSLoggedSpeechEvent.pid.setter(int a1)
{
  result = type metadata accessor for TTSLoggedSpeechEvent(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t TTSLoggedSpeechEvent.processName.getter()
{
  v1 = *(v0 + *(type metadata accessor for TTSLoggedSpeechEvent(0) + 32));

  return v1;
}

uint64_t TTSLoggedSpeechEvent.processName.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for TTSLoggedSpeechEvent(0) + 32));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t sub_1A94687B8()
{
  v1 = *v0;
  v2 = 0x696669746E656469;
  v3 = 0x6D617473656D6974;
  v4 = 6580592;
  if (v1 != 3)
  {
    v4 = 0x4E737365636F7270;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x746E657665;
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

uint64_t sub_1A9468858@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1A946EA84(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1A946888C(uint64_t a1)
{
  v2 = sub_1A946CF18();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A94688C8(uint64_t a1)
{
  v2 = sub_1A946CF18();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t TTSLoggedSpeechEvent.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1A937829C(&qword_1EB387910, &qword_1A958F858);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - v7;
  sub_1A93780F4(a1, a1[3]);
  sub_1A946CF18();
  sub_1A957D598();
  v27 = 0;
  sub_1A957D2E8();
  if (!v2)
  {
    v9 = *(v3 + 32);
    v10 = *(v3 + 64);
    v24 = *(v3 + 48);
    v25 = v10;
    v11 = *(v3 + 32);
    v23[0] = *(v3 + 16);
    v23[1] = v11;
    v19 = v9;
    v20 = v24;
    v21 = *(v3 + 64);
    v26 = *(v3 + 80);
    v22 = *(v3 + 80);
    v18 = v23[0];
    v17 = 1;
    sub_1A946330C(v23, v15);
    sub_1A946CF6C();
    sub_1A957D338();
    v15[2] = v20;
    v15[3] = v21;
    v16 = v22;
    v15[1] = v19;
    v15[0] = v18;
    sub_1A946C4C0(v15);
    type metadata accessor for TTSLoggedSpeechEvent(0);
    v14 = 2;
    sub_1A957B078();
    sub_1A946ECA8(&qword_1EB386370, MEMORY[0x1E6969530], MEMORY[0x1E6969538]);
    sub_1A957D338();
    v14 = 3;
    sub_1A957D348();
    v14 = 4;
    sub_1A957D2E8();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t TTSLoggedSpeechEvent.hash(into:)(uint64_t a1)
{
  sub_1A957C228();
  TTSSpeechEvent.hash(into:)(a1);
  type metadata accessor for TTSLoggedSpeechEvent(0);
  sub_1A957B078();
  sub_1A946ECA8(&qword_1EB387920, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
  sub_1A957C068();
  sub_1A957D528();

  return sub_1A957C228();
}

uint64_t TTSLoggedSpeechEvent.hashValue.getter()
{
  sub_1A957D4F8();
  sub_1A957C228();
  TTSSpeechEvent.hash(into:)(v1);
  type metadata accessor for TTSLoggedSpeechEvent(0);
  sub_1A957B078();
  sub_1A946ECA8(&qword_1EB387920, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
  sub_1A957C068();
  sub_1A957D528();
  sub_1A957C228();
  return sub_1A957D548();
}

uint64_t TTSLoggedSpeechEvent.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v3 = sub_1A957B078();
  v30 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_1A937829C(&qword_1EB387928, &unk_1A958F860);
  v31 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v7 = v28 - v6;
  v8 = type metadata accessor for TTSLoggedSpeechEvent(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A93780F4(a1, a1[3]);
  sub_1A946CF18();
  v32 = v7;
  v11 = v34;
  sub_1A957D588();
  if (v11)
  {
    return sub_1A9378138(a1);
  }

  v12 = v5;
  v13 = v31;
  v14 = v8;
  LOBYTE(v35) = 0;
  v15 = v10;
  *v10 = sub_1A957D1E8();
  *(v10 + 1) = v16;
  v34 = v16;
  v41 = 1;
  sub_1A946CFC0();
  sub_1A957D238();
  v17 = v38;
  *(v10 + 3) = v37;
  *(v10 + 4) = v17;
  v10[80] = v39;
  v18 = v36;
  *(v10 + 1) = v35;
  *(v10 + 2) = v18;
  v40 = 2;
  sub_1A946ECA8(&qword_1EB386368, MEMORY[0x1E6969530], MEMORY[0x1E6969558]);
  v19 = v12;
  v28[1] = 0;
  sub_1A957D238();
  v20 = a1;
  (*(v30 + 32))(&v15[*(v14 + 24)], v19, v3);
  v40 = 3;
  *&v15[*(v14 + 28)] = sub_1A957D248();
  v40 = 4;
  v21 = v14;
  v22 = v15;
  v23 = sub_1A957D1E8();
  v25 = v24;
  (*(v13 + 8))(v32, v33);
  v26 = (v22 + *(v21 + 32));
  *v26 = v23;
  v26[1] = v25;
  sub_1A946D014(v22, v29);
  sub_1A9378138(v20);
  return sub_1A946D078(v22);
}

uint64_t sub_1A94692F8(uint64_t a1)
{
  sub_1A957D4F8();
  sub_1A957C228();
  TTSSpeechEvent.hash(into:)(v2);
  sub_1A957B078();
  sub_1A946ECA8(&qword_1EB387920, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
  sub_1A957C068();
  sub_1A957D528();
  sub_1A957C228();
  return sub_1A957D548();
}

uint64_t sub_1A94693EC(uint64_t a1, uint64_t a2)
{
  sub_1A957C228();
  TTSSpeechEvent.hash(into:)(a1);
  sub_1A957B078();
  sub_1A946ECA8(&qword_1EB387920, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
  sub_1A957C068();
  sub_1A957D528();

  return sub_1A957C228();
}

uint64_t sub_1A94694E0(uint64_t a1, uint64_t a2)
{
  sub_1A957D4F8();
  sub_1A957C228();
  TTSSpeechEvent.hash(into:)(v3);
  sub_1A957B078();
  sub_1A946ECA8(&qword_1EB387920, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
  sub_1A957C068();
  sub_1A957D528();
  sub_1A957C228();
  return sub_1A957D548();
}

id sub_1A94695D4()
{
  result = [objc_allocWithZone(type metadata accessor for TTSSpeechTracer()) init];
  qword_1EB39A4C8 = result;
  return result;
}

id TTSSpeechTracer.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id static TTSSpeechTracer.shared.getter()
{
  if (qword_1EB39A4C0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EB39A4C8;

  return v1;
}

uint64_t sub_1A94696F0()
{
  v1 = (v0 + OBJC_IVAR____TtC12TextToSpeech15TTSSpeechTracer____lazy_storage___pid);
  if (*(v0 + OBJC_IVAR____TtC12TextToSpeech15TTSSpeechTracer____lazy_storage___pid + 4) != 1)
  {
    return *v1;
  }

  result = getpid();
  *v1 = result;
  v1[4] = 0;
  return result;
}

uint64_t sub_1A9469738()
{
  v1 = (v0 + OBJC_IVAR____TtC12TextToSpeech15TTSSpeechTracer____lazy_storage___procName);
  if (*(v0 + OBJC_IVAR____TtC12TextToSpeech15TTSSpeechTracer____lazy_storage___procName + 8))
  {
    v2 = *v1;
  }

  else
  {
    v3 = [objc_opt_self() processInfo];
    v4 = [v3 processName];

    v2 = sub_1A957C0F8();
    v6 = v5;

    *v1 = v2;
    v1[1] = v6;
  }

  return v2;
}

id sub_1A94697F8()
{
  v0 = sub_1A957BC88();
  sub_1A9377618(v0, qword_1EB39A4D8);
  v1 = sub_1A937731C(v0, qword_1EB39A4D8);
  result = TTSRosebudLogger(v1);
  if (result)
  {
    return sub_1A957BC98();
  }

  __break(1u);
  return result;
}

uint64_t static TTSSpeechTracer.eventLog.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EB39A4D0 != -1)
  {
    swift_once();
  }

  v2 = sub_1A957BC88();
  v3 = sub_1A937731C(v2, qword_1EB39A4D8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

id TTSSpeechTracer.init()()
{
  v18 = sub_1A957CAD8();
  v1 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1A957CAC8();
  MEMORY[0x1EEE9AC00](v4);
  v5 = sub_1A957BF48();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = &v0[OBJC_IVAR____TtC12TextToSpeech15TTSSpeechTracer____lazy_storage___pid];
  *v6 = 0;
  v6[4] = 1;
  v7 = &v0[OBJC_IVAR____TtC12TextToSpeech15TTSSpeechTracer____lazy_storage___procName];
  *v7 = 0;
  *(v7 + 1) = 0;
  v17 = OBJC_IVAR____TtC12TextToSpeech15TTSSpeechTracer_operationQueue;
  v16 = sub_1A93F8778();
  sub_1A957BF28();
  v20 = MEMORY[0x1E69E7CC0];
  sub_1A946ECA8(&qword_1ED96FE98, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  sub_1A937829C(&unk_1EB387BB0, &qword_1A9589CC0);
  sub_1A946D250(&qword_1ED96FEA8, &unk_1EB387BB0, &qword_1A9589CC0);
  sub_1A957CE08();
  (*(v1 + 104))(v3, *MEMORY[0x1E69E8090], v18);
  *&v0[v17] = sub_1A957CB08();
  v8 = OBJC_IVAR____TtC12TextToSpeech15TTSSpeechTracer_encoder;
  sub_1A957ADF8();
  swift_allocObject();
  *&v0[v8] = sub_1A957ADE8();
  *&v0[OBJC_IVAR____TtC12TextToSpeech15TTSSpeechTracer_eventQueue] = MEMORY[0x1E69E7CC0];
  *&v0[OBJC_IVAR____TtC12TextToSpeech15TTSSpeechTracer_eventBufferSize] = 1000;
  v9 = type metadata accessor for TTSSpeechTracer();
  v19.receiver = v0;
  v19.super_class = v9;
  v10 = objc_msgSendSuper2(&v19, sel_init);
  if (TTSIsInternalBuild(v10, v11))
  {
    v12 = sub_1A957C0C8();
    v13 = CFNotificationCenterGetDarwinNotifyCenter();
    v14 = v12;
    CFNotificationCenterAddObserver(v13, 0, sub_1A9469C80, v14, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }

  return v10;
}

uint64_t sub_1A9469CB0(uint64_t result)
{
  if (result < 0)
  {
    goto LABEL_20;
  }

  v1 = result;
  if (!result)
  {
    v3 = MEMORY[0x1E69E7CC0];
LABEL_17:
    v12 = v3;
    sub_1A937829C(&qword_1EB387968, &unk_1A958F870);
    sub_1A946D250(&qword_1EB387970, &qword_1EB387968, &unk_1A958F870);
    return sub_1A957C398();
  }

  v2 = 0;
  v3 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (("com.apple.ax.dumpspeech" & 0x2F00000000000000) == 0x2000000000000000)
    {
      goto LABEL_5;
    }

    result = sub_1A957C238();
    if (result < 0)
    {
      break;
    }

    v5 = result;
    if (!result)
    {
      goto LABEL_19;
    }

    v12 = 0;
    MEMORY[0x1AC587CF0](&v12, 8);
    if (v5 > v12 * v5)
    {
      v6 = -v5 % v5;
      while (v6 > v12 * v5)
      {
        v12 = 0;
        MEMORY[0x1AC587CF0](&v12, 8);
      }
    }

    sub_1A957C268();
    v7 = sub_1A957C388();
    v9 = v8;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v3 = sub_1A946B4DC(0, *(v3 + 2) + 1, 1, v3);
    }

    v11 = *(v3 + 2);
    v10 = *(v3 + 3);
    if (v11 >= v10 >> 1)
    {
      v3 = sub_1A946B4DC((v10 > 1), v11 + 1, 1, v3);
    }

    *(v3 + 2) = v11 + 1;
    v4 = &v3[16 * v11];
    *(v4 + 4) = v7;
    *(v4 + 5) = v9;
LABEL_5:
    if (++v2 == v1)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1A9469EF0(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *a1) + 0x58))(v8);
  (*((*v6 & *v3) + 0x128))(v8, a2, a3);
  v10[2] = v8[2];
  v10[3] = v8[3];
  v11 = v9;
  v10[0] = v8[0];
  v10[1] = v8[1];
  return sub_1A946C4C0(v10);
}

uint64_t sub_1A946A10C(__int128 *a1, void *a2, uint64_t a3)
{
  v38 = a3;
  v37 = a2;
  v5 = sub_1A957BF18();
  v42 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v39 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_1A957BF48();
  v40 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1A957B078();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v34 - v15;
  v17 = a1[2];
  v18 = a1[3];
  v19 = *a1;
  v46 = a1[1];
  v47 = v17;
  v48 = v18;
  v49 = *(a1 + 64);
  v45 = v19;
  result = TTSIsInternalBuild(v14, v20);
  if (result)
  {
    if (v49 == 3)
    {
      if (v46 == v47)
      {
        return result;
      }
    }

    else
    {
      if (v49 != 1)
      {
LABEL_8:
        sub_1A957B068();
        v34 = *&v3[OBJC_IVAR____TtC12TextToSpeech15TTSSpeechTracer_operationQueue];
        (*(v10 + 16))(v13, v16, v9);
        v22 = (*(v10 + 80) + 97) & ~*(v10 + 80);
        v35 = v5;
        v23 = (v11 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
        v24 = swift_allocObject();
        v25 = v9;
        v36 = v9;
        v26 = v38;
        *(v24 + 16) = v37;
        *(v24 + 24) = v26;
        v27 = v46;
        v28 = v48;
        *(v24 + 64) = v47;
        *(v24 + 80) = v28;
        *(v24 + 96) = v49;
        *(v24 + 32) = v45;
        *(v24 + 48) = v27;
        (*(v10 + 32))(v24 + v22, v13, v25);
        *(v24 + v23) = v3;
        aBlock[4] = sub_1A946D1A4;
        aBlock[5] = v24;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1A93C80E8;
        aBlock[3] = &unk_1F1CED770;
        v29 = _Block_copy(aBlock);
        v37 = v34;

        sub_1A946330C(&v45, v43);
        v30 = v3;
        sub_1A957BF28();
        v43[0] = MEMORY[0x1E69E7CC0];
        sub_1A946ECA8(qword_1ED96FED0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
        sub_1A937829C(&qword_1EB386D78, &qword_1A95898D0);
        sub_1A946D250(&qword_1ED96FEB0, &qword_1EB386D78, &qword_1A95898D0);
        v31 = v39;
        v32 = v35;
        sub_1A957CE08();
        v33 = v37;
        MEMORY[0x1AC5859B0](0, v8, v31, v29);
        _Block_release(v29);

        (*(v42 + 8))(v31, v32);
        (*(v40 + 8))(v8, v41);
        (*(v10 + 8))(v16, v36);
      }

      result = v45;
      if (v45 == v46)
      {
        return result;
      }
    }

    result = sub_1A957D3E8();
    if (result)
    {
      return result;
    }

    goto LABEL_8;
  }

  return result;
}

uint64_t sub_1A946A62C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_1A957C168();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v51[1] = v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TTSLoggedSpeechEvent(0);
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = v51 - v18;
  v20 = *(v17 + 24);
  v21 = sub_1A957B078();
  (*(*(v21 - 8) + 16))(&v19[v20], a4, v21);

  sub_1A946330C(a3, v52);
  LODWORD(v20) = sub_1A94696F0();
  v22 = sub_1A9469738();
  *v19 = a1;
  *(v19 + 1) = a2;
  v23 = *(a3 + 48);
  *(v19 + 3) = *(a3 + 32);
  *(v19 + 4) = v23;
  v19[80] = *(a3 + 64);
  v24 = *(a3 + 16);
  *(v19 + 1) = *a3;
  *(v19 + 2) = v24;
  *&v19[*(v12 + 28)] = v20;
  v25 = &v19[*(v12 + 32)];
  *v25 = v22;
  v25[1] = v26;
  v27 = *(a5 + OBJC_IVAR____TtC12TextToSpeech15TTSSpeechTracer_eventBufferSize);
  v28 = OBJC_IVAR____TtC12TextToSpeech15TTSSpeechTracer_eventQueue;
  swift_beginAccess();
  sub_1A946D014(v19, v16);
  v29 = *(a5 + v28);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a5 + v28) = v29;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v29 = sub_1A946B5E8(0, v29[2] + 1, 1, v29);
    *(a5 + v28) = v29;
  }

  v32 = v29[2];
  v31 = v29[3];
  if (v32 >= v31 >> 1)
  {
    v29 = sub_1A946B5E8((v31 > 1), v32 + 1, 1, v29);
  }

  v29[2] = v32 + 1;
  sub_1A946EC44(v16, v29 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v32);
  *(a5 + v28) = v29;
  if (v27 <= v32)
  {
    sub_1A946F144(0, 1);
  }

  swift_endAccess();
  if (TTSIsBaseSystem())
  {
    return sub_1A946D078(v19);
  }

  v33 = *(**sub_1A94CF400() + 216);

  v35 = v33(v34);

  v36 = *(v35 + 16);

  if (!v36 && ([objc_opt_self() shouldLogSensitiveSpeech] & 1) == 0)
  {
    return sub_1A946D078(v19);
  }

  sub_1A946ECA8(&qword_1EB387990, type metadata accessor for TTSLoggedSpeechEvent, &protocol conformance descriptor for TTSLoggedSpeechEvent);

  v38 = sub_1A957ADD8();
  v40 = v39;

  sub_1A957C158();
  v41 = sub_1A957C118();
  if (v42)
  {
    v43 = v42;
    v44 = v41;
    if (qword_1EB39A4D0 != -1)
    {
      swift_once();
    }

    v45 = sub_1A957BC88();
    sub_1A937731C(v45, qword_1EB39A4D8);
    v46 = sub_1A957CA98();

    v47 = sub_1A957BC68();

    if (os_log_type_enabled(v47, v46))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v52[0] = v49;
      *v48 = 136315138;
      v50 = sub_1A937A5C0(v44, v43, v52);

      *(v48 + 4) = v50;
      _os_log_impl(&dword_1A9324000, v47, v46, "%s", v48, 0xCu);
      sub_1A9378138(v49);
      MEMORY[0x1AC587CD0](v49, -1, -1);
      MEMORY[0x1AC587CD0](v48, -1, -1);
      sub_1A9442638(v38, v40);
    }

    else
    {
      sub_1A9442638(v38, v40);
    }

    return sub_1A946D078(v19);
  }

  sub_1A946D078(v19);
  return sub_1A9442638(v38, v40);
}

uint64_t sub_1A946AB60(uint64_t a1)
{
  v2 = sub_1A957C168();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TTSLoggedSpeechEvent(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC12TextToSpeech15TTSSpeechTracer_eventQueue;
  swift_beginAccess();
  result = *(a1 + v9);
  v36 = *(result + 16);
  if (v36)
  {
    v34 = result + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v35 = OBJC_IVAR____TtC12TextToSpeech15TTSSpeechTracer_encoder;

    v11 = 0;
    *&v12 = 136315138;
    v27 = v12;
    v28 = v4;
    v29 = a1;
    v31 = v6;
    v32 = v5;
    v30 = v8;
    v33 = result;
    while (v11 < *(result + 16))
    {
      sub_1A946D014(v34 + *(v6 + 72) * v11, v8);
      sub_1A946ECA8(&qword_1EB387990, type metadata accessor for TTSLoggedSpeechEvent, &protocol conformance descriptor for TTSLoggedSpeechEvent);

      v13 = v8;
      v14 = sub_1A957ADD8();
      v16 = v15;
      sub_1A946D078(v13);

      sub_1A957C158();
      v17 = sub_1A957C118();
      if (!v18)
      {
        sub_1A9442638(v14, v16);
      }

      v19 = v17;
      v20 = v18;
      if (qword_1EB39A4D0 != -1)
      {
        swift_once();
      }

      v21 = sub_1A957BC88();
      sub_1A937731C(v21, qword_1EB39A4D8);
      v22 = sub_1A957CA98();

      v23 = sub_1A957BC68();

      if (os_log_type_enabled(v23, v22))
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v37 = v25;
        *v24 = v27;
        v26 = sub_1A937A5C0(v19, v20, &v37);

        *(v24 + 4) = v26;
        _os_log_impl(&dword_1A9324000, v23, v22, "%s", v24, 0xCu);
        sub_1A9378138(v25);
        MEMORY[0x1AC587CD0](v25, -1, -1);
        MEMORY[0x1AC587CD0](v24, -1, -1);
        sub_1A9442638(v14, v16);
      }

      else
      {
        sub_1A9442638(v14, v16);
      }

      v6 = v31;
      v8 = v30;
      result = v33;
      if (v36 == ++v11)
      {
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1A946AFB8@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtC12TextToSpeech18TTSSpeechEventObjc_wrappedEvent;
  swift_beginAccess();
  v4 = *(v3 + 48);
  v11 = *(v3 + 32);
  v12 = v4;
  v13 = *(v3 + 64);
  v5 = v13;
  v6 = *(v3 + 16);
  v10[0] = *v3;
  v7 = v10[0];
  v10[1] = v6;
  *(a1 + 32) = v11;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *a1 = v7;
  *(a1 + 16) = v6;
  return sub_1A946330C(v10, &v9);
}

uint64_t sub_1A946B030(uint64_t a1)
{
  v3 = v1 + OBJC_IVAR____TtC12TextToSpeech18TTSSpeechEventObjc_wrappedEvent;
  swift_beginAccess();
  v4 = *(v3 + 48);
  v9[2] = *(v3 + 32);
  v9[3] = v4;
  v10 = *(v3 + 64);
  v5 = *(v3 + 16);
  v9[0] = *v3;
  v9[1] = v5;
  v6 = *(a1 + 48);
  *(v3 + 32) = *(a1 + 32);
  *(v3 + 48) = v6;
  *(v3 + 64) = *(a1 + 64);
  v7 = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 16) = v7;
  return sub_1A946C4C0(v9);
}

id sub_1A946B110(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = &v3[OBJC_IVAR____TtC12TextToSpeech18TTSSpeechEventObjc_wrappedEvent];
  v5 = *(a1 + 16);
  *v4 = *a1;
  *(v4 + 1) = v5;
  v6 = *(a1 + 48);
  *(v4 + 2) = *(a1 + 32);
  *(v4 + 3) = v6;
  v4[64] = *(a1 + 64);
  v8.receiver = v3;
  v8.super_class = v1;
  return objc_msgSendSuper2(&v8, sel_init);
}

id static TTSSpeechEventObjc.make(otherRewrite:from:to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = type metadata accessor for TTSSpeechEventObjc();
  v13 = objc_allocWithZone(v12);
  v14 = &v13[OBJC_IVAR____TtC12TextToSpeech18TTSSpeechEventObjc_wrappedEvent];
  *v14 = a1;
  *(v14 + 1) = a2;
  *(v14 + 2) = a3;
  *(v14 + 3) = a4;
  *(v14 + 4) = a5;
  *(v14 + 5) = a6;
  v14[64] = 3;
  v16.receiver = v13;
  v16.super_class = v12;

  return objc_msgSendSuper2(&v16, sel_init);
}

id static TTSSpeechEventObjc.make(start:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTSSpeechEventObjc();
  v5 = objc_allocWithZone(v4);
  v6 = &v5[OBJC_IVAR____TtC12TextToSpeech18TTSSpeechEventObjc_wrappedEvent];
  *v6 = a1;
  *(v6 + 1) = a2;
  v6[64] = 4;
  v8.receiver = v5;
  v8.super_class = v4;

  return objc_msgSendSuper2(&v8, sel_init);
}

id sub_1A946B460(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

char *sub_1A946B4DC(char *result, int64_t a2, char a3, char *a4)
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
    sub_1A937829C(&qword_1EB3879A0, &qword_1A9590FC0);
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
    v10 = MEMORY[0x1E69E7CC0];
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

void *sub_1A946B5E8(void *result, int64_t a2, char a3, void *a4)
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
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  sub_1A937829C(&qword_1EB387998, &qword_1A9590FB8);
  v10 = *(type metadata accessor for TTSLoggedSpeechEvent(0) - 8);
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
  v15 = *(type metadata accessor for TTSLoggedSpeechEvent(0) - 8);
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

uint64_t _s12TextToSpeech14TTSSpeechEventO2eeoiySbAC_ACtFZ_0(__int128 *a1, int8x16_t *a2)
{
  v2 = a1[1];
  v3 = a1[3];
  v26 = a1[2];
  v27 = v3;
  v4 = a1[1];
  v24 = *a1;
  v25 = v4;
  v5 = a2[1];
  v6 = a2[3];
  v31 = a2[2];
  v32 = v6;
  v7 = a2[1];
  v29 = *a2;
  v30 = v7;
  v8 = a1[3];
  v34[2] = v26;
  v34[3] = v8;
  v34[0] = v24;
  v34[1] = v2;
  v37 = v5;
  v38 = v31;
  v39 = a2[3];
  v28 = *(a1 + 64);
  v33 = a2[4].i8[0];
  v35 = *(a1 + 64);
  v40 = a2[4].i8[0];
  v36 = v29;
  v9 = (*(&v24 + 1) << 8) | ((*(&v24 + 5) | (BYTE7(v24) << 16)) << 40) | v24;
  if (v28 > 4u)
  {
    if (v28 > 7u)
    {
      if (v28 == 8)
      {
        if (v33 == 8)
        {
          sub_1A946F20C(v34);
          v10 = v9 == v29.i64[0] && *(&v24 + 1) == v29.i64[1];
          return v10 & 1;
        }

        goto LABEL_65;
      }

      if (v28 == 9)
      {
        if (v33 == 9)
        {
          sub_1A946F20C(v34);
          v10 = 0;
          if (__PAIR128__(*(&v24 + 1), v9) == *&v29)
          {
            v10 = v25 == v30.i64[0] && *(&v25 + 1) == v30.i64[1];
          }

          return v10 & 1;
        }

        goto LABEL_65;
      }

      v17 = v25 | *(&v24 + 1) | *(&v25 + 1);
      if (!(v17 | v26 | *(&v26 + 1) | v27 | v9 | *(&v27 + 1)))
      {
        if (v33 == 10)
        {
          v19 = vorrq_s8(vorrq_s8(v29, v31), vorrq_s8(v30, v32));
          if (!*&vorr_s8(*v19.i8, *&vextq_s8(v19, v19, 8uLL)))
          {
            goto LABEL_62;
          }
        }

        goto LABEL_65;
      }

      v18 = v17 | v26 | *(&v26 + 1) | v27 | *(&v27 + 1);
      if (v9 != 1 || v18)
      {
        if (v9 != 2 || v18)
        {
          if (v9 != 3 || v18)
          {
            if (v9 != 4 || v18)
            {
              if (v9 != 5 || v18)
              {
                if (v9 != 6 || v18)
                {
                  if (v33 != 10 || v29.i64[0] != 7)
                  {
                    goto LABEL_65;
                  }
                }

                else if (v33 != 10 || v29.i64[0] != 6)
                {
                  goto LABEL_65;
                }
              }

              else if (v33 != 10 || v29.i64[0] != 5)
              {
                goto LABEL_65;
              }
            }

            else if (v33 != 10 || v29.i64[0] != 4)
            {
              goto LABEL_65;
            }
          }

          else if (v33 != 10 || v29.i64[0] != 3)
          {
            goto LABEL_65;
          }
        }

        else if (v33 != 10 || v29.i64[0] != 2)
        {
          goto LABEL_65;
        }
      }

      else if (v33 != 10 || v29.i64[0] != 1)
      {
        goto LABEL_65;
      }

      v21 = vorrq_s8(v31, v32);
      if (!(*&vorr_s8(*v21.i8, *&vextq_s8(v21, v21, 8uLL)) | v30.i64[1] | v30.i64[0] | v29.i64[1]))
      {
        goto LABEL_62;
      }

      goto LABEL_65;
    }

    if (v28 != 5)
    {
      if (v28 != 6)
      {
        if (v33 == 7)
        {
          sub_1A946F20C(v34);
          v10 = v24 ^ v29.i8[0] ^ 1;
          return v10 & 1;
        }

        goto LABEL_65;
      }

      if (v33 == 6)
      {
LABEL_55:
        if (__PAIR128__(*(&v24 + 1), v9) != *&v29)
        {
          goto LABEL_86;
        }

        goto LABEL_61;
      }

      goto LABEL_64;
    }

    if (v33 == 5)
    {
      v12 = v30.i64[1];
      if (__PAIR128__(*(&v24 + 1), v9) == *&v29 || (sub_1A957D3E8() & 1) != 0)
      {
        if (!*(&v25 + 1))
        {
          sub_1A946330C(&v29, v23);
          sub_1A946330C(&v24, v23);

          sub_1A946F20C(v34);
          if (v12)
          {

            goto LABEL_67;
          }

          goto LABEL_94;
        }

        if (v30.i64[1])
        {
          if (v25 != *&v30)
          {
            v13 = sub_1A957D3E8();
            sub_1A946330C(&v29, v23);
            sub_1A946330C(&v24, v23);
            sub_1A946F20C(v34);
            if ((v13 & 1) == 0)
            {
LABEL_67:
              v10 = 0;
              return v10 & 1;
            }

LABEL_94:
            v10 = 1;
            return v10 & 1;
          }

LABEL_61:
          sub_1A946330C(&v29, v23);
          sub_1A946330C(&v24, v23);
LABEL_62:
          sub_1A946F20C(v34);
          v10 = 1;
          return v10 & 1;
        }
      }

LABEL_77:
      sub_1A946330C(&v29, v23);
      v15 = &v24;
      goto LABEL_66;
    }

    goto LABEL_63;
  }

  if (v28 > 1u)
  {
    if (v28 == 2)
    {
      if (v33 == 2)
      {
        *&v22 = v32.i64[1];
        *(&v22 + 1) = v32.i64[0];
        if (__PAIR128__(*(&v24 + 1), v9) != *&v29 && (sub_1A957D3E8() & 1) == 0 || v25 != *&v30 && (sub_1A957D3E8() & 1) == 0 || v26 != *&v31)
        {
          goto LABEL_77;
        }

        if (__PAIR128__(v27, *(&v27 + 1)) == v22)
        {
          goto LABEL_61;
        }

        goto LABEL_86;
      }
    }

    else
    {
      if (v28 != 3)
      {
        if (v33 == 4)
        {
          goto LABEL_55;
        }

        goto LABEL_64;
      }

      if (v33 == 3)
      {
        if (__PAIR128__(*(&v24 + 1), v9) != *&v29 && (sub_1A957D3E8() & 1) == 0 || v25 != *&v30 && (sub_1A957D3E8() & 1) == 0)
        {
          goto LABEL_77;
        }

        if (v26 == *&v31)
        {
          goto LABEL_61;
        }

        goto LABEL_86;
      }
    }

LABEL_63:

LABEL_64:

LABEL_65:
    v15 = &v29;
LABEL_66:
    sub_1A946330C(v15, v23);
    sub_1A946F20C(v34);
    goto LABEL_67;
  }

  if (!v28)
  {
    if (!v33)
    {
      goto LABEL_55;
    }

    goto LABEL_64;
  }

  if (v33 != 1)
  {
    goto LABEL_63;
  }

  if (__PAIR128__(*(&v24 + 1), v9) != *&v29 && (sub_1A957D3E8() & 1) == 0)
  {
    goto LABEL_77;
  }

  if (v25 == *&v30)
  {
    goto LABEL_61;
  }

LABEL_86:
  v20 = sub_1A957D3E8();
  sub_1A946330C(&v29, v23);
  sub_1A946330C(&v24, v23);
  sub_1A946F20C(v34);
  return v20 & 1;
}

unint64_t sub_1A946BE84()
{
  result = qword_1EB39A4F0;
  if (!qword_1EB39A4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB39A4F0);
  }

  return result;
}

unint64_t sub_1A946BED8()
{
  result = qword_1EB39A4F8;
  if (!qword_1EB39A4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB39A4F8);
  }

  return result;
}

unint64_t sub_1A946BF2C()
{
  result = qword_1EB39A500;
  if (!qword_1EB39A500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB39A500);
  }

  return result;
}

unint64_t sub_1A946BF80()
{
  result = qword_1EB39A508;
  if (!qword_1EB39A508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB39A508);
  }

  return result;
}

unint64_t sub_1A946BFD4()
{
  result = qword_1EB39A510;
  if (!qword_1EB39A510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB39A510);
  }

  return result;
}

unint64_t sub_1A946C028()
{
  result = qword_1EB39A518;
  if (!qword_1EB39A518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB39A518);
  }

  return result;
}

unint64_t sub_1A946C07C()
{
  result = qword_1EB39A520;
  if (!qword_1EB39A520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB39A520);
  }

  return result;
}

unint64_t sub_1A946C0D0()
{
  result = qword_1EB39A528;
  if (!qword_1EB39A528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB39A528);
  }

  return result;
}

unint64_t sub_1A946C124()
{
  result = qword_1EB39A530;
  if (!qword_1EB39A530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB39A530);
  }

  return result;
}

unint64_t sub_1A946C178()
{
  result = qword_1EB39A538;
  if (!qword_1EB39A538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB39A538);
  }

  return result;
}

unint64_t sub_1A946C1CC()
{
  result = qword_1EB39A540;
  if (!qword_1EB39A540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB39A540);
  }

  return result;
}

unint64_t sub_1A946C220()
{
  result = qword_1EB39A548;
  if (!qword_1EB39A548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB39A548);
  }

  return result;
}

unint64_t sub_1A946C274()
{
  result = qword_1EB39A550;
  if (!qword_1EB39A550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB39A550);
  }

  return result;
}

unint64_t sub_1A946C2C8()
{
  result = qword_1EB39A558;
  if (!qword_1EB39A558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB39A558);
  }

  return result;
}

unint64_t sub_1A946C31C()
{
  result = qword_1EB39A560;
  if (!qword_1EB39A560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB39A560);
  }

  return result;
}

unint64_t sub_1A946C370()
{
  result = qword_1EB39A568;
  if (!qword_1EB39A568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB39A568);
  }

  return result;
}

unint64_t sub_1A946C3C4()
{
  result = qword_1EB39A570;
  if (!qword_1EB39A570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB39A570);
  }

  return result;
}

unint64_t sub_1A946C418()
{
  result = qword_1EB39A578;
  if (!qword_1EB39A578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB39A578);
  }

  return result;
}

unint64_t sub_1A946C46C()
{
  result = qword_1EB39A580;
  if (!qword_1EB39A580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB39A580);
  }

  return result;
}

uint64_t type metadata accessor for TTSLoggedSpeechEvent(uint64_t a1)
{
  result = qword_1EB39A990;
  if (!qword_1EB39A990)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A946C53C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x696F506B63656863 && a2 == 0xEA0000000000746ELL || (sub_1A957D3E8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65756575716E65 && a2 == 0xE700000000000000 || (sub_1A957D3E8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001A95C34C0 == a2 || (sub_1A957D3E8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x72776552656C7572 && a2 == 0xEB00000000657469 || (sub_1A957D3E8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x776552726568746FLL && a2 == 0xEC00000065746972 || (sub_1A957D3E8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x7472617473 && a2 == 0xE500000000000000 || (sub_1A957D3E8() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x696C537472617473 && a2 == 0xEA00000000006563 || (sub_1A957D3E8() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x7245686365657073 && a2 == 0xEB00000000726F72 || (sub_1A957D3E8() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6573756170 && a2 == 0xE500000000000000 || (sub_1A957D3E8() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x656D75736572 && a2 == 0xE600000000000000 || (sub_1A957D3E8() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 1886352499 && a2 == 0xE400000000000000 || (sub_1A957D3E8() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x64656873696E6966 && a2 == 0xE800000000000000 || (sub_1A957D3E8() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001A95C34E0 == a2 || (sub_1A957D3E8() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001A95C3500 == a2 || (sub_1A957D3E8() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0x6465766965636572 && a2 == 0xED00007472617453 || (sub_1A957D3E8() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0x6465766965636572 && a2 == 0xEC000000706F7453 || (sub_1A957D3E8() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0x655272656B72616DLL && a2 == 0xEE00646576656963 || (sub_1A957D3E8() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001A95C3520 == a2)
  {

    return 17;
  }

  else
  {
    v5 = sub_1A957D3E8();

    if (v5)
    {
      return 17;
    }

    else
    {
      return 18;
    }
  }
}

uint64_t sub_1A946CAEC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7956599 && a2 == 0xE300000000000000;
  if (v3 || (sub_1A957D3E8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1836020326 && a2 == 0xE400000000000000 || (sub_1A957D3E8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 28532 && a2 == 0xE200000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1A957D3E8();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1A946CBFC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C616E696769726FLL && a2 == 0xE800000000000000;
  if (v4 || (sub_1A957D3E8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6D6563616C706572 && a2 == 0xEB00000000746E65 || (sub_1A957D3E8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65676E6172 && a2 == 0xE500000000000000 || (sub_1A957D3E8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265)
  {

    return 3;
  }

  else
  {
    v6 = sub_1A957D3E8();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

BOOL _s12TextToSpeech09TTSLoggedC5EventV2eeoiySbAC_ACtFZ_0(uint64_t *a1, int8x16_t *a2)
{
  v4 = *a1 == a2->i64[0] && a1[1] == a2->i64[1];
  if (v4 || (v5 = sub_1A957D3E8(), result = 0, (v5 & 1) != 0))
  {
    v7 = *(a1 + 2);
    v8 = *(a1 + 4);
    v36 = *(a1 + 3);
    v37 = v8;
    v38 = *(a1 + 80);
    v9 = *(a1 + 2);
    v35[0] = *(a1 + 1);
    v35[1] = v9;
    v10 = *(a1 + 4);
    v32 = v36;
    v33 = v10;
    v34 = *(a1 + 80);
    v30 = v35[0];
    v31 = v7;
    v11 = a2[1];
    v12 = a2[2];
    v40 = a2[5].i8[0];
    v13 = a2[4];
    v39[2] = a2[3];
    v39[3] = v13;
    v14 = a2[2];
    v15 = a2[3];
    v16 = a2[1];
    v39[0] = v11;
    v39[1] = v14;
    v17 = a2[4];
    v27 = v15;
    v28 = v17;
    v29 = a2[5].i8[0];
    v25 = v16;
    v26 = v12;
    sub_1A946330C(v35, v24);
    sub_1A946330C(v39, v24);
    v18 = _s12TextToSpeech14TTSSpeechEventO2eeoiySbAC_ACtFZ_0(&v30, &v25);
    v41[2] = v27;
    v41[3] = v28;
    v42 = v29;
    v41[0] = v25;
    v41[1] = v26;
    sub_1A946C4C0(v41);
    v43[2] = v32;
    v43[3] = v33;
    v44 = v34;
    v43[0] = v30;
    v43[1] = v31;
    sub_1A946C4C0(v43);
    result = 0;
    if (v18)
    {
      v19 = type metadata accessor for TTSLoggedSpeechEvent(0);
      if ((sub_1A957B058() & 1) != 0 && *(a1 + *(v19 + 28)) == *(a2->i32 + *(v19 + 28)))
      {
        v20 = *(v19 + 32);
        v21 = *(a1 + v20);
        v22 = *(a1 + v20 + 8);
        v23 = (a2->i64 + v20);
        if (v21 == *v23 && v22 == v23[1])
        {
          return 1;
        }

        if (sub_1A957D3E8())
        {
          return 1;
        }
      }
    }
  }

  return result;
}

unint64_t sub_1A946CF18()
{
  result = qword_1EB39A588[0];
  if (!qword_1EB39A588[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB39A588);
  }

  return result;
}

unint64_t sub_1A946CF6C()
{
  result = qword_1EB387918;
  if (!qword_1EB387918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB387918);
  }

  return result;
}

unint64_t sub_1A946CFC0()
{
  result = qword_1EB387930;
  if (!qword_1EB387930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB387930);
  }

  return result;
}

uint64_t sub_1A946D014(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTSLoggedSpeechEvent(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A946D078(uint64_t a1)
{
  v2 = type metadata accessor for TTSLoggedSpeechEvent(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A946D0F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int8 a9)
{
  result = a2;
  if (a9 > 2u)
  {
    if (a9 > 4u)
    {
      if (a9 != 5)
      {
        if (a9 != 6)
        {
          return result;
        }

        goto LABEL_15;
      }

      goto LABEL_14;
    }

    if (a9 != 3)
    {
      if (a9 != 4)
      {
        return result;
      }

      goto LABEL_15;
    }

    goto LABEL_13;
  }

  if (a9)
  {
    if (a9 == 1)
    {
LABEL_14:

      goto LABEL_15;
    }

    if (a9 != 2)
    {
      return result;
    }

LABEL_13:

    goto LABEL_14;
  }

LABEL_15:
}

uint64_t sub_1A946D1A4()
{
  v1 = *(sub_1A957B078() - 8);
  v2 = (*(v1 + 80) + 97) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);

  return sub_1A946A62C(v4, v5, v0 + 32, v0 + v2, v3);
}

uint64_t sub_1A946D238(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1A946D250(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1A93A7B68(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A946D2CC()
{
  result = qword_1EB387980;
  if (!qword_1EB387980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB387980);
  }

  return result;
}

uint64_t sub_1A946D368(uint64_t a1)
{
  if ((*(a1 + 64) & 0xFu) <= 9)
  {
    return *(a1 + 64) & 0xF;
  }

  else
  {
    return (*a1 + 10);
  }
}

__n128 sub_1A946D384(uint64_t a1, uint64_t a2)
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

uint64_t sub_1A946D3A8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF6 && *(a1 + 65))
  {
    return (*a1 + 246);
  }

  v3 = *(a1 + 64);
  if (v3 <= 0xA)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1A946D3F0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF5)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 - 246;
    if (a3 >= 0xF6)
    {
      *(result + 65) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF6)
    {
      *(result + 65) = 0;
    }

    if (a2)
    {
      *(result + 64) = -a2;
    }
  }

  return result;
}

uint64_t sub_1A946D448(uint64_t result, unsigned int a2)
{
  if (a2 >= 0xA)
  {
    *result = a2 - 10;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0u;
    *(result + 56) = 0;
    LOBYTE(a2) = 10;
  }

  *(result + 64) = a2;
  return result;
}

uint64_t sub_1A946D4AC(uint64_t a1)
{
  result = sub_1A957B078();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t dispatch thunk of TTSSpeechTracer.emit(event:forIdentifier:)()
{
  return (*((*MEMORY[0x1E69E7D40] & *v0) + 0x120))();
}

{
  return (*((*MEMORY[0x1E69E7D40] & *v0) + 0x128))();
}

uint64_t getEnumTagSinglePayload for TTSSpeechEvent.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEF)
  {
    goto LABEL_17;
  }

  if (a2 + 17 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 17) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 17;
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

      return (*a1 | (v4 << 8)) - 17;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 17;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x12;
  v8 = v6 - 18;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TTSSpeechEvent.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 17 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 17) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEF)
  {
    v4 = 0;
  }

  if (a2 > 0xEE)
  {
    v5 = ((a2 - 239) >> 8) + 1;
    *result = a2 + 17;
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
    *result = a2 + 17;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1A946D8A8()
{
  result = qword_1EB39AAA0[0];
  if (!qword_1EB39AAA0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB39AAA0);
  }

  return result;
}

unint64_t sub_1A946D900()
{
  result = qword_1EB39ACB0[0];
  if (!qword_1EB39ACB0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB39ACB0);
  }

  return result;
}

unint64_t sub_1A946D958()
{
  result = qword_1EB39B2C0[0];
  if (!qword_1EB39B2C0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB39B2C0);
  }

  return result;
}

unint64_t sub_1A946D9B0()
{
  result = qword_1EB39B7D0[0];
  if (!qword_1EB39B7D0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB39B7D0);
  }

  return result;
}

unint64_t sub_1A946DA08()
{
  result = qword_1EB39B9E0[0];
  if (!qword_1EB39B9E0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB39B9E0);
  }

  return result;
}

unint64_t sub_1A946DA60()
{
  result = qword_1EB39BBF0[0];
  if (!qword_1EB39BBF0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB39BBF0);
  }

  return result;
}

unint64_t sub_1A946DAB8()
{
  result = qword_1EB39BE00[0];
  if (!qword_1EB39BE00[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB39BE00);
  }

  return result;
}

unint64_t sub_1A946DB10()
{
  result = qword_1EB39C010[0];
  if (!qword_1EB39C010[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB39C010);
  }

  return result;
}

unint64_t sub_1A946DB68()
{
  result = qword_1EB39C220[0];
  if (!qword_1EB39C220[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB39C220);
  }

  return result;
}