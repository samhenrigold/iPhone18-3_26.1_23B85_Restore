void sub_2713AFE70(uint64_t a1)
{
  *(a1 - 8) = &unk_28810B488;
  *a1 = &unk_28810B4E8;
  v2 = *(a1 + 216);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    v3 = *(a1 + 184);
    if (v3 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v3 = *(a1 + 184);
  if (v3 != -1)
  {
LABEL_4:
    (off_288131910[v3])(&v4, a1 + 8);
  }

LABEL_5:
  *(a1 + 184) = -1;
}

void sub_2713AFF5C(uint64_t a1)
{
  *(a1 - 8) = &unk_28810B488;
  *a1 = &unk_28810B4E8;
  v2 = *(a1 + 216);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    v3 = *(a1 + 184);
    if (v3 == -1)
    {
LABEL_5:
      *(a1 + 184) = -1;

      JUMPOUT(0x2743BF050);
    }
  }

  else
  {
    v3 = *(a1 + 184);
    if (v3 == -1)
    {
      goto LABEL_5;
    }
  }

  (off_288131910[v3])(&v4, a1 + 8);
  goto LABEL_5;
}

uint64_t sub_2713B0074(uint64_t a1)
{
  *a1 = &unk_28810BC68;
  *(a1 + 8) = &unk_28810BCC8;
  v2 = *(a1 + 224);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    v3 = *(a1 + 192);
    if (v3 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v3 = *(a1 + 192);
  if (v3 != -1)
  {
LABEL_4:
    (off_288131910[v3])(&v5, a1 + 16);
  }

LABEL_5:
  *(a1 + 192) = -1;
  return a1;
}

void sub_2713B0164(uint64_t a1)
{
  *a1 = &unk_28810BC68;
  *(a1 + 8) = &unk_28810BCC8;
  v2 = *(a1 + 224);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    v3 = *(a1 + 192);
    if (v3 == -1)
    {
LABEL_5:
      *(a1 + 192) = -1;

      JUMPOUT(0x2743BF050);
    }
  }

  else
  {
    v3 = *(a1 + 192);
    if (v3 == -1)
    {
      goto LABEL_5;
    }
  }

  (off_288131910[v3])(&v4, a1 + 16);
  goto LABEL_5;
}

void sub_2713B0274(uint64_t a1)
{
  *(a1 - 8) = &unk_28810BC68;
  *a1 = &unk_28810BCC8;
  v2 = *(a1 + 216);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    v3 = *(a1 + 184);
    if (v3 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v3 = *(a1 + 184);
  if (v3 != -1)
  {
LABEL_4:
    (off_288131910[v3])(&v4, a1 + 8);
  }

LABEL_5:
  *(a1 + 184) = -1;
}

void sub_2713B0360(uint64_t a1)
{
  *(a1 - 8) = &unk_28810BC68;
  *a1 = &unk_28810BCC8;
  v2 = *(a1 + 216);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    v3 = *(a1 + 184);
    if (v3 == -1)
    {
LABEL_5:
      *(a1 + 184) = -1;

      JUMPOUT(0x2743BF050);
    }
  }

  else
  {
    v3 = *(a1 + 184);
    if (v3 == -1)
    {
      goto LABEL_5;
    }
  }

  (off_288131910[v3])(&v4, a1 + 8);
  goto LABEL_5;
}

uint64_t sub_2713B0478(uint64_t a1)
{
  *a1 = &unk_28810BBC0;
  *(a1 + 8) = &unk_28810BC20;
  v2 = *(a1 + 224);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    v3 = *(a1 + 192);
    if (v3 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v3 = *(a1 + 192);
  if (v3 != -1)
  {
LABEL_4:
    (off_288131910[v3])(&v5, a1 + 16);
  }

LABEL_5:
  *(a1 + 192) = -1;
  return a1;
}

void sub_2713B0568(uint64_t a1)
{
  *a1 = &unk_28810BBC0;
  *(a1 + 8) = &unk_28810BC20;
  v2 = *(a1 + 224);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    v3 = *(a1 + 192);
    if (v3 == -1)
    {
LABEL_5:
      *(a1 + 192) = -1;

      JUMPOUT(0x2743BF050);
    }
  }

  else
  {
    v3 = *(a1 + 192);
    if (v3 == -1)
    {
      goto LABEL_5;
    }
  }

  (off_288131910[v3])(&v4, a1 + 16);
  goto LABEL_5;
}

void sub_2713B0678(uint64_t a1)
{
  *(a1 - 8) = &unk_28810BBC0;
  *a1 = &unk_28810BC20;
  v2 = *(a1 + 216);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    v3 = *(a1 + 184);
    if (v3 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v3 = *(a1 + 184);
  if (v3 != -1)
  {
LABEL_4:
    (off_288131910[v3])(&v4, a1 + 8);
  }

LABEL_5:
  *(a1 + 184) = -1;
}

void sub_2713B0764(uint64_t a1)
{
  *(a1 - 8) = &unk_28810BBC0;
  *a1 = &unk_28810BC20;
  v2 = *(a1 + 216);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    v3 = *(a1 + 184);
    if (v3 == -1)
    {
LABEL_5:
      *(a1 + 184) = -1;

      JUMPOUT(0x2743BF050);
    }
  }

  else
  {
    v3 = *(a1 + 184);
    if (v3 == -1)
    {
      goto LABEL_5;
    }
  }

  (off_288131910[v3])(&v4, a1 + 8);
  goto LABEL_5;
}

uint64_t sub_2713B087C(uint64_t a1)
{
  *a1 = &unk_28810B680;
  *(a1 + 8) = &unk_28810B6E0;
  v2 = *(a1 + 208);
  if (v2)
  {
    v2(0, a1 + 208, 0, 0, 0);
  }

  v3 = *(a1 + 192);
  if (v3 != -1)
  {
    (off_288131910[v3])(&v5, a1 + 16);
  }

  *(a1 + 192) = -1;
  return a1;
}

uint64_t sub_2713B0938(uint64_t a1)
{
  *a1 = &unk_28810B680;
  *(a1 + 8) = &unk_28810B6E0;
  v2 = *(a1 + 208);
  if (v2)
  {
    v2(0, a1 + 208, 0, 0, 0);
  }

  v3 = *(a1 + 192);
  if (v3 != -1)
  {
    (off_288131910[v3])(&v5, a1 + 16);
  }

  *(a1 + 192) = -1;
  return MEMORY[0x2743BF050](a1, 0x10B3C40294CF2FDLL);
}

void *sub_2713B0A08(void *result)
{
  v1 = result;
  *(result - 1) = &unk_28810B680;
  *result = &unk_28810B6E0;
  v2 = result[25];
  if (v2)
  {
    result = v2(0, result + 25, 0, 0, 0);
  }

  v3 = *(v1 + 46);
  if (v3 != -1)
  {
    result = (off_288131910[v3])(&v4, v1 + 1);
  }

  *(v1 + 46) = -1;
  return result;
}

uint64_t sub_2713B0AC0(uint64_t a1)
{
  v2 = a1 - 8;
  *(a1 - 8) = &unk_28810B680;
  *a1 = &unk_28810B6E0;
  v3 = *(a1 + 200);
  if (v3)
  {
    v3(0, a1 + 200, 0, 0, 0);
  }

  v4 = *(a1 + 184);
  if (v4 != -1)
  {
    (off_288131910[v4])(&v6, a1 + 8);
  }

  *(a1 + 184) = -1;
  return MEMORY[0x2743BF050](v2, 0x10B3C40294CF2FDLL);
}

uint64_t sub_2713B0B90(uint64_t a1)
{
  *a1 = &unk_288131D78;
  *(a1 + 8) = &unk_288131DD8;
  v2 = *(a1 + 208);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    v3 = *(a1 + 192);
    if (v3 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v3 = *(a1 + 192);
  if (v3 != -1)
  {
LABEL_4:
    (off_288131910[v3])(&v5, a1 + 16);
  }

LABEL_5:
  *(a1 + 192) = -1;
  return a1;
}

void sub_2713B0C80(uint64_t a1)
{
  *a1 = &unk_288131D78;
  *(a1 + 8) = &unk_288131DD8;
  v2 = *(a1 + 208);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    v3 = *(a1 + 192);
    if (v3 == -1)
    {
LABEL_5:
      *(a1 + 192) = -1;

      JUMPOUT(0x2743BF050);
    }
  }

  else
  {
    v3 = *(a1 + 192);
    if (v3 == -1)
    {
      goto LABEL_5;
    }
  }

  (off_288131910[v3])(&v4, a1 + 16);
  goto LABEL_5;
}

void sub_2713B0D90(uint64_t a1)
{
  *(a1 - 8) = &unk_288131D78;
  *a1 = &unk_288131DD8;
  v2 = *(a1 + 200);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    v3 = *(a1 + 184);
    if (v3 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v3 = *(a1 + 184);
  if (v3 != -1)
  {
LABEL_4:
    (off_288131910[v3])(&v4, a1 + 8);
  }

LABEL_5:
  *(a1 + 184) = -1;
}

void sub_2713B0E7C(uint64_t a1)
{
  *(a1 - 8) = &unk_288131D78;
  *a1 = &unk_288131DD8;
  v2 = *(a1 + 200);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    v3 = *(a1 + 184);
    if (v3 == -1)
    {
LABEL_5:
      *(a1 + 184) = -1;

      JUMPOUT(0x2743BF050);
    }
  }

  else
  {
    v3 = *(a1 + 184);
    if (v3 == -1)
    {
      goto LABEL_5;
    }
  }

  (off_288131910[v3])(&v4, a1 + 8);
  goto LABEL_5;
}

uint64_t sub_2713B0F94(uint64_t a1)
{
  *a1 = &unk_28810B5D8;
  *(a1 + 8) = &unk_28810B638;
  v2 = *(a1 + 216);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    v3 = *(a1 + 192);
    if (v3 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v3 = *(a1 + 192);
  if (v3 != -1)
  {
LABEL_4:
    (off_288131910[v3])(&v5, a1 + 16);
  }

LABEL_5:
  *(a1 + 192) = -1;
  return a1;
}

void sub_2713B1084(uint64_t a1)
{
  *a1 = &unk_28810B5D8;
  *(a1 + 8) = &unk_28810B638;
  v2 = *(a1 + 216);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    v3 = *(a1 + 192);
    if (v3 == -1)
    {
LABEL_5:
      *(a1 + 192) = -1;

      JUMPOUT(0x2743BF050);
    }
  }

  else
  {
    v3 = *(a1 + 192);
    if (v3 == -1)
    {
      goto LABEL_5;
    }
  }

  (off_288131910[v3])(&v4, a1 + 16);
  goto LABEL_5;
}

void sub_2713B1194(uint64_t a1)
{
  *(a1 - 8) = &unk_28810B5D8;
  *a1 = &unk_28810B638;
  v2 = *(a1 + 208);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    v3 = *(a1 + 184);
    if (v3 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v3 = *(a1 + 184);
  if (v3 != -1)
  {
LABEL_4:
    (off_288131910[v3])(&v4, a1 + 8);
  }

LABEL_5:
  *(a1 + 184) = -1;
}

void sub_2713B1280(uint64_t a1)
{
  *(a1 - 8) = &unk_28810B5D8;
  *a1 = &unk_28810B638;
  v2 = *(a1 + 208);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    v3 = *(a1 + 184);
    if (v3 == -1)
    {
LABEL_5:
      *(a1 + 184) = -1;

      JUMPOUT(0x2743BF050);
    }
  }

  else
  {
    v3 = *(a1 + 184);
    if (v3 == -1)
    {
      goto LABEL_5;
    }
  }

  (off_288131910[v3])(&v4, a1 + 8);
  goto LABEL_5;
}

