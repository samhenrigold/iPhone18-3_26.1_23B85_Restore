uint64_t sub_1D8C6D998()
{
  sub_1D8C6DCEC(v0 + 32);
}

uint64_t sub_1D8C6D9C8()
{

  sub_1D8C6DCEC(v0 + 32);

  return swift_deallocClassInstance();
}

uint64_t sub_1D8C6DA5C(uint64_t a1, unsigned int a2)
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

uint64_t sub_1D8C6DA98(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1D8C6DAE4(uint64_t result, unsigned int a2)
{
  if (a2 > 2)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 3;
    LOBYTE(a2) = 3;
  }

  *(result + 40) = a2;
  return result;
}

uint64_t sub_1D8C6DD1C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D8C6DD3C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 8) = v3;
  return result;
}

uint64_t sub_1D8C6DD74(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  if ((*(a1 + 32) & 0xF000000000000007) != 0)
  {
    v2 = *(a1 + 24) & 0x7FFFFFFF;
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D8C6DDC0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *(result + 32) = 1;
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t *sub_1D8C6DE1C@<X0>(unint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v4 = *result;
  v3 = result[1];
  if (v3 >> 62)
  {
    if (v3 >> 62 == 2 && v4 <= 0xC)
    {
      switch(v4)
      {
        case 1uLL:
          v39 = *v2;
          if (*v2)
          {
            v40 = v2[1] - v39;
            v41 = v2[3];
            if (v41 >= v40)
            {
              goto LABEL_169;
            }
          }

          else
          {
            v41 = v2[3];
            if ((v41 & 0x8000000000000000) == 0)
            {
              goto LABEL_169;
            }

            v40 = 0;
          }

          v71 = *(v39 + v41);
          v72 = v41 + 1;
          if ((v71 & 0x8000000000000000) == 0)
          {
            v2[3] = v72;
            goto LABEL_100;
          }

          if (v72 < v40)
          {
            v71 &= 0x7Fu;
            v95 = (v39 + v72);
            v96 = v41 + 2;
            v97 = 7;
            while (1)
            {
              v98 = *v95++;
              v71 |= (v98 & 0x7F) << v97;
              if ((v98 & 0x80) == 0)
              {
                break;
              }

              if (v96 < v40)
              {
                ++v96;
                v17 = v97 > 0x38;
                v97 += 7;
                if (!v17)
                {
                  continue;
                }
              }

              goto LABEL_169;
            }

            v2[3] = v96;
LABEL_100:
            *a2 = v71;
            goto LABEL_101;
          }

          goto LABEL_169;
        case 2uLL:
          v30 = *v2;
          if (*v2)
          {
            v31 = v2[1] - v30;
            v32 = v2[3];
            if (v32 >= v31)
            {
              goto LABEL_169;
            }
          }

          else
          {
            v32 = v2[3];
            if ((v32 & 0x8000000000000000) == 0)
            {
              goto LABEL_169;
            }

            v31 = 0;
          }

          v63 = *(v30 + v32);
          v64 = v32 + 1;
          if ((v63 & 0x8000000000000000) == 0)
          {
            v2[3] = v64;
            goto LABEL_81;
          }

          if (v64 < v31)
          {
            v63 &= 0x7Fu;
            v83 = (v30 + v64);
            v84 = v32 + 2;
            v85 = 7;
            while (1)
            {
              v86 = *v83++;
              v63 |= (v86 & 0x7F) << v85;
              if ((v86 & 0x80) == 0)
              {
                break;
              }

              if (v84 < v31)
              {
                ++v84;
                v17 = v85 > 0x38;
                v85 += 7;
                if (!v17)
                {
                  continue;
                }
              }

              goto LABEL_169;
            }

            v2[3] = v84;
LABEL_81:
            *a2 = -(v63 & 1) ^ (v63 >> 1);
            *(a2 + 40) = 0;
            return result;
          }

          goto LABEL_169;
        case 3uLL:
          v33 = v2[3];
          v34 = *v2;
          if (*v2)
          {
            if (v2[1] - v34 < v33)
            {
              goto LABEL_186;
            }

            v35 = (v34 + v33);
          }

          else
          {
            if (v33 > 0)
            {
              goto LABEL_192;
            }

            v35 = 0;
          }

          v54 = __OFADD__(v33, 4);
          v65 = v33 + 4;
          if (v54)
          {
            goto LABEL_180;
          }

          v66 = *v35;
          v2[3] = v65;
          *a2 = v66;
LABEL_101:
          *(a2 + 40) = 1;
          return result;
        case 4uLL:
          v21 = v2[3];
          v22 = *v2;
          if (*v2)
          {
            if (v2[1] - v22 < v21)
            {
              goto LABEL_184;
            }

            v23 = (v22 + v21);
          }

          else
          {
            if (v21 > 0)
            {
              goto LABEL_190;
            }

            v23 = 0;
          }

          v54 = __OFADD__(v21, 4);
          v57 = v21 + 4;
          if (v54)
          {
            goto LABEL_178;
          }

          v58 = *v23;
          v2[3] = v57;
          *a2 = v58;
          *(a2 + 40) = 0;
          return result;
        case 5uLL:
          v42 = *v2;
          if (*v2)
          {
            v43 = v2[1] - v42;
            v44 = v2[3];
            if (v44 >= v43)
            {
              goto LABEL_169;
            }
          }

          else
          {
            v44 = v2[3];
            if ((v44 & 0x8000000000000000) == 0)
            {
              goto LABEL_169;
            }

            v43 = 0;
          }

          v62 = *(v42 + v44);
          v73 = v44 + 1;
          if ((v62 & 0x8000000000000000) == 0)
          {
            v2[3] = v73;
            goto LABEL_106;
          }

          if (v73 >= v43)
          {
            goto LABEL_169;
          }

          v62 &= 0x7Fu;
          v99 = (v42 + v73);
          v100 = v44 + 2;
          v101 = 7;
          while (1)
          {
            v102 = *v99++;
            v62 |= (v102 & 0x7F) << v101;
            if ((v102 & 0x80) == 0)
            {
              break;
            }

            if (v100 < v43)
            {
              ++v100;
              v17 = v101 > 0x38;
              v101 += 7;
              if (!v17)
              {
                continue;
              }
            }

            goto LABEL_169;
          }

          v2[3] = v100;
LABEL_106:
          *a2 = v62;
LABEL_107:
          *(a2 + 40) = 2;
          return result;
        case 6uLL:
          v45 = *v2;
          if (*v2)
          {
            v46 = v2[1] - v45;
            v47 = v2[3];
            if (v47 >= v46)
            {
              goto LABEL_169;
            }
          }

          else
          {
            v47 = v2[3];
            if ((v47 & 0x8000000000000000) == 0)
            {
              goto LABEL_169;
            }

            v46 = 0;
          }

          v74 = *(v45 + v47);
          v75 = v47 + 1;
          if ((v74 & 0x8000000000000000) == 0)
          {
            v2[3] = v75;
            goto LABEL_120;
          }

          if (v75 >= v46)
          {
            goto LABEL_169;
          }

          v74 &= 0x7Fu;
          v103 = (v45 + v75);
          v104 = v47 + 2;
          v105 = 7;
          while (1)
          {
            v106 = *v103++;
            v74 |= (v106 & 0x7F) << v105;
            if ((v106 & 0x80) == 0)
            {
              break;
            }

            if (v104 < v46)
            {
              ++v104;
              v17 = v105 > 0x38;
              v105 += 7;
              if (!v17)
              {
                continue;
              }
            }

            goto LABEL_169;
          }

          v2[3] = v104;
LABEL_120:
          *a2 = v74;
          *(a2 + 40) = 3;
          return result;
        case 7uLL:
          v36 = *v2;
          if (*v2)
          {
            v37 = v2[1] - v36;
            v38 = v2[3];
            if (v38 >= v37)
            {
              goto LABEL_169;
            }
          }

          else
          {
            v38 = v2[3];
            if ((v38 & 0x8000000000000000) == 0)
            {
              goto LABEL_169;
            }

            v37 = 0;
          }

          v67 = *(v36 + v38);
          v68 = v38 + 1;
          if ((v67 & 0x8000000000000000) == 0)
          {
            v2[3] = v68;
            goto LABEL_90;
          }

          if (v68 < v37)
          {
            v67 &= 0x7Fu;
            v87 = (v36 + v68);
            v88 = v38 + 2;
            v89 = 7;
            while (1)
            {
              v90 = *v87++;
              v67 |= (v90 & 0x7F) << v89;
              if ((v90 & 0x80) == 0)
              {
                break;
              }

              if (v88 < v37)
              {
                ++v88;
                v17 = v89 > 0x38;
                v89 += 7;
                if (!v17)
                {
                  continue;
                }
              }

              goto LABEL_169;
            }

            v2[3] = v88;
LABEL_90:
            *a2 = -(v67 & 1) ^ (v67 >> 1);
            goto LABEL_107;
          }

          goto LABEL_169;
        case 8uLL:
          v51 = v2[3];
          v52 = *v2;
          if (*v2)
          {
            if (v2[1] - v52 < v51)
            {
              goto LABEL_188;
            }

            v53 = (v52 + v51);
          }

          else
          {
            if (v51 > 0)
            {
              goto LABEL_194;
            }

            v53 = 0;
          }

          v54 = __OFADD__(v51, 8);
          v78 = v51 + 8;
          if (v54)
          {
            goto LABEL_182;
          }

          v74 = *v53;
          v2[3] = v78;
          goto LABEL_120;
        case 9uLL:
          v27 = v2[3];
          v28 = *v2;
          if (*v2)
          {
            if (v2[1] - v28 < v27)
            {
              goto LABEL_185;
            }

            v29 = (v28 + v27);
          }

          else
          {
            if (v27 > 0)
            {
              goto LABEL_191;
            }

            v29 = 0;
          }

          v54 = __OFADD__(v27, 8);
          v61 = v27 + 8;
          if (v54)
          {
            goto LABEL_179;
          }

          v62 = *v29;
          v2[3] = v61;
          goto LABEL_106;
        case 0xAuLL:
          v48 = v2[3];
          v49 = *v2;
          if (*v2)
          {
            if (v2[1] - v49 < v48)
            {
              goto LABEL_187;
            }

            v50 = (v49 + v48);
          }

          else
          {
            if (v48 > 0)
            {
              goto LABEL_193;
            }

            v50 = 0;
          }

          v54 = __OFADD__(v48, 8);
          v76 = v48 + 8;
          if (v54)
          {
            goto LABEL_181;
          }

          v77 = *v50;
          v2[3] = v76;
          *a2 = v77;
          *(a2 + 40) = 5;
          return result;
        case 0xBuLL:
          v18 = v2[3];
          v19 = *v2;
          if (*v2)
          {
            if (v2[1] - v19 < v18)
            {
              goto LABEL_183;
            }

            v20 = (v19 + v18);
          }

          else
          {
            if (v18 > 0)
            {
              goto LABEL_189;
            }

            v20 = 0;
          }

          v54 = __OFADD__(v18, 4);
          v55 = v18 + 4;
          if (!v54)
          {
            v56 = *v20;
            v2[3] = v55;
            *a2 = v56;
            *(a2 + 40) = 4;
            return result;
          }

          __break(1u);
LABEL_178:
          __break(1u);
LABEL_179:
          __break(1u);
LABEL_180:
          __break(1u);
LABEL_181:
          __break(1u);
LABEL_182:
          __break(1u);
LABEL_183:
          __break(1u);
LABEL_184:
          __break(1u);
LABEL_185:
          __break(1u);
LABEL_186:
          __break(1u);
LABEL_187:
          __break(1u);
LABEL_188:
          __break(1u);
LABEL_189:
          __break(1u);
LABEL_190:
          __break(1u);
LABEL_191:
          __break(1u);
LABEL_192:
          __break(1u);
LABEL_193:
          __break(1u);
LABEL_194:
          __break(1u);
          return result;
        case 0xCuLL:
          v24 = *v2;
          if (*v2)
          {
            v25 = v2[1] - v24;
            v26 = v2[3];
            if (v26 >= v25)
            {
              goto LABEL_169;
            }
          }

          else
          {
            v26 = v2[3];
            if ((v26 & 0x8000000000000000) == 0)
            {
              goto LABEL_169;
            }

            v25 = 0;
          }

          v59 = *(v24 + v26);
          v60 = v26 + 1;
          if ((v59 & 0x8000000000000000) == 0)
          {
            v2[3] = v60;
            goto LABEL_72;
          }

          if (v60 < v25)
          {
            v59 &= 0x7Fu;
            v79 = (v24 + v60);
            v80 = v26 + 2;
            v81 = 7;
            while (1)
            {
              v82 = *v79++;
              v59 |= (v82 & 0x7F) << v81;
              if ((v82 & 0x80) == 0)
              {
                break;
              }

              if (v80 < v25)
              {
                ++v80;
                v17 = v81 > 0x38;
                v81 += 7;
                if (!v17)
                {
                  continue;
                }
              }

              goto LABEL_169;
            }

            v2[3] = v80;
LABEL_72:
            *a2 = v59 != 0;
            *(a2 + 40) = 6;
            return result;
          }

          goto LABEL_169;
        default:
          v5 = *v2;
          if (*v2)
          {
            v6 = v2[1] - v5;
            v7 = v2[3];
            if (v7 >= v6)
            {
              goto LABEL_169;
            }
          }

          else
          {
            v7 = v2[3];
            if ((v7 & 0x8000000000000000) == 0)
            {
              goto LABEL_169;
            }

            v6 = 0;
          }

          v69 = *(v5 + v7);
          v70 = v7 + 1;
          if ((v69 & 0x8000000000000000) == 0)
          {
            v2[3] = v70;
            goto LABEL_95;
          }

          if (v70 < v6)
          {
            v69 &= 0x7Fu;
            v91 = (v5 + v70);
            v92 = v7 + 2;
            v93 = 7;
            while (1)
            {
              v94 = *v91++;
              v69 |= (v94 & 0x7F) << v93;
              if ((v94 & 0x80) == 0)
              {
                break;
              }

              if (v92 < v6)
              {
                ++v92;
                v17 = v93 > 0x38;
                v93 += 7;
                if (!v17)
                {
                  continue;
                }
              }

              goto LABEL_169;
            }

            v2[3] = v92;
LABEL_95:
            *a2 = v69;
            *(a2 + 40) = 0;
            return result;
          }

          break;
      }
    }

    goto LABEL_169;
  }

  v8 = *v2;
  if (*v2)
  {
    v9 = v2[1] - v8;
    v10 = v2[3];
    if (v10 >= v9)
    {
      goto LABEL_169;
    }
  }

  else
  {
    v10 = v2[3];
    if ((v10 & 0x8000000000000000) == 0)
    {
      goto LABEL_169;
    }

    v9 = 0;
  }

  v11 = *(v8 + v10);
  v12 = v10 + 1;
  if ((v11 & 0x8000000000000000) == 0)
  {
    v2[3] = v12;
LABEL_15:
    *a2 = v4;
    *(a2 + 8) = v3;
    *(a2 + 16) = v11;
    *(a2 + 24) = 0;
    *(a2 + 32) = 1;
    *(a2 + 40) = 7;
    return sub_1D8C2B50C(v4, v3);
  }

  if (v12 < v9)
  {
    v11 &= 0x7Fu;
    v13 = (v8 + v12);
    v14 = v10 + 2;
    v15 = 7;
    while (1)
    {
      v16 = *v13++;
      v11 |= (v16 & 0x7F) << v15;
      if ((v16 & 0x80) == 0)
      {
        break;
      }

      if (v14 < v9)
      {
        ++v14;
        v17 = v15 > 0x38;
        v15 += 7;
        if (!v17)
        {
          continue;
        }
      }

      goto LABEL_169;
    }

    v2[3] = v14;
    goto LABEL_15;
  }

LABEL_169:
  sub_1D8C36A64();
  swift_allocError();
  *v107 = xmmword_1D8C86190;
  *(v107 + 16) = 2;
  return swift_willThrow();
}

uint64_t sub_1D8C6E5F0()
{
  v1 = v0[3];
  v2 = *v0;
  if (*v0)
  {
    if (v0[1] - v2 < v1)
    {
LABEL_9:
      __break(1u);
      goto LABEL_10;
    }

    v3 = (v2 + v1);
    v4 = __OFADD__(v1, 4);
    v5 = v1 + 4;
    if (!v4)
    {
LABEL_4:
      result = *v3;
      v0[3] = v5;
      return result;
    }

LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v1 <= 0)
  {
    v3 = 0;
    v4 = __OFADD__(v1, 4);
    v5 = v1 + 4;
    if (!v4)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

LABEL_10:
  __break(1u);
  return result;
}

unint64_t *sub_1D8C6E644(unint64_t *result, uint64_t a2)
{
  v3 = result[1];
  if (v3 >> 62)
  {
    if (v3 >> 62 == 1 || (v4 = *result, __PAIR128__((*result >= 0xD) + v3 + 0x7FFFFFFFFFFFFFFFLL, *result - 13) < 2))
    {
LABEL_21:
      sub_1D8C36A64();
      swift_allocError();
      *v16 = xmmword_1D8C86190;
      *(v16 + 16) = 2;
      return swift_willThrow();
    }

    if (((1 << v4) & 0x10E7) == 0)
    {
      if (((1 << v4) & 0x700) != 0)
      {
        if ((a2 - 0x1000000000000000) >> 61 != 7)
        {
LABEL_35:
          __break(1u);
          goto LABEL_36;
        }

        v17 = v2[3];
        v18 = __OFADD__(v17, 8 * a2);
        v19 = v17 + 8 * a2;
        if (v18)
        {
LABEL_37:
          __break(1u);
          goto LABEL_38;
        }

        v20 = *v2;
        if (*v2)
        {
          goto LABEL_27;
        }
      }

      else
      {
        if ((a2 - 0x2000000000000000) >> 62 != 3)
        {
LABEL_36:
          __break(1u);
          goto LABEL_37;
        }

        v21 = v2[3];
        v18 = __OFADD__(v21, 4 * a2);
        v19 = v21 + 4 * a2;
        if (v18)
        {
LABEL_38:
          __break(1u);
          return result;
        }

        v20 = *v2;
        if (*v2)
        {
LABEL_27:
          if (v19 >= v2[1] - v20)
          {
            return result;
          }

          goto LABEL_33;
        }
      }

      if ((v19 & 0x8000000000000000) == 0)
      {
        return result;
      }

LABEL_33:
      v2[3] = v19;
      return result;
    }
  }

  if (a2 < 0)
  {
    __break(1u);
    goto LABEL_35;
  }

  if (a2)
  {
    v5 = 0;
    v6 = *v2;
    v7 = v2[1] - *v2;
    v8 = v2[3];
    v9 = *v2 + 1;
    do
    {
      if (v6)
      {
        v10 = v7;
        if (v8 >= v7)
        {
          goto LABEL_21;
        }
      }

      else
      {
        if ((v8 & 0x8000000000000000) == 0)
        {
          goto LABEL_21;
        }

        v10 = 0;
      }

      v11 = v8 + 1;
      if (*(v6 + v8) < 0)
      {
        if (v11 >= v10)
        {
          goto LABEL_21;
        }

        v12 = (v9 + v8);
        v11 = v8 + 2;
        v13 = 7;
        while (1)
        {
          v14 = *v12++;
          if ((v14 & 0x80000000) == 0)
          {
            break;
          }

          if (v11 < v10)
          {
            ++v11;
            v15 = v13 > 0x38;
            v13 += 7;
            if (!v15)
            {
              continue;
            }
          }

          goto LABEL_21;
        }
      }

      ++v5;
      v2[3] = v11;
      v8 = v11;
    }

    while (v5 != a2);
  }

  return result;
}

uint64_t sub_1D8C6E80C(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 16);
  if (v5 >> 12 <= 0xE)
  {
    v7 = a1[1];
    v11 = *a1;
    v12 = v7;
    v13 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    sub_1D8C7590C(&v11, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v10;
  }

  else
  {
    sub_1D8C75164(a2, a3, &v11);

    return sub_1D8C31D74(v11, *(&v11 + 1), v12, *(&v12 + 1), v13);
  }

  return result;
}

uint64_t SchematizedDataComposer.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    sub_1D8C75164(a3, a4, &v28);

    return sub_1D8C31D74(v28, *(&v28 + 1), v29, v30, v31);
  }

  v21 = *(v4 + 8);
  ObjectType = swift_getObjectType();
  MessageSchemaDescribing.asPublic()(v21, &v26);
  v8 = v27;
  v9 = swift_getObjectType();
  v10 = *(v8 + 56);

  v24 = a4;
  v10(a3, a4, v9, v8);
  v12 = v11;
  swift_getObjectType();
  FieldSchemaDescribing.asPublic()(v12, &v28);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v13 = *(&v28 + 1);
  v14 = swift_getObjectType();
  (*(v13 + 56))(&v26, v14, v13);
  v16 = v26;
  v15 = v27;
  if (v27 >> 62)
  {
    if (v27 >> 62 != 2 || v26 != 13 || v27 != 0x8000000000000000)
    {
      *&v28 = 0;
      *(&v28 + 1) = 0xE000000000000000;
      sub_1D8C85124();

      *&v28 = 0x73696D2065707954;
      *(&v28 + 1) = 0xEF203A686374616DLL;
      v20 = (*(*(v21 + 8) + 8))(ObjectType);
      MEMORY[0x1DA7255C0](v20);

      MEMORY[0x1DA7255C0](0x3A646C656966202CLL, 0xE900000000000020);
      MEMORY[0x1DA7255C0](a3, v24);
      result = sub_1D8C851F4();
      __break(1u);
      return result;
    }

    *&v28 = a1;
    *(&v28 + 1) = a2;
    v29 = 0;
    v30 = 0;
    v31 = 2048;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = *(v4 + 16);
    sub_1D8C7590C(&v28, a3, v24, isUniquelyReferenced_nonNull_native);
    swift_unknownObjectRelease();
  }

  else
  {

    *&v28 = v16;
    *(&v28 + 1) = v15;
    v29 = a1;
    v30 = a2;
    v31 = 1792;
    swift_unknownObjectRetain();
    v17 = swift_isUniquelyReferenced_nonNull_native();
    v25 = *(v4 + 16);
    sub_1D8C7590C(&v28, a3, v24, v17);
    swift_unknownObjectRelease();

    result = sub_1D8C2BBF0(v16, v15);
  }

  *(v4 + 16) = v25;
  return result;
}

uint64_t SchematizedDataComposer.subscript.setter(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 >> 60 == 15)
  {
    sub_1D8C75164(a3, a4, &v10);

    return sub_1D8C31D74(v10, *(&v10 + 1), v11, v12, v13);
  }

  else
  {
    *&v10 = a1;
    *(&v10 + 1) = a2;
    v11 = 0;
    v12 = 0;
    v13 = 2304;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *(v4 + 16);
    sub_1D8C7590C(&v10, a3, a4, isUniquelyReferenced_nonNull_native);

    *(v4 + 16) = v9;
  }

  return result;
}

