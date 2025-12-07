void sub_270769B08()
{
  v1 = v0;
  swift_beginAccess();
  v2 = *(v0 + 16);
  v3 = sub_27076AE90();
  if (v2 != (v3 & 1))
  {
    v4 = v3;

    v5 = sub_2707A8420();
    v6 = sub_2707A8840();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 134218496;
      *(v7 + 4) = *(v1 + OBJC_IVAR____TtC12UniversalHID14KeyboardFilter_serviceID);

      *(v7 + 12) = 1024;
      *(v7 + 14) = v2;
      *(v7 + 18) = 1024;
      *(v7 + 20) = v4 & 1;
      _os_log_impl(&dword_270703000, v5, v6, "%llx: Caps Lock: %{BOOL}d -> %{BOOL}d", v7, 0x18u);
      MEMORY[0x2743A9010](v7, -1, -1);
    }

    else
    {
    }

    *(v1 + 16) = v4 & 1;
  }
}

uint64_t sub_270769C3C(unsigned int a1)
{
  if ((a1 & 0xFF00FFFF) != 7 || a1 - 15204352 < 0xFF190000)
  {
    return 0;
  }

  v2 = HIWORD(a1);
  v3 = sub_270726798(BYTE2(a1), byte_288076A00);
  result = 1;
  if (v2 != 57 && !v3)
  {
    return 0;
  }

  return result;
}

double sub_270769CA0@<D0>(__int128 *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12UniversalHID14KeyboardFilter__keyStates;
  swift_beginAccess();
  v4 = *(v1 + v3);
  v5 = swift_allocObject();
  *(v5 + 16) = sub_27076B574;
  *(v5 + 24) = v1;
  v7[0] = v4;
  v7[1] = sub_27076B60C;
  v7[2] = v5;
  v7[3] = sub_27076B614;
  v7[4] = 0;
  v7[5] = sub_27076B62C;
  v7[6] = 0;

  return sub_2707A41F8(v7, a1);
}

