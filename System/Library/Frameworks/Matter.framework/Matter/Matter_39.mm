uint64_t sub_23947706C(uint64_t a1, _DWORD *a2, unint64_t a3)
{
  if (a3 < 4)
  {
    v3 = 0x17300000000;
    v4 = 25;
  }

  else
  {
    v3 = 0;
    v4 = 0;
    *a2 = 3157553;
  }

  return v4 | v3;
}

uint64_t sub_2394770C0(uint64_t a1, int *a2)
{
  if (byte_27DF796AC)
  {
    v2 = dword_27DF796A8;
  }

  else
  {
    v2 = 750561408;
  }

  *a2 = v2;
  return 0;
}

uint64_t sub_2394770F0(uint64_t a1, int a2)
{
  if ((byte_27DF796AC & 1) == 0)
  {
    byte_27DF796AC = 1;
  }

  dword_27DF796A8 = a2;
  return 0;
}

unint64_t sub_2394772A8(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v8 = 0;
  v5 = (*(*a1 + 400))(a1, "chip-config", "unique-id", a2, a3, &v8);
  v6 = HIDWORD(v5);
  if (!v5)
  {
    if (v8 >= a3)
    {
      LODWORD(v5) = 25;
      LODWORD(v6) = 535;
    }

    else
    {
      *(a2 + v8) = 0;
    }
  }

  return v5 | (v6 << 32);
}

uint64_t sub_239477450(uint64_t a1, uint64_t a2)
{
  v10 = 0;
  *a2 = 0;
  v3 = sub_239476164(a1, a2);
  result = (*(*v3 + 24))(v3, &v10 + 2);
  if (!result)
  {
    *(a2 + 3) = HIWORD(v10);
    v6 = sub_239476164(result, v5);
    result = (*(*v6 + 40))(v6, &v10 + 2);
    if (!result)
    {
      *(a2 + 5) = HIWORD(v10);
      v8 = sub_239476134(result, v7);
      result = (*(*v8 + 16))(v8, &v10);
      if (!result)
      {
        v9 = BYTE1(v10) & 0xF;
        *(a2 + 1) = v10 & 0xFFF | (((*(a2 + 2) >> 4) & 0xF) << 12);
        *(a2 + 2) = v9;
      }
    }
  }

  return result;
}

void sub_23947753C(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v2 = sub_2393D9044(0x1Fu);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_238DAE000, v2, OS_LOG_TYPE_DEFAULT, "Device Configuration:", buf, 2u);
  }

  v3 = sub_2393D5398(2u);
  if (v3)
  {
    sub_2393D5320(31, 2, "Device Configuration:");
  }

  v5 = sub_239476164(v3, v4);
  v6 = (*(*v5 + 72))(v5, buf, 33);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    if (v6)
    {
      v7 = "(not set)";
    }

    else
    {
      v7 = buf;
    }

    *v17 = 136315138;
    v18 = v7;
    _os_log_impl(&dword_238DAE000, v2, OS_LOG_TYPE_DEFAULT, "  Serial Number: %s", v17, 0xCu);
  }

  if (sub_2393D5398(2u))
  {
    v8 = buf;
    if (v6)
    {
      v8 = "(not set)";
    }

    sub_2393D5320(31, 2, "  Serial Number: %s", v8);
  }

  *v17 = 0;
  if ((*(*v5 + 24))(v5, v17))
  {
    *v17 = 0;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109376;
    v20 = *v17;
    v21 = 1024;
    v22 = *v17;
    _os_log_impl(&dword_238DAE000, v2, OS_LOG_TYPE_DEFAULT, "  Vendor Id: %u (0x%X)", buf, 0xEu);
  }

  if (sub_2393D5398(2u))
  {
    sub_2393D5320(31, 2, "  Vendor Id: %u (0x%X)", *v17, *v17);
  }

  *v17 = 0;
  if ((*(*v5 + 40))(v5, v17))
  {
    *v17 = 0;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109376;
    v20 = *v17;
    v21 = 1024;
    v22 = *v17;
    _os_log_impl(&dword_238DAE000, v2, OS_LOG_TYPE_DEFAULT, "  Product Id: %u (0x%X)", buf, 0xEu);
  }

  if (sub_2393D5398(2u))
  {
    sub_2393D5320(31, 2, "  Product Id: %u (0x%X)", *v17, *v17);
  }

  if ((*(*v5 + 32))(v5, buf, 33))
  {
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v9 = sub_2393C9138();
      *v17 = 136315138;
      v18 = v9;
      _os_log_impl(&dword_238DAE000, v2, OS_LOG_TYPE_ERROR, "  Product Name: n/a (%s)", v17, 0xCu);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393C9138();
      sub_2393D5320(31, 1, "  Product Name: n/a (%s)");
    }
  }

  else
  {
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *v17 = 136315138;
      v18 = buf;
      _os_log_impl(&dword_238DAE000, v2, OS_LOG_TYPE_DEFAULT, "  Product Name: %s", v17, 0xCu);
    }

    if (sub_2393D5398(2u))
    {
      sub_2393D5320(31, 2, "  Product Name: %s");
    }
  }

  *v17 = 0;
  if ((*(*v5 + 88))(v5, v17))
  {
    *v17 = 0;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v20 = *v17;
    _os_log_impl(&dword_238DAE000, v2, OS_LOG_TYPE_DEFAULT, "  Hardware Version: %u", buf, 8u);
  }

  v10 = sub_2393D5398(2u);
  if (v10)
  {
    sub_2393D5320(31, 2, "  Hardware Version: %u", *v17);
  }

  v12 = sub_239476134(v10, v11);
  v13 = v12;
  *v17 = 0;
  if (!v12 || (*(*v12 + 56))(v12, v17))
  {
    *v17 = 0;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v20 = *v17;
    _os_log_impl(&dword_238DAE000, v2, OS_LOG_TYPE_DEFAULT, "  Setup Pin Code (0 for UNKNOWN/ERROR): %u", buf, 8u);
  }

  if (sub_2393D5398(2u))
  {
    sub_2393D5320(31, 2, "  Setup Pin Code (0 for UNKNOWN/ERROR): %u", *v17);
  }

  *v17 = 0;
  if (!v13 || (*(*v13 + 16))(v13, v17))
  {
    *v17 = -1;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109376;
    v20 = *v17;
    v21 = 1024;
    v22 = *v17;
    _os_log_impl(&dword_238DAE000, v2, OS_LOG_TYPE_DEFAULT, "  Setup Discriminator (0xFFFF for UNKNOWN/ERROR): %u (0x%X)", buf, 0xEu);
  }

  if (sub_2393D5398(2u))
  {
    sub_2393D5320(31, 2, "  Setup Discriminator (0xFFFF for UNKNOWN/ERROR): %u (0x%X)", *v17, *v17);
  }

  *v17 = 0;
  v16 = 0;
  v14 = (*(*v5 + 80))(v5, v17, &v16 + 1, &v16);
  v15 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);
  if (v14)
  {
    if (v15)
    {
      *buf = 0;
      _os_log_impl(&dword_238DAE000, v2, OS_LOG_TYPE_DEFAULT, "  Manufacturing Date: (not set)", buf, 2u);
    }

    if (sub_2393D5398(2u))
    {
      sub_2393D5320(31, 2, "  Manufacturing Date: (not set)");
    }
  }

  else
  {
    if (v15)
    {
      *buf = 67109632;
      v20 = *v17;
      v21 = 1024;
      v22 = HIBYTE(v16);
      v23 = 1024;
      v24 = v16;
      _os_log_impl(&dword_238DAE000, v2, OS_LOG_TYPE_DEFAULT, "  Manufacturing Date: %04u-%02u-%02u", buf, 0x14u);
    }

    if (sub_2393D5398(2u))
    {
      sub_2393D5320(31, 2, "  Manufacturing Date: %04u-%02u-%02u");
    }
  }

  *v17 = 0;
  if ((*(*a1 + 264))(a1, v17))
  {
    *v17 = 0;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109376;
    v20 = *v17;
    v21 = 1024;
    v22 = *v17;
    _os_log_impl(&dword_238DAE000, v2, OS_LOG_TYPE_DEFAULT, "  Device Type: %u (0x%X)", buf, 0xEu);
  }

  if (sub_2393D5398(2u))
  {
    sub_2393D5320(31, 2, "  Device Type: %u (0x%X)", *v17, *v17);
  }
}

uint64_t sub_239477D54(uint64_t a1, char *a2, unint64_t a3)
{
  if (a3 < 0xD)
  {
    v3 = 0x29C00000000;
    v4 = 25;
  }

  else
  {
    v3 = 0;
    v4 = 0;
    strcpy(a2, "Test Kitchen");
  }

  return v4 | v3;
}

uint64_t sub_239477DB4(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  if (a3)
  {
    v3 = 0;
    v4 = 0;
    *a2 = 0;
  }

  else
  {
    v3 = 0x2A400000000;
    v4 = 25;
  }

  return v4 | v3;
}

uint64_t sub_239477DFC(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  if (a3)
  {
    v3 = 0;
    v4 = 0;
    *a2 = 0;
  }

  else
  {
    v3 = 0x2AC00000000;
    v4 = 25;
  }

  return v4 | v3;
}

void *sub_239477E68(uint64_t a1, uint64_t a2)
{
  if ((atomic_load_explicit(byte_27DF773B8, memory_order_acquire) & 1) == 0)
  {
    sub_239533158();
  }

  return &unk_27DF77368;
}

void *sub_239477EA0(uint64_t a1, uint64_t a2)
{
  if ((atomic_load_explicit(byte_27DF77410, memory_order_acquire) & 1) == 0)
  {
    sub_2395331C4();
  }

  return &unk_27DF773C0;
}

uint64_t sub_239477ED8()
{
  if ((byte_27DF7BCA0 & 1) == 0)
  {
    byte_27DF7BCA0 = 1;
    xmmword_27DF7BC40 = 0u;
    *algn_27DF7BC50 = 0u;
    xmmword_27DF7BC60 = 0u;
    unk_27DF7BC70 = 0u;
    xmmword_27DF7BC90 = 0u;
    xmmword_27DF7BC80 = 0u;
    sub_2393CC8A4(&xmmword_27DF7BC40 + 8);
    *&xmmword_27DF7BC40 = &unk_284BBB510;
    *&xmmword_27DF7BC80 = &unk_284BBB540;
    *(&xmmword_27DF7BC90 + 1) = &unk_284BBB580;
  }

  return sub_2393F8DE0(&xmmword_27DF7BC40);
}

uint64_t sub_239477F9C()
{
  if ((byte_27DF7BCA0 & 1) == 0)
  {
    byte_27DF7BCA0 = 1;
    xmmword_27DF7BC40 = 0u;
    *algn_27DF7BC50 = 0u;
    xmmword_27DF7BC60 = 0u;
    unk_27DF7BC70 = 0u;
    xmmword_27DF7BC90 = 0u;
    xmmword_27DF7BC80 = 0u;
    sub_2393CC8A4(&xmmword_27DF7BC40 + 8);
    *&xmmword_27DF7BC40 = &unk_284BBB510;
    *&xmmword_27DF7BC80 = &unk_284BBB540;
    *(&xmmword_27DF7BC90 + 1) = &unk_284BBB580;
  }

  return sub_2394765B0();
}

uint64_t sub_239478060()
{
  if ((byte_27DF7BCA0 & 1) == 0)
  {
    byte_27DF7BCA0 = 1;
    xmmword_27DF7BC40 = 0u;
    *algn_27DF7BC50 = 0u;
    xmmword_27DF7BC60 = 0u;
    unk_27DF7BC70 = 0u;
    xmmword_27DF7BC90 = 0u;
    xmmword_27DF7BC80 = 0u;
    sub_2393CC8A4(&xmmword_27DF7BC40 + 8);
    *&xmmword_27DF7BC40 = &unk_284BBB510;
    *&xmmword_27DF7BC80 = &unk_284BBB540;
    *(&xmmword_27DF7BC90 + 1) = &unk_284BBB580;
  }

  return sub_23947667C();
}

uint64_t sub_239478134()
{
  if ((byte_27DF7BCA0 & 1) == 0)
  {
    byte_27DF7BCA0 = 1;
    xmmword_27DF7BC40 = 0u;
    *algn_27DF7BC50 = 0u;
    xmmword_27DF7BC60 = 0u;
    unk_27DF7BC70 = 0u;
    xmmword_27DF7BC90 = 0u;
    xmmword_27DF7BC80 = 0u;
    sub_2393CC8A4(&xmmword_27DF7BC40 + 8);
    *&xmmword_27DF7BC40 = &unk_284BBB510;
    *&xmmword_27DF7BC80 = &unk_284BBB540;
    *(&xmmword_27DF7BC90 + 1) = &unk_284BBB580;
  }

  return sub_23947682C();
}

uint64_t sub_2394781F8()
{
  if ((byte_27DF7BCA0 & 1) == 0)
  {
    byte_27DF7BCA0 = 1;
    xmmword_27DF7BC40 = 0u;
    *algn_27DF7BC50 = 0u;
    xmmword_27DF7BC60 = 0u;
    unk_27DF7BC70 = 0u;
    xmmword_27DF7BC90 = 0u;
    xmmword_27DF7BC80 = 0u;
    sub_2393CC8A4(&xmmword_27DF7BC40 + 8);
    *&xmmword_27DF7BC40 = &unk_284BBB510;
    *&xmmword_27DF7BC80 = &unk_284BBB540;
    *(&xmmword_27DF7BC90 + 1) = &unk_284BBB580;
  }

  return sub_239476754();
}

uint64_t sub_2394782CC()
{
  if ((byte_27DF7BCA0 & 1) == 0)
  {
    byte_27DF7BCA0 = 1;
    xmmword_27DF7BC40 = 0u;
    *algn_27DF7BC50 = 0u;
    xmmword_27DF7BC60 = 0u;
    unk_27DF7BC70 = 0u;
    xmmword_27DF7BC90 = 0u;
    xmmword_27DF7BC80 = 0u;
    sub_2393CC8A4(&xmmword_27DF7BC40 + 8);
    *&xmmword_27DF7BC40 = &unk_284BBB510;
    *&xmmword_27DF7BC80 = &unk_284BBB540;
    *(&xmmword_27DF7BC90 + 1) = &unk_284BBB580;
  }

  return sub_2394768F8();
}

uint64_t sub_2394783A8()
{
  if ((byte_27DF7BCA0 & 1) == 0)
  {
    byte_27DF7BCA0 = 1;
    xmmword_27DF7BC40 = 0u;
    *algn_27DF7BC50 = 0u;
    xmmword_27DF7BC60 = 0u;
    unk_27DF7BC70 = 0u;
    xmmword_27DF7BC90 = 0u;
    xmmword_27DF7BC80 = 0u;
    sub_2393CC8A4(&xmmword_27DF7BC40 + 8);
    *&xmmword_27DF7BC40 = &unk_284BBB510;
    *&xmmword_27DF7BC80 = &unk_284BBB540;
    *(&xmmword_27DF7BC90 + 1) = &unk_284BBB580;
  }

  return sub_2394769D0();
}

uint64_t sub_23947847C()
{
  if ((byte_27DF7BCA0 & 1) == 0)
  {
    byte_27DF7BCA0 = 1;
    xmmword_27DF7BC40 = 0u;
    *algn_27DF7BC50 = 0u;
    xmmword_27DF7BC60 = 0u;
    unk_27DF7BC70 = 0u;
    xmmword_27DF7BC90 = 0u;
    xmmword_27DF7BC80 = 0u;
    sub_2393CC8A4(&xmmword_27DF7BC40 + 8);
    *&xmmword_27DF7BC40 = &unk_284BBB510;
    *&xmmword_27DF7BC80 = &unk_284BBB540;
    *(&xmmword_27DF7BC90 + 1) = &unk_284BBB580;
  }

  return sub_239476AA8();
}

const char *sub_239478540(unsigned int a1)
{
  if (a1 > 2)
  {
    return "(unknown)";
  }

  else
  {
    return off_278A82D50[a1];
  }
}

uint64_t sub_23947858C(void *a1, uint64_t a2)
{
  *a1 = &unk_284BBB3E0;
  sub_2394786E4(a1 + 3, a2);

  return sub_23947869C(a1, v3);
}

void sub_2394785E0(void *a1, uint64_t a2)
{
  *a1 = &unk_284BBB3E0;
  sub_2394786E4(a1 + 3, a2);
  sub_23947869C(a1, v3);

  JUMPOUT(0x23EE77B60);
}

uint64_t sub_23947865C(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  v4 = &v3;
  return sub_2393D6A10((a1 + 40), &v4, sub_239478884);
}

uint64_t sub_23947869C(uint64_t result, uint64_t a2)
{
  *result = &unk_284BBB440;
  if ((*(result + 8) | 4) != 4)
  {
    sub_239533230();
  }

  *(result + 8) = 5;
  return result;
}

void *sub_2394786E4(void *result, uint64_t a2)
{
  if ((byte_27DF7BD68 & 1) == 0)
  {
    if (*result)
    {
      sub_2395332B8(result);
    }
  }

  return result;
}

_DWORD *sub_239478710(unint64_t *a1, uint64_t a2)
{
  v4 = sub_2393D52C4(0x50uLL);
  v5 = v4;
  if (v4)
  {
    v4[2] = 1;
    *(v4 + 2) = 0;
    *(v4 + 3) = a2;
    *(v4 + 32) = 0;
    *(v4 + 5) = 0;
    *(v4 + 6) = 0;
    v4[14] = -1;
    *v4 = &unk_284BB8240;
    v4[18] = 0;
    v6 = sub_2393D52C4(0x18uLL);
    if (v6)
    {
      *v6 = v5;
      v6[1] = a1 + 2;
      v6[2] = 0;
      v7 = a1[4];
      v6[2] = v7;
      *(v7 + 8) = v6;
      a1[4] = v6;
      v8 = a1[1];
      v9 = *a1 + 1;
      *a1 = v9;
      if (v9 > v8)
      {
        a1[1] = v9;
      }
    }

    else
    {
      return 0;
    }
  }

  return v5;
}

void sub_2394787D4(uint64_t a1, void *a2)
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
    (*(*a2 + 40))(a2);
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

uint64_t sub_239478894(void *a1, uint64_t a2)
{
  *a1 = &unk_284BBB478;
  sub_2394786E4(a1 + 3, a2);

  return sub_2394789A4(a1, v3);
}

void sub_2394788E8(void *a1, uint64_t a2)
{
  *a1 = &unk_284BBB478;
  sub_2394786E4(a1 + 3, a2);
  sub_2394789A4(a1, v3);

  JUMPOUT(0x23EE77B60);
}

uint64_t sub_239478964(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  v4 = &v3;
  return sub_2393D6A10((a1 + 40), &v4, sub_239478B6C);
}

uint64_t sub_2394789A4(uint64_t result, uint64_t a2)
{
  *result = &unk_284BBB4D8;
  if ((*(result + 8) | 4) != 4)
  {
    sub_239533230();
  }

  *(result + 8) = 5;
  return result;
}

char *sub_2394789EC(unint64_t *a1, uint64_t a2)
{
  v4 = sub_2393D52C4(0x88uLL);
  v5 = v4;
  if (v4)
  {
    *(v4 + 2) = 1;
    *(v4 + 2) = 0;
    *(v4 + 3) = a2;
    *(v4 + 2) = 0u;
    *(v4 + 3) = 0u;
    *(v4 + 4) = 0u;
    *(v4 + 73) = 0u;
    v4[89] = 1;
    *(v4 + 12) = 0;
    *(v4 + 13) = 0;
    *(v4 + 116) = 0xFFFFFFFF00000000;
    *v4 = &unk_284BB8078;
    v6 = sub_2393D52C4(0x18uLL);
    if (v6)
    {
      *v6 = v5;
      v6[1] = a1 + 2;
      v6[2] = 0;
      v7 = a1[4];
      v6[2] = v7;
      *(v7 + 8) = v6;
      a1[4] = v6;
      v8 = a1[1];
      v9 = *a1 + 1;
      *a1 = v9;
      if (v9 > v8)
      {
        a1[1] = v9;
      }
    }

    else
    {
      return 0;
    }
  }

  return v5;
}

void sub_239478ABC(uint64_t a1, void *a2)
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
    (*(*a2 + 56))(a2);
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

double sub_239478BC0@<D0>(uint64_t a1@<X8>)
{
  *a1 = v1;
  result = 0.0;
  *(a1 + 56) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 72) = 0;
  *(a1 + 48) = a1 + 40;
  *(a1 + 56) = a1 + 40;
  return result;
}

unint64_t sub_239478C5C(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  *(a1 + 8) = 0;
  sub_2393C90B8();
  sub_2394761E8();
  v1 = sub_239476194();
  if (v1)
  {
    v2 = sub_2393D9044(0x1Fu);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v26 = sub_2393C9138();
      _os_log_impl(&dword_238DAE000, v2, OS_LOG_TYPE_ERROR, "Entropy initialization failed: %s", buf, 0xCu);
    }

    if (sub_2393D5398(1u))
    {
      v3 = "Entropy initialization failed: %s";
LABEL_43:
      v23 = sub_2393C9138();
      sub_2393D5320(31, 1, v3, v23);
    }
  }

  else
  {
    v4 = sub_239476328();
    v5 = (*(*v4 + 16))(v4);
    v1 = v5;
    if (v5)
    {
      v7 = sub_2393D9044(0x1Fu);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v26 = sub_2393C9138();
        _os_log_impl(&dword_238DAE000, v7, OS_LOG_TYPE_ERROR, "SystemLayer initialization failed: %s", buf, 0xCu);
      }

      if (sub_2393D5398(1u))
      {
        v3 = "SystemLayer initialization failed: %s";
        goto LABEL_43;
      }
    }

    else
    {
      v8 = sub_239476450(v5, v6);
      v9 = (*(*v8 + 328))(v8);
      v1 = v9;
      if (v9)
      {
        v11 = sub_2393D9044(0x1Fu);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315138;
          v26 = sub_2393C9138();
          _os_log_impl(&dword_238DAE000, v11, OS_LOG_TYPE_ERROR, "Configuration Manager initialization failed: %s", buf, 0xCu);
        }

        if (sub_2393D5398(1u))
        {
          v3 = "Configuration Manager initialization failed: %s";
          goto LABEL_43;
        }
      }

      else
      {
        v12 = sub_239477E68(v9, v10);
        v13 = sub_239476328();
        v14 = sub_2394791B0(v12, v13);
        v1 = v14;
        if (v14)
        {
          v16 = sub_2393D9044(0x1Fu);
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315138;
            v26 = sub_2393C9138();
            _os_log_impl(&dword_238DAE000, v16, OS_LOG_TYPE_ERROR, "UDP initialization failed: %s", buf, 0xCu);
          }

          if (sub_2393D5398(1u))
          {
            v3 = "UDP initialization failed: %s";
            goto LABEL_43;
          }
        }

        else
        {
          v17 = sub_239477EA0(v14, v15);
          v18 = sub_239476328();
          v1 = sub_2394791B0(v17, v18);
          if (v1)
          {
            v19 = sub_2393D9044(0x1Fu);
            if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315138;
              v26 = sub_2393C9138();
              _os_log_impl(&dword_238DAE000, v19, OS_LOG_TYPE_ERROR, "TCP initialization failed: %s", buf, 0xCu);
            }

            if (sub_2393D5398(1u))
            {
              v3 = "TCP initialization failed: %s";
              goto LABEL_43;
            }
          }

          else
          {
            if ((byte_27DF7BCA0 & 1) == 0)
            {
              byte_27DF7BCA0 = 1;
              sub_23947A3C4(&xmmword_27DF7BC40);
            }

            v1 = sub_239476474(&xmmword_27DF7BC40);
            if (v1)
            {
              v20 = sub_2393D9044(0x1Fu);
              if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
              {
                *buf = 136315138;
                v26 = sub_2393C9138();
                _os_log_impl(&dword_238DAE000, v20, OS_LOG_TYPE_ERROR, "BLEManager initialization failed: %s", buf, 0xCu);
              }

              if (sub_2393D5398(1u))
              {
                v3 = "BLEManager initialization failed: %s";
                goto LABEL_43;
              }
            }

            else
            {
              v1 = sub_2393D52B8();
              if (v1)
              {
                v21 = sub_2393D9044(0x1Fu);
                if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
                {
                  *buf = 136315138;
                  v26 = sub_2393C9138();
                  _os_log_impl(&dword_238DAE000, v21, OS_LOG_TYPE_ERROR, "Connectivity Manager initialization failed: %s", buf, 0xCu);
                }

                if (sub_2393D5398(1u))
                {
                  v3 = "Connectivity Manager initialization failed: %s";
                  goto LABEL_43;
                }
              }

              else
              {
                sub_23948A9E8();
                v1 = sub_23948AA30();
                if (v1)
                {
                  v22 = sub_2393D9044(0x1Fu);
                  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 136315138;
                    v26 = sub_2393C9138();
                    _os_log_impl(&dword_238DAE000, v22, OS_LOG_TYPE_ERROR, "NFC-based Commissioning Manager initialization failed: %s", buf, 0xCu);
                  }

                  if (sub_2393D5398(1u))
                  {
                    v3 = "NFC-based Commissioning Manager initialization failed: %s";
                    goto LABEL_43;
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return v1;
}

uint64_t sub_2394791B0(uint64_t a1, uint64_t a2)
{
  sub_2393D0060();
  if (*(a1 + 8))
  {
    v4 = 0x4000000000;
LABEL_7:
    v5 = 3;
    return v5 | v4;
  }

  *(a1 + 8) = 1;
  if (!(*(*a2 + 32))(a2))
  {
    v4 = 0x4100000000;
    goto LABEL_7;
  }

  *(a1 + 16) = a2;
  v4 = 0;
  v5 = 0;
  if (*(a1 + 8) == 1)
  {
    *(a1 + 8) = 2;
  }

  return v5 | v4;
}

uint64_t sub_239479268()
{
  v0 = sub_2393D9044(0x1Fu);
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_238DAE000, v0, OS_LOG_TYPE_DEFAULT, "Inet Layer shutdown", buf, 2u);
  }

  v1 = sub_2393D5398(2u);
  if (v1)
  {
    sub_2393D5320(31, 2, "Inet Layer shutdown");
  }

  v3 = sub_239477E68(v1, v2);
  if (v3[8] == 2)
  {
    v3[8] = 0;
  }

  *(v3 + 2) = 0;
  v5 = sub_239477EA0(v3, v4);
  if (v5[8] == 2)
  {
    v5[8] = 0;
  }

  *(v5 + 2) = 0;
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v12 = 0;
    _os_log_impl(&dword_238DAE000, v0, OS_LOG_TYPE_DEFAULT, "BLE Layer shutdown", v12, 2u);
  }

  if (sub_2393D5398(2u))
  {
    sub_2393D5320(31, 2, "BLE Layer shutdown");
  }

  if ((byte_27DF7BCA0 & 1) == 0)
  {
    byte_27DF7BCA0 = 1;
    sub_23947A3C4(&xmmword_27DF7BC40);
  }

  v6 = sub_2393F8DE0(&xmmword_27DF7BC40);
  sub_2393CC97C(v6);
  nullsub_56();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v11 = 0;
    _os_log_impl(&dword_238DAE000, v0, OS_LOG_TYPE_DEFAULT, "NFCCommissioningMgr shutdown", v11, 2u);
  }

  if (sub_2393D5398(2u))
  {
    sub_2393D5320(31, 2, "NFCCommissioningMgr shutdown");
  }

  v7 = sub_23948A9E8();
  sub_23948AABC(v7);
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&dword_238DAE000, v0, OS_LOG_TYPE_DEFAULT, "System Layer shutdown", v10, 2u);
  }

  if (sub_2393D5398(2u))
  {
    sub_2393D5320(31, 2, "System Layer shutdown");
  }

  v8 = sub_239476328();
  return (*(*v8 + 24))(v8);
}