uint64_t SchematizedDataComposer.subscript.setter(unint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    sub_1D8C75164(a3, a4, &v31);

    return sub_1D8C31D74(v31, *(&v31 + 1), v32, v33, v34);
  }

  v9 = *(v4 + 8);
  ObjectType = swift_getObjectType();
  MessageSchemaDescribing.asPublic()(v9, &v30);
  v10 = *(&v30 + 1);
  v11 = swift_getObjectType();
  (*(v10 + 56))(a3, a4, v11, v10);
  v13 = v12;
  swift_getObjectType();
  FieldSchemaDescribing.asPublic()(v13, &v31);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v14 = *(&v31 + 1);
  v15 = swift_getObjectType();
  (*(v14 + 56))(&v30, v15, v14);
  v16 = v30;
  if (*(&v30 + 1) >> 62)
  {
    if (*(&v30 + 1) >> 62 != 2)
    {
LABEL_40:
      *&v31 = 0;
      *(&v31 + 1) = 0xE000000000000000;
      sub_1D8C85124();

      *&v31 = 0x73696D2065707954;
      *(&v31 + 1) = 0xEF203A686374616DLL;
      v27 = (*(*(v9 + 8) + 8))(ObjectType);
      MEMORY[0x1DA7255C0](v27);

      MEMORY[0x1DA7255C0](0x3A646C656966202CLL, 0xE900000000000020);
      MEMORY[0x1DA7255C0](a3, a4);
      result = sub_1D8C851F4();
      __break(1u);
      return result;
    }

    if (__PAIR128__(0x8000000000000000, 2) >= v30)
    {
      if (!(v30 | *(&v30 + 1) ^ 0x8000000000000000))
      {
        goto LABEL_21;
      }

      if (*(&v30 + 1) != 0x8000000000000000 || v30 != 1)
      {
        if (*(&v30 + 1) != 0x8000000000000000 || v30 != 2)
        {
          goto LABEL_40;
        }

        goto LABEL_21;
      }
    }

    else
    {
      v19 = v30 - 5;
      if ((v30 - 5) <= 7)
      {
        if (((1 << v19) & 0x15) != 0)
        {
          v31 = a1;
          v32 = 0;
          v33 = 0;
          v20 = 512;
LABEL_32:
          v34 = v20;
          goto LABEL_33;
        }

        if (((1 << v19) & 0xA) != 0)
        {
          v31 = a1;
          v32 = 0;
          v33 = 0;
          v20 = 768;
          goto LABEL_32;
        }

        if (v30 == 12)
        {
          v31 = a1 != 0;
          v32 = 0;
          v33 = 0;
          v34 = 1536;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v29 = *(v4 + 16);
          sub_1D8C7590C(&v31, a3, a4, isUniquelyReferenced_nonNull_native);
          swift_unknownObjectRelease();

          goto LABEL_5;
        }
      }

      if (*(&v30 + 1) != 0x8000000000000000 || v30 != 3)
      {
        if (*(&v30 + 1) != 0x8000000000000000 || v30 != 4)
        {
          goto LABEL_40;
        }

LABEL_21:
        v31 = a1;
        v32 = 0;
        v33 = 0;
        v34 = 0;
LABEL_33:
        v25 = swift_isUniquelyReferenced_nonNull_native();
        *&v30 = *(v4 + 16);
        sub_1D8C7590C(&v31, a3, a4, v25);
        swift_unknownObjectRelease();

        v18 = v30;
        goto LABEL_34;
      }
    }

    v31 = a1;
    v32 = 0;
    v33 = 0;
    v20 = 256;
    goto LABEL_32;
  }

  v31 = v30;
  v32 = a1;
  v33 = 0;
  v34 = 1793;
  swift_unknownObjectRetain();
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v29 = *(v4 + 16);
  sub_1D8C7590C(&v31, a3, a4, v17);
  swift_unknownObjectRelease();

  result = sub_1D8C2BBF0(v16, *(&v16 + 1));
LABEL_5:
  v18 = v29;
LABEL_34:
  *(v4 + 16) = v18;
  return result;
}

uint64_t sub_1D8C6F4A8(unint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  v4 = a3[1];
  if (*a1)
  {
    v5 = 2560;
  }

  else
  {
    v5 = -4096;
  }

  v7 = *a1;
  v8 = 0;
  v9 = 0;
  v10 = v5;

  return sub_1D8C6E80C(&v7, v3, v4);
}

void sub_1D8C6F684(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 80);
  v4 = *(*a1 + 96);
  v5 = *(*a1 + 104);
  v6 = *(*a1 + 88);
  if (a2)
  {
    if (v3)
    {
      *v2 = v3;
      *(v2 + 8) = 0;
      *(v2 + 16) = 0;
      *(v2 + 24) = 0;
      *(v2 + 32) = 2560;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v9 = *(v5 + 16);
      sub_1D8C7590C(v2, v6, v4, isUniquelyReferenced_nonNull_native);

      *(v5 + 16) = v9;
    }

    else
    {

      sub_1D8C75164(v6, v4, &v9);

      sub_1D8C31D74(v9, v10, v11, v12, v13);
    }
  }

  else if (v3)
  {
    *(v2 + 40) = v3;
    *(v2 + 48) = 0;
    *(v2 + 56) = 0;
    *(v2 + 64) = 0;
    *(v2 + 72) = 2560;

    v8 = swift_isUniquelyReferenced_nonNull_native();
    v9 = *(v5 + 16);
    sub_1D8C7590C((v2 + 40), v6, v4, v8);

    *(v5 + 16) = v9;
  }

  else
  {

    sub_1D8C75164(v6, v4, &v9);

    sub_1D8C31D74(v9, v10, v11, v12, v13);
  }

  free(v2);
}

uint64_t sub_1D8C6FB7C(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  v4 = a3[1];
  v5 = *a1;
  v6 = a1[1];

  return SchematizedDataComposer.subscript.setter(v5, v6, v3, v4);
}

void (*SchematizedDataComposer.subscript.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x28uLL);
  }

  v8 = v7;
  *a1 = v7;
  v7[3] = a3;
  v7[4] = v3;
  v7[2] = a2;
  *v7 = SchematizedDataComposer.subscript.getter(a2, a3);
  v8[1] = v9;
  return sub_1D8C6FC88;
}

{
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x78uLL);
  }

  v8 = v7;
  *a1 = v7;
  v7[13] = a3;
  v7[14] = v3;
  v7[12] = a2;
  v7[10] = SchematizedDataComposer.subscript.getter(a2, a3);
  v8[11] = v9;
  return sub_1D8C6FFCC;
}

void sub_1D8C6FC88(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = **a1;
  v4 = (*a1)[1];
  v5 = (*a1)[3];
  v6 = (*a1)[2];
  if (a2)
  {

    SchematizedDataComposer.subscript.setter(v3, v4, v6, v5);
  }

  else
  {

    SchematizedDataComposer.subscript.setter(v3, v4, v6, v5);
  }

  free(v2);
}

uint64_t sub_1D8C6FE8C(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  v4 = a3[1];
  v5 = *a1;
  v6 = a1[1];
  if (v6 >> 60 == 15)
  {
    v7 = 0;
  }

  else
  {
    v7 = *a1;
  }

  if (v6 >> 60 == 15)
  {
    v8 = 0;
  }

  else
  {
    v8 = a1[1];
  }

  if (v6 >> 60 == 15)
  {
    v9 = -4096;
  }

  else
  {
    v9 = 2304;
  }

  *&v11 = v7;
  *(&v11 + 1) = v8;
  v12 = 0;
  v13 = 0;
  v14 = v9;

  sub_1D8C2C5D0(v5, v6);
  return sub_1D8C6E80C(&v11, v3, v4);
}

void sub_1D8C6FFCC(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[13];
  v4 = (*a1)[14];
  v5 = (*a1)[11];
  v6 = (*a1)[12];
  if (a2)
  {
    if (v5 >> 60 == 15)
    {

      sub_1D8C75164(v6, v3, &v10);

      sub_1D8C31D74(v10, v11, v12, v13, v14);
    }

    else
    {
      v7 = *(v2 + 80);
      *v2 = v7;
      *(v2 + 8) = v5;
      *(v2 + 16) = 0;
      *(v2 + 24) = 0;
      *(v2 + 32) = 2304;

      sub_1D8C2C5D0(v7, v5);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v10 = *(v4 + 16);
      sub_1D8C7590C(v2, v6, v3, isUniquelyReferenced_nonNull_native);

      *(v4 + 16) = v10;
    }

    sub_1D8C2C670(*(v2 + 80), *(v2 + 88));
  }

  else if (v5 >> 60 == 15)
  {

    sub_1D8C75164(v6, v3, &v10);

    sub_1D8C31D74(v10, v11, v12, v13, v14);
  }

  else
  {
    *(v2 + 40) = *(v2 + 80);
    *(v2 + 48) = v5;
    *(v2 + 56) = 0;
    *(v2 + 64) = 0;
    *(v2 + 72) = 2304;

    v9 = swift_isUniquelyReferenced_nonNull_native();
    v10 = *(v4 + 16);
    sub_1D8C7590C((v2 + 40), v6, v3, v9);

    *(v4 + 16) = v10;
  }

  free(v2);
}

void (*SchematizedDataComposer.subscript.modify(void *a1, uint64_t a2, uint64_t a3))(unint64_t **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x28uLL);
  }

  v8 = v7;
  *a1 = v7;
  v7[3] = a3;
  v7[4] = v3;
  v7[2] = a2;
  *v7 = SchematizedDataComposer.subscript.getter(a2, a3);
  *(v8 + 8) = v9 & 1;
  return sub_1D8C705DC;
}

void sub_1D8C705DC(unint64_t **a1)
{
  v1 = *a1;
  v2 = (*a1)[3];
  v3 = (*a1)[2];
  v4 = **a1;
  v5 = *(*a1 + 8);

  SchematizedDataComposer.subscript.setter(v4, v5, v3, v2);

  free(v1);
}

uint64_t sub_1D8C707B8(unsigned __int8 *a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  v4 = a3[1];
  v5 = *a1;
  v6 = v5 & 1;
  if (v5 == 2)
  {
    v7 = -4096;
  }

  else
  {
    v7 = 1536;
  }

  v9 = v6;
  v10 = 0;
  v11 = 0;
  v12 = v7;

  return sub_1D8C6E80C(&v9, v3, v4);
}

uint64_t SchematizedDataComposer.subscript.setter(char a1, uint64_t a2, uint64_t a3)
{
  if (a1 == 2)
  {
    sub_1D8C75164(a2, a3, &v9);

    return sub_1D8C31D74(v9, *(&v9 + 1), v10, v11, v12);
  }

  else
  {
    v9 = a1 & 1;
    v10 = 0;
    v11 = 0;
    v12 = 1536;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *(v3 + 16);
    sub_1D8C7590C(&v9, a2, a3, isUniquelyReferenced_nonNull_native);

    *(v3 + 16) = v8;
  }

  return result;
}

void (*SchematizedDataComposer.subscript.modify(uint64_t *a1, uint64_t a2, uint64_t a3))(char **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x68uLL);
  }

  *a1 = v7;
  *(v7 + 88) = a3;
  *(v7 + 96) = v3;
  *(v7 + 80) = a2;
  *(v7 + 34) = SchematizedDataComposer.subscript.getter(a2, a3);
  return sub_1D8C7099C;
}

void sub_1D8C7099C(char **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[34];
  v4 = *(*a1 + 11);
  v5 = *(*a1 + 12);
  v6 = *(*a1 + 10);
  if ((a2 & 1) == 0)
  {
    if (v3 != 2)
    {
      *(v2 + 5) = v3 & 1;
      *(v2 + 6) = 0;
      *(v2 + 7) = 0;
      *(v2 + 8) = 0;
      *(v2 + 36) = 1536;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v9[0] = *(v5 + 16);
      v8 = (v2 + 40);
      goto LABEL_7;
    }

LABEL_6:

    sub_1D8C75164(v6, v4, v9);

    sub_1D8C31D74(v9[0], v9[1], v9[2], v9[3], v10);
    goto LABEL_8;
  }

  if (v3 == 2)
  {
    goto LABEL_6;
  }

  *v2 = v3 & 1;
  *(v2 + 1) = 0;
  *(v2 + 2) = 0;
  *(v2 + 3) = 0;
  *(v2 + 16) = 1536;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9[0] = *(v5 + 16);
  v8 = v2;
LABEL_7:
  sub_1D8C7590C(v8, v6, v4, isUniquelyReferenced_nonNull_native);

  *(v5 + 16) = v9[0];
LABEL_8:

  free(v2);
}

uint64_t sub_1D8C70C44(unsigned int *a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  v4 = a3[1];
  v5 = *a1;
  if (*(a1 + 4))
  {
    v5 = 0;
    v6 = -4096;
  }

  else
  {
    v6 = 0;
  }

  v8 = v5;
  v9 = 0;
  v10 = 0;
  v11 = v6;

  return sub_1D8C6E80C(&v8, v3, v4);
}

void (*SchematizedDataComposer.subscript.modify(void *a1, uint64_t a2, uint64_t a3))(unsigned int **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x70uLL);
  }

  v8 = v7;
  *a1 = v7;
  v7[12] = a3;
  v7[13] = v3;
  v7[11] = a2;
  v9 = SchematizedDataComposer.subscript.getter(a2, a3);
  *(v8 + 9) = v9;
  *(v8 + 40) = BYTE4(v9) & 1;
  return sub_1D8C70D70;
}

void sub_1D8C70D70(unsigned int **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = *(*a1 + 13);
  v5 = *(*a1 + 11);
  if ((a2 & 1) == 0)
  {
    if (((*a1)[10] & 1) == 0)
    {
      *(v2 + 6) = v2[9];
      *(v2 + 7) = 0;
      *(v2 + 8) = 0;
      *(v2 + 9) = 0;
      *(v2 + 40) = 0;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v8[0] = *(v4 + 16);
      v7 = (v2 + 12);
      goto LABEL_7;
    }

LABEL_5:

    sub_1D8C75164(v5, v3, v8);

    sub_1D8C31D74(v8[0], v8[1], v8[2], v8[3], v9);
    goto LABEL_8;
  }

  if ((*a1)[10])
  {
    goto LABEL_5;
  }

  *v2 = v2[9];
  *(v2 + 1) = 0;
  *(v2 + 2) = 0;
  *(v2 + 3) = 0;
  *(v2 + 16) = 0;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8[0] = *(v4 + 16);
  v7 = v2;
LABEL_7:
  sub_1D8C7590C(v7, v5, v3, isUniquelyReferenced_nonNull_native);

  *(v4 + 16) = v8[0];
LABEL_8:

  free(v2);
}

uint64_t sub_1D8C71000(unint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  v4 = a3[1];
  v5 = *a1;
  if (*(a1 + 8))
  {
    v5 = 0;
    v6 = -4096;
  }

  else
  {
    v6 = 512;
  }

  v8 = v5;
  v9 = 0;
  v10 = 0;
  v11 = v6;

  return sub_1D8C6E80C(&v8, v3, v4);
}

uint64_t SchematizedDataComposer.subscript.setter(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return sub_1D8C71D18(a1, a2, a3, a4, 0x200u);
}

{
  return sub_1D8C71D18(a1, a2, a3, a4, 0x300u);
}

{
  return sub_1D8C71D18(a1, a2, a3, a4, 0x500u);
}

void (*SchematizedDataComposer.subscript.modify(void *a1, uint64_t a2, uint64_t a3))(char **a1, uint64_t a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x78uLL);
  }

  v8 = v7;
  *a1 = v7;
  v7[13] = a3;
  v7[14] = v3;
  v7[12] = a2;
  v7[10] = SchematizedDataComposer.subscript.getter(a2, a3);
  *(v8 + 88) = 0;
  return sub_1D8C71134;
}

{
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x78uLL);
  }

  v8 = v7;
  *a1 = v7;
  v7[13] = a3;
  v7[14] = v3;
  v7[12] = a2;
  v7[10] = SchematizedDataComposer.subscript.getter(a2, a3);
  *(v8 + 88) = 0;
  return sub_1D8C71694;
}

{
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x78uLL);
  }

  v8 = v7;
  *a1 = v7;
  v7[13] = a3;
  v7[14] = v3;
  v7[12] = a2;
  v7[10] = SchematizedDataComposer.subscript.getter(a2, a3);
  *(v8 + 88) = 0;
  return sub_1D8C71E7C;
}

uint64_t sub_1D8C712B4(unsigned int *a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  v4 = a3[1];
  v5 = *a1;
  if (*(a1 + 4))
  {
    v5 = 0;
    v6 = -4096;
  }

  else
  {
    v6 = 256;
  }

  v8 = v5;
  v9 = 0;
  v10 = 0;
  v11 = v6;

  return sub_1D8C6E80C(&v8, v3, v4);
}

void (*SchematizedDataComposer.subscript.modify(void *a1, uint64_t a2, uint64_t a3))(unsigned int **a1, uint64_t a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x70uLL);
  }

  v8 = v7;
  *a1 = v7;
  v7[12] = a3;
  v7[13] = v3;
  v7[11] = a2;
  v9 = SchematizedDataComposer.subscript.getter(a2, a3);
  *(v8 + 9) = v9;
  *(v8 + 40) = BYTE4(v9) & 1;
  return sub_1D8C713EC;
}

{
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x70uLL);
  }

  v8 = v7;
  *a1 = v7;
  v7[12] = a3;
  v7[13] = v3;
  v7[11] = a2;
  v9 = SchematizedDataComposer.subscript.getter(a2, a3);
  *(v8 + 9) = v9;
  *(v8 + 40) = BYTE4(v9) & 1;
  return sub_1D8C71A00;
}

uint64_t sub_1D8C71560(unint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  v4 = a3[1];
  v5 = *a1;
  if (*(a1 + 8))
  {
    v5 = 0;
    v6 = -4096;
  }

  else
  {
    v6 = 768;
  }

  v8 = v5;
  v9 = 0;
  v10 = 0;
  v11 = v6;

  return sub_1D8C6E80C(&v8, v3, v4);
}

