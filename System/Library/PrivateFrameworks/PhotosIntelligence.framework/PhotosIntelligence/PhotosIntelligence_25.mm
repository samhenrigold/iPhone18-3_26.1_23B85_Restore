unint64_t sub_1C7139E50()
{
  result = qword_1EC217C88;
  if (!qword_1EC217C88)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for StoryMusicCurationSong.SongType, &type metadata for StoryMusicCurationSong.SongType, v0, v1);
    atomic_store(result, &qword_1EC217C88);
  }

  return result;
}

unint64_t sub_1C7139EA4()
{
  result = qword_1EDD09960;
  if (!qword_1EDD09960)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for StoryMusicCurationSong.SongType, &type metadata for StoryMusicCurationSong.SongType, v0, v1);
    atomic_store(result, &qword_1EDD09960);
  }

  return result;
}

unint64_t sub_1C7139EF8()
{
  result = qword_1EDD069F0;
  if (!qword_1EDD069F0)
  {
    v4[1] = v0;
    v4[2] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC215778, &qword_1C755F0A0);
    v4[0] = MEMORY[0x1E69E63C0];
    result = swift_getWitnessTable(MEMORY[0x1E69E7C70], v3, v4);
    atomic_store(result, &qword_1EDD069F0);
  }

  return result;
}

unint64_t sub_1C7139F74()
{
  result = qword_1EDD06A90;
  if (!qword_1EDD06A90)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC217538, &qword_1C7586ED0);
    v4[0] = sub_1C6FF60E4(&qword_1EDD0CF60, MEMORY[0x1E69E6160], MEMORY[0x1E69E6300]);
    result = swift_getWitnessTable(MEMORY[0x1E69E7C70], v3, v4);
    atomic_store(result, &qword_1EDD06A90);
  }

  return result;
}

unint64_t sub_1C713A01C()
{
  result = qword_1EDD06A38;
  if (!qword_1EDD06A38)
  {
    v4[1] = v0;
    v4[2] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC217C98, &unk_1C756E610);
    v4[0] = MEMORY[0x1E69E6378];
    result = swift_getWitnessTable(MEMORY[0x1E69E7C70], v3, v4);
    atomic_store(result, &qword_1EDD06A38);
  }

  return result;
}

unint64_t sub_1C713A0F0()
{
  result = qword_1EC217CA0;
  if (!qword_1EC217CA0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for StoryMusicCurationSong.SongType, &type metadata for StoryMusicCurationSong.SongType, v0, v1);
    atomic_store(result, &qword_1EC217CA0);
  }

  return result;
}

unint64_t sub_1C713A148()
{
  result = qword_1EC217CA8;
  if (!qword_1EC217CA8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for StoryMusicCurationSong, &type metadata for StoryMusicCurationSong, v0, v1);
    atomic_store(result, &qword_1EC217CA8);
  }

  return result;
}

uint64_t sub_1C713A1A4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 192))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
      if (v2 >= 0xFFFFFFFF)
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

uint64_t sub_1C713A1E4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 184) = 0;
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 192) = 1;
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

    *(result + 192) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for StoryMusicCurationSong.SongType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1C713A338(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF2)
  {
    if (a2 + 14 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 14) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 15;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xF;
  v5 = v6 - 15;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_1C713A3C0(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 14 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 14) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF2)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF1)
  {
    v6 = ((a2 - 242) >> 8) + 1;
    *result = a2 + 14;
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
          *result = a2 + 14;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C713A49C()
{
  result = qword_1EC217CB0;
  if (!qword_1EC217CB0)
  {
    result = swift_getWitnessTable(byte_1C756E994, &unk_1F46B6BA0, v0, v1);
    atomic_store(result, &qword_1EC217CB0);
  }

  return result;
}

unint64_t sub_1C713A4F4()
{
  result = qword_1EDD09940;
  if (!qword_1EDD09940)
  {
    result = swift_getWitnessTable(asc_1C756E8CC, &unk_1F46B6BA0, v0, v1);
    atomic_store(result, &qword_1EDD09940);
  }

  return result;
}

unint64_t sub_1C713A54C()
{
  result = qword_1EDD09948;
  if (!qword_1EDD09948)
  {
    result = swift_getWitnessTable(asc_1C756E8F4, &unk_1F46B6BA0, v0, v1);
    atomic_store(result, &qword_1EDD09948);
  }

  return result;
}

unint64_t sub_1C713A5A0()
{
  result = qword_1EDD09958;
  if (!qword_1EDD09958)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for StoryMusicCurationSong.SongType, &type metadata for StoryMusicCurationSong.SongType, v0, v1);
    atomic_store(result, &qword_1EDD09958);
  }

  return result;
}

uint64_t sub_1C713A5F4(uint64_t *a1, uint64_t a2)
{
  v4 = a1[1];
  sub_1C709D4BC(a2, v10);
  sub_1C709D4BC(a2, v10);
  result = sub_1C7551D7C();
  if (result >= v4)
  {
    if ((v4 & 0x8000000000000000) == 0)
    {
      if (v4)
      {
        sub_1C713A730(0, v4, 1, a1, a2);
LABEL_11:
        sub_1C713A098(a2);
        return sub_1C713A098(a2);
      }

LABEL_10:
      sub_1C713A098(a2);
      goto LABEL_11;
    }
  }

  else
  {
    if (v4 >= -1)
    {
      v6 = result;
      v7 = v4 / 2;
      if (v4 <= 1)
      {
        v8 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v8 = sub_1C7550BBC();
        *(v8 + 16) = v7;
      }

      v9[0] = (v8 + 32);
      v9[1] = v7;
      sub_1C709D4BC(a2, v10);
      sub_1C713A8B0(v9, v10, a1, v6, a2);
      *(v8 + 16) = 0;

      goto LABEL_10;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1C713A730(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (a3 != a2)
  {
    v6 = a3;
    v8 = *a4;
    v9 = *(a5 + 104);
    v10 = *(a5 + 108);
    v11 = *a4 + 192 * a3 - 192;
    v12 = a1 - a3;
    while (2)
    {
      v13 = v12;
      v14 = v11;
      do
      {
        v15 = *(v14 + 248);
        if (*(v14 + 256))
        {
          v15 = 0.1;
        }

        v16 = *(v14 + 264);
        if (*(v14 + 272))
        {
          v16 = 1.0;
        }

        if (*(v14 + 64))
        {
          v18 = 0.1;
        }

        else
        {
          v17 = *(v14 + 56);
          v18 = v17;
        }

        if (*(v14 + 80))
        {
          v19 = 1.0;
        }

        else
        {
          v19 = *(v14 + 72);
        }

        v20 = hypotf(v15 - v9, v16 - v10);
        if (v20 >= hypotf(v18 - v9, v19 - v10))
        {
          break;
        }

        if (!v8)
        {
          __break(1u);
          return;
        }

        memcpy(__dst, (v14 + 192), sizeof(__dst));
        memcpy((v14 + 192), v14, 0xC0uLL);
        memcpy(v14, __dst, 0xC0uLL);
        v14 -= 192;
      }

      while (!__CFADD__(v13++, 1));
      ++v6;
      v11 += 192;
      --v12;
      if (v6 != a2)
      {
        continue;
      }

      break;
    }
  }

  sub_1C713A098(a5);
}

uint64_t sub_1C713A8B0(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v7 = a3[1];
  if (v7 < 1)
  {
    sub_1C709D4BC(a5, v130);
    sub_1C709D4BC(a5, v130);
    v9 = MEMORY[0x1E69E7CC0];
LABEL_112:
    v113 = *a1;
    if (!*a1)
    {
      goto LABEL_157;
    }

    sub_1C709D4BC(a5, v130);
    sub_1C709D4BC(a5, v130);
    v121 = v5;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_114;
    }

    goto LABEL_151;
  }

  sub_1C709D4BC(a5, v130);
  sub_1C709D4BC(a5, v130);
  v8 = 0;
  v9 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v10 = v8++;
    if (v8 < v7)
    {
      v11 = *a3;
      v12 = (*a3 + 192 * v8);
      memcpy(__dst, v12, sizeof(__dst));
      memcpy(v128, v12, sizeof(v128));
      memcpy(v130, (v11 + 192 * v10), 0xC0uLL);
      memcpy(__src, (v11 + 192 * v10), sizeof(__src));
      v13 = sub_1C7139C84(v128, __src, a5);
      if (v5)
      {
        memcpy(v125, __src, sizeof(v125));
        sub_1C7080654(__dst, v126);
        sub_1C7080654(v130, v126);
        sub_1C70806B0(v125);
        memcpy(v126, v128, sizeof(v126));
        sub_1C70806B0(v126);
LABEL_125:

        v110 = a5;
        sub_1C713A098(a5);
        sub_1C713A098(a5);
        return sub_1C713A098(v110);
      }

      v14 = v13;
      v15 = v9;
      memcpy(v125, __src, sizeof(v125));
      sub_1C7080654(__dst, v124);
      sub_1C7080654(v130, v124);
      sub_1C70806B0(v125);
      memcpy(v126, v128, sizeof(v126));
      sub_1C70806B0(v126);
      v16 = v11 + 192 * v10;
      v17 = 192 * v10;
      v18 = (v16 + 464);
      v19 = v10 + 2;
      do
      {
        v20 = v19;
        if (++v8 >= v7)
        {
          v8 = v7;
          if (!v14)
          {
            goto LABEL_31;
          }

          goto LABEL_21;
        }

        v21 = *(v18 - 3);
        if (*(v18 - 16))
        {
          v21 = 0.1;
        }

        v22 = *(v18 - 1);
        if (*v18)
        {
          v22 = 1.0;
        }

        if (*(v18 - 208))
        {
          v24 = 0.1;
        }

        else
        {
          v23 = *(v18 - 27);
          v24 = v23;
        }

        if (*(v18 - 192))
        {
          v25 = 1.0;
        }

        else
        {
          v25 = *(v18 - 25);
        }

        v26 = *(a5 + 104);
        v27 = *(a5 + 108);
        v28 = hypotf(v21 - v26, v22 - v27);
        v29 = v14 ^ (v28 >= hypotf(v24 - v26, v25 - v27));
        v18 += 24;
        v19 = v20 + 1;
      }

      while ((v29 & 1) != 0);
      if (!v14)
      {
        goto LABEL_31;
      }

LABEL_21:
      if (v8 < v10)
      {
        goto LABEL_150;
      }

      if (v10 < v8)
      {
        if (v7 >= v20)
        {
          v30 = v20;
        }

        else
        {
          v30 = v7;
        }

        v31 = 192 * v30 - 192;
        v32 = v8;
        v33 = v10;
        do
        {
          if (v33 != --v32)
          {
            v34 = v8;
            v35 = *a3;
            if (!*a3)
            {
              goto LABEL_155;
            }

            memcpy(v124, (v35 + v17), sizeof(v124));
            memmove((v35 + v17), (v35 + v31), 0xC0uLL);
            memcpy((v35 + v31), v124, 0xC0uLL);
            v8 = v34;
          }

          ++v33;
          v31 -= 192;
          v17 += 192;
        }

        while (v33 < v32);
      }

LABEL_31:
      v9 = v15;
    }

    v36 = a3[1];
    if (v8 < v36)
    {
      if (__OFSUB__(v8, v10))
      {
        goto LABEL_147;
      }

      if (v8 - v10 < a4)
      {
        break;
      }
    }

LABEL_59:
    if (v8 < v10)
    {
      goto LABEL_146;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1C6FB17EC(0, *(v9 + 2) + 1, 1, v9);
      v9 = v98;
    }

    v53 = *(v9 + 2);
    v52 = *(v9 + 3);
    v54 = v53 + 1;
    if (v53 >= v52 >> 1)
    {
      sub_1C6FB17EC(v52 > 1, v53 + 1, 1, v9);
      v9 = v99;
    }

    *(v9 + 2) = v54;
    v55 = v9 + 32;
    v56 = &v9[16 * v53 + 32];
    *v56 = v10;
    *(v56 + 1) = v8;
    v117 = *a1;
    if (!*a1)
    {
      goto LABEL_156;
    }

    if (v53)
    {
      v113 = v9 + 32;
      v115 = v8;
      while (1)
      {
        v57 = v54 - 1;
        v58 = &v55[16 * v54 - 16];
        v59 = &v9[16 * v54];
        if (v54 >= 4)
        {
          break;
        }

        if (v54 == 3)
        {
          v60 = *(v9 + 4);
          v61 = *(v9 + 5);
          v70 = __OFSUB__(v61, v60);
          v62 = v61 - v60;
          v63 = v70;
LABEL_80:
          if (v63)
          {
            goto LABEL_133;
          }

          v75 = *v59;
          v74 = *(v59 + 1);
          v76 = __OFSUB__(v74, v75);
          v77 = v74 - v75;
          v78 = v76;
          if (v76)
          {
            goto LABEL_136;
          }

          v79 = *(v58 + 1);
          v80 = v79 - *v58;
          if (__OFSUB__(v79, *v58))
          {
            goto LABEL_139;
          }

          if (__OFADD__(v77, v80))
          {
            goto LABEL_141;
          }

          if (v77 + v80 >= v62)
          {
            if (v62 < v80)
            {
              v57 = v54 - 2;
            }

            goto LABEL_102;
          }

          goto LABEL_95;
        }

        if (v54 < 2)
        {
          goto LABEL_135;
        }

        v82 = *v59;
        v81 = *(v59 + 1);
        v70 = __OFSUB__(v81, v82);
        v77 = v81 - v82;
        v78 = v70;
LABEL_95:
        if (v78)
        {
          goto LABEL_138;
        }

        v84 = *v58;
        v83 = *(v58 + 1);
        v70 = __OFSUB__(v83, v84);
        v85 = v83 - v84;
        if (v70)
        {
          goto LABEL_140;
        }

        if (v85 < v77)
        {
          goto LABEL_109;
        }

LABEL_102:
        if (v57 - 1 >= v54)
        {
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
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
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
LABEL_144:
          __break(1u);
LABEL_145:
          __break(1u);
LABEL_146:
          __break(1u);
LABEL_147:
          __break(1u);
LABEL_148:
          __break(1u);
          goto LABEL_149;
        }

        v89 = *a3;
        if (!*a3)
        {
          goto LABEL_153;
        }

        v90 = &v55[16 * v57 - 16];
        v91 = *v90;
        v92 = v57;
        v93 = &v55[16 * v57];
        v94 = *(v93 + 1);
        v119 = (v89 + 192 * *v93);
        v121 = (v89 + 192 * *v90);
        v95 = (v89 + 192 * v94);
        sub_1C709D4BC(a5, v130);
        sub_1C713B1FC(v121, v119, v95, v117, a5);
        if (v5)
        {
          goto LABEL_125;
        }

        if (v94 < v91)
        {
          goto LABEL_128;
        }

        v96 = *(v9 + 2);
        if (v92 > v96)
        {
          goto LABEL_129;
        }

        *v90 = v91;
        *(v90 + 1) = v94;
        if (v92 >= v96)
        {
          goto LABEL_130;
        }

        v97 = v92;
        v54 = v96 - 1;
        sub_1C7423CF4(v93 + 16, v96 - 1 - v97, v93);
        *(v9 + 2) = v96 - 1;
        v55 = v9 + 32;
        v8 = v115;
        if (v96 <= 2)
        {
          goto LABEL_109;
        }
      }

      v64 = &v55[16 * v54];
      v65 = *(v64 - 8);
      v66 = *(v64 - 7);
      v70 = __OFSUB__(v66, v65);
      v67 = v66 - v65;
      if (v70)
      {
        goto LABEL_131;
      }

      v69 = *(v64 - 6);
      v68 = *(v64 - 5);
      v70 = __OFSUB__(v68, v69);
      v62 = v68 - v69;
      v63 = v70;
      if (v70)
      {
        goto LABEL_132;
      }

      v71 = *(v59 + 1);
      v72 = v71 - *v59;
      if (__OFSUB__(v71, *v59))
      {
        goto LABEL_134;
      }

      v70 = __OFADD__(v62, v72);
      v73 = v62 + v72;
      if (v70)
      {
        goto LABEL_137;
      }

      if (v73 >= v67)
      {
        v87 = *v58;
        v86 = *(v58 + 1);
        v70 = __OFSUB__(v86, v87);
        v88 = v86 - v87;
        if (v70)
        {
          goto LABEL_145;
        }

        if (v62 < v88)
        {
          v57 = v54 - 2;
        }

        goto LABEL_102;
      }

      goto LABEL_80;
    }

LABEL_109:
    v7 = a3[1];
    if (v8 >= v7)
    {
      goto LABEL_112;
    }
  }

  if (__OFADD__(v10, a4))
  {
    goto LABEL_148;
  }

  if (v10 + a4 >= v36)
  {
    v37 = a3[1];
  }

  else
  {
    v37 = v10 + a4;
  }

  if (v37 < v10)
  {
LABEL_149:
    __break(1u);
LABEL_150:
    __break(1u);
LABEL_151:
    v9 = sub_1C7420830();
LABEL_114:
    v101 = v9 + 16;
    v100 = *(v9 + 2);
    for (i = v9; ; v9 = i)
    {
      if (v100 < 2)
      {
        sub_1C713A098(a5);
        sub_1C713A098(a5);

        sub_1C713A098(a5);
        sub_1C713A098(a5);
        return sub_1C713A098(a5);
      }

      v102 = *a3;
      if (!*a3)
      {
        goto LABEL_154;
      }

      v103 = &v9[16 * v100];
      v104 = *v103;
      v105 = &v101[2 * v100];
      v106 = *(v105 + 1);
      v118 = (v102 + 192 * *v105);
      v120 = (v102 + 192 * *v103);
      v107 = (v102 + 192 * v106);
      sub_1C709D4BC(a5, v130);
      sub_1C713B1FC(v120, v118, v107, v113, a5);
      if (v121)
      {
        break;
      }

      if (v106 < v104)
      {
        goto LABEL_142;
      }

      if (v100 - 2 >= *v101)
      {
        goto LABEL_143;
      }

      *v103 = v104;
      *(v103 + 1) = v106;
      v108 = *v101 - v100;
      if (*v101 < v100)
      {
        goto LABEL_144;
      }

      v100 = *v101 - 1;
      sub_1C7423CF4(v105 + 16, v108, v105);
      *v101 = v100;
    }

    v110 = a5;
    sub_1C713A098(a5);
    sub_1C713A098(a5);

    sub_1C713A098(a5);
    sub_1C713A098(a5);
    return sub_1C713A098(v110);
  }

  if (v8 == v37)
  {
    goto LABEL_59;
  }

  v114 = v9;
  v38 = *a3;
  v39 = *(a5 + 104);
  v40 = *(a5 + 108);
  v41 = *a3 + 192 * v8 - 192;
  v42 = v10 - v8;
LABEL_42:
  v43 = v42;
  v44 = v41;
  while (1)
  {
    v45 = *(v44 + 248);
    if (*(v44 + 256))
    {
      v45 = 0.1;
    }

    v46 = *(v44 + 264);
    if (*(v44 + 272))
    {
      v46 = 1.0;
    }

    if (*(v44 + 64))
    {
      v48 = 0.1;
    }

    else
    {
      v47 = *(v44 + 56);
      v48 = v47;
    }

    if (*(v44 + 80))
    {
      v49 = 1.0;
    }

    else
    {
      v49 = *(v44 + 72);
    }

    v50 = hypotf(v45 - v39, v46 - v40);
    if (v50 >= hypotf(v48 - v39, v49 - v40))
    {
LABEL_57:
      v41 += 192;
      --v42;
      if (++v8 == v37)
      {
        v9 = v114;
        v8 = v37;
        goto LABEL_59;
      }

      goto LABEL_42;
    }

    if (!v38)
    {
      break;
    }

    memcpy(v130, (v44 + 192), 0xC0uLL);
    memcpy((v44 + 192), v44, 0xC0uLL);
    memcpy(v44, v130, 0xC0uLL);
    v44 -= 192;
    if (__CFADD__(v43++, 1))
    {
      goto LABEL_57;
    }
  }

  sub_1C713A098(a5);
  sub_1C713A098(a5);
  __break(1u);
LABEL_153:
  sub_1C713A098(a5);
  sub_1C713A098(a5);
  __break(1u);
LABEL_154:
  sub_1C713A098(a5);
  __break(1u);
LABEL_155:
  sub_1C713A098(a5);
  sub_1C713A098(a5);
  __break(1u);
LABEL_156:
  sub_1C713A098(a5);
  sub_1C713A098(a5);
  __break(1u);
LABEL_157:
  sub_1C713A098(a5);
  result = sub_1C713A098(a5);
  __break(1u);
  return result;
}

uint64_t sub_1C713B1FC(char *a1, char *a2, char *a3, char *a4, uint64_t a5)
{
  v6 = a4;
  v7 = a3;
  v8 = a2;
  v9 = a1;
  v10 = (a2 - a1) / 192;
  v11 = (a3 - a2) / 192;
  if (v10 < v11)
  {
    sub_1C741E6AC(a1, (a2 - a1) / 192, a4);
    v12 = &v6[192 * v10];
    while (1)
    {
      if (v6 >= v12 || v8 >= v7)
      {
        v8 = v9;
        goto LABEL_48;
      }

      v14 = *(v8 + 56);
      if (*(v8 + 64))
      {
        v14 = 0.1;
      }

      v15 = *(v8 + 72);
      if (*(v8 + 80))
      {
        v15 = 1.0;
      }

      if (v6[64])
      {
        v17 = 0.1;
      }

      else
      {
        v16 = *(v6 + 7);
        v17 = v16;
      }

      v18 = v6[80] ? 1.0 : *(v6 + 9);
      v19 = *(a5 + 104);
      v20 = *(a5 + 108);
      v21 = hypotf(v14 - v19, v15 - v20);
      if (v21 >= hypotf(v17 - v19, v18 - v20))
      {
        break;
      }

      v22 = v8;
      v23 = v9 == v8;
      v8 += 192;
      if (!v23)
      {
        goto LABEL_22;
      }

LABEL_23:
      v9 += 192;
    }

    v22 = v6;
    v23 = v9 == v6;
    v6 += 192;
    if (v23)
    {
      goto LABEL_23;
    }

LABEL_22:
    memmove(v9, v22, 0xC0uLL);
    goto LABEL_23;
  }

  sub_1C741E6AC(a2, (a3 - a2) / 192, a4);
  v24 = &v6[192 * v11];
LABEL_25:
  for (i = 0; ; i -= 192)
  {
    v12 = &v24[i];
    if (&v24[i] <= v6 || v8 <= v9)
    {
      break;
    }

    v27 = *(v12 - 17);
    if (*(v12 - 128))
    {
      v27 = 0.1;
    }

    v28 = *(v12 - 15);
    if (*(v12 - 112))
    {
      v28 = 1.0;
    }

    if (*(v8 - 128))
    {
      v30 = 0.1;
    }

    else
    {
      v29 = *(v8 - 136);
      v30 = v29;
    }

    if (*(v8 - 112))
    {
      v31 = 1.0;
    }

    else
    {
      v31 = *(v8 - 120);
    }

    v32 = *(a5 + 104);
    v33 = *(a5 + 108);
    v34 = hypotf(v27 - v32, v28 - v33);
    if (v34 < hypotf(v30 - v32, v31 - v33))
    {
      v35 = (v8 - 192);
      v36 = &v7[i];
      v7 = &v7[i - 192];
      v24 += i;
      v23 = v36 == v8;
      v8 -= 192;
      if (!v23)
      {
        memmove(v7, v35, 0xC0uLL);
        v8 = v35;
      }

      goto LABEL_25;
    }

    if (v12 != &v7[i])
    {
      memmove(&v7[i - 192], v12 - 192, 0xC0uLL);
    }
  }

LABEL_48:
  v37 = (v12 - v6) / 192;
  if (v8 != v6 || v8 >= &v6[192 * v37])
  {
    memmove(v8, v6, 192 * v37);
  }

  sub_1C713A098(a5);
  return 1;
}

uint64_t static FreeformStoryType.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  switch(v2 >> 5)
  {
    case 1u:
      if ((v3 & 0xE0) != 0x20)
      {
        goto LABEL_17;
      }

      v4 = ((v3 ^ v2) & 1) == 0;
      return v4 & 1;
    case 2u:
      if (v2 == 64)
      {
        if (v3 == 64)
        {
          goto LABEL_15;
        }

        goto LABEL_17;
      }

      if (v3 != 65)
      {
        goto LABEL_17;
      }

      goto LABEL_15;
    case 3u:
      if (v2 == 96)
      {
        if (v3 != 96)
        {
          goto LABEL_17;
        }

LABEL_15:
        v4 = 1;
        return v4 & 1;
      }

      if (v3 == 97)
      {
        goto LABEL_15;
      }

LABEL_17:
      v4 = 0;
      return v4 & 1;
    case 4u:
      if (v3 != 128)
      {
        goto LABEL_17;
      }

      goto LABEL_15;
    default:
      if (v3 >= 0x20)
      {
        goto LABEL_17;
      }

      v4 = v3 ^ v2 ^ 1;
      return v4 & 1;
  }
}

void sub_1C713B574(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 uuid];
  if (v3)
  {
    v4 = v3;
    v5 = sub_1C755068C();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a2 = v5;
  a2[1] = v7;
}

unint64_t FreeformStoryType.description.getter()
{
  v1 = *v0;
  result = 0x79636167656CLL;
  switch(v1 >> 5)
  {
    case 1u:
      if (v1)
      {
        result = 0xD00000000000001BLL;
      }

      else
      {
        result = 0xD00000000000001ALL;
      }

      break;
    case 2u:
      if (v1 == 64)
      {
        result = 0xD000000000000012;
      }

      else
      {
        result = 0xD00000000000001FLL;
      }

      break;
    case 3u:
      if (v1 == 96)
      {
        result = 0x6F7365527473616CLL;
      }

      else
      {
        result = 0xD000000000000013;
      }

      break;
    case 4u:
      return result;
    default:
      result = 0xD000000000000011;
      break;
  }

  return result;
}

void static FreeformStoryDecoder.propertyListDecoder(for:)()
{
  OUTLINED_FUNCTION_124();
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216B50, &qword_1C756EA10);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v20[-v4];
  v6 = sub_1C7551A1C();
  OUTLINED_FUNCTION_3_0();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v20[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v20[-v13];
  if (qword_1EC213E08 != -1)
  {
    OUTLINED_FUNCTION_17_32(&qword_1EC213E08);
  }

  v15 = __swift_project_value_buffer(v2, qword_1EC25B678);
  sub_1C712A774(v15, v5, &qword_1EC216B50, &qword_1C756EA10);
  if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
  {
    sub_1C6FD7FC8(v5, &qword_1EC216B50, &qword_1C756EA10);
    v16 = sub_1C713DF3C();
    OUTLINED_FUNCTION_166_0(&type metadata for FreeformStoryDecoder.Error, v16);
    *v17 = 0;
    swift_willThrow();
  }

  else
  {
    (*(v8 + 32))(v14, v5, v6);
    sub_1C754DB8C();
    swift_allocObject();
    sub_1C754DB7C();
    (*(v8 + 16))(v11, v14, v6);
    v21[3] = sub_1C6F65BE8(0, &qword_1EDD10110, 0x1E69789A8);
    v21[0] = v1;
    v18 = v1;
    v19 = sub_1C754DB6C();
    sub_1C709B0DC(v21, v11);
    v19(v20, 0);
    (*(v8 + 8))(v14, v6);
  }

  OUTLINED_FUNCTION_125();
}