uint64_t sub_2713B1398(uint64_t a1)
{
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
    if ((*(a1 + 87) & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(a1 + 55) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      operator delete(*(a1 + 32));
      if ((*(a1 + 23) & 0x80000000) == 0)
      {
        return a1;
      }

      goto LABEL_9;
    }
  }

  else if ((*(a1 + 87) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(a1 + 64));
  if (*(a1 + 55) < 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  if ((*(a1 + 23) & 0x80000000) == 0)
  {
    return a1;
  }

LABEL_9:
  operator delete(*a1);
  return a1;
}

void sub_2713B1428(uint64_t a1)
{
  sub_2713A8BA0(a1);

  JUMPOUT(0x2743BF050);
}

void sub_2713B1468(uint64_t a1)
{
  sub_2713A8BA0(a1 - 8);

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2713B14A4(uint64_t result)
{
  if (*(result + 176) == 1 && *(result + 175) < 0)
  {
    v1 = result;
    operator delete(*(result + 152));
    result = v1;
    if (*(v1 + 144) != 1)
    {
      return result;
    }
  }

  else if (*(result + 144) != 1)
  {
    return result;
  }

  if (*(result + 143) < 0)
  {
    v2 = result;
    operator delete(*(result + 120));
    return v2;
  }

  return result;
}

uint64_t sub_2713B152C(uint64_t a1)
{
  *a1 = &unk_28810BB18;
  *(a1 + 8) = &unk_28810BB78;
  if (*(a1 + 376) == 1 && *(a1 + 375) < 0)
  {
    operator delete(*(a1 + 352));
    if (*(a1 + 344) != 1)
    {
      goto LABEL_7;
    }
  }

  else if (*(a1 + 344) != 1)
  {
    goto LABEL_7;
  }

  if (*(a1 + 343) < 0)
  {
    operator delete(*(a1 + 320));
  }

LABEL_7:
  v2 = *(a1 + 192);
  if (v2 != -1)
  {
    (off_288131910[v2])(&v4, a1 + 16);
  }

  *(a1 + 192) = -1;
  return a1;
}

void sub_2713B160C(uint64_t a1)
{
  *a1 = &unk_28810BB18;
  *(a1 + 8) = &unk_28810BB78;
  if (*(a1 + 376) == 1 && *(a1 + 375) < 0)
  {
    operator delete(*(a1 + 352));
    if (*(a1 + 344) != 1)
    {
      goto LABEL_7;
    }
  }

  else if (*(a1 + 344) != 1)
  {
    goto LABEL_7;
  }

  if (*(a1 + 343) < 0)
  {
    operator delete(*(a1 + 320));
  }

LABEL_7:
  v2 = *(a1 + 192);
  if (v2 != -1)
  {
    (off_288131910[v2])(&v3, a1 + 16);
  }

  *(a1 + 192) = -1;

  JUMPOUT(0x2743BF050);
}

void sub_2713B170C(uint64_t a1)
{
  *(a1 - 8) = &unk_28810BB18;
  *a1 = &unk_28810BB78;
  if (*(a1 + 368) == 1 && *(a1 + 367) < 0)
  {
    operator delete(*(a1 + 344));
    if (*(a1 + 336) != 1)
    {
      goto LABEL_7;
    }
  }

  else if (*(a1 + 336) != 1)
  {
    goto LABEL_7;
  }

  if (*(a1 + 335) < 0)
  {
    operator delete(*(a1 + 312));
  }

LABEL_7:
  v2 = *(a1 + 184);
  if (v2 != -1)
  {
    (off_288131910[v2])(&v3, a1 + 8);
  }

  *(a1 + 184) = -1;
}

void sub_2713B17E8(uint64_t a1)
{
  *(a1 - 8) = &unk_28810BB18;
  *a1 = &unk_28810BB78;
  if (*(a1 + 368) == 1 && *(a1 + 367) < 0)
  {
    operator delete(*(a1 + 344));
    if (*(a1 + 336) != 1)
    {
      goto LABEL_7;
    }
  }

  else if (*(a1 + 336) != 1)
  {
    goto LABEL_7;
  }

  if (*(a1 + 335) < 0)
  {
    operator delete(*(a1 + 312));
  }

LABEL_7:
  v2 = *(a1 + 184);
  if (v2 != -1)
  {
    (off_288131910[v2])(&v3, a1 + 8);
  }

  *(a1 + 184) = -1;

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2713B18E8(uint64_t a1)
{
  *a1 = &unk_28810B878;
  *(a1 + 8) = &unk_28810B8D8;
  v2 = *(a1 + 192);
  if (v2 != -1)
  {
    (off_288131910[v2])(&v4, a1 + 16);
  }

  *(a1 + 192) = -1;
  return a1;
}

uint64_t sub_2713B1980(uint64_t a1)
{
  *a1 = &unk_28810B878;
  *(a1 + 8) = &unk_28810B8D8;
  v2 = *(a1 + 192);
  if (v2 != -1)
  {
    (off_288131910[v2])(&v4, a1 + 16);
  }

  *(a1 + 192) = -1;
  return MEMORY[0x2743BF050](a1, 0x10B3C40CF772451);
}

uint64_t sub_2713B1A2C(uint64_t result)
{
  v1 = result;
  *(result - 8) = &unk_28810B878;
  *result = &unk_28810B8D8;
  v2 = *(result + 184);
  if (v2 != -1)
  {
    result = (off_288131910[v2])(&v3, result + 8);
  }

  *(v1 + 184) = -1;
  return result;
}

uint64_t sub_2713B1AC0(uint64_t a1)
{
  v2 = a1 - 8;
  *(a1 - 8) = &unk_28810B878;
  *a1 = &unk_28810B8D8;
  v3 = *(a1 + 184);
  if (v3 != -1)
  {
    (off_288131910[v3])(&v5, a1 + 8);
  }

  *(a1 + 184) = -1;
  return MEMORY[0x2743BF050](v2, 0x10B3C40CF772451);
}

uint64_t sub_2713B1B6C(uint64_t a1)
{
  *a1 = &unk_28810B728;
  *(a1 + 8) = &unk_28810B788;
  sub_2713B1E08(a1 + 200);
  v2 = *(a1 + 192);
  if (v2 != -1)
  {
    (off_288131910[v2])(&v4, a1 + 16);
  }

  *(a1 + 192) = -1;
  return a1;
}

uint64_t sub_2713B1C0C(uint64_t a1)
{
  *a1 = &unk_28810B728;
  *(a1 + 8) = &unk_28810B788;
  sub_2713B1E08(a1 + 200);
  v2 = *(a1 + 192);
  if (v2 != -1)
  {
    (off_288131910[v2])(&v4, a1 + 16);
  }

  *(a1 + 192) = -1;
  return MEMORY[0x2743BF050](a1, 0x10B3C40DC57CB27);
}

uint64_t sub_2713B1CC0(uint64_t a1)
{
  *(a1 - 8) = &unk_28810B728;
  *a1 = &unk_28810B788;
  result = sub_2713B1E08(a1 + 192);
  v3 = *(a1 + 184);
  if (v3 != -1)
  {
    result = (off_288131910[v3])(&v4, a1 + 8);
  }

  *(a1 + 184) = -1;
  return result;
}

uint64_t sub_2713B1D58(uint64_t a1)
{
  v2 = a1 - 8;
  *(a1 - 8) = &unk_28810B728;
  *a1 = &unk_28810B788;
  sub_2713B1E08(a1 + 192);
  v3 = *(a1 + 184);
  if (v3 != -1)
  {
    (off_288131910[v3])(&v5, a1 + 8);
  }

  *(a1 + 184) = -1;
  return MEMORY[0x2743BF050](v2, 0x10B3C40DC57CB27);
}

uint64_t sub_2713B1E08(uint64_t a1)
{
  if (*(a1 + 175) < 0)
  {
    operator delete(*(a1 + 152));
    if ((*(a1 + 143) & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(a1 + 119) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*(a1 + 143) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(a1 + 120));
  if ((*(a1 + 119) & 0x80000000) == 0)
  {
LABEL_4:
    if ((*(a1 + 95) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  operator delete(*(a1 + 96));
  if ((*(a1 + 95) & 0x80000000) == 0)
  {
LABEL_5:
    if ((*(a1 + 71) & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  operator delete(*(a1 + 72));
  if ((*(a1 + 71) & 0x80000000) == 0)
  {
LABEL_6:
    if ((*(a1 + 47) & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

LABEL_14:
    operator delete(*(a1 + 24));
    if ((*(a1 + 23) & 0x80000000) == 0)
    {
      return a1;
    }

    goto LABEL_15;
  }

LABEL_13:
  operator delete(*(a1 + 48));
  if (*(a1 + 47) < 0)
  {
    goto LABEL_14;
  }

LABEL_7:
  if ((*(a1 + 23) & 0x80000000) == 0)
  {
    return a1;
  }

LABEL_15:
  operator delete(*a1);
  return a1;
}

uint64_t sub_2713B1EDC(uint64_t a1)
{
  *a1 = &unk_28810B9C8;
  *(a1 + 8) = &unk_28810BA28;
  sub_271167834(a1 + 200, *(a1 + 208));
  v2 = *(a1 + 192);
  if (v2 != -1)
  {
    (off_288131910[v2])(&v4, a1 + 16);
  }

  *(a1 + 192) = -1;
  return a1;
}

uint64_t sub_2713B1F80(uint64_t a1)
{
  *a1 = &unk_28810B9C8;
  *(a1 + 8) = &unk_28810BA28;
  sub_271167834(a1 + 200, *(a1 + 208));
  v2 = *(a1 + 192);
  if (v2 != -1)
  {
    (off_288131910[v2])(&v4, a1 + 16);
  }

  *(a1 + 192) = -1;
  return MEMORY[0x2743BF050](a1, 0x10B3C40546963AFLL);
}

void sub_2713B2038(uint64_t a1)
{
  *(a1 - 8) = &unk_28810B9C8;
  *a1 = &unk_28810BA28;
  sub_271167834(a1 + 192, *(a1 + 200));
  v2 = *(a1 + 184);
  if (v2 != -1)
  {
    (off_288131910[v2])(&v3, a1 + 8);
  }

  *(a1 + 184) = -1;
}

uint64_t sub_2713B20D8(uint64_t a1)
{
  v2 = a1 - 8;
  *(a1 - 8) = &unk_28810B9C8;
  *a1 = &unk_28810BA28;
  sub_271167834(a1 + 192, *(a1 + 200));
  v3 = *(a1 + 184);
  if (v3 != -1)
  {
    (off_288131910[v3])(&v5, a1 + 8);
  }

  *(a1 + 184) = -1;
  return MEMORY[0x2743BF050](v2, 0x10B3C40546963AFLL);
}

uint64_t sub_2713B2190(uint64_t a1)
{
  if (*(a1 + 48) == 1 && *(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  v2 = *a1;
  if (*a1)
  {
    v3 = *(a1 + 8);
    v4 = *a1;
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 9);
        v3 -= 4;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != v2);
      v4 = *a1;
    }

    *(a1 + 8) = v2;
    operator delete(v4);
  }

  return a1;
}

void sub_2713B2224(uint64_t a1)
{
  sub_2713A98B0(a1);

  JUMPOUT(0x2743BF050);
}

void sub_2713B2264(uint64_t a1)
{
  sub_2713A98B0(a1 - 8);

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2713B22A0(uint64_t a1)
{
  *a1 = &unk_28810B920;
  *(a1 + 8) = &unk_28810B980;
  v2 = *(a1 + 192);
  if (v2 != -1)
  {
    (off_288131910[v2])(&v4, a1 + 16);
  }

  *(a1 + 192) = -1;
  return a1;
}

uint64_t sub_2713B2338(uint64_t a1)
{
  *a1 = &unk_28810B920;
  *(a1 + 8) = &unk_28810B980;
  v2 = *(a1 + 192);
  if (v2 != -1)
  {
    (off_288131910[v2])(&v4, a1 + 16);
  }

  *(a1 + 192) = -1;
  return MEMORY[0x2743BF050](a1, 0x10B3C40956CF698);
}

uint64_t sub_2713B23E4(uint64_t result)
{
  v1 = result;
  *(result - 8) = &unk_28810B920;
  *result = &unk_28810B980;
  v2 = *(result + 184);
  if (v2 != -1)
  {
    result = (off_288131910[v2])(&v3, result + 8);
  }

  *(v1 + 184) = -1;
  return result;
}

uint64_t sub_2713B2478(uint64_t a1)
{
  v2 = a1 - 8;
  *(a1 - 8) = &unk_28810B920;
  *a1 = &unk_28810B980;
  v3 = *(a1 + 184);
  if (v3 != -1)
  {
    (off_288131910[v3])(&v5, a1 + 8);
  }

  *(a1 + 184) = -1;
  return MEMORY[0x2743BF050](v2, 0x10B3C40956CF698);
}

uint64_t sub_2713B2524(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  *(a1 + 24) = 0;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 48) = 0;
  if (*(a2 + 40) == 1)
  {
    if (*(a2 + 39) < 0)
    {
      sub_271127178((a1 + 24), a2[2], a2[3]);
    }

    else
    {
      v6 = *(a2 + 1);
      *(a1 + 40) = a2[4];
      *(a1 + 24) = v6;
    }

    *(a1 + 48) = 1;
  }

  if (*(a2 + 64) == 1)
  {
    v7 = *(a2 + 56);
    *(a1 + 56) = a2[6];
    *(a1 + 64) = v7;
    v8 = 1;
  }

  else
  {
    v8 = 0;
    *(a1 + 56) = 0;
  }

  *(a1 + 80) = 0;
  *(a1 + 72) = v8;
  *(a1 + 104) = 0;
  if (*(a2 + 96) == 1)
  {
    if (*(a2 + 95) < 0)
    {
      sub_271127178((a1 + 80), a2[9], a2[10]);
    }

    else
    {
      v9 = *(a2 + 9);
      *(a1 + 96) = a2[11];
      *(a1 + 80) = v9;
    }

    *(a1 + 104) = 1;
  }

  if (*(a2 + 160) == 1)
  {
    if (*(a2 + 135) < 0)
    {
      sub_271127178(&v12, a2[14], a2[15]);
    }

    else
    {
      v12 = *(a2 + 7);
      v13 = a2[16];
    }

    *(a1 + 112) = v12;
    *(a1 + 128) = v13;
    *(a1 + 136) = 1;
    if ((a2[25] & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  else
  {
    *(a1 + 112) = 0;
    *(a1 + 136) = 0;
    if ((a2[25] & 1) == 0)
    {
LABEL_21:
      v10 = 0;
      *(a1 + 144) = 0;
      goto LABEL_22;
    }
  }

  sub_2713B2738(a2 + 22, &v12);
  *(a1 + 144) = v12;
  *(a1 + 160) = v13;
  v10 = 1;
LABEL_22:
  *(a1 + 168) = v10;
  return a1;
}

void sub_2713B26C0(_Unwind_Exception *exception_object)
{
  if (v1[104] == 1 && v1[103] < 0)
  {
    operator delete(*v3);
  }

  if (v1[48] == 1 && v1[47] < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

double sub_2713B2738@<D0>(uint64_t **a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[1];
  v4 = *a1;
  v7 = 0;
  v6 = 0uLL;
  if (v3 != v4)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v3 - v4) >> 5) < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    sub_271135560();
  }

  sub_2713B2824(v4, v3, &v6);
  result = *&v6;
  *a2 = v6;
  *(a2 + 16) = v7;
  return result;
}

uint64_t sub_2713B2824(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v5 = 0;
    sub_27139DEA8(&v6, v4, a1);
  }

  return a3;
}

void sub_2713B2914(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2713B2930(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2713B2944(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2713B2958(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2713B296C(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = **(a1 + 16);
    v4 = **(a1 + 8);
    while (v3 != v4)
    {
      v5 = *(v3 - 1);
      v3 -= 3;
      if (v5 < 0)
      {
        operator delete(*v3);
      }
    }
  }

  return a1;
}

void sub_2713B29CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v6 = *MEMORY[0x277D85DE8];
  sub_2713B3058(v5, a2);
  sub_2713B2AFC(a1, v5, v3);
}

void sub_2713B2AE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2713A31E0(va);
  _Unwind_Resume(a1);
}

void sub_2713B2AFC(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (**(a1 + 40) <= 1u)
  {
    v5 = *(a1 + 88);
    *(a1 + 72) = "auto_timestamp";
    *(a1 + 80) = 14;
    if ((v5 & 1) == 0)
    {
      *(a1 + 88) = 1;
    }
  }

  sub_27182791C(a1 + 48, (a1 + 40));
  v6 = sub_2718289B0(a1);
  *(a1 + 40) = v6;
  if (*(a1 + 88))
  {
    *(a1 + 88) = 0;
  }

  if (*v6 < 2u && ((*(a1 + 72) = "version", *(a1 + 80) = 7, *(a1 + 88) = 1, v7 = *(a1 + 72), v8 = *v7, v9 = *(v7 + 3), v8 == *"version") ? (v10 = v9 == *"sion") : (v10 = 0), v10))
  {
    *(a1 + 96) = 2;
    *(a1 + 100) = 1;
    *(a1 + 88) = 0;
  }

  else
  {
    v14 = 2;
    v11 = sub_2718289B0(a1);
    v12 = *v11;
    *v11 = 6;
    v13 = v11[1];
    v11[1] = v14;
    v14 = v13;
    sub_2715CC40C(&v14, v12);
  }

  sub_2713B337C(a1, (a2 + 8));
}

uint64_t sub_2713B3058(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *(a1 + 24) = 0;
  *(a1 + 8) = v4;
  *(a1 + 48) = 0;
  if (*(a2 + 48) == 1)
  {
    if (*(a2 + 47) < 0)
    {
      sub_271127178((a1 + 24), *(a2 + 24), *(a2 + 32));
    }

    else
    {
      v5 = *(a2 + 24);
      *(a1 + 40) = *(a2 + 40);
      *(a1 + 24) = v5;
    }

    *(a1 + 48) = 1;
  }

  v6 = *(a2 + 56);
  v7 = *(a2 + 72);
  *(a1 + 80) = 0;
  *(a1 + 72) = v7;
  *(a1 + 56) = v6;
  *(a1 + 104) = 0;
  if (*(a2 + 104) == 1)
  {
    if (*(a2 + 103) < 0)
    {
      sub_271127178((a1 + 80), *(a2 + 80), *(a2 + 88));
    }

    else
    {
      v8 = *(a2 + 80);
      *(a1 + 96) = *(a2 + 96);
      *(a1 + 80) = v8;
    }

    *(a1 + 104) = 1;
  }

  *(a1 + 112) = 0;
  *(a1 + 136) = 0;
  if (*(a2 + 136) == 1)
  {
    if (*(a2 + 135) < 0)
    {
      sub_271127178((a1 + 112), *(a2 + 112), *(a2 + 120));
    }

    else
    {
      v9 = *(a2 + 112);
      *(a1 + 128) = *(a2 + 128);
      *(a1 + 112) = v9;
    }

    *(a1 + 136) = 1;
  }

  *(a1 + 144) = 0;
  *(a1 + 168) = 0;
  if (*(a2 + 168) == 1)
  {
    sub_2713B3234((a1 + 144), (a2 + 144));
    *(a1 + 168) = 1;
  }

  return a1;
}

void sub_2713B31AC(_Unwind_Exception *exception_object)
{
  if (v2[136] == 1 && v2[135] < 0)
  {
    operator delete(*v4);
  }

  if (v2[104] == 1 && v2[103] < 0)
  {
    operator delete(*v3);
  }

  if (v2[48] == 1 && v2[47] < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_2713B3234(uint64_t *a1, __int128 **a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v2 - *a2) >> 3) < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    sub_271135560();
  }

  return a1;
}

void sub_2713B335C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void ***a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_2713B296C(va);
  *(v10 + 8) = v11;
  sub_2713540AC(&a9);
  _Unwind_Resume(a1);
}

void sub_2713B337C(uint64_t a1, unsigned __int8 *a2)
{
  v4 = *(a1 + 40);
  if (*v4 > 1u)
  {
    v7 = (a1 + 88);
    v5 = a1 + 72;
    v8 = (a1 + 80);
    if ((*(a1 + 88) & 1) != 0 && *(a1 + 80) == 7 && **v5 == *"version" && *(*v5 + 3) == *"sion")
    {
      goto LABEL_11;
    }
  }

  else
  {
    *(a1 + 72) = "ns";
    v5 = a1 + 72;
    v7 = (a1 + 88);
    v6 = *(a1 + 88);
    *(a1 + 80) = 2;
    v8 = (a1 + 80);
    if ((v6 & 1) == 0)
    {
      *v7 = 1;
    }
  }

  v10 = *a2;
  v15[0] = 5;
  v16 = v10;
  v11 = sub_2718289B0(a1);
  v12 = *v11;
  *v11 = 5;
  v15[0] = v12;
  v13 = v11[1];
  v11[1] = v16;
  v16 = v13;
  sub_2715CC40C(&v16, v12);
  v4 = *(a1 + 40);
LABEL_11:
  if (*v4 <= 1u)
  {
    v14 = *v7;
    *v5 = "clock_type";
    *v8 = 10;
    if ((v14 & 1) == 0)
    {
      *v7 = 1;
    }
  }

  v17 = 0;
  sub_2713B35AC(&v18, v15, a2 + 8);
}

void sub_2713B3568(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2713B3584(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2713B3598(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2713B37D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_2713B3814(int *a1, uint64_t a2, __int128 *a3)
{
  sub_27182791C(a2 + 48, (a2 + 40));
  v6 = sub_2718289B0(a2);
  *(a2 + 40) = v6;
  if (*(a2 + 88))
  {
    *(a2 + 88) = 0;
  }

  if (*v6 >= 2u)
  {
    v7 = (a2 + 80);
    v9 = a2 + 72;
  }

  else
  {
    *(a2 + 72) = "version";
    *(a2 + 80) = 7;
    v7 = (a2 + 80);
    *(a2 + 88) = 1;
    v9 = a2 + 72;
    v8 = *(a2 + 72);
    v10 = *v8;
    v11 = *(v8 + 3);
    if (v10 == *"version" && v11 == *"sion")
    {
      *(a2 + 96) = 2;
      *(a2 + 100) = 1;
      *(a2 + 88) = 0;
      v13 = *a1;
      if (*a1 >= 1)
      {
        goto LABEL_15;
      }

      goto LABEL_10;
    }
  }

  v32 = 6;
  v33 = 2;
  v16 = sub_2718289B0(a2);
  v17 = *v16;
  *v16 = 6;
  v32 = v17;
  v18 = v16[1];
  v16[1] = v33;
  v33 = v18;
  sub_2715CC40C(&v33, v17);
  v13 = *a1;
  if (*a1 >= 1)
  {
LABEL_15:
    v14 = *(a2 + 40);
    v19 = *(a2 + 88);
    if (v13 == 2)
    {
      if (*v14 > 1u)
      {
        if ((*(a2 + 88) & 1) != 0 && *v7 == 7 && **v9 == *"version" && *(*v9 + 3) == *"sion")
        {
          v19 = 0;
          *(a2 + 96) = 2;
          *(a2 + 100) = 1;
          *(a2 + 88) = 0;
          v31 = *a3;
          if (*v14 <= 1u)
          {
LABEL_34:
            *v9 = "ns";
            *v7 = 2;
            if ((v19 & 1) == 0)
            {
              *(a2 + 88) = 1;
            }

            goto LABEL_42;
          }

LABEL_37:
          if ((v19 & (*v7 == 7)) != 1)
          {
            goto LABEL_42;
          }

          if (**v9 != *"version" || *(*v9 + 3) != *"sion")
          {
            goto LABEL_42;
          }

          goto LABEL_43;
        }
      }

      else
      {
        *v9 = "min_version";
        *v7 = 11;
        if ((v19 & 1) == 0)
        {
          *(a2 + 88) = 1;
        }
      }

      v32 = 6;
      v33 = 2;
      v22 = sub_2718289B0(a2);
      v23 = *v22;
      *v22 = 6;
      v32 = v23;
      v24 = v22[1];
      v22[1] = v33;
      v33 = v24;
      sub_2715CC40C(&v33, v23);
      v14 = *(a2 + 40);
      v19 = *(a2 + 88);
    }

    v31 = *a3;
    if (*v14 <= 1u)
    {
      goto LABEL_34;
    }

    goto LABEL_37;
  }

LABEL_10:
  v31 = *a3;
  v14 = *(a2 + 40);
  v15 = *(a2 + 88);
  if (*v14 <= 1u)
  {
    *v9 = "ns";
    *v7 = 2;
    if ((v15 & 1) == 0)
    {
      *(a2 + 88) = 1;
    }

    goto LABEL_42;
  }

  if ((*(a2 + 88) & 1) == 0 || *v7 != 7 || (**v9 == *"version" ? (v20 = *(*v9 + 3) == *"sion") : (v20 = 0), !v20))
  {
LABEL_42:
    v32 = 5;
    v33 = v31;
    v26 = sub_2718289B0(a2);
    v27 = *v26;
    *v26 = 5;
    v32 = v27;
    v28 = v26[1];
    v26[1] = v33;
    v33 = v28;
    sub_2715CC40C(&v33, v27);
    v14 = *(a2 + 40);
  }

LABEL_43:
  if (*v14 <= 1u)
  {
    v29 = *(a2 + 88);
    *(a2 + 72) = "clock_type";
    *(a2 + 80) = 10;
    if ((v29 & 1) == 0)
    {
      *(a2 + 88) = 1;
    }
  }

  sub_2713B3C30(a2, &v31 + 8);
  v30 = *(a2 + 56);
  *(a2 + 40) = *(v30 - 8);
  *(a2 + 56) = v30 - 8;
  if (*(a2 + 88) == 1)
  {
    *(a2 + 88) = 0;
  }
}

void sub_2713B3C30(uint64_t a1, unsigned __int8 *a2)
{
  if ((*(a1 + 12) & 2) != 0)
  {
    v13 = 0;
    sub_2713B35AC(&v14, v11, a2);
  }

  v2 = *a2;
  v3 = *(a1 + 88) == 1 && *(a1 + 80) == 7;
  if (!v3 || ((v4 = *(a1 + 72), v5 = *v4, v6 = *(v4 + 3), v5 == *"version") ? (v7 = v6 == *"sion") : (v7 = 0), !v7))
  {
    v11[0] = 6;
    v12 = v2;
    v8 = sub_2718289B0(a1);
    v9 = *v8;
    *v8 = 6;
    v11[0] = v9;
    v10 = v8[1];
    v8[1] = v12;
    v12 = v10;
    sub_2715CC40C(&v12, v9);
  }
}

void sub_2713B3DA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2713B3DBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2713B3DD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2713B3DE4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, const std::string::value_type *a4@<X4>, std::string::size_type a5@<X5>, std::string *a6@<X8>)
{
  v12 = 0x5555555555555555 * ((a1 - a3) >> 3);
  v27 = *MEMORY[0x277D85DE8];
  if (v12 <= 1)
  {
    v13 = 1;
  }

  else
  {
    v13 = 0x5555555555555555 * ((a1 - a3) >> 3);
  }

  *&v26 = a1;
  *(&v26 + 1) = a2;
  v23 = a1 - a3;
  v14 = 0;
  if (a1 != a3)
  {
    do
    {
      sub_2713B4060(&v26, &__p);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = __p.__r_.__value_.__l.__size_;
      }

      if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      v14 += size;
      *&v26 = v26 + 24;
    }

    while (v26 != a3);
  }

  v15 = v14 + (v13 - 1) * a5;
  a6->__r_.__value_.__r.__words[0] = 0;
  a6->__r_.__value_.__l.__size_ = 0;
  a6->__r_.__value_.__r.__words[2] = 0;
  if (v15 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_271120DA8();
  }

  if (v15 >= 0x17)
  {
    v16 = v15 | 7;
    if (v16 == 23)
    {
      v17 = 24;
    }

    else
    {
      v17 = v16;
    }

    sub_27113107C(a6, v17);
  }

  *&v26 = a1;
  *(&v26 + 1) = a2;
  if (v23 < 0)
  {
    sub_2713B4060(&v26, &__p);
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
      v19 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v19 = __p.__r_.__value_.__l.__size_;
    }

    std::string::append(a6, p_p, v19);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
      if (v12 < 2)
      {
        return;
      }
    }

    else if (v12 < 2)
    {
      return;
    }

    *&v26 = v26 + 24;
    for (i = v26; i != a3; *&i = i + 24)
    {
      std::string::append(a6, a4, a5);
      sub_2713B4060(&i, &__p);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v21 = &__p;
      }

      else
      {
        v21 = __p.__r_.__value_.__r.__words[0];
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v22 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v22 = __p.__r_.__value_.__l.__size_;
      }

      std::string::append(a6, v21, v22);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }
  }
}

void sub_2713B4010(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v15 + 23) < 0)
  {
    operator delete(*v15);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_2713B4060(unsigned __int8 **a1@<X0>, std::string *a2@<X8>)
{
  v3 = *a1;
  *&a2->__r_.__value_.__r.__words[1] = 0uLL;
  a2->__r_.__value_.__r.__words[0] = 0;
  v4 = v3[23];
  v5 = v4;
  if ((v4 & 0x8000000000000000) != 0)
  {
    v5 = *(v3 + 1);
    if (v5 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_271120DA8();
    }
  }

  if (v5 >= 0x17)
  {
    if ((v5 | 7) == 0x17)
    {
      v6 = 24;
    }

    else
    {
      v6 = v5 | 7;
    }

    sub_27113107C(a2, v6);
    LOBYTE(v4) = v3[23];
  }

  v7 = *(v3 + 1);
  if ((v4 & 0x80u) == 0)
  {
    v8 = v4;
  }

  else
  {
    v3 = *v3;
    v8 = v7;
  }

  if (v8)
  {
    while (1)
    {
      v9 = *v3;
      if (v9 == 59)
      {
        break;
      }

      if (v9 == 92)
      {
        v10 = "\\\"";
LABEL_19:
        std::string::append(a2, v10, 2uLL);
        goto LABEL_14;
      }

      std::string::push_back(a2, v9);
LABEL_14:
      ++v3;
      if (!--v8)
      {
        return;
      }
    }

    v10 = "\\;";
    goto LABEL_19;
  }
}

void sub_2713B415C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_2713B417C(uint64_t a1, uint64_t a2)
{
  v3 = (a1 + 40);
  if (**(a1 + 40) <= 1u)
  {
    v4 = *(a1 + 88);
    *(a1 + 72) = *a2;
    if ((v4 & 1) == 0)
    {
      *(a1 + 88) = 1;
    }
  }

  v5 = *(a2 + 16);
  sub_27182791C(a1 + 48, v3);
  v6 = sub_2718289B0(a1);
  *(a1 + 40) = v6;
  if (*(a1 + 88))
  {
    *(a1 + 88) = 0;
  }

  if (*v6 < 2u && ((*(a1 + 72) = "version", *(a1 + 80) = 7, *(a1 + 88) = 1, v7 = *(a1 + 72), v8 = *v7, v9 = *(v7 + 3), v8 == *"version") ? (v10 = v9 == *"sion") : (v10 = 0), v10))
  {
    *(a1 + 96) = 2;
    *(a1 + 100) = 1;
    *(a1 + 88) = 0;
  }

  else
  {
    LOBYTE(v21) = 6;
    v22 = 2;
    v11 = sub_2718289B0(a1);
    v12 = *v11;
    *v11 = 6;
    LOBYTE(v21) = v12;
    v13 = v11[1];
    v11[1] = v22;
    v22 = v13;
    sub_2715CC40C(&v22, v12);
  }

  v14 = *v5;
  *&v17[6] = *(v5 + 12);
  *v17 = v14;
  v18 = 0;
  v19 = -1;
  v15 = *(v5 + 24);
  if (v15 != -1)
  {
    v21 = &v18;
    (off_288131970[v15])(&v21, v5 + 2);
    v19 = v15;
  }

  if (**v3 <= 1u)
  {
    v16 = *(a1 + 88);
    *(a1 + 72) = "io_format";
    *(a1 + 80) = 9;
    if ((v16 & 1) == 0)
    {
      *(a1 + 88) = 1;
    }
  }

  LODWORD(v23) = 0;
  sub_2713B4A74(&v20, &v21, v17);
}

void sub_2713B485C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, ...)
{
  va_start(va, a23);
  sub_271229D10(va);
  sub_2713A32D8(&a9);
  _Unwind_Resume(a1);
}

void sub_2713B4878(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_2715CC40C((v9 + 8), 6);
  sub_2713A32D8(&a9);
  _Unwind_Resume(a1);
}

void sub_2713B48D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (*(v9 - 97) < 0)
  {
    operator delete(*(v9 - 120));
    sub_2713A32D8(&a9);
    _Unwind_Resume(a1);
  }

  sub_2713A32D8(&a9);
  _Unwind_Resume(a1);
}

void sub_2713B4934(void *a1, uint64_t a2)
{
  v2 = *a1;
  **a1 = &unk_28810E7B8;
  v3 = *(a2 + 8);
  v4 = *(a2 + 16);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    v5 = *(a2 + 40);
    v6 = *(a2 + 48);
    v7 = *(a2 + 52);
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    v5 = *(a2 + 40);
    v6 = *(a2 + 48);
    v7 = *(a2 + 52);
  }

  v2[1] = v3;
  v2[2] = v4;
  v8 = *(a2 + 24);
  *(v2 + 8) = *(a2 + 32);
  v2[3] = v8;
  v2[5] = v5;
  *(v2 + 12) = v6;
  *(v2 + 26) = v7;
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);

    std::__shared_weak_count::__release_weak(v4);
  }
}

__n128 sub_2713B4A20(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v4 = *(a2 + 8);
  v3 = *(a2 + 16);
  *v2 = &unk_28810F9B8;
  *(v2 + 8) = v4;
  *(v2 + 16) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  result = *(a2 + 24);
  v6 = *(a2 + 40);
  *(v2 + 54) = *(a2 + 54);
  *(v2 + 40) = v6;
  *(v2 + 24) = result;
  return result;
}

void sub_2713B4C8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_2713B4ED8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_2713B4F1C(_DWORD *a1, void *a2, uint64_t a3)
{
  v3 = a3;
  sub_2715E8E40(a1, a2, a3, v15);
  if (v15[120] != 1)
  {
    v17[0] = "save";
    v17[1] = 4;
    v16 = v3;
    sub_2715E8C50("Failure during ", v17, " from stream with file format ", &v16, ": ");
  }

  v14 = 1;
  sub_2713B52B4(&v4);
  if ((v14 & 1) == 0 && v13 == 1)
  {
    if (v12 == 1)
    {
      if (SHIBYTE(v11) < 0)
      {
        operator delete(v10[0]);
      }

      if (v9 < 0)
      {
        operator delete(v8);
      }
    }

    if (v7 == 1 && v6 < 0)
    {
      operator delete(v5);
    }
  }
}

void sub_2713B524C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, char a46, uint64_t a47, uint64_t a48)
{
  sub_27112D66C(&a48);
  sub_27112D71C(&a31);
  if (a30 < 0)
  {
    operator delete(__p);
  }

  sub_27112E024(v48 - 168);
  _Unwind_Resume(a1);
}

uint64_t sub_2713B52B4(uint64_t a1)
{
  if ((*(a1 + 120) & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    v4 = sub_271389D20(a1);
    sub_271847E00(v4, &v5);
    std::runtime_error::runtime_error(exception, &v5);
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  return sub_2713B5388(a1);
}

void sub_2713B5350(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v16 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v16)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v15);
  goto LABEL_6;
}

uint64_t sub_2713B5388(uint64_t result)
{
  if ((*(result + 120) & 1) == 0)
  {
    v1 = result;
    exception = __cxa_allocate_exception(0x80uLL);
    sub_27112F660(v3, v1);
    sub_271130228(exception, v3);
    __cxa_throw(exception, &unk_28811C2F0, sub_271130150);
  }

  return result;
}

void sub_2713B5400(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27112D71C(va);
  _Unwind_Resume(a1);
}

void sub_2713B5414(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27112D71C(va);
  __cxa_free_exception(v3);
  _Unwind_Resume(a1);
}

uint64_t sub_2713B5444(uint64_t a1)
{
  *a1 = MEMORY[0x277D82878] + 16;
  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  *a1 = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 8));
  return a1;
}

void sub_2713B54B8(uint64_t *a1)
{
  v2 = *(a1 + 26);
  if ((v2 & 0x10) != 0)
  {
    v4 = a1[12];
    v5 = a1[7];
    if (v4 < v5)
    {
      a1[12] = v5;
      v4 = v5;
    }

    v6 = a1[6];
    v3 = v4 - v6;
    if (v4 - v6 >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_26;
    }
  }

  else
  {
    if ((v2 & 8) == 0)
    {
      v3 = 0;
      v19 = 0;
      goto LABEL_12;
    }

    v6 = a1[3];
    v3 = a1[5] - v6;
    if (v3 >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_26:
      sub_271120DA8();
    }
  }

  if (v3 >= 0x17)
  {
    operator new();
  }

  v19 = v3;
  if (v3)
  {
    memmove(__dst, v6, v3);
  }

LABEL_12:
  *(__dst + v3) = 0;
  v7 = v19;
  if ((v19 & 0x80u) == 0)
  {
    v8 = v19;
  }

  else
  {
    v8 = __dst[1];
  }

  v9 = *a1;
  if (*(*a1 + 88) != 1 || *(v9 + 80) != 7 || ((v10 = *(v9 + 72), v11 = *v10, v12 = *(v10 + 3), v11 == *"version") ? (v13 = v12 == *"sion") : (v13 = 0), !v13))
  {
    LOBYTE(v20) = 6;
    v21 = v8;
    v14 = sub_2718289B0(v9);
    v15 = *v14;
    *v14 = 6;
    LOBYTE(v20) = v15;
    v16 = v14[1];
    v14[1] = v21;
    v21 = v16;
    sub_2715CC40C(&v21, v15);
    v9 = *a1;
  }

  v17 = __dst[0];
  if (v7 >= 0)
  {
    v17 = __dst;
  }

  v20 = v17;
  v21 = v8;
  sub_271828DE4(v9, &v20);
}

void sub_2713B5730(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v22 = *MEMORY[0x277D85DE8];
  sub_2713B3058(v9, a2);
  sub_2713B5860(a1, v9, v3);
  if (v21 == 1)
  {
    v5 = __p;
    if (__p)
    {
      v6 = v20;
      v7 = __p;
      if (v20 != __p)
      {
        do
        {
          v8 = *(v6 - 1);
          v6 -= 3;
          if (v8 < 0)
          {
            operator delete(*v6);
          }
        }

        while (v6 != v5);
        v7 = __p;
      }

      v20 = v5;
      operator delete(v7);
    }
  }

  if (v18 == 1 && v17 < 0)
  {
    operator delete(v16);
  }

  if (v15 == 1 && v14 < 0)
  {
    operator delete(v13);
  }

  if (v12 == 1 && v11 < 0)
  {
    operator delete(v10);
  }
}

void sub_2713B5848(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2713A31E0(va);
  _Unwind_Resume(a1);
}

char *sub_2713B5860(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v6 = *(a1 + 24);
  if (*(v6 + 40) == 1)
  {
    v34[0] = (v6 + 16);
    sub_2718460EC(v34, 2u);
    sub_271840ADC(*(a1 + 24));
    v7 = *(a1 + 24);
    if (*(v7 + 40) != 1)
    {
      goto LABEL_3;
    }

LABEL_7:
    v34[0] = (v7 + 16);
    sub_271846460(v34, *(a2 + 8));
    v8 = *(a2 + 16);
    v35 = *(a2 + 16);
    v9 = *(a1 + 24);
    if (*(v9 + 40) != 1)
    {
      goto LABEL_4;
    }

LABEL_8:
    v34[0] = (v9 + 16);
    sub_2718454CC(v34, &v35);
    goto LABEL_11;
  }

  sub_27184636C(v34, (v6 + 8), 2u);
  sub_271840ADC(*(a1 + 24));
  v7 = *(a1 + 24);
  if (*(v7 + 40) == 1)
  {
    goto LABEL_7;
  }

LABEL_3:
  sub_2718469A8((v7 + 8), *(a2 + 8));
  v8 = *(a2 + 16);
  v35 = *(a2 + 16);
  v9 = *(a1 + 24);
  if (*(v9 + 40) == 1)
  {
    goto LABEL_8;
  }

LABEL_4:
  if (v8 < 0)
  {
    LOBYTE(v34[0]) = -52;
    BYTE1(v34[0]) = v8;
  }

  else
  {
    LOBYTE(v34[0]) = v8;
  }

  std::ostream::write();
LABEL_11:
  v10 = *(a1 + 24);
  v11 = *(*(v10 + 88) - 8);
  sub_2718404E0((v10 + 48), *(v10 + 16) - v11 - 9);
  v12 = *(v10 + 48);
  if (v12)
  {
    memmove((*(v10 + 24) + v11), *(v10 + 56), v12);
  }

  *(v10 + 48) = 0;
  v13 = *(v10 + 80);
  v14 = *(v10 + 88) - 8;
  *(v10 + 88) = v14;
  if (v13 == v14)
  {
    std::ostream::write();
    if (*(v10 + 40) == 1)
    {
      free(*(v10 + 24));
      *(v10 + 40) = 0;
    }
  }

  if (*(a2 + 48) == 1)
  {
    v35 = 1;
    v15 = *(a1 + 24);
    if (*(v15 + 40) == 1)
    {
      v34[0] = (v15 + 16);
      sub_2718454CC(v34, &v35);
      v16 = *(a1 + 24);
      if (*(v16 + 40) != 1)
      {
        goto LABEL_19;
      }
    }

    else
    {
      LOBYTE(v34[0]) = 1;
      std::ostream::write();
      v16 = *(a1 + 24);
      if (*(v16 + 40) != 1)
      {
LABEL_19:
        result = sub_271847654((v16 + 8), (a2 + 24));
        if (a3 < 4)
        {
          return result;
        }

        goto LABEL_28;
      }
    }

    v34[0] = (v16 + 16);
    result = sub_271847238(v34, (a2 + 24));
    if (a3 < 4)
    {
      return result;
    }
  }

  else
  {
    v35 = 0;
    v18 = *(a1 + 24);
    if (*(v18 + 40) == 1)
    {
      v34[0] = (v18 + 16);
      result = sub_2718454CC(v34, &v35);
      if (a3 < 4)
      {
        return result;
      }
    }

    else
    {
      LOBYTE(v34[0]) = 0;
      result = std::ostream::write();
      if (a3 < 4)
      {
        return result;
      }
    }
  }

LABEL_28:
  v34[0] = "custom_timestamp";
  v34[1] = 16;
  v34[2] = (a2 + 56);
  result = sub_2713B5F50(a1, v34);
  if (a3 != 5)
  {
    if (a3 < 6)
    {
      return result;
    }

    if (*(a2 + 104) != 1)
    {
      v35 = 0;
      v23 = *(a1 + 24);
      if (*(v23 + 40) == 1)
      {
        v34[0] = (v23 + 16);
        sub_2718454CC(v34, &v35);
        if (*(a2 + 136) == 1)
        {
LABEL_50:
          v35 = 1;
          v25 = *(a1 + 24);
          if (*(v25 + 40) == 1)
          {
            v34[0] = (v25 + 16);
            sub_2718454CC(v34, &v35);
            v26 = *(a1 + 24);
            if (*(v26 + 40) != 1)
            {
              goto LABEL_52;
            }
          }

          else
          {
            LOBYTE(v34[0]) = 1;
            std::ostream::write();
            v26 = *(a1 + 24);
            if (*(v26 + 40) != 1)
            {
LABEL_52:
              sub_271847654((v26 + 8), (a2 + 112));
              if (*(a2 + 168) == 1)
              {
LABEL_60:
                v35 = 1;
                v28 = *(a1 + 24);
                if (*(v28 + 40) == 1)
                {
                  v34[0] = (v28 + 16);
                  sub_2718454CC(v34, &v35);
                }

                else
                {
                  LOBYTE(v34[0]) = 1;
                  std::ostream::write();
                }

                v29 = 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 152) - *(a2 + 144)) >> 3);
                v30 = *(a1 + 24);
                if (*(v30 + 40) == 1)
                {
                  v34[0] = (v30 + 16);
                  result = sub_271846AEC(v34, v29);
                  v32 = *(a2 + 144);
                  v31 = *(a2 + 152);
                  v33 = *(a1 + 24);
                  if (*(v33 + 40) != 1)
                  {
                    goto LABEL_65;
                  }
                }

                else
                {
                  result = sub_271846E00((v30 + 8), v29);
                  v32 = *(a2 + 144);
                  v31 = *(a2 + 152);
                  v33 = *(a1 + 24);
                  if (*(v33 + 40) != 1)
                  {
LABEL_65:
                    while (v32 != v31)
                    {
                      result = sub_271847654((v33 + 8), v32);
                      v32 += 3;
                    }

                    return result;
                  }
                }

                for (v34[0] = (v33 + 16); v32 != v31; v32 += 3)
                {
                  result = sub_271847238(v34, v32);
                }

                return result;
              }

LABEL_55:
              v35 = 0;
              v27 = *(a1 + 24);
              if (*(v27 + 40) == 1)
              {
                v34[0] = (v27 + 16);
                return sub_2718454CC(v34, &v35);
              }

              else
              {
                LOBYTE(v34[0]) = 0;
                return std::ostream::write();
              }
            }
          }

          v34[0] = (v26 + 16);
          sub_271847238(v34, (a2 + 112));
          if (*(a2 + 168) == 1)
          {
            goto LABEL_60;
          }

          goto LABEL_55;
        }
      }

      else
      {
        LOBYTE(v34[0]) = 0;
        std::ostream::write();
        if (*(a2 + 136) == 1)
        {
          goto LABEL_50;
        }
      }

LABEL_46:
      v35 = 0;
      v24 = *(a1 + 24);
      if (*(v24 + 40) == 1)
      {
        v34[0] = (v24 + 16);
        sub_2718454CC(v34, &v35);
        if (*(a2 + 168) == 1)
        {
          goto LABEL_60;
        }
      }

      else
      {
        LOBYTE(v34[0]) = 0;
        std::ostream::write();
        if (*(a2 + 168) == 1)
        {
          goto LABEL_60;
        }
      }

      goto LABEL_55;
    }

    v35 = 1;
    v21 = *(a1 + 24);
    if (*(v21 + 40) == 1)
    {
      v34[0] = (v21 + 16);
      sub_2718454CC(v34, &v35);
      v22 = *(a1 + 24);
      if (*(v22 + 40) != 1)
      {
        goto LABEL_37;
      }
    }

    else
    {
      LOBYTE(v34[0]) = 1;
      std::ostream::write();
      v22 = *(a1 + 24);
      if (*(v22 + 40) != 1)
      {
LABEL_37:
        sub_271847654((v22 + 8), (a2 + 80));
        if (*(a2 + 136) == 1)
        {
          goto LABEL_50;
        }

        goto LABEL_46;
      }
    }

    v34[0] = (v22 + 16);
    sub_271847238(v34, (a2 + 80));
    if (*(a2 + 136) == 1)
    {
      goto LABEL_50;
    }

    goto LABEL_46;
  }

  if (*(a2 + 104) != 1)
  {
    goto LABEL_55;
  }

  v35 = 1;
  v19 = *(a1 + 24);
  if (*(v19 + 40) == 1)
  {
    v34[0] = (v19 + 16);
    sub_2718454CC(v34, &v35);
    v20 = *(a1 + 24);
    if (*(v20 + 40) != 1)
    {
      return sub_271847654((v20 + 8), (a2 + 80));
    }
  }

  else
  {
    LOBYTE(v34[0]) = 1;
    std::ostream::write();
    v20 = *(a1 + 24);
    if (*(v20 + 40) != 1)
    {
      return sub_271847654((v20 + 8), (a2 + 80));
    }
  }

  v34[0] = (v20 + 16);
  return sub_271847238(v34, (a2 + 80));
}

