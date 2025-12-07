uint64_t __CFStringGetLongCharacterFromInlineBuffer(UniChar *buffer, int64_t a2, int64_t a3, int64_t *a4)
{
  if ((a3 & 0x8000000000000000) == 0)
  {
    v5 = a3;
    if (a3 < a2)
    {
      v8 = *(buffer + 20);
      if (v8 <= a3)
      {
        v11 = 0;
      }

      else
      {
        v9 = *(buffer + 17);
        if (v9)
        {
          v10 = *(v9 + 2 * *(buffer + 19) + 2 * a3);
        }

        else
        {
          v14 = *(buffer + 18);
          if (v14)
          {
            v10 = *(v14 + *(buffer + 19) + a3);
          }

          else
          {
            if (*(buffer + 22) <= a3 || (v15 = *(buffer + 21), v15 > a3))
            {
              v16 = a3 - 4;
              if (a3 < 4)
              {
                v16 = 0;
              }

              if (v16 + 64 < v8)
              {
                v8 = v16 + 64;
              }

              *(buffer + 21) = v16;
              *(buffer + 22) = v8;
              v32.length = v8 - v16;
              v32.location = *(buffer + 19) + v16;
              CFStringGetCharacters(*(buffer + 16), v32, buffer);
              v15 = *(buffer + 21);
            }

            v10 = buffer[v5 - v15];
          }
        }

        v11 = v10;
        if ((v10 & 0xFC00) != 0xD800 || a2 - 1 <= v5)
        {
          v12 = 1;
          if (v5 && (v10 & 0xFC00) == 0xDC00)
          {
            v18 = *(buffer + 20);
            if (v18 < v5)
            {
              goto LABEL_9;
            }

            v19 = v5 - 1;
            v20 = *(buffer + 17);
            if (v20)
            {
              v21 = *(v20 + 2 * *(buffer + 19) + 2 * v19);
            }

            else
            {
              v27 = *(buffer + 18);
              if (v27)
              {
                v21 = *(v27 + *(buffer + 19) + v19);
              }

              else
              {
                if (*(buffer + 22) < v5 || (v30 = *(buffer + 21), v30 >= v5))
                {
                  v31 = v5 - 5;
                  if (v19 < 4)
                  {
                    v31 = 0;
                  }

                  if (v31 + 64 < v18)
                  {
                    v18 = v31 + 64;
                  }

                  *(buffer + 21) = v31;
                  *(buffer + 22) = v18;
                  v34.length = v18 - v31;
                  v34.location = *(buffer + 19) + v31;
                  CFStringGetCharacters(*(buffer + 16), v34, buffer);
                  v30 = *(buffer + 21);
                }

                v21 = buffer[v19 - v30];
              }
            }

            if (v21 >> 10 != 54)
            {
              goto LABEL_9;
            }

            v11 = v11 + (v21 << 10) - 56613888;
            v12 = 2;
            --v5;
          }

LABEL_10:
          if (a4)
          {
            goto LABEL_11;
          }

          return v11;
        }

        v22 = v5 + 1;
        v23 = *(buffer + 20);
        if (v23 > v5 + 1)
        {
          v24 = *(buffer + 17);
          if (v24)
          {
            v25 = *(v24 + 2 * *(buffer + 19) + 2 * v22);
          }

          else
          {
            v26 = *(buffer + 18);
            if (v26)
            {
              v25 = *(v26 + *(buffer + 19) + v22);
            }

            else
            {
              if (*(buffer + 22) <= v22 || (v28 = *(buffer + 21), v28 > v22))
              {
                v29 = v5 - 3;
                if (v5 < 3)
                {
                  v29 = 0;
                }

                if (v29 + 64 < v23)
                {
                  v23 = v29 + 64;
                }

                *(buffer + 21) = v29;
                *(buffer + 22) = v23;
                v33.length = v23 - v29;
                v33.location = *(buffer + 19) + v29;
                CFStringGetCharacters(*(buffer + 16), v33, buffer);
                v28 = *(buffer + 21);
              }

              v25 = buffer[v22 - v28];
            }
          }

          if (v25 >> 10 == 55)
          {
            v11 = (v11 << 10) + v25 - 56613888;
            v12 = 2;
            goto LABEL_10;
          }
        }
      }

LABEL_9:
      v12 = 1;
      goto LABEL_10;
    }
  }

  v11 = 0;
  if (a4)
  {
    v12 = 0;
    v5 = -1;
LABEL_11:
    *a4 = v5;
    a4[1] = v12;
  }

  return v11;
}

uint64_t __CFStringGetExtendedPictographicSequenceComponent(UniChar *buffer, int64_t a2, int64_t a3, uint64_t *a4)
{
  result = 0;
  v23 = *MEMORY[0x1E69E9840];
  if (a3 < 0 || a3 >= a2)
  {
    return result;
  }

  v21 = a3;
  v7 = 0;
  v8 = 0;
  v9 = -1;
  v22 = 0;
  v10 = -1;
  v11 = -1;
  v12 = -1;
  while (1)
  {
    LongCharacterFromInlineBuffer = __CFStringGetLongCharacterFromInlineBuffer(buffer, a2, a3, &v21);
    if (u_hasBinaryProperty(LongCharacterFromInlineBuffer, UCHAR_GRAPHEME_EXTEND) || u_hasBinaryProperty(LongCharacterFromInlineBuffer, UCHAR_EMOJI_MODIFIER))
    {
      v14 = v7 + 1;
      if (v7 > 63)
      {
        goto LABEL_21;
      }

      v9 = v21;
      v12 = v21;
      goto LABEL_8;
    }

    if (LongCharacterFromInlineBuffer == 8205)
    {
      if (v12 != -1 || v11 != -1)
      {
        break;
      }

      v12 = -1;
      v9 = v21;
      v11 = v21;
      goto LABEL_19;
    }

    if (!u_hasBinaryProperty(LongCharacterFromInlineBuffer, UCHAR_EXTENDED_PICTOGRAPHIC) || v10 != -1 || v11 != -1 || v12 != -1)
    {
      break;
    }

    v9 = v21;
    v11 = -1;
    v10 = v21;
LABEL_19:
    v14 = v7;
LABEL_8:
    v8 += v22;
    v7 = v14;
    a3 = v9 - 1;
    v21 = v9 - 1;
    if (v9 < 1)
    {
      goto LABEL_21;
    }
  }

  v14 = v7;
LABEL_21:
  if (v10 != -1)
  {
    v15 = a4;
    if (a4)
    {
      if (v12 != -1 && v11 == -1)
      {
        v9 = v10;
        v16 = v12 - v10;
      }

      else
      {
        v16 = 0;
      }

      v8 += v16;
LABEL_27:
      *v15 = v9;
      v15[1] = v8;
      v15[2] = v12;
      v15[3] = v11;
      result = 1;
      v15[4] = v10;
      return result;
    }

    return 1;
  }

  if (v11 == -1 && v12 == -1)
  {
    return 0;
  }

  v17 = v9 + v8;
  v21 = v9 + v8;
  v22 = 0;
  if (v9 + v8 >= a2)
  {
    return 0;
  }

  do
  {
    v18 = __CFStringGetLongCharacterFromInlineBuffer(buffer, a2, v17, &v21);
    if (u_hasBinaryProperty(v18, UCHAR_GRAPHEME_EXTEND) || u_hasBinaryProperty(v18, UCHAR_EMOJI_MODIFIER))
    {
      result = 0;
      if (v11 != -1 || v14 > 62)
      {
        return result;
      }

      ++v14;
      v11 = -1;
      v19 = v21;
      v10 = -1;
    }

    else if (v18 == 8205)
    {
      if (v11 != -1)
      {
        return 0;
      }

      v10 = -1;
      v19 = v21;
      v11 = v21;
    }

    else
    {
      result = u_hasBinaryProperty(v18, UCHAR_EXTENDED_PICTOGRAPHIC);
      if (!result)
      {
        return result;
      }

      v19 = v21;
      v10 = v21;
    }

    v8 += v22;
    v17 = v19 + v22;
    v21 = v19 + v22;
    v22 = 0;
  }

  while (v10 == -1 && v17 < a2);
  result = 0;
  if (v10 != -1 && v14 <= 63)
  {
    v15 = a4;
    if (a4)
    {
      goto LABEL_27;
    }

    return 1;
  }

  return result;
}

