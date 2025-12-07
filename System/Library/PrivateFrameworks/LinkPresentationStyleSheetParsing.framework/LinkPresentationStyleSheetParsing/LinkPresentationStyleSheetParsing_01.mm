unsigned __int8 *sub_255F7F244(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v72 = a1;
  v73 = a2;
  v74 = a3;
  v75 = a4;
  sub_255F7E008();

  result = sub_255F955B0();
  v8 = result;
  if ((v7 & 0x1000000000000000) != 0)
  {
    v8 = sub_255F79190(result, v7);
    v42 = v41;

    v7 = v42;
    if ((v42 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v7 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v8 & 0x1000000000000000) != 0)
    {
      result = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v9 = v8 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_255F957E0();
      v9 = v71;
    }

    v10 = *result;
    if (v10 == 43)
    {
      if (v9 >= 1)
      {
        v24 = v9 - 1;
        if (v24)
        {
          v25 = a5 + 48;
          v26 = a5 + 55;
          v27 = a5 + 87;
          if (a5 > 10)
          {
            v25 = 58;
          }

          else
          {
            v27 = 97;
            v26 = 65;
          }

          if (result)
          {
            v15 = 0;
            v28 = result + 1;
            v17 = 1;
            do
            {
              v29 = *v28;
              if (v29 < 0x30 || v29 >= v25)
              {
                if (v29 < 0x41 || v29 >= v26)
                {
                  v20 = 0;
                  if (v29 < 0x61 || v29 >= v27)
                  {
                    goto LABEL_129;
                  }

                  v30 = -87;
                }

                else
                {
                  v30 = -55;
                }
              }

              else
              {
                v30 = -48;
              }

              v31 = v15 * a5;
              if ((v31 & 0xFFFFFFFF00000000) != 0)
              {
                goto LABEL_128;
              }

              v32 = v29 + v30;
              v23 = __CFADD__(v31, v32);
              v15 = v31 + v32;
              if (v23)
              {
                goto LABEL_128;
              }

              ++v28;
              --v24;
            }

            while (v24);
LABEL_47:
            v17 = 0;
            v20 = v15;
            goto LABEL_129;
          }

          goto LABEL_67;
        }

LABEL_128:
        v20 = 0;
        v17 = 1;
        goto LABEL_129;
      }

      goto LABEL_133;
    }

    if (v10 != 45)
    {
      if (v9)
      {
        v33 = a5 + 48;
        v34 = a5 + 55;
        v35 = a5 + 87;
        if (a5 > 10)
        {
          v33 = 58;
        }

        else
        {
          v35 = 97;
          v34 = 65;
        }

        if (result)
        {
          v36 = 0;
          v17 = 1;
          do
          {
            v37 = *result;
            if (v37 < 0x30 || v37 >= v33)
            {
              if (v37 < 0x41 || v37 >= v34)
              {
                v20 = 0;
                if (v37 < 0x61 || v37 >= v35)
                {
                  goto LABEL_129;
                }

                v38 = -87;
              }

              else
              {
                v38 = -55;
              }
            }

            else
            {
              v38 = -48;
            }

            v39 = v36 * a5;
            if ((v39 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_128;
            }

            v40 = v37 + v38;
            v23 = __CFADD__(v39, v40);
            v36 = v39 + v40;
            if (v23)
            {
              goto LABEL_128;
            }

            ++result;
            --v9;
          }

          while (v9);
          v17 = 0;
          v20 = v36;
          goto LABEL_129;
        }

        goto LABEL_67;
      }

      goto LABEL_128;
    }

    if (v9 >= 1)
    {
      v11 = v9 - 1;
      if (v11)
      {
        v12 = a5 + 48;
        v13 = a5 + 55;
        v14 = a5 + 87;
        if (a5 > 10)
        {
          v12 = 58;
        }

        else
        {
          v14 = 97;
          v13 = 65;
        }

        if (result)
        {
          v15 = 0;
          v16 = result + 1;
          v17 = 1;
          while (1)
          {
            v18 = *v16;
            if (v18 < 0x30 || v18 >= v12)
            {
              if (v18 < 0x41 || v18 >= v13)
              {
                v20 = 0;
                if (v18 < 0x61 || v18 >= v14)
                {
                  goto LABEL_129;
                }

                v19 = -87;
              }

              else
              {
                v19 = -55;
              }
            }

            else
            {
              v19 = -48;
            }

            v21 = v15 * a5;
            if ((v21 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_128;
            }

            v22 = v18 + v19;
            v23 = v21 >= v22;
            v15 = v21 - v22;
            if (!v23)
            {
              goto LABEL_128;
            }

            ++v16;
            if (!--v11)
            {
              goto LABEL_47;
            }
          }
        }

LABEL_67:
        v20 = 0;
        v17 = 0;
LABEL_129:

        LOBYTE(v72) = v17;
        return (v20 | (v17 << 32));
      }

      goto LABEL_128;
    }

    __break(1u);
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  v43 = HIBYTE(v7) & 0xF;
  v72 = v8;
  v73 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v8 != 43)
  {
    if (v8 != 45)
    {
      if (v43)
      {
        v45 = 0;
        v63 = a5 + 48;
        v64 = a5 + 55;
        v65 = a5 + 87;
        if (a5 > 10)
        {
          v63 = 58;
        }

        else
        {
          v65 = 97;
          v64 = 65;
        }

        v66 = &v72;
        v17 = 1;
        while (1)
        {
          v67 = *v66;
          if (v67 < 0x30 || v67 >= v63)
          {
            if (v67 < 0x41 || v67 >= v64)
            {
              v20 = 0;
              if (v67 < 0x61 || v67 >= v65)
              {
                goto LABEL_129;
              }

              v68 = -87;
            }

            else
            {
              v68 = -55;
            }
          }

          else
          {
            v68 = -48;
          }

          v69 = v45 * a5;
          if ((v69 & 0xFFFFFFFF00000000) != 0)
          {
            goto LABEL_128;
          }

          v70 = v67 + v68;
          v23 = __CFADD__(v69, v70);
          v45 = v69 + v70;
          if (v23)
          {
            goto LABEL_128;
          }

          v66 = (v66 + 1);
          if (!--v43)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    if (v43)
    {
      v44 = v43 - 1;
      if (v44)
      {
        v45 = 0;
        v46 = a5 + 48;
        v47 = a5 + 55;
        v48 = a5 + 87;
        if (a5 > 10)
        {
          v46 = 58;
        }

        else
        {
          v48 = 97;
          v47 = 65;
        }

        v49 = &v72 + 1;
        v17 = 1;
        while (1)
        {
          v50 = *v49;
          if (v50 < 0x30 || v50 >= v46)
          {
            if (v50 < 0x41 || v50 >= v47)
            {
              v20 = 0;
              if (v50 < 0x61 || v50 >= v48)
              {
                goto LABEL_129;
              }

              v51 = -87;
            }

            else
            {
              v51 = -55;
            }
          }

          else
          {
            v51 = -48;
          }

          v52 = v45 * a5;
          if ((v52 & 0xFFFFFFFF00000000) != 0)
          {
            goto LABEL_128;
          }

          v53 = v50 + v51;
          v23 = v52 >= v53;
          v45 = v52 - v53;
          if (!v23)
          {
            goto LABEL_128;
          }

          ++v49;
          if (!--v44)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    goto LABEL_132;
  }

  if (v43)
  {
    v54 = v43 - 1;
    if (v54)
    {
      v45 = 0;
      v55 = a5 + 48;
      v56 = a5 + 55;
      v57 = a5 + 87;
      if (a5 > 10)
      {
        v55 = 58;
      }

      else
      {
        v57 = 97;
        v56 = 65;
      }

      v58 = &v72 + 1;
      v17 = 1;
      do
      {
        v59 = *v58;
        if (v59 < 0x30 || v59 >= v55)
        {
          if (v59 < 0x41 || v59 >= v56)
          {
            v20 = 0;
            if (v59 < 0x61 || v59 >= v57)
            {
              goto LABEL_129;
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

        v61 = v45 * a5;
        if ((v61 & 0xFFFFFFFF00000000) != 0)
        {
          goto LABEL_128;
        }

        v62 = v59 + v60;
        v23 = __CFADD__(v61, v62);
        v45 = v61 + v62;
        if (v23)
        {
          goto LABEL_128;
        }

        ++v58;
        --v54;
      }

      while (v54);
LABEL_127:
      v17 = 0;
      v20 = v45;
      goto LABEL_129;
    }

    goto LABEL_128;
  }

LABEL_134:
  __break(1u);
  return result;
}

uint64_t sub_255F7F7CC(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v13 = 0;
    return v13 | (((a4 >> 60) & 1) << 40);
  }

  if ((a4 & 0x2000000000000000) != 0)
  {
    v14[0] = a3;
    v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
    v11 = v14;
  }

  else if ((a3 & 0x1000000000000000) != 0)
  {
    v11 = ((a4 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    v11 = sub_255F957E0();
  }

  result = sub_255F80988(v11, a1, a2, a3, a4, a5);
  if (!v5)
  {
    v15 = BYTE4(result) & 1;
    v13 = result | ((BYTE4(result) & 1) << 32);
    return v13 | (((a4 >> 60) & 1) << 40);
  }

  return result;
}

unint64_t sub_255F7F894(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81B580, &qword_255F96C68);
    v3 = sub_255F95850();

    for (i = (a1 + 56); ; i += 8)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;

      result = sub_255F7EF4C(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = v3[7] + 12 * result;
      *v12 = v7;
      *(v12 + 8) = v8;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_255F7F9B0(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v4 = 7;
  if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
  {
    v4 = 11;
  }

  v5 = v4 | (v3 << 16);
  result = sub_255F95500();
  if (v6)
  {
    result = v5;
  }

  if (4 * v3 < result >> 14)
  {
    goto LABEL_14;
  }

  return sub_255F955C0();
}

unint64_t sub_255F7FA60(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a2 >> 14 < a1 >> 14)
  {
    __break(1u);
LABEL_77:

    goto LABEL_78;
  }

  v6 = a2;
  v7 = a1;
  v120 = a6;
  v121 = a2 >> 14;
  v119 = a5;
  v127 = a3;
  v122 = a4;
  v9 = sub_255F95700();
  if ((v9 ^ v10) < 0x4000)
  {
LABEL_6:

    v13 = v122;
    v14 = v127;
    goto LABEL_7;
  }

  v11 = v10;
  v8 = v9;
  while (1)
  {
    sub_255F956F0();
    v12 = sub_255F953F0();

    if ((v12 & 1) == 0)
    {
      break;
    }

    v8 = sub_255F956B0();
    if ((v8 ^ v11) < 0x4000)
    {
      goto LABEL_6;
    }
  }

  v13 = v122;
  v14 = v127;
  if (v121 == v8 >> 14)
  {
    goto LABEL_7;
  }

  if (sub_255F956F0() == 45 && v22 == 0xE100000000000000)
  {
  }

  else
  {
    v23 = sub_255F95990();

    if ((v23 & 1) == 0)
    {
      v25 = 0;
      goto LABEL_17;
    }
  }

  v24 = sub_255F956B0();
  if (v121 == v24 >> 14)
  {
LABEL_7:
    v123 = *&v7;
    v124 = v6;
    v125 = v14;
    v126 = v13;
    sub_255F7E008();

    v15 = sub_255F955B0();
    v17 = v16;
    v18 = 0x8000000255F9CEA0;
    sub_255F796F4();
    swift_allocError();
    *v19 = v15;
    *(v19 + 8) = v17;
    v20 = 0xD00000000000004ALL;
    goto LABEL_8;
  }

  v8 = v24;
  v25 = 1;
LABEL_17:
  sub_255F956F0();
  v26 = sub_255F953E0();

  if ((v26 & 0x100) != 0)
  {
    goto LABEL_7;
  }

  sub_255F956F0();
  v27 = sub_255F95400();

  if ((v27 & 1) == 0)
  {
    goto LABEL_7;
  }

  v116 = v25;
  if (v121 == v8 >> 14)
  {
    goto LABEL_80;
  }

  v28 = 0.0;
  while (1)
  {
    if (v30 = sub_255F956F0(), v31 = v29, v30 == 2573) && v29 == 0xE200000000000000 || (result = sub_255F95990(), (result))
    {

      v14 = v127;
    }

    else
    {
      if ((v31 & 0x2000000000000000) != 0)
      {
        v32 = HIBYTE(v31) & 0xF;
      }

      else
      {
        v32 = v30 & 0xFFFFFFFFFFFFLL;
      }

      if (!v32)
      {
        __break(1u);
LABEL_146:
        __break(1u);
LABEL_147:
        __break(1u);
LABEL_148:
        __break(1u);
LABEL_149:
        __break(1u);
        goto LABEL_150;
      }

      if ((v31 & 0x1000000000000000) != 0)
      {
        v33 = sub_255F95480();
      }

      else
      {
        v33 = sub_255F95790() << 16;
      }

      if (v33 >> 14 != 4 * v32)
      {
        goto LABEL_45;
      }

      result = sub_255F7F0F4(v30, v31);
      if ((result & 0x100000000) != 0)
      {
        goto LABEL_154;
      }

      if ((result & 0xFFFFFF80) != 0)
      {
LABEL_45:

        v14 = v127;
        v36 = v121;
LABEL_46:
        v45 = v8 >> 14;
        if (v8 >> 14 == v36)
        {
          goto LABEL_80;
        }

        goto LABEL_82;
      }

      result = sub_255F7F0F4(v30, v31);
      if ((result & 0x100000000) != 0)
      {
        goto LABEL_155;
      }

      v34 = result;

      v14 = v127;
      if ((v34 & 0xFFFFFF00) != 0)
      {
        goto LABEL_146;
      }
    }

    sub_255F956F0();
    v35 = sub_255F95400();

    v36 = v121;
    if ((v35 & 1) == 0)
    {
      goto LABEL_46;
    }

    v37 = sub_255F956F0();
    v123 = 0.0;
    v39 = sub_255F795FC(v37, v38, &v123);

    if (!v39)
    {
      goto LABEL_153;
    }

    v28 = v28 * 10.0 + v123;
    result = sub_255F956B0();
    v8 = result;
    v40 = result >> 14;
    if (v28 >= 255.0)
    {
      break;
    }

    if (v40 == v121)
    {
      goto LABEL_46;
    }
  }

  if (v121 < v40)
  {
    goto LABEL_149;
  }

  v42 = sub_255F95700();
  v44 = v43;
  v117 = v41 >> 14;
  if (v41 >> 14 == v42 >> 14)
  {
    v8 = v6;
    goto LABEL_79;
  }

  v46 = v41;
  v8 = v42;
  do
  {
    v47 = v42;
    v48 = v46;
    v49 = v44;
    v51 = sub_255F956F0();
    v52 = v50;
    if (v51 != 2573 || v50 != 0xE200000000000000)
    {
      result = sub_255F95990();
      if ((result & 1) == 0)
      {
        v53 = v51;
        if ((v52 & 0x2000000000000000) != 0)
        {
          v54 = HIBYTE(v52) & 0xF;
        }

        else
        {
          v54 = v51 & 0xFFFFFFFFFFFFLL;
        }

        if (!v54)
        {
          goto LABEL_147;
        }

        if ((v52 & 0x1000000000000000) != 0)
        {
          v59 = sub_255F95480();
        }

        else
        {
          if ((v52 & 0x2000000000000000) != 0)
          {
            v56 = v53;
          }

          else
          {
            if ((v53 & 0x1000000000000000) != 0)
            {
              v55 = ((v52 & 0xFFFFFFFFFFFFFFFLL) + 32);
            }

            else
            {
              v55 = sub_255F957E0();
            }

            v56 = *v55;
          }

          v57 = v56;
          v58 = (__clz(~v56) - 24) << 16;
          if (v57 < 0)
          {
            v59 = v58;
          }

          else
          {
            v59 = 65541;
          }
        }

        if (v59 >> 14 != 4 * v54)
        {
          goto LABEL_77;
        }

        result = sub_255F7F0F4(v53, v52);
        if ((result & 0x100000000) != 0)
        {
          goto LABEL_159;
        }

        if ((result & 0xFFFFFF80) != 0)
        {
          goto LABEL_77;
        }

        result = sub_255F7F0F4(v53, v52);
        if ((result & 0x100000000) != 0)
        {
          goto LABEL_160;
        }

        if ((result & 0xFFFFFF00) != 0)
        {
          goto LABEL_148;
        }
      }
    }

    v60 = sub_255F95400();

    if ((v60 & 1) == 0)
    {
      goto LABEL_78;
    }

    v42 = v47;
    v44 = v49;
    v61 = sub_255F956B0();
    v46 = v48;
    v8 = v61;
  }

  while (v117 != v61 >> 14);
  v8 = v6;
LABEL_78:
  v14 = v127;
LABEL_79:

  v45 = v8 >> 14;
  v36 = v121;
  if (v8 >> 14 == v121)
  {
LABEL_80:
    v123 = *&v7;
    v124 = v6;
    v125 = v14;
    v126 = v122;
    sub_255F7E008();

    v62 = sub_255F955B0();
    v64 = v63;
    v18 = 0x8000000255F9D030;
    sub_255F796F4();
    swift_allocError();
    *v19 = v62;
    *(v19 + 8) = v64;
    v20 = 0xD000000000000039;
    goto LABEL_8;
  }

  v28 = 255.0;
LABEL_82:
  v65 = v120;
  if (v120)
  {
    if (sub_255F956F0() == 46 && v66 == 0xE100000000000000)
    {
LABEL_85:

      goto LABEL_87;
    }

    v67 = sub_255F95990();

    if (v67)
    {
      goto LABEL_87;
    }

    if (sub_255F956F0() == 37 && v71 == 0xE100000000000000)
    {
      goto LABEL_85;
    }

    v72 = sub_255F95990();

    if (v72)
    {
LABEL_87:
      v123 = *&v7;
      v124 = v6;
      v125 = v14;
      v126 = v122;
      sub_255F7E008();

      v68 = sub_255F955B0();
      v70 = v69;
      v18 = 0x8000000255F9CFE0;
      sub_255F796F4();
      swift_allocError();
      *v19 = v68;
      *(v19 + 8) = v70;
      v20 = 0xD000000000000049;
      goto LABEL_8;
    }
  }

  if (sub_255F956F0() == 46 && v73 == 0xE100000000000000)
  {

    goto LABEL_95;
  }

  v74 = sub_255F95990();

  if ((v74 & 1) == 0)
  {
    v79 = v122;
LABEL_111:
    if (v65 != 2 && (v65 & 1) == 0)
    {
      if (sub_255F956F0() == 37 && v91 == 0xE100000000000000)
      {
      }

      else
      {
        v96 = sub_255F95990();

        if ((v96 & 1) == 0)
        {
          v123 = *&v7;
          v124 = v6;
          v125 = v14;
          v126 = v79;
          sub_255F7E008();

          v109 = sub_255F955B0();
          v111 = v110;
          v18 = 0x8000000255F9CF40;
          sub_255F796F4();
          swift_allocError();
          *v19 = v109;
          *(v19 + 8) = v111;
          v20 = 0xD000000000000048;
          goto LABEL_8;
        }
      }
    }

    if (sub_255F956F0() == 37 && v97 == 0xE100000000000000)
    {
    }

    else
    {
      v98 = sub_255F95990();

      if ((v98 & 1) == 0)
      {
LABEL_127:
        if (v36 < v8 >> 14)
        {
          goto LABEL_152;
        }

        v99 = sub_255F95700();
        if ((v99 ^ v100) < 0x4000)
        {
LABEL_132:

          v104 = v127;
        }

        else
        {
          v101 = v100;
          v102 = v99;
          while (1)
          {
            sub_255F956F0();
            v103 = sub_255F953F0();

            if ((v103 & 1) == 0)
            {
              break;
            }

            v102 = sub_255F956B0();
            if ((v102 ^ v101) < 0x4000)
            {
              goto LABEL_132;
            }
          }

          v104 = v127;
          if (v121 != v102 >> 14)
          {
            if (sub_255F956F0() == v119 && v108 == 0xE100000000000000)
            {

              goto LABEL_140;
            }

            v112 = sub_255F95990();

            if (v112)
            {
LABEL_140:
              result = sub_255F956B0();
              if (v116)
              {
                return result;
              }

              v113 = round(v28);
              if ((*&v113 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
              {
                if (v113 > -1.0)
                {
                  if (v113 < 4294967300.0)
                  {
                    return result;
                  }

                  goto LABEL_158;
                }

LABEL_157:
                __break(1u);
LABEL_158:
                __break(1u);
LABEL_159:
                __break(1u);
LABEL_160:
                __break(1u);
                return result;
              }

LABEL_156:
              __break(1u);
              goto LABEL_157;
            }
          }
        }

        v123 = *&v7;
        v124 = v6;
        v125 = v104;
        v126 = v122;
        sub_255F7E008();

        v105 = sub_255F955B0();
        v107 = v106;
        v18 = 0x8000000255F9CEF0;
        sub_255F796F4();
        swift_allocError();
        *v19 = v105;
        *(v19 + 8) = v107;
        v20 = 0xD000000000000045;
LABEL_8:
        *(v19 + 16) = v20;
        *(v19 + 24) = v18;
        *(v19 + 32) = 0;
        return swift_willThrow();
      }
    }

    if (v28 / 100.0 * 255.0 <= 255.0)
    {
      v28 = v28 / 100.0 * 255.0;
    }

    else
    {
      v28 = 255.0;
    }

    result = sub_255F956B0();
    v8 = result;
    goto LABEL_127;
  }

LABEL_95:
  if (v36 < v45)
  {
LABEL_150:
    __break(1u);
LABEL_151:
    __break(1u);
LABEL_152:
    __break(1u);
LABEL_153:
    __break(1u);
LABEL_154:
    __break(1u);
LABEL_155:
    __break(1u);
    goto LABEL_156;
  }

  result = sub_255F95700();
  v76 = v75 >> 14;
  v77 = result >> 14;
  if (result >> 14 != v75 >> 14)
  {
    v114 = result >> 14;
    while (1)
    {
      v115 = v77;
      if (sub_255F956F0() == 37 && v78 == 0xE100000000000000)
      {
        break;
      }

      v118 = sub_255F95990();

      if (v118)
      {
        goto LABEL_105;
      }

      result = sub_255F956B0();
      v77 = result >> 14;
      if (result >> 14 == v76)
      {
        goto LABEL_106;
      }
    }

LABEL_105:
    v76 = v115;
LABEL_106:
    v77 = v114;
  }

  if (v76 < v77)
  {
    goto LABEL_151;
  }

  v80 = sub_255F95700();
  v82 = v81;
  v84 = v83;
  v86 = v85;

  v87 = sub_255F956E0();
  v123 = 0.0;
  v88 = MEMORY[0x259C53FE0](v80, v82, v84, v86);
  LOBYTE(v82) = sub_255F795FC(v88, v89, &v123);

  v65 = v120;
  if (v82)
  {
    v14 = v127;
    if (v87 >= 1)
    {
      v90 = v123;
      v79 = v122;
      v8 = sub_255F956C0();

      v28 = v28 + v90;
      v36 = v121;
      goto LABEL_111;
    }
  }

  else
  {
    v14 = v127;
  }

  v123 = *&v7;
  v124 = v6;
  v125 = v14;
  v126 = v122;
  sub_255F7E008();

  v92 = sub_255F955B0();
  v94 = v93;
  sub_255F796F4();
  swift_allocError();
  *v95 = v92;
  *(v95 + 8) = v94;
  *(v95 + 16) = 0xD000000000000043;
  *(v95 + 24) = 0x8000000255F9CF90;
  *(v95 + 32) = 0;
  swift_willThrow();
}

uint64_t sub_255F80988(uint64_t result, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6)
{
  v8 = result;
  v9 = (a4 >> 59) & 1;
  if ((a5 & 0x1000000000000000) == 0)
  {
    LOBYTE(v9) = 1;
  }

  v10 = 4 << v9;
  v11 = a2 & 0xC;
  v12 = a2;
  if (v11 == v10)
  {
    v14 = a2;
    v15 = a3;
    v16 = a5;
    result = sub_255F76E48(a2, a4, a5);
    a2 = v14;
    a3 = v15;
    a5 = v16;
    v12 = result;
    if ((v16 & 0x1000000000000000) == 0)
    {
LABEL_5:
      v13 = v12 >> 16;
      if (v11 != v10)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
    goto LABEL_5;
  }

  v17 = a4 & 0xFFFFFFFFFFFFLL;
  if ((a5 & 0x2000000000000000) != 0)
  {
    v17 = HIBYTE(a5) & 0xF;
  }

  if (v17 < v12 >> 16)
  {
    goto LABEL_104;
  }

  v18 = a2;
  v19 = a3;
  v20 = a5;
  result = sub_255F95570();
  a5 = v20;
  v13 = result;
  a3 = v19;
  a2 = v18;
  if (v11 == v10)
  {
LABEL_14:
    v21 = a3;
    v22 = a5;
    result = sub_255F76E48(a2, a4, a5);
    a3 = v21;
    a5 = v22;
    a2 = result;
  }

LABEL_6:
  if ((a3 & 0xC) == v10)
  {
    v23 = a2;
    v24 = a5;
    result = sub_255F76E48(a3, a4, a5);
    a2 = v23;
    a5 = v24;
    a3 = result;
    if ((v24 & 0x1000000000000000) == 0)
    {
      goto LABEL_8;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
LABEL_8:
    result = (a3 >> 16) - (a2 >> 16);
    goto LABEL_21;
  }

  v25 = HIBYTE(a5) & 0xF;
  if ((a5 & 0x2000000000000000) == 0)
  {
    v25 = a4 & 0xFFFFFFFFFFFFLL;
  }

  if (v25 < a2 >> 16)
  {
    goto LABEL_100;
  }

  if (v25 < a3 >> 16)
  {
LABEL_101:
    __break(1u);
    goto LABEL_102;
  }

  result = sub_255F95570();
LABEL_21:
  v26 = v13 + result;
  if (__OFADD__(v13, result))
  {
    __break(1u);
    goto LABEL_99;
  }

  if (v26 < v13)
  {
LABEL_99:
    __break(1u);
LABEL_100:
    __break(1u);
    goto LABEL_101;
  }

  v27 = (v13 + v8);
  if (!v8)
  {
    v27 = 0;
  }

  v28 = *v27;
  if (v28 == 43)
  {
    if (result >= 1)
    {
      if (result != 1)
      {
        v41 = a6 + 87;
        if (a6 > 10)
        {
          v42 = a6 + 55;
        }

        else
        {
          v41 = 97;
          v42 = 65;
        }

        if (a6 <= 10)
        {
          v43 = a6 + 48;
        }

        else
        {
          v43 = 58;
        }

        if (v27)
        {
          v32 = 0;
          v44 = v27 + 1;
          v45 = result - 1;
          do
          {
            v46 = *v44;
            if (v46 < 0x30 || v46 >= v43)
            {
              if (v46 < 0x41 || v46 >= v42)
              {
                v37 = 0;
                v38 = 1;
                if (v46 < 0x61 || v46 >= v41)
                {
                  return v37 | (v38 << 32);
                }

                v47 = -87;
              }

              else
              {
                v47 = -55;
              }
            }

            else
            {
              v47 = -48;
            }

            v48 = v32 * a6;
            if ((v48 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_96;
            }

            v49 = v46 + v47;
            v32 = v48 + v49;
            if (__CFADD__(v48, v49))
            {
              goto LABEL_96;
            }

            ++v44;
            --v45;
          }

          while (v45);
LABEL_94:
          v38 = 0;
          v37 = v32;
          return v37 | (v38 << 32);
        }

        goto LABEL_95;
      }

      goto LABEL_96;
    }

    goto LABEL_103;
  }

  if (v28 != 45)
  {
    if (v26 != v13)
    {
      v50 = a6 + 87;
      if (a6 > 10)
      {
        v51 = a6 + 55;
      }

      else
      {
        v50 = 97;
        v51 = 65;
      }

      if (a6 <= 10)
      {
        v52 = a6 + 48;
      }

      else
      {
        v52 = 58;
      }

      if (v27)
      {
        v32 = 0;
        while (1)
        {
          v53 = *v27;
          if (v53 < 0x30 || v53 >= v52)
          {
            if (v53 < 0x41 || v53 >= v51)
            {
              v37 = 0;
              v38 = 1;
              if (v53 < 0x61 || v53 >= v50)
              {
                return v37 | (v38 << 32);
              }

              v54 = -87;
            }

            else
            {
              v54 = -55;
            }
          }

          else
          {
            v54 = -48;
          }

          v55 = v32 * a6;
          if ((v55 & 0xFFFFFFFF00000000) != 0)
          {
            goto LABEL_96;
          }

          v56 = v53 + v54;
          v32 = v55 + v56;
          if (__CFADD__(v55, v56))
          {
            goto LABEL_96;
          }

          ++v27;
          if (!--result)
          {
            goto LABEL_94;
          }
        }
      }

      goto LABEL_95;
    }

LABEL_96:
    v37 = 0;
    v38 = 1;
    return v37 | (v38 << 32);
  }

  if (result >= 1)
  {
    if (result != 1)
    {
      v29 = a6 + 87;
      if (a6 > 10)
      {
        v30 = a6 + 55;
      }

      else
      {
        v29 = 97;
        v30 = 65;
      }

      if (a6 <= 10)
      {
        v31 = a6 + 48;
      }

      else
      {
        v31 = 58;
      }

      if (v27)
      {
        v32 = 0;
        v33 = v27 + 1;
        v34 = result - 1;
        while (1)
        {
          v35 = *v33;
          if (v35 < 0x30 || v35 >= v31)
          {
            if (v35 < 0x41 || v35 >= v30)
            {
              v37 = 0;
              v38 = 1;
              if (v35 < 0x61 || v35 >= v29)
              {
                return v37 | (v38 << 32);
              }

              v36 = -87;
            }

            else
            {
              v36 = -55;
            }
          }

          else
          {
            v36 = -48;
          }

          v39 = v32 * a6;
          if ((v39 & 0xFFFFFFFF00000000) != 0)
          {
            goto LABEL_96;
          }

          v40 = v35 + v36;
          v32 = v39 - v40;
          if (v39 < v40)
          {
            goto LABEL_96;
          }

          ++v33;
          if (!--v34)
          {
            goto LABEL_94;
          }
        }
      }

LABEL_95:
      v37 = 0;
      v38 = 0;
      return v37 | (v38 << 32);
    }

    goto LABEL_96;
  }

LABEL_102:
  __break(1u);
LABEL_103:
  __break(1u);
LABEL_104:
  __break(1u);
  return result;
}

uint64_t StyleSheet.Color.debugDescription.getter()
{
  v0 = sub_255F95980();
  MEMORY[0x259C540A0](v0);

  MEMORY[0x259C540A0](8236, 0xE200000000000000);
  v1 = sub_255F95980();
  MEMORY[0x259C540A0](v1);

  MEMORY[0x259C540A0](8236, 0xE200000000000000);
  v2 = sub_255F95980();
  MEMORY[0x259C540A0](v2);

  MEMORY[0x259C540A0](41, 0xE100000000000000);
  return 677537650;
}

uint64_t StyleSheet.Font.Size.debugDescription.getter()
{
  if (*(v0 + 8) < 0)
  {
    return StyleSheet.Font.Size.Absolute.rawValue.getter();
  }

  sub_255F95640();
  v1 = StyleSheet.Font.Size.Unit.rawValue.getter();
  MEMORY[0x259C540A0](v1);

  return 0;
}

uint64_t StyleSheet.Font.Specified.debugDescription.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 9);
  v4 = *(v0 + 10);
  v5 = *(v0 + 11);
  v6 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81B588, &qword_255F96C80);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_255F96C70;
  if (v3 == 13)
  {
    v8 = 0;
    v9 = 0;
    *(inited + 32) = 0;
    *(inited + 40) = 0;
    *(inited + 48) = 0;
  }

  else
  {
    v9 = sub_255F7BE3C();
    *(inited + 32) = v3;
    v8 = &type metadata for StyleSheet.Font.Weight;
  }

  *(inited + 56) = v8;
  *(inited + 64) = v9;
  *(inited + 72) = 0x746867696577;
  *(inited + 80) = 0xE600000000000000;
  if (v4 == 3)
  {
    v10 = 0;
    v11 = 0;
    *(inited + 88) = 0;
    *(inited + 96) = 0;
    *(inited + 104) = 0;
  }

  else
  {
    v11 = sub_255F7C038();
    *(inited + 88) = v4;
    v10 = &type metadata for StyleSheet.Font.Style;
  }

  *(inited + 112) = v10;
  *(inited + 120) = v11;
  *(inited + 128) = 0x656C797473;
  *(inited + 136) = 0xE500000000000000;
  v39 = v6;
  v37 = v1;
  v38 = v2;
  if (v5 == 2)
  {
    v12 = 0;
    v13 = 0;
    *(inited + 144) = 0;
    *(inited + 152) = 0;
    *(inited + 160) = 0;
  }

  else
  {
    v13 = sub_255F7C1FC();
    *(inited + 144) = v5 & 1;
    v12 = &type metadata for StyleSheet.Font.Variant;
  }

  v14 = 0;
  *(inited + 168) = v12;
  *(inited + 176) = v13;
  v40 = MEMORY[0x277D84F90];
  v15 = inited + 32;
  *(inited + 184) = 0x746E6169726176;
  *(inited + 192) = 0xE700000000000000;
  v16 = &qword_255F96C90;
  do
  {
    if (v14 <= 3)
    {
      v17 = 3;
    }

    else
    {
      v17 = v14;
    }

    v18 = -v17;
    v19 = v15 + 56 * v14++;
    while (1)
    {
      if (v18 + v14 == 1)
      {
        __break(1u);
        goto LABEL_38;
      }

      sub_255F8154C(v19, &v46, &qword_27F81B590, &qword_255F96C88);
      v20 = v48;
      v21 = v49;
      sub_255F8154C(&v46, &v41, &qword_27F81B598, &qword_255F96C90);
      if (AssociatedTypeWitness)
      {
        break;
      }

      sub_255F815B4(&v41, &qword_27F81B598, &qword_255F96C90);
      sub_255F815B4(&v46, &qword_27F81B590, &qword_255F96C88);
      ++v14;
      v19 += 56;
      if (v14 == 4)
      {
        goto LABEL_24;
      }
    }

    sub_255F7AF30(&v41, &v43);
    MEMORY[0x259C540A0](v20, v21);
    MEMORY[0x259C540A0](8250, 0xE200000000000000);
    __swift_project_boxed_opaque_existential_1(&v43, v45);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    __swift_allocate_boxed_opaque_existential_0(&v41);
    sub_255F95600();
    sub_255F95830();
    __swift_destroy_boxed_opaque_existential_1(&v41);
    __swift_destroy_boxed_opaque_existential_1(&v43);
    sub_255F815B4(&v46, &qword_27F81B590, &qword_255F96C88);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v40 = sub_255F7DEFC(0, *(v40 + 2) + 1, 1, v40);
    }

    v23 = *(v40 + 2);
    v22 = *(v40 + 3);
    if (v23 >= v22 >> 1)
    {
      v40 = sub_255F7DEFC((v22 > 1), v23 + 1, 1, v40);
    }

    *(v40 + 2) = v23 + 1;
    v24 = &v40[16 * v23];
    *(v24 + 4) = 0;
    *(v24 + 5) = 0xE000000000000000;
    v15 = inited + 32;
  }

  while (v14 != 3);
LABEL_24:

  if (v38 > 0xFB)
  {
    v25 = v39;
    v16 = v40;
    if (!v39)
    {
      goto LABEL_36;
    }

LABEL_32:
    v46 = 0x203A796C696D6166;
    v47 = 0xE800000000000000;
    v43 = v25;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81B5A0, &qword_255F96EC0);
    sub_255F8203C(&qword_27F81B5A8, &qword_27F81B5A0, &qword_255F96EC0);
    v31 = sub_255F95420();
    MEMORY[0x259C540A0](v31);

    v18 = v46;
    inited = v47;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_33:
      v33 = *(v16 + 2);
      v32 = *(v16 + 3);
      if (v33 >= v32 >> 1)
      {
        v16 = sub_255F7DEFC((v32 > 1), v33 + 1, 1, v16);
      }

      *(v16 + 2) = v33 + 1;
      v34 = &v16[16 * v33];
      *(v34 + 4) = v18;
      *(v34 + 5) = inited;
      goto LABEL_36;
    }

LABEL_38:
    v16 = sub_255F7DEFC(0, *(v16 + 2) + 1, 1, v16);
    goto LABEL_33;
  }

  v46 = 0;
  v47 = 0xE000000000000000;
  MEMORY[0x259C540A0](0x203A657A6973, 0xE600000000000000);
  v43 = v37;
  v44 = v38;
  sub_255F95830();
  v26 = v46;
  v27 = v47;
  v16 = v40;
  v25 = v39;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v16 = sub_255F7DEFC(0, *(v40 + 2) + 1, 1, v40);
  }

  v29 = *(v16 + 2);
  v28 = *(v16 + 3);
  if (v29 >= v28 >> 1)
  {
    v16 = sub_255F7DEFC((v28 > 1), v29 + 1, 1, v16);
  }

  *(v16 + 2) = v29 + 1;
  v30 = &v16[16 * v29];
  *(v30 + 4) = v26;
  *(v30 + 5) = v27;
  if (v39)
  {
    goto LABEL_32;
  }

LABEL_36:
  v46 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81B5A0, &qword_255F96EC0);
  sub_255F8203C(&qword_27F81B5A8, &qword_27F81B5A0, &qword_255F96EC0);
  v35 = sub_255F95420();

  return v35;
}

uint64_t sub_255F8154C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_255F815B4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t *__swift_allocate_boxed_opaque_existential_0(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t StyleSheet.Font.debugDescription.getter()
{
  if ((*(v0 + 8) & 0x8000000000000000) != 0)
  {
    return StyleSheet.Font.System.rawValue.getter();
  }

  sub_255F95830();
  return 0;
}

uint64_t sub_255F81710()
{
  if ((*(v0 + 8) & 0x8000000000000000) != 0)
  {
    return StyleSheet.Font.System.rawValue.getter();
  }

  sub_255F95830();
  return 0;
}

unint64_t StyleSheet.Rule.Declaration.debugDescription.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = *(v0 + 32);
  if (v4 > 2)
  {
    if (v4 == 3)
    {
      v9 = 0;
      MEMORY[0x259C540A0](0x696C612D74786574, 0xEC000000203A6E67);
      goto LABEL_10;
    }

    if (v4 == 4)
    {
      MEMORY[0x259C540A0](0x2D746E6F66, 0xE500000000000000);
      sub_255F95830();
      return 0;
    }

    if (!v2)
    {
      return 0;
    }

    sub_255F957B0();

    v9 = 0xD000000000000016;
    v8 = sub_255F95470();
    MEMORY[0x259C540A0](v8);

LABEL_15:
    MEMORY[0x259C540A0](41, 0xE100000000000000);
    return v9;
  }

  if (!*(v0 + 32))
  {
    v6 = v0[3];
    sub_255F957B0();

    v9 = 0x3A64696C61766E69;
    MEMORY[0x259C540A0](v1, v2);
    MEMORY[0x259C540A0](8236, 0xE200000000000000);
    MEMORY[0x259C540A0](v3, v6);
    goto LABEL_15;
  }

  if (v4 != 1)
  {
    if ((v2 & 0x100000000) == 0)
    {
      sub_255F957B0();

      v9 = 0xD000000000000012;
      v7 = StyleSheet.Color.debugDescription.getter();
      MEMORY[0x259C540A0](v7);

      return v9;
    }

    return 0;
  }

  v9 = 0;
  MEMORY[0x259C540A0](0x203A726F6C6F63, 0xE700000000000000);
LABEL_10:
  sub_255F95830();
  return v9;
}

uint64_t StyleSheet.Rule.debugDescription.getter()
{
  if (v0[5])
  {
    return 0x656C75722040;
  }

  v2 = *v0;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81B5B0, &qword_255F96C98);
  sub_255F81E98();
  v3 = sub_255F95420();
  v5 = v4;

  MEMORY[0x259C540A0](2683, 0xE200000000000000);
  MEMORY[0x259C540A0](v3, v5);

  MEMORY[0x259C540A0](32010, 0xE200000000000000);
  return v2;
}

unint64_t sub_255F81B74@<X0>(unint64_t *a1@<X8>)
{
  result = StyleSheet.Rule.Declaration.debugDescription.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

BOOL sub_255F81BB8(void *a1)
{
  v1 = a1[1];
  v2 = *a1 & 0xFFFFFFFFFFFFLL;
  if ((v1 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(v1) & 0xF;
  }

  return v2 != 0;
}

uint64_t sub_255F81BD8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  MEMORY[0x259C540A0](*a1, a1[1]);
  result = MEMORY[0x259C540A0](59, 0xE100000000000000);
  *a2 = 2105376;
  a2[1] = 0xE300000000000000;
  return result;
}

uint64_t StyleSheet.debugDescription.getter()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  if (v2)
  {
    v17 = MEMORY[0x277D84F90];
    sub_255F82090(0, v2, 0);
    v3 = v1 + 40;
    do
    {
      if (*(v3 + 32))
      {
        v4 = 0xE600000000000000;
        v5 = 0x656C75722040;
      }

      else
      {
        v4 = *v3;
        v6 = *(v3 - 8);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81B5B0, &qword_255F96C98);
        sub_255F81E98();
        v7 = sub_255F95420();
        v9 = v8;

        MEMORY[0x259C540A0](2683, 0xE200000000000000);
        MEMORY[0x259C540A0](v7, v9);

        MEMORY[0x259C540A0](32010, 0xE200000000000000);
        v5 = v6;
      }

      v11 = *(v17 + 16);
      v10 = *(v17 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_255F82090((v10 > 1), v11 + 1, 1);
      }

      *(v17 + 16) = v11 + 1;
      v12 = v17 + 16 * v11;
      *(v12 + 32) = v5;
      *(v12 + 40) = v4;
      v3 += 48;
      --v2;
    }

    while (v2);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81B5A0, &qword_255F96EC0);
  sub_255F8203C(&qword_27F81B5A8, &qword_27F81B5A0, &qword_255F96EC0);
  v13 = sub_255F95420();
  v15 = v14;

  MEMORY[0x259C540A0](v13, v15);

  MEMORY[0x259C540A0](10, 0xE100000000000000);
  return 0;
}

unint64_t sub_255F81E98()
{
  result = qword_27F81B5B8;
  if (!qword_27F81B5B8)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F81B5B0, &qword_255F96C98);
    v4[0] = sub_255F81F1C();
    result = swift_getWitnessTable(MEMORY[0x277D842E8], v3, v4);
    atomic_store(result, &qword_27F81B5B8);
  }

  return result;
}

unint64_t sub_255F81F1C()
{
  result = qword_27F81B5C0;
  if (!qword_27F81B5C0)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F81B5C8, &qword_255F96CA0);
    v4[0] = sub_255F81FA0();
    result = swift_getWitnessTable(MEMORY[0x277D84410], v3, v4);
    atomic_store(result, &qword_27F81B5C0);
  }

  return result;
}

unint64_t sub_255F81FA0()
{
  result = qword_27F81B5D0;
  if (!qword_27F81B5D0)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F81B5D8, &qword_255F96CA8);
    v4[0] = sub_255F8203C(&qword_27F81B5E0, &qword_27F81B5E8, &qword_255F96CB0);
    result = swift_getWitnessTable(MEMORY[0x277D842E8], v3, v4);
    atomic_store(result, &qword_27F81B5D0);
  }

  return result;
}

uint64_t sub_255F8203C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    v5 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable(MEMORY[0x277D83958], v5);
    atomic_store(result, a1);
  }

  return result;
}

