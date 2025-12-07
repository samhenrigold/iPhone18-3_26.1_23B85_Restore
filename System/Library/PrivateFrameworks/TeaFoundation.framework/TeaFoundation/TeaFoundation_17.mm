void sub_1BF1603A0()
{
  v1 = *v0;
  v2 = v0[5];
  v3 = *v0 >> 61;
  if (v3 != 3)
  {
    sub_1BF05350C();
    swift_allocError();
    v16 = 0xE600000000000000;
    v17 = 0x7463656A626FLL;
    switch(v3)
    {
      case 1uLL:
        v16 = 0xE500000000000000;
        v17 = 0x7961727261;
        break;
      case 2uLL:
        v17 = 0x676E69727473;
        break;
      case 3uLL:
        v17 = 0x7265626D756ELL;
        break;
      case 4uLL:
        v16 = 0xE400000000000000;
        v17 = 1702195828;
        v21 = 0xE500000000000000;
        v22 = 0x65736C6166;
        if (v1 != 0x8000000000000008)
        {
          v22 = 1819047278;
          v21 = 0xE400000000000000;
        }

        if (v1 != 0x8000000000000000)
        {
          v17 = v22;
          v16 = v21;
        }

        break;
      default:
        break;
    }

    *v15 = v2;
    *(v15 + 8) = 0x7265626D756ELL;
    *(v15 + 16) = 0xE600000000000000;
    *(v15 + 24) = v17;
    v23 = 10;
    *(v15 + 32) = v16;
    goto LABEL_74;
  }

  v4 = v1 & 0x1FFFFFFFFFFFFFFFLL;
  v6 = *((v1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  v5 = *(v4 + 24);
  v7 = HIBYTE(v5) & 0xF;
  v8 = v6 & 0xFFFFFFFFFFFFLL;
  if ((v5 & 0x2000000000000000) != 0)
  {
    v9 = HIBYTE(v5) & 0xF;
  }

  else
  {
    v9 = v6 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9)
  {
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    goto LABEL_73;
  }

  if ((v5 & 0x1000000000000000) != 0)
  {
    swift_bridgeObjectRetain_n();
    sub_1BF0765AC(v6, v5);
    v37 = v36;

    if ((v37 & 0x100) != 0)
    {
      goto LABEL_73;
    }

LABEL_77:

    return;
  }

  if ((v5 & 0x2000000000000000) == 0)
  {
    if ((v6 & 0x1000000000000000) != 0)
    {
      v10 = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v10 = sub_1BF17B2FC();
    }

    v11 = *v10;
    if (v11 == 43)
    {
      if (v8 >= 1)
      {
        v7 = v8 - 1;
        if (v8 != 1)
        {
          LOBYTE(v24) = 0;
          if (v10)
          {
            v25 = v10 + 1;
            while (1)
            {
              v26 = *v25 - 48;
              if (v26 > 9)
              {
                goto LABEL_71;
              }

              if (((10 * v24) & 0xF00) != 0)
              {
                goto LABEL_71;
              }

              v24 = (10 * v24) + v26;
              if ((v24 >> 8))
              {
                goto LABEL_71;
              }

              ++v25;
              if (!--v7)
              {
                goto LABEL_72;
              }
            }
          }

          goto LABEL_63;
        }

        goto LABEL_71;
      }

      goto LABEL_81;
    }

    if (v11 != 45)
    {
      if (v8)
      {
        LOBYTE(v30) = 0;
        if (v10)
        {
          while (1)
          {
            v31 = *v10 - 48;
            if (v31 > 9)
            {
              goto LABEL_71;
            }

            if (((10 * v30) & 0xF00) != 0)
            {
              goto LABEL_71;
            }

            v30 = (10 * v30) + v31;
            if ((v30 >> 8))
            {
              goto LABEL_71;
            }

            ++v10;
            if (!--v8)
            {
              goto LABEL_63;
            }
          }
        }

        goto LABEL_63;
      }

LABEL_71:
      LOBYTE(v7) = 1;
LABEL_72:
      v39 = v7;
      v35 = v7;
      _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
      if (v35)
      {
LABEL_73:
        sub_1BF05350C();
        swift_allocError();
        *v15 = v2;
        *(v15 + 8) = v6;
        *(v15 + 16) = v5;
        v23 = 13;
LABEL_74:
        *(v15 + 80) = v23;
        swift_willThrow();
        _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
        return;
      }

      goto LABEL_77;
    }

    if (v8 >= 1)
    {
      v7 = v8 - 1;
      if (v8 != 1)
      {
        LOBYTE(v12) = 0;
        if (v10)
        {
          v13 = v10 + 1;
          while (1)
          {
            v14 = *v13 - 48;
            if (v14 > 9)
            {
              goto LABEL_71;
            }

            if (((10 * v12) & 0xF00) != 0)
            {
              goto LABEL_71;
            }

            v12 = (10 * v12) - v14;
            if ((v12 & 0xFFFFFF00) != 0)
            {
              goto LABEL_71;
            }

            ++v13;
            if (!--v7)
            {
              goto LABEL_72;
            }
          }
        }

LABEL_63:
        LOBYTE(v7) = 0;
        goto LABEL_72;
      }

      goto LABEL_71;
    }

    __break(1u);
LABEL_80:
    __break(1u);
LABEL_81:
    __break(1u);
    goto LABEL_82;
  }

  v38[0] = v6;
  v38[1] = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v7)
      {
        LOBYTE(v32) = 0;
        v33 = v38;
        while (1)
        {
          v34 = *v33 - 48;
          if (v34 > 9)
          {
            break;
          }

          if (((10 * v32) & 0xF00) != 0)
          {
            break;
          }

          v32 = (10 * v32) + v34;
          if ((v32 >> 8))
          {
            break;
          }

          ++v33;
          if (!--v7)
          {
            goto LABEL_72;
          }
        }
      }

      goto LABEL_71;
    }

    if (v7)
    {
      if (--v7)
      {
        LOBYTE(v18) = 0;
        v19 = v38 + 1;
        while (1)
        {
          v20 = *v19 - 48;
          if (v20 > 9)
          {
            break;
          }

          if (((10 * v18) & 0xF00) != 0)
          {
            break;
          }

          v18 = (10 * v18) - v20;
          if ((v18 & 0xFFFFFF00) != 0)
          {
            break;
          }

          ++v19;
          if (!--v7)
          {
            goto LABEL_72;
          }
        }
      }

      goto LABEL_71;
    }

    goto LABEL_80;
  }

  if (v7)
  {
    if (--v7)
    {
      LOBYTE(v27) = 0;
      v28 = v38 + 1;
      while (1)
      {
        v29 = *v28 - 48;
        if (v29 > 9)
        {
          break;
        }

        if (((10 * v27) & 0xF00) != 0)
        {
          break;
        }

        v27 = (10 * v27) + v29;
        if ((v27 >> 8))
        {
          break;
        }

        ++v28;
        if (!--v7)
        {
          goto LABEL_72;
        }
      }
    }

    goto LABEL_71;
  }

LABEL_82:
  __break(1u);
}

void sub_1BF160858()
{
  v1 = *v0;
  v2 = v0[5];
  v3 = *v0 >> 61;
  if (v3 != 3)
  {
    sub_1BF05350C();
    swift_allocError();
    v16 = 0xE600000000000000;
    v17 = 0x7463656A626FLL;
    switch(v3)
    {
      case 1uLL:
        v16 = 0xE500000000000000;
        v17 = 0x7961727261;
        break;
      case 2uLL:
        v17 = 0x676E69727473;
        break;
      case 3uLL:
        v17 = 0x7265626D756ELL;
        break;
      case 4uLL:
        v16 = 0xE400000000000000;
        v17 = 1702195828;
        v21 = 0xE500000000000000;
        v22 = 0x65736C6166;
        if (v1 != 0x8000000000000008)
        {
          v22 = 1819047278;
          v21 = 0xE400000000000000;
        }

        if (v1 != 0x8000000000000000)
        {
          v17 = v22;
          v16 = v21;
        }

        break;
      default:
        break;
    }

    *v15 = v2;
    *(v15 + 8) = 0x7265626D756ELL;
    *(v15 + 16) = 0xE600000000000000;
    *(v15 + 24) = v17;
    v23 = 10;
    *(v15 + 32) = v16;
    goto LABEL_74;
  }

  v4 = v1 & 0x1FFFFFFFFFFFFFFFLL;
  v6 = *((v1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  v5 = *(v4 + 24);
  v7 = HIBYTE(v5) & 0xF;
  v8 = v6 & 0xFFFFFFFFFFFFLL;
  if ((v5 & 0x2000000000000000) != 0)
  {
    v9 = HIBYTE(v5) & 0xF;
  }

  else
  {
    v9 = v6 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9)
  {
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    goto LABEL_73;
  }

  if ((v5 & 0x1000000000000000) != 0)
  {
    swift_bridgeObjectRetain_n();
    sub_1BF076A48(v6, v5);
    v37 = v36;

    if ((v37 & 0x10000) != 0)
    {
      goto LABEL_73;
    }

LABEL_77:

    return;
  }

  if ((v5 & 0x2000000000000000) == 0)
  {
    if ((v6 & 0x1000000000000000) != 0)
    {
      v10 = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v10 = sub_1BF17B2FC();
    }

    v11 = *v10;
    if (v11 == 43)
    {
      if (v8 >= 1)
      {
        v7 = v8 - 1;
        if (v8 != 1)
        {
          LOWORD(v24) = 0;
          if (v10)
          {
            v25 = v10 + 1;
            while (1)
            {
              v26 = *v25 - 48;
              if (v26 > 9)
              {
                goto LABEL_71;
              }

              if (((10 * v24) & 0xF0000) != 0)
              {
                goto LABEL_71;
              }

              v24 = (10 * v24) + v26;
              if ((v24 & 0x10000) != 0)
              {
                goto LABEL_71;
              }

              ++v25;
              if (!--v7)
              {
                goto LABEL_72;
              }
            }
          }

          goto LABEL_63;
        }

        goto LABEL_71;
      }

      goto LABEL_81;
    }

    if (v11 != 45)
    {
      if (v8)
      {
        LOWORD(v30) = 0;
        if (v10)
        {
          while (1)
          {
            v31 = *v10 - 48;
            if (v31 > 9)
            {
              goto LABEL_71;
            }

            if (((10 * v30) & 0xF0000) != 0)
            {
              goto LABEL_71;
            }

            v30 = (10 * v30) + v31;
            if ((v30 & 0x10000) != 0)
            {
              goto LABEL_71;
            }

            ++v10;
            if (!--v8)
            {
              goto LABEL_63;
            }
          }
        }

        goto LABEL_63;
      }

LABEL_71:
      LOBYTE(v7) = 1;
LABEL_72:
      v39 = v7;
      v35 = v7;
      _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
      if (v35)
      {
LABEL_73:
        sub_1BF05350C();
        swift_allocError();
        *v15 = v2;
        *(v15 + 8) = v6;
        *(v15 + 16) = v5;
        v23 = 13;
LABEL_74:
        *(v15 + 80) = v23;
        swift_willThrow();
        _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
        return;
      }

      goto LABEL_77;
    }

    if (v8 >= 1)
    {
      v7 = v8 - 1;
      if (v8 != 1)
      {
        LOWORD(v12) = 0;
        if (v10)
        {
          v13 = v10 + 1;
          while (1)
          {
            v14 = *v13 - 48;
            if (v14 > 9)
            {
              goto LABEL_71;
            }

            if (((10 * v12) & 0xF0000) != 0)
            {
              goto LABEL_71;
            }

            v12 = (10 * v12) - v14;
            if ((v12 & 0xFFFF0000) != 0)
            {
              goto LABEL_71;
            }

            ++v13;
            if (!--v7)
            {
              goto LABEL_72;
            }
          }
        }

LABEL_63:
        LOBYTE(v7) = 0;
        goto LABEL_72;
      }

      goto LABEL_71;
    }

    __break(1u);
LABEL_80:
    __break(1u);
LABEL_81:
    __break(1u);
    goto LABEL_82;
  }

  v38[0] = v6;
  v38[1] = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v7)
      {
        LOWORD(v32) = 0;
        v33 = v38;
        while (1)
        {
          v34 = *v33 - 48;
          if (v34 > 9)
          {
            break;
          }

          if (((10 * v32) & 0xF0000) != 0)
          {
            break;
          }

          v32 = (10 * v32) + v34;
          if ((v32 & 0x10000) != 0)
          {
            break;
          }

          ++v33;
          if (!--v7)
          {
            goto LABEL_72;
          }
        }
      }

      goto LABEL_71;
    }

    if (v7)
    {
      if (--v7)
      {
        LOWORD(v18) = 0;
        v19 = v38 + 1;
        while (1)
        {
          v20 = *v19 - 48;
          if (v20 > 9)
          {
            break;
          }

          if (((10 * v18) & 0xF0000) != 0)
          {
            break;
          }

          v18 = (10 * v18) - v20;
          if ((v18 & 0xFFFF0000) != 0)
          {
            break;
          }

          ++v19;
          if (!--v7)
          {
            goto LABEL_72;
          }
        }
      }

      goto LABEL_71;
    }

    goto LABEL_80;
  }

  if (v7)
  {
    if (--v7)
    {
      LOWORD(v27) = 0;
      v28 = v38 + 1;
      while (1)
      {
        v29 = *v28 - 48;
        if (v29 > 9)
        {
          break;
        }

        if (((10 * v27) & 0xF0000) != 0)
        {
          break;
        }

        v27 = (10 * v27) + v29;
        if ((v27 & 0x10000) != 0)
        {
          break;
        }

        ++v28;
        if (!--v7)
        {
          goto LABEL_72;
        }
      }
    }

    goto LABEL_71;
  }

LABEL_82:
  __break(1u);
}

void sub_1BF160D10()
{
  v1 = *v0;
  v2 = v0[5];
  v3 = *v0 >> 61;
  if (v3 != 3)
  {
    sub_1BF05350C();
    swift_allocError();
    v17 = 0xE600000000000000;
    v18 = 0x7463656A626FLL;
    switch(v3)
    {
      case 1uLL:
        v17 = 0xE500000000000000;
        v18 = 0x7961727261;
        break;
      case 2uLL:
        v18 = 0x676E69727473;
        break;
      case 3uLL:
        v18 = 0x7265626D756ELL;
        break;
      case 4uLL:
        v17 = 0xE400000000000000;
        v18 = 1702195828;
        v23 = 0xE500000000000000;
        v24 = 0x65736C6166;
        if (v1 != 0x8000000000000008)
        {
          v24 = 1819047278;
          v23 = 0xE400000000000000;
        }

        if (v1 != 0x8000000000000000)
        {
          v18 = v24;
          v17 = v23;
        }

        break;
      default:
        break;
    }

    *v16 = v2;
    *(v16 + 8) = 0x7265626D756ELL;
    *(v16 + 16) = 0xE600000000000000;
    *(v16 + 24) = v18;
    v25 = 10;
    *(v16 + 32) = v17;
    goto LABEL_74;
  }

  v4 = v1 & 0x1FFFFFFFFFFFFFFFLL;
  v6 = *((v1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  v5 = *(v4 + 24);
  v7 = HIBYTE(v5) & 0xF;
  v8 = v6 & 0xFFFFFFFFFFFFLL;
  if ((v5 & 0x2000000000000000) != 0)
  {
    v9 = HIBYTE(v5) & 0xF;
  }

  else
  {
    v9 = v6 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9)
  {
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    goto LABEL_73;
  }

  if ((v5 & 0x1000000000000000) != 0)
  {
    swift_bridgeObjectRetain_n();
    sub_1BF076EF8(v6, v5);
    v43 = v42;

    if ((v43 & 0x100000000) != 0)
    {
      goto LABEL_73;
    }

LABEL_77:

    return;
  }

  if ((v5 & 0x2000000000000000) == 0)
  {
    if ((v6 & 0x1000000000000000) != 0)
    {
      v10 = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v10 = sub_1BF17B2FC();
    }

    v11 = *v10;
    if (v11 == 43)
    {
      if (v8 >= 1)
      {
        v7 = v8 - 1;
        if (v8 != 1)
        {
          v26 = 0;
          if (v10)
          {
            v27 = v10 + 1;
            while (1)
            {
              v28 = *v27 - 48;
              if (v28 > 9)
              {
                goto LABEL_71;
              }

              v29 = 10 * v26;
              if ((v29 & 0xFFFFFFFF00000000) != 0)
              {
                goto LABEL_71;
              }

              v26 = v29 + v28;
              if (__CFADD__(v29, v28))
              {
                goto LABEL_71;
              }

              ++v27;
              if (!--v7)
              {
                goto LABEL_72;
              }
            }
          }

          goto LABEL_63;
        }

        goto LABEL_71;
      }

      goto LABEL_81;
    }

    if (v11 != 45)
    {
      if (v8)
      {
        v34 = 0;
        if (v10)
        {
          while (1)
          {
            v35 = *v10 - 48;
            if (v35 > 9)
            {
              goto LABEL_71;
            }

            v36 = 10 * v34;
            if ((v36 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_71;
            }

            v34 = v36 + v35;
            if (__CFADD__(v36, v35))
            {
              goto LABEL_71;
            }

            ++v10;
            if (!--v8)
            {
              goto LABEL_63;
            }
          }
        }

        goto LABEL_63;
      }

LABEL_71:
      LOBYTE(v7) = 1;
LABEL_72:
      v45 = v7;
      v41 = v7;
      _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
      if (v41)
      {
LABEL_73:
        sub_1BF05350C();
        swift_allocError();
        *v16 = v2;
        *(v16 + 8) = v6;
        *(v16 + 16) = v5;
        v25 = 13;
LABEL_74:
        *(v16 + 80) = v25;
        swift_willThrow();
        _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
        return;
      }

      goto LABEL_77;
    }

    if (v8 >= 1)
    {
      v7 = v8 - 1;
      if (v8 != 1)
      {
        v12 = 0;
        if (v10)
        {
          v13 = v10 + 1;
          while (1)
          {
            v14 = *v13 - 48;
            if (v14 > 9)
            {
              goto LABEL_71;
            }

            v15 = 10 * v12;
            if ((v15 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_71;
            }

            v12 = v15 - v14;
            if (v15 < v14)
            {
              goto LABEL_71;
            }

            ++v13;
            if (!--v7)
            {
              goto LABEL_72;
            }
          }
        }

LABEL_63:
        LOBYTE(v7) = 0;
        goto LABEL_72;
      }

      goto LABEL_71;
    }

    __break(1u);
LABEL_80:
    __break(1u);
LABEL_81:
    __break(1u);
    goto LABEL_82;
  }

  v44[0] = v6;
  v44[1] = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v7)
      {
        v37 = 0;
        v38 = v44;
        while (1)
        {
          v39 = *v38 - 48;
          if (v39 > 9)
          {
            break;
          }

          v40 = 10 * v37;
          if ((v40 & 0xFFFFFFFF00000000) != 0)
          {
            break;
          }

          v37 = v40 + v39;
          if (__CFADD__(v40, v39))
          {
            break;
          }

          ++v38;
          if (!--v7)
          {
            goto LABEL_72;
          }
        }
      }

      goto LABEL_71;
    }

    if (v7)
    {
      if (--v7)
      {
        v19 = 0;
        v20 = v44 + 1;
        while (1)
        {
          v21 = *v20 - 48;
          if (v21 > 9)
          {
            break;
          }

          v22 = 10 * v19;
          if ((v22 & 0xFFFFFFFF00000000) != 0)
          {
            break;
          }

          v19 = v22 - v21;
          if (v22 < v21)
          {
            break;
          }

          ++v20;
          if (!--v7)
          {
            goto LABEL_72;
          }
        }
      }

      goto LABEL_71;
    }

    goto LABEL_80;
  }

  if (v7)
  {
    if (--v7)
    {
      v30 = 0;
      v31 = v44 + 1;
      while (1)
      {
        v32 = *v31 - 48;
        if (v32 > 9)
        {
          break;
        }

        v33 = 10 * v30;
        if ((v33 & 0xFFFFFFFF00000000) != 0)
        {
          break;
        }

        v30 = v33 + v32;
        if (__CFADD__(v33, v32))
        {
          break;
        }

        ++v31;
        if (!--v7)
        {
          goto LABEL_72;
        }
      }
    }

    goto LABEL_71;
  }

LABEL_82:
  __break(1u);
}

uint64_t (*sub_1BF161150(uint64_t (*result)(uint64_t, unint64_t, uint64_t)))(uint64_t, unint64_t, uint64_t)
{
  v3 = *v1;
  v4 = v1[5];
  v5 = *v1 >> 61;
  if (v5 != 3)
  {
    v17 = sub_1BF05350C();
    OUTLINED_FUNCTION_26_10(&type metadata for JSONDecodingError, v17);
    OUTLINED_FUNCTION_29_11();
    v21 = 0x7265626D756ELL;
    switch(v5)
    {
      case 1uLL:
        OUTLINED_FUNCTION_26_12();
        break;
      case 2uLL:
        v20 = 0x676E69727473;
        break;
      case 3uLL:
        v20 = 0x7265626D756ELL;
        break;
      case 4uLL:
        v19 = 0xE400000000000000;
        v20 = 1702195828;
        v23 = 0xE500000000000000;
        v24 = 0x65736C6166;
        if (v3 != 0x8000000000000008)
        {
          v24 = 1819047278;
          v23 = 0xE400000000000000;
        }

        if (v3 != 0x8000000000000000)
        {
          v20 = v24;
          v19 = v23;
        }

        break;
      default:
        break;
    }

    *v18 = v4;
    *(v18 + 8) = v21;
    *(v18 + 16) = 0xE600000000000000;
    *(v18 + 24) = v20;
    v25 = 10;
    *(v18 + 32) = v19;
    goto LABEL_86;
  }

  v6 = v3 & 0x1FFFFFFFFFFFFFFFLL;
  v8 = *((v3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  v7 = *(v6 + 24);
  v9 = HIBYTE(v7) & 0xF;
  v10 = v8 & 0xFFFFFFFFFFFFLL;
  if ((v7 & 0x2000000000000000) != 0)
  {
    v11 = HIBYTE(v7) & 0xF;
  }

  else
  {
    v11 = v8 & 0xFFFFFFFFFFFFLL;
  }

  if (!v11)
  {
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    goto LABEL_85;
  }

  if ((v7 & 0x1000000000000000) != 0)
  {
    v31 = result;
    swift_bridgeObjectRetain_n();
    v2 = v31(v8, v7, 10);
    v33 = v32;

    if (v33)
    {
      goto LABEL_85;
    }

    goto LABEL_89;
  }

  if ((v7 & 0x2000000000000000) == 0)
  {
    if ((v8 & 0x1000000000000000) != 0)
    {
      result = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      result = sub_1BF17B2FC();
    }

    v12 = *result;
    if (v12 == 43)
    {
      if (v10 >= 1)
      {
        if (v10 != 1)
        {
          v2 = 0;
          if (result)
          {
            OUTLINED_FUNCTION_8_34();
            while (1)
            {
              OUTLINED_FUNCTION_15();
              if (!v14 && v13)
              {
                goto LABEL_83;
              }

              OUTLINED_FUNCTION_18_13();
              if (!v14)
              {
                goto LABEL_83;
              }

              OUTLINED_FUNCTION_13_26();
              if (v13)
              {
                goto LABEL_83;
              }

              OUTLINED_FUNCTION_44();
              if (v14)
              {
                goto LABEL_84;
              }
            }
          }

          goto LABEL_73;
        }

        goto LABEL_83;
      }

      goto LABEL_94;
    }

    if (v12 != 45)
    {
      if (v10)
      {
        v2 = 0;
        if (result)
        {
          while (1)
          {
            OUTLINED_FUNCTION_9_30();
            if (!v14 && v13)
            {
              goto LABEL_83;
            }

            if (!is_mul_ok(v2, v27))
            {
              goto LABEL_83;
            }

            v13 = __CFADD__(10 * v2, v28);
            v2 = 10 * v2 + v28;
            if (v13)
            {
              goto LABEL_83;
            }

            if (v26 == 1)
            {
              goto LABEL_73;
            }
          }
        }

        goto LABEL_73;
      }

LABEL_83:
      v2 = 0;
      v16 = 1;
LABEL_84:
      v29 = v16;
      _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
      if (v29)
      {
LABEL_85:
        v30 = sub_1BF05350C();
        OUTLINED_FUNCTION_26_10(&type metadata for JSONDecodingError, v30);
        *v18 = v4;
        *(v18 + 8) = v8;
        *(v18 + 16) = v7;
        v25 = 13;
LABEL_86:
        *(v18 + 80) = v25;
        swift_willThrow();
        _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
        return v2;
      }

LABEL_89:

      return v2;
    }

    if (v10 >= 1)
    {
      if (v10 != 1)
      {
        v2 = 0;
        if (result)
        {
          OUTLINED_FUNCTION_8_34();
          while (1)
          {
            OUTLINED_FUNCTION_15();
            if (!v14 && v13)
            {
              goto LABEL_83;
            }

            OUTLINED_FUNCTION_18_13();
            if (!v14)
            {
              goto LABEL_83;
            }

            v13 = 10 * v2 >= v15;
            v2 = 10 * v2 - v15;
            if (!v13)
            {
              goto LABEL_83;
            }

            OUTLINED_FUNCTION_44();
            if (v14)
            {
              goto LABEL_84;
            }
          }
        }

LABEL_73:
        v16 = 0;
        goto LABEL_84;
      }

      goto LABEL_83;
    }

    __break(1u);
LABEL_93:
    __break(1u);
LABEL_94:
    __break(1u);
    goto LABEL_95;
  }

  if (v8 != 43)
  {
    if (v8 != 45)
    {
      if (v9)
      {
        v2 = 0;
        while (1)
        {
          OUTLINED_FUNCTION_15();
          if (!v14 && v13)
          {
            break;
          }

          OUTLINED_FUNCTION_18_13();
          if (!v14)
          {
            break;
          }

          OUTLINED_FUNCTION_13_26();
          if (v13)
          {
            break;
          }

          OUTLINED_FUNCTION_44();
          if (v14)
          {
            goto LABEL_84;
          }
        }
      }

      goto LABEL_83;
    }

    if (v9)
    {
      if (v9 != 1)
      {
        v2 = 0;
        OUTLINED_FUNCTION_4_42();
        while (1)
        {
          OUTLINED_FUNCTION_15();
          if (!v14 && v13)
          {
            break;
          }

          OUTLINED_FUNCTION_18_13();
          if (!v14)
          {
            break;
          }

          v13 = 10 * v2 >= v22;
          v2 = 10 * v2 - v22;
          if (!v13)
          {
            break;
          }

          OUTLINED_FUNCTION_44();
          if (v14)
          {
            goto LABEL_84;
          }
        }
      }

      goto LABEL_83;
    }

    goto LABEL_93;
  }

  if (v9)
  {
    if (v9 != 1)
    {
      v2 = 0;
      OUTLINED_FUNCTION_4_42();
      while (1)
      {
        OUTLINED_FUNCTION_15();
        if (!v14 && v13)
        {
          break;
        }

        OUTLINED_FUNCTION_18_13();
        if (!v14)
        {
          break;
        }

        OUTLINED_FUNCTION_13_26();
        if (v13)
        {
          break;
        }

        OUTLINED_FUNCTION_44();
        if (v14)
        {
          goto LABEL_84;
        }
      }
    }

    goto LABEL_83;
  }

LABEL_95:
  __break(1u);
  return result;
}

id sub_1BF161620()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E696AC80]) init];
  result = [v0 setFormatOptions_];
  qword_1ED8EA738 = v0;
  return result;
}

uint64_t sub_1BF161670()
{
  qword_1EBDCC798 = &type metadata for _JSONKey;
  qword_1EBDCC7A0 = sub_1BF02A58C();
  result = swift_allocObject();
  qword_1EBDCC780[0] = result;
  *(result + 16) = 0x7265707573;
  *(result + 24) = 0xE500000000000000;
  *(result + 32) = 0;
  *(result + 40) = 1;
  return result;
}

uint64_t sub_1BF161738()
{
  v1 = *v0;
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  return v1;
}

void sub_1BF161768(uint64_t a1@<X8>)
{
  sub_1BF1616E0();
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
}

uint64_t sub_1BF1617A4@<X0>(uint64_t a1@<X8>)
{
  result = sub_1BF1616EC();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_1BF1617D4(uint64_t a1)
{
  v2 = sub_1BF02A58C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF161810(uint64_t a1)
{
  v2 = sub_1BF02A58C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t get_enum_tag_for_layout_string_13TeaFoundation01_A11JSONDecoderC19KeyDecodingStrategyO(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1BF161988(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1BF1619D8(uint64_t result, unsigned int a2, unsigned int a3)
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
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_1BF161A4C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 25))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
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

uint64_t sub_1BF161A8C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1BF161AE0(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1BF161B20(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1BF161B88(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1BF161BC8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id FrameworkAssembly.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id FrameworkAssembly.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1BF161CEC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (a2 == 1 || !*(a1 + 32))
    {
      v2 = ((2 * ((*(a1 + 8) & 0x1000000000000000) != 0)) | ((*(a1 + 8) >> 60) >> 1) & 1) ^ 3;
      if (v2 >= 2)
      {
        v2 = -1;
      }

      if (v2 + 1 >= 2)
      {
        return v2;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      return (*a1 + 2);
    }
  }

  return a2;
}

uint64_t sub_1BF161D3C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 1)
  {
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2;
    if (a3 >= 2)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 2)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = xmmword_1BF189F10;
      *(result + 16) = 0;
      *(result + 24) = 0;
    }
  }

  return result;
}

uint64_t sub_1BF161D9C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 3 && *(a1 + 32))
    {
      v2 = *a1 + 2;
    }

    else
    {
      v2 = ((2 * ((*(a1 + 8) & 0x1000000000000000) != 0)) | ((*(a1 + 8) >> 60) >> 1) & 1) ^ 3;
      if (v2 >= 2)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_1BF161DE8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 3;
    *(result + 8) = 0;
    if (a3 >= 3)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 3)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = ((2 * a2) & 2 | 1u) << 60;
      *(result + 16) = 0;
      *(result + 24) = 0;
    }
  }

  return result;
}