CFUUIDRef CFUUIDCreateFromString(CFAllocatorRef alloc, CFStringRef uuidStr)
{
  v127 = *MEMORY[0x1E69E9840];
  if (!uuidStr)
  {
    return 0;
  }

  Length = CFStringGetLength(uuidStr);
  if (Length >= 101)
  {
    v5 = 100;
    v128.location = 0;
    v128.length = 100;
    CFStringGetCharacters(uuidStr, v128, v126);
    goto LABEL_6;
  }

  v5 = Length;
  if (!Length)
  {
    return 0;
  }

  v129.location = 0;
  v129.length = Length;
  CFStringGetCharacters(uuidStr, v129, v126);
  if (v5 >= 1)
  {
LABEL_6:
    v6 = 0;
    while (1)
    {
      v7 = v126[v6];
      v8 = v7 - 58;
      v9 = (v7 & 0xFFFFFFDF) - 71;
      if (v8 > 0xFFFFFFF5 || v9 > 0xFFFFFFF9)
      {
        goto LABEL_15;
      }

      if (v5 == ++v6)
      {
        v6 = v5;
        goto LABEL_15;
      }
    }
  }

  v6 = 0;
LABEL_15:
  v12 = v6 + 1;
  if (v6 + 1 >= v5)
  {
    v14 = 0;
    goto LABEL_28;
  }

  v13 = 0;
  LOBYTE(v14) = 0;
  v15 = 1;
  while (1)
  {
    v16 = v15;
    v17 = v126[v6 + v13];
    if ((v17 - 48) >= 0xA)
    {
      break;
    }

    v18 = -48;
LABEL_23:
    v15 = 0;
    LOBYTE(v14) = (v18 + v17) | (16 * v14);
    v13 = 1;
    if ((v16 & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  if ((v17 - 97) < 6)
  {
    v18 = -87;
    goto LABEL_23;
  }

  if ((v17 - 65) <= 5)
  {
    v18 = -55;
    goto LABEL_23;
  }

  LOBYTE(v14) = 0;
LABEL_27:
  v12 = v6 + 3;
  v6 += 2;
  v14 = v14;
LABEL_28:
  if (v12 >= v5)
  {
    v25 = 0;
    goto LABEL_41;
  }

  v19 = 0;
  v20 = 0;
  v21 = 1;
  while (2)
  {
    v22 = v21;
    v23 = v126[v6 + v19];
    if ((v23 - 48) < 0xA)
    {
      v24 = -48;
      goto LABEL_36;
    }

    if ((v23 - 97) < 6)
    {
      v24 = -87;
      goto LABEL_36;
    }

    if ((v23 - 65) <= 5)
    {
      v24 = -55;
LABEL_36:
      v21 = 0;
      v20 = (v24 + v23) | (16 * v20);
      v19 = 1;
      if ((v22 & 1) == 0)
      {
        goto LABEL_40;
      }

      continue;
    }

    break;
  }

  v20 = 0;
LABEL_40:
  v12 = v6 + 3;
  v6 += 2;
  v25 = v20 << 8;
LABEL_41:
  if (v12 >= v5)
  {
    v32 = 0;
    goto LABEL_54;
  }

  v26 = 0;
  v27 = 0;
  v28 = 1;
  while (2)
  {
    v29 = v28;
    v30 = v126[v6 + v26];
    if ((v30 - 48) < 0xA)
    {
      v31 = -48;
      goto LABEL_49;
    }

    if ((v30 - 97) < 6)
    {
      v31 = -87;
      goto LABEL_49;
    }

    if ((v30 - 65) <= 5)
    {
      v31 = -55;
LABEL_49:
      v28 = 0;
      v27 = (v31 + v30) | (16 * v27);
      v26 = 1;
      if ((v29 & 1) == 0)
      {
        goto LABEL_53;
      }

      continue;
    }

    break;
  }

  v27 = 0;
LABEL_53:
  v12 = v6 + 3;
  v6 += 2;
  v32 = v27 << 16;
LABEL_54:
  if (v12 >= v5)
  {
    v39 = 0;
    goto LABEL_67;
  }

  v33 = 0;
  v34 = 0;
  v35 = 1;
  while (2)
  {
    v36 = v35;
    v37 = v126[v6 + v33];
    if ((v37 - 48) < 0xA)
    {
      v38 = -48;
      goto LABEL_62;
    }

    if ((v37 - 97) < 6)
    {
      v38 = -87;
      goto LABEL_62;
    }

    if ((v37 - 65) <= 5)
    {
      v38 = -55;
LABEL_62:
      v35 = 0;
      v34 = (v38 + v37) | (16 * v34);
      v33 = 1;
      if ((v36 & 1) == 0)
      {
        goto LABEL_66;
      }

      continue;
    }

    break;
  }

  v34 = 0;
LABEL_66:
  v12 = v6 + 3;
  v6 += 2;
  v39 = v34 << 24;
LABEL_67:
  if (v6 + 2 >= v5)
  {
    v47 = 0;
    goto LABEL_80;
  }

  v40 = 0;
  v41 = 0;
  v42 = &v126[v12];
  v43 = 1;
  while (2)
  {
    v44 = v43;
    v45 = v42[v40];
    if ((v45 - 48) < 0xA)
    {
      v46 = -48;
      goto LABEL_75;
    }

    if ((v45 - 97) < 6)
    {
      v46 = -87;
      goto LABEL_75;
    }

    if ((v45 - 65) <= 5)
    {
      v46 = -55;
LABEL_75:
      v43 = 0;
      v41 = (v46 + v45) | (16 * v41);
      v40 = 1;
      if ((v44 & 1) == 0)
      {
        goto LABEL_79;
      }

      continue;
    }

    break;
  }

  v41 = 0;
LABEL_79:
  v12 = v6 + 3;
  v47 = v41 << 32;
LABEL_80:
  v48 = v12 + 1;
  if (v12 + 1 >= v5)
  {
    v55 = 0;
    goto LABEL_93;
  }

  v49 = 0;
  v50 = 0;
  v51 = 1;
  while (2)
  {
    v52 = v51;
    v53 = v126[v12 + v49];
    if ((v53 - 48) < 0xA)
    {
      v54 = -48;
      goto LABEL_88;
    }

    if ((v53 - 97) < 6)
    {
      v54 = -87;
      goto LABEL_88;
    }

    if ((v53 - 65) <= 5)
    {
      v54 = -55;
LABEL_88:
      v51 = 0;
      v50 = (v54 + v53) | (16 * v50);
      v49 = 1;
      if ((v52 & 1) == 0)
      {
        goto LABEL_92;
      }

      continue;
    }

    break;
  }

  v50 = 0;
LABEL_92:
  v48 = v12 + 3;
  v12 += 2;
  v55 = v50 << 40;
LABEL_93:
  if (v12 + 2 >= v5)
  {
    v63 = 0;
    goto LABEL_106;
  }

  v56 = 0;
  v57 = 0;
  v58 = &v126[v48];
  v59 = 1;
  while (2)
  {
    v60 = v59;
    v61 = v58[v56];
    if ((v61 - 48) < 0xA)
    {
      v62 = -48;
      goto LABEL_101;
    }

    if ((v61 - 97) < 6)
    {
      v62 = -87;
      goto LABEL_101;
    }

    if ((v61 - 65) <= 5)
    {
      v62 = -55;
LABEL_101:
      v59 = 0;
      v57 = (v62 + v61) | (16 * v57);
      v56 = 1;
      if ((v60 & 1) == 0)
      {
        goto LABEL_105;
      }

      continue;
    }

    break;
  }

  v57 = 0;
LABEL_105:
  v48 = v12 + 3;
  v63 = v57 << 48;
LABEL_106:
  v64 = v48 + 1;
  if (v48 + 1 >= v5)
  {
    v71 = 0;
    goto LABEL_119;
  }

  v65 = 0;
  LODWORD(v66) = 0;
  v67 = 1;
  while (2)
  {
    v68 = v67;
    v69 = v126[v48 + v65];
    if ((v69 - 48) < 0xA)
    {
      v70 = 208;
      goto LABEL_114;
    }

    if ((v69 - 97) < 6)
    {
      v70 = 169;
      goto LABEL_114;
    }

    if ((v69 - 65) <= 5)
    {
      v70 = 201;
LABEL_114:
      v67 = 0;
      v66 = (v70 + v69) | (16 * v66);
      v65 = 1;
      if ((v68 & 1) == 0)
      {
        goto LABEL_118;
      }

      continue;
    }

    break;
  }

  v66 = 0;
LABEL_118:
  v64 = v48 + 3;
  v48 += 2;
  v71 = v66 << 56;
LABEL_119:
  if (v48 + 2 >= v5)
  {
    v79 = 0;
    goto LABEL_132;
  }

  v72 = 0;
  v73 = 0;
  v74 = &v126[v64];
  v75 = 1;
  while (2)
  {
    v76 = v75;
    v77 = v74[v72];
    if ((v77 - 48) < 0xA)
    {
      v78 = -48;
      goto LABEL_127;
    }

    if ((v77 - 97) < 6)
    {
      v78 = -87;
      goto LABEL_127;
    }

    if ((v77 - 65) <= 5)
    {
      v78 = -55;
LABEL_127:
      v75 = 0;
      v73 = (v78 + v77) | (16 * v73);
      v72 = 1;
      if ((v76 & 1) == 0)
      {
        goto LABEL_131;
      }

      continue;
    }

    break;
  }

  v73 = 0;
LABEL_131:
  v79 = v73;
  v64 = v48 + 3;
LABEL_132:
  v80 = v64 + 1;
  if (v64 + 1 >= v5)
  {
    goto LABEL_144;
  }

  v81 = 0;
  v82 = 0;
  v83 = 1;
  while (2)
  {
    v84 = v83;
    v85 = v126[v64 + v81];
    if ((v85 - 48) < 0xA)
    {
      v86 = -48;
      goto LABEL_140;
    }

    if ((v85 - 97) < 6)
    {
      v86 = -87;
      goto LABEL_140;
    }

    if ((v85 - 65) <= 5)
    {
      v86 = -55;
LABEL_140:
      v83 = 0;
      v82 = (v86 + v85) | (16 * v82);
      v81 = 1;
      if ((v84 & 1) == 0)
      {
        goto LABEL_143;
      }

      continue;
    }

    break;
  }

  v82 = 0;
LABEL_143:
  v79 = v79 & 0xFFFFFFFFFFFF00FFLL | (v82 << 8);
  v80 = v64 + 3;
  v64 += 2;
LABEL_144:
  if (v64 + 2 >= v5)
  {
    goto LABEL_156;
  }

  v87 = 0;
  v88 = 0;
  v89 = &v126[v80];
  v90 = 1;
  while (2)
  {
    v91 = v90;
    v92 = v89[v87];
    if ((v92 - 48) < 0xA)
    {
      v93 = -48;
      goto LABEL_152;
    }

    if ((v92 - 97) < 6)
    {
      v93 = -87;
      goto LABEL_152;
    }

    if ((v92 - 65) <= 5)
    {
      v93 = -55;
LABEL_152:
      v90 = 0;
      v88 = (v93 + v92) | (16 * v88);
      v87 = 1;
      if ((v91 & 1) == 0)
      {
        goto LABEL_155;
      }

      continue;
    }

    break;
  }

  v88 = 0;
LABEL_155:
  v79 = v79 & 0xFFFFFFFFFF00FFFFLL | (v88 << 16);
  v80 = v64 + 3;
LABEL_156:
  v94 = v80 + 1;
  if (v80 + 1 >= v5)
  {
    goto LABEL_168;
  }

  v95 = 0;
  v96 = 0;
  v97 = 1;
  while (2)
  {
    v98 = v97;
    v99 = v126[v80 + v95];
    if ((v99 - 48) < 0xA)
    {
      v100 = -48;
      goto LABEL_164;
    }

    if ((v99 - 97) < 6)
    {
      v100 = -87;
      goto LABEL_164;
    }

    if ((v99 - 65) <= 5)
    {
      v100 = -55;
LABEL_164:
      v97 = 0;
      v96 = (v100 + v99) | (16 * v96);
      v95 = 1;
      if ((v98 & 1) == 0)
      {
        goto LABEL_167;
      }

      continue;
    }

    break;
  }

  v96 = 0;
LABEL_167:
  v79 = v79 & 0xFFFFFFFF00FFFFFFLL | (v96 << 24);
  v94 = v80 + 3;
  v80 += 2;
LABEL_168:
  if (v94 >= v5)
  {
    goto LABEL_180;
  }

  v101 = 0;
  v102 = 0;
  v103 = 1;
  while (2)
  {
    v104 = v103;
    v105 = v126[v80 + v101];
    if ((v105 - 48) < 0xA)
    {
      v106 = -48;
      goto LABEL_176;
    }

    if ((v105 - 97) < 6)
    {
      v106 = -87;
      goto LABEL_176;
    }

    if ((v105 - 65) <= 5)
    {
      v106 = -55;
LABEL_176:
      v103 = 0;
      v102 = (v106 + v105) | (16 * v102);
      v101 = 1;
      if ((v104 & 1) == 0)
      {
        goto LABEL_179;
      }

      continue;
    }

    break;
  }

  v102 = 0;
LABEL_179:
  v79 |= v102 << 32;
  v94 = v80 + 3;
  v80 += 2;
LABEL_180:
  if (v94 >= v5)
  {
    goto LABEL_192;
  }

  v107 = 0;
  v108 = 0;
  v109 = 1;
  while (2)
  {
    v110 = v109;
    v111 = v126[v80 + v107];
    if ((v111 - 48) < 0xA)
    {
      v112 = -48;
      goto LABEL_188;
    }

    if ((v111 - 97) < 6)
    {
      v112 = -87;
      goto LABEL_188;
    }

    if ((v111 - 65) <= 5)
    {
      v112 = -55;
LABEL_188:
      v109 = 0;
      v108 = (v112 + v111) | (16 * v108);
      v107 = 1;
      if ((v110 & 1) == 0)
      {
        goto LABEL_191;
      }

      continue;
    }

    break;
  }

  v108 = 0;
LABEL_191:
  v79 |= v108 << 40;
  v94 = v80 + 3;
  v80 += 2;
LABEL_192:
  if (v94 >= v5)
  {
    goto LABEL_204;
  }

  v113 = 0;
  v114 = 0;
  v115 = 1;
  while (2)
  {
    v116 = v115;
    v117 = v126[v80 + v113];
    if ((v117 - 48) < 0xA)
    {
      v118 = -48;
      goto LABEL_200;
    }

    if ((v117 - 97) < 6)
    {
      v118 = -87;
      goto LABEL_200;
    }

    if ((v117 - 65) <= 5)
    {
      v118 = -55;
LABEL_200:
      v115 = 0;
      v114 = (v118 + v117) | (16 * v114);
      v113 = 1;
      if ((v116 & 1) == 0)
      {
        goto LABEL_203;
      }

      continue;
    }

    break;
  }

  v114 = 0;
LABEL_203:
  v79 |= v114 << 48;
  v94 = v80 + 3;
  v80 += 2;
LABEL_204:
  if (v94 >= v5)
  {
    return __CFUUIDCreateWithBytesPrimitive(alloc, v25 | v14 | v32 | v39 | v47 | v55 | v63 | v71, v79, 0);
  }

  v119 = 0;
  LODWORD(v120) = 0;
  v121 = &v126[v80];
  v122 = 1;
  while (2)
  {
    v123 = v122;
    v124 = v121[v119];
    if ((v124 - 48) < 0xA)
    {
      v125 = 208;
      goto LABEL_212;
    }

    if ((v124 - 97) < 6)
    {
      v125 = 169;
      goto LABEL_212;
    }

    if ((v124 - 65) <= 5)
    {
      v125 = 201;
LABEL_212:
      v122 = 0;
      v120 = (v125 + v124) | (16 * v120);
      v119 = 1;
      if ((v123 & 1) == 0)
      {
        goto LABEL_215;
      }

      continue;
    }

    break;
  }

  v120 = 0;
LABEL_215:
  v79 |= v120 << 56;
  return __CFUUIDCreateWithBytesPrimitive(alloc, v25 | v14 | v32 | v39 | v47 | v55 | v63 | v71, v79, 0);
}

CFStringRef createFileReferencePath(const __CFAllocator *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v16 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    return 0;
  }

  if (!a5)
  {
    v13 = "/";
    if (!a6)
    {
      v13 = "";
    }

    if (snprintf(v15, 0x400uLL, "/.file/id=%lld.%lld%s", a2, a4, v13) <= 0x3FF)
    {
      return CFStringCreateWithCString(a1, v15, 0x8000100u);
    }

    return 0;
  }

  MEMORY[0x1EEE9AC00](a1, a2, a3);
  if (!CFStringGetCString(v10, v14, 1024, 0x8000100u))
  {
    return 0;
  }

  v11 = "/";
  if (!a6)
  {
    v11 = "";
  }

  if (snprintf(v15, 0x400uLL, "/.file/id=%lld.%lld/%s%s", a2, a3, v14, v11) <= 0x3FF)
  {
    return CFStringCreateWithCString(a1, v15, 0x8000100u);
  }

  else
  {
    return 0;
  }
}

uint64_t _CFURLGetQueryResolveFlags(const __CFURL *a1)
{
  String = CFURLCopyQueryString(a1, 0);
  v2 = [(__CFString *)String _queryResolveFlags];
  if (String)
  {
    CFRelease(String);
  }

  return v2;
}

uint64_t _CFURLCacheSetAutoFlushingEnabled(unint64_t *a1, uint64_t a2)
{
  v4 = __CFURLResourceInfoPtr(a1);

  return MEMORY[0x1EEE00708](a1, v4, a2);
}

uint64_t _CFURLCopyResourcePropertyValuesAndFlags(const __CFURL *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void *a6, CFTypeRef *a7)
{
  v19 = *MEMORY[0x1E69E9840];
  v18 = 0;
  if (_CFURLHasFileURLScheme(a1, &v18))
  {
    __CFURLResourceInfoPtr(a1);
    result = _FSURLCopyResourcePropertyValuesAndFlags();
    if (result)
    {
      return result;
    }
  }

  else if (!v18)
  {
    CFLog(4, @"_CFURLCopyResourcePropertyValuesAndFlags failed because it was passed a URL which has no scheme", v10, v11, v12, v13, v14, v15, v17);
  }

  *a3 = 0;
  *a6 = 0;
  return 1;
}

uint64_t _CFPreferencesAppSynchronizeWithContainer(__CFString *a1, const __CFString *a2)
{
  if (_CFPrefsCurrentProcessIsCFPrefsD())
  {
    v4 = 0;
  }

  else
  {
    if (qword_1ED40BE20 != -1)
    {
      _CFPreferencesAppSynchronizeWithContainer_cold_1();
    }

    v4 = [qword_1ED40BE18 copyPrefs];
  }

  v5 = [(_CFXPreferences *)v4 appSynchronizeWithIdentifier:a1 container:a2];

  return v5;
}

CFStringRef FileReferenceURLPathToFullURLPath(const __CFString *a1, const __CFAllocator *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  if (!CFStringGetCString(a1, buffer, 2048, 0x8000100u))
  {
    return 0;
  }

  if (*buffer != 0x692F656C69662E2FLL || v19 != 15716)
  {
    return 0;
  }

  __endptr = 0;
  strtoll(v20, &__endptr, 10);
  if (*__endptr != 46)
  {
    return 0;
  }

  strtoll(__endptr + 1, &__endptr, 10);
  v4 = *__endptr == 47 ? __endptr + 1 : __endptr;
  v5 = _FSCreatePathForFileID();
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  Length = CFStringGetLength(v5);
  if (Length <= 1)
  {
    Length = 1;
  }

  MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
  v9 = MaximumSizeForEncoding;
  if (MaximumSizeForEncoding >= 1024)
  {
    v10 = malloc_type_malloc(MaximumSizeForEncoding + 1, 0x100004077774924uLL);
  }

  else
  {
    v10 = v21;
  }

  if (CFStringGetCString(v6, v10, v9 + 1, 0x8000100u))
  {
    v13 = strlen(v10);
    StringFromFileSystemRepresentationByAddingPercentEscapes = CreateStringFromFileSystemRepresentationByAddingPercentEscapes(0, v10, v13, 0, 0, 0, 0);
  }

  else
  {
    StringFromFileSystemRepresentationByAddingPercentEscapes = 0;
  }

  if (v10 != v21)
  {
    free(v10);
  }

  CFRelease(v6);
  if (*v4)
  {
    v14 = CFStringCreateWithCString(a2, v4, 0x8000100u);
    if (v14)
    {
      v15 = v14;
      v16 = CFStringCreateWithFormat(a2, 0, @"%@/%@", StringFromFileSystemRepresentationByAddingPercentEscapes, v14);
      CFRelease(v15);
    }

    else
    {
      v16 = 0;
    }

    CFRelease(StringFromFileSystemRepresentationByAddingPercentEscapes);
    return v16;
  }

  return StringFromFileSystemRepresentationByAddingPercentEscapes;
}

CFTypeRef _CFRunLoopGet2(uint64_t a1)
{
  os_unfair_lock_lock(&loopsLock);
  v2 = *(a1 + 2704);
  if (v2)
  {
    os_unfair_lock_unlock(&loopsLock);
  }

  else
  {
    v3 = objc_lookUpClass("NSRunLoop");
    if (v3 && (v4 = v3, (objc_opt_respondsToSelector() & 1) != 0))
    {
      v5 = [(objc_class *)v4 _new:a1];
      if (v5)
      {
        v2 = CFRetain(v5);
      }

      else
      {
        v2 = 0;
      }

      *(a1 + 2704) = v2;
    }

    else
    {
      v2 = *(a1 + 2704);
    }

    os_unfair_lock_unlock(&loopsLock);
    if (!v2)
    {
      _CFRunLoopGet2_cold_1();
    }
  }

  return v2;
}

void _CFPrefsSynchronizeForProcessTermination()
{
  if (_CFPrefsCurrentProcessIsCFPrefsD())
  {
    v0 = 0;
  }

  else
  {
    if (qword_1ED40BE20 != -1)
    {
      _CFPrefsSynchronizeForProcessTermination_cold_1();
    }

    v0 = [qword_1ED40BE18 copyPrefs];
  }

  v1 = v0;
  [(_CFXPreferences *)v0 synchronizeEverything];
}

void sub_183175CD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t _CFGetCachedUnsandboxedHomeDirectoryForCurrentUser()
{
  if (_CFGetCachedUnsandboxedHomeDirectoryForCurrentUser_onceToken != -1)
  {
    _CFGetCachedUnsandboxedHomeDirectoryForCurrentUser_cold_1();
  }

  return _CFGetCachedUnsandboxedHomeDirectoryForCurrentUser_unsandboxedHomePath;
}

void _CFErrorInitializeCallBackTable()
{
  v7 = *MEMORY[0x1E69E9840];
  v1.version = kCFTypeDictionaryValueCallBacks.version;
  v1.copyDescription = kCFTypeDictionaryValueCallBacks.copyDescription;
  v1.equal = CFEqual;
  v1.retain = blockCopyValueCallBack;
  v1.release = blockReleaseValueCallBack;
  v0 = CFDictionaryCreateMutable(&__kCFAllocatorSystemDefault, 0, &kCFCopyStringDictionaryKeyCallBacks, &v1);
  os_unfair_lock_lock_with_options();
  if (_CFErrorCallBackTable)
  {
    os_unfair_lock_unlock(&_CFErrorLock);
    CFRelease(v0);
  }

  else
  {
    _CFErrorCallBackTable = v0;
    value = MEMORY[0x1E69E9820];
    v3 = 3221225472;
    v4 = ____CFErrorSetCallBackForDomainNoLock_block_invoke;
    v5 = &__block_descriptor_40_e89__v24__0____CFError____CFRuntimeBase_QAQ_q____CFString_____CFDictionary__8____CFString__16l;
    v6 = _CFErrorPOSIXCallBack;
    CFDictionarySetValue(v0, @"NSPOSIXErrorDomain", &value);
    value = MEMORY[0x1E69E9820];
    v3 = 3221225472;
    v4 = ____CFErrorSetCallBackForDomainNoLock_block_invoke;
    v5 = &__block_descriptor_40_e89__v24__0____CFError____CFRuntimeBase_QAQ_q____CFString_____CFDictionary__8____CFString__16l;
    v6 = _CFErrorMachCallBack;
    CFDictionarySetValue(_CFErrorCallBackTable, @"NSMachErrorDomain", &value);
    value = MEMORY[0x1E69E9820];
    v3 = 3221225472;
    v4 = ____CFErrorSetCallBackForDomainNoLock_block_invoke;
    v5 = &__block_descriptor_40_e89__v24__0____CFError____CFRuntimeBase_QAQ_q____CFString_____CFDictionary__8____CFString__16l;
    v6 = _CFErrorCocoaCallBack;
    CFDictionarySetValue(_CFErrorCallBackTable, @"NSCocoaErrorDomain", &value);
    os_unfair_lock_unlock(&_CFErrorLock);
  }
}

void ___isValidSpecialCase_block_invoke()
{
  v0 = dlopen("/usr/lib/libMobileGestalt.dylib", 5);
  if (v0)
  {
    v1 = dlsym(v0, "MGCopyAnswer");
    if (v1)
    {
      v2 = v1(@"h63QSdBCiT/z0WU6rdQv6Q", 0);
      if (v2)
      {
        v3 = v2;
        _isValidSpecialCase_useSpecialCase = CFEqual(v2, @"CH") != 0;

        CFRelease(v3);
      }

      else
      {
        _isValidSpecialCase_useSpecialCase = 0;
      }
    }
  }
}

void CFCharacterSetAddCharactersInRange(CFMutableCharacterSetRef theSet, CFRange theRange)
{
  length = theRange.length;
  location = theRange.location;
  if (CF_IS_OBJC(0x19uLL, theSet))
  {

    [(__CFCharacterSet *)theSet addCharactersInRange:location, length];
    return;
  }

  v11 = atomic_load(theSet + 1);
  if ((v11 & 1) == 0)
  {
    CFLog(3, @"%s: Immutable character set passed to mutable function", v5, v6, v7, v8, v9, v10, "void CFCharacterSetAddCharactersInRange(CFMutableCharacterSetRef, CFRange)");
    if (dyld_program_sdk_at_least())
    {
      CFCharacterSetAddCharactersInRange_cold_1();
    }
  }

  if (location >> 16 > 0x10 || length >= 1114113 || (v12 = location + length, location + length >= 0x110001))
  {
    CFLog(3, @"%s: Range (location: %ld, length: %ld) outside of valid Unicode range (0x0 - 0x10FFFF)", v5, v6, v7, v8, v9, v10, "void CFCharacterSetAddCharactersInRange(CFMutableCharacterSetRef, CFRange)");
    qword_1EA849A30 = "CFCharacterSet range is outside of valid Unicode range (0x0 - 0x10FFFF)";
    __break(1u);
    return;
  }

  v13 = atomic_load(theSet + 1);
  if ((v13 & 0x70) == 0)
  {
    v14 = atomic_load(theSet + 1);
    if ((v14 & 1) == 0)
    {
      v15 = atomic_load(theSet + 1);
      if ((v15 & 8) == 0 && CFCharacterSetGetPredefined(*(theSet + 3)) == theSet)
      {
        return;
      }
    }
  }

  if (!length)
  {
    return;
  }

  v16 = atomic_load(theSet + 1);
  if ((v16 & 8) != 0)
  {
    v17 = *(theSet + 5);
    if (!v17 || !*(v17 + 8) && !*(v17 + 13))
    {
      v18 = atomic_load(theSet + 1);
      v19 = (v18 >> 4) & 7;
      if (v19 > 2)
      {
        if ((v19 == 3 || v19 == 4) && !*(theSet + 3))
        {
          return;
        }
      }

      else if ((v19 == 1 || v19 == 2) && !*(theSet + 4))
      {
        return;
      }
    }
  }

  v20 = atomic_load(theSet + 1);
  if ((v20 & 8) != 0)
  {
LABEL_87:
    __CFCSetMakeBitmap(theSet);
    __CFCSetAddNonBMPPlanesInRange(theSet, location, length);
    if (!(location >> 16))
    {
      v61 = *(theSet + 3);
      if (v12 >> 16)
      {
        v62 = -location;
      }

      else
      {
        LOWORD(v62) = length;
      }

      v63 = v62 + location - 1;
      if (v63 == location)
      {
        *(v61 + (location >> 3)) |= 1 << (location & 7);
      }

      else
      {
        v64 = location >> 3;
        v65 = v63 >> 3;
        v66 = 255 << (location & 7);
        if (v64 == v65)
        {
          *(v61 + v64) |= (0xFFu >> (~v63 & 7)) & v66;
        }

        else
        {
          *(v61 + v64) |= v66;
          *(v61 + (v63 >> 3)) |= 0xFFu >> (~v63 & 7);
          if (v64 + 1 < v65)
          {
            memset((v61 + (location >> 3) + 1), 255, v65 - v64 - 2 + 1);
          }
        }
      }
    }

    v67 = atomic_load(theSet + 1);
    v68 = v67;
    do
    {
      atomic_compare_exchange_strong(theSet + 1, &v68, v67 & 0xFFFFFFFFFFFFFFFBLL);
      v30 = v68 == v67;
      v67 = v68;
    }

    while (!v30);
    if (__CFCheckForExapendedSet == 1)
    {

      __CFCheckForExpandedSet(theSet, v54, v55, v56, v57, v58, v59, v60);
    }

    return;
  }

  v21 = *(theSet + 5);
  if (!v21 || !*(v21 + 8) && !*(v21 + 13))
  {
    v22 = atomic_load(theSet + 1);
    v23 = (v22 >> 4) & 7;
    if (v23 > 2)
    {
      if ((v23 == 3 || v23 == 4) && !*(theSet + 3))
      {
        goto LABEL_104;
      }
    }

    else if ((v23 == 1 || v23 == 2) && !*(theSet + 4))
    {
LABEL_104:
      v69 = atomic_load(theSet + 1);
      v70 = v69;
      do
      {
        atomic_compare_exchange_strong(theSet + 1, &v70, v69 & 0xFFFFFFFFFFFFFF8FLL | 0x10);
        v30 = v70 == v69;
        v69 = v70;
      }

      while (!v30);
      *(theSet + 6) = location;
      *(theSet + 4) = length;
      v71 = atomic_load(theSet + 1);
      v72 = v71;
      do
      {
        atomic_compare_exchange_strong(theSet + 1, &v72, v71 & 0xFFFFFFFFFFFFFFFBLL);
        v30 = v72 == v71;
        v71 = v72;
      }

      while (!v30);
      return;
    }
  }

  v24 = atomic_load(theSet + 1);
  if ((v24 & 0x70) != 0x10)
  {
    v31 = atomic_load(theSet + 1);
    if ((v31 & 0x70) == 0x20)
    {
      v32 = *(theSet + 4);
      v33 = v32 + length;
      if (v32 + length <= 63)
      {
        Typed = *(theSet + 3);
        if (!Typed)
        {
          v35 = CFGetAllocator(theSet);
          Typed = CFAllocatorAllocateTyped(v35, 0x80uLL, 0x1000040BDFB0063uLL);
          *(theSet + 3) = Typed;
          v32 = *(theSet + 4);
          v33 = v32 + length;
        }

        *(theSet + 4) = v33;
        v36 = 0;
        v37 = vdupq_n_s64(length - 1);
        v38 = (Typed + 2 * v32 + 8);
        do
        {
          v39 = vdupq_n_s64(v36);
          v40 = vmovn_s64(vcgeq_u64(v37, vorrq_s8(v39, xmmword_183306C30)));
          if (vuzp1_s8(vuzp1_s16(v40, *v37.i8), *v37.i8).u8[0])
          {
            *(v38 - 4) = location;
          }

          if (vuzp1_s8(vuzp1_s16(v40, *&v37), *&v37).i8[1])
          {
            *(v38 - 3) = location + 1;
          }

          if (vuzp1_s8(vuzp1_s16(*&v37, vmovn_s64(vcgeq_u64(v37, vorrq_s8(v39, xmmword_183306C20)))), *&v37).i8[2])
          {
            *(v38 - 2) = location + 2;
            *(v38 - 1) = location + 3;
          }

          v41 = vmovn_s64(vcgeq_u64(v37, vorrq_s8(v39, xmmword_183306C10)));
          if (vuzp1_s8(*&v37, vuzp1_s16(v41, *&v37)).i32[1])
          {
            *v38 = location + 4;
          }

          if (vuzp1_s8(*&v37, vuzp1_s16(v41, *&v37)).i8[5])
          {
            v38[1] = location + 5;
          }

          if (vuzp1_s8(*&v37, vuzp1_s16(*&v37, vmovn_s64(vcgeq_u64(v37, vorrq_s8(v39, xmmword_183306C00))))).i8[6])
          {
            v38[2] = location + 6;
            v38[3] = location + 7;
          }

          v36 += 8;
          LOWORD(location) = location + 8;
          v38 += 8;
        }

        while (((length + 7) & 0xFFFFFFFFFFFFFFF8) != v36);
        qsort(*(theSet + 3), *(theSet + 4), 2uLL, chcompar);
        v42 = *(theSet + 4);
        if (v42 >= 2)
        {
          v43 = 0;
          v44 = *(theSet + 3);
          v45 = v42 - 1;
          v46 = (v44 + 2);
          do
          {
            v48 = *v46++;
            v47 = v48;
            if (*(v44 + 2 * v43) != v48)
            {
              ++v43;
              *(v44 + 2 * v43) = v47;
            }

            --v45;
          }

          while (v45);
          v42 = v43 + 1;
        }

        *(theSet + 4) = v42;
        v49 = atomic_load(theSet + 1);
        v50 = v49;
        do
        {
          atomic_compare_exchange_strong(theSet + 1, &v50, v49 & 0xFFFFFFFFFFFFFFFBLL);
          v30 = v50 == v49;
          v49 = v50;
        }

        while (!v30);
        return;
      }
    }

    goto LABEL_87;
  }

  v25 = *(theSet + 6);
  v26 = *(theSet + 4);
  if (location == v25)
  {
    if (v26 <= length)
    {
      v27 = length;
    }

    else
    {
      v27 = *(theSet + 4);
    }

    *(theSet + 4) = v27;
    v28 = atomic_load(theSet + 1);
    v29 = v28;
    do
    {
      atomic_compare_exchange_strong(theSet + 1, &v29, v28 & 0xFFFFFFFFFFFFFFFBLL);
      v30 = v29 == v28;
      v28 = v29;
    }

    while (!v30);
    return;
  }

  if (location <= v25 || location > (v26 + v25))
  {
    if (location < v25 && v12 >= v25)
    {
      *(theSet + 6) = location;
      v51 = v26 + v25;
      if (v51 <= v12)
      {
        v51 = location + length;
      }

      *(theSet + 4) = v51 - location;
      v52 = atomic_load(theSet + 1);
      v53 = v52;
      do
      {
        atomic_compare_exchange_strong(theSet + 1, &v53, v52 & 0xFFFFFFFFFFFFFFFBLL);
        v30 = v53 == v52;
        v52 = v53;
      }

      while (!v30);
      return;
    }

    goto LABEL_87;
  }

  if (v26 + v25 < v12)
  {
    *(theSet + 4) = v12 - v25;
  }

  v73 = atomic_load(theSet + 1);
  v74 = v73;
  do
  {
    atomic_compare_exchange_strong(theSet + 1, &v74, v73 & 0xFFFFFFFFFFFFFFFBLL);
    v30 = v74 == v73;
    v73 = v74;
  }

  while (!v30);
}

void CFCharacterSetUnion(CFMutableCharacterSetRef theSet, CFCharacterSetRef theOtherSet)
{
  v2 = (MEMORY[0x1EEE9AC00])(theSet, theOtherSet);
  v4 = v3;
  v5 = v2;
  v131 = *MEMORY[0x1E69E9840];
  if (CF_IS_OBJC(0x19uLL, v2))
  {

    [v5 formUnionWithCharacterSet:v4];
    return;
  }

  v12 = atomic_load((v5 + 8));
  if ((v12 & 1) == 0)
  {
    CFLog(3, @"%s: Immutable character set passed to mutable function", v6, v7, v8, v9, v10, v11, "void CFCharacterSetUnion(CFMutableCharacterSetRef, CFCharacterSetRef)");
    if (dyld_program_sdk_at_least())
    {
      CFCharacterSetUnion_cold_1();
    }
  }

  v13 = atomic_load((v5 + 8));
  if (v13 & 0x70) != 0 || (v14 = atomic_load((v5 + 8)), (v14) || (v15 = atomic_load((v5 + 8)), (v15 & 8) != 0) || CFCharacterSetGetPredefined(*(v5 + 24)) != v5)
  {
    v16 = *(v5 + 40);
    if (v16 && (*(v16 + 8) || *(v16 + 13)))
    {
      goto LABEL_24;
    }

    v17 = atomic_load((v5 + 8));
    v18 = (v17 >> 4) & 7;
    if (v18 > 2)
    {
      if (v18 != 3 && v18 != 4 || *(v5 + 24))
      {
        goto LABEL_24;
      }
    }

    else if (v18 != 1 && v18 != 2 || *(v5 + 32))
    {
      goto LABEL_24;
    }

    v19 = atomic_load((v5 + 8));
    if ((v19 & 8) != 0)
    {
      return;
    }

LABEL_24:
    if (CF_IS_OBJC(0x19uLL, v4))
    {
      v27 = [v4 _expandedCFCharacterSet];
      if (!v27)
      {
        BitmapRepresentation = CFCharacterSetCreateBitmapRepresentation(&__kCFAllocatorSystemDefault, v4);
        if (BitmapRepresentation)
        {
          v29 = BitmapRepresentation;
          if (CFDataGetLength(BitmapRepresentation))
          {
            BytePtr = CFDataGetBytePtr(v29);
            if (BytePtr)
            {
              v31 = BytePtr;
              __CFCSetMakeBitmap(v5);
              v32 = 0;
              v33 = *(v5 + 24);
              do
              {
                *(v33 + v32) |= *&v31[v32];
                v32 += 4;
              }

              while (v32 != 0x2000);
              v34 = atomic_load((v5 + 8));
              v35 = v34;
              do
              {
                atomic_compare_exchange_strong((v5 + 8), &v35, v34 & 0xFFFFFFFFFFFFFFFBLL);
                v36 = v35 == v34;
                v34 = v35;
              }

              while (!v36);
            }
          }

          CFRelease(v29);
        }

        return;
      }
    }

    else
    {
      v27 = 0;
    }

    if (v27)
    {
      v4 = v27;
    }

    v37 = *(v4 + 40);
    if (!v37 || !*(v37 + 8) && !*(v37 + 13))
    {
      v38 = atomic_load((v4 + 8));
      v39 = (v38 >> 4) & 7;
      if (v39 > 2)
      {
        if ((v39 == 3 || v39 == 4) && !*(v4 + 24))
        {
LABEL_73:
          v57 = atomic_load((v4 + 8));
          if ((v57 & 8) != 0)
          {
            v58 = atomic_load((v5 + 8));
            if ((v58 & 0x70) == 0x20 && *(v5 + 24) || (v59 = atomic_load((v5 + 8)), (v59 & 0x70) == 0x30) && *(v5 + 24) || (v60 = atomic_load((v5 + 8)), (v60 & 0x70) == 0x40) && *(v5 + 24))
            {
              v61 = CFGetAllocator(v5);
              CFAllocatorDeallocate(v61, *(v5 + 24));
            }

            v62 = atomic_load((v5 + 8));
            v63 = v62;
            do
            {
              atomic_compare_exchange_strong((v5 + 8), &v63, v62 & 0xFFFFFFFFFFFFFF8FLL | 0x10);
              v36 = v63 == v62;
              v62 = v63;
            }

            while (!v36);
            *(v5 + 32) = 0;
            v64 = atomic_load((v5 + 8));
            v65 = v64;
            do
            {
              atomic_compare_exchange_strong((v5 + 8), &v65, v64 | 8);
              v36 = v65 == v64;
              v64 = v65;
            }

            while (!v36);
            v66 = atomic_load((v5 + 8));
            v67 = v66;
            do
            {
              atomic_compare_exchange_strong((v5 + 8), &v67, v66 & 0xFFFFFFFFFFFFFFFBLL);
              v36 = v67 == v66;
              v66 = v67;
            }

            while (!v36);
            if (*(v5 + 40))
            {
              for (i = 0; i != 16; ++i)
              {
                v69 = *(v5 + 40);
                if (((*(v69 + 8) >> i) & 2) != 0)
                {
                  CFRelease(*(*v69 + 8 * i));
                }
              }

              v70 = CFGetAllocator(v5);
              CFAllocatorDeallocate(v70, **(v5 + 40));
              v71 = CFGetAllocator(v5);
              CFAllocatorDeallocate(v71, *(v5 + 40));
              *(v5 + 40) = 0;
            }
          }

          goto LABEL_181;
        }
      }

      else if ((v39 == 1 || v39 == 2) && !*(v4 + 32))
      {
        goto LABEL_73;
      }
    }

    v40 = (v4 + 8);
    v41 = atomic_load((v4 + 8));
    if ((v41 & 0x70) == 0)
    {
      v49 = *(v5 + 40);
      if (!v49 || !*(v49 + 8) && !*(v49 + 13))
      {
        v50 = atomic_load((v5 + 8));
        v51 = (v50 >> 4) & 7;
        if (v51 > 2)
        {
          if ((v51 == 3 || v51 == 4) && !*(v5 + 24))
          {
            goto LABEL_147;
          }
        }

        else if ((v51 == 1 || v51 == 2) && !*(v5 + 32))
        {
LABEL_147:
          v105 = atomic_load((v5 + 8));
          v106 = v105;
          do
          {
            atomic_compare_exchange_strong((v5 + 8), &v106, v105 & 0xFFFFFFFFFFFFFF8FLL);
            v36 = v106 == v105;
            v105 = v106;
          }

          while (!v36);
          *(v5 + 24) = *(v4 + 24);
          v107 = atomic_load((v4 + 8));
          if ((v107 & 8) != 0)
          {
            v108 = atomic_load((v5 + 8));
            v109 = v108;
            do
            {
              atomic_compare_exchange_strong((v5 + 8), &v109, v108 | 8);
              v36 = v109 == v108;
              v108 = v109;
            }

            while (!v36);
          }

          v110 = *(v4 + 40);
          if (v110 && *(v110 + 13))
          {
            Typed = *(v5 + 40);
            if (!Typed)
            {
              v112 = CFGetAllocator(v5);
              Typed = CFAllocatorAllocateTyped(v112, 0x10uLL, 0x1080040FC6463CFuLL);
              *(v5 + 40) = Typed;
              *Typed = 0;
              *(Typed + 6) = 0;
            }

            *(Typed + 13) = 1;
          }

          v113 = atomic_load((v5 + 8));
          v114 = v113;
          do
          {
            atomic_compare_exchange_strong((v5 + 8), &v114, v113 & 0xFFFFFFFFFFFFFFFBLL);
            v36 = v114 == v113;
            v113 = v114;
          }

          while (!v36);
          goto LABEL_181;
        }
      }
    }

    v42 = atomic_load(v40);
    v43 = atomic_load(v40);
    if ((v42 & 0x70) == 0x10)
    {
      v44 = *(v4 + 24);
      if ((v43 & 8) != 0)
      {
        v52 = *(v4 + 32);
        if (v44)
        {
          v133.location = 0;
          v133.length = *(v4 + 24);
          CFCharacterSetAddCharactersInRange(v5, v133);
        }

        v46.location = (v44 + v52);
        v46.length = (1114112 - LODWORD(v46.location));
        v45 = v5;
      }

      else
      {
        v46.length = *(v4 + 32);
        v45 = v5;
        v46.location = *(v4 + 24);
      }

      CFCharacterSetAddCharactersInRange(v45, v46);
    }

    else if ((v43 & 0x70) == 0x20)
    {
      v47 = CFGetAllocator(v5);
      v48 = CFStringCreateWithCharactersNoCopy(v47, *(v4 + 24), *(v4 + 32), &__kCFAllocatorNull);
      CFCharacterSetAddCharactersInString(v5, v48);
      CFRelease(v48);
    }

    else
    {
      __CFCSetMakeBitmap(v5);
      v53 = atomic_load((v4 + 8));
      v54 = *(v5 + 24);
      if ((v53 & 0x70) == 0x30)
      {
        v55 = 0;
        v56 = *(v4 + 24);
        do
        {
          *(v54 + v55) |= *(v56 + v55);
          v55 += 4;
        }

        while (v55 != 0x2000);
      }

      else
      {
        __CFCSetGetBitmap(v4, __b);
        for (j = 0; j != 2048; ++j)
        {
          *(v54 + j * 4) |= __b[0].u32[j];
        }
      }

      v73 = atomic_load((v5 + 8));
      v74 = v73;
      do
      {
        atomic_compare_exchange_strong((v5 + 8), &v74, v73 & 0xFFFFFFFFFFFFFFFBLL);
        v36 = v74 == v73;
        v73 = v74;
      }

      while (!v36);
    }

    v75 = *(v4 + 40);
    if (v75)
    {
      v76 = *(v75 + 13);
      if (*(v75 + 8))
      {
        v77 = 0;
        v78 = 8;
        while (1)
        {
          v79 = *(v4 + 40);
          if (v79)
          {
            v80 = 1 << (v77 + 1);
            if ((*(v79 + 8) & v80) != 0)
            {
              v81 = (v77 + 1);
              if (*(v79 + 12) >= v81)
              {
                v82 = *(*v79 + 8 * v77);
                if (v82)
                {
                  break;
                }
              }
            }
          }

LABEL_129:
          ++v77;
          v78 += 8;
          if (v77 == 16)
          {
            goto LABEL_181;
          }
        }

        v83 = *(v5 + 40);
        if (!v76)
        {
          if (v83)
          {
            if (*(v83 + 12) < v81)
            {
              *(v83 + 12) = v81;
              v87 = *v83;
              v88 = CFGetAllocator(v5);
              if (v87)
              {
                v89 = __CFSafelyReallocateWithAllocatorTyped(v88, **(v5 + 40), v78, 1153737439, 0);
                goto LABEL_125;
              }

LABEL_124:
              v89 = CFAllocatorAllocateTyped(v88, v78, 0x6004044C4A2DFuLL);
LABEL_125:
              v83 = *(v5 + 40);
              *v83 = v89;
            }

            if ((v83[1] & v80) == 0)
            {
              v95 = CFGetAllocator(v5);
              *(**(v5 + 40) + 8 * v77) = CFCharacterSetCreateMutable(v95);
              v83 = *(v5 + 40);
              *(v83 + 2) |= v80;
            }

            CFCharacterSetUnion(*(*v83 + 8 * v77), v82);
            goto LABEL_129;
          }

          v93 = CFGetAllocator(v5);
          v94 = CFAllocatorAllocateTyped(v93, 0x10uLL, 0x1080040FC6463CFuLL);
          *(v5 + 40) = v94;
          *(v94 + 12) = v81;
          *(v94 + 8) = 0;
          v88 = CFGetAllocator(v5);
          goto LABEL_124;
        }

        if (v83)
        {
          if (*(v83 + 12) >= v81)
          {
LABEL_120:
            if ((v83[1] & v80) == 0)
            {
              v92 = CFGetAllocator(v5);
              *(**(v5 + 40) + 8 * v77) = CFCharacterSetCreateMutable(v92);
              v83 = *(v5 + 40);
              *(v83 + 2) |= v80;
            }

            CFCharacterSetIntersect(*(*v83 + 8 * v77), v82);
            goto LABEL_129;
          }

          *(v83 + 12) = v81;
          v84 = *v83;
          v85 = CFGetAllocator(v5);
          if (v84)
          {
            v86 = __CFSafelyReallocateWithAllocatorTyped(v85, **(v5 + 40), v78, 1153737439, 0);
LABEL_119:
            v83 = *(v5 + 40);
            *v83 = v86;
            goto LABEL_120;
          }
        }

        else
        {
          v90 = CFGetAllocator(v5);
          v91 = CFAllocatorAllocateTyped(v90, 0x10uLL, 0x1080040FC6463CFuLL);
          *(v5 + 40) = v91;
          *(v91 + 12) = v81;
          *(v91 + 8) = 0;
          v85 = CFGetAllocator(v5);
        }

        v86 = CFAllocatorAllocateTyped(v85, v78, 0x6004044C4A2DFuLL);
        goto LABEL_119;
      }

      if (*(v75 + 13))
      {
        v96 = *(v5 + 40);
        if (v96)
        {
          if (!*(v96 + 8))
          {
LABEL_140:
            *(v96 + 13) = 1;
            goto LABEL_181;
          }

          for (k = 0; k != 16; ++k)
          {
            v98 = *(v5 + 40);
            if (((*(v98 + 8) >> k) & 2) != 0)
            {
              CFRelease(*(*v98 + 8 * k));
            }
          }

          v99 = CFGetAllocator(v5);
          CFAllocatorDeallocate(v99, **(v5 + 40));
          v100 = CFGetAllocator(v5);
          CFAllocatorDeallocate(v100, *(v5 + 40));
          *(v5 + 40) = 0;
        }

        v101 = CFGetAllocator(v5);
        v96 = CFAllocatorAllocateTyped(v101, 0x10uLL, 0x1080040FC6463CFuLL);
        *(v5 + 40) = v96;
        *v96 = 0;
        *(v96 + 6) = 0;
        goto LABEL_140;
      }
    }

    v102 = atomic_load((v4 + 8));
    if ((v102 & 0x70) != 0)
    {
LABEL_181:
      if (__CFCheckForExapendedSet == 1)
      {
        __CFCheckForExpandedSet(v5, v20, v21, v22, v23, v24, v25, v26);
      }

      return;
    }

    v103 = *(v4 + 40);
    if (v103)
    {
      v104 = *(v103 + 13) != 0;
    }

    else
    {
      v104 = 0;
    }

    v115 = 1;
    while (1)
    {
      BitmapForPlane = CFUniCharGetBitmapForPlane(*(v4 + 24), v115, __b, v104);
      if (BitmapForPlane != 255)
      {
        break;
      }

LABEL_180:
      if (++v115 == 17)
      {
        goto LABEL_181;
      }
    }

    v117 = BitmapForPlane;
    v118 = *(v5 + 40);
    if (v118)
    {
      if (v115 <= *(v118 + 12))
      {
LABEL_174:
        if ((v118[1] & (1 << v115)) == 0)
        {
          v125 = CFGetAllocator(v5);
          *(**(v5 + 40) + 8 * v115 - 8) = CFCharacterSetCreateMutable(v125);
          v118 = *(v5 + 40);
          *(v118 + 2) |= 1 << v115;
        }

        v126 = *v118 + 8 * v115;
        v127 = *(v126 - 8);
        if (v117 == 1)
        {
          v134.location = 0;
          v134.length = 0x10000;
          CFCharacterSetAddCharactersInRange(*(v126 - 8), v134);
        }

        else
        {
          __CFCSetMakeBitmap(*(v126 - 8));
          v128 = 0;
          v129 = *(v127 + 24);
          do
          {
            *(v129 + v128 * 4) |= __b[0].u32[v128];
            ++v128;
          }

          while (v128 != 2048);
        }

        goto LABEL_180;
      }

      *(v118 + 12) = v115;
      v119 = *v118;
      v120 = CFGetAllocator(v5);
      if (v119)
      {
        v121 = __CFSafelyReallocateWithAllocatorTyped(v120, **(v5 + 40), 8 * v115, 1153737439, 0);
LABEL_173:
        v118 = *(v5 + 40);
        *v118 = v121;
        goto LABEL_174;
      }

      v124 = 8 * v115;
    }

    else
    {
      v122 = CFGetAllocator(v5);
      v123 = CFAllocatorAllocateTyped(v122, 0x10uLL, 0x1080040FC6463CFuLL);
      *(v5 + 40) = v123;
      *(v123 + 12) = v115;
      *(v123 + 13) = 0;
      *(v123 + 8) = 0;
      v120 = CFGetAllocator(v5);
      v124 = 8 * v115;
    }

    v121 = CFAllocatorAllocateTyped(v120, v124, 0x6004044C4A2DFuLL);
    goto LABEL_173;
  }
}

void __CFCSetAddNonBMPPlanesInRange(CFTypeRef cf, unint64_t a2, int a3)
{
  v3 = a2 >> 16;
  if ((a2 + a3 - 1) >> 16 >= 16)
  {
    v4 = 16;
  }

  else
  {
    v4 = (a2 + a3 - 1) >> 16;
  }

  if (v3 <= 16)
  {
    v6 = *(cf + 5);
    if (v6)
    {
      v7 = *(v6 + 13) == 0;
    }

    else
    {
      v7 = 1;
    }

    v48 = v7;
    if (v3 <= 1)
    {
      v8 = 1;
    }

    else
    {
      v8 = a2 >> 16;
    }

    if (v8 <= v4)
    {
      v9 = a2;
      v47 = (a2 + a3);
      v10 = (a2 + a3);
      v11 = 8 * v8;
      while (1)
      {
        if (v47)
        {
          v12 = v4 == v8;
        }

        else
        {
          v12 = 0;
        }

        v13 = 0x10000;
        if (v12)
        {
          v13 = v10;
        }

        v14 = v13 - v9;
        if (v48)
        {
          if (!v8)
          {
            goto LABEL_76;
          }

          if (v8 <= 0x10u)
          {
            v15 = *(cf + 5);
            if (v15)
            {
              if (*(v15 + 12) < v8)
              {
                *(v15 + 12) = v8;
                v16 = *v15;
                v17 = CFGetAllocator(cf);
                if (v16)
                {
                  Typed = __CFSafelyReallocateWithAllocatorTyped(v17, **(cf + 5), v11 & 0xF8, 1153737439, 0);
                  goto LABEL_54;
                }

LABEL_53:
                Typed = CFAllocatorAllocateTyped(v17, v11 & 0xF8, 0x6004044C4A2DFuLL);
LABEL_54:
                v15 = *(cf + 5);
                *v15 = Typed;
              }

              if ((v15[1] & (1 << v8)) != 0)
              {
                v38 = v8 & 0x1F;
              }

              else
              {
                v39 = CFGetAllocator(cf);
                Mutable = CFCharacterSetCreateMutable(v39);
                v38 = v8 & 0x1F;
                *(**(cf + 5) + 8 * v38 - 8) = Mutable;
                v15 = *(cf + 5);
                *(v15 + 2) |= 1 << v8;
              }

              v41 = *(*v15 + 8 * v38 - 8);
              if (v41)
              {
                v51.location = v9;
                v51.length = v14;
                CFCharacterSetAddCharactersInRange(v41, v51);
              }

              goto LABEL_60;
            }

            v36 = CFGetAllocator(cf);
            v37 = CFAllocatorAllocateTyped(v36, 0x10uLL, 0x1080040FC6463CFuLL);
            *(cf + 5) = v37;
            *(v37 + 12) = v8;
            *(v37 + 8) = 0;
            v17 = CFGetAllocator(cf);
            goto LABEL_53;
          }
        }

        else
        {
          if (!v8)
          {
LABEL_76:
            __break(1u);
            return;
          }

          if (v8 > 0x10u || (v19 = *(cf + 5)) == 0 || ((*(v19 + 8) >> v8) & 1) == 0 || *(v19 + 12) < v8 || (v20 = *v19 + 8 * (v8 & 0x1F), (v21 = *(v20 - 8)) == 0))
          {
            v25 = CFGetAllocator(cf);
            v26 = CFCharacterSetCreateMutable(v25);
            v50.location = v9;
            v50.length = v14;
            CFCharacterSetAddCharactersInRange(v26, v50);
            v27 = *(cf + 5);
            if (v27)
            {
              if (*(v27 + 12) < v8)
              {
                *(v27 + 12) = v8;
                v28 = *v27;
                v29 = CFGetAllocator(cf);
                if (v28)
                {
                  v30 = __CFSafelyReallocateWithAllocatorTyped(v29, **(cf + 5), v11 & 0x7F8, 1153737439, 0);
                  goto LABEL_45;
                }

LABEL_44:
                v30 = CFAllocatorAllocateTyped(v29, v11 & 0x7F8, 0x6004044C4A2DFuLL);
LABEL_45:
                v27 = *(cf + 5);
                *v27 = v30;
              }

              v33 = 1 << v8;
              if ((v27[1] & (1 << v8)) != 0)
              {
                CFRelease(*(*v27 + 8 * v8 - 8));
              }

              if (v26)
              {
                *(**(cf + 5) + 8 * v8 - 8) = CFRetain(v26);
                v34 = *(cf + 5);
                v35 = *(v34 + 8) | v33;
              }

              else
              {
                v34 = *(cf + 5);
                v35 = *(v34 + 8) & ~v33;
              }

              *(v34 + 8) = v35;
              CFRelease(v26);
              goto LABEL_60;
            }

            v31 = CFGetAllocator(cf);
            v32 = CFAllocatorAllocateTyped(v31, 0x10uLL, 0x1080040FC6463CFuLL);
            *(cf + 5) = v32;
            *(v32 + 12) = v8;
            *(v32 + 8) = 0;
            v29 = CFGetAllocator(cf);
            goto LABEL_44;
          }

          v49.location = v9;
          v49.length = v14;
          CFCharacterSetRemoveCharactersInRange(*(v20 - 8), v49);
          v22 = v21[5];
          if (!v22 || !*(v22 + 8) && !*(v22 + 13))
          {
            v23 = atomic_load(v21 + 1);
            v24 = (v23 >> 4) & 7;
            if (v24 > 2)
            {
              if ((v24 == 3 || v24 == 4) && !v21[3])
              {
LABEL_65:
                v42 = atomic_load(v21 + 1);
                if ((v42 & 8) == 0)
                {
                  CFRelease(v21);
                  *(*(cf + 5) + 8) &= ~(1 << v8);
                }
              }
            }

            else if ((v24 == 1 || v24 == 2) && !v21[4])
            {
              goto LABEL_65;
            }
          }
        }

LABEL_60:
        ++v8;
        v11 += 8;
        if (v4 + 1 == v8)
        {
          v6 = *(cf + 5);
          break;
        }
      }
    }

    if (v6 && !*(v6 + 8) && !*(v6 + 13))
    {
      for (i = 0; i != 16; ++i)
      {
        v44 = *(cf + 5);
        if (((*(v44 + 8) >> i) & 2) != 0)
        {
          CFRelease(*(*v44 + 8 * i));
        }
      }

      v45 = CFGetAllocator(cf);
      CFAllocatorDeallocate(v45, **(cf + 5));
      v46 = CFGetAllocator(cf);
      CFAllocatorDeallocate(v46, *(cf + 5));
      *(cf + 5) = 0;
    }
  }
}

uint64_t CFUniCharGetBitmapForPlane(unsigned int a1, unsigned int a2, _BYTE *a3, int a4)
{
  BitmapPtrForPlane = CFUniCharGetBitmapPtrForPlane(a1, a2);
  if (BitmapPtrForPlane)
  {
    v9 = 8193;
    if (a4)
    {
      do
      {
        v10 = *BitmapPtrForPlane++;
        *a3++ = ~v10;
        --v9;
      }

      while (v9 > 1);
    }

    else
    {
      do
      {
        v11 = *BitmapPtrForPlane++;
        *a3++ = v11;
        --v9;
      }

      while (v9 > 1);
    }

LABEL_6:
    LOBYTE(v12) = 0;
    return v12;
  }

  if (a1 != 12)
  {
    if ((a1 < 4 || a1 == 15) && !a2)
    {
      memset(a3, a4 << 31 >> 31, 0x2000uLL);
      if (a1 != 15 && a1 != 3)
      {
        goto LABEL_33;
      }

      for (i = 0; i != 7; ++i)
      {
        v22 = word_1833782B0[i];
        v23 = 1 << (v22 & 7);
        v24 = v22 >> 3;
        v25 = a3[v24];
        v26 = v25 & ~v23;
        v27 = v25 | v23;
        if (a4)
        {
          v27 = v26;
        }

        a3[v24] = v27;
      }

      if (a1 != 15)
      {
LABEL_33:
        v28 = a3[1];
        if (a4)
        {
          a3[1] = v28 & 0xFD;
          a3[4] &= ~1u;
          a3[20] &= ~1u;
          a3[720] &= ~1u;
          a3[1029] &= ~0x80u;
          a3[1035] &= ~0x80u;
          v29 = a3[1536] & 0xFE;
        }

        else
        {
          a3[1] = v28 | 2;
          a3[4] |= 1u;
          a3[20] |= 1u;
          a3[720] |= 1u;
          a3[1029] |= 0x80u;
          a3[1035] |= 0x80u;
          v29 = a3[1536] | 1;
        }

        a3[1536] = v29;
        for (j = 0x2000; j != 8204; ++j)
        {
          v41 = 1 << (j & 7);
          v42 = a3[j >> 3];
          v43 = v42 & ~v41;
          v44 = v42 | v41;
          if (a4)
          {
            v44 = v43;
          }

          a3[j >> 3] = v44;
        }
      }

      goto LABEL_6;
    }

    v17 = a4 == 0;
    v18 = 1;
    goto LABEL_64;
  }

  if (a2 > 0xE)
  {
    if (a2 - 15 <= 1)
    {
      for (k = 2049; k > 1; --k)
      {
        *a3 = a4 << 31 >> 31;
        a3 += 4;
      }

      LOBYTE(v12) = 0;
      if (a4)
      {
        v20 = 63;
      }

      else
      {
        v20 = -64;
      }

      *(a3 - 5) = v20;
      return v12;
    }

    goto LABEL_63;
  }

  v13 = *(&__CFUniCharLegalCharacterSetBitmap + a2);
  if (v13)
  {
    v14 = 8193;
    if (a4)
    {
      do
      {
        LOBYTE(v12) = 0;
        v15 = *v13++;
        *a3++ = v15;
        --v14;
      }

      while (v14 > 1);
    }

    else
    {
      do
      {
        LOBYTE(v12) = 0;
        v16 = *v13++;
        *a3++ = ~v16;
        --v14;
      }

      while (v14 > 1);
    }

    return v12;
  }

  if (a2 != 14)
  {
LABEL_63:
    v17 = a4 == 0;
    v18 = -1;
LABEL_64:
    if (v17)
    {
      return -v18;
    }

    else
    {
      LOBYTE(v12) = v18;
    }

    return v12;
  }

  v30 = 0;
  *a3 = 2;
  v31 = a3 + 8;
  v32 = a4 - 1;
  v33 = vdupq_n_s64(0x1FFFuLL);
  do
  {
    v34 = vdupq_n_s64(v30);
    v35 = vorrq_s8(v34, xmmword_183306C30);
    if (vuzp1_s8(vuzp1_s16(vmovn_s64(vcgtq_u64(v33, v35)), 14), 14).u8[0])
    {
      v31[v30 - 7] = v32;
    }

    if (vuzp1_s8(vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x1FFFuLL), v35)), 14), 14).i8[1])
    {
      v31[v30 - 6] = v32;
    }

    if (vuzp1_s8(vuzp1_s16(14, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x1FFFuLL), vorrq_s8(v34, xmmword_183306C20)))), 14).i8[2])
    {
      v31[v30 - 5] = v32;
      v31[v30 - 4] = ((v30 != 0) ^ a4) << 31 >> 31;
    }

    v36 = vorrq_s8(v34, xmmword_183306C10);
    if (vuzp1_s8(14, vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x1FFFuLL), v36)), 14)).i32[1])
    {
      v31[v30 - 3] = (((v30 - 11) < 0xFFFFFFF4) ^ a4) << 31 >> 31;
    }

    if (vuzp1_s8(14, vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x1FFFuLL), v36)), 14)).i8[5])
    {
      v31[v30 - 2] = (((v30 - 10) < 0xFFFFFFF4) ^ a4) << 31 >> 31;
    }

    if (vuzp1_s8(14, vuzp1_s16(14, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x1FFFuLL), vorrq_s8(v34, xmmword_183306C00))))).i8[6])
    {
      v31[v30 - 1] = (((v30 - 9) < 0xFFFFFFF4) ^ a4) << 31 >> 31;
      v31[v30] = (((v30 - 8) < 0xFFFFFFF4) ^ a4) << 31 >> 31;
    }

    v37 = vorrq_s8(v34, xmmword_1833782A0);
    if (vuzp1_s8(vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x1FFFuLL), v37)), 14), 14).u8[0])
    {
      v31[v30 + 1] = (((v30 - 7) < 0xFFFFFFF4) ^ a4) << 31 >> 31;
    }

    if (vuzp1_s8(vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x1FFFuLL), v37)), 14), 14).i8[1])
    {
      v31[v30 + 2] = (((v30 - 6) < 0xFFFFFFF4) ^ a4) << 31 >> 31;
    }

    if (vuzp1_s8(vuzp1_s16(14, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x1FFFuLL), vorrq_s8(v34, xmmword_183378290)))), 14).i8[2])
    {
      v31[v30 + 3] = (((v30 - 5) < 0xFFFFFFF4) ^ a4) << 31 >> 31;
      v31[v30 + 4] = (((v30 - 4) < 0xFFFFFFF4) ^ a4) << 31 >> 31;
    }

    v38 = vorrq_s8(v34, xmmword_183378280);
    if (vuzp1_s8(14, vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x1FFFuLL), v38)), 14)).i32[1])
    {
      v31[v30 + 5] = (((v30 - 3) < 0xFFFFFFF4) ^ a4) << 31 >> 31;
    }

    if (vuzp1_s8(14, vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x1FFFuLL), v38)), 14)).i8[5])
    {
      v31[v30 + 6] = (((v30 - 2) < 0xFFFFFFF4) ^ a4) << 31 >> 31;
    }

    if (vuzp1_s8(14, vuzp1_s16(14, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x1FFFuLL), vorrq_s8(v34, xmmword_183378270))))).i8[6])
    {
      v31[v30 + 7] = (((v30 - 1) < 0xFFFFFFF4) ^ a4) << 31 >> 31;
      v31[v30 + 8] = v32;
    }

    LOBYTE(v12) = 0;
    v30 += 16;
  }

  while (v30 != 0x2000);
  return v12;
}