uint64_t sub_1C713B9AC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7461727563657270 && a2 == 0xEB000000006E6F69;
  if (v4 || (sub_1C7551DBC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6172756374736F70 && a2 == 0xEC0000006E6F6974)
  {

    return 1;
  }

  else
  {
    v7 = sub_1C7551DBC();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1C713BA7C(char a1)
{
  if (a1)
  {
    return 0x6172756374736F70;
  }

  else
  {
    return 0x7461727563657270;
  }
}

uint64_t sub_1C713BACC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C713B9AC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C713BAF4(uint64_t a1)
{
  v2 = sub_1C713DF90();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C713BB30(uint64_t a1)
{
  v2 = sub_1C713DF90();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C713BB6C(uint64_t a1)
{
  v2 = sub_1C713DFE4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C713BBA8(uint64_t a1)
{
  v2 = sub_1C713DFE4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C713BBE4(uint64_t a1)
{
  v2 = sub_1C713E038();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C713BC20(uint64_t a1)
{
  v2 = sub_1C713E038();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void FreeformStoryType.Stage.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_124();
  v25 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217CC0, &qword_1C756EA18);
  OUTLINED_FUNCTION_3_0();
  v47 = v27;
  v48 = v26;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_36();
  v46 = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217CC8, &qword_1C756EA20);
  OUTLINED_FUNCTION_3_0();
  v45[0] = v31;
  v45[1] = v30;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_251();
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217CD0, &qword_1C756EA28);
  OUTLINED_FUNCTION_3_0();
  v35 = v34;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v36);
  v38 = v45 - v37;
  v39 = *v23;
  __swift_project_boxed_opaque_existential_1(v25, v25[3]);
  sub_1C713DF90();
  sub_1C755200C();
  v40 = (v35 + 8);
  if (v39)
  {
    sub_1C713DFE4();
    v41 = v46;
    sub_1C7551C6C();
    (*(v47 + 8))(v41, v48);
  }

  else
  {
    sub_1C713E038();
    sub_1C7551C6C();
    v42 = OUTLINED_FUNCTION_41_13();
    v44(v42, v43);
  }

  (*v40)(v38, v33);
  OUTLINED_FUNCTION_125();
}

uint64_t FreeformStoryType.Stage.hashValue.getter()
{
  v1 = *v0;
  OUTLINED_FUNCTION_106();
  MEMORY[0x1CCA5E460](v1);
  return sub_1C7551FAC();
}

void FreeformStoryType.Stage.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_124();
  a22 = v25;
  a23 = v26;
  v70 = v23;
  v28 = v27;
  v67 = v29;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217CE0, &qword_1C756EA30);
  OUTLINED_FUNCTION_3_0();
  v66 = v30;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v31);
  v33 = v62 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217CE8, &qword_1C756EA38);
  OUTLINED_FUNCTION_3_0();
  v65 = v35;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v36);
  v38 = v62 - v37;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217CF0, &unk_1C756EA40);
  OUTLINED_FUNCTION_3_0();
  v68 = v40;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_14_6();
  __swift_project_boxed_opaque_existential_1(v28, v28[3]);
  sub_1C713DF90();
  v42 = v70;
  sub_1C7551FFC();
  if (v42)
  {
    goto LABEL_10;
  }

  v63 = v34;
  v64 = v38;
  v70 = v28;
  v43 = v69;
  sub_1C7551C5C();
  v44 = sub_1C6FD80E0();
  if (v46 == v47 >> 1)
  {
    v69 = v44;
LABEL_9:
    v57 = sub_1C75518EC();
    OUTLINED_FUNCTION_166_0(v57, MEMORY[0x1E69E6B28]);
    v59 = v58;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215490, &qword_1C7560600);
    *v59 = &type metadata for FreeformStoryType.Stage;
    v60 = sub_1C7551B5C();
    OUTLINED_FUNCTION_588(v60);
    (*(*(v57 - 8) + 104))(v59, *MEMORY[0x1E69E6AF8], v57);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v68 + 8))(v24, v39);
    v28 = v70;
LABEL_10:
    __swift_destroy_boxed_opaque_existential_1(v28);
LABEL_11:
    OUTLINED_FUNCTION_125();
    return;
  }

  v62[1] = 0;
  if (v46 < (v47 >> 1))
  {
    v48 = *(v45 + v46);
    v49 = sub_1C6FD80C8();
    v51 = v50;
    v53 = v52;
    swift_unknownObjectRelease();
    if (v51 == v53 >> 1)
    {
      if (v48)
      {
        a13 = 1;
        sub_1C713DFE4();
        v54 = v33;
        OUTLINED_FUNCTION_5_3(&type metadata for FreeformStoryType.Stage.PostcurationCodingKeys, &a13);
        v55 = v67;
        v56 = v68;
        swift_unknownObjectRelease();
        (*(v66 + 8))(v54, v43);
      }

      else
      {
        a12 = 0;
        sub_1C713E038();
        v61 = v64;
        OUTLINED_FUNCTION_5_3(&type metadata for FreeformStoryType.Stage.PrecurationCodingKeys, &a12);
        v55 = v67;
        v56 = v68;
        swift_unknownObjectRelease();
        (*(v65 + 8))(v61, v63);
      }

      (*(v56 + 8))(v24, v51);
      *v55 = v48;
      __swift_destroy_boxed_opaque_existential_1(v70);
      goto LABEL_11;
    }

    v69 = v49;
    goto LABEL_9;
  }

  __break(1u);
}

unint64_t FreeformStoryType.prettyDescription.getter()
{
  v1 = *v0;
  result = 0x79636167654CLL;
  switch(v1 >> 5)
  {
    case 1u:
      if (v1)
      {
        result = 0xD00000000000001CLL;
      }

      else
      {
        result = 0xD00000000000001BLL;
      }

      break;
    case 2u:
      if (v1 == 64)
      {
        result = 0x42206C6175736956;
      }

      else
      {
        result = 0xD00000000000001ALL;
      }

      break;
    case 3u:
      if (v1 == 96)
      {
        result = 0x736552207473614CLL;
      }

      else
      {
        result = 0x61622D7469617254;
      }

      break;
    case 4u:
      return result;
    default:
      result = 0xD000000000000012;
      break;
  }

  return result;
}

uint64_t FreeformStoryType.analyticsValue.getter()
{
  v1 = *v0;
  result = 13;
  switch(v1 >> 5)
  {
    case 1u:
      v3 = (v1 & 1) == 0;
      v4 = 11;
      v5 = 18;
      goto LABEL_7;
    case 2u:
      if (v1 == 64)
      {
        result = 14;
      }

      else
      {
        result = 15;
      }

      break;
    case 3u:
      if (v1 == 96)
      {
        result = 16;
      }

      else
      {
        result = 12;
      }

      break;
    case 4u:
      return result;
    default:
      v3 = (v1 & 1) == 0;
      v4 = 10;
      v5 = 17;
LABEL_7:
      if (v3)
      {
        result = v4;
      }

      else
      {
        result = v5;
      }

      break;
  }

  return result;
}

BOOL static FreeformStoryType.~= infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  switch(v2 >> 5)
  {
    case 1u:
      return (v3 & 0xE0) == 0x20;
    case 2u:
      if (v2 == 64)
      {
        if (v3 == 64)
        {
          return 1;
        }
      }

      else if (v3 == 65)
      {
        return 1;
      }

      return 0;
    case 3u:
      if (v2 != 96)
      {
        return v3 == 97;
      }

      return v3 == 96;
    case 4u:
      return v3 == 128;
    default:
      return v3 < 0x20;
  }
}

uint64_t sub_1C713C5F0(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x7453686374697773 && a2 == 0xEB00000000656761)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1C7551DBC();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1C713C68C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656761746E6F6DLL && a2 == 0xE700000000000000;
  if (v4 || (sub_1C7551DBC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6F6C6F6E6F726863 && a2 == 0xED00006C61636967;
    if (v6 || (sub_1C7551DBC() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000012 && 0x80000001C759C3C0 == a2;
      if (v7 || (sub_1C7551DBC() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD00000000000001FLL && 0x80000001C759C3A0 == a2;
        if (v8 || (sub_1C7551DBC() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6F7365527473616CLL && a2 == 0xEA00000000007472;
          if (v9 || (sub_1C7551DBC() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000013 && 0x80000001C759C380 == a2;
            if (v10 || (sub_1C7551DBC() & 1) != 0)
            {

              return 5;
            }

            else if (a1 == 0x79636167656CLL && a2 == 0xE600000000000000)
            {

              return 6;
            }

            else
            {
              v12 = sub_1C7551DBC();

              if (v12)
              {
                return 6;
              }

              else
              {
                return 7;
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1C713C8D0(char a1)
{
  result = 0x656761746E6F6DLL;
  switch(a1)
  {
    case 1:
      result = 0x6F6C6F6E6F726863;
      break;
    case 2:
      result = 0xD000000000000012;
      break;
    case 3:
      result = 0xD00000000000001FLL;
      break;
    case 4:
      result = 0x6F7365527473616CLL;
      break;
    case 5:
      result = 0xD000000000000013;
      break;
    case 6:
      result = 0x79636167656CLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C713C9C0(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x746963696C707865 && a2 == 0xE800000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1C7551DBC();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1C713CA54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C713C5F0(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1C713CA80(uint64_t a1)
{
  v2 = sub_1C7140F34();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C713CABC(uint64_t a1)
{
  v2 = sub_1C7140F34();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C713CB00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C713C68C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C713CB28(uint64_t a1)
{
  v2 = sub_1C7140D3C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C713CB64(uint64_t a1)
{
  v2 = sub_1C7140D3C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C713CBA0(uint64_t a1)
{
  v2 = sub_1C7140E38();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C713CBDC(uint64_t a1)
{
  v2 = sub_1C7140E38();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C713CC18(uint64_t a1)
{
  v2 = sub_1C7140D90();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C713CC54(uint64_t a1)
{
  v2 = sub_1C7140D90();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C713CC94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C713C9C0(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1C713CCC0(uint64_t a1)
{
  v2 = sub_1C7140FDC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C713CCFC(uint64_t a1)
{
  v2 = sub_1C7140FDC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C713CD38(uint64_t a1)
{
  v2 = sub_1C7140DE4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C713CD74(uint64_t a1)
{
  v2 = sub_1C7140DE4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C713CDB0(uint64_t a1)
{
  v2 = sub_1C7140E8C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C713CDEC(uint64_t a1)
{
  v2 = sub_1C7140E8C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C713CE28(uint64_t a1)
{
  v2 = sub_1C7140EE0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C713CE64(uint64_t a1)
{
  v2 = sub_1C7140EE0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void FreeformStoryType.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, char a11, char a12, char a13, char a14, char a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  OUTLINED_FUNCTION_124();
  a26 = v30;
  a27 = v31;
  v99 = v28;
  v32 = v27;
  v34 = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217CF8, &qword_1C756EA50);
  OUTLINED_FUNCTION_3_0();
  v96 = v36;
  v97 = v35;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_36();
  v95 = v38;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217D00, &qword_1C756EA58);
  OUTLINED_FUNCTION_3_0();
  v90 = v40;
  v91 = v39;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_36();
  v89 = v42;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217D08, &qword_1C756EA60);
  OUTLINED_FUNCTION_3_0();
  v87 = v44;
  v88 = v43;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_36();
  v86 = v46;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217D10, &qword_1C756EA68);
  OUTLINED_FUNCTION_3_0();
  v84 = v48;
  v85 = v47;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_36();
  v83 = v50;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217D18, &qword_1C756EA70);
  OUTLINED_FUNCTION_3_0();
  v81 = v52;
  v82 = v51;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_36();
  v80 = v54;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217D20, &qword_1C756EA78);
  OUTLINED_FUNCTION_3_0();
  v93 = v56;
  v94 = v55;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v57);
  OUTLINED_FUNCTION_14_6();
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217D28, &qword_1C756EA80);
  OUTLINED_FUNCTION_3_0();
  v92 = v59;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v60);
  OUTLINED_FUNCTION_251();
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217D30, &qword_1C756EA88);
  OUTLINED_FUNCTION_3_0();
  v62 = v61;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v63);
  v65 = &v79 - v64;
  v66 = *v32;
  __swift_project_boxed_opaque_existential_1(v34, v34[3]);
  sub_1C7140D3C();
  sub_1C755200C();
  switch(v66 >> 5)
  {
    case 1u:
      a12 = 1;
      sub_1C7140F34();
      OUTLINED_FUNCTION_45_14(&type metadata for FreeformStoryType.ChronologicalCodingKeys, &a12);
      sub_1C7140F88();
      v76 = v94;
      sub_1C7551D2C();
      (*(v93 + 8))(v29, v76);
      v71 = *(v62 + 8);
      v69 = v65;
      v70 = v58;
      goto LABEL_9;
    case 2u:
      if (v66 == 64)
      {
        a13 = 2;
        sub_1C7140EE0();
        v73 = v80;
        OUTLINED_FUNCTION_6_43(&type metadata for FreeformStoryType.VisualClusterBasedCodingKeys, &a13);
        v75 = v81;
        v74 = v82;
      }

      else
      {
        a14 = 3;
        sub_1C7140E8C();
        v73 = v83;
        OUTLINED_FUNCTION_6_43(&type metadata for FreeformStoryType.VisualClusterBasedChronologicalCodingKeys, &a14);
        v75 = v84;
        v74 = v85;
      }

      goto LABEL_12;
    case 3u:
      if (v66 == 96)
      {
        a15 = 4;
        sub_1C7140E38();
        v73 = v86;
        OUTLINED_FUNCTION_6_43(&type metadata for FreeformStoryType.LastResortCodingKeys, &a15);
        v75 = v87;
        v74 = v88;
      }

      else
      {
        a16 = 5;
        sub_1C7140DE4();
        v73 = v89;
        OUTLINED_FUNCTION_6_43(&type metadata for FreeformStoryType.TraitBasedSlideshowCodingKeys, &a16);
        v75 = v90;
        v74 = v91;
      }

LABEL_12:
      (*(v75 + 8))(v73, v74);
      v77 = OUTLINED_FUNCTION_103();
      v78(v77);
      break;
    case 4u:
      a17 = 6;
      sub_1C7140D90();
      v72 = v95;
      OUTLINED_FUNCTION_45_14(&type metadata for FreeformStoryType.LegacyCodingKeys, &a17);
      (*(v96 + 8))(v72, v97);
      (*(v62 + 8))(v65, v58);
      break;
    default:
      sub_1C7140FDC();
      sub_1C7551C6C();
      sub_1C7551CDC();
      v67 = OUTLINED_FUNCTION_41_13();
      v68(v67, v58);
      v69 = OUTLINED_FUNCTION_103();
LABEL_9:
      v71(v69, v70);
      break;
  }

  OUTLINED_FUNCTION_125();
}

void FreeformStoryType.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, char a11, char a12, char a13, char a14, char a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  OUTLINED_FUNCTION_124();
  a26 = v30;
  a27 = v31;
  v140 = v27;
  v33 = v32;
  v135 = v34;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217D60, &qword_1C756EA90);
  OUTLINED_FUNCTION_3_0();
  v131 = v35;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_36();
  v138 = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217D68, &qword_1C756EA98);
  OUTLINED_FUNCTION_3_0();
  v129 = v38;
  v130 = v39;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_36();
  v137 = v41;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217D70, &qword_1C756EAA0);
  OUTLINED_FUNCTION_3_0();
  v127 = v43;
  v128 = v42;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_36();
  v134 = v45;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217D78, &qword_1C756EAA8);
  OUTLINED_FUNCTION_3_0();
  v125 = v47;
  v126 = v46;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_36();
  v133 = v49;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217D80, &qword_1C756EAB0);
  OUTLINED_FUNCTION_3_0();
  v121 = v51;
  v122 = v50;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_36();
  v132 = v53;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217D88, &qword_1C756EAB8);
  OUTLINED_FUNCTION_3_0();
  v123 = v55;
  v124 = v54;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v56);
  v58 = v115 - v57;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217D90, &qword_1C756EAC0);
  OUTLINED_FUNCTION_3_0();
  v136 = v60;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v61);
  OUTLINED_FUNCTION_251();
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217D98, &qword_1C756EAC8);
  OUTLINED_FUNCTION_3_0();
  v64 = v63;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v65);
  OUTLINED_FUNCTION_14_6();
  v66 = v33[3];
  v139 = v33;
  __swift_project_boxed_opaque_existential_1(v33, v66);
  sub_1C7140D3C();
  v67 = v140;
  sub_1C7551FFC();
  if (v67)
  {
    goto LABEL_9;
  }

  v117 = v29;
  v116 = v59;
  v118 = v58;
  v68 = v138;
  v140 = v64;
  v119 = v28;
  sub_1C7551C5C();
  sub_1C6FD80E0();
  if (v70 == v71 >> 1)
  {
LABEL_8:
    v83 = sub_1C75518EC();
    OUTLINED_FUNCTION_166_0(v83, MEMORY[0x1E69E6B28]);
    v85 = v84;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215490, &qword_1C7560600);
    *v85 = &type metadata for FreeformStoryType;
    v86 = v119;
    v87 = sub_1C7551B5C();
    OUTLINED_FUNCTION_588(v87);
    (*(*(v83 - 8) + 104))(v85, *MEMORY[0x1E69E6AF8], v83);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v140 + 8))(v86, v62);
LABEL_9:
    __swift_destroy_boxed_opaque_existential_1(v139);
LABEL_10:
    OUTLINED_FUNCTION_125();
    return;
  }

  v115[1] = 0;
  if (v70 < (v71 >> 1))
  {
    v72 = v62;
    v73 = *(v69 + v70);
    sub_1C6FD80C8();
    v75 = v74;
    v77 = v76;
    swift_unknownObjectRelease();
    v78 = v136;
    if (v75 == v77 >> 1)
    {
      v79 = v135;
      v80 = v119;
      switch(v73)
      {
        case 1:
          a12 = 1;
          sub_1C7140F34();
          OUTLINED_FUNCTION_4_40(&type metadata for FreeformStoryType.ChronologicalCodingKeys, &a12);
          sub_1C7141030();
          v104 = v124;
          sub_1C7551C1C();
          v105 = v140;
          swift_unknownObjectRelease();
          v112 = OUTLINED_FUNCTION_41_13();
          v113(v112, v104);
          (*(v105 + 8))(v80, v72);
          v111 = a11 | 0x20;
          break;
        case 2:
          a13 = 2;
          sub_1C7140EE0();
          OUTLINED_FUNCTION_4_40(&type metadata for FreeformStoryType.VisualClusterBasedCodingKeys, &a13);
          swift_unknownObjectRelease();
          v92 = OUTLINED_FUNCTION_42_16();
          v93(v92);
          v94 = OUTLINED_FUNCTION_1_54();
          v95(v94);
          v111 = 64;
          break;
        case 3:
          a14 = 3;
          sub_1C7140E8C();
          OUTLINED_FUNCTION_4_40(&type metadata for FreeformStoryType.VisualClusterBasedChronologicalCodingKeys, &a14);
          swift_unknownObjectRelease();
          v96 = OUTLINED_FUNCTION_42_16();
          v97(v96);
          v98 = OUTLINED_FUNCTION_1_54();
          v99(v98);
          v111 = 65;
          break;
        case 4:
          a15 = 4;
          sub_1C7140E38();
          OUTLINED_FUNCTION_4_40(&type metadata for FreeformStoryType.LastResortCodingKeys, &a15);
          swift_unknownObjectRelease();
          v88 = OUTLINED_FUNCTION_42_16();
          v89(v88);
          v90 = OUTLINED_FUNCTION_1_54();
          v91(v90);
          v111 = 96;
          break;
        case 5:
          a16 = 5;
          sub_1C7140DE4();
          OUTLINED_FUNCTION_4_40(&type metadata for FreeformStoryType.TraitBasedSlideshowCodingKeys, &a16);
          swift_unknownObjectRelease();
          v100 = OUTLINED_FUNCTION_42_16();
          v101(v100);
          v102 = OUTLINED_FUNCTION_1_54();
          v103(v102);
          v111 = 97;
          break;
        case 6:
          a17 = 6;
          sub_1C7140D90();
          OUTLINED_FUNCTION_4_40(&type metadata for FreeformStoryType.LegacyCodingKeys, &a17);
          swift_unknownObjectRelease();
          (*(v131 + 8))(v68, v120);
          v106 = OUTLINED_FUNCTION_1_54();
          v107(v106);
          v111 = 0x80;
          break;
        default:
          a10 = 0;
          sub_1C7140FDC();
          v81 = v117;
          OUTLINED_FUNCTION_4_40(&type metadata for FreeformStoryType.MontageCodingKeys, &a10);
          v82 = v116;
          v108 = sub_1C7551BCC();
          swift_unknownObjectRelease();
          (*(v78 + 8))(v81, v82);
          v109 = OUTLINED_FUNCTION_1_54();
          v110(v109);
          v111 = v108 & 1;
          break;
      }

      v114 = v139;
      *v79 = v111;
      __swift_destroy_boxed_opaque_existential_1(v114);
      goto LABEL_10;
    }

    v62 = v72;
    goto LABEL_8;
  }

  __break(1u);
}

uint64_t sub_1C713DEC4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216B50, &qword_1C756EA10);
  __swift_allocate_value_buffer(v0, qword_1EC25B678);
  __swift_project_value_buffer(v0, qword_1EC25B678);
  return sub_1C7551A0C();
}

unint64_t sub_1C713DF3C()
{
  result = qword_1EC217CB8;
  if (!qword_1EC217CB8)
  {
    result = swift_getWitnessTable(aA_0, &type metadata for FreeformStoryDecoder.Error, v0, v1);
    atomic_store(result, &qword_1EC217CB8);
  }

  return result;
}

unint64_t sub_1C713DF90()
{
  result = qword_1EDD0AA48;
  if (!qword_1EDD0AA48)
  {
    result = swift_getWitnessTable(byte_1C756F920, &type metadata for FreeformStoryType.Stage.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EDD0AA48);
  }

  return result;
}

unint64_t sub_1C713DFE4()
{
  result = qword_1EC217CD8;
  if (!qword_1EC217CD8)
  {
    result = swift_getWitnessTable(asc_1C756F8D0, &type metadata for FreeformStoryType.Stage.PostcurationCodingKeys, v0, v1);
    atomic_store(result, &qword_1EC217CD8);
  }

  return result;
}

unint64_t sub_1C713E038()
{
  result = qword_1EDD0AA30;
  if (!qword_1EDD0AA30)
  {
    result = swift_getWitnessTable(a9, &type metadata for FreeformStoryType.Stage.PrecurationCodingKeys, v0, v1);
    atomic_store(result, &qword_1EDD0AA30);
  }

  return result;
}

uint64_t sub_1C713E08C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216B50, &qword_1C756EA10);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_14_6();
  v5 = sub_1C7551A1C();
  OUTLINED_FUNCTION_3_0();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_14_0();
  v11 = v10 - v9;
  if (qword_1EC213E08 != -1)
  {
    OUTLINED_FUNCTION_17_32(&qword_1EC213E08);
  }

  v12 = __swift_project_value_buffer(v3, qword_1EC25B678);
  sub_1C712A774(v12, v1, &qword_1EC216B50, &qword_1C756EA10);
  if (__swift_getEnumTagSinglePayload(v1, 1, v5) == 1)
  {
    sub_1C6FD7FC8(v1, &qword_1EC216B50, &qword_1C756EA10);
    v13 = sub_1C713DF3C();
    OUTLINED_FUNCTION_166_0(&type metadata for FreeformStoryDecoder.Error, v13);
    *v14 = 0;
    return swift_willThrow();
  }

  (*(v7 + 32))(v11, v1, v5);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C7551FEC();
  sub_1C6FE1304();

  if (v23)
  {
    sub_1C6F65BE8(0, &qword_1EDD10110, 0x1E69789A8);
    if (swift_dynamicCast())
    {
      v16 = OUTLINED_FUNCTION_103();
      v17(v16);
      return v24;
    }
  }

  else
  {
    sub_1C6FD7FC8(v22, &qword_1EC219770, &unk_1C755C740);
  }

  v18 = sub_1C713DF3C();
  OUTLINED_FUNCTION_166_0(&type metadata for FreeformStoryDecoder.Error, v18);
  *v19 = 1;
  swift_willThrow();
  v20 = OUTLINED_FUNCTION_103();
  return v21(v20);
}

uint64_t FreeformStory.storyCompletion.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = *(v1 + 40);
  v7[0] = *(v1 + 24);
  v7[1] = v2;
  v4 = *(v1 + 72);
  v8 = *(v1 + 56);
  v3 = v8;
  v9 = v4;
  *a1 = v7[0];
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
  return sub_1C712A774(v7, &v6, &qword_1EC217DA8, &qword_1C756EAD0);
}

uint64_t FreeformStory.storyType.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for FreeformStory(0);
  *a1 = *(v1 + *(result + 44));
  return result;
}

void FreeformStory.numberOfCuratedAssets.getter()
{
  v1 = 0;
  v2 = *(v0 + 16);
  v3 = (v2 + 144);
  v4 = -*(v2 + 16);
  v5 = -1;
  while (v4 + v5 != -1)
  {
    if (++v5 >= *(v2 + 16))
    {
      __break(1u);
      return;
    }

    if (*v3)
    {
      goto LABEL_8;
    }

    v6 = v3 + 128;
    v7 = [*(v3 - 1) count];
    v3 = v6;
    v8 = __OFADD__(v1, v7);
    v1 += v7;
    if (v8)
    {
      __break(1u);
LABEL_8:
      v9 = sub_1C6FBC6B8();
      OUTLINED_FUNCTION_166_0(&unk_1F46C1EA0, v9);
      *v10 = 2;
      swift_willThrow();
      return;
    }
  }
}

uint64_t FreeformStory.init(title:chapters:storyCompletion:memoryLocalIdentifier:allAssets:id:musicCuration:storyType:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, char *a12)
{
  v13 = a4[1];
  *(a9 + 24) = *a4;
  *(a9 + 40) = v13;
  v14 = a4[3];
  *(a9 + 56) = a4[2];
  v15 = *a12;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 72) = v14;
  *(a9 + 88) = a5;
  *(a9 + 96) = a6;
  *(a9 + 104) = a7;
  *(a9 + 112) = a8;
  *(a9 + 120) = a10;
  v16 = type metadata accessor for FreeformStory(0);
  result = sub_1C70D5DF0(a11, a9 + *(v16 + 40));
  *(a9 + *(v16 + 44)) = v15;
  return result;
}

void FreeformStory.init(from:)()
{
  OUTLINED_FUNCTION_124();
  v2 = v1;
  v24 = v3;
  type metadata accessor for StoryMusicCuration(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_14_0();
  v7 = v6 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217DB0, &qword_1C756EAD8);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v8);
  v9 = type metadata accessor for FreeformStory(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_14_0();
  v13 = v12 - v11;
  v14 = sub_1C713E08C(v2);
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  else
  {
    v23 = v14;
    __swift_project_boxed_opaque_existential_1(v2, v2[3]);
    sub_1C71410D0();
    sub_1C7551FFC();
    LOBYTE(v27) = 0;
    *v13 = sub_1C7551BBC();
    *(v13 + 8) = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216560, &qword_1C756EAE0);
    LOBYTE(v26) = 1;
    sub_1C7141328(&qword_1EC217DB8, sub_1C7141124, MEMORY[0x1E69E6330]);
    sub_1C7551C1C();
    *(v13 + 16) = v27;
    sub_1C7141178();
    OUTLINED_FUNCTION_28_13();
    sub_1C7551C1C();
    v16 = v28;
    *(v13 + 24) = v27;
    *(v13 + 40) = v16;
    v17 = v30;
    *(v13 + 56) = v29;
    *(v13 + 72) = v17;
    OUTLINED_FUNCTION_43_14(3);
    *(v13 + 88) = sub_1C7551BBC();
    *(v13 + 96) = v18;
    v19 = objc_autoreleasePoolPush();
    sub_1C713EBA4(v23, &v25, &v26);
    objc_autoreleasePoolPop(v19);
    *(v13 + 104) = v26;
    OUTLINED_FUNCTION_43_14(5);
    *(v13 + 112) = sub_1C7551BBC();
    *(v13 + 120) = v20;
    LOBYTE(v26) = 6;
    sub_1C71414D8(&qword_1EC2173D8, protocol conformance descriptor for StoryMusicCuration);
    OUTLINED_FUNCTION_28_13();
    sub_1C7551C1C();
    sub_1C70D5DF0(v7, v13 + *(v9 + 40));
    LOBYTE(v25) = 7;
    sub_1C71411CC();
    OUTLINED_FUNCTION_28_13();
    sub_1C7551C1C();

    *(v13 + *(v9 + 44)) = v26;
    v21 = OUTLINED_FUNCTION_16_24();
    v22(v21);
    sub_1C7141220(v13, v24, type metadata accessor for FreeformStory);
    __swift_destroy_boxed_opaque_existential_1(v2);
    sub_1C714127C(v13, type metadata accessor for FreeformStory);
  }

  OUTLINED_FUNCTION_125();
}

