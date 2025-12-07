Swift::Int sub_76C20()
{
  sub_84CCC();
  sub_84CDC(0);
  return sub_84D0C();
}

Swift::Int sub_76C8C(uint64_t a1)
{
  sub_84CCC();
  sub_84CDC(0);
  return sub_84D0C();
}

void sub_76D1C(void *a1, uint64_t a2, unsigned int a3, unsigned int a4, CGBlendMode a5, uint64_t *a6)
{
  if (a1)
  {
    v11 = a2 - a1;
  }

  else
  {
    v11 = 0;
  }

  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  v13 = CGBitmapContextCreate(a1, 1uLL, 1uLL, 8uLL, v11, DeviceRGB, 1u);

  if (v13)
  {
    CGContextSetRGBFillColor(v13, a3 / 255.0, BYTE1(a3) / 255.0, BYTE2(a3) / 255.0, HIBYTE(a3) / 255.0);
    v19.origin.x = 0.0;
    v19.origin.y = 0.0;
    v19.size.width = 1.0;
    v19.size.height = 1.0;
    CGContextFillRect(v13, v19);
    CGContextSetRGBFillColor(v13, a4 / 255.0, BYTE1(a4) / 255.0, BYTE2(a4) / 255.0, HIBYTE(a4) / 255.0);
    CGContextSetBlendMode(v13, a5);
    v20.origin.x = 0.0;
    v20.origin.y = 0.0;
    v20.size.width = 1.0;
    v20.size.height = 1.0;
    CGContextFillRect(v13, v20);
  }

  else
  {
    if (qword_CA480 != -1)
    {
      swift_once();
    }

    v14 = sub_83D6C();
    sub_2C284(v14, qword_CB398);
    v15 = sub_83D4C();
    v16 = sub_847BC();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_0, v15, v16, "Failed to create CGContext", v17, 2u);
    }

    sub_784E8();
    v18 = swift_allocError();
    swift_willThrow();
    *a6 = v18;
  }
}

