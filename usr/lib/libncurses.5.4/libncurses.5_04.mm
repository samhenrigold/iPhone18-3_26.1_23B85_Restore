const char *_nc_keyname(uint64_t a1, int a2)
{
  v29 = *MEMORY[0x29EDCA608];
  if (a2 == -1)
  {
    return "-1";
  }

  if (a2 != 348)
  {
    for (i = &dword_2994B15B0; ; i += 2)
    {
      v3 = *(i - 2);
      if (v3 == -1)
      {
        break;
      }

      v7 = *i;
      if (v7 == a2)
      {
        return &aKeyA1_0[v3];
      }
    }

    if (a2 > 0xFF)
    {
      if (a1 && *(a1 + 48))
      {
        v13 = cur_term;
        v14 = _nc_tracing;
        _nc_tracing = 0;
        v15 = keybound(a2, 0);
        if (v15)
        {
          v16 = v15;
          v17 = 0;
          do
          {
            num_Strings = v13->type.num_Strings;
            if (num_Strings < 0x19F)
            {
LABEL_25:
              free(v16);
            }

            else
            {
              Strings = v13->type.Strings;
              v20 = &qword_29EF25668;
              v21 = num_Strings - 414;
              v22 = 414;
              while (1)
              {
                v23 = Strings[v22];
                if (v23)
                {
                  if (!strcmp(v16, v23))
                  {
                    break;
                  }
                }

                ++v22;
                ++v20;
                if (!--v21)
                {
                  goto LABEL_25;
                }
              }

              if (v22 >= 0x19E)
              {
                v20 = &v13->type.ext_Names[v13->type.ext_Strings + v13->type.ext_Numbers + v13->type.ext_Booleans - v21];
              }

              v4 = *v20;
              free(v16);
              if (v4)
              {
                goto LABEL_51;
              }
            }

            v16 = keybound(a2, ++v17);
          }

          while (v16);
          v4 = 0;
        }

        else
        {
          v4 = 0;
        }

LABEL_51:
        _nc_tracing = v14;
        return v4;
      }
    }

    else
    {
      v9 = *&PC[88];
      if (*&PC[88] || (v9 = calloc(0x100uLL, 8uLL), (*&PC[88] = v9) != 0))
      {
        if (a1)
        {
          v10 = *&PC[96];
          if (!*(a1 + 792))
          {
            v11 = 0;
            v12 = 1;
LABEL_35:
            if (v10 != v12)
            {
              v24 = 0;
              *&PC[96] = v12;
              do
              {
                if (v9[v24])
                {
                  free(v9[v24]);
                  *(*&PC[88] + v24 * 8) = 0;
                  v9 = *&PC[88];
                }

                ++v24;
              }

              while (v24 != 256);
            }

            v4 = v9[a2];
            if (!v4)
            {
              v25 = __s1;
              if (a2 < 128)
              {
                v26 = 1;
              }

              else
              {
                v26 = v11 ^ 1;
              }

              v27 = a2;
              if ((v26 & 1) == 0)
              {
                strcpy(__s1, "M-");
                v25 = &__s1[2];
                v27 = a2 - 128;
              }

              if (v27 > 31)
              {
                if (v27 == 127)
                {
                  strcpy(v25, "^?");
                }

                else
                {
                  __sprintf_chk(v25, 0, 0x14uLL, "%c");
                }
              }

              else
              {
                __sprintf_chk(v25, 0, 0x14uLL, "^%c");
              }

              *(*&PC[88] + 8 * a2) = strdup(__s1);
              return *(*&PC[88] + 8 * a2);
            }

            return v4;
          }
        }

        else
        {
          v10 = *&PC[96];
        }

        v12 = 2;
        v11 = 1;
        goto LABEL_35;
      }
    }

    return 0;
  }

  v3 = 0;
  return &aKeyA1_0[v3];
}