double sub_270769D74@<D0>(_OWORD *a1@<X8>)
{
  v2 = OBJC_IVAR____TtC12UniversalHID14KeyboardFilter__keyStates;
  swift_beginAccess();
  v3 = *(v1 + v2);
  v4 = swift_allocObject();
  *(v4 + 16) = sub_27076B668;
  *(v4 + 24) = v1;
  v5 = qword_280829458;
  v26 = v1;
  swift_retain_n();

  if (v5 != -1)
  {
LABEL_20:
    swift_once();
  }

  v27 = xmmword_280829AA0;
  sub_270706C38(xmmword_280829AA0, *(&xmmword_280829AA0 + 1));
  v6 = HIDReportDescriptor.reportBitCount(for:)(2u);
  sub_270708D74(v27, *(&v27 + 1));
  *&v28 = HIDReport.init(bitCount:id:)(v6, 2);
  *(&v28 + 1) = v7;
  v8 = -1 << *(v3 + 32);
  if (-v8 < 64)
  {
    v9 = ~(-1 << -v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(v3 + 64);
  v11 = (63 - v8) >> 6;

  v12 = 0;
  while (1)
  {
    v13 = v10;
    v14 = v12;
    if (!v10)
    {
      break;
    }

LABEL_11:
    v16 = (v13 - 1) & v13;
    v17 = __clz(__rbit64(v13)) | (v14 << 6);
    v18 = (*(v3 + 48) + 4 * v17);
    v19 = *v18;
    v20 = v18[1];
    v21 = *(*(v3 + 56) + v17);

    sub_27073F570(v22);
    v12 = v14;
    v10 = v16;
    if (v21 == 2)
    {
      v23 = *(v26 + OBJC_IVAR____TtC12UniversalHID14KeyboardFilter_copyMask);
      if (v23 & 8) != 0 || (v12 = v14, v10 = v16, (v23 & 0x20840) != 0) && (v12 = v14, v10 = v16, (sub_270769C3C(v19 | (v20 << 16))))
      {
        v12 = v14;
        v10 = v16;
        if (v19 == 12)
        {
          v12 = v14;
          v10 = v16;
          if ((v20 - 1301) >= 0xFAECu)
          {
            ConsumerReport.update(with:)(v20);
            v12 = v14;
            v10 = v16;
          }
        }
      }
    }
  }

  v15 = v12;
  while (1)
  {
    v14 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      __break(1u);
      goto LABEL_20;
    }

    if (v14 >= v11)
    {
      break;
    }

    v13 = *(v3 + 64 + 8 * v14);
    ++v15;
    if (v13)
    {
      goto LABEL_11;
    }
  }

  sub_27073F570(v3);
  sub_27073F570(v3);

  result = *&v28;
  *a1 = v28;
  return result;
}

double sub_27076A030@<D0>(_OWORD *a1@<X8>)
{
  v2 = OBJC_IVAR____TtC12UniversalHID14KeyboardFilter__keyStates;
  swift_beginAccess();
  v3 = *(v1 + v2);
  v4 = swift_allocObject();
  *(v4 + 16) = sub_27076B670;
  *(v4 + 24) = v1;
  v5 = qword_280829430;
  v27 = v1;
  swift_retain_n();

  if (v5 != -1)
  {
LABEL_24:
    swift_once();
  }

  v28 = xmmword_280829778;
  sub_270706C38(xmmword_280829778, *(&xmmword_280829778 + 1));
  v6 = HIDReportDescriptor.reportBitCount(for:)(4u);
  sub_270708D74(v28, *(&v28 + 1));
  *&v29 = HIDReport.init(bitCount:id:)(v6, 4);
  *(&v29 + 1) = v7;
  v8 = -1 << *(v3 + 32);
  if (-v8 < 64)
  {
    v9 = ~(-1 << -v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(v3 + 64);
  v11 = (63 - v8) >> 6;

  v12 = 0;
  while (1)
  {
    v13 = v10;
    v14 = v12;
    if (!v10)
    {
      break;
    }

LABEL_11:
    v16 = (v13 - 1) & v13;
    v17 = __clz(__rbit64(v13)) | (v14 << 6);
    v18 = (*(v3 + 48) + 4 * v17);
    v19 = *v18;
    v20 = v18[1];
    v21 = *(*(v3 + 56) + v17);

    sub_27073F570(v22);
    v12 = v14;
    v10 = v16;
    if (v21 == 2)
    {
      v23 = *(v27 + OBJC_IVAR____TtC12UniversalHID14KeyboardFilter_copyMask);
      if (v23 & 8) != 0 || (v12 = v14, v10 = v16, (v23 & 0x20840) != 0) && (v12 = v14, v10 = v16, (sub_270769C3C(v19 | (v20 << 16))))
      {
        v12 = v14;
        v10 = v16;
        if (v19 == 255)
        {
          v12 = v14;
          v10 = v16;
          if (v20 <= 0xFF)
          {
            v24 = (v20 - 3) > 0xBD || (v20 - 3) >= 3u;
            v12 = v14;
            v10 = v16;
            if (!v24)
            {
              AppleVendorTopCaseReport.update(with:)(v20);
              v12 = v14;
              v10 = v16;
            }
          }
        }
      }
    }
  }

  v15 = v12;
  while (1)
  {
    v14 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      __break(1u);
      goto LABEL_24;
    }

    if (v14 >= v11)
    {
      break;
    }

    v13 = *(v3 + 64 + 8 * v14);
    ++v15;
    if (v13)
    {
      goto LABEL_11;
    }
  }

  sub_27073F570(v3);
  sub_27073F570(v3);

  result = *&v29;
  *a1 = v29;
  return result;
}

double sub_27076A300@<D0>(_OWORD *a1@<X8>)
{
  v2 = OBJC_IVAR____TtC12UniversalHID14KeyboardFilter__keyStates;
  swift_beginAccess();
  v3 = *(v1 + v2);
  v4 = swift_allocObject();
  *(v4 + 16) = sub_27076B678;
  *(v4 + 24) = v1;
  v5 = qword_280829448;
  v27 = v1;
  swift_retain_n();

  if (v5 != -1)
  {
LABEL_25:
    swift_once();
  }

  v28 = xmmword_280829828;
  sub_270706C38(xmmword_280829828, *(&xmmword_280829828 + 1));
  v6 = HIDReportDescriptor.reportBitCount(for:)(3u);
  sub_270708D74(v28, *(&v28 + 1));
  *&v29 = HIDReport.init(bitCount:id:)(v6, 3);
  *(&v29 + 1) = v7;
  v8 = -1 << *(v3 + 32);
  if (-v8 < 64)
  {
    v9 = ~(-1 << -v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(v3 + 64);
  v11 = (63 - v8) >> 6;

  v12 = 0;
  while (1)
  {
    v13 = v10;
    v14 = v12;
    if (!v10)
    {
      break;
    }

LABEL_11:
    v16 = (v13 - 1) & v13;
    v17 = __clz(__rbit64(v13)) | (v14 << 6);
    v18 = (*(v3 + 48) + 4 * v17);
    v19 = *v18;
    v20 = v18[1];
    v21 = *(*(v3 + 56) + v17);

    sub_27073F570(v22);
    v12 = v14;
    v10 = v16;
    if (v21 == 2)
    {
      v23 = *(v27 + OBJC_IVAR____TtC12UniversalHID14KeyboardFilter_copyMask);
      if (v23 & 8) != 0 || (v12 = v14, v10 = v16, (v23 & 0x20840) != 0) && (v12 = v14, v10 = v16, (sub_270769C3C(v19 | (v20 << 16))))
      {
        v12 = v14;
        v10 = v16;
        if (v19 == 65281)
        {
          v12 = v14;
          v10 = v16;
          if (v20 <= 0xFF)
          {
            v12 = v14;
            v10 = v16;
            if (((v20 - 49) >> 4) >= 0xFFDu)
            {
              v24 = v20 > 0x21 || ((1 << v20) & 0x30003001ELL) == 0;
              v12 = v14;
              v10 = v16;
              if (!v24)
              {
                AppleVendorKeyboardReport.update(with:)(v20);
                v12 = v14;
                v10 = v16;
              }
            }
          }
        }
      }
    }
  }

  v15 = v12;
  while (1)
  {
    v14 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      __break(1u);
      goto LABEL_25;
    }

    if (v14 >= v11)
    {
      break;
    }

    v13 = *(v3 + 64 + 8 * v14);
    ++v15;
    if (v13)
    {
      goto LABEL_11;
    }
  }

  sub_27073F570(v3);
  sub_27073F570(v3);

  result = *&v29;
  *a1 = v29;
  return result;
}

uint64_t sub_27076A5FC(unsigned int a1, char a2, uint64_t a3)
{
  if (a2 == 2)
  {
    v4 = *(a3 + OBJC_IVAR____TtC12UniversalHID14KeyboardFilter_copyMask);
    if (v4 & 8) != 0 || (v4 & 0x20840) != 0 && (sub_270769C3C(a1))
    {
      v5 = sub_270768580(a1, HIWORD(a1));
      v6 = (v5 >> 8) & 1;
    }

    else
    {
      LOBYTE(v5) = 0;
      v6 = 1;
    }
  }

  else
  {
    LOBYTE(v5) = 0;
    v6 = 1;
  }

  return v5 | (v6 << 8);
}

uint64_t sub_27076A694(unsigned int a1, char a2, uint64_t a3)
{
  if (a2 != 2)
  {
    v6 = 0;
    v7 = 1;
    return v6 | (v7 << 8);
  }

  v4 = *(a3 + OBJC_IVAR____TtC12UniversalHID14KeyboardFilter_copyMask);
  if ((v4 & 8) == 0)
  {
    if ((v4 & 0x20840) != 0)
    {
      v5 = sub_270769C3C(a1);
      v6 = 0;
      v7 = 1;
      if ((v5 & 1) == 0 || (a1 & 0xFF00FFFF) != 0xFF)
      {
        return v6 | (v7 << 8);
      }

      goto LABEL_9;
    }

LABEL_17:
    v6 = 0;
    v7 = 1;
    return v6 | (v7 << 8);
  }

  if ((a1 & 0xFF00FFFF) != 0xFF)
  {
    goto LABEL_17;
  }

LABEL_9:
  v8 = a1 - 12648448;
  v9 = BYTE2(a1);
  v10 = BYTE2(a1) - 6;
  v12 = __CFADD__(v10, 3);
  v11 = v10 < 0xFFFFFFFD;
  if (!v12)
  {
    v9 = 0;
  }

  v12 = v8 >= 0xFF420000;
  if (v8 >= 0xFF420000)
  {
    v6 = v9;
  }

  else
  {
    v6 = 0;
  }

  v7 = !v12 || v11;
  return v6 | (v7 << 8);
}

uint64_t sub_27076A76C(unsigned int a1, char a2, uint64_t a3)
{
  if (a2 == 2)
  {
    v4 = *(a3 + OBJC_IVAR____TtC12UniversalHID14KeyboardFilter_copyMask);
    if (v4 & 8) != 0 || (v4 & 0x20840) != 0 && (sub_270769C3C(a1))
    {
      v5 = HIWORD(a1);
      if (HIWORD(a1) > 0x514u)
      {
        v5 = 0;
      }

      if (a1 >= 0x10000 && a1 == 12)
      {
        v7 = HIWORD(a1) > 0x514u;
      }

      else
      {
        v5 = 0;
        v7 = 1;
      }
    }

    else
    {
      v5 = 0;
      v7 = 1;
    }
  }

  else
  {
    v5 = 0;
    v7 = 1;
  }

  return v5 | (v7 << 16);
}

uint64_t sub_27076A818(unsigned int a1, char a2, uint64_t a3)
{
  if (a2 != 2)
  {
    LOBYTE(v6) = 0;
    v7 = 1;
    return v6 | (v7 << 8);
  }

  v4 = *(a3 + OBJC_IVAR____TtC12UniversalHID14KeyboardFilter_copyMask);
  if ((v4 & 8) != 0)
  {
    if (a1 >= 0x10000 && (a1 & 0xFF00FFFF) == 7)
    {
      goto LABEL_16;
    }

LABEL_15:
    LOBYTE(v6) = 0;
    v7 = 1;
    return v6 | (v7 << 8);
  }

  if ((v4 & 0x20840) == 0)
  {
    goto LABEL_15;
  }

  v5 = sub_270769C3C(a1);
  LOBYTE(v6) = 0;
  v7 = 1;
  if ((v5 & 1) != 0 && a1 >= 0x10000 && (a1 & 0xFF00FFFF) == 7)
  {
LABEL_16:
    v6 = HIWORD(a1);
    v7 = a1 >> 19 > 0x1C;
    if (a1 >> 19 > 0x1C)
    {
      LOBYTE(v6) = 0;
    }
  }

  return v6 | (v7 << 8);
}

uint64_t KeyboardFilter.updateCopyMask(oldValue:newValue:)(int a1, uint64_t a2)
{
  v3 = v2;
  *(v2 + OBJC_IVAR____TtC12UniversalHID14KeyboardFilter_copyMask) = a2;
  if ((a1 & 8) != 0)
  {
    v4 = MEMORY[0x277D84F90];
    if ((a1 & 0x20000) != 0 || (a2 & 0x20000) == 0)
    {
      return v4;
    }

    goto LABEL_8;
  }

  if ((a1 & 0x20000) != 0)
  {
    if ((a2 & 8) == 0)
    {
      return MEMORY[0x277D84F90];
    }
  }

  else if ((a2 & 8) == 0)
  {
    if ((a2 & 0x20000) == 0)
    {
      return MEMORY[0x277D84F90];
    }

LABEL_8:
    v5 = 0;
    goto LABEL_11;
  }

  v5 = 1;
LABEL_11:
  v6 = OBJC_IVAR____TtC12UniversalHID14KeyboardFilter__keyStates;
  OUTLINED_FUNCTION_8_15(v3 + OBJC_IVAR____TtC12UniversalHID14KeyboardFilter__keyStates, v30);
  if (!*(*(v3 + v6) + 16))
  {
    return MEMORY[0x277D84F90];
  }

  v24 = v5;
  if (qword_280829440 != -1)
  {
LABEL_41:
    swift_once();
  }

  v25 = xmmword_2808297D8;
  sub_270706C38(xmmword_2808297D8, *(&xmmword_2808297D8 + 1));
  v7 = HIDReportDescriptor.reportBitCount(for:)(1u);
  sub_270708D74(v25, *(&v25 + 1));
  v8 = 0;
  v28 = HIDReport.init(bitCount:id:)(v7, 1);
  v29 = v9;
  do
  {
    v10 = byte_288076A00[v8 + 32];
    sub_270769160(v10);
    OUTLINED_FUNCTION_6_18();
    if (v11)
    {
      v12 = v10 + 8;
      v13 = 0;
      v14 = v28;
      switch(v29 >> 62)
      {
        case 1uLL:
          v13 = v28;
          break;
        case 2uLL:
          v13 = *(v28 + 16);
          break;
        default:
          break;
      }

      if (__OFADD__(v13, v12 >> 3))
      {
        __break(1u);
LABEL_40:
        __break(1u);
        goto LABEL_41;
      }

      v15 = v12 >> 3;
      sub_2707A82E0();
      switch(v29 >> 62)
      {
        case 1uLL:
          goto LABEL_22;
        case 2uLL:
          v14 = *(v28 + 16);
LABEL_22:
          if (!__OFADD__(v14, v15))
          {
            goto LABEL_23;
          }

          goto LABEL_40;
        default:
LABEL_23:
          sub_2707A82E0();
          sub_2707A82F0();
          break;
      }
    }

    ++v8;
  }

  while (v8 != 8);
  if (v24)
  {
    sub_270769160(0x39u);
    OUTLINED_FUNCTION_6_18();
    if (v11)
    {
      KeyboardReport.update(with:)(0x39u);
    }

    if (qword_280829430 != -1)
    {
      swift_once();
    }

    v26 = xmmword_280829778;
    sub_270706C38(xmmword_280829778, *(&xmmword_280829778 + 1));
    v16 = HIDReportDescriptor.reportBitCount(for:)(4u);
    sub_270708D74(v26, *(&v26 + 1));
    v17 = HIDReport.init(bitCount:id:)(v16, 4);
    v19 = v18;
    v27 = v18;
    sub_270769264(3u);
    OUTLINED_FUNCTION_6_18();
    if (v11)
    {
      AppleVendorTopCaseReport.update(with:)(3);
      v19 = v27;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808295D8, &qword_2707AA4C0);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_2707ADD30;
    *(v4 + 32) = v28;
    *(v4 + 40) = v29;
    *(v4 + 48) = v17;
    *(v4 + 56) = v19;
    sub_270706C38(v28, v29);
    sub_270706C38(v17, v19);
    sub_270708D74(v17, v19);
    v20 = v28;
    v21 = v29;
  }

  else
  {
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808295D8, &qword_2707AA4C0);
    v4 = OUTLINED_FUNCTION_9_13(v22);
    *(v4 + 16) = xmmword_2707A9CF0;
    *(v4 + 32) = v28;
    *(v4 + 40) = v29;
    sub_270706C38(v28, v29);
    v20 = v28;
    v21 = v29;
  }

  sub_270708D74(v20, v21);
  return v4;
}

uint64_t KeyboardFilter.updateFilterMask(oldValue:newValue:)(char a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC12UniversalHID14KeyboardFilter_filterMask) = a2;
  v3 = MEMORY[0x277D84F90];
  if ((a1 & 8) != 0)
  {
    return v3;
  }

  if ((a2 & 8) == 0)
  {
    return v3;
  }

  v4 = v2;
  v5 = OBJC_IVAR____TtC12UniversalHID14KeyboardFilter__keyStates;
  OUTLINED_FUNCTION_8_15(v4 + OBJC_IVAR____TtC12UniversalHID14KeyboardFilter__keyStates, v22);
  if (!*(*(v4 + v5) + 16))
  {
    return v3;
  }

  v20 = v3;
  *(v4 + 32) = mach_absolute_time();
  v6 = *(v4 + v5);
  v21 = v3;
  v7 = 1 << *(v6 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v6 + 64);
  v10 = (v7 + 63) >> 6;
  result = swift_bridgeObjectRetain_n();
  v12 = 0;
  while (v9)
  {
LABEL_12:
    v14 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v15 = v14 | (v12 << 6);
    if (*(*(v6 + 56) + v15) == 2)
    {
      v16 = (*(v6 + 48) + 4 * v15);
      v17 = v16[1];
      v18 = *v16;
      result = sub_270769C3C(v18 | (v17 << 16));
      if ((result & 1) == 0)
      {
        sub_2707692E8(0, v18 | (v17 << 16));
        IOHIDEventCreateKeyboardEvent();
        v19 = IOHIDEventSetSenderID();
        MEMORY[0x2743A7C80](v19);
        if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_2707A8720();
        }

        result = sub_2707A8740();
        v20 = v21;
      }
    }
  }

  while (1)
  {
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v13 >= v10)
    {

      return v20;
    }

    v9 = *(v6 + 64 + 8 * v13);
    ++v12;
    if (v9)
    {
      v12 = v13;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_27076AE90()
{
  v1 = *(v0 + OBJC_IVAR____TtC12UniversalHID14KeyboardFilter_service + 8);
  ObjectType = swift_getObjectType();
  (*(v1 + 48))(v5, 0xD000000000000010, 0x80000002707B4BB0, ObjectType, v1);
  if (v5[3])
  {
    result = swift_dynamicCast();
    if (result)
    {
      return v4;
    }
  }

  else
  {
    sub_27076B680(v5);
    return 0;
  }

  return result;
}

uint64_t KeyboardFilter.deinit()
{
  v1 = OBJC_IVAR____TtC12UniversalHID14KeyboardFilter_logger;
  v2 = sub_2707A8440();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_unknownObjectRelease();

  return v0;
}

uint64_t KeyboardFilter.__deallocating_deinit()
{
  KeyboardFilter.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

void sub_27076B0B4(uint64_t result)
{
  v2 = *(*v1 + 24);
  if (result + 1 > (v2 >> 1))
  {
    sub_270713F5C(v2 > 1, result + 1, 1, *v1);
    *v1 = v3;
  }
}

uint64_t sub_27076B0F8(uint64_t result)
{
  if (result + 1 > *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    return sub_2707A8720();
  }

  return result;
}

uint64_t sub_27076B130(uint64_t result)
{
  if ((result & 0x100) == 0)
  {
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_27076B144(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || -(-1 << *(a4 + 32)) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 64 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    return sub_2707A8AB0();
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t type metadata accessor for KeyboardFilter(uint64_t a1)
{
  result = qword_280829E30;
  if (!qword_280829E30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_27076B258(uint64_t a1)
{
  result = sub_2707A8440();
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

_BYTE *storeEnumTagSinglePayload for KeyboardFilter.KeyState(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x27076B424);
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

unint64_t sub_27076B460()
{
  result = qword_280829E40;
  if (!qword_280829E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280829E40);
  }

  return result;
}

uint64_t sub_27076B4B4@<X0>(unsigned int a1@<W0>, char a2@<W1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  result = sub_27076A5FC(a1, a2, a3);
  *a4 = result;
  a4[1] = BYTE1(result) & 1;
  return result;
}

uint64_t sub_27076B4E4@<X0>(unsigned int a1@<W0>, char a2@<W1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  result = sub_27076A694(a1, a2, a3);
  *a4 = result;
  a4[1] = BYTE1(result) & 1;
  return result;
}

uint64_t sub_27076B514@<X0>(unsigned int a1@<W0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  result = sub_27076A76C(a1, a2, a3);
  *a4 = result;
  *(a4 + 2) = BYTE2(result) & 1;
  return result;
}

uint64_t sub_27076B544@<X0>(unsigned int a1@<W0>, char a2@<W1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  result = sub_27076A818(a1, a2, a3);
  *a4 = result;
  a4[1] = BYTE1(result) & 1;
  return result;
}

void *sub_27076B57C@<X0>(unsigned int *a1@<X0>, void *(*a2)(uint64_t *__return_ptr, void, void)@<X1>, _BYTE *a3@<X8>)
{
  result = a2(&v6, *a1, *(a1 + 4));
  v5 = BYTE1(v6);
  *a3 = v6;
  a3[1] = v5;
  return result;
}

uint64_t sub_27076B5D4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_27076B62C@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_27076B130(*a1 | (a1[1] << 8));
  *a2 = result;
  return result;
}

uint64_t sub_27076B680(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280829D68, &qword_2707B1530);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t OUTLINED_FUNCTION_0_35(void *a1)
{
  v1 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v1);
  return v1;
}

uint64_t OUTLINED_FUNCTION_1_27()
{
  v1 = v0[3];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  return v1;
}

uint64_t OUTLINED_FUNCTION_2_21@<X0>(unsigned __int8 a1@<W1>, int a2@<W8>)
{
  v2 = a1;
  if (a2)
  {
    v2 = 0;
  }

  return v2 | (a2 << 8);
}

uint64_t OUTLINED_FUNCTION_5_18@<X0>(unsigned __int16 a1@<W1>, int a2@<W8>)
{
  v2 = a1;
  if (a2)
  {
    v2 = 0;
  }

  return v2 | (a2 << 16);
}

uint64_t OUTLINED_FUNCTION_8_15(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_9_13(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t sub_27076B804(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (__OFADD__(a3, 16))
  {
    __break(1u);
  }

  else if (a3 + 16 >= a3)
  {
    v3[3] = MEMORY[0x277D83EF0];
    v3[4] = MEMORY[0x277CC9EB0];
    v3[0] = result;
    v3[1] = result + 16;
    __swift_project_boxed_opaque_existential_1(v3, MEMORY[0x277D83EF0]);
    sub_2707A82C0();
    return __swift_destroy_boxed_opaque_existential_1(v3);
  }

  __break(1u);
  return result;
}

uint64_t HIDReport.subscript.getter@<X0>(uint64_t a1@<X0>, unint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280829DD0, &qword_2707AFB10);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v27 - v8;
  v10 = sub_2707A8410();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2707A8400();
  if ((a1 & 7) != 0)
  {
LABEL_10:
    OUTLINED_FUNCTION_0_36("Fatal error", v15, v16, v17, v18, "UniversalHID/HIDReportUUID.swift", v19, v20, 20, 0);
    __break(1u);
    JUMPOUT(0x27076BAD0);
  }

  v21 = 0;
  switch(a2 >> 62)
  {
    case 1uLL:
    case 2uLL:
      OUTLINED_FUNCTION_5();
      if (v26)
      {
        goto LABEL_3;
      }

      __break(1u);
      goto LABEL_8;
    default:
LABEL_3:
      if (__OFADD__(a1, 8 * v21))
      {
LABEL_8:
        __break(1u);
        goto LABEL_9;
      }

      v22 = sub_2707A82D0();
      v24 = v23;
      sub_270706C38(v22, v23);
      sub_270750160(v22, v24, v9);
      if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
      {
LABEL_9:
        __break(1u);
        goto LABEL_10;
      }

      (*(v11 + 8))(v14, v10);
      sub_270708D74(v22, v24);
      return (*(v11 + 32))(a3, v9, v10);
  }
}

uint64_t HIDReport.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v36 = *MEMORY[0x277D85DE8];
  if ((a2 & 7) != 0)
  {
    OUTLINED_FUNCTION_0_36("Fatal error", a2, a3, a4, a5, "UniversalHID/HIDReportUUID.swift", a7, a8, 34, 0);
    __break(1u);
    JUMPOUT(0x27076BC98);
  }

  v9 = v8;
  v10 = *(v8 + 8) >> 62;
  v12 = 0;
  switch(v10)
  {
    case 1:
    case 2:
      OUTLINED_FUNCTION_5();
      if (v26)
      {
        goto LABEL_3;
      }

      __break(1u);
      goto LABEL_7;
    default:
LABEL_3:
      v13 = __OFADD__(a2, 8 * v12);
      v14 = a2 + 8 * v12;
      if (v13)
      {
LABEL_7:
        __break(1u);
      }

      v15 = v14 >> 3;
      v27 = sub_2707A83F0();
      v28 = v16;
      v29 = v17;
      v30 = v18;
      v31 = v19;
      v32 = v20;
      v33 = v21;
      v34 = v22;
      v35 = v23;
      sub_27076B804(&v27, v9, v15);
      v24 = sub_2707A8410();
      return (*(*(v24 - 8) + 8))(a1, v24);
  }
}

void (*HIDReport.subscript.modify(void *a1, uint64_t a2))(uint64_t **a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v5 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v5;
  *v5 = a2;
  v5[1] = v2;
  v6 = sub_2707A8410();
  v5[2] = v6;
  v7 = *(v6 - 8);
  v5[3] = v7;
  v8 = *(v7 + 64);
  v5[4] = __swift_coroFrameAllocStub(v8);
  v9 = __swift_coroFrameAllocStub(v8);
  v5[5] = v9;
  HIDReport.subscript.getter(a2, *(v2 + 8), v9);
  return sub_27076BD90;
}

void sub_27076BD90(uint64_t **a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a1;
  v9 = (*a1)[4];
  v10 = (*a1)[5];
  if (a2)
  {
    v11 = v8[2];
    v12 = v8[3];
    v13 = *v8;
    (*(v12 + 16))((*a1)[4], v10, v11);
    HIDReport.subscript.setter(v9, v13, v14, v15, v16, v17, v18, v19);
    (*(v12 + 8))(v10, v11);
  }

  else
  {
    HIDReport.subscript.setter((*a1)[5], *v8, a3, a4, a5, a6, a7, a8);
  }

  free(v10);
  free(v9);

  free(v8);
}

uint64_t OUTLINED_FUNCTION_0_36(uint64_t a1, void x1_0, void x2_0, void x3_0, void x4_0, uint64_t a2, void a7, void a8, uint64_t a4, int a5)
{

  return sub_2707A8C70();
}

__CFString *HIDVirtualEventService.logDescription.getter()
{
  result = CFCopyDescription(v0);
  if (result)
  {
    v2 = result;
    v3 = sub_2707A85D0();

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_27076BEDC()
{
  v1 = [v0 delegate];

  return v1;
}

uint64_t sub_27076BF18(uint64_t a1)
{
  [v1 setDelegate_];

  return swift_unknownObjectRelease();
}

uint64_t (*sub_27076BF60(void *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = [v1 delegate];
  return sub_27076BFBC;
}

uint64_t sub_27076BFBC(uint64_t *a1)
{
  [a1[1] setDelegate_];

  return swift_unknownObjectRelease();
}

uint64_t sub_27076C01C(uint64_t a1, uint64_t a2)
{
  v5[4] = a1;
  v5[5] = a2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 1107296256;
  v5[2] = sub_2707325D0;
  v5[3] = &block_descriptor_2;
  v3 = _Block_copy(v5);

  [v2 setCancelHandler_];
  _Block_release(v3);
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void HIDVirtualService.setClientCapsLockEnaged(_:client:)(char a1, id a2)
{
  v4 = [a2 serviceID];
  swift_beginAccess();
  if (v4 == *(v2 + 48))
  {
    v5 = sub_2707A8760();
    v6 = sub_2707A85C0();
    [a2 setProperty:v5 forKey:v6];
  }

  else
  {
    sub_27076C3E8();
    sub_2707A8B00();

    [a2 serviceID];
    v7 = sub_2707A8E70();
    MEMORY[0x2743A7BE0](v7);

    MEMORY[0x2743A7BE0](0x27203D212027, 0xE600000000000000);
    v8 = sub_2707A8E70();
    MEMORY[0x2743A7BE0](v8);

    MEMORY[0x2743A7BE0](39, 0xE100000000000000);
    sub_27077F02C(4294960588, 0xD000000000000018, 0x80000002707B4C30, "/Library/Caches/com.apple.xbs/Sources/UniversalHID/UniversalHID/HIDVirtualService/HIDCapsLock.swift", 99, 2, 38);
    swift_willThrow();
  }
}

unint64_t sub_27076C3E8()
{
  result = qword_280829E48;
  if (!qword_280829E48)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280829E48);
  }

  return result;
}

BOOL HIDReport.subscript.getter(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = 0;
  switch(a3 >> 62)
  {
    case 1uLL:
      v3 = a2;
      goto LABEL_6;
    case 2uLL:
      v3 = *(a2 + 16);
LABEL_6:
      if ((v3 - 0x1000000000000000) >> 61 == 7)
      {
        goto LABEL_2;
      }

      __break(1u);
      goto LABEL_8;
    default:
LABEL_2:
      if (__OFADD__(a1, 8 * v3))
      {
LABEL_8:
        __break(1u);
        JUMPOUT(0x27076C4C0);
      }

      return (sub_2707A82E0() & (1 << (a1 & 7))) != 0;
  }
}

uint64_t HIDReport.subscript.setter(char a1, uint64_t a2)
{
  v4 = *v2;
  v5 = 0;
  switch(v2[1] >> 62)
  {
    case 1uLL:
      v5 = v4;
      goto LABEL_6;
    case 2uLL:
      v5 = *(v4 + 16);
LABEL_6:
      if ((v5 - 0x1000000000000000) >> 61 == 7)
      {
        goto LABEL_2;
      }

      __break(1u);
      break;
    default:
LABEL_2:
      if (__OFADD__(a2, 8 * v5))
      {
        __break(1u);
        JUMPOUT(0x27076C598);
      }

      return result;
  }

  sub_2707A82E0();

  return sub_2707A82F0();
}

uint64_t (*HIDReport.subscript.modify(uint64_t a1, uint64_t a2))(uint64_t a1)
{
  *a1 = a2;
  *(a1 + 8) = v2;
  *(a1 + 16) = HIDReport.subscript.getter(a2, *v2, *(v2 + 8));
  return sub_27076C600;
}

uint64_t HIDReport.init(bitCount:id:)(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if ((a1 & 7) != 0)
  {
    v4 = (a1 >> 3) + 1;
  }

  else
  {
    v4 = a1 >> 3;
  }

  v7[0] = MEMORY[0x2743A78E0](v4);
  v7[1] = v5;
  sub_27076EA88(v7, 0);
  result = v7[0];
  if (a1 < 8)
  {
    if (!v2)
    {
      return result;
    }

    __break(1u);
  }

  sub_2707A82F0();
  return v7[0];
}

uint64_t HIDReport.reportID.getter(uint64_t a1, unint64_t a2)
{
  v3 = a2 >> 62;
  v4 = a1;
  switch(v3)
  {
    case 1uLL:
      a1 = a1;
      v5 = v4 >> 32;
      goto LABEL_6;
    case 2uLL:
      a1 = *(a1 + 16);
      v5 = *(v4 + 24);
LABEL_6:
      if (a1 == v5)
      {
        return 0;
      }

      return sub_2707A82E0();
    case 3uLL:
      return 0;
    default:
      if ((a2 & 0xFF000000000000) != 0)
      {
        return sub_2707A82E0();
      }

      else
      {
        return 0;
      }
  }
}

BOOL HIDReport.hasStorage<A>(for:at:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = 0;
  switch(a4 >> 62)
  {
    case 1uLL:
      if (__OFSUB__(HIDWORD(a3), a3))
      {
        goto LABEL_11;
      }

      v7 = HIDWORD(a3) - a3;
LABEL_6:
      if ((v7 - 0x1000000000000000) >> 61 != 7)
      {
        __break(1u);
        goto LABEL_10;
      }

LABEL_7:
      v10 = sub_2707A8C00();
      if (__OFADD__(a2, v10))
      {
LABEL_10:
        __break(1u);
LABEL_11:
        __break(1u);
LABEL_12:
        __break(1u);
        JUMPOUT(0x27076C8D0);
      }

      return a2 + v10 <= 8 * v7;
    case 2uLL:
      v9 = *(a3 + 16);
      v8 = *(a3 + 24);
      v7 = v8 - v9;
      if (!__OFSUB__(v8, v9))
      {
        goto LABEL_6;
      }

      goto LABEL_12;
    case 3uLL:
      goto LABEL_7;
    default:
      v7 = BYTE6(a4);
      goto LABEL_6;
  }
}

BOOL HIDReport.subscript.getter(Swift::Int a1)
{
  v1 = a1;
  HIDReport.offset(for:)(a1);
  OUTLINED_FUNCTION_12_7();
  return (sub_2707A82E0() & (1 << (v1 & 7))) != 0;
}

unint64_t HIDReport.subscript.setter(unint64_t result, Swift::Int a2)
{
  if (result > 1)
  {
    __break(1u);
  }

  else
  {
    HIDReport.offset(for:)(a2);
    sub_2707A82E0();

    return sub_2707A82F0();
  }

  return result;
}

uint64_t HIDReport.initialize(from:)()
{
  OUTLINED_FUNCTION_9_5();
  v4 = 0;
  switch(v3)
  {
    case 1:
      if (__OFSUB__(HIDWORD(v2), v2))
      {
        __break(1u);
LABEL_40:
        __break(1u);
LABEL_41:
        __break(1u);
        JUMPOUT(0x27076CBF0);
      }

      v4 = HIDWORD(v2) - v2;
LABEL_6:
      v8 = *v1;
      v9 = v1[1];
      v10 = v9 >> 62;
      switch(v9 >> 62)
      {
        case 1uLL:
          LODWORD(v11) = HIDWORD(v8) - v8;
          if (__OFSUB__(HIDWORD(v8), v8))
          {
            goto LABEL_41;
          }

          v11 = v11;
LABEL_15:
          if (v4 >= v11)
          {
            goto LABEL_16;
          }

          return 0;
        case 2uLL:
          v13 = *(v8 + 16);
          v12 = *(v8 + 24);
          v7 = __OFSUB__(v12, v13);
          v11 = v12 - v13;
          if (!v7)
          {
            goto LABEL_15;
          }

          __break(1u);
LABEL_11:
          if (v4 < 0)
          {
            return 0;
          }

LABEL_16:
          v14 = 1;
          v15 = 0;
          switch(v3)
          {
            case 1:
              v16 = v2;
              v17 = v2 >> 32;
              goto LABEL_21;
            case 2:
              v16 = *(v2 + 16);
              v17 = *(v2 + 24);
LABEL_21:
              if (v16 == v17)
              {
                goto LABEL_22;
              }

              goto LABEL_23;
            case 3:
              goto LABEL_24;
            default:
              if ((v0 & 0xFF000000000000) != 0)
              {
LABEL_23:
                v15 = sub_2707A82E0();
                v14 = 0;
                v8 = *v1;
                v9 = v1[1];
                v10 = v9 >> 62;
              }

              else
              {
LABEL_22:
                v15 = 0;
              }

              break;
          }

          break;
        case 3uLL:
          goto LABEL_11;
        default:
          v11 = BYTE6(v9);
          goto LABEL_15;
      }

      break;
    case 2:
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      v7 = __OFSUB__(v5, v6);
      v4 = v5 - v6;
      if (!v7)
      {
        goto LABEL_6;
      }

      goto LABEL_40;
    case 3:
      goto LABEL_6;
    default:
      v4 = BYTE6(v0);
      goto LABEL_6;
  }

LABEL_24:
  switch(v10)
  {
    case 1uLL:
      v18 = v8;
      v19 = v8 >> 32;
      goto LABEL_29;
    case 2uLL:
      v18 = *(v8 + 16);
      v19 = *(v8 + 24);
LABEL_29:
      if (v18 == v19)
      {
        goto LABEL_30;
      }

      goto LABEL_32;
    case 3uLL:
      goto LABEL_30;
    default:
      if ((v9 & 0xFF000000000000) == 0)
      {
LABEL_30:
        if ((v14 & 1) == 0)
        {
          return 0;
        }

        goto LABEL_38;
      }

LABEL_32:
      if (v15 == sub_2707A82E0())
      {
        v20 = v14;
      }

      else
      {
        v20 = 1;
      }

      if ((v20 & 1) == 0)
      {
        v8 = *v1;
        v9 = v1[1];
LABEL_38:
        sub_270706C38(v2, v0);
        sub_270708D74(v8, v9);
        *v1 = v2;
        v1[1] = v0;
        return 1;
      }

      return 0;
  }
}

uint64_t HIDReport.startIndex.getter(uint64_t a1, unint64_t a2)
{
  v2 = 0;
  switch(a2 >> 62)
  {
    case 1uLL:
    case 2uLL:
      OUTLINED_FUNCTION_5();
      if (!v4)
      {
        __break(1u);
        JUMPOUT(0x27076CC84);
      }

      return result;
    default:
      return OUTLINED_FUNCTION_4_20(v2);
  }

  return OUTLINED_FUNCTION_4_20(v2);
}

void HIDReport.storage.setter()
{
  OUTLINED_FUNCTION_9_5();
  sub_270708D74(*v1, *(v1 + 8));
  *v1 = v2;
  *(v1 + 8) = v0;
}

uint64_t HIDReport.init<A>(_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 - 8);
  v5 = MEMORY[0x28223BE20](a1, a2);
  (*(v4 + 16))(&v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a2, v5);
  OUTLINED_FUNCTION_12_7();
  v7 = sub_2707A83A0();
  (*(v4 + 8))(a1, a2);
  return v7;
}

uint64_t sub_27076CDEC@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = HIDReport.reportID.getter(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t (*HIDReport.reportID.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = HIDReport.reportID.getter(*v1, *(v1 + 8));
  return sub_27076CE68;
}

uint64_t static HIDReport.< infix(_:_:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  switch(a2 >> 62)
  {
    case 1uLL:
      v23 = a1 >> 32;
      if (a1 >> 32 < a1)
      {
        __break(1u);
        JUMPOUT(0x27076CFBCLL);
      }

      v24 = a1;
      v25 = OUTLINED_FUNCTION_7_5();
      sub_270706C38(v25, v26);
      v16 = a2 & 0x3FFFFFFFFFFFFFFFLL;
      v17 = v24;
      v18 = v23;
      goto LABEL_9;
    case 2uLL:
      v13 = *(a1 + 16);
      v12 = *(a1 + 24);
      v14 = OUTLINED_FUNCTION_7_5();
      sub_270706C38(v14, v15);
      v16 = a2 & 0x3FFFFFFFFFFFFFFFLL;
      v17 = v13;
      v18 = v12;
LABEL_9:
      v21 = sub_27076E858(v17, v18, v16, a3, a4);
      return v21 & 1;
    case 3uLL:
      v19 = OUTLINED_FUNCTION_7_5();
      sub_270706C38(v19, v20);
      v11 = 0;
      v10 = 0;
      goto LABEL_5;
    default:
      v8 = OUTLINED_FUNCTION_7_5();
      sub_270706C38(v8, v9);
      v10 = a2 & 0xFFFFFFFFFFFFFFLL;
      v11 = a1;
LABEL_5:
      v21 = sub_27076E9DC(v11, v10, a3, a4);
      return v21 & 1;
  }
}

uint64_t *sub_27076CFCC@<X0>(void *__s1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, _BYTE *a5@<X8>)
{
  __s2[2] = *MEMORY[0x277D85DE8];
  switch(a4 >> 62)
  {
    case 1uLL:
      v11 = a3 >> 32;
      if (a3 >> 32 < a3)
      {
        __break(1u);
      }

      v10 = a3;
      goto LABEL_9;
    case 2uLL:
      v10 = *(a3 + 16);
      v11 = *(a3 + 24);
LABEL_9:
      result = sub_27076E924(v10, v11, a4 & 0x3FFFFFFFFFFFFFFFLL, __s1, a2);
      if (!v5)
      {
        goto LABEL_10;
      }

      goto LABEL_12;
    case 3uLL:
      memset(__s2, 0, 14);
      v9 = __s2;
      goto LABEL_5;
    default:
      __s2[0] = a3;
      LOWORD(__s2[1]) = a4;
      BYTE2(__s2[1]) = BYTE2(a4);
      BYTE3(__s2[1]) = BYTE3(a4);
      BYTE4(__s2[1]) = BYTE4(a4);
      BYTE5(__s2[1]) = BYTE5(a4);
      v9 = (__s2 + BYTE6(a4));
LABEL_5:
      sub_27076D148(&v13, __s2, __s1, v9, a2);
      if (v5)
      {
LABEL_12:

        __break(1u);
        JUMPOUT(0x27076D138);
      }

      result = v13;
LABEL_10:
      *a5 = result & 1;
      return result;
  }
}

uint64_t *sub_27076D148@<X0>(uint64_t *__return_ptr a1@<X8>, uint64_t *__s2@<X0>, void *__s1@<X2>, uint64_t a4@<X1>, uint64_t a5@<X3>)
{
  if (!__s2)
  {
    if (__s1)
    {
LABEL_18:
      __break(1u);
      return __s2;
    }

LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (!__s1)
  {
    goto LABEL_17;
  }

  v6 = a5 - __s1;
  v7 = a4 - __s2;
  if (a4 - __s2 >= a5 - __s1)
  {
    v8 = a5 - __s1;
  }

  else
  {
    v8 = a4 - __s2;
  }

  __s2 = memcmp(__s1, __s2, v8);
  if (__s2)
  {
    v9 = 0;
  }

  else
  {
    v9 = v6 < v7;
  }

  v10 = v9;
  if (__s2 >= 0)
  {
    v11 = v10;
  }

  else
  {
    v11 = 1;
  }

  *a1 = v11;
  return __s2;
}

uint64_t HIDReport.description.getter(uint64_t a1, unint64_t a2)
{
  switch(a2 >> 62)
  {
    case 1uLL:
      if (!__OFSUB__(HIDWORD(a1), a1))
      {
        goto LABEL_5;
      }

      goto LABEL_11;
    case 2uLL:
      if (!__OFSUB__(*(a1 + 24), *(a1 + 16)))
      {
        goto LABEL_5;
      }

      goto LABEL_12;
    case 3uLL:
      return HIDReport.debugDescription.getter(a1, a2);
    default:
LABEL_5:
      OUTLINED_FUNCTION_5();
      if (!v3)
      {
        __break(1u);
LABEL_11:
        __break(1u);
LABEL_12:
        __break(1u);
        JUMPOUT(0x27076D2F0);
      }

      if (v2 < 32)
      {
        return HIDReport.debugDescription.getter(a1, a2);
      }

      HIDReport.count.getter();
      v5 = sub_2707A8E70();
      MEMORY[0x2743A7BE0](0x7374696220, 0xE500000000000000);
      return v5;
  }
}

uint64_t HIDReport.debugDescription.getter(uint64_t a1, unint64_t a2)
{
  result = 0;
  switch(a2 >> 62)
  {
    case 1uLL:
      if (!__OFSUB__(HIDWORD(a1), a1))
      {
        goto LABEL_5;
      }

      goto LABEL_18;
    case 2uLL:
      if (!__OFSUB__(*(a1 + 24), *(a1 + 16)))
      {
        goto LABEL_5;
      }

      goto LABEL_19;
    case 3uLL:
      return result;
    default:
LABEL_5:
      OUTLINED_FUNCTION_5();
      if (!v5)
      {
        __break(1u);
LABEL_18:
        __break(1u);
LABEL_19:
        __break(1u);
        JUMPOUT(0x27076D474);
      }

      if (v4 < 1)
      {
        return 0;
      }

      v6 = 0;
      v7 = 8 * v4;
      do
      {
        if (__OFADD__(v6, 8))
        {
          v8 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v8 = v6 + 8;
        }

        _s12UniversalHID9HIDReportV_2ass4Int8VSi_AFmtcig_0();
        sub_27074A898();
        v9 = sub_2707A8680();
        v11 = v10;
        if (sub_2707A8630() <= 1)
        {
          MEMORY[0x2743A7BE0](v9, v11);

          v9 = 48;
          v11 = 0xE100000000000000;
        }

        MEMORY[0x2743A7BE0](v9, v11);

        v6 = v8;
      }

      while (v8 < v7);
      return 0;
  }
}

uint64_t HIDReport.hashValue.getter()
{
  sub_2707A8F60();
  OUTLINED_FUNCTION_12_7();
  _s12UniversalHID9HIDReportV4hash4intoys6HasherVz_tF_0();
  return sub_2707A8FC0();
}

uint64_t sub_27076D508(uint64_t a1)
{
  sub_2707A8F60();
  _s12UniversalHID9HIDReportV4hash4intoys6HasherVz_tF_0();
  return sub_2707A8FC0();
}

Swift::Int HIDReport.subscript.getter(Swift::Int a1)
{
  v1 = HIDReport.offset(for:)(a1);
  OUTLINED_FUNCTION_12_7();
  result = HIDReport.offset(for:)(v2);
  if (result < v1)
  {
    __break(1u);
  }

  else
  {

    return sub_2707A82D0();
  }

  return result;
}

Swift::Int sub_27076D5C8@<X0>(Swift::Int *a1@<X1>, Swift::Int *a2@<X8>)
{
  result = HIDReport.subscript.getter(*a1);
  *a2 = result;
  a2[1] = v4;
  return result;
}

void sub_27076D5F8(uint64_t *a1, uint64_t a2, Swift::Int *a3)
{
  v3 = *a3;
  v4 = a3[1];
  v5 = *a1;
  v6 = a1[1];
  sub_270706C38(*a1, v6);
  HIDReport.subscript.setter(v5, v6, v3, v4);
}

void HIDReport.subscript.setter(uint64_t a1, unint64_t a2, Swift::Int a3, Swift::Int a4)
{
  v8 = HIDReport.offset(for:)(a3);
  v9 = HIDReport.offset(for:)(a4);
  if (v9 < v8)
  {
    __break(1u);
  }

  else
  {
    sub_27070F3C4(a1, a2, v4, v8, v9);

    sub_270708D74(a1, a2);
  }
}

Swift::Int __swiftcall HIDReport.offset(for:)(Swift::Int a1)
{
  v3 = 0;
  switch(v2 >> 62)
  {
    case 1uLL:
      v3 = v1;
      break;
    case 2uLL:
      v3 = *(v1 + 16);
      break;
    default:
      break;
  }

  v4 = __OFADD__(v3, a1 >> 3);
  result = v3 + (a1 >> 3);
  if (v4)
  {
    __break(1u);
    JUMPOUT(0x27076D734);
  }

  return result;
}

void (*HIDReport.subscript.modify(void *a1, Swift::Int a2, Swift::Int a3))(uint64_t **a1, char a2)
{
  v7 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v7;
  v7[3] = a3;
  v7[4] = v3;
  v7[2] = a2;
  v8 = HIDReport.offset(for:)(a2);
  result = HIDReport.offset(for:)(a3);
  if (result < v8)
  {
    __break(1u);
  }

  else
  {
    *v7 = sub_2707A82D0();
    v7[1] = v10;
    return sub_27076D808;
  }

  return result;
}

void sub_27076D808(uint64_t **a1, char a2)
{
  v3 = *a1;
  v4 = (*a1)[3];
  v5 = HIDReport.offset(for:)((*a1)[2]);
  v6 = HIDReport.offset(for:)(v4);
  v7 = v6;
  if ((a2 & 1) == 0)
  {
    if (v6 >= v5)
    {
      v17 = OUTLINED_FUNCTION_2_22();
      sub_27070F3C4(v17, v18, v19, v5, v7);
      v15 = OUTLINED_FUNCTION_2_22();
      goto LABEL_6;
    }

LABEL_10:
    __break(1u);
    return;
  }

  if (v6 < v5)
  {
    __break(1u);
    goto LABEL_10;
  }

  v8 = v3[4];
  v9 = OUTLINED_FUNCTION_2_22();
  sub_270706C38(v9, v10);
  v11 = OUTLINED_FUNCTION_2_22();
  sub_27070F3C4(v11, v12, v8, v5, v7);
  v13 = OUTLINED_FUNCTION_2_22();
  sub_270708D74(v13, v14);
  v15 = *v3;
  v16 = v3[1];
LABEL_6:
  sub_270708D74(v15, v16);

  free(v3);
}

BOOL sub_27076D90C@<W0>(Swift::Int *a1@<X1>, _BOOL8 *a2@<X8>)
{
  result = HIDReport.subscript.getter(*a1);
  *a2 = result;
  return result;
}

unint64_t (*HIDReport.subscript.modify())(uint64_t a1)
{
  OUTLINED_FUNCTION_9_5();
  *(v3 + 8) = v4;
  *(v3 + 16) = v1;
  HIDReport.offset(for:)(v4);
  *v2 = (sub_2707A82E0() & (1 << (v0 & 7))) != 0;
  return sub_27076D9EC;
}

Swift::Int __swiftcall HIDReport.index(after:)(Swift::Int after)
{
  v2 = 0;
  switch(v1 >> 62)
  {
    case 3uLL:
      goto LABEL_4;
    default:
      OUTLINED_FUNCTION_5();
      if (!v3)
      {
        __break(1u);
LABEL_6:
        __break(1u);
        JUMPOUT(0x27076DA80);
      }

LABEL_4:
      if (after >= 8 * v2)
      {
        goto LABEL_6;
      }

      return after + 1;
  }
}

uint64_t HIDReport.endIndex.getter(uint64_t a1, unint64_t a2)
{
  v2 = 0;
  switch(a2 >> 62)
  {
    case 3uLL:
      return OUTLINED_FUNCTION_4_20(v2);
    default:
      OUTLINED_FUNCTION_5();
      if (!v3)
      {
        __break(1u);
        JUMPOUT(0x27076DAECLL);
      }

      return result;
  }

  return OUTLINED_FUNCTION_4_20(v2);
}

void HIDReport.indices.getter(uint64_t a1, unint64_t a2)
{
  switch(a2 >> 62)
  {
    case 2uLL:
      if ((*(a1 + 16) - 0x1000000000000000) >> 61 == 7)
      {
        goto LABEL_3;
      }

      goto LABEL_7;
    case 3uLL:
      return;
    default:
LABEL_3:
      OUTLINED_FUNCTION_5();
      if (!v4)
      {
        __break(1u);
LABEL_6:
        __break(1u);
LABEL_7:
        __break(1u);
        JUMPOUT(0x27076DB9CLL);
      }

      if (8 * v3 < v2)
      {
        goto LABEL_6;
      }

      return;
  }
}

Swift::Void __swiftcall HIDReport.swapAt(_:_:)(Swift::Int a1, Swift::Int a2)
{
  OUTLINED_FUNCTION_9_5();
  HIDReport.offset(for:)(v4);
  v5 = (sub_2707A82E0() & (1 << (v3 & 7))) != 0;
  HIDReport.offset(for:)(v2);
  v6 = (sub_2707A82E0() & (1 << (v2 & 7))) != 0;
  HIDReport.subscript.setter(v6, v3);

  HIDReport.subscript.setter(v5, v2);
}

unint64_t (*sub_27076DC70(void *a1, Swift::Int *a2))(uint64_t a1)
{
  v4 = *a2;
  a1[1] = v2;
  a1[2] = v4;
  HIDReport.offset(for:)(v4);
  LOBYTE(v4) = HIDReport.mask(for:)(v4);
  *a1 = (sub_2707A82E0() & v4) != 0;
  return sub_27076DD08;
}

void (*sub_27076DD44(void *a1, Swift::Int *a2))(uint64_t **a1, char a2)
{
  v5 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v5;
  v6 = *a2;
  v7 = a2[1];
  v5[2] = v2;
  v5[3] = v6;
  v5[4] = v7;
  v8 = HIDReport.offset(for:)(v6);
  result = HIDReport.offset(for:)(v7);
  if (result < v8)
  {
    __break(1u);
  }

  else
  {
    *v5 = sub_2707A82D0();
    v5[1] = v10;
    return sub_27076DE04;
  }

  return result;
}

void sub_27076DE04(uint64_t **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    sub_270706C38(**a1, (*a1)[1]);
    OUTLINED_FUNCTION_7_17();
    sub_270708D74(*v2, v2[1]);
  }

  else
  {
    OUTLINED_FUNCTION_7_17();
  }

  free(v2);
}

Swift::Int sub_27076DE78@<X0>(uint64_t *a1@<X8>, uint64_t (*a2)(uint64_t *)@<X0>)
{
  result = sub_27076DEA4(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_27076DF10@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_27076DF40(*a1, a2, *v3, *(v3 + 8));
  *a3 = result;
  return result;
}

uint64_t sub_27076DF40(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = __OFADD__(a1, a2);
  result = a1 + a2;
  if (v4)
  {
    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    JUMPOUT(0x27076DFE4);
  }

  v6 = 0;
  v7 = 0;
  switch(a4 >> 62)
  {
    case 1uLL:
      v6 = 8 * a3;
      v7 = a3 >> 32;
      goto LABEL_7;
    case 2uLL:
      v8 = *(a3 + 16);
      if ((v8 - 0x1000000000000000) >> 61 != 7)
      {
        goto LABEL_16;
      }

      v6 = 8 * v8;
      v7 = *(a3 + 24);
LABEL_7:
      if ((v7 - 0x1000000000000000) >> 61 != 7)
      {
        goto LABEL_14;
      }

LABEL_8:
      v9 = 8 * v7;
      if (result < v6 || v9 < result)
      {
        goto LABEL_15;
      }

      return result;
    case 3uLL:
      goto LABEL_8;
    default:
      v6 = 0;
      v7 = BYTE6(a4);
      goto LABEL_7;
  }
}

uint64_t sub_27076DFF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v9 = sub_27076E090(a1, a3, a4, a5);
  if (a2 < 1)
  {
    if (v9 <= 0 && v9 > a2)
    {
      return 0;
    }
  }

  else if ((v9 & 0x8000000000000000) == 0 && v9 < a2)
  {
    return 0;
  }

  return sub_27076DF40(a1, a2, a4, a5);
}

uint64_t sub_27076E090(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 62;
  v9 = 0;
  v10 = a3;
  switch(a4 >> 62)
  {
    case 1uLL:
      v9 = a3;
      goto LABEL_15;
    case 2uLL:
      v9 = *(a3 + 16);
LABEL_15:
      if ((v9 - 0x1000000000000000) >> 61 == 7)
      {
        goto LABEL_2;
      }

      __break(1u);
LABEL_17:
      v13 = v10;
LABEL_19:
      if ((v13 - 0x1000000000000000) >> 61 != 7)
      {
        __break(1u);
LABEL_21:
        __break(1u);
        goto LABEL_22;
      }

LABEL_7:
      v14 = HIDReport.endIndex.getter(a3, a4);
      if (a2 < 8 * v13 || v14 < a2)
      {
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

      result = a2 - a1;
      if (__OFSUB__(a2, a1))
      {
LABEL_23:
        __break(1u);
        JUMPOUT(0x27076E1B8);
      }

      return result;
    default:
LABEL_2:
      v11 = HIDReport.endIndex.getter(a3, a4);
      if (a1 >= 8 * v9 && v11 >= a1)
      {
        v13 = 0;
        switch(v4)
        {
          case 1:
            goto LABEL_17;
          case 2:
            v13 = *(a3 + 16);
            goto LABEL_19;
          default:
            goto LABEL_7;
        }
      }

      goto LABEL_21;
  }
}

uint64_t sub_27076E1D8@<X0>(uint64_t *a1@<X8>)
{
  result = HIDReport.startIndex.getter(*v1, *(v1 + 8));
  *a1 = result;
  return result;
}

uint64_t sub_27076E204@<X0>(uint64_t *a1@<X8>)
{
  result = HIDReport.endIndex.getter(*v1, *(v1 + 8));
  *a1 = result;
  return result;
}

void (*sub_27076E230(void *a1, Swift::Int *a2))()
{
  v3 = *a2;
  HIDReport.offset(for:)(*a2);
  LOBYTE(v3) = HIDReport.mask(for:)(v3);
  *a1 = (sub_2707A82E0() & v3) != 0;
  return nullsub_1;
}

Swift::Int sub_27076E2C4@<X0>(Swift::Int *a1@<X0>, Swift::Int *a2@<X8>)
{
  result = HIDReport.subscript.getter(*a1);
  *a2 = result;
  a2[1] = v4;
  return result;
}

void sub_27076E2F8(void *a1@<X8>)
{
  HIDReport.indices.getter(*v1, *(v1 + 8));
  *a1 = v3;
  a1[1] = v4;
}

uint64_t sub_27076E358(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result >= a2)
  {
    v4 = __OFSUB__(result, a3);
    v3 = result - a3 < 0;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  if (v3 == v4)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_27076E380(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result < a2 || a3 < result)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_27076E3AC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result < a3 || a4 < a2)
  {
    __break(1u);
  }

  return result;
}

Swift::Int sub_27076E3C0@<X0>(Swift::Int *a1@<X0>, Swift::Int *a2@<X8>)
{
  result = HIDReport.index(after:)(*a1);
  *a2 = result;
  return result;
}

uint64_t *sub_27076E3F0(uint64_t *result)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = *result;
  v5 = 0;
  switch(v3 >> 62)
  {
    case 1uLL:
      v5 = v2 >> 32;
      goto LABEL_5;
    case 2uLL:
      v5 = *(v2 + 24);
      goto LABEL_5;
    case 3uLL:
      goto LABEL_6;
    default:
      v5 = BYTE6(v3);
LABEL_5:
      if ((v5 - 0x1000000000000000) >> 61 != 7)
      {
        __break(1u);
        goto LABEL_9;
      }

LABEL_6:
      if (v4 >= 8 * v5)
      {
LABEL_9:
        __break(1u);
        JUMPOUT(0x27076E464);
      }

      *result = v4 + 1;
      return result;
  }
}

uint64_t sub_27076E474@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_27076E4A4(*a1, *v2, *(v2 + 8));
  *a2 = result;
  return result;
}

uint64_t sub_27076E4A4(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = __OFSUB__(a1, 1);
  result = a1 - 1;
  if (v3)
  {
    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    JUMPOUT(0x27076E548);
  }

  v5 = 0;
  v6 = 0;
  switch(a3 >> 62)
  {
    case 1uLL:
      v5 = 8 * a2;
      v6 = a2 >> 32;
      goto LABEL_7;
    case 2uLL:
      v7 = *(a2 + 16);
      if ((v7 - 0x1000000000000000) >> 61 != 7)
      {
        goto LABEL_17;
      }

      v5 = 8 * v7;
      v6 = *(a2 + 24);
LABEL_7:
      if ((v6 - 0x1000000000000000) >> 61 != 7)
      {
        goto LABEL_15;
      }

LABEL_8:
      v8 = 8 * v6;
      if (result < v5 || result >= v8)
      {
        goto LABEL_16;
      }

      return result;
    case 3uLL:
      goto LABEL_8;
    default:
      v5 = 0;
      v6 = BYTE6(a3);
      goto LABEL_7;
  }
}

uint64_t *sub_27076E558(uint64_t *result)
{
  v2 = *result - 1;
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    JUMPOUT(0x27076E608);
  }

  v3 = *v1;
  v4 = v1[1];
  v5 = 0;
  v6 = 0;
  switch(v4 >> 62)
  {
    case 1uLL:
      v5 = 8 * v3;
      v6 = v3 >> 32;
      goto LABEL_7;
    case 2uLL:
      v7 = *(v3 + 16);
      if ((v7 - 0x1000000000000000) >> 61 != 7)
      {
        goto LABEL_17;
      }

      v5 = 8 * v7;
      v6 = *(v3 + 24);
LABEL_7:
      if ((v6 - 0x1000000000000000) >> 61 != 7)
      {
        goto LABEL_15;
      }

LABEL_8:
      v8 = 8 * v6;
      if (v2 < v5 || v2 >= v8)
      {
        goto LABEL_16;
      }

      *result = v2;
      return result;
    case 3uLL:
      goto LABEL_8;
    default:
      v5 = 0;
      v6 = BYTE6(v4);
      goto LABEL_7;
  }
}

uint64_t sub_27076E618@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  result = sub_27076DFF8(*a1, a2, *a3, *v4, *(v4 + 8));
  *a4 = result;
  *(a4 + 8) = v7 & 1;
  return result;
}

void sub_27076E654(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  *a1 = *v1;
  a1[1] = v3;
  v4 = 0;
  switch(v3 >> 62)
  {
    case 1uLL:
      v4 = v2;
      goto LABEL_5;
    case 2uLL:
      v4 = *(v2 + 16);
LABEL_5:
      if ((v4 - 0x1000000000000000) >> 61 != 7)
      {
        __break(1u);
        JUMPOUT(0x27076E6B4);
      }

      return;
    default:
      break;
  }

  a1[2] = 8 * v4;
}

uint64_t _s12UniversalHID9HIDReportV5countSivg_0(uint64_t a1, unint64_t a2)
{
  v2 = 0;
  switch(a2 >> 62)
  {
    case 1uLL:
      if (!__OFSUB__(HIDWORD(a1), a1))
      {
        goto LABEL_5;
      }

      goto LABEL_8;
    case 2uLL:
      if (!__OFSUB__(*(a1 + 24), *(a1 + 16)))
      {
        goto LABEL_5;
      }

      goto LABEL_9;
    case 3uLL:
      return OUTLINED_FUNCTION_4_20(v2);
    default:
LABEL_5:
      OUTLINED_FUNCTION_5();
      if (!v3)
      {
        __break(1u);
LABEL_8:
        __break(1u);
LABEL_9:
        __break(1u);
        JUMPOUT(0x27076E758);
      }

      return OUTLINED_FUNCTION_4_20(v2);
  }
}

void *sub_27076E770(uint64_t a1, unint64_t a2)
{
  v4 = sub_27076F204(a1, a2);
  sub_270708D74(a1, a2);
  return v4;
}

BOOL HIDReport.hasStorage(for:at:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = 0;
  switch(a3 >> 62)
  {
    case 1uLL:
      if (!__OFSUB__(HIDWORD(a2), a2))
      {
        goto LABEL_5;
      }

      goto LABEL_10;
    case 2uLL:
      if (!__OFSUB__(*(a2 + 24), *(a2 + 16)))
      {
        goto LABEL_5;
      }

      goto LABEL_11;
    case 3uLL:
      goto LABEL_7;
    default:
LABEL_5:
      OUTLINED_FUNCTION_5();
      if (!v4)
      {
        __break(1u);
LABEL_9:
        __break(1u);
LABEL_10:
        __break(1u);
LABEL_11:
        __break(1u);
        JUMPOUT(0x27076E848);
      }

LABEL_7:
      if (__OFADD__(a1, 1))
      {
        goto LABEL_9;
      }

      return a1 + 1 <= 8 * v3;
  }
}

char *sub_27076E858(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_2707A81F0();
  v11 = result;
  if (result)
  {
    result = sub_2707A8210();
    if (__OFSUB__(a1, result))
    {
LABEL_15:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  v12 = __OFSUB__(a2, a1);
  v13 = a2 - a1;
  if (v12)
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = sub_2707A8200();
  if (v14 >= v13)
  {
    v15 = v13;
  }

  else
  {
    v15 = v14;
  }

  v16 = &v11[v15];
  if (v11)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  sub_27076CFCC(v11, v17, a4, a5, &v19);
  sub_270708D74(a4, a5);
  if (!v5)
  {
    v18 = v19;
  }

  return (v18 & 1);
}

uint64_t *sub_27076E924(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  result = sub_2707A81F0();
  v11 = result;
  if (result)
  {
    result = sub_2707A8210();
    if (__OFSUB__(a1, result))
    {
LABEL_15:
      __break(1u);
      return result;
    }

    v11 = (v11 + a1 - result);
  }

  v12 = __OFSUB__(a2, a1);
  v13 = a2 - a1;
  if (v12)
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = sub_2707A8200();
  if (v14 >= v13)
  {
    v15 = v13;
  }

  else
  {
    v15 = v14;
  }

  v16 = v11 + v15;
  if (v11)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  sub_27076D148(&v19, v11, a4, v17, a5);
  if (!v5)
  {
    v18 = v19;
  }

  return (v18 & 1);
}

uint64_t sub_27076E9DC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v13 = *MEMORY[0x277D85DE8];
  __s1 = a1;
  v12 = WORD2(a2);
  v11 = a2;
  sub_27076CFCC(&__s1, &__s1 + BYTE6(a2), a3, a4, &v9);
  sub_270708D74(a3, a4);
  if (!v4)
  {
    v7 = v9;
  }

  return v7 & 1;
}

uint64_t *sub_27076EA88(uint64_t *result, uint64_t a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = *result;
  v2 = result[1];
  v4 = a2;
  v5 = result;
  switch(v2 >> 62)
  {
    case 1uLL:

      sub_270708D74(v3, v2);
      __b = v3;
      v22 = v2 & 0x3FFFFFFFFFFFFFFFLL;
      *v5 = xmmword_2707A9D20;
      sub_270708D74(0, 0xC000000000000000);
      result = sub_27076ED14(&__b, v4);
      v6 = __b;
      v7 = v22 | 0x4000000000000000;
      goto LABEL_4;
    case 2uLL:
      v8 = a2;

      sub_270708D74(v3, v2);
      __b = v3;
      v22 = v2 & 0x3FFFFFFFFFFFFFFFLL;
      *v5 = xmmword_2707A9D20;
      sub_270708D74(0, 0xC000000000000000);
      sub_2707A8270();
      v9 = v22;
      v10 = *(__b + 16);
      v11 = *(__b + 24);
      v12 = sub_2707A81F0();
      if (!v12)
      {
        __break(1u);
        JUMPOUT(0x27076ED04);
      }

      v13 = v12;
      v14 = sub_2707A8210();
      v15 = v10 - v14;
      if (__OFSUB__(v10, v14))
      {
        __break(1u);
LABEL_14:
        __break(1u);
      }

      v16 = __OFSUB__(v11, v10);
      v17 = v11 - v10;
      if (v16)
      {
        goto LABEL_14;
      }

      v18 = sub_2707A8200();
      if (v18 >= v17)
      {
        v19 = v17;
      }

      else
      {
        v19 = v18;
      }

      result = memset((v13 + v15), v8, v19);
      *v5 = __b;
      v5[1] = v9 | 0x8000000000000000;
      return result;
    case 3uLL:
      return result;
    default:
      __c = a2;
      sub_270708D74(v3, v2);
      __b = v3;
      LOWORD(v22) = v2;
      BYTE2(v22) = BYTE2(v2);
      BYTE3(v22) = BYTE3(v2);
      BYTE4(v22) = BYTE4(v2);
      BYTE5(v22) = BYTE5(v2);
      BYTE6(v22) = BYTE6(v2);
      result = memset(&__b, __c, BYTE6(v2));
      v6 = __b;
      v7 = v22 | ((WORD2(v22) | (BYTE6(v22) << 16)) << 32);
LABEL_4:
      *v5 = v6;
      v5[1] = v7;
      return result;
  }
}

uint64_t sub_27076ED14(int *a1, int a2)
{
  result = sub_2707A8290();
  v5 = *a1;
  v6 = a1[1];
  if (v6 < v5)
  {
    __break(1u);
    goto LABEL_9;
  }

  result = sub_2707A81F0();
  if (!result)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v7 = result;
  result = sub_2707A8210();
  v8 = v5 - result;
  if (__OFSUB__(v5, result))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v9 = v6 - v5;
  v10 = sub_2707A8200();
  if (v10 >= v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  memset((v7 + v8), a2, v11);
}

unint64_t sub_27076EDBC()
{
  result = qword_280829E50;
  if (!qword_280829E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280829E50);
  }

  return result;
}

unint64_t sub_27076EE18()
{
  result = qword_280829E58;
  if (!qword_280829E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280829E58);
  }

  return result;
}

unint64_t sub_27076EE70()
{
  result = qword_280829E60;
  if (!qword_280829E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280829E60);
  }

  return result;
}

unint64_t sub_27076EEC4()
{
  result = qword_280829E68;
  if (!qword_280829E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280829E68);
  }

  return result;
}

unint64_t sub_27076EF4C()
{
  result = qword_280829E80;
  if (!qword_280829E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280829E80);
  }

  return result;
}

unint64_t sub_27076EFA4()
{
  result = qword_280829E88;
  if (!qword_280829E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280829E88);
  }

  return result;
}

