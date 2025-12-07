unint64_t sub_2394853E4(_BYTE *a1, void *a2, unsigned int a3)
{
  v4 = a2;
  sub_23947632C("src/platform/Darwin/system/SystemLayerImplDispatch.mm", 169);
  if (a1[2640] == 2)
  {
    operator new();
  }

  return 0xAB00000003;
}

void sub_2394854DC(uint64_t a1, uint64_t a2)
{
  if (*a2)
  {
    (*(*a2 + 16))();
    v3 = *a2;
  }

  else
  {
    v3 = 0;
  }

  JUMPOUT(0x23EE77B60);
}

void *sub_239485550(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = a4;
  v11 = a3;
  v9 = a5;
  v5 = sub_239485BC0(a1, a2, &v11, &v10, &v9);
  if (v5)
  {
    v6 = sub_2393DA0AC();
    v7 = *(v6 + 1) + 1;
    *(v6 + 1) = v7;
    if (*(sub_2393DA0B8() + 1) < v7)
    {
      *(sub_2393DA0B8() + 1) = v7;
    }
  }

  return v5;
}

uint64_t sub_2394855C4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  sub_239484D40(a1, a2, *(a1 + 40));
  sub_2393DA1C4((v3 + 2624), *(a1 + 40));
  v4 = *(a1 + 40);

  return sub_239485610(v3 + 2568, v4);
}

uint64_t sub_239485610(uint64_t a1, id *a2)
{
  v4 = a2[1];
  v8 = a2[2];
  v5 = a2[3];
  v6 = sub_2393DA0AC();
  --*(v6 + 1);
  sub_239485B30(a1, a2);

  return v8(v4, v5);
}

unint64_t sub_239485688(unint64_t **a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    sub_23947632C("src/platform/Darwin/system/SystemLayerImplDispatch.mm", 233);
    if (sub_2393DA2FC(a1 + 328, a3, a4) >= a2)
    {
      v10 = 0;
      v9 = 0;
    }

    else
    {
      v8 = ((*a1)[5])(a1, a2, a3, a4);
      v9 = v8 & 0xFFFFFFFF00000000;
      v10 = v8;
    }
  }

  else
  {
    v9 = 0xE700000000;
    v10 = 47;
  }

  return v9 | v10;
}

uint64_t sub_23948574C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (sub_2393DA2FC((a1 + 2624), a2, a3))
  {
    return 1;
  }

  v7 = *(a1 + 2632);
  if (v7)
  {
    while (v7[2] != a2 || v7[3] != a3)
    {
      v7 = v7[5];
      if (!v7)
      {
        return 0;
      }
    }

    return 1;
  }

  return 0;
}

void sub_2394857C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_23947632C("src/platform/Darwin/system/SystemLayerImplDispatch.mm", 275);
  if (*(a1 + 2640) == 2)
  {
    v6 = sub_2393DA20C((a1 + 2624), a2, a3);
    if (v6 || (v6 = sub_2393DA20C((a1 + 2632), a2, a3)) != 0)
    {
      v7 = v6;
      v8 = sub_239484ED8(v6);
      sub_239484D40(v8, v9, v7);
      v10 = sub_2393DA0AC();
      --*(v10 + 1);

      sub_239485B30(a1 + 2568, v7);
    }
  }
}

void sub_23948588C(uint64_t a1)
{
  sub_2394858E4(a1);

  JUMPOUT(0x23EE77B60);
}

uint64_t sub_2394858E4(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  *a1 = &unk_284BBB8C0;
  if ((*(a1 + 2640) | 4) != 4)
  {
    v5 = sub_2393D9044(0x1Bu);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v7 = "src/platform/Darwin/system/SystemLayerImplDispatch.h";
      v8 = 1024;
      v9 = 43;
      v10 = 2080;
      v11 = "mLayerState.Destroy()";
      _os_log_impl(&dword_238DAE000, v5, OS_LOG_TYPE_ERROR, "VerifyOrDie failure at %s:%d: %s", buf, 0x1Cu);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(27, 1, "VerifyOrDie failure at %s:%d: %s", "src/platform/Darwin/system/SystemLayerImplDispatch.h", 43, "mLayerState.Destroy()");
    }

    abort();
  }

  *(a1 + 2640) = 5;

  *(a1 + 2640) = 5;
  sub_239485A9C((a1 + 2568), v2);
  for (i = 0; i != -2560; i -= 40)
  {
  }

  return a1;
}

void sub_239485A68(_Unwind_Exception *a1)
{
  *(v1 + 2640) = 5;
  sub_239485A9C((v1 + 2568), v3);
  sub_239485AC8(v1 + 8);
  _Unwind_Resume(a1);
}

void *sub_239485A9C(void *result, uint64_t a2)
{
  if ((byte_27DF7BD68 & 1) == 0)
  {
    if (*result)
    {
      sub_239533598(result);
    }
  }

  return result;
}

uint64_t sub_239485AC8(uint64_t a1)
{
  v2 = 2560;
  do
  {

    v2 -= 40;
  }

  while (v2);
  return a1;
}

void sub_239485B30(uint64_t a1, id *a2)
{
  if (a2)
  {
    v4 = sub_2393D69E8((a1 + 16), a2);
    if (!v4)
    {
      sub_23953363C();
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

void *sub_239485BC0(unint64_t *a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t *a5)
{
  v10 = sub_2393D52C4(0x30uLL);
  v11 = v10;
  if (v10)
  {
    v12 = *a4;
    v13 = *a5;
    *v10 = *a3;
    v10[1] = a2;
    v10[2] = v12;
    v10[3] = v13;
    v10[4] = 0;
    v10[5] = 0;
    v14 = sub_2393D52C4(0x18uLL);
    if (v14)
    {
      *v14 = v11;
      v14[1] = a1 + 2;
      v14[2] = 0;
      v15 = a1[4];
      v14[2] = v15;
      *(v15 + 8) = v14;
      a1[4] = v14;
      v16 = a1[1];
      v17 = *a1 + 1;
      *a1 = v17;
      if (v17 > v16)
      {
        a1[1] = v17;
      }
    }

    else
    {
      return 0;
    }
  }

  return v11;
}

uint64_t sub_239485C9C(uint64_t a1, int a2, void *a3)
{
  v3 = (a1 + 8);
  v4 = 2560;
  v5 = (a1 + 8);
  do
  {
    if (*v5 == a2)
    {
      v3 = v5;
      goto LABEL_10;
    }

    v5 += 10;
    v4 -= 40;
  }

  while (v4);
  v6 = 2560;
  while (*v3 != -1)
  {
    v3 += 10;
    v6 -= 40;
    if (!v6)
    {
      return 0x10C000000C1;
    }
  }

  *v3 = a2;
LABEL_10:
  result = 0;
  *a3 = v3;
  return result;
}

uint64_t sub_239485D10(_DWORD *a1, int a2, void *a3)
{
  v3 = 2560;
  v4 = a1;
  do
  {
    if (*v4 == a2)
    {
      a1 = v4;
      goto LABEL_10;
    }

    v4 += 10;
    v3 -= 40;
  }

  while (v3);
  v5 = 2560;
  while (*a1 != -1)
  {
    a1 += 10;
    v5 -= 40;
    if (!v5)
    {
      return 0x10C000000C1;
    }
  }

  *a1 = a2;
LABEL_10:
  v6 = 0;
  *a3 = a1;
  return v6;
}

uint64_t sub_239485D84(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  if (!*a2)
  {
    v7 = 0x11100000000;
LABEL_6:
    v6 = 47;
    return v7 | v6;
  }

  if (*v3 == -1)
  {
    v7 = 0x11200000000;
    goto LABEL_6;
  }

  sub_23948611C(v3);
  v5 = (*(*a1 + 144))(a1);
  v6 = 0;
  v7 = 0;
  *a2 = v5;
  return v7 | v6;
}

uint64_t sub_239485E20(uint64_t a1, _DWORD *a2)
{
  if (!a2)
  {
    v2 = 0x11100000000;
LABEL_6:
    v3 = 47;
    return v3 | v2;
  }

  if (*a2 == -1)
  {
    v2 = 0x11200000000;
    goto LABEL_6;
  }

  sub_23948611C(a2);
  v2 = 0;
  v3 = 0;
  return v3 | v2;
}

uint64_t sub_239485E7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v4 = 0;
    v5 = 0;
    *(a2 + 8) = a3;
    *(a2 + 16) = a4;
  }

  else
  {
    v4 = 0x4500000000;
    v5 = 47;
  }

  return v5 | v4;
}

uint64_t sub_239485EB0(uint64_t a1, int *a2, int a3)
{
  if (a2)
  {
    v3 = a3;
    *(a2 + 4) |= a3;
    if (a3 == 1)
    {
      v5 = 6;
    }

    else
    {
      v5 = 8;
    }

    if (a3 == 1)
    {
      v6 = MEMORY[0x277D85D28];
    }

    else
    {
      v6 = MEMORY[0x277D85D50];
    }

    if (*&a2[v5])
    {
      v7 = 0;
      v8 = 0;
    }

    else
    {
      v9 = (*(*a1 + 160))(a1);
      if (!v9)
      {
        sub_2395336DC();
      }

      v10 = v9;
      v11 = dispatch_source_create(v6, *a2, 0, v9);
      v12 = *&a2[v5];
      *&a2[v5] = v11;

      v13 = *&a2[v5];
      if (v13)
      {
        v15[0] = MEMORY[0x277D85DD0];
        v15[1] = 3221225472;
        v15[2] = sub_239486030;
        v15[3] = &unk_278A83020;
        v15[4] = a2;
        v16 = v3;
        dispatch_source_set_event_handler(v13, v15);
        dispatch_activate(*&a2[v5]);
        v7 = 0;
        v8 = 0;
      }

      else
      {
        v7 = 0x6400000000;
        v8 = 11;
      }
    }
  }

  else
  {
    v7 = 0x4F00000000;
    v8 = 47;
  }

  return v8 | v7;
}

uint64_t sub_239486030(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = *(a1 + 40);
  if ((result & *(v1 + 4)) != 0)
  {
    v3 = *(v1 + 8);
    if (v3)
    {
      return v3();
    }
  }

  return result;
}

uint64_t sub_239486058(uint64_t a1, uint64_t a2, char a3)
{
  if (a2)
  {
    v3 = 0;
    v4 = 0;
    *(a2 + 4) &= ~a3;
  }

  else
  {
    v3 = 0x7600000000;
    v4 = 47;
  }

  return v4 | v3;
}

uint64_t sub_2394860A4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = 0;
    v3 = 0;
    *(a2 + 4) &= ~1u;
  }

  else
  {
    v2 = 0x7600000000;
    v3 = 47;
  }

  return v3 | v2;
}

uint64_t sub_2394860E0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = 0;
    v3 = 0;
    *(a2 + 4) &= ~2u;
  }

  else
  {
    v2 = 0x7600000000;
    v3 = 47;
  }

  return v3 | v2;
}

void sub_23948611C(uint64_t a1)
{
  *a1 = -1;
  *(a1 + 4) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v2 = *(a1 + 24);
  if (v2)
  {
    dispatch_source_cancel(v2);
    v3 = *(a1 + 24);
    *(a1 + 24) = 0;
  }

  v4 = *(a1 + 32);
  if (v4)
  {
    dispatch_source_cancel(v4);
    v5 = *(a1 + 32);
    *(a1 + 32) = 0;
  }
}

void sub_239486194(uint64_t a1)
{
  v2 = 2560;
  do
  {
    sub_23948611C(a1);
    a1 += 40;
    v2 -= 40;
  }

  while (v2);
}

void sub_239486230(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v36 = *MEMORY[0x277D85DE8];
  sub_23947632C("src/platform/Darwin/BleConnectionDelegateImpl.mm", 120);
  v10 = [MEMORY[0x277CBEB18] arrayWithCapacity:*(a4 + 8)];
  v11 = *(a4 + 8);
  if (v11)
  {
    v12 = *a4;
    v13 = 4 * v11;
    do
    {
      v14 = MEMORY[0x277CCACA8];
      if (v12[2] == 1)
      {
        [MEMORY[0x277CCACA8] stringWithFormat:@"%d (short, 0x%x)", *v12, *v12];
      }

      else
      {
        v16 = sub_2392E10A8(v12, v9);
        [v14 stringWithFormat:@"%d (long, 0x%03x)", v16, sub_2392E10A8(v12, v17)];
      }
      v15 = ;
      [v10 addObject:v15];

      v12 += 4;
      v13 -= 4;
    }

    while (v13);
  }

  v18 = sub_2393D9044(2u);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = [v10 componentsJoinedByString:{@", "}];
    *buf = 136315138;
    v35 = [v19 UTF8String];
    _os_log_impl(&dword_238DAE000, v18, OS_LOG_TYPE_DEFAULT, "ConnectionDelegate NewConnection with discriminator list: [ %s ]", buf, 0xCu);
  }

  if (sub_2393D5398(2u))
  {
    v20 = [v10 componentsJoinedByString:{@", "}];
    v21 = v20;
    sub_2393D5320(2, 2, "ConnectionDelegate NewConnection with discriminator list: [ %s ]", [v20 UTF8String]);
  }

  v22 = qword_27DF7C078;
  if (qword_27DF7C078 && (v23 = [qword_27DF7C078 isConnecting], v22 = qword_27DF7C078, (v23 & 1) == 0))
  {
    [qword_27DF7C078 setBleLayer:a2];
    [qword_27DF7C078 setAppState:a3];
    [qword_27DF7C078 setOnConnectionComplete:a5];
    [qword_27DF7C078 setOnConnectionCompleteWithDiscriminator:a6];
    [qword_27DF7C078 setOnConnectionError:a7];
    [qword_27DF7C078 updateWithDiscriminators:a4];
  }

  else
  {
    [v22 stop];
    v24 = [[MTRBleConnection alloc] initWithDiscriminators:a4];
    v25 = qword_27DF7C078;
    qword_27DF7C078 = v24;

    [qword_27DF7C078 setBleLayer:a2];
    [qword_27DF7C078 setAppState:a3];
    [qword_27DF7C078 setOnConnectionComplete:a5];
    [qword_27DF7C078 setOnConnectionCompleteWithDiscriminator:a6];
    [qword_27DF7C078 setOnConnectionError:a7];
    v26 = [qword_27DF7C078 centralManager];
    v27 = qword_27DF7C078;
    v28 = [qword_27DF7C078 workQueue];
    v29 = [v26 initWithDelegate:v27 queue:v28];
    [qword_27DF7C078 setCentralManager:v29];
  }
}

void sub_2394865E0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v14 = *MEMORY[0x277D85DE8];
  sub_23947632C("src/platform/Darwin/BleConnectionDelegateImpl.mm", 160);
  v8 = sub_2393D9044(2u);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v13 = a4;
    _os_log_impl(&dword_238DAE000, v8, OS_LOG_TYPE_DEFAULT, "ConnectionDelegate NewConnection with conn obj: %p", buf, 0xCu);
  }

  if (sub_2393D5398(2u))
  {
    sub_2393D5320(2, 2, "ConnectionDelegate NewConnection with conn obj: %p", a4);
  }

  v9 = a4;
  v10 = qword_27DF7C078;
  if (qword_27DF7C078 && (v10 = [qword_27DF7C078 isConnecting], !v10))
  {
    [qword_27DF7C078 setBleLayer:a2];
    [qword_27DF7C078 setAppState:a3];
    [qword_27DF7C078 setOnConnectionComplete:*(a1 + 8)];
    [qword_27DF7C078 setOnConnectionError:*(a1 + 16)];
    [qword_27DF7C078 updateWithPeripheral:v9];
  }

  else if (*(a1 + 16))
  {
    if (qword_27DF7BD08 != -1)
    {
      sub_23953343C(v10);
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_2394867C0;
    block[3] = &unk_278A83000;
    block[4] = a1;
    block[5] = a3;
    dispatch_async(qword_27DF7BCD0, block);
  }
}

void sub_2394867DC(uint64_t a1, uint64_t a2, int a3)
{
  v20 = *MEMORY[0x277D85DE8];
  sub_23947632C("src/platform/Darwin/BleConnectionDelegateImpl.mm", 186);
  v5 = sub_2393D9044(2u);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = "default";
    if (a3 == 1)
    {
      v6 = "pre-warm";
    }

    *buf = 136315138;
    v19 = v6;
    _os_log_impl(&dword_238DAE000, v5, OS_LOG_TYPE_DEFAULT, "ConnectionDelegate StartScan (%s)", buf, 0xCu);
  }

  if (sub_2393D5398(2u))
  {
    v7 = "default";
    if (a3 == 1)
    {
      v7 = "pre-warm";
    }

    sub_2393D5320(2, 2, "ConnectionDelegate StartScan (%s)", v7);
  }

  v8 = qword_27DF7C078;
  if (a3 == 1 && qword_27DF7C078)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_238DAE000, v5, OS_LOG_TYPE_DEFAULT, "Not starting pre-warm scan, an operation is already in progress", buf, 2u);
    }

    v9 = sub_2393D5398(2u);
    if (v9)
    {
      sub_2393D5320(2, 2, "Not starting pre-warm scan, an operation is already in progress");
    }

    if (a2)
    {
      if (qword_27DF7BD08 != -1)
      {
        sub_23953343C(v9);
      }

      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = sub_239486A98;
      block[3] = &unk_278A73E78;
      block[4] = a2;
      dispatch_async(qword_27DF7BCD0, block);
    }
  }

  else if (qword_27DF7C078 && (v10 = [qword_27DF7C078 isConnecting], v8 = qword_27DF7C078, (v10 & 1) == 0))
  {
    [qword_27DF7C078 updateWithDelegate:a2 prewarm:a3 == 1];
  }

  else
  {
    [v8 stop];
    v11 = [[MTRBleConnection alloc] initWithDelegate:a2 prewarm:a3 == 1];
    v12 = qword_27DF7C078;
    qword_27DF7C078 = v11;

    v13 = [qword_27DF7C078 centralManager];
    v14 = qword_27DF7C078;
    v15 = [qword_27DF7C078 workQueue];
    v16 = [v13 initWithDelegate:v14 queue:v15];
    [qword_27DF7C078 setCentralManager:v16];
  }
}

void sub_239486AC0()
{
  sub_23947632C("src/platform/Darwin/BleConnectionDelegateImpl.mm", 222);
  v0 = sub_2393D9044(2u);
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&dword_238DAE000, v0, OS_LOG_TYPE_DEFAULT, "ConnectionDelegate StopScan", v2, 2u);
  }

  if (sub_2393D5398(2u))
  {
    sub_2393D5320(2, 2, "ConnectionDelegate StopScan");
  }

  if (qword_27DF7C078)
  {
    if (([qword_27DF7C078 isConnecting] & 1) == 0)
    {
      [qword_27DF7C078 stop];
      v1 = qword_27DF7C078;
      qword_27DF7C078 = 0;
    }
  }
}

uint64_t sub_239486B7C()
{
  sub_23947632C("src/platform/Darwin/BleConnectionDelegateImpl.mm", 232);
  v0 = sub_2393D9044(2u);
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_238DAE000, v0, OS_LOG_TYPE_DEFAULT, "ConnectionDelegate CancelConnection", v3, 2u);
  }

  if (sub_2393D5398(2u))
  {
    sub_2393D5320(2, 2, "ConnectionDelegate CancelConnection");
  }

  if (qword_27DF7C078 && [qword_27DF7C078 isConnecting])
  {
    [qword_27DF7C078 stop];
    v1 = qword_27DF7C078;
    qword_27DF7C078 = 0;
  }

  return 0;
}

uint64_t sub_239486F3C(uint64_t a1)
{
  v2 = sub_2393D9044(2u);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_238DAE000, v2, OS_LOG_TYPE_DEFAULT, "ConnectionDelegate timeout", v4, 2u);
  }

  if (sub_2393D5398(2u))
  {
    sub_2393D5320(2, 2, "ConnectionDelegate timeout");
  }

  [*(a1 + 32) stop];
  return [*(a1 + 32) dispatchConnectionError:{0x1360000040DLL, "src/platform/Darwin/BleConnectionDelegateImpl.mm"}];
}

void sub_2394888EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, _WORD *a10)
{
  if (a10)
  {
    sub_2393D96C8(a10);
  }

  _Unwind_Resume(a1);
}

void sub_239488BC0(_Unwind_Exception *a1)
{
  v3 = v1;

  _Unwind_Resume(a1);
}

uint64_t sub_239489998(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 24) + 1;
  *(v2 + 24) = v3;
  v5 = 2;
  v6 = "dwnpm_ble_peripheral_removed";
  v7 = v3;
  v8 = 1;
  sub_23948BD20(&v5);
  return [*(a1 + 32) removePeripheralFromCache:*(a1 + 40)];
}

void *sub_239489EBC(void *result, uint64_t a2, uint64_t a3)
{
  *result = a2;
  result[1] = a3;
  if (!a2)
  {
    if (a3)
    {
      sub_23952FAA8();
    }
  }

  return result;
}

uint64_t *sub_239489EDC(uint64_t *a1, void *a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    sub_239489F44(a1, (v2 - *a2) >> 2);
  }

  return a1;
}

void sub_239489F44(uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    sub_239489F80(a1, a2);
  }

  sub_238EAEDBC();
}

void sub_239489F80(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    operator new();
  }

  sub_238EAEDBC();
}

uint64_t *sub_239489FC8(uint64_t *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 2)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (!(a4 >> 62))
    {
      v9 = v7 >> 1;
      if (v7 >> 1 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v10 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      sub_239489F44(v6, v10);
    }

    sub_238EAEDBC();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 2)
  {
    v16 = a3 - __src;
    if (a3 != __src)
    {
      result = memmove(*result, __src, v16 - 1);
    }

    v15 = &v8[v16];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12 - 1);
      v11 = v6[1];
    }

    v14 = (a3 - v13);
    if (a3 != v13)
    {
      result = memmove(v11, v13, (v14 - 1));
    }

    v15 = &v14[v11];
  }

  v6[1] = v15;
  return result;
}

uint64_t *sub_23948A0F8(uint64_t *a1, int *a2, int *a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a3 != a2)
  {
    sub_239489F44(a1, a3 - a2);
  }

  return a1;
}

uint64_t sub_23948A160(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = a2;
  v7 = sub_23948A210(v6, a3, a4);
  if (v7)
  {
    [v6 setNotifyValue:1 forCharacteristic:v7];
    v8 = 0;
    v9 = 0;
  }

  else
  {
    v8 = 0x4300000000;
    v9 = 1029;
  }

  return v9 | v8;
}

id sub_23948A210(void *a1, uint64_t a2, uint64_t a3)
{
  v33 = *MEMORY[0x277D85DE8];
  v22 = a1;
  v5 = 0;
  if (a2 && a3)
  {
    v6 = sub_23948A818(a2);
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v7 = [v22 services];
    v8 = [v7 countByEnumeratingWithState:&v27 objects:v32 count:16];
    if (v8)
    {
      v9 = *v28;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v28 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v11 = *(*(&v27 + 1) + 8 * i);
          v12 = [v11 UUID];
          v13 = [v12 isEqual:v6];

          if (v13)
          {
            v14 = sub_23948A818(a3);
            v25 = 0u;
            v26 = 0u;
            v23 = 0u;
            v24 = 0u;
            v15 = [v11 characteristics];
            v5 = [v15 countByEnumeratingWithState:&v23 objects:v31 count:16];
            if (v5)
            {
              v16 = *v24;
              while (2)
              {
                for (j = 0; j != v5; j = j + 1)
                {
                  if (*v24 != v16)
                  {
                    objc_enumerationMutation(v15);
                  }

                  v18 = *(*(&v23 + 1) + 8 * j);
                  v19 = [v18 UUID];
                  v20 = [v19 isEqual:v14];

                  if (v20)
                  {
                    v5 = v18;
                    goto LABEL_22;
                  }
                }

                v5 = [v15 countByEnumeratingWithState:&v23 objects:v31 count:16];
                if (v5)
                {
                  continue;
                }

                break;
              }
            }

LABEL_22:

            goto LABEL_23;
          }
        }

        v8 = [v7 countByEnumeratingWithState:&v27 objects:v32 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    v5 = 0;
LABEL_23:
  }

  return v5;
}

uint64_t sub_23948A4CC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = a2;
  v7 = sub_23948A210(v6, a3, a4);
  if (v7)
  {
    [v6 setNotifyValue:0 forCharacteristic:v7];
    v8 = 0;
    v9 = 0;
  }

  else
  {
    v8 = 0x4D00000000;
    v9 = 1030;
  }

  return v9 | v8;
}

uint64_t sub_23948A57C(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 valueForKey:@"manager"];
  v4 = v3;
  if (v3)
  {
    [v3 cancelPeripheralConnection:v2];
  }

  return 0;
}

uint64_t sub_23948A5F8(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = [v2 valueForKey:@"mtuLength"];
  v4 = [v3 unsignedShortValue];

  v5 = sub_2393D9044(2u);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v8 = v4;
    _os_log_impl(&dword_238DAE000, v5, OS_LOG_TYPE_DEFAULT, "ATT MTU = %u", buf, 8u);
  }

  if (sub_2393D5398(2u))
  {
    sub_2393D5320(2, 2, "ATT MTU = %u", v4);
  }

  return v4;
}

uint64_t sub_23948A728(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = a2;
  v9 = sub_23948A210(v8, a3, a4);
  if (v9 && *a5)
  {
    v10 = [MEMORY[0x277CBEA90] dataWithBytes:*(*a5 + 8) length:*(*a5 + 24)];
    [v8 writeValue:v10 forCharacteristic:v9 type:0];

    v11 = 0;
    v12 = 0;
  }

  else
  {
    v11 = 0x7700000000;
    v12 = 1031;
  }

  return v12 | v11;
}

