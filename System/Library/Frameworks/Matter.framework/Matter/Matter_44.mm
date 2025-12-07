void *sub_2394BFD4C(void *a1)
{
  *a1 = &unk_284BBD118;
  sub_2394C0684(a1);
  return a1;
}

void sub_2394BFD90(void *a1)
{
  *a1 = &unk_284BBD118;
  sub_2394C0684(a1);

  JUMPOUT(0x23EE77B60);
}

uint64_t sub_2394BFDF4(uint64_t result)
{
  v1 = *(result + 48);
  if (v1)
  {
    v2 = result;
    v3 = 0;
    for (i = 0; i < v1; ++i)
    {
      v5 = *(v2 + 40) + v3;
      if (*(v5 + 72))
      {
        result = sub_2394BFE68(v2, v5, 0, 0, 0);
        v1 = *(v2 + 48);
      }

      v3 += 112;
    }
  }

  return result;
}

uint64_t sub_2394BFE68(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v17 = *MEMORY[0x277D85DE8];
  if (*(a2 + 48) != 5 && *(a2 + 72))
  {
    v9 = result;
    sub_2393E97D4(a2 + 8, __str, 0x4CuLL);
    v10 = sub_2393D9044(1u);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *&buf[4] = __str;
      _os_log_impl(&dword_238DAE000, v10, OS_LOG_TYPE_DEFAULT, "Closing connection with peer %s.", buf, 0xCu);
    }

    if (sub_2393D5398(2u))
    {
      sub_2393D5320(1, 2, "Closing connection with peer %s.", __str);
    }

    v11 = *(a2 + 72);
    if (a3)
    {
      sub_2393D1530(v11);
    }

    else
    {
      sub_2393D14D8(v11);
    }

    v13 = *(a2 + 48);
    *(a2 + 48) = 5;
    if (a5 == 1)
    {
      if (v13 == 3)
      {
        *buf = sub_2393E967C(a2, v12);
        (*(**(v9 + 8) + 32))(*(v9 + 8), buf, a3, a4);
        if (*buf)
        {
          sub_2393E9744(*buf, v14);
        }
      }

      else
      {
        (*(**(v9 + 8) + 40))(*(v9 + 8), a2, a3, a4);
      }
    }

    result = sub_2394C14C8(a2);
    --*(v9 + 32);
  }

  return result;
}

unint64_t sub_2394C0048(uint64_t a1, uint64_t a2)
{
  v18 = *MEMORY[0x277D85DE8];
  if (!*(a1 + 25))
  {
    *(a1 + 24) = *(a2 + 8);
    v6 = sub_2393D3604(*a2, (a1 + 16));
    v3 = HIDWORD(v6);
    v4 = v6;
    if (v6)
    {
      goto LABEL_13;
    }

    if (*(a2 + 16) == 1)
    {
      v7 = sub_2393D0E28(*(a1 + 16), *(a2 + 8), &xmmword_27DF7BD44, *(a2 + 10), *(a2 + 12) != 0);
      v4 = v7;
      if (v7)
      {
        v3 = HIDWORD(v7);
        goto LABEL_13;
      }

      *(*(a1 + 16) + 16) = a1;
      *(*(a1 + 16) + 72) = sub_2394C02BC;
      *(*(a1 + 16) + 80) = sub_2394C0590;
      v8 = sub_2393D0F20(*(a1 + 16));
      v3 = HIDWORD(v8);
      v4 = v8;
      if (v8)
      {
LABEL_13:
        if (!v4)
        {
          return v4 | (v3 << 32);
        }

        goto LABEL_14;
      }

      v9 = sub_2393D9044(1u);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = *(a2 + 10);
        *buf = 67109120;
        LODWORD(v17) = v10;
        _os_log_impl(&dword_238DAE000, v9, OS_LOG_TYPE_DEFAULT, "TCP server listening on port %d for incoming connections", buf, 8u);
      }

      if (sub_2393D5398(2u))
      {
        sub_2393D5320(1, 2, "TCP server listening on port %d for incoming connections", *(a2 + 10));
      }
    }

    *(a1 + 25) = 1;
    goto LABEL_13;
  }

  v3 = 95;
  v4 = 3;
LABEL_14:
  v11 = sub_2393D9044(1u);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    v12 = sub_2393C9138();
    *buf = 136315138;
    v17 = v12;
    _os_log_impl(&dword_238DAE000, v11, OS_LOG_TYPE_ERROR, "Failed to initialize TCP transport: %s", buf, 0xCu);
  }

  if (sub_2393D5398(1u))
  {
    v13 = sub_2393C9138();
    sub_2393D5320(1, 1, "Failed to initialize TCP transport: %s", v13);
  }

  v14 = *(a1 + 16);
  if (v14)
  {
    sub_2393D1550(v14);
    *(a1 + 16) = 0;
  }

  return v4 | (v3 << 32);
}

uint64_t sub_2394C02BC(uint64_t a1, void *a2, _DWORD *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 16);
  v15 = 0uLL;
  v16 = 0;
  v17 = 5540;
  v18 = 0;
  v19 = 0;
  v8 = sub_2394C16F4(a2, &v15);
  if (v8)
  {
    v9 = *(a1 + 80);

    return v9(a2, v8, v7);
  }

  else
  {
    v11 = sub_2394C06C0(v6, a2, &v15);
    if (v11)
    {
      v12 = v11;
      a2[2] = *(a1 + 16);
      a2[5] = sub_2394C1590;
      a2[6] = 0;
      a2[7] = sub_2394C1BA0;
      (*(*a2 + 24))(a2);
      ++*(v6 + 32);
      *(v12 + 48) = 4;
      (*(*a2 + 32))(a2, *(v12 + 64), *(v12 + 66));
      sub_2393CF6CC(a3, v22, 0x4Cu);
      v13 = sub_2393D9044(1u);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v21 = v22;
        _os_log_impl(&dword_238DAE000, v13, OS_LOG_TYPE_DEFAULT, "Incoming connection established with peer at %s.", buf, 0xCu);
      }

      if (sub_2393D5398(2u))
      {
        sub_2393D5320(1, 2, "Incoming connection established with peer at %s.", v22);
      }

      return (*(**(v6 + 8) + 24))(*(v6 + 8), v12);
    }

    else
    {
      v14 = sub_2393D9044(1u);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *v22 = 0;
        _os_log_impl(&dword_238DAE000, v14, OS_LOG_TYPE_ERROR, "Insufficient connection space to accept new connections.", v22, 2u);
      }

      if (sub_2393D5398(1u))
      {
        sub_2393D5320(1, 1, "Insufficient connection space to accept new connections.");
      }

      sub_2393D1550(a2);
      return (*(a1 + 80))(a2, 0x2A800000072, "src/transport/raw/TCP.cpp");
    }
  }
}

void sub_2394C0590(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  sub_2393D1550(a1);
  v1 = sub_2393D9044(1u);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    v4 = sub_2393C9138();
    _os_log_impl(&dword_238DAE000, v1, OS_LOG_TYPE_ERROR, "Accept error: %s", buf, 0xCu);
  }

  if (sub_2393D5398(1u))
  {
    v2 = sub_2393C9138();
    sub_2393D5320(1, 1, "Accept error: %s", v2);
  }
}

uint64_t sub_2394C0684(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    sub_2393D1550(v2);
    *(a1 + 16) = 0;
  }

  result = sub_2394BFDF4(a1);
  *(a1 + 25) = 0;
  return result;
}

uint64_t sub_2394C06C0(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v15[4] = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 48);
  for (i = 1; ; i = 0)
  {
    v8 = i;
    if (v6)
    {
      break;
    }

LABEL_11:
    if ((v8 & 1) == 0)
    {
      return 0;
    }
  }

  v9 = *(a1 + 40);
  while (*(v9 + 72))
  {
    v9 += 112;
    if (!--v6)
    {
      v10 = 0;
      v11 = 0;
      do
      {
        v12 = *(a1 + 40);
        if (v12)
        {
          v13 = sub_2393E967C((v12 + v10), a2);
          if (v13)
          {
            sub_2393E9744(v13, a2);
          }
        }

        ++v11;
        v6 = *(a1 + 48);
        v10 += 112;
      }

      while (v11 < v6);
      goto LABEL_11;
    }
  }

  if (*v9)
  {
    sub_23953615C();
  }

  v15[0] = &unk_284BBD210;
  v15[1] = a1;
  v15[3] = v15;
  sub_2394C07E8(v9, a2, a3, v15);
  sub_2394C24D8(v15);
  return v9;
}

void *sub_2394C07E8(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4)
{
  *(a1 + 72) = a2;
  v6 = *a3;
  *(a1 + 24) = *(a3 + 4);
  *(a1 + 8) = v6;
  *(a1 + 28) = *(a3 + 5);
  *(a1 + 32) = *(a3 + 3);
  v7 = *(a1 + 40);
  if (v7)
  {
    sub_2393D96C8(v7);
  }

  *(a1 + 40) = 0;
  *(a1 + 56) = 0;

  return sub_2394C1FA0((a1 + 80), a4);
}

uint64_t sub_2394C085C@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (*(a2 + 16) == 3)
  {
    v4 = result;
    if (*(result + 48))
    {
      v6 = 0;
      for (i = 0; i < *(v4 + 48); ++i)
      {
        v8 = *(v4 + 40);
        v9 = v8 + v6;
        if (*(v8 + v6 + 72))
        {
          result = sub_2394BF148(v9 + 8, a2);
          if (result)
          {
            v13 = 0;
            v11 = *(v9 + 72);
            if (!v11 || *(v8 + v6 + 48) != 4 || !(**v11)(v11, v14, &v13) || (v12 = sub_2394C097C(v4, v8 + v6), !v12))
            {
              result = sub_2393E967C((v8 + v6), v10);
              *a3 = result;
              return result;
            }

            result = sub_2394BFE68(v4, v8 + v6, v12, v10, 1);
          }
        }

        v6 += 112;
      }
    }
  }

  *a3 = 0;
  return result;
}

unint64_t sub_2394C097C(uint64_t a1, uint64_t a2)
{
  v12 = 0;
  v4 = sub_2393D3604(*(*(a1 + 16) + 24), &v12);
  v5 = v4;
  if (v4)
  {
    v6 = v4 & 0xFFFFFFFF00000000;
  }

  else
  {
    v7 = v12;
    *(v12 + 16) = a1;
    *(v7 + 32) = sub_2394C17C8;
    *(v7 + 116) = *(a1 + 28);
    v8 = *(a2 + 26);
    v11 = *(a2 + 28);
    v9 = sub_2393D0FE8(v7, a2 + 8, v8, &v11);
    v5 = v9;
    if (v9)
    {
      v6 = v9 & 0xFFFFFFFF00000000;
      sub_2393D1550(v7);
    }

    else
    {
      *(a2 + 48) = 3;
      sub_2393D1550(*(a2 + 72));
      v6 = 0;
      v5 = 0;
      *(a2 + 72) = v12;
    }
  }

  return v5 | v6;
}

uint64_t sub_2394C0A68(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  if (!v2)
  {
    return 0;
  }

  for (result = *(a1 + 40); ; result += 112)
  {
    v4 = *(result + 72);
    v5 = v4 != a2 || v4 == 0;
    if (!v5 && *(result + 48) == 4)
    {
      break;
    }

    if (!--v2)
    {
      return 0;
    }
  }

  return result;
}

_WORD *sub_2394C0AA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (a2 && (v4 = *(a1 + 48)) != 0)
  {
    v5 = *(a1 + 40);
    while (*(v5 + 72) != a2)
    {
      v5 += 112;
      if (!--v4)
      {
        goto LABEL_6;
      }
    }

    result = sub_2393E967C(v5, a2);
  }

  else
  {
LABEL_6:
    result = 0;
  }

  *a3 = result;
  return result;
}

uint64_t sub_2394C0AFC(uint64_t a1, void **a2)
{
  if (*(a1 + 25) == 1)
  {
    if (((*a2)[3] + 4) > 0xFA00)
    {
      v3 = 0xFC00000000;
      v4 = 47;
    }

    else if (sub_2393D9AD4(*a2, 4u))
    {
      sub_2393D9734(*a2, (*a2)[1] - 4);
      v3 = 0;
      v4 = 0;
      *(*a2)[1] = *(*a2 + 6) - 4;
    }

    else
    {
      v3 = 0xFF00000000;
      v4 = 11;
    }
  }

  else
  {
    v3 = 0xFA00000000;
    v4 = 3;
  }

  return v4 | v3;
}

unint64_t sub_2394C0BC0(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (*(a2 + 16) == 3)
  {
    v6 = sub_2394C0AFC(a1, a3);
    v7 = v6;
    if (v6)
    {
      v8 = v6 & 0xFFFFFFFF00000000;
    }

    else
    {
      sub_2394C085C(a1, a2, &v14);
      v10 = v14;
      if (v14)
      {
        v11 = *(v14 + 72);
        if (v11 && *(v14 + 48) == 4)
        {
          v12 = sub_2393D1118(v11, a3, 1);
        }

        else
        {
          v12 = sub_2394C0CBC(a1, &v14, a3);
        }

        v7 = v12;
        v8 = v12 & 0xFFFFFFFF00000000;
        sub_2393E9744(v10, v13);
      }

      else
      {
        v8 = 0x11000000000;
        v7 = 3;
      }
    }
  }

  else
  {
    v8 = 0x10B00000000;
    v7 = 47;
  }

  return v8 | v7;
}

uint64_t sub_2394C0CBC(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = *a2;
  if (!*a2)
  {
    return 0x16300000003;
  }

  v6 = v3 + 8;
  v12 = 0;
  v7 = *(a1 + 56);
  v11[0] = v3 + 8;
  v11[1] = &v12;
  v11[2] = a3;
  v13 = v11;
  (*(*v7 + 40))(v7, &v13, sub_2394C2558);
  if ((v12 & 1) != 0 || (*(**(a1 + 56) + 16))(*(a1 + 56), v6, a3))
  {
    v8 = 0;
    v9 = 0;
  }

  else
  {
    v8 = 0x17E00000000;
    v9 = 11;
  }

  return v9 | v8;
}

unint64_t sub_2394C0DC8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  if (*a2)
  {
    v6 = sub_2394C0AFC(a1, a3);
    if (!v6)
    {
      v7 = *(*a2 + 72);
      if (v7 && *(*a2 + 48) == 4)
      {
        v6 = sub_2393D1118(v7, a3, 1);
      }

      else
      {
        v6 = sub_2394C0CBC(a1, a2, a3);
      }
    }

    v8 = v6 & 0xFFFFFFFF00000000;
  }

  else
  {
    v8 = 0x11B00000000;
    LODWORD(v6) = 47;
  }

  return v8 | v6;
}

unint64_t sub_2394C0E68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v27 = 0;
  if (*a4)
  {
    sub_2393E9744(*a4, a2);
    *a4 = 0;
  }

  v8 = sub_2393D3604(*(*(a1 + 16) + 24), &v27);
  v9 = v8;
  if (!v8)
  {
    v11 = v27;
    *(v27 + 16) = a1;
    *(v11 + 32) = sub_2394C17C8;
    *(v11 + 116) = *(a1 + 28);
    sub_2394C085C(a1, a2, &v26);
    v13 = v26;
    if (v26)
    {
      if (a3)
      {
        if (*(v26 + 48) != 4 || *(v26 + 7))
        {
          v9 = 3;
          v10 = 315;
          goto LABEL_23;
        }

        *(v26 + 7) = a3;
      }

      if (*a4 != v13)
      {
        v22 = sub_2393E967C(v13, v12);
        if (*a4)
        {
          sub_2393E9744(*a4, v12);
        }

        *a4 = v22;
      }

      if (*(v13 + 48) != 4)
      {
        v9 = 0;
        v10 = 0;
        goto LABEL_28;
      }

      (*(**(a1 + 8) + 32))(*(a1 + 8), &v26, 0, 0);
      v10 = 0;
      v9 = 0;
      goto LABEL_23;
    }

    v14 = sub_2394C06C0(a1, v27, a2);
    if (!v14 || (v16 = sub_2393E967C(v14, v15)) == 0 || (v18 = v16, v26 = sub_2393E967C(v16, v17), sub_2393E9744(v18, v19), (v13 = v26) == 0))
    {
      v9 = 11;
      v10 = 329;
      goto LABEL_25;
    }

    *(v26 + 7) = a3;
    *(v13 + 48) = 3;
    v20 = *(a2 + 18);
    v25 = *(a2 + 20);
    v21 = sub_2393D0FE8(v27, a2, v20, &v25);
    v9 = v21;
    if (v21)
    {
      v10 = HIDWORD(v21);
      sub_2394C14C8(v13);
    }

    else
    {
      ++*(a1 + 32);
      if (*a4 == v13)
      {
        v9 = 0;
        v10 = 0;
        v11 = 0;
        goto LABEL_28;
      }

      v24 = sub_2393E967C(v13, v12);
      if (*a4)
      {
        sub_2393E9744(*a4, v12);
      }

      v11 = 0;
      v10 = 0;
      v9 = 0;
      *a4 = v24;
    }

LABEL_23:
    v13 = v26;
    if (!v26)
    {
      if (!v11)
      {
        return v9 | (v10 << 32);
      }

LABEL_25:
      sub_2393D1550(v11);
      return v9 | (v10 << 32);
    }

LABEL_28:
    sub_2393E9744(v13, v12);
    if (!v11)
    {
      return v9 | (v10 << 32);
    }

    goto LABEL_25;
  }

  v10 = HIDWORD(v8);
  return v9 | (v10 << 32);
}

uint64_t sub_2394C10F0(uint64_t result, uint64_t a2)
{
  *(a2 + 16) = result;
  *(a2 + 32) = sub_2394C17C8;
  *(a2 + 116) = *(result + 28);
  return result;
}

unint64_t sub_2394C1110(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 48);
  if (v4)
  {
    v6 = a1;
    v7 = *(a1 + 40);
    LODWORD(a1) = 172;
    while (1)
    {
      v8 = *(v7 + 72);
      v9 = v8 != a2 || v8 == 0;
      if (!v9 && *(v7 + 48) == 4)
      {
        break;
      }

      v7 += 112;
      if (!--v4)
      {
        v10 = 0x18B00000000;
        return a1 | v10;
      }
    }

    v12 = *(v7 + 40);
    if (v12)
    {
      sub_2393D982C(v12, a4);
    }

    else
    {
      *(v7 + 40) = *a4;
      *a4 = 0;
    }

    while (1)
    {
      a1 = *(v7 + 40);
      if (!a1)
      {
        v10 = 0;
        return a1 | v10;
      }

      a1 = sub_2393D9A20(a1, &__dst, 4uLL);
      if (a1)
      {
        break;
      }

      v13 = __dst;
      if (__dst >= 0xF9FC)
      {
        v15 = sub_2393D9044(1u);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109120;
          v18 = v13;
          _os_log_impl(&dword_238DAE000, v15, OS_LOG_TYPE_ERROR, "Received TCP message of length %u exceeds limit.", buf, 8u);
        }

        if (sub_2393D5398(1u))
        {
          sub_2393D5320(1, 1, "Received TCP message of length %u exceeds limit.", v13);
        }

        sub_2394BFE68(v6, v7, 0x1A000000004, "src/transport/raw/TCP.cpp", 1);
        v10 = 0x1A200000000;
        LODWORD(a1) = 4;
        return a1 | v10;
      }

      v14 = *(v7 + 40);
      if (*(v14 + 16) - 4 < __dst || (*(v7 + 40) = sub_2393D99AC(v14, 4uLL), !v13))
      {
        v10 = 0;
        LODWORD(a1) = 0;
        return a1 | v10;
      }

      a1 = sub_2394C1340(v6, a3, v7, v13);
      if (a1)
      {
        v10 = a1 & 0xFFFFFFFF00000000;
        return a1 | v10;
      }
    }

    v10 = a1 & 0xFFFFFFFF00000000;
    if (a1 == 25)
    {
      v10 = 0;
      LODWORD(a1) = 0;
    }
  }

  else
  {
    v10 = 0x18B00000000;
    LODWORD(a1) = 172;
  }

  return a1 | v10;
}

uint64_t sub_2394C1340(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v7 = (a3 + 40);
  if (*(*(a3 + 40) + 24) == a4)
  {
    sub_2393D9EB8((a3 + 40), &v21);
    v22 = v21;
  }

  else
  {
    sub_2393D9C18(a4, 0, &v21);
    v18 = v21;
    v22 = v21;
    if (!v21)
    {
      v17 = 0x1D000000000;
      v16 = 11;
      return v17 | v16;
    }

    v14 = sub_2393D9A20(*v7, *(v21 + 1), a4);
    *v7 = sub_2393D99AC(*v7, a4);
    if (v14)
    {
      v15 = v14 & 0xFFFFFFFF00000000;
LABEL_12:
      sub_2393D96C8(v18);
      v16 = v14;
      v17 = v15;
      return v17 | v16;
    }

    sub_2393D97A0(v18, a4, 0);
  }

  v21 = 0;
  v9 = sub_2393E967C(a3, v8);
  if (v9)
  {
    v11 = v9;
    v21 = sub_2393E967C(v9, v10);
    sub_2393E9744(v11, v12);
  }

  (*(**(a1 + 8) + 16))(*(a1 + 8), a2, &v22, &v21);
  if (v21)
  {
    sub_2393E9744(v21, v13);
  }

  LODWORD(v14) = 0;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v18 = v22;
  if (v22)
  {
    goto LABEL_12;
  }

  return v17 | v16;
}

uint64_t sub_2394C14C8(uint64_t a1)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 72);
  if (v2)
  {
    sub_2393D1550(v2);
  }

  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 26) = 5540;
  *(a1 + 28) = 0;
  *(a1 + 32) = 0;
  *(a1 + 72) = 0;
  v3 = *(a1 + 40);
  if (v3)
  {
    sub_2393D96C8(v3);
  }

  *(a1 + 40) = 0;
  *(a1 + 56) = 0;
  v5[0] = &unk_284BBD180;
  v5[3] = v5;
  sub_2394C20AC(v5, (a1 + 80));
  return sub_2394C24D8(v5);
}

unint64_t sub_2394C1590(uint64_t a1, uint64_t *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v10[0] = 0;
  v10[1] = 0;
  v11 = 0;
  v12 = 5540;
  v13 = 0;
  v14 = 0;
  v4 = sub_2394C16F4(a1, v10);
  if (v4)
  {
    v5 = v4 & 0xFFFFFFFF00000000;
  }

  else if (sub_2394C1110(*(a1 + 16), a1, v10, a2))
  {
    v6 = sub_2393D9044(1u);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = sub_2393C9138();
      *buf = 136315138;
      v16 = v7;
      _os_log_impl(&dword_238DAE000, v6, OS_LOG_TYPE_ERROR, "Failed to accept received TCP message: %s", buf, 0xCu);
    }

    if (sub_2393D5398(1u))
    {
      v8 = sub_2393C9138();
      sub_2393D5320(1, 1, "Failed to accept received TCP message: %s", v8);
    }

    v5 = 0x21400000000;
    LODWORD(v4) = 192;
  }

  else
  {
    v5 = 0;
    LODWORD(v4) = 0;
  }

  return v4 | v5;
}

unint64_t sub_2394C16F4(uint64_t a1, uint64_t a2)
{
  v10 = 0;
  v9 = 0;
  v4 = (**a1)(a1, &v11, &v10);
  if (v4 || (v4 = (*(*a1 + 16))(a1, &v9), v4))
  {
    v5 = v4 & 0xFFFFFFFF00000000;
  }

  else
  {
    v5 = 0;
    LODWORD(v4) = 0;
    v7 = v10;
    v8 = v9;
    *a2 = v11;
    *(a2 + 16) = 3;
    *(a2 + 18) = v7;
    *(a2 + 20) = v8;
    *(a2 + 24) = 0;
  }

  return v4 | v5;
}

_WORD *sub_2394C17C8(void *a1, uint64_t a2, uint64_t a3)
{
  v41 = *MEMORY[0x277D85DE8];
  v34[0] = a2;
  v34[1] = a3;
  v32 = 0;
  v33 = a1;
  v31 = 0;
  v30 = 0;
  v6 = a1[2];
  v28 = 0;
  v29 = v6;
  v24 = 0uLL;
  LOBYTE(v25) = 0;
  HIWORD(v25) = 5540;
  v26 = 0;
  v27 = 0;
  sub_2394C0AA4(v6, a1, __str);
  v8 = *__str;
  if (*__str && (v9 = sub_2393E967C(*__str, v7), v28 = v9, sub_2393E9744(v8, v10), v9))
  {
    v11 = 0;
    v12 = *(v9 + 6);
    v13 = *(v9 + 7);
    v24 = *(v9 + 4);
    v25 = v12;
    v26 = v13;
    v27 = *(v9 + 4);
  }

  else
  {
    v31 = sub_2394C16F4(a1, &v24);
    v32 = v14;
    if (v31)
    {
      goto LABEL_8;
    }

    v9 = 0;
    v11 = 1;
  }

  sub_2393E97D4(&v24, __str, 0x4CuLL);
  if (a2)
  {
    if ((v11 & 1) == 0)
    {
      sub_2394BFE68(v6, v9, a2, a3, 1);
      goto LABEL_13;
    }

LABEL_8:
    sub_2393D1550(a1);
LABEL_13:
    v18 = sub_2393D9044(1u);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = sub_2393C9138();
      *buf = 136315394;
      *&buf[4] = __str;
      *&buf[12] = 2080;
      *&buf[14] = v19;
      _os_log_impl(&dword_238DAE000, v18, OS_LOG_TYPE_ERROR, "Connection establishment with %s encountered an error: %s", buf, 0x16u);
    }

    if (sub_2393D5398(1u))
    {
      v20 = sub_2393C9138();
      sub_2393D5320(1, 1, "Connection establishment with %s encountered an error: %s", __str, v20);
    }

    goto LABEL_17;
  }

  a1[5] = sub_2394C1590;
  a1[6] = 0;
  a1[7] = sub_2394C1BA0;
  if (v11)
  {
    sub_2395361FC();
  }

  *(v9 + 48) = 4;
  v16 = (*(*a1 + 24))(a1);
  v31 = v16;
  v32 = v15;
  if (v16)
  {
    sub_2394BFE68(v6, v9, v16, v15, 1);
  }

  else
  {
    v22 = *(v6 + 56);
    *buf = &v24;
    *&buf[8] = &v30;
    *&buf[16] = &v29;
    v37 = v34;
    v38 = &v31;
    v39 = &v33;
    v35 = buf;
    (*(*v22 + 40))(v22, &v35, sub_2394C25B8);
    (*(*v33 + 32))(v33, v9[32], v9[33]);
    v23 = sub_2393D9044(1u);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *&buf[4] = __str;
      _os_log_impl(&dword_238DAE000, v23, OS_LOG_TYPE_DEFAULT, "Connection established successfully with %s.", buf, 0xCu);
    }

    if (sub_2393D5398(2u))
    {
      sub_2393D5320(1, 2, "Connection established successfully with %s.", __str);
    }

    (*(**(v29 + 8) + 32))(*(v29 + 8), &v28, 0, 0);
  }

LABEL_17:
  result = v28;
  if (v28)
  {
    return sub_2393E9744(v28, v17);
  }

  return result;
}

uint64_t sub_2394C1BA0(uint64_t a1, unint64_t a2, const char *a3)
{
  v6 = *(a1 + 16);
  sub_2394C0AA4(v6, a1, &v11);
  v7 = v11;
  if (v11)
  {
    v8 = HIDWORD(a2);
    if (!a2)
    {
      if (*(v11 + 72))
      {
        if (*(v11 + 48) == 4)
        {
          LODWORD(a2) = 60;
        }

        else
        {
          LODWORD(a2) = 0;
        }

        if (*(v11 + 48) == 4)
        {
          LODWORD(v8) = 637;
          a3 = "src/transport/raw/TCP.cpp";
        }
      }

      else
      {
        LODWORD(a2) = 0;
      }
    }

    sub_2394BFE68(v6, v11, a2 | (v8 << 32), a3, 1);

    return sub_2393E9744(v7, v10);
  }

  else
  {

    return sub_2393D1550(a1);
  }
}