void sub_1C713EBA4(void *a1@<X1>, uint64_t *a2@<X2>, uint64_t *a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00, &qword_1C755BD70);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217DB0, &qword_1C756EAD8);
  sub_1C704233C();
  sub_1C7551C1C();
  v7 = v3;
  if (!v3)
  {
    v8 = [a1 librarySpecificFetchOptions];
    v9 = objc_opt_self();
    v10 = v8;
    v11 = sub_1C6FCA158(v14, v8, v9);

    if (v11)
    {
      type metadata accessor for FreeformStoryDiagnosticsUtils();
      v13 = sub_1C734A78C(v11, v14, a1);

      *a3 = v13;
      return;
    }

    sub_1C71412D4();
    v7 = swift_allocError();
    *v12 = 1;
    swift_willThrow();
  }

  *a2 = v7;
}

uint64_t FreeformStory.traits.getter()
{
  if (*(v0 + 32))
  {
    return sub_1C75504FC();
  }

  else
  {
    return MEMORY[0x1E69E7CC0];
  }
}

uint64_t FreeformStory.description.getter()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217A40, &unk_1C755C9D0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1C755F050;
  OUTLINED_FUNCTION_3_1();
  *(v3 + 32) = 0xD000000000000021;
  *(v3 + 40) = v4;
  v5 = v0[4];
  if (v5)
  {
    v6 = FreeformStoryCompletionSync.description.getter();
  }

  else
  {
    v7 = 0x80000001C75A0620;
    v6 = 0xD000000000000013;
  }

  *(v2 + 48) = v6;
  *(v2 + 56) = v7;
  OUTLINED_FUNCTION_3_1();
  *(v2 + 64) = 0xD00000000000002BLL;
  *(v2 + 72) = v8;
  if (v5)
  {
    sub_1C75504FC();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00, &qword_1C755BD70);
  sub_1C703328C();
  v9 = sub_1C75505FC();
  v11 = v10;

  *(v2 + 80) = v9;
  *(v2 + 88) = v11;
  OUTLINED_FUNCTION_3_1();
  *(v2 + 96) = 0xD00000000000001FLL;
  *(v2 + 104) = v12;
  *(v2 + 112) = MEMORY[0x1CCA5D090](v1[2], &type metadata for FreeformStoryCuratedChapter);
  *(v2 + 120) = v13;
  OUTLINED_FUNCTION_3_1();
  *(v2 + 128) = 0xD000000000000016;
  *(v2 + 136) = v14;
  v15 = type metadata accessor for FreeformStory(0);
  *(v2 + 144) = StoryMusicCuration.description.getter();
  *(v2 + 152) = v16;
  OUTLINED_FUNCTION_3_1();
  *(v2 + 160) = 0xD000000000000021;
  *(v2 + 168) = v17;
  if (v1[12])
  {
    v18 = v1[11];
    v19 = v1[12];
  }

  else
  {
    v19 = 0x80000001C759B720;
    v18 = 0xD000000000000011;
  }

  *(v2 + 176) = v18;
  *(v2 + 184) = v19;
  *(v2 + 192) = 0xD000000000000012;
  *(v2 + 200) = 0x80000001C75A06E0;
  v20 = *(v1 + *(v15 + 44));
  sub_1C75504FC();
  sub_1C73E69B8(v20);
  *(v2 + 208) = 0;
  *(v2 + 216) = 0xE000000000000000;
  v21 = sub_1C75505FC();

  return v21;
}

uint64_t sub_1C713EFD8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
  if (v4 || (OUTLINED_FUNCTION_6_2(0x656C746974, 0xE500000000000000) & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7372657470616863 && a2 == 0xE800000000000000;
    if (v6 || (OUTLINED_FUNCTION_6_2(0x7372657470616863, 0xE800000000000000) & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = OUTLINED_FUNCTION_10_20();
      v9 = a1 == v7 && a2 == v8;
      if (v9 || (OUTLINED_FUNCTION_6_2(v7, v8) & 1) != 0)
      {

        return 2;
      }

      else
      {
        v10 = a1 == 0xD000000000000015 && 0x80000001C759B7D0 == a2;
        if (v10 || (OUTLINED_FUNCTION_6_2(0xD000000000000015, 0x80000001C759B7D0) & 1) != 0)
        {

          return 3;
        }

        else
        {
          v11 = a1 == 0x74657373416C6C61 && a2 == 0xE900000000000073;
          if (v11 || (OUTLINED_FUNCTION_6_2(0x74657373416C6C61, 0xE900000000000073) & 1) != 0)
          {

            return 4;
          }

          else
          {
            v12 = a1 == 25705 && a2 == 0xE200000000000000;
            if (v12 || (OUTLINED_FUNCTION_6_2(25705, 0xE200000000000000) & 1) != 0)
            {

              return 5;
            }

            else
            {
              v13 = OUTLINED_FUNCTION_31_15();
              v15 = a1 == v13 && a2 == v14;
              if (v15 || (OUTLINED_FUNCTION_6_2(v13, v14) & 1) != 0)
              {

                return 6;
              }

              else if (a1 == 0x70795479726F7473 && a2 == 0xE900000000000065)
              {

                return 7;
              }

              else
              {
                v17 = OUTLINED_FUNCTION_6_2(0x70795479726F7473, 0xE900000000000065);

                if (v17)
                {
                  return 7;
                }

                else
                {
                  return 8;
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1C713F1D0(char a1)
{
  result = 0x656C746974;
  switch(a1)
  {
    case 1:
      result = 0x7372657470616863;
      break;
    case 2:
      result = OUTLINED_FUNCTION_10_20();
      break;
    case 3:
      result = 0xD000000000000015;
      break;
    case 4:
      result = 0x74657373416C6C61;
      break;
    case 5:
      result = 25705;
      break;
    case 6:
      result = OUTLINED_FUNCTION_31_15();
      break;
    case 7:
      result = 0x70795479726F7473;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C713F2BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C713EFD8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C713F2E4(uint64_t a1)
{
  v2 = sub_1C71410D0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C713F320(uint64_t a1)
{
  v2 = sub_1C71410D0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void FreeformStory.encode(to:)()
{
  OUTLINED_FUNCTION_124();
  v59 = v1;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217DD8, &qword_1C756EAE8);
  OUTLINED_FUNCTION_3_0();
  v6 = v5;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v53 - v8;
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_1C71410D0();
  sub_1C755200C();
  v10 = [*(v0 + 104) fetchedObjects];
  if (v10)
  {
    v11 = v10;
    v57 = v0;
    v58 = v9;
    v56 = v4;
    v55 = v6;
    sub_1C6F65BE8(0, &qword_1EDD0FA70, 0x1E6978630);
    v12 = sub_1C7550B5C();

    v13 = sub_1C6FB6304();
    v14 = 0;
    v15 = v12 & 0xC000000000000001;
    v68 = MEMORY[0x1E69E7CC0];
    while (v13 != v14)
    {
      if (v15)
      {
        v16 = MEMORY[0x1CCA5DDD0](v14, v12);
      }

      else
      {
        if (v14 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_22;
        }

        v16 = *(v12 + 8 * v14 + 32);
      }

      v17 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

      v11 = v16;
      v18 = [v11 uuid];
      if (v18)
      {
        v19 = v18;
        v20 = sub_1C755068C();
        v54 = v21;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1C6FB1814();
          v68 = v25;
        }

        v22 = *(v68 + 16);
        v11 = (v22 + 1);
        if (v22 >= *(v68 + 24) >> 1)
        {
          sub_1C6FB1814();
          v68 = v26;
        }

        *(v68 + 16) = v11;
        v23 = v68 + 16 * v22;
        v24 = v54;
        *(v23 + 32) = v20;
        *(v23 + 40) = v24;
        v14 = v17;
      }

      else
      {

        ++v14;
      }
    }

    v27 = v57;
    LOBYTE(v65[0]) = 0;
    v15 = v56;
    v28 = v59;
    sub_1C7551CCC();
    if (v28)
    {
      v29 = OUTLINED_FUNCTION_8_30();
      v30(v29);

      goto LABEL_20;
    }

    v67 = *(v27 + 16);
    v66 = 1;
    sub_1C75504FC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216560, &qword_1C756EAE0);
    v33 = sub_1C7141328(&qword_1EDD06B20, sub_1C71413A0, MEMORY[0x1E69E6300]);
    OUTLINED_FUNCTION_38_13(&v67, &v66, v34, v35, v33);

    v36 = *(v27 + 40);
    v65[0] = *(v27 + 24);
    v65[1] = v36;
    v37 = *(v27 + 72);
    v65[2] = *(v27 + 56);
    v65[3] = v37;
    v38 = *(v27 + 40);
    v64[0] = *(v27 + 24);
    v64[1] = v38;
    v39 = *(v27 + 72);
    v64[2] = *(v27 + 56);
    v64[3] = v39;
    v63 = 2;
    sub_1C712A774(v65, v62, &qword_1EC217DA8, &qword_1C756EAD0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217DA8, &qword_1C756EAD0);
    v40 = sub_1C71413F4();
    OUTLINED_FUNCTION_38_13(v64, &v63, v41, v42, v40);
    v11 = 0;
    OUTLINED_FUNCTION_13_33();
    sub_1C6FD7FC8(v62, &qword_1EC217DA8, &qword_1C756EAD0);
    v43 = *(v27 + 96);
    v61[0] = *(v27 + 88);
    v61[1] = v43;
    v60 = 3;
    sub_1C75504FC();
    v44 = OUTLINED_FUNCTION_90();
    __swift_instantiateConcreteTypeFromMangledNameV2(v44, v45);
    sub_1C7141478(&qword_1EDD06C00, &qword_1EC215620, &qword_1C756EAF0, MEMORY[0x1E69E7C70]);
    OUTLINED_FUNCTION_27_23();
    v12 = v58;
    sub_1C7551D2C();

    v61[0] = v68;
    v60 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00, &qword_1C755BD70);
    sub_1C7141478(&qword_1EDD0CF60, &unk_1EC217A00, &qword_1C755BD70, MEMORY[0x1E69E6300]);
    OUTLINED_FUNCTION_27_23();
    sub_1C7551D2C();
LABEL_23:

    v46 = v57;
    LOBYTE(v61[0]) = 5;
    sub_1C7551CCC();
    v47 = v55;
    if (!v11)
    {
      v48 = type metadata accessor for FreeformStory(0);
      v49 = *(v48 + 40);
      LOBYTE(v61[0]) = 6;
      type metadata accessor for StoryMusicCuration(0);
      v50 = sub_1C71414D8(&unk_1EDD0A748, protocol conformance descriptor for StoryMusicCuration);
      OUTLINED_FUNCTION_38_13(v46 + v49, v61, v51, v52, v50);
      LOBYTE(v61[0]) = *(v46 + *(v48 + 44));
      v60 = 7;
      sub_1C714151C();
      OUTLINED_FUNCTION_27_23();
      sub_1C7551D2C();
    }

    (*(v47 + 8))(v12, v15);
  }

  else
  {
    v31 = sub_1C71412D4();
    OUTLINED_FUNCTION_166_0(&type metadata for FreeformStory.Error, v31);
    *v32 = 0;
    swift_willThrow();
    (*(v6 + 8))(v9, v4);
  }

LABEL_20:
  OUTLINED_FUNCTION_125();
}

uint64_t sub_1C713FA1C@<X0>(uint64_t *a1@<X8>)
{
  result = FreeformStory.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> FreeformStory.assetAndShotListDebugDescription(in:)(PHPhotoLibrary in)
{
  v2 = v1;
  v134 = 0;
  v135 = 0xE000000000000000;
  v3 = v1[12];
  if (v3)
  {
    v5 = v2[11];
    v6 = [(objc_class *)in.super.isa librarySpecificFetchOptions];
    [v6 setIncludeStoryMemories_];
    sub_1C6F65BE8(0, &qword_1EDD0CCF8, 0x1E69788F0);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217A40, &unk_1C755C9D0);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1C755BAB0;
    v123 = v5;
    *(v8 + 32) = v5;
    *(v8 + 40) = v3;
    sub_1C75504FC();
    v9 = sub_1C7550B3C();

    v10 = [ObjCClassFromMetadata fetchAssetCollectionsWithLocalIdentifiers:v9 options:v6];

    v11 = [v10 firstObject];
    if (v11)
    {
      v12 = v11;
      v115 = v6;
      v13 = objc_opt_self();
      v14 = [v13 fetchCuratedAssetsInAssetCollection_];
      if (!v14)
      {
LABEL_45:
        __break(1u);
        goto LABEL_46;
      }

      v16 = v14;
      v17 = [v14 fetchedObjects];

      if (v17)
      {
        sub_1C6F65BE8(0, &qword_1EDD0FA70, 0x1E6978630);
        OUTLINED_FUNCTION_40_14();
        v114 = sub_1C7550B5C();

        v18 = v10;
        v19 = [(objc_class *)in.super.isa librarySpecificFetchOptions];
        v20 = [v13 fetchKeyAssetByMemoryUUIDForMemories:v18 options:v19];
        v110 = v18;

        if (v20)
        {
          v21 = sub_1C75504AC();

          v106 = v12;
          v14 = sub_1C6FCA214(v106);
          if (!v15)
          {
LABEL_46:
            __break(1u);
            goto LABEL_47;
          }

          v22 = sub_1C6FE376C(v14, v15, v21);

          if (v22)
          {
            v108 = v22;
            OUTLINED_FUNCTION_39_14();
            sub_1C755180C();
            OUTLINED_FUNCTION_20_27();
            MEMORY[0x1CCA5CD70](v12 + 27, 0x80000001C75A07F0);
            OUTLINED_FUNCTION_46_12();
            MEMORY[0x1CCA5CD70](0x2D2D2D2022, 0xE500000000000000);
            OUTLINED_FUNCTION_37_18();

            sub_1C755180C();

            OUTLINED_FUNCTION_3_1();
            MEMORY[0x1CCA5CD70](v123, v3);
            OUTLINED_FUNCTION_37_18();

            sub_1C755180C();

            OUTLINED_FUNCTION_3_1();
            __dst[0] = v12 + 11;
            __dst[1] = v23;
            *&aBlock = sub_1C6FB6304();
            v24 = sub_1C7551D8C();
            MEMORY[0x1CCA5CD70](v24);

            OUTLINED_FUNCTION_37_18();

            v14 = swift_allocObject();
            *(v14 + 16) = MEMORY[0x1E69E7CC8];
            v112 = v14 + 16;
            v116 = v2[2];
            v117 = *(v116 + 16);
            if (v117)
            {
              v25 = 0;
              v26 = &selRef_clsSceneClassifications;
              v27 = *(v116 + 16);
              v121 = v14;
              while (v25 < v27)
              {
                v119 = v25;
                memcpy(__dst, (v116 + 32 + (v25 << 7)), sizeof(__dst));
                v28 = __dst[2];
                v29 = __dst[3];
                v30 = __dst[5];
                v118 = __dst[6];
                v125 = __dst[7];
                v120 = __dst[8];
                v131 = 0;
                v132 = 0xE000000000000000;
                sub_1C6FB7BB8(__dst, &aBlock);
                sub_1C75504FC();
                sub_1C755180C();

                strcpy(&aBlock, "\n\n-- Chapter ");
                HIBYTE(aBlock) = -18;
                v122 = v29;
                v124 = v28;
                MEMORY[0x1CCA5CD70](v28, v29);
                MEMORY[0x1CCA5CD70](757932066, 0xE400000000000000);
                MEMORY[0x1CCA5CD70](aBlock, *(&aBlock + 1));

                MEMORY[0x1CCA5CD70](0x20746F6853090A0ALL, 0xED00003A7473694CLL);
                v31 = *(v30 + 16);
                if (v31)
                {
                  sub_1C75504FC();
                  v32 = (v30 + 64);
                  v33 = v26;
                  do
                  {
                    v34 = *(v32 - 4);
                    v35 = *(v32 - 3);
                    v36 = *(v32 - 2);
                    v37 = *v32;
                    v32 += 5;
                    v12 = v37;
                    *&aBlock = 0;
                    *(&aBlock + 1) = 0xE000000000000000;
                    sub_1C75504FC();
                    v38 = v36;
                    sub_1C75504FC();
                    sub_1C75504FC();
                    sub_1C755180C();

                    *&aBlock = 592138;
                    *(&aBlock + 1) = 0xE300000000000000;
                    sub_1C75504FC();
                    MEMORY[0x1CCA5CD70](v34, v35);

                    MEMORY[0x1CCA5CD70](8250, 0xE200000000000000);
                    v131 = [v38 v33 + 888];
                    v39 = sub_1C7551D8C();
                    MEMORY[0x1CCA5CD70](v39);

                    MEMORY[0x1CCA5CD70](0xD000000000000020, 0x80000001C75A08B0);
                    OUTLINED_FUNCTION_33_15();

                    --v31;
                  }

                  while (v31);

                  OUTLINED_FUNCTION_39_14();
                  v26 = v33;
                }

                *&aBlock = 0;
                *(&aBlock + 1) = 0xE000000000000000;
                sub_1C755180C();

                *&aBlock = v12;
                *(&aBlock + 1) = 0x80000001C75A0860;
                sub_1C75504FC();
                MEMORY[0x1CCA5CD70](v118, v125);

                OUTLINED_FUNCTION_33_15();

                *&aBlock = 0;
                *(&aBlock + 1) = 0xE000000000000000;
                sub_1C755180C();

                *&aBlock = 10;
                *(&aBlock + 1) = 0xE100000000000000;
                v131 = [v120 v26[32]];
                OUTLINED_FUNCTION_40_14();
                v40 = sub_1C7551D8C();
                MEMORY[0x1CCA5CD70](v40);

                MEMORY[0x1CCA5CD70](v12 + 19, 0x80000001C75A0880);
                OUTLINED_FUNCTION_33_15();

                v41 = *(v30 + 16);
                if (v41)
                {
                  sub_1C75504FC();
                  v42 = v30 + 64;
                  do
                  {
                    v43 = *(v42 - 32);
                    v44 = *(v42 - 24);
                    v126 = *(v42 - 16);
                    v42 += 40;
                    v45 = swift_allocObject();
                    v45[2] = v121;
                    v45[3] = v124;
                    v45[4] = v122;
                    v45[5] = v43;
                    v45[6] = v44;
                    OUTLINED_FUNCTION_9_35();
                    v128 = sub_1C7067B48;
                    v129 = &block_descriptor_11;
                    v46 = _Block_copy(&aBlock);
                    v12 = v130;
                    sub_1C75504FC();
                    swift_bridgeObjectRetain_n();
                    v47 = v126;
                    sub_1C75504FC();
                    sub_1C75504FC();

                    [v47 enumerateObjectsUsingBlock_];
                    _Block_release(v46);

                    --v41;
                  }

                  while (v41);

                  OUTLINED_FUNCTION_39_14();
                  v26 = &selRef_clsSceneClassifications;
                }

                v25 = v119 + 1;
                v48 = swift_allocObject();
                v48[2] = v121;
                v48[3] = v124;
                v48[4] = v122;
                OUTLINED_FUNCTION_9_35();
                v128 = sub_1C7067B48;
                v129 = &block_descriptor_9;
                v2 = _Block_copy(&aBlock);

                v49 = v120;

                [v49 enumerateObjectsUsingBlock_];
                sub_1C6FBC664(__dst);
                _Block_release(v2);

                if (v119 + 1 == v117)
                {
                  goto LABEL_29;
                }

                v27 = *(v116 + 16);
              }

              __break(1u);
              goto LABEL_44;
            }

LABEL_29:
            v60 = MEMORY[0x1CCA5CD70](v12 + 1, 0x80000001C75A08E0);
            OUTLINED_FUNCTION_34_13(v60, v61, v62, v63, v64, v65, v66, v67, v104, v106, v108, v110, v112);
            v68 = sub_1C6FE1340(v109, *v2);
            if (v68)
            {
              v69 = v68;
              swift_endAccess();
              __dst[0] = v69;
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00, &qword_1C755BD70);
              sub_1C703328C();
              v70 = sub_1C75505FC();
              v72 = v71;

              __dst[0] = 0;
              __dst[1] = 0xE000000000000000;
              sub_1C755180C();

              __dst[0] = 10;
              __dst[1] = 0xE100000000000000;
              v73 = [v109 localIdentifier];
              sub_1C755068C();

              v74 = OUTLINED_FUNCTION_40_14();
              MEMORY[0x1CCA5CD70](v74);

              MEMORY[0x1CCA5CD70](0xD000000000000011, 0x80000001C75A0900);
              MEMORY[0x1CCA5CD70](v70, v72);

              OUTLINED_FUNCTION_12_33();

              MEMORY[0x1CCA5CD70](v12 + 6, 0x80000001C75A0920);
              v14 = sub_1C6FB6304();
              v75 = v115;
              if (v14)
              {
                v76 = v14;
                if (v14 < 1)
                {
LABEL_44:
                  __break(1u);
                  goto LABEL_45;
                }

                v77 = 0;
                do
                {
                  if ((v114 & 0xC000000000000001) != 0)
                  {
                    v78 = MEMORY[0x1CCA5DDD0](v77, v114);
                  }

                  else
                  {
                    v78 = *(v114 + 8 * v77 + 32);
                  }

                  v86 = v78;
                  OUTLINED_FUNCTION_34_13(v78, v79, v80, v81, v82, v83, v84, v85, v105, v107, v109, v111, v113);
                  v87 = *v75;
                  if (*(*v75 + 16) && (sub_1C6FC29A4(), (v89 & 1) != 0))
                  {
                    v90 = *(*(v87 + 56) + 8 * v88);
                    swift_endAccess();
                    __dst[0] = v90;
                    sub_1C75504FC();
                    v91 = sub_1C75505FC();
                    v93 = v92;

                    __dst[0] = 0;
                    __dst[1] = 0xE000000000000000;
                    sub_1C755180C();

                    __dst[0] = 10;
                    __dst[1] = 0xE100000000000000;
                    v94 = [v86 localIdentifier];
                    v95 = sub_1C755068C();
                    v12 = v96;

                    MEMORY[0x1CCA5CD70](v95, v12);
                    OUTLINED_FUNCTION_39_14();

                    MEMORY[0x1CCA5CD70](0xD000000000000011, 0x80000001C75A0900);
                    MEMORY[0x1CCA5CD70](v91, v93);
                  }

                  else
                  {
                    swift_endAccess();
                    OUTLINED_FUNCTION_7_35();
                    sub_1C755180C();
                    OUTLINED_FUNCTION_20_27();
                    MEMORY[0x1CCA5CD70](0x646574617275430ALL, 0xEF20746573736120);
                    v97 = [v86 localIdentifier];
                    sub_1C755068C();

                    v98 = OUTLINED_FUNCTION_40_14();
                    MEMORY[0x1CCA5CD70](v98);

                    MEMORY[0x1CCA5CD70](v12 + 41, 0x80000001C75A0940);
                  }

                  OUTLINED_FUNCTION_12_33();
                  ++v77;

                  v75 = v115;
                }

                while (v76 != v77);
              }

              v59 = v111;
              goto LABEL_27;
            }

            swift_endAccess();

            OUTLINED_FUNCTION_7_35();
            sub_1C755180C();
            OUTLINED_FUNCTION_20_27();
            MEMORY[0x1CCA5CD70](0x7373612079654B0ALL, 0xEB00000000207465);
            v99 = [v109 localIdentifier];
            v100 = sub_1C755068C();
            v102 = v101;

            MEMORY[0x1CCA5CD70](v100, v102);

            MEMORY[0x1CCA5CD70](v12 + 41, 0x80000001C75A0940);
            OUTLINED_FUNCTION_12_33();

LABEL_26:
            v59 = v115;
LABEL_27:

            goto LABEL_28;
          }
        }

        OUTLINED_FUNCTION_7_35();
        sub_1C755180C();
        OUTLINED_FUNCTION_20_27();
        OUTLINED_FUNCTION_18_21();
        MEMORY[0x1CCA5CD70](v55 + 30, v56 | 0x8000000000000000);
        OUTLINED_FUNCTION_46_12();
        OUTLINED_FUNCTION_2_51();
        OUTLINED_FUNCTION_12_33();
      }

      else
      {
        OUTLINED_FUNCTION_7_35();
        sub_1C755180C();
        OUTLINED_FUNCTION_20_27();
        OUTLINED_FUNCTION_18_21();
        MEMORY[0x1CCA5CD70](v57 + 35, v58 | 0x8000000000000000);
        OUTLINED_FUNCTION_46_12();
        OUTLINED_FUNCTION_2_51();
        OUTLINED_FUNCTION_12_33();
      }

      goto LABEL_26;
    }

    OUTLINED_FUNCTION_7_35();
    sub_1C755180C();
    OUTLINED_FUNCTION_20_27();
    OUTLINED_FUNCTION_18_21();
    MEMORY[0x1CCA5CD70](v53 | 0x20, v54 | 0x8000000000000000);
    OUTLINED_FUNCTION_46_12();
    OUTLINED_FUNCTION_2_51();
    OUTLINED_FUNCTION_12_33();
  }

  else
  {
    __dst[0] = 0;
    __dst[1] = 0xE000000000000000;
    sub_1C755180C();
    OUTLINED_FUNCTION_20_27();
    OUTLINED_FUNCTION_18_21();
    MEMORY[0x1CCA5CD70](v50 + 33, v51 | 0x8000000000000000);
    v52 = OUTLINED_FUNCTION_103();
    MEMORY[0x1CCA5CD70](v52);
    OUTLINED_FUNCTION_2_51();
    OUTLINED_FUNCTION_12_33();
  }

LABEL_28:
  v14 = v134;
  v15 = v135;
LABEL_47:
  result._object = v15;
  result._countAndFlagsBits = v14;
  return result;
}

uint64_t sub_1C7140954(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217A40, &unk_1C755C9D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C755BAB0;
  sub_1C755180C();

  MEMORY[0x1CCA5CD70](a5, a6);
  MEMORY[0x1CCA5CD70](0x20746F6873202C22, 0xE900000000000022);
  MEMORY[0x1CCA5CD70](a7, a8);
  MEMORY[0x1CCA5CD70](34, 0xE100000000000000);
  *(inited + 32) = 0xD000000000000018;
  *(inited + 40) = 0x80000001C75A0980;
  swift_beginAccess();
  swift_isUniquelyReferenced_nonNull_native();
  v15 = *(a4 + 16);
  *(a4 + 16) = 0x8000000000000000;
  sub_1C6FC29A4();
  if (__OFADD__(*(v15 + 16), (v16 & 1) == 0))
  {
    __break(1u);
LABEL_8:
    sub_1C6F65BE8(0, &qword_1EDD0FA70, 0x1E6978630);
    result = sub_1C7551E4C();
    __break(1u);
    return result;
  }

  v17 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2151B8, &unk_1C755C760);
  if (sub_1C7551A2C())
  {
    sub_1C6FC29A4();
    if ((v17 & 1) != (v18 & 1))
    {
      goto LABEL_8;
    }
  }

  *(a4 + 16) = v15;
  if ((v17 & 1) == 0)
  {
    sub_1C6FC6D68();
    v19 = a1;
  }

  sub_1C6FD2568(inited);
  return swift_endAccess();
}

uint64_t sub_1C7140B64(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217A40, &unk_1C755C9D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C755BAB0;
  sub_1C755180C();

  MEMORY[0x1CCA5CD70](a5, a6);
  MEMORY[0x1CCA5CD70](34, 0xE100000000000000);
  *(inited + 32) = 0xD00000000000002BLL;
  *(inited + 40) = 0x80000001C75A09A0;
  swift_beginAccess();
  swift_isUniquelyReferenced_nonNull_native();
  v11 = *(a4 + 16);
  *(a4 + 16) = 0x8000000000000000;
  sub_1C6FC29A4();
  if (__OFADD__(*(v11 + 16), (v12 & 1) == 0))
  {
    __break(1u);
LABEL_8:
    sub_1C6F65BE8(0, &qword_1EDD0FA70, 0x1E6978630);
    result = sub_1C7551E4C();
    __break(1u);
    return result;
  }

  v13 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2151B8, &unk_1C755C760);
  if (sub_1C7551A2C())
  {
    sub_1C6FC29A4();
    if ((v13 & 1) != (v14 & 1))
    {
      goto LABEL_8;
    }
  }

  *(a4 + 16) = v11;
  if ((v13 & 1) == 0)
  {
    sub_1C6FC6D68();
    v15 = a1;
  }

  sub_1C6FD2568(inited);
  return swift_endAccess();
}

unint64_t sub_1C7140D3C()
{
  result = qword_1EDD0AAE0;
  if (!qword_1EDD0AAE0)
  {
    result = swift_getWitnessTable(byte_1C756F830, &type metadata for FreeformStoryType.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EDD0AAE0);
  }

  return result;
}

unint64_t sub_1C7140D90()
{
  result = qword_1EC217D38;
  if (!qword_1EC217D38)
  {
    result = swift_getWitnessTable(a9_0, &type metadata for FreeformStoryType.LegacyCodingKeys, v0, v1);
    atomic_store(result, &qword_1EC217D38);
  }

  return result;
}

unint64_t sub_1C7140DE4()
{
  result = qword_1EC217D40;
  if (!qword_1EC217D40)
  {
    result = swift_getWitnessTable(asc_1C756F790, &type metadata for FreeformStoryType.TraitBasedSlideshowCodingKeys, v0, v1);
    atomic_store(result, &qword_1EC217D40);
  }

  return result;
}

unint64_t sub_1C7140E38()
{
  result = qword_1EC217D48;
  if (!qword_1EC217D48)
  {
    result = swift_getWitnessTable(aY_3, &type metadata for FreeformStoryType.LastResortCodingKeys, v0, v1);
    atomic_store(result, &qword_1EC217D48);
  }

  return result;
}

unint64_t sub_1C7140E8C()
{
  result = qword_1EC217D50;
  if (!qword_1EC217D50)
  {
    result = swift_getWitnessTable(aI_2, &type metadata for FreeformStoryType.VisualClusterBasedChronologicalCodingKeys, v0, v1);
    atomic_store(result, &qword_1EC217D50);
  }

  return result;
}

unint64_t sub_1C7140EE0()
{
  result = qword_1EC217D58;
  if (!qword_1EC217D58)
  {
    result = swift_getWitnessTable(byte_1C756F6A0, &type metadata for FreeformStoryType.VisualClusterBasedCodingKeys, v0, v1);
    atomic_store(result, &qword_1EC217D58);
  }

  return result;
}

unint64_t sub_1C7140F34()
{
  result = qword_1EDD0AA90;
  if (!qword_1EDD0AA90)
  {
    result = swift_getWitnessTable(aI_3, &type metadata for FreeformStoryType.ChronologicalCodingKeys, v0, v1);
    atomic_store(result, &qword_1EDD0AA90);
  }

  return result;
}

unint64_t sub_1C7140F88()
{
  result = qword_1EDD0AA08;
  if (!qword_1EDD0AA08)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for FreeformStoryType.Stage, &type metadata for FreeformStoryType.Stage, v0, v1);
    atomic_store(result, &qword_1EDD0AA08);
  }

  return result;
}

unint64_t sub_1C7140FDC()
{
  result = qword_1EDD0AAB8;
  if (!qword_1EDD0AAB8)
  {
    result = swift_getWitnessTable(byte_1C756F600, &type metadata for FreeformStoryType.MontageCodingKeys, v0, v1);
    atomic_store(result, &qword_1EDD0AAB8);
  }

  return result;
}

unint64_t sub_1C7141030()
{
  result = qword_1EC217DA0;
  if (!qword_1EC217DA0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for FreeformStoryType.Stage, &type metadata for FreeformStoryType.Stage, v0, v1);
    atomic_store(result, &qword_1EC217DA0);
  }

  return result;
}

uint64_t type metadata accessor for FreeformStory(uint64_t a1)
{
  result = qword_1EDD0C2E0;
  if (!qword_1EDD0C2E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1C71410D0()
{
  result = qword_1EDD0C308;
  if (!qword_1EDD0C308)
  {
    result = swift_getWitnessTable(asc_1C756F5B0, &type metadata for FreeformStory.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EDD0C308);
  }

  return result;
}

unint64_t sub_1C7141124()
{
  result = qword_1EC217DC0;
  if (!qword_1EC217DC0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for FreeformStoryCuratedChapter, &type metadata for FreeformStoryCuratedChapter, v0, v1);
    atomic_store(result, &qword_1EC217DC0);
  }

  return result;
}

unint64_t sub_1C7141178()
{
  result = qword_1EC217DC8;
  if (!qword_1EC217DC8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for FreeformStoryCompletionSync, &type metadata for FreeformStoryCompletionSync, v0, v1);
    atomic_store(result, &qword_1EC217DC8);
  }

  return result;
}

unint64_t sub_1C71411CC()
{
  result = qword_1EC217DD0;
  if (!qword_1EC217DD0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for FreeformStoryType, &type metadata for FreeformStoryType, v0, v1);
    atomic_store(result, &qword_1EC217DD0);
  }

  return result;
}

uint64_t sub_1C7141220(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_12();
  v4 = OUTLINED_FUNCTION_90();
  v5(v4);
  return a2;
}

uint64_t sub_1C714127C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_12();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_1C71412D4()
{
  result = qword_1EC217DE0;
  if (!qword_1EC217DE0)
  {
    result = swift_getWitnessTable(aA_1, &type metadata for FreeformStory.Error, v0, v1);
    atomic_store(result, &qword_1EC217DE0);
  }

  return result;
}

uint64_t sub_1C7141328(unint64_t *a1, uint64_t (*a2)(void), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC216560, &qword_1C756EAE0);
    v8 = a2();
    result = swift_getWitnessTable(a3, v7, &v8);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C71413A0()
{
  result = qword_1EDD08CA8;
  if (!qword_1EDD08CA8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for FreeformStoryCuratedChapter, &type metadata for FreeformStoryCuratedChapter, v0, v1);
    atomic_store(result, &qword_1EDD08CA8);
  }

  return result;
}

unint64_t sub_1C71413F4()
{
  result = qword_1EDD08D10;
  if (!qword_1EDD08D10)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC217DA8, &qword_1C756EAD0);
    v4[0] = sub_1C70E1188();
    result = swift_getWitnessTable(MEMORY[0x1E69E7C70], v3, v4);
    atomic_store(result, &qword_1EDD08D10);
  }

  return result;
}