char *sub_255F82090(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_255F820B0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_255F820B0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81B540, &unk_255F99E40);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    v10 = MEMORY[0x277D84F90];
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

void sub_255F821D8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16) || !v2 || a1 == a2)
  {
    return;
  }

  v3 = 0;
  v4 = a1 + 32;
  v5 = a2 + 32;
  v121 = a1 + 32;
  v122 = *(a1 + 16);
  v120 = a2 + 32;
  while (1)
  {
    v6 = v4 + 48 * v3;
    v8 = *v6;
    v7 = *(v6 + 8);
    v10 = *(v6 + 16);
    v9 = *(v6 + 24);
    v11 = *(v6 + 32);
    LOBYTE(v6) = *(v6 + 40);
    v12 = v5 + 48 * v3;
    v14 = *v12;
    v13 = *(v12 + 8);
    v15 = *(v12 + 16);
    v16 = *(v12 + 24);
    v17 = *(v12 + 32);
    v18 = *(v12 + 40);
    v148[0] = v8;
    v148[1] = v7;
    v148[2] = v10;
    v148[3] = v9;
    v135 = v9;
    v136 = v17;
    v148[4] = v11;
    v149 = v6;
    v150 = v14;
    v151 = v13;
    v152 = v15;
    v153 = v16;
    v154 = v17;
    v155 = v18;
    v137 = v15;
    if ((v6 & 1) == 0)
    {
      break;
    }

    if ((v18 & 1) == 0)
    {
      v106 = v14;
      v107 = v13;
      v108 = 0;
LABEL_52:
      sub_255F8ECE8(v106, v107, v15, v16, v17, v108);
      v112 = v8;
      v113 = v7;
      v114 = v10;
      v115 = v135;
      v116 = v11;
      v117 = 1;
LABEL_55:
      sub_255F8ECE8(v112, v113, v114, v115, v116, v117);
      sub_255F815B4(v148, &qword_27F81B888, &qword_255F99230);
      return;
    }

    v132 = v8;
    if ((v8 != v14 || v7 != v13) && (v19 = v16, v20 = v10, v21 = v7, v22 = v11, v23 = v5, v24 = v4, v25 = v14, v26 = v13, v27 = sub_255F95990(), v13 = v26, v14 = v25, v4 = v24, v5 = v23, v11 = v22, v7 = v21, v10 = v20, v8 = v132, v17 = v136, v15 = v137, v16 = v19, (v27 & 1) == 0) || (v10 != v15 || v135 != v16) && (v28 = v16, v29 = v10, v30 = v7, v31 = v11, v32 = v5, v33 = v4, v34 = v14, v35 = v13, v36 = sub_255F95990(), v13 = v35, v14 = v34, v4 = v33, v5 = v32, v11 = v31, v7 = v30, v10 = v29, v8 = v132, v17 = v136, v15 = v137, v16 = v28, (v36 & 1) == 0) || (v37 = *(v11 + 16), v37 != *(v17 + 16)))
    {
      v106 = v14;
      v107 = v13;
      v108 = 1;
      goto LABEL_52;
    }

    if (v37)
    {
      if (v11 != v17)
      {
        v123 = v3;
        v82 = v16;
        v83 = v15;
        v84 = v13;
        sub_255F8ECE8(v14, v13, v15, v16, v17, 1);
        sub_255F8ECE8(v8, v7, v10, v135, v11, 1);
        v125 = v14;
        v127 = v84;
        v129 = v82;
        sub_255F8ECE8(v14, v84, v83, v82, v136, 1);
        v131 = v7;
        v119 = v10;
        sub_255F8ECE8(v8, v7, v10, v135, v11, 1);
        v85 = v136;
        v86 = 0;
        v87 = (v136 + 64);
        v88 = v11;
        v89 = (v11 + 64);
        while (v86 < *(v88 + 16))
        {
          v90 = *(v89 - 4);
          v91 = *(v89 - 3);
          v92 = *(v89 - 2);
          v93 = *(v89 - 1);
          v94 = *v89;
          v143 = v90;
          v144 = v91;
          v145 = v92;
          v146 = v93;
          v147 = v94;
          if (v86 >= *(v85 + 16))
          {
            goto LABEL_60;
          }

          v96 = *(v87 - 3);
          v97 = *(v87 - 2);
          v98 = *(v87 - 1);
          v138 = *(v87 - 4);
          v95 = v138;
          v139 = v96;
          v140 = v97;
          v141 = v98;
          v142 = *v87;
          v99 = v142;
          sub_255F8EDA4(v90, v91, v92, v93, v94);
          sub_255F8EDA4(v95, v96, v97, v98, v99);
          LOBYTE(v95) = _s33LinkPresentationStyleSheetParsing0cD0V4RuleO11DeclarationO2eeoiySbAG_AGtFZ_0(&v143, &v138);
          sub_255F7A658(v138, v139, v140, v141, v142);
          sub_255F7A658(v143, v144, v145, v146, v147);
          if ((v95 & 1) == 0)
          {
            sub_255F815B4(v148, &qword_27F81B888, &qword_255F99230);
            sub_255F8ED44(v125, v127, v137, v129, v136, 1);
            v101 = v131;
            v100 = v132;
            v102 = v119;
            v103 = v135;
            v104 = v88;
            v105 = 1;
            goto LABEL_48;
          }

          ++v86;
          v87 += 40;
          v89 += 40;
          v85 = v136;
          if (v37 == v86)
          {
            sub_255F815B4(v148, &qword_27F81B888, &qword_255F99230);
            sub_255F8ED44(v125, v127, v137, v129, v136, 1);
            v77 = v131;
            v76 = v132;
            v78 = v119;
            v79 = v135;
            v80 = v88;
            v81 = 1;
            goto LABEL_44;
          }
        }

LABEL_59:
        __break(1u);
LABEL_60:
        __break(1u);
        return;
      }

      v38 = v14;
      v39 = v13;
      v17 = v11;
    }

    else
    {
      v38 = v14;
      v39 = v13;
    }

    sub_255F8ECE8(v38, v39, v15, v16, v17, 1);
    v52 = v8;
    v53 = v7;
    v54 = v10;
    v55 = v135;
    v56 = v11;
    v57 = 1;
LABEL_29:
    sub_255F8ECE8(v52, v53, v54, v55, v56, v57);
    sub_255F815B4(v148, &qword_27F81B888, &qword_255F99230);
LABEL_30:
    if (++v3 == v2)
    {
      return;
    }
  }

  if (v18)
  {
    v109 = v14;
    v110 = v13;
    v111 = 1;
LABEL_54:
    sub_255F8ECE8(v109, v110, v15, v16, v17, v111);
    v112 = v8;
    v113 = v7;
    v114 = v10;
    v115 = v135;
    v116 = v11;
    v117 = 0;
    goto LABEL_55;
  }

  if ((v8 != v14 || v7 != v13) && (v40 = v16, v133 = v8, v41 = v10, v42 = v7, v43 = v11, v44 = v5, v45 = v4, v46 = v14, v47 = v13, v48 = sub_255F95990(), v13 = v47, v14 = v46, v4 = v45, v5 = v44, v11 = v43, v7 = v42, v10 = v41, v8 = v133, v17 = v136, v15 = v137, v16 = v40, (v48 & 1) == 0) || (v49 = *(v10 + 16), v49 != *(v15 + 16)))
  {
    v109 = v14;
    v110 = v13;
    v111 = 0;
    goto LABEL_54;
  }

  if (!v49)
  {
    v50 = v14;
    v51 = v13;
    goto LABEL_26;
  }

  if (v10 == v15)
  {
    v50 = v14;
    v51 = v13;
    v15 = v10;
LABEL_26:
    sub_255F8ECE8(v50, v51, v15, v16, v17, 0);
    v52 = v8;
    v53 = v7;
    v54 = v10;
    v55 = v135;
    v56 = v11;
    v57 = 0;
    goto LABEL_29;
  }

  v123 = v3;
  v58 = v16;
  v59 = v17;
  v60 = v13;
  sub_255F8ECE8(v14, v13, v15, v16, v17, 0);
  sub_255F8ECE8(v8, v7, v10, v135, v11, 0);
  v124 = v14;
  v126 = v60;
  v128 = v58;
  sub_255F8ECE8(v14, v60, v137, v58, v59, 0);
  v130 = v7;
  v134 = v8;
  v118 = v11;
  sub_255F8ECE8(v8, v7, v10, v135, v11, 0);
  v61 = v137;
  v62 = 0;
  v63 = (v137 + 64);
  v64 = v10;
  v65 = (v10 + 64);
  while (1)
  {
    if (v62 >= *(v64 + 16))
    {
      __break(1u);
LABEL_58:
      __break(1u);
      goto LABEL_59;
    }

    v66 = *(v65 - 4);
    v67 = *(v65 - 3);
    v68 = *(v65 - 2);
    v69 = *(v65 - 1);
    v70 = *v65;
    v143 = v66;
    v144 = v67;
    v145 = v68;
    v146 = v69;
    v147 = v70;
    if (v62 >= *(v61 + 16))
    {
      goto LABEL_58;
    }

    v72 = *(v63 - 3);
    v74 = *(v63 - 2);
    v73 = *(v63 - 1);
    v138 = *(v63 - 4);
    v71 = v138;
    v139 = v72;
    v140 = v74;
    v141 = v73;
    v142 = *v63;
    v75 = v142;
    sub_255F8EDA4(v66, v67, v68, v69, v70);
    sub_255F8EDA4(v71, v72, v74, v73, v75);
    LOBYTE(v71) = _s33LinkPresentationStyleSheetParsing0cD0V4RuleO11DeclarationO2eeoiySbAG_AGtFZ_0(&v143, &v138);
    sub_255F7A658(v138, v139, v140, v141, v142);
    sub_255F7A658(v143, v144, v145, v146, v147);
    if ((v71 & 1) == 0)
    {
      break;
    }

    ++v62;
    v63 += 40;
    v65 += 40;
    v61 = v137;
    if (v49 == v62)
    {
      sub_255F815B4(v148, &qword_27F81B888, &qword_255F99230);
      sub_255F8ED44(v124, v126, v137, v128, v136, 0);
      v77 = v130;
      v76 = v134;
      v78 = v64;
      v79 = v135;
      v80 = v118;
      v81 = 0;
LABEL_44:
      sub_255F8ED44(v76, v77, v78, v79, v80, v81);
      v2 = v122;
      v3 = v123;
      v5 = v120;
      v4 = v121;
      goto LABEL_30;
    }
  }

  sub_255F815B4(v148, &qword_27F81B888, &qword_255F99230);
  sub_255F8ED44(v124, v126, v137, v128, v136, 0);
  v101 = v130;
  v100 = v134;
  v102 = v64;
  v103 = v135;
  v104 = v118;
  v105 = 0;