void sub_23948A7EC(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

id sub_23948A818(uint64_t a1)
{
  v1 = MEMORY[0x277CBE0A0];
  v2 = [MEMORY[0x277CBEA90] dataWithBytes:a1 length:16];
  v3 = [v1 UUIDWithData:v2];

  return v3;
}

unint64_t sub_23948A894(void *a1)
{
  v1 = [a1 data];
  v2 = [v1 length];
  switch(v2)
  {
    case 2:
      v3 = (*[v1 bytes] << 16) | 0x10000000000000;
      break;
    case 4:
      v3 = *[v1 bytes] | 0x10000000000000;
      break;
    case 16:
      v3 = *[v1 bytes];
      break;
    default:
      v4 = [MEMORY[0x277CCA890] currentHandler];
      v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ChipBleUUID chip::DeviceLayer::Internal::BleUUIDFromCBUUD(CBUUID *__strong)"];
      [v4 handleFailureInFunction:v5 file:@"BleUtils.mm" lineNumber:58 description:{@"Invalid CBUUID.data: %@", v1}];

      v3 = 0;
      break;
  }

  return v3;
}

uint64_t *sub_23948A9E8()
{
  if ((byte_27DF7C098 & 1) == 0)
  {
    byte_27DF7C098 = 1;
    qword_27DF7C088 = 0;
    unk_27DF7C090 = 0;
    qword_27DF7C080 = &unk_284BBBB20;
  }

  return &qword_27DF7C080;
}

uint64_t sub_23948AA30()
{
  v0 = sub_2393D9044(0x1Fu);
  if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
  {
    *v2 = 0;
    _os_log_impl(&dword_238DAE000, v0, OS_LOG_TYPE_INFO, "Initializing Darwin NFC Commissioning Manager", v2, 2u);
  }

  if (sub_2393D5398(3u))
  {
    sub_2393D5320(31, 3, "Initializing Darwin NFC Commissioning Manager");
  }

  return 0;
}

uint64_t sub_23948AABC(uint64_t a1)
{
  v2 = sub_2393D9044(0x1Fu);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_238DAE000, v2, OS_LOG_TYPE_INFO, "Shutting down Darwin NFC Commissioning Manager and clearing reader transport", v4, 2u);
  }

  if (sub_2393D5398(3u))
  {
    sub_2393D5320(31, 3, "Shutting down Darwin NFC Commissioning Manager and clearing reader transport");
  }

  result = *(a1 + 16);
  *(a1 + 16) = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t sub_23948AB74(uint64_t a1, uint64_t a2)
{
  v4 = sub_2393D9044(0x1Fu);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&dword_238DAE000, v4, OS_LOG_TYPE_INFO, "Setting Darwin NFC Commissioning Reader Transport", v6, 2u);
  }

  if (sub_2393D5398(3u))
  {
    sub_2393D5320(31, 3, "Setting Darwin NFC Commissioning Reader Transport");
  }

  result = *(a1 + 16);
  *(a1 + 16) = a2;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void sub_23948AC38(uint64_t a1, uint64_t a2)
{
  v8 = *MEMORY[0x277D85DE8];
  *(a1 + 8) = a2;
  v3 = sub_2393D9044(0x1Fu);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    if (a2)
    {
      v4 = "Setting";
    }

    else
    {
      v4 = "Clearing";
    }

    *buf = 136315138;
    v7 = v4;
    _os_log_impl(&dword_238DAE000, v3, OS_LOG_TYPE_INFO, "%s NFCBase for Darwin NFCCommissioningManagerImpl", buf, 0xCu);
  }

  if (sub_2393D5398(3u))
  {
    if (a2)
    {
      v5 = "Setting";
    }

    else
    {
      v5 = "Clearing";
    }

    sub_2393D5320(31, 3, "%s NFCBase for Darwin NFCCommissioningManagerImpl", v5);
  }
}

uint64_t sub_23948AD28(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 16);
  if (v3)
  {
    *buf = *(a2 + 24);
    return (*(*v3 + 40))(v3, buf);
  }

  else
  {
    v5 = sub_2393D9044(0x1Fu);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a2 + 24);
      *buf = 67109120;
      v8 = v6;
      _os_log_impl(&dword_238DAE000, v5, OS_LOG_TYPE_ERROR, "Cannot send to NFC tag %u since reader transport is not valid", buf, 8u);
    }

    result = sub_2393D5398(1u);
    if (result)
    {
      sub_2393D5320(31, 1, "Cannot send to NFC tag %u since reader transport is not valid", *(a2 + 24));
      return 0;
    }
  }

  return result;
}

unint64_t sub_23948AE34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v15 = *MEMORY[0x277D85DE8];
  if (*(a1 + 16))
  {
    v5 = *(a2 + 24);
    v6 = sub_2393D9044(0x1Fu);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(*a3 + 24);
      *buf = 134218240;
      v12 = v7;
      v13 = 1024;
      v14 = v5;
      _os_log_impl(&dword_238DAE000, v6, OS_LOG_TYPE_DEFAULT, "Sending message of length %lu bytes to NFC tag %u", buf, 0x12u);
    }

    if (sub_2393D5398(2u))
    {
      sub_2393D5320(31, 2, "Sending message of length %lu bytes to NFC tag %u", *(*a3 + 24), v5);
    }

    operator new();
  }

  v8 = sub_2393D9044(0x1Fu);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v9 = *(a2 + 24);
    *buf = 67109120;
    LODWORD(v12) = v9;
    _os_log_impl(&dword_238DAE000, v8, OS_LOG_TYPE_ERROR, "Unable to send message to NFC tag %u since transport is not valid", buf, 8u);
  }

  if (sub_2393D5398(1u))
  {
    sub_2393D5320(31, 1, "Unable to send message to NFC tag %u since transport is not valid", *(a2 + 24));
  }

  return 0x6800000003;
}

uint64_t sub_23948B0E4(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void sub_23948B138(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  JUMPOUT(0x23EE77B60);
}

__n128 sub_23948B228(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BBBBB0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_23948B260(uint64_t a1, uint64_t a2, int *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = *a3;
  v6 = *(a1 + 16);
  v7 = sub_2393D9044(0x1Fu);
  v8 = v7;
  if (v5)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = *(a1 + 8);
      *buf = 67109376;
      v13 = v9;
      v14 = 1024;
      LODWORD(v15) = v5;
      _os_log_impl(&dword_238DAE000, v8, OS_LOG_TYPE_ERROR, "Received failure response sending message to NFC tag %u, error: %u", buf, 0xEu);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(31, 1, "Received failure response sending message to NFC tag %u, error: %u", *(a1 + 8), v5);
    }

    sub_2394C36AC();
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 8);
      v11 = *(*a2 + 24);
      *buf = 67109376;
      v13 = v10;
      v14 = 2048;
      v15 = v11;
      _os_log_impl(&dword_238DAE000, v8, OS_LOG_TYPE_DEFAULT, "Successfully sent message to NFC tag %u, received response buffer of length %lu bytes", buf, 0x12u);
    }

    if (sub_2393D5398(2u))
    {
      sub_2393D5320(31, 2, "Successfully sent message to NFC tag %u, received response buffer of length %lu bytes", *(a1 + 8), *(*a2 + 24));
    }

    sub_2394C35E0(*(v6 + 8), *(a1 + 24), a2);
  }
}

uint64_t sub_23948B400(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BBBC20))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23948B44C(uint64_t a1)
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

id sub_23948B4CC(uint64_t a1)
{
  if (qword_27DF796C0 != -1)
  {
    sub_239533860();
  }

  v2 = qword_27DF796C8;

  return v2;
}

void sub_23948B510()
{
  v0 = os_log_create("com.csa.matter.signposts", "com.csa.matter.sdk");
  v1 = qword_27DF796C8;
  qword_27DF796C8 = v0;
}

void *sub_23948B554(void *result)
{
  result[1] = 0;
  result[2] = 0;
  *result = &unk_284BBBC60;
  result[3] = 0;
  return result;
}

void sub_23948B57C(uint64_t a1, uint64_t a2)
{
  v3 = MEMORY[0x23EE78590](a2);
  v4 = *(a1 + 24);
  *(a1 + 24) = v3;
}

uint64_t sub_23948B5BC(uint64_t a1, __int128 *a2)
{
  result = *(a1 + 24);
  if (result)
  {
    v4 = *(a2 + 2);
    v3 = *a2;
    return (*(result + 16))(result, &v3);
  }

  return result;
}

void sub_23948B638(uint64_t a1)
{
  sub_238EA9350((a1 + 8));

  JUMPOUT(0x23EE77B60);
}

uint64_t sub_23948B790(void *a1)
{
  result = sub_23947632C("src/tracing/registry.cpp", 33);
  if (a1[1])
  {
    v3 = a1[2] == 0;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    (*(*a1 + 16))(a1);

    return sub_23948BD9C(&off_27DF774D8, a1 + 1);
  }

  return result;
}

void **sub_23948B824(void *a1)
{
  sub_23947632C("src/tracing/registry.cpp", 43);
  result = (a1 + 1);
  if (a1[1])
  {
    v4 = a1[2] == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    sub_23948BDE8(result, v2);
    v5 = *(*a1 + 24);

    return v5(a1);
  }

  return result;
}

uint64_t sub_23948B8AC(uint64_t result, uint64_t a2)
{
  v2 = off_27DF774E0;
  if (off_27DF774E0 != &off_27DF774D8)
  {
    v4 = result;
    do
    {
      if (v2)
      {
        v5 = v2 - 1;
      }

      else
      {
        v5 = 0;
      }

      result = (*(*v5 + 4))(v5, v4, a2);
      v2 = v2[1];
    }

    while (v2 != &off_27DF774D8);
  }

  return result;
}

uint64_t sub_23948B930(uint64_t result, uint64_t a2)
{
  v2 = off_27DF774E0;
  if (off_27DF774E0 != &off_27DF774D8)
  {
    v4 = result;
    do
    {
      if (v2)
      {
        v5 = v2 - 1;
      }

      else
      {
        v5 = 0;
      }

      result = (*(*v5 + 5))(v5, v4, a2);
      v2 = v2[1];
    }

    while (v2 != &off_27DF774D8);
  }

  return result;
}

uint64_t sub_23948B9B4(uint64_t result, uint64_t a2)
{
  v2 = off_27DF774E0;
  if (off_27DF774E0 != &off_27DF774D8)
  {
    v4 = result;
    do
    {
      if (v2)
      {
        v5 = v2 - 1;
      }

      else
      {
        v5 = 0;
      }

      result = (*(*v5 + 6))(v5, v4, a2);
      v2 = v2[1];
    }

    while (v2 != &off_27DF774D8);
  }

  return result;
}

uint64_t sub_23948BA38(uint64_t result)
{
  v1 = off_27DF774E0;
  if (off_27DF774E0 != &off_27DF774D8)
  {
    v2 = result;
    do
    {
      if (v1)
      {
        v3 = v1 - 1;
      }

      else
      {
        v3 = 0;
      }

      result = (*(*v3 + 7))(v3, v2);
      v1 = v1[1];
    }

    while (v1 != &off_27DF774D8);
  }

  return result;
}

uint64_t sub_23948BAB4(uint64_t result)
{
  v1 = off_27DF774E0;
  if (off_27DF774E0 != &off_27DF774D8)
  {
    v2 = result;
    do
    {
      if (v1)
      {
        v3 = v1 - 1;
      }

      else
      {
        v3 = 0;
      }

      result = (*(*v3 + 8))(v3, v2);
      v1 = v1[1];
    }

    while (v1 != &off_27DF774D8);
  }

  return result;
}

uint64_t sub_23948BB30(uint64_t result)
{
  v1 = off_27DF774E0;
  if (off_27DF774E0 != &off_27DF774D8)
  {
    v2 = result;
    do
    {
      if (v1)
      {
        v3 = v1 - 1;
      }

      else
      {
        v3 = 0;
      }

      result = (*(*v3 + 9))(v3, v2);
      v1 = v1[1];
    }

    while (v1 != &off_27DF774D8);
  }

  return result;
}

uint64_t sub_23948BBAC(uint64_t result)
{
  v1 = off_27DF774E0;
  if (off_27DF774E0 != &off_27DF774D8)
  {
    v2 = result;
    do
    {
      if (v1)
      {
        v3 = v1 - 1;
      }

      else
      {
        v3 = 0;
      }

      result = (*(*v3 + 10))(v3, v2);
      v1 = v1[1];
    }

    while (v1 != &off_27DF774D8);
  }

  return result;
}

uint64_t sub_23948BC28(uint64_t result)
{
  v1 = off_27DF774E0;
  if (off_27DF774E0 != &off_27DF774D8)
  {
    v2 = result;
    do
    {
      if (v1)
      {
        v3 = v1 - 1;
      }

      else
      {
        v3 = 0;
      }

      result = (*(*v3 + 11))(v3, v2);
      v1 = v1[1];
    }

    while (v1 != &off_27DF774D8);
  }

  return result;
}

uint64_t sub_23948BCA4(uint64_t result)
{
  v1 = off_27DF774E0;
  if (off_27DF774E0 != &off_27DF774D8)
  {
    v2 = result;
    do
    {
      if (v1)
      {
        v3 = v1 - 1;
      }

      else
      {
        v3 = 0;
      }

      result = (*(*v3 + 12))(v3, v2);
      v1 = v1[1];
    }

    while (v1 != &off_27DF774D8);
  }

  return result;
}

uint64_t sub_23948BD20(uint64_t result)
{
  v1 = off_27DF774E0;
  if (off_27DF774E0 != &off_27DF774D8)
  {
    v2 = result;
    do
    {
      if (v1)
      {
        v3 = v1 - 1;
      }

      else
      {
        v3 = 0;
      }

      result = (*(*v3 + 13))(v3, v2);
      v1 = v1[1];
    }

    while (v1 != &off_27DF774D8);
  }

  return result;
}

void *sub_23948BD9C(void *result, void *a2)
{
  if (!*result || !result[1])
  {
    sub_2395339E4();
  }

  if (*a2 && a2[1])
  {
    sub_239533934();
  }

  *a2 = *result;
  a2[1] = result;
  *(*result + 8) = a2;
  *result = a2;
  return result;
}

void **sub_23948BDE8(void **result, uint64_t a2)
{
  if (!*result || (v2 = result[1]) == 0)
  {
    sub_239533A94();
  }

  (*result)[1] = v2;
  *result[1] = *result;
  *result = 0;
  result[1] = 0;
  return result;
}

uint64_t sub_23948BE1C(char *a1, size_t a2, void *a3)
{
  if (a2 < 0x22)
  {
    v3 = 0x2100000000;
    v4 = 25;
  }

  else
  {
    snprintf(a1, a2, "%08X%08X-%08X%08X", HIDWORD(a3[1]), a3[1], HIDWORD(*a3), *a3);
    v3 = 0;
    v4 = 0;
  }

  return v4 | v3;
}

uint64_t sub_23948BE88(uint64_t a1, void *a2)
{
  v7[1] = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    v4 = 0x2E00000000;
LABEL_13:
    v5 = 47;
    return v5 | v4;
  }

  if (!a2)
  {
    v4 = 0x2F00000000;
    goto LABEL_13;
  }

  if (strnlen(a1, 0x21uLL) < 0x21)
  {
    v4 = 0x3A00000000;
    goto LABEL_13;
  }

  if (*(a1 + 33) != 46 && *(a1 + 33))
  {
    v4 = 0x3D00000000;
    goto LABEL_19;
  }

  if (*(a1 + 16) != 45)
  {
    v4 = 0x4000000000;
LABEL_19:
    v5 = 92;
    return v5 | v4;
  }

  if (!sub_2393D6044(a1, 0x10uLL, v7, 8))
  {
    v4 = 0x4500000000;
    goto LABEL_19;
  }

  a2[1] = bswap64(v7[0]);
  if (!sub_2393D6044(a1 + 17, 0x10uLL, v7, 8))
  {
    v4 = 0x4B00000000;
    goto LABEL_19;
  }

  v4 = 0;
  v5 = 0;
  *a2 = bswap64(v7[0]);
  return v5 | v4;
}

uint64_t sub_23948BFBC(uint64_t a1, unint64_t a2, void *a3)
{
  v3 = a3[1];
  if (a2 <= 2 * v3)
  {
    v3 = 0x5500000000;
    v8 = 25;
  }

  else if (v3)
  {
    v6 = 0;
    v7 = 0;
    do
    {
      v7 += snprintf((a1 + v7), 3uLL, "%02X", *(*a3 + v6++));
    }

    while (v6 < a3[1]);
    v3 = 0;
    v8 = 0;
  }

  else
  {
    v8 = 0;
  }

  return v8 | v3;
}

unint64_t sub_23948C07C(char *__str, size_t __size, unsigned __int8 *a3)
{
  v6 = 0;
  v7 = *a3;
  if (v7 <= 3)
  {
    if (*a3 > 1u)
    {
      if (v7 == 2)
      {
        if (*(a3 + 1) <= 0xFFFuLL)
        {
          v6 = snprintf(__str, __size, "_L%u");
          goto LABEL_30;
        }

        v10 = 0x7000000000;
      }

      else
      {
        if (v7 != 3)
        {
          goto LABEL_30;
        }

        if (!(*(a3 + 1) >> 16))
        {
          v6 = snprintf(__str, __size, "_V%u");
          goto LABEL_30;
        }

        v10 = 0x7700000000;
      }
    }

    else
    {
      if (!*a3)
      {
        v6 = 0;
        *__str = 0;
        goto LABEL_30;
      }

      if (*(a3 + 1) <= 0xFuLL)
      {
        v6 = snprintf(__str, __size, "_S%u");
        goto LABEL_30;
      }

      v10 = 0x6800000000;
    }

    goto LABEL_25;
  }

  if (*a3 <= 5u)
  {
    if (v7 == 4)
    {
      v6 = snprintf(__str, __size, "_T%u");
    }

    else if (v7 == 5)
    {
      v6 = snprintf(__str, __size, "_CM");
    }

    goto LABEL_30;
  }

  switch(v7)
  {
    case 6u:
      v6 = snprintf(__str, __size, "%s");
      break;
    case 7u:
      if (*(a3 + 1) <= 1uLL)
      {
        v6 = snprintf(__str, __size, "_D%u");
        break;
      }

      v10 = 0x8400000000;
LABEL_25:
      v11 = 47;
      return v11 | v10;
    case 8u:
      v8 = snprintf(__str, __size, "_I");
      v9 = sub_2393D5F58(*(a3 + 1), &__str[v8], __size - v8, 3u);
      v10 = v9 & 0xFFFFFFFF00000000;
      v11 = v9;
      return v11 | v10;
  }

LABEL_30:
  v10 = 0x9500000000;
  v11 = 11;
  if (__size - 1 >= v6)
  {
    v10 = 0;
    v11 = 0;
  }

  return v11 | v10;
}

unint64_t sub_23948C274(char *__str, size_t __size, __int128 *a3, int a4)
{
  v5 = __size;
  v6 = __str;
  if (*a3)
  {
    v17 = *a3;
    v18 = *(a3 + 2);
    v7 = sub_23948C07C(__str, __size, &v17);
    if (v7)
    {
      v8 = v7 & 0xFFFFFFFF00000000;
      return v8 | v7;
    }

    v10 = strlen(v6);
    switch(a4)
    {
      case 1:
        __size = v5 - v10;
        v11 = "_matter";
        goto LABEL_18;
      case 3:
        __size = v5 - v10;
        v11 = "_matterd";
        goto LABEL_18;
      case 2:
        __size = v5 - v10;
        v11 = "_matterc";
LABEL_18:
        v15 = "_sub";
        v16 = v11;
        v9 = ".%s.%s";
        __str = &v6[v10];
        goto LABEL_19;
    }

    v8 = 0xC300000000;
LABEL_26:
    LODWORD(v7) = 45;
    return v8 | v7;
  }

  switch(a4)
  {
    case 1:
      v9 = "_matter";
      break;
    case 3:
      v9 = "_matterd";
      break;
    case 2:
      v9 = "_matterc";
      break;
    default:
      v8 = 0xAB00000000;
      goto LABEL_26;
  }

LABEL_19:
  v12 = snprintf(__str, __size, v9, v15, v16);
  v13 = v5 - 1 >= v12;
  v8 = 0xC700000000;
  if (v5 - 1 < v12)
  {
    LODWORD(v7) = 11;
  }

  else
  {
    LODWORD(v7) = 0;
  }

  if (v13)
  {
    v8 = 0;
  }

  return v8 | v7;
}

uint64_t sub_23948C3DC(uint64_t *a1, void *a2)
{
  v4 = *a2;
  a2[1] = *a2;
  v5 = *(a1 + 23);
  if ((v5 & 0x8000000000000000) != 0)
  {
    v5 = a1[1];
  }

  v6 = 0;
  v7 = 30;
  while (1)
  {
    if (!v5)
    {
      v25 = 0;
      v7 = 0;
      return v7 | v25;
    }

    if (v5 <= 4)
    {
      break;
    }

    v8 = 5;
    v9 = 3;
LABEL_11:
    v10 = 0;
    v11 = -v8;
    v12 = v8 + v6 - 1;
    do
    {
      v13 = a1;
      if (*(a1 + 23) < 0)
      {
        v13 = *a1;
      }

      v14 = *(v13 + v12);
      if ((v14 - 91) < 0xFFFFFFD2)
      {
        v25 = 0x5300000000;
LABEL_36:
        v7 = 143;
        return v7 | v25;
      }

      v15 = v14 - 45;
      if ((0xFE004uLL >> v15))
      {
        v25 = 0x5800000000;
        goto LABEL_36;
      }

      v10 = byte_2395D66F8[v15] + 38 * v10;
      --v12;
    }

    while (!__CFADD__(v11++, 1));
    v27 = v8 + v6;
    v28 = v5 - v8;
    do
    {
      v17 = v10;
      v18 = a2[2];
      if (v4 >= v18)
      {
        v19 = *a2;
        v20 = &v4[-*a2];
        v21 = (v20 + 1);
        if ((v20 + 1) < 0)
        {
          sub_238EAEDBC();
        }

        v22 = v18 - v19;
        if (2 * v22 > v21)
        {
          v21 = 2 * v22;
        }

        if (v22 >= 0x3FFFFFFFFFFFFFFFLL)
        {
          v23 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v23 = v21;
        }

        if (v23)
        {
          operator new();
        }

        v24 = &v4[-*a2];
        *v20 = v17;
        v4 = v20 + 1;
        memcpy(0, v19, v24);
        *a2 = 0;
        a2[1] = v20 + 1;
        a2[2] = 0;
        if (v19)
        {
          operator delete(v19);
        }
      }

      else
      {
        *v4++ = v17;
      }

      a2[1] = v4;
      v10 = v17 >> 8;
      --v9;
    }

    while (v9);
    v6 = v27;
    v5 = v28;
    v7 = 30;
    if (v17 >= 0x100)
    {
      v25 = 0x9B00000000;
      v7 = 47;
      return v7 | v25;
    }
  }

  if (v5 == 4)
  {
    v8 = 4;
    v9 = 2;
    goto LABEL_11;
  }

  if (v5 == 2)
  {
    v8 = 2;
    v9 = 1;
    goto LABEL_11;
  }

  v25 = 0x7E00000000;
  return v7 | v25;
}

uint64_t sub_23948C610(unsigned __int8 *a1, unint64_t a2, void *a3)
{
  if (a2)
  {
    v3 = a2;
    a2 = 0;
    while (1)
    {
      v4 = 0;
      v5 = 0;
      v6 = v3 >= 3 ? 3 : v3;
      v7 = a1;
      v8 = v6;
      do
      {
        v9 = *v7++;
        v5 += v9 << v4;
        v4 += 8;
        --v8;
      }

      while (v8);
      v10 = byte_2395D6726[v6 - 1];
      if (a2 + v10 >= a3[1])
      {
        break;
      }

      v11 = 0;
      v3 -= v6;
      a1 += v6;
      do
      {
        *(*a3 + a2++) = a0123456789abcd_6[v5 % 0x26];
        ++v11;
        v5 /= 0x26u;
      }

      while (v11 < v10);
      if (!v3)
      {
        goto LABEL_12;
      }
    }

    v12 = 0x4600000019;
  }

  else
  {
LABEL_12:
    v12 = 0;
  }

  if (a2 >= a3[1])
  {
    return 0x5A00000019;
  }

  *(*a3 + a2) = 0;
  sub_2393F6D60(a3, a2);
  return v12;
}