int attrset(int a1)
{
  v1 = stdscr;
  if (!stdscr)
  {
    return -1;
  }

  result = 0;
  *(stdscr + 29) = BYTE1(a1);
  *(v1 + 4) = a1;
  return result;
}

int attr_get(attr_t *a1, __int16 *a2, void *a3)
{
  if (a1)
  {
    v3 = stdscr;
    if (stdscr)
    {
      v3 = *(stdscr + 4);
    }

    *a1 = v3;
  }

  if (a2)
  {
    LOWORD(v4) = stdscr;
    if (stdscr)
    {
      v4 = *(stdscr + 29);
    }

    *a2 = v4;
  }

  return 0;
}

int attr_set(attr_t a1, __int16 a2, void *a3)
{
  v3 = stdscr;
  if (stdscr)
  {
    *(stdscr + 4) = a1 & 0xFFFF00FF;
    *(v3 + 29) = a2;
  }

  return 0;
}

chtype getbkgd(WINDOW *a1)
{
  if (a1)
  {
    LODWORD(a1) = *(a1 + 5);
  }

  return a1;
}

int mvaddch(int a1, int a2, const chtype a3)
{
  result = wmove(stdscr, a1, a2);
  if (result != -1)
  {
    v5 = stdscr;

    return waddch(v5, a3);
  }

  return result;
}

int mvaddchnstr(int a1, int a2, const chtype *a3, int a4)
{
  result = wmove(stdscr, a1, a2);
  if (result != -1)
  {
    v7 = stdscr;

    return waddchnstr(v7, a3, a4);
  }

  return result;
}

int mvaddchstr(int a1, int a2, const chtype *a3)
{
  result = wmove(stdscr, a1, a2);
  if (result != -1)
  {
    v5 = stdscr;

    return waddchnstr(v5, a3, -1);
  }

  return result;
}

int mvaddnstr(int a1, int a2, const char *a3, int a4)
{
  result = wmove(stdscr, a1, a2);
  if (result != -1)
  {
    v7 = stdscr;

    return waddnstr(v7, a3, a4);
  }

  return result;
}

int mvaddstr(int a1, int a2, const char *a3)
{
  result = wmove(stdscr, a1, a2);
  if (result != -1)
  {
    v5 = stdscr;

    return waddnstr(v5, a3, -1);
  }

  return result;
}

int mvchgat(int a1, int a2, int a3, attr_t a4, __int16 a5, const void *a6)
{
  result = wmove(stdscr, a1, a2);
  if (result != -1)
  {
    v11 = stdscr;

    return wchgat(v11, a3, a4, a5, a6);
  }

  return result;
}

int mvdelch(int a1, int a2)
{
  result = wmove(stdscr, a1, a2);
  if (result != -1)
  {
    v3 = stdscr;

    return wdelch(v3);
  }

  return result;
}

int mvgetch(int a1, int a2)
{
  result = wmove(stdscr, a1, a2);
  if (result != -1)
  {
    v3 = stdscr;

    return wgetch(v3);
  }

  return result;
}

int mvgetnstr(int a1, int a2, char *a3, int a4)
{
  result = wmove(stdscr, a1, a2);
  if (result != -1)
  {
    v7 = stdscr;

    return wgetnstr(v7, a3, a4);
  }

  return result;
}

int mvgetstr(int a1, int a2, char *a3)
{
  result = wmove(stdscr, a1, a2);
  if (result != -1)
  {
    v5 = stdscr;

    return wgetnstr(v5, a3, -1);
  }

  return result;
}

int mvhline(int a1, int a2, chtype a3, int a4)
{
  result = wmove(stdscr, a1, a2);
  if (result != -1)
  {
    v7 = stdscr;

    return whline(v7, a3, a4);
  }

  return result;
}

chtype mvinch(int a1, int a2)
{
  result = wmove(stdscr, a1, a2);
  if (result != -1)
  {
    v3 = stdscr;

    return winch(v3);
  }

  return result;
}