unint64_t sub_27076EFFC()
{
  result = qword_280829E90;
  if (!qword_280829E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280829E90);
  }

  return result;
}

uint64_t sub_27076F0C4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280829E78, &qword_2707B00E0);
    sub_27076EF4C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_27076F144()
{
  result = qword_280829EA8;
  if (!qword_280829EA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280829EB0, &qword_2707B0278);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280829EA8);
  }

  return result;
}

void *sub_27076F204(uint64_t a1, unint64_t a2)
{
  v2 = MEMORY[0x277D84F90];
  switch(a2 >> 62)
  {
    case 1uLL:
      LODWORD(v5) = HIDWORD(a1) - a1;
      if (__OFSUB__(HIDWORD(a1), a1))
      {
        goto LABEL_12;
      }

      v5 = v5;
LABEL_6:
      if ((v5 - 0x1000000000000000) >> 61 != 7)
      {
        __break(1u);
LABEL_11:
        __break(1u);
LABEL_12:
        __break(1u);
LABEL_13:
        __break(1u);
        JUMPOUT(0x27076F304);
      }

      if (v5)
      {
        v9 = 8 * v5;
        v2 = sub_270770CFC(8 * v5, 0);
        sub_270706C38(a1, a2);
        v10 = sub_270770038(v12, (v2 + 4), v9, a1, a2);
        sub_270708D74(v12[0], v12[1]);
        if (v10 != v9)
        {
          goto LABEL_11;
        }
      }

      return v2;
    case 2uLL:
      v7 = *(a1 + 16);
      v6 = *(a1 + 24);
      v8 = __OFSUB__(v6, v7);
      v5 = v6 - v7;
      if (!v8)
      {
        goto LABEL_6;
      }

      goto LABEL_13;
    case 3uLL:
      return v2;
    default:
      v5 = BYTE6(a2);
      goto LABEL_6;
  }
}

uint64_t sub_27076F314(unint64_t *a1, _BYTE *a2, uint64_t a3, unint64_t a4, unint64_t a5)
{
  v41 = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    v7 = 0;
    a3 = 0;
    goto LABEL_37;
  }

  if (!a3)
  {
    v7 = 0;
    goto LABEL_37;
  }

  if (a3 < 0)
  {
    goto LABEL_47;
  }

  v26 = a2;
  v22 = a3;
  v23 = a1;
  v7 = 0;
  v8 = 0;
  v9 = a4;
  v39 = a4 >> 32;
  v37 = a4 >> 8;
  v38 = BYTE6(a5);
  v35 = a4 >> 24;
  v36 = a4 >> 16;
  v33 = a4 >> 40;
  v34 = HIDWORD(a4);
  v31 = HIBYTE(a4);
  v32 = HIWORD(a4);
  v29 = a5 >> 16;
  v30 = a5 >> 8;
  v27 = HIDWORD(a5);
  v28 = a5 >> 24;
LABEL_5:
  if (__OFADD__(v8, 1))
  {
    goto LABEL_46;
  }

  if (v7 > 2)
  {
    a3 = v8;
    goto LABEL_35;
  }

  v24 = v8;
  v25 = v8 + 1;
  while (2)
  {
    v10 = 0;
    switch(a5 >> 62)
    {
      case 1uLL:
        v10 = a4;
        break;
      case 2uLL:
        v10 = *(a4 + 16);
        break;
      default:
        break;
    }

    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
    }

    switch(a5 >> 62)
    {
      case 1uLL:
        if (v11 < a4 || v11 >= v39)
        {
          goto LABEL_42;
        }

        v18 = sub_2707A81F0();
        if (!v18)
        {
          goto LABEL_49;
        }

        v14 = v18;
        v19 = sub_2707A8210();
        v16 = v11 - v19;
        if (!__OFSUB__(v11, v19))
        {
          goto LABEL_28;
        }

        goto LABEL_44;
      case 2uLL:
        if (v11 < *(a4 + 16))
        {
          goto LABEL_41;
        }

        if (v11 >= *(a4 + 24))
        {
          goto LABEL_43;
        }

        v13 = sub_2707A81F0();
        if (!v13)
        {
          goto LABEL_50;
        }

        v14 = v13;
        v15 = sub_2707A8210();
        v16 = v11 - v15;
        if (__OFSUB__(v11, v15))
        {
          goto LABEL_45;
        }

LABEL_28:
        v12 = *(v14 + v16);
LABEL_29:
        if ((v12 & (1 << (v7 & 7))) == 0)
        {
          if (++v7 == 3)
          {
            a3 = v24;
LABEL_35:
            a1 = v23;
            goto LABEL_37;
          }

          continue;
        }

        v20 = v7 + 1;
        *v26++ = v7++;
        v8 = v25;
        if (v25 != v22)
        {
          goto LABEL_5;
        }

        v7 = v20;
        a3 = v22;
        a1 = v23;
LABEL_37:
        *a1 = a4;
        a1[1] = a5;
        a1[2] = v7;
        return a3;
      case 3uLL:
        goto LABEL_48;
      default:
        if (v11 >= v38)
        {
          goto LABEL_40;
        }

        v40[0] = v9;
        v40[1] = v37;
        v40[2] = v36;
        v40[3] = v35;
        v40[4] = v34;
        v40[5] = v33;
        v40[6] = v32;
        v40[7] = v31;
        v40[8] = a5;
        v40[9] = v30;
        v40[10] = v29;
        v40[11] = v28;
        v40[12] = v27;
        v40[13] = BYTE5(a5);
        v12 = v40[v11];
        goto LABEL_29;
    }
  }
}

