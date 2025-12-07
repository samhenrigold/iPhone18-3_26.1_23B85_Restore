unint64_t sub_23882EC50()
{
  v1 = v0[1];
  result = v0[2];
  v3 = HIBYTE(v1) & 0xF;
  if ((v1 & 0x2000000000000000) == 0)
  {
    v3 = *v0 & 0xFFFFFFFFFFFFLL;
  }

  if (result >> 14 < 4 * v3)
  {
    v4 = sub_238880FF0(result, *v0, v0[1]);
    if ((v1 & 0x1000000000000000) != 0)
    {
      result = sub_2388D28E8();
    }

    else
    {
      result = ((sub_2388D2F88() + (v4 >> 16)) << 16) | 5;
    }

    v0[2] = result;
  }

  return result;
}

void sub_23882ECDC()
{
  v1 = *v0;
  v2 = v0[1];
  if ((v2 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(v2) & 0xF;
  }

  else
  {
    v3 = *v0 & 0xFFFFFFFFFFFFLL;
  }

  v4 = v0[2];
  if (4 * v3 > v4 >> 14)
  {
    v5 = v0;
    v6 = (v1 >> 59) & 1;
    if ((v2 & 0x1000000000000000) == 0)
    {
      LOBYTE(v6) = 1;
    }

    v7 = 4 << v6;
    while (1)
    {
      v8 = v5[5];
      v15[2] = v1;
      v15[3] = v2;
      v15[4] = v4;
      v16 = *(v5 + 3);
      v17 = v8;
      v18 = *(v5 + 3);
      v9 = sub_23882DCEC();
      if (v9 > 0x20 || ((1 << v9) & 0x100002600) == 0)
      {
        return;
      }

      if (v4 & 0xC) != v7 && (v4)
      {
        break;
      }

      if ((v4 & 0xC) == v7)
      {
        v4 = sub_238880F74(v4, v1, v2);
        if (v3 <= v4 >> 16)
        {
          goto LABEL_33;
        }
      }

      else if (v3 <= v4 >> 16)
      {
        goto LABEL_33;
      }

      if (v4)
      {
        goto LABEL_17;
      }

      v4 = v4 & 0xC | sub_238880E50(v4, v1, v2) & 0xFFFFFFFFFFFFFFF3 | 1;
      if ((v2 & 0x1000000000000000) == 0)
      {
LABEL_18:
        v10 = v4 >> 16;
        if ((v2 & 0x2000000000000000) != 0)
        {
          v15[0] = v1;
          v15[1] = v2 & 0xFFFFFFFFFFFFFFLL;
          v12 = *(v15 + v10);
        }

        else
        {
          v11 = (v2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          if ((v1 & 0x1000000000000000) == 0)
          {
            v11 = sub_2388D3008();
          }

          v12 = *(v11 + v10);
        }

        v13 = v12;
        v14 = __clz(v12 ^ 0xFF) - 24;
        if (v13 >= 0)
        {
          LOBYTE(v14) = 1;
        }

        v4 = ((v10 + v14) << 16) | 5;
        goto LABEL_26;
      }

LABEL_31:
      v4 = sub_2388D28E8();
LABEL_26:
      v5[2] = v4;
      if (4 * v3 <= v4 >> 14)
      {
        return;
      }
    }

    if (v3 <= v4 >> 16)
    {
      __break(1u);
LABEL_33:
      __break(1u);
      return;
    }

LABEL_17:
    if ((v2 & 0x1000000000000000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_31;
  }
}

unint64_t sub_23882EEBC(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v7 = sub_23882FB70(a1, a3, a4);
  v8 = sub_23882FB70(a2, a3, a4);
  result = v7;
  v10 = v7 >> 14;
  v11 = v8 >> 14;
  if (v10 >= v8 >> 14)
  {
    if (v11 >= v10)
    {
      return 0;
    }

    v13 = 0;
    while (1)
    {
      while (1)
      {
        if (__OFSUB__(v13--, 1))
        {
          goto LABEL_37;
        }

        if ((a4 & 0x1000000000000000) == 0)
        {
          break;
        }

        result = sub_2388D28F8();
        if (v11 >= result >> 14)
        {
          return v13;
        }
      }

      v20 = result >> 16;
      if ((a4 & 0x2000000000000000) != 0)
      {
        v29 = a3;
        v30 = a4 & 0xFFFFFFFFFFFFFFLL;
        if ((*(&v28 + v20 + 7) & 0xC0) == 0x80)
        {
          v26 = -2;
          do
          {
            v27 = *(&v29 + v20 + v26--) & 0xC0;
          }

          while (v27 == 128);
          v25 = v26 + 1;
          goto LABEL_32;
        }
      }

      else
      {
        v21 = (a4 & 0xFFFFFFFFFFFFFFFLL) + 32;
        if ((a3 & 0x1000000000000000) == 0)
        {
          v28 = result;
          v21 = sub_2388D3008();
          result = v28;
        }

        v22 = v21 + v20;
        if ((*(v22 - 1) & 0xC0) == 0x80)
        {
          v23 = -2;
          do
          {
            v24 = *(v22 + v23--) & 0xC0;
          }

          while (v24 == 128);
          v25 = v23 + 1;
          goto LABEL_32;
        }
      }

      v25 = -1;
LABEL_32:
      result = (result + (v25 << 16)) & 0xFFFFFFFFFFFF0000 | 5;
      if (v11 >= result >> 14)
      {
        return v13;
      }
    }
  }

  for (i = 0; ; ++i)
  {
    v13 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if ((a4 & 0x1000000000000000) != 0)
    {
      result = sub_2388D28E8();
    }

    else
    {
      v14 = result >> 16;
      if ((a4 & 0x2000000000000000) != 0)
      {
        v29 = a3;
        v30 = a4 & 0xFFFFFFFFFFFFFFLL;
        v16 = *(&v29 + v14);
      }

      else
      {
        v15 = (a4 & 0xFFFFFFFFFFFFFFFLL) + 32;
        if ((a3 & 0x1000000000000000) == 0)
        {
          v15 = sub_2388D3008();
        }

        v16 = *(v15 + v14);
      }

      v17 = v16;
      v18 = __clz(v16 ^ 0xFF) - 24;
      if (v17 >= 0)
      {
        LOBYTE(v18) = 1;
      }

      result = ((v14 + v18) << 16) | 5;
    }

    if (v11 <= result >> 14)
    {
      return v13;
    }
  }

  __break(1u);
LABEL_37:
  __break(1u);
  return result;
}

void sub_23882F0E0()
{
  v2 = *v0;
  v1 = v0[1];
  if ((v1 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(v1) & 0xF;
  }

  else
  {
    v3 = *v0 & 0xFFFFFFFFFFFFLL;
  }

  v4 = (v1 & 0x1000000000000000) == 0 || (v2 & 0x800000000000000) != 0;
  v5 = 11;
  if (v4)
  {
    v5 = 7;
  }

  v6 = v5 | (v3 << 16);
  v7 = v0[3];
  v8 = *(v7 + 16);
  if (!v8)
  {
    return;
  }

  v9 = v8 - 1;
  v10 = v7 + 32;
  v11 = (v7 + 32 + 16 * (v8 - 1));
  v12 = *v11;
  v13 = *(v11 + 1);
  if (v12 == 4)
  {
    v68 = *(v11 + 1);
    v69 = v10;
    v70 = v8;
    v71 = v4;
    if (v3)
    {
      v14 = 4 * v3;
      v15 = 4 << v4;
      v72 = v1 & 0xFFFFFFFFFFFFFFLL;
      while (1)
      {
        if ((v6 & 0xC) == v15 || (v6 & 1) == 0)
        {
          v17 = v6;
          if ((v6 & 0xC) == v15)
          {
            v17 = sub_238880F74(v6, v2, v1);
            if (v3 < v17 >> 16)
            {
              goto LABEL_185;
            }
          }

          else if (v3 < v6 >> 16)
          {
            goto LABEL_185;
          }

          if ((v17 & 1) == 0)
          {
            v17 = v17 & 0xC | sub_238880E50(v17, v2, v1) & 0xFFFFFFFFFFFFFFF3 | 1;
          }
        }

        else
        {
          v17 = v6;
          if (v3 < v6 >> 16)
          {
            goto LABEL_186;
          }
        }

        if (v17 < 0x4000)
        {
          goto LABEL_183;
        }

        if ((v1 & 0x1000000000000000) == 0)
        {
          break;
        }

        v24 = sub_2388D28F8();
LABEL_39:
        if ((v24 & 0xC) == v15 || (v24 & 1) == 0)
        {
          v28 = v24;
          if ((v24 & 0xC) == v15)
          {
            v28 = sub_238880F74(v24, v2, v1);
          }

          v29 = v28 >> 16;
          if (v28 >> 16 >= v3)
          {
            goto LABEL_188;
          }

          if ((v28 & 1) == 0)
          {
            v29 = sub_238880E50(v28, v2, v1) >> 16;
          }
        }

        else
        {
          v29 = v24 >> 16;
          if (v24 >> 16 >= v3)
          {
            goto LABEL_187;
          }
        }

        if ((v1 & 0x1000000000000000) != 0)
        {
          v32 = sub_2388D2F98();
        }

        else
        {
          if ((v1 & 0x2000000000000000) != 0)
          {
            v73 = v2;
            v74 = v72;
            v31 = &v73 + v29;
          }

          else
          {
            v30 = (v1 & 0xFFFFFFFFFFFFFFFLL) + 32;
            if ((v2 & 0x1000000000000000) == 0)
            {
              v30 = sub_2388D3008();
            }

            v31 = (v30 + v29);
          }

          v32 = *v31;
          if (*v31 < 0)
          {
            v33 = (__clz(v32 ^ 0xFF) - 24);
            if (v33 > 2)
            {
              if (v33 == 3)
              {
                v32 = ((v32 & 0xF) << 12) | ((v31[1] & 0x3F) << 6) | v31[2] & 0x3F;
              }

              else
              {
                v32 = ((v32 & 0xF) << 18) | ((v31[1] & 0x3F) << 12) | ((v31[2] & 0x3F) << 6) | v31[3] & 0x3F;
              }
            }

            else if (v33 != 1)
            {
              v32 = v31[1] & 0x3F | ((v32 & 0x1F) << 6);
            }
          }
        }

        if ((v32 - 43) > 0x3A || ((1 << (v32 - 43)) & 0x40000000400000DLL) == 0)
        {
          goto LABEL_72;
        }

        v14 = v24 >> 14;
        v6 = v24;
        if (!(v24 >> 14))
        {
          v6 = v24;
          goto LABEL_72;
        }
      }

      v18 = v17 >> 16;
      if ((v1 & 0x2000000000000000) != 0)
      {
        v73 = v2;
        v74 = v72;
        if ((*(&v72 + v18 + 7) & 0xC0) == 0x80)
        {
          v25 = -2;
          do
          {
            v26 = *(&v73 + v18 + v25--) & 0xC0;
          }

          while (v26 == 128);
          v23 = v25 + 1;
          goto LABEL_38;
        }
      }

      else
      {
        v19 = (v1 & 0xFFFFFFFFFFFFFFFLL) + 32;
        if ((v2 & 0x1000000000000000) == 0)
        {
          v34 = v17;
          v19 = sub_2388D3008();
          v17 = v34;
        }

        v20 = v19 + v18;
        if ((*(v20 - 1) & 0xC0) == 0x80)
        {
          v21 = -2;
          do
          {
            v22 = *(v20 + v21--) & 0xC0;
          }

          while (v22 == 128);
          v23 = v21 + 1;
          goto LABEL_38;
        }
      }

      v23 = -1;
LABEL_38:
      v24 = (v17 + (v23 << 16)) & 0xFFFFFFFFFFFF0000 | 5;
      goto LABEL_39;
    }

    v14 = 0;
LABEL_72:
    v8 = v70;
    LOBYTE(v4) = v71;
    v13 = v68;
    v10 = v69;
    if (v14 <= v68 >> 14)
    {
      v9 = v70 - 2;
    }

    v12 = 4;
  }

  if (v12 == 6)
  {
    if (v9 >= v8)
    {
LABEL_198:
      __break(1u);
      return;
    }

    v37 = (v10 + 16 * v9 + 8);
    v38 = -1;
  }

  else
  {
    if (v12)
    {
      goto LABEL_83;
    }

    v35 = v9 - 1;
    if (v9 < 1)
    {
LABEL_197:
      __break(1u);
      goto LABEL_198;
    }

    v36 = (v10 + 16 * v35);
    if (*v36 != 6)
    {
      --v9;
      v6 = v13;
      if (v35 < v8)
      {
        goto LABEL_85;
      }

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
LABEL_195:
      __break(1u);
LABEL_196:
      __break(1u);
      goto LABEL_197;
    }

    v37 = (v36 + 8);
    v38 = -2;
  }

  v6 = *v37;
  v9 += v38;
LABEL_83:
  if (v9 < 0)
  {
    return;
  }

  if (v9 >= v8)
  {
    goto LABEL_182;
  }

LABEL_85:
  v39 = v10 + 16 * v9;
  if (*v39 == 8)
  {
    v6 = *(v39 + 8);
    if (!v9)
    {
      return;
    }

    --v9;
  }

  if (v9 >= v8)
  {
    goto LABEL_195;
  }

  v40 = v10 + 16 * v9;
  if (*v40 == 7)
  {
    v6 = *(v40 + 8);
    if (!v9)
    {
      return;
    }

    --v9;
  }

  if (v9 >= v8)
  {
    goto LABEL_196;
  }

  if ((*(v10 + 16 * v9) & 0xFE) == 2 && v6 >= 0x4000)
  {
    v41 = 4 << v4;
    v72 = v1 & 0xFFFFFFFFFFFFFFLL;
    do
    {
      if ((v6 & 0xC) == v41 || (v6 & 1) == 0)
      {
        v44 = v6;
        if ((v6 & 0xC) == v41)
        {
          v44 = sub_238880F74(v6, v2, v1);
          if (v3 < v44 >> 16)
          {
            goto LABEL_189;
          }
        }

        else if (v3 < v6 >> 16)
        {
          goto LABEL_189;
        }

        if (v44)
        {
          if (v44 < 0x4000)
          {
            goto LABEL_184;
          }
        }

        else
        {
          v44 = v44 & 0xC | sub_238880E50(v44, v2, v1) & 0xFFFFFFFFFFFFFFF3 | 1;
          if (v44 < 0x4000)
          {
            goto LABEL_184;
          }
        }
      }

      else
      {
        v44 = v6;
        if (v3 < v6 >> 16)
        {
          goto LABEL_190;
        }
      }

      if ((v1 & 0x1000000000000000) != 0)
      {
        v50 = sub_2388D28F8();
        goto LABEL_125;
      }

      if ((v1 & 0x2000000000000000) != 0)
      {
        v73 = v2;
        v74 = v72;
        if ((*(&v72 + (v44 >> 16) + 7) & 0xC0) == 0x80)
        {
          v51 = -2;
          do
          {
            v52 = *(&v73 + (v44 >> 16) + v51--) & 0xC0;
          }

          while (v52 == 128);
          v49 = v51 + 1;
          goto LABEL_124;
        }
      }

      else
      {
        v45 = (v1 & 0xFFFFFFFFFFFFFFFLL) + 32;
        if ((v2 & 0x1000000000000000) == 0)
        {
          v67 = v44;
          v45 = sub_2388D3008();
          v44 = v67;
        }

        v46 = v45 + (v44 >> 16);
        if ((*(v46 - 1) & 0xC0) == 0x80)
        {
          v47 = -2;
          do
          {
            v48 = *(v46 + v47--) & 0xC0;
          }

          while (v48 == 128);
          v49 = v47 + 1;
          goto LABEL_124;
        }
      }

      v49 = -1;
LABEL_124:
      v50 = (v44 + (v49 << 16)) & 0xFFFFFFFFFFFF0000 | 5;
LABEL_125:
      v53 = v50 & 0xC;
      v54 = (v50 & 1) == 0 || v53 == v41;
      v55 = v54;
      if (v54)
      {
        v56 = v50;
        if (v53 == v41)
        {
          v56 = sub_238880F74(v50, v2, v1);
        }

        v57 = v56 >> 16;
        if (v56 >> 16 >= v3)
        {
          goto LABEL_192;
        }

        if ((v56 & 1) == 0)
        {
          v57 = sub_238880E50(v56, v2, v1) >> 16;
        }
      }

      else
      {
        v57 = v50 >> 16;
        if (v50 >> 16 >= v3)
        {
          goto LABEL_191;
        }
      }

      if ((v1 & 0x1000000000000000) != 0)
      {
        v60 = sub_2388D2F98();
      }

      else
      {
        if ((v1 & 0x2000000000000000) != 0)
        {
          v73 = v2;
          v74 = v72;
          v59 = &v73 + v57;
        }

        else
        {
          v58 = (v1 & 0xFFFFFFFFFFFFFFFLL) + 32;
          if ((v2 & 0x1000000000000000) == 0)
          {
            v58 = sub_2388D3008();
          }

          v59 = (v58 + v57);
        }

        v60 = *v59;
        if (*v59 < 0)
        {
          v63 = (__clz(v60 ^ 0xFF) - 24);
          if (v63 > 2)
          {
            if (v63 == 3)
            {
              v60 = ((v60 & 0xF) << 12) | ((v59[1] & 0x3F) << 6) | v59[2] & 0x3F;
            }

            else
            {
              v60 = ((v60 & 0xF) << 18) | ((v59[1] & 0x3F) << 12) | ((v59[2] & 0x3F) << 6) | v59[3] & 0x3F;
            }
          }

          else if (v63 != 1)
          {
            v60 = v59[1] & 0x3F | ((v60 & 0x1F) << 6);
          }
        }
      }

      if (v60 > 0x20 || ((1 << v60) & 0x100002600) == 0)
      {
        if (v55)
        {
          v61 = v50;
          if (v53 == v41)
          {
            v61 = sub_238880F74(v50, v2, v1);
          }

          v62 = v61 >> 16;
          if (v61 >> 16 >= v3)
          {
            goto LABEL_194;
          }

          if ((v61 & 1) == 0)
          {
            v62 = sub_238880E50(v61, v2, v1) >> 16;
          }
        }

        else
        {
          v62 = v50 >> 16;
          if (v50 >> 16 >= v3)
          {
            goto LABEL_193;
          }
        }

        if ((v1 & 0x1000000000000000) != 0)
        {
          v42 = sub_2388D2F98();
        }

        else
        {
          if ((v1 & 0x2000000000000000) != 0)
          {
            v73 = v2;
            v74 = v72;
            v65 = &v73 + v62;
          }

          else
          {
            v64 = (v1 & 0xFFFFFFFFFFFFFFFLL) + 32;
            if ((v2 & 0x1000000000000000) == 0)
            {
              v64 = sub_2388D3008();
            }

            v65 = (v64 + v62);
          }

          v42 = *v65;
          if (*v65 < 0)
          {
            v66 = (__clz(v42 ^ 0xFF) - 24);
            if (v66 > 2)
            {
              if (v66 == 3)
              {
                v42 = ((v42 & 0xF) << 12) | ((v65[1] & 0x3F) << 6) | v65[2] & 0x3F;
              }

              else
              {
                v42 = ((v42 & 0xF) << 18) | ((v65[1] & 0x3F) << 12) | ((v65[2] & 0x3F) << 6) | v65[3] & 0x3F;
              }
            }

            else if (v66 != 1)
            {
              v42 = v65[1] & 0x3F | ((v42 & 0x1F) << 6);
            }
          }
        }

        if (v42 != 44)
        {
          return;
        }
      }

      v6 = v50;
    }

    while (v50 >> 14);
  }
}

uint64_t sub_23882F9E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a5 + 16);
  if (v5)
  {
    v6 = a5 + 32;
    sub_2388300B8(a1, a2, a3);

    do
    {
      v6 += 4;
      sub_2388D2DB8();
      --v5;
    }

    while (v5);
    return a1;
  }

  else
  {

    return a1;
  }
}

uint64_t sub_23882FAB4()
{
  sub_2388D34A8();
  MEMORY[0x23EE67750](0);
  return sub_2388D34E8();
}

uint64_t sub_23882FB20()
{
  sub_2388D34A8();
  MEMORY[0x23EE67750](0);
  return sub_2388D34E8();
}

unint64_t sub_23882FB70(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 1) == 0 || (result & 0xC) == 4 << v3)
  {
    goto LABEL_9;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 < result >> 16)
  {
    __break(1u);
LABEL_9:
    result = sub_23882FC08(result, a2, a3);
    if ((result & 1) == 0)
    {
      return result & 0xC | sub_238880E50(result, a2, a3) & 0xFFFFFFFFFFFFFFF3 | 1;
    }
  }

  return result;
}

unint64_t sub_23882FC08(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 0xC) == 4 << v3)
  {
    v5 = a2;
    v6 = a3;
    result = sub_238880F74(result, a2, a3);
    a2 = v5;
    a3 = v6;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 < result >> 16)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_23882FC7C(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  v8 = v7;
  v16 = *v7;
  v17 = sub_238820B20(a3, a4, a5, a6);
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
      sub_2388223BC(v22, a7 & 1);
      v17 = sub_238820B20(a3, a4, a5, a6);
      if ((v23 & 1) != (v26 & 1))
      {
LABEL_18:
        result = sub_2388D3438();
        __break(1u);
        return result;
      }
    }

    else
    {
      v25 = v17;
      sub_238821120();
      v17 = v25;
    }
  }

  v27 = *v8;
  if (v23)
  {
    v28 = (v27[7] + 16 * v17);
    *v28 = a1;
    v28[1] = a2;
  }

  v27[(v17 >> 6) + 8] |= 1 << v17;
  v30 = (v27[6] + 32 * v17);
  *v30 = a3;
  v30[1] = a4;
  v30[2] = a5;
  v30[3] = a6;
  v31 = (v27[7] + 16 * v17);
  *v31 = a1;
  v31[1] = a2;
  v32 = v27[2];
  v21 = __OFADD__(v32, 1);
  v33 = v32 + 1;
  if (v21)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v27[2] = v33;
}

char *sub_23882FE28(uint64_t *a1, uint64_t a2, uint64_t a3, char a4)
{
  v7 = a1[3];
  v23 = v7;
  v8 = *(v7 + 16);
  result = sub_2388B6E18(0, v8, 0, MEMORY[0x277D84F90]);
  v10 = result;
  if ((a4 & 1) != 0 || a3 < 0 || !v8)
  {

    v18 = *a1;

    return v18;
  }

  v11 = a3 + 1;
  if (__OFADD__(a3, 1))
  {
    __break(1u);
    goto LABEL_24;
  }

  if (v8 < v11)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v11 < 0)
  {
LABEL_25:
    __break(1u);
    return result;
  }

  v12 = (v7 + 16 * a3 + 32);
  while (a3 < v11)
  {
    v17 = *v12;
    switch(v17)
    {
      case 1:
        v14 = *(v10 + 2);
        v13 = *(v10 + 3);
        v15 = v14 + 1;
        v16 = 34;
        goto LABEL_9;
      case 3:
        v14 = *(v10 + 2);
        v13 = *(v10 + 3);
        v15 = v14 + 1;
        v16 = 125;
LABEL_9:
        if (v14 >= v13 >> 1)
        {
          v10 = sub_2388B6E18((v13 > 1), v15, 1, v10);
        }

        *(v10 + 2) = v15;
        *&v10[4 * v14 + 32] = v16;
        break;
      case 2:
        v14 = *(v10 + 2);
        v13 = *(v10 + 3);
        v15 = v14 + 1;
        v16 = 93;
        goto LABEL_9;
    }

    --a3;
    v12 -= 16;
    if (a3 == -1)
    {
      goto LABEL_21;
    }
  }

  __break(1u);
LABEL_21:
  sub_238830050(&v23);
  v19 = sub_2388D2918();
  sub_23882F9E8(v19, v20, v21, v22, v10);

  return sub_2388D2A18();
}

unint64_t sub_23882FFFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF2FCB8;
  if (!qword_27DF2FCB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF2FCB8);
  }

  return result;
}

uint64_t sub_238830050(uint64_t a1)
{
  v2 = sub_238810E44(&qword_27DF2FCC0, &qword_2388D4F50);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2388300B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF2FCC8;
  if (!qword_27DF2FCC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF2FCC8);
  }

  return result;
}

uint64_t sub_23883011C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23883016C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_2388301C0(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_2388301D8(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for JSONCompletion.Scope(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF8 && a1[16])
  {
    return (*a1 + 248);
  }

  v3 = *a1;
  v4 = v3 >= 9;
  v5 = v3 - 9;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for JSONCompletion.Scope(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF7)
  {
    *result = a2 - 248;
    *(result + 8) = 0;
    if (a3 >= 0xF8)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF8)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for UnrecoverableCompletionError(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for UnrecoverableCompletionError(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

__n128 sub_238830384(uint64_t a1, uint64_t a2)
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

uint64_t sub_238830398(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_2388303E0(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_238830444(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF2FCD0;
  if (!qword_27DF2FCD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF2FCD0);
  }

  return result;
}

unint64_t sub_23883049C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF2FCD8;
  if (!qword_27DF2FCD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF2FCD8);
  }

  return result;
}

unint64_t sub_2388304F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF2FCE0;
  if (!qword_27DF2FCE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF2FCE0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for JSONCompletion.Scope.Kind(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for JSONCompletion.Scope.Kind(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_2388306B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF2FCE8;
  if (!qword_27DF2FCE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF2FCE8);
  }

  return result;
}

uint64_t sub_238830718@<X0>(uint64_t *a1@<X2>, uint64_t *a2@<X8>)
{
  MEMORY[0x23EE66C20]();
  v5 = *a1;
  v4 = a1[1];
  *a2 = *a1;
  a2[1] = v4;
  a2[2] = v5;
  a2[3] = v4;
  return swift_bridgeObjectRetain_n();
}

uint64_t sub_238830764@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{

  *a4 = a2;
  a4[1] = a3;
  return result;
}

uint64_t sub_2388307A8@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v3 = v2[1];
  *a2 = *v2;
  *(a2 + 8) = v3;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 16) = 0;
  *(a2 + 40) = a1;
}

uint64_t sub_2388307C4()
{
  v1 = sub_2388D0D88();
  MEMORY[0x28223BE20](v1);
  v2 = *(v0 + 8);
  v7 = *v0;
  v3 = *(v0 + 16);
  sub_2388D0DC8();
  swift_allocObject();
  v4 = sub_2388D0DB8();
  sub_238810E44(&qword_27DF2FA00, &unk_2388D44D0);
  *(swift_allocObject() + 16) = xmmword_2388D3F70;
  sub_2388D0D78();
  sub_238815B14();
  sub_238810E44(&qword_27DF2FA10, &unk_2388D3F90);
  sub_238815180(&qword_27DF2FA18, &qword_27DF2FA10, &unk_2388D3F90, MEMORY[0x277D83970]);
  sub_2388D2F08();
  sub_2388D0D98();
  v5 = sub_238819C1C(v7, v2, v3, v4);

  return v5;
}

void sub_2388309C0(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  v5[0] = v4;
  v5[1] = v3;

  sub_23882D770(v5, a2);
}

double sub_238830A00@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_23882D83C(a1, a2, &v8);
  if (!v3)
  {
    v6 = v9;
    if (v9)
    {
      v7 = v11 & 0x1FF;
      *a3 = v8;
      *(a3 + 8) = v6;
      *(a3 + 16) = v10;
      *(a3 + 32) = v7;
      result = *&v12;
      *(a3 + 40) = v12;
    }

    else
    {
      *(a3 + 48) = 0;
      result = 0.0;
      *(a3 + 16) = 0u;
      *(a3 + 32) = 0u;
      *a3 = 0u;
    }
  }

  return result;
}

uint64_t sub_238830A88@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = *v2;
  v3 = *(v2 + 8);
  v5 = *(v2 + 24);
  v6 = *(v2 + 32);
  v7 = *(v2 + 16);
  v8 = 256;
  if (!*(v2 + 17))
  {
    v8 = 0;
  }

  v9 = v8 & 0xFFFFFFFFFFFFFF00 | *(v2 + 16) | 0x8000000000000000;
  *a2 = v4;
  *(a2 + 8) = v3;
  *(a2 + 16) = v9;
  *(a2 + 24) = v5;
  *(a2 + 32) = v6;
  *(a2 + 40) = a1;
  sub_238814698(v4, v3, v7);
}