uint64_t sub_23947948C(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  if (*a1)
  {
    while (v6[1] != a2 || v6[2] != a3)
    {
      v6 = *v6;
      if (!v6)
      {
        goto LABEL_5;
      }
    }

    return 0;
  }

  else
  {
LABEL_5:
    v7 = sub_2393D52C4(0x18uLL);
    if (v7)
    {
      v8 = v7;
      result = 0;
      *v8 = *a1;
      v8[1] = a2;
      v8[2] = a3;
      *a1 = v8;
    }

    else
    {
      return 0xC50000000BLL;
    }
  }

  return result;
}

void *sub_23947952C(void **a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  result = *a1;
  if (result)
  {
    do
    {
      if (result[1] == a2 && result[2] == a3)
      {
        *v3 = *result;
        j__free(result);
      }

      else
      {
        v3 = result;
      }

      result = *v3;
    }

    while (*v3);
  }

  return result;
}

void sub_239479598(uint64_t a1, uint64_t a2)
{
  if (qword_27DF7BD08 != -1)
  {
    sub_2395333CC(a1);
  }

  v2 = qword_27DF7BCB0;
  if (qword_27DF7BCB0)
  {
    v4 = 0;
    v3 = sub_239476450(a1, a2);
    if (!(*(*v3 + 32))(v3, &v4))
    {
      (*(*v2 + 16))(v2, v4);
    }
  }
}

uint64_t sub_239479640(uint64_t a1)
{
  if (qword_27DF7BD08 != -1)
  {
    sub_2395333CC(a1);
  }

  result = qword_27DF7BCB0;
  if (qword_27DF7BCB0)
  {
    v2 = *(*qword_27DF7BCB0 + 24);

    return v2();
  }

  return result;
}

uint64_t sub_2394796B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v9 = 0;
  v8 = 0;
  v12 = 0u;
  v3 = a1 - 16;
  v7 = 2;
  v10 = a2;
  v11 = a3;
  v4 = *(a1 + 24);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_239479F60;
  block[3] = &unk_278A82D68;
  block[4] = v3;
  dispatch_async(v4, block);
  return 0;
}

uint64_t sub_239479780(uint64_t a1, __int128 *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = a2[1];
  v7 = *a2;
  v8 = v2;
  v3 = a1 - 16;
  v9 = *(a2 + 4);
  v4 = *(a1 + 24);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_239479F60;
  block[3] = &unk_278A82D68;
  block[4] = v3;
  dispatch_async(v4, block);
  return 0;
}

void sub_239479838(uint64_t ***a1, unsigned __int16 *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = (*(*off_27DF765E8 + 2))(off_27DF765E8);
  v5 = *a2;
  if (v5 != 1)
  {
    if (v5 == 2)
    {
      (*(a2 + 1))(*(a2 + 2));
    }

    else if (v5 == 3)
    {
      (*(a2 + 1))(a2 + 8);
    }

    else
    {
      sub_2394799EC();
      if (*a2 < 0)
      {
        v6 = *a1;
        if (*a1)
        {
          do
          {
            v7 = *v6;
            (v6[1])(a2, v6[2]);
            v6 = v7;
          }

          while (v7);
        }
      }
    }
  }

  v8 = (*(*off_27DF765E8 + 2))(off_27DF765E8) - v4;
  if (v8 >= 0x65)
  {
    v9 = sub_2393D9044(0x1Fu);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = *a2;
      *buf = 67109376;
      v12 = v8;
      v13 = 1024;
      v14 = v10;
      _os_log_impl(&dword_238DAE000, v9, OS_LOG_TYPE_ERROR, "Long dispatch time: %u ms, for event type %d", buf, 0xEu);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(31, 1, "Long dispatch time: %u ms, for event type %d", v8, *a2);
    }
  }
}

void sub_2394799EC()
{
  if ((byte_27DF7BCA0 & 1) == 0)
  {
    byte_27DF7BCA0 = 1;
    sub_23947A3C4(&xmmword_27DF7BC40);
  }

  sub_239476B74();

  nullsub_56();
}

uint64_t ***sub_239479A54(uint64_t ***result, uint64_t a2)
{
  v2 = *result;
  if (*result)
  {
    do
    {
      v4 = *v2;
      result = (v2[1])(a2, v2[2]);
      v2 = v4;
    }

    while (v4);
  }

  return result;
}

void sub_239479A98(uint64_t result)
{
  v1 = result;
  if (qword_27DF7BD08 != -1)
  {
    sub_2395333CC(result);
  }

  if (byte_27DF7BCC0 != v1)
  {
    byte_27DF7BCC0 = v1;
  }
}

dispatch_object_t *sub_239479AE4(dispatch_object_t *a1)
{
  *a1 = 0;
  a1[1] = 0;
  a1[4] = 0;
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v3 = dispatch_queue_attr_make_with_qos_class(v2, QOS_CLASS_USER_INITIATED, -15);
  a1[5] = dispatch_queue_create("org.csa-iot.matter.workqueue", v3);

  *(a1 + 12) = 0;
  a1[7] = 0;
  v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  a1[8] = dispatch_queue_create("org.csa-iot.matter.signalqueue", v4);

  a1[11] = 0;
  a1[10] = 0;
  a1[9] = (a1 + 10);
  dispatch_queue_set_specific(a1[5], a1, a1, 0);
  dispatch_suspend(a1[5]);
  return a1;
}

unint64_t sub_239479BC4(uint64_t a1)
{
  v2 = sub_239476328();
  (*(*v2 + 152))(v2, *(a1 + 40));
  v3 = sub_239478C5C(a1 + 16);
  if (v3)
  {
    v4 = v3 & 0xFFFFFFFF00000000;
  }

  else
  {
    v5 = (*(*off_27DF765E8 + 2))(off_27DF765E8);
    LODWORD(v3) = 0;
    v4 = 0;
    *(a1 + 32) = v5;
  }

  return v4 | v3;
}

uint64_t sub_239479C70(uint64_t a1)
{
  v1 = 0;
  atomic_compare_exchange_strong((a1 + 48), &v1, 1u);
  if (v1)
  {
    v2 = 0x6400000000;
    v3 = 3;
  }

  else
  {
    dispatch_resume(*(a1 + 40));
    v2 = 0;
    v3 = 0;
  }

  return v3 | v2;
}

uint64_t sub_239479CCC(uint64_t a1)
{
  v3 = 1;
  atomic_compare_exchange_strong((a1 + 48), &v3, 2u);
  if (v3 == 1)
  {
    v11[7] = v1;
    v11[8] = v2;
    specific = dispatch_get_specific(a1);
    v6 = MEMORY[0x277D85DA0];
    if (specific == a1)
    {
      v6 = MEMORY[0x277D85D58];
    }

    v7 = *(a1 + 40);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = sub_239479DDC;
    v11[3] = &unk_278A73E78;
    v11[4] = a1;
    v6(v7, v11);
    v8 = 0;
    v9 = 0;
  }

  else
  {
    v8 = 0x6D00000000;
    v9 = 3;
  }

  return v9 | v8;
}

NSObject *sub_239479DDC(uint64_t a1)
{
  v1 = *(a1 + 32);
  dispatch_suspend(*(v1 + 40));
  atomic_store(0, (v1 + 48));
  result = *(v1 + 56);
  if (result)
  {

    return dispatch_semaphore_signal(result);
  }

  return result;
}

void sub_239479E30(uint64_t a1)
{
  v2 = dispatch_semaphore_create(0);
  v3 = *(a1 + 56);
  *(a1 + 56) = v2;

  v4 = 0;
  atomic_compare_exchange_strong((a1 + 48), &v4, 1u);
  if (!v4)
  {
    dispatch_resume(*(a1 + 40));
  }

  dispatch_semaphore_wait(*(a1 + 56), 0xFFFFFFFFFFFFFFFFLL);
  v5 = *(a1 + 56);
  *(a1 + 56) = 0;
}

uint64_t sub_239479EA8(uint64_t a1, __int128 *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = a2[1];
  v6 = *a2;
  v7 = v2;
  v8 = *(a2 + 4);
  v3 = *(a1 + 40);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_239479F60;
  block[3] = &unk_278A82D68;
  block[4] = a1;
  dispatch_async(v3, block);
  return 0;
}

BOOL sub_239479F74(unsigned int *a1)
{
  if (dispatch_get_specific(a1) == a1)
  {
    return 1;
  }

  v2 = atomic_load(a1 + 12);
  return v2 == 0;
}

uint64_t sub_239479FB8(uint64_t a1, uint64_t a2, int a3)
{
  if ((byte_27DF7BCA0 & 1) == 0)
  {
    byte_27DF7BCA0 = 1;
    sub_23947A3C4(&xmmword_27DF7BC40);
  }

  v5 = sub_239476518(&xmmword_27DF7BC40, a2, a3);
  v6 = v5;
  if (!v5)
  {
    return 0;
  }

  v8 = 2;
  v9 = "dwnpm_ble_scan";
  v10 = v5;
  v11 = 3;
  sub_23948BD20(&v8);
  return v6;
}

uint64_t sub_23947A05C()
{
  if ((byte_27DF7BCA0 & 1) == 0)
  {
    byte_27DF7BCA0 = 1;
    sub_23947A3C4(&xmmword_27DF7BC40);
  }

  v0 = sub_239476564(&xmmword_27DF7BC40);
  v1 = v0;
  if (!v0)
  {
    return 0;
  }

  v3 = 2;
  v4 = "dwnpm_ble_scan";
  v5 = v0;
  v6 = 3;
  sub_23948BD20(&v3);
  return v1;
}

uint64_t sub_23947A0F0(uint64_t a1, int a2, void *a3)
{
  LODWORD(handle) = a2;
  v5 = a3;
  if (a2 < 0)
  {
    goto LABEL_10;
  }

  v6 = *(a1 + 80);
  if (!v6)
  {
    goto LABEL_9;
  }

  v7 = a1 + 80;
  do
  {
    if (*(v6 + 32) >= a2)
    {
      v7 = v6;
    }

    v6 = *(v6 + 8 * (*(v6 + 32) < a2));
  }

  while (v6);
  if (v7 != a1 + 80 && *(v7 + 32) <= a2)
  {
LABEL_10:
    v12 = 0;
  }

  else
  {
LABEL_9:
    signal(a2, 1);
    v8 = dispatch_source_create(MEMORY[0x277D85D30], handle, 0, *(a1 + 64));
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = sub_23947A27C;
    v14[3] = &unk_278A82D90;
    v16 = a1;
    v15 = v5;
    dispatch_source_set_event_handler(v8, v14);
    p_handle = &handle;
    v9 = sub_23947A538(a1 + 72, &handle, &unk_23958D927, &p_handle);
    v10 = v9[5];
    v9[5] = v8;
    v11 = v8;

    dispatch_resume(v11);
    v12 = 1;
  }

  return v12;
}

uint64_t sub_23947A288(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    return 0;
  }

  v4 = *(a1 + 80);
  v2 = a1 + 80;
  v3 = v4;
  if (!v4)
  {
    return 0;
  }

  v6 = (v2 - 8);
  v7 = v2;
  do
  {
    if (*(v3 + 32) >= a2)
    {
      v7 = v3;
    }

    v3 = *(v3 + 8 * (*(v3 + 32) < a2));
  }

  while (v3);
  if (v7 == v2 || *(v7 + 32) > a2)
  {
    return 0;
  }

  dispatch_source_cancel(*(v7 + 40));
  sub_23947A674(v6, v7);
  signal(a2, 0);
  return 1;
}

void sub_23947A328(void *a1)
{
  v2 = a1 + 9;
  v3 = a1[9];
  v4 = a1 + 10;
  if (v3 != a1 + 10)
  {
    do
    {
      dispatch_source_cancel(v3[5]);
      signal(*(v3 + 8), 0);
      v5 = v3[1];
      if (v5)
      {
        do
        {
          v6 = v5;
          v5 = *v5;
        }

        while (v5);
      }

      else
      {
        do
        {
          v6 = v3[2];
          v7 = *v6 == v3;
          v3 = v6;
        }

        while (!v7);
      }

      v3 = v6;
    }

    while (v6 != v4);
  }

  sub_23947A4DC(v2, a1[10]);
  a1[10] = 0;
  a1[11] = 0;
  a1[9] = v4;
}

uint64_t sub_23947A3C4(char *a1)
{
  *(a1 + 5) = 0u;
  *(a1 + 2) = 0u;
  *(a1 + 3) = 0u;
  *a1 = 0u;
  *(a1 + 1) = 0u;
  *(a1 + 4) = 0u;
  v2 = a1 + 64;
  sub_2393CC8A4((a1 + 8));
  *a1 = &unk_284BBB510;
  *v2 = &unk_284BBB540;
  *(a1 + 11) = &unk_284BBB580;

  return __cxa_atexit(nullsub_851, a1, &dword_238DAE000);
}

void sub_23947A48C(uint64_t a1)
{
  sub_23947A4DC(a1 + 72, *(a1 + 80));

  v2 = *(a1 + 40);
}

void sub_23947A4DC(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_23947A4DC(a1, *a2);
    sub_23947A4DC(a1, a2[1]);

    operator delete(a2);
  }
}

uint64_t *sub_23947A538(uint64_t a1, int *a2, uint64_t a3, _DWORD **a4)
{
  v4 = *(a1 + 8);
  if (!v4)
  {
LABEL_8:
    operator new();
  }

  v5 = *a2;
  while (1)
  {
    while (1)
    {
      v6 = v4;
      v7 = *(v4 + 32);
      if (v5 >= v7)
      {
        break;
      }

      v4 = *v6;
      if (!*v6)
      {
        goto LABEL_8;
      }
    }

    if (v7 >= v5)
    {
      return v6;
    }

    v4 = v6[1];
    if (!v4)
    {
      goto LABEL_8;
    }
  }
}

uint64_t sub_23947A628(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t *sub_23947A674(uint64_t **a1, uint64_t a2)
{
  v3 = sub_2393C2020(a1, a2);

  operator delete(a2);
  return v3;
}

unint64_t sub_23947A72C(uint64_t a1, void *a2)
{
  if (!gettimeofday(&v8, 0))
  {
    if (v8.tv_sec >= 946684800)
    {
      if ((v8.tv_usec & 0x80000000) == 0)
      {
        v6 = 0;
        v5 = 0;
        *a2 = v8.tv_usec + 1000000 * v8.tv_sec;
        return v5 | v6;
      }

      v5 = 0x4300000000;
    }

    else
    {
      v5 = 0x3F00000000;
    }

    v6 = 191;
    return v5 | v6;
  }

  v3 = __error();
  v4 = sub_2393D948C(*v3, "src/platform/Darwin/SystemTimeSupport.cpp", 0x3Bu);
  v5 = v4 & 0xFFFFFFFF00000000;
  v6 = v4;
  return v5 | v6;
}

uint64_t sub_23947A7E8(uint64_t a1, unint64_t *a2)
{
  result = (*(*a1 + 40))(a1, &v4);
  *a2 = v4 / 0x3E8;
  return result;
}

unint64_t sub_23947A85C(uint64_t a1, unint64_t a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v10.tv_sec = a2 / 0xF4240;
  v10.tv_usec = a2 % 0xF4240;
  if (settimeofday(&v10, 0))
  {
    if (*__error() == 1)
    {
      v2 = 0x5900000000;
      v3 = 165;
    }

    else
    {
      v5 = __error();
      v6 = sub_2393D948C(*v5, "src/platform/Darwin/SystemTimeSupport.cpp", 0x59u);
      v2 = v6 & 0xFFFFFFFF00000000;
      v3 = v6;
    }
  }

  else
  {
    tv_sec = v10.tv_sec;
    localtime_r(&tv_sec, &v8);
    v4 = sub_2393D9044(0x1Fu);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134219520;
      v12 = v10.tv_sec;
      v13 = 1024;
      tm_year = v8.tm_year;
      v15 = 1024;
      tm_mon = v8.tm_mon;
      v17 = 1024;
      tm_mday = v8.tm_mday;
      v19 = 1024;
      tm_hour = v8.tm_hour;
      v21 = 1024;
      tm_min = v8.tm_min;
      v23 = 1024;
      tm_sec = v8.tm_sec;
      _os_log_impl(&dword_238DAE000, v4, OS_LOG_TYPE_DEFAULT, "Real time clock set to %ld (%04d/%02d/%02d %02d:%02d:%02d UTC)", buf, 0x30u);
    }

    if (sub_2393D5398(2u))
    {
      sub_2393D5320(31, 2, "Real time clock set to %ld (%04d/%02d/%02d %02d:%02d:%02d UTC)", v10.tv_sec, v8.tm_year, v8.tm_mon, v8.tm_mday, v8.tm_hour, v8.tm_min, v8.tm_sec);
    }

    v2 = 0;
    v3 = 0;
  }

  return v3 | v2;
}

uint64_t sub_23947AA38()
{
  v12 = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v1 = [v0 integerForKey:@"BDXThrottleIntervalForThreadDevicesInMSecs"];
  v2 = v1;
  v3 = v1 - 0x10000;

  v4 = 0;
  v5 = 0;
  v6 = 0;
  if (v3 >= 0xFFFFFFFFFFFF0001)
  {
    v7 = v2 | 0x10000;
  }

  else
  {
    v7 = 0;
  }

  if (v7 >= 0x10000)
  {
    v8 = sub_2393D9044(0xCu);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v11 = v7;
      _os_log_impl(&dword_238DAE000, v8, OS_LOG_TYPE_DEFAULT, "Got a user default value for BDX Throttle Interval for Thread devices - %d msecs", buf, 8u);
    }

    if (sub_2393D5398(2u))
    {
      sub_2393D5320(12, 2, "Got a user default value for BDX Throttle Interval for Thread devices - %d msecs", v7);
    }

    v6 = v7 & 0xFF00;
    v4 = v7;
    v5 = 0x10000;
  }

  return v5 | v4 | v6;
}

uint64_t sub_23947AB88()
{
  v9 = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v1 = [v0 integerForKey:@"BDXThreadFramesPerBlock"];
  v2 = v1;
  v3 = v1 - 256;

  if (v3 < 0xFFFFFFFFFFFFFF01)
  {
    return 0;
  }

  v5 = sub_2393D9044(0xCu);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v8 = v2;
    _os_log_impl(&dword_238DAE000, v5, OS_LOG_TYPE_DEFAULT, "Got a user default value for thread frames per block - %d", buf, 8u);
  }

  v4 = v2 | 0x100u;
  if (sub_2393D5398(2u))
  {
    sub_2393D5320(12, 2, "Got a user default value for thread frames per block - %d", v2);
  }

  return v4;
}

uint64_t sub_23947ACB4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if ((byte_27DF7BD28 & 1) == 0)
  {
    byte_27DF7BD28 = 1;
    qword_27DF7BD18 = 0;
    unk_27DF7BD20 = 0;
    qword_27DF7BD10 = 0;
LABEL_13:
    sub_23947ADF4(a1, a1);
    return a3;
  }

  if (qword_27DF7BD10 == qword_27DF7BD18)
  {
    goto LABEL_13;
  }

  v4 = qword_27DF7BD10 + 8;
  do
  {
    v5 = *(v4 - 8);
    v6 = v5 == a1 || v4 == qword_27DF7BD18;
    v4 += 8;
  }

  while (!v6);
  if (v5 != a1)
  {
    goto LABEL_13;
  }

  v7 = *a1;
  if (a3)
  {
    (*(v7 + 16))();
  }

  else
  {
    (*(v7 + 24))();
  }

  return a3;
}

uint64_t sub_23947AD90(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  if (*a1 == v3)
  {
    return 0x11D00000010;
  }

  v4 = 16;
  while (*v2 != a2)
  {
    if (++v2 == v3)
    {
      v5 = 0x11D00000000;
      return v4 | v5;
    }
  }

  v5 = 0;
  v4 = 0;
  return v4 | v5;
}

void sub_23947ADF4(uint64_t a1, void *a2)
{
  v3 = a2[3];
  if (v3)
  {
    DNSServiceRefDeallocate(v3);
    a2[3] = 0;
  }

  if (a2[4])
  {
    advertising_proxy_ref_dealloc();
    a2[4] = 0;
  }

  v4 = a2[5];
  if (v4)
  {
    free(v4);
    a2[5] = 0;
  }

  v5 = a2[6];
  if (v5)
  {
    free(v5);
    a2[6] = 0;
  }

  (**a2)(a2);

  j__free(a2);
}

uint64_t sub_23947AE90(uint64_t *a1, uint64_t a2)
{
  v4 = sub_2393C9138();

  return sub_23947ACB4(a1, v4, a2);
}

uint64_t sub_23947AEF0(uint64_t *a1, uint64_t a2)
{
  v2 = a2;
  v4 = sub_23947F330(a2);
  v5 = sub_23947F4F0(v2);

  return sub_23947ACB4(a1, v4, v5);
}

uint64_t sub_23947AF50(uint64_t *a1, uint64_t a2)
{
  v2 = a2;
  v4 = sub_23947F228(a2);
  v5 = sub_23947F4F0(v2);

  return sub_23947ACB4(a1, v4, v5);
}

void ***sub_23947AFB0(void ***a1)
{
  v1 = a1;
  v2 = *a1;
  if (*a1 != a1[1])
  {
    do
    {
      sub_23947ADF4(a1, *v2);
      v3 = v1[1];
      v4 = v3 - (v2 + 1);
      if (v3 != v2 + 1)
      {
        a1 = memmove(v2, v2 + 1, v3 - (v2 + 1));
      }

      v1[1] = (v2 + v4);
    }

    while (v2 != (v2 + v4));
    v2 = *v1;
  }

  if (v2)
  {
    v1[1] = v2;
    operator delete(v2);
  }

  return v1;
}

unint64_t sub_23947B038(uint64_t a1, void *a2)
{
  if (!a2)
  {
    v8 = 0xAE00000000;
LABEL_9:
    v9 = 47;
    return v9 | v8;
  }

  v3 = a2[3];
  if (!v3)
  {
    sub_23947ADF4(a1, a2);
    v8 = 0xB200000000;
    goto LABEL_9;
  }

  if (qword_27DF7BD08 != -1)
  {
    sub_23953312C();
  }

  v5 = DNSServiceSetDispatchQueue(v3, qword_27DF7BCD0);
  if (v5)
  {
    v6 = v5;
    sub_23947ADF4(v5, a2);
    v7 = sub_23947F4F0(v6);
    v8 = v7 & 0xFFFFFFFF00000000;
    v9 = v7;
  }

  else
  {
    v12 = *(a1 + 8);
    v11 = *(a1 + 16);
    if (v12 >= v11)
    {
      v14 = (v12 - *a1) >> 3;
      if ((v14 + 1) >> 61)
      {
        sub_238EAEDBC();
      }

      v15 = v11 - *a1;
      v16 = v15 >> 2;
      if (v15 >> 2 <= (v14 + 1))
      {
        v16 = v14 + 1;
      }

      if (v15 >= 0x7FFFFFFFFFFFFFF8)
      {
        v17 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v17 = v16;
      }

      if (v17)
      {
        sub_2393BEFD8(a1, v17);
      }

      v18 = (8 * v14);
      *v18 = a2;
      v13 = 8 * v14 + 8;
      v19 = *(a1 + 8) - *a1;
      v20 = v18 - v19;
      memcpy(v18 - v19, *a1, v19);
      v21 = *a1;
      *a1 = v20;
      *(a1 + 8) = v13;
      *(a1 + 16) = 0;
      if (v21)
      {
        operator delete(v21);
      }
    }

    else
    {
      *v12 = a2;
      v13 = (v12 + 1);
    }

    v8 = 0;
    v9 = 0;
    *(a1 + 8) = v13;
  }

  return v9 | v8;
}

uint64_t sub_23947B198(char **a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  if (*a1 == v2)
  {
    return 0;
  }

  v5 = v2 - v3 - 8;
  while (*v3 != a2)
  {
    v3 += 8;
    v5 -= 8;
    if (v3 == v2)
    {
      return 0;
    }
  }

  if (v3 + 8 != v2)
  {
    memmove(v3, v3 + 8, v5);
  }

  a1[1] = &v3[v5];
  return 1;
}

uint64_t sub_23947B21C(void ***a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  if (*a1 == v2)
  {
    v8 = 0xDA00000000;
    v7 = 16;
  }

  else
  {
    v5 = a1;
    v6 = v2 - v3 - 8;
    v7 = 16;
    while (*v3 != a2)
    {
      ++v3;
      v6 -= 8;
      if (v3 == v2)
      {
        v8 = 0xDA00000000;
        return v7 | v8;
      }
    }

    if (v3 + 1 != v2)
    {
      a1 = memmove(v3, v3 + 1, v6);
    }

    v5[1] = (v3 + v6);
    sub_23947ADF4(a1, a2);
    v8 = 0;
    v7 = 0;
  }

  return v7 | v8;
}