LABEL_48:
  sub_255F8ED44(v100, v101, v102, v103, v104, v105);
}

uint64_t sub_255F82958(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      v14 = 1;
    }

    else
    {
      v3 = (a2 + 64);
      v4 = (a1 + 64);
      do
      {
        v5 = *(v4 - 3);
        v6 = *(v4 - 2);
        v7 = *(v4 - 1);
        v8 = *v4;
        v21 = *(v4 - 4);
        v22 = v5;
        v23 = v6;
        v24 = v7;
        v25 = v8;
        v10 = *(v3 - 3);
        v11 = *(v3 - 2);
        v12 = *(v3 - 1);
        v16 = *(v3 - 4);
        v9 = v16;
        v17 = v10;
        v18 = v11;
        v19 = v12;
        v20 = *v3;
        v13 = v20;
        sub_255F8EDA4(v21, v5, v6, v7, v8);
        sub_255F8EDA4(v9, v10, v11, v12, v13);
        v14 = _s33LinkPresentationStyleSheetParsing0cD0V4RuleO11DeclarationO2eeoiySbAG_AGtFZ_0(&v21, &v16);
        sub_255F7A658(v16, v17, v18, v19, v20);
        sub_255F7A658(v21, v22, v23, v24, v25);
        if ((v14 & 1) == 0)
        {
          break;
        }

        v4 += 40;
        v3 += 40;
        --v2;
      }

      while (v2);
    }
  }

  else
  {
    v14 = 0;
  }

  return v14 & 1;
}