uint64_t parseArrayTag(uint64_t a1, CFArrayRef *a2, unint64_t a3)
{
  cf[1] = *MEMORY[0x1E69E9840];
  cf[0] = 0;
  if (!*(a1 + 80))
  {
    Mutable = CFArrayCreateMutable(*(a1 + 32), 0, &kCFTypeArrayCallBacks);
    v8 = *(a1 + 72);
    v21 = 0;
    v22 = 0;
    __CFPropertyListCreateSplitKeypaths(*(a1 + 32), v8, &v21, &v22);
    v9 = v21;
    v20 = a2;
    if (!v21)
    {
      ContentObject = getContentObject(a1, 0, cf, a3);
      v13 = 0;
      v11 = v22;
      if (ContentObject)
      {
        goto LABEL_17;
      }

      goto LABEL_31;
    }

    v10 = CFStringCreateWithFormat(*(a1 + 32), 0, @"%ld", 0);
    if (!CFSetContainsValue(v9, v10) && !CFSetContainsValue(v9, @"*"))
    {
      *(a1 + 80) = 1;
    }

    if (v10)
    {
      CFRelease(v10);
    }

    v11 = v22;
    *(a1 + 72) = v22;
    v12 = getContentObject(a1, 0, cf, a3);
    *(a1 + 72) = v8;
    *(a1 + 80) = 0;
    v13 = 1;
    if (!v12)
    {
LABEL_31:
      if (v11)
      {
        CFRelease(v11);
      }

      if (v9)
      {
        CFRelease(v9);
      }

      if (!*(a1 + 24) && checkForCloseTag(a1, "array", 5uLL))
      {
        v17 = allowImmutableCollections;
        if (allowImmutableCollections == -1)
        {
          v17 = getenv("CFPropertyListAllowImmutableCollections") != 0;
          allowImmutableCollections = v17;
        }

        if (v17 == 1)
        {
          v18 = v20;
          if (*(a1 + 40))
          {
            Copy = Mutable;
          }

          else
          {
            Copy = CFArrayCreateCopy(*(a1 + 32), Mutable);
            if (Mutable)
            {
              CFRelease(Mutable);
            }
          }
        }

        else
        {
          Copy = Mutable;
          v18 = v20;
        }

        *v18 = Copy;
        return 1;
      }

      if (Mutable)
      {
        CFRelease(Mutable);
      }

      return 0;
    }

    while (1)
    {
      while (1)
      {
LABEL_17:
        if (cf[0])
        {
          CFArrayAppendValue(Mutable, cf[0]);
          if (cf[0])
          {
            CFRelease(cf[0]);
          }
        }

        if (v9)
        {
          break;
        }

        if (!getContentObject(a1, 0, cf, a3))
        {
          goto LABEL_31;
        }
      }

      v15 = CFStringCreateWithFormat(*(a1 + 32), 0, @"%ld", v13);
      if (!CFSetContainsValue(v9, v15) && !CFSetContainsValue(v9, @"*"))
      {
        break;
      }

      if (v15)
      {
        goto LABEL_24;
      }

LABEL_25:
      ++v13;
      *(a1 + 72) = v11;
      v16 = getContentObject(a1, 0, cf, a3);
      *(a1 + 72) = v8;
      *(a1 + 80) = 0;
      if (!v16)
      {
        goto LABEL_31;
      }
    }

    *(a1 + 80) = 1;
    if (!v15)
    {
      goto LABEL_25;
    }

LABEL_24:
    CFRelease(v15);
    goto LABEL_25;
  }

  while (getContentObject(a1, 0, cf, a3))
  {
    if (cf[0])
    {
      CFRelease(cf[0]);
    }
  }

  if (*(a1 + 24))
  {
    return 0;
  }

  result = checkForCloseTag(a1, "array", 5uLL);
  if (!result)
  {
    return result;
  }

  *a2 = 0;
  return 1;
}

void _CFPreferencesSetValueWithContainer(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (_CFPrefsCurrentProcessIsCFPrefsD())
  {
    v6 = 0;
  }

  else
  {
    if (qword_1ED40BE20 != -1)
    {
      dispatch_once(&qword_1ED40BE20, &__block_literal_global_263);
    }

    v6 = [qword_1ED40BE18 copyPrefs];
  }

  v7 = v6;
  [_CFXPreferences setValue:v6 forKey:? identifier:? user:? host:? container:?];
}

uint64_t lineNumber(unint64_t *a1)
{
  v1 = *a1;
  v2 = a1[2];
  if (*a1 >= v2)
  {
    return 1;
  }

  v3 = a1[1];
  result = 1;
  do
  {
    if (v1 >= v3)
    {
      break;
    }

    v5 = *v1;
    if (v5 == 10)
    {
      result = (result + 1);
    }

    else if (v5 == 13)
    {
      result = (result + 1);
      if ((v1 + 1) < v2 && (v1 + 1) < v3 && v1[1] == 10)
      {
        ++v1;
      }
    }

    ++v1;
  }

  while (v1 < v2);
  return result;
}

uint64_t containsKey(_DWORD *a1, uint64_t a2, int a3, uint64_t a4)
{
  if (a4)
  {
    *a1 = a3;
  }

  return a4;
}

Boolean CFPreferencesAppSynchronize(CFStringRef applicationID)
{
  if (_CFPrefsCurrentProcessIsCFPrefsD())
  {
    v2 = 0;
  }

  else
  {
    if (qword_1ED40BE20 != -1)
    {
      CFPreferencesAppSynchronize_cold_1();
    }

    v2 = [qword_1ED40BE18 copyPrefs];
  }

  v3 = [(_CFXPreferences *)v2 appSynchronizeWithIdentifier:0 container:?];

  return v3;
}

uint64_t _CFPreferencesSynchronizeWithContainer(__CFString *a1, const __CFString *a2, const void *a3, __CFString *a4)
{
  if (_CFPrefsCurrentProcessIsCFPrefsD())
  {
    v8 = 0;
  }

  else
  {
    if (qword_1ED40BE20 != -1)
    {
      _CFPreferencesSynchronizeWithContainer_cold_1();
    }

    v8 = [qword_1ED40BE18 copyPrefs];
  }

  v9 = [(_CFXPreferences *)v8 synchronizeIdentifier:a1 user:a2 host:a3 container:a4];

  return v9;
}

SInt32 CFStringGetIntValue(CFStringRef str)
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = 0;
  v15 = str;
  v18 = 0;
  Length = CFStringGetLength(str);
  CharactersPtr = CFStringGetCharactersPtr(v15);
  CStringPtrInternal = 0;
  v16 = CharactersPtr;
  if (!CharactersPtr)
  {
    CStringPtrInternal = _CFStringGetCStringPtrInternal(str, 0x600u, 0, 1);
  }

  v6 = 0;
  *buffer = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v20 = 0;
  v21 = 0;
  v17 = CStringPtrInternal;
  if (__CFStringScanInteger(buffer, 0, &v5, 0, &v6))
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

uint64_t __CFStringScanInteger(UniChar *buffer, uint64_t a2, int *a3, int a4, uint64_t *a5)
{
  v9 = *a3;
  if ((*a3 & 0x80000000) == 0)
  {
    goto LABEL_4;
  }

LABEL_17:
  v13 = -1;
  while (v13 == 12288 || (v13 - 8204) > 0xFFF3u || v13 < 0x21u || (v13 - 161) >= 0xFFDEu)
  {
    v9 = *a3 + 1;
    *a3 = v9;
    if (v9 < 0)
    {
      goto LABEL_17;
    }

LABEL_4:
    v10 = v9;
    v11 = *(buffer + 20);
    if (v11 <= v10)
    {
      goto LABEL_17;
    }

    v12 = *(buffer + 17);
    if (v12)
    {
      v13 = *(v12 + 2 * *(buffer + 19) + 2 * v10);
    }

    else
    {
      v14 = *(buffer + 18);
      if (v14)
      {
        v13 = *(v14 + *(buffer + 19) + v10);
      }

      else
      {
        if (*(buffer + 22) <= v10 || (v15 = *(buffer + 21), v15 > v10))
        {
          v16 = v10 - 4;
          if (v10 < 4)
          {
            v16 = 0;
          }

          if (v16 + 64 < v11)
          {
            v11 = v16 + 64;
          }

          *(buffer + 21) = v16;
          *(buffer + 22) = v11;
          v66.length = v11 - v16;
          v66.location = *(buffer + 19) + v16;
          CFStringGetCharacters(*(buffer + 16), v66, buffer);
          v15 = *(buffer + 21);
        }

        v13 = buffer[v10 - v15];
      }
    }
  }

  if (v13 == 45 || v13 == 43)
  {
    do
    {
      v17 = *a3;
      v18 = v17 + 1;
      *a3 = v17 + 1;
      if (v17 < -1 || (v19 = *(buffer + 20), v19 <= v18))
      {
        v21 = -1;
      }

      else
      {
        v20 = *(buffer + 17);
        if (v20)
        {
          v21 = *(v20 + 2 * *(buffer + 19) + 2 * v18);
        }

        else
        {
          v22 = *(buffer + 18);
          if (v22)
          {
            v21 = *(v22 + *(buffer + 19) + v18);
          }

          else
          {
            if (*(buffer + 22) <= v18 || (v23 = *(buffer + 21), v23 > v18))
            {
              v24 = v18 - 4;
              if (v18 < 4)
              {
                v24 = 0;
              }

              if (v24 + 64 < v19)
              {
                v19 = v24 + 64;
              }

              *(buffer + 21) = v24;
              *(buffer + 22) = v19;
              v67.length = v19 - v24;
              v67.location = *(buffer + 19) + v24;
              CFStringGetCharacters(*(buffer + 16), v67, buffer);
              v23 = *(buffer + 21);
            }

            v21 = buffer[v18 - v23];
          }
        }
      }
    }

    while (v21 == 12288 || (v21 - 8204) > 0xFFF3u || v21 < 0x21u || (v21 - 161) > 0xFFDDu);
    v25 = v13 == 45;
    v13 = v21;
  }

  else
  {
    v25 = 0;
  }

  if ((v13 - 58) < 0xFFF6u)
  {
    return 0;
  }

  v27 = 0;
  v28 = 0;
  v29 = 0;
  while (1)
  {
    if (v27)
    {
      if (v29 > 0xCCCCCCCCCCCCCCBLL && (v29 != 0xCCCCCCCCCCCCCCCLL || v13 - v25 - 48 >= 7))
      {
        if (v25)
        {
          v29 = 0x8000000000000000;
        }

        else
        {
          v29 = 0x7FFFFFFFFFFFFFFFLL;
        }

        while (1)
        {
          v30 = *a3;
          v31 = v30 + 1;
          *a3 = v30 + 1;
          if (v30 < -1)
          {
            break;
          }

          v32 = *(buffer + 20);
          if (v32 <= v31)
          {
            break;
          }

          v33 = *(buffer + 17);
          if (v33)
          {
            v13 = *(v33 + 2 * *(buffer + 19) + 2 * v31);
          }

          else
          {
            v34 = *(buffer + 18);
            if (v34)
            {
              v13 = *(v34 + *(buffer + 19) + v31);
            }

            else
            {
              if (*(buffer + 22) <= v31 || (v35 = *(buffer + 21), v35 > v31))
              {
                v36 = v31 - 4;
                if (v31 < 4)
                {
                  v36 = 0;
                }

                if (v36 + 64 < v32)
                {
                  v32 = v36 + 64;
                }

                *(buffer + 21) = v36;
                *(buffer + 22) = v32;
                v68.length = v32 - v36;
                v68.location = *(buffer + 19) + v36;
                CFStringGetCharacters(*(buffer + 16), v68, buffer);
                v35 = *(buffer + 21);
              }

              v13 = buffer[v31 - v35];
            }
          }

          if ((v13 - 58) < 0xFFF6u)
          {
            v37 = 0;
            v25 = 0;
            goto LABEL_122;
          }
        }

        v37 = 0;
        v63 = 1;
        goto LABEL_139;
      }

      v29 = 10 * v29 + v13 - 48;
      v38 = *a3;
      v39 = v38 + 1;
      *a3 = v38 + 1;
      if (v38 < -1 || (v40 = *(buffer + 20), v40 <= v39))
      {
        v37 = 0;
LABEL_138:
        v63 = !v25;
        goto LABEL_139;
      }

      v41 = *(buffer + 17);
      if (v41)
      {
        v37 = 0;
        v13 = *(v41 + 2 * *(buffer + 19) + 2 * v39);
      }

      else
      {
        v50 = *(buffer + 18);
        if (v50)
        {
          v37 = 0;
          v13 = *(v50 + *(buffer + 19) + v39);
        }

        else
        {
          if (*(buffer + 22) <= v39 || (v59 = *(buffer + 21), v59 > v39))
          {
            v60 = v39 - 4;
            if (v39 < 4)
            {
              v60 = 0;
            }

            if (v60 + 64 < v40)
            {
              v40 = v60 + 64;
            }

            *(buffer + 21) = v60;
            *(buffer + 22) = v40;
            v70.length = v40 - v60;
            v70.location = *(buffer + 19) + v60;
            CFStringGetCharacters(*(buffer + 16), v70, buffer);
            v59 = *(buffer + 21);
          }

          v37 = 0;
          v13 = buffer[v39 - v59];
        }
      }

      goto LABEL_122;
    }

    if (v28 > 214748363)
    {
      break;
    }

    v42 = v13 - 48;
    v43 = v13 - 48;
LABEL_84:
    if (v42 >= 0xAu)
    {
      v45 = -1;
    }

    else
    {
      v45 = v43;
    }

    v28 = v45 + 10 * v28;
    v46 = *a3;
    v47 = v46 + 1;
    *a3 = v46 + 1;
    if (v46 < -1 || (v48 = *(buffer + 20), v48 <= v47))
    {
      v37 = 1;
      goto LABEL_138;
    }

    v49 = *(buffer + 17);
    if (v49)
    {
      v27 = 0;
      v13 = *(v49 + 2 * *(buffer + 19) + 2 * v47);
    }

    else
    {
      v51 = *(buffer + 18);
      if (v51)
      {
        v27 = 0;
        v13 = *(v51 + *(buffer + 19) + v47);
      }

      else
      {
        if (*(buffer + 22) <= v47 || (v61 = *(buffer + 21), v61 > v47))
        {
          v62 = v47 - 4;
          if (v47 < 4)
          {
            v62 = 0;
          }

          if (v62 + 64 < v48)
          {
            v48 = v62 + 64;
          }

          *(buffer + 21) = v62;
          *(buffer + 22) = v48;
          v71.length = v48 - v62;
          v71.location = *(buffer + 19) + v62;
          CFStringGetCharacters(*(buffer + 16), v71, buffer);
          v61 = *(buffer + 21);
        }

        v27 = 0;
        v13 = buffer[v47 - v61];
      }
    }

    v37 = 1;
LABEL_132:
    if ((v13 - 58) <= 0xFFF5u)
    {
      goto LABEL_138;
    }
  }

  if (v28 == 214748364)
  {
    v42 = v13 - 48;
    v43 = v13 - 48;
    v44 = (v13 - 48) >= 0xAu ? -1 : v13 - 48;
    if (v44 - v25 < 7)
    {
      goto LABEL_84;
    }
  }

  if (a4)
  {
    v37 = 0;
    v29 = v28;
LABEL_122:
    v27 = 1;
    goto LABEL_132;
  }

  if (v25)
  {
    v28 = 0x80000000;
  }

  else
  {
    v28 = 0x7FFFFFFF;
  }

  while (1)
  {
    v52 = *a3;
    v53 = v52 + 1;
    *a3 = v52 + 1;
    if (v52 < -1)
    {
      break;
    }

    v54 = *(buffer + 20);
    if (v54 <= v53)
    {
      break;
    }

    v55 = *(buffer + 17);
    if (v55)
    {
      v13 = *(v55 + 2 * *(buffer + 19) + 2 * v53);
    }

    else
    {
      v56 = *(buffer + 18);
      if (v56)
      {
        v13 = *(v56 + *(buffer + 19) + v53);
      }

      else
      {
        if (*(buffer + 22) <= v53 || (v57 = *(buffer + 21), v57 > v53))
        {
          v58 = v53 - 4;
          if (v53 < 4)
          {
            v58 = 0;
          }

          if (v58 + 64 < v54)
          {
            v54 = v58 + 64;
          }

          *(buffer + 21) = v58;
          *(buffer + 22) = v54;
          v69.length = v54 - v58;
          v69.location = *(buffer + 19) + v58;
          CFStringGetCharacters(*(buffer + 16), v69, buffer);
          v57 = *(buffer + 21);
        }

        v13 = buffer[v53 - v57];
      }
    }

    v37 = 1;
    if ((v13 - 58) < 0xFFF6u)
    {
      v27 = 0;
      v25 = 0;
      goto LABEL_132;
    }
  }

  v63 = 1;
  v37 = 1;
LABEL_139:
  if (a5)
  {
    if (a4)
    {
      if (v37)
      {
        v64 = v28;
      }

      else
      {
        v64 = v29;
      }

      if (!v63)
      {
        v64 = -v64;
      }

      *a5 = v64;
    }

    else
    {
      if (v63)
      {
        v65 = v28;
      }

      else
      {
        v65 = -v28;
      }

      *a5 = v65;
    }
  }

  return 1;
}