uint64_t sub_77084(uint64_t a1, unint64_t a2)
{
  v2 = sub_8454C();
  v6 = sub_77104(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_77104(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_848EC();
    if (!v9 || (v10 = v9, v11 = sub_5CA04(v9, 0), v12 = sub_7725C(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_8445C();

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
      return sub_8445C();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_84A8C();
LABEL_4:

  return sub_8445C();
}

unint64_t sub_7725C(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
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
      result = sub_7747C(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_844FC();
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
          result = sub_84A8C();
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

    result = sub_7747C(v12, a6, a7);
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

    result = sub_844DC();
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

unint64_t sub_7747C(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_8450C();
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
    v5 = sub_844EC();
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

unsigned __int8 *sub_774F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v70 = a1;
  v71 = a2;

  result = sub_8453C();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_77084(result, v5);
    v40 = v39;

    v5 = v40;
    if ((v40 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_84A8C();
      v7 = v69;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v22 = v7 - 1;
        if (v22)
        {
          v23 = a3 + 48;
          v24 = a3 + 55;
          v25 = a3 + 87;
          if (a3 > 10)
          {
            v23 = 58;
          }

          else
          {
            v25 = 97;
            v24 = 65;
          }

          if (result)
          {
            v13 = 0;
            v26 = result + 1;
            v15 = 1;
            do
            {
              v27 = *v26;
              if (v27 < 0x30 || v27 >= v23)
              {
                if (v27 < 0x41 || v27 >= v24)
                {
                  v18 = 0;
                  if (v27 < 0x61 || v27 >= v25)
                  {
                    goto LABEL_129;
                  }

                  v28 = -87;
                }

                else
                {
                  v28 = -55;
                }
              }

              else
              {
                v28 = -48;
              }

              v29 = v13 * a3;
              if ((v29 & 0xFFFFFFFF00000000) != 0)
              {
                goto LABEL_128;
              }

              v30 = v27 + v28;
              v21 = __CFADD__(v29, v30);
              v13 = v29 + v30;
              if (v21)
              {
                goto LABEL_128;
              }

              ++v26;
              --v22;
            }

            while (v22);
LABEL_47:
            v15 = 0;
            v18 = v13;
            goto LABEL_129;
          }

          goto LABEL_67;
        }

LABEL_128:
        v18 = 0;
        v15 = 1;
        goto LABEL_129;
      }

      goto LABEL_133;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v31 = a3 + 48;
        v32 = a3 + 55;
        v33 = a3 + 87;
        if (a3 > 10)
        {
          v31 = 58;
        }

        else
        {
          v33 = 97;
          v32 = 65;
        }

        if (result)
        {
          v34 = 0;
          v15 = 1;
          do
          {
            v35 = *result;
            if (v35 < 0x30 || v35 >= v31)
            {
              if (v35 < 0x41 || v35 >= v32)
              {
                v18 = 0;
                if (v35 < 0x61 || v35 >= v33)
                {
                  goto LABEL_129;
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

            v37 = v34 * a3;
            if ((v37 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_128;
            }

            v38 = v35 + v36;
            v21 = __CFADD__(v37, v38);
            v34 = v37 + v38;
            if (v21)
            {
              goto LABEL_128;
            }

            ++result;
            --v7;
          }

          while (v7);
          v15 = 0;
          v18 = v34;
          goto LABEL_129;
        }

        goto LABEL_67;
      }

      goto LABEL_128;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          v15 = 1;
          while (1)
          {
            v16 = *v14;
            if (v16 < 0x30 || v16 >= v10)
            {
              if (v16 < 0x41 || v16 >= v11)
              {
                v18 = 0;
                if (v16 < 0x61 || v16 >= v12)
                {
                  goto LABEL_129;
                }

                v17 = -87;
              }

              else
              {
                v17 = -55;
              }
            }

            else
            {
              v17 = -48;
            }

            v19 = v13 * a3;
            if ((v19 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_128;
            }

            v20 = v16 + v17;
            v21 = v19 >= v20;
            v13 = v19 - v20;
            if (!v21)
            {
              goto LABEL_128;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_47;
            }
          }
        }

LABEL_67:
        v18 = 0;
        v15 = 0;
LABEL_129:

        LOBYTE(v70) = v15;
        return (v18 | (v15 << 32));
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

  v41 = HIBYTE(v5) & 0xF;
  v70 = v6;
  v71 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v41)
      {
        v43 = 0;
        v61 = a3 + 48;
        v62 = a3 + 55;
        v63 = a3 + 87;
        if (a3 > 10)
        {
          v61 = 58;
        }

        else
        {
          v63 = 97;
          v62 = 65;
        }

        v64 = &v70;
        v15 = 1;
        while (1)
        {
          v65 = *v64;
          if (v65 < 0x30 || v65 >= v61)
          {
            if (v65 < 0x41 || v65 >= v62)
            {
              v18 = 0;
              if (v65 < 0x61 || v65 >= v63)
              {
                goto LABEL_129;
              }

              v66 = -87;
            }

            else
            {
              v66 = -55;
            }
          }

          else
          {
            v66 = -48;
          }

          v67 = v43 * a3;
          if ((v67 & 0xFFFFFFFF00000000) != 0)
          {
            goto LABEL_128;
          }

          v68 = v65 + v66;
          v21 = __CFADD__(v67, v68);
          v43 = v67 + v68;
          if (v21)
          {
            goto LABEL_128;
          }

          v64 = (v64 + 1);
          if (!--v41)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    if (v41)
    {
      v42 = v41 - 1;
      if (v42)
      {
        v43 = 0;
        v44 = a3 + 48;
        v45 = a3 + 55;
        v46 = a3 + 87;
        if (a3 > 10)
        {
          v44 = 58;
        }

        else
        {
          v46 = 97;
          v45 = 65;
        }

        v47 = &v70 + 1;
        v15 = 1;
        while (1)
        {
          v48 = *v47;
          if (v48 < 0x30 || v48 >= v44)
          {
            if (v48 < 0x41 || v48 >= v45)
            {
              v18 = 0;
              if (v48 < 0x61 || v48 >= v46)
              {
                goto LABEL_129;
              }

              v49 = -87;
            }

            else
            {
              v49 = -55;
            }
          }

          else
          {
            v49 = -48;
          }

          v50 = v43 * a3;
          if ((v50 & 0xFFFFFFFF00000000) != 0)
          {
            goto LABEL_128;
          }

          v51 = v48 + v49;
          v21 = v50 >= v51;
          v43 = v50 - v51;
          if (!v21)
          {
            goto LABEL_128;
          }

          ++v47;
          if (!--v42)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    goto LABEL_132;
  }

  if (v41)
  {
    v52 = v41 - 1;
    if (v52)
    {
      v43 = 0;
      v53 = a3 + 48;
      v54 = a3 + 55;
      v55 = a3 + 87;
      if (a3 > 10)
      {
        v53 = 58;
      }

      else
      {
        v55 = 97;
        v54 = 65;
      }

      v56 = &v70 + 1;
      v15 = 1;
      do
      {
        v57 = *v56;
        if (v57 < 0x30 || v57 >= v53)
        {
          if (v57 < 0x41 || v57 >= v54)
          {
            v18 = 0;
            if (v57 < 0x61 || v57 >= v55)
            {
              goto LABEL_129;
            }

            v58 = -87;
          }

          else
          {
            v58 = -55;
          }
        }

        else
        {
          v58 = -48;
        }

        v59 = v43 * a3;
        if ((v59 & 0xFFFFFFFF00000000) != 0)
        {
          goto LABEL_128;
        }

        v60 = v57 + v58;
        v21 = __CFADD__(v59, v60);
        v43 = v59 + v60;
        if (v21)
        {
          goto LABEL_128;
        }

        ++v56;
        --v52;
      }

      while (v52);
LABEL_127:
      v15 = 0;
      v18 = v43;
      goto LABEL_129;
    }

    goto LABEL_128;
  }

LABEL_134:
  __break(1u);
  return result;
}

unsigned __int8 *sub_77A74(uint64_t a1, unint64_t a2)
{
  if (sub_8447C() == 6)
  {
    v32 = a1;
    v33 = a2;

    v35._countAndFlagsBits = 26214;
    v35._object = 0xE200000000000000;
    sub_844AC(v35);
  }

  else
  {
  }

  result = sub_8447C();
  if (result != &dword_8 || ((v5 = HIBYTE(a2) & 0xF, v6 = a1 & 0xFFFFFFFFFFFFLL, (a2 & 0x2000000000000000) != 0) ? (v7 = HIBYTE(a2) & 0xF) : (v7 = a1 & 0xFFFFFFFFFFFFLL), !v7))
  {

LABEL_90:
    v30 = 0;
    v31 = 1;
LABEL_93:
    LOBYTE(v32) = v31;
    return (v30 | (v31 << 32));
  }

  if ((a2 & 0x1000000000000000) != 0)
  {
    v9 = sub_774F8(a1, a2, 16);

    if ((v9 & 0x100000000) != 0)
    {
      goto LABEL_90;
    }

    goto LABEL_92;
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((a1 & 0x1000000000000000) != 0)
    {
      result = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      result = sub_84A8C();
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v6 >= 1)
      {
        v5 = v6 - 1;
        if (v6 != 1)
        {
          if (result)
          {
            LODWORD(v9) = 0;
            v18 = result + 1;
            while (1)
            {
              v19 = *v18;
              v20 = v19 - 48;
              if ((v19 - 48) >= 0xA)
              {
                if ((v19 - 65) < 6)
                {
                  v20 = v19 - 55;
                }

                else
                {
                  if ((v19 - 97) > 5)
                  {
                    goto LABEL_88;
                  }

                  v20 = v19 - 87;
                }
              }

              if (v9 >> 28)
              {
                goto LABEL_88;
              }

              LODWORD(v9) = 16 * v9 + v20;
              ++v18;
              if (!--v5)
              {
                goto LABEL_89;
              }
            }
          }

          goto LABEL_77;
        }

        goto LABEL_88;
      }

      goto LABEL_97;
    }

    if (v8 != 45)
    {
      if (v6)
      {
        if (result)
        {
          LODWORD(v9) = 0;
          while (1)
          {
            v24 = *result;
            v25 = v24 - 48;
            if ((v24 - 48) >= 0xA)
            {
              if ((v24 - 65) < 6)
              {
                v25 = v24 - 55;
              }

              else
              {
                if ((v24 - 97) > 5)
                {
                  goto LABEL_88;
                }

                v25 = v24 - 87;
              }
            }

            if (v9 >> 28)
            {
              goto LABEL_88;
            }

            LODWORD(v9) = 16 * v9 + v25;
            ++result;
            if (!--v6)
            {
              LOBYTE(v5) = 0;
              goto LABEL_89;
            }
          }
        }

        goto LABEL_77;
      }

LABEL_88:
      LODWORD(v9) = 0;
      LOBYTE(v5) = 1;
LABEL_89:
      v34 = v5;
      v29 = v5;

      if (v29)
      {
        goto LABEL_90;
      }

LABEL_92:
      v31 = 0;
      v30 = bswap32(v9);
      goto LABEL_93;
    }

    if (v6 >= 1)
    {
      v5 = v6 - 1;
      if (v6 != 1)
      {
        if (result)
        {
          LODWORD(v9) = 0;
          v10 = result + 1;
          while (1)
          {
            v11 = *v10;
            v12 = v11 - 48;
            if ((v11 - 48) >= 0xA)
            {
              if ((v11 - 65) < 6)
              {
                v12 = v11 - 55;
              }

              else
              {
                if ((v11 - 97) > 5)
                {
                  goto LABEL_88;
                }

                v12 = v11 - 87;
              }
            }

            if (v9 >> 28)
            {
              goto LABEL_88;
            }

            v13 = 16 * v9;
            LODWORD(v9) = 16 * v9 - v12;
            if (v13 < v12)
            {
              goto LABEL_88;
            }

            ++v10;
            if (!--v5)
            {
              goto LABEL_89;
            }
          }
        }

LABEL_77:
        LODWORD(v9) = 0;
        LOBYTE(v5) = 0;
        goto LABEL_89;
      }

      goto LABEL_88;
    }

    __break(1u);
LABEL_96:
    __break(1u);
LABEL_97:
    __break(1u);
    goto LABEL_98;
  }

  v32 = a1;
  v33 = a2 & 0xFFFFFFFFFFFFFFLL;
  if (a1 != 43)
  {
    if (a1 != 45)
    {
      if (v5)
      {
        LODWORD(v9) = 0;
        v26 = &v32;
        while (1)
        {
          v27 = *v26;
          v28 = v27 - 48;
          if ((v27 - 48) >= 0xA)
          {
            if ((v27 - 65) < 6)
            {
              v28 = v27 - 55;
            }

            else
            {
              if ((v27 - 97) > 5)
              {
                goto LABEL_88;
              }

              v28 = v27 - 87;
            }
          }

          if (v9 >> 28)
          {
            break;
          }

          LODWORD(v9) = 16 * v9 + v28;
          v26 = (v26 + 1);
          if (!--v5)
          {
            goto LABEL_89;
          }
        }
      }

      goto LABEL_88;
    }

    if (v5)
    {
      if (--v5)
      {
        LODWORD(v9) = 0;
        v14 = &v32 + 1;
        while (1)
        {
          v15 = *v14;
          v16 = v15 - 48;
          if ((v15 - 48) >= 0xA)
          {
            if ((v15 - 65) < 6)
            {
              v16 = v15 - 55;
            }

            else
            {
              if ((v15 - 97) > 5)
              {
                goto LABEL_88;
              }

              v16 = v15 - 87;
            }
          }

          if (v9 >> 28)
          {
            break;
          }

          v17 = 16 * v9;
          LODWORD(v9) = 16 * v9 - v16;
          if (v17 < v16)
          {
            break;
          }

          ++v14;
          if (!--v5)
          {
            goto LABEL_89;
          }
        }
      }

      goto LABEL_88;
    }

    goto LABEL_96;
  }

  if (v5)
  {
    if (--v5)
    {
      LODWORD(v9) = 0;
      v21 = &v32 + 1;
      while (1)
      {
        v22 = *v21;
        v23 = v22 - 48;
        if ((v22 - 48) >= 0xA)
        {
          if ((v22 - 65) < 6)
          {
            v23 = v22 - 55;
          }

          else
          {
            if ((v22 - 97) > 5)
            {
              goto LABEL_88;
            }

            v23 = v22 - 87;
          }
        }

        if (v9 >> 28)
        {
          break;
        }

        LODWORD(v9) = 16 * v9 + v23;
        ++v21;
        if (!--v5)
        {
          goto LABEL_89;
        }
      }
    }

    goto LABEL_88;
  }

LABEL_98:
  __break(1u);
  return result;
}

uint64_t _s5JSApp13JSAColorUtilsC15rgbaToHexString_12includeAlphaSSs11InlineArrayVy_3_s5UInt8VG_SbtFZ_0(int a1, char a2)
{
  if (a2)
  {
    v3 = 4;
  }

  else
  {
    v3 = 3;
  }

  v17 = _swiftEmptyArrayStorage;
  sub_3B254(0, v3, 0);
  v4 = 0;
  v5 = _swiftEmptyArrayStorage;
  while (1)
  {
    sub_2805C(&qword_CBCB0, &qword_A2298);
    result = swift_allocObject();
    *(result + 16) = xmmword_A10E0;
    v16 = a1;
    if (v4 == 4)
    {
      break;
    }

    v7 = *(&v16 + v4);
    *(result + 56) = &type metadata for UInt8;
    *(result + 64) = &protocol witness table for UInt8;
    *(result + 32) = v7;
    v8 = sub_843CC();
    v17 = v5;
    v11 = v5[2];
    v10 = v5[3];
    if (v11 >= v10 >> 1)
    {
      v15 = v8;
      v13 = v9;
      sub_3B254((v10 > 1), v11 + 1, 1);
      v9 = v13;
      v8 = v15;
      v5 = v17;
    }

    ++v4;
    v5[2] = v11 + 1;
    v12 = &v5[2 * v11];
    v12[4] = v8;
    v12[5] = v9;
    if (v3 == v4)
    {
      v17 = v5;
      sub_2805C(&qword_CA970, &qword_A1290);
      sub_40AFC();
      v14 = sub_8436C();

      return v14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_780BC(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6)
{
  v12 = sub_77A74(a1, a2);
  if ((v12 & 0x100000000) == 0)
  {
    v13 = v12;
    v14 = sub_77A74(a3, a4);
    if ((v14 & 0x100000000) == 0)
    {
      v15 = v14;
      if (a5 == 0x6B72614473756C70 && a6 == 0xEA00000000007265 || (sub_84BEC() & 1) != 0)
      {
        v16 = kCGBlendModePlusDarker;
LABEL_7:
        sub_7801C(v13, v15, v16);
        return _s5JSApp13JSAColorUtilsC15rgbaToHexString_12includeAlphaSSs11InlineArrayVy_3_s5UInt8VG_SbtFZ_0(v17, 0);
      }

      if (a5 == 0x6867694C73756C70 && a6 == 0xEB00000000726574 || (sub_84BEC() & 1) != 0)
      {
        v16 = kCGBlendModePlusLighter;
        goto LABEL_7;
      }
    }
  }

  if (qword_CA480 != -1)
  {
    swift_once();
  }

  v19 = sub_83D6C();
  sub_2C284(v19, qword_CB398);

  v20 = sub_83D4C();
  v21 = sub_847AC();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *v22 = 136315650;
    *(v22 + 4) = sub_3A93C(a1, a2, &v23);
    *(v22 + 12) = 2080;
    *(v22 + 14) = sub_3A93C(a3, a4, &v23);
    *(v22 + 22) = 2080;
    *(v22 + 24) = sub_3A93C(a5, a6, &v23);
    _os_log_impl(&dword_0, v20, v21, "Invalid hex string or blend mode: s: %s, d: %s, blendMode: %s", v22, 0x20u);
    swift_arrayDestroy();
  }

  return 0;
}

unint64_t sub_784E8()
{
  result = qword_CBCA8;
  if (!qword_CBCA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_CBCA8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for JSAColorUtils.BlendError(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for JSAColorUtils.BlendError(_WORD *result, int a2, int a3)
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

unint64_t sub_78628()
{
  result = qword_CBCB8;
  if (!qword_CBCB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_CBCB8);
  }

  return result;
}

Swift::Void __swiftcall JSABridge.enqueueValueCall(_:arguments:f:l:)(JSValue _, Swift::OpaquePointer_optional arguments, Swift::String f, Swift::Int l)
{
  object = f._object;
  if (arguments.value._rawValue)
  {
    v7.super.isa = sub_8458C().super.isa;
  }

  else
  {
    v7.super.isa = 0;
  }

  v8 = sub_8437C();
  [v4 enqueueValueCall:_.super.isa arguments:v7.super.isa file:v8 line:object];
}

void JSABridge.enqueueBlockPrefersSync(_:f:l:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9[4] = a1;
  v9[5] = a2;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_7881C;
  v9[3] = &unk_B6BD8;
  v7 = _Block_copy(v9);

  v8 = sub_8437C();
  [v5 enqueueBlockPrefersSync:v7 file:v8 line:a5];

  _Block_release(v7);
}

void sub_7881C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_78884(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_788D8()
{
  v12.receiver = v0;
  v12.super_class = type metadata accessor for FigaroSummaryCell();
  objc_msgSendSuper2(&v12, "layoutSubviews");
  [v0 frame];
  v1 = CGRectGetWidth(v13) + -60.0;
  v2 = OBJC_IVAR____TtC5JSApp17FigaroSummaryCell_iconImageView;
  [*&v0[OBJC_IVAR____TtC5JSApp17FigaroSummaryCell_iconImageView] setFrame:{20.0, 15.0, 30.0, 30.0}];
  v3 = OBJC_IVAR____TtC5JSApp17FigaroSummaryCell_eventNameLabel;
  v4 = *&v0[v2];
  v5 = *&v0[OBJC_IVAR____TtC5JSApp17FigaroSummaryCell_eventNameLabel];
  [v4 frame];
  MinY = CGRectGetMinY(v14);
  [*&v0[v2] frame];
  [v5 setFrame:{60.0, MinY, v1, CGRectGetHeight(v15)}];

  v7 = OBJC_IVAR____TtC5JSApp17FigaroSummaryCell_pageTypeLabel;
  v8 = *&v0[v3];
  v9 = *&v0[OBJC_IVAR____TtC5JSApp17FigaroSummaryCell_pageTypeLabel];
  [v8 frame];
  [v9 setFrame:{60.0, CGRectGetMaxY(v16) + 2.5, v1, 15.0}];

  v10 = *&v0[v7];
  v11 = *&v0[OBJC_IVAR____TtC5JSApp17FigaroSummaryCell_pageIdLabel];
  [v10 frame];
  [v11 setFrame:{60.0, CGRectGetMaxY(v17) + 2.5, v1, 15.0}];
}

void sub_78AC4()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC5JSApp17FigaroSummaryCell_figaroEvent;
  v3 = *(v0 + OBJC_IVAR____TtC5JSApp17FigaroSummaryCell_figaroEvent);
  if (v3)
  {
    v4 = *(v3 + 16);
    v5 = *(v3 + 24);
    v6 = v4 == 0x746E756F636361 && v5 == 0xE700000000000000;
    if (!v6 && (sub_84BEC() & 1) == 0)
    {
      v7 = v4 == 0x636E75614C707061 && v5 == 0xE900000000000068;
      if (!v7 && (sub_84BEC() & 1) == 0)
      {
        v8 = v4 == 0x6B63696C63 && v5 == 0xE500000000000000;
        if (!v8 && (sub_84BEC() & 1) == 0)
        {
          v9 = v4 == 0x676F6C616964 && v5 == 0xE600000000000000;
          if (!v9 && (sub_84BEC() & 1) == 0)
          {
            v10 = v4 == 0x44646E4167617264 && v5 == 0xEB00000000706F72;
            if (!v10 && (sub_84BEC() & 1) == 0 && (v4 != 0x7265746E65 || v5 != 0xE500000000000000) && (sub_84BEC() & 1) == 0 && (v4 != 1953069157 || v5 != 0xE400000000000000) && (sub_84BEC() & 1) == 0 && (v4 != 0x6973736572706D69 || v5 != 0xEB00000000736E6FLL) && (sub_84BEC() & 1) == 0 && (v4 != 0x616964656DLL || v5 != 0xE500000000000000) && (sub_84BEC() & 1) == 0 && (v4 != 1701273968 || v5 != 0xE400000000000000) && (sub_84BEC() & 1) == 0 && (v4 != 0x646E655265676170 || v5 != 0xEA00000000007265) && (sub_84BEC() & 1) == 0 && (v4 != 0x686372616573 || v5 != 0xE600000000000000))
            {
              sub_84BEC();
            }
          }
        }
      }
    }
  }

  v11 = *(v0 + OBJC_IVAR____TtC5JSApp17FigaroSummaryCell_iconImageView);
  v12 = sub_8437C();

  v13 = [objc_opt_self() systemImageNamed:v12];

  [v11 setImage:v13];
  v14 = *(v1 + v2);
  if (v14)
  {
    v15 = *(v14 + 16);
    v16 = *(v14 + 24);

    v49 = sub_63194(1, v15, v16);
    v50 = v17;
    v51 = v18;
    v52 = v19;
    sub_63230();
    v20 = sub_8490C();
    v21 = v1;
    v22 = v2;
    v24 = v23;

    v25 = sub_63284(1uLL, v15, v16);
    v27 = v26;
    v29 = v28;
    v31 = v30;

    v47 = v20;
    v48 = v24;
    v2 = v22;
    v1 = v21;
    v46 = v25;
    sub_63334();
    sub_8449C();

    v32 = *(v21 + OBJC_IVAR____TtC5JSApp17FigaroSummaryCell_eventNameLabel);
    v33 = sub_8437C();

    [v32 setText:{v33, v46, v27, v29, v31, v47, v48, v49, v50, v51, v52}];
  }

  else
  {
    v34 = *(v1 + OBJC_IVAR____TtC5JSApp17FigaroSummaryCell_eventNameLabel);
    v35 = sub_8437C();
    [v34 setText:v35];
  }

  if (*(v1 + v2) && (, v36 = sub_65FC0(), v38 = v37, , v38))
  {
    v39 = *(v1 + OBJC_IVAR____TtC5JSApp17FigaroSummaryCell_pageTypeLabel);
    v53._countAndFlagsBits = v36;
    v53._object = v38;
    sub_844AC(v53);

    v40 = sub_8437C();
  }

  else
  {
    v39 = *(v1 + OBJC_IVAR____TtC5JSApp17FigaroSummaryCell_pageTypeLabel);
    v40 = sub_8437C();
  }

  [v39 setText:v40];

  if (*(v1 + v2) && (, v41 = sub_65FD8(), v43 = v42, , v43))
  {
    v44 = *(v1 + OBJC_IVAR____TtC5JSApp17FigaroSummaryCell_pageIdLabel);
    v54._countAndFlagsBits = v41;
    v54._object = v43;
    sub_844AC(v54);

    v45 = sub_8437C();
  }

  else
  {
    v44 = *(v1 + OBJC_IVAR____TtC5JSApp17FigaroSummaryCell_pageIdLabel);
    v45 = sub_8437C();
  }

  [v44 setText:v45];
}

id FigaroSummaryViewController.init()()
{
  v1 = v0;
  if (qword_CA4E8 != -1)
  {
    swift_once();
  }

  v2 = qword_CB610;
  v3 = OBJC_IVAR___JSAMetricsController_experienceEvents;
  swift_beginAccess();
  *&v1[OBJC_IVAR___JSAFigaroSummaryViewController_experienceEvents] = *(v2 + v3);

  *&v1[OBJC_IVAR___JSAFigaroSummaryViewController_performanceEvents] = sub_69A28();
  sub_2805C(&unk_CADB0, &unk_A16E0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_A1630;
  *(v4 + 32) = 0x6E65697265707845;
  *(v4 + 40) = 0xEA00000000006563;
  *(v4 + 88) = &type metadata for String;
  *(v4 + 56) = &type metadata for String;
  *(v4 + 64) = 0x616D726F66726550;
  *(v4 + 72) = 0xEB0000000065636ELL;
  v5 = objc_allocWithZone(UISegmentedControl);

  isa = sub_8458C().super.isa;

  v7 = [v5 initWithItems:isa];

  *&v1[OBJC_IVAR___JSAFigaroSummaryViewController_segmentedControl] = v7;
  v8 = [objc_allocWithZone(UIToolbar) init];
  *&v1[OBJC_IVAR___JSAFigaroSummaryViewController_toolbar] = v8;
  v10.receiver = v1;
  v10.super_class = type metadata accessor for FigaroSummaryViewController();
  return objc_msgSendSuper2(&v10, "initWithStyle:", 0);
}

void sub_795D4()
{
  v1 = v0;
  v2 = type metadata accessor for FigaroSummaryViewController();
  v43.receiver = v1;
  v43.super_class = v2;
  objc_msgSendSuper2(&v43, "viewDidLoad");
  v3 = [v1 tableView];
  if (!v3)
  {
    __break(1u);
    goto LABEL_13;
  }

  v4 = v3;
  [v3 setAllowsSelectionDuringEditing:0];

  v5 = [v1 tableView];
  if (!v5)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v6 = v5;
  [v5 setAllowsMultipleSelectionDuringEditing:1];

  v7 = [v1 tableView];
  if (!v7)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v8 = v7;
  [v7 setRowHeight:95.0];

  v9 = [v1 navigationItem];
  v10 = sub_8437C();
  [v9 setTitle:v10];

  v11 = [v1 navigationItem];
  v40[1] = sub_2805C(&qword_CB830, &qword_A1DF8);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_A2360;
  v42 = v2;
  v41[0] = v1;
  v13 = v1;
  v14 = sub_8437C();
  if (v2)
  {
    v15 = sub_40E4C(v41, v42);
    v16 = *(v2 - 1);
    __chkstk_darwin(v15);
    v18 = v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v16 + 16))(v18);
    v19 = sub_84BDC();
    (*(v16 + 8))(v18, v2);
    sub_371A8(v41);
  }

  else
  {
    v19 = 0;
  }

  v20 = &swift_once_ptr;
  v21 = [objc_allocWithZone(UIBarButtonItem) initWithTitle:v14 style:0 target:v19 action:"infoTapped:"];

  swift_unknownObjectRelease();
  *(v12 + 32) = v21;
  v42 = v2;
  v41[0] = v13;
  v22 = v13;
  v23 = sub_8437C();
  v24 = v42;
  if (v42)
  {
    v25 = sub_40E4C(v41, v42);
    v26 = *(v24 - 8);
    __chkstk_darwin(v25);
    v28 = v40 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v26 + 16))(v28);
    v29 = sub_84BDC();
    (*(v26 + 8))(v28, v24);
    v20 = &swift_once_ptr;
    sub_371A8(v41);
  }

  else
  {
    v29 = 0;
  }

  v30 = [objc_allocWithZone(v20[213]) initWithTitle:v23 style:0 target:v29 action:"trashTapped:"];

  swift_unknownObjectRelease();
  *(v12 + 40) = v30;
  sub_7A550();
  isa = sub_8458C().super.isa;

  [v11 setRightBarButtonItems:isa];

  v32 = *&v22[OBJC_IVAR___JSAFigaroSummaryViewController_segmentedControl];
  [v32 setSelectedSegmentIndex:0];
  [v32 addTarget:v22 action:"valueChanged:" forControlEvents:4096];
  v33 = *&v22[OBJC_IVAR___JSAFigaroSummaryViewController_toolbar];
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_A1D40;
  *(v34 + 32) = [objc_allocWithZone(v20[213]) initWithCustomView:v32];
  v35 = sub_8458C().super.isa;

  [v33 setItems:v35];

  [v33 sizeToFit];
  v36 = [v22 tableView];
  if (v36)
  {
    v37 = v36;
    type metadata accessor for FigaroSummaryCell();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v39 = sub_8437C();
    [v37 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v39];

    return;
  }

LABEL_15:
  __break(1u);
}

unint64_t sub_79DC8(void *a1)
{
  v3 = sub_8437C();
  isa = sub_83AFC().super.isa;
  v5 = [a1 dequeueReusableCellWithIdentifier:v3 forIndexPath:isa];

  type metadata accessor for FigaroSummaryCell();
  v6 = swift_dynamicCastClass();
  if (!v6)
  {
    return v5;
  }

  v7 = v6;
  v8 = [*(v1 + OBJC_IVAR___JSAFigaroSummaryViewController_segmentedControl) selectedSegmentIndex];
  v9 = &OBJC_IVAR___JSAFigaroSummaryViewController_experienceEvents;
  if (v8)
  {
    v9 = &OBJC_IVAR___JSAFigaroSummaryViewController_performanceEvents;
  }

  v10 = *(v1 + *v9);

  result = sub_83B1C();
  if ((v10 & 0xC000000000000001) != 0)
  {
    v12 = sub_84A6C();
    goto LABEL_8;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *(&dword_10 + (v10 & 0xFFFFFFFFFFFFFF8)))
  {
    v12 = *(v10 + 8 * result + 32);

LABEL_8:

    *(v7 + OBJC_IVAR____TtC5JSApp17FigaroSummaryCell_figaroEvent) = v12;

    sub_78AC4();

    return v7;
  }

  __break(1u);
  return result;
}

void sub_7A04C(void *a1)
{
  if ([a1 isEditing])
  {
    return;
  }

  isa = sub_83AFC().super.isa;
  [a1 deselectRowAtIndexPath:isa animated:1];

  v4 = [*&v1[OBJC_IVAR___JSAFigaroSummaryViewController_segmentedControl] selectedSegmentIndex];
  v5 = &OBJC_IVAR___JSAFigaroSummaryViewController_experienceEvents;
  if (v4)
  {
    v5 = &OBJC_IVAR___JSAFigaroSummaryViewController_performanceEvents;
  }

  v6 = *&v1[*v5];

  v7 = [v1 navigationController];
  if (v7)
  {
    v8 = v7;
    v9 = sub_83B1C();
    if ((v6 & 0xC000000000000001) == 0)
    {
      if ((v9 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v9 < *(&dword_10 + (v6 & 0xFFFFFFFFFFFFFF8)))
      {
        v10 = *(v6 + 8 * v9 + 32);

LABEL_9:

        v11 = objc_allocWithZone(type metadata accessor for FigaroEventViewController());
        sub_62F48(v10);
        v13 = v12;

        [v8 pushViewController:v13 animated:1];

        return;
      }

      __break(1u);
      return;
    }

    v10 = sub_84A6C();
    goto LABEL_9;
  }
}

id FigaroSummaryViewController.__allocating_init(style:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);

  return [v3 initWithStyle:a1];
}

id FigaroSummaryViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_8437C();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id sub_7A488(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

unint64_t sub_7A550()
{
  result = qword_CBCE0;
  if (!qword_CBCE0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_CBCE0);
  }

  return result;
}

char *sub_7A5C0(uint64_t a1, uint64_t a2)
{
  *&v2[OBJC_IVAR____TtC5JSApp17FigaroSummaryCell_figaroEvent] = 0;
  v4 = OBJC_IVAR____TtC5JSApp17FigaroSummaryCell_iconImageView;
  *&v2[v4] = [objc_allocWithZone(UIImageView) init];
  v5 = OBJC_IVAR____TtC5JSApp17FigaroSummaryCell_eventNameLabel;
  *&v2[v5] = [objc_allocWithZone(UILabel) init];
  v6 = OBJC_IVAR____TtC5JSApp17FigaroSummaryCell_pageTypeLabel;
  *&v2[v6] = [objc_allocWithZone(UILabel) init];
  v7 = OBJC_IVAR____TtC5JSApp17FigaroSummaryCell_pageIdLabel;
  *&v2[v7] = [objc_allocWithZone(UILabel) init];
  if (a2)
  {
    v8 = sub_8437C();
  }

  else
  {
    v8 = 0;
  }

  v33.receiver = v2;
  v33.super_class = type metadata accessor for FigaroSummaryCell();
  v9 = objc_msgSendSuper2(&v33, "initWithStyle:reuseIdentifier:", 0, v8);

  v10 = OBJC_IVAR____TtC5JSApp17FigaroSummaryCell_iconImageView;
  v11 = *&v9[OBJC_IVAR____TtC5JSApp17FigaroSummaryCell_iconImageView];
  v12 = v9;
  [v11 setContentMode:1];
  v13 = *&v9[v10];
  v14 = objc_opt_self();
  v15 = v13;
  v16 = [v14 labelColor];
  [v15 setTintColor:v16];

  v17 = OBJC_IVAR____TtC5JSApp17FigaroSummaryCell_eventNameLabel;
  v18 = *&v12[OBJC_IVAR____TtC5JSApp17FigaroSummaryCell_eventNameLabel];
  v19 = objc_opt_self();
  v20 = v18;
  v21 = [v19 boldSystemFontOfSize:20.0];
  [v20 setFont:v21];

  v22 = OBJC_IVAR____TtC5JSApp17FigaroSummaryCell_pageTypeLabel;
  v23 = *&v12[OBJC_IVAR____TtC5JSApp17FigaroSummaryCell_pageTypeLabel];
  v24 = [v19 systemFontOfSize:13.0];
  [v23 setFont:v24];

  v25 = OBJC_IVAR____TtC5JSApp17FigaroSummaryCell_pageIdLabel;
  v26 = *&v12[OBJC_IVAR____TtC5JSApp17FigaroSummaryCell_pageIdLabel];
  v27 = [v19 systemFontOfSize:13.0];
  [v26 setFont:v27];

  *&v12[OBJC_IVAR____TtC5JSApp17FigaroSummaryCell_figaroEvent] = 0;

  v28 = [v12 contentView];
  [v28 addSubview:*&v9[v10]];

  v29 = [v12 contentView];
  [v29 addSubview:*&v12[v17]];

  v30 = [v12 contentView];
  [v30 addSubview:*&v12[v22]];

  v31 = [v12 contentView];
  [v31 addSubview:*&v12[v25]];

  return v12;
}

void sub_7A914()
{
  *(v0 + OBJC_IVAR____TtC5JSApp17FigaroSummaryCell_figaroEvent) = 0;
  v1 = OBJC_IVAR____TtC5JSApp17FigaroSummaryCell_iconImageView;
  *(v0 + v1) = [objc_allocWithZone(UIImageView) init];
  v2 = OBJC_IVAR____TtC5JSApp17FigaroSummaryCell_eventNameLabel;
  *(v0 + v2) = [objc_allocWithZone(UILabel) init];
  v3 = OBJC_IVAR____TtC5JSApp17FigaroSummaryCell_pageTypeLabel;
  *(v0 + v3) = [objc_allocWithZone(UILabel) init];
  v4 = OBJC_IVAR____TtC5JSApp17FigaroSummaryCell_pageIdLabel;
  *(v0 + v4) = [objc_allocWithZone(UILabel) init];
  sub_84AFC();
  __break(1u);
}

void sub_7AA00()
{
  v1 = sub_8437C();
  v2 = sub_8437C();
  v5 = [objc_opt_self() alertControllerWithTitle:v1 message:v2 preferredStyle:1];

  v3 = sub_8437C();
  v4 = [objc_opt_self() actionWithTitle:v3 style:0 handler:0];

  [v5 addAction:v4];
  [v0 present:v5 :1];
}

void sub_7AB34()
{
  if ([*&v0[OBJC_IVAR___JSAFigaroSummaryViewController_segmentedControl] selectedSegmentIndex])
  {
    if (qword_CA4E8 != -1)
    {
      swift_once();
    }

    v1 = (qword_CB610 + OBJC_IVAR___JSAMetricsController__performanceEvents);
    swift_beginAccess();
    v2 = &OBJC_IVAR___JSAFigaroSummaryViewController_performanceEvents;
  }

  else
  {
    if (qword_CA4E8 != -1)
    {
      swift_once();
    }

    v1 = (qword_CB610 + OBJC_IVAR___JSAMetricsController_experienceEvents);
    swift_beginAccess();
    v2 = &OBJC_IVAR___JSAFigaroSummaryViewController_experienceEvents;
  }

  *v1 = _swiftEmptyArrayStorage;

  *&v0[*v2] = _swiftEmptyArrayStorage;

  v3 = [v0 tableView];
  if (v3)
  {
    v4 = v3;
    [v3 reloadData];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_7AC90()
{
  if ([*(v0 + OBJC_IVAR___JSAFigaroSummaryViewController_segmentedControl) selectedSegmentIndex])
  {
    v1 = OBJC_IVAR___JSAFigaroSummaryViewController_performanceEvents;
  }

  else
  {
    v1 = OBJC_IVAR___JSAFigaroSummaryViewController_experienceEvents;
  }

  v2 = *(v0 + v1);
  if (!(v2 >> 62))
  {
    return *(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8));
  }

  return sub_84B0C();
}

Swift::String_optional __swiftcall NSFileManager.pathForCacheDirectory(with:)(Swift::String with)
{
  v2 = v1;
  object = with._object;
  countAndFlagsBits = with._countAndFlagsBits;
  v5 = sub_839CC();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_CA458 != -1)
  {
    v30 = v7;
    swift_once();
    v7 = v30;
  }

  v10 = *(qword_CB010 + OBJC_IVAR___JSAProcessEnvironment__variant);
  if (v10 == 2)
  {
    v14 = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, 1uLL, 1);
    v15 = sub_845AC();

    if (!v15[2])
    {

      goto LABEL_21;
    }

    v12 = v15[4];
    v13 = v15[5];
  }

  else
  {
    if (v10 == 1)
    {
      goto LABEL_12;
    }

    if (v10)
    {
      v36 = *(qword_CB010 + OBJC_IVAR___JSAProcessEnvironment__variant);
      v28 = sub_84C0C();
      __break(1u);
      goto LABEL_24;
    }

    v11 = v7;
    if (qword_CA468 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    if (byte_CB320)
    {
      goto LABEL_12;
    }

    if (qword_CA470 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    if (byte_CB321 == 1)
    {
LABEL_12:
      v12 = 0xD000000000000025;
      v13 = 0x800000000009D260;
    }

    else
    {
      v16 = [objc_opt_self() books];
      v17 = [v16 containerURL];

      sub_8396C();
      v12 = sub_8398C();
      v13 = v18;
      (*(v6 + 8))(v9, v11);
    }
  }

  v35[0] = countAndFlagsBits;
  v35[1] = object;
  v33 = v12;
  v34 = v13;
  v33 = sub_8453C();
  v34 = v19;
  sub_8449C();
  v21 = v33;
  v20 = v34;
  LOBYTE(v33) = 0;
  v22 = sub_8437C();
  v23 = [v2 fileExistsAtPath:v22 isDirectory:&v33];

  if ((v23 & 1) == 0)
  {
    v24 = sub_8437C();
    v35[0] = 0;
    v25 = [v2 createDirectoryAtPath:v24 withIntermediateDirectories:1 attributes:0 error:v35];

    if (v25)
    {
      v26 = v35[0];
      goto LABEL_22;
    }

    v27 = v35[0];

    sub_838DC();

    swift_willThrow();

LABEL_21:
    v21 = 0;
    v20 = 0;
  }

LABEL_22:
  v28 = v21;
  v29 = v20;
LABEL_24:
  result.value._object = v29;
  result.value._countAndFlagsBits = v28;
  return result;
}

id sub_7B208(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = OBJC_IVAR____TtC5JSApp17WebViewController_url;
  v6 = sub_839CC();
  v7 = *(v6 - 8);
  (*(v7 + 16))(&v2[v5], a1, v6);
  v8 = [objc_opt_self() defaultBag];
  v9 = [objc_opt_self() sharedProvider];
  v10 = [v9 activeStoreAccount];

  v18.receiver = v2;
  v18.super_class = ObjectType;
  v11 = objc_msgSendSuper2(&v18, "initWithBag:account:clientInfo:", v8, v10, 0);

  v12 = v11;
  [v12 setDelegate:v12];
  sub_8394C(v13);
  v15 = v14;
  v16 = [v12 loadURL:v14];

  (*(v7 + 8))(a1, v6);
  return v12;
}

uint64_t type metadata accessor for WebViewController(uint64_t a1)
{
  result = qword_CBE28;
  if (!qword_CBE28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_7B4FC(uint64_t a1)
{
  result = sub_839CC();
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

void sub_7B6F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_838CC();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

void sub_7B904(void *a1, uint64_t a2, uint64_t a3, const char **a4, SEL *a5)
{
  v12.receiver = a1;
  v12.super_class = swift_getObjectType();
  v8 = *a4;
  v9 = v12.receiver;
  objc_msgSendSuper2(&v12, v8, a3);
  v10 = [objc_opt_self() sharedInstance];
  if (v10)
  {
    v11 = v10;
    [v10 *a5];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_7BB90()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_7BBE4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_7BC14(uint64_t a1, unsigned __int8 a2)
{
  sub_8446C();
}

Swift::Int sub_7BD68(uint64_t a1, unsigned __int8 a2)
{
  sub_84CCC();
  sub_8446C();

  return sub_84D0C();
}

Swift::Int sub_7BED0()
{
  sub_84CCC();
  sub_8446C();
  return sub_84D0C();
}

Swift::Int sub_7BF34(uint64_t a1)
{
  sub_84CCC();
  sub_8446C();
  return sub_84D0C();
}

uint64_t sub_7BF80@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v7._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_B4960;
  v7._object = v3;
  v5 = sub_84B5C(v4, v7);

  *a2 = v5 != 0;
  return result;
}

unint64_t FigaroEventBuilding.build()(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = *(a1 - 8);
  v6 = __chkstk_darwin(a1);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v33 - v9;
  sub_837BC();
  swift_allocObject();
  sub_837AC();
  v25 = sub_8379C();
  v27 = v26;

  v28 = objc_opt_self();
  isa = sub_839FC().super.isa;
  v37[0] = 0;
  v30 = [v28 JSONObjectWithData:isa options:4 error:v37];

  v31 = v37[0];
  if (v30)
  {
    sub_8495C();
    swift_unknownObjectRelease();
    sub_381F8(v38, v37);
    sub_2805C(&qword_CBEC0, "^Y");
    if (swift_dynamicCast())
    {
      sub_371A8(v38);
      sub_3BB74(v25, v27);
      return v36;
    }

    else
    {
      v23 = sub_42E8C(_swiftEmptyArrayStorage);
      sub_3BB74(v25, v27);
      sub_371A8(v38);
    }
  }

  else
  {
    v32 = v31;
    sub_838DC();

    swift_willThrow();
    sub_3BB74(v25, v27);
    v35 = v8;
    if (qword_CA488 != -1)
    {
      swift_once();
    }

    v11 = sub_83D6C();
    sub_2C284(v11, qword_CB3B0);
    v12 = *(v5 + 16);
    v12(v10, v3, a1);
    swift_errorRetain();
    v13 = sub_83D4C();
    v14 = sub_847AC();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v38[0] = v34;
      *v15 = 136315394;
      v12(v35, v10, a1);
      v16 = sub_843FC();
      v18 = v17;
      (*(v5 + 8))(v10, a1);
      v19 = sub_3A93C(v16, v18, v38);

      *(v15 + 4) = v19;
      *(v15 + 12) = 2080;
      swift_getErrorValue();
      v20 = sub_84C5C();
      v22 = sub_3A93C(v20, v21, v38);

      *(v15 + 14) = v22;
      _os_log_impl(&dword_0, v13, v14, "Unable to build %s due to error: %s", v15, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      (*(v5 + 8))(v10, a1);
    }

    v23 = sub_42E8C(_swiftEmptyArrayStorage);
  }

  return v23;
}

JSApp::FigaroClickEvent::ActionContext_optional __swiftcall FigaroClickEvent.ActionContext.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v8._countAndFlagsBits = rawValue._countAndFlagsBits;
  v3 = v1;
  v4._rawValue = &off_B4998;
  v8._object = object;
  v5 = sub_84B5C(v4, v8);

  v7 = 4;
  if (v5 < 4)
  {
    v7 = v5;
  }

  *v3 = v7;
  return result;
}

unint64_t FigaroClickEvent.ActionContext.rawValue.getter()
{
  v1 = 0x68536E6F69746361;
  v2 = 0x6553736569726553;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000010;
  }

  if (*v0)
  {
    v1 = 0x736569726553;
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

Swift::Int sub_7C5C4()
{
  sub_84CCC();
  sub_8446C();

  return sub_84D0C();
}

uint64_t sub_7C698(uint64_t a1)
{
  sub_8446C();
}

Swift::Int sub_7C758(uint64_t a1)
{
  sub_84CCC();
  sub_8446C();

  return sub_84D0C();
}

void sub_7C834(unint64_t *a1@<X8>)
{
  v2 = 0xEB00000000746565;
  v3 = 0x68536E6F69746361;
  v4 = 0xEC0000006C6C4165;
  v5 = 0x6553736569726553;
  if (*v1 != 2)
  {
    v5 = 0xD000000000000010;
    v4 = 0x800000000009B990;
  }

  if (*v1)
  {
    v3 = 0x736569726553;
    v2 = 0xE600000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

JSApp::FigaroClickEvent::Location::Type_optional __swiftcall FigaroClickEvent.Location.Type.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v8._countAndFlagsBits = rawValue._countAndFlagsBits;
  v3 = v1;
  v4._rawValue = &off_B4A18;
  v8._object = object;
  v5 = sub_84B5C(v4, v8);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *v3 = v7;
  return result;
}

uint64_t FigaroClickEvent.Location.Type.rawValue.getter()
{
  if (*v0)
  {
    return 0x6D657449626174;
  }

  else
  {
    return 0x6E6F74747562;
  }
}

uint64_t sub_7C9B0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6D657449626174;
  }

  else
  {
    v3 = 0x6E6F74747562;
  }

  if (v2)
  {
    v4 = 0xE600000000000000;
  }

  else
  {
    v4 = 0xE700000000000000;
  }

  if (*a2)
  {
    v5 = 0x6D657449626174;
  }

  else
  {
    v5 = 0x6E6F74747562;
  }

  if (*a2)
  {
    v6 = 0xE700000000000000;
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
    v8 = sub_84BEC();
  }

  return v8 & 1;
}

Swift::Int sub_7CA54()
{
  sub_84CCC();
  sub_8446C();

  return sub_84D0C();
}

uint64_t sub_7CAD4(uint64_t a1)
{
  sub_8446C();
}

Swift::Int sub_7CB40(uint64_t a1)
{
  sub_84CCC();
  sub_8446C();

  return sub_84D0C();
}

uint64_t sub_7CBBC@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v8._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_B4A18;
  v8._object = v3;
  v5 = sub_84B5C(v4, v8);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_7CC1C(uint64_t *a1@<X8>)
{
  v2 = 0x6E6F74747562;
  if (*v1)
  {
    v2 = 0x6D657449626174;
  }

  v3 = 0xE600000000000000;
  if (*v1)
  {
    v3 = 0xE700000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

void __swiftcall FigaroClickEvent.Location.init(adamId:name:locationPosition:locationType:)(JSApp::FigaroClickEvent::Location *__return_ptr retstr, Swift::String_optional adamId, Swift::String_optional name, Swift::Int locationPosition, JSApp::FigaroClickEvent::Location::Type locationType)
{
  v5 = *locationType;
  retstr->adamId = adamId;
  retstr->name = name;
  retstr->locationPosition = locationPosition;
  retstr->locationType = v5;
}

unint64_t sub_7CCC0()
{
  v1 = 0x64496D616461;
  v2 = 0xD000000000000010;
  if (*v0 != 2)
  {
    v2 = 0x6E6F697461636F6CLL;
  }

  if (*v0)
  {
    v1 = 1701667182;
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

uint64_t sub_7CD3C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_7E8E8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_7CD7C(uint64_t a1)
{
  v2 = sub_7DC44();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_7CDB8(uint64_t a1)
{
  v2 = sub_7DC44();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t FigaroClickEvent.Location.encode(to:)(void *a1)
{
  v3 = sub_2805C(&qword_CBEC8, "bY");
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v11 - v5;
  v7 = *(v1 + 16);
  v14 = *(v1 + 24);
  v15 = v7;
  v13 = *(v1 + 32);
  v12 = *(v1 + 40);
  sub_40E4C(a1, a1[3]);
  sub_7DC44();
  sub_84D1C();
  v21 = 0;
  v8 = v16;
  sub_84B6C();
  if (!v8)
  {
    v9 = v12;
    v20 = 1;
    sub_84B6C();
    v19 = 2;
    sub_84B8C();
    v18 = v9;
    v17 = 3;
    sub_7DC98();
    sub_84B9C();
  }

  return (*(v4 + 8))(v6, v3);
}

JSApp::FigaroClickEvent::TargetType_optional __swiftcall FigaroClickEvent.TargetType.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v8._countAndFlagsBits = rawValue._countAndFlagsBits;
  v3 = v1;
  v4._rawValue = &off_B4A68;
  v8._object = object;
  v5 = sub_84B5C(v4, v8);

  v7 = 4;
  if (v5 < 4)
  {
    v7 = v5;
  }

  *v3 = v7;
  return result;
}

uint64_t FigaroClickEvent.TargetType.rawValue.getter()
{
  v1 = 0x6E6F74747562;
  v2 = 0x7369685464616572;
  if (*v0 != 2)
  {
    v2 = 0x776F6853746E6F64;
  }

  if (*v0)
  {
    v1 = 0x6D657449626174;
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

Swift::Int sub_7D114()
{
  sub_84CCC();
  sub_8446C();

  return sub_84D0C();
}

uint64_t sub_7D1D4(uint64_t a1)
{
  sub_8446C();
}

Swift::Int sub_7D280(uint64_t a1)
{
  sub_84CCC();
  sub_8446C();

  return sub_84D0C();
}

void sub_7D348(uint64_t *a1@<X8>)
{
  v2 = 0xE600000000000000;
  v3 = 0x6E6F74747562;
  v4 = 0x7369685464616572;
  if (*v1 != 2)
  {
    v4 = 0x776F6853746E6F64;
  }

  if (*v1)
  {
    v3 = 0x6D657449626174;
    v2 = 0xE700000000000000;
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
    v2 = 0xE800000000000000;
  }

  *a1 = v5;
  a1[1] = v2;
}

uint64_t FigaroClickEvent.actionType.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  a1[1] = v2;
}

uint64_t FigaroClickEvent.actionURLString.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t FigaroClickEvent.targetId.getter()
{
  v1 = *(v0 + 56);

  return v1;
}

unint64_t sub_7D4D0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_7EA54(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_7D500(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xED0000747865746ELL;
  v4 = 0x6F436E6F69746361;
  v5 = 0xE800000000000000;
  v6 = 0x6449746567726174;
  if (v2 != 6)
  {
    v6 = 0x7954746567726174;
    v5 = 0xEA00000000006570;
  }

  v7 = 0x707954746E657665;
  v8 = 0xE800000000000000;
  if (v2 == 4)
  {
    v8 = 0xE900000000000065;
  }

  else
  {
    v7 = 0x6E6F697461636F6CLL;
  }

  if (*v1 <= 5u)
  {
    v6 = v7;
    v5 = v8;
  }

  v9 = 0x79546E6F69746361;
  v10 = 0xE90000000000006CLL;
  if (v2 == 2)
  {
    v10 = 0xEA00000000006570;
  }

  else
  {
    v9 = 0x72556E6F69746361;
  }

  if (*v1)
  {
    v4 = 0x65446E6F69746361;
    v3 = 0xED0000736C696174;
  }

  if (*v1 > 1u)
  {
    v4 = v9;
    v3 = v10;
  }

  if (*v1 <= 3u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 3u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

uint64_t sub_7D624()
{
  v1 = *v0;
  v2 = 0x6F436E6F69746361;
  v3 = 0x6449746567726174;
  if (v1 != 6)
  {
    v3 = 0x7954746567726174;
  }

  v4 = 0x707954746E657665;
  if (v1 != 4)
  {
    v4 = 0x6E6F697461636F6CLL;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x79546E6F69746361;
  if (v1 != 2)
  {
    v5 = 0x72556E6F69746361;
  }

  if (*v0)
  {
    v2 = 0x65446E6F69746361;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_7D744@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_7EA54(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_7D778(uint64_t a1)
{
  v2 = sub_7DCEC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_7D7B4(uint64_t a1)
{
  v2 = sub_7DCEC();

  return CodingKey.debugDescription.getter(a1, v2);
}

__n128 FigaroClickEvent.init(actionContext:actionDetails:actionType:actionURLString:locations:targetId:targetType:)@<Q0>(unsigned __int8 *a1@<X0>, unint64_t a2@<X1>, __n128 *a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X6>, unint64_t a8@<X7>, __n128 *a9@<X8>, unsigned __int8 *a10)
{
  v10 = *a10;
  a9->n128_u8[0] = *a1;
  a9->n128_u64[1] = a2;
  result = *a3;
  a9[1] = *a3;
  a9[2].n128_u64[0] = a4;
  a9[2].n128_u64[1] = a5;
  a9[3].n128_u64[0] = a6;
  a9[3].n128_u64[1] = a7;
  a9[4].n128_u64[0] = a8;
  a9[4].n128_u8[8] = v10;
  return result;
}

uint64_t FigaroClickEvent.encode(to:)(void *a1)
{
  v3 = sub_840BC();
  v33 = *(v3 - 8);
  v34 = v3;
  __chkstk_darwin(v3);
  v5 = v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2805C(&qword_CBEE0, &qword_A2430);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v26 - v8;
  v10 = *v1;
  v11 = *(v1 + 1);
  v30 = *(v1 + 2);
  v31 = v11;
  v12 = *(v1 + 4);
  v32 = *(v1 + 3);
  v13 = *(v1 + 6);
  v28 = *(v1 + 5);
  v29 = v12;
  v14 = *(v1 + 8);
  v26[2] = *(v1 + 7);
  v27 = v13;
  v26[1] = v14;
  v15 = v1[72];
  v16 = a1[3];
  v17 = a1;
  v19 = v18;
  sub_40E4C(v17, v16);
  sub_7DCEC();
  sub_84D1C();
  LOBYTE(v36) = v10;
  v38 = 0;
  sub_7DD40();
  v20 = v35;
  sub_84B9C();
  if (!v20)
  {
    LODWORD(v35) = v15;
    v22 = v31;
    v26[0] = v5;
    v24 = v33;
    v23 = v34;
    LOBYTE(v36) = 2;
    sub_84B7C();
    LOBYTE(v36) = 3;
    sub_84B6C();
    LOBYTE(v36) = 4;
    sub_7DD94();
    sub_84B9C();
    v36 = v27;
    v38 = 5;
    sub_2805C(&qword_CBF00, &qword_A2438);
    sub_7DDE8();
    sub_84B9C();
    LOBYTE(v36) = 6;
    sub_84B7C();
    LOBYTE(v36) = v35;
    v38 = 7;
    sub_7DEC0();
    sub_84B9C();
    v37 = sub_2805C(&qword_CB600, &qword_A2440);
    v36 = v22;

    v25 = v26[0];
    sub_840AC();
    LOBYTE(v36) = 1;
    sub_7DF14();
    sub_84B9C();
    (*(v24 + 8))(v25, v23);
  }

  return (*(v7 + 8))(v9, v19);
}

unint64_t sub_7DC44()
{
  result = qword_CBED0;
  if (!qword_CBED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_CBED0);
  }

  return result;
}

unint64_t sub_7DC98()
{
  result = qword_CBED8;
  if (!qword_CBED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_CBED8);
  }

  return result;
}

unint64_t sub_7DCEC()
{
  result = qword_CBEE8;
  if (!qword_CBEE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_CBEE8);
  }

  return result;
}

unint64_t sub_7DD40()
{
  result = qword_CBEF0;
  if (!qword_CBEF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_CBEF0);
  }

  return result;
}

unint64_t sub_7DD94()
{
  result = qword_CBEF8;
  if (!qword_CBEF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_CBEF8);
  }

  return result;
}

unint64_t sub_7DDE8()
{
  result = qword_CBF08;
  if (!qword_CBF08)
  {
    sub_280F0(&qword_CBF00, &qword_A2438);
    sub_7DE6C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_CBF08);
  }

  return result;
}

unint64_t sub_7DE6C()
{
  result = qword_CBF10;
  if (!qword_CBF10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_CBF10);
  }

  return result;
}

unint64_t sub_7DEC0()
{
  result = qword_CBF18;
  if (!qword_CBF18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_CBF18);
  }

  return result;
}

unint64_t sub_7DF14()
{
  result = qword_CBF20;
  if (!qword_CBF20)
  {
    sub_840BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_CBF20);
  }

  return result;
}

unint64_t sub_7DF70()
{
  result = qword_CBF28;
  if (!qword_CBF28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_CBF28);
  }

  return result;
}

unint64_t sub_7DFC8()
{
  result = qword_CBF30;
  if (!qword_CBF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_CBF30);
  }

  return result;
}

unint64_t sub_7E020()
{
  result = qword_CBF38;
  if (!qword_CBF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_CBF38);
  }

  return result;
}

unint64_t sub_7E074(uint64_t a1)
{
  result = sub_7E09C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_7E09C()
{
  result = qword_CBF40;
  if (!qword_CBF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_CBF40);
  }

  return result;
}

__n128 sub_7E0F0(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_7E0FC(uint64_t a1, unsigned int a2)
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

uint64_t sub_7E14C(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_7E1A0(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_7E1B8(void *result, int a2)
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

__n128 sub_7E1E8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 57) = *(a2 + 57);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_7E20C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 73))
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

uint64_t sub_7E254(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 73) = 1;
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

    *(result + 73) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_7E2C8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_7E2DC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 41))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_7E338(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FigaroClickEvent.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FigaroClickEvent.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_7E530(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_7E5C0(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_7E684()
{
  result = qword_CBF48;
  if (!qword_CBF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_CBF48);
  }

  return result;
}

unint64_t sub_7E6DC()
{
  result = qword_CBF50;
  if (!qword_CBF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_CBF50);
  }

  return result;
}

unint64_t sub_7E734()
{
  result = qword_CBF58;
  if (!qword_CBF58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_CBF58);
  }

  return result;
}

unint64_t sub_7E78C()
{
  result = qword_CBF60;
  if (!qword_CBF60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_CBF60);
  }

  return result;
}

unint64_t sub_7E7E4()
{
  result = qword_CBF68;
  if (!qword_CBF68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_CBF68);
  }

  return result;
}

unint64_t sub_7E83C()
{
  result = qword_CBF70;
  if (!qword_CBF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_CBF70);
  }

  return result;
}

unint64_t sub_7E894()
{
  result = qword_CBF78;
  if (!qword_CBF78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_CBF78);
  }

  return result;
}

uint64_t sub_7E8E8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x64496D616461 && a2 == 0xE600000000000000;
  if (v4 || (sub_84BEC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (sub_84BEC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x800000000009E440 == a2 || (sub_84BEC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E6F697461636F6CLL && a2 == 0xEC00000065707954)
  {

    return 3;
  }

  else
  {
    v6 = sub_84BEC();

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

unint64_t sub_7EA54(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_B4AE8;
  v6._object = a2;
  v4 = sub_84B5C(v3, v6);

  if (v4 >= 8)
  {
    return 8;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_7EAA0()
{
  result = qword_CBF80;
  if (!qword_CBF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_CBF80);
  }

  return result;
}

unint64_t sub_7EAF4()
{
  result = qword_CBF88;
  if (!qword_CBF88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_CBF88);
  }

  return result;
}

unint64_t sub_7EB48()
{
  result = qword_CBF90;
  if (!qword_CBF90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_CBF90);
  }

  return result;
}

unint64_t sub_7EB9C()
{
  result = qword_CBF98;
  if (!qword_CBF98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_CBF98);
  }

  return result;
}

id sub_7ED38(id a1, void *a2, int a3, int a4)
{
  v7 = a2;
  v24 = a1;
  v22 = v7;
  if (a1)
  {
    v8 = v7;
    a1 = objc_alloc_init(NSMutableDictionary);
    v9 = &off_C9380;
    if (!a4)
    {
      v9 = &off_C9388;
    }

    v23 = *v9;
    if (a4)
    {
      v10 = +[BUAppGroup books];
      v11 = [v10 userDefaults];
    }

    else
    {
      v11 = +[NSUserDefaults standardUserDefaults];
    }

    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v12 = v8;
    v13 = [v12 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v26;
      do
      {
        v16 = 0;
        do
        {
          if (*v26 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v25 + 1) + 8 * v16);
          v18 = [v11 objectForKey:v17];
          if (v18)
          {
            [a1 setObject:v18 forKey:v17];
            if (!a3)
            {
              goto LABEL_15;
            }

LABEL_14:
            [v11 addObserver:v24 forKeyPath:v17 options:1 context:v23];
            goto LABEL_15;
          }

          v19 = +[NSNull null];
          [a1 setObject:v19 forKey:v17];

          if (a3)
          {
            goto LABEL_14;
          }

LABEL_15:

          v16 = v16 + 1;
        }

        while (v14 != v16);
        v20 = [v12 countByEnumeratingWithState:&v25 objects:v29 count:16];
        v14 = v20;
      }

      while (v20);
    }
  }

  return a1;
}

void sub_7EF64(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_fault_impl(&dword_0, a2, OS_LOG_TYPE_FAULT, "%@", &v2, 0xCu);
}

void sub_7F048(void *a1, NSObject *a2)
{
  v3 = [a1 context];
  v4 = 138412290;
  v5 = v3;
  _os_log_fault_impl(&dword_0, a2, OS_LOG_TYPE_FAULT, "JS code error: Some native JS API that uses globalThis.App as the owner for JSManagedValue is called too early, before JS evaluation is complete. Context: %@", &v4, 0xCu);
}

void sub_7F304(uint64_t a1, NSObject *a2)
{
  v2 = 136315394;
  v3 = "[JSAMetricsAppLaunchEvent metricsDictionary]";
  v4 = 2112;
  v5 = a1;
  _os_log_debug_impl(&dword_0, a2, OS_LOG_TYPE_DEBUG, "%s: %@", &v2, 0x16u);
}

void sub_7F390(int a1, NSObject *a2)
{
  v2 = 136315394;
  v3 = "[JSAMetricsAppLaunchEvent metricsDictionary]_block_invoke";
  v4 = 1026;
  v5 = a1;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "%s: Could not read processStartTime, reason: %{public}d", &v2, 0x12u);
}

id sub_7F41C(void *a1)
{
  if (a1)
  {
    a1 = +[UIScreen mainScreen];
    v1 = vars8;
  }

  return a1;
}

NSMutableDictionary *sub_7F5B0(uint64_t a1, void *a2)
{
  if (a1)
  {
    v2 = a2;
    v3 = objc_opt_new();
    [v3 setValue:kSecClassGenericPassword forKey:kSecClass];
    [v3 setValue:v2 forKey:kSecAttrService];

    [v3 setValue:kSecAttrAccessibleAfterFirstUnlockThisDeviceOnly forKey:kSecAttrAccessible];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void sub_7F660(uint64_t a1, void *a2)
{
  v2 = sub_7F5B0(a1, a2);
  result = 0;
  if (!SecItemCopyMatching(v2, &result))
  {
    SecItemDelete(v2);
  }
}

void sub_7F6AC(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "Only non-empty string is allowed for request header or URL param keys. Dropping this key: %@.", &v2, 0xCu);
}

void sub_7F724(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "Only string is allowed for request header or URL param values. Dropping this value: %@.", &v2, 0xCu);
}

void sub_7F79C(uint64_t a1)
{
  if (a1)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_AED0;
    block[3] = &unk_B20D8;
    block[4] = a1;
    dispatch_async(&_dispatch_main_q, block);
  }
}

void sub_7FBFC(uint64_t a1)
{
  if (a1)
  {
    v2 = +[NSUserDefaults standardUserDefaults];
    v3 = [v2 objectForKey:@"ScriptingLocalStorage"];

    if (v3)
    {
      v5 = JSALog(v4);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "[JSALocalStorage] Migrating from standard user defaults to dedicated app group user defaults", buf, 2u);
      }

      [*(a1 + 16) setObject:v3 forKey:@"ScriptingLocalStorage"];
      v6 = +[NSUserDefaults standardUserDefaults];
      [v6 removeObjectForKey:@"ScriptingLocalStorage"];
    }

    v7 = +[NSUserDefaults bu_groupUserDefaults];
    v8 = [v7 objectForKey:@"ScriptingLocalStorage"];

    if (v8)
    {
      v10 = JSALog(v9);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *v12 = 0;
        _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "[JSALocalStorage] Migrating from default app group user defaults to dedicated app group user defaults", v12, 2u);
      }

      [*(a1 + 16) setObject:v8 forKey:@"ScriptingLocalStorage"];
      v11 = +[NSUserDefaults bu_groupUserDefaults];
      [v11 removeObjectForKey:@"ScriptingLocalStorage"];
    }
  }
}

void sub_7FD90(uint64_t a1, void *a2)
{
  v6 = a2;
  if (a1)
  {
    os_unfair_lock_lock((a1 + 8));
    v3 = *(a1 + 24);
    if (!v3 || ([v3 isEqual:v6] & 1) == 0)
    {
      v4 = [v6 mutableCopy];
      v5 = *(a1 + 24);
      *(a1 + 24) = v4;
    }

    os_unfair_lock_unlock((a1 + 8));
  }
}

void sub_7FE10(uint64_t a1)
{
  if (a1)
  {
    os_unfair_lock_lock((a1 + 8));
    v2 = [*(a1 + 24) copy];
    os_unfair_lock_unlock((a1 + 8));
    [*(a1 + 16) setObject:v2 forKey:@"ScriptingLocalStorage"];
    [*(a1 + 16) synchronize];
  }
}

void sub_7FED8(uint64_t a1, uint64_t a2)
{
  objc_opt_class();
  v3 = [*(a1 + 32) objectForKeyedSubscript:NSKeyValueChangeNewKey];
  v4 = BUDynamicCast();
  v5 = v4;
  v6 = &__NSDictionary0__struct;
  if (v4)
  {
    v6 = v4;
  }

  v7 = v6;

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  sub_7FD90(WeakRetained, v7);
}

void sub_7FFD8(uint64_t a1, void *a2)
{
  v3 = a2;
  os_unfair_lock_lock((a1 + 8));
  [*(a1 + 24) removeObjectForKey:v3];

  os_unfair_lock_unlock((a1 + 8));

  sub_7FE10(a1);
}

void sub_8005C(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "[JSAFoundation _startTimer:timeInMS:repeating:]";
  sub_DD44(&dword_0, a1, a3, "%{public}s Starting timer with empty handler", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_800D4(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "[JSAFoundation _startTimer:timeInMS:repeating:]";
  sub_DD44(&dword_0, a1, a3, "%{public}s Starting timer with invalid timeout", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_8014C(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = a1;
  sub_DD44(&dword_0, a2, a3, "JSAFoundation Unknown timer: %@", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_801B8(void *a1, void *a2, id *a3)
{
  if (a1)
  {
    *a3 = _NSConcreteStackBlock;
    a3[1] = 3221225472;
    a3[2] = sub_D9AC;
    a3[3] = &unk_B20D8;
    a3[4] = a1;
    dispatch_async(&_dispatch_main_q, a3);
  }

  objc_sync_exit(a2);
}

id sub_8025C(void *a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (a1)
  {
    v6 = [a1 bag];
    switch(a3)
    {
      case 0:
        v7 = [sub_FBA0() arrayForKey:?];
        v8 = v7;
        v30 = 0;
        v9 = &v30;
        v10 = &v30;
        break;
      case 1:
        v7 = [sub_FBA0() BOOLForKey:?];
        v8 = v7;
        v29 = 0;
        v9 = &v29;
        v10 = &v29;
        break;
      case 2:
        v7 = [sub_FBA0() doubleForKey:?];
        v8 = v7;
        v27 = 0;
        v9 = &v27;
        v10 = &v27;
        break;
      case 3:
        v7 = [sub_FBA0() integerForKey:?];
        v8 = v7;
        v26 = 0;
        v9 = &v26;
        v10 = &v26;
        break;
      case 5:
        v7 = [sub_FBA0() URLForKey:?];
        v8 = v7;
        v25 = 0;
        v9 = &v25;
        v10 = &v25;
        break;
      case 6:
        v7 = [sub_FBA0() dictionaryForKey:?];
        v8 = v7;
        v28 = 0;
        v9 = &v28;
        v10 = &v28;
        break;
      default:
        v7 = [sub_FBA0() stringForKey:?];
        v8 = v7;
        v24 = 0;
        v9 = &v24;
        v10 = &v24;
        break;
    }

    v11 = [v7 jsa_valueWithError:v10];
    v12 = *v9;

    if (v12)
    {
      v14 = [v12 domain];
      if ([v14 isEqualToString:AMSErrorDomain])
      {
        v15 = [v12 code];

        if (v15 == &stru_B8.segname[4])
        {
          v17 = JSALog(v16);
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            v18 = [v12 localizedFailureReason];
            sub_FBAC();
            v33 = v19;
            _os_log_impl(&dword_0, v17, OS_LOG_TYPE_DEFAULT, "Missing key %{public}@ in bag, error=%{public}@", buf, 0x16u);
          }

          goto LABEL_20;
        }
      }

      else
      {
      }

      v17 = JSALog(v16);
      if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
LABEL_20:

        goto LABEL_21;
      }

      sub_FBAC();
      v33 = v12;
      v20 = "An error occurred while trying to get the bag key %{public}@, error=%{public}@";
      v21 = v17;
      v22 = 22;
    }

    else
    {
      if (v11)
      {
LABEL_21:

        goto LABEL_22;
      }

      v17 = JSALog(v13);
      if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_20;
      }

      *buf = 138543362;
      v32 = v5;
      v20 = "The following key is not in the bag: %{public}@";
      v21 = v17;
      v22 = 12;
    }

    _os_log_error_impl(&dword_0, v21, OS_LOG_TYPE_ERROR, v20, buf, v22);
    goto LABEL_20;
  }

  v11 = 0;
LABEL_22:

  return v11;
}

void sub_80578(NSObject *a1, char *a2, id *from, void *a4)
{
  *a2 = _NSConcreteStackBlock;
  *(a2 + 1) = 3221225472;
  *(a2 + 2) = sub_F790;
  *(a2 + 3) = &unk_B23B0;
  *a4 = a2 + 32;
  objc_copyWeak(a2 + 4, from);
  v6 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_USER_INTERACTIVE, 0, a2);
  dispatch_async(a1, v6);
}

void sub_80658(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "could not create keyed archive: %@", &v2, 0xCu);
}

void sub_806D0(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "could not write cache to disk (error): %@", &v2, 0xCu);
}

void sub_80748(uint64_t a1)
{
  if (a1)
  {
    v2 = [[NSThread alloc] initWithTarget:a1 selector:"_scriptingThreadMain" object:0];
    [v2 setQualityOfService:33];
    [v2 setName:*(a1 + 8)];
    [v2 start];
  }
}

void sub_807CC(os_log_t log)
{
  v1 = 136315138;
  v2 = "[JSAThread enqueueBlockSync:]";
  _os_log_fault_impl(&dword_0, log, OS_LOG_TYPE_FAULT, "%s must not be run on JSAThread!", &v1, 0xCu);
}

void sub_80850(void *a1)
{
  if (a1)
  {
    [a1 cancel];
    v2 = [a1 onTimeoutManagedValue];

    if (v2)
    {
      v4 = +[JSABridge sharedInstance];
      v3 = [a1 onTimeoutManagedValue];
      [v4 enqueueManagedValueCall:v3 arguments:0 file:@"JSATimer.m" line:76];
    }
  }
}

id *sub_80900(id *a1)
{
  v1 = a1;
  if (a1)
  {
    v2 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [a1[1] count]);
    v3 = v1[1];
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_12640;
    v5[3] = &unk_B2AF8;
    v1 = v2;
    v6 = v1;
    [v3 enumerateKeysAndObjectsUsingBlock:v5];
  }

  return v1;
}

void sub_809C8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v8 = JSALog(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = *(a1 + 40);
      v10 = *(*(a1 + 32) + 64);
      *buf = 136446978;
      v45 = "[JSAStoreHTTPRequest _enqueue]_block_invoke_3";
      v46 = 2114;
      v47 = v10;
      v48 = 2112;
      v49 = v9;
      v50 = 2114;
      v51 = v7;
      _os_log_error_impl(&dword_0, v8, OS_LOG_TYPE_ERROR, "%{public}s %{public}@ request to %@ failed with error: %{public}@", buf, 0x2Au);
    }
  }

  v11 = JSALog(v6);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = *(a1 + 40);
    v13 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v5 responseStatusCode]);
    v14 = [v5 data];
    v15 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v14 length]);
    v16 = [v5 logUUID];
    v17 = [v5 responseCorrelationId];
    *buf = 138413314;
    v45 = v12;
    v46 = 2112;
    v47 = v13;
    v48 = 2112;
    v49 = v15;
    v50 = 2114;
    v51 = v16;
    v52 = 2114;
    v53 = v17;
    _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "Response for %@: status=%@, size=%@, CFNetworkId=%{public}@, correlationId=%{public}@", buf, 0x34u);
  }

  v18 = *(a1 + 32);
  if (v18)
  {
    v19 = *(v18 + 32);
    *(v18 + 32) = 0;
  }

  v20 = objc_alloc_init(JSAStoreHTTPResponse);
  v21 = [v5 object];
  [(JSAStoreHTTPResponse *)v20 setOutput:v21];

  if (v7)
  {
    v42[0] = @"domain";
    v22 = [v7 domain];
    v43[0] = v22;
    v42[1] = @"code";
    v23 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v7 code]);
    v43[1] = v23;
    v42[2] = @"userInfo";
    v24 = [v7 userInfo];
    v43[2] = v24;
    v25 = [NSDictionary dictionaryWithObjects:v43 forKeys:v42 count:3];
    [(JSAStoreHTTPResponse *)v20 set_error:v25];
  }

  v26 = [v5 responseHeaders];
  v27 = v26;
  if (v26)
  {
    v28 = v26;
  }

  else
  {
    v28 = &__NSDictionary0__struct;
  }

  [(JSAStoreHTTPResponse *)v20 setHeaders:v28];

  [(JSAStoreHTTPResponse *)v20 setStatusCode:sub_80E64(*(a1 + 32), v5, v7)];
  v29 = sub_80FDC(*(a1 + 32), v5, v7);
  [(JSAStoreHTTPResponse *)v20 setPerformanceMetrics:v29];

  if (+[JSAOfflineCache generateCache])
  {
    v30 = +[_JSAStoreHTTPReqestOfflineCache sharedOfflineCache];
    v31 = [*(a1 + 40) absoluteString];
    [v30 setResponse:v20 forKey:v31];

    v32 = +[_JSAStoreHTTPReqestOfflineCache sharedOfflineCache];
    [v32 _saveOfflineCache:0];
  }

  v33 = *(a1 + 32);
  if (*(v33 + 96))
  {
    v34 = +[JSABridge sharedInstance];
    v35 = [*(a1 + 32) onResponse];
    v41 = v20;
    v36 = [NSArray arrayWithObjects:&v41 count:1];
    [v34 enqueueValueCall:v35 arguments:v36 file:@"JSAStoreHTTPRequest.m" line:719];

    v37 = *(a1 + 32);
    v38 = *(v37 + 96);
    *(v37 + 96) = 0;

    v33 = *(a1 + 32);
  }

  v39 = objc_retainBlock(*(v33 + 112));
  v40 = v39;
  if (v39)
  {
    (*(v39 + 2))(v39, v20);
  }
}