int mvinchnstr(int a1, int a2, chtype *a3, int a4)
{
  result = wmove(stdscr, a1, a2);
  if (result != -1)
  {
    v7 = stdscr;

    return winchnstr(v7, a3, a4);
  }

  return result;
}

int mvinchstr(int a1, int a2, chtype *a3)
{
  result = wmove(stdscr, a1, a2);
  if (result != -1)
  {
    v5 = stdscr;

    return winchnstr(v5, a3, -1);
  }

  return result;
}

int mvinnstr(int a1, int a2, char *a3, int a4)
{
  result = wmove(stdscr, a1, a2);
  if (result != -1)
  {
    v7 = stdscr;

    return winnstr(v7, a3, a4);
  }

  return result;
}

int mvinsch(int a1, int a2, chtype a3)
{
  result = wmove(stdscr, a1, a2);
  if (result != -1)
  {
    v5 = stdscr;

    return winsch(v5, a3);
  }

  return result;
}

int mvinsnstr(int a1, int a2, const char *a3, int a4)
{
  result = wmove(stdscr, a1, a2);
  if (result != -1)
  {
    v7 = stdscr;

    return winsnstr(v7, a3, a4);
  }

  return result;
}

int mvinsstr(int a1, int a2, const char *a3)
{
  result = wmove(stdscr, a1, a2);
  if (result != -1)
  {
    v5 = stdscr;

    return winsnstr(v5, a3, -1);
  }

  return result;
}

int mvinstr(int a1, int a2, char *a3)
{
  result = wmove(stdscr, a1, a2);
  if (result != -1)
  {
    v5 = stdscr;

    return winnstr(v5, a3, -1);
  }

  return result;
}

int mvvline(int a1, int a2, chtype a3, int a4)
{
  result = wmove(stdscr, a1, a2);
  if (result != -1)
  {
    v7 = stdscr;

    return wvline(v7, a3, a4);
  }

  return result;
}

int mvwaddch(WINDOW *a1, int a2, int a3, const chtype a4)
{
  result = wmove(a1, a2, a3);
  if (result != -1)
  {

    return waddch(a1, a4);
  }

  return result;
}

int mvwaddchnstr(WINDOW *a1, int a2, int a3, const chtype *a4, int a5)
{
  result = wmove(a1, a2, a3);
  if (result != -1)
  {

    return waddchnstr(a1, a4, a5);
  }

  return result;
}

int mvwaddchstr(WINDOW *a1, int a2, int a3, const chtype *a4)
{
  result = wmove(a1, a2, a3);
  if (result != -1)
  {

    return waddchnstr(a1, a4, -1);
  }

  return result;
}

int mvwaddnstr(WINDOW *a1, int a2, int a3, const char *a4, int a5)
{
  result = wmove(a1, a2, a3);
  if (result != -1)
  {

    return waddnstr(a1, a4, a5);
  }

  return result;
}

int mvwaddstr(WINDOW *a1, int a2, int a3, const char *a4)
{
  result = wmove(a1, a2, a3);
  if (result != -1)
  {

    return waddnstr(a1, a4, -1);
  }

  return result;
}

int mvwchgat(WINDOW *a1, int a2, int a3, int a4, attr_t a5, __int16 a6, const void *a7)
{
  result = wmove(a1, a2, a3);
  if (result != -1)
  {

    return wchgat(a1, a4, a5, a6, a7);
  }

  return result;
}

int mvwdelch(WINDOW *a1, int a2, int a3)
{
  result = wmove(a1, a2, a3);
  if (result != -1)
  {

    return wdelch(a1);
  }

  return result;
}

int mvwgetch(WINDOW *a1, int a2, int a3)
{
  result = wmove(a1, a2, a3);
  if (result != -1)
  {

    return wgetch(a1);
  }

  return result;
}

int mvwgetnstr(WINDOW *a1, int a2, int a3, char *a4, int a5)
{
  result = wmove(a1, a2, a3);
  if (result != -1)
  {

    return wgetnstr(a1, a4, a5);
  }

  return result;
}