uint64_t sub_2713B5F50(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (*(v3 + 16) != 1)
  {
    v16 = 0;
    v9 = *(a1 + 24);
    if (*(v9 + 40) != 1)
    {
      LOBYTE(v17) = 0;
      std::ostream::write();
      return a1;
    }

    v17 = (v9 + 16);
    sub_2718454CC(&v17, &v16);
    return a1;
  }

  v16 = 1;
  v4 = *(a1 + 24);
  if (*(v4 + 40) == 1)
  {
    v17 = (v4 + 16);
    sub_2718454CC(&v17, &v16);
    v5 = *(a1 + 24);
    if (*(v5 + 40) != 1)
    {
      goto LABEL_4;
    }
  }

  else
  {
    LOBYTE(v17) = 1;
    std::ostream::write();
    v5 = *(a1 + 24);
    if (*(v5 + 40) != 1)
    {
LABEL_4:
      sub_27184636C(&v17, (v5 + 8), 2u);
      sub_271840ADC(*(a1 + 24));
      v6 = *(a1 + 24);
      if (*(v6 + 40) != 1)
      {
        goto LABEL_5;
      }

LABEL_13:
      v17 = (v6 + 16);
      sub_271846460(&v17, *v3);
      v7 = *(v3 + 8);
      v16 = *(v3 + 8);
      v8 = *(a1 + 24);
      if (*(v8 + 40) != 1)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }
  }

  v17 = (v5 + 16);
  sub_2718460EC(&v17, 2u);
  sub_271840ADC(*(a1 + 24));
  v6 = *(a1 + 24);
  if (*(v6 + 40) == 1)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_2718469A8((v6 + 8), *v3);
  v7 = *(v3 + 8);
  v16 = *(v3 + 8);
  v8 = *(a1 + 24);
  if (*(v8 + 40) != 1)
  {
LABEL_6:
    if (v7 < 0)
    {
      LOBYTE(v17) = -52;
      BYTE1(v17) = v7;
    }

    else
    {
      LOBYTE(v17) = v7;
    }

    std::ostream::write();
    goto LABEL_18;
  }

LABEL_14:
  v17 = (v8 + 16);
  sub_2718454CC(&v17, &v16);
LABEL_18:
  v11 = *(a1 + 24);
  v12 = *(*(v11 + 88) - 8);
  sub_2718404E0((v11 + 48), *(v11 + 16) - v12 - 9);
  v13 = *(v11 + 48);
  if (v13)
  {
    memmove((*(v11 + 24) + v12), *(v11 + 56), v13);
  }

  *(v11 + 48) = 0;
  v14 = *(v11 + 80);
  v15 = *(v11 + 88) - 8;
  *(v11 + 88) = v15;
  if (v14 != v15)
  {
    return a1;
  }

  std::ostream::write();
  if (*(v11 + 40) != 1)
  {
    return a1;
  }

  free(*(v11 + 24));
  *(v11 + 40) = 0;
  return a1;
}

void sub_2713B61C4(uint64_t *a1, uint64_t a2)
{
  v4 = a1[3];
  if (*(v4 + 40) == 1)
  {
    v26 = (v4 + 16);
    sub_2718460EC(&v26, 2u);
  }

  else
  {
    sub_27184636C(&v26, (v4 + 8), 2u);
  }

  sub_271840ADC(a1[3]);
  *v23 = *a2;
  *&v23[12] = *(a2 + 12);
  v24[0] = 0;
  v25 = -1;
  v5 = *(a2 + 96);
  if (v5 != -1)
  {
    v26 = v24;
    (off_288131970[v5])(&v26, a2 + 32);
    v25 = v5;
  }

  LOWORD(v39[0]) = *v23;
  v6 = a1[3];
  if (*(v6 + 40) == 1)
  {
    v26 = (v6 + 16);
    sub_2718459EC(&v26, v39);
  }

  else if (*v23 > 0x7Fu)
  {
    if (*v23 > 0xFFu)
    {
      LOBYTE(v26) = -51;
      *(&v26 + 1) = __rev16(*v23);
    }

    else
    {
      LOBYTE(v26) = -52;
      BYTE1(v26) = v23[0];
    }

    std::ostream::write();
  }

  else
  {
    LOBYTE(v26) = v23[0];
    std::ostream::write();
  }

  v7 = a1[3];
  if (*(v7 + 40) == 1)
  {
    v26 = (v7 + 16);
    sub_2718460EC(&v26, 2u);
  }

  else
  {
    LOBYTE(v26) = 2;
    std::ostream::write();
  }

  sub_271840ADC(a1[3]);
  v8 = a1[3];
  if (*(v8 + 40) == 1)
  {
    v26 = (v8 + 16);
    sub_271846AEC(&v26, *&v23[8]);
  }

  else
  {
    sub_271846E00((v8 + 8), *&v23[8]);
  }

  v9 = a1[3];
  if (*(v9 + 40) == 1)
  {
    v26 = (v9 + 16);
    sub_2718460EC(&v26, *&v23[16]);
    sub_2718460EC(&v26, *&v23[20]);
  }

  else
  {
    sub_27184636C(&v26, (v9 + 8), *&v23[16]);
    sub_27184636C(&v26, (v9 + 8), *&v23[20]);
  }

  v10 = a1[3];
  v11 = *(*(v10 + 88) - 8);
  sub_2718404E0((v10 + 48), *(v10 + 16) - v11 - 9);
  v12 = *(v10 + 48);
  if (v12)
  {
    memmove((*(v10 + 24) + v11), *(v10 + 56), v12);
  }

  *(v10 + 48) = 0;
  v13 = *(v10 + 80);
  v14 = *(v10 + 88) - 8;
  *(v10 + 88) = v14;
  if (v13 == v14)
  {
    std::ostream::write();
    if (*(v10 + 40) == 1)
    {
      free(*(v10 + 24));
      *(v10 + 40) = 0;
    }
  }

  if (*v23 == 1)
  {
    sub_2715F5084(v23, &v26);
    sub_2715F78FC(a1, &v26);
    v15 = v28;
    if (!v28)
    {
LABEL_33:
      v17 = v25;
      if (v25 == -1)
      {
        goto LABEL_35;
      }

      goto LABEL_34;
    }
  }

  else
  {
    v16 = sub_2715F7478(*v23);
    sub_2715F5084(v23, v39);
    v26 = a1;
    v27 = MEMORY[0x277D82868] + 16;
    MEMORY[0x2743BED80](&v28);
    v31 = 0u;
    v30 = 0u;
    v29 = 0u;
    v27 = MEMORY[0x277D82878] + 16;
    v32 = 0u;
    v33 = 0u;
    v34 = 24;
    sub_271129318(&v27);
    v36.__loc_ = 0;
    v35 = MEMORY[0x277D82850] + 24;
    v36.__vftable = (MEMORY[0x277D82850] + 64);
    std::ios_base::init(&v36, &v27);
    v37 = 0;
    v38 = -1;
    sub_2713B4F1C(v39, &v35, v16);
    sub_2713B6738(&v26);
    v15 = v40;
    if (!v40)
    {
      goto LABEL_33;
    }
  }

  if (atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_33;
  }

  (v15->__on_zero_shared)(v15);
  std::__shared_weak_count::__release_weak(v15);
  v17 = v25;
  if (v25 != -1)
  {
LABEL_34:
    (off_2881318A0[v17])(&v26, v24);
  }

LABEL_35:
  v18 = a1[3];
  v19 = *(*(v18 + 88) - 8);
  sub_2718404E0((v18 + 48), *(v18 + 16) - v19 - 9);
  v20 = *(v18 + 48);
  if (v20)
  {
    memmove((*(v18 + 24) + v19), *(v18 + 56), v20);
  }

  *(v18 + 48) = 0;
  v21 = *(v18 + 80);
  v22 = *(v18 + 88) - 8;
  *(v18 + 88) = v22;
  if (v21 == v22)
  {
    std::ostream::write();
    if (*(v18 + 40) == 1)
    {
      free(*(v18 + 24));
      *(v18 + 40) = 0;
    }
  }
}

void sub_2713B6690(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  sub_2713B6738(&a22);
  sub_271229D10(v36 - 120);
  sub_2713A32D8(&a9);
  _Unwind_Resume(a1);
}

void sub_2713B66F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  sub_271229D10(va);
  sub_2713A32D8(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_2713B6738(uint64_t *a1)
{
  v2 = *(a1 + 26);
  if ((v2 & 0x10) != 0)
  {
    v4 = a1[12];
    v5 = a1[7];
    if (v4 < v5)
    {
      a1[12] = v5;
      v4 = v5;
    }

    v6 = a1[6];
    v3 = v4 - v6;
    if (v4 - v6 >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_29;
    }
  }

  else
  {
    if ((v2 & 8) == 0)
    {
      v3 = 0;
      v15 = 0;
      goto LABEL_12;
    }

    v6 = a1[3];
    v3 = a1[5] - v6;
    if (v3 >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_29:
      sub_271120DA8();
    }
  }

  if (v3 >= 0x17)
  {
    operator new();
  }

  v15 = v3;
  if (v3)
  {
    memmove(__p, v6, v3);
  }

LABEL_12:
  *(__p + v3) = 0;
  v7 = v15;
  if ((v15 & 0x80u) == 0)
  {
    v8 = v15;
  }

  else
  {
    v8 = __p[1];
  }

  v9 = *(*a1 + 24);
  if (*(v9 + 40) == 1)
  {
    v18[0] = (v9 + 16);
    sub_271846AEC(v18, v8);
  }

  else
  {
    sub_271846E00((v9 + 8), v8);
  }

  v10 = __p[0];
  if (v7 >= 0)
  {
    v10 = __p;
  }

  v11 = *a1;
  v16[0] = v10;
  v16[1] = v8;
  v12 = *(v11 + 24);
  if (*(v12 + 40) == 1)
  {
    v17 = (v12 + 16);
    LODWORD(v18[0]) = v8;
    v18[1] = v10;
    sub_27184500C(&v17, v18);
  }

  else
  {
    sub_2718452C0((v12 + 8), v16);
  }

  if (v15 < 0)
  {
    operator delete(__p[0]);
    std::ostream::~ostream();
    a1[1] = MEMORY[0x277D82878] + 16;
    if ((*(a1 + 95) & 0x80000000) == 0)
    {
      goto LABEL_25;
    }

LABEL_27:
    operator delete(a1[9]);
    goto LABEL_25;
  }

  std::ostream::~ostream();
  a1[1] = MEMORY[0x277D82878] + 16;
  if (*(a1 + 95) < 0)
  {
    goto LABEL_27;
  }

LABEL_25:
  a1[1] = MEMORY[0x277D82868] + 16;
  std::locale::~locale(a1 + 2);
  return a1;
}

void sub_2713B6988(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v6 = *MEMORY[0x277D85DE8];
  sub_2713B3058(v5, a2);
  sub_2713B6AB8(a1, v5, v3);
}

void sub_2713B6AA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2713A31E0(va);
  _Unwind_Resume(a1);
}

void sub_2713B6AB8(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (**(a1 + 40) <= 1u)
  {
    v5 = *(a1 + 88);
    *(a1 + 72) = "auto_timestamp";
    *(a1 + 80) = 14;
    if ((v5 & 1) == 0)
    {
      *(a1 + 88) = 1;
    }
  }

  sub_2715DF0F0(a1 + 48, (a1 + 40));
  v6 = sub_27182815C(a1);
  *(a1 + 40) = v6;
  if (*(a1 + 88))
  {
    *(a1 + 88) = 0;
  }

  if (*v6 < 2u && ((*(a1 + 72) = "version", *(a1 + 80) = 7, *(a1 + 88) = 1, v7 = *(a1 + 72), v8 = *v7, v9 = *(v7 + 3), v8 == *"version") ? (v10 = v9 == *"sion") : (v10 = 0), v10))
  {
    *(a1 + 96) = 2;
    *(a1 + 100) = 1;
    *(a1 + 88) = 0;
  }

  else
  {
    v14 = 2;
    v11 = sub_27182815C(a1);
    v12 = *v11;
    *v11 = 6;
    v13 = v11[1];
    v11[1] = v14;
    v14 = v13;
    sub_2715CA870(&v14, v12);
  }

  sub_2713B7014(a1, (a2 + 8));
}

void sub_2713B7014(uint64_t a1, unsigned __int8 *a2)
{
  v4 = *(a1 + 40);
  if (*v4 > 1u)
  {
    v7 = (a1 + 88);
    v5 = a1 + 72;
    v8 = (a1 + 80);
    if ((*(a1 + 88) & 1) != 0 && *(a1 + 80) == 7 && **v5 == *"version" && *(*v5 + 3) == *"sion")
    {
      goto LABEL_11;
    }
  }

  else
  {
    *(a1 + 72) = "ns";
    v5 = a1 + 72;
    v7 = (a1 + 88);
    v6 = *(a1 + 88);
    *(a1 + 80) = 2;
    v8 = (a1 + 80);
    if ((v6 & 1) == 0)
    {
      *v7 = 1;
    }
  }

  v10 = *a2;
  v15[0] = 5;
  v16 = v10;
  v11 = sub_27182815C(a1);
  v12 = *v11;
  *v11 = 5;
  v15[0] = v12;
  v13 = v11[1];
  v11[1] = v16;
  v16 = v13;
  sub_2715CA870(&v16, v12);
  v4 = *(a1 + 40);
LABEL_11:
  if (*v4 <= 1u)
  {
    v14 = *v7;
    *v5 = "clock_type";
    *v8 = 10;
    if ((v14 & 1) == 0)
    {
      *v7 = 1;
    }
  }

  v17 = 0;
  sub_2713B35AC(&v18, v15, a2 + 8);
}

void sub_2713B7200(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2713B721C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2713B7230(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2713B7244(int *a1, uint64_t a2, __int128 *a3)
{
  sub_2715DF0F0(a2 + 48, (a2 + 40));
  v6 = sub_27182815C(a2);
  *(a2 + 40) = v6;
  if (*(a2 + 88))
  {
    *(a2 + 88) = 0;
  }

  if (*v6 >= 2u)
  {
    v7 = (a2 + 80);
    v9 = a2 + 72;
  }

  else
  {
    *(a2 + 72) = "version";
    *(a2 + 80) = 7;
    v7 = (a2 + 80);
    *(a2 + 88) = 1;
    v9 = a2 + 72;
    v8 = *(a2 + 72);
    v10 = *v8;
    v11 = *(v8 + 3);
    if (v10 == *"version" && v11 == *"sion")
    {
      *(a2 + 96) = 2;
      *(a2 + 100) = 1;
      *(a2 + 88) = 0;
      v13 = *a1;
      if (*a1 >= 1)
      {
        goto LABEL_15;
      }

      goto LABEL_10;
    }
  }

  v32 = 6;
  v33 = 2;
  v16 = sub_27182815C(a2);
  v17 = *v16;
  *v16 = 6;
  v32 = v17;
  v18 = v16[1];
  v16[1] = v33;
  v33 = v18;
  sub_2715CA870(&v33, v17);
  v13 = *a1;
  if (*a1 >= 1)
  {
LABEL_15:
    v14 = *(a2 + 40);
    v19 = *(a2 + 88);
    if (v13 == 2)
    {
      if (*v14 > 1u)
      {
        if ((*(a2 + 88) & 1) != 0 && *v7 == 7 && **v9 == *"version" && *(*v9 + 3) == *"sion")
        {
          v19 = 0;
          *(a2 + 96) = 2;
          *(a2 + 100) = 1;
          *(a2 + 88) = 0;
          v31 = *a3;
          if (*v14 <= 1u)
          {
LABEL_34:
            *v9 = "ns";
            *v7 = 2;
            if ((v19 & 1) == 0)
            {
              *(a2 + 88) = 1;
            }

            goto LABEL_42;
          }

LABEL_37:
          if ((v19 & (*v7 == 7)) != 1)
          {
            goto LABEL_42;
          }

          if (**v9 != *"version" || *(*v9 + 3) != *"sion")
          {
            goto LABEL_42;
          }

          goto LABEL_43;
        }
      }

      else
      {
        *v9 = "min_version";
        *v7 = 11;
        if ((v19 & 1) == 0)
        {
          *(a2 + 88) = 1;
        }
      }

      v32 = 6;
      v33 = 2;
      v22 = sub_27182815C(a2);
      v23 = *v22;
      *v22 = 6;
      v32 = v23;
      v24 = v22[1];
      v22[1] = v33;
      v33 = v24;
      sub_2715CA870(&v33, v23);
      v14 = *(a2 + 40);
      v19 = *(a2 + 88);
    }

    v31 = *a3;
    if (*v14 <= 1u)
    {
      goto LABEL_34;
    }

    goto LABEL_37;
  }

LABEL_10:
  v31 = *a3;
  v14 = *(a2 + 40);
  v15 = *(a2 + 88);
  if (*v14 <= 1u)
  {
    *v9 = "ns";
    *v7 = 2;
    if ((v15 & 1) == 0)
    {
      *(a2 + 88) = 1;
    }

    goto LABEL_42;
  }

  if ((*(a2 + 88) & 1) == 0 || *v7 != 7 || (**v9 == *"version" ? (v20 = *(*v9 + 3) == *"sion") : (v20 = 0), !v20))
  {
LABEL_42:
    v32 = 5;
    v33 = v31;
    v26 = sub_27182815C(a2);
    v27 = *v26;
    *v26 = 5;
    v32 = v27;
    v28 = v26[1];
    v26[1] = v33;
    v33 = v28;
    sub_2715CA870(&v33, v27);
    v14 = *(a2 + 40);
  }

LABEL_43:
  if (*v14 <= 1u)
  {
    v29 = *(a2 + 88);
    *(a2 + 72) = "clock_type";
    *(a2 + 80) = 10;
    if ((v29 & 1) == 0)
    {
      *(a2 + 88) = 1;
    }
  }

  sub_2713B7660(a2, &v31 + 8);
  v30 = *(a2 + 56);
  *(a2 + 40) = *(v30 - 8);
  *(a2 + 56) = v30 - 8;
  if (*(a2 + 88) == 1)
  {
    *(a2 + 88) = 0;
  }
}

void sub_2713B7660(uint64_t a1, unsigned __int8 *a2)
{
  if ((*(a1 + 12) & 2) != 0)
  {
    v13 = 0;
    sub_2713B35AC(&v14, v11, a2);
  }

  v2 = *a2;
  v3 = *(a1 + 88) == 1 && *(a1 + 80) == 7;
  if (!v3 || ((v4 = *(a1 + 72), v5 = *v4, v6 = *(v4 + 3), v5 == *"version") ? (v7 = v6 == *"sion") : (v7 = 0), !v7))
  {
    v11[0] = 6;
    v12 = v2;
    v8 = sub_27182815C(a1);
    v9 = *v8;
    *v8 = 6;
    v11[0] = v9;
    v10 = v8[1];
    v8[1] = v12;
    v12 = v10;
    sub_2715CA870(&v12, v9);
  }
}

void sub_2713B77D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2713B77EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2713B7800(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2713B7814(uint64_t a1, uint64_t a2)
{
  v3 = (a1 + 40);
  if (**(a1 + 40) <= 1u)
  {
    v4 = *(a1 + 88);
    *(a1 + 72) = *a2;
    if ((v4 & 1) == 0)
    {
      *(a1 + 88) = 1;
    }
  }

  v5 = *(a2 + 16);
  sub_2715DF0F0(a1 + 48, v3);
  v6 = sub_27182815C(a1);
  *(a1 + 40) = v6;
  if (*(a1 + 88))
  {
    *(a1 + 88) = 0;
  }

  if (*v6 < 2u && ((*(a1 + 72) = "version", *(a1 + 80) = 7, *(a1 + 88) = 1, v7 = *(a1 + 72), v8 = *v7, v9 = *(v7 + 3), v8 == *"version") ? (v10 = v9 == *"sion") : (v10 = 0), v10))
  {
    *(a1 + 96) = 2;
    *(a1 + 100) = 1;
    *(a1 + 88) = 0;
  }

  else
  {
    LOBYTE(v21) = 6;
    v22 = 2;
    v11 = sub_27182815C(a1);
    v12 = *v11;
    *v11 = 6;
    LOBYTE(v21) = v12;
    v13 = v11[1];
    v11[1] = v22;
    v22 = v13;
    sub_2715CA870(&v22, v12);
  }

  v14 = *v5;
  *&v17[6] = *(v5 + 12);
  *v17 = v14;
  v18 = 0;
  v19 = -1;
  v15 = *(v5 + 24);
  if (v15 != -1)
  {
    v21 = &v18;
    (off_288131970[v15])(&v21, v5 + 2);
    v19 = v15;
  }

  if (**v3 <= 1u)
  {
    v16 = *(a1 + 88);
    *(a1 + 72) = "io_format";
    *(a1 + 80) = 9;
    if ((v16 & 1) == 0)
    {
      *(a1 + 88) = 1;
    }
  }

  LODWORD(v23) = 0;
  sub_2713B4A74(&v20, &v21, v17);
}

void sub_2713B7EF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, ...)
{
  va_start(va, a23);
  sub_271229D10(va);
  sub_2713A32D8(&a9);
  _Unwind_Resume(a1);
}

void sub_2713B7F10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_2715CA870((v9 + 8), 6);
  sub_2713A32D8(&a9);
  _Unwind_Resume(a1);
}

void sub_2713B7F68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (*(v9 - 97) < 0)
  {
    operator delete(*(v9 - 120));
    sub_2713A32D8(&a9);
    _Unwind_Resume(a1);
  }

  sub_2713A32D8(&a9);
  _Unwind_Resume(a1);
}