id sub_80E64(id a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (a1)
  {
    v8 = [v6 domain];
    v9 = v8;
    if (v8 == NSURLErrorDomain)
    {
      v10 = [v7 code];

      if (v10 == -1001)
      {
        a1 = &stru_338 + 76;
        goto LABEL_13;
      }
    }

    else
    {
    }

    v11 = [v7 domain];
    v12 = v11;
    if (v11 == AMSErrorDomain)
    {
      v13 = [v7 userInfo];
      v14 = AMSErrorUserInfoKeyStatusCode;
      v15 = [v13 objectForKeyedSubscript:AMSErrorUserInfoKeyStatusCode];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v17 = [v7 userInfo];
        v18 = [v17 objectForKeyedSubscript:v14];
        a1 = [v18 integerValue];

        goto LABEL_13;
      }
    }

    else
    {
    }

    if (v5)
    {
      a1 = [v5 responseStatusCode];
    }

    else
    {
      a1 = &stru_388 + 46;
    }
  }

LABEL_13:

  return a1;
}

id sub_80FDC(uint64_t a1, void *a2, uint64_t a3)
{
  if (a1)
  {
    v4 = [a2 taskMetrics];
    v5 = [v4 transactionMetrics];
    v6 = [v5 lastObject];

    if (!a3 || v6)
    {
      v8 = [v6 requestStartDate];
      [v8 timeIntervalSince1970];
      v10 = [NSNumber numberWithDouble:v9 * 1000.0];

      v11 = [v6 responseStartDate];
      [v11 timeIntervalSince1970];
      v13 = [NSNumber numberWithDouble:v12 * 1000.0];

      v14 = [v6 responseEndDate];
      [v14 timeIntervalSince1970];
      v16 = [NSNumber numberWithDouble:v15 * 1000.0];

      v19[0] = @"requestStartTime";
      v19[1] = @"responseStartTime";
      v20[0] = v10;
      v20[1] = v13;
      v20[2] = v16;
      v19[2] = @"responseEndTime";
      v19[3] = @"responseCached";
      v17 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v6 resourceFetchType] == &dword_0 + 3);
      v20[3] = v17;
      v7 = [NSDictionary dictionaryWithObjects:v20 forKeys:v19 count:4];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void sub_811E0()
{
  sub_14298();
  sub_7954();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_81250()
{
  sub_14298();
  sub_142A4();
  sub_142B0(&dword_0, v0, v1, "Could not decode cached response. jsonError: %{public}@, unarchiveError: %{public}@");
}

void sub_81300()
{
  sub_14298();
  sub_142A4();
  sub_142B0(&dword_0, v0, v1, "Unable to serialize offline cache response for key: %{public}@, error: %{public}@");
}

void sub_81370()
{
  sub_14298();
  sub_7954();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_813E0()
{
  sub_14298();
  sub_7954();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_81464(void ***a1, void *a2, void **a3, void *a4)
{
  v8 = sub_133DC(JSAStoreHTTPRequest);
  *a1 = _NSConcreteStackBlock;
  a1[1] = 3221225472;
  a1[2] = sub_134A8;
  a1[3] = &unk_B2128;
  a1[4] = a2;
  a1[5] = a3;
  dispatch_async(v8, a1);

  *a4 = a1[4];
}

void sub_81528(id *a1, NSObject *a2)
{
  v3 = [*a1 absoluteString];
  sub_14298();
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "request not found in offline cache: %{public}@", v4, 0xCu);
}

void sub_815C0()
{
  sub_142A4();
  sub_7954();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_81644()
{
  sub_142A4();
  sub_7954();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_81718(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v5 = v3;
    if (v3)
    {
      v3 = [[JSAFeedMetadata alloc] initWithDictionary:v3];
    }

    v4 = *(a1 + 56);
    *(a1 + 56) = v3;

    v3 = v5;
  }
}

void sub_81784(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = JSASignpostFeedController(v3);
    v6 = os_signpost_id_generate(v5);

    v8 = JSASignpostFeedController(v7);
    v9 = v8;
    if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_0, v9, OS_SIGNPOST_INTERVAL_BEGIN, v6, "Bridge Feed", "", buf, 2u);
    }

    +[JSABridge sharedInstance];
    objc_claimAutoreleasedReturnValue();
    sub_1EB78();
    v11 = 3221225472;
    v12 = sub_1D80C;
    v13 = &unk_B31B8;
    v14 = a1;
    v16 = v6;
    v15 = v4;
    [v9 enqueueBlock:v10 file:@"JSAFeedController.m" line:1032];
  }
}

void sub_818A8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = JSALog(v3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      v9 = "[JSAFeedController _reloadWithCompletion:]";
      v10 = 2048;
      v11 = a1;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "%{public}s %p: reload", buf, 0x16u);
    }

    sub_1EB9C();
    v6[1] = 3221225472;
    v6[2] = sub_15FB0;
    v6[3] = &unk_B2728;
    v6[4] = a1;
    v7 = v4;
    dispatch_async(&_dispatch_main_q, v6);
  }
}