int mvwgetstr(WINDOW *a1, int a2, int a3, char *a4)
{
  result = wmove(a1, a2, a3);
  if (result != -1)
  {

    return wgetnstr(a1, a4, -1);
  }

  return result;
}

int mvwhline(WINDOW *a1, int a2, int a3, chtype a4, int a5)
{
  result = wmove(a1, a2, a3);
  if (result != -1)
  {

    return whline(a1, a4, a5);
  }

  return result;
}

chtype mvwinch(WINDOW *a1, int a2, int a3)
{
  result = wmove(a1, a2, a3);
  if (result != -1)
  {

    return winch(a1);
  }

  return result;
}

int mvwinchnstr(WINDOW *a1, int a2, int a3, chtype *a4, int a5)
{
  result = wmove(a1, a2, a3);
  if (result != -1)
  {

    return winchnstr(a1, a4, a5);
  }

  return result;
}

int mvwinchstr(WINDOW *a1, int a2, int a3, chtype *a4)
{
  result = wmove(a1, a2, a3);
  if (result != -1)
  {

    return winchnstr(a1, a4, -1);
  }

  return result;
}

int mvwinnstr(WINDOW *a1, int a2, int a3, char *a4, int a5)
{
  result = wmove(a1, a2, a3);
  if (result != -1)
  {

    return winnstr(a1, a4, a5);
  }

  return result;
}

int mvwinsch(WINDOW *a1, int a2, int a3, chtype a4)
{
  result = wmove(a1, a2, a3);
  if (result != -1)
  {

    return winsch(a1, a4);
  }

  return result;
}

int mvwinsnstr(WINDOW *a1, int a2, int a3, const char *a4, int a5)
{
  result = wmove(a1, a2, a3);
  if (result != -1)
  {

    return winsnstr(a1, a4, a5);
  }

  return result;
}

int mvwinsstr(WINDOW *a1, int a2, int a3, const char *a4)
{
  result = wmove(a1, a2, a3);
  if (result != -1)
  {

    return winsnstr(a1, a4, -1);
  }

  return result;
}

int mvwinstr(WINDOW *a1, int a2, int a3, char *a4)
{
  result = wmove(a1, a2, a3);
  if (result != -1)
  {

    return winnstr(a1, a4, -1);
  }

  return result;
}

int mvwvline(WINDOW *a1, int a2, int a3, chtype a4, int a5)
{
  result = wmove(a1, a2, a3);
  if (result != -1)
  {

    return wvline(a1, a4, a5);
  }

  return result;
}

int redrawwin(WINDOW *a1)
{
  if (a1)
  {
    v1 = *(a1 + 2) + 1;
  }

  else
  {
    v1 = -1;
  }

  return wredrawln(a1, 0, v1);
}

int slk_attr_off(const attr_t a1, void *a2)
{
  if (a2)
  {
    return -1;
  }

  else
  {
    return slk_attroff(a1);
  }
}

int slk_attr_on(attr_t a1, void *a2)
{
  if (a2)
  {
    return -1;
  }

  else
  {
    return slk_attron(a1);
  }
}

int standout(void)
{
  v0 = stdscr;
  if (!stdscr)
  {
    return -1;
  }

  result = 0;
  *(stdscr + 29) = 0;
  *(v0 + 4) = 0x10000;
  return result;
}

int standend(void)
{
  v0 = stdscr;
  if (!stdscr)
  {
    return -1;
  }

  result = 0;
  *(stdscr + 29) = 0;
  *(v0 + 4) = 0;
  return result;
}

int touchwin(WINDOW *a1)
{
  if (a1)
  {
    v1 = *(a1 + 2) + 1;
  }

  else
  {
    v1 = -1;
  }

  return wtouchln(a1, 0, v1, 1);
}