uint64_t sub_23947B2D8(void *a1, int a2)
{
  v3 = *a1;
  v2 = a1[1];
  if (*a1 == v2)
  {
    return 0xEF00000010;
  }

  v5 = a1;
  v6 = 0;
  while (1)
  {
    v7 = *v3;
    if (*(*v3 + 8) == a2)
    {
      break;
    }

LABEL_9:
    v3 += 8;
    if (v3 == v2)
    {
      if (v6)
      {
        return 0;
      }

      else
      {
        return 0xEF00000010;
      }
    }
  }

  while (1)
  {
    sub_23947ADF4(a1, v7);
    v8 = v5[1];
    v9 = v8 - (v3 + 8);
    if (v8 != v3 + 8)
    {
      a1 = memmove(v3, (v3 + 8), v8 - (v3 + 8));
    }

    v2 = v3 + v9;
    v5[1] = v3 + v9;
    if (v3 == v3 + v9)
    {
      return 0;
    }

    v7 = *v3;
    if (*(*v3 + 8) != a2)
    {
      v6 = 1;
      goto LABEL_9;
    }
  }
}

uint64_t sub_23947B3A8(uint64_t **a1, char *__s, const char *a3, uint64_t *a4)
{
  v4 = *a1;
  v5 = a1[1];
  if (*a1 == v5)
  {
    v17 = 0x14E00000000;
    v9 = 16;
    return v9 | v17;
  }

  v9 = 16;
  while (1)
  {
    v10 = *v4;
    if (*(*v4 + 8))
    {
      goto LABEL_4;
    }

    v11 = (v10 + 64);
    v12 = strlen(__s);
    v13 = *(v10 + 87);
    if (v13 < 0)
    {
      if (v12 != *(v10 + 72))
      {
        goto LABEL_4;
      }

      if (v12 == -1)
      {
        goto LABEL_23;
      }

      v11 = *v11;
    }

    else if (v12 != v13)
    {
      goto LABEL_4;
    }

    if (memcmp(v11, __s, v12))
    {
      goto LABEL_4;
    }

    v14 = (v10 + 88);
    v15 = strlen(a3);
    v16 = *(v10 + 111);
    if (v16 < 0)
    {
      break;
    }

    if (v15 == v16)
    {
      goto LABEL_19;
    }

LABEL_4:
    if (++v4 == v5)
    {
      v17 = 0x14E00000000;
      return v9 | v17;
    }
  }

  if (v15 != *(v10 + 96))
  {
    goto LABEL_4;
  }

  if (v15 == -1)
  {
LABEL_23:
    sub_238EAEDBC();
  }

  v14 = *v14;
LABEL_19:
  if (memcmp(v14, a3, v15))
  {
    goto LABEL_4;
  }

  v17 = 0;
  v9 = 0;
  *a4 = v10;
  return v9 | v17;
}

uint64_t sub_23947B4F4(uint64_t **a1, char *__s)
{
  v2 = *a1;
  v3 = a1[1];
  if (*a1 != v3)
  {
    do
    {
      v5 = *v2;
      if (*(*v2 + 8) == 3)
      {
        v6 = (v5 + 96);
        v7 = strlen(__s);
        v8 = *(v5 + 119);
        if (v8 < 0)
        {
          if (v7 == *(v5 + 104))
          {
            if (v7 == -1)
            {
              sub_238EAEDBC();
            }

            v6 = *v6;
LABEL_9:
            if (!memcmp(v6, __s, v7))
            {
              return v5;
            }
          }
        }

        else if (v7 == v8)
        {
          goto LABEL_9;
        }
      }

      ++v2;
    }

    while (v2 != v3);
  }

  return 0;
}

uint64_t sub_23947B5A4(uint64_t **a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  while (v2 != v3)
  {
    result = *v2;
    if (*(*v2 + 8) == 2 && *(result + 16) == a2)
    {
      return result;
    }

    ++v2;
  }

  return 0;
}

uint64_t sub_23947B5DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(a1 + 40) = 0u;
  *(a1 + 24) = 0u;
  *a1 = &unk_284BBB6C0;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0;
  *(a1 + 64) = 0u;
  *(a1 + 136) = -1;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 8) = 0;
  *(a1 + 16) = a5;
  *(a1 + 56) = a4;
  MEMORY[0x23EE77A00](a1 + 64, a2);
  MEMORY[0x23EE77A00](a1 + 88, a3);
  return a1;
}

uint64_t sub_23947B66C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v12 = *MEMORY[0x277D85DE8];
  v8 = sub_2393D9044(0x22u);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    v11 = a2;
    _os_log_impl(&dword_238DAE000, v8, OS_LOG_TYPE_ERROR, "Mdns: Register failure (%s)", buf, 0xCu);
  }

  if (sub_2393D5398(1u))
  {
    sub_2393D5320(34, 1, "Mdns: Register failure (%s)", a2);
  }

  (*(a1 + 56))(*(a1 + 16), 0, 0, a3, a4);
  if ((byte_27DF7BD28 & 1) == 0)
  {
    byte_27DF7BD28 = 1;
    qword_27DF7BD18 = 0;
    unk_27DF7BD20 = 0;
    qword_27DF7BD10 = 0;
  }

  return sub_23947B21C(&qword_27DF7BD10, a1);
}

void sub_23947B798(uint64_t a1)
{
  if (*(a1 + 87) < 0)
  {
    sub_238DCEA9C(&__p, *(a1 + 64), *(a1 + 72));
  }

  else
  {
    __p = *(a1 + 64);
  }

  v2 = sub_239482FEC(v6, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v7 >= 0)
  {
    v3 = v6;
  }

  else
  {
    v3 = v6[0];
  }

  v4 = (a1 + 88);
  if (*(a1 + 111) < 0)
  {
    v4 = *v4;
  }

  (*(a1 + 56))(*(a1 + 16), v3, v4, 0, 0, v2);
  if (v7 < 0)
  {
    operator delete(v6[0]);
  }
}

double sub_23947B84C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  result = 0.0;
  *(a1 + 40) = 0u;
  *(a1 + 24) = 0u;
  *a1 = &unk_284BBB6F0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = a2;
  *(a1 + 64) = a3;
  *(a1 + 72) = 0;
  *(a1 + 56) = a4;
  return result;
}

uint64_t sub_23947B894(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13 = *MEMORY[0x277D85DE8];
  if (a3 == 116 && *(a1 + 96) == 1)
  {
    v8 = sub_2393D9044(0x22u);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_238DAE000, v8, OS_LOG_TYPE_DEFAULT, "Mdns: Browse canceled", buf, 2u);
    }

    if (sub_2393D5398(2u))
    {
      sub_2393D5320(34, 2, "Mdns: Browse canceled");
    }
  }

  else
  {
    v9 = sub_2393D9044(0x22u);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v12 = a2;
      _os_log_impl(&dword_238DAE000, v9, OS_LOG_TYPE_ERROR, "Mdns: Browse failure (%s)", buf, 0xCu);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(34, 1, "Mdns: Browse failure (%s)");
    }
  }

  (*(a1 + 64))(*(a1 + 16), 0, 0, 1, a3, a4);
  if ((byte_27DF7BD28 & 1) == 0)
  {
    byte_27DF7BD28 = 1;
    qword_27DF7BD18 = 0;
    unk_27DF7BD20 = 0;
    qword_27DF7BD10 = 0;
  }

  return sub_23947B21C(&qword_27DF7BD10, a1);
}

void sub_23947BA38()
{
  v0 = sub_2393D9044(0x1Bu);
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315650;
    v2 = "src/platform/Darwin/dnssd/DnssdContexts.cpp";
    v3 = 1024;
    v4 = 418;
    v5 = 2080;
    v6 = "false";
    _os_log_impl(&dword_238DAE000, v0, OS_LOG_TYPE_ERROR, "VerifyOrDie failure at %s:%d: %s", buf, 0x1Cu);
  }

  if (sub_2393D5398(1u))
  {
    sub_2393D5320(27, 1, "VerifyOrDie failure at %s:%d: %s", "src/platform/Darwin/dnssd/DnssdContexts.cpp", 418, "false");
  }

  abort();
}

void sub_23947BAF8(uint64_t a1)
{
  v53 = *MEMORY[0x277D85DE8];
  v2 = &unk_27DF7C000;
  qword_27DF7C068 = a1;
  v38 = 0;
  v39 = 0;
  v40 = 0;
  v4 = *(a1 + 72);
  v5 = *(a1 + 80);
  v3 = (a1 + 72);
  if (v4 != v5)
  {
    do
    {
      sub_23947E3C8(&v41, v4);
      v6 = v39;
      if (v39 >= v40)
      {
        v15 = 0x86BCA1AF286BCA1BLL * ((v39 - v38) >> 3);
        v16 = v15 + 1;
        if (v15 + 1 > 0x1AF286BCA1AF286)
        {
          sub_238EAEDBC();
        }

        if (0xD79435E50D79436 * ((v40 - v38) >> 3) > v16)
        {
          v16 = 0xD79435E50D79436 * ((v40 - v38) >> 3);
        }

        if (0x86BCA1AF286BCA1BLL * ((v40 - v38) >> 3) >= 0xD79435E50D7943)
        {
          v17 = 0x1AF286BCA1AF286;
        }

        else
        {
          v17 = v16;
        }

        if (v17)
        {
          sub_23947E5C4(&v38, v17);
        }

        v18 = 8 * ((v39 - v38) >> 3);
        v19 = v42;
        *v18 = v41;
        *(v18 + 16) = v19;
        v20 = v43;
        v21 = v44;
        v22 = *v45;
        *(v18 + 74) = *&v45[10];
        *(v18 + 48) = v21;
        *(v18 + 64) = v22;
        *(v18 + 32) = v20;
        *(v18 + 92) = v46;
        v24 = v48;
        v23 = v49;
        v25 = v47;
        *(v18 + 144) = v50;
        *(v18 + 112) = v24;
        *(v18 + 128) = v23;
        *(v18 + 96) = v25;
        v26 = v38;
        v27 = v39;
        v28 = (152 * v15 + v38 - v39);
        if (v38 != v39)
        {
          v29 = v38;
          v30 = (v18 + v38 - v39);
          do
          {
            v31 = v29[1];
            *v30 = *v29;
            *(v30 + 1) = v31;
            v32 = v29[2];
            v33 = v29[3];
            v34 = v29[4];
            *(v30 + 74) = *(v29 + 74);
            *(v30 + 3) = v33;
            *(v30 + 4) = v34;
            *(v30 + 2) = v32;
            *(v30 + 23) = *(v29 + 23);
            v35 = v29[6];
            v36 = v29[7];
            v37 = v29[8];
            *(v30 + 18) = *(v29 + 18);
            *(v30 + 7) = v36;
            *(v30 + 8) = v37;
            *(v30 + 6) = v35;
            v29 = (v29 + 152);
            v30 += 152;
          }

          while (v29 != v27);
        }

        v14 = (v18 + 152);
        v38 = v28;
        v39 = (v18 + 152);
        v40 = 0;
        if (v26)
        {
          operator delete(v26);
        }
      }

      else
      {
        v7 = v42;
        *v39 = v41;
        *(v6 + 1) = v7;
        v8 = v43;
        v9 = v44;
        v10 = *v45;
        *(v6 + 74) = *&v45[10];
        *(v6 + 3) = v9;
        *(v6 + 4) = v10;
        *(v6 + 2) = v8;
        *(v6 + 23) = v46;
        v11 = v47;
        v12 = v48;
        v13 = v49;
        *(v6 + 18) = v50;
        *(v6 + 7) = v12;
        *(v6 + 8) = v13;
        *(v6 + 6) = v11;
        v14 = v6 + 152;
      }

      v39 = v14;
      if (v52 < 0)
      {
        operator delete(__p);
      }

      v4 += 176;
    }

    while (v4 != v5);
    v2 = &unk_27DF7C000;
  }

  qword_27DF7C070 = &v38;
  (*(a1 + 64))(*(a1 + 16));
  qword_27DF7C070 = 0;
  v2[13] = 0;
  sub_23947BDCC(v3);
  *(a1 + 96) = 1;
  if (v38)
  {
    v39 = v38;
    operator delete(v38);
  }
}

void sub_23947BDCC(uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 176)
  {
    if (*(i - 1) < 0)
    {
      operator delete(*(i - 24));
    }
  }

  a1[1] = v2;
}

void sub_23947BE1C(uint64_t *a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = *a1;
  if ((a2 & 2) != 0)
  {
    (*(v8 + 40))(a1, a3, a4, a5, a6);
    if (a2)
    {
      return;
    }
  }

  else
  {
    (*(v8 + 48))(a1, a3, a4, a5, a6);
    if (a2)
    {
      return;
    }
  }

  sub_23947BAF8(a1);
}

void sub_23947BEDC(uint64_t a1, const char *a2, char *a3, char *a4, int a5)
{
  v37 = *MEMORY[0x277D85DE8];
  v10 = sub_2393D9044(0x22u);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    if (a2)
    {
      v11 = a2;
    }

    else
    {
      v11 = "(null)";
    }

    *buf = 136316162;
    if (a3)
    {
      v12 = a3;
    }

    else
    {
      v12 = "(null)";
    }

    *&buf[4] = "OnBrowseAdd";
    *&buf[12] = 2080;
    if (a4)
    {
      v13 = a4;
    }

    else
    {
      v13 = "(null)";
    }

    *&buf[14] = v11;
    *&buf[22] = 2080;
    *&buf[24] = v12;
    LOWORD(v20) = 2080;
    *(&v20 + 2) = v13;
    WORD5(v20) = 1024;
    HIDWORD(v20) = a5;
    _os_log_impl(&dword_238DAE000, v10, OS_LOG_TYPE_DEFAULT, "Mdns: %s  name: %s, type: %s, domain: %s, interface: %u", buf, 0x30u);
  }

  if (sub_2393D5398(2u))
  {
    if (a2)
    {
      v14 = a2;
    }

    else
    {
      v14 = "(null)";
    }

    if (a3)
    {
      v15 = a3;
    }

    else
    {
      v15 = "(null)";
    }

    if (a4)
    {
      v16 = a4;
    }

    else
    {
      v16 = "(null)";
    }

    sub_2393D5320(34, 2, "Mdns: %s  name: %s, type: %s, domain: %s, interface: %u", "OnBrowseAdd", v14, v15, v16, a5);
  }

  sub_23947C0EC(v30, a3, a2, *(a1 + 56), a5);
  sub_23947C374(v17, a4);
  v20 = v30[2];
  v21 = v30[3];
  *v22 = *v31;
  *&v22[10] = *&v31[10];
  *buf = v30[0];
  *&buf[16] = v30[1];
  v23 = v32;
  v25 = v34;
  v26 = v35;
  v24 = v33;
  __p = *v17;
  v27 = v36;
  v29 = v18;
  v17[0] = 0;
  v17[1] = 0;
  v18 = 0;
  sub_23947C1A8((a1 + 72), buf);
  if (SHIBYTE(v29) < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v18) < 0)
  {
    operator delete(v17[0]);
  }
}

void sub_23947C0EC(uint64_t *__return_ptr a1@<X8>, char *__s@<X1>, const char *a3@<X0>, char a4@<W2>, int a5@<W3>)
{
  *(a1 + 44) = 0;
  *(a1 + 144) = 0;
  *(a1 + 6) = 0u;
  *(a1 + 7) = 0u;
  *(a1 + 128) = 0;
  *(a1 + 79) = 0;
  *(a1 + 2) = 0u;
  *(a1 + 3) = 0u;
  *(a1 + 4) = 0u;
  *(a1 + 37) = 120;
  *(a1 + 23) = a5;
  *(a1 + 84) = a4;
  sub_2394830A0(&v10, __s);
  v7 = SHIBYTE(v10.__r_.__value_.__r.__words[2]);
  v8 = v10.__r_.__value_.__r.__words[0];
  if ((v10.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v9 = &v10;
  }

  else
  {
    v9 = v10.__r_.__value_.__r.__words[0];
  }

  strncpy(a1 + 75, v9, 9uLL);
  *(a1 + 83) = 0;
  strncpy(a1, a3, 0x22uLL);
  *(a1 + 33) = 0;
  if (v7 < 0)
  {
    operator delete(v8);
  }
}

uint64_t *sub_23947C1A8(uint64_t *result, uint64_t a2)
{
  v3 = result;
  v4 = result[1];
  v5 = result[2];
  if (v4 >= v5)
  {
    v15 = 0x2E8BA2E8BA2E8BA3 * ((v4 - *result) >> 4);
    v16 = v15 + 1;
    if ((v15 + 1) > 0x1745D1745D1745DLL)
    {
      sub_238EAEDBC();
    }

    v17 = 0x2E8BA2E8BA2E8BA3 * ((v5 - *result) >> 4);
    if (2 * v17 > v16)
    {
      v16 = 2 * v17;
    }

    if (v17 >= 0xBA2E8BA2E8BA2ELL)
    {
      v18 = 0x1745D1745D1745DLL;
    }

    else
    {
      v18 = v16;
    }

    v32[4] = result;
    if (v18)
    {
      sub_23947E620(result, v18);
    }

    v19 = 176 * v15;
    v20 = *(a2 + 16);
    *v19 = *a2;
    *(v19 + 16) = v20;
    v21 = *(a2 + 32);
    v22 = *(a2 + 48);
    v23 = *(a2 + 64);
    *(v19 + 74) = *(a2 + 74);
    *(v19 + 48) = v22;
    *(v19 + 64) = v23;
    *(v19 + 32) = v21;
    *(v19 + 92) = *(a2 + 92);
    v24 = *(a2 + 96);
    v25 = *(a2 + 112);
    v26 = *(a2 + 128);
    *(v19 + 144) = *(a2 + 144);
    *(v19 + 112) = v25;
    *(v19 + 128) = v26;
    *(v19 + 96) = v24;
    v27 = *(a2 + 152);
    *(v19 + 168) = *(a2 + 168);
    *(v19 + 152) = v27;
    *(a2 + 160) = 0;
    *(a2 + 168) = 0;
    *(a2 + 152) = 0;
    v14 = 176 * v15 + 176;
    v28 = result[1];
    v29 = v19 + *result - v28;
    sub_23947E67C(result, *result, v28, v29);
    v30 = *v3;
    *v3 = v29;
    v3[1] = v14;
    v31 = v3[2];
    v3[2] = 0;
    v32[2] = v30;
    v32[3] = v31;
    v32[0] = v30;
    v32[1] = v30;
    result = sub_23947E738(v32);
  }

  else
  {
    v6 = *(a2 + 16);
    *v4 = *a2;
    *(v4 + 16) = v6;
    v7 = *(a2 + 32);
    v8 = *(a2 + 48);
    v9 = *(a2 + 64);
    *(v4 + 74) = *(a2 + 74);
    *(v4 + 48) = v8;
    *(v4 + 64) = v9;
    *(v4 + 32) = v7;
    *(v4 + 92) = *(a2 + 92);
    v10 = *(a2 + 96);
    v11 = *(a2 + 112);
    v12 = *(a2 + 128);
    *(v4 + 144) = *(a2 + 144);
    *(v4 + 112) = v11;
    *(v4 + 128) = v12;
    *(v4 + 96) = v10;
    v13 = *(a2 + 152);
    *(v4 + 168) = *(a2 + 168);
    *(v4 + 152) = v13;
    *(a2 + 160) = 0;
    *(a2 + 168) = 0;
    *(a2 + 152) = 0;
    v14 = v4 + 176;
  }

  v3[1] = v14;
  return result;
}

void *sub_23947C374(void *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_238EAEDBC();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  *(a1 + 23) = v4;
  if (v4)
  {
    memmove(a1, __s, v4);
  }

  *(a1 + v5) = 0;
  return a1;
}

void sub_23947C42C(uint64_t a1, const char *a2, const char *a3, char *a4, int a5)
{
  v54 = *MEMORY[0x277D85DE8];
  v10 = sub_2393D9044(0x22u);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    if (a2)
    {
      v11 = a2;
    }

    else
    {
      v11 = "(null)";
    }

    LODWORD(buf.__r_.__value_.__l.__data_) = 136316162;
    if (a3)
    {
      v12 = a3;
    }

    else
    {
      v12 = "(null)";
    }

    *(buf.__r_.__value_.__r.__words + 4) = "OnBrowseRemove";
    WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
    if (a4)
    {
      v13 = a4;
    }

    else
    {
      v13 = "(null)";
    }

    *(&buf.__r_.__value_.__r.__words[1] + 6) = v11;
    HIWORD(buf.__r_.__value_.__r.__words[2]) = 2080;
    v49 = v12;
    v50 = 2080;
    v51 = v13;
    v52 = 1024;
    v53 = a5;
    _os_log_impl(&dword_238DAE000, v10, OS_LOG_TYPE_DEFAULT, "Mdns: %s  name: %s, type: %s, domain: %s, interface: %u", &buf, 0x30u);
  }

  if (sub_2393D5398(2u))
  {
    if (a2)
    {
      v14 = a2;
    }

    else
    {
      v14 = "(null)";
    }

    if (a3)
    {
      v15 = a3;
    }

    else
    {
      v15 = "(null)";
    }

    if (a4)
    {
      v16 = a4;
    }

    else
    {
      v16 = "(null)";
    }

    sub_2393D5320(34, 2, "Mdns: %s  name: %s, type: %s, domain: %s, interface: %u", "OnBrowseRemove", v14, v15, v16, a5);
  }

  if (!a2)
  {
    return;
  }

  sub_23947C374(&__p, a4);
  v44 = a1;
  v17 = *(a1 + 72);
  v19 = *(a1 + 80);
  v18 = a1 + 72;
  if (v17 == v19)
  {
    v20 = *(a1 + 72);
    goto LABEL_57;
  }

  v20 = *(a1 + 80);
  v21 = (v17 + 351);
  while (1)
  {
    if (strcmp(a2, v21 - 351))
    {
      goto LABEL_54;
    }

    sub_239482A0C((v21 - 351), &buf);
    v22 = strlen(a3);
    v23 = v22;
    v24 = SHIBYTE(buf.__r_.__value_.__r.__words[2]);
    if ((SHIBYTE(buf.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v22 == SHIBYTE(buf.__r_.__value_.__r.__words[2]))
    {
      p_buf = &buf;
      goto LABEL_33;
    }

LABEL_54:
    v32 = (v21 - 175);
    v21 += 176;
    if (v32 == v19)
    {
      goto LABEL_57;
    }
  }

  if (v22 != buf.__r_.__value_.__l.__size_)
  {
    operator delete(buf.__r_.__value_.__l.__data_);
    goto LABEL_54;
  }

  if (v22 == -1)
  {
LABEL_94:
    sub_238EAEDBC();
  }

  p_buf = buf.__r_.__value_.__r.__words[0];
  if (memcmp(p_buf, a3, v23) || *(v21 - 259) != a5)
  {
    goto LABEL_49;
  }

LABEL_33:
  v26 = *(v21 - 176);
  if (v26 >= 0)
  {
    v27 = *(v21 - 176);
  }

  else
  {
    v27 = *(v21 - 191);
  }

  v28 = v47;
  if ((v47 & 0x80u) != 0)
  {
    v28 = v46;
  }

  if (v27 == v28)
  {
    if (v26 >= 0)
    {
      v29 = (v21 - 199);
    }

    else
    {
      v29 = *(v21 - 199);
    }

    if ((v47 & 0x80u) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    v31 = memcmp(v29, p_p, v27) == 0;
    if (v24 < 0)
    {
LABEL_50:
      operator delete(buf.__r_.__value_.__l.__data_);
    }
  }

  else
  {
LABEL_49:
    v31 = 0;
    if (v24 < 0)
    {
      goto LABEL_50;
    }
  }

  if (!v31)
  {
    goto LABEL_54;
  }

  if (v21 - 351 != v19)
  {
    v33 = (v21 - 175);
    v20 = (v21 - 351);
    while (v33 != v19)
    {
      if (strcmp(a2, v21 - 175))
      {
        goto LABEL_64;
      }

      sub_239482A0C((v21 - 175), &buf);
      v34 = strlen(a3);
      v35 = v34;
      v36 = SHIBYTE(buf.__r_.__value_.__r.__words[2]);
      if ((SHIBYTE(buf.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
      {
        if (v34 != buf.__r_.__value_.__l.__size_)
        {
          operator delete(buf.__r_.__value_.__l.__data_);
LABEL_64:
          sub_23947E7CC(v20, (v21 - 175));
          v20 += 176;
          goto LABEL_65;
        }

        if (v34 == -1)
        {
          goto LABEL_94;
        }

        v37 = buf.__r_.__value_.__r.__words[0];
      }

      else
      {
        if (v34 != SHIBYTE(buf.__r_.__value_.__r.__words[2]))
        {
          goto LABEL_64;
        }

        v37 = &buf;
      }

      if (memcmp(v37, a3, v35) || *(v21 - 83) != a5)
      {
        goto LABEL_87;
      }

      v38 = *v21;
      if (v38 >= 0)
      {
        v39 = *v21;
      }

      else
      {
        v39 = *(v21 - 15);
      }

      v40 = v47;
      if ((v47 & 0x80u) != 0)
      {
        v40 = v46;
      }

      if (v39 == v40)
      {
        if (v38 >= 0)
        {
          v41 = (v21 - 23);
        }

        else
        {
          v41 = *(v21 - 23);
        }

        if ((v47 & 0x80u) == 0)
        {
          v42 = &__p;
        }

        else
        {
          v42 = __p;
        }

        v43 = memcmp(v41, v42, v39) == 0;
      }

      else
      {
LABEL_87:
        v43 = 0;
      }

      if (v36 < 0)
      {
        operator delete(buf.__r_.__value_.__l.__data_);
        if (!v43)
        {
          goto LABEL_64;
        }
      }

      else if (!v43)
      {
        goto LABEL_64;
      }

LABEL_65:
      v33 = (v21 + 1);
      v21 += 176;
    }
  }

LABEL_57:
  sub_23947C82C(v18, v20, *(v44 + 80));
  if (v47 < 0)
  {
    operator delete(__p);
  }
}

uint64_t sub_23947C82C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *(a1 + 8);
    v7 = a2;
    if (a3 != v6)
    {
      do
      {
        sub_23947E7CC(v7, v4);
        v4 += 176;
        v7 += 176;
      }

      while (v4 != v6);
      v6 = *(a1 + 8);
    }

    while (v6 != v7)
    {
      if (*(v6 - 1) < 0)
      {
        operator delete(*(v6 - 24));
      }

      v6 -= 176;
    }

    *(a1 + 8) = v7;
  }

  return a2;
}

double sub_23947C8C4(uint64_t a1, uint64_t a2, char a3)
{
  result = 0.0;
  *(a1 + 40) = 0u;
  *(a1 + 24) = 0u;
  *a1 = &unk_284BBB738;
  *(a1 + 8) = 2;
  *(a1 + 16) = a2;
  *(a1 + 56) = a3;
  return result;
}

uint64_t sub_23947C900(void **a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v12 = *MEMORY[0x277D85DE8];
  v8 = sub_2393D9044(0x22u);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    v11 = a2;
    _os_log_impl(&dword_238DAE000, v8, OS_LOG_TYPE_ERROR, "Mdns: Browse failure (%s)", buf, 0xCu);
  }

  if (sub_2393D5398(1u))
  {
    sub_2393D5320(34, 1, "Mdns: Browse failure (%s)", a2);
  }

  (*(*a1[2] + 32))(a1[2], a3, a4);
  if ((byte_27DF7BD28 & 1) == 0)
  {
    byte_27DF7BD28 = 1;
    qword_27DF7BD18 = 0;
    unk_27DF7BD20 = 0;
    qword_27DF7BD10 = 0;
  }

  return sub_23947B21C(&qword_27DF7BD10, a1);
}

uint64_t sub_23947CA40(void **a1)
{
  (*(*a1[2] + 32))(a1[2], 0, 0);
  if ((byte_27DF7BD28 & 1) == 0)
  {
    byte_27DF7BD28 = 1;
    qword_27DF7BD18 = 0;
    unk_27DF7BD20 = 0;
    qword_27DF7BD10 = 0;
  }

  return sub_23947B21C(&qword_27DF7BD10, a1);
}

uint64_t sub_23947CACC(uint64_t *a1, char a2)
{
  v2 = *a1;
  if ((a2 & 2) != 0)
  {
    return (*(v2 + 40))();
  }

  else
  {
    return (*(v2 + 48))();
  }
}

uint64_t sub_23947CB38(uint64_t a1, const char *a2, char *a3, const char *a4, int a5)
{
  v35 = *MEMORY[0x277D85DE8];
  v10 = sub_2393D9044(0x22u);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    if (a2)
    {
      v11 = a2;
    }

    else
    {
      v11 = "(null)";
    }

    *buf = 136316162;
    if (a3)
    {
      v12 = a3;
    }

    else
    {
      v12 = "(null)";
    }

    *&buf[4] = "OnBrowseAdd";
    *&buf[12] = 2080;
    if (a4)
    {
      v13 = a4;
    }

    else
    {
      v13 = "(null)";
    }

    *&buf[14] = v11;
    *&buf[22] = 2080;
    *&buf[24] = v12;
    LOWORD(v27) = 2080;
    *(&v27 + 2) = v13;
    WORD5(v27) = 1024;
    HIDWORD(v27) = a5;
    _os_log_impl(&dword_238DAE000, v10, OS_LOG_TYPE_DEFAULT, "Mdns: %s  name: %s, type: %s, domain: %s, interface: %u", buf, 0x30u);
  }

  if (sub_2393D5398(2u))
  {
    if (a2)
    {
      v14 = a2;
    }

    else
    {
      v14 = "(null)";
    }

    if (a3)
    {
      v15 = a3;
    }

    else
    {
      v15 = "(null)";
    }

    if (a4)
    {
      v16 = a4;
    }

    else
    {
      v16 = "(null)";
    }

    sub_2393D5320(34, 2, "Mdns: %s  name: %s, type: %s, domain: %s, interface: %u", "OnBrowseAdd", v14, v15, v16, a5);
  }

  v17 = *(a1 + 16);
  sub_23947C0EC(buf, a3, a2, *(a1 + 56), a5);
  v19[2] = v27;
  v19[3] = v28;
  *v20 = *v29;
  *&v20[10] = *&v29[10];
  v19[0] = *buf;
  v19[1] = *&buf[16];
  v21 = v30;
  v25 = v34;
  v23 = v32;
  v24 = v33;
  v22 = v31;
  return (*(*v17 + 16))(v17, v19);
}

void sub_23947CD28(uint64_t a1, const char *a2, char *a3, const char *a4, int a5)
{
  v34 = *MEMORY[0x277D85DE8];
  v10 = sub_2393D9044(0x22u);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    if (a2)
    {
      v11 = a2;
    }

    else
    {
      v11 = "(null)";
    }

    *buf = 136316162;
    if (a3)
    {
      v12 = a3;
    }

    else
    {
      v12 = "(null)";
    }

    *&buf[4] = "OnBrowseRemove";
    *&buf[12] = 2080;
    if (a4)
    {
      v13 = a4;
    }

    else
    {
      v13 = "(null)";
    }

    *&buf[14] = v11;
    *&buf[22] = 2080;
    *&buf[24] = v12;
    LOWORD(v26) = 2080;
    *(&v26 + 2) = v13;
    WORD5(v26) = 1024;
    HIDWORD(v26) = a5;
    _os_log_impl(&dword_238DAE000, v10, OS_LOG_TYPE_DEFAULT, "Mdns: %s  name: %s, type: %s, domain: %s, interface: %u", buf, 0x30u);
  }

  if (sub_2393D5398(2u))
  {
    if (a2)
    {
      v14 = a2;
    }

    else
    {
      v14 = "(null)";
    }

    if (a3)
    {
      v15 = a3;
    }

    else
    {
      v15 = "(null)";
    }

    if (a4)
    {
      v16 = a4;
    }

    else
    {
      v16 = "(null)";
    }

    sub_2393D5320(34, 2, "Mdns: %s  name: %s, type: %s, domain: %s, interface: %u", "OnBrowseRemove", v14, v15, v16, a5);
  }

  if (a2)
  {
    v17 = *(a1 + 16);
    sub_23947C0EC(buf, a3, a2, *(a1 + 56), a5);
    v18[2] = v26;
    v18[3] = v27;
    *v19 = *v28;
    *&v19[10] = *&v28[10];
    v18[0] = *buf;
    v18[1] = *&buf[16];
    v20 = v29;
    v24 = v33;
    v22 = v31;
    v23 = v32;
    v21 = v30;
    (*(*v17 + 24))(v17, v18);
  }
}

uint64_t sub_23947CF1C(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, int a7)
{
  *(a1 + 40) = 0u;
  *(a1 + 24) = 0u;
  *a1 = &unk_284BBB780;
  *(a1 + 80) = 0;
  *(a1 + 72) = 0;
  v9 = a1 + 72;
  *(a1 + 96) = 0;
  v10 = a1 + 96;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 128) = a6;
  *(a1 + 136) = a1;
  *(a1 + 144) = 1;
  *(a1 + 152) = a1;
  *(a1 + 160) = 0;
  *(a1 + 8) = 3;
  *(a1 + 16) = a2;
  *(a1 + 56) = a3;
  *(a1 + 64) = v9;
  if (a4 == 2)
  {
    v11 = 2;
  }

  else
  {
    v11 = 3;
  }

  if (a4 == 1)
  {
    v11 = 1;
  }

  *(a1 + 88) = v11;
  MEMORY[0x23EE77A00](v10, a5);
  *(a1 + 120) = a7;
  return a1;
}