unint64_t sub_23948C750(uint64_t a1, const char **a2)
{
  if (*(a1 + 20) & 1) != 0 || (sub_23948FB5C(a1))
  {
    if (*(a1 + 6) && (*(a1 + 21) & 1) == 0)
    {
      if (a2[1] >= 0x16)
      {
        v4 = 1;
LABEL_19:
        v7 = 25;
        if (*(a1 + 12))
        {
          v9 = *(a1 + 10);
        }

        else
        {
          v9 = HIBYTE(*(a1 + 10));
        }

        v10 = (v9 >> 2) & 3 | (4 * (*(a1 + 6) != 0));
        v11 = *(a1 + 16);
        v12 = sub_23948CB34(a2, 0, 2uLL);
        if (snprintf(v12, v13, "%0*u", v13 - 1, v10) >= v13)
        {
          v14 = 0x5D00000019;
        }

        else
        {
          v14 = 0;
        }

        if (v14)
        {
          v6 = v14 & 0x7F00000000;
          return v6 | v7;
        }

        v15 = sub_23948CB34(a2, 1uLL, 6uLL);
        if (snprintf(v15, v16, "%0*u", v16 - 1, v11 & 0x3FFF | ((v9 & 3) << 14)) >= v16)
        {
          v17 = 0x5D00000019;
        }

        else
        {
          v17 = 0;
        }

        if ((v17 & 0x19) != 0 || ((v18 = sub_23948CB34(a2, 6uLL, 5uLL), snprintf(v18, v19, "%0*u", v19 - 1, (v11 >> 14) & 0x1FFF) >= v19) ? (v17 = 0x5D00000019) : (v17 = 0), (v17 & 0x19) != 0))
        {
          v6 = v17 & 0x5D00000000;
          return v6 | v7;
        }

        if (v4)
        {
          v21 = sub_23948CB34(a2, 0xAuLL, 6uLL);
          if (snprintf(v21, v22, "%0*u", v22 - 1, *(a1 + 2)) >= v22)
          {
            v23 = 0x5D00000019;
          }

          else
          {
            v23 = 0;
          }

          if ((v23 & 0x19) != 0)
          {
LABEL_49:
            v6 = v23 & 0x5D00000000;
            return v6 | v7;
          }

          v24 = sub_23948CB34(a2, 0xFuLL, 6uLL);
          v26 = sub_23948CADC(v24, v25, *(a1 + 4));
          if (v26)
          {
            v6 = v26 & 0xFFFFFFFF00000000;
            v7 = v26;
            return v6 | v7;
          }

          v27 = 20;
        }

        else
        {
          v27 = 10;
        }

        v28 = sub_2393D8DDC(*a2);
        v29 = sub_2393D8EDC(v28);
        v30 = sub_23948CB34(a2, v27, 2uLL);
        if (snprintf(v30, v31, "%0*u", v31 - 1, v29) >= v31)
        {
          v23 = 0x5D00000019;
        }

        else
        {
          v23 = 0;
        }

        if ((v23 & 0x19) == 0)
        {
          sub_2393F6D60(a2, v27 | 1);
          v7 = 0;
          v6 = 0;
          return v6 | v7;
        }

        goto LABEL_49;
      }
    }

    else if (a2[1] > 0xB)
    {
      v4 = 0;
      goto LABEL_19;
    }

    v8 = sub_2393D9044(0x20u);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *v32 = 0;
      _os_log_impl(&dword_238DAE000, v8, OS_LOG_TYPE_ERROR, "Failed encoding payload to buffer", v32, 2u);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(32, 1, "Failed encoding payload to buffer");
    }

    v6 = 0x7B00000000;
    v7 = 25;
  }

  else
  {
    v5 = sub_2393D9044(0x20u);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_238DAE000, v5, OS_LOG_TYPE_ERROR, "Failed encoding invalid payload", buf, 2u);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(32, 1, "Failed encoding invalid payload");
    }

    v6 = 0x7100000000;
    v7 = 47;
  }

  return v6 | v7;
}

uint64_t sub_23948CADC(char *a1, size_t a2, int a3)
{
  if (snprintf(a1, a2, "%0*u", a2 - 1, a3) >= a2)
  {
    return 0x5D00000019;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23948CB34(void *a1, unint64_t a2, unint64_t a3)
{
  v3 = a1[1];
  v4 = v3 >= a2;
  v5 = v3 - a2;
  if (!v4)
  {
    sub_239532434();
  }

  if (v5 < a3)
  {
    sub_239532394();
  }

  sub_23948CC1C(&v7, *a1 + a2, a3);
  return v7;
}

unint64_t sub_23948CB80(uint64_t a1, uint64_t a2)
{
  v8[2] = *MEMORY[0x277D85DE8];
  v7 = 0;
  v8[0] = 0;
  *(v8 + 6) = 0;
  v6[0] = &v7;
  v6[1] = 22;
  v3 = sub_23948C750(a1, v6);
  if (v3)
  {
    v4 = v3 & 0xFFFFFFFF00000000;
  }

  else
  {
    MEMORY[0x23EE77A00](a2, &v7);
    LODWORD(v3) = 0;
    v4 = 0;
  }

  return v4 | v3;
}

void *sub_23948CC1C(void *result, uint64_t a2, uint64_t a3)
{
  *result = a2;
  result[1] = a3;
  if (!a2)
  {
    if (a3)
    {
      sub_2395319FC();
    }
  }

  return result;
}

uint64_t sub_23948CC3C(std::string *__str, std::string *a2)
{
  v3 = __str;
  v15 = *MEMORY[0x277D85DE8];
  size = SHIBYTE(__str->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    if (__str->__r_.__value_.__l.__size_ >= 2)
    {
      size = __str->__r_.__value_.__l.__size_;
LABEL_15:
      std::string::basic_string(&buf, __str, 0, size - 1, &v13);
      v9 = SHIBYTE(v3->__r_.__value_.__r.__words[2]);
      if ((v9 & 0x8000000000000000) != 0)
      {
        v10 = v3;
        v3 = v3->__r_.__value_.__r.__words[0];
        v9 = v10->__r_.__value_.__l.__size_;
      }

      if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_buf = &buf;
      }

      else
      {
        p_buf = buf.__r_.__value_.__r.__words[0];
      }

      if (sub_2393D8F04(v3->__r_.__value_.__s.__data_[v9 - 1], p_buf))
      {
        std::string::operator=(a2, &buf);
        v7 = 0;
        v8 = 0;
      }

      else
      {
        v7 = 0x2E00000000;
        v8 = 19;
      }

      if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(buf.__r_.__value_.__l.__data_);
      }

      return v8 | v7;
    }
  }

  else if (size > 1)
  {
    goto LABEL_15;
  }

  v5 = sub_2393D9044(0x20u);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    if ((size & 0x80000000) != 0)
    {
      size = v3->__r_.__value_.__l.__size_;
    }

    LODWORD(buf.__r_.__value_.__l.__data_) = 67109120;
    HIDWORD(buf.__r_.__value_.__r.__words[0]) = size;
    _os_log_impl(&dword_238DAE000, v5, OS_LOG_TYPE_ERROR, "Failed decoding base10. Input was empty. %u", &buf, 8u);
  }

  if (sub_2393D5398(1u))
  {
    v6 = SHIBYTE(v3->__r_.__value_.__r.__words[2]);
    if ((v6 & 0x8000000000000000) != 0)
    {
      v6 = v3->__r_.__value_.__l.__size_;
    }

    sub_2393D5320(32, 1, "Failed decoding base10. Input was empty. %u", v6);
  }

  v7 = 0x2700000000;
  v8 = 30;
  return v8 | v7;
}

uint64_t sub_23948CDE4(uint64_t a1, int a2)
{
  v14 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v2 = 20;
  }

  else
  {
    v2 = 10;
  }

  if (*(a1 + 23) >= 0)
  {
    v3 = *(a1 + 23);
  }

  else
  {
    v3 = *(a1 + 8);
  }

  if (v3 == v2)
  {
    v4 = 0;
    v5 = 0;
  }

  else
  {
    v7 = sub_2393D9044(0x20u);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109376;
      v11 = v3;
      v12 = 1024;
      v13 = v2;
      _os_log_impl(&dword_238DAE000, v7, OS_LOG_TYPE_ERROR, "Failed decoding base10. Input length %u was not expected length %u", buf, 0xEu);
    }

    if (sub_2393D5398(1u))
    {
      LODWORD(v8) = *(a1 + 23);
      if ((v8 & 0x80u) != 0)
      {
        v8 = *(a1 + 8);
      }

      sub_2393D5320(32, 1, "Failed decoding base10. Input length %u was not expected length %u", v8, v2);
    }

    v4 = 0x3B00000000;
    v5 = 30;
  }

  return v5 | v4;
}

uint64_t sub_23948CF20(char *a1, _DWORD *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = a1[23];
  v3 = v2 < 0;
  if (v2 >= 0)
  {
    v4 = a1;
  }

  else
  {
    v4 = *a1;
  }

  if (v3)
  {
    v5 = *(a1 + 1);
  }

  else
  {
    v5 = a1[23];
  }

  if (v5)
  {
    v6 = 0;
    while (1)
    {
      v7 = *v4;
      if ((v7 & 0x80000000) != 0 || (*(MEMORY[0x277D85DE0] + 4 * v7 + 60) & 0x400) == 0)
      {
        break;
      }

      v6 = v7 + 10 * v6 - 48;
      ++v4;
      if (!--v5)
      {
        goto LABEL_19;
      }
    }

    v8 = sub_2393D9044(0x20u);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v13 = v7;
      _os_log_impl(&dword_238DAE000, v8, OS_LOG_TYPE_ERROR, "Failed decoding base10. Character was invalid %c", buf, 8u);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(32, 1, "Failed decoding base10. Character was invalid %c", v7);
    }

    v9 = 0x4800000000;
    v10 = 143;
  }

  else
  {
    v6 = 0;
LABEL_19:
    v9 = 0;
    v10 = 0;
    *a2 = v6;
  }

  return v10 | v9;
}

unint64_t sub_23948D068(std::string *__str, std::string::size_type *a2, _DWORD *a3, std::string::size_type __n)
{
  v20 = *MEMORY[0x277D85DE8];
  v8 = SHIBYTE(__str->__r_.__value_.__r.__words[2]);
  if ((v8 & 0x8000000000000000) != 0)
  {
    size = __str->__r_.__value_.__l.__size_;
    if (size < __n)
    {
LABEL_6:
      v10 = sub_2393D9044(0x20u);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = __str->__r_.__value_.__l.__size_;
        if ((v8 & 0x80000000) == 0)
        {
          LODWORD(v11) = v8;
        }

        LODWORD(buf.__r_.__value_.__l.__data_) = 67109120;
        HIDWORD(buf.__r_.__value_.__r.__words[0]) = v11;
        _os_log_impl(&dword_238DAE000, v10, OS_LOG_TYPE_ERROR, "Failed decoding base10. Input was too short. %u", &buf, 8u);
      }

      if (sub_2393D5398(1u))
      {
        LODWORD(v12) = HIBYTE(__str->__r_.__value_.__r.__words[2]);
        if ((v12 & 0x80u) != 0)
        {
          v12 = __str->__r_.__value_.__l.__size_;
        }

        sub_2393D5320(32, 1, "Failed decoding base10. Input was too short. %u", v12);
      }

      v13 = 0x5900000000;
      v14 = 30;
      return v14 | v13;
    }
  }

  else
  {
    size = SHIBYTE(__str->__r_.__value_.__r.__words[2]);
    if (v8 < __n)
    {
      goto LABEL_6;
    }
  }

  if (*a2 + __n > size)
  {
    goto LABEL_6;
  }

  std::string::basic_string(&buf, __str, *a2, __n, &v18);
  *a2 += __n;
  v15 = sub_23948CF20(&buf, a3);
  v16 = v15;
  v13 = v15 & 0xFFFFFFFF00000000;
  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(buf.__r_.__value_.__l.__data_);
  }

  v14 = v16;
  return v14 | v13;
}

unint64_t sub_23948D204(uint64_t a1, uint64_t a2)
{
  v18 = 0;
  v21 = 0;
  v22 = 0;
  v23 = 0;
  v19 = 0;
  v20 = 0;
  v24 = v25;
  v25[0] = 0;
  v27[0] = 0;
  v27[1] = 0;
  v25[1] = 0;
  v26 = v27;
  memset(&__str, 0, sizeof(__str));
  if (*(a1 + 23) < 0)
  {
    sub_238DCEA9C(&__p, *a1, *(a1 + 8));
  }

  else
  {
    __p = *a1;
  }

  v3 = sub_23948CC3C(&__p, &__str);
  v4 = v3;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if (v4)
    {
      goto LABEL_11;
    }
  }

  else if (v3)
  {
    goto LABEL_11;
  }

  v14 = 0;
  v15 = 0;
  v13 = 0;
  v4 = sub_23948D068(&__str, &v15, &v14 + 1, 1uLL);
  if (v4)
  {
    goto LABEL_11;
  }

  v4 = sub_23948D068(&__str, &v15, &v14, 5uLL);
  if (v4)
  {
    goto LABEL_11;
  }

  v4 = sub_23948D068(&__str, &v15, &v13, 4uLL);
  if (v4)
  {
    goto LABEL_11;
  }

  v7 = BYTE4(v14);
  if ((HIDWORD(v14) & 0xFFFFFFFE) == 8)
  {
    v5 = 0x8500000000;
LABEL_17:
    LODWORD(v4) = 47;
    goto LABEL_12;
  }

  v4 = sub_23948CDE4(&__str, (HIDWORD(v14) >> 2) & 1);
  if (v4)
  {
    goto LABEL_11;
  }

  v8 = v14;
  v9 = v14 & 0x3FFF | ((v13 & 0x1FFF) << 14);
  if (!v9)
  {
    v10 = sub_2393D9044(0x20u);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_238DAE000, v10, OS_LOG_TYPE_ERROR, "Failed decoding base10. SetUpPINCode was 0.", buf, 2u);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(32, 1, "Failed decoding base10. SetUpPINCode was 0.");
    }

    v5 = 0x9F00000000;
    goto LABEL_17;
  }

  if ((v7 & 4) == 0)
  {
    goto LABEL_26;
  }

  *buf = 0;
  v4 = sub_23948D068(&__str, &v15, buf, 5uLL);
  if (v4 || (v11 = 0, v4 = sub_23948D068(&__str, &v15, &v11, 5uLL), v4))
  {
LABEL_11:
    v5 = v4 & 0xFFFFFFFF00000000;
    goto LABEL_12;
  }

  if (*&buf[2])
  {
    v5 = 0xB700000000;
  }

  else
  {
    *(a2 + 2) = *buf;
    if (!HIWORD(v11))
    {
      *(a2 + 4) = v11;
LABEL_26:
      v5 = v4;
      *(a2 + 6) = (v7 & 4) >> 1;
      *(a2 + 16) = v9;
      sub_2392E10CC(a2 + 10, (4 * (v7 & 3)) | (v8 >> 14));
      LODWORD(v4) = 0;
      goto LABEL_12;
    }

    v5 = 0xBC00000000;
  }

  LODWORD(v4) = 143;
LABEL_12:
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  sub_238EF5F20(&v26, v27[0]);
  sub_238EF5F20(&v24, v25[0]);
  return v5 | v4;
}

unint64_t sub_23948D4E8(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 4);
  if (v3 == 2)
  {
    return sub_2393C827C(a1, a2, *(a3 + 32));
  }

  if (v3 != 1)
  {
    return 0x5B0000002FLL;
  }

  v6 = *(a3 + 8);
  v4 = (a3 + 8);
  v5 = v6;
  if (v4[23] < 0)
  {
    v4 = v5;
  }

  return sub_2393C847C(a1, a2, v4);
}

unint64_t sub_23948D544(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 4);
  result = 0x770000002FLL;
  if (v4 > 3)
  {
    if (v4 == 4)
    {
      v6 = *(a3 + 48);
    }

    else
    {
      if (v4 != 5)
      {
        return result;
      }

      v6 = *(a3 + 56);
    }

    return sub_2393C8154(a1, a2, v6);
  }

  else if ((v4 - 1) >= 2)
  {
    if (v4 == 3)
    {
      return sub_2393C8284(a1, a2, *(a3 + 40));
    }
  }

  else
  {
    return sub_23948D4E8(a1, a2, a3);
  }

  return result;
}

unint64_t sub_23948D5DC(uint64_t a1, unint64_t a2, uint64_t a3, unsigned int a4, void *a5)
{
  sub_23948FDCC(a2, &v37);
  sub_239490480(a2, &v35);
  if (v37 == v38 && v35 == v36)
  {
    v10 = 0;
    v11 = 0;
    goto LABEL_6;
  }

  sub_2393C7B90(v33);
  sub_2393C7BB8(v33, a3, a4);
  sub_2393C7B90(v32);
  v9 = sub_2393C8AA4(v33, 0x100uLL, 21, v32);
  if (!v9)
  {
    v13 = v38;
    if (v37 == v38)
    {
LABEL_16:
      v19 = v36;
      if (v35 == v36)
      {
LABEL_25:
        v9 = sub_2393C8BE8(v33, v32);
        if (!v9)
        {
          v9 = sub_2393C7CB8(v33);
          if (!v9)
          {
            v10 = 0;
            LODWORD(v9) = 0;
            *a5 = v34;
            goto LABEL_5;
          }
        }
      }

      else
      {
        v20 = (v35 + 8);
        while (1)
        {
          v22 = v20 - 8;
          v21 = *(v20 - 1);
          v26 = v21;
          if (*(v20 + 23) < 0)
          {
            sub_238DCEA9C(&__p, *v20, *(v20 + 1));
            v23 = v26;
          }

          else
          {
            v23 = v21;
            v24 = *v20;
            v28 = *(v20 + 2);
            __p = v24;
          }

          v29 = *(v20 + 6);
          v25 = v20[2];
          v31 = *(v20 + 6);
          v30 = v25;
          v9 = sub_23948D544(v32, v23, &v26);
          if (SHIBYTE(v28) < 0)
          {
            operator delete(__p);
          }

          if (v9)
          {
            break;
          }

          v20 += 4;
          if (v22 + 64 == v19)
          {
            goto LABEL_25;
          }
        }
      }
    }

    else
    {
      v14 = (v37 + 8);
      while (1)
      {
        v16 = v14 - 8;
        v15 = *(v14 - 1);
        v26 = v15;
        if (*(v14 + 23) < 0)
        {
          sub_238DCEA9C(&__p, *v14, *(v14 + 1));
          v17 = v26;
        }

        else
        {
          v17 = v15;
          v18 = *v14;
          v28 = *(v14 + 2);
          __p = v18;
        }

        v29 = *(v14 + 6);
        v9 = sub_23948D4E8(v32, v17, &v26);
        if (SHIBYTE(v28) < 0)
        {
          operator delete(__p);
        }

        if (v9)
        {
          break;
        }

        v14 = (v14 + 40);
        if (v16 + 40 == v13)
        {
          goto LABEL_16;
        }
      }
    }
  }

  v10 = v9 & 0xFFFFFFFF00000000;
LABEL_5:
  v11 = v9;
LABEL_6:
  v33[0] = &v35;
  sub_23948DFAC(v33);
  v33[0] = &v37;
  sub_2392E32D4(v33);
  return v11 | v10;
}

