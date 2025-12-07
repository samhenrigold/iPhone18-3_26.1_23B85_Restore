uint64_t str_upper(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v10 = *MEMORY[0x1E69E9840];
  v8 = 0;
  memset(v9, 0, 512);
  v2 = luaL_checklstring(v1, 1, &v8);
  v3 = luaL_buffinitsize(v1, v9, v8);
  if (v8)
  {
    v4 = v3;
    for (i = 0; i < v8; ++i)
    {
      v4[i] = __toupper(*(v2 + i));
      v6 = v8;
    }
  }

  else
  {
    v6 = 0;
  }

  luaL_pushresultsize(v9, v6);
  return 1;
}

uint64_t str_pack(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v76 = *MEMORY[0x1E69E9840];
  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  v70 = 0u;
  v71 = 0u;
  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v39 = luaL_checklstring(v1, 1, 0);
  v40 = v1;
  v41 = 0x100000001;
  lua_pushnil(v1);
  luaL_buffinit(v1, &v44);
  if (*v39)
  {
    v2 = 0;
    v3 = 1;
    do
    {
      v38 = 0;
      v4 = getdetails(&v40, v2, &v39, &v38 + 1, &v38);
      v5 = v38;
      v6 = HIDWORD(v38);
      if (v38 >= 1)
      {
        v7 = v38 + 1;
        do
        {
          v8 = v45;
          if (v45 >= *(&v44 + 1))
          {
            luaL_prepbuffsize(&v44, 1uLL);
            v8 = v45;
          }

          *&v45 = v8 + 1;
          *(v44 + v8) = 0;
          --v7;
        }

        while (v7 > 1);
      }

      v2 += v6 + v5;
      v9 = (v3 + 1);
      if (v4 > 4)
      {
        if ((v4 - 7) >= 2)
        {
          if (v4 == 5)
          {
            *&v42[0] = 0;
            v12 = luaL_checklstring(v1, (v3 + 1), v42);
            v13 = strlen(v12);
            if (v13 != *&v42[0])
            {
              luaL_argerror(v1, v3 + 1);
              v13 = *&v42[0];
            }

            luaL_addlstring(&v44, v12, v13);
            v14 = v45;
            if (v45 >= *(&v44 + 1))
            {
              luaL_prepbuffsize(&v44, 1uLL);
              v14 = v45;
            }

            *&v45 = v14 + 1;
            *(v44 + v14) = 0;
            v2 += *&v42[0] + 1;
            goto LABEL_55;
          }

          v27 = v45;
          if (v45 >= *(&v44 + 1))
          {
            luaL_prepbuffsize(&v44, 1uLL);
            v27 = v45;
          }

          *&v45 = v27 + 1;
          *(v44 + v27) = 0;
        }

        v9 = v3;
      }

      else if (v4 <= 1)
      {
        v15 = (v3 + 1);
        if (v4)
        {
          v30 = luaL_checkinteger(v1, v15);
          v31 = v30;
          if (v6 <= 7 && v30 >> (8 * v6))
          {
            luaL_argerror(v1, v3 + 1);
          }

          v20 = v41;
          v22 = v31;
          v23 = v6;
          LODWORD(v21) = 0;
        }

        else
        {
          v16 = luaL_checkinteger(v1, v15);
          v17 = v16;
          if (v6 <= 7)
          {
            v18 = 1 << (8 * v6 - 1);
            if (v16 < -v18 || v16 >= v18)
            {
              luaL_argerror(v1, v3 + 1);
            }
          }

          v20 = v41;
          v21 = v17 >> 63;
          v22 = v17;
          v23 = v6;
        }

        packint(&v44, v22, v20, v23, v21);
      }

      else
      {
        v10 = v6;
        if (v4 == 2)
        {
          v43 = 0;
          memset(v42, 0, sizeof(v42));
          v24 = luaL_prepbuffsize(&v44, v6);
          v25 = luaL_checknumber(v1, v9);
          if (v6 == 4)
          {
            v26 = v25;
            *v42 = v26;
          }

          else
          {
            *v42 = v25;
          }

          if (v41 == 1)
          {
            if (v6)
            {
              v32 = v42;
              do
              {
                v33 = *v32++;
                *v24++ = v33;
                --v6;
              }

              while (v6);
            }
          }

          else if (v6)
          {
            v34 = &v24[v6 - 1];
            v35 = v42;
            do
            {
              v36 = *v35++;
              *v34-- = v36;
              --v6;
            }

            while (v6);
          }

          *&v45 = v45 + v10;
        }

        else if (v4 == 3)
        {
          *&v42[0] = 0;
          v11 = luaL_checklstring(v1, v9, v42);
          if (*&v42[0] != v6)
          {
            luaL_argerror(v1, v9);
          }

          luaL_addlstring(&v44, v11, v6);
        }

        else
        {
          *&v42[0] = 0;
          v28 = luaL_checklstring(v1, v9, v42);
          v29 = *&v42[0];
          if (v6 <= 7 && *&v42[0] >> (8 * v6))
          {
            luaL_argerror(v1, v9);
            v29 = *&v42[0];
          }

          packint(&v44, v29, v41, v6, 0);
          luaL_addlstring(&v44, v28, *&v42[0]);
          v2 += *&v42[0];
        }
      }

LABEL_55:
      v3 = v9;
    }

    while (*v39);
  }

  luaL_pushresult(&v44);
  return 1;
}

uint64_t str_packsize(void *a1)
{
  v7 = luaL_checklstring(a1, 1, 0);
  v8[0] = a1;
  v8[1] = 0x100000001;
  if (*v7)
  {
    v2 = 0;
    do
    {
      v6 = 0;
      v3 = getdetails(v8, v2, &v7, &v6 + 1, &v6);
      v4 = SHIDWORD(v6) + v6;
      if (v2 > 0x7FFFFFFF - v4)
      {
        luaL_argerror(a1, 1);
      }

      if ((v3 & 0xE) == 4)
      {
        luaL_argerror(a1, 1);
      }

      v2 += v4;
    }

    while (*v7);
  }

  else
  {
    v2 = 0;
  }

  lua_pushinteger(a1, v2);
  return 1;
}

uint64_t str_unpack(void *a1)
{
  v37 = *MEMORY[0x1E69E9840];
  v2 = luaL_checklstring(a1, 1, 0);
  v31 = 0;
  v32 = v2;
  v3 = luaL_checklstring(a1, 2, &v31);
  v4 = luaL_optinteger(a1, 3, 1);
  if (v31 >= -v4)
  {
    v5 = v4 + v31 + 1;
  }

  else
  {
    v5 = 0;
  }

  if (v4 < 0)
  {
    v6 = v5;
  }

  else
  {
    v6 = v4;
  }

  v7 = v6 - 1;
  if (v6 - 1 > v31)
  {
    luaL_argerror(a1, 3);
  }

  v33 = a1;
  v34 = 0x100000001;
  if (!*v2)
  {
    v28 = 1;
    goto LABEL_42;
  }

  v8 = 0;
  do
  {
    v30 = 0;
    v9 = getdetails(&v33, v7, &v32, &v30 + 1, &v30);
    v10 = HIDWORD(v30);
    v11 = SHIDWORD(v30);
    v12 = v7 + v30;
    if (__CFADD__(v7, v30 + SHIDWORD(v30)) || v12 + SHIDWORD(v30) > v31)
    {
      luaL_argerror(a1, 2);
    }

    luaL_checkstack(a1, 2, "too many results");
    if (v9 > 3)
    {
      if ((v9 - 6) < 3)
      {
        goto LABEL_39;
      }

      if (v9 != 4)
      {
        v23 = strlen((v3 + v12));
        lua_pushlstring(a1, (v3 + v12), v23);
        v12 += v23 + 1;
        goto LABEL_38;
      }

      v14 = v3 + v12;
      v15 = unpackint(a1, v3 + v12, v34, v10, 0);
      v12 += v15;
      if (v12 + v11 > v31)
      {
        luaL_argerror(a1, 2);
      }

      v16 = (v14 + v11);
      v17 = a1;
      v18 = v15;
      goto LABEL_29;
    }

    if (v9 >= 2)
    {
      if (v9 != 2)
      {
        v16 = (v3 + v12);
        v17 = a1;
        v18 = v11;
LABEL_29:
        lua_pushlstring(v17, v16, v18);
        goto LABEL_38;
      }

      v36 = 0;
      memset(v35, 0, sizeof(v35));
      v19 = (v3 + v12);
      if (v34 == 1)
      {
        if (!v10)
        {
          goto LABEL_36;
        }

        v20 = v35;
        v21 = v10;
        do
        {
          v22 = *v19++;
          *v20++ = v22;
          --v21;
        }

        while (v21);
      }

      else
      {
        if (!v10)
        {
          goto LABEL_36;
        }

        v24 = &v34 + v11 + 7;
        v25 = v10;
        do
        {
          v26 = *v19++;
          *v24-- = v26;
          --v25;
        }

        while (v25);
      }

      if (v10 == 4)
      {
        v27 = *v35;
LABEL_37:
        lua_pushnumber(a1, v27);
        goto LABEL_38;
      }

LABEL_36:
      v27 = *v35;
      goto LABEL_37;
    }

    v13 = unpackint(a1, v3 + v12, v34, v10, v9 == 0);
    lua_pushinteger(a1, v13);
LABEL_38:
    ++v8;
LABEL_39:
    v7 = v12 + v11;
  }

  while (*v32);
  v6 = v7 + 1;
  v28 = (v8 + 1);
LABEL_42:
  lua_pushinteger(a1, v6);
  return v28;
}

uint64_t str_find_aux(void *a1, int a2)
{
  v61 = 0;
  v62 = 0;
  v4 = luaL_checklstring(a1, 1, &v62);
  v5 = luaL_checklstring(a1, 2, &v61);
  v6 = luaL_optinteger(a1, 3, 1);
  v7 = v6;
  if (v6 < 0)
  {
    if (v62 < -v6)
    {
      goto LABEL_19;
    }

    v7 = v62 + v6 + 1;
  }

  if (v7 < 1)
  {
LABEL_19:
    v7 = 1;
    if (a2)
    {
      goto LABEL_7;
    }

    goto LABEL_20;
  }

  if (v7 > (v62 + 1))
  {
    goto LABEL_28;
  }

  if (a2)
  {
LABEL_7:
    v8 = lua_toBOOLean(a1, 4u);
    v9 = v61;
    if (!v8)
    {
      v10 = 0;
      while (!strpbrk(&v5[v10], "^$*+?.([%-"))
      {
        v10 += strlen(&v5[v10]) + 1;
        if (v10 > v9)
        {
          goto LABEL_11;
        }
      }

      goto LABEL_21;
    }

LABEL_11:
    v11 = (v4 + v7 - 1);
    if (!v9)
    {
LABEL_33:
      v28 = &v11[-v4];
      lua_pushinteger(a1, (v28 + 1));
      lua_pushinteger(a1, &v28[v61]);
      return 2;
    }

    v12 = v62 - v7 + 1;
    if (v9 <= v12)
    {
      v13 = v9 - 1;
      v14 = v12 - (v9 - 1);
      if (v12 != v9 - 1)
      {
        v17 = *v5;
        v15 = v5 + 1;
        v16 = v17;
        do
        {
          v18 = memchr(v11, v16, v14);
          if (!v18)
          {
            break;
          }

          v19 = v18;
          v20 = v18 + 1;
          if (!memcmp(v18 + 1, v15, v13))
          {
            v11 = v19;
            goto LABEL_33;
          }

          v21 = &v11[v14];
          v11 = v20;
          v14 = v21 - v20;
        }

        while (v21 != v20);
      }
    }

LABEL_28:
    lua_pushnil(a1);
    return 1;
  }

LABEL_20:
  v9 = v61;
LABEL_21:
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
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v22 = (v4 + v7 - 1);
  v23 = *v5;
  if (v23 == 94)
  {
    ++v5;
    v61 = --v9;
  }

  LODWORD(v29) = 200;
  *(&v29 + 1) = v4;
  *&v30 = v4 + v62;
  *(&v30 + 1) = &v5[v9];
  *&v31 = a1;
  while (1)
  {
    DWORD2(v31) = 0;
    matched = match_0(&v29, v22, v5);
    if (matched)
    {
      break;
    }

    if (v23 != 94)
    {
      ++v7;
      if (v22++ < v30)
      {
        continue;
      }
    }

    goto LABEL_28;
  }

  v27 = matched;
  if (!a2)
  {
    return push_captures(&v29, v22, matched);
  }

  lua_pushinteger(a1, v7);
  lua_pushinteger(a1, &v27[-v4]);
  return push_captures(&v29, 0, 0) + 2;
}

uint64_t push_captures(uint64_t a1, char *a2, uint64_t a3)
{
  v6 = *(a1 + 40);
  if (v6)
  {
    v7 = 1;
  }

  else
  {
    v7 = a2 == 0;
  }

  if (v7)
  {
    v8 = v6;
  }

  else
  {
    v8 = 1;
  }

  luaL_checkstack(*(a1 + 32), v8, "too many captures");
  if (v8 >= 1)
  {
    v9 = 0;
    do
    {
      push_onecapture(a1, v9++, a2, a3);
    }

    while (v8 != v9);
  }

  return v8;
}

uint64_t start_capture(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, int a4)
{
  v8 = *(a1 + 40);
  if (v8 >= 32)
  {
    luaL_error(*(a1 + 32), "too many captures");
  }

  v9 = a1 + 16 * v8;
  *(v9 + 48) = a2;
  *(v9 + 56) = a4;
  *(a1 + 40) = v8 + 1;
  result = match_0(a1, a2, a3);
  if (!result)
  {
    --*(a1 + 40);
  }

  return result;
}

unsigned __int8 *classend(uint64_t a1, unsigned __int8 *a2)
{
  result = a2 + 1;
  v5 = *a2;
  if (v5 == 91)
  {
    if (a2[1] == 94)
    {
      v6 = a2 + 2;
    }

    else
    {
      v6 = a2 + 1;
    }

    do
    {
      if (v6 == *(a1 + 24))
      {
        luaL_error(*(a1 + 32), "malformed pattern (missing ']')");
      }

      v7 = v6 + 1;
      if (*v6 == 37 && v7 < *(a1 + 24))
      {
        v7 = v6 + 2;
      }

      v6 = v7;
    }

    while (*v7 != 93);
    return v7 + 1;
  }

  else if (v5 == 37)
  {
    if (result == *(a1 + 24))
    {
      luaL_error(*(a1 + 32), "malformed pattern (ends with '%%')");
    }

    return a2 + 2;
  }

  return result;
}

BOOL matchbracketclass(unsigned int a1, unsigned __int8 *a2, unint64_t a3)
{
  v3 = a2 + 1;
  v4 = a2[1];
  v5 = v4 == 94;
  v6 = v4 != 94;
  if (v4 != 94)
  {
    v3 = a2;
  }

  for (i = v3 + 1; (v3 + 1) < a3; i = v3 + 1)
  {
    v11 = v3 + 2;
    v10 = v3[2];
    v12 = v3[1];
    if (v12 == 37)
    {
      matched = match_class(a1, v10);
      v3 = v11;
      if (matched)
      {
        return v6;
      }
    }

    else
    {
      v3 += 3;
      if (v10 != 45 || v3 >= a3)
      {
        v3 = i;
        if (v12 == a1)
        {
          return v6;
        }
      }

      else if (v12 <= a1 && *v3 >= a1)
      {
        return v6;
      }
    }
  }

  return v5;
}

uint64_t singlematch(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, uint64_t a4)
{
  if (*(a1 + 16) <= a2)
  {
    return 0;
  }

  v4 = *a2;
  v5 = *a3;
  switch(v5)
  {
    case '[':
      return matchbracketclass(v4, a3, a4 - 1);
    case '.':
      return 1;
    case '%':
      return match_class(v4, a3[1]);
  }

  return v5 == v4;
}

uint64_t match_class(unsigned int a1, unsigned int a2)
{
  v4 = __tolower(a2);
  if (v4 <= 111)
  {
    if (v4 <= 99)
    {
      if (v4 == 97)
      {
        if (a1 <= 0x7F)
        {
          v5 = *(MEMORY[0x1E69E9830] + 4 * a1 + 60) & 0x100;
          goto LABEL_46;
        }

        v8 = a1;
        v9 = 256;
        goto LABEL_45;
      }

      if (v4 == 99)
      {
        if (a1 <= 0x7F)
        {
          v5 = *(MEMORY[0x1E69E9830] + 4 * a1 + 60) & 0x200;
          goto LABEL_46;
        }

        v8 = a1;
        v9 = 512;
        goto LABEL_45;
      }

      return a2 == a1;
    }

    if (v4 != 100)
    {
      if (v4 == 103)
      {
        if (a1 <= 0x7F)
        {
          v5 = *(MEMORY[0x1E69E9830] + 4 * a1 + 60) & 0x800;
          goto LABEL_46;
        }

        v8 = a1;
        v9 = 2048;
        goto LABEL_45;
      }

      if (v4 == 108)
      {
        if (a1 <= 0x7F)
        {
          v5 = *(MEMORY[0x1E69E9830] + 4 * a1 + 60) & 0x1000;
          goto LABEL_46;
        }

        v8 = a1;
        v9 = 4096;
LABEL_45:
        v5 = __maskrune(v8, v9);
        goto LABEL_46;
      }

      return a2 == a1;
    }

    v6 = a1 - 48 < 0xA;
  }

  else
  {
    if (v4 <= 118)
    {
      switch(v4)
      {
        case 'p':
          if (a1 <= 0x7F)
          {
            v5 = *(MEMORY[0x1E69E9830] + 4 * a1 + 60) & 0x2000;
            goto LABEL_46;
          }

          v8 = a1;
          v9 = 0x2000;
          goto LABEL_45;
        case 's':
          if (a1 <= 0x7F)
          {
            v5 = *(MEMORY[0x1E69E9830] + 4 * a1 + 60) & 0x4000;
            goto LABEL_46;
          }

          v8 = a1;
          v9 = 0x4000;
          goto LABEL_45;
        case 'u':
          if (a1 <= 0x7F)
          {
            v5 = *(MEMORY[0x1E69E9830] + 4 * a1 + 60) & 0x8000;
LABEL_46:
            v6 = v5 != 0;
            goto LABEL_47;
          }

          v8 = a1;
          v9 = 0x8000;
          goto LABEL_45;
      }

      return a2 == a1;
    }

    switch(v4)
    {
      case 'w':
        if (a1 <= 0x7F)
        {
          v5 = *(MEMORY[0x1E69E9830] + 4 * a1 + 60) & 0x500;
          goto LABEL_46;
        }

        v8 = a1;
        v9 = 1280;
        goto LABEL_45;
      case 'x':
        if (a1 <= 0xFF)
        {
          v6 = HIWORD(*(MEMORY[0x1E69E9830] + 4 * a1 + 60)) & 1;
        }

        else
        {
          v6 = 0;
        }

        break;
      case 'z':
        v6 = a1 == 0;
        break;
      default:
        return a2 == a1;
    }
  }

LABEL_47:
  if (a2 > 0x7F)
  {
    v10 = __maskrune(a2, 0x1000uLL);
  }

  else
  {
    v10 = *(MEMORY[0x1E69E9830] + 4 * a2 + 60) & 0x1000;
  }

  return v6 ^ (v10 == 0);
}

uint64_t push_onecapture(uint64_t a1, int a2, char *a3, uint64_t a4)
{
  if (*(a1 + 40) <= a2)
  {
    v7 = *(a1 + 32);
    if (a2)
    {
      return luaL_error(v7, "invalid capture index %%%d", a2 + 1);
    }

    v8 = a3;
    v9 = a4 - a3;
    goto LABEL_9;
  }

  v5 = a1 + 16 * a2;
  v6 = *(v5 + 56);
  if (v6 != -2)
  {
    if (v6 == -1)
    {
      luaL_error(*(a1 + 32), "unfinished capture", a3, a4);
    }

    v7 = *(a1 + 32);
    v8 = *(v5 + 48);
    v9 = v6;
LABEL_9:

    return lua_pushlstring(v7, v8, v9);
  }

  v11 = *(a1 + 32);
  v12 = *(v5 + 48) - *(a1 + 8) + 1;

  return lua_pushinteger(v11, v12);
}

uint64_t gmatch_aux(void *a1)
{
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v11 = 0;
  v12 = 0;
  v2 = lua_tolstring(a1, 0xFFF0B9D7, &v12);
  v3 = lua_tolstring(a1, 0xFFF0B9D6, &v11);
  LODWORD(v13) = 200;
  v4 = v12;
  *(&v13 + 1) = v2;
  *&v14 = v2 + v12;
  *(&v14 + 1) = &v3[v11];
  *&v15 = a1;
  v5 = lua_tointegerx(a1, 0xFFF0B9D5, 0);
  if (v5 > v4)
  {
    return 0;
  }

  v6 = (v2 + v5);
  while (1)
  {
    DWORD2(v15) = 0;
    matched = match_0(&v13, v6, v3);
    if (matched)
    {
      break;
    }

    if (++v6 > v14)
    {
      return 0;
    }
  }

  v9 = matched;
  if (v6 == matched)
  {
    v10 = &matched[-v2 + 1];
  }

  else
  {
    v10 = &matched[-v2];
  }

  lua_pushinteger(a1, v10);
  lua_copy(a1, 0xFFFFFFFF, -1001003);
  lua_settop(a1, -2);
  return push_captures(&v13, v6, v9);
}

uint64_t getdetails(void **a1, int a2, unsigned __int8 **a3, int *a4, int *a5)
{
  v10 = getoption(a1, a3, a4);
  v11 = *a4;
  v16 = v11;
  if (v10 == 7)
  {
    if (!**a3 || (v12 = getoption(a1, a3, &v16), v11 = v16, v12 == 3) || !v16)
    {
      luaL_argerror(*a1, 1);
    }
  }

  v13 = 0;
  if (v10 != 3 && v11 >= 2)
  {
    if (v11 >= *(a1 + 3))
    {
      v14 = *(a1 + 3);
    }

    else
    {
      v14 = v11;
    }

    if ((v14 & (v14 - 1)) != 0)
    {
      luaL_argerror(*a1, 1);
    }

    v13 = (v14 - ((v14 - 1) & a2)) & (v14 - 1);
  }

  *a5 = v13;
  return v10;
}

char *packint(uint64_t a1, unint64_t a2, int a3, int a4, int a5)
{
  v10 = a4;
  result = luaL_prepbuffsize(a1, a4);
  v12 = a4 - 1;
  if (a3)
  {
    v12 = 0;
  }

  result[v12] = a2;
  v13 = a4 - 2;
  if (a4 >= 2)
  {
    v14 = 1;
    do
    {
      a2 >>= 8;
      if (a3)
      {
        v15 = v14;
      }

      else
      {
        v15 = v13;
      }

      result[v15] = a2;
      ++v14;
      --v13;
    }

    while (v13 != -1);
    if (a4 >= 9 && a5)
    {
      v16 = vdupq_n_s32(a4 - 9);
      v17 = a4 - 24;
      v18 = 23;
      do
      {
        v19 = vdupq_n_s32(v18 - 23);
        v20 = vmovn_s32(vcgeq_u32(v16, vorrq_s8(v19, xmmword_1C37B17D0)));
        if (vuzp1_s8(v20, *v16.i8).u8[0])
        {
          v21 = v18 - 15;
          if (!a3)
          {
            v21 = v17 + 15;
          }

          result[v21] = -1;
        }

        if (vuzp1_s8(v20, *&v16).i8[1])
        {
          v22 = v18 - 14;
          if (!a3)
          {
            v22 = v17 + 14;
          }

          result[v22] = -1;
        }

        if (vuzp1_s8(v20, *&v16).i8[2])
        {
          v23 = v18 - 13;
          if (!a3)
          {
            v23 = v17 + 13;
          }

          result[v23] = -1;
        }

        if (vuzp1_s8(v20, *&v16).i8[3])
        {
          v24 = v18 - 12;
          if (!a3)
          {
            v24 = v17 + 12;
          }

          result[v24] = -1;
        }

        v25 = vmovn_s32(vcgeq_u32(v16, vorrq_s8(v19, xmmword_1C37B17C0)));
        if (vuzp1_s8(*&v16, v25).i32[1])
        {
          v26 = v18 - 11;
          if (!a3)
          {
            v26 = v17 + 11;
          }

          result[v26] = -1;
        }

        if (vuzp1_s8(*&v16, v25).i8[5])
        {
          v27 = v18 - 10;
          if (!a3)
          {
            v27 = v17 + 10;
          }

          result[v27] = -1;
        }

        if (vuzp1_s8(*&v16, v25).i8[6])
        {
          v28 = v18 - 9;
          if (!a3)
          {
            v28 = v17 + 9;
          }

          result[v28] = -1;
        }

        if (vuzp1_s8(*&v16, v25).i8[7])
        {
          v29 = v18 - 8;
          if (!a3)
          {
            v29 = v17 + 8;
          }

          result[v29] = -1;
        }

        v30 = vmovn_s32(vcgeq_u32(v16, vorrq_s8(v19, xmmword_1C37B17B0)));
        if (vuzp1_s8(v30, *v16.i8).u8[0])
        {
          v31 = v18 - 7;
          if (!a3)
          {
            v31 = v17 + 7;
          }

          result[v31] = -1;
        }

        if (vuzp1_s8(v30, *&v16).i8[1])
        {
          v32 = v18 - 6;
          if (!a3)
          {
            v32 = v17 + 6;
          }

          result[v32] = -1;
        }

        if (vuzp1_s8(v30, *&v16).i8[2])
        {
          v33 = v18 - 5;
          if (!a3)
          {
            v33 = v17 + 5;
          }

          result[v33] = -1;
        }

        if (vuzp1_s8(v30, *&v16).i8[3])
        {
          v34 = v18 - 4;
          if (!a3)
          {
            v34 = v17 + 4;
          }

          result[v34] = -1;
        }

        v35 = vmovn_s32(vcgeq_u32(v16, vorrq_s8(v19, xmmword_1C37B17A0)));
        if (vuzp1_s8(*&v16, v35).i32[1])
        {
          v36 = v18 - 3;
          if (!a3)
          {
            v36 = v17 + 3;
          }

          result[v36] = -1;
        }

        if (vuzp1_s8(*&v16, v35).i8[5])
        {
          v37 = v18 - 2;
          if (!a3)
          {
            v37 = v17 + 2;
          }

          result[v37] = -1;
        }

        if (vuzp1_s8(*&v16, v35).i8[6])
        {
          v38 = v18 - 1;
          if (!a3)
          {
            v38 = v17 + 1;
          }

          result[v38] = -1;
        }

        if (vuzp1_s8(*&v16, v35).i8[7])
        {
          if (a3)
          {
            v39 = v18;
          }

          else
          {
            v39 = v17;
          }

          result[v39] = -1;
        }

        v17 -= 16;
        v18 += 16;
      }

      while (v18 - ((a4 + 7) & 0xFFFFFFF0) != 23);
    }
  }

  *(a1 + 16) += v10;
  return result;
}