uint64_t sub_1BF161E58()
{

  swift_weakDestroy();

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

uint64_t Array.countWhere(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1BF17A65C();
  OUTLINED_FUNCTION_7_0();
  swift_getWitnessTable();
  sub_1BF17A3FC();
  return v5;
}

uint64_t sub_1BF161F64@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *a1;
  result = (*(v3 + 24))(a2);
  if (__OFADD__(v5, result & 1))
  {
    __break(1u);
  }

  else
  {
    *a3 = v5 + (result & 1);
  }

  return result;
}

uint64_t Array.first<A>(ofType:)@<X0>(uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  sub_1BF17AE6C();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_59();
  MEMORY[0x1EEE9AC00](v6, v7);
  sub_1BF17A65C();
  OUTLINED_FUNCTION_7_0();
  swift_getWitnessTable();
  sub_1BF17A3CC();
  v8 = swift_dynamicCast();
  return __swift_storeEnumTagSinglePayload(a4, v8 ^ 1u, 1, a3);
}

uint64_t sub_1BF1620C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1, a1);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7, v8);
  (*(v11 + 16))(&v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v9);
  v12 = swift_dynamicCast();
  if (v12)
  {
    (*(v4 + 8))(v6, a3);
  }

  return v12;
}

uint64_t Array.indexes(where:)@<X0>(uint64_t (*a1)(uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v39 = a1;
  v40 = a2;
  OUTLINED_FUNCTION_2_3();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11, v12);
  OUTLINED_FUNCTION_2_0();
  v15 = v14 - v13;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v43 = sub_1BF17AE6C();
  OUTLINED_FUNCTION_2_3();
  v37 = v16;
  MEMORY[0x1EEE9AC00](v17, v18);
  OUTLINED_FUNCTION_4_1();
  v42 = v19 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v37 - v23;
  v38 = a5;
  sub_1BF17967C();
  v45 = a3;
  v25 = a4;
  v26 = sub_1BF17A65C();
  OUTLINED_FUNCTION_7_0();
  WitnessTable = swift_getWitnessTable();
  MEMORY[0x1BFB52170](&v46, v26, WitnessTable);
  v45 = v46;
  sub_1BF17B4FC();
  sub_1BF17B4CC();
  v41 = sub_1BF17B4EC();
  v28 = (v37 + 32);
  v29 = v10;
  v30 = (v10 + 32);
  for (i = (v29 + 8); ; (*i)(v15, v25))
  {
    v32 = v42;
    sub_1BF17B4DC();
    (*v28)(v24, v32, v43);
    v33 = TupleTypeMetadata2;
    if (__swift_getEnumTagSinglePayload(v24, 1, TupleTypeMetadata2) == 1)
    {
    }

    (*v30)(v15, &v24[*(v33 + 48)], v25);
    v34 = v39(v15);
    if (v5)
    {
      break;
    }

    if (v34)
    {
      sub_1BF17966C();
    }
  }

  (*i)(v15, v25);

  sub_1BF17968C();
  OUTLINED_FUNCTION_12();
  return (*(v36 + 8))(v38);
}

Swift::String_optional __swiftcall Array.jsonRepresentation(options:)(NSJSONWritingOptions options)
{
  v18[1] = *MEMORY[0x1E69E9840];
  v2 = sub_1BF17A12C();
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  OUTLINED_FUNCTION_2_0();
  v4 = objc_opt_self();
  v5 = sub_1BF17A4CC();
  v18[0] = 0;
  v6 = [v4 dataWithJSONObject:v5 options:options error:v18];

  v7 = v18[0];
  if (v6)
  {
    v8 = sub_1BF17935C();
    v10 = v9;

    sub_1BF17A10C();
    v11 = sub_1BF17A0CC();
    v6 = v12;
    sub_1BF014E18(v8, v10);
  }

  else
  {
    v13 = v7;
    v14 = sub_1BF17911C();

    swift_willThrow();
    v11 = 0;
  }

  v15 = v11;
  v16 = v6;
  result.value._object = v16;
  result.value._countAndFlagsBits = v15;
  return result;
}

uint64_t Array<A>.average.getter(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v30[1] = *(*(a3 + 24) + 16);
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_59();
  MEMORY[0x1EEE9AC00](v5, v6);
  OUTLINED_FUNCTION_2_3();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9, v10);
  OUTLINED_FUNCTION_4_1();
  v31 = v11 - v12;
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = v30 - v15;
  v32 = a1;
  sub_1BF17A65C();
  OUTLINED_FUNCTION_10_0();
  swift_getWitnessTable();
  result = sub_1BF17AB6C();
  if (result)
  {
    return result;
  }

  OUTLINED_FUNCTION_10_35();
  Array<A>.total.getter();
  OUTLINED_FUNCTION_5_46();
  v18 = a1;
  if ((sub_1BF17AFEC() & 1) == 0)
  {
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_1_64();
  if (sub_1BF17AFDC() <= 64)
  {
    goto LABEL_15;
  }

  v32 = 0x8000000000000000;
  OUTLINED_FUNCTION_5_46();
  if (sub_1BF17AFEC())
  {
    OUTLINED_FUNCTION_1_64();
    if (sub_1BF17AFDC() < 64)
    {
      goto LABEL_14;
    }

    goto LABEL_9;
  }

  OUTLINED_FUNCTION_5_46();
  v19 = sub_1BF17AFEC();
  OUTLINED_FUNCTION_1_64();
  v20 = sub_1BF17AFDC();
  if (v19)
  {
    v18 = a1;
    if (v20 > 64)
    {
LABEL_9:
      sub_1BF0475B0();
      sub_1BF17AF9C();
      OUTLINED_FUNCTION_11_26();
      OUTLINED_FUNCTION_8_35();
      v21 = OUTLINED_FUNCTION_10_35();
      result = v22(v21);
      if ((a2 & 1) == 0)
      {
        goto LABEL_15;
      }

LABEL_27:
      __break(1u);
      return result;
    }

    swift_getAssociatedConformanceWitness();
    OUTLINED_FUNCTION_16_22(&unk_1BF180B40);
    OUTLINED_FUNCTION_13_27();
    sub_1BF17B83C();
    OUTLINED_FUNCTION_11_26();
    OUTLINED_FUNCTION_8_35();
    v23 = OUTLINED_FUNCTION_10_35();
    result = v24(v23);
    if (a2)
    {
      goto LABEL_27;
    }

LABEL_14:
    OUTLINED_FUNCTION_1_64();
    sub_1BF17AFCC();
    goto LABEL_15;
  }

  v18 = a1;
  if (v20 < 64)
  {
    goto LABEL_14;
  }

LABEL_15:
  OUTLINED_FUNCTION_1_64();
  if (sub_1BF17AFDC() <= 64)
  {
    goto LABEL_20;
  }

  while (1)
  {
    v25 = v18;
    v32 = 0x7FFFFFFFFFFFFFFFLL;
    OUTLINED_FUNCTION_5_46();
    v26 = sub_1BF17AFEC();
    OUTLINED_FUNCTION_1_64();
    v27 = sub_1BF17AFDC();
    if ((v26 & 1) == 0)
    {
      break;
    }

    if (v27 < 65)
    {
      goto LABEL_24;
    }

LABEL_18:
    sub_1BF0475B0();
    v28 = v31;
    sub_1BF17AF9C();
    sub_1BF179F8C();
    OUTLINED_FUNCTION_8_35();
    v29(v28, a2);
    v18 = v25;
    if (a2)
    {
      __break(1u);
LABEL_20:
      OUTLINED_FUNCTION_1_64();
      if (sub_1BF17AFDC() == 64)
      {
        OUTLINED_FUNCTION_5_46();
        if ((sub_1BF17AFEC() & 1) == 0)
        {
          continue;
        }
      }
    }

    goto LABEL_25;
  }

  if (v27 >= 64)
  {
    goto LABEL_18;
  }

LABEL_24:
  OUTLINED_FUNCTION_1_64();
  sub_1BF17AFCC();
LABEL_25:
  OUTLINED_FUNCTION_1_64();
  sub_1BF17AFCC();
  (*(v8 + 8))(v16, a2);
  return sub_1BF17A5AC();
}

void Array<A>.uniqueInsert(_:at:)()
{
  OUTLINED_FUNCTION_32();
  v2 = v1;
  v4 = *(v3 + 16);
  OUTLINED_FUNCTION_2_3();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7, v8);
  OUTLINED_FUNCTION_2_0();
  v11 = v10 - v9;
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  OUTLINED_FUNCTION_7_33();
  v12 = sub_1BF17B31C();
  swift_getWitnessTable();
  sub_1BF17A9DC();
  sub_1BF036A78();
  if (sub_1BF17AC7C())
  {

    *v0 = v12;
    (*(v6 + 16))(v11, v2, v4);
    sub_1BF17A5EC();
  }

  else
  {
  }

  OUTLINED_FUNCTION_26_2();
}

void Array<A>.uniqueAppend(_:)()
{
  OUTLINED_FUNCTION_32();
  v1 = v0;
  v3 = v2;
  v5 = *(v4 + 16);
  OUTLINED_FUNCTION_2_3();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8, v9);
  OUTLINED_FUNCTION_2_0();
  v12 = v11 - v10;
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  OUTLINED_FUNCTION_7_33();
  v13 = sub_1BF17B31C();

  *v1 = v13;
  (*(v7 + 16))(v12, v3, v5);
  sub_1BF17A5DC();
  OUTLINED_FUNCTION_26_2();
}

uint64_t Node.isLinked.getter()
{
  OUTLINED_FUNCTION_29();
  v2 = *(v1 + 96);
  OUTLINED_FUNCTION_3_5(v0 + v2, v6);
  if (!*(v0 + v2))
  {
    OUTLINED_FUNCTION_29();
    OUTLINED_FUNCTION_3_5(v0 + *(v3 + 104), &v5);
    result = swift_weakLoadStrong();
    if (!result)
    {
      return result;
    }
  }

  return 1;
}

uint64_t Node.value.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_5_47();
  v5 = *(v4 + 88);
  swift_beginAccess();
  (*(*(*(v2 + 80) - 8) + 40))(v1 + v5, a1);
  return swift_endAccess();
}

uint64_t (*Node.value.modify())(uint64_t a1)
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_30_8();
  return j_j__swift_endAccess;
}

uint64_t Node.next.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_29();
  v4 = *(v3 + 96);
  OUTLINED_FUNCTION_125(v1 + v4, v6);
  *(v1 + v4) = a1;
}

uint64_t (*Node.next.modify())(uint64_t a1)
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_30_8();
  return j__swift_endAccess;
}

uint64_t sub_1BF162FEC@<X0>(uint64_t *a2@<X8>)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  *a2 = result;
  return result;
}

uint64_t Node.previous.getter()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_26_4(v0 + *(v1 + 104), v2);
  return swift_weakLoadStrong();
}

uint64_t Node.previous.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_125(v1 + *(v2 + 104), v4);
  swift_weakAssign();
}

void (*Node.previous.modify(void *a1))(void **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v3[4] = v1;
  OUTLINED_FUNCTION_29();
  *(v5 + 40) = *(v4 + 104);
  swift_beginAccess();
  v3[3] = swift_weakLoadStrong();
  return sub_1BF1631F0;
}

void sub_1BF1631F0(void **a1, char a2)
{
  v3 = *a1;
  swift_weakAssign();
  if (a2)
  {

    swift_endAccess();
  }

  else
  {
    swift_endAccess();
  }

  free(v3);
}

uint64_t DoublyLinkedList.init()()
{
  result = v0;
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  return result;
}

uint64_t DoublyLinkedList.deinit()
{

  return v0;
}

uint64_t DoublyLinkedList.__deallocating_deinit()
{
  DoublyLinkedList.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

uint64_t JSONDecodingError.description.getter()
{
  sub_1BF163AA4(v1, &v73);
  switch(v82)
  {
    case 1:
      v22 = *(&v73 + 1);
      v32 = v73;
      v21 = v74;
      OUTLINED_FUNCTION_1_55();
      sub_1BF17B1EC();

      OUTLINED_FUNCTION_0_84();
      v35 = v47 - 3;
      goto LABEL_12;
    case 2:
      v22 = *(&v73 + 1);
      v32 = v73;
      v21 = v74;
      OUTLINED_FUNCTION_1_55();
      sub_1BF17B1EC();

      OUTLINED_FUNCTION_0_84();
      v35 = v34 - 4;
LABEL_12:
      v69 = v35;
      v70 = v33;
      Array<A>.path.getter(v32);
      OUTLINED_FUNCTION_19_0();

      OUTLINED_FUNCTION_4_43();
      goto LABEL_19;
    case 3:
      v36 = v77;
      sub_1BEFE87B0(&v73, &v69);
      OUTLINED_FUNCTION_0_84();
      v68 = v37 - 13;
      v38 = v71;
      v39 = v72;
      __swift_project_boxed_opaque_existential_1(&v69, v71);
      v40 = CodingKey.pathSegment.getter(v38, v39);
      v42 = v41;
      MEMORY[0x1BFB52000](v40);

      MEMORY[0x1BFB52000](0x676E69646F63202CLL, 0xEE00203A68746150);
      Array<A>.path.getter(v36);
      OUTLINED_FUNCTION_18();
      MEMORY[0x1BFB52000](v42, v3);
      goto LABEL_9;
    case 4:
      v20 = v73;
      v22 = v74;
      v21 = v75;
      OUTLINED_FUNCTION_1_55();
      sub_1BF17B1EC();
      OUTLINED_FUNCTION_9_31();
      OUTLINED_FUNCTION_3_50();
      Array<A>.path.getter(v20);
      OUTLINED_FUNCTION_19_0();

      OUTLINED_FUNCTION_4_43();

      OUTLINED_FUNCTION_6_42();
      sub_1BF17A8AC();
      v23 = 0x203A65707974202CLL;
      v24 = 0xE800000000000000;
      goto LABEL_20;
    case 5:
      v48 = v73;
      v50 = v74;
      v49 = v75;
      OUTLINED_FUNCTION_1_55();
      sub_1BF17B1EC();
      OUTLINED_FUNCTION_9_31();
      OUTLINED_FUNCTION_3_50();
      v51 = Array<A>.path.getter(v48);
      v53 = v52;

      MEMORY[0x1BFB52000](v51, v53);

      MEMORY[0x1BFB52000](0x74616D726F66202CLL, 0xED0000203A726574);
      v54 = [*(&v48 + 1) description];
      sub_1BF17A0AC();
      OUTLINED_FUNCTION_19_0();

      OUTLINED_FUNCTION_4_43();

      v55 = OUTLINED_FUNCTION_2_63();
      MEMORY[0x1BFB52000](v55);
      MEMORY[0x1BFB52000](v50, v49);

      MEMORY[0x1BFB52000](41, 0xE100000000000000);

      return v69;
    case 6:
      OUTLINED_FUNCTION_12_25();
      OUTLINED_FUNCTION_0_84();
      v31 = v59 - 6;
      goto LABEL_16;
    case 7:
      v44 = v73;
      OUTLINED_FUNCTION_1_55();
      sub_1BF17B1EC();
      OUTLINED_FUNCTION_9_31();
      OUTLINED_FUNCTION_7_34();
      MEMORY[0x1BFB52000](v45 - 3, v46 | 0x8000000000000000);
      Array<A>.path.getter(v44);
      OUTLINED_FUNCTION_18();
      MEMORY[0x1BFB52000](v2, v3);

      OUTLINED_FUNCTION_6_42();
      sub_1BF17A8AC();
      goto LABEL_26;
    case 8:
      OUTLINED_FUNCTION_12_25();
      OUTLINED_FUNCTION_0_84();
      v58 = v66 | 1;
      goto LABEL_22;
    case 9:
      OUTLINED_FUNCTION_12_25();
      OUTLINED_FUNCTION_0_84();
      v31 = v30 - 7;
LABEL_16:
      v69 = v31;
      v70 = v29;
      Array<A>.path.getter(v0);
      OUTLINED_FUNCTION_19_0();

      OUTLINED_FUNCTION_4_43();

      v60 = 0x3A65756C6176202CLL;
      v61 = 0xE900000000000020;
      goto LABEL_23;
    case 10:
      v27 = *(&v73 + 1);
      v62 = v73;
      v26 = v74;
      v22 = v75;
      v21 = v76;
      OUTLINED_FUNCTION_1_55();
      sub_1BF17B1EC();
      OUTLINED_FUNCTION_9_31();
      OUTLINED_FUNCTION_7_34();
      MEMORY[0x1BFB52000](v63 - 8, v64 | 0x8000000000000000);
      Array<A>.path.getter(v62);
      OUTLINED_FUNCTION_10_36();
      MEMORY[0x1BFB52000](v4, v5);
      goto LABEL_18;
    case 11:
      v9 = v73;
      v11 = v78;
      v10 = v79;
      v13 = v80;
      v12 = v81;
      sub_1BEFE87B0((&v73 + 8), &v69);
      v68 = 0;
      sub_1BF17B1EC();
      OUTLINED_FUNCTION_7_34();
      MEMORY[0x1BFB52000](v14 - 2, v15 | 0x8000000000000000);
      Array<A>.path.getter(v9);
      OUTLINED_FUNCTION_10_36();
      MEMORY[0x1BFB52000](v4, v5);

      MEMORY[0x1BFB52000](0x203A79656B202CLL, 0xE700000000000000);
      v16 = v71;
      v17 = v72;
      __swift_project_boxed_opaque_existential_1(&v69, v71);
      v18 = CodingKey.pathSegment.getter(v16, v17);
      MEMORY[0x1BFB52000](v18);

      v19 = OUTLINED_FUNCTION_5_48();
      MEMORY[0x1BFB52000](v19);
      MEMORY[0x1BFB52000](v11, v10);

      MEMORY[0x1BFB52000](0x6C6175746361202CLL, 0xEA0000000000203ALL);
      MEMORY[0x1BFB52000](v13, v12);
LABEL_9:

      MEMORY[0x1BFB52000](41, 0xE100000000000000);
      v43 = v68;
      __swift_destroy_boxed_opaque_existential_1(&v69);
      return v43;
    case 12:
      v25 = v73;
      v27 = v74;
      v26 = v75;
      v22 = v76;
      v21 = v77;
      OUTLINED_FUNCTION_1_55();
      sub_1BF17B1EC();
      OUTLINED_FUNCTION_9_31();
      OUTLINED_FUNCTION_3_50();
      Array<A>.path.getter(v25);
      OUTLINED_FUNCTION_10_36();
      MEMORY[0x1BFB52000](v4, v5);

      MEMORY[0x1BFB52000](0x3A7865646E69202CLL, 0xE900000000000020);
      v28 = sub_1BF17B6FC();
      MEMORY[0x1BFB52000](v28);
LABEL_18:

      v65 = OUTLINED_FUNCTION_5_48();
      MEMORY[0x1BFB52000](v65);
      MEMORY[0x1BFB52000](v27, v26);
LABEL_19:

      v23 = OUTLINED_FUNCTION_2_63();
LABEL_20:
      MEMORY[0x1BFB52000](v23, v24);
      MEMORY[0x1BFB52000](v22, v21);
      goto LABEL_25;
    case 13:
      OUTLINED_FUNCTION_12_25();
      OUTLINED_FUNCTION_0_84();
      v58 = v57 + 2;
LABEL_22:
      v69 = v58;
      v70 = v56;
      Array<A>.path.getter(v0);
      OUTLINED_FUNCTION_19_0();

      OUTLINED_FUNCTION_4_43();

      v60 = OUTLINED_FUNCTION_2_63();
LABEL_23:
      MEMORY[0x1BFB52000](v60, v61);
      goto LABEL_24;
    default:
      v6 = v73;
      OUTLINED_FUNCTION_1_55();
      sub_1BF17B1EC();

      OUTLINED_FUNCTION_0_84();
      v69 = v8 + 4;
      v70 = v7;
      Array<A>.path.getter(v6);
      OUTLINED_FUNCTION_18();
LABEL_24:
      MEMORY[0x1BFB52000](v2, v3);
LABEL_25:

LABEL_26:
      MEMORY[0x1BFB52000](41, 0xE100000000000000);
      return v69;
  }
}

uint64_t sub_1BF163AE8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF3 && *(a1 + 81))
  {
    return (*a1 + 243);
  }

  v3 = *(a1 + 80);
  if (v3 >= 0xE)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1BF163B24(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF2)
  {
    *(result + 80) = 0;
    *(result + 48) = 0u;
    *(result + 64) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 243;
    if (a3 >= 0xF3)
    {
      *(result + 81) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF3)
    {
      *(result + 81) = 0;
    }

    if (a2)
    {
      *(result + 80) = -a2;
    }
  }

  return result;
}

uint64_t sub_1BF163B78(uint64_t result, unsigned int a2)
{
  if (a2 > 0xD)
  {
    *(result + 48) = 0u;
    *(result + 64) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 14;
    LOBYTE(a2) = 14;
  }

  *(result + 80) = a2;
  return result;
}

uint64_t fuzzJSONDecoder(Data:Size:)(uint64_t a1, int a2)
{
  MEMORY[0x1BFB51140](a1, a2);
  type metadata accessor for JSONParser();
  swift_allocObject();
  v2 = OUTLINED_FUNCTION_129();
  sub_1BF0151A4(v2, v3, 0, 0);
  v4 = OUTLINED_FUNCTION_129();
  sub_1BF014DC0(v4, v5);
  sub_1BF015DC4(&v9);
  sub_1BF017214(v9);
  v6 = OUTLINED_FUNCTION_129();
  sub_1BF014E18(v6, v7);

  return 0;
}

uint64_t sub_1BF163CE4(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = a1[4];
  v8 = a1[5];
  switch(*(a1 + 48))
  {
    case 1:
      if (*(a2 + 48) != 1)
      {
        goto LABEL_86;
      }

      goto LABEL_46;
    case 2:
      if (*(a2 + 48) != 2)
      {
        goto LABEL_86;
      }

      goto LABEL_46;
    case 3:
      if (*(a2 + 48) != 3)
      {
        goto LABEL_86;
      }

      if (v4 != *a2 || v3 != *(a2 + 8))
      {
        goto LABEL_86;
      }

      v13 = *(a2 + 32);
      v14 = *(a2 + 40);
      v15 = v5 == *(a2 + 16) && v6 == *(a2 + 24);
      if (!v15 && (sub_1BF17B86C() & 1) == 0)
      {
        goto LABEL_86;
      }

      if (v7 != v13 || v8 != v14)
      {
        goto LABEL_55;
      }

      goto LABEL_87;
    case 4:
      if (*(a2 + 48) != 4)
      {
        goto LABEL_86;
      }

      goto LABEL_46;
    case 5:
      if (*(a2 + 48) != 5)
      {
        goto LABEL_86;
      }

      goto LABEL_80;
    case 6:
      if (*(a2 + 48) != 6)
      {
        goto LABEL_86;
      }

      goto LABEL_80;
    case 7:
      if (*(a2 + 48) != 7)
      {
        goto LABEL_86;
      }

      goto LABEL_80;
    case 8:
      if (*(a2 + 48) == 8)
      {
        goto LABEL_71;
      }

      goto LABEL_86;
    case 9:
      if (*(a2 + 48) != 9)
      {
        goto LABEL_86;
      }

      goto LABEL_71;
    case 0xA:
      if (*(a2 + 48) != 10)
      {
        goto LABEL_86;
      }

      goto LABEL_71;
    case 0xB:
      if (*(a2 + 48) != 11)
      {
        goto LABEL_86;
      }

      if (v4 != *a2 || v3 != *(a2 + 8))
      {
        goto LABEL_86;
      }

      v10 = *(a2 + 16);

      return sub_1BF074204(v5, v10);
    case 0xC:
      if (*(a2 + 48) != 12)
      {
        goto LABEL_86;
      }

LABEL_71:
      if (v4 == *a2 && v3 == *(a2 + 8))
      {

        JUMPOUT(0x1BFB51120);
      }

      goto LABEL_86;
    case 0xD:
      if (*(a2 + 48) != 13)
      {
        goto LABEL_86;
      }

      goto LABEL_80;
    case 0xE:
      if (*(a2 + 48) != 14)
      {
        goto LABEL_86;
      }

      goto LABEL_80;
    case 0xF:
      if (*(a2 + 48) != 15)
      {
        goto LABEL_86;
      }

      goto LABEL_80;
    case 0x10:
      if (*(a2 + 48) != 16)
      {
        goto LABEL_86;
      }

      goto LABEL_80;
    case 0x11:
      if (*(a2 + 48) != 17)
      {
        goto LABEL_86;
      }

      goto LABEL_80;
    case 0x12:
      if (*(a2 + 48) != 18)
      {
        goto LABEL_86;
      }

      goto LABEL_80;
    case 0x13:
      if (*(a2 + 48) != 19)
      {
        goto LABEL_86;
      }

LABEL_80:
      result = v4 == *a2 && v3 == *(a2 + 8);
      break;
    default:
      if (*(a2 + 48))
      {
        goto LABEL_86;
      }

LABEL_46:
      if (v4 == *a2 && v3 == *(a2 + 8))
      {
        if (v5 == *(a2 + 16) && v6 == *(a2 + 24))
        {
LABEL_87:
          result = 1;
        }

        else
        {
LABEL_55:

          result = sub_1BF17B86C();
        }
      }

      else
      {
LABEL_86:
        result = 0;
      }

      break;
  }

  return result;
}

uint64_t sub_1BF163F94(uint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = BYTE6(a3);
  v4 = a3 >> 62;
  v6 = 0;
  v7 = 0;
  switch(v4)
  {
    case 1uLL:
      v7 = a2;
      v6 = a2 >> 32;
      break;
    case 2uLL:
      v7 = *(a2 + 16);
      v6 = *(a2 + 24);
      break;
    case 3uLL:
      break;
    default:
      v7 = 0;
      v6 = v3;
      break;
  }

  if (v6 >= result && v6 >= v7)
  {
    return sub_1BF17930C();
  }

  __break(1u);
  return result;
}

uint64_t sub_1BF163FF8(uint64_t result, unsigned __int8 a2)
{
  if (v2[4] > result)
  {
    v5 = result;
    result = sub_1BF17931C();
    if (result == a2)
    {
      return result;
    }

    v15 = v2[5];
    v16 = v2[7];
    v17 = v15 - v16;
    if (!__OFSUB__(v15, v16))
    {
      v18 = v2[6];
      sub_1BF164358(0, &qword_1ED8EF478, MEMORY[0x1E69E6F90]);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_1BF17DEF0;
      *(v19 + 32) = a2;
      v20 = sub_1BF16422C(v19);
      v22 = v21;

      if (!v3)
      {
        v30 = v17;
        v23 = sub_1BF053C98(v5, v5, v2[2], v2[3]);
        v25 = v24;
        v26 = sub_1BF016E04(v23, v24);
        v28 = v27;
        sub_1BF014E18(v23, v25);
        sub_1BF053D1C();
        swift_allocError();
        *v29 = v18;
        *(v29 + 8) = v30;
        *(v29 + 16) = v20;
        *(v29 + 24) = v22;
        *(v29 + 32) = v26;
        *(v29 + 40) = v28;
        *(v29 + 48) = 3;
        return swift_willThrow();
      }

      return result;
    }

LABEL_12:
    __break(1u);
    return result;
  }

  v6 = v2[5];
  v7 = v2[7];
  v8 = v6 - v7;
  if (__OFSUB__(v6, v7))
  {
    __break(1u);
    goto LABEL_12;
  }

  v9 = v2[6];
  sub_1BF164358(0, &qword_1ED8EF478, MEMORY[0x1E69E6F90]);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1BF17DEF0;
  *(v10 + 32) = a2;
  v11 = sub_1BF16422C(v10);
  v13 = v12;

  if (!v3)
  {
    sub_1BF053D1C();
    swift_allocError();
    *v14 = v9;
    *(v14 + 8) = v8;
    *(v14 + 16) = v11;
    *(v14 + 24) = v13;
    *(v14 + 32) = 0;
    *(v14 + 40) = 0;
    *(v14 + 48) = 0;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1BF16422C(uint64_t a1)
{
  v3 = sub_1BF17A12C();
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  sub_1BF17A10C();
  sub_1BF164358(0, &qword_1ED8EDD80, MEMORY[0x1E69E62F8]);
  sub_1BF060290();
  result = sub_1BF17A0DC();
  if (!v6)
  {
    v7 = v1[5];
    v8 = v1[7];
    v9 = v7 - v8;
    if (__OFSUB__(v7, v8))
    {
      __break(1u);
    }

    else
    {
      v10 = v1[6];
      sub_1BF053D1C();
      swift_allocError();
      *v11 = v10;
      *(v11 + 8) = v9;
      *(v11 + 16) = a1;
      *(v11 + 24) = 0;
      *(v11 + 32) = 0;
      *(v11 + 40) = 0;
      *(v11 + 48) = 11;
      swift_willThrow();
      return _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    }
  }

  return result;
}

void sub_1BF164358(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x1E69E7508]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1BF1643AC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xED && *(a1 + 49))
    {
      v2 = *a1 + 236;
    }

    else
    {
      v3 = *(a1 + 48);
      if (v3 <= 0x13)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1BF1643EC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xEC)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 237;
    if (a3 >= 0xED)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xED)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 48) = -a2;
    }
  }

  return result;
}

uint64_t sub_1BF164458()
{

  return v0;
}

uint64_t sub_1BF164490()
{
  sub_1BF164458();

  return MEMORY[0x1EEE6BDC0](v0, 48, 7);
}