unint64_t sub_23948D858(unsigned __int8 *a1, uint64_t a2, unsigned __int8 *a3, unsigned int a4)
{
  v7 = a1;
  v16 = 0;
  if ((a1[72] & 1) != 0 || (a1 = sub_23948FA64(a1, 0), a1))
  {
    v8 = sub_23948D5DC(a1, v7, a3, a4, &v16);
    if (v8)
    {
      v9 = HIDWORD(v8);
    }

    else
    {
      if (v16 != -11)
      {
        if (((v16 + 11) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        sub_238EAEDBC();
      }

      sub_238DB9BD8(v15, 0, 0);
      v10 = sub_23948C734(0);
      if (v10 != -3)
      {
        if (((v10 + 3) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        sub_238EAEDBC();
      }

      sub_23948CC1C(v14, 0, 0);
      v11 = sub_23948DB88(v7, v14, v15[0], v15[1], a3, -11);
      v12 = v11;
      if (v11)
      {
        v9 = HIDWORD(v11);
      }

      else
      {
        MEMORY[0x23EE77A00](a2, v14[0]);
        v9 = 0;
      }

      LODWORD(v8) = v12;
    }
  }

  else
  {
    v9 = 275;
    LODWORD(v8) = 47;
  }

  return v8 | (v9 << 32);
}

unint64_t sub_23948DA14(unsigned __int8 *a1, uint64_t a2)
{
  sub_23948FDCC(a1, &v19);
  v4 = v19;
  if (v19 == v20)
  {
    v5 = 0;
  }

  else
  {
    v5 = 0;
    do
    {
      if (*(v4 + 4) == 1)
      {
        v6 = *(v4 + 31);
        if ((v6 & 0x80u) != 0)
        {
          v6 = *(v4 + 16);
        }

        v7 = v6 + 10;
      }

      else
      {
        v7 = 10;
      }

      v5 += v7;
      v4 += 40;
    }

    while (v4 != v20);
  }

  sub_239490480(a1, v18);
  for (i = v18[0]; i != v18[1]; i += 8)
  {
    if (*(i + 1) == 1)
    {
      v9 = *(i + 31);
      if (v9 < 0)
      {
        v9 = i[2];
      }

      v10 = v9 + 10;
    }

    else
    {
      v10 = 10;
    }

    v5 += v10;
  }

  v11 = v5 + 6;
  if (HIDWORD(v11))
  {
    v15 = 0x10600000000;
LABEL_24:
    v16 = 11;
    goto LABEL_25;
  }

  v12 = sub_2393D52C4(v11);
  if (!v12)
  {
    v15 = 0x10900000000;
    goto LABEL_24;
  }

  v13 = v12;
  v14 = sub_23948D858(a1, a2, v12, v11);
  LODWORD(v16) = v14;
  v15 = v14 & 0xFFFFFFFF00000000;
  j__free(v13);
  v16 = v16;
LABEL_25:
  v21 = v18;
  sub_23948DFAC(&v21);
  v18[0] = &v19;
  sub_2392E32D4(v18);
  return v15 | v16;
}

uint64_t sub_23948DB88(unsigned __int8 *a1, uint64_t *a2, void *a3, size_t a4, unsigned __int8 *a5, uint64_t a6)
{
  bzero(a3, a4);
  v27 = 0;
  if (8 * a6 + 88 > 8 * a4)
  {
    v12 = 0xA300000000;
    v13 = 25;
    return v13 | v12;
  }

  result = sub_23948DE80(a3, &v27, *a1, 3, 0x58uLL);
  if (!result)
  {
    result = sub_23948DE80(a3, &v27, *(a1 + 1), 16, 0x58uLL);
    if (!result)
    {
      result = sub_23948DE80(a3, &v27, *(a1 + 2), 16, 0x58uLL);
      if (!result)
      {
        result = sub_23948DE80(a3, &v27, a1[6], 2, 0x58uLL);
        if (!result)
        {
          v16 = a1[7] == 1 ? *sub_23948DF8C(a1 + 7, v15) : 0;
          result = sub_23948DE80(a3, &v27, v16, 8, 0x58uLL);
          if (!result)
          {
            v18 = (a1[12] & 1) != 0 ? 0 : sub_2392E10A8(a1 + 10, v17);
            result = sub_23948DE80(a3, &v27, v18, 12, 0x58uLL);
            if (!result)
            {
              result = sub_23948DE80(a3, &v27, *(a1 + 4), 27, 0x58uLL);
              if (!result)
              {
                v19 = v27;
                v20 = (v27 + 4) > 0x58;
                if ((v27 + 4) <= 0x58)
                {
                  v19 = v27 + 4;
                }

                v27 = v19;
                v21 = 0x300000002FLL;
                if (!v20)
                {
                  v21 = 0;
                }

                if ((v21 & 0xFFFFFFFFFLL) != 0)
                {
                  v12 = v21 & 0x3000000000;
                  v13 = 47;
                  return v13 | v12;
                }

                result = sub_23948DF0C(a3, &v27, a5, a6, 8 * a6 + 88);
                if (!result)
                {
                  v22 = a2[1];
                  if (v22 >= 4)
                  {
                    v27 = sub_23948CB34(a2, 3uLL, v22 - 3);
                    v28 = v23;
                    v24 = *a2;
                    *(v24 + 2) = 58;
                    *v24 = 21581;
                    sub_238DB6950(v26, a3, a4);
                    v25 = sub_23948C610(v26[0], v26[1], &v27);
                    sub_2393F6D60(a2, v28 + 3);
                    return v25;
                  }

                  else
                  {
                    return 0xCB00000019;
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_23948DDEC(unsigned __int8 *a1, uint64_t *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  if (sub_23948FA64(a1, 0))
  {
    return sub_23948DB88(a1, a2, v5, 0xBuLL, 0, 0);
  }

  else
  {
    return 0x1240000002FLL;
  }
}

uint64_t sub_23948DE80(uint64_t a1, unint64_t *a2, unint64_t a3, uint64_t a4, unint64_t a5)
{
  v5 = *a2;
  v6 = *a2 + a4;
  if (v6 > a5)
  {
    v7 = 0x3000000000;
LABEL_10:
    v9 = 47;
    return v9 | v7;
  }

  if ((1 << a4) <= a3)
  {
    v7 = 0x3100000000;
    goto LABEL_10;
  }

  *a2 = v6;
  if (a3)
  {
    do
    {
      if (a3)
      {
        *(a1 + (v5 >> 3)) |= 1 << (v5 & 7);
      }

      ++v5;
      v8 = a3 > 1;
      a3 >>= 1;
    }

    while (v8);
  }

  v7 = 0;
  v9 = 0;
  return v9 | v7;
}

uint64_t sub_23948DF0C(uint64_t a1, unint64_t *a2, unsigned __int8 *a3, uint64_t a4, unint64_t a5)
{
  if (!a4)
  {
    return 0;
  }

  v6 = a4;
  while (1)
  {
    v10 = *a3++;
    result = sub_23948DE80(a1, a2, v10, 8, a5);
    if (result)
    {
      break;
    }

    if (!--v6)
    {
      return 0;
    }
  }

  return result;
}

_BYTE *sub_23948DF8C(_BYTE *a1, uint64_t a2)
{
  if ((*a1 & 1) == 0)
  {
    sub_239533D44();
  }

  return a1 + 1;
}

void sub_23948DFAC(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_23948E000(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_23948E000(uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 64)
  {
    if (*(i - 33) < 0)
    {
      operator delete(*(i - 56));
    }
  }

  a1[1] = v2;
}

unint64_t sub_23948E050(uint64_t a1, uint64_t a2)
{
  do
  {
    v4 = sub_2393C5C40(a2);
    if (v4 > 0xC || ((1 << v4) & 0x1011) == 0)
    {
      goto LABEL_26;
    }

    v5 = *(a2 + 16);
    if (v5 > 0xFF)
    {
      LODWORD(v7) = 36;
      v13 = 0xC600000000;
      return v13 | v7;
    }

    v6 = v4 == 12;
    if (v4 <= 7)
    {
      v6 = sub_239490460(a1, *(a2 + 16));
    }

    if ((v5 & 0x80) != 0)
    {
      __p = 0;
      v18 = 0;
      v20 = 0;
      v19 = 0;
      v15[0] = v5;
      v8 = sub_23948E300(a2, v15, v6);
      LODWORD(v7) = v8;
      if (!v8)
      {
        v9 = sub_23948FCD4(a1, v15);
        goto LABEL_23;
      }

      v13 = v8 & 0xFFFFFFFF00000000;
      if ((SHIBYTE(v19) & 0x80000000) == 0)
      {
        return v13 | v7;
      }

LABEL_39:
      operator delete(__p);
      return v13 | v7;
    }

    __p = 0;
    v18 = 0;
    v20 = 0;
    v19 = 0;
    v22 = 0;
    v23 = 0;
    v21 = 0;
    v15[0] = v5;
    if ((v6 - 1) <= 1)
    {
      v7 = sub_23948E300(a2, v15, v6);
      if (v7)
      {
        goto LABEL_38;
      }

      goto LABEL_22;
    }

    if (v6 != 5)
    {
      if (v6 == 4)
      {
        LODWORD(v24) = 0;
        v10 = sub_2393C5FC8(a2, &v24);
        if (!v10)
        {
          LODWORD(v10) = 0;
          v11 = 0;
          v16 = 4;
          v22 = v24;
          goto LABEL_21;
        }
      }

      else
      {
        if (v6 != 3)
        {
          v13 = 0xB300000000;
          LODWORD(v7) = 47;
          return v13 | v7;
        }

        v24 = 0;
        v10 = sub_2393C5DA0(a2, &v24);
        if (!v10)
        {
          LODWORD(v10) = 0;
          v11 = 0;
          v16 = 3;
          v21 = v24;
          goto LABEL_21;
        }
      }

LABEL_20:
      v11 = v10 & 0xFFFFFFFF00000000;
      goto LABEL_21;
    }

    v24 = 0;
    v10 = sub_2393C5F2C(a2, &v24);
    if (v10)
    {
      goto LABEL_20;
    }

    LODWORD(v10) = 0;
    v11 = 0;
    v16 = 5;
    v23 = v24;
LABEL_21:
    v7 = v11 | v10;
    if (v7)
    {
LABEL_38:
      v13 = v7 & 0xFFFFFFFF00000000;
      if ((SHIBYTE(v19) & 0x80000000) == 0)
      {
        return v13 | v7;
      }

      goto LABEL_39;
    }

LABEL_22:
    v9 = sub_23948FFA4(a1, v15);
LABEL_23:
    v7 = v9;
    if (SHIBYTE(v19) < 0)
    {
      operator delete(__p);
    }

    if (v7)
    {
      v13 = v7 & 0xFFFFFFFF00000000;
      return v13 | v7;
    }

LABEL_26:
    v12 = sub_2393C6B34(a2);
  }

  while (!v12);
  if (v12 == 33)
  {
    v13 = 0;
  }

  else
  {
    v13 = v12 & 0xFFFFFFFF00000000;
  }

  if (v12 == 33)
  {
    LODWORD(v7) = 0;
  }

  else
  {
    LODWORD(v7) = v12;
  }

  return v13 | v7;
}

uint64_t sub_23948E300(uint64_t a1, uint64_t a2, int a3)
{
  if (a3 == 2)
  {
    LODWORD(__dst) = 0;
    v4 = sub_2393C5E78(a1, &__dst);
    if (!v4)
    {
      LODWORD(v4) = 0;
      v6 = 0;
      *(a2 + 4) = 2;
      *(a2 + 32) = __dst;
      return v6 | v4;
    }
  }

  else
  {
    if (a3 != 1)
    {
      return 0x960000002FLL;
    }

    __src = 0uLL;
    v4 = sub_2393C76A8(a1, &__src);
    if (!v4)
    {
      *(a2 + 4) = 1;
      v5 = *(&__src + 1);
      if (*(&__src + 1) >= 0x7FFFFFFFFFFFFFF8uLL)
      {
        sub_238EAEDBC();
      }

      if (*(&__src + 1) >= 0x17uLL)
      {
        operator new();
      }

      HIBYTE(v9) = BYTE8(__src);
      if (*(&__src + 1))
      {
        memmove(&__dst, __src, *(&__src + 1));
      }

      *(&__dst + v5) = 0;
      if (*(a2 + 31) < 0)
      {
        operator delete(*(a2 + 8));
      }

      LODWORD(v4) = 0;
      v6 = 0;
      *(a2 + 8) = __dst;
      *(a2 + 24) = v9;
      return v6 | v4;
    }
  }

  v6 = v4 & 0xFFFFFFFF00000000;
  return v6 | v4;
}

uint64_t sub_23948E45C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (HIDWORD(a3))
  {
    return 0xF20000002FLL;
  }

  sub_2393C5AAC(v10);
  sub_2393C5ADC(v10, a2, a3);
  v6 = sub_2393C6B34(v10);
  if (v6)
  {
    goto LABEL_3;
  }

  if (sub_2393C5C40(v10) != 21)
  {
    v7 = 0xFA00000000;
    goto LABEL_13;
  }

  sub_2393C5AAC(v9);
  if (sub_2393C5C40(v10) != 21)
  {
    v7 = 0x4600000000;
    goto LABEL_13;
  }

  if (v11 != 256)
  {
    v7 = 0x4700000000;
    goto LABEL_13;
  }

  if (sub_2393C5CB8(v10))
  {
    v7 = 0x4800000000;
LABEL_13:
    LODWORD(v6) = 47;
    return v6 | v7;
  }

  v6 = sub_2393C76A4(v10, v9);
  if (!v6)
  {
    if (v9[16] != 21)
    {
      v7 = 0x4C00000000;
      goto LABEL_13;
    }

    v6 = sub_2393C6B34(v9);
    if (!v6)
    {
      v6 = sub_23948E050(a1, v9);
      if (v6 == 33)
      {
        v6 = 0;
      }
    }
  }

LABEL_3:
  v7 = v6 & 0xFFFFFFFF00000000;
  return v6 | v7;
}

unint64_t sub_23948E5A0(uint64_t a1, const void **a2, unint64_t *a3)
{
  v3 = 8 * (a2[1] - *a2) - *a3 + 7;
  if (v3 >= 8)
  {
    v9 = v3 >> 3;
    v10 = sub_2393D52C4(v3 >> 3);
    if (v10)
    {
      v11 = v10;
      v18 = a1;
      v12 = 0;
      if (v9 <= 1)
      {
        v13 = 1;
      }

      else
      {
        v13 = v9;
      }

      do
      {
        v20 = 0;
        memset(v19, 0, sizeof(v19));
        v14 = a2[1];
        if (v14 != *a2)
        {
          if (v14 - *a2 >= 0)
          {
            operator new();
          }

          sub_238EAEDBC();
        }

        sub_23948E728(v19, a3, &v20, 8);
        v11[v12++] = v20;
      }

      while (v13 != v12);
      v15 = sub_23948E45C(v18, v11, v9);
      v16 = v15;
      v5 = v15 & 0xFFFFFFFF00000000;
      j__free(v11);
      v4 = v16;
    }

    else
    {
      v5 = 0x11200000000;
      v4 = 11;
    }
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  return v5 | v4;
}

uint64_t sub_23948E728(void *a1, unint64_t *a2, void *a3, uint64_t a4)
{
  v4 = a4;
  v23 = *MEMORY[0x277D85DE8];
  *a3 = 0;
  v7 = *a2;
  v8 = *a2 + a4;
  v9 = a1[1] - *a1;
  if (v8 <= 8 * v9)
  {
    if (a4)
    {
      v13 = 0;
      v14 = 0;
      v15 = a4;
      do
      {
        if ((*(*a1 + (v7 >> 3)) >> (v7 & 7)))
        {
          v14 |= (1 << v13);
          *a3 = v14;
        }

        ++v7;
        ++v13;
        --v15;
      }

      while (v15);
      v8 = *a2 + a4;
    }

    v11 = 0;
    v12 = 0;
    *a2 = v8;
  }

  else
  {
    v10 = sub_2393D9044(0x20u);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109632;
      v18 = v7;
      v19 = 1024;
      v20 = v4;
      v21 = 1024;
      v22 = v9;
      _os_log_impl(&dword_238DAE000, v10, OS_LOG_TYPE_ERROR, "Error parsing QR code. startIndex %u numberOfBitsToLoad %u buf_len %u ", buf, 0x14u);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(32, 1, "Error parsing QR code. startIndex %u numberOfBitsToLoad %u buf_len %u ", *a2, v4, *(a1 + 2) - *a1);
    }

    v11 = 0x3300000000;
    v12 = 47;
  }

  return v12 | v11;
}

void sub_23948E8BC(const std::string *a1@<X0>, std::string *a2@<X8>)
{
  v25 = a2;
  v26.__r_.__value_.__r.__words[0] = 0;
  memset(&__str, 0, sizeof(__str));
  __p = 0;
  v28 = 0;
  v29 = 0;
  sub_23948EAF8(&__p, &v26);
  v3 = 0;
  while (1)
  {
    v4 = SHIBYTE(a1->__r_.__value_.__r.__words[2]);
    v5 = v4 < 0 ? a1->__r_.__value_.__l.__size_ : SHIBYTE(a1->__r_.__value_.__r.__words[2]);
    if (v3 >= v5)
    {
      break;
    }

    v6 = a1;
    if ((v4 & 0x80000000) != 0)
    {
      v6 = a1->__r_.__value_.__r.__words[0];
    }

    v7 = v6->__r_.__value_.__s.__data_[v3++];
    if (v7 == 37)
    {
      v26.__r_.__value_.__r.__words[0] = v3;
      sub_23948EAF8(&__p, &v26);
    }
  }

  v8 = __p;
  if (v28 != __p)
  {
    v9 = 0;
    v10 = (v28 - __p) >> 3;
    do
    {
      v11 = &v8[8 * v9];
      v12 = *v11;
      if (v9 == v10 - 1 || (v13 = v11[1]) == 0)
      {
        v14 = -1;
      }

      else
      {
        v14 = v13 + ~v12;
      }

      std::string::basic_string(&v26, a1, v12, v14, &v31);
      v15 = SHIBYTE(v26.__r_.__value_.__r.__words[2]);
      v16 = v26.__r_.__value_.__r.__words[0];
      if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v17 = &v26;
      }

      else
      {
        v17 = v26.__r_.__value_.__r.__words[0];
      }

      if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = SHIBYTE(v26.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v26.__r_.__value_.__l.__size_;
      }

      if (size >= 3)
      {
        v19 = v17 + size;
        v20 = size;
        v21 = v17;
        do
        {
          v22 = memchr(v21, 77, v20 - 2);
          if (!v22)
          {
            break;
          }

          if (LOWORD(v22->__r_.__value_.__l.__data_) == 21581 && v22->__r_.__value_.__s.__data_[2] == 58)
          {
            if (v22 != v17 || size == 3)
            {
              break;
            }

            std::string::operator=(&__str, &v26);
            if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v26.__r_.__value_.__l.__data_);
            }

            goto LABEL_36;
          }

          v21 = (&v22->__r_.__value_.__l.__data_ + 1);
          v20 = v19 - v21;
        }

        while (v19 - v21 >= 3);
      }

      if (v15 < 0)
      {
        operator delete(v16);
      }

      ++v9;
      v8 = __p;
      v10 = (v28 - __p) >> 3;
    }

    while (v9 < v10);
  }

LABEL_36:
  v24 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v24 = __str.__r_.__value_.__l.__size_;
  }

  if (v24)
  {
    std::string::basic_string(v25, &__str, 3uLL, 0xFFFFFFFFFFFFFFFFLL, &v26);
  }

  else
  {
    *v25 = __str;
    memset(&__str, 0, sizeof(__str));
  }

  if (__p)
  {
    v28 = __p;
    operator delete(__p);
  }

  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }
}

void sub_23948EAF8(uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 3;
    if ((v7 + 1) >> 61)
    {
      sub_238EAEDBC();
    }

    v8 = v4 - *a1;
    v9 = v8 >> 2;
    if (v8 >> 2 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      sub_23948F828(a1, v10);
    }

    v11 = (8 * v7);
    *v11 = *a2;
    v6 = 8 * v7 + 8;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
}

unint64_t sub_23948EBCC(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 23) < 0)
  {
    sub_238DCEA9C(&__p, *a1, *(a1 + 8));
  }

  else
  {
    __p = *a1;
  }

  sub_23948E8BC(&__p, &v10);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  size = HIBYTE(v10.__r_.__value_.__r.__words[2]);
  if ((v10.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v10.__r_.__value_.__l.__size_;
  }

  if (size)
  {
    v8 = v10;
    memset(&v10, 0, sizeof(v10));
    v4 = sub_23948ECC8(&v8, a2);
    v5 = v4;
    v6 = HIDWORD(v4);
    if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v8.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v5 = 47;
    LODWORD(v6) = 328;
  }

  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  return v5 | (v6 << 32);
}

unint64_t sub_23948ECC8(__int128 *a1, uint64_t a2)
{
  v28 = *MEMORY[0x277D85DE8];
  v23 = 0;
  v24 = 0;
  v25 = 0;
  v22 = 0;
  if (*(a1 + 23) < 0)
  {
    sub_238DCEA9C(&__dst, *a1, *(a1 + 1));
  }

  else
  {
    __dst = *a1;
    v20 = *(a1 + 2);
  }

  v3 = sub_23948C3DC(&__dst, &v23);
  v4 = v3;
  if (SHIBYTE(v20) < 0)
  {
    operator delete(__dst);
    if (!v4)
    {
      goto LABEL_8;
    }

LABEL_40:
    v6 = v4 & 0xFFFFFFFF00000000;
    goto LABEL_41;
  }

  if (v3)
  {
    goto LABEL_40;
  }

LABEL_8:
  v21 = 0;
  memset(v18, 0, sizeof(v18));
  if (v24 != v23)
  {
    if (v24 - v23 >= 0)
    {
      operator new();
    }

    goto LABEL_51;
  }

  v4 = sub_23948E728(v18, &v22, &v21, 3);
  if (v4)
  {
    goto LABEL_40;
  }

  *a2 = v21;
  memset(v17, 0, sizeof(v17));
  if (v24 != v23)
  {
    if (v24 - v23 >= 0)
    {
      operator new();
    }

    goto LABEL_51;
  }

  v4 = sub_23948E728(v17, &v22, &v21, 16);
  if (v4)
  {
    goto LABEL_40;
  }

  *(a2 + 2) = v21;
  memset(v16, 0, sizeof(v16));
  if (v24 != v23)
  {
    if (v24 - v23 >= 0)
    {
      operator new();
    }

    goto LABEL_51;
  }

  v4 = sub_23948E728(v16, &v22, &v21, 16);
  if (v4)
  {
    goto LABEL_40;
  }

  *(a2 + 4) = v21;
  memset(v15, 0, sizeof(v15));
  if (v24 != v23)
  {
    if (v24 - v23 >= 0)
    {
      operator new();
    }

    goto LABEL_51;
  }

  v4 = sub_23948E728(v15, &v22, &v21, 2);
  if (v4)
  {
    goto LABEL_40;
  }

  *(a2 + 6) = v21;
  memset(v14, 0, sizeof(v14));
  if (v24 != v23)
  {
    if (v24 - v23 >= 0)
    {
      operator new();
    }

    goto LABEL_51;
  }

  v4 = sub_23948E728(v14, &v22, &v21, 8);
  if (v4)
  {
    goto LABEL_40;
  }

  v5 = v21;
  *(a2 + 7) = 1;
  *(a2 + 8) = v5;
  memset(v13, 0, sizeof(v13));
  if (v24 != v23)
  {
    if (v24 - v23 >= 0)
    {
      operator new();
    }

    goto LABEL_51;
  }

  v4 = sub_23948E728(v13, &v22, &v21, 12);
  if (v4)
  {
    goto LABEL_40;
  }

  sub_2392E10F4(a2 + 10, v21);
  memset(v12, 0, sizeof(v12));
  if (v24 != v23)
  {
    if (v24 - v23 >= 0)
    {
      operator new();
    }

    goto LABEL_51;
  }

  v4 = sub_23948E728(v12, &v22, &v21, 27);
  if (v4)
  {
    goto LABEL_40;
  }

  *(a2 + 16) = v21;
  memset(v11, 0, sizeof(v11));
  if (v24 != v23)
  {
    if (v24 - v23 >= 0)
    {
      operator new();
    }

LABEL_51:
    sub_238EAEDBC();
  }

  v4 = sub_23948E728(v11, &v22, &v21, 4);
  if (v4)
  {
    goto LABEL_40;
  }

  v8 = v21;
  if (v21)
  {
    v9 = sub_2393D9044(0x20u);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v27 = v8;
      _os_log_impl(&dword_238DAE000, v9, OS_LOG_TYPE_ERROR, "Payload padding bits are not all 0: 0x%x", buf, 8u);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(32, 1, "Payload padding bits are not all 0: 0x%x", v8);
    }

    v6 = 0x17800000000;
    LODWORD(v4) = 47;
  }

  else
  {
    v10 = sub_23948E5A0(a2, &v23, &v22);
    LODWORD(v4) = v10;
    v6 = v10 & 0xFFFFFFFF00000000;
  }

LABEL_41:
  if (v23)
  {
    v24 = v23;
    operator delete(v23);
  }

  return v4 | v6;
}

unint64_t sub_23948F374(uint64_t a1, std::string::size_type *a2)
{
  if (*(a1 + 23) < 0)
  {
    sub_238DCEA9C(&__p, *a1, *(a1 + 8));
  }

  else
  {
    __p = *a1;
  }

  sub_23948E8BC(&__p, &__str);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  size = SHIBYTE(__str.__r_.__value_.__r.__words[2]);
  if ((SHIBYTE(__str.__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
  {
    if (!*(&__str.__r_.__value_.__s + 23))
    {
      v27 = 387;
      LODWORD(v26) = 47;
      return v26 | (v27 << 32);
    }

    p_str = &__str;
    goto LABEL_11;
  }

  size = __str.__r_.__value_.__l.__size_;
  if (__str.__r_.__value_.__l.__size_)
  {
    p_str = __str.__r_.__value_.__r.__words[0];
LABEL_11:
    v5 = 0;
    do
    {
      v6 = p_str->__r_.__value_.__s.__data_[0];
      p_str = (p_str + 1);
      if (v6 == 42)
      {
        ++v5;
      }

      --size;
    }

    while (size);
    sub_23948F6F8(a2);
    sub_23948F75C(a2, v5 + 1);
    v7 = 0;
    while (1)
    {
      v8 = std::string::find(&__str, 42, v7);
      if (v8 == -1)
      {
        std::string::basic_string(&v35, &__str, v7, 0xFFFFFFFFFFFFFFFFLL, v32);
        v11 = v35.__r_.__value_.__l.__size_;
        v10 = v35.__r_.__value_.__r.__words[0];
        v32[0] = v35.__r_.__value_.__r.__words[2];
        *(v32 + 3) = *(&v35.__r_.__value_.__r.__words[2] + 3);
        v12 = HIBYTE(v35.__r_.__value_.__r.__words[2]);
        v7 = -1;
      }

      else
      {
        v9 = v8;
        std::string::basic_string(&v35, &__str, v7, v8 - v7, v32);
        v11 = v35.__r_.__value_.__l.__size_;
        v10 = v35.__r_.__value_.__r.__words[0];
        v32[0] = v35.__r_.__value_.__r.__words[2];
        *(v32 + 3) = *(&v35.__r_.__value_.__r.__words[2] + 3);
        v12 = HIBYTE(v35.__r_.__value_.__r.__words[2]);
        v7 = v9 + 1;
      }

      v13 = a2[1];
      v14 = a2[2];
      if (v13 >= v14)
      {
        v16 = 0x8E38E38E38E38E39 * ((v13 - *a2) >> 3);
        v17 = v16 + 1;
        if (v16 + 1 > 0x38E38E38E38E38ELL)
        {
          sub_238EAEDBC();
        }

        v18 = 0x8E38E38E38E38E39 * ((v14 - *a2) >> 3);
        if (2 * v18 > v17)
        {
          v17 = 2 * v18;
        }

        if (v18 >= 0x1C71C71C71C71C7)
        {
          v19 = 0x38E38E38E38E38ELL;
        }

        else
        {
          v19 = v17;
        }

        v37 = a2;
        if (v19)
        {
          sub_23948F870(a2, v19);
        }

        v20 = 72 * v16;
        v21 = 72 * v16;
        *(v21 + 32) = 0u;
        *v20 = 0u;
        *(v20 + 16) = 0u;
        *(v20 + 24) = 72 * v16 + 32;
        *(v20 + 64) = 0;
        *(v21 + 56) = 0;
        *(v20 + 48) = 72 * v16 + 56;
        v15 = 72 * v16 + 72;
        v22 = a2[1];
        v23 = 72 * v16 + *a2 - v22;
        sub_23948F8CC(a2, *a2, v22, v20 + *a2 - v22);
        v24 = *a2;
        *a2 = v23;
        a2[1] = v15;
        v25 = a2[2];
        a2[2] = 0;
        v35.__r_.__value_.__r.__words[2] = v24;
        v36 = v25;
        v35.__r_.__value_.__r.__words[0] = v24;
        v35.__r_.__value_.__l.__size_ = v24;
        sub_23948F9F8(&v35);
      }

      else
      {
        *v13 = 0u;
        *(v13 + 16) = 0u;
        *(v13 + 32) = 0u;
        *(v13 + 24) = v13 + 32;
        *(v13 + 64) = 0;
        *(v13 + 56) = 0;
        v15 = v13 + 72;
        *(v13 + 48) = v13 + 56;
      }

      a2[1] = v15;
      if (v12 < 0)
      {
        sub_238DCEA9C(&v29, v10, v11);
      }

      else
      {
        *&v29 = v10;
        *(&v29 + 1) = v11;
        *v30 = v32[0];
        *&v30[3] = *(v32 + 3);
        v31 = v12;
      }

      v26 = sub_23948ECC8(&v29, v15 - 72);
      if (v31 < 0)
      {
        operator delete(v29);
      }

      if (v12 < 0)
      {
        operator delete(v10);
      }

      if (v26)
      {
        break;
      }

      if (v7 == -1)
      {
        v27 = 0;
        LODWORD(v26) = 0;
        goto LABEL_43;
      }
    }

    v27 = HIDWORD(v26);
    goto LABEL_43;
  }

  LODWORD(v26) = 47;
  v27 = 387;
LABEL_43:
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  return v26 | (v27 << 32);
}

void sub_23948F6F8(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  if (v2 != *a1)
  {
    v4 = v2 - 24;
    do
    {
      sub_238EF5F20(v4, *(v4 + 8));
      sub_238EF5F20(v4 - 24, *(v4 - 16));
      v5 = v4 - 48;
      v4 -= 72;
    }

    while (v5 != v3);
  }

  a1[1] = v3;
}

uint64_t *sub_23948F75C(uint64_t *result, unint64_t a2)
{
  if (0x8E38E38E38E38E39 * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0x38E38E38E38E38FLL)
    {
      sub_23948F870(result, a2);
    }

    sub_238EAEDBC();
  }

  return result;
}

void sub_23948F828(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  sub_238EAEDBC();
}

void sub_23948F870(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x38E38E38E38E38FLL)
  {
    operator new();
  }

  sub_238EAEDBC();
}

void sub_23948F8CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = 0;
    do
    {
      v7 = a2 + v6;
      v8 = a4 + v6;
      v9 = *(a2 + v6);
      *(v8 + 3) = *(a2 + v6 + 3);
      *v8 = v9;
      *(v8 + 7) = 0;
      v10 = *(a2 + v6 + 7);
      *(v8 + 7) = v10;
      if (v10 == 1)
      {
        *(v8 + 8) = *(v7 + 8);
        *(v7 + 7) = 0;
      }

      v11 = *(v7 + 10);
      *(v8 + 18) = *(v7 + 18);
      *(v8 + 10) = v11;
      *(v8 + 24) = *(v7 + 24);
      v12 = (v7 + 32);
      v13 = *(v7 + 32);
      *(v8 + 32) = v13;
      v14 = v8 + 32;
      v15 = *(v7 + 40);
      *(v8 + 40) = v15;
      if (v15)
      {
        *(v13 + 16) = v14;
        *(v7 + 24) = v12;
        *v12 = 0;
        *(v7 + 40) = 0;
      }

      else
      {
        *(v8 + 24) = v14;
      }

      v16 = a4 + v6;
      *(v16 + 48) = *(a2 + v6 + 48);
      v17 = (a2 + v6 + 56);
      v18 = *v17;
      *(a4 + v6 + 56) = *v17;
      v19 = a4 + v6 + 56;
      v20 = *(a2 + v6 + 64);
      *(v16 + 64) = v20;
      if (v20)
      {
        *(v18 + 16) = v19;
        *(a2 + v6 + 48) = v17;
        *v17 = 0;
        *(a2 + v6 + 64) = 0;
      }

      else
      {
        *(v16 + 48) = v19;
      }

      v6 += 72;
    }

    while (a2 + v6 != a3);
    while (v5 != a3)
    {
      sub_238EF5F20(v5 + 48, *(v5 + 56));
      sub_238EF5F20(v5 + 24, *(v5 + 32));
      v5 += 72;
    }
  }
}

uint64_t sub_23948F9F8(uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 72;
    sub_238EF5F20(i - 24, *(i - 16));
    sub_238EF5F20(i - 48, *(i - 40));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_23948FA64(unsigned __int8 *a1, uint64_t a2)
{
  if (*a1 > 7u)
  {
    return 0;
  }

  if (a1[6] > 2u)
  {
    return 0;
  }

  if (a1[12])
  {
    return 0;
  }

  v3 = a1 + 7;
  if (a1[7] != 1 || !a2 && *sub_23948DF8C(v3, a2) > 0x1Fu)
  {
    return 0;
  }

  return sub_23948FAEC(a1);
}

uint64_t sub_23948FAEC(uint64_t a1)
{
  if (*a1)
  {
    return 0;
  }

  result = sub_23948FB60(*(a1 + 16));
  if (result)
  {
    if (*(a1 + 2))
    {
      return *(a1 + 2) <= 0xFFF4u && *(a1 + 4) != 0;
    }

    else
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_23948FB60(unsigned int a1)
{
  v1 = vdupq_n_s32(a1);
  v2 = vmovn_s16(vuzp1q_s16(vceqq_s32(v1, xmmword_2395D6750), vceqq_s32(v1, xmmword_2395D6760)));
  v2.i8[0] = vmaxv_u8(v2);
  if (a1 == 87654321 || a1 - 1 >= 0x5F5E0FE)
  {
    return 0;
  }

  else
  {
    return (a1 != 12345678) & ~v2.i32[0];
  }
}

uint64_t sub_23948FC60(uint64_t a1, char a2, uint64_t a3)
{
  v5[0] = a2;
  v6 = 1;
  v9 = 0;
  *__p = *a3;
  v8 = *(a3 + 16);
  *(a3 + 23) = 0;
  *a3 = 0;
  v3 = sub_23948FCD4(a1, v5);
  if (SHIBYTE(v8) < 0)
  {
    operator delete(__p[0]);
  }

  return v3;
}

uint64_t sub_23948FCD4(uint64_t a1, char *a2)
{
  if (*a2 < 0)
  {
    v9[3] = v2;
    v9[4] = v3;
    v9[0] = a2;
    v7 = sub_239490F9C(a1 + 24, a2, &unk_23958D927, v9);
    v7[5] = *a2;
    std::string::operator=(v7 + 2, (a2 + 8));
    v4 = 0;
    v5 = 0;
    *(v7 + 18) = *(a2 + 8);
  }

  else
  {
    v4 = 0xF400000000;
    v5 = 47;
  }

  return v5 | v4;
}

uint64_t sub_23948FD68(uint64_t a1, char a2, int a3)
{
  __p = 0;
  v8 = 0;
  v9 = 0;
  v5[0] = a2;
  v6 = 2;
  v10 = a3;
  v3 = sub_23948FCD4(a1, v5);
  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p);
  }

  return v3;
}

unint64_t sub_23948FDCC@<X0>(unint64_t result@<X0>, unint64_t *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v2 = *(result + 24);
  v3 = (result + 32);
  if (v2 != (result + 32))
  {
    do
    {
      result = sub_23948FE50(a2, (v2 + 5));
      v5 = v2[1];
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
          v6 = v2[2];
          v7 = *v6 == v2;
          v2 = v6;
        }

        while (!v7);
      }

      v2 = v6;
    }

    while (v6 != v3);
  }

  return result;
}

unint64_t sub_23948FE50(unint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_239490CA4(a1, a2);
  }

  else
  {
    sub_239490DA8(a1, a1[1], a2);
    result = v3 + 40;
  }

  a1[1] = result;
  return result;
}

uint64_t sub_23948FE9C(uint64_t a1, unsigned int a2)
{
  v12 = a2;
  v2 = a1 + 32;
  v3 = *(a1 + 32);
  if (!v3)
  {
    goto LABEL_9;
  }

  v4 = a1 + 24;
  v5 = v2;
  do
  {
    v6 = *(v3 + 32);
    v7 = v6 >= a2;
    v8 = v6 < a2;
    if (v7)
    {
      v5 = v3;
    }

    v3 = *(v3 + 8 * v8);
  }

  while (v3);
  if (v5 != v2 && *(v5 + 32) <= a2)
  {
    sub_239490EE8(v4, &v12);
    v10 = 0;
    v9 = 0;
  }

  else
  {
LABEL_9:
    v9 = 0x9E00000000;
    v10 = 16;
  }

  return v9 | v10;
}

uint64_t sub_23948FF28(uint64_t a1, uint64_t a2)
{
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v4[0] = 0;
  v5 = 1;
  v8 = 0;
  *__p = *a2;
  v7 = *(a2 + 16);
  *(a2 + 23) = 0;
  *a2 = 0;
  v2 = sub_23948FFA4(a1, v4);
  if (SHIBYTE(v7) < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

uint64_t sub_23948FFA4(uint64_t a1, char *a2)
{
  if (*a2 < 0)
  {
    v4 = 0xFC00000000;
    v5 = 47;
  }

  else
  {
    v8 = a2;
    v3 = sub_23949107C(a1 + 48, a2, &unk_23958D927, &v8);
    v3[5] = *a2;
    std::string::operator=(v3 + 2, (a2 + 8));
    v4 = 0;
    v5 = 0;
    *(v3 + 18) = *(a2 + 8);
    v6 = *(a2 + 40);
    v3[12] = *(a2 + 7);
    *(v3 + 5) = v6;
  }

  return v5 | v4;
}

uint64_t sub_239490048(uint64_t a1, unsigned int a2)
{
  __p = 0;
  v7 = 0;
  v9 = 0;
  v8 = 0;
  v4[0] = 0;
  v5 = 4;
  v10 = 0;
  v11 = a2;
  v12 = 0;
  v2 = sub_23948FFA4(a1, v4);
  if (SHIBYTE(v8) < 0)
  {
    operator delete(__p);
  }

  return v2;
}

uint64_t sub_2394900B8(uint64_t a1, uint64_t a2)
{
  memset(&__p, 0, sizeof(__p));
  v9 = 0;
  __val = 0;
  v12 = 0;
  v10 = 0;
  v3 = sub_2394901A8(a1, 0, v6);
  if (!v3)
  {
    if (v7 == 4)
    {
      std::to_string(&v5, __val);
      if (*(a2 + 23) < 0)
      {
        operator delete(*a2);
      }

      v3 = 0;
      *a2 = v5;
    }

    else if (v7 == 1)
    {
      std::string::operator=(a2, &__p);
      v3 = 0;
    }

    else
    {
      v3 = 0xC70000002FLL;
    }
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v3;
}

uint64_t sub_2394901A8(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a1 + 56);
  v3 = a1 + 56;
  v4 = v5;
  if (v5)
  {
    v7 = v3;
    do
    {
      v8 = *(v4 + 32);
      v9 = v8 >= a2;
      v10 = v8 < a2;
      if (v9)
      {
        v7 = v4;
      }

      v4 = *(v4 + 8 * v10);
    }

    while (v4);
    if (v7 == v3 || *(v7 + 32) > a2)
    {
      v11 = 0x10E00000000;
      v12 = 16;
    }

    else
    {
      *a3 = *(v7 + 40);
      std::string::operator=((a3 + 8), (v7 + 48));
      v12 = 0;
      v11 = 0;
      *(a3 + 32) = *(v7 + 72);
      v13 = *(v7 + 80);
      *(a3 + 56) = *(v7 + 96);
      *(a3 + 40) = v13;
    }
  }

  else
  {
    v11 = 0x10E00000000;
    v12 = 16;
  }

  return v11 | v12;
}

uint64_t sub_239490268(uint64_t a1)
{
  v1 = (a1 + 56);
  v2 = *(a1 + 56);
  if (v2)
  {
    v3 = a1 + 48;
    do
    {
      v4 = v2;
      v2 = *v2;
    }

    while (v2);
    if (v4 == v1 || *(v4 + 32))
    {
      v5 = 0xD000000000;
      v6 = 16;
    }

    else
    {
      sub_239490EE8(v3, byte_2395D6770);
      v6 = 0;
      v5 = 0;
    }
  }

  else
  {
    v5 = 0xD000000000;
    v6 = 16;
  }

  return v5 | v6;
}

unint64_t sub_2394902F0(char *a1)
{
  v2 = 0;
  while (1)
  {
    v3 = sub_2393F888C(a1, 4uLL);
    v4 = v3;
    if (v3)
    {
      v7 = v3 & 0xFFFFFFFF00000000;
      return v7 | v4;
    }

    v5 = *a1 % 0x5F5E0FEu + 1;
    *a1 = v5;
    if (sub_23948FB60(v5))
    {
      break;
    }

    if (v2++ >= 9)
    {
      v7 = 0xEF00000000;
      v4 = 172;
      return v7 | v4;
    }
  }

  v4 = 0;
  v7 = 0;
  return v7 | v4;
}

uint64_t sub_2394903B0(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v3 = a1 + 32;
  v4 = v5;
  if (v5)
  {
    v7 = v3;
    do
    {
      v8 = *(v4 + 32);
      v9 = v8 >= a2;
      v10 = v8 < a2;
      if (v9)
      {
        v7 = v4;
      }

      v4 = *(v4 + 8 * v10);
    }

    while (v4);
    if (v7 == v3 || *(v7 + 32) > a2)
    {
      v11 = 0x10500000000;
      v12 = 16;
    }

    else
    {
      *a3 = *(v7 + 40);
      std::string::operator=((a3 + 8), (v7 + 48));
      v12 = 0;
      v11 = 0;
      *(a3 + 32) = *(v7 + 72);
    }
  }

  else
  {
    v11 = 0x10500000000;
    v12 = 16;
  }

  return v11 | v12;
}

uint64_t sub_239490460(uint64_t a1, int a2)
{
  if ((a2 & 0x80u) == 0)
  {
    return 4 * (a2 == 0);
  }

  else
  {
    return 2;
  }
}

void sub_239490480(uint64_t result@<X0>, uint64_t *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v2 = *(result + 48);
  v3 = (result + 56);
  if (v2 != (result + 56))
  {
    do
    {
      sub_239490504(a2, (v2 + 5));
      v5 = v2[1];
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
          v6 = v2[2];
          v7 = *v6 == v2;
          v2 = v6;
        }

        while (!v7);
      }

      v2 = v6;
    }

    while (v6 != v3);
  }
}

void sub_239490504(uint64_t *a1, uint64_t a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 6;
    if ((v7 + 1) >> 58)
    {
      sub_238EAEDBC();
    }

    v8 = v4 - *a1;
    v9 = v8 >> 5;
    if (v8 >> 5 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFC0)
    {
      v10 = 0x3FFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    v16[4] = a1;
    if (v10)
    {
      sub_2394911CC(a1, v10);
    }

    v11 = v7 << 6;
    sub_239491160(a1, v11, a2);
    v6 = v11 + 64;
    v12 = a1[1];
    v13 = v11 + *a1 - v12;
    sub_239491214(a1, *a1, v12, v13);
    v14 = *a1;
    *a1 = v13;
    a1[1] = v11 + 64;
    v15 = a1[2];
    a1[2] = 0;
    v16[2] = v14;
    v16[3] = v15;
    v16[0] = v14;
    v16[1] = v14;
    sub_2394912B0(v16);
  }

  else
  {
    sub_239491160(a1, a1[1], a2);
    v6 = v5 + 64;
  }

  a1[1] = v6;
}

BOOL sub_239490610(uint64_t a1, unsigned __int8 *a2)
{
  v43 = 0uLL;
  v44 = 0;
  v41 = 0uLL;
  v42 = 0;
  if (!sub_23948FBC0(a1, a2))
  {
    goto LABEL_51;
  }

  sub_23948FDCC(a2, __p);
  sub_239491344(&v43);
  v43 = *__p;
  v44 = v35;
  __p[1] = 0;
  v35 = 0;
  __p[0] = 0;
  v45 = __p;
  sub_2392E32D4(&v45);
  v4 = *(&v43 + 1);
  v5 = v43;
  if (*(a1 + 40) != 0xCCCCCCCCCCCCCCCDLL * ((*(&v43 + 1) - v43) >> 3))
  {
    goto LABEL_51;
  }

  if (v43 != *(&v43 + 1))
  {
    while (1)
    {
      __p[1] = 0;
      v35 = 0;
      v37 = 0;
      v36 = 0;
      if (sub_2394903B0(a1, *v5, __p))
      {
        break;
      }

      v6 = HIBYTE(v36);
      v7 = SHIBYTE(v36);
      if (*(v5 + 1) != HIDWORD(__p[0]))
      {
        goto LABEL_49;
      }

      v8 = v5[31];
      if (v8 >= 0)
      {
        v9 = v5[31];
      }

      else
      {
        v9 = *(v5 + 2);
      }

      if (v36 < 0)
      {
        v6 = v35;
      }

      if (v9 != v6)
      {
        goto LABEL_49;
      }

      v12 = *(v5 + 1);
      v11 = v5 + 8;
      v10 = v12;
      v13 = v8 >= 0 ? v11 : v10;
      v14 = __p[1];
      v15 = v36 >= 0 ? &__p[1] : __p[1];
      if (memcmp(v13, v15, v9))
      {
        goto LABEL_49;
      }

      v16 = *(v11 + 6);
      v17 = v37;
      if (v7 < 0)
      {
        operator delete(v14);
      }

      if (v16 != v17)
      {
        goto LABEL_51;
      }

      v5 = v11 + 32;
      if (v5 == v4)
      {
        goto LABEL_23;
      }
    }

    LOBYTE(v7) = HIBYTE(v36);
LABEL_49:
    if ((v7 & 0x80) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_50;
  }

LABEL_23:
  sub_239490480(a2, __p);
  sub_239491384(&v41);
  v41 = *__p;
  v42 = v35;
  __p[1] = 0;
  v35 = 0;
  __p[0] = 0;
  v45 = __p;
  sub_23948DFAC(&v45);
  v18 = *(&v41 + 1);
  v19 = v41;
  if (*(a1 + 64) == (*(&v41 + 1) - v41) >> 6)
  {
    if (v41 == *(&v41 + 1))
    {
      v32 = 1;
      goto LABEL_52;
    }

    while (1)
    {
      __p[1] = 0;
      v35 = 0;
      v37 = 0;
      v36 = 0;
      v39 = 0;
      v40 = 0;
      v38 = 0;
      if (sub_2394901A8(a1, *v19, __p))
      {
        break;
      }

      v20 = HIBYTE(v36);
      v21 = SHIBYTE(v36);
      if (*(v19 + 1) != HIDWORD(__p[0]))
      {
        goto LABEL_55;
      }

      v22 = v19[31];
      if (v22 >= 0)
      {
        v23 = v19[31];
      }

      else
      {
        v23 = *(v19 + 2);
      }

      if (v36 < 0)
      {
        v20 = v35;
      }

      if (v23 != v20)
      {
        goto LABEL_55;
      }

      v26 = *(v19 + 1);
      v25 = v19 + 8;
      v24 = v26;
      v27 = v22 >= 0 ? v25 : v24;
      v28 = __p[1];
      v29 = v36 >= 0 ? &__p[1] : __p[1];
      if (memcmp(v27, v29, v23) || *(v25 + 6) != v37 || *(v25 + 4) != v38 || *(v25 + 5) != v39)
      {
        goto LABEL_55;
      }

      v30 = *(v25 + 6);
      v31 = v40;
      v32 = v30 == v40;
      if (v21 < 0)
      {
        operator delete(v28);
      }

      if (v30 == v31)
      {
        v19 = v25 + 56;
        if (v19 != v18)
        {
          continue;
        }
      }

      goto LABEL_52;
    }

    LOBYTE(v21) = HIBYTE(v36);
LABEL_55:
    if ((v21 & 0x80) != 0)
    {
LABEL_50:
      operator delete(__p[1]);
    }
  }

LABEL_51:
  v32 = 0;
LABEL_52:
  __p[0] = &v41;
  sub_23948DFAC(__p);
  __p[0] = &v43;
  sub_2392E32D4(__p);
  return v32;
}

unint64_t sub_239490924(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 23);
  if (v4 < 0)
  {
    v5 = *a1;
    v6 = *(a1 + 8);
  }

  else
  {
    v5 = a1;
    v6 = *(a1 + 23);
  }

  v7 = 3;
  if (v6 < 3)
  {
    v7 = v6;
  }

  if (!v6)
  {
    goto LABEL_21;
  }

  v8 = &v5[v7];
  v9 = v5;
  v10 = &v5[v7];
  do
  {
    if (*v9 == 77)
    {
      v11 = 1u;
      while (v11 != 3)
      {
        if (&v9[v11] == v8)
        {
          goto LABEL_17;
        }

        v12 = v9[v11];
        v13 = aMt[v11++];
        if (v12 != v13)
        {
          goto LABEL_9;
        }
      }

      v10 = v9;
    }

LABEL_9:
    ++v9;
  }

  while (v9 != v8);
LABEL_17:
  if (v10 == v8 || v10 != v5)
  {
LABEL_21:
    sub_23948F6F8(a2);
    v14 = a2[1];
    v15 = a2[2];
    if (v14 >= v15)
    {
      v17 = 0x8E38E38E38E38E39 * ((v14 - *a2) >> 3);
      v18 = v17 + 1;
      if (v17 + 1 > 0x38E38E38E38E38ELL)
      {
        sub_238EAEDBC();
      }

      v19 = 0x8E38E38E38E38E39 * ((v15 - *a2) >> 3);
      if (2 * v19 > v18)
      {
        v18 = 2 * v19;
      }

      if (v19 >= 0x1C71C71C71C71C7)
      {
        v20 = 0x38E38E38E38E38ELL;
      }

      else
      {
        v20 = v18;
      }

      v37 = a2;
      if (v20)
      {
        sub_23948F870(a2, v20);
      }

      v21 = 72 * v17;
      v22 = 72 * v17;
      *(v22 + 32) = 0u;
      *v21 = 0u;
      *(v21 + 16) = 0u;
      *(v21 + 24) = 72 * v17 + 32;
      *(v21 + 64) = 0;
      *(v22 + 56) = 0;
      *(v21 + 48) = 72 * v17 + 56;
      v16 = 72 * v17 + 72;
      v23 = a2[1];
      v24 = 72 * v17 + *a2 - v23;
      sub_23948F8CC(a2, *a2, v23, v21 + *a2 - v23);
      v25 = *a2;
      *a2 = v24;
      a2[1] = v16;
      v26 = a2[2];
      a2[2] = 0;
      __p.__r_.__value_.__r.__words[2] = v25;
      v36 = v26;
      __p.__r_.__value_.__r.__words[0] = v25;
      __p.__r_.__value_.__l.__size_ = v25;
      sub_23948F9F8(&__p);
    }

    else
    {
      *v14 = 0u;
      *(v14 + 16) = 0u;
      *(v14 + 32) = 0u;
      *(v14 + 24) = v14 + 32;
      *(v14 + 64) = 0;
      *(v14 + 56) = 0;
      *(v14 + 48) = v14 + 56;
      v16 = v14 + 72;
    }

    a2[1] = v16;
    if (*(a1 + 23) < 0)
    {
      sub_238DCEA9C(__dst, *a1, *(a1 + 8));
    }

    else
    {
      *__dst = *a1;
      v34 = *(a1 + 16);
    }

    sub_2392E31B4(&__p, __dst);
    v27 = sub_23948D204(&__p, v16 - 72);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v34) < 0)
    {
      operator delete(__dst[0]);
      if (!v27)
      {
        goto LABEL_41;
      }
    }

    else if (!v27)
    {
LABEL_41:
      if (!sub_23948FAEC(v16 - 72))
      {
        v28 = 0x16100000000;
        LODWORD(v27) = 47;
        return v27 | v28;
      }

LABEL_54:
      v28 = 0;
      LODWORD(v27) = 0;
      return v27 | v28;
    }

LABEL_48:
    v28 = v27 & 0xFFFFFFFF00000000;
    return v27 | v28;
  }

  if ((v4 & 0x80000000) != 0)
  {
    sub_238DCEA9C(&v32, *a1, *(a1 + 8));
  }

  else
  {
    v32 = *a1;
  }

  __p = v32;
  memset(&v32, 0, sizeof(v32));
  v27 = sub_23948F374(&__p, a2);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v32.__r_.__value_.__l.__data_);
    if (v27)
    {
      goto LABEL_48;
    }
  }

  else if (v27)
  {
    goto LABEL_48;
  }

  v30 = *a2;
  v29 = a2[1];
  if (v30 == v29)
  {
    goto LABEL_54;
  }

  LODWORD(v27) = 47;
  while ((sub_23948FA64(v30, 0) & 1) != 0)
  {
    v30 += 72;
    if (v30 == v29)
    {
      goto LABEL_54;
    }
  }

  v28 = 0x16900000000;
  return v27 | v28;
}