uint64_t sub_23947CFCC(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int a5)
{
  *(a1 + 40) = 0u;
  *(a1 + 24) = 0u;
  *a1 = &unk_284BBB780;
  *(a1 + 80) = 0;
  *(a1 + 72) = 0;
  v7 = a1 + 72;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 144) = 1;
  *(a1 + 8) = 3;
  *(a1 + 96) = 0;
  v8 = a1 + 96;
  *(a1 + 128) = 0;
  *(a1 + 136) = a1;
  *(a1 + 152) = a1;
  *(a1 + 160) = 0;
  *(a1 + 16) = a2;
  *(a1 + 56) = 0;
  *(a1 + 64) = v7;
  if (a3 == 2)
  {
    v9 = 2;
  }

  else
  {
    v9 = 3;
  }

  if (a3 == 1)
  {
    v9 = 1;
  }

  *(a1 + 88) = v9;
  MEMORY[0x23EE77A00](v8, a4);
  *(a1 + 120) = a5;
  return a1;
}

void sub_23947D07C(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v16 = *MEMORY[0x277D85DE8];
  v8 = sub_2393D9044(0x22u);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    *&buf[4] = a2;
    _os_log_impl(&dword_238DAE000, v8, OS_LOG_TYPE_ERROR, "Mdns: Resolve failure (%s)", buf, 0xCu);
  }

  v9 = sub_2393D5398(1u);
  if (v9)
  {
    sub_2393D5320(34, 1, "Mdns: Resolve failure (%s)", a2);
  }

  if (byte_27DF7BD28)
  {
    v10 = qword_27DF7BD10;
    if (qword_27DF7BD10 == qword_27DF7BD18)
    {
LABEL_10:
      v12 = 0;
    }

    else
    {
      v11 = qword_27DF7BD18 - qword_27DF7BD10 - 8;
      while (*v10 != a1)
      {
        ++v10;
        v11 -= 8;
        if (v10 == qword_27DF7BD18)
        {
          goto LABEL_10;
        }
      }

      if (v10 + 1 != qword_27DF7BD18)
      {
        v9 = memmove(v10, v10 + 1, v11);
      }

      qword_27DF7BD18 = v10 + v11;
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
    byte_27DF7BD28 = 1;
    qword_27DF7BD18 = 0;
    unk_27DF7BD20 = 0;
    qword_27DF7BD10 = 0;
  }

  v13 = a1[7];
  if (v13)
  {
    v14 = a1[2];
    *buf = 0uLL;
    v9 = v13(v14, 0, buf, a3, a4);
  }

  if (v12)
  {
    if ((byte_27DF7BD28 & 1) == 0)
    {
      byte_27DF7BD28 = 1;
      qword_27DF7BD18 = 0;
      unk_27DF7BD20 = 0;
      qword_27DF7BD10 = 0;
    }

    sub_23947ADF4(v9, a1);
  }
}

void sub_23947D228(uint64_t a1)
{
  v43 = *MEMORY[0x277D85DE8];
  if (byte_27DF7BD28)
  {
    v2 = qword_27DF7BD10;
    if (qword_27DF7BD10 == qword_27DF7BD18)
    {
LABEL_6:
      v37 = 0;
    }

    else
    {
      v3 = qword_27DF7BD18 - qword_27DF7BD10 - 8;
      while (*v2 != a1)
      {
        ++v2;
        v3 -= 8;
        if (v2 == qword_27DF7BD18)
        {
          goto LABEL_6;
        }
      }

      if (v2 + 1 != qword_27DF7BD18)
      {
        memmove(v2, v2 + 1, v3);
      }

      qword_27DF7BD18 = v2 + v3;
      v37 = 1;
    }
  }

  else
  {
    v37 = 0;
    byte_27DF7BD28 = 1;
    qword_27DF7BD18 = 0;
    unk_27DF7BD20 = 0;
    qword_27DF7BD10 = 0;
  }

  if ((atomic_load_explicit(byte_27DF796B8, memory_order_acquire) & 1) == 0)
  {
    sub_2395333D8();
  }

  v39 = 0;
  v40 = 0;
  v4 = *(a1 + 64);
  v41 = 0;
  v5 = (a1 + 72);
  v6 = dword_27DF796B0;
  if (dword_27DF796B0)
  {
    v7 = v4 == v5;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    do
    {
      if (v4[29] != v4[28] && v6 == *(v4 + 8))
      {
        sub_23947D71C(&v39, (v4 + 4));
      }

      v9 = v4[1];
      if (v9)
      {
        do
        {
          v10 = v9;
          v9 = *v9;
        }

        while (v9);
      }

      else
      {
        do
        {
          v10 = v4[2];
          v7 = *v10 == v4;
          v4 = v10;
        }

        while (!v7);
      }

      v4 = v10;
    }

    while (v10 != v5);
    v4 = *(a1 + 64);
  }

  if (v4 != v5)
  {
    do
    {
      v11 = v39;
      v12 = v40;
      if (v39 != v40)
      {
        v13 = *(v4 + 8);
        v14 = *(v4 + 63);
        if (v14 >= 0)
        {
          v15 = *(v4 + 63);
        }

        else
        {
          v15 = v4[6];
        }

        if (v14 >= 0)
        {
          v16 = v4 + 5;
        }

        else
        {
          v16 = v4[5];
        }

        v17 = *(v4 + 64);
        while (1)
        {
          if (*v11 == v13)
          {
            v18 = *(v11 + 31);
            v19 = v18;
            if ((v18 & 0x80u) != 0)
            {
              v18 = *(v11 + 16);
            }

            if (v18 == v15)
            {
              v20 = v19 >= 0 ? (v11 + 8) : *(v11 + 8);
              if (!memcmp(v20, v16, v15) && *(v11 + 32) == v17)
              {
                break;
              }
            }
          }

          v11 += 40;
          if (v11 == v12)
          {
            goto LABEL_51;
          }
        }
      }

      if (v11 == v12)
      {
LABEL_51:
        if (v4[29] != v4[28])
        {
          sub_23947D71C(&v39, (v4 + 4));
        }
      }

      v21 = v4[1];
      if (v21)
      {
        do
        {
          v22 = v21;
          v21 = *v21;
        }

        while (v21);
      }

      else
      {
        do
        {
          v22 = v4[2];
          v7 = *v22 == v4;
          v4 = v22;
        }

        while (!v7);
      }

      v4 = v22;
    }

    while (v22 != v5);
  }

  v23 = v39;
  v24 = v40;
  if (v39 == v40)
  {
    goto LABEL_78;
  }

  do
  {
    *buf = v23;
    v25 = sub_23947EB34((a1 + 64), v23, &unk_23958D927, buf);
    sub_23947EE68(v38, v25[28], (v25[29] - v25[28]) >> 4);
    v26 = sub_2393D9044(0x22u);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v27 = *v23;
      *buf = 67109120;
      *&buf[4] = v27;
      _os_log_impl(&dword_238DAE000, v26, OS_LOG_TYPE_DEFAULT, "Mdns: Resolve success on interface %u", buf, 8u);
    }

    if (sub_2393D5398(2u))
    {
      sub_2393D5320(34, 2, "Mdns: Resolve success on interface %u", *v23);
    }

    v28 = *(a1 + 56);
    if (v28)
    {
      if (v23 == v40 - 10)
      {
        v29 = 0;
      }

      else
      {
        v29 = "src/platform/Darwin/dnssd/DnssdContexts.cpp";
      }

      if (v23 == v40 - 10)
      {
        v30 = 0;
      }

      else
      {
        v30 = 0x2A5000000A4;
      }

      v28(*(a1 + 16), v25 + 9, v38, v30, v29);
    }

    else
    {
      v31 = *(a1 + 16);
      *buf = -1;
      v32 = (v25 + 9);
      if (*(v25 + 147) == 0x72657474616D5FLL)
      {
        sub_2394BB090(v32, buf);
      }

      else
      {
        sub_2394BB0EC(v32, v38, buf);
      }

      (*(*v31 + 16))(v31, buf);
    }

    v23 += 10;
  }

  while (v23 != v24);
  if (v40 == v39)
  {
LABEL_78:
    v33 = sub_2393D9044(0x22u);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      v34 = (a1 + 96);
      if (*(a1 + 119) < 0)
      {
        v34 = *v34;
      }

      *buf = 136315138;
      *&buf[4] = v34;
      _os_log_impl(&dword_238DAE000, v33, OS_LOG_TYPE_ERROR, "Successfully finalizing resolve for %s without finding any actual IP addresses.", buf, 0xCu);
    }

    if (sub_2393D5398(1u))
    {
      v35 = (a1 + 96);
      if (*(a1 + 119) < 0)
      {
        v35 = *v35;
      }

      sub_2393D5320(34, 1, "Successfully finalizing resolve for %s without finding any actual IP addresses.", v35);
    }
  }

  *buf = &v39;
  sub_2392E32D4(buf);
  if (v37)
  {
    if ((byte_27DF7BD28 & 1) == 0)
    {
      byte_27DF7BD28 = 1;
      qword_27DF7BD18 = 0;
      unk_27DF7BD20 = 0;
      qword_27DF7BD10 = 0;
    }

    sub_23947ADF4(v36, a1);
  }
}

unint64_t sub_23947D71C(unint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_23947E85C(a1, a2);
  }

  else
  {
    sub_23947E960(a1, a1[1], a2);
    result = v3 + 40;
  }

  a1[1] = result;
  return result;
}

unint64_t sub_23947D768(uint64_t a1, unsigned int *a2, uint64_t a3)
{
  v37 = *MEMORY[0x277D85DE8];
  v6 = *a2;
  if ((a1 + 72) == sub_23947EE88(a1 + 64, a2))
  {
    return 0;
  }

  v7 = sub_2393CF9C8(a3, &v28);
  if (v7)
  {
    v8 = v7 & 0xFFFFFFFF00000000;
  }

  else
  {
    sub_2393CF6CC(&v28, v36, 0x2Eu);
    v10 = sub_2393D9044(0x22u);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = (a1 + 96);
      if (*(a1 + 119) < 0)
      {
        v11 = *v11;
      }

      *buf = 136315906;
      *&buf[4] = "OnNewAddress";
      v30 = 2080;
      v31 = v11;
      v32 = 1024;
      v33 = v6;
      v34 = 2080;
      v35 = v36;
      _os_log_impl(&dword_238DAE000, v10, OS_LOG_TYPE_DEFAULT, "Mdns: %s instance: %s interface: %u ip: %s", buf, 0x26u);
    }

    if (sub_2393D5398(2u))
    {
      v12 = (a1 + 96);
      if (*(a1 + 119) < 0)
      {
        v12 = *v12;
      }

      sub_2393D5320(34, 2, "Mdns: %s instance: %s interface: %u ip: %s", "OnNewAddress", v12, v6, v36);
    }

    if (sub_2393CFBB4(&v28) && v6 == -1)
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_238DAE000, v10, OS_LOG_TYPE_DEFAULT, "Mdns: Ignoring link-local address with no usable interface", buf, 2u);
      }

      if (sub_2393D5398(2u))
      {
        sub_2393D5320(34, 2, "Mdns: Ignoring link-local address with no usable interface");
      }
    }

    else
    {
      *buf = a2;
      v13 = sub_23947EB34((a1 + 64), a2, &unk_23958D927, buf);
      v14 = v13;
      v16 = v13[29];
      v15 = v13[30];
      if (v16 >= v15)
      {
        v18 = v13[28];
        v19 = (v16 - v18) >> 4;
        v20 = v19 + 1;
        if ((v19 + 1) >> 60)
        {
          sub_238EAEDBC();
        }

        v21 = v15 - v18;
        if (v21 >> 3 > v20)
        {
          v20 = v21 >> 3;
        }

        if (v21 >= 0x7FFFFFFFFFFFFFF0)
        {
          v22 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v22 = v20;
        }

        if (v22)
        {
          sub_23947F02C((v13 + 28), v22);
        }

        v23 = (16 * v19);
        *v23 = v28;
        v17 = 16 * v19 + 16;
        v24 = v13[28];
        v25 = v13[29] - v24;
        v26 = 16 * v19 - v25;
        memcpy(v23 - v25, v24, v25);
        v27 = v14[28];
        v14[28] = v26;
        v14[29] = v17;
        v14[30] = 0;
        if (v27)
        {
          operator delete(v27);
        }
      }

      else
      {
        *v16 = v28;
        v17 = (v16 + 1);
      }

      v14[29] = v17;
    }

    v8 = 0;
    LODWORD(v7) = 0;
  }

  return v7 | v8;
}

BOOL sub_23947DA38(uint64_t a1)
{
  v1 = *(a1 + 64);
  v2 = (a1 + 72);
  if (v1 == (a1 + 72))
  {
    return 0;
  }

  do
  {
    v4 = v1[28];
    v3 = v1[29];
    result = v3 != v4;
    if (v3 != v4)
    {
      break;
    }

    v6 = v1[1];
    if (v6)
    {
      do
      {
        v7 = v6;
        v6 = *v6;
      }

      while (v6);
    }

    else
    {
      do
      {
        v7 = v1[2];
        v8 = *v7 == v1;
        v1 = v7;
      }

      while (!v8);
    }

    v1 = v7;
  }

  while (v7 != v2);
  return result;
}

void sub_23947DA9C(uint64_t a1, int a2, const char *a3, char *a4, unsigned int a5, unsigned int a6, unsigned __int8 *a7, char a8)
{
  v9 = a6;
  v88 = *MEMORY[0x277D85DE8];
  memset(&v53, 0, sizeof(v53));
  if (a6)
  {
    v10 = a6;
    v11 = MEMORY[0x277D85DE0];
    v12 = a7;
    while (1)
    {
      v15 = *v12;
      v14 = (v12 + 1);
      v13 = v15;
      v16 = v10 - 1;
      if (v10 - 1 >= v15)
      {
        v17 = v13;
      }

      else
      {
        v17 = v10 - 1;
      }

      sub_238DB6950(buf, v14, v17);
      size = HIBYTE(v53.__r_.__value_.__r.__words[2]);
      if ((v53.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        size = v53.__r_.__value_.__l.__size_;
      }

      if (size)
      {
        std::string::push_back(&v53, 44);
      }

      v19 = *&buf[8];
      if (*&buf[8])
      {
        break;
      }

LABEL_25:
      v12 = (v14 + v17);
      v10 = v16 - v17;
      if (v16 == v17)
      {
        goto LABEL_26;
      }
    }

    v20 = *buf;
    while (1)
    {
      v21 = *v20;
      if (v21 < 0)
      {
        v22 = __maskrune(*v20, 0x500uLL);
        LOBYTE(v21) = *v20;
        if (v22)
        {
          goto LABEL_20;
        }
      }

      else if ((*(v11 + 4 * v21 + 60) & 0x500) != 0)
      {
        goto LABEL_20;
      }

      if ((v21 & 0x80) != 0)
      {
        v23 = __maskrune(v21, 0x2000uLL);
        LOBYTE(v21) = *v20;
        if (!v23)
        {
          goto LABEL_22;
        }
      }

      else if ((*(v11 + 4 * v21 + 60) & 0x2000) == 0)
      {
        goto LABEL_22;
      }

LABEL_20:
      if (v21 != 44 && v21 != 92)
      {
        std::string::push_back(&v53, v21);
        goto LABEL_24;
      }

LABEL_22:
      snprintf(__str, 5uLL, "\\x%02x", v21);
      std::string::append(&v53, __str);
LABEL_24:
      ++v20;
      if (!--v19)
      {
        goto LABEL_25;
      }
    }
  }

LABEL_26:
  v24 = sub_2393D9044(0x22u);
  v25 = __rev16(a5);
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    v26 = &v53;
    if ((v53.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v26 = v53.__r_.__value_.__r.__words[0];
    }

    *buf = 136316418;
    *&buf[4] = "OnNewInterface";
    *&buf[12] = 2080;
    *&buf[14] = a4;
    *&buf[22] = 2080;
    v57 = a3;
    v58 = 1024;
    v59 = a2;
    v60 = 1024;
    LODWORD(v61[0]) = v25;
    WORD2(v61[0]) = 2080;
    *(v61 + 6) = v26;
    _os_log_impl(&dword_238DAE000, v24, OS_LOG_TYPE_DEFAULT, "Mdns : %s hostname:%s fullname:%s interface: %u port: %u TXT:%s", buf, 0x36u);
  }

  if (sub_2393D5398(2u))
  {
    v27 = &v53;
    if ((v53.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v27 = v53.__r_.__value_.__r.__words[0];
    }

    sub_2393D5320(34, 2, "Mdns : %s hostname:%s fullname:%s interface: %u port: %u TXT:%s", "OnNewInterface", a4, a3, a2, v25, v27);
  }

  LOBYTE(v83) = 0;
  LOBYTE(v84) = 0;
  HIDWORD(v84) = 120;
  v81 = 0uLL;
  v85 = 0u;
  memset(v86, 0, sizeof(v86));
  v87 = 0;
  *&v79[24] = v25;
  if (a2 == -1)
  {
    v28 = 0;
  }

  else
  {
    v28 = a2;
  }

  v80 = v28;
  sub_23947C374(&v52, a4);
  v29 = HIBYTE(v52.__r_.__value_.__r.__words[2]);
  v30 = v52.__r_.__value_.__r.__words[0];
  if ((v52.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v31 = &v52;
  }

  else
  {
    v31 = v52.__r_.__value_.__r.__words[0];
  }

  if ((v52.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v32 = SHIBYTE(v52.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v32 = v52.__r_.__value_.__l.__size_;
  }

  if (v32 >= 1)
  {
    v33 = v31 + v32;
    v34 = v31;
    do
    {
      v35 = memchr(v34, 46, v32);
      if (!v35)
      {
        break;
      }

      if (*v35 == 46)
      {
        if (v35 != v33 && v35 - v31 != -1)
        {
          std::string::erase(&v52, v35 - v31, 0xFFFFFFFFFFFFFFFFLL);
          v29 = HIBYTE(v52.__r_.__value_.__r.__words[2]);
          v30 = v52.__r_.__value_.__r.__words[0];
        }

        break;
      }

      v34 = (v35 + 1);
      v32 = v33 - v34;
    }

    while (v33 - v34 >= 1);
  }

  if (v29 >= 0)
  {
    v36 = &v52;
  }

  else
  {
    v36 = v30;
  }

  strncpy(v78 + 2, v36, 0x29uLL);
  v79[10] = 0;
  strncpy(__str, a3, 0x22uLL);
  BYTE1(v78[0]) = 0;
  Count = TXTRecordGetCount(v9, a7);
  v38 = Count;
  *(&v81 + 1) = Count;
  *&v81 = sub_2393D52D0(0x14uLL, 0x18uLL);
  if (Count)
  {
    v39 = 0;
    v40 = 0;
    while (1)
    {
      valueLen = 0;
      value = 0;
      if (TXTRecordGetItemAtIndex(v9, a7, v40, 0x20u, key, &valueLen, &value))
      {
        break;
      }

      v41 = valueLen;
      if (valueLen >= 0x40u)
      {
        v41 = 63;
        valueLen = 63;
      }

      v42 = v41;
      memcpy(buf, value, v41);
      buf[v41] = 0;
      v43 = (v81 + v39);
      *v43 = strdup(key);
      v43[1] = strdup(buf);
      v43[2] = v42;
      ++v40;
      v39 += 24;
      if (v38 == v40)
      {
        goto LABEL_63;
      }
    }

    *(&v81 + 1) = v40;
  }

LABEL_63:
  MEMORY[0x23EE77A00](&v86[1], a4);
  *key = a2;
  sub_23947C374(&v74, a4);
  v44 = a8;
  v76 = a8;
  *buf = *key;
  if (SHIBYTE(v75) < 0)
  {
    sub_238DCEA9C(&buf[8], v74, *(&v74 + 1));
    v44 = v76;
  }

  else
  {
    *&buf[8] = v74;
    v57 = v75;
  }

  LOBYTE(v58) = v44;
  v61[2] = v78[0];
  v61[3] = v78[1];
  *v62 = *v79;
  *&v62[10] = *&v79[10];
  v61[0] = __str[0];
  v61[1] = __str[1];
  v63 = v80;
  v67 = v84;
  v66 = v83;
  v65 = v82;
  v64 = v81;
  v68 = v85;
  v45 = v86[0];
  memset(v86, 0, sizeof(v86));
  v85 = 0uLL;
  v70 = *&v86[1];
  v69 = v45;
  v71 = v86[3];
  v72 = v87;
  v81 = 0uLL;
  sub_23947F074((a1 + 64), buf, buf);
  sub_23947E150(v61);
  if (SHIBYTE(v57) < 0)
  {
    operator delete(*&buf[8]);
  }

  if (SHIBYTE(v75) < 0)
  {
    operator delete(v74);
  }

  if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v52.__r_.__value_.__l.__data_);
  }

  sub_23947E150(__str);
  if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v53.__r_.__value_.__l.__data_);
  }
}

double sub_23947E074(uint64_t a1)
{
  result = 0.0;
  *(a1 + 59) = 0u;
  *(a1 + 50) = 0u;
  *(a1 + 34) = 0u;
  *(a1 + 92) = 0;
  *(a1 + 128) = 0;
  *(a1 + 144) = 0;
  *(a1 + 148) = 120;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0;
  return result;
}

__n128 sub_23947E0C4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 74) = *(a2 + 74);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = v3;
  *(a1 + 92) = *(a2 + 92);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  v8 = *(a2 + 144);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 96) = v6;
  *(a1 + 144) = v8;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 168) = *(a2 + 168);
  *(a2 + 152) = 0;
  *(a2 + 160) = 0;
  *(a2 + 168) = 0;
  result = *(a2 + 176);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 176) = result;
  *(a2 + 184) = 0;
  *(a2 + 192) = 0;
  *(a2 + 176) = 0;
  *(a1 + 200) = *(a2 + 200);
  *(a2 + 96) = 0;
  *(a2 + 104) = 0;
  return result;
}