uint64_t sub_1C7141478(unint64_t *a1, uint64_t *a2, uint64_t *a3, const char *a4)
{
  result = *a1;
  if (!result)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    v8 = MEMORY[0x1E69E6160];
    result = swift_getWitnessTable(a4, v7, &v8);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C71414D8(unint64_t *a1, const char *a2)
{
  result = *a1;
  if (!result)
  {
    v5 = type metadata accessor for StoryMusicCuration(255);
    result = swift_getWitnessTable(a2, v5);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C714151C()
{
  result = qword_1EDD0AA00;
  if (!qword_1EDD0AA00)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for FreeformStoryType, &type metadata for FreeformStoryType, v0, v1);
    atomic_store(result, &qword_1EDD0AA00);
  }

  return result;
}

unint64_t sub_1C7141590()
{
  result = qword_1EC217DE8;
  if (!qword_1EC217DE8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for FreeformStoryType.Stage, &type metadata for FreeformStoryType.Stage, v0, v1);
    atomic_store(result, &qword_1EC217DE8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FreeformStoryType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return v5 + 1;
  }

  if (a2 >= 0x7C)
  {
    if (a2 + 132 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 132) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 133;
    return v5 + 1;
  }

LABEL_17:
  v5 = ((*a1 >> 5) & 0xFFFFFF87 | (8 * ((*a1 >> 1) & 0xF))) ^ 0x7F;
  if (v5 >= 0x7B)
  {
    v5 = -1;
  }

  return v5 + 1;
}

_BYTE *storeEnumTagSinglePayload for FreeformStoryType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 132 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 132) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0x7C)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0x7B)
  {
    v6 = ((a2 - 124) >> 8) + 1;
    *result = a2 - 124;
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
          *result = 2 * (((-a2 >> 3) & 0xF) - 16 * a2);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1C7141754(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 <= 0x3F)
  {
    return v1 >> 5;
  }

  else
  {
    return (v1 | 0xFFFFFFFE) + 2 * (v1 >> 5);
  }
}

_BYTE *sub_1C7141780(_BYTE *result, unsigned int a2)
{
  if (a2 < 2)
  {
    LOBYTE(v2) = *result & 1 | (32 * a2);
  }

  else
  {
    v2 = (a2 & 1 | (32 * (a2 >> 1))) + 32;
  }

  *result = v2;
  return result;
}

void sub_1C7141808(uint64_t a1)
{
  sub_1C714196C(319, &qword_1EDD06B28, &type metadata for FreeformStoryCuratedChapter, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1C714196C(319, &qword_1EDD08D18, &type metadata for FreeformStoryCompletionSync, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1C714196C(319, &qword_1EDD0D078, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        sub_1C6F65BE8(319, &qword_1EDD0CEA0, 0x1E6978840);
        if (v4 <= 0x3F)
        {
          type metadata accessor for StoryMusicCuration(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1C714196C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

_BYTE *storeEnumTagSinglePayload for FreeformStory.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for FreeformStoryType.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1C7141B94(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

_BYTE *sub_1C7141CC0(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C7141DA0()
{
  result = qword_1EC217DF0;
  if (!qword_1EC217DF0)
  {
    result = swift_getWitnessTable(a1, &type metadata for FreeformStoryDecoder.Error, v0, v1);
    atomic_store(result, &qword_1EC217DF0);
  }

  return result;
}

unint64_t sub_1C7141DF8()
{
  result = qword_1EC217DF8;
  if (!qword_1EC217DF8)
  {
    result = swift_getWitnessTable(asc_1C756F070, &type metadata for FreeformStoryType.Stage.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EC217DF8);
  }

  return result;
}

unint64_t sub_1C7141E50()
{
  result = qword_1EC217E00;
  if (!qword_1EC217E00)
  {
    result = swift_getWitnessTable(byte_1C756F2B8, &type metadata for FreeformStoryType.ChronologicalCodingKeys, v0, v1);
    atomic_store(result, &qword_1EC217E00);
  }

  return result;
}

unint64_t sub_1C7141EA8()
{
  result = qword_1EC217E08;
  if (!qword_1EC217E08)
  {
    result = swift_getWitnessTable(asc_1C756F370, &type metadata for FreeformStoryType.MontageCodingKeys, v0, v1);
    atomic_store(result, &qword_1EC217E08);
  }

  return result;
}

unint64_t sub_1C7141F00()
{
  result = qword_1EC217E10;
  if (!qword_1EC217E10)
  {
    result = swift_getWitnessTable(asc_1C756F428, &type metadata for FreeformStoryType.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EC217E10);
  }

  return result;
}

unint64_t sub_1C7141F58()
{
  result = qword_1EC217E18;
  if (!qword_1EC217E18)
  {
    result = swift_getWitnessTable(aI_4, &type metadata for FreeformStory.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EC217E18);
  }

  return result;
}

unint64_t sub_1C7141FB0()
{
  result = qword_1EC217E20;
  if (!qword_1EC217E20)
  {
    result = swift_getWitnessTable(byte_1C756F548, &type metadata for FreeformStory.Error, v0, v1);
    atomic_store(result, &qword_1EC217E20);
  }

  return result;
}

unint64_t sub_1C7142008()
{
  result = qword_1EDD0C2F8;
  if (!qword_1EDD0C2F8)
  {
    result = swift_getWitnessTable(byte_1C756F450, &type metadata for FreeformStory.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EDD0C2F8);
  }

  return result;
}

unint64_t sub_1C7142060()
{
  result = qword_1EDD0C300;
  if (!qword_1EDD0C300)
  {
    result = swift_getWitnessTable(byte_1C756F478, &type metadata for FreeformStory.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EDD0C300);
  }

  return result;
}

unint64_t sub_1C71420B8()
{
  result = qword_1EDD0AAA8;
  if (!qword_1EDD0AAA8)
  {
    result = swift_getWitnessTable(byte_1C756F2E0, &type metadata for FreeformStoryType.MontageCodingKeys, v0, v1);
    atomic_store(result, &qword_1EDD0AAA8);
  }

  return result;
}

unint64_t sub_1C7142110()
{
  result = qword_1EDD0AAB0;
  if (!qword_1EDD0AAB0)
  {
    result = swift_getWitnessTable(asc_1C756F308, &type metadata for FreeformStoryType.MontageCodingKeys, v0, v1);
    atomic_store(result, &qword_1EDD0AAB0);
  }

  return result;
}

unint64_t sub_1C7142168()
{
  result = qword_1EDD0AA80;
  if (!qword_1EDD0AA80)
  {
    result = swift_getWitnessTable(aI_5, &type metadata for FreeformStoryType.ChronologicalCodingKeys, v0, v1);
    atomic_store(result, &qword_1EDD0AA80);
  }

  return result;
}

unint64_t sub_1C71421C0()
{
  result = qword_1EDD0AA88;
  if (!qword_1EDD0AA88)
  {
    result = swift_getWitnessTable(a4, &type metadata for FreeformStoryType.ChronologicalCodingKeys, v0, v1);
    atomic_store(result, &qword_1EDD0AA88);
  }

  return result;
}

unint64_t sub_1C7142218()
{
  result = qword_1EDD0AA70;
  if (!qword_1EDD0AA70)
  {
    result = swift_getWitnessTable(byte_1C756F1D8, &type metadata for FreeformStoryType.VisualClusterBasedCodingKeys, v0, v1);
    atomic_store(result, &qword_1EDD0AA70);
  }

  return result;
}

unint64_t sub_1C7142270()
{
  result = qword_1EDD0AA78;
  if (!qword_1EDD0AA78)
  {
    result = swift_getWitnessTable(a1_0, &type metadata for FreeformStoryType.VisualClusterBasedCodingKeys, v0, v1);
    atomic_store(result, &qword_1EDD0AA78);
  }

  return result;
}

unint64_t sub_1C71422C8()
{
  result = qword_1EDD0AA50;
  if (!qword_1EDD0AA50)
  {
    result = swift_getWitnessTable(aI_6, &type metadata for FreeformStoryType.VisualClusterBasedChronologicalCodingKeys, v0, v1);
    atomic_store(result, &qword_1EDD0AA50);
  }

  return result;
}

unint64_t sub_1C7142320()
{
  result = qword_1EDD0AA58;
  if (!qword_1EDD0AA58)
  {
    result = swift_getWitnessTable(byte_1C756F1B0, &type metadata for FreeformStoryType.VisualClusterBasedChronologicalCodingKeys, v0, v1);
    atomic_store(result, &qword_1EDD0AA58);
  }

  return result;
}

unint64_t sub_1C7142378()
{
  result = qword_1EDD0AA98;
  if (!qword_1EDD0AA98)
  {
    result = swift_getWitnessTable(byte_1C756F138, &type metadata for FreeformStoryType.LastResortCodingKeys, v0, v1);
    atomic_store(result, &qword_1EDD0AA98);
  }

  return result;
}

unint64_t sub_1C71423D0()
{
  result = qword_1EDD0AAA0;
  if (!qword_1EDD0AAA0)
  {
    result = swift_getWitnessTable(asc_1C756F160, &type metadata for FreeformStoryType.LastResortCodingKeys, v0, v1);
    atomic_store(result, &qword_1EDD0AAA0);
  }

  return result;
}

unint64_t sub_1C7142428()
{
  result = qword_1EDD0AA60;
  if (!qword_1EDD0AA60)
  {
    result = swift_getWitnessTable(asc_1C756F0E8, &type metadata for FreeformStoryType.TraitBasedSlideshowCodingKeys, v0, v1);
    atomic_store(result, &qword_1EDD0AA60);
  }

  return result;
}

unint64_t sub_1C7142480()
{
  result = qword_1EDD0AA68;
  if (!qword_1EDD0AA68)
  {
    result = swift_getWitnessTable(asc_1C756F110, &type metadata for FreeformStoryType.TraitBasedSlideshowCodingKeys, v0, v1);
    atomic_store(result, &qword_1EDD0AA68);
  }

  return result;
}

unint64_t sub_1C71424D8()
{
  result = qword_1EDD0AAC0;
  if (!qword_1EDD0AAC0)
  {
    result = swift_getWitnessTable(aY_4, &type metadata for FreeformStoryType.LegacyCodingKeys, v0, v1);
    atomic_store(result, &qword_1EDD0AAC0);
  }

  return result;
}

unint64_t sub_1C7142530()
{
  result = qword_1EDD0AAC8;
  if (!qword_1EDD0AAC8)
  {
    result = swift_getWitnessTable(aQ_6, &type metadata for FreeformStoryType.LegacyCodingKeys, v0, v1);
    atomic_store(result, &qword_1EDD0AAC8);
  }

  return result;
}

unint64_t sub_1C7142588()
{
  result = qword_1EDD0AAD0;
  if (!qword_1EDD0AAD0)
  {
    result = swift_getWitnessTable(aY_5, &type metadata for FreeformStoryType.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EDD0AAD0);
  }

  return result;
}

unint64_t sub_1C71425E0()
{
  result = qword_1EDD0AAD8;
  if (!qword_1EDD0AAD8)
  {
    result = swift_getWitnessTable(aQ_7, &type metadata for FreeformStoryType.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EDD0AAD8);
  }

  return result;
}

unint64_t sub_1C7142638()
{
  result = qword_1EDD0AA20;
  if (!qword_1EDD0AA20)
  {
    result = swift_getWitnessTable(aA_2, &type metadata for FreeformStoryType.Stage.PrecurationCodingKeys, v0, v1);
    atomic_store(result, &qword_1EDD0AA20);
  }

  return result;
}

unint64_t sub_1C7142690()
{
  result = qword_1EDD0AA28;
  if (!qword_1EDD0AA28)
  {
    result = swift_getWitnessTable(aY_6, &type metadata for FreeformStoryType.Stage.PrecurationCodingKeys, v0, v1);
    atomic_store(result, &qword_1EDD0AA28);
  }

  return result;
}

unint64_t sub_1C71426E8()
{
  result = qword_1EDD0AA10;
  if (!qword_1EDD0AA10)
  {
    result = swift_getWitnessTable(byte_1C756EF40, &type metadata for FreeformStoryType.Stage.PostcurationCodingKeys, v0, v1);
    atomic_store(result, &qword_1EDD0AA10);
  }

  return result;
}

unint64_t sub_1C7142740()
{
  result = qword_1EDD0AA18;
  if (!qword_1EDD0AA18)
  {
    result = swift_getWitnessTable(aH, &type metadata for FreeformStoryType.Stage.PostcurationCodingKeys, v0, v1);
    atomic_store(result, &qword_1EDD0AA18);
  }

  return result;
}

unint64_t sub_1C7142798()
{
  result = qword_1EDD0AA38;
  if (!qword_1EDD0AA38)
  {
    result = swift_getWitnessTable(byte_1C756EFE0, &type metadata for FreeformStoryType.Stage.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EDD0AA38);
  }

  return result;
}

unint64_t sub_1C71427F0()
{
  result = qword_1EDD0AA40;
  if (!qword_1EDD0AA40)
  {
    result = swift_getWitnessTable(asc_1C756F008, &type metadata for FreeformStoryType.Stage.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EDD0AA40);
  }

  return result;
}

uint64_t sub_1C7142884()
{
  v0 = sub_1C754FF1C();
  __swift_allocate_value_buffer(v0, qword_1EC217E28);
  __swift_project_value_buffer(v0, qword_1EC217E28);
  return sub_1C754FEFC();
}

uint64_t static DailyMemoryFetcher.logger.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC213E10 != -1)
  {
    swift_once();
  }

  v2 = sub_1C754FF1C();
  v3 = __swift_project_value_buffer(v2, qword_1EC217E28);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t FreeformStoryGeneration.Chronological.Uncurated.Story.identifier.getter()
{
  v1 = *v0;
  sub_1C75504FC();
  return v1;
}

uint64_t FreeformStoryGeneration.Chronological.Uncurated.Story.elements.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 24), 0x130uLL);
  memcpy(a1, (v1 + 24), 0x130uLL);
  return sub_1C6FDE884(__dst, v4);
}

uint64_t FreeformStoryGeneration.Chronological.Uncurated.Story.musicCurationTask.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 384);
  *a1 = *(v1 + 376);
  a1[1] = v2;
}

__n128 FreeformStoryGeneration.Chronological.Uncurated.Story.init(identifier:elements:completion:shots:musicCurationTask:)@<Q0>(void *__src@<X2>, uint64_t a2@<X0>, uint64_t a3@<X1>, __int128 *a4@<X3>, uint64_t a5@<X4>, __n128 *a6@<X5>, uint64_t a7@<X8>)
{
  *(a7 + 16) = 32;
  *a7 = a2;
  *(a7 + 8) = a3;
  memcpy((a7 + 24), __src, 0x130uLL);
  sub_1C6F699F8(a4, a7 + 328);
  *(a7 + 368) = a5;
  result = *a6;
  *(a7 + 376) = *a6;
  return result;
}

Swift::Void __swiftcall FreeformStoryGeneration.Chronological.Uncurated.Story.cancel()()
{
  if (qword_1EC213E18 != -1)
  {
    swift_once();
  }

  v1 = sub_1C754FF1C();
  __swift_project_value_buffer(v1, qword_1EC217E40);
  sub_1C70BFB18(v0, v10);
  v2 = sub_1C754FEEC();
  v3 = sub_1C75511BC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v9 = v5;
    *v4 = 136315138;
    v6 = v10[0];
    v7 = v10[1];
    sub_1C75504FC();
    sub_1C70BFB74(v10);
    v8 = sub_1C6F765A4(v6, v7, &v9);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_1C6F5C000, v2, v3, "Cancelling music task for story %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v5);
    OUTLINED_FUNCTION_109();
    OUTLINED_FUNCTION_109();
  }

  else
  {

    sub_1C70BFB74(v10);
  }

  type metadata accessor for StoryMusicCuration(0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219760, ":");
  sub_1C7550E1C();
  sub_1C7550E1C();
}

uint64_t sub_1C7142D9C()
{
  v0 = sub_1C754FF1C();
  __swift_allocate_value_buffer(v0, qword_1EC217E40);
  __swift_project_value_buffer(v0, qword_1EC217E40);
  return sub_1C754FEFC();
}

uint64_t sub_1C7142E1C(uint64_t a1, const void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v6[120] = v5;
  v6[119] = a5;
  v6[118] = a4;
  v6[117] = a2;
  v6[116] = a1;
  v9 = sub_1C754F2FC();
  v6[121] = v9;
  v6[122] = *(v9 - 8);
  v6[123] = swift_task_alloc();
  v6[124] = swift_task_alloc();
  v6[125] = swift_task_alloc();
  v6[126] = swift_task_alloc();
  memcpy(v6 + 77, a2, 0x58uLL);
  memcpy(v6 + 40, a3, 0xC0uLL);
  v6[127] = a3[24];
  memcpy(v6 + 64, a3 + 25, 0x68uLL);
  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1C7142F54(uint64_t a1)
{
  sub_1C754F2CC();
  v2 = v1[127];
  v3 = v1[120];
  sub_1C754F2BC();
  sub_1C754F2BC();
  if (*(v2 + 16) >= *v3)
  {
    v16 = v1[126];
    v17 = v1[124];
    v18 = v1[122];
    v19 = v1[121];
    v20 = v1[117];
    type metadata accessor for FreeformStoryCompletionGenerator.Diagnostics();
    swift_allocObject();
    sub_1C6FB03C4();
    v1[128] = v21;
    memcpy(v1 + 88, v20, 0x41uLL);
    v22 = *(v18 + 32);
    v1[129] = v22;
    v22(v17, v16, v19);
    _s9GeneratorVMa_0(0);
    memcpy(v1 + 97, v1 + 88, 0x41uLL);
    v1[114] = type metadata accessor for FreeformStoryCompletionAsync(0);
    v1[115] = sub_1C6FE58DC();
    __swift_allocate_boxed_opaque_existential_0(v1 + 111);
    swift_task_alloc();
    OUTLINED_FUNCTION_48();
    v1[130] = v23;
    *v23 = v24;
    v23[1] = sub_1C71432C4;
    OUTLINED_FUNCTION_20_3();

    return sub_1C6FAE48C();
  }

  else
  {
    _s9GeneratorVMa_0(0);
    v4 = sub_1C754FEEC();
    v5 = sub_1C75511BC();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_1C6F5C000, v4, v5, "Not enough assets to use adapter, using empty completion and empty story title", v6, 2u);
      OUTLINED_FUNCTION_109();
    }

    v7 = v1[126];
    v8 = v1[122];
    v9 = v1[121];

    v1[109] = &type metadata for FreeformStoryCompletionSync;
    v1[110] = sub_1C6FB5578();
    v1[106] = swift_allocObject();
    sub_1C70BBFD0();
    (*(v8 + 8))(v7, v9);
    v10 = *(v8 + 32);
    OUTLINED_FUNCTION_5_42();
    OUTLINED_FUNCTION_21_3();
    v11 = OUTLINED_FUNCTION_1_16();
    v10(v11);
    swift_task_alloc();
    OUTLINED_FUNCTION_48();
    v1[132] = v12;
    *v12 = v13;
    OUTLINED_FUNCTION_0_73(v12);
    OUTLINED_FUNCTION_20_3();

    return sub_1C7143958();
  }
}

uint64_t sub_1C71432C4()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_40();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_40();
  *v5 = v4;
  *(v6 + 1048) = v0;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C71433C4()
{
  v1 = *(v0 + 1024);
  v2 = *(v0 + 960);
  sub_1C6F699F8((v0 + 888), v0 + 848);
  sub_1C714383C(v2, v0 + 616, v1);

  v3 = *(v0 + 1032);
  OUTLINED_FUNCTION_5_42();
  OUTLINED_FUNCTION_21_3();
  v4 = OUTLINED_FUNCTION_1_16();
  v3(v4);
  swift_task_alloc();
  OUTLINED_FUNCTION_48();
  *(v0 + 1056) = v5;
  *v5 = v6;
  OUTLINED_FUNCTION_0_73(v5);

  return sub_1C7143958();
}

uint64_t sub_1C714349C()
{
  v1 = v0[128];
  v2 = v0[125];
  v3 = v0[122];
  v4 = v0[121];
  v5 = v0[120];
  v6 = v0[119];
  __swift_deallocate_boxed_opaque_existential_1((v0 + 111));
  sub_1C714383C(v5, (v0 + 77), v1);

  v7 = *(v3 + 8);
  v7(v2, v4);
  v7(v6, v4);
  OUTLINED_FUNCTION_13_34();

  OUTLINED_FUNCTION_43();

  return v8();
}

uint64_t sub_1C714358C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_40();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_40();
  *v5 = v4;
  *(v6 + 1064) = v0;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C714368C(uint64_t a1)
{
  v2 = v1[133];
  sub_1C754F2EC();
  if (v2)
  {
    v3 = v1[116];
    FreeformStoryGeneration.Chronological.Uncurated.Story.cancel()();
    swift_willThrow();
    sub_1C70BFB74(v3);
  }

  else
  {
    OUTLINED_FUNCTION_13_34();
  }

  __swift_destroy_boxed_opaque_existential_1(v1 + 106);

  OUTLINED_FUNCTION_43();

  return v4();
}

uint64_t sub_1C714378C()
{
  v1 = v0[122];
  v2 = v0[121];
  v3 = v0[119];
  __swift_destroy_boxed_opaque_existential_1(v0 + 106);
  (*(v1 + 8))(v3, v2);
  OUTLINED_FUNCTION_13_34();

  OUTLINED_FUNCTION_43();

  return v4();
}

double sub_1C714383C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1 + *(_s9GeneratorVMa_0(0) + 20);
  v6 = *(v5 + *(type metadata accessor for StoryGenerationSession(0) + 24));
  if (v6)
  {

    sub_1C755180C();
    v9 = *(a2 + 72);
    v8 = *(a2 + 80);
    sub_1C75504FC();

    MEMORY[0x1CCA5CD70](0xD000000000000010, 0x80000001C7598200);

    sub_1C716A8F8(v9, v8, v6, a3);

    sub_1C6FAFAAC(v6);
  }

  return result;
}