unint64_t sub_239490CA4(unint64_t *a1, uint64_t a2)
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
    sub_239490E04(a1, v6);
  }

  v7 = 40 * v2;
  sub_239490DA8(a1, v7, a2);
  v8 = v7 + 40;
  v9 = a1[1];
  v10 = v7 + *a1 - v9;
  sub_239490E5C(a1, *a1, v9, v10);
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

_BYTE *sub_239490DA8(uint64_t a1, uint64_t a2, uint64_t a3)
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

void sub_239490E04(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    operator new();
  }

  sub_238EAEDBC();
}

void sub_239490E5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a2;
    do
    {
      *a4 = *v6;
      v7 = *(v6 + 8);
      *(a4 + 24) = *(v6 + 24);
      *(a4 + 8) = v7;
      *(v6 + 16) = 0;
      *(v6 + 24) = 0;
      *(v6 + 8) = 0;
      *(a4 + 32) = *(v6 + 32);
      v6 += 40;
      a4 += 40;
    }

    while (v6 != a3);
    while (v5 != a3)
    {
      if (*(v5 + 31) < 0)
      {
        operator delete(*(v5 + 8));
      }

      v5 += 40;
    }
  }
}

uint64_t sub_239490EE8(uint64_t a1, unsigned __int8 *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = a1 + 8;
  do
  {
    v5 = *(v2 + 32);
    v6 = v5 >= v3;
    v7 = v5 < v3;
    if (v6)
    {
      v4 = v2;
    }

    v2 = *(v2 + 8 * v7);
  }

  while (v2);
  if (v4 == a1 + 8 || v3 < *(v4 + 32))
  {
    return 0;
  }

  sub_239490F58(a1, v4);
  return 1;
}

uint64_t *sub_239490F58(uint64_t **a1, uint64_t a2)
{
  v3 = sub_2393C2020(a1, a2);
  if (*(a2 + 71) < 0)
  {
    operator delete(*(a2 + 48));
  }

  operator delete(a2);
  return v3;
}

uint64_t *sub_239490F9C(uint64_t a1, unsigned __int8 *a2, uint64_t a3, _BYTE **a4)
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

uint64_t *sub_23949107C(uint64_t a1, unsigned __int8 *a2, uint64_t a3, _BYTE **a4)
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

__n128 sub_239491160(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a2 = *a3;
  v5 = (a2 + 8);
  if (*(a3 + 31) < 0)
  {
    sub_238DCEA9C(v5, *(a3 + 8), *(a3 + 16));
  }

  else
  {
    v6 = *(a3 + 8);
    *(a2 + 24) = *(a3 + 24);
    *v5 = v6;
  }

  *(a2 + 32) = *(a3 + 32);
  result = *(a3 + 40);
  *(a2 + 56) = *(a3 + 56);
  *(a2 + 40) = result;
  return result;
}

void sub_2394911CC(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 58))
  {
    operator new();
  }

  sub_238EAEDBC();
}

void sub_239491214(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a2;
    do
    {
      *a4 = *v6;
      v7 = *(v6 + 8);
      *(a4 + 24) = *(v6 + 24);
      *(a4 + 8) = v7;
      *(v6 + 16) = 0;
      *(v6 + 24) = 0;
      *(v6 + 8) = 0;
      *(a4 + 32) = *(v6 + 32);
      v8 = *(v6 + 40);
      *(a4 + 56) = *(v6 + 56);
      *(a4 + 40) = v8;
      v6 += 64;
      a4 += 64;
    }

    while (v6 != a3);
    while (v5 != a3)
    {
      if (*(v5 + 31) < 0)
      {
        operator delete(*(v5 + 8));
      }

      v5 += 64;
    }
  }
}

uint64_t sub_2394912B0(uint64_t a1)
{
  sub_2394912E8(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_2394912E8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != a2)
  {
    do
    {
      v5 = v2 - 64;
      *(a1 + 16) = v2 - 64;
      if (*(v2 - 33) < 0)
      {
        operator delete(*(v2 - 56));
        v5 = *(a1 + 16);
      }

      v2 = v5;
    }

    while (v5 != a2);
  }
}