uint64_t getoption(void **a1, unsigned __int8 **a2, int *a3)
{
  v4 = *a2;
  v5 = *a2 + 1;
  *a2 = v5;
  v6 = *v4;
  *a3 = 0;
  if (v6 <= 97)
  {
    if (v6 <= 71)
    {
      if (v6 > 60)
      {
        if (v6 == 61)
        {
LABEL_42:
          *(a1 + 2) = 1;
          return 8;
        }

        if (v6 != 62)
        {
          if (v6 == 66)
          {
            result = 1;
            *a3 = 1;
            return result;
          }

          goto LABEL_58;
        }

        *(a1 + 2) = 0;
      }

      else if (v6 != 32)
      {
        if (v6 == 33)
        {
          *(a1 + 3) = getnumlimit(a1, a2, 8);
          return 8;
        }

        if (v6 != 60)
        {
          goto LABEL_58;
        }

        goto LABEL_42;
      }

      return 8;
    }

    if (v6 > 75)
    {
      if (v6 != 76 && v6 != 84)
      {
        if (v6 == 88)
        {
          return 7;
        }

        goto LABEL_58;
      }
    }

    else
    {
      if (v6 == 72)
      {
        v10 = 2;
        goto LABEL_53;
      }

      if (v6 == 73)
      {
        *a3 = getnumlimit(a1, a2, 4);
        return 1;
      }

      if (v6 != 74)
      {
        goto LABEL_58;
      }
    }

    v10 = 8;
LABEL_53:
    *a3 = v10;
    return 1;
  }

  if (v6 > 105)
  {
    if (v6 > 114)
    {
      switch(v6)
      {
        case 's':
          *a3 = getnumlimit(a1, a2, 8);
          return 4;
        case 'x':
          *a3 = 1;
          return 6;
        case 'z':
          return 5;
      }

      goto LABEL_58;
    }

    if (v6 == 106 || v6 == 108)
    {
      result = 0;
      v9 = 8;
      goto LABEL_51;
    }

    if (v6 == 110)
    {
LABEL_23:
      v7 = 8;
LABEL_56:
      *a3 = v7;
      return 2;
    }

LABEL_58:
    luaL_error(*a1, "invalid format option '%c'", v6);
    return 8;
  }

  if (v6 > 101)
  {
    switch(v6)
    {
      case 'f':
        v7 = 4;
        goto LABEL_56;
      case 'h':
        result = 0;
        v9 = 2;
        goto LABEL_51;
      case 'i':
        v9 = getnumlimit(a1, a2, 4);
        result = 0;
LABEL_51:
        *a3 = v9;
        return result;
    }

    goto LABEL_58;
  }

  if (v6 == 98)
  {
    result = 0;
    v9 = 1;
    goto LABEL_51;
  }

  if (v6 != 99)
  {
    if (v6 != 100)
    {
      goto LABEL_58;
    }

    goto LABEL_23;
  }

  if ((*v5 - 58) >= 0xFFFFFFF6)
  {
    v11 = 0;
    v12 = v4 + 2;
    do
    {
      *a2 = v12;
      v11 = *(v12 - 1) + 10 * v11 - 48;
      v13 = *v12++ - 48;
    }

    while (v13 <= 9 && v11 < 214748364);
    *a3 = v11;
    if (v11 != -1)
    {
      return 3;
    }
  }

  else
  {
    *a3 = -1;
  }

  luaL_error(*a1, "missing size for format option 'c'");
  return 3;
}

uint64_t getnumlimit(uint64_t *a1, void *a2, uint64_t a3)
{
  if ((**a2 - 58) >= 0xFFFFFFF6)
  {
    LODWORD(a3) = 0;
    v4 = (*a2 + 1);
    do
    {
      *a2 = v4;
      a3 = (*(v4 - 1) + 10 * a3 - 48);
      v5 = *v4++ - 48;
    }

    while (v5 <= 9 && a3 < 214748364);
  }

  if ((a3 - 17) <= 0xFFFFFFEF)
  {
    luaL_error(*a1, "integral size (%d) out of limits [1,%d]", a3, 16);
  }

  return a3;
}

unint64_t unpackint(void *a1, uint64_t a2, int a3, int a4, int a5)
{
  if (a4 >= 8)
  {
    v6 = 8;
  }

  else
  {
    v6 = a4;
  }

  if (a4 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = 0;
    v11 = v6 + 1;
    v12 = a4 - v6;
    do
    {
      v13 = v10;
      v14 = v11 - 2;
      if (!a3)
      {
        v14 = v12;
      }

      v10 = *(a2 + v14) | (v10 << 8);
      --v11;
      ++v12;
    }

    while (v11 > 1);
    if (a4 > 7)
    {
      if (a4 != 8)
      {
        if ((v13 << 8) > -1 || a5 == 0)
        {
          v16 = 0;
        }

        else
        {
          v16 = 255;
        }

        v17 = ~v6 + a4;
        do
        {
          if (a3)
          {
            v18 = v6;
          }

          else
          {
            v18 = v17;
          }

          if (v16 != *(a2 + v18))
          {
            luaL_error(a1, "%d-byte integer does not fit into Lua Integer", a4);
          }

          ++v6;
          --v17;
        }

        while (v6 < a4);
      }

      return v10;
    }
  }

  if (a5)
  {
    return (v10 ^ (1 << (8 * a4 - 1))) - (1 << (8 * a4 - 1));
  }

  return v10;
}

uint64_t luaH_next(void *a1, uint64_t a2, uint64_t *a3)
{
  v6 = *(a3 + 2);
  if (v6 == 19)
  {
    v7 = *a3;
    if ((*a3 - 2147483649) >= 0xFFFFFFFF80000000)
    {
      v8 = *(a2 + 12);
      if (v8 >= v7)
      {
        goto LABEL_15;
      }
    }
  }

  else if (!v6)
  {
    LODWORD(v7) = 0;
    v8 = *(a2 + 12);
    goto LABEL_15;
  }

  v9 = mainposition(a2, a3);
  for (i = v9 + 4; !luaV_equalobj(0, v9 + 4, a3); i = v9 + 4)
  {
    if (v9[6] == 10 && (a3[1] & 0x40) != 0 && *i == *a3)
    {
      break;
    }

    v11 = v9[7];
    if (v11)
    {
      v9 += 8 * v11;
    }

    else
    {
      luaG_runerror(a1, "invalid key to 'next'");
    }
  }

  v8 = *(a2 + 12);
  LODWORD(v7) = v8 + ((v9 - *(a2 + 24)) >> 5) + 1;
LABEL_15:
  v12 = v8 - v7;
  if (v8 <= v7)
  {
LABEL_20:
    v16 = v7 - v8;
    v17 = 1 << *(a2 + 11);
    if (v16 >= v17)
    {
      return 0;
    }

    while (1)
    {
      v18 = *(a2 + 24) + 32 * v16;
      if (*(v18 + 8))
      {
        break;
      }

      if (v17 == ++v16)
      {
        return 0;
      }
    }

    *a3 = *(v18 + 16);
    v20 = *(a2 + 24);
    v14 = 32 * v16;
  }

  else
  {
    v13 = v7;
    v14 = 16 * v7;
    v15 = v13 + 1;
    while (!*(*(a2 + 16) + 8 + v14))
    {
      v14 += 16;
      ++v15;
      if (!--v12)
      {
        LODWORD(v7) = v8;
        goto LABEL_20;
      }
    }

    *a3 = v15;
    *(a3 + 2) = 19;
    v20 = *(a2 + 16);
  }

  *(a3 + 1) = *(v20 + v14);
  return 1;
}

_OWORD *luaH_resize(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v4 = a4;
  v8 = *(a2 + 12);
  v9 = *(a2 + 11);
  v10 = *(a2 + 24);
  v11 = a3;
  if (v8 < a3)
  {
    v12 = luaM_realloc_(a1, *(a2 + 16), 16 * v8, 16 * a3);
    *(a2 + 16) = v12;
    v13 = *(a2 + 12);
    if (v13 < a3)
    {
      v14 = 0;
      v15 = (v11 - v13 + 3) & 0xFFFFFFFFFFFFFFFCLL;
      v16 = vdupq_n_s64(v11 - v13 - 1);
      v17 = (v12 + 16 * v13 + 40);
      do
      {
        v18 = vdupq_n_s64(v14);
        v19 = vmovn_s64(vcgeq_u64(v16, vorrq_s8(v18, xmmword_1C378AF00)));
        if (vuzp1_s16(v19, *v16.i8).u8[0])
        {
          *(v17 - 8) = 0;
        }

        if (vuzp1_s16(v19, *&v16).i8[2])
        {
          *(v17 - 4) = 0;
        }

        if (vuzp1_s16(*&v16, vmovn_s64(vcgeq_u64(v16, vorrq_s8(v18, xmmword_1C378AEF0)))).i32[1])
        {
          *v17 = 0;
          v17[4] = 0;
        }

        v14 += 4;
        v17 += 16;
      }

      while (v15 != v14);
    }

    *(a2 + 12) = a3;
  }

  result = setnodevector(a1, a2, v4);
  if (v8 > a3)
  {
    *(a2 + 12) = a3;
    v21 = v8 - a3;
    v22 = v11 + 1;
    v23 = 16 * a3;
    do
    {
      v24 = (*(a2 + 16) + v23);
      if (v24->n128_u32[2])
      {
        luaH_setint(a1, a2, v22, v24);
      }

      ++v22;
      v23 += 16;
      --v21;
    }

    while (v21);
    result = luaM_realloc_(a1, *(a2 + 16), 16 * v8, 16 * v11);
    *(a2 + 16) = result;
  }

  v25 = 1 << v9;
  if (v9 != 31)
  {
    v26 = v25 + 1;
    v27 = &v10[32 * (v25 - 1) + 16];
    do
    {
      if (*(v27 - 2))
      {
        result = luaH_set(a1, a2, v27);
        *result = *(v27 - 1);
      }

      --v26;
      v27 -= 4;
    }

    while (v26 > 1);
  }

  if (v10 != &dummynode_)
  {

    return luaM_realloc_(a1, v10, 32 * v25, 0);
  }

  return result;
}

char *setnodevector(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    v5 = luaO_ceillog2(a3);
    if (v5 >= 31)
    {
      luaG_runerror(a1, "table overflow");
    }

    v6 = (1 << v5);
    result = luaM_realloc_(a1, 0, 0, 32 * v6);
    *(a2 + 24) = result;
    if (v5 != 31)
    {
      v8 = 0;
      if (v6 <= 1)
      {
        v9 = 1;
      }

      else
      {
        v9 = v6;
      }

      v10 = 32 * v9;
      do
      {
        v11 = *(a2 + 24) + v8;
        *(v11 + 24) = 0;
        *(v11 + 8) = 0;
        v8 += 32;
      }

      while (v10 != v8);
      result = *(a2 + 24);
    }
  }

  else
  {
    LOBYTE(v5) = 0;
    v6 = 0;
    result = &dummynode_;
    *(a2 + 24) = &dummynode_;
  }

  *(a2 + 11) = v5;
  *(a2 + 32) = &result[32 * v6];
  return result;
}

__n128 luaH_setint(uint64_t a1, uint64_t a2, uint64_t a3, __n128 *a4)
{
  v8 = luaH_getint(a2, a3);
  if (v8 == &luaO_nilobject_)
  {
    v10[0] = a3;
    v10[1] = 19;
    v8 = luaH_newkey(a1, a2, v10);
  }

  result = *a4;
  *v8 = *a4;
  return result;
}

uint64_t *luaH_set(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  result = luaH_get(a2, a3);
  if (result == &luaO_nilobject_)
  {

    return luaH_newkey(a1, a2, a3);
  }

  return result;
}

_OWORD *luaH_resizearray(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (*(a2 + 24) == &dummynode_)
  {
    v3 = 0;
  }

  else
  {
    v3 = (1 << *(a2 + 11));
  }

  return luaH_resize(a1, a2, a3, v3);
}

uint64_t luaH_new(uint64_t a1)
{
  result = luaC_newobj(a1, 5, 56);
  *(result + 10) = 255;
  *(result + 12) = 0;
  *(result + 16) = 0;
  *(result + 24) = &dummynode_;
  *(result + 32) = &dummynode_;
  *(result + 40) = 0;
  return result;
}

uint64_t luaH_free(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  if (v4 != &dummynode_)
  {
    luaM_realloc_(a1, v4, 32 * (1 << *(a2 + 11)), 0);
  }

  luaM_realloc_(a1, *(a2 + 16), 16 * *(a2 + 12), 0);

  return luaM_realloc_(a1, a2, 56, 0);
}

uint64_t *luaH_newkey(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = a3;
  v53 = *MEMORY[0x1E69E9840];
  v50 = 0;
  v51 = 0;
  v6 = *(a3 + 2);
  if (v6 == 3)
  {
    *&v52[0] = 0;
    if (luaV_tointeger(a3, v52))
    {
      v50 = *&v52[0];
      LODWORD(v51) = 19;
      v3 = &v50;
    }
  }

  else if (!v6)
  {
    luaG_runerror(a1, "table index is nil", v50, v51);
  }

  v7 = mainposition(a2, v3);
  v8 = v7;
  if (v7 == &dummynode_ || *(v7 + 8))
  {
    v9 = 0;
    v10 = *(a2 + 24);
    v11 = *(a2 + 32);
    while (1)
    {
      v12 = v11 + v9;
      if (v11 + v9 <= v10)
      {
        break;
      }

      *(a2 + 32) = v12 - 32;
      v9 -= 32;
      if (!*(v12 - 8))
      {
        v13 = mainposition(a2, (v7 + 16));
        v14 = (v11 + v9);
        if (v13 == v8)
        {
          v34 = *(v8 + 28);
          if (v34)
          {
            *(v11 + v9 + 28) = (v8 - v11 + 32 * v34 - v9) >> 5;
          }

          *(v8 + 28) = (v11 + v9 - v8) >> 5;
          v8 = v11 + v9;
        }

        else
        {
          do
          {
            v15 = v13;
            v13 += 32 * *(v13 + 28);
          }

          while (v13 != v8);
          *(v15 + 28) = (v11 - v15 + v9) >> 5;
          v16 = *(v8 + 16);
          *v14 = *v8;
          v14[1] = v16;
          if (*(v8 + 28))
          {
            *(v11 + v9 + 28) += (v8 - v11 - v9) >> 5;
            *(v8 + 28) = 0;
          }

          *(v8 + 8) = 0;
        }

        goto LABEL_56;
      }
    }

    v17 = 0;
    v18 = 0;
    memset(v52, 0, sizeof(v52));
    v19 = 1;
    v20 = 1;
    v21 = *(a2 + 12);
    do
    {
      v22 = v20;
      if (v20 > v21)
      {
        v22 = v21;
        if (v19 > v21)
        {
          break;
        }
      }

      if (v19 <= v22)
      {
        v23 = 0;
        v24 = v19 - 1;
        do
        {
          if (*(*(a2 + 16) + 16 * v24 + 8))
          {
            ++v23;
          }

          ++v24;
        }

        while (v22 != v24);
        v19 = v22 + 1;
      }

      else
      {
        v23 = 0;
      }

      *(v52 + v17) += v23;
      v18 += v23;
      ++v17;
      v20 *= 2;
    }

    while (v17 != 32);
    v25 = 0;
    v26 = 0;
    v27 = 32 * ~(-1 << *(a2 + 11));
    do
    {
      v28 = *(a2 + 24);
      if (*(v28 + v27 + 8))
      {
        if (*(v28 + v27 + 24) == 19 && (v29 = *(v28 + v27 + 16), (v29 - 2147483649) >= 0xFFFFFFFF80000000))
        {
          v31 = luaO_ceillog2(v29);
          ++*(v52 + v31);
          v30 = 1;
        }

        else
        {
          v30 = 0;
        }

        v26 += v30;
        ++v25;
      }

      v27 -= 32;
    }

    while (v27 != -32);
    v32 = v26 + v18;
    if (*(v3 + 2) == 19 && (*v3 - 2147483649) >= 0xFFFFFFFF80000000)
    {
      v35 = luaO_ceillog2(*v3);
      ++*(v52 + v35);
      v33 = 1;
    }

    else
    {
      v33 = 0;
    }

    v36 = v32 + v33;
    if (v32 + v33)
    {
      v37 = 0;
      v38 = 0;
      v39 = 0;
      v40 = 0;
      v41 = 1;
      v42 = v52;
      do
      {
        v44 = *v42++;
        v43 = v44;
        v40 += v44;
        v45 = v40 > v37;
        if (v40 <= v37)
        {
          v46 = v39;
        }

        else
        {
          v46 = v40;
        }

        if (v45)
        {
          v47 = v41;
        }

        else
        {
          v47 = v38;
        }

        if (v43)
        {
          v39 = v46;
          v38 = v47;
        }

        v37 = v41 & 0x7FFFFFFF;
        v41 *= 2;
      }

      while (v36 > v37);
    }

    else
    {
      v39 = 0;
      v38 = 0;
    }

    luaH_resize(a1, a2, v38, v18 + v25 - v39 + 1);
    return luaH_set(a1, a2, v3);
  }

  else
  {
LABEL_56:
    *(v8 + 16) = *v3;
    v48 = *(v3 + 2);
    *(v8 + 24) = v48;
    if ((v48 & 0x40) != 0 && (*(a2 + 9) & 4) != 0 && (*(*v3 + 9) & 3) != 0)
    {
      luaC_barrierback_(a1, a2);
    }
  }

  return v8;
}

uint64_t mainposition(uint64_t a1, _DWORD *a2)
{
  v4 = a2[2] & 0x3F;
  if (v4 > 0x12)
  {
    if (v4 == 22)
    {
      goto LABEL_9;
    }

    if (v4 == 20)
    {
      v7 = *a2;
      if (!*(*a2 + 10))
      {
        *(v7 + 12) = luaS_hash(v7 + 24, *(v7 + 16), *(v7 + 12));
        *(v7 + 10) = 1;
        v7 = *a2;
      }

      v5 = *(v7 + 12);
      goto LABEL_13;
    }

    if (v4 != 19)
    {
      goto LABEL_9;
    }

LABEL_8:
    v5 = *a2;
    goto LABEL_13;
  }

  if (v4 == 1)
  {
    goto LABEL_8;
  }

  if (v4 == 4)
  {
    v5 = *(*a2 + 12);
LABEL_13:
    v6 = v5 & ~(-1 << *(a1 + 11));
    return *(a1 + 24) + 32 * v6;
  }

LABEL_9:
  v6 = *a2 % (~(-1 << *(a1 + 11)) | 1u);
  return *(a1 + 24) + 32 * v6;
}

uint64_t *luaH_getint(uint64_t a1, uint64_t a2)
{
  if (a2 - 1 < *(a1 + 12))
  {
    return (*(a1 + 16) + 16 * (a2 - 1));
  }

  result = (*(a1 + 24) + 32 * (a2 & ~(-1 << *(a1 + 11))));
  while (*(result + 6) != 19 || result[2] != a2)
  {
    v3 = *(result + 7);
    result += 4 * v3;
    if (!v3)
    {
      return &luaO_nilobject_;
    }
  }

  return result;
}

uint64_t *luaH_getstr(uint64_t a1, uint64_t a2)
{
  result = (*(a1 + 24) + 32 * (*(a2 + 12) & ~(-1 << *(a1 + 11))));
  while (*(result + 6) != 68 || result[2] != a2)
  {
    v3 = *(result + 7);
    result += 4 * v3;
    if (!v3)
    {
      return &luaO_nilobject_;
    }
  }

  return result;
}

uint64_t *luaH_get(uint64_t a1, uint64_t *a2)
{
  v4 = a2[1] & 0x3F;
  if (v4 <= 3)
  {
    if (!v4)
    {
      return &luaO_nilobject_;
    }

    if (v4 == 3)
    {
      v10 = 0;
      if (luaV_tointeger(a2, &v10))
      {
        return luaH_getint(a1, v10);
      }
    }

LABEL_13:
    v5 = mainposition(a1, a2);
    while (!luaV_equalobj(0, v5 + 4, a2))
    {
      v7 = v5[7];
      v5 += 8 * v7;
      if (!v7)
      {
        return &luaO_nilobject_;
      }
    }

    return v5;
  }

  if (v4 != 19)
  {
    if (v4 == 4)
    {
      v5 = (*(a1 + 24) + 32 * (*(*a2 + 12) & ~(-1 << *(a1 + 11))));
      while (v5[6] != 68 || *(v5 + 2) != *a2)
      {
        v6 = v5[7];
        v5 += 8 * v6;
        if (!v6)
        {
          return &luaO_nilobject_;
        }
      }

      return v5;
    }

    goto LABEL_13;
  }

  v9 = *a2;

  return luaH_getint(a1, v9);
}

uint64_t luaH_getn(uint64_t a1)
{
  v2 = *(a1 + 12);
  if (v2 && (v3 = *(a1 + 16), !*(v3 + 16 * (v2 - 1) + 8)))
  {
    if (v2 == 1)
    {
      return 0;
    }

    else
    {
      LODWORD(v7) = 0;
      do
      {
        v10 = (v7 + v2) >> 1;
        if (*(v3 + 16 * (v10 - 1) + 8))
        {
          v7 = v10;
        }

        else
        {
          LODWORD(v2) = (v7 + v2) >> 1;
          v7 = v7;
        }
      }

      while ((v2 - v7) > 1);
    }
  }

  else if (*(a1 + 24) == &dummynode_)
  {
    return *(a1 + 12);
  }

  else
  {
    v4 = (v2 + 1);
    if (*(luaH_getint(a1, v4) + 2))
    {
      while (!(v4 >> 30))
      {
        v5 = 2 * v4;
        v6 = luaH_getint(a1, (2 * v4));
        v7 = v4;
        v4 = (2 * v4);
        if (!*(v6 + 2))
        {
          goto LABEL_12;
        }
      }

      LODWORD(v7) = -1;
      do
      {
        v9 = luaH_getint(a1, (v7 + 2));
        v7 = (v7 + 1);
      }

      while (*(v9 + 2));
    }

    else
    {
      v5 = v2 + 1;
      v7 = v2;
LABEL_12:
      if (v5 - v7 >= 2)
      {
        do
        {
          v8 = (v5 + v7) >> 1;
          if (*(luaH_getint(a1, v8) + 2))
          {
            v7 = v8;
          }

          else
          {
            v5 = (v5 + v7) >> 1;
            v7 = v7;
          }
        }

        while (v5 - v7 > 1);
      }
    }
  }

  return v7;
}

uint64_t luaopen_table(void *a1)
{
  luaL_checkversion_(a1, 136, 503.0);
  lua_createtable(a1, 0, 7);
  luaL_setfuncs(a1, &tab_funcs, 0);
  return 1;
}

uint64_t tconcat(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v10 = *MEMORY[0x1E69E9840];
  v8[0] = 0;
  v8[1] = 0;
  memset(v9, 0, 512);
  v7 = 0;
  v2 = luaL_optlstring(v1, 2, "", &v7);
  checktab(v1, v8);
  v3 = luaL_optinteger(v1, 3, 1);
  if (lua_type(v1, 4u) <= 0)
  {
    v4 = luaL_len(v1, 1u);
  }

  else
  {
    v4 = luaL_checkinteger(v1, 4);
  }

  v5 = v4;
  luaL_buffinit(v1, v9);
  if (v3 < v5)
  {
    do
    {
      addfield(v1, v9, v8, v3);
      luaL_addlstring(v9, v2, v7);
      ++v3;
    }

    while (v5 != v3);
    goto LABEL_8;
  }

  if (v3 == v5)
  {
LABEL_8:
    addfield(v1, v9, v8, v5);
  }

  luaL_pushresult(v9);
  return 1;
}

uint64_t tinsert(void *a1)
{
  v10 = 0;
  v11 = 0;
  checktab(a1, &v10);
  v2 = luaL_len(a1, 1u);
  v3 = lua_gettop(a1);
  if (v3 == 2)
  {
    v5 = v2 + 1;
LABEL_12:
    v11(a1, 1, v5);
    return 0;
  }

  if (v3 == 3)
  {
    v4 = luaL_checkinteger(a1, 2);
    v5 = v4;
    if (v4 < 1 || v4 > v2 + 1)
    {
      luaL_argerror(a1, 2);
    }

    if (v2 >= v5)
    {
      v6 = v10;
      v7 = v11;
      do
      {
        v6(a1, 1, v2);
        v7(a1, 1, v2 + 1);
      }

      while (v2-- > v5);
    }

    goto LABEL_12;
  }

  return luaL_error(a1, "wrong number of arguments to 'insert'");
}

uint64_t pack(void *a1)
{
  v2 = lua_gettop(a1);
  v3 = v2;
  lua_createtable(a1, v2, 1);
  lua_rotate(a1, 1, 1u);
  if (v3 >= 1)
  {
    v4 = v3;
    do
    {
      lua_rawseti(a1, 1u, v4);
    }

    while (v4-- > 1);
  }

  lua_pushinteger(a1, v3);
  lua_setfield(a1, 1u, "n");
  return 1;
}

uint64_t unpack(void *a1)
{
  v10[0] = 0;
  v10[1] = 0;
  checktab(a1, v10);
  v2 = luaL_optinteger(a1, 2, 1);
  if (lua_type(a1, 3u) <= 0)
  {
    v3 = luaL_len(a1, 1u);
  }

  else
  {
    v3 = luaL_checkinteger(a1, 3);
  }

  v4 = v3;
  v5 = v3 - v2;
  if (v3 < v2)
  {
    return 0;
  }

  if (v5 <= 0x7FFFFFFE)
  {
    v6 = (v5 + 1);
    if (lua_checkstack(a1, v5 + 1))
    {
      v7 = v10[0];
      v8 = v4 + 1;
      do
      {
        v7(a1, 1, v2++);
      }

      while (v8 != v2);
      return v6;
    }
  }

  return luaL_error(a1, "too many results to unpack");
}