void sub_819C8(uint64_t a1)
{
  if (a1)
  {
    +[JSABridge sharedInstance];
    objc_claimAutoreleasedReturnValue();
    v1 = [sub_1EBFC() feed];
    [sub_1EB68(v1 v2];
  }
}

void sub_81A4C(uint64_t a1)
{
  if (a1)
  {
    +[JSABridge sharedInstance];
    objc_claimAutoreleasedReturnValue();
    v1 = [sub_1EBFC() feed];
    [sub_1EB68(v1 v2];
  }
}

void sub_81AD0(uint64_t a1)
{
  if (a1)
  {
    +[JSABridge sharedInstance];
    objc_claimAutoreleasedReturnValue();
    v1 = [sub_1EBFC() feed];
    [sub_1EB68(v1 v2];
  }
}

void sub_81B54(uint64_t a1)
{
  if (a1)
  {
    +[JSABridge sharedInstance];
    objc_claimAutoreleasedReturnValue();
    v1 = [sub_1EBFC() feed];
    [sub_1EB68(v1 v2];
  }
}

void sub_81BD8(uint64_t a1)
{
  if (a1)
  {
    +[JSABridge sharedInstance];
    objc_claimAutoreleasedReturnValue();
    v1 = [sub_1EBFC() feed];
    [sub_1EB68(v1 v2];
  }
}

id sub_81C5C(id a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    if (qword_CC178 == -1)
    {
      if (v3)
      {
LABEL_4:
        v5 = [qword_CC170 objectForKeyedSubscript:v4];
        a1 = [v5 integerValue];

        goto LABEL_7;
      }
    }

    else
    {
      dispatch_once(&qword_CC178, &stru_B3200);
      if (v4)
      {
        goto LABEL_4;
      }
    }

    a1 = 0;
  }

LABEL_7:

  return a1;
}

void sub_81CF0(NSObject *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = [a1 dataSource];
    v5 = [v4 hostViewControllerForFeedController:a1];

    v6 = [v5 viewIfLoaded];
    v7 = [v6 window];
    v8 = [v7 windowScene];

    if (v8 && [v8 activationState])
    {
      if ([a1 feedBridged])
      {
        v9 = objc_retainBlock(v3);
        v10 = v9;
        if (v9)
        {
          (*(v9 + 2))(v9);
        }
      }
    }

    else
    {
      [a1 access];
      objc_claimAutoreleasedReturnValue();
      sub_1EB78();
      v12 = 3221225472;
      v13 = sub_1E504;
      v14 = &unk_B2100;
      v15 = v3;
      dispatch_async(a1, block);
    }
  }
}

void sub_81E30(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  sub_81AD0(WeakRetained);
}

void sub_81E70(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  sub_81B54(WeakRetained);
}

void sub_81EB0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  sub_81A4C(WeakRetained);
}

void sub_81EF0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  sub_81BD8(WeakRetained);
}

void sub_81F30(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = +[JSABridge sharedInstance];
    sub_1EB9C();
    v5[1] = 3221225472;
    v5[2] = sub_1CF68;
    v5[3] = &unk_B3168;
    v5[4] = a1;
    v6 = v3;
    [v4 enqueueBlock:v5 file:@"JSAFeedController.m" line:910];
  }
}