int untouchwin(WINDOW *a1)
{
  if (a1)
  {
    v1 = *(a1 + 2) + 1;
  }

  else
  {
    v1 = -1;
  }

  return wtouchln(a1, 0, v1, 0);
}

int wattrset(WINDOW *a1, int a2)
{
  if (!a1)
  {
    return -1;
  }

  result = 0;
  *(a1 + 29) = BYTE1(a2);
  *(a1 + 4) = a2;
  return result;
}

int wattr_get(WINDOW *a1, attr_t *a2, __int16 *a3, void *a4)
{
  if (a2)
  {
    if (a1)
    {
      v4 = *(a1 + 4);
    }

    else
    {
      v4 = 0;
    }

    *a2 = v4;
  }

  if (a3)
  {
    if (a1)
    {
      v5 = *(a1 + 29);
    }

    else
    {
      LOWORD(v5) = 0;
    }

    *a3 = v5;
  }

  return 0;
}

int wattr_set(WINDOW *a1, attr_t a2, __int16 a3, void *a4)
{
  if (a1)
  {
    *(a1 + 4) = a2 & 0xFFFF00FF;
    *(a1 + 29) = a3;
  }

  return 0;
}

int wstandout(WINDOW *a1)
{
  if (!a1)
  {
    return -1;
  }

  result = 0;
  *(a1 + 29) = 0;
  *(a1 + 4) = 0x10000;
  return result;
}

int wstandend(WINDOW *a1)
{
  if (!a1)
  {
    return -1;
  }

  result = 0;
  *(a1 + 29) = 0;
  *(a1 + 4) = 0;
  return result;
}

int getattrs(const WINDOW *a1)
{
  if (a1)
  {
    LODWORD(a1) = *(a1 + 4);
  }

  return a1;
}

int getcurx(const WINDOW *a1)
{
  if (a1)
  {
    return *(a1 + 1);
  }

  else
  {
    return -1;
  }
}

int getcury(const WINDOW *a1)
{
  if (a1)
  {
    return *a1;
  }

  else
  {
    return -1;
  }
}

int getbegx(const WINDOW *a1)
{
  if (a1)
  {
    return *(a1 + 5);
  }

  else
  {
    return -1;
  }
}

int getbegy(const WINDOW *a1)
{
  if (a1)
  {
    return *(a1 + 4);
  }

  else
  {
    return -1;
  }
}

int getmaxx(const WINDOW *a1)
{
  if (a1)
  {
    return *(a1 + 3) + 1;
  }

  else
  {
    return -1;
  }
}

int getmaxy(const WINDOW *a1)
{
  if (a1)
  {
    return *(a1 + 2) + 1;
  }

  else
  {
    return -1;
  }
}

int getparx(const WINDOW *a1)
{
  if (a1)
  {
    return *(a1 + 13);
  }

  else
  {
    return -1;
  }
}

int getpary(const WINDOW *a1)
{
  if (a1)
  {
    return *(a1 + 14);
  }

  else
  {
    return -1;
  }
}

WINDOW *__cdecl wgetparent(WINDOW *result)
{
  if (result)
  {
    return *(result + 8);
  }

  return result;
}

BOOL is_cleared(const WINDOW *a1)
{
  if (a1)
  {
    LOBYTE(a1) = *(a1 + 25);
  }

  return a1;
}

BOOL is_idcok(const WINDOW *a1)
{
  if (a1)
  {
    LOBYTE(a1) = *(a1 + 29);
  }

  return a1;
}

BOOL is_idlok(const WINDOW *a1)
{
  if (a1)
  {
    LOBYTE(a1) = *(a1 + 28);
  }

  return a1;
}

BOOL is_immedok(const WINDOW *a1)
{
  if (a1)
  {
    LOBYTE(a1) = *(a1 + 30);
  }

  return a1;
}

BOOL is_keypad(const WINDOW *a1)
{
  if (a1)
  {
    LOBYTE(a1) = *(a1 + 32);
  }

  return a1;
}