unint64_t sub_2394C1C94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v16 = *MEMORY[0x277D85DE8];
  if (*(a1 + 25) == 1)
  {
    if (*(a2 + 16) == 3)
    {
      if (*(a1 + 32) >= *(a1 + 48))
      {
        v10 = 0x2BA00000000;
        v11 = 11;
      }

      else
      {
        sub_2393E97D4(a2, __str, 0x4CuLL);
        v8 = sub_2393D9044(1u);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          v14 = __str;
          _os_log_impl(&dword_238DAE000, v8, OS_LOG_TYPE_DEFAULT, "Connecting to peer %s.", buf, 0xCu);
        }

        if (sub_2393D5398(2u))
        {
          sub_2393D5320(1, 2, "Connecting to peer %s.", __str);
        }

        v9 = sub_2394C0E68(a1, a2, a3, a4);
        v10 = v9 & 0xFFFFFFFF00000000;
        v11 = v9;
        if (!v9)
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 0x2B800000000;
      v11 = 47;
    }
  }

  else
  {
    v10 = 0x2B500000000;
    v11 = 3;
  }

  return v10 | v11;
}

uint64_t sub_2394C1E18(uint64_t result, uint64_t a2, int a3)
{
  v3 = *a2 != 0;
  if (*(a2 + 72))
  {
    v4 = a3;
    v6 = result;
    v7 = *(a2 + 48);
    v8 = v7 == 4 ? a3 : 0;
    v9 = v7 != 3 && v8 == 0;
    if (v9 || (result = sub_2394BFE68(result, a2, 0x2CE00000002, "src/transport/raw/TCP.cpp", *a2 != 0), *(a2 + 72)))
    {
      if (*(a2 + 48) == 4 && (v4 & 1) == 0)
      {

        return sub_2394BFE68(v6, a2, 0, 0, v3);
      }
    }
  }

  return result;
}

BOOL sub_2394C1EE0(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    v2 = *(a1 + 40) + 48;
    v3 = 1;
    v4 = *(a1 + 48);
    v5 = 1;
    do
    {
      if (*(v2 + 24) && *v2 == 4)
      {
        break;
      }

      v5 = v3++ < v1;
      v2 += 112;
      --v4;
    }

    while (v4);
  }

  else
  {
    return 0;
  }

  return v5;
}

void *sub_2394C1FA0(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x277D85DE8];
  sub_2394C2014(v4, a2);
  sub_2394C20AC(v4, a1);
  sub_2394C24D8(v4);
  return a1;
}

uint64_t sub_2394C2014(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

void *sub_2394C20AC(void *result, void *a2)
{
  v5[3] = *MEMORY[0x277D85DE8];
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v5);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v5[0] + 24))(v5, a2);
        result = (*(v5[0] + 32))(v5);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  return result;
}

uint64_t sub_2394C2394(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BBD1F0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2394C2450(uint64_t result, void *a2)
{
  *a2 = &unk_284BBD210;
  a2[1] = *(result + 8);
  return result;
}

uint64_t sub_2394C248C(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BBD270))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2394C24D8(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t sub_2394C2558(uint64_t **a1, uint64_t a2)
{
  v3 = *a1;
  if (!sub_2394BF148(a2, **a1))
  {
    return 0;
  }

  v4 = 1;
  *v3[1] = 1;
  sub_2393D982C(*(a2 + 32), v3[2]);
  return v4;
}

uint64_t sub_2394C25B8(uint64_t **a1, uint64_t a2)
{
  v3 = *a1;
  if (sub_2394BF148(a2, **a1))
  {
    *v3[1] = 1;
    v4 = *(a2 + 32);
    v10 = v4;
    *(a2 + 32) = 0;
    v5 = *(*v3[2] + 56);
    (*(*v5 + 24))(v5, a2);
    if (!*v3[3] && !*v3[4])
    {
      v6 = sub_2393D1118(*v3[5], &v10, 1);
      v7 = v3[4];
      *v7 = v6;
      v7[1] = v8;
      v4 = v10;
    }

    if (v4)
    {
      sub_2393D96C8(v4);
    }
  }

  return 0;
}

void *sub_2394C2690(void *a1)
{
  *a1 = &unk_284BBD290;
  a1[2] = &unk_284BBD310;
  sub_2394C26F4(a1);
  return a1;
}

int *sub_2394C26F4(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    sub_2393CCA60(v2);
    *(*(a1 + 24) + 16) = 0;
    *(a1 + 24) = 0;
  }

  result = *(a1 + 40);
  if (result)
  {
    result = sub_2393CA360(result);
    *(a1 + 40) = 0;
  }

  *(a1 + 32) = 0;
  return result;
}

void *sub_2394C2740(void *a1)
{
  *a1 = &unk_284BBD290;
  a1[2] = &unk_284BBD310;
  sub_2394C26F4(a1);
  return a1;
}

int *sub_2394C27A4(void *a1)
{
  *(a1 - 2) = &unk_284BBD290;
  *a1 = &unk_284BBD310;
  return sub_2394C26F4((a1 - 2));
}

void sub_2394C27E8(void *a1)
{
  *a1 = &unk_284BBD290;
  a1[2] = &unk_284BBD310;
  sub_2394C26F4(a1);

  JUMPOUT(0x23EE77B60);
}

void sub_2394C286C(void *a1)
{
  *(a1 - 2) = &unk_284BBD290;
  *a1 = &unk_284BBD310;
  sub_2394C26F4((a1 - 2));

  JUMPOUT(0x23EE77B60);
}

uint64_t sub_2394C28F0(uint64_t a1, uint64_t *a2)
{
  if (*(a1 + 32))
  {
    v4 = 0x4200000000;
LABEL_3:
    v5 = 3;
    return v5 | v4;
  }

  v6 = *a2;
  if (!*a2)
  {
    v4 = 0x4300000000;
    goto LABEL_3;
  }

  v13 = v2;
  v14 = v3;
  *(a1 + 24) = v6;
  if (*(v6 + 16) && (a2[1] & 1) != 0)
  {
    v8 = sub_2393D9044(1u);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *v11 = 0;
      _os_log_impl(&dword_238DAE000, v8, OS_LOG_TYPE_INFO, "BLEBase::Init - not overriding transport", v11, 2u);
    }

    if (sub_2393D5398(3u))
    {
      sub_2393D5320(1, 3, "BLEBase::Init - not overriding transport");
    }
  }

  else
  {
    *(v6 + 16) = a1 + 16;
    v9 = sub_2393D9044(1u);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_238DAE000, v9, OS_LOG_TYPE_INFO, "BLEBase::Init - setting/overriding transport", buf, 2u);
    }

    if (sub_2393D5398(3u))
    {
      sub_2393D5320(1, 3, "BLEBase::Init - setting/overriding transport");
    }
  }

  v4 = 0;
  v5 = 0;
  *(a1 + 32) = 1;
  return v5 | v4;
}

uint64_t sub_2394C2A34(void *a1, _DWORD *a2)
{
  if (*a2 == 3)
  {
    a1[5] = a2;
    (*(*a1 + 96))(a1);
    v2 = 0;
    v3 = 0;
  }

  else
  {
    v2 = 0x5700000000;
    v3 = 47;
  }

  return v3 | v2;
}

uint64_t sub_2394C2AAC(uint64_t a1, _DWORD *a2)
{
  if (*a2 == 3)
  {
    v3 = *(a1 - 16);
    v2 = a1 - 16;
    *(v2 + 40) = a2;
    (*(v3 + 96))(v2, a2);
    v4 = 0;
    v5 = 0;
  }

  else
  {
    v4 = 0x5700000000;
    v5 = 47;
  }

  return v5 | v4;
}

unint64_t sub_2394C2B24(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (*(a2 + 16) != 2)
  {
    v6 = 0x6300000000;
    LODWORD(v5) = 47;
    return v6 | v5;
  }

  v3 = *(a1 + 40);
  if (!v3)
  {
    v6 = 0x6400000000;
LABEL_10:
    LODWORD(v5) = 3;
    return v6 | v5;
  }

  v4 = *(a1 + 32);
  if (!v4)
  {
    v6 = 0x6500000000;
    goto LABEL_10;
  }

  if (v4 != 2)
  {
    v5 = sub_2394C2BD0(a1, a3);
    if (v5)
    {
      goto LABEL_6;
    }

LABEL_12:
    LODWORD(v5) = 0;
    v6 = 0;
    return v6 | v5;
  }

  v5 = sub_2393CAD14(v3, a3);
  if (!v5)
  {
    goto LABEL_12;
  }

LABEL_6:
  v6 = v5 & 0xFFFFFFFF00000000;
  return v6 | v5;
}

uint64_t sub_2394C2BD0(uint64_t a1, void *a2)
{
  result = 0x750000000BLL;
  v4 = *(a1 + 56);
  if (v4)
  {
    v6 = 0;
    while (*(*(a1 + 48) + 8 * v6))
    {
      if (v4 == ++v6)
      {
        return result;
      }
    }

    v7 = sub_2393D9044(1u);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *v10 = 0;
      _os_log_impl(&dword_238DAE000, v7, OS_LOG_TYPE_INFO, "Message appended to BLE send queue", v10, 2u);
    }

    if (sub_2393D5398(3u))
    {
      sub_2393D5320(1, 3, "Message appended to BLE send queue");
    }

    v8 = *(a1 + 48);
    v9 = *(v8 + 8 * v6);
    if (v9)
    {
      sub_2393D96C8(v9);
    }

    result = 0;
    *(v8 + 8 * v6) = *a2;
    *a2 = 0;
  }

  return result;
}

void sub_2394C2CCC(uint64_t a1, char *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = sub_2393D9044(1u);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v9 = a2;
    _os_log_impl(&dword_238DAE000, v4, OS_LOG_TYPE_INFO, "BleConnectionComplete: endPoint %p", buf, 0xCu);
  }

  if (sub_2393D5398(3u))
  {
    sub_2393D5320(1, 3, "BleConnectionComplete: endPoint %p", a2);
  }

  *(a1 + 40) = a2;
  if (sub_2393C9340(a2))
  {
    v5 = *(a1 + 40);
    if (v5)
    {
      sub_2393CA360(v5);
      *(a1 + 40) = 0;
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = sub_2393C9138();
      *buf = 136315138;
      v9 = v6;
      _os_log_impl(&dword_238DAE000, v4, OS_LOG_TYPE_ERROR, "Failed to setup BLE endPoint: %s", buf, 0xCu);
    }

    if (sub_2393D5398(1u))
    {
      v7 = sub_2393C9138();
      sub_2393D5320(1, 1, "Failed to setup BLE endPoint: %s", v7);
    }
  }
}

void sub_2394C2E54(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  sub_2394C2F48(a1);
  v1 = sub_2393D9044(1u);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v4 = sub_2393C9138();
    _os_log_impl(&dword_238DAE000, v1, OS_LOG_TYPE_INFO, "BleConnection Error: %s", buf, 0xCu);
  }

  if (sub_2393D5398(3u))
  {
    v2 = sub_2393C9138();
    sub_2393D5320(1, 3, "BleConnection Error: %s", v2);
  }
}

void sub_2394C2F48(uint64_t a1)
{
  v2 = sub_2393D9044(1u);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&dword_238DAE000, v2, OS_LOG_TYPE_INFO, "Clearing BLE pending packets.", v6, 2u);
  }

  if (sub_2393D5398(3u))
  {
    sub_2393D5320(1, 3, "Clearing BLE pending packets.");
  }

  if (*(a1 + 56))
  {
    v3 = 0;
    do
    {
      v4 = *(a1 + 48);
      v5 = *(v4 + 8 * v3);
      if (v5)
      {
        sub_2393D96C8(v5);
      }

      *(v4 + 8 * v3++) = 0;
    }

    while (v3 < *(a1 + 56));
  }
}

uint64_t sub_2394C3010(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[0] = 0;
  v4[1] = 0;
  v5 = 2;
  v6 = 5540;
  v7 = 0;
  v8 = 0;
  return (*(**(a1 + 8) + 16))(*(a1 + 8), v4, a3, 0);
}

uint64_t sub_2394C3078(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[0] = 0;
  v4[1] = 0;
  v5 = 2;
  v6 = 5540;
  v7 = 0;
  v8 = 0;
  return (*(**(a1 - 8) + 16))(*(a1 - 8), v4, a3, 0);
}

void sub_2394C30E0(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4)
{
  v19 = *MEMORY[0x277D85DE8];
  *(a1 + 32) = 2;
  if (a3)
  {
    v8 = sub_2393D9044(1u);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v18 = sub_2393C9138();
      _os_log_impl(&dword_238DAE000, v8, OS_LOG_TYPE_ERROR, "Failed to establish BLE connection: %s", buf, 0xCu);
    }

    if (sub_2393D5398(1u))
    {
      v9 = sub_2393C9138();
      sub_2393D5320(1, 1, "Failed to establish BLE connection: %s", v9);
    }

    (*(*a1 + 104))(a1, a2, a3, a4);
  }

  else
  {
    if (*(a1 + 56))
    {
      v10 = 0;
      v11 = 0;
      do
      {
        v12 = *(a1 + 48);
        if (*(v12 + v10) && sub_2393CAD14(a2, (v12 + v10)))
        {
          v13 = sub_2393D9044(1u);
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            v14 = sub_2393C9138();
            *buf = 136315138;
            v18 = v14;
            _os_log_impl(&dword_238DAE000, v13, OS_LOG_TYPE_ERROR, "Deferred sending failed: %s", buf, 0xCu);
          }

          if (sub_2393D5398(1u))
          {
            v15 = sub_2393C9138();
            sub_2393D5320(1, 1, "Deferred sending failed: %s", v15);
          }
        }

        ++v11;
        v10 += 8;
      }

      while (v11 < *(a1 + 56));
    }

    v16 = sub_2393D9044(1u);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      v18 = a2;
      _os_log_impl(&dword_238DAE000, v16, OS_LOG_TYPE_INFO, "BLE EndPoint %p Connection Complete", buf, 0xCu);
    }

    if (sub_2393D5398(3u))
    {
      sub_2393D5320(1, 3, "BLE EndPoint %p Connection Complete", a2);
    }
  }
}

void sub_2394C3398(uint64_t a1)
{
  *(a1 + 32) = 1;
  *(a1 + 40) = 0;
  sub_2394C2F48(a1);
}

void sub_2394C33A8(uint64_t a1)
{
  *(a1 + 16) = 1;
  *(a1 + 24) = 0;
  sub_2394C2F48(a1 - 16);
}

uint64_t sub_2394C33DC(uint64_t result)
{
  *result = &unk_284BBD3A8;
  *(result + 16) = 0;
  return result;
}

uint64_t sub_2394C3408(uint64_t result)
{
  *result = &unk_284BBD3A8;
  *(result + 16) = 0;
  return result;
}

void sub_2394C342C(uint64_t a1)
{
  *a1 = &unk_284BBD3A8;
  *(a1 + 16) = 0;
  JUMPOUT(0x23EE77B60);
}

uint64_t sub_2394C3460(uint64_t a1)
{
  v2 = sub_2393D9044(9u);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_238DAE000, v2, OS_LOG_TYPE_DEFAULT, "NFCBase::Init", v7, 2u);
  }

  if (sub_2393D5398(2u))
  {
    sub_2393D5320(9, 2, "NFCBase::Init");
  }

  if (*(a1 + 16))
  {
    v3 = 0x3800000000;
    v4 = 3;
  }

  else
  {
    *(a1 + 16) = 1;
    v5 = sub_23948A9E8();
    sub_23948AC38(v5, a1);
    v3 = 0;
    v4 = 0;
  }

  return v4 | v3;
}

uint64_t sub_2394C3528(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16))
  {
    v4 = sub_23948A9E8();
    result = sub_23948AD28(v4, a2);
    if (result)
    {
      v6 = 2;
    }

    else
    {
      v6 = 1;
    }

    *(a1 + 16) = v6;
  }

  else
  {
    v7 = sub_2393D9044(9u);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *v8 = 0;
      _os_log_impl(&dword_238DAE000, v7, OS_LOG_TYPE_ERROR, "Invalid state in NFCBase::CanSendToPeer()", v8, 2u);
    }

    result = sub_2393D5398(1u);
    if (result)
    {
      sub_2393D5320(9, 1, "Invalid state in NFCBase::CanSendToPeer()");
      return 0;
    }
  }

  return result;
}

uint64_t sub_2394C35E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2393D9044(9u);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_238DAE000, v6, OS_LOG_TYPE_DEFAULT, "NFCBase::OnNfcTagResponse", v8, 2u);
  }

  if (sub_2393D5398(2u))
  {
    sub_2393D5320(9, 2, "NFCBase::OnNfcTagResponse");
  }

  return (*(**(a1 + 8) + 16))(*(a1 + 8), a2, a3, 0);
}

void sub_2394C36AC()
{
  v0 = sub_2393D9044(9u);
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_238DAE000, v0, OS_LOG_TYPE_DEFAULT, "NFCBase::OnNfcTagError", v1, 2u);
  }

  if (sub_2393D5398(2u))
  {
    sub_2393D5320(9, 2, "NFCBase::OnNfcTagError");
  }
}

uint64_t sub_2394C3730(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a2 + 16) == 5)
  {
    if (*(a1 + 16) == 2)
    {
      v5 = sub_23948A9E8();
      sub_23948AE34(v5, a2, a3);
      v6 = 0;
      v7 = 0;
    }

    else
    {
      v6 = 0x6600000000;
      v7 = 3;
    }
  }

  else
  {
    v6 = 0x6500000000;
    v7 = 47;
  }

  return v7 | v6;
}

unint64_t sub_2394C37B8(uint64_t a1, _BYTE *a2)
{
  if ((*a1 & 1) == 0)
  {
    if (sub_2393C5C40(*(a1 + 8)) != 21)
    {
      v7 = 0x1C00000000;
      LODWORD(v5) = 38;
      return v5 | v7;
    }

    v5 = sub_2393C6A2C(*(a1 + 8), (a1 + 4));
    if (v5)
    {
      goto LABEL_12;
    }

    *a1 = 1;
  }

  v4 = *(a1 + 8);
  while (1)
  {
    v5 = sub_2393C6B34(v4);
    if (v5)
    {
      break;
    }

    v4 = *(a1 + 8);
    v6 = *(v4 + 16);
    if (v6 <= 0xFF)
    {
      v7 = 0;
      LODWORD(v5) = 0;
      *a2 = v6;
      return v5 | v7;
    }
  }

  if (v5 != 33)
  {
LABEL_12:
    v7 = v5 & 0xFFFFFFFF00000000;
    return v5 | v7;
  }

  v5 = sub_2393C6A98(*(a1 + 8), *(a1 + 4));
  v7 = v5 & 0xFFFFFFFF00000000;
  if (!v5)
  {
    v7 = 0x3800000000;
    LODWORD(v5) = 33;
  }

  return v5 | v7;
}

uint64_t sub_2394C389C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = a2;
  *(a1 + 8) = sub_2393C8CE0(a2, a3, 21, (a1 + 24));
  *(a1 + 16) = v4;
  return a1;
}

unint64_t sub_2394C38E0(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return *(a1 + 8);
  }

  result = sub_2393C8DE0(*a1, *(a1 + 24));
  *(a1 + 8) = result;
  *(a1 + 16) = v3;
  return result;
}

BOOL sub_2394C3920(int a1)
{
  v1 = 0;
  do
  {
    v2 = dword_2395D7960[v1];
  }

  while (v2 != a1 && v1++ != 2);
  return v2 == a1;
}

unsigned __int16 *sub_2394C394C@<X0>(unsigned __int16 *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = result;
  v8 = *(a2 + 8);
  if (v8 != 65531)
  {
    if (v8 == 65529)
    {
      v25 = 8;
      v26 = 0;
      v27 = 0;
      v28 = 0;
      v29 = 0;
      v10 = (*(*result + 80))(result, a2, &v25);
      if (!v10)
      {
        sub_2394C3CA4(&v25, &v22);
        *(a3 + 68) = 1;
        v12 = sub_2393C4D64(a3);
        if (!v12)
        {
          v30 = a3;
          sub_2393C7B90(v31);
          if (v23)
          {
            v16 = v22;
            v17 = 8 * v23;
            while (1)
            {
              v32 = *v16;
              v12 = sub_2392CB948(v30, v31, &v32);
              if (v12)
              {
                goto LABEL_31;
              }

              v16 += 2;
              v17 -= 8;
              if (!v17)
              {
                goto LABEL_30;
              }
            }
          }

          goto LABEL_30;
        }

        goto LABEL_25;
      }
    }

    else
    {
      if (v8 != 65528)
      {
        *a4 = 0x680000002FLL;
        *(a4 + 8) = "src/app/GlobalAttributes.cpp";
LABEL_23:
        *(a4 + 16) = 0;
        return result;
      }

      v25 = 4;
      v26 = 0;
      v27 = 0;
      v28 = 0;
      v29 = 0;
      v10 = (*(*result + 72))(result, a2, &v25);
      if (!v10)
      {
        sub_238DB91E0(&v25, &v22);
        *(a3 + 68) = 1;
        v12 = sub_2393C4D64(a3);
        if (!v12)
        {
          v30 = a3;
          sub_2393C7B90(v31);
          if (v23)
          {
            v13 = v22;
            v14 = 4 * v23;
            while (1)
            {
              v32 = *v13;
              v12 = sub_2392CB948(v30, v31, &v32);
              if (v12)
              {
                break;
              }

              ++v13;
              v14 -= 4;
              if (!v14)
              {
                goto LABEL_30;
              }
            }

LABEL_31:
            v19 = v15;
            sub_2393C4E54(a3);
            goto LABEL_32;
          }

          goto LABEL_30;
        }

        goto LABEL_25;
      }
    }

LABEL_19:
    v18 = v9;
    result = sub_2393D6B1C(&v25);
    if (v10 == 216)
    {
      result = sub_2394C425C(v6, a2, 1);
      *a4 = result;
      *(a4 + 1) = 0;
      *(a4 + 16) = 1;
      return result;
    }

    *a4 = v10;
    *(a4 + 8) = v18;
    goto LABEL_23;
  }

  v25 = 8;
  v26 = 0;
  v27 = 0;
  v28 = 0;
  v29 = 0;
  v10 = (*(*result + 64))(result, a2, &v25);
  if (v10)
  {
    goto LABEL_19;
  }

  sub_2394C3CA4(&v25, &v22);
  *(a3 + 68) = 1;
  v12 = sub_2393C4D64(a3);
  if (!v12)
  {
    v30 = a3;
    sub_2393C7B90(v31);
    if (v23)
    {
      v20 = v22;
      v21 = 8 * v23;
      do
      {
        v32 = *v20;
        v12 = sub_2392CB948(v30, v31, &v32);
        if (v12)
        {
          goto LABEL_31;
        }

        v20 += 2;
        v21 -= 8;
      }

      while (v21);
    }

LABEL_30:
    sub_2393C4E54(a3);
    v19 = 0;
    v12 = 0;
    *(a3 + 74) = -1;
    *(a3 + 76) = 0;
    goto LABEL_32;
  }

LABEL_25:
  v19 = v11;
LABEL_32:
  *a4 = v12;
  *(a4 + 8) = v19;
  *(a4 + 16) = 0;
  sub_2393D6E84(&v24);
  return sub_2393D6B1C(&v25);
}

void *sub_2394C3CA4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v8 = 0;
  v9 = 0;
  v7 = 0;
  sub_2393D6E5C(a1, &v9, &v8, &v7);
  v3 = v9;
  v4 = v7;
  result = sub_23947EE68(a2, v9, v8);
  if (v4)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0;
  }

  a2[2] = v6;
  return result;
}

BOOL sub_2394C3D0C(uint64_t a1, int *a2)
{
  v4 = *(a1 + 16);
  v5 = a2[4];
  if (v4 != -1 && v5 == v4)
  {
    v12 = &v11;
    if (((off_284BBD400[v4])(&v12, a1, a2) & 1) == 0)
    {
      v4 = *(a1 + 16);
      v5 = a2[4];
      goto LABEL_10;
    }

    return 1;
  }

  if (v5 == v4)
  {
    return 1;
  }

LABEL_10:
  if (v4 == 1)
  {
    v8 = a1;
  }

  else
  {
    v8 = 0;
  }

  if (v4)
  {
    v9 = 0;
  }

  else
  {
    v9 = a1;
  }

  if (v8)
  {
    v10 = v5 == 0;
  }

  else
  {
    v10 = 0;
  }

  if (v10)
  {
    v9 = a2;
    return sub_2394C3DCC(v8, v9);
  }

  result = 0;
  if (v5 == 1 && v9)
  {
    v8 = a2;
    return sub_2394C3DCC(v8, v9);
  }

  return result;
}

BOOL sub_2394C3DCC(unsigned __int8 *a1, int *a2)
{
  v2 = *a1;
  if (v2 >= 2)
  {
    v4 = *a2;
LABEL_6:
    v6 = v2 | 0x500;
    return v4 == v6;
  }

  v3 = *(a1 + 1);
  if ((v3 & 0x100) == 0)
  {
    v4 = *a2;
    if (!(v2 | *a2))
    {
      return 1;
    }

    goto LABEL_6;
  }

  if (v2 == 1)
  {
    v6 = v3 | 0x600;
    v4 = *a2;
    return v4 == v6;
  }

  return 0;
}

unint64_t sub_2394C3E2C(unsigned __int8 *a1)
{
  if (!a1)
  {
    goto LABEL_12;
  }

  v1 = *(a1 + 4);
  if (v1 != 1)
  {
    if (!v1)
    {
      v2 = *a1;
      v3 = *a1 & 0xFFFFFFFF00000000;
      return v3 | v2;
    }

LABEL_12:
    sub_238EAC830();
  }

  v3 = *a1;
  if (*a1)
  {
    if (v3 == 1 && (v4 = *(a1 + 1), (v4 & 0x100) != 0))
    {
      LODWORD(v2) = v4 | 0x600;
      v3 = 0x6700000000;
    }

    else
    {
      LODWORD(v2) = v3 | 0x500;
      v3 = 0x6800000000;
    }
  }

  else
  {
    LODWORD(v2) = *a1;
  }

  return v3 | v2;
}

uint64_t sub_2394C3EB0(__int16 *a1)
{
  if (!a1)
  {
    goto LABEL_7;
  }

  v1 = *(a1 + 4);
  if (!v1)
  {
    sub_2393DDF30(&v3, *a1);
    return v3 | (v4 << 16);
  }

  if (v1 != 1)
  {
LABEL_7:
    sub_238EAC830();
  }

  v3 = *a1;
  v4 = *(a1 + 2);
  return v3 | (v4 << 16);
}

BOOL sub_2394C3F10(int *a1)
{
  if (!a1)
  {
    goto LABEL_7;
  }

  v1 = a1[4];
  if (v1 == 1)
  {
    v2 = *a1;
    return v2 == 0;
  }

  if (v1)
  {
LABEL_7:
    sub_238EAC830();
  }

  v2 = *a1;
  return v2 == 0;
}

_DWORD *sub_2394C3F4C(_DWORD *result)
{
  if (result)
  {
    return (!result[4] && (*result == 11 || *result == 25));
  }

  return result;
}

char *sub_2394C3F74(unsigned __int8 *a1, void *a2)
{
  if (!a1)
  {
    goto LABEL_11;
  }

  v3 = *(a1 + 4);
  if (v3 != 1)
  {
    if (!v3)
    {

      return sub_2393C9138();
    }

LABEL_11:
    sub_238EAC830();
  }

  a2[2] = 0;
  **a2 = 0;
  v6 = sub_2393DDC88(*a1);
  sub_2393D6EF4(a2, "%s(%d)", v6, *a1);
  if (*a1 <= 1u)
  {
    v7 = *(a1 + 1);
    if ((v7 & 0x100) != 0)
    {
      sub_2393D6EF4(a2, ", Code %d", v7);
    }
  }

  return *a2;
}