void *sub_27076F634(void *result, _WORD *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = result;
  if (!a2)
  {
    v10 = 0;
    v8 = 0;
LABEL_16:
    *v7 = a4;
    v7[1] = a5;
    v7[2] = v10;
    return v8;
  }

  v8 = a3;
  if (!a3)
  {
    v10 = 0;
    goto LABEL_16;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v9 = a2;
    v10 = 0;
    v11 = 0;
    while (2)
    {
      v12 = v11 + 1;
      if (!__OFADD__(v11, 1))
      {
        if (v10 > 3)
        {
          v8 = v11;
        }

        else
        {
          v16 = v11;
          v13 = v10 - 0x800000000000000;
          v14 = (16 * v10++) | 8;
          v15 = v13 >> 60;
          while (1)
          {
            if (v15 < 0xF)
            {
              __break(1u);
              goto LABEL_19;
            }

            result = _s12UniversalHID9HIDReportV_2ass5Int16VSi_AFmtcig_0();
            if ((result - 1301) > 0xFAEBu)
            {
              break;
            }

            ++v10;
            v14 += 16;
            if (v10 == 5)
            {
              v10 = 4;
              v8 = v16;
              goto LABEL_16;
            }
          }

          *v9++ = result;
          v11 = v12;
          if (v12 != v8)
          {
            continue;
          }
        }

        goto LABEL_16;
      }

      break;
    }

LABEL_19:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_27076F75C(void *a1, _BYTE *a2, uint64_t a3, unint64_t a4, unint64_t a5)
{
  v40 = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    a3 = 0;
    goto LABEL_36;
  }

  if (!a3)
  {
LABEL_36:
    v10 = 1;
    goto LABEL_37;
  }

  if (a3 < 0)
  {
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
  }

  v8 = 0;
  v9 = a4;
  v32 = BYTE6(a5);
  v33 = a4 >> 32;
  v30 = a4 >> 16;
  v31 = a4 >> 8;
  v28 = HIDWORD(a4);
  v29 = a4 >> 24;
  v10 = 1;
  v24 = a3;
LABEL_5:
  if (__OFADD__(v8, 1))
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  if (v10 > 231)
  {
    a3 = v8;
    goto LABEL_37;
  }

  v25 = v8 + 1;
  v26 = a2;
  v27 = v8;
  v11 = v10 - 256;
  do
  {
    if (v11 > 0xFFFFFFFFFFFFFF00)
    {
      v12 = v11 + 264;
      v13 = 0;
      switch(a5 >> 62)
      {
        case 1uLL:
          v13 = a4;
          break;
        case 2uLL:
          v13 = *(a4 + 16);
          break;
        default:
          break;
      }

      v14 = v13 + (v12 >> 3);
      if (!__OFADD__(v13, v12 >> 3))
      {
        switch(a5 >> 62)
        {
          case 1uLL:
            if (v14 < a4 || v14 >= v33)
            {
              goto LABEL_42;
            }

            v21 = sub_2707A81F0();
            if (!v21)
            {
              goto LABEL_49;
            }

            v17 = v21;
            v22 = sub_2707A8210();
            v19 = v14 - v22;
            if (!__OFSUB__(v14, v22))
            {
              goto LABEL_29;
            }

            goto LABEL_44;
          case 2uLL:
            if (v14 < *(a4 + 16))
            {
              goto LABEL_40;
            }

            if (v14 >= *(a4 + 24))
            {
              goto LABEL_43;
            }

            v16 = sub_2707A81F0();
            if (!v16)
            {
              goto LABEL_50;
            }

            v17 = v16;
            v18 = sub_2707A8210();
            v19 = v14 - v18;
            if (__OFSUB__(v14, v18))
            {
              goto LABEL_45;
            }

LABEL_29:
            v15 = *(v17 + v19);
LABEL_30:
            if ((v15 & (1 << (v11 & 7))) == 0)
            {
              goto LABEL_31;
            }

            v10 = v11 + 257;
            *v26 = v11;
            a2 = v26 + 1;
            a3 = v24;
            v8 = v25;
            if (v25 == v24)
            {
              goto LABEL_37;
            }

            goto LABEL_5;
          case 3uLL:
            goto LABEL_48;
          default:
            if (v14 >= v32)
            {
              goto LABEL_41;
            }

            v34[0] = v9;
            v34[1] = v31;
            v34[2] = v30;
            v34[3] = v29;
            v34[4] = v28;
            v34[5] = BYTE5(a4);
            v34[6] = BYTE6(a4);
            v34[7] = HIBYTE(a4);
            v35 = a5;
            v36 = BYTE2(a5);
            v37 = BYTE3(a5);
            v38 = BYTE4(a5);
            v39 = BYTE5(a5);
            v15 = v34[v14];
            goto LABEL_30;
        }
      }

      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
      goto LABEL_46;
    }

LABEL_31:
    ++v11;
  }

  while (v11 != -24);
  v10 = 232;
  a3 = v27;
LABEL_37:
  *a1 = a4;
  a1[1] = a5;
  a1[2] = v10;
  return a3;
}

uint64_t sub_27076FA54(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v5 = a5;
  v6 = a4;
  if (!a2)
  {
    v8 = 0;
    goto LABEL_52;
  }

  if (!a3)
  {
    v8 = 0;
    goto LABEL_52;
  }

  if (a3 < 0)
  {
LABEL_63:
    __break(1u);
    JUMPOUT(0x27076FDB8);
  }

  v7 = a2;
  v34 = a1;
  v8 = 0;
  v9 = a4;
  v10 = a5;
  while (2)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
      goto LABEL_63;
    }

    v5 = v10;
    v6 = v9;
    v12 = v10 >> 62;
    switch(v10 >> 62)
    {
      case 1uLL:
        v13 = v6 >> 32;
        v14 = v6;
        goto LABEL_11;
      case 2uLL:
        v14 = *(v6 + 16);
        v13 = *(v6 + 24);
LABEL_11:
        if (v14 != v13)
        {
          break;
        }

        goto LABEL_49;
      case 3uLL:
        goto LABEL_49;
      default:
        if ((v10 & 0xFF000000000000) == 0)
        {
          goto LABEL_49;
        }

        break;
    }

    sub_270706C38(v6, v10);
    v15 = sub_270735CE4(v6, v10);
    v17 = v15;
    v18 = v16;
    v19 = 0;
    switch(v16 >> 62)
    {
      case 1uLL:
        if (__OFSUB__(HIDWORD(v15), v15))
        {
          goto LABEL_62;
        }

        v19 = HIDWORD(v15) - v15;
LABEL_17:
        if ((v19 & 0x8000000000000000) != 0)
        {
          goto LABEL_54;
        }

LABEL_18:
        if (v12)
        {
          if (v12 == 2)
          {
            v23 = *(v6 + 16);
            v22 = *(v6 + 24);
          }

          else
          {
            v23 = v6;
            v22 = v6 >> 32;
          }

          if (v22 < v23)
          {
            goto LABEL_55;
          }

          if (v12 == 2)
          {
            v24 = *(v6 + 16);
            v25 = *(v6 + 24);
          }

          else
          {
            v25 = v6 >> 32;
            v24 = v6;
          }
        }

        else
        {
          v23 = 0;
          v24 = 0;
          v22 = BYTE6(v10);
          v25 = BYTE6(v10);
        }

        if (v25 < v22 || v22 < v24)
        {
          goto LABEL_56;
        }

        if (__OFSUB__(v22, v23))
        {
          goto LABEL_57;
        }

        if (v22 - v23 < v19)
        {
          goto LABEL_47;
        }

        v27 = v23 + v19;
        if (__OFADD__(v23, v19))
        {
          goto LABEL_59;
        }

        v28 = 0;
        v29 = 0;
        switch(v12)
        {
          case 1:
            v28 = v6 >> 32;
            v29 = v6;
            break;
          case 2:
            v29 = *(v6 + 16);
            v28 = *(v6 + 24);
            break;
          case 3:
            break;
          default:
            v29 = 0;
            v28 = BYTE6(v10);
            break;
        }

        if (v28 < v27 || v27 < v29)
        {
          goto LABEL_60;
        }

        v31 = 0;
        switch(v12)
        {
          case 1:
            v31 = v6 >> 32;
            break;
          case 2:
            v31 = *(v6 + 24);
            break;
          case 3:
            break;
          default:
            v31 = BYTE6(v10);
            break;
        }

        if (v31 < v27)
        {
          goto LABEL_58;
        }

LABEL_47:
        v9 = sub_2707A82D0();
        v10 = v32;
        sub_270708D74(v6, v5);
        v37 = &unk_28807A7C0;
        v38 = &off_28807A7E0;
        *&v36 = v17;
        *(&v36 + 1) = v18;
        sub_27070F8A8(&v36, v39);
        sub_27070F8A8(v39, v7);
        v7 += 40;
        ++v8;
        if (v11 != a3)
        {
          continue;
        }

        v6 = v9;
        v5 = v10;
        v8 = a3;
LABEL_49:
        a1 = v34;
        break;
      case 2uLL:
        v21 = *(v15 + 16);
        v20 = *(v15 + 24);
        v19 = v20 - v21;
        if (!__OFSUB__(v20, v21))
        {
          goto LABEL_17;
        }

        goto LABEL_61;
      case 3uLL:
        goto LABEL_18;
      default:
        v19 = BYTE6(v16);
        goto LABEL_18;
    }

    break;
  }

LABEL_52:
  *a1 = v6;
  a1[1] = v5;
  return v8;
}

unint64_t sub_27076FE08(unint64_t result, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = result;
  if (!a2)
  {
    v10 = 0;
    v8 = 0;
LABEL_18:
    *v7 = a4;
    v7[1] = a5;
    v7[2] = v10;
    return v8;
  }

  v8 = a3;
  if (!a3)
  {
    v10 = 0;
    goto LABEL_18;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v9 = a2;
    v10 = 0;
    v11 = 0;
    while (2)
    {
      v12 = v11 + 1;
      if (!__OFADD__(v11, 1))
      {
        if (v10 > 3)
        {
LABEL_16:
          v8 = v11;
        }

        else
        {
          v13 = v10 - 0x1000000000000000;
          v14 = 8 * v10++;
          v15 = v13 >> 61;
          while (1)
          {
            if (v15 < 7)
            {
              __break(1u);
LABEL_20:
              __break(1u);
              goto LABEL_21;
            }

            result = v14 + 8;
            if (__OFADD__(v14, 8))
            {
              goto LABEL_20;
            }

            result = _s12UniversalHID9HIDReportV_2ass4Int8VSi_AFmtcig_0();
            if ((result - 3) < 3u)
            {
              break;
            }

            ++v10;
            v14 += 8;
            if (v10 == 5)
            {
              v10 = 4;
              goto LABEL_16;
            }
          }

          *v9++ = result;
          ++v11;
          if (v12 != v8)
          {
            continue;
          }
        }

        goto LABEL_18;
      }

      break;
    }

LABEL_21:
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_27076FF1C(unint64_t result, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = result;
  if (!a2)
  {
    v10 = 0;
    v8 = 0;
LABEL_20:
    *v7 = a4;
    v7[1] = a5;
    v7[2] = v10;
    return v8;
  }

  v8 = a3;
  if (!a3)
  {
    v10 = 0;
    goto LABEL_20;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v9 = a2;
    v10 = 0;
    v11 = 0;
    while (1)
    {
      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v10 > 1)
      {
LABEL_18:
        v8 = v11;
        goto LABEL_20;
      }

      while (1)
      {
        result = _s12UniversalHID9HIDReportV_2ass4Int8VSi_AFmtcig_0();
        if ((result - 49) > 0xCFu && result <= 0x21u && ((1 << result) & 0x30003001ELL) != 0)
        {
          break;
        }

        v14 = v10 < 1;
        v10 = 1;
        if (!v14)
        {
          v10 = 2;
          goto LABEL_18;
        }
      }

      ++v10;
      *v9++ = result;
      ++v11;
      if (v12 == v8)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_270770038(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v33 = *MEMORY[0x277D85DE8];
  v7 = a5 >> 62;
  v10 = 0;
  v11 = a4;
  switch(a5 >> 62)
  {
    case 1uLL:
      v5 = a4;
      goto LABEL_39;
    case 2uLL:
      v5 = *(a4 + 16);
LABEL_39:
      if ((v5 - 0x1000000000000000) >> 61 == 7)
      {
        goto LABEL_58;
      }

      __break(1u);
LABEL_41:
      v10 += v6;
      a3 = v6;
      goto LABEL_42;
    default:
      if (!a2)
      {
        goto LABEL_59;
      }

      break;
  }

  while (a3)
  {
    v22 = a1;
    if ((a3 & 0x8000000000000000) == 0)
    {
      v6 = 0;
      v12 = BYTE6(a5);
      v5 = a5 >> 40;
      v13 = v7;
      v26 = a3;
      v24 = a2;
      v25 = v10;
      v23 = v11;
      while (2)
      {
        v14 = v6 + 1;
        if (!__OFADD__(v6, 1))
        {
          v15 = v10 + v6;
          v7 = 0;
          v5 = v12;
          switch(v13)
          {
            case 1:
              v5 = a4 >> 32;
              goto LABEL_10;
            case 2:
              v5 = *(a4 + 24);
              goto LABEL_10;
            case 3:
              goto LABEL_11;
            default:
LABEL_10:
              v7 = v5;
              if ((v5 - 0x1000000000000000) >> 61 != 7)
              {
                goto LABEL_44;
              }

LABEL_11:
              if (v15 == 8 * v7)
              {
                goto LABEL_41;
              }

              v7 = 0;
              switch(v13)
              {
                case 1:
                  v7 = v11;
                  break;
                case 2:
                  v7 = *(a4 + 16);
                  break;
                default:
                  break;
              }

              v16 = v7 + (v15 >> 3);
              if (__OFADD__(v7, v15 >> 3))
              {
                goto LABEL_45;
              }

              LODWORD(v7) = v15 & 7;
              v5 = 1;
              switch(v13)
              {
                case 1:
                  LODWORD(v7) = HIDWORD(a4);
                  if (v16 < v11 || v16 >= a4 >> 32)
                  {
                    goto LABEL_50;
                  }

                  a1 = sub_2707A81F0();
                  if (!a1)
                  {
                    goto LABEL_56;
                  }

                  v20 = a1;
                  a1 = sub_2707A8210();
                  v7 = v16 - a1;
                  if (__OFSUB__(v16, a1))
                  {
                    goto LABEL_52;
                  }

                  v17 = *(v20 + v7);
                  v7 = a4 >> 32;
                  goto LABEL_32;
                case 2:
                  v7 = *(a4 + 16);
                  if (v16 < v7)
                  {
                    goto LABEL_48;
                  }

                  v7 = *(a4 + 24);
                  if (v16 >= v7)
                  {
                    goto LABEL_51;
                  }

                  a1 = sub_2707A81F0();
                  if (!a1)
                  {
                    goto LABEL_57;
                  }

                  v18 = a1;
                  a1 = sub_2707A8210();
                  v7 = v16 - a1;
                  if (__OFSUB__(v16, a1))
                  {
                    goto LABEL_53;
                  }

                  v17 = *(v18 + v7);
                  v7 = *(a4 + 24);
LABEL_32:
                  a3 = v26;
                  a2 = v24;
                  v10 = v25;
                  v12 = BYTE6(a5);
                  v11 = v23;
LABEL_33:
                  v5 = (v17 & (1 << (v15 & 7))) != 0;
                  if ((v7 - 0x1000000000000000) >> 61 != 7)
                  {
                    goto LABEL_46;
                  }

                  if (v15 >= 8 * v7)
                  {
                    goto LABEL_47;
                  }

                  *(a2 + 8 * v6++) = v5;
                  if (v14 != a3)
                  {
                    continue;
                  }

                  v10 += v6;
                  break;
                case 3:
                  goto LABEL_55;
                default:
                  if (v16 >= v12)
                  {
                    goto LABEL_49;
                  }

                  v27[0] = v11;
                  v27[1] = BYTE1(a4);
                  v27[2] = BYTE2(a4);
                  v27[3] = BYTE3(a4);
                  v27[4] = BYTE4(a4);
                  v27[5] = BYTE5(a4);
                  v27[6] = BYTE6(a4);
                  v27[7] = HIBYTE(a4);
                  v28 = a5;
                  v29 = BYTE2(a5);
                  v30 = BYTE3(a5);
                  v31 = BYTE4(a5);
                  v7 = v12;
                  v32 = BYTE5(a5);
                  v17 = v27[v16];
                  goto LABEL_33;
              }

              break;
          }

LABEL_42:
          a1 = v22;
          goto LABEL_60;
        }

        break;
      }

      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
    }

    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    v10 = 8 * v5;
    if (!a2)
    {
LABEL_59:
      a3 = 0;
      break;
    }
  }

LABEL_60:
  *a1 = a4;
  a1[1] = a5;
  a1[2] = v10;
  return a3;
}

void *sub_270770428(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 64;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 64);
  if (!a2)
  {
    v9 = 0;
    a3 = 0;
LABEL_18:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_18;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    while (1)
    {
      v10 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (!v7)
      {
        while (1)
        {
          v11 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
            break;
          }

          if (v11 >= ((63 - v6) >> 6))
          {
            v7 = 0;
            a3 = v8;
            goto LABEL_18;
          }

          v7 = *(v4 + 8 * v11);
          ++v9;
          if (v7)
          {
            v9 = v11;
            goto LABEL_13;
          }
        }

        __break(1u);
        break;
      }

LABEL_13:
      v12 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2++ = *(*(a4 + 48) + ((v9 << 9) | (8 * v12)));
      v8 = v10;
      if (v10 == a3)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_270770510(void *result, void *a2, unint64_t a3, uint64_t a4)
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
LABEL_20:
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
    goto LABEL_20;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    v12 = 0;
    v13 = 0;
    while (v12 < v10)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_24;
      }

      if (!v9)
      {
        while (1)
        {
          v15 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v15 >= ((63 - v7) >> 6))
          {
            v9 = 0;
            v10 = v12;
            goto LABEL_20;
          }

          v9 = *(v6 + 8 * v15);
          ++v13;
          if (v9)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
        break;
      }

      v15 = v13;
LABEL_15:
      v16 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      *v11 = *(*(a4 + 56) + ((v15 << 9) | (8 * v16)));
      if (v14 == v10)
      {

        v13 = v15;
        goto LABEL_20;
      }

      ++v11;

      v12 = v14;
      v13 = v15;
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
  return result;
}

Swift::Int sub_270770668(uint64_t (*a1)(uint64_t *))
{
  v65 = *MEMORY[0x277D85DE8];
  v3 = *v1;
  v4 = v1[1];
  v5 = v1;
  v6 = 0;
  switch(v4 >> 62)
  {
    case 1uLL:
      v6 = v3;
      goto LABEL_78;
    case 2uLL:
      v6 = *(v3 + 16);
LABEL_78:
      if ((v6 - 0x1000000000000000) >> 61 == 7)
      {
        goto LABEL_2;
      }

      __break(1u);
      goto LABEL_80;
    default:
LABEL_2:
      v7 = 8 * v6;
      v8 = HIDReport.endIndex.getter(v3, v4);
      break;
  }

  while (2)
  {
    if (v7 >= v8)
    {
      return v7;
    }

    v9 = *v5;
    v10 = v5[1];
    v11 = 0;
    switch(v10 >> 62)
    {
      case 1uLL:
        v11 = v9;
        break;
      case 2uLL:
        v11 = *(v9 + 16);
        break;
      default:
        break;
    }

    v12 = v11 + (v7 >> 3);
    if (__OFADD__(v11, v7 >> 3))
    {
LABEL_80:
      __break(1u);
LABEL_81:
      __break(1u);
LABEL_82:
      __break(1u);
LABEL_83:
      __break(1u);
LABEL_84:
      __break(1u);
LABEL_85:
      __break(1u);
LABEL_86:
      __break(1u);
LABEL_87:
      __break(1u);
LABEL_88:
      __break(1u);
LABEL_89:
      __break(1u);
LABEL_90:
      __break(1u);
LABEL_91:
      __break(1u);
LABEL_92:
      __break(1u);
LABEL_93:
      __break(1u);
LABEL_94:
      __break(1u);
LABEL_95:
      __break(1u);
LABEL_96:
      __break(1u);
LABEL_97:
      __break(1u);
LABEL_98:
      __break(1u);
LABEL_99:
      __break(1u);
LABEL_100:
      __break(1u);
LABEL_101:
      __break(1u);
LABEL_102:
      __break(1u);
LABEL_103:
      __break(1u);
LABEL_104:
      __break(1u);
LABEL_105:
      __break(1u);
    }

    switch(v10 >> 62)
    {
      case 1uLL:
        if (v12 < v9 || v12 >= v9 >> 32)
        {
          goto LABEL_85;
        }

        v19 = sub_2707A81F0();
        if (!v19)
        {
          goto LABEL_101;
        }

        v15 = v19;
        v20 = sub_2707A8210();
        v17 = v12 - v20;
        if (!__OFSUB__(v12, v20))
        {
          goto LABEL_24;
        }

        goto LABEL_87;
      case 2uLL:
        if (v12 < *(v9 + 16))
        {
          goto LABEL_84;
        }

        if (v12 >= *(v9 + 24))
        {
          goto LABEL_86;
        }

        v14 = sub_2707A81F0();
        if (!v14)
        {
          goto LABEL_102;
        }

        v15 = v14;
        v16 = sub_2707A8210();
        v17 = v12 - v16;
        if (__OFSUB__(v12, v16))
        {
          goto LABEL_88;
        }

LABEL_24:
        v13 = *(v15 + v17);
LABEL_25:
        v59 = (v13 & (1 << (v7 & 7))) != 0;
        v21 = a1(&v59);
        if (v2)
        {
          return v7;
        }

        v23 = *v5;
        v22 = v5[1];
        v24 = v22 >> 62;
        v25 = *v5 >> 32;
        v26 = BYTE6(v22);
        if ((v21 & 1) == 0)
        {
          v27 = 0;
          switch(v24)
          {
            case 1:
              v27 = *v5 >> 32;
              goto LABEL_31;
            case 2:
              v27 = *(v23 + 24);
              goto LABEL_31;
            case 3:
              goto LABEL_32;
            default:
              v27 = v26;
LABEL_31:
              if ((v27 - 0x1000000000000000) >> 61 != 7)
              {
                goto LABEL_81;
              }

LABEL_32:
              if (v7 < 8 * v27)
              {
                goto LABEL_33;
              }

              goto LABEL_82;
          }
        }

        v28 = v24;
        v54 = v24;
        v55 = v5;
        while (2)
        {
          v29 = v8 - 1;
          v30 = 0;
          v31 = v28;
          v32 = v26;
          v33 = 0;
          switch(v28)
          {
            case 1:
              v32 = v25;
              v31 = 8 * v23;
              goto LABEL_39;
            case 2:
              v34 = *(v23 + 16);
              if ((v34 - 0x1000000000000000) >> 61 != 7)
              {
                goto LABEL_98;
              }

              v31 = 8 * v34;
              v32 = *(v23 + 24);
LABEL_39:
              v30 = v31;
              v33 = v32;
              if ((v32 - 0x1000000000000000) >> 61 != 7)
              {
                goto LABEL_89;
              }

LABEL_40:
              if (v8 <= v30 || v8 > 8 * v33)
              {
                goto LABEL_90;
              }

              if (v7 >= v29)
              {
                return v7;
              }

              v36 = *v5;
              v37 = v5[1];
              v38 = 0;
              switch(v37 >> 62)
              {
                case 1uLL:
                  v38 = v36;
                  break;
                case 2uLL:
                  v38 = *(v36 + 16);
                  break;
                default:
                  break;
              }

              v39 = v38 + (v29 >> 3);
              if (__OFADD__(v38, v29 >> 3))
              {
                goto LABEL_91;
              }

              v40 = 1 << (v29 & 7);
              v57 = v8 - 1;
              switch(v37 >> 62)
              {
                case 1uLL:
                  if (v39 < v36 || v39 >= v36 >> 32)
                  {
                    goto LABEL_94;
                  }

                  v56 = 1 << (v29 & 7);
                  v47 = sub_2707A81F0();
                  if (!v47)
                  {
                    goto LABEL_104;
                  }

                  v43 = v47;
                  v48 = sub_2707A8210();
                  v45 = v39 - v48;
                  if (!__OFSUB__(v39, v48))
                  {
                    goto LABEL_66;
                  }

                  goto LABEL_96;
                case 2uLL:
                  if (v39 < *(v36 + 16))
                  {
                    goto LABEL_92;
                  }

                  if (v39 >= *(v36 + 24))
                  {
                    goto LABEL_95;
                  }

                  v56 = 1 << (v29 & 7);
                  v42 = sub_2707A81F0();
                  if (!v42)
                  {
                    goto LABEL_105;
                  }

                  v43 = v42;
                  v44 = sub_2707A8210();
                  v45 = v39 - v44;
                  if (__OFSUB__(v39, v44))
                  {
                    goto LABEL_97;
                  }

LABEL_66:
                  v41 = *(v43 + v45);
                  v40 = v56;
LABEL_67:
                  v59 = (v41 & v40) != 0;
                  v49 = a1(&v59);
                  v5 = v55;
                  v8 = v57;
                  v28 = v54;
                  if (v49)
                  {
                    continue;
                  }

                  break;
                case 3uLL:
                  goto LABEL_103;
                default:
                  if (v39 >= BYTE6(v37))
                  {
                    goto LABEL_93;
                  }

                  v59 = v36;
                  v60 = v37;
                  v61 = BYTE2(v37);
                  v62 = BYTE3(v37);
                  v63 = BYTE4(v37);
                  v64 = BYTE5(v37);
                  v41 = *(&v59 + v39);
                  goto LABEL_67;
              }

              break;
            case 3:
              goto LABEL_40;
            default:
              goto LABEL_39;
          }

          break;
        }

        break;
      case 3uLL:
        goto LABEL_100;
      default:
        if (v12 >= BYTE6(v10))
        {
          goto LABEL_83;
        }

        LOWORD(v59) = *v5;
        BYTE2(v59) = BYTE2(v9);
        BYTE3(v59) = BYTE3(v9);
        BYTE4(v59) = BYTE4(v9);
        BYTE5(v59) = BYTE5(v9);
        BYTE6(v59) = BYTE6(v9);
        HIBYTE(v59) = HIBYTE(v9);
        v60 = v10;
        v61 = BYTE2(v10);
        v62 = BYTE3(v10);
        v63 = BYTE4(v10);
        v64 = BYTE5(v10);
        v13 = *(&v59 + v12);
        goto LABEL_25;
    }

    v8 = v57;
    HIDReport.swapAt(_:_:)(v7, v57);
    v50 = *v55;
    v51 = v55[1];
    v52 = 0;
    switch(v51 >> 62)
    {
      case 1uLL:
        v52 = v50 >> 32;
        goto LABEL_72;
      case 2uLL:
        v52 = *(v50 + 24);
        goto LABEL_72;
      case 3uLL:
        goto LABEL_73;
      default:
        v52 = BYTE6(v51);
LABEL_72:
        if ((v52 - 0x1000000000000000) >> 61 != 7)
        {
          goto LABEL_99;
        }

LABEL_73:
        if (v7 < 8 * v52)
        {
LABEL_33:
          ++v7;
          continue;
        }

        __break(1u);
        return v7;
    }
  }
}

void *sub_270770CFC(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280829EB8, &unk_2707B0388);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * ((v5 - 32) / 8);
  return v4;
}

void OUTLINED_FUNCTION_7_17()
{

  HIDReport.subscript.setter(v0, v1, v3, v2);
}

uint64_t TouchSensitiveButtonGesture.dispatch(report:)()
{
  OUTLINED_FUNCTION_11_9();
  _s12UniversalHID9HIDReportV_2ass5Int16VSi_AFmtcig_0();
  OUTLINED_FUNCTION_11_9();
  _s12UniversalHID9HIDReportV_2ass5Int16VSi_AFmtcig_0();
  v0 = OUTLINED_FUNCTION_0_37();
  TouchSensitiveButtonReport.x.getter(v0, v1);
  v2 = OUTLINED_FUNCTION_0_37();
  TouchSensitiveButtonReport.y.getter(v2, v3);
  v4 = OUTLINED_FUNCTION_0_37();
  TouchSensitiveButtonReport.deltaX.getter(v4, v5);
  v6 = OUTLINED_FUNCTION_0_37();
  TouchSensitiveButtonReport.deltaY.getter(v6, v7);
  v8 = OUTLINED_FUNCTION_0_37();
  TouchSensitiveButtonReport.majorRadius.getter(v8, v9);
  v10 = OUTLINED_FUNCTION_0_37();
  TouchSensitiveButtonReport.minorRadius.getter(v10, v11);
  OUTLINED_FUNCTION_11_9();
  _s12UniversalHID9HIDReportV_2ass4Int8VSi_AFmtcig_0();
  OUTLINED_FUNCTION_11_9();
  HIDReport.subscript.getter(v12, v13, v14);
  mach_absolute_time();
  TouchSensitiveButtonEventWithRadius = IOHIDEventCreateTouchSensitiveButtonEventWithRadius();
  v16 = OUTLINED_FUNCTION_0_37();
  TouchSensitiveButtonReport.forceStageCollectionRange.getter(v16, v17);
  v18 = sub_2707A82D0();
  sub_27070E5A4(v18, v19);
  _s12UniversalHID9HIDReportV_2ass4Int8VSi_AFmtcig_0();
  _s12UniversalHID9HIDReportV_2ass4Int8VSi_AFmtcig_0();
  v20 = OUTLINED_FUNCTION_17_4();
  ForceStageCollection.nextThreshold.getter(v20, v21);
  v22 = OUTLINED_FUNCTION_17_4();
  ForceStageCollection.pressedThreshold.getter(v22, v23);
  v24 = OUTLINED_FUNCTION_17_4();
  ForceStageCollection.releasedThreshold.getter(v24, v25);
  v26 = OUTLINED_FUNCTION_17_4();
  ForceStageCollection.normalizedForce.getter(v26, v27);
  v28 = OUTLINED_FUNCTION_17_4();
  ForceStageCollection.normalizedForceVelocity.getter(v28, v29);
  mach_absolute_time();
  ForceStageEvent = IOHIDEventCreateForceStageEvent();
  IOHIDEventAppendEvent();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280829528, &qword_2707A9F30);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_2707A9CF0;
  *(v31 + 56) = &type metadata for TouchSensitiveButtonEvent;
  *(v31 + 64) = &protocol witness table for TouchSensitiveButtonEvent;
  *(v31 + 32) = TouchSensitiveButtonEventWithRadius;
  v32 = TouchSensitiveButtonEventWithRadius;

  v33 = OUTLINED_FUNCTION_17_4();
  sub_270708D74(v33, v34);

  return v31;
}

uint64_t HIDAccelerationTable.init(data:)()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  v1 = (v0 + 16);
  OUTLINED_FUNCTION_1_28();
  v5 = sub_2707716C0(v2, v3, v4);
  OUTLINED_FUNCTION_1_28();
  v9 = sub_2707716C0(v6, v7, v8);
  if (v9 != 1077030960 && v9 != 1431519786)
  {

    v33 = OUTLINED_FUNCTION_20_3();
    sub_270708D74(v33, v34);
    return 0;
  }

  OUTLINED_FUNCTION_1_28();
  v15 = sub_27077179C(v12, v13, v14);
  if (v15)
  {
    v45 = v5;
    v51 = MEMORY[0x277D84F90];
    v46 = v15;
    sub_27071A9E8(0, v15, 0);
    v16 = v51;
    result = swift_beginAccess();
    v17 = 0;
    while (1)
    {
      v49 = v17;
      v18 = *v1 + 32;
      if (__OFADD__(*v1, 32))
      {
        goto LABEL_38;
      }

      OUTLINED_FUNCTION_20_3();
      if (HIDReport.count.getter() < v18)
      {
        break;
      }

      OUTLINED_FUNCTION_1_28();
      result = _s12UniversalHID9HIDReportV_2ass5Int32VSi_AFmtcig_0();
      v48 = result;
      *v1 = v18;
      v19 = v18 + 16;
      if (__OFADD__(v18, 16))
      {
        goto LABEL_39;
      }

      OUTLINED_FUNCTION_20_3();
      if (HIDReport.count.getter() < v19)
      {
        break;
      }

      OUTLINED_FUNCTION_1_28();
      result = _s12UniversalHID9HIDReportV_2ass5Int16VSi_AFmtcig_0();
      *v1 = v19;
      if (result)
      {
        v47 = v16;
        v20 = bswap32(result) >> 16;
        v50 = MEMORY[0x277D84F90];
        result = sub_27071AA08(0, v20, 0);
        v21 = v50;
        while (v20)
        {
          v22 = v19 + 32;
          if (__OFADD__(v19, 32))
          {
            goto LABEL_36;
          }

          OUTLINED_FUNCTION_20_3();
          if (HIDReport.count.getter() < v22)
          {
            goto LABEL_31;
          }

          OUTLINED_FUNCTION_1_28();
          result = _s12UniversalHID9HIDReportV_2ass5Int32VSi_AFmtcig_0();
          *v1 = v22;
          v23 = v19 + 64;
          if (__OFADD__(v22, 32))
          {
            goto LABEL_37;
          }

          v24 = result;
          OUTLINED_FUNCTION_20_3();
          if (HIDReport.count.getter() < v23)
          {
LABEL_31:
            sub_27077189C();
            v35 = swift_allocError();
            swift_willThrow();
            v36 = OUTLINED_FUNCTION_20_3();
            sub_270708D74(v36, v37);

            goto LABEL_2;
          }

          OUTLINED_FUNCTION_1_28();
          result = _s12UniversalHID9HIDReportV_2ass5Int32VSi_AFmtcig_0();
          *v1 = v23;
          v26 = *(v21 + 16);
          v25 = *(v21 + 24);
          v27 = v21;
          if (v26 >= v25 >> 1)
          {
            v44 = result;
            sub_27071AA08((v25 > 1), v26 + 1, 1);
            result = v44;
            v27 = v21;
          }

          *(v27 + 16) = v26 + 1;
          v28 = v27 + 16 * v26;
          *(v28 + 32) = vcvtd_n_f64_s32(bswap32(v24), 0x10uLL);
          *(v28 + 40) = vcvtd_n_f64_s32(bswap32(result), 0x10uLL);
          v19 += 64;
          --v20;
          v21 = v27;
          if (!v20)
          {
            v16 = v47;
            goto LABEL_27;
          }
        }

        __break(1u);
LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
        return result;
      }

      v21 = MEMORY[0x277D84F90];
LABEL_27:
      v29 = v49;
      v31 = *(v16 + 16);
      v30 = *(v16 + 24);
      if (v31 >= v30 >> 1)
      {
        result = sub_27071A9E8((v30 > 1), v31 + 1, 1);
        v29 = v49;
      }

      v17 = v29 + 1;
      *(v16 + 16) = v31 + 1;
      v32 = v16 + 16 * v31;
      *(v32 + 32) = vcvtd_n_f64_s32(bswap32(v48), 0x10uLL);
      *(v32 + 40) = v21;
      if (v17 == v46)
      {
        v42 = OUTLINED_FUNCTION_20_3();
        sub_270708D74(v42, v43);

        v5 = v45;
        return vcvtd_n_f64_s32(v5, 0x10uLL);
      }
    }

    v40 = OUTLINED_FUNCTION_20_3();
    sub_270708D74(v40, v41);

LABEL_2:

    return 0;
  }

  v38 = OUTLINED_FUNCTION_20_3();
  sub_270708D74(v38, v39);

  return vcvtd_n_f64_s32(v5, 0x10uLL);
}