uint64_t sub_1C7143958()
{
  OUTLINED_FUNCTION_42();
  v3 = v2;
  v1[156] = v0;
  v1[155] = v4;
  v1[154] = v5;
  v1[153] = v6;
  v1[152] = v7;
  v1[151] = v8;
  v1[150] = v9;
  v10 = sub_1C754F2FC();
  v1[157] = v10;
  v1[158] = *(v10 - 8);
  v1[159] = swift_task_alloc();
  v1[160] = swift_task_alloc();
  v1[161] = swift_task_alloc();
  v1[162] = swift_task_alloc();
  memcpy(v1 + 2, v3, 0x130uLL);
  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1C7143A60(uint64_t a1)
{
  v16 = v1;
  sub_1C754F2CC();
  v2 = *(v1 + 1296);
  v3 = *(v1 + 1280);
  v12 = *(v1 + 1288);
  v13 = *(v1 + 1272);
  v4 = *(v1 + 1264);
  v11 = *(v1 + 1256);
  v5 = *(v1 + 1232);
  v6 = *(v1 + 1208);
  sub_1C754F2BC();
  sub_1C754F2BC();
  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  sub_1C754F15C();
  v7 = _s9GeneratorVMa_0(0);
  *(v1 + 1304) = v7;
  memcpy(__dst, (v1 + 16), sizeof(__dst));
  sub_1C6FB5E28(v6, v1 + 1160);
  *(v1 + 1368) = *(v7 + 20);
  v8 = *(v4 + 32);
  v8(v3, v2, v11);
  FreeformStoryGenerator.musicCurationTask(from:storyCompletion:storySession:eventRecorder:progressReporter:)();
  sub_1C6FE5984(v1 + 1160);
  *(v1 + 1312) = v14;
  memcpy((v1 + 320), (v1 + 16), 0x130uLL);
  v8(v13, v12, v11);
  v9 = swift_task_alloc();
  *(v1 + 1328) = v9;
  *v9 = v1;
  v9[1] = sub_1C7143CF0;

  return sub_1C7049E94();
}

uint64_t sub_1C7143CF0()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_40();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 1336) = v4;
  *(v2 + 1344) = v0;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1C7143DF8()
{
  v1 = *(v0 + 1208);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v7 = (*(v3 + 64) + **(v3 + 64));
  swift_task_alloc();
  OUTLINED_FUNCTION_48();
  *(v0 + 1352) = v4;
  *v4 = v5;
  v4[1] = sub_1C7143F20;

  return v7(v0 + 992, v2, v3);
}

uint64_t sub_1C7143F20()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_40();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_40();
  *v6 = v5;
  *(v3 + 1360) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

void sub_1C7144028()
{
  v36 = v0;
  v1 = *(v0 + 1248) + *(v0 + 1368);
  v2 = *(v0 + 1008);
  *(v0 + 928) = *(v0 + 992);
  *(v0 + 944) = v2;
  v3 = *(v0 + 1040);
  *(v0 + 960) = *(v0 + 1024);
  *(v0 + 976) = v3;
  if (*(v1 + *(type metadata accessor for StoryGenerationSession(0) + 24)))
  {
    v4 = *(v0 + 1224);
    v5 = *(v0 + 1216);
    sub_1C755180C();
    sub_1C75504FC();

    v35[0] = v5;
    v35[1] = v4;
    MEMORY[0x1CCA5CD70](0xD000000000000014, 0x80000001C75981E0);
    sub_1C6FDE928(v0 + 928, v0 + 1056);
    sub_1C716A8FC();
  }

  v6 = 0;
  v7 = *(v0 + 1336);
  v8 = *(v7 + 16);
  v9 = (v7 + 72);
  v10 = MEMORY[0x1E69E7CC0];
  while (v8 != v6)
  {
    if (v6 >= *(v7 + 16))
    {
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
      return;
    }

    v11 = *v9;
    v12 = *(*v9 + 16);
    v13 = *(v10 + 16);
    v14 = v13 + v12;
    if (__OFADD__(v13, v12))
    {
      goto LABEL_29;
    }

    sub_1C75504FC();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || v14 > *(v10 + 24) >> 1)
    {
      if (v13 <= v14)
      {
        v16 = v13 + v12;
      }

      else
      {
        v16 = v13;
      }

      sub_1C6FB25A8(isUniquelyReferenced_nonNull_native, v16, 1, v10);
      v10 = v17;
    }

    if (*(v11 + 16))
    {
      if ((*(v10 + 24) >> 1) - *(v10 + 16) < v12)
      {
        goto LABEL_31;
      }

      swift_arrayInitWithCopy();

      if (v12)
      {
        v18 = *(v10 + 16);
        v19 = __OFADD__(v18, v12);
        v20 = v18 + v12;
        if (v19)
        {
          goto LABEL_32;
        }

        *(v10 + 16) = v20;
      }
    }

    else
    {

      if (v12)
      {
        goto LABEL_30;
      }
    }

    v9 += 13;
    ++v6;
  }

  v21 = *(v0 + 1360);
  v22 = *(v0 + 1320);
  v23 = *(v0 + 1312);
  v24 = *(v0 + 1224);
  v25 = *(v0 + 1216);
  v26 = *(v0 + 1200);

  *(v26 + 352) = &type metadata for FreeformStoryCompletionSync;
  *(v26 + 360) = sub_1C6FB5578();
  v27 = swift_allocObject();
  *(v26 + 328) = v27;
  v28 = *(v0 + 976);
  v27[3] = *(v0 + 960);
  v27[4] = v28;
  v29 = *(v0 + 944);
  v27[1] = *(v0 + 928);
  v27[2] = v29;
  *(v26 + 16) = 32;
  *v26 = v25;
  *(v26 + 8) = v24;
  memcpy((v26 + 24), (v0 + 16), 0x130uLL);
  *(v26 + 368) = v10;
  *(v26 + 376) = v23;
  *(v26 + 384) = v22;
  sub_1C75504FC();
  sub_1C6FDE884(v0 + 16, v0 + 624);

  sub_1C754F2EC();
  if (v21)
  {
    OUTLINED_FUNCTION_4_42();
    v30 = sub_1C754FEEC();
    v31 = sub_1C75511BC();

    if (os_log_type_enabled(v30, v31))
    {
      OUTLINED_FUNCTION_7_6();
      v35[0] = OUTLINED_FUNCTION_15_5();
      *v24 = 136315138;
      *(v24 + 4) = sub_1C6F765A4(v23, v10, v35);
      OUTLINED_FUNCTION_10_4(&dword_1C6F5C000, v32, v33, "Cancelling music task before story creation for story %s");
      OUTLINED_FUNCTION_12_6();
      OUTLINED_FUNCTION_109();
    }

    OUTLINED_FUNCTION_14_7();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219760, ":");
    OUTLINED_FUNCTION_1_16();
    sub_1C7550E1C();
    OUTLINED_FUNCTION_8_0();
    swift_willThrow();

    __swift_destroy_boxed_opaque_existential_1((v0 + 1120));
    sub_1C70BFB74(*(v0 + 1200));
    OUTLINED_FUNCTION_9_8();

    OUTLINED_FUNCTION_43();
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1((v0 + 1120));

    OUTLINED_FUNCTION_43();
  }

  v34();
}

uint64_t sub_1C7144468()
{
  v2 = OUTLINED_FUNCTION_4_7();
  v3(v2);
  OUTLINED_FUNCTION_4_42();
  v4 = sub_1C754FEEC();
  v5 = sub_1C75511BC();

  if (os_log_type_enabled(v4, v5))
  {
    OUTLINED_FUNCTION_7_6();
    v11 = OUTLINED_FUNCTION_15_5();
    *(v1 + 4) = OUTLINED_FUNCTION_22_8(4.8149e-34, v11, v6);
    OUTLINED_FUNCTION_10_4(&dword_1C6F5C000, v7, v8, "Cancelling music task before story creation for story %s");
    OUTLINED_FUNCTION_12_6();
    OUTLINED_FUNCTION_109();
  }

  OUTLINED_FUNCTION_14_7();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219760, ":");
  OUTLINED_FUNCTION_1_16();
  sub_1C7550E1C();
  OUTLINED_FUNCTION_8_0();
  swift_willThrow();

  __swift_destroy_boxed_opaque_existential_1((v0 + 1120));
  OUTLINED_FUNCTION_9_8();

  OUTLINED_FUNCTION_43();

  return v9();
}

uint64_t sub_1C71445DC()
{
  v2 = OUTLINED_FUNCTION_4_7();
  v3(v2);
  OUTLINED_FUNCTION_4_42();
  v4 = sub_1C754FEEC();
  v5 = sub_1C75511BC();

  if (os_log_type_enabled(v4, v5))
  {
    OUTLINED_FUNCTION_7_6();
    v11 = OUTLINED_FUNCTION_15_5();
    *(v1 + 4) = OUTLINED_FUNCTION_22_8(4.8149e-34, v11, v6);
    OUTLINED_FUNCTION_10_4(&dword_1C6F5C000, v7, v8, "Cancelling music task before story creation for story %s");
    OUTLINED_FUNCTION_12_6();
    OUTLINED_FUNCTION_109();
  }

  OUTLINED_FUNCTION_14_7();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219760, ":");
  OUTLINED_FUNCTION_1_16();
  sub_1C7550E1C();
  OUTLINED_FUNCTION_8_0();
  swift_willThrow();

  __swift_destroy_boxed_opaque_existential_1((v0 + 1120));
  OUTLINED_FUNCTION_9_8();

  OUTLINED_FUNCTION_43();

  return v9();
}

uint64_t _s9GeneratorVMa_0(uint64_t a1)
{
  result = qword_1EC217E58;
  if (!qword_1EC217E58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1C71447EC(uint64_t a1)
{
  result = type metadata accessor for StoryGenerationSession(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for FreeformStoryGenerator(319);
    if (v3 <= 0x3F)
    {
      result = sub_1C70DEA6C();
      if (v4 <= 0x3F)
      {
        result = sub_1C754FF1C();
        if (v5 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t FreeformStoryGeneration.Chronological.Curated.Story.elements.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 24), 0x130uLL);
  memcpy(a1, (v1 + 24), 0x130uLL);
  return sub_1C6FDE884(__dst, v4);
}

uint64_t FreeformStoryGeneration.Chronological.Curated.Story.completion.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = *(v1 + 472);
  v7[0] = *(v1 + 456);
  v7[1] = v2;
  v4 = *(v1 + 504);
  v8 = *(v1 + 488);
  v3 = v8;
  v9 = v4;
  *a1 = v7[0];
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
  return sub_1C6FDE928(v7, &v6);
}

uint64_t FreeformStoryGeneration.Chronological.Curated.Story.musicCuration.getter@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for FreeformStoryGeneration.Chronological.Curated.Story(0);
  OUTLINED_FUNCTION_15_32();
  return sub_1C714E5B8(v1 + v3, a1);
}

uint64_t FreeformStoryGeneration.Chronological.Curated.Story.chapters.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2150B8, &qword_1C755C2C0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1C755BAB0;
  memcpy(__dst, (v0 + 328), 0x80uLL);
  memcpy((v1 + 32), (v0 + 328), 0x80uLL);
  sub_1C6FB7BB8(__dst, v3);
  return v1;
}

uint64_t FreeformStoryGeneration.Chronological.Curated.Story.init(identifier:type:elements:fakeChapter:completion:keyAsset:musicCuration:)@<X0>(void *__src@<X3>, uint64_t a2@<X0>, uint64_t a3@<X1>, char *a4@<X2>, const void *a5@<X4>, _OWORD *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v14 = *a4;
  *a9 = a2;
  *(a9 + 8) = a3;
  *(a9 + 16) = v14;
  memcpy((a9 + 24), __src, 0x130uLL);
  memcpy((a9 + 328), a5, 0x80uLL);
  v15 = a6[1];
  *(a9 + 456) = *a6;
  *(a9 + 472) = v15;
  v16 = a6[3];
  *(a9 + 488) = a6[2];
  *(a9 + 504) = v16;
  *(a9 + 520) = a7;
  v17 = type metadata accessor for FreeformStoryGeneration.Chronological.Curated.Story(0);
  return sub_1C714D8C8(a8, a9 + *(v17 + 40));
}

uint64_t sub_1C7144BC0()
{
  v0 = sub_1C754FF1C();
  __swift_allocate_value_buffer(v0, qword_1EC217E68);
  v1 = OUTLINED_FUNCTION_90();
  __swift_project_value_buffer(v1, v2);
  return sub_1C754FEFC();
}

uint64_t sub_1C7144C3C()
{
  OUTLINED_FUNCTION_42();
  v1[373] = v0;
  v1[372] = v2;
  v1[371] = v3;
  v1[370] = v4;
  v1[369] = v5;
  v1[374] = type metadata accessor for FreeformStoryGeneration.Chronological.Curated.Story(0);
  v1[375] = OUTLINED_FUNCTION_77();
  type metadata accessor for StoryMusicCuration(0);
  v1[376] = OUTLINED_FUNCTION_77();
  v6 = sub_1C754DFFC();
  v1[377] = v6;
  OUTLINED_FUNCTION_18(v6);
  v1[378] = v7;
  v1[379] = OUTLINED_FUNCTION_77();
  v8 = sub_1C754F2FC();
  v1[380] = v8;
  OUTLINED_FUNCTION_18(v8);
  v1[381] = v9;
  v1[382] = swift_task_alloc();
  v1[383] = swift_task_alloc();
  v1[384] = swift_task_alloc();
  v1[385] = swift_task_alloc();
  v10 = sub_1C754F38C();
  v1[386] = v10;
  OUTLINED_FUNCTION_18(v10);
  v1[387] = v11;
  v1[388] = OUTLINED_FUNCTION_77();
  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v12, v13, v14);
}

uint64_t sub_1C7144E04()
{
  OUTLINED_FUNCTION_63_0();
  v1 = *(v0 + 2968);
  v2 = OUTLINED_FUNCTION_154();
  __swift_project_boxed_opaque_existential_1(v2, v3);
  sub_1C754F1CC();
  sub_1C754F2CC();
  v42 = *(v0 + 3080);
  v4 = *(v0 + 3048);
  v44 = *(v0 + 3040);
  v46 = *(v0 + 3032);
  v47 = *(v0 + 3024);
  v48 = *(v0 + 3016);
  v5 = *(v0 + 2984);
  v43 = v5;
  v49 = *(v0 + 2960);
  v51 = *(v0 + 3064);
  OUTLINED_FUNCTION_10_3(*(v0 + 2968));
  sub_1C754F15C();
  sub_1C754F2BC();
  sub_1C754F2BC();
  *(v0 + 2736) = 5;
  *(v0 + 2744) = 0x3F9EB851EB851EB8;
  *(v0 + 2752) = xmmword_1C755EB70;
  *(v0 + 2768) = xmmword_1C755EB70;
  *(v0 + 2784) = 0x3F847AE147AE147BLL;
  v6 = type metadata accessor for FreeformStoryGeneration.Chronological.Curated.Generator(0);
  v7 = *(v5 + *(v6 + 28));
  *(v0 + 3112) = v7;
  v8 = v7 + OBJC_IVAR____TtC18PhotosIntelligence22FreeformStoryGenerator_storyPhotoLibraryContext;
  v9 = *v8;
  v10 = *(v8 + 8);
  v11 = *(v8 + 16);
  *(v0 + 2912) = *v8;
  *(v0 + 2920) = v10;
  *(v0 + 2928) = v11;
  type metadata accessor for FreeformStoryKeyAssetElector(0);
  swift_allocObject();
  v12 = v9;

  *(v0 + 3120) = FreeformStoryKeyAssetElector.init(configuration:storyPhotoLibraryContext:)((v0 + 2736), (v0 + 2912));
  v13 = *(v6 + 24);
  *(v0 + 2908) = v13;
  v41 = *(v4 + 32);
  v41(v51, v42, v44);
  v14 = *(v49 + 368);
  v15 = objc_allocWithZone(MEMORY[0x1E6978840]);
  sub_1C75504FC();
  v45 = [v15 init];
  v16 = OUTLINED_FUNCTION_70_9();
  v17 = OUTLINED_FUNCTION_70_9();
  sub_1C754DFEC();
  v18 = sub_1C754DF8C();
  v20 = v19;
  (*(v47 + 8))(v46, v48);
  *(v0 + 2400) = v18;
  *(v0 + 2408) = v20;
  *(v0 + 2416) = 0;
  *(v0 + 2424) = 0xE000000000000000;
  *(v0 + 2432) = 3;
  *(v0 + 2440) = v14;
  *(v0 + 2448) = 0;
  *(v0 + 2456) = 0xE000000000000000;
  *(v0 + 2464) = v45;
  *(v0 + 2472) = v16;
  *(v0 + 2480) = v17;
  *(v0 + 2488) = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214DB0, &qword_1C755BF38);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1C755BAB0;
  memcpy((v21 + 32), (v0 + 2400), 0x68uLL);
  memcpy((v0 + 16), (v49 + 24), 0x130uLL);
  memcpy((v0 + 320), (v49 + 24), 0x130uLL);
  sub_1C6FC061C(v0 + 2400, v0 + 2504);
  sub_1C6FDE884(v0 + 16, v0 + 624);
  sub_1C7246CB8(v21, (v0 + 320), v43 + v13, (v0 + 2792), v51, (v0 + 2872));
  memcpy((v0 + 1232), (v0 + 320), 0x130uLL);
  sub_1C6FE0DC0(v0 + 1232);
  swift_setDeallocating();
  sub_1C6FDC93C();
  v31 = *(v0 + 2872);
  *(v0 + 3128) = v31;
  *(v0 + 3136) = *(v0 + 2880);
  *(v0 + 3152) = *(v0 + 2896);
  *(v0 + 2905) = *(v0 + 2904);
  if (!v31)
  {
    sub_1C6FE0D14();
    swift_allocError();
    OUTLINED_FUNCTION_62_1(v40, 2);
    swift_willThrow();
    sub_1C70552E0(v0 + 2400);
    v22 = *(v0 + 3104);
    v23 = *(v0 + 3096);
    v24 = *(v0 + 3072);
    v25 = *(v0 + 3048);
    v26 = *(v0 + 3040);
    v50 = *(v0 + 2976);
    v52 = *(v0 + 3088);
    v27 = *(v0 + 2968);

    __swift_destroy_boxed_opaque_existential_1((v0 + 2792));
    v28 = *(v25 + 8);
    v28(v24, v26);
    OUTLINED_FUNCTION_70(v27, *(v1 + 24));
    sub_1C754F1AC();
    (*(v23 + 8))(v22, v52);
    v28(v50, v26);
    OUTLINED_FUNCTION_9_36(*(v0 + 3104));

    OUTLINED_FUNCTION_43();
    OUTLINED_FUNCTION_128_0();

    __asm { BRAA            X1, X16 }
  }

  v32 = *(v0 + 3072);
  v33 = *(v0 + 3056);
  v34 = *(v0 + 3040);
  v35 = *(v0 + 3032);
  sub_1C70552E0(v0 + 2400);
  sub_1C754DFEC();
  *(v0 + 2856) = &type metadata for Random.Arc4Random;
  *(v0 + 2864) = sub_1C7054F1C();
  Random.Arc4Random.init(seed:)(v35, v0 + 2832);
  v41(v33, v32, v34);
  swift_task_alloc();
  OUTLINED_FUNCTION_48();
  *(v0 + 3160) = v36;
  *v36 = v37;
  v36[1] = sub_1C71454B0;
  OUTLINED_FUNCTION_128_0();

  return sub_1C7145F50();
}

uint64_t sub_1C71454B0()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_14();
  *v5 = v4;
  *(v6 + 3168) = v0;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C71455A8()
{
  OUTLINED_FUNCTION_123();
  v1 = v0[370];
  memcpy(v0 + 284, v0 + 268, 0x80uLL);
  OUTLINED_FUNCTION_10_3((v1 + 328));
  OUTLINED_FUNCTION_31_2();
  v6 = (v2 + *v2);
  swift_task_alloc();
  OUTLINED_FUNCTION_48();
  v0[397] = v3;
  *v3 = v4;
  v3[1] = sub_1C71456CC;
  OUTLINED_FUNCTION_16_6();

  return v6();
}

uint64_t sub_1C71456CC()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_14();
  *v5 = v4;
  *(v6 + 3184) = v0;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C71457C4()
{
  v1 = *(v0 + 2960);
  *(v0 + 2672) = *(v0 + 2608);
  *(v0 + 2688) = *(v0 + 2624);
  *(v0 + 2704) = *(v0 + 2640);
  *(v0 + 2720) = *(v0 + 2656);
  v2 = *(v1 + 384);
  *(v0 + 2936) = *(v1 + 376);
  *(v0 + 2944) = v2;
  type metadata accessor for StoryGenerationSession(0);

  swift_task_alloc();
  OUTLINED_FUNCTION_48();
  *(v0 + 3192) = v3;
  *v3 = v4;
  v3[1] = sub_1C71458C8;

  return sub_1C73E72EC();
}