uint64_t tremove(void *a1)
{
  v8 = 0;
  v9 = 0;
  checktab(a1, &v8);
  v2 = luaL_len(a1, 1u);
  v3 = luaL_optinteger(a1, 2, v2);
  v4 = v3;
  if (v3 != v2 && (v3 < 1 || v3 > v2 + 1))
  {
    luaL_argerror(a1, 1);
  }

  v5 = v8;
  v8(a1, 1, v4);
  v6 = v9;
  if (v4 < v2)
  {
    do
    {
      v5(a1, 1, v4 + 1);
      v6(a1, 1, v4++);
    }

    while (v2 != v4);
    v4 = v2;
  }

  lua_pushnil(a1);
  v6(a1, 1, v4);
  return 1;
}

uint64_t tmove(void *a1)
{
  v2 = luaL_checkinteger(a1, 2);
  v3 = luaL_checkinteger(a1, 3);
  v4 = luaL_checkinteger(a1, 4);
  if (lua_type(a1, 5u) < 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 5;
  }

  v6 = v3 - v2;
  if (v3 >= v2)
  {
    v7 = luaL_getmetafield(a1, 1u, "__index");
    v8 = lua_geti;
    if (!v7)
    {
      luaL_checktype(a1, 1, 5);
      v8 = lua_rawgeti;
    }

    v9 = v8;
    v10 = luaL_getmetafield(a1, v5, "__newindex");
    v11 = lua_seti;
    if (!v10)
    {
      luaL_checktype(a1, v5, 5);
      v11 = lua_rawseti;
    }

    v12 = v11;
    if (v2 <= 0 && v3 >= v2 + 0x7FFFFFFFFFFFFFFFLL)
    {
      luaL_argerror(a1, 3);
    }

    if (v4 > (v6 ^ 0x7FFFFFFFFFFFFFFFLL))
    {
      luaL_argerror(a1, 4);
    }

    if (v4 <= v2)
    {
      if ((v6 & 0x8000000000000000) == 0)
      {
        v16 = v3 + 1;
        do
        {
          v9(a1, 1, v2);
          v12(a1, v5, v4);
          ++v2;
          ++v4;
        }

        while (v16 != v2);
      }
    }

    else if ((v6 & 0x8000000000000000) == 0)
    {
      v13 = ~v3 + v2;
      v14 = v3 + v4 - v2;
      do
      {
        v9(a1, 1, v3);
        v12(a1, v5, v14--);
        --v3;
      }

      while (!__CFADD__(v13++, 1));
    }
  }

  lua_pushvalue(a1, v5);
  return 1;
}

uint64_t sort(void *a1)
{
  v4[0] = 0;
  v4[1] = 0;
  checktab(a1, v4);
  v2 = luaL_len(a1, 1u);
  luaL_checkstack(a1, 50, "");
  if (lua_type(a1, 2u) >= 1)
  {
    luaL_checktype(a1, 2, 6);
  }

  lua_settop(a1, 2);
  auxsort(a1, v4, 1, v2);
  return 0;
}

uint64_t checktab(void *a1, void *a2)
{
  *a2 = 0;
  a2[1] = 0;
  result = lua_getmetatable(a1, 1u);
  if (result)
  {
    lua_pushstring(a1, "__index");
    if (lua_rawget(a1, 0xFFFFFFFE))
    {
      *a2 = lua_geti;
    }

    lua_pushstring(a1, "__newindex");
    if (lua_rawget(a1, 0xFFFFFFFD))
    {
      a2[1] = lua_seti;
    }

    result = lua_settop(a1, -4);
  }

  if (!*a2 || !a2[1])
  {
    result = luaL_checktype(a1, 1, 5);
    if (!*a2)
    {
      *a2 = lua_rawgeti;
    }

    if (!a2[1])
    {
      a2[1] = lua_rawseti;
    }
  }

  return result;
}

uint64_t addfield(void *a1, uint64_t a2, void (**a3)(void *, uint64_t, uint64_t), uint64_t a4)
{
  v4 = a4;
  (*a3)(a1, 1, a4);
  if (!lua_isstring(a1, 0xFFFFFFFF))
  {
    v7 = lua_type(a1, 0xFFFFFFFF);
    v8 = lua_typename(a1, v7);
    luaL_error(a1, "invalid value (%s) at index %d in table for 'concat'", v8, v4);
  }

  return luaL_addvalue(a2);
}

void *auxsort(void *result, void (**a2)(void *, uint64_t, uint64_t), int a3, int a4)
{
  if (a3 < a4)
  {
    v4 = a4;
    v5 = a3;
    v7 = result;
    do
    {
      v8 = v5;
      (*a2)(v7, 1, v5);
      v9 = v4;
      (*a2)(v7, 1, v4);
      if (sort_comp(v7, 0xFFFFFFFF, 0xFFFFFFFE))
      {
        a2[1](v7, 1, v5);
        result = (a2[1])(v7, 1, v4);
      }

      else
      {
        result = lua_settop(v7, -3);
      }

      if (v4 - v5 == 1)
      {
        break;
      }

      v10 = (v4 + v5 + ((v4 + v5) >> 31)) >> 1;
      (*a2)(v7, 1, v10);
      (*a2)(v7, 1, v5);
      if (sort_comp(v7, 0xFFFFFFFE, 0xFFFFFFFF))
      {
        a2[1](v7, 1, v10);
        result = (a2[1])(v7, 1, v5);
      }

      else
      {
        lua_settop(v7, -2);
        (*a2)(v7, 1, v9);
        if (sort_comp(v7, 0xFFFFFFFF, 0xFFFFFFFE))
        {
          a2[1](v7, 1, v10);
          result = (a2[1])(v7, 1, v9);
        }

        else
        {
          result = lua_settop(v7, -3);
        }
      }

      if (v9 - v5 == 2)
      {
        break;
      }

      (*a2)(v7, 1, v10);
      v11 = lua_pushvalue(v7, 0xFFFFFFFF);
      v12 = v9 - 1;
      v13 = v9 - 1;
      (*a2)(v7, 1, v13, v11);
      v21 = v13;
      v22 = v5;
      do
      {
        a2[1](v7, 1, v10);
        a2[1](v7, 1, v13);
        v10 = v5 + 1;
        (*a2)(v7, 1, v10);
        if (sort_comp(v7, 0xFFFFFFFF, 0xFFFFFFFE))
        {
          v10 = v5 + 1;
          do
          {
            if (v10 >= v9)
            {
              luaL_error(v7, "invalid order function for sorting");
            }

            lua_settop(v7, -2);
            (*a2)(v7, 1, ++v10);
            ++v5;
          }

          while (sort_comp(v7, 0xFFFFFFFF, 0xFFFFFFFE));
          v23 = v5++;
        }

        else
        {
          v23 = v5++;
        }

        v14 = v12 - 1;
        v13 = v12 - 1;
        (*a2)(v7, 1, v13);
        if (sort_comp(v7, 0xFFFFFFFD, 0xFFFFFFFF))
        {
          do
          {
            if (v13 <= v8)
            {
              luaL_error(v7, "invalid order function for sorting");
            }

            lua_settop(v7, -2);
            (*a2)(v7, 1, --v13);
            --v12;
          }

          while (sort_comp(v7, 0xFFFFFFFD, 0xFFFFFFFF));
          v14 = v12 - 1;
        }

        v15 = v12 <= v5;
        v12 = v14;
      }

      while (!v15);
      lua_settop(v7, -4);
      (*a2)(v7, 1, v21);
      (*a2)(v7, 1, v10);
      a2[1](v7, 1, v21);
      a2[1](v7, 1, v10);
      v16 = v5 - v22;
      v17 = v9 - v5;
      v18 = v5 - v22 >= v9 - v5 ? v22 : v23 + 2;
      v4 = v16 >= v17 ? v23 : v9;
      v19 = v16 >= v17 ? v9 : v23;
      v20 = v16 >= v17 ? v23 + 2 : v22;
      result = auxsort(v7, a2, v20, v19);
      v5 = v18;
    }

    while (v18 < v4);
  }

  return result;
}

uint64_t sort_comp(void *a1, unsigned int a2, unsigned int a3)
{
  if (lua_type(a1, 2u))
  {
    lua_pushvalue(a1, 2u);
    lua_pushvalue(a1, a2 - 1);
    lua_pushvalue(a1, a3 - 2);
    lua_callk(a1, 2, 1, 0, 0);
    v6 = lua_toBOOLean(a1, 0xFFFFFFFF);
    lua_settop(a1, -2);
    return v6;
  }

  else
  {

    return lua_compare(a1, a2, a3, 1);
  }
}

uint64_t luaT_init(void *a1)
{
  v2 = luaT_init_luaT_eventname;
  for (i = 31; i != 55; ++i)
  {
    v4 = *v2++;
    *(a1[3] + 8 * i) = luaS_new(a1, v4);
    result = luaC_fix(a1, *(a1[3] + 8 * i));
  }

  return result;
}

uint64_t *luaT_gettm(uint64_t a1, char a2, uint64_t a3)
{
  result = luaH_getstr(a1, a3);
  if (!*(result + 2))
  {
    result = 0;
    *(a1 + 10) |= 1 << a2;
  }

  return result;
}

uint64_t *luaT_gettmbyobj(uint64_t a1, _DWORD *a2, unsigned int a3)
{
  if ((a2[2] & 0xF) == 7)
  {
    v3 = (*a2 + 16);
  }

  else if ((a2[2] & 0xF) == 5)
  {
    v3 = (*a2 + 40);
  }

  else
  {
    v3 = (*(a1 + 24) + 8 * (a2[2] & 0xF) + 440);
  }

  v4 = *v3;
  if (v4)
  {
    return luaH_getstr(v4, *(*(a1 + 24) + 8 * a3 + 248));
  }

  else
  {
    return &luaO_nilobject_;
  }
}

__n128 luaT_callTM(void *a1, _OWORD *a2, _OWORD *a3, _OWORD *a4, _OWORD *a5, int a6)
{
  v9 = a1[7];
  v10 = a1[2];
  a1[2] = v10 + 1;
  *v10 = *a2;
  v11 = a1[2];
  a1[2] = v11 + 1;
  *v11 = *a3;
  v12 = a1[2];
  a1[2] = v12 + 1;
  *v12 = *a4;
  if (!a6)
  {
    v13 = a1[2];
    a1[2] = v13 + 1;
    *v13 = *a5;
  }

  luaD_call(a1, (a1[2] - 16 * (4 - a6)), a6, *(a1[4] + 66) & 2);
  if (a6)
  {
    v15 = a1[7];
    v16 = (a1[2] - 16);
    a1[2] = v16;
    result = *v16;
    *(a5 + v15 - v9) = *v16;
  }

  return result;
}

uint64_t luaT_callbinTM(void *a1, _DWORD *a2, _DWORD *a3, _OWORD *a4, unsigned int a5)
{
  v10 = luaT_gettmbyobj(a1, a2, a5);
  if (!*(v10 + 2))
  {
    v10 = luaT_gettmbyobj(a1, a3, a5);
    if (!*(v10 + 2))
    {
      return 0;
    }
  }

  v11 = 1;
  luaT_callTM(a1, v10, a2, a3, a4, 1);
  return v11;
}

uint64_t luaT_trybinTM(void *a1, _DWORD *a2, _DWORD *a3, _OWORD *a4, unsigned int a5)
{
  result = luaT_callbinTM(a1, a2, a3, a4, a5);
  if (!result)
  {
    if (a5 - 13 >= 5 && a5 != 19)
    {
      if (a5 != 22)
      {
        return luaG_opinterror(a1, a2, a3, "perform arithmetic on");
      }

      luaG_concaterror(a1, a2, a3);
    }

    v10 = 0;
    if (a2[2] == 3)
    {
      v10 = *a2;
    }

    else if (!luaV_tonumber_(a2, &v10))
    {
      goto LABEL_13;
    }

    if (a3[2] == 3)
    {
      v10 = *a3;
LABEL_12:
      luaG_tointerror(a1, a2, a3);
      return luaG_opinterror(a1, a2, a3, "perform arithmetic on");
    }

    if (luaV_tonumber_(a3, &v10))
    {
      goto LABEL_12;
    }

LABEL_13:
    luaG_opinterror(a1, a2, a3, "perform bitwise operation on");
    return luaG_opinterror(a1, a2, a3, "perform arithmetic on");
  }

  return result;
}

uint64_t luaT_callorderTM(uint64_t a1, _DWORD *a2, _DWORD *a3, unsigned int a4)
{
  if (!luaT_callbinTM(a1, a2, a3, *(a1 + 16), a4))
  {
    return 0xFFFFFFFFLL;
  }

  v5 = *(a1 + 16);
  result = v5[2];
  if (result)
  {
    return result != 1 || *v5 != 0;
  }

  return result;
}

uint64_t luaU_undump(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  v13 = 0;
  v5 = *a4;
  if (v5 == 27)
  {
    v6 = "binary string";
  }

  else
  {
    v6 = a4;
    if (v5 == 64 || v5 == 61)
    {
      v6 = a4 + 1;
    }
  }

  v12[0] = a1;
  v12[1] = a2;
  v12[2] = a3;
  v13 = v6;
  checkliteral(v12, "Lua", "not a");
  LOBYTE(v14) = 0;
  LoadBlock(v12, &v14, 1uLL);
  if (LOBYTE(v14) != 83)
  {
    luaO_pushfstring(a1, "%s: %s precompiled chunk", v6, "version mismatch in");
    luaD_throw(a1, 3);
  }

  LOBYTE(v14) = 0;
  LoadBlock(v12, &v14, 1uLL);
  if (LOBYTE(v14))
  {
    luaO_pushfstring(a1, "%s: %s precompiled chunk", v6, "format mismatch in");
    luaD_throw(a1, 3);
  }

  checkliteral(v12, "\x19\x93\r\n\x1A\n", "corrupted");
  fchecksize(v12, 4, "int");
  fchecksize(v12, 8, "size_t");
  fchecksize(v12, 4, "Instruction");
  fchecksize(v12, 8, "lua_Integer");
  fchecksize(v12, 8, "lua_Number");
  v14 = 0.0;
  LoadBlock(v12, &v14, 8uLL);
  if (*&v14 != 22136)
  {
    luaO_pushfstring(a1, "%s: %s precompiled chunk", v6, "endianness mismatch in");
    luaD_throw(a1, 3);
  }

  v14 = 0.0;
  LoadBlock(v12, &v14, 8uLL);
  if (v14 != 370.5)
  {
    luaO_pushfstring(a1, "%s: %s precompiled chunk", v6, "float format mismatch in");
    luaD_throw(a1, 3);
  }

  LOBYTE(v14) = 0;
  LoadBlock(v12, &v14, 1uLL);
  v7 = luaF_newLclosure(a1, LOBYTE(v14));
  v8 = *(a1 + 16);
  *v8 = v7;
  *(v8 + 8) = 70;
  v9 = *(a1 + 16) + 16;
  *(a1 + 16) = v9;
  if (*(a1 + 48) - v9 <= 15)
  {
    luaD_growstack(a1, 0);
  }

  luaF_newproto(a1);
  *(v7 + 24) = v10;
  LoadFunction(v12, v10, 0);
  return v7;
}

uint64_t LoadFunction(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  String = LoadString(a1);
  if (String)
  {
    v7 = String;
  }

  else
  {
    v7 = a3;
  }

  *(a2 + 104) = v7;
  LODWORD(v56) = 0;
  LoadBlock(a1, &v56, 4uLL);
  *(a2 + 40) = v56;
  LODWORD(v56) = 0;
  LoadBlock(a1, &v56, 4uLL);
  *(a2 + 44) = v56;
  LOBYTE(v56) = 0;
  LoadBlock(a1, &v56, 1uLL);
  *(a2 + 10) = v56;
  LOBYTE(v56) = 0;
  LoadBlock(a1, &v56, 1uLL);
  *(a2 + 11) = v56;
  LOBYTE(v56) = 0;
  LoadBlock(a1, &v56, 1uLL);
  *(a2 + 12) = v56;
  LODWORD(v56) = 0;
  LoadBlock(a1, &v56, 4uLL);
  v8 = v56;
  v9 = 4 * v56;
  v10 = luaM_realloc_(*a1, 0, 0, v9);
  *(a2 + 56) = v10;
  *(a2 + 24) = v8;
  LoadBlock(a1, v10, v9);
  LODWORD(v56) = 0;
  LoadBlock(a1, &v56, 4uLL);
  v11 = v56;
  v12 = 16 * v56;
  v13 = luaM_realloc_(*a1, 0, 0, v12);
  *(a2 + 48) = v13;
  *(a2 + 20) = v11;
  if (v11 >= 1)
  {
    v14 = (v11 + 3) & 0xFFFFFFFC;
    v15 = vdupq_n_s64(v11 - 1);
    v16 = xmmword_1C378AEF0;
    v17 = xmmword_1C378AF00;
    v18 = (v13 + 40);
    v19 = vdupq_n_s64(4uLL);
    do
    {
      v20 = vmovn_s64(vcgeq_u64(v15, v17));
      if (vuzp1_s16(v20, *v15.i8).u8[0])
      {
        *(v18 - 8) = 0;
      }

      if (vuzp1_s16(v20, *&v15).i8[2])
      {
        *(v18 - 4) = 0;
      }

      if (vuzp1_s16(*&v15, vmovn_s64(vcgeq_u64(v15, *&v16))).i32[1])
      {
        *v18 = 0;
        v18[4] = 0;
      }

      v16 = vaddq_s64(v16, v19);
      v17 = vaddq_s64(v17, v19);
      v18 += 16;
      v14 -= 4;
    }

    while (v14);
    for (i = 0; v12 != i; i += 16)
    {
      v22 = *(a2 + 48);
      LOBYTE(v56) = 0;
      LoadBlock(a1, &v56, 1uLL);
      v23 = v56;
      if (v56 > 3u)
      {
        switch(v56)
        {
          case 4u:
            goto LABEL_22;
          case 0x13u:
            v56 = 0;
            LoadBlock(a1, &v56, 8uLL);
            *(v22 + i) = v56;
            v23 = 19;
            goto LABEL_25;
          case 0x14u:
LABEL_22:
            v24 = LoadString(a1);
            *(v22 + i) = v24;
            v23 = *(v24 + 8) | 0x40;
            goto LABEL_25;
        }
      }

      else
      {
        if (!v56)
        {
          goto LABEL_25;
        }

        if (v56 == 1)
        {
          LOBYTE(v56) = 0;
          v23 = 1;
          LoadBlock(a1, &v56, 1uLL);
          *(v22 + i) = v56;
          goto LABEL_25;
        }

        if (v56 == 3)
        {
          v56 = 0;
          LoadBlock(a1, &v56, 8uLL);
          *(v22 + i) = v56;
          v23 = 3;
LABEL_25:
          *(v22 + i + 8) = v23;
        }
      }
    }
  }

  LODWORD(v56) = 0;
  LoadBlock(a1, &v56, 4uLL);
  v25 = v56;
  v26 = 16 * v56;
  v27 = luaM_realloc_(*a1, 0, 0, v26);
  *(a2 + 88) = v27;
  *(a2 + 16) = v25;
  if (v25 >= 1)
  {
    v28 = vdupq_n_s64(v25 - 1);
    v29 = (v25 + 1) & 0xFFFFFFFE;
    v30 = xmmword_1C378AF00;
    v31 = (v27 + 16);
    v32 = vdupq_n_s64(2uLL);
    do
    {
      v33 = vmovn_s64(vcgeq_u64(v28, v30));
      if (v33.i8[0])
      {
        *(v31 - 2) = 0;
      }

      if (v33.i8[4])
      {
        *v31 = 0;
      }

      v30 = vaddq_s64(v30, v32);
      v31 += 4;
      v29 -= 2;
    }

    while (v29);
    v34 = 0;
    do
    {
      LOBYTE(v56) = 0;
      LoadBlock(a1, &v56, 1uLL);
      *(*(a2 + 88) + v34 + 8) = v56;
      LOBYTE(v56) = 0;
      LoadBlock(a1, &v56, 1uLL);
      *(*(a2 + 88) + v34 + 9) = v56;
      v34 += 16;
    }

    while (v26 != v34);
  }

  LODWORD(v56) = 0;
  LoadBlock(a1, &v56, 4uLL);
  v35 = v56;
  v36 = 8 * v56;
  *(a2 + 64) = luaM_realloc_(*a1, 0, 0, v36);
  *(a2 + 32) = v35;
  if (v35 >= 1)
  {
    v37 = 0;
    do
    {
      *(*(a2 + 64) + v37) = 0;
      v37 += 8;
    }

    while (v36 != v37);
    v38 = 0;
    do
    {
      luaF_newproto(*a1);
      *(*(a2 + 64) + v38) = v39;
      LoadFunction(a1, *(*(a2 + 64) + v38), *(a2 + 104));
      v38 += 8;
    }

    while (v36 != v38);
  }

  LODWORD(v56) = 0;
  LoadBlock(a1, &v56, 4uLL);
  v40 = v56;
  v41 = 4 * v56;
  v42 = luaM_realloc_(*a1, 0, 0, v41);
  *(a2 + 72) = v42;
  *(a2 + 28) = v40;
  LoadBlock(a1, v42, v41);
  LODWORD(v56) = 0;
  LoadBlock(a1, &v56, 4uLL);
  v43 = v56;
  v44 = 16 * v56;
  v45 = luaM_realloc_(*a1, 0, 0, v44);
  *(a2 + 80) = v45;
  *(a2 + 36) = v43;
  if (v43 >= 1)
  {
    v46 = vdupq_n_s64(v43 - 1);
    v47 = (v43 + 1) & 0xFFFFFFFE;
    v48 = xmmword_1C378AF00;
    v49 = (v45 + 16);
    v50 = vdupq_n_s64(2uLL);
    do
    {
      v51 = vmovn_s64(vcgeq_u64(v46, v48));
      if (v51.i8[0])
      {
        *(v49 - 2) = 0;
      }

      if (v51.i8[4])
      {
        *v49 = 0;
      }

      v48 = vaddq_s64(v48, v50);
      v49 += 4;
      v47 -= 2;
    }

    while (v47);
    v52 = 0;
    do
    {
      *(*(a2 + 80) + v52) = LoadString(a1);
      LODWORD(v56) = 0;
      LoadBlock(a1, &v56, 4uLL);
      *(*(a2 + 80) + v52 + 8) = v56;
      LODWORD(v56) = 0;
      LoadBlock(a1, &v56, 4uLL);
      *(*(a2 + 80) + v52 + 12) = v56;
      v52 += 16;
    }

    while (v44 != v52);
  }

  LODWORD(v56) = 0;
  result = LoadBlock(a1, &v56, 4uLL);
  if (v56 >= 1)
  {
    v54 = 0;
    v55 = 16 * v56;
    do
    {
      result = LoadString(a1);
      *(*(a2 + 88) + v54) = result;
      v54 += 16;
    }

    while (v55 != v54);
  }

  return result;
}

uint64_t checkliteral(uint64_t a1, char *__s, const char *a3)
{
  v9 = *MEMORY[0x1E69E9840];
  v6 = strlen(__s);
  LoadBlock(a1, __s2, v6);
  result = memcmp(__s, __s2, v6);
  if (result)
  {
    luaO_pushfstring(*a1, "%s: %s precompiled chunk", *(a1 + 24), a3);
    return luaD_throw(*a1, 3);
  }

  return result;
}

size_t fchecksize(uint64_t a1, uint64_t a2, const char *a3)
{
  v8 = 0;
  result = LoadBlock(a1, &v8, 1uLL);
  if (v8 != a2)
  {
    v7 = luaO_pushfstring(*a1, "%s size mismatch in", a3);
    luaO_pushfstring(*a1, "%s: %s precompiled chunk", *(a1 + 24), v7);
    return luaD_throw(*a1, 3);
  }

  return result;
}

size_t LoadBlock(uint64_t a1, char *a2, size_t a3)
{
  result = luaZ_read(*(a1 + 8), a2, a3);
  if (result)
  {
    luaO_pushfstring(*a1, "%s: %s precompiled chunk", *(a1 + 24), "truncated");
    v5 = *a1;

    return luaD_throw(v5, 3);
  }

  return result;
}

uint64_t LoadString(uint64_t *a1)
{
  v8 = 0;
  LoadBlock(a1, &v8, 1uLL);
  v2 = v8;
  __n = v8;
  if (v8 == 255)
  {
    LoadBlock(a1, &__n, 8uLL);
    v2 = __n;
    if (__n)
    {
      goto LABEL_3;
    }
  }

  else if (v8)
  {
LABEL_3:
    v3 = *a1;
    v4 = a1[2];
    __n = v2 - 1;
    v5 = luaZ_openspace(v3, v4, v2 - 1);
    LoadBlock(a1, v5, __n);
    return luaS_newlstr(*a1, v5, __n);
  }

  return 0;
}

uint64_t luaopen_utf8(void *a1)
{
  luaL_checkversion_(a1, 136, 503.0);
  lua_createtable(a1, 0, 6);
  luaL_setfuncs(a1, &funcs, 0);
  lua_pushlstring(a1, "[", 0xEuLL);
  lua_setfield(a1, 0xFFFFFFFE, "charpattern");
  return 1;
}