BOOL is_leaveok(const WINDOW *a1)
{
  if (a1)
  {
    LOBYTE(a1) = *(a1 + 26);
  }

  return a1;
}

BOOL is_nodelay(const WINDOW *a1)
{
  if (a1)
  {
    LOBYTE(a1) = *(a1 + 9) == 0;
  }

  return a1;
}

BOOL is_notimeout(const WINDOW *a1)
{
  if (a1)
  {
    LOBYTE(a1) = *(a1 + 24);
  }

  return a1;
}

BOOL is_pad(const WINDOW *a1)
{
  if (a1)
  {
    LODWORD(a1) = (*(a1 + 6) >> 4) & 1;
  }

  return a1;
}

BOOL is_scrollok(const WINDOW *a1)
{
  if (a1)
  {
    LOBYTE(a1) = *(a1 + 27);
  }

  return a1;
}

BOOL is_subwin(const WINDOW *a1)
{
  if (a1)
  {
    LOWORD(a1) = *(a1 + 6) & 1;
  }

  return a1;
}

BOOL is_syncok(const WINDOW *a1)
{
  if (a1)
  {
    LOBYTE(a1) = *(a1 + 31);
  }

  return a1;
}

int wgetdelay(const WINDOW *a1)
{
  if (a1)
  {
    LODWORD(a1) = *(a1 + 9);
  }

  return a1;
}

int wgetscrreg(const WINDOW *a1, int *a2, int *a3)
{
  if (!a1)
  {
    return -1;
  }

  result = 0;
  *a2 = *(a1 + 24);
  *a3 = *(a1 + 25);
  return result;
}

uint64_t getbkgrnd(_OWORD *a1)
{
  if (stdscr)
  {
    v1 = *(stdscr + 88);
    *(a1 + 12) = *(stdscr + 100);
    *a1 = v1;
  }

  return 0;
}

uint64_t mvadd_wch(int a1, int a2, _OWORD *a3)
{
  result = wmove(stdscr, a1, a2);
  if (result != -1)
  {
    v5 = stdscr;

    return wadd_wch(v5, a3);
  }

  return result;
}

uint64_t mvadd_wchnstr(int a1, int a2, uint64_t a3, unsigned int a4)
{
  result = wmove(stdscr, a1, a2);
  if (result != -1)
  {
    v7 = stdscr;

    return wadd_wchnstr(v7, a3, a4);
  }

  return result;
}

uint64_t mvadd_wchstr(int a1, int a2, uint64_t a3)
{
  result = wmove(stdscr, a1, a2);
  if (result != -1)
  {
    v5 = stdscr;

    return wadd_wchnstr(v5, a3, 0xFFFFFFFF);
  }

  return result;
}

uint64_t mvaddnwstr(int a1, int a2, __int32 *a3, int a4)
{
  result = wmove(stdscr, a1, a2);
  if (result != -1)
  {
    v7 = stdscr;

    return waddnwstr(v7, a3, a4);
  }

  return result;
}

uint64_t mvaddwstr(int a1, int a2, __int32 *a3)
{
  result = wmove(stdscr, a1, a2);
  if (result != -1)
  {
    v5 = stdscr;

    return waddnwstr(v5, a3, -1);
  }

  return result;
}

uint64_t mvget_wch(int a1, int a2, unsigned __int32 *a3)
{
  result = wmove(stdscr, a1, a2);
  if (result != -1)
  {
    v5 = stdscr;

    return wget_wch(v5, a3);
  }

  return result;
}

uint64_t mvget_wstr(int a1, int a2, int *a3)
{
  result = wmove(stdscr, a1, a2);
  if (result != -1)
  {
    v5 = stdscr;

    return wgetn_wstr(v5, a3, 0xFFFFFFFF);
  }

  return result;
}

uint64_t mvgetn_wstr(int a1, int a2, int *a3, unsigned int a4)
{
  result = wmove(stdscr, a1, a2);
  if (result != -1)
  {
    v7 = stdscr;

    return wgetn_wstr(v7, a3, a4);
  }

  return result;
}