void sub_239491344(uint64_t *a1)
{
  if (*a1)
  {
    sub_2392E3328(a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void sub_239491384(uint64_t *a1)
{
  if (*a1)
  {
    sub_23948E000(a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

double sub_2394913C4(uint64_t a1)
{
  *(a1 + 1) = 0;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  return result;
}

uint64_t sub_2394913DC(uint64_t a1)
{
  v3 = (a1 + 56);
  v2 = *(a1 + 56);
  if (v2)
  {
    (*(*v2 + 40))(v2, a1 + 8);
    (*(**(a1 + 56) + 40))(*(a1 + 56), a1 + 24);
  }

  *v3 = 0;
  v3[1] = 0;
  sub_2393F9144(a1 + 40, 16);
  sub_2393F9144(a1 + 24, 16);
  sub_2393F9144(a1 + 8, 16);
  return a1;
}

unint64_t sub_23949148C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6)
{
  if (*(a1 + 1))
  {
    return 0x4700000003;
  }

  v18[6] = v6;
  v18[7] = v7;
  v9 = a6;
  v12 = "SessionKeysg/gcc";
  if (a5 == 1)
  {
    v12 = "SessionResumptionKeysSessionKeysg/gcc";
  }

  v13 = 11;
  if (a5 == 1)
  {
    v13 = 21;
  }

  v18[0] = v12;
  v18[1] = v13;
  if (a6)
  {
    v14 = a1 + 24;
  }

  else
  {
    v14 = a1 + 8;
  }

  if (a6)
  {
    v15 = a1 + 8;
  }

  else
  {
    v15 = a1 + 24;
  }

  v16 = (*(*a2 + 64))(a2, a3, a4, v18, v14, v15, a1 + 40);
  if (v16)
  {
    v17 = v16 & 0xFFFFFFFF00000000;
  }

  else
  {
    LODWORD(v16) = 0;
    v17 = 0;
    *(a1 + 1) = 1;
    *a1 = v9;
    *(a1 + 56) = a2;
  }

  return v17 | v16;
}

unint64_t sub_23949158C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6)
{
  if (*(a1 + 1))
  {
    return 0x6000000003;
  }

  v18[6] = v6;
  v18[7] = v7;
  v9 = a6;
  v12 = "SessionKeysg/gcc";
  if (a5 == 1)
  {
    v12 = "SessionResumptionKeysSessionKeysg/gcc";
  }

  v13 = 11;
  if (a5 == 1)
  {
    v13 = 21;
  }

  v18[0] = v12;
  v18[1] = v13;
  if (a6)
  {
    v14 = a1 + 24;
  }

  else
  {
    v14 = a1 + 8;
  }

  if (a6)
  {
    v15 = a1 + 8;
  }

  else
  {
    v15 = a1 + 24;
  }

  v16 = (*(*a2 + 72))(a2, a3, a4, v18, v14, v15, a1 + 40);
  if (v16)
  {
    v17 = v16 & 0xFFFFFFFF00000000;
  }

  else
  {
    LODWORD(v16) = 0;
    v17 = 0;
    *(a1 + 1) = 1;
    *a1 = v9;
    *(a1 + 56) = a2;
  }

  return v17 | v16;
}

unint64_t sub_23949168C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, int a7)
{
  v17 = *MEMORY[0x277D85DE8];
  if (*(a1 + 1))
  {
    return 0x7B00000003;
  }

  v16 = 0;
  v7 = (*(*a3 + 32))(a3, a4, v15);
  if (!v7)
  {
    v14[0] = v15;
    v14[1] = v16;
    v7 = sub_23949148C(a1, a2, v14, a5, a6, a7);
  }

  sub_2393F9144(v15, 32);
  return v7;
}

uint64_t sub_2394917A8(uint64_t a1, char a2, unsigned int a3, unint64_t a4)
{
  v7 = a1;
  v8 = xmmword_2395D6780;
  if (!a1)
  {
    *&v8 = 0;
  }

  sub_2393D5D3C(&v7, a2);
  sub_2393D5D60(&v7, a3, 4);
  sub_2393D5D60(&v7, a4, 8);
  if (v8 >= *(&v8 + 1))
  {
    return 0;
  }

  else
  {
    return 0xA50000000BLL;
  }
}

uint64_t sub_239491834(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v5 = a1;
  v6 = xmmword_2395D6780;
  if (!a1)
  {
    *&v6 = 0;
  }

  sub_2393D5DD0(&v5, a2, 2);
  sub_2393D5CDC(&v5, (a3 + 5), 0xBuLL);
  if (v6 >= *(&v6 + 1))
  {
    return 0;
  }

  else
  {
    return 0xAF0000000BLL;
  }
}

unint64_t sub_2394918B4(_BYTE *a1, uint64_t a2, unsigned __int16 *a3)
{
  v6 = *a3;
  if (v6 < sub_2394BE648(a1))
  {
    return 0xB40000002FLL;
  }

  v10 = 0;
  v8 = sub_2394BEB90(a1, a2, *a3, &v10);
  if (v8)
  {
    v9 = v8 & 0xFFFFFFFF00000000;
  }

  else if (*a3 >= v10)
  {
    LODWORD(v8) = 0;
    v9 = 0;
    *a3 = v10;
  }

  else
  {
    v9 = 0xBB00000000;
    LODWORD(v8) = 47;
  }

  return v9 | v8;
}

unint64_t sub_239491970(uint64_t a1, char *a2, size_t a3, char *a4, uint64_t a5, uint64_t a6, _OWORD *a7)
{
  v30 = *MEMORY[0x277D85DE8];
  v7 = (*(a6 + 44) | *(a6 + 46)) == 0;
  v8 = (*(a6 + 44) | *(a6 + 46)) != 0;
  if (!a2)
  {
    v16 = 0xC900000000;
LABEL_10:
    v17 = 47;
    return v17 | v16;
  }

  if (!a3)
  {
    v16 = 0xCA00000000;
    goto LABEL_10;
  }

  if (!a4)
  {
    v16 = 0xCB00000000;
    goto LABEL_10;
  }

  v27 = 128;
  v15 = sub_2394918B4(a6, v29, &v27);
  if (!v15)
  {
    v19 = 16 * v8;
    if (*(a1 + 64))
    {
      sub_238DB6950(v26, a2, a3);
      sub_238DB9BD8(v25, a4, a3);
      v24[0] = &v28;
      v24[1] = v19;
      v20 = *(a1 + 64);
      v23[0] = v29;
      v23[1] = v27;
      v22[0] = a5;
      v22[1] = 13;
      v15 = (*(*v20 + 24))(v20, v26, v23, v22, v24, v25);
    }

    else
    {
      if (*(a1 + 1) != 1)
      {
        v16 = 0xDD00000000;
        LODWORD(v15) = 59;
        goto LABEL_6;
      }

      v15 = sub_2393F7A34(a2, a3, v29, v27, a1 + 8, a5, 0xDuLL, a4, &v28, v19);
    }

    v16 = v15 & 0xFFFFFFFF00000000;
    v21 = v15 != 0 || v7;
    if (!v15)
    {
      v16 = 0;
      LODWORD(v15) = 0;
    }

    if (!v21)
    {
      v16 = 0;
      LODWORD(v15) = 0;
      *a7 = v28;
    }

    goto LABEL_6;
  }

  v16 = v15 & 0xFFFFFFFF00000000;
LABEL_6:
  v17 = v15;
  return v17 | v16;
}

unint64_t sub_239491B88(uint64_t a1, char *a2, size_t a3, char *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v26 = *MEMORY[0x277D85DE8];
  v7 = (*(a6 + 44) | *(a6 + 46)) != 0;
  v24 = 128;
  if (!a2)
  {
    v15 = 0xEF00000000;
LABEL_9:
    LODWORD(v14) = 47;
    return v14 | v15;
  }

  if (!a3)
  {
    v15 = 0xF000000000;
    goto LABEL_9;
  }

  if (!a4)
  {
    v15 = 0xF100000000;
    goto LABEL_9;
  }

  v14 = sub_2394918B4(a6, v25, &v24);
  if (!v14)
  {
    v17 = 16 * v7;
    if (*(a1 + 64))
    {
      sub_238DB6950(v23, a2, a3);
      sub_238DB9BD8(v22, a4, a3);
      sub_238DB6950(v21, a7, v17);
      v18 = *(a1 + 64);
      v20[0] = v25;
      v20[1] = v24;
      v19[0] = a5;
      v19[1] = 13;
      v14 = (*(*v18 + 32))(v18, v23, v20, v19, v21, v22);
      if (v14)
      {
        goto LABEL_5;
      }
    }

    else
    {
      if (*(a1 + 1) != 1)
      {
        v15 = 0x10000000000;
        LODWORD(v14) = 59;
        return v14 | v15;
      }

      v14 = sub_2393F7C50(a2, a3, v25, v24, a7, v17, a1 + 24, a5, 13, a4);
      if (v14)
      {
        goto LABEL_5;
      }
    }

    v15 = 0;
    LODWORD(v14) = 0;
    return v14 | v15;
  }

LABEL_5:
  v15 = v14 & 0xFFFFFFFF00000000;
  return v14 | v15;
}

unint64_t sub_239491D7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v20 = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    v13 = 0x10A00000000;
LABEL_9:
    v14 = 47;
    return v14 | v13;
  }

  if (!a3)
  {
    v13 = 0x10B00000000;
    goto LABEL_9;
  }

  if (!a4)
  {
    v13 = 0x10C00000000;
    goto LABEL_9;
  }

  if (*(a1 + 64))
  {
    sub_238DB6950(v18, a2, a3);
    sub_238DB9BD8(v17, a4, a3);
    sub_239491834(v19, *(a5 + 44), a6);
    v11 = *(a1 + 64);
    v16[0] = v19;
    v16[1] = 13;
    v12 = (*(*v11 + 40))(v11, v18, v16, v17);
    v13 = v12 & 0xFFFFFFFF00000000;
    v14 = v12;
  }

  else
  {
    v13 = 0x10F00000000;
    v14 = 59;
  }

  return v14 | v13;
}

unint64_t sub_239491EC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v20 = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    v13 = 0x11C00000000;
LABEL_9:
    v14 = 47;
    return v14 | v13;
  }

  if (!a3)
  {
    v13 = 0x11D00000000;
    goto LABEL_9;
  }

  if (!a4)
  {
    v13 = 0x11E00000000;
    goto LABEL_9;
  }

  if (*(a1 + 64))
  {
    sub_238DB6950(v18, a2, a3);
    sub_238DB9BD8(v17, a4, a3);
    sub_239491834(v19, *(a5 + 44), a6);
    v11 = *(a1 + 64);
    v16[0] = v19;
    v16[1] = 13;
    v12 = (*(*v11 + 48))(v11, v18, v16, v17);
    v13 = v12 & 0xFFFFFFFF00000000;
    v14 = v12;
  }

  else
  {
    v13 = 0x12100000000;
    v14 = 59;
  }

  return v14 | v13;
}

uint64_t sub_23949200C(unsigned __int8 *a1, int a2, uint64_t a3, int a4, unsigned __int8 **a5)
{
  v5 = 0x2400000000;
  v6 = 47;
  if (a2 && a3)
  {
    v7 = 8832;
    v6 = 9;
    while (*a1)
    {
      if (*a1 == a2)
      {
        if (a4)
        {
          v8 = a1 + 496;
          v9 = 64;
          v6 = 9;
          while (1)
          {
            v5 = *(v8 - 1);
            if (!v5)
            {
              break;
            }

            if (v5 == a3)
            {
              goto LABEL_22;
            }

            v8 += 32;
            v5 = 0x6A00000000;
            v9 -= 32;
            if (!v9)
            {
              return v6 | v5;
            }
          }

          v6 = 0;
          *(v8 - 1) = a3;
          goto LABEL_24;
        }

        v8 = a1 + 16;
        v10 = 480;
        v6 = 9;
        while (1)
        {
          v5 = *(v8 - 1);
          if (!v5)
          {
            break;
          }

          if (v5 == a3)
          {
LABEL_22:
            v5 = 0;
            v6 = 0;
            *a5 = v8;
            return v6 | v5;
          }

          v8 += 32;
          v5 = 0x6A00000000;
          v10 -= 32;
          if (!v10)
          {
            return v6 | v5;
          }
        }

        v6 = 0;
        *(v8 - 1) = a3;
        goto LABEL_26;
      }

      a1 += 552;
      v7 -= 552;
      if (!v7)
      {
        v5 = 0x6F00000000;
        return v6 | v5;
      }
    }

    *a1 = a2;
    v5 = 0;
    v6 = 0;
    if (a4)
    {
      *(a1 + 61) = a3;
      v8 = a1 + 496;
LABEL_24:
      *a5 = v8;
      ++a1[1];
      return v6 | v5;
    }

    *(a1 + 1) = a3;
    v8 = a1 + 16;
LABEL_26:
    *a5 = v8;
    ++a1[2];
  }

  return v6 | v5;
}

uint64_t sub_23949214C(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v4 = 0x7A00000000;
  v5 = 47;
  if (a2 && a3)
  {
    v7 = 0;
    v8 = a1 + 488;
    v9 = (a1 + 40);
    v5 = 216;
    while (1)
    {
      v10 = (a1 + 552 * v7);
      if (*v10 == a2)
      {
        break;
      }

      ++v7;
      v8 += 552;
      v9 += 69;
      if (v7 == 16)
      {
        goto LABEL_6;
      }
    }

    if (a4)
    {
      if (*(v10 + 61) == a3)
      {
        v11 = 0;
      }

      else
      {
        if (*(v10 + 65) != a3)
        {
          v4 = 0x7500000000;
          v5 = 216;
          return v4 | v5;
        }

        v11 = 1;
      }

      v14 = &v10[32 * v11 + 488];
      *v14 = 0;
      *(v14 + 8) = 0;
      if (!*(v10 + 61) && *(v10 + 65))
      {
        v15 = *(v10 + 536);
        *(v10 + 488) = *(v10 + 520);
        *(v10 + 504) = v15;
        *(v10 + 520) = 0u;
        *(v10 + 536) = 0u;
      }

      --v10[1];
    }

    else
    {
      v12 = v10 + 8;
      if (*(v10 + 1) != a3)
      {
        v13 = 0;
        v5 = 216;
        while (v13 != 14)
        {
          v16 = *v9;
          v9 += 4;
          ++v13;
          if (v16 == a3)
          {
            goto LABEL_21;
          }
        }

LABEL_6:
        v4 = 0x7500000000;
        return v4 | v5;
      }

      v13 = 0;
LABEL_21:
      v17 = 0;
      v18 = &v12[32 * v13];
      *v18 = 0;
      *(v18 + 2) = 0;
      do
      {
        v19 = &v12[32 * v17];
        if (!*v19)
        {
          v20 = v8;
          v21 = 15;
          while (--v21 > v17)
          {
            v22 = (v20 - 32);
            v23 = *(v20 - 32);
            v20 -= 32;
            if (v23)
            {
              v24 = v22[1];
              *v19 = *v22;
              *(v19 + 1) = v24;
              *v22 = 0uLL;
              v22[1] = 0uLL;
              break;
            }
          }
        }

        ++v17;
      }

      while (v17 != 15);
      --v10[2];
    }

    if (!*(a1 + 552 * v7 + 1))
    {
      sub_23949239C(a1, v7);
    }

    v5 = 0;
    v4 = 0;
  }

  return v4 | v5;
}

BOOL sub_239492318(uint64_t a1, void *a2, uint64_t a3, unsigned int a4)
{
  if (!a4)
  {
    return 0;
  }

  if (*a2 != a3)
  {
    v6 = 0;
    v5 = a2;
    while (a4 - 1 != v6)
    {
      v7 = v5[4];
      v5 += 4;
      ++v6;
      if (v7 == a3)
      {
        v4 = v6 < a4;
        goto LABEL_8;
      }
    }

    return 0;
  }

  v4 = 1;
  v5 = a2;
LABEL_8:
  *v5 = 0;
  *(v5 + 2) = 0;
  sub_239492514(a1, a2, a4);
  return v4;
}

void sub_23949239C(uint64_t a1, unsigned int a2)
{
  if (a2 <= 0xF)
  {
    v4 = a1 + 552 * a2;
    bzero(v4, 0x228uLL);
    v5 = (v4 + 16);
    v6 = 480;
    do
    {
      *(v5 - 1) = 0;
      *v5 = 0;
      v5 += 8;
      v6 -= 32;
    }

    while (v6);
    *(v4 + 488) = 0;
    *(v4 + 496) = 0;
    *(v4 + 520) = 0;
    *(v4 + 528) = 0;
    if (a2 != 15)
    {
      v7 = 15;
      while (1)
      {
        v8 = (a1 + 552 * v7);
        if (*v8)
        {
          break;
        }

        if (--v7 <= a2)
        {
          return;
        }
      }

      memcpy(v4, (a1 + 552 * v7), 0x228uLL);
      bzero(v8, 0x228uLL);
      v9 = (a1 + 552 * v7 + 16);
      v10 = 480;
      do
      {
        *(v9 - 1) = 0;
        *v9 = 0;
        v9 += 8;
        v10 -= 32;
      }

      while (v10);
      *(v8 + 61) = 0;
      *(v8 + 124) = 0;
      *(v8 + 65) = 0;
      *(v8 + 132) = 0;
    }
  }
}

uint64_t sub_239492490(unsigned __int8 *a1, int a2)
{
  if (a2)
  {
    v2 = 0;
    v3 = 216;
    for (i = a1; *i != a2; i += 552)
    {
      if (++v2 == 16)
      {
        v5 = 0xA600000000;
        return v3 | v5;
      }
    }

    sub_23949239C(a1, v2);
    v5 = 0;
    v3 = 0;
  }

  else
  {
    v5 = 0xAA00000000;
    v3 = 47;
  }

  return v3 | v5;
}

void sub_239492514(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (a2 && a3)
  {
    for (i = 0; i != a3; ++i)
    {
      v4 = (a2 + 32 * i);
      if (!*v4)
      {
        v5 = a2 + 32 * a3;
        v6 = a3;
        while (--v6 > i)
        {
          v7 = (v5 - 32);
          v8 = *(v5 - 32);
          v5 -= 32;
          if (v8)
          {
            v9 = v7[1];
            *v4 = *v7;
            v4[1] = v9;
            *v7 = 0uLL;
            v7[1] = 0uLL;
            break;
          }
        }
      }
    }
  }
}

void *sub_239492578(void *a1, uint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  sub_2394925A4(a1, a2);
  return a1;
}

uint64_t sub_2394925A4(uint64_t a1, uint64_t a2)
{
  v14 = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    return 0x10E0000002FLL;
  }

  *(a1 + 8) = a2;
  v10 = 4;
  v9 = 0;
  v11 = *"g/gcc";
  v12 = unk_2395D67C0;
  v13 = 0;
  result = (*(*a2 + 16))(a2, &v11, &v9, &v10);
  if (result)
  {
    if (result != 160)
    {
      return result;
    }

    v4 = (sub_2393F56E0() & 0xFFFFFFF) + 1;
  }

  else
  {
    v4 = v9;
  }

  *(a1 + 4) = v4;
  v5 = *(a1 + 8);
  v11 = *"g/gdc";
  v12 = unk_2395D67E2;
  v13 = 0;
  result = (*(*v5 + 16))(v5, &v11, &v9, &v10);
  if (result)
  {
    if (result != 160)
    {
      return result;
    }

    v6 = (sub_2393F56E0() & 0xFFFFFFF) + 1;
  }

  else
  {
    v6 = v9;
  }

  *a1 = v6;
  v9 = *(a1 + 4) + 1000;
  v10 = 4;
  v7 = *(a1 + 8);
  v11 = *"g/gcc";
  v12 = unk_2395D67C0;
  v13 = 0;
  result = (*(*v7 + 24))(v7, &v11, &v9, 4);
  if (!result)
  {
    v9 = *a1 + 1000;
    v8 = *(a1 + 8);
    v11 = *"g/gdc";
    v12 = unk_2395D67E2;
    v13 = 0;
    return (*(*v8 + 24))(v8, &v11, &v9, v10);
  }

  return result;
}

uint64_t sub_2394927A8(uint64_t a1, int a2)
{
  v2 = 4;
  if (!a2)
  {
    v2 = 0;
  }

  return *(a1 + v2);
}

unint64_t sub_2394927BC(uint64_t a1, int a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v11 = 0;
  v10 = 4;
  v12 = 0u;
  v13 = 0u;
  if (a2)
  {
    v3 = *(a1 + 4) + 1;
    *(a1 + 4) = v3;
    v4 = "g/gcc";
  }

  else
  {
    v3 = *a1 + 1;
    *a1 = v3;
    v4 = "g/gdc";
  }

  v5 = *(v4 + 1);
  v12 = *v4;
  v13 = v5;
  v14 = 0;
  v6 = *(a1 + 8);
  if (v6)
  {
    v7 = (*(*v6 + 16))(v6, &v12, &v11, &v10);
    if (!v7)
    {
      if (v11 != v3)
      {
        v8 = 0;
        LODWORD(v7) = 0;
        return v7 | v8;
      }

      v11 = v3 + 1000;
      v7 = (*(**(a1 + 8) + 24))(*(a1 + 8), &v12, &v11, 4);
    }

    v8 = v7 & 0xFFFFFFFF00000000;
  }

  else
  {
    v8 = 0x15900000000;
    LODWORD(v7) = 160;
  }

  return v7 | v8;
}

unint64_t sub_239492914(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v17 = *MEMORY[0x277D85DE8];
  if (*a5)
  {
    if (**a5)
    {
      v5 = 0x2B00000000;
      LODWORD(v6) = 24;
    }

    else
    {
      v6 = sub_2394BEF90(a3, a5);
      if (v6 || (v12 = *(*a5 + 8), v11 = *(*a5 + 16), v6 = sub_239491970(a1, v12, v11, v12, a2, a4, &v16), v6) || (v15 = 0, v13 = sub_2393D980C(*a5), v6 = sub_2394BF0DC(&v16, a4, &v12[v11], v13, &v15), v6))
      {
        v5 = v6 & 0xFFFFFFFF00000000;
      }

      else
      {
        sub_2393D97A0(*a5, v11 + v15, 0);
        LODWORD(v6) = 0;
        v5 = 0;
      }
    }
  }

  else
  {
    v5 = 0x2A00000000;
    LODWORD(v6) = 47;
  }

  return v5 | v6;
}

unint64_t sub_239492A50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = *a5;
  if (!*a5)
  {
    v9 = 0x4000000000;
    v10 = 47;
    return v9 | v10;
  }

  v7 = *(v5 + 24);
  v8 = (*(a4 + 44) | *(a4 + 46)) != 0;
  if (v7 >= 16 * ((*(a4 + 44) | *(a4 + 46)) != 0))
  {
    v15 = *(v5 + 8);
    v16 = 16 * ((*(a4 + 44) | *(a4 + 46)) != 0);
    v20 = 0;
    v17 = v7 - v16;
    v18 = sub_2394BF070(&v21, a4, &v15[v7 - v16], 16 * v8, &v20);
    if (v18)
    {
      goto LABEL_6;
    }

    if (v20 != v16)
    {
      v9 = 0x5500000000;
      LODWORD(v18) = 172;
      goto LABEL_7;
    }

    sub_2393D97A0(*a5, v17, 0);
    v18 = sub_239491B88(a1, v15, v17, *(*a5 + 8), a2, a4, &v21);
    if (v18 || (v18 = sub_2394BEB24(a3, a5), v18))
    {
LABEL_6:
      v9 = v18 & 0xFFFFFFFF00000000;
    }

    else
    {
      LODWORD(v18) = 0;
      v9 = 0;
    }

LABEL_7:
    v10 = v18;
    return v9 | v10;
  }

  v9 = 0x5000000000;
  v10 = 24;
  return v9 | v10;
}

void sub_239492BE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, __int16 a6, uint64_t *a7)
{
  v23 = *MEMORY[0x277D85DE8];
  if (*(a1 + 56) != 1)
  {
    sub_239533EA4();
  }

  v7 = *(a3 + 8);
  if (v7 != *(a2 + 8))
  {
    sub_239533F3C();
  }

  v9 = *(a1 + 57);
  if (v9 == 2)
  {
    if (!*(a3 + 8))
    {
      sub_23953406C();
    }

    if ((*a3 - 1) > 0xFFFFFFEFFFFFFFFELL || (*a2 - 1) >= 0xFFFFFFEFFFFFFFFFLL)
    {
      sub_239533FD4();
    }
  }

  else if (v9 == 1 && v7 != 0)
  {
    sub_239534104();
  }

  *(a1 + 72) = *a3;
  *(a1 + 64) = *a2;
  *(a1 + 80) = a4;
  *(a1 + 88) = a5;
  *(a1 + 94) = a6;
  v11 = *a7;
  *(a1 + 152) = *(a7 + 4);
  *(a1 + 144) = v11;
  LODWORD(v11) = *(a7 + 12);
  *(a1 + 156) = v11;
  if (v11 == 1)
  {
    *(a1 + 158) = *(a7 + 7);
  }

  v12 = *(a7 + 16);
  *(a1 + 160) = v12;
  if (v12 == 1)
  {
    *(a1 + 162) = *(a7 + 9);
  }

  v13 = *(a7 + 20);
  *(a1 + 164) = v13;
  if (v13 == 1)
  {
    *(a1 + 168) = *(a7 + 6);
  }

  *(a1 + 172) = *(a7 + 14);
  *(a1 + 24) = *(a3 + 8);
  sub_239492E1C(a1);
  (*(*a1 + 24))(a1);
  sub_239492ECC(a1, 2);
  if (*(a1 + 57) == 2)
  {
    sub_239493084(*(a1 + 48), a1);
  }

  v14 = sub_2393D9044(1u);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v15 = *(a1 + 57);
    v16 = *(a1 + 92);
    *buf = 134218496;
    v18 = a1;
    v19 = 1024;
    v20 = v15;
    v21 = 1024;
    v22 = v16;
    _os_log_impl(&dword_238DAE000, v14, OS_LOG_TYPE_INFO, "SecureSession[%p]: Activated - Type:%d LSID:%d", buf, 0x18u);
  }

  if (sub_2393D5398(3u))
  {
    sub_2393D5320(1, 3, "SecureSession[%p]: Activated - Type:%d LSID:%d", a1, *(a1 + 57), *(a1 + 92));
  }
}

void sub_239492E1C(uint64_t a1)
{
  *(a1 + 136) = (*(*off_27DF765E8 + 2))(off_27DF765E8);
  *(a1 + 128) = (*(*off_27DF765E8 + 2))(off_27DF765E8);
  if (*(a1 + 56) == 3)
  {

    sub_239492ECC(a1, 2);
  }
}

void sub_239492ECC(uint64_t result, int a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = *(result + 56);
  if (v2 != a2)
  {
    v3 = a2;
    v5 = sub_2393D9044(0xBu);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      if ((v2 - 1) > 3u)
      {
        v6 = "???";
      }

      else
      {
        v6 = off_278A83040[(v2 - 1)];
      }

      v7 = *(result + 92);
      if ((v3 - 1) > 3u)
      {
        v8 = "???";
      }

      else
      {
        v8 = off_278A83040[(v3 - 1)];
      }

      *buf = 134218754;
      v12 = result;
      v13 = 1024;
      v14 = v7;
      v15 = 2080;
      v16 = v6;
      v17 = 2080;
      v18 = v8;
      _os_log_impl(&dword_238DAE000, v5, OS_LOG_TYPE_DEFAULT, "SecureSession[%p, LSID:%d]: State change '%s' --> '%s'", buf, 0x26u);
    }

    if (sub_2393D5398(2u))
    {
      if ((*(result + 56) - 1) > 3u)
      {
        v9 = "???";
      }

      else
      {
        v9 = off_278A83040[(*(result + 56) - 1)];
      }

      if ((v3 - 1) > 3u)
      {
        v10 = "???";
      }

      else
      {
        v10 = off_278A83040[(v3 - 1)];
      }

      sub_2393D5320(11, 2, "SecureSession[%p, LSID:%d]: State change '%s' --> '%s'", result, *(result + 92), v9, v10);
    }

    *(result + 56) = v3;
  }
}

uint64_t sub_239493084(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  if (*(a2 + 57) != 2)
  {
    sub_23953419C();
  }

  v4 = &v3;
  return sub_2393D6A10((a1 + 24), &v4, sub_2394939B4);
}