uint64_t byteoffset(void *a1)
{
  v15 = 0;
  v2 = luaL_checklstring(a1, 1, &v15);
  v3 = luaL_checkinteger(a1, 2);
  if (v3 < 0)
  {
    v4 = v15 + 1;
  }

  else
  {
    v4 = 1;
  }

  v5 = luaL_optinteger(a1, 3, v4);
  v6 = v5;
  if (v5 < 0)
  {
    v6 = 0;
    if (v15 < -v5)
    {
LABEL_9:
      luaL_argerror(a1, 3);
      goto LABEL_10;
    }

    v6 = v5 + v15 + 1;
  }

  v7 = v6 - 1;
  if (v6 < 1)
  {
    goto LABEL_9;
  }

  --v6;
  if (v7 > v15)
  {
    goto LABEL_9;
  }

LABEL_10:
  if (!v3)
  {
    if (v6 >= 1)
    {
      while ((*(v2 + v6) & 0xC0) == 0x80)
      {
        if (v6-- <= 1)
        {
          v6 = 0;
          goto LABEL_36;
        }
      }
    }

    goto LABEL_36;
  }

  if ((*(v2 + v6) & 0xC0) == 0x80)
  {
    luaL_error(a1, "initial position is a continuation byte");
  }

  if ((v3 & 0x8000000000000000) == 0)
  {
    v8 = v3 - 1;
    if (v3 == 1 || v6 >= v15)
    {
      v10 = v3 - 1;
    }

    else
    {
      do
      {
        do
        {
          v9 = *(v2 + 1 + v6++);
        }

        while ((v9 & 0xC0) == 0x80);
        v10 = v8 - 1;
        if (v8 < 2)
        {
          break;
        }

        --v8;
      }

      while (v6 < v15);
    }

    goto LABEL_33;
  }

  if (v6 >= 1)
  {
    while (2)
    {
      v12 = v6;
      do
      {
        v6 = v12 - 1;
        if (v12 <= 1)
        {
          v6 = 0;
          if (v3 != -1)
          {
            goto LABEL_34;
          }

          goto LABEL_36;
        }

        v13 = *(v2 - 1 + v12--) & 0xC0;
      }

      while (v13 == 128);
      v10 = v3 + 1;
      if (v3 <= -2)
      {
        ++v3;
        if (v6 + 1 > 1)
        {
          continue;
        }
      }

      break;
    }

LABEL_33:
    if (v10)
    {
      goto LABEL_34;
    }

LABEL_36:
    lua_pushinteger(a1, v6 + 1);
    return 1;
  }

LABEL_34:
  lua_pushnil(a1);
  return 1;
}

uint64_t codepoint(void *a1)
{
  v18 = 0;
  v2 = luaL_checklstring(a1, 1, &v18);
  v3 = luaL_optinteger(a1, 2, 1);
  if (v18 >= -v3)
  {
    v4 = v3 + v18 + 1;
  }

  else
  {
    v4 = 0;
  }

  if (v3 < 0)
  {
    v5 = v4;
  }

  else
  {
    v5 = v3;
  }

  v6 = luaL_optinteger(a1, 3, v5);
  v7 = v18;
  if (v18 >= -v6)
  {
    v8 = v6 + v18 + 1;
  }

  else
  {
    v8 = 0;
  }

  if (v6 < 0)
  {
    v9 = v8;
  }

  else
  {
    v9 = v6;
  }

  if (v5 <= 0)
  {
    luaL_argerror(a1, 2);
    v7 = v18;
  }

  if (v9 > v7)
  {
    luaL_argerror(a1, 3);
  }

  v10 = v9 - v5;
  if (v9 < v5)
  {
    return 0;
  }

  if (v10 >= 0x7FFFFFFF)
  {
    return luaL_error(a1, "string slice too long");
  }

  luaL_checkstack(a1, v10 + 1, "string slice too long");
  v13 = v2 + v9;
  v14 = (v2 + v5 - 1);
  if (v14 < v13)
  {
    LODWORD(v11) = 0;
    while (1)
    {
      v17 = 0;
      v15 = utf8_decode(v14, &v17);
      if (!v15)
      {
        break;
      }

      v14 = v15;
      lua_pushinteger(a1, v17);
      v11 = (v11 + 1);
      if (v14 >= v13)
      {
        return v11;
      }
    }

    return luaL_error(a1, "invalid UTF-8 code");
  }

  return 0;
}

uint64_t utfchar(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v7 = *MEMORY[0x1E69E9840];
  v2 = lua_gettop(v1);
  if (v2 == 1)
  {
    pushutfchar(v1, 1);
  }

  else
  {
    v3 = v2;
    memset(v6, 0, 512);
    luaL_buffinit(v1, v6);
    if (v3 >= 1)
    {
      v4 = 1;
      do
      {
        pushutfchar(v1, v4);
        luaL_addvalue(v6);
        v4 = (v4 + 1);
        --v3;
      }

      while (v3);
    }

    luaL_pushresult(v6);
  }

  return 1;
}

uint64_t utflen(void *a1)
{
  v15 = 0;
  v2 = luaL_checklstring(a1, 1, &v15);
  v3 = luaL_optinteger(a1, 2, 1);
  if (v15 >= -v3)
  {
    v4 = v3 + v15 + 1;
  }

  else
  {
    v4 = 0;
  }

  if (v3 < 0)
  {
    v5 = v4;
  }

  else
  {
    v5 = v3;
  }

  v6 = luaL_optinteger(a1, 3, -1);
  v7 = v15;
  if (v15 >= -v6)
  {
    v8 = v6 + v15 + 1;
  }

  else
  {
    v8 = 0;
  }

  if (v6 < 0)
  {
    v9 = v8;
  }

  else
  {
    v9 = v6;
  }

  v10 = (v5 - 1);
  if (v5 < 1 || (--v5, v10 > v15))
  {
    luaL_argerror(a1, 2);
    v7 = v15;
    v10 = v5;
  }

  if (v9 > v7)
  {
    luaL_argerror(a1, 3);
  }

  if (v10 >= v9)
  {
    v11 = 0;
LABEL_24:
    v13 = 1;
  }

  else
  {
    v11 = 0;
    while (1)
    {
      v12 = utf8_decode(&v10[v2], 0);
      if (!v12)
      {
        break;
      }

      v10 = &v12[-v2];
      ++v11;
      if (&v12[-v2] >= v9)
      {
        goto LABEL_24;
      }
    }

    lua_pushnil(a1);
    v11 = (v10 + 1);
    v13 = 2;
  }

  lua_pushinteger(a1, v11);
  return v13;
}

uint64_t iter_codes(void *a1)
{
  luaL_checklstring(a1, 1, 0);
  lua_pushcclosure(a1, iter_aux, 0);
  lua_pushvalue(a1, 1u);
  lua_pushinteger(a1, 0);
  return 3;
}

char *utf8_decode(char *a1, unsigned int *a2)
{
  v2 = *a1;
  if (*a1 < 0)
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    while ((v2 & 0x40) != 0)
    {
      ++v5;
      v7 = *++a1;
      LOBYTE(v2) = 2 * v2;
      v4 += 5;
      v6 = v7 & 0x3F | (v6 << 6);
      if ((v7 & 0xC0) != 0x80)
      {
        return 0;
      }
    }

    v3 = 0;
    if (v5 <= 3)
    {
      v2 = ((v2 & 0x3F) << v4) | v6;
      if (HIWORD(v2) <= 0x10u)
      {
        if (v2 > utf8_decode_limits[v5])
        {
          goto LABEL_2;
        }

        return 0;
      }
    }
  }

  else
  {
LABEL_2:
    if (a2)
    {
      *a2 = v2;
    }

    return a1 + 1;
  }

  return v3;
}

uint64_t pushutfchar(void *a1, uint64_t a2)
{
  v2 = a2;
  v4 = luaL_checkinteger(a1, a2);
  if (v4 >= 0x110000)
  {
    luaL_argerror(a1, v2);
  }

  return lua_pushfstring(a1, "%U", v4);
}

uint64_t iter_aux(void *a1)
{
  v9 = 0;
  v2 = luaL_checklstring(a1, 1, &v9);
  v3 = lua_tointegerx(a1, 2u, 0);
  v4 = v3 - 1;
  if (v3 < 1)
  {
    v4 = 0;
  }

  else if (v3 <= v9)
  {
    do
    {
      v5 = *(v2 + v3++) & 0xC0;
    }

    while (v5 == 128);
    v4 = v3 - 1;
  }

  if (v4 >= v9)
  {
    return 0;
  }

  v8 = 0;
  v6 = utf8_decode((v2 + v4), &v8);
  if (!v6 || (*v6 & 0xC0) == 0x80)
  {
    return luaL_error(a1, "invalid UTF-8 code");
  }

  lua_pushinteger(a1, v4 + 1);
  lua_pushinteger(a1, v8);
  return 2;
}

uint64_t luaV_tonumber_(_DWORD *a1, double *a2)
{
  if (a1[2] == 19)
  {
    v4 = *a1;
LABEL_3:
    *a2 = v4;
    return 1;
  }

  if ((a1[2] & 0xF) == 4)
  {
    v9 = 0.0;
    v10 = 0;
    v6 = luaO_str2num((*a1 + 24), &v9);
    v7 = *a1;
    v8 = *(*a1 + 8) == 4 ? *(v7 + 11) : *(v7 + 16);
    if (v6 == v8 + 1)
    {
      v4 = *&v9;
      if (v10 != 19)
      {
        v4 = v9;
      }

      goto LABEL_3;
    }
  }

  return 0;
}

uint64_t luaV_tointeger(_DWORD *a1, void *a2)
{
  v8[0] = 0;
  v8[1] = 0;
  while (a1[2] != 19)
  {
    if ((a1[2] & 0xF) == 4)
    {
      v4 = luaO_str2num((*a1 + 24), v8);
      v5 = *a1;
      v6 = *(*a1 + 8) == 4 ? *(v5 + 11) : *(v5 + 16);
      a1 = v8;
      if (v4 == v6 + 1)
      {
        continue;
      }
    }

    return 0;
  }

  *a2 = *a1;
  return 1;
}

double luaV_gettable(void *a1, uint64_t a2, uint64_t *a3, _OWORD *a4)
{
  v6 = a2;
  v8 = *(a2 + 8);
  v9 = 2000;
  while (1)
  {
    if (v8 == 69)
    {
      v10 = *v6;
      v11 = luaH_get(*v6, a3);
      if (*(v11 + 2) || (v12 = *(v10 + 40)) == 0 || (*(v12 + 10) & 1) != 0 || (v13 = luaT_gettm(v12, 0, *(a1[3] + 248))) == 0)
      {
        v14 = *v11;
        *a4 = *v11;
        return *&v14;
      }
    }

    else
    {
      v13 = luaT_gettmbyobj(a1, v6, 0);
      if (!*(v13 + 2))
      {
        luaG_typeerror(a1, v6, "index");
      }
    }

    v8 = *(v13 + 2);
    if ((v8 & 0xF) == 6)
    {
      break;
    }

    v6 = v13;
    if (!--v9)
    {

      luaG_runerror(a1, "gettable chain too long; possible loop");
      return *&v14;
    }
  }

  *&v14 = luaT_callTM(a1, v13, v6, a3, a4, 1).n128_u64[0];
  return *&v14;
}

double luaV_settable(void *a1, uint64_t a2, uint64_t *a3, _BYTE *a4)
{
  v6 = a2;
  v8 = *(a2 + 8);
  v9 = 2000;
  while (1)
  {
    if (v8 == 69)
    {
      v10 = *v6;
      v11 = luaH_get(*v6, a3);
      if (*(v11 + 2))
      {
        goto LABEL_17;
      }

      v12 = *(v10 + 40);
      if (!v12 || (*(v12 + 10) & 2) != 0 || (v13 = luaT_gettm(v12, 1, *(a1[3] + 256))) == 0)
      {
        if (v11 == &luaO_nilobject_)
        {
          v11 = luaH_newkey(a1, v10, a3);
        }

LABEL_17:
        v14 = *a4;
        *v11 = *a4;
        *(v10 + 10) = 0;
        if ((a4[8] & 0x40) != 0 && (*(v10 + 9) & 4) != 0 && (*(*a4 + 9) & 3) != 0)
        {

          luaC_barrierback_(a1, v10);
        }

        return *&v14;
      }
    }

    else
    {
      v13 = luaT_gettmbyobj(a1, v6, 1u);
      if (!*(v13 + 2))
      {
        luaG_typeerror(a1, v6, "index");
      }
    }

    v8 = *(v13 + 2);
    if ((v8 & 0xF) == 6)
    {
      break;
    }

    v6 = v13;
    if (!--v9)
    {

      luaG_runerror(a1, "settable chain too long; possible loop");
      return *&v14;
    }
  }

  *&v14 = luaT_callTM(a1, v13, v6, a3, a4, 0).n128_u64[0];
  return *&v14;
}

uint64_t luaV_lessthan(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  v6 = a2[2];
  if ((v6 & 0xF) == 4)
  {
    if ((a3[2] & 0xF) == 4)
    {
      return l_strcmp(*a2, *a3) >> 31;
    }

    goto LABEL_10;
  }

  if ((v6 & 0xF) != 3 || (v7 = a3[2], (v7 & 0xF) != 3))
  {
LABEL_10:
    v10 = luaT_callorderTM(a1, a2, a3, 0x14u);
    if ((v10 & 0x80000000) != 0)
    {
      luaG_ordererror(a1, a2, a3);
    }

    return v10;
  }

  if (v6 == 19)
  {
    v8 = *a2;
    if (v7 == 19)
    {
      v9 = *a3;
    }

    else
    {
      v13 = *a3;
      if ((v8 + 0x20000000000000) < 0x40000000000001)
      {
        return v13 > v8;
      }

      if (v13 >= 9.22337204e18)
      {
        return 1;
      }

      if (v13 <= -9.22337204e18)
      {
        return 0;
      }

      v9 = v13;
    }

    return v8 < v9;
  }

  else
  {
    v12 = *a2;
    if (v7 == 3)
    {
      return v12 < *a3;
    }

    else
    {
      v14 = *a3;
      if ((*a3 + 0x20000000000000) >= 0x40000000000001)
      {
        if (v12 >= 9.22337204e18)
        {
          v15 = 1;
        }

        else
        {
          v15 = v12 >= -9.22337204e18 && v14 <= v12;
        }
      }

      else
      {
        v15 = v12 >= v14;
      }

      return !v15;
    }
  }
}

uint64_t l_strcmp(uint64_t a1, uint64_t a2)
{
  v2 = (a1 + 24);
  if (*(a1 + 8) == 4)
  {
    v3 = *(a1 + 11);
  }

  else
  {
    v3 = *(a1 + 16);
  }

  v4 = (a2 + 24);
  if (*(a2 + 8) == 4)
  {
    v5 = *(a2 + 11);
  }

  else
  {
    v5 = *(a2 + 16);
  }

  while (1)
  {
    result = strcmp(v2, v4);
    if (result)
    {
      break;
    }

    v6 = strlen(v2);
    if (v6 == v5)
    {
      return v5 != v3;
    }

    if (v6 == v3)
    {
      return 0xFFFFFFFFLL;
    }

    v2 += v6 + 1;
    v3 -= v6 + 1;
    v4 += v6 + 1;
    v5 -= v6 + 1;
  }

  return result;
}

uint64_t luaV_lessequal(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 8);
  if ((v6 & 0xF) == 4)
  {
    if ((*(a3 + 8) & 0xF) == 4)
    {
      return l_strcmp(*a2, *a3) < 1;
    }

    goto LABEL_10;
  }

  if ((v6 & 0xF) != 3 || (v7 = *(a3 + 8), (v7 & 0xF) != 3))
  {
LABEL_10:
    result = luaT_callorderTM(a1, a2, a3, 0x15u);
    if ((result & 0x80000000) != 0)
    {
      *(*(a1 + 32) + 66) |= 0x80u;
      v11 = luaT_callorderTM(a1, a3, a2, 0x14u);
      *(*(a1 + 32) + 66) ^= 0x80u;
      if (v11 < 0)
      {
        luaG_ordererror(a1, a2, a3);
      }

      return v11 == 0;
    }

    return result;
  }

  if (v6 == 19)
  {
    v8 = *a2;
    if (v7 == 19)
    {
      v9 = *a3;
      return v8 <= v9;
    }

    v13 = *a3;
    if ((v8 + 0x20000000000000) >= 0x40000000000001)
    {
      if (v13 >= 9.22337204e18)
      {
        return 1;
      }

      else
      {
        if (v13 >= -9.22337204e18)
        {
          v9 = v13;
          return v8 <= v9;
        }

        return 0;
      }
    }

    else
    {
      return v13 >= v8;
    }
  }

  else
  {
    v12 = *a2;
    if (v7 == 3)
    {
      return v12 <= *a3;
    }

    else
    {
      v14 = *a3;
      if ((*a3 + 0x20000000000000) >= 0x40000000000001)
      {
        if (v12 >= 9.22337204e18)
        {
          v15 = 1;
        }

        else
        {
          v15 = v12 > -9.22337204e18 && v14 < v12;
        }
      }

      else
      {
        v15 = v12 > v14;
      }

      return !v15;
    }
  }
}

uint64_t luaV_equalobj(uint64_t a1, _DWORD *a2, uint64_t *a3)
{
  v3 = a3;
  v5 = a2[2];
  v6 = v5 & 0x3F;
  v7 = *(a3 + 2);
  if (v6 != (v7 & 0x3F))
  {
    if ((v5 & 0xF) == 3 && (v7 & 0xF) == 3)
    {
      v19 = 0;
      v20 = 0;
      if (v5 == 19)
      {
        v20 = *a2;
      }

      else
      {
        result = luaV_tointeger(a2, &v20);
        if (!result)
        {
          return result;
        }

        v7 = *(v3 + 2);
      }

      if (v7 == 19)
      {
        return v20 == *v3;
      }

      result = luaV_tointeger(v3, &v19);
      v3 = &v19;
      if (result)
      {
        return v20 == *v3;
      }

      return result;
    }

    return 0;
  }

  if ((v5 & 0x3Fu) <= 4)
  {
    if ((v5 & 0x3Fu) > 1)
    {
      if (v6 != 3)
      {
        return *a2 == *a3;
      }

      return *a2 == *a3;
    }

    if ((v5 & 0x3F) != 0)
    {
      return *a2 == *a3;
    }

    return 1;
  }

  if ((v5 & 0x3Fu) <= 0x12)
  {
    if (v6 != 5)
    {
      if (v6 != 7)
      {
        return *a2 == *a3;
      }

      v12 = *a3;
      if (*a2 == *a3)
      {
        return 1;
      }

      if (!a1)
      {
        return 0;
      }

      v13 = *(*a2 + 16);
      if (!v13 || (*(v13 + 10) & 0x20) != 0)
      {
        goto LABEL_31;
      }

      result = luaT_gettm(v13, 5, *(*(a1 + 24) + 288));
      if (!result)
      {
        v12 = *v3;
LABEL_31:
        result = *(v12 + 16);
        if (!result)
        {
          return result;
        }

        goto LABEL_40;
      }

LABEL_42:
      luaT_callTM(a1, result, a2, v3, *(a1 + 16), 1);
      v16 = *(a1 + 16);
      result = v16[2];
      if (!result)
      {
        return result;
      }

      if (result == 1)
      {
        return *v16 != 0;
      }

      return 1;
    }

    v14 = *a3;
    if (*a2 == *a3)
    {
      return 1;
    }

    if (!a1)
    {
      return 0;
    }

    v15 = *(*a2 + 40);
    if (v15 && (*(v15 + 10) & 0x20) == 0)
    {
      result = luaT_gettm(v15, 5, *(*(a1 + 24) + 288));
      if (result)
      {
        goto LABEL_42;
      }

      v14 = *v3;
    }

    result = *(v14 + 40);
    if (!result)
    {
      return result;
    }

LABEL_40:
    if ((*(result + 10) & 0x20) == 0)
    {
      result = luaT_gettm(result, 5, *(*(a1 + 24) + 288));
      if (!result)
      {
        return result;
      }

      goto LABEL_42;
    }

    return 0;
  }

  if (v6 != 20)
  {
    return *a2 == *a3;
  }

  v17 = *a2;
  v18 = *a3;

  return luaS_eqlngstr(v17, v18);
}

uint64_t luaV_concat(uint64_t result, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = result;
  v9 = *(result + 16);
  do
  {
    v10 = a2;
    v11 = (v9 - 32);
    if ((*(v9 - 24) & 0xFu) - 3 > 1)
    {
LABEL_10:
      result = luaT_trybinTM(v8, (v9 - 32), (v9 - 16), (v9 - 32), 0x16u);
LABEL_11:
      v15 = 1;
      goto LABEL_36;
    }

    v12 = v9 - 16;
    v13 = *(v9 - 8);
    if ((v13 & 0xF) != 4)
    {
      if ((v13 & 0xF) != 3)
      {
        goto LABEL_10;
      }

      result = luaO_tostring(v8, v9 - 16, a3, a4, a5, a6, a7, a8);
      v13 = *(v9 - 8);
    }

    if (v13 == 68)
    {
      v14 = *(v9 - 24);
      if (!*(*(v9 - 16) + 11))
      {
        if ((*(v9 - 24) & 0xF) == 3)
        {
          result = luaO_tostring(v8, v9 - 32, a3, a4, a5, a6, a7, a8);
        }

        goto LABEL_11;
      }
    }

    else
    {
      v14 = *(v9 - 24);
    }

    if (v14 == 68 && !*(*v11 + 11))
    {
      *v11 = *v12;
      goto LABEL_11;
    }

    v16 = *v12;
    if (*(*v12 + 8) == 4)
    {
      v17 = *(v16 + 11);
    }

    else
    {
      v17 = *(v16 + 16);
    }

    v18 = 1;
    if (v10 >= 2)
    {
      do
      {
        if ((v11[2] & 0xF) != 4)
        {
          if ((v11[2] & 0xF) != 3)
          {
            goto LABEL_30;
          }

          luaO_tostring(v8, v11, a3, a4, a5, a6, a7, a8);
        }

        v19 = *v11;
        if (*(*v11 + 8) == 4)
        {
          v20 = *(v19 + 11);
        }

        else
        {
          v20 = *(v19 + 16);
        }

        if (v20 >= (v17 ^ 0x7FFFFFFFFFFFFFFFLL))
        {
          luaG_runerror(v8, "string length overflow");
        }

        v11 -= 4;
        v17 += v20;
        ++v18;
      }

      while (v10 != v18);
      LODWORD(v18) = v10;
    }

LABEL_30:
    v21 = luaZ_openspace(v8, (v8[3] + 176), v17);
    v22 = 0;
    v23 = v18 + 1;
    v24 = v9 - 16 * v18;
    do
    {
      v25 = *v24;
      if (*(*v24 + 8) == 4)
      {
        v26 = *(v25 + 11);
      }

      else
      {
        v26 = *(v25 + 16);
      }

      memcpy(&v21[v22], (v25 + 24), v26);
      v22 += v26;
      --v23;
      v24 += 16;
    }

    while (v23 > 1);
    v27 = v9 - 16 * v18;
    result = luaS_newlstr(v8, v21, v22);
    *v27 = result;
    *(v27 + 8) = *(result + 8) | 0x40;
    v15 = v18 - 1;
LABEL_36:
    a2 = v10 - v15;
    v9 = v8[2] - 16 * v15;
    v8[2] = v9;
  }

  while (v10 - v15 > 1);
  return result;
}

double luaV_objlen(void *a1, uint64_t a2, _DWORD *a3)
{
  v5 = a3[2] & 0x3F;
  switch(v5)
  {
    case 4:
      v10 = *(*a3 + 11);
      goto LABEL_10;
    case 20:
      v10 = *(*a3 + 16);
      goto LABEL_10;
    case 5:
      v7 = *a3;
      v8 = *(*a3 + 40);
      if (!v8 || (*(v8 + 10) & 0x10) != 0 || (v9 = luaT_gettm(v8, 4, *(a1[3] + 280))) == 0)
      {
        v10 = luaH_getn(v7);
LABEL_10:
        *a2 = v10;
        *(a2 + 8) = 19;
        return result;
      }

      break;
    default:
      v9 = luaT_gettmbyobj(a1, a3, 4u);
      if (!*(v9 + 2))
      {
        luaG_typeerror(a1, a3, "get length of");
      }

      break;
  }

  *&result = luaT_callTM(a1, v9, a3, a3, a2, 1).n128_u64[0];
  return result;
}

uint64_t luaV_div(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a3 + 1) > 1)
  {
    result = a2 / a3;
    if ((a3 ^ a2) < 0)
    {
      result -= a2 != result * a3;
    }
  }

  else
  {
    if (!a3)
    {
      luaG_runerror(a1, "attempt to divide by zero");
    }

    return -a2;
  }

  return result;
}

uint64_t luaV_mod(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a3 + 1) > 1)
  {
    if (a2 % a3)
    {
      return a2 % a3 + (a3 & ((a3 ^ a2) >> 63));
    }
  }

  else if (!a3)
  {
    luaG_runerror(a1, "attempt to perform 'n%%0'", v3, v4);
    return 0;
  }

  return 0;
}

unint64_t luaV_shiftl(unint64_t a1, unint64_t a2)
{
  v2 = a1 << a2;
  if (a2 > 0x3F)
  {
    v2 = 0;
  }

  v3 = a1 >> -a2;
  if (a2 < 0xFFFFFFFFFFFFFFC1)
  {
    v3 = 0;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    return v3;
  }

  else
  {
    return v2;
  }
}

uint64_t luaV_finishOp(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = result;
  v9 = *(result + 32);
  v10 = *(v9 + 32);
  v11 = *(*(v9 + 40) - 4);
  v12 = *(*(v9 + 40) - 4) & 0x3F;
  if (v12 <= 0x1B)
  {
    if (v12 - 18 >= 9 && v12 - 12 >= 5 && v12 - 6 >= 2)
    {
      return result;
    }

LABEL_16:
    v19 = (*(result + 16) - 16);
    *(result + 16) = v19;
    *(v10 + 16 * (v11 >> 6)) = *v19;
    return result;
  }

  if ((*(*(v9 + 40) - 4) & 0x3Fu) <= 0x1E)
  {
    if (v12 == 28)
    {
      goto LABEL_16;
    }

    if (v12 != 29)
    {
      return result;
    }

    v17 = *(result + 16);
    v18 = (v17 - 32 - v10 - ((v11 >> 19) & 0x1FF0)) >> 4;
    *(v17 - 48) = *(v17 - 16);
    if (v18 >= 2)
    {
      *(result + 16) = v17 - 32;
      result = luaV_concat(result, v18, a3, a4, a5, a6, a7, a8);
    }

    *(*(v9 + 32) + 16 * (v11 >> 6)) = *(*(v8 + 16) - 16);
LABEL_23:
    *(v8 + 16) = *(v9 + 8);
    return result;
  }

  if (v12 - 31 >= 3)
  {
    if (v12 == 36)
    {
      if ((v11 & 0x7FC000) == 0)
      {
        return result;
      }
    }

    else if (v12 != 41)
    {
      return result;
    }

    goto LABEL_23;
  }

  v13 = *(result + 16);
  v14 = (v13 - 16);
  v15 = *(v13 - 8);
  if (v15)
  {
    v16 = v15 == 1 && *v14 == 0;
  }

  else
  {
    v16 = 1;
  }

  *(result + 16) = v14;
  v20 = *(v9 + 66);
  if (v20 < 0)
  {
    *(v9 + 66) = v20 & 0x7F;
  }

  else
  {
    v16 ^= 1u;
  }

  if (v16 != (v11 >> 6))
  {
    *(v9 + 40) += 4;
  }

  return result;
}