uint64_t sub_1D8C71814(unsigned int *a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  v4 = a3[1];
  v5 = *a1;
  if (*(a1 + 4))
  {
    v5 = 0;
    v6 = -4096;
  }

  else
  {
    v6 = 1024;
  }

  v8 = v5;
  v9 = 0;
  v10 = 0;
  v11 = v6;

  return sub_1D8C6E80C(&v8, v3, v4);
}

uint64_t sub_1D8C71894(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int16 a4)
{
  if ((a1 & 0x100000000) != 0)
  {
    sub_1D8C75164(a2, a3, &v10);

    return sub_1D8C31D74(v10, *(&v10 + 1), v11, v12, v13);
  }

  else
  {
    v10 = a1;
    v11 = 0;
    v12 = 0;
    v13 = a4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *(v4 + 16);
    sub_1D8C7590C(&v10, a2, a3, isUniquelyReferenced_nonNull_native);

    *(v4 + 16) = v9;
  }

  return result;
}

void sub_1D8C71A08(unsigned int **a1, char a2, __int16 a3)
{
  v3 = *a1;
  v4 = *(*a1 + 12);
  v5 = *(*a1 + 13);
  v6 = *(*a1 + 11);
  if ((a2 & 1) == 0)
  {
    if (((*a1)[10] & 1) == 0)
    {
      *(v3 + 6) = v3[9];
      *(v3 + 7) = 0;
      *(v3 + 8) = 0;
      *(v3 + 9) = 0;
      *(v3 + 40) = a3;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v9[0] = *(v5 + 16);
      v8 = (v3 + 12);
      goto LABEL_7;
    }

LABEL_5:

    sub_1D8C75164(v6, v4, v9);

    sub_1D8C31D74(v9[0], v9[1], v9[2], v9[3], v10);
    goto LABEL_8;
  }

  if ((*a1)[10])
  {
    goto LABEL_5;
  }

  *v3 = v3[9];
  *(v3 + 1) = 0;
  *(v3 + 2) = 0;
  *(v3 + 3) = 0;
  *(v3 + 16) = a3;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9[0] = *(v5 + 16);
  v8 = v3;
LABEL_7:
  sub_1D8C7590C(v8, v6, v4, isUniquelyReferenced_nonNull_native);

  *(v5 + 16) = v9[0];
LABEL_8:

  free(v3);
}

uint64_t sub_1D8C71C98(unint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  v4 = a3[1];
  v5 = *a1;
  if (*(a1 + 8))
  {
    v5 = 0;
    v6 = -4096;
  }

  else
  {
    v6 = 1280;
  }

  v8 = v5;
  v9 = 0;
  v10 = 0;
  v11 = v6;

  return sub_1D8C6E80C(&v8, v3, v4);
}

uint64_t sub_1D8C71D18(unint64_t a1, char a2, uint64_t a3, uint64_t a4, unsigned __int16 a5)
{
  if (a2)
  {
    sub_1D8C75164(a3, a4, &v11);

    return sub_1D8C31D74(v11, *(&v11 + 1), v12, v13, v14);
  }

  else
  {
    v11 = a1;
    v12 = 0;
    v13 = 0;
    v14 = a5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *(v5 + 16);
    sub_1D8C7590C(&v11, a3, a4, isUniquelyReferenced_nonNull_native);

    *(v5 + 16) = v10;
  }

  return result;
}

void sub_1D8C71E84(char **a1, char a2, __int16 a3)
{
  v3 = *a1;
  v4 = *(*a1 + 13);
  v5 = *(*a1 + 14);
  v6 = *(*a1 + 12);
  if ((a2 & 1) == 0)
  {
    if (((*a1)[88] & 1) == 0)
    {
      *(v3 + 5) = *(v3 + 10);
      *(v3 + 6) = 0;
      *(v3 + 7) = 0;
      *(v3 + 8) = 0;
      *(v3 + 36) = a3;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v9[0] = *(v5 + 16);
      v8 = (v3 + 40);
      goto LABEL_7;
    }

LABEL_5:

    sub_1D8C75164(v6, v4, v9);

    sub_1D8C31D74(v9[0], v9[1], v9[2], v9[3], v10);
    goto LABEL_8;
  }

  if ((*a1)[88])
  {
    goto LABEL_5;
  }

  *v3 = *(v3 + 10);
  *(v3 + 1) = 0;
  *(v3 + 2) = 0;
  *(v3 + 3) = 0;
  *(v3 + 16) = a3;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9[0] = *(v5 + 16);
  v8 = v3;
LABEL_7:
  sub_1D8C7590C(v8, v6, v4, isUniquelyReferenced_nonNull_native);

  *(v5 + 16) = v9[0];
LABEL_8:

  free(v3);
}