uint64_t sub_1C71458C8()
{
  OUTLINED_FUNCTION_42();
  v1 = *v0;
  OUTLINED_FUNCTION_14();
  *v2 = v1;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1C71459EC()
{
  v1 = *(v0 + 3184);
  v2 = *(v0 + 3128);
  v3 = *(v0 + 3008);
  v4 = *(v0 + 3000);
  v5 = *(v0 + 2960);
  v7 = *v5;
  v6 = v5[1];
  v8 = *(v5 + 16);
  memcpy((v0 + 1536), v5 + 3, 0x130uLL);
  OUTLINED_FUNCTION_15_32();
  sub_1C714E5B8(v3, v4 + v9);
  *v4 = v7;
  *(v4 + 8) = v6;
  *(v4 + 16) = v8;
  memcpy((v4 + 24), (v0 + 1536), 0x130uLL);
  memcpy((v4 + 328), (v0 + 2272), 0x80uLL);
  v10 = *(v0 + 2688);
  v11 = *(v0 + 2720);
  v12 = *(v0 + 2672);
  *(v4 + 488) = *(v0 + 2704);
  *(v4 + 504) = v11;
  *(v4 + 456) = v12;
  *(v4 + 472) = v10;
  *(v4 + 520) = v2;
  sub_1C75504FC();
  sub_1C6FDE884(v0 + 1536, v0 + 1840);
  v13 = v2;
  sub_1C754F2EC();
  v14 = *(v0 + 3104);
  v28 = *(v0 + 3096);
  v29 = *(v0 + 3088);
  if (v1)
  {
    v15 = *(v0 + 3008);
    v27 = *(v0 + 3104);
    v16 = *(v0 + 3000);

    OUTLINED_FUNCTION_59_9();
    sub_1C714D870(v16, type metadata accessor for FreeformStoryGeneration.Chronological.Curated.Story);
    OUTLINED_FUNCTION_14_30();
    sub_1C714D870(v15, v17);
    __swift_destroy_boxed_opaque_existential_1((v0 + 2792));
    __swift_destroy_boxed_opaque_existential_1((v0 + 2832));
    v18 = OUTLINED_FUNCTION_457();
    OUTLINED_FUNCTION_70(v18, v19);
    OUTLINED_FUNCTION_457();
    sub_1C754F1AC();
    (*(v28 + 8))(v27, v29);
    OUTLINED_FUNCTION_9_36(*(v0 + 3104));
  }

  else
  {
    v21 = *(v0 + 3008);
    v26 = *(v0 + 3000);
    v22 = *(v0 + 2968);
    v23 = *(v0 + 2952);

    OUTLINED_FUNCTION_59_9();
    OUTLINED_FUNCTION_14_30();
    sub_1C714D870(v21, v24);
    __swift_destroy_boxed_opaque_existential_1((v0 + 2792));
    sub_1C714D8C8(v26, v23);
    __swift_destroy_boxed_opaque_existential_1((v0 + 2832));
    OUTLINED_FUNCTION_70(v22, v22[3]);
    OUTLINED_FUNCTION_15_1();
    sub_1C754F1AC();
    (*(v28 + 8))(v14, v29);
  }

  OUTLINED_FUNCTION_43();

  return v20();
}

uint64_t sub_1C7145D08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_31();
  v20 = OUTLINED_FUNCTION_40_15();
  v21 = v16[387];
  v22 = v16[381];
  OUTLINED_FUNCTION_48_11(v20);
  v23 = OUTLINED_FUNCTION_154();
  sub_1C6FE0E14(v23, v24, v14, v15, v18);
  __swift_destroy_boxed_opaque_existential_1(v16 + 349);
  __swift_destroy_boxed_opaque_existential_1(v16 + 354);
  OUTLINED_FUNCTION_10_3(v19);
  OUTLINED_FUNCTION_16_6();
  sub_1C754F1AC();
  (*(v21 + 8))(v17, a9);
  (*(v22 + 8))(a10, a11);
  OUTLINED_FUNCTION_9_36(v16[388]);

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_17_1();

  return v26(v25, v26, v27, v28, v29, v30, v31, v32, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1C7145E28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_31();
  v20 = OUTLINED_FUNCTION_40_15();
  v21 = v16[387];
  v22 = v16[381];
  OUTLINED_FUNCTION_48_11(v20);
  v23 = OUTLINED_FUNCTION_154();
  sub_1C6FE0E14(v23, v24, v14, v15, v18);
  sub_1C6FBC664((v16 + 284));
  __swift_destroy_boxed_opaque_existential_1(v16 + 349);
  __swift_destroy_boxed_opaque_existential_1(v16 + 354);
  OUTLINED_FUNCTION_10_3(v19);
  OUTLINED_FUNCTION_16_6();
  sub_1C754F1AC();
  (*(v21 + 8))(v17, a9);
  (*(v22 + 8))(a10, a11);
  OUTLINED_FUNCTION_9_36(v16[388]);

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_17_1();

  return v26(v25, v26, v27, v28, v29, v30, v31, v32, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1C7145F50()
{
  OUTLINED_FUNCTION_42();
  v1[358] = v0;
  v1[357] = v2;
  v1[356] = v3;
  v1[355] = v4;
  v1[354] = v5;
  v1[353] = v6;
  v1[352] = v7;
  v1[351] = v8;
  v9 = sub_1C754DFFC();
  v1[359] = v9;
  OUTLINED_FUNCTION_18(v9);
  v1[360] = v10;
  v1[361] = OUTLINED_FUNCTION_77();
  v1[362] = type metadata accessor for StoryGenerationSession(0);
  v1[363] = OUTLINED_FUNCTION_77();
  v11 = sub_1C754F2FC();
  v1[364] = v11;
  OUTLINED_FUNCTION_18(v11);
  v1[365] = v12;
  v1[366] = swift_task_alloc();
  v1[367] = swift_task_alloc();
  v1[368] = swift_task_alloc();
  v1[369] = swift_task_alloc();
  v1[370] = swift_task_alloc();
  v1[371] = swift_task_alloc();
  v13 = sub_1C754F38C();
  v1[372] = v13;
  OUTLINED_FUNCTION_18(v13);
  v1[373] = v14;
  v1[374] = OUTLINED_FUNCTION_77();
  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v15, v16, v17);
}

uint64_t sub_1C7146118()
{
  OUTLINED_FUNCTION_115_0();
  v216 = v0;
  v1 = *(v0 + 2848);
  v2 = OUTLINED_FUNCTION_457();
  __swift_project_boxed_opaque_existential_1(v2, v3);
  sub_1C754F1CC();
  sub_1C754F2CC();
  v4 = *(v0 + 2864);
  __src = *(v0 + 2824);
  v5 = v1;
  v6 = *(v0 + 2816);
  v202 = v5;
  OUTLINED_FUNCTION_70(*(v0 + 2848), *(v5 + 24));
  sub_1C754F15C();
  sub_1C754F2BC();
  sub_1C754F2BC();
  v7 = *(v6 + 368);
  *(v0 + 3000) = v7;
  sub_1C71491D8(v7, __dst);
  v8 = __dst[0];
  *(v0 + 3008) = __dst[0];
  v9 = type metadata accessor for FreeformStoryGeneration.Chronological.Curated.Generator(0);
  v10 = *(v9 + 32);
  *(v0 + 3360) = v10;
  v157 = v4 + v10;
  v161 = v9;
  v166 = *(v4 + v10);
  *(v0 + 3016) = v166;
  memcpy((v0 + 16), (v6 + 24), 0x130uLL);
  v11 = sub_1C70CAC04(__src);
  *(v0 + 3024) = v12;
  *(v0 + 3032) = v11;
  if (v12)
  {
    v19 = v11;
  }

  else
  {
    v19 = 0;
  }

  v20 = 0xE000000000000000;
  if (v12)
  {
    v20 = v12;
  }

  OUTLINED_FUNCTION_60_8(v11, v12, v13, v14, v15, v16, v17, v18, v97, v101, v105, v109, v113, v117, v121, v126, v130, v134, v137, v140, v144, v148, v152, v157, v161, v166, v170, v173, v176, v180, v184, v189, v194, v20, v202, v206, __src);
  v215[0] = v8;
  v21 = sub_1C71494AC(__dst, v215);
  *(v0 + 3040) = v21;
  OUTLINED_FUNCTION_60_8(v21, v22, v23, v24, v25, v26, v27, v28, v98, v102, v106, v110, v114, v118, v122, v127, v131, v135, v138, v141, v145, v149, v153, v158, v162, v167, v171, v174, v177, v181, v185, v190, v195, v198, v203, v207, __srcb);
  v29 = sub_1C7149654(__dst);
  OUTLINED_FUNCTION_60_8(v29, v30, v31, v32, v33, v34, v35, v36, v99, v103, v107, v111, v115, v119, v123, v128, v132, v136, v139, v142, v146, v150, v154, v159, v163, v168, v172, v175, v178, v182, v186, v191, v196, v199, v204, v208, __srcc);
  v192 = sub_1C7149A3C(__dst);
  __srca = (v0 + 16);
  memcpy(__dst, (v0 + 16), sizeof(__dst));
  sub_1C7149B44(__dst);
  v187 = v37;
  v38 = sub_1C754FEEC();
  v39 = sub_1C75511BC();
  v209 = v8;
  v197 = v19;
  v155 = v29;
  if (OUTLINED_FUNCTION_128(v39))
  {
    v40 = 0x746E6176656C6552;
    v41 = OUTLINED_FUNCTION_20_1();
    __dst[0] = swift_slowAlloc();
    *v41 = 136315650;
    if (v29)
    {
      if (v29 == 1)
      {
        v42 = 0x6169746E65737345;
      }

      else
      {
        v42 = 0x6465726975716552;
      }

      if (v29 == 1)
      {
        v43 = 0xE90000000000006CLL;
      }

      else
      {
        v43 = 0xE800000000000000;
      }
    }

    else
    {
      v43 = 0xE800000000000000;
      v42 = 0x746E6176656C6552;
    }

    v44 = sub_1C6F765A4(v42, v43, __dst);

    *(v41 + 4) = v44;
    *(v41 + 12) = 2080;
    if (v192)
    {
      if (v192 == 1)
      {
        v45 = 0x6169746E65737345;
      }

      else
      {
        v45 = 0x6465726975716552;
      }

      if (v192 == 1)
      {
        v46 = 0xE90000000000006CLL;
      }

      else
      {
        v46 = 0xE800000000000000;
      }
    }

    else
    {
      v46 = 0xE800000000000000;
      v45 = 0x746E6176656C6552;
    }

    v47 = sub_1C6F765A4(v45, v46, __dst);

    *(v41 + 14) = v47;
    *(v41 + 22) = 2080;
    if (v187)
    {
      if (v187 == 1)
      {
        v40 = 0x6169746E65737345;
      }

      else
      {
        v40 = 0x6465726975716552;
      }

      if (v187 == 1)
      {
        v48 = 0xE90000000000006CLL;
      }

      else
      {
        v48 = 0xE800000000000000;
      }
    }

    else
    {
      v48 = 0xE800000000000000;
    }

    v49 = sub_1C6F765A4(v40, v48, __dst);

    *(v41 + 24) = v49;
    _os_log_impl(&dword_1C6F5C000, v38, v39, "[curatedFakeChapter] Shotlist-matching modes are:\n\tretrievedAssets: %s\n\textendedRetrievedAssets: %s\n\tglobalTraitsExpandedAssets: %s", v41, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_109();
    OUTLINED_FUNCTION_109();
  }

  else
  {
  }

  v50 = *(v0 + 2968);
  v51 = *(v0 + 2952);
  v52 = *(v0 + 2920);
  v53 = *(v0 + 2912);
  v179 = *(v0 + 2848);
  v183 = v21;
  v54 = *(v0 + 2840);
  memcpy(__dst, __srca, sizeof(__dst));
  v215[0] = v8;
  sub_1C7149C7C(__dst, v215, v21, v54);
  *(v0 + 3048) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217A40, &unk_1C755C9D0);
  v55 = swift_allocObject();
  *(v55 + 16) = xmmword_1C755BAB0;
  *(v55 + 32) = v197;
  *(v55 + 40) = v200;
  sub_1C75504FC();
  sub_1C70739AC();
  v57 = v56;
  *(v0 + 3056) = v56;
  v58 = *(v52 + 32);
  *(v0 + 3064) = v58;
  *(v0 + 3072) = (v52 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v58(v51, v50, v53);
  v59 = sub_1C7149FE0(v57, v179, v51);
  *(v0 + 3080) = v59;
  v60 = v59;
  v147 = v58;
  v143 = (v0 + 2576);
  v61 = *(*(v0 + 2832) + *(*(v0 + 2896) + 24));
  *(v0 + 3088) = v61;
  if (v61)
  {
    __dst[0] = 0;
    __dst[1] = 0xE000000000000000;
    sub_1C755180C();

    __dst[0] = 0xD000000000000025;
    __dst[1] = 0x80000001C75A0D00;
    *(v0 + 2800) = v60[2];
    v62 = sub_1C7551D8C();
    MEMORY[0x1CCA5CD70](v62);

    MEMORY[0x1CCA5CD70](0x73746573736120, 0xE700000000000000);
    sub_1C7161CDC(__dst[0], __dst[1]);
  }

  v151 = v60;
  v63 = v155 != 0;
  if (!v192)
  {
    v63 = 0;
  }

  if (v187)
  {
    v64 = v63;
  }

  else
  {
    v64 = 0;
  }

  v65 = sub_1C754FEEC();
  v66 = sub_1C75511BC();
  v133 = v64;
  if (OUTLINED_FUNCTION_128(v66))
  {
    v67 = swift_slowAlloc();
    __dst[0] = OUTLINED_FUNCTION_20_1();
    *v67 = 136315138;
    if (v64)
    {
      v68 = 0;
    }

    else
    {
      v68 = 544501614;
    }

    if (v64)
    {
      v69 = 0xE000000000000000;
    }

    else
    {
      v69 = 0xE400000000000000;
    }

    v70 = sub_1C6F765A4(v68, v69, __dst);

    *(v67 + 4) = v70;
    _os_log_impl(&dword_1C6F5C000, v65, v66, "[curatedFakeChapter] Shotlist will %sdrive the curation span", v67, 0xCu);
    OUTLINED_FUNCTION_12_6();
    OUTLINED_FUNCTION_109();
  }

  v124 = v192 != 0;
  v125 = v187 != 0;
  v120 = v155 != 0;
  v156 = *(v0 + 2944);
  v188 = *(v0 + 2912);
  v193 = *(v0 + 2960);
  v71 = *(v0 + 2904);
  v100 = *(v0 + 2864);
  v72 = *(v0 + 2848);
  v108 = *(v0 + 2840);
  v73 = *(v0 + 2832);
  v116 = v73;
  v129 = *(v0 + 2816);
  v112 = *(*(v0 + 296) + 16) != 0;
  memcpy((v0 + 320), __srca, 0x130uLL);
  sub_1C714E5B8(v73, v71);
  v74 = *v160;
  v75 = *(v160 + 8);
  v76 = *(v160 + 16);
  *(v0 + 2712) = *v160;
  *(v0 + 2720) = v75;
  *(v0 + 2728) = v76;
  *(v0 + 2776) = &unk_1F46A8048;
  type metadata accessor for Hastings.FeatureProvider(0);
  swift_allocObject();
  sub_1C6FDE884(__srca, v0 + 624);
  v77 = v74;

  v78 = Hastings.FeatureProvider.init(storyElements:storySession:storyPhotoLibraryContext:configuration:)((v0 + 320), v71, (v0 + 2712), (v0 + 2776));
  *(v0 + 3096) = v78;
  v104 = v72;
  __swift_project_boxed_opaque_existential_1(v72, *(v205 + 24));
  v79 = swift_task_alloc();
  *(v79 + 16) = v78;
  *(v79 + 24) = v57;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217EC8, &qword_1C756FC90);
  sub_1C754F1DC();

  v80 = *(v0 + 2768);
  *(v0 + 3104) = v80;
  v81 = OUTLINED_FUNCTION_90();
  __swift_project_boxed_opaque_existential_1(v81, v82);
  v83 = swift_task_alloc();
  v83[2] = v100;
  v83[3] = v57;
  v83[4] = __srca;
  sub_1C754F1DC();

  v84 = *(v0 + 2736);
  *(v0 + 3112) = v84;
  v85 = *(v0 + 2744);
  *(v0 + 3120) = v85;
  v86 = *(v0 + 2752);
  *(v0 + 3128) = v86;
  v165 = *(v100 + *(v164 + 20));
  v87 = swift_allocObject();
  *(v87 + 16) = xmmword_1C755BAB0;
  *(v87 + 32) = v197;
  *(v87 + 40) = v200;
  sub_1C75504FC();
  sub_1C75504FC();
  sub_1C707DA44();
  v201 = v88;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217ED0, &qword_1C756FC98);
  v89 = swift_allocObject();
  *(v89 + 16) = xmmword_1C755BAB0;
  *(v89 + 32) = v84;
  *(v89 + 40) = v85;
  *(v89 + 48) = v86;
  __swift_mutable_project_boxed_opaque_existential_0(v108, *(v108 + 24));
  sub_1C75504FC();
  sub_1C75504FC();
  sub_1C75504FC();
  sub_1C75504FC();
  sub_1C75504FC();
  v90 = sub_1C755057C();
  *(v0 + 2576) = v165;
  *(v0 + 2584) = v201;
  *(v0 + 2592) = v183;
  *(v0 + 2600) = v80;
  *(v0 + 2608) = v209;
  *(v0 + 2616) = v89;
  *(v0 + 2624) = v133;
  *(v0 + 2625) = v120;
  *(v0 + 2626) = v124;
  *(v0 + 2627) = v125;
  *(v0 + 2628) = v112;
  *(v0 + 2629) = v90;
  __swift_project_boxed_opaque_existential_1(v104, *(v205 + 24));
  v91 = swift_task_alloc();
  v91[2] = v116;
  v91[3] = v129;
  v91[4] = v143;
  *(v0 + 3136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217ED8, &qword_1C756FCA0);
  sub_1C754F1DC();

  type metadata accessor for Hastings.DiagnosticReporter();
  v92 = swift_allocObject();
  *(v0 + 3144) = v92;
  _s10SummarizerC18DiagnosticReporterCMa();
  swift_allocObject();
  *(v92 + 16) = sub_1C7034BC4();
  v93 = *(v0 + 2592);
  *(v0 + 2520) = *v143;
  *(v0 + 2536) = v93;
  *(v0 + 2552) = *(v0 + 2608);
  *(v0 + 2566) = *(v0 + 2622);
  v147(v156, v193, v188);

  v94 = swift_task_alloc();
  *(v0 + 3152) = v94;
  *v94 = v0;
  v94[1] = sub_1C7146E9C;
  v95 = *(v0 + 2944);

  return static Hastings.curatedAssetUUIDs(from:options:photoLibrary:eventRecorder:progressReporter:diagnosticReporter:)(v151, v0 + 2520, v169, v0 + 2632, v95, v92);
}

uint64_t sub_1C7146E9C()
{
  OUTLINED_FUNCTION_94_0();
  OUTLINED_FUNCTION_115_0();
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_6_4();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 3160) = v5;
  *(v3 + 3168) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_44();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1C714702C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_31();
  sub_1C75504FC();
  sub_1C75504FC();
  v15 = sub_1C754FEEC();
  v16 = sub_1C75511BC();
  if (OUTLINED_FUNCTION_128(v16))
  {
    v17 = OUTLINED_FUNCTION_23_1();
    OUTLINED_FUNCTION_68_1(v17, 3.8521e-34);
    OUTLINED_FUNCTION_58_10();
    OUTLINED_FUNCTION_43_15();
    _os_log_impl(v18, v19, v20, v21, v22, 0x16u);
    OUTLINED_FUNCTION_10_1();
  }

  else
  {
  }

  if (*(v14 + 3088))
  {
    v23 = *(v14 + 3160);
    sub_1C755180C();
    MEMORY[0x1CCA5CD70](0xD000000000000028, 0x80000001C75A0CD0);
    *(v14 + 2792) = *(v23 + 16);
    v24 = sub_1C7551D8C();
    MEMORY[0x1CCA5CD70](v24);

    v25 = OUTLINED_FUNCTION_30_18();
    MEMORY[0x1CCA5CD70](v25);
    sub_1C7161CDC(0, 0xE000000000000000);
  }

  v26 = *(v14 + 3144);
  v27 = *(v14 + 2832);
  v28 = *(v14 + 2816);
  __swift_project_boxed_opaque_existential_1(*(v14 + 2848), *(*(v14 + 2848) + 24));
  v29 = swift_task_alloc();
  v29[2] = v27;
  v29[3] = v28;
  v29[4] = v26;
  sub_1C754F1DC();

  v30 = swift_task_alloc();
  *(v14 + 3176) = v30;
  *v30 = v14;
  v30[1] = sub_1C7147284;
  OUTLINED_FUNCTION_17_1();

  return static StoryGenerationUtilities.memoriesDedupedAssetUUIDs(from:in:eligibleAssetUUIDs:requiredAssetUUIDs:)(v31, v32, v33, v34);
}

uint64_t sub_1C7147284()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 3184) = v4;
  *(v2 + 3192) = v0;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1C7147388()
{
  sub_1C75504FC();
  sub_1C75504FC();
  v1 = sub_1C754FEEC();
  v2 = sub_1C75511BC();
  if (OUTLINED_FUNCTION_128(v2))
  {
    v3 = OUTLINED_FUNCTION_23_1();
    OUTLINED_FUNCTION_68_1(v3, 3.8521e-34);
    OUTLINED_FUNCTION_58_10();
    OUTLINED_FUNCTION_43_15();
    _os_log_impl(v4, v5, v6, v7, v8, 0x16u);
    OUTLINED_FUNCTION_10_1();
  }

  else
  {
  }

  v9 = *(v0 + 2816);
  v10 = [*(v0 + 24) string];
  v11 = sub_1C755068C();
  v13 = v12;

  *(v0 + 3200) = v11;
  *(v0 + 3208) = v13;
  sub_1C7055874(v9 + 328, v0 + 2672);
  OUTLINED_FUNCTION_10_3((v0 + 2672));
  OUTLINED_FUNCTION_31_2();
  v18 = (v14 + *v14);
  v15 = swift_task_alloc();
  *(v0 + 3216) = v15;
  *v15 = v0;
  v15[1] = sub_1C7147574;
  v16 = OUTLINED_FUNCTION_57_0();

  return v18(v16);
}

uint64_t sub_1C7147574()
{
  OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_6_4();
  *v4 = v3;
  *v4 = *v1;
  v3[403] = v5;
  v3[404] = v6;
  v3[405] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_36_13();

    sub_1C714E318((v3 + 322));
  }

  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_17_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C7147714()
{
  OUTLINED_FUNCTION_123();
  v0[406] = v0[39];
  OUTLINED_FUNCTION_10_3(v0 + 334);
  OUTLINED_FUNCTION_31_2();
  v5 = (v1 + *v1);
  v2 = swift_task_alloc();
  v0[407] = v2;
  *v2 = v0;
  v2[1] = sub_1C714782C;
  v3 = OUTLINED_FUNCTION_57_0();

  return v5(v3);
}

uint64_t sub_1C714782C()
{
  OUTLINED_FUNCTION_126_0();
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_6_4();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 3264) = v5;
  *(v3 + 3272) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_36_13();

    sub_1C714E318(v3 + 2576);
  }

  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_129();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

void sub_1C71479D8()
{
  OUTLINED_FUNCTION_63_0();
  v1 = (v0 + 2760);
  v2 = *(v0 + 3184);
  sub_1C754F2BC();
  v3 = 0;
  v4 = *(v2 + 16);
  v5 = v2 + 40;
  v6 = MEMORY[0x1E69E7CC0];
LABEL_2:
  *(v0 + 3280) = v6;
  v7 = (v5 + 16 * v3);
  while (v4 != v3)
  {
    if (v3 >= *(v2 + 16))
    {
      __break(1u);
      return;
    }

    v8 = *(v0 + 3024);
    if (v8)
    {
      v9 = *(v0 + 3024);
    }

    else
    {
      v9 = 0xE000000000000000;
    }

    if (v8)
    {
      v10 = *(v0 + 3032);
    }

    else
    {
      v10 = 0;
    }

    v11 = *(v7 - 1);
    v12 = *v7;
    if (v11 != v10 || v12 != v9)
    {
      OUTLINED_FUNCTION_15_1();
      if ((sub_1C7551DBC() & 1) == 0)
      {
        sub_1C75504FC();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v1 = v6;
        if (isUniquelyReferenced_nonNull_native)
        {
          v15 = v1;
        }

        else
        {
          v16 = OUTLINED_FUNCTION_24_0();
          sub_1C6F7ED9C(v16, v17, v18, v19, v20, v21, v22);
          v15 = v1;
          v6 = *v1;
        }

        v5 = v2 + 40;
        v24 = *(v6 + 16);
        v23 = *(v6 + 24);
        v25 = v6;
        if (v24 >= v23 >> 1)
        {
          v27 = OUTLINED_FUNCTION_15(v23);
          v29 = v28;
          sub_1C6F7ED9C(v27, v24 + 1, 1, v30, v31, v32, v33);
          v15 = v29;
          v25 = *v29;
          v5 = v2 + 40;
        }

        ++v3;
        *(v25 + 16) = v24 + 1;
        v26 = v25 + 16 * v24;
        *(v26 + 32) = v11;
        *(v26 + 40) = v12;
        v6 = v25;
        v1 = v15;
        goto LABEL_2;
      }
    }

    v7 += 2;
    ++v3;
  }

  v64 = *(v0 + 3064);
  v34 = *(v0 + 3032);
  v35 = *(v0 + 3024);
  v36 = *(v0 + 3000);
  v63 = *(v0 + 2936);
  v61 = *(v0 + 2928);
  v62 = *(v0 + 2912);
  v37 = *(v0 + 2888);
  v38 = *(v0 + 2880);
  v39 = v35 == 0;
  if (!v35)
  {
    v35 = 0xE000000000000000;
  }

  v60 = v35;
  if (v39)
  {
    v34 = 0;
  }

  v58 = *(v0 + 2872);
  v59 = v34;
  v40 = objc_allocWithZone(MEMORY[0x1E6978840]);
  sub_1C75504FC();
  v41 = [v40 init];
  v42 = OUTLINED_FUNCTION_67_8();
  v43 = OUTLINED_FUNCTION_67_8();
  sub_1C754DFEC();
  v44 = sub_1C754DF8C();
  v46 = v45;
  (*(v38 + 8))(v37, v58);
  *(v0 + 2208) = v44;
  *(v0 + 2216) = v46;
  *(v0 + 2224) = 0;
  *(v0 + 2232) = 0xE000000000000000;
  *(v0 + 2240) = 3;
  *(v0 + 2248) = v36;
  *(v0 + 2256) = 0;
  *(v0 + 2264) = 0xE000000000000000;
  *(v0 + 2272) = v41;
  *(v0 + 2280) = v42;
  *(v0 + 2288) = v43;
  *(v0 + 2296) = 0u;
  v47 = swift_allocObject();
  *(v0 + 3288) = v47;
  *(v47 + 16) = xmmword_1C755BAB0;
  *(v47 + 32) = v59;
  *(v47 + 40) = v60;
  memcpy((v0 + 2312), (v0 + 2208), 0x68uLL);
  v64(v61, v63, v62);
  sub_1C75504FC();
  v48 = swift_task_alloc();
  *(v0 + 3296) = v48;
  *v48 = v0;
  v48[1] = sub_1C7147D60;
  OUTLINED_FUNCTION_128_0();

  sub_1C714A95C(v49, v50, v51, v52, v53, v54, v55, v56);
}

uint64_t sub_1C7147D60(uint64_t a1)
{
  OUTLINED_FUNCTION_47();
  v5 = v4;
  OUTLINED_FUNCTION_6_4();
  *v6 = v5;
  v7 = *v2;
  OUTLINED_FUNCTION_14();
  *v8 = v7;
  *(v5 + 3304) = v1;

  if (v1)
  {

    sub_1C714E318(v5 + 2576);
  }

  else
  {
    *(v5 + 3312) = a1;
  }

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1C7147F60()
{
  OUTLINED_FUNCTION_63_0();
  v44 = *(v0 + 3288);
  sub_1C6FD2568(*(v0 + 3312));

  sub_1C75504FC();
  v1 = sub_1C754FEEC();
  v2 = sub_1C75511BC();
  v3 = OUTLINED_FUNCTION_128(v2);
  v4 = *(v0 + 3280);
  if (v3)
  {
    v5 = OUTLINED_FUNCTION_23_1();
    *v5 = 134218240;
    *(v5 + 4) = *(v4 + 16) + 1;

    *(v5 + 12) = 2048;
    *(v5 + 14) = *(v44 + 16);

    OUTLINED_FUNCTION_43_15();
    _os_log_impl(v6, v7, v8, v9, v10, 0x16u);
    OUTLINED_FUNCTION_10_1();
  }

  else
  {
  }

  if (*(v0 + 3088))
  {
    sub_1C755180C();
    MEMORY[0x1CCA5CD70](0xD000000000000022, 0x80000001C75A0CA0);
    *(v0 + 2784) = *(v44 + 16);
    v11 = sub_1C7551D8C();
    MEMORY[0x1CCA5CD70](v11);

    v12 = OUTLINED_FUNCTION_30_18();
    MEMORY[0x1CCA5CD70](v12);
    sub_1C7161CDC(0, 0xE000000000000000);
  }

  v13 = *(v0 + 2864) + *(v0 + 3360);
  v14 = *(v13 + 8);
  v15 = *v13;

  v16 = [v15 librarySpecificFetchOptions];
  *(v0 + 3320) = v16;
  [v16 setSharingFilter_];

  if (qword_1EDD08290 != -1)
  {
    swift_once();
  }

  v17 = sub_1C7550B3C();
  [v16 setFetchPropertySets_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2151A0, &unk_1C755BE10);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1C75604F0;
  v19 = sub_1C6F65BE8(0, &qword_1EDD108F0, 0x1E696AEB0);
  swift_getKeyPath();
  v20 = sub_1C75511EC();
  *(v18 + 56) = v19;
  *(v18 + 32) = v20;
  swift_getKeyPath();
  v21 = sub_1C75511EC();
  *(v18 + 88) = v19;
  *(v18 + 64) = v21;
  v22 = OUTLINED_FUNCTION_154();
  sub_1C70E7F40(v22, v23);
  v24 = objc_opt_self();
  v25 = v16;
  v26 = OUTLINED_FUNCTION_57_0();
  v28 = sub_1C6FCA158(v26, v27, v24);
  *(v0 + 3328) = v28;

  if (v28)
  {
    v42 = *(v0 + 2856);
    v43 = *(v0 + 2864);

    sub_1C714E318(v0 + 2576);

    memcpy((v0 + 1056), (v0 + 2208), 0x68uLL);
    *(v0 + 1160) = v28;
    *(v0 + 1168) = 0;
    *(v0 + 1176) = MEMORY[0x1E69E7CC8];
    __swift_project_boxed_opaque_existential_1((v0 + 2632), *(v0 + 2656));
    v37 = swift_task_alloc();
    *(v0 + 3336) = v37;
    v37[2] = v42;
    v37[3] = v0 + 1056;
    v37[4] = v0 + 16;
    v37[5] = v43;
    sub_1C6FC061C(v0 + 2208, v0 + 2416);
    v38 = v28;
    v39 = swift_task_alloc();
    *(v0 + 3344) = v39;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215140, &qword_1C755C6C8);
    *v39 = v0;
    v39[1] = sub_1C71484A8;
    OUTLINED_FUNCTION_128_0();
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x1EEE2A6A0](v29, v30, v31, v32, v33, v34, v35, v36);
}

uint64_t sub_1C71484A8()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_6_4();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_14();
  *v6 = v5;
  *(v3 + 3352) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

void sub_1C71485B4()
{
  OUTLINED_FUNCTION_63_0();
  memcpy(v0 + 260, v0 + 228, 0x80uLL);
  memcpy(v0 + 244, v0 + 228, 0x80uLL);
  if (sub_1C6F9ED5C((v0 + 244)) == 1)
  {
    v1 = v0[416];
    v2 = v0[374];
    v3 = v0[373];
    v27 = v0[415];
    v28 = v0[372];
    v4 = v0[365];
    v29 = v0[357];
    v30 = v0[364];
    v5 = v0[356];

    sub_1C6FE0D14();
    swift_allocError();
    OUTLINED_FUNCTION_62_1(v6, 4);
    swift_willThrow();

    sub_1C6FBC664((v0 + 132));

    sub_1C70552E0((v0 + 276));
    __swift_destroy_boxed_opaque_existential_1(v0 + 334);
    __swift_destroy_boxed_opaque_existential_1(v0 + 329);
    OUTLINED_FUNCTION_10_3(v5);
    OUTLINED_FUNCTION_16_6();
    sub_1C754F1AC();
    (*(v3 + 8))(v2, v28);
    (*(v4 + 8))(v29, v30);
  }

  else
  {
    v7 = v0[386];
    memcpy(v0 + 148, v0 + 244, 0x80uLL);
    if (v7)
    {
      v8 = v0[416];
      v9 = v0[376];
      v10 = v0[358];
      v11 = v0[352];
      memcpy(v0 + 196, v0 + 260, 0x80uLL);
      sub_1C6FB7BB8((v0 + 196), (v0 + 180));
      sub_1C755180C();
      v13 = *v11;
      v12 = v11[1];
      sub_1C75504FC();

      MEMORY[0x1CCA5CD70](0xD000000000000012, 0x80000001C75A0C60);
      sub_1C6FB7BB8((v0 + 244), (v0 + 164));
      sub_1C716382C(v14);

      sub_1C755180C();
      sub_1C75504FC();

      MEMORY[0x1CCA5CD70](0xD00000000000001ALL, 0x80000001C75A0C80);
      v15 = swift_task_alloc();
      v15[2] = v8;
      v15[3] = v10;
      v15[4] = v9;
      sub_1C7164850(v13, v12, sub_1C714E45C, v15);
    }

    else
    {
      memcpy(v0 + 116, v0 + 260, 0x80uLL);
      sub_1C6FB7BB8((v0 + 116), (v0 + 212));
    }

    v16 = v0[419];
    sub_1C754F2EC();
    v17 = v0[416];
    v18 = v0[415];
    v19 = v0[374];
    v20 = v0[373];
    v31 = v0[372];
    if (!v16)
    {
      v24 = v0[374];
      v25 = v0[356];
      v26 = v0[351];

      sub_1C70552E0((v0 + 276));
      sub_1C6FBC664((v0 + 132));
      sub_1C6FD7FC8((v0 + 260), &qword_1EC215140, &qword_1C755C6C8);
      memcpy(v26, v0 + 148, 0x80uLL);
      __swift_destroy_boxed_opaque_existential_1(v0 + 334);
      __swift_destroy_boxed_opaque_existential_1(v0 + 329);
      OUTLINED_FUNCTION_70(v25, v25[3]);
      sub_1C754F1AC();
      (*(v20 + 8))(v24, v31);

      OUTLINED_FUNCTION_43();
LABEL_9:
      OUTLINED_FUNCTION_128_0();

      __asm { BRAA            X1, X16 }
    }

    v21 = v0[356];

    sub_1C6FD7FC8((v0 + 260), &qword_1EC215140, &qword_1C755C6C8);
    sub_1C6FD7FC8((v0 + 260), &qword_1EC215140, &qword_1C755C6C8);
    sub_1C6FBC664((v0 + 132));

    sub_1C70552E0((v0 + 276));
    __swift_destroy_boxed_opaque_existential_1(v0 + 334);
    __swift_destroy_boxed_opaque_existential_1(v0 + 329);
    OUTLINED_FUNCTION_70(v21, v21[3]);
    sub_1C754F1AC();
    (*(v20 + 8))(v19, v31);
  }

  OUTLINED_FUNCTION_3_52(v0[374]);

  OUTLINED_FUNCTION_43();
  goto LABEL_9;
}

uint64_t sub_1C7148B2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_94_0();
  OUTLINED_FUNCTION_115_0();
  OUTLINED_FUNCTION_1_56();

  sub_1C714E318(v12 + 2576);
  OUTLINED_FUNCTION_2_53();
  OUTLINED_FUNCTION_42_17();
  sub_1C754F1AC();
  v13 = OUTLINED_FUNCTION_21_24();
  v14(v13);
  v15 = OUTLINED_FUNCTION_23_19();
  v16(v15);
  OUTLINED_FUNCTION_0_74();

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_44();

  return v18(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10, a11, a12);
}