uint64_t luaV_execute(uint64_t a1)
{
  v2 = *(a1 + 32);
LABEL_2:
  v3 = **v2;
  v4 = *(*(v3 + 24) + 48);
  v5 = v2[4];
  v185 = v3;
  v186 = v3 + 32;
  while (2)
  {
    v6 = v2[5];
    v2[5] = (v6 + 1);
    v7 = *v6;
    v8 = *(a1 + 200);
    if ((v8 & 0xC) != 0)
    {
      v9 = *(a1 + 192) - 1;
      *(a1 + 192) = v9;
      if ((v8 & 4) != 0 || !v9)
      {
        luaG_traceexec(a1);
        v5 = v2[4];
      }
    }

    v10 = (v7 >> 6);
    v11 = v5 + 16 * v10;
    switch(v7 & 0x3F)
    {
      case 0uLL:
        *v11 = *(v5 + ((v7 >> 19) & 0x1FF0));
        continue;
      case 1uLL:
        v62 = (v7 >> 10) & 0x3FFFF0;
        goto LABEL_110;
      case 2uLL:
        v61 = v2[5];
        v2[5] = (v61 + 1);
        v62 = (*v61 >> 2) & 0x3FFFFFF0;
LABEL_110:
        *v11 = *(v4 + v62);
        continue;
      case 3uLL:
        *v11 = v7 >> 23;
        *(v11 + 8) = 1;
        if ((v7 & 0x7FC000) == 0)
        {
          continue;
        }

        goto LABEL_103;
      case 4uLL:
        v50 = 0;
        v51 = vdupq_n_s64(v7 >> 23);
        v52 = (v5 + 16 * v10 + 40);
        do
        {
          v53 = vdupq_n_s64(v50);
          v54 = vmovn_s64(vcgeq_u64(v51, vorrq_s8(v53, xmmword_1C378AF00)));
          if (vuzp1_s16(v54, *v51.i8).u8[0])
          {
            *(v52 - 8) = 0;
          }

          if (vuzp1_s16(v54, *&v51).i8[2])
          {
            *(v52 - 4) = 0;
          }

          if (vuzp1_s16(*&v51, vmovn_s64(vcgeq_u64(v51, vorrq_s8(v53, xmmword_1C378AEF0)))).i32[1])
          {
            *v52 = 0;
            v52[4] = 0;
          }

          v50 += 4;
          v52 += 16;
        }

        while ((((v7 >> 23) + 4) & 0x3FC) != v50);
        continue;
      case 5uLL:
        *v11 = ***(v186 + ((v7 >> 20) & 0xFF8));
        continue;
      case 6uLL:
        v70 = **(v186 + ((v7 >> 20) & 0xFF8));
        if ((v7 & 0x400000) != 0)
        {
          v87 = v4;
        }

        else
        {
          v87 = v5;
        }

        v69 = (v87 + 16 * (v7 >> 14));
        goto LABEL_157;
      case 7uLL:
        v55 = (v7 >> 19) & 0x1FF0;
        goto LABEL_105;
      case 8uLL:
        v93 = **(v186 + 8 * v10);
        if ((v7 & 0x80000000) == 0)
        {
          v89 = (v5 + 16 * (v7 >> 23));
        }

        else
        {
          v89 = (v4 + 16 * (v7 >> 23));
        }

        if ((v7 & 0x400000) != 0)
        {
          v94 = v4;
        }

        else
        {
          v94 = v5;
        }

        v91 = (v94 + 16 * (v7 >> 14));
        v92 = a1;
        goto LABEL_182;
      case 9uLL:
        v56 = *(v186 + ((v7 >> 20) & 0xFF8));
        **v56 = *v11;
        if (((*v56)[1] & 0x40) != 0 && *v56 == (v56 + 2))
        {
          luaC_upvalbarrier_(a1, v56);
        }

        continue;
      case 0xAuLL:
        if ((v7 & 0x80000000) == 0)
        {
          v89 = (v5 + 16 * (v7 >> 23));
        }

        else
        {
          v89 = (v4 + 16 * (v7 >> 23));
        }

        if ((v7 & 0x400000) != 0)
        {
          v90 = v4;
        }

        else
        {
          v90 = v5;
        }

        v91 = (v90 + 16 * (v7 >> 14));
        v92 = a1;
        v93 = v5 + 16 * (v7 >> 6);
LABEL_182:
        luaV_settable(v92, v93, v89, v91);
        goto LABEL_384;
      case 0xBuLL:
        v44 = (v7 >> 14) & 0x1FF;
        v45 = luaH_new(a1);
        *v11 = v45;
        *(v11 + 8) = 69;
        v46 = v7 >> 23;
        if (v46)
        {
          v47 = 0;
        }

        else
        {
          v47 = v44 == 0;
        }

        if (!v47)
        {
          v48 = luaO_fb2int(v46);
          v49 = luaO_fb2int(v44);
          luaH_resize(a1, v45, v48, v49);
        }

        goto LABEL_267;
      case 0xCuLL:
        v55 = (v7 >> 19) & 0x1FF0;
        *(v11 + 16) = *(v5 + v55);
LABEL_105:
        if ((v7 & 0x400000) != 0)
        {
          v68 = v4;
        }

        else
        {
          v68 = v5;
        }

        v69 = (v68 + 16 * (v7 >> 14));
        v70 = v5 + v55;
LABEL_157:
        luaV_gettable(a1, v70, v69, (v5 + 16 * (v7 >> 6)));
        goto LABEL_384;
      case 0xDuLL:
        if ((v7 & 0x80000000) == 0)
        {
          v83 = (v5 + 16 * (v7 >> 23));
        }

        else
        {
          v83 = (v4 + 16 * (v7 >> 23));
        }

        if ((v7 & 0x400000) != 0)
        {
          v84 = v4;
        }

        else
        {
          v84 = v5;
        }

        v85 = (v84 + 16 * (v7 >> 14));
        v189 = 0;
        v190 = 0.0;
        v86 = v83[2];
        if (v86 == 3)
        {
          v190 = *v83;
        }

        else
        {
          if (v86 == 19 && *(v85 + 2) == 19)
          {
            v35 = *v85 + *v83;
            goto LABEL_331;
          }

          if (!luaV_tonumber_(v83, &v190))
          {
            goto LABEL_376;
          }
        }

        if (*(v85 + 2) == 3)
        {
          v169 = v85;
LABEL_372:
          v155 = v190 + *v169;
          goto LABEL_373;
        }

        v169 = &v189;
        if (luaV_tonumber_(v85, &v189))
        {
          goto LABEL_372;
        }

LABEL_376:
        v134 = a1;
        v27 = v83;
        v29 = v85;
        v135 = (v5 + 16 * v10);
        v136 = 6;
LABEL_383:
        luaT_trybinTM(v134, v27, v29, v135, v136);
LABEL_384:
        v5 = v2[4];
        continue;
      case 0xEuLL:
        if ((v7 & 0x80000000) == 0)
        {
          v31 = (v5 + 16 * (v7 >> 23));
        }

        else
        {
          v31 = (v4 + 16 * (v7 >> 23));
        }

        if ((v7 & 0x400000) != 0)
        {
          v32 = v4;
        }

        else
        {
          v32 = v5;
        }

        v33 = (v32 + 16 * (v7 >> 14));
        v189 = 0;
        v190 = 0.0;
        v34 = v31[2];
        if (v34 == 3)
        {
          v190 = *v31;
        }

        else
        {
          if (v34 == 19 && *(v33 + 2) == 19)
          {
            v35 = *v31 - *v33;
            goto LABEL_331;
          }

          if (!luaV_tonumber_(v31, &v190))
          {
            goto LABEL_374;
          }
        }

        if (*(v33 + 2) == 3)
        {
          v166 = v33;
LABEL_368:
          v155 = v190 - *v166;
          goto LABEL_373;
        }

        v166 = &v189;
        if (luaV_tonumber_(v33, &v189))
        {
          goto LABEL_368;
        }

LABEL_374:
        v134 = a1;
        v27 = v31;
        v29 = v33;
        v135 = (v5 + 16 * v10);
        v136 = 7;
        goto LABEL_383;
      case 0xFuLL:
        if ((v7 & 0x80000000) == 0)
        {
          v63 = (v5 + 16 * (v7 >> 23));
        }

        else
        {
          v63 = (v4 + 16 * (v7 >> 23));
        }

        if ((v7 & 0x400000) != 0)
        {
          v64 = v4;
        }

        else
        {
          v64 = v5;
        }

        v65 = (v64 + 16 * (v7 >> 14));
        v189 = 0;
        v190 = 0.0;
        v66 = v63[2];
        if (v66 == 3)
        {
          v190 = *v63;
        }

        else
        {
          if (v66 == 19 && *(v65 + 2) == 19)
          {
            v35 = *v65 * *v63;
            goto LABEL_331;
          }

          if (!luaV_tonumber_(v63, &v190))
          {
            goto LABEL_375;
          }
        }

        if (*(v65 + 2) == 3)
        {
          v168 = v65;
LABEL_370:
          v155 = v190 * *v168;
          goto LABEL_373;
        }

        v168 = &v189;
        if (luaV_tonumber_(v65, &v189))
        {
          goto LABEL_370;
        }

LABEL_375:
        v134 = a1;
        v27 = v63;
        v29 = v65;
        v135 = (v5 + 16 * v10);
        v136 = 8;
        goto LABEL_383;
      case 0x10uLL:
        if ((v7 & 0x80000000) == 0)
        {
          v27 = (v5 + 16 * (v7 >> 23));
        }

        else
        {
          v27 = (v4 + 16 * (v7 >> 23));
        }

        if ((v7 & 0x400000) != 0)
        {
          v28 = v4;
        }

        else
        {
          v28 = v5;
        }

        v29 = (v28 + 16 * (v7 >> 14));
        if (v27[2] == 19 && v29[2] == 19)
        {
          v30 = luaV_mod(a1, *v27, *v29);
          goto LABEL_167;
        }

        v134 = a1;
        v135 = (v5 + 16 * (v7 >> 6));
        v136 = 9;
        goto LABEL_383;
      case 0x12uLL:
        if ((v7 & 0x80000000) == 0)
        {
          v74 = (v5 + 16 * (v7 >> 23));
        }

        else
        {
          v74 = (v4 + 16 * (v7 >> 23));
        }

        if ((v7 & 0x400000) != 0)
        {
          v75 = v4;
        }

        else
        {
          v75 = v5;
        }

        v76 = (v75 + 16 * (v7 >> 14));
        v189 = 0;
        v190 = 0.0;
        if (v74[2] == 3)
        {
          v190 = *v74;
        }

        else if (!luaV_tonumber_(v74, &v190))
        {
          goto LABEL_346;
        }

        if (*(v76 + 2) == 3)
        {
          v149 = v76;
LABEL_308:
          v155 = v190 / *v149;
          goto LABEL_373;
        }

        v149 = &v189;
        if (luaV_tonumber_(v76, &v189))
        {
          goto LABEL_308;
        }

LABEL_346:
        v134 = a1;
        v27 = v74;
        v29 = v76;
        v135 = (v5 + 16 * v10);
        v136 = 11;
        goto LABEL_383;
      case 0x13uLL:
        if ((v7 & 0x80000000) == 0)
        {
          v27 = (v5 + 16 * (v7 >> 23));
        }

        else
        {
          v27 = (v4 + 16 * (v7 >> 23));
        }

        if ((v7 & 0x400000) != 0)
        {
          v88 = v4;
        }

        else
        {
          v88 = v5;
        }

        v29 = (v88 + 16 * (v7 >> 14));
        if (v27[2] != 19 || v29[2] != 19)
        {
          v134 = a1;
          v135 = (v5 + 16 * (v7 >> 6));
          v136 = 12;
          goto LABEL_383;
        }

        v30 = luaV_div(a1, *v27, *v29);
LABEL_167:
        *v11 = v30;
        goto LABEL_332;
      case 0x14uLL:
        if ((v7 & 0x80000000) == 0)
        {
          v109 = (v5 + 16 * (v7 >> 23));
        }

        else
        {
          v109 = (v4 + 16 * (v7 >> 23));
        }

        if ((v7 & 0x400000) != 0)
        {
          v110 = v4;
        }

        else
        {
          v110 = v5;
        }

        v111 = (v110 + 16 * (v7 >> 14));
        v189 = 0;
        v190 = 0.0;
        if (v109[2] == 19)
        {
          v190 = *v109;
        }

        else if (!luaV_tointeger(v109, &v190))
        {
          goto LABEL_350;
        }

        if (*(v111 + 2) == 19)
        {
          v153 = v111;
LABEL_322:
          v35 = *v153 & *&v190;
          goto LABEL_331;
        }

        v153 = &v189;
        if (luaV_tointeger(v111, &v189))
        {
          goto LABEL_322;
        }

LABEL_350:
        v134 = a1;
        v27 = v109;
        v29 = v111;
        v135 = (v5 + 16 * v10);
        v136 = 13;
        goto LABEL_383;
      case 0x15uLL:
        if ((v7 & 0x80000000) == 0)
        {
          v77 = (v5 + 16 * (v7 >> 23));
        }

        else
        {
          v77 = (v4 + 16 * (v7 >> 23));
        }

        if ((v7 & 0x400000) != 0)
        {
          v78 = v4;
        }

        else
        {
          v78 = v5;
        }

        v79 = (v78 + 16 * (v7 >> 14));
        v189 = 0;
        v190 = 0.0;
        if (v77[2] == 19)
        {
          v190 = *v77;
        }

        else if (!luaV_tointeger(v77, &v190))
        {
          goto LABEL_347;
        }

        if (*(v79 + 2) == 19)
        {
          v150 = v79;
LABEL_310:
          v35 = *v150 | *&v190;
          goto LABEL_331;
        }

        v150 = &v189;
        if (luaV_tointeger(v79, &v189))
        {
          goto LABEL_310;
        }

LABEL_347:
        v134 = a1;
        v27 = v77;
        v29 = v79;
        v135 = (v5 + 16 * v10);
        v136 = 14;
        goto LABEL_383;
      case 0x16uLL:
        if ((v7 & 0x80000000) == 0)
        {
          v80 = (v5 + 16 * (v7 >> 23));
        }

        else
        {
          v80 = (v4 + 16 * (v7 >> 23));
        }

        if ((v7 & 0x400000) != 0)
        {
          v81 = v4;
        }

        else
        {
          v81 = v5;
        }

        v82 = (v81 + 16 * (v7 >> 14));
        v189 = 0;
        v190 = 0.0;
        if (v80[2] == 19)
        {
          v190 = *v80;
        }

        else if (!luaV_tointeger(v80, &v190))
        {
          goto LABEL_348;
        }

        if (*(v82 + 2) == 19)
        {
          v151 = v82;
LABEL_312:
          v35 = *v151 ^ *&v190;
          goto LABEL_331;
        }

        v151 = &v189;
        if (luaV_tointeger(v82, &v189))
        {
          goto LABEL_312;
        }

LABEL_348:
        v134 = a1;
        v27 = v80;
        v29 = v82;
        v135 = (v5 + 16 * v10);
        v136 = 15;
        goto LABEL_383;
      case 0x17uLL:
        if ((v7 & 0x80000000) == 0)
        {
          v106 = (v5 + 16 * (v7 >> 23));
        }

        else
        {
          v106 = (v4 + 16 * (v7 >> 23));
        }

        if ((v7 & 0x400000) != 0)
        {
          v107 = v4;
        }

        else
        {
          v107 = v5;
        }

        v108 = (v107 + 16 * (v7 >> 14));
        v189 = 0;
        v190 = 0.0;
        if (v106[2] == 19)
        {
          v190 = *v106;
        }

        else if (!luaV_tointeger(v106, &v190))
        {
          goto LABEL_349;
        }

        if (*(v108 + 2) == 19)
        {
          v152 = v108;
        }

        else
        {
          v152 = &v189;
          if (!luaV_tointeger(v108, &v189))
          {
LABEL_349:
            v134 = a1;
            v27 = v106;
            v29 = v108;
            v135 = (v5 + 16 * v10);
            v136 = 16;
            goto LABEL_383;
          }
        }

        v156 = *v152;
        v157 = *&v190 << *v152;
        if (*v152 > 0x3F)
        {
          v157 = 0;
        }

        v158 = *&v190 >> -v156;
        if (v156 < 0xFFFFFFFFFFFFFFC1)
        {
          v158 = 0;
        }

        if (v156 < 0)
        {
          v35 = v158;
        }

        else
        {
          v35 = v157;
        }

        goto LABEL_331;
      case 0x18uLL:
        if ((v7 & 0x80000000) == 0)
        {
          v112 = (v5 + 16 * (v7 >> 23));
        }

        else
        {
          v112 = (v4 + 16 * (v7 >> 23));
        }

        if ((v7 & 0x400000) != 0)
        {
          v113 = v4;
        }

        else
        {
          v113 = v5;
        }

        v114 = (v113 + 16 * (v7 >> 14));
        v189 = 0;
        v190 = 0.0;
        if (v112[2] == 19)
        {
          v190 = *v112;
        }

        else if (!luaV_tointeger(v112, &v190))
        {
          goto LABEL_351;
        }

        if (*(v114 + 2) == 19)
        {
          v154 = v114;
        }

        else
        {
          v154 = &v189;
          if (!luaV_tointeger(v114, &v189))
          {
LABEL_351:
            v134 = a1;
            v27 = v112;
            v29 = v114;
            v135 = (v5 + 16 * v10);
            v136 = 17;
            goto LABEL_383;
          }
        }

        v159 = *v154;
        v160 = -*v154;
        v161 = *&v190 << v160;
        if (v160 > 0x3F)
        {
          v161 = 0;
        }

        v162 = *&v190 >> v159;
        if (v160 < 0xFFFFFFFFFFFFFFC1)
        {
          v162 = 0;
        }

        if (v159 >= 1)
        {
          v35 = v162;
        }

        else
        {
          v35 = v161;
        }

LABEL_331:
        *v11 = v35;
LABEL_332:
        *(v11 + 8) = 19;
        continue;
      case 0x19uLL:
        v59 = (v5 + ((v7 >> 19) & 0x1FF0));
        v190 = 0.0;
        v60 = v59[2];
        if (v60 == 3)
        {
          v167 = (v5 + ((v7 >> 19) & 0x1FF0));
        }

        else
        {
          if (v60 == 19)
          {
            v35 = -*v59;
            goto LABEL_331;
          }

          v167 = &v190;
          if (!luaV_tonumber_(v59, &v190))
          {
            v134 = a1;
            v27 = v59;
            v29 = v59;
            v135 = (v5 + 16 * v10);
            v136 = 18;
            goto LABEL_383;
          }
        }

        v155 = -*v167;
LABEL_373:
        *v11 = v155;
        *(v11 + 8) = 3;
        continue;
      case 0x1AuLL:
        v57 = (v5 + ((v7 >> 19) & 0x1FF0));
        v190 = 0.0;
        if (v57[2] == 19)
        {
          v58 = (v5 + ((v7 >> 19) & 0x1FF0));
LABEL_284:
          v35 = ~*v58;
          goto LABEL_331;
        }

        v58 = &v190;
        if (luaV_tointeger(v57, &v190))
        {
          goto LABEL_284;
        }

        v134 = a1;
        v27 = v57;
        v29 = v57;
        v135 = (v5 + 16 * v10);
        v136 = 19;
        goto LABEL_383;
      case 0x1BuLL:
        v121 = (v5 + ((v7 >> 19) & 0x1FF0));
        v122 = v121[2];
        if (v122)
        {
          v123 = v122 == 1 && *v121 == 0;
        }

        else
        {
          v123 = 1;
        }

        *v11 = v123;
        *(v11 + 8) = 1;
        continue;
      case 0x1CuLL:
        luaV_objlen(a1, v5 + 16 * (v7 >> 6), (v5 + ((v7 >> 19) & 0x1FF0)));
        goto LABEL_384;
      case 0x1DuLL:
        v115 = (v7 >> 14) & 0x1FF;
        *(a1 + 16) = v5 + 16 * v115 + 16;
        luaV_concat(a1, v115 - (v7 >> 23) + 1);
        v116 = v2[4];
        v117 = &v116[2 * v10];
        v118 = &v116[2 * (v7 >> 23)];
        *v117 = *v118;
        if (*(*(a1 + 24) + 24) <= 0)
        {
          v120 = v2[1];
        }

        else
        {
          v119 = v117 + 2;
          if (v10 >= (v7 >> 23))
          {
            v118 = v119;
          }

          *(a1 + 16) = v118;
          luaC_step(a1);
          v120 = v2[1];
          *(a1 + 16) = v120;
        }

        v5 = v2[4];
        *(a1 + 16) = v120;
        continue;
      case 0x1EuLL:
        if (v10)
        {
          luaF_close(a1, &v2[4][2 * v10 - 2]);
        }

        goto LABEL_408;
      case 0x1FuLL:
        if ((v7 & 0x80000000) == 0)
        {
          v95 = (v5 + 16 * (v7 >> 23));
        }

        else
        {
          v95 = (v4 + 16 * (v7 >> 23));
        }

        if ((v7 & 0x400000) != 0)
        {
          v96 = v4;
        }

        else
        {
          v96 = v5;
        }

        v73 = luaV_equalobj(a1, v95, (v96 + 16 * (v7 >> 14)));
        goto LABEL_197;
      case 0x20uLL:
        if ((v7 & 0x80000000) == 0)
        {
          v71 = (v5 + 16 * (v7 >> 23));
        }

        else
        {
          v71 = (v4 + 16 * (v7 >> 23));
        }

        if ((v7 & 0x400000) != 0)
        {
          v72 = v4;
        }

        else
        {
          v72 = v5;
        }

        v73 = luaV_lessthan(a1, v71, (v72 + 16 * (v7 >> 14)));
        goto LABEL_197;
      case 0x21uLL:
        if ((v7 & 0x80000000) == 0)
        {
          v97 = v5 + 16 * (v7 >> 23);
        }

        else
        {
          v97 = v4 + 16 * (v7 >> 23);
        }

        if ((v7 & 0x400000) != 0)
        {
          v98 = v4;
        }

        else
        {
          v98 = v5;
        }

        v73 = luaV_lessequal(a1, v97, v98 + 16 * (v7 >> 14));
LABEL_197:
        v99 = v2[5];
        if (v73 == v10)
        {
          v100 = *v99;
          if ((v100 >> 6))
          {
            luaF_close(a1, &v2[4][2 * (v100 >> 6) - 2]);
            v99 = v2[5];
          }

          v101 = v99 + ((v100 >> 12) & 0xFFFFC) - 524280;
        }

        else
        {
          v101 = (v99 + 1);
        }

        v2[5] = v101;
        goto LABEL_384;
      case 0x22uLL:
        v39 = *(v11 + 8);
        if ((v7 & 0x7FC000) != 0)
        {
          if (v39 && (v39 != 1 || *v11))
          {
            goto LABEL_337;
          }

          goto LABEL_103;
        }

        if (v39 && (v39 != 1 || *v11))
        {
          goto LABEL_103;
        }

        goto LABEL_337;
      case 0x23uLL:
        v16 = (v5 + ((v7 >> 19) & 0x1FF0));
        v17 = v16[2];
        if ((v7 & 0x7FC000) != 0)
        {
          if (!v17 || v17 == 1 && !*v16)
          {
            goto LABEL_103;
          }
        }

        else if (v17 && (v17 != 1 || *v16))
        {
LABEL_103:
          v67 = v2[5] + 4;
          goto LABEL_411;
        }

        *v11 = *v16;
LABEL_337:
        v163 = v2[5];
        v164 = *v163;
        if ((v164 >> 6))
        {
          luaF_close(a1, &v2[4][2 * (v164 >> 6) - 2]);
          v163 = v2[5];
        }

        v15 = (v164 >> 12) & 0xFFFFC;
        v165 = -65528;
        goto LABEL_409;
      case 0x24uLL:
        if (v7 >= 0x800000)
        {
          *(a1 + 16) = v11 + ((v7 >> 19) & 0x1FF0);
        }

        if (!luaD_precall(a1, v11, ((v7 >> 14) & 0x1FF) - 1))
        {
          v2 = *(a1 + 32);
          *(v2 + 66) |= 8u;
          goto LABEL_2;
        }

        if (((v7 >> 14) & 0x1FF) != 0)
        {
          goto LABEL_269;
        }

        goto LABEL_384;
      case 0x25uLL:
        if (v7 >= 0x800000)
        {
          *(a1 + 16) = v11 + ((v7 >> 19) & 0x1FF0);
        }

        if (luaD_precall(a1, (v5 + 16 * (v7 >> 6)), -1))
        {
          goto LABEL_384;
        }

        v174 = *(a1 + 32);
        v2 = v174[2];
        v175 = *v174;
        v176 = *v2;
        v177 = v174[4];
        v178 = *(*(**v174 + 24) + 10);
        if (*(*(v3 + 24) + 32) >= 1)
        {
          luaF_close(a1, v2[4]);
        }

        v179 = &v177[v178];
        if (v175 < v179)
        {
          v180 = v176;
          v181 = v175;
          do
          {
            v182 = *v181++;
            *v180 = v182;
            v180 += 2;
          }

          while (v181 < v179);
        }

        v2[4] = (v176 + v174[4] - v175);
        v183 = v176 + *(a1 + 16) - v175;
        *(a1 + 16) = v183;
        v2[1] = v183;
        v2[5] = v174[5];
        *(v2 + 66) |= 0x20u;
        *(a1 + 32) = v2;
        goto LABEL_2;
      case 0x26uLL:
        if (*(*(v3 + 24) + 32) >= 1)
        {
          luaF_close(a1, v5);
        }

        if (v7 >= 0x800000)
        {
          LODWORD(v173) = (v7 >> 23) - 1;
        }

        else
        {
          v173 = (*(a1 + 16) - v11) >> 4;
        }

        result = luaD_poscall(a1, (v5 + 16 * (v7 >> 6)), v173);
        if ((*(v2 + 66) & 8) != 0)
        {
          v2 = *(a1 + 32);
          if (result)
          {
            *(a1 + 16) = v2[1];
          }

          goto LABEL_2;
        }

        return result;
      case 0x27uLL:
        if (*(v11 + 8) == 19)
        {
          v36 = *(v11 + 32);
          v37 = *v11 + v36;
          v38 = *(v11 + 16);
          if (v36 < 1)
          {
            if (v38 > v37)
            {
              continue;
            }
          }

          else if (v37 > v38)
          {
            continue;
          }

          v2[5] = (v2[5] + ((v7 >> 12) & 0xFFFFC) - 524284);
          *v11 = v37;
          *(v11 + 48) = v37;
          *(v11 + 56) = 19;
        }

        else
        {
          v143 = *(v11 + 32);
          v144 = v143 + *v11;
          v145 = *(v11 + 16);
          if (v143 <= 0.0)
          {
            if (v145 > v144)
            {
              continue;
            }
          }

          else if (v144 > v145)
          {
            continue;
          }

          v2[5] = (v2[5] + ((v7 >> 12) & 0xFFFFC) - 524284);
          *v11 = v144;
          *(v11 + 48) = v144;
          *(v11 + 56) = 3;
        }

        continue;
      case 0x28uLL:
        v189 = 0;
        if (*(v11 + 8) != 19 || *(v11 + 40) != 19)
        {
          goto LABEL_394;
        }

        v102 = *(v11 + 32);
        if (luaV_tointeger((v11 + 16), &v189))
        {
          v103 = v189;
          goto LABEL_207;
        }

        v170 = v3;
        v190 = 0.0;
        if (*(v11 + 24) == 3)
        {
          v171 = (v11 + 16);
LABEL_388:
          if (*v171 <= 0.0)
          {
            v103 = 0x8000000000000000;
            v189 = 0x8000000000000000;
            v3 = v170;
            if ((v102 & 0x8000000000000000) == 0)
            {
              goto LABEL_392;
            }
          }

          else
          {
            v103 = 0x7FFFFFFFFFFFFFFFLL;
            v189 = 0x7FFFFFFFFFFFFFFFLL;
            v3 = v170;
            if (v102 < 0)
            {
LABEL_392:
              v104 = 0;
              goto LABEL_208;
            }
          }

LABEL_207:
          v104 = *v11;
LABEL_208:
          *(v11 + 16) = v103;
          v105 = 19;
          *(v11 + 24) = 19;
          *v11 = v104 - *(v11 + 32);
          goto LABEL_407;
        }

        v171 = &v190;
        if (luaV_tonumber_((v11 + 16), &v190))
        {
          goto LABEL_388;
        }

        v3 = v170;
LABEL_394:
        v190 = 0.0;
        v187 = 0.0;
        v188 = 0;
        if (*(v11 + 24) == 3)
        {
          v188 = *(v11 + 16);
        }

        else if (!luaV_tonumber_((v11 + 16), &v188))
        {
          luaG_runerror(a1, "'for' limit must be a number");
        }

        *(v11 + 16) = v188;
        *(v11 + 24) = 3;
        if (*(v11 + 40) == 3)
        {
          v187 = *(v11 + 32);
        }

        else if (!luaV_tonumber_((v11 + 32), &v187))
        {
          luaG_runerror(a1, "'for' step must be a number");
        }

        v172 = v187;
        *(v11 + 32) = v187;
        *(v11 + 40) = 3;
        if (*(v11 + 8) == 3)
        {
          v190 = *v11;
        }

        else if (!luaV_tonumber_((v5 + 16 * (v7 >> 6)), &v190))
        {
          luaG_runerror(a1, "'for' initial value must be a number");
        }

        *v11 = v190 - v172;
        v105 = 3;
LABEL_407:
        *(v11 + 8) = v105;
LABEL_408:
        v163 = v2[5];
        v15 = (v7 >> 12) & 0xFFFFC;
        v165 = -65532;
LABEL_409:
        v14 = v163 + (v165 & 0xFFFFFFFF0000FFFFLL | 0xFFF80000);
LABEL_410:
        v67 = v14 + v15;
LABEL_411:
        v2[5] = v67;
        continue;
      case 0x29uLL:
        v12 = *(v11 + 32);
        *(v11 + 64) = *(v11 + 16);
        *(v11 + 80) = v12;
        *(v11 + 48) = *v11;
        *(a1 + 16) = v11 + 96;
        luaD_call(a1, (v11 + 48), (v7 >> 14) & 0x1FF, 1);
        v5 = v2[4];
        *(a1 + 16) = v2[1];
        v13 = v2[5];
        v2[5] = (v13 + 1);
        v7 = *v13;
        v11 = v5 + 16 * (v7 >> 6);
        goto LABEL_10;
      case 0x2AuLL:
LABEL_10:
        if (!*(v11 + 24))
        {
          continue;
        }

        *v11 = *(v11 + 16);
        v14 = v2[5] + 4 * (v7 >> 14);
        v15 = -524284;
        goto LABEL_410;
      case 0x2BuLL:
        v124 = v7 >> 23;
        if (!(v7 >> 23))
        {
          v124 = ((*(a1 + 16) - v11) >> 4) - 1;
        }

        v125 = (v7 >> 14) & 0x1FF;
        if (!v125)
        {
          v126 = v2[5];
          v2[5] = (v126 + 4);
          v125 = *v126 >> 6;
        }

        v127 = *v11;
        v128 = 50 * v125;
        v129 = v124 + 50 * v125 - 50;
        if (v129 > *(v127 + 12))
        {
          luaH_resizearray(a1, v127, v129);
        }

        if (v124 >= 1)
        {
          v130 = v124;
          v131 = (v5 + 16 * v10 + 16 * v124);
          v132 = v128 - 50;
          do
          {
            luaH_setint(a1, v127, (v132 + v130), v131);
            if ((v131->n128_u8[8] & 0x40) != 0 && (*(v127 + 9) & 4) != 0 && (*(v131->n128_u64[0] + 9) & 3) != 0)
            {
              luaC_barrierback_(a1, v127);
            }

            --v131;
          }

          while (v130-- > 1);
        }

        *(a1 + 16) = v2[1];
        continue;
      case 0x2CuLL:
        v18 = *(*(*(v3 + 24) + 64) + ((v7 >> 11) & 0x1FFFF8));
        v19 = *(v18 + 16);
        v21 = *(v18 + 88);
        v20 = *(v18 + 96);
        if (!v20)
        {
          goto LABEL_259;
        }

        if (v19 < 1)
        {
          goto LABEL_35;
        }

        v22 = (v20 + 32);
        v23 = (v21 + 9);
        v24 = *(v18 + 16);
        while (1)
        {
          v25 = *v23;
          v26 = *(v23 - 1) ? v5 + 16 * v25 : **(v186 + 8 * v25);
          if (**v22 != v26)
          {
            break;
          }

          v23 += 16;
          ++v22;
          if (!--v24)
          {
LABEL_35:
            *v11 = v20;
            *(v11 + 8) = 70;
            goto LABEL_267;
          }
        }

LABEL_259:
        v137 = luaF_newLclosure(a1, *(v18 + 16));
        v138 = v137;
        *(v137 + 24) = v18;
        *v11 = v137;
        *(v11 + 8) = 70;
        if (v19 >= 1)
        {
          v139 = (v137 + 32);
          v140 = (v21 + 9);
          do
          {
            v141 = *v140;
            if (*(v140 - 1))
            {
              v142 = luaF_findupval(a1, v5 + 16 * v141);
            }

            else
            {
              v142 = *(v186 + 8 * v141);
            }

            v140 += 16;
            *v139++ = v142;
            ++v142[1];
            --v19;
          }

          while (v19);
        }

        v3 = v185;
        if ((*(v18 + 9) & 4) == 0)
        {
          *(v18 + 96) = v138;
        }

LABEL_267:
        if (*(*(a1 + 24) + 24) >= 1)
        {
          *(a1 + 16) = v11 + 16;
          luaC_step(a1);
LABEL_269:
          *(a1 + 16) = v2[1];
        }

        goto LABEL_384;
      case 0x2DuLL:
        v40 = (v5 - *v2) >> 4;
        v41 = ~*(*(v3 + 24) + 10);
        v42 = v40 + v41;
        if (v7 >> 23)
        {
          v43 = (v7 >> 23) - 1;
        }

        else
        {
          if (v42 >= (*(a1 + 48) - *(a1 + 16)) >> 4)
          {
            luaD_growstack(a1, v40 + v41);
          }

          v5 = v2[4];
          v11 = v5 + 16 * v10;
          *(a1 + 16) = v11 + 16 * v42;
          v43 = v42;
        }

        if (v43 >= 1)
        {
          v146 = 0;
          v147 = (v11 + 8);
          v148 = -16 * v42;
          do
          {
            if (v146 >= v42)
            {
              *v147 = 0;
            }

            else
            {
              *(v147 - 2) = *(v5 + v148);
            }

            ++v146;
            v147 += 4;
            v148 += 16;
          }

          while (v43 != v146);
        }

        continue;
      default:
        continue;
    }
  }
}