uint64_t ObjectAssociation.__allocating_init(policy:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t ObjectAssociation.subscript.getter(void *a1)
{
  if (objc_getAssociatedObject(a1, v1))
  {
    sub_1BF17B01C();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6[0] = v4;
  v6[1] = v5;
  if (*(&v5 + 1))
  {
    sub_1BEFF9A40(v6, &v7);
    swift_dynamicCast();
    return v3;
  }

  else
  {
    sub_1BEFFD168(v6);
    return 0;
  }
}

uint64_t sub_1BF1645D4@<X0>(void **a1@<X1>, uint64_t *a2@<X8>)
{
  result = ObjectAssociation.subscript.getter(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1BF164604(void **a1, uint64_t a2, void **a3)
{
  v3 = *a3;
  v4 = *a1;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  return ObjectAssociation.subscript.setter(v4, v3);
}

uint64_t ObjectAssociation.subscript.setter(id value, id object)
{
  objc_setAssociatedObject(object, v2, value, v2[2]);
  swift_unknownObjectRelease();

  return swift_unknownObjectRelease();
}

uint64_t (*ObjectAssociation.subscript.modify(uint64_t *a1, void *a2))(void **a1, char a2)
{
  a1[1] = a2;
  a1[2] = v2;
  *a1 = ObjectAssociation.subscript.getter(a2);
  return sub_1BF1646F8;
}

uint64_t sub_1BF1646F8(void **a1, char a2)
{
  v2 = a1[1];
  v3 = *a1;
  if (a2)
  {
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    ObjectAssociation.subscript.setter(v3, v2);

    return swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRetain();
    return ObjectAssociation.subscript.setter(v3, v2);
  }
}

uint64_t Set.removeAll(where:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  result = sub_1BF17A93C();
  if (!v4)
  {
    v6 = result;

    *v3 = v6;
  }

  return result;
}

uint64_t ReferenceData.data.getter()
{
  v1 = *v0;
  sub_1BF014DC0(*v0, *(v0 + 8));
  return v1;
}

uint64_t sub_1BF164914(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1635017060 && a2 == 0xE400000000000000;
  if (v3 || (sub_1BF17B86C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1819242352 && a2 == 0xE400000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1BF17B86C();

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

uint64_t sub_1BF1649E4(char a1)
{
  if (a1)
  {
    return 1819242352;
  }

  else
  {
    return 1635017060;
  }
}

uint64_t sub_1BF164A0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BF164914(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BF164A34(uint64_t a1)
{
  v2 = sub_1BF164C98();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF164A70(uint64_t a1)
{
  v2 = sub_1BF164C98();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ReferenceData.encode(to:)(void *a1)
{
  sub_1BF164F88(0, &qword_1EBDCC7E0, MEMORY[0x1E69E6F58]);
  OUTLINED_FUNCTION_1();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v17 - v8;
  v10 = *v1;
  v11 = v1[1];
  v18 = v1[2];
  v12 = a1[3];
  v13 = a1;
  v15 = v14;
  __swift_project_boxed_opaque_existential_1(v13, v12);
  sub_1BF014DC0(v10, v11);
  sub_1BF164C98();
  sub_1BF17BC1C();
  v19 = v10;
  v20 = v11;
  v21 = 0;
  sub_1BF164CEC();
  sub_1BF17B69C();
  sub_1BF014E18(v19, v20);
  if (!v2)
  {
    v19 = v18;
    v21 = 1;
    type metadata accessor for ReferenceEncodingPool();
    sub_1BF165040(&qword_1EBDCC7F8, &protocol conformance descriptor for ReferenceEncodingPool);
    sub_1BF17B69C();
  }

  return (*(v5 + 8))(v9, v15);
}

unint64_t sub_1BF164C98()
{
  result = qword_1EBDCC7E8;
  if (!qword_1EBDCC7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDCC7E8);
  }

  return result;
}

unint64_t sub_1BF164CEC()
{
  result = qword_1EBDCC7F0;
  if (!qword_1EBDCC7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDCC7F0);
  }

  return result;
}

uint64_t ReferenceData.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1BF164F88(0, &qword_1EBDCC800, MEMORY[0x1E69E6F48]);
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v5, v6);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BF164C98();
  sub_1BF17BBDC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  sub_1BF164FEC();
  sub_1BF17B5FC();
  type metadata accessor for ReferenceEncodingPool();
  sub_1BF165040(&qword_1EBDCC810, &protocol conformance descriptor for ReferenceEncodingPool);
  sub_1BF17B5FC();
  v7 = OUTLINED_FUNCTION_10_4();
  v8(v7);
  *a2 = v10;
  a2[1] = v11;
  a2[2] = v10;
  sub_1BF014DC0(v10, v11);

  __swift_destroy_boxed_opaque_existential_1(a1);
  sub_1BF014E18(v10, v11);
}

void sub_1BF164F88(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1BF164C98();
    v7 = a3(a1, &type metadata for ReferenceData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1BF164FEC()
{
  result = qword_1EBDCC808;
  if (!qword_1EBDCC808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDCC808);
  }

  return result;
}

uint64_t sub_1BF165040(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ReferenceEncodingPool();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ReferenceData.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1BF1651A4()
{
  result = qword_1EBDCC818;
  if (!qword_1EBDCC818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDCC818);
  }

  return result;
}

unint64_t sub_1BF1651FC()
{
  result = qword_1EBDCC820;
  if (!qword_1EBDCC820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDCC820);
  }

  return result;
}

unint64_t sub_1BF165254()
{
  result = qword_1EBDCC828;
  if (!qword_1EBDCC828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDCC828);
  }

  return result;
}

uint64_t HttpRequest.path.getter()
{
  v1 = *v0;
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  return v1;
}

uint64_t firstly<A, B>(on:disposeOn:qos:closure:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v25 = a3;
  v26 = a1;
  v11 = sub_1BF179B5C();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for DeferredPromise(0, a6, v16, v17);
  v18 = DeferredPromise.__allocating_init()();
  v19 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v20 = swift_allocObject();
  v20[2] = a7;
  v20[3] = v19;
  v20[4] = v18;
  v20[5] = a4;
  v20[6] = a5;
  aBlock[4] = sub_1BF1655C0;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BF0058CC;
  aBlock[3] = &block_descriptor_17;
  v21 = _Block_copy(aBlock);
  v27 = MEMORY[0x1E69E7CC0];
  sub_1BEFF7458(&unk_1ED8EFBF0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  sub_1BF027D54(0);
  sub_1BEFF7458(&qword_1ED8EFBD0, sub_1BF027D54, MEMORY[0x1E69E6328]);

  sub_1BF17B0BC();
  MEMORY[0x1BFB52B50](0, v25, v15, v21);
  _Block_release(v21);
  (*(v12 + 8))(v15, v11);

  result = swift_beginAccess();
  v23 = *(v18 + 16);
  if (v23)
  {

    return v23;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t firstly<A>(syncOn:closure:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Promise(0, a4, a3, a4);
  sub_1BF0EB12C(a1, sub_1BF1656D8);
  return v6;
}

uint64_t sub_1BF165670@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  result = a1();
  if (v3)
  {
    type metadata accessor for Promise(0, a2, v7, v8);
    result = Promise.__allocating_init(error:)();
  }

  *a3 = result;
  return result;
}

uint64_t DiagnosticData.data.getter()
{
  v1 = *(v0 + OBJC_IVAR___TFDiagnosticData_data);
  sub_1BF014DC0(v1, *(v0 + OBJC_IVAR___TFDiagnosticData_data + 8));
  return v1;
}

uint64_t DiagnosticData.filename.getter()
{
  v1 = *(v0 + OBJC_IVAR___TFDiagnosticData_filename);
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  return v1;
}

id DiagnosticData.init(data:filename:)()
{
  OUTLINED_FUNCTION_3_51();
  ObjectType = swift_getObjectType();
  v6 = &v1[OBJC_IVAR___TFDiagnosticData_data];
  *v6 = v4;
  *(v6 + 1) = v3;
  v7 = &v1[OBJC_IVAR___TFDiagnosticData_filename];
  *v7 = v2;
  *(v7 + 1) = v0;
  v9.receiver = v1;
  v9.super_class = ObjectType;
  return objc_msgSendSuper2(&v9, sel_init);
}

id DiagnosticData.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DiagnosticData.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t dispatch thunk of DiagnosticFileProvider.diagnosticFiles()(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_2_64(a1, a2);
  OUTLINED_FUNCTION_1_65();
  v3 = swift_task_alloc();
  *(v2 + 16) = v3;
  *v3 = v2;
  v4 = OUTLINED_FUNCTION_0_85(v3);

  return v5(v4);
}

uint64_t dispatch thunk of DiagnosticFileProvider.diagnosticData()(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_2_64(a1, a2);
  OUTLINED_FUNCTION_1_65();
  v3 = swift_task_alloc();
  *(v2 + 16) = v3;
  *v3 = v2;
  v4 = OUTLINED_FUNCTION_0_85(v3);

  return v5(v4);
}

uint64_t sub_1BF165B74(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t dispatch thunk of DiagnosticFileProvider.diagnosticAttachments()(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_2_64(a1, a2);
  OUTLINED_FUNCTION_1_65();
  v3 = swift_task_alloc();
  *(v2 + 16) = v3;
  *v3 = v2;
  v4 = OUTLINED_FUNCTION_0_85(v3);

  return v5(v4);
}

uint64_t DeinitSignal.deinit()
{
  v1 = *(v0 + 16);

  v1(v2);

  return v0;
}

uint64_t DeinitSignal.__deallocating_deinit()
{
  DeinitSignal.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

uint64_t static DeinitSignal.attachTo(_:onDeinit:)(void *a1, uint64_t a2, uint64_t a3)
{
  v20 = *MEMORY[0x1E69E9840];
  type metadata accessor for DeinitSignal();
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);

  v7 = sub_1BF17B84C();
  v8 = objc_getAssociatedObject(v7, key);
  swift_unknownObjectRelease();
  if (v8)
  {
    sub_1BF17B01C();
    swift_unknownObjectRelease();
  }

  else
  {
    v17 = 0u;
    v18 = 0u;
  }

  v19[0] = v17;
  v19[1] = v18;
  if (!*(&v18 + 1))
  {
    sub_1BEFFD168(v19);
    goto LABEL_10;
  }

  sub_1BF1660AC(0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_10:
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v12 = sub_1BF17B84C();
    sub_1BF008D1C(0, &qword_1ED8EFB90, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1BF18AD90;
    *(v13 + 32) = v6;

    v11 = sub_1BF17A4CC();

    objc_setAssociatedObject(v12, key, v11, 0x301);
    goto LABEL_11;
  }

  MEMORY[0x1BFB52290](v9);
  if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1BF17A53C();
  }

  sub_1BF17A59C();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v10 = sub_1BF17B84C();
  v11 = sub_1BF17A4CC();

  objc_setAssociatedObject(v10, key, v11, 0x301);
LABEL_11:
  swift_unknownObjectRelease();
}

void sub_1BF1660AC(uint64_t a1)
{
  if (!qword_1ED8EAE80)
  {
    type metadata accessor for DeinitSignal();
    v1 = sub_1BF17A65C();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED8EAE80);
    }
  }
}

uint64_t sub_1BF166118(unint64_t a1, unsigned __int8 a2, uint64_t a3, uint64_t (*a4)(uint64_t, __n128), __n128 a5)
{
  if (a2 >= 2u)
  {
    a5.n128_u64[0] = 0x7FEFFFFFFFFFFFFFLL;
    goto LABEL_5;
  }

  a5.n128_u64[0] = a1;
  if (*&a1 > 0.0)
  {
LABEL_5:
    v5 = a4(a3, a5);
    goto LABEL_6;
  }

  sub_1BF0F6A6C(0);
  swift_allocObject();
  v5 = sub_1BF0AADDC();
LABEL_6:
  v6 = v5;

  return v6;
}

uint64_t sub_1BF1661B0(uint64_t a1, char a2, uint64_t a3, void (*a4)(uint64_t, uint64_t), uint64_t a5, uint64_t (*a6)(uint64_t), uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a2 & 1) == 0 || (MEMORY[0x1BFB51C20](a3, a8, a9, a10))
  {
    return a6(a1);
  }

  swift_getTupleTypeMetadata2();
  sub_1BF17A56C();
  v15 = sub_1BF179DAC();
  a4(a3, v15);
}

uint64_t sub_1BF1662B0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v3 = *a1;
  *a3 = a2;
  a3[1] = v3;
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  return _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
}

id WeakProxy.init(_:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v5.receiver = v1;
  v5.super_class = ObjectType;
  v3 = objc_msgSendSuper2(&v5, sel_init);
  swift_unknownObjectRelease();
  return v3;
}

uint64_t WeakProxy.forwardingTarget(for:)@<X0>(uint64_t *a1@<X8>)
{
  v3 = *MEMORY[0x1E69E7D40] & *v1;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = *(v3 + 80);
  }

  else
  {
    v5 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  *a1 = result;
  a1[3] = v5;
  return result;
}

id sub_1BF1664A8()
{
  WeakProxy.forwardingTarget(for:)(v8);
  v0 = v9;
  if (v9)
  {
    v1 = __swift_project_boxed_opaque_existential_1(v8, v9);
    v2 = *(v0 - 8);
    v3 = MEMORY[0x1EEE9AC00](v1, v1);
    v5 = v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v2 + 16))(v5, v3);
    v6 = sub_1BF17B84C();
    (*(v2 + 8))(v5, v0);
    __swift_destroy_boxed_opaque_existential_1(v8);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

id WeakProxy.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id WeakProxy.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

BOOL sub_1BF166720(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11[0] = a1;
  v11[1] = a2;
  v11[2] = a3;
  v11[3] = a4;
  v10[0] = a5;
  v10[1] = a6;
  v10[2] = a7;
  v10[3] = a8;
  v8 = static Version.< infix(_:_:)(v10, v11, a3, a4, a5, a6, a7, a8);
  return OUTLINED_FUNCTION_0_86(v8);
}

BOOL sub_1BF16675C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9[0] = a1;
  v9[1] = a2;
  v9[2] = a3;
  v8[0] = a4;
  v8[1] = a5;
  v8[2] = a6;
  v6 = static VersionQualifier.< infix(_:_:)(v8, v9);
  return OUTLINED_FUNCTION_0_86(v6);
}

BOOL sub_1BF1667DC(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  v5 = a1;
  v2 = static VersionNumber.< infix(_:_:)(&v4, &v5);
  return OUTLINED_FUNCTION_0_86(v2);
}

Swift::Bool __swiftcall Versionable.isCompatible(with:)(TeaFoundation::Version *with)
{
  v3 = v2;
  rawValue = with->base.numbers._rawValue;
  countAndFlagsBits = with->qualifier.value.name._countAndFlagsBits;
  object = with->qualifier.value.name._object;
  v7 = with->qualifier.value.version.value.numbers._rawValue;
  v28 = v1;
  (*(v2 + 8))(&v39);
  v8 = v40;
  v9 = v41;
  v35 = v39;
  v36 = v40;
  v37 = v41;
  v38 = v42;
  v29 = rawValue;
  v31 = rawValue;
  v32 = countAndFlagsBits;
  v10 = countAndFlagsBits;
  v30 = object;
  v33 = object;
  v34 = v7;
  LOBYTE(object) = static Version.< infix(_:_:)(&v31, &v35, v11, v12, v13, v14, v15, v16);

  sub_1BF05E98C(v8, v9);
  if (object)
  {
    v17 = 0;
  }

  else
  {
    (*(v3 + 16))(&v39, v28, v3);
    v18 = v40;
    v19 = v41;
    v35 = v29;
    v36 = v10;
    v37 = v30;
    v38 = v7;
    v31 = v39;
    v32 = v40;
    v33 = v41;
    v34 = v42;
    v26 = static Version.< infix(_:_:)(&v31, &v35, v20, v21, v22, v23, v24, v25);

    sub_1BF05E98C(v18, v19);
    v17 = v26 ^ 1;
  }

  return v17 & 1;
}

uint64_t Array<A>.compatible(with:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1BF17A65C();
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  swift_getWitnessTable();
  return sub_1BF17B31C();
}

uint64_t Array<A>.firstCompatible(with:)(void *a1, uint64_t a2, uint64_t a3)
{
  if (*a1)
  {
    MEMORY[0x1EEE9AC00](a1, a2);
    sub_1BF17A65C();
    swift_getWitnessTable();
    return sub_1BF17A3CC();
  }

  else
  {
    sub_1BF17A65C();
    swift_getWitnessTable();
    return sub_1BF17AB3C();
  }
}

BOOL sub_1BF166B70()
{
  v1 = *(v0 + 56);
  v3.base.numbers._rawValue = *(v0 + 32);
  v3.qualifier.value.name = *(v0 + 40);
  v3.qualifier.value.version.value.numbers._rawValue = v1;
  return Versionable.isCompatible(with:)(&v3);
}

uint64_t OS_dispatch_group.notifySyncIfEmpty(queue:block:)(uint64_t a1, uint64_t (*a2)(void), uint64_t a3)
{
  v5 = sub_1BF179B5C();
  OUTLINED_FUNCTION_1();
  v30 = v6;
  MEMORY[0x1EEE9AC00](v7, v8);
  OUTLINED_FUNCTION_2_0();
  v11 = v10 - v9;
  v29 = sub_1BF179BBC();
  OUTLINED_FUNCTION_1();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14, v15);
  OUTLINED_FUNCTION_2_0();
  v18 = v17 - v16;
  v19 = sub_1BF179BEC();
  OUTLINED_FUNCTION_1();
  v21 = v20;
  MEMORY[0x1EEE9AC00](v22, v23);
  OUTLINED_FUNCTION_2_0();
  v26 = v25 - v24;
  sub_1BF179BDC();
  sub_1BF17ACEC();
  (*(v21 + 8))(v26, v19);
  if (sub_1BF179B4C())
  {
    return a2();
  }

  aBlock[4] = a2;
  aBlock[5] = a3;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BF0058CC;
  aBlock[3] = &block_descriptor_18;
  v28 = _Block_copy(aBlock);

  sub_1BF179B8C();
  sub_1BEFF7458(&unk_1ED8EFBF0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  sub_1BF027D54(0);
  sub_1BEFF7458(&qword_1ED8EFBD0, sub_1BF027D54, MEMORY[0x1E69E6328]);
  sub_1BF17B0BC();
  sub_1BF17ACFC();
  _Block_release(v28);
  (*(v30 + 8))(v11, v5);
  (*(v13 + 8))(v18, v29);
}

uint64_t Reportable.__allocating_init()()
{
  v0 = swift_allocObject();
  Reportable.init()();
  return v0;
}

uint64_t Reportable.init()()
{
  OUTLINED_FUNCTION_3_44();
  swift_getFunctionTypeMetadata1();
  *(v0 + 16) = sub_1BF17A56C();
  return v0;
}

uint64_t Reportable.__deallocating_deinit()
{
  Reportable.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

uint64_t Reportable.then(_:)(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = swift_allocObject();
  v6[2] = *(v5 + 80);
  v6[3] = a1;
  v6[4] = a2;
  OUTLINED_FUNCTION_1_66(v6);
  OUTLINED_FUNCTION_3_44();
  swift_getFunctionTypeMetadata1();
  sub_1BF17A65C();

  sub_1BF17A5DC();
  return swift_endAccess();
}

uint64_t Reportable.trigger(value:)(uint64_t a1)
{
  swift_beginAccess();
  OUTLINED_FUNCTION_3_44();
  swift_getFunctionTypeMetadata1();
  sub_1BF17A65C();
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  swift_getWitnessTable();
  sub_1BF17A41C();
}

Swift::Void __swiftcall Reportable.reset()()
{
  OUTLINED_FUNCTION_1_66(v0);
  OUTLINED_FUNCTION_3_44();
  swift_getFunctionTypeMetadata1();
  sub_1BEFF4CFC();
  sub_1BF17A65C();
  sub_1BF17A63C();
  swift_endAccess();
}

uint64_t ClosedRange<>.shift(by:)@<X0>(uint64_t a2@<X1>, char *a4@<X8>)
{
  v36 = a4;
  v5 = *(a2 + 16);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_2_3();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8, v9);
  v35 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v31 - v13;
  OUTLINED_FUNCTION_2_3();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v31 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v31 - v23;
  sub_1BF17B4AC();
  sub_1BF17B4AC();
  result = sub_1BF179FAC();
  if (result)
  {
    v26 = *(v16 + 32);
    v26(v14, v24, v5);
    v27 = TupleTypeMetadata2;
    v26(&v14[*(TupleTypeMetadata2 + 48)], v20, v5);
    v28 = v35;
    (*(v7 + 16))(v35, v14, v27);
    v32 = *(v27 + 48);
    v33 = a2;
    v29 = v36;
    v26(v36, v28, v5);
    v30 = *(v16 + 8);
    v30(&v28[v32], v5);
    (*(v7 + 32))(v28, v14, v27);
    v26(&v29[*(v33 + 36)], &v28[*(v27 + 48)], v5);
    return (v30)(v28, v5);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t ClosedRange<>.invert(value:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  OUTLINED_FUNCTION_2_3();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BF17B4BC();
  sub_1BF17B4AC();
  return (*(v4 + 8))(v8, v2);
}

uint64_t FloatingPoint.translate(within:to:inverted:)@<X0>(uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v41 = a3;
  v47 = a2;
  v48 = a6;
  OUTLINED_FUNCTION_2_3();
  v49 = v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v42 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v12, v13);
  OUTLINED_FUNCTION_10_1();
  v45 = v14;
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v15, v16);
  OUTLINED_FUNCTION_10_1();
  v46 = v17;
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v38 - v20;
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = &v38 - v24;
  MEMORY[0x1EEE9AC00](v26, v27);
  OUTLINED_FUNCTION_10_1();
  v44 = v28;
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v29, v30);
  v32 = &v38 - v31;
  v40 = sub_1BF17A04C();
  v43 = *(*(a5 + 16) + 8);
  OUTLINED_FUNCTION_2_65();
  sub_1BF17B4BC();
  if (sub_1BF179EFC())
  {
    v33 = v49;
    (*(v49 + 8))(v32, a4);
    return (*(v33 + 16))(v48, v47, a4);
  }

  else
  {
    sub_1BF17BA6C();
    sub_1BF17BA7C();
    v35 = *(v49 + 8);
    v35(v21, a4);
    OUTLINED_FUNCTION_2_65();
    sub_1BF17B4BC();
    v35(v25, a4);
    v39 = v32;
    sub_1BF179EEC();
    v36 = v40;
    OUTLINED_FUNCTION_2_65();
    sub_1BF17B4BC();
    sub_1BF17A9CC();
    v37 = v42;
    OUTLINED_FUNCTION_2_65();
    sub_1BF17B4AC();
    v35(v25, a4);
    if (v41)
    {
      ClosedRange<>.invert(value:)(v37, v36);
      v35(v37, a4);
      v35(v45, a4);
      v35(v46, a4);
      v35(v44, a4);
      return (v35)(v39, a4);
    }

    else
    {
      v35(v45, a4);
      v35(v46, a4);
      v35(v44, a4);
      v35(v39, a4);
      return (*(v49 + 32))(v48, v37, a4);
    }
  }
}

uint64_t FloatingPointTranslator.__allocating_init(value:within:)(char *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  FloatingPointTranslator.init(value:within:)(a1, a2);
  return v4;
}

uint64_t FloatingPointTranslator.init(value:within:)(char *a1, uint64_t a2)
{
  v3 = v2;
  v36 = a1;
  OUTLINED_FUNCTION_0();
  v6 = *(v5 + 80);
  v37 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v34 = v33 - v13;
  MEMORY[0x1EEE9AC00](v14, v15);
  v35 = v33 - v16;
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = v33 - v19;
  OUTLINED_FUNCTION_0();
  v22 = *(v21 + 88);
  v23 = sub_1BF17A04C();
  v33[1] = *(*(*(v22 + 16) + 8) + 8);
  sub_1BF17B4BC();
  if (sub_1BF179EFC())
  {
    (*(*(v23 - 8) + 8))(a2, v23);
    v24 = *(v37 + 8);
    v24(v36, v6);
    v24(v20, v6);
    v25 = v3 + *(*v3 + 96);
    v26 = 1;
  }

  else
  {
    v27 = v10;
    sub_1BF17BA6C();
    v28 = v34;
    sub_1BF17BA7C();
    v29 = *(v37 + 8);
    v29(v27, v6);
    v33[0] = a2;
    v30 = v35;
    sub_1BF17B4BC();
    v29(v28, v6);
    sub_1BF179EEC();
    (*(*(v23 - 8) + 8))(v33[0], v23);
    v29(v36, v6);
    v29(v30, v6);
    v29(v20, v6);
    v31 = *(*v3 + 96);
    (*(v37 + 32))(v3 + v31, v28, v6);
    v25 = v3 + v31;
    v26 = 0;
  }

  __swift_storeEnumTagSinglePayload(v25, v26, 1, v6);
  return v3;
}

uint64_t FloatingPointTranslator.translate(to:inverted:)@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v38 = a3;
  v39 = a1;
  v5 = *v3;
  v6 = *(*v3 + 80);
  OUTLINED_FUNCTION_2_3();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  OUTLINED_FUNCTION_10_1();
  v37 = v15;
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v34 - v18;
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v34 - v22;
  type metadata accessor for FloatingPointTranslator.Translation(0, v6, *(v5 + 88), v24);
  OUTLINED_FUNCTION_2_3();
  v27 = MEMORY[0x1EEE9AC00](v25, v26);
  v29 = &v34 - v28;
  (*(v30 + 16))(&v34 - v28, v3 + *(v5 + 96), v27);
  if (__swift_getEnumTagSinglePayload(v29, 1, v6) == 1)
  {
    return (*(v8 + 16))(v38, v39, v6);
  }

  v35 = *(v8 + 32);
  v35(v23, v29, v6);
  v34 = sub_1BF17A04C();
  v36 = a2;
  sub_1BF17B4BC();
  sub_1BF17A9CC();
  sub_1BF17B4AC();
  v32 = *(v8 + 8);
  v32(v12, v6);
  if (v36)
  {
    v33 = v37;
    ClosedRange<>.invert(value:)(v37, v34);
    v32(v33, v6);
    v32(v19, v6);
    return (v32)(v23, v6);
  }

  else
  {
    v32(v19, v6);
    v32(v23, v6);
    return (v35)(v38, v37, v6);
  }
}

uint64_t FloatingPointTranslator.deinit()
{
  OUTLINED_FUNCTION_0();
  v2 = *(v1 + 96);
  OUTLINED_FUNCTION_0();
  v6 = type metadata accessor for FloatingPointTranslator.Translation(0, v4, *(v3 + 88), v5);
  (*(*(v6 - 8) + 8))(v0 + v2, v6);
  return v0;
}

uint64_t FloatingPointTranslator.__deallocating_deinit()
{
  FloatingPointTranslator.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1BF16831C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for FloatingPointTranslator.Translation(319, *(a1 + 80), *(a1 + 88), a4);
  if (v5 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1BF1683F4(uint64_t a1)
{
  v1 = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

uint64_t sub_1BF168450(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = v5 - 1;
  if (!v5)
  {
    v6 = 0;
  }

  v7 = *(*(v4 - 8) + 64);
  if (!v5)
  {
    ++v7;
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v6;
  if (a2 > v6)
  {
    v9 = 8 * v7;
    if (v7 > 3)
    {
      goto LABEL_8;
    }

    v11 = ((v8 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v7);
      if (v10)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v11 <= 0xFF)
      {
        if (v11 < 2)
        {
          goto LABEL_23;
        }

LABEL_8:
        v10 = *(a1 + v7);
        if (!*(a1 + v7))
        {
          goto LABEL_23;
        }

LABEL_15:
        v12 = (v10 - 1) << v9;
        if (v7 > 3)
        {
          v12 = 0;
        }

        if (v7)
        {
          if (v7 > 3)
          {
            LODWORD(v7) = 4;
          }

          switch(v7)
          {
            case 2:
              LODWORD(v7) = *a1;
              break;
            case 3:
              LODWORD(v7) = *a1 | (*(a1 + 2) << 16);
              break;
            case 4:
              LODWORD(v7) = *a1;
              break;
            default:
              LODWORD(v7) = *a1;
              break;
          }
        }

        return v6 + (v7 | v12) + 1;
      }

      v10 = *(a1 + v7);
      if (*(a1 + v7))
      {
        goto LABEL_15;
      }
    }
  }

LABEL_23:
  if (v5 < 2)
  {
    return 0;
  }

  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(a1, v5, v4);
  if (EnumTagSinglePayload >= 2)
  {
    return EnumTagSinglePayload - 1;
  }

  else
  {
    return 0;
  }
}

void sub_1BF1685C8(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  if (v9)
  {
    v10 = v9 - 1;
  }

  else
  {
    v10 = 0;
  }

  if (v9)
  {
    v11 = *(v8 + 64);
  }

  else
  {
    v11 = *(v8 + 64) + 1;
  }

  v12 = 8 * v11;
  v13 = a3 >= v10;
  v14 = a3 - v10;
  if (v14 != 0 && v13)
  {
    if (v11 <= 3)
    {
      v15 = ((v14 + ~(-1 << v12)) >> v12) + 1;
      if (HIWORD(v15))
      {
        v6 = 4;
      }

      else
      {
        if (v15 < 0x100)
        {
          v16 = 1;
        }

        else
        {
          v16 = 2;
        }

        if (v15 >= 2)
        {
          v6 = v16;
        }

        else
        {
          v6 = 0;
        }
      }
    }

    else
    {
      v6 = 1;
    }
  }

  if (v10 >= a2)
  {
    switch(v6)
    {
      case 1:
        a1[v11] = 0;
        if (a2)
        {
          goto LABEL_31;
        }

        break;
      case 2:
        *&a1[v11] = 0;
        if (a2)
        {
          goto LABEL_31;
        }

        break;
      case 3:
LABEL_44:
        __break(1u);
        break;
      case 4:
        *&a1[v11] = 0;
        goto LABEL_30;
      default:
LABEL_30:
        if (a2)
        {
LABEL_31:
          if (v9 >= 2)
          {
            v20 = a2 + 1;

            __swift_storeEnumTagSinglePayload(a1, v20, v9, v7);
          }
        }

        break;
    }
  }

  else
  {
    v17 = ~v10 + a2;
    if (v11 < 4)
    {
      v18 = (v17 >> v12) + 1;
      if (v11)
      {
        v19 = v17 & ~(-1 << v12);
        bzero(a1, v11);
        if (v11 == 3)
        {
          *a1 = v19;
          a1[2] = BYTE2(v19);
        }

        else if (v11 == 2)
        {
          *a1 = v19;
        }

        else
        {
          *a1 = v17;
        }
      }
    }

    else
    {
      bzero(a1, v11);
      *a1 = v17;
      v18 = 1;
    }

    switch(v6)
    {
      case 1:
        a1[v11] = v18;
        break;
      case 2:
        *&a1[v11] = v18;
        break;
      case 3:
        goto LABEL_44;
      case 4:
        *&a1[v11] = v18;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_1BF1687E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_1BF00974C(0);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v24[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24[5] = a4;
  v24[6] = a5;
  sub_1BF047B30(a3, v13);
  v14 = sub_1BF17A77C();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);

  if (EnumTagSinglePayload == 1)
  {
    sub_1BF00CAB0(v13);
  }

  else
  {
    sub_1BF17A76C();
    (*(*(v14 - 8) + 8))(v13, v14);
  }

  v16 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_1BF17A6AC();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_1BF17A16C();
      sub_1BF1690F0(v20 + 32, v24);

      v21 = v24[0];
      sub_1BF00CAB0(a3);

      return v21;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1BF00CAB0(a3);
  if (v19 | v17)
  {
    v24[1] = 0;
    v24[2] = 0;
    v24[3] = v17;
    v24[4] = v19;
  }

  return swift_task_create();
}

id AsyncTaskOperation.init(_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = *((*MEMORY[0x1E69E7D40] & *v3) + 0xF0);
  sub_1BEFF79E8();
  v8 = sub_1BF17A7EC();
  type metadata accessor for Lazy(0, v8, v9, v10);
  v11 = swift_allocObject();
  v11[2] = v7;
  v11[3] = a1;
  v11[4] = a2;
  v15 = 0;

  *(v3 + qword_1ED8EB978) = Lazy.__allocating_init(options:loadBlock:)(&v15, sub_1BF168C6C, v11);
  v14.receiver = v3;
  v14.super_class = ObjectType;
  v12 = objc_msgSendSuper2(&v14, sel_init);

  return v12;
}

uint64_t sub_1BF168B70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  sub_1BF00974C(0);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1BF17A77C();
  __swift_storeEnumTagSinglePayload(v11, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = a3;
  v13[5] = a1;
  v13[6] = a2;

  result = sub_1BF1687E8(0, 0, v11, &unk_1BF18AF30, v13, a3);
  *a4 = result;
  return result;
}

uint64_t sub_1BF168C78(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_1BF035DD4;

  return v8(a1);
}

uint64_t sub_1BF168D70()
{
  OUTLINED_FUNCTION_5();
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_9();

  return v0();
}

uint64_t sub_1BF168DCC()
{
  OUTLINED_FUNCTION_13_2();
  v1 = v0[19];

  v0[3] = v1;
  v2 = v1;
  if (swift_dynamicCast())
  {
    (*(v0[8] + 8))(v0[9], v0[7]);
    AsyncTaskOperation.cancel()();
  }

  v3 = v0[19];
  v4 = v0[13];
  v5 = v0[5];
  *v4 = v3;
  OUTLINED_FUNCTION_125_0();
  swift_storeEnumTagMultiPayload();
  v6 = v3;
  v5(v4);

  v7 = OUTLINED_FUNCTION_125_0();
  v8(v7);

  OUTLINED_FUNCTION_9();

  return v9();
}

Swift::Void __swiftcall AsyncTaskOperation.cancel()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v2, sel_cancel);
  sub_1BF004F64(&v1);
  sub_1BEFF79E8();
  sub_1BF17A7DC();
}

void sub_1BF168FAC(void *a1)
{
  v1 = a1;
  AsyncTaskOperation.cancel()();
}

id AsyncTaskOperation.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AsyncTaskOperation.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1BF1690F0@<X0>(uint64_t result@<X0>, uint64_t *a7@<X8>)
{
  if (result)
  {

    result = swift_task_create();
    *a7 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1BF1691AC()
{
  result = qword_1ED8EB7D0;
  if (!qword_1ED8EB7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8EB7D0);
  }

  return result;
}

uint64_t sub_1BF169200()
{
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_15_7();
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_4(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_3_52(v4);

  return sub_1BF168C78(v6, v0, v1, v2);
}

uint64_t static XPCInterfaceBuilder.buildBlock(_:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  *a2 = *a1;
  a2[1] = v3;
  v4 = v2;

  return _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
}

_BYTE *storeEnumTagSinglePayload for XPCInterfaceBuilder(_BYTE *result, int a2, int a3)
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

TeaFoundation::StartupTaskExecutionPhase_optional __swiftcall StartupTaskExecutionPhase.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1BF17B57C();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t StartupTaskExecutionPhase.rawValue.getter()
{
  v1 = 0x75614C7265746661;
  if (*v0 == 1)
  {
    v1 = 0xD000000000000012;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000013;
  }
}

unint64_t sub_1BF169490@<X0>(unint64_t *a1@<X8>)
{
  result = StartupTaskExecutionPhase.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t StartupTaskType.run()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1BF169540(0, a2, a3, a4);
  swift_allocObject();
  return sub_1BF0AB1B0();
}

void sub_1BF169540(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!qword_1ED8ED8C0)
  {
    v4 = type metadata accessor for Promise(0, MEMORY[0x1E69E7CA8] + 8, a3, a4);
    if (!v5)
    {
      atomic_store(v4, &qword_1ED8ED8C0);
    }
  }
}

unint64_t sub_1BF16959C()
{
  result = qword_1EBDCC948;
  if (!qword_1EBDCC948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDCC948);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for StartupTaskExecutionPhase(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t withPatience<A>(_:granularity:_:)(void (*a1)(uint64_t), void (*a2)(uint64_t), uint64_t a3, double a4, double a5)
{
  v9 = sub_1BF1794AC();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v21 - v16;
  _s13TeaFoundation12DateProviderC3now0B00C0VyF_0();
  sub_1BF17941C();
  v18 = *(v10 + 8);
  v18(v13, v9);
  v19 = sub_1BF16985C(v17, a1, a2, a3, a5);
  v18(v17, v9);
  return v19;
}

uint64_t sub_1BF16985C(uint64_t a1, void (*a2)(uint64_t), void (*a3)(uint64_t), uint64_t a4, double a5)
{
  v65 = a2;
  v66 = a3;
  v8 = sub_1BF179BEC();
  v62 = *(v8 - 8);
  v63 = v8;
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v61 = &v57 - v14;
  v15 = sub_1BF17AE6C();
  v58 = *(v15 - 8);
  v59 = v15;
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v57 - v17;
  v60 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v57 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23, v24);
  v26 = &v57 - v25;
  v27 = sub_1BF1794AC();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v27, v30);
  _s13TeaFoundation12DateProviderC3now0B00C0VyF_0();
  v64 = a1;
  LOBYTE(a1) = sub_1BF17940C();
  v31 = (*(v28 + 8))(&v57 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0), v27);
  if (a1)
  {
    v65(v31);
    if (__swift_getEnumTagSinglePayload(v18, 1, a4) == 1)
    {
      (*(v58 + 8))(v18, v59);
      sub_1BF179BDC();
      v34 = v61;
      sub_1BF179C6C();
      v35 = v63;
      v62 = *(v62 + 8);
      v36 = (v62)(v11, v63);
      MEMORY[0x1EEE9AC00](v36, v37);
      *(&v57 - 2) = v34;
      sub_1BF169540(0, v38, v39, v40);
      swift_allocObject();
      sub_1BF08A568(sub_1BF095CBC, (&v57 - 4));
      (v62)(v34, v35);
      (*(v28 + 16))(&v57 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0), v64, v27);
      v41 = (*(v28 + 80) + 32) & ~*(v28 + 80);
      v42 = swift_allocObject();
      *(v42 + 16) = a4;
      *(v42 + 24) = a5;
      (*(v28 + 32))(v42 + v41, &v57 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0), v27);
      v43 = (v42 + ((v29 + v41 + 7) & 0xFFFFFFFFFFFFFFF8));
      v44 = v66;
      *v43 = v65;
      v43[1] = v44;
      v45 = swift_allocObject();
      v45[2] = a4;
      v45[3] = sub_1BF169E3C;
      v45[4] = v42;

      v46 = sub_1BF014EDC();
      Promise.then<A>(on:closure:)(v46, sub_1BF0D1114, v45, a4);
      v48 = v47;
    }

    else
    {
      v53 = v60;
      (*(v60 + 32))(v26, v18, a4);
      type metadata accessor for Promise(0, a4, v54, v55);
      (*(v53 + 16))(v22, v26, a4);
      v48 = Promise.__allocating_init(value:)();
      (*(v53 + 8))(v26, a4);
    }
  }

  else
  {
    type metadata accessor for Promise(0, a4, v32, v33);
    v49 = sub_1BF17BD4C();
    v51 = v50;
    sub_1BF169DE8();
    swift_allocError();
    *v52 = v49;
    v52[1] = v51;
    return Promise.__allocating_init(error:)();
  }

  return v48;
}

unint64_t sub_1BF169DE8()
{
  result = qword_1EBDCC950;
  if (!qword_1EBDCC950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDCC950);
  }

  return result;
}

uint64_t sub_1BF169E3C()
{
  v1 = *(v0 + 16);
  v2 = *(sub_1BF1794AC() - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v0 + 24);
  v5 = (v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = *v5;
  v7 = v5[1];

  return sub_1BF16985C(v0 + v3, v6, v7, v1, v4);
}

uint64_t sub_1BF169EE8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = 0;
    v3 = (a1 + 32);
    do
    {
      v5 = *v3++;
      v4 = v5;
      if ((v5 & ~v2) == 0)
      {
        v4 = 0;
      }

      v2 |= v4;
      --v1;
    }

    while (v1);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t sub_1BF169F3C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
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
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
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

uint64_t sub_1BF169FA4(uint64_t a1)
{
  result = *v1 & a1;
  if (result)
  {
    *v1 &= ~a1;
  }

  return result;
}

uint64_t sub_1BF169FC8(uint64_t a1)
{
  v2 = *v1;
  *v1 |= a1;
  return v2 & a1;
}

BOOL sub_1BF169FE8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = a1;
  v6 = *(v2 + 16);
  UnfairLock.lock()();
  swift_beginAccess();
  v7 = *(v3 + 32);
  *(v3 + 32) = v5;
  os_unfair_lock_unlock(*(v6 + 16));
  if ((a2 & 1) == 0 || v7 != v5)
  {
    sub_1BF16A074(v5);
  }

  return v7 != v5;
}

void sub_1BF16A074(int a1)
{
  v2 = v1;
  v36 = *(v1 + 16);
  UnfairLock.lock()();
  swift_beginAccess();
  v37 = v1;
  v4 = *(v1 + 24);
  v5 = sub_1BEFE90AC(*(v2 + 24));
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  v6 = 0;
  v7 = MEMORY[0x1E69E7CC0];
  v8 = MEMORY[0x1E69E7CC0];
  while (v5 != v6)
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x1BFB53020](v6, v4);
    }

    else
    {
      if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_46;
      }

      v9 = *(v4 + 8 * v6 + 32);
    }

    v10 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
      return;
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_unknownObjectRelease();
      v11 = *(v9 + 40);
      v12 = swift_allocObject();
      *(v12 + 16) = v9;
      v34 = a1;
      v35 = v12;
      *(v12 + 24) = a1;
      v13 = qword_1ED8F0210;

      if (v13 != -1)
      {
        swift_once();
      }

      if (v11 == off_1ED8F0218)
      {
        v20 = sub_1BF16AF30;
        v15 = v35;
      }

      else
      {
        v14 = v11;
        v15 = v35;
        if (qword_1ED8EFB98 != -1)
        {
          swift_once();
        }

        if (v14 == qword_1ED8EFC18 && ([objc_opt_self() isMainThread] & 1) != 0)
        {
          goto LABEL_22;
        }

        if (qword_1ED8EF920 != -1)
        {
          swift_once();
        }

        if (v14 == qword_1ED8EF928 && ![objc_opt_self() isMainThread])
        {
LABEL_22:
          v20 = sub_1BF16AF30;
        }

        else
        {
          v16 = swift_allocObject();
          v17 = v14;
          v18 = v16;
          v16[2] = v17;
          v16[3] = sub_1BF16AF30;
          v16[4] = v35;
          v19 = v17;
          v20 = sub_1BF097A1C;
          v15 = v18;
        }
      }

      v21 = swift_allocObject();
      *(v21 + 16) = v20;
      *(v21 + 24) = v15;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1BEFFA038();
        v8 = v24;
      }

      v22 = *(v8 + 16);
      if (v22 >= *(v8 + 24) >> 1)
      {
        sub_1BEFFA038();
        v8 = v25;
      }

      *(v8 + 16) = v22 + 1;
      v23 = v8 + 16 * v22;
      *(v23 + 32) = sub_1BF16AF64;
      *(v23 + 40) = v21;
      v6 = v10;
      a1 = v34;
      v7 = MEMORY[0x1E69E7CC0];
    }

    else
    {

      ++v6;
    }
  }

  v26 = *(v37 + 24);
  v27 = sub_1BEFE90AC(v26);
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  for (i = 0; v27 != i; ++i)
  {
    if ((v26 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1BFB53020](i, v26);
    }

    else
    {
      if (i >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_48;
      }
    }

    if (__OFADD__(i, 1))
    {
      goto LABEL_47;
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_unknownObjectRelease();
      sub_1BF17B32C();
      sub_1BF17B36C();
      sub_1BF17B37C();
      sub_1BF17B33C();
    }

    else
    {
    }
  }

  *(v37 + 24) = v7;

  os_unfair_lock_unlock(*(v36 + 16));
  v29 = 0;
  v30 = *(v8 + 16);
  v31 = v8 + 40;
  while (v30 != v29)
  {
    if (v29 >= *(v8 + 16))
    {
      goto LABEL_49;
    }

    ++v29;
    v32 = *(v31 - 8);

    v32(v33);

    v31 += 16;
  }
}