uint64_t mvhline_set(int a1, int a2, _OWORD *a3, int a4)
{
  result = wmove(stdscr, a1, a2);
  if (result != -1)
  {
    v7 = stdscr;

    return whline_set(v7, a3, a4);
  }

  return result;
}

double mvin_wch(int a1, int a2, uint64_t a3)
{
  if (wmove(stdscr, a1, a2) != -1)
  {
    v5 = stdscr;

    *&result = win_wch(v5, a3).n128_u64[0];
  }

  return result;
}

uint64_t mvin_wchnstr(int a1, int a2, uint64_t a3, int a4)
{
  result = wmove(stdscr, a1, a2);
  if (result != -1)
  {
    v7 = stdscr;

    return win_wchnstr(v7, a3, a4);
  }

  return result;
}

uint64_t mvin_wchstr(int a1, int a2, uint64_t a3)
{
  result = wmove(stdscr, a1, a2);
  if (result != -1)
  {
    v5 = stdscr;

    return win_wchnstr(v5, a3, -1);
  }

  return result;
}

uint64_t mvinnwstr(int a1, int a2, uint64_t a3, int a4)
{
  result = wmove(stdscr, a1, a2);
  if (result != -1)
  {
    v7 = stdscr;

    return winnwstr(v7, a3, a4);
  }

  return result;
}

uint64_t mvins_nwstr(int a1, int a2, __int32 *a3, int a4)
{
  result = wmove(stdscr, a1, a2);
  if (result != -1)
  {
    v7 = stdscr;

    return wins_nwstr(v7, a3, a4);
  }

  return result;
}

uint64_t mvins_wch(int a1, int a2, uint64_t a3)
{
  result = wmove(stdscr, a1, a2);
  if (result != -1)
  {
    v5 = stdscr;

    return wins_wch(v5, a3);
  }

  return result;
}

uint64_t mvins_wstr(int a1, int a2, __int32 *a3)
{
  result = wmove(stdscr, a1, a2);
  if (result != -1)
  {
    v5 = stdscr;

    return wins_nwstr(v5, a3, -1);
  }

  return result;
}

uint64_t mvinwstr(int a1, int a2, uint64_t a3)
{
  result = wmove(stdscr, a1, a2);
  if (result != -1)
  {
    v5 = stdscr;

    return winwstr(v5, a3);
  }

  return result;
}

uint64_t mvvline_set(int a1, int a2, _OWORD *a3, int a4)
{
  result = wmove(stdscr, a1, a2);
  if (result != -1)
  {
    v7 = stdscr;

    return wvline_set(v7, a3, a4);
  }

  return result;
}

uint64_t mvwadd_wch(WINDOW *a1, int a2, int a3, _OWORD *a4)
{
  result = wmove(a1, a2, a3);
  if (result != -1)
  {

    return wadd_wch(a1, a4);
  }

  return result;
}

uint64_t mvwadd_wchnstr(WINDOW *a1, int a2, int a3, uint64_t a4, unsigned int a5)
{
  result = wmove(a1, a2, a3);
  if (result != -1)
  {

    return wadd_wchnstr(a1, a4, a5);
  }

  return result;
}

uint64_t mvwadd_wchstr(WINDOW *a1, int a2, int a3, uint64_t a4)
{
  result = wmove(a1, a2, a3);
  if (result != -1)
  {

    return wadd_wchnstr(a1, a4, 0xFFFFFFFF);
  }

  return result;
}

uint64_t mvwaddnwstr(WINDOW *a1, int a2, int a3, __int32 *a4, int a5)
{
  result = wmove(a1, a2, a3);
  if (result != -1)
  {

    return waddnwstr(a1, a4, a5);
  }

  return result;
}