uint64_t sub_1C7148C10()
{
  v6 = v0[374];
  v1 = v0[373];
  v2 = v0[365];
  v9 = v0[364];
  v7 = v0[372];
  v8 = v0[357];
  v3 = v0[356];

  sub_1C714E318((v0 + 322));

  __swift_destroy_boxed_opaque_existential_1(v0 + 329);
  OUTLINED_FUNCTION_10_3(v3);
  OUTLINED_FUNCTION_16_6();
  sub_1C754F1AC();
  (*(v1 + 8))(v6, v7);
  (*(v2 + 8))(v8, v9);
  OUTLINED_FUNCTION_0_74();

  OUTLINED_FUNCTION_43();

  return v4();
}

uint64_t sub_1C7148DEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_94_0();
  OUTLINED_FUNCTION_115_0();
  OUTLINED_FUNCTION_1_56();

  __swift_destroy_boxed_opaque_existential_1((v12 + 2672));
  OUTLINED_FUNCTION_2_53();
  OUTLINED_FUNCTION_42_17();
  sub_1C754F1AC();
  v13 = OUTLINED_FUNCTION_21_24();
  v14(v13);
  v15 = OUTLINED_FUNCTION_23_19();
  v16(v15);
  OUTLINED_FUNCTION_0_74();

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_44();

  return v18(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10, a11, a12);
}

uint64_t sub_1C7148ED0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_94_0();
  OUTLINED_FUNCTION_115_0();
  OUTLINED_FUNCTION_1_56();

  __swift_destroy_boxed_opaque_existential_1((v12 + 2672));
  OUTLINED_FUNCTION_2_53();
  OUTLINED_FUNCTION_42_17();
  sub_1C754F1AC();
  v13 = OUTLINED_FUNCTION_21_24();
  v14(v13);
  v15 = OUTLINED_FUNCTION_23_19();
  v16(v15);
  OUTLINED_FUNCTION_0_74();

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_44();

  return v18(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10, a11, a12);
}

uint64_t sub_1C7148FB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_94_0();
  OUTLINED_FUNCTION_115_0();
  OUTLINED_FUNCTION_1_56();

  sub_1C70552E0(v12 + 2208);
  __swift_destroy_boxed_opaque_existential_1((v12 + 2672));
  OUTLINED_FUNCTION_2_53();
  OUTLINED_FUNCTION_42_17();
  sub_1C754F1AC();
  v13 = OUTLINED_FUNCTION_21_24();
  v14(v13);
  v15 = OUTLINED_FUNCTION_23_19();
  v16(v15);
  OUTLINED_FUNCTION_0_74();

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_44();

  return v18(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10, a11, a12);
}

uint64_t sub_1C71490A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_94_0();
  OUTLINED_FUNCTION_115_0();
  v13 = v12[416];
  v14 = v12[415];
  v15 = v12[365];
  v28 = v12[364];
  v16 = v12[357];

  sub_1C70552E0((v12 + 276));
  sub_1C6FBC664((v12 + 132));
  __swift_destroy_boxed_opaque_existential_1(v12 + 334);
  OUTLINED_FUNCTION_2_53();
  OUTLINED_FUNCTION_42_17();
  sub_1C754F1AC();
  v17 = OUTLINED_FUNCTION_15_1();
  v18(v17);
  (*(v15 + 8))(v16, v28);
  OUTLINED_FUNCTION_0_74();

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_44();

  return v20(v19, v20, v21, v22, v23, v24, v25, v26, v28, a10, a11, a12);
}

void sub_1C71491D8(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = 0;
  v35 = a1 + 32;
  v36 = *(a1 + 16);
  v3 = MEMORY[0x1E69E7CC8];
LABEL_2:
  v4 = MEMORY[0x1E69E7CC0];
  if (v2 == v36)
  {
    *a2 = v3;
  }

  else
  {
    v38 = v3;
    v5 = (v35 + 40 * v2);
    v6 = v5[2];
    v7 = v5[3];
    v8 = v5[4];
    sub_1C75504FC();
    v9 = v6;
    sub_1C75504FC();
    v40 = v8;
    sub_1C75504FC();
    v37 = v9;
    if ([v9 fetchedObjects])
    {
      v10 = OUTLINED_FUNCTION_19_1();
      sub_1C6F65BE8(v10, &qword_1EDD0FA70, 0x1E6978630);
      v11 = sub_1C7550B5C();
    }

    else
    {
      v11 = v4;
    }

    v12 = v4;
    v13 = sub_1C6FB6304();
    v14 = 0;
    v39 = v12;
LABEL_7:
    v15 = v40;
    while (1)
    {
      if (v13 == v14)
      {

        swift_isUniquelyReferenced_nonNull_native();
        sub_1C6FC9078();

        v3 = v38;
        ++v2;
        goto LABEL_2;
      }

      if ((v11 & 0xC000000000000001) != 0)
      {
        v16 = MEMORY[0x1CCA5DDD0](v14, v11);
      }

      else
      {
        if (v14 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_29;
        }

        v16 = *(v11 + 8 * v14 + 32);
      }

      v17 = v16;
      v18 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      v19 = sub_1C70CAC04(v16);
      if (v20)
      {
        v21 = v20;
        if (*(v15 + 16))
        {
          v22 = v19;
          v23 = sub_1C6F78124(v19, v20);
          if (v24)
          {
            v25 = *(*(v40 + 56) + 8 * v23);

            v26 = v39;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v30 = OUTLINED_FUNCTION_24_0();
              sub_1C6FB37AC(v30);
              v26 = v31;
            }

            v28 = *(v26 + 16);
            v27 = *(v26 + 24);
            if (v28 >= v27 >> 1)
            {
              v32 = OUTLINED_FUNCTION_15(v27);
              sub_1C6FB37AC(v32);
              v26 = v33;
            }

            *(v26 + 16) = v28 + 1;
            v39 = v26;
            v29 = (v26 + 24 * v28);
            v29[4] = v22;
            v29[5] = v21;
            v29[6] = v25;
            v14 = v18;
            goto LABEL_7;
          }

          v15 = v40;
        }

        else
        {
        }
      }

      else
      {
      }

      ++v14;
    }

    __break(1u);
LABEL_29:
    __break(1u);
  }
}

uint64_t sub_1C71494AC(void *a1, void *a2)
{
  v3 = a1[21];
  v4 = a1[22];
  v5 = a1[23];
  __dst[0] = *a2;
  Hastings.ShotlistRetrieval.assetUUIDs.getter();
  memcpy(__dst, a1, sizeof(__dst));
  v14 = v3;
  v15 = v4;
  v16 = v5;
  memcpy(v17, a1 + 24, sizeof(v17));
  v6 = sub_1C7149654(__dst);
  v7 = sub_1C75504FC();
  if (v6 >= 2)
  {
    sub_1C7069A44();
  }

  v18 = v7;
  memcpy(__dst, a1, sizeof(__dst));
  v14 = v3;
  v15 = v4;
  v16 = v5;
  memcpy(v17, a1 + 24, sizeof(v17));
  v8 = sub_1C7149A3C(__dst);
  v9 = sub_1C75504FC();
  if (v8 >= 2)
  {
    sub_1C7069A44();
  }

  sub_1C739796C(v9);
  memcpy(__dst, a1, sizeof(__dst));
  v14 = v3;
  v15 = v4;
  v16 = v5;
  memcpy(v17, a1 + 24, sizeof(v17));
  sub_1C7149B44(__dst);
  if (v10 > 1u)
  {
    sub_1C75504FC();
    sub_1C7069A44();
    v5 = v11;
  }

  else
  {

    sub_1C75504FC();
  }

  sub_1C739796C(v5);
  return v18;
}

uint64_t sub_1C7149654(uint64_t a1)
{
  v2 = type metadata accessor for TimeExtendedToken(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v23[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  TokenCategoryType = type metadata accessor for QueryTokenCategoryType(0);
  MEMORY[0x1EEE9AC00](TokenCategoryType);
  v8 = &v23[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = *(a1 + 232);
  v33 = *(a1 + 216);
  v34 = v9;
  v10 = *(a1 + 256);
  v35 = *(a1 + 248);
  v32 = *(a1 + 264);
  v12 = *(a1 + 280);
  v11 = *(a1 + 288);
  swift_storeEnumTagMultiPayload();
  v24 = v8;
  LOBYTE(a1) = sub_1C707351C();
  sub_1C714D870(v8, type metadata accessor for QueryTokenCategoryType);
  if (a1)
  {
    return 1;
  }

  if (*(v12 + 16))
  {
    return 0;
  }

  v25 = v33;
  v26 = v34;
  v27 = v35;
  v28 = v10;
  v29 = v32;
  v30 = v12;
  v31 = v11;
  if (ExtendedTokenCollection.numberOfQueryCharacters.getter() > 0)
  {
    return 0;
  }

  v14 = swift_storeEnumTagMultiPayload();
  MEMORY[0x1EEE9AC00](v14);
  *&v23[-16] = v8;
  v15 = sub_1C707351C();
  result = sub_1C714D870(v8, type metadata accessor for QueryTokenCategoryType);
  if (v15)
  {
    return 0;
  }

  v16 = *(v10 + 16);
  if (!v16)
  {
LABEL_13:
    v20 = (v11 + 58);
    v21 = *(v11 + 16) + 1;
    while (--v21)
    {
      result = 0;
      v22 = *v20;
      v20 += 40;
      if (v22 == 1)
      {
        return result;
      }
    }

    return 1;
  }

  v17 = 0;
  v18 = v10 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
  while (2)
  {
    if (v17 < *(v10 + 16))
    {
      sub_1C714E5B8(v18 + *(v3 + 72) * v17++, v5);
      switch(v5[57])
      {
        case 1:
        case 2:
        case 3:
        case 4:
        case 5:
        case 6:
          v19 = sub_1C7551DBC();

          result = sub_1C714D870(v5, type metadata accessor for TimeExtendedToken);
          if (v19)
          {
            return 0;
          }

          if (v16 == v17)
          {
            goto LABEL_13;
          }

          continue;
        default:

          sub_1C714D870(v5, type metadata accessor for TimeExtendedToken);
          return 0;
      }
    }

    break;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C7149A3C(uint64_t a1)
{
  TokenCategoryType = type metadata accessor for QueryTokenCategoryType(0);
  MEMORY[0x1EEE9AC00](TokenCategoryType);
  v4 = &v10[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = *(a1 + 288);
  swift_storeEnumTagMultiPayload();
  v11 = v4;
  LOBYTE(a1) = sub_1C707351C();
  sub_1C714D870(v4, type metadata accessor for QueryTokenCategoryType);
  if ((a1 & 1) == 0)
  {
    v7 = (v5 + 58);
    v8 = *(v5 + 16) + 1;
    while (--v8)
    {
      v9 = *v7;
      v7 += 40;
      if (v9 == 1)
      {
        return 0;
      }
    }
  }

  return 2;
}

void sub_1C7149B44(uint64_t a1)
{
  v2 = type metadata accessor for GlobalTrait(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = 0;
  v6 = *(a1 + 296);
  v7 = *(v6 + 16);
  v8 = v6 + 32;
  while (v7 != v5)
  {
    if (v5 >= *(v6 + 16))
    {
      __break(1u);
      return;
    }

    sub_1C7055874(v8, v10);
    sub_1C6FD80E4(v10, v9);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217A10, &qword_1C756D610);
    if (swift_dynamicCast())
    {
      sub_1C714D870(v4, type metadata accessor for GlobalTrait);
      return;
    }

    ++v5;
    v8 += 40;
  }
}

uint64_t sub_1C7149C7C(const void *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v9 = type metadata accessor for FreeformStoryGeneration.Chronological.Curated.Generator.StagedSampler(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  memcpy(v44, a1, 0x130uLL);
  v41 = *a2;
  v13 = *(v4 + *(type metadata accessor for FreeformStoryGeneration.Chronological.Curated.Generator(0) + 20) + 16);
  v14 = v44[24];
  v15 = *(v44[24] + 16);
  sub_1C75504FC();
  if (v13 >= v15)
  {
    sub_1C75504FC();
    v29 = sub_1C754FEEC();
    v30 = sub_1C75511BC();
    if (OUTLINED_FUNCTION_128(v30))
    {
      v31 = OUTLINED_FUNCTION_23_1();
      *v31 = 134218240;
      *(v31 + 4) = *(v14 + 16);

      *(v31 + 12) = 2048;
      *(v31 + 14) = v13;
      OUTLINED_FUNCTION_43_15();
      _os_log_impl(v32, v33, v34, v35, v36, 0x16u);
      OUTLINED_FUNCTION_10_1();
    }

    else
    {
    }
  }

  else
  {
    v39 = a3;
    v40 = a4;
    v16 = sub_1C754FEEC();
    v17 = sub_1C75511BC();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = OUTLINED_FUNCTION_23_1();
      *v18 = 134218240;
      *(v18 + 4) = *(v14 + 16);
      *(v18 + 12) = 2048;
      *(v18 + 14) = v13;
      _os_log_impl(&dword_1C6F5C000, v16, v17, "[assetUUIDsForHastings] %ld storytelling assets, more than %ld, will use staged sampling to reduce", v18, 0x16u);
      OUTLINED_FUNCTION_109();
    }

    memcpy(v43, a1, sizeof(v43));
    v19 = sub_1C7149654(v43);
    memcpy(v43, v44, sizeof(v43));
    v20 = sub_1C7149A3C(v43);
    memcpy(v43, v44, sizeof(v43));
    sub_1C7149B44(v43);
    v22 = v21;
    v42 = v41;
    sub_1C6FDE884(v44, v43);
    Hastings.ShotlistRetrieval.assetUUIDs.getter();
    v24 = v23;
    if (qword_1EC213E28 != -1)
    {
      OUTLINED_FUNCTION_26_22(&qword_1EC213E28);
    }

    v25 = v22 != 0;
    v26 = sub_1C754FF1C();
    __swift_project_value_buffer(v26, qword_1EC217E80);
    OUTLINED_FUNCTION_62_2();
    (*(v27 + 16))(v12);
    memcpy(&v12[v9[5]], v44, 0x130uLL);
    *&v12[v9[6]] = v24;
    *&v12[v9[7]] = v39;
    v12[v9[8]] = v19 != 0;
    v12[v9[9]] = v20 != 0;
    v12[v9[10]] = v25;
    sub_1C75504FC();
    v28 = FreeformStoryGeneration.Chronological.Curated.Generator.StagedSampler.sample(from:maximumNumberOfAssets:randomizer:)(v14, v13);

    sub_1C714D870(v12, type metadata accessor for FreeformStoryGeneration.Chronological.Curated.Generator.StagedSampler);
    return v28;
  }

  return v14;
}

void *sub_1C7149FE0(uint64_t a1, void *a2, void *a3)
{
  v67 = a1;
  v73 = *MEMORY[0x1E69E9840];
  v7 = sub_1C754F38C();
  v8 = *(v7 - 1);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_1C754F1CC();
  v68 = a3;
  sub_1C754F2CC();
  if (v4)
  {
    __swift_project_boxed_opaque_existential_1(a2, a2[3]);
    sub_1C754F1AC();
    (*(v8 + 8))(v10, v7);
    v11 = sub_1C754F2FC();
    (*(*(v11 - 8) + 8))(v68, v11);
    return v7;
  }

  v62 = v10;
  v63 = v8;
  v64 = 0;
  v66 = v7;
  v12 = *(type metadata accessor for FreeformStoryGeneration.Chronological.Curated.Generator(0) + 32);
  v61 = v3;
  v13 = v3 + v12;
  v14 = *(v13 + 8);
  v15 = *v13;
  v16 = v67;
  v17 = v15;

  v7 = [v17 librarySpecificFetchOptions];
  [v7 setSharingFilter_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217A40, &unk_1C755C9D0);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1C755BA90;
  *(v18 + 32) = sub_1C755068C();
  *(v18 + 40) = v19;
  *(v18 + 48) = sub_1C755068C();
  *(v18 + 56) = v20;
  *(v18 + 64) = sub_1C755068C();
  *(v18 + 72) = v21;
  *(v18 + 80) = sub_1C755068C();
  *(v18 + 88) = v22;
  *(v18 + 96) = sub_1C755068C();
  *(v18 + 104) = v23;
  sub_1C6FCA0EC(v18, v7);
  v24 = StoryGenerationCache.cachedObjectIDByAssetUUID(for:)();
  v25 = sub_1C71CDA94(v24);
  v26 = objc_opt_self();
  sub_1C71BA844(v25, v34, v35, v27, v28, v29, v30, v31, v32, v33, v60, v61, v62, v63, v64, v65, v66, v67, v68, Current, v70, v71, v72, v73, v74, v75);
  v37 = v36;

  v65 = v7;
  v38 = sub_1C740A230(v37, v7, v26);
  v39 = v68;
  if (v38)
  {
    v40 = v38;
    v41 = [v38 fetchedObjects];
    if (v41)
    {
      v42 = v41;
      sub_1C6F65BE8(0, &qword_1EDD0FA70, 0x1E6978630);
      v43 = sub_1C7550B5C();

      v44 = v64;
      sub_1C754F2DC();
      if (v44)
      {

        __swift_project_boxed_opaque_existential_1(a2, a2[3]);
        v45 = v62;
        sub_1C754F1AC();
        (*(v63 + 8))(v45, v66);
        v57 = sub_1C754F2FC();
        (*(*(v57 - 8) + 8))(v39, v57);
      }

      else
      {
        v54 = [objc_allocWithZone(CLSCurationSession) init];
        v70 = 0;
        v71 = 0;
        LODWORD(v72) = 0;
        Current = CFAbsoluteTimeGetCurrent();
        MEMORY[0x1EEE9AC00](v55);
        *(&v60 - 4) = v54;
        *(&v60 - 3) = &Current;
        *(&v60 - 2) = v39;
        *(&v60 - 1) = &v70;
        sub_1C715A3B8(sub_1C714E594, (&v60 - 6), v43);
        v56 = v63;
        v7 = v58;

        sub_1C754F2EC();

        __swift_project_boxed_opaque_existential_1(a2, a2[3]);
        v59 = v62;
        sub_1C754F1AC();
        (*(v56 + 8))(v59, v66);
      }

      return v7;
    }
  }

  sub_1C75504FC();
  v46 = sub_1C754FEEC();
  v47 = sub_1C755119C();
  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    *v48 = 134217984;
    *(v48 + 4) = *(v16 + 16);

    _os_log_impl(&dword_1C6F5C000, v46, v47, "Failed to fetch objects for %ld assets", v48, 0xCu);
    MEMORY[0x1CCA5F8E0](v48, -1, -1);
  }

  else
  {
  }

  v49 = v66;
  v51 = v62;
  v50 = v63;

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_1C754F1AC();
  (*(v50 + 8))(v51, v49);
  v52 = sub_1C754F2FC();
  (*(*(v52 - 8) + 8))(v39, v52);
  return MEMORY[0x1E69E7CC0];
}

void sub_1C714A6F4(uint64_t a1@<X2>, void *a2@<X8>)
{
  v3 = *(a1 + 168);
  v7 = *(a1 + 176);
  v8 = v3;
  type metadata accessor for FreeformStoryGeneration.Chronological.Curated.Generator(0);
  sub_1C712A774(&v8, v6, &unk_1EC215BF0, &qword_1C755C2F0);
  sub_1C712A774(&v7, v6, &unk_1EC215BF0, &qword_1C755C2F0);
  StoryGenerationCache.momentUUIDByAssetUUID(for:)();
  v4 = v7;
  *a2 = v8;
  a2[1] = v4;
  a2[2] = v5;
}

uint64_t sub_1C714A7A4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, BOOL *a4@<X8>)
{
  result = type metadata accessor for StoryGenerationSession(0);
  v9 = *(a1 + *(result + 24));
  if (v9)
  {
    v13 = 0;
    v14 = 0xE000000000000000;
    sub_1C755180C();
    v11 = *a2;
    v10 = a2[1];
    sub_1C75504FC();

    v13 = v11;
    v14 = v10;
    MEMORY[0x1CCA5CD70](0xD00000000000001CLL, 0x80000001C75A0D50);
    sub_1C7035CB0(a3, &v13);
    sub_1C7163DA4(v12);
  }

  *a4 = v9 == 0;
  return result;
}

uint64_t sub_1C714A894@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, BOOL *a4@<X8>)
{
  result = type metadata accessor for StoryGenerationSession(0);
  v9 = *(a1 + *(result + 24));
  if (v9)
  {
    v10 = *a2;
    v11 = a2[1];
    sub_1C75504FC();
    MEMORY[0x1CCA5CD70](0x676E69747361682FLL, 0xED00006C6D782E73);

    sub_1C7164054(v10, v11, v9, a3);
  }

  *a4 = v9 == 0;
  return result;
}

uint64_t sub_1C714A95C(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 800) = v8;
  *(v9 + 792) = v15;
  *(v9 + 784) = v14;
  *(v9 + 768) = v13;
  *(v9 + 760) = a8;
  *(v9 + 752) = a7;
  *(v9 + 744) = a6;
  *(v9 + 736) = a5;
  *(v9 + 728) = a4;
  *(v9 + 720) = a3;
  *(v9 + 712) = a1;
  *(v9 + 808) = type metadata accessor for AssetCurationOutlierDetector(0);
  *(v9 + 816) = swift_task_alloc();
  memcpy((v9 + 16), a2, 0x68uLL);

  return MEMORY[0x1EEE6DFA0](sub_1C714AA38, 0, 0);
}

uint64_t sub_1C714AA38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_126_0();
  if ([objc_opt_self() useOnDeviceAssetCurationOutlier])
  {
    v17 = v16[102];
    v18 = v16[101];
    v19 = v16[100];
    v56 = type metadata accessor for FreeformStoryGeneration.Chronological.Curated.Generator(0);
    v20 = v19 + *(v56 + 32);
    v21 = *v20;
    v55 = *(v20 + 8);
    v22 = *(v20 + 16);
    sub_1C7055874(*(v19 + *(v56 + 28)) + OBJC_IVAR____TtC18PhotosIntelligence22FreeformStoryGenerator_aiEventReporting, v17 + *(v18 + 28));
    v23 = qword_1EC213DB8;
    v24 = v21;

    if (v23 != -1)
    {
      swift_once();
    }

    v25 = v16[102];
    v26 = v16[101];
    v27 = sub_1C754FF1C();
    __swift_project_value_buffer(v27, qword_1EC25B660);
    OUTLINED_FUNCTION_62_2();
    (*(v28 + 16))(v25);
    v29 = v25 + *(v26 + 20);
    *v29 = v24;
    *(v29 + 8) = v55;
    *(v29 + 16) = v22;
    type metadata accessor for LLMAssetCache();
    swift_allocObject();
    *(v25 + *(v26 + 24)) = LLMAssetCache.init()();
    v30 = qword_1EDD0A988;
    sub_1C75504FC();
    sub_1C75504FC();
    sub_1C75504FC();
    sub_1C75504FC();
    sub_1C75504FC();
    sub_1C75504FC();
    if (v30 != -1)
    {
      swift_once();
    }

    v31 = v16[97];
    v32 = v16[96];
    v33 = v16[95];
    v34 = *(v16 + 93);
    v35 = v16[90];
    v36 = 4096;
    if (byte_1EC218F88 == 1)
    {
      v36 = 2048;
    }

    v16[67] = v16[89];
    v16[68] = v32;
    v16[69] = v31;
    v16[70] = v35;
    *(v16 + 71) = *(v16 + 91);
    *(v16 + 73) = v34;
    v16[75] = v33;
    v16[76] = v36;
    memcpy(v16 + 77, v16 + 67, 0x50uLL);
    memcpy(v16 + 15, v16 + 2, 0x68uLL);
    type metadata accessor for StoryGenerationSession(0);
    sub_1C6FC061C((v16 + 2), (v16 + 28));
    swift_task_alloc();
    OUTLINED_FUNCTION_48();
    v16[103] = v37;
    *v37 = v38;
    v37[1] = sub_1C714AE38;
    OUTLINED_FUNCTION_129();

    return AssetCurationOutlierDetector.assetOutliers(with:chapter:eventRecorder:progressReporter:diagnosticContext:)();
  }

  else
  {
    v41 = sub_1C754FEEC();
    v42 = sub_1C75511BC();
    if (OUTLINED_FUNCTION_128(v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&dword_1C6F5C000, v41, v42, "AssetCurationOutlier is disabled, not removing outliers", v43, 2u);
      OUTLINED_FUNCTION_109();
    }

    sub_1C754F2FC();
    OUTLINED_FUNCTION_12();
    v45 = *(v44 + 8);
    sub_1C75504FC();
    v46 = OUTLINED_FUNCTION_90();
    v45(v46);

    OUTLINED_FUNCTION_129();

    return v49(v47, v48, v49, v50, v51, v52, v53, v54, a9, a10, a11, a12, a13, a14, a15, a16);
  }
}

uint64_t sub_1C714AE38()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_6_4();
  *v4 = v3;
  *v4 = *v1;
  v3[104] = v5;
  v3[105] = v0;

  if (v0)
  {
    memcpy(v3 + 41, v3 + 15, 0x68uLL);
    sub_1C6FD7FC8((v3 + 41), &qword_1EC217EF8, &qword_1C756FD40);
  }

  else
  {
    memcpy(v3 + 54, v3 + 15, 0x68uLL);
    sub_1C6FD7FC8((v3 + 54), &qword_1EC217EF8, &qword_1C756FD40);
    sub_1C714E540((v3 + 67));
  }

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

void sub_1C714AF94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_126_0();
  a23 = v25;
  a24 = v26;
  a22 = v24;
  v27 = 0;
  v77 = v24 + 87;
  v28 = v24[89];
  v29 = *(v28 + 16);
  v30 = v28 + 40;
  v75 = v28 + 40;
  v76 = MEMORY[0x1E69E7CC0];
LABEL_2:
  v31 = (v30 + 16 * v27);
  while (v29 != v27)
  {
    if (v27 >= v29)
    {
      __break(1u);
LABEL_20:
      __break(1u);
      return;
    }

    if (__OFADD__(v27, 1))
    {
      goto LABEL_20;
    }

    v32 = *(v31 - 1);
    v33 = *v31;
    v24[87] = v32;
    v24[88] = v33;
    *(swift_task_alloc() + 16) = v77;
    sub_1C75504FC();
    v34 = sub_1C70735F4();

    if (!v34)
    {
      v35 = v76;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      a12 = v76;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1C6F7ED9C(0, v76[2] + 1, 1, v37, v38, v39, v40);
        v35 = a12;
      }

      v42 = v35[2];
      v41 = v35[3];
      if (v42 >= v41 >> 1)
      {
        v44 = OUTLINED_FUNCTION_15(v41);
        sub_1C6F7ED9C(v44, v42 + 1, 1, v45, v46, v47, v48);
        v35 = a12;
      }

      v35[2] = v42 + 1;
      v76 = v35;
      v43 = &v35[2 * v42];
      v43[4] = v32;
      v43[5] = v33;
      ++v27;
      v30 = v75;
      goto LABEL_2;
    }

    ++v27;
    v31 += 2;
  }

  sub_1C75504FC();
  swift_retain_n();
  v49 = sub_1C754FEEC();
  v50 = sub_1C75511BC();
  v51 = OUTLINED_FUNCTION_128(v50);
  v52 = v24[104];
  v53 = v24[102];
  if (v51)
  {
    v54 = OUTLINED_FUNCTION_20_1();
    v55 = OUTLINED_FUNCTION_20_1();
    a12 = v55;
    *v54 = 134218498;
    *(v54 + 4) = *(v52 + 16);

    *(v54 + 12) = 2080;
    v56 = MEMORY[0x1CCA5D090](v52, MEMORY[0x1E69E6158]);
    v58 = v57;

    v59 = sub_1C6F765A4(v56, v58, &a12);

    *(v54 + 14) = v59;
    *(v54 + 22) = 2048;
    v60 = v76[2];

    *(v54 + 24) = v60;

    OUTLINED_FUNCTION_43_15();
    _os_log_impl(v61, v62, v63, v64, v65, 0x20u);
    __swift_destroy_boxed_opaque_existential_1(v55);
    OUTLINED_FUNCTION_109();
    OUTLINED_FUNCTION_10_1();
  }

  else
  {

    swift_bridgeObjectRelease_n();
  }

  OUTLINED_FUNCTION_17_33();
  sub_1C714D870(v53, v66);

  OUTLINED_FUNCTION_129();

  v69(v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, a12, a13, a14, a15, a16);
}