void sub_1BF16A544(uint64_t a1)
{
  v2 = v1;
  v36 = *(v1 + 16);
  UnfairLock.lock()();
  swift_beginAccess();
  v37 = v1;
  v4 = *(v1 + 24);
  v5 = sub_1BEFE90AC(*(v2 + 24));
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  v6 = 0;
  v7 = MEMORY[0x1E69E7CC0];
  v8 = MEMORY[0x1E69E7CC0];
  while (v5 != v6)
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x1BFB53020](v6, v4);
    }

    else
    {
      if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_46;
      }

      v9 = *(v4 + 8 * v6 + 32);
    }

    v10 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
      return;
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_unknownObjectRelease();
      v11 = *(v9 + 40);
      v12 = swift_allocObject();
      *(v12 + 16) = v9;
      *(v12 + 24) = a1;
      v34 = a1;
      v35 = v12;
      v13 = qword_1ED8F0210;

      if (v13 != -1)
      {
        swift_once();
      }

      if (v11 == off_1ED8F0218)
      {
        v20 = sub_1BF16AF24;
        v15 = v35;
      }

      else
      {
        v14 = v11;
        v15 = v35;
        if (qword_1ED8EFB98 != -1)
        {
          swift_once();
        }

        if (v14 == qword_1ED8EFC18 && ([objc_opt_self() isMainThread] & 1) != 0)
        {
          goto LABEL_22;
        }

        if (qword_1ED8EF920 != -1)
        {
          swift_once();
        }

        if (v14 == qword_1ED8EF928 && ![objc_opt_self() isMainThread])
        {
LABEL_22:
          v20 = sub_1BF16AF24;
        }

        else
        {
          v16 = swift_allocObject();
          v17 = v14;
          v18 = v16;
          v16[2] = v17;
          v16[3] = sub_1BF16AF24;
          v16[4] = v35;
          v19 = v17;
          v20 = sub_1BF0077B8;
          v15 = v18;
        }
      }

      v21 = swift_allocObject();
      *(v21 + 16) = v20;
      *(v21 + 24) = v15;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1BEFFA038();
        v8 = v24;
      }

      v22 = *(v8 + 16);
      if (v22 >= *(v8 + 24) >> 1)
      {
        sub_1BEFFA038();
        v8 = v25;
      }

      *(v8 + 16) = v22 + 1;
      v23 = v8 + 16 * v22;
      *(v23 + 32) = sub_1BF006198;
      *(v23 + 40) = v21;
      v6 = v10;
      a1 = v34;
      v7 = MEMORY[0x1E69E7CC0];
    }

    else
    {

      ++v6;
    }
  }

  v26 = *(v37 + 24);
  v27 = sub_1BEFE90AC(v26);
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  for (i = 0; v27 != i; ++i)
  {
    if ((v26 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1BFB53020](i, v26);
    }

    else
    {
      if (i >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_48;
      }
    }

    if (__OFADD__(i, 1))
    {
      goto LABEL_47;
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_unknownObjectRelease();
      sub_1BF17B32C();
      sub_1BF17B36C();
      sub_1BF17B37C();
      sub_1BF17B33C();
    }

    else
    {
    }
  }

  *(v37 + 24) = v7;

  os_unfair_lock_unlock(*(v36 + 16));
  v29 = 0;
  v30 = *(v8 + 16);
  v31 = v8 + 40;
  while (v30 != v29)
  {
    if (v29 >= *(v8 + 16))
    {
      goto LABEL_49;
    }

    ++v29;
    v32 = *(v31 - 8);

    v32(v33);

    v31 += 16;
  }
}

uint64_t sub_1BF16AA0C(uint64_t a1, char a2)
{
  v4 = a2;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    swift_unknownObjectRelease();
    result = (*(a1 + 24))(&v4);
    if (*(a1 + 48) == 1)
    {

      return swift_unknownObjectWeakAssign();
    }
  }

  return result;
}

uint64_t sub_1BF16AA8C(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    swift_unknownObjectRelease();
    result = (*(a1 + 24))(&v4);
    if (*(a1 + 48) == 1)
    {

      return swift_unknownObjectWeakAssign();
    }
  }

  return result;
}

uint64_t sub_1BF16AB44@<X0>(uint64_t *a1@<X8>)
{
  result = j__OUTLINED_FUNCTION_0_4();
  *a1 = result;
  return result;
}

uint64_t sub_1BF16AB6C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1BF169F94(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_1BF16AB9C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1BF0C80B4(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_1BF16ABCC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1BF169F9C(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_1BF16ABFC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1BF169FA4(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_1BF16AC30@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1BF169FC8(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_1BF16AC6C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1BF169FE0(*a1, *v2);
  *a2 = result;
  return result;
}

void *sub_1BF16ACB8@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1BF16ACD0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1BF169EE8(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1BF16ACF8()
{

  return v0;
}

uint64_t sub_1BF16AD28()
{
  sub_1BF16ACF8();

  return MEMORY[0x1EEE6BDC0](v0, 40, 7);
}

unint64_t sub_1BF16AD70()
{
  result = qword_1EBDCC958;
  if (!qword_1EBDCC958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDCC958);
  }

  return result;
}

unint64_t sub_1BF16ADC8()
{
  result = qword_1EBDCC960;
  if (!qword_1EBDCC960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDCC960);
  }

  return result;
}

unint64_t sub_1BF16AE20()
{
  result = qword_1EBDCC968;
  if (!qword_1EBDCC968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDCC968);
  }

  return result;
}

unint64_t sub_1BF16AE78()
{
  result = qword_1EBDCC970;
  if (!qword_1EBDCC970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDCC970);
  }

  return result;
}

uint64_t sub_1BF16AED4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1BF16AB0C(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

id InterprocessDiagnosticFileReceiver.__allocating_init(interprocessDiagnosticFilesNotificationName:diagnosticFileListURL:log:)()
{
  OUTLINED_FUNCTION_1_32();
  v0 = OUTLINED_FUNCTION_0_44();
  return InterprocessDiagnosticFileReceiver.init(interprocessDiagnosticFilesNotificationName:diagnosticFileListURL:log:)(v0, v1, v2, v3);
}

id InterprocessDiagnosticFileReceiver.init(interprocessDiagnosticFilesNotificationName:diagnosticFileListURL:log:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  ObjectType = swift_getObjectType();
  v9 = sub_1BF1797FC();
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1BF17923C();
  v14 = *(v13 - 8);
  v16 = MEMORY[0x1EEE9AC00](v13, v15);
  v18 = &v23 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v18, a3, v13, v16);
  v19 = a4;
  sub_1BF17980C();
  v20 = objc_allocWithZone(ObjectType);
  v21 = InterprocessDiagnosticFileReceiver.init(interprocessDiagnosticFilesNotificationName:diagnosticFileListURL:logger:)(a1, a2, v18, v12);

  (*(v14 + 8))(a3, v13);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v21;
}

id InterprocessDiagnosticFileReceiver.__allocating_init(interprocessDiagnosticFilesNotificationName:diagnosticFileListURL:logger:)()
{
  OUTLINED_FUNCTION_1_32();
  v0 = OUTLINED_FUNCTION_0_44();
  return InterprocessDiagnosticFileReceiver.init(interprocessDiagnosticFilesNotificationName:diagnosticFileListURL:logger:)(v0, v1, v2, v3);
}

id InterprocessDiagnosticFileReceiver.init(interprocessDiagnosticFilesNotificationName:diagnosticFileListURL:logger:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v25 = *MEMORY[0x1E69E9840];
  ObjectType = swift_getObjectType();
  *&v5[OBJC_IVAR___TFInterprocessDiagnosticFileReceiver_diagnosticFiles] = MEMORY[0x1E69E7CC0];
  v11 = &v5[OBJC_IVAR___TFInterprocessDiagnosticFileReceiver_interprocessDiagnosticFilesNotificationName];
  *v11 = a1;
  *(v11 + 1) = a2;
  v12 = OBJC_IVAR___TFInterprocessDiagnosticFileReceiver_diagnosticFileListURL;
  v13 = sub_1BF17923C();
  v14 = *(v13 - 8);
  (*(v14 + 16))(&v5[v12], a3, v13);
  v15 = OBJC_IVAR___TFInterprocessDiagnosticFileReceiver_logger;
  v16 = sub_1BF1797FC();
  v17 = *(v16 - 8);
  (*(v17 + 16))(&v5[v15], a4, v16);
  v24.receiver = v5;
  v24.super_class = ObjectType;
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  v18 = objc_msgSendSuper2(&v24, sel_init);
  v19 = CFNotificationCenterGetDarwinNotifyCenter();
  v20 = sub_1BF17A07C();

  CFNotificationCenterAddObserver(v19, v18, sub_1BF16BBB0, v20, object, CFNotificationSuspensionBehaviorDeliverImmediately);

  (*(v17 + 8))(a4, v16);
  (*(v14 + 8))(a3, v13);

  return v18;
}

void sub_1BF16B4A4(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    v3 = sub_1BF1797DC();
    v4 = sub_1BF17AC9C();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_1BEFE0000, v3, v4, "InterprocessDiagnosticFileReceiver received diagnostic file notification", v5, 2u);
      MEMORY[0x1BFB547B0](v5, -1, -1);
    }

    sub_1BF16B5FC(v2 + OBJC_IVAR___TFInterprocessDiagnosticFileReceiver_diagnosticFileListURL);
    oslog = sub_1BF1797DC();
    v6 = sub_1BF17AC9C();
    if (os_log_type_enabled(oslog, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_1BEFE0000, oslog, v6, "Finished notification callback", v7, 2u);
      MEMORY[0x1BFB547B0](v7, -1, -1);
    }
  }
}

void sub_1BF16B5FC(uint64_t a1)
{
  v2 = sub_1BF17923C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = v35 - v7;
  v9 = sub_1BF17A12C();
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  sub_1BF17A10C();
  v11 = sub_1BF17A06C();
  v36[0] = 10;
  v36[1] = 0xE100000000000000;
  MEMORY[0x1EEE9AC00](v11, v12);
  v35[-2] = v36;
  v15 = sub_1BF0143EC(0x7FFFFFFFFFFFFFFFLL, 1, sub_1BF014764, &v35[-4], v13, v14);
  v16 = *(v15 + 16);
  if (v16)
  {
    v35[1] = v1;
    v36[0] = MEMORY[0x1E69E7CC0];
    sub_1BF0707CC(0, v16, 0);
    v17 = v36[0];
    v35[2] = v3 + 32;
    v35[0] = v15;
    v18 = (v15 + 56);
    do
    {
      v19 = v2;
      v20 = *(v18 - 3);
      v21 = *(v18 - 2);
      v22 = *(v18 - 1);
      v23 = *v18;
      _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
      MEMORY[0x1BFB51F50](v20, v21, v22, v23);
      sub_1BF17915C();

      v36[0] = v17;
      v25 = *(v17 + 16);
      v24 = *(v17 + 24);
      if (v25 >= v24 >> 1)
      {
        sub_1BF0707CC(v24 > 1, v25 + 1, 1);
        v17 = v36[0];
      }

      *(v17 + 16) = v25 + 1;
      v2 = v19;
      (*(v3 + 32))(v17 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v25, v8, v19);
      v18 += 4;
      --v16;
    }

    while (v16);
  }

  else
  {

    v17 = MEMORY[0x1E69E7CC0];
  }

  v26 = _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  sub_1BF0CAAB8(v26);
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  v27 = sub_1BF1797DC();
  v28 = sub_1BF17AC9C();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v36[0] = v30;
    *v29 = 134218242;
    *(v29 + 4) = *(v17 + 16);

    *(v29 + 12) = 2080;
    v31 = MEMORY[0x1BFB522D0](v17, v2);
    v33 = v32;

    v34 = sub_1BF01A7AC(v31, v33, v36);

    *(v29 + 14) = v34;
    _os_log_impl(&dword_1BEFE0000, v27, v28, "Added %ld diagnostic files from diagnostic file list URL; diagnosticFileURLs=%s", v29, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v30);
    MEMORY[0x1BFB547B0](v30, -1, -1);
    MEMORY[0x1BFB547B0](v29, -1, -1);
  }

  else
  {

    swift_bridgeObjectRelease_n();
  }
}

void sub_1BF16BBB0(void *a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v9 = a1;
  v10 = a3;
  v11 = a5;
  sub_1BF16B4A4(a1, a2);
}