BOOL sub_2394C4050(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v3 = *a2;
  if (v3 != *a3)
  {
    return 0;
  }

  if (v3 > 1)
  {
    return 1;
  }

  v4 = HIBYTE(*(a2 + 1));
  v5 = *(a3 + 1);
  result = v4 == v5 >> 8;
  if (v4 == v5 >> 8)
  {
    if (v4)
    {
      return *(a2 + 1) == v5;
    }

    else
    {
      return v4 == v5 >> 8;
    }
  }

  return result;
}

unint64_t sub_2394C40A8(uint64_t a1, unsigned __int16 *a2)
{
  v3 = *a1;
  if (!v3)
  {
    goto LABEL_8;
  }

  v5 = *a2;
  if (*(a1 + 8) != v5)
  {
    *(a1 + 8) = v5;
    sub_2394C4398(v3, *a2, &v12);
    *(a1 + 16) = v12;
    sub_2393D6EB4((a1 + 32), &v13);
    sub_2393D6E84(&v13);
  }

  v6 = *(a1 + 24);
  if (v6)
  {
    v7 = *(a1 + 16);
    v8 = 12 * v6;
    while (*v7 != *(a2 + 1))
    {
      v7 += 3;
      v8 -= 12;
      if (!v8)
      {
        goto LABEL_8;
      }
    }

    v9 = *v7 & 0xFFFFFFFFFFFFFF00;
    v10 = *v7;
  }

  else
  {
LABEL_8:
    v9 = 0;
    v10 = 0;
  }

  return v10 | v9;
}

unint64_t sub_2394C417C(uint64_t a1, unsigned __int16 *a2)
{
  v3 = *a1;
  if (!v3)
  {
    goto LABEL_9;
  }

  if (*(a1 + 8) != *a2 || *(a1 + 12) != *(a2 + 1))
  {
    *(a1 + 8) = *a2;
    sub_2394C440C(v3, a2, &v11);
    *(a1 + 16) = v11;
    sub_2393D6EB4((a1 + 32), &v12);
    sub_2393D6E84(&v12);
  }

  v5 = *(a1 + 24);
  if (v5)
  {
    v6 = *(a1 + 16);
    v7 = 8 * v5;
    while (*v6 != *(a2 + 2))
    {
      v6 += 2;
      v7 -= 8;
      if (!v7)
      {
        goto LABEL_9;
      }
    }

    v9 = *v6;
    v8 = *v6 & 0xFFFFFFFFFFFFFF00;
    v9 = v9;
  }

  else
  {
LABEL_9:
    v8 = 0;
    v9 = 0;
  }

  return v9 | v8;
}

uint64_t sub_2394C425C(unsigned __int16 *a1, unsigned __int16 *a2, uint64_t a3)
{
  v11 = a1;
  LOWORD(v12) = -1;
  v13[1] = 0;
  v14 = 0;
  v13[0] = 0;
  sub_2394C40A8(&v11, a2);
  v7 = v6;
  sub_2393D6E84(&v14);
  if ((v7 & 0x100000000) == 0)
  {
    sub_2394C4324(a1, &v11);
    if (v12)
    {
      v8 = v11;
      v9 = 6 * v12;
      while (*v8 != *a2)
      {
        v8 += 3;
        v9 -= 6;
        if (!v9)
        {
          goto LABEL_6;
        }
      }

      a3 = 195;
    }

    else
    {
LABEL_6:
      a3 = 127;
    }

    sub_2393D6E84(v13);
  }

  return a3;
}

uint64_t sub_2394C4324@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = 0;
  v4[0] = 6;
  memset(&v4[1], 0, 24);
  (*(*a1 + 16))(a1, v4);
  sub_238DB91E0(v4, a2);
  return sub_2393D6B1C(v4);
}

uint64_t sub_2394C4398@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5[0] = 12;
  memset(&v5[1], 0, 24);
  v6 = 0;
  (*(*a1 + 48))(a1, a2, v5);
  sub_238DB91E0(v5, a3);
  return sub_2393D6B1C(v5);
}

uint64_t sub_2394C440C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5[0] = 8;
  memset(&v5[1], 0, 24);
  v6 = 0;
  (*(*a1 + 64))(a1, a2, v5);
  sub_2394C3CA4(v5, a3);
  return sub_2393D6B1C(v5);
}

uint64_t sub_2394C4480(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v3 = result;
    result = (*(*a2 + 104))(a2, result);
    *(v3 + 16) = a2;
  }

  return result;
}

uint64_t sub_2394C4510(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    result = (*(*result + 112))(result, a1);
    *(a1 + 16) = 0;
  }

  return result;
}

void *sub_2394C4564(void *a1, uint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    (*(*a2 + 104))(a2, a1);
    a1[2] = a2;
  }

  return a1;
}

uint64_t sub_2394C45C8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 152) = *(a2 + 4);
  *(result + 144) = v2;
  return result;
}

unint64_t sub_2394C45DC(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (!a2[4])
  {
    return 0x260000002FLL;
  }

  sub_2394C4774(*a2, a4, a5, &v33);
  if (v33 == 1)
  {
    v11 = a2[3];
    v12 = sub_238EA9094(&v33, v10);
    if (a1)
    {
      v13 = a1 + 8;
    }

    else
    {
      v13 = 0;
    }

    v14 = sub_239471E34(v11, v12, v13, 1);
    if (v14)
    {
      v15 = v14;
      v16 = *(a2 + 48);
      if (v16 == 1)
      {
        v30[0] = 1;
        v31 = *(a2 + 52);
        v32 = *(a2 + 15);
      }

      else
      {
        sub_239476008(v30);
        LOBYTE(v16) = v30[0];
      }

      *(a1 + 480) = a2[5];
      v20 = a2[4];
      v21 = *a3;
      v22 = a3[1];
      v23 = *a2;
      v24 = a2[1];
      v25 = a2[2];
      v27[0] = v16;
      if (v16)
      {
        v28 = v31;
        v29 = v32;
      }

      v26 = sub_2393E024C(a1, v23, v20, v21, v22, v15, v24, v25, a6, v27);
      v19 = v26;
      if (v26)
      {
        v18 = v26 & 0xFFFFFFFF00000000;
      }

      else
      {
        v18 = 0;
      }
    }

    else
    {
      v18 = 0x3300000000;
      v19 = 172;
    }
  }

  else
  {
    v18 = 0x2A00000000;
    v19 = 11;
  }

  if (v33 == 1)
  {
    (*(*v34 + 32))(v34);
  }

  return v18 | v19;
}

void *sub_2394C4774@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  do
  {
    v8 = sub_2393F56A8();
  }

  while ((v8 - 1) > 0xFFFFFFEFFFFFFFFELL);

  return sub_2394C47EC((a1 + 48), v8, a2, a3, a4);
}

void *sub_2394C47EC@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v11 = 0;
  v10 = a2;
  result = sub_23949B780(a1, &v11, &v10, a3, a4, a1);
  if (result)
  {
    v8 = *a3;
    *(result + 20) = *(a3 + 16);
    *(result + 4) = v8;
    *(result + 21) = *(a3 + 20);
    result[11] = *(a3 + 24);
    *(a5 + 8) = result;
    result = (*(*result + 24))(result);
    v9 = 1;
  }

  else
  {
    v9 = 0;
  }

  *a5 = v9;
  return result;
}

uint64_t sub_2394C4894(uint64_t a1, uint64_t a2, __int128 *a3)
{
  if (!*a3)
  {
    return 0x2F00000003;
  }

  if (!*(a3 + 3))
  {
    return 0x3000000003;
  }

  if (!*(a3 + 4))
  {
    return 0x3100000003;
  }

  if (!*(a3 + 5))
  {
    return 0x3200000003;
  }

  v3 = *a3;
  v4 = a3[2];
  *(a1 + 32) = a3[1];
  *(a1 + 48) = v4;
  *(a1 + 16) = v3;
  v5 = *(a3 + 48);
  *(a1 + 64) = v5;
  if (v5 == 1)
  {
    v6 = *(a3 + 52);
    *(a1 + 76) = *(a3 + 15);
    *(a1 + 68) = v6;
  }

  *(a1 + 80) = a3[4];
  sub_23947561C(*(a3 + 3) + 96, a1 + 8);
  v7 = (*sub_2394E06B0())[2];

  return v7();
}

uint64_t sub_2394C4990(uint64_t a1)
{
  v1 = (*sub_2394E06B0())[6];

  return v1();
}

_BYTE *sub_2394C49EC(uint64_t a1, void *a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8)
{
  v8 = a8;
  v10 = a6;
  v27 = *MEMORY[0x277D85DE8];
  v16 = sub_2393D9044(0x27u);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v17 = *(a2 + 8);
    v18 = *a2;
    v19 = HIDWORD(*a2);
    *buf = 67109632;
    *&buf[4] = v17;
    *&buf[8] = 1024;
    *&buf[10] = v19;
    *&buf[14] = 1024;
    LODWORD(v23) = v18;
    _os_log_impl(&dword_238DAE000, v16, OS_LOG_TYPE_INFO, "FindOrEstablishSession: PeerId = [%d:%08X%08X]", buf, 0x14u);
  }

  if (sub_2393D5398(3u))
  {
    sub_2393D5320(39, 3, "FindOrEstablishSession: PeerId = [%d:%08X%08X]", *(a2 + 8), HIDWORD(*a2), *a2);
  }

  result = (*(**(a1 + 88) + 16))(*(a1 + 88), *a2, a2[1], 0);
  if (result)
  {
    goto LABEL_11;
  }

  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_238DAE000, v16, OS_LOG_TYPE_INFO, "FindOrEstablishSession: No existing OperationalSessionSetup instance found", buf, 2u);
  }

  if (sub_2393D5398(3u))
  {
    sub_2393D5320(39, 3, "FindOrEstablishSession: No existing OperationalSessionSetup instance found");
  }

  result = (***(a1 + 88))(*(a1 + 88), a1 + 16, *(a1 + 80), *a2, a2[1], a1);
  if (result)
  {
LABEL_11:
    v21 = result;
    result = sub_2394D021C(result, v10);
    if (a7)
    {
      result = sub_2394D02C0(v21, a7);
    }

    if (a4)
    {
      result = sub_2394CE8E8(v21, a3, a4, v8);
    }

    if (a5)
    {
      return sub_2394CE8F4(v21, a3, a5, v8);
    }
  }

  else
  {
    if (a4)
    {
      result = (*(a4 + 32))(*(a4 + 24), a2, 0x710000000BLL, "src/app/CASESessionManager.cpp");
    }

    if (a5)
    {
      *buf = *a2;
      v23 = 0x760000000BLL;
      v24 = "src/app/CASESessionManager.cpp";
      v25 = 0;
      v26 = 0;
      return (*(a5 + 32))(*(a5 + 24), buf);
    }
  }

  return result;
}

uint64_t sub_2394C4D4C(void *a1, uint64_t *a2, uint64_t a3, char a4)
{
  v5 = a1[2];
  if (!v5)
  {
    v13 = 0x2F00000000;
LABEL_13:
    v14 = 3;
    return v13 | v14;
  }

  if (!a1[5])
  {
    v13 = 0x3000000000;
    goto LABEL_13;
  }

  if (!a1[6])
  {
    v13 = 0x3100000000;
    goto LABEL_13;
  }

  if (!a1[7])
  {
    v13 = 0x3200000000;
    goto LABEL_13;
  }

  v8 = *a2;
  v7 = a2[1];
  v18 = 513;
  sub_23949A820(v5, v8, v7, &v18, a4, v16);
  if (v16[0] == 1)
  {
    v10 = sub_238EA9094(v16, v9);
    v11 = sub_239495304(*v10);
    v12 = *(v11 + 96);
    *(a3 + 16) = *(v11 + 112);
    *a3 = v12;
    *(a3 + 20) = *(v11 + 116);
    *(a3 + 24) = *(v11 + 120);
    if (v16[0])
    {
      (*(*v17 + 32))(v17);
    }

    v13 = 0;
    v14 = 0;
  }

  else
  {
    v13 = 0xA000000000;
    v14 = 72;
  }

  return v13 | v14;
}

uint64_t sub_2394C4E90@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v5 = *(a1 + 16);
  v7 = *a2;
  v6 = a2[1];
  v9 = 513;
  return sub_23949A820(v5, v7, v6, &v9, a3, a4);
}

void sub_2394C4ECC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v6 = (*(**(a1 + 88) + 16))(*(a1 + 88), a2, a3, 1);
  v7 = sub_2393D9044(0x27u);
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_INFO);
  if (v6)
  {
    if (v8)
    {
      *buf = 67109376;
      v10 = HIDWORD(a2);
      v11 = 1024;
      v12 = a2;
      _os_log_impl(&dword_238DAE000, v7, OS_LOG_TYPE_INFO, "UpdatePeerAddress: Found existing OperationalSessionSetup instance for peerId[%08X%08X]", buf, 0xEu);
    }

    if (sub_2393D5398(3u))
    {
      sub_2393D5320(39, 3, "UpdatePeerAddress: Found existing OperationalSessionSetup instance for peerId[%08X%08X]", HIDWORD(a2), a2);
    }

LABEL_11:
    sub_2394CFD10(v6);
    return;
  }

  if (v8)
  {
    *buf = 0;
    _os_log_impl(&dword_238DAE000, v7, OS_LOG_TYPE_INFO, "UpdatePeerAddress: No existing OperationalSessionSetup instance found", buf, 2u);
  }

  if (sub_2393D5398(3u))
  {
    sub_2393D5320(39, 3, "UpdatePeerAddress: No existing OperationalSessionSetup instance found");
  }

  v6 = (***(a1 + 88))(*(a1 + 88), a1 + 16, *(a1 + 80), a2, a3, a1);
  if (v6)
  {
    goto LABEL_11;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_238DAE000, v7, OS_LOG_TYPE_INFO, "UpdatePeerAddress: Failed to allocate OperationalSessionSetup instance", buf, 2u);
  }

  if (sub_2393D5398(3u))
  {
    sub_2393D5320(39, 3, "UpdatePeerAddress: Failed to allocate OperationalSessionSetup instance");
  }
}

uint64_t sub_2394C50E8(void **a1, void *a2)
{
  v3 = (*(*a1[11] + 16))(a1[11], *a2, a2[1], 0);
  v4 = (*a1)[2];

  return v4(a1, v3);
}

uint64_t sub_2394C5174(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    return (*(**(result + 88) + 8))();
  }

  return result;
}

void sub_2394C51A8(void *a1)
{
  sub_2394C5224(a1);

  JUMPOUT(0x23EE77B60);
}

void sub_2394C51E8(uint64_t a1)
{
  sub_2394C5224((a1 - 8));

  JUMPOUT(0x23EE77B60);
}

void *sub_2394C5224(void *a1)
{
  *a1 = &unk_284BBD420;
  a1[1] = &unk_284BBD450;
  if (a1[2])
  {
    v2 = a1[5];
    if (v2)
    {
      if (a1[6] && a1[7])
      {
        sub_23947561C(v2 + 96, 0);
      }
    }
  }

  return a1;
}

uint64_t sub_2394C52B0(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5, char a6)
{
  *a1 = &unk_284BBD4D0;
  *(a1 + 8) = &unk_284BAA120;
  *(a1 + 16) = a1;
  *(a1 + 24) = 0;
  *(a1 + 32) = a2;
  *(a1 + 40) = a3;
  sub_2393DB79C(a1 + 48);
  sub_2393DB79C(a1 + 80);
  sub_2393DB79C(a1 + 112);
  sub_2393DB79C(a1 + 144);
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  *(a1 + 204) = -1;
  sub_2393C7B90(a1 + 208);
  *(a1 + 280) = 0;
  *(a1 + 288) = 0;
  *(a1 + 272) = &unk_284BB83A8;
  *(a1 + 296) = 0;
  *(a1 + 304) = &unk_284BBDA40;
  *(a1 + 312) = 0u;
  *(a1 + 328) = 0u;
  *(a1 + 344) = 1065353216;
  *(a1 + 352) = 0;
  *(a1 + 360) = 0;
  *(a1 + 364) = 1;
  *(a1 + 366) = 0;
  *(a1 + 367) = a5;
  *(a1 + 368) = a4;
  *(a1 + 369) = 0;
  *(a1 + 371) = 0;
  *(a1 + 372) = a6;
  sub_23947632C("src/app/CommandSender.cpp", 63);
  return a1;
}

uint64_t sub_2394C5408(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5, char a6)
{
  *a1 = &unk_284BBD4D0;
  *(a1 + 8) = &unk_284BAA120;
  *(a1 + 16) = a1;
  *(a1 + 24) = 0;
  *(a1 + 32) = a2;
  *(a1 + 40) = a3;
  sub_2393DB79C(a1 + 48);
  sub_2393DB79C(a1 + 80);
  sub_2393DB79C(a1 + 112);
  sub_2393DB79C(a1 + 144);
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  *(a1 + 204) = -1;
  sub_2393C7B90(a1 + 208);
  *(a1 + 280) = 0;
  *(a1 + 288) = 0;
  *(a1 + 272) = &unk_284BB83A8;
  *(a1 + 296) = 0;
  *(a1 + 304) = &unk_284BBDA40;
  *(a1 + 312) = 0u;
  *(a1 + 328) = 0u;
  *(a1 + 344) = 1065353216;
  *(a1 + 352) = 0;
  *(a1 + 360) = 0;
  *(a1 + 364) = 1;
  *(a1 + 366) = 0;
  *(a1 + 367) = a5;
  *(a1 + 368) = a4;
  *(a1 + 369) = 0;
  *(a1 + 371) = 1;
  *(a1 + 372) = a6;
  sub_23947632C("src/app/CommandSender.cpp", 72);
  *(a1 + 352) = a1 + 304;
  return a1;
}

void *sub_2394C556C(void *a1)
{
  sub_23947632C("src/app/CommandSender.cpp", 80);
  a1[38] = &unk_284BBDA40;
  sub_2394C763C((a1 + 39));
  sub_2393B8400(a1 + 34);
  v2 = a1[24];
  if (v2)
  {
    sub_2393D96C8(v2);
  }

  a1[24] = 0;
  a1[1] = &unk_284BAA120;
  sub_238EF9EEC((a1 + 1));
  return a1;
}

void sub_2394C5608(void *a1)
{
  sub_2394C556C(a1);

  JUMPOUT(0x23EE77B60);
}

unint64_t sub_2394C5640(uint64_t a1)
{
  if (*(a1 + 369))
  {
LABEL_16:
    LODWORD(v6) = 0;
    v5 = 0;
    return v5 | v6;
  }

  sub_2394C57B0(a1 + 208);
  if (*(a1 + 372))
  {
    v2 = 63902;
  }

  else
  {
    v2 = 1194;
  }

  sub_2393D9C18(v2, 0x26u, &v10);
  v3 = v10;
  v11 = v10;
  if (!v10)
  {
    v5 = 0x6100000000;
    LODWORD(v6) = 11;
    return v5 | v6;
  }

  if (sub_2393D980C(v10) <= v2)
  {
    v4 = 16;
  }

  else
  {
    v4 = sub_2393D980C(v3) - v2 + 16;
  }

  sub_238EA16C4(a1 + 272, &v11, 0);
  sub_2393C7BF0(a1 + 208, a1 + 272, 0xFFFFFFFF);
  v6 = sub_2393DC940(a1 + 48, a1 + 208);
  if (v6)
  {
    goto LABEL_12;
  }

  v6 = sub_2393C7D60(*(a1 + 64), v4);
  if (v6)
  {
    goto LABEL_12;
  }

  v9 = sub_2393DAE68((a1 + 48), *(a1 + 367));
  sub_2393DC99C(v9, *(a1 + 368));
  v6 = *(a1 + 48);
  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = 1;
    sub_2393DC9DC((a1 + 48), 1);
    v6 = *(a1 + 48);
    if (v6)
    {
LABEL_12:
      v7 = 0;
      goto LABEL_13;
    }

    *(a1 + 369) = 1;
  }

LABEL_13:
  v5 = v6 & 0xFFFFFFFF00000000;
  if (v11)
  {
    sub_2393D96C8(v11);
  }

  if (v7)
  {
    goto LABEL_16;
  }

  return v5 | v6;
}

void sub_2394C57B0(uint64_t a1)
{
  v2 = *(a1 + 80);
  if (v2)
  {
    sub_2393D96C8(v2);
  }

  v3 = *(a1 + 72);
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  if (v3)
  {

    sub_2393D96C8(v3);
  }
}

unint64_t sub_2394C5804(uint64_t a1, uint64_t *a2, _BYTE *a3)
{
  if (*(a1 + 366) == 2)
  {
    v6 = sub_2394C5970(a1, (a1 + 192));
    if (v6)
    {
      goto LABEL_3;
    }

    v9 = sub_239471E34(*(a1 + 40), a2, a1, 1);
    if (v9)
    {
      v10 = v9;
      sub_238EF9EEC(a1 + 8);
      *(a1 + 24) = v10;
      v10[5] = a1 + 8;
      v12 = sub_2393B59AC(a1 + 8, v11);
      if (sub_2393BC2A0(v12, v13))
      {
        v7 = 0x8800000000;
        LODWORD(v6) = 42;
      }

      else
      {
        v15 = sub_2393B59AC(a1 + 8, v14);
        v16 = sub_239495550(*a2, 2000, 1);
        if (*a3 == 1)
        {
          v16 = *sub_239475ED8(a3, v17);
        }

        sub_239470470(v15, v16);
        if (*(a1 + 200) != 1)
        {
          v6 = sub_2394C5AD0(a1, v18);
          goto LABEL_3;
        }

        v19 = *(a1 + 24);
        v20 = sub_238EAB248((a1 + 200), v18);
        v6 = sub_2394D1A74(v19, *v20);
        if (v6)
        {
LABEL_3:
          v7 = v6 & 0xFFFFFFFF00000000;
          return v6 | v7;
        }

        sub_2394C59E8(a1, 3);
        v7 = 0;
        LODWORD(v6) = 0;
      }
    }

    else
    {
      v7 = 0x8500000000;
      LODWORD(v6) = 11;
    }
  }

  else
  {
    v7 = 0x7F00000000;
    LODWORD(v6) = 3;
  }

  return v6 | v7;
}

unint64_t sub_2394C5970(uint64_t a1, void *a2)
{
  if (*(a1 + 366) == 2)
  {
    v4 = sub_2393DCB40(a1 + 80);
    if (!v4)
    {
      v4 = sub_2393DCA2C(a1 + 48);
      if (!v4)
      {
        v4 = sub_238DD2EFC(a1 + 208, a2);
      }
    }

    v5 = v4 & 0xFFFFFFFF00000000;
  }

  else
  {
    v5 = 0x28900000000;
    LODWORD(v4) = 3;
  }

  return v5 | v4;
}

void sub_2394C59E8(uint64_t a1, char a2)
{
  v9 = *MEMORY[0x277D85DE8];
  *(a1 + 366) = a2;
  v3 = sub_2393D9044(0xDu);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 68157954;
    v6 = 10;
    v7 = 2080;
    v8 = sub_2394C749C(a1);
    _os_log_impl(&dword_238DAE000, v3, OS_LOG_TYPE_INFO, "ICR moving to [%10.10s]", buf, 0x12u);
  }

  if (sub_2393D5398(3u))
  {
    v4 = sub_2394C749C(a1);
    sub_2393D5320(13, 3, "ICR moving to [%10.10s]", v4);
  }
}

unint64_t sub_2394C5AD0(uint64_t a1, uint64_t a2)
{
  v3 = sub_2393B59AC(a1 + 8, a2);
  v7 = 1;
  v4 = sub_239470478(v3, 0x10000u, 8, (a1 + 192), &v7);
  if (v4)
  {
    v5 = v4 & 0xFFFFFFFF00000000;
  }

  else
  {
    sub_2394C59E8(a1, 4);
    LODWORD(v4) = 0;
    v5 = 0;
  }

  return v5 | v4;
}

unint64_t sub_2394C5B48(unsigned __int8 *a1, uint64_t *a2, uint64_t a3)
{
  v17 = *MEMORY[0x277D85DE8];
  if (a1[372] == 1 && !(*(**a2 + 80))())
  {
    v9 = 0xA600000000;
LABEL_13:
    v10 = 3;
    return v10 | v9;
  }

  v6 = a1[368];
  v7 = a1[200];
  if (v6 != v7)
  {
    v11 = sub_2393D9044(0xDu);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109376;
      v14 = v6;
      v15 = 1024;
      v16 = v7;
      _os_log_impl(&dword_238DAE000, v11, OS_LOG_TYPE_ERROR, "Inconsistent timed request state in CommandSender: mTimedRequest (%d) != mTimedInvokeTimeoutMs.HasValue() (%d)", buf, 0xEu);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(13, 1, "Inconsistent timed request state in CommandSender: mTimedRequest (%d) != mTimedInvokeTimeoutMs.HasValue() (%d)", a1[368], a1[200]);
    }

    v9 = 0xAF00000000;
    goto LABEL_13;
  }

  buf[0] = *a3;
  if (buf[0] == 1)
  {
    v14 = *(a3 + 4);
  }

  v8 = sub_2394C5804(a1, a2, buf);
  v9 = v8 & 0xFFFFFFFF00000000;
  v10 = v8;
  return v10 | v9;
}

unint64_t sub_2394C5CD0(uint64_t a1, uint64_t *a2)
{
  if (*(a1 + 366) == 2)
  {
    v4 = sub_2394C5970(a1, (a1 + 192));
    if (v4)
    {
LABEL_3:
      v5 = v4 & 0xFFFFFFFF00000000;
      return v5 | v4;
    }

    v7 = sub_239471E34(*(a1 + 40), a2, a1, 1);
    if (v7)
    {
      v8 = v7;
      sub_238EF9EEC(a1 + 8);
      *(a1 + 24) = v8;
      v8[5] = a1 + 8;
      v10 = sub_2393B59AC(a1 + 8, v9);
      if (sub_2393BC2A0(v10, v11))
      {
        v4 = sub_2394C5AD0(a1, v12);
        if (v4)
        {
          goto LABEL_3;
        }

        *(a1 + 367) = 0;
        sub_2394C59E8(a1, 6);
        sub_2394C6CC4(a1);
        LODWORD(v4) = 0;
        v5 = 0;
      }

      else
      {
        v5 = 0xBF00000000;
        LODWORD(v4) = 42;
      }
    }

    else
    {
      v5 = 0xBC00000000;
      LODWORD(v4) = 11;
    }
  }

  else
  {
    v5 = 0xB600000000;
    LODWORD(v4) = 3;
  }

  return v5 | v4;
}

uint64_t sub_2394C5DD8(uint64_t a1)
{
  *(a1 + 367) = 0;
  sub_2394C59E8(a1, 6);

  return sub_2394C6CC4(a1);
}