uint64_t sub_255F82A6C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_255F95990() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_255F82B40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x73656C7572 && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_255F95990();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_255F82BD0(uint64_t a1)
{
  v2 = sub_255F82DEC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255F82C0C(uint64_t a1)
{
  v2 = sub_255F82DEC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t StyleSheet.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81B5F0, &qword_255F96DE0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v9 - v5;
  v7 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255F82DEC();

  sub_255F95A20();
  v9[1] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81B5F8, &qword_255F96DE8);
  sub_255F83044(&qword_27F81B600, sub_255F82E40, MEMORY[0x277D83948]);
  sub_255F95950();

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_255F82DEC()
{
  result = qword_27F81C110;
  if (!qword_27F81C110)
  {
    result = swift_getWitnessTable(aU_4, &type metadata for StyleSheet.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F81C110);
  }

  return result;
}

unint64_t sub_255F82E40()
{
  result = qword_27F81B608;
  if (!qword_27F81B608)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for StyleSheet.Rule, &type metadata for StyleSheet.Rule, v0, v1);
    atomic_store(result, &qword_27F81B608);
  }

  return result;
}

uint64_t StyleSheet.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81B610, &qword_255F96DF0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255F82DEC();
  sub_255F95A10();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81B5F8, &qword_255F96DE8);
    sub_255F83044(&qword_27F81B618, sub_255F830BC, MEMORY[0x277D83978]);
    sub_255F958D0();
    (*(v6 + 8))(v8, v5);
    *a2 = v10[1];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_255F83044(unint64_t *a1, uint64_t (*a2)(void), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F81B5F8, &qword_255F96DE8);
    v8 = a2();
    result = swift_getWitnessTable(a3, v7, &v8);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_255F830BC()
{
  result = qword_27F81B620;
  if (!qword_27F81B620)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for StyleSheet.Rule, &type metadata for StyleSheet.Rule, v0, v1);
    atomic_store(result, &qword_27F81B620);
  }

  return result;
}

uint64_t sub_255F83188(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE700000000000000;
  v4 = 0x2D6567617373656DLL;
  v5 = 0xEB00000000786F62;
  v6 = 0x61632D6C6C616D73;
  v7 = 0xED00006E6F697470;
  if (a1 != 4)
  {
    v6 = 0x622D737574617473;
    v7 = 0xEA00000000007261;
  }

  if (a1 != 3)
  {
    v4 = v6;
    v5 = v7;
  }

  v8 = 1852793705;
  if (a1 != 1)
  {
    v8 = 1970169197;
  }

  if (a1)
  {
    v3 = 0xE400000000000000;
  }

  else
  {
    v8 = 0x6E6F6974706163;
  }

  if (a1 <= 2u)
  {
    v9 = v8;
  }

  else
  {
    v9 = v4;
  }

  if (v2 <= 2)
  {
    v10 = v3;
  }

  else
  {
    v10 = v5;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v11 = 0xEB00000000786F62;
      if (v9 != 0x2D6567617373656DLL)
      {
        goto LABEL_34;
      }
    }

    else if (a2 == 4)
    {
      v11 = 0xED00006E6F697470;
      if (v9 != 0x61632D6C6C616D73)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v11 = 0xEA00000000007261;
      if (v9 != 0x622D737574617473)
      {
LABEL_34:
        v12 = sub_255F95990();
        goto LABEL_35;
      }
    }
  }

  else if (a2)
  {
    v11 = 0xE400000000000000;
    if (a2 == 1)
    {
      if (v9 != 1852793705)
      {
        goto LABEL_34;
      }
    }

    else if (v9 != 1970169197)
    {
      goto LABEL_34;
    }
  }

  else
  {
    v11 = 0xE700000000000000;
    if (v9 != 0x6E6F6974706163)
    {
      goto LABEL_34;
    }
  }

  if (v10 != v11)
  {
    goto LABEL_34;
  }

  v12 = 1;
LABEL_35:

  return v12 & 1;
}

uint64_t sub_255F8337C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v3 = 28005;
    }

    else
    {
      v3 = 30821;
    }

    v4 = 0xE200000000000000;
  }

  else
  {
    if (a1)
    {
      v3 = 30832;
    }

    else
    {
      v3 = 37;
    }

    if (v2)
    {
      v4 = 0xE200000000000000;
    }

    else
    {
      v4 = 0xE100000000000000;
    }
  }

  v5 = 0xE100000000000000;
  v6 = 37;
  v7 = 28005;
  if (a2 != 2)
  {
    v7 = 30821;
  }

  if (a2)
  {
    v6 = 30832;
    v5 = 0xE200000000000000;
  }

  if (a2 <= 1u)
  {
    v8 = v6;
  }

  else
  {
    v8 = v7;
  }

  if (a2 <= 1u)
  {
    v9 = v5;
  }

  else
  {
    v9 = 0xE200000000000000;
  }

  if (v3 == v8 && v4 == v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_255F95990();
  }

  return v10 & 1;
}

uint64_t sub_255F8346C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE800000000000000;
  v4 = 0xE700000000000000;
  v5 = 0x656772616C2D78;
  if (a1 != 5)
  {
    v5 = 0x656772616C2D7878;
    v4 = 0xE800000000000000;
  }

  v6 = 0xE600000000000000;
  v7 = 0x6D756964656DLL;
  if (a1 != 3)
  {
    v7 = 0x656772616CLL;
    v6 = 0xE500000000000000;
  }

  if (a1 <= 4u)
  {
    v5 = v7;
    v4 = v6;
  }

  v8 = 0xE700000000000000;
  v9 = 0x6C6C616D732D78;
  if (a1 != 1)
  {
    v9 = 0x6C6C616D73;
    v8 = 0xE500000000000000;
  }

  if (a1)
  {
    v3 = v8;
  }

  else
  {
    v9 = 0x6C6C616D732D7878;
  }

  if (a1 <= 2u)
  {
    v10 = v9;
  }

  else
  {
    v10 = v5;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v4;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v12 = 0xE700000000000000;
        if (v10 != 0x6C6C616D732D78)
        {
          goto LABEL_39;
        }
      }

      else
      {
        v12 = 0xE500000000000000;
        if (v10 != 0x6C6C616D73)
        {
          goto LABEL_39;
        }
      }
    }

    else
    {
      v12 = 0xE800000000000000;
      if (v10 != 0x6C6C616D732D7878)
      {
        goto LABEL_39;
      }
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v12 = 0xE700000000000000;
      if (v10 != 0x656772616C2D78)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = 0xE800000000000000;
      if (v10 != 0x656772616C2D7878)
      {
LABEL_39:
        v13 = sub_255F95990();
        goto LABEL_40;
      }
    }
  }

  else if (a2 == 3)
  {
    v12 = 0xE600000000000000;
    if (v10 != 0x6D756964656DLL)
    {
      goto LABEL_39;
    }
  }

  else
  {
    v12 = 0xE500000000000000;
    if (v10 != 0x656772616CLL)
    {
      goto LABEL_39;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_39;
  }

  v13 = 1;
LABEL_40:

  return v13 & 1;
}