uint64_t sub_2707716C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_beginAccess();
  v6 = *(a1 + 16);
  v7 = v6 + 32;
  if (__OFADD__(v6, 32))
  {
    __break(1u);
  }

  else
  {
    if (HIDReport.count.getter() >= v7)
    {
      a3 = bswap32(_s12UniversalHID9HIDReportV_2ass5Int32VSi_AFmtcig_0());
      swift_beginAccess();
      *(a1 + 16) = v7;
    }

    else
    {
      sub_27077189C();
      swift_allocError();
      swift_willThrow();
    }

    return a3;
  }

  return result;
}

uint64_t sub_27077179C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_beginAccess();
  v6 = *(a1 + 16);
  v7 = v6 + 16;
  if (__OFADD__(v6, 16))
  {
    __break(1u);
  }

  else
  {
    if (HIDReport.count.getter() >= v7)
    {
      a3 = bswap32(_s12UniversalHID9HIDReportV_2ass5Int16VSi_AFmtcig_0()) >> 16;
      swift_beginAccess();
      *(a1 + 16) = v7;
    }

    else
    {
      sub_27077189C();
      swift_allocError();
      swift_willThrow();
    }

    return a3;
  }

  return result;
}

unint64_t sub_27077189C()
{
  result = qword_280829EC0;
  if (!qword_280829EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280829EC0);
  }

  return result;
}

uint64_t sub_270771908(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_270771948(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_270771990(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
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

uint64_t sub_2707719D0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t ForceStageEvent.transition.getter(uint64_t a1)
{
  result = IOHIDEventGetIntegerValue();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  if (result > 0xFF)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t ForceStageEvent.init(event:)(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v2);
  if ((*(v3 + 24))(v2, v3) == 41)
  {
    v4 = a1[3];
    v5 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v4);
    v6 = (*(v5 + 352))(v4, v5);
  }

  else
  {
    v6 = 0;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v6;
}

uint64_t ForceStageEvent.init(time:stage:transition:nextThreshold:pressedThreshold:releasedThreshold:normalizedForce:normalizedForceVelocity:flags:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6, double a7, double a8, double a9)
{
  if (a2 > 0xFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if ((a3 | a2) < 0)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (a3 <= 0xFFFFFFFFLL)
  {
    return IOHIDEventCreateForceStageEvent();
  }

LABEL_7:
  __break(1u);
  return v9;
}

uint64_t ForceStageEvent.stage.modify(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_2_2(a1, a2);
  *v2 = IOHIDEventGetIntegerValue();
  return OUTLINED_FUNCTION_20();
}

unint64_t ForceStageEvent.transition.modify(uint64_t a1, uint64_t a2)
{
  *a1 = a2;
  result = IOHIDEventGetIntegerValue();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result <= 0xFF)
  {
    *(a1 + 8) = result;
    return OUTLINED_FUNCTION_20();
  }

  __break(1u);
  return result;
}

uint64_t ForceStageEvent.nextThreshold.modify(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_2_2(a1, a2);
  IOHIDEventGetDoubleValue();
  *v2 = v3;
  return OUTLINED_FUNCTION_20();
}

uint64_t ForceStageEvent.pressedThreshold.modify(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_2_2(a1, a2);
  IOHIDEventGetDoubleValue();
  *v2 = v3;
  return OUTLINED_FUNCTION_20();
}

uint64_t ForceStageEvent.releasedThreshold.modify(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_2_2(a1, a2);
  IOHIDEventGetDoubleValue();
  *v2 = v3;
  return OUTLINED_FUNCTION_20();
}

uint64_t ForceStageEvent.normalizedForce.modify(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_2_2(a1, a2);
  IOHIDEventGetDoubleValue();
  *v2 = v3;
  return OUTLINED_FUNCTION_20();
}

uint64_t ForceStageEvent.normalizedForceVelocity.modify(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_2_2(a1, a2);
  IOHIDEventGetDoubleValue();
  *v2 = v3;
  return OUTLINED_FUNCTION_20();
}

uint64_t sub_270771E78@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = ForceStageEvent.init(event:)(a1);
  *a2 = result;
  return result;
}

uint64_t sub_270771EA0(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_4_2(a1);
  result = ForceStageEvent.stage.getter(v2);
  *v1 = result;
  return result;
}

unint64_t sub_270771ED4(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_4_2(a1);
  result = ForceStageEvent.transition.getter(v2);
  *v1 = result;
  return result;
}

uint64_t ButtonEvent.init(event:)(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v2);
  if ((*(v3 + 24))(v2, v3) == 2)
  {
    v4 = a1[3];
    v5 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v4);
    v6 = (*(v5 + 352))(v4, v5);
  }

  else
  {
    v6 = 0;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v6;
}

uint64_t ButtonEvent.buttonClickCount.setter(uint64_t result, uint64_t a2)
{
  if ((result - 255) >= 0xFFFFFFFFFFFFFF02)
  {
    return OUTLINED_FUNCTION_5_15(a2, a2, result);
  }

  __break(1u);
  return result;
}

uint64_t ButtonEvent.buttonClickCount.modify(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_2_2(a1, a2);
  *v2 = IOHIDEventGetIntegerValue();
  return OUTLINED_FUNCTION_20();
}

uint64_t *sub_27077217C(uint64_t *result, uint64_t a2)
{
  v2 = *result;
  v3 = *result - 255;
  if (a2)
  {
    if (v3 >= 0xFFFFFFFFFFFFFF02)
    {
      return OUTLINED_FUNCTION_5_15(result[1], a2, v2);
    }

    __break(1u);
  }

  if (v3 < 0xFFFFFFFFFFFFFF02)
  {
    __break(1u);
    return result;
  }

  return OUTLINED_FUNCTION_5_15(result[1], a2, v2);
}

uint64_t ButtonEvent.buttonMask.modify(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_2_2(a1, a2);
  *v2 = IOHIDEventGetIntegerValue();
  return OUTLINED_FUNCTION_20();
}

uint64_t sub_270772218(uint64_t result, uint64_t a2)
{
  if ((result - 0xFFFFFFFFLL) >= 0xFFFFFFFF00000002)
  {
    return OUTLINED_FUNCTION_3_15();
  }

  __break(1u);
  return result;
}

uint64_t ButtonEvent.buttonNumber.modify(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_2_2(a1, a2);
  *v2 = IOHIDEventGetIntegerValue();
  return OUTLINED_FUNCTION_20();
}

void *sub_270772294(void *result, char a2)
{
  v2 = *result - 0xFFFFFFFFLL;
  if (a2)
  {
    if (v2 >= 0xFFFFFFFF00000002)
    {
      return OUTLINED_FUNCTION_3_15();
    }

    __break(1u);
  }

  if (v2 < 0xFFFFFFFF00000002)
  {
    __break(1u);
    return result;
  }

  return OUTLINED_FUNCTION_3_15();
}

uint64_t ButtonEvent.buttonPressure.modify(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_2_2(a1, a2);
  IOHIDEventGetFloatValue();
  *v2 = v3;
  return OUTLINED_FUNCTION_20();
}

uint64_t (*ButtonEvent.buttonState.modify(uint64_t a1, uint64_t a2))(uint64_t a1, uint64_t a2)
{
  *a1 = a2;
  *(a1 + 8) = IOHIDEventGetIntegerValue() != 0;
  return sub_2707723A4;
}

uint64_t sub_2707723B4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = ButtonEvent.init(event:)(a1);
  *a2 = result;
  return result;
}

uint64_t sub_2707723DC(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_4_2(a1);
  result = ButtonEvent.buttonClickCount.getter(v2);
  *v1 = result;
  return result;
}

uint64_t sub_270772410(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_4_2(a1);
  result = ButtonEvent.buttonMask.getter(v2);
  *v1 = result;
  return result;
}

uint64_t sub_270772444(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_4_2(a1);
  result = ButtonEvent.buttonNumber.getter(v2);
  *v1 = result;
  return result;
}

BOOL sub_2707724AC(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_4_2(a1);
  result = ButtonEvent.buttonState.getter(v2);
  *v1 = result;
  return result;
}

unint64_t HIDForceStageTransition.init(rawValue:)(unint64_t result)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  if (result > 0xFF)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t HIDForceStageTransition.hashValue.getter(uint64_t a1)
{
  sub_2707A8F60();
  sub_2707A8F80();
  return sub_2707A8FC0();
}

uint64_t sub_270772624(uint64_t a1)
{
  v2 = *v1;
  sub_2707A8F60();
  HIDForceStageTransition.hash(into:)(v4, v2);
  return sub_2707A8FC0();
}

uint64_t HIDForceStageTransition.description.getter(char a1)
{
  switch(a1)
  {
    case 0:
      return 1701736302;
    case 2:
      return 1953069157;
    case 1:
      return 0x7265746E65;
  }

  return sub_2707A8E70();
}

unint64_t sub_2707726FC()
{
  result = qword_280829EC8;
  if (!qword_280829EC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280829ED0, &qword_2707B0620);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280829EC8);
  }

  return result;
}

unint64_t sub_270772764()
{
  result = qword_280829ED8;
  if (!qword_280829ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280829ED8);
  }

  return result;
}

uint64_t FixedWidthInteger.init(scaledValue:logicalMinimum:logicalMaximum:)@<X0>(char *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a5@<X8>, double a6@<D0>)
{
  v47 = a2;
  v48 = a5;
  v9 = sub_2707A8930();
  v45 = *(v9 - 8);
  v46 = v9;
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v45 - v11;
  v13 = *(a3 - 8);
  MEMORY[0x28223BE20](v14, v15);
  v17 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18, v19);
  v22 = (&v45 - v21);
  v23 = *(v13 + 16);
  v49 = a1;
  v23(&v45 - v21, a1, a3, v20);
  OUTLINED_FUNCTION_12_1();
  if (sub_2707A89E0() < 65)
  {
    OUTLINED_FUNCTION_12_1();
    v27 = sub_2707A89F0();
    OUTLINED_FUNCTION_12_1();
    v28 = sub_2707A89D0();
    v29 = OUTLINED_FUNCTION_1_30();
    v30(v29);
    if (v27)
    {
      v26 = v28;
    }

    else
    {
      v26 = v28;
    }
  }

  else
  {
    sub_270715DBC();
    sub_270715E10();
    OUTLINED_FUNCTION_17_1(&v50, v22, MEMORY[0x277D839F8]);
    v24 = OUTLINED_FUNCTION_1_30();
    v25(v24);
    v26 = v50;
  }

  v31 = v47;
  (v23)(v17, v47, a3);
  OUTLINED_FUNCTION_12_1();
  if (sub_2707A89E0() <= 64)
  {
    v33 = v31;
    OUTLINED_FUNCTION_12_1();
    v34 = sub_2707A89F0();
    OUTLINED_FUNCTION_12_1();
    v35 = sub_2707A89D0();
    v22(v17, a3);
    if (v34)
    {
      v32 = v35;
    }

    else
    {
      v32 = v35;
    }

    v31 = v33;
  }

  else
  {
    sub_270715DBC();
    sub_270715E10();
    OUTLINED_FUNCTION_17_1(&v50, v17, MEMORY[0x277D839F8]);
    v22(v17, a3);
    v32 = v50;
  }

  OUTLINED_FUNCTION_12_1();
  v36 = sub_2707A89F0();
  v37 = v32 * a6;
  v38 = fabs(a6) * v26;
  if (a6 < 0.0)
  {
    v37 = v38;
  }

  if (v36)
  {
    v39 = v37;
  }

  else
  {
    v39 = v26 + (v32 - v26) * a6;
  }

  if (v39 > v26)
  {
    v40 = v39;
  }

  else
  {
    v40 = v26;
  }

  if (v32 < v40)
  {
    v40 = v32;
  }

  v50 = v40;
  sub_270715DBC();
  sub_2707A89C0();
  if (__swift_getEnumTagSinglePayload(v12, 1, a3) == 1)
  {
    (*(v45 + 8))(v12, v46);
    v41 = 0.0 - v32;
    if (0.0 - v32 != INFINITY)
    {
      *&v41 += (*&v41 >> 63) | 1;
    }

    v42 = -v41;
    v43 = v26 + 0.0;
    if (v26 != INFINITY)
    {
      *&v43 += (*&v43 >> 63) | 1;
    }

    if (v39 <= v42)
    {
      if (v39 >= v43)
      {
        if (v39 > v43)
        {
          v43 = v39;
        }

        if (v43 <= v42)
        {
          v42 = v43;
        }

        v50 = v42;
        sub_2707A8A00();
        v22(v31, a3);
        return (v22)(v49, a3);
      }

      else
      {
        v22(v31, a3);
        return (*(v13 + 32))(v48, v49, a3);
      }
    }

    else
    {
      v22(v49, a3);
      return (*(v13 + 32))(v48, v31, a3);
    }
  }

  else
  {
    v22(v31, a3);
    v22(v49, a3);
    return (*(v13 + 32))(v48, v12, a3);
  }
}

unint64_t HIDDeviceType.description.getter(char a1)
{
  result = 0x65746F6D6552;
  switch(a1)
  {
    case 1:
      result = 0x657A697469676944;
      break;
    case 2:
      result = 0x646170656D6147;
      break;
    case 3:
      result = 0x6472616F6279654BLL;
      break;
    case 4:
      result = 0x6573756F4DLL;
      break;
    case 5:
      result = 0x6461706B63617254;
      break;
    case 6:
      result = 0xD000000000000014;
      break;
    default:
      return result;
  }

  return result;
}