uint64_t mvwaddwstr(WINDOW *a1, int a2, int a3, __int32 *a4)
{
  result = wmove(a1, a2, a3);
  if (result != -1)
  {

    return waddnwstr(a1, a4, -1);
  }

  return result;
}

uint64_t mvwget_wch(WINDOW *a1, int a2, int a3, unsigned __int32 *a4)
{
  result = wmove(a1, a2, a3);
  if (result != -1)
  {

    return wget_wch(a1, a4);
  }

  return result;
}

uint64_t mvwget_wstr(WINDOW *a1, int a2, int a3, int *a4)
{
  result = wmove(a1, a2, a3);
  if (result != -1)
  {

    return wgetn_wstr(a1, a4, 0xFFFFFFFF);
  }

  return result;
}

uint64_t mvwgetn_wstr(WINDOW *a1, int a2, int a3, int *a4, unsigned int a5)
{
  result = wmove(a1, a2, a3);
  if (result != -1)
  {

    return wgetn_wstr(a1, a4, a5);
  }

  return result;
}

uint64_t mvwhline_set(WINDOW *a1, int a2, int a3, _OWORD *a4, int a5)
{
  result = wmove(a1, a2, a3);
  if (result != -1)
  {

    return whline_set(a1, a4, a5);
  }

  return result;
}

double mvwin_wch(__int16 *a1, int a2, int a3, uint64_t a4)
{
  if (wmove(a1, a2, a3) != -1)
  {

    *&result = win_wch(a1, a4).n128_u64[0];
  }

  return result;
}

uint64_t mvwin_wchnstr(WINDOW *a1, int a2, int a3, uint64_t a4, int a5)
{
  result = wmove(a1, a2, a3);
  if (result != -1)
  {

    return win_wchnstr(a1, a4, a5);
  }

  return result;
}

uint64_t mvwin_wchstr(WINDOW *a1, int a2, int a3, uint64_t a4)
{
  result = wmove(a1, a2, a3);
  if (result != -1)
  {

    return win_wchnstr(a1, a4, -1);
  }

  return result;
}

uint64_t mvwinnwstr(WINDOW *a1, int a2, int a3, uint64_t a4, int a5)
{
  result = wmove(a1, a2, a3);
  if (result != -1)
  {

    return winnwstr(a1, a4, a5);
  }

  return result;
}

uint64_t mvwins_nwstr(WINDOW *a1, int a2, int a3, __int32 *a4, int a5)
{
  result = wmove(a1, a2, a3);
  if (result != -1)
  {

    return wins_nwstr(a1, a4, a5);
  }

  return result;
}

uint64_t mvwins_wch(WINDOW *a1, int a2, int a3, uint64_t a4)
{
  result = wmove(a1, a2, a3);
  if (result != -1)
  {

    return wins_wch(a1, a4);
  }

  return result;
}

uint64_t mvwins_wstr(WINDOW *a1, int a2, int a3, __int32 *a4)
{
  result = wmove(a1, a2, a3);
  if (result != -1)
  {

    return wins_nwstr(a1, a4, -1);
  }

  return result;
}

uint64_t mvwinwstr(WINDOW *a1, int a2, int a3, uint64_t a4)
{
  result = wmove(a1, a2, a3);
  if (result != -1)
  {

    return winwstr(a1, a4);
  }

  return result;
}

uint64_t mvwvline_set(WINDOW *a1, int a2, int a3, _OWORD *a4, int a5)
{
  result = wmove(a1, a2, a3);
  if (result != -1)
  {

    return wvline_set(a1, a4, a5);
  }

  return result;
}

uint64_t wgetbkgrnd(uint64_t a1, _OWORD *a2)
{
  if (a1)
  {
    v2 = *(a1 + 88);
    *(a2 + 12) = *(a1 + 100);
    *a2 = v2;
  }

  return 0;
}

void sub_2994AA7DC(const char *a1)
{
  perror(a1);
  v2 = _nc_tic_dir(0);
  _nc_syserr_abort("can't open %s/%s", v2, a1);
}