uint64_t sub_255F83690(uint64_t a1)
{
  v2 = sub_255F8B11C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255F836CC(uint64_t a1)
{
  v2 = sub_255F8B11C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_255F83708(uint64_t a1)
{
  v2 = sub_255F8AF78();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255F83744(uint64_t a1)
{
  v2 = sub_255F8AF78();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_255F83780()
{
  v1 = *v0;
  v2 = 0x64696C61766E69;
  v3 = 0x67696C4174786574;
  v4 = 1953394534;
  if (v1 != 4)
  {
    v4 = 0x756F72676B636162;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x726F6C6F63;
  if (v1 != 1)
  {
    v5 = 0x756F72676B636162;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_255F8383C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_255F8E6FC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_255F83870(uint64_t a1)
{
  v2 = sub_255F8AF24();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255F838AC(uint64_t a1)
{
  v2 = sub_255F8AF24();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_255F838E8(uint64_t a1)
{
  v2 = sub_255F8B1C4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255F83924(uint64_t a1)
{
  v2 = sub_255F8B1C4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_255F83960(uint64_t a1)
{
  v2 = sub_255F8AFCC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255F8399C(uint64_t a1)
{
  v2 = sub_255F8AFCC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_255F839D8()
{
  if (*v0)
  {
    return 0x65756C6176;
  }

  else
  {
    return 0x79747265706F7270;
  }
}

uint64_t sub_255F83A10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x79747265706F7270 && a2 == 0xE800000000000000;
  if (v6 || (sub_255F95990() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_255F95990();

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

uint64_t sub_255F83AE8(uint64_t a1)
{
  v2 = sub_255F8B218();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255F83B24(uint64_t a1)
{
  v2 = sub_255F8B218();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_255F83B60(uint64_t a1)
{
  v2 = sub_255F8B074();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255F83B9C(uint64_t a1)
{
  v2 = sub_255F8B074();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t StyleSheet.Rule.Declaration.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81B628, &qword_255F96DF8);
  v49 = *(v3 - 8);
  v50 = v3;
  MEMORY[0x28223BE20](v3);
  v47 = &v36 - v4;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81B630, &qword_255F96E00);
  v46 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v45 = &v36 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81B638, &qword_255F96E08);
  v43 = *(v6 - 8);
  v44 = v6;
  MEMORY[0x28223BE20](v6);
  v42 = &v36 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81B640, &qword_255F96E10);
  v40 = *(v8 - 8);
  v41 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v36 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81B648, &qword_255F96E18);
  v38 = *(v11 - 8);
  v39 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v36 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81B650, &qword_255F96E20);
  v37 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v36 - v15;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81B658, &qword_255F96E28);
  v55 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v17 = *v1;
  v52 = *(v1 + 8);
  v53 = v17;
  v18 = *(v1 + 24);
  v51 = *(v1 + 16);
  v36 = v18;
  v19 = *(v1 + 32);
  v20 = a1[3];
  v21 = a1;
  v23 = &v36 - v22;
  __swift_project_boxed_opaque_existential_1(v21, v20);
  sub_255F8AF24();
  sub_255F95A20();
  if (v19 > 2)
  {
    if (v19 == 3)
    {
      LOBYTE(v56) = 3;
      sub_255F8B074();
      v30 = v42;
      v29 = v59;
      sub_255F95900();
      LOBYTE(v56) = v53;
      sub_255F8B0C8();
      v31 = v44;
      sub_255F95950();
      v32 = v43;
    }

    else
    {
      v29 = v59;
      if (v19 == 4)
      {
        LOBYTE(v56) = 4;
        sub_255F8AFCC();
        v30 = v45;
        sub_255F95900();
        v56 = v53;
        v57 = v52;
        v58 = v51;
        sub_255F8B020();
        v31 = v48;
        sub_255F95950();
        v32 = v46;
      }

      else
      {
        LOBYTE(v56) = 5;
        sub_255F8AF78();
        v30 = v47;
        sub_255F95900();
        v31 = v50;
        sub_255F95910();
        v32 = v49;
      }
    }

    v34 = *(v32 + 8);
    v35 = v30;
  }

  else
  {
    if (!v19)
    {
      LOBYTE(v56) = 0;
      sub_255F8B218();
      v29 = v59;
      sub_255F95900();
      LOBYTE(v56) = 0;
      v33 = v54;
      sub_255F95930();
      if (!v33)
      {
        LOBYTE(v56) = 1;
        sub_255F95930();
      }

      (*(v37 + 8))(v16, v14);
      return (*(v55 + 8))(v23, v29);
    }

    if (v19 == 1)
    {
      v24 = v53;
      v25 = HIDWORD(v53);
      LOBYTE(v56) = 1;
      sub_255F8B1C4();
      v26 = v59;
      sub_255F95900();
      v56 = __PAIR64__(v25, v24);
      LODWORD(v57) = v52;
      sub_255F8B170();
      v27 = v39;
      sub_255F95950();
      (*(v38 + 8))(v13, v27);
      return (*(v55 + 8))(v23, v26);
    }

    LOBYTE(v56) = 2;
    sub_255F8B11C();
    v29 = v59;
    sub_255F95900();
    v56 = v53;
    LODWORD(v57) = v52;
    BYTE4(v57) = BYTE4(v52) & 1;
    sub_255F8B170();
    v31 = v41;
    sub_255F95920();
    v34 = *(v40 + 8);
    v35 = v10;
  }

  v34(v35, v31);
  return (*(v55 + 8))(v23, v29);
}

uint64_t StyleSheet.Rule.Declaration.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v82 = a2;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81B678, &qword_255F96E30);
  v76 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v79 = &v64 - v3;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81B680, &qword_255F96E38);
  v77 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v78 = &v64 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81B688, &qword_255F96E40);
  v6 = *(v5 - 8);
  v73 = v5;
  v74 = v6;
  MEMORY[0x28223BE20](v5);
  v81 = &v64 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81B690, &qword_255F96E48);
  v71 = *(v8 - 8);
  v72 = v8;
  MEMORY[0x28223BE20](v8);
  v80 = &v64 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81B698, &qword_255F96E50);
  v68 = *(v10 - 8);
  v69 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v64 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81B6A0, &qword_255F96E58);
  v67 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v64 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81B6A8, &qword_255F96E60);
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v64 - v18;
  v20 = a1[3];
  v87 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v20);
  sub_255F8AF24();
  v21 = v83;
  sub_255F95A10();
  v22 = v21;
  if (v21)
  {
    return __swift_destroy_boxed_opaque_existential_1(v87);
  }

  v23 = v12;
  v65 = v13;
  v25 = v80;
  v24 = v81;
  v66 = v17;
  v26 = v82;
  v83 = v16;
  v27 = sub_255F958F0();
  if (*(v27 + 16) != 1 || (v28 = *(v27 + 32), v28 == 6))
  {
    v31 = sub_255F957D0();
    swift_allocError();
    v33 = v32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81B6B0, &qword_255F96E68);
    *v33 = &type metadata for StyleSheet.Rule.Declaration;
    v34 = v19;
    v35 = v83;
    sub_255F95880();
    sub_255F957C0();
    (*(*(v31 - 8) + 104))(v33, *MEMORY[0x277D84160], v31);
    swift_willThrow();
    (*(v66 + 8))(v34, v35);
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1(v87);
  }

  v64 = v27;
  if (v28 > 2)
  {
    if (v28 == 3)
    {
      LOBYTE(v84) = 3;
      sub_255F8B074();
      v42 = v83;
      sub_255F95870();
      sub_255F8B2C0();
      v48 = v73;
      sub_255F958D0();
      v49 = v66;
      v67 = 0;
      (*(v74 + 8))(v24, v48);
      (*(v49 + 8))(v19, v42);
      swift_unknownObjectRelease();
      v61 = 0;
      v59 = 0;
      v60 = v84;
    }

    else
    {
      v36 = v83;
      if (v28 == 4)
      {
        LOBYTE(v84) = 4;
        sub_255F8AFCC();
        v37 = v78;
        sub_255F95870();
        sub_255F8B26C();
        v38 = v75;
        sub_255F958D0();
        v67 = 0;
        (*(v77 + 8))(v37, v38);
        (*(v66 + 8))(v19, v36);
        swift_unknownObjectRelease();
        v59 = 0;
        v60 = v84;
        v61 = v85;
        v22 = v86;
      }

      else
      {
        LOBYTE(v84) = 5;
        sub_255F8AF78();
        v44 = v79;
        sub_255F95870();
        v45 = v70;
        v46 = sub_255F95890();
        v22 = 0;
        v61 = v57;
        v67 = 0;
        v58 = v46;
        (*(v76 + 8))(v44, v45);
        (*(v66 + 8))(v19, v36);
        swift_unknownObjectRelease();
        v60 = v58;
        v59 = 0;
      }

      v26 = v82;
    }
  }

  else if (v28)
  {
    if (v28 == 1)
    {
      LOBYTE(v84) = 1;
      sub_255F8B1C4();
      v29 = v19;
      v30 = v83;
      sub_255F95870();
      sub_255F8B314();
      v50 = v69;
      sub_255F958D0();
      v67 = 0;
      (*(v68 + 8))(v23, v50);
      (*(v66 + 8))(v29, v30);
      swift_unknownObjectRelease();
      v59 = 0;
      v60 = v84;
      v61 = v85;
    }

    else
    {
      LOBYTE(v84) = 2;
      sub_255F8B11C();
      v43 = v83;
      sub_255F95870();
      sub_255F8B314();
      v51 = v72;
      sub_255F958A0();
      v52 = v66;
      v67 = 0;
      (*(v71 + 8))(v25, v51);
      (*(v52 + 8))(v19, v43);
      swift_unknownObjectRelease();
      v59 = 0;
      v60 = v84;
      v62 = 0x100000000;
      if (!BYTE4(v85))
      {
        v62 = 0;
      }

      v61 = v62 | v85;
    }
  }

  else
  {
    LOBYTE(v84) = 0;
    sub_255F8B218();
    v39 = v15;
    sub_255F95870();
    LOBYTE(v84) = 0;
    v40 = v65;
    v41 = sub_255F958B0();
    v61 = v53;
    v80 = v41;
    v81 = v19;
    LOBYTE(v84) = 1;
    v54 = sub_255F958B0();
    v55 = (v67 + 8);
    v56 = (v66 + 8);
    v67 = 0;
    v22 = v54;
    v59 = v63;
    (*v55)(v39, v40);
    (*v56)(v81, v83);
    swift_unknownObjectRelease();
    v60 = v80;
  }

  *v26 = v60;
  *(v26 + 8) = v61;
  *(v26 + 16) = v22;
  *(v26 + 24) = v59;
  *(v26 + 32) = v28;
  return __swift_destroy_boxed_opaque_existential_1(v87);
}

uint64_t sub_255F84FE4()
{
  v1 = 0x6564756C657270;
  if (*v0 != 1)
  {
    v1 = 0x746172616C636564;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x696669746E656469;
  }
}

uint64_t sub_255F8504C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_255F8E90C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_255F85080(uint64_t a1)
{
  v2 = sub_255F8B718();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255F850BC(uint64_t a1)
{
  v2 = sub_255F8B718();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_255F850F8()
{
  if (*v0)
  {
    return 0x726F7779654B7461;
  }

  else
  {
    return 0x656966696C617571;
  }
}

uint64_t sub_255F85130@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x656966696C617571 && a2 == 0xE900000000000064;
  if (v6 || (sub_255F95990() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x726F7779654B7461 && a2 == 0xE900000000000064)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_255F95990();

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

uint64_t sub_255F85214(uint64_t a1)
{
  v2 = sub_255F8B6C4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255F85250(uint64_t a1)
{
  v2 = sub_255F8B6C4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_255F8528C()
{
  if (*v0)
  {
    return 0x746172616C636564;
  }

  else
  {
    return 0x726F7463656C6573;
  }
}

uint64_t sub_255F852D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x726F7463656C6573 && a2 == 0xE800000000000000;
  if (v6 || (sub_255F95990() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x746172616C636564 && a2 == 0xEC000000736E6F69)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_255F95990();

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

uint64_t sub_255F853B0(uint64_t a1)
{
  v2 = sub_255F8B838();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255F853EC(uint64_t a1)
{
  v2 = sub_255F8B838();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t StyleSheet.Rule.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81B6D0, &qword_255F96E70);
  v24 = *(v3 - 8);
  v25 = v3;
  MEMORY[0x28223BE20](v3);
  v23 = v19 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81B6D8, &qword_255F96E78);
  v21 = *(v5 - 8);
  v22 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = v19 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81B6E0, &unk_255F96E80);
  v28 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = v19 - v9;
  v26 = *v1;
  v11 = v1[2];
  v19[1] = v1[3];
  v20 = v11;
  v19[0] = v1[4];
  v12 = *(v1 + 40);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255F8B6C4();
  sub_255F95A20();
  if (v12)
  {
    LOBYTE(v30) = 1;
    sub_255F8B718();
    v13 = v23;
    sub_255F95900();
    LOBYTE(v30) = 0;
    v14 = v25;
    v15 = v27;
    sub_255F95930();
    if (!v15)
    {
      LOBYTE(v30) = 1;
      sub_255F95930();
      v30 = v19[0];
      v29 = 2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81B5E8, &qword_255F96CB0);
      sub_255F8B76C(&qword_27F81B6E8, sub_255F8B7E4, MEMORY[0x277D83948]);
      sub_255F95950();
    }

    (*(v24 + 8))(v13, v14);
  }

  else
  {
    LOBYTE(v30) = 0;
    sub_255F8B838();
    sub_255F95900();
    LOBYTE(v30) = 0;
    v16 = v27;
    v17 = v22;
    sub_255F95930();
    if (!v16)
    {
      v30 = v20;
      v29 = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81B5E8, &qword_255F96CB0);
      sub_255F8B76C(&qword_27F81B6E8, sub_255F8B7E4, MEMORY[0x277D83948]);
      sub_255F95950();
    }

    (*(v21 + 8))(v7, v17);
  }

  return (*(v28 + 8))(v10, v8);
}

uint64_t StyleSheet.Rule.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v40 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81B6F8, &qword_255F96E90);
  v42 = *(v3 - 8);
  v43 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v37 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81B700, &qword_255F96E98);
  v41 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v37 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81B708, &qword_255F96EA0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v37 - v11;
  v13 = a1[3];
  v45 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_255F8B6C4();
  v14 = v44;
  sub_255F95A10();
  if (!v14)
  {
    v39 = v6;
    v15 = v43;
    v16 = sub_255F958F0();
    if (*(v16 + 16) == 1)
    {
      v44 = v12;
      v17 = *(v16 + 32);
      if (v17)
      {
        v38 = *(v16 + 32);
        LOBYTE(v47) = 1;
        sub_255F8B718();
        sub_255F95870();
        LOBYTE(v47) = 0;
        v18 = v15;
        v19 = sub_255F958B0();
        v21 = v20;
        v37 = v19;
        LOBYTE(v47) = 1;
        v22 = sub_255F958B0();
        v31 = v30;
        v41 = v21;
        v32 = v22;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81B5E8, &qword_255F96CB0);
        v46 = 2;
        sub_255F8B76C(&qword_27F81B710, sub_255F8B88C, MEMORY[0x277D83978]);
        sub_255F958D0();
        v33 = v31;
        (*(v42 + 8))(v5, v18);
        (*(v10 + 8))(v44, v9);
        swift_unknownObjectRelease();
        v34 = v47;
        v35 = v41;
      }

      else
      {
        LOBYTE(v47) = 0;
        sub_255F8B838();
        v27 = v8;
        sub_255F95870();
        LOBYTE(v47) = 0;
        v28 = v39;
        v37 = sub_255F958B0();
        v35 = v29;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81B5E8, &qword_255F96CB0);
        v46 = 1;
        sub_255F8B76C(&qword_27F81B710, sub_255F8B88C, MEMORY[0x277D83978]);
        sub_255F958D0();
        v38 = v17;
        (*(v41 + 8))(v27, v28);
        (*(v10 + 8))(v44, v9);
        swift_unknownObjectRelease();
        v33 = 0;
        v34 = 0;
        v32 = v47;
      }

      v36 = v40;
      *v40 = v37;
      v36[1] = v35;
      v36[2] = v32;
      v36[3] = v33;
      v36[4] = v34;
      *(v36 + 40) = v38;
    }

    else
    {
      v23 = sub_255F957D0();
      swift_allocError();
      v25 = v24;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81B6B0, &qword_255F96E68);
      *v25 = &type metadata for StyleSheet.Rule;
      sub_255F95880();
      sub_255F957C0();
      (*(*(v23 - 8) + 104))(v25, *MEMORY[0x277D84160], v23);
      swift_willThrow();
      (*(v10 + 8))(v12, v9);
      swift_unknownObjectRelease();
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v45);
}

LinkPresentationStyleSheetParsing::StyleSheet __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> StyleSheet.init(css:)(Swift::String css)
{
  object = css._object;
  countAndFlagsBits = css._countAndFlagsBits;
  v5 = v1;
  v6 = type metadata accessor for Tokenizer();
  v10 = Tokenizer.__allocating_init(source:)(countAndFlagsBits, object);

  TokenParser.init<A>(using:)(&v10, v6, &protocol witness table for Tokenizer, v9);
  v7 = TokenParser.parse()();
  sub_255F79B84(v9);

  if (!v2)
  {
    *v5 = v7;
  }

  return result;
}