void sub_81FE8(void *a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *v8 = 136446466;
  *&v8[4] = "[JSAFeedController requestEntriesWithCompletion:]_block_invoke";
  *&v8[12] = 2048;
  *&v8[14] = *a1;
  sub_1EBD0(&dword_0, a2, a3, "%{public}s %p: bridged but no valid feed, why?", a5, a6, a7, a8, *v8, *&v8[8], *&v8[16]);
}

void sub_82194()
{
  v6 = 136446466;
  sub_1EBBC();
  sub_1EBD0(&dword_0, v0, v1, "%{public}s %p: Failed to take session assertion.", v2, v3, v4, v5, v6);
}

void sub_82208()
{
  v6 = 136446466;
  sub_1EBBC();
  sub_1EBD0(&dword_0, v0, v1, "%{public}s %p: Failed to take session assertion.", v2, v3, v4, v5, v6);
}

void sub_8227C()
{
  v6 = 136446466;
  sub_1EBBC();
  sub_1EBD0(&dword_0, v0, v1, "%{public}s %p: Failed to take session assertion.", v2, v3, v4, v5, v6);
}

void sub_822F0(id *a1, void *a2)
{
  *a1 = _NSConcreteStackBlock;
  a1[1] = 3221225472;
  a1[2] = sub_1DEF4;
  a1[3] = &unk_B2100;
  a1[4] = a2;
  dispatch_async(&_dispatch_main_q, a1);
}