unint64_t sub_2394C5E1C(uint64_t a1, uint64_t a2, unsigned __int8 *a3, void *a4)
{
  if (*(a1 + 366) == 4)
  {
    sub_2394C59E8(a1, 5);
  }

  v23 = 0;
  if (*(a1 + 24) != a2)
  {
    LOBYTE(v8) = 0;
    v9 = 224;
    LODWORD(v10) = 3;
LABEL_5:
    v11 = "src/app/CommandSender.cpp";
    goto LABEL_6;
  }

  if (*(a1 + 366) == 3)
  {
    v9 = 239;
    LODWORD(v10) = 42;
    LOBYTE(v8) = 1;
    v11 = "src/app/CommandSender.cpp";
    if (*(a3 + 2) || *(a3 + 3) != 1 || *a3 != 1)
    {
      goto LABEL_6;
    }

    v21 = 0;
    v22 = 0;
    v13 = sub_2394DEFB4(a4, &v21);
    v8 = v13 != 0;
    if (!v13)
    {
      v10 = v21;
      if (v21)
      {
        v11 = v22;
LABEL_31:
        v9 = HIDWORD(v10);
        if (!v10)
        {
          goto LABEL_32;
        }

        goto LABEL_6;
      }

      v13 = sub_2394C5AD0(a1, v14);
    }

    v10 = v13;
    v11 = v14;
    goto LABEL_31;
  }

  if (*(a3 + 2))
  {
    v9 = 268;
    LODWORD(v10) = 42;
    LOBYTE(v8) = 1;
    goto LABEL_5;
  }

  v15 = *(a3 + 3);
  v16 = *a3;
  if (v15 == 1 && v16 == 9)
  {
    ++*(a1 + 360);
    v17 = sub_2394C60AC(a1, a4, &v23);
    v11 = v18;
    v9 = HIDWORD(v17);
    LODWORD(v10) = v17;
    if (!v17)
    {
      if (v23 == 1)
      {
        sub_2394DEE10(0, a2, 1);
        sub_2394C59E8(a1, 4);
        return 0;
      }

      goto LABEL_8;
    }

    LOBYTE(v8) = 1;
  }

  else
  {
    v11 = "src/app/CommandSender.cpp";
    v9 = 268;
    LODWORD(v10) = 42;
    v8 = 1;
    if (v15 == 1 && v16 == 1)
    {
      v21 = 0;
      v22 = 0;
      v19 = sub_2394DEFB4(a4, &v21);
      if (v19)
      {
        v11 = v20;
        v9 = HIDWORD(v19);
      }

      else
      {
        LODWORD(v19) = v21;
        if (v21)
        {
          v9 = HIDWORD(v21);
          v11 = v22;
        }

        else
        {
          LODWORD(v19) = 42;
          v9 = 264;
        }
      }

      LODWORD(v10) = v19;
      if (!v19)
      {
LABEL_32:
        if (!v8)
        {
          goto LABEL_8;
        }

        goto LABEL_7;
      }
    }
  }

LABEL_6:
  sub_2394C62AC(a1, v10 | (v9 << 32), v11);
  if (v8)
  {
LABEL_7:
    sub_2394DEE10(0x80u, a2, 0);
  }

LABEL_8:
  if (*(a1 + 366) != 4)
  {
    if (!v10)
    {
      sub_2394C6350(a1);
    }

    *(a1 + 367) = 0;
    sub_2394C59E8(a1, 6);
    sub_2394C6CC4(a1);
  }

  return v10 | (v9 << 32);
}

unint64_t sub_2394C60AC(uint64_t a1, void *a2, char *a3)
{
  sub_2393C5AAC(v17);
  v18 = 0;
  sub_2393C5AAC(v15);
  sub_2393DD178(v14);
  sub_2393DD178(v13);
  v12 = 0;
  sub_238DD2F90(v17, a2);
  v6 = sub_2393DD0A8(v14, v17);
  if (v6 || (v6 = sub_2393DA994(v14, &v12), v6) || (v6 = sub_2393DCCFC(v14, v13), v6))
  {
LABEL_4:
    v7 = v6;
  }

  else
  {
    sub_2393DD1C8(v13, v15);
    v7 = 36;
    while (!sub_2393C6B34(v15))
    {
      if (v16 != 256)
      {
        v6 = 0x13D00000000;
        goto LABEL_5;
      }

      sub_2393DD178(v11);
      v6 = sub_2393DD7F4(v11, v15);
      if (!v6)
      {
        v6 = sub_2394C6454(a1, v11);
        if (!v6)
        {
          continue;
        }
      }

      goto LABEL_4;
    }

    v9 = sub_2393DCD50(v14, a3);
    v6 = v9;
    if (v9)
    {
      if (v9 != 33)
      {
        goto LABEL_4;
      }

      *a3 = 0;
    }

    if (v12 == 1 && *a3 == 1)
    {
      v10 = sub_2393D9044(0xDu);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *v11 = 0;
        _os_log_impl(&dword_238DAE000, v10, OS_LOG_TYPE_ERROR, "Spec violation! InvokeResponse has suppressResponse=true, and moreChunkedMessages=true", v11, 2u);
      }

      if (sub_2393D5398(1u))
      {
        sub_2393D5320(13, 1, "Spec violation! InvokeResponse has suppressResponse=true, and moreChunkedMessages=true");
      }

      v6 = 0x15100000000;
      v7 = 35;
    }

    else
    {
      v6 = sub_2393DD104(v14);
      v7 = v6;
    }
  }

LABEL_5:
  if (v18)
  {
    sub_2393D96C8(v18);
  }

  return v6 & 0xFFFFFFFF00000000 | v7;
}

uint64_t sub_2394C62AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(a1 + 371);
  result = *(a1 + 32);
  if (v8 == 1)
  {
    if (result)
    {
      v11[2] = v3;
      v11[3] = v4;
      v11[0] = a2;
      v11[1] = a3;
      return (*(*result + 32))(result, a1, v11);
    }
  }

  else if (result)
  {
    v10 = *(*result + 24);

    return v10();
  }

  return result;
}

void *sub_2394C6350(uint64_t a1)
{
  result = *(a1 + 352);
  if (result)
  {
    if (*(a1 + 371) == 1)
    {
      if (*(a1 + 32))
      {
        result = (*(*result + 48))(&v4 + 6);
        if (BYTE6(v4) == 1)
        {
          while (1)
          {
            WORD2(v4) = 0;
            WORD2(v4) = *sub_238EAB248(&v4 + 6, v3);
            (*(**(a1 + 32) + 24))(*(a1 + 32), a1, &v4 + 4);
            result = (*(**(a1 + 352) + 48))(&v4);
            BYTE6(v4) = v4;
            if (v4 != 1)
            {
              break;
            }

            v5 = WORD1(v4);
          }
        }
      }
    }
  }

  return result;
}

unint64_t sub_2394C6454(uint64_t a1, int *a2)
{
  v52 = *MEMORY[0x277D85DE8];
  v46 = 0;
  v45 = 0;
  v43 = 0;
  v44 = 0;
  sub_2393C5AAC(v42);
  v40[0] = 0;
  v4 = *(a1 + 362);
  sub_2393DD178(v39);
  v5 = sub_2393DB490(a2, v39);
  v6 = v5;
  if (v5 == 33)
  {
    sub_2393DD178(buf);
    sub_2393DD178(v38);
    v6 = sub_2393DB43C(a2, buf);
    if (v6)
    {
      return v6;
    }

    v6 = sub_2393DB6C8(buf, v38);
    if (v6)
    {
      return v6;
    }

    v6 = sub_2393DB984(v38, &v45);
    if (v6)
    {
      return v6;
    }

    v6 = sub_2393DB994(v38, &v46 + 1);
    if (v6)
    {
      return v6;
    }

    v6 = sub_2393DB840(v38, &v46);
    if (v6)
    {
      return v6;
    }

    sub_2393DB910(buf, v42);
    v35 = v49;
    v36 = v50;
    v37 = v51;
    v33 = *buf;
    v34 = v48;
    v6 = sub_2394C6D2C(&v33, v40, v4 > 1);
    if (v6)
    {
      return v6;
    }

    v32 = sub_2393D9044(0xDu);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67110144;
      *&buf[4] = v45;
      *&buf[8] = 1024;
      *&buf[10] = HIWORD(HIDWORD(v46));
      *&buf[14] = 1024;
      LODWORD(v48) = WORD2(v46);
      WORD2(v48) = 1024;
      *(&v48 + 6) = WORD1(v46);
      WORD5(v48) = 1024;
      HIDWORD(v48) = v46;
      _os_log_impl(&dword_238DAE000, v32, OS_LOG_TYPE_DEFAULT, "Received Command Response Data, Endpoint=%u Cluster=0x%04X_%04X Command=0x%04X_%04X", buf, 0x20u);
    }

    if (sub_2393D5398(2u))
    {
      sub_2393D5320(13, 2, "Received Command Response Data, Endpoint=%u Cluster=0x%04X_%04X Command=0x%04X_%04X", v45, HIWORD(HIDWORD(v46)), WORD2(v46), WORD1(v46), v46);
    }

    v12 = 1;
  }

  else
  {
    if (v5)
    {
      v9 = sub_2393D9044(0xDu);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = sub_2393C9138();
        *buf = 136315138;
        *&buf[4] = v10;
        _os_log_impl(&dword_238DAE000, v9, OS_LOG_TYPE_ERROR, "Received malformed Command Response, err=%s", buf, 0xCu);
      }

      if (sub_2393D5398(1u))
      {
        v11 = sub_2393C9138();
        sub_2393D5320(13, 1, "Received malformed Command Response, err=%s", v11);
      }

      if (v6)
      {
        return v6;
      }
    }

    else
    {
      sub_2393DD178(buf);
      v6 = sub_2393DB6C8(v39, buf);
      if (v6)
      {
        return v6;
      }

      v6 = sub_2393DB994(buf, &v46 + 1);
      if (v6)
      {
        return v6;
      }

      v6 = sub_2393DB840(buf, &v46);
      if (v6)
      {
        return v6;
      }

      v6 = sub_2393DB984(buf, &v45);
      if (v6)
      {
        return v6;
      }

      sub_2393DD178(v38);
      sub_2393DB490(v39, v38);
      v6 = sub_2393DD458(v38, &v43);
      if (v6)
      {
        return v6;
      }

      v35 = v39[2];
      v36 = v39[3];
      v37 = v39[4];
      v33 = v39[0];
      v34 = v39[1];
      v6 = sub_2394C6D2C(&v33, v40, v4 > 1);
      if (v6)
      {
        return v6;
      }

      v7 = sub_2393D9044(0xDu);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67110400;
        *&buf[4] = v45;
        *&buf[8] = 1024;
        *&buf[10] = HIWORD(HIDWORD(v46));
        *&buf[14] = 1024;
        LODWORD(v48) = WORD2(v46);
        WORD2(v48) = 1024;
        *(&v48 + 6) = WORD1(v46);
        WORD5(v48) = 1024;
        HIDWORD(v48) = v46;
        LOWORD(v49) = 1024;
        *(&v49 + 2) = v43;
        _os_log_impl(&dword_238DAE000, v7, OS_LOG_TYPE_DEFAULT, "Received Command Response Status for Endpoint=%u Cluster=0x%04X_%04X Command=0x%04X_%04X Status=0x%x", buf, 0x26u);
      }

      if (sub_2393D5398(2u))
      {
        sub_2393D5320(13, 2, "Received Command Response Status for Endpoint=%u Cluster=0x%04X_%04X Command=0x%04X_%04X Status=0x%x", v45, HIWORD(HIDWORD(v46)), WORD2(v46), WORD1(v46), v46, v43);
      }
    }

    v12 = 0;
  }

  v13 = v40[0];
  if (v40[0] == 1)
  {
    v14 = *(a1 + 352);
    if (v14)
    {
      v15 = sub_238EAB248(v40, v8);
      v6 = (*(*v14 + 24))(v14, *v15);
      if (v6)
      {
        v17 = *(a1 + 24);
        if (v17 && *(v17 + 88) == 1)
        {
          sub_238EA6DC0(v17, buf, v16);
          v18 = (*(**buf + 48))(*buf);
          v20 = v19;
          (*(**buf + 32))(*buf);
          v21 = v20;
        }

        else
        {
          v21 = 0;
          v18 = 0;
        }

        v22 = sub_2393D9044(0xDu);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          v24 = *sub_238EAB248(v40, v23);
          *buf = 67109888;
          *&buf[4] = HIDWORD(v18);
          *&buf[8] = 1024;
          *&buf[10] = v18;
          *&buf[14] = 1024;
          LODWORD(v48) = v21;
          WORD2(v48) = 1024;
          *(&v48 + 6) = v24;
          _os_log_impl(&dword_238DAE000, v22, OS_LOG_TYPE_ERROR, "Received Unexpected Response from remote node <%08X%08X, %d>, commandRef=%u", buf, 0x1Au);
        }

        if (sub_2393D5398(1u))
        {
          v26 = sub_238EAB248(v40, v25);
          sub_2393D5320(13, 1, "Received Unexpected Response from remote node <%08X%08X, %d>, commandRef=%u", HIDWORD(v18), v18, v21, *v26);
        }

        return v6;
      }

      v13 = v40[0];
    }

    else
    {
      v13 = 1;
    }
  }

  if ((v13 & 1) == 0 && v4 <= 1)
  {
    v27 = *(a1 + 352);
    if (v27)
    {
      if ((*(*v27 + 40))(v27) == 1)
      {
        (*(**(a1 + 352) + 48))(buf);
        v40[0] = buf[0];
        if (buf[0] == 1)
        {
          v41 = *&buf[2];
        }
      }
    }
  }

  if (v43 && *(a1 + 371) != 1)
  {
    v29 = sub_2393DD584(&v43);
    sub_2394C62AC(a1, v29, v30);
  }

  else
  {
    LOWORD(v38[0]) = v45;
    v38[1] = HIDWORD(v46);
    v38[2] = v46;
    *buf = v38;
    *&buf[8] = &v43;
    v28 = v42;
    if (!v12)
    {
      v28 = 0;
    }

    *&v48 = v28;
    BYTE8(v48) = v40[0];
    if (v40[0] == 1)
    {
      WORD5(v48) = v41;
    }

    sub_2394C6DC8(a1, buf);
  }

  return 0;
}

uint64_t sub_2394C6B7C(uint64_t a1, uint64_t a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = sub_2393D9044(0xDu);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a2 + 112);
    if (sub_2394703E0(a2))
    {
      v6 = 105;
    }

    else
    {
      v6 = 114;
    }

    *buf = 67109376;
    v12 = v5;
    v13 = 1024;
    v14 = v6;
    _os_log_impl(&dword_238DAE000, v4, OS_LOG_TYPE_DEFAULT, "Time out! failed to receive invoke command response from Exchange: %u%c", buf, 0xEu);
  }

  if (sub_2393D5398(2u))
  {
    v7 = *(a2 + 112);
    v8 = sub_2394703E0(a2);
    v9 = 114;
    if (v8)
    {
      v9 = 105;
    }

    sub_2393D5320(13, 2, "Time out! failed to receive invoke command response from Exchange: %u%c", v7, v9);
  }

  sub_2394C62AC(a1, 0x16200000032, "src/app/CommandSender.cpp");
  *(a1 + 367) = 0;
  sub_2394C59E8(a1, 6);
  return sub_2394C6CC4(a1);
}

uint64_t sub_2394C6CC4(uint64_t a1)
{
  v2 = *(a1 + 371);
  result = *(a1 + 32);
  if (v2 == 1)
  {
    if (result)
    {
      return (*(*result + 40))(result, a1);
    }
  }

  else if (result)
  {
    return (*(*result + 32))(result, a1);
  }

  return result;
}

unint64_t sub_2394C6D2C(int *a1, uint64_t a2, char a3)
{
  v10 = 0;
  v5 = sub_2393DAA4C(a1, &v10);
  if (v5)
  {
    if (v5 == 33)
    {
      if (a3)
      {
        v6 = 0x2D00000000;
        v7 = 47;
      }

      else
      {
        v7 = 0;
        v6 = 0;
        *a2 = 0;
      }
    }

    else
    {
      v6 = v5 & 0xFFFFFFFF00000000;
      v7 = v5;
    }
  }

  else
  {
    v7 = 0;
    v6 = 0;
    v8 = v10;
    *a2 = 1;
    *(a2 + 2) = v8;
  }

  return v6 | v7;
}

uint64_t sub_2394C6DC8(uint64_t a1, void *a2)
{
  v4 = *(a1 + 371);
  result = *(a1 + 32);
  if (v4 == 1)
  {
    if (result)
    {
      return (*(*result + 16))(result, a1, a2);
    }
  }

  else if (result)
  {
    return (*(*result + 16))(result, a1, *a2, a2[1], a2[2]);
  }

  return result;
}

uint64_t sub_2394C6E40(uint64_t a1, _WORD *a2)
{
  if (*(a1 + 366))
  {
    v2 = 0x1F400000000;
    v3 = 3;
  }

  else
  {
    v4 = *a2;
    if (*a2)
    {
      if (*(a1 + 352))
      {
        *(a1 + 364) = v4;
        *(a1 + 370) = *a2 > 1u;
      }

      else if (v4 != 1)
      {
        v2 = 0x1FE00000000;
        v3 = 108;
        return v3 | v2;
      }

      v2 = 0;
      v3 = 0;
    }

    else
    {
      v2 = 0x1F500000000;
      v3 = 47;
    }
  }

  return v3 | v2;
}

unint64_t sub_2394C6EC8(uint64_t a1, unsigned __int16 *a2, _BYTE *a3)
{
  v6 = sub_2394C5640(a1);
  if (!v6)
  {
    if (*(a1 + 366) == 2 && *(a1 + 370) == 1)
    {
      v9 = *(a1 + 371);
    }

    else
    {
      v9 = 0;
      if (!*(a1 + 366))
      {
        goto LABEL_10;
      }
    }

    if ((v9 & 1) == 0)
    {
      v8 = 0x20C00000000;
LABEL_9:
      LODWORD(v6) = 3;
      return v8 | v6;
    }

LABEL_10:
    if (*(a1 + 362) >= *(a1 + 364))
    {
      v8 = 0x20E00000000;
      LODWORD(v6) = 187;
      return v8 | v6;
    }

    if (*(a1 + 370) == 1)
    {
      if (!*(a1 + 352))
      {
        v8 = 0x21200000000;
        goto LABEL_9;
      }

      if (*a3 != 1)
      {
        v8 = 0x21300000000;
        goto LABEL_23;
      }

      v10 = sub_238EAB248(a3, v7);
      if ((*(**(a1 + 352) + 32))(*(a1 + 352), *v10))
      {
        v8 = 0x21500000000;
LABEL_23:
        LODWORD(v6) = 47;
        return v8 | v6;
      }
    }

    v12 = sub_2393DB564((a1 + 80));
    v6 = *(a1 + 80);
    if (!v6)
    {
      v13 = sub_2393DB93C(v12);
      v6 = *v12;
      if (!*v12)
      {
        v6 = sub_2393DBB7C(v13, a2);
        if (!v6)
        {
          if (a3[4] != 1 || (v6 = sub_2393C8CE0(v12[2], 1uLL, 21, (a1 + 204)), !v6))
          {
            sub_2394C59E8(a1, 1);
            LODWORD(v6) = 0;
            v8 = 0;
            return v8 | v6;
          }
        }
      }
    }
  }

  v8 = v6 & 0xFFFFFFFF00000000;
  return v8 | v6;
}

unint64_t sub_2394C7088(uint64_t a1, unsigned __int8 *a2)
{
  if (*(a1 + 370) == 1)
  {
    if (!*(a1 + 352))
    {
      v5 = 0x22D00000000;
      v7 = 3;
      return v7 | v5;
    }

    if (a2[4] != 1)
    {
      v5 = 0x22E00000000;
      goto LABEL_9;
    }

    v4 = sub_238EAB248(a2 + 4, a2);
    if ((*(**(a1 + 352) + 32))(*(a1 + 352), *v4))
    {
      v5 = 0x23000000000;
LABEL_9:
      v7 = 47;
      return v7 | v5;
    }
  }

  v6 = sub_2394C714C(a1, a2);
  v5 = v6 & 0xFFFFFFFF00000000;
  v7 = v6;
  return v7 | v5;
}

unint64_t sub_2394C714C(uint64_t a1, unsigned __int8 *a2)
{
  if (*(a1 + 366) == 1)
  {
    if (a2[8] == 1 && (v4 = sub_2393C8DE0(*(a1 + 128), *(a1 + 204)), v4) || a2[4] == 1 && (v5 = sub_238EAB248(a2 + 4, a2), v4 = sub_2393DB974(a1 + 112, *v5), v4) || (v4 = sub_2393DA87C(a1 + 112), v4))
    {
      v6 = v4 & 0xFFFFFFFF00000000;
    }

    else
    {
      sub_2394C59E8(a1, 2);
      ++*(a1 + 362);
      v9 = *(a1 + 352);
      if (v9 && a2[4] == 1)
      {
        v10 = sub_238EAB248(a2 + 4, v8);
        (*(*v9 + 16))(v9, *v10);
      }

      if (*a2 == 1)
      {
        sub_2394C741C(a1, a2);
      }

      v6 = 0;
      LODWORD(v4) = 0;
    }
  }

  else
  {
    v6 = 0x24B00000000;
    LODWORD(v4) = 3;
  }

  return v4 | v6;
}

unint64_t sub_2394C7280(uint64_t a1, unsigned __int16 *a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_2394C5640(a1);
  v9 = v8;
  if (!v8)
  {
    sub_2394C74C4(v22, a1);
    v19[0] = *(a4 + 4);
    if (v19[0] == 1)
    {
      v20 = *(a4 + 6);
    }

    v21 = 0;
    v11 = sub_2394C6EC8(a1, a2, v19);
    if (v11)
    {
      goto LABEL_6;
    }

    if (*(a1 + 366) != 1 || (v12 = *(a1 + 128)) == 0)
    {
      v10 = 0x23F00000000;
      LODWORD(v11) = 3;
      goto LABEL_17;
    }

    v11 = (*(*a3 + 24))(a3, v12, 1);
    if (v11)
    {
      goto LABEL_6;
    }

    v14[0] = *a4;
    if (v14[0] == 1)
    {
      v15 = *(a4 + 2);
    }

    v16 = *(a4 + 4);
    if (v16 == 1)
    {
      v17 = *(a4 + 6);
    }

    v18 = 0;
    v11 = sub_2394C7088(a1, v14);
    if (v11)
    {
LABEL_6:
      v10 = v11 & 0xFFFFFFFF00000000;
    }

    else
    {
      LODWORD(v11) = 0;
      v10 = 0;
      v23 = 0;
    }

LABEL_17:
    sub_2394C7550(v22);
    v9 = v11;
    return v10 | v9;
  }

  v10 = v8 & 0xFFFFFFFF00000000;
  return v10 | v9;
}

uint64_t sub_2394C73F4(uint64_t a1)
{
  if (*(a1 + 366) == 1)
  {
    return *(a1 + 128);
  }

  else
  {
    return 0;
  }
}

MTRScenesManagementClusterRemoveSceneParams *sub_2394C741C(uint64_t a1, unsigned __int8 *a2)
{
  v5 = *(a1 + 200);
  result = (a1 + 200);
  v6 = *a2;
  if (v5)
  {
    if (!*a2)
    {
      return result;
    }

    v7 = sub_238EAB248(result, a2);
    result = sub_238E0A934(a2, v8);
    isa_low = LOWORD(result->super.isa);
    if (isa_low >= *v7)
    {
      LOWORD(isa_low) = *v7;
    }

    *(a1 + 200) = 1;
  }

  else
  {
    LOBYTE(result->super.isa) = v6;
    if (!v6)
    {
      return result;
    }

    LOWORD(isa_low) = *(a2 + 1);
  }

  *(a1 + 202) = isa_low;
  return result;
}

const char *sub_2394C749C(uint64_t a1)
{
  v1 = *(a1 + 366);
  if (v1 > 6)
  {
    return "N/A";
  }

  else
  {
    return off_278A830D0[v1];
  }
}

uint64_t *sub_2394C74C4(uint64_t *a1, uint64_t a2)
{
  *a1 = a2;
  sub_2393C7B90((a1 + 1));
  *(a1 + 73) = 0;
  v3 = *a1;
  if (*(*a1 + 369) == 1 && (*(v3 + 366) | 2) == 2 && !*(v3 + 80) && !*(v3 + 48))
  {
    v4 = *(v3 + 64);
    v5 = *v4;
    v6 = v4[1];
    v7 = v4[2];
    *(a1 + 7) = v4[3];
    *(a1 + 5) = v7;
    *(a1 + 3) = v6;
    *(a1 + 1) = v5;
    *(a1 + 72) = *(v3 + 366);
    *(a1 + 73) = 1;
  }

  return a1;
}

uint64_t *sub_2394C7550(uint64_t *a1)
{
  if (*(a1 + 73) == 1 && *(*a1 + 366) == 1)
  {
    v2 = sub_2393D9044(0xDu);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *v9 = 0;
      _os_log_impl(&dword_238DAE000, v2, OS_LOG_TYPE_INFO, "Rolling back response", v9, 2u);
    }

    if (sub_2393D5398(3u))
    {
      sub_2393D5320(13, 3, "Rolling back response");
    }

    sub_2393D06DC((*a1 + 80));
    v3 = *a1;
    v4 = *(*a1 + 64);
    v5 = *(a1 + 1);
    v6 = *(a1 + 3);
    v7 = *(a1 + 7);
    v4[2] = *(a1 + 5);
    v4[3] = v7;
    *v4 = v5;
    v4[1] = v6;
    sub_2393D06DC((v3 + 48));
    sub_2394C59E8(*a1, *(a1 + 72));
    *(a1 + 73) = 0;
  }

  return a1;
}

uint64_t sub_2394C763C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

unint64_t sub_2394C7688(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v21 = *MEMORY[0x277D85DE8];
  if ((*(*a1 + 72))(a1))
  {
    if (a2)
    {
      (*(*a1 + 48))(buf, a1);
      v7 = sub_238DE36B8(buf, v6);
      v15[0] = *a3;
      if (v15[0] == 1)
      {
        v16 = *(a3 + 4);
      }

      v8 = sub_2394C5B48(a2, v7, v15);
      v9 = v8;
      v10 = v8 & 0xFFFFFFFF00000000;
      if (buf[0] == 1)
      {
        (*(**&v18[4] + 32))(*&v18[4]);
      }

      v11 = v9;
    }

    else
    {
      v10 = 0x2C00000000;
      v11 = 47;
    }
  }

  else
  {
    v12 = sub_2393D9044(0);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *v18 = sub_2393C9138();
      *&v18[8] = 2080;
      *&v18[10] = "src/app/DeviceProxy.cpp";
      v19 = 1024;
      v20 = 43;
      _os_log_impl(&dword_238DAE000, v12, OS_LOG_TYPE_ERROR, "%s at %s:%d", buf, 0x1Cu);
    }

    if (sub_2393D5398(1u))
    {
      v13 = sub_2393C9138();
      sub_2393D5320(0, 1, "%s at %s:%d", v13, "src/app/DeviceProxy.cpp", 43);
    }

    v10 = 0x2B00000000;
    v11 = 3;
  }

  return v10 | v11;
}

uint64_t sub_2394C78AC(uint64_t a1, void *a2)
{
  v10[0] = 0;
  (*(*a1 + 48))(&v8);
  sub_2393DECA4(v10, &v8);
  if (v8 == 1)
  {
    (*(*v9 + 32))(v9);
  }

  if (v10[0] == 1)
  {
    v4 = sub_238EA9094(v10, v3);
    *a2 = sub_239495304(*v4) + 216;
    a2[1] = 16;
    if (v10[0])
    {
      (*(*v11 + 32))(v11);
    }

    v5 = 0;
    v6 = 0;
  }

  else
  {
    v6 = 0x3500000000;
    v5 = 3;
  }

  return v5 | v6;
}

uint64_t sub_2394C79D0(uint64_t a1)
{
  *a1 = &unk_284BBD5A8;
  *(a1 + 8) = &unk_284BBD670;
  *(a1 + 16) = &unk_284BBD6C0;
  *(a1 + 24) = &unk_284BBD6E8;
  *(a1 + 32) = &unk_284BBD710;
  *(a1 + 40) = &unk_284BBD748;
  *(a1 + 48) = &unk_284BBD780;
  *(a1 + 56) = 0;
  *(a1 + 64) = &unk_284BBD7C0;
  *(a1 + 72) = &unk_284BBD7F8;
  *(a1 + 80) = &unk_284BBD830;
  *(a1 + 120) = 0u;
  *(a1 + 129) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = a1 + 112;
  *(a1 + 128) = a1 + 112;
  *(a1 + 152) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0;
  *(a1 + 168) = 0u;
  *(a1 + 176) = a1 + 168;
  *(a1 + 184) = a1 + 168;
  for (i = 208; i != 1296; i += 272)
  {
    sub_2394CCDC4(a1 + i);
  }

  sub_2394D3368(a1 + 1296, a1);
  *(a1 + 1457) = 0u;
  *(a1 + 1432) = 0u;
  *(a1 + 1448) = 0u;
  *(a1 + 1416) = 0u;
  *(a1 + 1456) = a1 + 1440;
  *(a1 + 1448) = a1 + 1440;
  *(a1 + 1496) = 0u;
  *(a1 + 1512) = 0u;
  *(a1 + 1480) = 0u;
  *(a1 + 1528) = 0;
  *(a1 + 1512) = a1 + 1496;
  *(a1 + 1504) = a1 + 1496;
  *(a1 + 1568) = 0u;
  *(a1 + 1552) = 0u;
  *(a1 + 1536) = 0u;
  *(a1 + 1584) = 0;
  *(a1 + 1568) = a1 + 1552;
  *(a1 + 1560) = a1 + 1552;
  *(a1 + 1640) = 0;
  *(a1 + 1608) = 0u;
  *(a1 + 1624) = 0u;
  *(a1 + 1592) = 0u;
  *(a1 + 1624) = a1 + 1608;
  *(a1 + 1616) = a1 + 1608;
  *(a1 + 1668) = 0;
  *(a1 + 1672) = 0;
  *(a1 + 1664) = 0;
  *(a1 + 1648) = 0u;
  *(a1 + 1705) = 0u;
  *(a1 + 1696) = 0u;
  *(a1 + 1680) = 0u;
  return a1;
}