id InterprocessDiagnosticFileReceiver.__deallocating_deinit()
{
  ObjectType = swift_getObjectType();
  v2 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(v2, v0);

  v4.receiver = v0;
  v4.super_class = ObjectType;
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

id InterprocessDiagnosticFileReceiver.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t type metadata accessor for InterprocessDiagnosticFileReceiver(uint64_t a1)
{
  result = qword_1EBDCC998;
  if (!qword_1EBDCC998)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BF16BEC8(uint64_t a1)
{
  result = sub_1BF17923C();
  if (v2 <= 0x3F)
  {
    result = sub_1BF1797FC();
    if (v3 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

unint64_t sub_1BF16BFD8()
{
  result = qword_1EBDCBB30;
  if (!qword_1EBDCBB30)
  {
    sub_1BF17923C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDCBB30);
  }

  return result;
}

uint64_t MockServer.__allocating_init()()
{
  v0 = swift_allocObject();
  MockServer.init()();
  return v0;
}

uint64_t static MockServer.shared.getter()
{
  if (qword_1ED8EC850 != -1)
  {
    swift_once();
  }
}

uint64_t MockServer.listeningPort.getter()
{
  sub_1BF00D358(0, &unk_1ED8EAEB8, MEMORY[0x1E6977AF8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v8 - v3;
  if (!*(v0 + 16))
  {
    return 0;
  }

  sub_1BF17991C();

  v5 = sub_1BF1798EC();
  if (__swift_getEnumTagSinglePayload(v4, 1, v5) == 1)
  {
    sub_1BF16C238(v4);
    return 0;
  }

  v7 = sub_1BF1798DC();
  (*(*(v5 - 8) + 8))(v4, v5);
  return v7;
}

uint64_t sub_1BF16C238(uint64_t a1)
{
  sub_1BF00D358(0, &unk_1ED8EAEB8, MEMORY[0x1E6977AF8], MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

Swift::Void __swiftcall MockServer.stop()()
{
  v1 = v0;
  if (*(v0 + 16))
  {

    sub_1BF17996C();
  }

  *(v0 + 16) = 0;

  v2 = *(v0 + 64);
  UnfairLock.lock()();
  swift_beginAccess();
  *(v1 + 24) = MEMORY[0x1E69E7CC0];

  os_unfair_lock_unlock(*(v2 + 16));
}

uint64_t sub_1BF16C398(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t *, uint64_t, uint64_t))
{
  v4 = *(a1 + 24);
  v6 = *a1;
  v7 = *(a1 + 1);
  v8 = v4;
  v9 = *(a1 + 2);
  return a4(&v6, a2, a3);
}

uint64_t MockServer.deinit()
{

  return v0;
}

uint64_t MockServer.__deallocating_deinit()
{
  MockServer.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 72, 7);
}

unint64_t sub_1BF16C4B4()
{
  result = qword_1EBDCC9A8;
  if (!qword_1EBDCC9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDCC9A8);
  }

  return result;
}

id NetworkOperationEvent.httpResponse.getter()
{
  if (*(v0 + 16) > 1u)
  {
    return 0;
  }

  v1 = *v0;
  v2 = *v0;
  return v1;
}

id NetworkOperationEvent.httpStatusCode.getter()
{
  if (*(v0 + 16) > 1u)
  {
    return 0;
  }

  else
  {
    return [*v0 statusCode];
  }
}

id NetworkOperationEvent.error.getter()
{
  if (*(v0 + 16) < 2u)
  {
    return 0;
  }

  v1 = *v0;
  v2 = *v0;
  return v1;
}

id NetworkOperationEvent.errorCode.getter()
{
  if (*(v0 + 16) < 2u)
  {
    return 0;
  }

  v2 = sub_1BF17910C();
  v3 = [v2 code];

  return v3;
}

void *NetworkOperationEvent.metrics.getter()
{
  if (*(v0 + 16))
  {
    return 0;
  }

  v1 = *(v0 + 8);
  v2 = v1;
  return v1;
}

void sub_1BF16C674(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t))
{
  v5 = v3;
  v8 = *(v3 + 16);
  UnfairLock.lock()();
  swift_beginAccess();
  v9 = *(v5 + 24);
  v10 = *(v5 + 32);
  *(v5 + 24) = a1;
  *(v5 + 32) = a2;
  a3(v9, v10);
  os_unfair_lock_unlock(*(v8 + 16));
}

uint64_t sub_1BF16C6F4(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    OUTLINED_FUNCTION_58();
    v4 = swift_allocObject();
    *(v4 + 16) = a1;
    *(v4 + 24) = a2;
    v5 = sub_1BF006198;
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  v6 = OUTLINED_FUNCTION_13_0();
  sub_1BF009984(v6, v7);
  OUTLINED_FUNCTION_0_87();
  sub_1BF16C674(v5, v4, v8);

  v9 = OUTLINED_FUNCTION_13_0();

  return sub_1BEFE52DC(v9, v10);
}

uint64_t (*sub_1BF16C7AC(uint64_t (**a1)()))(uint64_t *a1, char a2)
{
  a1[2] = *(v1 + qword_1ED8EEFF8);

  v3 = sub_1BF0345CC();
  if (v3)
  {
    v5 = v3;
    v6 = v4;
    OUTLINED_FUNCTION_58();
    v3 = swift_allocObject();
    *(v3 + 16) = v5;
    *(v3 + 24) = v6;
    v7 = sub_1BF16E200;
  }

  else
  {
    v7 = 0;
  }

  *a1 = v7;
  a1[1] = v3;
  return sub_1BF16C848;
}

uint64_t sub_1BF16C848(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = a1[1];
    if (v2)
    {
      OUTLINED_FUNCTION_58();
      v4 = swift_allocObject();
      *(v4 + 16) = v2;
      *(v4 + 24) = v3;
      v5 = sub_1BF16AF64;
    }

    else
    {
      v5 = 0;
      v4 = 0;
    }

    sub_1BF009984(v2, v3);
    OUTLINED_FUNCTION_0_87();
    sub_1BF16C674(v5, v4, v8);

    return sub_1BEFE52DC(v2, v3);
  }

  else
  {
    if (v2)
    {
      v6 = a1[1];
      OUTLINED_FUNCTION_58();
      v7 = swift_allocObject();
      *(v7 + 16) = v2;
      *(v7 + 24) = v6;
    }

    else
    {
      OUTLINED_FUNCTION_9_3();
    }

    OUTLINED_FUNCTION_0_87();
    sub_1BF16C674(v10, v11, v12);
  }
}

void (*sub_1BF16C970(void *a1))(uint64_t **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v3;
  v4 = *MEMORY[0x1E69E7D40] & *v1;
  v3[6] = v4;
  v3[7] = *(v1 + qword_1ED8EF090);

  Atomic.wrappedValue.getter((v3 + 2));
  v5 = v3[2];
  if (v5)
  {
    v6 = v3[3];
    OUTLINED_FUNCTION_14_0();
    v7 = swift_allocObject();
    v7[2] = *(v4 + 80);
    v7[3] = v5;
    v7[4] = v6;
    v8 = sub_1BF16E204;
  }

  else
  {
    v8 = 0;
    v7 = 0;
  }

  *v3 = v8;
  v3[1] = v7;
  return sub_1BF16CA74;
}

void sub_1BF16CA74(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = **a1;
  v3 = (*a1)[1];
  if (a2)
  {
    if (v4)
    {
      v5 = v2[6];
      OUTLINED_FUNCTION_14_0();
      v6 = swift_allocObject();
      v6[2] = *(v5 + 80);
      v6[3] = v4;
      v6[4] = v3;
      v7 = sub_1BF14FA94;
    }

    else
    {
      v7 = 0;
      v6 = 0;
    }

    v2[4] = v7;
    v2[5] = v6;
    sub_1BF009984(v4, v3);
    Atomic.wrappedValue.setter((v2 + 4));

    sub_1BEFE52DC(*v2, v2[1]);
  }

  else
  {
    if (v4)
    {
      v8 = v2[6];
      OUTLINED_FUNCTION_14_0();
      v9 = swift_allocObject();
      v9[2] = *(v8 + 80);
      v9[3] = v4;
      v9[4] = v3;
      v10 = sub_1BF14FA94;
    }

    else
    {
      v10 = 0;
      v9 = 0;
    }

    v2[4] = v10;
    v2[5] = v9;
    Atomic.wrappedValue.setter((v2 + 4));
  }

  free(v2);
}

uint64_t sub_1BF16CB84(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_8(sub_1BF16CB9C);
}

uint64_t sub_1BF16CB9C()
{
  OUTLINED_FUNCTION_5();
  if (qword_1ED8EF148 != -1)
  {
    swift_once();
  }

  swift_task_alloc();
  OUTLINED_FUNCTION_7_1();
  v0[4] = v1;
  *v1 = v2;
  v1[1] = sub_1BF072EA8;
  v3 = v0[2];
  v4 = v0[3];

  return TaskScheduler.scheduleAsync<A>(_:)(v3, v4);
}

uint64_t sub_1BF16CC64(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = *MEMORY[0x1E69E7D40] & *v2;
  return OUTLINED_FUNCTION_8(sub_1BF16CCB8);
}

uint64_t sub_1BF16CCB8()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  v4 = swift_task_alloc();
  v0[6] = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = v3;
  v5 = swift_task_alloc();
  v0[7] = v5;
  *(v5 + 16) = v2;
  swift_task_alloc();
  OUTLINED_FUNCTION_7_1();
  v0[8] = v6;
  v7 = *(v1 + 80);
  *v6 = v8;
  v6[1] = sub_1BF16CDC0;
  v9 = v0[2];

  return MEMORY[0x1EEE6DE18](v9, &unk_1BF18B618, v4, sub_1BF16DAE0, v5, 0, 0, v7);
}

uint64_t sub_1BF16CDC0()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_10();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v5 = v4;
  *(v3 + 72) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1BF16CEF4, 0, 0);
  }

  else
  {

    OUTLINED_FUNCTION_9();

    return v6();
  }
}

uint64_t sub_1BF16CEF4()
{
  OUTLINED_FUNCTION_5();

  OUTLINED_FUNCTION_9();

  return v0();
}

uint64_t AsyncOperationError.hashValue.getter()
{
  v1 = *v0;
  sub_1BF17BB6C();
  MEMORY[0x1BFB53950](v1);
  return sub_1BF17BB9C();
}

uint64_t sub_1BF16CFF0(uint64_t a1)
{
  sub_1BF17BB6C();
  sub_1BF084288(v3, *v1);
  return sub_1BF17BB9C();
}

uint64_t AsyncOperation.operationID.getter()
{
  v1 = *(v0 + qword_1ED8EF088);
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  return v1;
}

uint64_t sub_1BF16D084@<X0>(uint64_t (**a1)()@<X8>)
{
  result = sub_1BF03463C();
  if (result)
  {
    v4 = result;
    v5 = v3;
    result = swift_allocObject();
    *(result + 16) = v4;
    *(result + 24) = v5;
    v6 = sub_1BF16AF64;
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
  a1[1] = result;
  return result;
}

uint64_t sub_1BF16D0F4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_1BF16E200;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  sub_1BF009984(v1, v2);
  return sub_1BF16C6F4(v4, v3);
}

uint64_t (*sub_1BF16D184@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t (**a3)()@<X8>))()
{
  v4 = *(a1 + a2 - 8);
  result = sub_1BF03938C();
  if (result)
  {
    v7 = result;
    v8 = v6;
    result = swift_allocObject();
    *(result + 2) = v4;
    *(result + 3) = v7;
    *(result + 4) = v8;
    v9 = sub_1BF14FA94;
  }

  else
  {
    v9 = 0;
  }

  *a3 = v9;
  a3[1] = result;
  return result;
}

uint64_t sub_1BF16D200(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v5 = a1[1];
  if (*a1)
  {
    v6 = *(a3 + a4 - 8);
    v7 = swift_allocObject();
    v7[2] = v6;
    v7[3] = v4;
    v7[4] = v5;
    v8 = sub_1BF16E204;
  }

  else
  {
    v8 = 0;
    v7 = 0;
  }

  sub_1BF009984(v4, v5);
  return sub_1BF043D04(v8, v7);
}

uint64_t sub_1BF16D29C(uint64_t a1, void *a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v3[5] = *MEMORY[0x1E69E7D40] & *a2;
  return MEMORY[0x1EEE6DFA0](sub_1BF16D2F8, 0, 0);
}

uint64_t sub_1BF16D2F8()
{
  OUTLINED_FUNCTION_5();
  v1 = *(v0 + 40);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *(v2 + 16) = *(v0 + 24);
  swift_task_alloc();
  OUTLINED_FUNCTION_7_1();
  *(v0 + 56) = v3;
  v4 = *(v1 + 80);
  *v3 = v5;
  v3[1] = sub_1BF16D3E4;
  v6 = *(v0 + 16);

  return MEMORY[0x1EEE6DE38](v6, 0, 0, 0x2865747563657865, 0xEC000000293A6E6FLL, sub_1BF16E15C, v2, v4);
}

uint64_t sub_1BF16D3E4()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_10();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v5 = v4;
  *(v3 + 64) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1BF16D50C, 0, 0);
  }

  else
  {

    OUTLINED_FUNCTION_9();

    return v6();
  }
}

uint64_t sub_1BF16D50C()
{
  OUTLINED_FUNCTION_5();

  OUTLINED_FUNCTION_9();

  return v0();
}

uint64_t sub_1BF16D568(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  swift_task_alloc();
  OUTLINED_FUNCTION_7_1();
  *(v2 + 16) = v6;
  *v6 = v7;
  v6[1] = sub_1BF035DD0;

  return sub_1BF16D29C(a1, v5, v4);
}

uint64_t sub_1BF16D610(uint64_t a1, void *a2, void *a3)
{
  v18 = a3;
  v5 = *((*MEMORY[0x1E69E7D40] & *a2) + 0x50);
  sub_1BEFF79E8();
  v6 = sub_1BF17A6DC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v17 - v9;
  v11 = sub_1BF03938C();
  v13 = v12;
  (*(v7 + 16))(v10, a1, v6);
  v14 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v15 = swift_allocObject();
  *(v15 + 2) = v5;
  *(v15 + 3) = v11;
  *(v15 + 4) = v13;
  (*(v7 + 32))(&v15[v14], v10, v6);
  sub_1BF009984(v11, v13);
  sub_1BF043D04(sub_1BF16E164, v15);
  [v18 addOperation_];
  return sub_1BEFE52DC(v11, v13);
}

void sub_1BF16D7D0(uint64_t a1, void (*a2)(uint64_t, double), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v27[0] = a4;
  v8 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v10 = v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = v27 - v13;
  v18 = type metadata accessor for Result(0, v17, v15, v16);
  v19 = *(v18 - 8);
  v21.n128_f64[0] = MEMORY[0x1EEE9AC00](v18, v20);
  v23 = (v27 - v22);
  if (a2)
  {
    a2(a1, v21.n128_f64[0]);
  }

  (*(v19 + 16))(v23, a1, v18, v21);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v29 = *v23;
    v24 = v29;
    v25 = v29;
    sub_1BEFF79E8();
    if (swift_dynamicCast() && (v28 & 1) == 0)
    {

      sub_1BF17A6EC();
      sub_1BF0D03D0();
      v26 = swift_allocError();
      sub_1BF179D0C();
      v27[1] = v26;
      sub_1BF17A6DC();
      sub_1BF17A6BC();
    }

    else
    {

      v29 = v24;
      sub_1BF17A6DC();
      sub_1BF17A6BC();
    }
  }

  else
  {
    (*(v8 + 32))(v14, v23, a5);
    (*(v8 + 16))(v10, v14, a5);
    sub_1BEFF79E8();
    sub_1BF17A6DC();
    sub_1BF17A6CC();
    (*(v8 + 8))(v14, a5);
  }
}

id AsyncOperation.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AsyncOperation.__deallocating_deinit(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for AsyncOperation(0, *((*MEMORY[0x1E69E7D40] & *v4) + 0x50), a3, a4);
  v7.receiver = v4;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, sel_dealloc);
}

unint64_t sub_1BF16DB8C()
{
  result = qword_1EBDCC9B0;
  if (!qword_1EBDCC9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDCC9B0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AsyncOperationError(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t dispatch thunk of AsyncOperation.value.getter(uint64_t a1)
{
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0xC8);
  v8 = (v4 + *v4);
  swift_task_alloc();
  OUTLINED_FUNCTION_7_1();
  *(v2 + 16) = v5;
  *v5 = v6;
  v5[1] = sub_1BF035DD4;

  return v8(a1);
}

uint64_t dispatch thunk of AsyncOperation.execute(on:)(uint64_t a1, uint64_t a2)
{
  v6 = *((*MEMORY[0x1E69E7D40] & *v2) + 0xD0);
  v10 = (v6 + *v6);
  swift_task_alloc();
  OUTLINED_FUNCTION_7_1();
  *(v3 + 16) = v7;
  *v7 = v8;
  v7[1] = sub_1BF035DD0;

  return v10(a1, a2);
}

_BYTE *sub_1BF16E074(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

void sub_1BF16E164(uint64_t a1)
{
  v3 = v1[2];
  sub_1BEFF79E8();
  v4 = *(sub_1BF17A6DC() - 8);
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1 + ((*(v4 + 80) + 40) & ~*(v4 + 80));

  sub_1BF16D7D0(a1, v5, v6, v7, v3);
}

uint64_t UnfairLock.__allocating_init(options:)(int *a1)
{
  v2 = swift_allocObject();
  UnfairLock.init(options:)(a1);
  return v2;
}

TeaFoundation::UnfairLock::Options sub_1BF16E270@<X0>(Swift::Int *a1@<X0>, uint64_t a2@<X8>)
{
  result.rawValue = UnfairLock.Options.init(rawValue:)(*a1).rawValue;
  *a2 = v4;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1BF16E2B0@<X0>(uint64_t *a1@<X8>)
{
  result = UnfairLock.Options.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t MutexLock.__allocating_init()()
{
  v0 = swift_allocObject();
  MutexLock.init()();
  return v0;
}

uint64_t MutexLock.init()()
{
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 16) = 0u;
  swift_beginAccess();
  pthread_mutex_init((v0 + 16), 0);
  swift_endAccess();
  return v0;
}

uint64_t sub_1BF16E3CC(void (*a1)(uint64_t))
{
  swift_beginAccess();
  a1(v1 + 16);
  return swift_endAccess();
}

unint64_t sub_1BF16E438()
{
  result = qword_1EBDCC9B8;
  if (!qword_1EBDCC9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDCC9B8);
  }

  return result;
}

unint64_t sub_1BF16E490()
{
  result = qword_1EBDCC9C0;
  if (!qword_1EBDCC9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDCC9C0);
  }

  return result;
}

uint64_t BridgedBundleAssembly.__allocating_init(_:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t BridgedBundleAssembly.__deallocating_deinit()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

void XPCSelector.replyBlock.getter(uint64_t *a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  sub_1BF070B0C(v2, v3, v4);
}

__n128 XPCSelector.init(_:_:)@<Q0>(unint64_t a1@<X0>, void (*a2)(__n128 *__return_ptr)@<X1>, __n128 *a3@<X8>)
{
  a2(&v8);
  v5 = v9;
  result = v8;
  v7 = MEMORY[0x1E69E7CC0];
  a3->n128_u64[0] = a1;
  a3->n128_u64[1] = v7;
  a3[1] = result;
  a3[2].n128_u64[0] = v5;
  return result;
}

uint64_t XPCSelector.init(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, void *a3@<X8>)
{
  result = a2();
  *a3 = a1;
  a3[1] = result;
  a3[3] = 0;
  a3[4] = 0;
  a3[2] = 0;
  return result;
}

uint64_t XPCSelector.withReply(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t)@<X2>, void *a4@<X8>)
{
  v10 = *v4;
  v9 = v4[1];
  v11 = _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  v12 = a3(v11);
  *a4 = v10;
  a4[1] = v9;
  a4[2] = a1;
  a4[3] = a2;
  a4[4] = v12;

  return _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
}

uint64_t get_enum_tag_for_layout_string_13TeaFoundation8XPCBlockVSg(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1BF16E7EC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
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

uint64_t sub_1BF16E82C(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t AddressCache.init()@<X0>(uint64_t *a2@<X8>)
{
  result = sub_1BF179CEC();
  *a2 = result;
  return result;
}

void *AddressCache.subscript.getter(void *result, uint64_t a2)
{
  if (*(*(*(a2 + 16) - 8) + 64) == 8)
  {
    return sub_1BF179EAC();
  }

  __break(1u);
  return v2;
}

void sub_1BF16E988(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a3 + a4 - 16);
  v7 = *(a3 + a4 - 8);
  v8 = sub_1BF17AE6C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v21 - v11;
  v15 = MEMORY[0x1EEE9AC00](v13, v14);
  v17 = (&v21 - v16);
  (*(v18 + 16))(&v21 - v16, a3, v6, v15);
  (*(v9 + 16))(v12, a1, v8);
  v20 = type metadata accessor for AddressCache(0, v6, v7, v19);
  AddressCache.subscript.setter(v12, v17, v20);
}

void AddressCache.subscript.setter(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = sub_1BF17AE6C();
  OUTLINED_FUNCTION_2_3();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = v18 - v11;
  v13 = *(a3 + 16);
  OUTLINED_FUNCTION_2_3();
  v15 = v14;
  if (*(v16 + 64) == 8)
  {
    v17 = *a2;
    (*(v8 + 16))(v12, a1, v6);
    v18[1] = v17;
    sub_1BF179E9C();
    sub_1BF179EBC();
    (*(v15 + 8))(a2, v13);
    (*(v8 + 8))(a1, v6);
  }

  else
  {
    __break(1u);
  }
}

void (*AddressCache.subscript.modify(void *a1, void *a2, uint64_t a3))(uint64_t **a1, char a2)
{
  v7 = __swift_coroFrameAllocStub(0x50uLL);
  *a1 = v7;
  *v7 = a3;
  v7[1] = v3;
  v8 = sub_1BF17AE6C();
  v7[2] = v8;
  v9 = *(v8 - 8);
  v7[3] = v9;
  v10 = *(v9 + 64);
  v7[4] = __swift_coroFrameAllocStub(v10);
  v7[5] = __swift_coroFrameAllocStub(v10);
  v7[6] = *(a3 + 16);
  OUTLINED_FUNCTION_2_3();
  v12 = v11;
  v7[7] = v11;
  v14 = *(v13 + 64);
  v7[8] = __swift_coroFrameAllocStub(v14);
  v7[9] = __swift_coroFrameAllocStub(v14);
  (*(v12 + 16))();
  AddressCache.subscript.getter(a2, a3);
  return sub_1BF16EE3C;
}

void sub_1BF16EE3C(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[8];
  v4 = (*a1)[9];
  if (a2)
  {
    v5 = v2[7];
    v11 = v2[6];
    v7 = v2[4];
    v6 = v2[5];
    v8 = v2[2];
    v9 = v2[3];
    v10 = *v2;
    (*(v9 + 16))(v7, v6, v8);
    (*(v5 + 32))(v3, v4, v11);
    AddressCache.subscript.setter(v7, v3, v10);
    (*(v9 + 8))(v6, v8);
  }

  else
  {
    v7 = v2[4];
    v6 = v2[5];
    AddressCache.subscript.setter(v6, v4, *v2);
  }

  free(v4);
  free(v3);
  free(v6);
  free(v7);

  free(v2);
}

uint64_t JSONDeserializer.deserialize(_:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *v3;
  type metadata accessor for _TeaJSONDecoder();
  swift_initStackObject();
  _TeaJSONDecoder.init()();
  sub_1BF015544(*(v7 + 80), a1, a2, *(v7 + 80), *(v7 + 88), a3);
}

uint64_t sub_1BF16F040@<X0>(uint64_t *a1@<X8>)
{
  result = JSONDeserializer.__allocating_init()();
  *a1 = result;
  return result;
}

void Multicaster.yield(_:)()
{
  OUTLINED_FUNCTION_32();
  v114 = v1;
  v3 = *(v2 + 16);
  OUTLINED_FUNCTION_0_62();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6, v7);
  OUTLINED_FUNCTION_2_0();
  v113 = v9 - v8;
  v129 = sub_1BF17A79C();
  OUTLINED_FUNCTION_1();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12, v13);
  OUTLINED_FUNCTION_1_16();
  v123 = v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v128 = &v95 - v17;
  v117 = v3;
  v18 = sub_1BF17A7BC();
  OUTLINED_FUNCTION_1();
  v20 = v19;
  MEMORY[0x1EEE9AC00](v21, v22);
  OUTLINED_FUNCTION_1_16();
  v112 = v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v102 = &v95 - v26;
  v27 = sub_1BF1794FC();
  OUTLINED_FUNCTION_1();
  v29 = v28;
  MEMORY[0x1EEE9AC00](v30, v31);
  OUTLINED_FUNCTION_1_16();
  v105 = v32;
  MEMORY[0x1EEE9AC00](v33, v34);
  v36 = &v95 - v35;
  MEMORY[0x1EEE9AC00](v37, v38);
  v125 = &v95 - v39;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v116 = sub_1BF17AE6C();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v40, v41);
  v43 = &v95 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v44, v45);
  v119 = &v95 - v47;
  v130 = MEMORY[0x1E69E7CD0];
  v95 = v0;
  v48 = *v0;
  v49 = *(*v0 + 64);
  v118 = *v0 + 64;
  v50 = 1 << *(v48 + 32);
  v51 = -1;
  if (v50 < 64)
  {
    v51 = ~(-1 << v50);
  }

  v52 = v51 & v49;
  v97 = (v50 + 63) >> 6;
  v124 = v29 + 16;
  v99 = v20 + 16;
  v126 = (v20 + 32);
  v127 = (v29 + 32);
  v115 = (v46 + 32);
  v111 = (v5 + 16);
  v110 = (v11 + 16);
  v109 = (v11 + 88);
  v108 = *MEMORY[0x1E69E8630];
  v98 = *MEMORY[0x1E69E8628];
  v96 = *MEMORY[0x1E69E8620];
  v101 = v29;
  v107 = (v29 + 8);
  v103 = v20;
  v106 = v20 + 8;
  v122 = (v11 + 8);
  v104 = v48;
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  v53 = 0;
  v121 = v36;
  v100 = v43;
  while (v52)
  {
    v54 = v53;
LABEL_11:
    v57 = __clz(__rbit64(v52));
    v52 &= v52 - 1;
    v58 = v57 | (v54 << 6);
    v59 = v104;
    v60 = v101;
    (*(v101 + 16))(v125, *(v104 + 48) + *(v101 + 72) * v58, v27);
    v61 = *(v59 + 56);
    v62 = v103;
    v63 = v102;
    (*(v103 + 16))(v102, v61 + *(v103 + 72) * v58, v18);
    v56 = TupleTypeMetadata2;
    v64 = *(TupleTypeMetadata2 + 48);
    v43 = v100;
    (*(v60 + 32))();
    (*(v62 + 32))(&v43[v64], v63, v18);
    v65 = 0;
    v36 = v121;
    v55 = v119;
LABEL_12:
    __swift_storeEnumTagSinglePayload(v43, v65, 1, v56);
    (*v115)(v55, v43, v116);
    if (__swift_getEnumTagSinglePayload(v55, 1, v56) == 1)
    {

      MEMORY[0x1EEE9AC00](v91, v92);
      *(&v95 - 2) = v117;
      *(&v95 - 1) = &v130;
      OUTLINED_FUNCTION_0_89();
      sub_1BEFE7314(v93, v94, MEMORY[0x1E69695B8]);
      *v95 = sub_1BF179E2C();

      OUTLINED_FUNCTION_26_2();
      return;
    }

    v66 = *(v56 + 48);
    (*v127)(v36, v55, v27);
    (*v126)(v112, v55 + v66, v18);
    (*v111)(v113, v114, v117);
    v67 = v27;
    v68 = v36;
    v69 = v128;
    sub_1BF17A7AC();
    v70 = v18;
    v71 = v123;
    v72 = v129;
    (*v110)(v123, v69, v129);
    v73 = (*v109)(v71, v72);
    if (v73 == v108)
    {
      goto LABEL_16;
    }

    if (v73 == v98)
    {
      (*v122)(v123, v129);
      v68 = v121;
LABEL_16:
      v74 = OUTLINED_FUNCTION_20_19();
      v75(v74, v68, v67);
      v76 = v125;
      sub_1BF16FEE4();
      v77 = *v107;
      (*v107)(v76, v67);
      v78 = OUTLINED_FUNCTION_5_49();
      v79(v78, v70);
      v77(v68, v67);
      v18 = v70;
      v36 = v68;
      v27 = v67;
      goto LABEL_21;
    }

    if (v73 == v96)
    {
      v80 = OUTLINED_FUNCTION_5_49();
      v18 = v70;
      v81(v80, v70);
      v36 = v121;
      v27 = v67;
      (*v107)(v121, v67);
    }

    else
    {
      v82 = OUTLINED_FUNCTION_20_19();
      v83 = v121;
      v84(v82, v121, v67);
      v85 = v125;
      v36 = v83;
      sub_1BF16FEE4();
      v86 = *v107;
      v87 = v85;
      v27 = v67;
      (*v107)(v87, v67);
      v88 = v86;
      v89 = OUTLINED_FUNCTION_5_49();
      v18 = v70;
      v90(v89, v70);
      v88(v36, v27);
      (*v122)(v123, v129);
    }

LABEL_21:
    (*v122)(v128, v129);
  }

  v55 = v119;
  v56 = TupleTypeMetadata2;
  while (1)
  {
    v54 = v53 + 1;
    if (__OFADD__(v53, 1))
    {
      break;
    }

    if (v54 >= v97)
    {
      v52 = 0;
      v65 = 1;
      goto LABEL_12;
    }

    v52 = *(v118 + 8 * v54);
    ++v53;
    if (v52)
    {
      v53 = v54;
      goto LABEL_11;
    }
  }

  __break(1u);
}

uint64_t sub_1BF16FA44(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = *a3;
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  LOBYTE(a1) = sub_1BF0D90E4(a1, v4);

  return a1 & 1;
}

void sub_1BF16FABC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  OUTLINED_FUNCTION_133();
  OUTLINED_FUNCTION_31_13();
  v35 = *v31;
  sub_1BF17BB6C();
  sub_1BF179F3C();
  sub_1BF17BB9C();
  OUTLINED_FUNCTION_14_27();
  v38 = ~v37;
  while (1)
  {
    v39 = v36 & v38;
    if (((1 << (v36 & v38)) & *(v35 + 56 + (((v36 & v38) >> 3) & 0xFFFFFFFFFFFFFF8))) == 0)
    {
      break;
    }

    v40 = (*(v35 + 48) + 16 * v39);
    v41 = *v40 == v34 && v40[1] == v32;
    if (v41 || (sub_1BF17B86C() & 1) != 0)
    {

      v42 = (*(v35 + 48) + 16 * v39);
      v43 = v42[1];
      *v30 = *v42;
      v30[1] = v43;
      _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
      goto LABEL_11;
    }

    v36 = v39 + 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v45 = *v33;
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  sub_1BF170F84(v34, v32, v39, isUniquelyReferenced_nonNull_native);
  *v33 = v45;
  *v30 = v34;
  v30[1] = v32;
LABEL_11:
  OUTLINED_FUNCTION_132();
}

BOOL sub_1BF16FBE0(unint64_t *a1, unint64_t a2)
{
  v4 = v2;
  v7 = *v2;
  sub_1BF17BB5C();
  OUTLINED_FUNCTION_33_8();
  while (1)
  {
    OUTLINED_FUNCTION_22_17();
    v10 = v9 & v8;
    if ((v9 & v8) == 0)
    {
      break;
    }

    if (*(*(v7 + 48) + 8 * v3) == a2)
    {
      goto LABEL_6;
    }
  }

  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_32_11();
  sub_1BF1710EC(a2, v3, v11);
  *v4 = v13;
LABEL_6:
  result = v10 == 0;
  *a1 = a2;
  return result;
}

void sub_1BF16FC88()
{
  OUTLINED_FUNCTION_32();
  v3 = sub_1BF17923C();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v4, v5);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_25_13();
  OUTLINED_FUNCTION_2_68();
  sub_1BEFE7314(v6, v7, MEMORY[0x1E6968FC0]);
  OUTLINED_FUNCTION_27_10();
  OUTLINED_FUNCTION_4_44();
  do
  {
    OUTLINED_FUNCTION_12_26();
    if (v8)
    {
      swift_isUniquelyReferenced_nonNull_native();
      v13 = OUTLINED_FUNCTION_17_17();
      v14(v13);
      v15 = OUTLINED_FUNCTION_16_23();
      sub_1BF1711F0(v15, v16, v17);
      v18 = OUTLINED_FUNCTION_15_24();
      v19(v18);
      goto LABEL_7;
    }

    v9 = OUTLINED_FUNCTION_8_37();
    v2(v9);
    OUTLINED_FUNCTION_2_68();
    v11 = sub_1BEFE7314(&qword_1ED8EACE8, v10, MEMORY[0x1E6968FC8]);
    OUTLINED_FUNCTION_28_13(v11);
    v12 = OUTLINED_FUNCTION_23_11();
    v1(v12);
  }

  while ((v0 & 1) == 0);
  (v1)(v21, v3);
  v20 = OUTLINED_FUNCTION_18_14();
  v2(v20);