uint64_t StyleSheet.Color.init(red:green:blue:)@<X0>(uint64_t result@<X0>, int a2@<W1>, int a3@<W2>, _DWORD *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

int8x8_t StyleSheet.Color.init(value:)@<D0>(unsigned int a1@<W0>, int8x8_t *a2@<X8>)
{
  result = vand_s8(vshl_u32(vdup_n_s32(a1), 0xFFFFFFF8FFFFFFF0), 0xFF000000FFLL);
  *a2 = result;
  a2[1].i32[0] = a1;
  return result;
}

uint64_t sub_255F8606C()
{
  v1 = 0x6E65657267;
  if (*v0 != 1)
  {
    v1 = 1702194274;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 6579570;
  }
}

uint64_t sub_255F860B4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_255F8EA30(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_255F860DC(uint64_t a1)
{
  v2 = sub_255F8B8E0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255F86118(uint64_t a1)
{
  v2 = sub_255F8B8E0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t StyleSheet.Color.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81B720, &qword_255F96EA8);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v9 - v6;
  v9[6] = *(v1 + 4);
  v9[3] = *(v1 + 8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255F8B8E0();
  sub_255F95A20();
  v12 = 0;
  sub_255F95960();
  if (v2)
  {
    return (*(v5 + 8))(v7, v4);
  }

  v11 = 1;
  sub_255F95960();
  v10 = 2;
  sub_255F95960();
  return (*(v5 + 8))(v7, v4);
}

uint64_t StyleSheet.Color.init(from:)@<X0>(void *a1@<X0>, _DWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81B728, &qword_255F96EB0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255F8B8E0();
  sub_255F95A10();
  if (!v2)
  {
    v17 = 0;
    v9 = sub_255F958E0();
    v16 = 1;
    v14 = sub_255F958E0();
    v15 = 2;
    v11 = sub_255F958E0();
    (*(v6 + 8))(v8, v5);
    v12 = v14;
    *a2 = v9;
    a2[1] = v12;
    a2[2] = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

LinkPresentationStyleSheetParsing::StyleSheet::TextAlign_optional __swiftcall StyleSheet.TextAlign.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_255F95860();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t StyleSheet.TextAlign.rawValue.getter()
{
  v1 = 0x7265746E6563;
  if (*v0 != 1)
  {
    v1 = 0x7468676972;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1952867692;
  }
}

uint64_t sub_255F865DC()
{
  sub_255F959E0();
  sub_255F954D0();

  return sub_255F95A00();
}

uint64_t sub_255F86670(unsigned __int8 a1)
{
  sub_255F959E0();
  sub_255F954D0();

  return sub_255F95A00();
}

uint64_t sub_255F86780(uint64_t a1)
{
  sub_255F954D0();
}

uint64_t sub_255F86800(uint64_t a1)
{
  sub_255F959E0();
  sub_255F954D0();

  return sub_255F95A00();
}

uint64_t sub_255F86890(uint64_t a1, unsigned __int8 a2)
{
  sub_255F959E0();
  sub_255F954D0();

  return sub_255F95A00();
}

uint64_t sub_255F869A4(uint64_t a1, unsigned __int8 a2)
{
  sub_255F959E0();
  sub_255F954D0();

  return sub_255F95A00();
}

void sub_255F86ABC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x7265746E6563;
  if (v2 != 1)
  {
    v5 = 0x7468676972;
    v4 = 0xE500000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 1952867692;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_255F86B0C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE600000000000000;
  v4 = 0x7265746E6563;
  if (v2 != 1)
  {
    v4 = 0x7468676972;
    v3 = 0xE500000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 1952867692;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  v7 = 0xE600000000000000;
  v8 = 0x7265746E6563;
  if (*a2 != 1)
  {
    v8 = 0x7468676972;
    v7 = 0xE500000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 1952867692;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE400000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_255F95990();
  }

  return v11 & 1;
}

void StyleSheet.Font.Specified.size.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v2;
}

uint64_t StyleSheet.Font.Specified.init(size:weight:style:variant:family:)@<X0>(uint64_t result@<X0>, char *a2@<X1>, char *a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v6 = *(result + 8);
  v7 = *a2;
  v8 = *a3;
  v9 = *a4;
  *a6 = *result;
  *(a6 + 8) = v6;
  *(a6 + 9) = v7;
  *(a6 + 10) = v8;
  *(a6 + 11) = v9;
  *(a6 + 16) = a5;
  return result;
}

uint64_t sub_255F86D30()
{
  v1 = *v0;
  v2 = 1702521203;
  v3 = 0x656C797473;
  v4 = 0x746E6169726176;
  if (v1 != 3)
  {
    v4 = 0x796C696D6166;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x746867696577;
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

uint64_t sub_255F86DB8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_255F8EB44(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_255F86DEC(uint64_t a1)
{
  v2 = sub_255F8B934();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255F86E28(uint64_t a1)
{
  v2 = sub_255F8B934();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t StyleSheet.Font.Specified.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81B730, &qword_255F96EB8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v15 - v5;
  v7 = *v1;
  v8 = *(v1 + 8);
  v22 = *(v1 + 9);
  v9 = *(v1 + 10);
  v17 = *(v1 + 11);
  v18 = v9;
  v16 = v1[2];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255F8B934();
  sub_255F95A20();
  v20 = v7;
  v21 = v8;
  v23 = 0;
  sub_255F8B988();
  v10 = v19;
  sub_255F95920();
  if (!v10)
  {
    v12 = v17;
    v11 = v18;
    v13 = v16;
    LOBYTE(v20) = v22;
    v23 = 1;
    sub_255F8B9DC();
    sub_255F95920();
    LOBYTE(v20) = v11;
    v23 = 2;
    sub_255F8BA30();
    sub_255F95920();
    LOBYTE(v20) = v12;
    v23 = 3;
    sub_255F8BA84();
    sub_255F95920();
    v20 = v13;
    v23 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81B5A0, &qword_255F96EC0);
    sub_255F8BC28(&qword_27F81B758, MEMORY[0x277D837D8], MEMORY[0x277D83948]);
    sub_255F95920();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t StyleSheet.Font.Specified.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81B760, &qword_255F96EC8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255F8B934();
  sub_255F95A10();
  if (!v2)
  {
    v18 = 0;
    sub_255F8BAD8();
    sub_255F958A0();
    v9 = v15;
    v10 = v16;
    v18 = 1;
    sub_255F8BB2C();
    sub_255F958A0();
    v14 = v9;
    LODWORD(v9) = v15;
    v18 = 2;
    sub_255F8BB80();
    sub_255F958A0();
    v17 = v9;
    LOBYTE(v9) = v15;
    v18 = 3;
    sub_255F8BBD4();
    sub_255F958A0();
    HIDWORD(v13) = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81B5A0, &qword_255F96EC0);
    v18 = 4;
    sub_255F8BC28(&qword_27F81B788, MEMORY[0x277D83808], MEMORY[0x277D83978]);
    sub_255F958A0();
    (*(v6 + 8))(v8, v5);
    v12 = v15;
    *a2 = v14;
    *(a2 + 8) = v10;
    *(a2 + 9) = v17;
    *(a2 + 10) = v9;
    *(a2 + 11) = BYTE4(v13);
    *(a2 + 16) = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

LinkPresentationStyleSheetParsing::StyleSheet::Font::Weight_optional __swiftcall StyleSheet.Font.Weight.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_255F95860();

  v5 = 13;
  if (v3 < 0xD)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t StyleSheet.Font.Weight.rawValue.getter()
{
  result = 0x6C616D726F6ELL;
  switch(*v0)
  {
    case 1:
      result = 1684828002;
      break;
    case 2:
      result = 0x7265646C6F62;
      break;
    case 3:
      result = 0x7265746867696CLL;
      break;
    case 4:
      result = 3158065;
      break;
    case 5:
      result = 3158066;
      break;
    case 6:
      result = 3158067;
      break;
    case 7:
      result = 3158068;
      break;
    case 8:
      result = 3158069;
      break;
    case 9:
      result = 3158070;
      break;
    case 0xA:
      result = 3158071;
      break;
    case 0xB:
      result = 3158072;
      break;
    case 0xC:
      result = 3158073;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_255F875A0()
{
  sub_255F959E0();
  StyleSheet.Font.Weight.rawValue.getter();
  sub_255F954D0();

  return sub_255F95A00();
}

uint64_t sub_255F87608(uint64_t a1)
{
  StyleSheet.Font.Weight.rawValue.getter();
  sub_255F954D0();
}

uint64_t sub_255F8766C(uint64_t a1)
{
  sub_255F959E0();
  StyleSheet.Font.Weight.rawValue.getter();
  sub_255F954D0();

  return sub_255F95A00();
}

uint64_t sub_255F876DC@<X0>(uint64_t *a1@<X8>)
{
  result = StyleSheet.Font.Weight.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_255F87704()
{
  v0 = StyleSheet.Font.Weight.rawValue.getter();
  v2 = v1;
  if (v0 == StyleSheet.Font.Weight.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_255F95990();
  }

  return v5 & 1;
}

LinkPresentationStyleSheetParsing::StyleSheet::Font::Size::Unit_optional __swiftcall StyleSheet.Font.Size.Unit.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_255F95860();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t StyleSheet.Font.Size.Unit.rawValue.getter()
{
  v1 = 37;
  v2 = 28005;
  if (*v0 != 2)
  {
    v2 = 30821;
  }

  if (*v0)
  {
    v1 = 30832;
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

uint64_t sub_255F878F4()
{
  sub_255F959E0();
  sub_255F954D0();

  return sub_255F95A00();
}

uint64_t sub_255F87984(uint64_t a1)
{
  sub_255F954D0();
}

uint64_t sub_255F87A00(uint64_t a1)
{
  sub_255F959E0();
  sub_255F954D0();

  return sub_255F95A00();
}

void sub_255F87A98(uint64_t *a1@<X8>)
{
  v2 = 0xE100000000000000;
  v3 = 37;
  v4 = 28005;
  if (*v1 != 2)
  {
    v4 = 30821;
  }

  if (*v1)
  {
    v3 = 30832;
    v2 = 0xE200000000000000;
  }

  if (*v1 <= 1u)
  {
    v5 = v3;
  }

  else
  {
    v5 = v4;
  }

  if (*v1 > 1u)
  {
    v2 = 0xE200000000000000;
  }

  *a1 = v5;
  a1[1] = v2;
}

LinkPresentationStyleSheetParsing::StyleSheet::Font::Size::Absolute_optional __swiftcall StyleSheet.Font.Size.Absolute.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_255F95860();

  v5 = 7;
  if (v3 < 7)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t StyleSheet.Font.Size.Absolute.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6C6C616D732D7878;
  v3 = 0x656772616C2D78;
  if (v1 != 5)
  {
    v3 = 0x656772616C2D7878;
  }

  v4 = 0x6D756964656DLL;
  if (v1 != 3)
  {
    v4 = 0x656772616CLL;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x6C6C616D732D78;
  if (v1 != 1)
  {
    v5 = 0x6C6C616D73;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_255F87CD4(uint64_t a1)
{
  sub_255F954D0();
}

void sub_255F87DE8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0x6C6C616D732D7878;
  v5 = 0xE700000000000000;
  v6 = 0x656772616C2D78;
  if (v2 != 5)
  {
    v6 = 0x656772616C2D7878;
    v5 = 0xE800000000000000;
  }

  v7 = 0xE600000000000000;
  v8 = 0x6D756964656DLL;
  if (v2 != 3)
  {
    v8 = 0x656772616CLL;
    v7 = 0xE500000000000000;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE700000000000000;
  v10 = 0x6C6C616D732D78;
  if (v2 != 1)
  {
    v10 = 0x6C6C616D73;
    v9 = 0xE500000000000000;
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

uint64_t static StyleSheet.Font.Size.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *a2;
  v7 = *(a2 + 8);
  if ((v5 & 0x80000000) == 0)
  {
    if ((v7 & 0x80000000) == 0 && v4 == v6)
    {
      return sub_255F8337C(v5, v7);
    }

    return 0;
  }

  if ((v7 & 0x80000000) == 0)
  {
    return 0;
  }

  return sub_255F8346C(LOBYTE(v4), LOBYTE(v6));
}

uint64_t sub_255F87FC0(uint64_t a1)
{
  v2 = sub_255F8BCE8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255F87FFC(uint64_t a1)
{
  v2 = sub_255F8BCE8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_255F88038()
{
  if (*v0)
  {
    return 0x6574756C6F736261;
  }

  else
  {
    return 0x6569666963657073;
  }
}

uint64_t sub_255F88078@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6569666963657073 && a2 == 0xE900000000000064;
  if (v6 || (sub_255F95990() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6574756C6F736261 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_255F95990();

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

uint64_t sub_255F8815C(uint64_t a1)
{
  v2 = sub_255F8BC94();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255F88198(uint64_t a1)
{
  v2 = sub_255F8BC94();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_255F881D4()
{
  if (*v0)
  {
    return 1953066613;
  }

  else
  {
    return 0x65756C6176;
  }
}

uint64_t sub_255F88204@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x65756C6176 && a2 == 0xE500000000000000;
  if (v6 || (sub_255F95990() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1953066613 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_255F95990();

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

uint64_t sub_255F882DC(uint64_t a1)
{
  v2 = sub_255F8BD90();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255F88318(uint64_t a1)
{
  v2 = sub_255F8BD90();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t StyleSheet.Font.Size.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81B790, &qword_255F96ED0);
  v21 = *(v3 - 8);
  v22 = v3;
  MEMORY[0x28223BE20](v3);
  v20 = &v20 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81B798, &qword_255F96ED8);
  v23 = *(v5 - 8);
  v24 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v20 - v6;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81B7A0, &qword_255F96EE0);
  v8 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v10 = &v20 - v9;
  v11 = *v1;
  v12 = *(v1 + 8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255F8BC94();
  sub_255F95A20();
  if (v12 < 0)
  {
    v32 = 1;
    sub_255F8BCE8();
    v17 = v20;
    v18 = v26;
    sub_255F95900();
    v31 = v11;
    sub_255F8BD3C();
    v19 = v22;
    sub_255F95950();
    (*(v21 + 8))(v17, v19);
    return (*(v8 + 8))(v10, v18);
  }

  else
  {
    v30 = 0;
    sub_255F8BD90();
    v13 = v26;
    sub_255F95900();
    v29 = 0;
    v15 = v24;
    v14 = v25;
    sub_255F95940();
    if (!v14)
    {
      v28 = v12;
      v27 = 1;
      sub_255F8BDE4();
      sub_255F95950();
    }

    (*(v23 + 8))(v7, v15);
    return (*(v8 + 8))(v10, v13);
  }
}

uint64_t StyleSheet.Font.Size.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81B7B8, &qword_255F96EE8);
  v4 = *(v3 - 8);
  v31 = v3;
  v32 = v4;
  MEMORY[0x28223BE20](v3);
  v6 = &v30 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81B7C0, &qword_255F96EF0);
  v33 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v30 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81B7C8, &qword_255F96EF8);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v30 - v12;
  v14 = a1[3];
  v36 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_255F8BC94();
  v15 = v35;
  sub_255F95A10();
  if (!v15)
  {
    v35 = v11;
    v16 = v34;
    v17 = sub_255F958F0();
    if (*(v17 + 16) == 1)
    {
      if (*(v17 + 32))
      {
        v42 = 1;
        sub_255F8BCE8();
        v18 = v6;
        sub_255F95870();
        v19 = v16;
        sub_255F8BE38();
        v20 = v31;
        sub_255F958D0();
        (*(v32 + 8))(v18, v20);
        (*(v35 + 8))(v13, v10);
        swift_unknownObjectRelease();
        v21 = v41;
        v22 = 0x80;
      }

      else
      {
        v40 = 0;
        sub_255F8BD90();
        sub_255F95870();
        v39 = 0;
        sub_255F958C0();
        v27 = v35;
        v29 = v28;
        v37 = 1;
        sub_255F8BE8C();
        sub_255F958D0();
        (*(v33 + 8))(v9, v7);
        (*(v27 + 8))(v13, v10);
        swift_unknownObjectRelease();
        v22 = v38;
        v21 = v29;
        v19 = v16;
      }

      *v19 = v21;
      *(v19 + 8) = v22;
    }

    else
    {
      v23 = sub_255F957D0();
      swift_allocError();
      v25 = v24;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81B6B0, &qword_255F96E68);
      *v25 = &type metadata for StyleSheet.Font.Size;
      sub_255F95880();
      sub_255F957C0();
      (*(*(v23 - 8) + 104))(v25, *MEMORY[0x277D84160], v23);
      swift_willThrow();
      (*(v35 + 8))(v13, v10);
      swift_unknownObjectRelease();
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v36);
}

uint64_t sub_255F88BE8(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *a2;
  v7 = *(a2 + 8);
  if ((v5 & 0x80000000) == 0)
  {
    if ((v7 & 0x80000000) == 0 && v4 == v6)
    {
      return sub_255F8337C(v5, v7);
    }

    return 0;
  }

  if ((v7 & 0x80000000) == 0)
  {
    return 0;
  }

  return sub_255F8346C(LOBYTE(v4), LOBYTE(v6));
}

LinkPresentationStyleSheetParsing::StyleSheet::Font::Style_optional __swiftcall StyleSheet.Font.Style.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_255F95860();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t StyleSheet.Font.Style.rawValue.getter()
{
  v1 = 0x63696C617469;
  if (*v0 != 1)
  {
    v1 = 0x657571696C626FLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6C616D726F6ELL;
  }
}

uint64_t sub_255F88D14()
{
  sub_255F959E0();
  sub_255F954D0();

  return sub_255F95A00();
}

uint64_t sub_255F88DB0(uint64_t a1)
{
  sub_255F954D0();
}

uint64_t sub_255F88E38(uint64_t a1)
{
  sub_255F959E0();
  sub_255F954D0();

  return sub_255F95A00();
}

void sub_255F88EDC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x63696C617469;
  if (v2 != 1)
  {
    v5 = 0x657571696C626FLL;
    v4 = 0xE700000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6C616D726F6ELL;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_255F88F34(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE600000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x63696C617469;
  if (v2 != 1)
  {
    v5 = 0x657571696C626FLL;
    v4 = 0xE700000000000000;
  }

  if (*a1)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0x6C616D726F6ELL;
  }

  if (v2)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xE600000000000000;
  }

  v8 = 0x63696C617469;
  if (*a2 != 1)
  {
    v8 = 0x657571696C626FLL;
    v3 = 0xE700000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6C616D726F6ELL;
  }

  if (*a2)
  {
    v10 = v3;
  }

  else
  {
    v10 = 0xE600000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_255F95990();
  }

  return v11 & 1;
}

LinkPresentationStyleSheetParsing::StyleSheet::Font::Variant_optional __swiftcall StyleSheet.Font.Variant.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_255F95860();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t StyleSheet.Font.Variant.rawValue.getter()
{
  if (*v0)
  {
    return 0x61632D6C6C616D73;
  }

  else
  {
    return 0x6C616D726F6ELL;
  }
}

uint64_t sub_255F89178()
{
  sub_255F959E0();
  sub_255F954D0();

  return sub_255F95A00();
}

uint64_t sub_255F891FC(uint64_t a1)
{
  sub_255F954D0();
}

uint64_t sub_255F8926C(uint64_t a1)
{
  sub_255F959E0();
  sub_255F954D0();

  return sub_255F95A00();
}

uint64_t sub_255F892EC@<X0>(char *a2@<X8>)
{
  v3 = sub_255F95860();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_255F8934C(uint64_t *a1@<X8>)
{
  v2 = 0x6C616D726F6ELL;
  if (*v1)
  {
    v2 = 0x61632D6C6C616D73;
  }

  v3 = 0xE600000000000000;
  if (*v1)
  {
    v3 = 0xEA00000000007370;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_255F8938C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x61632D6C6C616D73;
  }

  else
  {
    v3 = 0x6C616D726F6ELL;
  }

  if (v2)
  {
    v4 = 0xE600000000000000;
  }

  else
  {
    v4 = 0xEA00000000007370;
  }

  if (*a2)
  {
    v5 = 0x61632D6C6C616D73;
  }

  else
  {
    v5 = 0x6C616D726F6ELL;
  }

  if (*a2)
  {
    v6 = 0xEA00000000007370;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_255F95990();
  }

  return v8 & 1;
}

LinkPresentationStyleSheetParsing::StyleSheet::Font::System_optional __swiftcall StyleSheet.Font.System.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_255F95860();

  v5 = 6;
  if (v3 < 6)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t StyleSheet.Font.System.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6E6F6974706163;
  v3 = 0x2D6567617373656DLL;
  v4 = 0x61632D6C6C616D73;
  if (v1 != 4)
  {
    v4 = 0x622D737574617473;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 1852793705;
  if (v1 != 1)
  {
    v5 = 1970169197;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_255F8960C(uint64_t a1)
{
  sub_255F954D0();
}

void sub_255F89718(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x6E6F6974706163;
  v5 = 0xEB00000000786F62;
  v6 = 0x2D6567617373656DLL;
  v7 = 0xED00006E6F697470;
  v8 = 0x61632D6C6C616D73;
  if (v2 != 4)
  {
    v8 = 0x622D737574617473;
    v7 = 0xEA00000000007261;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 1852793705;
  if (v2 != 1)
  {
    v9 = 1970169197;
  }

  if (*v1)
  {
    v4 = v9;
    v3 = 0xE400000000000000;
  }

  if (*v1 <= 2u)
  {
    v10 = v4;
  }

  else
  {
    v10 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v10;
  a1[1] = v3;
}

uint64_t sub_255F8989C()
{
  if (*v0)
  {
    return 0x6D6574737973;
  }

  else
  {
    return 0x6569666963657073;
  }
}

uint64_t sub_255F898D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6569666963657073 && a2 == 0xE900000000000064;
  if (v6 || (sub_255F95990() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6D6574737973 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_255F95990();

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

uint64_t sub_255F899C4(uint64_t a1)
{
  v2 = sub_255F8BEE0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255F89A00(uint64_t a1)
{
  v2 = sub_255F8BEE0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_255F89A3C(uint64_t a1)
{
  v2 = sub_255F8BFDC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255F89A78(uint64_t a1)
{
  v2 = sub_255F8BFDC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_255F89AB4()
{
  sub_255F959E0();
  MEMORY[0x259C54570](0);
  return sub_255F95A00();
}

uint64_t sub_255F89AF8(uint64_t a1)
{
  sub_255F959E0();
  MEMORY[0x259C54570](0);
  return sub_255F95A00();
}

uint64_t sub_255F89B3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_255F95990();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_255F89BBC(uint64_t a1)
{
  v2 = sub_255F8BF34();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255F89BF8(uint64_t a1)
{
  v2 = sub_255F8BF34();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t StyleSheet.Font.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81B7E0, &qword_255F96F00);
  v18 = *(v3 - 8);
  v19 = v3;
  MEMORY[0x28223BE20](v3);
  v17 = &v17 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81B7E8, &qword_255F96F08);
  v21 = *(v5 - 8);
  v22 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v17 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81B7F0, &qword_255F96F10);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v17 - v10;
  v12 = v1[1];
  v23 = *v1;
  v20 = v1[2];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255F8BEE0();
  sub_255F95A20();
  if (v12 < 0)
  {
    LOBYTE(v24) = 1;
    sub_255F8BF34();
    v14 = v17;
    sub_255F95900();
    LOBYTE(v24) = v23;
    sub_255F8BF88();
    v15 = v19;
    sub_255F95950();
    (*(v18 + 8))(v14, v15);
  }

  else
  {
    LOBYTE(v24) = 0;
    sub_255F8BFDC();
    sub_255F95900();
    v24 = v23;
    v25 = v12;
    v26 = BYTE2(v12);
    v27 = BYTE3(v12);
    v28 = v20;
    sub_255F8C030();
    v13 = v22;
    sub_255F95950();
    (*(v21 + 8))(v7, v13);
  }

  return (*(v9 + 8))(v11, v8);
}

uint64_t StyleSheet.Font.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v32 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81B808, &qword_255F96F18);
  v30 = *(v3 - 8);
  v31 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = v28 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81B810, &qword_255F96F20);
  v29 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = v28 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81B818, &qword_255F96F28);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v28 - v11;
  v13 = a1[3];
  v37 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_255F8BEE0();
  v14 = v33;
  sub_255F95A10();
  if (!v14)
  {
    v33 = v6;
    v15 = v10;
    v16 = v31;
    v17 = v32;
    v18 = sub_255F958F0();
    if (*(v18 + 16) == 1)
    {
      v28[1] = v18;
      if (*(v18 + 32))
      {
        LOBYTE(v34) = 1;
        sub_255F8BF34();
        sub_255F95870();
        sub_255F8C084();
        sub_255F958D0();
        (*(v30 + 8))(v5, v16);
        (*(v15 + 8))(v12, v9);
        swift_unknownObjectRelease();
        v19 = 0;
        v20 = v34;
        v21 = 0x8000000000000000;
      }

      else
      {
        LOBYTE(v34) = 0;
        sub_255F8BFDC();
        v25 = v8;
        sub_255F95870();
        sub_255F8C0D8();
        v27 = v33;
        sub_255F958D0();
        (*(v29 + 8))(v25, v27);
        (*(v15 + 8))(v12, v9);
        swift_unknownObjectRelease();
        v20 = v34;
        v21 = v35;
        v19 = v36;
      }

      *v17 = v20;
      v17[1] = v21;
      v17[2] = v19;
    }

    else
    {
      v22 = sub_255F957D0();
      swift_allocError();
      v24 = v23;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81B6B0, &qword_255F96E68);
      *v24 = &type metadata for StyleSheet.Font;
      sub_255F95880();
      sub_255F957C0();
      (*(*(v22 - 8) + 104))(v24, *MEMORY[0x277D84160], v22);
      swift_willThrow();
      (*(v15 + 8))(v12, v9);
      swift_unknownObjectRelease();
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v37);
}

BOOL _s33LinkPresentationStyleSheetParsing0cD0V4FontO9SpecifiedV2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 9);
  v5 = *(a1 + 10);
  v6 = *(a1 + 11);
  v7 = *(a1 + 16);
  v8 = *(a2 + 8);
  v9 = *(a2 + 9);
  v10 = *(a2 + 10);
  v11 = *(a2 + 11);
  v12 = *(a2 + 16);
  if (v3 > 0xFB)
  {
    if (v8 <= 0xFB)
    {
      return 0;
    }

LABEL_3:
    if (v4 == 13)
    {
      if (v9 != 13)
      {
        return 0;
      }
    }

    else
    {
      if (v9 == 13)
      {
        return 0;
      }

      v16 = StyleSheet.Font.Weight.rawValue.getter();
      v18 = v17;
      if (v16 == StyleSheet.Font.Weight.rawValue.getter() && v18 == v19)
      {

        if (v5 == 3)
        {
LABEL_6:
          if (v10 != 3)
          {
            return 0;
          }

          goto LABEL_7;
        }

LABEL_20:
        if (v10 == 3)
        {
          return 0;
        }

        v20 = 0xE600000000000000;
        v21 = 0x63696C617469;
        if (v5 != 1)
        {
          v21 = 0x657571696C626FLL;
          v20 = 0xE700000000000000;
        }

        if (v5)
        {
          v22 = v21;
        }

        else
        {
          v22 = 0x6C616D726F6ELL;
        }

        if (v5)
        {
          v23 = v20;
        }

        else
        {
          v23 = 0xE600000000000000;
        }

        v24 = 0xE600000000000000;
        v25 = 0x63696C617469;
        if (v10 != 1)
        {
          v25 = 0x657571696C626FLL;
          v24 = 0xE700000000000000;
        }

        if (v10)
        {
          v26 = v25;
        }

        else
        {
          v26 = 0x6C616D726F6ELL;
        }

        if (v10)
        {
          v27 = v24;
        }

        else
        {
          v27 = 0xE600000000000000;
        }

        if (v22 == v26 && v23 == v27)
        {

          if (v6 == 2)
          {
LABEL_8:
            if (v11 != 2)
            {
              return 0;
            }

LABEL_64:
            if (v7)
            {
              return v12 && (sub_255F82A6C(v7, v12) & 1) != 0;
            }

            return !v12;
          }

LABEL_40:
          if (v11 == 2)
          {
            return 0;
          }

          if (v6)
          {
            v28 = 0x61632D6C6C616D73;
          }

          else
          {
            v28 = 0x6C616D726F6ELL;
          }

          if (v6)
          {
            v29 = 0xEA00000000007370;
          }

          else
          {
            v29 = 0xE600000000000000;
          }

          if (v11)
          {
            v30 = 0x61632D6C6C616D73;
          }

          else
          {
            v30 = 0x6C616D726F6ELL;
          }

          if (v11)
          {
            v31 = 0xEA00000000007370;
          }

          else
          {
            v31 = 0xE600000000000000;
          }

          if (v28 == v30 && v29 == v31)
          {
          }

          else
          {
            v34 = sub_255F95990();

            if ((v34 & 1) == 0)
            {
              return 0;
            }
          }

          goto LABEL_64;
        }

        v33 = sub_255F95990();

        if ((v33 & 1) == 0)
        {
          return 0;
        }

LABEL_7:
        if (v6 == 2)
        {
          goto LABEL_8;
        }

        goto LABEL_40;
      }

      v32 = sub_255F95990();

      if ((v32 & 1) == 0)
      {
        return 0;
      }
    }

    if (v5 == 3)
    {
      goto LABEL_6;
    }

    goto LABEL_20;
  }

  if (v8 > 0xFB)
  {
    return 0;
  }

  v13 = *a1;
  v14 = *a2;
  if ((v3 & 0x80) != 0)
  {
    if ((v8 & 0x80) == 0 || (sub_255F8346C(*a1, LOBYTE(v14)) & 1) == 0)
    {
      return 0;
    }

    goto LABEL_3;
  }

  result = 0;
  if ((v8 & 0x80) == 0 && v13 == v14)
  {
    if ((sub_255F8337C(v3, v8) & 1) == 0)
    {
      return 0;
    }

    goto LABEL_3;
  }

  return result;
}

uint64_t _s33LinkPresentationStyleSheetParsing0cD0V4FontO2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v6 = *a2;
  v5 = a2[1];
  v7 = a2[2];
  if (v2 < 0)
  {
    if (v5 < 0)
    {
      v8 = sub_255F83188(*a1, *a2);
      sub_255F7A6D4(v3, v2, v4);
      sub_255F7A6D4(v6, v5, v7);
      return v8 & 1;
    }

LABEL_7:
    sub_255F8EE20(v6, v5, v7);
    sub_255F7A6D4(v3, v2, v4);
    sub_255F7A6D4(v6, v5, v7);
    v8 = 0;
    return v8 & 1;
  }

  if (v5 < 0)
  {

    goto LABEL_7;
  }

  v14 = a2[2];
  v15 = v3;
  v16 = v2;
  v17 = BYTE2(v2);
  v18 = BYTE3(v2);
  v19 = v4;
  v10 = v6;
  v11 = v5;
  v12 = BYTE2(v5);
  v13 = BYTE3(v5);
  sub_255F8EE20(v6, v5, v7);
  sub_255F8EE20(v3, v2, v4);
  sub_255F8EE20(v3, v2, v4);
  sub_255F8EE20(v6, v5, v7);
  v8 = _s33LinkPresentationStyleSheetParsing0cD0V4FontO9SpecifiedV2eeoiySbAG_AGtFZ_0(&v15, &v10);
  sub_255F7A6D4(v3, v2, v4);
  sub_255F7A6D4(v6, v5, v7);
  sub_255F7A6D4(v6, v5, v7);
  sub_255F7A6D4(v3, v2, v4);
  return v8 & 1;
}

uint64_t _s33LinkPresentationStyleSheetParsing0cD0V4RuleO11DeclarationO2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *a2;
  v8 = *(a2 + 8);
  v10 = *(a2 + 16);
  v9 = *(a2 + 24);
  v11 = *(a2 + 32);
  v34[0] = *a1;
  v34[1] = v3;
  v34[2] = v5;
  v34[3] = v4;
  v35 = v6;
  v36 = v7;
  v37 = v8;
  v38 = v10;
  v39 = v9;
  v40 = v11;
  if (v6 <= 2)
  {
    if (v6)
    {
      if (v6 == 1)
      {
        if (v11 == 1)
        {
          sub_255F815B4(v34, &qword_27F81B880, &qword_255F99228);
          v13 = v2 == v7 && v3 == v8;
          return v13 & 1;
        }

        goto LABEL_48;
      }

      if (v11 == 2)
      {
        sub_255F815B4(v34, &qword_27F81B880, &qword_255F99228);
        if ((v3 & 0x100000000) != 0)
        {
          if ((v8 & 0x100000000) == 0)
          {
            goto LABEL_50;
          }
        }

        else if ((v8 & 0x100000000) != 0 || v2 != v7 || v3 != v8)
        {
          goto LABEL_50;
        }

        goto LABEL_72;
      }

LABEL_48:
      v24 = v7;
      v25 = v8;
      v26 = v10;
      v27 = v9;
      v28 = v11;
LABEL_49:
      sub_255F8EDA4(v24, v25, v26, v27, v28);
      sub_255F815B4(v34, &qword_27F81B880, &qword_255F99228);
LABEL_50:
      v13 = 0;
      return v13 & 1;
    }

    if (v11)
    {

LABEL_47:

      goto LABEL_48;
    }

    if ((v2 != v7 || v3 != v8) && (sub_255F95990() & 1) == 0)
    {
      sub_255F8EDA4(v7, v8, v10, v9, 0);
      v24 = v2;
      v25 = v3;
      v26 = v5;
      v27 = v4;
      v28 = 0;
      goto LABEL_49;
    }

    if (v5 != v10 || v4 != v9)
    {
      v13 = sub_255F95990();
      sub_255F8EDA4(v7, v8, v10, v9, 0);
      sub_255F8EDA4(v2, v3, v5, v4, 0);
      sub_255F815B4(v34, &qword_27F81B880, &qword_255F99228);
      return v13 & 1;
    }

    sub_255F8EDA4(v7, v8, v5, v4, 0);
    v19 = v2;
    v20 = v3;
    v21 = v5;
    v22 = v4;
    v23 = 0;
    goto LABEL_58;
  }

  if (v6 != 3)
  {
    if (v6 == 4)
    {
      if (v11 == 4)
      {
        v33[0] = v2;
        v33[1] = v3;
        v33[2] = v5;
        v32[0] = v7;
        v32[1] = v8;
        v32[2] = v10;
        sub_255F8EDA4(v7, v8, v10, v9, 4);
        sub_255F8EDA4(v2, v3, v5, v4, 4);
        sub_255F8EDA4(v7, v8, v10, v9, 4);
        sub_255F8EDA4(v2, v3, v5, v4, 4);
        v13 = _s33LinkPresentationStyleSheetParsing0cD0V4FontO2eeoiySbAE_AEtFZ_0(v33, v32);
        sub_255F815B4(v34, &qword_27F81B880, &qword_255F99228);
        sub_255F7A658(v7, v8, v10, v9, 4);
        sub_255F7A658(v2, v3, v5, v4, 4);
        return v13 & 1;
      }

      sub_255F8EE20(v2, v3, v5);
      goto LABEL_48;
    }

    if (v11 != 5)
    {
      goto LABEL_47;
    }

    if (v3)
    {
      if (!v8)
      {
        sub_255F8EDA4(v7, 0, v10, v9, 5);
        sub_255F8EDA4(v7, 0, v10, v9, 5);
        v24 = v2;
        v25 = v3;
        v26 = v5;
        v27 = v4;
        v28 = 5;
        goto LABEL_49;
      }

      if (v2 == v7 && v3 == v8)
      {
        sub_255F8EDA4(v2, v3, v10, v9, 5);
        v19 = v2;
        v20 = v3;
        v21 = v5;
        v22 = v4;
        v23 = 5;
LABEL_58:
        sub_255F8EDA4(v19, v20, v21, v22, v23);
LABEL_67:
        sub_255F815B4(v34, &qword_27F81B880, &qword_255F99228);
        v13 = 1;
        return v13 & 1;
      }

      v31 = sub_255F95990();
      sub_255F8EDA4(v7, v8, v10, v9, 5);
      sub_255F8EDA4(v2, v3, v5, v4, 5);
      sub_255F815B4(v34, &qword_27F81B880, &qword_255F99228);
      if ((v31 & 1) == 0)
      {
        goto LABEL_50;
      }
    }

    else
    {

      sub_255F8EDA4(v7, v8, v10, v9, 5);
      sub_255F8EDA4(v2, 0, v5, v4, 5);
      sub_255F815B4(v34, &qword_27F81B880, &qword_255F99228);
      if (v8)
      {
        sub_255F7A658(v7, v8, v10, v9, 5);
        goto LABEL_50;
      }
    }

LABEL_72:
    v13 = 1;
    return v13 & 1;
  }

  if (v11 != 3)
  {
    goto LABEL_48;
  }

  if (!v2)
  {
    v15 = 0xE400000000000000;
    v14 = 1952867692;
    v16 = v7;
    if (v7)
    {
      goto LABEL_26;
    }

LABEL_64:
    v18 = 0xE400000000000000;
    if (v14 != 1952867692)
    {
      goto LABEL_68;
    }

    goto LABEL_65;
  }

  if (v2 == 1)
  {
    v14 = 0x7265746E6563;
  }

  else
  {
    v14 = 0x7468676972;
  }

  if (v2 == 1)
  {
    v15 = 0xE600000000000000;
  }

  else
  {
    v15 = 0xE500000000000000;
  }

  v16 = v7;
  if (!v7)
  {
    goto LABEL_64;
  }

LABEL_26:
  if (v16 == 1)
  {
    v17 = 0x7265746E6563;
  }

  else
  {
    v17 = 0x7468676972;
  }

  if (v16 == 1)
  {
    v18 = 0xE600000000000000;
  }

  else
  {
    v18 = 0xE500000000000000;
  }

  if (v14 != v17)
  {
    goto LABEL_68;
  }

LABEL_65:
  if (v15 == v18)
  {

    goto LABEL_67;
  }

LABEL_68:
  v30 = sub_255F95990();

  sub_255F815B4(v34, &qword_27F81B880, &qword_255F99228);
  return v30 & 1;
}

unint64_t sub_255F8AF24()
{
  result = qword_27F81C118;
  if (!qword_27F81C118)
  {
    result = swift_getWitnessTable(byte_255F99184, &type metadata for StyleSheet.Rule.Declaration.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F81C118);
  }

  return result;
}

unint64_t sub_255F8AF78()
{
  result = qword_27F81C120;
  if (!qword_27F81C120)
  {
    result = swift_getWitnessTable(byte_255F99134, &type metadata for StyleSheet.Rule.Declaration.BackgroundImageCodingKeys, v0, v1);
    atomic_store(result, &qword_27F81C120);
  }

  return result;
}

unint64_t sub_255F8AFCC()
{
  result = qword_27F81C128;
  if (!qword_27F81C128)
  {
    result = swift_getWitnessTable("E%*,l1", &type metadata for StyleSheet.Rule.Declaration.FontCodingKeys, v0, v1);
    atomic_store(result, &qword_27F81C128);
  }

  return result;
}

unint64_t sub_255F8B020()
{
  result = qword_27F81B660;
  if (!qword_27F81B660)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for StyleSheet.Font, &type metadata for StyleSheet.Font, v0, v1);
    atomic_store(result, &qword_27F81B660);
  }

  return result;
}

unint64_t sub_255F8B074()
{
  result = qword_27F81C130;
  if (!qword_27F81C130)
  {
    result = swift_getWitnessTable(byte_255F99094, &type metadata for StyleSheet.Rule.Declaration.TextAlignCodingKeys, v0, v1);
    atomic_store(result, &qword_27F81C130);
  }

  return result;
}

unint64_t sub_255F8B0C8()
{
  result = qword_27F81B668;
  if (!qword_27F81B668)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for StyleSheet.TextAlign, &type metadata for StyleSheet.TextAlign, v0, v1);
    atomic_store(result, &qword_27F81B668);
  }

  return result;
}

unint64_t sub_255F8B11C()
{
  result = qword_27F81C138;
  if (!qword_27F81C138)
  {
    result = swift_getWitnessTable(byte_255F99044, &type metadata for StyleSheet.Rule.Declaration.BackgroundColorCodingKeys, v0, v1);
    atomic_store(result, &qword_27F81C138);
  }

  return result;
}

unint64_t sub_255F8B170()
{
  result = qword_27F81B670;
  if (!qword_27F81B670)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for StyleSheet.Color, &type metadata for StyleSheet.Color, v0, v1);
    atomic_store(result, &qword_27F81B670);
  }

  return result;
}

unint64_t sub_255F8B1C4()
{
  result = qword_27F81C140;
  if (!qword_27F81C140)
  {
    result = swift_getWitnessTable(a5_1, &type metadata for StyleSheet.Rule.Declaration.ColorCodingKeys, v0, v1);
    atomic_store(result, &qword_27F81C140);
  }

  return result;
}

unint64_t sub_255F8B218()
{
  result = qword_27F81C148;
  if (!qword_27F81C148)
  {
    result = swift_getWitnessTable(byte_255F98FA4, &type metadata for StyleSheet.Rule.Declaration.InvalidCodingKeys, v0, v1);
    atomic_store(result, &qword_27F81C148);
  }

  return result;
}

unint64_t sub_255F8B26C()
{
  result = qword_27F81B6B8;
  if (!qword_27F81B6B8)
  {
    result = swift_getWitnessTable("5)*,8F", &type metadata for StyleSheet.Font, v0, v1);
    atomic_store(result, &qword_27F81B6B8);
  }

  return result;
}

unint64_t sub_255F8B2C0()
{
  result = qword_27F81B6C0;
  if (!qword_27F81B6C0)
  {
    result = swift_getWitnessTable("=0*,$M", &type metadata for StyleSheet.TextAlign, v0, v1);
    atomic_store(result, &qword_27F81B6C0);
  }

  return result;
}

unint64_t sub_255F8B314()
{
  result = qword_27F81B6C8;
  if (!qword_27F81B6C8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for StyleSheet.Color, &type metadata for StyleSheet.Color, v0, v1);
    atomic_store(result, &qword_27F81B6C8);
  }

  return result;
}

uint64_t _s33LinkPresentationStyleSheetParsing0cD0V4RuleO2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  v6 = a1[4];
  v7 = *(a1 + 40);
  v9 = *a2;
  v8 = a2[1];
  v10 = a2[2];
  v11 = a2[3];
  v12 = a2[4];
  v13 = *(a2 + 40);
  v31 = v8;
  v32 = *a2;
  if ((v7 & 1) == 0)
  {
    if ((a2[5] & 1) == 0)
    {
      v24 = *a1;
      v25 = a1[1];
      if (__PAIR128__(v3, v2) == __PAIR128__(v8, v9) || (v26 = *a2, v27 = a2[1], v28 = sub_255F95990(), v9 = v26, v8 = v27, (v28 & 1) != 0))
      {
        sub_255F8ECE8(v9, v8, v10, v11, v12, 0);
        v2 = v24;
        sub_255F8ECE8(v24, v25, v5, v4, v6, 0);
        v29 = sub_255F82958(v5, v10);
        v22 = v4;
        v23 = v29;
        v7 = 0;
        v3 = v25;
        v13 = 0;
        goto LABEL_21;
      }

      sub_255F8ECE8(v26, v27, v10, v11, v12, 0);
      v2 = v24;
      sub_255F8ECE8(v24, v25, v5, v4, v6, 0);
      v7 = 0;
      v3 = v25;
      v13 = 0;
      goto LABEL_12;
    }

LABEL_11:
    sub_255F8ECE8(v9, v8, v10, v11, v12, v13);
    sub_255F8ECE8(v2, v3, v5, v4, v6, v7);
LABEL_12:
    v22 = v4;
    v23 = 0;
    goto LABEL_21;
  }

  if ((a2[5] & 1) == 0)
  {
    goto LABEL_11;
  }

  if (v2 == v9 && v3 == v8 || (v14 = *a2, v15 = a2[1], v16 = sub_255F95990(), v9 = v14, v8 = v15, (v16 & 1) != 0))
  {
    v17 = v5;
    if (v5 == v10 && v4 == v11 || (v18 = v9, v19 = v8, v20 = sub_255F95990(), v9 = v18, v8 = v19, (v20 & 1) != 0))
    {
      v7 = 1;
      sub_255F8ECE8(v9, v8, v10, v11, v12, 1);
      sub_255F8ECE8(v2, v3, v17, v4, v6, 1);
      v21 = sub_255F82958(v6, v12);
      v22 = v4;
      v23 = v21;
    }

    else
    {
      v7 = 1;
      sub_255F8ECE8(v18, v8, v10, v11, v12, 1);
      sub_255F8ECE8(v2, v3, v17, v4, v6, 1);
      v22 = v4;
      v23 = 0;
    }

    v5 = v17;
  }

  else
  {
    v7 = 1;
    sub_255F8ECE8(v14, v8, v10, v11, v12, 1);
    sub_255F8ECE8(v2, v3, v5, v4, v6, 1);
    v22 = v4;
    v23 = 0;
  }

  v13 = 1;
LABEL_21:
  sub_255F8ED44(v2, v3, v5, v22, v6, v7);
  sub_255F8ED44(v32, v31, v10, v11, v12, v13);
  return v23 & 1;
}

unint64_t sub_255F8B6C4()
{
  result = qword_27F81C150;
  if (!qword_27F81C150)
  {
    result = swift_getWitnessTable(byte_255F98F54, &type metadata for StyleSheet.Rule.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F81C150);
  }

  return result;
}

unint64_t sub_255F8B718()
{
  result = qword_27F81C158;
  if (!qword_27F81C158)
  {
    result = swift_getWitnessTable("%'*,t2", &type metadata for StyleSheet.Rule.AtKeywordCodingKeys, v0, v1);
    atomic_store(result, &qword_27F81C158);
  }

  return result;
}

uint64_t sub_255F8B76C(unint64_t *a1, uint64_t (*a2)(void), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F81B5E8, &qword_255F96CB0);
    v8 = a2();
    result = swift_getWitnessTable(a3, v7, &v8);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_255F8B7E4()
{
  result = qword_27F81B6F0;
  if (!qword_27F81B6F0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for StyleSheet.Rule.Declaration, &type metadata for StyleSheet.Rule.Declaration, v0, v1);
    atomic_store(result, &qword_27F81B6F0);
  }

  return result;
}

unint64_t sub_255F8B838()
{
  result = qword_27F81C160;
  if (!qword_27F81C160)
  {
    result = swift_getWitnessTable(aU_0, &type metadata for StyleSheet.Rule.QualifiedCodingKeys, v0, v1);
    atomic_store(result, &qword_27F81C160);
  }

  return result;
}

unint64_t sub_255F8B88C()
{
  result = qword_27F81B718;
  if (!qword_27F81B718)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for StyleSheet.Rule.Declaration, &type metadata for StyleSheet.Rule.Declaration, v0, v1);
    atomic_store(result, &qword_27F81B718);
  }

  return result;
}

unint64_t sub_255F8B8E0()
{
  result = qword_27F81C168;
  if (!qword_27F81C168)
  {
    result = swift_getWitnessTable(byte_255F98E64, &type metadata for StyleSheet.Color.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F81C168);
  }

  return result;
}

unint64_t sub_255F8B934()
{
  result = qword_27F81C170;
  if (!qword_27F81C170)
  {
    result = swift_getWitnessTable(byte_255F98E14, &type metadata for StyleSheet.Font.Specified.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F81C170);
  }

  return result;
}

unint64_t sub_255F8B988()
{
  result = qword_27F81B738;
  if (!qword_27F81B738)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for StyleSheet.Font.Size, &type metadata for StyleSheet.Font.Size, v0, v1);
    atomic_store(result, &qword_27F81B738);
  }

  return result;
}

unint64_t sub_255F8B9DC()
{
  result = qword_27F81B740;
  if (!qword_27F81B740)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for StyleSheet.Font.Weight, &type metadata for StyleSheet.Font.Weight, v0, v1);
    atomic_store(result, &qword_27F81B740);
  }

  return result;
}

unint64_t sub_255F8BA30()
{
  result = qword_27F81B748;
  if (!qword_27F81B748)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for StyleSheet.Font.Style, &type metadata for StyleSheet.Font.Style, v0, v1);
    atomic_store(result, &qword_27F81B748);
  }

  return result;
}

unint64_t sub_255F8BA84()
{
  result = qword_27F81B750;
  if (!qword_27F81B750)
  {
    result = swift_getWitnessTable("E&*,<H", &type metadata for StyleSheet.Font.Variant, v0, v1);
    atomic_store(result, &qword_27F81B750);
  }

  return result;
}

unint64_t sub_255F8BAD8()
{
  result = qword_27F81B768;
  if (!qword_27F81B768)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for StyleSheet.Font.Size, &type metadata for StyleSheet.Font.Size, v0, v1);
    atomic_store(result, &qword_27F81B768);
  }

  return result;
}

unint64_t sub_255F8BB2C()
{
  result = qword_27F81B770;
  if (!qword_27F81B770)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for StyleSheet.Font.Weight, &type metadata for StyleSheet.Font.Weight, v0, v1);
    atomic_store(result, &qword_27F81B770);
  }

  return result;
}