void sub_2713B7FCC(uint64_t *a1)
{
  v2 = *(a1 + 26);
  if ((v2 & 0x10) != 0)
  {
    v4 = a1[12];
    v5 = a1[7];
    if (v4 < v5)
    {
      a1[12] = v5;
      v4 = v5;
    }

    v6 = a1[6];
    v3 = v4 - v6;
    if (v4 - v6 >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_26;
    }
  }

  else
  {
    if ((v2 & 8) == 0)
    {
      v3 = 0;
      v19 = 0;
      goto LABEL_12;
    }

    v6 = a1[3];
    v3 = a1[5] - v6;
    if (v3 >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_26:
      sub_271120DA8();
    }
  }

  if (v3 >= 0x17)
  {
    operator new();
  }

  v19 = v3;
  if (v3)
  {
    memmove(__dst, v6, v3);
  }

LABEL_12:
  *(__dst + v3) = 0;
  v7 = v19;
  if ((v19 & 0x80u) == 0)
  {
    v8 = v19;
  }

  else
  {
    v8 = __dst[1];
  }

  v9 = *a1;
  if (*(*a1 + 88) != 1 || *(v9 + 80) != 7 || ((v10 = *(v9 + 72), v11 = *v10, v12 = *(v10 + 3), v11 == *"version") ? (v13 = v12 == *"sion") : (v13 = 0), !v13))
  {
    LOBYTE(v20) = 6;
    v21 = v8;
    v14 = sub_27182815C(v9);
    v15 = *v14;
    *v14 = 6;
    LOBYTE(v20) = v15;
    v16 = v14[1];
    v14[1] = v21;
    v21 = v16;
    sub_2715CA870(&v21, v15);
    v9 = *a1;
  }

  v17 = __dst[0];
  if (v7 >= 0)
  {
    v17 = __dst;
  }

  v20 = v17;
  v21 = v8;
  sub_271828638(v9, &v20);
}

void sub_2713B8244(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v22 = *MEMORY[0x277D85DE8];
  sub_2713B3058(v9, a2);
  sub_2713B8374(a1, v9, v3);
  if (v21 == 1)
  {
    v5 = __p;
    if (__p)
    {
      v6 = v20;
      v7 = __p;
      if (v20 != __p)
      {
        do
        {
          v8 = *(v6 - 1);
          v6 -= 3;
          if (v8 < 0)
          {
            operator delete(*v6);
          }
        }

        while (v6 != v5);
        v7 = __p;
      }

      v20 = v5;
      operator delete(v7);
    }
  }

  if (v18 == 1 && v17 < 0)
  {
    operator delete(v16);
  }

  if (v15 == 1 && v14 < 0)
  {
    operator delete(v13);
  }

  if (v12 == 1 && v11 < 0)
  {
    operator delete(v10);
  }
}

void sub_2713B835C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2713A31E0(va);
  _Unwind_Resume(a1);
}

void sub_2713B8374(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (*(a1 + 40))
  {
    v6 = *(a1 + 24);
    __p.__r_.__value_.__s.__data_[0] = *(a1 + 32);
    sub_271120E64(v6, &__p, 1);
  }

  MEMORY[0x2743BE7F0](*(a1 + 24), 2);
  v7 = *(a1 + 40);
  *(a1 + 40) = v7 + 1;
  if (v7 != -1)
  {
    v8 = *(a1 + 24);
    __p.__r_.__value_.__s.__data_[0] = *(a1 + 32);
    sub_271120E64(v8, &__p, 1);
  }

  MEMORY[0x2743BE840](*(a1 + 24), *(a2 + 8));
  ++*(a1 + 40);
  __p.__r_.__value_.__s.__data_[0] = *(a2 + 16);
  sub_2718388F8(a1, &__p);
  v9 = *(a1 + 34);
  if (*(a1 + 40))
  {
    v10 = *(a1 + 24);
    __p.__r_.__value_.__s.__data_[0] = *(a1 + 32);
    sub_271120E64(v10, &__p, 1);
  }

  v11 = *(a1 + 24);
  __p.__r_.__value_.__s.__data_[0] = v9;
  sub_271120E64(v11, &__p, 1);
  ++*(a1 + 40);
  if (*(a2 + 48) == 1)
  {
    __p.__r_.__value_.__s.__data_[0] = 1;
    sub_2718388F8(a1, &__p);
    sub_271839128(a1, a2 + 24);
    if (a3 < 4)
    {
      return;
    }
  }

  else
  {
    __p.__r_.__value_.__s.__data_[0] = 0;
    sub_2718388F8(a1, &__p);
    if (a3 < 4)
    {
      return;
    }
  }

  sub_2713B87F0(a1, a2 + 56);
  if (a3 == 5)
  {
    if (*(a2 + 104) == 1)
    {
      __p.__r_.__value_.__s.__data_[0] = 1;
      sub_2718388F8(a1, &__p);
      sub_271839128(a1, a2 + 80);
    }

    else
    {
      __p.__r_.__value_.__s.__data_[0] = 0;
      sub_2718388F8(a1, &__p);
    }

    return;
  }

  if (a3 < 6)
  {
    return;
  }

  if (*(a2 + 104) != 1)
  {
    __p.__r_.__value_.__s.__data_[0] = 0;
    sub_2718388F8(a1, &__p);
    if (*(a1 + 40))
    {
      v15 = *(a1 + 24);
      __p.__r_.__value_.__s.__data_[0] = *(a1 + 32);
      sub_271120E64(v15, &__p, 1);
      ++*(a1 + 40);
      v12 = *(a2 + 136);
      if (v12 == 1)
      {
        goto LABEL_28;
      }
    }

    else
    {
      *(a1 + 40) = 1;
      v12 = *(a2 + 136);
      if (v12 == 1)
      {
        goto LABEL_28;
      }
    }

LABEL_17:
    __p.__r_.__value_.__s.__data_[0] = 0;
    sub_2718388F8(a1, &__p);
    if (*(a1 + 40))
    {
      v13 = *(a1 + 24);
      __p.__r_.__value_.__s.__data_[0] = *(a1 + 32);
      sub_271120E64(v13, &__p, 1);
      v14 = *(a1 + 40) + 1;
    }

    else
    {
      v14 = 1;
    }

    *(a1 + 40) = v14;
    __p.__r_.__value_.__s.__data_[0] = 0;
    v26 = 0;
    if (*(a2 + 168) != 1)
    {
      goto LABEL_25;
    }

    goto LABEL_29;
  }

  __p.__r_.__value_.__s.__data_[0] = 1;
  sub_2718388F8(a1, &__p);
  sub_271839128(a1, a2 + 80);
  v12 = *(a2 + 136);
  if (v12 != 1)
  {
    goto LABEL_17;
  }

LABEL_28:
  __p.__r_.__value_.__s.__data_[0] = v12;
  sub_2718388F8(a1, &__p);
  sub_271839128(a1, a2 + 112);
  __p.__r_.__value_.__s.__data_[0] = 0;
  v26 = 0;
  if (*(a2 + 168) != 1)
  {
LABEL_25:
    v24.__r_.__value_.__s.__data_[0] = 0;
    sub_2718388F8(a1, &v24);
    if (*(a1 + 40))
    {
      v16 = *(a1 + 24);
      v24.__r_.__value_.__s.__data_[0] = *(a1 + 32);
      sub_271120E64(v16, &v24, 1);
      ++*(a1 + 40);
    }

    else
    {
      *(a1 + 40) = 1;
    }

    return;
  }

LABEL_29:
  v17 = *(a2 + 144);
  v18 = *(a2 + 152);
  if (v17 == v18)
  {
LABEL_46:
    sub_271130B58(v17, v18, ";", 1uLL, &v24);
  }

  else
  {
    v19 = *(a2 + 144);
    while (1)
    {
      size = HIBYTE(v19->__r_.__value_.__r.__words[2]);
      if ((size & 0x80u) == 0)
      {
        v21 = v19;
      }

      else
      {
        v21 = v19->__r_.__value_.__r.__words[0];
      }

      if ((size & 0x80u) != 0)
      {
        size = v19->__r_.__value_.__l.__size_;
      }

      if (size)
      {
        v22 = 0;
        while (1)
        {
          v23 = v21->__r_.__value_.__s.__data_[v22];
          if (v23 == 59 || v23 == 92)
          {
            break;
          }

          if (size == ++v22)
          {
            goto LABEL_31;
          }
        }

        if (size != v22 && v22 != -1)
        {
          break;
        }
      }

LABEL_31:
      if (++v19 == v18)
      {
        goto LABEL_46;
      }
    }

    sub_2713B3DE4(v17, 0, *(a2 + 152), ";", 1uLL, &v24);
  }

  __p = v24;
  v26 = 1;
  v24.__r_.__value_.__s.__data_[0] = 1;
  sub_2718388F8(a1, &v24);
  sub_271839128(a1, &__p);
  if ((v26 & 1) != 0 && SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_2713B87CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19)
{
  if ((a19 & 1) != 0 && a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2713B87F0(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) == 1)
  {
    v11 = 1;
    sub_2718388F8(a1, &v11);
    if (*(a1 + 40))
    {
      v4 = *(a1 + 24);
      v13 = *(a1 + 32);
      sub_271120E64(v4, &v13, 1);
    }

    MEMORY[0x2743BE7F0](*(a1 + 24), 2);
    v5 = *(a1 + 40);
    *(a1 + 40) = v5 + 1;
    if (v5 != -1)
    {
      v6 = *(a1 + 24);
      v14 = *(a1 + 32);
      sub_271120E64(v6, &v14, 1);
    }

    MEMORY[0x2743BE840](*(a1 + 24), *a2);
    ++*(a1 + 40);
    v12 = *(a2 + 8);
    sub_2718388F8(a1, &v12);
    v7 = *(a1 + 34);
    if (*(a1 + 40))
    {
      v8 = *(a1 + 24);
      v15 = *(a1 + 32);
      sub_271120E64(v8, &v15, 1);
    }

    v9 = *(a1 + 24);
    v16 = v7;
    sub_271120E64(v9, &v16, 1);
    ++*(a1 + 40);
  }

  else
  {
    v10 = 0;
    sub_2718388F8(a1, &v10);
  }
}

void *sub_2713B891C(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 40))
  {
    v4 = *(a1 + 24);
    LOBYTE(v31) = *(a1 + 32);
    sub_271120E64(v4, &v31, 1);
  }

  MEMORY[0x2743BE7F0](*(a1 + 24), 2);
  v5 = *(a1 + 40) + 1;
  *(a1 + 40) = v5;
  *v28 = *a2;
  *&v28[12] = *(a2 + 12);
  v29[0] = 0;
  v30 = -1;
  v6 = *(a2 + 96);
  if (v6 != -1)
  {
    v31 = v29;
    (off_288131970[v6])(&v31, a2 + 32);
    v30 = v6;
    v5 = *(a1 + 40);
  }

  if (v5)
  {
    v7 = *(a1 + 24);
    LOBYTE(v31) = *(a1 + 32);
    sub_271120E64(v7, &v31, 1);
  }

  MEMORY[0x2743BE830](*(a1 + 24), *v28);
  v8 = *(a1 + 40);
  *(a1 + 40) = v8 + 1;
  if (v8 != -1)
  {
    v9 = *(a1 + 24);
    LOBYTE(v31) = *(a1 + 32);
    sub_271120E64(v9, &v31, 1);
  }

  MEMORY[0x2743BE7F0](*(a1 + 24), 2);
  v10 = *(a1 + 40);
  v11 = *&v28[8];
  *(a1 + 40) = v10 + 1;
  if (v10 != -1)
  {
    v12 = *(a1 + 24);
    LOBYTE(v31) = *(a1 + 32);
    sub_271120E64(v12, &v31, 1);
  }

  MEMORY[0x2743BE850](*(a1 + 24), v11);
  v13 = *(a1 + 40);
  *(a1 + 40) = v13 + 1;
  if (v13 != -1)
  {
    v14 = *(a1 + 24);
    LOBYTE(v31) = *(a1 + 32);
    sub_271120E64(v14, &v31, 1);
  }

  MEMORY[0x2743BE7F0](*(a1 + 24), *&v28[16]);
  v15 = *(a1 + 40);
  *(a1 + 40) = v15 + 1;
  if (v15 != -1)
  {
    v16 = *(a1 + 24);
    LOBYTE(v31) = *(a1 + 32);
    sub_271120E64(v16, &v31, 1);
  }

  MEMORY[0x2743BE7F0](*(a1 + 24), *&v28[20]);
  v17 = *(a1 + 40);
  v18 = *(a1 + 34);
  *(a1 + 40) = v17 + 1;
  if (v17 != -1)
  {
    v19 = *(a1 + 24);
    LOBYTE(v31) = *(a1 + 32);
    sub_271120E64(v19, &v31, 1);
  }

  v20 = *(a1 + 24);
  LOBYTE(v31) = v18;
  sub_271120E64(v20, &v31, 1);
  ++*(a1 + 40);
  if (*v28 == 1)
  {
    sub_2715F5084(v28, &v31);
    sub_2715F78FC(a1, &v31);
    v21 = v33;
    if (!v33)
    {
LABEL_22:
      v23 = v30;
      if (v30 == -1)
      {
        goto LABEL_24;
      }

      goto LABEL_23;
    }
  }

  else
  {
    v22 = sub_2715F7478(*v28);
    sub_2715F5084(v28, v44);
    v31 = a1;
    v32 = MEMORY[0x277D82868] + 16;
    MEMORY[0x2743BED80](&v33);
    v36 = 0u;
    v35 = 0u;
    v34 = 0u;
    v32 = MEMORY[0x277D82878] + 16;
    v37 = 0u;
    v38 = 0u;
    v39 = 24;
    sub_271129318(&v32);
    v41.__loc_ = 0;
    v40 = MEMORY[0x277D82850] + 24;
    v41.__vftable = (MEMORY[0x277D82850] + 64);
    std::ios_base::init(&v41, &v32);
    v42 = 0;
    v43 = -1;
    sub_2713B4F1C(v44, &v40, v22);
    sub_2713B8DD0(&v31);
    v21 = v45;
    if (!v45)
    {
      goto LABEL_22;
    }
  }

  if (atomic_fetch_add(&v21->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_22;
  }

  (v21->__on_zero_shared)(v21);
  std::__shared_weak_count::__release_weak(v21);
  v23 = v30;
  if (v30 != -1)
  {
LABEL_23:
    (off_2881318A0[v23])(&v31, v29);
  }

LABEL_24:
  v24 = *(a1 + 34);
  if (*(a1 + 40))
  {
    v25 = *(a1 + 24);
    LOBYTE(v31) = *(a1 + 32);
    sub_271120E64(v25, &v31, 1);
  }

  v26 = *(a1 + 24);
  LOBYTE(v31) = v24;
  result = sub_271120E64(v26, &v31, 1);
  ++*(a1 + 40);
  return result;
}

void sub_2713B8D28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  sub_2713B8DD0(&a22);
  sub_271229D10(v36 - 120);
  sub_2713A32D8(&a9);
  _Unwind_Resume(a1);
}

void sub_2713B8D88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  sub_271229D10(va);
  sub_2713A32D8(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_2713B8DD0(uint64_t *a1)
{
  v2 = *(a1 + 26);
  if ((v2 & 0x10) != 0)
  {
    v4 = a1[12];
    v5 = a1[7];
    if (v4 < v5)
    {
      a1[12] = v5;
      v4 = v5;
    }

    v6 = a1[6];
    v3 = v4 - v6;
    if (v4 - v6 >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_25;
    }
  }

  else
  {
    if ((v2 & 8) == 0)
    {
      v3 = 0;
      v16 = 0;
      goto LABEL_12;
    }

    v6 = a1[3];
    v3 = a1[5] - v6;
    if (v3 >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_25:
      sub_271120DA8();
    }
  }

  if (v3 >= 0x17)
  {
    operator new();
  }

  v16 = v3;
  if (v3)
  {
    memmove(__dst, v6, v3);
  }

LABEL_12:
  *(__dst + v3) = 0;
  v7 = v16;
  if ((v16 & 0x80u) == 0)
  {
    v8 = v16;
  }

  else
  {
    v8 = __dst[1];
  }

  v9 = *a1;
  if (*(*a1 + 40))
  {
    v10 = *(v9 + 24);
    LOBYTE(v14[0]) = *(v9 + 32);
    sub_271120E64(v10, v14, 1);
  }

  MEMORY[0x2743BE850](*(v9 + 24), v8);
  ++*(v9 + 40);
  v11 = __dst[0];
  if (v7 >= 0)
  {
    v11 = __dst;
  }

  v12 = *a1;
  v14[0] = v11;
  v14[1] = v8;
  sub_2718395E4(v12, v14);
  if (v16 < 0)
  {
    operator delete(__dst[0]);
    std::ostream::~ostream();
    a1[1] = MEMORY[0x277D82878] + 16;
    if ((*(a1 + 95) & 0x80000000) == 0)
    {
      goto LABEL_21;
    }

LABEL_23:
    operator delete(a1[9]);
    goto LABEL_21;
  }

  std::ostream::~ostream();
  a1[1] = MEMORY[0x277D82878] + 16;
  if (*(a1 + 95) < 0)
  {
    goto LABEL_23;
  }

LABEL_21:
  a1[1] = MEMORY[0x277D82868] + 16;
  std::locale::~locale(a1 + 2);
  return a1;
}

uint64_t sub_2713B8FF0(uint64_t a1, uint64_t a2)
{
  LODWORD(__src) = 2;
  sub_27173318C((a1 + 24), *(a1 + 32), &__src, &__src + 4, 4);
  sub_2717312C0(a1);
  *v11 = *a2;
  *&v11[12] = *(a2 + 12);
  v12[0] = 0;
  v13 = -1;
  v4 = *(a2 + 96);
  if (v4 != -1)
  {
    __src = v12;
    (off_288131970[v4])(&__src, a2 + 32);
    v13 = v4;
  }

  LOWORD(__src) = *v11;
  sub_27173318C((a1 + 24), *(a1 + 32), &__src, &__src + 2, 2);
  LODWORD(__src) = 2;
  sub_27173318C((a1 + 24), *(a1 + 32), &__src, &__src + 4, 4);
  sub_2717312C0(a1);
  __src = *&v11[8];
  sub_27173318C((a1 + 24), *(a1 + 32), &__src, &v15, 8);
  sub_27173318C((a1 + 24), *(a1 + 32), &v11[16], &v11[24], 8);
  v5 = *(*(a1 + 56) - 8) + *(a1 + 24);
  *(v5 + 10) = *(a1 + 32) - v5 - 18;
  *(a1 + 56) -= 8;
  if (*v11 == 1)
  {
    sub_2715F5084(v11, &__src);
    sub_2715F78FC(a1, &__src);
    v6 = v16;
    if (!v16)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v7 = sub_2715F7478(*v11);
    sub_2715F5084(v11, v27);
    __src = a1;
    v15 = MEMORY[0x277D82868] + 16;
    MEMORY[0x2743BED80](&v16);
    v19 = 0u;
    v18 = 0u;
    v17 = 0u;
    v15 = MEMORY[0x277D82878] + 16;
    v20 = 0u;
    v21 = 0u;
    v22 = 24;
    sub_271129318(&v15);
    v24.__loc_ = 0;
    v23 = MEMORY[0x277D82850] + 24;
    v24.__vftable = (MEMORY[0x277D82850] + 64);
    std::ios_base::init(&v24, &v15);
    v25 = 0;
    v26 = -1;
    sub_2713B4F1C(v27, &v23, v7);
    sub_2713B9B08(&__src);
    v6 = v28;
    if (!v28)
    {
      goto LABEL_8;
    }
  }

  if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
    v8 = v13;
    if (v13 == -1)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_8:
  v8 = v13;
  if (v13 != -1)
  {
LABEL_9:
    (off_2881318A0[v8])(&__src, v12);
  }

LABEL_10:
  v9 = *(*(a1 + 56) - 8) + *(a1 + 24);
  *(v9 + 10) = *(a1 + 32) - v9 - 18;
  *(a1 + 56) -= 8;
  return a1;
}

void sub_2713B9338(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  sub_2713B9B08(&a22);
  sub_271229D10(v36 - 120);
  sub_2713A32D8(&a9);
  _Unwind_Resume(a1);
}

void sub_2713B9398(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  sub_271229D10(va);
  sub_2713A32D8(&a9);
  _Unwind_Resume(a1);
}

void sub_2713B93E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v22 = *MEMORY[0x277D85DE8];
  sub_2713B3058(v9, a2);
  sub_2713B9510(a1, v9, v3);
  if (v21 == 1)
  {
    v5 = __p;
    if (__p)
    {
      v6 = v20;
      v7 = __p;
      if (v20 != __p)
      {
        do
        {
          v8 = *(v6 - 1);
          v6 -= 3;
          if (v8 < 0)
          {
            operator delete(*v6);
          }
        }

        while (v6 != v5);
        v7 = __p;
      }

      v20 = v5;
      operator delete(v7);
    }
  }

  if (v18 == 1 && v17 < 0)
  {
    operator delete(v16);
  }

  if (v15 == 1 && v14 < 0)
  {
    operator delete(v13);
  }

  if (v12 == 1 && v11 < 0)
  {
    operator delete(v10);
  }
}

void sub_2713B94F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2713A31E0(va);
  _Unwind_Resume(a1);
}

char *sub_2713B9510(uint64_t a1, uint64_t a2, unsigned int a3)
{
  LODWORD(v33) = 2;
  sub_27173318C((a1 + 24), *(a1 + 32), &v33, &v33 + 4, 4);
  sub_2717312C0(a1);
  sub_27173318C((a1 + 24), *(a1 + 32), (a2 + 8), (a2 + 16), 8);
  LOBYTE(v33) = *(a2 + 16);
  sub_27173318C((a1 + 24), *(a1 + 32), &v33, &v33 + 1, 1);
  v6 = *(*(a1 + 56) - 8) + *(a1 + 24);
  *(v6 + 10) = *(a1 + 32) - v6 - 18;
  *(a1 + 56) -= 8;
  if (*(a2 + 48) != 1)
  {
    LOBYTE(v33) = 0;
    result = sub_27173318C((a1 + 24), *(a1 + 32), &v33, &v33 + 1, 1);
    if (a3 < 4)
    {
      return result;
    }

LABEL_13:
    v33 = "custom_timestamp";
    v34[0] = 16;
    v34[1] = a2 + 56;
    result = sub_2713B99E4(a1, &v33);
    if (a3 == 5)
    {
      if (*(a2 + 104) == 1)
      {
        LOBYTE(v33) = 1;
        sub_27173318C((a1 + 24), *(a1 + 32), &v33, &v33 + 1, 1);
        v12 = *(a2 + 103);
        if (v12 < 0)
        {
          v12 = *(a2 + 88);
        }

        v33 = v12;
        sub_27173318C((a1 + 24), *(a1 + 32), &v33, v34, 8);
        v13 = *(a2 + 103);
        if (v13 >= 0)
        {
          v14 = (a2 + 80);
        }

        else
        {
          v14 = *(a2 + 80);
        }

        if (v13 >= 0)
        {
          v15 = *(a2 + 103);
        }

        else
        {
          v15 = *(a2 + 88);
        }

        v16 = *(a1 + 32);
        v17 = (a1 + 24);
        v18 = &v14[v15];
        return sub_27173318C(v17, v16, v14, v18, v15);
      }

LABEL_36:
      LOBYTE(v33) = 0;
      v16 = *(a1 + 32);
      v17 = (a1 + 24);
      v14 = &v33;
      v18 = &v33 + 1;
      v15 = 1;
      return sub_27173318C(v17, v16, v14, v18, v15);
    }

    if (a3 < 6)
    {
      return result;
    }

    if (*(a2 + 104) == 1)
    {
      LOBYTE(v33) = 1;
      sub_27173318C((a1 + 24), *(a1 + 32), &v33, &v33 + 1, 1);
      v19 = *(a2 + 103);
      if (v19 < 0)
      {
        v19 = *(a2 + 88);
      }

      v33 = v19;
      sub_27173318C((a1 + 24), *(a1 + 32), &v33, v34, 8);
      v20 = *(a2 + 103);
      if (v20 >= 0)
      {
        v21 = (a2 + 80);
      }

      else
      {
        v21 = *(a2 + 80);
      }

      if (v20 >= 0)
      {
        v22 = *(a2 + 103);
      }

      else
      {
        v22 = *(a2 + 88);
      }

      sub_27173318C((a1 + 24), *(a1 + 32), v21, &v21[v22], v22);
      if (*(a2 + 136) != 1)
      {
LABEL_35:
        LOBYTE(v33) = 0;
        sub_27173318C((a1 + 24), *(a1 + 32), &v33, &v33 + 1, 1);
        if (*(a2 + 168) != 1)
        {
          goto LABEL_36;
        }

LABEL_48:
        LOBYTE(v33) = 1;
        sub_27173318C((a1 + 24), *(a1 + 32), &v33, &v33 + 1, 1);
        __src = 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 152) - *(a2 + 144)) >> 3);
        result = sub_27173318C((a1 + 24), *(a1 + 32), &__src, &v36, 8);
        v28 = *(a2 + 144);
        for (i = *(a2 + 152); v28 != i; v28 += 24)
        {
          v29 = *(v28 + 23);
          if (v29 < 0)
          {
            v29 = *(v28 + 8);
          }

          v33 = v29;
          sub_27173318C((a1 + 24), *(a1 + 32), &v33, v34, 8);
          v30 = *(v28 + 23);
          if (v30 >= 0)
          {
            v31 = v28;
          }

          else
          {
            v31 = *v28;
          }

          if (v30 >= 0)
          {
            v32 = *(v28 + 23);
          }

          else
          {
            v32 = *(v28 + 8);
          }

          result = sub_27173318C((a1 + 24), *(a1 + 32), v31, &v31[v32], v32);
        }

        return result;
      }
    }

    else
    {
      LOBYTE(v33) = 0;
      sub_27173318C((a1 + 24), *(a1 + 32), &v33, &v33 + 1, 1);
      if (*(a2 + 136) != 1)
      {
        goto LABEL_35;
      }
    }

    LOBYTE(v33) = 1;
    sub_27173318C((a1 + 24), *(a1 + 32), &v33, &v33 + 1, 1);
    v23 = *(a2 + 135);
    if (v23 < 0)
    {
      v23 = *(a2 + 120);
    }

    v33 = v23;
    sub_27173318C((a1 + 24), *(a1 + 32), &v33, v34, 8);
    v24 = *(a2 + 135);
    if (v24 >= 0)
    {
      v25 = (a2 + 112);
    }

    else
    {
      v25 = *(a2 + 112);
    }

    if (v24 >= 0)
    {
      v26 = *(a2 + 135);
    }

    else
    {
      v26 = *(a2 + 120);
    }

    sub_27173318C((a1 + 24), *(a1 + 32), v25, &v25[v26], v26);
    if (*(a2 + 168) != 1)
    {
      goto LABEL_36;
    }

    goto LABEL_48;
  }

  LOBYTE(v33) = 1;
  sub_27173318C((a1 + 24), *(a1 + 32), &v33, &v33 + 1, 1);
  v7 = *(a2 + 47);
  if (v7 < 0)
  {
    v7 = *(a2 + 32);
  }

  v33 = v7;
  sub_27173318C((a1 + 24), *(a1 + 32), &v33, v34, 8);
  v8 = *(a2 + 47);
  if (v8 >= 0)
  {
    v9 = (a2 + 24);
  }

  else
  {
    v9 = *(a2 + 24);
  }

  if (v8 >= 0)
  {
    v10 = *(a2 + 47);
  }

  else
  {
    v10 = *(a2 + 32);
  }

  result = sub_27173318C((a1 + 24), *(a1 + 32), v9, &v9[v10], v10);
  if (a3 >= 4)
  {
    goto LABEL_13;
  }

  return result;
}