void CFStringCapitalize(CFMutableStringRef theString, CFLocaleRef locale)
{
  v67 = *MEMORY[0x1E69E9840];
  p_info = &theString->info;
  v5 = atomic_load(&theString->info);
  v6 = CF_IS_OBJC(7uLL, theString);
  if (v6)
  {

    [(__CFString *)theString _cfCapitalize:locale];
    return;
  }

  v8 = atomic_load(p_info);
  if (v8)
  {
    v17 = atomic_load(&theString->info);
    v18 = v17 & 5;
    v19 = atomic_load(&theString->info);
    v20 = v19 & 0x60;
    if (v18 == 4)
    {
      p_data = &theString->data;
      if (v20)
      {
        v22 = *p_data;
      }

      else
      {
        v24 = atomic_load(&theString->info);
        v22 = &p_data[(v24 & 5) != 4];
      }

      length = *v22;
    }

    else if ((v19 & 0x60) != 0)
    {
      length = theString->length;
    }

    else
    {
      length = theString->data;
    }

    BitmapPtrForPlane = CFUniCharGetBitmapPtrForPlane(0x6Du, 0);
    if (locale)
    {
      locale = _CFStrGetSpecialCaseHandlingLanguageIdentifierForLocale(locale, 0);
    }

    v25 = 0;
    IsMemberOf = 0;
    if (!locale && (v5 & 0x10) == 0)
    {
      v27 = atomic_load(&theString->info);
      v28 = &theString->data;
      if ((v27 & 0x60) != 0)
      {
        v29 = *v28;
      }

      else
      {
        v30 = atomic_load(&theString->info);
        v29 = &v28[(v30 & 5) != 4];
      }

      v31 = atomic_load(&theString->info);
      if (length >= 1)
      {
        v25 = 0;
        IsMemberOf = 0;
        v32 = &v29[(v31 >> 2) & 1];
        while (1)
        {
          v33 = v32[v25];
          if (v33 < 0)
          {
            goto LABEL_42;
          }

          if ((v33 - 65) > 0x19u)
          {
            if ((v33 - 97) > 0x19u)
            {
              if (BitmapPtrForPlane)
              {
                if (((1 << (v33 & 7)) & *(BitmapPtrForPlane + (v32[v25] >> 3))) == 0)
                {
                  IsMemberOf = 0;
                }
              }

              else
              {
                IsMemberOf = 0;
              }

              goto LABEL_34;
            }

            if (IsMemberOf)
            {
              v35 = 0;
            }

            else
            {
              v35 = -32;
            }

            v34 = v33 + v35;
          }

          else
          {
            v34 = v33 | (32 * (IsMemberOf != 0));
          }

          v32[v25] = v34;
          IsMemberOf = 1;
LABEL_34:
          if (length == ++v25)
          {
            return;
          }
        }
      }

      IsMemberOf = 0;
      v25 = 0;
    }

LABEL_42:
    if (v25 >= length)
    {
      return;
    }

    if ((v5 & 0x10) == 0)
    {
      v63 = 0;
      v64 = 0;
      __CFStringChangeSizeMultiple(theString, &v63, 1, 0, 1);
    }

    v36 = atomic_load(&theString->info);
    v37 = &theString->data;
    v62 = &theString->data;
    if ((v36 & 0x60) != 0)
    {
      v38 = *v37;
    }

    else
    {
      v39 = atomic_load(&theString->info);
      v38 = &v37[(v39 & 5) != 4];
    }

    v40 = BitmapPtrForPlane;
    ConditionalCaseMappingFlags = 0;
    while (1)
    {
      v42 = *(v38 + 2 * v25);
      v43 = v25 + 1;
      if ((v42 & 0xFC00) == 0xD800 && v43 < length)
      {
        v52 = *(v38 + 2 * v43);
        if ((v52 & 0xFC00) == 0xDC00)
        {
          v42 = (v52 + (v42 << 10) - 56613888);
        }
      }

      if (!locale && (v42 == 931 ? (v45 = IsMemberOf == 0) : (v45 = 1), v45))
      {
        ConditionalCaseMappingFlags = 0;
      }

      else
      {
        ConditionalCaseMappingFlags = CFUniCharGetConditionalCaseMappingFlags(v42, v38, v25, length, 2 * (IsMemberOf == 0), locale, ConditionalCaseMappingFlags);
      }

      v46 = CFUniCharMapCaseTo(v42, &v65, 8, 2 * (IsMemberOf == 0), ConditionalCaseMappingFlags, locale);
      v47 = v46 - 1;
      if (v46 >= 1)
      {
        *(v38 + 2 * v25) = v65;
      }

      if (v42 >= 0x10000)
      {
        v48 = v46 - 2;
        if (v46 == 2)
        {
          ++v25;
          *(v38 + 2 * v25) = v66[0];
        }

        else
        {
          v49 = v46 - 1;
          if (v46 == 1)
          {
            v63 = v25 + 1;
            v64 = 1;
            __CFStringChangeSizeMultiple(theString, &v63, 1, 0, 1);
            v54 = atomic_load(&theString->info);
            if ((v54 & 0x60) != 0)
            {
              v38 = *v62;
            }

            else
            {
              v58 = atomic_load(&theString->info);
              v38 = &v62[(v58 & 5) != 4];
            }

            v40 = BitmapPtrForPlane;
            --length;
          }

          else if (v46)
          {
            v63 = v25 + 1;
            v64 = 0;
            __CFStringChangeSizeMultiple(theString, &v63, 1, v48, 1);
            v55 = atomic_load(&theString->info);
            if ((v55 & 0x60) != 0)
            {
              v38 = *v62;
            }

            else
            {
              v60 = atomic_load(&theString->info);
              v38 = &v62[(v60 & 5) != 4];
            }

            memmove((v38 + 2 * v25 + 2), v66, 2 * v49);
            length += v48;
            v25 += v49;
            v40 = BitmapPtrForPlane;
          }

          else
          {
            v63 = v25;
            v64 = 2;
            __CFStringChangeSizeMultiple(theString, &v63, 1, 0, 1);
            v50 = atomic_load(&theString->info);
            if ((v50 & 0x60) != 0)
            {
              v38 = *v62;
            }

            else
            {
              v59 = atomic_load(&theString->info);
              v38 = &v62[(v59 & 5) != 4];
            }

            v40 = BitmapPtrForPlane;
            length -= 2;
          }
        }

        if (CFUniCharIsMemberOf(v42, 0x6Du))
        {
          goto LABEL_100;
        }

LABEL_97:
        if (CFUniCharIsMemberOf(v42, 7u))
        {
          IsMemberOf = 1;
        }

        else
        {
          IsMemberOf = CFUniCharIsMemberOf(v42, 6u);
        }

        goto LABEL_100;
      }

      if (!v46)
      {
        break;
      }

      if (v46 < 2)
      {
        goto LABEL_84;
      }

      v63 = v25 + 1;
      v64 = 0;
      __CFStringChangeSizeMultiple(theString, &v63, 1, v47, 1);
      v51 = atomic_load(&theString->info);
      if ((v51 & 0x60) != 0)
      {
        v38 = *v62;
      }

      else
      {
        v57 = atomic_load(&theString->info);
        v38 = &v62[(v57 & 5) != 4];
      }

      memmove((v38 + 2 * v25 + 2), v66, 2 * v47);
      length += v47;
      v25 += v47;
      if (!v40)
      {
        goto LABEL_97;
      }

LABEL_88:
      if (((*(v40 + (v42 >> 3)) >> (v42 & 7)) & 1) == 0)
      {
        goto LABEL_97;
      }

LABEL_100:
      if (++v25 >= length)
      {
        return;
      }
    }

    v63 = v25;
    v64 = 1;
    __CFStringChangeSizeMultiple(theString, &v63, 1, 0, 1);
    v53 = atomic_load(&theString->info);
    if ((v53 & 0x60) != 0)
    {
      v38 = *v62;
    }

    else
    {
      v56 = atomic_load(&theString->info);
      v38 = &v62[(v56 & 5) != 4];
    }

    --length;
LABEL_84:
    if (!v40)
    {
      goto LABEL_97;
    }

    goto LABEL_88;
  }

  v9 = _CFOSLog(v6, v7);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
  {
    CFStringCapitalize_cold_1(v9, v10, v11, v12, v13, v14, v15, v16);
  }
}

BOOL _CFBundleIsLanguageDefaultLanguageOfOther(const void *a1, const void *a2)
{
  v2 = 0;
  if (a1 && a2)
  {
    v4 = _CFBundleCopyDefaultLanguageForLanguage(a1);
    if (v4)
    {
      v5 = v4;
      v6 = _CFBundleCopyDefaultLanguageForLanguage(a2);
      if (v6)
      {
        v7 = v6;
        v2 = CFStringCompare(v5, v6, 1uLL) == kCFCompareEqualTo;
        CFRelease(v5);
        v5 = v7;
      }

      else
      {
        v2 = 0;
      }

      CFRelease(v5);
    }

    else
    {
      return 0;
    }
  }

  return v2;
}

const CFArrayCallBacks *__CFArrayGetCallBacks(uint64_t a1)
{
  v1 = atomic_load((a1 + 8));
  v2 = (v1 >> 2) & 3;
  if (!v2)
  {
    return &__kCFNullArrayCallBacks;
  }

  if (v2 == 1)
  {
    return &kCFTypeArrayCallBacks;
  }

  v4 = atomic_load((a1 + 8));
  v5 = v4 & 3;
  if (v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = a1 + 48;
  }

  if (v5 == 2)
  {
    return (a1 + 48);
  }

  else
  {
    return v6;
  }
}

CFStringRef _CFBundleCopyDefaultLanguageForLanguage(const void *a1)
{
  os_unfair_lock_lock_with_options();
  Mutable = _CFBundleCopyDefaultLanguageForLanguage_cache;
  if (!_CFBundleCopyDefaultLanguageForLanguage_cache)
  {
    Mutable = CFDictionaryCreateMutable(&__kCFAllocatorSystemDefault, 0, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    _CFBundleCopyDefaultLanguageForLanguage_cache = Mutable;
  }

  Value = CFDictionaryGetValue(Mutable, a1);
  if (Value)
  {
    Copy = CFStringCreateCopy(0, Value);
LABEL_7:
    os_unfair_lock_unlock(&_CFBundleCopyDefaultLanguageForLanguage_defaultLanguageLock);
    return Copy;
  }

  os_unfair_lock_unlock(&_CFBundleCopyDefaultLanguageForLanguage_defaultLanguageLock);
  Copy = _CFLocaleCopyLocaleIdentifierByAddingLikelySubtags(a1);
  if (Copy)
  {
    os_unfair_lock_lock_with_options();
    CFDictionarySetValue(_CFBundleCopyDefaultLanguageForLanguage_cache, a1, Copy);
    goto LABEL_7;
  }

  return Copy;
}

id _CFLocaleCopyLocaleIdentifierByAddingLikelySubtags(uint64_t a1)
{
  v1 = [NSLocale _localeIdentifierByAddingLikelySubtags:a1];

  return v1;
}

Boolean CFURLSetResourcePropertyForKey(CFURLRef url, CFStringRef key, CFTypeRef propertyValue, CFErrorRef *error)
{
  v14 = *MEMORY[0x1E69E9840];
  v13 = 0;
  if (_CFURLHasFileURLScheme(url, &v13))
  {
    __CFURLResourceInfoPtr(url);
    _FSURLSetResourcePropertyForKey();
  }

  else if (!v13)
  {
    CFLog(4, @"CFURLSetResourcePropertyForKey failed because it was passed a URL which has no scheme", v5, v6, v7, v8, v9, v10, v12);
  }

  return 1;
}

void __CFRunLoopAddItemsToCommonMode(void *a1, uint64_t a2)
{
  v4 = *a2;
  v3 = *(a2 + 8);
  v5 = CFGetTypeID(a1);
  switch(v5)
  {
    case '-':

      CFRunLoopAddObserver(v4, a1, v3);
      break;
    case '/':

      CFRunLoopAddTimer(v4, a1, v3);
      break;
    case '.':

      CFRunLoopAddSource(v4, a1, v3);
      break;
  }
}

uint64_t _CFURLComponentsGetURLQueryAllowedCharacterSet()
{
  if (InitializeURLAllowedCharacterSets_static_init != -1)
  {
    _CFURLComponentsGetURLQueryAllowedCharacterSet_cold_1();
  }

  return *(sURLAllowedCharacterSets + 32);
}

void CFCharacterSetRemoveCharactersInRange(CFMutableCharacterSetRef theSet, CFRange theRange)
{
  length = theRange.length;
  location = theRange.location;
  if (CF_IS_OBJC(0x19uLL, theSet))
  {

    [(__CFCharacterSet *)theSet removeCharactersInRange:location, length];
  }

  else
  {
    v11 = atomic_load(theSet + 1);
    if ((v11 & 1) == 0)
    {
      CFLog(3, @"%s: Immutable character set passed to mutable function", v5, v6, v7, v8, v9, v10, "void CFCharacterSetRemoveCharactersInRange(CFMutableCharacterSetRef, CFRange)");
      if (dyld_program_sdk_at_least())
      {
        CFCharacterSetRemoveCharactersInRange_cold_2();
      }
    }

    CFCharacterSetRemoveCharactersInRange_cold_1(location, length, theSet + 1, theSet, v7, v8, v9, v10);
  }
}

void CFCharacterSetRemoveCharactersInRange_cold_1(unint64_t a1, uint64_t a2, unint64_t *a3, CFCharacterSetPredefinedSet *cf, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a1;
  v10 = a1 + a2;
  v11 = a1 >> 16;
  if (a1 >> 16 > 0x10 || a2 >= 1114113 || v10 >= 0x110001)
  {
LABEL_159:
    CFLog(3, @"%s: Range (location: %ld, length: %ld) outside of valid Unicode range (0x0 - 0x10FFFF)", a3, cf, a5, a6, a7, a8, "void CFCharacterSetRemoveCharactersInRange(CFMutableCharacterSetRef, CFRange)");
    qword_1EA849A30 = "CFCharacterSet range is outside of valid Unicode range (0x0 - 0x10FFFF)";
    __break(1u);
    JUMPOUT(0x18317A1A4);
  }

  v14 = cf;
  v16 = atomic_load(a3);
  if (v16 & 0x70) != 0 || (v17 = atomic_load(a3), (v17) || (v18 = atomic_load(a3), (v18 & 8) != 0) || CFCharacterSetGetPredefined(cf[3]) != cf)
  {
    if (a2)
    {
      v19 = atomic_load(a3);
      if ((v19 & 8) == 0)
      {
        v20 = *(v14 + 5);
        if (!v20 || !*(v20 + 8) && !*(v20 + 13))
        {
          v21 = atomic_load(a3);
          switch((v21 >> 4) & 7)
          {
            case 1u:
            case 2u:
              if (!*(v14 + 4))
              {
                return;
              }

              break;
            case 3u:
            case 4u:
              if (*(v14 + 3))
              {
                break;
              }

              return;
            default:
              break;
          }
        }
      }

      v22 = atomic_load(a3);
      if ((v22 & 8) != 0)
      {
        v32 = *(v14 + 5);
        if (!v32 || !*(v32 + 8) && !*(v32 + 13))
        {
          v33 = atomic_load(a3);
          switch((v33 >> 4) & 7)
          {
            case 1u:
            case 2u:
              if (*(v14 + 4))
              {
                goto LABEL_46;
              }

              goto LABEL_135;
            case 3u:
            case 4u:
              if (*(v14 + 3))
              {
                goto LABEL_46;
              }

LABEL_135:
              OUTLINED_FUNCTION_6();
              do
              {
                atomic_compare_exchange_strong(a3, &v92, v93 & 0xFFFFFFFFFFFFFF8FLL | 0x10);
                v45 = v92 == v93;
                v93 = v92;
              }

              while (!v45);
              *(v14 + 6) = v9;
              *(v14 + 4) = a2;
              OUTLINED_FUNCTION_6();
              do
              {
                OUTLINED_FUNCTION_1_1(v94);
              }

              while (!v45);
              break;
            default:
              goto LABEL_46;
          }

          return;
        }

LABEL_46:
        v34 = atomic_load(a3);
        if ((v34 & 0x70) == 0x10)
        {
          v35 = *(v14 + 6);
          v36 = *(v14 + 4);
          if (v35 == v9)
          {
            if (v36 >= a2)
            {
              v36 = a2;
            }

            *(v14 + 4) = v36;
            OUTLINED_FUNCTION_6();
            do
            {
              OUTLINED_FUNCTION_1_1(v37);
            }

            while (!v45);
            return;
          }

          v88 = v36 + v35;
          if (v35 < v9 && v9 <= v88)
          {
            if (v88 < v10)
            {
              *(v14 + 4) = v10 - v35;
            }

            OUTLINED_FUNCTION_6();
            do
            {
              OUTLINED_FUNCTION_1_1(v103);
            }

            while (!v45);
            return;
          }

          if (v35 > v9 && v10 >= v35)
          {
            *(v14 + 6) = v9;
            *(v14 + 4) = v35 - v9 + v36;
            OUTLINED_FUNCTION_6();
            do
            {
              OUTLINED_FUNCTION_1_1(v91);
            }

            while (!v45);
            return;
          }
        }

        else
        {
          v62 = atomic_load(a3);
          if ((v62 & 0x70) == 0x20)
          {
            v63 = *(v14 + 4);
            v64 = v63 + a2;
            if (v63 + a2 <= 63)
            {
              v65 = *(v14 + 3);
              if (!v65)
              {
                v66 = CFGetAllocator(v14);
                v65 = OUTLINED_FUNCTION_3(v66);
                *(v14 + 3) = v65;
                v63 = *(v14 + 4);
                v64 = v63 + a2;
              }

              *(v14 + 4) = v64;
              v67 = 0;
              v68 = vdupq_n_s64(a2 - 1);
              v69 = (v65 + 2 * v63 + 8);
              do
              {
                v70 = vdupq_n_s64(v67);
                v71 = vmovn_s64(vcgeq_u64(v68, vorrq_s8(v70, xmmword_183306C30)));
                if (vuzp1_s8(vuzp1_s16(v71, *v68.i8), *v68.i8).u8[0])
                {
                  *(v69 - 4) = v9;
                }

                if (vuzp1_s8(vuzp1_s16(v71, *&v68), *&v68).i8[1])
                {
                  *(v69 - 3) = v9 + 1;
                }

                if (vuzp1_s8(vuzp1_s16(*&v68, vmovn_s64(vcgeq_u64(v68, vorrq_s8(v70, xmmword_183306C20)))), *&v68).i8[2])
                {
                  *(v69 - 2) = v9 + 2;
                  *(v69 - 1) = v9 + 3;
                }

                v72 = vmovn_s64(vcgeq_u64(v68, vorrq_s8(v70, xmmword_183306C10)));
                if (vuzp1_s8(*&v68, vuzp1_s16(v72, *&v68)).i32[1])
                {
                  *v69 = v9 + 4;
                }

                if (vuzp1_s8(*&v68, vuzp1_s16(v72, *&v68)).i8[5])
                {
                  v69[1] = v9 + 5;
                }

                if (vuzp1_s8(*&v68, vuzp1_s16(*&v68, vmovn_s64(vcgeq_u64(v68, vorrq_s8(v70, xmmword_183306C00))))).i8[6])
                {
                  v69[2] = v9 + 6;
                  v69[3] = v9 + 7;
                }

                v67 += 8;
                LOWORD(v9) = v9 + 8;
                v69 += 8;
              }

              while (((a2 + 7) & 0xFFFFFFFFFFFFFFF8) != v67);
              OUTLINED_FUNCTION_0_1();
              qsort(v73, v74, 2uLL, v75);
              v76 = *(v14 + 4);
              if (v76 >= 2)
              {
                do
                {
                  OUTLINED_FUNCTION_10();
                  if (!v45)
                  {
                    ++v77;
                    *(v78 + 2 * v77) = v80;
                  }
                }

                while (v79 != 1);
                v76 = v77 + 1;
              }

              *(v14 + 4) = v76;
              OUTLINED_FUNCTION_6();
              do
              {
                OUTLINED_FUNCTION_1_1(v81);
              }

              while (!v45);
              return;
            }
          }
        }
      }

      v104 = a2;
      v106 = v9;
      __CFCSetMakeBitmap(v14);
      v105 = v10;
      v23 = v10 - 1;
      if (v11 <= 1)
      {
        v24 = 1;
      }

      else
      {
        v24 = v11;
      }

      if (v24 <= v23 >> 16)
      {
        v38 = v9;
        v39 = v23 >> 16;
        v40 = v105;
        v41 = v105;
        v42 = 8 * v24;
        v43 = (v23 >> 16) + 1;
        v44 = 0x10000;
        do
        {
          v45 = v39 != v24 || v40 == 0;
          if (v45)
          {
            v46 = v44;
          }

          else
          {
            v46 = v41;
          }

          v47 = v46 - v38;
          v48 = *(v14 + 5);
          if (v48 && *(v48 + 13))
          {
            if (!v24)
            {
              goto LABEL_158;
            }

            if (v24 <= 0x10u)
            {
              if (*(v48 + 12) < v24)
              {
                *(v48 + 12) = v24;
                v49 = v14;
                v50 = *v48;
                v51 = CFGetAllocator(v49);
                if (v50)
                {
                  Typed = __CFSafelyReallocateWithAllocatorTyped(v51, **(v49 + 5), v42 & 0xF8, 1153737439, 0);
                }

                else
                {
                  Typed = CFAllocatorAllocateTyped(v51, v42 & 0xF8, 0x6004044C4A2DFuLL);
                }

                v14 = v49;
                v48 = *(v49 + 5);
                *v48 = Typed;
                v40 = v105;
                v41 = v105;
                v44 = 0x10000;
              }

              if ((v48[1] & (1 << v24)) != 0)
              {
                v57 = v24 & 0x1F;
              }

              else
              {
                v58 = CFGetAllocator(v14);
                CFCharacterSetCreateMutable(v58);
                OUTLINED_FUNCTION_14();
                v57 = v24 & 0x1F;
                *(**(v14 + 5) + 8 * v57 - 8) = v59;
                v48 = *(v14 + 5);
                *(v48 + 2) |= 1 << v24;
              }

              v60 = *(*v48 + 8 * v57 - 8);
              if (v60)
              {
                v109.location = v38;
                v109.length = v47;
                CFCharacterSetAddCharactersInRange(v60, v109);
                OUTLINED_FUNCTION_14();
              }
            }
          }

          else
          {
            if (!v24)
            {
LABEL_158:
              __break(1u);
              goto LABEL_159;
            }

            if (v24 <= 0x10u)
            {
              if (v48)
              {
                if (((*(v48 + 2) >> v24) & 1) != 0 && *(v48 + 12) >= v24)
                {
                  v53 = *v48 + 8 * (v24 & 0x1F);
                  v54 = *(v53 - 8);
                  if (v54)
                  {
                    v108.location = v38;
                    v108.length = v47;
                    CFCharacterSetRemoveCharactersInRange(*(v53 - 8), v108);
                    OUTLINED_FUNCTION_14();
                    v55 = v54[5];
                    if (!v55 || !*(v55 + 8) && !*(v55 + 13))
                    {
                      v56 = atomic_load(v54 + 1);
                      switch((v56 >> 4) & 7)
                      {
                        case 1u:
                        case 2u:
                          if (!v54[4])
                          {
                            goto LABEL_90;
                          }

                          break;
                        case 3u:
                        case 4u:
                          if (!v54[3])
                          {
LABEL_90:
                            v61 = atomic_load(v54 + 1);
                            if ((v61 & 8) == 0)
                            {
                              CFRelease(v54);
                              OUTLINED_FUNCTION_14();
                              *(*(v14 + 5) + 8) &= ~(1 << v24);
                            }
                          }

                          break;
                        default:
                          break;
                      }
                    }
                  }
                }
              }
            }
          }

          ++v24;
          v42 += 8;
        }

        while (v43 != v24);
      }

      v25 = *(v14 + 5);
      if (v25 && !*(v25 + 8) && !*(v25 + 13))
      {
        for (i = 0; i != 16; ++i)
        {
          v27 = *(v14 + 5);
          if (((*(v27 + 8) >> i) & 2) != 0)
          {
            CFRelease(*(*v27 + 8 * i));
          }
        }

        v28 = CFGetAllocator(v14);
        CFAllocatorDeallocate(v28, **(v14 + 5));
        v29 = CFGetAllocator(v14);
        CFAllocatorDeallocate(v29, *(v14 + 5));
        *(v14 + 5) = 0;
      }

      if (v106 < 0x10000)
      {
        if (v105 <= 0x10000)
        {
          v30 = v104;
        }

        else
        {
          v30 = 0x10000 - v106;
        }

        if (v106 || v30 != 0x10000)
        {
          v82 = *(v14 + 3);
          v83 = v30 + v106 - 1;
          v84 = v106 >> 3;
          v85 = v83;
          v86 = v83 >> 3;
          v87 = 255 << (v106 & 7);
          if (v86 == v84)
          {
            *(v82 + v84) &= ~((0xFFu >> (~v85 & 7)) & v87);
          }

          else
          {
            *(v82 + v84) &= ~v87;
            *(v82 + v86) &= -256 >> (~v85 & 7);
            if ((v106 >> 3) + 1 < (v85 >> 3))
            {
              bzero((v82 + v84 + 1), (v86 - v84 - 2) + 1);
            }
          }
        }

        else
        {
          v31 = CFGetAllocator(v14);
          CFAllocatorDeallocate(v31, *(v14 + 3));
          *(v14 + 3) = 0;
        }
      }

      OUTLINED_FUNCTION_6();
      do
      {
        OUTLINED_FUNCTION_1_1(v95);
      }

      while (!v45);
      OUTLINED_FUNCTION_9();
      if (v45)
      {

        __CFCheckForExpandedSet(v14, v96, v97, v98, v99, v100, v101, v102);
      }
    }
  }
}

IMP _CFErrorCocoaCallBack(uint64_t a1, uint64_t a2)
{
  result = _CFErrorCocoaCallBack_cocoaCallBack;
  if (!_CFErrorCocoaCallBack_cocoaCallBack)
  {
    v5 = objc_lookUpClass("NSError");
    if (v5)
    {
      v6 = v5;
      v7 = sel_registerName("_retainedUserInfoCallBackForKey:");
      result = class_getMethodImplementation(v6, v7);
      _CFErrorCocoaCallBack_cocoaCallBack = result;
      if (!result)
      {
        return result;
      }
    }

    else
    {
      result = _CFErrorCocoaCallBack_cocoaCallBack;
      if (!_CFErrorCocoaCallBack_cocoaCallBack)
      {
        return result;
      }
    }
  }

  v9 = result;
  v8 = sel_registerName("_retainedUserInfoCallBackForKey:");

  return (v9)(a1, v8, a2);
}

unint64_t *_CFURLCreateCopyAppendingPathComponent(void *a1, const __CFString *a2, int a3)
{
  if (_foundation_swift_nsurl_feature_enabled_onceToken != -1)
  {
    _CFURLCreateCopyAppendingPathComponent_cold_1();
  }

  if (_foundation_swift_nsurl_feature_enabled_featureEnabled == 1)
  {
    if ((_foundation_swift_nsurl_feature_enabled_featureEnabled & 1) != 0 || CF_IS_OBJC(0x1DuLL, a1))
    {
      a1 = [a1 _cfurl];
    }

    v6 = [a1 _URLByAppendingPathComponent:a2 isDirectory:a3 != 0 encodingSlashes:1];

    return v6;
  }

  else
  {

    return __CFURLCreateCopyAppendingPathComponent(0, a1, a2, a3, @";?/");
  }
}

BOOL __CFStringFindTypeAndSizeForArgumentIndex(uint64_t a1, int a2, uint64_t a3, _WORD *a4, __int16 *a5)
{
  if (a2 < 1)
  {
    return 0;
  }

  else
  {
    v5 = 0;
    v6 = (a1 + 26);
    v7 = 1;
    v8 = a2;
    v9 = 1;
    while (1)
    {
      v10 = *v6;
      if (*v6 < 0)
      {
        v11 = -1;
      }

      else
      {
        v11 = *v6;
      }

      if (v10 == 254)
      {
        v12 = v5 + 1;
      }

      else
      {
        v12 = v5;
      }

      if (v10 == 254)
      {
        v13 = v5;
      }

      else
      {
        v13 = v11;
      }

      v14 = *(v6 - 1);
      v15 = v14;
      if ((v14 & 0x80u) != 0)
      {
        v15 = -1;
      }

      if (v14 == 254)
      {
        v15 = v12;
      }

      if (a3 == v13 || v15 == a3)
      {
        *a4 = 33;
        v19 = 3;
        goto LABEL_34;
      }

      v5 = v14 == 254 ? v12 + 1 : v12;
      v17 = *(v6 - 2);
      v18 = v17 == 255 ? v5 : *(v6 - 2);
      if (a3 == v18)
      {
        break;
      }

      if (v17 == 255)
      {
        ++v5;
      }

      v9 = v7++ < a2;
      v6 += 32;
      if (!--v8)
      {
        return v9;
      }
    }

    *a4 = *(v6 - 12);
    v19 = *(v6 - 13);
LABEL_34:
    *a5 = v19;
  }

  return v9;
}

CFTimeZoneRef CFTimeZoneCopySystem(void)
{
  v0 = _CFAutoreleasePoolPush();
  v1 = +[NSTimeZone systemTimeZone];
  if (v1)
  {
    v2 = CFRetain(v1);
  }

  else
  {
    v2 = 0;
  }

  _CFAutoreleasePoolPop(v0);
  return v2;
}

uint64_t parseIntegerTag(uint64_t a1, CFNumberRef *a2)
{
  valuePtr[2] = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
LABEL_22:
    v8 = v5;
    goto LABEL_23;
  }

  v6 = v4 - v5;
  v7 = v5 + 1;
  v8 = *(a1 + 8);
  while (1)
  {
    v9 = *(v7 - 1);
    if (v9 >= 0x21 && v9 - 127 >= 0x22)
    {
      if (v6 < 3 || (v9 & 0xFE) != 0xE2)
      {
        goto LABEL_22;
      }

      v10 = *v7;
      v11 = v7[1];
      if (v9 == 226 && v10 == 128)
      {
        if (v11 != 175 && (v11 - 80) > 0x3B)
        {
          goto LABEL_22;
        }

        goto LABEL_19;
      }

      if (v9 == 226 && v10 == 129)
      {
        if (v11 != 159)
        {
          goto LABEL_22;
        }

        goto LABEL_19;
      }

      if (v9 != 227 || v10 != 128 || v11 != 128)
      {
        break;
      }
    }

LABEL_19:
    ++v5;
    *(a1 + 8) = v7;
    ++v8;
    --v6;
    v22 = v7++ == v4;
    if (v22)
    {
      v8 = v4;
      v5 = v4;
      goto LABEL_23;
    }
  }

  v5 = v7 - 1;
LABEL_23:
  if (v5 == v4)
  {
    goto LABEL_97;
  }

  v12 = *v5;
  if (v12 == 60)
  {
    v43 = lineNumber(a1);
    Error = __CFPropertyListCreateError(3840, @"Encountered empty <integer> on line %u", v43);
    goto LABEL_98;
  }

  v14 = v12 == 45;
  if (v12 == 45 || v12 == 43)
  {
    v15 = v5 + 1;
    *(a1 + 8) = v5 + 1;
    if ((v5 + 1) >= v4)
    {
LABEL_48:
      v5 = v15;
    }

    else
    {
      v16 = &v5[v4 - v8];
      v17 = v4 - 1 - v8;
      v18 = v4 - 1 - v5;
      do
      {
        v19 = *v15;
        if (v19 >= 0x21 && v19 - 127 >= 0x22)
        {
          if (v18 < 3 || (v19 & 0xFE) != 0xE2)
          {
            goto LABEL_48;
          }

          v20 = v15[1];
          v21 = v15[2];
          if (v19 == 226 && v20 == 128)
          {
            if (v21 != 175 && (v21 - 80) > 0x3B)
            {
              goto LABEL_48;
            }
          }

          else if (v19 == 226 && v20 == 129)
          {
            if (v21 != 159)
            {
              goto LABEL_48;
            }
          }

          else if (v19 != 227 || v20 != 128 || v21 != 128)
          {
            goto LABEL_48;
          }
        }

        *(a1 + 8) = ++v15;
        --v18;
        --v17;
      }

      while (v17);
      v5 = v16;
    }
  }

  else
  {
    v14 = 0;
  }

  if (v5 == v4 || (*v5 != 48 ? (v23 = 0, v24 = 0) : ((v5 + 1) >= v4 ? (v23 = 0, v24 = 1) : ((v22 = (v5[1] | 0x20) == 120, (v5[1] | 0x20) != 0x78) ? (v23 = 0) : (++v5, v23 = 1), !v22 ? (v24 = 1) : (v24 = 0)), ++v5, *(a1 + 8) = v5), v5 == v4))
  {
LABEL_97:
    v45 = lineNumber(a1);
    Error = __CFPropertyListCreateError(3840, @"Premature end of file after <integer> on line %u", v45);
LABEL_98:
    v39 = Error;
    result = 0;
    *(a1 + 24) = v39;
    return result;
  }

  v25 = *v5;
  if (v25 == 48)
  {
    v26 = v5 + 1;
    while (1)
    {
      *(a1 + 8) = v26;
      if (v26 == v4)
      {
        goto LABEL_97;
      }

      v27 = *v26++;
      v25 = v27;
      if (v27 != 48)
      {
        v5 = v26 - 1;
        v24 = 1;
        break;
      }
    }
  }

  if (!v24 || v25 != 60)
  {
    if (v25 != 60)
    {
      v30 = 0;
      v31 = 0x1999999999999999;
      if (v23)
      {
        v31 = 0xFFFFFFFFFFFFFFFLL;
      }

      v32 = 10;
      if (v23)
      {
        v32 = 16;
      }

      for (i = (v5 + 1); ; ++i)
      {
        v34 = v25;
        if (v25 <= 0x40u)
        {
          if (v25 - 48 >= 0xA)
          {
            if (v25 != 60)
            {
LABEL_111:
              v49 = lineNumber(a1);
              Error = __CFPropertyListCreateError(3840, @"Unknown character '%c' (0x%x) in <integer> on line %u", v34, v34, v49);
              goto LABEL_98;
            }

            result = checkForCloseTag(a1, "integer", 7uLL);
            if (!result)
            {
              return result;
            }

            if (*(a1 + 80))
            {
              *a2 = 0;
              return 1;
            }

            if (((v30 < 0) & ~v14) != 0)
            {
              valuePtr[0] = 0;
              valuePtr[1] = v30;
              v40 = *(a1 + 32);
              v41 = kCFNumberMaxType|kCFNumberSInt8Type;
            }

            else
            {
              if (v14)
              {
                v42 = -v30;
              }

              else
              {
                v42 = v30;
              }

              valuePtr[0] = v42;
              v40 = *(a1 + 32);
              v41 = kCFNumberSInt64Type;
            }

LABEL_101:
            v29 = CFNumberCreate(v40, v41, valuePtr);
            goto LABEL_102;
          }

          v36 = v34 - 48;
        }

        else
        {
          if (v25 - 65 < 6)
          {
            v35 = -55;
          }

          else
          {
            if (v25 - 97 >= 6)
            {
              goto LABEL_111;
            }

            v35 = -87;
          }

          if ((v23 & 1) == 0)
          {
            v48 = lineNumber(a1);
            Error = __CFPropertyListCreateError(3840, @"Hex digit in non-hex <integer> on line %u", v48);
            goto LABEL_98;
          }

          v36 = v35 + v34;
        }

        if (v31 < v30 || __CFADD__(v30 * v32, v36))
        {
          v46 = lineNumber(a1);
          Error = __CFPropertyListCreateError(3840, @"Integer overflow in <integer> on line %u", v46);
          goto LABEL_98;
        }

        v30 = v30 * v32 + v36;
        v37 = v14 ^ 1;
        if (v30 < 0x8000000000000001)
        {
          v37 = 1;
        }

        if ((v37 & 1) == 0)
        {
          v47 = lineNumber(a1);
          Error = __CFPropertyListCreateError(3840, @"Integer underflow in <integer> on line %u", v47);
          goto LABEL_98;
        }

        *(a1 + 8) = i;
        if (i == v4)
        {
          goto LABEL_97;
        }

        v38 = *i;
        LOBYTE(v25) = v38;
      }
    }

    v44 = lineNumber(a1);
    Error = __CFPropertyListCreateError(3840, @"Incomplete <integer> on line %u", v44);
    goto LABEL_98;
  }

  LODWORD(valuePtr[0]) = 0;
  result = checkForCloseTag(a1, "integer", 7uLL);
  if (result)
  {
    if (!*(a1 + 80))
    {
      v40 = *(a1 + 32);
      v41 = kCFNumberSInt32Type;
      goto LABEL_101;
    }

    v29 = 0;
LABEL_102:
    *a2 = v29;
    return 1;
  }

  return result;
}