__n128 sub_238830B00(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_238830B14(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
  {
    return *a1 + 0x80000000;
  }

  v2 = (*(a1 + 16) >> 4) & 0xFFFFFFE0 | (*(a1 + 16) >> 3);
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

uint64_t sub_238830B68(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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
      *result = 0;
      *(result + 8) = 0;
      *(result + 24) = 0;
      *(result + 32) = 0;
      *(result + 16) = (16 * -a2) & 0xFFFFFFE00 | (8 * (-a2 & 0x1FLL));
      return result;
    }

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_238830BEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_238810E44(&qword_27DF2FCF0, &unk_2388D53D0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_238830CBC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_238810E44(&qword_27DF2FCF0, &unk_2388D53D0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for RawResponseStream(uint64_t a1)
{
  result = qword_27DF2FCF8;
  if (!qword_27DF2FCF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_238830DB8(uint64_t a1)
{
  sub_238830E94(319, &qword_27DF2FD08, &type metadata for StreamableContentEnvelope, MEMORY[0x277D858D8]);
  if (v1 <= 0x3F)
  {
    sub_238830E94(319, &qword_27DF2FD10, &type metadata for ResponseEnvelope, MEMORY[0x277D857D8]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_238830E94(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, void))
{
  if (!*a2)
  {
    v8 = sub_238810E8C(&qword_27DF2FA68, &qword_2388D4010);
    v9 = a4(a1, a3, v8, MEMORY[0x277D84950]);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_238830F10@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_2388D0D88();
  MEMORY[0x28223BE20](v4);
  v5 = *a1;
  v6 = a1[1];
  v7 = a1[2];
  if (v7 < 0)
  {
    sub_2388D0DC8();
    swift_allocObject();
    v10 = sub_2388D0DB8();
    sub_238810E44(&qword_27DF2FA00, &unk_2388D44D0);
    *(swift_allocObject() + 16) = xmmword_2388D3F70;
    sub_2388D0D78();
    sub_238815B14();
    sub_238810E44(&qword_27DF2FA10, &unk_2388D3F90);
    sub_238815180(&qword_27DF2FA18, &qword_27DF2FA10, &unk_2388D3F90, MEMORY[0x277D83970]);
    sub_2388D2F08();
    sub_2388D0D98();
    v5 = sub_238819C1C(v5, v6, v7, v10);
    v6 = v9;
  }

  else
  {
  }

  *a2 = v5;
  a2[1] = v6;
  return result;
}

uint64_t sub_2388310FC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v7 = MEMORY[0x277D84F90];
  if (a2)
  {
    v8 = a2;
  }

  else
  {
    v8 = MEMORY[0x277D84F90];
  }

  v41 = *(a1 + 1);
  v10 = a1[4];
  v9 = a1[5];
  *&v39 = v10;
  *(&v39 + 1) = v9;
  LOBYTE(v40) = 2;
  v37 = v9;
  swift_bridgeObjectRetain_n();

  sub_238827E14(&v41, &v38, &qword_27DF2FD18, &unk_2388D5400);
  v11 = sub_23881EF9C(&v39);
  v35 = v12;
  v36 = v11;
  v34 = v13;
  swift_bridgeObjectRelease_n();
  v14 = a1[6];
  v39 = *(a1 + 7);
  v40 = a1[9];
  v15 = *(v8 + 16);
  v33 = v14;
  result = swift_unknownObjectRetain();
  v17 = 0;
LABEL_5:
  v18 = 24 * v17;
  while (1)
  {
    if (v15 == v17)
    {

      v38 = v7;
      sub_238810E44(&qword_27DF2FBB8, &unk_2388D5410);
      sub_238815180(&qword_27DF2FBC0, &qword_27DF2FBB8, &unk_2388D5410, MEMORY[0x277D83958]);
      v26 = sub_2388D27B8();
      v28 = v27;

      v29 = sub_2388D3578();
      result = sub_2388D3578();
      *(a3 + 40) = v10;
      *(a3 + 48) = v37;
      *a3 = v26;
      *(a3 + 8) = v28;
      *(a3 + 16) = v30 / 1.0e18 + v29;
      *(a3 + 24) = v41;
      *(a3 + 56) = v36;
      *(a3 + 64) = v35;
      *(a3 + 72) = v34;
      *(a3 + 73) = HIBYTE(v34) & 1;
      *(a3 + 80) = 0;
      *(a3 + 88) = 0;
      *(a3 + 96) = v33;
      *(a3 + 104) = v39;
      *(a3 + 120) = v40;
      return result;
    }

    if (v17 >= *(v8 + 16))
    {
      break;
    }

    ++v17;
    v19 = v18 + 24;
    v20 = *(v8 + v18 + 48);
    v18 += 24;
    if ((v20 & 1) == 0)
    {
      v21 = *(v8 + v19 + 16);
      v31 = *(v8 + v19 + 8);
      v32 = v10;

      result = swift_isUniquelyReferenced_nonNull_native();
      v22 = v4;
      if ((result & 1) == 0)
      {
        result = sub_2388B686C(0, *(v7 + 16) + 1, 1, v7);
        v7 = result;
      }

      v24 = *(v7 + 16);
      v23 = *(v7 + 24);
      if (v24 >= v23 >> 1)
      {
        result = sub_2388B686C((v23 > 1), v24 + 1, 1, v7);
        v7 = result;
      }

      *(v7 + 16) = v24 + 1;
      v25 = v7 + 16 * v24;
      *(v25 + 32) = v31;
      *(v25 + 40) = v21;
      v4 = v22;
      v10 = v32;
      goto LABEL_5;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2388313C0@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 2);
  v11 = *a1;
  if (v3 < 0)
  {
    v10 = *(a1 + 24);
    v6 = a1[1] & 0x1FF;
    sub_238814698(*a1, *(a1 + 1), v3);

    v8 = v10;
    v7 = v11;
  }

  else
  {
    v4 = *(a1 + 1);
    v12[0] = 0;
    v12[1] = 0;

    result = GeneratedContent.init(id:text:)(v12, v11, v4, &v13);
    v7 = v13;
    v8 = v16;
    v9 = 256;
    if (!v15)
    {
      v9 = 0;
    }

    v6 = v9 | v14;
  }

  *a2 = v7;
  *(a2 + 16) = v6;
  *(a2 + 24) = v8;
  return result;
}

uint64_t sub_2388314A4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = a2[1];
  v41[0] = *a2;
  v41[1] = v8;
  v9 = a1[4];
  v10 = a1[5];

  result = GeneratedContent.init(id:text:)(v41, v9, v10, v42);
  if (!v4)
  {
    v12 = v42[0];
    v13 = v42[1];
    v40 = v43;
    v38 = v44;
    v14 = MEMORY[0x277D84F90];
    v39 = v46;
    if (a3)
    {
      v15 = a3;
    }

    else
    {
      v15 = MEMORY[0x277D84F90];
    }

    v37 = v45;
    v49 = *(a1 + 1);
    v16 = *(a1 + 4);
    v47 = *(a1 + 3);
    v48 = v16;
    v17 = *(v15 + 16);

    sub_238827E14(&v49, v42, &qword_27DF2FD18, &unk_2388D5400);
    result = sub_238827E14(&v47, v42, &qword_27DF2FD20, &unk_2388D5C40);
    v18 = 0;
LABEL_6:
    v19 = 24 * v18;
    while (1)
    {
      if (v17 == v18)
      {

        v42[0] = v14;
        sub_238810E44(&qword_27DF2FBB8, &unk_2388D5410);
        sub_238815180(&qword_27DF2FBC0, &qword_27DF2FBB8, &unk_2388D5410, MEMORY[0x277D83958]);
        v27 = sub_2388D27B8();
        v29 = v28;

        v30 = sub_2388D3578();
        sub_2388D3578();
        *(a4 + 40) = v12;
        *(a4 + 48) = v13;
        *(a4 + 56) = v40;
        *(a4 + 57) = v38;
        *a4 = v27;
        *(a4 + 8) = v29;
        *(a4 + 16) = v31 / 1.0e18 + v30;
        *(a4 + 24) = v49;
        *&v32 = v37;
        *(&v32 + 1) = v39;
        *&v33 = v12;
        *(&v33 + 1) = v13;
        *(a4 + 64) = v32;
        *(a4 + 80) = v33;
        *(a4 + 96) = v40;
        *(a4 + 97) = v38;
        *(a4 + 104) = v37;
        *(a4 + 112) = v39;
        v34 = v48;
        *(a4 + 120) = v47;
        *(a4 + 136) = v34;
        sub_238814698(v12, v13, v40);
      }

      if (v18 >= *(v15 + 16))
      {
        break;
      }

      ++v18;
      v20 = v19 + 24;
      v21 = *(v15 + v19 + 48);
      v19 += 24;
      if ((v21 & 1) == 0)
      {
        v36 = v12;
        v22 = *(v15 + v20 + 8);
        v23 = *(v15 + v20 + 16);

        result = swift_isUniquelyReferenced_nonNull_native();
        v35 = v13;
        if ((result & 1) == 0)
        {
          result = sub_2388B686C(0, *(v14 + 16) + 1, 1, v14);
          v14 = result;
        }

        v25 = *(v14 + 16);
        v24 = *(v14 + 24);
        if (v25 >= v24 >> 1)
        {
          result = sub_2388B686C((v24 > 1), v25 + 1, 1, v14);
          v14 = result;
        }

        *(v14 + 16) = v25 + 1;
        v26 = v14 + 16 * v25;
        *(v26 + 32) = v22;
        *(v26 + 40) = v23;
        v13 = v35;
        v12 = v36;
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_2388317A0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v54 = a7;
  v55 = a8;
  v52 = a1;
  v53 = a5;
  v50 = a2;
  v51 = a3;
  v11 = sub_238810E44(&qword_27DF2FD28, &qword_2388D8CE0);
  MEMORY[0x28223BE20](v11 - 8);
  v56 = &v43 - v12;
  type metadata accessor for StreamSnapshot(255, a5, a7, v13);
  sub_238810E8C(&qword_27DF2FA68, &qword_2388D4010);
  v14 = sub_2388D2CB8();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = (&v43 - v16);
  v49 = sub_2388D2CE8();
  v47 = *(v49 - 8);
  v18 = *(v47 + 64);
  v19 = MEMORY[0x28223BE20](v49);
  v46 = &v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v43 - v20;
  v48 = swift_allocBox();
  v22 = a6;
  v23 = *(*(a6 - 8) + 32);
  v44 = a6;
  v23(v24, v50, a6);
  v25 = v51[1];
  v50 = *v51;
  swift_checkMetadataState();
  *v17 = 1;
  (*(v15 + 104))(v17, *MEMORY[0x277D85898], v14);
  v45 = v21;
  sub_2388D2C78();
  (*(v15 + 8))(v17, v14);
  v26 = sub_2388D2BE8();
  (*(*(v26 - 8) + 56))(v56, 1, 1, v26);
  v27 = v46;
  v28 = v47;
  v29 = v21;
  v30 = v49;
  (*(v47 + 16))(v46, v29, v49);
  v31 = (*(v28 + 80) + 88) & ~*(v28 + 80);
  v32 = swift_allocObject();
  v32[2] = 0;
  v32[3] = 0;
  v34 = v53;
  v33 = v54;
  v32[4] = v53;
  v32[5] = v22;
  v35 = v55;
  v32[6] = v33;
  v32[7] = v35;
  v32[8] = v50;
  v32[9] = v25;
  v32[10] = v48;
  v36 = v32 + v31;
  v37 = v30;
  (*(v28 + 32))(v36, v27, v30);

  v38 = sub_2388864A4(0, 0, v56, &unk_2388D5428, v32);
  v39 = swift_allocObject();
  v40 = v44;
  v39[2] = v34;
  v39[3] = v40;
  v39[4] = v33;
  v39[5] = v35;
  v39[6] = v38;

  v41 = v45;
  sub_2388D2CA8();
  (*(v28 + 8))(v41, v37);

  return v38;
}

uint64_t sub_238831BF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[43] = v22;
  v8[44] = v23;
  v8[41] = a7;
  v8[42] = a8;
  v8[39] = a4;
  v8[40] = a5;
  v8[38] = a1;
  v8[45] = type metadata accessor for StreamSnapshot(0, a8, v23, a4);
  v8[46] = swift_task_alloc();
  v8[47] = sub_238810E8C(&qword_27DF2FA68, &qword_2388D4010);
  v10 = sub_2388D2C98();
  v8[48] = v10;
  v8[49] = *(v10 - 8);
  v8[50] = swift_task_alloc();
  v8[51] = swift_getTupleTypeMetadata2();
  v11 = sub_2388D2E78();
  v8[52] = v11;
  v8[53] = *(v11 - 8);
  v8[54] = swift_task_alloc();
  v8[55] = swift_getTupleTypeMetadata2();
  v8[56] = swift_task_alloc();
  v12 = *(a8 - 8);
  v8[57] = v12;
  v8[58] = v12;
  v8[59] = swift_task_alloc();
  v8[60] = swift_task_alloc();
  sub_238810E44(&qword_27DF2FD30, &qword_2388D5430);
  v8[61] = swift_task_alloc();
  v13 = sub_2388D17B8();
  v8[62] = v13;
  v8[63] = *(v13 - 8);
  v8[64] = swift_task_alloc();
  v14 = sub_2388D14A8();
  v8[65] = v14;
  v8[66] = *(v14 - 8);
  v8[67] = swift_task_alloc();
  v15 = sub_2388D14C8();
  v8[68] = v15;
  v8[69] = *(v15 - 8);
  v8[70] = swift_task_alloc();
  sub_238810E44(&qword_27DF2FD38, &qword_2388D5438);
  v8[71] = swift_task_alloc();
  v16 = sub_2388D1768();
  v8[72] = v16;
  v8[73] = *(v16 - 8);
  v8[74] = swift_task_alloc();
  v8[75] = *(v22 - 8);
  v8[76] = swift_task_alloc();
  v8[77] = *(v24 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8[78] = AssociatedTypeWitness;
  v8[79] = *(AssociatedTypeWitness - 8);
  v8[80] = swift_task_alloc();
  v18 = swift_getAssociatedTypeWitness();
  v8[81] = v18;
  v8[82] = *(v18 - 8);
  v8[83] = swift_task_alloc();
  v19 = sub_2388D1508();
  v8[84] = v19;
  v8[85] = *(v19 - 8);
  v8[86] = swift_task_alloc();
  v8[87] = swift_projectBox();

  return MEMORY[0x2822009F8](sub_238832200, 0, 0);
}

uint64_t sub_238832200()
{
  v14 = v0;
  v1 = v0[87];
  v2 = v0[76];
  v3 = v0[75];
  v5 = v0[43];
  v4 = v0[44];
  v6 = v0[42];
  v7 = v0[39];
  v8 = v0[40];
  sub_2388D14F8();
  v0[25] = 0;
  v0[26] = 0xE000000000000000;
  v13[0] = v7;
  v13[1] = v8;
  (*(v4 + 16))(v13, v6, v4);
  swift_beginAccess();
  (*(v3 + 16))(v2, v1, v5);
  sub_2388D2C58();
  v0[89] = MEMORY[0x277D84F90];
  v0[88] = 0;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v10 = swift_task_alloc();
  v0[90] = v10;
  *v10 = v0;
  v10[1] = sub_2388323A8;
  v11 = v0[78];

  return MEMORY[0x282200310](v0 + 2, 0, 0, v0 + 31, v11, AssociatedConformanceWitness);
}

uint64_t sub_2388323A8()
{
  *(*v1 + 728) = v0;

  if (v0)
  {

    v2 = sub_23883307C;
  }

  else
  {
    v2 = sub_2388324D0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2388324D0()
{
  if (*(v0 + 40))
  {
    sub_238826B08((v0 + 16), v0 + 56);
    sub_2388D14E8();
    sub_238815814(v0 + 56, v0 + 96);
    sub_238810E44(qword_27DF2FD40, &qword_2388D5440);
    if (swift_dynamicCast())
    {
      v1 = *(v0 + 592);
      v2 = *(v0 + 584);
      v3 = *(v0 + 576);
      v4 = *(v0 + 568);
      v5 = *(v0 + 560);
      v6 = *(v0 + 552);
      v7 = *(v0 + 544);

      (*(v2 + 56))(v4, 0, 1, v3);
      (*(v2 + 32))(v1, v4, v3);
      sub_2388D1758();
      v8 = sub_2388D14B8();
      (*(v6 + 8))(v5, v7);
      v9 = *(v8 + 16);
      if (v9)
      {
        v10 = *(v0 + 528);
        *(v0 + 296) = MEMORY[0x277D84F90];
        sub_2388B7BD0(0, v9, 0);
        v11 = *(v0 + 296);
        v12 = v8 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
        v120 = *(v10 + 16);
        v122 = *(v10 + 72);
        do
        {
          v124 = v9;
          v126 = v11;
          v120(*(v0 + 536), v12, *(v0 + 520));
          v13 = sub_2388D1488();
          v15 = v14;
          v16 = sub_2388D1498();
          if (v17)
          {
            *(v0 + 232) = 95;
            *(v0 + 240) = 0xE100000000000000;
            MEMORY[0x23EE66C20](v16);

            v18 = *(v0 + 232);
            v19 = *(v0 + 240);
          }

          else
          {
            v18 = 0;
            v19 = 0xE000000000000000;
          }

          v20 = *(v0 + 536);
          v21 = *(v128 + 528);
          v22 = *(v128 + 520);
          *(v128 + 216) = v13;
          *(v128 + 224) = v15;

          MEMORY[0x23EE66C20](v18, v19);

          v23 = *(v128 + 216);
          v24 = *(v128 + 224);
          (*(v21 + 8))(v20, v22);
          v11 = v126;
          v0 = v128;
          *(v128 + 296) = v126;
          v26 = *(v126 + 16);
          v25 = *(v126 + 24);
          if (v26 >= v25 >> 1)
          {
            sub_2388B7BD0((v25 > 1), v26 + 1, 1);
            v11 = *(v128 + 296);
          }

          *(v11 + 16) = v26 + 1;
          v27 = v11 + 16 * v26;
          *(v27 + 32) = v23;
          *(v27 + 40) = v24;
          v12 += v122;
          v9 = v124 - 1;
        }

        while (v124 != 1);
        (*(*(v128 + 584) + 8))(*(v128 + 592), *(v128 + 576));
      }

      else
      {
        v34 = *(v0 + 592);
        v35 = *(v0 + 584);
        v36 = *(v0 + 576);

        (*(v35 + 8))(v34, v36);
        v11 = MEMORY[0x277D84F90];
      }
    }

    else
    {
      v33 = *(v0 + 568);
      (*(*(v0 + 584) + 56))(v33, 1, 1, *(v0 + 576));
      sub_238827E88(v33, &qword_27DF2FD38, &qword_2388D5438);
      v11 = *(v0 + 712);
    }

    sub_238815814(v0 + 56, v0 + 136);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v68 = *(v0 + 496);
      v69 = *(v0 + 504);
      v70 = *(v0 + 488);
      sub_2388158BC((v0 + 56));
      (*(v69 + 56))(v70, 1, 1, v68);
      sub_238827E88(v70, &qword_27DF2FD30, &qword_2388D5430);
      v49 = *(v0 + 704);
LABEL_21:
      *(v0 + 712) = v11;
      *(v0 + 704) = v49;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v72 = swift_task_alloc();
      *(v0 + 720) = v72;
      *v72 = v0;
      v72[1] = sub_2388323A8;
      v47 = *(v0 + 624);
      v43 = v0 + 16;
      v46 = v0 + 248;
      v44 = 0;
      v45 = 0;
      v48 = AssociatedConformanceWitness;

      return MEMORY[0x282200310](v43, v44, v45, v46, v47, v48);
    }

    v37 = *(v0 + 704);
    v39 = *(v0 + 504);
    v38 = *(v0 + 512);
    v41 = *(v0 + 488);
    v40 = *(v0 + 496);
    (*(v39 + 56))(v41, 0, 1, v40);
    (*(v39 + 32))(v38, v41, v40);
    v42 = sub_2388D1778();
    MEMORY[0x23EE66C20](v42);

    v49 = v37 + 1;
    if (__OFADD__(v37, 1))
    {
      __break(1u);
      return MEMORY[0x282200310](v43, v44, v45, v46, v47, v48);
    }

    v50 = *(v0 + 728);
    v51 = *(v0 + 352);
    v52 = sub_2388D1778();
    (*(v51 + 24))(v52);
    if (!v50)
    {
      v73 = *(v0 + 432);
      v74 = *(v0 + 408);

      v75 = (*(*(v74 - 8) + 48))(v73, 1, v74);
      v76 = *(v0 + 496);
      if (v75 == 1)
      {
        v78 = *(v0 + 424);
        v77 = *(v0 + 432);
        v79 = *(v0 + 416);
        (*(*(v0 + 504) + 8))(*(v0 + 512), v76);
        sub_2388158BC((v0 + 56));
        (*(v78 + 8))(v77, v79);
      }

      else
      {
        v95 = *(v0 + 480);
        v114 = *(v0 + 472);
        v117 = *(v0 + 456);
        v97 = *(v0 + 440);
        v96 = *(v0 + 448);
        v98 = *(v0 + 432);
        v129 = *(v0 + 512);
        v118 = *(v0 + 504);
        v119 = *(v0 + 400);
        v123 = *(v0 + 392);
        v125 = *(v0 + 384);
        v127 = v11;
        v99 = *(v0 + 368);
        v115 = *(v0 + 352);
        v116 = *(v0 + 464);
        v100 = *(v0 + 336);
        v101 = *(v98 + 1);
        v102 = *(*(v0 + 408) + 48);
        v103 = *(v97 + 48);
        *v96 = *v98;
        *(v96 + 1) = v101;
        v104 = *(v116 + 32);
        v121 = v76;
        v104(&v96[v103], &v98[v102], v100);

        v104(v95, &v96[*(v97 + 48)], v100);

        v105 = sub_2388D17A8();
        v107 = v106;
        v108 = sub_2388D1788();
        (*(v116 + 16))(v114, v95, v100);
        v109 = *(v0 + 208);
        v113 = *(v0 + 200);
        *v99 = v127;
        *(v99 + 1) = v105;
        *(v99 + 2) = v107;
        *(v99 + 3) = v108;
        *(v99 + 4) = v49;
        v111 = type metadata accessor for StreamSnapshot(0, v100, v115, v110);
        (*(v117 + 32))(&v99[v111[12]], v114, v100);
        v112 = &v99[v111[13]];
        *v112 = v113;
        *(v112 + 1) = v109;
        v99[v111[14]] = 0;
        sub_2388D2CE8();

        v11 = v127;
        sub_2388D2CC8();
        (*(v123 + 8))(v119, v125);
        (*(v116 + 8))(v95, v100);
        (*(v118 + 8))(v129, v121);
        sub_2388158BC((v0 + 56));
      }

      goto LABEL_21;
    }

    sub_23882FFFC(v53, v54, v55);
    v56 = swift_allocError();
    *(v0 + 280) = v56;
    v57 = v56;
    v58 = swift_dynamicCast();
    v61 = v0;
    if (v58)
    {
      v63 = *(v0 + 504);
      v62 = *(v0 + 512);
      v64 = *(v0 + 496);
      sub_2388151C8(v58, v59, v60);
      v65 = swift_allocError();
      v66 = MEMORY[0x277D84F90];
      *v67 = 0xD000000000000027;
      *(v67 + 8) = 0x80000002388DE310;
      *(v67 + 16) = v66;
      *(v67 + 24) = 0;
      *(v67 + 32) = 5;
      *(v128 + 288) = v65;
      v0 = v128;
      sub_2388D2CE8();
      sub_2388D2CD8();
      (*(v63 + 8))(v62, v64);
      sub_2388158BC((v128 + 56));

      goto LABEL_21;
    }

    v80 = *(v0 + 640);
    v81 = *(v0 + 632);
    v82 = v61[78];
    v84 = v61[63];
    v83 = v61[64];
    v85 = *(v128 + 496);

    v86 = v85;
    v32 = v128;
    (*(v84 + 8))(v83, v86);
    sub_2388158BC((v128 + 56));
    (*(v81 + 8))(v80, v82);

    *(v128 + 256) = v56;
    sub_2388D2CE8();
  }

  else
  {
    v28 = *(v128 + 640);
    v29 = *(v128 + 632);
    v30 = *(v128 + 624);

    v31 = v28;
    v32 = v128;
    (*(v29 + 8))(v31, v30);

    *(v128 + 264) = 0;
    sub_2388D2CE8();
  }

  sub_2388D2CD8();
  v87 = v32[86];
  v88 = v32[85];
  v89 = v32[84];
  v90 = v32[83];
  v91 = v32[82];
  v92 = v32[81];
  sub_2388D14D8();
  (*(v91 + 8))(v90, v92);
  (*(v88 + 8))(v87, v89);

  v93 = v32[1];

  return v93();
}

uint64_t sub_23883307C()
{
  (*(v0[79] + 8))(v0[80], v0[78]);
  v0[32] = v0[31];
  sub_2388D2CE8();
  sub_2388D2CD8();
  v1 = v0[86];
  v2 = v0[85];
  v3 = v0[84];
  v4 = v0[83];
  v5 = v0[82];
  v6 = v0[81];
  sub_2388D14D8();
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);

  v7 = v0[1];

  return v7();
}

uint64_t sub_23883325C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for StreamSnapshot(255, a3, a5, a4);
  sub_238810E8C(&qword_27DF2FA68, &qword_2388D4010);
  v6 = sub_2388D2C88();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v12 - v8;
  (*(v7 + 16))(&v12 - v8, a1, v6);
  LODWORD(a1) = (*(v7 + 88))(v9, v6);
  v10 = *MEMORY[0x277D85870];
  result = (*(v7 + 8))(v9, v6);
  if (a1 == v10)
  {
    sub_2388D15A8();
    return sub_2388D2C08();
  }

  return result;
}

uint64_t sub_2388333E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for StreamSnapshot(255, *(v4 + 32), *(v4 + 48), a4);
  sub_238810E8C(&qword_27DF2FA68, &qword_2388D4010);
  v5 = sub_2388D2CE8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = (v7 + 88) & ~v7;
  v9 = *(v6 + 64);
  swift_unknownObjectRelease();

  (*(v6 + 8))(v4 + v8, v5);

  return MEMORY[0x2821FE8E8](v4, v8 + v9, v7 | 7);
}

uint64_t sub_2388334F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v5;
  v7 = v4[4];
  type metadata accessor for StreamSnapshot(255, v7, v4[6], a4);
  sub_238810E8C(&qword_27DF2FA68, &qword_2388D4010);
  v8 = *(sub_2388D2CE8() - 8);
  v9 = (*(v8 + 80) + 88) & ~*(v8 + 80);
  v10 = v4[2];
  v11 = v4[3];
  v12 = v4[8];
  v13 = v4[9];
  v14 = v4[10];
  v15 = swift_task_alloc();
  *(v6 + 16) = v15;
  *v15 = v6;
  v15[1] = sub_238833668;

  return sub_238831BF8(a1, v10, v11, v12, v13, v14, v4 + v9, v7);
}

uint64_t sub_238833668()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_23883375C()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

__n128 initializeBufferWithCopyOfBuffer for StreamingSafetyCheckCounter(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for StreamingSafetyCheckCounter(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for StreamingSafetyCheckCounter(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
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

  *(result + 24) = v3;
  return result;
}

void sub_23883381C(uint64_t a1)
{
  sub_238833C40();
  if (v1 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_2388338C8(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((*(*(*(a3 + 16) - 8) + 64) + ((v6 + 40) & ~v6) + 7) & 0xFFFFFFFFFFFFFFF8) + 17;
  v9 = (a2 - v7 + 255) >> 8;
  if (v8 <= 3)
  {
    v10 = v9 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v12 > 1)
  {
    if (v12 == 2)
    {
      v13 = *&a1[v8];
      if (!*&a1[v8])
      {
        goto LABEL_28;
      }
    }

    else
    {
      v13 = *&a1[v8];
      if (!v13)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v12 || (v13 = a1[v8]) == 0)
  {
LABEL_28:
    if ((v5 & 0x80000000) != 0)
    {
      return (*(v4 + 48))((((((((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + v6 + 8) & ~v6);
    }

    v17 = *a1;
    if (*a1 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v15 = (v13 - 1) << (8 * v8);
  if (v8 <= 3)
  {
    v16 = *a1;
  }

  else
  {
    v15 = 0;
    v16 = *a1;
  }

  return v7 + (v16 | v15) + 1;
}

void sub_238833A40(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((*(*(*(a4 + 16) - 8) + 64) + ((v9 + 40) & ~v9) + 7) & 0xFFFFFFFFFFFFFFF8) + 17;
  if (v8 >= a3)
  {
    v14 = 0;
    if (v8 >= a2)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v11 = (a3 - v8 + 255) >> 8;
    if (v10 <= 3)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    if (v8 >= a2)
    {
LABEL_17:
      if (v14 > 1)
      {
        if (v14 != 2)
        {
          *&a1[v10] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_32;
        }

        *&a1[v10] = 0;
      }

      else if (v14)
      {
        a1[v10] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_32;
      }

      if (!a2)
      {
        return;
      }

LABEL_32:
      if ((v7 & 0x80000000) != 0)
      {
        v18 = *(v6 + 56);
        v19 = (((((((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + v9 + 8) & ~v9;

        v18(v19);
      }

      else
      {
        if ((a2 & 0x80000000) != 0)
        {
          v17 = a2 & 0x7FFFFFFF;
        }

        else
        {
          v17 = a2 - 1;
        }

        *a1 = v17;
      }

      return;
    }
  }

  v15 = ~v8 + a2;
  bzero(a1, v10);
  if (v10 <= 3)
  {
    v16 = (v15 >> 8) + 1;
  }

  else
  {
    v16 = 1;
  }

  if (v10 <= 3)
  {
    *a1 = v15;
    if (v14 > 1)
    {
LABEL_27:
      if (v14 == 2)
      {
        *&a1[v10] = v16;
      }

      else
      {
        *&a1[v10] = v16;
      }

      return;
    }
  }

  else
  {
    *a1 = v15;
    if (v14 > 1)
    {
      goto LABEL_27;
    }
  }

  if (v14)
  {
    a1[v10] = v16;
  }
}

void sub_238833C40()
{
  if (!qword_27DF2FDC8)
  {
    v0 = sub_2388D2B18();
    if (!v1)
    {
      atomic_store(v0, &qword_27DF2FDC8);
    }
  }
}

uint64_t sub_238833C90(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = (*(a1 + 16) >> 4) & 0xFFFFFFE0 | (*(a1 + 16) >> 3);
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

uint64_t sub_238833CE4(uint64_t result, int a2, int a3)
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
      *result = 0;
      *(result + 8) = 0;
      *(result + 24) = 0;
      *(result + 32) = 0;
      *(result + 16) = (16 * -a2) & 0xFFFFFFE00 | (8 * (-a2 & 0x1FLL));
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

uint64_t sub_238833D78(uint64_t a1)
{
  v2 = sub_2388D2708();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v7 = MEMORY[0x277D84F90];
  if (v6)
  {
    v21 = MEMORY[0x277D84F90];
    sub_2388B8078(0, v6, 0);
    v7 = v21;
    v10 = *(v3 + 16);
    v8 = v3 + 16;
    v9 = v10;
    v11 = a1 + ((*(v8 + 64) + 32) & ~*(v8 + 64));
    v17 = *(v8 + 56);
    do
    {
      v9(v5, v11, v2);
      v21 = v7;
      v13 = *(v7 + 16);
      v12 = *(v7 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_2388B8078((v12 > 1), v13 + 1, 1);
      }

      v19 = v2;
      v20 = MEMORY[0x277D42E98];
      v14 = sub_238841100(&v18);
      v9(v14, v5, v2);
      v7 = v21;
      *(v21 + 16) = v13 + 1;
      sub_238826B08(&v18, v7 + 40 * v13 + 32);
      (*(v8 - 8))(v5, v2);
      v11 += v17;
      --v6;
    }

    while (v6);
  }

  return v7;
}

uint64_t sub_238833F44(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v17 = MEMORY[0x277D84F90];
    sub_2388B81E4(0, v1, 0);
    v2 = v17;
    v4 = a1 + 32;
    do
    {
      sub_238827E14(v4, v12, &qword_27DF2FF80, &unk_2388D5890);
      sub_238810E44(&qword_27DF2FF80, &unk_2388D5890);
      sub_238810E44(&qword_27DF2FF88, &unk_2388D5CC0);
      swift_dynamicCast();
      v17 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_2388B81E4((v5 > 1), v6 + 1, 1);
        v2 = v17;
      }

      *(v2 + 16) = v6 + 1;
      v7 = v2 + 56 * v6;
      v8 = v13;
      v9 = v14;
      v10 = v15;
      *(v7 + 80) = v16;
      *(v7 + 48) = v9;
      *(v7 + 64) = v10;
      *(v7 + 32) = v8;
      v4 += 56;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_238834090(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v27 = MEMORY[0x277D84F90];
    sub_2388B8264(0, v1, 0);
    v2 = v27;
    v4 = a1 + 32;
    do
    {
      v5 = *(v4 + 16);
      v6 = *(v4 + 48);
      v19 = *(v4 + 32);
      v20 = v6;
      v7 = *(v4 + 16);
      v18[0] = *v4;
      v18[1] = v7;
      v8 = *(v4 + 48);
      v24 = v19;
      v25 = v8;
      v21 = *(v4 + 64);
      v26 = *(v4 + 64);
      v22 = v18[0];
      v23 = v5;
      sub_238827E14(v18, v16, &qword_27DF2FF70, &unk_2388D5880);
      sub_238810E44(&qword_27DF2FF70, &unk_2388D5880);
      sub_238810E44(&qword_27DF2FF78, &qword_2388DC1E0);
      swift_dynamicCast();
      v26 = v17;
      v24 = v16[2];
      v25 = v16[3];
      v22 = v16[0];
      v23 = v16[1];
      v27 = v2;
      v10 = *(v2 + 16);
      v9 = *(v2 + 24);
      if (v10 >= v9 >> 1)
      {
        sub_2388B8264((v9 > 1), v10 + 1, 1);
        v2 = v27;
      }

      *(v2 + 16) = v10 + 1;
      v11 = v2 + 72 * v10;
      *(v11 + 32) = v22;
      v12 = v23;
      v13 = v24;
      v14 = v25;
      *(v11 + 96) = v26;
      *(v11 + 64) = v13;
      *(v11 + 80) = v14;
      *(v11 + 48) = v12;
      v4 += 72;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_238834238(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v19 = MEMORY[0x277D84F90];
    sub_2388B84F8(0, v1, 0);
    v2 = v19;
    v4 = (a1 + 56);
    do
    {
      v6 = *(v4 - 3);
      v5 = *(v4 - 2);
      v7 = *(v4 - 1);
      v8 = *v4;
      v19 = v2;
      v10 = *(v2 + 16);
      v9 = *(v2 + 24);

      if (v10 >= v9 >> 1)
      {
        v11 = sub_2388B84F8((v9 > 1), v10 + 1, 1);
        v2 = v19;
      }

      v17 = &type metadata for DynamicGenerationSchema.JSONKey;
      v18 = sub_238841320(v11, v12, v13);
      v14 = swift_allocObject();
      *&v16 = v14;
      *(v14 + 16) = v6;
      *(v14 + 24) = v5;
      *(v14 + 32) = v7;
      *(v14 + 40) = v8;
      *(v2 + 16) = v10 + 1;
      sub_238826B08(&v16, v2 + 40 * v10 + 32);
      v4 += 32;
      --v1;
    }

    while (v1);
  }

  return v2;
}

void *sub_23883435C(uint64_t a1)
{
  v2 = v1;
  v30 = *v1;
  v4 = sub_2388D1B18();
  v31 = *(v4 - 8);
  v32 = v4;
  MEMORY[0x28223BE20](v4);
  v29 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_2388D1BD8();
  v6 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2388D1058();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = (v2 + OBJC_IVAR____TtC16FoundationModels31GenerativeModelInferenceSession_sessionID);
  sub_2388D1048();
  v14 = sub_2388D1038();
  v16 = v15;
  (*(v10 + 8))(v12, v9);
  *v13 = v14;
  v13[1] = v16;
  v17 = a1;
  v18 = (a1 + OBJC_IVAR____TtC16FoundationModels19SystemLanguageModel_modelManagerUseCaseID);
  v19 = *(a1 + OBJC_IVAR____TtC16FoundationModels19SystemLanguageModel_modelManagerUseCaseID);
  v20 = *(a1 + OBJC_IVAR____TtC16FoundationModels19SystemLanguageModel_modelManagerUseCaseID + 8);
  v21 = OBJC_IVAR____TtC16FoundationModels19SystemLanguageModel_modelBundle;

  v22 = sub_23883FAD4(v17 + v21, v19, v20, v14, v16);

  v2[2] = v22;
  v23 = *(v17 + OBJC_IVAR____TtC16FoundationModels19SystemLanguageModel_guardrails);
  *(v2 + 24) = v23;
  v33[2] = v23;
  sub_238834690(v8);
  (*(v6 + 32))(v2 + OBJC_IVAR____TtC16FoundationModels31GenerativeModelInferenceSession_promptSanitizer, v8, v28);
  v33[1] = *(v2 + 24);
  v24 = v29;
  sub_238834A84(v29);
  (*(v31 + 32))(v2 + OBJC_IVAR____TtC16FoundationModels31GenerativeModelInferenceSession_responseSanitizer, v24, v32);
  v25 = *v18;
  v26 = v18[1];
  v33[0] = *(v2 + 24);
  *(v2 + OBJC_IVAR____TtC16FoundationModels31GenerativeModelInferenceSession_moderator) = sub_23883FDAC(v25, v26, v33);
  *(v2 + OBJC_IVAR____TtC16FoundationModels31GenerativeModelInferenceSession_model) = v17;
  return v2;
}

uint64_t sub_238834690@<X0>(uint64_t a1@<X8>)
{
  v29 = a1;
  v1 = sub_238810E44(&qword_27DF2FFA0, qword_2388D58B0);
  MEMORY[0x28223BE20](v1 - 8);
  v28 = &v25 - v2;
  v3 = sub_2388D1B78();
  v26 = *(v3 - 8);
  v27 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2388D1BB8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_2388D1A38();
  v10 = *(v25 - 8);
  v11 = MEMORY[0x28223BE20](v25);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v25 - v14;
  sub_2388D11B8();
  v17 = v31;
  v16 = v32;
  v18 = sub_238815878(v30, v31);
  MEMORY[0x28223BE20](v18);
  v20 = &v25 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v21 + 16))(v20);
  MEMORY[0x23EE65CC0](v20, v17, *(v16 + 16));
  v22 = v25;
  (*(v10 + 16))(v13, v15, v25);
  sub_2388D1BA8();
  (*(v7 + 16))(v5, v9, v6);
  (*(v7 + 56))(v5, 0, 1, v6);
  (*(v26 + 104))(v5, *MEMORY[0x277D0E5C0], v27);
  v23 = sub_2388D1B28();
  (*(*(v23 - 8) + 56))(v28, 1, 1, v23);
  sub_2388D1BC8();
  (*(v7 + 8))(v9, v6);
  (*(v10 + 8))(v15, v22);
  return sub_2388158BC(v30);
}

uint64_t sub_238834A84@<X0>(uint64_t a1@<X8>)
{
  v29 = a1;
  v1 = sub_238810E44(&qword_27DF2FF98, &qword_2388D58A8);
  MEMORY[0x28223BE20](v1 - 8);
  v28 = &v25 - v2;
  v3 = sub_2388D1AB8();
  v26 = *(v3 - 8);
  v27 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2388D1AF8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_2388D1A58();
  v10 = *(v25 - 8);
  v11 = MEMORY[0x28223BE20](v25);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v25 - v14;
  sub_2388D11C8();
  v17 = v31;
  v16 = v32;
  v18 = sub_238815878(v30, v31);
  MEMORY[0x28223BE20](v18);
  v20 = &v25 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v21 + 16))(v20);
  MEMORY[0x23EE65CE0](v20, v17, *(v16 + 16));
  v22 = v25;
  (*(v10 + 16))(v13, v15, v25);
  sub_2388D1AE8();
  (*(v7 + 16))(v5, v9, v6);
  (*(v7 + 56))(v5, 0, 1, v6);
  (*(v26 + 104))(v5, *MEMORY[0x277D0E578], v27);
  v23 = sub_2388D1A68();
  (*(*(v23 - 8) + 56))(v28, 1, 1, v23);
  sub_2388D1B08();
  (*(v7 + 8))(v9, v6);
  (*(v10 + 8))(v15, v22);
  return sub_2388158BC(v30);
}

uint64_t sub_238834E78(uint64_t a1)
{
  v2 = sub_2388D1AA8();
  v26 = *(v2 - 8);
  v27 = v2;
  MEMORY[0x28223BE20](v2);
  v25 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2388D1B68();
  v23 = *(v4 - 8);
  v24 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_238810E44(&qword_27DF2FF50, &qword_2388D5848);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v22 - v8;
  v10 = sub_2388D1478();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2388D1468();
  sub_238835260(a1, 0, v9);
  v14 = *MEMORY[0x277D71DA8];
  v15 = sub_2388D1458();
  v16 = *(v15 - 8);
  (*(v16 + 104))(v9, v14, v15);
  (*(v16 + 56))(v9, 0, 1, v15);
  sub_2388D13D8();
  (*(v11 + 8))(v13, v10);
  v17 = objc_opt_self();

  v18 = [v17 processInfo];
  [v18 processIdentifier];

  sub_2388D1B58();
  sub_2388D1B98();
  (*(v23 + 8))(v6, v24);

  v19 = [v17 processInfo];
  [v19 processIdentifier];

  v20 = v25;
  sub_2388D1A98();
  sub_2388D1AD8();
  return (*(v26 + 8))(v20, v27);
}

uint64_t sub_238835260@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v33 = a2;
  v34 = a3;
  v32 = sub_2388D2708();
  v4 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v31 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Transcript.Entry(0);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v29 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v29 - v14;
  MEMORY[0x28223BE20](v13);
  v18 = &v29 - v16;
  v19 = MEMORY[0x277D84F90];
  v35 = MEMORY[0x277D84F90];
  v20 = *(a1 + 16);
  v30 = v17;
  if (v20)
  {
    v21 = a1;
    sub_238841038(a1 + ((*(v17 + 80) + 32) & ~*(v17 + 80)), &v29 - v16, type metadata accessor for Transcript.Entry);
    sub_238841038(v18, v15, type metadata accessor for Transcript.Entry);
    if (swift_getEnumCaseMultiPayload())
    {
      sub_2388410A0(v15, type metadata accessor for Transcript.Entry);
      sub_2388410A0(v18, type metadata accessor for Transcript.Entry);
      v19 = MEMORY[0x277D84F90];
    }

    else
    {
      v29 = *(v15 + 2);
      v19 = *(v15 + 3);
      sub_2388410A0(v18, type metadata accessor for Transcript.Entry);
    }
  }

  else
  {
    v21 = a1;
  }

  v22 = sub_23884036C(v19);

  if (v20)
  {
    sub_238841038(v21 + ((*(v30 + 80) + 32) & ~*(v30 + 80)), v12, type metadata accessor for Transcript.Entry);
    sub_238841038(v12, v9, type metadata accessor for Transcript.Entry);
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_2388410A0(v12, type metadata accessor for Transcript.Entry);

      goto LABEL_13;
    }

    sub_2388410A0(v9, type metadata accessor for Transcript.Entry);
    sub_2388410A0(v12, type metadata accessor for Transcript.Entry);
  }

  v23 = v31;
  sub_2388D26E8();
  v24 = sub_2388B6F54(0, 1, 1, MEMORY[0x277D84F90]);
  v26 = v24[2];
  v25 = v24[3];
  if (v26 >= v25 >> 1)
  {
    v24 = sub_2388B6F54((v25 > 1), v26 + 1, 1, v24);
  }

  v24[2] = v26 + 1;
  v27 = (*(v4 + 32))(v24 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v26, v23, v32);
  v35 = v24;
LABEL_13:
  MEMORY[0x28223BE20](v27);
  *(&v29 - 4) = v21;
  *(&v29 - 3) = v22;
  *(&v29 - 16) = v33 & 1;
  *(&v29 - 1) = &v35;
  sub_2388D24A8();
}

uint64_t sub_2388356C0(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = sub_2388D24F8();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v4 = sub_2388D2498();
  v2[8] = v4;
  v2[9] = *(v4 - 8);
  v2[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2388357DC, 0, 0);
}

uint64_t sub_2388357DC()
{
  v1 = v0[4];
  sub_238835260(v0[3], 0, v0[10]);
  v0[2] = *(v1 + 16);
  v2 = swift_task_alloc();
  v0[11] = v2;
  v3 = sub_2388D13E8();
  v4 = sub_2388412D8(&qword_27DF2FF38, MEMORY[0x277D71A98], MEMORY[0x277D71A58]);
  *v2 = v0;
  v2[1] = sub_2388358E8;
  v5 = v0[7];

  return MEMORY[0x282165AE0](v5, v0 + 2, v3, v4);
}

uint64_t sub_2388358E8()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_238835AE4;
  }

  else
  {
    v2 = sub_2388359FC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2388359FC()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[7];
  v4 = v0[8];
  v5 = v0[5];
  v6 = v0[6];
  v7 = sub_2388D24D8();
  v9 = v8;
  v10 = sub_2388D24E8();
  (*(v6 + 8))(v3, v5);
  (*(v2 + 8))(v1, v4);

  v11 = v0[1];

  return v11(v7, v9, v10);
}

uint64_t sub_238835AE4()
{
  (*(v0[9] + 8))(v0[10], v0[8]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_238835B6C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  sub_2388D1058();
  v3[5] = swift_task_alloc();
  v4 = sub_2388D1A88();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_238835C5C, 0, 0);
}

uint64_t sub_238835C5C()
{

  sub_2388D1048();
  v1 = [objc_opt_self() processInfo];
  [v1 processIdentifier];

  sub_2388D1A78();
  v2 = swift_task_alloc();
  v0[9] = v2;
  *v2 = v0;
  v2[1] = sub_238835DA4;
  v3 = v0[8];
  v5 = v0[2];
  v4 = v0[3];

  return MEMORY[0x2821669B8](v5, v4, v3);
}

uint64_t sub_238835DA4(uint64_t a1, uint64_t a2)
{
  *(*v3 + 80) = v2;

  if (v2)
  {
    v4 = sub_2388414A8;
  }

  else
  {

    v4 = sub_2388414B0;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_238835EC4(uint64_t a1, uint64_t a2, char a3, char a4)
{
  *(v5 + 160) = a2;
  *(v5 + 168) = v4;
  *(v5 + 225) = a4;
  *(v5 + 224) = a3;
  *(v5 + 152) = a1;
  v6 = sub_238810E44(&qword_27DF2FF20, &unk_2388D5818);
  *(v5 + 176) = v6;
  *(v5 + 184) = *(v6 - 8);
  *(v5 + 192) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_238835F9C, 0, 0);
}

uint64_t sub_238835F9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 168);
  v5 = *(v4 + OBJC_IVAR____TtC16FoundationModels31GenerativeModelInferenceSession_moderator);
  *(v3 + 200) = v5;
  v6 = *(v4 + 24);
  if (v5)
  {
    if (v6 != 2 && (v6 != 1 || *(v3 + 224) == 1))
    {
      v7 = *(v3 + 184);
      v8 = *(v3 + 192);
      v9 = *(v3 + 176);
      v15 = v5;
      v10 = sub_2388D2848();
      *(v3 + 208) = v10;
      *(v3 + 16) = v3;
      *(v3 + 56) = v3 + 144;
      *(v3 + 24) = sub_238836270;
      swift_continuation_init();
      *(v3 + 136) = v9;
      v11 = sub_238841100((v3 + 112));
      sub_238841164();
      sub_238810E44(&qword_27DF2FA68, &qword_2388D4010);
      sub_2388D2B48();
      (*(v7 + 32))(v11, v8, v9);
      *(v3 + 80) = MEMORY[0x277D85DD0];
      *(v3 + 88) = 1107296256;
      *(v3 + 96) = sub_238837470;
      *(v3 + 104) = &unk_284B3C648;
      [v15 sanitizeTextAsynchronously:v10 completionHandler:?];
      (*(v7 + 8))(v11, v9);

      return MEMORY[0x282200938](v3 + 16);
    }
  }

  else if (v6 != 2)
  {
    sub_2388151C8(a1, a2, a3);
    swift_allocError();
    *v13 = 0xD000000000000020;
    *(v13 + 8) = 0x80000002388DE640;
    *(v13 + 16) = MEMORY[0x277D84F90];
    *(v13 + 24) = 0;
    *(v13 + 32) = 1;
    swift_willThrow();

    v12 = *(v3 + 8);
    goto LABEL_11;
  }

  v12 = *(v3 + 8);
LABEL_11:

  return v12();
}

uint64_t sub_238836270()
{
  v1 = *(*v0 + 48);
  *(*v0 + 216) = v1;
  if (v1)
  {
    v2 = sub_238836528;
  }

  else
  {
    v2 = sub_238836380;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_238836380()
{
  v1 = *(v0 + 144);

  v2 = [v1 adapterViolationCategory];
  v3 = [v1 safe];
  if (v3)
  {
    if ((*(v0 + 225) & 1) != 0 || *(v0 + 224) != 1 || v2 != 20)
    {
      v6 = *(v0 + 200);

      v7 = *(v0 + 8);
      goto LABEL_6;
    }

    sub_23884124C(v3, v4, v5);
    v8 = swift_allocError();
    *v13 = 0xD00000000000001DLL;
    v13[1] = 0x80000002388DE6F0;
  }

  else
  {
    sub_2388151C8(v3, v4, v5);
    v8 = swift_allocError();
    *v9 = 0xD00000000000001ALL;
    *(v9 + 8) = 0x80000002388DE6D0;
    *(v9 + 16) = MEMORY[0x277D84F90];
    *(v9 + 24) = 0;
    *(v9 + 32) = 2;
  }

  v10 = v8;
  swift_willThrow();

  v11 = *(v0 + 200);
  sub_2388BE130(v10, 1);
  swift_willThrow();

  v7 = *(v0 + 8);
LABEL_6:

  return v7();
}

uint64_t sub_238836528(uint64_t a1)
{
  v2 = v1[26];
  swift_willThrow();

  v3 = v1[27];
  v4 = v1[25];
  sub_2388BE130(v3, 1);
  swift_willThrow();

  v5 = v1[1];

  return v5();
}

uint64_t sub_2388365D4(uint64_t a1, char a2)
{
  *(v3 + 128) = a2;
  *(v3 + 24) = a1;
  *(v3 + 32) = v2;
  type metadata accessor for Transcript.Prompt(0);
  *(v3 + 40) = swift_task_alloc();
  v4 = type metadata accessor for Transcript.Entry(0);
  *(v3 + 48) = v4;
  *(v3 + 56) = *(v4 - 8);
  *(v3 + 64) = swift_task_alloc();
  *(v3 + 72) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2388366D0, 0, 0);
}

void sub_2388366D0()
{
  v1 = v0[3];
  v2 = *(v1 + 16);
  if (!v2)
  {
    v7 = MEMORY[0x277D84F90];
LABEL_29:
    v24 = 0;
    v25 = MEMORY[0x277D84F90];
    v26 = *(v7 + 2);
LABEL_30:
    v27 = 88 * v24;
    while (v26 != v24)
    {
      if (v24 >= *(v7 + 2))
      {
        __break(1u);
        goto LABEL_47;
      }

      v28 = v27 + 88;
      ++v24;
      v29 = *&v7[v27 + 80] >> 62;
      v27 += 88;
      if (v29 != 2)
      {
        v30 = v29 == 0;
        v31 = 72;
        if (v30)
        {
          v31 = 16;
        }

        v32 = 24;
        if (!v30)
        {
          v32 = 80;
        }

        v33 = *&v7[v31 - 56 + v28];
        v34 = *&v7[v32 - 56 + v28];

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v25 = sub_2388B686C(0, *(v25 + 2) + 1, 1, v25);
        }

        v36 = *(v25 + 2);
        v35 = *(v25 + 3);
        if (v36 >= v35 >> 1)
        {
          v25 = sub_2388B686C((v35 > 1), v36 + 1, 1, v25);
        }

        *(v25 + 2) = v36 + 1;
        v37 = &v25[16 * v36];
        *(v37 + 4) = v33;
        *(v37 + 5) = v34;
        goto LABEL_30;
      }
    }

    v0[2] = v25;
    sub_238810E44(&qword_27DF2FBB8, &unk_2388D5410);
    sub_238815180(&qword_27DF2FBC0, &qword_27DF2FBB8, &unk_2388D5410, MEMORY[0x277D83958]);
    v38 = sub_2388D27B8();
    v40 = v39;

    v0[10] = v38;
    v0[11] = v40;
    v41 = swift_task_alloc();
    v0[12] = v41;
    *v41 = v0;
    v41[1] = sub_238836BA0;

    sub_238836FD4(v38, v40);
    return;
  }

  v3 = v0[7];
  v4 = v0[8];
  v42 = v0[5];
  v5 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
  v6 = *(v3 + 72);
  v7 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = v0[8];
    v8 = v0[9];
    sub_238841038(v5, v8, type metadata accessor for Transcript.Entry);
    sub_238841038(v8, v9, type metadata accessor for Transcript.Entry);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v11 = v0[9];
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v13 = v0[9];
        sub_2388410A0(v0[8], type metadata accessor for Transcript.Entry);
        sub_2388410A0(v13, type metadata accessor for Transcript.Entry);
        v12 = MEMORY[0x277D84F90];
        goto LABEL_15;
      }

      if (EnumCaseMultiPayload == 3)
      {
        sub_2388410A0(v11, type metadata accessor for Transcript.Entry);
        v12 = v4[4];
      }

      else
      {
        sub_2388410A0(v11, type metadata accessor for Transcript.Entry);
        v12 = v4[3];
      }

      goto LABEL_13;
    }

    if (!EnumCaseMultiPayload)
    {
      sub_2388410A0(v11, type metadata accessor for Transcript.Entry);
      v12 = v4[2];
LABEL_13:

      goto LABEL_15;
    }

    v14 = v0[8];
    v15 = v0[5];
    sub_2388410A0(v11, type metadata accessor for Transcript.Entry);
    sub_238840F4C(v14, v15, type metadata accessor for Transcript.Prompt);
    v12 = *(v42 + 16);

    sub_2388410A0(v15, type metadata accessor for Transcript.Prompt);
LABEL_15:
    v16 = *(v12 + 16);
    v17 = *(v7 + 2);
    v18 = v17 + v16;
    if (__OFADD__(v17, v16))
    {
      break;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v18 <= *(v7 + 3) >> 1)
    {
      if (*(v12 + 16))
      {
        goto LABEL_24;
      }
    }

    else
    {
      if (v17 <= v18)
      {
        v20 = v17 + v16;
      }

      else
      {
        v20 = v17;
      }

      v7 = sub_2388B7158(isUniquelyReferenced_nonNull_native, v20, 1, v7);
      if (*(v12 + 16))
      {
LABEL_24:
        if ((*(v7 + 3) >> 1) - *(v7 + 2) < v16)
        {
          goto LABEL_49;
        }

        swift_arrayInitWithCopy();

        if (v16)
        {
          v21 = *(v7 + 2);
          v22 = __OFADD__(v21, v16);
          v23 = v21 + v16;
          if (v22)
          {
            goto LABEL_50;
          }

          *(v7 + 2) = v23;
        }

        goto LABEL_4;
      }
    }

    if (v16)
    {
      goto LABEL_48;
    }

LABEL_4:
    v5 += v6;
    if (!--v2)
    {
      goto LABEL_29;
    }
  }

LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
}

uint64_t sub_238836BA0()
{
  v2 = *v1;
  *(v2 + 104) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_238836EBC, 0, 0);
  }

  else
  {
    v3 = swift_task_alloc();
    *(v2 + 112) = v3;
    *v3 = v2;
    v3[1] = sub_238836D1C;
    v4 = *(v2 + 88);
    v5 = *(v2 + 128);
    v6 = *(v2 + 80);

    return sub_238835EC4(v6, v4, v5, 0);
  }
}

uint64_t sub_238836D1C()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_238836F48;
  }

  else
  {
    v2 = sub_238836E30;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_238836E30()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_238836EBC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_238836F48()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_238836FD4(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  sub_2388D1058();
  v3[5] = swift_task_alloc();
  v4 = sub_2388D1B48();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2388370C4, 0, 0);
}

uint64_t sub_2388370C4()
{

  sub_2388D1048();
  v1 = [objc_opt_self() processInfo];
  [v1 processIdentifier];

  sub_2388D1B38();
  v2 = swift_task_alloc();
  v0[9] = v2;
  *v2 = v0;
  v2[1] = sub_23883720C;
  v3 = v0[8];
  v5 = v0[2];
  v4 = v0[3];

  return MEMORY[0x2821669F0](v5, v4, v3);
}

uint64_t sub_23883720C(uint64_t a1, uint64_t a2)
{
  *(*v3 + 80) = v2;

  if (v2)
  {
    v4 = sub_2388373B4;
  }

  else
  {

    v4 = sub_23883732C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_23883732C()
{
  (*(v0[7] + 8))(v0[8], v0[6]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_2388373B4()
{
  v1 = v0[10];
  (*(v0[7] + 8))(v0[8], v0[6]);
  sub_2388BE130(v1, 1);
  swift_willThrow();

  v2 = v0[1];

  return v2();
}

void sub_238837470(uint64_t a1, void *a2, void *a3)
{
  sub_238815878((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v5 = a3;
    sub_238810E44(&qword_27DF2FF20, &unk_2388D5818);
    sub_2388D2B58();
  }

  else if (a2)
  {
    v6 = a2;
    sub_238810E44(&qword_27DF2FF20, &unk_2388D5818);
    sub_2388D2B68();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_238837520(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v8 + 152) = a7;
  *(v8 + 160) = v7;
  *(v8 + 136) = a5;
  *(v8 + 144) = a6;
  *(v8 + 120) = a3;
  *(v8 + 128) = a4;
  *(v8 + 104) = a1;
  *(v8 + 112) = a2;
  v10 = type metadata accessor for GenerationSchema(0);
  *(v8 + 168) = v10;
  *(v8 + 176) = *(v10 - 8);
  *(v8 + 184) = swift_task_alloc();
  v11 = sub_2388D1BE8();
  *(v8 + 192) = v11;
  *(v8 + 200) = *(v11 - 8);
  *(v8 + 208) = swift_task_alloc();
  sub_238810E44(&qword_27DF2FE20, &qword_2388D5740);
  *(v8 + 216) = swift_task_alloc();
  v12 = sub_2388D15A8();
  *(v8 + 224) = v12;
  *(v8 + 232) = *(v12 - 8);
  *(v8 + 240) = swift_task_alloc();
  sub_238810E44(&qword_27DF2FEA8, &qword_2388D57A8);
  *(v8 + 248) = swift_task_alloc();
  *(v8 + 256) = swift_task_alloc();
  v13 = sub_238810E44(&qword_27DF2FEB0, &qword_2388D57B0);
  *(v8 + 264) = v13;
  *(v8 + 272) = *(v13 - 8);
  *(v8 + 280) = swift_task_alloc();
  *(v8 + 288) = swift_task_alloc();
  v14 = sub_2388D1398();
  *(v8 + 296) = v14;
  *(v8 + 304) = *(v14 - 8);
  *(v8 + 312) = swift_task_alloc();
  sub_238810E44(&qword_27DF2FE28, &qword_2388D5748);
  *(v8 + 320) = swift_task_alloc();
  *(v8 + 328) = swift_task_alloc();
  v15 = sub_2388D16A8();
  *(v8 + 336) = v15;
  *(v8 + 344) = *(v15 - 8);
  *(v8 + 352) = swift_task_alloc();
  v16 = sub_2388D2498();
  *(v8 + 360) = v16;
  *(v8 + 368) = *(v16 - 8);
  *(v8 + 376) = swift_task_alloc();
  *(v8 + 384) = swift_task_alloc();
  *(v8 + 392) = swift_task_alloc();
  *(v8 + 400) = swift_task_alloc();
  *(v8 + 408) = swift_task_alloc();
  *(v8 + 416) = swift_task_alloc();
  *(v8 + 424) = swift_task_alloc();
  *(v8 + 432) = swift_task_alloc();
  *(v8 + 440) = swift_task_alloc();
  *(v8 + 448) = swift_task_alloc();
  *(v8 + 456) = swift_task_alloc();
  *(v8 + 464) = swift_task_alloc();
  *(v8 + 472) = swift_task_alloc();
  *(v8 + 480) = swift_task_alloc();
  v17 = swift_task_alloc();
  v18 = *(a4 + 72);
  *(v8 + 80) = *(a4 + 64);
  v19 = *(a4 + 48);
  *(v8 + 48) = *(a4 + 32);
  *(v8 + 64) = v19;
  v20 = *(a4 + 16);
  *(v8 + 16) = *a4;
  *(v8 + 32) = v20;
  *(v8 + 488) = v17;
  *(v8 + 496) = v18;
  *(v8 + 601) = *(a4 + 80);

  return MEMORY[0x2822009F8](sub_2388379BC, 0, 0);
}

uint64_t sub_2388379BC()
{
  v1 = v0[21];
  v2 = v0[22];
  v3 = v0[19];
  v4 = *(v2 + 48);
  v0[63] = v4;
  v0[64] = (v2 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  v5 = v4(v3, 1, v1) != 1;
  v6 = swift_task_alloc();
  v0[65] = v6;
  *v6 = v0;
  v6[1] = sub_238837A88;
  v7 = v0[14];

  return sub_2388365D4(v7, v5);
}

uint64_t sub_238837A88()
{
  *(*v1 + 528) = v0;

  if (v0)
  {
    v2 = sub_238839358;
  }

  else
  {
    v2 = sub_238837B9C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_238837B9C()
{
  v71 = v0;
  if (*(*(v0 + 120) + 16))
  {
    v52 = *(v0 + 602);
    v61 = *(v0 + 480);
    v57 = *(v0 + 456);
    v58 = *(v0 + 464);
    v1 = *(v0 + 440);
    v2 = *(v0 + 432);
    v3 = *(v0 + 360);
    v4 = *(v0 + 368);
    v6 = *(v0 + 344);
    v5 = *(v0 + 352);
    v7 = *(v0 + 328);
    v53 = *(v0 + 336);
    v54 = *(v0 + 160);
    v55 = *(v0 + 448);
    v60 = *(v0 + 472);
    v8 = *(v0 + 128);
    v56 = *(v0 + 120);
    v9 = *(v0 + 112);
    v10 = v8[3];
    v66 = v8[2];
    v67 = v10;
    v68 = *(v8 + 8);
    v11 = v8[1];
    v64 = *v8;
    v65 = v11;
    *(v0 + 600) = 0;
    sub_238835260(v9, 1, v2);
    v69 = 1;
    LOBYTE(v70) = 0;
    HIBYTE(v70) = v52;
    sub_238839734(&v64);
    sub_2388412D8(&qword_27DF2FEB8, MEMORY[0x277D42D78], MEMORY[0x277D42D70]);
    sub_2388D2638();
    (*(v6 + 8))(v5, v53);
    v12 = *(v4 + 8);
    *(v0 + 536) = v12;
    *(v0 + 544) = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v12(v2, v3);
    v13 = sub_2388D2268();
    (*(*(v13 - 8) + 56))(v7, 1, 1, v13);
    sub_2388D2658();
    sub_238827E88(v7, &qword_27DF2FE28, &qword_2388D5748);
    v12(v1, v3);
    sub_238840734(v56);
    sub_2388D2648();

    v12(v55, v3);
    sub_2388D2618();
    v12(v57, v3);
    sub_2388D2628();
    v12(v58, v3);
    sub_2388D25F8();
    v12(v60, v3);
    sub_2388D2608();
    v12(v61, v3);
    *(v0 + 88) = *(v54 + 16);
    sub_2388D13E8();
    sub_2388D2668();
    v14 = swift_task_alloc();
    *(v0 + 552) = v14;
    v15 = sub_2388412D8(&qword_27DF2FEC0, MEMORY[0x277D71A98], MEMORY[0x277D71A50]);
    *v14 = v0;
    v14[1] = sub_238838440;
    v16 = *(v0 + 312);
    v17 = *(v0 + 296);
    v18 = *(v0 + 264);

    return MEMORY[0x282165A80](v16, v17, v18, v15);
  }

  else
  {
    v19 = *(v0 + 601);
    v20 = *(v0 + 496);
    v21 = *(v0 + 480);
    v22 = *(v0 + 368);
    v24 = *(v0 + 352);
    v23 = *(v0 + 360);
    v25 = *(v0 + 344);
    v63 = *(v0 + 336);
    sub_238835260(*(v0 + 112), 0, v21);
    v26 = *(v0 + 64);
    v66 = *(v0 + 48);
    v67 = v26;
    v27 = *(v0 + 80);
    v28 = *(v0 + 32);
    v64 = *(v0 + 16);
    v65 = v28;
    v68 = v27;
    v69 = v20;
    v70 = v19;
    sub_238839734(&v64);
    sub_2388412D8(&qword_27DF2FEB8, MEMORY[0x277D42D78], MEMORY[0x277D42D70]);
    sub_2388D2638();
    (*(v25 + 8))(v24, v63);
    v29 = *(v22 + 8);
    *(v0 + 568) = v29;
    *(v0 + 576) = (v22 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v29(v21, v23);
    v30 = *(v0 + 504);
    v31 = *(v0 + 216);
    v32 = *(v0 + 168);
    sub_238827E14(*(v0 + 152), v31, &qword_27DF2FE20, &qword_2388D5740);
    v33 = v30(v31, 1, v32);
    v34 = *(v0 + 320);
    if (v33 == 1)
    {
      v35 = sub_2388D2268();
      (*(*(v35 - 8) + 56))(v34, 1, 1, v35);
    }

    else
    {
      v36 = *(v0 + 184);
      sub_238840F4C(*(v0 + 216), v36, type metadata accessor for GenerationSchema);

      sub_238839DC0(v34);
      sub_2388410A0(v36, type metadata accessor for GenerationSchema);
      v37 = sub_2388D2268();
      (*(*(v37 - 8) + 56))(v34, 0, 1, v37);
    }

    v38 = *(v0 + 376);
    v39 = *(v0 + 360);
    v40 = *(v0 + 320);
    sub_2388D2658();
    sub_238827E88(v40, &qword_27DF2FE28, &qword_2388D5748);
    v29(v38, v39);
    v62 = *(v0 + 416);
    v41 = *(v0 + 400);
    v42 = *(v0 + 384);
    v43 = *(v0 + 392);
    v44 = *(v0 + 360);
    v45 = *(v0 + 160);
    v59 = *(v0 + 408);
    sub_2388D2648();

    v29(v42, v44);
    sub_2388D2618();
    v29(v43, v44);
    sub_2388D2628();
    v29(v41, v44);
    sub_2388D25F8();
    v29(v59, v44);
    sub_2388D2608();
    v29(v62, v44);
    *(v0 + 96) = *(v45 + 16);
    sub_2388D13E8();
    sub_2388D2668();
    v46 = swift_task_alloc();
    *(v0 + 584) = v46;
    v47 = sub_2388412D8(&qword_27DF2FEC8, MEMORY[0x277D71A98], MEMORY[0x277D71A60]);
    *v46 = v0;
    v46[1] = sub_238838F58;
    v48 = *(v0 + 264);
    v49 = *(v0 + 208);
    v50 = *(v0 + 192);

    return MEMORY[0x282165A88](v49, v50, v48, v47);
  }
}

uint64_t sub_238838440()
{
  v2 = *v1;
  *(*v1 + 560) = v0;

  (*(v2[34] + 8))(v2[36], v2[33]);
  if (v0)
  {
    v3 = sub_238838D60;
  }

  else
  {
    v3 = sub_2388385A8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

void sub_2388385A8()
{
  v2 = *(v0 + 232);
  v1 = *(v0 + 240);
  v3 = *(v0 + 224);
  sub_2388D1388();
  v4 = sub_2388D1518();
  (*(v2 + 8))(v1, v3);
  v5 = *(v0 + 256);
  if (*(v4 + 16))
  {
    v6 = sub_2388D1598();
    v7 = *(v6 - 8);
    (*(v7 + 16))(v5, v4 + ((*(v7 + 80) + 32) & ~*(v7 + 80)), v6);

    (*(v7 + 56))(v5, 0, 1, v6);
  }

  else
  {

    v6 = sub_2388D1598();
    (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  }

  v8 = *(v0 + 248);
  sub_238827E14(*(v0 + 256), v8, &qword_27DF2FEA8, &qword_2388D57A8);
  sub_2388D1598();
  v9 = *(v6 - 8);
  v10 = (*(v9 + 48))(v8, 1, v6);
  v53 = *(v0 + 536);
  v52 = *(v0 + 488);
  v11 = *(v0 + 360);
  v12 = *(v0 + 304);
  v13 = *(v0 + 312);
  v14 = *(v0 + 296);
  v15 = *(v0 + 248);
  v16 = *(v0 + 256);
  if (v10 == 1)
  {
    sub_238827E88(*(v0 + 256), &qword_27DF2FEA8, &qword_2388D57A8);
    (*(v12 + 8))(v13, v14);
    v53(v52, v11);
    sub_238827E88(v15, &qword_27DF2FEA8, &qword_2388D57A8);
    v17 = 1;
  }

  else
  {
    v18 = sub_2388D1578();
    sub_238827E88(v16, &qword_27DF2FEA8, &qword_2388D57A8);
    (*(v12 + 8))(v13, v14);
    v53(v52, v11);
    (*(v9 + 8))(v15, v6);
    v19 = *(v18 + 16);

    v17 = v19 == 0;
  }

  v20 = *(v0 + 601);
  v21 = *(v0 + 496);
  v22 = *(v0 + 480);
  v23 = *(v0 + 368);
  v25 = *(v0 + 352);
  v24 = *(v0 + 360);
  v26 = *(v0 + 344);
  v54 = *(v0 + 336);
  sub_238835260(*(v0 + 112), v17, v22);
  v27 = *(v0 + 64);
  v55[2] = *(v0 + 48);
  v55[3] = v27;
  v28 = *(v0 + 80);
  v29 = *(v0 + 32);
  v55[0] = *(v0 + 16);
  v55[1] = v29;
  v56 = v28;
  v57 = v21;
  v58 = v20;
  sub_238839734(v55);
  sub_2388412D8(&qword_27DF2FEB8, MEMORY[0x277D42D78], MEMORY[0x277D42D70]);
  sub_2388D2638();
  (*(v26 + 8))(v25, v54);
  v30 = *(v23 + 8);
  *(v0 + 568) = v30;
  *(v0 + 576) = (v23 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v30(v22, v24);
  if (v17)
  {
    v31 = *(v0 + 320);
    v32 = sub_2388D2268();
    (*(*(v32 - 8) + 56))(v31, 1, 1, v32);
  }

  else
  {
    v33 = *(v0 + 504);
    v34 = *(v0 + 216);
    v35 = *(v0 + 168);
    sub_238827E14(*(v0 + 152), v34, &qword_27DF2FE20, &qword_2388D5740);
    v36 = v33(v34, 1, v35);
    v37 = *(v0 + 320);
    if (v36 == 1)
    {
      v38 = sub_2388D2268();
      (*(*(v38 - 8) + 56))(v37, 1, 1, v38);
    }

    else
    {
      v39 = *(v0 + 184);
      sub_238840F4C(*(v0 + 216), v39, type metadata accessor for GenerationSchema);

      sub_238839DC0(v37);
      sub_2388410A0(v39, type metadata accessor for GenerationSchema);
      v40 = sub_2388D2268();
      (*(*(v40 - 8) + 56))(v37, 0, 1, v40);
    }
  }

  v41 = *(v0 + 376);
  v42 = *(v0 + 360);
  v43 = *(v0 + 320);
  sub_2388D2658();
  sub_238827E88(v43, &qword_27DF2FE28, &qword_2388D5748);
  v30(v41, v42);
  if (v17)
  {
    sub_238840734(*(v0 + 120));
  }

  v51 = *(v0 + 416);
  v45 = *(v0 + 400);
  v44 = *(v0 + 408);
  v46 = *(v0 + 384);
  v47 = *(v0 + 392);
  v48 = *(v0 + 360);
  v49 = *(v0 + 160);
  sub_2388D2648();

  v30(v46, v48);
  sub_2388D2618();
  v30(v47, v48);
  sub_2388D2628();
  v30(v45, v48);
  sub_2388D25F8();
  v30(v44, v48);
  sub_2388D2608();
  v30(v51, v48);
  *(v0 + 96) = *(v49 + 16);
  sub_2388D13E8();
  sub_2388D2668();
  v50 = swift_task_alloc();
  *(v0 + 584) = v50;
  sub_2388412D8(&qword_27DF2FEC8, MEMORY[0x277D71A98], MEMORY[0x277D71A60]);
  *v50 = v0;
  v50[1] = sub_238838F58;

  JUMPOUT(0x2388D1D48);
}

uint64_t sub_238838D60()
{
  (*(v0 + 536))(*(v0 + 488), *(v0 + 360));
  v1 = *(v0 + 560);
  sub_2388BE130(v1, 1);
  swift_willThrow();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_238838F58()
{
  v2 = *v1;
  *(*v1 + 592) = v0;

  (*(v2[34] + 8))(v2[35], v2[33]);
  if (v0)
  {
    v3 = sub_23883953C;
  }

  else
  {
    v3 = sub_2388390C0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2388390C0()
{
  v1 = v0[71];
  v2 = v0[53];
  v3 = v0[45];
  v4 = v0[26];
  v6 = v0[24];
  v5 = v0[25];
  v7 = v0[13];
  *(v7 + 24) = sub_2388D13A8();
  *(v7 + 32) = sub_2388412D8(&qword_27DF2FE50, MEMORY[0x277D719F8], MEMORY[0x277D71A00]);
  sub_238841100(v7);
  sub_2388412D8(&qword_27DF2FED0, MEMORY[0x277D71D88], MEMORY[0x277D71D80]);
  sub_2388D1C08();
  (*(v5 + 8))(v4, v6);
  v1(v2, v3);
  *(v7 + 40) = 1;

  v8 = v0[1];

  return v8();
}

uint64_t sub_238839358()
{
  v1 = *(v0 + 528);
  sub_2388BE130(v1, 1);
  swift_willThrow();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_23883953C()
{
  (*(v0 + 568))(*(v0 + 424), *(v0 + 360));
  v1 = *(v0 + 592);
  sub_2388BE130(v1, 1);
  swift_willThrow();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_238839734(uint64_t a1)
{
  v2 = sub_238810E44(&qword_27DF2FE60, &qword_2388D5760);
  MEMORY[0x28223BE20](v2 - 8);
  v44 = v40 - v3;
  v4 = sub_2388D1708();
  v42 = *(v4 - 8);
  v43 = v4;
  MEMORY[0x28223BE20](v4);
  v41 = v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_238810E44(&qword_27DF2FE68, &qword_2388D5768);
  v7 = *(v6 - 8);
  v47 = v6;
  v48 = v7;
  MEMORY[0x28223BE20](v6);
  v9 = v40 - v8;
  v10 = sub_2388D1448();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_238810E44(&qword_27DF2FE70, &qword_2388D5770);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v17 = v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = v40 - v18;
  v20 = *(a1 + 8);
  v40[0] = *a1;
  v40[1] = v20;
  v21 = *(a1 + 16);
  v22 = *(a1 + 24);
  v50 = *(a1 + 32);
  v51 = v21;
  v46 = *(a1 + 72);
  v45 = *(a1 + 80);
  v23 = sub_2388D15E8();
  v24 = *(v23 - 8);
  v25 = *(v24 + 56);
  v53 = v23;
  v54 = v25;
  v52 = v24 + 56;
  (v25)(v19, 1, 1);
  sub_238827E14(v19, v17, &qword_27DF2FE70, &qword_2388D5770);
  sub_2388D1688();
  sub_2388D1678();
  sub_2388D1608();
  sub_2388D1638();
  sub_238827E88(v19, &qword_27DF2FE70, &qword_2388D5770);
  sub_2388D1668();
  sub_2388D1648();
  sub_2388D1658();
  (*(v11 + 16))(v13, *(v49 + OBJC_IVAR____TtC16FoundationModels31GenerativeModelInferenceSession_model) + OBJC_IVAR____TtC16FoundationModels19SystemLanguageModel_modelBundle, v10);
  v26 = sub_2388D0EF8();
  v28 = v27;
  (*(v11 + 8))(v13, v10);
  sub_2388D11A8();
  v29 = v47;
  v30 = sub_2388D11F8();
  v32 = v31;
  (*(v48 + 8))(v9, v29);
  if (v26 == v30 && v28 == v32)
  {
  }

  else
  {
    v33 = sub_2388D3368();

    if ((v33 & 1) == 0)
    {
      goto LABEL_6;
    }
  }

  v34 = v41;
  sub_2388D16F8();
  sub_2388D16D8();
  sub_2388D16E8();
  v36 = v42;
  v35 = v43;
  v37 = v44;
  (*(v42 + 16))(v44, v34, v43);
  (*(v36 + 56))(v37, 0, 1, v35);
  sub_2388D15F8();
  (*(v36 + 8))(v34, v35);
LABEL_6:
  if (v50)
  {
    v38 = v51;
  }

  else
  {
    v38 = v51;
    if (v22 <= 0.0)
    {
      goto LABEL_16;
    }

    if (v22 > 1.0)
    {
      sub_2388C0650(v22);
    }
  }

  sub_2388D1628();
  if (v38 > 0xFD)
  {
    sub_2388D15B8();
LABEL_17:
    v54(v19, 0, 1, v53);
    return sub_2388D1698();
  }

  if (!(v38 >> 6))
  {
    sub_2388D15C8();
    goto LABEL_19;
  }

  if (v38 >> 6 != 1)
  {
LABEL_16:
    sub_2388D15D8();
    goto LABEL_17;
  }

  sub_2388D15B8();
LABEL_19:
  v54(v19, 0, 1, v53);
  sub_2388D1698();
  return sub_2388D1618();
}

uint64_t sub_238839DC0@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_2388D2328();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = v25 - v7;
  v9 = type metadata accessor for DynamicGenerationSchema(0);
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = v25 - v14;
  sub_2388C16F8((v25 - v14));
  v16 = &v15[*(v9 + 28)];
  v28 = *(v3 + 16);
  v29 = v3 + 16;
  v28(v8, v16, v2);
  v30 = v9;
  v17 = *(v9 + 32);
  v26 = v15;
  v18 = *&v15[v17];
  v19 = *(v18 + 16);
  if (v19)
  {
    v25[1] = v8;
    v25[2] = a1;
    v31 = MEMORY[0x277D84F90];
    sub_2388B7C94(0, v19, 0);
    v20 = v31;
    v21 = v18 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v27 = *(v10 + 72);
    do
    {
      sub_238841038(v21, v13, type metadata accessor for DynamicGenerationSchema);
      v28(v6, &v13[*(v30 + 28)], v2);
      sub_2388410A0(v13, type metadata accessor for DynamicGenerationSchema);
      v31 = v20;
      v23 = *(v20 + 16);
      v22 = *(v20 + 24);
      if (v23 >= v22 >> 1)
      {
        sub_2388B7C94((v22 > 1), v23 + 1, 1);
        v20 = v31;
      }

      *(v20 + 16) = v23 + 1;
      (*(v3 + 32))(v20 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v23, v6, v2);
      v21 += v27;
      --v19;
    }

    while (v19);
  }

  sub_2388D2258();
  return sub_2388410A0(v26, type metadata accessor for DynamicGenerationSchema);
}

uint64_t sub_23883A0FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v8 + 152) = a7;
  *(v8 + 160) = v7;
  *(v8 + 136) = a5;
  *(v8 + 144) = a6;
  *(v8 + 120) = a2;
  *(v8 + 128) = a3;
  *(v8 + 112) = a1;
  v10 = sub_238810E44(&qword_27DF2FE18, &qword_2388D5738);
  *(v8 + 168) = v10;
  *(v8 + 176) = *(v10 - 8);
  *(v8 + 184) = swift_task_alloc();
  v11 = sub_2388D1BF8();
  *(v8 + 192) = v11;
  *(v8 + 200) = *(v11 - 8);
  *(v8 + 208) = swift_task_alloc();
  v12 = type metadata accessor for GenerationSchema(0);
  *(v8 + 216) = v12;
  *(v8 + 224) = *(v12 - 8);
  *(v8 + 232) = swift_task_alloc();
  sub_238810E44(&qword_27DF2FE20, &qword_2388D5740);
  *(v8 + 240) = swift_task_alloc();
  sub_238810E44(&qword_27DF2FE28, &qword_2388D5748);
  *(v8 + 248) = swift_task_alloc();
  v13 = sub_2388D16A8();
  *(v8 + 256) = v13;
  *(v8 + 264) = *(v13 - 8);
  *(v8 + 272) = swift_task_alloc();
  v14 = sub_2388D2448();
  *(v8 + 280) = v14;
  *(v8 + 288) = *(v14 - 8);
  *(v8 + 296) = swift_task_alloc();
  *(v8 + 304) = swift_task_alloc();
  *(v8 + 312) = swift_task_alloc();
  *(v8 + 320) = swift_task_alloc();
  *(v8 + 328) = swift_task_alloc();
  *(v8 + 336) = swift_task_alloc();
  *(v8 + 344) = swift_task_alloc();
  *(v8 + 352) = swift_task_alloc();
  *(v8 + 360) = swift_task_alloc();
  v15 = sub_2388D1118();
  *(v8 + 368) = v15;
  *(v8 + 376) = *(v15 - 8);
  *(v8 + 384) = swift_task_alloc();
  sub_238810E44(&qword_27DF2FE30, &unk_2388D5750);
  *(v8 + 392) = swift_task_alloc();
  sub_238810E44(&qword_27DF2FE38, &unk_2388D8CD0);
  *(v8 + 400) = swift_task_alloc();
  v16 = sub_2388D1448();
  *(v8 + 408) = v16;
  *(v8 + 416) = *(v16 - 8);
  *(v8 + 424) = swift_task_alloc();
  v17 = sub_2388D11E8();
  *(v8 + 432) = v17;
  *(v8 + 440) = *(v17 - 8);
  *(v8 + 448) = swift_task_alloc();
  v18 = *(a4 + 48);
  *(v8 + 48) = *(a4 + 32);
  *(v8 + 64) = v18;
  *(v8 + 80) = *(a4 + 64);
  *(v8 + 96) = *(a4 + 80);
  v19 = *(a4 + 16);
  *(v8 + 16) = *a4;
  *(v8 + 32) = v19;

  return MEMORY[0x2822009F8](sub_23883A5BC, 0, 0);
}

uint64_t sub_23883A5BC()
{
  v2 = v0[52];
  v1 = v0[53];
  v3 = v0[51];
  v4 = v0[49];
  v5 = v0[15];
  (*(v2 + 16))(v1, *(v0[20] + OBJC_IVAR____TtC16FoundationModels31GenerativeModelInferenceSession_model) + OBJC_IVAR____TtC16FoundationModels19SystemLanguageModel_modelBundle, v3);
  sub_2388D0EF8();
  (*(v2 + 8))(v1, v3);
  v6 = type metadata accessor for PromptTemplate(0);
  sub_238827E14(v5 + *(v6 + 24), v4, &qword_27DF2FE30, &unk_2388D5750);
  v7 = sub_2388D1138();
  v8 = *(v7 - 8);
  v9 = (*(v8 + 48))(v4, 1, v7);
  v10 = v0[49];
  v11 = v0[50];
  if (v9 == 1)
  {
    sub_238827E88(v0[49], &qword_27DF2FE30, &unk_2388D5750);
    v12 = sub_2388D1068();
    (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  }

  else
  {
    v14 = v0[47];
    v13 = v0[48];
    v15 = v0[46];
    sub_2388D1128();
    (*(v8 + 8))(v10, v7);
    sub_2388D10E8();
    (*(v14 + 8))(v13, v15);
  }

  sub_2388D11D8();
  v16 = v0[56];
  v42 = v0[38];
  v18 = v0[36];
  v17 = v0[37];
  v20 = v0[34];
  v19 = v0[35];
  v50 = v0[33];
  v52 = v0[32];
  v46 = v0[30];
  v48 = v0[28];
  v49 = v0[27];
  v45 = v0[19];
  v21 = v0[15];
  sub_23883B3BC(*(v21 + 16));
  v22 = swift_task_alloc();
  *(v22 + 16) = v16;
  *(v22 + 24) = v21;
  sub_2388D2458();

  sub_2388412D8(&qword_27DF2FE40, MEMORY[0x277D42D40], MEMORY[0x277D42D38]);
  sub_2388D2678();

  v23 = *(v18 + 8);
  v0[57] = v23;
  v0[58] = (v18 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v23(v17, v19);
  sub_238839734((v0 + 2));
  sub_2388D2638();
  (*(v50 + 8))(v20, v52);
  v51 = v23;
  v23(v42, v19);
  sub_238827E14(v45, v46, &qword_27DF2FE20, &qword_2388D5740);
  v24 = (*(v48 + 48))(v46, 1, v49);
  v25 = v0[31];
  if (v24 == 1)
  {
    v26 = sub_2388D2268();
    (*(*(v26 - 8) + 56))(v25, 1, 1, v26);
  }

  else
  {
    v27 = v0[29];
    sub_238840F4C(v0[30], v27, type metadata accessor for GenerationSchema);

    sub_238839DC0(v25);
    sub_2388410A0(v27, type metadata accessor for GenerationSchema);
    v28 = sub_2388D2268();
    (*(*(v28 - 8) + 56))(v25, 0, 1, v28);
  }

  v47 = v0[44];
  v43 = v0[42];
  v44 = v0[43];
  v30 = v0[40];
  v29 = v0[41];
  v31 = v0[39];
  v32 = v0[35];
  v33 = v0[31];
  v41 = v0[20];
  v34 = v0[16];
  sub_2388D2658();
  sub_238827E88(v33, &qword_27DF2FE28, &qword_2388D5748);
  v51(v31, v32);
  sub_238840734(v34);
  sub_2388D2648();

  v51(v30, v32);
  sub_2388D2618();
  v51(v29, v32);
  sub_2388D2628();
  v51(v43, v32);
  sub_2388D25F8();
  v51(v44, v32);
  sub_2388D2608();
  v51(v47, v32);
  v0[13] = *(v41 + 16);
  sub_2388D13E8();
  sub_2388D2668();
  v35 = swift_task_alloc();
  v0[59] = v35;
  v36 = sub_2388412D8(&qword_27DF2FE48, MEMORY[0x277D71A98], MEMORY[0x277D71A80]);
  *v35 = v0;
  v35[1] = sub_23883AE2C;
  v37 = v0[26];
  v38 = v0[24];
  v39 = v0[21];

  return MEMORY[0x282165A68](v37, v38, v39, v36);
}

uint64_t sub_23883AE2C()
{
  v2 = *v1;
  *(*v1 + 480) = v0;

  (*(v2[22] + 8))(v2[23], v2[21]);
  if (v0)
  {
    v3 = sub_23883B1F8;
  }

  else
  {
    v3 = sub_23883AF94;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_23883AF94()
{
  v11 = v0[57];
  v1 = v0[55];
  v2 = v0[56];
  v12 = v0[54];
  v3 = v0[45];
  v4 = v0[35];
  v6 = v0[25];
  v5 = v0[26];
  v7 = v0[24];
  v8 = v0[14];
  *(v8 + 24) = sub_2388D13A8();
  *(v8 + 32) = sub_2388412D8(&qword_27DF2FE50, MEMORY[0x277D719F8], MEMORY[0x277D71A00]);
  sub_238841100(v8);
  sub_2388412D8(&qword_27DF2FE58, MEMORY[0x277D71D98], MEMORY[0x277D71D90]);
  sub_2388D1C08();
  (*(v6 + 8))(v5, v7);
  v11(v3, v4);
  *(v8 + 40) = 1;
  (*(v1 + 8))(v2, v12);

  v9 = v0[1];

  return v9();
}

uint64_t sub_23883B1F8()
{
  v2 = *(v0 + 440);
  v1 = *(v0 + 448);
  v3 = *(v0 + 432);
  (*(v0 + 456))(*(v0 + 360), *(v0 + 280));
  (*(v2 + 8))(v1, v3);
  v4 = *(v0 + 480);
  sub_2388BE130(v4, 1);
  swift_willThrow();

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_23883B3BC(uint64_t a1)
{
  v2 = MEMORY[0x277D84F98];
  v39 = MEMORY[0x277D84F98];
  v3 = a1 + 64;
  v4 = 1 << *(a1 + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  while (v6)
  {
LABEL_10:
    v11 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v12 = v11 | (v9 << 6);
    v13 = (*(a1 + 48) + 16 * v12);
    v15 = *v13;
    v14 = v13[1];
    sub_2388411D4(*(a1 + 56) + 32 * v12, v38);
    *&v37 = v15;
    *(&v37 + 1) = v14;
    v34 = v37;
    v35 = v38[0];
    v36 = v38[1];
    sub_2388411D4(&v35, &v31);

    sub_238810E44(&qword_27DF2FE88, &qword_2388D5780);
    sub_238810E44(&qword_27DF2FE90, &qword_2388D5788);
    if (swift_dynamicCast())
    {
      if (!*(&v28 + 1))
      {
        goto LABEL_17;
      }

      sub_238826B08(&v27, v33);
      v31 = v34;
      v32[0] = v35;
      v32[1] = v36;
      sub_238826B08(v33, v30);
      v16 = *(v2 + 16);
      if (*(v2 + 24) <= v16)
      {
        sub_238822C3C(v16 + 1, 1);
        v2 = v39;
      }

      v17 = v31;
      sub_2388D34A8();
      sub_2388D2938();
      result = sub_2388D34E8();
      v18 = v2 + 64;
      v19 = -1 << *(v2 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v2 + 64 + 8 * (v20 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v19) >> 6;
        while (++v21 != v24 || (v23 & 1) == 0)
        {
          v25 = v21 == v24;
          if (v21 == v24)
          {
            v21 = 0;
          }

          v23 |= v25;
          v26 = *(v18 + 8 * v21);
          if (v26 != -1)
          {
            v22 = __clz(__rbit64(~v26)) + (v21 << 6);
            goto LABEL_26;
          }
        }

        goto LABEL_29;
      }

      v22 = __clz(__rbit64((-1 << v20) & ~*(v2 + 64 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
      *(v18 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      *(*(v2 + 48) + 16 * v22) = v17;
      sub_238826B08(v30, *(v2 + 56) + 40 * v22);
      ++*(v2 + 16);
      result = sub_2388158BC(v32);
    }

    else
    {
      v29 = 0;
      v27 = 0u;
      v28 = 0u;
LABEL_17:
      sub_238827E88(&v34, &qword_27DF2FE98, &qword_2388D5790);
      result = sub_238827E88(&v27, &qword_27DF2FEA0, &qword_2388D5798);
    }
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v7)
    {

      return v2;
    }

    v6 = *(v3 + 8 * v10);
    ++v9;
    if (v6)
    {
      v9 = v10;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_23883B6D0@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v16 = a1;
  v17 = a3;
  v3 = sub_2388D11E8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2388D25D8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v6, v16, v3);
  v18[3] = sub_2388D1DB8();
  v18[4] = sub_2388412D8(&qword_27DF2FE78, MEMORY[0x277D0E698], MEMORY[0x277D0E680]);
  sub_238841100(v18);

  sub_2388D1DA8();
  v11 = MEMORY[0x277D42E18];
  sub_2388D2518();
  sub_2388158BC(v18);
  sub_238810E44(&qword_27DF2FE80, &qword_2388D5778);
  v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_2388D3F70;
  (*(v8 + 16))(v13 + v12, v10, v7);
  MEMORY[0x23EE667A0](v13, v7, v11);

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_23883B96C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v52 = a5;
  LODWORD(v56) = a3;
  v55 = a2;
  v57 = sub_2388D2468();
  v7 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v48 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2388D2498();
  v50 = *(v9 - 8);
  v51 = v9;
  MEMORY[0x28223BE20](v9);
  v49 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + 16);
  v12 = MEMORY[0x277D84F90];
  if (v11)
  {
    v46 = v7;
    v47 = a4;
    v61 = MEMORY[0x277D84F90];
    v13 = a1;
    sub_2388B8078(0, v11, 0);
    v14 = v61;
    v15 = type metadata accessor for Transcript.Entry(0);
    v16 = v13;
    v17 = *(v15 - 8);
    v18 = (v13 + ((*(v17 + 80) + 32) & ~*(v17 + 80)));
    v54 = *(v17 + 72);
    v19 = v53;
    do
    {
      v20 = v16;
      sub_23883BEC8(v18, v55, v16, v56 & 1, v58);
      v61 = v14;
      v22 = *(v14 + 16);
      v21 = *(v14 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_2388B8078((v21 > 1), v22 + 1, 1);
      }

      v23 = v59;
      v24 = v60;
      v25 = sub_238827C28(v58, v59);
      MEMORY[0x28223BE20](v25);
      v27 = &v45 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v28 + 16))(v27);
      sub_23883F9F0(v22, v27, &v61, v23, v24);
      sub_2388158BC(v58);
      v14 = v61;
      v18 += v54;
      --v11;
      v16 = v20;
    }

    while (v11);
    v53 = v19;
    v7 = v46;
    v12 = MEMORY[0x277D84F90];
  }

  else
  {
    v14 = MEMORY[0x277D84F90];
  }

  v30 = sub_238833D78(v29);

  v58[0] = v30;
  sub_23881FB40(v14);
  v31 = v58[0];
  v32 = *(v58[0] + 16);
  if (v32)
  {
    v61 = v12;
    sub_2388B8034(0, v32, 0);
    v33 = v61;
    v56 = v31;
    v34 = v31 + 32;
    v35 = v48;
    do
    {
      sub_238815814(v34, v58);
      sub_238815878(v58, v59);
      sub_2388D2478();
      sub_2388158BC(v58);
      v61 = v33;
      v37 = *(v33 + 16);
      v36 = *(v33 + 24);
      if (v37 >= v36 >> 1)
      {
        sub_2388B8034((v36 > 1), v37 + 1, 1);
        v33 = v61;
      }

      *(v33 + 16) = v37 + 1;
      (*(v7 + 32))(v33 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v37, v35, v57);
      v34 += 40;
      --v32;
    }

    while (v32);
  }

  else
  {

    v33 = MEMORY[0x277D84F90];
  }

  v58[0] = v33;
  sub_238810E44(&qword_27DF2FED8, &qword_2388D57C0);
  sub_238815180(&qword_27DF2FEE0, &qword_27DF2FED8, &qword_2388D57C0, MEMORY[0x277D42EC8]);
  v38 = v49;
  sub_2388D24C8();

  sub_238810E44(&qword_27DF2FEE8, &qword_2388D57C8);
  v39 = v50;
  v40 = (*(v50 + 80) + 32) & ~*(v50 + 80);
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_2388D3F70;
  v42 = v41 + v40;
  v43 = v51;
  (*(v39 + 16))(v42, v38, v51);
  MEMORY[0x23EE66750](v41);

  return (*(v39 + 8))(v38, v43);
}

void sub_23883BEC8(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v263 = a4;
  v278 = a3;
  v277 = a2;
  v283 = a5;
  v6 = sub_238810E44(&qword_27DF2FEF0, &qword_2388D57D0);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v285 = &v246 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v297 = &v246 - v9;
  v273 = sub_2388D2538();
  v254 = *(v273 - 8);
  MEMORY[0x28223BE20](v273);
  v272 = &v246 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v292 = sub_2388D2578();
  v293 = *(v292 - 1);
  MEMORY[0x28223BE20](v292);
  *&v301 = &v246 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v268 = sub_2388D2178();
  v271 = *(v268 - 8);
  MEMORY[0x28223BE20](v268);
  v249 = &v246 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v257 = sub_2388D2268();
  v251 = *(v257 - 8);
  MEMORY[0x28223BE20](v257);
  v248 = &v246 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v256 = sub_2388D17F8();
  v250 = *(v256 - 8);
  MEMORY[0x28223BE20](v256);
  v247 = &v246 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v255 = sub_2388D26B8();
  v246 = *(v255 - 8);
  MEMORY[0x28223BE20](v255);
  v264 = &v246 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v290 = sub_2388D1D78();
  v266 = *(v290 - 8);
  MEMORY[0x28223BE20](v290);
  v288 = &v246 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v287 = sub_2388D2558();
  v265 = *(v287 - 8);
  v17 = MEMORY[0x28223BE20](v287);
  v299 = &v246 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v298 = &v246 - v19;
  v20 = sub_238810E44(&qword_27DF2FEF8, &qword_2388D57D8);
  MEMORY[0x28223BE20](v20 - 8);
  v302 = &v246 - v21;
  v310 = sub_2388D2588();
  v281 = *(v310 - 8);
  v22 = MEMORY[0x28223BE20](v310);
  v284 = (&v246 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = MEMORY[0x28223BE20](v22);
  v274 = &v246 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v286 = &v246 - v27;
  MEMORY[0x28223BE20](v26);
  v294 = (&v246 - v28);
  v29 = sub_2388D25B8();
  v295 = *(v29 - 8);
  v30 = MEMORY[0x28223BE20](v29);
  v296 = &v246 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x28223BE20](v30);
  v275 = &v246 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v300 = &v246 - v35;
  MEMORY[0x28223BE20](v34);
  v291 = &v246 - v36;
  v276 = type metadata accessor for Transcript.ResponseFormat(0);
  v280 = *(v276 - 8);
  MEMORY[0x28223BE20](v276);
  v270 = &v246 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v267 = type metadata accessor for Transcript.ResponseFormat.JSONSchemaFormat(0);
  MEMORY[0x28223BE20](v267);
  v262 = &v246 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_238810E44(&qword_27DF2FF00, &qword_2388D57E0);
  v40 = MEMORY[0x28223BE20](v39 - 8);
  v269 = &v246 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40);
  v260 = &v246 - v42;
  v43 = sub_238810E44(&qword_27DF2FF08, &unk_2388D57E8);
  v44 = MEMORY[0x28223BE20](v43 - 8);
  v252 = &v246 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v44);
  v261 = &v246 - v46;
  v259 = type metadata accessor for Transcript.Prompt(0);
  MEMORY[0x28223BE20](v259);
  v48 = &v246 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_2388D2708();
  v279 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v51 = &v246 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_2388D25D8();
  v253 = *(v52 - 1);
  v53 = MEMORY[0x28223BE20](v52);
  v258 = &v246 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v53);
  v282 = &v246 - v55;
  v56 = type metadata accessor for Transcript.Entry(0);
  MEMORY[0x28223BE20](v56);
  v58 = (&v246 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_238841038(a1, v58, type metadata accessor for Transcript.Entry);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v289 = v29;
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      if (EnumCaseMultiPayload == 3)
      {
        v60 = 0;
        v61 = v58[1];
        *&v301 = *v58;
        v63 = v58[3];
        v62 = v58[4];
        v64 = (v62 - 40);
        v65 = *(v62 + 16);
        v66 = MEMORY[0x277D84F90];
LABEL_5:
        v67 = &v64[88 * v60];
        while (v65 != v60)
        {
          if (v60 >= *(v62 + 16))
          {
            goto LABEL_101;
          }

          ++v60;
          v68 = (v67 + 88);
          v69 = *(v67 + 15) >> 62;
          v67 += 88;
          if (!v69)
          {
            v299 = v64;
            v71 = *v68;
            v70 = v68[1];

            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v300 = v63;
            v73 = v61;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v66 = sub_2388B686C(0, *(v66 + 2) + 1, 1, v66);
            }

            v75 = *(v66 + 2);
            v74 = *(v66 + 3);
            if (v75 >= v74 >> 1)
            {
              v66 = sub_2388B686C((v74 > 1), v75 + 1, 1, v66);
            }

            *(v66 + 2) = v75 + 1;
            v76 = &v66[16 * v75];
            *(v76 + 4) = v71;
            *(v76 + 5) = v70;
            v29 = v289;
            v61 = v73;
            v64 = v299;
            v63 = v300;
            goto LABEL_5;
          }
        }

        *&v304 = v66;
        sub_238810E44(&qword_27DF2FBB8, &unk_2388D5410);
        sub_238815180(&qword_27DF2FBC0, &qword_27DF2FBB8, &unk_2388D5410, MEMORY[0x277D83958]);
        sub_2388D27B8();

        v145 = v272;
        sub_2388D2528();

        sub_238810E44(&qword_27DF2FF10, &qword_2388D57F8);
        v146 = v254;
        v147 = (*(v254 + 80) + 32) & ~*(v254 + 80);
        v148 = swift_allocObject();
        v301 = xmmword_2388D3F70;
        *(v148 + 16) = xmmword_2388D3F70;
        (*(v146 + 16))(v148 + v147, v145, v273);
        v149 = v294;
        *v294 = v148;
        v150 = v281;
        v151 = v310;
        (*(v281 + 104))(v149, *MEMORY[0x277D42DB0], v310);
        (*(v150 + 16))(v274, v149, v151);
        v152 = sub_2388D25A8();
        (*(*(v152 - 8) + 56))(v302, 1, 1, v152);
        v153 = v275;
        sub_2388D2598();
        sub_238810E44(&qword_27DF2FF18, &qword_2388D5800);
        v154 = v295;
        v155 = (*(v295 + 80) + 32) & ~*(v295 + 80);
        v156 = swift_allocObject();
        *(v156 + 16) = v301;
        (*(v154 + 16))(v156 + v155, v153, v29);
        sub_2388D2548();
        v157 = sub_2388D2688();
        v158 = MEMORY[0x277D42E70];
        v159 = v283;
        *(v283 + 24) = v157;
        v159[4] = v158;
        sub_238841100(v159);
        sub_2388D2698();
        (*(v154 + 8))(v153, v29);
        (*(v150 + 8))(v149, v151);
        (*(v146 + 8))(v272, v273);
        return;
      }

      v108 = v58[2];
      v277 = v58[1];
      v276 = v108;
      v109 = v58[3];
      *&v301 = *(v109 + 2);
      if (!v301)
      {
LABEL_68:

        v181 = v258;
        sub_2388D2548();
        v182 = sub_2388D2718();
        v183 = MEMORY[0x277D42EB8];
        v184 = v283;
        *(v283 + 24) = v182;
        v184[4] = v183;
        sub_238841100(v184);
        MEMORY[0x23EE669C0](v181);
        return;
      }

      v110 = 0;
      v111 = v109 + 32;
      LODWORD(v282) = *MEMORY[0x277D42D98];
      v280 = v265 + 104;
      v279 = (v266 + 8);
      LODWORD(v278) = *MEMORY[0x277D42DD8];
      v291 = (v281 + 104);
      LODWORD(v286) = *MEMORY[0x277D42DD0];
      v298 = (v295 + 56);
      v293 = v295 + 48;
      v292 = (v295 + 32);
      v112 = MEMORY[0x277D84F90];
      v113 = v285;
      v114 = v299;
      v300 = v109;
      while (1)
      {
        if (v110 >= *(v109 + 2))
        {
          goto LABEL_103;
        }

        v115 = *v111;
        v305 = *(v111 + 1);
        v117 = *(v111 + 3);
        v116 = *(v111 + 4);
        v118 = *(v111 + 2);
        v309 = *(v111 + 10);
        v307 = v117;
        v308 = v116;
        v304 = v115;
        v306 = v118;
        v119 = v305;
        if (v117 >> 62)
        {
          if (v117 >> 62 != 1)
          {
            (*v280)(v114, v282, v287);
            v123 = objc_allocWithZone(MEMORY[0x277CBEB28]);

            v124 = v119;
            v125 = [v123 init];
            v126 = v288;
            sub_2388D1D68();
            sub_2388D1D58();
            (*v279)(v126, v290);
            v127 = sub_2388D2848();

            v128 = CGImageDestinationCreateWithData(v125, v127, 1uLL, 0);

            if (!v128)
            {
              goto LABEL_106;
            }

            CGImageDestinationAddImage(v128, v124, 0);
            CGImageDestinationFinalize(v128);
            MEMORY[0x23EE65230](v125);

            v129 = v284;
            sub_2388D25C8();
            (*v291)(v129, v278, v310);
            v130 = sub_2388D25A8();
            (*(*(v130 - 8) + 56))(v302, 1, 1, v130);
            v113 = v285;
            sub_2388D2598();
            sub_238840EF8(&v304);
            v29 = v289;
            goto LABEL_49;
          }

          v120 = v309;
          v121 = v294;
          *v294 = *(&v308 + 1);
        }

        else
        {
          v120 = *(&v305 + 1);
          v121 = v294;
          *v294 = v305;
        }

        v121[1] = v120;
        (*v291)(v121, v286, v310);
        v122 = sub_2388D25A8();
        (*(*(v122 - 8) + 56))(v302, 1, 1, v122);

        sub_2388D2598();
LABEL_49:
        (*v298)(v113, 0, 1, v29);
        v131 = v297;
        sub_238840FB4(v113, v297, &qword_27DF2FEF0, &qword_2388D57D0);
        if ((*v293)(v131, 1, v29) == 1)
        {
          sub_238827E88(v131, &qword_27DF2FEF0, &qword_2388D57D0);
        }

        else
        {
          v132 = *v292;
          (*v292)(v296, v131, v29);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v112 = sub_2388B74B4(0, *(v112 + 2) + 1, 1, v112);
          }

          v134 = *(v112 + 2);
          v133 = *(v112 + 3);
          if (v134 >= v133 >> 1)
          {
            v112 = sub_2388B74B4((v133 > 1), v134 + 1, 1, v112);
          }

          *(v112 + 2) = v134 + 1;
          v132(&v112[((*(v295 + 80) + 32) & ~*(v295 + 80)) + *(v295 + 72) * v134], v296, v29);
        }

        ++v110;
        v111 += 88;
        v109 = v300;
        v114 = v299;
        if (v301 == v110)
        {
          goto LABEL_68;
        }
      }
    }

    v95 = v58[2];
    v96 = *(v95 + 16);
    if (!v96)
    {

      v99 = MEMORY[0x277D84F90];
LABEL_67:
      v169 = v294;
      *v294 = v99;
      v170 = v281;
      v171 = v310;
      (*(v281 + 104))(v169, *MEMORY[0x277D42DE0], v310);
      (*(v170 + 16))(v274, v169, v171);
      v172 = sub_2388D25A8();
      (*(*(v172 - 8) + 56))(v302, 1, 1, v172);
      v173 = v275;
      sub_2388D2598();
      sub_238810E44(&qword_27DF2FF18, &qword_2388D5800);
      v174 = v295;
      v175 = (*(v295 + 80) + 32) & ~*(v295 + 80);
      v176 = swift_allocObject();
      *(v176 + 16) = xmmword_2388D3F70;
      (*(v174 + 16))(v176 + v175, v173, v29);
      v177 = v282;
      sub_2388D2548();
      v178 = sub_2388D2718();
      v179 = MEMORY[0x277D42EB8];
      v180 = v283;
      *(v283 + 24) = v178;
      v180[4] = v179;
      sub_238841100(v180);
      MEMORY[0x23EE669C0](v177);
      (*(v174 + 8))(v173, v29);
      (*(v170 + 8))(v169, v171);
      return;
    }

    v288 = v58[1];
    *&v304 = MEMORY[0x277D84F90];
    sub_2388B80B8(0, v96, 0);
    v97 = *(v95 + 16);
    if (v96 > v97)
    {
LABEL_105:
      __break(1u);
LABEL_106:
      __break(1u);
LABEL_107:
      __break(1u);
      return;
    }

    v98 = 0;
    v99 = v304;
    v291 = (v293 + 32);
    v290 = v95;
    while (1)
    {
      v300 = v99;
      v296 = v96;
      v100 = v95 + v98;
      v101 = *(v95 + v98 + 32);
      v298 = *(v95 + v98 + 48);
      v299 = v101;
      v102 = *(v95 + v98 + 64);
      v103 = *(v100 + 72);
      v297 = *(v100 + 104);
      v104 = *(v100 + 80);

      sub_238814698(v102, v103, v104);

      sub_2388D2568();

      v105 = v104;
      v99 = v300;
      sub_238810DC4(v102, v103, v105);

      *&v304 = v99;
      v107 = *(v99 + 2);
      v106 = *(v99 + 3);
      if (v107 >= v106 >> 1)
      {
        sub_2388B80B8((v106 > 1), v107 + 1, 1);
        v99 = v304;
      }

      *(v99 + 2) = v107 + 1;
      (*(v293 + 32))(&v99[((*(v293 + 80) + 32) & ~*(v293 + 80)) + *(v293 + 72) * v107], v301, v292);
      if (!v97)
      {
        break;
      }

      --v97;
      v98 += 88;
      v96 = (v296 - 1);
      v95 = v290;
      if (v296 == 1)
      {

        v29 = v289;
        goto LABEL_67;
      }
    }

LABEL_104:
    __break(1u);
    goto LABEL_105;
  }

  v296 = v51;
  v297 = v52;
  *&v301 = v49;
  v77 = v278;
  v299 = a1;
  v275 = v48;
  if (!EnumCaseMultiPayload)
  {
    v78 = 0;
    v79 = v58[2];
    v310 = v58[1];
    v302 = v58[3];
    v80 = MEMORY[0x277D84F90];
    v81 = *(v79 + 16);
LABEL_16:
    v82 = 88 * v78;
    v83 = v301;
    v84 = v279;
    while (1)
    {
      if (v81 == v78)
      {

        *&v304 = v80;
        sub_238810E44(&qword_27DF2FBB8, &unk_2388D5410);
        sub_238815180(&qword_27DF2FBC0, &qword_27DF2FBB8, &unk_2388D5410, MEMORY[0x277D83958]);
        v160 = sub_2388D27B8();
        v162 = v161;

        *&v304 = v160;
        *(&v304 + 1) = v162;
        v164 = HIBYTE(v162) & 0xF;
        if ((v162 & 0x2000000000000000) == 0)
        {
          v164 = v160 & 0xFFFFFFFFFFFFLL;
        }

        if (v164)
        {
          *&v303 = 32;
          *(&v303 + 1) = 0xE100000000000000;
          MEMORY[0x23EE66C20](v160, v162);

          v304 = v303;
        }

        MEMORY[0x28223BE20](v163);
        *(&v246 - 2) = &v304;
        v165 = v282;
        sub_2388D25E8();
        v166 = v296;
        sub_2388D26F8();
        v167 = MEMORY[0x277D42E98];
        v168 = v283;
        *(v283 + 24) = v83;
        v168[4] = v167;
        sub_238841100(v168);
        sub_2388D26D8();
        v84[1](v166, v83);
        (*(v253 + 8))(v165, v297);

        return;
      }

      if (v78 >= *(v79 + 16))
      {
        break;
      }

      ++v78;
      v85 = v82 + 88;
      v86 = *(v79 + v82 + 80) >> 62;
      v82 += 88;
      if (v86 != 2)
      {
        v87 = v86 == 0;
        v88 = 72;
        if (v87)
        {
          v88 = 16;
        }

        v89 = 24;
        if (!v87)
        {
          v89 = 80;
        }

        v90 = *(v79 + v88 + v85 - 56);
        v91 = *(v79 + v89 + v85 - 56);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v80 = sub_2388B686C(0, *(v80 + 2) + 1, 1, v80);
        }

        v93 = *(v80 + 2);
        v92 = *(v80 + 3);
        if (v93 >= v92 >> 1)
        {
          v80 = sub_2388B686C((v92 > 1), v93 + 1, 1, v80);
        }

        *(v80 + 2) = v93 + 1;
        v94 = &v80[16 * v93];
        *(v94 + 4) = v90;
        *(v94 + 5) = v91;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_101:
    __break(1u);
LABEL_102:
    __break(1u);
LABEL_103:
    __break(1u);
    goto LABEL_104;
  }

  v135 = v275;
  sub_238840F4C(v58, v275, type metadata accessor for Transcript.Prompt);
  if (!*(v77 + 16))
  {
    Transcript.Entry.id.getter();
    LODWORD(v301) = 0;
    v141 = v271;
    v142 = v270;
    v143 = v262;
LABEL_71:
    v144 = v260;
    goto LABEL_73;
  }

  v136 = Transcript.Entry.id.getter();
  v138 = v137;
  v139 = Transcript.Entry.id.getter();
  v141 = v271;
  v142 = v270;
  v143 = v262;
  if (!v138)
  {
    LODWORD(v301) = 0;
    goto LABEL_71;
  }

  v144 = v260;
  if (v136 == v139 && v138 == v140)
  {

    LODWORD(v301) = 1;
  }

  else
  {
    LODWORD(v301) = sub_2388D3368();
  }

LABEL_73:

  v185 = *(v259 + 28);
  sub_238827E14(v135 + v185, v144, &qword_27DF2FF00, &qword_2388D57E0);
  v186 = v144;
  v187 = v280 + 48;
  v188 = *(v280 + 48);
  v189 = (v188)(v186, 1, v276);
  v190 = v267;
  v280 = v187;
  v278 = v185;
  if (v189 == 1)
  {
    sub_238827E88(v186, &qword_27DF2FF00, &qword_2388D57E0);
    v191 = v261;
    (*(v141 + 56))(v261, 1, 1, v268);
    sub_238827E88(v191, &qword_27DF2FF08, &unk_2388D57E8);
    v192 = v298;
    v193 = v269;
    v194 = v263;
LABEL_76:
    LODWORD(v277) = v194 & v301;
    goto LABEL_77;
  }

  sub_238841038(v186, v143, type metadata accessor for Transcript.ResponseFormat.JSONSchemaFormat);
  sub_2388410A0(v186, type metadata accessor for Transcript.ResponseFormat);
  v195 = v143 + *(v190 + 24);
  v196 = v261;
  v197 = v268;
  (*(v141 + 16))(v261, v195, v268);
  sub_2388410A0(v143, type metadata accessor for Transcript.ResponseFormat.JSONSchemaFormat);
  v198 = *(v141 + 56);
  LODWORD(v277) = 1;
  v198(v196, 0, 1, v197);
  v199 = v252;
  sub_238840FB4(v196, v252, &qword_27DF2FF08, &unk_2388D57E8);
  LODWORD(v196) = (*(v141 + 88))(v199, v197);
  v200 = *MEMORY[0x277D0DBF8];
  (*(v141 + 8))(v199, v197);
  v87 = v196 == v200;
  v192 = v298;
  v193 = v269;
  v194 = v263;
  if (!v87)
  {
    goto LABEL_76;
  }

LABEL_77:
  v201 = *(v275 + 2);
  v202 = *(v201 + 16);
  if (!v202)
  {
    goto LABEL_93;
  }

  v274 = v188;
  *&v303 = MEMORY[0x277D84F90];
  *&v301 = v201;
  sub_2388B80FC(0, v202, 0);
  if (!*(v301 + 16))
  {
    goto LABEL_102;
  }

  v203 = 0;
  v204 = v303;
  v205 = (v301 + 32);
  LODWORD(v292) = *MEMORY[0x277D42D98];
  v285 = (v265 + 104);
  v284 = (v266 + 8);
  LODWORD(v279) = *MEMORY[0x277D42DD8];
  v299 = (v281 + 104);
  LODWORD(v293) = *MEMORY[0x277D42DD0];
  v297 = (v295 + 32);
  v296 = (v202 - 1);
  while (1)
  {
    v206 = *v205;
    v305 = v205[1];
    v208 = v205[3];
    v207 = v205[4];
    v209 = v205[2];
    v309 = *(v205 + 10);
    v307 = v208;
    v308 = v207;
    v304 = v206;
    v306 = v209;
    v210 = v305;
    if (!(v208 >> 62))
    {
      v215 = *(&v305 + 1);
      v216 = v294;
      *v294 = v305;
      v216[1] = v215;
      (*v299)(v216, v293, v310);
      v217 = sub_2388D25A8();
      (*(*(v217 - 8) + 56))(v302, 1, 1, v217);

      v211 = v300;
      goto LABEL_84;
    }

    v211 = v300;
    if (v208 >> 62 == 1)
    {
      v212 = v309;
      v213 = v294;
      *v294 = *(&v308 + 1);
      v213[1] = v212;
      (*v299)(v213, v293, v310);
      v214 = sub_2388D25A8();
      (*(*(v214 - 8) + 56))(v302, 1, 1, v214);

LABEL_84:
      sub_2388D2598();
      goto LABEL_87;
    }

    (*v285)(v192, v292, v287);
    v218 = objc_allocWithZone(MEMORY[0x277CBEB28]);

    v219 = v210;
    v220 = [v218 init];
    v221 = v288;
    sub_2388D1D68();
    sub_2388D1D58();
    (*v284)(v221, v290);
    v222 = sub_2388D2848();

    v223 = CGImageDestinationCreateWithData(v220, v222, 1uLL, 0);

    if (!v223)
    {
      goto LABEL_107;
    }

    CGImageDestinationAddImage(v223, v219, 0);
    CGImageDestinationFinalize(v223);
    MEMORY[0x23EE65230](v220);

    v224 = v286;
    sub_2388D25C8();
    (*v299)(v224, v279, v310);
    v225 = sub_2388D25A8();
    (*(*(v225 - 8) + 56))(v302, 1, 1, v225);
    v211 = v300;
    sub_2388D2598();
    sub_238840EF8(&v304);
    v29 = v289;
LABEL_87:
    v226 = *v297;
    v227 = v291;
    (*v297)(v291, v211, v29);
    *&v303 = v204;
    v228 = v29;
    v230 = *(v204 + 16);
    v229 = *(v204 + 24);
    if (v230 >= v229 >> 1)
    {
      sub_2388B80FC((v229 > 1), v230 + 1, 1);
      v227 = v291;
      v204 = v303;
    }

    *(v204 + 16) = v230 + 1;
    v226(v204 + ((*(v295 + 80) + 32) & ~*(v295 + 80)) + *(v295 + 72) * v230, v227, v228);
    if (v296 == v203)
    {
      break;
    }

    v29 = v228;
    v205 = (v205 + 88);
    ++v203;
    v192 = v298;
    if (v203 >= *(v301 + 16))
    {
      goto LABEL_102;
    }
  }

  v141 = v271;
  v142 = v270;
  v193 = v269;
  v188 = v274;
LABEL_93:
  sub_238827E14(&v275[v278], v193, &qword_27DF2FF00, &qword_2388D57E0);
  v231 = (v188)(v193, 1, v276);
  v232 = v257;
  v233 = v256;
  if (v231 == 1)
  {
    sub_238827E88(v193, &qword_27DF2FF00, &qword_2388D57E0);
    goto LABEL_97;
  }

  sub_238840F4C(v193, v142, type metadata accessor for Transcript.ResponseFormat);
  if (v277)
  {
    sub_2388410A0(v142, type metadata accessor for Transcript.ResponseFormat);
LABEL_97:
    v234 = v282;
    sub_2388D2548();
    v235 = MEMORY[0x277D42E78];
    v236 = v283;
    *(v283 + 24) = v255;
    v236[4] = v235;
    sub_238841100(v236);
    MEMORY[0x23EE66960](v234);
    v237 = type metadata accessor for Transcript.Prompt;
    v238 = v275;
  }

  else
  {
    v239 = v282;
    sub_2388D2548();
    MEMORY[0x23EE66960](v239);
    (*(v141 + 16))(v249, v142 + *(v267 + 24), v268);
    v240 = v248;
    sub_2388D2228();
    v241 = v247;
    sub_2388D17E8();
    (*(v251 + 8))(v240, v232);
    v242 = MEMORY[0x277D42E78];
    v243 = v283;
    v244 = v255;
    *(v283 + 24) = v255;
    v243[4] = v242;
    sub_238841100(v243);
    v245 = v264;
    sub_2388D26A8();
    (*(v250 + 8))(v241, v233);
    (*(v246 + 8))(v245, v244);
    sub_2388410A0(v275, type metadata accessor for Transcript.Prompt);
    v237 = type metadata accessor for Transcript.ResponseFormat;
    v238 = v142;
  }

  sub_2388410A0(v238, v237);
}

uint64_t sub_23883E5A4(uint64_t *a1)
{
  v2 = sub_2388D25D8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v13[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;
  v6 = a1[1];
  v13[3] = MEMORY[0x277D837D0];
  v13[4] = MEMORY[0x277D42EC0];
  v13[0] = v7;
  v13[1] = v6;

  v8 = MEMORY[0x277D42E18];
  sub_2388D2518();
  sub_2388158BC(v13);
  sub_238810E44(&qword_27DF2FE80, &qword_2388D5778);
  v9 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_2388D3F70;
  (*(v3 + 16))(v10 + v9, v5, v2);
  MEMORY[0x23EE667A0](v10, v2, v8);

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_23883E750()
{

  v1 = OBJC_IVAR____TtC16FoundationModels31GenerativeModelInferenceSession_promptSanitizer;
  v2 = sub_2388D1BD8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC16FoundationModels31GenerativeModelInferenceSession_responseSanitizer;
  v4 = sub_2388D1B18();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for GenerativeModelInferenceSession(uint64_t a1)
{
  result = qword_27DF2FDF0;
  if (!qword_27DF2FDF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23883E8BC(uint64_t a1)
{
  result = sub_2388D1BD8();
  if (v2 <= 0x3F)
  {
    result = sub_2388D1B18();
    if (v3 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

unint64_t sub_23883E9B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF2FE00;
  if (!qword_27DF2FE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF2FE00);
  }

  return result;
}

uint64_t sub_23883EA0C()
{
  v1 = *(*v0 + OBJC_IVAR____TtC16FoundationModels31GenerativeModelInferenceSession_sessionID);

  return v1;
}

BOOL sub_23883EA4C()
{
  if (qword_27DF2F9C0 != -1)
  {
    swift_once();
  }

  v0 = off_27DF30D90;
  os_unfair_lock_lock(off_27DF30D90 + 4);
  swift_getKeyPath();
  sub_2388412D8(&qword_27DF2FF58, type metadata accessor for SystemLanguageModel, &protocol conformance descriptor for SystemLanguageModel);
  sub_2388D1158();

  os_unfair_lock_opaque_low = LOBYTE(v0[5]._os_unfair_lock_opaque);
  os_unfair_lock_unlock(v0 + 4);
  return os_unfair_lock_opaque_low == 3;
}

uint64_t sub_23883EB60(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 56) = a3;
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  *(v4 + 32) = *v3;
  v7 = swift_task_alloc();
  *(v4 + 40) = v7;
  *v7 = v4;
  v7[1] = sub_23883EC14;

  return sub_238835B6C(a1, a2);
}

uint64_t sub_23883EC14()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {
    v6 = swift_task_alloc();
    *(v2 + 48) = v6;
    *v6 = v3;
    v6[1] = sub_23883ED94;
    v7 = *(v2 + 24);
    v8 = *(v2 + 56);
    v9 = *(v2 + 16);

    return sub_238835EC4(v9, v7, v8, 1);
  }
}

uint64_t sub_23883ED94()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_23883EE88(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_23883EF20;

  return sub_2388356C0(a1);
}

uint64_t sub_23883EF20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13 = *v4;

  v11 = *(v13 + 8);
  if (!v3)
  {
    v8 = a1;
    v9 = a2;
    v10 = a3;
  }

  return v11(v8, v9, v10);
}

uint64_t sub_23883F038(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_238833668;

  return sub_238837520(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t sub_23883F120(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_2388414A0;

  return sub_23883A0FC(a1, a2, a3, a4, a5, a6, a7);
}

unint64_t sub_23883F208(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_23883F230(a1, a2, a3);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_23883F230(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF2FE08;
  if (!qword_27DF2FE08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF2FE08);
  }

  return result;
}

unint64_t sub_23883F288(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF2FE10;
  if (!qword_27DF2FE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF2FE10);
  }

  return result;
}

uint64_t sub_23883F2DC(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return MEMORY[0x2822009F8](sub_23883F2FC, 0, 0);
}

uint64_t sub_23883F2FC()
{
  v1 = v0[4];
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  sub_238827C28(v1, v2);
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = sub_23883F3C4;
  v5 = v0[3];

  return MEMORY[0x282200310](v5, 0, 0, v0 + 2, v2, v3);
}

uint64_t sub_23883F3C4()
{
  v2 = *v1;

  if (!v0)
  {
    v3 = *(v2 + 8);

    __asm { BRAA            X1, X16 }
  }

  return MEMORY[0x2822009F8](sub_23883F4F4, 0, 0);
}

uint64_t sub_23883F4F4()
{
  v1 = v0[2];
  sub_2388BE130(v1, *(v0[4] + 40));
  swift_willThrow();

  v2 = v0[1];

  return v2();
}

uint64_t sub_23883F580(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[6] = v4;
  v5[7] = a4;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  if (a2)
  {
    swift_getObjectType();
    v6 = sub_2388D2B38();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v5[8] = v6;
  v5[9] = v8;

  return MEMORY[0x2822009F8](sub_23883F61C, v6);
}

uint64_t sub_23883F61C()
{
  v1 = v0[6];
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  sub_238827C28(v1, v2);
  v4 = swift_task_alloc();
  v0[10] = v4;
  *v4 = v0;
  v4[1] = sub_23883F6E0;
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[3];

  return MEMORY[0x282200310](v7, v5, v6, v0 + 2, v2, v3);
}

uint64_t sub_23883F6E0()
{
  v2 = *v1;
  v3 = *v1;

  if (!v0)
  {
    v6 = *(v3 + 8);

    __asm { BRAA            X1, X16 }
  }

  v4 = *(v2 + 64);
  v5 = *(v2 + 72);

  return MEMORY[0x2822009F8](sub_23883F80C, v4, v5);
}

uint64_t sub_23883F80C()
{
  v1 = v0[7];
  v2 = v0[2];
  sub_2388BE130(v2, *(v0[6] + 40));
  v4 = v3;
  swift_willThrow();

  *v1 = v4;
  v5 = v0[1];

  return v5();
}

uint64_t sub_23883F8A4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_238815878(v1, *(v1 + 24));
  MEMORY[0x28223BE20](v3);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  *(a1 + 24) = swift_getAssociatedTypeWitness();
  *(a1 + 32) = swift_getAssociatedConformanceWitness();
  sub_238841100(a1);
  sub_2388D2C58();
  *(a1 + 40) = *(v1 + 40);
  return sub_23883FA88(v1);
}

uint64_t sub_23883F9F0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  v9 = sub_238841100(&v12);
  (*(*(a4 - 8) + 32))(v9, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_238826B08(&v12, v10 + 40 * a1 + 32);
}

uint64_t sub_23883FAD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v21 = a5;
  v22 = a3;
  v23 = a4;
  v24 = a2;
  v6 = sub_2388D1408();
  MEMORY[0x28223BE20](v6 - 8);
  v7 = sub_2388D16C8();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v21 - v12;
  sub_238810E44(&qword_27DF2FF68, &qword_2388D5878);
  v14 = sub_2388D1448();
  v15 = *(v14 - 8);
  v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_2388D3F70;
  (*(v15 + 16))(v17 + v16, a1, v14);

  sub_2388D13F8();
  v18 = [objc_opt_self() processInfo];
  [v18 processIdentifier];

  sub_2388D16B8();
  (*(v8 + 16))(v11, v13, v7);
  sub_2388D13E8();
  swift_allocObject();
  v19 = sub_2388D13B8();
  (*(v8 + 8))(v13, v7);
  return v19;
}

id sub_23883FDAC(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v19[1] = *MEMORY[0x277D85DE8];
  if (*a3 != 2)
  {
    v4 = objc_allocWithZone(MEMORY[0x277D4D360]);
    v5 = sub_2388D2848();
    v6 = [v4 initWithModelManagerServicesUseCaseID_];

    [v6 setMode_];
    [v6 setBackends_];
    v19[0] = 0;
    v3 = [objc_allocWithZone(MEMORY[0x277D4D358]) initWithConfiguration:v6 error:v19];
    v7 = v19[0];
    if (v3)
    {

      return v3;
    }

    v9 = v7;
    v10 = sub_2388D0ED8();

    swift_willThrow();
    if (qword_27DF2F9E8 != -1)
    {
      swift_once();
    }

    v11 = sub_2388D2408();
    sub_2388413AC(v11, qword_27DF3F8F8);
    v12 = v10;
    v13 = sub_2388D23E8();
    v14 = sub_2388D2E08();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *v15 = 138543362;
      v17 = v10;
      v18 = _swift_stdlib_bridgeErrorToNSError();
      *(v15 + 4) = v18;
      *v16 = v18;
      _os_log_impl(&dword_23880E000, v13, v14, "Sanitizer unavailable: %{public}@", v15, 0xCu);
      sub_238827E88(v16, &qword_27DF2FF90, &qword_2388D58A0);
      MEMORY[0x23EE68030](v16, -1, -1);
      MEMORY[0x23EE68030](v15, -1, -1);
    }

    else
    {
    }
  }

  return 0;
}

uint64_t sub_238840020(uint64_t a1)
{
  v2 = sub_238810E44(&qword_27DF2FF40, &qword_2388D5838);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v23[-v3];
  v5 = sub_238810E44(&qword_27DF2FF48, &qword_2388D5840);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v23[-v6];
  v8 = sub_238810E44(&qword_27DF2FE38, &unk_2388D8CD0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v23[-v9];
  v11 = sub_2388D1118();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v23[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = sub_2388D1068();
  v16 = *(v15 - 8);
  (*(v16 + 16))(v10, a1, v15);
  (*(v16 + 56))(v10, 0, 1, v15);
  v17 = sub_2388D1098();
  (*(*(v17 - 8) + 56))(v7, 1, 1, v17);
  v18 = sub_2388D1088();
  (*(*(v18 - 8) + 56))(v4, 1, 1, v18);
  v19 = sub_2388D10D8();
  if (qword_27DF2F9C8 != -1)
  {
    v19 = swift_once();
  }

  MEMORY[0x28223BE20](v19);
  *&v23[-16] = v14;
  v21 = sub_238842144(sub_2388412A0, &v23[-32], v20);
  (*(v12 + 8))(v14, v11);
  return v21 & 1;
}

uint64_t sub_23884036C(uint64_t a1)
{
  v30 = sub_2388D2178();
  v2 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v29 = v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_2388D2268();
  v4 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v27 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for Transcript.ToolDefinition(0);
  v6 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_2388D2208();
  v9 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v11 = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a1 + 16);
  v13 = MEMORY[0x277D84F90];
  if (v12)
  {
    v32 = MEMORY[0x277D84F90];
    sub_2388B7EE0(0, v12, 0);
    v13 = v32;
    v14 = a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v15 = *(v6 + 72);
    v22 = (v2 + 16);
    v23 = v15;
    v20[1] = v9 + 32;
    v21 = (v4 + 8);
    v24 = v9;
    v16 = v27;
    do
    {
      v31 = v12;
      sub_238841038(v14, v8, type metadata accessor for Transcript.ToolDefinition);
      (*v22)(v29, &v8[*(v26 + 24)], v30);
      sub_2388D2228();
      sub_2388D21F8();
      (*v21)(v16, v28);
      sub_2388410A0(v8, type metadata accessor for Transcript.ToolDefinition);
      v32 = v13;
      v18 = *(v13 + 16);
      v17 = *(v13 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_2388B7EE0((v17 > 1), v18 + 1, 1);
        v13 = v32;
      }

      *(v13 + 16) = v18 + 1;
      (*(v24 + 32))(v13 + ((*(v24 + 80) + 32) & ~*(v24 + 80)) + *(v24 + 72) * v18, v11, v25);
      v14 += v23;
      v12 = v31 - 1;
    }

    while (v31 != 1);
  }

  return v13;
}

uint64_t sub_238840734(uint64_t a1)
{
  v2 = sub_2388D2328();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v55 - v7;
  v81 = type metadata accessor for DynamicGenerationSchema(0);
  v56 = *(v81 - 8);
  v9 = MEMORY[0x28223BE20](v81);
  v79 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v69 = (&v55 - v11);
  v12 = type metadata accessor for GenerationSchema(0);
  MEMORY[0x28223BE20](v12 - 8);
  v75 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_2388D2268();
  v14 = *(v66 - 8);
  v15 = MEMORY[0x28223BE20](v66);
  v17 = &v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v65 = &v55 - v18;
  v64 = sub_2388D2288();
  MEMORY[0x28223BE20](v64);
  v21 = &v55 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(a1 + 16);
  v23 = MEMORY[0x277D84F90];
  if (!v22)
  {
    return MEMORY[0x277D84F90];
  }

  v68 = v8;
  v62 = v21;
  v86 = MEMORY[0x277D84F90];
  v67 = v19;
  v61 = v22;
  sub_2388B7F24(0, v22, 0);
  v24 = 0;
  v76 = v86;
  v60 = a1 + 32;
  v80 = (v3 + 16);
  v77 = v3 + 32;
  v78 = v3;
  v59 = (v14 + 32);
  v58 = (v14 + 8);
  v57 = v67 + 32;
  v25 = v69;
  v63 = v17;
  do
  {
    v26 = v6;
    v74 = v24;
    sub_238815814(v60 + 40 * v24, v83);
    v27 = v84;
    v28 = v85;
    sub_238815878(v83, v84);
    v72 = (*(v28 + 40))(v27, v28);
    v73 = v29;
    v30 = v84;
    v31 = v85;
    sub_238815878(v83, v84);
    v70 = (*(v31 + 48))(v30, v31);
    v71 = v32;
    v33 = v84;
    v34 = v85;
    sub_238815878(v83, v84);
    (*(v34 + 56))(v33, v34);
    sub_2388C16F8(v25);
    v35 = v81;
    v36 = *v80;
    (*v80)(v68, v25 + *(v81 + 28), v2);
    v37 = *(v25 + *(v35 + 32));
    v38 = *(v37 + 16);
    if (v38)
    {
      v82 = v23;
      sub_2388B7C94(0, v38, 0);
      v39 = v82;
      v40 = v37 + ((*(v56 + 80) + 32) & ~*(v56 + 80));
      v41 = *(v56 + 72);
      v6 = v26;
      do
      {
        v42 = v79;
        sub_238841038(v40, v79, type metadata accessor for DynamicGenerationSchema);
        v36(v6, (v42 + *(v81 + 28)), v2);
        sub_2388410A0(v42, type metadata accessor for DynamicGenerationSchema);
        v82 = v39;
        v43 = v2;
        v45 = *(v39 + 16);
        v44 = *(v39 + 24);
        if (v45 >= v44 >> 1)
        {
          sub_2388B7C94((v44 > 1), v45 + 1, 1);
          v39 = v82;
        }

        *(v39 + 16) = v45 + 1;
        (*(v78 + 32))(v39 + ((*(v78 + 80) + 32) & ~*(v78 + 80)) + *(v78 + 72) * v45, v6, v43);
        v40 += v41;
        --v38;
        v2 = v43;
      }

      while (v38);
      v25 = v69;
    }

    else
    {
      v6 = v26;
    }

    v46 = v63;
    sub_2388D2258();
    sub_2388410A0(v75, type metadata accessor for GenerationSchema);
    sub_2388410A0(v25, type metadata accessor for DynamicGenerationSchema);
    v47 = v65;
    v48 = v66;
    (*v59)(v65, v46, v66);
    v49 = v62;
    sub_2388D2278();

    (*v58)(v47, v48);
    sub_2388158BC(v83);
    v50 = v76;
    v86 = v76;
    v52 = *(v76 + 16);
    v51 = *(v76 + 24);
    if (v52 >= v51 >> 1)
    {
      sub_2388B7F24((v51 > 1), v52 + 1, 1);
      v50 = v86;
    }

    v24 = v74 + 1;
    *(v50 + 16) = v52 + 1;
    v53 = (*(v67 + 80) + 32) & ~*(v67 + 80);
    v76 = v50;
    (*(v67 + 32))(v50 + v53 + *(v67 + 72) * v52, v49, v64);
    v23 = MEMORY[0x277D84F90];
    v25 = v69;
  }

  while (v24 != v61);
  return v76;
}

uint64_t sub_238840F4C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_238840FB4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_238810E44(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_238841038(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2388410A0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t *sub_238841100(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

unint64_t sub_238841164()
{
  result = qword_27DF2FF28;
  if (!qword_27DF2FF28)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DF2FF28);
  }

  return result;
}

uint64_t sub_2388411D4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_23884124C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF2FF30;
  if (!qword_27DF2FF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF2FF30);
  }

  return result;
}

uint64_t sub_2388412D8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_238841320(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF2FF60;
  if (!qword_27DF2FF60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF2FF60);
  }

  return result;
}

uint64_t sub_238841374()
{

  return MEMORY[0x2821FE8E8](v0, 41, 7);
}

uint64_t sub_2388413AC(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_2388413FC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
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

uint64_t sub_238841444(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2388414B4(Class *a1, uint64_t a2, uint64_t a3)
{
  v76 = a2;
  v5 = sub_2388D1068();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = (&v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = MEMORY[0x28223BE20](v7);
  v12 = (&v69 - v11);
  MEMORY[0x28223BE20](v10);
  v14 = &v69 - v13;
  v15 = type metadata accessor for Transcript.Prompt(0);
  MEMORY[0x28223BE20](v15 - 8);
  v84 = (&v69 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v87 = type metadata accessor for Transcript.Entry(0);
  v17 = *(v87 - 1);
  MEMORY[0x28223BE20](v87);
  v19 = &v69 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *a1;
  v21 = [objc_allocWithZone(MEMORY[0x277CD89C0]) init];
  v86 = *(v20 + 2);
  if (!v86)
  {

    return 1;
  }

  v69 = v9;
  v70 = v6;
  v77 = v21;
  v22 = a3;
  v23 = 0;
  v85 = v20 + ((*(v17 + 80) + 32) & ~*(v17 + 80));
  v73 = v22;
  v71 = v12;
  v72 = v22 + 48;
  v74 = (v6 + 8);
  v75 = v5;
  v80 = v19;
  v81 = v14;
  v82 = v20;
  v83 = v17;
  while (1)
  {
    if (v23 >= *(v20 + 2))
    {
      __break(1u);
      goto LABEL_51;
    }

    sub_238841D74(&v85[*(v17 + 72) * v23], v19);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      break;
    }

    if (!EnumCaseMultiPayload)
    {
      v20 = 0;
      v26 = *(v19 + 1);
      v25 = *(v19 + 2);
      v27 = v25 - 5;
      isa = v25[2].isa;
      v29 = MEMORY[0x277D84F90];
LABEL_9:
      v30 = &v27[11 * v20];
      while (1)
      {
        if (isa == v20)
        {

          v88 = v29;
          sub_238810E44(&qword_27DF2FBB8, &unk_2388D5410);
          sub_238841E3C();
          sub_2388D27B8();

          v20 = v82;
          goto LABEL_30;
        }

        if (v20 >= v25[2].isa)
        {
          break;
        }

        v20 = (v20 + 1);
        v31 = v30 + 11;
        v32 = v30[15].isa >> 62;
        v30 += 11;
        if (!v32)
        {
          v78 = v27;
          v79 = v26;
          v33 = v31->isa;
          v34 = v31[1].isa;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v29 = sub_2388B686C(0, *(v29 + 2) + 1, 1, v29);
          }

          v36 = *(v29 + 2);
          v35 = *(v29 + 3);
          if (v36 >= v35 >> 1)
          {
            v29 = sub_2388B686C((v35 > 1), v36 + 1, 1, v29);
          }

          *(v29 + 2) = v36 + 1;
          v37 = &v29[16 * v36];
          *(v37 + 4) = v33;
          *(v37 + 5) = v34;
          v14 = v81;
          v17 = v83;
          v27 = v78;
          v26 = v79;
          goto LABEL_9;
        }
      }

      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:

      v68 = *v74;
      (*v74)(v20, v23);
      v68(v14, v23);
      return 0;
    }

    sub_238841EA0(v19, type metadata accessor for Transcript.Entry);
LABEL_4:
    if (++v23 == v86)
    {

      return 1;
    }
  }

  v25 = v84;
  sub_238841DD8(v19, v84);
  v38 = 0;
  v39 = v25[2].isa;
  v40 = *(v39 + 2);
  v29 = MEMORY[0x277D84F90];
LABEL_19:
  v41 = v39 + 88 * v38 - 40;
  while (v40 != v38)
  {
    if (v38 >= *(v39 + 2))
    {
      goto LABEL_48;
    }

    ++v38;
    v42 = (v41 + 88);
    v43 = *(v41 + 120) >> 62;
    v41 += 88;
    if (!v43)
    {
      v44 = *v42;
      v25 = v42[1];

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v29 = sub_2388B686C(0, *(v29 + 2) + 1, 1, v29);
      }

      v46 = *(v29 + 2);
      v45 = *(v29 + 3);
      if (v46 >= v45 >> 1)
      {
        v29 = sub_2388B686C((v45 > 1), v46 + 1, 1, v29);
      }

      *(v29 + 2) = v46 + 1;
      v47 = &v29[16 * v46];
      *(v47 + 4) = v44;
      *(v47 + 5) = v25;
      v14 = v81;
      v20 = v82;
      goto LABEL_19;
    }
  }

  v88 = v29;
  sub_238810E44(&qword_27DF2FBB8, &unk_2388D5410);
  sub_238841E3C();
  sub_2388D27B8();

  sub_238841EA0(v84, type metadata accessor for Transcript.Prompt);
  v17 = v83;
LABEL_30:

  v48 = sub_2388D2948();

  if (v48 < 80)
  {

LABEL_35:
    v19 = v80;
    goto LABEL_4;
  }

  v49 = sub_2388D2848();

  v50 = v77;
  [v77 processString_];

  v51 = [v50 dominantLanguage];
  if (v51)
  {
    v29 = v51;
    sub_2388D2858();
    sub_2388D1078();
    if (((*(v73 + 48))(v14, v76) & 1) == 0)
    {
      if (qword_27DF2F9E8 != -1)
      {
        swift_once();
      }

      v57 = sub_2388D2408();
      sub_2388413AC(v57, qword_27DF3F8F8);
      v20 = v71;
      v58 = *(v70 + 16);
      v23 = v75;
      v58(v71, v14, v75);
      v25 = sub_2388D23E8();
      v59 = sub_2388D2E08();
      if (os_log_type_enabled(v25, v59))
      {
        v60 = swift_slowAlloc();
        v87 = swift_slowAlloc();
        v88 = v87;
        *v60 = 136315138;
        v58(v69, v20, v23);
        v61 = sub_2388D28B8();
        v62 = v23;
        v64 = v63;
        v65 = *v74;
        (*v74)(v20, v62);
        v66 = sub_2388C0770(v61, v64, &v88);

        *(v60 + 4) = v66;
        _os_log_impl(&dword_23880E000, v25, v59, "Unsupported language %s detected.", v60, 0xCu);
        v67 = v87;
        sub_2388158BC(v87);
        MEMORY[0x23EE68030](v67, -1, -1);
        MEMORY[0x23EE68030](v60, -1, -1);

        v65(v81, v62);
        return 0;
      }

      goto LABEL_49;
    }

    (*v74)(v14, v75);

    goto LABEL_35;
  }

  if (qword_27DF2F9E8 == -1)
  {
    goto LABEL_40;
  }

LABEL_51:
  swift_once();
LABEL_40:
  v53 = sub_2388D2408();
  sub_2388413AC(v53, qword_27DF3F8F8);
  v54 = sub_2388D23E8();
  v55 = sub_2388D2E08();
  if (os_log_type_enabled(v54, v55))
  {
    v56 = swift_slowAlloc();
    *v56 = 0;
    _os_log_impl(&dword_23880E000, v54, v55, "Unrecognized language detected.", v56, 2u);
    MEMORY[0x23EE68030](v56, -1, -1);
  }

  return 0;
}

uint64_t sub_238841D74(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Transcript.Entry(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_238841DD8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Transcript.Prompt(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_238841E3C()
{
  result = qword_27DF2FBC0;
  if (!qword_27DF2FBC0)
  {
    sub_238810E8C(&qword_27DF2FBB8, &unk_2388D5410);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF2FBC0);
  }

  return result;
}

uint64_t sub_238841EA0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_238841F00(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v25 = MEMORY[0x277D84F90];
  sub_2388B7BD0(0, v1, 0);
  v2 = v25;
  v4 = a1 + 64;
  result = sub_2388D2F18();
  v6 = result;
  v7 = 0;
  v24 = *(a1 + 36);
  v22 = v1;
  while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(a1 + 32))
  {
    v9 = v6 >> 6;
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
    {
      goto LABEL_22;
    }

    if (v24 != *(a1 + 36))
    {
      goto LABEL_23;
    }

    v10 = (*(a1 + 48) + 16 * v6);
    v11 = v10[1];
    v23 = *v10;
    v12 = *(v25 + 16);
    v13 = *(v25 + 24);

    if (v12 >= v13 >> 1)
    {
      result = sub_2388B7BD0((v13 > 1), v12 + 1, 1);
    }

    *(v25 + 16) = v12 + 1;
    v14 = v25 + 16 * v12;
    *(v14 + 32) = v23;
    *(v14 + 40) = v11;
    v8 = 1 << *(a1 + 32);
    if (v6 >= v8)
    {
      goto LABEL_24;
    }

    v4 = a1 + 64;
    v15 = *(a1 + 64 + 8 * v9);
    if ((v15 & (1 << v6)) == 0)
    {
      goto LABEL_25;
    }

    if (v24 != *(a1 + 36))
    {
      goto LABEL_26;
    }

    v16 = v15 & (-2 << (v6 & 0x3F));
    if (v16)
    {
      v8 = __clz(__rbit64(v16)) | v6 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v17 = v9 << 6;
      v18 = v9 + 1;
      v19 = (a1 + 72 + 8 * v9);
      while (v18 < (v8 + 63) >> 6)
      {
        v21 = *v19++;
        v20 = v21;
        v17 += 64;
        ++v18;
        if (v21)
        {
          result = sub_238827E7C(v6, v24, 0);
          v8 = __clz(__rbit64(v20)) + v17;
          goto LABEL_4;
        }
      }

      result = sub_238827E7C(v6, v24, 0);
    }

LABEL_4:
    ++v7;
    v6 = v8;
    if (v7 == v22)
    {
      return v2;
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

uint64_t sub_238842144(uint64_t (*a1)(char *), char a2, uint64_t a3)
{
  v24 = a1;
  v25 = sub_2388D1118();
  MEMORY[0x28223BE20](v25);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a3 + 56;
  v10 = 1 << *(a3 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(a3 + 56);
  v13 = (v10 + 63) >> 6;
  v22 = v6 + 16;
  v23 = v6;
  v21 = (v6 + 8);
  v26 = a3;

  v15 = 0;
  while (v12)
  {
    v16 = v25;
LABEL_11:
    (*(v23 + 16))(v8, *(v26 + 48) + *(v23 + 72) * (__clz(__rbit64(v12)) | (v15 << 6)), v16);
    v18 = v24(v8);
    if (v3)
    {
      (*v21)(v8, v16);

      return a2 & 1;
    }

    v19 = v18;
    v12 &= v12 - 1;
    result = (*v21)(v8, v16);
    if (v19)
    {
      a2 = 1;
LABEL_15:

      return a2 & 1;
    }
  }

  v16 = v25;
  while (1)
  {
    v17 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v17 >= v13)
    {
      a2 = 0;
      goto LABEL_15;
    }

    v12 = *(v9 + 8 * v17);
    ++v15;
    if (v12)
    {
      v15 = v17;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23884235C(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t LanguageModelSession.transcript.getter@<X0>(void *a2@<X8>)
{
  swift_getKeyPath();
  sub_238859634(&qword_27DF2FFB0, type metadata accessor for LanguageModelSession, &protocol conformance descriptor for LanguageModelSession);
  sub_2388D1158();

  swift_beginAccess();
  *a2 = *(v2 + 16);
}

uint64_t sub_2388424C8@<X0>(uint64_t *a1@<X0>, void *a3@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_238859634(&qword_27DF2FFB0, type metadata accessor for LanguageModelSession, &protocol conformance descriptor for LanguageModelSession);
  sub_2388D1158();

  swift_beginAccess();
  *a3 = *(v4 + 16);
}

uint64_t sub_23884258C(uint64_t *a1)
{
  v2 = *a1;

  return sub_238842650(&v2);
}

uint64_t sub_2388425C8(uint64_t *a1)
{
  v2 = *a1;

  return sub_238842650(&v2);
}

uint64_t type metadata accessor for LanguageModelSession(uint64_t a1)
{
  result = qword_27DF2FFE8;
  if (!qword_27DF2FFE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_238842650(uint64_t *a1)
{
  v2 = *a1;
  swift_beginAccess();

  v4 = sub_238890D30(v3, v2);

  if (v4)
  {
    *(v1 + 16) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_238859634(&qword_27DF2FFB0, type metadata accessor for LanguageModelSession, &protocol conformance descriptor for LanguageModelSession);
    sub_2388D1148();
  }
}

uint64_t sub_238842798(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(a1 + 16) = a2;
}

uint64_t LanguageModelSession.isResponding.getter(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  v5 = v2;
  sub_238859634(&qword_27DF2FFB0, type metadata accessor for LanguageModelSession, &protocol conformance descriptor for LanguageModelSession);
  sub_2388D1158();

  os_unfair_lock_lock((v2 + 24));
  v3 = *(v2 + 28);
  os_unfair_lock_unlock(v5 + 6);
  return v3;
}

void sub_2388428B4(uint64_t *a1@<X0>, _BYTE *a3@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_238859634(&qword_27DF2FFB0, type metadata accessor for LanguageModelSession, &protocol conformance descriptor for LanguageModelSession);
  sub_2388D1158();

  os_unfair_lock_lock((v4 + 24));
  v5 = *(v4 + 28);
  os_unfair_lock_unlock((v4 + 24));
  *a3 = v5;
}

uint64_t sub_238842970(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_238859634(&qword_27DF2FFB0, type metadata accessor for LanguageModelSession, &protocol conformance descriptor for LanguageModelSession);
  sub_2388D1178();

  os_unfair_lock_lock((v2 + 24));
  v3 = *(v2 + 28);
  if ((v3 & 1) == 0)
  {
    *(v2 + 28) = 1;
  }

  os_unfair_lock_unlock((v2 + 24));
  swift_getKeyPath();
  sub_2388D1168();

  return v3 ^ 1u;
}

uint64_t LanguageModelSession.__allocating_init(model:tools:instructions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    v18[0] = a3;
    v18[1] = a4;
    v17 = MEMORY[0x277D84F90];
    v4 = MEMORY[0x277D837D0];
    v5 = *(MEMORY[0x277D837D0] - 8);
    v6 = MEMORY[0x28223BE20](a1);
    v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    v10 = v9;
    v11 = v6;
    (*(v5 + 16))(v8, v18, v4);
    v12 = off_284B404C0;
    swift_bridgeObjectRetain_n();
    (v12)(&v16);
    v13 = *(v5 + 8);
    v13(v8, v4);
    sub_23881FB68(v16);

    v14 = v17;
    v13(v18, v4);

    a1 = v11;
    a2 = v10;
  }

  else
  {
    v14 = 0;
  }

  v18[0] = v14;
  return _s16FoundationModels20LanguageModelSessionC5model5tools12instructionsAcA06SystemcD0C_SayAA4Tool_pGAA12InstructionsVSgtcfC_0(a1, a2, v18);
}

uint64_t LanguageModelSession.__allocating_init(model:tools:instructions:)(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr))
{
  a3(&v8);
  if (v3)
  {
  }

  else
  {
    v7 = v8;
    return _s16FoundationModels20LanguageModelSessionC5model5tools12instructionsAcA06SystemcD0C_SayAA4Tool_pGAA12InstructionsVSgtcfC_0(a1, a2, &v7);
  }
}

uint64_t LanguageModelSession.__allocating_init(model:tools:transcript:)(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  type metadata accessor for GenerativeModelInferenceSession(0);
  swift_allocObject();

  v6 = sub_23883435C(v5);
  sub_2388A73E8(a2, &v9);

  v7 = sub_238855AE8(a1, v6, a2, v9);

  return v7;
}

{
  v26 = a2;
  v5 = sub_2388D1058();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ServerModelInferenceSession(0);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = (&v25 - v14);
  v16 = *a3;
  sub_238857D9C(a1, &v25 + *(v13 + 28) - v14, type metadata accessor for ServerLanguageModel);
  sub_2388D1048();
  v17 = sub_2388D1038();
  v19 = v18;
  (*(v6 + 8))(v8, v5);
  *v15 = v17;
  v15[1] = v19;
  v27 = v16;
  v20 = v26;
  sub_2388A73E8(v26, &v28);

  v21 = v28;
  v22 = swift_allocObject();
  sub_238857D9C(v15, v12, type metadata accessor for ServerModelInferenceSession);
  v23 = sub_2388550CC(v12, v20, v21, v22);
  sub_2388594C4(a1, type metadata accessor for ServerLanguageModel);
  sub_2388594C4(v15, type metadata accessor for ServerModelInferenceSession);
  return v23;
}

uint64_t LanguageModelSession.__allocating_init(model:tools:instructions:)(uint64_t a1, uint64_t a2, uint64_t **a3)
{
  v28 = a1;
  v29 = sub_2388D1058();
  v6 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ServerModelInferenceSession(0);
  v10 = v9 - 8;
  v11 = MEMORY[0x28223BE20](v9);
  v30 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = (&v28 - v13);
  v15 = type metadata accessor for ServerLanguageModel(0);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *a3;
  sub_238857D9C(a1, v17, type metadata accessor for ServerLanguageModel);
  v32 = v18;
  sub_238843000(&v32, a2, &v33);

  v19 = v33;
  sub_238857D9C(v17, v14 + *(v10 + 28), type metadata accessor for ServerLanguageModel);
  sub_2388D1048();
  v20 = sub_2388D1038();
  v22 = v21;
  (*(v6 + 8))(v8, v29);
  *v14 = v20;
  v14[1] = v22;
  v31 = v19;
  sub_2388A73E8(a2, &v32);

  v23 = v32;
  v24 = swift_allocObject();
  v25 = v30;
  sub_238857D9C(v14, v30, type metadata accessor for ServerModelInferenceSession);
  v26 = sub_2388550CC(v25, a2, v23, v24);
  sub_2388594C4(v28, type metadata accessor for ServerLanguageModel);
  sub_2388594C4(v14, type metadata accessor for ServerModelInferenceSession);
  sub_2388594C4(v17, type metadata accessor for ServerLanguageModel);
  return v26;
}

uint64_t sub_238843000@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = type metadata accessor for GenerationSchema(0);
  MEMORY[0x28223BE20](v6 - 8);
  v86 = v75 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Transcript.ToolDefinition(0);
  v84 = *(v8 - 8);
  v85 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = (v75 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v89 = sub_2388D1058();
  v11 = *(v89 - 8);
  MEMORY[0x28223BE20](v89);
  v88 = v75 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Transcript.Entry(0);
  MEMORY[0x28223BE20](v13);
  result = *a1;
  v18 = *(a2 + 16);
  v19 = MEMORY[0x277D84F90];
  if (v18 | result)
  {
    v79 = v16;
    v81 = (v75 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
    v82 = v15;
    v83 = a3;
    if (result)
    {
      v20 = result;
    }

    else
    {
      v20 = MEMORY[0x277D84F90];
    }

    v21 = *(v20 + 16);
    v80 = v11;
    if (v21)
    {
      v76 = a2;
      v77 = v18;
      v78 = v10;
      *&v93 = MEMORY[0x277D84F90];

      sub_2388B81C4(0, v21, 0);
      v22 = v93;
      v91 = (v11 + 8);
      v75[1] = v20;
      v23 = (v20 + 48);
      do
      {
        v25 = *(v23 - 2);
        v24 = *(v23 - 1);
        if (*v23)
        {
          sub_2388595AC(*(v23 - 2), *(v23 - 1), 1);
          v26 = v25;
          v27 = v88;
          sub_2388D1048();
          v28 = sub_2388D1038();
          v30 = v29;
          sub_2388595BC(v25, v24, 1);
          (*v91)(v27, v89);
          v31 = v90 & 0x107 | 0x8000000000000000;
          v90 = v31;
        }

        else
        {
          sub_2388595AC(*(v23 - 2), *(v23 - 1), 0);

          v32 = v88;
          sub_2388D1048();
          v28 = sub_2388D1038();
          v30 = v33;
          sub_2388595BC(v25, v24, 0);
          (*v91)(v32, v89);
          v31 = v87 & 0x107;
          v87 = v31;
        }

        *&v93 = v22;
        v35 = *(v22 + 2);
        v34 = *(v22 + 3);
        v36 = v22;
        if (v35 >= v34 >> 1)
        {
          sub_2388B81C4((v34 > 1), v35 + 1, 1);
          v36 = v93;
        }

        *(v36 + 2) = v35 + 1;
        v37 = &v36[88 * v35];
        *(v37 + 4) = v28;
        *(v37 + 5) = v30;
        *(v37 + 6) = v25;
        *(v37 + 7) = v24;
        *(v37 + 10) = v31;
        v23 += 24;
        --v21;
        v22 = v36;
      }

      while (v21);

      v10 = v78;
      v18 = v77;
      a2 = v76;
    }

    else
    {

      v22 = MEMORY[0x277D84F90];
    }

    v38 = MEMORY[0x277D84F90];
    if (v18)
    {
      v39 = a2 + 32;
      v87 = MEMORY[0x277D84F90];
      do
      {
        sub_238815814(v39, &v93);
        v40 = v94;
        v41 = v95;
        sub_238815878(&v93, v94);
        if ((*(v41 + 64))(v40, v41))
        {
          sub_238826B08(&v93, v92);
          v42 = v87;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v44 = v42;
          v96 = v42;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_2388B8184(0, *(v42 + 16) + 1, 1);
            v44 = v96;
          }

          v46 = *(v44 + 16);
          v45 = *(v44 + 24);
          if (v46 >= v45 >> 1)
          {
            sub_2388B8184((v45 > 1), v46 + 1, 1);
            v44 = v96;
          }

          *(v44 + 16) = v46 + 1;
          v87 = v44;
          sub_238826B08(v92, v44 + 40 * v46 + 32);
        }

        else
        {
          sub_2388158BC(&v93);
        }

        v39 += 40;
        --v18;
      }

      while (v18);
    }

    else
    {
      v87 = MEMORY[0x277D84F90];
    }

    v47 = *(v87 + 16);
    if (v47)
    {
      v78 = v22;
      *&v92[0] = v38;
      v48 = v87;
      sub_2388B8140(0, v47, 0);
      v49 = *&v92[0];
      v50 = v48 + 32;
      do
      {
        v90 = v49;
        v91 = v47;
        sub_238815814(v50, &v93);
        v51 = v94;
        v52 = v95;
        sub_238815878(&v93, v94);
        v53 = (*(v52 + 40))(v51, v52);
        v55 = v54;
        v57 = v94;
        v56 = v95;
        sub_238815878(&v93, v94);
        v58 = (*(v56 + 48))(v57, v56);
        v60 = v59;
        v61 = v10;
        v63 = v94;
        v62 = v95;
        sub_238815878(&v93, v94);
        v64 = v86;
        v65 = v63;
        v10 = v61;
        (*(v62 + 56))(v65, v62);
        *v61 = v53;
        v61[1] = v55;
        v61[2] = v58;
        v61[3] = v60;
        v49 = v90;
        GenerationSchema.jsonSchema()(v61 + *(v85 + 24));
        sub_2388594C4(v64, type metadata accessor for GenerationSchema);
        sub_2388158BC(&v93);
        *&v92[0] = v49;
        v67 = *(v49 + 16);
        v66 = *(v49 + 24);
        if (v67 >= v66 >> 1)
        {
          sub_2388B8140((v66 > 1), v67 + 1, 1);
          v49 = *&v92[0];
        }

        *(v49 + 16) = v67 + 1;
        sub_2388595CC(v61, v49 + ((*(v84 + 80) + 32) & ~*(v84 + 80)) + *(v84 + 72) * v67, type metadata accessor for Transcript.ToolDefinition);
        v50 += 40;
        v47 = v91 - 1;
      }

      while (v91 != 1);

      v22 = v78;
    }

    else
    {

      v49 = MEMORY[0x277D84F90];
    }

    v68 = v88;
    sub_2388D1048();
    v69 = sub_2388D1038();
    v71 = v70;
    (*(v80 + 8))(v68, v89);
    v72 = v81;
    *v81 = v69;
    v72[1] = v71;
    v72[2] = v22;
    v72[3] = v49;
    swift_storeEnumTagMultiPayload();
    v19 = sub_2388B7500(0, 1, 1, MEMORY[0x277D84F90]);
    v74 = v19[2];
    v73 = v19[3];
    if (v74 >= v73 >> 1)
    {
      v19 = sub_2388B7500((v73 > 1), v74 + 1, 1, v19);
    }

    v19[2] = v74 + 1;
    result = sub_2388595CC(v72, v19 + ((*(v82 + 80) + 32) & ~*(v82 + 80)) + *(v82 + 72) * v74, type metadata accessor for Transcript.Entry);
    a3 = v83;
  }

  *a3 = v19;
  return result;
}

Swift::Void __swiftcall LanguageModelSession.prewarm(promptPrefix:)(FoundationModels::Prompt_optional promptPrefix)
{
  v2 = v1;
  rawValue = promptPrefix.value.components._rawValue;
  v4 = sub_2388D1058();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v35 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_238810E44(&qword_27DF2FF00, &qword_2388D57E0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v29 - v8;
  v10 = type metadata accessor for Transcript.Entry(0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *rawValue;
  swift_getKeyPath();
  v40 = v2;
  sub_238859634(&qword_27DF2FFB0, type metadata accessor for LanguageModelSession, &protocol conformance descriptor for LanguageModelSession);
  sub_2388D1158();

  swift_beginAccess();
  v15 = v2[2];
  if (v14)
  {
    v33 = v2;
    v34 = v11;
    v36 = v14;

    v30 = sub_238856398(&v36, sub_2388596CC, sub_2388596D0);
    v16 = type metadata accessor for Transcript.ResponseFormat(0);
    v17 = v4;
    v18 = *(*(v16 - 8) + 56);
    v32 = v10;
    v18(v9, 1, 1, v16);
    v19 = v35;
    sub_2388D1048();
    v29 = sub_2388D1038();
    v31 = v9;
    v21 = v20;
    (*(v5 + 8))(v19, v17);
    LOBYTE(v39[0]) = 1;
    LOBYTE(v38[0]) = 1;
    LOBYTE(v36) = 1;
    LOBYTE(v37[0]) = 1;
    v22 = *(type metadata accessor for Transcript.Prompt(0) + 28);
    v18(&v13[v22], 1, 1, v16);
    v23 = v30;
    *v13 = v29;
    *(v13 + 1) = v21;
    *(v13 + 3) = 0;
    *(v13 + 4) = 0;
    *(v13 + 2) = v23;
    v13[40] = -2;
    *(v13 + 41) = v36;
    *(v13 + 11) = *(&v36 + 3);
    *(v13 + 6) = 0;
    v13[56] = 1;
    *(v13 + 57) = v39[0];
    *(v13 + 15) = *(v39 + 3);
    *(v13 + 8) = 0;
    v13[72] = 1;
    LODWORD(v23) = v38[0];
    *(v13 + 19) = *(v38 + 3);
    *(v13 + 73) = v23;
    *(v13 + 10) = 0;
    v13[88] = 1;
    *(v13 + 89) = v37[0];
    *(v13 + 23) = *(v37 + 3);
    *(v13 + 12) = 0;
    v13[104] = 1;
    v13[105] = 0;
    sub_238856608(v31, &v13[v22]);
    swift_storeEnumTagMultiPayload();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v15 = sub_2388B7500(0, v15[2] + 1, 1, v15);
    }

    v25 = v15[2];
    v24 = v15[3];
    v2 = v33;
    v26 = v34;
    if (v25 >= v24 >> 1)
    {
      v15 = sub_2388B7500((v24 > 1), v25 + 1, 1, v15);
    }

    v15[2] = v25 + 1;
    sub_2388595CC(v13, v15 + ((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v25, type metadata accessor for Transcript.Entry);
  }

  else
  {
  }

  v27 = v2[10];
  v28 = v2[11];
  sub_238815878(v2 + 7, v27);
  (*(v28 + 40))(v15, v27, v28);
}

uint64_t sub_238843F24()
{
  v13 = v0;
  v1 = v0[6];
  v2 = v1[10];
  v3 = v1[11];
  sub_238815878(v1 + 7, v2);
  swift_getKeyPath();
  v0[5] = v1;
  sub_238859634(&qword_27DF2FFB0, type metadata accessor for LanguageModelSession, &protocol conformance descriptor for LanguageModelSession);
  sub_2388D1158();

  swift_beginAccess();
  v4 = v1[2];
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = sub_2388200D4(*(v4 + 16), 0);
    v7 = *(type metadata accessor for Transcript.Entry(0) - 8);
    v8 = sub_2388254BC(&v12, v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80)), v5, v4);
    swift_bridgeObjectRetain_n();

    if (v8 != v5)
    {
      __break(1u);
      return result;
    }
  }

  else
  {
    v6 = MEMORY[0x277D84F90];
  }

  v0[7] = v6;
  v11 = (*(v3 + 64) + **(v3 + 64));
  v10 = swift_task_alloc();
  v0[8] = v10;
  *v10 = v0;
  v10[1] = sub_23884419C;

  return v11(v6, v2, v3);
}

uint64_t sub_23884419C()
{
  v2 = *v1;
  *(*v1 + 72) = v0;

  if (!v0)
  {

    v3 = *(v2 + 8);

    __asm { BRAA            X4, X16 }
  }

  return MEMORY[0x2822009F8](sub_238844310, 0, 0);
}

uint64_t sub_238844310()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t LanguageModelSession.Response.rawContent.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2 + *(a1 + 48);
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 17);
  v7 = *(v3 + 24);
  v8 = *(v3 + 32);
  *a2 = *v3;
  *(a2 + 8) = v5;
  v9 = *(v3 + 16);
  *(a2 + 16) = v9;
  *(a2 + 17) = v6;
  *(a2 + 24) = v7;
  *(a2 + 32) = v8;
  sub_238814698(v4, v5, v9);
}

uint64_t LanguageModelSession.Response.usedDraftModel.getter(uint64_t a1)
{
  v3 = type metadata accessor for Transcript.Entry(0);
  v4 = MEMORY[0x28223BE20](v3);
  v6 = v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v4);
  v10 = v24 - v9;
  v11 = (v1 + *(a1 + 52));
  v12 = v11[2];
  v13 = v11[3] >> 1;
  if (v12 == v13)
  {
    return 0;
  }

  if (v13 > v12)
  {
    sub_238857D9C(v11[1] + *(v8 + 72) * (v13 - 1), v24 - v9, type metadata accessor for Transcript.Entry);
    sub_238857D9C(v10, v6, type metadata accessor for Transcript.Entry);
    result = swift_getEnumCaseMultiPayload();
    if (result != 4)
    {
      sub_2388594C4(v10, type metadata accessor for Transcript.Entry);
      v14 = 0;
      v10 = v6;
LABEL_11:
      sub_2388594C4(v10, type metadata accessor for Transcript.Entry);
      return v14;
    }

    v17 = *(v6 + 1);
    v18 = *(v6 + 2);
    v24[0] = *(v6 + 3);
    v24[1] = v17;
    v19 = (v18 + 40);
    v20 = -*(v18 + 16);
    v21 = -1;
    while (1)
    {
      v14 = v20 + v21 != -1;
      if (v20 + v21 == -1)
      {
LABEL_9:

        goto LABEL_11;
      }

      if (++v21 >= *(v18 + 16))
      {
        break;
      }

      v22 = v19 + 2;
      v23 = *v19;
      v24[4] = *(v19 - 1);
      v24[5] = v23;
      v24[2] = 0x5F74666172642ELL;
      v24[3] = 0xE700000000000000;
      sub_238856678(result, v15, v16);
      result = sub_2388D2ED8();
      v19 = v22;
      if (result)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2388446A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v16 = *a6;
  v17 = a6[1];
  v18 = *(a6 + 16);
  v19 = *(a6 + 17);
  v20 = a6[3];
  v21 = a6[4];
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a10;
  *(a9 + 24) = a3;
  *(a9 + 32) = a4;
  v22 = type metadata accessor for LanguageModelSession.Response(0, a13, a14, a4);
  result = (*(*(a13 - 8) + 32))(a9 + v22[11], a5, a13);
  v24 = a9 + v22[12];
  *v24 = v16;
  *(v24 + 8) = v17;
  *(v24 + 16) = v18;
  *(v24 + 17) = v19;
  *(v24 + 24) = v20;
  *(v24 + 32) = v21;
  v25 = (a9 + v22[13]);
  *v25 = a7;
  v25[1] = a8;
  v25[2] = a11;
  v25[3] = a12;
  return result;
}

uint64_t sub_23884479C@<X0>(void (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v29 = a4;
  v30 = a5;
  MEMORY[0x28223BE20](a1);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v5;
  v13 = v5[1];
  v14 = *(v5 + 2);
  v15 = v5[4];
  v27 = v5[3];
  v28 = v12;
  v17 = *(v16 + 44);

  a1(v5 + v17);
  if (v6)
  {
  }

  else
  {
    v19 = *(a2 + 52);
    v20 = v5 + *(a2 + 48);
    v21 = *v20;
    v22 = *(v20 + 1);
    v23 = v20[17];
    v24 = *(v20 + 3);
    v26 = *(v20 + 4);
    v25 = v20[16];
    v31[0] = v21;
    v31[1] = v22;
    v32 = v25;
    v33 = v23;
    v34 = v24;
    v35 = v26;
    sub_2388446A0(v28, v13, v27, v15, v11, v31, *(v5 + v19), *(v5 + v19 + 8), v30, v14, *(v5 + v19 + 16), *(v5 + v19 + 24), a3, v29);
    sub_238814698(v21, v22, v25);

    return swift_unknownObjectRetain();
  }
}

uint64_t LanguageModelSession.respond(to:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  *(v6 + 264) = a1;
  *(v6 + 272) = v5;
  *(v6 + 280) = type metadata accessor for RawResponseStream(0);
  *(v6 + 288) = swift_task_alloc();
  sub_238810E44(&qword_27DF2FE20, &qword_2388D5740);
  *(v6 + 296) = swift_task_alloc();
  sub_238810E44(&qword_27DF2FFC0, &unk_2388D5A80);
  *(v6 + 304) = swift_task_alloc();
  *(v6 + 312) = sub_238810E44(&qword_27DF2FFC8, &qword_2388D5D30);
  v10 = swift_task_alloc();
  v11 = *a4;
  *(v6 + 320) = v10;
  *(v6 + 328) = v11;
  v12 = *(a5 + 48);
  *(v6 + 48) = *(a5 + 32);
  *(v6 + 64) = v12;
  *(v6 + 80) = *(a5 + 64);
  *(v6 + 96) = *(a5 + 80);
  v13 = *(a5 + 16);
  *(v6 + 16) = *a5;
  *(v6 + 32) = v13;
  if (a2)
  {
    swift_getObjectType();
    v14 = sub_2388D2B38();
    v16 = v15;
  }

  else
  {
    v14 = 0;
    v16 = 0;
  }

  *(v6 + 336) = v14;
  *(v6 + 344) = v16;

  return MEMORY[0x2822009F8](sub_238844AD4, v14);
}

uint64_t sub_238844AD4()
{
  v28 = v0;
  v1 = *(v0 + 320);
  v2 = *(v0 + 304);
  v3 = *(v0 + 312);
  v4 = *(v0 + 288);
  v5 = *(v0 + 296);
  v6 = *(v0 + 272);
  v25 = *(v0 + 280);
  v26 = *(v0 + 328);
  v7 = type metadata accessor for PromptTemplate(0);
  (*(*(v7 - 8) + 56))(v2, 1, 1, v7);
  v8 = type metadata accessor for GenerationSchema(0);
  (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
  v10 = v6[20];
  v9 = v6[21];
  v11 = sub_238815878(v6 + 17, v10);
  v27 = v26;

  sub_23884B7DC(&v27, v2, (v0 + 16), v11, v5, 0, 0, v4, sub_23884B648, 0, MEMORY[0x277D837D0], v10, v9);
  sub_238827E88(v5, &qword_27DF2FE20, &qword_2388D5740);
  sub_238827E88(v2, &qword_27DF2FFC0, &unk_2388D5A80);
  v12 = *v4;
  v13 = v4[1];
  v14 = *(v25 + 20);
  v15 = v3[9];
  v16 = sub_238810E44(&qword_27DF2FCF0, &unk_2388D53D0);
  (*(*(v16 - 8) + 32))(v1 + v15, v4 + v14, v16);
  v17 = *(v4 + *(v25 + 24));
  v18 = swift_allocObject();
  *(v18 + 16) = v26;
  *v1 = v12;
  v1[1] = v13;
  *(v1 + v3[10]) = v17;
  v19 = (v1 + v3[11]);
  *v19 = sub_238830F10;
  v19[1] = 0;
  v20 = (v1 + v3[12]);
  *v20 = sub_238856704;
  v20[1] = v18;

  v21 = swift_task_alloc();
  *(v0 + 352) = v21;
  v22 = sub_238810E44(&qword_27DF2FA68, &qword_2388D4010);
  *v21 = v0;
  v21[1] = sub_238844DAC;
  v23 = MEMORY[0x277D84950];

  return MEMORY[0x282200430](v0 + 184, v17, &type metadata for ResponseEnvelope, v22, v23);
}

uint64_t sub_238844DAC()
{
  v2 = *v1;
  *(*v1 + 360) = v0;

  if (v0)
  {

    v3 = *(v2 + 336);
    v4 = *(v2 + 344);
    v5 = sub_238845028;
  }

  else
  {
    v3 = *(v2 + 336);
    v4 = *(v2 + 344);
    v5 = sub_238844EC8;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_238844EC8()
{
  v1 = *(v0 + 360);
  v2 = *(v0 + 328);
  v3 = *(v0 + 264);
  *(v0 + 120) = *(v0 + 200);
  *(v0 + 136) = *(v0 + 216);
  *(v0 + 152) = *(v0 + 232);
  *(v0 + 168) = *(v0 + 248);
  *(v0 + 104) = *(v0 + 184);
  sub_2388310FC((v0 + 104), v2, v3);
  if (v1)
  {

    sub_238856720(v0 + 104);
    sub_238827E88(*(v0 + 320), &qword_27DF2FFC8, &qword_2388D5D30);
  }

  else
  {
    v5 = *(v0 + 320);

    sub_238856720(v0 + 104);
    sub_238827E88(v5, &qword_27DF2FFC8, &qword_2388D5D30);
  }

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_238845028()
{
  sub_238827E88(*(v0 + 320), &qword_27DF2FFC8, &qword_2388D5D30);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t LanguageModelSession.respond(to:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 304) = a5;
  *(v7 + 312) = v6;
  *(v7 + 288) = a1;
  *(v7 + 296) = a4;
  *(v7 + 320) = type metadata accessor for RawResponseStream(0);
  *(v7 + 328) = swift_task_alloc();
  sub_238810E44(&qword_27DF2FE20, &qword_2388D5740);
  *(v7 + 336) = swift_task_alloc();
  sub_238810E44(&qword_27DF2FFC0, &unk_2388D5A80);
  *(v7 + 344) = swift_task_alloc();
  *(v7 + 352) = sub_238810E44(&qword_27DF2FFC8, &qword_2388D5D30);
  *(v7 + 360) = swift_task_alloc();
  v10 = *(a6 + 48);
  *(v7 + 48) = *(a6 + 32);
  *(v7 + 64) = v10;
  *(v7 + 80) = *(a6 + 64);
  *(v7 + 96) = *(a6 + 80);
  v11 = *(a6 + 16);
  *(v7 + 16) = *a6;
  *(v7 + 32) = v11;
  if (a2)
  {
    swift_getObjectType();
    v12 = sub_2388D2B38();
    v14 = v13;
  }

  else
  {
    v12 = 0;
    v14 = 0;
  }

  *(v7 + 368) = v12;
  *(v7 + 376) = v14;

  return MEMORY[0x2822009F8](sub_23884527C, v12);
}

uint64_t sub_23884527C()
{
  v34 = v0;
  v27 = *(v0 + 344);
  v28 = *(v0 + 336);
  v29 = *(v0 + 360);
  v30 = *(v0 + 328);
  v31 = *(v0 + 320);
  v32 = *(v0 + 352);
  v2 = *(v0 + 304);
  v1 = *(v0 + 312);
  *(v0 + 264) = *(v0 + 296);
  *(v0 + 272) = v2;
  *(v0 + 280) = MEMORY[0x277D84F90];
  v3 = MEMORY[0x277D837D0];
  v4 = *(MEMORY[0x277D837D0] - 8);
  v5 = swift_task_alloc();
  (*(v4 + 16))(v5, v0 + 264, v3);
  v6 = off_284B407B0;
  swift_bridgeObjectRetain_n();
  (v6)(&v33);
  v7 = *(v4 + 8);
  v7(v5, v3);
  sub_23881FAF4(v33);

  v8 = *(v0 + 280);
  *(v0 + 384) = v8;
  v7(v0 + 264, v3);

  v9 = type metadata accessor for PromptTemplate(0);
  (*(*(v9 - 8) + 56))(v27, 1, 1, v9);
  v10 = type metadata accessor for GenerationSchema(0);
  (*(*(v10 - 8) + 56))(v28, 1, 1, v10);
  v12 = v1[20];
  v11 = v1[21];
  v13 = sub_238815878(v1 + 17, v12);
  v33 = v8;

  sub_23884B7DC(&v33, v27, (v0 + 16), v13, v28, 0, 0, v30, sub_23884B648, 0, v3, v12, v11);
  sub_238827E88(v28, &qword_27DF2FE20, &qword_2388D5740);
  sub_238827E88(v27, &qword_27DF2FFC0, &unk_2388D5A80);
  v14 = *v30;
  v15 = v30[1];
  v16 = *(v31 + 20);
  v17 = v32[9];
  v18 = sub_238810E44(&qword_27DF2FCF0, &unk_2388D53D0);
  (*(*(v18 - 8) + 32))(v29 + v17, v30 + v16, v18);
  v19 = *(v30 + *(v31 + 24));
  v20 = swift_allocObject();
  *(v20 + 16) = v8;
  *v29 = v14;
  v29[1] = v15;
  *(v29 + v32[10]) = v19;
  v21 = (v29 + v32[11]);
  *v21 = sub_238830F10;
  v21[1] = 0;
  v22 = (v29 + v32[12]);
  *v22 = sub_238859730;
  v22[1] = v20;

  v23 = swift_task_alloc();
  *(v0 + 392) = v23;
  v24 = sub_238810E44(&qword_27DF2FA68, &qword_2388D4010);
  *v23 = v0;
  v23[1] = sub_23884568C;
  v25 = MEMORY[0x277D84950];

  return MEMORY[0x282200430](v0 + 184, v19, &type metadata for ResponseEnvelope, v24, v25);
}

uint64_t sub_23884568C()
{
  v2 = *v1;
  *(*v1 + 400) = v0;

  if (v0)
  {

    v3 = *(v2 + 368);
    v4 = *(v2 + 376);
    v5 = sub_23884591C;
  }

  else
  {
    v3 = *(v2 + 368);
    v4 = *(v2 + 376);
    v5 = sub_2388457A8;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_2388457A8()
{
  v1 = *(v0 + 400);
  v2 = *(v0 + 384);
  v3 = *(v0 + 288);
  *(v0 + 120) = *(v0 + 200);
  *(v0 + 136) = *(v0 + 216);
  *(v0 + 152) = *(v0 + 232);
  *(v0 + 168) = *(v0 + 248);
  *(v0 + 104) = *(v0 + 184);
  sub_2388310FC((v0 + 104), v2, v3);
  if (v1)
  {

    sub_238856720(v0 + 104);
    v4 = *(v0 + 360);
  }

  else
  {
    v4 = *(v0 + 360);

    sub_238856720(v0 + 104);
  }

  sub_238827E88(v4, &qword_27DF2FFC8, &qword_2388D5D30);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_23884591C()
{
  v1 = *(v0 + 360);

  sub_238827E88(v1, &qword_27DF2FFC8, &qword_2388D5D30);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t LanguageModelSession.respond(options:prompt:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 288) = a6;
  *(v7 + 296) = v6;
  *(v7 + 272) = a1;
  *(v7 + 280) = a5;
  *(v7 + 304) = type metadata accessor for RawResponseStream(0);
  *(v7 + 312) = swift_task_alloc();
  sub_238810E44(&qword_27DF2FE20, &qword_2388D5740);
  *(v7 + 320) = swift_task_alloc();
  sub_238810E44(&qword_27DF2FFC0, &unk_2388D5A80);
  *(v7 + 328) = swift_task_alloc();
  *(v7 + 336) = sub_238810E44(&qword_27DF2FFC8, &qword_2388D5D30);
  *(v7 + 344) = swift_task_alloc();
  v10 = *(a4 + 48);
  *(v7 + 48) = *(a4 + 32);
  *(v7 + 64) = v10;
  *(v7 + 80) = *(a4 + 64);
  *(v7 + 96) = *(a4 + 80);
  v11 = *(a4 + 16);
  *(v7 + 16) = *a4;
  *(v7 + 32) = v11;
  if (a2)
  {
    swift_getObjectType();
    v12 = sub_2388D2B38();
    v14 = v13;
  }

  else
  {
    v12 = 0;
    v14 = 0;
  }

  *(v7 + 352) = v12;
  *(v7 + 360) = v14;

  return MEMORY[0x2822009F8](sub_238845B78, v12);
}

uint64_t sub_238845B78()
{
  v32 = v0;
  (*(v0 + 280))();
  v1 = *(v0 + 344);
  v2 = *(v0 + 328);
  v3 = *(v0 + 312);
  v4 = *(v0 + 320);
  v5 = *(v0 + 296);
  v27 = *(v0 + 304);
  v28 = *(v0 + 336);
  v6 = *(v0 + 264);
  *(v0 + 368) = v6;
  v7 = type metadata accessor for PromptTemplate(0);
  (*(*(v7 - 8) + 56))(v2, 1, 1, v7);
  v8 = type metadata accessor for GenerationSchema(0);
  (*(*(v8 - 8) + 56))(v4, 1, 1, v8);
  v9 = v5[20];
  v10 = v5[21];
  v11 = sub_238815878(v5 + 17, v9);
  v29 = v6;
  v12 = *(v0 + 64);
  v30[2] = *(v0 + 48);
  v30[3] = v12;
  v30[4] = *(v0 + 80);
  v31 = *(v0 + 96);
  v13 = *(v0 + 32);
  v30[0] = *(v0 + 16);
  v30[1] = v13;

  sub_23884B7DC(&v29, v2, v30, v11, v4, 0, 0, v3, sub_23884B648, 0, MEMORY[0x277D837D0], v9, v10);
  sub_238827E88(v4, &qword_27DF2FE20, &qword_2388D5740);
  sub_238827E88(v2, &qword_27DF2FFC0, &unk_2388D5A80);
  v14 = *v3;
  v15 = v3[1];
  v16 = *(v27 + 20);
  v17 = v28[9];
  v18 = sub_238810E44(&qword_27DF2FCF0, &unk_2388D53D0);
  (*(*(v18 - 8) + 32))(v1 + v17, v3 + v16, v18);
  v19 = *(v3 + *(v27 + 24));
  v20 = swift_allocObject();
  *(v20 + 16) = v6;
  *v1 = v14;
  v1[1] = v15;
  *(v1 + v28[10]) = v19;
  v21 = (v1 + v28[11]);
  *v21 = sub_238830F10;
  v21[1] = 0;
  v22 = (v1 + v28[12]);
  *v22 = sub_238859730;
  v22[1] = v20;

  v23 = swift_task_alloc();
  *(v0 + 376) = v23;
  v24 = sub_238810E44(&qword_27DF2FA68, &qword_2388D4010);
  *v23 = v0;
  v23[1] = sub_238845EF8;
  v25 = MEMORY[0x277D84950];

  return MEMORY[0x282200430](v0 + 184, v19, &type metadata for ResponseEnvelope, v24, v25);
}

uint64_t sub_238845EF8()
{
  v2 = *v1;
  *(*v1 + 384) = v0;

  if (v0)
  {

    v3 = *(v2 + 352);
    v4 = *(v2 + 360);
    v5 = sub_238846188;
  }

  else
  {
    v3 = *(v2 + 352);
    v4 = *(v2 + 360);
    v5 = sub_238846014;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_238846014()
{
  v1 = *(v0 + 384);
  v2 = *(v0 + 368);
  v3 = *(v0 + 272);
  *(v0 + 120) = *(v0 + 200);
  *(v0 + 136) = *(v0 + 216);
  *(v0 + 152) = *(v0 + 232);
  *(v0 + 168) = *(v0 + 248);
  *(v0 + 104) = *(v0 + 184);
  sub_2388310FC((v0 + 104), v2, v3);
  if (v1)
  {

    sub_238856720(v0 + 104);
    v4 = *(v0 + 344);
  }

  else
  {
    v4 = *(v0 + 344);

    sub_238856720(v0 + 104);
  }

  sub_238827E88(v4, &qword_27DF2FFC8, &qword_2388D5D30);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_238846188()
{
  v1 = *(v0 + 344);

  sub_238827E88(v1, &qword_27DF2FFC8, &qword_2388D5D30);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t LanguageModelSession.respond(to:schema:includeSchemaInPrompt:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, char a6, uint64_t a7)
{
  *(v8 + 272) = a5;
  *(v8 + 280) = v7;
  *(v8 + 98) = a6;
  *(v8 + 264) = a1;
  v12 = type metadata accessor for GenerationSchema(0);
  *(v8 + 288) = v12;
  v13 = *(v12 - 8);
  *(v8 + 296) = v13;
  *(v8 + 304) = *(v13 + 64);
  *(v8 + 312) = swift_task_alloc();
  v14 = type metadata accessor for RawResponseStream(0);
  *(v8 + 320) = v14;
  v15 = *(v14 - 8);
  *(v8 + 328) = v15;
  *(v8 + 336) = *(v15 + 64);
  *(v8 + 344) = swift_task_alloc();
  *(v8 + 352) = swift_task_alloc();
  sub_238810E44(&qword_27DF2FE20, &qword_2388D5740);
  *(v8 + 360) = swift_task_alloc();
  *(v8 + 368) = sub_238810E44(&qword_27DF2FFC8, &qword_2388D5D30);
  *(v8 + 376) = swift_task_alloc();
  *(v8 + 384) = type metadata accessor for GenerationSchema.Kind(0);
  *(v8 + 392) = swift_task_alloc();
  sub_238810E44(&qword_27DF2FFC0, &unk_2388D5A80);
  *(v8 + 400) = swift_task_alloc();
  *(v8 + 408) = sub_238810E44(&qword_27DF2FFD0, &qword_2388D6160);
  v16 = swift_task_alloc();
  v17 = *a4;
  *(v8 + 416) = v16;
  *(v8 + 424) = v17;
  v18 = *(a7 + 48);
  *(v8 + 48) = *(a7 + 32);
  *(v8 + 64) = v18;
  *(v8 + 80) = *(a7 + 64);
  *(v8 + 96) = *(a7 + 80);
  v19 = *(a7 + 16);
  *(v8 + 16) = *a7;
  *(v8 + 32) = v19;
  if (a2)
  {
    swift_getObjectType();
    v20 = sub_2388D2B38();
    v22 = v21;
  }

  else
  {
    v20 = 0;
    v22 = 0;
  }

  *(v8 + 432) = v20;
  *(v8 + 440) = v22;

  return MEMORY[0x2822009F8](sub_238846500, v20);
}

uint64_t sub_238846500()
{
  v84 = v0;
  v76 = *(v0 + 424);
  v1 = *(v0 + 392);
  v2 = *(v0 + 400);
  v3 = *(v0 + 272);
  v4 = type metadata accessor for PromptTemplate(0);
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  sub_238857D9C(v3, v1, type metadata accessor for GenerationSchema.Kind);
  if (swift_getEnumCaseMultiPayload() == 4)
  {
    v74 = *(v0 + 416);
    v72 = *(v0 + 408);
    v5 = *(v0 + 392);
    v6 = *(v0 + 376);
    v69 = *(v0 + 368);
    v7 = *(v0 + 352);
    v8 = *(v0 + 360);
    v63 = *(v0 + 400);
    v67 = *(v0 + 320);
    v10 = *(v0 + 288);
    v9 = *(v0 + 296);
    v12 = *(v0 + 272);
    v11 = *(v0 + 280);

    v13 = sub_238810E44(&qword_27DF2FA38, &unk_2388D3FE0);
    sub_2388594C4(v5 + *(v13 + 64), type metadata accessor for StringGuides);
    sub_238857D9C(v12, v8, type metadata accessor for GenerationSchema);
    (*(v9 + 56))(v8, 0, 1, v10);
    v15 = v11[20];
    v14 = v11[21];
    v16 = sub_238815878(v11 + 17, v15);
    v77 = v76;
    v17 = *(v0 + 64);
    v80 = *(v0 + 48);
    v81 = v17;
    v82 = *(v0 + 80);
    v83 = *(v0 + 96);
    v18 = *(v0 + 32);
    v78 = *(v0 + 16);
    v79 = v18;
    sub_23884B7DC(&v77, v63, &v78, v16, v8, 0, 0, v7, sub_23884B648, 0, MEMORY[0x277D837D0], v15, v14);
    sub_238827E88(v8, &qword_27DF2FE20, &qword_2388D5740);
    sub_238827E88(v63, &qword_27DF2FFC0, &unk_2388D5A80);
    v19 = v7[1];
    v64 = *v7;
    v20 = *(v67 + 20);
    v21 = v69[9];
    v22 = sub_238810E44(&qword_27DF2FCF0, &unk_2388D53D0);
    v23 = *(v22 - 8);
    (*(v23 + 32))(v6 + v21, v7 + v20, v22);
    v24 = *(v7 + *(v67 + 24));
    v25 = swift_allocObject();
    *(v25 + 16) = v76;
    *v6 = v64;
    v6[1] = v19;
    *(v6 + v69[10]) = v24;
    v26 = (v6 + v69[11]);
    *v26 = sub_238830F10;
    v26[1] = 0;
    v27 = (v6 + v69[12]);
    *v27 = sub_238859730;
    v27[1] = v25;
    v29 = *v6;
    v28 = v6[1];
    (*(v23 + 16))(&v74[v72[9]], v6 + v21, v22);

    sub_238827E88(v6, &qword_27DF2FFC8, &qword_2388D5D30);
    v30 = swift_allocObject();
    *(v30 + 16) = v29;
    *(v30 + 24) = v28;
    v31 = swift_allocObject();
    *(v31 + 2) = v29;
    *(v31 + 3) = v28;
    *(v31 + 4) = v76;
    *v74 = v29;
    *(v74 + 1) = v28;
    *&v74[v72[10]] = v24;
    v32 = &v74[v72[11]];
    *v32 = sub_238856808;
    v32[1] = v30;
    v33 = &v74[v72[12]];
    v34 = sub_238856810;
    *v33 = sub_238856810;
    v33[1] = v31;
    swift_bridgeObjectRetain_n();
  }

  else
  {
    v35 = *(v0 + 416);
    v36 = *(v0 + 392);
    v37 = *(v0 + 352);
    v38 = *(v0 + 360);
    v70 = *(v0 + 408);
    v71 = *(v0 + 344);
    v75 = *(v0 + 336);
    v73 = *(v0 + 328);
    v65 = *(v0 + 400);
    v68 = *(v0 + 320);
    v60 = *(v0 + 312);
    v39 = *(v0 + 296);
    v59 = *(v0 + 288);
    v62 = *(v0 + 98);
    v41 = *(v0 + 272);
    v40 = *(v0 + 280);

    sub_2388594C4(v36, type metadata accessor for GenerationSchema.Kind);
    v43 = v40[15];
    v42 = v40[16];
    v61 = sub_238815878(v40 + 12, v43);
    v77 = v76;
    v44 = *(v0 + 64);
    v80 = *(v0 + 48);
    v81 = v44;
    v82 = *(v0 + 80);
    v83 = *(v0 + 96);
    v45 = *(v0 + 32);
    v78 = *(v0 + 16);
    v79 = v45;
    sub_238857D9C(v41, v38, type metadata accessor for GenerationSchema);
    (*(v39 + 56))(v38, 0, 1, v59);
    sub_238857D9C(v41, v60, type metadata accessor for GenerationSchema);
    v46 = (*(v39 + 80) + 16) & ~*(v39 + 80);
    v47 = swift_allocObject();
    sub_2388595CC(v60, v47 + v46, type metadata accessor for GenerationSchema);
    sub_23884B7DC(&v77, v65, &v78, v61, v38, v62, 0, v37, sub_2388567D8, v47, &type metadata for GeneratedContent, v43, v42);

    sub_238827E88(v38, &qword_27DF2FE20, &qword_2388D5740);
    sub_238827E88(v65, &qword_27DF2FFC0, &unk_2388D5A80);
    v48 = v37[1];
    v66 = *v37;
    v49 = *(v68 + 20);
    v50 = v70[9];
    v51 = sub_238810E44(&qword_27DF2FCF0, &unk_2388D53D0);
    (*(*(v51 - 8) + 16))(v35 + v50, v37 + v49, v51);
    v24 = *(v37 + *(v68 + 24));
    sub_2388595CC(v37, v71, type metadata accessor for RawResponseStream);
    v52 = (*(v73 + 80) + 16) & ~*(v73 + 80);
    v31 = swift_allocObject();
    sub_2388595CC(v71, v31 + v52, type metadata accessor for RawResponseStream);
    *(v31 + ((v75 + v52 + 7) & 0xFFFFFFFFFFFFFFF8)) = v76;
    *v35 = v66;
    v35[1] = v48;
    *(v35 + v70[10]) = v24;
    v53 = (v35 + v70[11]);
    *v53 = sub_2388313C0;
    v53[1] = 0;
    v54 = (v35 + v70[12]);
    v34 = sub_2388567F0;
    *v54 = sub_2388567F0;
    v54[1] = v31;
  }

  *(v0 + 448) = v34;
  *(v0 + 456) = v31;
  v55 = swift_task_alloc();
  *(v0 + 464) = v55;
  v56 = sub_238810E44(&qword_27DF2FA68, &qword_2388D4010);
  *v55 = v0;
  v55[1] = sub_238846CAC;
  v57 = MEMORY[0x277D84950];

  return MEMORY[0x282200430](v0 + 184, v24, &type metadata for ResponseEnvelope, v56, v57);
}

uint64_t sub_238846CAC()
{
  v2 = *v1;
  *(*v1 + 472) = v0;

  v3 = *(v2 + 440);
  v4 = *(v2 + 432);
  if (v0)
  {
    v5 = sub_238846FEC;
  }

  else
  {
    v5 = sub_238846DE8;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_238846DE8()
{
  v13 = v0;
  v1 = *(v0 + 472);
  v2 = *(v0 + 448);
  *(v0 + 120) = *(v0 + 200);
  *(v0 + 136) = *(v0 + 216);
  *(v0 + 152) = *(v0 + 232);
  *(v0 + 168) = *(v0 + 248);
  *(v0 + 104) = *(v0 + 184);
  v2(v11, v0 + 104);
  if (v1)
  {
    sub_238856720(v0 + 104);
    sub_238827E88(*(v0 + 416), &qword_27DF2FFD0, &qword_2388D6160);
  }

  else
  {
    v4 = *(v0 + 416);
    v5 = *(v0 + 264);
    sub_238856720(v0 + 104);
    sub_238827E88(v4, &qword_27DF2FFD0, &qword_2388D6160);
    v6 = v11[7];
    *(v5 + 96) = v11[6];
    *(v5 + 112) = v6;
    *(v5 + 128) = v11[8];
    *(v5 + 144) = v12;
    v7 = v11[3];
    *(v5 + 32) = v11[2];
    *(v5 + 48) = v7;
    v8 = v11[5];
    *(v5 + 64) = v11[4];
    *(v5 + 80) = v8;
    v9 = v11[1];
    *v5 = v11[0];
    *(v5 + 16) = v9;
  }

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_238846FEC()
{
  sub_238827E88(*(v0 + 416), &qword_27DF2FFD0, &qword_2388D6160);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t LanguageModelSession.respond(to:schema:includeSchemaInPrompt:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  *(v9 + 312) = a6;
  *(v9 + 320) = v8;
  *(v9 + 98) = a7;
  *(v9 + 296) = a4;
  *(v9 + 304) = a5;
  *(v9 + 288) = a1;
  v12 = type metadata accessor for GenerationSchema(0);
  *(v9 + 328) = v12;
  v13 = *(v12 - 8);
  *(v9 + 336) = v13;
  *(v9 + 344) = *(v13 + 64);
  *(v9 + 352) = swift_task_alloc();
  v14 = type metadata accessor for RawResponseStream(0);
  *(v9 + 360) = v14;
  v15 = *(v14 - 8);
  *(v9 + 368) = v15;
  *(v9 + 376) = *(v15 + 64);
  *(v9 + 384) = swift_task_alloc();
  *(v9 + 392) = swift_task_alloc();
  sub_238810E44(&qword_27DF2FE20, &qword_2388D5740);
  *(v9 + 400) = swift_task_alloc();
  *(v9 + 408) = sub_238810E44(&qword_27DF2FFC8, &qword_2388D5D30);
  *(v9 + 416) = swift_task_alloc();
  *(v9 + 424) = type metadata accessor for GenerationSchema.Kind(0);
  *(v9 + 432) = swift_task_alloc();
  sub_238810E44(&qword_27DF2FFC0, &unk_2388D5A80);
  *(v9 + 440) = swift_task_alloc();
  *(v9 + 448) = sub_238810E44(&qword_27DF2FFD0, &qword_2388D6160);
  *(v9 + 456) = swift_task_alloc();
  v16 = *(a8 + 48);
  *(v9 + 48) = *(a8 + 32);
  *(v9 + 64) = v16;
  *(v9 + 80) = *(a8 + 64);
  *(v9 + 96) = *(a8 + 80);
  v17 = *(a8 + 16);
  *(v9 + 16) = *a8;
  *(v9 + 32) = v17;
  if (a2)
  {
    swift_getObjectType();
    v18 = sub_2388D2B38();
    v20 = v19;
  }

  else
  {
    v18 = 0;
    v20 = 0;
  }

  *(v9 + 464) = v18;
  *(v9 + 472) = v20;

  return MEMORY[0x2822009F8](sub_238847394, v18);
}

uint64_t sub_238847394()
{
  v91 = v0;
  v1 = *(v0 + 432);
  v2 = *(v0 + 304);
  v76 = *(v0 + 440);
  v79 = *(v0 + 312);
  *(v0 + 264) = *(v0 + 296);
  *(v0 + 272) = v2;
  *(v0 + 280) = MEMORY[0x277D84F90];
  v3 = MEMORY[0x277D837D0];
  v4 = *(MEMORY[0x277D837D0] - 8);
  v5 = swift_task_alloc();
  (*(v4 + 16))(v5, v0 + 264, v3);
  v6 = off_284B407B0;
  swift_bridgeObjectRetain_n();
  (v6)(&v85);
  v7 = *(v4 + 8);
  v7(v5, v3);
  sub_23881FAF4(v85);

  v8 = *(v0 + 280);
  *(v0 + 480) = v8;
  v7(v0 + 264, v3);

  v9 = type metadata accessor for PromptTemplate(0);
  (*(*(v9 - 8) + 56))(v76, 1, 1, v9);
  sub_238857D9C(v79, v1, type metadata accessor for GenerationSchema.Kind);
  if (swift_getEnumCaseMultiPayload() == 4)
  {
    v80 = *(v0 + 448);
    v82 = *(v0 + 456);
    v10 = *(v0 + 432);
    v11 = *(v0 + 416);
    v77 = *(v0 + 408);
    v12 = *(v0 + 392);
    v13 = *(v0 + 400);
    v71 = *(v0 + 440);
    v74 = *(v0 + 360);
    v14 = *(v0 + 336);
    v67 = *(v0 + 328);
    v16 = *(v0 + 312);
    v15 = *(v0 + 320);

    v17 = sub_238810E44(&qword_27DF2FA38, &unk_2388D3FE0);
    sub_2388594C4(v10 + *(v17 + 64), type metadata accessor for StringGuides);
    sub_238857D9C(v16, v13, type metadata accessor for GenerationSchema);
    (*(v14 + 56))(v13, 0, 1, v67);
    v19 = v15[20];
    v18 = v15[21];
    v20 = sub_238815878(v15 + 17, v19);
    v84 = v8;
    v21 = *(v0 + 64);
    v87 = *(v0 + 48);
    v88 = v21;
    v89 = *(v0 + 80);
    v90 = *(v0 + 96);
    v22 = *(v0 + 32);
    v85 = *(v0 + 16);
    v86 = v22;
    sub_23884B7DC(&v84, v71, &v85, v20, v13, 0, 0, v12, sub_23884B648, 0, MEMORY[0x277D837D0], v19, v18);
    sub_238827E88(v13, &qword_27DF2FE20, &qword_2388D5740);
    sub_238827E88(v71, &qword_27DF2FFC0, &unk_2388D5A80);
    v23 = v12[1];
    v24 = *(v74 + 20);
    v25 = v77[9];
    v68 = *v12;
    v72 = v25;
    v26 = sub_238810E44(&qword_27DF2FCF0, &unk_2388D53D0);
    v27 = *(v26 - 8);
    (*(v27 + 32))(v11 + v25, v12 + v24, v26);
    v28 = *(v12 + *(v74 + 24));
    v29 = swift_allocObject();
    *(v29 + 16) = v8;
    *v11 = v68;
    v11[1] = v23;
    *(v11 + v77[10]) = v28;
    v30 = (v11 + v77[11]);
    *v30 = sub_238830F10;
    v30[1] = 0;
    v31 = (v11 + v77[12]);
    *v31 = sub_238859730;
    v31[1] = v29;
    v32 = *v11;
    v33 = v11[1];
    (*(v27 + 16))(&v82[v80[9]], v11 + v72, v26);

    sub_238827E88(v11, &qword_27DF2FFC8, &qword_2388D5D30);
    v34 = swift_allocObject();
    *(v34 + 16) = v32;
    *(v34 + 24) = v33;
    v35 = swift_allocObject();
    *(v35 + 2) = v32;
    *(v35 + 3) = v33;
    *(v35 + 4) = v8;
    *v82 = v32;
    *(v82 + 1) = v33;
    *&v82[v80[10]] = v28;
    v36 = &v82[v80[11]];
    *v36 = sub_2388596B0;
    v36[1] = v34;
    v37 = &v82[v80[12]];
    v38 = sub_238859748;
    *v37 = sub_238859748;
    v37[1] = v35;
    swift_bridgeObjectRetain_n();
  }

  else
  {
    v39 = *(v0 + 456);
    v40 = *(v0 + 432);
    v41 = *(v0 + 392);
    v42 = *(v0 + 400);
    v75 = *(v0 + 448);
    v78 = *(v0 + 384);
    v83 = *(v0 + 376);
    v81 = *(v0 + 368);
    v69 = *(v0 + 440);
    v73 = *(v0 + 360);
    v43 = *(v0 + 352);
    v44 = *(v0 + 336);
    v63 = *(v0 + 328);
    v66 = *(v0 + 98);
    v46 = *(v0 + 312);
    v45 = *(v0 + 320);

    sub_2388594C4(v40, type metadata accessor for GenerationSchema.Kind);
    v47 = v45[15];
    v64 = v45[16];
    v65 = sub_238815878(v45 + 12, v47);
    v84 = v8;
    v48 = *(v0 + 64);
    v87 = *(v0 + 48);
    v88 = v48;
    v89 = *(v0 + 80);
    v90 = *(v0 + 96);
    v49 = *(v0 + 32);
    v85 = *(v0 + 16);
    v86 = v49;
    sub_238857D9C(v46, v42, type metadata accessor for GenerationSchema);
    (*(v44 + 56))(v42, 0, 1, v63);
    sub_238857D9C(v46, v43, type metadata accessor for GenerationSchema);
    v50 = (*(v44 + 80) + 16) & ~*(v44 + 80);
    v51 = swift_allocObject();
    sub_2388595CC(v43, v51 + v50, type metadata accessor for GenerationSchema);
    sub_23884B7DC(&v84, v69, &v85, v65, v42, v66, 0, v41, sub_238859698, v51, &type metadata for GeneratedContent, v47, v64);

    sub_238827E88(v42, &qword_27DF2FE20, &qword_2388D5740);
    sub_238827E88(v69, &qword_27DF2FFC0, &unk_2388D5A80);
    v52 = v41[1];
    v70 = *v41;
    v53 = *(v73 + 20);
    v54 = v75[9];
    v55 = sub_238810E44(&qword_27DF2FCF0, &unk_2388D53D0);
    (*(*(v55 - 8) + 16))(v39 + v54, v41 + v53, v55);
    v28 = *(v41 + *(v73 + 24));
    sub_2388595CC(v41, v78, type metadata accessor for RawResponseStream);
    v56 = (*(v81 + 80) + 16) & ~*(v81 + 80);
    v35 = swift_allocObject();
    sub_2388595CC(v78, v35 + v56, type metadata accessor for RawResponseStream);
    *(v35 + ((v83 + v56 + 7) & 0xFFFFFFFFFFFFFFF8)) = v8;
    *v39 = v70;
    v39[1] = v52;
    *(v39 + v75[10]) = v28;
    v57 = (v39 + v75[11]);
    *v57 = sub_2388313C0;
    v57[1] = 0;
    v58 = (v39 + v75[12]);
    v38 = sub_2388596B4;
    *v58 = sub_2388596B4;
    v58[1] = v35;
  }

  *(v0 + 488) = v38;
  *(v0 + 496) = v35;
  v59 = swift_task_alloc();
  *(v0 + 504) = v59;
  v60 = sub_238810E44(&qword_27DF2FA68, &qword_2388D4010);
  *v59 = v0;
  v59[1] = sub_238847C58;
  v61 = MEMORY[0x277D84950];

  return MEMORY[0x282200430](v0 + 184, v28, &type metadata for ResponseEnvelope, v60, v61);
}