uint64_t luaZ_fill(uint64_t a1)
{
  v5 = 0;
  v2 = (*(a1 + 16))(*(a1 + 32), *(a1 + 24), &v5);
  if (v2)
  {
    v3 = v5 == 0;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    return 0xFFFFFFFFLL;
  }

  *a1 = v5 - 1;
  *(a1 + 8) = v2 + 1;
  return *v2;
}

uint64_t luaZ_init(uint64_t result, void *a2, uint64_t a3, uint64_t a4)
{
  a2[3] = a4;
  a2[4] = result;
  a2[1] = 0;
  a2[2] = a3;
  *a2 = 0;
  return result;
}

size_t luaZ_read(unint64_t *a1, char *__dst, size_t a3)
{
  v3 = a3;
  if (a3)
  {
    v6 = *a1;
    do
    {
      if (v6)
      {
        v7 = a1[1];
      }

      else
      {
        if (luaZ_fill(a1) == -1)
        {
          return v3;
        }

        v6 = *a1 + 1;
        v7 = (a1[1] - 1);
        *a1 = v6;
        a1[1] = v7;
      }

      if (v3 >= v6)
      {
        v8 = v6;
      }

      else
      {
        v8 = v3;
      }

      memcpy(__dst, v7, v8);
      v6 = *a1 - v8;
      v9 = a1[1] + v8;
      *a1 = v6;
      a1[1] = v9;
      __dst += v8;
      v3 -= v8;
    }

    while (v3);
  }

  return v3;
}

uint64_t luaZ_openspace(uint64_t a1, uint64_t *a2, unint64_t a3)
{
  v5 = a2[2];
  v6 = *a2;
  if (v5 < a3)
  {
    if (a3 <= 0x20)
    {
      v7 = 32;
    }

    else
    {
      v7 = a3;
    }

    v6 = luaM_realloc_(a1, v6, v5, v7);
    *a2 = v6;
    a2[2] = v7;
  }

  return v6;
}

uint64_t luaI_snprintf(uint64_t a1, uint64_t a2, int a3, unsigned __int8 *__src, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v180 = *MEMORY[0x1E69E9840];
  if (a3 < 1)
  {
    return 0;
  }

  v10 = a3;
  v12 = 0;
  v176 = 0;
  v13 = 0;
  v178 = &a9;
  v14 = &byte_1C37B1852;
  while (2)
  {
    if (*__src == 37)
    {
      v20 = __src;
    }

    else
    {
      if (!*__src)
      {
        goto LABEL_320;
      }

      v15 = 0;
      v16 = 0;
      do
      {
        v17 = __src[++v16];
        v15 += 0x100000000;
      }

      while (v17 != 37 && v17 != 0);
      v19 = v16 + v12;
      v20 = &__src[v16];
      if (v19 >= v10)
      {
        v10 = 0;
        v176 = 2;
        v12 = v12;
      }

      else
      {
        memcpy((a2 + v12), __src, v15 >> 32);
        v17 = *v20;
        v12 = v19;
      }

      v13 = __src;
      if (!v17)
      {
        goto LABEL_320;
      }
    }

    LOBYTE(v21) = v20[1];
    if (!v21)
    {
      if (v12 + 1 < v10)
      {
        *(a2 + v12) = 37;
        v12 = (v12 + 1);
      }

      goto LABEL_320;
    }

    v177 = v10;
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v27 = 0;
    v28 = v20 + 2;
    while (1)
    {
      if (v21 <= 0x29u)
      {
        switch(v21)
        {
          case ' ':
            v25 = 1;
            break;
          case '!':
            v22 = 1;
            break;
          case '#':
            v24 = 1;
            break;
          default:
            goto LABEL_99;
        }

        goto LABEL_32;
      }

      if (v21 > 0x2Cu)
      {
        if (v21 == 45)
        {
          v27 = 1;
        }

        else
        {
          if (v21 != 48)
          {
            goto LABEL_99;
          }

          v23 = 1;
        }

        goto LABEL_32;
      }

      if (v21 != 43)
      {
        break;
      }

      v26 = 1;
LABEL_32:
      v29 = *v28++;
      v21 = v29;
      if (!v29)
      {
        v30 = 0;
        --v28;
        goto LABEL_34;
      }
    }

    if (v21 == 42)
    {
      v56 = v178++;
      v57 = *v56;
      if (v57 == 0x80000000)
      {
        v58 = 0;
      }

      else
      {
        v58 = -v57;
      }

      if (v57 >= 0)
      {
        v30 = v57;
      }

      else
      {
        v27 = 1;
        v30 = v58;
      }

      v21 = *v28;
    }

    else
    {
LABEL_99:
      v21 = v21;
      --v28;
      if ((v21 - 48) > 9)
      {
        v30 = 0;
      }

      else
      {
        v59 = 0;
        do
        {
          v59 = v21 + 10 * v59 - 48;
          v60 = *++v28;
          v21 = v60;
        }

        while ((v60 - 48) < 0xA);
        v30 = v59 & 0x7FFFFFFF;
      }
    }

    if (v21 != 46)
    {
LABEL_34:
      v31 = -1;
      goto LABEL_35;
    }

    v74 = (v28 + 1);
    v21 = v28[1];
    if (v21 == 42)
    {
      v75 = v178++;
      v31 = *v75;
      v76 = v28[2];
      v28 += 2;
      v21 = v76;
      if (v31 == 0x80000000)
      {
        v77 = -1;
      }

      else
      {
        v77 = -v31;
      }

      if (v31 < 0)
      {
        v31 = v77;
      }
    }

    else
    {
      if ((v21 - 48) > 9)
      {
        v31 = 0;
      }

      else
      {
        v78 = 0;
        do
        {
          v78 = v21 + 10 * v78 - 48;
          v79 = *++v74;
          v21 = v79;
        }

        while ((v79 - 48) < 0xA);
        v31 = v78 & 0x7FFFFFFF;
      }

      v28 = v74;
    }

LABEL_35:
    v32 = v31;
    v33 = 17;
    while (v21 != *(v14 - 2))
    {
      v14 += 6;
      if (!--v33)
      {
        goto LABEL_320;
      }
    }

    if ((*v14 & 2) != 0)
    {
      goto LABEL_320;
    }

    v34 = v14[1];
    if (v34 > 5)
    {
      if (v14[1] <= 8u)
      {
        if (v34 - 6 >= 2)
        {
          v14 = &byte_1C37B1852;
          v10 = v177;
          if (v34 == 8)
          {
            v54 = 0;
            v179[0] = 37;
LABEL_286:
            v13 = v179;
            v32 = 1;
            goto LABEL_287;
          }

LABEL_320:
          if (a2)
          {
            goto LABEL_321;
          }

          return v12;
        }

        v51 = v178++;
        v52 = *v51;
        if (v34 == 7)
        {
          v53 = v52;
        }

        else
        {
          v53 = 0;
        }

        if (v52)
        {
          v54 = v53;
        }

        else
        {
          v54 = 0;
        }

        if (v52)
        {
          v13 = v52;
        }

        else
        {
          v13 = "";
        }

        v14 = &byte_1C37B1852;
        v10 = v177;
        if (v31 < 0)
        {
          v136 = v27;
          v137 = v30;
          v138 = strlen(v13);
          v30 = v137;
          v27 = v136;
          v32 = v138 & 0x3FFFFFFF;
        }

        else if (v31)
        {
          v55 = 0;
          while (v13[v55])
          {
            if (v31 == ++v55)
            {
              goto LABEL_287;
            }
          }

          v32 = v55;
        }

        else
        {
          v32 = 0;
        }

        goto LABEL_287;
      }

      if (v34 != 9)
      {
        if (v34 != 14)
        {
          goto LABEL_320;
        }

LABEL_108:
        v171 = v27;
        v62 = v178++;
        v63 = *v62;
        v64 = 32 * (v25 != 0);
        if (v26)
        {
          v65 = 43;
        }

        else
        {
          v65 = v64;
        }

        if (v63 >= 0)
        {
          v66 = v63;
        }

        else
        {
          v65 = 45;
          v66 = -v63;
        }

        if (*v14)
        {
          v67 = v65;
        }

        else
        {
          v67 = 0;
        }

        if (*v14)
        {
          v68 = v66;
        }

        else
        {
          v68 = v63;
        }

        v168 = v30;
        v69 = v30 - (v67 != 0);
        if (v31 > v69)
        {
          v69 = v31;
        }

        if (v23)
        {
          v70 = v69;
        }

        else
        {
          v70 = v31;
        }

        v174 = a2;
        if (v70 >= 60)
        {
          v72 = v70 + 10;
          v73 = luaM_realloc_(a1, 0, 0, (v70 + 10));
          if (!v73)
          {
            goto LABEL_320;
          }

          v71 = v73;
        }

        else
        {
          v71 = 0;
          v72 = 70;
          v73 = v179;
        }

        v115 = 0;
        v116 = v73 + v72 - 1;
        v117 = &aDigits[v14[2]];
        v118 = *(v14 - 1);
        if (v70 <= 60)
        {
          v119 = 60;
        }

        else
        {
          v119 = v70;
        }

        v120 = v70 - 1;
        v121 = v68;
        do
        {
          v73[v119 + 8 + v115--] = v117[v121 % v118];
          --v120;
          v122 = v121 >= v118;
          v121 /= v118;
        }

        while (v122);
        v123 = &v73[v119];
        if (v115 + v70 < 1)
        {
          v13 = &v123[v115 + 9];
        }

        else
        {
          v13 = &v123[v115 - v120 + 8];
          memset(v13, 48, (v115 + v70));
        }

        v54 = v71;
        v27 = v171;
        if (v67)
        {
          *--v13 = v67;
        }

        v30 = v168;
        if (v68 && v24)
        {
          v139 = v14[3];
          v10 = v177;
          if (v139 <= 6 && ((1 << v139) & 0x49) != 0)
          {
            v14 = &byte_1C37B1852;
          }

          else
          {
            v140 = &aPrefix + v139;
            v143 = *v140;
            v141 = v140 + 1;
            v142 = v143;
            v14 = &byte_1C37B1852;
            do
            {
              *--v13 = v142;
              v144 = *v141++;
              v142 = v144;
            }

            while (v144);
          }
        }

        else
        {
          v14 = &byte_1C37B1852;
          v10 = v177;
        }

        v32 = v116 - v13;
LABEL_278:
        a2 = v174;
        goto LABEL_287;
      }

      v124 = v178++;
      v125 = *v124;
      v126 = v31 - 1;
      v14 = &byte_1C37B1852;
      if (v31 <= 1)
      {
        v10 = v177;
LABEL_285:
        v54 = 0;
        v179[0] = v125;
        goto LABEL_286;
      }

      v30 -= v126;
      v10 = v177;
      if (v30 < 2 || v27)
      {
        goto LABEL_281;
      }

      v127 = v30 - 1;
      if (v30 - 1 + v12 >= v177)
      {
        if (v176)
        {
          v30 = 0;
LABEL_281:
          if (v12 + v126 >= v10)
          {
            if (v176)
            {
              goto LABEL_285;
            }

            v126 = v10 + ~v12;
            v176 = 2;
            v10 = 0;
            if (v126 < 1)
            {
              goto LABEL_285;
            }
          }

          v152 = v30;
          v153 = v27;
LABEL_283:
          memset((a2 + v12), v125, v126);
          v12 = (v12 + v126);
          v27 = v153;
          v30 = v152;
          goto LABEL_285;
        }

        v127 = v177 + ~v12;
        if (v127 < 1)
        {
          v10 = 0;
          v176 = 2;
          if (v126 + v12 >= 0)
          {
            v30 = 0;
            goto LABEL_285;
          }

          v153 = v27;
          v152 = 0;
          goto LABEL_283;
        }

        v128 = v27;
        v10 = 0;
        v176 = 2;
      }

      else
      {
        v128 = v27;
      }

      memset((a2 + v12), 32, v127);
      v30 = 0;
      v12 = (v12 + v127);
      v27 = v128;
      goto LABEL_281;
    }

    if (v34 - 2 >= 3)
    {
      if (v34 == 1)
      {
        goto LABEL_108;
      }

      v10 = v177;
      if (v34 != 5)
      {
        goto LABEL_320;
      }

      v54 = 0;
      v30 = 0;
      v32 = 0;
      v61 = v178++;
      **v61 = v12;
      v14 = &byte_1C37B1852;
LABEL_287:
      v154 = v30 - v32;
      if (v30 - v32 < 1 || v27)
      {
        v155 = (v32 + v12);
        if (v155 >= v10)
        {
          v10 = 0;
          v176 = 2;
        }

        else
        {
          v156 = v32;
          v157 = v27;
          memcpy((a2 + v12), v13, v156);
          v27 = v157;
          v12 = v155;
        }

        if (v154 >= 1)
        {
          if (v27)
          {
            if (v12 + v154 < v10 || !v176 && (v154 = v10 + ~v12, v176 = 2, v10 = 0, v154 >= 1))
            {
              memset((a2 + v12), 32, v154);
              v12 = (v12 + v154);
            }
          }
        }
      }

      else
      {
        if (v154 + v12 < v10 || !v176 && (v154 = v10 + ~v12, v176 = 2, v10 = 0, v154 >= 1))
        {
          memset((a2 + v12), 32, v154);
          v12 = (v12 + v154);
        }

        if (v12 + v32 >= v10)
        {
          v10 = 0;
          v176 = 2;
        }

        else
        {
          memcpy((a2 + v12), v13, v32);
          v12 = (v12 + v32);
        }
      }

      if (v54)
      {
        luaM_realloc_(a1, v54, 1, 0);
      }

      __src = v28 + 1;
      continue;
    }

    break;
  }

  v35 = v178++;
  v36 = *v35;
  if (v31 < 0)
  {
    v31 = 6;
  }

  v37 = v25 == 0;
  v38 = !v37;
  v39 = 32 * v38;
  v40 = v26 == 0;
  v41 = "+Inf";
  if (v40)
  {
    v41 = "Inf";
  }

  if (!v40)
  {
    v37 = 0;
    v38 = 1;
    v39 = 43;
  }

  v42 = -v36;
  if (v36 < 0.0)
  {
    v13 = "-Inf";
  }

  else
  {
    v13 = v41;
  }

  if (v36 < 0.0)
  {
    v43 = 0;
  }

  else
  {
    v42 = v36;
    v43 = v37;
  }

  if (v36 < 0.0)
  {
    v44 = 1;
  }

  else
  {
    v44 = v38;
  }

  v163 = v44;
  if (v36 < 0.0)
  {
    v45 = 45;
  }

  else
  {
    v45 = v39;
  }

  v46 = v34 != 4 || v31 <= 0;
  v47 = !v46;
  v48 = v31 - v47;
  if (((v31 - v47) & 0xFFF) != 0)
  {
    v49 = (v48 & 0xFFF) + 1;
    v50 = 0.5;
    do
    {
      v50 = v50 * 0.1;
      --v49;
    }

    while (v49 > 1);
  }

  else
  {
    v50 = 0.5;
  }

  if (v34 == 2)
  {
    v80 = v42 + v50;
  }

  else
  {
    v80 = v42;
  }

  if (v80 <= 0.0)
  {
    v94 = 0;
  }

  else
  {
    v81 = 1.0;
    v82 = -100;
    v83 = -64;
    v84 = -8;
    v85 = -1;
    do
    {
      v86 = v81;
      v87 = v83;
      v88 = v84;
      v89 = v85;
      v81 = v81 * 1.0e100;
      if (v80 < v81)
      {
        break;
      }

      v82 += 100;
      v83 += 100;
      v84 += 100;
      v85 += 100;
    }

    while (v82 < 0x15F);
    do
    {
      v90 = v86;
      v91 = v88;
      v92 = v89;
      v86 = v86 * 1.0e64;
      if (v80 < v86)
      {
        break;
      }

      v87 += 64;
      v88 += 64;
      v89 += 64;
    }

    while (v87 < 0x15F);
    do
    {
      v93 = v90;
      v94 = v92;
      v90 = v90 * 100000000.0;
      if (v80 < v90)
      {
        break;
      }

      v91 += 8;
      v92 += 8;
    }

    while (v91 < 0x15F);
    do
    {
      v95 = v93;
      ++v94;
      v93 = v93 * 10.0;
    }

    while (v80 >= v93 && v94 < 0x15F);
    v80 = v80 / v95;
    while (v80 < 0.00000001)
    {
      v80 = v80 * 100000000.0;
      v94 -= 8;
    }

    while (v80 < 1.0)
    {
      v80 = v80 * 10.0;
      --v94;
    }

    if (v94 >= 351)
    {
      v96 = v27;
      v97 = v30;
      v98 = strlen(v13);
      v30 = v97;
      v27 = v96;
      v54 = 0;
      v32 = v98 & 0x3FFFFFFF;
      v14 = &byte_1C37B1852;
      v10 = v177;
      goto LABEL_287;
    }
  }

  v167 = v12;
  if (v34 == 2)
  {
    goto LABEL_178;
  }

  v99 = v50 + v80;
  if (v99 < 10.0)
  {
    v80 = v99;
  }

  else
  {
    v80 = v99 * 0.1;
  }

  if (v99 >= 10.0)
  {
    ++v94;
  }

  if (v34 != 4)
  {
LABEL_178:
    v100 = v22 != 0;
    v102 = v34 == 3;
    if (v34 == 3)
    {
      v103 = 0;
    }

    else
    {
      v103 = v94;
    }
  }

  else
  {
    v100 = v24 == 0;
    v102 = v94 < -4 || v94 > v48;
    if (v102)
    {
      v103 = 0;
    }

    else
    {
      v103 = v94;
    }

    v48 -= v103;
  }

  v174 = a2;
  v104 = (v103 & ~(v103 >> 31)) + v30 + v48;
  if (v104 < 56)
  {
    v166 = 0;
    v13 = v179;
    goto LABEL_185;
  }

  v169 = v43;
  v164 = v48;
  v161 = v45;
  v172 = v27;
  v105 = v30;
  v106 = v102;
  v107 = v100;
  v108 = luaM_realloc_(a1, 0, 0, (v104 + 15));
  v100 = v107;
  v102 = v106;
  v43 = v169;
  v45 = v161;
  v48 = v164;
  v30 = v105;
  v27 = v172;
  v13 = v108;
  v166 = v108;
  if (v108)
  {
LABEL_185:
    v109 = v13;
    if (!v43)
    {
      *v13 = v45;
      v109 = v13 + 1;
    }

    v110 = 10 * v22 + 16;
    if (v103 < 0)
    {
      *v109++ = 48;
      v114 = v103 + 1;
    }

    else
    {
      v111 = v103 + 1;
      do
      {
        if (v110 < 1)
        {
          v113 = 48;
        }

        else
        {
          v112 = v80;
          v80 = (v80 - v80) * 10.0;
          v113 = v112 + 48;
          --v110;
        }

        *v109++ = v113;
        --v111;
      }

      while (v111 > 0);
      v114 = 0;
    }

    v129 = v24 | v22 | (v48 > 0);
    if (v129)
    {
      *v109++ = 46;
    }

    v10 = v177;
    if (v114 < 0)
    {
      v165 = v48;
      v173 = v27;
      v170 = v30;
      v160 = v100;
      v162 = v102;
      v159 = v129;
      memset(v109, 48, ~v114 + 1);
      v129 = v159;
      v100 = v160;
      v102 = v162;
      v48 = v165;
      v30 = v170;
      v27 = v173;
      v109 += ~v114 + 1;
      v10 = v177;
      v130 = v114 + v165;
    }

    else
    {
      v130 = v48;
    }

    if (v130 < 1)
    {
      v12 = v167;
    }

    else
    {
      v131 = v48 + (v114 & (v114 >> 31)) + 1;
      v12 = v167;
      do
      {
        if (v110 < 1)
        {
          v133 = 48;
        }

        else
        {
          v132 = v80;
          v80 = (v80 - v80) * 10.0;
          v133 = v132 + 48;
          --v110;
        }

        *v109++ = v133;
        --v131;
      }

      while (v131 > 1);
    }

    if (v129)
    {
      v134 = v100;
    }

    else
    {
      v134 = 0;
    }

    if (v134)
    {
      --v109;
      while (1)
      {
        v135 = *v109;
        if (v135 != 48)
        {
          break;
        }

        *v109-- = 0;
      }

      if (v135 == 46)
      {
        if (v22)
        {
          v109[1] = 48;
          v109 += 2;
        }

        else
        {
          *v109 = 0;
        }
      }

      else
      {
        ++v109;
      }
    }

    v54 = v166;
    if (v102)
    {
      *v109 = aDigits[v14[2]];
      if (v94 >= 0)
      {
        v145 = 43;
      }

      else
      {
        v145 = 45;
      }

      if (v94 >= 0)
      {
        v146 = v94;
      }

      else
      {
        v146 = -v94;
      }

      v109[1] = v145;
      if (v146 < 0x64)
      {
        v147 = v109 + 2;
      }

      else
      {
        v147 = v109 + 3;
        v109[2] = v146 / 0x64 + 48;
        v146 %= 0x64u;
      }

      v14 = &byte_1C37B1852;
      *v147 = (v146 / 0xAu) | 0x30;
      v109 = v147 + 2;
      v147[1] = (v146 % 0xAu) | 0x30;
    }

    else
    {
      v14 = &byte_1C37B1852;
    }

    *v109 = 0;
    v32 = v109 - v13;
    if (v23 && !v27 && v30 > v32)
    {
      if ((v32 & 0x80000000) == 0)
      {
        v148 = v30;
        v149 = v32;
        do
        {
          v13[v148] = v13[v149--];
          v46 = v148-- <= v30 - v32;
        }

        while (!v46);
      }

      if (v30 != v32)
      {
        v150 = v27;
        v151 = v30;
        memset(&v13[v163], 48, (~v109 + v30 + v13) + 1);
        v30 = v151;
        v27 = v150;
      }

      v32 = v30;
    }

    goto LABEL_278;
  }

  a2 = v174;
  v12 = v167;
  if (!v174)
  {
    return v12;
  }

LABEL_321:
  *(a2 + v12) = 0;
  return v12;
}