CFURLRef CFBundleCopyResourceURLForLocalization(CFURLRef bundle, CFStringRef resourceName, CFStringRef resourceType, CFStringRef subDirName, CFStringRef localizationName)
{
  if (bundle)
  {
    return _CFBundleCopyFindResources(bundle, 0, resourceType, resourceName, resourceType, subDirName, localizationName, 0, 1, 0);
  }

  return bundle;
}

CFURLRef CFURLCreateFilePathURL(CFAllocatorRef allocator, CFURLRef url, CFErrorRef *error)
{
  v83 = *MEMORY[0x1E69E9840];
  v48 = 0;
  if (!_CFURLHasFileURLScheme(url, &v48))
  {
    if (v48)
    {
      if (error)
      {
LABEL_10:
        v22 = 0;
        *error = CFErrorCreate(0, @"NSCocoaErrorDomain", 262, 0);
        return v22;
      }
    }

    else
    {
      CFLog(4, @"CFURLCreateFilePathURL failed because it was passed a URL which has no scheme", v6, v7, v8, v9, v10, v11, v47);
      if (error)
      {
        goto LABEL_10;
      }
    }

    return 0;
  }

  if (CFURLGetBaseURL(url))
  {
    v12 = CFURLCopyAbsoluteURL(url);
    v13 = CFGetAllocator(v12);
    v14 = CFURLCreateStringWithFileSystemPath(v13, v12, 0, 0);
    v15 = CFURLCopyNetLocation(v12);
    v16 = CFURLCopyResourceSpecifier(v12);
    ResolveFlags = _CFURLGetQueryResolveFlags(v12);
    CFRelease(v12);
    if (v14)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v23 = CFGetAllocator(url);
    v14 = CFURLCreateStringWithFileSystemPath(v23, url, 0, 0);
    v15 = CFURLCopyNetLocation(url);
    v16 = CFURLCopyResourceSpecifier(url);
    ResolveFlags = _CFURLGetQueryResolveFlags(url);
    if (v14)
    {
LABEL_4:
      Length = CFStringGetLength(v14);
      if (Length <= 1)
      {
        Length = 1;
      }

      MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
      v20 = MaximumSizeForEncoding;
      if (MaximumSizeForEncoding >= 1024)
      {
        v21 = malloc_type_malloc(MaximumSizeForEncoding + 1, 0x100004077774924uLL);
      }

      else
      {
        v21 = buffer;
      }

      if (CFStringGetCString(v14, v21, v20 + 1, 0x8000100u))
      {
        v24 = strlen(v21);
        StringFromFileSystemRepresentationByAddingPercentEscapes = CreateStringFromFileSystemRepresentationByAddingPercentEscapes(0, v21, v24, 0, 0, 0, 0);
      }

      else
      {
        StringFromFileSystemRepresentationByAddingPercentEscapes = 0;
      }

      if (v21 != buffer)
      {
        free(v21);
      }

      v79 = 0u;
      v80 = 0u;
      v77 = 0u;
      v78 = 0u;
      v75 = 0u;
      v76 = 0u;
      v73 = 0u;
      v74 = 0u;
      v71 = 0u;
      v72 = 0u;
      v69 = 0u;
      v70 = 0u;
      v67 = 0u;
      v68 = 0u;
      v65 = 0u;
      v66 = 0u;
      v63 = 0u;
      v64 = 0u;
      v61 = 0u;
      v62 = 0u;
      v59 = 0u;
      v60 = 0u;
      v57 = 0u;
      v58 = 0u;
      v55 = 0u;
      v56 = 0u;
      v53 = 0u;
      v54 = 0u;
      v51 = 0u;
      v52 = 0u;
      *buffer = 0u;
      v50 = 0u;
      v81 = 0;
      Mutable = CFStringCreateMutable(allocator, 0);
      v26 = CFStringGetLength(@"file://");
      v27 = v81;
      if (v26 < 1025)
      {
        v28 = v26;
        if (v81 + v26 >= 1025)
        {
          CFStringAppendCharacters(Mutable, buffer, v81);
          v27 = 0;
          v81 = 0;
        }

        v29 = &buffer[2 * v27];
        v84.location = 0;
        v84.length = v28;
        CFStringGetCharacters(@"file://", v84, v29);
        v81 += v28;
        if (!v15)
        {
LABEL_38:
          v34 = CFStringGetLength(StringFromFileSystemRepresentationByAddingPercentEscapes);
          v35 = v81;
          if (v34 < 1025)
          {
            v36 = v34;
            if (v81 + v34 >= 1025)
            {
              CFStringAppendCharacters(Mutable, buffer, v81);
              v35 = 0;
              v81 = 0;
            }

            v37 = &buffer[2 * v35];
            v86.location = 0;
            v86.length = v36;
            CFStringGetCharacters(StringFromFileSystemRepresentationByAddingPercentEscapes, v86, v37);
            v81 += v36;
          }

          else
          {
            if (v81)
            {
              CFStringAppendCharacters(Mutable, buffer, v81);
              v81 = 0;
            }

            CFStringAppend(Mutable, StringFromFileSystemRepresentationByAddingPercentEscapes);
          }

          if (CFURLHasDirectoryPath(url) && CFStringCompare(StringFromFileSystemRepresentationByAddingPercentEscapes, @"/", 0))
          {
            v38 = v81;
            if (v81 >= 1024)
            {
              CFStringAppendCharacters(Mutable, buffer, v81);
              v38 = 0;
              v81 = 0;
            }

            *&buffer[2 * v38] = 47;
            ++v81;
          }

          if (v16)
          {
            v39 = CFStringGetLength(v16);
            v40 = v81;
            if (v39 < 1025)
            {
              v45 = v39;
              if (v81 + v39 >= 1025)
              {
                CFStringAppendCharacters(Mutable, buffer, v81);
                v40 = 0;
                v81 = 0;
              }

              v46 = &buffer[2 * v40];
              v87.location = 0;
              v87.length = v45;
              CFStringGetCharacters(v16, v87, v46);
              v41 = v81 + v45;
              v81 = v41;
              if (!v41)
              {
LABEL_57:
                v42 = Mutable;
                Mutable = 0;
                v43 = v42;
                if (ResolveFlags)
                {
                  v43 = [(__CFString *)v42 _urlStringByInsertingPathResolveFlags:ResolveFlags];
                }

                v22 = CFURLCreateWithString(allocator, v43, 0);
                if (v42)
                {
                  CFRelease(v42);
                }

                CFRelease(StringFromFileSystemRepresentationByAddingPercentEscapes);
                CFRelease(v14);
                if (!v15)
                {
                  goto LABEL_63;
                }

                goto LABEL_62;
              }

LABEL_56:
              CFStringAppendCharacters(Mutable, buffer, v41);
              v81 = 0;
              goto LABEL_57;
            }

            if (v81)
            {
              CFStringAppendCharacters(Mutable, buffer, v81);
              v81 = 0;
            }

            CFStringAppend(Mutable, v16);
          }

          v41 = v81;
          if (!v81)
          {
            goto LABEL_57;
          }

          goto LABEL_56;
        }
      }

      else
      {
        if (v81)
        {
          CFStringAppendCharacters(Mutable, buffer, v81);
          v81 = 0;
        }

        CFStringAppend(Mutable, @"file://");
        if (!v15)
        {
          goto LABEL_38;
        }
      }

      v30 = CFStringGetLength(v15);
      v31 = v81;
      if (v30 < 1025)
      {
        v32 = v30;
        if (v81 + v30 >= 1025)
        {
          CFStringAppendCharacters(Mutable, buffer, v81);
          v31 = 0;
          v81 = 0;
        }

        v33 = &buffer[2 * v31];
        v85.location = 0;
        v85.length = v32;
        CFStringGetCharacters(v15, v85, v33);
        v81 += v32;
      }

      else
      {
        if (v81)
        {
          CFStringAppendCharacters(Mutable, buffer, v81);
          v81 = 0;
        }

        CFStringAppend(Mutable, v15);
      }

      goto LABEL_38;
    }
  }

  if (error)
  {
    v22 = 0;
    *error = CFErrorCreate(0, @"NSCocoaErrorDomain", 4, 0);
    if (!v15)
    {
      goto LABEL_63;
    }

LABEL_62:
    CFRelease(v15);
    goto LABEL_63;
  }

  v22 = 0;
  if (v15)
  {
    goto LABEL_62;
  }

LABEL_63:
  if (v16)
  {
    CFRelease(v16);
  }

  return v22;
}

CFStringRef _CFStreamCreateWithFile(__objc2_class **a1, CFURLRef anURL, uint64_t a3)
{
  v15 = *MEMORY[0x1E69E9840];
  if (anURL)
  {
    result = CFURLCopyScheme(anURL);
    if (!result)
    {
      return result;
    }

    v7 = result;
    if (CFEqual(result, @"file"))
    {
      v14 = 0u;
      v13 = 0u;
      CFRelease(v7);
      v12 = anURL;
      LODWORD(v13) = -1;
      return _CFStreamCreateWithConstantCallbacks(a1, &v12, fileCallBacks, a3, v8, v9, v10, v11);
    }

    CFRelease(v7);
  }

  return 0;
}

id _NSObjectLoadWeak(id *a1, _BYTE *a2)
{
  if (*a2)
  {
    WeakRetained = *a1;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(a1);
  }

  return WeakRetained;
}

uint64_t _CFURLGetVolumePropertyFlags(const __CFURL *a1, uint64_t a2, void *a3, CFTypeRef *a4)
{
  v15 = *MEMORY[0x1E69E9840];
  v14 = 0;
  if (_CFURLHasFileURLScheme(a1, &v14))
  {
    __CFURLResourceInfoPtr(a1);
    result = _FSURLGetVolumePropertyFlags();
    if (result)
    {
      return result;
    }
  }

  else if (!v14)
  {
    CFLog(4, @"_CFURLGetVolumePropertyFlags failed because it was passed a URL which has no scheme", v6, v7, v8, v9, v10, v11, v13);
  }

  *a3 = 0;
  return 1;
}

uint64_t _CFURLCopyFileURL(unint64_t *a1)
{
  if (_foundation_swift_nsurl_feature_enabled_onceToken != -1)
  {
    _CFURLCopyFileURL_cold_1();
  }

  if (_foundation_swift_nsurl_feature_enabled_featureEnabled != 1)
  {
    if ((_foundation_swift_nsurl_feature_enabled_featureEnabled & 1) != 0 || CF_IS_OBJC(0x1DuLL, a1))
    {
      a1 = [a1 _cfurl];
    }

    if (!a1[4] && _CFURLHasFileURLScheme(a1, 0))
    {
      v5 = CFGetAllocator(a1);
      v10 = a1[2] & 0x1FF;
      if (v10)
      {
        v11 = 0;
        do
        {
          v11 += v10 & 1;
          v12 = v10 > 1;
          v10 >>= 1;
        }

        while (v12);
        v13 = 16 * v11;
      }

      else
      {
        v13 = 0;
      }

      Instance = _CFRuntimeCreateInstance(v5, 0x1DuLL, (v13 & 0xFF0) + 40, 0, v6, v7, v8, v9);
      v4 = Instance;
      if (Instance)
      {
        *(Instance + 5) = 134217984;
        Instance[2] = a1[2];
        v15 = atomic_load(a1 + 3);
        atomic_store(CFRetain(v15), v4 + 3);
        v4[4] = 0;
        v4[5] = 0;
        if ((*(v4 + 18) & 1) == 0)
        {
          v16 = a1[5];
          if (v16)
          {
            v17 = *(v16 + 8);
            if (v17)
            {
              _CFURLAllocateExtraDataspace(v4);
              v18 = v4[5];
              if (v18)
              {
                v19 = *(v18 + 8);
                if (v19)
                {
                  CFRelease(v19);
                }

                v20 = CFGetAllocator(v4);
                Copy = CFStringCreateCopy(v20, v17);
                v18 = v4[5];
                *(v18 + 8) = Copy;
              }

              v22 = a1[5];
              if (v22)
              {
                v23 = *(v22 + 16);
                if (v23 && !v18)
                {
                  _CFURLAllocateExtraDataspace(v4);
                  v18 = v4[5];
                }
              }

              else
              {
                v23 = 0;
              }

              if (v18)
              {
                *(v18 + 16) = v23;
              }
            }
          }
        }

        if (atomic_load(a1 + 6))
        {
          atomic_store(_FileCacheCreateShallowCopy(), v4 + 6);
        }

        memcpy(v4 + 7, a1 + 7, v13);
      }

      return v4;
    }

    return 0;
  }

  if ((_foundation_swift_nsurl_feature_enabled_featureEnabled & 1) != 0 || (v2 = a1, CF_IS_OBJC(0x1DuLL, a1)))
  {
    v2 = [a1 _cfurl];
  }

  if ([v2 baseURL] || !objc_msgSend(v2, "isFileURL"))
  {
    return 0;
  }

  return [a1 copy];
}

uint64_t fileCreate(const void *a1, uint64_t a2)
{
  v3 = CFGetAllocator(a1);
  Typed = CFAllocatorAllocateTyped(v3, 0x28uLL, 0x10600401BE82CDFuLL);
  if (Typed)
  {
    v5 = *a2;
    *Typed = *a2;
    if (v5)
    {
      CFRetain(v5);
    }

    *(Typed + 8) = *(a2 + 8);
    *(Typed + 16) = 0;
    *(Typed + 24) = 0;
    *(Typed + 32) = -1;
  }

  return Typed;
}

uint64_t fileOpen(void *a1, uint64_t a2, _BYTE *a3, uint64_t a4)
{
  v17 = *MEMORY[0x1E69E9840];
  v8 = CFGetTypeID(a1);
  TypeID = CFReadStreamGetTypeID();
  v10 = v8 == TypeID;
  *a3 = 1;
  if (!*a4)
  {
    if (*(a4 + 16))
    {
      constructCFFD(a4, v10, a1);
    }

    return 1;
  }

  if (!CFURLGetFileSystemRepresentation(*a4, 1u, buffer, 1026))
  {
    v14 = 2;
    goto LABEL_19;
  }

  if (v8 == TypeID)
  {
    v11 = 0;
  }

  else
  {
    v11 = 1537;
  }

  if ((*(a4 + 24) & 8) != 0)
  {
    v12 = open(buffer, v11 & 0x3F7 | 8, 438);
  }

  else
  {
    v12 = open(buffer, v11, 438);
  }

  *(a4 + 8) = v12;
  if ((v12 & 0x80000000) == 0)
  {
    v13 = *(a4 + 32);
    if ((v13 == -1 || lseek(v12, v13, 0) != -1) && (!*(a4 + 16) || constructCFFD(a4, v10, a1)))
    {
      return 1;
    }
  }

  *(a4 + 24) |= 0x20uLL;
  v14 = *__error();
LABEL_19:
  result = 0;
  *(a2 + 8) = v14;
  *a2 = 1;
  return result;
}

ssize_t fdRead(int a1, void *a2, size_t a3, uint64_t a4, BOOL *a5)
{
  result = read(a1, a2, a3);
  if (result < 0)
  {
    v8 = *__error();
    *a4 = 1;
    result = -1;
  }

  else
  {
    v8 = 0;
    *a5 = result == 0;
  }

  *(a4 + 8) = v8;
  return result;
}

uint64_t CFStringHashNSString(void *a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = [a1 length];
  v3 = v2;
  v4 = v9;
  if (v2 >= 97)
  {
    [a1 getCharacters:v9 range:{0, 32}];
    [a1 getCharacters:&v10 range:{(v2 >> 1) - 16, 32}];
    [a1 getCharacters:&v11 range:{v2 - 32, 32}];
    v5 = &v12;
    v6 = &v12;
LABEL_5:
    v4 = v9;
    do
    {
      v3 = v4[3] + 67503105 * v3 + 257 * (257 * (257 * *v4 + v4[1]) + v4[2]);
      v4 += 4;
    }

    while (v4 < v6);
    goto LABEL_9;
  }

  [a1 getCharacters:v9 range:{0, v2}];
  v5 = &v9[v2];
  if ((v2 & 0xFFFFFFFFFFFFFFFCLL) >= 1)
  {
    v6 = &v9[v2 & 0xFFFFFFFFFFFFFFFCLL];
    goto LABEL_5;
  }

LABEL_9:
  while (v4 < v5)
  {
    v7 = *v4++;
    v3 = 257 * v3 + v7;
  }

  return (v3 << (v2 & 0x1F)) + v3;
}

CFUUIDBytes CFUUIDGetUUIDBytes(CFUUIDRef uuid)
{
  __CFCheckCFInfoPACSignature(uuid);
  v2 = _CFGetNonObjCTypeID(uuid);
  if (v2 != 34)
  {
    _CFAssertMismatchedTypeID(0x22uLL, v2);
  }

  v3 = *(uuid + 2);
  v4 = *(uuid + 3);
  result.byte8 = v4;
  result.byte9 = BYTE1(v4);
  result.byte10 = BYTE2(v4);
  result.byte11 = BYTE3(v4);
  result.byte12 = BYTE4(v4);
  result.byte13 = BYTE5(v4);
  result.byte14 = BYTE6(v4);
  result.byte15 = HIBYTE(v4);
  result.byte0 = v3;
  result.byte1 = BYTE1(v3);
  result.byte2 = BYTE2(v3);
  result.byte3 = BYTE3(v3);
  result.byte4 = BYTE4(v3);
  result.byte5 = BYTE5(v3);
  result.byte6 = BYTE6(v3);
  result.byte7 = HIBYTE(v3);
  return result;
}

ssize_t fileRead(uint64_t a1, void *a2, size_t a3, uint64_t a4, BOOL *a5, uint64_t a6)
{
  v14 = *MEMORY[0x1E69E9840];
  v8 = fdRead(*(a6 + 8), a2, a3, a4, a5);
  v9 = *(a6 + 24);
  if ((v9 & 2) != 0)
  {
    *(a6 + 24) = v9 & 0xFFFFFFFFFFFFFFFDLL;
    if (!*a5)
    {
      if (*(a6 + 16))
      {
        memset(&v13, 0, sizeof(v13));
        if ((fstat(*(a6 + 8), &v13) & 0x80000000) == 0 && (v13.st_mode & 0xF000) == 0x8000)
        {
          v12 = lseek(*(a6 + 8), 0, 1);
          if (v13.st_size == v12)
          {
            _CFFileDescriptorInduceFakeReadCallBack(*(a6 + 16));
          }
        }
      }
    }

    v10 = *(a6 + 16);
    if (v10)
    {
      CFFileDescriptorEnableCallBacks(v10, 1uLL);
    }
  }

  return v8;
}

void ___loadLocTable_block_invoke_2(uint64_t a1, const __CFString *a2)
{
  ValueWithKeyPath = _CFPropertyListGetValueWithKeyPath(*(a1 + 40), a2);
  if (ValueWithKeyPath)
  {
    v5 = ValueWithKeyPath;
    if (CFGetTypeID(ValueWithKeyPath) == 18)
    {
      *(*(a1 + 48) + 75) = 1;
    }

    ValueAtIndex = CFArrayGetValueAtIndex(a2, 1);
    CFDictionaryAddValue(*(a1 + 56), ValueAtIndex, v5);
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }
}