const char *sub_2394930D8(uint64_t a1, char a2)
{
  if ((a2 - 1) > 3u)
  {
    return "???";
  }

  else
  {
    return off_278A83040[(a2 - 1)];
  }
}

uint64_t sub_239493108(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = sub_2393D9044(1u);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 57);
    v4 = *(a1 + 92);
    *buf = 134218496;
    v8 = a1;
    v9 = 1024;
    v10 = v3;
    v11 = 1024;
    v12 = v4;
    _os_log_impl(&dword_238DAE000, v2, OS_LOG_TYPE_INFO, "SecureSession[%p]: MarkAsDefunct Type:%d LSID:%d", buf, 0x18u);
  }

  if (sub_2393D5398(3u))
  {
    sub_2393D5320(1, 3, "SecureSession[%p]: MarkAsDefunct Type:%d LSID:%d", a1, *(a1 + 57), *(a1 + 92));
  }

  (*(*a1 + 24))(a1);
  v5 = *(a1 + 56);
  if (v5 == 2)
  {
    sub_239492ECC(a1, 3);
  }

  else if (v5 == 1)
  {
    sub_239534234();
  }

  return (*(*a1 + 32))(a1);
}

uint64_t sub_239493268(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = sub_2393D9044(1u);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 57);
    v4 = *(a1 + 92);
    *buf = 134218496;
    v8 = a1;
    v9 = 1024;
    v10 = v3;
    v11 = 1024;
    v12 = v4;
    _os_log_impl(&dword_238DAE000, v2, OS_LOG_TYPE_INFO, "SecureSession[%p]: MarkForEviction Type:%d LSID:%d", buf, 0x18u);
  }

  if (sub_2393D5398(3u))
  {
    sub_2393D5320(1, 3, "SecureSession[%p]: MarkForEviction Type:%d LSID:%d", a1, *(a1 + 57), *(a1 + 92));
  }

  (*(*a1 + 24))(a1);
  v5 = *(a1 + 56);
  if ((v5 - 2) < 2)
  {
    (*(*a1 + 32))(a1);
LABEL_8:
    sub_239492ECC(a1, 4);
    sub_2394933FC(a1);
    return (*(*a1 + 32))(a1);
  }

  if (v5 == 1)
  {
    goto LABEL_8;
  }

  return (*(*a1 + 32))(a1);
}

uint64_t sub_2394933FC(void *a1)
{
  (*(*a1 + 24))(a1);
  while (1)
  {
    v2 = a1[2];
    if (v2 == a1 + 1)
    {
      break;
    }

    if (v2)
    {
      v3 = v2 - 1;
    }

    else
    {
      v3 = 0;
    }

    (*(*v3 + 16))(v3);
  }

  v4 = *(*a1 + 32);

  return v4(a1);
}

uint64_t sub_2394934B8@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 21) = 0;
  v3 = *(result + 72);
  if (v3 - 1 <= 0xFFFFFFEFFFFFFFFELL)
  {
    *(a2 + 1) = 64;
    v4 = *(result + 80);
    *(a2 + 8) = v3;
    *(a2 + 16) = v4;
    *(a2 + 24) = *(result + 88);
LABEL_3:
    *a2 = *(result + 24);
    result = (*(*result + 104))(result);
    *(a2 + 28) = result;
    return result;
  }

  if (HIDWORD(v3) != 4294967291)
  {
    sub_2395342CC();
  }

  if (*(result + 177) == 1 && *(result + 176) == 1)
  {
    *(a2 + 1) = 32;
    *(a2 + 8) = v3;
    goto LABEL_3;
  }

  return result;
}

_WORD *sub_2394935B4(_WORD *a1, uint64_t a2)
{
  v2 = *a1;
  if (v2 == 0xFFFF)
  {
    sub_23953166C();
  }

  *a1 = v2 + 1;
  return a1 - 20;
}

void sub_2394935E8(uint64_t result, uint64_t a2)
{
  if (!*result)
  {
    sub_2395315D4();
  }

  v3 = *result - 1;
  *result = v3;
  if (!v3)
  {
    v4 = (result - 40);
    v5 = *(result + 8) + 8;

    sub_239493904(v5, v4);
  }
}

uint64_t sub_239493630(uint64_t result, uint64_t a2)
{
  v2 = result + 8;
  v3 = *(result + 16);
  if (v3 != result + 8)
  {
    do
    {
      v5 = *(v3 + 8);
      if (v3)
      {
        v6 = v3 - 8;
      }

      else
      {
        v6 = 0;
      }

      result = (*(*v6 + 24))(v6, a2);
      v3 = v5;
    }

    while (v5 != v2);
  }

  return result;
}

void sub_2394936B0(uint64_t a1)
{
  sub_239493B9C(a1);

  JUMPOUT(0x23EE77B60);
}

uint64_t sub_239493740(void *a1)
{
  v2 = (*(*off_27DF765E8 + 2))(off_27DF765E8) - a1[17];
  LODWORD(v2) = v2 < *((*(*a1 + 88))(a1) + 8);
  return *((*(*a1 + 88))(a1) + 4 * v2);
}

uint64_t sub_2394937F8(uint64_t a1, int a2)
{
  v2 = *(a1 + 112);
  switch(v2)
  {
    case 3:
      return 30000;
    case 2:
      return 15000;
    case 1:
      return sub_239476070(*(a1 + 148), *(a1 + 144), *(a1 + 136), *(a1 + 152), a2);
  }

  return 0;
}

uint64_t sub_239493844(uint64_t a1, unsigned int a2, int a3)
{
  v5 = *(a1 + 112);
  if (v5 == 3)
  {
    return 30000;
  }

  if (v5 == 2)
  {
    return 15000;
  }

  if (v5 != 1)
  {
    return 0;
  }

  v15 = v3;
  v16 = v4;
  sub_239476008(v14);
  v8 = sub_239476060();
  v12 = v8;
  v13 = v9;
  if (v14[0] == 1)
  {
    v10 = sub_238DD173C(v14, v9);
    LODWORD(v8) = *v10;
    LOWORD(v9) = *(v10 + 4);
  }

  else
  {
    v10 = &v12;
  }

  return sub_239476070(*(v10 + 1), v8, a2, v9, a3);
}

void sub_239493904(uint64_t a1, void (***a2)(void))
{
  if (a2)
  {
    v4 = sub_2393D69E8((a1 + 16), a2);
    if (!v4)
    {
      sub_239532AB8();
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

uint64_t sub_2394939B8(uint64_t **a1, uint64_t a2)
{
  if (**a1 != a2)
  {
    v15[5] = v2;
    v15[6] = v3;
    (*(*a2 + 24))(a2);
    if (*(a2 + 57) == 2)
    {
      v6 = (*(*a2 + 48))(a2);
      v8 = v7;
      if (v6 == (*(***a1 + 48))(**a1) && v8 == v9 && sub_239220F58(a2 + 80, **a1 + 80))
      {
        v10 = **a1;
        v15[0] = v10;
        (*(*v10 + 24))(v10);
        v11 = *(a2 + 16);
        if (v11 != a2 + 8)
        {
          do
          {
            v12 = *(v11 + 8);
            if (v11)
            {
              v13 = v11 - 8;
            }

            else
            {
              v13 = 0;
            }

            (*(*v13 + 24))(v13, v15);
            v11 = v12;
          }

          while (v12 != a2 + 8);
          v10 = v15[0];
        }

        (*(*v10 + 32))(v10);
      }
    }

    (*(*a2 + 32))(a2);
  }

  return 0;
}

uint64_t sub_239493B9C(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  *a1 = &unk_284BBBD48;
  v2 = sub_2393D9044(1u);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 57);
    v4 = *(a1 + 92);
    *buf = 134218496;
    v8 = a1;
    v9 = 1024;
    v10 = v3;
    v11 = 1024;
    v12 = v4;
    _os_log_impl(&dword_238DAE000, v2, OS_LOG_TYPE_INFO, "SecureSession[%p]: Released - Type:%d LSID:%d", buf, 0x18u);
  }

  if (sub_2393D5398(3u))
  {
    sub_2393D5320(1, 3, "SecureSession[%p]: Released - Type:%d LSID:%d", a1, *(a1 + 57), *(a1 + 92));
  }

  *(a1 + 264) = 0;
  sub_239491488(a1 + 176);
  sub_239493CBC(a1, v5);
  return a1;
}

void *sub_239493CBC(void *a1, uint64_t a2)
{
  *a1 = &unk_284BBBE30;
  v3 = a1[4];
  if (v3)
  {
    sub_2393E9744(v3, a2);
    a1[4] = 0;
  }

  sub_239493D14((a1 + 1), a2);
  return a1;
}

void *sub_239493D14(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) != a1)
  {
    sub_239534364();
  }

  sub_23948BDE8(a1, a2);

  return sub_238EA9350(a1);
}

unint64_t *sub_239493D5C@<X0>(unint64_t *result@<X0>, int a2@<W1>, __int16 a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W6>, __int16 a8@<W7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v17 = a6;
  v18 = a7;
  v16 = a2;
  v15 = a3;
  v13 = a5;
  v14 = a4;
  v12 = a8;
  if ((a2 != 2 || a5 && a4 && a10) && (result = sub_239493E24(result + 1, result, &v16, &v15, &v14, &v13, &v17, &v12, &a10, a11)) != 0)
  {
    *a9 = 1;
    *(a9 + 8) = result;
    return (*(*result + 24))(result);
  }

  else
  {
    *a9 = 0;
  }

  return result;
}

void *sub_239493E24(unint64_t *a1, uint64_t a2, char *a3, unsigned __int16 *a4, uint64_t *a5, uint64_t *a6, uint64_t a7, __int16 *a8, char *a9, uint64_t a10)
{
  v18 = sub_2393D52C4(0x120uLL);
  v19 = v18;
  if (v18)
  {
    sub_239494CA4(v18, a2, *a3, *a4, *a5, *a6, *a7, *(a7 + 8), *a8, *a9, a10);
    v20 = sub_2393D52C4(0x18uLL);
    if (v20)
    {
      *v20 = v19;
      v20[1] = a1 + 2;
      v20[2] = 0;
      v21 = a1[4];
      v20[2] = v21;
      *(v21 + 8) = v20;
      a1[4] = v20;
      v22 = a1[1];
      v23 = *a1 + 1;
      *a1 = v23;
      if (v23 > v22)
      {
        a1[1] = v23;
      }
    }

    else
    {
      return 0;
    }
  }

  return v19;
}

void *sub_239493F20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _BYTE *a5@<X8>)
{
  v20 = a3;
  v21 = a4;
  v19 = a2;
  v17[0] = 0;
  result = sub_2394940AC(a1, v16);
  if (v16[0] != 1)
  {
    goto LABEL_9;
  }

  v9 = *(a1 + 8);
  v10 = sub_238EAB248(v16, v8);
  if (v9 > 0x3E7)
  {
    result = sub_239494244();
    if (result)
    {
      goto LABEL_4;
    }

LABEL_9:
    *a5 = 0;
    return result;
  }

  result = sub_239494198((a1 + 8), a1, &v19, v10);
  if (!result)
  {
    goto LABEL_9;
  }

LABEL_4:
  v14[0] = 1;
  v15 = result;
  (*(*result + 24))(result);
  sub_2393DECA4(v17, v14);
  if (v14[0] == 1)
  {
    (*(*v15 + 32))(v15);
  }

  if (*sub_238EAB248(v16, v11) == -1)
  {
    v13 = 1;
  }

  else
  {
    v13 = *sub_238EAB248(v16, v12) + 1;
  }

  *(a1 + 64) = v13;
  result = sub_239494C10(a5, v17);
  if (v17[0])
  {
    return (*(*v18 + 32))(v18);
  }

  return result;
}

uint64_t sub_2394940AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = -64;
  while (1)
  {
    v5 = v4 + *(a1 + 64);
    v14 = v5 + 64;
    v6 = -64 - v5;
    v7 = (v6 & 0xFFC0) != 0 ? 0 : 1 << v6;
    v13 = v7;
    v15[0] = &v14;
    v15[1] = &v13;
    result = sub_2393D6A10((a1 + 24), v15, sub_2394952BC);
    v9 = v13;
    if (v13 != -1)
    {
      break;
    }

    v4 += 64;
    if (v4 >> 6 > 0x3FE)
    {
      *a2 = 0;
      return result;
    }
  }

  v10 = 0;
  if (v13)
  {
    do
    {
      v11 = v9;
      v9 >>= 1;
      ++v10;
    }

    while ((v11 & 2) != 0);
  }

  v12 = v14 + v10;
  *a2 = 1;
  *(a2 + 2) = v12;
  return result;
}

void *sub_239494198(unint64_t *a1, uint64_t a2, char *a3, unsigned __int16 *a4)
{
  v8 = sub_2393D52C4(0x120uLL);
  v9 = v8;
  if (v8)
  {
    sub_239494F68(v8, a2, *a3, *a4);
    v10 = sub_2393D52C4(0x18uLL);
    if (v10)
    {
      *v10 = v9;
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

  return v9;
}

void *sub_239494244()
{
  v0 = MEMORY[0x28223BE20]();
  v60 = *MEMORY[0x277D85DE8];
  v41 = v1;
  v40 = v2;
  if (*v0 == 1)
  {
    sub_23953463C();
  }

  v4 = v3;
  v5 = v2;
  v6 = v1;
  v7 = v0;
  *v0 = 1;
  v8 = sub_2393D9044(0xBu);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109376;
    v57 = v6;
    v58 = 1024;
    v59[0] = v5;
    _os_log_impl(&dword_238DAE000, v8, OS_LOG_TYPE_DEFAULT, "Evicting a slot for session with LSID: %d, type: %u", buf, 0xEu);
  }

  if (sub_2393D5398(2u))
  {
    sub_2393D5320(11, 2, "Evicting a slot for session with LSID: %d, type: %u", v6, v5);
  }

  if (*(v7 + 8) >= 0x3E9uLL)
  {
    sub_239534594();
  }

  v39 = 0;
  *v42 = &v39;
  *&v42[8] = buf;
  *&v42[16] = v7;
  v9 = sub_2393D6A10((v7 + 24), v42, sub_239495188);
  v10 = *(v7 + 8);
  v11 = *v4;
  v12 = v4[1];
  v37[0] = buf;
  v37[1] = v10;
  v37[2] = v11;
  v38 = v12;
  sub_239494818(v9, v37);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *v42 = 0;
    _os_log_impl(&dword_238DAE000, v8, OS_LOG_TYPE_DEFAULT, "Sorted sessions for eviction...", v42, 2u);
  }

  if (sub_2393D5398(2u))
  {
    sub_2393D5320(11, 2, "Sorted sessions for eviction...");
  }

  v13 = *(v7 + 8);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *v42 = 0;
    _os_log_impl(&dword_238DAE000, v8, OS_LOG_TYPE_INFO, "Sorted Eviction Candidates (ranked from best candidate to worst):", v42, 2u);
  }

  if (sub_2393D5398(3u))
  {
    sub_2393D5320(11, 3, "Sorted Eviction Candidates (ranked from best candidate to worst):");
  }

  if (!v13)
  {
LABEL_30:
    sub_23953453C(v8);
  }

  v14 = 0;
  v15 = 16 * v13;
  do
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v16 = *&buf[v14];
      (*(*v16 + 48))(v16);
      v18 = v17;
      v19 = (*(**&buf[v14] + 48))() >> 32;
      v20 = (*(**&buf[v14] + 48))();
      v21 = sub_2394930D8(*&buf[v14], *(*&buf[v14] + 56));
      v22 = *(&v58 + v14);
      v23 = LOWORD(v59[v14 / 4]);
      v24 = *(*&buf[v14] + 128);
      *v42 = 134220034;
      *&v42[4] = v14 >> 4;
      *&v42[12] = 2048;
      *&v42[14] = v16;
      *&v42[22] = 1024;
      v43 = v18;
      v44 = 1024;
      v45 = v19;
      v46 = 1024;
      v47 = v20;
      v48 = 2080;
      v49 = v21;
      v50 = 1024;
      v51 = v22;
      v52 = 1024;
      v53 = v23;
      v54 = 2048;
      v55 = v24;
      _os_log_impl(&dword_238DAE000, v8, OS_LOG_TYPE_INFO, "\t%ld: [%p] -- Peer: [%u:%08X%08X] State: '%s', NumMatchingOnFabric: %d NumMatchingOnPeer: %d ActivityTime: %lu", v42, 0x48u);
    }

    if (sub_2393D5398(3u))
    {
      v25 = &buf[v14];
      v26 = *&buf[v14];
      (*(*v26 + 48))(v26);
      v28 = v27;
      v29 = (*(**&buf[v14] + 48))() >> 32;
      v30 = (*(**&buf[v14] + 48))();
      v31 = sub_2394930D8(*v25, *(*v25 + 56));
      sub_2393D5320(11, 3, "\t%ld: [%p] -- Peer: [%u:%08X%08X] State: '%s', NumMatchingOnFabric: %d NumMatchingOnPeer: %d ActivityTime: %lu", v14 >> 4, v26, v28, v29, v30, v31, *(v25 + 4), *(v25 + 5), *(*v25 + 128));
    }

    v14 += 16;
  }

  while (v15 != v14);
  v32 = 0;
  v36 = (v7 + 8);
  while (1)
  {
    v33 = *&buf[v32];
    if (*(v33 + 56) != 4)
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *v42 = 134217984;
        *&v42[4] = v33;
        _os_log_impl(&dword_238DAE000, v8, OS_LOG_TYPE_DEFAULT, "Candidate Session[%p] - Attempting to evict...", v42, 0xCu);
      }

      if (sub_2393D5398(2u))
      {
        sub_2393D5320(11, 2, "Candidate Session[%p] - Attempting to evict...", *&buf[v32]);
      }

      v34 = *v36;
      sub_239493268(*&buf[v32]);
      if (*v36 < v34)
      {
        break;
      }
    }

    v32 += 16;
    if (v15 == v32)
    {
      goto LABEL_30;
    }
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *v42 = 0;
    _os_log_impl(&dword_238DAE000, v8, OS_LOG_TYPE_DEFAULT, "Successfully evicted a session!", v42, 2u);
  }

  if (sub_2393D5398(2u))
  {
    sub_2393D5320(11, 2, "Successfully evicted a session!");
  }

  result = sub_239494198(v36, v7, &v40, &v41);
  *v7 = 0;
  return result;
}

void sub_239494818(uint64_t a1, uint64_t *a2)
{
  v30 = a2[1];
  if (v30 < 2)
  {
    return;
  }

  v3 = *a2;
  v4 = 1;
  do
  {
    v5 = (v3 + 16 * v4);
    v6 = *v5;
    v7 = *(v5 + 4);
    v33 = *(v5 + 5);
    v31 = *(v5 + 3);
    LODWORD(v8) = v4;
    v32 = v4;
    if (v4 < 1)
    {
      goto LABEL_35;
    }

    v8 = v4 & 0x7FFFFFFF;
    v9 = (v3 + 16 * v8);
    v34 = *v5;
    while (1)
    {
      v10 = v8 - 1;
      v11 = (v3 + 16 * (v8 - 1));
      v12 = v11[4];
      v13 = v7 > v12;
      if (v7 != v12)
      {
        goto LABEL_25;
      }

      (*(*v6 + 48))(v6);
      v15 = v14;
      v16 = *(a2 + 24);
      v17 = v16 == v14;
      (*(**v11 + 48))();
      v19 = *(a2 + 24);
      if (v17 == (v19 == v18))
      {
        v20 = v11[5];
        v13 = v33 > v20;
        if (v33 == v20)
        {
          v6 = v34;
          v22 = 0;
          if ((*(*v34 + 48))(v34) == a2[2] && *(a2 + 24) == v21)
          {
            v23 = (*(*v34 + 40))(v34) ^ 1;
            if (v33)
            {
              v22 = 1;
            }

            else
            {
              v22 = v23;
            }
          }

          v24 = (*(**v11 + 48))();
          v26 = 0;
          if (v24 == a2[2] && *(a2 + 24) == v25)
          {
            v26 = (*(**v11 + 40))() ^ 1;
            if (v11[5])
            {
              v26 = 1;
            }
          }

          v13 = v22 > v26;
          if (v22 == v26)
          {
            v27 = *(v34 + 56) == 3 ? 2 : (*(*v34 + 40))(v34);
            v28 = *(*v11 + 56) == 3 ? 2 : (*(**v11 + 40))(*v11);
            v13 = v27 > v28;
            if (v27 == v28)
            {
              v10 = v8 - 1;
              if (*(v34 + 128) >= *(*v11 + 128))
              {
                goto LABEL_35;
              }

              goto LABEL_27;
            }
          }
        }

        else
        {
          v6 = v34;
        }

        v10 = v8 - 1;
LABEL_25:
        if (!v13)
        {
          goto LABEL_35;
        }

        goto LABEL_27;
      }

      if (v16 != v15)
      {
        break;
      }

      v6 = v34;
      v10 = v8 - 1;
      if (v19 == v18)
      {
        goto LABEL_35;
      }

LABEL_27:
      *v9-- = *v11;
      v8 = v10;
      if ((v10 + 1) <= 1)
      {
        LODWORD(v8) = 0;
        goto LABEL_35;
      }
    }

    v6 = v34;
LABEL_35:
    v29 = v3 + 16 * v8;
    *v29 = v6;
    *(v29 + 8) = v7;
    *(v29 + 10) = v33;
    *(v29 + 12) = v31;
    v4 = v32 + 1;
  }

  while (v32 + 1 != v30);
}

uint64_t sub_239494B78@<X0>(uint64_t a1@<X0>, __int16 a2@<W1>, uint64_t a3@<X8>)
{
  v7 = a2;
  v6 = 0;
  v8[0] = &v7;
  v8[1] = &v6;
  sub_2393D6A10((a1 + 24), v8, sub_239495290);
  result = v6;
  if (v6)
  {
    *(a3 + 8) = v6;
    result = (*(*result + 24))(result);
    v5 = 1;
  }

  else
  {
    v5 = 0;
  }

  *a3 = v5;
  return result;
}

uint64_t sub_239494C10(uint64_t a1, unsigned __int8 *a2)
{
  *a1 = 0;
  v3 = *a2;
  *a1 = v3;
  if (v3 == 1)
  {
    v5 = *(a2 + 1);
    *(a1 + 8) = v5;
    (*(*v5 + 24))(v5);
    (*(**(a2 + 1) + 32))(*(a2 + 1));
    *a2 = 0;
  }

  return a1;
}

uint64_t sub_239494CA4(uint64_t a1, uint64_t a2, char a3, __int16 a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, __int16 a9, char a10, uint64_t a11)
{
  v23 = *MEMORY[0x277D85DE8];
  *(a1 + 8) = a1 + 8;
  *(a1 + 16) = a1 + 8;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *a1 = &unk_284BBBD48;
  *(a1 + 48) = a2;
  *(a1 + 56) = 1;
  *(a1 + 57) = a3;
  *(a1 + 58) = 0;
  *(a1 + 64) = a5;
  *(a1 + 72) = a6;
  *(a1 + 80) = a7;
  *(a1 + 88) = a8;
  *(a1 + 92) = a4;
  *(a1 + 94) = a9;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 114) = 5540;
  *(a1 + 116) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = (*(*off_27DF765E8 + 2))(off_27DF765E8);
  *(a1 + 136) = (*(*off_27DF765E8 + 2))(off_27DF765E8);
  v12 = *(a11 + 8);
  *(a1 + 144) = *a11;
  *(a1 + 152) = v12;
  *(a1 + 156) = 0;
  *(a1 + 160) = 0;
  *(a1 + 164) = 0;
  *(a1 + 172) = 1;
  sub_2394913C4(a1 + 176);
  *(a1 + 248) = &unk_284BBBEC0;
  *(a1 + 256) = sub_2393F56E0() & 0xFFFFFFF;
  *(a1 + 264) = 0;
  sub_239492ECC(a1, 2);
  (*(*a1 + 24))(a1);
  *(a1 + 24) = a10;
  v13 = sub_2393D9044(1u);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = *(a1 + 57);
    v15 = *(a1 + 92);
    *buf = 134218496;
    v18 = a1;
    v19 = 1024;
    v20 = v14;
    v21 = 1024;
    v22 = v15;
    _os_log_impl(&dword_238DAE000, v13, OS_LOG_TYPE_INFO, "SecureSession[%p]: Allocated for Test Type:%d LSID:%d", buf, 0x18u);
  }

  if (sub_2393D5398(3u))
  {
    sub_2393D5320(1, 3, "SecureSession[%p]: Allocated for Test Type:%d LSID:%d", a1, *(a1 + 57), *(a1 + 92));
  }

  return a1;
}

uint64_t sub_239494F24(uint64_t a1, _DWORD *a2)
{
  v2 = *(a1 + 8);
  if (v2 == -1)
  {
    v3 = 0x6100000000;
    v4 = 125;
  }

  else
  {
    v3 = 0;
    v4 = 0;
    v5 = v2 + 1;
    *(a1 + 8) = v5;
    *a2 = v5;
  }

  return v4 | v3;
}