uint64_t LuaStateFactoryMemLog_Con(void *a1, uint64_t a2)
{
  result = Object_Con(a1);
  if (!result)
  {
    *a1 = &__LuaStateFactoryMemLog;
    a1[1] = &unk_1F42D1318;
    a1[2] = a2;
  }

  return result;
}

uint64_t LuaStateFactoryMemLog_CreateLuaState(uint64_t a1, uint64_t *a2)
{
  v3 = lua_newstate(__LuaStateFactory_CustomAlloc, *(a1 + 16));
  *a2 = v3;
  if (v3)
  {
    return 0;
  }

  return kaldi::nnet1::UpdatableComponent::IsUpdatable(0);
}

uint64_t __LuaStateFactory_CustomAlloc(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result)
  {
    if (a4)
    {
      if (a2)
      {
        v4 = 0;
        result = OOCAllocator_Realloc(result, a2, a4, &v4);
        if (!v4)
        {
          return result;
        }
      }

      else
      {
        v5 = 0;
        result = OOCAllocator_Malloc(result, a4, &v5);
        if (!v5)
        {
          return result;
        }
      }
    }

    else
    {
      OOCAllocator_Free(result, a2);
    }

    return 0;
  }

  return result;
}

uint64_t LuaStateFactoryMemLog_CreateLuaStateWithMemoryLogging(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = lua_newstate(__LuaStateFactory_CustomAllocMemLog, a3);
  *a2 = v4;
  if (v4)
  {
    return 0;
  }

  return kaldi::nnet1::UpdatableComponent::IsUpdatable(0);
}

uint64_t __LuaStateFactory_CustomAllocMemLog(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v10 = 0;
  result = *(a1 + 8);
  if (result)
  {
    v6 = a4;
    if (a4)
    {
      if (a2)
      {
        result = OOCAllocator_Realloc(result, a2, a4, &v10);
        if (!v10)
        {
          v6 -= a3;
          goto LABEL_10;
        }
      }

      else
      {
        result = OOCAllocator_Malloc(result, a4, &v10);
        if (!v10)
        {
LABEL_10:
          v8 = *(a1 + 4);
          v9 = *a1 + v6;
          *a1 = v9;
          if (v8 < v9)
          {
            *(a1 + 4) = v9;
          }

          return result;
        }
      }
    }

    else
    {
      *a1 -= a3;
      OOCAllocator_Free(result, a2);
    }

    return 0;
  }

  return result;
}

uint64_t getOOCObject_LuaLDO(void *a1, uint64_t a2, void *a3)
{
  v4 = luaL_checkudata(a1, a2, "vocalizer.LDO");
  if (v4)
  {
    *a3 = *v4;
    return 0;
  }

  else
  {

    return kaldi::OffsetFileInputImpl::MyType("lua_stack_arg");
  }
}

uint64_t getRoot_LuaLDO(uint64_t *a1)
{
  v4 = 0;
  if (!getOOCObject_LuaLDO(a1, 1, &v4))
  {
    v3 = *(v4 + 16);
    if (v3)
    {
      if (!pushLuaObject_LuaLDOTreeNode(a1, v3))
      {
        return 1;
      }
    }
  }

  return LuaVMUtil_error(a1, "Error in ldo:getRoot");
}

uint64_t getInitialText_LuaLDO(void *a1)
{
  v4 = 0;
  if (getOOCObject_LuaLDO(a1, 1, &v4))
  {

    return LuaVMUtil_error(a1, "Error in ldo:getInitialText");
  }

  else
  {
    v3 = fst::FstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::Properties(*(v4 + 24));
    lua_pushstring(a1, v3);
    return 1;
  }
}

uint64_t computeText_LuaLDO(void *a1)
{
  v6 = 0;
  v7 = 0;
  if (getOOCObject_LuaLDO(a1, 1, &v7))
  {
    return LuaVMUtil_error(a1, "Error in ldo:computeText");
  }

  v2 = LDO_ComputeText(v7, &v6);
  v3 = v6;
  if (v2)
  {
    if (!v6)
    {
      return LuaVMUtil_error(a1, "Error in ldo:computeText");
    }

LABEL_4:
    v4 = LDOString_BorrowAllocator(v3);
    OOC_PlacementDeleteObject(v4, v6);
    v6 = 0;
    return LuaVMUtil_error(a1, "Error in ldo:computeText");
  }

  if (LuaVMUtil_pushLuaStringAndDestroy(a1, v6))
  {
    v3 = v6;
    if (!v6)
    {
      return LuaVMUtil_error(a1, "Error in ldo:computeText");
    }

    goto LABEL_4;
  }

  return 1;
}

uint64_t getLabelSet_LuaLDO(uint64_t *a1)
{
  v3 = 0;
  if (!getOOCObject_LuaLDO(a1, 1, &v3) && !pushLuaObject_LuaLDOLabelSet(a1, *(v3 + 32)))
  {
    return 1;
  }

  return LuaVMUtil_error(a1, "Error in ldo:getLabelSet");
}

uint64_t getLabels_LuaLDO(uint64_t *a1)
{
  v9 = 0;
  if (getOOCObject_LuaLDO(a1, 1, &v9))
  {
    return LuaVMUtil_error(a1, "Error in ldo:getLabels");
  }

  LDO_GetLabels(v9, &v7);
  v3 = v7.n128_u64[1];
  v4 = v8;
  lua_createtable(a1, 0, 0);
  if (v3 < v4)
  {
    v5 = 0;
    while (!pushLuaObject_LuaLDOLabel(a1, *v3))
    {
      v6 = LuaVMUtil_u32_index_to_luainteger(v5);
      lua_rawseti(a1, 0xFFFFFFFE, v6);
      ++v5;
      if (++v3 >= v4)
      {
        return 1;
      }
    }

    return LuaVMUtil_error(a1, "Error in ldo:getLabels");
  }

  return 1;
}

uint64_t setText_LuaLDO(void *a1)
{
  v6 = 0;
  v7 = 0;
  __s = 0;
  if (getOOCObject_LuaLDO(a1, 1, &v7) || getOOCObject_LuaLDOTreeNode(a1, 2, &v6) || LuaVMUtil_luastring_to_string(a1, 3u, &__s) || !__s || LDO_SetText(v7, v6, __s))
  {
    return LuaVMUtil_error(a1, "Error in ldo:setText");
  }

  v2 = 1;
  v4 = LuaVMUtil_lhBOOL_to_luaBOOLean(1);
  lua_pushBOOLean(a1, v4);
  return v2;
}

uint64_t addLabel_LuaLDO(uint64_t *a1)
{
  v19 = 0;
  v20 = 0;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v14 = 0;
  v15 = 0;
  v13 = 0;
  OOCObject_LuaLDO = getOOCObject_LuaLDO(a1, 1, &v20);
  if (OOCObject_LuaLDO)
  {
    goto LABEL_2;
  }

  if (lua_type(a1, 2u))
  {
    OOCObject_LuaLDO = LuaVMUtil_luastring_to_string(a1, 2u, &v14);
    if (OOCObject_LuaLDO)
    {
      goto LABEL_2;
    }
  }

  if (lua_type(a1, 3u))
  {
    OOCObject_LuaLDO = LuaVMUtil_luastring_to_string(a1, 3u, &v13);
    if (OOCObject_LuaLDO)
    {
      goto LABEL_2;
    }
  }

  LODWORD(v16) = 0;
  v17 = 0;
  v18 = 0;
  lua_pushnil(a1);
  if (lua_next(a1, 4u))
  {
    v3 = 0;
    v4 = 0;
    v5 = 0;
    v6 = v20;
    do
    {
      v7 = lua_gettop(a1);
      OOCObject_LuaLDO = getOOCObject_LuaLDOTreeNode(a1, v7, &v15);
      if (OOCObject_LuaLDO)
      {
        goto LABEL_2;
      }

      v8 = v5 - v4;
      v9 = ((v5 - v4) >> 3) + 1;
      if (v9 > v3)
      {
        v10 = 2 * v3;
        if (2 * v3 >= v3 + 1000000)
        {
          v10 = v3 + 1000000;
        }

        if (v10 > v9)
        {
          v9 = v10;
        }

        if (v9 <= 8)
        {
          v3 = 8;
        }

        else
        {
          v3 = v9;
        }

        v11 = OOCAllocator_Realloc(*(v6 + 8), v4, 8 * v3, &OOCObject_LuaLDO);
        v17 = v11;
        if (OOCObject_LuaLDO)
        {
          goto LABEL_2;
        }

        v4 = v11;
        LODWORD(v16) = v3;
        v5 = (v11 + (v8 & 0x7FFFFFFF8));
        v18 = v5;
      }

      *v5 = v15;
      v5 = ++v18;
      lua_settop(a1, -2);
    }

    while (lua_next(a1, 4u));
  }

  v12 = v20;
  OOCObject_LuaLDO = LDO_AddLabel(v20, v14, v13, &v16, &v19);
  if (OOCObject_LuaLDO || (OOCObject_LuaLDO = pushLuaObject_LuaLDOLabel(a1, v19)) != 0)
  {
LABEL_2:
    LODWORD(v16) = 0;
    if (v17)
    {
      OOCAllocator_Free(*(v20 + 8), v17);
      v17 = 0;
    }

    v18 = 0;
    return LuaVMUtil_error(a1, "Error in ldo:addLabel");
  }

  LODWORD(v16) = 0;
  if (v17)
  {
    OOCAllocator_Free(*(v12 + 8), v17);
  }

  return 1;
}

uint64_t removeLabel_LuaLDO(void *a1)
{
  v5 = 0;
  v6 = 0;
  if (getOOCObject_LuaLDO(a1, 1, &v6) || getOOCObject_LuaLDOLabel(a1, 2, &v5) || LDO_RemoveLabel(v6, v5))
  {
    return LuaVMUtil_error(a1, "Error in ldo:removeLabel");
  }

  v2 = 1;
  v4 = LuaVMUtil_lhBOOL_to_luaBOOLean(1);
  lua_pushBOOLean(a1, v4);
  return v2;
}

uint64_t computeOverlappingLabels_LuaLDO(uint64_t *a1)
{
  v13 = 0;
  v14 = 0;
  v11 = 0;
  v12 = 0;
  v10 = 0;
  v9 = 0;
  if (getOOCObject_LuaLDO(a1, 1, &v14))
  {
    return LuaVMUtil_error(a1, "Error in ldo:computeOverlappingLabels");
  }

  if (lua_type(a1, 2u))
  {
    v3 = &v10 + 1;
    if (LuaVMUtil_luainteger_to_u32_index(a1, 2u, &v10 + 1))
    {
      return LuaVMUtil_error(a1, "Error in ldo:computeOverlappingLabels");
    }
  }

  else
  {
    v3 = 0;
  }

  if (lua_type(a1, 3u))
  {
    v4 = &v10;
    if (!LuaVMUtil_luainteger_to_u32_index(a1, 3u, &v10))
    {
      goto LABEL_11;
    }

    return LuaVMUtil_error(a1, "Error in ldo:computeOverlappingLabels");
  }

  v4 = 0;
LABEL_11:
  if (LuaVMUtil_luaBOOLean_to_lhBOOL(a1, 4u, &v9))
  {
    return LuaVMUtil_error(a1, "Error in ldo:computeOverlappingLabels");
  }

  v5 = v14;
  if (LDO_ComputeOverlappingLabels(v14, v3, v4, v9, &v11))
  {
    return LuaVMUtil_error(a1, "Error in ldo:computeOverlappingLabels");
  }

  lua_createtable(a1, 0, 0);
  v6 = v12;
  if (v12 < v13)
  {
    v7 = 0;
    while (!pushLuaObject_LuaLDOLabel(a1, *v6))
    {
      v8 = LuaVMUtil_u32_index_to_luainteger(v7);
      lua_rawseti(a1, 0xFFFFFFFE, v8);
      ++v7;
      if (++v6 >= v13)
      {
        goto LABEL_17;
      }
    }

    goto LABEL_18;
  }

LABEL_17:
  if (LDO_FreeLDOLabelVector(v5, &v11))
  {
LABEL_18:
    LDO_FreeLDOLabelVector(v5, &v11);
    return LuaVMUtil_error(a1, "Error in ldo:computeOverlappingLabels");
  }

  return 1;
}

uint64_t appendNewNode_LuaLDO(uint64_t *a1)
{
  v8 = 0;
  v6 = 0;
  v7 = 0;
  v4 = 0;
  v5 = 0;
  v3 = 0;
  if (getOOCObject_LuaLDO(a1, 1, &v8) || getOOCObject_LuaLDOTreeNode(a1, 2, &v7) || lua_type(a1, 3u) && LuaVMUtil_luastring_to_string(a1, 3u, &v5) || lua_type(a1, 4u) && LuaVMUtil_luastring_to_string(a1, 4u, &v4) || LuaVMUtil_luainteger_to_u32_index(a1, 5u, &v3 + 1) || LuaVMUtil_luainteger_to_u32_index(a1, 6u, &v3) || LDO_AppendNewNode(v8, v7, v5, v4, HIDWORD(v3), v3, &v6) || pushLuaObject_LuaLDOTreeNode(a1, v6))
  {
    return LuaVMUtil_error(a1, "Error in ldo:appendNewNode");
  }

  else
  {
    return 1;
  }
}

uint64_t addLabelOnSubstring_LuaLDO(uint64_t *a1)
{
  v8 = 0;
  v9 = 0;
  v6 = 0;
  v7 = 0;
  v5 = 0;
  if (getOOCObject_LuaLDO(a1, 1, &v9) || lua_type(a1, 2u) && LuaVMUtil_luastring_to_string(a1, 2u, &v7) || lua_type(a1, 3u) && LuaVMUtil_luastring_to_string(a1, 3u, &v6))
  {
    return LuaVMUtil_error(a1, "Error in ldo:addLabelOnSubstring");
  }

  if (lua_type(a1, 4u))
  {
    v3 = &v5 + 1;
    if (LuaVMUtil_luainteger_to_u32_index(a1, 4u, &v5 + 1))
    {
      return LuaVMUtil_error(a1, "Error in ldo:addLabelOnSubstring");
    }
  }

  else
  {
    v3 = 0;
  }

  if (lua_type(a1, 5u))
  {
    v4 = &v5;
    if (!LuaVMUtil_luainteger_to_u32_index(a1, 5u, &v5))
    {
      goto LABEL_15;
    }

    return LuaVMUtil_error(a1, "Error in ldo:addLabelOnSubstring");
  }

  v4 = 0;
LABEL_15:
  if (LDO_AddLabelOnSubstring(v9, v7, v6, v3, v4, &v8) || pushLuaObject_LuaLDOLabel(a1, v8))
  {
    return LuaVMUtil_error(a1, "Error in ldo:addLabelOnSubstring");
  }

  return 1;
}

uint64_t getNumberLabels_LuaLDO(void *a1)
{
  v4 = 0;
  if (getOOCObject_LuaLDO(a1, 1, &v4))
  {

    return LuaVMUtil_error(a1, "Error in ldo:getNumberLabels");
  }

  else
  {
    NumberLabels = LDO_GetNumberLabels(v4);
    lua_pushinteger(a1, NumberLabels);
    return 1;
  }
}

uint64_t mergeLabels_LuaLDO(uint64_t *a1)
{
  v19 = 0;
  v20 = 0;
  v17 = 0;
  v18 = 0;
  v15 = 0;
  v16 = 0;
  v13 = 0;
  v14 = 0;
  OOCObject_LuaLDO = getOOCObject_LuaLDO(a1, 1, &v20);
  if (OOCObject_LuaLDO)
  {
    goto LABEL_2;
  }

  if (lua_type(a1, 2u))
  {
    OOCObject_LuaLDO = LuaVMUtil_luastring_to_string(a1, 2u, &v14);
    if (OOCObject_LuaLDO)
    {
      goto LABEL_2;
    }
  }

  if (lua_type(a1, 3u))
  {
    OOCObject_LuaLDO = LuaVMUtil_luastring_to_string(a1, 3u, &v13);
    if (OOCObject_LuaLDO)
    {
      goto LABEL_2;
    }
  }

  LODWORD(v15) = 0;
  v16 = 0;
  v17 = 0;
  lua_pushnil(a1);
  if (lua_next(a1, 4u))
  {
    v3 = 0;
    v4 = 0;
    v5 = 0;
    v6 = v20;
    do
    {
      v7 = lua_gettop(a1);
      OOCObject_LuaLDO = getOOCObject_LuaLDOLabel(a1, v7, &v19);
      if (OOCObject_LuaLDO)
      {
        goto LABEL_2;
      }

      v8 = v5 - v4;
      v9 = ((v5 - v4) >> 3) + 1;
      if (v9 > v3)
      {
        v10 = 2 * v3;
        if (2 * v3 >= v3 + 1000000)
        {
          v10 = v3 + 1000000;
        }

        if (v10 > v9)
        {
          v9 = v10;
        }

        if (v9 <= 8)
        {
          v3 = 8;
        }

        else
        {
          v3 = v9;
        }

        v11 = OOCAllocator_Realloc(*(v6 + 8), v4, 8 * v3, &OOCObject_LuaLDO);
        v16 = v11;
        if (OOCObject_LuaLDO)
        {
          goto LABEL_2;
        }

        v4 = v11;
        LODWORD(v15) = v3;
        v5 = (v11 + (v8 & 0x7FFFFFFF8));
        v17 = v5;
      }

      *v5 = v19;
      v5 = ++v17;
      lua_settop(a1, -2);
    }

    while (lua_next(a1, 4u));
  }

  v12 = v20;
  OOCObject_LuaLDO = LDO_MergeLabels(v20, &v15, v14, v13, &v18);
  if (OOCObject_LuaLDO || (OOCObject_LuaLDO = pushLuaObject_LuaLDOLabel(a1, v18)) != 0)
  {
LABEL_2:
    LODWORD(v15) = 0;
    if (v16)
    {
      OOCAllocator_Free(*(v20 + 8), v16);
      v16 = 0;
    }

    v17 = 0;
    return LuaVMUtil_error(a1, "Error in ldo:mergeLabels");
  }

  LODWORD(v15) = 0;
  if (v16)
  {
    OOCAllocator_Free(*(v12 + 8), v16);
  }

  return 1;
}