void __CFPlatformSpecificStringDictionaryApplyFunction(const void *a1, const __CFDictionary *a2, CFDictionaryRef *a3)
{
  TypeID = CFDictionaryGetTypeID();
  if (TypeID == CFGetTypeID(a2))
  {
    Value = CFDictionaryGetValue(a2, @"NSStringDeviceSpecificRuleType");
    if (Value)
    {
      v9 = Value;
      v10 = _CFGetProductName(Value, v8);
      if (!CFDictionaryGetCount(v9))
      {
        goto LABEL_16;
      }

      if (!v10 || (v11 = CFDictionaryGetValue(v9, v10)) == 0 && (!CFEqual(v10, @"ipod") && !CFEqual(v10, @"ipad") || (v11 = CFDictionaryGetValue(v9, @"iphone")) == 0))
      {
        v11 = CFDictionaryGetValue(v9, @"other");
        if (!v11)
        {
          goto LABEL_16;
        }
      }

      v12 = v11;
      v13 = CFGetTypeID(v11);
      if (v13 == CFStringGetTypeID() || (v14 = CFGetTypeID(v12), v14 == CFDictionaryGetTypeID()))
      {
        CFDictionarySetValue(a3[1], a1, v12);
      }

      v15 = CFGetTypeID(v12);
      if (v15 != CFStringGetTypeID())
      {
        v16 = CFGetTypeID(v12);
        if (v16 != CFDictionaryGetTypeID())
        {
LABEL_16:
          v17 = CFDictionaryGetValue(*a3, a1);
          v18 = a3[1];
          if (v17)
          {

            CFDictionarySetValue(v18, a1, v17);
          }

          else
          {

            CFDictionaryRemoveValue(v18, a1);
          }
        }
      }
    }
  }
}

CFRunLoopObserverRef CFRunLoopObserverCreateWithHandler(CFAllocatorRef allocator, CFOptionFlags activities, Boolean repeats, CFIndex order, void *block)
{
  v7 = *MEMORY[0x1E69E9840];
  v6.version = 0;
  v6.info = block;
  v6.retain = MEMORY[0x1E69E97F0];
  v6.release = MEMORY[0x1E69E97F8];
  v6.copyDescription = 0;
  return CFRunLoopObserverCreate(allocator, activities, repeats, order, __CFRunLoopObserverWithHandlerPerform, &v6);
}

void fileClose(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  if (v3 < 0)
  {
    v5 = (a2 + 16);
    v7 = *(a2 + 16);
    if (!v7)
    {
      return;
    }
  }

  else
  {
    close(v3);
    v6 = *(a2 + 16);
    v5 = (a2 + 16);
    v4 = v6;
    *(v5 - 2) = -1;
    if (!v6)
    {
      return;
    }

    CFFileDescriptorInvalidate(v4);
    v7 = *v5;
  }

  CFRelease(v7);
  *v5 = 0;
}

uint64_t _CFGetProductName(uint64_t a1, uint64_t a2)
{
  if (_CFGetProductName_onceToken != -1)
  {
    _CFGetProductName_cold_1();
  }

  return _CFGetProductName__cfBundlePlatform;
}

void fileFinalize(const void *a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  if (v4 < 1)
  {
    if (v5)
    {
      CFRelease(*(a2 + 16));
    }
  }

  else
  {
    if (v5)
    {
      CFFileDescriptorInvalidate(*(a2 + 16));
      CFRelease(*(a2 + 16));
      *(a2 + 16) = 0;
      v4 = *(a2 + 8);
    }

    close(v4);
  }

  if (*a2)
  {
    CFRelease(*a2);
  }

  v6 = CFGetAllocator(a1);

  CFAllocatorDeallocate(v6, a2);
}

void __CFLocalizedFormatStringApplyFunction(const void *a1, const __CFDictionary *a2, uint64_t a3)
{
  TypeID = CFDictionaryGetTypeID();
  if (TypeID == CFGetTypeID(a2))
  {
    Value = CFDictionaryGetValue(a2, @"NSStringLocalizedFormatKey");
    if (Value)
    {
      v8 = _CFStringCopyWithFomatStringConfiguration(Value, a2);
      if (v8)
      {
        v9 = v8;
        CFDictionarySetValue(*(a3 + 8), a1, v8);

        CFRelease(v9);
      }
    }
  }
}

void __CFVariableWidthStringDictionaryApplyFunction(const void *a1, const __CFDictionary *a2, CFDictionaryRef *a3)
{
  TypeID = CFDictionaryGetTypeID();
  if (TypeID == CFGetTypeID(a2))
  {
    Value = CFDictionaryGetValue(a2, @"NSStringVariableWidthRuleType");
    if (Value)
    {
      v8 = Value;
      if (CFDictionaryGetCount(Value))
      {
        v9 = _CFStringCreateWithWidthContexts(v8);
        if (v9)
        {
          v10 = v9;
          CFDictionarySetValue(a3[1], a1, v9);

          CFRelease(v10);
        }
      }

      else if (*a3 && (v11 = CFDictionaryGetValue(*a3, a1)) != 0)
      {
        v12 = v11;
        v13 = a3[1];

        CFDictionarySetValue(v13, a1, v12);
      }

      else
      {
        v14 = a3[1];

        CFDictionaryRemoveValue(v14, a1);
      }
    }
  }
}

unint64_t __NSOrderedSetGetIndexPassingTest(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v52 = *MEMORY[0x1E69E9840];
  if (![a1 count])
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  if ((a3 & 0x1000000000000000) != 0)
  {
    v8 = [a4 firstIndex];
    v9 = [a4 lastIndex];
  }

  else
  {
    v8 = 0;
    v9 = [a1 count] - 1;
  }

  v10 = 0x7FFFFFFFFFFFFFFFLL;
  if (v8 != 0x7FFFFFFFFFFFFFFFLL && v9 != 0x7FFFFFFFFFFFFFFFLL)
  {
    if (a3)
    {
      v11 = __CFActiveProcessorCount();
      if (v11 < 2)
      {
        a3 &= ~1uLL;
      }
    }

    else
    {
      v11 = 1;
    }

    if ((a3 & 3) != 0)
    {
      v12 = (v9 - v8 + 1) / v11 / v11;
      if (v12 >= 0x10)
      {
        if (v12 <= 0x1000)
        {
          v13 = (v12 + 15) & 0x3FF0;
        }

        else
        {
          v13 = 4096;
        }
      }

      else
      {
        v13 = 16;
      }

      v21 = v13 + v9 - v8;
      if (a3)
      {
        v45[0] = 0;
        v45[1] = v45;
        v45[2] = 0x2020000000;
        v46 = 0;
        v41 = 0;
        v42 = &v41;
        v43 = 0x2020000000;
        v44 = 0x7FFFFFFFFFFFFFFFLL;
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = ____NSOrderedSetGetIndexPassingTest_block_invoke;
        block[3] = &unk_1E6D82388;
        block[10] = v13;
        block[11] = v9;
        block[12] = a3;
        block[4] = a1;
        block[5] = a4;
        block[6] = a2;
        block[7] = v45;
        block[8] = &v41;
        block[9] = v8;
        dispatch_apply(v21 / v13, 0, block);
        v10 = atomic_load(v42 + 3);
        _Block_object_dispose(&v41, 8);
        _Block_object_dispose(v45, 8);
      }

      else
      {
        contexta = v9;
        v36 = a1;
        v37 = a2;
        v39 = a4;
        v45[0] = 0x7FFFFFFFFFFFFFFFLL;
        if (v13 <= v21)
        {
          v22 = v8;
          v23 = 0;
          v24 = v13 - 1;
          v25 = 1;
          v26 = v22;
          v27 = contexta;
          v28 = v21 / v13;
          do
          {
            if ((a3 & 2) != 0)
            {
              if (v24 >= &v27[-v22])
              {
                v30 = v22;
              }

              else
              {
                v30 = &v27[1 - v13];
              }

              v29 = v27;
            }

            else
            {
              if (v24 >= &v27[-v22])
              {
                v29 = contexta;
              }

              else
              {
                v29 = v24 + v23 * v13 + v22;
              }

              v30 = v26;
            }

            if (__NSOrderedSetChunkIterate(v36, a3, v30, v29, v39, v37, v45, 0, 0))
            {
              break;
            }

            ++v23;
            v27 -= v13;
            v26 += v13;
          }

          while (v25++ < v28);
        }

        return atomic_load(v45);
      }
    }

    else
    {
      v38 = a4;
      v14 = _CFAutoreleasePoolPush();
      LOBYTE(v45[0]) = 0;
      v48 = 0u;
      v49 = 0u;
      v50 = 0u;
      v51 = 0u;
      v15 = [a1 countByEnumeratingWithState:&v48 objects:v47 count:16];
      if (v15)
      {
        v16 = v15;
        context = v14;
        v35 = v8;
        v17 = 0;
        v10 = 0;
        v18 = *v49;
        do
        {
          for (i = 0; i != v16; ++i)
          {
            if (*v49 != v18)
            {
              objc_enumerationMutation(a1);
            }

            v20 = *(*(&v48 + 1) + 8 * i);
            if ((a3 & 0x1000000000000000) == 0 || v35 <= v10 && v10 <= v9 && [v38 containsIndex:v10])
            {
              if ((*(a2 + 16))(a2, v20, v10, v45))
              {
                goto LABEL_33;
              }

              if (v45[0])
              {
                goto LABEL_32;
              }

              if (v17 >= 0x3FF)
              {
                _CFAutoreleasePoolPop(context);
                context = _CFAutoreleasePoolPush();
                v17 = 0;
              }

              else
              {
                ++v17;
              }
            }

            ++v10;
          }

          v16 = [a1 countByEnumeratingWithState:&v48 objects:v47 count:16];
        }

        while (v16);
LABEL_32:
        v10 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_33:
        v14 = context;
      }

      _CFAutoreleasePoolPop(v14);
    }
  }

  return v10;
}

Boolean CFPropertyListIsValid(CFPropertyListRef plist, CFPropertyListFormat format)
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 1;
  v4 = 0u;
  v5 = 0;
  v3[1] = format;
  return __CFPropertyListIsValidAux(plist, v3);
}

CFStringRef CFURLCopyPathExtension(CFURLRef url)
{
  v9 = *MEMORY[0x1E69E9840];
  if (_foundation_swift_nsurl_feature_enabled_onceToken != -1)
  {
    CFURLCopyPathExtension_cold_1();
  }

  if (_foundation_swift_nsurl_feature_enabled_featureEnabled == 1)
  {
    v2 = [(__CFURL *)url pathExtension];
    v3 = v2;
    if (v2 && !CFStringGetLength(v2))
    {
      CFRelease(v3);
      return 0;
    }
  }

  else
  {
    PathComponent = CFURLCopyLastPathComponent(url);
    if (!PathComponent)
    {
      return 0;
    }

    v5 = PathComponent;
    v8.location = 0;
    v8.length = 0;
    _CFGetPathExtensionRangesFromPathComponent(PathComponent, &v8, 0);
    if (v8.location == -1)
    {
      v3 = 0;
    }

    else
    {
      v6 = CFGetAllocator(url);
      v3 = CFStringCreateWithSubstring(v6, v5, v8);
    }

    CFRelease(v5);
  }

  return v3;
}

CFLocaleIdentifier CFLocaleCreateCanonicalLocaleIdentifierFromString(CFAllocatorRef allocator, CFStringRef localeIdentifier)
{
  v20 = *MEMORY[0x1E69E9840];
  if (!localeIdentifier || !CFStringGetCString(localeIdentifier, buffer, 257, 0x600u))
  {
    return 0;
  }

  __key = 0;
  v16 = 0;
  for (i = buffer; ; ++i)
  {
    if (!*i)
    {
      v18[0] = 0;
      goto LABEL_13;
    }

    if (*i == 64)
    {
      break;
    }
  }

  v18[0] = 64;
  *i = 0;
  v5 = v18;
  do
  {
    do
    {
      v7 = *++i;
      v6 = v7;
    }

    while (v7 == 32);
    *++v5 = v6;
  }

  while (*i);
LABEL_13:
  __key = buffer;
  v16 = 0;
  if (!bsearch(&__key, oldAppleLocaleToCanonical, 0xB8uLL, 0x10uLL, _CompareTestEntryToTableEntryKey))
  {
    v13 = 0;
    v14 = 0;
    _UpdateFullLocaleString(buffer, &v14, &v13, v17);
    v8 = v13;
    v9 = v14;
    if (v14 && v13)
    {
      if (strncmp(v14 + 1, v13 + 1, 2uLL))
      {
        goto LABEL_21;
      }

      do
      {
        v10 = v9[3];
        *v9++ = v10;
      }

      while (v10);
      v8 = v13;
    }

    if (!v8)
    {
LABEL_23:
      __key = buffer;
      v12 = bsearch(&__key, localeStringPrefixToDefaults, 0xB7uLL, 0x10uLL, _CompareTestEntryPrefixToTableEntryKey);
      if (v12)
      {
        _RemoveSubstringsIfPresent(buffer, v12[1]);
      }

      goto LABEL_25;
    }

LABEL_21:
    __key = v8;
    v11 = bsearch(&__key, localeStringRegionToDefaults, 5uLL, 0x10uLL, _CompareTestEntryToTableEntryKey);
    if (v11)
    {
      _RemoveSubstringsIfPresent(buffer, v11[1]);
    }

    goto LABEL_23;
  }

  __strlcpy_chk();
  v17[0] = 0;
LABEL_25:
  _AppendKeyValueString(buffer, v17);
  _AppendKeyValueString(buffer, v18);
  return CFStringCreateWithCString(allocator, buffer, 0x600u);
}

CFNumberFormatterRef CFNumberFormatterCreate(CFAllocatorRef allocator, CFLocaleRef locale, CFNumberFormatterStyle style)
{
  v9 = allocator;
  v44 = *MEMORY[0x1E69E9840];
  if (!allocator)
  {
    v10 = _CFGetTSD(1);
    if (v10)
    {
      v9 = v10;
    }

    else
    {
      v9 = &__kCFAllocatorSystemDefault;
    }
  }

  Instance = _CFRuntimeCreateInstance(v9, 0x39uLL, 72, 0, v3, v4, v5, v6);
  if (Instance)
  {
    if (!locale)
    {
      locale = CFLocaleGetSystem();
    }

    Instance[4] = style;
    if (style >= (kCFNumberFormatterCurrencyAccountingStyle|kCFNumberFormatterDecimalStyle))
    {
      Instance[4] = 1;
      if (locale)
      {
        goto LABEL_10;
      }
    }

    else if (locale)
    {
LABEL_10:
      Identifier = CFLocaleGetIdentifier(locale);
      goto LABEL_13;
    }

    Identifier = &stru_1EF068AA8;
LABEL_13:
    if (!CFStringGetCStringPtr(Identifier, 0x600u) && !CFStringGetCString(Identifier, buffer, 768, 0x600u) || (v13 = __cficu_unum_open(), (Instance[2] = v13) == 0))
    {
      CFRelease(Instance);
      return 0;
    }

    if (style)
    {
      if (locale)
      {
LABEL_18:
        System = CFRetain(locale);
LABEL_22:
        Instance[3] = System;
        v16 = Instance[4];
        if (v16 > 9 || ((1 << v16) & 0x2E1) == 0)
        {
          AppleICUNumberFormatStringsPref = _CFLocaleGetAppleICUNumberFormatStringsPref(System, v15);
          if (AppleICUNumberFormatStringsPref)
          {
            v26 = AppleICUNumberFormatStringsPref;
            v27 = CFGetTypeID(AppleICUNumberFormatStringsPref);
            if (v27 == CFDictionaryGetTypeID())
            {
              v28 = v16 - 1;
              v29 = v28 > 9 ? @"0" : *(&off_1E6D81D70 + v28);
              Value = CFDictionaryGetValue(v26, v29);
              if (Value)
              {
                v31 = Value;
                v32 = CFGetTypeID(Value);
                if (v32 == CFStringGetTypeID())
                {
                  v33 = CFLocaleGetIdentifier(Instance[3]);
                  if (!CFStringGetCStringPtr(v33, 0x600u))
                  {
                    CFStringGetCString(v33, v43, 768, 0x600u);
                  }

                  v40 = 0;
                  if (__cficu_unum_open())
                  {
                    v40 = 0;
                    v34 = __cficu_unum_toPattern();
                    if (v34 <= 768)
                    {
                      v35 = CFStringCreateWithCharacters(&__kCFAllocatorSystemDefault, chars, v34);
                      v40 = 0;
                      v36 = __cficu_unum_toPattern();
                      v37 = v36;
                      if (v36 <= 768)
                      {
                        Mutable = CFStringCreateMutable(&__kCFAllocatorSystemDefault, 0);
                        CFStringAppendCharacters(Mutable, chars, v37);
                        result.location = 0;
                        result.length = 0;
                        v45.location = 0;
                        v45.length = v37;
                        if (CFStringFindWithOptions(Mutable, v35, v45, 0, &result))
                        {
                          CFStringReplace(Mutable, result, v31);
                          __CFNumberFormatterApplyPattern(Instance, Mutable);
                        }

                        CFRelease(Mutable);
                      }

                      CFRelease(v35);
                    }

                    __cficu_unum_close();
                  }
                }
              }
            }
          }
        }

        AppleICUNumberSymbolsPref = _CFLocaleGetAppleICUNumberSymbolsPref(Instance[3], v15);
        if (AppleICUNumberSymbolsPref)
        {
          v18 = AppleICUNumberSymbolsPref;
          v19 = CFGetTypeID(AppleICUNumberSymbolsPref);
          if (v19 == CFDictionaryGetTypeID())
          {
            CFDictionaryApplyFunction(v18, __CFNumberFormatterApplySymbolPrefs, Instance);
          }
        }

        v20 = Instance[4];
        if (v20 > 9 || ((1 << v20) & 0x2E0) == 0)
        {
          v24 = __cficu_unum_toPattern();
          if (v24 <= 768)
          {
            Instance[5] = CFStringCreateWithCharacters(v9, chars, v24);
          }
        }

        v21 = Instance[5];
        if (v21)
        {
          Instance[6] = CFRetain(v21);
          Instance[7] = __CFNumberFormatterCreateCompressedString(Instance[5], 1, 0);
        }

        v22 = Instance[4];
        if (v22 > 9 || ((1 << v22) & 0x2E0) == 0)
        {
          *chars = __cficu_unum_getAttribute();
          if (*chars != 1)
          {
            Instance[8] = CFNumberCreate(v9, kCFNumberSInt32Type, chars);
            __cficu_unum_setAttribute();
          }
        }

        __cficu_unum_setAttribute();
        __cficu_unum_setContext();
        return Instance;
      }
    }

    else
    {
      __cficu_unum_applyPattern();
      __cficu_unum_setAttribute();
      __cficu_unum_setAttribute();
      if (locale)
      {
        goto LABEL_18;
      }
    }

    System = CFLocaleGetSystem();
    goto LABEL_22;
  }

  return Instance;
}

CFMutableDictionaryRef _CFXPreferencesCopyDictionaryForSourceWithBundleID(__CFString *a1)
{
  if (_CFPrefsCurrentProcessIsCFPrefsD())
  {
    v2 = 0;
  }

  else
  {
    if (qword_1ED40BE20 != -1)
    {
      _CFXPreferencesCopyDictionaryForSourceWithBundleID_cold_1();
    }

    v2 = [qword_1ED40BE18 copyPrefs];
  }

  v3 = [(_CFXPreferences *)v2 copyDictionaryForSourceWithIdentifier:a1];

  return v3;
}

__CFString *__CFNumberFormatterCreateCompressedString(CFStringRef theString, int a2, CFIndex *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  if (!theString)
  {
    return 0;
  }

  v4 = theString;
  if (a3)
  {
    v6 = *a3;
    Length = a3[1];
  }

  else
  {
    Length = CFStringGetLength(theString);
    v6 = 0;
  }

  Mutable = CFStringCreateMutable(&__kCFAllocatorSystemDefault, 0);
  Predefined = CFCharacterSetGetPredefined(kCFCharacterSetLetter);
  v9 = CFCharacterSetGetPredefined(kCFCharacterSetDecimalDigit);
  if (Length >= 1)
  {
    v19 = v4;
    theSet = v9;
    v10 = 0;
    v11 = 0;
    v12 = v6 + Length;
    do
    {
      CharacterAtIndex = CFStringGetCharacterAtIndex(v4, v6);
      v14 = CFCharacterSetGetPredefined(kCFCharacterSetWhitespace);
      if (CFCharacterSetIsCharacterMember(v14, CharacterAtIndex))
      {
        v15 = 32;
      }

      else
      {
        v15 = CharacterAtIndex;
      }

      chars = v15;
      if (++v6 >= Length)
      {
        v16 = 0;
      }

      else
      {
        v16 = CFStringGetCharacterAtIndex(v4, v6);
        v15 = chars;
      }

      if (v15 == 39 && a2 != 0)
      {
        v10 = !v10;
      }

      if (v10 || v15 != 32 || CFCharacterSetIsCharacterMember(Predefined, v11) && CFCharacterSetIsCharacterMember(Predefined, v16))
      {
        goto LABEL_25;
      }

      if (!CFCharacterSetIsCharacterMember(theSet, v11))
      {
        v4 = v19;
        continue;
      }

      v4 = v19;
      if (CFCharacterSetIsCharacterMember(theSet, v16))
      {
LABEL_25:
        CFStringAppendCharacters(Mutable, &chars, 1);
        v11 = chars;
      }
    }

    while (v6 < v12);
  }

  return Mutable;
}

CFCharacterSetRef CFCharacterSetGetPredefined(CFCharacterSetPredefinedSet theSetIdentifier)
{
  if ((theSetIdentifier - 16) <= 0xFFFFFFFFFFFFFFF0)
  {
    CFCharacterSetGetPredefined_cold_1(theSetIdentifier, v1, v2, v3, v4, v5, v6, v7);
  }

  return (&__CFBuiltinSets + 6 * theSetIdentifier - 6);
}

void CFNumberFormatterSetProperty(CFNumberFormatterRef formatter, CFNumberFormatterKey key, CFTypeRef value)
{
  v37 = *MEMORY[0x1E69E9840];
  valuePtr = 0;
  v34 = 0.0;
  __CFCheckCFInfoPACSignature(formatter);
  v6 = _CFGetNonObjCTypeID(formatter);
  if (v6 != 57)
  {
    _CFAssertMismatchedTypeID(0x39uLL, v6);
  }

  if (CFEqual(@"kCFNumberFormatterFormattingContextKey", key))
  {
    CFNumberGetValue(value, kCFNumberSInt32Type, &valuePtr);
    __cficu_unum_setContext();
  }

  v7 = *(formatter + 4);
  if ((v7 - 8) < 0xFFFFFFFFFFFFFFFDLL && v7 != 9 || @"kCFNumberFormatterIsLenientKey" == key)
  {
    if (@"kCFNumberFormatterCurrencyCodeKey" == key)
    {
      Length = CFStringGetLength(value);
      if (Length >= 768)
      {
        v11 = 768;
      }

      else
      {
        v11 = Length;
      }

      goto LABEL_58;
    }

    if (@"kCFNumberFormatterDecimalSeparatorKey" == key)
    {
      v12 = CFStringGetLength(value);
      if (v12 >= 768)
      {
        v13 = 768;
      }

      else
      {
        v13 = v12;
      }

      goto LABEL_97;
    }

    if (@"kCFNumberFormatterCurrencyDecimalSeparatorKey" == key)
    {
      v14 = CFStringGetLength(value);
      if (v14 >= 768)
      {
        v13 = 768;
      }

      else
      {
        v13 = v14;
      }

      goto LABEL_97;
    }

    if (@"kCFNumberFormatterAlwaysShowDecimalSeparatorKey" == key)
    {
      goto LABEL_69;
    }

    if (@"kCFNumberFormatterGroupingSeparatorKey" == key)
    {
      v15 = CFStringGetLength(value);
      if (v15 >= 768)
      {
        v13 = 768;
      }

      else
      {
        v13 = v15;
      }

      goto LABEL_97;
    }

    if (@"kCFNumberFormatterUseGroupingSeparatorKey" == key)
    {
LABEL_69:
      __cficu_unum_setAttribute();
      goto LABEL_98;
    }

    if (@"kCFNumberFormatterPercentSymbolKey" == key)
    {
      v16 = CFStringGetLength(value);
      if (v16 >= 768)
      {
        v13 = 768;
      }

      else
      {
        v13 = v16;
      }

      goto LABEL_97;
    }

    if (@"kCFNumberFormatterZeroSymbolKey" == key)
    {
      v17 = *(formatter + 9);
      if (value)
      {
        v18 = CFRetain(value);
      }

      else
      {
        v18 = 0;
      }

      *(formatter + 9) = v18;
      if (!v17)
      {
        goto LABEL_98;
      }
    }

    else
    {
      if (@"kCFNumberFormatterNaNSymbolKey" == key)
      {
        v19 = CFStringGetLength(value);
        if (v19 >= 768)
        {
          v13 = 768;
        }

        else
        {
          v13 = v19;
        }

        goto LABEL_97;
      }

      if (@"kCFNumberFormatterInfinitySymbolKey" == key)
      {
        v20 = CFStringGetLength(value);
        if (v20 >= 768)
        {
          v13 = 768;
        }

        else
        {
          v13 = v20;
        }

        goto LABEL_97;
      }

      if (@"kCFNumberFormatterMinusSignKey" == key)
      {
        v21 = CFStringGetLength(value);
        if (v21 >= 768)
        {
          v13 = 768;
        }

        else
        {
          v13 = v21;
        }

        goto LABEL_97;
      }

      if (@"kCFNumberFormatterPlusSignKey" == key)
      {
        v22 = CFStringGetLength(value);
        if (v22 >= 768)
        {
          v13 = 768;
        }

        else
        {
          v13 = v22;
        }

        goto LABEL_97;
      }

      if (@"kCFNumberFormatterCurrencySymbolKey" == key)
      {
        v23 = CFStringGetLength(value);
        if (v23 >= 768)
        {
          v13 = 768;
        }

        else
        {
          v13 = v23;
        }

        goto LABEL_97;
      }

      if (@"kCFNumberFormatterExponentSymbolKey" == key)
      {
        v24 = CFStringGetLength(value);
        if (v24 >= 768)
        {
          v13 = 768;
        }

        else
        {
          v13 = v24;
        }

        goto LABEL_97;
      }

      if (@"kCFNumberFormatterMinIntegerDigitsKey" == key || @"kCFNumberFormatterMaxIntegerDigitsKey" == key || @"kCFNumberFormatterMinFractionDigitsKey" == key || @"kCFNumberFormatterMaxFractionDigitsKey" == key || @"kCFNumberFormatterGroupingSizeKey" == key || @"kCFNumberFormatterSecondaryGroupingSizeKey" == key || @"kCFNumberFormatterRoundingModeKey" == key)
      {
        goto LABEL_101;
      }

      if (@"kCFNumberFormatterRoundingIncrementKey" == key)
      {
        CFNumberGetValue(value, kCFNumberDoubleType, &v34);
        __cficu_unum_setDoubleAttribute(v34);
        goto LABEL_98;
      }

      if (@"kCFNumberFormatterFormatWidthKey" == key || @"kCFNumberFormatterPaddingPositionKey" == key)
      {
LABEL_101:
        CFNumberGetValue(value, kCFNumberSInt32Type, &valuePtr);
        goto LABEL_69;
      }

      if (@"kCFNumberFormatterPaddingCharacterKey" == key)
      {
        v25 = CFStringGetLength(value);
        if (v25 >= 768)
        {
          v11 = 768;
        }

        else
        {
          v11 = v25;
        }

        goto LABEL_58;
      }

      if (@"kCFNumberFormatterDefaultFormatKey" == key)
      {
        goto LABEL_98;
      }

      if (@"kCFNumberFormatterMultiplierKey" != key)
      {
        if (@"kCFNumberFormatterPositivePrefixKey" == key)
        {
          v27 = CFStringGetLength(value);
          if (v27 >= 768)
          {
            v11 = 768;
          }

          else
          {
            v11 = v27;
          }
        }

        else if (@"kCFNumberFormatterPositiveSuffixKey" == key)
        {
          v28 = CFStringGetLength(value);
          if (v28 >= 768)
          {
            v11 = 768;
          }

          else
          {
            v11 = v28;
          }
        }

        else if (@"kCFNumberFormatterNegativePrefixKey" == key)
        {
          v29 = CFStringGetLength(value);
          if (v29 >= 768)
          {
            v11 = 768;
          }

          else
          {
            v11 = v29;
          }
        }

        else
        {
          if (@"kCFNumberFormatterNegativeSuffixKey" != key)
          {
            if (@"kCFNumberFormatterPerMillSymbolKey" == key)
            {
              v31 = CFStringGetLength(value);
              if (v31 >= 768)
              {
                v13 = 768;
              }

              else
              {
                v13 = v31;
              }
            }

            else if (@"kCFNumberFormatterInternationalCurrencySymbolKey" == key)
            {
              v32 = CFStringGetLength(value);
              if (v32 >= 768)
              {
                v13 = 768;
              }

              else
              {
                v13 = v32;
              }
            }

            else
            {
              if (@"kCFNumberFormatterCurrencyGroupingSeparatorKey" != key)
              {
                if (@"kCFNumberFormatterIsLenientKey" == key)
                {
                  *(formatter + 80) = &__kCFBooleanTrue == value;
                  goto LABEL_69;
                }

                if (@"kCFNumberFormatterUseSignificantDigitsKey" == key)
                {
                  goto LABEL_69;
                }

                if (@"kCFNumberFormatterMinSignificantDigitsKey" != key && @"kCFNumberFormatterMaxSignificantDigitsKey" != key)
                {
                  if (@"kCFNumberFormatterUsesCharacterDirectionKey" != key)
                  {
                    if (@"kCFNumberFormatterMinGroupingDigitsKey" != key)
                    {
                      goto LABEL_98;
                    }

                    CFNumberGetValue(value, kCFNumberSInt32Type, &valuePtr);
                    if (valuePtr == -1)
                    {
                      valuePtr = -2;
                    }

                    goto LABEL_69;
                  }

                  *(formatter + 82) = &__kCFBooleanTrue == value;
LABEL_98:
                  if (_CFExecutableLinkedOnOrAfter(6uLL))
                  {
                    CFNumberFormatterGetFormat(formatter);
                  }

                  return;
                }

                goto LABEL_101;
              }

              v33 = CFStringGetLength(value);
              if (v33 >= 768)
              {
                v13 = 768;
              }

              else
              {
                v13 = v33;
              }
            }

LABEL_97:
            v39.location = 0;
            v39.length = v13;
            CFStringGetCharacters(value, v39, buffer);
            __cficu_unum_setSymbol();
            goto LABEL_98;
          }

          v30 = CFStringGetLength(value);
          if (v30 >= 768)
          {
            v11 = 768;
          }

          else
          {
            v11 = v30;
          }
        }

LABEL_58:
        v38.location = 0;
        v38.length = v11;
        CFStringGetCharacters(value, v38, buffer);
        __cficu_unum_setTextAttribute();
        goto LABEL_98;
      }

      v17 = *(formatter + 8);
      if (value)
      {
        v26 = CFRetain(value);
      }

      else
      {
        v26 = 0;
      }

      *(formatter + 8) = v26;
      *(formatter + 81) = value != 0;
      if (!v17)
      {
        goto LABEL_98;
      }
    }

    CFRelease(v17);
    goto LABEL_98;
  }
}