uint64_t sub_23947E150(uint64_t a1)
{
  v2 = *(a1 + 96);
  if (v2)
  {
    v3 = *(a1 + 104);
    if (v3)
    {
      v4 = 0;
      do
      {
        v5 = (*(a1 + 96) + v4);
        free(*v5);
        free(v5[1]);
        v4 += 24;
        --v3;
      }

      while (v3);
      v2 = *(a1 + 96);
    }

    j__free(v2);
  }

  if (*(a1 + 199) < 0)
  {
    operator delete(*(a1 + 176));
  }

  v6 = *(a1 + 152);
  if (v6)
  {
    *(a1 + 160) = v6;
    operator delete(v6);
  }

  return a1;
}

void sub_23947E1E0(uint64_t a1)
{
  sub_23947E458(a1);

  JUMPOUT(0x23EE77B60);
}

void *sub_23947E218(void *a1)
{
  *a1 = &unk_284BBB6F0;
  v3 = (a1 + 9);
  sub_23947E4C4(&v3);
  return a1;
}

uint64_t sub_23947E270(void *a1)
{
  *a1 = &unk_284BBB6F0;
  v3 = (a1 + 9);
  sub_23947E4C4(&v3);
  return MEMORY[0x23EE77B60](a1, 0x10B1C4067DF6F70);
}

uint64_t sub_23947E2F0(uint64_t a1)
{
  *a1 = &unk_284BBB780;
  if (*(a1 + 119) < 0)
  {
    operator delete(*(a1 + 96));
  }

  sub_23947E518(a1 + 64, *(a1 + 72));
  return a1;
}

void sub_23947E34C(uint64_t a1)
{
  *a1 = &unk_284BBB780;
  if (*(a1 + 119) < 0)
  {
    operator delete(*(a1 + 96));
  }

  sub_23947E518(a1 + 64, *(a1 + 72));

  JUMPOUT(0x23EE77B60);
}

uint64_t sub_23947E3C8(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v3;
  v4 = *(a2 + 32);
  v5 = *(a2 + 48);
  v6 = *(a2 + 64);
  *(a1 + 74) = *(a2 + 74);
  *(a1 + 48) = v5;
  *(a1 + 64) = v6;
  *(a1 + 32) = v4;
  *(a1 + 92) = *(a2 + 92);
  v7 = *(a2 + 96);
  v8 = *(a2 + 112);
  v9 = *(a2 + 128);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 112) = v8;
  *(a1 + 128) = v9;
  *(a1 + 96) = v7;
  if (*(a2 + 175) < 0)
  {
    sub_238DCEA9C((a1 + 152), *(a2 + 152), *(a2 + 160));
  }

  else
  {
    v10 = *(a2 + 152);
    *(a1 + 168) = *(a2 + 168);
    *(a1 + 152) = v10;
  }

  return a1;
}

uint64_t sub_23947E458(uint64_t a1)
{
  *a1 = &unk_284BBB6C0;
  sub_23947F614(a1 + 112);
  sub_23947F6AC(a1 + 112);
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  return a1;
}

void sub_23947E4C4(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_23947BDCC(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_23947E518(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_23947E518(a1, *a2);
    sub_23947E518(a1, a2[1]);
    sub_23947E574((a2 + 4));

    operator delete(a2);
  }
}

void sub_23947E574(uint64_t a1)
{
  sub_23947E150(a1 + 40);
  if (*(a1 + 31) < 0)
  {
    v2 = *(a1 + 8);

    operator delete(v2);
  }
}

void sub_23947E5C4(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x1AF286BCA1AF287)
  {
    operator new();
  }

  sub_238EAEDBC();
}

void sub_23947E620(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x1745D1745D1745ELL)
  {
    operator new();
  }

  sub_238EAEDBC();
}

void sub_23947E67C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a2;
    do
    {
      v7 = *(v6 + 16);
      *a4 = *v6;
      *(a4 + 16) = v7;
      v8 = *(v6 + 32);
      v9 = *(v6 + 48);
      v10 = *(v6 + 64);
      *(a4 + 74) = *(v6 + 74);
      *(a4 + 48) = v9;
      *(a4 + 64) = v10;
      *(a4 + 32) = v8;
      *(a4 + 92) = *(v6 + 92);
      v11 = *(v6 + 96);
      v12 = *(v6 + 112);
      v13 = *(v6 + 128);
      *(a4 + 144) = *(v6 + 144);
      *(a4 + 112) = v12;
      *(a4 + 128) = v13;
      *(a4 + 96) = v11;
      v14 = *(v6 + 152);
      *(a4 + 168) = *(v6 + 168);
      *(a4 + 152) = v14;
      *(v6 + 160) = 0;
      *(v6 + 168) = 0;
      *(v6 + 152) = 0;
      v6 += 176;
      a4 += 176;
    }

    while (v6 != a3);
    while (v5 != a3)
    {
      if (*(v5 + 175) < 0)
      {
        operator delete(*(v5 + 152));
      }

      v5 += 176;
    }
  }
}

uint64_t sub_23947E738(uint64_t a1)
{
  sub_23947E770(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_23947E770(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != a2)
  {
    do
    {
      v5 = v2 - 176;
      *(a1 + 16) = v2 - 176;
      if (*(v2 - 1) < 0)
      {
        operator delete(*(v2 - 24));
        v5 = *(a1 + 16);
      }

      v2 = v5;
    }

    while (v5 != a2);
  }
}

uint64_t sub_23947E7CC(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  v5 = *(a2 + 32);
  v6 = *(a2 + 48);
  v7 = *(a2 + 64);
  *(a1 + 74) = *(a2 + 74);
  *(a1 + 48) = v6;
  *(a1 + 64) = v7;
  *(a1 + 32) = v5;
  *(a1 + 92) = *(a2 + 92);
  v8 = *(a2 + 96);
  v9 = *(a2 + 112);
  v10 = *(a2 + 128);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 112) = v9;
  *(a1 + 128) = v10;
  *(a1 + 96) = v8;
  if (*(a1 + 175) < 0)
  {
    operator delete(*(a1 + 152));
  }

  v11 = *(a2 + 152);
  *(a1 + 168) = *(a2 + 168);
  *(a1 + 152) = v11;
  *(a2 + 175) = 0;
  *(a2 + 152) = 0;
  return a1;
}

unint64_t sub_23947E85C(unint64_t *a1, uint64_t a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x666666666666666)
  {
    sub_238EAEDBC();
  }

  if (0x999999999999999ALL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x999999999999999ALL * ((a1[2] - *a1) >> 3);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 3) >= 0x333333333333333)
  {
    v6 = 0x666666666666666;
  }

  else
  {
    v6 = v3;
  }

  v14[4] = a1;
  if (v6)
  {
    sub_23947E9BC(a1, v6);
  }

  v7 = 40 * v2;
  sub_23947E960(a1, v7, a2);
  v8 = v7 + 40;
  v9 = a1[1];
  v10 = v7 + *a1 - v9;
  sub_23947EA14(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  a1[1] = v8;
  v12 = a1[2];
  a1[2] = 0;
  v14[2] = v11;
  v14[3] = v12;
  v14[0] = v11;
  v14[1] = v11;
  sub_23947EAA0(v14);
  return v8;
}

_BYTE *sub_23947E960(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a2 = *a3;
  result = (a2 + 8);
  if (*(a3 + 31) < 0)
  {
    result = sub_238DCEA9C(result, *(a3 + 8), *(a3 + 16));
  }

  else
  {
    v6 = *(a3 + 8);
    *(a2 + 24) = *(a3 + 24);
    *result = v6;
  }

  *(a2 + 32) = *(a3 + 32);
  return result;
}

void sub_23947E9BC(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    operator new();
  }

  sub_238EAEDBC();
}

void sub_23947EA14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v8 = a2;
    do
    {
      sub_23947E960(a1, a4, v8);
      v8 += 40;
      a4 += 40;
    }

    while (v8 != a3);
    while (v6 != a3)
    {
      if (*(v6 + 31) < 0)
      {
        operator delete(*(v6 + 8));
      }

      v6 += 40;
    }
  }
}

uint64_t sub_23947EAA0(uint64_t a1)
{
  sub_23947EAD8(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_23947EAD8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != a2)
  {
    do
    {
      v5 = v2 - 40;
      *(a1 + 16) = v2 - 40;
      if (*(v2 - 9) < 0)
      {
        operator delete(*(v2 - 32));
        v5 = *(a1 + 16);
      }

      v2 = v5;
    }

    while (v5 != a2);
  }
}

void *sub_23947EB34(uint64_t **a1, int *a2, uint64_t a3, void *a4)
{
  v4 = *sub_23947EBE8(a1, &v6, a2);
  if (!v4)
  {
    operator new();
  }

  return v4;
}

uint64_t *sub_23947EBE8(uint64_t a1, void *a2, int *a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    v6 = *a3;
    v7 = *(a3 + 31);
    if (v7 >= 0)
    {
      v8 = *(a3 + 31);
    }

    else
    {
      v8 = *(a3 + 2);
    }

    if (v7 >= 0)
    {
      v9 = a3 + 2;
    }

    else
    {
      v9 = *(a3 + 1);
    }

    v10 = *(a3 + 32);
    do
    {
      while (1)
      {
        v11 = v4;
        v12 = *(v4 + 8);
        if (v6 >= v12)
        {
          if (v6 != v12)
          {
            break;
          }

          v13 = *(v4 + 63);
          if (v13 >= 0)
          {
            v14 = *(v4 + 63);
          }

          else
          {
            v14 = v4[6];
          }

          if (v13 >= 0)
          {
            v15 = v4 + 5;
          }

          else
          {
            v15 = v4[5];
          }

          if (v14 >= v8)
          {
            v16 = v8;
          }

          else
          {
            v16 = v14;
          }

          v17 = memcmp(v9, v15, v16);
          v18 = v8 < v14;
          if (v17)
          {
            v18 = v17 < 0;
          }

          if (!v18 && (v8 != v14 || memcmp(v9, v15, v8) || v10 >= *(v11 + 64)))
          {
            break;
          }
        }

        v4 = *v11;
        v5 = v11;
        if (!*v11)
        {
          goto LABEL_47;
        }
      }

      if (v12 >= v6)
      {
        v19 = *(v11 + 63);
        v20 = v19 >= 0 ? *(v11 + 63) : v11[6];
        v21 = v19 >= 0 ? v11 + 5 : v11[5];
        v22 = v8 >= v20 ? v20 : v8;
        v23 = memcmp(v21, v9, v22);
        v24 = v20 < v8;
        if (v23)
        {
          v24 = v23 < 0;
        }

        if (!v24 && (v20 != v8 || memcmp(v21, v9, v8) || *(v11 + 64) >= v10))
        {
          break;
        }
      }

      v5 = v11 + 1;
      v4 = v11[1];
    }

    while (v4);
  }

  else
  {
    v11 = (a1 + 8);
  }

LABEL_47:
  *a2 = v11;
  return v5;
}

uint64_t sub_23947ED8C(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_23947E574(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t sub_23947EDD8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = a1 + 8;
  if (*(a2 + 31) < 0)
  {
    sub_238DCEA9C(v4, *(a2 + 8), *(a2 + 16));
  }

  else
  {
    v5 = *(a2 + 8);
    *(v4 + 16) = *(a2 + 24);
    *v4 = v5;
  }

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 74) = 0u;
  *(a1 + 90) = 0u;
  *(a1 + 99) = 0u;
  *(a1 + 132) = 0;
  *(a1 + 168) = 0;
  *(a1 + 184) = 0;
  *(a1 + 188) = 120;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0;
  return a1;
}

void *sub_23947EE68(void *result, uint64_t a2, uint64_t a3)
{
  *result = a2;
  result[1] = a3;
  if (!a2)
  {
    if (a3)
    {
      sub_23952FB58();
    }
  }

  return result;
}

uint64_t *sub_23947EE88(uint64_t a1, unsigned int *a2)
{
  v2 = (a1 + 8);
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v4 = *a2;
  v5 = *(a2 + 31);
  v6 = v5 >= 0 ? *(a2 + 31) : *(a2 + 2);
  v7 = v5 >= 0 ? a2 + 2 : *(a2 + 1);
  v8 = *(a2 + 32);
  v9 = (a1 + 8);
  do
  {
    v10 = *(v3 + 8);
    if (v10 < v4)
    {
      goto LABEL_10;
    }

    if (v10 != v4)
    {
      goto LABEL_27;
    }

    v11 = *(v3 + 63);
    if (v11 >= 0)
    {
      v12 = *(v3 + 63);
    }

    else
    {
      v12 = v3[6];
    }

    if (v11 >= 0)
    {
      v13 = v3 + 5;
    }

    else
    {
      v13 = v3[5];
    }

    if (v6 >= v12)
    {
      v14 = v12;
    }

    else
    {
      v14 = v6;
    }

    v15 = memcmp(v13, v7, v14);
    v16 = v12 < v6;
    if (v15)
    {
      v16 = v15 < 0;
    }

    if (v16 || v12 == v6 && !memcmp(v13, v7, v6) && *(v3 + 64) < v8)
    {
LABEL_10:
      ++v3;
    }

    else
    {
LABEL_27:
      v9 = v3;
    }

    v3 = *v3;
  }

  while (v3);
  if (v9 == v2)
  {
    return v2;
  }

  v17 = *(v9 + 8);
  if (v4 < v17)
  {
    return v2;
  }

  if (v4 == v17)
  {
    v19 = *(v9 + 63);
    v20 = v19 >= 0 ? *(v9 + 63) : v9[6];
    v21 = v19 >= 0 ? v9 + 5 : v9[5];
    v22 = v20 >= v6 ? v6 : v20;
    v23 = memcmp(v7, v21, v22);
    v24 = v6 < v20;
    if (v23)
    {
      v24 = v23 < 0;
    }

    if (v24 || v6 == v20 && !memcmp(v7, v21, v6) && v8 < *(v9 + 64))
    {
      return v2;
    }
  }

  return v9;
}

void sub_23947F02C(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  sub_238EAEDBC();
}

void *sub_23947F074(uint64_t **a1, int *a2, uint64_t a3)
{
  v3 = *sub_23947EBE8(a1, &v5, a2);
  if (!v3)
  {
    sub_23947F104();
  }

  return v3;
}

const char *sub_23947F228(int a1)
{
  if (a1 > -65541)
  {
    if (a1 > -65538)
    {
      if (!a1)
      {
        return "kDNSSDAdvertisingProxyStatus_NoError";
      }

      if (a1 == -65537)
      {
        return "kDNSSDAdvertisingProxyStatus_UnknownErr";
      }
    }

    else
    {
      if (a1 == -65540)
      {
        return "kDNSSDAdvertisingProxyStatus_BadParam";
      }

      if (a1 == -65539)
      {
        return "kDNSSDAdvertisingProxyStatus_NoMemory";
      }
    }
  }

  else if (a1 > -65564)
  {
    if (a1 == -65563)
    {
      return "kDNSSDAdvertisingProxyStatus_DaemonNotRunning";
    }

    if (a1 == -65549)
    {
      return "kDNSSDAdvertisingProxyStatus_Invalid";
    }
  }

  else
  {
    if (a1 == -65571)
    {
      return "kDNSSDAdvertisingProxyStatus_NotPermitted";
    }

    if (a1 == -65569)
    {
      return "kDNSSDAdvertisingProxyStatus_Disconnected";
    }
  }

  return "Unknown AdvertisingProxy error code";
}

const char *sub_23947F330(int a1)
{
  switch(a1)
  {
    case -65568:
      result = "kDNSServiceErr_Timeout";
      break;
    case -65567:
      result = "kDNSServiceErr_PollingMode";
      break;
    case -65566:
      result = "kDNSServiceErr_NoRouter";
      break;
    case -65565:
      result = "kDNSServiceErr_NATPortMappingDisabled";
      break;
    case -65564:
      result = "kDNSServiceErr_NATPortMappingUnsupported";
      break;
    case -65563:
      result = "kDNSServiceErr_ServiceNotRunning";
      break;
    case -65562:
      result = "kDNSServiceErr_Transient";
      break;
    case -65561:
      result = "kDNSServiceErr_BadKey";
      break;
    case -65560:
      result = "kDNSServiceErr_BadSig";
      break;
    case -65559:
      result = "kDNSServiceErr_BadTime";
      break;
    case -65558:
      result = "kDNSServiceErr_DoubleNAT";
      break;
    case -65557:
      result = "kDNSServiceErr_NATTraversal";
      break;
    case -65556:
      result = "kDNSServiceErr_NoSuchKey";
      break;
    case -65555:
      result = "kDNSServiceErr_NoAuth";
      break;
    case -65554:
      result = "kDNSServiceErr_NoSuchRecord";
      break;
    case -65553:
      result = "kDNSServiceErr_Refused";
      break;
    case -65552:
      result = "kDNSServiceErr_BadInterfaceIndex";
      break;
    case -65551:
      result = "kDNSServiceErr_Incompatible";
      break;
    case -65550:
      result = "kDNSServiceErr_Firewall";
      break;
    case -65549:
      result = "kDNSServiceErr_Invalid";
      break;
    case -65548:
      result = "kDNSServiceErr_NameConflict";
      break;
    case -65547:
      result = "kDNSServiceErr_AlreadyRegistered";
      break;
    case -65546:
      goto LABEL_5;
    case -65545:
      result = "kDNSServiceErr_NotInitialized";
      break;
    case -65544:
      result = "kDNSServiceErr_Unsupported";
      break;
    case -65543:
      result = "kDNSServiceErr_BadFlags";
      break;
    case -65542:
      result = "kDNSServiceErr_BadState";
      break;
    case -65541:
      result = "kDNSServiceErr_BadReference";
      break;
    case -65540:
      result = "kDNSServiceErr_BadParam";
      break;
    case -65539:
      result = "kDNSServiceErr_NoMemory";
      break;
    case -65538:
      result = "kDNSServiceErr_NoSuchName";
      break;
    case -65537:
      result = "kDNSServiceErr_Unknown";
      break;
    default:
      if (a1)
      {
LABEL_5:
        result = "Unknown DNSService error code";
      }

      else
      {
        result = "kDNSServiceErr_NoError";
      }

      break;
  }

  return result;
}

uint64_t sub_23947F4F0(int a1)
{
  if (a1 > -65540)
  {
    if (a1 == -65539)
    {
      v1 = 0x8500000000;
      v2 = 11;
      return v2 | v1;
    }

    if (!a1)
    {
      v1 = 0;
      v2 = 0;
      return v2 | v1;
    }

LABEL_8:
    v1 = 0x8900000000;
    v2 = 172;
    return v2 | v1;
  }

  if (a1 == -65555)
  {
    v1 = 0x8700000000;
    v2 = 179;
    return v2 | v1;
  }

  if (a1 != -65548)
  {
    goto LABEL_8;
  }

  v1 = 0x8300000000;
  v2 = 180;
  return v2 | v1;
}

uint64_t sub_23947F598(uint64_t a1)
{
  sub_23947F614(a1);

  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  return sub_239483580(a1);
}

void sub_23947F5E8(_Unwind_Exception *a1)
{
  if (*(v1 + 71) < 0)
  {
    operator delete(*(v1 + 48));
  }

  sub_239483580(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_23947F614(uint64_t a1)
{
  if (*(a1 + 24) != -1)
  {
    sub_239484908(a1);
  }

  v2 = *(a1 + 40);
  if (v2)
  {
    DNSServiceRefDeallocate(v2);
    *(a1 + 40) = 0;
  }

  v3 = *(a1 + 72);
  *(a1 + 72) = 0;

  v4 = *(*sub_239476328() + 72);

  return v4();
}

void sub_23947F6B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  v7 = MEMORY[0x23EE77A00](a1 + 48, a2);
  *(a1 + 40) = 0;
  if (qword_27DF7BD08 != -1)
  {
    sub_239533430(v7);
  }

  sub_2394835D0(a1, qword_27DF7BCD0, v5, v4);
}

unint64_t sub_23947F72C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = MEMORY[0x23EE78590](v3);
    v6 = *(a1 + 72);
    *(a1 + 72) = v5;

    if (*(a1 + 24) == -1)
    {
      v8 = sub_23947F8C8(a1);
      if (v8)
      {
LABEL_8:
        v10 = v8 & 0xFFFFFFFF00000000;
        goto LABEL_9;
      }

      v16[0] = sub_2393CFEE0();
      v16[1] = v12;
      rdata[0] = sub_2393CF9BC(v16);
      rdata[1] = v13;
      v7 = sub_23947FE2C(a1, 0xFFFFFFFF, 0x1Cu, rdata, 0x10u);
    }

    else
    {
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = sub_23947FA28;
      v14[3] = &unk_278A82EE0;
      v14[4] = a1;
      v7 = sub_2394842A4(a1, v14);
    }

    v8 = v7;
    if (!v7)
    {
      v9 = sub_239476328();
      v8 = (*(*v9 + 40))(v9, 30000, sub_23947FE1C, a1);
    }

    goto LABEL_8;
  }

  v10 = 0x3C00000000;
  LODWORD(v8) = 47;
LABEL_9:

  return v8 | v10;
}

unint64_t sub_23947F8C8(DNSServiceRef *sdRef)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = sdRef[5];
  if (v2)
  {
    DNSServiceRefDeallocate(v2);
    sdRef[5] = 0;
  }

  v3 = sub_239480058(sdRef);
  v4 = v3;
  if (v3)
  {
    v5 = HIDWORD(v3);
    v6 = sub_2393D9044(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v10 = sub_2393C9138();
      v11 = 2080;
      v12 = "src/platform/Darwin/dnssd/DnssdHostNameRegistrar.mm";
      v13 = 1024;
      v14 = 140;
      _os_log_impl(&dword_238DAE000, v6, OS_LOG_TYPE_ERROR, "%s at %s:%d", buf, 0x1Cu);
    }

    if (sub_2393D5398(1u))
    {
      v7 = sub_2393C9138();
      sub_2393D5320(0, 1, "%s at %s:%d", v7, "src/platform/Darwin/dnssd/DnssdHostNameRegistrar.mm", 140);
    }
  }

  else
  {
    v5 = 0;
  }

  return v4 | (v5 << 32);
}

void sub_23947FA28(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v5 = *(a1 + 32);
  if (!sub_23947F8C8(v5))
  {
    memset(v7, 0, sizeof(v7));
    sub_2394801CC(v7, *a2, a2[1], (a2[1] - *a2) >> 4);
    sub_23947FB1C(v5, v7, 1u);
    v8 = v7;
    sub_2394802C0(&v8);
    memset(v6, 0, sizeof(v6));
    sub_239480338(v6, *a3, a3[1], 0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 3));
    sub_23947FC9C(v5, v6, 0x1Cu);
    v8 = v6;
    sub_23948044C(&v8);
  }
}