LABEL_7:
  OUTLINED_FUNCTION_26_2();
}

BOOL sub_1BF16FE14(unint64_t *a1, unint64_t a2)
{
  v6 = *v2;
  sub_1BF17BB6C();
  MEMORY[0x1BFB53950](a2);
  sub_1BF17BB9C();
  OUTLINED_FUNCTION_33_8();
  do
  {
    OUTLINED_FUNCTION_22_17();
    v9 = v8 & v7;
    if ((v8 & v7) == 0)
    {
      swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_32_11();
      sub_1BF1714A4(a2, v3, v10);
      *v2 = v12;
      goto LABEL_7;
    }
  }

  while (*(*(v6 + 48) + 8 * v3) != a2);
  a2 = *(*(v6 + 48) + 8 * v3);
LABEL_7:
  result = v9 == 0;
  *a1 = a2;
  return result;
}

void sub_1BF16FEE4()
{
  OUTLINED_FUNCTION_32();
  v3 = sub_1BF1794FC();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v4, v5);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_25_13();
  OUTLINED_FUNCTION_0_89();
  sub_1BEFE7314(v6, v7, MEMORY[0x1E69695B8]);
  OUTLINED_FUNCTION_27_10();
  OUTLINED_FUNCTION_4_44();
  do
  {
    OUTLINED_FUNCTION_12_26();
    if (v8)
    {
      swift_isUniquelyReferenced_nonNull_native();
      v13 = OUTLINED_FUNCTION_17_17();
      v14(v13);
      v15 = OUTLINED_FUNCTION_16_23();
      sub_1BF1715DC(v15, v16, v17);
      v18 = OUTLINED_FUNCTION_15_24();
      v19(v18);
      goto LABEL_7;
    }

    v9 = OUTLINED_FUNCTION_8_37();
    v2(v9);
    OUTLINED_FUNCTION_0_89();
    v11 = sub_1BEFE7314(&qword_1ED8F0130, v10, MEMORY[0x1E69695C8]);
    OUTLINED_FUNCTION_28_13(v11);
    v12 = OUTLINED_FUNCTION_23_11();
    v1(v12);
  }

  while ((v0 & 1) == 0);
  (v1)(v21, v3);
  v20 = OUTLINED_FUNCTION_18_14();
  v2(v20);
LABEL_7:
  OUTLINED_FUNCTION_26_2();
}