UniversalHID::HIDDeviceType_optional __swiftcall HIDDeviceType.init(deviceTypeHint:)(Swift::String deviceTypeHint)
{
  object = deviceTypeHint._object;
  countAndFlagsBits = deviceTypeHint._countAndFlagsBits;
  v3 = deviceTypeHint._countAndFlagsBits == 0x6573756F4DLL && deviceTypeHint._object == 0xE500000000000000;
  if (v3 || (sub_2707A8EA0() & 1) != 0)
  {

    return 4;
  }

  else if (countAndFlagsBits == 0x6461706B63617254 && object == 0xE800000000000000)
  {

    return 5;
  }

  else
  {
    v6 = sub_2707A8EA0();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_270772EB8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x525654656C707061 && a2 == 0xED000065746F6D65;
  if (v4 || (sub_2707A8EA0() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x657A697469676964 && a2 == 0xE900000000000072;
    if (v6 || (sub_2707A8EA0() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x646170656D6167 && a2 == 0xE700000000000000;
      if (v7 || (sub_2707A8EA0() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6472616F6279656BLL && a2 == 0xE800000000000000;
        if (v8 || (sub_2707A8EA0() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6573756F6DLL && a2 == 0xE500000000000000;
          if (v9 || (sub_2707A8EA0() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x6461706B63617274 && a2 == 0xE800000000000000;
            if (v10 || (sub_2707A8EA0() & 1) != 0)
            {

              return 5;
            }

            else if (a1 == 0xD000000000000014 && 0x80000002707B4350 == a2)
            {

              return 6;
            }

            else
            {
              v12 = sub_2707A8EA0();

              if (v12)
              {
                return 6;
              }

              else
              {
                return 7;
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_2707730FC(char a1)
{
  result = 0x525654656C707061;
  switch(a1)
  {
    case 1:
      result = 0x657A697469676964;
      break;
    case 2:
      result = 0x646170656D6167;
      break;
    case 3:
      result = 0x6472616F6279656BLL;
      break;
    case 4:
      result = 0x6573756F6DLL;
      break;
    case 5:
      result = 0x6461706B63617274;
      break;
    case 6:
      result = 0xD000000000000014;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_270773234@<X0>(_BYTE *a1@<X8>)
{
  result = OUTLINED_FUNCTION_15_0();
  *a1 = result & 1;
  return result;
}

uint64_t sub_270773260(uint64_t a1)
{
  v2 = sub_2707749A0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_27077329C(uint64_t a1)
{
  v2 = sub_2707749A0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_270773304@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_270772EB8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_27077332C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_270710AF8();
  *a1 = result;
  return result;
}

uint64_t sub_270773354(uint64_t a1)
{
  v2 = sub_270774754();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_270773390(uint64_t a1)
{
  v2 = sub_270774754();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2707733CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2707731F4(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_2707733F8(uint64_t a1)
{
  v2 = sub_27077494C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_270773434(uint64_t a1)
{
  v2 = sub_27077494C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_270773470(uint64_t a1)
{
  v2 = sub_2707748F8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2707734AC(uint64_t a1)
{
  v2 = sub_2707748F8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2707734E8(uint64_t a1)
{
  v2 = sub_2707748A4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_270773524(uint64_t a1)
{
  v2 = sub_2707748A4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_270773560(uint64_t a1)
{
  v2 = sub_270774850();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_27077359C(uint64_t a1)
{
  v2 = sub_270774850();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2707735D8(uint64_t a1)
{
  v2 = sub_2707747A8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_270773614(uint64_t a1)
{
  v2 = sub_2707747A8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_270773650(uint64_t a1)
{
  v2 = sub_2707747FC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_27077368C(uint64_t a1)
{
  v2 = sub_2707747FC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t HIDDeviceType.encode(to:)(void *a1, uint64_t a2)
{
  v87 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280829EE0, &qword_2707B0750);
  OUTLINED_FUNCTION_0_1();
  v85 = v4;
  v86 = v3;
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x28223BE20](v5, v6);
  OUTLINED_FUNCTION_4_22();
  v84 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280829EE8, &qword_2707B0758);
  OUTLINED_FUNCTION_0_1();
  v82 = v9;
  v83 = v8;
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x28223BE20](v10, v11);
  OUTLINED_FUNCTION_4_22();
  v81 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280829EF0, &qword_2707B0760);
  OUTLINED_FUNCTION_0_1();
  v79 = v14;
  v80 = v13;
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x28223BE20](v15, v16);
  OUTLINED_FUNCTION_4_22();
  v78 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280829EF8, &qword_2707B0768);
  OUTLINED_FUNCTION_0_1();
  v76 = v19;
  v77 = v18;
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x28223BE20](v20, v21);
  OUTLINED_FUNCTION_4_22();
  v75 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280829F00, &qword_2707B0770);
  OUTLINED_FUNCTION_0_1();
  v73 = v24;
  v74 = v23;
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x28223BE20](v25, v26);
  OUTLINED_FUNCTION_4_22();
  v72 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280829F08, &qword_2707B0778);
  OUTLINED_FUNCTION_0_1();
  v70 = v29;
  v71 = v28;
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x28223BE20](v30, v31);
  v33 = &v68 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280829F10, &qword_2707B0780);
  OUTLINED_FUNCTION_0_1();
  v69 = v35;
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x28223BE20](v36, v37);
  v39 = &v68 - v38;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280829F18, &qword_2707B0788);
  OUTLINED_FUNCTION_0_1();
  v42 = v41;
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x28223BE20](v43, v44);
  v46 = &v68 - v45;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_270774754();
  sub_2707A8FE0();
  switch(v87)
  {
    case 1:
      v89 = 1;
      v58 = sub_27077494C();
      OUTLINED_FUNCTION_2_25(&type metadata for HIDDeviceType.DigitizerCodingKeys, &v89, v59, v60, v58);
      v51 = v70;
      v50 = v71;
      goto LABEL_9;
    case 2:
      v90 = 2;
      v52 = sub_2707748F8();
      v33 = v72;
      OUTLINED_FUNCTION_2_25(&type metadata for HIDDeviceType.GamepadCodingKeys, &v90, v53, v54, v52);
      v51 = v73;
      v50 = v74;
      goto LABEL_9;
    case 3:
      v91 = 3;
      v55 = sub_2707748A4();
      v33 = v75;
      OUTLINED_FUNCTION_2_25(&type metadata for HIDDeviceType.KeyboardCodingKeys, &v91, v56, v57, v55);
      v51 = v76;
      v50 = v77;
      goto LABEL_9;
    case 4:
      v92 = 4;
      v47 = sub_270774850();
      v33 = v78;
      OUTLINED_FUNCTION_2_25(&type metadata for HIDDeviceType.MouseCodingKeys, &v92, v48, v49, v47);
      v51 = v79;
      v50 = v80;
      goto LABEL_9;
    case 5:
      v93 = 5;
      v61 = sub_2707747FC();
      v33 = v81;
      OUTLINED_FUNCTION_2_25(&type metadata for HIDDeviceType.TrackpadCodingKeys, &v93, v62, v63, v61);
      v51 = v82;
      v50 = v83;
      goto LABEL_9;
    case 6:
      v94 = 6;
      v64 = sub_2707747A8();
      v33 = v84;
      OUTLINED_FUNCTION_2_25(&type metadata for HIDDeviceType.TouchSensitiveButtonCodingKeys, &v94, v65, v66, v64);
      v51 = v85;
      v50 = v86;
LABEL_9:
      (*(v51 + 8))(v33, v50);
      break;
    default:
      v88 = 0;
      sub_2707749A0();
      sub_2707A8DC0();
      (*(v69 + 8))(v39, v34);
      break;
  }

  return (*(v42 + 8))(v46, v40);
}

uint64_t HIDDeviceType.init(from:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280829F60, &qword_2707B0790);
  OUTLINED_FUNCTION_0_1();
  v106 = v2;
  v107 = v3;
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x28223BE20](v4, v5);
  OUTLINED_FUNCTION_4_22();
  v112 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280829F68, &qword_2707B0798);
  OUTLINED_FUNCTION_0_1();
  v104 = v7;
  v105 = v8;
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x28223BE20](v9, v10);
  OUTLINED_FUNCTION_4_22();
  v111 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280829F70, &qword_2707B07A0);
  OUTLINED_FUNCTION_0_1();
  v102 = v12;
  v103 = v13;
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x28223BE20](v14, v15);
  OUTLINED_FUNCTION_4_22();
  v109 = v16;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280829F78, &qword_2707B07A8);
  OUTLINED_FUNCTION_0_1();
  v101 = v17;
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x28223BE20](v18, v19);
  OUTLINED_FUNCTION_4_22();
  v108 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280829F80, &qword_2707B07B0);
  OUTLINED_FUNCTION_0_1();
  v99 = v22;
  v100 = v21;
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x28223BE20](v23, v24);
  OUTLINED_FUNCTION_4_22();
  v110 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280829F88, &qword_2707B07B8);
  OUTLINED_FUNCTION_0_1();
  v96 = v27;
  v97 = v26;
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x28223BE20](v28, v29);
  v31 = &v90 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280829F90, &qword_2707B07C0);
  OUTLINED_FUNCTION_0_1();
  v95 = v33;
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x28223BE20](v34, v35);
  v37 = &v90 - v36;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280829F98, &qword_2707B07C8);
  OUTLINED_FUNCTION_0_1();
  v40 = v39;
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x28223BE20](v41, v42);
  v44 = &v90 - v43;
  v45 = a1[3];
  v113 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v45);
  sub_270774754();
  v46 = v114;
  sub_2707A8FD0();
  if (v46)
  {
    return __swift_destroy_boxed_opaque_existential_1(v113);
  }

  v93 = v37;
  v92 = v32;
  v94 = v31;
  v47 = v110;
  v48 = v111;
  v49 = v112;
  v114 = v40;
  v50 = sub_2707A8DB0();
  v54 = sub_2707749F4(v50, 0);
  if (v52 == v53 >> 1)
  {
LABEL_8:
    v61 = sub_2707A8B30();
    swift_allocError();
    v63 = v62;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280829FA0, &qword_2707B07D0);
    *v63 = &type metadata for HIDDeviceType;
    sub_2707A8D00();
    sub_2707A8B20();
    (*(*(v61 - 8) + 104))(v63, *MEMORY[0x277D84160], v61);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v114 + 8))(v44, v38);
    return __swift_destroy_boxed_opaque_existential_1(v113);
  }

  v91 = v38;
  if (v52 >= (v53 >> 1))
  {
    __break(1u);
    JUMPOUT(0x270774508);
  }

  v90 = *(v51 + v52);
  sub_270774A3C(v52 + 1, v53 >> 1, v54, v51, v52, v53);
  v56 = v55;
  v58 = v57;
  swift_unknownObjectRelease();
  if (v56 != v58 >> 1)
  {
    v38 = v91;
    goto LABEL_8;
  }

  switch(v90)
  {
    case 1:
      v116 = 1;
      v80 = sub_27077494C();
      v47 = v94;
      OUTLINED_FUNCTION_1_31(&type metadata for HIDDeviceType.DigitizerCodingKeys, &v116, v81, v82, v80);
      swift_unknownObjectRelease();
      v75 = v96;
      v74 = v97;
      goto LABEL_14;
    case 2:
      v117 = 2;
      v71 = sub_2707748F8();
      OUTLINED_FUNCTION_1_31(&type metadata for HIDDeviceType.GamepadCodingKeys, &v117, v72, v73, v71);
      swift_unknownObjectRelease();
      v75 = v99;
      v74 = v100;
LABEL_14:
      (*(v75 + 8))(v47, v74);
      goto LABEL_18;
    case 3:
      v118 = 3;
      v76 = sub_2707748A4();
      v77 = v108;
      OUTLINED_FUNCTION_1_31(&type metadata for HIDDeviceType.KeyboardCodingKeys, &v118, v78, v79, v76);
      swift_unknownObjectRelease();
      (*(v101 + 8))(v77, v98);
      goto LABEL_18;
    case 4:
      v119[0] = 4;
      v65 = sub_270774850();
      v66 = v109;
      OUTLINED_FUNCTION_1_31(&type metadata for HIDDeviceType.MouseCodingKeys, v119, v67, v68, v65);
      swift_unknownObjectRelease();
      v69 = v102;
      v70 = v103;
      goto LABEL_17;
    case 5:
      v119[1] = 5;
      sub_2707747FC();
      v83 = v91;
      sub_2707A8CF0();
      swift_unknownObjectRelease();
      (*(v105 + 8))(v48, v104);
      v87 = OUTLINED_FUNCTION_5_19();
      v89 = v83;
      break;
    case 6:
      v120 = 6;
      v84 = sub_2707747A8();
      v66 = v49;
      OUTLINED_FUNCTION_1_31(&type metadata for HIDDeviceType.TouchSensitiveButtonCodingKeys, &v120, v85, v86, v84);
      swift_unknownObjectRelease();
      v69 = v106;
      v70 = v107;
LABEL_17:
      (*(v70 + 8))(v66, v69);
LABEL_18:
      v87 = OUTLINED_FUNCTION_5_19();
      v89 = v49;
      break;
    default:
      v115 = 0;
      sub_2707749A0();
      v59 = v93;
      v60 = v91;
      sub_2707A8CF0();
      swift_unknownObjectRelease();
      (*(v95 + 8))(v59, v92);
      v87 = OUTLINED_FUNCTION_5_19();
      v89 = v60;
      break;
  }

  v88(v87, v89);
  __swift_destroy_boxed_opaque_existential_1(v113);
  return v90;
}

uint64_t sub_270774524@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = HIDDeviceType.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_2707745BC(uint64_t a1)
{
  v2 = *v1;
  sub_2707A8F60();
  HIDDeviceType.hash(into:)(v4, v2);
  return sub_2707A8FC0();
}

uint64_t HIDDeviceType.init(properties:)(uint64_t a1, void *a2)
{
  v3 = HIDServiceProperties.subscript.getter(0x7954656369766544, 0xEE00746E69486570);
  if (v4)
  {
    LOBYTE(v5) = HIDDeviceType.init(deviceTypeHint:)(*&v3);
    if (v5 != 7)
    {
      v8 = v5;

      return v8;
    }
  }

  v6 = HIDServiceProperties.primaryUsagePair.getter();

  v7 = HIWORD(v6);
  if (v6 != 1)
  {
    if (v6 == 65280)
    {
      if (v7 == 102)
      {
        return 6;
      }
    }

    else if (v6 == 13)
    {
      switch(v7)
      {
        case 4u:
          return 1;
        case 0xCu:
          return 5;
        case 5u:
          return 0;
      }
    }

    return 4;
  }

  if (v7 == 5)
  {
    v9 = 2;
  }

  else
  {
    v9 = 4;
  }

  if (v7 == 6)
  {
    return 3;
  }

  else
  {
    return v9;
  }
}

uint64_t HIDServiceProperties.deviceType.getter(uint64_t a1, void *a2)
{
  v3 = a2;

  return HIDDeviceType.init(properties:)(a1, v3);
}

unint64_t sub_270774754()
{
  result = qword_280829F20;
  if (!qword_280829F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280829F20);
  }

  return result;
}

unint64_t sub_2707747A8()
{
  result = qword_280829F28;
  if (!qword_280829F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280829F28);
  }

  return result;
}

unint64_t sub_2707747FC()
{
  result = qword_280829F30;
  if (!qword_280829F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280829F30);
  }

  return result;
}

unint64_t sub_270774850()
{
  result = qword_280829F38;
  if (!qword_280829F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280829F38);
  }

  return result;
}

unint64_t sub_2707748A4()
{
  result = qword_280829F40;
  if (!qword_280829F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280829F40);
  }

  return result;
}

unint64_t sub_2707748F8()
{
  result = qword_280829F48;
  if (!qword_280829F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280829F48);
  }

  return result;
}

unint64_t sub_27077494C()
{
  result = qword_280829F50;
  if (!qword_280829F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280829F50);
  }

  return result;
}

unint64_t sub_2707749A0()
{
  result = qword_280829F58;
  if (!qword_280829F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280829F58);
  }

  return result;
}

uint64_t sub_2707749F4(uint64_t result, uint64_t a2)
{
  if (__OFSUB__(0, a2))
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = *(result + 16);
  v3 = __OFADD__(a2, v2);
  v4 = a2 + v2;
  if (v3)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v4 < a2)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v4 < 0)
  {
LABEL_9:
    __break(1u);
  }

  return result;
}

uint64_t sub_270774A3C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (result < a5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if ((a6 >> 1) < result || (a6 >> 1) < a2)
  {
    goto LABEL_10;
  }

  if (a2 < a5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    return swift_unknownObjectRetain();
  }

LABEL_12:
  __break(1u);
  return result;
}

unint64_t sub_270774ABC()
{
  result = qword_280829FA8;
  if (!qword_280829FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280829FA8);
  }

  return result;
}

uint64_t sub_270774B24(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFA)
  {
    if (a2 + 6 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 6) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 7;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v5 = v6 - 7;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_270774BB0(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
        JUMPOUT(0x270774C7CLL);
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_270774D28()
{
  result = qword_280829FB0;
  if (!qword_280829FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280829FB0);
  }

  return result;
}

unint64_t sub_270774D80()
{
  result = qword_280829FB8;
  if (!qword_280829FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280829FB8);
  }

  return result;
}

unint64_t sub_270774DD8()
{
  result = qword_280829FC0;
  if (!qword_280829FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280829FC0);
  }

  return result;
}

unint64_t sub_270774E30()
{
  result = qword_280829FC8;
  if (!qword_280829FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280829FC8);
  }

  return result;
}

unint64_t sub_270774E88()
{
  result = qword_280829FD0;
  if (!qword_280829FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280829FD0);
  }

  return result;
}

unint64_t sub_270774EE0()
{
  result = qword_280829FD8;
  if (!qword_280829FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280829FD8);
  }

  return result;
}

unint64_t sub_270774F38()
{
  result = qword_280829FE0;
  if (!qword_280829FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280829FE0);
  }

  return result;
}

unint64_t sub_270774F90()
{
  result = qword_280829FE8;
  if (!qword_280829FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280829FE8);
  }

  return result;
}

unint64_t sub_270774FE8()
{
  result = qword_280829FF0;
  if (!qword_280829FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280829FF0);
  }

  return result;
}

unint64_t sub_270775040()
{
  result = qword_280829FF8;
  if (!qword_280829FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280829FF8);
  }

  return result;
}

unint64_t sub_270775098()
{
  result = qword_28082A000;
  if (!qword_28082A000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28082A000);
  }

  return result;
}

unint64_t sub_2707750F0()
{
  result = qword_28082A008;
  if (!qword_28082A008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28082A008);
  }

  return result;
}

unint64_t sub_270775148()
{
  result = qword_28082A010;
  if (!qword_28082A010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28082A010);
  }

  return result;
}

unint64_t sub_2707751A0()
{
  result = qword_28082A018;
  if (!qword_28082A018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28082A018);
  }

  return result;
}

unint64_t sub_2707751F8()
{
  result = qword_28082A020;
  if (!qword_28082A020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28082A020);
  }

  return result;
}

unint64_t sub_270775250()
{
  result = qword_28082A028;
  if (!qword_28082A028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28082A028);
  }

  return result;
}

unint64_t sub_2707752A8()
{
  result = qword_28082A030;
  if (!qword_28082A030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28082A030);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_31(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_2707A8CF0();
}

uint64_t OUTLINED_FUNCTION_2_25(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_2707A8DC0();
}

uint64_t RotationEvent.x.modify(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_2_2(a1, a2);
  IOHIDEventGetFloatValue();
  *v2 = v3;
  return OUTLINED_FUNCTION_20();
}

uint64_t RotationEvent.y.modify(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_2_2(a1, a2);
  IOHIDEventGetFloatValue();
  *v2 = v3;
  return OUTLINED_FUNCTION_20();
}

uint64_t RotationEvent.z.modify(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_2_2(a1, a2);
  IOHIDEventGetFloatValue();
  *v2 = v3;
  return OUTLINED_FUNCTION_20();
}

uint64_t RotationEvent.rotation.modify(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_2_2(a1, a2);
  IOHIDEventGetFloatValue();
  *v2 = v3;
  return OUTLINED_FUNCTION_20();
}

void HIDFixed.init(doubleValue:)()
{
  OUTLINED_FUNCTION_13_10();
  if (v3 ^ v4 | v2)
  {
    v5 = round(v1 * 65536.0);
    if (v5 > 2147483650.0)
    {
      v6 = 2147483650.0;
    }

    else
    {
      v6 = v5;
    }

    if (v5 > -2147483650.0)
    {
      if (v5 <= 2147483650.0 && (*&v5 & 0x7FFFFFFFFFFFFFFFLL) > v0)
      {
        __break(1u);
        goto LABEL_14;
      }
    }

    else
    {
      v6 = -2147483650.0;
    }

    if (v6 > -2147483650.0)
    {
      if (v6 < 2147483650.0)
      {
        return;
      }

LABEL_15:
      __break(1u);
      return;
    }

LABEL_14:
    __break(1u);
    goto LABEL_15;
  }
}

uint64_t static HIDFixed.+ infix(_:_:)(int a1, int a2)
{
  v2 = __OFADD__(a1, a2);
  result = (a1 + a2);
  if (v2)
  {
    __break(1u);
  }

  return result;
}

_DWORD *static HIDFixed.+= infix(_:_:)(_DWORD *result, int a2)
{
  if (__OFADD__(*result, a2))
  {
    __break(1u);
  }

  else
  {
    *result += a2;
  }

  return result;
}

uint64_t static HIDFixed.- infix(_:_:)(int a1, int a2)
{
  v2 = __OFSUB__(a1, a2);
  result = (a1 - a2);
  if (v2)
  {
    __break(1u);
  }

  return result;
}

_DWORD *static HIDFixed.-= infix(_:_:)(_DWORD *result, int a2)
{
  if (__OFSUB__(*result, a2))
  {
    __break(1u);
  }

  else
  {
    *result -= a2;
  }

  return result;
}

uint64_t sub_270775764@<X0>(int *a1@<X0>, int *a2@<X1>, _DWORD *a3@<X8>)
{
  result = static HIDFixed.+ infix(_:_:)(*a1, *a2);
  *a3 = result;
  return result;
}

uint64_t sub_27077579C@<X0>(int *a1@<X0>, int *a2@<X1>, _DWORD *a3@<X8>)
{
  result = static HIDFixed.- infix(_:_:)(*a1, *a2);
  *a3 = result;
  return result;
}

uint64_t sub_2707757D8(uint64_t result)
{
  if (result < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (result <= 0x7FFFFFFF)
  {
    return (result << 16);
  }

  __break(1u);
  return result;
}

uint64_t sub_270775800@<X0>(_DWORD *a1@<X8>)
{
  result = HIDFixed.init(integerLiteral:)();
  *a1 = result;
  return result;
}

void HIDFixed.init(floatLiteral:)()
{
  OUTLINED_FUNCTION_13_10();
  if (!(v2 ^ v3 | v1))
  {
    OUTLINED_FUNCTION_1_0();
    return;
  }

  v4 = OUTLINED_FUNCTION_10_12(v0);
  v7 = OUTLINED_FUNCTION_5_20(v4, v5, 2147483650.0);
  if (!v1 & v11)
  {
    if (v8 <= v9 && (v6 & 1) != 0)
    {
      __break(1u);
      goto LABEL_11;
    }
  }

  else
  {
    v7 = v10;
  }

  if (v7 <= -2147483650.0)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v7 < 2147483650.0)
  {
    OUTLINED_FUNCTION_8_16(v7);
    return;
  }

LABEL_12:
  __break(1u);
}

unint64_t HIDFixed.init<A>(exactly:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 24) + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](AssociatedTypeWitness, v7);
  v69[2] = v69 - v8;
  v9 = *(a2 - 8);
  MEMORY[0x28223BE20](v10, v11);
  v13 = v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v15);
  OUTLINED_FUNCTION_2_27();
  v16 = sub_2707A89F0();
  v69[1] = AssociatedTypeWitness;
  if ((v16 & 1) == 0)
  {
    OUTLINED_FUNCTION_2_27();
    v17 = sub_2707A89F0();
    OUTLINED_FUNCTION_2_27();
    v18 = sub_2707A89E0();
    if ((v17 & 1) == 0)
    {
      if (v18 >= 32)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }

    if (v18 <= 32)
    {
      swift_getAssociatedConformanceWitness();
      sub_2707A8EB0();
      OUTLINED_FUNCTION_11_12();
      v69[0] = v5;
      sub_2707A8E80();
      OUTLINED_FUNCTION_9_14();
      v43 = OUTLINED_FUNCTION_12_9(a1, v40, v41, v42);
      AssociatedTypeWitness = *(v9 + 8);
      v44 = OUTLINED_FUNCTION_20_1();
      AssociatedTypeWitness(v44);
      if (v43)
      {
        goto LABEL_20;
      }

      v45 = OUTLINED_FUNCTION_4_23();
      v46(v45);
      OUTLINED_FUNCTION_2_27();
      v47 = sub_2707A89D0();
      v48 = OUTLINED_FUNCTION_20_1();
      AssociatedTypeWitness(v48);
      if (v47 < -32768)
      {
        goto LABEL_20;
      }

      goto LABEL_10;
    }

LABEL_6:
    v70 = -32768;
    v19 = sub_270775EF8();
    OUTLINED_FUNCTION_3_17(v19, MEMORY[0x277D849A8], v19);
    OUTLINED_FUNCTION_9_14();
    v23 = OUTLINED_FUNCTION_12_9(a1, v20, v21, v22);
    v24 = OUTLINED_FUNCTION_1_32();
    AssociatedTypeWitness(v24);
    if (v23)
    {
      goto LABEL_20;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_2_27();
  if (sub_2707A89E0() >= 32)
  {
    goto LABEL_6;
  }

LABEL_9:
  v25 = OUTLINED_FUNCTION_4_23();
  v26(v25);
  OUTLINED_FUNCTION_2_27();
  v27 = sub_2707A89D0();
  v28 = OUTLINED_FUNCTION_1_32();
  AssociatedTypeWitness(v28);
  if (v27 < -32768)
  {
    goto LABEL_20;
  }

LABEL_10:
  OUTLINED_FUNCTION_2_27();
  v29 = sub_2707A89F0();
  OUTLINED_FUNCTION_2_27();
  v30 = sub_2707A89E0();
  if (v29)
  {
    if (v30 > 32)
    {
      goto LABEL_12;
    }

    goto LABEL_19;
  }

  if (v30 <= 31)
  {
LABEL_19:
    v34 = OUTLINED_FUNCTION_4_23();
    v35(v34);
    OUTLINED_FUNCTION_2_27();
    v36 = sub_2707A89D0();
    v37 = OUTLINED_FUNCTION_1_32();
    AssociatedTypeWitness(v37);
    if (v36 < 0x8000)
    {
      goto LABEL_13;
    }

LABEL_20:
    (AssociatedTypeWitness)(a1, a2);
    v38 = 0;
    v39 = 1;
    goto LABEL_43;
  }

LABEL_12:
  v70 = 0x7FFF;
  v31 = sub_270775EF8();
  OUTLINED_FUNCTION_3_17(v31, MEMORY[0x277D849A8], v31);
  OUTLINED_FUNCTION_9_14();
  v32 = sub_2707A8570();
  v33 = OUTLINED_FUNCTION_1_32();
  AssociatedTypeWitness(v33);
  if (v32)
  {
    goto LABEL_20;
  }

LABEL_13:
  (*(v9 + 16))(v13, a1, a2);
  OUTLINED_FUNCTION_2_27();
  if (sub_2707A89F0())
  {
    OUTLINED_FUNCTION_0_40();
    if (sub_2707A89E0() > 32)
    {
      v70 = 0x80000000;
      OUTLINED_FUNCTION_2_27();
      if (sub_2707A89F0())
      {
        OUTLINED_FUNCTION_0_40();
        if (sub_2707A89E0() < 32)
        {
          goto LABEL_31;
        }

        goto LABEL_26;
      }

      OUTLINED_FUNCTION_2_27();
      v49 = sub_2707A89F0();
      OUTLINED_FUNCTION_0_40();
      v50 = sub_2707A89E0();
      if (v49)
      {
        if (v50 > 32)
        {
LABEL_26:
          v51 = sub_270775EF8();
          OUTLINED_FUNCTION_3_17(v51, MEMORY[0x277D849A8], v51);
          OUTLINED_FUNCTION_9_14();
          v55 = OUTLINED_FUNCTION_12_9(v13, v52, v53, v54);
          v56 = OUTLINED_FUNCTION_20_1();
          result = (AssociatedTypeWitness)(v56);
          if ((v55 & 1) == 0)
          {
            goto LABEL_32;
          }

LABEL_44:
          __break(1u);
          return result;
        }

        swift_getAssociatedConformanceWitness();
        sub_2707A8EB0();
        OUTLINED_FUNCTION_11_12();
        sub_2707A8E80();
        OUTLINED_FUNCTION_9_14();
        v61 = OUTLINED_FUNCTION_12_9(v13, v58, v59, v60);
        v62 = OUTLINED_FUNCTION_20_1();
        result = (AssociatedTypeWitness)(v62);
        if (v61)
        {
          goto LABEL_44;
        }

LABEL_31:
        OUTLINED_FUNCTION_0_40();
        sub_2707A89D0();
        goto LABEL_32;
      }

      if (v50 < 32)
      {
        goto LABEL_31;
      }
    }
  }

LABEL_32:
  OUTLINED_FUNCTION_0_40();
  if (sub_2707A89E0() <= 32)
  {
    goto LABEL_37;
  }

  while (1)
  {
    v70 = 0x7FFFFFFF;
    OUTLINED_FUNCTION_2_27();
    v63 = sub_2707A89F0();
    OUTLINED_FUNCTION_0_40();
    v64 = sub_2707A89E0();
    if ((v63 & 1) == 0)
    {
      break;
    }

    if (v64 < 33)
    {
      goto LABEL_41;
    }

LABEL_35:
    v65 = sub_270775EF8();
    OUTLINED_FUNCTION_3_17(v65, MEMORY[0x277D849A8], v65);
    OUTLINED_FUNCTION_9_14();
    v66 = sub_2707A8570();
    v67 = OUTLINED_FUNCTION_20_1();
    AssociatedTypeWitness(v67);
    if (v66)
    {
      __break(1u);
LABEL_37:
      OUTLINED_FUNCTION_0_40();
      if (sub_2707A89E0() == 32)
      {
        OUTLINED_FUNCTION_2_27();
        if ((sub_2707A89F0() & 1) == 0)
        {
          continue;
        }
      }
    }

    goto LABEL_42;
  }

  if (v64 >= 32)
  {
    goto LABEL_35;
  }

LABEL_41:
  OUTLINED_FUNCTION_0_40();
  sub_2707A89D0();
LABEL_42:
  OUTLINED_FUNCTION_0_40();
  v68 = sub_2707A89D0();
  (AssociatedTypeWitness)(a1, a2);
  (AssociatedTypeWitness)(v13, a2);
  v39 = 0;
  v38 = v68 << 16;
LABEL_43:
  LOBYTE(v70) = v39;
  return v38 | (v39 << 32);
}

unint64_t sub_270775EF8()
{
  result = qword_28082A038;
  if (!qword_28082A038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28082A038);
  }

  return result;
}