void *sub_2394C7C20()
{
  if ((byte_2814F7800 & 1) == 0)
  {
    byte_2814F7800 = 1;
    sub_2394C79D0(&unk_2814F7140);
  }

  return &unk_2814F7140;
}

unint64_t sub_2394C7C60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (***a7)())
{
  if (!a3)
  {
    v10 = 0xC300000000;
LABEL_10:
    LODWORD(v9) = 47;
    return v10 | v9;
  }

  if (!a2)
  {
    v10 = 0xC400000000;
    goto LABEL_10;
  }

  if (!a4)
  {
    v10 = 0xC500000000;
    goto LABEL_10;
  }

  *(a1 + 1720) = 1;
  *(a1 + 88) = a2;
  *(a1 + 1680) = a3;
  *(a1 + 1688) = a5;
  *(a1 + 1696) = a6;
  *(a1 + 1416) = a4;
  v9 = sub_2394AAB28(a3, a1 + 48);
  if (v9 || (v9 = sub_2394720A8(*(a1 + 88), 0x10000, a1), v9))
  {
    v10 = v9 & 0xFFFFFFFF00000000;
  }

  else
  {
    if (!a7)
    {
      a7 = sub_2393B64C0();
    }

    sub_2394D33D4(a1 + 1296, a7);
    sub_2393DD5BC();
    LODWORD(v9) = 0;
    v10 = 0;
    *(a1 + 1720) = 2;
  }

  return v10 | v9;
}

uint64_t sub_2394C7D48(uint64_t result)
{
  if (*(result + 1720))
  {
    v1 = result;
    v2 = *(*(*(result + 88) + 88) + 24);
    (*(*v2 + 72))(v2, sub_2394C7F1C, v1);
    v3 = sub_2394DEB00();
    sub_2394DEB0C(v3);
    sub_2393D6A10((v1 + 112), v1 + 96, sub_2394CD354);
    v8[0] = v1;
    sub_2393D6A10((v1 + 168), v8, sub_2394CD370);
    sub_2393D6A10((v1 + 168), v1 + 152, sub_2394CD394);
    sub_2393D6A10((v1 + 1608), v1 + 1592, sub_2394CD3B0);
    sub_23947632C("src/app/InteractionModelEngine.cpp", 423);
    v9[0] = 0;
    LOBYTE(v8[0]) = 0;
    sub_2394C857C(v1, v9, v8);
    v4 = *(v1 + 1648);
    if (v4)
    {
      do
      {
        v5 = *(v4 + 192);
        *(v4 + 192) = 0;
        *(v4 + 200) = 0;
        v4 = v5;
      }

      while (v5);
    }

    *(v1 + 1648) = 0;
    v6 = (v1 + 473);
    v7 = 1088;
    do
    {
      if (*v6)
      {
        sub_2393BBC74((v6 - 265));
      }

      v6 += 272;
      v7 -= 272;
    }

    while (v7);
    sub_2394D340C(v1 + 1296);
    sub_2393D6A10((v1 + 1440), v1 + 1424, sub_2394CD3CC);
    sub_2393D6A10((v1 + 1496), v1 + 1480, sub_2394CD3E8);
    sub_2393D6A10((v1 + 1552), v1 + 1536, sub_2394CD404);
    result = sub_2394721BC(*(v1 + 88), 0x10000);
    *(v1 + 1688) = 0;
    *(v1 + 1720) = 0;
  }

  return result;
}

void sub_2394C7F1C(uint64_t a1, uint64_t a2)
{
  v20 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    *(a2 + 1672) = 0;
    *v17 = 0u;
    *v18 = 0u;
    v3 = (*(**(a2 + 1696) + 16))(*(a2 + 1696));
    v4 = 0;
    while (1)
    {
      if (!(*(*v3 + 24))(v3, &v15))
      {
LABEL_26:
        if ((v4 & 1) == 0)
        {
          *(a2 + 1668) = 0;
        }

        goto LABEL_28;
      }

      while (1)
      {
        *buf = &v15;
        if (sub_2393D6A10((a2 + 1608), buf, sub_2394CE140) != 1)
        {
          break;
        }

        v5 = sub_2393D9044(0x23u);
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109120;
          *&buf[4] = v16;
          _os_log_impl(&dword_238DAE000, v5, OS_LOG_TYPE_DEFAULT, "Skip resuming live subscriptionId %u", buf, 8u);
        }

        if (sub_2393D5398(2u))
        {
          sub_2393D5320(35, 2, "Skip resuming live subscriptionId %u", v16);
        }

        if (((*(*v3 + 24))(v3, &v15) & 1) == 0)
        {
          goto LABEL_26;
        }
      }

      v6 = sub_2393D52C4(0x90uLL);
      if (!v6)
      {
        break;
      }

      v7 = v6;
      sub_2394DB6A8(v6);
      v4 = 1;
      if (sub_2394DBA78(v8, *(a2 + 1688), &v15))
      {
        v9 = sub_2393D9044(0x23u);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109120;
          *&buf[4] = v16;
          _os_log_impl(&dword_238DAE000, v9, OS_LOG_TYPE_DEFAULT, "Failed to ResumeSubscription 0x%x", buf, 8u);
        }

        if (sub_2393D5398(2u))
        {
          sub_2393D5320(35, 2, "Failed to ResumeSubscription 0x%x", v16);
        }

        v10 = v7[15];
        if (v10)
        {
          v7[15] = 0;
          v10(v7 + 13);
        }

        v11 = v7[10];
        if (v11)
        {
          v7[10] = 0;
          v11(v7 + 8);
        }

        v12 = v7[6];
        if (v12)
        {
          j__free(v12);
          v7[6] = 0;
        }

        v13 = v7[4];
        if (v13)
        {
          j__free(v13);
          v7[4] = 0;
        }

        j__free(v7);
        goto LABEL_28;
      }
    }

    v14 = sub_2393D9044(0x23u);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_238DAE000, v14, OS_LOG_TYPE_DEFAULT, "Failed to create SubscriptionResumptionSessionEstablisher", buf, 2u);
    }

    if (sub_2393D5398(2u))
    {
      sub_2393D5320(35, 2, "Failed to create SubscriptionResumptionSessionEstablisher");
    }

LABEL_28:
    (*(*v3 + 32))(v3);
    if (v18[0])
    {
      j__free(v18[0]);
      v18[0] = 0;
    }

    if (v17[0])
    {
      j__free(v17[0]);
    }
  }
}

void sub_2394C8284(void *a1)
{
  sub_23947632C("src/app/InteractionModelEngine.cpp", 423);
  v3[0] = 0;
  v2[0] = 0;
  sub_2394C857C(a1, v3, v2);
}

uint64_t sub_2394C82DC(uint64_t a1, char a2)
{
  v3 = 0;
  v4[0] = a2;
  v5 = &v3;
  sub_2393D6A10((a1 + 1608), v4, sub_2394CD420);
  return v3;
}

uint64_t sub_2394C8328(uint64_t a1, char a2, char a3)
{
  v4 = 0;
  v5[0] = a2;
  v5[1] = a3;
  v6 = &v4;
  sub_2393D6A10((a1 + 1608), v5, sub_2394CD448);
  return v4;
}

uint64_t sub_2394C8378(uint64_t a1, unsigned int a2)
{
  if (*(a1 + 1592) <= a2)
  {
    return 0;
  }

  v10 = v2;
  v11 = v3;
  v6 = 0;
  v7 = a2;
  v5 = 0;
  v8 = &v6;
  v9 = &v5;
  sub_2393D6A10((a1 + 1608), &v7, sub_2394CD4B4);
  return v5;
}

_BYTE *sub_2394C83E0(uint64_t a1, int a2)
{
  v2 = 0;
  v3 = (a1 + 473);
  v4 = 1088;
  while (!*v3)
  {
LABEL_5:
    v3 += 272;
    v4 -= 272;
    if (!v4)
    {
      return 0;
    }
  }

  if (v2 != a2)
  {
    ++v2;
    goto LABEL_5;
  }

  return v3 - 265;
}

uint64_t sub_2394C841C(uint64_t result)
{
  v1 = result;
  LODWORD(result) = 0;
  for (i = 473; i != 1561; i += 272)
  {
    if (*(v1 + i))
    {
      result = (result + 1);
    }

    else
    {
      result = result;
    }
  }

  return result;
}

uint64_t sub_2394C8444(uint64_t a1, uint64_t a2, int a3)
{
  sub_23947632C("src/app/InteractionModelEngine.cpp", 393);
  v6 = *(a1 + 1648);
  if (v6)
  {
    v7 = 16;
    while (1)
    {
      v8 = v6;
      v6 = *(v6 + 192);
      if (*(v8 + 80) == 1 && *(v8 + 60) == a3 && *(v8 + 72) == *(a2 + 8) && *(v8 + 64) == *a2)
      {
        break;
      }

      if (!v6)
      {
        v9 = 0x19700000000;
        return v7 | v9;
      }
    }

    sub_2394D7E80(v8, 0, 0, 1);
    v9 = 0;
    v7 = 0;
  }

  else
  {
    v9 = 0x19700000000;
    v7 = 16;
  }

  return v7 | v9;
}

void sub_2394C8510(void *a1, char a2, uint64_t a3)
{
  sub_23947632C("src/app/InteractionModelEngine.cpp", 412);
  v8[0] = 1;
  v8[1] = a2;
  v6[0] = 1;
  v7 = a3;
  sub_2394C857C(a1, v8, v6);
}

void sub_2394C857C(void *result, _BYTE *a2, _BYTE *a3)
{
  v3 = result[206];
  while (v3)
  {
    v6 = v3;
    v3 = *(v3 + 192);
    if (*(v6 + 80) == 1)
    {
      v7 = *a2 == 1 && LOBYTE(sub_238DE36D8(a2, a2)->super.isa) != *(v6 + 72);
      v8 = *a3 == 1 && *sub_238DE36B8(a3, a2) != *(v6 + 64);
      if (!v7 && !v8)
      {
        sub_2394D7E80(v6, 0, 0, 1);
      }
    }
  }
}

void sub_2394C8644(void *a1, char a2)
{
  sub_23947632C("src/app/InteractionModelEngine.cpp", 417);
  v5[0] = 1;
  v5[1] = a2;
  v4[0] = 0;
  sub_2394C857C(a1, v5, v4);
}

uint64_t sub_2394C86D8(uint64_t a1, char a2, uint64_t a3)
{
  v4 = 0;
  v5[0] = a2;
  v6 = a3;
  v7 = &v4;
  sub_2393D6A10((a1 + 1608), v5, sub_2394CD51C);
  return v4;
}

uint64_t sub_2394C8724(uint64_t a1, char a2, uint64_t a3)
{
  v4 = 0;
  v5[0] = a2;
  v6 = a3;
  v7 = &v4;
  sub_2393D6A10((a1 + 1544), v5, sub_2394CD51C);
  return v4;
}

uint64_t sub_2394C8770(uint64_t a1, int a2, uint64_t a3)
{
  v5 = (*(**(a1 + 1696) + 16))(*(a1 + 1696));
  if (!v5)
  {
    return 1;
  }

  v6 = v5;
  *v12 = 0u;
  *v13 = 0u;
  do
  {
    v7 = (*(*v6 + 24))(v6, &v10);
    if (!v7)
    {
      break;
    }
  }

  while (v11 != a2 || v10 != a3);
  (*(*v6 + 32))(v6);
  if (v13[0])
  {
    j__free(v13[0]);
    v13[0] = 0;
  }

  if (v12[0])
  {
    j__free(v12[0]);
  }

  return v7;
}

uint64_t sub_2394C887C(uint64_t a1, char a2)
{
  v3 = 0;
  v4[0] = a2;
  v5 = &v3;
  sub_2393D6A10((a1 + 1608), v4, sub_2394CD62C);
  return v3;
}

uint64_t sub_2394C88C8(uint64_t a1, char a2)
{
  v3 = 0;
  v4[0] = a2;
  v5 = &v3;
  sub_2393D6A10((a1 + 1544), v4, sub_2394CD62C);
  return v3;
}

void sub_2394C891C(uint64_t a1, void (***a2)(void))
{
  if (a2)
  {
    v4 = sub_2393D69E8((a1 + 16), a2);
    if (!v4)
    {
      sub_239533344();
    }

    v5 = v4;
    *v4 = 0;
    (**a2)(a2);
    j__free(a2);
    if (*(a1 + 40))
    {
      *(a1 + 48) = 1;
    }

    else
    {
      v6 = v5[2];
      *(v5[1] + 16) = v6;
      *(v6 + 8) = v5[1];
      j__free(v5);
    }

    --*a1;
  }
}

void sub_2394C89D4()
{
  v0 = sub_2393D9044(0x1Bu);
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315650;
    v2 = "src/app/InteractionModelEngine.cpp";
    v3 = 1024;
    v4 = 549;
    v5 = 2080;
    v6 = "false";
    _os_log_impl(&dword_238DAE000, v0, OS_LOG_TYPE_ERROR, "VerifyOrDie failure at %s:%d: %s", buf, 0x1Cu);
  }

  if (sub_2393D5398(1u))
  {
    sub_2393D5320(27, 1, "VerifyOrDie failure at %s:%d: %s", "src/app/InteractionModelEngine.cpp", 549, "false");
  }

  abort();
}

void sub_2394C8AA4(uint64_t a1, void (***a2)(void))
{
  if (*(a1 + 1328) == a2)
  {
    v3 = *(a1 + 1320) - 1;
  }

  else
  {
    v3 = 0;
  }

  *(a1 + 1320) = v3;
  sub_2394C891C(a1 + 1592, a2);

  sub_2394C8B00(a1);
}

void sub_2394C8B00(uint64_t result)
{
  v9 = *MEMORY[0x277D85DE8];
  if ((*(result + 1672) & 1) == 0 && sub_2394C8C68(result))
  {
    *(result + 1672) = 1;
    v2 = *(result + 1668);
    if (v2 <= 0xA)
    {
      v3 = 300000 * sub_2393D64AC(v2) + 300000;
    }

    else
    {
      v3 = 21600000;
    }

    v4 = *(*(*(result + 88) + 88) + 24);
    (*(*v4 + 40))(v4, v3, sub_2394C7F1C, result);
    v5 = *(result + 1668) + 1;
    *(result + 1668) = v5;
    v6 = sub_2393D9044(0x23u);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v8 = v5;
      _os_log_impl(&dword_238DAE000, v6, OS_LOG_TYPE_DEFAULT, "Schedule subscription resumption when failing to establish session, Retries: %u", buf, 8u);
    }

    if (sub_2393D5398(2u))
    {
      sub_2393D5320(35, 2, "Schedule subscription resumption when failing to establish session, Retries: %u", *(result + 1668));
    }
  }
}

uint64_t sub_2394C8C68(uint64_t a1)
{
  v2 = *(a1 + 1696);
  if (!v2)
  {
    return 0;
  }

  *v8 = 0u;
  *v7 = 0u;
  v3 = (*(*v2 + 16))(v2);
  do
  {
    v4 = (*(*v3 + 24))(v3, v6);
    if (!v4)
    {
      break;
    }

    v9 = v6;
  }

  while (sub_2393D6A10((a1 + 1608), &v9, sub_2394CE158) == 1);
  (*(*v3 + 32))(v3);
  if (v8[0])
  {
    j__free(v8[0]);
    v8[0] = 0;
  }

  if (v7[0])
  {
    j__free(v7[0]);
  }

  return v4;
}

uint64_t sub_2394C8D84(uint64_t a1)
{
  v1 = *(a1 + 1668);
  if (v1 <= 0xA)
  {
    return 300 * sub_2393D64AC(v1) + 300;
  }

  else
  {
    return 21600;
  }
}

uint64_t sub_2394C8DC0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v11 = a1;
  *buf = a1;
  v8 = sub_2394C8E8C((a1 + 96), buf, &v11);
  if (v8)
  {
    sub_2393B5B28(v8, a2, a4, a5);
    return 0;
  }

  else
  {
    v10 = sub_2393D9044(0x23u);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_238DAE000, v10, OS_LOG_TYPE_DEFAULT, "no resource for Invoke interaction", buf, 2u);
    }

    if (sub_2393D5398(2u))
    {
      sub_2393D5320(35, 2, "no resource for Invoke interaction");
    }

    return 156;
  }
}

void *sub_2394C8E8C(unint64_t *a1, void *a2, void *a3)
{
  v6 = sub_2393D52C4(0x280uLL);
  v7 = v6;
  if (v6)
  {
    if (*a2)
    {
      v8 = *a2 + 24;
    }

    else
    {
      v8 = 0;
    }

    if (*a3)
    {
      v9 = *a3 + 32;
    }

    else
    {
      v9 = 0;
    }

    sub_2394CD6DC(v6, v8, v9);
    v10 = sub_2393D52C4(0x18uLL);
    if (v10)
    {
      *v10 = v7;
      v10[1] = a1 + 2;
      v10[2] = 0;
      v11 = a1[4];
      v10[2] = v11;
      *(v11 + 8) = v10;
      a1[4] = v10;
      v12 = a1[1];
      v13 = *a1 + 1;
      *a1 = v13;
      if (v13 > v12)
      {
        a1[1] = v13;
      }
    }

    else
    {
      return 0;
    }
  }

  return v7;
}

unint64_t sub_2394C8F40(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, void *a5)
{
  sub_2393C5AAC(v30);
  sub_2393DD1C8(a3, v30);
  *a4 = 0;
  *a5 = 0;
  result = sub_2393C6FD0(v30, 256);
  if (result)
  {
LABEL_2:
    if (result == 33)
    {
      return 0;
    }
  }

  else
  {
    while (1)
    {
      sub_2393DD178(v29);
      v27 = -1;
      v26 = -1;
      v28 = 0;
      result = sub_2393DD044(v29, v30);
      if (result)
      {
        break;
      }

      result = sub_2393DAC60(v29, &v26);
      if (result)
      {
        break;
      }

      if (v27 == 0xFFFF || v26 == -1 || HIDWORD(v26) == -1)
      {
        v22 = &v26;
        v23 = -1;
        v25 = -1;
        v24 = 0;
        sub_23947632C("src/app/InteractionModelEngine.cpp", 1944);
        sub_2394E08B4(&v16, *(a1 + 1704), &v22);
        v13 = 0;
        v15 = 0;
        v14 = 0;
        v12[0] = 0;
        v12[8] = 0;
        while (sub_2394E0EF8(&v16, &v13, v12))
        {
          if (sub_2394C915C(&v13, a2, v12))
          {
            *a4 = 1;
            break;
          }
        }

        sub_2393D6E84(&v21);
        sub_2393D6E84(&v20);
        sub_2393D6E84(&v19);
      }

      else
      {
        v16 = v27;
        v18 = v26;
        v17 = 0;
        v22 = sub_2394C91EC(a1, &v16);
        LOBYTE(v23) = v11;
        if (sub_2394C915C(&v16, a2, &v22))
        {
          *a4 = 1;
        }
      }

      ++*a5;
      result = sub_2393C6FD0(v30, 256);
      if (result)
      {
        goto LABEL_2;
      }
    }
  }

  return result;
}

BOOL sub_2394C915C(__int16 *a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 8) != 1)
  {
    return 0;
  }

  v15 = v3;
  v16 = v4;
  v5 = *(a3 + 4);
  if ((v5 & 0x1F00) == 0)
  {
    return 0;
  }

  v7 = *(a1 + 2);
  v10 = *(a1 + 1);
  v11 = *a1;
  v12 = 1;
  v13 = v7;
  v14 = 1;
  v8 = sub_23949D748();
  return sub_23949CFB0(v8, a2, &v10, (v5 >> 8) & 0x1F) == 0;
}

unint64_t sub_2394C91EC(uint64_t a1, unsigned __int16 *a2)
{
  v4 = *(a1 + 1704);
  v5 = -1;
  v6 = -1;
  v8 = 0;
  v9 = 0;
  v7 = 0;
  v2 = sub_2394C417C(&v4, a2);
  sub_2393D6E84(&v9);
  return v2;
}

unint64_t sub_2394C925C(uint64_t a1, uint64_t a2, uint64_t a3, BOOL *a4, void *a5)
{
  sub_2393C5AAC(v21);
  sub_2393DD1C8(a3, v21);
  *a4 = 0;
  *a5 = 0;
  result = sub_2393C6FD0(v21, 256);
  if (result)
  {
LABEL_2:
    if (result == 33)
    {
      return 0;
    }
  }

  else
  {
    while (1)
    {
      sub_2393DD178(v20);
      result = sub_2393DD044(v20, v21);
      if (result)
      {
        break;
      }

      v17 = -1;
      v18 = -1;
      v19 = 0;
      result = sub_2393DC52C(v20, &v17);
      if (result)
      {
        break;
      }

      ++*a5;
      if (!*a4)
      {
        v11 = *(a1 + 1704);
        if (v11)
        {
          if (v18 == 0xFFFF)
          {
            sub_2394C4324(*(a1 + 1704), &v22);
            if (v23)
            {
              v13 = v22;
              v14 = 6 * v23 - 6;
              do
              {
                v15 = *v13;
                v13 += 3;
                v12 = sub_2394CCE6C(v11, v15, &v17, a2);
                if (v12)
                {
                  break;
                }

                v16 = v14;
                v14 -= 6;
              }

              while (v16);
            }

            else
            {
              v12 = 0;
            }

            sub_2393D6E84(&v24);
          }

          else
          {
            v12 = sub_2394CCE6C(*(a1 + 1704), v18, &v17, a2);
          }
        }

        else
        {
          v12 = 0;
        }

        *a4 = v12;
      }

      result = sub_2393C6FD0(v21, 256);
      if (result)
      {
        goto LABEL_2;
      }
    }
  }

  return result;
}

uint64_t sub_2394C93E8(uint64_t a1, uint64_t a2, uint64_t a3, void **a4, int a5)
{
  v88 = *MEMORY[0x277D85DE8];
  v72 = a2;
  v71 = a5;
  v9 = sub_2393D9044(0x23u);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = "Read";
    if (a5 == 1)
    {
      v10 = "Subscribe";
    }

    *buf = 136315138;
    v86 = v10;
    _os_log_impl(&dword_238DAE000, v9, OS_LOG_TYPE_INFO, "Received %s request", buf, 0xCu);
  }

  if (sub_2393D5398(3u))
  {
    v11 = "Read";
    if (a5 == 1)
    {
      v11 = "Subscribe";
    }

    sub_2393D5320(35, 3, "Received %s request", v11);
  }

  if (a5 != 1)
  {
    sub_2393C5AAC(buf);
    v87 = 0;
    sub_2393D9BEC(*a4, v16);
    *v69 = *a4;
    sub_238DD2F90(buf, v69);
    if (*v69)
    {
      sub_2393D96C8(*v69);
    }

    sub_2393DD178(v69);
    if (sub_2393DD0A8(v69, buf) || (v67 = 0, v68 = 0, sub_2393DD178(&v62), v19 = sub_2393DD1DC(v69, &v62), v19 != 33) && (v19 || (sub_2393C5AAC(v78), sub_2393DD1C8(&v62, v78), sub_2393C78C8(v78, &v68, 0))) || (sub_2393DD178(v78), v20 = sub_2393DCCFC(v69, v78), v20 != 33) && (v20 || (sub_2393C5AAC(v73), sub_2393DD1C8(v78, v73), sub_2393C78C8(v73, &v67, 0))))
    {
      v17 = 0;
      LOBYTE(v15) = 0x80;
    }

    else
    {
      sub_238EA6DC0(a2, v73, v21);
      v15 = sub_2394CA234(a1, *(*v73 + 24), v68, v67);
      (*(**v73 + 32))(*v73);
      v17 = v15 == 0;
      if (!v15)
      {
        LOBYTE(v15) = 0x80;
      }
    }

    if (v87)
    {
      sub_2393D96C8(v87);
    }

    if (v17)
    {
      goto LABEL_29;
    }

    return v15;
  }

  sub_2393C5AAC(buf);
  v87 = 0;
  v70 = 1;
  sub_238EA6DC0(a2, v69, v12);
  v13 = *(*v69 + 24);
  (*(**v69 + 32))(*v69);
  if (v13)
  {
    sub_2393D9BEC(*a4, v14);
    *v69 = *a4;
    sub_238DD2F90(buf, v69);
    if (*v69)
    {
      sub_2393D96C8(*v69);
    }

    sub_2393DD178(v69);
    if (sub_2393DD0A8(v69, buf) || sub_2393DA994(v69, &v70))
    {
      goto LABEL_15;
    }

    if ((v70 & 1) == 0)
    {
      v62 = a2;
      sub_2393D6A10((a1 + 1608), &v62, sub_2394CD798);
      v25 = *(a1 + 1696);
      if (v25)
      {
        *v65 = 0u;
        *v66 = 0u;
        v26 = (*(*v25 + 16))(v25);
        if ((*(*v26 + 24))(v26, &v62))
        {
          do
          {
            v28 = v62;
            sub_238EA6DC0(a2, v78, v27);
            if (v28 == *(sub_239495304(*v78) + 72))
            {
              v30 = v63;
              sub_238EA6DC0(a2, v73, v29);
              v31 = v30 == *(*v73 + 24);
              (*(**v73 + 32))();
            }

            else
            {
              v31 = 0;
            }

            (*(**v78 + 32))(*v78);
            if (v31)
            {
              if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
              {
                *v78 = 67109888;
                *&v78[4] = HIDWORD(v62);
                v79 = 1024;
                v80 = v62;
                v81 = 1024;
                v82 = v63;
                v83 = 1024;
                v84 = v64;
                _os_log_impl(&dword_238DAE000, v9, OS_LOG_TYPE_DEFAULT, "Deleting previous non-active subscription from NodeId: %08X%08X, FabricIndex: %u, SubscriptionId: 0x%x", v78, 0x1Au);
              }

              if (sub_2393D5398(2u))
              {
                sub_2393D5320(35, 2, "Deleting previous non-active subscription from NodeId: %08X%08X, FabricIndex: %u, SubscriptionId: 0x%x", HIDWORD(v62), v62, v63, v64);
              }

              (*(**(a1 + 1696) + 32))(*(a1 + 1696), v62, v63, v64);
            }
          }

          while (((*(*v26 + 24))(v26, &v62) & 1) != 0);
        }

        (*(*v26 + 32))(v26);
        if ((sub_2394C8C68(a1) & 1) == 0)
        {
          v32 = *(*(*(a1 + 88) + 88) + 24);
          (*(*v32 + 72))(v32, sub_2394C7F1C, a1);
          *(a1 + 1672) = 0;
          *(a1 + 1668) = 0;
        }

        if (v66[0])
        {
          j__free(v66[0]);
          v66[0] = 0;
        }

        if (v65[0])
        {
          j__free(v65[0]);
        }
      }
    }

    v67 = 0;
    v68 = 0;
    sub_2393DD178(&v62);
    v61 = 0;
    v33 = sub_2393DD938(v69, &v62);
    if (v33 != 33)
    {
      if (v33)
      {
        goto LABEL_15;
      }

      sub_238EA6DC0(a2, v73, v34);
      v35 = sub_239495304(*v73);
      (*(*v35 + 64))(v78);
      (*(**v73 + 32))(*v73);
      if (sub_2394C8F40(a1, v78, &v62, &v61 + 1, &v68))
      {
        goto LABEL_15;
      }
    }

    sub_2393DD178(v78);
    v36 = sub_2393DD230(v69, v78);
    if (v36 == 33)
    {
      v39 = 1;
    }

    else
    {
      if (v36)
      {
        goto LABEL_15;
      }

      sub_238EA6DC0(a2, &v60, v37);
      v38 = sub_239495304(v60);
      (*(*v38 + 64))(v73);
      (*(*v60 + 32))(v60);
      if (sub_2394C925C(a1, v73, v78, &v61, &v67))
      {
        goto LABEL_15;
      }

      v39 = v67 == 0;
    }

    if (v68 || !v39)
    {
      if (v61 & 0x100) != 0 || (v61)
      {
        sub_238EA6DC0(a2, v73, v37);
        sub_2394CA004(a1, *(*v73 + 24));
        (*(**v73 + 32))(*v73);
        LOBYTE(v13) = 1;
        goto LABEL_16;
      }

      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_238EA6DC0(a2, &v60, v49);
        v50 = v60[24];
        sub_238EA6DC0(a2, &v59, v51);
        v52 = *(sub_239495304(v59) + 76);
        sub_238EA6DC0(a2, &v58, v53);
        v54 = *(sub_239495304(v58) + 72);
        *v73 = 67109632;
        *&v73[4] = v50;
        v74 = 1024;
        v75 = v52;
        v76 = 1024;
        v77 = v54;
        _os_log_impl(&dword_238DAE000, v9, OS_LOG_TYPE_ERROR, "Subscription from [%u:%08X%08X] has no access at all. Rejecting request.", v73, 0x14u);
        (*(*v58 + 32))(v58);
        (*(*v59 + 32))(v59);
        (*(*v60 + 32))(v60);
      }

      if (!sub_2393D5398(1u))
      {
LABEL_15:
        LOBYTE(v13) = 0;
LABEL_16:
        LOBYTE(v15) = 0x80;
        goto LABEL_26;
      }

      sub_238EA6DC0(a2, v73, v55);
      sub_238EA6DC0(a2, &v60, v56);
      sub_239495304(v60);
      sub_238EA6DC0(a2, &v59, v57);
      sub_239495304(v59);
      sub_2393D5320(35, 1, "Subscription from [%u:%08X%08X] has no access at all. Rejecting request.");
    }

    else
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_238EA6DC0(a2, &v60, v40);
        v41 = v60[24];
        sub_238EA6DC0(a2, &v59, v42);
        v43 = *(sub_239495304(v59) + 76);
        sub_238EA6DC0(a2, &v58, v44);
        v45 = *(sub_239495304(v58) + 72);
        *v73 = 67109632;
        *&v73[4] = v41;
        v74 = 1024;
        v75 = v43;
        v76 = 1024;
        v77 = v45;
        _os_log_impl(&dword_238DAE000, v9, OS_LOG_TYPE_ERROR, "Subscription from [%u:%08X%08X] has no attribute or event paths. Rejecting request.", v73, 0x14u);
        (*(*v58 + 32))(v58);
        (*(*v59 + 32))(v59);
        (*(*v60 + 32))(v60);
      }

      if (!sub_2393D5398(1u))
      {
        goto LABEL_15;
      }

      sub_238EA6DC0(a2, v73, v46);
      sub_238EA6DC0(a2, &v60, v47);
      sub_239495304(v60);
      sub_238EA6DC0(a2, &v59, v48);
      sub_239495304(v59);
      sub_2393D5320(35, 1, "Subscription from [%u:%08X%08X] has no attribute or event paths. Rejecting request.");
    }

    (*(*v59 + 32))(v59);
    (*(*v60 + 32))(v60);
    (*(**v73 + 32))(*v73);
    goto LABEL_15;
  }

  LOBYTE(v15) = 126;