void sub_23947FAF0(_Unwind_Exception *a1)
{
  *(v2 - 40) = v1;
  sub_23948044C((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_23947FB1C(uint64_t result, NSObject ***a2, uint16_t a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = *a2;
  v4 = a2[1];
  if (*a2 != v4)
  {
    do
    {
      v8 = *v3;
      v7 = v3 + 1;
      index = nw_interface_get_index(v8);
      if (sub_23947FE2C(result, index, a3, v7, 4u))
      {
        v10 = sub_2393D9044(0);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          v11 = sub_2393C9138();
          *buf = 136315650;
          v14 = v11;
          v15 = 2080;
          v16 = "src/platform/Darwin/dnssd/DnssdHostNameRegistrar.h";
          v17 = 1024;
          v18 = 48;
          _os_log_impl(&dword_238DAE000, v10, OS_LOG_TYPE_ERROR, "%s at %s:%d", buf, 0x1Cu);
        }

        if (sub_2393D5398(1u))
        {
          v12 = sub_2393C9138();
          sub_2393D5320(0, 1, "%s at %s:%d", v12, "src/platform/Darwin/dnssd/DnssdHostNameRegistrar.h", 48);
        }
      }

      v3 = v7 + 1;
    }

    while (v3 != v4);
  }
}

void sub_23947FC9C(uint64_t result, NSObject ***a2, uint16_t a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = *a2;
  v4 = a2[1];
  if (*a2 != v4)
  {
    do
    {
      v8 = *v3;
      v7 = v3 + 1;
      index = nw_interface_get_index(v8);
      if (sub_23947FE2C(result, index, a3, v7, 0x10u))
      {
        v10 = sub_2393D9044(0);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          v11 = sub_2393C9138();
          *buf = 136315650;
          v14 = v11;
          v15 = 2080;
          v16 = "src/platform/Darwin/dnssd/DnssdHostNameRegistrar.h";
          v17 = 1024;
          v18 = 48;
          _os_log_impl(&dword_238DAE000, v10, OS_LOG_TYPE_ERROR, "%s at %s:%d", buf, 0x1Cu);
        }

        if (sub_2393D5398(1u))
        {
          v12 = sub_2393C9138();
          sub_2393D5320(0, 1, "%s at %s:%d", v12, "src/platform/Darwin/dnssd/DnssdHostNameRegistrar.h", 48);
        }
      }

      v3 = v7 + 2;
    }

    while (v3 != v4);
  }
}

uint64_t sub_23947FE2C(uint64_t a1, uint32_t interfaceIndex, uint16_t rrtype, void *rdata, uint16_t rdlen)
{
  v7 = *(a1 + 40);
  v8 = (a1 + 48);
  if (*(a1 + 71) < 0)
  {
    v8 = *v8;
  }

  RecordRef = 0;
  v9 = DNSServiceRegisterRecord(v7, &RecordRef, 0x10u, interfaceIndex, v8, rrtype, 1u, rdlen, rdata, 0, sub_23947FEA0, a1);
  return sub_23947F4F0(v9);
}

void sub_23947FEA0(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5)
{
  v15 = *MEMORY[0x277D85DE8];
  v8 = sub_2393D9044(0x22u);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v12 = "OnRegisterRecord";
    v13 = 1024;
    LODWORD(v14) = a3;
    _os_log_impl(&dword_238DAE000, v8, OS_LOG_TYPE_DEFAULT, "Mdns: %s flags: %d", buf, 0x12u);
  }

  if (sub_2393D5398(2u))
  {
    sub_2393D5320(34, 2, "Mdns: %s flags: %d", "OnRegisterRecord", a3);
  }

  if (a4)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = sub_23947F330(a4);
      *buf = 136315394;
      v12 = "OnRegisterRecord";
      v13 = 2080;
      v14 = v9;
      _os_log_impl(&dword_238DAE000, v8, OS_LOG_TYPE_ERROR, "%s (%s)", buf, 0x16u);
    }

    if (sub_2393D5398(1u))
    {
      v10 = sub_23947F330(a4);
      sub_2393D5320(34, 1, "%s (%s)", "OnRegisterRecord", v10);
    }
  }

  else
  {
    sub_2394800FC(a5, 0);
  }
}

void sub_239480028(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    DNSServiceRefDeallocate(v2);
    *(a1 + 40) = 0;
  }
}

uint64_t sub_239480058(DNSServiceRef *sdRef)
{
  v1 = sdRef + 5;
  if (sdRef[5])
  {
    return 0x7300000003;
  }

  Connection = DNSServiceCreateConnection(sdRef + 5);
  v4 = Connection;
  if (!Connection)
  {
    v5 = *v1;
    if (qword_27DF7BD08 != -1)
    {
      sub_239533430(Connection);
    }

    v4 = DNSServiceSetDispatchQueue(v5, qword_27DF7BCD0);
    if (v4)
    {
      if (*v1)
      {
        DNSServiceRefDeallocate(*v1);
        *v1 = 0;
      }
    }
  }

  return sub_23947F4F0(v4);
}

void sub_2394800FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_239476328();
  (*(*v4 + 72))(v4, sub_23947FE1C, a1);
  if (*(a1 + 72))
  {
    v6 = MEMORY[0x23EE78590]();
    v5 = *(a1 + 72);
    *(a1 + 72) = 0;

    v6[2](v6, a2);
  }
}

uint64_t *sub_2394801CC(uint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_23948023C(result, a4);
  }

  return result;
}

void sub_23948023C(uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    sub_239480278(a1, a2);
  }

  sub_238EAEDBC();
}

void sub_239480278(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  sub_238EAEDBC();
}

void sub_2394802C0(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    for (i = v1[1]; i != v2; i -= 16)
    {
      v5 = *(i - 2);
    }

    v1[1] = v2;
    v6 = **a1;

    operator delete(v6);
  }
}

uint64_t *sub_239480338(uint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_2394803A8(result, a4);
  }

  return result;
}

void sub_2394803A8(uint64_t *a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    sub_2394803F4(a1, a2);
  }

  sub_238EAEDBC();
}

void sub_2394803F4(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_238EAEDBC();
}

void sub_23948044C(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    for (i = v1[1]; i != v2; i -= 24)
    {
      v5 = *(i - 3);
    }

    v1[1] = v2;
    v6 = **a1;

    operator delete(v6);
  }
}

uint64_t sub_2394804C4(void (*a1)(uint64_t, void, void), uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    v3 = 0x1B800000000;
LABEL_6:
    v4 = 47;
    return v4 | v3;
  }

  if (!a2)
  {
    v3 = 0x1B900000000;
    goto LABEL_6;
  }

  a1(a3, 0, 0);
  v3 = 0;
  v4 = 0;
  return v4 | v3;
}

uint64_t sub_239480530()
{
  sub_23947632C("src/platform/Darwin/dnssd/DnssdImpl.cpp", 474);
  if ((byte_27DF7BD28 & 1) == 0)
  {
    byte_27DF7BD28 = 1;
    qword_27DF7BD18 = 0;
    unk_27DF7BD20 = 0;
    qword_27DF7BD10 = 0;
  }

  result = sub_23947B2D8(&qword_27DF7BD10, 0);
  if (result == 16)
  {
    return 0;
  }

  return result;
}

unint64_t sub_239480598(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v44 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    v22 = 0x1C800000000;
LABEL_44:
    v9 = 47;
    return v9 | v22;
  }

  if (*(a1 + 84) > 1u)
  {
    v22 = 0x1C900000000;
    goto LABEL_44;
  }

  if (!a2)
  {
    v22 = 0x1CA00000000;
    goto LABEL_44;
  }

  if (!*(a1 + 34))
  {
    v22 = 0x1CB00000000;
    goto LABEL_44;
  }

  rdlen = 0;
  rdata = 0;
  v5 = *(a1 + 104);
  if (v5 > 0x40)
  {
    v22 = 0x5900000000;
    v9 = 47;
  }

  else
  {
    v7 = *(a1 + 96);
    TXTRecordCreate(&v33, 0x40u, &v34);
    if (v5)
    {
      v8 = (v7 + 16);
      v9 = 47;
      while (1)
      {
        if (*v8 > 0xFFuLL)
        {
          v22 = 0x6000000000;
          goto LABEL_58;
        }

        if (TXTRecordSetValue(&v33, *(v8 - 2), *v8, *(v8 - 1)))
        {
          break;
        }

        v8 += 3;
        if (!--v5)
        {
          goto LABEL_11;
        }
      }

      v22 = 0x6300000000;
    }

    else
    {
LABEL_11:
      Length = TXTRecordGetLength(&v33);
      rdlen = Length;
      if (!Length)
      {
        TXTRecordDeallocate(&v33);
      }

      rdata = TXTRecordGetBytesPtr(&v33);
      sub_239482FDC(a1);
      v11 = *(a1 + 92);
      sub_2394809FC(&__p, (a1 + 34));
      if (v30 >= 0)
      {
        v12 = &v29;
      }

      else
      {
        v12 = v29;
      }

      v13 = *(a1 + 88);
      v14 = *(a1 + 85);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      v16 = sub_2393D9044(0x22u);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136316162;
        if (p_p)
        {
          v17 = p_p;
        }

        else
        {
          v17 = "(null)";
        }

        *&buf[4] = a1;
        if (v12)
        {
          v18 = v12;
        }

        else
        {
          v18 = "(null)";
        }

        v36 = 2080;
        v37 = v17;
        v38 = 1024;
        v39 = v13;
        v40 = 2080;
        v41 = v18;
        v42 = 1024;
        v43 = v11;
        _os_log_impl(&dword_238DAE000, v16, OS_LOG_TYPE_DEFAULT, "Registering service %s on host %s with port %u and type: %s on interface id: %u", buf, 0x2Cu);
      }

      if (sub_2393D5398(2u))
      {
        if (p_p)
        {
          v19 = p_p;
        }

        else
        {
          v19 = "(null)";
        }

        if (v12)
        {
          v20 = v12;
        }

        else
        {
          v20 = "(null)";
        }

        sub_2393D5320(34, 2, "Registering service %s on host %s with port %u and type: %s on interface id: %u", a1, v19, v13, v20, v11);
      }

      *buf = 0;
      if ((byte_27DF7BD28 & 1) == 0)
      {
        byte_27DF7BD28 = 1;
        qword_27DF7BD18 = 0;
        unk_27DF7BD20 = 0;
        qword_27DF7BD10 = 0;
      }

      if (sub_23947B3A8(&qword_27DF7BD10, v12, a1, buf))
      {
        v21 = sub_2393D52C4(0xC0uLL);
        if (v21)
        {
          *buf = sub_23947B668(v21, v12, a1, a2, a3);
          sub_23947F6B0(*buf + 112, p_p, v14, v11);
        }

        v27 = 0xB600000000;
        v26 = 11;
      }

      else
      {
        updated = DNSServiceUpdateRecord(*(*buf + 24), 0, 8u, rdlen, rdata, 0);
        if (updated)
        {
          v25 = sub_23947AEF0(*buf, updated);
          v26 = v25;
          v27 = v25;
        }

        else
        {
          v26 = 0;
          v27 = 0;
        }
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (v30 < 0)
      {
        operator delete(v29);
      }

      v22 = v27 & 0xFFFFFFFF00000000;
      v9 = v26;
    }
  }

LABEL_58:
  if (rdlen)
  {
    TXTRecordDeallocate(&v33);
  }

  return v9 | v22;
}

void sub_2394809FC(std::string *__return_ptr a1@<X8>, char *__s@<X0>)
{
  sub_23947C374(&v4, __s);
  std::string::push_back(&v4, 46);
  v5 = v4;
  memset(&v4, 0, sizeof(v4));
  v3 = std::string::append(&v5, "local.");
  *a1 = *v3;
  v3->__r_.__value_.__r.__words[0] = 0;
  v3->__r_.__value_.__l.__size_ = 0;
  v3->__r_.__value_.__r.__words[2] = 0;
  if (SHIBYTE(v5.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v5.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v4.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v4.__r_.__value_.__l.__data_);
  }
}

unint64_t sub_239480A9C(char *a1, unsigned int a2, uint64_t a3, uint32_t *a4, uint64_t a5, uint64_t a6, void *a7)
{
  if (!a1)
  {
    v21 = 0x1ED00000000;
LABEL_12:
    v22 = 47;
    return v22 | v21;
  }

  if (!a5)
  {
    v21 = 0x1EE00000000;
    goto LABEL_12;
  }

  v8 = a2;
  if (a2 > 1)
  {
    v21 = 0x1EF00000000;
    goto LABEL_12;
  }

  v12 = __p;
  sub_239482A18(a1, a2, __p);
  v13 = *a4;
  v14 = v25;
  v15 = __p[0];
  v16 = sub_2393D52C4(0x68uLL);
  if (v16)
  {
    v17 = v16;
    if (v14 < 0)
    {
      v12 = v15;
    }

    sub_23947B84C(v16, a6, a5, v8);
    v19 = sub_239481BD4(v18, v13, v12);
    v20 = v19;
    if (v19)
    {
      v21 = v19 & 0xFFFFFFFF00000000;
    }

    else
    {
      v21 = 0;
      v20 = 0;
      *a7 = v17;
    }
  }

  else
  {
    v21 = 0xF300000000;
    v20 = 11;
  }

  if (v25 < 0)
  {
    operator delete(__p[0]);
  }

  v22 = v20;
  return v22 | v21;
}

uint64_t sub_239480BDC(uint64_t a1)
{
  if ((byte_27DF7BD28 & 1) == 0)
  {
    byte_27DF7BD28 = 1;
    qword_27DF7BD18 = 0;
    unk_27DF7BD20 = 0;
    qword_27DF7BD10 = 0;
  }

  if (sub_23947AD90(&qword_27DF7BD10, a1))
  {
    v2 = 0x1FB00000000;
LABEL_29:
    v14 = 216;
    return v2 | v14;
  }

  if (*(a1 + 8) != 1)
  {
    v2 = 0x20200000000;
    goto LABEL_29;
  }

  __p = 0;
  v17 = 0;
  v18 = 0;
  if (byte_27DF7BD28)
  {
    v3 = qword_27DF7BD10;
    v4 = qword_27DF7BD18;
    if (qword_27DF7BD10 != qword_27DF7BD18)
    {
      v5 = 0;
      do
      {
        v6 = *v3;
        if (*(*v3 + 8) == 3 && *(v6 + 128) == a1)
        {
          if (v5 >= v18)
          {
            v7 = (v5 - __p) >> 3;
            if ((v7 + 1) >> 61)
            {
              sub_238EAEDBC();
            }

            v8 = (v18 - __p) >> 2;
            if (v8 <= v7 + 1)
            {
              v8 = v7 + 1;
            }

            if (v18 - __p >= 0x7FFFFFFFFFFFFFF8)
            {
              v9 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v9 = v8;
            }

            if (v9)
            {
              sub_2393BEFD8(&__p, v9);
            }

            *(8 * v7) = v6;
            v5 = (8 * v7 + 8);
            v10 = (8 * v7 - (v17 - __p));
            memcpy(v10, __p, v17 - __p);
            v11 = __p;
            __p = v10;
            v17 = v5;
            v18 = 0;
            if (v11)
            {
              operator delete(v11);
            }
          }

          else
          {
            *v5 = v6;
            v5 += 8;
          }

          v17 = v5;
        }

        v3 += 8;
      }

      while (v3 != v4);
      v12 = __p;
      if (__p != v5)
      {
        do
        {
          v13 = *v12++;
          sub_23947AE90(v13, 0x21500000074);
        }

        while (v12 != v5);
      }
    }
  }

  else
  {
    byte_27DF7BD28 = 1;
    qword_27DF7BD18 = 0;
    unk_27DF7BD20 = 0;
    qword_27DF7BD10 = 0;
  }

  sub_23947AE90(a1, 0x21800000074);
  if (__p)
  {
    v17 = __p;
    operator delete(__p);
  }

  v14 = 0;
  v2 = 0;
  return v2 | v14;
}

unint64_t sub_239480DF0(char *a1, unsigned int a2, uint64_t a3, uint32_t *a4, uint64_t a5)
{
  if (!a1)
  {
    v15 = 0x21F00000000;
LABEL_11:
    v16 = 47;
    return v16 | v15;
  }

  if (!a5)
  {
    v15 = 0x22000000000;
    goto LABEL_11;
  }

  v6 = a2;
  if (a2 > 1)
  {
    v15 = 0x22100000000;
    goto LABEL_11;
  }

  v8 = __p;
  sub_239482A18(a1, a2, __p);
  v9 = *a4;
  v10 = v19;
  v11 = __p[0];
  v12 = sub_2393D52C4(0x40uLL);
  if (v12)
  {
    if (v10 < 0)
    {
      v8 = v11;
    }

    sub_23947C8C4(v12, a5, v6);
    v14 = sub_239481BD4(v13, v9, v8);
  }

  else
  {
    v14 = 0xFD0000000BLL;
  }

  v15 = v14 & 0xFFFFFFFF00000000;
  if (v19 < 0)
  {
    operator delete(__p[0]);
  }

  v16 = v14;
  return v16 | v15;
}

uint64_t sub_239480EF8(uint64_t a1)
{
  if ((byte_27DF7BD28 & 1) == 0)
  {
    byte_27DF7BD28 = 1;
    qword_27DF7BD18 = 0;
    unk_27DF7BD20 = 0;
    qword_27DF7BD10 = 0;
  }

  v1 = sub_23947B5A4(&qword_27DF7BD10, a1);
  if (v1)
  {
    return sub_23947AEF0(v1, 0);
  }

  else
  {
    return 0x22D000000D8;
  }
}

unint64_t sub_239480F60(uint64_t a1, unsigned int *a2, uint64_t a3, uint64_t a4)
{
  if (!a1)
  {
    v18 = 0x23600000000;
LABEL_19:
    v19 = 47;
    return v19 | v18;
  }

  if (*(a1 + 84) > 1u)
  {
    v18 = 0x23700000000;
    goto LABEL_19;
  }

  p_p = &__p;
  sub_239482A0C(a1, &__p);
  if (qword_27DF7C068 && (v9 = *(qword_27DF7C070 + 8) - *qword_27DF7C070) != 0)
  {
    v10 = 0;
    v11 = 0x86BCA1AF286BCA1BLL * (v9 >> 3);
    if (v11 <= 1)
    {
      v11 = 1;
    }

    v12 = *qword_27DF7C070 - 152;
    while (1)
    {
      v12 += 152;
      if (v12 == a1)
      {
        break;
      }

      v10 += 176;
      if (!--v11)
      {
        goto LABEL_10;
      }
    }

    v24 = *(qword_27DF7C068 + 72) + v10;
    v13 = (v24 + 152);
    if (*(v24 + 175) < 0)
    {
      v13 = *v13;
    }
  }

  else
  {
LABEL_10:
    v13 = 0;
  }

  v14 = *a2;
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if ((byte_27DF7BD28 & 1) == 0)
  {
    byte_27DF7BD28 = 1;
    qword_27DF7BD18 = 0;
    unk_27DF7BD20 = 0;
    qword_27DF7BD10 = 0;
  }

  v15 = *(a1 + 85);
  v16 = sub_23947B4F4(&qword_27DF7BD10, a1);
  if (v16)
  {
    v17 = *(v16 + 120);
  }

  else
  {
    v17 = 0;
  }

  v20 = sub_2393D52C4(0xA8uLL);
  if (v20)
  {
    v21 = sub_23947CFC8(v20, a4, a3, v15, a1, qword_27DF7C068, v17);
    v22 = sub_239481EE8(v21, v14, p_p, a1, v13);
  }

  else
  {
    v22 = 0x1A60000000BLL;
  }

  v18 = v22 & 0xFFFFFFFF00000000;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v19 = v22;
  return v19 | v18;
}

unint64_t sub_239481154(uint64_t a1, unsigned int *a2, uint64_t a3)
{
  if (!a1)
  {
    v11 = 0x24E00000000;
LABEL_11:
    v12 = 47;
    return v12 | v11;
  }

  if (*(a1 + 84) > 1u)
  {
    v11 = 0x24F00000000;
    goto LABEL_11;
  }

  p_p = &__p;
  sub_239482A0C(a1, &__p);
  v7 = *a2;
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if ((byte_27DF7BD28 & 1) == 0)
  {
    byte_27DF7BD28 = 1;
    qword_27DF7BD18 = 0;
    unk_27DF7BD20 = 0;
    qword_27DF7BD10 = 0;
  }

  v8 = *(a1 + 85);
  v9 = sub_23947B4F4(&qword_27DF7BD10, a1);
  if (v9)
  {
    v10 = *(v9 + 120);
  }

  else
  {
    v10 = 0;
  }

  v13 = sub_2393D52C4(0xA8uLL);
  if (v13)
  {
    v14 = sub_23947D078(v13, a3, v8, a1, v10);
    v15 = sub_239481EE8(v14, v7, p_p, a1, 0);
  }

  else
  {
    v15 = 0x1AF0000000BLL;
  }

  v11 = v15 & 0xFFFFFFFF00000000;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v12 = v15;
  return v12 | v11;
}

uint64_t sub_2394812A4(char *a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = sub_2393D9044(0x22u);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v10 = a1;
    _os_log_impl(&dword_238DAE000, v2, OS_LOG_TYPE_DEFAULT, "No longer need resolve for %s", buf, 0xCu);
  }

  if (sub_2393D5398(2u))
  {
    sub_2393D5320(34, 2, "No longer need resolve for %s", a1);
  }

  if ((byte_27DF7BD28 & 1) == 0)
  {
    byte_27DF7BD28 = 1;
    qword_27DF7BD18 = 0;
    unk_27DF7BD20 = 0;
    qword_27DF7BD10 = 0;
  }

  result = sub_23947B4F4(&qword_27DF7BD10, a1);
  if (result)
  {
    v4 = result;
    v5 = *(result + 120);
    if (v5)
    {
      v6 = v5 - 1;
      *(result + 120) = v6;
      if (!v6)
      {
        if (*(result + 40) && *(result + 48))
        {
          if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315394;
            v10 = a1;
            v11 = 2048;
            v12 = v4;
            _os_log_impl(&dword_238DAE000, v2, OS_LOG_TYPE_DEFAULT, "Revoking Need for %s at %p", buf, 0x16u);
          }

          v7 = sub_2393D5398(2u);
          if (v7)
          {
            sub_2393D5320(34, 2, "Revoking Need for %s at %p", a1, v4);
          }

          if (qword_27DF7BD08 != -1)
          {
            sub_23953343C(v7);
          }

          v8 = advertising_proxy_set_service_needed();
          sub_2394815F0("advertising_proxy_set_service_needed", v8);
        }

        do
        {
          sub_23947AE90(v4, 0x27F00000074);
          if ((byte_27DF7BD28 & 1) == 0)
          {
            byte_27DF7BD28 = 1;
            qword_27DF7BD18 = 0;
            unk_27DF7BD20 = 0;
            qword_27DF7BD10 = 0;
          }

          result = sub_23947B4F4(&qword_27DF7BD10, a1);
          v4 = result;
        }

        while (result);
      }
    }
  }

  return result;
}

void sub_2394814F0(uint64_t a1, const void *a2, uint64_t a3)
{
  v3 = a3;
  v10 = *MEMORY[0x277D85DE8];
  sub_2394815F0("OnNeedDisabled", a3);
  if (!v3)
  {
    v5 = sub_2393D9044(0x22u);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v7 = "OnNeedDisabled";
      v8 = 2048;
      v9 = a2;
      _os_log_impl(&dword_238DAE000, v5, OS_LOG_TYPE_DEFAULT, "%s for %p", buf, 0x16u);
    }

    if (sub_2393D5398(2u))
    {
      sub_2393D5320(34, 2, "%s for %p", "OnNeedDisabled", a2);
    }

    advertising_proxy_ref_dealloc();
  }
}

void sub_2394815F0(const char *result, int a2)
{
  v11 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v4 = sub_2393D9044(0x22u);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      if (result)
      {
        v5 = result;
      }

      else
      {
        v5 = "(null)";
      }

      *buf = 136315394;
      v8 = v5;
      v9 = 2080;
      v10 = sub_23947F228(a2);
      _os_log_impl(&dword_238DAE000, v4, OS_LOG_TYPE_ERROR, "%s (%s)", buf, 0x16u);
    }

    if (sub_2393D5398(1u))
    {
      if (!result)
      {
        result = "(null)";
      }

      v6 = sub_23947F228(a2);
      sub_2393D5320(34, 1, "%s (%s)", result, v6);
    }
  }
}

unint64_t sub_239481700(char *a1, uint64_t a2, uint64_t a3, uint32_t *a4)
{
  v16[0] = a2;
  v16[1] = a3;
  if (!a1)
  {
    return 0x2870000002FLL;
  }

  v4 = *a4;
  sub_2394809FC(&__p, a1);
  if (sub_2393CFB10(v16))
  {
    rdata[0] = sub_2393CF9BC(v16);
    rdata[1] = v5;
    v6 = 28;
    v7 = 16;
LABEL_7:
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    v10 = DNSServiceReconfirmRecord(0, v4, p_p, v6, 1u, v7, rdata);
    sub_239481814("ChipDnssdReconfirmRecord", v10);
    v11 = sub_23947F4F0(v10);
    v12 = v11 & 0xFFFFFFFF00000000;
    v13 = v11;
    goto LABEL_12;
  }

  if (sub_2393CFA1C(v16))
  {
    LODWORD(rdata[0]) = sub_2393CF9B4(v16);
    v6 = 1;
    v7 = 4;
    goto LABEL_7;
  }

  v12 = 0x2A800000000;
  v13 = 47;
LABEL_12:
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v13 | v12;
}

void sub_239481814(const char *result, int a2)
{
  v11 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v4 = sub_2393D9044(0x22u);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      if (result)
      {
        v5 = result;
      }

      else
      {
        v5 = "(null)";
      }

      *buf = 136315394;
      v8 = v5;
      v9 = 2080;
      v10 = sub_23947F330(a2);
      _os_log_impl(&dword_238DAE000, v4, OS_LOG_TYPE_ERROR, "%s (%s)", buf, 0x16u);
    }

    if (sub_2393D5398(1u))
    {
      if (!result)
      {
        result = "(null)";
      }

      v6 = sub_23947F330(a2);
      sub_2393D5320(34, 1, "%s (%s)", result, v6);
    }
  }
}