unint64_t sub_255F8BB80()
{
  result = qword_27F81B778;
  if (!qword_27F81B778)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for StyleSheet.Font.Style, &type metadata for StyleSheet.Font.Style, v0, v1);
    atomic_store(result, &qword_27F81B778);
  }

  return result;
}

unint64_t sub_255F8BBD4()
{
  result = qword_27F81B780;
  if (!qword_27F81B780)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for StyleSheet.Font.Variant, &type metadata for StyleSheet.Font.Variant, v0, v1);
    atomic_store(result, &qword_27F81B780);
  }

  return result;
}

uint64_t sub_255F8BC28(unint64_t *a1, uint64_t a2, const char *a3)
{
  result = *a1;
  if (!result)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F81B5A0, &qword_255F96EC0);
    v8 = a2;
    result = swift_getWitnessTable(a3, v7, &v8);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_255F8BC94()
{
  result = qword_27F81C178;
  if (!qword_27F81C178)
  {
    result = swift_getWitnessTable(aE, &type metadata for StyleSheet.Font.Size.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F81C178);
  }

  return result;
}

unint64_t sub_255F8BCE8()
{
  result = qword_27F81C180;
  if (!qword_27F81C180)
  {
    result = swift_getWitnessTable(byte_255F98D74, &type metadata for StyleSheet.Font.Size.AbsoluteCodingKeys, v0, v1);
    atomic_store(result, &qword_27F81C180);
  }

  return result;
}