uint64_t sub_2713B99E4(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3[16] == 1)
  {
    __src = 1;
    sub_27173318C((a1 + 24), *(a1 + 32), &__src, &v8, 1);
    v8 = 2;
    sub_27173318C((a1 + 24), *(a1 + 32), &v8, v9, 4);
    sub_2717312C0(a1);
    sub_27173318C((a1 + 24), *(a1 + 32), v3, v3 + 8, 8);
    v10 = v3[8];
    sub_27173318C((a1 + 24), *(a1 + 32), &v10, &v11, 1);
    v4 = *(*(a1 + 56) - 8) + *(a1 + 24);
    *(v4 + 10) = *(a1 + 32) - v4 - 18;
    *(a1 + 56) -= 8;
  }

  else
  {
    v6 = 0;
    sub_27173318C((a1 + 24), *(a1 + 32), &v6, &__src, 1);
  }

  return a1;
}

uint64_t sub_2713B9B08(uint64_t a1)
{
  v2 = *(a1 + 104);
  if ((v2 & 0x10) != 0)
  {
    v4 = *(a1 + 96);
    v5 = *(a1 + 56);
    if (v4 < v5)
    {
      *(a1 + 96) = v5;
      v4 = v5;
    }

    v6 = *(a1 + 48);
    v3 = v4 - v6;
    if (v4 - v6 >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_23;
    }
  }

  else
  {
    if ((v2 & 8) == 0)
    {
      v3 = 0;
      v13 = 0;
      goto LABEL_12;
    }

    v6 = *(a1 + 24);
    v3 = *(a1 + 40) - v6;
    if (v3 >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_23:
      sub_271120DA8();
    }
  }

  if (v3 >= 0x17)
  {
    operator new();
  }

  v13 = v3;
  if (v3)
  {
    memmove(__dst, v6, v3);
  }

LABEL_12:
  *(__dst + v3) = 0;
  v7 = v13;
  v8 = v13;
  if ((v13 & 0x80u) != 0)
  {
    v7 = __dst[1];
  }

  v11 = v7;
  sub_27173318C((*a1 + 24), *(*a1 + 32), &v11, __dst, 8);
  if (v8 >= 0)
  {
    v9 = __dst;
  }

  else
  {
    v9 = __dst[0];
  }

  sub_27173318C((*a1 + 24), *(*a1 + 32), v9, &v9[v11], v11);
  if (v13 < 0)
  {
    operator delete(__dst[0]);
    std::ostream::~ostream();
    *(a1 + 8) = MEMORY[0x277D82878] + 16;
    if ((*(a1 + 95) & 0x80000000) == 0)
    {
      goto LABEL_19;
    }

LABEL_21:
    operator delete(*(a1 + 72));
    goto LABEL_19;
  }

  std::ostream::~ostream();
  *(a1 + 8) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 95) < 0)
  {
    goto LABEL_21;
  }

LABEL_19:
  *(a1 + 8) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 16));
  return a1;
}

int *sub_2713B9D14(int *a1, uint64_t a2)
{
  v4 = a1[2];
  *v8 = 2;
  (*(*a1 + 104))(a1, v8);
  if (v4 < 1)
  {
    *v8 = *a2;
    *&v8[6] = *(a2 + 12);
    v9[0] = 0;
    v10 = -1;
    v7 = *(a2 + 96);
    if (v7 != -1)
    {
      v11 = v9;
      (off_288131970[v7])(&v11, a2 + 32);
      v10 = v7;
    }

    sub_2713BABCC(a1, v8);
    if (v10 != -1)
    {
      (off_2881318A0[v10])(&v11, v9);
    }

    return a1;
  }

  else
  {
    if (v4 == 2)
    {
      *v8 = 2;
      (*(*a1 + 104))(a1, v8);
    }

    (*(*a1 + 16))(a1);
    *v8 = *a2;
    *&v8[6] = *(a2 + 12);
    v9[0] = 0;
    v10 = -1;
    v5 = *(a2 + 96);
    if (v5 != -1)
    {
      v11 = v9;
      (off_288131970[v5])(&v11, a2 + 32);
      v10 = v5;
    }

    sub_2713BABCC(a1, v8);
    if (v10 != -1)
    {
      (off_2881318A0[v10])(&v11, v9);
    }

    (*(*a1 + 24))(a1);
    return a1;
  }
}

void sub_2713B9F84(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v22 = *MEMORY[0x277D85DE8];
  sub_2713B3058(v9, a2);
  sub_2713BA0B4(a1, v9, v3);
  if (v21 == 1)
  {
    v5 = __p;
    if (__p)
    {
      v6 = v20;
      v7 = __p;
      if (v20 != __p)
      {
        do
        {
          v8 = *(v6 - 1);
          v6 -= 3;
          if (v8 < 0)
          {
            operator delete(*v6);
          }
        }

        while (v6 != v5);
        v7 = __p;
      }

      v20 = v5;
      operator delete(v7);
    }
  }

  if (v18 == 1 && v17 < 0)
  {
    operator delete(v16);
  }

  if (v15 == 1 && v14 < 0)
  {
    operator delete(v13);
  }

  if (v12 == 1 && v11 < 0)
  {
    operator delete(v10);
  }
}

void sub_2713BA09C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2713A31E0(va);
  _Unwind_Resume(a1);
}

void sub_2713BA0B4(_BYTE *a1, uint64_t a2, unsigned int a3)
{
  sub_2713BA8E0(&__p, a1, a2 + 8);
  if (*(a2 + 48) == 1)
  {
    __p.__r_.__value_.__s.__data_[0] = 1;
    (*(*a1 + 80))(a1, &__p);
    (*(*a1 + 144))(a1, a2 + 24);
    if (a3 < 4)
    {
      return;
    }
  }

  else
  {
    __p.__r_.__value_.__s.__data_[0] = 0;
    (*(*a1 + 80))(a1, &__p);
    if (a3 < 4)
    {
      return;
    }
  }

  if (*(a2 + 72) == 1)
  {
    __p.__r_.__value_.__s.__data_[0] = 1;
    (*(*a1 + 80))(a1, &__p);
    sub_2713BA8E0(&__p, a1, a2 + 56);
    if (a3 != 5)
    {
      goto LABEL_7;
    }

LABEL_14:
    if (*(a2 + 104) == 1)
    {
      __p.__r_.__value_.__s.__data_[0] = 1;
      (*(*a1 + 80))(a1, &__p);
      (*(*a1 + 144))(a1, a2 + 80);
      return;
    }

    goto LABEL_25;
  }

  __p.__r_.__value_.__s.__data_[0] = 0;
  (*(*a1 + 80))(a1, &__p);
  if (a3 == 5)
  {
    goto LABEL_14;
  }

LABEL_7:
  if (a3 < 6)
  {
    return;
  }

  if ((a1[12] & 4) == 0)
  {
    if (*(a2 + 104) == 1)
    {
      __p.__r_.__value_.__s.__data_[0] = 1;
      (*(*a1 + 80))(a1, &__p);
      (*(*a1 + 144))(a1, a2 + 80);
      v6 = *(a2 + 136);
      if (v6 != 1)
      {
        goto LABEL_11;
      }
    }

    else
    {
      __p.__r_.__value_.__s.__data_[0] = 0;
      (*(*a1 + 80))(a1, &__p);
      v6 = *(a2 + 136);
      if (v6 != 1)
      {
LABEL_11:
        __p.__r_.__value_.__s.__data_[0] = 0;
        (*(*a1 + 80))(a1, &__p);
        v7 = *(a2 + 168);
        if (v7 != 1)
        {
          goto LABEL_25;
        }

LABEL_22:
        __p.__r_.__value_.__s.__data_[0] = v7;
        (*(*a1 + 80))(a1, &__p);
        __p.__r_.__value_.__r.__words[0] = 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 152) - *(a2 + 144)) >> 3);
        (*(*a1 + 120))(a1, &__p);
        v10 = *(a2 + 144);
        for (i = *(a2 + 152); v10 != i; v10 += 24)
        {
          (*(*a1 + 144))(a1, v10);
        }

        return;
      }
    }

    __p.__r_.__value_.__s.__data_[0] = v6;
    (*(*a1 + 80))(a1, &__p);
    (*(*a1 + 144))(a1, a2 + 112);
    v7 = *(a2 + 168);
    if (v7 != 1)
    {
LABEL_25:
      __p.__r_.__value_.__s.__data_[0] = 0;
      (*(*a1 + 80))(a1, &__p);
      return;
    }

    goto LABEL_22;
  }

  if (*(a2 + 104) == 1)
  {
    __p.__r_.__value_.__s.__data_[0] = 1;
    (*(*a1 + 80))(a1, &__p);
    (*(*a1 + 144))(a1, a2 + 80);
    v8 = *(a2 + 136);
    if (v8 != 1)
    {
      goto LABEL_18;
    }

LABEL_27:
    __p.__r_.__value_.__s.__data_[0] = v8;
    (*(*a1 + 80))(a1, &__p);
    (*(*a1 + 144))(a1, a2 + 112);
    __p.__r_.__value_.__s.__data_[0] = 0;
    v20 = 0;
    if (*(a2 + 168) != 1)
    {
      goto LABEL_19;
    }

    goto LABEL_28;
  }

  __p.__r_.__value_.__s.__data_[0] = 0;
  (*(*a1 + 80))(a1, &__p);
  (*(*a1 + 288))(a1, &unk_27188F5E7);
  v8 = *(a2 + 136);
  if (v8 == 1)
  {
    goto LABEL_27;
  }

LABEL_18:
  __p.__r_.__value_.__s.__data_[0] = 0;
  (*(*a1 + 80))(a1, &__p);
  (*(*a1 + 288))(a1, &unk_27188F5E7);
  __p.__r_.__value_.__s.__data_[0] = 0;
  v20 = 0;
  if (*(a2 + 168) != 1)
  {
LABEL_19:
    v18.__r_.__value_.__s.__data_[0] = 0;
    (*(*a1 + 80))(a1, &v18);
    (*(*a1 + 288))(a1, &unk_27188F5E7);
    return;
  }

LABEL_28:
  v11 = *(a2 + 144);
  v12 = *(a2 + 152);
  if (v11 == v12)
  {
LABEL_45:
    sub_271130B58(v11, v12, ";", 1uLL, &v18);
  }

  else
  {
    v13 = *(a2 + 144);
    while (1)
    {
      size = HIBYTE(v13->__r_.__value_.__r.__words[2]);
      if ((size & 0x80u) == 0)
      {
        v15 = v13;
      }

      else
      {
        v15 = v13->__r_.__value_.__r.__words[0];
      }

      if ((size & 0x80u) != 0)
      {
        size = v13->__r_.__value_.__l.__size_;
      }

      if (size)
      {
        v16 = 0;
        while (1)
        {
          v17 = v15->__r_.__value_.__s.__data_[v16];
          if (v17 == 59 || v17 == 92)
          {
            break;
          }

          if (size == ++v16)
          {
            goto LABEL_30;
          }
        }

        if (size != v16 && v16 != -1)
        {
          break;
        }
      }

LABEL_30:
      if (++v13 == v12)
      {
        goto LABEL_45;
      }
    }

    sub_2713B3DE4(v11, 0, *(a2 + 152), ";", 1uLL, &v18);
  }

  __p = v18;
  v20 = 1;
  v18.__r_.__value_.__s.__data_[0] = 1;
  (*(*a1 + 80))(a1, &v18);
  (*(*a1 + 144))(a1, &__p);
  if ((v20 & 1) != 0 && SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_2713BA8BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19)
{
  if ((a19 & 1) != 0 && a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2713BA8E0(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  v5 = a2[2];
  v6 = 2;
  (*(*a2 + 104))(a2, &v6);
  if (v5 < 1)
  {
    (*(*a2 + 72))(a2, a3);
    sub_2713BAA64(a2, (a3 + 8));
  }

  else
  {
    if (v5 == 2)
    {
      v7 = 2;
      (*(*a2 + 104))(a2, &v7);
    }

    (*(*a2 + 16))(a2);
    (*(*a2 + 72))(a2, a3);
    sub_2713BAA64(a2, (a3 + 8));
    (*(*a2 + 24))(a2);
  }
}

void sub_2713BAA64(_BYTE *a1, unsigned __int8 *a2)
{
  if ((a1[12] & 2) != 0)
  {
    v3 = 0;
    sub_2713B35AC(&v4, v2, a2);
  }

  v2[0] = *a2;
  (*(*a1 + 80))(a1, v2);
}

void sub_2713BAB88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2713BABA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2713BABB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2713BABCC(int *a1, unsigned __int16 *a2)
{
  if ((a1[3] & 2) != 0)
  {
    LODWORD(v12) = 0;
    sub_2713B4A74(&v8, &v9, a2);
  }

  LOWORD(v9) = *a2;
  (*(*a1 + 96))(a1, &v9);
  v4 = a1[2];
  LODWORD(v9) = 2;
  (*(*a1 + 104))(a1, &v9);
  if (v4 < 1)
  {
    sub_2713BB0A8(a1, a2 + 1);
    (*(*a1 + 104))(a1, a2 + 8);
    (*(*a1 + 104))(a1, a2 + 10);
    v5 = *a2;
    if (v5 == 1)
    {
      goto LABEL_8;
    }
  }

  else
  {
    if (v4 == 2)
    {
      LODWORD(v9) = 2;
      (*(*a1 + 104))(a1, &v9);
    }

    (*(*a1 + 16))(a1);
    sub_2713BB0A8(a1, a2 + 1);
    (*(*a1 + 104))(a1, a2 + 8);
    (*(*a1 + 104))(a1, a2 + 10);
    (*(*a1 + 24))(a1);
    v5 = *a2;
    if (v5 == 1)
    {
LABEL_8:
      sub_2715F5084(a2, &v9);
      sub_2715F78FC(a1, &v9);
      v6 = v11;
      if (!v11)
      {
        return;
      }

      goto LABEL_12;
    }
  }

  v7 = sub_2715F7478(v5);
  sub_2715F5084(a2, v22);
  v9 = a1;
  v10 = MEMORY[0x277D82868] + 16;
  MEMORY[0x2743BED80](&v11);
  v13 = 0u;
  v14 = 0u;
  v12 = 0u;
  v10 = MEMORY[0x277D82878] + 16;
  v15 = 0u;
  v16 = 0u;
  v17 = 24;
  sub_271129318(&v10);
  v19.__loc_ = 0;
  v18 = MEMORY[0x277D82850] + 24;
  v19.__vftable = (MEMORY[0x277D82850] + 64);
  std::ios_base::init(&v19, &v10);
  v20 = 0;
  v21 = -1;
  sub_2713B4F1C(v22, &v18, v7);
  sub_2713BB210(&v9);
  v6 = v23;
  if (!v23)
  {
    return;
  }

LABEL_12:
  if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
  }
}

void sub_2713BAFE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_2713BB210(va);
  sub_271229D10(v7 - 120);
  _Unwind_Resume(a1);
}

void sub_2713BAFFC(_Unwind_Exception *exception_object)
{
  if (*(v2 - 97) < 0)
  {
    operator delete(*(v1 + 272));
  }

  _Unwind_Resume(exception_object);
}

void sub_2713BB0A8(_BYTE *a1, void *a2)
{
  if ((a1[12] & 2) != 0)
  {
    v3 = 0;
    sub_2713B4CD0(&v4, v2, a2);
  }

  v2[0] = *a2;
  (*(*a1 + 120))(a1, v2);
}

void sub_2713BB1CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2713BB1E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2713BB1FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void *sub_2713BB210(void *a1)
{
  v2 = *(a1 + 26);
  if ((v2 & 0x10) != 0)
  {
    v4 = a1[12];
    v5 = a1[7];
    if (v4 < v5)
    {
      a1[12] = v5;
      v4 = v5;
    }

    v6 = a1[6];
    v3 = v4 - v6;
    if (v4 - v6 >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_22;
    }
  }

  else
  {
    if ((v2 & 8) == 0)
    {
      v3 = 0;
      v15 = 0;
      goto LABEL_12;
    }

    v6 = a1[3];
    v3 = a1[5] - v6;
    if (v3 >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_22:
      sub_271120DA8();
    }
  }

  if (v3 >= 0x17)
  {
    operator new();
  }

  v15 = v3;
  if (v3)
  {
    memmove(__dst, v6, v3);
  }

LABEL_12:
  *(__dst + v3) = 0;
  v7 = v15;
  v8 = v15;
  if ((v15 & 0x80u) != 0)
  {
    v7 = __dst[1];
  }

  v13 = v7;
  (*(**a1 + 120))(*a1, &v13);
  v9 = __dst[0];
  if (v8 >= 0)
  {
    v9 = __dst;
  }

  v10 = *a1;
  v12[0] = v9;
  v12[1] = v13;
  (*(*v10 + 272))(v10, v12);
  if (v15 < 0)
  {
    operator delete(__dst[0]);
    std::ostream::~ostream();
    a1[1] = MEMORY[0x277D82878] + 16;
    if ((*(a1 + 95) & 0x80000000) == 0)
    {
      goto LABEL_18;
    }

LABEL_20:
    operator delete(a1[9]);
    goto LABEL_18;
  }

  std::ostream::~ostream();
  a1[1] = MEMORY[0x277D82878] + 16;
  if (*(a1 + 95) < 0)
  {
    goto LABEL_20;
  }

LABEL_18:
  a1[1] = MEMORY[0x277D82868] + 16;
  std::locale::~locale(a1 + 2);
  return a1;
}

void sub_2713BB450(uint64_t a1, uint64_t a2)
{
  v6[0] = *(a1 + 32);
  v4 = sub_27182D6C4(a1);
  ++*(a1 + 112);
  *(a1 + 32) = v4;
  sub_27182D194(a1 + 40, v6);
  sub_2717313F0(a1 + 64, (a1 + 112));
  *(a1 + 112) = 0;
  v6[0] = "version";
  v6[1] = 7;
  v7 = 6;
  *(a1 + 88) = "version";
  *(a1 + 96) = 7;
  *(a1 + 104) = 1;
  sub_27182EB6C(a1, &v7);
  if (v7 >= 6)
  {
    v5 = 6;
  }

  else
  {
    v5 = v7;
  }

  if (v7 >= 3)
  {
    sub_2713BB75C(a1, a2, v5);
  }

  sub_2713BB550(v6, a1, a2, v5);
}

void sub_2713BB550(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *MEMORY[0x277D85DE8];
  v5 = 0;
  v6 = 0;
  LOBYTE(v7) = 0;
  v8 = 0;
  sub_2713BD0D0(a2, v4, a4);
}

void sub_2713BB710(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18)
{
  if (a18 == 1 && a17 < 0)
  {
    operator delete(__p);
  }

  if (*(v18 - 48) == 1 && *(v18 - 49) < 0)
  {
    operator delete(*(v18 - 72));
  }

  _Unwind_Resume(exception_object);
}

void sub_2713BB75C(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v5 = *(a1 + 104);
  *(a1 + 88) = "auto_timestamp";
  *(a1 + 96) = 14;
  if ((v5 & 1) == 0)
  {
    *(a1 + 104) = 1;
  }

  v8[0] = *(a1 + 32);
  v6 = sub_27182D6C4(a1);
  ++*(a1 + 112);
  *(a1 + 32) = v6;
  sub_27182D194(a1 + 40, v8);
  sub_2717313F0(a1 + 64, (a1 + 112));
  *(a1 + 112) = 0;
  v8[0] = "version";
  v8[1] = 7;
  v9[0] = 2;
  *(a1 + 88) = "version";
  *(a1 + 96) = 7;
  *(a1 + 104) = 1;
  sub_27182EB6C(a1, v9);
  if (v9[0] >= 2)
  {
    v7 = 2;
  }

  else
  {
    v7 = v9[0];
  }

  sub_2713BBD0C(a1, (a2 + 8), v7);
}

void sub_2713BB9DC(void ***a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 23);
  if ((v3 & 0x80000000) == 0)
  {
    v4 = *(a1 + 23);
  }

  else
  {
    v4 = a1[1];
  }

  if ((v3 & 0x80000000) == 0)
  {
    v5 = a1;
  }

  else
  {
    v5 = *a1;
  }

  if (v4)
  {
    v7 = memchr(v5, 92, v4);
    if (v7 && v7 - v5 != -1)
    {
      v9 = 0;
      v10 = v3 >> 63;
      *a2 = 0;
      a2[1] = 0;
      a2[2] = 0;
      __p[0] = 0;
      __p[1] = 0;
      v22 = 0;
      while (1)
      {
        if (v10)
        {
          v13 = *a1;
        }

        else
        {
          v13 = a1;
        }

        v14 = *(v13 + v9);
        if (v14 != 59)
        {
          if (v14 == 92)
          {
            ++v9;
          }

          v17 = *(v13 + v9);
          if (SHIBYTE(v22) < 0)
          {
            v18 = ((v22 & 0x7FFFFFFFFFFFFFFFLL) - 1);
            if (__p[1] == v18)
            {
              if ((v22 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF8)
              {
                sub_271120DA8();
              }

LABEL_37:
              operator new();
            }

            v20 = __p[0];
            v19 = __p[1]++;
          }

          else
          {
            if (HIBYTE(v22) == 22)
            {
              goto LABEL_37;
            }

            v19 = HIBYTE(v22);
            HIBYTE(v22) = (HIBYTE(v22) + 1) & 0x7F;
            v20 = __p;
          }

          v19[v20] = v17;
          v11 = &v19[v20 + 1];
          goto LABEL_17;
        }

        v15 = a2[1];
        if (v15 >= a2[2])
        {
          a2[1] = sub_271127424(a2, __p);
          if (SHIBYTE(v22) < 0)
          {
            goto LABEL_34;
          }
        }

        else if (SHIBYTE(v22) < 0)
        {
          sub_271127178(a2[1], __p[0], __p[1]);
          a2[1] = v15 + 24;
          if (SHIBYTE(v22) < 0)
          {
LABEL_34:
            v11 = __p[0];
            __p[1] = 0;
            goto LABEL_17;
          }
        }

        else
        {
          v16 = *__p;
          *(v15 + 16) = v22;
          *v15 = v16;
          a2[1] = v15 + 24;
          if (SHIBYTE(v22) < 0)
          {
            goto LABEL_34;
          }
        }

        HIBYTE(v22) = 0;
        v11 = __p;
LABEL_17:
        *v11 = 0;
        ++v9;
        v12 = *(a1 + 23);
        v10 = v12 >> 63;
        if ((v12 & 0x80000000) != 0)
        {
          v12 = a1[1];
        }

        if (v9 >= v12)
        {
          sub_271130678(a2, __p);
          if (SHIBYTE(v22) < 0)
          {
            operator delete(__p[0]);
          }

          return;
        }
      }
    }
  }

  sub_2713BC7A8(v5, v4, ";", 1, 1, a2);
}

void sub_2713BBCD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_27137F4D0(v15);
  _Unwind_Resume(a1);
}