unint64_t sub_239481924(uint64_t a1, int a2, uint64_t a3, const char *a4, const char *a5, const char *a6, uint64_t *a7)
{
  v36 = *MEMORY[0x277D85DE8];
  v13 = sub_2393D9044(0x22u);
  v14 = "(null)";
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    if (a4)
    {
      v15 = a4;
    }

    else
    {
      v15 = "(null)";
    }

    v16 = a7;
    if (a5)
    {
      v17 = a5;
    }

    else
    {
      v17 = "(null)";
    }

    if (a6)
    {
      v18 = a6;
    }

    else
    {
      v18 = "(null)";
    }

    *buf = 136316674;
    v23 = "OnRegister";
    v24 = 2080;
    v25 = v15;
    v26 = 2080;
    v27 = v17;
    a7 = v16;
    v28 = 2080;
    v29 = v18;
    v14 = "(null)";
    v30 = 1024;
    v31 = a2;
    v32 = 1024;
    v33 = a3;
    v34 = 2080;
    v35 = sub_23947F330(a3);
    _os_log_impl(&dword_238DAE000, v13, OS_LOG_TYPE_DEFAULT, "Mdns: %s name: %s, type: %s, domain: %s, flags: %d, err: %i (%s)", buf, 0x40u);
  }

  if (sub_2393D5398(2u))
  {
    if (a4)
    {
      v14 = a4;
    }

    if (!a5)
    {
      a5 = "(null)";
    }

    if (!a6)
    {
      a6 = "(null)";
    }

    v19 = sub_23947F330(a3);
    sub_2393D5320(34, 2, "Mdns: %s name: %s, type: %s, domain: %s, flags: %d, err: %i (%s)", "OnRegister", v14, a5, a6, a2, a3, v19);
  }

  if (a3)
  {
    return sub_23947AEF0(a7, a3);
  }

  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 0x40000000;
  v21[2] = sub_239481B54;
  v21[3] = &unk_278A82F00;
  v21[4] = a7;
  result = sub_23947F72C((a7 + 14), v21);
  if (result)
  {
    return sub_23947AE90(a7, result);
  }

  return result;
}

uint64_t sub_239481B54(uint64_t a1, uint64_t a2)
{
  if ((byte_27DF7BD28 & 1) == 0)
  {
    byte_27DF7BD28 = 1;
    qword_27DF7BD18 = 0;
    unk_27DF7BD20 = 0;
    qword_27DF7BD10 = 0;
  }

  result = sub_23947AD90(&qword_27DF7BD10, *(a1 + 32));
  if (!result)
  {
    v5 = *(a1 + 32);

    return sub_23947AEF0(v5, a2);
  }

  return result;
}

unint64_t sub_239481BD4(uint64_t a1, uint32_t a2, char *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  Connection = DNSServiceCreateConnection((a1 + 24));
  if (Connection)
  {
    *(a1 + 24) = 0;

    return sub_23947AEF0(a1, Connection);
  }

  else
  {
    v8 = sub_2393D9044(0x22u);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = "(null)";
      if (a3)
      {
        v9 = a3;
      }

      *buf = 136315138;
      v14 = v9;
      _os_log_impl(&dword_238DAE000, v8, OS_LOG_TYPE_DEFAULT, "Browsing for: %s on local domain", buf, 0xCu);
    }

    if (sub_2393D5398(2u))
    {
      v10 = "(null)";
      if (a3)
      {
        v10 = a3;
      }

      sub_2393D5320(34, 2, "Browsing for: %s on local domain", v10);
    }

    result = sub_239481E28(a1, a2, a3, "local.");
    if (!result)
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        if (a3)
        {
          v11 = a3;
        }

        else
        {
          v11 = "(null)";
        }

        *buf = 136315394;
        v14 = v11;
        v15 = 2080;
        v16 = "default.service.arpa.";
        _os_log_impl(&dword_238DAE000, v8, OS_LOG_TYPE_DEFAULT, "Browsing for: %s on %s domain", buf, 0x16u);
      }

      if (sub_2393D5398(2u))
      {
        if (a3)
        {
          v12 = a3;
        }

        else
        {
          v12 = "(null)";
        }

        sub_2393D5320(34, 2, "Browsing for: %s on %s domain", v12, "default.service.arpa.");
      }

      result = sub_239481E28(a1, a2, a3, "default.service.arpa.");
      if (!result)
      {
        if ((byte_27DF7BD28 & 1) == 0)
        {
          byte_27DF7BD28 = 1;
          qword_27DF7BD18 = 0;
          unk_27DF7BD20 = 0;
          qword_27DF7BD10 = 0;
        }

        return sub_23947B038(&qword_27DF7BD10, a1);
      }
    }
  }

  return result;
}

uint64_t sub_239481E28(void *context, uint32_t interfaceIndex, char *regtype, char *domain)
{
  sdRef = *(context + 3);
  v5 = DNSServiceBrowse(&sdRef, 0x4000u, interfaceIndex, regtype, domain, sub_239481EA0, context);
  if (v5)
  {
    return sub_23947AEF0(context, v5);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_239481EA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t *a8)
{
  if (a4)
  {
    return sub_23947AEF0(a8, a4);
  }

  else
  {
    return (*(*a8 + 32))(a8, a2, a5, a6, a7, a3);
  }
}

unint64_t sub_239481EE8(uint64_t a1, uint32_t a2, char *a3, const char *a4, char *a5)
{
  v36 = *MEMORY[0x277D85DE8];
  v10 = sub_2393D9044(0x22u);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    if (a3)
    {
      v11 = a3;
    }

    else
    {
      v11 = "(null)";
    }

    *buf = 136315906;
    if (a4)
    {
      v12 = a4;
    }

    else
    {
      v12 = "(null)";
    }

    v29 = v11;
    v30 = 2080;
    if (a5)
    {
      v13 = a5;
    }

    else
    {
      v13 = "(null)";
    }

    v31 = v12;
    v32 = 2080;
    v33 = v13;
    v34 = 1024;
    v35 = a2;
    _os_log_impl(&dword_238DAE000, v10, OS_LOG_TYPE_DEFAULT, "Resolve type=%s name=%s domain=%s interface=%u", buf, 0x26u);
  }

  if (sub_2393D5398(2u))
  {
    if (a3)
    {
      v14 = a3;
    }

    else
    {
      v14 = "(null)";
    }

    if (a4)
    {
      v15 = a4;
    }

    else
    {
      v15 = "(null)";
    }

    if (a5)
    {
      v16 = a5;
    }

    else
    {
      v16 = "(null)";
    }

    sub_2393D5320(34, 2, "Resolve type=%s name=%s domain=%s interface=%u", v14, v15, v16, a2);
  }

  Connection = DNSServiceCreateConnection((a1 + 24));
  if (Connection)
  {
    *(a1 + 24) = 0;
    v18 = sub_23947AEF0(a1, Connection);
LABEL_37:
    v26 = v18;
    return v18 & 0xFFFFFFFF00000000 | v26;
  }

  if (qword_27DF7BD08 != -1)
  {
    sub_23953343C(Connection);
  }

  v19 = advertising_proxy_set_service_needed();
  if (v19)
  {
    v18 = sub_23947AF50(a1, v19);
    goto LABEL_37;
  }

  *(a1 + 40) = strdup(a4);
  *(a1 + 48) = strdup(a3);
  if (a5)
  {
    v20 = (a1 + 152);
    v21 = a1;
    v22 = a2;
    v23 = a3;
    v24 = a4;
    v25 = a5;
  }

  else
  {
    v18 = sub_23948230C(a1, a2, a3, a4, "local.", (a1 + 152));
    if (v18)
    {
      goto LABEL_37;
    }

    v25 = "default.service.arpa.";
    v20 = (a1 + 152);
    v21 = a1;
    v22 = a2;
    v23 = a3;
    v24 = a4;
  }

  v18 = sub_23948230C(v21, v22, v23, v24, v25, v20);
  if (v18)
  {
    goto LABEL_37;
  }

  if ((byte_27DF7BD28 & 1) == 0)
  {
    byte_27DF7BD28 = 1;
    qword_27DF7BD18 = 0;
    unk_27DF7BD20 = 0;
    qword_27DF7BD10 = 0;
  }

  v18 = sub_23947B038(&qword_27DF7BD10, a1);
  if (v18)
  {
    goto LABEL_37;
  }

  v26 = 0;
  ++*(a1 + 120);
  return v18 & 0xFFFFFFFF00000000 | v26;
}

void sub_239482180(uint64_t a1, void *a2, int a3)
{
  v19 = *MEMORY[0x277D85DE8];
  sub_2394815F0("OnNeedEnabled", a3);
  if (!a3)
  {
    if ((byte_27DF7BD28 & 1) == 0)
    {
      byte_27DF7BD28 = 1;
      qword_27DF7BD18 = 0;
      unk_27DF7BD20 = 0;
      qword_27DF7BD10 = 0;
    }

    if (!sub_23947AD90(&qword_27DF7BD10, a2))
    {
      v5 = sub_2393D9044(0x22u);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v7 = a2[5];
        v6 = a2[6];
        if (!v6)
        {
          v6 = "(null)";
        }

        v8 = a2[4];
        if (!v7)
        {
          v7 = "(null)";
        }

        *buf = 136315906;
        v12 = "OnNeedEnabled";
        v13 = 2080;
        v14 = v6;
        v15 = 2080;
        v16 = v7;
        v17 = 2048;
        v18 = v8;
        _os_log_impl(&dword_238DAE000, v5, OS_LOG_TYPE_DEFAULT, "%s on type=%s name=%s ref=%p", buf, 0x2Au);
      }

      if (sub_2393D5398(2u))
      {
        v10 = a2[5];
        v9 = a2[6];
        if (!v9)
        {
          v9 = "(null)";
        }

        if (!v10)
        {
          v10 = "(null)";
        }

        sub_2393D5320(34, 2, "%s on type=%s name=%s ref=%p", "OnNeedEnabled", v9, v10, a2[4]);
      }

      if (a2[4])
      {
        advertising_proxy_ref_dealloc();
        a2[4] = 0;
      }
    }
  }
}

uint64_t sub_23948230C(uint64_t a1, uint32_t interfaceIndex, char *regtype, const char *a4, char *domain, void *context)
{
  sdRef = *(a1 + 24);
  v7 = DNSServiceResolve(&sdRef, 0x4000u, interfaceIndex, a4, regtype, domain, sub_239482384, context);
  if (v7)
  {
    return sub_23947AEF0(a1, v7);
  }

  else
  {
    return 0;
  }
}

void sub_239482384(uint64_t a1, int a2, int a3, int a4, const char *a5, char *a6, unsigned int a7, unsigned int a8, unsigned __int8 *a9, uint64_t a10)
{
  v50 = *MEMORY[0x277D85DE8];
  v15 = sub_2393D9044(0x22u);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    if (a5)
    {
      v16 = a5;
    }

    else
    {
      v16 = "(null)";
    }

    if (a6)
    {
      v17 = a6;
    }

    else
    {
      v17 = "(null)";
    }

    *buf = 136316930;
    *&buf[4] = "OnResolve";
    v36 = 1024;
    v37 = a2;
    v38 = 1024;
    v39 = a3;
    v40 = 2080;
    v41 = v16;
    v42 = 2080;
    v43 = v17;
    v44 = 1024;
    v45 = __rev16(a7);
    v46 = 1024;
    v47 = a4;
    v48 = 2080;
    v49 = sub_23947F330(a4);
    _os_log_impl(&dword_238DAE000, v15, OS_LOG_TYPE_DEFAULT, "Mdns: %s flags: %d, interface: %u, fullname: %s, hostname: %s, port: %u, err: %i (%s)", buf, 0x42u);
  }

  if (sub_2393D5398(2u))
  {
    if (a5)
    {
      v18 = a5;
    }

    else
    {
      v18 = "(null)";
    }

    if (a6)
    {
      v19 = a6;
    }

    else
    {
      v19 = "(null)";
    }

    v20 = sub_23947F330(a4);
    sub_2393D5320(34, 2, "Mdns: %s flags: %d, interface: %u, fullname: %s, hostname: %s, port: %u, err: %i (%s)", "OnResolve", a2, a3, v18, v19, __rev16(a7), a4, v20);
  }

  if (!a10)
  {
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_238DAE000, v15, OS_LOG_TYPE_ERROR, "ResolveContextWithType is null", buf, 2u);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(34, 1, "ResolveContextWithType is null");
    }

    return;
  }

  v21 = *a10;
  if ((byte_27DF7BD28 & 1) == 0)
  {
    byte_27DF7BD28 = 1;
    qword_27DF7BD18 = 0;
    unk_27DF7BD20 = 0;
    qword_27DF7BD10 = 0;
  }

  if (!sub_23947AD90(&qword_27DF7BD10, v21))
  {
    sub_239481814("OnResolve", a4);
    if (!a4)
    {
      sub_23947DA9C(v21, a3, a5, a6, a7, a8, a9, *(a10 + 8));
    }

    if ((a2 & 1) == 0)
    {
      if (!sub_23947E0B4(v21))
      {
        v31 = v21;
        v32 = 4294901754;
        goto LABEL_47;
      }

      v22 = *(v21 + 64);
      if (v22 != (v21 + 72))
      {
        v23 = *(v21 + 88);
        do
        {
          if ((v22[34] & 1) == 0)
          {
            v24 = (v22 + 31);
            if (*(v22 + 271) < 0)
            {
              v24 = *v24;
            }

            v25 = *(v22 + 8);
            *buf = *(v21 + 24);
            if (*(v22 + 64))
            {
              v26 = 136;
            }

            else
            {
              v26 = 152;
            }

            AddrInfo = DNSServiceGetAddrInfo(buf, 0x4000u, v25, v23, v24, sub_2394826E0, (v21 + v26));
            if (AddrInfo)
            {
              v32 = AddrInfo;
              v31 = v21;
LABEL_47:
              sub_23947AEF0(v31, v32);
              return;
            }

            *(v22 + 272) = 1;
          }

          v28 = v22[1];
          if (v28)
          {
            do
            {
              v29 = v28;
              v28 = *v28;
            }

            while (v28);
          }

          else
          {
            do
            {
              v29 = v22[2];
              v30 = *v29 == v22;
              v22 = v29;
            }

            while (!v30);
          }

          v22 = v29;
        }

        while (v29 != (v21 + 72));
      }
    }
  }
}

void sub_2394826E0(uint64_t a1, int a2, int a3, int a4, char *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v31 = *MEMORY[0x277D85DE8];
  v14 = sub_2393D9044(0x22u);
  v15 = "(null)";
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    if (a5)
    {
      v16 = a5;
    }

    else
    {
      v16 = "(null)";
    }

    *buf = 136316418;
    *__p = "OnGetAddrInfo";
    *&__p[8] = 1024;
    *&__p[10] = a2;
    v23 = 1024;
    v24 = a3;
    v25 = 2080;
    v26 = v16;
    v27 = 1024;
    v28 = a4;
    v29 = 2080;
    v30 = sub_23947F330(a4);
    _os_log_impl(&dword_238DAE000, v14, OS_LOG_TYPE_DEFAULT, "Mdns: %s flags: %d, interface: %u, hostname: %s, err: %i (%s)", buf, 0x32u);
  }

  if (sub_2393D5398(2u))
  {
    if (a5)
    {
      v15 = a5;
    }

    v17 = sub_23947F330(a4);
    sub_2393D5320(34, 2, "Mdns: %s flags: %d, interface: %u, hostname: %s, err: %i (%s)", "OnGetAddrInfo", a2, a3, v15, a4, v17);
  }

  if (a8)
  {
    v18 = *a8;
    if ((byte_27DF7BD28 & 1) == 0)
    {
      byte_27DF7BD28 = 1;
      qword_27DF7BD18 = 0;
      unk_27DF7BD20 = 0;
      qword_27DF7BD10 = 0;
    }

    if (!sub_23947AD90(&qword_27DF7BD10, v18))
    {
      sub_239481814("OnGetAddrInfo", a4);
      if (!a4)
      {
        *buf = a3;
        sub_23947C374(&__p[4], a5);
        BYTE6(v26) = *(a8 + 8);
        sub_23947D768(v18, buf, a6);
        if (SBYTE5(v26) < 0)
        {
          operator delete(*&__p[4]);
        }
      }

      if ((a2 & 1) == 0)
      {
        if (sub_23947DA38(v18))
        {
          v19 = v18;
          v20 = 0;
        }

        else
        {
          v19 = v18;
          v20 = 4294901754;
        }

        sub_23947AEF0(v19, v20);
      }
    }
  }

  else
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_238DAE000, v14, OS_LOG_TYPE_ERROR, "ResolveContextWithType is null", buf, 2u);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(34, 1, "ResolveContextWithType is null");
    }
  }
}

void sub_239482960(uint64_t a1, dispatch_once_t *a2)
{

  dispatch_once_f(a2 + 12, a2, sub_238DCC8D4);
}

void sub_239482984(char *__s@<X0>, int a2@<W1>, std::string *a3@<X8>)
{
  if (a2)
  {
    sub_23947C374(&v6, __s);
    v4 = "._tcp";
  }

  else
  {
    sub_23947C374(&v6, __s);
    v4 = "._udp";
  }

  v5 = std::string::append(&v6, v4);
  *a3 = *v5;
  v5->__r_.__value_.__r.__words[0] = 0;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v6.__r_.__value_.__l.__data_);
  }
}

void sub_239482A18(char *a1@<X0>, int a2@<W1>, char *a3@<X8>)
{
  v28[2] = *MEMORY[0x277D85DE8];
  sub_239482984(a1, a2, a3);
  sub_23947C374(v26, "._sub.");
  v4 = a3[23];
  if ((v4 & 0x80u) == 0)
  {
    v5 = a3;
  }

  else
  {
    v5 = *a3;
  }

  if ((v4 & 0x80u) != 0)
  {
    v4 = *(a3 + 1);
  }

  v6 = v27;
  if ((v27 & 0x80u) == 0)
  {
    v7 = v26;
  }

  else
  {
    v7 = v26[0];
  }

  if ((v27 & 0x80u) == 0)
  {
    v8 = v27;
  }

  else
  {
    v8 = v26[1];
  }

  if (v8)
  {
    if (v4 >= v8)
    {
      v9 = &v5[v4];
      v10 = *v7;
      v11 = v5;
      do
      {
        v12 = v4 - v8;
        if (v12 == -1)
        {
          break;
        }

        v13 = memchr(v11, v10, v12 + 1);
        if (!v13)
        {
          break;
        }

        v14 = v13;
        if (!memcmp(v13, v7, v8))
        {
          if (v14 != v9)
          {
            v15 = v14 - v5;
            if (v14 - v5 != -1)
            {
              goto LABEL_21;
            }
          }

          break;
        }

        v11 = v14 + 1;
        v4 = v9 - (v14 + 1);
      }

      while (v4 >= v8);
    }
  }

  else
  {
    v15 = 0;
LABEL_21:
    std::string::basic_string(&v24, a3, v15 + v8, 0xFFFFFFFFFFFFFFFFLL, &v25);
    v16 = std::string::append(&v24, ",");
    v17 = v16->__r_.__value_.__r.__words[2];
    *&v25.__r_.__value_.__l.__data_ = *&v16->__r_.__value_.__l.__data_;
    v25.__r_.__value_.__r.__words[2] = v17;
    v16->__r_.__value_.__l.__size_ = 0;
    v16->__r_.__value_.__r.__words[2] = 0;
    v16->__r_.__value_.__r.__words[0] = 0;
    std::string::basic_string(&__p, a3, 0, v15, v28);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __p.__r_.__value_.__l.__size_;
    }

    v20 = std::string::append(&v25, p_p, size);
    v21 = v20->__r_.__value_.__r.__words[0];
    v28[0] = v20->__r_.__value_.__l.__size_;
    *(v28 + 7) = *(&v20->__r_.__value_.__r.__words[1] + 7);
    v22 = HIBYTE(v20->__r_.__value_.__r.__words[2]);
    v20->__r_.__value_.__l.__size_ = 0;
    v20->__r_.__value_.__r.__words[2] = 0;
    v20->__r_.__value_.__r.__words[0] = 0;
    if (a3[23] < 0)
    {
      operator delete(*a3);
    }

    *a3 = v21;
    *(a3 + 1) = v28[0];
    *(a3 + 15) = *(v28 + 7);
    a3[23] = v22;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v25.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v24.__r_.__value_.__l.__data_);
    }

    v6 = v27;
  }

  if ((v6 & 0x80) != 0)
  {
    operator delete(v26[0]);
  }
}

uint64_t sub_239482C54(const char *a1, int a2, const char **a3, int a4)
{
  sub_239482E38(&v14);
  v8 = strlen(a1);
  sub_23948326C(&v14, a1, v8);
  if (a2)
  {
    v9 = "._tcp";
  }

  else
  {
    v9 = "._udp";
  }

  sub_23948326C(&v14, v9, 5);
  if (a4 >= 1)
  {
    v10 = a4 & 0x7FFFFFFF;
    do
    {
      sub_23948326C(&v14, ",", 1);
      v11 = *a3++;
      v12 = strlen(v11);
      sub_23948326C(&v14, v11, v12);
      --v10;
    }

    while (v10);
  }

  std::stringbuf::str();
  v14 = *MEMORY[0x277D82828];
  *(&v14 + *(v14 - 24)) = *(MEMORY[0x277D82828] + 24);
  v15 = MEMORY[0x277D82878] + 16;
  if (v17 < 0)
  {
    operator delete(v16[7].__locale_);
  }

  v15 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v16);
  std::ostream::~ostream();
  return MEMORY[0x23EE77B10](&v18);
}

uint64_t sub_239482E38(uint64_t a1)
{
  *(a1 + 160) = 0;
  v2 = MEMORY[0x277D828A0] + 24;
  v3 = MEMORY[0x277D828A0] + 64;
  *(a1 + 112) = MEMORY[0x277D828A0] + 64;
  v4 = a1 + 8;
  v5 = *(MEMORY[0x277D82828] + 16);
  v6 = *(MEMORY[0x277D82828] + 8);
  *a1 = v6;
  *(a1 + *(v6 - 24)) = v5;
  v7 = (a1 + *(*a1 - 24));
  std::ios_base::init(v7, (a1 + 8));
  v7[1].__vftable = 0;
  v7[1].__fmtflags_ = -1;
  *(a1 + 112) = v3;
  v8 = MEMORY[0x277D82868] + 16;
  *a1 = v2;
  *(a1 + 8) = v8;
  MEMORY[0x23EE77AD0](a1 + 16);
  *(a1 + 56) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 8) = MEMORY[0x277D82878] + 16;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 16;
  sub_239483164(v4);
  return a1;
}

__n128 sub_239482FEC@<Q0>(uint64_t *__return_ptr a1@<X8>, std::string *__s@<X0>)
{
  size = SHIBYTE(__s->__r_.__value_.__r.__words[2]);
  if (size < 0)
  {
    v5 = __s->__r_.__value_.__r.__words[0];
    size = __s->__r_.__value_.__l.__size_;
  }

  else
  {
    v5 = __s;
  }

  if (size >= 1)
  {
    v6 = v5 + size;
    v7 = v5;
    do
    {
      v8 = memchr(v7, 44, size);
      if (!v8)
      {
        break;
      }

      if (*v8 == 44)
      {
        if (v8 != v6 && v8 - v5 != -1)
        {
          std::string::erase(__s, v8 - v5, 0xFFFFFFFFFFFFFFFFLL);
        }

        break;
      }

      v7 = (v8 + 1);
      size = v6 - v7;
    }

    while (v6 - v7 >= 1);
  }

  result = *&__s->__r_.__value_.__l.__data_;
  *a1 = *&__s->__r_.__value_.__l.__data_;
  a1[2] = __s->__r_.__value_.__r.__words[2];
  __s->__r_.__value_.__l.__size_ = 0;
  __s->__r_.__value_.__r.__words[2] = 0;
  __s->__r_.__value_.__r.__words[0] = 0;
  return result;
}