void sub_82370(uint64_t a1, os_signpost_id_t a2)
{
  v3 = a1;
  v4 = JSASignpostFeedController(a1);
  v5 = v4;
  if ((v3 & 1) != 0 && os_signpost_enabled(v4))
  {
    *v6 = 0;
    _os_signpost_emit_with_name_impl(&dword_0, v5, OS_SIGNPOST_INTERVAL_END, a2, "Reload Metadata", "", v6, 2u);
  }
}

void sub_823F8(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "Incoming parameter is either UIViewController or NSDictionary. Makes no sense to create a BSUIFeedController with no options. viewControllerOrOptions=%@", &v2, 0xCu);
}

void sub_824F4(void *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = JSASignpostExecution(v3);
    v6 = os_signpost_id_generate(v5);

    v8 = JSASignpostExecution(v7);
    v9 = v8;
    if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_0, v9, OS_SIGNPOST_INTERVAL_BEGIN, v6, "Init JSAEnvironment", "", buf, 2u);
    }

    v10 = [a1 launchPackageProvisioner];
    v13 = _NSConcreteStackBlock;
    v14 = 3221225472;
    v15 = sub_1F4AC;
    v16 = &unk_B3370;
    v17 = a1;
    v18 = v4;
    [v10 provisionWithCompletionHandler:&v13];

    v11 = JSASignpostExecution([a1 setLaunchPackageProvisioner:{0, v13, v14, v15, v16, v17}]);
    v12 = v11;
    if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_0, v12, OS_SIGNPOST_INTERVAL_END, v6, "Init JSAEnvironment", "", buf, 2u);
    }
  }
}