LABEL_26:
  if (v87)
  {
    sub_2393D96C8(v87);
  }

  if (v13)
  {
LABEL_29:
    v18 = sub_2394CA4FC((a1 + 1592), a1, &v72, &v71, (a1 + 1416));
    if (v18)
    {
      sub_2393B9028(v18, a4);
      LOBYTE(v15) = 0;
    }

    else
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        if (v71 == 1)
        {
          v22 = "Subscribe";
        }

        else
        {
          v22 = "Read";
        }

        *buf = 136315138;
        v86 = v22;
        _os_log_impl(&dword_238DAE000, v9, OS_LOG_TYPE_DEFAULT, "no resource for %s interaction", buf, 0xCu);
      }

      if (sub_2393D5398(2u))
      {
        if (v71 == 1)
        {
          v23 = "Subscribe";
        }

        else
        {
          v23 = "Read";
        }

        sub_2393D5320(35, 2, "no resource for %s interaction", v23);
      }

      LOBYTE(v15) = -119;
    }
  }

  return v15;
}

uint64_t sub_2394CA004(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v19 = 0;
  v20 = 0;
  v18 = 0;
  v14 = &v20;
  v15 = &v19;
  v16 = &v18;
  sub_2393D6A10((a1 + 1608), &v14, sub_2394CD024);
  if (v18 == -1)
  {
    v4 = *(a1 + 1680);
    sub_238DCCCDC(v4, &v14);
    v6 = v16;
    v7 = v17;
    if (v16 != v17)
    {
      while (1)
      {
        if (v7 == 16 && v6 == 16 && v14 == v4)
        {
          goto LABEL_23;
        }

        v8 = 0;
LABEL_7:
        v9 = sub_238DC7C7C(&v14, v5);
        if ((v8 & 1) == 0 && v18 == -1)
        {
          break;
        }

        if (v18 == -1)
        {
          v8 = 1;
LABEL_12:
          v10 = v16;
          while (1)
          {
            if (v10 < v17)
            {
              v10 = (v10 + 1);
              v16 = v10;
            }

            if (v10 == v17)
            {
              break;
            }

            v11 = &v14[19 * v10];
            if (*(v11 + 137) && (*v11 - 1) < 0xFFFFFFEFFFFFFFFFLL)
            {
              if (v17 != 16 || v10 != 16 || v14 != v4)
              {
                goto LABEL_7;
              }

              break;
            }
          }
        }

        if (v8)
        {
          v4 = *(a1 + 1680);
          sub_238DCCCDC(v4, &v14);
          v6 = v16;
          v7 = v17;
          if (v16 != v17)
          {
            continue;
          }
        }

        goto LABEL_23;
      }

      v8 = sub_2394CB0F4(a1, *(v9 + 137), 0);
      v19 = 0;
      v20 = 0;
      v18 = 0;
      v21[0] = &v20;
      v21[1] = &v19;
      v21[2] = &v18;
      sub_2393D6A10((a1 + 1608), v21, sub_2394CD024);
      goto LABEL_12;
    }

LABEL_23:
    if (v18 == -1)
    {
      do
      {
        v12 = sub_2394CB0F4(a1, v2, 1);
        v19 = 0;
        v20 = 0;
        v18 = 0;
        v14 = &v20;
        v15 = &v19;
        v16 = &v18;
        sub_2393D6A10((a1 + 1608), &v14, sub_2394CD024);
      }

      while (v12 && v18 == -1);
      if ((v12 & 1) == 0)
      {
        sub_23953633C();
      }
    }
  }

  return 1;
}

uint64_t sub_2394CA234(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v24 = a2;
  v22 = 0;
  v23 = 0;
  v21 = 0;
  v25 = &v23;
  v26 = &v22;
  v27 = &v21;
  sub_2393D6A10((a1 + 1608), &v25, sub_2394CD0A8);
  if (v21 != -1)
  {
    return 0;
  }

  if (*(*(a1 + 1680) + 2642) == 16 && a2 == 0)
  {
    return 156;
  }

  v19 = 0;
  v20 = 0;
  v18 = 0;
  v25 = &v24;
  v26 = &v20;
  v27 = &v19;
  v28 = &v18;
  sub_2393D6A10((a1 + 1608), &v25, sub_2394CDCFC);
  if ((v20 + a3) > 9)
  {
    return 156;
  }

  result = 156;
  if ((v19 + a4) <= 9 && !v18)
  {
    v10 = sub_2394CB300(a1, 0);
    v22 = 0;
    v23 = 0;
    v21 = 0;
    v25 = &v23;
    v26 = &v22;
    v27 = &v21;
    sub_2393D6A10((a1 + 1608), &v25, sub_2394CD0A8);
    if (v21 == -1)
    {
      while (1)
      {
        v11 = *(a1 + 1680);
        if ((v10 & 1) == 0 || *(v11 + 2642) != 16)
        {
          sub_238DCCCDC(*(a1 + 1680), &v25);
          if (v27 != v28)
          {
            v13 = v28 == 16 && v27 == 16;
            if (!v13 || v25 != v11)
            {
LABEL_23:
              v15 = sub_238DC7C7C(&v25, v12);
              if (v10)
              {
                v10 = 1;
              }

              else
              {
                v10 = sub_2394CB300(a1, *(v15 + 137));
                v22 = 0;
                v23 = 0;
                v21 = 0;
                v29[0] = &v23;
                v29[1] = &v22;
                v29[2] = &v21;
                sub_2393D6A10((a1 + 1608), v29, sub_2394CD0A8);
              }

              if (v21 == -1)
              {
                v16 = v27;
                while (1)
                {
                  if (v16 < v28)
                  {
                    v27 = ++v16;
                  }

                  if (v16 == v28)
                  {
                    break;
                  }

                  v17 = &v25[19 * v16];
                  if (*(v17 + 137) && (*v17 - 1) < 0xFFFFFFEFFFFFFFFFLL)
                  {
                    if (v28 != 16 || v16 != 16 || v25 != v11)
                    {
                      goto LABEL_23;
                    }

                    break;
                  }
                }
              }
            }
          }

          if ((v10 & 1) == 0)
          {
            break;
          }
        }

        v10 = sub_2394CB300(a1, 0);
        v22 = 0;
        v23 = 0;
        v21 = 0;
        v25 = &v23;
        v26 = &v22;
        v27 = &v21;
        sub_2393D6A10((a1 + 1608), &v25, sub_2394CD0A8);
        if (v21 != -1)
        {
          return 0;
        }
      }

      if (v21 == -1)
      {
        sub_2395363AC();
      }
    }

    return 0;
  }

  return result;
}

void *sub_2394CA4FC(unint64_t *a1, uint64_t a2, uint64_t *a3, char *a4, uint64_t *a5)
{
  v10 = sub_2393D52C4(0xD8uLL);
  v11 = v10;
  if (v10)
  {
    sub_2393B86E4(v10, a2 + 40, *a3, *a4, *a5);
    v12 = sub_2393D52C4(0x18uLL);
    if (v12)
    {
      *v12 = v11;
      v12[1] = a1 + 2;
      v12[2] = 0;
      v13 = a1[4];
      v12[2] = v13;
      *(v13 + 8) = v12;
      a1[4] = v12;
      v14 = a1[1];
      v15 = *a1 + 1;
      *a1 = v15;
      if (v15 > v14)
      {
        a1[1] = v15;
      }
    }

    else
    {
      return 0;
    }
  }

  return v11;
}

uint64_t sub_2394CA5B0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v9 = sub_2393D9044(0x23u);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_238DAE000, v9, OS_LOG_TYPE_INFO, "Received Write request", buf, 2u);
  }

  if (sub_2393D5398(3u))
  {
    sub_2393D5320(35, 3, "Received Write request");
  }

  v10 = (a1 + 473);
  v11 = 1088;
  while (*v10)
  {
    v10 += 272;
    v11 -= 272;
    if (!v11)
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *v13 = 0;
        _os_log_impl(&dword_238DAE000, v9, OS_LOG_TYPE_DEFAULT, "no resource for write interaction", v13, 2u);
      }

      if (sub_2393D5398(2u))
      {
        sub_2393D5320(35, 2, "no resource for write interaction");
      }

      return 156;
    }
  }

  sub_23947632C("src/app/InteractionModelEngine.cpp", 1944);
  if (sub_2393BBAD0((v10 - 265), *(a1 + 1704), a1 + 80))
  {
    return 156;
  }

  return sub_2393BC430((v10 - 265), a2, a4, a5);
}

uint64_t sub_2394CA710(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v13 = a1;
  v9 = sub_2394CA814((a1 + 152), &v13);
  if (v9)
  {
    *a5 = 0;
    *(a2 + 40) = v9;
    return (*(*v9 + 16))(v9, a2, a3, a4);
  }

  else
  {
    v11 = sub_2393D9044(0x23u);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&dword_238DAE000, v11, OS_LOG_TYPE_DEFAULT, "no resource for Timed interaction", v12, 2u);
    }

    if (sub_2393D5398(2u))
    {
      sub_2393D5320(35, 2, "no resource for Timed interaction");
    }

    *a5 = -100;
    return 0x3C80000000BLL;
  }
}

_BYTE *sub_2394CA814(unint64_t *a1, void *a2)
{
  v4 = sub_2393D52C4(0x20uLL);
  v5 = v4;
  if (v4)
  {
    v6 = *a2 + 72;
    v7 = *a2 == 0;
    *v4 = &unk_284BBDAB0;
    if (v7)
    {
      v8 = 0;
    }

    else
    {
      v8 = v6;
    }

    v4[8] = 0;
    *(v4 + 2) = v8;
    v9 = sub_2393D52C4(0x18uLL);
    if (v9)
    {
      *v9 = v5;
      v9[1] = a1 + 2;
      v9[2] = 0;
      v10 = a1[4];
      v9[2] = v10;
      *(v10 + 8) = v9;
      a1[4] = v9;
      v11 = a1[1];
      v12 = *a1 + 1;
      *a1 = v12;
      if (v12 > v11)
      {
        a1[1] = v12;
      }
    }

    else
    {
      return 0;
    }
  }

  return v5;
}

uint64_t sub_2394CA8D0(uint64_t a1, uint64_t a2, uint64_t a3, void **a4)
{
  v23 = *MEMORY[0x277D85DE8];
  sub_2393C5AAC(v20);
  v21 = 0;
  sub_2393D9BEC(*a4, v7);
  *v19 = *a4;
  sub_238DD2F90(v20, v19);
  if (*v19)
  {
    sub_2393D96C8(*v19);
  }

  sub_2393DD178(v19);
  if (sub_2393DD0A8(v19, v20) || (v18 = 0, sub_2393DA7E0(v19, &v18)) || sub_2393DD104(v19))
  {
    v9 = 128;
  }

  else
  {
    v11 = *(a1 + 1648);
    if (!v11)
    {
      goto LABEL_24;
    }

    v12 = 0;
    do
    {
      sub_238EA6DC0(a2, &buf, v8);
      v13 = (*(*buf + 48))(buf);
      v15 = v14;
      (*(*buf + 32))(buf);
      if (*(v11 + 72) == v15 && *(v11 + 64) == v13)
      {
        sub_2394D8E90(v11, "unsolicited message");
        (*(**(v11 + 40) + 112))(*(v11 + 40), v11);
        if (*(v11 + 48) == 3 && *(v11 + 60) == v18)
        {
          v16 = v12 ? v12 : v11;
          if (*(v11 + 80) == 1)
          {
            v12 = v16;
          }
        }
      }

      v11 = *(v11 + 192);
    }

    while (v11);
    if (v12)
    {
      sub_2394D9930(v12, a2, a4);
      v9 = 0;
    }

    else
    {
LABEL_24:
      v17 = sub_2393D9044(0x23u);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        LODWORD(buf) = 67109120;
        HIDWORD(buf) = v18;
        _os_log_impl(&dword_238DAE000, v17, OS_LOG_TYPE_INFO, "Received report with invalid subscriptionId %u", &buf, 8u);
      }

      if (sub_2393D5398(3u))
      {
        sub_2393D5320(35, 3, "Received report with invalid subscriptionId %u", v18);
      }

      v9 = 125;
    }
  }

  if (v21)
  {
    sub_2393D96C8(v21);
  }

  return v9;
}

unint64_t sub_2394CAB80(uint64_t a1, uint64_t a2, unsigned __int8 *a3, void **a4)
{
  v33 = *MEMORY[0x277D85DE8];
  v30 = 1;
  *(a1 + 1712) = a2;
  if (sub_2393BC2A0(a2, a2))
  {
    if (*(a3 + 2) || ((v15 = *a3, v15 != 8) ? (v16 = v15 == 6) : (v16 = 1), !v16 ? (v17 = 0) : (v17 = 1), *(a3 + 3) != 1 || (v17 & 1) == 0))
    {
      v9 = sub_2393D9044(0x23u);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = *a3;
        *buf = 67109120;
        v32 = v10;
        _os_log_impl(&dword_238DAE000, v9, OS_LOG_TYPE_DEFAULT, "Msg type %d not supported for group message", buf, 8u);
      }

      if (sub_2393D5398(2u))
      {
        sub_2393D5320(35, 2, "Msg type %d not supported for group message", *a3);
      }

      goto LABEL_32;
    }
  }

  else if (*(a3 + 2))
  {
    goto LABEL_8;
  }

  v18 = *(a3 + 3);
  v19 = *a3;
  if (v18 == 1 && v19 == 8)
  {
    v25 = sub_2394C8DC0(a1, a2, v8, a4, 0);
    goto LABEL_30;
  }

  if (v18 == 1 && v19 == 2)
  {
    v21 = a1;
    v22 = a2;
    v23 = a4;
    v24 = 0;
LABEL_28:
    v25 = sub_2394C93E8(v21, v22, v8, v23, v24);
    goto LABEL_30;
  }

  if (v18 == 1 && v19 == 6)
  {
    v25 = sub_2394CA5B0(a1, a2, v8, a4, 0);
    goto LABEL_30;
  }

  if (v18 == 1 && v19 == 3)
  {
    v21 = a1;
    v22 = a2;
    v23 = a4;
    v24 = 1;
    goto LABEL_28;
  }

  if (v18 == 1 && v19 == 5)
  {
    v25 = sub_2394CA8D0(a1, a2, v8, a4);
LABEL_30:
    v14 = v25;
    if (!v25)
    {
      goto LABEL_32;
    }

    goto LABEL_31;
  }

  if (v18 == 1 && v19 == 10)
  {
    sub_2394CA710(a1, a2, a3, a4, &v30);
    v14 = v30;
    if (!v30)
    {
      goto LABEL_32;
    }

    goto LABEL_31;
  }

LABEL_8:
  v11 = sub_2393D9044(0x23u);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = *a3;
    *buf = 67109120;
    v32 = v12;
    _os_log_impl(&dword_238DAE000, v11, OS_LOG_TYPE_DEFAULT, "Msg type %d not supported", buf, 8u);
  }

  if (sub_2393D5398(2u))
  {
    sub_2393D5320(35, 2, "Msg type %d not supported", *a3);
  }

  v14 = 128;
LABEL_31:
  if (!sub_2393BC2A0(a2, v13))
  {
    v28 = sub_2394DEE10(v14, a2, 0);
    v26 = v28 & 0xFFFFFFFF00000000;
    v27 = v28;
    goto LABEL_34;
  }

LABEL_32:
  v26 = 0;
  v27 = 0;
LABEL_34:
  *(a1 + 1712) = 0;
  return v27 | v26;
}

void sub_2394CAE68(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = sub_2393D9044(0x23u);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = *(a2 + 112);
    if (sub_2394703E0(a2))
    {
      v5 = 105;
    }

    else
    {
      v5 = 114;
    }

    *buf = 67109376;
    v10 = v4;
    v11 = 1024;
    v12 = v5;
    _os_log_impl(&dword_238DAE000, v3, OS_LOG_TYPE_ERROR, "Time out! Failed to receive IM response from Exchange: %u%c", buf, 0xEu);
  }

  if (sub_2393D5398(1u))
  {
    v6 = *(a2 + 112);
    v7 = sub_2394703E0(a2);
    v8 = 114;
    if (v7)
    {
      v8 = 105;
    }

    sub_2393D5320(35, 1, "Time out! Failed to receive IM response from Exchange: %u%c", v6, v8);
  }
}

void sub_2394CAF7C(void *result, uint64_t a2, unsigned __int8 a3, uint64_t a4)
{
  v4 = result[206];
  if (v4)
  {
    v9 = a4 & 0xFFFFFFFF00000000;
    v10 = WORD1(a4);
    v11 = (a4 - 1);
    while (1)
    {
      v12 = v4;
      v4 = *(v4 + 192);
      v16 = 0;
      v17 = 0;
      sub_2394A87A4(result[210], *(v12 + 72), &v16);
      if (*(v12 + 64) != a2 || *(v12 + 72) != a3)
      {
        goto LABEL_15;
      }

      if (v9 == 0xFFFFFFFD00000000)
      {
        break;
      }

LABEL_13:
      if (*sub_2394A7FC0(result[210], a3) == a4)
      {
        goto LABEL_14;
      }

LABEL_15:
      if (!v4)
      {
        return;
      }
    }

    v13 = 0;
    while (1)
    {
      v14 = *(&v16 + v13);
      if (v14)
      {
        if (v11 < v14 && HIWORD(v14) == v10)
        {
          break;
        }
      }

      v13 += 4;
      if (v13 == 12)
      {
        goto LABEL_13;
      }
    }

LABEL_14:
    sub_2394D8D08(v12);
    goto LABEL_15;
  }
}

uint64_t sub_2394CB080(uint64_t a1, uint64_t a2, unsigned __int8 a3, int a4)
{
  result = *(a1 + 1648);
  if (result)
  {
    v7 = a3;
    do
    {
      v8 = *(result + 192);
      if (*(result + 64) == a2 && *(result + 72) == v7)
      {
        sub_2394D8FD0(result, a4);
      }

      result = v8;
    }

    while (v8);
  }

  return result;
}

uint64_t sub_2394CB0E4(uint64_t result, uint64_t a2)
{
  *(a2 + 192) = *(result + 1648);
  *(result + 1648) = a2;
  return result;
}

uint64_t sub_2394CB0F4(uint64_t a1, char a2, char a3)
{
  v26 = *MEMORY[0x277D85DE8];
  v20 = a2;
  v3 = *(*(a1 + 1680) + 2642);
  v18 = 0;
  v19 = 0;
  v17 = 0;
  if (!v3)
  {
    return 0;
  }

  v15 = 0;
  v16 = 0x90 / v3;
  v13 = 0;
  v14 = 0;
  v21[0] = &v20;
  v21[1] = &v19;
  v21[2] = &v18;
  v21[3] = &v17;
  v21[4] = &v15;
  v21[5] = &v16;
  v21[6] = &v14;
  v21[7] = &v13;
  sub_2393D6A10((a1 + 1608), v21, sub_2394CDA20);
  v5 = v15;
  if (!v15 || (a3 & 1) == 0 && v19 <= v16 && v18 <= v16 && v17 <= 0x30 / v3)
  {
    return 0;
  }

  v6 = *(v15 + 8);
  v7 = sub_2393D9044(0xDu);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = sub_2393BB864(v5, v8);
    (*(*v9 + 64))(v21);
    *buf = 67109376;
    v23 = LOBYTE(v21[0]);
    v24 = 1024;
    v25 = v6;
    _os_log_impl(&dword_238DAE000, v7, OS_LOG_TYPE_DEFAULT, "Evicting Subscription ID %u:0x%x", buf, 0xEu);
  }

  if (sub_2393D5398(2u))
  {
    v11 = sub_2393BB864(v15, v10);
    (*(*v11 + 64))(v21);
    sub_2393D5320(13, 2, "Evicting Subscription ID %u:0x%x", LOBYTE(v21[0]), v6);
  }

  sub_2393B8A0C(v15, 0);
  return 1;
}

uint64_t sub_2394CB300(uint64_t a1, char a2)
{
  v10 = a2;
  v8 = 0;
  v9 = 0;
  v6 = 0;
  v7 = 0;
  v4 = 0;
  v5 = 0;
  v11[0] = &v10;
  v11[1] = &v9;
  v11[2] = &v8;
  v11[3] = &v7;
  v11[4] = &v6;
  v11[5] = &v5;
  v11[6] = &v4;
  sub_2393D6A10((a1 + 1608), v11, sub_2394CDB90);
  result = v6;
  if (v6)
  {
    if (v9 <= 9 && v8 <= 9 && v7 <= 1 && (v10 || *(*(a1 + 1680) + 2642) != 16))
    {
      return 0;
    }

    else
    {
      sub_2393B8A0C(v6, 0);
      return 1;
    }
  }

  return result;
}

uint64_t sub_2394CB3D8(uint64_t result, uint64_t a2)
{
  v2 = *(result + 1648);
  if (v2 == a2)
  {
    v4 = (result + 1648);
  }

  else
  {
    do
    {
      if (!v2)
      {
        sub_239536444();
      }

      v3 = v2;
      v2 = *(v2 + 192);
    }

    while (v2 != a2);
    v4 = (v3 + 192);
  }

  *v4 = *(a2 + 192);
  *(a2 + 192) = 0;
  return result;
}

uint64_t sub_2394CB428(uint64_t a1)
{
  v1 = *(a1 + 1648);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  do
  {
    ++result;
    v1 = *(v1 + 192);
  }

  while (v1);
  return result;
}

BOOL sub_2394CB44C(uint64_t a1, uint64_t a2)
{
  v2 = (a1 + 1648);
  do
  {
    v3 = *v2;
    v2 = (*v2 + 192);
  }

  while (v3 != a2 && v3 != 0);
  return v3 != 0;
}

uint64_t sub_2394CB470(uint64_t a1, _BYTE *a2, unsigned __int16 *a3)
{
  v5 = (a1 + 473);
  v6 = 1088;
  while (1)
  {
    v7 = v5 - 265;
    v8 = !*v5 || v7 == a2;
    if (!v8 && sub_2394CB4DC(v7, a3))
    {
      break;
    }

    v5 += 272;
    v6 -= 272;
    if (!v6)
    {
      return 0;
    }
  }

  return 1;
}

BOOL sub_2394CB4DC(uint64_t a1, unsigned __int16 *a2)
{
  v3 = *(a1 + 192);
  v2 = (a1 + 192);
  if (v3 != 1)
  {
    return 0;
  }

  v5 = sub_2393B50CC(v2, a2);
  return __PAIR64__(*(v5 + 1), *v5) == __PAIR64__(*(a2 + 1), *a2) && *(v5 + 2) == *(a2 + 2);
}

uint64_t sub_2394CB550(uint64_t a1, _BYTE *a2, unsigned __int16 *a3)
{
  v5 = (a1 + 393);
  v6 = 1088;
  while (1)
  {
    v7 = v5 - 265 == a2 || *v5 == 0;
    if (!v7 && sub_2394CB4DC((v5 - 265), a3))
    {
      break;
    }

    v5 += 272;
    v6 -= 272;
    if (!v6)
    {
      return 0;
    }
  }

  return 1;
}

void sub_2394CB5BC(uint64_t result, uint64_t *a2)
{
  v3 = *a2;
  if (v3)
  {
    do
    {
      v5 = v3[2];
      sub_2394CB87C(result + 1424, v3);
      v3 = v5;
    }

    while (v5);
  }

  *a2 = 0;
}

uint64_t sub_2394CB608(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v5 = sub_2394CDDC8((a1 + 1424));
  if (v5)
  {
    v6 = 0;
    v7 = 0;
    v8 = *a3;
    *(v5 + 2) = *(a3 + 2);
    *v5 = v8;
    v5[2] = *a2;
    *a2 = v5;
  }

  else
  {
    v9 = sub_2393D9044(0x23u);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *v11 = 0;
      _os_log_impl(&dword_238DAE000, v9, OS_LOG_TYPE_ERROR, "AttributePath pool full", v11, 2u);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(35, 1, "AttributePath pool full");
    }

    v7 = 0x66800000000;
    v6 = 1480;
  }

  return v7 | v6;
}