CFStringRef CFNumberFormatterGetFormat(CFNumberFormatterRef formatter)
{
  v13 = *MEMORY[0x1E69E9840];
  __CFCheckCFInfoPACSignature(formatter);
  v2 = _CFGetNonObjCTypeID(formatter);
  if (v2 != 57)
  {
    _CFAssertMismatchedTypeID(0x39uLL, v2);
  }

  v3 = *(formatter + 4) - 5;
  if (v3 < 5 && ((0x17u >> v3) & 1) != 0)
  {
    return 0;
  }

  v5 = __cficu_unum_toPattern();
  v6 = v5;
  if (v5 <= 768)
  {
    v7 = CFGetAllocator(formatter);
    v8 = CFStringCreateWithCharacters(v7, chars, v6);
    if (v8)
    {
      v9 = v8;
      v10 = *(formatter + 5);
      if (v10)
      {
        if (CFEqual(v8, v10))
        {
          CFRelease(v9);
          return *(formatter + 5);
        }

        CFRelease(*(formatter + 5));
      }

      *(formatter + 5) = v9;
      v11 = *(formatter + 7);
      if (v11)
      {
        CFRelease(v11);
        v9 = *(formatter + 5);
      }

      *(formatter + 7) = __CFNumberFormatterCreateCompressedString(v9, 1, 0);
    }
  }

  return *(formatter + 5);
}

CFTypeRef CFNumberFormatterCopyProperty(CFNumberFormatterRef formatter, CFNumberFormatterKey key)
{
  v28 = *MEMORY[0x1E69E9840];
  valuePtr = 0;
  DoubleAttribute = 0.0;
  __CFCheckCFInfoPACSignature(formatter);
  v4 = _CFGetNonObjCTypeID(formatter);
  if (v4 != 57)
  {
    _CFAssertMismatchedTypeID(0x39uLL, v4);
  }

  if (CFEqual(@"kCFNumberFormatterFormattingContextKey", key))
  {
    Context = __cficu_unum_getContext();
LABEL_4:
    valuePtr = Context;
LABEL_5:
    v6 = CFGetAllocator(formatter);
    p_valuePtr = &valuePtr;
    v8 = kCFNumberSInt32Type;
    return CFNumberCreate(v6, v8, p_valuePtr);
  }

  v10 = *(formatter + 4);
  if (((v10 - 8) >= 0xFFFFFFFFFFFFFFFDLL || v10 == 9) && @"kCFNumberFormatterIsLenientKey" != key)
  {
    return 0;
  }

  if (@"kCFNumberFormatterCurrencyCodeKey" != key)
  {
    if (@"kCFNumberFormatterDecimalSeparatorKey" != key && @"kCFNumberFormatterCurrencyDecimalSeparatorKey" != key)
    {
      if (@"kCFNumberFormatterAlwaysShowDecimalSeparatorKey" == key)
      {
        goto LABEL_71;
      }

      if (@"kCFNumberFormatterGroupingSeparatorKey" != key)
      {
        if (@"kCFNumberFormatterUseGroupingSeparatorKey" == key)
        {
          goto LABEL_71;
        }

        if (@"kCFNumberFormatterPercentSymbolKey" != key)
        {
          if (@"kCFNumberFormatterZeroSymbolKey" == key)
          {
            result = *(formatter + 9);
            if (!result)
            {
              return result;
            }

            goto LABEL_75;
          }

          if (@"kCFNumberFormatterNaNSymbolKey" != key && @"kCFNumberFormatterInfinitySymbolKey" != key && @"kCFNumberFormatterMinusSignKey" != key && @"kCFNumberFormatterPlusSignKey" != key && @"kCFNumberFormatterCurrencySymbolKey" != key && @"kCFNumberFormatterExponentSymbolKey" != key)
          {
            if (@"kCFNumberFormatterMinIntegerDigitsKey" == key || @"kCFNumberFormatterMaxIntegerDigitsKey" == key || @"kCFNumberFormatterMinFractionDigitsKey" == key || @"kCFNumberFormatterMaxFractionDigitsKey" == key || @"kCFNumberFormatterGroupingSizeKey" == key || @"kCFNumberFormatterSecondaryGroupingSizeKey" == key || @"kCFNumberFormatterRoundingModeKey" == key)
            {
              goto LABEL_98;
            }

            if (@"kCFNumberFormatterRoundingIncrementKey" == key)
            {
              DoubleAttribute = __cficu_unum_getDoubleAttribute();
              v6 = CFGetAllocator(formatter);
              p_valuePtr = &DoubleAttribute;
              v8 = kCFNumberDoubleType;
              return CFNumberCreate(v6, v8, p_valuePtr);
            }

            if (@"kCFNumberFormatterFormatWidthKey" == key || @"kCFNumberFormatterPaddingPositionKey" == key)
            {
              goto LABEL_98;
            }

            if (@"kCFNumberFormatterPaddingCharacterKey" == key)
            {
              goto LABEL_99;
            }

            if (@"kCFNumberFormatterDefaultFormatKey" == key)
            {
              result = *(formatter + 6);
              if (!result)
              {
                return result;
              }

              goto LABEL_75;
            }

            if (@"kCFNumberFormatterMultiplierKey" == key)
            {
              result = *(formatter + 8);
              if (!result)
              {
                return result;
              }

              goto LABEL_75;
            }

            if (@"kCFNumberFormatterPositivePrefixKey" == key || @"kCFNumberFormatterPositiveSuffixKey" == key || @"kCFNumberFormatterNegativePrefixKey" == key || @"kCFNumberFormatterNegativeSuffixKey" == key)
            {
LABEL_99:
              TextAttribute = __cficu_unum_getTextAttribute();
              goto LABEL_86;
            }

            if (@"kCFNumberFormatterPerMillSymbolKey" != key && @"kCFNumberFormatterInternationalCurrencySymbolKey" != key && @"kCFNumberFormatterCurrencyGroupingSeparatorKey" != key)
            {
              if (@"kCFNumberFormatterIsLenientKey" == key)
              {
                v19 = &kCFBooleanTrue;
                v20 = *(formatter + 80) == 0;
                goto LABEL_72;
              }

              if (@"kCFNumberFormatterUseSignificantDigitsKey" != key)
              {
                if (@"kCFNumberFormatterMinSignificantDigitsKey" != key && @"kCFNumberFormatterMaxSignificantDigitsKey" != key)
                {
                  if (@"kCFNumberFormatterMinGroupingDigitsKey" == key)
                  {
                    Attribute = __cficu_unum_getAttribute();
                    if (Attribute == -2)
                    {
                      v14 = -1;
                    }

                    else
                    {
                      v14 = Attribute;
                    }

                    valuePtr = v14;
                    goto LABEL_5;
                  }

                  return 0;
                }

LABEL_98:
                Context = __cficu_unum_getAttribute();
                goto LABEL_4;
              }

LABEL_71:
              v18 = __cficu_unum_getAttribute();
              v19 = &kCFBooleanTrue;
              v20 = v18 == 0;
LABEL_72:
              if (v20)
              {
                v19 = &kCFBooleanFalse;
              }

              result = *v19;
LABEL_75:

              return CFRetain(result);
            }
          }
        }
      }
    }

    TextAttribute = __cficu_unum_getSymbol();
LABEL_86:
    v22 = TextAttribute;
    result = 0;
    if (v22 > 768)
    {
      return result;
    }

    v16 = v22;
    goto LABEL_88;
  }

  v15 = __cficu_unum_getTextAttribute();
  v16 = v15;
  if (!v15)
  {
    Identifier = CFLocaleGetIdentifier(*(formatter + 3));
    if (!CFStringGetCStringPtr(Identifier, 0x600u) && !CFStringGetCString(Identifier, buffer, 768, 0x600u))
    {
      return 0;
    }

    if (__cficu_unum_open())
    {
      v16 = __cficu_unum_getTextAttribute();
      __cficu_unum_close();
    }

    else
    {
      v16 = 0;
    }
  }

  result = 0;
  if ((v16 - 1) <= 0x2FF)
  {
LABEL_88:
    v23 = CFGetAllocator(formatter);
    return CFStringCreateWithCharacters(v23, chars, v16);
  }

  return result;
}