void sub_8268C(void *a1, void *a2)
{
  if (a1)
  {
    v3 = [a2 dequeueAllRecords];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v4 = [v3 countByEnumeratingWithState:&v19 objects:v29 count:16];
    if (!v4)
    {
      goto LABEL_26;
    }

    v6 = v4;
    v7 = *v20;
    *&v5 = 136446722;
    v18 = v5;
    while (1)
    {
      v8 = 0;
      do
      {
        if (*v20 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v19 + 1) + 8 * v8);
        if ([v9 type] == &dword_0 + 1)
        {
          v10 = [v9 block];
          if (v10)
          {
            v11 = [a1 environment];
            v12 = [v11 context];
            (v10)[2](v10, v12);
            goto LABEL_10;
          }

          goto LABEL_15;
        }

        if ([v9 type] == &dword_0 + 2)
        {
          v10 = [v9 recordValue];
          v11 = [v9 arguments];
          if ([v10 isObject])
          {
            v13 = [v10 callWithArguments:v11];
          }

          goto LABEL_14;
        }

        if ([v9 type] == &dword_0 + 3)
        {
          v10 = [v9 recordValue];
          v11 = [v9 method];
          v12 = [v9 arguments];
          if ([v10 isObject])
          {
            v14 = [v10 hasProperty:v11];
            if (v14)
            {
              v15 = [v10 invokeMethod:v11 withArguments:v12];
            }

            else
            {
              v16 = JSALog(v14);
              if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
              {
                *buf = v18;
                v24 = "[JSABridge _processPendingExecutionRecordsForQueue:]";
                v25 = 2114;
                v26 = v11;
                v27 = 2114;
                v28 = v10;
                _os_log_error_impl(&dword_0, v16, OS_LOG_TYPE_ERROR, "%{public}s attempting to invoke method %{public}@ on %{public}@ that is unavailable", buf, 0x20u);
              }
            }
          }

LABEL_10:

LABEL_14:
LABEL_15:
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v17 = [v3 countByEnumeratingWithState:&v19 objects:v29 count:16];
      v6 = v17;
      if (!v17)
      {
LABEL_26:

        return;
      }
    }
  }
}

void sub_8293C(uint64_t a1)
{
  v2 = JSASignpostExecution(a1);
  v3 = os_signpost_id_generate(v2);

  v5 = JSASignpostExecution(v4);
  v6 = v5;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    if (*(a1 + 40))
    {
      v12 = @"YES";
    }

    else
    {
      v12 = @"NO";
    }

    LODWORD(v24) = 138412290;
    *(&v24 + 4) = v12;
    sub_217DC(&dword_0, v7, v8, v9, "Main Block", "sync: %@", v10, v11, v24, DWORD2(v24));
  }

  v13 = *(a1 + 32);
  v14 = [v13 generalExecutionRecordQueue];
  sub_8268C(v13, v14);

  v16 = JSASignpostExecution(v15);
  v17 = v16;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
  {
    LOWORD(v23) = 0;
    sub_21800(&dword_0, v18, v19, v20, "Main Block", "", v21, v22, v23);
  }
}