void sub_2713BBD0C(uint64_t a1, char **a2, unsigned int a3)
{
  if (a3 >= 2)
  {
    v5 = *(a1 + 104);
    *(a1 + 88) = "ns";
    *(a1 + 96) = 2;
    if ((v5 & 1) == 0)
    {
      *(a1 + 104) = 1;
    }

    v6 = sub_27182D6C4(a1);
    ++*(a1 + 112);
    v12 = 0;
    sub_2715D6A90(v6, &v12);
    *a2 = v12;
    v7 = (a2 + 1);
    v8 = *(a1 + 104);
    *(a1 + 88) = "clock_type";
    *(a1 + 96) = 10;
    if ((v8 & 1) == 0)
    {
      *(a1 + 104) = 1;
    }

    v12 = v7;
    sub_2713BBE68(a1, &v12);
  }

  v13 = 0;
  v9 = *(a1 + 104);
  *(a1 + 88) = "ns";
  *(a1 + 96) = 2;
  if ((v9 & 1) == 0)
  {
    *(a1 + 104) = 1;
  }

  v10 = sub_27182D6C4(a1);
  ++*(a1 + 112);
  v14 = 0;
  sub_2715D6A90(v10, &v14);
  v12 = v14;
  v11 = *(a1 + 104);
  *(a1 + 88) = "clock_type";
  *(a1 + 96) = 10;
  if ((v11 & 1) == 0)
  {
    *(a1 + 104) = 1;
  }

  v14 = &v13;
  sub_2713BBE68(a1, &v14);
}

void sub_2713BBE68(void *a1, _BYTE **a2)
{
  __p[0] = 0;
  __p[1] = 0;
  v5 = 0;
  v3 = sub_27182D6C4(a1);
  ++a1[14];
  v7 = 0;
  v6 = 0uLL;
  sub_2715D6E6C(v3, &v6);
  v5 = v7;
  *__p = v6;
  operator new();
}

void sub_2713BBF58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  a17 = 0;
  sub_27184D728(&a17, v22);
  if ((a14 & 0x80000000) == 0)
  {
    _Unwind_Resume(a1);
  }

  operator delete(__p);
  _Unwind_Resume(a1);
}

void sub_2713BBFEC(void *a1, uint64_t a2)
{
  v10[2] = *MEMORY[0x277D85DE8];
  if (*sub_27182D6C4(a1))
  {
    v4 = sub_27182D6C4(a1);
    ++a1[14];
    v9 = 0uLL;
    v8 = 0;
    sub_2715D6E6C(v4, &v8);
    v5 = v8;
    v10[0] = v9;
    *(v10 + 7) = *(&v9 + 7);
    v6 = HIBYTE(v9);
    if (*(a2 + 24) == 1)
    {
      if (*(a2 + 23) < 0)
      {
        operator delete(*a2);
      }

      *(a2 + 24) = 0;
    }

    v7 = v10[0];
    *a2 = v5;
    *(a2 + 8) = v7;
    *(a2 + 15) = *(v10 + 7);
    *(a2 + 23) = v6;
    *(a2 + 24) = 1;
  }

  else
  {
    ++a1[14];
    if (*(a2 + 24) == 1)
    {
      if (*(a2 + 23) < 0)
      {
        operator delete(*a2);
      }

      *(a2 + 24) = 0;
    }
  }
}

void sub_2713BC0FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2713BC118(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 8);
  v11[0] = *(a2 + 32);
  v6 = sub_27182D6C4(a2);
  ++*(a2 + 112);
  *(a2 + 32) = v6;
  sub_27182D194(a2 + 40, v11);
  sub_2717313F0(a2 + 64, (a2 + 112));
  *(a2 + 112) = 0;
  v11[0] = "version";
  v11[1] = 7;
  v12 = 2;
  *(a2 + 88) = "version";
  *(a2 + 96) = 7;
  *(a2 + 104) = 1;
  sub_27182EB6C(a2, &v12);
  v7 = v12;
  if (v5 >= 1)
  {
    if (v5 == 2)
    {
      v8 = v12;
      sub_2713BC388(a2, a3, v12);
      v7 = v8;
    }

    if (v7 >= 2)
    {
      v7 = 2;
    }
  }

  sub_2713BC22C(a2, a3, v7);
  v9 = *(a2 + 48);
  *(a2 + 32) = *(v9 - 8);
  v10 = *(a2 + 72);
  *(a2 + 112) = *(v10 - 8);
  *(a2 + 48) = v9 - 8;
  *(a2 + 72) = v10 - 8;
}

void sub_2713BC22C(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (a3 < 2)
  {
    v14 = 0;
    v9 = *(a1 + 104);
    *(a1 + 88) = "ns";
    *(a1 + 96) = 2;
    if ((v9 & 1) == 0)
    {
      *(a1 + 104) = 1;
    }

    v10 = sub_27182D6C4(a1);
    ++*(a1 + 112);
    v15 = 0;
    sub_2715D6A90(v10, &v15);
    v13 = v15;
    v11 = *(a1 + 104);
    *(a1 + 88) = "clock_type";
    *(a1 + 96) = 10;
    if ((v11 & 1) == 0)
    {
      *(a1 + 104) = 1;
    }

    v15 = &v14;
    sub_2713BC480(a1, &v15);
    v12 = v14;
    *a2 = v13;
    *(a2 + 8) = v12;
  }

  else
  {
    v5 = *(a1 + 104);
    *(a1 + 88) = "ns";
    *(a1 + 96) = 2;
    if ((v5 & 1) == 0)
    {
      *(a1 + 104) = 1;
    }

    v6 = sub_27182D6C4(a1);
    ++*(a1 + 112);
    v13 = 0;
    sub_2715D6A90(v6, &v13);
    *a2 = v13;
    v7 = (a2 + 8);
    v8 = *(a1 + 104);
    *(a1 + 88) = "clock_type";
    *(a1 + 96) = 10;
    if ((v8 & 1) == 0)
    {
      *(a1 + 104) = 1;
    }

    v13 = v7;
    sub_2713BC480(a1, &v13);
  }
}

void sub_2713BC388(uint64_t result, uint64_t a2, unsigned int a3)
{
  if (a3 >= 2)
  {
    v5 = 2;
    v3 = *(result + 104);
    *(result + 88) = "min_version";
    *(result + 96) = 11;
    if ((v3 & 1) == 0)
    {
      *(result + 104) = 1;
    }

    sub_27182EB6C(result, &v5);
    if (v5 >= 3)
    {
      v4 = v5;
      if ((atomic_load_explicit(&qword_280878A70, memory_order_acquire) & 1) == 0)
      {
        if (__cxa_guard_acquire(&qword_280878A70))
        {
          sub_2718519B4(qword_280878A58, "cv3d::kit::timeio::TimestampSample]", 0x22uLL);
          __cxa_guard_release(&qword_280878A70);
          sub_271847D5C(qword_280878A58, v4, 2);
        }
      }

      sub_271847D5C(qword_280878A58, v4, 2);
    }
  }
}

void sub_2713BC480(uint64_t a1, _BYTE **a2)
{
  if ((*(a1 + 12) & 2) != 0)
  {
    __p[0] = 0;
    __p[1] = 0;
    v6 = 0;
    v4 = sub_27182D6C4(a1);
    ++*(a1 + 112);
    v8 = 0;
    v7 = 0uLL;
    sub_2715D6E6C(v4, &v7);
    v6 = v8;
    *__p = v7;
    operator new();
  }

  LOBYTE(v7) = 0;
  sub_27182E90C(a1, &v7);
  **a2 = v7;
}

void sub_2713BC590(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  a17 = 0;
  sub_27184D728(&a17, v22);
  if ((a14 & 0x80000000) == 0)
  {
    _Unwind_Resume(a1);
  }

  operator delete(__p);
  _Unwind_Resume(a1);
}

void sub_2713BC624(void *a1, uint64_t a2)
{
  if (*sub_27182D6C4(a1))
  {
    v4 = sub_27182D6C4(a1);
    ++a1[14];
    v16 = 0uLL;
    v17 = 0;
    sub_2718319B8(v4, &v16);
    v5 = v16;
    v6 = v17;
    if (*(a2 + 24))
    {
      v7 = *a2;
      if (*a2)
      {
        v15 = v16;
        v8 = *(a2 + 8);
        v9 = *a2;
        if (v8 != v7)
        {
          do
          {
            v10 = *(v8 - 1);
            v8 -= 3;
            if (v10 < 0)
            {
              operator delete(*v8);
            }
          }

          while (v8 != v7);
          v9 = *a2;
        }

        *(a2 + 8) = v7;
        operator delete(v9);
        v5 = v15;
      }
    }

    *a2 = v5;
    *(a2 + 16) = v6;
    *(a2 + 24) = 1;
  }

  else
  {
    ++a1[14];
    if (*(a2 + 24) == 1)
    {
      v11 = *a2;
      if (*a2)
      {
        v12 = *(a2 + 8);
        v13 = *a2;
        if (v12 != v11)
        {
          do
          {
            v14 = *(v12 - 1);
            v12 -= 3;
            if (v14 < 0)
            {
              operator delete(*v12);
            }
          }

          while (v12 != v11);
          v13 = *a2;
        }

        *(a2 + 8) = v11;
        operator delete(v13);
      }

      *(a2 + 24) = 0;
    }
  }
}

void sub_2713BC778(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void **);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  sub_27137F4D0(va1);
  sub_27137F4D0(va);
  _Unwind_Resume(a1);
}

void sub_2713BC794(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_27137F4D0(va);
  _Unwind_Resume(a1);
}

void sub_2713BC7A8(unsigned __int8 *__src@<X0>, size_t a2@<X1>, unsigned __int8 *a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t *a6@<X8>)
{
  v8 = a6;
  v29 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    *a6 = 0;
    a6[1] = 0;
    a6[2] = 0;
    v26 = __src;
    *&__p = __src;
    v10 = &__src[a2];
    if (a4)
    {
      v12 = 0;
      v13 = __src;
      if (__src != v10)
      {
LABEL_4:
        v13 = __src;
        while (1)
        {
          v14 = a4;
          v15 = a3;
          do
          {
            if (*v15 == *v13)
            {
              goto LABEL_10;
            }

            ++v15;
            --v14;
          }

          while (v14);
          if (++v13 == v10)
          {
            v13 = v10;
            goto LABEL_10;
          }
        }
      }

      while (1)
      {
LABEL_10:
        v26 = v13;
        if (a5 == 1 || v13 != __src)
        {
          if (v12 >= v8[2])
          {
            v12 = sub_2713BCBE4(v8, &__p, &v26);
          }

          else
          {
            v16 = v13 - __src;
            if ((v13 - __src) > 0x7FFFFFFFFFFFFFF7)
            {
              goto LABEL_65;
            }

            if (v16 > 0x16)
            {
              operator new();
            }

            v12[23] = v16;
            if (v13 != __src)
            {
              memmove(v12, __src, v13 - __src);
            }

            v12[v16] = 0;
            v12 += 24;
          }

          v8 = a6;
          __src = v26;
          a6[1] = v12;
        }

        if (__src == v10)
        {
          break;
        }

        *&__p = ++__src;
        v13 = __src;
        if (__src != v10)
        {
          goto LABEL_4;
        }
      }
    }

    else if (a5 == 1)
    {
      if (v10 == __src)
      {
        v19 = 0;
      }

      else
      {
        v19 = a2;
      }

      v26 = &__src[v19];
      while (1)
      {
        v20 = sub_2713BCBE4(v8, &__p, &v26);
        v8 = a6;
        v21 = v26;
        a6[1] = v20;
        if (v21 == v10)
        {
          break;
        }

        while (1)
        {
          v22 = v21 + 1;
          v23 = v8[2];
          v24 = v10 == v22 ? 0 : v10 - v22;
          v26 = &v22[v24];
          *&__p = v22;
          if (v20 >= v23)
          {
            break;
          }

          if (v24 > 0x7FFFFFFFFFFFFFF7)
          {
            goto LABEL_65;
          }

          if (v24 >= 0x17)
          {
            operator new();
          }

          v20[23] = v24;
          if (v24)
          {
            memmove(v20, v22, v24);
          }

          v20[v24] = 0;
          v20 += 24;
          v8 = a6;
          v21 = v26;
          a6[1] = v20;
          if (v21 == v10)
          {
            return;
          }
        }
      }
    }

    else
    {
      v17 = 0;
      if (v10 == __src)
      {
        v18 = 0;
      }

      else
      {
        v18 = a2;
      }

      v26 = &__src[v18];
      if (v18)
      {
LABEL_32:
        if (v17 >= v8[2])
        {
          v17 = sub_2713BCBE4(v8, &__p, &v26);
        }

        else
        {
          if (v18 > 0x7FFFFFFFFFFFFFF7)
          {
LABEL_65:
            sub_271120DA8();
          }

          if (v18 >= 0x17)
          {
            operator new();
          }

          v17[23] = v18;
          memmove(v17, __src, v18);
          v17[v18] = 0;
          v17 += 24;
        }

        v8 = a6;
        __src = v26;
        a6[1] = v17;
      }

      while (__src != v10)
      {
        if (v10 == ++__src)
        {
          v18 = 0;
        }

        else
        {
          v18 = v10 - __src;
        }

        v26 = &__src[v18];
        *&__p = __src;
        if (v18)
        {
          goto LABEL_32;
        }
      }
    }
  }

  else if (a5)
  {
    v28 = 0;
    LOBYTE(__p) = 0;
    sub_2711309E8(a6, &__p, 1uLL);
    if (v28 < 0)
    {
      operator delete(__p);
    }
  }

  else
  {
    *a6 = 0;
    a6[1] = 0;
    a6[2] = 0;
  }
}

void sub_2713BCB90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

char *sub_2713BCBE4(uint64_t a1, const void **a2, const void **a3)
{
  v3 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3) + 1;
  if (v3 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_271135560();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v5 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_2711270EC();
  }

  v6 = (8 * ((*(a1 + 8) - *a1) >> 3));
  v7 = *a2;
  v8 = *a3;
  v9 = *a3 - *a2;
  if (v9 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_271120DA8();
  }

  if (v9 > 0x16)
  {
    operator new();
  }

  *(8 * ((*(a1 + 8) - *a1) >> 3) + 0x17) = v9;
  if (v8 != v7)
  {
    memmove(v6, v7, v9);
  }

  v6[v9] = 0;
  v10 = *(a1 + 8) - *a1;
  v11 = &v6[-v10];
  memcpy(&v6[-v10], *a1, v10);
  v12 = *a1;
  *a1 = v11;
  *(a1 + 8) = v6 + 24;
  *(a1 + 16) = 0;
  if (v12)
  {
    operator delete(v12);
  }

  return v6 + 24;
}

void sub_2713BCD90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271127578(va);
  _Unwind_Resume(a1);
}

void sub_2713BCDA4(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24) == *(a2 + 24))
  {
    if (*(a1 + 24))
    {
      v3 = *a1;
      if (*a1)
      {
        v4 = a2;
        v5 = *(a1 + 8);
        v6 = *a1;
        if (v5 != v3)
        {
          do
          {
            v7 = *(v5 - 1);
            v5 -= 3;
            if (v7 < 0)
            {
              operator delete(*v5);
            }
          }

          while (v5 != v3);
          v6 = *a1;
        }

        *(a1 + 8) = v3;
        operator delete(v6);
        *a1 = 0;
        *(a1 + 8) = 0;
        *(a1 + 16) = 0;
        a2 = v4;
      }

      *a1 = *a2;
      *(a1 + 16) = *(a2 + 16);
      *a2 = 0;
      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
    }
  }

  else if (*(a1 + 24))
  {
    v8 = *a1;
    if (*a1)
    {
      v9 = *(a1 + 8);
      v10 = *a1;
      if (v9 != v8)
      {
        do
        {
          v11 = *(v9 - 1);
          v9 -= 3;
          if (v11 < 0)
          {
            operator delete(*v9);
          }
        }

        while (v9 != v8);
        v10 = *a1;
      }

      *(a1 + 8) = v8;
      operator delete(v10);
    }

    *(a1 + 24) = 0;
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = *a2;
    *(a1 + 16) = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *(a1 + 24) = 1;
  }
}

uint64_t sub_2713BCEE8(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 8) = v4;
  if (*(a1 + 48) == *(a2 + 48))
  {
    if (*(a1 + 48))
    {
      if (*(a1 + 47) < 0)
      {
        operator delete(*(a1 + 24));
      }

      v5 = *(a2 + 24);
      *(a1 + 40) = *(a2 + 40);
      *(a1 + 24) = v5;
      *(a2 + 47) = 0;
      *(a2 + 24) = 0;
    }
  }

  else if (*(a1 + 48))
  {
    if (*(a1 + 47) < 0)
    {
      operator delete(*(a1 + 24));
    }

    *(a1 + 48) = 0;
  }

  else
  {
    v6 = *(a2 + 24);
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 24) = v6;
    *(a2 + 32) = 0;
    *(a2 + 40) = 0;
    *(a2 + 24) = 0;
    *(a1 + 48) = 1;
  }

  v7 = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 56) = v7;
  if (*(a1 + 104) != *(a2 + 104))
  {
    if (!*(a1 + 104))
    {
      v11 = *(a2 + 80);
      *(a1 + 96) = *(a2 + 96);
      *(a1 + 80) = v11;
      *(a2 + 88) = 0;
      *(a2 + 96) = 0;
      *(a2 + 80) = 0;
      *(a1 + 104) = 1;
      v9 = *(a1 + 136);
      if (v9 == *(a2 + 136))
      {
        goto LABEL_22;
      }

LABEL_27:
      if (v9)
      {
        if (*(a1 + 135) < 0)
        {
          operator delete(*(a1 + 112));
        }

        *(a1 + 136) = 0;
      }

      else
      {
        v12 = *(a2 + 112);
        *(a1 + 128) = *(a2 + 128);
        *(a1 + 112) = v12;
        *(a2 + 120) = 0;
        *(a2 + 128) = 0;
        *(a2 + 112) = 0;
        *(a1 + 136) = 1;
      }

      goto LABEL_32;
    }

    if (*(a1 + 103) < 0)
    {
      operator delete(*(a1 + 80));
    }

    *(a1 + 104) = 0;
LABEL_21:
    v9 = *(a1 + 136);
    if (v9 == *(a2 + 136))
    {
      goto LABEL_22;
    }

    goto LABEL_27;
  }

  if (!*(a1 + 104))
  {
    goto LABEL_21;
  }

  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  v8 = *(a2 + 80);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 80) = v8;
  *(a2 + 103) = 0;
  *(a2 + 80) = 0;
  v9 = *(a1 + 136);
  if (v9 != *(a2 + 136))
  {
    goto LABEL_27;
  }

LABEL_22:
  if (v9)
  {
    if (*(a1 + 135) < 0)
    {
      operator delete(*(a1 + 112));
    }

    v10 = *(a2 + 112);
    *(a1 + 128) = *(a2 + 128);
    *(a1 + 112) = v10;
    *(a2 + 135) = 0;
    *(a2 + 112) = 0;
  }

LABEL_32:
  sub_2713BCDA4(a1 + 144, a2 + 144);
  return a1;
}

void sub_2713BD0D0(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v5 = *(a1 + 104);
  *(a1 + 88) = "auto_timestamp";
  *(a1 + 96) = 14;
  if ((v5 & 1) == 0)
  {
    *(a1 + 104) = 1;
  }

  v8[0] = *(a1 + 32);
  v6 = sub_27182D6C4(a1);
  ++*(a1 + 112);
  *(a1 + 32) = v6;
  sub_27182D194(a1 + 40, v8);
  sub_2717313F0(a1 + 64, (a1 + 112));
  *(a1 + 112) = 0;
  v8[0] = "version";
  v8[1] = 7;
  v9 = 2;
  *(a1 + 88) = "version";
  *(a1 + 96) = 7;
  *(a1 + 104) = 1;
  sub_27182EB6C(a1, &v9);
  if (v9 >= 2)
  {
    v7 = 2;
  }

  else
  {
    v7 = v9;
  }

  sub_2713BBD0C(a1, (a2 + 8), v7);
}

void sub_2713BD210(uint64_t a1, _WORD *a2)
{
  v6[0] = *(a1 + 32);
  v4 = sub_27182D6C4(a1);
  ++*(a1 + 112);
  *(a1 + 32) = v4;
  sub_27182D194(a1 + 40, v6);
  sub_2717313F0(a1 + 64, (a1 + 112));
  *(a1 + 112) = 0;
  if (*(a1 + 104) == 1)
  {
    *(a1 + 104) = 0;
  }

  v6[0] = "version";
  v6[1] = 7;
  v7 = 2;
  *(a1 + 88) = "version";
  *(a1 + 96) = 7;
  *(a1 + 104) = 1;
  sub_27182EB6C(a1, &v7);
  if (v7 >= 2)
  {
    v5 = *(a1 + 104);
    *(a1 + 88) = "io_format";
    *(a1 + 96) = 9;
    if ((v5 & 1) == 0)
    {
      *(a1 + 104) = 1;
    }

    v6[0] = a2;
    sub_2713BDD60(a1, v6);
  }

  v6[0] = &unk_28810F9B8;
  sub_2713BE9C4();
}

void sub_2713BDCC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  sub_2713BE258(va);
  sub_2713BF3B0(&a9);
  _Unwind_Resume(a1);
}

void sub_2713BDCE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  sub_2713BE258(va);
  _Unwind_Resume(a1);
}

void sub_2713BDD00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  sub_2713A32D8(va);
  sub_2713BF3B0(&a9);
  _Unwind_Resume(a1);
}

void sub_2713BDD1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_2713AE3D8(v9);
  sub_2713BF3B0(&a9);
  _Unwind_Resume(a1);
}

void sub_2713BDD38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  sub_2712B8A00(va);
  _Unwind_Resume(a1);
}

void sub_2713BDD60(void *a1, _WORD **a2)
{
  __p[0] = 0;
  __p[1] = 0;
  v5 = 0;
  v3 = sub_27182D6C4(a1);
  ++a1[14];
  v7 = 0;
  v6 = 0uLL;
  sub_2715D6E6C(v3, &v6);
  v5 = v7;
  *__p = v6;
  operator new();
}

void sub_2713BDE50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  a17 = 0;
  sub_27184D728(&a17, v22);
  if ((a14 & 0x80000000) == 0)
  {
    _Unwind_Resume(a1);
  }

  operator delete(__p);
  _Unwind_Resume(a1);
}

void sub_2713BDEE4(void *a1, void **a2)
{
  __p[0] = 0;
  __p[1] = 0;
  v5 = 0;
  v3 = sub_27182D6C4(a1);
  ++a1[14];
  v7 = 0;
  v6 = 0uLL;
  sub_2715D6E6C(v3, &v6);
  v5 = v7;
  *__p = v6;
  operator new();
}

void sub_2713BDFD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  a17 = 0;
  sub_27184D728(&a17, v22);
  if ((a14 & 0x80000000) == 0)
  {
    _Unwind_Resume(a1);
  }

  operator delete(__p);
  _Unwind_Resume(a1);
}

void sub_2713BE218(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v17 & 1) == 0)
    {
LABEL_6:
      sub_271235250(&a16);
      _Unwind_Resume(a1);
    }
  }

  else if (!v17)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v16);
  goto LABEL_6;
}

uint64_t sub_2713BE258(uint64_t a1)
{
  std::istream::~istream();
  *a1 = MEMORY[0x277D82878] + 16;
  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  *a1 = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 8));
  return a1;
}

void sub_2713BE588(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  sub_27112D66C(v24 + 16);
  sub_27112E024(va);
  sub_2712B8A00(v25 - 112);
  _Unwind_Resume(a1);
}