unint64_t sub_255F8BD3C()
{
  result = qword_27F81B7A8;
  if (!qword_27F81B7A8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for StyleSheet.Font.Size.Absolute, &type metadata for StyleSheet.Font.Size.Absolute, v0, v1);
    atomic_store(result, &qword_27F81B7A8);
  }

  return result;
}

unint64_t sub_255F8BD90()
{
  result = qword_27F81C188;
  if (!qword_27F81C188)
  {
    result = swift_getWitnessTable(byte_255F98D24, &type metadata for StyleSheet.Font.Size.SpecifiedCodingKeys, v0, v1);
    atomic_store(result, &qword_27F81C188);
  }

  return result;
}

unint64_t sub_255F8BDE4()
{
  result = qword_27F81B7B0;
  if (!qword_27F81B7B0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for StyleSheet.Font.Size.Unit, &type metadata for StyleSheet.Font.Size.Unit, v0, v1);
    atomic_store(result, &qword_27F81B7B0);
  }

  return result;
}

unint64_t sub_255F8BE38()
{
  result = qword_27F81B7D0;
  if (!qword_27F81B7D0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for StyleSheet.Font.Size.Absolute, &type metadata for StyleSheet.Font.Size.Absolute, v0, v1);
    atomic_store(result, &qword_27F81B7D0);
  }

  return result;
}

unint64_t sub_255F8BE8C()
{
  result = qword_27F81B7D8;
  if (!qword_27F81B7D8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for StyleSheet.Font.Size.Unit, &type metadata for StyleSheet.Font.Size.Unit, v0, v1);
    atomic_store(result, &qword_27F81B7D8);
  }

  return result;
}

unint64_t sub_255F8BEE0()
{
  result = qword_27F81C190;
  if (!qword_27F81C190)
  {
    result = swift_getWitnessTable("U)*,<3", &type metadata for StyleSheet.Font.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F81C190);
  }

  return result;
}

unint64_t sub_255F8BF34()
{
  result = qword_27F81C198;
  if (!qword_27F81C198)
  {
    result = swift_getWitnessTable(byte_255F98C84, &type metadata for StyleSheet.Font.SystemCodingKeys, v0, v1);
    atomic_store(result, &qword_27F81C198);
  }

  return result;
}

unint64_t sub_255F8BF88()
{
  result = qword_27F81B7F8;
  if (!qword_27F81B7F8)
  {
    result = swift_getWitnessTable("U%*,hG", &type metadata for StyleSheet.Font.System, v0, v1);
    atomic_store(result, &qword_27F81B7F8);
  }

  return result;
}

unint64_t sub_255F8BFDC()
{
  result = qword_27F81C1A0[0];
  if (!qword_27F81C1A0[0])
  {
    result = swift_getWitnessTable(byte_255F98C34, &type metadata for StyleSheet.Font.SpecifiedCodingKeys, v0, v1);
    atomic_store(result, qword_27F81C1A0);
  }

  return result;
}

unint64_t sub_255F8C030()
{
  result = qword_27F81B800;
  if (!qword_27F81B800)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for StyleSheet.Font.Specified, &type metadata for StyleSheet.Font.Specified, v0, v1);
    atomic_store(result, &qword_27F81B800);
  }

  return result;
}

unint64_t sub_255F8C084()
{
  result = qword_27F81B820;
  if (!qword_27F81B820)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for StyleSheet.Font.System, &type metadata for StyleSheet.Font.System, v0, v1);
    atomic_store(result, &qword_27F81B820);
  }

  return result;
}

unint64_t sub_255F8C0D8()
{
  result = qword_27F81B828;
  if (!qword_27F81B828)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for StyleSheet.Font.Specified, &type metadata for StyleSheet.Font.Specified, v0, v1);
    atomic_store(result, &qword_27F81B828);
  }

  return result;
}

unint64_t sub_255F8C12C(void *a1)
{
  a1[1] = sub_255F8C164();
  a1[2] = sub_255F8C1B8();
  result = sub_255F8C20C();
  a1[3] = result;
  return result;
}

unint64_t sub_255F8C164()
{
  result = qword_27F81B830;
  if (!qword_27F81B830)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for StyleSheet, &type metadata for StyleSheet, v0, v1);
    atomic_store(result, &qword_27F81B830);
  }

  return result;
}

unint64_t sub_255F8C1B8()
{
  result = qword_27F81B838;
  if (!qword_27F81B838)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for StyleSheet, &type metadata for StyleSheet, v0, v1);
    atomic_store(result, &qword_27F81B838);
  }

  return result;
}

unint64_t sub_255F8C20C()
{
  result = qword_27F81B840;
  if (!qword_27F81B840)
  {
    result = swift_getWitnessTable("}1*,4O", &type metadata for StyleSheet, v0, v1);
    atomic_store(result, &qword_27F81B840);
  }

  return result;
}