void sub_1BF170070(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  OUTLINED_FUNCTION_133();
  OUTLINED_FUNCTION_19_17(v34, v35, v36, v37);
  v38 = sub_1BF17B17C();
  if (!v31[2])
  {
LABEL_24:

    *v30 = v38;
    OUTLINED_FUNCTION_132();
    return;
  }

  v39 = 0;
  v40 = v31 + 7;
  OUTLINED_FUNCTION_3_53();
  if (!v33)
  {
LABEL_4:
    v42 = v39;
    while (1)
    {
      v39 = v42 + 1;
      if (__OFADD__(v42, 1))
      {
        __break(1u);
        goto LABEL_26;
      }

      if (v39 >= v32)
      {
        break;
      }

      ++v42;
      if (v40[v39])
      {
        OUTLINED_FUNCTION_6_43();
        v33 = v44 & v43;
        goto LABEL_9;
      }
    }

    OUTLINED_FUNCTION_24_15();
    if (v55 >= 64)
    {
      sub_1BF1470D8(0, (v55 + 63) >> 6, (v31 + 7));
    }

    else
    {
      OUTLINED_FUNCTION_14_27();
      *v40 = v56;
    }

    v31[2] = 0;
    goto LABEL_24;
  }

  while (1)
  {
    OUTLINED_FUNCTION_7_35();
LABEL_9:
    v45 = (v31[6] + 16 * (v41 | (v39 << 6)));
    v46 = *v45;
    v47 = v45[1];
    sub_1BF17BB6C();
    sub_1BF179F3C();
    sub_1BF17BB9C();
    OUTLINED_FUNCTION_13_28();
    if (v48)
    {
      break;
    }

    OUTLINED_FUNCTION_38_4();
LABEL_18:
    OUTLINED_FUNCTION_9_32(v49);
    *v54 = v46;
    v54[1] = v47;
    ++*(v38 + 16);
    if (!v33)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_37_5();
  while (++v50 != v52 || (v51 & 1) == 0)
  {
    v53 = v50 == v52;
    if (v50 == v52)
    {
      v50 = 0;
    }

    v51 |= v53;
    if (v30[v50] != -1)
    {
      OUTLINED_FUNCTION_35_7();
      goto LABEL_18;
    }
  }

LABEL_26:
  __break(1u);
}

uint64_t sub_1BF1701F0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1BF173080(0, &qword_1ED8EE9A8, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  result = sub_1BF17B17C();
  v5 = result;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    return result;
  }

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
  if (!v10)
  {
LABEL_7:
    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v6 >= v11)
      {
        break;
      }

      v15 = v7[v6];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v10 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      sub_1BF1470D8(0, (v28 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v16 = (*(v3 + 48) + 16 * (v13 | (v6 << 6)));
    v17 = *v16;
    v18 = v16[1];
    sub_1BF17BB6C();
    sub_1BF179F3C();
    result = sub_1BF17BB9C();
    v19 = -1 << *(v5 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      break;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v5 + 48) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v5 + 16);
    if (!v10)
    {
      goto LABEL_7;
    }
  }

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
    v26 = *(v12 + 8 * v21);
    if (v26 != -1)
    {
      v22 = __clz(__rbit64(~v26)) + (v21 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_1BF170458(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1BF173080(0, &qword_1EBDCC9F0, MEMORY[0x1E69E6810], MEMORY[0x1E69E6820]);
  result = sub_1BF17B17C();
  v5 = result;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    return result;
  }

  v6 = 0;
  v8 = (v3 + 56);
  v7 = *(v3 + 56);
  v9 = 1 << *(v3 + 32);
  v25 = v2;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & v7;
  v12 = result + 56;
  if ((v10 & v7) == 0)
  {
LABEL_7:
    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v6 >= ((v9 + 63) >> 6))
      {
        break;
      }

      v15 = v8[v6];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    if (v9 >= 64)
    {
      sub_1BF1470D8(0, (v9 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v8 = -1 << v9;
    }

    v2 = v25;
    *(v3 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_12:
    v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
    result = sub_1BF17BB5C();
    v17 = -1 << *(v5 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
    {
      break;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v5 + 48) + 8 * v20) = v16;
    ++*(v5 + 16);
    if (!v11)
    {
      goto LABEL_7;
    }
  }

  v21 = 0;
  v22 = (63 - v17) >> 6;
  while (++v19 != v22 || (v21 & 1) == 0)
  {
    v23 = v19 == v22;
    if (v19 == v22)
    {
      v19 = 0;
    }

    v21 |= v23;
    v24 = *(v12 + 8 * v19);
    if (v24 != -1)
    {
      v20 = __clz(__rbit64(~v24)) + (v19 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_1BF170688(uint64_t a1)
{
  v2 = v1;
  v37 = sub_1BF17923C();
  v3 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37, v4);
  v36 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_1BF172FEC(0);
  result = sub_1BF17B17C();
  v8 = result;
  if (!*(v6 + 16))
  {
LABEL_27:

    *v2 = v8;
    return result;
  }

  v31 = v1;
  v32 = v6;
  v9 = 0;
  v10 = (v6 + 56);
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
  v35 = v3 + 32;
  v15 = result + 56;
  if (!v13)
  {
LABEL_7:
    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v9 >= v14)
      {
        break;
      }

      v18 = v10[v9];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v13 = (v18 - 1) & v18;
        goto LABEL_12;
      }
    }

    v29 = 1 << *(v6 + 32);
    if (v29 >= 64)
    {
      sub_1BF1470D8(0, (v29 + 63) >> 6, v10);
    }

    else
    {
      *v10 = -1 << v29;
    }

    v2 = v31;
    *(v6 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v16 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
LABEL_12:
    v19 = *(v6 + 48) + *(v3 + 72) * (v16 | (v9 << 6));
    v20 = *(v3 + 32);
    v33 = *(v3 + 72);
    v34 = v20;
    v20(v36, v19, v37);
    sub_1BEFE7314(&qword_1ED8ED690, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
    result = sub_1BF179F1C();
    v21 = -1 << *(v8 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
    {
      break;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v15 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    result = v34(*(v8 + 48) + v24 * v33, v36, v37);
    ++*(v8 + 16);
    v6 = v32;
    if (!v13)
    {
      goto LABEL_7;
    }
  }

  v25 = 0;
  v26 = (63 - v21) >> 6;
  while (++v23 != v26 || (v25 & 1) == 0)
  {
    v27 = v23 == v26;
    if (v23 == v26)
    {
      v23 = 0;
    }

    v25 |= v27;
    v28 = *(v15 + 8 * v23);
    if (v28 != -1)
    {
      v24 = __clz(__rbit64(~v28)) + (v23 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_1BF1709D4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1BF037594(0, &qword_1EBDCC9E0, sub_1BF0A84D8, &type metadata for XPCClass);
  result = sub_1BF17B17C();
  v5 = result;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    return result;
  }

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
  if (!v10)
  {
LABEL_7:
    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v6 >= v11)
      {
        break;
      }

      v15 = v7[v6];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v10 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      sub_1BF1470D8(0, (v25 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v7 = -1 << v25;
    }

    v2 = v1;
    *(v3 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
    sub_1BF17BB6C();
    MEMORY[0x1BFB53950](v16);
    result = sub_1BF17BB9C();
    v17 = -1 << *(v5 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
    {
      break;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v5 + 48) + 8 * v20) = v16;
    ++*(v5 + 16);
    if (!v10)
    {
      goto LABEL_7;
    }
  }

  v21 = 0;
  v22 = (63 - v17) >> 6;
  while (++v19 != v22 || (v21 & 1) == 0)
  {
    v23 = v19 == v22;
    if (v19 == v22)
    {
      v19 = 0;
    }

    v21 |= v23;
    v24 = *(v12 + 8 * v19);
    if (v24 != -1)
    {
      v20 = __clz(__rbit64(~v24)) + (v19 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_1BF170C38(uint64_t a1)
{
  v2 = v1;
  v37 = sub_1BF1794FC();
  v3 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37, v4);
  v36 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_1BF172F58(0);
  result = sub_1BF17B17C();
  v8 = result;
  if (!*(v6 + 16))
  {
LABEL_27:

    *v2 = v8;
    return result;
  }

  v31 = v1;
  v32 = v6;
  v9 = 0;
  v10 = (v6 + 56);
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
  v35 = v3 + 32;
  v15 = result + 56;
  if (!v13)
  {
LABEL_7:
    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v9 >= v14)
      {
        break;
      }

      v18 = v10[v9];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v13 = (v18 - 1) & v18;
        goto LABEL_12;
      }
    }

    v29 = 1 << *(v6 + 32);
    if (v29 >= 64)
    {
      sub_1BF1470D8(0, (v29 + 63) >> 6, v10);
    }

    else
    {
      *v10 = -1 << v29;
    }

    v2 = v31;
    *(v6 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v16 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
LABEL_12:
    v19 = *(v6 + 48) + *(v3 + 72) * (v16 | (v9 << 6));
    v20 = *(v3 + 32);
    v33 = *(v3 + 72);
    v34 = v20;
    v20(v36, v19, v37);
    sub_1BEFE7314(qword_1ED8F0138, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
    result = sub_1BF179F1C();
    v21 = -1 << *(v8 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
    {
      break;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v15 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    result = v34(*(v8 + 48) + v24 * v33, v36, v37);
    ++*(v8 + 16);
    v6 = v32;
    if (!v13)
    {
      goto LABEL_7;
    }
  }

  v25 = 0;
  v26 = (63 - v21) >> 6;
  while (++v23 != v26 || (v25 & 1) == 0)
  {
    v27 = v23 == v26;
    if (v23 == v26)
    {
      v23 = 0;
    }

    v25 |= v27;
    v28 = *(v15 + 8 * v23);
    if (v28 != -1)
    {
      v24 = __clz(__rbit64(~v28)) + (v23 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

unint64_t sub_1BF170F84(unint64_t result, unint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_1BF1701F0(v8 + 1);
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      sub_1BF1722D4(v8 + 1);
LABEL_10:
      v15 = *v4;
      sub_1BF17BB6C();
      sub_1BF179F3C();
      result = sub_1BF17BB9C();
      v16 = ~(-1 << *(v15 + 32));
      while (1)
      {
        a3 = result & v16;
        if (((*(v15 + 56 + (((result & v16) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v16)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v17 = (*(v15 + 48) + 16 * a3);
        v18 = *v17 == v7 && v17[1] == a2;
        if (v18 || (sub_1BF17B86C() & 1) != 0)
        {
          goto LABEL_19;
        }

        result = a3 + 1;
      }
    }

    result = sub_1BF1719CC();
  }

LABEL_7:
  v10 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v11 = (*(v10 + 48) + 16 * a3);
  *v11 = v7;
  v11[1] = a2;
  v12 = *(v10 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
LABEL_19:
    result = sub_1BF17BA9C();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v14;
  }

  return result;
}

unint64_t sub_1BF1710EC(unint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1BF170458(v6 + 1);
      goto LABEL_10;
    }

    if (v7 <= v6)
    {
      sub_1BF172514(v6 + 1);
LABEL_10:
      v12 = *v3;
      result = sub_1BF17BB5C();
      v13 = ~(-1 << *(v12 + 32));
      while (1)
      {
        a2 = result & v13;
        if (((*(v12 + 56 + (((result & v13) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v13)) & 1) == 0)
        {
          goto LABEL_7;
        }

        if (*(*(v12 + 48) + 8 * a2) == v5)
        {
          goto LABEL_15;
        }

        result = a2 + 1;
      }
    }

    result = sub_1BF171B30();
  }

LABEL_7:
  v8 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v8 + 48) + 8 * a2) = v5;
  v9 = *(v8 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
LABEL_15:
    result = sub_1BF17BA9C();
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v11;
  }

  return result;
}

uint64_t sub_1BF1711F0(uint64_t a1, unint64_t a2, char a3)
{
  v24 = a1;
  v6 = sub_1BF17923C();
  v7 = *(v6 - 8);
  v9.n128_f64[0] = MEMORY[0x1EEE9AC00](v6, v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(*v3 + 16);
  v13 = *(*v3 + 24);
  if (v13 <= v12 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1BF170688(v12 + 1);
      goto LABEL_8;
    }

    if (v13 <= v12)
    {
      sub_1BF17270C(v12 + 1);
LABEL_8:
      v23 = v3;
      v14 = *v3;
      sub_1BEFE7314(&qword_1ED8ED690, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
      v15 = sub_1BF179F1C();
      v16 = ~(-1 << *(v14 + 32));
      while (1)
      {
        a2 = v15 & v16;
        if (((*(v14 + 56 + (((v15 & v16) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v15 & v16)) & 1) == 0)
        {
          break;
        }

        (*(v7 + 16))(v11, *(v14 + 48) + *(v7 + 72) * a2, v6);
        sub_1BEFE7314(&qword_1ED8EACE8, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC8]);
        v17 = sub_1BF17A05C();
        (*(v7 + 8))(v11, v6);
        if (v17)
        {
          goto LABEL_16;
        }

        v15 = a2 + 1;
      }

      v3 = v23;
      goto LABEL_13;
    }

    sub_1BF171F84();
  }

LABEL_13:
  v18 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v7 + 32))(*(v18 + 48) + *(v7 + 72) * a2, v24, v6, v9);
  v20 = *(v18 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (v21)
  {
    __break(1u);
LABEL_16:
    result = sub_1BF17BA9C();
    __break(1u);
  }

  else
  {
    *(v18 + 16) = v22;
  }

  return result;
}

unint64_t sub_1BF1714A4(unint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1BF1709D4(v6 + 1);
      goto LABEL_10;
    }

    if (v7 <= v6)
    {
      sub_1BF172A18(v6 + 1);
LABEL_10:
      v12 = *v3;
      sub_1BF17BB6C();
      MEMORY[0x1BFB53950](v5);
      result = sub_1BF17BB9C();
      v13 = ~(-1 << *(v12 + 32));
      while (1)
      {
        a2 = result & v13;
        if (((*(v12 + 56 + (((result & v13) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v13)) & 1) == 0)
        {
          goto LABEL_7;
        }

        if (*(*(v12 + 48) + 8 * a2) == v5)
        {
          goto LABEL_15;
        }

        result = a2 + 1;
      }
    }

    result = sub_1BF171C7C();
  }

LABEL_7:
  v8 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v8 + 48) + 8 * a2) = v5;
  v9 = *(v8 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
LABEL_15:
    result = sub_1BF17BA9C();
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v11;
  }

  return result;
}

uint64_t sub_1BF1715DC(uint64_t a1, unint64_t a2, char a3)
{
  v24 = a1;
  v6 = sub_1BF1794FC();
  v7 = *(v6 - 8);
  v9.n128_f64[0] = MEMORY[0x1EEE9AC00](v6, v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(*v3 + 16);
  v13 = *(*v3 + 24);
  if (v13 <= v12 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1BF170C38(v12 + 1);
      goto LABEL_8;
    }

    if (v13 <= v12)
    {
      sub_1BF172C4C(v12 + 1);
LABEL_8:
      v23 = v3;
      v14 = *v3;
      sub_1BEFE7314(qword_1ED8F0138, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      v15 = sub_1BF179F1C();
      v16 = ~(-1 << *(v14 + 32));
      while (1)
      {
        a2 = v15 & v16;
        if (((*(v14 + 56 + (((v15 & v16) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v15 & v16)) & 1) == 0)
        {
          break;
        }

        (*(v7 + 16))(v11, *(v14 + 48) + *(v7 + 72) * a2, v6);
        sub_1BEFE7314(&qword_1ED8F0130, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
        v17 = sub_1BF17A05C();
        (*(v7 + 8))(v11, v6);
        if (v17)
        {
          goto LABEL_16;
        }

        v15 = a2 + 1;
      }

      v3 = v23;
      goto LABEL_13;
    }

    sub_1BF171F84();
  }

LABEL_13:
  v18 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v7 + 32))(*(v18 + 48) + *(v7 + 72) * a2, v24, v6, v9);
  v20 = *(v18 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (v21)
  {
    __break(1u);
LABEL_16:
    result = sub_1BF17BA9C();
    __break(1u);
  }

  else
  {
    *(v18 + 16) = v22;
  }

  return result;
}

void sub_1BF171890(unint64_t *a1, uint64_t (*a2)(void), uint64_t a3)
{
  v4 = v3;
  sub_1BF037594(0, a1, a2, a3);
  v5 = *v3;
  v6 = sub_1BF17B16C();
  if (v5[2])
  {
    OUTLINED_FUNCTION_24_15();
    v9 = (v8 + 63) >> 6;
    if (v6 != v5 || v7 >= &v5[v9 + 7])
    {
      memmove(v7, v5 + 7, 8 * v9);
    }

    v11 = 0;
    *(v6 + 16) = v5[2];
    OUTLINED_FUNCTION_24_15();
    OUTLINED_FUNCTION_34_6();
    v14 = v13 & v12;
    v16 = (v15 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_15:
        v21 = v17 | (v11 << 6);
        v22 = (v5[6] + 16 * v21);
        v23 = v22[1];
        v24 = (*(v6 + 48) + 16 * v21);
        *v24 = *v22;
        v24[1] = v23;
        _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
      }

      while (v14);
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {
        goto LABEL_17;
      }

      ++v18;
      if (v5[v11 + 7])
      {
        OUTLINED_FUNCTION_6_43();
        v14 = v20 & v19;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    *v4 = v6;
  }
}

void *sub_1BF1719CC()
{
  v1 = v0;
  sub_1BF173080(0, &qword_1ED8EE9A8, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v2 = *v0;
  v3 = sub_1BF17B16C();
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
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + 16 * v17);
        *v20 = *v18;
        v20[1] = v19;
        result = _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
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

void *sub_1BF171B30()
{
  v1 = v0;
  sub_1BF173080(0, &qword_1EBDCC9F0, MEMORY[0x1E69E6810], MEMORY[0x1E69E6820]);
  v2 = *v0;
  v3 = sub_1BF17B16C();
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
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

void *sub_1BF171C7C()
{
  v1 = v0;
  sub_1BF037594(0, &qword_1EBDCC9E0, sub_1BF0A84D8, &type metadata for XPCClass);
  v2 = *v0;
  v3 = sub_1BF17B16C();
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
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

void sub_1BF171DD4()
{
  v1 = v0;
  sub_1BF037594(0, &qword_1ED8EAE18, sub_1BF0378F8, &type metadata for BackgroundFetchTrigger);
  v2 = *v0;
  v3 = sub_1BF17B16C();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
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
        v17 = 5 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + 8 * v17);
        v19 = *v18;
        v20 = v18[1];
        v21 = v18[2];
        v22 = v18[3];
        v23 = v18[4];
        v24 = (*(v4 + 48) + 8 * v17);
        *v24 = *v18;
        v24[1] = v20;
        v24[2] = v21;
        v24[3] = v22;
        v24[4] = v23;
        sub_1BF027218(v19, v20, v21, v22, v23);
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
}

void sub_1BF171F84()
{
  OUTLINED_FUNCTION_32();
  v2 = v1;
  v3 = v0;
  v5 = v4(0);
  OUTLINED_FUNCTION_1();
  v7 = v6;
  v10 = MEMORY[0x1EEE9AC00](v8, v9);
  v12 = &v30 - v11;
  v2(0, v10);
  v13 = *v0;
  v14 = sub_1BF17B16C();
  if (v13[2])
  {
    v31 = v3;
    OUTLINED_FUNCTION_24_15();
    v17 = (v16 + 63) >> 6;
    if (v14 != v13 || v15 >= &v13[v17 + 7])
    {
      memmove(v15, v13 + 7, 8 * v17);
    }

    v19 = 0;
    *(v14 + 16) = v13[2];
    OUTLINED_FUNCTION_24_15();
    OUTLINED_FUNCTION_34_6();
    v22 = v21 & v20;
    v24 = (v23 + 63) >> 6;
    v32 = v7 + 32;
    v33 = v7 + 16;
    if ((v21 & v20) != 0)
    {
      do
      {
        OUTLINED_FUNCTION_7_35();
LABEL_15:
        v29 = *(v7 + 72) * (v25 | (v19 << 6));
        (*(v7 + 16))(v12, v13[6] + v29, v5);
        (*(v7 + 32))(*(v14 + 48) + v29, v12, v5);
      }

      while (v22);
    }

    v26 = v19;
    while (1)
    {
      v19 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        break;
      }

      if (v19 >= v24)
      {

        v3 = v31;
        goto LABEL_19;
      }

      ++v26;
      if (v13[v19 + 7])
      {
        OUTLINED_FUNCTION_6_43();
        v22 = v28 & v27;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_19:
    *v3 = v14;
    OUTLINED_FUNCTION_26_2();
  }
}

void sub_1BF172174(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  OUTLINED_FUNCTION_133();
  OUTLINED_FUNCTION_19_17(v34, v35, v36, v37);
  v38 = sub_1BF17B17C();
  if (*(v31 + 16))
  {
    v39 = 0;
    OUTLINED_FUNCTION_3_53();
    if (v33)
    {
      while (1)
      {
        OUTLINED_FUNCTION_7_35();
LABEL_9:
        v44 = (*(v31 + 48) + 16 * (v40 | (v39 << 6)));
        v45 = *v44;
        v46 = v44[1];
        sub_1BF17BB6C();
        _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
        sub_1BF179F3C();
        sub_1BF17BB9C();
        OUTLINED_FUNCTION_13_28();
        if (v47)
        {
          break;
        }

        OUTLINED_FUNCTION_38_4();
LABEL_18:
        OUTLINED_FUNCTION_9_32(v48);
        *v53 = v45;
        v53[1] = v46;
        ++*(v38 + 16);
        if (!v33)
        {
          goto LABEL_4;
        }
      }

      OUTLINED_FUNCTION_37_5();
      while (++v49 != v51 || (v50 & 1) == 0)
      {
        v52 = v49 == v51;
        if (v49 == v51)
        {
          v49 = 0;
        }

        v50 |= v52;
        if (v30[v49] != -1)
        {
          OUTLINED_FUNCTION_35_7();
          goto LABEL_18;
        }
      }
    }

    else
    {
LABEL_4:
      v41 = v39;
      while (1)
      {
        v39 = v41 + 1;
        if (__OFADD__(v41, 1))
        {
          break;
        }

        if (v39 >= v32)
        {
          goto LABEL_20;
        }

        ++v41;
        if (*(v31 + 56 + 8 * v39))
        {
          OUTLINED_FUNCTION_6_43();
          v33 = v43 & v42;
          goto LABEL_9;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
LABEL_20:

    *v30 = v38;
    OUTLINED_FUNCTION_132();
  }
}

uint64_t sub_1BF1722D4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1BF173080(0, &qword_1ED8EE9A8, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  result = sub_1BF17B17C();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    if (v9)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_12:
        v15 = (*(v3 + 48) + 16 * (v12 | (v6 << 6)));
        v16 = *v15;
        v17 = v15[1];
        sub_1BF17BB6C();
        _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
        sub_1BF179F3C();
        result = sub_1BF17BB9C();
        v18 = -1 << *(v5 + 32);
        v19 = result & ~v18;
        v20 = v19 >> 6;
        if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
        {
          break;
        }

        v21 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v11 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
        v26 = (*(v5 + 48) + 16 * v21);
        *v26 = v16;
        v26[1] = v17;
        ++*(v5 + 16);
        if (!v9)
        {
          goto LABEL_7;
        }
      }

      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v11 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v13 = v6;
      while (1)
      {
        v6 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v6 >= v10)
        {

          v2 = v1;
          goto LABEL_25;
        }

        v14 = *(v3 + 56 + 8 * v6);
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v9 = (v14 - 1) & v14;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_1BF172514(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1BF173080(0, &qword_1EBDCC9F0, MEMORY[0x1E69E6810], MEMORY[0x1E69E6820]);
  result = sub_1BF17B17C();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    if (v9)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_12:
        v15 = *(*(v3 + 48) + 8 * (v12 | (v6 << 6)));
        result = sub_1BF17BB5C();
        v16 = -1 << *(v5 + 32);
        v17 = result & ~v16;
        v18 = v17 >> 6;
        if (((-1 << v17) & ~*(v11 + 8 * (v17 >> 6))) == 0)
        {
          break;
        }

        v19 = __clz(__rbit64((-1 << v17) & ~*(v11 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v11 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
        *(*(v5 + 48) + 8 * v19) = v15;
        ++*(v5 + 16);
        if (!v9)
        {
          goto LABEL_7;
        }
      }

      v20 = 0;
      v21 = (63 - v16) >> 6;
      while (++v18 != v21 || (v20 & 1) == 0)
      {
        v22 = v18 == v21;
        if (v18 == v21)
        {
          v18 = 0;
        }

        v20 |= v22;
        v23 = *(v11 + 8 * v18);
        if (v23 != -1)
        {
          v19 = __clz(__rbit64(~v23)) + (v18 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v13 = v6;
      while (1)
      {
        v6 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v6 >= v10)
        {
          goto LABEL_23;
        }

        v14 = *(v3 + 56 + 8 * v6);
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v9 = (v14 - 1) & v14;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
LABEL_23:

    *v2 = v5;
  }

  return result;
}

uint64_t sub_1BF17270C(uint64_t a1)
{
  v2 = v1;
  v34 = sub_1BF17923C();
  v3 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34, v4);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  sub_1BF172FEC(0);
  v8 = sub_1BF17B17C();
  result = v7;
  if (*(v7 + 16))
  {
    v29 = v1;
    v10 = 0;
    v11 = v7 + 56;
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 56);
    v15 = (v12 + 63) >> 6;
    v32 = v3 + 16;
    v33 = v3;
    v16 = v8 + 56;
    v30 = (v3 + 32);
    v31 = result;
    if (v14)
    {
      while (1)
      {
        v17 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_12:
        v20 = *(v33 + 72);
        (*(v33 + 16))(v6, *(result + 48) + v20 * (v17 | (v10 << 6)), v34);
        sub_1BEFE7314(&qword_1ED8ED690, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
        result = sub_1BF179F1C();
        v21 = -1 << *(v8 + 32);
        v22 = result & ~v21;
        v23 = v22 >> 6;
        if (((-1 << v22) & ~*(v16 + 8 * (v22 >> 6))) == 0)
        {
          break;
        }

        v24 = __clz(__rbit64((-1 << v22) & ~*(v16 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v16 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
        (*v30)(*(v8 + 48) + v24 * v20, v6, v34);
        ++*(v8 + 16);
        result = v31;
        if (!v14)
        {
          goto LABEL_7;
        }
      }

      v25 = 0;
      v26 = (63 - v21) >> 6;
      while (++v23 != v26 || (v25 & 1) == 0)
      {
        v27 = v23 == v26;
        if (v23 == v26)
        {
          v23 = 0;
        }

        v25 |= v27;
        v28 = *(v16 + 8 * v23);
        if (v28 != -1)
        {
          v24 = __clz(__rbit64(~v28)) + (v23 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v18 = v10;
      while (1)
      {
        v10 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          break;
        }

        if (v10 >= v15)
        {

          v2 = v29;
          goto LABEL_25;
        }

        v19 = *(v11 + 8 * v10);
        ++v18;
        if (v19)
        {
          v17 = __clz(__rbit64(v19));
          v14 = (v19 - 1) & v19;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v8;
  }

  return result;
}

uint64_t sub_1BF172A18(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1BF037594(0, &qword_1EBDCC9E0, sub_1BF0A84D8, &type metadata for XPCClass);
  result = sub_1BF17B17C();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    if (v9)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_12:
        v15 = *(*(v3 + 48) + 8 * (v12 | (v6 << 6)));
        sub_1BF17BB6C();
        MEMORY[0x1BFB53950](v15);
        result = sub_1BF17BB9C();
        v16 = -1 << *(v5 + 32);
        v17 = result & ~v16;
        v18 = v17 >> 6;
        if (((-1 << v17) & ~*(v11 + 8 * (v17 >> 6))) == 0)
        {
          break;
        }

        v19 = __clz(__rbit64((-1 << v17) & ~*(v11 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v11 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
        *(*(v5 + 48) + 8 * v19) = v15;
        ++*(v5 + 16);
        if (!v9)
        {
          goto LABEL_7;
        }
      }

      v20 = 0;
      v21 = (63 - v16) >> 6;
      while (++v18 != v21 || (v20 & 1) == 0)
      {
        v22 = v18 == v21;
        if (v18 == v21)
        {
          v18 = 0;
        }

        v20 |= v22;
        v23 = *(v11 + 8 * v18);
        if (v23 != -1)
        {
          v19 = __clz(__rbit64(~v23)) + (v18 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v13 = v6;
      while (1)
      {
        v6 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v6 >= v10)
        {

          v2 = v1;
          goto LABEL_25;
        }

        v14 = *(v3 + 56 + 8 * v6);
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v9 = (v14 - 1) & v14;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_1BF172C4C(uint64_t a1)
{
  v2 = v1;
  v34 = sub_1BF1794FC();
  v3 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34, v4);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  sub_1BF172F58(0);
  v8 = sub_1BF17B17C();
  result = v7;
  if (*(v7 + 16))
  {
    v29 = v1;
    v10 = 0;
    v11 = v7 + 56;
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 56);
    v15 = (v12 + 63) >> 6;
    v32 = v3 + 16;
    v33 = v3;
    v16 = v8 + 56;
    v30 = (v3 + 32);
    v31 = result;
    if (v14)
    {
      while (1)
      {
        v17 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_12:
        v20 = *(v33 + 72);
        (*(v33 + 16))(v6, *(result + 48) + v20 * (v17 | (v10 << 6)), v34);
        sub_1BEFE7314(qword_1ED8F0138, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
        result = sub_1BF179F1C();
        v21 = -1 << *(v8 + 32);
        v22 = result & ~v21;
        v23 = v22 >> 6;
        if (((-1 << v22) & ~*(v16 + 8 * (v22 >> 6))) == 0)
        {
          break;
        }

        v24 = __clz(__rbit64((-1 << v22) & ~*(v16 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v16 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
        (*v30)(*(v8 + 48) + v24 * v20, v6, v34);
        ++*(v8 + 16);
        result = v31;
        if (!v14)
        {
          goto LABEL_7;
        }
      }

      v25 = 0;
      v26 = (63 - v21) >> 6;
      while (++v23 != v26 || (v25 & 1) == 0)
      {
        v27 = v23 == v26;
        if (v23 == v26)
        {
          v23 = 0;
        }

        v25 |= v27;
        v28 = *(v16 + 8 * v23);
        if (v28 != -1)
        {
          v24 = __clz(__rbit64(~v28)) + (v23 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v18 = v10;
      while (1)
      {
        v10 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          break;
        }

        if (v10 >= v15)
        {

          v2 = v29;
          goto LABEL_25;
        }

        v19 = *(v11 + 8 * v10);
        ++v18;
        if (v19)
        {
          v17 = __clz(__rbit64(v19));
          v14 = (v19 - 1) & v19;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v8;
  }

  return result;
}

void sub_1BF172F58(uint64_t a1)
{
  if (!qword_1EBDCC9D8)
  {
    sub_1BF1794FC();
    sub_1BEFE7314(qword_1ED8F0138, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
    v1 = sub_1BF17B19C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBDCC9D8);
    }
  }
}

void sub_1BF172FEC(uint64_t a1)
{
  if (!qword_1EBDCC9E8)
  {
    sub_1BF17923C();
    sub_1BEFE7314(&qword_1ED8ED690, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
    v1 = sub_1BF17B19C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBDCC9E8);
    }
  }
}

void sub_1BF173080(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  if (!*a2)
  {
    v5 = sub_1BF17B19C();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

Swift::Void __swiftcall DeferredPromise.cancel()()
{
  if (*(v0 + 24))
  {

    sub_1BF094280();
  }

  *(v0 + 24) = 0;
}

void OnlyOnceDeferredPromise.reject(_:)()
{
  UnfairLock.lock()();
  if (*(v0 + 24))
  {

    sub_1BF02E758();

    OUTLINED_FUNCTION_6_44();
  }

  sub_1BF02075C(v0);
}

void OnlyOnceDeferredPromise.tryResolve(_:)(void (*a1)(uint64_t), uint64_t a2)
{
  v4 = *(*v2 + 80);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v7 = &v9 - v6;
  UnfairLock.lock()();
  if (v2[3])
  {

    a1(v8);
    sub_1BF014F34();

    (*(v5 + 8))(v7, v4);
    OUTLINED_FUNCTION_6_44();
    sub_1BF02075C(v2);
  }

  else
  {

    sub_1BF02075C(v2);
  }
}

uint64_t OnlyOnceDeferredPromise.resolveAsyncWithEagerCancellation()(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = *v1;
  return MEMORY[0x1EEE6DFA0](sub_1BF05A158, 0, 0);
}

uint64_t sub_1BF17335C()
{
  OUTLINED_FUNCTION_5();
  v2 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v3 = v2;
  *(v4 + 48) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1BF173484, 0, 0);
  }

  else
  {
    v5 = *(v2 + 8);

    return v5();
  }
}

uint64_t sub_1BF17349C()
{
  OUTLINED_FUNCTION_5();
  v2 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v3 = v2;
  *(v2 + 72) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1BF1735CC, 0, 0);
  }

  else
  {

    v4 = *(v2 + 8);

    return v4();
  }
}

uint64_t sub_1BF1735CC()
{
  OUTLINED_FUNCTION_5();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1BF17362C()
{
  OUTLINED_FUNCTION_5();
  v1 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t DiagnosticText.description.getter()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v22 = MEMORY[0x1E69E7CC0];
    sub_1BF00DD60();
    v3 = v22;
    v4 = v1 + 32;
    do
    {
      sub_1BF174338(v4, v21);
      sub_1BF174370(v21, v17);
      if (v20)
      {
        *&v16[0] = 91;
        *(&v16[0] + 1) = 0xE100000000000000;
        MEMORY[0x1BFB52000](v17[0], v17[1]);

        MEMORY[0x1BFB52000](93, 0xE100000000000000);
        v6 = *(&v16[0] + 1);
        v5 = *&v16[0];
      }

      else
      {
        v16[0] = v18;
        v16[1] = v19;
        OUTLINED_FUNCTION_2_70();
        MEMORY[0x1BFB52000]();

        MEMORY[0x1BFB52000](2618, 0xE200000000000000);
        sub_1BF1743D8(v16, &v13);
        if (v14)
        {
          sub_1BEFE87B0(&v13, v15);
        }

        else
        {
          v15[3] = MEMORY[0x1E69E6158];
          v15[4] = MEMORY[0x1E69E61C8];
          v15[0] = 2960685;
          v15[1] = 0xE300000000000000;
        }

        sub_1BEFE6EA8(0, &qword_1EBDCCA00, MEMORY[0x1E69E6F68]);
        sub_1BF17B40C();
        __swift_destroy_boxed_opaque_existential_1(v15);
        v5 = v15[5];
        v6 = v15[6];
        sub_1BF1744A4(v16);
      }

      sub_1BF1743A8(v21);
      v22 = v3;
      v7 = *(v3 + 16);
      if (v7 >= *(v3 + 24) >> 1)
      {
        sub_1BF00DD60();
        v3 = v22;
      }

      *(v3 + 16) = v7 + 1;
      v8 = v3 + 16 * v7;
      *(v8 + 32) = v5;
      *(v8 + 40) = v6;
      v4 += 64;
      --v2;
    }

    while (v2);
  }

  v21[0] = v3;
  sub_1BF02027C();
  OUTLINED_FUNCTION_0_90();
  sub_1BF1745A8(v9, v10, MEMORY[0x1E69E6310]);
  v11 = sub_1BF179F7C();

  return v11;
}

uint64_t sub_1BF1739D4(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1BF175324();
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_1BF174818(v6);
  *a1 = v2;
  return result;
}

uint64_t DiagnosticTextEntry.description.getter()
{
  sub_1BF174370(v0, v7);
  if (v10)
  {
    *(&v6[0] + 1) = 0xE100000000000000;
    MEMORY[0x1BFB52000](v7[0], v7[1]);

    MEMORY[0x1BFB52000](93, 0xE100000000000000);
    return 91;
  }

  else
  {
    v6[0] = v8;
    v6[1] = v9;
    OUTLINED_FUNCTION_2_70();
    MEMORY[0x1BFB52000]();

    MEMORY[0x1BFB52000](2618, 0xE200000000000000);
    sub_1BF1743D8(v6, &v3);
    if (v4)
    {
      sub_1BEFE87B0(&v3, v5);
    }

    else
    {
      v5[3] = MEMORY[0x1E69E6158];
      v5[4] = MEMORY[0x1E69E61C8];
      v5[0] = 2960685;
      v5[1] = 0xE300000000000000;
    }

    sub_1BEFE6EA8(0, &qword_1EBDCCA00, MEMORY[0x1E69E6F68]);
    sub_1BF17B40C();
    __swift_destroy_boxed_opaque_existential_1(v5);
    v1 = v5[5];
    sub_1BF1744A4(v6);
  }

  return v1;
}

uint64_t DiagnosticTextEntry.init(_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = result;
  *(a3 + 8) = a2;
  *(a3 + 56) = 1;
  return result;
}

__n128 DiagnosticTextEntry.init(_:value:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = a1;
  *(a4 + 8) = a2;
  result = *a3;
  v5 = *(a3 + 16);
  *(a4 + 16) = *a3;
  *(a4 + 32) = v5;
  *(a4 + 48) = *(a3 + 32);
  *(a4 + 56) = 0;
  return result;
}

uint64_t DiagnosticTextEntry.init<A>(_:list:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *a6 = a1;
  *(a6 + 8) = a2;
  v20 = a3;
  v19[2] = a4;
  v19[3] = a5;
  v7 = sub_1BF17A65C();
  WitnessTable = swift_getWitnessTable();
  v9 = MEMORY[0x1E69E6158];
  v11 = sub_1BEFF5EDC(sub_1BF174500, v19, v7, MEMORY[0x1E69E6158], MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v10);

  v20 = v11;
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  sub_1BF1739D4(&v20);

  sub_1BF02027C();
  OUTLINED_FUNCTION_0_90();
  sub_1BF1745A8(v12, v13, MEMORY[0x1E69E6310]);
  v14 = sub_1BF179F7C();
  v16 = v15;

  v18 = MEMORY[0x1E69E61C8];
  *(a6 + 40) = v9;
  *(a6 + 48) = v18;
  *(a6 + 16) = v14;
  *(a6 + 24) = v16;
  *(a6 + 56) = 0;
  return result;
}

uint64_t sub_1BF173D28@<X0>(void *a4@<X8>)
{
  MEMORY[0x1BFB52000](547520738, 0xA400000000000000);
  result = sub_1BF17B81C();
  *a4 = 0;
  a4[1] = 0xE000000000000000;
  return result;
}

uint64_t DiagnosticTextEntry.init<A>(_:list:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  *a7 = a1;
  *(a7 + 8) = a2;
  v21 = a3;
  v20[2] = a4;
  v20[3] = a5;
  v20[4] = a6;
  v8 = sub_1BF17A9AC();
  WitnessTable = swift_getWitnessTable();
  v10 = MEMORY[0x1E69E6158];
  v12 = sub_1BEFF5EDC(sub_1BF174520, v20, v8, MEMORY[0x1E69E6158], MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v11);

  v21 = v12;
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  sub_1BF1739D4(&v21);

  sub_1BF02027C();
  OUTLINED_FUNCTION_0_90();
  sub_1BF1745A8(v13, v14, MEMORY[0x1E69E6310]);
  v15 = sub_1BF179F7C();
  v17 = v16;

  v19 = MEMORY[0x1E69E61C8];
  *(a7 + 40) = v10;
  *(a7 + 48) = v19;
  *(a7 + 16) = v15;
  *(a7 + 24) = v17;
  *(a7 + 56) = 0;
  return result;
}

uint64_t DiagnosticTextEntry.init<A>(_:json:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v32[1] = a5;
  v33 = a1;
  v34 = a2;
  v9 = sub_1BF17A12C();
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v32[0] = v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1BF178CEC();
  MEMORY[0x1EEE9AC00](v12, v13);
  sub_1BF178D3C();
  swift_allocObject();
  _s13TeaFoundation16ReferenceEncoderCACycfc_0();
  v14 = MEMORY[0x1E6967F78];
  sub_1BF174544(0, &qword_1EBDCBB00, MEMORY[0x1E6967F78], MEMORY[0x1E69E6F90]);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1BF1805A0;
  sub_1BF178CCC();
  sub_1BF178CBC();
  v16 = a3;
  v17 = a4;
  sub_1BF178CDC();
  v35 = v15;
  sub_1BF1745A8(&qword_1EBDCBB08, MEMORY[0x1E6967F78], MEMORY[0x1E6967F88]);
  sub_1BF174544(0, &qword_1EBDCBB10, v14, MEMORY[0x1E69E62F8]);
  sub_1BF1745F0();
  sub_1BF17B0BC();
  sub_1BF178CFC();
  v18 = sub_1BF178D0C();
  v20 = v19;
  v22 = v33;
  v21 = v34;
  sub_1BF17A10C();
  v23 = sub_1BF17A0CC();
  v25 = v24;
  if (v24)
  {
    v26 = v23;
    sub_1BF014E18(v18, v20);

    OUTLINED_FUNCTION_1_69();
    result = (*(v27 + 8))(v16, v17);
    v29 = MEMORY[0x1E69E61C8];
    v30 = MEMORY[0x1E69E6158];
  }

  else
  {
    OUTLINED_FUNCTION_1_69();
    (*(v31 + 8))(v16, v17);
    sub_1BF014E18(v18, v20);

    v26 = 0;
    v30 = 0;
    v29 = 0;
  }

  *a6 = v22;
  *(a6 + 8) = v21;
  *(a6 + 16) = v26;
  *(a6 + 24) = v25;
  *(a6 + 32) = 0;
  *(a6 + 40) = v30;
  *(a6 + 48) = v29;
  *(a6 + 56) = 0;
  return result;
}

uint64_t sub_1BF1743D8(uint64_t a1, uint64_t a2)
{
  sub_1BF17443C(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1BF17443C(uint64_t a1)
{
  if (!qword_1EBDCC9F8)
  {
    sub_1BEFE6EA8(255, &qword_1EBDCCA00, MEMORY[0x1E69E6F68]);
    v1 = sub_1BF17AE6C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBDCC9F8);
    }
  }
}

uint64_t sub_1BF1744A4(uint64_t a1)
{
  sub_1BF17443C(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1BF174544(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1BF1745A8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1BF1745F0()
{
  result = qword_1EBDCBB18;
  if (!qword_1EBDCBB18)
  {
    sub_1BF174544(255, &qword_1EBDCBB10, MEMORY[0x1E6967F78], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDCBB18);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_s23CustomStringConvertible_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1BF1746AC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 57))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 56);
      if (v3 <= 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1BF1746EC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *(result + 56) = -a2;
    }
  }

  return result;
}

uint64_t sub_1BF174750(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 57))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 56);
  if (v3 >= 2)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1BF17478C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 41) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *(result + 56) = -a2;
    }
  }

  return result;
}

uint64_t sub_1BF1747DC(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *(result + 48) = 0;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 56) = a2;
  return result;
}

uint64_t sub_1BF174818(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1BF17B6DC();
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
        v6 = sub_1BF17A57C();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_1BF1749D4(v7, v8, a1, v4);
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
    return sub_1BF17490C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1BF17490C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
    while (2)
    {
      v9 = (v6 + 16 * v4);
      result = *v9;
      v10 = v9[1];
      v11 = v8;
      v12 = v7;
      do
      {
        if (result == *(v12 - 2) && v10 == *(v12 - 1))
        {
          break;
        }

        result = sub_1BF17B86C();
        if ((result & 1) == 0)
        {
          break;
        }

        if (!v6)
        {
          __break(1u);
          return result;
        }

        result = *v12;
        v10 = v12[1];
        *v12 = *(v12 - 1);
        *(v12 - 1) = v10;
        *(v12 - 2) = result;
        v12 -= 2;
      }

      while (!__CFADD__(v11++, 1));
      ++v4;
      v7 += 16;
      --v8;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_1BF1749D4(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v91 = MEMORY[0x1E69E7CC0];
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v9 = v7;
      v10 = v7 + 1;
      if (v7 + 1 < v6)
      {
        v11 = (*a3 + 16 * v10);
        v12 = (*a3 + 16 * v7);
        if (*v11 == *v12 && v11[1] == v12[1])
        {
          v14 = 0;
        }

        else
        {
          v14 = sub_1BF17B86C();
        }

        v10 = v9 + 2;
        v15 = 16 * v9;
        v16 = v12 + 5;
        while (v10 < v6)
        {
          if (*(v16 - 1) == *(v16 - 3) && *v16 == *(v16 - 2))
          {
            if (v14)
            {
              goto LABEL_21;
            }
          }

          else if ((v14 ^ sub_1BF17B86C()))
          {
            break;
          }

          ++v10;
          v16 += 2;
        }

        if ((v14 & 1) == 0)
        {
          goto LABEL_28;
        }

LABEL_21:
        if (v10 < v9)
        {
          goto LABEL_121;
        }

        if (v9 < v10)
        {
          v18 = 16 * v10;
          v19 = v10;
          v20 = v9;
          do
          {
            if (v20 != --v19)
            {
              v21 = *a3;
              if (!*a3)
              {
                goto LABEL_126;
              }

              v22 = (v21 + v15);
              v23 = v21 + v18;
              v24 = *v22;
              v25 = v22[1];
              *v22 = *(v23 - 16);
              *(v23 - 16) = v24;
              *(v23 - 8) = v25;
            }

            ++v20;
            v18 -= 16;
            v15 += 16;
          }

          while (v20 < v19);
        }
      }

LABEL_28:
      v26 = a3[1];
      if (v10 < v26)
      {
        if (__OFSUB__(v10, v9))
        {
          goto LABEL_120;
        }

        if (v10 - v9 < a4)
        {
          if (__OFADD__(v9, a4))
          {
            goto LABEL_122;
          }

          if (v9 + a4 >= v26)
          {
            v27 = a3[1];
          }

          else
          {
            v27 = v9 + a4;
          }

          if (v27 < v9)
          {
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
            return;
          }

          if (v10 != v27)
          {
            v86 = v5;
            v88 = v9;
            v28 = *a3;
            v29 = *a3 + 16 * v10;
            v30 = v9 - v10;
            do
            {
              v31 = v10;
              v32 = (v28 + 16 * v10);
              v33 = *v32;
              v34 = v32[1];
              v35 = v30;
              v36 = v29;
              do
              {
                v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
                if (v37 || (sub_1BF17B86C() & 1) == 0)
                {
                  break;
                }

                if (!v28)
                {
                  goto LABEL_124;
                }

                v33 = *v36;
                v34 = v36[1];
                *v36 = *(v36 - 1);
                *(v36 - 1) = v34;
                *(v36 - 2) = v33;
                v36 -= 2;
              }

              while (!__CFADD__(v35++, 1));
              v10 = v31 + 1;
              v29 += 16;
              --v30;
            }

            while (v31 + 1 != v27);
            v10 = v27;
            v5 = v86;
            v9 = v88;
          }
        }
      }

      if (v10 < v9)
      {
        goto LABEL_119;
      }

      v87 = v10;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1BF0A6798();
        v8 = v82;
      }

      v39 = v8[2];
      v40 = v39 + 1;
      if (v39 >= v8[3] >> 1)
      {
        sub_1BF0A6798();
        v8 = v83;
      }

      v8[2] = v40;
      v41 = v8 + 4;
      v42 = &v8[2 * v39 + 4];
      *v42 = v9;
      v42[1] = v87;
      v89 = *a1;
      if (!*a1)
      {
        goto LABEL_127;
      }

      if (v39)
      {
        while (1)
        {
          v43 = v40 - 1;
          v44 = &v41[2 * v40 - 2];
          v45 = &v8[2 * v40];
          if (v40 >= 4)
          {
            break;
          }

          if (v40 == 3)
          {
            v46 = v8[4];
            v47 = v8[5];
            v56 = __OFSUB__(v47, v46);
            v48 = v47 - v46;
            v49 = v56;
LABEL_69:
            if (v49)
            {
              goto LABEL_109;
            }

            v61 = *v45;
            v60 = v45[1];
            v62 = __OFSUB__(v60, v61);
            v63 = v60 - v61;
            v64 = v62;
            if (v62)
            {
              goto LABEL_112;
            }

            v65 = v44[1];
            v66 = v65 - *v44;
            if (__OFSUB__(v65, *v44))
            {
              goto LABEL_115;
            }

            if (__OFADD__(v63, v66))
            {
              goto LABEL_117;
            }

            if (v63 + v66 >= v48)
            {
              if (v48 < v66)
              {
                v43 = v40 - 2;
              }

              goto LABEL_91;
            }

            goto LABEL_84;
          }

          if (v40 < 2)
          {
            goto LABEL_111;
          }

          v68 = *v45;
          v67 = v45[1];
          v56 = __OFSUB__(v67, v68);
          v63 = v67 - v68;
          v64 = v56;
LABEL_84:
          if (v64)
          {
            goto LABEL_114;
          }

          v70 = *v44;
          v69 = v44[1];
          v56 = __OFSUB__(v69, v70);
          v71 = v69 - v70;
          if (v56)
          {
            goto LABEL_116;
          }

          if (v71 < v63)
          {
            goto LABEL_98;
          }

LABEL_91:
          if (v43 - 1 >= v40)
          {
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
LABEL_121:
            __break(1u);
LABEL_122:
            __break(1u);
            goto LABEL_123;
          }

          if (!*a3)
          {
            goto LABEL_125;
          }

          v75 = &v41[2 * v43 - 2];
          v76 = *v75;
          v77 = &v41[2 * v43];
          v78 = v77[1];
          sub_1BF175008((*a3 + 16 * *v75), (*a3 + 16 * *v77), (*a3 + 16 * v78), v89);
          if (v5)
          {
            goto LABEL_102;
          }

          if (v78 < v76)
          {
            goto LABEL_104;
          }

          v79 = v8;
          v80 = v8[2];
          if (v43 > v80)
          {
            goto LABEL_105;
          }

          *v75 = v76;
          v75[1] = v78;
          if (v43 >= v80)
          {
            goto LABEL_106;
          }

          v40 = v80 - 1;
          memmove(&v41[2 * v43], v77 + 2, 16 * (v80 - 1 - v43));
          v79[2] = v80 - 1;
          v81 = v80 > 2;
          v8 = v79;
          if (!v81)
          {
            goto LABEL_98;
          }
        }

        v50 = &v41[2 * v40];
        v51 = *(v50 - 8);
        v52 = *(v50 - 7);
        v56 = __OFSUB__(v52, v51);
        v53 = v52 - v51;
        if (v56)
        {
          goto LABEL_107;
        }

        v55 = *(v50 - 6);
        v54 = *(v50 - 5);
        v56 = __OFSUB__(v54, v55);
        v48 = v54 - v55;
        v49 = v56;
        if (v56)
        {
          goto LABEL_108;
        }

        v57 = v45[1];
        v58 = v57 - *v45;
        if (__OFSUB__(v57, *v45))
        {
          goto LABEL_110;
        }

        v56 = __OFADD__(v48, v58);
        v59 = v48 + v58;
        if (v56)
        {
          goto LABEL_113;
        }

        if (v59 >= v53)
        {
          v73 = *v44;
          v72 = v44[1];
          v56 = __OFSUB__(v72, v73);
          v74 = v72 - v73;
          if (v56)
          {
            goto LABEL_118;
          }

          if (v48 < v74)
          {
            v43 = v40 - 2;
          }

          goto LABEL_91;
        }

        goto LABEL_69;
      }

LABEL_98:
      v6 = a3[1];
      v7 = v87;
      if (v87 >= v6)
      {
        v91 = v8;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_128;
  }

  sub_1BF174EDC(&v91, *a1, a3);
LABEL_102:
}

uint64_t sub_1BF174EDC(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v5 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_1BF1751AC(v5);
    v5 = result;
  }

  v14 = v4;
  *v4 = v5;
  v7 = (v5 + 16);
  for (i = *(v5 + 16); ; *v7 = i)
  {
    v4 = (i - 2);
    if (i < 2)
    {
LABEL_10:
      *v14 = v5;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v9 = (v5 + 16 * i);
    v10 = *v9;
    v11 = &v7[2 * i];
    v12 = v11[1];
    sub_1BF175008((*a3 + 16 * *v9), (*a3 + 16 * *v11), (*a3 + 16 * v12), a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v12 < v10)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (v4 >= *v7)
    {
      goto LABEL_12;
    }

    *v9 = v10;
    v9[1] = v12;
    v13 = *v7 - i;
    if (*v7 < i)
    {
      goto LABEL_13;
    }

    i = *v7 - 1;
    result = memmove(v11, v11 + 2, 16 * v13);
  }

  *v14 = v5;
  __break(1u);
  return result;
}

uint64_t sub_1BF175008(char *a1, char *a2, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 16;
  v9 = (a3 - a2) / 16;
  if (v8 < v9)
  {
    sub_1BEFFA194(a1, (a2 - a1) / 16, a4);
    v10 = &v4[16 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_36;
      }

      v12 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (v12 || (sub_1BF17B86C() & 1) == 0)
      {
        break;
      }

      v13 = v6;
      v12 = v7 == v6;
      v6 += 16;
      if (!v12)
      {
        goto LABEL_16;
      }

LABEL_17:
      v7 += 16;
    }

    v13 = v4;
    v12 = v7 == v4;
    v4 += 16;
    if (v12)
    {
      goto LABEL_17;
    }

LABEL_16:
    *v7 = *v13;
    goto LABEL_17;
  }

  sub_1BEFFA194(a2, (a3 - a2) / 16, a4);
  v10 = &v4[16 * v9];
LABEL_19:
  v14 = v6 - 16;
  for (v5 -= 16; v10 > v4 && v6 > v7; v5 -= 16)
  {
    v16 = *(v10 - 2) == *(v6 - 2) && *(v10 - 1) == *(v6 - 1);
    if (!v16 && (sub_1BF17B86C() & 1) != 0)
    {
      v12 = v5 + 16 == v6;
      v6 -= 16;
      if (!v12)
      {
        *v5 = *v14;
        v6 = v14;
      }

      goto LABEL_19;
    }

    if (v10 != v5 + 16)
    {
      *v5 = *(v10 - 1);
    }

    v10 -= 16;
  }

LABEL_36:
  v17 = (v10 - v4) / 16;
  if (v6 != v4 || v6 >= &v4[16 * v17])
  {
    memmove(v6, v4, 16 * v17);
  }

  return 1;
}

char *sub_1BF1751C0(char *__src, uint64_t a2, char *__dst)
{
  if (__dst != __src || &__src[16 * a2] <= __dst)
  {
    return memmove(__dst, __src, 16 * a2);
  }

  return __src;
}

char *sub_1BF1751EC(char *result, int64_t a2, char a3, char *a4)
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
    sub_1BF174544(0, &qword_1EBDCB988, sub_1BF036A78, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 16 * v8);
  }

  return v10;
}

uint64_t sub_1BF17533C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = sub_1BF1794AC();
  OUTLINED_FUNCTION_12();
  v12 = *(v11 + 32);
  v12(a5, a1, v10);
  v15 = type metadata accessor for SignpostReport(0, a4, v13, v14);
  result = (v12)(a5 + *(v15 + 28), a2, v10);
  *(a5 + *(v15 + 32)) = a3;
  return result;
}

uint64_t SignpostReport.startDate.getter@<X0>(uint64_t a1@<X8>)
{
  sub_1BF1794AC();
  OUTLINED_FUNCTION_12();
  v5 = *(v4 + 16);

  return v5(a1, v1, v3);
}

uint64_t SignpostReport.endDate.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 28);
  sub_1BF1794AC();
  OUTLINED_FUNCTION_12();
  v7 = *(v6 + 16);

  return v7(a2, v2 + v4, v5);
}

uint64_t SignpostReport.shortDescription.getter@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1BF07CD5C(0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BF17E820;
  strcpy((inited + 32), "timeInterval");
  *(inited + 45) = 0;
  *(inited + 46) = -5120;
  v6 = SignpostReport.timeInterval.getter();
  v7 = MEMORY[0x1E69E63B0];
  *(inited + 48) = v6;
  *(inited + 72) = v7;
  *(inited + 80) = 0x73656972746E65;
  *(inited + 88) = 0xE700000000000000;
  v8 = *(v2 + *(a1 + 32));
  type metadata accessor for SignpostEntry(255, *(a1 + 16), v9, v10);
  *(inited + 120) = sub_1BF17A65C();
  *(inited + 96) = v8;
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  v11 = sub_1BF179DAC();
  a2[3] = type metadata accessor for ShortDescription(0, a1, v12, v13);
  a2[4] = &protocol witness table for ShortDescription<A>;
  return ShortDescription.init(name:_:)(0x74726F706552, 0xE600000000000000, v11, a2);
}

uint64_t sub_1BF175630(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1BF17566C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return ShortDescribable.description.getter(a1, WitnessTable);
}

uint64_t sub_1BF1756C0(uint64_t a1)
{
  result = sub_1BF1794AC();
  if (v5 <= 0x3F)
  {
    type metadata accessor for SignpostEntry(255, *(a1 + 16), v3, v4);
    result = sub_1BF17A65C();
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1BF175794(char a1)
{
  sub_1BF17BB6C();
  sub_1BF0995B4(v3, a1);
  return sub_1BF17BB9C();
}

uint64_t sub_1BF175818(char a1)
{
  sub_1BF17BB6C();
  sub_1BF0C795C(a1);
  OUTLINED_FUNCTION_0_91();
  sub_1BF179F3C();

  return sub_1BF17BB9C();
}

uint64_t sub_1BF175884()
{
  sub_1BF17BB6C();
  sub_1BF179F3C();
  return sub_1BF17BB9C();
}

uint64_t sub_1BF1758DC(uint64_t a1)
{
  sub_1BF17BB6C();
  MEMORY[0x1BFB53950](a1);
  return sub_1BF17BB9C();
}

uint64_t sub_1BF175924(uint64_t a1, uint64_t a2)
{
  sub_1BF17BB6C();
  MEMORY[0x1BFB53950](a2);
  return sub_1BF17BB9C();
}

uint64_t sub_1BF175968()
{
  OUTLINED_FUNCTION_3_54();
  sub_1BF0995B4(v2, v0);
  return sub_1BF17BB9C();
}

uint64_t sub_1BF1759A4()
{
  OUTLINED_FUNCTION_3_54();
  sub_1BF179F3C();

  return sub_1BF17BB9C();
}

uint64_t sub_1BF175A00()
{
  v1 = OUTLINED_FUNCTION_3_54();
  if (v0)
  {
    if (v0 == 1)
    {
      v3 = 0xD000000000000012;
    }

    else
    {
      v3 = 0x75614C7265746661;
    }
  }

  else
  {
    v3 = 0xD000000000000013;
  }

  OUTLINED_FUNCTION_10_37(v1, v3, v2);

  return sub_1BF17BB9C();
}

uint64_t sub_1BF175AA8(uint64_t a1)
{
  sub_1BF17BB6C();
  sub_1BF179F3C();
  return sub_1BF17BB9C();
}

uint64_t sub_1BF175AFC()
{
  v1 = OUTLINED_FUNCTION_3_54();
  if (v0)
  {
    v3 = 0x656E6961746E6F63;
  }

  else
  {
    v3 = 1701869940;
  }

  OUTLINED_FUNCTION_10_37(v1, v3, v2);

  return sub_1BF17BB9C();
}

uint64_t sub_1BF175B68()
{
  v1 = OUTLINED_FUNCTION_3_54();
  if (v0)
  {
    v3 = 0x697463656C6C6F63;
  }

  else
  {
    v3 = 0x7463656A626FLL;
  }

  OUTLINED_FUNCTION_10_37(v1, v3, v2);

  return sub_1BF17BB9C();
}

uint64_t sub_1BF175BD8()
{
  OUTLINED_FUNCTION_3_54();
  sub_1BF179F3C();

  return sub_1BF17BB9C();
}

uint64_t sub_1BF175C34()
{
  OUTLINED_FUNCTION_3_54();
  sub_1BF0C795C(v0);
  OUTLINED_FUNCTION_0_91();
  sub_1BF179F3C();

  return sub_1BF17BB9C();
}

uint64_t sub_1BF175C7C(uint64_t a1)
{
  sub_1BF17BB6C();
  JSONPointer.rawValue.getter();
  OUTLINED_FUNCTION_0_91();
  sub_1BF179F3C();

  return sub_1BF17BB9C();
}

uint64_t ReferenceEncodingPool.__allocating_init()()
{
  OUTLINED_FUNCTION_0_1();
  result = swift_allocObject();
  v1 = MEMORY[0x1E69E7CC0];
  *(result + 16) = MEMORY[0x1E69E7CC8];
  *(result + 24) = v1;
  return result;
}

uint64_t sub_1BF175DD8(uint64_t result, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  if (*(a3 + 16))
  {
    v6 = result;
    v8 = *a2;
    v7 = a2[1];
    OUTLINED_FUNCTION_8_38(result, a2);
    sub_1BF04FEBC(v8, v7, *(v4 + 16));
    swift_endAccess();
    v9 = OUTLINED_FUNCTION_9_33();
    v10 = sub_1BF176068(v9);
    OUTLINED_FUNCTION_5_50(v10, v11);
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_4_45();
    sub_1BF082AF0();
    *(v4 + 16) = v12;
    swift_endAccess();
    return sub_1BF175F88(v6, a4);
  }

  return result;
}

uint64_t ReferenceEncodingPool.init()()
{
  result = v0;
  v2 = MEMORY[0x1E69E7CC0];
  *(v0 + 16) = MEMORY[0x1E69E7CC8];
  *(v0 + 24) = v2;
  return result;
}

uint64_t ReferenceEncodingPool.values.getter()
{
  OUTLINED_FUNCTION_31();
  swift_beginAccess();
  return _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
}

uint64_t ReferenceEncodingPool.values.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 24) = a1;
}

uint64_t sub_1BF175F88(uint64_t result, uint64_t a2)
{
  if (a2 != MEMORY[0x1E69E7CA8] + 8)
  {
    v3 = v2;
    v5 = result;
    v10 = a2;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v9);
    (*(*(a2 - 8) + 16))(boxed_opaque_existential_0, v5, a2);
    swift_beginAccess();
    sub_1BF071B84();
    v7 = *(*(v3 + 24) + 16);
    sub_1BF071DC0(v7);
    v8 = *(v3 + 24);
    *(v8 + 16) = v7 + 1;
    sub_1BEFF9A40(&v9, (v8 + 32 * v7 + 32));
    *(v3 + 24) = v8;
    return swift_endAccess();
  }

  return result;
}

uint64_t ReferenceEncodingPool.encode(to:)(void *a1)
{
  v2 = v1;
  sub_1BF046F9C(0, &qword_1ED8E9B78, MEMORY[0x1E69E6F58]);
  v5 = v4;
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v13 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BF047630();
  sub_1BF17BC1C();
  OUTLINED_FUNCTION_31();
  swift_beginAccess();
  v13 = *(v2 + 16);
  sub_1BF047F9C(0);
  sub_1BF176720();
  sub_1BF17B69C();
  return (*(v7 + 8))(v11, v5);
}

BOOL sub_1BF176284@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1BF06D764(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_1BF1762B8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1BF048480();
  *a1 = result;
  a1[1] = v3;
  return result;
}

BOOL sub_1BF1762E0@<W0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BF06D764(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BF17630C(uint64_t a1)
{
  v2 = sub_1BF047630();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF176348(uint64_t a1)
{
  v2 = sub_1BF047630();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t ReferenceEncodingPool.description.getter()
{
  sub_1BF17B1EC();

  OUTLINED_FUNCTION_31();
  swift_beginAccess();
  sub_1BF04801C();
  sub_1BF0264F8();
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  v0 = sub_1BF179D6C();
  v2 = v1;

  MEMORY[0x1BFB52000](v0, v2);

  MEMORY[0x1BFB52000](41, 0xE100000000000000);
  return 0xD000000000000016;
}

const void *sub_1BF1764E8(uint64_t a1, uint64_t a2)
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

  sub_1BF048F48(0, &qword_1EBDCB2E8, &type metadata for JSONDifference.Change);
  v3 = swift_allocObject();
  v4 = _swift_stdlib_malloc_size(v3);
  OUTLINED_FUNCTION_7_36(v4);
  return v3;
}

const void *sub_1BF1765CC(uint64_t a1, uint64_t a2)
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

  sub_1BEFF11E8(0, &qword_1EBDCB2F0, sub_1BF070F64);
  v3 = swift_allocObject();
  v4 = _swift_stdlib_malloc_size(v3);
  OUTLINED_FUNCTION_7_36(v4);
  return v3;
}

void *sub_1BF176654(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  if (!a2)
  {
    v6 = 0;
    goto LABEL_12;
  }

  v6 = a3;
  if (!a3)
  {
LABEL_12:
    *v5 = a4;
    v5[1] = v6;
    return v6;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v7 = a2;
    v8 = 0;
    v9 = *(a4 + 16);
    v10 = a3 - 1;
    for (i = (a4 + 64); ; i += 40)
    {
      if (v9 == v8)
      {
        v6 = v9;
        goto LABEL_12;
      }

      if (v8 >= *(a4 + 16))
      {
        break;
      }

      v12 = *(i - 4);
      v13 = *(i - 3);
      v14 = *(i - 2);
      v15 = *(i - 1);
      v16 = *i;
      *v7 = v12;
      *(v7 + 8) = v13;
      *(v7 + 16) = v14;
      *(v7 + 24) = v15;
      *(v7 + 32) = v16;
      if (v10 == v8)
      {
        sub_1BF0CB03C(v12, v13, v14, v15, v16);
        goto LABEL_12;
      }

      v7 += 40;
      result = sub_1BF0CB03C(v12, v13, v14, v15, v16);
      ++v8;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_1BF176720()
{
  result = qword_1ED8E9C90;
  if (!qword_1ED8E9C90)
  {
    sub_1BF047F9C(255);
    sub_1BF0D5440();
    sub_1BF048418(&unk_1ED8E9C18, MEMORY[0x1E69E6160], MEMORY[0x1E69E64F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8E9C90);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ReferenceEncodingPool.CodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_1BF1768A0()
{
  result = qword_1EBDCCA08;
  if (!qword_1EBDCCA08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDCCA08);
  }

  return result;
}

unint64_t sub_1BF1768F4(void *a1, char *a2, unint64_t a3, uint64_t a4)
{
  sub_1BF17923C();
  OUTLINED_FUNCTION_1();
  v44 = v8;
  v45 = v9;
  MEMORY[0x1EEE9AC00](v8, v10);
  v43 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14.n128_f64[0] = MEMORY[0x1EEE9AC00](v12, v13);
  v42 = &v35 - v15;
  v17 = a4 + 64;
  v16 = *(a4 + 64);
  v41 = -1 << *(a4 + 32);
  if (-v41 < 64)
  {
    v18 = ~(-1 << -v41);
  }

  else
  {
    v18 = -1;
  }

  v19 = v18 & v16;
  if (!a2)
  {
    v22 = 0;
    result = 0;
LABEL_22:
    v34 = ~v41;
    *a1 = a4;
    a1[1] = v17;
    a1[2] = v34;
    a1[3] = v22;
    a1[4] = v19;
    return result;
  }

  result = a3;
  if (!a3)
  {
    v22 = 0;
    goto LABEL_22;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v36 = a1;
    v37 = a4 + 64;
    v21 = 0;
    v22 = 0;
    v23 = (63 - v41) >> 6;
    v38 = v45 + 32;
    v39 = v45 + 16;
    v40 = result;
    while (v21 < result)
    {
      if (__OFADD__(v21, 1))
      {
        goto LABEL_26;
      }

      if (!v19)
      {
        v17 = v37;
        while (1)
        {
          v24 = v22 + 1;
          if (__OFADD__(v22, 1))
          {
            break;
          }

          if (v24 >= v23)
          {
            v19 = 0;
            result = v21;
            a1 = v36;
            goto LABEL_22;
          }

          v19 = *(v37 + 8 * v24);
          ++v22;
          if (v19)
          {
            v46 = v21 + 1;
            goto LABEL_17;
          }
        }

        __break(1u);
        break;
      }

      v46 = v21 + 1;
      v24 = v22;
LABEL_17:
      v25 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
      v26 = a4;
      v27 = *(a4 + 48);
      v29 = v44;
      v28 = v45;
      v30 = *(v45 + 72);
      v31 = v43;
      (*(v45 + 16))(v43, v27 + v30 * (v25 | (v24 << 6)), v44, v14);
      v32 = *(v28 + 32);
      v33 = v42;
      v32(v42, v31, v29);
      v32(a2, v33, v29);
      result = v40;
      v21 = v46;
      if (v46 == v40)
      {
        v22 = v24;
        a1 = v36;
        v17 = v37;
        a4 = v26;
        goto LABEL_22;
      }

      a2 += v30;
      v22 = v24;
      a4 = v26;
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_1BF176B80(void *result, void *a2, unint64_t a3, uint64_t a4)
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
    v13 = 0;
    v10 = 0;
LABEL_21:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v13;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v13 = 0;
    goto LABEL_21;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    v12 = 0;
    v13 = 0;
    v21 = -1 << *(a4 + 32);
    v14 = (63 - v7) >> 6;
    while (1)
    {
      if (v12 >= v10)
      {
        goto LABEL_24;
      }

      v15 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_25;
      }

      if (!v9)
      {
        while (1)
        {
          v16 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v16 >= v14)
          {
            v9 = 0;
            v10 = v12;
            goto LABEL_19;
          }

          v9 = *(v6 + 8 * v16);
          ++v13;
          if (v9)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      v16 = v13;
LABEL_15:
      v17 = __clz(__rbit64(v9)) | (v16 << 6);
      v18 = (*(a4 + 48) + 16 * v17);
      v19 = v18[1];
      v20 = *(*(a4 + 56) + 8 * v17);
      v9 &= v9 - 1;
      *v11 = *v18;
      v11[1] = v19;
      v11[2] = v20;
      if (v15 == v10)
      {
        break;
      }

      v11 += 3;
      _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
      result = sub_1BF01716C(v20);
      v12 = v15;
      v13 = v16;
    }

    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    sub_1BF01716C(v20);
    v13 = v16;
LABEL_19:
    v7 = v21;
    goto LABEL_21;
  }

LABEL_26:
  __break(1u);
  return result;
}

_BYTE *storeEnumTagSinglePayload for DeserializerError(_BYTE *result, int a2, int a3)
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

unint64_t sub_1BF176DB0()
{
  result = qword_1EBDCCA10;
  if (!qword_1EBDCCA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDCCA10);
  }

  return result;
}

uint64_t StateMachine.state.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  OUTLINED_FUNCTION_3_5((v1 + 2), v8);
  v4 = v1[2];
  v5 = *(*v4 + 96);
  OUTLINED_FUNCTION_3_5(v4 + v5, &v7);
  return (*(*(*(v3 + 80) - 8) + 16))(a1, v4 + v5);
}

uint64_t sub_1BF176EB4(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1, a1);
  v3 = &v6 - v2;
  (*(v4 + 16))(&v6 - v2, v1);
  return sub_1BF176F74(v3);
}

uint64_t sub_1BF176F74(uint64_t a1)
{
  v3 = *(*v1 + 80);
  OUTLINED_FUNCTION_2_3();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v12[-v8 - 8];
  OUTLINED_FUNCTION_3_5(v1 + 16, v12);
  (*(v5 + 16))(v9, a1, v3);

  ObservableProperty.wrappedValue.setter(v9);

  return (*(v5 + 8))(a1, v3);
}

uint64_t sub_1BF1770B8@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  swift_beginAccess();
  v4 = v1[5];
  v5 = *(*v4 + 96);
  swift_beginAccess();
  return (*(*(*(v3 + 80) - 8) + 16))(a1, v4 + v5);
}

uint64_t sub_1BF177178(uint64_t a1, uint64_t a2)
{
  v4 = *(*v2 + 80);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v7 = &v9 - v6;
  swift_beginAccess();
  (*(v5 + 16))(v7, a1, v4);

  ObservableProperty.wrappedValue.setter(v7);

  return (*(v5 + 8))(a1, v4);
}

uint64_t StateMachine.__allocating_init(state:)(uint64_t a1)
{
  OUTLINED_FUNCTION_97();
  v2 = swift_allocObject();
  StateMachine.init(state:)(a1);
  return v2;
}

uint64_t StateMachine.__allocating_init(state:log:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_97();
  v4 = swift_allocObject();
  StateMachine.init(state:log:)(a1, a2);
  return v4;
}

uint64_t StateMachine.fire(event:)(uint64_t a1)
{
  v2 = v1;
  v97 = a1;
  OUTLINED_FUNCTION_1_37();
  v4 = v3;
  v6 = *(v5 + 80);
  OUTLINED_FUNCTION_2_3();
  v103 = v7;
  MEMORY[0x1EEE9AC00](v8, v9);
  OUTLINED_FUNCTION_1_16();
  v91 = v10;
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v87 - v13;
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v87 - v17;
  v19 = sub_1BF179C5C();
  OUTLINED_FUNCTION_2_3();
  v21 = v20;
  MEMORY[0x1EEE9AC00](v22, v23);
  OUTLINED_FUNCTION_2_0();
  v26 = (v25 - v24);
  sub_1BEFF9AF8(0, &qword_1ED8F0BD8, 0x1E69E9610);
  *v26 = sub_1BF17AD5C();
  (*(v21 + 104))(v26, *MEMORY[0x1E69E8020], v19);
  v27 = sub_1BF179C8C();
  result = (*(v21 + 8))(v26, v19);
  if ((v27 & 1) == 0)
  {
    __break(1u);
    return result;
  }

  v90 = v14;
  v30 = *(v4 + 88);
  v29 = *(v4 + 96);
  (*(v29 + 24))(v30, v29);
  StateMachine.state.getter(v18);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v31 = sub_1BF17A98C();

  v32 = *(v103 + 8);
  v103 += 8;
  v32(v18, v6);
  v96 = v29;
  if ((v31 & 1) == 0)
  {
    v94 = *(v2 + 32);
    LODWORD(v93) = sub_1BF17ACBC();
    sub_1BF071C70(0);
    v44 = swift_allocObject();
    *(v44 + 16) = xmmword_1BF17E820;
    OUTLINED_FUNCTION_8_39();
    sub_1BF17B80C();
    v45 = v99;
    v46 = v100;
    *(v44 + 56) = MEMORY[0x1E69E6158];
    v47 = sub_1BF071CD8();
    *(v44 + 64) = v47;
    *(v44 + 32) = v45;
    *(v44 + 40) = v46;
    OUTLINED_FUNCTION_8_39();
    StateMachine.state.getter(v18);
    sub_1BF17B80C();
    v32(v18, v6);
    v48 = v99;
    v49 = v100;
    *(v44 + 96) = MEMORY[0x1E69E6158];
    *(v44 + 104) = v47;
    *(v44 + 72) = v48;
    *(v44 + 80) = v49;
    sub_1BF1797CC("State machine invalid state for event, event=%@, state=%@", 57, 2, &dword_1BEFE0000, v94, v93, v44);

    v99 = v6;
    v100 = v30;
    v50 = OUTLINED_FUNCTION_10_38();
    v51 = OUTLINED_FUNCTION_2_71(v50);
    OUTLINED_FUNCTION_11_27(v51);
    v53 = v52;
    v54 = *(swift_getTupleTypeMetadata2() + 48);
    (*(*(v30 - 8) + 16))(v53, v97, v30);
    StateMachine.state.getter(v53 + v54);
LABEL_12:
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }

  v88 = v18;
  v33 = v90;
  StateMachine.state.getter(v90);
  swift_beginAccess();
  v93 = v30;
  v94 = v2;
  v99 = v6;
  v100 = v30;
  v101 = AssociatedConformanceWitness;
  v102 = v29;
  type metadata accessor for StateMachineTransition(255, &v99);
  sub_1BF17A65C();
  sub_1BF179EAC();
  v34 = v99;
  swift_endAccess();
  v32(v33, v6);
  v89 = v32;
  if (!v34)
  {
    v34 = sub_1BF17A56C();
  }

  v35 = v97;
  v36 = *(v96 + 32);
  v37 = v91;
  v90 = (v96 + 32);
  v87 = v36;
  v36(v93);
  swift_beginAccess();
  sub_1BF179EAC();
  v38 = v98;
  swift_endAccess();
  v39 = v89(v37, v6);
  if (!v38)
  {
    v39 = sub_1BF17A56C();
    v38 = v39;
  }

  v99 = v38;
  MEMORY[0x1EEE9AC00](v39, v40);
  v91 = v6;
  v41 = v93;
  *(&v87 - 4) = v6;
  *(&v87 - 3) = v41;
  *(&v87 - 2) = v96;
  *(&v87 - 1) = v35;
  swift_getWitnessTable();
  v42 = v92;
  if ((sub_1BF17A37C() & 1) == 0)
  {

    v92 = *(v94 + 32);
    LODWORD(v90) = sub_1BF17ACBC();
    sub_1BF071C70(0);
    v55 = swift_allocObject();
    *(v55 + 16) = xmmword_1BF17E820;
    v99 = 0;
    v100 = 0xE000000000000000;
    sub_1BF17B80C();
    v56 = v99;
    v57 = v100;
    v58 = v41;
    v59 = MEMORY[0x1E69E6158];
    *(v55 + 56) = MEMORY[0x1E69E6158];
    v60 = sub_1BF071CD8();
    *(v55 + 64) = v60;
    *(v55 + 32) = v56;
    *(v55 + 40) = v57;
    v99 = 0;
    v100 = 0xE000000000000000;
    v61 = v88;
    StateMachine.state.getter(v88);
    v62 = v91;
    sub_1BF17B80C();
    v89(v61, v62);
    v63 = v99;
    v64 = v100;
    *(v55 + 96) = v59;
    *(v55 + 104) = v60;
    *(v55 + 72) = v63;
    *(v55 + 80) = v64;
    sub_1BF1797CC("State machine disallowed transition, event=%@, state=%@", 55, 2, &dword_1BEFE0000, v92, v90, v55);

    v99 = v62;
    v100 = v58;
    v65 = OUTLINED_FUNCTION_10_38();
    v66 = OUTLINED_FUNCTION_2_71(v65);
    OUTLINED_FUNCTION_11_27(v66);
    v68 = v67;
    v69 = *(swift_getTupleTypeMetadata2() + 48);
    (*(*(v58 - 8) + 16))(v68, v97, v58);
    StateMachine.state.getter(v68 + v69);
    goto LABEL_12;
  }

  v43 = v94;
  sub_1BF177DF8(v35, v34, v38);
  if (v42)
  {
  }

  else
  {
    AssociatedConformanceWitness = 0;
    v70 = v88;
    v87(v93, v96);
    sub_1BF176F74(v70);
    v96 = *(v43 + 32);
    sub_1BF071C70(0);
    v71 = swift_allocObject();
    *(v71 + 16) = xmmword_1BF17E820;
    OUTLINED_FUNCTION_8_39();
    sub_1BF17B80C();
    v73 = v99;
    v72 = v100;
    *(v71 + 56) = MEMORY[0x1E69E6158];
    v74 = sub_1BF071CD8();
    *(v71 + 64) = v74;
    *(v71 + 32) = v73;
    *(v71 + 40) = v72;
    OUTLINED_FUNCTION_8_39();
    v75 = v70;
    StateMachine.state.getter(v70);
    v76 = v91;
    sub_1BF17B80C();
    v89(v70, v76);
    v77 = v99;
    v78 = v100;
    *(v71 + 96) = MEMORY[0x1E69E6158];
    *(v71 + 104) = v74;
    *(v71 + 72) = v77;
    *(v71 + 80) = v78;
    v79 = sub_1BF17ACDC();
    sub_1BF1797CC("State machine did transition state, event=%@, state=%@", 54, 2, &dword_1BEFE0000, v96, v79, v71);

    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    v80 = sub_1BF17A4EC();

    v99 = v80;
    v81 = sub_1BF17A5AC();
    v82 = v97;
    if (v80 != v81)
    {
      do
      {
        v85 = sub_1BF17A58C();
        sub_1BF17A51C();
        if (v85)
        {
        }

        else
        {
          sub_1BF17B23C();
        }

        sub_1BF17A62C();
        sub_1BF0C0D64(v82);
      }

      while (v99 != sub_1BF17A5AC());
    }

    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    v83 = sub_1BF17A4EC();

    v99 = v83;
    while (v99 != sub_1BF17A5AC())
    {
      v86 = sub_1BF17A58C();
      sub_1BF17A51C();
      if (v86)
      {
      }

      else
      {
        sub_1BF17B23C();
      }

      sub_1BF17A62C();
      sub_1BF0C0C2C(v82);
    }

    StateMachine.state.getter(v75);
    return sub_1BF177178(v75, v84);
  }
}

uint64_t sub_1BF177DF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*v3 + 80);
  v7 = *(*v3 + 88);
  v8 = *(*v3 + 96);
  v18[0] = v6;
  v18[1] = v7;
  v18[2] = swift_getAssociatedConformanceWitness();
  v18[3] = v8;
  type metadata accessor for StateMachineTransition(0, v18);
  v18[4] = sub_1BF179CFC();
  v18[0] = sub_1BF179CFC();
  v16 = sub_1BF17A4EC();
  while (v16 != sub_1BF17A5AC())
  {
    v9 = sub_1BF17A58C();
    sub_1BF17A51C();
    if (v9)
    {
    }

    else
    {
      sub_1BF17B23C();
    }

    sub_1BF17A62C();
    sub_1BF0C0C98(a1);
    if (v4)
    {
LABEL_15:

      _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
      v11 = sub_1BF17A4EC();

      while (v11 != sub_1BF17A5AC())
      {
        v14 = sub_1BF17A58C();
        sub_1BF17A51C();
        if (v14)
        {
        }

        else
        {
          sub_1BF17B23C();
        }

        sub_1BF17A62C();
        sub_1BF0C0CF0(a1, v4);
      }

      _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
      v12 = sub_1BF17A4EC();

      while (v12 != sub_1BF17A5AC())
      {
        v15 = sub_1BF17A58C();
        sub_1BF17A51C();
        if (v15)
        {
        }

        else
        {
          sub_1BF17B23C();
        }

        sub_1BF17A62C();
        sub_1BF0C0BB8(a1, v4);
      }

      return swift_willThrow();
    }

    sub_1BF17A65C();
    sub_1BF17A5DC();
  }

  v17 = sub_1BF17A4EC();
  while (v17 != sub_1BF17A5AC())
  {
    v10 = sub_1BF17A58C();
    sub_1BF17A51C();
    if (v10)
    {
    }

    else
    {
      sub_1BF17B23C();
    }

    sub_1BF17A62C();
    sub_1BF0C0B60(a1);
    if (v4)
    {
      goto LABEL_15;
    }

    sub_1BF17A65C();
    sub_1BF17A5DC();
  }
}

uint64_t StateMachine.wait(for:)(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  OUTLINED_FUNCTION_1_37();
  v2[4] = v3;
  v2[5] = *(v4 + 80);
  OUTLINED_FUNCTION_2_3();
  v2[6] = v5;
  v2[7] = swift_task_alloc();
  v2[8] = sub_1BF17A75C();
  v2[9] = sub_1BF17A74C();
  v7 = sub_1BF17A6AC();
  v2[10] = v7;
  v2[11] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1BF178338, v7, v6);
}

uint64_t sub_1BF178338()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = *(v0 + 40);
  sub_1BF1770B8(v1);
  swift_getAssociatedConformanceWitness();
  v4 = sub_1BF17A98C();
  (*(v2 + 8))(v1, v3);
  if (v4)
  {

    v5 = *(v0 + 8);

    return v5();
  }

  else
  {
    v9 = *(v0 + 16);
    *(v0 + 96) = sub_1BF17A74C();
    v7 = swift_task_alloc();
    *(v0 + 104) = v7;
    v7[1] = vextq_s8(v9, v9, 8uLL);
    v8 = swift_task_alloc();
    *(v0 + 112) = v8;
    *v8 = v0;
    v8[1] = sub_1BF17850C;

    return MEMORY[0x1EEE6DDE0]();
  }
}

uint64_t sub_1BF17850C()
{
  v1 = *v0;

  v2 = *(v1 + 88);
  v3 = *(v1 + 80);

  return MEMORY[0x1EEE6DFA0](sub_1BF17866C, v3, v2);
}

uint64_t sub_1BF17866C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1BF1786D4(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v15 = *a2;
  v5 = v15;
  sub_1BF178A0C();
  v7 = v6;
  v8 = *(v6 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v6, v10);
  sub_1BF177294();
  (*(v8 + 16))(&v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v7);
  v11 = (*(v8 + 80) + 48) & ~*(v8 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = *(v15 + 80);
  *(v12 + 32) = *(v5 + 96);
  *(v12 + 40) = a3;
  (*(v8 + 32))(v12 + v11, &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  ObservableProperty.observeUntil(block:)(sub_1BF178A70, v12);
}

uint64_t sub_1BF17888C@<X0>(char *a6@<X8>)
{
  swift_getAssociatedConformanceWitness();
  result = sub_1BF17A98C();
  if (result)
  {
    sub_1BF178A0C();
    result = sub_1BF17A6CC();
    v8 = 1;
  }

  else
  {
    v8 = 0;
  }

  *a6 = v8;
  return result;
}

uint64_t StateMachine.deinit()
{

  return v0;
}

uint64_t StateMachine.__deallocating_deinit()
{
  StateMachine.deinit();
  v0 = OUTLINED_FUNCTION_97();

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

void sub_1BF178A0C()
{
  if (!qword_1EBDCCA18)
  {
    v0 = sub_1BF17A6DC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBDCCA18);
    }
  }
}

uint64_t sub_1BF178A70@<X0>(char *a2@<X8>)
{
  sub_1BF178A0C();

  return sub_1BF17888C(a2);
}

uint64_t sub_1BF178B10()
{

  return v0;
}

uint64_t sub_1BF178B50()
{
  sub_1BF178B10();

  return MEMORY[0x1EEE6BDC0](v0, 73, 7);
}

uint64_t sub_1BF178B84()
{
  v1 = *(*v0 + 16);
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  return v1;
}

CLLocationCoordinate2D CLLocationCoordinate2DMake(CLLocationDegrees latitude, CLLocationDegrees longitude)
{
  MEMORY[0x1EEDE89C8](latitude, longitude);
  result.longitude = v3;
  result.latitude = v2;
  return result;
}