uint64_t sub_239494F68(uint64_t a1, uint64_t a2, char a3, __int16 a4)
{
  v16 = *MEMORY[0x277D85DE8];
  *(a1 + 8) = a1 + 8;
  *(a1 + 16) = a1 + 8;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *a1 = &unk_284BBBD48;
  *(a1 + 48) = a2;
  *(a1 + 56) = 1;
  *(a1 + 57) = a3;
  *(a1 + 58) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 64) = 0;
  *(a1 + 88) = 0;
  *(a1 + 92) = a4;
  *(a1 + 102) = 0;
  *(a1 + 94) = 0;
  *(a1 + 109) = 0;
  *(a1 + 114) = 5540;
  *(a1 + 116) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = (*(*off_27DF765E8 + 2))(off_27DF765E8);
  *(a1 + 136) = (*(*off_27DF765E8 + 2))(off_27DF765E8);
  *(a1 + 144) = sub_239476060();
  *(a1 + 152) = v5;
  *(a1 + 156) = 0;
  *(a1 + 160) = 0;
  *(a1 + 164) = 0;
  *(a1 + 172) = 1;
  sub_2394913C4(a1 + 176);
  *(a1 + 248) = &unk_284BBBEC0;
  *(a1 + 256) = sub_2393F56E0() & 0xFFFFFFF;
  *(a1 + 264) = 0;
  v6 = sub_2393D9044(1u);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = *(a1 + 57);
    v8 = *(a1 + 92);
    *buf = 134218496;
    v11 = a1;
    v12 = 1024;
    v13 = v7;
    v14 = 1024;
    v15 = v8;
    _os_log_impl(&dword_238DAE000, v6, OS_LOG_TYPE_INFO, "SecureSession[%p]: Allocated Type:%d LSID:%d", buf, 0x18u);
  }

  if (sub_2393D5398(3u))
  {
    sub_2393D5320(1, 3, "SecureSession[%p]: Allocated Type:%d LSID:%d", a1, *(a1 + 57), *(a1 + 92));
  }

  return a1;
}

uint64_t sub_239495188(unsigned int **a1, uint64_t a2)
{
  v3 = a1[2];
  *&a1[1][4 * **a1] = a2;
  LOWORD(a1[1][4 * **a1 + 2]) = 0;
  HIWORD(a1[1][4 * **a1 + 2]) = 0;
  v4 = a1[1];
  v5 = **a1;
  v7 = a2;
  v8 = v5;
  v9 = v4;
  sub_2393D6A10(v3 + 3, &v7, sub_239495228);
  ++**a1;
  return 0;
}

uint64_t sub_239495228(uint64_t a1, uint64_t a2)
{
  if (*a1 != a2 && *(*a1 + 24) == *(a2 + 24))
  {
    v2 = *(a1 + 16) + 16 * *(a1 + 8);
    ++*(v2 + 8);
    if (*(*a1 + 72) == *(a2 + 72))
    {
      v3 = *(a1 + 16) + 16 * *(a1 + 8);
      ++*(v3 + 10);
    }
  }

  return 0;
}

uint64_t sub_239495290(unsigned __int16 **a1, uint64_t a2)
{
  if (*(a2 + 92) != **a1)
  {
    return 0;
  }

  *a1[1] = a2;
  return 1;
}

BOOL sub_2394952BC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 92) - **a1;
  if (v2 <= 0x3Fu)
  {
    **(a1 + 8) |= 1 << v2;
  }

  return **(a1 + 8) == -1;
}

uint64_t sub_239495304(uint64_t a1)
{
  if ((*(*a1 + 16))(a1) != 2)
  {
    sub_23953469C();
  }

  return a1;
}

uint64_t sub_239495358(uint64_t a1)
{
  if ((*(*a1 + 16))(a1) != 2)
  {
    sub_239534738();
  }

  return a1;
}

uint64_t sub_2394953AC(uint64_t a1)
{
  if ((*(*a1 + 16))(a1) != 1)
  {
    sub_2395347D0();
  }

  return a1;
}

uint64_t sub_239495400(uint64_t a1)
{
  if ((*(*a1 + 16))(a1) != 3)
  {
    sub_239534868();
  }

  return a1;
}

uint64_t sub_239495454(uint64_t a1)
{
  if ((*(*a1 + 16))(a1) != 3)
  {
    sub_239534900();
  }

  return a1;
}

uint64_t sub_2394954A8(uint64_t a1)
{
  if ((*(*a1 + 16))(a1) != 4)
  {
    sub_239534998();
  }

  return a1;
}

uint64_t sub_2394954FC(uint64_t a1)
{
  if ((*(*a1 + 16))(a1) != 4)
  {
    sub_239534A30();
  }

  return a1;
}

uint64_t sub_239495550(uint64_t a1, int a2, uint64_t a3)
{
  if ((*(*a1 + 16))(a1) == 3 || (*(*a1 + 16))(a1) == 4)
  {
    return 0;
  }

  v7 = (*(*a1 + 112))(a1, a3) + a2;
  v8 = (*(*off_27DF765E8 + 2))(off_27DF765E8);
  return v7 + (*(*a1 + 120))(a1, v8, 0);
}

uint64_t sub_239495678(uint64_t a1)
{
  v2 = (*(*a1 + 16))(a1);
  if (v2 > 2)
  {
    if (v2 == 4)
    {
      sub_2394954FC(a1);
    }

    else
    {
      if (v2 != 3)
      {
        goto LABEL_12;
      }

      sub_239495454(a1);
    }

    v3 = 44;
    return *(a1 + v3);
  }

  if (v2 == 1)
  {
    return 0;
  }

  if (v2 != 2)
  {
LABEL_12:
    sub_239534AC8();
  }

  sub_239495358(a1);
  v3 = 92;
  return *(a1 + v3);
}

const char *sub_23949571C(void *a1)
{
  v1 = (*(**a1 + 16))(*a1) - 1;
  if (v1 > 3u)
  {
    return "?";
  }

  else
  {
    return off_278A83060[v1];
  }
}

uint64_t sub_239495784(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_284BBBF18;
  sub_239495804(a1, a2);
  if (*(a1 + 24) == 1)
  {
    (*(**(a1 + 32) + 32))(*(a1 + 32));
  }

  sub_238EA9350((a1 + 8));
  return a1;
}

void **sub_239495804(void **result, uint64_t a2)
{
  v2 = result + 3;
  if (*(result + 24) == 1)
  {
    v3 = result;
    v4 = sub_2394959CC(result + 24, a2);
    result = sub_239495D6C(*v4, v3);
    if (*(v3 + 24) == 1)
    {
      result = (*(**(v3 + 32) + 32))(*(v3 + 32));
    }

    *v2 = 0;
  }

  return result;
}

void sub_239495884(uint64_t a1, uint64_t a2)
{
  sub_239495784(a1, a2);

  JUMPOUT(0x23EE77B60);
}

uint64_t sub_2394958BC(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_284BBBF18;
  *(a1 + 24) = 0;
  v3 = (a1 + 24);
  sub_239495934(a1 + 24, (a2 + 24));
  if (*v3 == 1)
  {
    v5 = sub_2394959CC(v3, v4);
    sub_2394959EC(*v5, a1);
  }

  return a1;
}

uint64_t sub_239495934(uint64_t a1, unsigned __int8 *a2)
{
  if (*a1 == 1)
  {
    (*(**(a1 + 8) + 32))(*(a1 + 8));
  }

  v4 = *a2;
  *a1 = v4;
  if (v4 == 1)
  {
    v5 = *(a2 + 1);
    *(a1 + 8) = v5;
    (*(*v5 + 24))(v5);
  }

  return a1;
}

_BYTE *sub_2394959CC(_BYTE *a1, uint64_t a2)
{
  if ((*a1 & 1) == 0)
  {
    sub_23952E5FC();
  }

  return a1 + 8;
}

void *sub_2394959EC(uint64_t a1, uint64_t a2)
{
  sub_23947632C("src/transport/Session.h", 223);
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = (a2 + 8);
  if (v4)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    sub_239534B60();
  }

  return sub_23948BD9C((a1 + 8), v6);
}

uint64_t sub_239495A50(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_284BBBF18;
  *(a1 + 24) = 0;
  v4 = (a1 + 24);
  sub_239495934(a1 + 24, (a2 + 24));
  if (*v4 == 1)
  {
    v6 = sub_2394959CC(v4, v5);
    sub_2394959EC(*v6, a1);
  }

  sub_239495804(a2, v5);
  return a1;
}

uint64_t sub_239495AE0(uint64_t a1, uint64_t a2)
{
  sub_239495804(a1, a2);
  sub_239495934(a1 + 24, (a2 + 24));
  if (*(a1 + 24) == 1)
  {
    v5 = sub_2394959CC((a1 + 24), v4);
    sub_2394959EC(*v5, a1);
  }

  return a1;
}

uint64_t sub_239495B38(uint64_t a1, uint64_t a2)
{
  sub_239495804(a1, a2);
  sub_239495934(a1 + 24, (a2 + 24));
  if (*(a1 + 24) == 1)
  {
    v5 = sub_2394959CC((a1 + 24), v4);
    sub_2394959EC(*v5, a1);
  }

  sub_239495804(a2, v4);
  return a1;
}

uint64_t sub_239495B98(void **a1, uint64_t *a2)
{
  sub_239495804(a1, a2);
  if ((*(**a2 + 16))() != 2 || *(sub_239495304(*a2) + 56) != 1)
  {
    return 0;
  }

  sub_239495C1C(a1, a2);
  return 1;
}

void *sub_239495C1C(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 24);
  v3 = a1 + 24;
  if (v4 == 1)
  {
    sub_239534BF8();
  }

  sub_239495CDC(v3, a2);
  v6 = *a2;

  return sub_2394959EC(v6, a1);
}

uint64_t sub_239495C6C(void **a1, uint64_t *a2)
{
  sub_239495804(a1, a2);
  v4 = (*(**a2 + 40))();
  if (v4)
  {
    sub_239495C1C(a1, a2);
  }

  return v4;
}

uint64_t sub_239495CDC(uint64_t a1, uint64_t *a2)
{
  if (*a1 == 1)
  {
    (*(**(a1 + 8) + 32))(*(a1 + 8));
  }

  *a1 = 1;
  v4 = *a2;
  *(a1 + 8) = *a2;
  (*(*v4 + 24))(v4);
  return a1 + 8;
}

void **sub_239495D6C(uint64_t a1, uint64_t a2)
{
  sub_23947632C("src/transport/Session.h", 230);
  v5 = a1 + 8;
  v6 = (a2 + 8);
  v7 = a1 + 8;
  do
  {
    v7 = *(v7 + 8);
  }

  while (v7 != v6 && v7 != v5);
  if (v7 == v5)
  {
    sub_239534C90();
  }

  return sub_23948BDE8(v6, v4);
}

uint64_t sub_239495DDC(void **a1, uint64_t *a2)
{
  sub_239495804(a1, a2);

  return sub_239495C6C(a1, a2);
}

uint64_t sub_239495E1C(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v5 = 0;
  if (!sub_2394BE79C(&v6, *(*a1 + 8), *(*a1 + 24), &v5))
  {
    return v6;
  }

  v1 = sub_2393D9044(1u);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    v2 = sub_2393C9138();
    *buf = 136315138;
    v13 = v2;
    _os_log_impl(&dword_238DAE000, v1, OS_LOG_TYPE_ERROR, "Failed to decode EncryptedPacketBufferHandle header with error: %s", buf, 0xCu);
  }

  result = sub_2393D5398(1u);
  if (result)
  {
    v4 = sub_2393C9138();
    sub_2393D5320(1, 1, "Failed to decode EncryptedPacketBufferHandle header with error: %s", v4);
    return 0;
  }

  return result;
}

double sub_239495F50(uint64_t a1)
{
  *a1 = &unk_284BBBF78;
  *(a1 + 8) = &unk_284BBBFC0;
  *(a1 + 16) = 0;
  result = 0.0;
  *(a1 + 72) = 0u;
  *(a1 + 81) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = a1 + 64;
  *(a1 + 80) = a1 + 64;
  *(a1 + 104) = 0;
  *(a1 + 144) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 160) = 0;
  *(a1 + 128) = 0u;
  *(a1 + 136) = a1 + 128;
  *(a1 + 144) = a1 + 128;
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  *(a1 + 248) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 264) = &unk_284BBC048;
  *(a1 + 272) = 0;
  return result;
}

void *sub_23949600C(void *a1)
{
  *a1 = &unk_284BBBF78;
  a1[1] = &unk_284BBBFC0;
  sub_23949609C(a1);
  sub_2393D6A10(a1 + 16, (a1 + 14), sub_23949A9A0);
  sub_239475668(a1 + 14, v2);
  sub_239475668(a1 + 6, v3);
  return a1;
}

uint64_t sub_23949609C(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    sub_2394AAB8C(v2, a1 + 8);
    *(a1 + 32) = 0;
  }

  *(a1 + 176) = 0;
  result = sub_2393D6A10((a1 + 128), &v4, sub_23949B58C);
  *(a1 + 24) = 0;
  *(a1 + 232) = 0;
  *(a1 + 248) = 0;
  *(a1 + 256) = 0;
  return result;
}

void sub_239496110(void *a1)
{
  sub_23949600C(a1);

  JUMPOUT(0x23EE77B60);
}

void sub_239496148(uint64_t a1)
{
  sub_23949600C((a1 - 8));

  JUMPOUT(0x23EE77B60);
}

unint64_t sub_239496184(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (*(a1 + 176))
  {
    v7 = 0x6900000000;
    LODWORD(v8) = 3;
    return v7 | v8;
  }

  if (!a3)
  {
    v7 = 0x6A00000000;
LABEL_12:
    LODWORD(v8) = 47;
    return v7 | v8;
  }

  if (!a5)
  {
    v7 = 0x6B00000000;
    goto LABEL_12;
  }

  if (!a6)
  {
    v7 = 0x6C00000000;
    goto LABEL_12;
  }

  v8 = sub_2394AAB28(a6, a1 + 8);
  if (v8 || (*(a1 + 176) = 1, *(a1 + 248) = a3, *(a1 + 256) = a4, *(a1 + 24) = a2, *(a1 + 32) = a6, *(a1 + 40) = a7, *(a1 + 168) = sub_2393F5718(), *(a1 + 272) = sub_2393F56E0() & 0xFFFFFFF, v8 = sub_2394925A4(a1 + 184, a5), v8))
  {
    v7 = v8 & 0xFFFFFFFF00000000;
  }

  else
  {
    LODWORD(v8) = 0;
    v7 = 0;
    *(*(a1 + 248) + 8) = a1;
    *(a1 + 208) = 0;
    *(a1 + 216) = 0;
  }

  return v7 | v8;
}

uint64_t sub_2394962DC(uint64_t a1, int a2)
{
  v3 = sub_23949631C(byte_27DF796D0);

  return sub_239492490(v3, a2);
}

char *sub_23949631C(char *a1)
{
  if ((a1[8832] & 1) == 0)
  {
    a1[8832] = 1;
    bzero(a1, 0x2280uLL);
    v2 = 0;
    v3 = a1 + 16;
    do
    {
      v4 = &a1[v2];
      *v4 = 0;
      v4[2] = 0;
      v5 = v3;
      v6 = 480;
      do
      {
        *(v5 - 1) = 0;
        *v5 = 0;
        v5 += 32;
        v6 -= 32;
      }

      while (v6);
      *(v4 + 61) = 0;
      *(v4 + 124) = 0;
      *(v4 + 65) = 0;
      *(v4 + 132) = 0;
      v2 += 552;
      v3 += 552;
    }

    while (v2 != 8832);
  }

  return a1;
}

unint64_t sub_2394963B0(uint64_t a1, uint64_t *a2, unsigned __int8 *a3, uint64_t *a4, uint64_t *a5)
{
  v101 = *MEMORY[0x277D85DE8];
  v10 = sub_23948B4CC(a1);
  if (os_signpost_enabled(v10))
  {
    *buf = 136315394;
    *&buf[4] = "SessionManager";
    *&buf[12] = 2080;
    *&buf[14] = "PrepareMessage";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v10, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", buf, 0x16u);
  }

  v11 = 0;
  v74 = 0;
  v75 = 0;
  v77 = 0;
  v79 = 0;
  v81 = 0;
  v82 = 0;
  if (!*(a3 + 2))
  {
    v11 = 0;
    if (!*(a3 + 3) && *a3 <= 1u)
    {
      v82 = 64;
      v11 = 1;
    }
  }

  v12 = (*(**a2 + 80))();
  v13 = *(*a4 + 16);
  if (v12)
  {
    if (v13 >= 0xF98F)
    {
      v14 = 0xBB00000000;
LABEL_22:
      v29 = 4;
      goto LABEL_50;
    }
  }

  else if (v13 > 0x49A)
  {
    v14 = 0xBF00000000;
    goto LABEL_22;
  }

  v70 = 0uLL;
  LOBYTE(v71) = 0;
  v12 = (*(**a2 + 16))();
  if (v12 == 1)
  {
    LODWORD(v96) = 0;
    v12 = (*(*(a1 + 264) + 24))(a1 + 264, &v96);
    v21 = v12;
    if (v12)
    {
      goto LABEL_48;
    }

    v74 = v96;
    v36 = sub_2394953AC(*a2);
    v37 = v36;
    v38 = *(v36 + 56);
    if (v38)
    {
      if (v38 != 1)
      {
        goto LABEL_38;
      }

      v39 = &v78;
      v40 = &v77;
      v41 = 1;
    }

    else
    {
      v39 = &v76;
      v40 = &v75;
      v41 = 4;
    }

    v42 = *(v36 + 48);
    *v40 = 1;
    *v39 = v42;
    HIBYTE(v81) |= v41;
LABEL_38:
    v43 = sub_2394953AC(*a2);
    v70 = *(v43 + 64);
    v44 = *(v43 + 84);
    v71 = *(v43 + 80);
    v72 = v44;
    v73 = *(v43 + 88);
    *buf = 2;
    *&buf[8] = a3;
    *&buf[16] = &v74;
    sub_238DB6950(v84, *(*a4 + 8), *(*a4 + 16));
    v45 = sub_2394BE648(&v74);
    *&v84[16] = sub_2394BE684(a3) + v45 + *(*a4 + 16);
    sub_23948BAB4(buf);
    v12 = sub_2394BEF90(a3, a4);
    v21 = v12;
    if (!v12)
    {
      v46 = *(v37 + 56);
      if (v46)
      {
        v28 = 0;
        if (v46 == 1)
        {
          v34 = *(v37 + 48);
        }

        else
        {
          v34 = 0;
        }
      }

      else
      {
        v34 = 0;
        v28 = *(v37 + 48);
      }

      v35 = 0;
LABEL_47:
      v12 = sub_2394BED64(&v74, a4);
      v21 = v12;
      if (!v12)
      {
        v68 = a5;
        if (v35 && (v49 = *(a1 + 32)) != 0 && (v50 = sub_2394A7FC0(v49, v35)) != 0)
        {
          v51 = *(v50 + 16);
        }

        else
        {
          v51 = 0;
        }

        v52 = sub_2394E0FE8(*(a3 + 1));
        v54 = sub_2394E101C(*(a3 + 1), *a3);
        __str[0] = 0;
        if (a3[12] == 1)
        {
          v55 = sub_238DE3698(a3 + 12, v53);
          snprintf(__str, 0x14uLL, " (Ack:%u)", *v55);
        }

        v98 = 0u;
        memset(v99, 0, sizeof(v99));
        v96 = 0u;
        v97 = 0u;
        sub_2393E97D4(&v70, &v96, 0x4CuLL);
        snprintf(v95, 8uLL, "%04X:%02X", *(a3 + 3), *a3);
        v56 = 105;
        if ((a3[8] & 1) == 0)
        {
          v56 = 114;
        }

        snprintf(v69, 7uLL, "%u%c", *(a3 + 1), v56);
        snprintf(v94, 0x37uLL, "from %08X%08X to %u:%08X%08X [%04X]", HIDWORD(v28), v28, v35, HIDWORD(v34), v34, v51);
        v57 = sub_2393D9044(5u);
        if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
        {
          v58 = sub_239495678(*a2);
          v59 = v74;
          v60 = sub_23949571C(a2);
          v61 = *(*a4 + 16);
          *buf = 136317698;
          *&buf[4] = v69;
          *&buf[12] = 1024;
          *&buf[14] = v58;
          *&buf[18] = 1024;
          *&buf[20] = v59;
          *v84 = 2080;
          *&v84[2] = __str;
          *&v84[10] = 2080;
          *&v84[12] = v60;
          *&v84[20] = 2080;
          *&v84[22] = v94;
          v85 = 2080;
          v86 = &v96;
          *v87 = 2080;
          *&v87[2] = v95;
          v88 = 2080;
          v89 = v52;
          v90 = 2080;
          v91 = v54;
          v92 = 1024;
          v93 = v61;
          _os_log_impl(&dword_238DAE000, v57, OS_LOG_TYPE_DEFAULT, "<<< [E:%s S:%u M:%u%s] (%s) Msg TX %s [%s] --- Type %s (%s:%s) (B:%u)", buf, 0x64u);
        }

        if (sub_2393D5398(2u))
        {
          v62 = sub_239495678(*a2);
          v63 = v74;
          v64 = sub_23949571C(a2);
          sub_2393D5320(5, 2, "<<< [E:%s S:%u M:%u%s] (%s) Msg TX %s [%s] --- Type %s (%s:%s) (B:%u)", v69, v62, v63, __str, v64, v94, &v96, v95, v52, v54, *(*a4 + 16));
        }

        v65 = *a4;
        *a4 = 0;
        v12 = *v68;
        if (*v68)
        {
          sub_2393D96C8(v12);
        }

        v14 = 0;
        LODWORD(v21) = 0;
        *v68 = v65;
        goto LABEL_49;
      }
    }

LABEL_48:
    v14 = v21 & 0xFFFFFFFF00000000;
    goto LABEL_49;
  }

  if (v12 == 2)
  {
    v12 = sub_239495304(*a2);
    if (!v12)
    {
      v14 = 0x10000000000;
      LODWORD(v21) = 72;
      goto LABEL_49;
    }

    v30 = v12;
    LODWORD(v96) = 0;
    v12 = (*(*(v12 + 248) + 24))();
    v21 = v12;
    if (!v12)
    {
      v74 = v96;
      LOWORD(v81) = *(v30 + 94);
      BYTE2(v81) = 0;
      v82 &= 0xFCu;
      v70 = *(v30 + 96);
      v31 = *(v30 + 116);
      v71 = *(v30 + 112);
      v72 = v31;
      v73 = *(v30 + 120);
      *buf = 1;
      *&buf[8] = a3;
      *&buf[16] = &v74;
      sub_238DB6950(v84, *(*a4 + 8), *(*a4 + 16));
      v32 = sub_2394BE648(&v74);
      v33 = sub_2394BE684(a3) + v32 + *(*a4 + 16);
      *&v84[16] = v33 + 16 * ((v81 | BYTE2(v81)) != 0);
      sub_23948BAB4(buf);
      v28 = (*(*v30 + 56))(v30);
      sub_2394917A8(buf, v82, v96, v28);
      v12 = sub_239492914(v30 + 176, buf, a3, &v74, a4);
      v21 = v12;
      if (!v12)
      {
        v34 = *(v30 + 72);
        v35 = *(v30 + 24);
        goto LABEL_47;
      }
    }

    goto LABEL_48;
  }

  if (v12 != 4)
  {
    v14 = 0x14D00000000;
LABEL_34:
    LODWORD(v21) = 172;
    goto LABEL_49;
  }

  v15 = sub_2394954A8(*a2);
  v12 = sub_2394B4FC8();
  if (!v12)
  {
    v14 = 0xCF00000000;
    goto LABEL_34;
  }

  v16 = v12;
  v67 = a5;
  v12 = sub_2394A7FC0(*(a1 + 32), *(v15 + 24));
  if (!v12)
  {
    v14 = 0xD200000000;
    LODWORD(v21) = 47;
    goto LABEL_49;
  }

  v17 = v12;
  v18 = *(v15 + 44);
  v79 = 1;
  v80 = v18;
  HIBYTE(v81) |= 2u;
  v74 = sub_2394927A8(a1 + 184, v11);
  v12 = sub_2394927BC(a1 + 184, v11);
  BYTE2(v81) = 1;
  v19 = v82;
  v82 = v82 & 0xFC | 1;
  v20 = *v17;
  v75 = 1;
  v66 = v20;
  v76 = v20;
  LOBYTE(v20) = HIBYTE(v81);
  HIBYTE(v81) |= 4u;
  v14 = 0xDD00000000;
  LODWORD(v21) = 172;
  if ((v20 & 2) == 0 || (v19 & 0x40) != 0)
  {
    goto LABEL_49;
  }

  v22 = v17[1];
  v23 = *(v15 + 44);
  *buf = (v22 >> 8) | 0xFD00000000000000;
  *&v70 = sub_2393CFE14(5, 64, buf, v23 | (v22 << 24));
  *(&v70 + 1) = v24;
  LOBYTE(v71) = 1;
  HIWORD(v71) = 5540;
  v72 = 0;
  v73 = 0;
  v12 = (*(*v16 + 224))(v16, *(v15 + 24), *(v15 + 44));
  if (!v12)
  {
    v14 = 0xE400000000;
    goto LABEL_34;
  }

  v25 = v12;
  LOWORD(v81) = (**v12)(v12);
  *&buf[8] = 0u;
  *v84 = 0u;
  v86 = 0;
  *v87 = v25;
  LODWORD(v96) = 0;
  *(&v96 + 1) = a3;
  *&v97 = &v74;
  sub_238DB6950(&v97 + 1, *(*a4 + 8), *(*a4 + 16));
  v26 = sub_2394BE648(&v74);
  v27 = sub_2394BE684(a3);
  *(&v98 + 1) = v27 + v26 + *(*a4 + 16) + 16 * ((v81 | BYTE2(v81)) != 0);
  sub_23948BAB4(&v96);
  v28 = v66;
  sub_2394917A8(&v96, v82, v74, v66);
  v21 = sub_239492914(buf, &v96, a3, &v74, a4);
  (*(*v25 + 56))(v25);
  if (!v21)
  {
    v34 = *(v15 + 44) | 0xFFFFFFFFFFFF0000;
    v35 = *(v15 + 24);
    sub_239491488(buf);
    a5 = v67;
    goto LABEL_47;
  }

  v14 = v21 & 0xFFFFFFFF00000000;
  v12 = sub_239491488(buf);
LABEL_49:
  v29 = v21;
LABEL_50:
  v47 = sub_23948B4CC(v12);
  if (os_signpost_enabled(v47))
  {
    *buf = 136315394;
    *&buf[4] = "SessionManager";
    *&buf[12] = 2080;
    *&buf[14] = "PrepareMessage";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v47, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", buf, 0x16u);
  }

  return v29 | v14;
}