void sub_2394CB6E0(uint64_t result, int **a2)
{
  v2 = *a2;
  if (*a2)
  {
    v5 = 0;
    do
    {
      if (*(v2 + 4) == 0xFFFF || (v6 = *v2, *v2 == -1) || (v7 = v2[1], v7 == -1) || (v12 = *(v2 + 4), v14 = v6, v15 = v7, v13 = 0, sub_2394C91EC(result, &v12), (v8 & 1) == 0) || (v9 = *a2) == 0)
      {
LABEL_14:
        v10 = (v2 + 4);
      }

      else
      {
        while (v9 == v2 || *(v9 + 8) != -1 && *v9 != -1 && *(v9 + 4) != -1 || !sub_2394CB810(v9, v2))
        {
          v9 = *(v9 + 16);
          if (!v9)
          {
            goto LABEL_14;
          }
        }

        v11 = *(v2 + 2);
        if (v2 == *a2)
        {
          *a2 = v11;
          sub_2394CB87C(result + 1424, v2);
          v10 = a2;
        }

        else
        {
          *(v5 + 2) = v11;
          v10 = (v5 + 4);
          sub_2394CB87C(result + 1424, v2);
        }

        v2 = v5;
      }

      v5 = v2;
      v2 = *v10;
    }

    while (*v10);
  }
}

BOOL sub_2394CB810(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  if (v2 != 0xFFFF && v2 != *(a2 + 8))
  {
    return 0;
  }

  if (*a1 != -1 && *a1 != *a2)
  {
    return 0;
  }

  v5 = *(a1 + 4);
  if (v5 != -1 && v5 != *(a2 + 4))
  {
    return 0;
  }

  v7 = *(a1 + 10);
  return v7 == 0xFFFF || v7 == *(a2 + 10);
}

void sub_2394CB87C(uint64_t a1, void *a2)
{
  if (a2)
  {
    v4 = sub_2393D69E8((a1 + 16), a2);
    if (!v4)
    {
      sub_239533344();
    }

    v5 = v4;
    *v4 = 0;
    j__free(a2);
    if (*(a1 + 40))
    {
      *(a1 + 48) = 1;
    }

    else
    {
      v6 = v5[2];
      *(v5[1] + 16) = v6;
      *(v6 + 8) = v5[1];
      j__free(v5);
    }

    --*a1;
  }
}

void sub_2394CB904(uint64_t a1, void **a2)
{
  v3 = *a2;
  if (v3)
  {
    do
    {
      v5 = v3[2];
      sub_2394CB87C(a1 + 1480, v3);
      v3 = v5;
    }

    while (v5);
  }

  *a2 = 0;
}

uint64_t sub_2394CB950(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v5 = sub_2394CDE54((a1 + 1480));
  if (v5)
  {
    v6 = 0;
    v7 = 0;
    v8 = *a3;
    *(v5 + 7) = *(a3 + 7);
    *v5 = v8;
    v5[2] = *a2;
    *a2 = v5;
  }

  else
  {
    v9 = sub_2393D9044(0x23u);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *v11 = 0;
      _os_log_impl(&dword_238DAE000, v9, OS_LOG_TYPE_ERROR, "EventPath pool full", v11, 2u);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(35, 1, "EventPath pool full");
    }

    v7 = 0x6B900000000;
    v6 = 1480;
  }

  return v7 | v6;
}

void sub_2394CBA28(uint64_t a1, void **a2)
{
  v3 = *a2;
  if (v3)
  {
    do
    {
      v5 = v3[2];
      sub_2394CB87C(a1 + 1536, v3);
      v3 = v5;
    }

    while (v5);
  }

  *a2 = 0;
}

unint64_t sub_2394CBA74(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = sub_2394CBB24(a1, a2, a3, (a1 + 1536));
  if (v3 == 11)
  {
    v4 = sub_2393D9044(0x23u);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *v7 = 0;
      _os_log_impl(&dword_238DAE000, v4, OS_LOG_TYPE_ERROR, "DataVersionFilter pool full, ignore this filter", v7, 2u);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(35, 1, "DataVersionFilter pool full, ignore this filter");
    }

    v5 = 0;
    LODWORD(v3) = 0;
  }

  else
  {
    v5 = v3 & 0xFFFFFFFF00000000;
  }

  return v3 | v5;
}

uint64_t sub_2394CBB24(uint64_t a1, uint64_t *a2, uint64_t a3, unint64_t *a4)
{
  v6 = sub_2394CDEE0(a4);
  if (v6)
  {
    *v6 = *a3;
    v7 = *(a3 + 4);
    *(v6 + 4) = v7;
    if (v7 == 1)
    {
      *(v6 + 2) = *(a3 + 8);
    }

    v8 = 0;
    v9 = 0;
    *(v6 + 6) = *(a3 + 12);
    v6[2] = *a2;
    *a2 = v6;
  }

  else
  {
    v8 = 0x6E500000000;
    v9 = 11;
  }

  return v9 | v8;
}

void *sub_2394CBBAC(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  (*(*a2 + 88))(v17, a2);
  v12 = 0;
  v14 = *a3;
  v15 = *(a3 + 2);
  v16 = (*(*a2 + 72))(a2);
  v13 = v17;
  sub_23947632C("src/app/InteractionModelEngine.cpp", 1944);
  result = (*(**(a1 + 1704) + 136))(v10);
  if (v11 == 1)
  {
    v7 = sub_2394C3EB0(v10);
    v8 = v7;
    v9 = BYTE2(v7);
    return (*(*a2 + 24))(a2, a3, &v8, 0);
  }

  return result;
}

uint64_t sub_2394CBD08(uint64_t a1, uint64_t a2)
{
  v25 = *MEMORY[0x277D85DE8];
  LODWORD(v14) = 0;
  BYTE4(v14) = 32;
  v4 = sub_2394CBE98(a1, a2, 4u);
  if (v4)
  {
    return v4;
  }

  v7 = sub_2394CBF48(a1, a2 + 16, &v14);
  if (!v7)
  {
    v4 = sub_2394CBE98(v7, a2, BYTE4(v14) >> 3);
    if (!v4)
    {
      return sub_2394CC054(a1, a2, &v14);
    }

    return v4;
  }

  v5 = v7;
  v8 = sub_2393D9044(0xDu);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HIWORD(*(a2 + 24));
    v10 = *(a2 + 24);
    v11 = HIWORD(*(a2 + 20));
    v12 = *(a2 + 20);
    v13 = *(a2 + 16);
    *buf = 67110144;
    v16 = v9;
    v17 = 1024;
    v18 = v10;
    v19 = 1024;
    v20 = v11;
    v21 = 1024;
    v22 = v12;
    v23 = 1024;
    v24 = v13;
    _os_log_impl(&dword_238DAE000, v8, OS_LOG_TYPE_INFO, "No command 0x%04X_%04X in Cluster 0x%04X_%04X on Endpoint %u", buf, 0x20u);
  }

  if (sub_2393D5398(3u))
  {
    sub_2393D5320(13, 3, "No command 0x%04X_%04X in Cluster 0x%04X_%04X on Endpoint %u", HIWORD(*(a2 + 24)), *(a2 + 24), HIWORD(*(a2 + 20)), *(a2 + 20), *(a2 + 16));
  }

  return v5;
}

uint64_t sub_2394CBE98(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (*(a2 + 8))
  {
    v5 = *(a2 + 24);
    v10 = *(a2 + 20);
    v11 = *(a2 + 16);
    v12 = 3;
    v13 = v5;
    v14 = 1;
    v6 = sub_23949D748();
    v7 = sub_23949CFB0(v6, *(a2 + 8), &v10, a3);
    if (v7)
    {
      if (v7 == 168 || v7 == 165)
      {
        if (v7 == 165)
        {
          return 126;
        }

        else
        {
          return -99;
        }
      }

      else
      {
        return 1;
      }
    }

    else
    {
      return 0;
    }
  }

  else
  {
    return 126;
  }
}

uint64_t sub_2394CBF48(uint64_t a1, uint64_t a2, void *a3)
{
  sub_23947632C("src/app/InteractionModelEngine.cpp", 1944);
  v6 = *(a1 + 1704);
  v14[0] = 8;
  memset(&v14[1], 0, 24);
  v15 = 0;
  (*(*v6 + 80))(v6, a2, v14);
  sub_2394C3CA4(v14, &v11);
  if (v12)
  {
    v7 = v11;
    v8 = 8 * v12;
    while (*v7 != *(a2 + 8))
    {
      v7 += 2;
      v8 -= 8;
      if (!v8)
      {
        goto LABEL_5;
      }
    }

    *a3 = *v7;
    sub_2393D6E84(&v13);
    v9 = 0;
  }

  else
  {
LABEL_5:
    sub_2393D6E84(&v13);
    v9 = sub_2394C425C(v6, a2, 129);
  }

  sub_2393D6B1C(v14);
  return v9;
}

uint64_t sub_2394CC054(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 4);
  if ((v4 & 4) != 0)
  {
    v6 = (*(*a1 + 104))(a1);
    sub_238EA6DC0(v6, &v11, v7);
    v8 = (*(*v11 + 80))(v11);
    (*(*v11 + 32))(v11);
    if (!v8)
    {
      return 209;
    }

    v4 = *(a3 + 4);
  }

  if (v4)
  {
    v9 = *(a2 + 8);
    if (!v9 || !*v9)
    {
      return 126;
    }
  }

  if (v4 & 2) == 0 || (*(a2 + 28))
  {
    return 0;
  }

  return 198;
}

uint64_t sub_2394CC15C(void *a1, uint64_t a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a1 + 201;
  v5 = a1[202];
  ++a1[204];
  sub_2393D6AA8(a1 + 201);
  --a1[204];
  sub_2393D6AA8(v4);
  if (v5 != v4)
  {
    sub_2395364DC();
  }

  v6 = a1[213];
  if (v6 == a2)
  {
    return a2;
  }

  if (v6 && (*(*v6 + 104))(a1[213]))
  {
    v7 = sub_2393D9044(0x23u);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 136315138;
      *(&buf + 4) = sub_2393C9138();
      _os_log_impl(&dword_238DAE000, v7, OS_LOG_TYPE_ERROR, "Failure on interaction model shutdown: %s", &buf, 0xCu);
    }

    if (sub_2393D5398(1u))
    {
      v8 = sub_2393C9138();
      sub_2393D5320(35, 1, "Failure on interaction model shutdown: %s", v8);
    }
  }

  a1[213] = a2;
  if (a2)
  {
    *&buf = sub_2393B64C0();
    *(&buf + 1) = a1 + 162;
    v14 = a1 + 2;
    if ((*(*a2 + 96))(a2, &buf))
    {
      v9 = sub_2393D9044(0x23u);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = sub_2393C9138();
        LODWORD(buf) = 136315138;
        *(&buf + 4) = v10;
        _os_log_impl(&dword_238DAE000, v9, OS_LOG_TYPE_ERROR, "Failure on interaction model startup: %s", &buf, 0xCu);
      }

      if (sub_2393D5398(1u))
      {
        v11 = sub_2393C9138();
        sub_2393D5320(35, 1, "Failure on interaction model startup: %s", v11);
      }
    }
  }

  return v6;
}

uint64_t sub_2394CC3D4(uint64_t a1, void (***a2)(void), uint64_t a3, uint64_t a4, void *a5)
{
  *(a3 + 40) = a1 + 8;
  sub_2394C891C(a1 + 152, a2);
  if (*(a4 + 4))
  {
    v10 = 0;
  }

  else
  {
    v10 = *(a4 + 6) == 1;
  }

  if (!v10 || *a4 != 8)
  {
    sub_239536574();
  }

  if (sub_2393BC2A0(a3, v9))
  {
    sub_23953660C();
  }

  *(a1 + 1712) = a3;
  result = sub_2394C8DC0(a1, a3, v12, a5, 1);
  if (result)
  {
    result = sub_2394DEE10(result, a3, 0);
  }

  *(a1 + 1712) = 0;
  return result;
}

uint64_t sub_2394CC47C(uint64_t a1, void (***a2)(void), uint64_t a3, uint64_t a4, void *a5)
{
  *(a3 + 40) = a1 + 8;
  sub_2394C891C(a1 + 152, a2);
  if (*(a4 + 4))
  {
    v10 = 0;
  }

  else
  {
    v10 = *(a4 + 6) == 1;
  }

  if (!v10 || *a4 != 6)
  {
    sub_2395366A4();
  }

  if (sub_2393BC2A0(a3, v9))
  {
    sub_23953673C();
  }

  *(a1 + 1712) = a3;
  result = sub_2394CA5B0(a1, a3, v12, a5, 1);
  if (result)
  {
    result = sub_2394DEE10(result, a3, 0);
  }

  *(a1 + 1712) = 0;
  return result;
}

uint64_t sub_2394CC56C(uint64_t a1)
{
  v2 = 0;
  v3 = &v2;
  sub_2393D6A10((a1 + 1608), &v3, sub_2394CDF84);
  return v2;
}

void sub_2394CC5B0(uint64_t a1, uint64_t a2, int a3)
{
  v14 = *MEMORY[0x277D85DE8];
  buf[0] = a3;
  sub_2393D6A10((a1 + 1608), buf, sub_2394CDFBC);
  v6 = *(a1 + 1648);
  if (v6)
  {
    do
    {
      while (*(v6 + 72) != a3)
      {
        v6 = *(v6 + 192);
        if (!v6)
        {
          goto LABEL_10;
        }
      }

      v7 = sub_2393D9044(0x23u);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        v13 = a3;
        _os_log_impl(&dword_238DAE000, v7, OS_LOG_TYPE_DEFAULT, "Fabric removed, deleting obsolete read client with FabricIndex: %u", buf, 8u);
      }

      if (sub_2393D5398(2u))
      {
        sub_2393D5320(35, 2, "Fabric removed, deleting obsolete read client with FabricIndex: %u", a3);
      }

      v8 = *(v6 + 192);
      sub_2394D7E80(v6, 0x809000000A1, "src/app/InteractionModelEngine.cpp", 0);
      v6 = v8;
    }

    while (v8);
  }

LABEL_10:
  v9 = (a1 + 473);
  v10 = 1088;
  do
  {
    if (*v9 && sub_2393BCB0C((v9 - 265), v5) == a3)
    {
      v11 = sub_2393D9044(0x23u);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        v13 = a3;
        _os_log_impl(&dword_238DAE000, v11, OS_LOG_TYPE_DEFAULT, "Fabric removed, deleting obsolete write handler with FabricIndex: %u", buf, 8u);
      }

      if (sub_2393D5398(2u))
      {
        sub_2393D5320(35, 2, "Fabric removed, deleting obsolete write handler with FabricIndex: %u", a3);
      }

      sub_2393BBC74((v9 - 265));
    }

    v9 += 272;
    v10 -= 272;
  }

  while (v10);
}

unint64_t sub_2394CC7E0(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 1696);
  if (!v2 || (*(a1 + 1672) & 1) != 0)
  {
    v3 = 0;
    v4 = 0;
    return v4 | v3;
  }

  *v16 = 0u;
  *v17 = 0u;
  v5 = (*(*v2 + 16))(v2);
  *(a1 + 1664) = 0;
  v6 = 0;
  if ((*(*v5 + 24))(v5, v14))
  {
    LOWORD(v6) = 0;
    do
    {
      ++*(a1 + 1664);
      if (v6 <= v15)
      {
        v6 = v15;
      }

      else
      {
        v6 = v6;
      }
    }

    while (((*(*v5 + 24))(v5, v14) & 1) != 0);
  }

  (*(*v5 + 32))(v5);
  v7 = *(a1 + 1664);
  if (!*(a1 + 1664))
  {
    v12 = sub_2393D9044(0x23u);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_238DAE000, v12, OS_LOG_TYPE_DEFAULT, "No subscriptions to resume", buf, 2u);
    }

    if (sub_2393D5398(2u))
    {
      sub_2393D5320(35, 2, "No subscriptions to resume");
    }

    goto LABEL_21;
  }

  *(a1 + 1672) = 1;
  v8 = sub_2393D9044(0x23u);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109376;
    v19 = v7;
    v20 = 1024;
    v21 = v6;
    _os_log_impl(&dword_238DAE000, v8, OS_LOG_TYPE_DEFAULT, "Resuming %d subscriptions in %u seconds", buf, 0xEu);
  }

  if (sub_2393D5398(2u))
  {
    sub_2393D5320(35, 2, "Resuming %d subscriptions in %u seconds", *(a1 + 1664), v6);
  }

  v9 = *(*(*(a1 + 88) + 88) + 24);
  v10 = (*(*v9 + 40))(v9, 1000 * v6, sub_2394C7F1C, a1);
  v11 = v10;
  if (!v10)
  {
LABEL_21:
    v3 = 0;
    v11 = 0;
    goto LABEL_22;
  }

  v3 = v10 & 0xFFFFFFFF00000000;
LABEL_22:
  if (v17[0])
  {
    j__free(v17[0]);
    v17[0] = 0;
  }

  if (v16[0])
  {
    j__free(v16[0]);
  }

  v4 = v11;
  return v4 | v3;
}

uint64_t sub_2394CCABC(uint64_t result)
{
  v1 = *(result + 1664);
  v2 = __OFSUB__(v1, 1);
  v3 = v1 - 1;
  if (v3 < 0 == v2)
  {
    *(result + 1664) = v3;
  }

  return result;
}

uint64_t sub_2394CCAD0(uint64_t a1)
{
  result = sub_2394C8C68(a1);
  if ((result & 1) == 0)
  {
    *(a1 + 1668) = 0;
  }

  return result;
}

void sub_2394CCB00(void *a1, uint64_t a2)
{
  sub_2394CD128(a1, a2);

  JUMPOUT(0x23EE77B60);
}

void sub_2394CCB50(uint64_t a1, uint64_t a2)
{
  sub_2394CD128((a1 - 8), a2);

  JUMPOUT(0x23EE77B60);
}

void sub_2394CCB94(uint64_t a1, uint64_t a2)
{
  sub_2394CD128((a1 - 16), a2);

  JUMPOUT(0x23EE77B60);
}

void sub_2394CCBE0(uint64_t a1, uint64_t a2)
{
  sub_2394CD128((a1 - 24), a2);

  JUMPOUT(0x23EE77B60);
}

void sub_2394CCC24(uint64_t a1, uint64_t a2)
{
  sub_2394CD128((a1 - 32), a2);

  JUMPOUT(0x23EE77B60);
}

void sub_2394CCC68(uint64_t a1, uint64_t a2)
{
  sub_2394CD128((a1 - 40), a2);

  JUMPOUT(0x23EE77B60);
}

void sub_2394CCCBC(uint64_t a1, uint64_t a2)
{
  sub_2394CD128((a1 - 48), a2);

  JUMPOUT(0x23EE77B60);
}

void sub_2394CCD00(uint64_t a1, uint64_t a2)
{
  sub_2394CD128((a1 - 64), a2);

  JUMPOUT(0x23EE77B60);
}

void sub_2394CCD44(uint64_t a1, uint64_t a2)
{
  sub_2394CD128((a1 - 72), a2);

  JUMPOUT(0x23EE77B60);
}

void sub_2394CCD88(uint64_t a1, uint64_t a2)
{
  sub_2394CD128((a1 - 80), a2);

  JUMPOUT(0x23EE77B60);
}

uint64_t sub_2394CCDC4(uint64_t a1)
{
  *a1 = &unk_284BB7CD0;
  *(a1 + 8) = &unk_284BAA120;
  *(a1 + 16) = a1;
  *(a1 + 24) = 0;
  sub_2393DB79C(a1 + 32);
  sub_2393DB79C(a1 + 64);
  sub_2393DB79C(a1 + 96);
  sub_2393DB79C(a1 + 128);
  sub_2393DB79C(a1 + 160);
  *(a1 + 192) = 0;
  *(a1 + 208) = 0;
  *(a1 + 232) = 0;
  *(a1 + 240) = 0;
  *(a1 + 252) = 0;
  *(a1 + 256) = 0;
  *(a1 + 264) = 0;
  return a1;
}

BOOL sub_2394CCE6C(uint64_t a1, uint64_t a2, int *a3, uint64_t a4)
{
  v6 = a2;
  v8 = *a3;
  if (*a3 == -1)
  {
    sub_2394C4398(a1, a2, &v17);
    if (v18)
    {
      v10 = v17;
      v11 = 12 * v18 - 12;
      do
      {
        v12 = *v10;
        v10 += 3;
        v15[0] = v6;
        v16 = v12;
        v9 = sub_2394CCF5C(a1, v15, a3, a4);
        if (v9)
        {
          break;
        }

        v13 = v11;
        v11 -= 12;
      }

      while (v13);
    }

    else
    {
      v9 = 0;
    }

    sub_2393D6E84(&v19);
  }

  else
  {
    LOWORD(v17) = a2;
    HIDWORD(v17) = v8;
    return sub_2394CCF5C(a1, &v17, a3, a4);
  }

  return v9;
}

BOOL sub_2394CCF5C(uint64_t a1, __int16 *a2, int *a3, uint64_t a4)
{
  v14 = *(a2 + 1);
  v15 = *a2;
  v16 = 4;
  LOBYTE(v17) = 0;
  v18 = 0;
  v5 = a3[1];
  v6 = 1;
  if (v5 != -1)
  {
    v17 = a3[1];
    v18 = 1;
    v7 = *a3;
    v10[0] = *(a3 + 4);
    v11 = v7;
    v12 = v5;
    if ((*(*a1 + 56))(a1, v10, &v13))
    {
      return 0;
    }

    v6 = v13;
  }

  v9 = sub_23949D748();
  return sub_23949CFB0(v9, a4, &v14, v6) == 0;
}

uint64_t sub_2394CD024(void **a1, uint64_t a2)
{
  if (*(a2 + 169) == 1)
  {
    v2 = *(a2 + 112);
    if (v2)
    {
      v3 = 0;
      do
      {
        ++v3;
        v2 = *(v2 + 16);
      }

      while (v2);
    }

    else
    {
      v3 = 0;
    }

    **a1 += v3;
    v4 = *(a2 + 120);
    if (v4)
    {
      v5 = 0;
      do
      {
        ++v5;
        v4 = *(v4 + 16);
      }

      while (v4);
    }

    else
    {
      v5 = 0;
    }

    *a1[1] += v5;
    ++*a1[2];
  }

  return 0;
}

uint64_t sub_2394CD0A8(void **a1, uint64_t a2)
{
  if (!*(a2 + 169))
  {
    v2 = *(a2 + 112);
    if (v2)
    {
      v3 = 0;
      do
      {
        ++v3;
        v2 = *(v2 + 16);
      }

      while (v2);
    }

    else
    {
      v3 = 0;
    }

    **a1 += v3;
    v4 = *(a2 + 120);
    if (v4)
    {
      v5 = 0;
      do
      {
        ++v5;
        v4 = *(v4 + 16);
      }

      while (v4);
    }

    else
    {
      v5 = 0;
    }

    *a1[1] += v5;
    ++*a1[2];
  }

  return 0;
}

void *sub_2394CD128(void *a1, uint64_t a2)
{
  *a1 = &unk_284BBD5A8;
  a1[1] = &unk_284BBD670;
  a1[2] = &unk_284BBD6C0;
  a1[3] = &unk_284BBD6E8;
  a1[4] = &unk_284BBD710;
  a1[5] = &unk_284BBD748;
  a1[6] = &unk_284BBD780;
  a1[8] = &unk_284BBD7C0;
  a1[9] = &unk_284BBD7F8;
  a1[10] = &unk_284BBD830;
  sub_2394786E4(a1 + 199, a2);
  sub_2394786E4(a1 + 192, v3);
  sub_2394786E4(a1 + 185, v4);
  sub_2394786E4(a1 + 178, v5);
  a1[162] = &unk_284BBDB80;
  a1[163] = &unk_284BBDBB8;
  sub_2394786E4(a1 + 167, v6);
  v7 = 136;
  do
  {
    v8 = &a1[v7];
    *(v8 - 8) = &unk_284BB7CD0;
    *(v8 - 7) = &unk_284BAA120;
    sub_238EF9EEC(&a1[v7 - 7]);
    v7 -= 34;
  }

  while (v7 * 8);
  sub_2394786E4(a1 + 19, v9);
  sub_2394786E4(a1 + 12, v10);
  return a1;
}

uint64_t sub_2394CD420(unsigned __int8 *a1, uint64_t a2)
{
  if (*(a2 + 169) == *a1)
  {
    ++**(a1 + 1);
  }

  return 0;
}

uint64_t sub_2394CD448(unsigned __int8 *a1, uint64_t a2)
{
  if (*(a2 + 169) == *a1)
  {
    v3 = sub_2393BB864(a2, a2);
    if (v3)
    {
      v4 = *(v3 + 24);
    }

    else
    {
      v4 = 0;
    }

    if (v4 == a1[1])
    {
      ++**(a1 + 1);
    }
  }

  return 0;
}

uint64_t sub_2394CD4B4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  if (*v2 == *a1)
  {
    **(a1 + 16) = a2;
    return 1;
  }

  else
  {
    result = 0;
    ++*v2;
  }

  return result;
}

uint64_t sub_2394CD4E8(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 169) == 1)
  {
    sub_2393B8A0C(a2, 0);
  }

  return 0;
}

BOOL sub_2394CD51C(unsigned __int8 *a1, uint64_t a2)
{
  if (*(a2 + 169) != 1)
  {
    return 0;
  }

  v12[6] = v2;
  v12[7] = v3;
  v6 = sub_2393BB864(a2, a2);
  (*(*v6 + 64))(v12);
  if (LOBYTE(v12[0]) == *a1 && BYTE1(v12[0]) == 64)
  {
    v7 = *(a1 + 1);
    if (HIDWORD(v7) == 4294967293)
    {
      v8 = 0;
      while (1)
      {
        v9 = *(&v12[2] + v8);
        if (v9)
        {
          if ((v7 - 1) < v9 && HIWORD(v9) == WORD1(v7))
          {
            break;
          }
        }

        v8 += 4;
        if (v8 == 12)
        {
          goto LABEL_12;
        }
      }

LABEL_13:
      **(a1 + 2) = (*(a2 + 168) & 4) != 0;
      return (**(a1 + 2) & 1) != 0;
    }

LABEL_12:
    if (v7 == v12[1])
    {
      goto LABEL_13;
    }
  }

  return 0;
}