uint64_t replaceNodes_LuaLDO(uint64_t *a1)
{
  v53 = 0;
  v54 = 0;
  v46 = 0;
  v47 = 0;
  v44 = 0;
  v45 = 0;
  v42 = 0;
  v43 = 0;
  v51 = 0;
  v52 = 0;
  v48 = 0;
  v49 = 0;
  v50 = 0;
  OOCObject_LuaLDO = getOOCObject_LuaLDO(a1, 1, &v54);
  if (OOCObject_LuaLDO)
  {
    goto LABEL_2;
  }

  lua_pushnil(a1);
  v4 = lua_next(a1, 2u);
  v5 = v54;
  if (v4)
  {
    do
    {
      v6 = lua_gettop(a1);
      OOCObject_LuaLDO = getOOCObject_LuaLDOTreeNode(a1, v6, &v47);
      if (OOCObject_LuaLDO)
      {
        goto LABEL_2;
      }

      v7 = v53;
      v8 = v53 - v52;
      v9 = ((v53 - v52) >> 3) + 1;
      if (v9 > v51)
      {
        v10 = 2 * v51;
        if (2 * v51 >= (v51 + 1000000))
        {
          v10 = v51 + 1000000;
        }

        if (v10 <= v9)
        {
          v10 = ((v53 - v52) >> 3) + 1;
        }

        if (v10 <= 8)
        {
          v11 = 8;
        }

        else
        {
          v11 = v10;
        }

        v12 = OOCAllocator_Realloc(v5[1], v52, 8 * v11, &OOCObject_LuaLDO);
        v2 = v12;
        v52 = v12;
        if (OOCObject_LuaLDO)
        {
          goto LABEL_3;
        }

        LODWORD(v51) = v11;
        v7 = (v12 + (v8 & 0x7FFFFFFF8));
        v53 = v7;
      }

      *v7 = v47;
      ++v53;
      lua_settop(a1, -2);
    }

    while (lua_next(a1, 2u));
  }

  lua_pushnil(a1);
  if (!lua_next(a1, 3u))
  {
    goto LABEL_94;
  }

  do
  {
    v46 = 0;
    v13 = lua_gettop(a1);
    if (lua_type(a1, v13) != 5)
    {
      v16 = v46;
      goto LABEL_29;
    }

    v14 = PNEW_LDOTreeNode_ConRoot(v5[1], v5[1], "", 0, 0, &v46);
    if (v14)
    {
LABEL_24:
      v15 = v14;
LABEL_25:
      v16 = v46;
      if (v46)
      {
LABEL_26:
        OOC_PlacementDeleteObject(v5[1], v16);
        v46 = 0;
        OOCObject_LuaLDO = v15;
        if (!v15)
        {
          goto LABEL_41;
        }
      }

      else
      {
        OOCObject_LuaLDO = v15;
      }

LABEL_2:
      v2 = v52;
LABEL_3:
      LODWORD(v51) = 0;
      if (v2)
      {
        OOCAllocator_Free(v54[1], v2);
        v52 = 0;
      }

      v53 = 0;
      LODWORD(v48) = 0;
      if (v49)
      {
        OOCAllocator_Free(v54[1], v49);
        v49 = 0;
      }

      v50 = 0;
      return LuaVMUtil_error(a1, "Error in ldo:replaceNodes");
    }

    lua_pushnil(a1);
    if (!lua_next(a1, v13))
    {
      v37 = 1;
      goto LABEL_91;
    }

    v23 = 0;
    do
    {
      if (!lua_isstring(a1, 0xFFFFFFFE))
      {
        goto LABEL_65;
      }

      v24 = lua_tolstring(a1, 0xFFFFFFFE, 0);
      if (!v24)
      {
        goto LABEL_65;
      }

      v25 = v24;
      if (lua_isinteger(a1, 0xFFFFFFFF))
      {
        v56 = 0;
        if (strcmp(v25, "par_from") || (v29 = LuaVMUtil_luainteger_to_u32_index(a1, 0xFFFFFFFF, &v56 + 1)) == 0 && (LDOObject_SetU32Attribute(v46, "repl_from", SHIDWORD(v56)), !v29))
        {
          if (strcmp(v25, "par_to"))
          {
            goto LABEL_65;
          }

          v29 = LuaVMUtil_luainteger_to_u32_index(a1, 0xFFFFFFFF, &v56);
          if (!v29)
          {
            LDOObject_SetU32Attribute(v46, "repl_to", v56);
          }
        }

LABEL_64:
        v15 = v29;
        if (v29)
        {
          goto LABEL_25;
        }

        goto LABEL_65;
      }

      if (lua_isstring(a1, 0xFFFFFFFF))
      {
        v26 = lua_tolstring(a1, 0xFFFFFFFF, 0);
        if (!v26)
        {
          goto LABEL_65;
        }

        v27 = v26;
        if (strcmp(v25, "text"))
        {
          if (*v25 != 110)
          {
            goto LABEL_65;
          }

          v28 = *(v25 + 1);
          if (v28 == 116)
          {
            if (*(v25 + 2))
            {
              goto LABEL_65;
            }

            v29 = LDOObject_SetType(v46, v27);
          }

          else
          {
            if (v28 != 99 || *(v25 + 2))
            {
              goto LABEL_65;
            }

            v29 = LDOObject_SetCategory(v46, v27);
          }

          goto LABEL_64;
        }

        v14 = LDOTreeNode_SetText(v46, v27);
        if (v14)
        {
          goto LABEL_24;
        }

        v23 = 1;
      }

      else if (lua_type(a1, 0xFFFFFFFF) == 5 && !strcmp(v25, "attr"))
      {
        v30 = lua_gettop(a1);
        lua_pushnil(a1);
        while (lua_next(a1, v30))
        {
          if (!lua_isstring(a1, 0xFFFFFFFE))
          {
            break;
          }

          v31 = lua_tolstring(a1, 0xFFFFFFFE, 0);
          if (!v31)
          {
            break;
          }

          v32 = v31;
          if (lua_isinteger(a1, 0xFFFFFFFF))
          {
            v33 = lua_tointegerx(a1, 0xFFFFFFFF, 0);
            v34 = v46;
            v35 = v32;
            if ((v33 & 0x80000000) == 0)
            {
              goto LABEL_78;
            }

            LDOObject_SetS32Attribute(v46, v32, v33);
            if (v14)
            {
              goto LABEL_24;
            }
          }

          else if (lua_type(a1, 0xFFFFFFFF) == 1)
          {
            v33 = lua_toBOOLean(a1, 0xFFFFFFFF) == 1;
            v34 = v46;
            v35 = v32;
LABEL_78:
            LDOObject_SetU32Attribute(v34, v35, v33);
            if (v14)
            {
              goto LABEL_24;
            }
          }

          else if (lua_isstring(a1, 0xFFFFFFFF))
          {
            v36 = lua_tolstring(a1, 0xFFFFFFFF, 0);
            if (!v36)
            {
              break;
            }

            v14 = LDOObject_SetStringAttribute(v46, v32, v36);
            if (v14)
            {
              goto LABEL_24;
            }
          }

          lua_settop(a1, -2);
          continue;
        }
      }

LABEL_65:
      lua_settop(a1, -2);
    }

    while (lua_next(a1, v13));
    v37 = v23 != 1;
LABEL_91:
    v16 = v46;
    if (v46 && v37)
    {
      v15 = 0;
      goto LABEL_26;
    }

LABEL_29:
    OOCObject_LuaLDO = 0;
    if (!v16)
    {
      goto LABEL_41;
    }

    v17 = v50;
    v18 = v50 - v49;
    v19 = ((v50 - v49) >> 3) + 1;
    if (v19 <= v48)
    {
      goto LABEL_40;
    }

    v20 = 2 * v48;
    if (2 * v48 >= (v48 + 1000000))
    {
      v20 = v48 + 1000000;
    }

    if (v20 <= v19)
    {
      v20 = ((v50 - v49) >> 3) + 1;
    }

    if (v20 <= 8)
    {
      v21 = 8;
    }

    else
    {
      v21 = v20;
    }

    v22 = OOCAllocator_Realloc(v5[1], v49, 8 * v21, &OOCObject_LuaLDO);
    v49 = v22;
    if (OOCObject_LuaLDO)
    {
      goto LABEL_2;
    }

    LODWORD(v48) = v21;
    v17 = (v22 + (v18 & 0x7FFFFFFF8));
    v50 = v17;
LABEL_40:
    *v17 = v46;
    v50 += 8;
LABEL_41:
    lua_settop(a1, -2);
  }

  while (lua_next(a1, 3u));
LABEL_94:
  OOCObject_LuaLDO = LDO_ReplaceNodes(v5, &v51, &v48);
  if (OOCObject_LuaLDO)
  {
    goto LABEL_2;
  }

  v38 = v49;
  if (v49 < v50)
  {
    do
    {
      OOCObject_LuaLDO = LDOObject_GetStringAttribute(*v38, "label_category", &v45 + 1, &v43);
      if (OOCObject_LuaLDO)
      {
        goto LABEL_2;
      }

      if (!HIDWORD(v45))
      {
        v43 = 0;
      }

      OOCObject_LuaLDO = LDOObject_GetStringAttribute(*v38, "label_type", &v45, &v42);
      if (OOCObject_LuaLDO)
      {
        goto LABEL_2;
      }

      if (!v45)
      {
        v42 = 0;
      }

      if (v45 == 1 || HIDWORD(v45) == 1)
      {
        OOCObject_LuaLDO = LDOTreeNode_ComputeAbsoluteFrom(*v38, &v44 + 1);
        if (OOCObject_LuaLDO)
        {
          goto LABEL_2;
        }

        OOCObject_LuaLDO = LDOTreeNode_ComputeAbsoluteTo(*v38, &v44);
        if (OOCObject_LuaLDO)
        {
          goto LABEL_2;
        }

        OOCObject_LuaLDO = LDOLabelSet_AddLabel(v5[4], 0);
        if (OOCObject_LuaLDO)
        {
          goto LABEL_2;
        }
      }

      ++v38;
    }

    while (v38 < v50);
  }

  lua_createtable(a1, 0, 0);
  v39 = v49;
  if (v49 < v50)
  {
    v40 = 0;
    do
    {
      OOCObject_LuaLDO = pushLuaObject_LuaLDOTreeNode(a1, *v39);
      if (OOCObject_LuaLDO)
      {
        goto LABEL_2;
      }

      v41 = LuaVMUtil_u32_index_to_luainteger(v40);
      lua_rawseti(a1, 0xFFFFFFFE, v41);
      ++v40;
      ++v39;
    }

    while (v39 < v50);
  }

  LODWORD(v51) = 0;
  if (v52)
  {
    OOCAllocator_Free(v5[1], v52);
    v52 = 0;
  }

  v53 = 0;
  LODWORD(v48) = 0;
  if (v49)
  {
    OOCAllocator_Free(v5[1], v49);
  }

  return 1;
}

uint64_t toString_LuaLDO(void *a1)
{
  v6 = 0;
  v7 = 0;
  if (getOOCObject_LuaLDO(a1, 1, &v7))
  {
    return LuaVMUtil_error(a1, "Error in ldo:tostring");
  }

  v2 = LDO_ToString(v7, &v6);
  v3 = v6;
  if (v2)
  {
    if (!v6)
    {
      return LuaVMUtil_error(a1, "Error in ldo:tostring");
    }

LABEL_4:
    v4 = LDOString_BorrowAllocator(v3);
    OOC_PlacementDeleteObject(v4, v6);
    v6 = 0;
    return LuaVMUtil_error(a1, "Error in ldo:tostring");
  }

  if (LuaVMUtil_pushLuaStringAndDestroy(a1, v6))
  {
    v3 = v6;
    if (!v6)
    {
      return LuaVMUtil_error(a1, "Error in ldo:tostring");
    }

    goto LABEL_4;
  }

  return 1;
}

uint64_t computeLabelText_LuaLDO(void *a1)
{
  v6 = 0;
  v7 = 0;
  if (!getOOCObject_LuaLDO(a1, 1, &v8) && !getOOCObject_LuaLDOLabel(a1, 2, &v7))
  {
    v2 = LDOLabel_ComputeText(v7, &v6);
    v3 = v6;
    if (!v2)
    {
      if (!LuaVMUtil_pushLuaStringAndDestroy(a1, v6))
      {
        return 1;
      }

      v3 = v6;
    }

    if (v3)
    {
      v4 = LDOString_BorrowAllocator(v3);
      OOC_PlacementDeleteObject(v4, v6);
      v6 = 0;
    }
  }

  return LuaVMUtil_error(a1, "Error in ldo:get_label_text");
}

uint64_t computeNodesCoveredByLabel_LuaLDO(uint64_t *a1)
{
  v10 = 0;
  v11 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  if (!getOOCObject_LuaLDO(a1, 1, &v11) && !getOOCObject_LuaLDOLabel(a1, 2, &v10))
  {
    v2 = v11;
    if (!LDO_ComputeNodesCoveredByLabel(v11, v10, &v7))
    {
      lua_createtable(a1, 0, 0);
      v3 = v8;
      if (v8 >= v9)
      {
LABEL_8:
        if (!LDO_FreeLDOTreeNodeVector(v2, &v7))
        {
          return 1;
        }
      }

      else
      {
        v4 = 0;
        while (!pushLuaObject_LuaLDOTreeNode(a1, *v3))
        {
          v5 = LuaVMUtil_u32_index_to_luainteger(v4);
          lua_rawseti(a1, 0xFFFFFFFE, v5);
          ++v4;
          if (++v3 >= v9)
          {
            goto LABEL_8;
          }
        }
      }

      LDO_FreeLDOTreeNodeVector(v2, &v7);
    }
  }

  return LuaVMUtil_error(a1, "Error in ldo:get_nodes_covered_by_label");
}

uint64_t luaopen_LDO(void *a1)
{
  newMetatableLua(a1, "vocalizer.LDO");
  lua_pushvalue(a1, 0xFFFFFFFF);
  lua_setfield(a1, 0xFFFFFFFE, "__index");
  luaL_setfuncs(a1, &lib_m, 0);
  lua_createtable(a1, 0, 0);
  lua_setglobal(a1, "LDO");
  return 0;
}

uint64_t getOOCObject_LuaLDOLabel(void *a1, uint64_t a2, void *a3)
{
  v4 = luaL_checkudata(a1, a2, "vocalizer.LDOLabel");
  if (v4)
  {
    *a3 = *v4;
    return 0;
  }

  else
  {

    return kaldi::OffsetFileInputImpl::MyType("lua_stack_arg");
  }
}

uint64_t pushLuaObject_LuaLDOLabel(uint64_t *a1, uint64_t a2)
{
  v4 = lua_newuserdata(a1, 8uLL);
  if (v4)
  {
    *v4 = a2;
    getMetatableLua(a1, "vocalizer.LDOLabel");
    lua_setmetatable(a1, 0xFFFFFFFE);
    return 0;
  }

  else
  {

    return kaldi::nnet1::UpdatableComponent::IsUpdatable(0);
  }
}

uint64_t getAbsoluteFrom_LuaLDOLabel(void *a1)
{
  v5 = 0;
  if (getOOCObject_LuaLDOLabel(a1, 1, &v5))
  {

    return LuaVMUtil_error(a1, "Error in ldolabel:getAbsoluteFrom");
  }

  else
  {
    AbsoluteFrom = LDOLabel_GetAbsoluteFrom(v5);
    v4 = LuaVMUtil_u32_index_to_luainteger(AbsoluteFrom);
    lua_pushinteger(a1, v4);
    return 1;
  }
}

uint64_t getAbsoluteTo_LuaLDOLabel(void *a1)
{
  v5 = 0;
  if (getOOCObject_LuaLDOLabel(a1, 1, &v5))
  {

    return LuaVMUtil_error(a1, "Error in ldolabel:getAbsoluteTo");
  }

  else
  {
    AbsoluteTo = LDOLabel_GetAbsoluteTo(v5);
    v4 = LuaVMUtil_u32_index_to_luainteger(AbsoluteTo);
    lua_pushinteger(a1, v4);
    return 1;
  }
}

uint64_t isValid_LuaLDOLabel(void *a1)
{
  v4 = 0;
  if (getOOCObject_LuaLDOLabel(a1, 1, &v4))
  {

    return LuaVMUtil_error(a1, "Error in ldolabel:isValid");
  }

  else
  {
    v3 = LuaVMUtil_lhBOOL_to_luaBOOLean(*(v4 + 104));
    lua_pushBOOLean(a1, v3);
    return 1;
  }
}

uint64_t invalidate_LuaLDOLabel(void *a1)
{
  v4 = 0;
  if (getOOCObject_LuaLDOLabel(a1, 1, &v4) || LDOLabel_Invalidate(v4))
  {

    return LuaVMUtil_error(a1, "Error in ldolabel:invalidate");
  }

  else
  {
    v3 = LuaVMUtil_lhBOOL_to_luaBOOLean(1);
    lua_pushBOOLean(a1, v3);
    return 1;
  }
}

uint64_t getReferenceFrom_LuaLDOLabel(void *a1)
{
  v4 = 0;
  if (getOOCObject_LuaLDOLabel(a1, 1, &v4))
  {

    return LuaVMUtil_error(a1, "Error in ldolabel:getReferenceFrom");
  }

  else
  {
    v3 = LuaVMUtil_u32_index_to_luainteger(*(v4 + 96));
    lua_pushinteger(a1, v3);
    return 1;
  }
}

uint64_t getReferenceTo_LuaLDOLabel(void *a1)
{
  v4 = 0;
  if (getOOCObject_LuaLDOLabel(a1, 1, &v4))
  {

    return LuaVMUtil_error(a1, "Error in ldolabel:getReferenceTo");
  }

  else
  {
    v3 = LuaVMUtil_u32_index_to_luainteger(*(v4 + 100));
    lua_pushinteger(a1, v3);
    return 1;
  }
}

uint64_t setReferenceFrom_LuaLDOLabel(void *a1)
{
  v6 = 0;
  v5 = 0;
  if (getOOCObject_LuaLDOLabel(a1, 1, &v6) || LuaVMUtil_luainteger_to_u32_index(a1, 2u, &v5) || LDOLabel_SetReferenceFrom(v6, v5))
  {
    return LuaVMUtil_error(a1, "Error in ldolabel:setReferenceFrom");
  }

  v2 = 1;
  v4 = LuaVMUtil_lhBOOL_to_luaBOOLean(1);
  lua_pushBOOLean(a1, v4);
  return v2;
}

uint64_t setReferenceTo_LuaLDOLabel(void *a1)
{
  v6 = 0;
  v5 = 0;
  if (getOOCObject_LuaLDOLabel(a1, 1, &v6) || LuaVMUtil_luainteger_to_u32_index(a1, 2u, &v5) || LDOLabel_SetReferenceTo(v6, v5))
  {
    return LuaVMUtil_error(a1, "Error in ldolabel:setReferenceTo");
  }

  v2 = 1;
  v4 = LuaVMUtil_lhBOOL_to_luaBOOLean(1);
  lua_pushBOOLean(a1, v4);
  return v2;
}

uint64_t hasReferenceIndices_LuaLDOLabel(void *a1)
{
  v4 = 0;
  if (getOOCObject_LuaLDOLabel(a1, 1, &v4))
  {

    return LuaVMUtil_error(a1, "Error in ldolabel:hasReferenceIndices");
  }

  else
  {
    v3 = LuaVMUtil_lhBOOL_to_luaBOOLean(*(v4 + 108));
    lua_pushBOOLean(a1, v3);
    return 1;
  }
}

uint64_t compareTo_LuaLDOLabel(void *a1)
{
  v4 = 0;
  v5 = 0;
  if (getOOCObject_LuaLDOLabel(a1, 1, &v5) || getOOCObject_LuaLDOLabel(a1, 2, &v4))
  {

    return LuaVMUtil_error(a1, "Error in ldolabel:compareTo");
  }

  else
  {
    v3 = LDOLabel_CompareTo(v5, v4);
    lua_pushinteger(a1, v3);
    return 1;
  }
}

uint64_t compareToWithID_LuaLDOLabel(void *a1)
{
  v4 = 0;
  v5 = 0;
  if (getOOCObject_LuaLDOLabel(a1, 1, &v5) || getOOCObject_LuaLDOLabel(a1, 2, &v4))
  {

    return LuaVMUtil_error(a1, "Error in ldolabel:compareToWithID");
  }

  else
  {
    v3 = LDOLabel_CompareToWithID(v5, v4);
    lua_pushinteger(a1, v3);
    return 1;
  }
}

uint64_t toString_LuaLDOLabel(void *a1)
{
  v6 = 0;
  v7 = 0;
  if (getOOCObject_LuaLDOLabel(a1, 1, &v7))
  {
    return LuaVMUtil_error(a1, "Error in ldolabel:tostring");
  }

  v2 = (*(*v7 + 24))(v7, &v6);
  v3 = v6;
  if (v2)
  {
    if (!v6)
    {
      return LuaVMUtil_error(a1, "Error in ldolabel:tostring");
    }

LABEL_4:
    v4 = LDOString_BorrowAllocator(v3);
    OOC_PlacementDeleteObject(v4, v6);
    v6 = 0;
    return LuaVMUtil_error(a1, "Error in ldolabel:tostring");
  }

  if (LuaVMUtil_pushLuaStringAndDestroy(a1, v6))
  {
    v3 = v6;
    if (!v6)
    {
      return LuaVMUtil_error(a1, "Error in ldolabel:tostring");
    }

    goto LABEL_4;
  }

  return 1;
}

uint64_t containsNode_LuaLDOLabel(void *a1)
{
  v5 = 0;
  v6 = 0;
  v4 = 0;
  if (getOOCObject_LuaLDOLabel(a1, 1, &v6) || getOOCObject_LuaLDOTreeNode(a1, 2, &v5) || LDOLabel_ContainsNode(v6, v5, &v4))
  {
    return LuaVMUtil_error(a1, "Error in ldolabel:contains_node");
  }

  v3 = LuaVMUtil_lhBOOL_to_luaBOOLean(v4);
  lua_pushBOOLean(a1, v3);
  return 1;
}

uint64_t addNode_LuaLDOLabel(void *a1)
{
  v3 = 0;
  v4 = 0;
  if (getOOCObject_LuaLDOLabel(a1, 1, &v4))
  {
    return LuaVMUtil_error(a1, "Error in ldolabel:add_node");
  }

  if (getOOCObject_LuaLDOTreeNode(a1, 2, &v3))
  {
    return LuaVMUtil_error(a1, "Error in ldolabel:add_node");
  }

  result = LDOLabel_AddNode(v4, v3);
  if (result)
  {
    return LuaVMUtil_error(a1, "Error in ldolabel:add_node");
  }

  return result;
}

uint64_t addNodes_LuaLDOLabel(void *a1)
{
  v19 = 0;
  v20 = 0;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  OOCObject_LuaLDOLabel = getOOCObject_LuaLDOLabel(a1, 1, &v20);
  if (OOCObject_LuaLDOLabel)
  {
    goto LABEL_2;
  }

  LODWORD(v16) = 0;
  v17 = 0;
  v18 = 0;
  lua_pushnil(a1);
  if (lua_next(a1, 2u))
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = v20;
    do
    {
      v8 = lua_gettop(a1);
      OOCObject_LuaLDOLabel = getOOCObject_LuaLDOTreeNode(a1, v8, &v19);
      if (OOCObject_LuaLDOLabel)
      {
        goto LABEL_2;
      }

      v9 = v6 - v5;
      v10 = ((v6 - v5) >> 3) + 1;
      if (v10 > v4)
      {
        v11 = 2 * v4;
        if (2 * v4 >= v4 + 1000000)
        {
          v11 = v4 + 1000000;
        }

        if (v11 > v10)
        {
          v10 = v11;
        }

        if (v10 <= 8)
        {
          v4 = 8;
        }

        else
        {
          v4 = v10;
        }

        v12 = fst::FstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::Properties(v7);
        v13 = OOCAllocator_Realloc(v12, v5, 8 * v4, &OOCObject_LuaLDOLabel);
        v17 = v13;
        if (OOCObject_LuaLDOLabel)
        {
          goto LABEL_2;
        }

        v5 = v13;
        LODWORD(v16) = v4;
        v6 = (v13 + (v9 & 0x7FFFFFFF8));
        v18 = v6;
      }

      *v6 = v19;
      v6 = ++v18;
      lua_settop(a1, -2);
    }

    while (lua_next(a1, 2u));
  }

  v14 = v20;
  OOCObject_LuaLDOLabel = LDOLabel_AddNodes(v20, &v16);
  if (OOCObject_LuaLDOLabel)
  {
LABEL_2:
    LODWORD(v16) = 0;
    if (v17)
    {
      v2 = fst::FstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::Properties(v20);
      OOCAllocator_Free(v2, v17);
      v17 = 0;
    }

    v18 = 0;
    return LuaVMUtil_error(a1, "Error in ldolabel:add_nodes");
  }

  LODWORD(v16) = 0;
  if (v17)
  {
    v15 = fst::FstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::Properties(v14);
    OOCAllocator_Free(v15, v17);
  }

  return 0;
}

uint64_t removeNode_LuaLDOLabel(void *a1)
{
  v3 = 0;
  v4 = 0;
  if (getOOCObject_LuaLDOLabel(a1, 1, &v4))
  {
    return LuaVMUtil_error(a1, "Error in ldolabel:remove_node");
  }

  if (getOOCObject_LuaLDOTreeNode(a1, 2, &v3))
  {
    return LuaVMUtil_error(a1, "Error in ldolabel:remove_node");
  }

  result = LDOLabel_RemoveNode(v4, v3);
  if (result)
  {
    return LuaVMUtil_error(a1, "Error in ldolabel:remove_node");
  }

  return result;
}

uint64_t computeText_LuaLDOLabel(void *a1)
{
  v6 = 0;
  v7 = 0;
  if (getOOCObject_LuaLDOLabel(a1, 1, &v7))
  {
    return LuaVMUtil_error(a1, "Error in ldo:get_label_text");
  }

  v2 = LDOLabel_ComputeText(v7, &v6);
  v3 = v6;
  if (v2)
  {
    if (!v6)
    {
      return LuaVMUtil_error(a1, "Error in ldo:get_label_text");
    }

LABEL_4:
    v4 = LDOString_BorrowAllocator(v3);
    OOC_PlacementDeleteObject(v4, v6);
    v6 = 0;
    return LuaVMUtil_error(a1, "Error in ldo:get_label_text");
  }

  if (LuaVMUtil_pushLuaStringAndDestroy(a1, v6))
  {
    v3 = v6;
    if (!v6)
    {
      return LuaVMUtil_error(a1, "Error in ldo:get_label_text");
    }

    goto LABEL_4;
  }

  return 1;
}

uint64_t luaopen_LDOLabel(uint64_t *a1)
{
  newMetatableLua(a1, "vocalizer.LDOLabel");
  lua_pushvalue(a1, 0xFFFFFFFF);
  lua_setfield(a1, 0xFFFFFFFE, "__index");
  getMetatableLua(a1, "vocalizer.LDOObject");
  lua_pushvalue(a1, 0xFFFFFFFF);
  lua_setfield(a1, 0xFFFFFFFE, "__index");
  lua_setmetatable(a1, 0xFFFFFFFE);
  luaL_setfuncs(a1, &lib_m_0, 0);
  lua_createtable(a1, 0, 0);
  lua_setglobal(a1, "LDOLabel");
  return 0;
}

uint64_t getOOCObject_LuaLDOLabelSet(void *a1, uint64_t a2, void *a3)
{
  v4 = luaL_checkudata(a1, a2, "vocalizer.LDOLabelSet");
  if (v4)
  {
    *a3 = *v4;
    return 0;
  }

  else
  {

    return kaldi::OffsetFileInputImpl::MyType("lua_stack_arg");
  }
}

uint64_t pushLuaObject_LuaLDOLabelSet(uint64_t *a1, uint64_t a2)
{
  v4 = lua_newuserdata(a1, 8uLL);
  if (v4)
  {
    *v4 = a2;
    getMetatableLua(a1, "vocalizer.LDOLabelSet");
    lua_setmetatable(a1, 0xFFFFFFFE);
    return 0;
  }

  else
  {

    return kaldi::nnet1::UpdatableComponent::IsUpdatable(0);
  }
}

uint64_t getLabels_LuaLDOLabelSet(uint64_t *a1)
{
  v7 = 0;
  if (!getOOCObject_LuaLDOLabelSet(a1, 1, &v7))
  {
    v3 = *(v7 + 24);
    v4 = *(v7 + 32);
    lua_createtable(a1, 0, 0);
    if (v3 >= v4)
    {
      return 1;
    }

    v5 = 0;
    while (!pushLuaObject_LuaLDOLabel(a1, *v3))
    {
      v6 = LuaVMUtil_u32_index_to_luainteger(v5);
      lua_rawseti(a1, 0xFFFFFFFE, v6);
      ++v5;
      if (++v3 >= v4)
      {
        return 1;
      }
    }
  }

  return LuaVMUtil_error(a1, "Error in ldolabelset:getLabels");
}

uint64_t addLabel_LuaLDOLabelSet(void *a1)
{
  v5 = 0;
  v6 = 0;
  if (getOOCObject_LuaLDOLabelSet(a1, 1, &v6) || getOOCObject_LuaLDOLabel(a1, 2, &v5) || LDOLabelSet_AddLabel(v6, v5))
  {
    return LuaVMUtil_error(a1, "Error in ldolabelset:addLabel");
  }

  v2 = 1;
  v4 = LuaVMUtil_lhBOOL_to_luaBOOLean(1);
  lua_pushBOOLean(a1, v4);
  return v2;
}