uint64_t HIDFixed.magnitude.getter(uint64_t result)
{
  if (result >= 0)
  {
    return result;
  }

  else
  {
    return -result;
  }
}

unint64_t sub_270775F58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  result = HIDFixed.init<A>(exactly:)(a1, a2, a3);
  *a4 = result;
  *(a4 + 4) = BYTE4(result) & 1;
  return result;
}

uint64_t sub_270775F88@<X0>(_DWORD *a1@<X8>)
{
  result = HIDFixed.magnitude.getter(*v1);
  *a1 = result;
  return result;
}

void static HIDFixed.* infix(_:_:)()
{
  OUTLINED_FUNCTION_13_10();
  if (!(v2 ^ v3 | v1))
  {
    OUTLINED_FUNCTION_1_0();
    return;
  }

  v4 = OUTLINED_FUNCTION_10_12(v0);
  v7 = OUTLINED_FUNCTION_5_20(v4, v5, 2147483650.0);
  if (!v1 & v11)
  {
    if (v8 <= v9 && (v6 & 1) != 0)
    {
      __break(1u);
      goto LABEL_11;
    }
  }

  else
  {
    v7 = v10;
  }

  if (v7 <= -2147483650.0)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v7 < 2147483650.0)
  {
    OUTLINED_FUNCTION_8_16(v7);
    return;
  }

LABEL_12:
  __break(1u);
}

{
  OUTLINED_FUNCTION_13_10();
  if (!(v2 ^ v3 | v1))
  {
    OUTLINED_FUNCTION_1_0();
    return;
  }

  v4 = OUTLINED_FUNCTION_10_12(v0);
  v7 = OUTLINED_FUNCTION_5_20(v4, v5, 2147483650.0);
  if (!v1 & v11)
  {
    if (v8 <= v9 && (v6 & 1) != 0)
    {
      __break(1u);
      goto LABEL_11;
    }
  }

  else
  {
    v7 = v10;
  }

  if (v7 <= -2147483650.0)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v7 < 2147483650.0)
  {
    OUTLINED_FUNCTION_8_16(v7);
    return;
  }

LABEL_12:
  __break(1u);
}

void static HIDFixed./ infix(_:_:)()
{
  OUTLINED_FUNCTION_13_10();
  if (!(v2 ^ v3 | v1))
  {
    OUTLINED_FUNCTION_1_0();
    return;
  }

  v4 = OUTLINED_FUNCTION_10_12(v0);
  v7 = OUTLINED_FUNCTION_5_20(v4, v5, 2147483650.0);
  if (!v1 & v11)
  {
    if (v8 <= v9 && (v6 & 1) != 0)
    {
      __break(1u);
      goto LABEL_11;
    }
  }

  else
  {
    v7 = v10;
  }

  if (v7 <= -2147483650.0)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v7 < 2147483650.0)
  {
    OUTLINED_FUNCTION_8_16(v7);
    return;
  }

LABEL_12:
  __break(1u);
}

{
  OUTLINED_FUNCTION_13_10();
  if (!(v2 ^ v3 | v1))
  {
    OUTLINED_FUNCTION_1_0();
    return;
  }

  v4 = OUTLINED_FUNCTION_10_12(v0);
  v7 = OUTLINED_FUNCTION_5_20(v4, v5, 2147483650.0);
  if (!v1 & v11)
  {
    if (v8 <= v9 && (v6 & 1) != 0)
    {
      __break(1u);
      goto LABEL_11;
    }
  }

  else
  {
    v7 = v10;
  }

  if (v7 <= -2147483650.0)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v7 < 2147483650.0)
  {
    OUTLINED_FUNCTION_8_16(v7);
    return;
  }

LABEL_12:
  __break(1u);
}

unint64_t sub_2707762B8()
{
  result = qword_28082A040;
  if (!qword_28082A040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28082A040);
  }

  return result;
}

unint64_t sub_270776328()
{
  result = qword_28082A048;
  if (!qword_28082A048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28082A048);
  }

  return result;
}

unint64_t sub_270776380()
{
  result = qword_28082A050;
  if (!qword_28082A050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28082A050);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_3_17(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_2707A8960();
}

double OUTLINED_FUNCTION_5_20(double a1, double a2, double a3)
{
  if (a2 > a3)
  {
    return a3;
  }

  else
  {
    return a2;
  }
}

uint64_t OUTLINED_FUNCTION_12_9(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_2707A8570();
}

double ScrollEvent.delta.getter(uint64_t a1)
{
  IOHIDEventGetFloatValue();
  v2 = v1;
  OUTLINED_FUNCTION_1_33();
  IOHIDEventGetFloatValue();
  IOHIDEventGetFloatValue();
  return v2;
}

uint64_t ScrollEvent.init(event:)(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v2);
  if ((*(v3 + 24))(v2, v3) == 6)
  {
    v4 = a1[3];
    v5 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v4);
    v6 = (*(v5 + 352))(v4, v5);
  }

  else
  {
    v6 = 0;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v6;
}

uint64_t (*ScrollEvent.x.modify(uint64_t a1, uint64_t a2))(uint64_t a1)
{
  OUTLINED_FUNCTION_2_2(a1, a2);
  IOHIDEventGetFloatValue();
  *v2 = v3;
  return sub_270776674;
}

uint64_t (*ScrollEvent.y.modify(uint64_t a1, uint64_t a2))(uint64_t a1)
{
  OUTLINED_FUNCTION_2_2(a1, a2);
  IOHIDEventGetFloatValue();
  *v2 = v3;
  return sub_2707766E0;
}

uint64_t (*ScrollEvent.z.modify(uint64_t a1, uint64_t a2))(uint64_t a1)
{
  OUTLINED_FUNCTION_2_2(a1, a2);
  IOHIDEventGetFloatValue();
  *v2 = v3;
  return sub_270776750;
}

uint64_t (*ScrollEvent.isPixels.modify(uint64_t a1, uint64_t a2))(uint64_t a1, uint64_t a2)
{
  *a1 = a2;
  *(a1 + 8) = IOHIDEventGetIntegerValue() != 0;
  return sub_2707767F4;
}

uint64_t sub_270776804@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = ScrollEvent.init(event:)(a1);
  *a2 = result;
  return result;
}

void sub_27077682C(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = ScrollEvent.delta.getter(*a1);
  *(a2 + 8) = v3;
  *(a2 + 16) = v4;
}

uint64_t ScrollEvent.delta.setter(uint64_t a1)
{
  IOHIDEventSetFloatValue();
  OUTLINED_FUNCTION_1_33();
  IOHIDEventSetFloatValue();

  return IOHIDEventSetFloatValue();
}

uint64_t (*ScrollEvent.delta.modify(void *a1, uint64_t a2))(uint64_t a1)
{
  a1[3] = a2;
  IOHIDEventGetFloatValue();
  v4 = v3;
  IOHIDEventGetFloatValue();
  v6 = v5;
  IOHIDEventGetFloatValue();
  *a1 = v4;
  a1[1] = v6;
  a1[2] = v7;
  return sub_270776960;
}

uint64_t sub_270776960(uint64_t a1)
{
  IOHIDEventSetFloatValue();
  OUTLINED_FUNCTION_1_33();
  IOHIDEventSetFloatValue();

  return IOHIDEventSetFloatValue();
}

BOOL sub_270776A60(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_4_2(a1);
  result = ScrollEvent.isPixels.getter(v2);
  *v1 = result;
  return result;
}

void HIDServicePropertyKey.rawValue.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
}

UniversalHID::HIDServicePropertyKey_optional __swiftcall HIDServicePropertyKey.init(stringValue:)(Swift::String stringValue)
{
  object = stringValue._object;
  countAndFlagsBits = stringValue._countAndFlagsBits;
  v3 = static HIDServicePropertyKey.allCases.getter();
  v9[0] = countAndFlagsBits;
  v9[1] = object;
  v8[2] = v9;
  v4 = sub_27074FFF4(sub_270777858, v8, v3);

  if (!v4)
  {

    countAndFlagsBits = 0;
    object = 0;
  }

  v6 = countAndFlagsBits;
  v7 = object;
  result.value.rawValue._object = v7;
  result.value.rawValue._countAndFlagsBits = v6;
  result.is_nil = v5;
  return result;
}

uint64_t static HIDServicePropertyKey.allCases.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28082A068, &qword_2707B11E0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_2707B11D0;
  *(v0 + 32) = 0x656369767265535FLL;
  *(v0 + 40) = 0xEA00000000004449;
  strcpy((v0 + 48), "HIDAccelCurves");
  *(v0 + 63) = -18;
  *(v0 + 64) = 0xD000000000000014;
  *(v0 + 72) = 0x80000002707B4D20;
  strcpy((v0 + 80), "Authenticated");
  *(v0 + 94) = -4864;
  *(v0 + 96) = 0x6E492D746C697542;
  *(v0 + 104) = 0xE800000000000000;
  strcpy((v0 + 112), "CapsLockDelay");
  *(v0 + 126) = -4864;
  *(v0 + 128) = 0xD000000000000016;
  *(v0 + 136) = 0x80000002707B4D40;
  strcpy((v0 + 144), "DeviceTypeHint");
  *(v0 + 159) = -18;
  OUTLINED_FUNCTION_7_18();
  v1[20] = 0xD000000000000010;
  v1[21] = v2;
  v1[22] = 0xD000000000000024;
  v1[23] = 0x80000002707B4D60;
  OUTLINED_FUNCTION_7_18();
  v3[24] = 0xD000000000000014;
  v3[25] = v4;
  v3[26] = 0x5579616C70736964;
  v3[27] = 0xEB00000000444955;
  OUTLINED_FUNCTION_7_18();
  v5[28] = 0xD000000000000011;
  v5[29] = v6;
  v5[30] = 0xD000000000000019;
  v5[31] = 0x80000002707B4DB0;
  OUTLINED_FUNCTION_7_18();
  v7[32] = 0xD000000000000015;
  v7[33] = v8;
  v7[34] = 0xD00000000000001ELL;
  v7[35] = 0x80000002707B4DF0;
  OUTLINED_FUNCTION_5_21();
  *(v9 + 288) = 0xD000000000000012;
  *(v9 + 296) = v10;
  OUTLINED_FUNCTION_5_21();
  v11[38] = 0xD000000000000021;
  v11[39] = v12;
  v11[40] = 0x437972746E756F43;
  v11[41] = 0xEB0000000065646FLL;
  OUTLINED_FUNCTION_5_21();
  *(v13 + 336) = v14;
  *(v13 + 344) = v15;
  strcpy((v13 + 352), "StandardType");
  *(v13 + 365) = 0;
  *(v13 + 366) = -5120;
  strcpy((v13 + 368), "Manufacturer");
  *(v13 + 381) = 0;
  *(v13 + 382) = -5120;
  *(v13 + 384) = v16;
  *(v13 + 392) = 0x80000002707B4E80;
  *(v13 + 400) = 0xD000000000000020;
  *(v13 + 408) = 0x80000002707B4EA0;
  OUTLINED_FUNCTION_5_21();
  *(v17 + 416) = v18;
  *(v17 + 424) = v19;
  OUTLINED_FUNCTION_5_21();
  *(v20 + 432) = 0xD00000000000001BLL;
  *(v20 + 440) = v21;
  OUTLINED_FUNCTION_5_21();
  *(v22 + 448) = 0xD00000000000001ALL;
  *(v22 + 456) = v23;
  OUTLINED_FUNCTION_5_21();
  *(v24 + 464) = v25;
  *(v24 + 472) = v26;
  OUTLINED_FUNCTION_10_13();
  *(v27 + 480) = 0xD000000000000014;
  *(v27 + 488) = v28;
  OUTLINED_FUNCTION_10_13();
  *(v29 + 496) = 0xD000000000000014;
  *(v29 + 504) = v30;
  OUTLINED_FUNCTION_10_13();
  *(v31 + 512) = 0xD000000000000014;
  *(v31 + 520) = v32;
  strcpy((v31 + 528), "PrimaryUsage");
  *(v31 + 541) = 0;
  *(v31 + 542) = -5120;
  OUTLINED_FUNCTION_10_13();
  v33[68] = v34;
  v33[69] = v35;
  v33[70] = 0x746375646F7250;
  v33[71] = 0xE700000000000000;
  v33[72] = 0x49746375646F7250;
  v33[73] = 0xE900000000000044;
  OUTLINED_FUNCTION_5_21();
  *(v36 + 592) = v37;
  *(v36 + 600) = v38;
  strcpy((v36 + 608), "ReportInterval");
  *(v36 + 623) = -18;
  OUTLINED_FUNCTION_6_19();
  v39[78] = v40;
  v39[79] = v41;
  v39[80] = v42;
  v39[81] = 0x80000002707B4FF0;
  v39[82] = 0xD00000000000001DLL;
  v39[83] = 0x80000002707B5010;
  OUTLINED_FUNCTION_6_19();
  *(v43 + 672) = 0xD000000000000014;
  *(v43 + 680) = v44;
  OUTLINED_FUNCTION_6_19();
  *(v45 + 688) = 0xD000000000000013;
  *(v45 + 696) = v46;
  OUTLINED_FUNCTION_6_19();
  *(v47 + 704) = v48;
  *(v47 + 712) = v49;
  OUTLINED_FUNCTION_6_19();
  *(v50 + 720) = v51;
  *(v50 + 728) = v52;
  OUTLINED_FUNCTION_6_19();
  *(v53 + 736) = 0xD000000000000018;
  *(v53 + 744) = v54;
  OUTLINED_FUNCTION_6_19();
  v55[94] = v56;
  v55[95] = v57;
  v55[96] = 0x726F70736E617254;
  v55[97] = v58 | 0x30;
  OUTLINED_FUNCTION_11_13();
  *(v59 + 784) = 0xD000000000000017;
  *(v59 + 792) = v60;
  OUTLINED_FUNCTION_11_13();
  *(v61 + 800) = v62;
  *(v61 + 808) = v63;
  OUTLINED_FUNCTION_11_13();
  *(v64 + 816) = v65;
  *(v64 + 824) = v66;
  OUTLINED_FUNCTION_11_13();
  *(v67 + 832) = v68;
  *(v67 + 840) = v69;
  if (qword_2808294C0 != -1)
  {
    OUTLINED_FUNCTION_4_25(&qword_2808294C0);
  }

  v70 = unk_28082A060;
  *(v0 + 848) = qword_28082A058;
  *(v0 + 856) = v70;
  OUTLINED_FUNCTION_7_18();
  *(v0 + 864) = 0xD000000000000015;
  *(v0 + 872) = v71;
  *(v0 + 880) = 0x4449726F646E6556;
  *(v0 + 888) = 0xE800000000000000;

  return v0;
}

UniversalHID::HIDServicePropertyKey_optional __swiftcall HIDServicePropertyKey.init(intValue:)(Swift::Int intValue)
{
  v1 = 0;
  v2 = 0;
  result.value.rawValue._object = v2;
  result.value.rawValue._countAndFlagsBits = v1;
  return result;
}

uint64_t sub_270777660()
{
  result = sub_2707A85D0();
  qword_28082A058 = result;
  unk_28082A060 = v1;
  return result;
}

uint64_t static HIDServicePropertyKey.userDeviceCreateInactive.getter()
{
  if (qword_2808294C0 != -1)
  {
    OUTLINED_FUNCTION_4_25(&qword_2808294C0);
  }

  v0 = qword_28082A058;

  return v0;
}

uint64_t sub_270777718@<X0>(Swift::String *a1@<X0>, UniversalHID::HIDServicePropertyKey *a2@<X8>)
{
  v4 = HIDServicePropertyKey.init(rawValue:)(*a1);
  result = v4.rawValue._countAndFlagsBits;
  *a2 = v4;
  return result;
}

uint64_t sub_270777748@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t sub_270777754@<X0>(uint64_t *a1@<X8>)
{
  result = static HIDServicePropertyKey.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_270777784@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *&result = HIDServicePropertyKey.init(stringValue:)(*&a1);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_2707777CC(uint64_t a1)
{
  v2 = sub_2707779F8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_270777808(uint64_t a1)
{
  v2 = sub_2707779F8();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_27077787C()
{
  result = qword_28082A070;
  if (!qword_28082A070)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28082A078, &qword_2707B1220);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28082A070);
  }

  return result;
}

unint64_t sub_2707778E4()
{
  result = qword_28082A080;
  if (!qword_28082A080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28082A080);
  }

  return result;
}

unint64_t sub_27077793C()
{
  result = qword_28082A088;
  if (!qword_28082A088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28082A088);
  }

  return result;
}

unint64_t sub_270777994()
{
  result = qword_28082A090;
  if (!qword_28082A090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28082A090);
  }

  return result;
}

unint64_t sub_2707779F8()
{
  result = qword_28082A098;
  if (!qword_28082A098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28082A098);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_4_25(uint64_t a1)
{

  return swift_once();
}

void HIDReport.scaledValue<A>(as:atIndex:)(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a5 == MEMORY[0x277D84900])
  {
    OUTLINED_FUNCTION_5_22();
    OUTLINED_FUNCTION_18_6();

    sub_2707107E4();
  }

  else if (a5 == MEMORY[0x277D84958])
  {
    OUTLINED_FUNCTION_5_22();
    OUTLINED_FUNCTION_18_6();

    sub_270710834();
  }

  else if (a5 == MEMORY[0x277D849A8])
  {
    OUTLINED_FUNCTION_5_22();
    OUTLINED_FUNCTION_18_6();

    sub_2707108C4();
  }

  else if (a5 == MEMORY[0x277D84A28])
  {
    OUTLINED_FUNCTION_5_22();
    OUTLINED_FUNCTION_18_6();

    sub_270710884();
  }

  else
  {
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    switch(__ROR8__(sub_2707A8C00() - 8, 3))
    {
      case 0:
        sub_270778848();
        sub_27077889C();
        OUTLINED_FUNCTION_23_4();
        v19 = MEMORY[0x277D84B78];
        break;
      case 1:
        sub_2707787A0();
        sub_2707787F4();
        OUTLINED_FUNCTION_23_4();
        v19 = MEMORY[0x277D84C58];
        break;
      case 3:
        sub_2707786F8();
        sub_27077874C();
        OUTLINED_FUNCTION_23_4();
        v19 = MEMORY[0x277D84CC0];
        break;
      case 7:
        sub_270778650();
        sub_2707786A4();
        OUTLINED_FUNCTION_23_4();
        v19 = MEMORY[0x277D84D38];
        break;
      default:
        OUTLINED_FUNCTION_13_11("Fatal error", v11, v12, v13, v14, "UniversalHID/HIDReportScaledSigned.swift", v15, v16, 67, 0);
        __break(1u);
        JUMPOUT(0x270777D68);
    }

    HIDReport.scaledValue<A, B>(as:unsignedType:atIndex:)(v17, v18, a2, a3, a4, a5, v19, a6, v24, v25, v26);
    OUTLINED_FUNCTION_18_6();
  }
}