uint64_t sub_2394CD62C(unsigned __int8 *a1, uint64_t a2)
{
  if (*(a2 + 169) != 1)
  {
    return 0;
  }

  v8[6] = v2;
  v8[7] = v3;
  v6 = sub_2393BB864(a2, a2);
  (*(*v6 + 64))(v8);
  result = 0;
  if (LOBYTE(v8[0]) == *a1 && BYTE1(v8[0]) == 64)
  {
    if ((*(a2 + 168) & 4) != 0)
    {
      result = 1;
      **(a1 + 1) = 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_2394CD6DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = &unk_284BB78D8;
  *(a1 + 8) = &unk_284BB7980;
  *(a1 + 16) = &unk_284BB79B8;
  *(a1 + 24) = 0;
  *(a1 + 32) = a2;
  *(a1 + 40) = a3;
  sub_2394DBE44(a1 + 48, a1 + 8);
  *(a1 + 608) = &unk_284BAA120;
  *(a1 + 616) = a1;
  *(a1 + 624) = 0;
  *(a1 + 632) = 0;
  return a1;
}

uint64_t sub_2394CD798(uint64_t *a1, uint64_t a2)
{
  v25 = *MEMORY[0x277D85DE8];
  if (sub_2393BAABC(a2, *a1))
  {
    v4 = sub_2393D9044(0x23u);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      sub_238EA6DC0(*a1, &v19, v5);
      v6 = *(sub_239495304(v19) + 76);
      sub_238EA6DC0(*a1, &v18, v7);
      v8 = *(sub_239495304(v18) + 72);
      sub_238EA6DC0(*a1, &v17, v9);
      v10 = v17[24];
      *buf = 67109632;
      *&buf[4] = v6;
      v21 = 1024;
      v22 = v8;
      v23 = 1024;
      v24 = v10;
      _os_log_impl(&dword_238DAE000, v4, OS_LOG_TYPE_DEFAULT, "Deleting previous active subscription from NodeId: %08X%08X, FabricIndex: %u", buf, 0x14u);
      (*(*v17 + 32))(v17);
      (*(*v18 + 32))(v18);
      (*(*v19 + 32))(v19);
    }

    if (sub_2393D5398(2u))
    {
      sub_238EA6DC0(*a1, buf, v11);
      v12 = *(sub_239495304(*buf) + 76);
      sub_238EA6DC0(*a1, &v19, v13);
      v14 = *(sub_239495304(v19) + 72);
      sub_238EA6DC0(*a1, &v18, v15);
      sub_2393D5320(35, 2, "Deleting previous active subscription from NodeId: %08X%08X, FabricIndex: %u", v12, v14, v18[24]);
      (*(*v18 + 32))(v18);
      (*(*v19 + 32))(v19);
      (*(**buf + 32))(*buf);
    }

    sub_2393B8A0C(a2, 0);
  }

  return 0;
}

uint64_t sub_2394CDA20(unsigned __int8 **a1, uint64_t a2)
{
  v4 = sub_2393BB864(a2, a2);
  if (v4)
  {
    v5 = *(v4 + 24);
  }

  else
  {
    v5 = 0;
  }

  if (v5 == **a1 && *(a2 + 169) == 1)
  {
    v6 = *(a2 + 112);
    if (v6)
    {
      v7 = 0;
      do
      {
        ++v7;
        v6 = *(v6 + 16);
      }

      while (v6);
    }

    else
    {
      v7 = 0;
    }

    v8 = *(a2 + 120);
    if (v8)
    {
      v9 = 0;
      do
      {
        ++v9;
        v8 = *(v8 + 16);
      }

      while (v8);
    }

    else
    {
      v9 = 0;
    }

    *a1[1] += v7;
    *a1[2] += v9;
    ++*a1[3];
    v10 = a1[4];
    if (!*v10)
    {
      goto LABEL_31;
    }

    v11 = *a1[5];
    v13 = v7 > v11 || v9 > v11;
    if (v13 == 1 && *a1[6] <= v11 && *a1[7] <= v11)
    {
      *v10 = a2;
      *a1[6] = v7;
      *a1[7] = v9;
      return 0;
    }

    if (*(a2 + 40) < *(*v10 + 40))
    {
      v14 = *a1[6] > v11 || *a1[7] > v11;
      if (v14 == v13)
      {
LABEL_31:
        *v10 = a2;
      }
    }
  }

  return 0;
}

uint64_t sub_2394CDB90(unsigned __int8 **a1, uint64_t a2)
{
  v4 = sub_2393BB864(a2, a2);
  if (v4)
  {
    v5 = *(v4 + 24);
  }

  else
  {
    v5 = 0;
  }

  if (v5 == **a1 && !*(a2 + 169))
  {
    v6 = *(a2 + 112);
    if (v6)
    {
      v7 = 0;
      do
      {
        ++v7;
        v6 = *(v6 + 16);
      }

      while (v6);
    }

    else
    {
      v7 = 0;
    }

    v8 = *(a2 + 120);
    if (v8)
    {
      v9 = 0;
      do
      {
        ++v9;
        v8 = *(v8 + 16);
      }

      while (v8);
    }

    else
    {
      v9 = 0;
    }

    *a1[1] += v7;
    *a1[2] += v9;
    ++*a1[3];
    v10 = a1[4];
    v11 = *v10;
    if (!*v10 || (v7 <= 9 ? (v12 = v9 > 9) : (v12 = 1), !v12 ? (v13 = 0) : (v13 = 1), v13 == 1 && *a1[5] <= 9uLL && *a1[6] < 0xAuLL || *(a2 + 40) > *(v11 + 40) && (*a1[5] <= 9uLL ? (v14 = *a1[6] > 9uLL) : (v14 = 1), v14 == v13)))
    {
      *v10 = a2;
      v11 = *a1[4];
    }

    if (v11 == a2)
    {
      *a1[5] = v7;
      *a1[6] = v9;
    }
  }

  return 0;
}

uint64_t sub_2394CDCFC(void **a1, uint64_t a2)
{
  if (!*(a2 + 169))
  {
    v4 = sub_2393BB864(a2, a2);
    v5 = v4 ? *(v4 + 24) : 0;
    if (v5 == **a1)
    {
      v6 = *(a2 + 112);
      if (v6)
      {
        v7 = 0;
        do
        {
          ++v7;
          v6 = *(v6 + 16);
        }

        while (v6);
      }

      else
      {
        v7 = 0;
      }

      *a1[1] += v7;
      v8 = *(a2 + 120);
      if (v8)
      {
        v9 = 0;
        do
        {
          ++v9;
          v8 = *(v8 + 16);
        }

        while (v8);
      }

      else
      {
        v9 = 0;
      }

      *a1[2] += v9;
      ++*a1[3];
    }
  }

  return 0;
}

void *sub_2394CDDC8(unint64_t *a1)
{
  v2 = sub_2393D52C4(0x18uLL);
  v3 = v2;
  if (v2)
  {
    v2[1] = 0;
    v2[2] = 0;
    *v2 = -1;
    *(v2 + 2) = -1;
    v4 = sub_2393D52C4(0x18uLL);
    if (v4)
    {
      *v4 = v3;
      v4[1] = a1 + 2;
      v4[2] = 0;
      v5 = a1[4];
      v4[2] = v5;
      *(v5 + 8) = v4;
      a1[4] = v4;
      v6 = a1[1];
      v7 = *a1 + 1;
      *a1 = v7;
      if (v7 > v6)
      {
        a1[1] = v7;
      }
    }

    else
    {
      return 0;
    }
  }

  return v3;
}

void *sub_2394CDE54(unint64_t *a1)
{
  v2 = sub_2393D52C4(0x18uLL);
  v3 = v2;
  if (v2)
  {
    *v2 = -1;
    v2[1] = 0xFFFFLL;
    v2[2] = 0;
    v4 = sub_2393D52C4(0x18uLL);
    if (v4)
    {
      *v4 = v3;
      v4[1] = a1 + 2;
      v4[2] = 0;
      v5 = a1[4];
      v4[2] = v5;
      *(v5 + 8) = v4;
      a1[4] = v4;
      v6 = a1[1];
      v7 = *a1 + 1;
      *a1 = v7;
      if (v7 > v6)
      {
        a1[1] = v7;
      }
    }

    else
    {
      return 0;
    }
  }

  return v3;
}

void *sub_2394CDEE0(unint64_t *a1)
{
  v2 = sub_2393D52C4(0x18uLL);
  v3 = v2;
  if (v2)
  {
    *v2 = 0;
    v2[1] = 0;
    *v2 = -1;
    *(v2 + 6) = -1;
    v2[2] = 0;
    v4 = sub_2393D52C4(0x18uLL);
    if (v4)
    {
      *v4 = v3;
      v4[1] = a1 + 2;
      v4[2] = 0;
      v5 = a1[4];
      v4[2] = v5;
      *(v5 + 8) = v4;
      a1[4] = v4;
      v6 = a1[1];
      v7 = *a1 + 1;
      *a1 = v7;
      if (v7 > v6)
      {
        a1[1] = v7;
      }
    }

    else
    {
      return 0;
    }
  }

  return v3;
}

uint64_t sub_2394CDF84(void **a1, uint64_t a2)
{
  if (*(a2 + 169) == 1 && (*(a2 + 16) > *(a2 + 24) || (*(a2 + 168) & 0x10) != 0))
  {
    ++**a1;
  }

  return 0;
}

uint64_t sub_2394CDFBC(unsigned __int8 *a1, uint64_t a2)
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = sub_2393BB864(a2, a2);
  if (v4)
  {
    v5 = *(v4 + 24);
  }

  else
  {
    v5 = 0;
  }

  if (v5 == *a1)
  {
    v6 = sub_2393D9044(0x23u);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = sub_2393BB864(a2, v7);
      if (v8)
      {
        v10 = *(v8 + 76);
      }

      else
      {
        v10 = 0;
      }

      v11 = sub_2393BB864(a2, v9);
      if (v11)
      {
        v12 = *(v11 + 72);
      }

      else
      {
        v12 = 0;
      }

      v13 = *a1;
      *buf = 67109632;
      v22 = v10;
      v23 = 1024;
      v24 = v12;
      v25 = 1024;
      v26 = v13;
      _os_log_impl(&dword_238DAE000, v6, OS_LOG_TYPE_DEFAULT, "Deleting expired ReadHandler for NodeId: %08X%08X, FabricIndex: %u", buf, 0x14u);
    }

    if (sub_2393D5398(2u))
    {
      v15 = sub_2393BB864(a2, v14);
      if (v15)
      {
        v17 = *(v15 + 76);
      }

      else
      {
        v17 = 0;
      }

      v18 = sub_2393BB864(a2, v16);
      if (v18)
      {
        v19 = *(v18 + 72);
      }

      else
      {
        v19 = 0;
      }

      sub_2393D5320(35, 2, "Deleting expired ReadHandler for NodeId: %08X%08X, FabricIndex: %u", v17, v19, *a1);
    }

    sub_2393B8A0C(a2, 0);
  }

  return 0;
}

void sub_2394CE170(uint64_t result, int a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = *(result + 528);
  if (v2 != a2)
  {
    v5 = sub_2393D9044(0x22u);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = *(result + 104);
      v7 = *(result + 96);
      *buf = 67110144;
      v11 = v6;
      v12 = 1024;
      v13 = HIDWORD(v7);
      v14 = 1024;
      v15 = v7;
      v16 = 1024;
      v17 = v2;
      v18 = 1024;
      v19 = a2;
      _os_log_impl(&dword_238DAE000, v5, OS_LOG_TYPE_INFO, "OperationalSessionSetup[%u:%08X%08X]: State change %d --> %d", buf, 0x20u);
    }

    if (sub_2393D5398(3u))
    {
      sub_2393D5320(34, 3, "OperationalSessionSetup[%u:%08X%08X]: State change %d --> %d", *(result + 104), HIDWORD(*(result + 96)), *(result + 96), *(result + 528), a2);
    }

    if (*(result + 528) == 6)
    {
      v8 = *(*(result + 40) + 88);
      if (v8)
      {
        v9 = *(v8 + 24);
        if (v9)
        {
          (*(*v9 + 72))(v9, sub_2394D0254, result);
        }
      }
    }

    *(result + 528) = a2;
    if (a2 != 4)
    {
      if (*(result + 88))
      {
        (*(**(result + 80) + 8))(*(result + 80));
        *(result + 88) = 0;
      }
    }
  }
}

void *sub_2394CE32C(void *result)
{
  v1 = *(result[5] + 88);
  if (v1)
  {
    v2 = result;
    result = *(v1 + 24);
    if (result)
    {
      return (*(*result + 72))(result, sub_2394D0254, v2);
    }
  }

  return result;
}

uint64_t sub_2394CE37C(uint64_t result)
{
  if (*(result + 88))
  {
    v1 = result;
    result = (*(**(result + 80) + 8))(*(result + 80));
    *(v1 + 88) = 0;
  }

  return result;
}

uint64_t sub_2394CE3D4(uint64_t a1)
{
  v28 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 528);
  v2 = v1 > 6;
  v3 = (1 << v1) & 0x4E;
  if (v2 || v3 == 0)
  {
    return 0;
  }

  v6 = *(a1 + 16);
  v7 = *(a1 + 96);
  v8 = *(a1 + 104);
  *buf = 513;
  sub_23949A820(v6, v7, v8, buf, *(a1 + 532), v20);
  if (v20[0] != 1)
  {
    return 0;
  }

  v9 = sub_2393D9044(0x22u);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(a1 + 104);
    v11 = *(a1 + 96);
    *buf = 67109632;
    v23 = v10;
    v24 = 1024;
    v25 = HIDWORD(v11);
    v26 = 1024;
    v27 = v11;
    _os_log_impl(&dword_238DAE000, v9, OS_LOG_TYPE_DEFAULT, "Found an existing secure session to [%u:%08X%08X]!", buf, 0x14u);
  }

  if (sub_2393D5398(2u))
  {
    sub_2393D5320(34, 2, "Found an existing secure session to [%u:%08X%08X]!", *(a1 + 104), HIDWORD(*(a1 + 96)), *(a1 + 96));
  }

  v13 = sub_238EA9094(v20, v12);
  v14 = sub_239495304(*v13);
  v15 = *(v14 + 96);
  *(a1 + 128) = *(v14 + 112);
  *(a1 + 112) = v15;
  *(a1 + 132) = *(v14 + 116);
  *(a1 + 136) = *(v14 + 120);
  v17 = sub_238EA9094(v20, v16);
  v18 = sub_239495C6C((a1 + 144), v17);
  if (v20[0])
  {
    (*(*v21 + 32))(v21);
  }

  return v18;
}

uint64_t sub_2394CE598(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, char a5)
{
  *(a1 + 532) = a5;
  result = sub_2394D03B0(a1 + 184, a2, a3, a4);
  v7 = *(a1 + 528);
  if (v7 > 2)
  {
    if (*(a1 + 528) <= 4u)
    {
      if (v7 != 3)
      {
        if (v7 == 4)
        {
          return result;
        }

        goto LABEL_9;
      }

      if ((sub_2394CE3D4(a1) & 1) == 0)
      {
        v8 = 0x9600000000;
        goto LABEL_17;
      }

LABEL_19:
      sub_2394CE170(a1, 5);
      v9 = 0;
      v8 = 0;
      v10 = 0;
      goto LABEL_20;
    }

    if (v7 == 5)
    {
      goto LABEL_19;
    }

    if (v7 == 6)
    {
LABEL_12:
      result = sub_2394CE3D4(a1);
      if (!result)
      {
        return result;
      }

      goto LABEL_19;
    }

LABEL_9:
    v8 = 0xA300000000;
LABEL_17:
    v9 = "src/app/OperationalSessionSetup.cpp";
    v10 = 3;
    goto LABEL_20;
  }

  if (!*(a1 + 528))
  {
    v8 = 0x7300000000;
    goto LABEL_17;
  }

  if (v7 != 1)
  {
    if (v7 == 2)
    {
      goto LABEL_12;
    }

    goto LABEL_9;
  }

  if (sub_2394CE3D4(a1))
  {
    goto LABEL_19;
  }

  sub_2394CE170(a1, 2);
  result = sub_2394CE6E8(a1);
  v10 = result;
  if (!result)
  {
    return result;
  }

  v9 = v11;
  v8 = result & 0xFFFFFFFF00000000;
  sub_2394CE170(a1, 1);
LABEL_20:

  return sub_2394CEF6C(a1, v10 | v8, v9, 1, 0);
}

unint64_t sub_2394CE6E8(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  if (*(a1 + 534))
  {
    --*(a1 + 534);
  }

  v2 = *(a1 + 535);
  if (v2 != 255)
  {
    *(a1 + 535) = ++v2;
  }

  if (*(a1 + 536))
  {
    --*(a1 + 536);
  }

  *buf = 2;
  v14 = "core_dev_operational_discovery_attempt_ctr";
  LODWORD(v15) = v2;
  BYTE4(v15) = 2;
  sub_23948BD20(buf);
  if (*(a1 + 224) && *(a1 + 232))
  {
    v3 = sub_2393D9044(0x22u);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 104);
      v5 = *(a1 + 96);
      *buf = 67109632;
      *&buf[4] = v4;
      LOWORD(v14) = 1024;
      *(&v14 + 2) = HIDWORD(v5);
      HIWORD(v14) = 1024;
      LODWORD(v15) = v5;
      _os_log_impl(&dword_238DAE000, v3, OS_LOG_TYPE_DEFAULT, "OperationalSessionSetup[%u:%08X%08X]: Operational node lookup already in progress. Will NOT start a new one.", buf, 0x14u);
    }

    if (sub_2393D5398(2u))
    {
      sub_2393D5320(34, 2, "OperationalSessionSetup[%u:%08X%08X]: Operational node lookup already in progress. Will NOT start a new one.", *(a1 + 104), HIDWORD(*(a1 + 96)), *(a1 + 96));
    }

    v6 = 0;
    v7 = 0;
  }

  else
  {
    *buf = 0;
    v14 = "core_dev_operational_discovery";
    BYTE4(v15) = 0;
    sub_23948BD20(buf);
    v8 = sub_2394A7FC0(*(a1 + 48), *(a1 + 104));
    if (v8)
    {
      v9 = *(v8 + 16);
      *buf = *(a1 + 96);
      v14 = v9;
      v15 = 0xAFC8000000C8;
      v10 = sub_2394E06B0();
      v11 = ((*v10)[3])(v10, buf, a1 + 216);
      v7 = v11 & 0xFFFFFFFF00000000;
      v6 = v11;
    }

    else
    {
      v7 = 0x25E00000000;
      v6 = 113;
    }
  }

  return v7 | v6;
}

void *sub_2394CE904(void *result, __int128 *a2)
{
  v34 = *MEMORY[0x277D85DE8];
  v23 = *a2;
  v2 = *(a2 + 5);
  v24 = *(a2 + 4);
  v25 = v2;
  v26 = *(a2 + 3);
  v3 = *(result + 533);
  *(result + 533) = 0;
  if (*(result + 528))
  {
    v5 = result;
    sub_2393E97D4(&v23, __str, 0x4CuLL);
    v6 = sub_2393D9044(0x22u);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = *(v5 + 104);
      v8 = *(v5 + 96);
      v9 = *(v5 + 528);
      *buf = 67110146;
      *v28 = v7;
      *&v28[4] = 1024;
      *&v28[6] = HIDWORD(v8);
      LOWORD(v29) = 1024;
      *(&v29 + 2) = v8;
      HIWORD(v29) = 2080;
      v30 = __str;
      v31 = 1024;
      v32 = v9;
      _os_log_impl(&dword_238DAE000, v6, OS_LOG_TYPE_INFO, "OperationalSessionSetup[%u:%08X%08X]: Updating device address to %s while in state %d", buf, 0x24u);
    }

    if (sub_2393D5398(3u))
    {
      sub_2393D5320(34, 3, "OperationalSessionSetup[%u:%08X%08X]: Updating device address to %s while in state %d", *(v5 + 104), HIDWORD(*(v5 + 96)), *(v5 + 96), __str, *(v5 + 528));
    }

    *(v5 + 112) = v23;
    v10 = v25;
    *(v5 + 128) = v24;
    *(v5 + 132) = v10;
    *(v5 + 136) = v26;
    v11 = *(v5 + 88);
    if (v11)
    {
      sub_2394C45C8(v11, a2 + 4);
    }

    if (*(v5 + 528) != 2)
    {
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_238DAE000, v6, OS_LOG_TYPE_ERROR, "Received UpdateDeviceData in incorrect state", buf, 2u);
      }

      if (sub_2393D5398(1u))
      {
        sub_2393D5320(34, 1, "Received UpdateDeviceData in incorrect state");
      }

      v14 = "src/app/OperationalSessionSetup.cpp";
      v12 = v5;
      v13 = 0xEC00000003;
      return sub_2394CEF6C(v12, v13, v14, 1, 0);
    }

    sub_2394CE170(v5, 3);
    sub_239497B24(*(v5 + 16), v5 + 96, &v23);
    if (*(v5 + 529) == 1)
    {
      v12 = v5;
      v13 = 0;
      v14 = 0;
      return sub_2394CEF6C(v12, v13, v14, 1, 0);
    }

    result = sub_2394CECBC(v5, a2);
    v16 = result;
    if (result)
    {
      v17 = v15;
      v18 = sub_2393D9044(0);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = sub_2393C9138();
        *buf = 136315650;
        *v28 = v19;
        *&v28[8] = 2080;
        v29 = "src/app/OperationalSessionSetup.cpp";
        LOWORD(v30) = 1024;
        *(&v30 + 2) = 254;
        _os_log_impl(&dword_238DAE000, v18, OS_LOG_TYPE_ERROR, "%s at %s:%d", buf, 0x1Cu);
      }

      if (sub_2393D5398(1u))
      {
        v20 = sub_2393C9138();
        sub_2393D5320(0, 1, "%s at %s:%d", v20, "src/app/OperationalSessionSetup.cpp", 254);
      }

      sub_2394CE170(v5, 2);
      *(v5 + 533) = v3;
      v21 = sub_2394E06B0();
      result = ((*v21)[4])(v21, v5 + 216);
      if (result)
      {
        v12 = v5;
        v13 = v16;
        v14 = v17;
        return sub_2394CEF6C(v12, v13, v14, 1, 0);
      }
    }

    else if (v3)
    {
      v22 = sub_2393E9304(a2 + 8);
      return sub_2394D00D4(v5, 0x10900000032, "src/app/OperationalSessionSetup.cpp", (v22 / 0x3E8 + 1));
    }
  }

  return result;
}

unint64_t sub_2394CECBC(uint64_t a1, uint64_t a2)
{
  v18 = *MEMORY[0x277D85DE8];
  if (*(a1 + 532) != 1)
  {
LABEL_4:
    v4 = (***(a1 + 80))(*(a1 + 80));
    *(a1 + 88) = v4;
    if (v4)
    {
      *buf = 0;
      v15 = "core_dev_case_session";
      v17 = 0;
      sub_23948BD20(buf);
      v5 = sub_2394C45DC(*(a1 + 88), (a1 + 16), (a1 + 96), a1 + 112, a2 + 32, a1);
      v6 = v5;
      if (v5)
      {
        *buf = 1;
        v15 = "core_dev_case_session";
        v16 = v5;
        v17 = 3;
        sub_23948BD20(buf);
        if (*(a1 + 88))
        {
          (*(**(a1 + 80) + 8))(*(a1 + 80));
          *(a1 + 88) = 0;
        }

        v7 = v6 & 0xFFFFFFFF00000000;
        v8 = v6;
      }

      else
      {
        sub_2394CE170(a1, 4);
        v8 = 0;
        v7 = 0;
      }
    }

    else
    {
      v7 = 0x14100000000;
      v8 = 11;
    }

    return v7 | v8;
  }

  if (*(a2 + 44) == 1)
  {
    *(a1 + 128) = 3;
    goto LABEL_4;
  }

  v9 = sub_2393D9044(0x22u);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    v10 = *(a1 + 96);
    v11 = *(a1 + 104);
    *buf = 67109632;
    v14 = HIDWORD(v10);
    LOWORD(v15) = 1024;
    *(&v15 + 2) = v10;
    HIWORD(v15) = 1024;
    v16 = v11;
    _os_log_impl(&dword_238DAE000, v9, OS_LOG_TYPE_ERROR, "LargePayload session requested but peer does not support TCP server, PeerNodeId=<%08X%08X, %d>", buf, 0x14u);
  }

  if (sub_2393D5398(1u))
  {
    sub_2393D5320(34, 1, "LargePayload session requested but peer does not support TCP server, PeerNodeId=<%08X%08X, %d>", HIDWORD(*(a1 + 96)), *(a1 + 96), *(a1 + 104));
  }

  v7 = 0x13B00000000;
  v8 = 172;
  return v7 | v8;
}

uint64_t sub_2394CEEF8(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int *a4, __int16 a5)
{
  v8 = (sub_2393E9304(a4) / 0x3E8 + a5 + 1);

  return sub_2394D00D4(a1, a2, a3, v8);
}

void *sub_2394CEF6C(uint64_t a1, unint64_t a2, const char *a3, uint64_t a4, int a5)
{
  v6 = a4;
  if (*(a1 + 529) == 1 && *(a1 + 184) != a1 + 184)
  {
    sub_2395367D4();
  }

  v10 = (a1 + 544);
  v11 = *(a1 + 544);
  if (v11 != a1 + 544 && v11 != 0)
  {
    do
    {
      v13 = *(v11 + 16);
      if (v13)
      {
        *(v11 + 16) = 0;
        v13();
        v11 = *v10;
      }
    }

    while (v11 != v10 && v11);
  }

  v23[0] = v23;
  v23[1] = v23;
  v23[2] = 0;
  sub_2394CF120(v23, (a1 + 184));
  v15 = *(a1 + 40);
  if (*(a1 + 168) == 1)
  {
    v22 = *sub_238DE36B8((a1 + 168), v14);
    (*(*v22 + 24))(v22);
    v16 = 1;
  }

  else
  {
    v16 = 0;
  }

  v21[0] = v16;
  v20 = *(a1 + 96);
  v17 = *(a1 + 530);
  if (!a5)
  {
    v18 = *(a1 + 208);
    if (!v18)
    {
      sub_23953686C();
    }

    (*(*v18 + 16))(v18, a1);
  }

  sub_2394CF16C(v23, a2, a3, v6, &v20, v15, v21, v17);
  if (v21[0] == 1)
  {
    (*(*v22 + 32))(v22);
  }

  return sub_2394D0350(v23);
}

uint64_t sub_2394CF120(uint64_t result, void **a2)
{
  if (result != a2)
  {
    v2 = *a2;
    if (*a2 != a2)
    {
      v3 = *(result + 8);
      *v3 = v2;
      v4 = v2[1];
      do
      {
        v2[1] = v3;
        v2 = *v2;
      }

      while (v2[1] == v4);
      *a2[1] = result;
      *(result + 8) = a2[1];
      *a2 = a2;
      a2[1] = a2;
    }
  }

  return result;
}

BOOL sub_2394CF16C(void *a1, unint64_t a2, const char *a3, char a4, uint64_t *a5, uint64_t a6, _BYTE *a7, __int16 a8)
{
  v43 = *MEMORY[0x277D85DE8];
  v35 = 0;
  v36 = 0;
  v34 = 0;
  result = sub_2394D0580(a1, &v36, &v35, &v34);
  if (result)
  {
    v18 = HIDWORD(a2);
    v19 = a2;
    do
    {
      v20 = *(*a1 + 16);
      if (v20)
      {
        *(*a1 + 16) = 0;
        v20();
      }

      if (v19)
      {
        if (v35)
        {
          (*(v35 + 32))(*(v35 + 24), a5, v19 | (v18 << 32), a3);
        }

        if (v34)
        {
          *buf = *a5;
          v38 = v19 | (v18 << 32);
          v39 = a3;
          v40 = a4;
          v41 = 0;
          if (v19 == 219)
          {
            v41 = 1;
            v42 = a8;
          }

          (*(v34 + 32))(*(v34 + 24), buf);
        }
      }

      else
      {
        if (!a6)
        {
          sub_23953699C();
        }

        v21 = sub_238DE36B8(a7, v17);
        v22 = sub_239495304(*v21);
        if (((*(*v22 + 40))(v22) & 1) == 0)
        {
          sub_239536904();
        }

        if (v36 && (v24 = *(v36 + 24), v25 = *(v36 + 32), v26 = sub_238DE36B8(a7, v23), v25(v24, a6, v26), v28 = sub_238DE36B8(a7, v27), v29 = sub_239495304(*v28), ((*(*v29 + 40))(v29) & 1) == 0))
        {
          v30 = sub_2393D9044(0x22u);
          if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
          {
            v31 = *a5;
            v32 = HIDWORD(*a5);
            v33 = *(a5 + 8);
            *buf = 67109632;
            *&buf[4] = v32;
            *&buf[8] = 1024;
            *&buf[10] = v31;
            *&buf[14] = 1024;
            LODWORD(v38) = v33;
            _os_log_impl(&dword_238DAE000, v30, OS_LOG_TYPE_ERROR, "Success callback for connection to <%08X%08X, %d> tore down session", buf, 0x14u);
          }

          if (sub_2393D5398(1u))
          {
            sub_2393D5320(34, 1, "Success callback for connection to <%08X%08X, %d> tore down session", HIDWORD(*a5), *a5, *(a5 + 8));
          }

          v19 = 2;
          v18 = 409;
          a3 = "src/app/OperationalSessionSetup.cpp";
        }

        else
        {
          v19 = 0;
        }
      }

      result = sub_2394D0580(a1, &v36, &v35, &v34);
    }

    while (result);
  }

  return result;
}