std::string *sub_2394830A0@<X0>(std::string *__return_ptr a1@<X8>, char *__s@<X0>)
{
  result = sub_23947C374(a1, __s);
  v4 = SHIBYTE(a1->__r_.__value_.__r.__words[2]);
  if (v4 >= 0)
  {
    v5 = a1;
  }

  else
  {
    v5 = a1->__r_.__value_.__r.__words[0];
  }

  if (v4 >= 0)
  {
    size = SHIBYTE(a1->__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = a1->__r_.__value_.__l.__size_;
  }

  if (size >= 1)
  {
    v7 = (v5 + size);
    result = v5;
    do
    {
      result = memchr(result, 46, size);
      if (!result)
      {
        break;
      }

      if (result->__r_.__value_.__s.__data_[0] == 46)
      {
        if (result != v7 && result - v5 != -1)
        {

          return std::string::erase(a1, result - v5, 0xFFFFFFFFFFFFFFFFLL);
        }

        return result;
      }

      result = (result + 1);
      size = v7 - result;
    }

    while (v7 - result >= 1);
  }

  return result;
}

void sub_239483164(uint64_t a1)
{
  *(a1 + 88) = 0;
  v2 = (a1 + 64);
  v3 = *(a1 + 87);
  if (v3 < 0)
  {
    v4 = *(a1 + 64);
    v5 = *(a1 + 72);
  }

  else
  {
    v4 = v2;
    v5 = *(a1 + 87);
  }

  v6 = *(a1 + 96);
  if ((v6 & 8) != 0)
  {
    *(a1 + 88) = v4 + v5;
    *(a1 + 16) = v4;
    *(a1 + 24) = v4;
    *(a1 + 32) = v4 + v5;
  }

  if ((v6 & 0x10) != 0)
  {
    *(a1 + 88) = v4 + v5;
    if ((v3 & 0x80000000) != 0)
    {
      v7 = (*(a1 + 80) & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    else
    {
      v7 = 22;
    }

    std::string::resize(v2, v7, 0);
    v8 = *(a1 + 87);
    if (v8 < 0)
    {
      v8 = *(a1 + 72);
    }

    *(a1 + 40) = v4;
    *(a1 + 48) = v4;
    *(a1 + 56) = v4 + v8;
    if ((*(a1 + 96) & 3) != 0)
    {
      if (v5 >> 31)
      {
        v9 = ((v5 - 0x80000000) * 0x200000005uLL) >> 64;
        v10 = 0x7FFFFFFF * ((v9 + ((v5 - 0x80000000 - v9) >> 1)) >> 30);
        v4 = (v4 + v10 + 0x7FFFFFFF);
        v5 = v5 - v10 - 0x7FFFFFFF;
        *(a1 + 48) = v4;
      }

      if (v5)
      {
        *(a1 + 48) = v4 + v5;
      }
    }
  }
}

void *sub_23948326C(void *a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x23EE77A50](v13, a1);
  if (v13[0] == 1)
  {
    v6 = a1 + *(*a1 - 24);
    v7 = *(v6 + 5);
    v8 = a2 + a3;
    if ((*(v6 + 2) & 0xB0) == 0x20)
    {
      v9 = v8;
    }

    else
    {
      v9 = a2;
    }

    v10 = *(v6 + 36);
    if (v10 == -1)
    {
      std::ios_base::getloc((a1 + *(*a1 - 24)));
      v11 = std::locale::use_facet(&v14, MEMORY[0x277D82680]);
      v10 = (v11->__vftable[2].~facet_0)(v11, 32);
      std::locale::~locale(&v14);
      *(v6 + 36) = v10;
    }

    if (!sub_2394833B4(v7, a2, v9, v8, v6, v10))
    {
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
    }
  }

  MEMORY[0x23EE77A60](v13);
  return a1;
}

uint64_t sub_2394833B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int __c)
{
  v6 = a1;
  if (a1)
  {
    v11 = *(a5 + 24);
    if (v11 <= a4 - a2)
    {
      v12 = 0;
    }

    else
    {
      v12 = v11 - (a4 - a2);
    }

    if (a3 - a2 >= 1 && (*(*a1 + 96))(a1) != a3 - a2)
    {
      return 0;
    }

    if (v12 >= 1)
    {
      if (v12 >= 0x7FFFFFFFFFFFFFF8)
      {
        sub_238EAEDBC();
      }

      if (v12 >= 0x17)
      {
        operator new();
      }

      v18 = v12;
      memset(&__b, __c, v12);
      *(&__b + v12) = 0;
      if (v18 >= 0)
      {
        p_b = &__b;
      }

      else
      {
        p_b = __b;
      }

      v14 = (*(*v6 + 96))(v6, p_b, v12);
      if (v18 < 0)
      {
        operator delete(__b);
      }

      if (v14 != v12)
      {
        return 0;
      }
    }

    v15 = a4 - a3;
    if (v15 < 1 || (*(*v6 + 96))(v6, a3, v15) == v15)
    {
      *(a5 + 24) = 0;
    }

    else
    {
      return 0;
    }
  }

  return v6;
}

uint64_t sub_239483580(uint64_t a1)
{
  if (*a1)
  {
    **a1 = 0;
  }

  v2 = *(a1 + 8);
  if (v2)
  {
    sub_238EF79DC(v2);
  }

  return a1;
}

void sub_2394835D0(uint64_t a1, void *a2, char a3, int a4)
{
  v8 = a2;
  *(a1 + 24) = a4;
  *(a1 + 28) = a3;
  objc_storeStrong((a1 + 32), a2);
  v9 = *(a1 + 16);
  *(a1 + 16) = 0;

  operator new();
}

NSObject *sub_2394836D0(uint64_t *a1, nw_interface_type_t a2, void *a3, char a4)
{
  v7 = a3;
  v8 = nw_path_monitor_create_with_type(a2);
  v9 = v8;
  if (v8)
  {
    nw_path_monitor_set_queue(v8, a1[4]);
    v10 = *a1;
    v11 = a1[1];
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    update_handler[0] = MEMORY[0x277D85DD0];
    update_handler[1] = 3321888768;
    update_handler[2] = sub_23948384C;
    update_handler[3] = &unk_284BBB830;
    v18 = v10;
    v19 = v11;
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v17 = v7;
    v20 = a4;
    v12 = v9;
    v16 = v12;
    nw_path_monitor_set_update_handler(v12, update_handler);
    v13 = v12;

    if (v19)
    {
      sub_238EF79DC(v19);
    }

    if (v11)
    {
      sub_238EF79DC(v11);
    }
  }

  return v9;
}

void sub_239483800(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a17)
  {
    sub_238EF79DC(a17);
  }

  if (v19)
  {
    sub_238EF79DC(v19);
  }

  _Unwind_Resume(a1);
}

void sub_23948384C(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  if (**(a1 + 48) == 1)
  {
    v5 = v3;
    status = nw_path_get_status(v5);
    v7 = sub_2393D9044(1u);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      if (status > nw_path_status_satisfiable)
      {
        v8 = "Unknown";
      }

      else
      {
        v8 = off_278A82FB8[status];
      }

      *buf = 136315138;
      v11 = v8;
      _os_log_impl(&dword_238DAE000, v7, OS_LOG_TYPE_DEFAULT, "Status: %s", buf, 0xCu);
    }

    if (sub_2393D5398(2u))
    {
      if (status > nw_path_status_satisfiable)
      {
        v9 = "Unknown";
      }

      else
      {
        v9 = off_278A82FB8[status];
      }

      sub_2393D5320(1, 2, "Status: %s", v9);
    }

    if (nw_path_get_status(v5) == nw_path_status_satisfied)
    {
      (*(*(a1 + 40) + 16))();
    }

    if (*(a1 + 64) == 1)
    {
      nw_path_monitor_cancel(*(a1 + 32));
    }
  }
}

uint64_t sub_2394839EC(uint64_t result, uint64_t a2)
{
  *(result + 48) = *(a2 + 48);
  v2 = *(a2 + 56);
  *(result + 56) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_239483A10(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (v1)
  {
    sub_238EF79DC(v1);
  }
}

void sub_239483A20(uint64_t a1, nw_path_t path, uint64_t a3, uint64_t a4, char a5)
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_239483A9C;
  v5[3] = &unk_278A82F20;
  v5[4] = a1;
  v5[5] = a3;
  v5[6] = a4;
  v6 = a5;
  nw_path_enumerate_interfaces(path, v5);
}

uint64_t sub_239483A9C(uint64_t a1, void *a2)
{
  v62 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 32);
  type = nw_interface_get_type(v3);
  if (type <= nw_interface_type_loopback && type != nw_interface_type_cellular)
  {
    v7 = *(v4 + 24);
    index = nw_interface_get_index(v3);
    if (!v7 || index == v7)
    {
      v10 = *(v4 + 28);
      v12 = *(a1 + 40);
      v11 = *(a1 + 48);
      v13 = *(a1 + 56);
      v14 = v3;
      v54 = 0;
      if ((getifaddrs(&v54) & 0x80000000) == 0)
      {
        v15 = nw_interface_get_index(v14);
        v16 = v54;
        if (v54)
        {
          v17 = v15;
          v18 = v10 & 0xFFFFFFFD;
          v47 = v10 & 0xFE;
          do
          {
            ifa_addr = v16->ifa_addr;
            if (ifa_addr)
            {
              ifa_flags = v16->ifa_flags;
              v21 = (ifa_flags & 8) != 0 ? 0 : v13;
              if ((~ifa_flags & 0x8040) == 0 && (v21 & 1) == 0 && v17 == if_nametoindex(v16->ifa_name))
              {
                if (v18 == 1 && ifa_addr->sa_family == 2)
                {
                  v22 = *&ifa_addr->sa_data[2];
                  *buf = v14;
                  *&buf[8] = v22;
                  sub_239484958(v12, buf);
                }

                else if (v47 == 2 && ifa_addr->sa_family == 30)
                {
                  v57 = *&ifa_addr->sa_data[6];
                  v23 = v14;
                  v25 = v11[1];
                  v24 = v11[2];
                  if (v25 >= v24)
                  {
                    v27 = 0xAAAAAAAAAAAAAAABLL * ((v25 - *v11) >> 3);
                    v28 = v27 + 1;
                    if (v27 + 1 > 0xAAAAAAAAAAAAAAALL)
                    {
                      sub_238EAEDBC();
                    }

                    v29 = 0xAAAAAAAAAAAAAAABLL * ((v24 - *v11) >> 3);
                    if (2 * v29 > v28)
                    {
                      v28 = 2 * v29;
                    }

                    if (v29 >= 0x555555555555555)
                    {
                      v30 = 0xAAAAAAAAAAAAAAALL;
                    }

                    else
                    {
                      v30 = v28;
                    }

                    *&buf[32] = v11;
                    if (v30)
                    {
                      sub_2394803F4(v11, v30);
                    }

                    v31 = 24 * v27;
                    *buf = 0;
                    *&buf[8] = v31;
                    *&buf[24] = 0;
                    *v31 = v23;
                    *(v31 + 8) = v57;
                    *&buf[16] = 24 * v27 + 24;
                    sub_239484B80(v11, buf);
                    v26 = v11[1];
                    sub_239484C48(buf);
                  }

                  else
                  {
                    *v25 = v23;
                    *(v25 + 8) = v57;
                    v26 = v25 + 24;
                  }

                  v11[1] = v26;
                }
              }
            }

            v16 = v16->ifa_next;
          }

          while (v16);
          v32 = v54;
        }

        else
        {
          v32 = 0;
        }

        MEMORY[0x23EE78030](v32);
      }

      v33 = *(a1 + 40);
      v52 = 0;
      v53 = 0;
      v51 = 0;
      sub_2394801CC(&v51, *v33, v33[1], (v33[1] - *v33) >> 4);
      v34 = *(a1 + 48);
      v49 = 0;
      v50 = 0;
      v48 = 0;
      sub_239480338(&v48, *v34, v34[1], 0xAAAAAAAAAAAAAAABLL * ((v34[1] - *v34) >> 3));
      v46 = v14;
      v35 = nw_interface_get_index(v46);
      name = nw_interface_get_name(v46);
      v37 = nw_interface_get_type(v46);
      v38 = sub_2393D9044(1u);
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
      {
        if (v37 > nw_interface_type_loopback)
        {
          v39 = "Unknown";
        }

        else
        {
          v39 = off_278A82FD8[v37];
        }

        *buf = 136315650;
        *&buf[4] = name;
        *&buf[12] = 1024;
        *&buf[14] = v35;
        *&buf[18] = 2080;
        *&buf[20] = v39;
        _os_log_impl(&dword_238DAE000, v38, OS_LOG_TYPE_DEFAULT, "\t%s (%u / %s)", buf, 0x1Cu);
      }

      if (sub_2393D5398(2u))
      {
        if (v37 > nw_interface_type_loopback)
        {
          v40 = "Unknown";
        }

        else
        {
          v40 = off_278A82FD8[v37];
        }

        sub_2393D5320(1, 2, "\t%s (%u / %s)", name, v35, v40);
      }

      v57 = 0uLL;
      v58 = 0;
      sub_2394801CC(&v57, v51, v52, (v52 - v51) >> 4);
      v54 = 0;
      v55 = 0;
      v56 = 0;
      sub_239480338(&v54, v48, v49, 0xAAAAAAAAAAAAAAABLL * ((v49 - v48) >> 3));
      v42 = *(&v57 + 1);
      for (i = v57; i != v42; i += 2)
      {
        if (nw_interface_get_index(*i) == v35)
        {
          *buf = 0;
          *&buf[8] = 0;
          inet_ntop(2, i + 1, buf, 0x10u);
          if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
          {
            *v60 = 136315138;
            v61 = buf;
            _os_log_impl(&dword_238DAE000, v38, OS_LOG_TYPE_DEFAULT, "\t\t* ipv4: %s", v60, 0xCu);
          }

          if (sub_2393D5398(2u))
          {
            sub_2393D5320(1, 2, "\t\t* ipv4: %s", buf);
          }
        }
      }

      v43 = v54;
      v44 = v55;
      if (v54 != v55)
      {
        do
        {
          if (nw_interface_get_index(*v43) == v35)
          {
            memset(buf, 0, 46);
            inet_ntop(30, v43 + 1, buf, 0x2Eu);
            if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
            {
              *v60 = 136315138;
              v61 = buf;
              _os_log_impl(&dword_238DAE000, v38, OS_LOG_TYPE_DEFAULT, "\t\t* ipv6: %s", v60, 0xCu);
            }

            if (sub_2393D5398(2u))
            {
              sub_2393D5320(1, 2, "\t\t* ipv6: %s", buf);
            }
          }

          v43 += 3;
        }

        while (v43 != v44);
      }

      *buf = &v54;
      sub_23948044C(buf);
      *buf = &v57;
      sub_2394802C0(buf);

      *buf = &v48;
      sub_23948044C(buf);
      *buf = &v51;
      sub_2394802C0(buf);
    }
  }

  return 1;
}

uint64_t sub_239484158(uint64_t *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1[2])
  {
    v5 = 0x10C00000000;
    v6 = 3;
  }

  else
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = sub_239484294;
    v12[3] = &unk_278A82F48;
    v13 = v3;
    v7 = MEMORY[0x23EE78590](v12);
    v8 = sub_2394836D0(a1, nw_interface_type_other, v7, 0);
    v9 = a1[2];
    a1[2] = v8;

    v10 = a1[2];
    if (v10)
    {
      nw_path_monitor_start(v10);
      v5 = 0;
      v6 = 0;
    }

    else
    {
      v5 = 0x11300000000;
      v6 = 11;
    }
  }

  return v6 | v5;
}

uint64_t sub_2394842A4(uint64_t *a1, void *a2)
{
  v3 = a2;
  if (!a1[2])
  {
    v20[0] = 0;
    v20[1] = v20;
    v20[2] = 0x4812000000;
    v20[3] = sub_23948458C;
    v20[4] = sub_2394845B8;
    v20[5] = "";
    memset(v21, 0, sizeof(v21));
    v18[0] = 0;
    v18[1] = v18;
    v18[2] = 0x4812000000;
    v18[3] = sub_2394845E4;
    v18[4] = sub_239484610;
    v18[5] = "";
    memset(v19, 0, sizeof(v19));
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = sub_23948463C;
    v17[3] = &unk_278A82F70;
    v17[5] = v18;
    v17[6] = a1;
    v17[4] = v20;
    v6 = MEMORY[0x23EE78590](v17);
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = sub_239484704;
    v12[3] = &unk_278A82F98;
    v15 = v18;
    v16 = a1;
    v14 = v20;
    v13 = v3;
    v7 = MEMORY[0x23EE78590](v12);
    v8 = sub_2394836D0(a1, nw_interface_type_loopback, v6, 1);
    if (v8)
    {
      v9 = sub_2394836D0(a1, nw_interface_type_other, v7, 0);
      v10 = a1[2];
      a1[2] = v9;

      if (a1[2])
      {
        nw_path_monitor_start(v8);
        v4 = 0;
        v5 = 0;
LABEL_9:

        _Block_object_dispose(v18, 8);
        v22 = v19;
        sub_23948044C(&v22);
        _Block_object_dispose(v20, 8);
        v18[0] = v21;
        sub_2394802C0(v18);
        goto LABEL_10;
      }

      v4 = 0x13000000000;
    }

    else
    {
      v4 = 0x12D00000000;
    }

    v5 = 11;
    goto LABEL_9;
  }

  v4 = 0x11B00000000;
  v5 = 3;
LABEL_10:

  return v5 | v4;
}

void sub_239484530(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, ...)
{
  va_start(va, a23);

  _Block_object_dispose(va, 8);
  *(v27 - 104) = v26;
  sub_23948044C((v27 - 104));
  _Block_object_dispose((v27 - 176), 8);
  sub_2394802C0(va);

  _Unwind_Resume(a1);
}

void *sub_23948458C(void *result, void *a2)
{
  result[6] = 0;
  result[7] = 0;
  result[8] = 0;
  result[6] = a2[6];
  result[7] = a2[7];
  result[8] = a2[8];
  a2[6] = 0;
  a2[7] = 0;
  a2[8] = 0;
  return result;
}

void *sub_2394845E4(void *result, void *a2)
{
  result[6] = 0;
  result[7] = 0;
  result[8] = 0;
  result[6] = a2[6];
  result[7] = a2[7];
  result[8] = a2[8];
  a2[6] = 0;
  a2[7] = 0;
  a2[8] = 0;
  return result;
}

void sub_23948463C(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1[6];
  v5 = *(a1[4] + 8) + 48;
  v6 = *(a1[5] + 8) + 48;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_239483A9C;
  v7[3] = &unk_278A82F20;
  v7[4] = v4;
  v7[5] = v5;
  v7[6] = v6;
  v8 = 1;
  nw_path_enumerate_interfaces(v3, v7);
  nw_path_monitor_start(*(v4 + 16));
}

void sub_239484704(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1[7];
  v5 = *(a1[5] + 8);
  v14 = 0;
  v15 = 0;
  v13 = 0;
  sub_2394801CC(&v13, *(v5 + 48), *(v5 + 56), (*(v5 + 56) - *(v5 + 48)) >> 4);
  v6 = *(a1[6] + 8);
  v11 = 0;
  v12 = 0;
  v10 = 0;
  sub_239480338(&v10, *(v6 + 48), *(v6 + 56), 0xAAAAAAAAAAAAAAABLL * ((*(v6 + 56) - *(v6 + 48)) >> 3));
  enumerate_block[0] = MEMORY[0x277D85DD0];
  enumerate_block[1] = 3221225472;
  enumerate_block[2] = sub_239483A9C;
  enumerate_block[3] = &unk_278A82F20;
  enumerate_block[4] = v4;
  enumerate_block[5] = &v13;
  enumerate_block[6] = &v10;
  v17 = 0;
  nw_path_enumerate_interfaces(v3, enumerate_block);
  v7 = a1[4];
  memset(v9, 0, sizeof(v9));
  sub_2394801CC(v9, v13, v14, (v14 - v13) >> 4);
  memset(v8, 0, sizeof(v8));
  sub_239480338(v8, v10, v11, 0xAAAAAAAAAAAAAAABLL * ((v11 - v10) >> 3));
  (*(v7 + 16))(v7, v9, v8);
  enumerate_block[0] = v8;
  sub_23948044C(enumerate_block);
  enumerate_block[0] = v9;
  sub_2394802C0(enumerate_block);
  enumerate_block[0] = &v10;
  sub_23948044C(enumerate_block);
  enumerate_block[0] = &v13;
  sub_2394802C0(enumerate_block);
}

void sub_23948489C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, void **a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, void **a22)
{
  sub_23948044C(&a22);
  a22 = &a13;
  sub_2394802C0(&a22);
  *(v23 - 40) = &a16;
  sub_23948044C((v23 - 40));
  a16 = &a19;
  sub_2394802C0(&a16);

  _Unwind_Resume(a1);
}

void sub_239484908(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    nw_path_monitor_cancel(v2);
    v3 = *(a1 + 16);
    *(a1 + 16) = 0;
  }
}

uint64_t sub_239484958(uint64_t *a1, uint64_t *a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_2394849AC(a1, a2);
  }

  else
  {
    v4 = *a2;
    *a2 = 0;
    *v3 = v4;
    *(v3 + 8) = *(a2 + 2);
    result = v3 + 16;
  }

  a1[1] = result;
  return result;
}

uint64_t sub_2394849AC(uint64_t *a1, uint64_t *a2)
{
  v2 = (a1[1] - *a1) >> 4;
  v3 = v2 + 1;
  if ((v2 + 1) >> 60)
  {
    sub_238EAEDBC();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 3 > v3)
  {
    v3 = v6 >> 3;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFF0)
  {
    v7 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v19 = a1;
  if (v7)
  {
    sub_239480278(a1, v7);
  }

  v8 = 16 * v2;
  v16 = 0;
  v17 = 16 * v2;
  *(&v18 + 1) = 0;
  v9 = *a2;
  *a2 = 0;
  *v8 = v9;
  *(v8 + 8) = *(a2 + 2);
  *&v18 = 16 * v2 + 16;
  v10 = a1[1];
  v11 = 16 * v2 + *a1 - v10;
  sub_239484AC0(a1, *a1, v10, v11);
  v12 = *a1;
  *a1 = v11;
  v13 = a1[2];
  v15 = v18;
  *(a1 + 1) = v18;
  *&v18 = v12;
  *(&v18 + 1) = v13;
  v16 = v12;
  v17 = v12;
  sub_239484B2C(&v16);
  return v15;
}

void sub_239484AAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_239484B2C(va);
  _Unwind_Resume(a1);
}

void sub_239484AC0(uint64_t a1, void **a2, void **a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a2;
    do
    {
      v7 = *v6;
      *v6 = 0;
      *a4 = v7;
      *(a4 + 8) = *(v6 + 2);
      v6 += 2;
      a4 += 16;
    }

    while (v6 != a3);
    while (v5 != a3)
    {
      v8 = *v5;
      v5 += 2;
    }
  }
}

uint64_t sub_239484B2C(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 16;
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_239484B80(uint64_t a1, void *a2)
{
  v5 = *a1;
  v4 = *(a1 + 8);
  v6 = a2[1] + *a1 - v4;
  if (v4 != *a1)
  {
    v7 = *a1;
    v8 = a2[1] + *a1 - v4;
    do
    {
      v9 = *v7;
      *v7 = 0;
      *v8 = v9;
      *(v8 + 8) = *(v7 + 1);
      v7 += 3;
      v8 += 24;
    }

    while (v7 != v4);
    do
    {
      v10 = *v5;
      v5 += 3;
    }

    while (v5 != v4);
  }

  a2[1] = v6;
  v11 = *a1;
  *(a1 + 8) = *a1;
  *a1 = a2[1];
  a2[1] = v11;
  v12 = *(a1 + 8);
  *(a1 + 8) = a2[2];
  a2[2] = v12;
  v13 = *(a1 + 16);
  *(a1 + 16) = a2[3];
  a2[3] = v13;
  *a2 = a2[1];
}

uint64_t sub_239484C48(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 24;
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_239484CBC(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_284BBB870;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x23EE77B60);
}

void sub_239484D18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 32);
  if (!v4)
  {
    sub_23953345C();
  }

  dispatch_resume(v4);
}

void sub_239484D40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 32);
  if (!v3)
  {
    sub_23953345C();
  }

  source = *(a3 + 32);
  if (dispatch_source_testcancel(v3))
  {
    v5 = source;
  }

  else
  {
    dispatch_source_cancel(source);
    v5 = *(a3 + 32);
  }

  *(a3 + 32) = 0;
}

uint64_t sub_239484DA8(uint64_t a1)
{
  if (*(a1 + 2640))
  {
    v1 = 0x6A00000000;
    v2 = 3;
  }

  else
  {
    *(a1 + 2640) = 1;
    sub_2393D94B4();
    sub_239486194(a1 + 8);
    if (*(a1 + 2640) == 1)
    {
      v1 = 0;
      v2 = 0;
      *(a1 + 2640) = 2;
    }

    else
    {
      v1 = 0x7200000000;
      v2 = 3;
    }
  }

  return v2 | v1;
}

void sub_239484E34(uint64_t result)
{
  if (*(result + 2640) == 2)
  {
    *(result + 2640) = 3;
    v2 = sub_2393DA268((result + 2624));
    if (v2)
    {
      v3 = v2;
      do
      {
        v4 = sub_239484ED8(v3);
        sub_239484D40(v4, v5, v3);
        v3 = sub_2393DA268((result + 2624));
      }

      while (v3);
    }

    *(sub_2393DA0AC() + 1) = 0;
    sub_2393D6A10((result + 2584), result + 2568, sub_239485B14);
    sub_239486194(result + 8);
    if (*(result + 2640) == 3)
    {
      *(result + 2640) = 0;
    }
  }
}

uint64_t sub_239484ED8(uint64_t result)
{
  if (*(result + 16) == sub_2394854DC)
  {
    v1 = *(result + 24);
    if (v1)
    {

      JUMPOUT(0x23EE77B60);
    }
  }

  return result;
}

uint64_t sub_239484F4C(_BYTE *a1, void *a2)
{
  v3 = a2;
  if (a1[2640] == 2)
  {
    v4 = (*(*a1 + 160))(a1);
    if (sub_23948507C(a1, v4))
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = sub_2394850A4;
      block[3] = &unk_278A72B88;
      v9 = v3;
      dispatch_async(v4, block);
    }

    v5 = 0;
    v6 = 0;
  }

  else
  {
    v5 = 0x8E00000000;
    v6 = 3;
  }

  return v6 | v5;
}

uint64_t sub_23948507C(uint64_t a1, void *a2)
{
  v2 = a2;
  if (!v2)
  {
    sub_2395334E4();
  }

  return 1;
}

uint64_t sub_2394850C8(unint64_t *a1, unsigned int a2, uint64_t a3, uint64_t a4, int a5)
{
  v29 = *MEMORY[0x277D85DE8];
  sub_23947632C("src/platform/Darwin/system/SystemLayerImplDispatch.mm", 189);
  if (*(a1 + 2640) == 2)
  {
    if (a5)
    {
      (*(*a1 + 72))(a1, a3, a4);
    }

    v10 = (*(*off_27DF765E8 + 2))(off_27DF765E8);
    v11 = sub_239485550(a1 + 321, a1, v10 + a2, a3, a4);
    if (v11)
    {
      v12 = v11;
      v13 = (*(*a1 + 160))(a1);
      if (sub_23948507C(a1, v13))
      {
        v14 = dispatch_source_create(MEMORY[0x277D85D38], 0, 1uLL, v13);
        if (!v14)
        {
          v21 = sub_2393D9044(0x1Bu);
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315650;
            v24 = "src/platform/Darwin/system/SystemLayerImplDispatch.mm";
            v25 = 1024;
            v26 = 205;
            v27 = 2080;
            v28 = "timerSource != nullptr";
            _os_log_impl(&dword_238DAE000, v21, OS_LOG_TYPE_ERROR, "VerifyOrDie failure at %s:%d: %s", buf, 0x1Cu);
          }

          if (sub_2393D5398(1u))
          {
            sub_2393D5320(27, 1, "VerifyOrDie failure at %s:%d: %s", "src/platform/Darwin/system/SystemLayerImplDispatch.mm", 205, "timerSource != nullptr");
          }

          abort();
        }

        objc_storeStrong((v12 + 32), v14);
        v15 = dispatch_walltime(0, 1000000 * a2);
        dispatch_source_set_timer(v14, v15, 0xFFFFFFFFFFFFFFFFLL, 0x1E8480uLL);
        handler[0] = MEMORY[0x277D85DD0];
        handler[1] = 3221225472;
        handler[2] = sub_2394855C4;
        handler[3] = &unk_278A83000;
        handler[4] = a1;
        handler[5] = v12;
        dispatch_source_set_event_handler(v14, handler);
        sub_239484D18(v16, v17, v12);
      }

      sub_2393DA14C((a1 + 328), v12);

      v18 = 0;
      v19 = 0;
    }

    else
    {
      v19 = 0xC800000000;
      v18 = 11;
    }
  }

  else
  {
    v19 = 0xBF00000000;
    v18 = 3;
  }

  return v19 | v18;
}