void sub_2713BE5C0(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = a3;
  v12 = *MEMORY[0x277D85DE8];
  v10[0] = &unk_288108A70;
  v10[1] = a1;
  v11 = v10;
  sub_2715E8364(v10, 0, a2, a3, v6);
  if (v11 == v10)
  {
    (*(*v11 + 32))(v11);
    if (v7)
    {
      goto LABEL_5;
    }

LABEL_7:
    v9[0] = "load";
    v9[1] = 4;
    v8 = v4;
    sub_2715E8C50("Failure during ", v9, " from stream with file format ", &v8, ": ");
  }

  if (v11)
  {
    (*(*v11 + 40))(v11);
  }

  if ((v7 & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_5:
  *(a4 + 120) = 1;
}

void sub_2713BE960(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_27112D66C(v15 + 16);
  sub_27112D71C(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_27112E024(v16 - 224);
  _Unwind_Resume(a1);
}

void sub_2713BE9C4()
{
  v2 = 0;
  v3 = 0;
  v4 = 0;
  sub_2717CD2D0(&v1, &v3, &v4, 1, &v2, 1, 0);
  operator new();
}

void sub_2713BEB7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27112F828(v3);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_2713BEBCC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18)
{
  if (a18)
  {
    free(a18);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2713BEC54(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_288108A70;
  a2[1] = v2;
  return result;
}

uint64_t sub_2713BEC8C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "N4cv3d3kit5imgio6detail12ProvideImageINS0_3img5ImageILNS4_6FormatE0ENS4_13DynamicBufferEEEEE")
  {
    return a1 + 8;
  }

  if (((v2 & "N4cv3d3kit5imgio6detail12ProvideImageINS0_3img5ImageILNS4_6FormatE0ENS4_13DynamicBufferEEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "N4cv3d3kit5imgio6detail12ProvideImageINS0_3img5ImageILNS4_6FormatE0ENS4_13DynamicBufferEEEEE"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("N4cv3d3kit5imgio6detail12ProvideImageINS0_3img5ImageILNS4_6FormatE0ENS4_13DynamicBufferEEEEE" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

double sub_2713BED04@<D0>(uint64_t *a1@<X0>, _DWORD *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (!a3)
  {
    v8 = a3;
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/ImageIO/include/Kit/ImageIO/ImageIO.h", 386, "format != img::Format::Dynamic", 0x1EuLL, "loader must specify the format to load as", 0x29uLL, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1)
      {
        goto LABEL_11;
      }

      v9 = qword_28087C408;
      v10 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v9 = qword_28087C408;
      v10 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_24;
      }
    }

    do
    {
      v12 = *v9;
      v11 = *(v9 + 8);
      v9 += 16;
      v12(v11, "format != img::Format::Dynamic", 30, "loader must specify the format to load as", 41);
    }

    while (v9 != v10);
    if (byte_28087C430)
    {
LABEL_11:
      qword_28087C420(*algn_28087C428, "format != img::Format::Dynamic", 30, "loader must specify the format to load as", 41);
      a3 = v8;
      v7 = *a1;
      if (*(*a1 + 32) != *a2)
      {
        goto LABEL_16;
      }

LABEL_12:
      if (*(v7 + 56) == a3 && *(v7 + 36) == a2[1])
      {
        goto LABEL_23;
      }

      goto LABEL_16;
    }

LABEL_24:
    abort();
  }

  v7 = *a1;
  if (*(*a1 + 32) == *a2)
  {
    goto LABEL_12;
  }

LABEL_16:
  sub_2713BEFBC(v7, a3, a2, &v21);
  v14 = *a1;
  v15 = v22;
  v22 = 0uLL;
  v16 = *(v14 + 16);
  *(v14 + 8) = v15;
  if (v16 && !atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v16->__on_zero_shared)(v16);
    std::__shared_weak_count::__release_weak(v16);
  }

  v17 = *v23;
  v18 = *&v23[16];
  *(v14 + 54) = *&v23[30];
  *(v14 + 40) = v18;
  *(v14 + 24) = v17;
  v19 = *(&v22 + 1);
  if (*(&v22 + 1) && !atomic_fetch_add((*(&v22 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v19->__on_zero_shared)(v19);
    std::__shared_weak_count::__release_weak(v19);
  }

  v7 = *a1;
LABEL_23:
  v21 = &unk_28810E778;
  sub_2712C9B00(v7, &v22);
  *a4 = &unk_28810E778;
  *(a4 + 8) = v22;
  *(a4 + 24) = *v23;
  result = *&v23[14];
  *(a4 + 38) = *&v23[14];
  *(a4 + 120) = 1;
  return result;
}

void sub_2713BEFBC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (a2)
  {
    v5 = *(a1 + 8);
    v4 = *(a1 + 16);
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v10 = v5;
    v11 = v4;
    v12 = &v10;
    v13 = a3;
    v14 = &v15;
    sub_271785964(a2, &v12, a4);
  }

  else
  {
    v7 = *(a1 + 8);
    v6 = *(a1 + 16);
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v10 = v7;
    v11 = v6;
    v8 = *(a1 + 56);
    v12 = &v10;
    v13 = a3;
    v14 = &v15;
    sub_271785964(v8, &v12, a4);
  }

  v9 = v11;
  if (v11)
  {
    if (!atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v9->__on_zero_shared)(v9);
      std::__shared_weak_count::__release_weak(v9);
    }
  }
}

uint64_t sub_2713BF0D4(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
    return a1;
  }

  else
  {
    if (v2)
    {
      (*(*v2 + 40))(v2);
    }

    return a1;
  }
}

uint64_t sub_2713BF160(uint64_t a1, void *a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x2743BED80](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = MEMORY[0x277D82878] + 16;
  *(a1 + 64) = 0u;
  v4 = (a1 + 64);
  *(a1 + 80) = 0u;
  *(a1 + 96) = 24;
  sub_271129318(a1);
  *(a1 + 168) = 0;
  *(a1 + 104) = MEMORY[0x277D82848] + 24;
  *(a1 + 112) = 0;
  *(a1 + 120) = MEMORY[0x277D82848] + 64;
  std::ios_base::init((a1 + 120), a1);
  *(a1 + 256) = 0;
  *(a1 + 264) = -1;
  v5 = sub_27182D6C4(a2);
  ++a2[14];
  __n.__r_.__value_.__r.__words[0] = 0;
  sub_2715D693C(v5, &__n);
  v6 = __n.__r_.__value_.__r.__words[0];
  memset(&__n, 0, sizeof(__n));
  if (v6)
  {
    std::string::append(&__n, v6, 0);
    if ((__n.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_n = &__n;
    }

    else
    {
      p_n = __n.__r_.__value_.__r.__words[0];
    }
  }

  else
  {
    p_n = &__n;
  }

  v10[0] = p_n;
  v10[1] = v6;
  v8 = sub_27182D6C4(a2);
  ++a2[14];
  sub_27182D810(v8, v10);
  if (*(a1 + 87) < 0)
  {
    operator delete(*v4);
  }

  *v4 = *&__n.__r_.__value_.__l.__data_;
  *(a1 + 80) = *(&__n.__r_.__value_.__l + 2);
  *(&__n.__r_.__value_.__s + 23) = 0;
  __n.__r_.__value_.__s.__data_[0] = 0;
  sub_271129318(a1);
  if (SHIBYTE(__n.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__n.__r_.__value_.__l.__data_);
  }

  return a1;
}

void sub_2713BF320(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  std::istream::~istream();
  sub_2713B5444(v17);
  _Unwind_Resume(a1);
}

uint64_t sub_2713BF3B0(uint64_t a1)
{
  v2 = *(a1 + 96);
  if (v2 != -1)
  {
    (off_2881318A0[v2])(&v4, a1 + 32);
  }

  *(a1 + 96) = -1;
  return a1;
}

__n128 sub_2713BF40C(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  *v2 = &unk_28810E7B8;
  *(v2 + 8) = *(a2 + 8);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  result = *(a2 + 24);
  *(v2 + 38) = *(a2 + 38);
  *(v2 + 24) = result;
  return result;
}

__n128 sub_2713BF44C(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  *v2 = &unk_28810F9B8;
  *(v2 + 8) = *(a2 + 8);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  result = *(a2 + 24);
  v4 = *(a2 + 40);
  *(v2 + 54) = *(a2 + 54);
  *(v2 + 40) = v4;
  *(v2 + 24) = result;
  return result;
}

__n128 sub_2713BF494(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *(*a1 + 64);
  if (v5 == -1)
  {
    goto LABEL_8;
  }

  if (v5)
  {
    (off_2881318A0[v5])(&v10, v4);
LABEL_8:
    *(v4 + 64) = -1;
    *v4 = &unk_28810E7B8;
    *(v4 + 8) = *(a3 + 8);
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    result = *(a3 + 24);
    *(v4 + 38) = *(a3 + 38);
    *(v4 + 24) = result;
    *(v4 + 64) = 0;
    return result;
  }

  v6 = *(a3 + 8);
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  v7 = *(a2 + 16);
  *(a2 + 8) = v6;
  if (v7)
  {
    if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v8 = a2;
      (v7->__on_zero_shared)(v7);
      std::__shared_weak_count::__release_weak(v7);
      a2 = v8;
    }
  }

  result = *(a3 + 24);
  *(a2 + 38) = *(a3 + 38);
  *(a2 + 24) = result;
  return result;
}

__n128 sub_2713BF5B8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *(*a1 + 64);
  if (v5 == -1)
  {
    goto LABEL_8;
  }

  if (v5 != 1)
  {
    (off_2881318A0[v5])(&v12, v4);
LABEL_8:
    *(v4 + 64) = -1;
    *v4 = &unk_28810F9B8;
    *(v4 + 8) = *(a3 + 8);
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    result = *(a3 + 24);
    v11 = *(a3 + 40);
    *(v4 + 54) = *(a3 + 54);
    *(v4 + 40) = v11;
    *(v4 + 24) = result;
    *(v4 + 64) = 1;
    return result;
  }

  v6 = *(a3 + 8);
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  v7 = *(a2 + 16);
  *(a2 + 8) = v6;
  if (v7)
  {
    if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v8 = a2;
      (v7->__on_zero_shared)(v7);
      std::__shared_weak_count::__release_weak(v7);
      a2 = v8;
    }
  }

  result = *(a3 + 24);
  v10 = *(a3 + 40);
  *(a2 + 54) = *(a3 + 54);
  *(a2 + 40) = v10;
  *(a2 + 24) = result;
  return result;
}

void sub_2713BF6F4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (a4 <= 2)
  {
    sub_2713BF94C(&v11, a2, a3, a4);
  }

  else
  {
    v12 = 0;
    v6 = a4;
    sub_27183FF6C(a2[6], &v12);
    v7 = a2 + 2;
    *&v11 = (*(a2[2] + 32))(a2 + 2);
    *(&v11 + 1) = v12;
    sub_2713BF82C((a2 + 3), &v11);
    if (v6 >= 6)
    {
      v8 = 6;
    }

    else
    {
      v8 = v6;
    }

    sub_2713BFB58(a2, a3, v8);
    v9 = a2[4];
    v10 = *(v9 - 16) - (*(*v7 + 32))(a2 + 2) + *(v9 - 8);
    if (v10)
    {
      (*(*v7 + 40))(a2 + 2, v10);
    }

    a2[4] -= 16;
  }
}

void sub_2713BF82C(uint64_t a1, _OWORD *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 < v3)
  {
    *v4 = *a2;
    v5 = (v4 + 1);
LABEL_3:
    *(a1 + 8) = v5;
    return;
  }

  v6 = *a1;
  v7 = v4 - *a1;
  v8 = v7 >> 4;
  v9 = (v7 >> 4) + 1;
  if (v9 >> 60)
  {
    sub_271135560();
  }

  v10 = v3 - v6;
  if (v10 >> 3 > v9)
  {
    v9 = v10 >> 3;
  }

  if (v10 >= 0x7FFFFFFFFFFFFFF0)
  {
    v11 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    if (!(v11 >> 60))
    {
      operator new();
    }

    sub_2711270EC();
  }

  *(16 * v8) = *a2;
  v5 = 16 * v8 + 16;
  memcpy(0, v6, v7);
  *a1 = 0;
  *(a1 + 8) = v5;
  *(a1 + 16) = 0;
  if (!v6)
  {
    goto LABEL_3;
  }

  operator delete(v6);
  *(a1 + 8) = v5;
}

void sub_2713BF94C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v29 = *MEMORY[0x277D85DE8];
  *&v25 = 0;
  BYTE8(v25) = 0;
  LOBYTE(v26) = 0;
  v28 = 0;
  sub_2713C0268(a2, v24, a4);
  *&v9[8] = v25;
  LOBYTE(v10[0]) = 0;
  v12 = 0;
  if (v28 == 1)
  {
    if (SHIBYTE(v27) < 0)
    {
      sub_271127178(v10, v26, *(&v26 + 1));
    }

    else
    {
      *v10 = v26;
      v11 = v27;
    }

    v12 = 1;
  }

  v13 = 0;
  v14 = 0;
  LOBYTE(v15) = 0;
  v17 = 0;
  LOBYTE(v18) = 0;
  v20 = 0;
  LOBYTE(__p) = 0;
  v23 = 0;
  sub_2713BCEE8(a3, v9);
  if (v23 == 1)
  {
    v5 = __p;
    if (__p)
    {
      v6 = v22;
      v7 = __p;
      if (v22 != __p)
      {
        do
        {
          v8 = *(v6 - 1);
          v6 -= 3;
          if (v8 < 0)
          {
            operator delete(*v6);
          }
        }

        while (v6 != v5);
        v7 = __p;
      }

      v22 = v5;
      operator delete(v7);
    }
  }

  if (v20 == 1 && v19 < 0)
  {
    operator delete(v18);
  }

  if (v17 == 1 && v16 < 0)
  {
    operator delete(v15);
  }

  if (v12 == 1 && SHIBYTE(v11) < 0)
  {
    operator delete(v10[0]);
  }

  if (v28 == 1 && SHIBYTE(v27) < 0)
  {
    operator delete(v26);
  }
}

void sub_2713BFB0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18)
{
  if (a18 == 1 && a17 < 0)
  {
    operator delete(__p);
  }

  if (*(v18 - 48) == 1 && *(v18 - 49) < 0)
  {
    operator delete(*(v18 - 72));
  }

  _Unwind_Resume(exception_object);
}

void sub_2713BFB58(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v11 = 2;
  sub_27183FB7C(*(a1 + 48), &v11);
  sub_2713BFE58(&v11, a1, a2 + 8, v11);
  LOBYTE(v11) = 0;
  sub_27183F824(*(a1 + 48), &v11);
  if (v11)
  {
    if ((*(a2 + 48) & 1) == 0)
    {
      *(a2 + 24) = 0;
      *(a2 + 32) = 0;
      *(a2 + 40) = 0;
      *(a2 + 48) = 1;
    }

    sub_2718403E0(*(a1 + 48), (a2 + 24));
  }

  else if (*(a2 + 48))
  {
    if (*(a2 + 47) < 0)
    {
      operator delete(*(a2 + 24));
    }

    *(a2 + 48) = 0;
  }

  if (a3 >= 4)
  {
    v10 = 0;
    sub_27183F824(*(a1 + 48), &v10);
    if (v10)
    {
      if ((*(a2 + 72) & 1) == 0)
      {
        *(a2 + 56) = 0;
        *(a2 + 64) = 0;
        *(a2 + 72) = 1;
      }

      v11 = 2;
      sub_27183FB7C(*(a1 + 48), &v11);
      sub_2713BFE58(&v11, a1, a2 + 56, v11);
    }

    else if (*(a2 + 72))
    {
      *(a2 + 72) = 0;
    }

    if (a3 == 5)
    {
      LOBYTE(v11) = 0;
      sub_27183F824(*(a1 + 48), &v11);
      if (v11)
      {
        if ((*(a2 + 104) & 1) == 0)
        {
          *(a2 + 80) = 0;
          *(a2 + 88) = 0;
          *(a2 + 96) = 0;
          *(a2 + 104) = 1;
        }

        sub_2718403E0(*(a1 + 48), (a2 + 80));
      }

      else if (*(a2 + 104))
      {
        if (*(a2 + 103) < 0)
        {
          operator delete(*(a2 + 80));
        }

        *(a2 + 104) = 0;
      }
    }

    else if (a3 >= 6)
    {
      LOBYTE(v11) = 0;
      sub_27183F824(*(a1 + 48), &v11);
      if (v11)
      {
        if ((*(a2 + 104) & 1) == 0)
        {
          *(a2 + 80) = 0;
          *(a2 + 88) = 0;
          *(a2 + 96) = 0;
          *(a2 + 104) = 1;
        }

        sub_2718403E0(*(a1 + 48), (a2 + 80));
      }

      else if (*(a2 + 104))
      {
        if (*(a2 + 103) < 0)
        {
          operator delete(*(a2 + 80));
        }

        *(a2 + 104) = 0;
      }

      LOBYTE(v11) = 0;
      sub_27183F824(*(a1 + 48), &v11);
      if (v11)
      {
        if ((*(a2 + 136) & 1) == 0)
        {
          *(a2 + 112) = 0;
          *(a2 + 120) = 0;
          *(a2 + 128) = 0;
          *(a2 + 136) = 1;
        }

        sub_2718403E0(*(a1 + 48), (a2 + 112));
      }

      else if (*(a2 + 136))
      {
        if (*(a2 + 135) < 0)
        {
          operator delete(*(a2 + 112));
        }

        *(a2 + 136) = 0;
      }

      LOBYTE(v11) = 0;
      sub_27183F824(*(a1 + 48), &v11);
      if (v11)
      {
        if ((*(a2 + 168) & 1) == 0)
        {
          *(a2 + 144) = 0;
          *(a2 + 152) = 0;
          *(a2 + 160) = 0;
          *(a2 + 168) = 1;
        }

        sub_2713BFFC0(a1, (a2 + 144));
      }

      else if (*(a2 + 168))
      {
        v6 = *(a2 + 144);
        if (v6)
        {
          v7 = *(a2 + 152);
          v8 = *(a2 + 144);
          if (v7 != v6)
          {
            do
            {
              v9 = *(v7 - 1);
              v7 -= 3;
              if (v9 < 0)
              {
                operator delete(*v7);
              }
            }

            while (v7 != v6);
            v8 = *(a2 + 144);
          }

          *(a2 + 152) = v6;
          operator delete(v8);
        }

        *(a2 + 168) = 0;
      }
    }
  }
}

void sub_2713BFE58(uint64_t a1, void *a2, uint64_t a3, unsigned int a4)
{
  if (a4 <= 1)
  {
    *&v10 = 0;
    BYTE8(v10) = 0;
    sub_27183FE6C(a2[6], &v10);
    LOBYTE(v9) = 0;
    sub_27183F824(a2[6], &v9);
    v8 = v9;
    *a3 = v10;
    *(a3 + 8) = v8;
  }

  else
  {
    v9 = 0;
    sub_27183FF6C(a2[6], &v9);
    *&v10 = (*(a2[2] + 32))(a2 + 2);
    *(&v10 + 1) = v9;
    sub_2713BF82C((a2 + 3), &v10);
    sub_27183FE6C(a2[6], a3);
    LOBYTE(v10) = 0;
    sub_27183F824(a2[6], &v10);
    *(a3 + 8) = v10;
    v6 = a2[4];
    v7 = *(v6 - 16) - (*(a2[2] + 32))(a2 + 2) + *(v6 - 8);
    if (v7)
    {
      (*(a2[2] + 40))(a2 + 2, v7);
    }

    a2[4] -= 16;
  }
}

void sub_2713BFFC0(uint64_t a1, void ***a2)
{
  v11 = 0xAAAAAAAAAAAAAAABLL * (a2[1] - *a2);
  sub_27183FF6C(*(a1 + 48), &v11);
  v4 = a2[1];
  v5 = 0xAAAAAAAAAAAAAAABLL * (v4 - *a2);
  if (v11 > v5)
  {
    sub_2713C00BC(a2, v11 - v5);
    v8 = a2;
    v6 = *a2;
    v7 = v8[1];
    if (v7 == v6)
    {
      return;
    }

    goto LABEL_12;
  }

  if (v11 >= v5)
  {
    v7 = a2[1];
    v6 = *a2;
    if (v4 == v6)
    {
      return;
    }

    goto LABEL_12;
  }

  v7 = &(*a2)[3 * v11];
  while (v4 != v7)
  {
    v9 = *(v4 - 1);
    v4 -= 3;
    if (v9 < 0)
    {
      operator delete(*v4);
    }
  }

  a2[1] = v7;
  v6 = *a2;
  if (v7 != v6)
  {
LABEL_12:
    v10 = *(a1 + 48);
    do
    {
      sub_2718403E0(v10, v6);
      v6 += 3;
    }

    while (v6 != v7);
  }
}

void sub_2713C00BC(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (0xAAAAAAAAAAAAAAABLL * ((v3 - v4) >> 3) >= a2)
  {
    if (a2)
    {
      v10 = 24 * ((24 * a2 - 24) / 0x18) + 24;
      bzero(*(a1 + 8), v10);
      v4 += v10;
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v5 = *a1;
    v6 = v4 - *a1;
    v7 = 0xAAAAAAAAAAAAAAABLL * (v6 >> 3) + a2;
    if (v7 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_271135560();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v3 - v5) >> 3);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x555555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      if (v9 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      sub_2711270EC();
    }

    v11 = (8 * (v6 >> 3));
    v12 = 24 * ((24 * a2 - 24) / 0x18) + 24;
    bzero(v11, v12);
    v13 = &v11[v12];
    v14 = &v11[-v6];
    memcpy(v14, v5, v6);
    *a1 = v14;
    *(a1 + 8) = v13;
    *(a1 + 16) = 0;
    if (v5)
    {

      operator delete(v5);
    }
  }
}

void sub_2713C0268(void *a1, uint64_t a2, unsigned int a3)
{
  v7 = 2;
  sub_27183FB7C(a1[6], &v7);
  sub_2713BFE58(&v6, a1, a2 + 8, v7);
  if (a3 >= 2)
  {
    v8 = 0;
    sub_27183F824(a1[6], &v8);
    if (v8)
    {
      if ((*(a2 + 48) & 1) == 0)
      {
        *(a2 + 24) = 0;
        *(a2 + 32) = 0;
        *(a2 + 40) = 0;
        *(a2 + 48) = 1;
      }

      sub_2718403E0(a1[6], (a2 + 24));
    }

    else if (*(a2 + 48))
    {
      if (*(a2 + 47) < 0)
      {
        operator delete(*(a2 + 24));
      }

      *(a2 + 48) = 0;
    }
  }
}

void sub_2713C0350(void *a1, unsigned __int16 *a2, unsigned int a3)
{
  if (a3 <= 1)
  {
    *&v11 = &unk_28810F9B8;
    sub_2713BE9C4();
  }

  v10 = 0;
  sub_27183FF6C(a1[6], &v10);
  *&v11 = (*(a1[2] + 32))(a1 + 2);
  *(&v11 + 1) = v10;
  sub_2713BF82C((a1 + 3), &v11);
  LOWORD(v11) = 0;
  sub_27183F9D0(a1[6], &v11);
  *a2 = v11;
  LODWORD(v11) = 2;
  sub_27183FB7C(a1[6], &v11);
  if (v11 <= 1)
  {
    *(&v11 + 1) = 0;
    v10 = 0;
    sub_27183FF6C(a1[6], &v10);
    *&v11 = v10;
    v9 = a1[6];
    sub_27183FB7C(v9, &v11 + 2);
    sub_27183FB7C(v9, (&v11 | 0xC));
    *(a2 + 4) = v11;
    v8 = *a2;
    if (v8 != 1)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v10 = 0;
    sub_27183FF6C(a1[6], &v10);
    *&v11 = (*(a1[2] + 32))(a1 + 2);
    *(&v11 + 1) = v10;
    sub_2713BF82C((a1 + 3), &v11);
    *&v11 = 0;
    sub_27183FF6C(a1[6], &v11);
    *(a2 + 1) = v11;
    v5 = a1[6];
    sub_27183FB7C(v5, a2 + 4);
    sub_27183FB7C(v5, a2 + 5);
    v6 = a1[4];
    v7 = *(v6 - 16) - (*(a1[2] + 32))(a1 + 2) + *(v6 - 8);
    if (v7)
    {
      (*(a1[2] + 40))(a1 + 2, v7);
    }

    a1[4] -= 16;
    v8 = *a2;
    if (v8 != 1)
    {
LABEL_6:
      sub_2715F7478(v8);
      sub_2713C0C68(&v11, a1);
      sub_2713BE068();
    }
  }

  sub_2715F5588(a2);
}

void sub_2713C0BD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, ...)
{
  va_start(va, a30);
  sub_2713BE258(va);
  sub_2713BF3B0(&a9);
  _Unwind_Resume(a1);
}

void sub_2713C0BEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, ...)
{
  va_start(va, a30);
  sub_2713BE258(va);
  _Unwind_Resume(a1);
}

void sub_2713C0C08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, ...)
{
  va_start(va, a30);
  sub_2713A32D8(va);
  sub_2713BF3B0(&a9);
  _Unwind_Resume(a1);
}

void sub_2713C0C24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_2713AE3D8(v9);
  sub_2713BF3B0(&a9);
  _Unwind_Resume(a1);
}

void sub_2713C0C40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, ...)
{
  va_start(va, a30);
  sub_2712B8A00(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2713C0C68(uint64_t a1, uint64_t a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x2743BED80](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = MEMORY[0x277D82878] + 16;
  *(a1 + 64) = 0u;
  v4 = (a1 + 64);
  *(a1 + 80) = 0u;
  *(a1 + 96) = 24;
  sub_271129318(a1);
  *(a1 + 168) = 0;
  *(a1 + 104) = MEMORY[0x277D82848] + 24;
  *(a1 + 112) = 0;
  *(a1 + 120) = MEMORY[0x277D82848] + 64;
  std::ios_base::init((a1 + 120), a1);
  *(a1 + 256) = 0;
  *(a1 + 264) = -1;
  __n = 0;
  sub_27183FF6C(*(a2 + 48), &__n);
  memset(&v9, 0, sizeof(v9));
  if (__n)
  {
    std::string::append(&v9, __n, 0);
    v5 = __n;
    if ((v9.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v6 = &v9;
    }

    else
    {
      v6 = v9.__r_.__value_.__r.__words[0];
    }
  }

  else
  {
    v5 = 0;
    v6 = &v9;
  }

  v8[0] = v6;
  v8[1] = v5;
  sub_2718413A8(a2, v8);
  if (*(a1 + 87) < 0)
  {
    operator delete(*v4);
  }

  *v4 = *&v9.__r_.__value_.__l.__data_;
  *(a1 + 80) = *(&v9.__r_.__value_.__l + 2);
  *(&v9.__r_.__value_.__s + 23) = 0;
  v9.__r_.__value_.__s.__data_[0] = 0;
  sub_271129318(a1);
  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }

  return a1;
}

void sub_2713C0E0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  std::istream::~istream();
  sub_2713B5444(v16);
  _Unwind_Resume(a1);
}

void sub_2713C0E9C(uint64_t a1, uint64_t a2)
{
  v6[0] = *(a1 + 32);
  v4 = sub_27182D2AC(a1);
  ++*(a1 + 112);
  *(a1 + 32) = v4;
  sub_27182D194(a1 + 40, v6);
  sub_2717313F0(a1 + 64, (a1 + 112));
  *(a1 + 112) = 0;
  v6[0] = "version";
  v6[1] = 7;
  v7 = 6;
  *(a1 + 88) = "version";
  *(a1 + 96) = 7;
  *(a1 + 104) = 1;
  sub_27182DBE0(a1, &v7);
  if (v7 >= 6)
  {
    v5 = 6;
  }

  else
  {
    v5 = v7;
  }

  if (v7 >= 3)
  {
    sub_2713C11A8(a1, a2, v5);
  }

  sub_2713C0F9C(v6, a1, a2, v5);
}

void sub_2713C0F9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *MEMORY[0x277D85DE8];
  v5 = 0;
  v6 = 0;
  LOBYTE(v7) = 0;
  v8 = 0;
  sub_2713C1EC4(a2, v4, a4);
}

void sub_2713C115C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18)
{
  if (a18 == 1 && a17 < 0)
  {
    operator delete(__p);
  }

  if (*(v18 - 48) == 1 && *(v18 - 49) < 0)
  {
    operator delete(*(v18 - 72));
  }

  _Unwind_Resume(exception_object);
}

void sub_2713C11A8(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v5 = *(a1 + 104);
  *(a1 + 88) = "auto_timestamp";
  *(a1 + 96) = 14;
  if ((v5 & 1) == 0)
  {
    *(a1 + 104) = 1;
  }

  v8[0] = *(a1 + 32);
  v6 = sub_27182D2AC(a1);
  ++*(a1 + 112);
  *(a1 + 32) = v6;
  sub_27182D194(a1 + 40, v8);
  sub_2717313F0(a1 + 64, (a1 + 112));
  *(a1 + 112) = 0;
  v8[0] = "version";
  v8[1] = 7;
  v9[0] = 2;
  *(a1 + 88) = "version";
  *(a1 + 96) = 7;
  *(a1 + 104) = 1;
  sub_27182DBE0(a1, v9);
  if (v9[0] >= 2)
  {
    v7 = 2;
  }

  else
  {
    v7 = v9[0];
  }

  sub_2713C1428(a1, (a2 + 8), v7);
}