uint64_t sub_1D8C71FA8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAB008, &unk_1D8C88900);
  v46 = v4;
  result = sub_1D8C85224();
  v7 = result;
  if (*(v5 + 16))
  {
    v43 = v3;
    v44 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    v45 = result;
    while (v12)
    {
      v21 = __clz(__rbit64(v12));
      v47 = (v12 - 1) & v12;
LABEL_15:
      v24 = v21 | (v8 << 6);
      v25 = (*(v5 + 48) + 16 * v24);
      v26 = v25[1];
      v49 = *v25;
      v27 = (*(v5 + 56) + 40 * v24);
      v28 = *v27;
      v29 = v27[1];
      v30 = v27[2];
      v31 = v27[3];
      v32 = v27[4];
      if ((v46 & 1) == 0)
      {

        sub_1D8C2F16C(v28, v29, v30, v31, v32);
      }

      v48 = v30;
      v33 = v29;
      v34 = v28;
      sub_1D8C853B4();
      sub_1D8C84E24();
      result = sub_1D8C853E4();
      v7 = v45;
      v35 = -1 << *(v45 + 32);
      v36 = result & ~v35;
      v37 = v36 >> 6;
      if (((-1 << v36) & ~*(v14 + 8 * (v36 >> 6))) == 0)
      {
        v38 = 0;
        v39 = (63 - v35) >> 6;
        v16 = v48;
        v17 = v32;
        v18 = v31;
        while (++v37 != v39 || (v38 & 1) == 0)
        {
          v40 = v37 == v39;
          if (v37 == v39)
          {
            v37 = 0;
          }

          v38 |= v40;
          v41 = *(v14 + 8 * v37);
          if (v41 != -1)
          {
            v15 = __clz(__rbit64(~v41)) + (v37 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v36) & ~*(v14 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
      v16 = v48;
      v17 = v32;
      v18 = v31;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v19 = (*(v45 + 48) + 16 * v15);
      *v19 = v49;
      v19[1] = v26;
      v20 = (*(v45 + 56) + 40 * v15);
      *v20 = v34;
      v20[1] = v33;
      v20[2] = v16;
      v20[3] = v18;
      v20[4] = v17;
      ++*(v45 + 16);
      v5 = v44;
      v12 = v47;
    }

    v22 = v8;
    while (1)
    {
      v8 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v23 = v9[v8];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v47 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if (v46)
    {
      v42 = 1 << *(v5 + 32);
      if (v42 >= 64)
      {
        bzero(v9, ((v42 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v42;
      }

      *(v5 + 16) = 0;
    }

    v3 = v43;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_1D8C722BC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, void (*a5)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v6 = v5;
  v7 = a2;
  v8 = *v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v50 = v7;
  result = sub_1D8C85224();
  v10 = result;
  if (*(v8 + 16))
  {
    v46 = v6;
    v11 = 0;
    v12 = (v8 + 64);
    v13 = 1 << *(v8 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v8 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    v48 = v8;
    v49 = result;
    while (v15)
    {
      v24 = __clz(__rbit64(v15));
      v51 = (v15 - 1) & v15;
LABEL_15:
      v27 = v24 | (v11 << 6);
      v28 = (*(v8 + 48) + 16 * v27);
      v29 = v28[1];
      v53 = *v28;
      v30 = *(v8 + 56) + 40 * v27;
      v31 = *v30;
      v32 = *(v30 + 8);
      v33 = *(v30 + 16);
      v34 = *(v30 + 24);
      v35 = *(v30 + 32);
      if ((v50 & 1) == 0)
      {

        a5(v31, v32, v33, v34, v35);
      }

      v52 = v33;
      v36 = v32;
      v37 = v31;
      sub_1D8C853B4();
      sub_1D8C84E24();
      result = sub_1D8C853E4();
      v10 = v49;
      v38 = -1 << *(v49 + 32);
      v39 = result & ~v38;
      v40 = v39 >> 6;
      if (((-1 << v39) & ~*(v17 + 8 * (v39 >> 6))) == 0)
      {
        v41 = 0;
        v42 = (63 - v38) >> 6;
        v19 = v52;
        v20 = v34;
        v21 = v35;
        while (++v40 != v42 || (v41 & 1) == 0)
        {
          v43 = v40 == v42;
          if (v40 == v42)
          {
            v40 = 0;
          }

          v41 |= v43;
          v44 = *(v17 + 8 * v40);
          if (v44 != -1)
          {
            v18 = __clz(__rbit64(~v44)) + (v40 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v39) & ~*(v17 + 8 * (v39 >> 6)))) | v39 & 0x7FFFFFFFFFFFFFC0;
      v19 = v52;
      v20 = v34;
      v21 = v35;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v22 = (*(v49 + 48) + 16 * v18);
      *v22 = v53;
      v22[1] = v29;
      v23 = *(v49 + 56) + 40 * v18;
      *v23 = v37;
      *(v23 + 8) = v36;
      *(v23 + 16) = v19;
      *(v23 + 24) = v20;
      *(v23 + 32) = v21;
      ++*(v49 + 16);
      v8 = v48;
      v15 = v51;
    }

    v25 = v11;
    while (1)
    {
      v11 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v11 >= v16)
      {
        break;
      }

      v26 = v12[v11];
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v51 = (v26 - 1) & v26;
        goto LABEL_15;
      }
    }

    if ((v50 & 1) == 0)
    {

      v6 = v46;
      goto LABEL_33;
    }

    v45 = 1 << *(v8 + 32);
    v6 = v46;
    if (v45 >= 64)
    {
      bzero(v12, ((v45 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v45;
    }

    *(v8 + 16) = 0;
  }

LABEL_33:
  *v6 = v10;
  return result;
}

uint64_t sub_1D8C725E4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAB060, &qword_1D8C85C60);
  v39 = v4;
  result = sub_1D8C85224();
  v7 = result;
  if (*(v5 + 16))
  {
    v38 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(v5 + 56) + (v21 << 6);
      if (v39)
      {
        v41 = *v25;
        v40 = *(v25 + 16);
        v42 = *(v25 + 24);
        v43 = *(v25 + 8);
        v44 = *(v25 + 32);
        v46 = *(v25 + 36);
        v26 = *(v25 + 40);
        v47 = *(v25 + 48);
        v45 = *(v25 + 56);
      }

      else
      {
        v27 = *v25;
        v28 = *(v25 + 16);
        v29 = *(v25 + 48);
        v49 = *(v25 + 32);
        v50 = v29;
        v48[0] = v27;
        v48[1] = v28;
        v45 = *(&v29 + 1);
        v47 = v29;
        v46 = DWORD1(v49);
        v26 = BYTE8(v49);
        v44 = v49;
        v42 = *(&v28 + 1);
        v43 = *(&v27 + 1);
        v40 = v28;
        v41 = v27;

        sub_1D8C2EE54(v48, v51);
      }

      sub_1D8C853B4();
      sub_1D8C84E24();
      result = sub_1D8C853E4();
      v30 = -1 << *(v7 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v14 + 8 * (v31 >> 6))) == 0)
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
          v36 = *(v14 + 8 * v32);
          if (v36 != -1)
          {
            v15 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v31) & ~*(v14 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      LOBYTE(v48[0]) = v26;
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v23;
      v16[1] = v24;
      v17 = *(v7 + 56) + (v15 << 6);
      *v17 = v41;
      *(v17 + 8) = v43;
      *(v17 + 16) = v40;
      *(v17 + 24) = v42;
      *(v17 + 32) = v44;
      *(v17 + 36) = v46;
      *(v17 + 40) = v26;
      *(v17 + 48) = v47;
      *(v17 + 56) = v45;
      ++*(v7 + 16);
      v5 = v38;
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v2;
    if (v37 >= 64)
    {
      bzero(v9, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_1D8C72964(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAB010, &qword_1D8C85C10);
  result = sub_1D8C85224();
  v7 = result;
  if (*(v5 + 16))
  {
    v29 = v3;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v30 = *(*(v5 + 56) + 16 * v19);
      if ((v4 & 1) == 0)
      {
        swift_unknownObjectRetain();
      }

      result = sub_1D8C853A4();
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

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 16 * v15) = v30;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
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

    if (v4)
    {
      v28 = 1 << *(v5 + 32);
      if (v28 >= 64)
      {
        bzero((v5 + 64), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v28;
      }

      *(v5 + 16) = 0;
    }

    v3 = v29;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_1D8C72BD8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAB018, &qword_1D8C85C18);
  v37 = v4;
  result = sub_1D8C85224();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = (*(v5 + 56) + (v21 << 6));
      if (v37)
      {
        v42 = *v25;
        v43 = v25[1];
        v44 = v25[2];
        v45 = v25[3];
      }

      else
      {
        v27 = v25[2];
        v26 = v25[3];
        v28 = v25[1];
        v38 = *v25;
        v39 = v28;
        v40 = v27;
        v41 = v26;

        sub_1D8C7629C(&v38, &v42);
        v42 = v38;
        v43 = v39;
        v44 = v40;
        v45 = v41;
      }

      sub_1D8C853B4();
      sub_1D8C84E24();
      result = sub_1D8C853E4();
      v29 = -1 << *(v7 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v14 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v14 + 8 * v31);
          if (v35 != -1)
          {
            v15 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v30) & ~*(v14 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v23;
      v16[1] = v24;
      v17 = (*(v7 + 56) + (v15 << 6));
      *v17 = v42;
      v17[1] = v43;
      v17[2] = v44;
      v17[3] = v45;
      ++*(v7 + 16);
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v2;
    if (v36 >= 64)
    {
      bzero((v5 + 64), ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_1D8C72EF4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAB030, &qword_1D8C85C30);
  v34 = v4;
  result = sub_1D8C85224();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_1D8C853B4();
      sub_1D8C84E24();
      result = sub_1D8C853E4();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1D8C73194(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAB3B8, &qword_1D8C88528);
  v46 = v4;
  result = sub_1D8C85224();
  v7 = result;
  if (*(v5 + 16))
  {
    v43 = v3;
    v44 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    v45 = result;
    while (v12)
    {
      v21 = __clz(__rbit64(v12));
      v47 = (v12 - 1) & v12;
LABEL_15:
      v24 = v21 | (v8 << 6);
      v25 = (*(v5 + 48) + 16 * v24);
      v26 = v25[1];
      v49 = *v25;
      v27 = *(v5 + 56) + 40 * v24;
      v28 = *v27;
      v29 = *(v27 + 8);
      v30 = *(v27 + 16);
      v31 = *(v27 + 24);
      v32 = *(v27 + 32);
      if ((v46 & 1) == 0)
      {

        sub_1D8C60608(v28, v29, v30, v31, v32);
      }

      v48 = v30;
      v33 = v29;
      v34 = v28;
      sub_1D8C853B4();
      sub_1D8C84E24();
      result = sub_1D8C853E4();
      v7 = v45;
      v35 = -1 << *(v45 + 32);
      v36 = result & ~v35;
      v37 = v36 >> 6;
      if (((-1 << v36) & ~*(v14 + 8 * (v36 >> 6))) == 0)
      {
        v38 = 0;
        v39 = (63 - v35) >> 6;
        v16 = v48;
        v17 = v31;
        v18 = v32;
        while (++v37 != v39 || (v38 & 1) == 0)
        {
          v40 = v37 == v39;
          if (v37 == v39)
          {
            v37 = 0;
          }

          v38 |= v40;
          v41 = *(v14 + 8 * v37);
          if (v41 != -1)
          {
            v15 = __clz(__rbit64(~v41)) + (v37 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v36) & ~*(v14 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
      v16 = v48;
      v17 = v31;
      v18 = v32;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v19 = (*(v45 + 48) + 16 * v15);
      *v19 = v49;
      v19[1] = v26;
      v20 = *(v45 + 56) + 40 * v15;
      *v20 = v34;
      *(v20 + 8) = v33;
      *(v20 + 16) = v16;
      *(v20 + 24) = v17;
      *(v20 + 32) = v18;
      ++*(v45 + 16);
      v5 = v44;
      v12 = v47;
    }

    v22 = v8;
    while (1)
    {
      v8 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v23 = v9[v8];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v47 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if (v46)
    {
      v42 = 1 << *(v5 + 32);
      if (v42 >= 64)
      {
        bzero(v9, ((v42 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v42;
      }

      *(v5 + 16) = 0;
    }

    v3 = v43;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_1D8C734B4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAB050, &qword_1D8C85C50);
  v44 = v4;
  result = sub_1D8C85224();
  v7 = result;
  if (*(v5 + 16))
  {
    v41 = v3;
    v42 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    v43 = result;
    while (v12)
    {
      v20 = __clz(__rbit64(v12));
      v45 = (v12 - 1) & v12;
LABEL_15:
      v23 = v20 | (v8 << 6);
      v24 = (*(v5 + 48) + 16 * v23);
      v25 = v24[1];
      v47 = *v24;
      v26 = (*(v5 + 56) + 32 * v23);
      v27 = *v26;
      v28 = v26[1];
      v29 = v26[2];
      v30 = v26[3];
      if ((v44 & 1) == 0)
      {

        sub_1D8C2C5D0(v29, v30);
      }

      v46 = v29;
      v31 = v28;
      v32 = v27;
      sub_1D8C853B4();
      sub_1D8C84E24();
      result = sub_1D8C853E4();
      v7 = v43;
      v33 = -1 << *(v43 + 32);
      v34 = result & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v14 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        v16 = v46;
        v17 = v30;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v14 + 8 * v35);
          if (v39 != -1)
          {
            v15 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v34) & ~*(v14 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
      v16 = v46;
      v17 = v30;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v18 = (*(v43 + 48) + 16 * v15);
      *v18 = v47;
      v18[1] = v25;
      v19 = (*(v43 + 56) + 32 * v15);
      *v19 = v32;
      v19[1] = v31;
      v19[2] = v16;
      v19[3] = v17;
      ++*(v43 + 16);
      v5 = v42;
      v12 = v45;
    }

    v21 = v8;
    while (1)
    {
      v8 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v22 = v9[v8];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v45 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v44 & 1) == 0)
    {

      v3 = v41;
      goto LABEL_33;
    }

    v40 = 1 << *(v5 + 32);
    v3 = v41;
    if (v40 >= 64)
    {
      bzero(v9, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v40;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1D8C737B4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAB058, &qword_1D8C85C58);
  v44 = v4;
  result = sub_1D8C85224();
  v7 = result;
  if (*(v5 + 16))
  {
    v41 = v3;
    v42 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    v43 = result;
    while (v12)
    {
      v20 = __clz(__rbit64(v12));
      v45 = (v12 - 1) & v12;
LABEL_15:
      v23 = v20 | (v8 << 6);
      v24 = (*(v5 + 48) + 16 * v23);
      v25 = v24[1];
      v47 = *v24;
      v26 = (*(v5 + 56) + 32 * v23);
      v27 = *v26;
      v28 = v26[1];
      v29 = v26[2];
      v30 = v26[3];
      if ((v44 & 1) == 0)
      {

        sub_1D8C2C5D0(v28, v29);
      }

      v46 = v29;
      v31 = v28;
      v32 = v27;
      sub_1D8C853B4();
      sub_1D8C84E24();
      result = sub_1D8C853E4();
      v7 = v43;
      v33 = -1 << *(v43 + 32);
      v34 = result & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v14 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        v16 = v46;
        v17 = v30;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v14 + 8 * v35);
          if (v39 != -1)
          {
            v15 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v34) & ~*(v14 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
      v16 = v46;
      v17 = v30;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v18 = (*(v43 + 48) + 16 * v15);
      *v18 = v47;
      v18[1] = v25;
      v19 = (*(v43 + 56) + 32 * v15);
      *v19 = v32;
      v19[1] = v31;
      v19[2] = v16;
      v19[3] = v17;
      ++*(v43 + 16);
      v5 = v42;
      v12 = v45;
    }

    v21 = v8;
    while (1)
    {
      v8 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v22 = v9[v8];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v45 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v44 & 1) == 0)
    {

      v3 = v41;
      goto LABEL_33;
    }

    v40 = 1 << *(v5 + 32);
    v3 = v41;
    if (v40 >= 64)
    {
      bzero(v9, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v40;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1D8C73AB4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAB028, &unk_1D8C87F10);
  result = sub_1D8C85224();
  v7 = result;
  if (*(v5 + 16))
  {
    v29 = v3;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v30 = *(*(v5 + 56) + 16 * v19);
      if ((v4 & 1) == 0)
      {
        sub_1D8C2C5E4(v30, *(&v30 + 1));
      }

      result = sub_1D8C853A4();
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

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 16 * v15) = v30;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
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

    if (v4)
    {
      v28 = 1 << *(v5 + 32);
      if (v28 >= 64)
      {
        bzero((v5 + 64), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v28;
      }

      *(v5 + 16) = 0;
    }

    v3 = v29;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_1D8C73D2C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAB038, &qword_1D8C85C38);
  v34 = v4;
  result = sub_1D8C85224();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_1D8C853B4();
      sub_1D8C84E24();
      result = sub_1D8C853E4();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

void sub_1D8C73FD4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAB008, &unk_1D8C88900);
  v27 = v0;
  v1 = *v0;
  v28 = sub_1D8C85214();
  if (*(v1 + 16))
  {
    v2 = (v28 + 64);
    v3 = ((1 << *(v28 + 32)) + 63) >> 6;
    if (v28 != v1 || v2 >= v1 + 64 + 8 * v3)
    {
      memmove(v2, (v1 + 64), 8 * v3);
    }

    v5 = 0;
    *(v28 + 16) = *(v1 + 16);
    v6 = 1 << *(v1 + 32);
    v7 = *(v1 + 64);
    v8 = -1;
    if (v6 < 64)
    {
      v8 = ~(-1 << v6);
    }

    v9 = v8 & v7;
    v10 = (v6 + 63) >> 6;
    if ((v8 & v7) != 0)
    {
      do
      {
        v11 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_17:
        v14 = v11 | (v5 << 6);
        v15 = 16 * v14;
        v16 = (*(v1 + 48) + 16 * v14);
        v18 = *v16;
        v17 = v16[1];
        v14 *= 40;
        v19 = (*(v1 + 56) + v14);
        v20 = *v19;
        v21 = v19[1];
        v22 = v19[2];
        v23 = v19[3];
        v24 = v19[4];
        v25 = (*(v28 + 48) + v15);
        *v25 = v18;
        v25[1] = v17;
        v26 = (*(v28 + 56) + v14);
        *v26 = v20;
        v26[1] = v21;
        v26[2] = v22;
        v26[3] = v23;
        v26[4] = v24;

        sub_1D8C2F16C(v20, v21, v22, v23, v24);
      }

      while (v9);
    }

    v12 = v5;
    while (1)
    {
      v5 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v5 >= v10)
      {
        goto LABEL_19;
      }

      v13 = *(v1 + 64 + 8 * v5);
      ++v12;
      if (v13)
      {
        v11 = __clz(__rbit64(v13));
        v9 = (v13 - 1) & v13;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v27 = v28;
  }
}

void *sub_1D8C74198(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v30 = v3;
  v4 = *v3;
  v32 = sub_1D8C85214();
  if (*(v4 + 16))
  {
    result = (v32 + 64);
    v6 = ((1 << *(v32 + 32)) + 63) >> 6;
    if (v32 != v4 || result >= v4 + 64 + 8 * v6)
    {
      result = memmove(result, (v4 + 64), 8 * v6);
    }

    v8 = 0;
    *(v32 + 16) = *(v4 + 16);
    v9 = 1 << *(v4 + 32);
    v10 = *(v4 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v4 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v17 *= 40;
        v22 = *(v4 + 56) + v17;
        v23 = *v22;
        v24 = *(v22 + 8);
        v25 = *(v22 + 16);
        v26 = *(v22 + 24);
        v27 = *(v22 + 32);
        v28 = (*(v32 + 48) + v18);
        *v28 = v21;
        v28[1] = v20;
        v29 = *(v32 + 56) + v17;
        *v29 = v23;
        *(v29 + 8) = v24;
        *(v29 + 16) = v25;
        *(v29 + 24) = v26;
        *(v29 + 32) = v27;

        result = a3(v23, v24, v25, v26, v27);
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

      v16 = *(v4 + 64 + 8 * v8);
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

    *v30 = v32;
  }

  return result;
}

void *sub_1D8C7435C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAB060, &qword_1D8C85C60);
  v2 = *v0;
  v3 = sub_1D8C85214();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = *(v2 + 56);
        v20 = (*(v2 + 48) + 16 * v17);
        v22 = *v20;
        v21 = v20[1];
        v17 <<= 6;
        v24 = *(v19 + v17);
        v23 = *(v19 + v17 + 16);
        v25 = *(v19 + v17 + 48);
        v34 = *(v19 + v17 + 32);
        v35 = v25;
        v32 = v24;
        v33 = v23;
        v26 = (*(v4 + 48) + v18);
        *v26 = v22;
        v26[1] = v21;
        v27 = (*(v4 + 56) + v17);
        v28 = v32;
        v29 = v33;
        v30 = v35;
        v27[2] = v34;
        v27[3] = v30;
        *v27 = v28;
        v27[1] = v29;

        result = sub_1D8C2EE54(&v32, &v31);
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_1D8C744FC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAB010, &qword_1D8C85C10);
  v2 = *v0;
  v3 = sub_1D8C85214();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 16 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 16 * v17) = v18;
        result = swift_unknownObjectRetain();
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_1D8C74660()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAB018, &qword_1D8C85C18);
  v2 = *v0;
  v3 = sub_1D8C85214();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = *(v2 + 56);
        v20 = (*(v2 + 48) + 16 * v17);
        v22 = *v20;
        v21 = v20[1];
        v17 <<= 6;
        v24 = *(v19 + v17);
        v23 = *(v19 + v17 + 16);
        v25 = *(v19 + v17 + 48);
        v34 = *(v19 + v17 + 32);
        v35 = v25;
        v32 = v24;
        v33 = v23;
        v26 = (*(v4 + 48) + v18);
        *v26 = v22;
        v26[1] = v21;
        v27 = (*(v4 + 56) + v17);
        v28 = v32;
        v29 = v33;
        v30 = v35;
        v27[2] = v34;
        v27[3] = v30;
        *v27 = v28;
        v27[1] = v29;

        result = sub_1D8C7629C(&v32, &v31);
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_1D8C74800()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAB030, &qword_1D8C85C30);
  v2 = *v0;
  v3 = sub_1D8C85214();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = *(*(v2 + 56) + 8 * v17);
        v22 = (*(v4 + 48) + 16 * v17);
        *v22 = v20;
        v22[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v21;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void sub_1D8C74968()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAB3B8, &qword_1D8C88528);
  v27 = v0;
  v1 = *v0;
  v28 = sub_1D8C85214();
  if (*(v1 + 16))
  {
    v2 = (v28 + 64);
    v3 = ((1 << *(v28 + 32)) + 63) >> 6;
    if (v28 != v1 || v2 >= v1 + 64 + 8 * v3)
    {
      memmove(v2, (v1 + 64), 8 * v3);
    }

    v5 = 0;
    *(v28 + 16) = *(v1 + 16);
    v6 = 1 << *(v1 + 32);
    v7 = *(v1 + 64);
    v8 = -1;
    if (v6 < 64)
    {
      v8 = ~(-1 << v6);
    }

    v9 = v8 & v7;
    v10 = (v6 + 63) >> 6;
    if ((v8 & v7) != 0)
    {
      do
      {
        v11 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_17:
        v14 = v11 | (v5 << 6);
        v15 = 16 * v14;
        v16 = (*(v1 + 48) + 16 * v14);
        v18 = *v16;
        v17 = v16[1];
        v14 *= 40;
        v19 = *(v1 + 56) + v14;
        v20 = *v19;
        v21 = *(v19 + 8);
        v22 = *(v19 + 16);
        v23 = *(v19 + 24);
        v24 = (*(v28 + 48) + v15);
        v25 = *(v19 + 32);
        *v24 = v18;
        v24[1] = v17;
        v26 = *(v28 + 56) + v14;
        *v26 = v20;
        *(v26 + 8) = v21;
        *(v26 + 16) = v22;
        *(v26 + 24) = v23;
        *(v26 + 32) = v25;

        sub_1D8C60608(v20, v21, v22, v23, v25);
      }

      while (v9);
    }

    v12 = v5;
    while (1)
    {
      v5 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v5 >= v10)
      {
        goto LABEL_19;
      }

      v13 = *(v1 + 64 + 8 * v5);
      ++v12;
      if (v13)
      {
        v11 = __clz(__rbit64(v13));
        v9 = (v13 - 1) & v13;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v27 = v28;
  }
}

void sub_1D8C74B2C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAB050, &qword_1D8C85C50);
  v27 = v0;
  v1 = *v0;
  v2 = sub_1D8C85214();
  v3 = v2;
  if (*(v1 + 16))
  {
    v4 = (v2 + 64);
    v5 = ((1 << *(v3 + 32)) + 63) >> 6;
    if (v3 != v1 || v4 >= v1 + 64 + 8 * v5)
    {
      memmove(v4, (v1 + 64), 8 * v5);
    }

    v7 = 0;
    *(v3 + 16) = *(v1 + 16);
    v8 = 1 << *(v1 + 32);
    v9 = *(v1 + 64);
    v10 = -1;
    if (v8 < 64)
    {
      v10 = ~(-1 << v8);
    }

    v11 = v10 & v9;
    v12 = (v8 + 63) >> 6;
    if ((v10 & v9) != 0)
    {
      do
      {
        v13 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
LABEL_17:
        v16 = v13 | (v7 << 6);
        v17 = 16 * v16;
        v18 = *(v1 + 56);
        v19 = (*(v1 + 48) + 16 * v16);
        v20 = v19[1];
        v16 *= 32;
        v21 = *(v18 + v16);
        v22 = *(v18 + v16 + 8);
        v23 = *(v18 + v16 + 16);
        v24 = *(v18 + v16 + 24);
        v25 = (*(v3 + 48) + v17);
        *v25 = *v19;
        v25[1] = v20;
        v26 = (*(v3 + 56) + v16);
        *v26 = v21;
        v26[1] = v22;
        v26[2] = v23;
        v26[3] = v24;

        sub_1D8C2C5D0(v23, v24);
      }

      while (v11);
    }

    v14 = v7;
    while (1)
    {
      v7 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v7 >= v12)
      {
        goto LABEL_19;
      }

      v15 = *(v1 + 64 + 8 * v7);
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

    *v27 = v3;
  }
}

void *sub_1D8C74CDC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAB058, &qword_1D8C85C58);
  v27 = v0;
  v1 = *v0;
  v2 = sub_1D8C85214();
  v3 = v2;
  if (*(v1 + 16))
  {
    result = (v2 + 64);
    v5 = ((1 << *(v3 + 32)) + 63) >> 6;
    if (v3 != v1 || result >= v1 + 64 + 8 * v5)
    {
      result = memmove(result, (v1 + 64), 8 * v5);
    }

    v7 = 0;
    *(v3 + 16) = *(v1 + 16);
    v8 = 1 << *(v1 + 32);
    v9 = *(v1 + 64);
    v10 = -1;
    if (v8 < 64)
    {
      v10 = ~(-1 << v8);
    }

    v11 = v10 & v9;
    v12 = (v8 + 63) >> 6;
    if ((v10 & v9) != 0)
    {
      do
      {
        v13 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
LABEL_17:
        v16 = v13 | (v7 << 6);
        v17 = 16 * v16;
        v18 = *(v1 + 56);
        v19 = (*(v1 + 48) + 16 * v16);
        v20 = v19[1];
        v16 *= 32;
        v21 = *(v18 + v16);
        v22 = *(v18 + v16 + 8);
        v23 = *(v18 + v16 + 16);
        v24 = *(v18 + v16 + 24);
        v25 = (*(v3 + 48) + v17);
        *v25 = *v19;
        v25[1] = v20;
        v26 = (*(v3 + 56) + v16);
        *v26 = v21;
        v26[1] = v22;
        v26[2] = v23;
        v26[3] = v24;

        sub_1D8C2C5D0(v22, v23);
      }

      while (v11);
    }

    v14 = v7;
    while (1)
    {
      v7 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v7 >= v12)
      {
        goto LABEL_19;
      }

      v15 = *(v1 + 64 + 8 * v7);
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

    *v27 = v3;
  }

  return result;
}

void sub_1D8C74E8C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAB028, &unk_1D8C87F10);
  v2 = *v0;
  v3 = sub_1D8C85214();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 16 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 16 * v17) = v18;
        sub_1D8C2C5E4(v18, *(&v18 + 1));
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

      v16 = *(v2 + 64 + 8 * v8);
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
}

void *sub_1D8C74FF4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAB038, &qword_1D8C85C38);
  v2 = *v0;
  v3 = sub_1D8C85214();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
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

      v16 = *(v2 + 64 + 8 * v8);
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

double sub_1D8C75164@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = sub_1D8C4668C(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v15 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1D8C74968();
      v10 = v15;
    }

    v11 = *(v10 + 56) + 40 * v8;
    v12 = *(v11 + 32);
    v13 = *(v11 + 16);
    *a3 = *v11;
    *(a3 + 16) = v13;
    *(a3 + 32) = v12;
    sub_1D8C69D3C(v8, v10);
    *v4 = v10;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    *(a3 + 32) = -4096;
  }

  return result;
}

uint64_t sub_1D8C75294(__int128 *a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5, uint64_t *a6, void (*a7)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t (*a8)(__int128 *, uint64_t))
{
  v12 = v8;
  v17 = *v8;
  v18 = sub_1D8C4668C(a2, a3);
  v20 = *(v17 + 16);
  v21 = (v19 & 1) == 0;
  v22 = __OFADD__(v20, v21);
  v23 = v20 + v21;
  if (v22)
  {
    __break(1u);
    goto LABEL_17;
  }

  v24 = v19;
  v25 = *(v17 + 24);
  if (v25 < v23 || (a4 & 1) == 0)
  {
    if (v25 < v23 || (a4 & 1) != 0)
    {
      sub_1D8C722BC(v23, a4 & 1, a5, a6, a7);
      v18 = sub_1D8C4668C(a2, a3);
      if ((v24 & 1) != (v27 & 1))
      {
LABEL_18:
        result = sub_1D8C85354();
        __break(1u);
        return result;
      }
    }

    else
    {
      v26 = v18;
      sub_1D8C74198(a5, a6, a7);
      v18 = v26;
    }
  }

  v28 = *v12;
  if (v24)
  {
    v29 = v28[7] + 40 * v18;

    return a8(a1, v29);
  }

  v28[(v18 >> 6) + 8] |= 1 << v18;
  v31 = (v28[6] + 16 * v18);
  *v31 = a2;
  v31[1] = a3;
  v32 = v28[7] + 40 * v18;
  v33 = *a1;
  v34 = a1[1];
  *(v32 + 32) = *(a1 + 32);
  *v32 = v33;
  *(v32 + 16) = v34;
  v35 = v28[2];
  v22 = __OFADD__(v35, 1);
  v36 = v35 + 1;
  if (v22)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v28[2] = v36;
}

uint64_t sub_1D8C7546C(__int128 *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1D8C4668C(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_1D8C725E4(v16, a4 & 1);
      v11 = sub_1D8C4668C(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        result = sub_1D8C85354();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_1D8C7435C();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    v22 = v21[7] + (v11 << 6);

    return sub_1D8C763A4(a1, v22);
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v24 = (v21[6] + 16 * v11);
  *v24 = a2;
  v24[1] = a3;
  v25 = (v21[7] + (v11 << 6));
  v26 = *a1;
  v27 = a1[1];
  v28 = a1[3];
  v25[2] = a1[2];
  v25[3] = v28;
  *v25 = v26;
  v25[1] = v27;
  v29 = v21[2];
  v15 = __OFADD__(v29, 1);
  v30 = v29 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v30;
}

uint64_t sub_1D8C755F4(__int128 *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1D8C4668C(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_1D8C72BD8(v16, a4 & 1);
      v11 = sub_1D8C4668C(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        result = sub_1D8C85354();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_1D8C74660();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    v22 = v21[7] + (v11 << 6);

    return sub_1D8C76240(a1, v22);
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v24 = (v21[6] + 16 * v11);
  *v24 = a2;
  v24[1] = a3;
  v25 = (v21[7] + (v11 << 6));
  v26 = *a1;
  v27 = a1[1];
  v28 = a1[3];
  v25[2] = a1[2];
  v25[3] = v28;
  *v25 = v26;
  v25[1] = v27;
  v29 = v21[2];
  v15 = __OFADD__(v29, 1);
  v30 = v29 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v30;
}

uint64_t sub_1D8C7577C(__int128 *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1D8C4668C(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_1D8C71FA8(v16, a4 & 1);
      v11 = sub_1D8C4668C(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        result = sub_1D8C85354();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_1D8C73FD4();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    v22 = v21[7] + 40 * v11;

    return sub_1D8C762F8(a1, v22);
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v24 = (v21[6] + 16 * v11);
  *v24 = a2;
  v24[1] = a3;
  v25 = v21[7] + 40 * v11;
  v26 = *a1;
  v27 = a1[1];
  *(v25 + 32) = *(a1 + 4);
  *v25 = v26;
  *(v25 + 16) = v27;
  v28 = v21[2];
  v15 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v29;
}

uint64_t sub_1D8C7590C(__int128 *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1D8C4668C(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_1D8C73194(v16, a4 & 1);
      v11 = sub_1D8C4668C(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        result = sub_1D8C85354();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_1D8C74968();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    v22 = v21[7] + 40 * v11;

    return sub_1D8C7645C(a1, v22);
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v24 = (v21[6] + 16 * v11);
  *v24 = a2;
  v24[1] = a3;
  v25 = v21[7] + 40 * v11;
  v26 = *a1;
  v27 = a1[1];
  *(v25 + 32) = *(a1 + 16);
  *v25 = v26;
  *(v25 + 16) = v27;
  v28 = v21[2];
  v15 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v29;
}

uint64_t keypath_get_1Tm@<X0>(void *a1@<X1>, uint64_t (*a2)(void, void)@<X3>, uint64_t *a3@<X8>)
{
  result = a2(*a1, a1[1]);
  *a3 = result;
  a3[1] = v5;
  return result;
}

uint64_t keypath_get_17Tm@<X0>(void *a1@<X1>, uint64_t (*a2)(void, void)@<X3>, uint64_t a3@<X8>)
{
  result = a2(*a1, a1[1]);
  *a3 = result;
  *(a3 + 4) = BYTE4(result) & 1;
  return result;
}

uint64_t keypath_get_21Tm@<X0>(void *a1@<X1>, uint64_t (*a2)(void, void)@<X3>, uint64_t a3@<X8>)
{
  result = a2(*a1, a1[1]);
  *a3 = result;
  *(a3 + 8) = 0;
  return result;
}

uint64_t sub_1D8C75B98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  v8 = v7;
  v16 = *v7;
  v17 = sub_1D8C4668C(a5, a6);
  v19 = *(v16 + 16);
  v20 = (v18 & 1) == 0;
  v21 = __OFADD__(v19, v20);
  v22 = v19 + v20;
  if (v21)
  {
    __break(1u);
    goto LABEL_17;
  }

  v23 = v18;
  v24 = *(v16 + 24);
  if (v24 < v22 || (a7 & 1) == 0)
  {
    if (v24 < v22 || (a7 & 1) != 0)
    {
      sub_1D8C734B4(v22, a7 & 1);
      v17 = sub_1D8C4668C(a5, a6);
      if ((v23 & 1) != (v26 & 1))
      {
LABEL_18:
        result = sub_1D8C85354();
        __break(1u);
        return result;
      }
    }

    else
    {
      v25 = v17;
      sub_1D8C74B2C();
      v17 = v25;
    }
  }

  v27 = *v8;
  if (v23)
  {
    v28 = (v27[7] + 32 * v17);
    v29 = v28[2];
    v30 = v28[3];
    *v28 = a1;
    v28[1] = a2;
    v28[2] = a3;
    v28[3] = a4;

    return sub_1D8C2C670(v29, v30);
  }

  v27[(v17 >> 6) + 8] |= 1 << v17;
  v32 = (v27[6] + 16 * v17);
  *v32 = a5;
  v32[1] = a6;
  v33 = (v27[7] + 32 * v17);
  *v33 = a1;
  v33[1] = a2;
  v33[2] = a3;
  v33[3] = a4;
  v34 = v27[2];
  v21 = __OFADD__(v34, 1);
  v35 = v34 + 1;
  if (v21)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v27[2] = v35;
}

uint64_t sub_1D8C75D50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  v8 = v7;
  v16 = *v7;
  v17 = sub_1D8C4668C(a5, a6);
  v19 = *(v16 + 16);
  v20 = (v18 & 1) == 0;
  v21 = __OFADD__(v19, v20);
  v22 = v19 + v20;
  if (v21)
  {
    __break(1u);
    goto LABEL_17;
  }

  v23 = v18;
  v24 = *(v16 + 24);
  if (v24 < v22 || (a7 & 1) == 0)
  {
    if (v24 < v22 || (a7 & 1) != 0)
    {
      sub_1D8C737B4(v22, a7 & 1);
      v17 = sub_1D8C4668C(a5, a6);
      if ((v23 & 1) != (v26 & 1))
      {
LABEL_18:
        result = sub_1D8C85354();
        __break(1u);
        return result;
      }
    }

    else
    {
      v25 = v17;
      sub_1D8C74CDC();
      v17 = v25;
    }
  }

  v27 = *v8;
  if (v23)
  {
    v28 = (v27[7] + 32 * v17);
    v29 = v28[1];
    v30 = v28[2];
    *v28 = a1;
    v28[1] = a2;
    v28[2] = a3;
    v28[3] = a4;

    sub_1D8C2C670(v29, v30);
  }

  v27[(v17 >> 6) + 8] |= 1 << v17;
  v32 = (v27[6] + 16 * v17);
  *v32 = a5;
  v32[1] = a6;
  v33 = (v27[7] + 32 * v17);
  *v33 = a1;
  v33[1] = a2;
  v33[2] = a3;
  v33[3] = a4;
  v34 = v27[2];
  v21 = __OFADD__(v34, 1);
  v35 = v34 + 1;
  if (v21)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v27[2] = v35;
}

unint64_t sub_1D8C75F08(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_1D8C46878(a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_1D8C73AB4(v16, a4 & 1);
      result = sub_1D8C46878(a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_16:
        result = sub_1D8C85354();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_1D8C74E8C();
      result = v19;
    }
  }

  v21 = *v5;
  if ((v17 & 1) == 0)
  {
    v21[(result >> 6) + 8] |= 1 << result;
    *(v21[6] + 8 * result) = a3;
    v25 = (v21[7] + 16 * result);
    *v25 = a1;
    v25[1] = a2;
    v26 = v21[2];
    v15 = __OFADD__(v26, 1);
    v27 = v26 + 1;
    if (!v15)
    {
      v21[2] = v27;
      return result;
    }

    goto LABEL_15;
  }

  v22 = (v21[7] + 16 * result);
  v23 = *v22;
  v24 = v22[1];
  *v22 = a1;
  v22[1] = a2;

  return sub_1D8C2C684(v23, v24);
}

uint64_t sub_1D8C76068(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1D8C4668C(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_1D8C73D2C(v16, a4 & 1);
      v11 = sub_1D8C4668C(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        result = sub_1D8C85354();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_1D8C74FF4();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v23 = (v21[6] + 16 * v11);
  *v23 = a2;
  v23[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v24 = v21[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v25;
}

unint64_t sub_1D8C76354(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  a8[(result >> 6) + 8] |= 1 << result;
  v8 = (a8[6] + 16 * result);
  *v8 = a2;
  v8[1] = a3;
  v9 = (a8[7] + 32 * result);
  *v9 = a4;
  v9[1] = a5;
  v9[2] = a6;
  v9[3] = a7;
  v10 = a8[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a8[2] = v12;
  }

  return result;
}

uint64_t OneofManifest.init(name:options:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = a1;
  a5[1] = a2;
  result = sub_1D8C2C670(0, 0xF000000000000000);
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

uint64_t OneofManifest.name.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t OneofManifest.name.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t OneofManifest.options.getter()
{
  v1 = *(v0 + 16);
  sub_1D8C2C5D0(v1, *(v0 + 24));
  return v1;
}

uint64_t OneofManifest.options.setter(uint64_t a1, uint64_t a2)
{
  result = sub_1D8C2C670(*(v2 + 16), *(v2 + 24));
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t sub_1D8C76618@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = sub_1D8C84684();
    if (v10)
    {
      v11 = sub_1D8C846A4();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = sub_1D8C84694();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v20 = a3;
    v21 = BYTE2(a3);
    v22 = BYTE3(a3);
    v23 = BYTE4(a3);
    v24 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = sub_1D8C84684();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_1D8C846A4();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_1D8C84694();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_1D8C76848(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v13[2] = *MEMORY[0x1E69E9840];
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v13[0] = a1;
      LOWORD(v13[1]) = a2;
      BYTE2(v13[1]) = BYTE2(a2);
      BYTE3(v13[1]) = BYTE3(a2);
      BYTE4(v13[1]) = BYTE4(a2);
      BYTE5(v13[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_1D8C769D8(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_1D8C2C684(a3, a4);
    return v10 & 1;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v13, 0, 14);
LABEL_9:
  sub_1D8C76618(v13, a3, a4, &v12);
  v10 = v4;
  sub_1D8C2C684(a3, a4);
  if (!v4)
  {
    v10 = v12;
  }

  return v10 & 1;
}

uint64_t sub_1D8C769D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_1D8C84684();
  v11 = result;
  if (result)
  {
    result = sub_1D8C846A4();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_1D8C84694();
  sub_1D8C76618(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

BOOL sub_1D8C76A90(_BOOL8 result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_1D8C2C5E4(a3, a4);
          return sub_1D8C76848(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

BOOL _s17PoirotSchematizer13OneofManifestV2eeoiySbAC_ACtFZ_0(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v5 = a2[2];
  v4 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_1D8C852A4(), result = 0, (v7 & 1) != 0))
  {
    if (v3 >> 60 == 15)
    {
      if (v4 >> 60 == 15)
      {
        sub_1D8C2C5D0(v2, v3);
        sub_1D8C2C5D0(v5, v4);
        sub_1D8C2C670(v2, v3);
        return 1;
      }
    }

    else if (v4 >> 60 != 15)
    {
      sub_1D8C2C5D0(v2, v3);
      sub_1D8C2C5D0(v5, v4);
      v9 = sub_1D8C76A90(v2, v3, v5, v4);
      sub_1D8C2C670(v5, v4);
      sub_1D8C2C670(v2, v3);
      return v9;
    }

    sub_1D8C2C5D0(v2, v3);
    sub_1D8C2C5D0(v5, v4);
    sub_1D8C2C670(v2, v3);
    sub_1D8C2C670(v5, v4);
    return 0;
  }

  return result;
}

uint64_t sub_1D8C76D38(uint64_t a1, int a2)
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

uint64_t sub_1D8C76D80(uint64_t result, int a2, int a3)
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

uint64_t sub_1D8C76DD0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = *(v4 + 32);
    v6 = *(v4 + 40);
    sub_1D8C2C5E4(v5, v6);
  }

  else
  {
    v5 = 0;
    v6 = 0xF000000000000000;
  }

  sub_1D8C2C670(0, 0xF000000000000000);
  v7 = sub_1D8C78004();
  if (v2)
  {

    return sub_1D8C2C670(v5, v6);
  }

  else
  {
    v8 = *(v7 + 16);
    if (v8)
    {
      v27 = a2;
      v28 = v6;
      v29 = v5;
      v30 = MEMORY[0x1E69E7CC0];
      v9 = v7;
      sub_1D8C5DFF4(0, v8, 0);
      v10 = v30;
      v11 = (v9 + 40);
      do
      {
        v12 = *v11;
        ObjectType = swift_getObjectType();
        v14 = *(v12 + 8);
        v15 = *(v14 + 8);
        swift_unknownObjectRetain();
        v16 = v15(ObjectType, v14);
        v31 = v17;
        v18 = (*(v12 + 16))(ObjectType, v12);
        swift_unknownObjectRelease();
        if (v18)
        {
          v19 = *(v18 + 32);
          v20 = *(v18 + 40);
          sub_1D8C2C5E4(v19, v20);
        }

        else
        {
          v19 = 0;
          v20 = 0xF000000000000000;
        }

        sub_1D8C2C670(0, 0xF000000000000000);
        v22 = *(v30 + 16);
        v21 = *(v30 + 24);
        if (v22 >= v21 >> 1)
        {
          sub_1D8C5DFF4((v21 > 1), v22 + 1, 1);
        }

        *(v30 + 16) = v22 + 1;
        v23 = (v30 + 32 * v22);
        v23[4] = v16;
        v23[5] = v31;
        v23[6] = v19;
        v23[7] = v20;
        v11 += 2;
        --v8;
      }

      while (v8);

      v6 = v28;
      v5 = v29;
      a2 = v27;
    }

    else
    {

      v10 = MEMORY[0x1E69E7CC0];
    }

    swift_beginAccess();

    v26 = sub_1D8C77048(v24);

    *a2 = v26;
    a2[1] = v10;
    a2[2] = v5;
    a2[3] = v6;
  }

  return result;
}

uint64_t sub_1D8C77048(uint64_t a1)
{
  v2 = v1;
  v37 = MEMORY[0x1E69E7CC8];
  v58 = MEMORY[0x1E69E7CC8];
  v4 = a1 + 64;
  v5 = 1 << *(a1 + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(a1 + 64);
  v8 = (v5 + 63) >> 6;

  v9 = 0;
  while (1)
  {
    v10 = v9;
    if (!v7)
    {
      break;
    }

LABEL_9:
    v11 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v12 = v11 | (v9 << 6);
    v13 = (*(a1 + 48) + 16 * v12);
    v15 = *v13;
    v14 = v13[1];
    v16 = (*(a1 + 56) + (v12 << 6));
    v18 = *v16;
    v17 = v16[1];
    v19 = v16[3];
    v51 = v16[2];
    v52 = v19;
    v49 = v18;
    v50 = v17;
    v53[0] = v15;
    v53[1] = v14;
    v54 = v18;
    v55 = v17;
    v56 = v51;
    v57 = v19;
    if ((*(&v51 + 1) & 0x8000000000000000) != 0)
    {
      v36 = *(&v49 + 1);
      sub_1D8C7629C(&v49, v39);
      sub_1D8C7629C(&v49, v39);

      sub_1D8C2C764(v36, v48);
      if (v2)
      {
        goto LABEL_26;
      }

      v44 = v48[0];
      v45 = v48[1];
      v46 = v48[2];
      v47 = v48[3];
      v40 = v49;
      v41 = v50;
      v42 = v51;
      v43 = v52;
      v20 = v37;
      v21 = *(v37 + 16);
      if (*(v37 + 24) <= v21)
      {
        sub_1D8C725E4(v21 + 1, 1);
        v20 = v58;
      }

      v37 = v20;
      sub_1D8C853B4();
      sub_1D8C84E24();
      result = sub_1D8C853E4();
      v23 = v37 + 64;
      v24 = -1 << *(v37 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v37 + 64 + 8 * (v25 >> 6))) != 0)
      {
        v27 = __clz(__rbit64((-1 << v25) & ~*(v37 + 64 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
        v2 = 0;
      }

      else
      {
        v28 = 0;
        v29 = (63 - v24) >> 6;
        v2 = 0;
        do
        {
          if (++v26 == v29 && (v28 & 1) != 0)
          {
            __break(1u);
            return result;
          }

          v30 = v26 == v29;
          if (v26 == v29)
          {
            v26 = 0;
          }

          v28 |= v30;
          v31 = *(v23 + 8 * v26);
        }

        while (v31 == -1);
        v27 = __clz(__rbit64(~v31)) + (v26 << 6);
      }

      *(v23 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
      v32 = (*(v37 + 48) + 16 * v27);
      *v32 = v15;
      v32[1] = v14;
      v33 = (*(v37 + 56) + (v27 << 6));
      v34 = v45;
      *v33 = v44;
      v33[1] = v34;
      v35 = v47;
      v33[2] = v46;
      v33[3] = v35;
      ++*(v37 + 16);
      v38[2] = v42;
      v38[3] = v43;
      v38[0] = v40;
      v38[1] = v41;
      sub_1D8C7C67C(v38);
    }

    else
    {
      sub_1D8C7629C(&v49, v39);

      sub_1D8C51FD4(v53, &qword_1ECAAB3C8, &qword_1D8C888E8);
    }
  }

  while (1)
  {
    v9 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v9 >= v8)
    {
      goto LABEL_27;
    }

    v7 = *(v4 + 8 * v9);
    ++v10;
    if (v7)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_26:
  sub_1D8C51FD4(v53, &qword_1ECAAB3C8, &qword_1D8C888E8);

LABEL_27:

  return v37;
}

void *sub_1D8C7737C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v7 = v5;
  v9 = *a3;
  v85 = a3[1];
  v10 = a3[2];
  v81 = a3[3];
  v5[8] = 0;
  swift_unknownObjectWeakInit();
  v11 = MEMORY[0x1E69E7CC0];
  v7[9] = sub_1D8C2DF64(MEMORY[0x1E69E7CC0]);
  v12 = v7 + 9;
  v7[10] = sub_1D8C2E100(v11);
  v7[11] = sub_1D8C2E218(v11);
  v86 = v9;
  *&v92 = sub_1D8C51504(v9);

  sub_1D8C34214(&v92);
  v82 = v6;
  if (!v6)
  {

    v13 = v92;
    v14 = *(v92 + 16);
    v79 = v10;
    v80 = a2;
    if (v14)
    {
      v97 = v11;
      sub_1D8C5DF74(0, v14, 0);
      v11 = v97;
      v15 = v14 - 1;
      for (i = 32; ; i += 80)
      {
        v92 = *(v13 + i);
        v17 = *(v13 + i + 16);
        v18 = *(v13 + i + 32);
        v19 = *(v13 + i + 64);
        v95 = *(v13 + i + 48);
        v96 = v19;
        v93 = v17;
        v94 = v18;
        sub_1D8C34EF8(&v92, v91);
        sub_1D8C2F118(&v93);
        v97 = v11;
        v21 = *(v11 + 16);
        v20 = *(v11 + 24);
        if (v21 >= v20 >> 1)
        {
          sub_1D8C5DF74((v20 > 1), v21 + 1, 1);
          v11 = v97;
        }

        v22 = v92;
        *(v11 + 16) = v21 + 1;
        *(v11 + 16 * v21 + 32) = v22;
        if (!v15)
        {
          break;
        }

        --v15;
      }

      v12 = v7 + 9;
    }

    else
    {
    }

    v83 = v11;
    v7[5] = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAB018, &qword_1D8C85C18);
    v23 = sub_1D8C85214();
    v24 = v23;
    v25 = 0;
    v26 = *(v86 + 64);
    v27 = 1 << *(v86 + 32);
    v28 = -1;
    if (v27 < 64)
    {
      v28 = ~(-1 << v27);
    }

    v29 = v28 & v26;
    v30 = (v27 + 63) >> 6;
    v31 = v23 + 64;
    if ((v28 & v26) != 0)
    {
      while (1)
      {
        v32 = __clz(__rbit64(v29));
        v29 &= v29 - 1;
LABEL_19:
        v35 = v32 | (v25 << 6);
        v36 = (*(v86 + 48) + 16 * v35);
        v38 = *v36;
        v37 = v36[1];
        v39 = *(v86 + 56) + (v35 << 6);
        v40 = *v39;
        v41 = *(v39 + 16);
        v42 = *(v39 + 48);
        v94 = *(v39 + 32);
        v95 = v42;
        v92 = v40;
        v93 = v41;
        v43 = (v24[6] + 16 * v35);
        v44 = v42;
        v45 = vandq_s8(v94, xmmword_1D8C88630);
        v46 = v92;
        v47 = v93;
        *(v31 + ((v35 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v35;
        *v43 = v38;
        v43[1] = v37;
        v48 = (v24[7] + (v35 << 6));
        *v48 = v46;
        v48[1] = v47;
        v48[2] = v45;
        v48[3] = v44;
        v49 = v24[2];
        v50 = __OFADD__(v49, 1);
        v51 = v49 + 1;
        if (v50)
        {
          break;
        }

        v24[2] = v51;

        sub_1D8C2EE54(&v92, v91);
        if (!v29)
        {
          goto LABEL_14;
        }
      }

LABEL_48:
      __break(1u);
    }

    else
    {
LABEL_14:
      v33 = v25;
      while (1)
      {
        v25 = v33 + 1;
        if (__OFADD__(v33, 1))
        {
          __break(1u);
LABEL_45:
          __break(1u);
LABEL_46:
          __break(1u);
LABEL_47:
          __break(1u);
          goto LABEL_48;
        }

        if (v25 >= v30)
        {
          break;
        }

        v34 = *(v86 + 64 + 8 * v25);
        ++v33;
        if (v34)
        {
          v32 = __clz(__rbit64(v34));
          v29 = (v34 - 1) & v34;
          goto LABEL_19;
        }
      }

      swift_beginAccess();
      *v12 = v24;

      v52 = *(v85 + 16);
      v53 = MEMORY[0x1E69E7CC0];
      if (v52)
      {
        v77 = v7;
        *&v92 = MEMORY[0x1E69E7CC0];

        sub_1D8C5DF54(0, v52, 0);
        v54 = v85;
        v55 = 0;
        v53 = v92;
        v87 = v52;
        v88 = *(v85 + 16);
        v56 = (v85 + 56);
        while (v88 != v55)
        {
          if (v55 >= *(v54 + 16))
          {
            goto LABEL_46;
          }

          if (v55 == 0x80000000)
          {
            goto LABEL_47;
          }

          v57 = *(v56 - 3);
          v58 = *(v56 - 2);
          v59 = *(v56 - 1);
          v60 = *v56;

          sub_1D8C2C5D0(v59, v60);
          *&v92 = v53;
          v62 = v53[2];
          v61 = v53[3];
          v89 = v62 + 1;

          if (v62 >= v61 >> 1)
          {
            sub_1D8C5DF54((v61 > 1), v89, 1);
            v54 = v85;
            v53 = v92;
          }

          v53[2] = v89;
          v63 = &v53[7 * v62];
          v63[4] = v57;
          v63[5] = v58;
          v63[6] = v55;
          v63[7] = v57;
          v63[8] = v58;
          v63[9] = v59;
          v63[10] = v60;
          v56 += 4;
          if (v87 == ++v55)
          {

            v7 = v77;
            goto LABEL_31;
          }
        }

        goto LABEL_45;
      }

LABEL_31:
      if (v53[2])
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAB008, &unk_1D8C88900);
        v64 = sub_1D8C85234();
      }

      else
      {
        v64 = MEMORY[0x1E69E7CC8];
      }

      *&v92 = v64;
      sub_1D8C7B0E0(v53, 1, &v92);
      v65 = v92;
      v66 = *(v92 + 16);
      if (v66)
      {
        v67 = sub_1D8C5DED0(*(v92 + 16), 0);
        v90 = sub_1D8C60280(&v92, (v67 + 4), v66, v65);
        v68 = v92;
        swift_retain_n();
        sub_1D8C2F110(v68);
        if (v90 != v66)
        {
          goto LABEL_50;
        }
      }

      else
      {

        v67 = MEMORY[0x1E69E7CC0];
      }

      *&v92 = v67;
      sub_1D8C5F834(&v92);

      v7[6] = v92;
      swift_beginAccess();
      v7[11] = v65;

      v69 = *(v83 + 16);

      v70 = *(v65 + 16);

      if (!__OFADD__(v69, v70))
      {
        v7[12] = v69 + v70;
        ObjectType = swift_getObjectType();
        if ((sub_1D8C4EE7C(ObjectType, a5) & 1) != 0 && v81 >> 60 != 15)
        {
          sub_1D8C2C5E4(v79, v81);
          sub_1D8C4EFD8(ObjectType, a5);
          v74 = v73;
          v75 = swift_getObjectType();
          v72 = (*(v74 + 80))(v79, v81, v75, v74);

          swift_unknownObjectRelease();
          sub_1D8C2C670(v79, v81);
          sub_1D8C2C670(v79, v81);
        }

        else
        {

          sub_1D8C2C670(v79, v81);
          v72 = 0;
        }

        v7[2] = a1;
        v7[3] = v80;
        v7[4] = v72;
        v7[8] = a5;
        swift_unknownObjectWeakAssign();
        swift_unknownObjectRelease();
        return v7;
      }
    }

    __break(1u);
LABEL_50:
    __break(1u);
  }

  MEMORY[0x1DA725E90](v82);

  __break(1u);
  return result;
}

void sub_1D8C77B98()
{
  v2 = v1;
  v3 = v0;
  if (v0[12] && (v4 = v0[5], (v5 = *(v4 + 16)) != 0))
  {
    v6 = 0;
    v7 = (v4 + 40);
    while (v6 < *(v4 + 16))
    {
      v9 = *(v7 - 1);
      v8 = *v7;
      swift_beginAccess();
      v10 = v3[9];
      v11 = *(v10 + 16);

      if (!v11 || (v12 = sub_1D8C4668C(v9, v8), (v13 & 1) == 0))
      {
        swift_endAccess();
        *&v26 = 0;
        *(&v26 + 1) = 0xE000000000000000;
        sub_1D8C85124();

        *&v26 = 0x2220616D65686353;
        *(&v26 + 1) = 0xE800000000000000;
        MEMORY[0x1DA7255C0](v3[2], v3[3]);
        MEMORY[0x1DA7255C0](0xD000000000000016, 0x80000001D8C8C740);
        MEMORY[0x1DA7255C0](v9, v8);
        MEMORY[0x1DA7255C0](34, 0xE100000000000000);
        v18 = v26;
        sub_1D8C2F8AC();
        swift_allocError();
        *v19 = v18;
        *(v19 + 16) = 3;
        swift_willThrow();

        return;
      }

      v14 = (*(v10 + 56) + (v12 << 6));
      v16 = v14[2];
      v15 = v14[3];
      v17 = v14[1];
      v26 = *v14;
      v27 = v17;
      v28 = v16;
      v29 = v15;
      swift_endAccess();
      if ((*(&v28 + 1) & 0x8000000000000000) != 0)
      {
      }

      else
      {
        v21[0] = v26;
        v21[1] = v27;
        v21[3] = v29;
        v22[0] = v26;
        v21[2] = v28;
        v22[1] = v27;
        v23 = v28;
        v25 = v29;
        v24 = *(&v28 + 1) & 0x7FFFFFFFFFFFFFFFLL;
        sub_1D8C7629C(&v26, v20);
        sub_1D8C2EE54(v22, v20);
        sub_1D8C7843C(v9, v8, v21);

        if (v2)
        {
          sub_1D8C7C67C(&v26);
          sub_1D8C7C67C(&v26);
          return;
        }

        sub_1D8C7C67C(&v26);
        sub_1D8C7C67C(&v26);
        swift_unknownObjectRelease();
      }

      ++v6;
      v7 += 2;
      if (v5 == v6)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_12:
    swift_beginAccess();
  }
}

uint64_t sub_1D8C77E10(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  swift_beginAccess();
  v7 = *(v2 + 72);
  if (*(v7 + 16) && (v8 = sub_1D8C4668C(a1, a2), (v9 & 1) != 0))
  {
    v10 = (*(v7 + 56) + (v8 << 6));
    v12 = v10[2];
    v11 = v10[3];
    v13 = v10[1];
    v24 = *v10;
    v25 = v13;
    v26 = v12;
    v27 = v11;
    swift_endAccess();
    v14 = v24;
    if ((*(&v26 + 1) & 0x8000000000000000) != 0)
    {
      swift_unknownObjectRetain();
    }

    else
    {
      v19[0] = v24;
      v19[1] = v25;
      v19[2] = v26;
      v19[3] = v27;
      v20[0] = v24;
      v20[1] = v25;
      v21 = v26;
      v23 = v27;
      v22 = *(&v26 + 1) & 0x7FFFFFFFFFFFFFFFLL;
      sub_1D8C2EE54(v20, &v18);
      v14 = v4;
      v15 = sub_1D8C7843C(a1, a2, v19);
      if (!v3)
      {
        v14 = v15;
      }

      sub_1D8C7C67C(&v24);
    }
  }

  else
  {
    swift_endAccess();
    sub_1D8C85124();

    *&v24 = 0x2220616D65686353;
    *(&v24 + 1) = 0xE800000000000000;
    MEMORY[0x1DA7255C0](*(v4 + 16), *(v4 + 24));
    MEMORY[0x1DA7255C0](0xD000000000000016, 0x80000001D8C8C740);
    MEMORY[0x1DA7255C0](a1, a2);
    MEMORY[0x1DA7255C0](34, 0xE100000000000000);
    v14 = 0x2220616D65686353;
    sub_1D8C2F8AC();
    swift_allocError();
    *v16 = v24;
    *(v16 + 16) = 3;
    swift_willThrow();
  }

  return v14;
}

uint64_t sub_1D8C78004()
{
  swift_beginAccess();

  v2 = sub_1D8C7C884(v1, sub_1D8C7C868);

  if (v0)
  {
    return v2;
  }

  v12 = v2;

  sub_1D8C7BA70(&v12);

  v3 = v12;
  v4 = *(v12 + 16);
  if (!v4)
  {

    return MEMORY[0x1E69E7CC0];
  }

  v12 = MEMORY[0x1E69E7CC0];
  sub_1D8C5DFB4(0, v4, 0);
  v5 = 0;
  v6 = 40;
  v2 = v12;
  while (v5 < *(v3 + 16))
  {
    v7 = *(v3 + v6);
    v12 = v2;
    v9 = *(v2 + 16);
    v8 = *(v2 + 24);
    v11 = v7;
    swift_unknownObjectRetain();
    if (v9 >= v8 >> 1)
    {
      sub_1D8C5DFB4((v8 > 1), v9 + 1, 1);
      v2 = v12;
    }

    ++v5;
    *(v2 + 16) = v9 + 1;
    *(v2 + 16 * v9 + 32) = v11;
    v6 += 24;
    if (v4 == v5)
    {

      return v2;
    }
  }

  __break(1u);
  MEMORY[0x1DA725E90](0);

  __break(1u);
  return result;
}

uint64_t sub_1D8C781AC(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  v4 = a3[2];
  if (*a3 < 0)
  {
    swift_unknownObjectRetain();
  }

  else
  {
    v6[0] = a3[1];
    v6[1] = v4;
    v7 = *(a3 + 3);
    sub_1D8C78228(v3, v6);
  }

  return v3;
}

uint64_t sub_1D8C78228(uint64_t a1, uint64_t *a2)
{
  v4 = v2;
  v5 = a1;
  v7 = *a2;
  v6 = a2[1];
  v9 = a2[2];
  v8 = a2[3];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    sub_1D8C2F8AC();
    swift_allocError();
    *v13 = 0;
    *(v13 + 8) = 0;
    *(v13 + 16) = 8;
    swift_willThrow();
    return v8;
  }

  v11 = Strong;
  v21 = v2[8];
  v22[0] = v7;
  v22[1] = v6;
  v22[2] = v9;
  v22[3] = v8;

  sub_1D8C2C5D0(v9, v8);
  v12 = sub_1D8C78688(v5);
  if (v3)
  {

    sub_1D8C2C670(v9, v8);
    swift_unknownObjectRelease();
    return v8;
  }

  v14 = v12;
  type metadata accessor for ProtoOneOfSchema();
  swift_allocObject();
  swift_unknownObjectRetain();
  v15 = sub_1D8C302CC(v22, v14, v11, v21);
  v8 = v15;
  *&v23 = v5 | 0x8000000000000000;
  *(&v23 + 1) = v15;
  v25 = 0;
  v26 = 0;
  v24 = &off_1F5450050;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v27 = v4[11];
  v4[11] = 0x8000000000000000;
  sub_1D8C7577C(&v23, v7, v6, isUniquelyReferenced_nonNull_native);

  v4[11] = v27;
  swift_endAccess();
  result = swift_unknownObjectRelease();
  v18 = v4[12];
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (!v19)
  {
    v4[12] = v20;
    if (!v20)
    {
      v4[8] = 0;
      swift_unknownObjectWeakAssign();
    }

    return v8;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D8C7843C(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v6 = v3;
  v10 = a3[1];
  v29 = *a3;
  v30 = v10;
  v11 = a3[3];
  v31 = a3[2];
  v32 = v11;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    sub_1D8C2F8AC();
    swift_allocError();
    *v17 = 0;
    *(v17 + 8) = 0;
    *(v17 + 16) = 8;
    swift_willThrow();
    return v5;
  }

  v13 = Strong;
  v5 = v6[8];
  v14 = a3[1];
  v27[0] = *a3;
  v27[1] = v14;
  v15 = a3[3];
  v27[2] = a3[2];
  v27[3] = v15;
  type metadata accessor for ProtoFieldSchema();
  swift_allocObject();

  sub_1D8C2EE54(&v29, v26);
  swift_unknownObjectRetain();
  v16 = sub_1D8C6D2C8(a1, a2, v27, v13, v5);
  if (v4)
  {
    swift_unknownObjectRelease();
    return v5;
  }

  v5 = v16;
  *&v28[0] = v16;
  *(&v28[0] + 1) = &off_1F54516D0;
  v28[2] = xmmword_1D8C88640;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v25 = v6[9];
  v6[9] = 0x8000000000000000;
  sub_1D8C755F4(v28, a1, a2, isUniquelyReferenced_nonNull_native);

  v6[9] = v25;
  swift_endAccess();
  v19 = *(&v30 + 1);
  swift_beginAccess();

  v20 = swift_isUniquelyReferenced_nonNull_native();
  v25 = v6[10];
  v6[10] = 0x8000000000000000;
  sub_1D8C7C6AC(v5, v19, v20, &v25);
  v6[10] = v25;
  swift_endAccess();
  result = swift_unknownObjectRelease();
  v22 = v6[12];
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (!v23)
  {
    v6[12] = v24;
    if (!v24)
    {
      v6[8] = 0;
      swift_unknownObjectWeakAssign();
    }

    return v5;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D8C78688(int a1)
{
  swift_beginAccess();
  v2 = *(v1 + 72);
  v3 = v2 + 64;
  v4 = 1 << *(v2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v2 + 64);
  v7 = (v4 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v8 = 0;
  v37 = MEMORY[0x1E69E7CC0];
  v38 = v2;
  if (v6)
  {
    while (1)
    {
LABEL_12:
      v10 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v11 = v10 | (v8 << 6);
      v12 = (*(v2 + 48) + 16 * v11);
      v14 = *v12;
      v13 = v12[1];
      v15 = (*(v2 + 56) + (v11 << 6));
      v17 = v15[2];
      v16 = v15[3];
      v18 = v15[1];
      v42 = *v15;
      v43 = v18;
      v44 = v17;
      v45 = v16;
      v46[0] = v14;
      v46[1] = v13;
      v47 = v42;
      v48 = v18;
      v49 = v17;
      v50 = v16;
      if ((((*(&v17 + 1) >> 8) | (((HIDWORD(v17) >> 8) | (SHIBYTE(v17) << 16)) << 32)) & 0x8000000000000000) != 0)
      {
        v39 = v14;
        v22 = *(&v42 + 1);
        v23 = v13;
        ObjectType = swift_getObjectType();
        v51 = *(v22 + 40);
        v35 = v23;

        sub_1D8C7629C(&v42, v41);
        v34 = ObjectType;
        v25 = v51(ObjectType, v22);
        v2 = v38;
        if ((v25 & 0x100000000) != 0 || v25 != a1)
        {
          goto LABEL_7;
        }

        v26 = (*(v22 + 48))(v34);
        if (v36)
        {
LABEL_32:

          sub_1D8C51FD4(v46, &qword_1ECAAB3C8, &qword_1D8C888E8);
        }

        v19 = v26;
LABEL_20:

        sub_1D8C51FD4(v46, &qword_1ECAAB3C8, &qword_1D8C888E8);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v37 = sub_1D8C4A36C(0, v37[2] + 1, 1, v37);
        }

        v28 = v37[2];
        v27 = v37[3];
        v29 = v35;
        if (v28 >= v27 >> 1)
        {
          v37 = sub_1D8C4A36C((v27 > 1), v28 + 1, 1, v37);
          v29 = v35;
        }

        v37[2] = v28 + 1;
        v30 = &v37[3 * v28];
        v30[4] = v39;
        v30[5] = v29;
        v30[6] = v19;
        if (!v6)
        {
          goto LABEL_8;
        }
      }

      else
      {
        if (BYTE8(v44))
        {
        }

        else
        {
          v39 = v14;
          v19 = *(&v43 + 1);
          v20 = DWORD1(v44);

          if (v20 == a1)
          {
            v35 = v21;
            sub_1D8C7629C(&v42, v41);
            goto LABEL_20;
          }
        }

        sub_1D8C7629C(&v42, v41);
LABEL_7:
        sub_1D8C51FD4(v46, &qword_1ECAAB3C8, &qword_1D8C888E8);
        if (!v6)
        {
          goto LABEL_8;
        }
      }
    }
  }

  while (1)
  {
LABEL_8:
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
      goto LABEL_32;
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
      goto LABEL_12;
    }
  }

  if (v37[2])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAB030, &qword_1D8C85C30);
    v31 = sub_1D8C85234();
  }

  else
  {
    v31 = MEMORY[0x1E69E7CC8];
  }

  v46[0] = v31;

  sub_1D8C7B514(v32, 1, v46);
  if (v36)
  {
    result = swift_unexpectedError();
    __break(1u);
  }

  else
  {

    return v46[0];
  }

  return result;
}

uint64_t sub_1D8C78A6C(uint64_t a1)
{
  v3 = v1;
  swift_beginAccess();
  v5 = *(v1 + 80);
  if (*(v5 + 16))
  {
    v6 = sub_1D8C46878(a1);
    if (v7)
    {
      v8 = *(*(v5 + 56) + 16 * v6);
      swift_endAccess();
      swift_unknownObjectRetain();
      return v8;
    }
  }

  swift_endAccess();
  swift_beginAccess();
  v35 = v3;
  v9 = *(v3 + 72);
  v10 = v9 + 64;
  v11 = 1 << *(v9 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(v9 + 64);
  v14 = (v11 + 63) >> 6;
  result = swift_bridgeObjectRetain_n();
  v16 = 0;
  for (i = v9; v13; v16 = v17)
  {
    v17 = v16;
LABEL_11:
    v18 = __clz(__rbit64(v13)) | (v17 << 6);
    v19 = (*(v9 + 48) + 16 * v18);
    v21 = *v19;
    v20 = v19[1];
    v22 = (*(v9 + 56) + (v18 << 6));
    v24 = v22[2];
    v23 = v22[3];
    v25 = v22[1];
    v47 = *v22;
    v48 = v25;
    v49 = v24;
    v50 = v23;
    v40 = v21;
    v51[0] = v21;
    v51[1] = v20;
    v52 = v47;
    v53 = v25;
    v54 = v24;
    v55 = v23;
    v56 = v20;
    if ((*(&v24 + 1) & 0x8000000000000000) != 0)
    {
      v27 = *(&v47 + 1);
      v37 = *(&v47 + 1);
      v28 = v47;
      ObjectType = swift_getObjectType();
      v38 = *(v27 + 48);
      v39 = ObjectType;

      sub_1D8C7629C(&v47, v43);
      v8 = v28;
      v30 = v38(v39, v37);
      if (v2)
      {

        sub_1D8C51FD4(v51, &qword_1ECAAB3C8, &qword_1D8C888E8);

        return v8;
      }

      v9 = i;
      if (v30 == a1)
      {
LABEL_20:

        v8 = v47;
        if ((*(&v49 + 1) & 0x8000000000000000) != 0)
        {
          swift_unknownObjectRetain();
          sub_1D8C51FD4(v51, &qword_1ECAAB3C8, &qword_1D8C888E8);
        }

        else
        {
          v42[0] = v47;
          v42[1] = v48;
          v42[2] = v49;
          v42[3] = v50;
          v43[0] = v47;
          v43[1] = v48;
          v44 = v49;
          v46 = v50;
          v45 = *(&v49 + 1) & 0x7FFFFFFFFFFFFFFFLL;
          sub_1D8C2EE54(v43, v41);
          v8 = v35;
          v34 = sub_1D8C7843C(v40, v56, v42);
          if (!v2)
          {
            v8 = v34;
          }

          sub_1D8C51FD4(v51, &qword_1ECAAB3C8, &qword_1D8C888E8);
          sub_1D8C7C67C(&v47);
        }

        return v8;
      }
    }

    else
    {
      v26 = *(&v48 + 1);

      sub_1D8C7629C(&v47, v43);
      if (v26 == a1)
      {
        goto LABEL_20;
      }
    }

    v13 &= v13 - 1;
    result = sub_1D8C51FD4(v51, &qword_1ECAAB3C8, &qword_1D8C888E8);
  }

  while (1)
  {
    v17 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v17 >= v14)
    {

      strcpy(v51, "With number ");
      BYTE5(v51[1]) = 0;
      HIWORD(v51[1]) = -5120;
      *&v47 = a1;
      v31 = sub_1D8C85274();
      MEMORY[0x1DA7255C0](v31);

      v32 = v51[0];
      v8 = v51[1];
      sub_1D8C2F8AC();
      swift_allocError();
      *v33 = v32;
      *(v33 + 8) = v8;
      *(v33 + 16) = 3;
      swift_willThrow();
      return v8;
    }

    v13 = *(v10 + 8 * v17);
    ++v16;
    if (v13)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D8C78E68(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v6 = *(v2 + 88);
  if (*(v6 + 16) && (v7 = sub_1D8C4668C(a1, a2), (v8 & 1) != 0))
  {
    v9 = (*(v6 + 56) + 40 * v7);
    v10 = *v9;
    a1 = v9[1];
    v11 = v9[2];
    v12 = v9[3];
    v13 = v9[4];
    swift_endAccess();
    if (v10 < 0)
    {
      swift_unknownObjectRetain();
    }

    else
    {
      v18[0] = a1;
      v18[1] = v11;
      v18[2] = v12;
      v18[3] = v13;

      sub_1D8C2C5D0(v12, v13);
      v14 = sub_1D8C78228(v10, v18);
      if (v3)
      {
        sub_1D8C7C80C(v10, a1, v11, v12, v13);
      }

      else
      {
        v17 = v14;
        sub_1D8C7C80C(v10, a1, v11, v12, v13);
        return v17;
      }
    }
  }

  else
  {
    swift_endAccess();
    sub_1D8C2F8AC();
    swift_allocError();
    *v15 = xmmword_1D8C86190;
    *(v15 + 16) = 8;
    swift_willThrow();
  }

  return a1;
}

void *sub_1D8C78FE4(void *a1, uint64_t a2)
{
  sub_1D8C846C4();
  swift_allocObject();
  v15 = 0;
  v16 = sub_1D8C846B4() | 0x4000000000000000;
  v6 = *(v2 + 40);
  v11 = v2;
  v12 = &v15;
  v13 = a1;
  v14 = a2;
  sub_1D8C51838(sub_1D8C796F8, &v10, v6);
  v8 = v15;
  v7 = v16;
  if (v3)
  {
    sub_1D8C2C684(v15, v16);
  }

  else
  {
    type metadata accessor for SchematizedData();
    a1 = swift_allocObject();
    a1[2] = v2;
    a1[3] = &off_1F54519C8;
    a1[4] = v8;
    a1[5] = v7;

    sub_1D8C2C5E4(v8, v7);
    sub_1D8C2C684(v8, v7);
  }

  return a1;
}

uint64_t sub_1D8C790EC(uint64_t *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a5)
{
  result = sub_1D8C77E10(*a1, a1[1]);
  if (!v5)
  {
    v11 = v10;
    ObjectType = swift_getObjectType();
    sub_1D8C79174(a3, a4, a5, ObjectType, v11);
    return swift_unknownObjectRelease();
  }

  return result;
}

void *sub_1D8C79174(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (((*(a5 + 16))(a4, a5) & 1) == 0)
  {
    return sub_1D8C79718(a1, a2, a3, a4, a5);
  }

  result = (*(a5 + 56))(&v14, a4, a5);
  if (!v5)
  {
    v12 = v14;
    v13 = v15;
    if (v15 >> 62 == 1 || v15 >> 62 == 2 && __PAIR128__(-1, -3) < __PAIR128__((v14 >= 0xF) + v15 + 0x7FFFFFFFFFFFFFFFLL, v14 - 15))
    {
      sub_1D8C79B78(a1, &v14, a2, a3, a4, a5);
    }

    else
    {
      sub_1D8C7A3F4(a1, &v14, a2, a3, a4, a5);
    }

    return sub_1D8C2BBF0(v12, v13);
  }

  return result;
}

uint64_t sub_1D8C792C0()
{

  sub_1D8C7CBF4(v0 + 56);
}

void *sub_1D8C79318()
{

  sub_1D8C7CBF4(v0 + 56);

  return v0;
}

uint64_t sub_1D8C79370()
{
  sub_1D8C79318();

  return swift_deallocClassInstance();
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1D8C793E8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  HIDWORD(v3) = *(a1 + 4);
  LODWORD(v3) = HIDWORD(v3);
  v2 = v3 >> 31;
  if (v2 > 0x80000000)
  {
    v4 = ~v2;
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

double sub_1D8C79438(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 8) = 0u;
    *(a1 + 24) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 40) = 1;
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
      HIDWORD(v4) = -a2;
      LODWORD(v4) = -a2;
      *a1 = (v4 >> 1) << 32;
      result = 0.0;
      *(a1 + 8) = 0u;
      *(a1 + 24) = 0u;
      return result;
    }

    *(a1 + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D8C794CC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = (*(a1 + 32) >> 1) & 0x7FFFFFFF | ((*(a1 + 40) >> 1) << 31);
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

double sub_1D8C79528(uint64_t a1, int a2, int a3)
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
      *(a1 + 32) = (-2 * a2);
      *(a1 + 40) = 2;
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

uint64_t sub_1D8C7959C(uint64_t result, uint64_t a2)
{
  v2 = *(result + 40) & 1 | (a2 << 63);
  *(result + 32) &= 0xFFFFFFFF00000001;
  *(result + 40) = v2;
  return result;
}

void *sub_1D8C79644(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for SchematizedData();
  v8 = swift_allocObject();
  v8[2] = v4;
  v8[3] = a4;
  v8[4] = a1;
  v8[5] = a2;

  sub_1D8C2C5E4(a1, a2);
  return v8;
}

uint64_t sub_1D8C796BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, void *a4@<X8>)
{
  *a4 = v4;
  a4[1] = a3;
  a4[2] = a1;
  a4[3] = a2;
}

void *sub_1D8C79718(uint64_t a1, void *(*a2)(void *__return_ptr, uint64_t, uint64_t), uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = a2(v47, v5, a5);
  if (v6)
  {
    return result;
  }

  v12 = v48;
  if (HIBYTE(v48) > 0xFEu)
  {
    return result;
  }

  v13 = v47[0];
  v14 = v47[1];
  v15 = v47[2];
  v16 = MEMORY[0x1EEE9AC00](result, v11);
  v37[2] = a4;
  v37[3] = a5;
  v37[4] = a1;
  v37[5] = v5;
  if (v18 <= 4)
  {
    if (v18 <= 1)
    {
      if (!v18)
      {
        LODWORD(v41) = v13;
        v46 = 0;
LABEL_23:
        sub_1D8C79AA8(&v41, a1, v5, a4, a5);
        return sub_1D8C2AB08(&v41);
      }

      LODWORD(v41) = v13;
      LOBYTE(v18) = 1;
    }

    else
    {
      if (v18 != 2 && v18 != 3)
      {
        v49 = &v38;
        LODWORD(v41) = v13;
        LOBYTE(v18) = 4;
        goto LABEL_20;
      }

      v41 = v13;
    }

    v46 = v18;
    goto LABEL_23;
  }

  v49 = &v38;
  if (v18 <= 7)
  {
    if (v18 == 5)
    {
      v41 = v13;
      goto LABEL_20;
    }

    if (v18 == 6)
    {
      LOBYTE(v41) = v13 & 1;
      LOBYTE(v18) = 6;
LABEL_20:
      v46 = v18;
      sub_1D8C79AA8(&v41, a1, v5, a4, a5);
      return sub_1D8C2AB08(&v41);
    }

    v41 = v13;
    v42 = v14;
    v43 = v15;
    v44 = v19;
    LOBYTE(v45) = v12 & 1;
    v46 = 7;
    v39 = v19;
    sub_1D8C5C2AC(v13, v14, v15, v19, v12, 7u);
    v20 = a1;
    v21 = v5;
    v22 = a4;
    v23 = a5;
LABEL_25:
    sub_1D8C79AA8(&v41, v20, v21, v22, v23);
    sub_1D8C60430(v13, v14, v15, v39, v12);
    return sub_1D8C2AB08(&v41);
  }

  if (v18 == 8)
  {
    v24 = v19;
    sub_1D8C83A38(v13, v14, sub_1D8C7C65C, v37);
    v25 = v13;
    v26 = v14;
    v27 = v15;
    v28 = v24;
  }

  else
  {
    v40 = 0;
    if (v18 == 9)
    {
      v44 = MEMORY[0x1E6969080];
      v45 = &protocol witness table for Data;
      v41 = v13;
      v42 = v14;
      v46 = 9;
      v39 = v19;
      sub_1D8C5C2AC(v13, v14, v15, v19, v12, 9u);
      v20 = a1;
      v21 = v5;
      v22 = a4;
      v23 = a5;
      goto LABEL_25;
    }

    v29 = v19;
    MEMORY[0x1EEE9AC00](v16, v17);
    v36[2] = sub_1D8C7C65C;
    v36[3] = v30;
    v31 = *(v13 + 24);
    swift_getObjectType();
    v32 = MEMORY[0x1EEE9AC00](*(v13 + 32), *(v13 + 40));
    v35[2] = sub_1D8C7CC1C;
    v35[3] = v36;
    MessageSchemaDescribing.schematizing<A>(data:block:)(v32, v33, sub_1D8C7CC34, v35, v34, MEMORY[0x1E69E7CA8] + 8, v31);
    v25 = v13;
    v26 = v14;
    v27 = v15;
    v28 = v29;
  }

  return sub_1D8C60430(v25, v26, v27, v28, v12);
}

void *sub_1D8C79AA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = (*(a5 + 56))(v13, a4, a5);
  if (!v5)
  {
    v11 = v13[0];
    v12 = v13[1];
    v10 = (*(a5 + 48))(a4, a5);
    sub_1D8C36388(a1, &v11, v10);
    return sub_1D8C2BBF0(v11, v12);
  }

  return result;
}

void *sub_1D8C79B78(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = *a2;
  v14 = a2[1];
  result = (a3)(&v82, v6, a6);
  if (v7)
  {
    return result;
  }

  v68 = v14;
  v16 = v86;
  if (HIBYTE(v86) < 0xFFu)
  {
    v21 = (*(a6 + 48))(a5, a6);
    v66 = a1;
    v64 = a4;
    v63 = a3;
    v65 = v13;
    if (v68 >> 62)
    {
      if (v68 >> 62 == 1)
      {
LABEL_9:
        v23 = a6;
        v24 = v6;
        v25 = 2;
LABEL_10:
        v26 = v25 | (8 * v21);
LABEL_20:
        v62 = v26;
        v27 = v68;
        v87 = v26;
        while (1)
        {
          v67 = &v60;
          v28 = v82;
          v29 = v83;
          v31 = v84;
          v30 = v85;
          v32 = MEMORY[0x1EEE9AC00](v21, v22);
          *(&v60 - 4) = v66;
          *(&v60 - 6) = v33;
          *(&v60 - 2) = v65;
          *(&v60 - 1) = v27;
          v35 = MEMORY[0x1EEE9AC00](v32, v34);
          *(&v60 - 2) = sub_1D8C7C52C;
          *(&v60 - 1) = v38;
          if (v37 <= 4)
          {
            break;
          }

          if (v37 > 7)
          {
            if (v37 != 8)
            {
              if (v37 == 9)
              {
                v79 = MEMORY[0x1E6969080];
                v80 = &protocol witness table for Data;
                v76 = v28;
                v77 = v29;
                v81 = 9;
                v40 = v28;
                v41 = v29;
                v42 = v31;
                v43 = v30;
                v44 = v16;
                v45 = 9;
                goto LABEL_51;
              }

              MEMORY[0x1EEE9AC00](v35, v36);
              *(&v60 - 2) = sub_1D8C7C590;
              *(&v60 - 1) = v51;
              v52 = *(v28 + 24);
              ObjectType = swift_getObjectType();
              v53 = *(v28 + 32);
              v54 = *(v28 + 40);
              v60 = v53;
              MEMORY[0x1EEE9AC00](ObjectType, v55);
              *(&v60 - 2) = sub_1D8C7C640;
              *(&v60 - 1) = (&v60 - 4);
              v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAB3C0, &qword_1D8C888E0);
              MessageSchemaDescribing.schematizing<A>(data:block:)(v60, v54, sub_1D8C46B10, (&v60 - 4), ObjectType, v56, v52);
              goto LABEL_57;
            }

            sub_1D8C5C2AC(v28, v29, v31, v30, v16, 8u);
            if ((v29 & 0x1000000000000000) != 0)
            {
              ObjectType = sub_1D8C7ABF8(v28, v29);
              v60 = v57;
              sub_1D8C60430(v28, v29, v31, v30, v16);
              v28 = ObjectType;
              v29 = v60;
              if ((v60 & 0x2000000000000000) != 0)
              {
                goto LABEL_55;
              }

LABEL_39:
              if ((v28 & 0x1000000000000000) != 0)
              {
                v46 = (v29 & 0xFFFFFFFFFFFFFFFLL) + 32;
                v47 = v28 & 0xFFFFFFFFFFFFLL;
              }

              else
              {
                v46 = sub_1D8C85144();
              }

              v48 = (v47 + v46);
              if (!v46)
              {
                v48 = 0;
              }

              v72 = MEMORY[0x1E69E6290];
              v73 = &protocol witness table for UnsafeRawBufferPointer;
              v70 = v46;
              v71 = v48;
              sub_1D8C2F900(&v70, &v76);
              v81 = 8;
              sub_1D8C2FD04(v62);
              v74 = v65;
              v75 = v27;
              v49 = &v74;
            }

            else
            {
              if ((v29 & 0x2000000000000000) == 0)
              {
                goto LABEL_39;
              }

LABEL_55:
              v74 = v28;
              v75 = v29 & 0xFFFFFFFFFFFFFFLL;
              v72 = MEMORY[0x1E69E6290];
              v73 = &protocol witness table for UnsafeRawBufferPointer;
              v70 = &v74;
              v71 = &v74 + (HIBYTE(v29) & 0xF);
              sub_1D8C2F900(&v70, &v76);
              v81 = 8;
              sub_1D8C2FD04(v62);
              v69[0] = v65;
              v69[1] = v27;
              v49 = v69;
            }

            sub_1D8C35E54(&v76, v49);
            sub_1D8C2AB08(&v76);
            __swift_destroy_boxed_opaque_existential_1(&v70);

            goto LABEL_57;
          }

          if (v37 == 5)
          {
            v76 = v28;
            v81 = 5;
            goto LABEL_52;
          }

          if (v37 != 6)
          {
            v76 = v28;
            v77 = v29;
            v78 = v31;
            v79 = v30;
            LOBYTE(v80) = v16 & 1;
            v81 = 7;
            v40 = v28;
            v41 = v29;
            v42 = v31;
            v43 = v30;
            v44 = v16;
            v45 = 7;
LABEL_51:
            sub_1D8C5C2AC(v40, v41, v42, v43, v44, v45);
LABEL_52:
            sub_1D8C2FD04(v62);
            v70 = v65;
            v71 = v27;
            sub_1D8C35E54(&v76, &v70);
            v88 = 0;
            sub_1D8C2AB08(&v76);
LABEL_57:
            v39 = v24;
            v63(&v76, v24, v23);
            goto LABEL_58;
          }

          LOBYTE(v76) = v28 & 1;
          v81 = 6;
          sub_1D8C2FD04(v62);
          v70 = v65;
          v71 = v27;
          sub_1D8C35E54(&v76, &v70);
          v39 = v24;
LABEL_49:
          v88 = 0;
          sub_1D8C2AB08(&v76);
          v63(&v76, v39, v23);
LABEL_58:
          v24 = v39;
          v17 = v76;
          v18 = v77;
          v19 = v78;
          v20 = v79;
          v16 = v80;
          v58 = v80 >> 8;
          v21 = sub_1D8C60430(v82, v83, v84, v85, v86);
          v82 = v17;
          v83 = v18;
          v84 = v19;
          v85 = v20;
          v86 = v16;
          v59 = v58 > 0xFE;
          v27 = v68;
          if (v59)
          {
            return sub_1D8C60430(v17, v18, v19, v20, v16);
          }
        }

        if (v37 <= 1)
        {
          v39 = v24;
          if (!v37)
          {
            LODWORD(v76) = v28;
            v81 = 0;
LABEL_48:
            sub_1D8C2FD04(v62);
            v70 = v65;
            v71 = v68;
            sub_1D8C35E54(&v76, &v70);
            goto LABEL_49;
          }

          LODWORD(v76) = v28;
          LOBYTE(v37) = 1;
        }

        else
        {
          v39 = v24;
          if (v37 != 2)
          {
            if (v37 == 3)
            {
              v76 = v28;
            }

            else
            {
              LODWORD(v76) = v28;
              LOBYTE(v37) = 4;
            }

            v81 = v37;
            sub_1D8C2FD04(v62);
            v70 = v65;
            v71 = v68;
            sub_1D8C35E54(&v76, &v70);
            v50 = v63;
            v88 = 0;
            sub_1D8C2AB08(&v76);
            v50(&v76, v24, v23);
            goto LABEL_58;
          }

          v76 = v28;
        }

        v81 = v37;
        goto LABEL_48;
      }

      if (__PAIR128__(0x8000000000000000, 7) < __PAIR128__(v68, v13))
      {
        if (__PAIR128__(0x8000000000000000, 11) >= __PAIR128__(v68, v13))
        {
          if (__PAIR128__((v13 >= 8) + v68 + 0x7FFFFFFFFFFFFFFFLL, v13 - 8) < 3)
          {
            v23 = a6;
            v24 = v6;
            v25 = 1;
            goto LABEL_10;
          }

LABEL_62:
          v23 = a6;
          v24 = v6;
          v25 = 5;
          goto LABEL_10;
        }

        if (__PAIR128__((v13 >= 0xD) + v68 + 0x7FFFFFFFFFFFFFFFLL, v13 - 13) < 2)
        {
          goto LABEL_9;
        }
      }

      else if (__PAIR128__(v68, v13) >= __PAIR128__(0x8000000000000000, 3) && __PAIR128__((v13 >= 5) + v68 + 0x7FFFFFFFFFFFFFFFLL, v13 - 5) >= 3)
      {
        goto LABEL_62;
      }
    }

    v23 = a6;
    v24 = v6;
    v26 = 8 * v21;
    goto LABEL_20;
  }

  v17 = v82;
  v18 = v83;
  v19 = v84;
  v20 = v85;
  return sub_1D8C60430(v17, v18, v19, v20, v16);
}

void *sub_1D8C7A3F4(uint64_t a1, uint64_t *a2, void *(*a3)(unsigned __int128 *__return_ptr, uint64_t, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v14 = *a2;
  v13 = a2[1];
  result = a3(&v82, v6, a6);
  v85 = v7;
  if (v7)
  {
    return result;
  }

  v67 = v13;
  v68 = v14;
  v65 = a1;
  v16 = v84;
  if (HIBYTE(v84) > 0xFEu)
  {
    return sub_1D8C60430(v82, *(&v82 + 1), v83, *(&v83 + 1), v16);
  }

  sub_1D8C846C4();
  swift_allocObject();
  v17 = sub_1D8C846B4() | 0x4000000000000000;
  v80 = 0;
  v81 = v17;
  v18 = v6;
  v19 = v85;
  v20 = (*(a6 + 48))(a5, a6);
  if (v19)
  {
    v85 = v19;
    sub_1D8C2C684(0, v17);
    v23 = *(&v82 + 1);
    v22 = v82;
    v25 = *(&v83 + 1);
    v24 = v83;
    v26 = v16;
    return sub_1D8C60430(v22, v23, v24, v25, v26);
  }

  v64 = 8 * v20;
  v85 = a3;
  v66 = a4;
  do
  {
    v28 = *(&v82 + 1);
    v27 = v82;
    v29 = v83;
    v30 = MEMORY[0x1EEE9AC00](v20, v21);
    v60[0] = &v80;
    v60[1] = v68;
    v61 = v67;
    if (v32 <= 4)
    {
      if (v32 <= 1)
      {
        if (!v32)
        {
          LODWORD(v76) = v27;
          v79 = 0;
LABEL_35:
          v70 = v68;
          v71 = v67;
          sub_1D8C35E54(&v76, &v70);
          sub_1D8C2AB08(&v76);
          goto LABEL_40;
        }

        LODWORD(v76) = v27;
        LOBYTE(v32) = 1;
      }

      else
      {
        if (v32 != 2)
        {
          if (v32 == 3)
          {
            *&v76 = v27;
          }

          else
          {
            LODWORD(v76) = v27;
            LOBYTE(v32) = 4;
          }

          v79 = v32;
          v70 = v68;
          v71 = v67;
          sub_1D8C35E54(&v76, &v70);
          sub_1D8C2AB08(&v76);
          goto LABEL_40;
        }

        *&v76 = v27;
      }

      v79 = v32;
      goto LABEL_35;
    }

    if (v32 <= 7)
    {
      if (v32 == 5)
      {
        *&v76 = v27;
        v79 = 5;
        v70 = v68;
        v71 = v67;
LABEL_38:
        sub_1D8C35E54(&v76, &v70);
        sub_1D8C2AB08(&v76);
        goto LABEL_40;
      }

      if (v32 == 6)
      {
        LOBYTE(v76) = v27 & 1;
        v79 = 6;
        v70 = v68;
        v71 = v67;
        sub_1D8C35E54(&v76, &v70);
        sub_1D8C2AB08(&v76);
        goto LABEL_40;
      }

      v76 = __PAIR128__(v28, v27);
      v77 = v29;
      LOBYTE(v78) = v16 & 1;
      v79 = 7;
      v70 = v68;
      v71 = v67;
      v33 = v27;
      v34 = v28;
      v36 = *(&v29 + 1);
      v35 = v29;
      v37 = v16;
      v38 = 7;
LABEL_37:
      sub_1D8C5C2AC(v33, v34, v35, v36, v37, v38);
      goto LABEL_38;
    }

    if (v32 == 8)
    {
      sub_1D8C5C2AC(v27, v28, v29, *(&v29 + 1), v16, 8u);
      if ((v28 & 0x1000000000000000) != 0)
      {
        v63 = sub_1D8C7ABF8(v27, v28);
        v62 = v48;
        sub_1D8C60430(v27, v28, v29, *(&v29 + 1), v16);
        v27 = v63;
        v28 = v62;
      }

      if ((v28 & 0x2000000000000000) != 0)
      {
        v74 = v27;
        v75 = v28 & 0xFFFFFFFFFFFFFFLL;
        v72 = MEMORY[0x1E69E6290];
        v73 = &protocol witness table for UnsafeRawBufferPointer;
        v70 = &v74;
        v71 = &v74 + (HIBYTE(v28) & 0xF);
        sub_1D8C2F900(&v70, &v76);
        v79 = 8;
        v69[0] = v68;
        v69[1] = v67;
        sub_1D8C35E54(&v76, v69);
      }

      else
      {
        if ((v27 & 0x1000000000000000) != 0)
        {
          v39 = (v28 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v40 = v27 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          v39 = sub_1D8C85144();
        }

        v41 = (v40 + v39);
        if (!v39)
        {
          v41 = 0;
        }

        v72 = MEMORY[0x1E69E6290];
        v73 = &protocol witness table for UnsafeRawBufferPointer;
        v70 = v39;
        v71 = v41;
        sub_1D8C2F900(&v70, &v76);
        v79 = 8;
        v74 = v68;
        v75 = v67;
        sub_1D8C35E54(&v76, &v74);
      }

      sub_1D8C2AB08(&v76);
      __swift_destroy_boxed_opaque_existential_1(&v70);
    }

    else
    {
      if (v32 == 9)
      {
        *(&v77 + 1) = MEMORY[0x1E6969080];
        v78 = &protocol witness table for Data;
        v76 = __PAIR128__(v28, v27);
        v79 = 9;
        v70 = v68;
        v71 = v67;
        v33 = v27;
        v34 = v28;
        v36 = *(&v29 + 1);
        v35 = v29;
        v37 = v16;
        v38 = 9;
        goto LABEL_37;
      }

      MEMORY[0x1EEE9AC00](v30, v31);
      v59[2] = sub_1D8C7ABBC;
      v59[3] = v42;
      v43 = *(v27 + 24);
      swift_getObjectType();
      v44 = MEMORY[0x1EEE9AC00](*(v27 + 32), *(v27 + 40));
      v58[2] = sub_1D8C7C4F4;
      v58[3] = v59;
      MessageSchemaDescribing.schematizing<A>(data:block:)(v44, v45, sub_1D8C7C510, v58, v46, MEMORY[0x1E69E7CA8] + 8, v43);
    }

LABEL_40:
    v85(&v76, v18, a6);
    v16 = v78;
    v47 = v78 >> 8;
    v20 = sub_1D8C60430(v82, *(&v82 + 1), v83, *(&v83 + 1), v84);
    v82 = v76;
    v83 = v77;
    v84 = v16;
  }

  while (v47 < 0xFF);
  v49 = v65;
  result = sub_1D8C2FD04(v64 & 0xFFFFFFF8 | 2);
  v50 = v80;
  v51 = v81;
  v52 = v81 >> 62;
  if ((v81 >> 62) > 1)
  {
    if (v52 == 2)
    {
      v55 = *(v80 + 16);
      v54 = *(v80 + 24);
      v53 = v54 - v55;
      if (__OFSUB__(v54, v55))
      {
        __break(1u);
        v85 = 0;
        sub_1D8C2AB08(&v76);
        sub_1D8C2C684(v80, v81);
        v23 = *(&v82 + 1);
        v22 = v82;
        v25 = *(&v83 + 1);
        v24 = v83;
        v26 = v84;
        return sub_1D8C60430(v22, v23, v24, v25, v26);
      }
    }

    else
    {
      v53 = 0;
    }

LABEL_55:
    v56 = sub_1D8C2FD04(v53);
    MEMORY[0x1EEE9AC00](v56, v57);
    v61 = v49;
    sub_1D8C7B890(sub_1D8C36D88, v60, v50, v51);
    sub_1D8C2C684(v80, v81);
    v16 = v84;
    return sub_1D8C60430(v82, *(&v82 + 1), v83, *(&v83 + 1), v16);
  }

  if (!v52)
  {
    v53 = BYTE6(v81);
    goto LABEL_55;
  }

  if (!__OFSUB__(HIDWORD(v80), v80))
  {
    v53 = HIDWORD(v80) - v80;
    goto LABEL_55;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D8C7ABF8(uint64_t a1, unint64_t a2)
{
  v2 = sub_1D8C84F14();
  v6 = sub_1D8C7AC78(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_1D8C7AC78(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_1D8C85064();
    if (!v9 || (v10 = v9, v11 = sub_1D8C7ADD0(v9, 0), v12 = sub_1D8C7AE44(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_1D8C84E04();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_1D8C84E04();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_1D8C85144();
LABEL_4:

  return sub_1D8C84E04();
}

void *sub_1D8C7ADD0(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAB3B0, &qword_1D8C88358);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

unint64_t sub_1D8C7AE44(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_1D8C7B064(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_1D8C84EB4();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_1D8C85144();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_1D8C7B064(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_1D8C84E84();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

unint64_t sub_1D8C7B064(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_1D8C84ED4();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x1DA7255F0](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t sub_1D8C7B0E0(void *a1, char a2, void *a3)
{
  v49 = a1[2];
  if (!v49)
  {
  }

  v5 = a1[9];
  v6 = a1[10];
  v8 = a1[7];
  v7 = a1[8];
  v9 = a1[5];
  v10 = a1[6];
  v11 = a1[4];

  v50 = v7;
  v51 = v5;
  v52 = v6;
  sub_1D8C2F16C(v10, v8, v7, v5, v6);
  if (!v9)
  {
  }

  v12 = *a3;
  v14 = sub_1D8C4668C(v11, v9);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v18 = v13;
  if (v12[3] >= v17)
  {
    if (a2)
    {
      if ((v13 & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    else
    {
      sub_1D8C73FD4();
      if ((v18 & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    goto LABEL_10;
  }

  sub_1D8C71FA8(v17, a2 & 1);
  v19 = sub_1D8C4668C(v11, v9);
  if ((v18 & 1) == (v20 & 1))
  {
    v14 = v19;
    if ((v18 & 1) == 0)
    {
LABEL_13:
      v23 = *a3;
      *(*a3 + 8 * (v14 >> 6) + 64) |= 1 << v14;
      v24 = (v23[6] + 16 * v14);
      *v24 = v11;
      v24[1] = v9;
      v25 = (v23[7] + 40 * v14);
      *v25 = v10;
      v25[1] = v8;
      v25[2] = v50;
      v25[3] = v51;
      v25[4] = v6;
      v26 = v23[2];
      v27 = __OFADD__(v26, 1);
      v28 = v26 + 1;
      if (v27)
      {
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      v23[2] = v28;
      if (v49 != 1)
      {
        v29 = a1 + 17;
        v30 = 1;
        while (v30 < a1[2])
        {
          v31 = *(v29 - 1);
          v32 = *v29;
          v8 = *(v29 - 3);
          v33 = *(v29 - 2);
          v34 = *(v29 - 5);
          v10 = *(v29 - 4);
          v35 = *(v29 - 6);

          v50 = v33;
          v51 = v31;
          v52 = v32;
          sub_1D8C2F16C(v10, v8, v33, v31, v32);
          if (!v34)
          {
          }

          v36 = *a3;
          v37 = sub_1D8C4668C(v35, v34);
          v39 = v36[2];
          v40 = (v38 & 1) == 0;
          v27 = __OFADD__(v39, v40);
          v41 = v39 + v40;
          if (v27)
          {
            goto LABEL_26;
          }

          v42 = v38;
          if (v36[3] < v41)
          {
            sub_1D8C71FA8(v41, 1);
            v37 = sub_1D8C4668C(v35, v34);
            if ((v42 & 1) != (v43 & 1))
            {
              goto LABEL_28;
            }
          }

          if (v42)
          {
            goto LABEL_10;
          }

          v44 = *a3;
          *(*a3 + 8 * (v37 >> 6) + 64) |= 1 << v37;
          v45 = (v44[6] + 16 * v37);
          *v45 = v35;
          v45[1] = v34;
          v46 = (v44[7] + 40 * v37);
          *v46 = v10;
          v46[1] = v8;
          v46[2] = v50;
          v46[3] = v51;
          v46[4] = v32;
          v47 = v44[2];
          v27 = __OFADD__(v47, 1);
          v48 = v47 + 1;
          if (v27)
          {
            goto LABEL_27;
          }

          ++v30;
          v44[2] = v48;
          v29 += 7;
          if (v49 == v30)
          {
          }
        }

        __break(1u);
        goto LABEL_26;
      }
    }

LABEL_10:
    v21 = swift_allocError();
    swift_willThrow();

    MEMORY[0x1DA725EA0](v21);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAB000, &unk_1D8C85C00);
    if ((swift_dynamicCast() & 1) == 0)
    {
      sub_1D8C7C80C(v10, v8, v50, v51, v52);

      return MEMORY[0x1DA725E90](v21);
    }

    goto LABEL_29;
  }

LABEL_28:
  sub_1D8C85354();
  __break(1u);
LABEL_29:
  sub_1D8C85124();
  MEMORY[0x1DA7255C0](0xD00000000000001BLL, 0x80000001D8C8B930);
  sub_1D8C851E4();
  MEMORY[0x1DA7255C0](39, 0xE100000000000000);
  result = sub_1D8C851F4();
  __break(1u);
  return result;
}

uint64_t sub_1D8C7B514(void *a1, char a2, void *a3)
{
  v37 = a1[2];
  if (!v37)
  {
  }

  LOBYTE(v5) = a2;
  v7 = a1[4];
  v6 = a1[5];
  v8 = a1[6];
  v9 = *a3;

  v10 = sub_1D8C4668C(v7, v6);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v16 = v11;
  if (v9[3] < v15)
  {
    sub_1D8C72EF4(v15, v5 & 1);
    v10 = sub_1D8C4668C(v7, v6);
    if ((v16 & 1) == (v17 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    v10 = sub_1D8C85354();
    __break(1u);
  }

  if (v5)
  {
LABEL_7:
    if (v16)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v20 = v10;
  sub_1D8C74800();
  v10 = v20;
  if (v16)
  {
LABEL_8:
    v18 = swift_allocError();
    swift_willThrow();
    MEMORY[0x1DA725EA0](v18);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAB000, &unk_1D8C85C00);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return MEMORY[0x1DA725E90](v18);
    }

    goto LABEL_26;
  }

LABEL_11:
  v21 = *a3;
  *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
  v22 = (v21[6] + 16 * v10);
  *v22 = v7;
  v22[1] = v6;
  *(v21[7] + 8 * v10) = v8;
  v23 = v21[2];
  v14 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v14)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    sub_1D8C85124();
    MEMORY[0x1DA7255C0](0xD00000000000001BLL, 0x80000001D8C8B930);
    sub_1D8C851E4();
    MEMORY[0x1DA7255C0](39, 0xE100000000000000);
    result = sub_1D8C851F4();
    __break(1u);
    return result;
  }

  v21[2] = v24;
  if (v37 != 1)
  {
    v5 = a1 + 9;
    v8 = 1;
    while (v8 < a1[2])
    {
      v7 = *(v5 - 2);
      v6 = *(v5 - 1);
      v25 = *v5;
      v26 = *a3;

      v27 = sub_1D8C4668C(v7, v6);
      v29 = v26[2];
      v30 = (v28 & 1) == 0;
      v14 = __OFADD__(v29, v30);
      v31 = v29 + v30;
      if (v14)
      {
        goto LABEL_23;
      }

      v16 = v28;
      if (v26[3] < v31)
      {
        sub_1D8C72EF4(v31, 1);
        v27 = sub_1D8C4668C(v7, v6);
        if ((v16 & 1) != (v32 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v16)
      {
        goto LABEL_8;
      }

      v33 = *a3;
      *(*a3 + 8 * (v27 >> 6) + 64) |= 1 << v27;
      v34 = (v33[6] + 16 * v27);
      *v34 = v7;
      v34[1] = v6;
      *(v33[7] + 8 * v27) = v25;
      v35 = v33[2];
      v14 = __OFADD__(v35, 1);
      v36 = v35 + 1;
      if (v14)
      {
        goto LABEL_24;
      }

      ++v8;
      v33[2] = v36;
      v5 += 3;
      if (v37 == v8)
      {
      }
    }

    goto LABEL_25;
  }
}

uint64_t sub_1D8C7B890(uint64_t (*a1)(uint64_t, uint64_t), uint64_t a2, uint64_t a3, unint64_t a4)
{
  v10[2] = *MEMORY[0x1E69E9840];
  v5 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v5 != 2)
    {
      memset(v10, 0, 14);
      v6 = v10;
      return a1(v10, v6);
    }

    v7 = *(a3 + 16);
    v8 = *(a3 + 24);
    return sub_1D8C7B9C8(v7, v8, a1);
  }

  if (v5)
  {
    v7 = a3;
    v8 = a3 >> 32;
    if (a3 >> 32 < a3)
    {
      __break(1u);
    }

    return sub_1D8C7B9C8(v7, v8, a1);
  }

  v10[0] = a3;
  LOWORD(v10[1]) = a4;
  BYTE2(v10[1]) = BYTE2(a4);
  BYTE3(v10[1]) = BYTE3(a4);
  BYTE4(v10[1]) = BYTE4(a4);
  BYTE5(v10[1]) = BYTE5(a4);
  v6 = v10 + BYTE6(a4);
  return a1(v10, v6);
}

uint64_t sub_1D8C7B9C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  result = sub_1D8C84684();
  v7 = result;
  if (result)
  {
    result = sub_1D8C846A4();
    if (__OFSUB__(a1, result))
    {
LABEL_13:
      __break(1u);
      return result;
    }

    v7 += a1 - result;
  }

  v8 = __OFSUB__(a2, a1);
  v9 = a2 - a1;
  if (v8)
  {
    __break(1u);
    goto LABEL_13;
  }

  v10 = sub_1D8C84694();
  if (v10 >= v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  v12 = v11 + v7;
  if (v7)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  return a3(v7, v13);
}

uint64_t sub_1D8C7BA70(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1D8C7C4A4(v2);
  }

  v3 = v2[2];
  v18[0] = (v2 + 4);
  v18[1] = v3;
  result = sub_1D8C85264();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 4;
      do
      {
        v11 = v2[3 * v9 + 4];
        v12 = v8;
        v13 = v10;
        do
        {
          if (v11 >= *v13)
          {
            break;
          }

          v14 = *(v13 + 2);
          *(v13 + 3) = *v13;
          v13[5] = v13[2];
          *v13 = v11;
          *(v13 + 1) = v14;
          v13 -= 3;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 3;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAB2E8, &unk_1D8C888F0);
      v7 = sub_1D8C84F84();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

    v16[0] = v7 + 32;
    v16[1] = v6;
    sub_1D8C7BBD8(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_1D8C7BBD8(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v92 = result;
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v93 = *v92;
    if (!*v92)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_1D8C7C468(v7);
      v7 = result;
    }

    v84 = (v7 + 16);
    v85 = *(v7 + 16);
    if (v85 >= 2)
    {
      while (*a3)
      {
        v86 = (v7 + 16 * v85);
        v87 = *v86;
        v88 = &v84[2 * v85];
        v89 = v88[1];
        sub_1D8C7C1A0((*a3 + 24 * *v86), (*a3 + 24 * *v88), *a3 + 24 * v89, v93);
        if (v4)
        {
        }

        if (v89 < v87)
        {
          goto LABEL_114;
        }

        if (v85 - 2 >= *v84)
        {
          goto LABEL_115;
        }

        *v86 = v87;
        v86[1] = v89;
        v90 = *v84 - v85;
        if (*v84 < v85)
        {
          goto LABEL_116;
        }

        v85 = *v84 - 1;
        result = memmove(v88, v88 + 2, 16 * v90);
        *v84 = v85;
        if (v85 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v6 = 0;
  v7 = MEMORY[0x1E69E7CC0];
  v91 = a4;
  while (1)
  {
    v8 = v6++;
    if (v6 < v5)
    {
      v9 = *(*a3 + 24 * v6);
      v10 = 24 * v8;
      v11 = (*a3 + 24 * v8);
      v14 = *v11;
      v13 = v11 + 12;
      v12 = v14;
      v15 = v8 + 2;
      v16 = v9;
      while (v5 != v15)
      {
        v17 = *v13;
        v13 += 6;
        v18 = (v9 < v12) ^ (v17 >= v16);
        ++v15;
        v16 = v17;
        if ((v18 & 1) == 0)
        {
          v6 = v15 - 1;
          if (v9 >= v12)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v6 = v5;
      if (v9 >= v12)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v6 < v8)
      {
        goto LABEL_119;
      }

      if (v8 < v6)
      {
        v19 = 0;
        v20 = 24 * v6;
        v21 = v8;
        do
        {
          if (v21 != v6 + v19 - 1)
          {
            v27 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v22 = (v27 + v10);
            v23 = v27 + v20;
            v24 = *v22;
            v25 = *(v22 + 2);
            v26 = *(v23 - 24);
            *(v22 + 2) = *(v23 - 8);
            *v22 = v26;
            *(v23 - 24) = v24;
            *(v23 - 16) = v25;
          }

          ++v21;
          --v19;
          v20 -= 24;
          v10 += 24;
        }

        while (v21 < v6 + v19);
        v5 = a3[1];
      }
    }

LABEL_20:
    if (v6 < v5)
    {
      if (__OFSUB__(v6, v8))
      {
        goto LABEL_118;
      }

      if (v6 - v8 < a4)
      {
        if (__OFADD__(v8, a4))
        {
          goto LABEL_120;
        }

        if (v8 + a4 < v5)
        {
          v5 = v8 + a4;
        }

        if (v5 < v8)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v6 != v5)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v6 < v8)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1D8C4A268(0, *(v7 + 16) + 1, 1, v7);
      v7 = result;
    }

    v37 = *(v7 + 16);
    v36 = *(v7 + 24);
    v38 = v37 + 1;
    if (v37 >= v36 >> 1)
    {
      result = sub_1D8C4A268((v36 > 1), v37 + 1, 1, v7);
      v7 = result;
    }

    *(v7 + 16) = v38;
    v39 = v7 + 32;
    v40 = (v7 + 32 + 16 * v37);
    *v40 = v8;
    v40[1] = v6;
    v93 = *v92;
    if (!*v92)
    {
      goto LABEL_127;
    }

    if (v37)
    {
      while (1)
      {
        v41 = v38 - 1;
        if (v38 >= 4)
        {
          break;
        }

        if (v38 == 3)
        {
          v42 = *(v7 + 32);
          v43 = *(v7 + 40);
          v52 = __OFSUB__(v43, v42);
          v44 = v43 - v42;
          v45 = v52;
LABEL_57:
          if (v45)
          {
            goto LABEL_104;
          }

          v58 = (v7 + 16 * v38);
          v60 = *v58;
          v59 = v58[1];
          v61 = __OFSUB__(v59, v60);
          v62 = v59 - v60;
          v63 = v61;
          if (v61)
          {
            goto LABEL_106;
          }

          v64 = (v39 + 16 * v41);
          v66 = *v64;
          v65 = v64[1];
          v52 = __OFSUB__(v65, v66);
          v67 = v65 - v66;
          if (v52)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v62, v67))
          {
            goto LABEL_111;
          }

          if (v62 + v67 >= v44)
          {
            if (v44 < v67)
            {
              v41 = v38 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v38 < 2)
        {
          goto LABEL_112;
        }

        v68 = (v7 + 16 * v38);
        v70 = *v68;
        v69 = v68[1];
        v52 = __OFSUB__(v69, v70);
        v62 = v69 - v70;
        v63 = v52;
LABEL_72:
        if (v63)
        {
          goto LABEL_108;
        }

        v71 = (v39 + 16 * v41);
        v73 = *v71;
        v72 = v71[1];
        v52 = __OFSUB__(v72, v73);
        v74 = v72 - v73;
        if (v52)
        {
          goto LABEL_110;
        }

        if (v74 < v62)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v41 - 1 >= v38)
        {
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
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v79 = (v39 + 16 * (v41 - 1));
        v80 = *v79;
        v81 = (v39 + 16 * v41);
        v82 = v81[1];
        sub_1D8C7C1A0((*a3 + 24 * *v79), (*a3 + 24 * *v81), *a3 + 24 * v82, v93);
        if (v4)
        {
        }

        if (v82 < v80)
        {
          goto LABEL_99;
        }

        if (v41 > *(v7 + 16))
        {
          goto LABEL_100;
        }

        *v79 = v80;
        v79[1] = v82;
        v83 = *(v7 + 16);
        if (v41 >= v83)
        {
          goto LABEL_101;
        }

        v38 = v83 - 1;
        result = memmove((v39 + 16 * v41), v81 + 2, 16 * (v83 - 1 - v41));
        *(v7 + 16) = v83 - 1;
        if (v83 <= 2)
        {
          goto LABEL_3;
        }
      }

      v46 = v39 + 16 * v38;
      v47 = *(v46 - 64);
      v48 = *(v46 - 56);
      v52 = __OFSUB__(v48, v47);
      v49 = v48 - v47;
      if (v52)
      {
        goto LABEL_102;
      }

      v51 = *(v46 - 48);
      v50 = *(v46 - 40);
      v52 = __OFSUB__(v50, v51);
      v44 = v50 - v51;
      v45 = v52;
      if (v52)
      {
        goto LABEL_103;
      }

      v53 = (v7 + 16 * v38);
      v55 = *v53;
      v54 = v53[1];
      v52 = __OFSUB__(v54, v55);
      v56 = v54 - v55;
      if (v52)
      {
        goto LABEL_105;
      }

      v52 = __OFADD__(v44, v56);
      v57 = v44 + v56;
      if (v52)
      {
        goto LABEL_107;
      }

      if (v57 >= v49)
      {
        v75 = (v39 + 16 * v41);
        v77 = *v75;
        v76 = v75[1];
        v52 = __OFSUB__(v76, v77);
        v78 = v76 - v77;
        if (v52)
        {
          goto LABEL_113;
        }

        if (v44 < v78)
        {
          v41 = v38 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v5 = a3[1];
    a4 = v91;
    if (v6 >= v5)
    {
      goto LABEL_88;
    }
  }

  v28 = *a3;
  v29 = *a3 + 24 * v6 - 24;
  v30 = v8 - v6;
LABEL_30:
  v31 = *(v28 + 24 * v6);
  v32 = v30;
  v33 = v29;
  while (1)
  {
    if (v31 >= *v33)
    {
LABEL_29:
      ++v6;
      v29 += 24;
      --v30;
      if (v6 != v5)
      {
        goto LABEL_30;
      }

      v6 = v5;
      goto LABEL_37;
    }

    if (!v28)
    {
      break;
    }

    v34 = *(v33 + 32);
    *(v33 + 24) = *v33;
    *(v33 + 40) = *(v33 + 16);
    *v33 = v31;
    *(v33 + 8) = v34;
    v33 -= 24;
    if (__CFADD__(v32++, 1))
    {
      goto LABEL_29;
    }
  }

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
  return result;
}