uint64_t _dictionaryContainsAllKeysInSet(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 1;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = ___dictionaryContainsAllKeysInSet_block_invoke;
  v4[3] = &unk_1E6DD1658;
  v4[4] = &v5;
  v4[5] = a1;
  CFSetApply(a2, v4);
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

void sub_18317E778(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

CFIndex CFAllocatorGetPreferredSizeForSize(CFAllocatorRef allocator, CFIndex size, CFOptionFlags hint)
{
  if (!allocator)
  {
    allocator = _CFGetTSD(1);
    if (!allocator)
    {
      allocator = &__kCFAllocatorSystemDefault;
    }
  }

  v5 = *allocator & ~MEMORY[0x1E69E58F0];
  if ((*allocator & MEMORY[0x1E69E58F0]) != 0)
  {
    v5 |= *allocator & MEMORY[0x1E69E58F0];
  }

  if (v5 == qword_1ED40C0D0)
  {
    v6 = 0;
    if (size >= 1)
    {
      v7 = *(allocator + 25);
      if (v7)
      {
        v6 = v7(size, hint, *(allocator + 18));
      }
    }

    if (v6 <= size)
    {
      return size;
    }

    else
    {
      return v6;
    }
  }

  else
  {

    return malloc_good_size(size);
  }
}

const __CFURL *_CFURLPromiseCopyPhysicalURL(const __CFURL *result)
{
  v2[1] = *MEMORY[0x1E69E9840];
  v2[0] = 0;
  if (result)
  {
    v1 = result;
    if (_CFURLIsFileURL(result))
    {
      CFURLCopyResourcePropertyForKey(v1, @"_NSURLPromisePhysicalURLKey", v2, 0);
      result = v2[0];
      if (v2[0] == &__kCFNull)
      {
        return CFRetain(v1);
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void _loadLocTable(const void *a1, void *a2, CFTypeRef cf1, const __CFSet *a4, void *a5, uint64_t a6, CFURLRef *a7)
{
  values[1] = *MEMORY[0x1E69E9840];
  values[0] = cf1;
  if (cf1)
  {
    v13 = *(a6 + 80);
    if (!v13 || !CFEqual(cf1, v13))
    {
      v27 = 0;
      v28 = &v27;
      v29 = 0x2020000000;
      v30 = 0;
      if (!a4 || *(a6 + 73) && *(a6 + 72))
      {
        cf = CFArrayCreate(&__kCFAllocatorSystemDefault, values, 1, &kCFTypeArrayCallBacks);
        v14 = [[NSSet alloc] initWithObjects:&cf count:1];
        StringsFromPlistData = __CFBundleCreateStringsFromPlistData(a1, v14, *(a6 + 56), *(a6 + 66), a2);
        ValueWithKeyPath = _CFPropertyListGetValueWithKeyPath(StringsFromPlistData, values[0]);
        v17 = ValueWithKeyPath;
        if (ValueWithKeyPath && CFGetTypeID(ValueWithKeyPath) == 18 && CFDictionaryGetCount(v17) >= 1)
        {
          v22 = 0;
          _CFBundleGetLocTableProvenanceForLanguage(*(a6 + 56), values[0], &v23, &v22);
          if (v22)
          {
            *(a6 + 75) = 1;
          }

          CFDictionaryApplyFunction(v17, __CFStringsDictAddFunction, a5);
          *(v28 + 24) = 1;
          *(a6 + 74) = 1;
          *(a6 + 80) = CFRetain(values[0]);
        }

        CFRelease(cf);

        if (StringsFromPlistData)
        {
          CFRelease(StringsFromPlistData);
        }
      }

      else
      {
        if (_dictionaryContainsAllKeysInSet(a5, a4))
        {
LABEL_23:
          _Block_object_dispose(&v27, 8);
          return;
        }

        Count = CFSetGetCount(a4);
        Mutable = CFSetCreateMutable(&__kCFAllocatorSystemDefault, Count, &kCFTypeSetCallBacks);
        v26[0] = MEMORY[0x1E69E9820];
        v26[1] = 3221225472;
        v26[2] = ___loadLocTable_block_invoke;
        v26[3] = &__block_descriptor_48_e13_v24__0r_v8_16l;
        v26[4] = values[0];
        v26[5] = Mutable;
        CFSetApply(a4, v26);
        v20 = __CFBundleCreateStringsFromPlistData(a1, Mutable, *(a6 + 56), *(a6 + 66), a2);
        v25[0] = MEMORY[0x1E69E9820];
        v25[1] = 3221225472;
        v25[2] = ___loadLocTable_block_invoke_2;
        v25[3] = &unk_1E6DD15E8;
        v25[6] = a6;
        v25[7] = a5;
        v25[4] = &v27;
        v25[5] = v20;
        CFSetApply(Mutable, v25);
        if (v20)
        {
          CFRelease(v20);
        }

        CFRelease(Mutable);
      }

      if (a7 && !*a7)
      {
        if (*(v28 + 24))
        {
          v21 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"/LocTable/%@.lproj", values[0]);
          *a7 = CFURLCreateWithFileSystemPath(&__kCFAllocatorSystemDefault, v21, kCFURLPOSIXPathStyle, 1u);
          CFRelease(v21);
        }
      }

      goto LABEL_23;
    }
  }
}

void sub_18317ECA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

const void *___dictionaryContainsAllKeysInSet_block_invoke(uint64_t a1, const void *a2, _BYTE *a3)
{
  result = CFDictionaryGetValue(*(a1 + 40), a2);
  if (!result)
  {
    *(*(*(a1 + 32) + 8) + 24) = 0;
    *a3 = 1;
  }

  return result;
}

void ___loadLocTable_block_invoke(uint64_t a1, void *a2)
{
  values[2] = *MEMORY[0x1E69E9840];
  values[0] = *(a1 + 32);
  values[1] = a2;
  v3 = CFArrayCreate(&__kCFAllocatorSystemDefault, values, 2, &kCFTypeArrayCallBacks);
  CFSetAddValue(*(a1 + 40), v3);
  CFRelease(v3);
}

void _CFURLPromiseSetPhysicalURL(const __CFURL *a1, const __CFURL *a2)
{
  if (a1 && _CFURLIsFileURL(a1))
  {
    if (a2 == a1 || a2)
    {

      _CFURLSetPermanentResourcePropertyForKey();
    }

    else
    {

      CFURLClearResourcePropertyCacheForKey(a1, @"_NSURLPromisePhysicalURLKey");
    }
  }
}

CFTypeRef __CFBundleCreateStringsFromPlistData(CFTypeRef cf, const __CFSet *a2, const __CFData *a3, int a4, void *a5)
{
  v39 = *MEMORY[0x1E69E9840];
  error = 0;
  if (!a2)
  {
    v14 = (a4 != 0) << 16;
    v15 = CFGetAllocator(cf);
    v16 = CFPropertyListCreateWithData(v15, a3, v14, 0, &error);
    if (v16)
    {
      v13 = v16;
      TypeID = CFDictionaryGetTypeID();
      v19 = CFGetTypeID(v13);
      if (TypeID == v19)
      {
        return v13;
      }

      v21 = _CFBundleLocalizedStringLogger(v19, v20);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        __CFBundleCreateStringsFromPlistData_cold_1();
      }

      v22 = v13;
      goto LABEL_18;
    }

    if (error)
    {
      v27 = _CFBundleLocalizedStringLogger(0, v17);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412802;
        v32 = cf;
        v33 = 2112;
        v34 = a5;
        v35 = 2112;
        v36 = error;
        v24 = "Unable to load .strings file: %@ / %@: %@";
        v25 = v27;
        v26 = 32;
        goto LABEL_22;
      }

LABEL_17:
      v22 = error;
LABEL_18:
      CFRelease(v22);
    }

    return 0;
  }

  v29 = 0;
  if (a4)
  {
    v9 = 65537;
  }

  else
  {
    v9 = 1;
  }

  v10 = CFGetAllocator(cf);
  v11 = _CFPropertyListCreateFiltered(v10, a3, v9, a2, &v29, &error);
  if (!v11)
  {
    if (error)
    {
      v23 = _CFBundleLocalizedStringLogger(v11, v12);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        *buf = 138413058;
        v32 = a2;
        v33 = 2112;
        v34 = cf;
        v35 = 2112;
        v36 = a5;
        v37 = 2112;
        v38 = error;
        v24 = "Unable to read key-paths %@ from .strings file: %@ / %@: %@";
        v25 = v23;
        v26 = 42;
LABEL_22:
        _os_log_error_impl(&dword_1830E6000, v25, OS_LOG_TYPE_ERROR, v24, buf, v26);
        goto LABEL_17;
      }

      goto LABEL_17;
    }

    return 0;
  }

  return v29;
}

unint64_t ___CFBasicHashFindBucket_Linear_Indirect_NoCollision(uint64_t a1, unint64_t a2)
{
  v3 = __CFBasicHashTableSizes[*(a1 + 26)];
  v4 = *(CFBasicHashCallBackPtrs[(*(a1 + 32) >> 49) & 0x1FLL] + 8 * ((*(a1 + 32) >> 44) & 0x1FLL));
  if (v4)
  {
    a2 = v4(a2);
  }

  result = a2 % v3;
  v6 = 48;
  if ((*(a1 + 18) & 4) == 0)
  {
    v6 = 40;
  }

  v7 = *(a1 + v6);
  if (v3 <= 1)
  {
    v8 = 1;
  }

  else
  {
    v8 = v3;
  }

  while (*(v7 + 8 * result))
  {
    if (v3 <= result + 1)
    {
      v9 = v3;
    }

    else
    {
      v9 = 0;
    }

    result = result + 1 - v9;
    if (!--v8)
    {
      return -1;
    }
  }

  return result;
}

const __CFURL *__CFBundleCopyFrameworkURLForExecutablePath(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = MEMORY[0x1EEE9AC00](a1, a2, a3);
  v5 = v4;
  v6 = v3;
  v21 = *MEMORY[0x1E69E9840];
  bzero(buffer, 0x804uLL);
  bzero(v19, 0x804uLL);
  MutableWithExternalCharactersNoCopy = CFStringCreateMutableWithExternalCharactersNoCopy(&__kCFAllocatorSystemDefault, 0, 0, 0, 0);
  Length = CFStringGetLength(v6);
  if (Length >= 1026)
  {
    v9 = 1026;
  }

  else
  {
    v9 = Length;
  }

  v22.location = 0;
  v22.length = v9;
  CFStringGetCharacters(v6, v22, buffer);
  v10 = _CFLengthAfterDeletingPathExtension(buffer, v9);
  _CFStartOfLastPathComponent(buffer, v10);
  __memmove_chk();
  PathComponent = _CFLengthAfterDeletingLastPathComponent(buffer, v10);
  if (v5)
  {
    v12 = &stru_1EF068AA8;
  }

  else
  {
    v12 = CFStringCreateWithFileSystemRepresentation(&__kCFAllocatorSystemDefault, v19);
  }

  if (PathComponent >= 1)
  {
    do
    {
      v13 = _CFStartOfLastPathComponent(buffer, PathComponent);
      if (PathComponent <= v13)
      {
        break;
      }

      CFStringSetExternalCharactersNoCopy(MutableWithExternalCharactersNoCopy, &buffer[v13], PathComponent - v13, 1026 - v13);
      if (!v5 && CFEqual(MutableWithExternalCharactersNoCopy, @"Resources"))
      {
        v17 = 0;
        goto LABEL_26;
      }

      if (CFEqual(MutableWithExternalCharactersNoCopy, @"Support Files") || CFEqual(MutableWithExternalCharactersNoCopy, @"Contents"))
      {
        if (v5 || (v14 = _CFStartOfLastPathComponent(buffer, PathComponent), CFStringSetExternalCharactersNoCopy(MutableWithExternalCharactersNoCopy, &buffer[v14], PathComponent - v14, 1026 - v14), CFStringHasPrefix(MutableWithExternalCharactersNoCopy, v12)))
        {
          v16 = _CFLengthAfterDeletingLastPathComponent(buffer, PathComponent);
          v15 = MutableWithExternalCharactersNoCopy;
          goto LABEL_22;
        }
      }

      else if (CFStringHasSuffix(MutableWithExternalCharactersNoCopy, @".framework") && (v5 || CFStringHasPrefix(MutableWithExternalCharactersNoCopy, v12)))
      {
        v15 = MutableWithExternalCharactersNoCopy;
        v16 = PathComponent;
LABEL_22:
        CFStringSetExternalCharactersNoCopy(v15, buffer, v16, 1026);
        v17 = CFURLCreateWithFileSystemPath(&__kCFAllocatorSystemDefault, MutableWithExternalCharactersNoCopy, kCFURLPOSIXPathStyle, 1u);
        if (_CFBundleCouldBeBundle(v17))
        {
          goto LABEL_25;
        }

        CFRelease(v17);
        break;
      }

      PathComponent = _CFLengthAfterDeletingLastPathComponent(buffer, PathComponent);
    }

    while (PathComponent > 0);
  }

  v17 = 0;
LABEL_25:
  if (!v5)
  {
LABEL_26:
    CFRelease(v12);
  }

  CFStringSetExternalCharactersNoCopy(MutableWithExternalCharactersNoCopy, 0, 0, 0);
  CFRelease(MutableWithExternalCharactersNoCopy);
  return v17;
}

void _CFBundleEnsureBundleExistsForImagePath(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = __CFBundleCopyFrameworkURLForExecutablePath(a1, a2, a3);
  if (v3)
  {
    v4 = v3;
    v5 = _CFBundleCreate(&__kCFAllocatorSystemDefault, v3, 4, 0);
    if (v5)
    {
      v6 = v5;
      os_unfair_lock_lock(v5 + 24);
      if (!*(v6 + 52))
      {
        _CFBundleDlfcnCheckLoaded(v6);
        v7 = *(v6 + 48);
        if (v7 != 6 && v7 != 1)
        {
          if (!v7)
          {
            *(v6 + 48) = 4;
          }

          *(v6 + 64) = 1;
        }

        if (!*(v6 + 52))
        {
          if (_CFBundleLoadingLogger_onceToken != -1)
          {
            _CFBundleEnsureBundleExistsForImagePath_cold_1();
          }

          if (os_log_type_enabled(_CFBundleLoadingLogger__log, OS_LOG_TYPE_DEBUG))
          {
            _CFBundleEnsureBundleExistsForImagePath_cold_2();
          }
        }
      }

      os_unfair_lock_unlock((v6 + 96));
      InfoDictionary = CFBundleGetInfoDictionary(v6);
      _CFBundleInitPlugIn(v6, InfoDictionary, 0);
      _CFPlugInHandleDynamicRegistration(v6);
    }

    else
    {
      if (_CFBundleLoadingLogger_onceToken != -1)
      {
        _CFBundleEnsureBundleExistsForImagePath_cold_3();
      }

      if (os_log_type_enabled(_CFBundleLoadingLogger__log, OS_LOG_TYPE_DEBUG))
      {
        _CFBundleEnsureBundleExistsForImagePath_cold_4();
      }
    }

    CFRelease(v4);
  }
}

void ___copyIngestedCacheResult_block_invoke(uint64_t a1, const void *a2, const void *a3)
{
  CFDictionaryAddValue(*(a1 + 32), a2, a3);
  v5 = *(a1 + 40);

  CFSetRemoveValue(v5, a2);
}

uint64_t CFUniCharMapCaseTo(uint64_t a1, __int16 *a2, uint64_t a3, uint64_t a4, unsigned __int8 a5, unsigned __int16 *a6)
{
  v8 = a4;
  v9 = a1;
  *&v60[36] = *MEMORY[0x1E69E9840];
  v10 = (a1 == 931) & a5;
  v11 = v60;
  v56 = a1 & 0xFFFFFFDF;
  v12 = (a5 & 2) != 0 && a1 == 775;
  v13 = !v12;
  v14 = BYTE2(a1);
  v15 = 1 << (a1 & 7);
  v58 = a1 >> 3;
  v53 = a4;
  v16 = __CFUniCharBitmapDataArray;
  while (1)
  {
    if (v10)
    {
      v30 = v53 == 0;
      v31 = 931;
      v32 = 962;
      goto LABEL_75;
    }

    if (!a6)
    {
      goto LABEL_51;
    }

    if ((a5 & 0x10) != 0)
    {
      if (v9 == 769)
      {
        return 0;
      }

      if (v9 == 836)
      {
        v31 = 776;
        goto LABEL_77;
      }

      v17 = v16;
      IsMemberOf = CFUniCharIsMemberOf(v9, 9u);
      v16 = v17;
      if (IsMemberOf)
      {
        break;
      }
    }

LABEL_19:
    v22 = *a6;
    if (v22 <= 0x746B)
    {
      if (v22 == 27758)
      {
        if (v56 == 74)
        {
          if ((a5 & 8) != 0)
          {
            v40 = 74;
          }

          else
          {
            v40 = 106;
          }

          if ((v8 - 1) >= 2)
          {
            v31 = v40;
          }

          else
          {
            v31 = 74;
          }

          goto LABEL_77;
        }

        goto LABEL_51;
      }

      if (v22 != 29300)
      {
        goto LABEL_51;
      }

LABEL_31:
      if (v9 <= 304)
      {
        if (v9 == 73)
        {
          goto LABEL_103;
        }

        if (v9 == 105 || v9 == 304)
        {
          v30 = v8 == 3 || v8 == 0;
          v31 = 304;
          v32 = 105;
          goto LABEL_75;
        }
      }

      else if (v9 == 775)
      {
        if ((a5 & 2) != 0)
        {
          if (!v8)
          {
            return 0;
          }

          v31 = 775;
LABEL_77:
          *a2 = v31;
          return 1;
        }
      }

      else if (v9 == 305)
      {
LABEL_103:
        if (v8 != 3 && v8)
        {
          v31 = 73;
          goto LABEL_77;
        }

        v30 = (a5 & 4) == 0;
        v31 = 105;
        v32 = 305;
LABEL_75:
        if (v30)
        {
          v31 = v32;
        }

        goto LABEL_77;
      }

      goto LABEL_51;
    }

    if (v22 == 31329)
    {
      goto LABEL_31;
    }

    if (v22 != 29804)
    {
      goto LABEL_51;
    }

    if (!v13)
    {
      return 0;
    }

    if (v8)
    {
      goto LABEL_51;
    }

    if ((a5 & 4) != 0)
    {
      if (v9 > 204)
      {
        switch(v9)
        {
          case 0xCDu:
            goto LABEL_126;
          case 0x128u:
LABEL_127:
            v45 = a2;
            *a2 = 50790505;
            v46 = 771;
            goto LABEL_128;
          case 0x12Eu:
            v47 = 303;
            goto LABEL_137;
        }

        goto LABEL_51;
      }

      if (v9 == 73)
      {
        v47 = 105;
LABEL_137:
        *a2 = v47 | 0x3070000;
        return 2;
      }

      if (v9 == 74)
      {
        v47 = 106;
        goto LABEL_137;
      }
    }

    else
    {
      if (v9 == 296)
      {
        goto LABEL_127;
      }

      if (v9 == 205)
      {
LABEL_126:
        v45 = a2;
        *a2 = 50790505;
        v46 = 769;
        goto LABEL_128;
      }
    }

    if (v9 == 204)
    {
      v45 = a2;
      *a2 = 50790505;
      v46 = 768;
LABEL_128:
      v45[2] = v46;
      return 3;
    }

LABEL_51:
    if ((v8 + 87) >= 0x54)
    {
      v23 = v8 + 103;
    }

    else
    {
      v23 = v8 + 188;
    }

    if (v8 == -102)
    {
      v24 = 108;
    }

    else
    {
      v24 = v23;
    }

    if (v24 > 0x63)
    {
      v24 -= 85;
    }

    v25 = &v16[4 * v24 - 16];
    if (v14 < *v25)
    {
      v26 = *(*(v25 + 1) + 8 * v14);
      if (v26)
      {
        if ((v15 & *(v26 + v58)) != 0)
        {
          v33 = (&__CFUniCharCaseMappingTable)[v8];
          if (*v33 <= v9)
          {
            v34 = &v33[2 * (__CFUniCharCaseMappingTableCounts[v8] - 1)];
            if (*v34 >= v9)
            {
              do
              {
                v35 = &v33[2 * ((v34 - v33) >> 4)];
                if (*v35 <= v9)
                {
                  if (*v35 >= v9)
                  {
                    v36 = v35[1];
LABEL_89:
                    if (v8 != 2 || v36)
                    {
                      if (!v36)
                      {
                        goto LABEL_63;
                      }

                      goto LABEL_107;
                    }

                    if (v9 - 125252 < 0xFFFE171D)
                    {
                      goto LABEL_63;
                    }

                    v37 = &__CFUniCharToUppercaseMappingTable;
                    v38 = (&__CFUniCharToUppercaseMappingTable + 12408);
                    while (1)
                    {
                      v39 = &v37[2 * ((v38 - v37) >> 4)];
                      if (*v39 <= v9)
                      {
                        if (*v39 >= v9)
                        {
                          v36 = v39[1];
                          if (!v36)
                          {
                            goto LABEL_63;
                          }

                          LODWORD(v8) = 1;
LABEL_107:
                          result = HIBYTE(v36) & 0x1F;
                          if (result == 1)
                          {
                            if ((v36 & 0x80000000) != 0)
                            {
                              if (a3 < 2)
                              {
                                goto LABEL_63;
                              }

                              *a2 = (((v36 & 0xFFFC00) + 67043328) >> 10) - 10240;
                              a2[1] = v36 & 0x3FF | 0xDC00;
                              return 2;
                            }

                            *a2 = v36;
                            return 1;
                          }

                          if (result >= a3)
                          {
                            goto LABEL_63;
                          }

                          v41 = (*(&__CFUniCharCaseMappingExtraTable + v8) + 4 * (v36 & 0xFFFFFF));
                          if ((v36 & 0x80000000) != 0)
                          {
                            if (!result)
                            {
                              goto LABEL_63;
                            }

                            v48 = result + 1;
                            result = 0;
                            while (1)
                            {
                              v50 = *v41++;
                              v49 = v50;
                              if (v50 < 0x10000)
                              {
                                v51 = result + 1;
                                if (result + 1 >= a3)
                                {
LABEL_147:
                                  if (v48 == 2)
                                  {
                                    return result;
                                  }

LABEL_63:
                                  if (v9 >= 0x10000)
                                  {
                                    *a2 = (((v9 & 0xFFFC00) + 67043328) >> 10) - 10240;
                                    a2[1] = v9 & 0x3FF | 0xDC00;
                                    return 2;
                                  }

                                  *a2 = v9;
                                  return 1;
                                }

                                a2[result] = v49;
                              }

                              else
                              {
                                v51 = result + 2;
                                if (result + 2 >= a3)
                                {
                                  goto LABEL_147;
                                }

                                v52 = &a2[result];
                                *v52 = (((v49 & 0xFFFC00) + 67043328) >> 10) - 10240;
                                v52[1] = v49 & 0x3FF | 0xDC00;
                              }

                              result = v51;
                              if (--v48 <= 1)
                              {
                                goto LABEL_63;
                              }
                            }
                          }

                          if (result)
                          {
                            v42 = HIBYTE(v36) & 0x1F;
                            v43 = a2;
                            do
                            {
                              v44 = *v41++;
                              *v43++ = v44;
                              --v42;
                            }

                            while (v42);
                            return result;
                          }

                          return 0;
                        }

                        v37 = v39 + 2;
                      }

                      else
                      {
                        v38 = v39 - 2;
                      }

                      if (v37 > v38)
                      {
                        goto LABEL_63;
                      }
                    }
                  }

                  v33 = (v35 + 2);
                }

                else
                {
                  v34 = (v35 - 2);
                }
              }

              while (v33 <= v34);
            }
          }

          v36 = 0;
          goto LABEL_89;
        }
      }
    }

    v12 = v8 == 3;
    v8 = 0;
    if (!v12)
    {
      goto LABEL_63;
    }
  }

  v55 = v15;
  v19 = CFUniCharDecomposeCharacter(v9, &v59, 10);
  if (v19 < 2)
  {
LABEL_18:
    v15 = v55;
    v16 = v17;
    goto LABEL_19;
  }

  v20 = &v60[4 * v19 - 4];
  v21 = v60;
  while (*v21 != 769)
  {
    if (++v21 >= v20)
    {
      goto LABEL_18;
    }
  }

  result = CFUniCharMapCaseTo(v59, a2, a3, v8, 0, a6);
  if (!result)
  {
    *a2 = v59;
    result = 1;
  }

  do
  {
    v28 = *v11;
    if (*v11 != 769)
    {
      if (HIWORD(v28))
      {
        v29 = &a2[result];
        *v29 = ((v28 + 67043328) >> 10) - 10240;
        result += 2;
        v29[1] = v28 & 0x3FF | 0xDC00;
      }

      else
      {
        a2[result++] = v28;
      }
    }

    ++v11;
  }

  while (v11 < v20);
  return result;
}

uint64_t _CFLengthAfterDeletingPathExtension(_WORD *a1, uint64_t a2)
{
  result = _CFStartOfPathExtension(a1, a2);
  if (!result)
  {
    return a2;
  }

  return result;
}

uint64_t _CFStartOfPathExtension(_WORD *a1, uint64_t a2)
{
  if (a2 < 2)
  {
    return 0;
  }

  v3 = &a1[a2 - 1];
  while (--a2)
  {
    if (*(v3 - 1) == 47)
    {
      return 0;
    }

    v4 = *v3--;
    if (v4 == 46)
    {
      if (a2 == 2 && a1[1] == 58 && (*a1 & 0xFFDFu) - 65 < 0x1A)
      {
        return 0;
      }

      return a2;
    }
  }

  return a2;
}

BOOL _CFBundleCouldBeBundle(CFURLRef url)
{
  v5 = *MEMORY[0x1E69E9840];
  v4 = 0;
  v3 = 0;
  v1 = _CFGetFileProperties(&__kCFAllocatorSystemDefault, url, &v4, &v3, 0, 0, 0, 0);
  result = 0;
  if (!v1)
  {
    if (v4)
    {
      return (v3 & 0xF000) == 0x4000 && (v3 & 0x124) != 0;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void _CFPreferencesSetBackupDisabled(__CFString *a1, const __CFString *a2, const void *a3, __CFString *a4, int a5)
{
  if (_CFPrefsCurrentProcessIsCFPrefsD())
  {
    v10 = 0;
  }

  else
  {
    if (qword_1ED40BE20 != -1)
    {
      _CFPreferencesSetBackupDisabled_cold_1();
    }

    v10 = [qword_1ED40BE18 copyPrefs];
  }

  v11 = v10;
  [(_CFXPreferences *)v10 setBackupDisabled:a1 identifier:a2 user:a3 host:a4 container:?];
}

CFLocaleRef CFNumberFormatterGetLocale(CFNumberFormatterRef formatter)
{
  __CFCheckCFInfoPACSignature(formatter);
  v2 = _CFGetNonObjCTypeID(formatter);
  if (v2 != 57)
  {
    _CFAssertMismatchedTypeID(0x39uLL, v2);
  }

  return *(formatter + 3);
}

CFMutableStringRef _CFBundleCopyLocalizedStringForLocalizationAndTableURL(unint64_t *a1, void *a2, __CFString *a3, __CFString *a4, const void *a5, CFTypeRef *a6)
{
  v14[1] = *MEMORY[0x1E69E9840];
  v14[0] = a5;
  if (a5)
  {
    v11 = CFArrayCreate(0, v14, 1, &kCFTypeArrayCallBacks);
    v12 = _CFBundleCopyLocalizedStringForLocalizationTableURLAndMarkdownOption(a1, a2, a3, a4, v11, 0, a6);
    if (v11)
    {
      CFRelease(v11);
    }

    return v12;
  }

  else
  {

    return _CFBundleCopyLocalizedStringForLocalizationTableURLAndMarkdownOption(a1, a2, a3, a4, 0, 0, a6);
  }
}

CFArrayRef CFBundleCopyResourceURLsOfType(CFBundleRef bundle, CFStringRef resourceType, CFStringRef subDirName)
{
  if (bundle)
  {
    return _CFBundleCopyFindResources(bundle, 0, subDirName, 0, resourceType, subDirName, 0, 1, 0, 0);
  }

  return CFArrayCreateMutable(&__kCFAllocatorSystemDefault, 0, &kCFTypeArrayCallBacks);
}

uint64_t __CFPropertyListKeyPassesFilterSet(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v5 = 0;
  v6 = &v5;
  v7 = 0x2000000000;
  v8 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 0x40000000;
  v4[2] = ____CFPropertyListKeyPassesFilterSet_block_invoke;
  v4[3] = &unk_1E6D82038;
  v4[4] = &v5;
  v4[5] = a1;
  CFSetApply(a2, v4);
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

void sub_18318028C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void CFErrorSetCallBackBlockForDomain(const void *a1, const void *a2)
{
  if (!_CFErrorCallBackTable)
  {
    _CFErrorInitializeCallBackTable();
  }

  os_unfair_lock_lock_with_options();
  if (a2)
  {
    CFDictionarySetValue(_CFErrorCallBackTable, a1, a2);
  }

  else
  {
    CFDictionaryRemoveValue(_CFErrorCallBackTable, a1);
  }

  os_unfair_lock_unlock(&_CFErrorLock);
}

uint64_t parseDataTag(uint64_t a1, __CFData **a2)
{
  v4 = *(a1 + 8);
  if (*(a1 + 80))
  {
    Typed = 0;
    v6 = *(a1 + 8);
  }

  else
  {
    Typed = CFAllocatorAllocateTyped(*(a1 + 32), 0x100uLL, 0x100004077774924uLL);
    v6 = *(a1 + 8);
  }

  if (v6 >= *(a1 + 16))
  {
    v10 = 0;
LABEL_29:
    if (*(a1 + 80))
    {
      result = checkForCloseTag(a1, "data", 4uLL);
      if (!result)
      {
        return result;
      }

      Mutable = 0;
      goto LABEL_35;
    }

    v19 = *(a1 + 32);
    if (*(a1 + 40) == 2)
    {
      Mutable = CFDataCreateMutable(v19, 0);
      CFDataAppendBytes(Mutable, Typed, v10);
      CFAllocatorDeallocate(*(a1 + 32), Typed);
      if (Mutable)
      {
        goto LABEL_34;
      }
    }

    else
    {
      Mutable = CFDataCreateWithBytesNoCopy(v19, Typed, v10, *(a1 + 32));
      if (Mutable)
      {
LABEL_34:
        if (!checkForCloseTag(a1, "data", 4uLL))
        {
          CFRelease(Mutable);
          return 0;
        }

LABEL_35:
        *a2 = Mutable;
        return 1;
      }
    }

    *(a1 + 8) = v4;
    v20 = lineNumber(a1);
    Error = __CFPropertyListCreateError(3840, @"Could not interpret <data> at line %u (should be base64-encoded)", v20);
    result = 0;
    *(a1 + 24) = Error;
    return result;
  }

  v7 = 0;
  v8 = 0;
  v9 = 0;
  LODWORD(v10) = 0;
  v11 = 256;
  v12 = MEMORY[0x1E69E9830];
  while (1)
  {
    v13 = *v6;
    if (v13 != 61)
    {
      break;
    }

    ++v9;
LABEL_11:
    v14 = parseDataTag_dataDecodeTable[v13];
    if ((v14 & 0x80000000) == 0)
    {
      ++v7;
      v8 = v14 + (v8 << 6);
      if (!*(a1 + 80) && (v7 & 3) == 0)
      {
        v15 = v10 + 2;
        if (v11 <= v15)
        {
          if (v11 >= 0x40000)
          {
            if (HIBYTE(v11))
            {
              v11 += 0x40000;
            }

            else
            {
              v11 *= 2;
            }
          }

          else
          {
            v11 *= 4;
          }

          Typed = __CFSafelyReallocateWithAllocatorTyped(*(a1 + 32), Typed, v11, 242956814, 0);
          v12 = MEMORY[0x1E69E9830];
        }

        Typed[v10] = BYTE2(v8);
        if (v9 > 1)
        {
          LODWORD(v10) = v10 + 1;
        }

        else
        {
          Typed[v10 + 1] = BYTE1(v8);
          if (v9 == 1)
          {
            LODWORD(v10) = v10 + 2;
          }

          else
          {
            LODWORD(v10) = v10 + 3;
            Typed[v15] = v8;
          }
        }
      }
    }

    v16 = *(a1 + 16);
    v6 = (*(a1 + 8) + 1);
    *(a1 + 8) = v6;
    if (v6 >= v16)
    {
LABEL_27:
      v10 = v10;
      goto LABEL_29;
    }
  }

  if (v13 == 60)
  {
    goto LABEL_27;
  }

  if ((v13 & 0x80) == 0)
  {
    v9 &= (*(v12 + 4 * v13 + 60) << 17) >> 31;
    goto LABEL_11;
  }

  __maskrune(*v6, 0x4000uLL);
  v22 = lineNumber(a1);
  *(a1 + 24) = __CFPropertyListCreateError(3840, @"Could not interpret <data> on line %u (invalid character 0x%hhX)", v22, v13);
  if (Typed)
  {
    CFAllocatorDeallocate(*(a1 + 32), Typed);
  }

  return 0;
}

CFRunLoopTimerRef CFRunLoopTimerCreateWithHandler(CFAllocatorRef allocator, CFAbsoluteTime fireDate, CFTimeInterval interval, CFOptionFlags flags, CFIndex order, void *block)
{
  v8 = *MEMORY[0x1E69E9840];
  v7.version = 0;
  v7.info = block;
  v7.retain = MEMORY[0x1E69E97F0];
  v7.release = MEMORY[0x1E69E97F8];
  v7.copyDescription = 0;
  return CFRunLoopTimerCreate(allocator, fireDate, interval, flags, order, _runLoopTimerWithBlockContext, &v7);
}

void CFRunLoopRun(void)
{
  do
  {
    Current = CFRunLoopGetCurrent();
    v1 = _CFRunLoopRunSpecificWithOptions(Current, @"kCFRunLoopDefaultMode", 0, 1.0e10);
    if ((__CF_FORK_STATE & 2) == 0)
    {
      __CF_USED();
    }

    if (__CF_FORK_STATE)
    {
      __THE_PROCESS_HAS_FORKED_AND_YOU_CANNOT_USE_THIS_COREFOUNDATION_FUNCTIONALITY___YOU_MUST_EXEC__();
    }
  }

  while ((v1 - 3) < 0xFFFFFFFE);
}

CFArrayRef CFLocaleCopyPreferredLanguages(void)
{
  v0 = [NSLocale _preferredLanguagesForCurrentUser:0];

  return v0;
}

CFStringRef CFURLCreateStringByAddingPercentEscapes(CFAllocatorRef allocator, CFStringRef originalString, CFStringRef charactersToLeaveUnescaped, CFStringRef legalURLCharactersToBeEscaped, CFStringEncoding encoding)
{
  v62 = *MEMORY[0x1E69E9840];
  if (!originalString)
  {
    return 0;
  }

  v5 = *&encoding;
  Length = CFStringGetLength(originalString);
  if (!Length)
  {

    return CFStringCreateCopy(allocator, originalString);
  }

  v10 = Length;
  theString = originalString;
  v58 = 0;
  v59 = Length;
  CharactersPtr = CFStringGetCharactersPtr(originalString);
  CStringPtr = 0;
  v56 = CharactersPtr;
  if (!CharactersPtr)
  {
    CStringPtr = CFStringGetCStringPtr(originalString, 0x600u);
  }

  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  *buffer = 0u;
  v48 = 0u;
  v61 = 0;
  v57 = CStringPtr;
  v60 = 0;
  if (v10 < 1)
  {
LABEL_85:
    v40 = CFGetAllocator(originalString);
    return CFStringCreateCopy(v40, originalString);
  }

  MutableCopy = 0;
  v14 = 0;
  v15 = 0;
  do
  {
    if (v56)
    {
      v16 = v56[v58 + v14];
    }

    else if (v57)
    {
      v16 = v57[v58 + v14];
    }

    else
    {
      v17 = v60;
      if (v61 <= v14 || v60 > v14)
      {
        v19 = v14 - 4;
        if (v14 < 4)
        {
          v19 = 0;
        }

        v20 = v19 + 64;
        if (v19 + 64 >= v59)
        {
          v20 = v59;
        }

        v60 = v19;
        v61 = v20;
        v64.length = v20 - v19;
        v64.location = v58 + v19;
        CFStringGetCharacters(theString, v64, buffer);
        v17 = v60;
      }

      v16 = buffer[v14 - v17];
    }

    v43 = v16;
    if (v16 <= 0x7Fu && (sURLValidCharacters[v16] & 1) != 0)
    {
      if (!legalURLCharactersToBeEscaped || !_stringContainsCharacter(legalURLCharactersToBeEscaped, v16))
      {
LABEL_38:
        if (MutableCopy)
        {
          chars[v15] = v43;
          if (v15 == 1023)
          {
            CFStringAppendCharacters(MutableCopy, chars, 1024);
            v15 = 0;
          }

          else
          {
            ++v15;
          }
        }

        goto LABEL_74;
      }
    }

    else if (charactersToLeaveUnescaped && _stringContainsCharacter(charactersToLeaveUnescaped, v16))
    {
      goto LABEL_38;
    }

    v42 = 0;
    if (!MutableCopy)
    {
      v21 = CFGetAllocator(originalString);
      MutableCopy = CFStringCreateMutableCopy(v21, 0, originalString);
      v65.length = v10 - v14;
      v65.location = v14;
      CFStringDelete(MutableCopy, v65);
    }

    if (v15 >= 1000)
    {
      CFStringAppendCharacters(MutableCopy, chars, v15);
      v15 = 0;
    }

    if (!CFStringEncodingUnicodeToBytes(v5, 0, &v43, 1, 0, v45, 8, &v42))
    {
      if (v42 >= 1)
      {
        v24 = (v45 + v42);
        v25 = &chars[v15 + 2];
        v26 = v45;
        do
        {
          v27 = *v26;
          v26 = (v26 + 1);
          *(v25 - 2) = 37;
          *(v25 - 1) = CreateStringFromFileSystemRepresentationByAddingPercentEscapes_hexchars[v27 >> 4];
          v15 += 3;
          *v25 = CreateStringFromFileSystemRepresentationByAddingPercentEscapes_hexchars[v27 & 0xF];
          v25 += 3;
        }

        while (v26 < v24);
      }

      v22 = v14;
      goto LABEL_73;
    }

    if (v5 != 134217984)
    {
      break;
    }

    if ((v43 & 0xFC00) != 0xD800)
    {
      break;
    }

    v22 = v14 + 1;
    if (v14 + 1 >= v10)
    {
      break;
    }

    if (v56)
    {
      v23 = v56[v58 + v22];
    }

    else if (v57)
    {
      v23 = v57[v58 + v22];
    }

    else
    {
      if (v61 <= v22 || (v28 = v60, v60 > v22))
      {
        v29 = v14 - 3;
        if (v14 < 3)
        {
          v29 = 0;
        }

        v30 = v29 + 64;
        if (v29 + 64 >= v59)
        {
          v30 = v59;
        }

        v60 = v29;
        v61 = v30;
        v66.length = v30 - v29;
        v66.location = v58 + v29;
        CFStringGetCharacters(theString, v66, buffer);
        v28 = v60;
      }

      v23 = buffer[v22 - v28];
    }

    if (v23 >> 10 != 55)
    {
      break;
    }

    v44[0] = v43;
    if (v56)
    {
      v31 = v56[v58 + v22];
    }

    else if (v57)
    {
      v31 = v57[v58 + v22];
    }

    else
    {
      if (v61 <= v22 || (v32 = v60, v60 > v22))
      {
        v33 = v14 - 3;
        if (v14 < 3)
        {
          v33 = 0;
        }

        v34 = v33 + 64;
        if (v33 + 64 >= v59)
        {
          v34 = v59;
        }

        v60 = v33;
        v61 = v34;
        v67.length = v34 - v33;
        v67.location = v58 + v33;
        CFStringGetCharacters(theString, v67, buffer);
        v32 = v60;
      }

      v31 = buffer[v22 - v32];
    }

    v44[1] = v31;
    if (CFStringEncodingUnicodeToBytes(134217984, 0, v44, 2, 0, v45, 6, &v42))
    {
      break;
    }

    if (v42 >= 1)
    {
      v35 = (v45 + v42);
      v36 = &chars[v15 + 2];
      v37 = v45;
      do
      {
        v38 = *v37;
        v37 = (v37 + 1);
        *(v36 - 2) = 37;
        *(v36 - 1) = CreateStringFromFileSystemRepresentationByAddingPercentEscapes_hexchars[v38 >> 4];
        v15 += 3;
        *v36 = CreateStringFromFileSystemRepresentationByAddingPercentEscapes_hexchars[v38 & 0xF];
        v36 += 3;
      }

      while (v37 < v35);
    }

LABEL_73:
    v14 = v22;
LABEL_74:
    ++v14;
  }

  while (v14 < v10);
  if (v14 >= v10)
  {
    if (MutableCopy)
    {
      if (v15)
      {
        CFStringAppendCharacters(MutableCopy, chars, v15);
      }

      return MutableCopy;
    }

    goto LABEL_85;
  }

  if (MutableCopy)
  {
    CFRelease(MutableCopy);
    return 0;
  }

  return MutableCopy;
}

CFRange CFURLGetByteRangeForComponent(CFURLRef url, CFURLComponentType component, CFRange *rangeIncludingSeparators)
{
  v49 = *MEMORY[0x1E69E9840];
  if (_foundation_swift_nsurl_feature_enabled_onceToken != -1)
  {
    CFURLGetByteRangeForComponent_cold_1();
  }

  if (_foundation_swift_nsurl_feature_enabled_featureEnabled == 1)
  {
    if ((_foundation_swift_nsurl_feature_enabled_featureEnabled & 1) != 0 || CF_IS_OBJC(0x1DuLL, url))
    {
      url = [(__CFURL *)url _cfurl];
    }

    v48[0] = 0;
    v48[1] = 0;
    v6 = [(__CFURL *)url _rangeForComponent:component rangeIncludingSeparators:v48];
    if (rangeIncludingSeparators)
    {
      *rangeIncludingSeparators = *v48;
    }

    goto LABEL_109;
  }

  v48[0] = 0;
  v48[1] = 0;
  if ((_foundation_swift_nsurl_feature_enabled_featureEnabled & 1) != 0 || CF_IS_OBJC(0x1DuLL, url))
  {
    url = [(__CFURL *)url _cfurl];
  }

  v8 = *(url + 4);
  if ((v8 & 0x4000) == 0)
  {
    if (component == kCFURLComponentResourceSpecifier)
    {
      if (v8)
      {
        v20 = *(url + 8);
      }

      else
      {
        v20 = 0;
      }

      v22 = atomic_load(url + 3);
      Length = CFStringGetLength(v22);
      if (v20 + 1 == Length)
      {
        v13 = Length;
      }

      else
      {
        v13 = v20;
      }

      if (v20 + 1 == Length)
      {
        v21 = 0;
      }

      else
      {
        v21 = Length - v20;
      }

      if (v20 + 1 == Length)
      {
        v10 = -1;
      }

      else
      {
        v10 = v20 + 1;
      }

      if (v20 + 1 == Length)
      {
        v9 = 0;
      }

      else
      {
        v9 = Length - v20 - 1;
      }

      goto LABEL_72;
    }

    if (component == kCFURLComponentScheme)
    {
      if (v8)
      {
        v10 = *(url + 7);
        v9 = *(url + 8);
      }

      else
      {
        v9 = 0;
        v10 = -1;
      }

      v13 = 0;
      v21 = v9 + 1;
      goto LABEL_72;
    }

    v21 = 0;
    v9 = 0;
    v13 = -1;
    goto LABEL_40;
  }

  v11 = component - 1;
  if ((component - 1) > 0xB || ((0xDFFu >> v11) & 1) == 0)
  {
    goto LABEL_94;
  }

  v12 = qword_183378208[v11];
  if ((v12 & v8) == 0)
  {
    if (component == kCFURLComponentScheme || component == kCFURLComponentParameterString)
    {
      goto LABEL_67;
    }

    v24 = 0;
    v25 = 1;
    do
    {
      if ((v25 & v8) != 0)
      {
        v24 = v25;
      }

      if (2 * v25 > 256)
      {
        break;
      }

      v26 = v12 & (2 * v25);
      v25 *= 2;
    }

    while (!v26);
    if (!v24)
    {
LABEL_67:
      if (!rangeIncludingSeparators)
      {
        v9 = 0;
        goto LABEL_87;
      }

      v13 = 0;
      v21 = 0;
      v9 = 0;
      v28 = 0;
      v10 = -1;
LABEL_75:
      v30 = atomic_load(url + 3);
      v51.location = 0;
      v51.length = v13;
      CFStringGetBytes(v30, v51, *(url + 5), 0, 0, 0, 0, &rangeIncludingSeparators->location);
      if (v10 == -1)
      {
        v48[0] = -1;
        v48[1] = v28;
        v36 = atomic_load(url + 3);
        v54.location = v13;
        v54.length = v21;
        CFStringGetBytes(v36, v54, *(url + 5), 0, 0, 0, 0, &rangeIncludingSeparators->length);
      }

      else
      {
        v31 = v28 + v10;
        v32 = v21 + v13;
        if (v10 == v13)
        {
          location = rangeIncludingSeparators->location;
        }

        else
        {
          v47 = 0;
          v37 = atomic_load(url + 3);
          v55.location = v13;
          v55.length = v10 - v13;
          CFStringGetBytes(v37, v55, *(url + 5), 0, 0, 0, 0, &v47);
          location = v47 + v13;
        }

        v48[0] = location;
        v38 = atomic_load(url + 3);
        v56.location = v10;
        v56.length = v9;
        CFStringGetBytes(v38, v56, *(url + 5), 0, 0, 0, 0, &v48[1]);
        if (v32 == v31)
        {
          v39 = v48[1] + v48[0];
        }

        else
        {
          v47 = 0;
          v40 = atomic_load(url + 3);
          v57.location = v31;
          v57.length = v32 - v31;
          CFStringGetBytes(v40, v57, *(url + 5), 0, 0, 0, 0, &v47);
          v39 = v48[1] + v48[0] + v47;
        }

        rangeIncludingSeparators->length = v39 - rangeIncludingSeparators->location;
      }

LABEL_88:
      v6 = v48[0];
      v7 = v48[1];
      goto LABEL_109;
    }

    if (v24 == 1)
    {
      if (v8)
      {
        v27 = *(url + 8);
      }

      else
      {
        v27 = 0;
      }

      if ((v8 & 0x20) != 0)
      {
        v44 = 0;
        v45 = 32;
        do
        {
          v46 = v45;
          v45 >>= 1;
          v44 += v8 & 1;
          LODWORD(v8) = v8 >> 1;
        }

        while ((v46 & 2) == 0);
        v43 = *(url + 2 * v44 + 7);
      }

      else
      {
        v43 = -1;
      }

      v21 = 0;
      v9 = 0;
      if (v27 + 1 == v43)
      {
        v13 = v27 + 1;
      }

      else
      {
        v13 = v27 + 3;
      }
    }

    else
    {
      if ((v8 & v24) == 0)
      {
        goto LABEL_94;
      }

      if (v24)
      {
        v41 = 0;
      }

      else
      {
        LODWORD(v41) = 0;
        do
        {
          v42 = v24;
          LODWORD(v24) = v24 >> 1;
          v41 = (v8 & 1) + v41;
          LODWORD(v8) = v8 >> 1;
        }

        while ((v42 & 2) == 0);
      }

      v21 = 0;
      v9 = 0;
      v13 = *(url + 2 * v41 + 8) + *(url + 2 * v41 + 7);
    }

LABEL_40:
    v10 = -1;
    goto LABEL_72;
  }

  v13 = 0;
  v14 = 0;
  v9 = 0;
  v15 = (url + 56);
  v10 = -1;
  v16 = 1;
  while (v14)
  {
    if ((v16 & v8) != 0)
    {
      goto LABEL_26;
    }

    v14 = 1;
LABEL_33:
    v19 = v16 >= 0x81;
    v16 *= 2;
    if (v19)
    {
      goto LABEL_70;
    }
  }

  v14 = (v16 & v12) != 0;
  if ((v16 & v8) == 0)
  {
    goto LABEL_33;
  }

  if ((v16 & v12) == 0)
  {
    v14 = 0;
    v13 = v15[1] + *v15;
LABEL_32:
    v15 += 2;
    goto LABEL_33;
  }

LABEL_26:
  if (v16 <= v12)
  {
    v17 = *v15 - v10 + v15[1];
    v18 = v10 == -1;
    v14 = 1;
    if (v10 == -1)
    {
      v10 = *v15;
    }

    if (v18)
    {
      v9 = v15[1];
    }

    else
    {
      v9 = v17;
    }

    goto LABEL_32;
  }

  v29 = *v15;
  if (*v15 != -1)
  {
    goto LABEL_71;
  }

LABEL_70:
  v29 = v9 + v10;
LABEL_71:
  v21 = v29 - v13;
LABEL_72:
  if (v13 != -1)
  {
    if (rangeIncludingSeparators)
    {
      v28 = v9;
      goto LABEL_75;
    }

    if (v10 != -1)
    {
      v34 = atomic_load(url + 3);
      v52.location = 0;
      v52.length = v10;
      CFStringGetBytes(v34, v52, *(url + 5), 0, 0, 0, 0, v48);
      v35 = atomic_load(url + 3);
      v53.location = v10;
      v53.length = v9;
      CFStringGetBytes(v35, v53, *(url + 5), 0, 0, 0, 0, &v48[1]);
      goto LABEL_88;
    }

LABEL_87:
    v48[0] = -1;
    v48[1] = v9;
    goto LABEL_88;
  }

LABEL_94:
  v7 = 0;
  if (rangeIncludingSeparators)
  {
    *rangeIncludingSeparators = xmmword_183306FB0;
  }

  v6 = -1;
LABEL_109:
  result.length = v7;
  result.location = v6;
  return result;
}