void sub_82A88(uint64_t a1)
{
  v2 = JSASignpostExecution(a1);
  v3 = os_signpost_id_generate(v2);

  v5 = JSASignpostExecution(v4);
  v6 = v5;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    if (*(a1 + 40))
    {
      v12 = @"YES";
    }

    else
    {
      v12 = @"NO";
    }

    LODWORD(v24) = 138412290;
    *(&v24 + 4) = v12;
    sub_217DC(&dword_0, v7, v8, v9, "Non-main Block", "sync: %@", v10, v11, v24, DWORD2(v24));
  }

  v13 = *(a1 + 32);
  v14 = [v13 generalExecutionRecordQueue];
  sub_8268C(v13, v14);

  v16 = JSASignpostExecution(v15);
  v17 = v16;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
  {
    LOWORD(v23) = 0;
    sub_21800(&dword_0, v18, v19, v20, "Non-main Block", "", v21, v22, v23);
  }
}

void sub_82C7C(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "[JSABridge checkForUpgradeWithCompletion:]_block_invoke";
  sub_DD44(&dword_0, a1, a3, "%{public}s failed to downloaded new package in the background", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_82CF4(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "[JSABridge upgradePackage:completion:]_block_invoke";
  sub_DD44(&dword_0, a1, a3, "%{public}s failed to provision package for upgrade", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_82DA0(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "[JSABridge _processPendingExecutionRecordsPrefersSync:]";
  sub_DD44(&dword_0, a1, a3, "%{public}s JSAThread took more than 10 seconds to process an enqueued block. There is a serious issue.", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_82E18(os_log_t log, char a2, os_signpost_id_t a3)
{
  if ((a2 & 1) != 0 && os_signpost_enabled(log))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_0, log, OS_SIGNPOST_INTERVAL_END, a3, "JSAThread Block", "", v5, 2u);
  }
}

void sub_82EA0(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "Invalid type for unhandled promise rejection handler: %@", &v2, 0xCu);
}

void sub_82F18(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "Failed to set unhandled promise rejection handler: %@", &v2, 0xCu);
}

void sub_8319C(os_log_t log)
{
  v1 = 136446210;
  v2 = "[JSAStore platform]";
  _os_log_error_impl(&dword_0, log, OS_LOG_TYPE_ERROR, "%{public}s unable to get the platform correctly", &v1, 0xCu);
}

void sub_83220(NSObject *a1, uint64_t a2, id *a3, void *a4)
{
  sub_265A0(a1, a2);
  *(v8 + 8) = 3221225472;
  *(v8 + 16) = sub_25DA0;
  *(v8 + 24) = &unk_B2CB8;
  objc_copyWeak((v8 + 40), v9);
  *(a2 + 32) = a4;
  v10 = a4;
  dispatch_async(a1, a2);

  objc_destroyWeak((a2 + 40));
  objc_destroyWeak(a3);
}

void sub_832C4(NSObject *a1, uint64_t a2, id *a3)
{
  sub_265A0(a1, a2);
  *(v6 + 8) = 3221225472;
  *(v6 + 16) = sub_25FA0;
  *(v6 + 24) = &unk_B23B0;
  objc_copyWeak((v6 + 32), v7);
  dispatch_async(a1, a2);

  objc_destroyWeak((a2 + 32));
  objc_destroyWeak(a3);
}

void sub_8334C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = *(a1 + 40);
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_27208;
    v6[3] = &unk_B2728;
    v6[4] = a1;
    v7 = v3;
    dispatch_async(v5, v6);
  }
}

void sub_833F4(uint64_t a1, uint64_t a2)
{
  v3 = JSALog(a1);
  if (sub_27AEC(v3))
  {
    v11 = 0;
    sub_27ACC(&dword_0, v4, v5, "[JSACookieStorage] Received account cookies changed notification", v6, v7, v8, v9, v11);
  }

  objc_opt_class();
  v10 = BUDynamicCast();
  if (v10)
  {
    sub_27B04();
  }
}

void sub_834CC()
{
  sub_27AAC();
  v3 = 3221225472;
  v4 = sub_26DF8;
  v5 = &unk_B20D8;
  v1 = *(v0 + 32);
  v6 = *(v0 + 40);
  sub_8334C(v1, v2);
}

id sub_8353C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v7 = &__NSArray0__struct;
    if (v5)
    {
      v7 = v5;
    }

    v8 = v7;

    v9 = [v6 host];
    if (([v9 hasPrefix:@"."] & 1) == 0)
    {
      v10 = [@"." stringByAppendingString:v9];

      v9 = v10;
    }

    v11 = [v6 path];
    v12 = [v6 scheme];
    v13 = [v12 isEqualToString:@"https"];

    sub_27AAC();
    v19 = 3221225472;
    v20 = sub_278C4;
    v21 = &unk_B3620;
    v24 = v13;
    v22 = v9;
    v23 = v11;
    v14 = v11;
    v15 = v9;
    v16 = [v8 ams_filterUsingTest:v18];
  }

  else
  {
    v8 = v5;
    v16 = 0;
  }

  return v16;
}