uint64_t sub_1C714B270()
{
  OUTLINED_FUNCTION_42();
  v1 = *(v0 + 816);
  OUTLINED_FUNCTION_17_33();
  sub_1C714D870(v1, v2);
  sub_1C714E540(v0 + 536);

  OUTLINED_FUNCTION_43();

  return v3();
}

uint64_t sub_1C714B2E4@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [*a1 dateCreated];
  if (v3)
  {
    v4 = v3;
    sub_1C754DF2C();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_1C754DF6C();

  return __swift_storeEnumTagSinglePayload(a2, v5, 1, v6);
}

void sub_1C714B364(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219230, &unk_1C7563720);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v10 - v5;
  sub_1C712A774(a1, &v10 - v5, &unk_1EC219230, &unk_1C7563720);
  v7 = *a2;
  v8 = sub_1C754DF6C();
  v9 = 0;
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) != 1)
  {
    v9 = sub_1C754DECC();
    (*(*(v8 - 8) + 8))(v6, v8);
  }

  [v7 setDateCreated_];
}

id sub_1C714B480@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 objectID];
  *a2 = result;
  return result;
}

uint64_t sub_1C714B4BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[41] = a4;
  v5[42] = a5;
  v5[39] = a2;
  v5[40] = a3;
  v5[38] = a1;
  v6 = sub_1C754F2FC();
  v5[43] = v6;
  v5[44] = *(v6 - 8);
  v5[45] = swift_task_alloc();
  v5[46] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C714B590, 0, 0);
}

uint64_t sub_1C714B590(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_94_0();
  OUTLINED_FUNCTION_115_0();
  v13 = v12[40];
  sub_1C754F2BC();
  type metadata accessor for FreeformStoryGenerator(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2150B8, &qword_1C755C2C0);
  inited = swift_initStackObject();
  v12[47] = inited;
  *(inited + 16) = xmmword_1C755BAB0;
  memcpy((inited + 32), v13, 0x80uLL);
  type metadata accessor for FreeformStoryGeneration.Chronological.Curated.Generator(0);
  v15 = OUTLINED_FUNCTION_154();
  v16(v15);
  sub_1C6FB7BB8(v13, (v12 + 22));
  v17 = swift_task_alloc();
  v12[48] = v17;
  *v17 = v12;
  v17[1] = sub_1C714B6DC;
  OUTLINED_FUNCTION_42_17();
  OUTLINED_FUNCTION_44();

  return static FreeformStoryGenerator.updateChapterCuratedAssetsHighlights(storyChapters:queryTokens:storyGenerationCache:progressReporter:)(v18, v19, v20, v21);
}

uint64_t sub_1C714B6DC()
{
  OUTLINED_FUNCTION_123();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_14();
  *v5 = v4;
  *v5 = *v1;
  *(v4 + 392) = v0;

  if (!v0)
  {
    *(v4 + 400) = v3;
  }

  swift_setDeallocating();
  sub_1C6FDCAA8();
  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1C714B82C()
{
  sub_1C710D898(*(v0 + 400), *(v0 + 304));

  OUTLINED_FUNCTION_43();

  return v1();
}

uint64_t sub_1C714B8B8()
{
  OUTLINED_FUNCTION_42();

  OUTLINED_FUNCTION_43();

  return v0();
}

id sub_1C714B91C@<X0>(void *a1@<X0>, uint64_t a2@<X2>, void *a3@<X8>)
{
  result = [a1 fetchedObjects];
  if (result)
  {
    v6 = result;
    sub_1C6F65BE8(0, &qword_1EDD0FA70, 0x1E6978630);
    v7 = sub_1C7550B5C();

    v9 = a2;
    sub_1C714B9F4(v7, &v9, a3);
  }

  else
  {
    v8 = MEMORY[0x1E69E6160];
    a3[3] = MEMORY[0x1E69E6158];
    a3[4] = v8;
    *a3 = 0xD000000000000015;
    a3[1] = 0x80000001C75A0D30;
  }

  return result;
}

void sub_1C714B9F4(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v4 = 0;
  v102 = *a2;
  v5 = sub_1C6FB6304();
  v6 = MEMORY[0x1E69E7CC0];
LABEL_2:
  v101 = v6;
  while (v5 != v4)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x1CCA5DDD0](v4, a1);
    }

    else
    {
      if (v4 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_72;
      }

      v7 = *(a1 + 8 * v4 + 32);
    }

    v8 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
LABEL_71:
      __break(1u);
LABEL_72:
      __break(1u);
LABEL_73:
      __break(1u);
LABEL_74:
      __break(1u);
LABEL_75:
      __break(1u);
LABEL_76:
      __break(1u);

      __break(1u);
      return;
    }

    v9 = v7;
    v10 = [v9 uuid];
    if (v10)
    {
      v11 = v10;
      v12 = sub_1C755068C();
      v116 = v13;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_24_0();
        sub_1C6FB1814();
        v101 = v17;
      }

      v15 = *(v101 + 16);
      v14 = *(v101 + 24);
      if (v15 >= v14 >> 1)
      {
        OUTLINED_FUNCTION_15(v14);
        sub_1C6FB1814();
        v101 = v18;
      }

      v6 = v101;
      *(v101 + 16) = v15 + 1;
      v16 = v101 + 16 * v15;
      *(v16 + 32) = v12;
      *(v16 + 40) = v116;
      v4 = v8;
      goto LABEL_2;
    }

    ++v4;
  }

  sub_1C75504FC();
  sub_1C706D154();
  v20 = v19;
  v21 = v102;
  v22 = *(v102 + 16);
  if (v22)
  {
    v121 = MEMORY[0x1E69E7CC0];
    sub_1C716E5CC(0, v22, 0);
    v113 = v121;
    v23 = sub_1C70D4544();
    v26 = 0;
    v100 = v22;
    while ((v23 & 0x8000000000000000) == 0 && v23 < 1 << *(v21 + 32))
    {
      if (((*(v102 + 64 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v23) & 1) == 0)
      {
        goto LABEL_74;
      }

      if (*(v21 + 36) != v24)
      {
        goto LABEL_75;
      }

      v107 = v25;
      v109 = v24;
      v111 = v23;
      v115 = v26 + 1;
      v27 = (*(v21 + 48) + 16 * v23);
      v104 = v27[1];
      v106 = *v27;
      v28 = *(*(v21 + 56) + 8 * v23);
      v29 = *(v28 + 16);
      sub_1C75504FC();
      sub_1C75504FC();
      v30 = 0;
      v31 = MEMORY[0x1E69E7CC8];
LABEL_23:
      while (v30 != v29)
      {
        v32 = v30;
        if (v30 >= *(v28 + 16))
        {
          __break(1u);
LABEL_70:
          __break(1u);
          goto LABEL_71;
        }

        ++v30;
        if (*(v20 + 16))
        {
          v33 = (v28 + 32 + 24 * v32);
          v35 = *v33;
          v34 = v33[1];
          sub_1C7551F3C();
          sub_1C75504FC();
          sub_1C75505AC();
          v36 = sub_1C7551FAC();
          v37 = ~(-1 << *(v20 + 32));
          while (1)
          {
            v38 = v36 & v37;
            if (((*(v20 + 56 + (((v36 & v37) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v36 & v37)) & 1) == 0)
            {
              break;
            }

            v39 = (*(v20 + 48) + 16 * v38);
            if (*v39 != v35 || v39[1] != v34)
            {
              v41 = sub_1C7551DBC();
              v36 = v38 + 1;
              if ((v41 & 1) == 0)
              {
                continue;
              }
            }

            swift_isUniquelyReferenced_nonNull_native();
            v119 = v31;
            sub_1C6FC79C4();

            goto LABEL_23;
          }
        }
      }

      v42 = v113;
      v121 = v113;
      v44 = *(v113 + 16);
      v43 = *(v113 + 24);
      if (v44 >= v43 >> 1)
      {
        v51 = OUTLINED_FUNCTION_15(v43);
        sub_1C716E5CC(v51, v44 + 1, 1);
        v42 = v121;
      }

      *(v42 + 16) = v44 + 1;
      v113 = v42;
      v45 = (v42 + 24 * v44);
      v45[4] = v106;
      v45[5] = v104;
      v45[6] = v31;
      v21 = v102;
      v46 = sub_1C733EECC();
      v48 = v47;
      v50 = v49;
      sub_1C6F9ED50(v111, v109, v107 & 1);
      v23 = v46;
      v24 = v48;
      v25 = v50;
      v26 = v115;
      if (v115 == v100)
      {

        sub_1C6F9ED50(v46, v48, v50 & 1);
        v6 = v101;
        v52 = v113;
        goto LABEL_40;
      }
    }

    goto LABEL_73;
  }

  v52 = MEMORY[0x1E69E7CC0];
LABEL_40:
  v53 = *(v6 + 16);
  if (v53)
  {
    v121 = MEMORY[0x1E69E7CC0];
    sub_1C716E580(0, v53, 0);
    v54 = 0;
    v55 = v121;
    v56 = *(v52 + 16);
    v105 = v6 + 32;
    v108 = v52 + 48;
    v114 = v52;
    v103 = v53;
    while (v54 < *(v6 + 16))
    {
      v110 = v54 + 1;
      v112 = v55;
      v57 = (v105 + 16 * v54);
      v58 = v57[1];
      v117 = *v57;
      sub_1C75504FC();
      v59 = 0;
      v60 = MEMORY[0x1E69E7CC0];
LABEL_44:
      v61 = (v108 + 24 * v59);
      while (v56 != v59)
      {
        if (v59 >= *(v52 + 16))
        {
          goto LABEL_70;
        }

        v62 = *v61;
        if (*(*v61 + 16))
        {
          v64 = *(v61 - 2);
          v63 = *(v61 - 1);
          swift_bridgeObjectRetain_n();
          swift_bridgeObjectRetain_n();
          v65 = sub_1C6F78124(v117, v58);
          if (v66)
          {
            v67 = *(*(v62 + 56) + 8 * v65);
            swift_bridgeObjectRelease_n();

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              OUTLINED_FUNCTION_24_0();
              sub_1C6FB37DC();
              v60 = v71;
            }

            v69 = *(v60 + 16);
            v68 = *(v60 + 24);
            if (v69 >= v68 >> 1)
            {
              OUTLINED_FUNCTION_15(v68);
              sub_1C6FB37DC();
              v60 = v72;
            }

            ++v59;
            *(v60 + 16) = v69 + 1;
            v70 = (v60 + 24 * v69);
            v70[4] = v64;
            v70[5] = v63;
            v70[6] = v67;
            goto LABEL_44;
          }

          swift_bridgeObjectRelease_n();
          swift_bridgeObjectRelease_n();
        }

        v61 += 3;
        ++v59;
      }

      v119 = v60;
      sub_1C75504FC();
      sub_1C714D51C(&v119);

      v77 = v119;
      v78 = *(v119 + 16);
      if (v78)
      {
        v118 = MEMORY[0x1E69E7CC0];
        sub_1C6F7ED9C(0, v78, 0, v73, v74, v75, v76);
        v79 = v118;
        v80 = (v77 + 48);
        do
        {
          v81 = *(v80 - 1);
          v82 = *v80;
          v119 = *(v80 - 2);
          v120 = v81;
          swift_bridgeObjectRetain_n();
          MEMORY[0x1CCA5CD70](8250, 0xE200000000000000);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218F80, &unk_1C75605C0);
          v83 = swift_allocObject();
          *(v83 + 16) = xmmword_1C755BAB0;
          *(v83 + 56) = MEMORY[0x1E69E63B0];
          *(v83 + 64) = MEMORY[0x1E69E6438];
          *(v83 + 32) = v82;
          v84 = sub_1C75506BC();
          MEMORY[0x1CCA5CD70](v84);

          v86 = v119;
          v85 = v120;
          v88 = *(v118 + 16);
          v87 = *(v118 + 24);
          if (v88 >= v87 >> 1)
          {
            v90 = OUTLINED_FUNCTION_15(v87);
            sub_1C6F7ED9C(v90, v88 + 1, 1, v91, v92, v93, v94);
          }

          *(v118 + 16) = v88 + 1;
          v89 = v118 + 16 * v88;
          *(v89 + 32) = v86;
          *(v89 + 40) = v85;
          v80 += 3;
          --v78;
        }

        while (v78);

        v53 = v103;
      }

      else
      {

        v79 = MEMORY[0x1E69E7CC0];
      }

      v55 = v112;
      v121 = v112;
      v96 = *(v112 + 16);
      v95 = *(v112 + 24);
      v6 = v101;
      if (v96 >= v95 >> 1)
      {
        v98 = OUTLINED_FUNCTION_15(v95);
        sub_1C716E580(v98, v96 + 1, 1);
        v55 = v121;
      }

      *(v55 + 16) = v96 + 1;
      v97 = (v55 + 24 * v96);
      v97[4] = v117;
      v97[5] = v58;
      v97[6] = v79;
      v54 = v110;
      v52 = v114;
      if (v110 == v53)
      {

        goto LABEL_68;
      }
    }

    goto LABEL_76;
  }

  v55 = MEMORY[0x1E69E7CC0];
LABEL_68:
  a3[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217EE0, &qword_1C756FD38);
  a3[4] = sub_1C714E468();
  *a3 = v55;
}

void sub_1C714C228(void **a1@<X0>, void *a2@<X1>, double *a3@<X2>, uint64_t a4@<X4>, void *a5@<X5>, uint64_t a6@<X8>)
{
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219230, &unk_1C7563720);
  *&v14 = MEMORY[0x1EEE9AC00](v13 - 8).n128_u64[0];
  v16 = &v46 - v15;
  v17 = *a1;
  v18 = [a2 curationModelForAsset_];
  Current = CFAbsoluteTimeGetCurrent();
  if (Current - *a3 > 0.01)
  {
    sub_1C754F2DC();
    if (v6)
    {

      *a5 = v6;
      return;
    }

    *a3 = Current;
  }

  v20 = sub_1C70CAC04(v17);
  if (!v21)
  {
    __break(1u);
    goto LABEL_14;
  }

  v22 = v20;
  v23 = v21;
  [v17 curationScore];
  v25 = v24;
  [v17 overallAestheticScore];
  v27 = v26;
  v28 = [v17 iconicScoreProperties];
  if (!v28)
  {
LABEL_14:
    __break(1u);
    return;
  }

  v29 = v28;
  v47 = v23;
  [v28 iconicScore];
  v31 = v30;

  v32 = [v17 creationDate];
  if (v32)
  {
    v33 = v32;
    v34 = v22;
    sub_1C754DF2C();

    v35 = sub_1C754DF6C();
    v36 = 0;
  }

  else
  {
    v34 = v22;
    v35 = sub_1C754DF6C();
    v36 = 1;
  }

  __swift_storeEnumTagSinglePayload(v16, v36, 1, v35);
  v37 = [v17 mediaAnalysisProperties];
  v38 = [v37 faceCount];

  v39 = [v18 isBadQualityForImageKeyAssetWithAsset:v17 statistics:a4];
  v40 = [v17 isVideo];
  v41 = &selRef_isInterestingVideoWithAsset_;
  if (!v40)
  {
    v41 = &selRef_isInterestingLivePhotoWithAsset_;
  }

  v42 = [v18 *v41];
  [v17 locationCoordinate];
  v43 = CLLocationCoordinate2DIsValid(v48);
  v44 = v47;
  *a6 = v34;
  *(a6 + 8) = v44;
  *(a6 + 16) = v25;
  *(a6 + 24) = v27;
  *(a6 + 32) = v31;
  v45 = type metadata accessor for Hastings.Asset(0);
  sub_1C6FF51C8(v16, a6 + v45[8]);
  *(a6 + v45[9]) = v38;
  *(a6 + v45[10]) = v39;
  *(a6 + v45[11]) = v42;
  *(a6 + v45[12]) = v43;
  *(a6 + v45[13]) = v18;
}

void *FreeformStoryGeneration.Chronological.Curated.Generator.StagedSampler.init(storyElements:shotlistMatchingAssetUUIDs:eligibleAssetUUIDs:shotlistMatchingIsEssentialForRetrievedAssets:shotlistMatchingIsEssentialForExtendedRetrievedAssets:shotlistMatchingIsEssentialForGlobalTraitsExpandedAssets:)@<X0>(const void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, char a5@<W4>, char a6@<W5>, uint64_t a7@<X8>)
{
  if (qword_1EC213E28 != -1)
  {
    OUTLINED_FUNCTION_26_22(&qword_1EC213E28);
  }

  v14 = sub_1C754FF1C();
  __swift_project_value_buffer(v14, qword_1EC217E80);
  OUTLINED_FUNCTION_62_2();
  (*(v15 + 16))(a7);
  v16 = type metadata accessor for FreeformStoryGeneration.Chronological.Curated.Generator.StagedSampler(0);
  result = memcpy((a7 + v16[5]), a1, 0x130uLL);
  *(a7 + v16[6]) = a2;
  *(a7 + v16[7]) = a3;
  *(a7 + v16[8]) = a4 & 1;
  *(a7 + v16[9]) = a5 & 1;
  *(a7 + v16[10]) = a6 & 1;
  return result;
}

uint64_t FreeformStoryGeneration.Chronological.Curated.Generator.StagedSampler.sample(from:maximumNumberOfAssets:randomizer:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) <= a2)
  {
    sub_1C75504FC();
    v7 = sub_1C754FEEC();
    v8 = sub_1C75511BC();
    if (OUTLINED_FUNCTION_128(v8))
    {
      v9 = OUTLINED_FUNCTION_23_1();
      OUTLINED_FUNCTION_69_11(v9, 3.8521e-34);
      *(v9 + 12) = 2048;
      *(v9 + 14) = a2;
      _os_log_impl(&dword_1C6F5C000, v7, v8, "[StagedSampler] %ld assets, less than %ld, nothing to do", v9, 0x16u);
      OUTLINED_FUNCTION_109();
    }

    else
    {
    }

    return sub_1C75504FC();
  }

  else
  {
    v3 = OUTLINED_FUNCTION_57_0();

    return sub_1C714C8BC(v3, v4, 0, v5);
  }
}

unint64_t sub_1C714C73C(char a1)
{
  result = 0x656C626967696C45;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000014;
      break;
    case 2:
      result = 0x6973736572707845;
      break;
    case 3:
      result = 0x6576656972746552;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C714C7D4()
{
  v0 = sub_1C754FF1C();
  __swift_allocate_value_buffer(v0, qword_1EC217E80);
  v1 = __swift_project_value_buffer(v0, qword_1EC217E80);
  if (qword_1EC213E20 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_1EC217E68);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1C714C8BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a3;
  v6 = a1;
  if (*(a1 + 16) <= a2)
  {
    if (a3 == 4)
    {
      v14 = 0xE800000000000000;
      v15 = 0x676E696C706D6153;
    }

    else
    {
      v15 = sub_1C714C73C(a3);
      v14 = v25;
    }

    sub_1C75504FC();
    sub_1C75504FC();
    v26 = sub_1C754FEEC();
    v27 = sub_1C75511BC();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = OUTLINED_FUNCTION_20_1();
      v61[0] = OUTLINED_FUNCTION_20_1();
      *v28 = 136315650;
      v29 = sub_1C6F765A4(v15, v14, v61);

      *(v28 + 4) = v29;
      *(v28 + 12) = 2048;
      *(v28 + 14) = *(v6 + 16);

      *(v28 + 22) = 2048;
      *(v28 + 24) = a2;
      _os_log_impl(&dword_1C6F5C000, v26, v27, "[StagedSampler] stage %s: %ld assets, less than %ld, done", v28, 0x20u);
      OUTLINED_FUNCTION_12_6();
      OUTLINED_FUNCTION_109();
    }

    else
    {
    }

    sub_1C75504FC();
    return v6;
  }

  if (a3 == 4)
  {
    v61[0] = a1;
    __swift_mutable_project_boxed_opaque_existential_0(a4, *(a4 + 24));
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC215BF0, &qword_1C755C2F0);
    sub_1C714E610();
    v8 = sub_1C7550A1C();
    sub_1C7033F04(a2, v8);
    sub_1C706E83C();
    v10 = v9;
    sub_1C75504FC();
    sub_1C75504FC();
    v11 = sub_1C754FEEC();
    v12 = sub_1C75511BC();
    if (OUTLINED_FUNCTION_128(v12))
    {
      v13 = OUTLINED_FUNCTION_23_1();
      OUTLINED_FUNCTION_69_11(v13, 3.8521e-34);
      *(v13 + 12) = 2048;
      *(v13 + 14) = *(v6 + 16);

      _os_log_impl(&dword_1C6F5C000, v11, v12, "[StagedSampler] Sampled %ld assets out of %ld", v13, 0x16u);
      OUTLINED_FUNCTION_109();
    }

    else
    {
    }

    return v10;
  }

  sub_1C714D014(a1, a3);
  v17 = v16;
  v18 = *(v16 + 16);
  swift_bridgeObjectRetain_n();
  v19 = sub_1C754FEEC();
  v20 = sub_1C75511BC();
  v21 = OUTLINED_FUNCTION_128(v20);
  if (v18 <= a2)
  {
    if (v21)
    {
      v59 = v20;
      v30 = 0x656C626967696C45;
      v31 = OUTLINED_FUNCTION_20_1();
      v61[0] = OUTLINED_FUNCTION_20_1();
      *v31 = 136315650;
      v32 = 0xE800000000000000;
      switch(v4)
      {
        case 1:
          v30 = 0xD000000000000014;
          v32 = 0x80000001C75A0DA0;
          break;
        case 2:
          OUTLINED_FUNCTION_39_15();
          break;
        case 3:
          OUTLINED_FUNCTION_38_14();
          break;
        default:
          break;
      }

      v42 = sub_1C6F765A4(v30, v32, v61);

      *(v31 + 4) = v42;
      *(v31 + 12) = 2048;
      v43 = *(v17 + 16);

      *(v31 + 14) = v43;

      *(v31 + 22) = 2048;
      *(v31 + 24) = a2;
      _os_log_impl(&dword_1C6F5C000, v19, v59, "[StagedSampler] stage %s: %ld assets, less than %ld, keeping", v31, 0x20u);
      OUTLINED_FUNCTION_12_6();
      OUTLINED_FUNCTION_109();
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }

    v44 = 0x676E696C706D6153;
    sub_1C75504FC();
    v45 = OUTLINED_FUNCTION_15_1();
    v47 = 4;
    v48 = 0xE800000000000000;
    v49 = 1;
    v50 = sub_1C7238810(v45, v46);
    switch(v4)
    {
      case 0:
        goto LABEL_33;
      case 1:
        v49 = 2;
        goto LABEL_33;
      case 2:
        v49 = 3;
LABEL_33:
        swift_getKeyPath();
        swift_getAtKeyPath();

        v44 = v61[0];
        v48 = v61[1];
        v47 = v49;
        break;
      case 3:
        break;
      default:
        JUMPOUT(0);
    }

    v51 = v44;
    sub_1C75504FC();
    sub_1C75504FC();
    v52 = sub_1C754FEEC();
    v53 = sub_1C75511BC();

    if (os_log_type_enabled(v52, v53))
    {
      v60 = v50;
      v54 = OUTLINED_FUNCTION_23_1();
      v58 = v47;
      v55 = OUTLINED_FUNCTION_20_1();
      v61[0] = v55;
      *v54 = 136315394;
      v56 = sub_1C6F765A4(v51, v48, v61);

      *(v54 + 4) = v56;
      *(v54 + 12) = 2048;
      *(v54 + 14) = *(v60 + 16);

      _os_log_impl(&dword_1C6F5C000, v52, v53, "[StagedSampler] going to next stage %s with %ld assets", v54, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v55);
      v47 = v58;
      OUTLINED_FUNCTION_109();
      v50 = v60;
      OUTLINED_FUNCTION_109();
    }

    else
    {
    }

    sub_1C714C8BC(v50, a2 - *(v17 + 16), v47, a4);

    OUTLINED_FUNCTION_457();
    sub_1C70738FC();
    return v57;
  }

  if (v21)
  {
    v22 = 0x656C626967696C45;
    v23 = OUTLINED_FUNCTION_20_1();
    v61[0] = OUTLINED_FUNCTION_20_1();
    *v23 = 136315650;
    v24 = 0xE800000000000000;
    switch(v4)
    {
      case 1:
        v22 = 0xD000000000000014;
        v24 = 0x80000001C75A0DA0;
        break;
      case 2:
        OUTLINED_FUNCTION_39_15();
        break;
      case 3:
        OUTLINED_FUNCTION_38_14();
        break;
      default:
        break;
    }

    v33 = sub_1C6F765A4(v22, v24, v61);

    *(v23 + 4) = v33;
    *(v23 + 12) = 2048;
    v34 = *(v17 + 16);

    *(v23 + 14) = v34;

    *(v23 + 22) = 2048;
    *(v23 + 24) = a2;
    OUTLINED_FUNCTION_43_15();
    _os_log_impl(v35, v36, v37, v38, v39, 0x20u);
    OUTLINED_FUNCTION_12_6();
    OUTLINED_FUNCTION_10_1();
  }

  else
  {

    swift_bridgeObjectRelease_n();
  }

  v40 = sub_1C714C8BC(v17, a2, 0x4040401u >> (8 * v4), a4);

  return v40;
}

unint64_t sub_1C714CFE8@<X0>(char *a1@<X0>, unint64_t *a2@<X8>)
{
  result = sub_1C714C73C(*a1);
  *a2 = result;
  a2[1] = v4;
  return result;
}

void sub_1C714D014(uint64_t a1, char a2)
{
  v4 = type metadata accessor for FreeformStoryGeneration.Chronological.Curated.Generator.StagedSampler(0);
  switch(a2)
  {
    case 1:
      v5 = *(v2 + *(v4 + 32));
      sub_1C75504FC();
      sub_1C7069A44();
      if (v5 == 1)
      {
        goto LABEL_8;
      }

      break;
    case 2:
      sub_1C75504FC();
      sub_1C7069A44();
      sub_1C7069A44();
      sub_1C75504FC();
      sub_1C7069A44();
      sub_1C7069A44();

      sub_1C70738FC();
      break;
    case 3:
      if (*(v2 + *(v4 + 32)) == 1)
      {
        goto LABEL_6;
      }

      break;
    default:
LABEL_6:
      sub_1C75504FC();
LABEL_8:

      sub_1C7069A44();
      break;
  }
}

uint64_t sub_1C714D1A4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4955557465737361 && a2 == 0xE900000000000044;
  if (v4 || (sub_1C7551DBC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x73656972657571 && a2 == 0xE700000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1C7551DBC();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1C714D274(char a1)
{
  if (a1)
  {
    return 0x73656972657571;
  }

  else
  {
    return 0x4955557465737361;
  }
}

uint64_t sub_1C714D2B0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[0] = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217F10, &unk_1C756FE70);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C714E7B8();
  sub_1C755200C();
  v13 = 0;
  sub_1C7551CCC();
  if (!v4)
  {
    v11[1] = v11[0];
    v12 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00, &qword_1C755BD70);
    sub_1C6FC18BC();
    sub_1C7551D2C();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_1C714D45C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C714D1A4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C714D484(uint64_t a1)
{
  v2 = sub_1C714E7B8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C714D4C0(uint64_t a1)
{
  v2 = sub_1C714E7B8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C714D51C(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1C7422DA4();
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_1C714D920(v6);
  *a1 = v2;
  return result;
}

uint64_t sub_1C714D5D4(uint64_t a1)
{
  result = sub_1C6F65BE8(319, &qword_1EDD0FA70, 0x1E6978630);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for StoryMusicCuration(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1C714D6EC(uint64_t a1)
{
  result = sub_1C754FF1C();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for StoryGenerationSession(319);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for FreeformStoryGenerator(319);
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

void sub_1C714D7C0(uint64_t a1)
{
  sub_1C754FF1C();
  if (v1 <= 0x3F)
  {
    sub_1C7042C44();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1C714D870(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_12();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1C714D8C8(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_19_1();
  v4(v3);
  OUTLINED_FUNCTION_12();
  v5 = OUTLINED_FUNCTION_90();
  v6(v5);
  return a2;
}

uint64_t sub_1C714D920(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1C7551D7C();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214CA0, &qword_1C755BE20);
        v6 = sub_1C7550BBC();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_1C714DAA4(v7, v8, a1, v4);
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
    return sub_1C714DA24(0, v2, 1, a1);
  }

  return result;
}