void sub_2713C1428(uint64_t a1, char **a2, unsigned int a3)
{
  if (a3 >= 2)
  {
    v5 = *(a1 + 104);
    *(a1 + 88) = "ns";
    *(a1 + 96) = 2;
    if ((v5 & 1) == 0)
    {
      *(a1 + 104) = 1;
    }

    v6 = sub_27182D2AC(a1);
    ++*(a1 + 112);
    v12 = 0;
    sub_2715D6290(v6, &v12);
    *a2 = v12;
    v7 = (a2 + 1);
    v8 = *(a1 + 104);
    *(a1 + 88) = "clock_type";
    *(a1 + 96) = 10;
    if ((v8 & 1) == 0)
    {
      *(a1 + 104) = 1;
    }

    v12 = v7;
    sub_2713C1584(a1, &v12);
  }

  v13 = 0;
  v9 = *(a1 + 104);
  *(a1 + 88) = "ns";
  *(a1 + 96) = 2;
  if ((v9 & 1) == 0)
  {
    *(a1 + 104) = 1;
  }

  v10 = sub_27182D2AC(a1);
  ++*(a1 + 112);
  v14 = 0;
  sub_2715D6290(v10, &v14);
  v12 = v14;
  v11 = *(a1 + 104);
  *(a1 + 88) = "clock_type";
  *(a1 + 96) = 10;
  if ((v11 & 1) == 0)
  {
    *(a1 + 104) = 1;
  }

  v14 = &v13;
  sub_2713C1584(a1, &v14);
}

void sub_2713C1584(void *a1, _BYTE **a2)
{
  __p[0] = 0;
  __p[1] = 0;
  v5 = 0;
  v3 = sub_27182D2AC(a1);
  ++a1[14];
  v7 = 0;
  v6 = 0uLL;
  sub_2715D666C(v3, &v6);
  v5 = v7;
  *__p = v6;
  operator new();
}

void sub_2713C1674(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  a17 = 0;
  sub_27184D728(&a17, v22);
  if ((a14 & 0x80000000) == 0)
  {
    _Unwind_Resume(a1);
  }

  operator delete(__p);
  _Unwind_Resume(a1);
}

void sub_2713C1708(void *a1, uint64_t a2)
{
  v10[2] = *MEMORY[0x277D85DE8];
  if (*sub_27182D2AC(a1))
  {
    v4 = sub_27182D2AC(a1);
    ++a1[14];
    v9 = 0uLL;
    v8 = 0;
    sub_2715D666C(v4, &v8);
    v5 = v8;
    v10[0] = v9;
    *(v10 + 7) = *(&v9 + 7);
    v6 = HIBYTE(v9);
    if (*(a2 + 24) == 1)
    {
      if (*(a2 + 23) < 0)
      {
        operator delete(*a2);
      }

      *(a2 + 24) = 0;
    }

    v7 = v10[0];
    *a2 = v5;
    *(a2 + 8) = v7;
    *(a2 + 15) = *(v10 + 7);
    *(a2 + 23) = v6;
    *(a2 + 24) = 1;
  }

  else
  {
    ++a1[14];
    if (*(a2 + 24) == 1)
    {
      if (*(a2 + 23) < 0)
      {
        operator delete(*a2);
      }

      *(a2 + 24) = 0;
    }
  }
}

void sub_2713C1818(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2713C1834(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 8);
  v11[0] = *(a2 + 32);
  v6 = sub_27182D2AC(a2);
  ++*(a2 + 112);
  *(a2 + 32) = v6;
  sub_27182D194(a2 + 40, v11);
  sub_2717313F0(a2 + 64, (a2 + 112));
  *(a2 + 112) = 0;
  v11[0] = "version";
  v11[1] = 7;
  v12 = 2;
  *(a2 + 88) = "version";
  *(a2 + 96) = 7;
  *(a2 + 104) = 1;
  sub_27182DBE0(a2, &v12);
  v7 = v12;
  if (v5 >= 1)
  {
    if (v5 == 2)
    {
      v8 = v12;
      sub_2713C1AA4(a2, a3, v12);
      v7 = v8;
    }

    if (v7 >= 2)
    {
      v7 = 2;
    }
  }

  sub_2713C1948(a2, a3, v7);
  v9 = *(a2 + 48);
  *(a2 + 32) = *(v9 - 8);
  v10 = *(a2 + 72);
  *(a2 + 112) = *(v10 - 8);
  *(a2 + 48) = v9 - 8;
  *(a2 + 72) = v10 - 8;
}

void sub_2713C1948(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (a3 < 2)
  {
    v14 = 0;
    v9 = *(a1 + 104);
    *(a1 + 88) = "ns";
    *(a1 + 96) = 2;
    if ((v9 & 1) == 0)
    {
      *(a1 + 104) = 1;
    }

    v10 = sub_27182D2AC(a1);
    ++*(a1 + 112);
    v15 = 0;
    sub_2715D6290(v10, &v15);
    v13 = v15;
    v11 = *(a1 + 104);
    *(a1 + 88) = "clock_type";
    *(a1 + 96) = 10;
    if ((v11 & 1) == 0)
    {
      *(a1 + 104) = 1;
    }

    v15 = &v14;
    sub_2713C1B9C(a1, &v15);
    v12 = v14;
    *a2 = v13;
    *(a2 + 8) = v12;
  }

  else
  {
    v5 = *(a1 + 104);
    *(a1 + 88) = "ns";
    *(a1 + 96) = 2;
    if ((v5 & 1) == 0)
    {
      *(a1 + 104) = 1;
    }

    v6 = sub_27182D2AC(a1);
    ++*(a1 + 112);
    v13 = 0;
    sub_2715D6290(v6, &v13);
    *a2 = v13;
    v7 = (a2 + 8);
    v8 = *(a1 + 104);
    *(a1 + 88) = "clock_type";
    *(a1 + 96) = 10;
    if ((v8 & 1) == 0)
    {
      *(a1 + 104) = 1;
    }

    v13 = v7;
    sub_2713C1B9C(a1, &v13);
  }
}

void sub_2713C1AA4(uint64_t result, uint64_t a2, unsigned int a3)
{
  if (a3 >= 2)
  {
    v5 = 2;
    v3 = *(result + 104);
    *(result + 88) = "min_version";
    *(result + 96) = 11;
    if ((v3 & 1) == 0)
    {
      *(result + 104) = 1;
    }

    sub_27182DBE0(result, &v5);
    if (v5 >= 3)
    {
      v4 = v5;
      if ((atomic_load_explicit(&qword_280878A70, memory_order_acquire) & 1) == 0)
      {
        if (__cxa_guard_acquire(&qword_280878A70))
        {
          sub_2718519B4(qword_280878A58, "cv3d::kit::timeio::TimestampSample]", 0x22uLL);
          __cxa_guard_release(&qword_280878A70);
          sub_271847D5C(qword_280878A58, v4, 2);
        }
      }

      sub_271847D5C(qword_280878A58, v4, 2);
    }
  }
}

void sub_2713C1B9C(uint64_t a1, _BYTE **a2)
{
  if ((*(a1 + 12) & 2) != 0)
  {
    __p[0] = 0;
    __p[1] = 0;
    v6 = 0;
    v4 = sub_27182D2AC(a1);
    ++*(a1 + 112);
    v8 = 0;
    v7 = 0uLL;
    sub_2715D666C(v4, &v7);
    v6 = v8;
    *__p = v7;
    operator new();
  }

  LOBYTE(v7) = 0;
  sub_27182D980(a1, &v7);
  **a2 = v7;
}

void sub_2713C1CAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  a17 = 0;
  sub_27184D728(&a17, v22);
  if ((a14 & 0x80000000) == 0)
  {
    _Unwind_Resume(a1);
  }

  operator delete(__p);
  _Unwind_Resume(a1);
}

void sub_2713C1D40(void *a1, uint64_t a2)
{
  if (*sub_27182D2AC(a1))
  {
    v4 = sub_27182D2AC(a1);
    ++a1[14];
    v16 = 0uLL;
    v17 = 0;
    sub_271830AB4(v4, &v16);
    v5 = v16;
    v6 = v17;
    if (*(a2 + 24))
    {
      v7 = *a2;
      if (*a2)
      {
        v15 = v16;
        v8 = *(a2 + 8);
        v9 = *a2;
        if (v8 != v7)
        {
          do
          {
            v10 = *(v8 - 1);
            v8 -= 3;
            if (v10 < 0)
            {
              operator delete(*v8);
            }
          }

          while (v8 != v7);
          v9 = *a2;
        }

        *(a2 + 8) = v7;
        operator delete(v9);
        v5 = v15;
      }
    }

    *a2 = v5;
    *(a2 + 16) = v6;
    *(a2 + 24) = 1;
  }

  else
  {
    ++a1[14];
    if (*(a2 + 24) == 1)
    {
      v11 = *a2;
      if (*a2)
      {
        v12 = *(a2 + 8);
        v13 = *a2;
        if (v12 != v11)
        {
          do
          {
            v14 = *(v12 - 1);
            v12 -= 3;
            if (v14 < 0)
            {
              operator delete(*v12);
            }
          }

          while (v12 != v11);
          v13 = *a2;
        }

        *(a2 + 8) = v11;
        operator delete(v13);
      }

      *(a2 + 24) = 0;
    }
  }
}

void sub_2713C1E94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void **);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  sub_27137F4D0(va1);
  sub_27137F4D0(va);
  _Unwind_Resume(a1);
}

void sub_2713C1EB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_27137F4D0(va);
  _Unwind_Resume(a1);
}

void sub_2713C1EC4(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v5 = *(a1 + 104);
  *(a1 + 88) = "auto_timestamp";
  *(a1 + 96) = 14;
  if ((v5 & 1) == 0)
  {
    *(a1 + 104) = 1;
  }

  v8[0] = *(a1 + 32);
  v6 = sub_27182D2AC(a1);
  ++*(a1 + 112);
  *(a1 + 32) = v6;
  sub_27182D194(a1 + 40, v8);
  sub_2717313F0(a1 + 64, (a1 + 112));
  *(a1 + 112) = 0;
  v8[0] = "version";
  v8[1] = 7;
  v9 = 2;
  *(a1 + 88) = "version";
  *(a1 + 96) = 7;
  *(a1 + 104) = 1;
  sub_27182DBE0(a1, &v9);
  if (v9 >= 2)
  {
    v7 = 2;
  }

  else
  {
    v7 = v9;
  }

  sub_2713C1428(a1, (a2 + 8), v7);
}

void sub_2713C2004(uint64_t a1, _WORD *a2)
{
  v6[0] = *(a1 + 32);
  v4 = sub_27182D2AC(a1);
  ++*(a1 + 112);
  *(a1 + 32) = v4;
  sub_27182D194(a1 + 40, v6);
  sub_2717313F0(a1 + 64, (a1 + 112));
  *(a1 + 112) = 0;
  if (*(a1 + 104) == 1)
  {
    *(a1 + 104) = 0;
  }

  v6[0] = "version";
  v6[1] = 7;
  v7 = 2;
  *(a1 + 88) = "version";
  *(a1 + 96) = 7;
  *(a1 + 104) = 1;
  sub_27182DBE0(a1, &v7);
  if (v7 >= 2)
  {
    v5 = *(a1 + 104);
    *(a1 + 88) = "io_format";
    *(a1 + 96) = 9;
    if ((v5 & 1) == 0)
    {
      *(a1 + 104) = 1;
    }

    v6[0] = a2;
    sub_2713C2B54(a1, v6);
  }

  v6[0] = &unk_28810F9B8;
  sub_2713BE9C4();
}

void sub_2713C2ABC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  sub_2713BE258(va);
  sub_2713BF3B0(&a9);
  _Unwind_Resume(a1);
}

void sub_2713C2AD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  sub_2713BE258(va);
  _Unwind_Resume(a1);
}

void sub_2713C2AF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  sub_2713A32D8(va);
  sub_2713BF3B0(&a9);
  _Unwind_Resume(a1);
}

void sub_2713C2B10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_2713AE3D8(v9);
  sub_2713BF3B0(&a9);
  _Unwind_Resume(a1);
}

void sub_2713C2B2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  sub_2712B8A00(va);
  _Unwind_Resume(a1);
}

void sub_2713C2B54(void *a1, _WORD **a2)
{
  __p[0] = 0;
  __p[1] = 0;
  v5 = 0;
  v3 = sub_27182D2AC(a1);
  ++a1[14];
  v7 = 0;
  v6 = 0uLL;
  sub_2715D666C(v3, &v6);
  v5 = v7;
  *__p = v6;
  operator new();
}

void sub_2713C2C44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  a17 = 0;
  sub_27184D728(&a17, v22);
  if ((a14 & 0x80000000) == 0)
  {
    _Unwind_Resume(a1);
  }

  operator delete(__p);
  _Unwind_Resume(a1);
}

void sub_2713C2CD8(void *a1, void **a2)
{
  __p[0] = 0;
  __p[1] = 0;
  v5 = 0;
  v3 = sub_27182D2AC(a1);
  ++a1[14];
  v7 = 0;
  v6 = 0uLL;
  sub_2715D666C(v3, &v6);
  v5 = v7;
  *__p = v6;
  operator new();
}

void sub_2713C2DC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  a17 = 0;
  sub_27184D728(&a17, v22);
  if ((a14 & 0x80000000) == 0)
  {
    _Unwind_Resume(a1);
  }

  operator delete(__p);
  _Unwind_Resume(a1);
}

uint64_t sub_2713C2E5C(uint64_t a1, void *a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x2743BED80](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = MEMORY[0x277D82878] + 16;
  *(a1 + 64) = 0u;
  v4 = (a1 + 64);
  *(a1 + 80) = 0u;
  *(a1 + 96) = 24;
  sub_271129318(a1);
  *(a1 + 168) = 0;
  *(a1 + 104) = MEMORY[0x277D82848] + 24;
  *(a1 + 112) = 0;
  *(a1 + 120) = MEMORY[0x277D82848] + 64;
  std::ios_base::init((a1 + 120), a1);
  *(a1 + 256) = 0;
  *(a1 + 264) = -1;
  v5 = sub_27182D2AC(a2);
  ++a2[14];
  __n.__r_.__value_.__r.__words[0] = 0;
  sub_2715D613C(v5, &__n);
  v6 = __n.__r_.__value_.__r.__words[0];
  memset(&__n, 0, sizeof(__n));
  if (v6)
  {
    std::string::append(&__n, v6, 0);
    if ((__n.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_n = &__n;
    }

    else
    {
      p_n = __n.__r_.__value_.__r.__words[0];
    }
  }

  else
  {
    p_n = &__n;
  }

  v10[0] = p_n;
  v10[1] = v6;
  v8 = sub_27182D2AC(a2);
  ++a2[14];
  sub_27182D3F8(v8, v10);
  if (*(a1 + 87) < 0)
  {
    operator delete(*v4);
  }

  *v4 = *&__n.__r_.__value_.__l.__data_;
  *(a1 + 80) = *(&__n.__r_.__value_.__l + 2);
  *(&__n.__r_.__value_.__s + 23) = 0;
  __n.__r_.__value_.__s.__data_[0] = 0;
  sub_271129318(a1);
  if (SHIBYTE(__n.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__n.__r_.__value_.__l.__data_);
  }

  return a1;
}

void sub_2713C301C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  std::istream::~istream();
  sub_2713B5444(v17);
  _Unwind_Resume(a1);
}

void sub_2713C30AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = *MEMORY[0x277D85DE8];
  *&v25 = 0;
  BYTE8(v25) = 0;
  LOBYTE(v26) = 0;
  v28 = 0;
  sub_2713C3CFC(a2, v24, a4);
  *&v9[8] = v25;
  LOBYTE(v10[0]) = 0;
  v12 = 0;
  if (v28 == 1)
  {
    if (SHIBYTE(v27) < 0)
    {
      sub_271127178(v10, v26, *(&v26 + 1));
    }

    else
    {
      *v10 = v26;
      v11 = v27;
    }

    v12 = 1;
  }

  v13 = 0;
  v14 = 0;
  LOBYTE(v15) = 0;
  v17 = 0;
  LOBYTE(v18) = 0;
  v20 = 0;
  LOBYTE(__p) = 0;
  v23 = 0;
  sub_2713BCEE8(a3, v9);
  if (v23 == 1)
  {
    v5 = __p;
    if (__p)
    {
      v6 = v22;
      v7 = __p;
      if (v22 != __p)
      {
        do
        {
          v8 = *(v6 - 1);
          v6 -= 3;
          if (v8 < 0)
          {
            operator delete(*v6);
          }
        }

        while (v6 != v5);
        v7 = __p;
      }

      v22 = v5;
      operator delete(v7);
    }
  }

  if (v20 == 1 && v19 < 0)
  {
    operator delete(v18);
  }

  if (v17 == 1 && v16 < 0)
  {
    operator delete(v15);
  }

  if (v12 == 1 && SHIBYTE(v11) < 0)
  {
    operator delete(v10[0]);
  }

  if (v28 == 1 && SHIBYTE(v27) < 0)
  {
    operator delete(v26);
  }
}

void sub_2713C326C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18)
{
  if (a18 == 1 && a17 < 0)
  {
    operator delete(__p);
  }

  if (*(v18 - 48) == 1 && *(v18 - 49) < 0)
  {
    operator delete(*(v18 - 72));
  }

  _Unwind_Resume(exception_object);
}

void sub_2713C32B8(uint64_t a1, uint64_t a2, unsigned int a3)
{
  LODWORD(__p[0]) = 2;
  sub_27183A9AC(a1, __p);
  if (LODWORD(__p[0]) > 1)
  {
    sub_27183B36C(a1, (a2 + 8));
    LOBYTE(__p[0]) = 0;
    sub_271839D90(a1, __p);
    *(a2 + 16) = __p[0];
    while (1)
    {
      if ((*(a1 + 131) & 1) != 0 || (*(*(a1 + 16) + *(**(a1 + 16) - 24) + 32) & 2) != 0)
      {
        goto LABEL_17;
      }

      sub_27183D78C(a1, __p);
      if (SHIBYTE(v29) < 0)
      {
        if (__p[1] == 1 && *(a1 + 72) == *__p[0])
        {
          goto LABEL_13;
        }

LABEL_3:
        v6 = 1;
        if (SHIBYTE(v29) < 0)
        {
          goto LABEL_14;
        }

LABEL_4:
        if ((v6 & 1) == 0)
        {
          goto LABEL_17;
        }
      }

      else
      {
        if (SHIBYTE(v29) != 1 || *(a1 + 72) != LOBYTE(__p[0]))
        {
          goto LABEL_3;
        }

LABEL_13:
        v6 = 0;
        if ((SHIBYTE(v29) & 0x80000000) == 0)
        {
          goto LABEL_4;
        }

LABEL_14:
        operator delete(__p[0]);
        if ((v6 & 1) == 0)
        {
          goto LABEL_17;
        }
      }
    }
  }

  __p[0] = 0;
  LOBYTE(__p[1]) = 0;
  sub_27183B36C(a1, __p);
  LOBYTE(v25[0]) = 0;
  sub_271839D90(a1, v25);
  v7 = v25[0];
  *(a2 + 8) = __p[0];
  *(a2 + 16) = v7;
LABEL_17:
  LOBYTE(v25[0]) = 0;
  sub_271839D90(a1, v25);
  if (LOBYTE(v25[0]))
  {
    if ((*(a2 + 48) & 1) == 0)
    {
      *(a2 + 24) = 0;
      *(a2 + 32) = 0;
      *(a2 + 40) = 0;
      *(a2 + 48) = 1;
    }

    ++*(a1 + 80);
    if (*(a1 + 128) == 1 && *(a1 + 131) == 1)
    {
      *(a1 + 132) = 1;
    }

    else
    {
      sub_27183D78C(a1, __p);
      if (*(a2 + 47) < 0)
      {
        operator delete(*(a2 + 24));
      }

      *(a2 + 24) = *__p;
      *(a2 + 40) = v29;
      ++*(a1 + 104);
    }
  }

  else if (*(a2 + 48))
  {
    if (*(a2 + 47) < 0)
    {
      operator delete(*(a2 + 24));
    }

    *(a2 + 48) = 0;
  }

  if (a3 >= 4)
  {
    sub_2713C3A0C(a1, a2 + 56);
    if (a3 == 5)
    {
      LOBYTE(v25[0]) = 0;
      sub_271839D90(a1, v25);
      if (LOBYTE(v25[0]))
      {
        if ((*(a2 + 104) & 1) == 0)
        {
          *(a2 + 80) = 0;
          *(a2 + 88) = 0;
          *(a2 + 96) = 0;
          *(a2 + 104) = 1;
        }

        ++*(a1 + 80);
        if (*(a1 + 128) == 1 && *(a1 + 131) == 1)
        {
          *(a1 + 132) = 1;
        }

        else
        {
          sub_27183D78C(a1, __p);
          if (*(a2 + 103) < 0)
          {
            operator delete(*(a2 + 80));
          }

          *(a2 + 80) = *__p;
          *(a2 + 96) = v29;
          ++*(a1 + 104);
        }
      }

      else if (*(a2 + 104))
      {
        if (*(a2 + 103) < 0)
        {
          operator delete(*(a2 + 80));
        }

        *(a2 + 104) = 0;
      }

      return;
    }

    if (a3 < 6)
    {
      return;
    }

    LOBYTE(v25[0]) = 0;
    sub_271839D90(a1, v25);
    if (LOBYTE(v25[0]))
    {
      if ((*(a2 + 104) & 1) == 0)
      {
        *(a2 + 80) = 0;
        *(a2 + 88) = 0;
        *(a2 + 96) = 0;
        *(a2 + 104) = 1;
      }

      ++*(a1 + 80);
      if (*(a1 + 128) != 1 || (v8 = *(a1 + 131), v8 != 1))
      {
        sub_27183D78C(a1, __p);
        if (*(a2 + 103) < 0)
        {
          operator delete(*(a2 + 80));
        }

        *(a2 + 80) = *__p;
        *(a2 + 96) = v29;
LABEL_63:
        ++*(a1 + 104);
LABEL_64:
        LOBYTE(v25[0]) = 0;
        sub_271839D90(a1, v25);
        if (LOBYTE(v25[0]))
        {
          if ((*(a2 + 136) & 1) == 0)
          {
            *(a2 + 112) = 0;
            *(a2 + 120) = 0;
            *(a2 + 128) = 0;
            *(a2 + 136) = 1;
          }

          ++*(a1 + 80);
          if (*(a1 + 128) != 1 || (v9 = *(a1 + 131), v9 != 1))
          {
            sub_27183D78C(a1, __p);
            if (*(a2 + 135) < 0)
            {
              operator delete(*(a2 + 112));
            }

            *(a2 + 112) = *__p;
            *(a2 + 128) = v29;
            goto LABEL_84;
          }
        }

        else
        {
          if (*(a2 + 136))
          {
            if (*(a2 + 135) < 0)
            {
              operator delete(*(a2 + 112));
            }

            *(a2 + 136) = 0;
          }

          ++*(a1 + 80);
          if (*(a1 + 128) != 1 || (v9 = *(a1 + 131), v9 != 1))
          {
            sub_27183D78C(a1, __p);
            if (SHIBYTE(v29) < 0)
            {
              operator delete(__p[0]);
            }

LABEL_84:
            ++*(a1 + 104);
            LOBYTE(v23[0]) = 0;
            sub_271839D90(a1, v23);
            if (LOBYTE(v23[0]))
            {
LABEL_85:
              __p[0] = 0;
              __p[1] = 0;
              v29 = 0;
              v30 = 1;
              ++*(a1 + 80);
              if (*(a1 + 128) == 1 && *(a1 + 131) == 1)
              {
                *(a1 + 132) = 1;
              }

              else
              {
                sub_27183D78C(a1, v25);
                v10 = *(a1 + 104);
                *__p = *v25;
                v29 = v26;
                *(a1 + 104) = v10 + 1;
              }

              sub_2713BB9DC(__p, v23);
              *v25 = *v23;
              v26 = v24;
              v23[1] = 0;
              v24 = 0;
              v23[0] = 0;
              v27 = 1;
              sub_2713BCDA4(a2 + 144, v25);
              if (v27 == 1)
              {
                v11 = v25[0];
                if (v25[0])
                {
                  v12 = v25[1];
                  v13 = v25[0];
                  if (v25[1] != v25[0])
                  {
                    do
                    {
                      v14 = *(v12 - 1);
                      v12 -= 3;
                      if (v14 < 0)
                      {
                        operator delete(*v12);
                      }
                    }

                    while (v12 != v11);
                    v13 = v25[0];
                  }

                  v25[1] = v11;
                  operator delete(v13);
                }
              }

              v19 = v23[0];
              if (v23[0])
              {
                v20 = v23[1];
                v21 = v23[0];
                if (v23[1] != v23[0])
                {
                  do
                  {
                    v22 = *(v20 - 1);
                    v20 -= 3;
                    if (v22 < 0)
                    {
                      operator delete(*v20);
                    }
                  }

                  while (v20 != v19);
                  v21 = v23[0];
                }

                v23[1] = v19;
                operator delete(v21);
              }

              if ((v30 & 1) != 0 && SHIBYTE(v29) < 0)
              {
                operator delete(__p[0]);
              }

              return;
            }

            goto LABEL_79;
          }
        }

        *(a1 + 132) = v9;
        LOBYTE(v23[0]) = 0;
        sub_271839D90(a1, v23);
        if (LOBYTE(v23[0]))
        {
          goto LABEL_85;
        }

LABEL_79:
        ++*(a1 + 80);
        if (*(a1 + 128) == 1 && *(a1 + 131) == 1)
        {
          *(a1 + 132) = 1;
        }

        else
        {
          sub_27183D78C(a1, v25);
          if (SHIBYTE(v26) < 0)
          {
            operator delete(v25[0]);
          }

          ++*(a1 + 104);
        }

        if (*(a2 + 168) == 1)
        {
          v15 = *(a2 + 144);
          if (v15)
          {
            v16 = *(a2 + 152);
            v17 = *(a2 + 144);
            if (v16 != v15)
            {
              do
              {
                v18 = *(v16 - 1);
                v16 -= 3;
                if (v18 < 0)
                {
                  operator delete(*v16);
                }
              }

              while (v16 != v15);
              v17 = *(a2 + 144);
            }

            *(a2 + 152) = v15;
            operator delete(v17);
          }

          *(a2 + 168) = 0;
        }

        return;
      }
    }

    else
    {
      if (*(a2 + 104))
      {
        if (*(a2 + 103) < 0)
        {
          operator delete(*(a2 + 80));
        }

        *(a2 + 104) = 0;
      }

      ++*(a1 + 80);
      if (*(a1 + 128) != 1 || (v8 = *(a1 + 131), v8 != 1))
      {
        sub_27183D78C(a1, __p);
        if (SHIBYTE(v29) < 0)
        {
          operator delete(__p[0]);
        }

        goto LABEL_63;
      }
    }

    *(a1 + 132) = v8;
    goto LABEL_64;
  }
}