void HIDReport.setScaledValue<A>(_:as:atIndex:)(double a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 == MEMORY[0x277D84900])
  {
    OUTLINED_FUNCTION_0_43();
    if (v14 ^ v15 | v13)
    {
      OUTLINED_FUNCTION_20_5();
      OUTLINED_FUNCTION_12_10();

      sub_2707788F0(v20);
      return;
    }

    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    OUTLINED_FUNCTION_13_11("Fatal error", v7, v8, v9, v10, "UniversalHID/HIDReportScaledSigned.swift", v11, v12, 113, 0);
    __break(1u);
    JUMPOUT(0x270778038);
  }

  if (a4 == MEMORY[0x277D84958])
  {
    OUTLINED_FUNCTION_0_43();
    if (v14 ^ v15 | v13)
    {
      OUTLINED_FUNCTION_20_5();
      OUTLINED_FUNCTION_12_10();

      sub_270778964(v22);
      return;
    }

    goto LABEL_33;
  }

  if (a4 == MEMORY[0x277D849A8])
  {
    OUTLINED_FUNCTION_0_43();
    if (!(v14 ^ v15 | v13))
    {
      goto LABEL_35;
    }

    OUTLINED_FUNCTION_20_5();
    OUTLINED_FUNCTION_12_10();

    sub_270778A40(v24);
  }

  else
  {
    if (a4 != MEMORY[0x277D84A28])
    {
      OUTLINED_FUNCTION_0_43();
      if (v14 ^ v15 | v13)
      {
        v16 = v10;
        v17 = v9;
        swift_getAssociatedTypeWitness();
        swift_getAssociatedConformanceWitness();
        switch(__ROR8__(sub_2707A8C00() - 8, 3))
        {
          case 0:
            v18 = sub_270716A74();
            v19 = sub_27077889C();
            HIDReport.setScaledValue<A, B>(_:as:unsignedType:atIndex:)(a1, v19, MEMORY[0x277D84B78], a3, a4, MEMORY[0x277D84B78], v17, v18, v19, v16);
            goto LABEL_32;
          case 1:
            v30 = sub_270716ACC();
            v31 = sub_2707787F4();
            HIDReport.setScaledValue<A, B>(_:as:unsignedType:atIndex:)(a1, v31, MEMORY[0x277D84C58], a3, a4, MEMORY[0x277D84C58], v17, v30, v31, v16);
            goto LABEL_32;
          case 3:
            v32 = sub_270716B24();
            v33 = sub_27077874C();
            HIDReport.setScaledValue<A, B>(_:as:unsignedType:atIndex:)(a1, v33, MEMORY[0x277D84CC0], a3, a4, MEMORY[0x277D84CC0], v17, v32, v33, v16);
            goto LABEL_32;
          case 7:
            v28 = sub_270715E10();
            v29 = sub_2707786A4();
            HIDReport.setScaledValue<A, B>(_:as:unsignedType:atIndex:)(a1, v29, MEMORY[0x277D84D38], a3, a4, MEMORY[0x277D84D38], v17, v28, v29, v16);
LABEL_32:
            OUTLINED_FUNCTION_12_10();
            return;
          default:
            goto LABEL_37;
        }
      }

      goto LABEL_34;
    }

    OUTLINED_FUNCTION_0_43();
    if (!(v14 ^ v15 | v13))
    {
      goto LABEL_36;
    }

    OUTLINED_FUNCTION_20_5();
    OUTLINED_FUNCTION_12_10();

    sub_2707789D8(v26);
  }
}

uint64_t HIDReport.scaledValue<A, B>(as:unsignedType:atIndex:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unint64_t a11)
{
  v66 = a5;
  v62 = a3;
  v63 = a10;
  v64 = a4;
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_0_1();
  v69 = v13;
  MEMORY[0x28223BE20](v14, v15);
  OUTLINED_FUNCTION_8_9();
  v18 = v16 - v17;
  MEMORY[0x28223BE20](v19, v20);
  v22 = &v61 - v21;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_0_1();
  v68 = v24;
  MEMORY[0x28223BE20](v25, v26);
  OUTLINED_FUNCTION_8_9();
  v65 = v27 - v28;
  OUTLINED_FUNCTION_10_4();
  MEMORY[0x28223BE20](v29, v30);
  OUTLINED_FUNCTION_14_9();
  v61 = v31;
  OUTLINED_FUNCTION_10_4();
  MEMORY[0x28223BE20](v32, v33);
  v35 = (&v61 - v34);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v37 = v64;
  v38 = v66;
  v64 = AssociatedConformanceWitness;
  v66 = a11;
  v67 = v35;
  HIDReport.subscript.getter(v62, v37, v38, AssociatedTypeWitness, v35);
  (*(a8 + 24))(a6, a8);
  OUTLINED_FUNCTION_11_14();
  if (sub_2707A89E0() < 65)
  {
    OUTLINED_FUNCTION_11_14();
    sub_2707A89F0();
    OUTLINED_FUNCTION_11_14();
    sub_2707A89D0();
  }

  else
  {
    sub_270715DBC();
    sub_270715E10();
    OUTLINED_FUNCTION_27_3(&v70, v22, MEMORY[0x277D839F8]);
  }

  v39 = OUTLINED_FUNCTION_25_5();
  v35(v39);
  (*(a8 + 32))(a6, a8);
  OUTLINED_FUNCTION_11_14();
  if (sub_2707A89E0() <= 64)
  {
    OUTLINED_FUNCTION_11_14();
    sub_2707A89F0();
    OUTLINED_FUNCTION_11_14();
    sub_2707A89D0();
  }

  else
  {
    sub_270715DBC();
    sub_270715E10();
    OUTLINED_FUNCTION_27_3(&v70, v18, MEMORY[0x277D839F8]);
  }

  v40 = OUTLINED_FUNCTION_24_4();
  v35(v40);
  v41 = v67;
  v42 = sub_2707A8C10();
  v43 = v68;
  if (v42 <= 0)
  {
    sub_2707A8980();
    OUTLINED_FUNCTION_6_20();
    if (sub_2707A89E0() < 65)
    {
      sub_2707A89F0();
      OUTLINED_FUNCTION_6_20();
      sub_2707A89D0();
      v58 = *(v43 + 8);
      v59 = OUTLINED_FUNCTION_20_1();
      v58(v59);
      v60 = OUTLINED_FUNCTION_22_3();
      return (v58)(v60);
    }

    else
    {
      sub_270715DBC();
      v50 = sub_270715E10();
      OUTLINED_FUNCTION_16_10(v50, v51, MEMORY[0x277D839F8]);
      v52 = *(v43 + 8);
      v53 = OUTLINED_FUNCTION_20_1();
      v52(v53);
      v54 = OUTLINED_FUNCTION_22_3();
      return (v52)(v54);
    }
  }

  else
  {
    (*(v68 + 16))(v61, v41, AssociatedTypeWitness);
    OUTLINED_FUNCTION_6_20();
    if (sub_2707A89E0() < 65)
    {
      sub_2707A89F0();
      OUTLINED_FUNCTION_6_20();
      sub_2707A89D0();
      v55 = *(v43 + 8);
      v56 = OUTLINED_FUNCTION_20_1();
      v55(v56);
      v57 = OUTLINED_FUNCTION_22_3();
      return (v55)(v57);
    }

    else
    {
      sub_270715DBC();
      v44 = sub_270715E10();
      OUTLINED_FUNCTION_16_10(v44, v45, MEMORY[0x277D839F8]);
      v46 = *(v43 + 8);
      v47 = OUTLINED_FUNCTION_20_1();
      v46(v47);
      v48 = OUTLINED_FUNCTION_22_3();
      return (v46)(v48);
    }
  }
}

unint64_t sub_270778650()
{
  result = qword_28082A0A0;
  if (!qword_28082A0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28082A0A0);
  }

  return result;
}

unint64_t sub_2707786A4()
{
  result = qword_28082A0A8;
  if (!qword_28082A0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28082A0A8);
  }

  return result;
}

unint64_t sub_2707786F8()
{
  result = qword_28082A0B0;
  if (!qword_28082A0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28082A0B0);
  }

  return result;
}

unint64_t sub_27077874C()
{
  result = qword_28082A0B8;
  if (!qword_28082A0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28082A0B8);
  }

  return result;
}

unint64_t sub_2707787A0()
{
  result = qword_28082A0C0;
  if (!qword_28082A0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28082A0C0);
  }

  return result;
}

unint64_t sub_2707787F4()
{
  result = qword_28082A0C8;
  if (!qword_28082A0C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28082A0C8);
  }

  return result;
}

unint64_t sub_270778848()
{
  result = qword_28082A0D0;
  if (!qword_28082A0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28082A0D0);
  }

  return result;
}

unint64_t sub_27077889C()
{
  result = qword_28082A0D8;
  if (!qword_28082A0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28082A0D8);
  }

  return result;
}

uint64_t HIDReport.setScaledValue<A, B>(_:as:unsignedType:atIndex:)(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v118 = a9;
  v121 = a8;
  v128 = a7;
  v116 = a4;
  v117 = a3;
  v13 = *(a10 + 8);
  v14 = *(v13 + 24);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v106 = *(AssociatedConformanceWitness + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](AssociatedTypeWitness, v15);
  v104[4] = v104 - v16;
  v115 = swift_checkMetadataState();
  OUTLINED_FUNCTION_0_1();
  v113 = v17;
  MEMORY[0x28223BE20](v18, v19);
  OUTLINED_FUNCTION_8_9();
  OUTLINED_FUNCTION_2_30();
  MEMORY[0x28223BE20](v20, v21);
  OUTLINED_FUNCTION_14_9();
  OUTLINED_FUNCTION_2_30();
  MEMORY[0x28223BE20](v22, v23);
  OUTLINED_FUNCTION_14_9();
  OUTLINED_FUNCTION_2_30();
  MEMORY[0x28223BE20](v24, v25);
  OUTLINED_FUNCTION_14_9();
  OUTLINED_FUNCTION_2_30();
  MEMORY[0x28223BE20](v26, v27);
  v112 = v104 - v28;
  v120 = a6;
  MEMORY[0x28223BE20](v29, v30);
  v119 = v104 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = v14;
  v32 = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](v32, v33);
  v34 = swift_checkMetadataState();
  OUTLINED_FUNCTION_0_1();
  v124 = v35;
  MEMORY[0x28223BE20](v36, v37);
  OUTLINED_FUNCTION_8_9();
  OUTLINED_FUNCTION_2_30();
  MEMORY[0x28223BE20](v38, v39);
  OUTLINED_FUNCTION_14_9();
  v125 = v40;
  OUTLINED_FUNCTION_10_4();
  MEMORY[0x28223BE20](v41, v42);
  OUTLINED_FUNCTION_14_9();
  v123 = v43;
  OUTLINED_FUNCTION_10_4();
  MEMORY[0x28223BE20](v44, v45);
  v47 = v104 - v46;
  v50 = MEMORY[0x28223BE20](v48, v49);
  v51 = *(v128 + 24);
  v52 = a5;
  v110 = v128 + 24;
  v109 = v51;
  (v51)(a5, v50);
  OUTLINED_FUNCTION_4_6();
  v53 = sub_2707A89F0();
  v127 = v13;
  v122 = v47;
  if (v53)
  {
    OUTLINED_FUNCTION_4_26();
    if (sub_2707A89E0() >= 64)
    {
      v129 = 0;
      sub_270710EEC();
      OUTLINED_FUNCTION_15_9();
      sub_2707A8960();
      v65 = OUTLINED_FUNCTION_8_18();
      v55 = v124;
      v66 = *(v124 + 8);
      v67 = OUTLINED_FUNCTION_17_7();
      v66(v67);
      v68 = OUTLINED_FUNCTION_9_16();
      v126 = v66;
      result = (v66)(v68);
      a5 = v52;
      if ((v65 & 1) == 0)
      {
        goto LABEL_34;
      }
    }

    else
    {
      OUTLINED_FUNCTION_4_26();
      v54 = sub_2707A89D0();
      v55 = v124;
      v56 = OUTLINED_FUNCTION_9_16();
      v126 = v57;
      result = (v57)(v56);
      if ((v54 & 0x8000000000000000) == 0)
      {
        goto LABEL_34;
      }
    }

    goto LABEL_18;
  }

  OUTLINED_FUNCTION_4_6();
  v59 = sub_2707A89F0();
  OUTLINED_FUNCTION_4_26();
  v60 = sub_2707A89E0();
  if (v59)
  {
    if (v60 > 64)
    {
      v129 = 0;
      sub_270710EEC();
      v47 = v122;
      OUTLINED_FUNCTION_15_9();
      sub_2707A8960();
      v61 = OUTLINED_FUNCTION_8_18();
      v55 = v124;
      v62 = *(v124 + 8);
      v63 = OUTLINED_FUNCTION_17_7();
      v62(v63);
      v64 = OUTLINED_FUNCTION_9_16();
      v126 = v62;
      result = (v62)(v64);
      if ((v61 & 1) == 0)
      {
        goto LABEL_34;
      }

      goto LABEL_18;
    }

    swift_getAssociatedConformanceWitness();
    sub_2707A8EB0();
    v47 = v122;
    sub_2707A8E80();
    v72 = OUTLINED_FUNCTION_8_18();
    v55 = v124;
    v73 = *(v124 + 8);
    v74 = OUTLINED_FUNCTION_17_7();
    v73(v74);
    v126 = v73;
    if (v72)
    {
      v75 = OUTLINED_FUNCTION_9_16();
      v73(v75);
      goto LABEL_18;
    }

    OUTLINED_FUNCTION_4_26();
    v76 = sub_2707A89D0();
    v77 = OUTLINED_FUNCTION_9_16();
    result = (v73)(v77);
    if (v76 < 0)
    {
LABEL_18:
      v78 = *(v128 + 32);
      v79 = v123;
      v78(a5);
      OUTLINED_FUNCTION_4_6();
      v80 = sub_2707A89F0();
      OUTLINED_FUNCTION_4_6();
      v81 = sub_2707A89E0();
      if (v80)
      {
        v82 = v81 <= 64;
      }

      else
      {
        v82 = v81 <= 63;
      }

      v83 = v126;
      if (v82)
      {
        goto LABEL_24;
      }

      v129 = 0;
      sub_270710EEC();
      OUTLINED_FUNCTION_15_9();
      sub_2707A8960();
      v84 = sub_2707A8570();
      v85 = OUTLINED_FUNCTION_17_7();
      v83(v85);
      (v83)(v79, v34);
      if ((v84 & 1) == 0)
      {
        do
        {
          __break(1u);
LABEL_24:
          v86 = sub_2707A89D0();
          (v83)(v79, v34);
        }

        while (v86 <= 0);
      }

      v109(a5, v128);
      v87 = v111;
      v88 = OUTLINED_FUNCTION_0_13();
      v78(v88);
      swift_getAssociatedConformanceWitness();
      v89 = v125;
      v90 = v34;
      FixedWidthInteger.init(scaledValue:logicalMinimum:logicalMaximum:)(v47, v87, v34, v125, a1);
      v92 = v114;
      v91 = v115;
      v93 = v113;
      if (a1 >= 0.0)
      {
        goto LABEL_29;
      }

      sub_2707A87E0();
      swift_getAssociatedConformanceWitness();
      OUTLINED_FUNCTION_0_13();
      v94 = sub_2707A89F0();
      OUTLINED_FUNCTION_0_13();
      v95 = sub_2707A89E0();
      if (v94)
      {
        if (v95 > 64)
        {
          goto LABEL_28;
        }
      }

      else if (v95 > 63)
      {
LABEL_28:
        v129 = 0;
        sub_270710EEC();
        v96 = v108;
        sub_2707A8960();
        OUTLINED_FUNCTION_9_16();
        swift_getAssociatedConformanceWitness();
        v97 = v112;
        v90 = sub_2707A8570();
        v87 = *(v93 + 8);
        v98 = v96;
        v89 = v125;
        (v87)(v98, v91);
        (v87)(v97, v91);
        v47 = v122;
        if ((v90 & 1) == 0)
        {
LABEL_29:
          (*(v55 + 16))(v47, v89, v34);
          OUTLINED_FUNCTION_19_4();
          OUTLINED_FUNCTION_17_7();
          sub_2707A8A10();
LABEL_33:
          HIDReport.subscript.setter(v92, v116, v117, v90, v87);
          return (v126)(v89, v34);
        }

LABEL_32:
        sub_2707A87E0();
        swift_getAssociatedConformanceWitness();
        sub_2707A8EB0();
        v100 = v104[2];
        v90 = v91;
        sub_2707A8E80();
        v92 = v104[3];
        sub_2707A8C90();
        (v87)(v100, v91);
        v101 = OUTLINED_FUNCTION_11_14();
        (v87)(v101);
        sub_2707A8980();
        (v87)(v92, v91);
        OUTLINED_FUNCTION_19_4();
        v89 = v125;
        sub_2707A8A10();
        goto LABEL_33;
      }

      v99 = v112;
      OUTLINED_FUNCTION_0_13();
      v90 = sub_2707A89D0();
      v87 = *(v93 + 8);
      (v87)(v99, v91);
      v47 = v122;
      if (v90 <= 0)
      {
        goto LABEL_29;
      }

      goto LABEL_32;
    }
  }

  else
  {
    if (v60 < 64)
    {
      v69 = sub_2707A89D0();
      v55 = v124;
      v70 = OUTLINED_FUNCTION_9_16();
      v126 = v71;
      result = (v71)(v70);
      v47 = v122;
      if ((v69 & 0x8000000000000000) == 0)
      {
        goto LABEL_34;
      }

      goto LABEL_18;
    }

    v102 = OUTLINED_FUNCTION_9_16();
    result = v103(v102);
  }

LABEL_34:
  __break(1u);
  return result;
}

unint64_t sub_27077959C()
{
  result = qword_28082A0E0;
  if (!qword_28082A0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28082A0E0);
  }

  return result;
}

unint64_t sub_2707795F4()
{
  result = qword_28082A0E8;
  if (!qword_28082A0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28082A0E8);
  }

  return result;
}

unint64_t sub_27077964C()
{
  result = qword_28082A0F0;
  if (!qword_28082A0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28082A0F0);
  }

  return result;
}

unint64_t sub_2707796A4()
{
  result = qword_28082A0F8;
  if (!qword_28082A0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28082A0F8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_8_18()
{

  return sub_2707A8570();
}

uint64_t OUTLINED_FUNCTION_13_11(uint64_t a1, void x1_0, void x2_0, void x3_0, void x4_0, uint64_t a2, void a7, void a8, uint64_t a4, int a5)
{

  return sub_2707A8C70();
}

uint64_t OUTLINED_FUNCTION_16_10(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_2707A84E0();
}

uint64_t OUTLINED_FUNCTION_27_3(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_2707A84E0();
}

uint64_t (*VelocityEvent.x.modify(uint64_t a1, uint64_t a2))(uint64_t a1)
{
  OUTLINED_FUNCTION_2_2(a1, a2);
  IOHIDEventGetFloatValue();
  *v2 = v3;
  return sub_27077993C;
}

uint64_t (*VelocityEvent.y.modify(uint64_t a1, uint64_t a2))(uint64_t a1)
{
  OUTLINED_FUNCTION_2_2(a1, a2);
  IOHIDEventGetFloatValue();
  *v2 = v3;
  return sub_2707799A0;
}

uint64_t (*VelocityEvent.z.modify(uint64_t a1, uint64_t a2))(uint64_t a1)
{
  OUTLINED_FUNCTION_2_2(a1, a2);
  IOHIDEventGetFloatValue();
  *v2 = v3;
  return sub_270779A08;
}

unint64_t static GameControllerEvent.dispatch(report:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for GameControllerGesture();
  swift_initStackObject();
  return GameControllerGesture.dispatch(report:)(a1, a2);
}

unint64_t GameControllerGesture.dispatch(report:)(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280829528, &qword_2707A9F30);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2707A9CF0;
  OUTLINED_FUNCTION_11_9();
  result = _s12UniversalHID9HIDReportV_2ass4Int8VSi_AFmtcig_0();
  if ((result & 0x80) != 0)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_11_9();
    v6 = _s12UniversalHID9HIDReportV_2ass5Int16VSi_AFmtcig_0();
    OUTLINED_FUNCTION_7_15(v6);
    OUTLINED_FUNCTION_11_9();
    v7 = _s12UniversalHID9HIDReportV_2ass5Int16VSi_AFmtcig_0();
    OUTLINED_FUNCTION_0_45(v7);
    OUTLINED_FUNCTION_11_9();
    v8 = _s12UniversalHID9HIDReportV_2ass5Int16VSi_AFmtcig_0();
    OUTLINED_FUNCTION_0_45(v8);
    OUTLINED_FUNCTION_11_9();
    v9 = _s12UniversalHID9HIDReportV_2ass5Int16VSi_AFmtcig_0();
    OUTLINED_FUNCTION_0_45(v9);
    OUTLINED_FUNCTION_11_9();
    v10 = _s12UniversalHID9HIDReportV_2ass5Int16VSi_AFmtcig_0();
    OUTLINED_FUNCTION_0_45(v10);
    OUTLINED_FUNCTION_11_9();
    v11 = _s12UniversalHID9HIDReportV_2ass5Int16VSi_AFmtcig_0();
    OUTLINED_FUNCTION_0_45(v11);
    OUTLINED_FUNCTION_11_9();
    v12 = _s12UniversalHID9HIDReportV_2ass5Int16VSi_AFmtcig_0();
    OUTLINED_FUNCTION_0_45(v12);
    OUTLINED_FUNCTION_11_9();
    v13 = _s12UniversalHID9HIDReportV_2ass5Int16VSi_AFmtcig_0();
    OUTLINED_FUNCTION_7_15(v13);
    GameControllerReport.joystickLeft.getter(a1, a2);
    OUTLINED_FUNCTION_11_9();
    v14 = _s12UniversalHID9HIDReportV_2ass5Int16VSi_AFmtcig_0();
    OUTLINED_FUNCTION_0_45(v14);
    GameControllerReport.joystickRight.getter(a1, a2);
    OUTLINED_FUNCTION_11_9();
    v15 = _s12UniversalHID9HIDReportV_2ass5Int16VSi_AFmtcig_0();
    OUTLINED_FUNCTION_0_45(v15);
    OUTLINED_FUNCTION_11_9();
    v16 = _s12UniversalHID9HIDReportV_2ass5Int16VSi_AFmtcig_0();
    OUTLINED_FUNCTION_7_15(v16);
    OUTLINED_FUNCTION_11_9();
    v17 = _s12UniversalHID9HIDReportV_2ass5Int16VSi_AFmtcig_0();
    OUTLINED_FUNCTION_7_15(v17);
    OUTLINED_FUNCTION_11_9();
    v18 = _s12UniversalHID9HIDReportV_2ass5Int16VSi_AFmtcig_0();
    OUTLINED_FUNCTION_7_15(v18);
    OUTLINED_FUNCTION_11_9();
    v19 = _s12UniversalHID9HIDReportV_2ass5Int16VSi_AFmtcig_0();
    OUTLINED_FUNCTION_7_15(v19);
    mach_absolute_time();
    v20 = IOHIDEventCreate();
    IOHIDEventSetIntegerValue();
    IOHIDEventSetDoubleValue();
    IOHIDEventSetDoubleValue();
    IOHIDEventSetDoubleValue();
    IOHIDEventSetDoubleValue();
    IOHIDEventSetDoubleValue();
    IOHIDEventSetDoubleValue();
    IOHIDEventSetDoubleValue();
    IOHIDEventSetDoubleValue();
    IOHIDEventSetDoubleValue();
    IOHIDEventSetDoubleValue();
    IOHIDEventSetDoubleValue();
    IOHIDEventSetDoubleValue();
    IOHIDEventSetDoubleValue();
    IOHIDEventSetDoubleValue();
    IOHIDEventSetDoubleValue();
    IOHIDEventSetDoubleValue();
    IOHIDEventSetDoubleValue();
    IOHIDEventSetDoubleValue();
    IOHIDEventSetEventFlags();
    *(v4 + 56) = &type metadata for GameControllerEvent;
    *(v4 + 64) = &protocol witness table for GameControllerEvent;
    *(v4 + 32) = v20;
    return v4;
  }

  return result;
}

uint64_t (*ScaleEvent.x.modify(uint64_t a1, uint64_t a2))(uint64_t a1)
{
  OUTLINED_FUNCTION_2_2(a1, a2);
  IOHIDEventGetFloatValue();
  *v2 = v3;
  return sub_270779FDC;
}

uint64_t (*ScaleEvent.y.modify(uint64_t a1, uint64_t a2))(uint64_t a1)
{
  OUTLINED_FUNCTION_2_2(a1, a2);
  IOHIDEventGetFloatValue();
  *v2 = v3;
  return sub_27077A048;
}

uint64_t (*ScaleEvent.z.modify(uint64_t a1, uint64_t a2))(uint64_t a1)
{
  OUTLINED_FUNCTION_2_2(a1, a2);
  IOHIDEventGetFloatValue();
  *v2 = v3;
  return sub_27077A0B0;
}

void sub_27077A194(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_270724188(a1, v10);
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_15_10();
    sub_2707231E8(v6, a2, a3);

    *v3 = v9;
  }

  else
  {
    sub_27077E8F8(a1, &qword_280829D68, &qword_2707B1530);
    v7 = OUTLINED_FUNCTION_4_6();
    sub_270722C84(v8, v7);

    sub_27077E8F8(v10, &qword_280829D68, &qword_2707B1530);
  }
}

uint64_t sub_27077A258(uint64_t a1, uint64_t a2, __n128 a3)
{
  if (*(a1 + 24))
  {
    sub_27070F8A8(a1, v12);
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_15_10();
    result = sub_270723400(v5, a2);
    *v3 = v10;
  }

  else
  {
    sub_27077E8F8(a1, &qword_280829868, &qword_2707AC050);
    v7 = sub_270721EA0(a2);
    if (v8)
    {
      v9 = v7;
      swift_isUniquelyReferenced_nonNull_native();
      v11 = *v3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28082A320, &qword_2707B16B0);
      sub_2707A8C40();
      sub_27070F8A8((*(v11 + 56) + 40 * v9), v12);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28082A1B0, &qword_2707AC2F8);
      sub_2707373D4();
      sub_2707A8C60();
      *v3 = v11;
    }

    else
    {
      v13 = 0;
      memset(v12, 0, sizeof(v12));
    }

    return sub_27077E8F8(v12, &qword_280829868, &qword_2707AC050);
  }

  return result;
}