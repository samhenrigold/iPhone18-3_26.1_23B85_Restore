void sub_10067D104(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = *(a1 + 16);
  if (!v9)
  {
    goto LABEL_21;
  }

  LOBYTE(v11) = a2;
  v12 = *(a1 + 40);
  v13 = *a3;
  v14 = *(a1 + 32);
  v15 = v12;
  v16 = sub_100393C74();
  v17 = v13[2];
  v18 = (a2 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v21 = a2;
  if (v13[3] < v20)
  {
    sub_10036E04C(v20, v11 & 1);
    v16 = sub_100393C74();
    if ((v21 & 1) == (a2 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    sub_1000F5104(&unk_1009437A0, &unk_1007A4090);
    v16 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if (v11)
  {
LABEL_7:
    if (v21)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v29 = v16;
  sub_1003754F8();
  v16 = v29;
  if (v21)
  {
LABEL_8:
    swift_allocError();
    swift_willThrow();
    swift_errorRetain();
    sub_1000F5104(&unk_1009399E0, &qword_100795D00);
    if ((swift_dynamicCast() & 1) == 0)
    {

      a1, v22, v23, v24, v25, v26, v27, v28;

      return;
    }

    goto LABEL_26;
  }

LABEL_11:
  v30 = *a3;
  *(*a3 + 8 * (v16 >> 6) + 64) |= 1 << v16;
  *(v30[6] + 8 * v16) = v14;
  *(v30[7] + 8 * v16) = v15;
  v31 = v30[2];
  v19 = __OFADD__(v31, 1);
  v32 = v31 + 1;
  if (v19)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    _StringGuts.grow(_:)(30);
    v43._object = 0x80000001007F8340;
    v43._countAndFlagsBits = 0xD00000000000001BLL;
    String.append(_:)(v43);
    sub_1000F5104(&unk_1009437A0, &unk_1007A4090);
    _print_unlocked<A, B>(_:_:)();
    v44._countAndFlagsBits = 39;
    v44._object = 0xE100000000000000;
    String.append(_:)(v44);
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return;
  }

  v30[2] = v32;
  if (v9 != 1)
  {
    v11 = (a1 + 56);
    v33 = 1;
    while (v33 < *(a1 + 16))
    {
      v34 = *v11;
      v35 = *a3;
      v14 = *(v11 - 1);
      v15 = v34;
      v36 = sub_100393C74();
      v37 = v35[2];
      v38 = (a2 & 1) == 0;
      v19 = __OFADD__(v37, v38);
      v39 = v37 + v38;
      if (v19)
      {
        goto LABEL_23;
      }

      v21 = a2;
      if (v35[3] < v39)
      {
        sub_10036E04C(v39, 1);
        v36 = sub_100393C74();
        if ((v21 & 1) != (a2 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v21)
      {
        goto LABEL_8;
      }

      v40 = *a3;
      *(*a3 + 8 * (v36 >> 6) + 64) |= 1 << v36;
      *(v40[6] + 8 * v36) = v14;
      *(v40[7] + 8 * v36) = v15;
      v41 = v40[2];
      v19 = __OFADD__(v41, 1);
      v42 = v41 + 1;
      if (v19)
      {
        goto LABEL_24;
      }

      ++v33;
      v40[2] = v42;
      v11 += 2;
      if (v9 == v33)
      {
        goto LABEL_21;
      }
    }

    goto LABEL_25;
  }

LABEL_21:
  a1, a2, a3, a4, a5, a6, a7, a8;
}

void sub_10067D484(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = *(a1 + 16);
  if (!v9)
  {
    goto LABEL_21;
  }

  LOBYTE(v11) = a2;
  v12 = *(a1 + 40);
  v13 = *a3;
  v14 = *(a1 + 32);
  v15 = v12;
  v16 = sub_100393C74();
  v17 = v13[2];
  v18 = (a2 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v21 = a2;
  if (v13[3] < v20)
  {
    sub_10036E060(v20, v11 & 1);
    v16 = sub_100393C74();
    if ((v21 & 1) == (a2 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    sub_1000F5104(&unk_1009437E0, &unk_100797FB0);
    v16 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if (v11)
  {
LABEL_7:
    if (v21)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v29 = v16;
  sub_10037550C();
  v16 = v29;
  if (v21)
  {
LABEL_8:
    swift_allocError();
    swift_willThrow();
    swift_errorRetain();
    sub_1000F5104(&unk_1009399E0, &qword_100795D00);
    if ((swift_dynamicCast() & 1) == 0)
    {

      a1, v22, v23, v24, v25, v26, v27, v28;

      return;
    }

    goto LABEL_26;
  }

LABEL_11:
  v30 = *a3;
  *(*a3 + 8 * (v16 >> 6) + 64) |= 1 << v16;
  *(v30[6] + 8 * v16) = v14;
  *(v30[7] + 8 * v16) = v15;
  v31 = v30[2];
  v19 = __OFADD__(v31, 1);
  v32 = v31 + 1;
  if (v19)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    _StringGuts.grow(_:)(30);
    v43._object = 0x80000001007F8340;
    v43._countAndFlagsBits = 0xD00000000000001BLL;
    String.append(_:)(v43);
    sub_1000F5104(&unk_1009437E0, &unk_100797FB0);
    _print_unlocked<A, B>(_:_:)();
    v44._countAndFlagsBits = 39;
    v44._object = 0xE100000000000000;
    String.append(_:)(v44);
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return;
  }

  v30[2] = v32;
  if (v9 != 1)
  {
    v11 = (a1 + 56);
    v33 = 1;
    while (v33 < *(a1 + 16))
    {
      v34 = *v11;
      v35 = *a3;
      v14 = *(v11 - 1);
      v15 = v34;
      v36 = sub_100393C74();
      v37 = v35[2];
      v38 = (a2 & 1) == 0;
      v19 = __OFADD__(v37, v38);
      v39 = v37 + v38;
      if (v19)
      {
        goto LABEL_23;
      }

      v21 = a2;
      if (v35[3] < v39)
      {
        sub_10036E060(v39, 1);
        v36 = sub_100393C74();
        if ((v21 & 1) != (a2 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v21)
      {
        goto LABEL_8;
      }

      v40 = *a3;
      *(*a3 + 8 * (v36 >> 6) + 64) |= 1 << v36;
      *(v40[6] + 8 * v36) = v14;
      *(v40[7] + 8 * v36) = v15;
      v41 = v40[2];
      v19 = __OFADD__(v41, 1);
      v42 = v41 + 1;
      if (v19)
      {
        goto LABEL_24;
      }

      ++v33;
      v40[2] = v42;
      v11 += 2;
      if (v9 == v33)
      {
        goto LABEL_21;
      }
    }

    goto LABEL_25;
  }

LABEL_21:
  a1, a2, a3, a4, a5, a6, a7, a8;
}

void sub_10067D804(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = *(a1 + 16);
  if (!v9)
  {
    goto LABEL_21;
  }

  LOBYTE(v11) = a2;
  v12 = *(a1 + 40);
  v13 = *a3;
  v14 = *(a1 + 32);
  v15 = v12;
  v16 = sub_100393C74();
  v17 = v13[2];
  v18 = (a2 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v21 = a2;
  if (v13[3] < v20)
  {
    sub_10036E074(v20, v11 & 1);
    v16 = sub_100393C74();
    if ((v21 & 1) == (a2 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    sub_1000F5104(&unk_100943820, &unk_1007A4100);
    v16 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if (v11)
  {
LABEL_7:
    if (v21)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v29 = v16;
  sub_100375520();
  v16 = v29;
  if (v21)
  {
LABEL_8:
    swift_allocError();
    swift_willThrow();
    swift_errorRetain();
    sub_1000F5104(&unk_1009399E0, &qword_100795D00);
    if ((swift_dynamicCast() & 1) == 0)
    {

      a1, v22, v23, v24, v25, v26, v27, v28;

      return;
    }

    goto LABEL_26;
  }

LABEL_11:
  v30 = *a3;
  *(*a3 + 8 * (v16 >> 6) + 64) |= 1 << v16;
  *(v30[6] + 8 * v16) = v14;
  *(v30[7] + 8 * v16) = v15;
  v31 = v30[2];
  v19 = __OFADD__(v31, 1);
  v32 = v31 + 1;
  if (v19)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    _StringGuts.grow(_:)(30);
    v43._object = 0x80000001007F8340;
    v43._countAndFlagsBits = 0xD00000000000001BLL;
    String.append(_:)(v43);
    sub_1000F5104(&unk_100943820, &unk_1007A4100);
    _print_unlocked<A, B>(_:_:)();
    v44._countAndFlagsBits = 39;
    v44._object = 0xE100000000000000;
    String.append(_:)(v44);
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return;
  }

  v30[2] = v32;
  if (v9 != 1)
  {
    v11 = (a1 + 56);
    v33 = 1;
    while (v33 < *(a1 + 16))
    {
      v34 = *v11;
      v35 = *a3;
      v14 = *(v11 - 1);
      v15 = v34;
      v36 = sub_100393C74();
      v37 = v35[2];
      v38 = (a2 & 1) == 0;
      v19 = __OFADD__(v37, v38);
      v39 = v37 + v38;
      if (v19)
      {
        goto LABEL_23;
      }

      v21 = a2;
      if (v35[3] < v39)
      {
        sub_10036E074(v39, 1);
        v36 = sub_100393C74();
        if ((v21 & 1) != (a2 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v21)
      {
        goto LABEL_8;
      }

      v40 = *a3;
      *(*a3 + 8 * (v36 >> 6) + 64) |= 1 << v36;
      *(v40[6] + 8 * v36) = v14;
      *(v40[7] + 8 * v36) = v15;
      v41 = v40[2];
      v19 = __OFADD__(v41, 1);
      v42 = v41 + 1;
      if (v19)
      {
        goto LABEL_24;
      }

      ++v33;
      v40[2] = v42;
      v11 += 2;
      if (v9 == v33)
      {
        goto LABEL_21;
      }
    }

    goto LABEL_25;
  }

LABEL_21:
  a1, a2, a3, a4, a5, a6, a7, a8;
}

void sub_10067DB84(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = *(a1 + 16);
  if (!v9)
  {
    goto LABEL_21;
  }

  LOBYTE(v11) = a2;
  v12 = *(a1 + 40);
  v13 = *a3;
  v14 = *(a1 + 32);
  v15 = v12;
  v16 = sub_100393C74();
  v17 = v13[2];
  v18 = (a2 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v21 = a2;
  if (v13[3] < v20)
  {
    sub_10036E088(v20, v11 & 1);
    v16 = sub_100393C74();
    if ((v21 & 1) == (a2 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    sub_1000F5104(&unk_1009438A0, &unk_1007A4170);
    v16 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if (v11)
  {
LABEL_7:
    if (v21)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v29 = v16;
  sub_100375534();
  v16 = v29;
  if (v21)
  {
LABEL_8:
    swift_allocError();
    swift_willThrow();
    swift_errorRetain();
    sub_1000F5104(&unk_1009399E0, &qword_100795D00);
    if ((swift_dynamicCast() & 1) == 0)
    {

      a1, v22, v23, v24, v25, v26, v27, v28;

      return;
    }

    goto LABEL_26;
  }

LABEL_11:
  v30 = *a3;
  *(*a3 + 8 * (v16 >> 6) + 64) |= 1 << v16;
  *(v30[6] + 8 * v16) = v14;
  *(v30[7] + 8 * v16) = v15;
  v31 = v30[2];
  v19 = __OFADD__(v31, 1);
  v32 = v31 + 1;
  if (v19)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    _StringGuts.grow(_:)(30);
    v43._object = 0x80000001007F8340;
    v43._countAndFlagsBits = 0xD00000000000001BLL;
    String.append(_:)(v43);
    sub_1000F5104(&unk_1009438A0, &unk_1007A4170);
    _print_unlocked<A, B>(_:_:)();
    v44._countAndFlagsBits = 39;
    v44._object = 0xE100000000000000;
    String.append(_:)(v44);
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return;
  }

  v30[2] = v32;
  if (v9 != 1)
  {
    v11 = (a1 + 56);
    v33 = 1;
    while (v33 < *(a1 + 16))
    {
      v34 = *v11;
      v35 = *a3;
      v14 = *(v11 - 1);
      v15 = v34;
      v36 = sub_100393C74();
      v37 = v35[2];
      v38 = (a2 & 1) == 0;
      v19 = __OFADD__(v37, v38);
      v39 = v37 + v38;
      if (v19)
      {
        goto LABEL_23;
      }

      v21 = a2;
      if (v35[3] < v39)
      {
        sub_10036E088(v39, 1);
        v36 = sub_100393C74();
        if ((v21 & 1) != (a2 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v21)
      {
        goto LABEL_8;
      }

      v40 = *a3;
      *(*a3 + 8 * (v36 >> 6) + 64) |= 1 << v36;
      *(v40[6] + 8 * v36) = v14;
      *(v40[7] + 8 * v36) = v15;
      v41 = v40[2];
      v19 = __OFADD__(v41, 1);
      v42 = v41 + 1;
      if (v19)
      {
        goto LABEL_24;
      }

      ++v33;
      v40[2] = v42;
      v11 += 2;
      if (v9 == v33)
      {
        goto LABEL_21;
      }
    }

    goto LABEL_25;
  }

LABEL_21:
  a1, a2, a3, a4, a5, a6, a7, a8;
}

void sub_10067DF04(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = *(a1 + 16);
  if (!v9)
  {
    goto LABEL_21;
  }

  LOBYTE(v11) = a2;
  v12 = *(a1 + 40);
  v13 = *a3;
  v14 = *(a1 + 32);
  v15 = v12;
  v16 = sub_100393C74();
  v17 = v13[2];
  v18 = (a2 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v21 = a2;
  if (v13[3] < v20)
  {
    sub_10036FA80(v20, v11 & 1);
    v16 = sub_100393C74();
    if ((v21 & 1) == (a2 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    sub_1000F5104(&unk_100943950, &unk_1007A4200);
    v16 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if (v11)
  {
LABEL_7:
    if (v21)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v29 = v16;
  sub_100376284();
  v16 = v29;
  if (v21)
  {
LABEL_8:
    swift_allocError();
    swift_willThrow();
    swift_errorRetain();
    sub_1000F5104(&unk_1009399E0, &qword_100795D00);
    if ((swift_dynamicCast() & 1) == 0)
    {

      a1, v22, v23, v24, v25, v26, v27, v28;

      return;
    }

    goto LABEL_26;
  }

LABEL_11:
  v30 = *a3;
  *(*a3 + 8 * (v16 >> 6) + 64) |= 1 << v16;
  *(v30[6] + 8 * v16) = v14;
  *(v30[7] + 8 * v16) = v15;
  v31 = v30[2];
  v19 = __OFADD__(v31, 1);
  v32 = v31 + 1;
  if (v19)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    _StringGuts.grow(_:)(30);
    v43._object = 0x80000001007F8340;
    v43._countAndFlagsBits = 0xD00000000000001BLL;
    String.append(_:)(v43);
    sub_1000F5104(&unk_100943950, &unk_1007A4200);
    _print_unlocked<A, B>(_:_:)();
    v44._countAndFlagsBits = 39;
    v44._object = 0xE100000000000000;
    String.append(_:)(v44);
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return;
  }

  v30[2] = v32;
  if (v9 != 1)
  {
    v11 = (a1 + 56);
    v33 = 1;
    while (v33 < *(a1 + 16))
    {
      v34 = *v11;
      v35 = *a3;
      v14 = *(v11 - 1);
      v15 = v34;
      v36 = sub_100393C74();
      v37 = v35[2];
      v38 = (a2 & 1) == 0;
      v19 = __OFADD__(v37, v38);
      v39 = v37 + v38;
      if (v19)
      {
        goto LABEL_23;
      }

      v21 = a2;
      if (v35[3] < v39)
      {
        sub_10036FA80(v39, 1);
        v36 = sub_100393C74();
        if ((v21 & 1) != (a2 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v21)
      {
        goto LABEL_8;
      }

      v40 = *a3;
      *(*a3 + 8 * (v36 >> 6) + 64) |= 1 << v36;
      *(v40[6] + 8 * v36) = v14;
      *(v40[7] + 8 * v36) = v15;
      v41 = v40[2];
      v19 = __OFADD__(v41, 1);
      v42 = v41 + 1;
      if (v19)
      {
        goto LABEL_24;
      }

      ++v33;
      v40[2] = v42;
      v11 += 2;
      if (v9 == v33)
      {
        goto LABEL_21;
      }
    }

    goto LABEL_25;
  }

LABEL_21:
  a1, a2, a3, a4, a5, a6, a7, a8;
}

void sub_10067E284(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = *(a1 + 16);
  if (!v9)
  {
    goto LABEL_21;
  }

  LOBYTE(v11) = a2;
  v12 = *(a1 + 40);
  v13 = *a3;
  v14 = *(a1 + 32);
  v15 = v12;
  v16 = sub_100393C74();
  v17 = v13[2];
  v18 = (a2 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v21 = a2;
  if (v13[3] < v20)
  {
    sub_10036FA94(v20, v11 & 1);
    v16 = sub_100393C74();
    if ((v21 & 1) == (a2 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    sub_1000F5104(&unk_100943260, &qword_100797F38);
    v16 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if (v11)
  {
LABEL_7:
    if (v21)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v29 = v16;
  sub_100376298();
  v16 = v29;
  if (v21)
  {
LABEL_8:
    swift_allocError();
    swift_willThrow();
    swift_errorRetain();
    sub_1000F5104(&unk_1009399E0, &qword_100795D00);
    if ((swift_dynamicCast() & 1) == 0)
    {

      a1, v22, v23, v24, v25, v26, v27, v28;

      return;
    }

    goto LABEL_26;
  }

LABEL_11:
  v30 = *a3;
  *(*a3 + 8 * (v16 >> 6) + 64) |= 1 << v16;
  *(v30[6] + 8 * v16) = v14;
  *(v30[7] + 8 * v16) = v15;
  v31 = v30[2];
  v19 = __OFADD__(v31, 1);
  v32 = v31 + 1;
  if (v19)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    _StringGuts.grow(_:)(30);
    v43._object = 0x80000001007F8340;
    v43._countAndFlagsBits = 0xD00000000000001BLL;
    String.append(_:)(v43);
    sub_1000F5104(&unk_100943260, &qword_100797F38);
    _print_unlocked<A, B>(_:_:)();
    v44._countAndFlagsBits = 39;
    v44._object = 0xE100000000000000;
    String.append(_:)(v44);
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return;
  }

  v30[2] = v32;
  if (v9 != 1)
  {
    v11 = (a1 + 56);
    v33 = 1;
    while (v33 < *(a1 + 16))
    {
      v34 = *v11;
      v35 = *a3;
      v14 = *(v11 - 1);
      v15 = v34;
      v36 = sub_100393C74();
      v37 = v35[2];
      v38 = (a2 & 1) == 0;
      v19 = __OFADD__(v37, v38);
      v39 = v37 + v38;
      if (v19)
      {
        goto LABEL_23;
      }

      v21 = a2;
      if (v35[3] < v39)
      {
        sub_10036FA94(v39, 1);
        v36 = sub_100393C74();
        if ((v21 & 1) != (a2 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v21)
      {
        goto LABEL_8;
      }

      v40 = *a3;
      *(*a3 + 8 * (v36 >> 6) + 64) |= 1 << v36;
      *(v40[6] + 8 * v36) = v14;
      *(v40[7] + 8 * v36) = v15;
      v41 = v40[2];
      v19 = __OFADD__(v41, 1);
      v42 = v41 + 1;
      if (v19)
      {
        goto LABEL_24;
      }

      ++v33;
      v40[2] = v42;
      v11 += 2;
      if (v9 == v33)
      {
        goto LABEL_21;
      }
    }

    goto LABEL_25;
  }

LABEL_21:
  a1, a2, a3, a4, a5, a6, a7, a8;
}

void sub_10067E604(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = *(a1 + 16);
  if (!v9)
  {
    goto LABEL_21;
  }

  LOBYTE(v11) = a2;
  v12 = *(a1 + 40);
  v13 = *a3;
  v14 = *(a1 + 32);
  v15 = v12;
  v16 = sub_100393C74();
  v17 = v13[2];
  v18 = (a2 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v21 = a2;
  if (v13[3] < v20)
  {
    sub_10036FAA8(v20, v11 & 1);
    v16 = sub_100393C74();
    if ((v21 & 1) == (a2 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    sub_1000F5104(&unk_1009432F0, &qword_1007B4D80);
    v16 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if (v11)
  {
LABEL_7:
    if (v21)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v29 = v16;
  sub_1003762AC();
  v16 = v29;
  if (v21)
  {
LABEL_8:
    swift_allocError();
    swift_willThrow();
    swift_errorRetain();
    sub_1000F5104(&unk_1009399E0, &qword_100795D00);
    if ((swift_dynamicCast() & 1) == 0)
    {

      a1, v22, v23, v24, v25, v26, v27, v28;

      return;
    }

    goto LABEL_26;
  }

LABEL_11:
  v30 = *a3;
  *(*a3 + 8 * (v16 >> 6) + 64) |= 1 << v16;
  *(v30[6] + 8 * v16) = v14;
  *(v30[7] + 8 * v16) = v15;
  v31 = v30[2];
  v19 = __OFADD__(v31, 1);
  v32 = v31 + 1;
  if (v19)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    _StringGuts.grow(_:)(30);
    v43._object = 0x80000001007F8340;
    v43._countAndFlagsBits = 0xD00000000000001BLL;
    String.append(_:)(v43);
    sub_1000F5104(&unk_1009432F0, &qword_1007B4D80);
    _print_unlocked<A, B>(_:_:)();
    v44._countAndFlagsBits = 39;
    v44._object = 0xE100000000000000;
    String.append(_:)(v44);
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return;
  }

  v30[2] = v32;
  if (v9 != 1)
  {
    v11 = (a1 + 56);
    v33 = 1;
    while (v33 < *(a1 + 16))
    {
      v34 = *v11;
      v35 = *a3;
      v14 = *(v11 - 1);
      v15 = v34;
      v36 = sub_100393C74();
      v37 = v35[2];
      v38 = (a2 & 1) == 0;
      v19 = __OFADD__(v37, v38);
      v39 = v37 + v38;
      if (v19)
      {
        goto LABEL_23;
      }

      v21 = a2;
      if (v35[3] < v39)
      {
        sub_10036FAA8(v39, 1);
        v36 = sub_100393C74();
        if ((v21 & 1) != (a2 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v21)
      {
        goto LABEL_8;
      }

      v40 = *a3;
      *(*a3 + 8 * (v36 >> 6) + 64) |= 1 << v36;
      *(v40[6] + 8 * v36) = v14;
      *(v40[7] + 8 * v36) = v15;
      v41 = v40[2];
      v19 = __OFADD__(v41, 1);
      v42 = v41 + 1;
      if (v19)
      {
        goto LABEL_24;
      }

      ++v33;
      v40[2] = v42;
      v11 += 2;
      if (v9 == v33)
      {
        goto LABEL_21;
      }
    }

    goto LABEL_25;
  }

LABEL_21:
  a1, a2, a3, a4, a5, a6, a7, a8;
}

void sub_10067E984(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = *(a1 + 16);
  if (!v9)
  {
    goto LABEL_21;
  }

  LOBYTE(v11) = a2;
  v12 = *(a1 + 40);
  v13 = *a3;
  v14 = *(a1 + 32);
  v15 = v12;
  v16 = sub_100393C74();
  v17 = v13[2];
  v18 = (a2 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v21 = a2;
  if (v13[3] < v20)
  {
    sub_100372774(v20, v11 & 1);
    v16 = sub_100393C74();
    if ((v21 & 1) == (a2 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    sub_1000F5104(&unk_100944000, &unk_100798010);
    v16 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if (v11)
  {
LABEL_7:
    if (v21)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v29 = v16;
  sub_100377D18();
  v16 = v29;
  if (v21)
  {
LABEL_8:
    swift_allocError();
    swift_willThrow();
    swift_errorRetain();
    sub_1000F5104(&unk_1009399E0, &qword_100795D00);
    if ((swift_dynamicCast() & 1) == 0)
    {

      a1, v22, v23, v24, v25, v26, v27, v28;

      return;
    }

    goto LABEL_26;
  }

LABEL_11:
  v30 = *a3;
  *(*a3 + 8 * (v16 >> 6) + 64) |= 1 << v16;
  *(v30[6] + 8 * v16) = v14;
  *(v30[7] + 8 * v16) = v15;
  v31 = v30[2];
  v19 = __OFADD__(v31, 1);
  v32 = v31 + 1;
  if (v19)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    _StringGuts.grow(_:)(30);
    v43._object = 0x80000001007F8340;
    v43._countAndFlagsBits = 0xD00000000000001BLL;
    String.append(_:)(v43);
    sub_1000F5104(&unk_100944000, &unk_100798010);
    _print_unlocked<A, B>(_:_:)();
    v44._countAndFlagsBits = 39;
    v44._object = 0xE100000000000000;
    String.append(_:)(v44);
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return;
  }

  v30[2] = v32;
  if (v9 != 1)
  {
    v11 = (a1 + 56);
    v33 = 1;
    while (v33 < *(a1 + 16))
    {
      v34 = *v11;
      v35 = *a3;
      v14 = *(v11 - 1);
      v15 = v34;
      v36 = sub_100393C74();
      v37 = v35[2];
      v38 = (a2 & 1) == 0;
      v19 = __OFADD__(v37, v38);
      v39 = v37 + v38;
      if (v19)
      {
        goto LABEL_23;
      }

      v21 = a2;
      if (v35[3] < v39)
      {
        sub_100372774(v39, 1);
        v36 = sub_100393C74();
        if ((v21 & 1) != (a2 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v21)
      {
        goto LABEL_8;
      }

      v40 = *a3;
      *(*a3 + 8 * (v36 >> 6) + 64) |= 1 << v36;
      *(v40[6] + 8 * v36) = v14;
      *(v40[7] + 8 * v36) = v15;
      v41 = v40[2];
      v19 = __OFADD__(v41, 1);
      v42 = v41 + 1;
      if (v19)
      {
        goto LABEL_24;
      }

      ++v33;
      v40[2] = v42;
      v11 += 2;
      if (v9 == v33)
      {
        goto LABEL_21;
      }
    }

    goto LABEL_25;
  }

LABEL_21:
  a1, a2, a3, a4, a5, a6, a7, a8;
}

void sub_10067ED04(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = *(a1 + 16);
  if (!v9)
  {
    goto LABEL_21;
  }

  LOBYTE(v11) = a2;
  v12 = *(a1 + 40);
  v13 = *a3;
  v14 = *(a1 + 32);
  v15 = v12;
  v16 = sub_100393C74();
  v17 = v13[2];
  v18 = (a2 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v21 = a2;
  if (v13[3] < v20)
  {
    sub_100372BA0(v20, v11 & 1);
    v16 = sub_100393C74();
    if ((v21 & 1) == (a2 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    sub_1000F5104(&unk_1009433D0, &unk_100797F50);
    v16 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if (v11)
  {
LABEL_7:
    if (v21)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v29 = v16;
  sub_10037812C();
  v16 = v29;
  if (v21)
  {
LABEL_8:
    swift_allocError();
    swift_willThrow();
    swift_errorRetain();
    sub_1000F5104(&unk_1009399E0, &qword_100795D00);
    if ((swift_dynamicCast() & 1) == 0)
    {

      a1, v22, v23, v24, v25, v26, v27, v28;

      return;
    }

    goto LABEL_26;
  }

LABEL_11:
  v30 = *a3;
  *(*a3 + 8 * (v16 >> 6) + 64) |= 1 << v16;
  *(v30[6] + 8 * v16) = v14;
  *(v30[7] + 8 * v16) = v15;
  v31 = v30[2];
  v19 = __OFADD__(v31, 1);
  v32 = v31 + 1;
  if (v19)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    _StringGuts.grow(_:)(30);
    v43._object = 0x80000001007F8340;
    v43._countAndFlagsBits = 0xD00000000000001BLL;
    String.append(_:)(v43);
    sub_1000F5104(&unk_1009433D0, &unk_100797F50);
    _print_unlocked<A, B>(_:_:)();
    v44._countAndFlagsBits = 39;
    v44._object = 0xE100000000000000;
    String.append(_:)(v44);
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return;
  }

  v30[2] = v32;
  if (v9 != 1)
  {
    v11 = (a1 + 56);
    v33 = 1;
    while (v33 < *(a1 + 16))
    {
      v34 = *v11;
      v35 = *a3;
      v14 = *(v11 - 1);
      v15 = v34;
      v36 = sub_100393C74();
      v37 = v35[2];
      v38 = (a2 & 1) == 0;
      v19 = __OFADD__(v37, v38);
      v39 = v37 + v38;
      if (v19)
      {
        goto LABEL_23;
      }

      v21 = a2;
      if (v35[3] < v39)
      {
        sub_100372BA0(v39, 1);
        v36 = sub_100393C74();
        if ((v21 & 1) != (a2 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v21)
      {
        goto LABEL_8;
      }

      v40 = *a3;
      *(*a3 + 8 * (v36 >> 6) + 64) |= 1 << v36;
      *(v40[6] + 8 * v36) = v14;
      *(v40[7] + 8 * v36) = v15;
      v41 = v40[2];
      v19 = __OFADD__(v41, 1);
      v42 = v41 + 1;
      if (v19)
      {
        goto LABEL_24;
      }

      ++v33;
      v40[2] = v42;
      v11 += 2;
      if (v9 == v33)
      {
        goto LABEL_21;
      }
    }

    goto LABEL_25;
  }

LABEL_21:
  a1, a2, a3, a4, a5, a6, a7, a8;
}

void sub_10067F084(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = *(a1 + 16);
  if (!v9)
  {
    goto LABEL_21;
  }

  LOBYTE(v11) = a2;
  v12 = *(a1 + 40);
  v13 = *a3;
  v14 = *(a1 + 32);
  v15 = v12;
  v16 = sub_100393C74();
  v17 = v13[2];
  v18 = (a2 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v21 = a2;
  if (v13[3] < v20)
  {
    sub_100372BB4(v20, v11 & 1);
    v16 = sub_100393C74();
    if ((v21 & 1) == (a2 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    sub_1000F5104(&unk_100943420, &unk_1007A3DC0);
    v16 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if (v11)
  {
LABEL_7:
    if (v21)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v29 = v16;
  sub_100378140();
  v16 = v29;
  if (v21)
  {
LABEL_8:
    swift_allocError();
    swift_willThrow();
    swift_errorRetain();
    sub_1000F5104(&unk_1009399E0, &qword_100795D00);
    if ((swift_dynamicCast() & 1) == 0)
    {

      a1, v22, v23, v24, v25, v26, v27, v28;

      return;
    }

    goto LABEL_26;
  }

LABEL_11:
  v30 = *a3;
  *(*a3 + 8 * (v16 >> 6) + 64) |= 1 << v16;
  *(v30[6] + 8 * v16) = v14;
  *(v30[7] + 8 * v16) = v15;
  v31 = v30[2];
  v19 = __OFADD__(v31, 1);
  v32 = v31 + 1;
  if (v19)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    _StringGuts.grow(_:)(30);
    v43._object = 0x80000001007F8340;
    v43._countAndFlagsBits = 0xD00000000000001BLL;
    String.append(_:)(v43);
    sub_1000F5104(&unk_100943420, &unk_1007A3DC0);
    _print_unlocked<A, B>(_:_:)();
    v44._countAndFlagsBits = 39;
    v44._object = 0xE100000000000000;
    String.append(_:)(v44);
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return;
  }

  v30[2] = v32;
  if (v9 != 1)
  {
    v11 = (a1 + 56);
    v33 = 1;
    while (v33 < *(a1 + 16))
    {
      v34 = *v11;
      v35 = *a3;
      v14 = *(v11 - 1);
      v15 = v34;
      v36 = sub_100393C74();
      v37 = v35[2];
      v38 = (a2 & 1) == 0;
      v19 = __OFADD__(v37, v38);
      v39 = v37 + v38;
      if (v19)
      {
        goto LABEL_23;
      }

      v21 = a2;
      if (v35[3] < v39)
      {
        sub_100372BB4(v39, 1);
        v36 = sub_100393C74();
        if ((v21 & 1) != (a2 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v21)
      {
        goto LABEL_8;
      }

      v40 = *a3;
      *(*a3 + 8 * (v36 >> 6) + 64) |= 1 << v36;
      *(v40[6] + 8 * v36) = v14;
      *(v40[7] + 8 * v36) = v15;
      v41 = v40[2];
      v19 = __OFADD__(v41, 1);
      v42 = v41 + 1;
      if (v19)
      {
        goto LABEL_24;
      }

      ++v33;
      v40[2] = v42;
      v11 += 2;
      if (v9 == v33)
      {
        goto LABEL_21;
      }
    }

    goto LABEL_25;
  }

LABEL_21:
  a1, a2, a3, a4, a5, a6, a7, a8;
}

void sub_10067F404(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = *(a1 + 16);
  if (!v9)
  {
    goto LABEL_21;
  }

  LOBYTE(v11) = a2;
  v12 = *(a1 + 40);
  v13 = *a3;
  v14 = *(a1 + 32);
  v15 = v12;
  v16 = sub_100393C74();
  v17 = v13[2];
  v18 = (a2 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v21 = a2;
  if (v13[3] < v20)
  {
    sub_100372BC8(v20, v11 & 1);
    v16 = sub_100393C74();
    if ((v21 & 1) == (a2 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    sub_1000F5104(&unk_100943470, &unk_100797F60);
    v16 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if (v11)
  {
LABEL_7:
    if (v21)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v29 = v16;
  sub_100378154();
  v16 = v29;
  if (v21)
  {
LABEL_8:
    swift_allocError();
    swift_willThrow();
    swift_errorRetain();
    sub_1000F5104(&unk_1009399E0, &qword_100795D00);
    if ((swift_dynamicCast() & 1) == 0)
    {

      a1, v22, v23, v24, v25, v26, v27, v28;

      return;
    }

    goto LABEL_26;
  }

LABEL_11:
  v30 = *a3;
  *(*a3 + 8 * (v16 >> 6) + 64) |= 1 << v16;
  *(v30[6] + 8 * v16) = v14;
  *(v30[7] + 8 * v16) = v15;
  v31 = v30[2];
  v19 = __OFADD__(v31, 1);
  v32 = v31 + 1;
  if (v19)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    _StringGuts.grow(_:)(30);
    v43._object = 0x80000001007F8340;
    v43._countAndFlagsBits = 0xD00000000000001BLL;
    String.append(_:)(v43);
    sub_1000F5104(&unk_100943470, &unk_100797F60);
    _print_unlocked<A, B>(_:_:)();
    v44._countAndFlagsBits = 39;
    v44._object = 0xE100000000000000;
    String.append(_:)(v44);
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return;
  }

  v30[2] = v32;
  if (v9 != 1)
  {
    v11 = (a1 + 56);
    v33 = 1;
    while (v33 < *(a1 + 16))
    {
      v34 = *v11;
      v35 = *a3;
      v14 = *(v11 - 1);
      v15 = v34;
      v36 = sub_100393C74();
      v37 = v35[2];
      v38 = (a2 & 1) == 0;
      v19 = __OFADD__(v37, v38);
      v39 = v37 + v38;
      if (v19)
      {
        goto LABEL_23;
      }

      v21 = a2;
      if (v35[3] < v39)
      {
        sub_100372BC8(v39, 1);
        v36 = sub_100393C74();
        if ((v21 & 1) != (a2 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v21)
      {
        goto LABEL_8;
      }

      v40 = *a3;
      *(*a3 + 8 * (v36 >> 6) + 64) |= 1 << v36;
      *(v40[6] + 8 * v36) = v14;
      *(v40[7] + 8 * v36) = v15;
      v41 = v40[2];
      v19 = __OFADD__(v41, 1);
      v42 = v41 + 1;
      if (v19)
      {
        goto LABEL_24;
      }

      ++v33;
      v40[2] = v42;
      v11 += 2;
      if (v9 == v33)
      {
        goto LABEL_21;
      }
    }

    goto LABEL_25;
  }

LABEL_21:
  a1, a2, a3, a4, a5, a6, a7, a8;
}

void sub_10067F784(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = *(a1 + 16);
  if (!v9)
  {
    goto LABEL_21;
  }

  LOBYTE(v11) = a2;
  v12 = *(a1 + 40);
  v13 = *a3;
  v14 = *(a1 + 32);
  v15 = v12;
  v16 = sub_100393C74();
  v17 = v13[2];
  v18 = (a2 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v21 = a2;
  if (v13[3] < v20)
  {
    sub_100372BDC(v20, v11 & 1);
    v16 = sub_100393C74();
    if ((v21 & 1) == (a2 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    sub_1000F5104(&unk_1009434C0, &unk_1007A3E50);
    v16 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if (v11)
  {
LABEL_7:
    if (v21)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v29 = v16;
  sub_100378168();
  v16 = v29;
  if (v21)
  {
LABEL_8:
    swift_allocError();
    swift_willThrow();
    swift_errorRetain();
    sub_1000F5104(&unk_1009399E0, &qword_100795D00);
    if ((swift_dynamicCast() & 1) == 0)
    {

      a1, v22, v23, v24, v25, v26, v27, v28;

      return;
    }

    goto LABEL_26;
  }

LABEL_11:
  v30 = *a3;
  *(*a3 + 8 * (v16 >> 6) + 64) |= 1 << v16;
  *(v30[6] + 8 * v16) = v14;
  *(v30[7] + 8 * v16) = v15;
  v31 = v30[2];
  v19 = __OFADD__(v31, 1);
  v32 = v31 + 1;
  if (v19)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    _StringGuts.grow(_:)(30);
    v43._object = 0x80000001007F8340;
    v43._countAndFlagsBits = 0xD00000000000001BLL;
    String.append(_:)(v43);
    sub_1000F5104(&unk_1009434C0, &unk_1007A3E50);
    _print_unlocked<A, B>(_:_:)();
    v44._countAndFlagsBits = 39;
    v44._object = 0xE100000000000000;
    String.append(_:)(v44);
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return;
  }

  v30[2] = v32;
  if (v9 != 1)
  {
    v11 = (a1 + 56);
    v33 = 1;
    while (v33 < *(a1 + 16))
    {
      v34 = *v11;
      v35 = *a3;
      v14 = *(v11 - 1);
      v15 = v34;
      v36 = sub_100393C74();
      v37 = v35[2];
      v38 = (a2 & 1) == 0;
      v19 = __OFADD__(v37, v38);
      v39 = v37 + v38;
      if (v19)
      {
        goto LABEL_23;
      }

      v21 = a2;
      if (v35[3] < v39)
      {
        sub_100372BDC(v39, 1);
        v36 = sub_100393C74();
        if ((v21 & 1) != (a2 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v21)
      {
        goto LABEL_8;
      }

      v40 = *a3;
      *(*a3 + 8 * (v36 >> 6) + 64) |= 1 << v36;
      *(v40[6] + 8 * v36) = v14;
      *(v40[7] + 8 * v36) = v15;
      v41 = v40[2];
      v19 = __OFADD__(v41, 1);
      v42 = v41 + 1;
      if (v19)
      {
        goto LABEL_24;
      }

      ++v33;
      v40[2] = v42;
      v11 += 2;
      if (v9 == v33)
      {
        goto LABEL_21;
      }
    }

    goto LABEL_25;
  }

LABEL_21:
  a1, a2, a3, a4, a5, a6, a7, a8;
}

void sub_10067FB04(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = *(a1 + 16);
  if (!v9)
  {
    goto LABEL_21;
  }

  LOBYTE(v11) = a2;
  v12 = *(a1 + 40);
  v13 = *a3;
  v14 = *(a1 + 32);
  v15 = v12;
  v16 = sub_100393C74();
  v17 = v13[2];
  v18 = (a2 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v21 = a2;
  if (v13[3] < v20)
  {
    sub_100372BF0(v20, v11 & 1);
    v16 = sub_100393C74();
    if ((v21 & 1) == (a2 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    sub_1000F5104(&qword_10094F310, &qword_100797F78);
    v16 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if (v11)
  {
LABEL_7:
    if (v21)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v29 = v16;
  sub_10037817C();
  v16 = v29;
  if (v21)
  {
LABEL_8:
    swift_allocError();
    swift_willThrow();
    swift_errorRetain();
    sub_1000F5104(&unk_1009399E0, &qword_100795D00);
    if ((swift_dynamicCast() & 1) == 0)
    {

      a1, v22, v23, v24, v25, v26, v27, v28;

      return;
    }

    goto LABEL_26;
  }

LABEL_11:
  v30 = *a3;
  *(*a3 + 8 * (v16 >> 6) + 64) |= 1 << v16;
  *(v30[6] + 8 * v16) = v14;
  *(v30[7] + 8 * v16) = v15;
  v31 = v30[2];
  v19 = __OFADD__(v31, 1);
  v32 = v31 + 1;
  if (v19)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    _StringGuts.grow(_:)(30);
    v43._object = 0x80000001007F8340;
    v43._countAndFlagsBits = 0xD00000000000001BLL;
    String.append(_:)(v43);
    sub_1000F5104(&qword_10094F310, &qword_100797F78);
    _print_unlocked<A, B>(_:_:)();
    v44._countAndFlagsBits = 39;
    v44._object = 0xE100000000000000;
    String.append(_:)(v44);
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return;
  }

  v30[2] = v32;
  if (v9 != 1)
  {
    v11 = (a1 + 56);
    v33 = 1;
    while (v33 < *(a1 + 16))
    {
      v34 = *v11;
      v35 = *a3;
      v14 = *(v11 - 1);
      v15 = v34;
      v36 = sub_100393C74();
      v37 = v35[2];
      v38 = (a2 & 1) == 0;
      v19 = __OFADD__(v37, v38);
      v39 = v37 + v38;
      if (v19)
      {
        goto LABEL_23;
      }

      v21 = a2;
      if (v35[3] < v39)
      {
        sub_100372BF0(v39, 1);
        v36 = sub_100393C74();
        if ((v21 & 1) != (a2 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v21)
      {
        goto LABEL_8;
      }

      v40 = *a3;
      *(*a3 + 8 * (v36 >> 6) + 64) |= 1 << v36;
      *(v40[6] + 8 * v36) = v14;
      *(v40[7] + 8 * v36) = v15;
      v41 = v40[2];
      v19 = __OFADD__(v41, 1);
      v42 = v41 + 1;
      if (v19)
      {
        goto LABEL_24;
      }

      ++v33;
      v40[2] = v42;
      v11 += 2;
      if (v9 == v33)
      {
        goto LABEL_21;
      }
    }

    goto LABEL_25;
  }

LABEL_21:
  a1, a2, a3, a4, a5, a6, a7, a8;
}

void sub_10067FE84(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = *(a1 + 16);
  if (!v9)
  {
    goto LABEL_21;
  }

  LOBYTE(v11) = a2;
  v12 = *(a1 + 40);
  v13 = *a3;
  v14 = *(a1 + 32);
  v15 = v12;
  v16 = sub_100393C74();
  v17 = v13[2];
  v18 = (a2 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v21 = a2;
  if (v13[3] < v20)
  {
    sub_100372C04(v20, v11 & 1);
    v16 = sub_100393C74();
    if ((v21 & 1) == (a2 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    sub_1000F5104(&unk_10094F390, &unk_100797F80);
    v16 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if (v11)
  {
LABEL_7:
    if (v21)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v29 = v16;
  sub_100378190();
  v16 = v29;
  if (v21)
  {
LABEL_8:
    swift_allocError();
    swift_willThrow();
    swift_errorRetain();
    sub_1000F5104(&unk_1009399E0, &qword_100795D00);
    if ((swift_dynamicCast() & 1) == 0)
    {

      a1, v22, v23, v24, v25, v26, v27, v28;

      return;
    }

    goto LABEL_26;
  }

LABEL_11:
  v30 = *a3;
  *(*a3 + 8 * (v16 >> 6) + 64) |= 1 << v16;
  *(v30[6] + 8 * v16) = v14;
  *(v30[7] + 8 * v16) = v15;
  v31 = v30[2];
  v19 = __OFADD__(v31, 1);
  v32 = v31 + 1;
  if (v19)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    _StringGuts.grow(_:)(30);
    v43._object = 0x80000001007F8340;
    v43._countAndFlagsBits = 0xD00000000000001BLL;
    String.append(_:)(v43);
    sub_1000F5104(&unk_10094F390, &unk_100797F80);
    _print_unlocked<A, B>(_:_:)();
    v44._countAndFlagsBits = 39;
    v44._object = 0xE100000000000000;
    String.append(_:)(v44);
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return;
  }

  v30[2] = v32;
  if (v9 != 1)
  {
    v11 = (a1 + 56);
    v33 = 1;
    while (v33 < *(a1 + 16))
    {
      v34 = *v11;
      v35 = *a3;
      v14 = *(v11 - 1);
      v15 = v34;
      v36 = sub_100393C74();
      v37 = v35[2];
      v38 = (a2 & 1) == 0;
      v19 = __OFADD__(v37, v38);
      v39 = v37 + v38;
      if (v19)
      {
        goto LABEL_23;
      }

      v21 = a2;
      if (v35[3] < v39)
      {
        sub_100372C04(v39, 1);
        v36 = sub_100393C74();
        if ((v21 & 1) != (a2 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v21)
      {
        goto LABEL_8;
      }

      v40 = *a3;
      *(*a3 + 8 * (v36 >> 6) + 64) |= 1 << v36;
      *(v40[6] + 8 * v36) = v14;
      *(v40[7] + 8 * v36) = v15;
      v41 = v40[2];
      v19 = __OFADD__(v41, 1);
      v42 = v41 + 1;
      if (v19)
      {
        goto LABEL_24;
      }

      ++v33;
      v40[2] = v42;
      v11 += 2;
      if (v9 == v33)
      {
        goto LABEL_21;
      }
    }

    goto LABEL_25;
  }

LABEL_21:
  a1, a2, a3, a4, a5, a6, a7, a8;
}

void sub_100680204(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = *(a1 + 16);
  if (!v9)
  {
    goto LABEL_21;
  }

  LOBYTE(v11) = a2;
  v12 = *(a1 + 40);
  v13 = *a3;
  v14 = *(a1 + 32);
  v15 = v12;
  v16 = sub_100393C74();
  v17 = v13[2];
  v18 = (a2 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v21 = a2;
  if (v13[3] < v20)
  {
    sub_100372C18(v20, v11 & 1);
    v16 = sub_100393C74();
    if ((v21 & 1) == (a2 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    sub_1000F5104(&unk_1009436D0, &unk_100797F90);
    v16 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if (v11)
  {
LABEL_7:
    if (v21)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v29 = v16;
  sub_1003781A4();
  v16 = v29;
  if (v21)
  {
LABEL_8:
    swift_allocError();
    swift_willThrow();
    swift_errorRetain();
    sub_1000F5104(&unk_1009399E0, &qword_100795D00);
    if ((swift_dynamicCast() & 1) == 0)
    {

      a1, v22, v23, v24, v25, v26, v27, v28;

      return;
    }

    goto LABEL_26;
  }

LABEL_11:
  v30 = *a3;
  *(*a3 + 8 * (v16 >> 6) + 64) |= 1 << v16;
  *(v30[6] + 8 * v16) = v14;
  *(v30[7] + 8 * v16) = v15;
  v31 = v30[2];
  v19 = __OFADD__(v31, 1);
  v32 = v31 + 1;
  if (v19)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    _StringGuts.grow(_:)(30);
    v43._object = 0x80000001007F8340;
    v43._countAndFlagsBits = 0xD00000000000001BLL;
    String.append(_:)(v43);
    sub_1000F5104(&unk_1009436D0, &unk_100797F90);
    _print_unlocked<A, B>(_:_:)();
    v44._countAndFlagsBits = 39;
    v44._object = 0xE100000000000000;
    String.append(_:)(v44);
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return;
  }

  v30[2] = v32;
  if (v9 != 1)
  {
    v11 = (a1 + 56);
    v33 = 1;
    while (v33 < *(a1 + 16))
    {
      v34 = *v11;
      v35 = *a3;
      v14 = *(v11 - 1);
      v15 = v34;
      v36 = sub_100393C74();
      v37 = v35[2];
      v38 = (a2 & 1) == 0;
      v19 = __OFADD__(v37, v38);
      v39 = v37 + v38;
      if (v19)
      {
        goto LABEL_23;
      }

      v21 = a2;
      if (v35[3] < v39)
      {
        sub_100372C18(v39, 1);
        v36 = sub_100393C74();
        if ((v21 & 1) != (a2 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v21)
      {
        goto LABEL_8;
      }

      v40 = *a3;
      *(*a3 + 8 * (v36 >> 6) + 64) |= 1 << v36;
      *(v40[6] + 8 * v36) = v14;
      *(v40[7] + 8 * v36) = v15;
      v41 = v40[2];
      v19 = __OFADD__(v41, 1);
      v42 = v41 + 1;
      if (v19)
      {
        goto LABEL_24;
      }

      ++v33;
      v40[2] = v42;
      v11 += 2;
      if (v9 == v33)
      {
        goto LABEL_21;
      }
    }

    goto LABEL_25;
  }

LABEL_21:
  a1, a2, a3, a4, a5, a6, a7, a8;
}

void sub_100680584(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = *(a1 + 16);
  if (!v9)
  {
    goto LABEL_21;
  }

  LOBYTE(v11) = a2;
  v12 = *(a1 + 40);
  v13 = *a3;
  v14 = *(a1 + 32);
  v15 = v12;
  v16 = sub_100393C74();
  v17 = v13[2];
  v18 = (a2 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v21 = a2;
  if (v13[3] < v20)
  {
    sub_100372C2C(v20, v11 & 1);
    v16 = sub_100393C74();
    if ((v21 & 1) == (a2 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    sub_1000F5104(&unk_10094F300, &unk_100797FD0);
    v16 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if (v11)
  {
LABEL_7:
    if (v21)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v29 = v16;
  sub_1003781B8();
  v16 = v29;
  if (v21)
  {
LABEL_8:
    swift_allocError();
    swift_willThrow();
    swift_errorRetain();
    sub_1000F5104(&unk_1009399E0, &qword_100795D00);
    if ((swift_dynamicCast() & 1) == 0)
    {

      a1, v22, v23, v24, v25, v26, v27, v28;

      return;
    }

    goto LABEL_26;
  }

LABEL_11:
  v30 = *a3;
  *(*a3 + 8 * (v16 >> 6) + 64) |= 1 << v16;
  *(v30[6] + 8 * v16) = v14;
  *(v30[7] + 8 * v16) = v15;
  v31 = v30[2];
  v19 = __OFADD__(v31, 1);
  v32 = v31 + 1;
  if (v19)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    _StringGuts.grow(_:)(30);
    v43._object = 0x80000001007F8340;
    v43._countAndFlagsBits = 0xD00000000000001BLL;
    String.append(_:)(v43);
    sub_1000F5104(&unk_10094F300, &unk_100797FD0);
    _print_unlocked<A, B>(_:_:)();
    v44._countAndFlagsBits = 39;
    v44._object = 0xE100000000000000;
    String.append(_:)(v44);
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return;
  }

  v30[2] = v32;
  if (v9 != 1)
  {
    v11 = (a1 + 56);
    v33 = 1;
    while (v33 < *(a1 + 16))
    {
      v34 = *v11;
      v35 = *a3;
      v14 = *(v11 - 1);
      v15 = v34;
      v36 = sub_100393C74();
      v37 = v35[2];
      v38 = (a2 & 1) == 0;
      v19 = __OFADD__(v37, v38);
      v39 = v37 + v38;
      if (v19)
      {
        goto LABEL_23;
      }

      v21 = a2;
      if (v35[3] < v39)
      {
        sub_100372C2C(v39, 1);
        v36 = sub_100393C74();
        if ((v21 & 1) != (a2 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v21)
      {
        goto LABEL_8;
      }

      v40 = *a3;
      *(*a3 + 8 * (v36 >> 6) + 64) |= 1 << v36;
      *(v40[6] + 8 * v36) = v14;
      *(v40[7] + 8 * v36) = v15;
      v41 = v40[2];
      v19 = __OFADD__(v41, 1);
      v42 = v41 + 1;
      if (v19)
      {
        goto LABEL_24;
      }

      ++v33;
      v40[2] = v42;
      v11 += 2;
      if (v9 == v33)
      {
        goto LABEL_21;
      }
    }

    goto LABEL_25;
  }

LABEL_21:
  a1, a2, a3, a4, a5, a6, a7, a8;
}

void sub_100680904(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  *&v8 = __chkstk_darwin(v5, v7).n128_u64[0];
  v10 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a2;
  v12 = [*(*a3 + 16) uuid];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v13 = UUID.uuidString.getter();
  v15 = v14;
  (*(v6 + 8))(v10, v5);
  v23[2] = v15;
  v23[3] = v11;
  v23[1] = v13;
  sub_1000F5104(&qword_10094F568, &qword_1007B5098);
  sub_10000CB48(&qword_10094F570, &unk_10094F578, &qword_1007B50A0, &protocol conformance descriptor for [A]);
  Dictionary<>.append(_:toCollectionUnderKey:)();
  v15, v16, v17, v18, v19, v20, v21, v22;
}

void sub_100680A94(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  *&v8 = __chkstk_darwin(v5, v7).n128_u64[0];
  v10 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a2;
  v12 = [*(*a3 + 16) uuid];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v13 = UUID.uuidString.getter();
  v15 = v14;
  (*(v6 + 8))(v10, v5);
  v23[2] = v15;
  v23[3] = v11;
  v23[1] = v13;
  sub_1000F5104(&qword_10094F2E8, &qword_1007B4EA8);
  sub_10000CB48(&qword_10094F2F0, &qword_10094F2F8, &unk_1007B4EB0, &protocol conformance descriptor for [A]);
  Dictionary<>.append(_:toCollectionUnderKey:)();
  v15, v16, v17, v18, v19, v20, v21, v22;
}

void sub_100680C24(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  *&v8 = __chkstk_darwin(v5, v7).n128_u64[0];
  v10 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a2;
  v12 = [*(*a3 + 16) uuid];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v13 = UUID.uuidString.getter();
  v15 = v14;
  (*(v6 + 8))(v10, v5);
  v23[2] = v15;
  v23[3] = v11;
  v23[1] = v13;
  sub_1000F5104(&qword_10094F800, &qword_1007B51F0);
  sub_10000CB48(&qword_10094F808, &qword_10094F810, &qword_1007B51F8, &protocol conformance descriptor for [A]);
  Dictionary<>.append(_:toCollectionUnderKey:)();
  v15, v16, v17, v18, v19, v20, v21, v22;
}

void sub_100680DB4(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  *&v8 = __chkstk_darwin(v5, v7).n128_u64[0];
  v10 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a2;
  v12 = [*(*a3 + 16) uuid];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v13 = UUID.uuidString.getter();
  v15 = v14;
  (*(v6 + 8))(v10, v5);
  v23[2] = v15;
  v23[3] = v11;
  v23[1] = v13;
  sub_1000F5104(&qword_10094F7B8, &qword_1007B51C8);
  sub_10000CB48(&qword_10094F7C0, &unk_10094F7C8, &qword_1007B51D0, &protocol conformance descriptor for [A]);
  Dictionary<>.append(_:toCollectionUnderKey:)();
  v15, v16, v17, v18, v19, v20, v21, v22;
}

void sub_100680F44(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  *&v8 = __chkstk_darwin(v5, v7).n128_u64[0];
  v10 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a2;
  v12 = [*(*a3 + 16) uuid];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v13 = UUID.uuidString.getter();
  v15 = v14;
  (*(v6 + 8))(v10, v5);
  v23[2] = v15;
  v23[3] = v11;
  v23[1] = v13;
  sub_1000F5104(&qword_10094F770, &qword_1007B51A0);
  sub_10000CB48(&qword_10094F778, &unk_10094F780, &qword_1007B51A8, &protocol conformance descriptor for [A]);
  Dictionary<>.append(_:toCollectionUnderKey:)();
  v15, v16, v17, v18, v19, v20, v21, v22;
}

void sub_1006810D4(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  *&v8 = __chkstk_darwin(v5, v7).n128_u64[0];
  v10 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a2;
  v12 = [*(*a3 + 16) uuid];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v13 = UUID.uuidString.getter();
  v15 = v14;
  (*(v6 + 8))(v10, v5);
  v23[2] = v15;
  v23[3] = v11;
  v23[1] = v13;
  sub_1000F5104(&qword_10094F720, &qword_1007B5178);
  sub_10000CB48(&qword_10094F728, &unk_10094F730, &qword_1007B5180, &protocol conformance descriptor for [A]);
  Dictionary<>.append(_:toCollectionUnderKey:)();
  v15, v16, v17, v18, v19, v20, v21, v22;
}

void sub_100681264(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  *&v8 = __chkstk_darwin(v5, v7).n128_u64[0];
  v10 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a2;
  v12 = [*(*a3 + 16) uuid];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v13 = UUID.uuidString.getter();
  v15 = v14;
  (*(v6 + 8))(v10, v5);
  v23[2] = v15;
  v23[3] = v11;
  v23[1] = v13;
  sub_1000F5104(&qword_10094F458, &qword_1007B4FD0);
  sub_10000CB48(&qword_10094F460, &unk_10094F468, &qword_1007B4FD8, &protocol conformance descriptor for [A]);
  Dictionary<>.append(_:toCollectionUnderKey:)();
  v15, v16, v17, v18, v19, v20, v21, v22;
}

void sub_1006813F4(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  *&v8 = __chkstk_darwin(v5, v7).n128_u64[0];
  v10 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a2;
  v12 = [*(*a3 + 16) uuid];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v13 = UUID.uuidString.getter();
  v15 = v14;
  (*(v6 + 8))(v10, v5);
  v23[2] = v15;
  v23[3] = v11;
  v23[1] = v13;
  sub_1000F5104(&unk_10094F490, &unk_1007B4FF8);
  sub_10000CB48(&unk_1009392F0, &unk_10094F4A0, &qword_100795D70, &protocol conformance descriptor for [A]);
  Dictionary<>.append(_:toCollectionUnderKey:)();
  v15, v16, v17, v18, v19, v20, v21, v22;
}

void sub_100681584(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  *&v8 = __chkstk_darwin(v5, v7).n128_u64[0];
  v10 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a2;
  v12 = [*(*a3 + 16) uuid];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v13 = UUID.uuidString.getter();
  v15 = v14;
  (*(v6 + 8))(v10, v5);
  v23[2] = v15;
  v23[3] = v11;
  v23[1] = v13;
  sub_1000F5104(&qword_10094F130, &unk_1007B4D50);
  sub_10000CB48(&unk_10094F138, &qword_100939210, &qword_100795D18, &protocol conformance descriptor for [A]);
  Dictionary<>.append(_:toCollectionUnderKey:)();
  v15, v16, v17, v18, v19, v20, v21, v22;
}

void sub_100681714(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  *&v8 = __chkstk_darwin(v5, v7).n128_u64[0];
  v10 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a2;
  v12 = [*(*a3 + 16) uuid];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v13 = UUID.uuidString.getter();
  v15 = v14;
  (*(v6 + 8))(v10, v5);
  v23[2] = v15;
  v23[3] = v11;
  v23[1] = v13;
  sub_1000F5104(&qword_10094F190, &qword_1007B4D90);
  sub_10000CB48(&qword_10094F198, &unk_10094F1A0, &unk_1007B4D98, &protocol conformance descriptor for [A]);
  Dictionary<>.append(_:toCollectionUnderKey:)();
  v15, v16, v17, v18, v19, v20, v21, v22;
}

uint64_t sub_1006818A4(id *a1, uint64_t a2, uint64_t a3)
{
  v4 = [*a1 remObjectID];
  v5 = v4;
  if (*(a3 + 16))
  {
    sub_10002B924(v4);
  }

  return 1;
}

id sub_100681908@<X0>(id *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, void *a4@<X8>)
{
  v6 = *a1;
  v7 = *(a2 + 72);
  v8 = [*a1 remObjectID];
  v9 = v8;
  if (*(v7 + 16))
  {
    sub_10002B924(v8);
  }

  *a4 = v6;
  a4[1] = a3;
  return v6;
}

void sub_100681984(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  *&v8 = __chkstk_darwin(v5, v7).n128_u64[0];
  v10 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a2;
  v12 = [*(*a3 + 16) uuid];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v13 = UUID.uuidString.getter();
  v15 = v14;
  (*(v6 + 8))(v10, v5);
  v23[2] = v15;
  v23[3] = v11;
  v23[1] = v13;
  sub_1000F5104(&qword_10094F840, &qword_1007B5238);
  sub_10000CB48(&unk_10094F848, &qword_10093F5E0, &unk_1007B5240, &protocol conformance descriptor for [A]);
  Dictionary<>.append(_:toCollectionUnderKey:)();
  v15, v16, v17, v18, v19, v20, v21, v22;
}

BOOL sub_100681B14(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  v5 = a4(*a1, a3);
  if (!v4)
  {
    v14 = *(v5 + 16);
    v5, v6, v7, v8, v9, v10, v11, v12;
    return v14 != 0;
  }

  return v13;
}

void sub_100681B60(void *a1@<X0>, uint64_t a2@<X2>, uint64_t (*a3)(void, void)@<X3>, void *a4@<X8>)
{
  v6 = *a1;
  v7 = a3(*a1, *(a2 + 72));
  if (!v4)
  {
    if (*(v7 + 16))
    {
      v15 = v7;
      v16 = v6;
      v17 = v15;
    }

    else
    {
      v7, v8, v9, v10, v11, v12, v13, v14;
      v6 = 0;
      v17 = 0;
    }

    *a4 = v6;
    a4[1] = v17;
  }
}

BOOL sub_100681BD0(void **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(_TtC7remindd19RDXPCStorePerformer *))
{
  v6 = sub_100692848(*a1, a3, a4, a5);
  if (!v5)
  {
    v15 = *(v6 + 16);
    v6, v7, v8, v9, v10, v11, v12, v13;
    return v15 != 0;
  }

  return v14;
}

uint64_t sub_100681C20(id *a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 72);
  v4 = [*a1 remObjectID];
  v5 = v4;
  if (*(v3 + 16))
  {
    sub_10002B924(v4);
  }

  return 0;
}

void sub_100681C84(void **a1@<X0>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v5 = *a1;
  v6 = sub_100692848(*a1, *(a2 + 72), &type metadata for REMListStorageCDIngestor.RelationshipKey, sub_1005F3D10);
  if (!v3)
  {
    if (*(v6 + 16))
    {
      v14 = v6;
      v15 = v5;
      v16 = v14;
    }

    else
    {
      v6, v7, v8, v9, v10, v11, v12, v13;
      v5 = 0;
      v16 = 0;
    }

    *a3 = v5;
    a3[1] = v16;
  }
}

BOOL sub_100681D0C(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void, void))
{
  v5 = a4(*a1, *(a3 + 72));
  if (!v4)
  {
    v14 = *(v5 + 16);
    v5, v6, v7, v8, v9, v10, v11, v12;
    return v14 != 0;
  }

  return v13;
}

id sub_100681D58(void *a1, uint64_t a2)
{
  v4 = [objc_allocWithZone(REMResolutionTokenMap) init];
  v5 = *(a2 + 16);
  if (v5)
  {
    v6 = (a2 + 32);
    do
    {
      v16 = *v6++;
      v15 = v16;
      v17 = 0xE800000000000000;
      switch(v16)
      {
        case 1u:
          v17 = 0x80000001007EA4D0;
          break;
        case 2u:
          v17 = 0x80000001007E8C60;
          break;
        case 3u:
          v17 = 0x80000001007EA570;
          break;
        case 4u:
        case 0xEu:
          v17 = 0xED0000746E656D75;
          break;
        case 6u:
          v17 = 0xE700000000000000;
          break;
        case 7u:
          v17 = 0xEC00000065746144;
          break;
        case 8u:
          v17 = 0xEF73656C75526563;
          break;
        case 9u:
          v17 = 0x80000001007EA5A0;
          break;
        case 0xAu:
          v17 = 0x80000001007EA5C0;
          break;
        case 0xCu:
          v17 = 0xE600000000000000;
          break;
        case 0xDu:
          v17 = 0x80000001007EA5E0;
          break;
        case 0xFu:
          v17 = 0xEB0000000073746ELL;
          break;
        case 0x10u:
          v17 = 0xE600000000000000;
          break;
        case 0x11u:
          v17 = 0x80000001007E8FD0;
          break;
        case 0x12u:
          v17 = 0x80000001007EA610;
          break;
        case 0x13u:
          v17 = 0x80000001007EA630;
          break;
        case 0x15u:
          v17 = 0xEE0073656C646E61;
          break;
        default:
          break;
      }

      v18 = String._bridgeToObjectiveC()();
      v17, v19, v20, v21, v22, v23, v24, v25;
      v26 = [a1 getTokenForKey:v18];

      if (v26)
      {
        sub_100692C78(v15, &qword_100936390, &qword_100974F30, sub_1005102C0, sub_1005122A0);
        v28 = v27;
        v29 = String._bridgeToObjectiveC()();
        v30 = [v4 getTokenForKey:v29];

        if (!v30 || (v31 = [v30 compare:v26], v30, v31 == -1))
        {
          v7 = String._bridgeToObjectiveC()();
          v28, v8, v9, v10, v11, v12, v13, v14;
          [v4 setToken:v26 forKey:v7];
        }

        else
        {

          v28, v32, v33, v34, v35, v36, v37, v38;
        }
      }

      --v5;
    }

    while (v5);
  }

  return v4;
}

void sub_1006821B0()
{
  v0._rawValue = &off_1008DD6A0;
  v1 = sub_1005F83FC(v0, type metadata accessor for REMCDSavedAttachment);
  if (v1 == 2)
  {
    return;
  }

  v2 = v1;
  v3._rawValue = &off_1008DD6F0;
  v4 = sub_1005F6E20(v3, type metadata accessor for REMCDSavedAttachment);
  if (v4 == 2)
  {
    return;
  }

  v12 = v4;
  if (v2)
  {
    v13 = 0x7265646E696D6572;
  }

  else
  {
    v13 = 0x49746E756F636361;
  }

  if (v2)
  {
    v14 = 0xEA00000000004449;
  }

  else
  {
    v14 = 0xE900000000000044;
  }

  v15 = 0xE900000000000044;
  if (v13 == 0x49746E756F636361 && v14 == 0xE900000000000044)
  {
LABEL_11:
    v15, v5, v6, v7, v8, v9, v10, v11;
    v14, v16, v17, v18, v19, v20, v21, v22;
    goto LABEL_13;
  }

  v23 = _stringCompareWithSmolCheck(_:_:expecting:)();
  0xE900000000000044, v24, v25, v26, v27, v28, v29, v30;
  v14, v31, v32, v33, v34, v35, v36, v37;
  if ((v23 & 1) == 0)
  {
    v15 = 0xEA00000000004449;
    if (v13 != 0x7265646E696D6572 || v14 != 0xEA00000000004449)
    {
      v78 = _stringCompareWithSmolCheck(_:_:expecting:)();
      0xEA00000000004449, v79, v80, v81, v82, v83, v84, v85;
      v14, v86, v87, v88, v89, v90, v91, v92;
      if ((v78 & 1) == 0)
      {
        return;
      }

      goto LABEL_13;
    }

    goto LABEL_11;
  }

LABEL_13:
  if (v12)
  {
    v38 = 6911093;
  }

  else
  {
    v38 = 0x44497463656A626FLL;
  }

  if (v12)
  {
    v39 = 0xE300000000000000;
  }

  else
  {
    v39 = 0xE800000000000000;
  }

  v40 = 0xE800000000000000;
  if (v38 == 0x44497463656A626FLL && v39 == 0xE800000000000000)
  {
    goto LABEL_21;
  }

  v48 = _stringCompareWithSmolCheck(_:_:expecting:)();
  0xE800000000000000, v49, v50, v51, v52, v53, v54, v55;
  v39, v56, v57, v58, v59, v60, v61, v62;
  if ((v48 & 1) == 0)
  {
    v40 = 0xE300000000000000;
    if (v38 == 6911093 && v39 == 0xE300000000000000)
    {
LABEL_21:
      v40, v5, v6, v7, v8, v9, v10, v11;
      v39, v41, v42, v43, v44, v45, v46, v47;
      return;
    }

    v63 = _stringCompareWithSmolCheck(_:_:expecting:)();
    0xE300000000000000, v64, v65, v66, v67, v68, v69, v70;
    v39, v71, v72, v73, v74, v75, v76, v77;
    if ((v63 & 1) == 0)
    {
      sub_1006ABFBC();
      swift_allocError();
      swift_willThrow();
    }
  }
}

uint64_t sub_100682460(uint64_t a1, void (*a2)(void *__return_ptr, id *), uint64_t a3, char a4, void *a5)
{
  v41 = a5;
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  while (v9)
  {
    v38 = a4;
    v14 = v11;
LABEL_14:
    v16 = (v14 << 9) | (8 * __clz(__rbit64(v9)));
    v17 = *(*(a1 + 56) + v16);
    v40[0] = *(*(a1 + 48) + v16);
    v40[1] = v17;
    v18 = v40[0];
    v19 = v17;
    a2(v39, v40);

    v21 = v39[0];
    v20 = v39[1];
    v22 = *v41;
    v24 = sub_100393C74();
    v25 = v22[2];
    v26 = (v23 & 1) == 0;
    v27 = v25 + v26;
    if (__OFADD__(v25, v26))
    {
      goto LABEL_25;
    }

    v28 = v23;
    if (v22[3] >= v27)
    {
      if ((v38 & 1) == 0)
      {
        sub_100376284();
      }
    }

    else
    {
      sub_10036FA80(v27, v38 & 1);
      v29 = sub_100393C74();
      if ((v28 & 1) != (v30 & 1))
      {
        goto LABEL_27;
      }

      v24 = v29;
    }

    v9 &= v9 - 1;
    v31 = *v41;
    if (v28)
    {

      v12 = v31[7];
      v13 = *(v12 + 8 * v24);
      *(v12 + 8 * v24) = v20;
    }

    else
    {
      v31[(v24 >> 6) + 8] |= 1 << v24;
      *(v31[6] + 8 * v24) = v21;
      *(v31[7] + 8 * v24) = v20;
      v32 = v31[2];
      v33 = __OFADD__(v32, 1);
      v34 = v32 + 1;
      if (v33)
      {
        goto LABEL_26;
      }

      v31[2] = v34;
    }

    a4 = 1;
    v11 = v14;
  }

  v15 = v11;
  while (1)
  {
    v14 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v14 >= v10)
    {
      sub_10001B860(a1);
    }

    v9 = *(v6 + 8 * v14);
    ++v15;
    if (v9)
    {
      v38 = a4;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  sub_1000F5104(&unk_100943950, &unk_1007A4200);
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void sub_1006826D0()
{
  v0._rawValue = &off_1008DEE10;
  v1 = sub_1005F7EC0(v0, &qword_10093CFE0, off_1008D4190);
  if (v1 == 2)
  {
    return;
  }

  v2 = v1;
  v3._rawValue = &off_1008DEE60;
  v4 = sub_1005F65A4(v3, &qword_10093CFE0, off_1008D4190);
  if (v4 == 4)
  {
    return;
  }

  v12 = v4;
  if (v2)
  {
    v13 = 0x7265646E696D6572;
  }

  else
  {
    v13 = 0x49746E756F636361;
  }

  if (v2)
  {
    v14 = 0xEA00000000004449;
  }

  else
  {
    v14 = 0xE900000000000044;
  }

  v15 = 0xE900000000000044;
  if (v13 == 0x49746E756F636361 && v14 == 0xE900000000000044)
  {
LABEL_11:
    v15, v5, v6, v7, v8, v9, v10, v11;
    v14, v16, v17, v18, v19, v20, v21, v22;
    goto LABEL_13;
  }

  v23 = _stringCompareWithSmolCheck(_:_:expecting:)();
  0xE900000000000044, v24, v25, v26, v27, v28, v29, v30;
  v14, v31, v32, v33, v34, v35, v36, v37;
  if ((v23 & 1) == 0)
  {
    v15 = 0xEA00000000004449;
    if (v13 != 0x7265646E696D6572 || v14 != 0xEA00000000004449)
    {
      v40 = _stringCompareWithSmolCheck(_:_:expecting:)();
      0xEA00000000004449, v41, v42, v43, v44, v45, v46, v47;
      v14, v48, v49, v50, v51, v52, v53, v54;
      if ((v40 & 1) == 0)
      {
        return;
      }

      goto LABEL_13;
    }

    goto LABEL_11;
  }

LABEL_13:
  v38 = 0x44497463656A626FLL;
  v39 = 0xE800000000000000;
  if (v12 > 1u)
  {
    v57 = 0xE400000000000000;
  }

  else
  {
    if (!v12)
    {
      v55 = 0xE800000000000000;
      v56 = 0x44497463656A626FLL;
LABEL_23:
      v39, v5, v56, v7, v8, v9, v10, v11;
      v55, v58, v59, v60, v61, v62, v63, v64;
      return;
    }

    v57 = 0xEC00000065746144;
  }

  v65 = _stringCompareWithSmolCheck(_:_:expecting:)();
  0xE800000000000000, v66, v67, v68, v69, v70, v71, v72;
  v57, v73, v74, v75, v76, v77, v78, v79;
  if ((v65 & 1) == 0)
  {
    v39 = 0xEC00000065746144;
    if (v12 > 1u)
    {
      v55 = 0xE400000000000000;
      if (v12 == 2)
      {
        v56 = 1701667182;
      }

      else
      {
        v56 = 1701869940;
      }
    }

    else if (v12)
    {
      v56 = 0x6E6F697461657263;
      v55 = 0xEC00000065746144;
    }

    else
    {
      v55 = 0xE800000000000000;
      v56 = 0x44497463656A626FLL;
    }

    if (v56 == 0x6E6F697461657263 && v55 == 0xEC00000065746144)
    {
      goto LABEL_23;
    }

    v80 = _stringCompareWithSmolCheck(_:_:expecting:)();
    0xEC00000065746144, v81, v82, v83, v84, v85, v86, v87;
    v55, v88, v89, v90, v91, v92, v93, v94;
    if ((v80 & 1) == 0)
    {
      v39 = 0xE400000000000000;
      if (v12 > 1u)
      {
        v55 = 0xE400000000000000;
        if (v12 == 2)
        {
          v56 = 1701667182;
        }

        else
        {
          v56 = 1701869940;
        }
      }

      else if (v12)
      {
        v56 = 0x6E6F697461657263;
        v55 = 0xEC00000065746144;
      }

      else
      {
        v55 = 0xE800000000000000;
        v56 = 0x44497463656A626FLL;
      }

      if (v56 == 1701667182 && v55 == 0xE400000000000000)
      {
        goto LABEL_23;
      }

      v95 = _stringCompareWithSmolCheck(_:_:expecting:)();
      0xE400000000000000, v96, v97, v98, v99, v100, v101, v102;
      v55, v103, v104, v105, v106, v107, v108, v109;
      if ((v95 & 1) == 0)
      {
        v39 = 0xE400000000000000;
        if (v12 > 1u)
        {
          v55 = 0xE400000000000000;
          if (v12 == 2)
          {
            v38 = 1701667182;
          }

          else
          {
            v38 = 1701869940;
          }
        }

        else if (v12)
        {
          v38 = 0x6E6F697461657263;
          v55 = 0xEC00000065746144;
        }

        else
        {
          v55 = 0xE800000000000000;
        }

        if (v38 == 1701869940 && v55 == 0xE400000000000000)
        {
          goto LABEL_23;
        }

        v110 = _stringCompareWithSmolCheck(_:_:expecting:)();
        0xE400000000000000, v111, v112, v113, v114, v115, v116, v117;
        v55, v118, v119, v120, v121, v122, v123, v124;
        if ((v110 & 1) == 0)
        {
          sub_1006ABFBC();
          swift_allocError();
          swift_willThrow();
        }
      }
    }
  }
}

unint64_t sub_100682CAC(uint64_t a1, _TtC7remindd19RDXPCStorePerformer *a2)
{
  v3 = _findStringSwitchCaseWithCache(cases:string:cache:)();
  a2, v4, v5, v6, v7, v8, v9, v10;
  if (v3 >= 0x2A)
  {
    return 42;
  }

  else
  {
    return v3;
  }
}

void sub_100682D00(char a1, void *a2, uint64_t a3, void *a4, unint64_t *a5)
{
  if (*(a3 + 16) && (v10 = sub_10002B924(a2), (v11 & 1) != 0))
  {
    v12 = *(*(a3 + 56) + 16 * v10);
    objc_opt_self();
    if (!swift_dynamicCastObjCClass())
    {
      v13 = qword_100936128;
      v14 = v12;
      if (v13 != -1)
      {
        swift_once();
      }

      v15 = type metadata accessor for Logger();
      sub_100006654(v15, qword_100946C50);
      v16 = v14;
      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.fault.getter();

      v19 = &selRef_accountStatusWithCompletionHandler_;
      if (os_log_type_enabled(v17, v18))
      {
        v20 = swift_slowAlloc();
        v149 = swift_slowAlloc();
        *v20 = 136315650;
        if (a1)
        {
          v21 = 0x44496D72616C61;
        }

        else
        {
          v21 = 0x49746E756F636361;
        }

        if (a1)
        {
          v22 = 0xE700000000000000;
        }

        else
        {
          v22 = 0xE900000000000044;
        }

        v23 = sub_10000668C(v21, v22, &v149);
        v151 = v18;
        v24 = v23;
        v22, v25, v26, v27, v28, v29, v30, v31;
        *(v20 + 4) = v24;
        *(v20 + 12) = 2080;
        sub_1000060C8(0, a5, a4);
        v32 = [swift_getObjCClassFromMetadata() description];
        v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v34 = v16;
        v36 = v35;

        v37 = sub_10000668C(v33, v36, &v149);
        v36, v38, v39, v40, v41, v42, v43, v44;
        *(v20 + 14) = v37;
        *(v20 + 22) = 2080;
        v45 = [v34 description];
        v46 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v48 = v47;

        v49 = v46;
        v16 = v34;
        v50 = sub_10000668C(v49, v48, &v149);
        v51 = v48;
        v19 = &selRef_accountStatusWithCompletionHandler_;
        v51, v52, v53, v54, v55, v56, v57, v58;
        *(v20 + 24) = v50;
        _os_log_impl(&_mh_execute_header, v17, v151, "Mismatching class for relationship {key: %s, expectedType: %s, found: %s}", v20, 0x20u);
        swift_arrayDestroy();
      }

      v59 = objc_opt_self();
      v149 = 0;
      v150 = 0xE000000000000000;
      _StringGuts.grow(_:)(73);
      v60._countAndFlagsBits = 0xD000000000000029;
      v60._object = 0x80000001007FE3C0;
      String.append(_:)(v60);
      v152 = a1 & 1;
      _print_unlocked<A, B>(_:_:)();
      v61._object = 0x80000001007FE3F0;
      v61._countAndFlagsBits = 0xD000000000000010;
      String.append(_:)(v61);
      sub_1000060C8(0, a5, a4);
      v62 = [swift_getObjCClassFromMetadata() v19[332]];
      v63 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v65 = v64;

      v66._countAndFlagsBits = v63;
      v66._object = v65;
      String.append(_:)(v66);
      v65, v67, v68, v69, v70, v71, v72, v73;
      v74._object = 0xE900000000000020;
      v74._countAndFlagsBits = 0x3A646E756F66202CLL;
      String.append(_:)(v74);
      v75 = [v16 v19[332]];
      v76 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v78 = v77;

      v79._countAndFlagsBits = v76;
      v79._object = v78;
      String.append(_:)(v79);
      v78, v80, v81, v82, v83, v84, v85, v86;
      v87._countAndFlagsBits = 125;
      v87._object = 0xE100000000000000;
      String.append(_:)(v87);
      v88 = v150;
      v89 = String._bridgeToObjectiveC()();
      v88, v90, v91, v92, v93, v94, v95, v96;
      [v59 internalErrorWithDebugDescription:v89];

      swift_willThrow();
    }
  }

  else
  {
    if (qword_100936128 != -1)
    {
      swift_once();
    }

    v97 = type metadata accessor for Logger();
    sub_100006654(v97, qword_100946C50);
    v98 = a2;
    v99 = Logger.logObject.getter();
    v100 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v99, v100))
    {
      v101 = swift_slowAlloc();
      v149 = swift_slowAlloc();
      *v101 = 136315394;
      if (a1)
      {
        v102 = 0x44496D72616C61;
      }

      else
      {
        v102 = 0x49746E756F636361;
      }

      if (a1)
      {
        v103 = 0xE700000000000000;
      }

      else
      {
        v103 = 0xE900000000000044;
      }

      v104 = sub_10000668C(v102, v103, &v149);
      v103, v105, v106, v107, v108, v109, v110, v111;
      *(v101 + 4) = v104;
      *(v101 + 12) = 2080;
      v112 = [v98 description];
      v113 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v115 = v114;

      v116 = sub_10000668C(v113, v115, &v149);
      v115, v117, v118, v119, v120, v121, v122, v123;
      *(v101 + 14) = v116;
      _os_log_impl(&_mh_execute_header, v99, v100, "Missing relationship {key: %s, objectID: %s}", v101, 0x16u);
      swift_arrayDestroy();
    }

    v124 = objc_opt_self();
    v149 = 0;
    v150 = 0xE000000000000000;
    _StringGuts.grow(_:)(44);
    v125._countAndFlagsBits = 0xD00000000000001BLL;
    v125._object = 0x80000001007FE3A0;
    String.append(_:)(v125);
    v152 = a1 & 1;
    _print_unlocked<A, B>(_:_:)();
    v126._countAndFlagsBits = 0x7463656A626F202CLL;
    v126._object = 0xEC000000203A4449;
    String.append(_:)(v126);
    v127 = [v98 description];
    v128 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v130 = v129;

    v131._countAndFlagsBits = v128;
    v131._object = v130;
    String.append(_:)(v131);
    v130, v132, v133, v134, v135, v136, v137, v138;
    v139._countAndFlagsBits = 125;
    v139._object = 0xE100000000000000;
    String.append(_:)(v139);
    v140 = v150;
    v141 = String._bridgeToObjectiveC()();
    v140, v142, v143, v144, v145, v146, v147, v148;
    [v124 internalErrorWithDebugDescription:v141];

    swift_willThrow();
  }
}

void sub_100683460(void *a1, char a2, uint64_t a3, unint64_t *a4, void *a5)
{
  v54[3] = sub_1000060C8(0, a4, a5);
  v54[0] = a1;
  sub_1000060C8(0, &unk_100940330, off_1008D4148);
  v10 = a1;
  throwingCast<A>(_:as:failureMessage:)();
  if (v6)
  {
    sub_10000607C(v54);
  }

  else
  {
    sub_10000607C(v54);
    v11 = v55;
    if (a2)
    {
      sub_100682D00(1, *(v5 + 24), a3, off_1008D4128, &unk_100938870);
      v17 = v12;
      [v11 setAlarm:v17];
      [swift_dynamicCastObjCProtocolUnconditional() generateNonce];
      v19 = v18;
      if (qword_100935B88 != -1)
      {
        swift_once();
      }

      v20 = type metadata accessor for Logger();
      sub_100006654(v20, qword_10093BB50);
      static REMCDRecurrenceRule.shouldAttemptLocalObjectMerge()();
      static REMCDRecurrenceRule.shouldAttemptLocalObjectMerge()();
      v21 = v11;
      v22 = v17;
      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v54[0] = swift_slowAlloc();
        *v25 = 68158466;
        *(v25 + 4) = 2;
        *(v25 + 8) = 2050;
        *(v25 + 10) = v19;
        *(v25 + 18) = 2082;
        v26 = [v22 remObjectID];
        if (v26)
        {
          v27 = v26;
          v28 = [v26 description];

          v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v31 = v30;
        }

        else
        {
          v31 = 0xE300000000000000;
          v29 = 7104878;
        }

        v32 = sub_10000668C(v29, v31, v54);
        v31, v33, v34, v35, v36, v37, v38, v39;
        *(v25 + 20) = v32;
        *(v25 + 28) = 2082;
        v40 = [v21 remObjectID];
        if (v40)
        {
          v41 = v40;
          v42 = [v40 description];

          v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v45 = v44;
        }

        else
        {
          v45 = 0xE300000000000000;
          v43 = 7104878;
        }

        v46 = sub_10000668C(v43, v45, v54);
        v45, v47, v48, v49, v50, v51, v52, v53;
        *(v25 + 30) = v46;
        _os_log_impl(&_mh_execute_header, v23, v24, "REMAlarmTriggerCDIngestor.establishRelationship: Setting alarm.dueDateResolutionTokenAsNonce {nonce: %{public}.*f, alarmID: %{public}s, triggerID: %{public}s}", v25, 0x26u);
        swift_arrayDestroy();
      }

      [v22 setDueDateResolutionTokenAsNonce:v19];
    }

    else
    {
      v13 = *(v5 + 16);
      v14 = v55;
      sub_100682D00(0, v13, a3, off_1008D4120, &qword_1009399F0);
      v16 = v15;
      [v14 setAccount:v16];
    }
  }
}

void sub_100683884(void *a1, char a2, uint64_t a3, unint64_t *a4, void *a5)
{
  v55[3] = sub_1000060C8(0, a4, a5);
  v55[0] = a1;
  sub_1000060C8(0, &unk_100940330, off_1008D4148);
  v10 = a1;
  throwingCast<A>(_:as:failureMessage:)();
  if (v6)
  {
    sub_10000607C(v55);
  }

  else
  {
    sub_10000607C(v55);
    v11 = v56;
    if (a2)
    {
      sub_100682D00(1, *(v5 + 24), a3, off_1008D4128, &unk_100938870);
      v17 = v12;
      [v11 setAlarm:v17];
      v18 = swift_dynamicCastObjCProtocolConditional();
      if (v18)
      {
        [v18 generateNonce];
        v20 = v19;
      }

      else
      {
        v20 = kREMNonceUnset;
      }

      if (qword_100935B88 != -1)
      {
        swift_once();
      }

      v21 = type metadata accessor for Logger();
      sub_100006654(v21, qword_10093BB50);
      static REMCDRecurrenceRule.shouldAttemptLocalObjectMerge()();
      static REMCDRecurrenceRule.shouldAttemptLocalObjectMerge()();
      v22 = v11;
      v23 = v17;
      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v55[0] = swift_slowAlloc();
        *v26 = 68158466;
        *(v26 + 4) = 2;
        *(v26 + 8) = 2050;
        *(v26 + 10) = v20;
        *(v26 + 18) = 2082;
        v27 = [v23 remObjectID];
        if (v27)
        {
          v28 = v27;
          v29 = [v27 description];

          v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v32 = v31;
        }

        else
        {
          v32 = 0xE300000000000000;
          v30 = 7104878;
        }

        v33 = sub_10000668C(v30, v32, v55);
        v32, v34, v35, v36, v37, v38, v39, v40;
        *(v26 + 20) = v33;
        *(v26 + 28) = 2082;
        v41 = [v22 remObjectID];
        if (v41)
        {
          v42 = v41;
          v43 = [v41 description];

          v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v46 = v45;
        }

        else
        {
          v46 = 0xE300000000000000;
          v44 = 7104878;
        }

        v47 = sub_10000668C(v44, v46, v55);
        v46, v48, v49, v50, v51, v52, v53, v54;
        *(v26 + 30) = v47;
        _os_log_impl(&_mh_execute_header, v24, v25, "REMAlarmTriggerCDIngestor.establishRelationship: Setting alarm.dueDateResolutionTokenAsNonce {nonce: %{public}.*f, alarmID: %{public}s, triggerID: %{public}s}", v26, 0x26u);
        swift_arrayDestroy();
      }

      [v23 setDueDateResolutionTokenAsNonce:v20];
    }

    else
    {
      v13 = *(v5 + 16);
      v14 = v56;
      sub_100682D00(0, v13, a3, off_1008D4120, &qword_1009399F0);
      v16 = v15;
      [v14 setAccount:v16];
    }
  }
}

void sub_100683CB0(char a1, void *a2, uint64_t a3)
{
  if (*(a3 + 16) && (v6 = sub_10002B924(a2), (v7 & 1) != 0))
  {
    v8 = *(*(a3 + 56) + 16 * v6);
    type metadata accessor for REMCDSavedReminder();
    if (!swift_dynamicCastClass())
    {
      v9 = qword_100936128;
      v10 = v8;
      if (v9 != -1)
      {
        swift_once();
      }

      v11 = type metadata accessor for Logger();
      sub_100006654(v11, qword_100946C50);
      v12 = v10;
      v13 = Logger.logObject.getter();
      v14 = static os_log_type_t.fault.getter();

      v15 = &selRef_accountStatusWithCompletionHandler_;
      if (os_log_type_enabled(v13, v14))
      {
        v16 = swift_slowAlloc();
        v142 = swift_slowAlloc();
        *v16 = 136315650;
        if (a1)
        {
          v17 = 0x7265646E696D6572;
        }

        else
        {
          v17 = 0x49746E756F636361;
        }

        if (a1)
        {
          v18 = 0xEA00000000004449;
        }

        else
        {
          v18 = 0xE900000000000044;
        }

        v19 = sub_10000668C(v17, v18, &v142);
        v18, v20, v21, v22, v23, v24, v25, v26;
        *(v16 + 4) = v19;
        *(v16 + 12) = 2080;
        v27 = [swift_getObjCClassFromMetadata() description];
        v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v30 = v29;

        v31 = sub_10000668C(v28, v30, &v142);
        v30, v32, v33, v34, v35, v36, v37, v38;
        *(v16 + 14) = v31;
        *(v16 + 22) = 2080;
        v39 = [v12 description];
        v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v42 = v41;

        v43 = sub_10000668C(v40, v42, &v142);
        v44 = v42;
        v15 = &selRef_accountStatusWithCompletionHandler_;
        v44, v45, v46, v47, v48, v49, v50, v51;
        *(v16 + 24) = v43;
        _os_log_impl(&_mh_execute_header, v13, v14, "Mismatching class for relationship {key: %s, expectedType: %s, found: %s}", v16, 0x20u);
        swift_arrayDestroy();
      }

      v52 = objc_opt_self();
      v142 = 0;
      v143 = 0xE000000000000000;
      _StringGuts.grow(_:)(73);
      v53._countAndFlagsBits = 0xD000000000000029;
      v53._object = 0x80000001007FE3C0;
      String.append(_:)(v53);
      v144 = a1 & 1;
      _print_unlocked<A, B>(_:_:)();
      v54._object = 0x80000001007FE3F0;
      v54._countAndFlagsBits = 0xD000000000000010;
      String.append(_:)(v54);
      v55 = [swift_getObjCClassFromMetadata() v15[332]];
      v56 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v58 = v57;

      v59._countAndFlagsBits = v56;
      v59._object = v58;
      String.append(_:)(v59);
      v58, v60, v61, v62, v63, v64, v65, v66;
      v67._object = 0xE900000000000020;
      v67._countAndFlagsBits = 0x3A646E756F66202CLL;
      String.append(_:)(v67);
      v68 = [v12 v15[332]];
      v69 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v71 = v70;

      v72._countAndFlagsBits = v69;
      v72._object = v71;
      String.append(_:)(v72);
      v71, v73, v74, v75, v76, v77, v78, v79;
      v80._countAndFlagsBits = 125;
      v80._object = 0xE100000000000000;
      String.append(_:)(v80);
      v81 = v143;
      v82 = String._bridgeToObjectiveC()();
      v81, v83, v84, v85, v86, v87, v88, v89;
      [v52 internalErrorWithDebugDescription:v82];

      swift_willThrow();
    }
  }

  else
  {
    if (qword_100936128 != -1)
    {
      swift_once();
    }

    v90 = type metadata accessor for Logger();
    sub_100006654(v90, qword_100946C50);
    v91 = a2;
    v92 = Logger.logObject.getter();
    v93 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v92, v93))
    {
      v94 = swift_slowAlloc();
      v142 = swift_slowAlloc();
      *v94 = 136315394;
      if (a1)
      {
        v95 = 0x7265646E696D6572;
      }

      else
      {
        v95 = 0x49746E756F636361;
      }

      if (a1)
      {
        v96 = 0xEA00000000004449;
      }

      else
      {
        v96 = 0xE900000000000044;
      }

      v97 = sub_10000668C(v95, v96, &v142);
      v96, v98, v99, v100, v101, v102, v103, v104;
      *(v94 + 4) = v97;
      *(v94 + 12) = 2080;
      v105 = [v91 description];
      v106 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v108 = v107;

      v109 = sub_10000668C(v106, v108, &v142);
      v108, v110, v111, v112, v113, v114, v115, v116;
      *(v94 + 14) = v109;
      _os_log_impl(&_mh_execute_header, v92, v93, "Missing relationship {key: %s, objectID: %s}", v94, 0x16u);
      swift_arrayDestroy();
    }

    v117 = objc_opt_self();
    v142 = 0;
    v143 = 0xE000000000000000;
    _StringGuts.grow(_:)(44);
    v118._countAndFlagsBits = 0xD00000000000001BLL;
    v118._object = 0x80000001007FE3A0;
    String.append(_:)(v118);
    v144 = a1 & 1;
    _print_unlocked<A, B>(_:_:)();
    v119._countAndFlagsBits = 0x7463656A626F202CLL;
    v119._object = 0xEC000000203A4449;
    String.append(_:)(v119);
    v120 = [v91 description];
    v121 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v123 = v122;

    v124._countAndFlagsBits = v121;
    v124._object = v123;
    String.append(_:)(v124);
    v123, v125, v126, v127, v128, v129, v130, v131;
    v132._countAndFlagsBits = 125;
    v132._object = 0xE100000000000000;
    String.append(_:)(v132);
    v133 = v143;
    v134 = String._bridgeToObjectiveC()();
    v133, v135, v136, v137, v138, v139, v140, v141;
    [v117 internalErrorWithDebugDescription:v134];

    swift_willThrow();
  }
}

void sub_1006843F8(char a1, void *a2, uint64_t a3, void *a4, unint64_t *a5, uint64_t a6)
{
  if (*(a3 + 16) && (v11 = sub_10002B924(a2), (v12 & 1) != 0))
  {
    v13 = *(*(a3 + 56) + 16 * v11);
    objc_opt_self();
    if (!swift_dynamicCastObjCClass())
    {
      v14 = qword_100936128;
      v15 = v13;
      if (v14 != -1)
      {
        swift_once();
      }

      v16 = type metadata accessor for Logger();
      sub_100006654(v16, qword_100946C50);
      v17 = v15;
      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.fault.getter();

      v20 = &selRef_accountStatusWithCompletionHandler_;
      if (os_log_type_enabled(v18, v19))
      {
        v151 = v19;
        v21 = swift_slowAlloc();
        v149 = swift_slowAlloc();
        *v21 = 136315650;
        if (a1)
        {
          v22 = 0x7265646E696D6572;
        }

        else
        {
          v22 = 0x49746E756F636361;
        }

        if (a1)
        {
          v23 = 0xEA00000000004449;
        }

        else
        {
          v23 = 0xE900000000000044;
        }

        v148 = v17;
        v24 = sub_10000668C(v22, v23, &v149);
        v23, v25, v26, v27, v28, v29, v30, v31;
        *(v21 + 4) = v24;
        *(v21 + 12) = 2080;
        sub_1000060C8(0, a5, a4);
        v32 = [swift_getObjCClassFromMetadata() description];
        v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v35 = v34;

        v36 = sub_10000668C(v33, v35, &v149);
        v35, v37, v38, v39, v40, v41, v42, v43;
        *(v21 + 14) = v36;
        *(v21 + 22) = 2080;
        v44 = [v148 description];
        v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v47 = v46;

        v48 = sub_10000668C(v45, v47, &v149);
        v49 = v47;
        v17 = v148;
        v49, v50, v51, v52, v53, v54, v55, v56;
        *(v21 + 24) = v48;
        v20 = &selRef_accountStatusWithCompletionHandler_;
        _os_log_impl(&_mh_execute_header, v18, v151, "Mismatching class for relationship {key: %s, expectedType: %s, found: %s}", v21, 0x20u);
        swift_arrayDestroy();
      }

      v57 = objc_opt_self();
      v149 = 0;
      v150 = 0xE000000000000000;
      _StringGuts.grow(_:)(73);
      v58._countAndFlagsBits = 0xD000000000000029;
      v58._object = 0x80000001007FE3C0;
      String.append(_:)(v58);
      v152 = a1 & 1;
      _print_unlocked<A, B>(_:_:)();
      v59._object = 0x80000001007FE3F0;
      v59._countAndFlagsBits = 0xD000000000000010;
      String.append(_:)(v59);
      sub_1000060C8(0, a5, a4);
      v60 = [swift_getObjCClassFromMetadata() v20[332]];
      v61 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v62 = v20;
      v64 = v63;

      v65._countAndFlagsBits = v61;
      v65._object = v64;
      String.append(_:)(v65);
      v64, v66, v67, v68, v69, v70, v71, v72;
      v73._object = 0xE900000000000020;
      v73._countAndFlagsBits = 0x3A646E756F66202CLL;
      String.append(_:)(v73);
      v74 = [v17 v62[332]];
      v75 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v77 = v76;

      v78._countAndFlagsBits = v75;
      v78._object = v77;
      String.append(_:)(v78);
      v77, v79, v80, v81, v82, v83, v84, v85;
      v86._countAndFlagsBits = 125;
      v86._object = 0xE100000000000000;
      String.append(_:)(v86);
      v87 = v150;
      v88 = String._bridgeToObjectiveC()();
      v87, v89, v90, v91, v92, v93, v94, v95;
      [v57 internalErrorWithDebugDescription:v88];

      swift_willThrow();
    }
  }

  else
  {
    if (qword_100936128 != -1)
    {
      swift_once();
    }

    v96 = type metadata accessor for Logger();
    sub_100006654(v96, qword_100946C50);
    v97 = a2;
    v98 = Logger.logObject.getter();
    v99 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v98, v99))
    {
      v100 = swift_slowAlloc();
      v149 = swift_slowAlloc();
      *v100 = 136315394;
      if (a1)
      {
        v101 = 0x7265646E696D6572;
      }

      else
      {
        v101 = 0x49746E756F636361;
      }

      if (a1)
      {
        v102 = 0xEA00000000004449;
      }

      else
      {
        v102 = 0xE900000000000044;
      }

      v103 = sub_10000668C(v101, v102, &v149);
      v102, v104, v105, v106, v107, v108, v109, v110;
      *(v100 + 4) = v103;
      *(v100 + 12) = 2080;
      v111 = [v97 description];
      v112 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v114 = v113;

      v115 = sub_10000668C(v112, v114, &v149);
      v114, v116, v117, v118, v119, v120, v121, v122;
      *(v100 + 14) = v115;
      _os_log_impl(&_mh_execute_header, v98, v99, "Missing relationship {key: %s, objectID: %s}", v100, 0x16u);
      swift_arrayDestroy();
    }

    v123 = objc_opt_self();
    v149 = 0;
    v150 = 0xE000000000000000;
    _StringGuts.grow(_:)(44);
    v124._countAndFlagsBits = 0xD00000000000001BLL;
    v124._object = 0x80000001007FE3A0;
    String.append(_:)(v124);
    v152 = a1 & 1;
    _print_unlocked<A, B>(_:_:)();
    v125._countAndFlagsBits = 0x7463656A626F202CLL;
    v125._object = 0xEC000000203A4449;
    String.append(_:)(v125);
    v126 = [v97 description];
    v127 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v129 = v128;

    v130._countAndFlagsBits = v127;
    v130._object = v129;
    String.append(_:)(v130);
    v129, v131, v132, v133, v134, v135, v136, v137;
    v138._countAndFlagsBits = 125;
    v138._object = 0xE100000000000000;
    String.append(_:)(v138);
    v139 = v150;
    v140 = String._bridgeToObjectiveC()();
    v139, v141, v142, v143, v144, v145, v146, v147;
    [v123 internalErrorWithDebugDescription:v140];

    swift_willThrow();
  }
}

void sub_100684B84(char a1, void *a2, uint64_t a3)
{
  if (*(a3 + 16) && (v6 = sub_10002B924(a2), (v7 & 1) != 0))
  {
    v8 = *(*(a3 + 56) + 16 * v6);
    objc_opt_self();
    if (!swift_dynamicCastObjCClass())
    {
      v9 = qword_100936128;
      v10 = v8;
      if (v9 != -1)
      {
        swift_once();
      }

      v11 = 0xE900000000000044;
      v12 = type metadata accessor for Logger();
      sub_100006654(v12, qword_100946C50);
      v13 = v10;
      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v140 = swift_slowAlloc();
        *v16 = 136315650;
        if (a1)
        {
          if (a1 == 1)
          {
            v17 = 0x6341746E65726170;
          }

          else
          {
            v17 = 0xD000000000000014;
          }

          if (a1 == 1)
          {
            v11 = 0xEF4449746E756F63;
          }

          else
          {
            v11 = 0x80000001007E9FD0;
          }
        }

        else
        {
          v17 = 0x49746E756F636361;
        }

        v70 = sub_10000668C(v17, v11, &v140);
        v11, v71, v72, v73, v74, v75, v76, v77;
        *(v16 + 4) = v70;
        *(v16 + 12) = 2080;
        sub_1000060C8(0, &qword_1009399F0, off_1008D4120);
        v78 = [swift_getObjCClassFromMetadata() description];
        v79 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v81 = v80;

        v82 = sub_10000668C(v79, v81, &v140);
        v81, v83, v84, v85, v86, v87, v88, v89;
        *(v16 + 14) = v82;
        *(v16 + 22) = 2080;
        v90 = [v13 description];
        v91 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v93 = v92;

        v94 = sub_10000668C(v91, v93, &v140);
        v93, v95, v96, v97, v98, v99, v100, v101;
        *(v16 + 24) = v94;
        _os_log_impl(&_mh_execute_header, v14, v15, "Mismatching class for relationship {key: %s, expectedType: %s, found: %s}", v16, 0x20u);
        swift_arrayDestroy();
      }

      else
      {
      }

      v102 = objc_opt_self();
      v140 = 0;
      v141 = 0xE000000000000000;
      _StringGuts.grow(_:)(73);
      v103._countAndFlagsBits = 0xD000000000000029;
      v103._object = 0x80000001007FE3C0;
      String.append(_:)(v103);
      v142 = a1;
      _print_unlocked<A, B>(_:_:)();
      v104._countAndFlagsBits = 0xD000000000000010;
      v104._object = 0x80000001007FE3F0;
      String.append(_:)(v104);
      sub_1000060C8(0, &qword_1009399F0, off_1008D4120);
      v105 = [swift_getObjCClassFromMetadata() description];
      v106 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v108 = v107;

      v109._countAndFlagsBits = v106;
      v109._object = v108;
      String.append(_:)(v109);
      v108, v110, v111, v112, v113, v114, v115, v116;
      v117._object = 0xE900000000000020;
      v117._countAndFlagsBits = 0x3A646E756F66202CLL;
      String.append(_:)(v117);
      v118 = [v13 description];
      v119 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v121 = v120;

      v122._countAndFlagsBits = v119;
      v122._object = v121;
      String.append(_:)(v122);
      v121, v123, v124, v125, v126, v127, v128, v129;
      v130._countAndFlagsBits = 125;
      v130._object = 0xE100000000000000;
      String.append(_:)(v130);
      v131 = v141;
      v132 = String._bridgeToObjectiveC()();
      v131, v133, v134, v135, v136, v137, v138, v139;
      [v102 internalErrorWithDebugDescription:v132];

      swift_willThrow();
    }
  }

  else
  {
    if (qword_100936128 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_100006654(v18, qword_100946C50);
    v19 = a2;
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v140 = swift_slowAlloc();
      *v22 = 136315394;
      if (a1)
      {
        if (a1 == 1)
        {
          v23 = 0x6341746E65726170;
        }

        else
        {
          v23 = 0xD000000000000014;
        }

        if (a1 == 1)
        {
          v24 = 0xEF4449746E756F63;
        }

        else
        {
          v24 = 0x80000001007E9FD0;
        }
      }

      else
      {
        v23 = 0x49746E756F636361;
        v24 = 0xE900000000000044;
      }

      v25 = sub_10000668C(v23, v24, &v140);
      v24, v26, v27, v28, v29, v30, v31, v32;
      *(v22 + 4) = v25;
      *(v22 + 12) = 2080;
      v33 = [v19 description];
      v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v36 = v35;

      v37 = sub_10000668C(v34, v36, &v140);
      v36, v38, v39, v40, v41, v42, v43, v44;
      *(v22 + 14) = v37;
      _os_log_impl(&_mh_execute_header, v20, v21, "Missing relationship {key: %s, objectID: %s}", v22, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    v45 = objc_opt_self();
    v140 = 0;
    v141 = 0xE000000000000000;
    _StringGuts.grow(_:)(44);
    v46._countAndFlagsBits = 0xD00000000000001BLL;
    v46._object = 0x80000001007FE3A0;
    String.append(_:)(v46);
    v142 = a1;
    _print_unlocked<A, B>(_:_:)();
    v47._countAndFlagsBits = 0x7463656A626F202CLL;
    v47._object = 0xEC000000203A4449;
    String.append(_:)(v47);
    v48 = [v19 description];
    v49 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v51 = v50;

    v52._countAndFlagsBits = v49;
    v52._object = v51;
    String.append(_:)(v52);
    v51, v53, v54, v55, v56, v57, v58, v59;
    v60._countAndFlagsBits = 125;
    v60._object = 0xE100000000000000;
    String.append(_:)(v60);
    v61 = v141;
    v62 = String._bridgeToObjectiveC()();
    v61, v63, v64, v65, v66, v67, v68, v69;
    [v45 internalErrorWithDebugDescription:v62];

    swift_willThrow();
  }
}

void sub_10068533C(char a1, void *a2, uint64_t a3)
{
  if (*(a3 + 16) && (v6 = sub_10002B924(a2), (v7 & 1) != 0))
  {
    v8 = *(*(a3 + 56) + 16 * v6);
    type metadata accessor for REMCDTemplateSection();
    if (!swift_dynamicCastClass())
    {
      v9 = qword_100936128;
      v10 = v8;
      if (v9 != -1)
      {
        swift_once();
      }

      v11 = 0xE900000000000044;
      v12 = type metadata accessor for Logger();
      sub_100006654(v12, qword_100946C50);
      v13 = v10;
      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v14, v15))
      {
        v142 = v15;
        v16 = swift_slowAlloc();
        v140 = swift_slowAlloc();
        *v16 = 136315650;
        if (a1)
        {
          if (a1 == 1)
          {
            v17 = 0x6341746E65726170;
          }

          else
          {
            v17 = 0xD000000000000014;
          }

          if (a1 == 1)
          {
            v11 = 0xEF4449746E756F63;
          }

          else
          {
            v11 = 0x80000001007E9FD0;
          }
        }

        else
        {
          v17 = 0x49746E756F636361;
        }

        v70 = sub_10000668C(v17, v11, &v140);
        v11, v71, v72, v73, v74, v75, v76, v77;
        *(v16 + 4) = v70;
        *(v16 + 12) = 2080;
        v78 = [swift_getObjCClassFromMetadata() description];
        v79 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v81 = v80;

        v82 = sub_10000668C(v79, v81, &v140);
        v81, v83, v84, v85, v86, v87, v88, v89;
        *(v16 + 14) = v82;
        *(v16 + 22) = 2080;
        v90 = [v13 description];
        v91 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v93 = v92;

        v94 = sub_10000668C(v91, v93, &v140);
        v93, v95, v96, v97, v98, v99, v100, v101;
        *(v16 + 24) = v94;
        _os_log_impl(&_mh_execute_header, v14, v142, "Mismatching class for relationship {key: %s, expectedType: %s, found: %s}", v16, 0x20u);
        swift_arrayDestroy();
      }

      else
      {
      }

      v102 = objc_opt_self();
      v140 = 0;
      v141 = 0xE000000000000000;
      _StringGuts.grow(_:)(73);
      v103._countAndFlagsBits = 0xD000000000000029;
      v103._object = 0x80000001007FE3C0;
      String.append(_:)(v103);
      v143 = a1;
      _print_unlocked<A, B>(_:_:)();
      v104._countAndFlagsBits = 0xD000000000000010;
      v104._object = 0x80000001007FE3F0;
      String.append(_:)(v104);
      v105 = [swift_getObjCClassFromMetadata() description];
      v106 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v108 = v107;

      v109._countAndFlagsBits = v106;
      v109._object = v108;
      String.append(_:)(v109);
      v108, v110, v111, v112, v113, v114, v115, v116;
      v117._object = 0xE900000000000020;
      v117._countAndFlagsBits = 0x3A646E756F66202CLL;
      String.append(_:)(v117);
      v118 = [v13 description];
      v119 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v121 = v120;

      v122._countAndFlagsBits = v119;
      v122._object = v121;
      String.append(_:)(v122);
      v121, v123, v124, v125, v126, v127, v128, v129;
      v130._countAndFlagsBits = 125;
      v130._object = 0xE100000000000000;
      String.append(_:)(v130);
      v131 = v141;
      v132 = String._bridgeToObjectiveC()();
      v131, v133, v134, v135, v136, v137, v138, v139;
      [v102 internalErrorWithDebugDescription:v132];

      swift_willThrow();
    }
  }

  else
  {
    if (qword_100936128 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_100006654(v18, qword_100946C50);
    v19 = a2;
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v140 = swift_slowAlloc();
      *v22 = 136315394;
      if (a1)
      {
        if (a1 == 1)
        {
          v23 = 0x6341746E65726170;
        }

        else
        {
          v23 = 0xD000000000000014;
        }

        if (a1 == 1)
        {
          v24 = 0xEF4449746E756F63;
        }

        else
        {
          v24 = 0x80000001007E9FD0;
        }
      }

      else
      {
        v23 = 0x49746E756F636361;
        v24 = 0xE900000000000044;
      }

      v25 = sub_10000668C(v23, v24, &v140);
      v24, v26, v27, v28, v29, v30, v31, v32;
      *(v22 + 4) = v25;
      *(v22 + 12) = 2080;
      v33 = [v19 description];
      v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v36 = v35;

      v37 = sub_10000668C(v34, v36, &v140);
      v36, v38, v39, v40, v41, v42, v43, v44;
      *(v22 + 14) = v37;
      _os_log_impl(&_mh_execute_header, v20, v21, "Missing relationship {key: %s, objectID: %s}", v22, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    v45 = objc_opt_self();
    v140 = 0;
    v141 = 0xE000000000000000;
    _StringGuts.grow(_:)(44);
    v46._countAndFlagsBits = 0xD00000000000001BLL;
    v46._object = 0x80000001007FE3A0;
    String.append(_:)(v46);
    v143 = a1;
    _print_unlocked<A, B>(_:_:)();
    v47._countAndFlagsBits = 0x7463656A626F202CLL;
    v47._object = 0xEC000000203A4449;
    String.append(_:)(v47);
    v48 = [v19 description];
    v49 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v51 = v50;

    v52._countAndFlagsBits = v49;
    v52._object = v51;
    String.append(_:)(v52);
    v51, v53, v54, v55, v56, v57, v58, v59;
    v60._countAndFlagsBits = 125;
    v60._object = 0xE100000000000000;
    String.append(_:)(v60);
    v61 = v141;
    v62 = String._bridgeToObjectiveC()();
    v61, v63, v64, v65, v66, v67, v68, v69;
    [v45 internalErrorWithDebugDescription:v62];

    swift_willThrow();
  }
}

void sub_100685AD4(char a1, void *a2, uint64_t a3, uint64_t a4, void *a5, unint64_t *a6)
{
  if (*(a3 + 16) && (v11 = sub_10002B924(a2), (v12 & 1) != 0))
  {
    v13 = *(*(a3 + 56) + 16 * v11);
    objc_opt_self();
    if (!swift_dynamicCastObjCClass())
    {
      v14 = qword_100936128;
      v15 = v13;
      if (v14 != -1)
      {
        swift_once();
      }

      v16 = type metadata accessor for Logger();
      sub_100006654(v16, qword_100946C50);
      v17 = v15;
      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.fault.getter();
      v147 = v17;

      v20 = &selRef_accountStatusWithCompletionHandler_;
      if (os_log_type_enabled(v18, v19))
      {
        v21 = swift_slowAlloc();
        v148 = swift_slowAlloc();
        *v21 = 136315650;
        if (a1)
        {
          v22 = 0x7265646E696D6572;
        }

        else
        {
          v22 = 0x49746E756F636361;
        }

        if (a1)
        {
          v23 = 0xEA00000000004449;
        }

        else
        {
          v23 = 0xE900000000000044;
        }

        v24 = sub_10000668C(v22, v23, &v148);
        v23, v25, v26, v27, v28, v29, v30, v31;
        *(v21 + 4) = v24;
        *(v21 + 12) = 2080;
        sub_1000060C8(0, a6, a5);
        v32 = [swift_getObjCClassFromMetadata() description];
        v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v35 = v34;

        v36 = sub_10000668C(v33, v35, &v148);
        v35, v37, v38, v39, v40, v41, v42, v43;
        *(v21 + 14) = v36;
        *(v21 + 22) = 2080;
        v44 = [v147 description];
        v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v47 = v46;

        v48 = sub_10000668C(v45, v47, &v148);
        v47, v49, v50, v51, v52, v53, v54, v55;
        *(v21 + 24) = v48;
        v20 = &selRef_accountStatusWithCompletionHandler_;
        _os_log_impl(&_mh_execute_header, v18, v19, "Mismatching class for relationship {key: %s, expectedType: %s, found: %s}", v21, 0x20u);
        swift_arrayDestroy();
      }

      v56 = objc_opt_self();
      v148 = 0;
      v149 = 0xE000000000000000;
      _StringGuts.grow(_:)(73);
      v57._countAndFlagsBits = 0xD000000000000029;
      v57._object = 0x80000001007FE3C0;
      String.append(_:)(v57);
      v150 = a1 & 1;
      _print_unlocked<A, B>(_:_:)();
      v58._object = 0x80000001007FE3F0;
      v58._countAndFlagsBits = 0xD000000000000010;
      String.append(_:)(v58);
      sub_1000060C8(0, a6, a5);
      v59 = v20;
      v60 = [swift_getObjCClassFromMetadata() v20[332]];
      v61 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v63 = v62;

      v64._countAndFlagsBits = v61;
      v64._object = v63;
      String.append(_:)(v64);
      v63, v65, v66, v67, v68, v69, v70, v71;
      v72._object = 0xE900000000000020;
      v72._countAndFlagsBits = 0x3A646E756F66202CLL;
      String.append(_:)(v72);
      v73 = [v147 v59[332]];
      v74 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v76 = v75;

      v77._countAndFlagsBits = v74;
      v77._object = v76;
      String.append(_:)(v77);
      v76, v78, v79, v80, v81, v82, v83, v84;
      v85._countAndFlagsBits = 125;
      v85._object = 0xE100000000000000;
      String.append(_:)(v85);
      v86 = v149;
      v87 = String._bridgeToObjectiveC()();
      v86, v88, v89, v90, v91, v92, v93, v94;
      [v56 internalErrorWithDebugDescription:v87];

      swift_willThrow();
    }
  }

  else
  {
    if (qword_100936128 != -1)
    {
      swift_once();
    }

    v95 = type metadata accessor for Logger();
    sub_100006654(v95, qword_100946C50);
    v96 = a2;
    v97 = Logger.logObject.getter();
    v98 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v97, v98))
    {
      v99 = swift_slowAlloc();
      v148 = swift_slowAlloc();
      *v99 = 136315394;
      if (a1)
      {
        v100 = 0x7265646E696D6572;
      }

      else
      {
        v100 = 0x49746E756F636361;
      }

      if (a1)
      {
        v101 = 0xEA00000000004449;
      }

      else
      {
        v101 = 0xE900000000000044;
      }

      v102 = sub_10000668C(v100, v101, &v148);
      v101, v103, v104, v105, v106, v107, v108, v109;
      *(v99 + 4) = v102;
      *(v99 + 12) = 2080;
      v110 = [v96 description];
      v111 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v113 = v112;

      v114 = sub_10000668C(v111, v113, &v148);
      v113, v115, v116, v117, v118, v119, v120, v121;
      *(v99 + 14) = v114;
      _os_log_impl(&_mh_execute_header, v97, v98, "Missing relationship {key: %s, objectID: %s}", v99, 0x16u);
      swift_arrayDestroy();
    }

    v122 = objc_opt_self();
    v148 = 0;
    v149 = 0xE000000000000000;
    _StringGuts.grow(_:)(44);
    v123._countAndFlagsBits = 0xD00000000000001BLL;
    v123._object = 0x80000001007FE3A0;
    String.append(_:)(v123);
    v150 = a1 & 1;
    _print_unlocked<A, B>(_:_:)();
    v124._countAndFlagsBits = 0x7463656A626F202CLL;
    v124._object = 0xEC000000203A4449;
    String.append(_:)(v124);
    v125 = [v96 description];
    v126 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v128 = v127;

    v129._countAndFlagsBits = v126;
    v129._object = v128;
    String.append(_:)(v129);
    v128, v130, v131, v132, v133, v134, v135, v136;
    v137._countAndFlagsBits = 125;
    v137._object = 0xE100000000000000;
    String.append(_:)(v137);
    v138 = v149;
    v139 = String._bridgeToObjectiveC()();
    v138, v140, v141, v142, v143, v144, v145, v146;
    [v122 internalErrorWithDebugDescription:v139];

    swift_willThrow();
  }
}

void sub_100686278(unsigned __int8 a1, void *a2, uint64_t a3)
{
  if (*(a3 + 16) && (v6 = sub_10002B924(a2), (v7 & 1) != 0))
  {
    v8 = *(*(a3 + 56) + 16 * v6);
    type metadata accessor for REMCDSmartListSection();
    if (!swift_dynamicCastClass())
    {
      v9 = qword_100936128;
      v10 = v8;
      if (v9 != -1)
      {
        swift_once();
      }

      v11 = type metadata accessor for Logger();
      sub_100006654(v11, qword_100946C50);
      v12 = v10;
      v13 = Logger.logObject.getter();
      v14 = static os_log_type_t.fault.getter();

      v15 = &selRef_accountStatusWithCompletionHandler_;
      if (os_log_type_enabled(v13, v14))
      {
        v16 = swift_slowAlloc();
        v150 = swift_slowAlloc();
        *v16 = 136315650;
        v17 = 0x694C746E65726170;
        v18 = 0xEC00000044497473;
        if (a1 != 2)
        {
          v17 = 0xD000000000000014;
          v18 = 0x80000001007E9FD0;
        }

        v19 = 0x6341746E65726170;
        v20 = 0xEF4449746E756F63;
        if (!a1)
        {
          v19 = 0x49746E756F636361;
          v20 = 0xE900000000000044;
        }

        if (a1 <= 1u)
        {
          v21 = v19;
        }

        else
        {
          v21 = v17;
        }

        if (a1 <= 1u)
        {
          v22 = v20;
        }

        else
        {
          v22 = v18;
        }

        v23 = sub_10000668C(v21, v22, &v150);
        v22, v24, v25, v26, v27, v28, v29, v30;
        *(v16 + 4) = v23;
        *(v16 + 12) = 2080;
        v31 = [swift_getObjCClassFromMetadata() description];
        v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v34 = v33;

        v35 = sub_10000668C(v32, v34, &v150);
        v34, v36, v37, v38, v39, v40, v41, v42;
        *(v16 + 14) = v35;
        *(v16 + 22) = 2080;
        v43 = [v12 description];
        v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v46 = v45;

        v47 = sub_10000668C(v44, v46, &v150);
        v48 = v46;
        v15 = &selRef_accountStatusWithCompletionHandler_;
        v48, v49, v50, v51, v52, v53, v54, v55;
        *(v16 + 24) = v47;
        _os_log_impl(&_mh_execute_header, v13, v14, "Mismatching class for relationship {key: %s, expectedType: %s, found: %s}", v16, 0x20u);
        swift_arrayDestroy();
      }

      else
      {
      }

      v112 = objc_opt_self();
      v150 = 0;
      v151 = 0xE000000000000000;
      _StringGuts.grow(_:)(73);
      v113._countAndFlagsBits = 0xD000000000000029;
      v113._object = 0x80000001007FE3C0;
      String.append(_:)(v113);
      v152 = a1;
      _print_unlocked<A, B>(_:_:)();
      v114._countAndFlagsBits = 0xD000000000000010;
      v114._object = 0x80000001007FE3F0;
      String.append(_:)(v114);
      v115 = [swift_getObjCClassFromMetadata() v15[332]];
      v116 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v118 = v117;

      v119._countAndFlagsBits = v116;
      v119._object = v118;
      String.append(_:)(v119);
      v118, v120, v121, v122, v123, v124, v125, v126;
      v127._object = 0xE900000000000020;
      v127._countAndFlagsBits = 0x3A646E756F66202CLL;
      String.append(_:)(v127);
      v128 = [v12 v15[332]];
      v129 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v131 = v130;

      v132._countAndFlagsBits = v129;
      v132._object = v131;
      String.append(_:)(v132);
      v131, v133, v134, v135, v136, v137, v138, v139;
      v140._countAndFlagsBits = 125;
      v140._object = 0xE100000000000000;
      String.append(_:)(v140);
      v141 = v151;
      v142 = String._bridgeToObjectiveC()();
      v141, v143, v144, v145, v146, v147, v148, v149;
      [v112 internalErrorWithDebugDescription:v142];

      swift_willThrow();
    }
  }

  else
  {
    if (qword_100936128 != -1)
    {
      swift_once();
    }

    v56 = type metadata accessor for Logger();
    sub_100006654(v56, qword_100946C50);
    v57 = a2;
    v58 = Logger.logObject.getter();
    v59 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      v150 = swift_slowAlloc();
      *v60 = 136315394;
      v61 = 0xE900000000000044;
      v62 = 0x694C746E65726170;
      v63 = 0xEC00000044497473;
      if (a1 != 2)
      {
        v62 = 0xD000000000000014;
        v63 = 0x80000001007E9FD0;
      }

      v64 = 0x6341746E65726170;
      if (a1)
      {
        v61 = 0xEF4449746E756F63;
      }

      else
      {
        v64 = 0x49746E756F636361;
      }

      if (a1 <= 1u)
      {
        v65 = v64;
      }

      else
      {
        v65 = v62;
      }

      if (a1 <= 1u)
      {
        v66 = v61;
      }

      else
      {
        v66 = v63;
      }

      v67 = sub_10000668C(v65, v66, &v150);
      v66, v68, v69, v70, v71, v72, v73, v74;
      *(v60 + 4) = v67;
      *(v60 + 12) = 2080;
      v75 = [v57 description];
      v76 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v78 = v77;

      v79 = sub_10000668C(v76, v78, &v150);
      v78, v80, v81, v82, v83, v84, v85, v86;
      *(v60 + 14) = v79;
      _os_log_impl(&_mh_execute_header, v58, v59, "Missing relationship {key: %s, objectID: %s}", v60, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    v87 = objc_opt_self();
    v150 = 0;
    v151 = 0xE000000000000000;
    _StringGuts.grow(_:)(44);
    v88._countAndFlagsBits = 0xD00000000000001BLL;
    v88._object = 0x80000001007FE3A0;
    String.append(_:)(v88);
    v152 = a1;
    _print_unlocked<A, B>(_:_:)();
    v89._countAndFlagsBits = 0x7463656A626F202CLL;
    v89._object = 0xEC000000203A4449;
    String.append(_:)(v89);
    v90 = [v57 description];
    v91 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v93 = v92;

    v94._countAndFlagsBits = v91;
    v94._object = v93;
    String.append(_:)(v94);
    v93, v95, v96, v97, v98, v99, v100, v101;
    v102._countAndFlagsBits = 125;
    v102._object = 0xE100000000000000;
    String.append(_:)(v102);
    v103 = v151;
    v104 = String._bridgeToObjectiveC()();
    v103, v105, v106, v107, v108, v109, v110, v111;
    [v87 internalErrorWithDebugDescription:v104];

    swift_willThrow();
  }
}

void sub_100686A98(unsigned __int8 a1, void *a2, uint64_t a3, void *a4, unint64_t *a5)
{
  if (*(a3 + 16) && (v10 = sub_10002B924(a2), (v11 & 1) != 0))
  {
    v12 = *(*(a3 + 56) + 16 * v10);
    objc_opt_self();
    if (!swift_dynamicCastObjCClass())
    {
      v13 = qword_100936128;
      v14 = v12;
      if (v13 != -1)
      {
        swift_once();
      }

      v15 = type metadata accessor for Logger();
      sub_100006654(v15, qword_100946C50);
      v16 = v14;
      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.fault.getter();

      v19 = &selRef_accountStatusWithCompletionHandler_;
      if (os_log_type_enabled(v17, v18))
      {
        v157 = v18;
        v154 = v16;
        v20 = swift_slowAlloc();
        v155 = swift_slowAlloc();
        *v20 = 136315650;
        v21 = 0x694C746E65726170;
        v22 = 0xEC00000044497473;
        if (a1 != 2)
        {
          v21 = 0xD000000000000014;
          v22 = 0x80000001007E9FD0;
        }

        v23 = 0x6341746E65726170;
        v24 = 0xEF4449746E756F63;
        if (!a1)
        {
          v23 = 0x49746E756F636361;
          v24 = 0xE900000000000044;
        }

        if (a1 <= 1u)
        {
          v25 = v23;
        }

        else
        {
          v25 = v21;
        }

        if (a1 <= 1u)
        {
          v26 = v24;
        }

        else
        {
          v26 = v22;
        }

        v27 = sub_10000668C(v25, v26, &v155);
        v26, v28, v29, v30, v31, v32, v33, v34;
        *(v20 + 4) = v27;
        *(v20 + 12) = 2080;
        sub_1000060C8(0, a5, a4);
        v35 = [swift_getObjCClassFromMetadata() description];
        v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v38 = v37;

        v39 = sub_10000668C(v36, v38, &v155);
        v38, v40, v41, v42, v43, v44, v45, v46;
        *(v20 + 14) = v39;
        *(v20 + 22) = 2080;
        v16 = v154;
        v47 = [v154 description];
        v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v50 = v49;

        v51 = v48;
        v19 = &selRef_accountStatusWithCompletionHandler_;
        v52 = sub_10000668C(v51, v50, &v155);
        v50, v53, v54, v55, v56, v57, v58, v59;
        *(v20 + 24) = v52;
        _os_log_impl(&_mh_execute_header, v17, v157, "Mismatching class for relationship {key: %s, expectedType: %s, found: %s}", v20, 0x20u);
        swift_arrayDestroy();
      }

      else
      {
      }

      v116 = objc_opt_self();
      v155 = 0;
      v156 = 0xE000000000000000;
      _StringGuts.grow(_:)(73);
      v117._countAndFlagsBits = 0xD000000000000029;
      v117._object = 0x80000001007FE3C0;
      String.append(_:)(v117);
      v158 = a1;
      _print_unlocked<A, B>(_:_:)();
      v118._countAndFlagsBits = 0xD000000000000010;
      v118._object = 0x80000001007FE3F0;
      String.append(_:)(v118);
      sub_1000060C8(0, a5, a4);
      v119 = [swift_getObjCClassFromMetadata() v19[332]];
      v120 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v122 = v121;

      v123._countAndFlagsBits = v120;
      v123._object = v122;
      String.append(_:)(v123);
      v122, v124, v125, v126, v127, v128, v129, v130;
      v131._object = 0xE900000000000020;
      v131._countAndFlagsBits = 0x3A646E756F66202CLL;
      String.append(_:)(v131);
      v132 = [v16 v19[332]];
      v133 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v135 = v134;

      v136._countAndFlagsBits = v133;
      v136._object = v135;
      String.append(_:)(v136);
      v135, v137, v138, v139, v140, v141, v142, v143;
      v144._countAndFlagsBits = 125;
      v144._object = 0xE100000000000000;
      String.append(_:)(v144);
      v145 = v156;
      v146 = String._bridgeToObjectiveC()();
      v145, v147, v148, v149, v150, v151, v152, v153;
      [v116 internalErrorWithDebugDescription:v146];

      swift_willThrow();
    }
  }

  else
  {
    if (qword_100936128 != -1)
    {
      swift_once();
    }

    v60 = type metadata accessor for Logger();
    sub_100006654(v60, qword_100946C50);
    v61 = a2;
    v62 = Logger.logObject.getter();
    v63 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      v155 = swift_slowAlloc();
      *v64 = 136315394;
      v65 = 0xE900000000000044;
      v66 = 0x694C746E65726170;
      v67 = 0xEC00000044497473;
      if (a1 != 2)
      {
        v66 = 0xD000000000000014;
        v67 = 0x80000001007E9FD0;
      }

      v68 = 0x6341746E65726170;
      if (a1)
      {
        v65 = 0xEF4449746E756F63;
      }

      else
      {
        v68 = 0x49746E756F636361;
      }

      if (a1 <= 1u)
      {
        v69 = v68;
      }

      else
      {
        v69 = v66;
      }

      if (a1 <= 1u)
      {
        v70 = v65;
      }

      else
      {
        v70 = v67;
      }

      v71 = sub_10000668C(v69, v70, &v155);
      v70, v72, v73, v74, v75, v76, v77, v78;
      *(v64 + 4) = v71;
      *(v64 + 12) = 2080;
      v79 = [v61 description];
      v80 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v82 = v81;

      v83 = sub_10000668C(v80, v82, &v155);
      v82, v84, v85, v86, v87, v88, v89, v90;
      *(v64 + 14) = v83;
      _os_log_impl(&_mh_execute_header, v62, v63, "Missing relationship {key: %s, objectID: %s}", v64, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    v91 = objc_opt_self();
    v155 = 0;
    v156 = 0xE000000000000000;
    _StringGuts.grow(_:)(44);
    v92._countAndFlagsBits = 0xD00000000000001BLL;
    v92._object = 0x80000001007FE3A0;
    String.append(_:)(v92);
    v158 = a1;
    _print_unlocked<A, B>(_:_:)();
    v93._countAndFlagsBits = 0x7463656A626F202CLL;
    v93._object = 0xEC000000203A4449;
    String.append(_:)(v93);
    v94 = [v61 description];
    v95 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v97 = v96;

    v98._countAndFlagsBits = v95;
    v98._object = v97;
    String.append(_:)(v98);
    v97, v99, v100, v101, v102, v103, v104, v105;
    v106._countAndFlagsBits = 125;
    v106._object = 0xE100000000000000;
    String.append(_:)(v106);
    v107 = v156;
    v108 = String._bridgeToObjectiveC()();
    v107, v109, v110, v111, v112, v113, v114, v115;
    [v91 internalErrorWithDebugDescription:v108];

    swift_willThrow();
  }
}

void sub_1006872B0(unsigned __int8 a1, void *a2, uint64_t a3, void *a4, unint64_t *a5)
{
  if (*(a3 + 16) && (v10 = sub_10002B924(a2), (v11 & 1) != 0))
  {
    v12 = *(*(a3 + 56) + 16 * v10);
    objc_opt_self();
    if (!swift_dynamicCastObjCClass())
    {
      v13 = qword_100936128;
      v14 = v12;
      if (v13 != -1)
      {
        swift_once();
      }

      v15 = type metadata accessor for Logger();
      sub_100006654(v15, qword_100946C50);
      v16 = v14;
      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.fault.getter();

      v19 = &selRef_accountStatusWithCompletionHandler_;
      if (os_log_type_enabled(v17, v18))
      {
        v157 = v18;
        v154 = v16;
        v20 = swift_slowAlloc();
        v155 = swift_slowAlloc();
        *v20 = 136315650;
        v21 = 0x65656E6769737361;
        v22 = 0xEA00000000004449;
        if (a1 != 2)
        {
          v21 = 0x74616E696769726FLL;
          v22 = 0xEC0000004449726FLL;
        }

        v23 = 0x7265646E696D6572;
        v24 = 0xEA00000000004449;
        if (!a1)
        {
          v23 = 0x49746E756F636361;
          v24 = 0xE900000000000044;
        }

        if (a1 <= 1u)
        {
          v25 = v23;
        }

        else
        {
          v25 = v21;
        }

        if (a1 <= 1u)
        {
          v26 = v24;
        }

        else
        {
          v26 = v22;
        }

        v27 = sub_10000668C(v25, v26, &v155);
        v26, v28, v29, v30, v31, v32, v33, v34;
        *(v20 + 4) = v27;
        *(v20 + 12) = 2080;
        sub_1000060C8(0, a5, a4);
        v35 = [swift_getObjCClassFromMetadata() description];
        v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v38 = v37;

        v39 = sub_10000668C(v36, v38, &v155);
        v38, v40, v41, v42, v43, v44, v45, v46;
        *(v20 + 14) = v39;
        *(v20 + 22) = 2080;
        v16 = v154;
        v47 = [v154 description];
        v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v50 = v49;

        v51 = v48;
        v19 = &selRef_accountStatusWithCompletionHandler_;
        v52 = sub_10000668C(v51, v50, &v155);
        v50, v53, v54, v55, v56, v57, v58, v59;
        *(v20 + 24) = v52;
        _os_log_impl(&_mh_execute_header, v17, v157, "Mismatching class for relationship {key: %s, expectedType: %s, found: %s}", v20, 0x20u);
        swift_arrayDestroy();
      }

      else
      {
      }

      v116 = objc_opt_self();
      v155 = 0;
      v156 = 0xE000000000000000;
      _StringGuts.grow(_:)(73);
      v117._countAndFlagsBits = 0xD000000000000029;
      v117._object = 0x80000001007FE3C0;
      String.append(_:)(v117);
      v158 = a1;
      _print_unlocked<A, B>(_:_:)();
      v118._object = 0x80000001007FE3F0;
      v118._countAndFlagsBits = 0xD000000000000010;
      String.append(_:)(v118);
      sub_1000060C8(0, a5, a4);
      v119 = [swift_getObjCClassFromMetadata() v19[332]];
      v120 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v122 = v121;

      v123._countAndFlagsBits = v120;
      v123._object = v122;
      String.append(_:)(v123);
      v122, v124, v125, v126, v127, v128, v129, v130;
      v131._object = 0xE900000000000020;
      v131._countAndFlagsBits = 0x3A646E756F66202CLL;
      String.append(_:)(v131);
      v132 = [v16 v19[332]];
      v133 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v135 = v134;

      v136._countAndFlagsBits = v133;
      v136._object = v135;
      String.append(_:)(v136);
      v135, v137, v138, v139, v140, v141, v142, v143;
      v144._countAndFlagsBits = 125;
      v144._object = 0xE100000000000000;
      String.append(_:)(v144);
      v145 = v156;
      v146 = String._bridgeToObjectiveC()();
      v145, v147, v148, v149, v150, v151, v152, v153;
      [v116 internalErrorWithDebugDescription:v146];

      swift_willThrow();
    }
  }

  else
  {
    if (qword_100936128 != -1)
    {
      swift_once();
    }

    v60 = type metadata accessor for Logger();
    sub_100006654(v60, qword_100946C50);
    v61 = a2;
    v62 = Logger.logObject.getter();
    v63 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      v155 = swift_slowAlloc();
      *v64 = 136315394;
      v65 = 0xE900000000000044;
      v66 = 0x65656E6769737361;
      v67 = 0xEA00000000004449;
      if (a1 != 2)
      {
        v66 = 0x74616E696769726FLL;
        v67 = 0xEC0000004449726FLL;
      }

      v68 = 0x7265646E696D6572;
      if (a1)
      {
        v65 = 0xEA00000000004449;
      }

      else
      {
        v68 = 0x49746E756F636361;
      }

      if (a1 <= 1u)
      {
        v69 = v68;
      }

      else
      {
        v69 = v66;
      }

      if (a1 <= 1u)
      {
        v70 = v65;
      }

      else
      {
        v70 = v67;
      }

      v71 = sub_10000668C(v69, v70, &v155);
      v70, v72, v73, v74, v75, v76, v77, v78;
      *(v64 + 4) = v71;
      *(v64 + 12) = 2080;
      v79 = [v61 description];
      v80 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v82 = v81;

      v83 = sub_10000668C(v80, v82, &v155);
      v82, v84, v85, v86, v87, v88, v89, v90;
      *(v64 + 14) = v83;
      _os_log_impl(&_mh_execute_header, v62, v63, "Missing relationship {key: %s, objectID: %s}", v64, 0x16u);
      swift_arrayDestroy();
    }

    v91 = objc_opt_self();
    v155 = 0;
    v156 = 0xE000000000000000;
    _StringGuts.grow(_:)(44);
    v92._countAndFlagsBits = 0xD00000000000001BLL;
    v92._object = 0x80000001007FE3A0;
    String.append(_:)(v92);
    v158 = a1;
    _print_unlocked<A, B>(_:_:)();
    v93._countAndFlagsBits = 0x7463656A626F202CLL;
    v93._object = 0xEC000000203A4449;
    String.append(_:)(v93);
    v94 = [v61 description];
    v95 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v97 = v96;

    v98._countAndFlagsBits = v95;
    v98._object = v97;
    String.append(_:)(v98);
    v97, v99, v100, v101, v102, v103, v104, v105;
    v106._countAndFlagsBits = 125;
    v106._object = 0xE100000000000000;
    String.append(_:)(v106);
    v107 = v156;
    v108 = String._bridgeToObjectiveC()();
    v107, v109, v110, v111, v112, v113, v114, v115;
    [v91 internalErrorWithDebugDescription:v108];

    swift_willThrow();
  }
}

void sub_100687B00(int a1, void *a2, uint64_t a3, void *a4, unint64_t *a5)
{
  LODWORD(v6) = a1;
  if (*(a3 + 16) && (v10 = sub_10002B924(a2), (v11 & 1) != 0))
  {
    v12 = *(*(a3 + 56) + 16 * v10);
    objc_opt_self();
    if (!swift_dynamicCastObjCClass())
    {
      v13 = qword_100936128;
      v14 = v12;
      if (v13 != -1)
      {
        swift_once();
      }

      v15 = type metadata accessor for Logger();
      sub_100006654(v15, qword_100946C50);
      v16 = v14;
      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.fault.getter();

      v19 = &selRef_accountStatusWithCompletionHandler_;
      if (os_log_type_enabled(v17, v18))
      {
        v158 = v16;
        v20 = swift_slowAlloc();
        v159 = swift_slowAlloc();
        *v20 = 136315650;
        v161 = v6;
        v21 = 0x80000001007EA4F0;
        v22 = 0x80000001007EA510;
        v23 = 0xD00000000000001FLL;
        if (v6 == 4)
        {
          v23 = 0xD000000000000014;
        }

        else
        {
          v22 = 0x80000001007EA530;
        }

        if (v6 == 3)
        {
          v24 = 0xD000000000000014;
        }

        else
        {
          v24 = v23;
        }

        if (v6 != 3)
        {
          v21 = v22;
        }

        v25 = 0xE600000000000000;
        v26 = 0x44497473696CLL;
        if (v6 != 1)
        {
          v26 = 0xD000000000000010;
          v25 = 0x80000001007EA4D0;
        }

        if (!v6)
        {
          v26 = 0x49746E756F636361;
          v25 = 0xE900000000000044;
        }

        if (v6 <= 2u)
        {
          v27 = v26;
        }

        else
        {
          v27 = v24;
        }

        if (v6 <= 2u)
        {
          v28 = v25;
        }

        else
        {
          v28 = v21;
        }

        v29 = sub_10000668C(v27, v28, &v159);
        v28, v30, v31, v32, v33, v34, v35, v36;
        *(v20 + 4) = v29;
        *(v20 + 12) = 2080;
        sub_1000060C8(0, a5, a4);
        v37 = [swift_getObjCClassFromMetadata() description];
        v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v40 = v39;

        v41 = sub_10000668C(v38, v40, &v159);
        v40, v42, v43, v44, v45, v46, v47, v48;
        *(v20 + 14) = v41;
        *(v20 + 22) = 2080;
        v49 = [v158 description];
        v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v51 = v50;

        v52 = sub_10000668C(v6, v51, &v159);
        v53 = v51;
        v16 = v158;
        v19 = &selRef_accountStatusWithCompletionHandler_;
        v53, v54, v55, v56, v57, v58, v59, v60;
        *(v20 + 24) = v52;
        _os_log_impl(&_mh_execute_header, v17, v18, "Mismatching class for relationship {key: %s, expectedType: %s, found: %s}", v20, 0x20u);
        swift_arrayDestroy();

        LOBYTE(v6) = v161;
      }

      else
      {
      }

      v119 = objc_opt_self();
      v159 = 0;
      v160 = 0xE000000000000000;
      _StringGuts.grow(_:)(73);
      v120._countAndFlagsBits = 0xD000000000000029;
      v120._object = 0x80000001007FE3C0;
      String.append(_:)(v120);
      v162 = v6;
      _print_unlocked<A, B>(_:_:)();
      v121._countAndFlagsBits = 0xD000000000000010;
      v121._object = 0x80000001007FE3F0;
      String.append(_:)(v121);
      sub_1000060C8(0, a5, a4);
      v122 = v19;
      v123 = [swift_getObjCClassFromMetadata() v19[332]];
      v124 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v126 = v125;

      v127._countAndFlagsBits = v124;
      v127._object = v126;
      String.append(_:)(v127);
      v126, v128, v129, v130, v131, v132, v133, v134;
      v135._object = 0xE900000000000020;
      v135._countAndFlagsBits = 0x3A646E756F66202CLL;
      String.append(_:)(v135);
      v136 = [v16 v122[332]];
      v137 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v139 = v138;

      v140._countAndFlagsBits = v137;
      v140._object = v139;
      String.append(_:)(v140);
      v139, v141, v142, v143, v144, v145, v146, v147;
      v148._countAndFlagsBits = 125;
      v148._object = 0xE100000000000000;
      String.append(_:)(v148);
      v149 = v160;
      v150 = String._bridgeToObjectiveC()();
      v149, v151, v152, v153, v154, v155, v156, v157;
      [v119 internalErrorWithDebugDescription:v150];

      swift_willThrow();
    }
  }

  else
  {
    if (qword_100936128 != -1)
    {
      swift_once();
    }

    v61 = type metadata accessor for Logger();
    sub_100006654(v61, qword_100946C50);
    v62 = a2;
    v63 = Logger.logObject.getter();
    v64 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      v159 = swift_slowAlloc();
      v66 = 0xE900000000000044;
      *v65 = 136315394;
      v161 = v6;
      v67 = 0x80000001007EA4F0;
      v68 = 0x80000001007EA510;
      v69 = 0xD00000000000001FLL;
      if (v6 == 4)
      {
        v69 = 0xD000000000000014;
      }

      else
      {
        v68 = 0x80000001007EA530;
      }

      if (v6 == 3)
      {
        v70 = 0xD000000000000014;
      }

      else
      {
        v70 = v69;
      }

      if (v6 != 3)
      {
        v67 = v68;
      }

      v71 = 0xE600000000000000;
      v72 = 0x44497473696CLL;
      if (v6 != 1)
      {
        v72 = 0xD000000000000010;
        v71 = 0x80000001007EA4D0;
      }

      if (v6)
      {
        v66 = v71;
      }

      else
      {
        v72 = 0x49746E756F636361;
      }

      if (v6 <= 2u)
      {
        v73 = v72;
      }

      else
      {
        v73 = v70;
      }

      if (v6 <= 2u)
      {
        v74 = v66;
      }

      else
      {
        v74 = v67;
      }

      v75 = sub_10000668C(v73, v74, &v159);
      v74, v76, v77, v78, v79, v80, v81, v82;
      *(v65 + 4) = v75;
      *(v65 + 12) = 2080;
      v83 = [v62 description];
      v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v85 = v84;

      v86 = sub_10000668C(v6, v85, &v159);
      v85, v87, v88, v89, v90, v91, v92, v93;
      *(v65 + 14) = v86;
      _os_log_impl(&_mh_execute_header, v63, v64, "Missing relationship {key: %s, objectID: %s}", v65, 0x16u);
      swift_arrayDestroy();

      LOBYTE(v6) = v161;
    }

    else
    {
    }

    v94 = objc_opt_self();
    v159 = 0;
    v160 = 0xE000000000000000;
    _StringGuts.grow(_:)(44);
    v95._countAndFlagsBits = 0xD00000000000001BLL;
    v95._object = 0x80000001007FE3A0;
    String.append(_:)(v95);
    v162 = v6;
    _print_unlocked<A, B>(_:_:)();
    v96._countAndFlagsBits = 0x7463656A626F202CLL;
    v96._object = 0xEC000000203A4449;
    String.append(_:)(v96);
    v97 = [v62 description];
    v98 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v100 = v99;

    v101._countAndFlagsBits = v98;
    v101._object = v100;
    String.append(_:)(v101);
    v100, v102, v103, v104, v105, v106, v107, v108;
    v109._countAndFlagsBits = 125;
    v109._object = 0xE100000000000000;
    String.append(_:)(v109);
    v110 = v160;
    v111 = String._bridgeToObjectiveC()();
    v110, v112, v113, v114, v115, v116, v117, v118;
    [v94 internalErrorWithDebugDescription:v111];

    swift_willThrow();
  }
}

void sub_100688408(char a1, void *a2, uint64_t a3, void *a4, unint64_t *a5)
{
  if (*(a3 + 16) && (v10 = sub_10002B924(a2), (v11 & 1) != 0))
  {
    v12 = *(*(a3 + 56) + 16 * v10);
    objc_opt_self();
    if (!swift_dynamicCastObjCClass())
    {
      v13 = qword_100936128;
      v14 = v12;
      if (v13 != -1)
      {
        swift_once();
      }

      v15 = type metadata accessor for Logger();
      sub_100006654(v15, qword_100946C50);
      v16 = v14;
      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v150 = swift_slowAlloc();
        *v19 = 136315650;
        if (a1)
        {
          v20 = 0xD000000000000016;
        }

        else
        {
          v20 = 0xD000000000000011;
        }

        if (a1)
        {
          v21 = "listIDsToUndelete";
        }

        else
        {
          v21 = "urrentAppVersion";
        }

        v149 = v16;
        v22 = sub_10000668C(v20, (v21 | 0x8000000000000000), &v150);
        (v21 | 0x8000000000000000), v23, v24, v25, v26, v27, v28, v29;
        *(v19 + 4) = v22;
        *(v19 + 12) = 2080;
        sub_1000060C8(0, a5, a4);
        v30 = [swift_getObjCClassFromMetadata() description];
        v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v32 = a1;
        v34 = v33;

        v35 = sub_10000668C(v31, v34, &v150);
        v34, v36, v37, v38, v39, v40, v41, v42;
        *(v19 + 14) = v35;
        *(v19 + 22) = 2080;
        v43 = [v149 description];
        v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v46 = v45;

        v47 = v44;
        a1 = v32;
        v48 = sub_10000668C(v47, v46, &v150);
        v49 = v46;
        v16 = v149;
        v49, v50, v51, v52, v53, v54, v55, v56;
        *(v19 + 24) = v48;
        _os_log_impl(&_mh_execute_header, v17, v18, "Mismatching class for relationship {key: %s, expectedType: %s, found: %s}", v19, 0x20u);
        swift_arrayDestroy();
      }

      v57 = objc_opt_self();
      v150 = 0;
      v151 = 0xE000000000000000;
      _StringGuts.grow(_:)(73);
      v58._countAndFlagsBits = 0xD000000000000029;
      v58._object = 0x80000001007FE3C0;
      String.append(_:)(v58);
      v152 = a1 & 1;
      _print_unlocked<A, B>(_:_:)();
      v59._countAndFlagsBits = 0xD000000000000010;
      v59._object = 0x80000001007FE3F0;
      String.append(_:)(v59);
      sub_1000060C8(0, a5, a4);
      v60 = [swift_getObjCClassFromMetadata() description];
      v61 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v63 = v62;

      v64._countAndFlagsBits = v61;
      v64._object = v63;
      String.append(_:)(v64);
      v63, v65, v66, v67, v68, v69, v70, v71;
      v72._countAndFlagsBits = 0x3A646E756F66202CLL;
      v72._object = 0xE900000000000020;
      String.append(_:)(v72);
      v73 = [v16 description];
      v74 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v76 = v75;

      v77._countAndFlagsBits = v74;
      v77._object = v76;
      String.append(_:)(v77);
      v76, v78, v79, v80, v81, v82, v83, v84;
      v85._countAndFlagsBits = 125;
      v85._object = 0xE100000000000000;
      String.append(_:)(v85);
      v86 = v151;
      v87 = String._bridgeToObjectiveC()();
      v86, v88, v89, v90, v91, v92, v93, v94;
      [v57 internalErrorWithDebugDescription:v87];

      swift_willThrow();
    }
  }

  else
  {
    if (qword_100936128 != -1)
    {
      swift_once();
    }

    v95 = type metadata accessor for Logger();
    sub_100006654(v95, qword_100946C50);
    v96 = a2;
    v97 = Logger.logObject.getter();
    v98 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v97, v98))
    {
      v99 = swift_slowAlloc();
      v150 = swift_slowAlloc();
      *v99 = 136315394;
      if (a1)
      {
        v100 = 0xD000000000000016;
      }

      else
      {
        v100 = 0xD000000000000011;
      }

      v101 = a1;
      if (a1)
      {
        v102 = "listIDsToUndelete";
      }

      else
      {
        v102 = "urrentAppVersion";
      }

      v103 = sub_10000668C(v100, (v102 | 0x8000000000000000), &v150);
      (v102 | 0x8000000000000000), v104, v105, v106, v107, v108, v109, v110;
      *(v99 + 4) = v103;
      *(v99 + 12) = 2080;
      v111 = [v96 description];
      v112 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v114 = v113;

      v115 = v112;
      a1 = v101;
      v116 = sub_10000668C(v115, v114, &v150);
      v114, v117, v118, v119, v120, v121, v122, v123;
      *(v99 + 14) = v116;
      _os_log_impl(&_mh_execute_header, v97, v98, "Missing relationship {key: %s, objectID: %s}", v99, 0x16u);
      swift_arrayDestroy();
    }

    v124 = objc_opt_self();
    v150 = 0;
    v151 = 0xE000000000000000;
    _StringGuts.grow(_:)(44);
    v125._countAndFlagsBits = 0xD00000000000001BLL;
    v125._object = 0x80000001007FE3A0;
    String.append(_:)(v125);
    v152 = a1 & 1;
    _print_unlocked<A, B>(_:_:)();
    v126._countAndFlagsBits = 0x7463656A626F202CLL;
    v126._object = 0xEC000000203A4449;
    String.append(_:)(v126);
    v127 = [v96 description];
    v128 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v130 = v129;

    v131._countAndFlagsBits = v128;
    v131._object = v130;
    String.append(_:)(v131);
    v130, v132, v133, v134, v135, v136, v137, v138;
    v139._countAndFlagsBits = 125;
    v139._object = 0xE100000000000000;
    String.append(_:)(v139);
    v140 = v151;
    v141 = String._bridgeToObjectiveC()();
    v140, v142, v143, v144, v145, v146, v147, v148;
    [v124 internalErrorWithDebugDescription:v141];

    swift_willThrow();
  }
}

void sub_100688BB8(char a1, void *a2, uint64_t a3, uint64_t a4, void *a5, unint64_t *a6)
{
  if (*(a3 + 16) && (v11 = sub_10002B924(a2), (v12 & 1) != 0))
  {
    v13 = *(*(a3 + 56) + 16 * v11);
    objc_opt_self();
    if (!swift_dynamicCastObjCClass())
    {
      v14 = qword_100936128;
      v15 = v13;
      if (v14 != -1)
      {
        swift_once();
      }

      v16 = type metadata accessor for Logger();
      sub_100006654(v16, qword_100946C50);
      v17 = v15;
      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.fault.getter();
      v147 = v17;

      v20 = &selRef_accountStatusWithCompletionHandler_;
      if (os_log_type_enabled(v18, v19))
      {
        v21 = swift_slowAlloc();
        v148 = swift_slowAlloc();
        *v21 = 136315650;
        if (a1)
        {
          v22 = 0x4449746E65726170;
        }

        else
        {
          v22 = 0x49746E756F636361;
        }

        if (a1)
        {
          v23 = 0xE800000000000000;
        }

        else
        {
          v23 = 0xE900000000000044;
        }

        v24 = sub_10000668C(v22, v23, &v148);
        v23, v25, v26, v27, v28, v29, v30, v31;
        *(v21 + 4) = v24;
        *(v21 + 12) = 2080;
        sub_1000060C8(0, a6, a5);
        v32 = [swift_getObjCClassFromMetadata() description];
        v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v35 = v34;

        v36 = sub_10000668C(v33, v35, &v148);
        v35, v37, v38, v39, v40, v41, v42, v43;
        *(v21 + 14) = v36;
        *(v21 + 22) = 2080;
        v44 = [v147 description];
        v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v47 = v46;

        v48 = sub_10000668C(v45, v47, &v148);
        v47, v49, v50, v51, v52, v53, v54, v55;
        *(v21 + 24) = v48;
        v20 = &selRef_accountStatusWithCompletionHandler_;
        _os_log_impl(&_mh_execute_header, v18, v19, "Mismatching class for relationship {key: %s, expectedType: %s, found: %s}", v21, 0x20u);
        swift_arrayDestroy();
      }

      v56 = objc_opt_self();
      v148 = 0;
      v149 = 0xE000000000000000;
      _StringGuts.grow(_:)(73);
      v57._countAndFlagsBits = 0xD000000000000029;
      v57._object = 0x80000001007FE3C0;
      String.append(_:)(v57);
      v150 = a1 & 1;
      _print_unlocked<A, B>(_:_:)();
      v58._object = 0x80000001007FE3F0;
      v58._countAndFlagsBits = 0xD000000000000010;
      String.append(_:)(v58);
      sub_1000060C8(0, a6, a5);
      v59 = v20;
      v60 = [swift_getObjCClassFromMetadata() v20[332]];
      v61 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v63 = v62;

      v64._countAndFlagsBits = v61;
      v64._object = v63;
      String.append(_:)(v64);
      v63, v65, v66, v67, v68, v69, v70, v71;
      v72._object = 0xE900000000000020;
      v72._countAndFlagsBits = 0x3A646E756F66202CLL;
      String.append(_:)(v72);
      v73 = [v147 v59[332]];
      v74 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v76 = v75;

      v77._countAndFlagsBits = v74;
      v77._object = v76;
      String.append(_:)(v77);
      v76, v78, v79, v80, v81, v82, v83, v84;
      v85._countAndFlagsBits = 125;
      v85._object = 0xE100000000000000;
      String.append(_:)(v85);
      v86 = v149;
      v87 = String._bridgeToObjectiveC()();
      v86, v88, v89, v90, v91, v92, v93, v94;
      [v56 internalErrorWithDebugDescription:v87];

      swift_willThrow();
    }
  }

  else
  {
    if (qword_100936128 != -1)
    {
      swift_once();
    }

    v95 = type metadata accessor for Logger();
    sub_100006654(v95, qword_100946C50);
    v96 = a2;
    v97 = Logger.logObject.getter();
    v98 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v97, v98))
    {
      v99 = swift_slowAlloc();
      v148 = swift_slowAlloc();
      *v99 = 136315394;
      if (a1)
      {
        v100 = 0x4449746E65726170;
      }

      else
      {
        v100 = 0x49746E756F636361;
      }

      if (a1)
      {
        v101 = 0xE800000000000000;
      }

      else
      {
        v101 = 0xE900000000000044;
      }

      v102 = sub_10000668C(v100, v101, &v148);
      v101, v103, v104, v105, v106, v107, v108, v109;
      *(v99 + 4) = v102;
      *(v99 + 12) = 2080;
      v110 = [v96 description];
      v111 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v113 = v112;

      v114 = sub_10000668C(v111, v113, &v148);
      v113, v115, v116, v117, v118, v119, v120, v121;
      *(v99 + 14) = v114;
      _os_log_impl(&_mh_execute_header, v97, v98, "Missing relationship {key: %s, objectID: %s}", v99, 0x16u);
      swift_arrayDestroy();
    }

    v122 = objc_opt_self();
    v148 = 0;
    v149 = 0xE000000000000000;
    _StringGuts.grow(_:)(44);
    v123._countAndFlagsBits = 0xD00000000000001BLL;
    v123._object = 0x80000001007FE3A0;
    String.append(_:)(v123);
    v150 = a1 & 1;
    _print_unlocked<A, B>(_:_:)();
    v124._countAndFlagsBits = 0x7463656A626F202CLL;
    v124._object = 0xEC000000203A4449;
    String.append(_:)(v124);
    v125 = [v96 description];
    v126 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v128 = v127;

    v129._countAndFlagsBits = v126;
    v129._object = v128;
    String.append(_:)(v129);
    v128, v130, v131, v132, v133, v134, v135, v136;
    v137._countAndFlagsBits = 125;
    v137._object = 0xE100000000000000;
    String.append(_:)(v137);
    v138 = v149;
    v139 = String._bridgeToObjectiveC()();
    v138, v140, v141, v142, v143, v144, v145, v146;
    [v122 internalErrorWithDebugDescription:v139];

    swift_willThrow();
  }
}

void sub_10068932C(char a1, void *a2, uint64_t a3, uint64_t a4, void *a5, unint64_t *a6)
{
  if (*(a3 + 16) && (v11 = sub_10002B924(a2), (v12 & 1) != 0))
  {
    v13 = *(*(a3 + 56) + 16 * v11);
    objc_opt_self();
    if (!swift_dynamicCastObjCClass())
    {
      v14 = qword_100936128;
      v15 = v13;
      if (v14 != -1)
      {
        swift_once();
      }

      v16 = type metadata accessor for Logger();
      sub_100006654(v16, qword_100946C50);
      v17 = v15;
      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.fault.getter();
      v147 = v17;

      v20 = &selRef_accountStatusWithCompletionHandler_;
      if (os_log_type_enabled(v18, v19))
      {
        v21 = swift_slowAlloc();
        v148 = swift_slowAlloc();
        *v21 = 136315650;
        if (a1)
        {
          v22 = 0x44497473696CLL;
        }

        else
        {
          v22 = 0x49746E756F636361;
        }

        if (a1)
        {
          v23 = 0xE600000000000000;
        }

        else
        {
          v23 = 0xE900000000000044;
        }

        v24 = sub_10000668C(v22, v23, &v148);
        v23, v25, v26, v27, v28, v29, v30, v31;
        *(v21 + 4) = v24;
        *(v21 + 12) = 2080;
        sub_1000060C8(0, a6, a5);
        v32 = [swift_getObjCClassFromMetadata() description];
        v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v35 = v34;

        v36 = sub_10000668C(v33, v35, &v148);
        v35, v37, v38, v39, v40, v41, v42, v43;
        *(v21 + 14) = v36;
        *(v21 + 22) = 2080;
        v44 = [v147 description];
        v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v47 = v46;

        v48 = sub_10000668C(v45, v47, &v148);
        v47, v49, v50, v51, v52, v53, v54, v55;
        *(v21 + 24) = v48;
        v20 = &selRef_accountStatusWithCompletionHandler_;
        _os_log_impl(&_mh_execute_header, v18, v19, "Mismatching class for relationship {key: %s, expectedType: %s, found: %s}", v21, 0x20u);
        swift_arrayDestroy();
      }

      v56 = objc_opt_self();
      v148 = 0;
      v149 = 0xE000000000000000;
      _StringGuts.grow(_:)(73);
      v57._countAndFlagsBits = 0xD000000000000029;
      v57._object = 0x80000001007FE3C0;
      String.append(_:)(v57);
      v150 = a1 & 1;
      _print_unlocked<A, B>(_:_:)();
      v58._object = 0x80000001007FE3F0;
      v58._countAndFlagsBits = 0xD000000000000010;
      String.append(_:)(v58);
      sub_1000060C8(0, a6, a5);
      v59 = v20;
      v60 = [swift_getObjCClassFromMetadata() v20[332]];
      v61 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v63 = v62;

      v64._countAndFlagsBits = v61;
      v64._object = v63;
      String.append(_:)(v64);
      v63, v65, v66, v67, v68, v69, v70, v71;
      v72._object = 0xE900000000000020;
      v72._countAndFlagsBits = 0x3A646E756F66202CLL;
      String.append(_:)(v72);
      v73 = [v147 v59[332]];
      v74 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v76 = v75;

      v77._countAndFlagsBits = v74;
      v77._object = v76;
      String.append(_:)(v77);
      v76, v78, v79, v80, v81, v82, v83, v84;
      v85._countAndFlagsBits = 125;
      v85._object = 0xE100000000000000;
      String.append(_:)(v85);
      v86 = v149;
      v87 = String._bridgeToObjectiveC()();
      v86, v88, v89, v90, v91, v92, v93, v94;
      [v56 internalErrorWithDebugDescription:v87];

      swift_willThrow();
    }
  }

  else
  {
    if (qword_100936128 != -1)
    {
      swift_once();
    }

    v95 = type metadata accessor for Logger();
    sub_100006654(v95, qword_100946C50);
    v96 = a2;
    v97 = Logger.logObject.getter();
    v98 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v97, v98))
    {
      v99 = swift_slowAlloc();
      v148 = swift_slowAlloc();
      *v99 = 136315394;
      if (a1)
      {
        v100 = 0x44497473696CLL;
      }

      else
      {
        v100 = 0x49746E756F636361;
      }

      if (a1)
      {
        v101 = 0xE600000000000000;
      }

      else
      {
        v101 = 0xE900000000000044;
      }

      v102 = sub_10000668C(v100, v101, &v148);
      v101, v103, v104, v105, v106, v107, v108, v109;
      *(v99 + 4) = v102;
      *(v99 + 12) = 2080;
      v110 = [v96 description];
      v111 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v113 = v112;

      v114 = sub_10000668C(v111, v113, &v148);
      v113, v115, v116, v117, v118, v119, v120, v121;
      *(v99 + 14) = v114;
      _os_log_impl(&_mh_execute_header, v97, v98, "Missing relationship {key: %s, objectID: %s}", v99, 0x16u);
      swift_arrayDestroy();
    }

    v122 = objc_opt_self();
    v148 = 0;
    v149 = 0xE000000000000000;
    _StringGuts.grow(_:)(44);
    v123._countAndFlagsBits = 0xD00000000000001BLL;
    v123._object = 0x80000001007FE3A0;
    String.append(_:)(v123);
    v150 = a1 & 1;
    _print_unlocked<A, B>(_:_:)();
    v124._countAndFlagsBits = 0x7463656A626F202CLL;
    v124._object = 0xEC000000203A4449;
    String.append(_:)(v124);
    v125 = [v96 description];
    v126 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v128 = v127;

    v129._countAndFlagsBits = v126;
    v129._object = v128;
    String.append(_:)(v129);
    v128, v130, v131, v132, v133, v134, v135, v136;
    v137._countAndFlagsBits = 125;
    v137._object = 0xE100000000000000;
    String.append(_:)(v137);
    v138 = v149;
    v139 = String._bridgeToObjectiveC()();
    v138, v140, v141, v142, v143, v144, v145, v146;
    [v122 internalErrorWithDebugDescription:v139];

    swift_willThrow();
  }
}

void sub_100689A98(unsigned __int8 a1, void *a2, uint64_t a3, void *a4, unint64_t *a5)
{
  if (*(a3 + 16) && (v10 = sub_10002B924(a2), (v11 & 1) != 0))
  {
    v12 = *(*(a3 + 56) + 16 * v10);
    objc_opt_self();
    if (!swift_dynamicCastObjCClass())
    {
      v13 = qword_100936128;
      v14 = v12;
      if (v13 != -1)
      {
        swift_once();
      }

      v15 = type metadata accessor for Logger();
      sub_100006654(v15, qword_100946C50);
      v16 = v14;
      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.fault.getter();

      v19 = &selRef_accountStatusWithCompletionHandler_;
      if (os_log_type_enabled(v17, v18))
      {
        v164 = v18;
        v161 = v16;
        v20 = swift_slowAlloc();
        v162 = swift_slowAlloc();
        *v20 = 136315650;
        v21 = 0x80000001007E9FB0;
        v22 = 0xD000000000000015;
        if (a1 != 5)
        {
          v22 = 0xD000000000000014;
          v21 = 0x80000001007E9FD0;
        }

        v23 = 0x6341746E65726170;
        v24 = 0xEF4449746E756F63;
        if (a1 != 3)
        {
          v23 = 0x694C746E65726170;
          v24 = 0xEC00000044497473;
        }

        if (a1 <= 4u)
        {
          v22 = v23;
          v21 = v24;
        }

        v25 = 0x80000001007E9F50;
        v26 = 0xD000000000000016;
        if (a1 != 1)
        {
          v26 = 0xD00000000000001BLL;
          v25 = 0x80000001007E9F70;
        }

        if (a1)
        {
          v27 = v26;
        }

        else
        {
          v27 = 0x49746E756F636361;
        }

        if (!a1)
        {
          v25 = 0xE900000000000044;
        }

        if (a1 <= 2u)
        {
          v28 = v27;
        }

        else
        {
          v28 = v22;
        }

        if (a1 <= 2u)
        {
          v29 = v25;
        }

        else
        {
          v29 = v21;
        }

        v30 = sub_10000668C(v28, v29, &v162);
        v29, v31, v32, v33, v34, v35, v36, v37;
        *(v20 + 4) = v30;
        *(v20 + 12) = 2080;
        sub_1000060C8(0, a5, a4);
        v38 = [swift_getObjCClassFromMetadata() description];
        v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v41 = v40;

        v42 = sub_10000668C(v39, v41, &v162);
        v41, v43, v44, v45, v46, v47, v48, v49;
        *(v20 + 14) = v42;
        *(v20 + 22) = 2080;
        v16 = v161;
        v50 = [v161 description];
        v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v53 = v52;

        v54 = v51;
        v19 = &selRef_accountStatusWithCompletionHandler_;
        v55 = sub_10000668C(v54, v53, &v162);
        v53, v56, v57, v58, v59, v60, v61, v62;
        *(v20 + 24) = v55;
        _os_log_impl(&_mh_execute_header, v17, v164, "Mismatching class for relationship {key: %s, expectedType: %s, found: %s}", v20, 0x20u);
        swift_arrayDestroy();
      }

      else
      {
      }

      v123 = objc_opt_self();
      v162 = 0;
      v163 = 0xE000000000000000;
      _StringGuts.grow(_:)(73);
      v124._countAndFlagsBits = 0xD000000000000029;
      v124._object = 0x80000001007FE3C0;
      String.append(_:)(v124);
      v165 = a1;
      _print_unlocked<A, B>(_:_:)();
      v125._countAndFlagsBits = 0xD000000000000010;
      v125._object = 0x80000001007FE3F0;
      String.append(_:)(v125);
      sub_1000060C8(0, a5, a4);
      v126 = [swift_getObjCClassFromMetadata() v19[332]];
      v127 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v129 = v128;

      v130._countAndFlagsBits = v127;
      v130._object = v129;
      String.append(_:)(v130);
      v129, v131, v132, v133, v134, v135, v136, v137;
      v138._object = 0xE900000000000020;
      v138._countAndFlagsBits = 0x3A646E756F66202CLL;
      String.append(_:)(v138);
      v139 = [v16 v19[332]];
      v140 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v142 = v141;

      v143._countAndFlagsBits = v140;
      v143._object = v142;
      String.append(_:)(v143);
      v142, v144, v145, v146, v147, v148, v149, v150;
      v151._countAndFlagsBits = 125;
      v151._object = 0xE100000000000000;
      String.append(_:)(v151);
      v152 = v163;
      v153 = String._bridgeToObjectiveC()();
      v152, v154, v155, v156, v157, v158, v159, v160;
      [v123 internalErrorWithDebugDescription:v153];

      swift_willThrow();
    }
  }

  else
  {
    if (qword_100936128 != -1)
    {
      swift_once();
    }

    v63 = type metadata accessor for Logger();
    sub_100006654(v63, qword_100946C50);
    v64 = a2;
    v65 = Logger.logObject.getter();
    v66 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      v162 = swift_slowAlloc();
      v68 = 0xE900000000000044;
      *v67 = 136315394;
      v69 = 0x80000001007E9FB0;
      v70 = 0xD000000000000015;
      if (a1 != 5)
      {
        v70 = 0xD000000000000014;
        v69 = 0x80000001007E9FD0;
      }

      v71 = 0x6341746E65726170;
      v72 = 0xEF4449746E756F63;
      if (a1 != 3)
      {
        v71 = 0x694C746E65726170;
        v72 = 0xEC00000044497473;
      }

      if (a1 <= 4u)
      {
        v70 = v71;
        v69 = v72;
      }

      v73 = 0x80000001007E9F50;
      v74 = 0xD000000000000016;
      if (a1 != 1)
      {
        v74 = 0xD00000000000001BLL;
        v73 = 0x80000001007E9F70;
      }

      if (a1)
      {
        v75 = v74;
      }

      else
      {
        v75 = 0x49746E756F636361;
      }

      if (a1)
      {
        v68 = v73;
      }

      if (a1 <= 2u)
      {
        v76 = v75;
      }

      else
      {
        v76 = v70;
      }

      if (a1 <= 2u)
      {
        v77 = v68;
      }

      else
      {
        v77 = v69;
      }

      v78 = sub_10000668C(v76, v77, &v162);
      v77, v79, v80, v81, v82, v83, v84, v85;
      *(v67 + 4) = v78;
      *(v67 + 12) = 2080;
      v86 = [v64 description];
      v87 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v89 = v88;

      v90 = sub_10000668C(v87, v89, &v162);
      v89, v91, v92, v93, v94, v95, v96, v97;
      *(v67 + 14) = v90;
      _os_log_impl(&_mh_execute_header, v65, v66, "Missing relationship {key: %s, objectID: %s}", v67, 0x16u);
      swift_arrayDestroy();
    }

    v98 = objc_opt_self();
    v162 = 0;
    v163 = 0xE000000000000000;
    _StringGuts.grow(_:)(44);
    v99._object = 0x80000001007FE3A0;
    v99._countAndFlagsBits = 0xD00000000000001BLL;
    String.append(_:)(v99);
    v165 = a1;
    _print_unlocked<A, B>(_:_:)();
    v100._countAndFlagsBits = 0x7463656A626F202CLL;
    v100._object = 0xEC000000203A4449;
    String.append(_:)(v100);
    v101 = [v64 description];
    v102 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v104 = v103;

    v105._countAndFlagsBits = v102;
    v105._object = v104;
    String.append(_:)(v105);
    v104, v106, v107, v108, v109, v110, v111, v112;
    v113._countAndFlagsBits = 125;
    v113._object = 0xE100000000000000;
    String.append(_:)(v113);
    v114 = v163;
    v115 = String._bridgeToObjectiveC()();
    v114, v116, v117, v118, v119, v120, v121, v122;
    [v98 internalErrorWithDebugDescription:v115];

    swift_willThrow();
  }
}

void sub_10068A364(unsigned __int8 a1, void *a2, uint64_t a3)
{
  if (*(a3 + 16) && (v6 = sub_10002B924(a2), (v7 & 1) != 0))
  {
    v8 = *(*(a3 + 56) + 16 * v6);
    type metadata accessor for REMCDListSection();
    if (!swift_dynamicCastClass())
    {
      v9 = qword_100936128;
      v10 = v8;
      if (v9 != -1)
      {
        swift_once();
      }

      v11 = type metadata accessor for Logger();
      sub_100006654(v11, qword_100946C50);
      v12 = v10;
      v13 = Logger.logObject.getter();
      v14 = static os_log_type_t.fault.getter();

      v15 = &selRef_accountStatusWithCompletionHandler_;
      if (os_log_type_enabled(v13, v14))
      {
        v16 = swift_slowAlloc();
        v157 = swift_slowAlloc();
        *v16 = 136315650;
        v17 = 0x80000001007E9FB0;
        v18 = 0xD000000000000015;
        if (a1 != 5)
        {
          v18 = 0xD000000000000014;
          v17 = 0x80000001007E9FD0;
        }

        v19 = 0x6341746E65726170;
        v20 = 0xEF4449746E756F63;
        if (a1 != 3)
        {
          v19 = 0x694C746E65726170;
          v20 = 0xEC00000044497473;
        }

        if (a1 <= 4u)
        {
          v18 = v19;
          v17 = v20;
        }

        v21 = 0x80000001007E9F50;
        v22 = 0xD000000000000016;
        if (a1 != 1)
        {
          v22 = 0xD00000000000001BLL;
          v21 = 0x80000001007E9F70;
        }

        if (a1)
        {
          v23 = v22;
        }

        else
        {
          v23 = 0x49746E756F636361;
        }

        if (!a1)
        {
          v21 = 0xE900000000000044;
        }

        if (a1 <= 2u)
        {
          v24 = v23;
        }

        else
        {
          v24 = v18;
        }

        if (a1 <= 2u)
        {
          v25 = v21;
        }

        else
        {
          v25 = v17;
        }

        v26 = sub_10000668C(v24, v25, &v157);
        v25, v27, v28, v29, v30, v31, v32, v33;
        *(v16 + 4) = v26;
        *(v16 + 12) = 2080;
        v34 = [swift_getObjCClassFromMetadata() description];
        v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v37 = v36;

        v38 = sub_10000668C(v35, v37, &v157);
        v37, v39, v40, v41, v42, v43, v44, v45;
        *(v16 + 14) = v38;
        *(v16 + 22) = 2080;
        v46 = [v12 description];
        v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v49 = v48;

        v50 = sub_10000668C(v47, v49, &v157);
        v51 = v49;
        v15 = &selRef_accountStatusWithCompletionHandler_;
        v51, v52, v53, v54, v55, v56, v57, v58;
        *(v16 + 24) = v50;
        _os_log_impl(&_mh_execute_header, v13, v14, "Mismatching class for relationship {key: %s, expectedType: %s, found: %s}", v16, 0x20u);
        swift_arrayDestroy();
      }

      else
      {
      }

      v119 = objc_opt_self();
      v157 = 0;
      v158 = 0xE000000000000000;
      _StringGuts.grow(_:)(73);
      v120._countAndFlagsBits = 0xD000000000000029;
      v120._object = 0x80000001007FE3C0;
      String.append(_:)(v120);
      v159 = a1;
      _print_unlocked<A, B>(_:_:)();
      v121._countAndFlagsBits = 0xD000000000000010;
      v121._object = 0x80000001007FE3F0;
      String.append(_:)(v121);
      v122 = [swift_getObjCClassFromMetadata() v15[332]];
      v123 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v125 = v124;

      v126._countAndFlagsBits = v123;
      v126._object = v125;
      String.append(_:)(v126);
      v125, v127, v128, v129, v130, v131, v132, v133;
      v134._object = 0xE900000000000020;
      v134._countAndFlagsBits = 0x3A646E756F66202CLL;
      String.append(_:)(v134);
      v135 = [v12 v15[332]];
      v136 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v138 = v137;

      v139._countAndFlagsBits = v136;
      v139._object = v138;
      String.append(_:)(v139);
      v138, v140, v141, v142, v143, v144, v145, v146;
      v147._countAndFlagsBits = 125;
      v147._object = 0xE100000000000000;
      String.append(_:)(v147);
      v148 = v158;
      v149 = String._bridgeToObjectiveC()();
      v148, v150, v151, v152, v153, v154, v155, v156;
      [v119 internalErrorWithDebugDescription:v149];

      swift_willThrow();
    }
  }

  else
  {
    if (qword_100936128 != -1)
    {
      swift_once();
    }

    v59 = type metadata accessor for Logger();
    sub_100006654(v59, qword_100946C50);
    v60 = a2;
    v61 = Logger.logObject.getter();
    v62 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      v157 = swift_slowAlloc();
      v64 = 0xE900000000000044;
      *v63 = 136315394;
      v65 = 0x80000001007E9FB0;
      v66 = 0xD000000000000015;
      if (a1 != 5)
      {
        v66 = 0xD000000000000014;
        v65 = 0x80000001007E9FD0;
      }

      v67 = 0x6341746E65726170;
      v68 = 0xEF4449746E756F63;
      if (a1 != 3)
      {
        v67 = 0x694C746E65726170;
        v68 = 0xEC00000044497473;
      }

      if (a1 <= 4u)
      {
        v66 = v67;
        v65 = v68;
      }

      v69 = 0x80000001007E9F50;
      v70 = 0xD000000000000016;
      if (a1 != 1)
      {
        v70 = 0xD00000000000001BLL;
        v69 = 0x80000001007E9F70;
      }

      if (a1)
      {
        v71 = v70;
      }

      else
      {
        v71 = 0x49746E756F636361;
      }

      if (a1)
      {
        v64 = v69;
      }

      if (a1 <= 2u)
      {
        v72 = v71;
      }

      else
      {
        v72 = v66;
      }

      if (a1 <= 2u)
      {
        v73 = v64;
      }

      else
      {
        v73 = v65;
      }

      v74 = sub_10000668C(v72, v73, &v157);
      v73, v75, v76, v77, v78, v79, v80, v81;
      *(v63 + 4) = v74;
      *(v63 + 12) = 2080;
      v82 = [v60 description];
      v83 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v85 = v84;

      v86 = sub_10000668C(v83, v85, &v157);
      v85, v87, v88, v89, v90, v91, v92, v93;
      *(v63 + 14) = v86;
      _os_log_impl(&_mh_execute_header, v61, v62, "Missing relationship {key: %s, objectID: %s}", v63, 0x16u);
      swift_arrayDestroy();
    }

    v94 = objc_opt_self();
    v157 = 0;
    v158 = 0xE000000000000000;
    _StringGuts.grow(_:)(44);
    v95._object = 0x80000001007FE3A0;
    v95._countAndFlagsBits = 0xD00000000000001BLL;
    String.append(_:)(v95);
    v159 = a1;
    _print_unlocked<A, B>(_:_:)();
    v96._countAndFlagsBits = 0x7463656A626F202CLL;
    v96._object = 0xEC000000203A4449;
    String.append(_:)(v96);
    v97 = [v60 description];
    v98 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v100 = v99;

    v101._countAndFlagsBits = v98;
    v101._object = v100;
    String.append(_:)(v101);
    v100, v102, v103, v104, v105, v106, v107, v108;
    v109._countAndFlagsBits = 125;
    v109._object = 0xE100000000000000;
    String.append(_:)(v109);
    v110 = v158;
    v111 = String._bridgeToObjectiveC()();
    v110, v112, v113, v114, v115, v116, v117, v118;
    [v94 internalErrorWithDebugDescription:v111];

    swift_willThrow();
  }
}

void sub_10068AC14(void *a1, uint64_t a2, uint64_t a3)
{
  if (*(a2 + 16) && (v5 = sub_10002B924(a1), (v6 & 1) != 0))
  {
    v7 = *(*(a2 + 56) + 16 * v5);
    objc_opt_self();
    if (!swift_dynamicCastObjCClass())
    {
      v8 = qword_100936128;
      v9 = v7;
      if (v8 != -1)
      {
        swift_once();
      }

      v10 = type metadata accessor for Logger();
      sub_100006654(v10, qword_100946C50);
      v11 = v9;
      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        v119 = swift_slowAlloc();
        *v14 = 136315650;
        *(v14 + 4) = sub_10000668C(0x49746E756F636361, 0xE900000000000044, &v119);
        *(v14 + 12) = 2080;
        sub_1000060C8(0, &qword_1009399F0, off_1008D4120);
        v15 = [swift_getObjCClassFromMetadata() description];
        v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v18 = v17;

        v19 = sub_10000668C(v16, v18, &v119);
        v18, v20, v21, v22, v23, v24, v25, v26;
        *(v14 + 14) = v19;
        *(v14 + 22) = 2080;
        v27 = [v11 description];
        v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v30 = v29;

        v31 = sub_10000668C(v28, v30, &v119);
        v30, v32, v33, v34, v35, v36, v37, v38;
        *(v14 + 24) = v31;
        _os_log_impl(&_mh_execute_header, v12, v13, "Mismatching class for relationship {key: %s, expectedType: %s, found: %s}", v14, 0x20u);
        swift_arrayDestroy();
      }

      v39 = objc_opt_self();
      v119 = 0;
      v120 = 0xE000000000000000;
      _StringGuts.grow(_:)(73);
      v40._countAndFlagsBits = 0xD000000000000029;
      v40._object = 0x80000001007FE3C0;
      String.append(_:)(v40);
      _print_unlocked<A, B>(_:_:)();
      v41._object = 0x80000001007FE3F0;
      v41._countAndFlagsBits = 0xD000000000000010;
      String.append(_:)(v41);
      sub_1000060C8(0, &qword_1009399F0, off_1008D4120);
      v42 = [swift_getObjCClassFromMetadata() description];
      v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v45 = v44;

      v46._countAndFlagsBits = v43;
      v46._object = v45;
      String.append(_:)(v46);
      v45, v47, v48, v49, v50, v51, v52, v53;
      v54._object = 0xE900000000000020;
      v54._countAndFlagsBits = 0x3A646E756F66202CLL;
      String.append(_:)(v54);
      v55 = [v11 description];
      v56 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v58 = v57;

      v59._countAndFlagsBits = v56;
      v59._object = v58;
      String.append(_:)(v59);
      v58, v60, v61, v62, v63, v64, v65, v66;
      v67._countAndFlagsBits = 125;
      v67._object = 0xE100000000000000;
      String.append(_:)(v67);
      v68 = v120;
      v69 = String._bridgeToObjectiveC()();
      v68, v70, v71, v72, v73, v74, v75, v76;
      [v39 internalErrorWithDebugDescription:v69];

      swift_willThrow();
    }
  }

  else
  {
    if (qword_100936128 != -1)
    {
      swift_once();
    }

    v77 = type metadata accessor for Logger();
    sub_100006654(v77, qword_100946C50);
    v78 = a1;
    v79 = Logger.logObject.getter();
    v80 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v79, v80))
    {
      v81 = swift_slowAlloc();
      v119 = swift_slowAlloc();
      *v81 = 136315394;
      *(v81 + 4) = sub_10000668C(0x49746E756F636361, 0xE900000000000044, &v119);
      *(v81 + 12) = 2080;
      v82 = [v78 description];
      v83 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v85 = v84;

      v86 = sub_10000668C(v83, v85, &v119);
      v85, v87, v88, v89, v90, v91, v92, v93;
      *(v81 + 14) = v86;
      _os_log_impl(&_mh_execute_header, v79, v80, "Missing relationship {key: %s, objectID: %s}", v81, 0x16u);
      swift_arrayDestroy();
    }

    v94 = objc_opt_self();
    v119 = 0;
    v120 = 0xE000000000000000;
    _StringGuts.grow(_:)(44);
    v95._countAndFlagsBits = 0xD00000000000001BLL;
    v95._object = 0x80000001007FE3A0;
    String.append(_:)(v95);
    _print_unlocked<A, B>(_:_:)();
    v96._countAndFlagsBits = 0x7463656A626F202CLL;
    v96._object = 0xEC000000203A4449;
    String.append(_:)(v96);
    v97 = [v78 description];
    v98 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v100 = v99;

    v101._countAndFlagsBits = v98;
    v101._object = v100;
    String.append(_:)(v101);
    v100, v102, v103, v104, v105, v106, v107, v108;
    v109._countAndFlagsBits = 125;
    v109._object = 0xE100000000000000;
    String.append(_:)(v109);
    v110 = v120;
    v111 = String._bridgeToObjectiveC()();
    v110, v112, v113, v114, v115, v116, v117, v118;
    [v94 internalErrorWithDebugDescription:v111];

    swift_willThrow();
  }
}

void sub_10068B324(char a1, void *a2, uint64_t a3)
{
  if (*(a3 + 16) && (v6 = sub_10002B924(a2), (v7 & 1) != 0))
  {
    v8 = *(*(a3 + 56) + 16 * v6);
    type metadata accessor for REMCDTemplate();
    if (!swift_dynamicCastClass())
    {
      v9 = qword_100936128;
      v10 = v8;
      if (v9 != -1)
      {
        swift_once();
      }

      v11 = type metadata accessor for Logger();
      sub_100006654(v11, qword_100946C50);
      v12 = v10;
      v13 = Logger.logObject.getter();
      v14 = static os_log_type_t.fault.getter();

      v15 = &selRef_accountStatusWithCompletionHandler_;
      if (os_log_type_enabled(v13, v14))
      {
        v16 = swift_slowAlloc();
        v142 = swift_slowAlloc();
        *v16 = 136315650;
        if (a1)
        {
          v17 = 0x44497473696CLL;
        }

        else
        {
          v17 = 0x49746E756F636361;
        }

        if (a1)
        {
          v18 = 0xE600000000000000;
        }

        else
        {
          v18 = 0xE900000000000044;
        }

        v19 = sub_10000668C(v17, v18, &v142);
        v18, v20, v21, v22, v23, v24, v25, v26;
        *(v16 + 4) = v19;
        *(v16 + 12) = 2080;
        v27 = [swift_getObjCClassFromMetadata() description];
        v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v30 = v29;

        v31 = sub_10000668C(v28, v30, &v142);
        v30, v32, v33, v34, v35, v36, v37, v38;
        *(v16 + 14) = v31;
        *(v16 + 22) = 2080;
        v39 = [v12 description];
        v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v42 = v41;

        v43 = sub_10000668C(v40, v42, &v142);
        v44 = v42;
        v15 = &selRef_accountStatusWithCompletionHandler_;
        v44, v45, v46, v47, v48, v49, v50, v51;
        *(v16 + 24) = v43;
        _os_log_impl(&_mh_execute_header, v13, v14, "Mismatching class for relationship {key: %s, expectedType: %s, found: %s}", v16, 0x20u);
        swift_arrayDestroy();
      }

      v52 = objc_opt_self();
      v142 = 0;
      v143 = 0xE000000000000000;
      _StringGuts.grow(_:)(73);
      v53._countAndFlagsBits = 0xD000000000000029;
      v53._object = 0x80000001007FE3C0;
      String.append(_:)(v53);
      v144 = a1 & 1;
      _print_unlocked<A, B>(_:_:)();
      v54._object = 0x80000001007FE3F0;
      v54._countAndFlagsBits = 0xD000000000000010;
      String.append(_:)(v54);
      v55 = [swift_getObjCClassFromMetadata() v15[332]];
      v56 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v58 = v57;

      v59._countAndFlagsBits = v56;
      v59._object = v58;
      String.append(_:)(v59);
      v58, v60, v61, v62, v63, v64, v65, v66;
      v67._object = 0xE900000000000020;
      v67._countAndFlagsBits = 0x3A646E756F66202CLL;
      String.append(_:)(v67);
      v68 = [v12 v15[332]];
      v69 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v71 = v70;

      v72._countAndFlagsBits = v69;
      v72._object = v71;
      String.append(_:)(v72);
      v71, v73, v74, v75, v76, v77, v78, v79;
      v80._countAndFlagsBits = 125;
      v80._object = 0xE100000000000000;
      String.append(_:)(v80);
      v81 = v143;
      v82 = String._bridgeToObjectiveC()();
      v81, v83, v84, v85, v86, v87, v88, v89;
      [v52 internalErrorWithDebugDescription:v82];

      swift_willThrow();
    }
  }

  else
  {
    if (qword_100936128 != -1)
    {
      swift_once();
    }

    v90 = type metadata accessor for Logger();
    sub_100006654(v90, qword_100946C50);
    v91 = a2;
    v92 = Logger.logObject.getter();
    v93 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v92, v93))
    {
      v94 = swift_slowAlloc();
      v142 = swift_slowAlloc();
      *v94 = 136315394;
      if (a1)
      {
        v95 = 0x44497473696CLL;
      }

      else
      {
        v95 = 0x49746E756F636361;
      }

      if (a1)
      {
        v96 = 0xE600000000000000;
      }

      else
      {
        v96 = 0xE900000000000044;
      }

      v97 = sub_10000668C(v95, v96, &v142);
      v96, v98, v99, v100, v101, v102, v103, v104;
      *(v94 + 4) = v97;
      *(v94 + 12) = 2080;
      v105 = [v91 description];
      v106 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v108 = v107;

      v109 = sub_10000668C(v106, v108, &v142);
      v108, v110, v111, v112, v113, v114, v115, v116;
      *(v94 + 14) = v109;
      _os_log_impl(&_mh_execute_header, v92, v93, "Missing relationship {key: %s, objectID: %s}", v94, 0x16u);
      swift_arrayDestroy();
    }

    v117 = objc_opt_self();
    v142 = 0;
    v143 = 0xE000000000000000;
    _StringGuts.grow(_:)(44);
    v118._countAndFlagsBits = 0xD00000000000001BLL;
    v118._object = 0x80000001007FE3A0;
    String.append(_:)(v118);
    v144 = a1 & 1;
    _print_unlocked<A, B>(_:_:)();
    v119._countAndFlagsBits = 0x7463656A626F202CLL;
    v119._object = 0xEC000000203A4449;
    String.append(_:)(v119);
    v120 = [v91 description];
    v121 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v123 = v122;

    v124._countAndFlagsBits = v121;
    v124._object = v123;
    String.append(_:)(v124);
    v123, v125, v126, v127, v128, v129, v130, v131;
    v132._countAndFlagsBits = 125;
    v132._object = 0xE100000000000000;
    String.append(_:)(v132);
    v133 = v143;
    v134 = String._bridgeToObjectiveC()();
    v133, v135, v136, v137, v138, v139, v140, v141;
    [v117 internalErrorWithDebugDescription:v134];

    swift_willThrow();
  }
}

void sub_10068BA8C(char a1, void *a2, uint64_t a3)
{
  if (*(a3 + 16) && (v6 = sub_10002B924(a2), (v7 & 1) != 0))
  {
    v8 = *(*(a3 + 56) + 16 * v6);
    type metadata accessor for REMCDTemplate();
    if (!swift_dynamicCastClass())
    {
      v9 = qword_100936128;
      v10 = v8;
      if (v9 != -1)
      {
        swift_once();
      }

      v11 = type metadata accessor for Logger();
      sub_100006654(v11, qword_100946C50);
      v12 = v10;
      v13 = Logger.logObject.getter();
      v14 = static os_log_type_t.fault.getter();

      v15 = &selRef_accountStatusWithCompletionHandler_;
      if (os_log_type_enabled(v13, v14))
      {
        v16 = swift_slowAlloc();
        v142 = swift_slowAlloc();
        *v16 = 136315650;
        if (a1)
        {
          v17 = 0x4449746E65726170;
        }

        else
        {
          v17 = 0x49746E756F636361;
        }

        if (a1)
        {
          v18 = 0xE800000000000000;
        }

        else
        {
          v18 = 0xE900000000000044;
        }

        v19 = sub_10000668C(v17, v18, &v142);
        v18, v20, v21, v22, v23, v24, v25, v26;
        *(v16 + 4) = v19;
        *(v16 + 12) = 2080;
        v27 = [swift_getObjCClassFromMetadata() description];
        v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v30 = v29;

        v31 = sub_10000668C(v28, v30, &v142);
        v30, v32, v33, v34, v35, v36, v37, v38;
        *(v16 + 14) = v31;
        *(v16 + 22) = 2080;
        v39 = [v12 description];
        v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v42 = v41;

        v43 = sub_10000668C(v40, v42, &v142);
        v44 = v42;
        v15 = &selRef_accountStatusWithCompletionHandler_;
        v44, v45, v46, v47, v48, v49, v50, v51;
        *(v16 + 24) = v43;
        _os_log_impl(&_mh_execute_header, v13, v14, "Mismatching class for relationship {key: %s, expectedType: %s, found: %s}", v16, 0x20u);
        swift_arrayDestroy();
      }

      v52 = objc_opt_self();
      v142 = 0;
      v143 = 0xE000000000000000;
      _StringGuts.grow(_:)(73);
      v53._countAndFlagsBits = 0xD000000000000029;
      v53._object = 0x80000001007FE3C0;
      String.append(_:)(v53);
      v144 = a1 & 1;
      _print_unlocked<A, B>(_:_:)();
      v54._object = 0x80000001007FE3F0;
      v54._countAndFlagsBits = 0xD000000000000010;
      String.append(_:)(v54);
      v55 = [swift_getObjCClassFromMetadata() v15[332]];
      v56 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v58 = v57;

      v59._countAndFlagsBits = v56;
      v59._object = v58;
      String.append(_:)(v59);
      v58, v60, v61, v62, v63, v64, v65, v66;
      v67._object = 0xE900000000000020;
      v67._countAndFlagsBits = 0x3A646E756F66202CLL;
      String.append(_:)(v67);
      v68 = [v12 v15[332]];
      v69 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v71 = v70;

      v72._countAndFlagsBits = v69;
      v72._object = v71;
      String.append(_:)(v72);
      v71, v73, v74, v75, v76, v77, v78, v79;
      v80._countAndFlagsBits = 125;
      v80._object = 0xE100000000000000;
      String.append(_:)(v80);
      v81 = v143;
      v82 = String._bridgeToObjectiveC()();
      v81, v83, v84, v85, v86, v87, v88, v89;
      [v52 internalErrorWithDebugDescription:v82];

      swift_willThrow();
    }
  }

  else
  {
    if (qword_100936128 != -1)
    {
      swift_once();
    }

    v90 = type metadata accessor for Logger();
    sub_100006654(v90, qword_100946C50);
    v91 = a2;
    v92 = Logger.logObject.getter();
    v93 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v92, v93))
    {
      v94 = swift_slowAlloc();
      v142 = swift_slowAlloc();
      *v94 = 136315394;
      if (a1)
      {
        v95 = 0x4449746E65726170;
      }

      else
      {
        v95 = 0x49746E756F636361;
      }

      if (a1)
      {
        v96 = 0xE800000000000000;
      }

      else
      {
        v96 = 0xE900000000000044;
      }

      v97 = sub_10000668C(v95, v96, &v142);
      v96, v98, v99, v100, v101, v102, v103, v104;
      *(v94 + 4) = v97;
      *(v94 + 12) = 2080;
      v105 = [v91 description];
      v106 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v108 = v107;

      v109 = sub_10000668C(v106, v108, &v142);
      v108, v110, v111, v112, v113, v114, v115, v116;
      *(v94 + 14) = v109;
      _os_log_impl(&_mh_execute_header, v92, v93, "Missing relationship {key: %s, objectID: %s}", v94, 0x16u);
      swift_arrayDestroy();
    }

    v117 = objc_opt_self();
    v142 = 0;
    v143 = 0xE000000000000000;
    _StringGuts.grow(_:)(44);
    v118._countAndFlagsBits = 0xD00000000000001BLL;
    v118._object = 0x80000001007FE3A0;
    String.append(_:)(v118);
    v144 = a1 & 1;
    _print_unlocked<A, B>(_:_:)();
    v119._countAndFlagsBits = 0x7463656A626F202CLL;
    v119._object = 0xEC000000203A4449;
    String.append(_:)(v119);
    v120 = [v91 description];
    v121 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v123 = v122;

    v124._countAndFlagsBits = v121;
    v124._object = v123;
    String.append(_:)(v124);
    v123, v125, v126, v127, v128, v129, v130, v131;
    v132._countAndFlagsBits = 125;
    v132._object = 0xE100000000000000;
    String.append(_:)(v132);
    v133 = v143;
    v134 = String._bridgeToObjectiveC()();
    v133, v135, v136, v137, v138, v139, v140, v141;
    [v117 internalErrorWithDebugDescription:v134];

    swift_willThrow();
  }
}

unint64_t sub_10068C22C(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1008E1368, v2);
  object, v4, v5, v6, v7, v8, v9, v10;
  if (v3 >= 7)
  {
    return 7;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_10068C278(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1008E1480, v2);
  object, v4, v5, v6, v7, v8, v9, v10;
  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

void sub_10068C2C4(void *a1, uint64_t a2)
{
  v4 = [a1 remObjectID];
  v5 = v4;
  if (*(a2 + 16))
  {
    sub_10002B924(v4);
  }

  v6 = [a1 remObjectID];
  v7 = v6;
  if (*(a2 + 16))
  {
    sub_10002B924(v6);
  }

  v8._rawValue = &off_1008E1BE8;
  if (!sub_1005F8918(v8, type metadata accessor for REMCDManualSortHint))
  {
    v9._rawValue = &off_1008E0BF0;
    v10 = sub_1005F6E20(v9, type metadata accessor for REMCDManualSortHint);
    if (v10 != 2)
    {
      v11 = v10;
      v80[3] = &type metadata for REMManualOrderingCDIngestor.RelationshipKey;
      v80[4] = &off_1008F3B90;
      sub_10000A87C(v80, v77);
      v12 = v78;
      v13 = v79;
      sub_10000F61C(v77, v78);
      if ((*(v13 + 16))(v12, v13) == 0x49746E756F636361 && v14 == 0xE900000000000044)
      {
        0xE900000000000044, 0xE900000000000044, v15, v16, v17, v18, v19, v20;
        sub_10000607C(v77);
LABEL_11:
        sub_10000607C(v80);
        return;
      }

      v21 = v14;
      v22 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v21, v23, v24, v25, v26, v27, v28, v29;
      sub_10000607C(v77);
      if (v22)
      {
        goto LABEL_11;
      }

      sub_10000607C(v80);
      if (v11)
      {
        v37 = 0x6465696669646F6DLL;
      }

      else
      {
        v37 = 0x44497463656A626FLL;
      }

      if (v11)
      {
        v38 = 0xEC00000065746144;
      }

      else
      {
        v38 = 0xE800000000000000;
      }

      v39 = 0xE800000000000000;
      if (v37 == 0x44497463656A626FLL && v38 == 0xE800000000000000)
      {
LABEL_21:
        v39, v30, v31, v32, v33, v34, v35, v36;
        v38, v40, v41, v42, v43, v44, v45, v46;
        return;
      }

      v47 = _stringCompareWithSmolCheck(_:_:expecting:)();
      0xE800000000000000, v48, v49, v50, v51, v52, v53, v54;
      v38, v55, v56, v57, v58, v59, v60, v61;
      if ((v47 & 1) == 0)
      {
        v39 = 0xEC00000065746144;
        if (v37 == 0x6465696669646F6DLL && v38 == 0xEC00000065746144)
        {
          goto LABEL_21;
        }

        v62 = _stringCompareWithSmolCheck(_:_:expecting:)();
        0xEC00000065746144, v63, v64, v65, v66, v67, v68, v69;
        v38, v70, v71, v72, v73, v74, v75, v76;
        if ((v62 & 1) == 0)
        {
          sub_1006ABFBC();
          swift_allocError();
          swift_willThrow();
        }
      }
    }
  }
}

void sub_10068C5B8()
{
  v0._rawValue = &off_1008DF080;
  v1 = sub_1005F7EC0(v0, &qword_100940370, off_1008D4150);
  if (v1 == 2)
  {
    return;
  }

  v2 = v1;
  v3._rawValue = &off_1008E1090;
  v4 = sub_1005F716C(v3, &qword_100940370, off_1008D4150);
  if (v4 == 2)
  {
    return;
  }

  v12 = v4;
  if (v2)
  {
    v13 = 0x44496D72616C61;
  }

  else
  {
    v13 = 0x49746E756F636361;
  }

  if (v2)
  {
    v14 = 0xE700000000000000;
  }

  else
  {
    v14 = 0xE900000000000044;
  }

  v15 = 0xE900000000000044;
  if (v13 == 0x49746E756F636361 && v14 == 0xE900000000000044)
  {
LABEL_11:
    v15, v5, v6, v7, v8, v9, v10, v11;
    v14, v16, v17, v18, v19, v20, v21, v22;
    goto LABEL_13;
  }

  v23 = _stringCompareWithSmolCheck(_:_:expecting:)();
  0xE900000000000044, v24, v25, v26, v27, v28, v29, v30;
  v14, v31, v32, v33, v34, v35, v36, v37;
  if ((v23 & 1) == 0)
  {
    v15 = 0xE700000000000000;
    if (v13 != 0x44496D72616C61 || v14 != 0xE700000000000000)
    {
      v78 = _stringCompareWithSmolCheck(_:_:expecting:)();
      0xE700000000000000, v79, v80, v81, v82, v83, v84, v85;
      v14, v86, v87, v88, v89, v90, v91, v92;
      if ((v78 & 1) == 0)
      {
        return;
      }

      goto LABEL_13;
    }

    goto LABEL_11;
  }

LABEL_13:
  if (v12)
  {
    v38 = 0x746E657665;
  }

  else
  {
    v38 = 0x44497463656A626FLL;
  }

  if (v12)
  {
    v39 = 0xE500000000000000;
  }

  else
  {
    v39 = 0xE800000000000000;
  }

  v40 = 0xE800000000000000;
  if (v38 == 0x44497463656A626FLL && v39 == 0xE800000000000000)
  {
    goto LABEL_21;
  }

  v48 = _stringCompareWithSmolCheck(_:_:expecting:)();
  0xE800000000000000, v49, v50, v51, v52, v53, v54, v55;
  v39, v56, v57, v58, v59, v60, v61, v62;
  if ((v48 & 1) == 0)
  {
    v40 = 0xE500000000000000;
    if (v38 == 0x746E657665 && v39 == 0xE500000000000000)
    {
LABEL_21:
      v40, v5, v6, v7, v8, v9, v10, v11;
      v39, v41, v42, v43, v44, v45, v46, v47;
      return;
    }

    v63 = _stringCompareWithSmolCheck(_:_:expecting:)();
    0xE500000000000000, v64, v65, v66, v67, v68, v69, v70;
    v39, v71, v72, v73, v74, v75, v76, v77;
    if ((v63 & 1) == 0)
    {
      sub_1006ABFBC();
      swift_allocError();
      swift_willThrow();
    }
  }
}

void sub_10068C85C()
{
  v0._rawValue = &off_1008DF080;
  v1 = sub_1005F7EC0(v0, &qword_100940360, off_1008D4138);
  if (v1 == 2)
  {
    return;
  }

  v2 = v1;
  v3 = sub_1005F79C4();
  if (v3 == 3)
  {
    return;
  }

  v108 = v3;
  v11 = 0xE900000000000079;
  if (v2)
  {
    v12 = 0x44496D72616C61;
  }

  else
  {
    v12 = 0x49746E756F636361;
  }

  if (v2)
  {
    v13 = 0xE700000000000000;
  }

  else
  {
    v13 = 0xE900000000000044;
  }

  v14 = 0xE900000000000044;
  if (v12 != 0x49746E756F636361 || v13 != 0xE900000000000044)
  {
    v22 = _stringCompareWithSmolCheck(_:_:expecting:)();
    0xE900000000000044, v23, v24, v25, v26, v27, v28, v29;
    v13, v30, v31, v32, v33, v34, v35, v36;
    if (v22)
    {
      goto LABEL_13;
    }

    v14 = 0xE700000000000000;
    if (v12 != 0x44496D72616C61 || v13 != 0xE700000000000000)
    {
      v63 = _stringCompareWithSmolCheck(_:_:expecting:)();
      0xE700000000000000, v64, v65, v66, v67, v68, v69, v70;
      v13, v71, v72, v73, v74, v75, v76, v77;
      if ((v63 & 1) == 0)
      {
        return;
      }

      goto LABEL_13;
    }
  }

  v14, v4, v5, v6, v7, v8, v9, v10;
  v13, v15, v16, v17, v18, v19, v20, v21;
LABEL_13:
  v37 = 0x44497463656A626FLL;
  v38 = 0xE800000000000000;
  if (!v108)
  {
    v39 = 0xE800000000000000;
    v40 = 0x44497463656A626FLL;
    goto LABEL_18;
  }

  if (v108 == 1)
  {
    v11 = 0x80000001007EA8C0;
  }

  v48 = _stringCompareWithSmolCheck(_:_:expecting:)();
  0xE800000000000000, v49, v50, v51, v52, v53, v54, v55;
  v11, v56, v57, v58, v59, v60, v61, v62;
  if ((v48 & 1) == 0)
  {
    v38 = 0x80000001007EA8C0;
    if (v108)
    {
      if (v108 == 1)
      {
        v40 = 0xD000000000000012;
        v39 = 0x80000001007EA8C0;
      }

      else
      {
        v40 = 0x74696D69786F7270;
        v39 = 0xE900000000000079;
      }
    }

    else
    {
      v39 = 0xE800000000000000;
      v40 = 0x44497463656A626FLL;
    }

    if (v40 != 0xD000000000000012 || 0x80000001007EA8C0 != v39)
    {
      v78 = _stringCompareWithSmolCheck(_:_:expecting:)();
      0x80000001007EA8C0, v79, v80, v81, v82, v83, v84, v85;
      v39, v86, v87, v88, v89, v90, v91, v92;
      if (v78)
      {
        return;
      }

      v38 = 0xE900000000000079;
      if (v108)
      {
        if (v108 == 1)
        {
          v37 = 0xD000000000000012;
          v39 = 0x80000001007EA8C0;
        }

        else
        {
          v37 = 0x74696D69786F7270;
          v39 = 0xE900000000000079;
        }
      }

      else
      {
        v39 = 0xE800000000000000;
      }

      if (v37 != 0x74696D69786F7270 || v39 != 0xE900000000000079)
      {
        v93 = _stringCompareWithSmolCheck(_:_:expecting:)();
        0xE900000000000079, v94, v95, v96, v97, v98, v99, v100;
        v39, v101, v102, v103, v104, v105, v106, v107;
        if ((v93 & 1) == 0)
        {
          sub_1006ABFBC();
          swift_allocError();
          swift_willThrow();
        }

        return;
      }
    }

LABEL_18:
    v38, v4, v40, v6, v7, v8, v9, v10;
    v39, v41, v42, v43, v44, v45, v46, v47;
  }
}

void sub_10068CCA0()
{
  v0._rawValue = &off_1008DF080;
  v1 = sub_1005F7EC0(v0, &qword_100940350, off_1008D4130);
  if (v1 == 2)
  {
    return;
  }

  v2 = v1;
  v3._rawValue = &off_1008E0E30;
  v4 = sub_1005F716C(v3, &qword_100940350, off_1008D4130);
  if (v4 == 2)
  {
    return;
  }

  v12 = v4;
  if (v2)
  {
    v13 = 0x44496D72616C61;
  }

  else
  {
    v13 = 0x49746E756F636361;
  }

  if (v2)
  {
    v14 = 0xE700000000000000;
  }

  else
  {
    v14 = 0xE900000000000044;
  }

  v15 = 0xE900000000000044;
  if (v13 == 0x49746E756F636361 && v14 == 0xE900000000000044)
  {
LABEL_11:
    v15, v5, v6, v7, v8, v9, v10, v11;
    v14, v16, v17, v18, v19, v20, v21, v22;
    goto LABEL_13;
  }

  v23 = _stringCompareWithSmolCheck(_:_:expecting:)();
  0xE900000000000044, v24, v25, v26, v27, v28, v29, v30;
  v14, v31, v32, v33, v34, v35, v36, v37;
  if ((v23 & 1) == 0)
  {
    v15 = 0xE700000000000000;
    if (v13 != 0x44496D72616C61 || v14 != 0xE700000000000000)
    {
      v78 = _stringCompareWithSmolCheck(_:_:expecting:)();
      0xE700000000000000, v79, v80, v81, v82, v83, v84, v85;
      v14, v86, v87, v88, v89, v90, v91, v92;
      if ((v78 & 1) == 0)
      {
        return;
      }

      goto LABEL_13;
    }

    goto LABEL_11;
  }

LABEL_13:
  if (v12)
  {
    v38 = 0x706D6F4365746164;
  }

  else
  {
    v38 = 0x44497463656A626FLL;
  }

  if (v12)
  {
    v39 = 0xEE0073746E656E6FLL;
  }

  else
  {
    v39 = 0xE800000000000000;
  }

  v40 = 0xE800000000000000;
  if (v38 == 0x44497463656A626FLL && v39 == 0xE800000000000000)
  {
    goto LABEL_21;
  }

  v48 = _stringCompareWithSmolCheck(_:_:expecting:)();
  0xE800000000000000, v49, v50, v51, v52, v53, v54, v55;
  v39, v56, v57, v58, v59, v60, v61, v62;
  if ((v48 & 1) == 0)
  {
    v40 = 0xEE0073746E656E6FLL;
    if (v38 == 0x706D6F4365746164 && v39 == 0xEE0073746E656E6FLL)
    {
LABEL_21:
      v40, v5, v6, v7, v8, v9, v10, v11;
      v39, v41, v42, v43, v44, v45, v46, v47;
      return;
    }

    v63 = _stringCompareWithSmolCheck(_:_:expecting:)();
    0xEE0073746E656E6FLL, v64, v65, v66, v67, v68, v69, v70;
    v39, v71, v72, v73, v74, v75, v76, v77;
    if ((v63 & 1) == 0)
    {
      sub_1006ABFBC();
      swift_allocError();
      swift_willThrow();
    }
  }
}

void sub_10068CF50()
{
  v0._rawValue = &off_1008DF080;
  v1 = sub_1005F7EC0(v0, &qword_10094F688, off_1008D4140);
  if (v1 == 2)
  {
    return;
  }

  v2 = v1;
  v3._rawValue = &off_1008E07F0;
  v4 = sub_1005F716C(v3, &qword_10094F688, off_1008D4140);
  if (v4 == 2)
  {
    return;
  }

  v12 = v4;
  if (v2)
  {
    v13 = 0x44496D72616C61;
  }

  else
  {
    v13 = 0x49746E756F636361;
  }

  if (v2)
  {
    v14 = 0xE700000000000000;
  }

  else
  {
    v14 = 0xE900000000000044;
  }

  v15 = 0xE900000000000044;
  if (v13 == 0x49746E756F636361 && v14 == 0xE900000000000044)
  {
LABEL_11:
    v15, v5, v6, v7, v8, v9, v10, v11;
    v14, v16, v17, v18, v19, v20, v21, v22;
    goto LABEL_13;
  }

  v23 = _stringCompareWithSmolCheck(_:_:expecting:)();
  0xE900000000000044, v24, v25, v26, v27, v28, v29, v30;
  v14, v31, v32, v33, v34, v35, v36, v37;
  if ((v23 & 1) == 0)
  {
    v15 = 0xE700000000000000;
    if (v13 != 0x44496D72616C61 || v14 != 0xE700000000000000)
    {
      v78 = _stringCompareWithSmolCheck(_:_:expecting:)();
      0xE700000000000000, v79, v80, v81, v82, v83, v84, v85;
      v14, v86, v87, v88, v89, v90, v91, v92;
      if ((v78 & 1) == 0)
      {
        return;
      }

      goto LABEL_13;
    }

    goto LABEL_11;
  }

LABEL_13:
  if (v12)
  {
    v38 = 0x65746E49656D6974;
  }

  else
  {
    v38 = 0x44497463656A626FLL;
  }

  if (v12)
  {
    v39 = 0xEC0000006C617672;
  }

  else
  {
    v39 = 0xE800000000000000;
  }

  v40 = 0xE800000000000000;
  if (v38 == 0x44497463656A626FLL && v39 == 0xE800000000000000)
  {
    goto LABEL_21;
  }

  v48 = _stringCompareWithSmolCheck(_:_:expecting:)();
  0xE800000000000000, v49, v50, v51, v52, v53, v54, v55;
  v39, v56, v57, v58, v59, v60, v61, v62;
  if ((v48 & 1) == 0)
  {
    v40 = 0xEC0000006C617672;
    if (v38 == 0x65746E49656D6974 && v39 == 0xEC0000006C617672)
    {
LABEL_21:
      v40, v5, v6, v7, v8, v9, v10, v11;
      v39, v41, v42, v43, v44, v45, v46, v47;
      return;
    }

    v63 = _stringCompareWithSmolCheck(_:_:expecting:)();
    0xEC0000006C617672, v64, v65, v66, v67, v68, v69, v70;
    v39, v71, v72, v73, v74, v75, v76, v77;
    if ((v63 & 1) == 0)
    {
      sub_1006ABFBC();
      swift_allocError();
      swift_willThrow();
    }
  }
}

void sub_10068D1FC()
{
  v0._rawValue = &off_1008E1248;
  v1 = sub_1005F7EC0(v0, &unk_100938870, off_1008D4128);
  if (v1 == 2)
  {
    return;
  }

  v2 = v1;
  v3._rawValue = &off_1008E0868;
  v4 = sub_1005F6904(v3, &unk_100938870, off_1008D4128);
  if (v4 == 5)
  {
    return;
  }

  v12 = v4;
  if (v2)
  {
    v13 = 0x7265646E696D6572;
  }

  else
  {
    v13 = 0x49746E756F636361;
  }

  if (v2)
  {
    v14 = 0xEA00000000004449;
  }

  else
  {
    v14 = 0xE900000000000044;
  }

  v15 = 0xE900000000000044;
  if (v13 == 0x49746E756F636361 && v14 == 0xE900000000000044)
  {
LABEL_11:
    v15, v5, v6, v7, v8, v9, v10, v11;
    v14, v16, v17, v18, v19, v20, v21, v22;
    goto LABEL_13;
  }

  v23 = _stringCompareWithSmolCheck(_:_:expecting:)();
  0xE900000000000044, v24, v25, v26, v27, v28, v29, v30;
  v14, v31, v32, v33, v34, v35, v36, v37;
  if ((v23 & 1) == 0)
  {
    v15 = 0xEA00000000004449;
    if (v13 != 0x7265646E696D6572 || v14 != 0xEA00000000004449)
    {
      v71 = _stringCompareWithSmolCheck(_:_:expecting:)();
      0xEA00000000004449, v72, v73, v74, v75, v76, v77, v78;
      v14, v79, v80, v81, v82, v83, v84, v85;
      if ((v71 & 1) == 0)
      {
        return;
      }

      goto LABEL_13;
    }

    goto LABEL_11;
  }

LABEL_13:
  v38 = 0;
  v39 = 0xE800000000000000;
  v40 = v12;
  while (v38 != 5)
  {
    v56 = *(&off_1008E1DC0 + v38 + 32);
    if (v56 <= 1)
    {
      if (*(&off_1008E1DC0 + v38 + 32))
      {
        v57 = 0x72656767697274;
      }

      else
      {
        v57 = 0x44497463656A626FLL;
      }

      if (*(&off_1008E1DC0 + v38 + 32))
      {
        v58 = 0xE700000000000000;
      }

      else
      {
        v58 = 0xE800000000000000;
      }
    }

    else if (v56 == 2)
    {
      v57 = 0xD000000000000010;
      v58 = 0x80000001007E9F10;
    }

    else
    {
      if (v56 == 3)
      {
        v57 = 0x4449556D72616C61;
      }

      else
      {
        v57 = 0xD000000000000010;
      }

      if (v56 == 3)
      {
        v58 = 0xE800000000000000;
      }

      else
      {
        v58 = 0x80000001007E9F30;
      }
    }

    if (v40 == 3)
    {
      v59 = 0x4449556D72616C61;
    }

    else
    {
      v59 = 0xD000000000000010;
    }

    if (v40 == 3)
    {
      v60 = 0xE800000000000000;
    }

    else
    {
      v60 = 0x80000001007E9F30;
    }

    if (v40 == 2)
    {
      v59 = 0xD000000000000010;
      v60 = 0x80000001007E9F10;
    }

    if (v40)
    {
      v61 = 0x72656767697274;
    }

    else
    {
      v61 = 0x44497463656A626FLL;
    }

    if (v40)
    {
      v39 = 0xE700000000000000;
    }

    if (v40 <= 1)
    {
      v62 = v61;
    }

    else
    {
      v62 = v59;
    }

    if (v40 <= 1)
    {
      v63 = v39;
    }

    else
    {
      v63 = v60;
    }

    if (v57 == v62 && v58 == v63)
    {
      v58, v5, v62, v7, v8, v9, v10, v11;
      v63, v64, v65, v66, v67, v68, v69, v70;
      return;
    }

    v41 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v58, v42, v43, v44, v45, v46, v47, v48;
    v63, v49, v50, v51, v52, v53, v54, v55;
    v39 = 0xE800000000000000;
    ++v38;
    if (v41)
    {
      return;
    }
  }

  sub_1006ABFBC();
  swift_allocError();
  swift_willThrow();
}

void sub_10068D520()
{
  v0._rawValue = &off_1008E12E8;
  v1 = sub_1005F8760(v0, &unk_10093F790, off_1008D4158);
  if (v1 == 4)
  {
    return;
  }

  v2 = v1;
  v3 = sub_1005F623C();
  if (v3 == 6)
  {
    return;
  }

  v10 = v3;
  v11 = 0x49746E756F636361;
  v12 = 0xE900000000000044;
  if (v2 > 1u)
  {
    if (v2 != 2)
    {
      v14 = 0xEC0000004449726FLL;
      goto LABEL_12;
    }

    v13 = 0x65656E6769737361;
    v14 = 0xEA00000000004449;
  }

  else
  {
    v13 = 0x49746E756F636361;
    v14 = 0xE900000000000044;
    if (v2)
    {
      v14 = 0xEA00000000004449;
      goto LABEL_12;
    }
  }

  if (v13 == 0x49746E756F636361 && v14 == 0xE900000000000044)
  {
    goto LABEL_10;
  }

LABEL_12:
  v22 = _stringCompareWithSmolCheck(_:_:expecting:)();
  0xE900000000000044, v23, v24, v25, v26, v27, v28, v29;
  v14, v30, v31, v32, v33, v34, v35, v36;
  if (v22)
  {
    goto LABEL_13;
  }

  v12 = 0xEA00000000004449;
  if (v2 > 1u)
  {
    if (v2 == 2)
    {
      v13 = 0x65656E6769737361;
      v14 = 0xEA00000000004449;
    }

    else
    {
      v13 = 0x74616E696769726FLL;
      v14 = 0xEC0000004449726FLL;
    }
  }

  else
  {
    if (v2)
    {
      v13 = 0x7265646E696D6572;
    }

    else
    {
      v13 = 0x49746E756F636361;
    }

    if (v2)
    {
      v14 = 0xEA00000000004449;
    }

    else
    {
      v14 = 0xE900000000000044;
    }
  }

  if (v13 == 0x7265646E696D6572 && v14 == 0xEA00000000004449)
  {
LABEL_10:
    v12, v4, v13, v5, v6, v7, v8, v9;
    v14, v15, v16, v17, v18, v19, v20, v21;
    goto LABEL_13;
  }

  v70 = _stringCompareWithSmolCheck(_:_:expecting:)();
  0xEA00000000004449, v71, v72, v73, v74, v75, v76, v77;
  v14, v78, v79, v80, v81, v82, v83, v84;
  if (v70)
  {
    goto LABEL_13;
  }

  v12 = 0xEA00000000004449;
  if (v2 > 1u)
  {
    if (v2 != 2)
    {
      v13 = 0x74616E696769726FLL;
      v14 = 0xEC0000004449726FLL;
      goto LABEL_75;
    }

    v13 = 0x65656E6769737361;
    goto LABEL_73;
  }

  v13 = 0x49746E756F636361;
  v14 = 0xE900000000000044;
  if (v2)
  {
    v13 = 0x7265646E696D6572;
LABEL_73:
    v14 = 0xEA00000000004449;
  }

LABEL_75:
  if (v13 == 0x65656E6769737361 && v14 == 0xEA00000000004449)
  {
    goto LABEL_10;
  }

  v85 = _stringCompareWithSmolCheck(_:_:expecting:)();
  0xEA00000000004449, v86, v87, v88, v89, v90, v91, v92;
  v14, v93, v94, v95, v96, v97, v98, v99;
  if ((v85 & 1) == 0)
  {
    v12 = 0xEC0000004449726FLL;
    if (v2 > 1u)
    {
      if (v2 != 2)
      {
        v11 = 0x74616E696769726FLL;
        v14 = 0xEC0000004449726FLL;
        goto LABEL_85;
      }

      v11 = 0x65656E6769737361;
    }

    else
    {
      v14 = 0xE900000000000044;
      if (!v2)
      {
LABEL_85:
        if (v11 != 0x74616E696769726FLL || v14 != 0xEC0000004449726FLL)
        {
          v100 = _stringCompareWithSmolCheck(_:_:expecting:)();
          0xEC0000004449726FLL, v101, v102, v103, v104, v105, v106, v107;
          v14, v108, v109, v110, v111, v112, v113, v114;
          if ((v100 & 1) == 0)
          {
            return;
          }

          goto LABEL_13;
        }

        goto LABEL_10;
      }

      v11 = 0x7265646E696D6572;
    }

    v14 = 0xEA00000000004449;
    goto LABEL_85;
  }

LABEL_13:
  v37 = 0;
  v38 = v10;
  while (v37 != 6)
  {
    v54 = *(&off_1008E1E10 + v37 + 32);
    if (v54 > 2)
    {
      if (v54 == 3)
      {
        v55 = 0xD000000000000014;
        v56 = 0x80000001007E8B20;
      }

      else
      {
        if (v54 == 4)
        {
          v55 = 0xD000000000000016;
        }

        else
        {
          v55 = 0xD000000000000018;
        }

        if (v54 == 4)
        {
          v56 = 0x80000001007E8B40;
        }

        else
        {
          v56 = 0x80000001007E8B60;
        }
      }
    }

    else if (*(&off_1008E1E10 + v37 + 32))
    {
      if (v54 == 1)
      {
        v55 = 0x64656E6769737361;
      }

      else
      {
        v55 = 0x737574617473;
      }

      if (v54 == 1)
      {
        v56 = 0xEC00000065746144;
      }

      else
      {
        v56 = 0xE600000000000000;
      }
    }

    else
    {
      v56 = 0xE800000000000000;
      v55 = 0x44497463656A626FLL;
    }

    v57 = 0xD000000000000016;
    if (v38 == 4)
    {
      v58 = 0x80000001007E8B40;
    }

    else
    {
      v57 = 0xD000000000000018;
      v58 = 0x80000001007E8B60;
    }

    if (v38 == 3)
    {
      v57 = 0xD000000000000014;
      v58 = 0x80000001007E8B20;
    }

    v59 = 0x64656E6769737361;
    if (v38 != 1)
    {
      v59 = 0x737574617473;
    }

    v60 = 0xEC00000065746144;
    if (v38 != 1)
    {
      v60 = 0xE600000000000000;
    }

    if (!v38)
    {
      v59 = 0x44497463656A626FLL;
      v60 = 0xE800000000000000;
    }

    if (v38 <= 2)
    {
      v61 = v59;
    }

    else
    {
      v61 = v57;
    }

    if (v38 <= 2)
    {
      v62 = v60;
    }

    else
    {
      v62 = v58;
    }

    if (v55 == v61 && v56 == v62)
    {
      v56, v4, v61, v5, v6, v7, v8, v9;
      v62, v63, v64, v65, v66, v67, v68, v69;
      return;
    }

    v39 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v56, v40, v41, v42, v43, v44, v45, v46;
    v62, v47, v48, v49, v50, v51, v52, v53;
    ++v37;
    if (v39)
    {
      return;
    }
  }

  sub_1006ABFBC();
  swift_allocError();
  swift_willThrow();
}

void sub_10068DC48()
{
  v0._rawValue = &off_1008E14E8;
  v1 = sub_1005F7EC0(v0, &qword_100944EC8, off_1008D41F0);
  if (v1 == 2)
  {
    return;
  }

  v2 = v1;
  v3._rawValue = &off_1008E0AD8;
  v4 = sub_1005F65A4(v3, &qword_100944EC8, off_1008D41F0);
  if (v4 == 4)
  {
    return;
  }

  v12 = v4;
  if (v2)
  {
    v13 = 0x7265646E696D6572;
  }

  else
  {
    v13 = 0x49746E756F636361;
  }

  if (v2)
  {
    v14 = 0xEA00000000004449;
  }

  else
  {
    v14 = 0xE900000000000044;
  }

  v15 = 0xE900000000000044;
  if (v13 == 0x49746E756F636361 && v14 == 0xE900000000000044)
  {
LABEL_11:
    v15, v5, v6, v7, v8, v9, v10, v11;
    v14, v16, v17, v18, v19, v20, v21, v22;
    goto LABEL_13;
  }

  v23 = _stringCompareWithSmolCheck(_:_:expecting:)();
  0xE900000000000044, v24, v25, v26, v27, v28, v29, v30;
  v14, v31, v32, v33, v34, v35, v36, v37;
  if ((v23 & 1) == 0)
  {
    v15 = 0xEA00000000004449;
    if (v13 != 0x7265646E696D6572 || v14 != 0xEA00000000004449)
    {
      v40 = _stringCompareWithSmolCheck(_:_:expecting:)();
      0xEA00000000004449, v41, v42, v43, v44, v45, v46, v47;
      v14, v48, v49, v50, v51, v52, v53, v54;
      if ((v40 & 1) == 0)
      {
        return;
      }

      goto LABEL_13;
    }

    goto LABEL_11;
  }

LABEL_13:
  v38 = 0x44497463656A626FLL;
  v39 = 0xE800000000000000;
  if (v12 > 1u)
  {
    if (v12 == 2)
    {
      v57 = 0xE300000000000000;
    }

    else
    {
      v57 = 0xE800000000000000;
    }
  }

  else
  {
    if (!v12)
    {
      v55 = 0xE800000000000000;
      v56 = 0x44497463656A626FLL;
LABEL_25:
      v39, v5, v56, v7, v8, v9, v10, v11;
      v55, v58, v59, v60, v61, v62, v63, v64;
      return;
    }

    v57 = 0xE300000000000000;
  }

  v65 = _stringCompareWithSmolCheck(_:_:expecting:)();
  0xE800000000000000, v66, v67, v68, v69, v70, v71, v72;
  v57, v73, v74, v75, v76, v77, v78, v79;
  if ((v65 & 1) == 0)
  {
    v39 = 0xE300000000000000;
    if (v12 > 1u)
    {
      if (v12 == 2)
      {
        v55 = 0xE300000000000000;
        v56 = 7107189;
      }

      else
      {
        v55 = 0xE800000000000000;
        v56 = 0x617461646174656DLL;
      }
    }

    else if (v12)
    {
      v55 = 0xE300000000000000;
      v56 = 6911093;
    }

    else
    {
      v55 = 0xE800000000000000;
      v56 = 0x44497463656A626FLL;
    }

    if (v56 == 6911093 && v55 == 0xE300000000000000)
    {
      goto LABEL_25;
    }

    v80 = _stringCompareWithSmolCheck(_:_:expecting:)();
    0xE300000000000000, v81, v82, v83, v84, v85, v86, v87;
    v55, v88, v89, v90, v91, v92, v93, v94;
    if ((v80 & 1) == 0)
    {
      v39 = 0xE300000000000000;
      if (v12 > 1u)
      {
        if (v12 == 2)
        {
          v55 = 0xE300000000000000;
          v56 = 7107189;
        }

        else
        {
          v55 = 0xE800000000000000;
          v56 = 0x617461646174656DLL;
        }
      }

      else if (v12)
      {
        v55 = 0xE300000000000000;
        v56 = 6911093;
      }

      else
      {
        v55 = 0xE800000000000000;
        v56 = 0x44497463656A626FLL;
      }

      if (v56 == 7107189 && v55 == 0xE300000000000000)
      {
        goto LABEL_25;
      }

      v95 = _stringCompareWithSmolCheck(_:_:expecting:)();
      0xE300000000000000, v96, v97, v98, v99, v100, v101, v102;
      v55, v103, v104, v105, v106, v107, v108, v109;
      if ((v95 & 1) == 0)
      {
        v39 = 0xE800000000000000;
        if (v12 > 1u)
        {
          if (v12 == 2)
          {
            v55 = 0xE300000000000000;
            v38 = 7107189;
          }

          else
          {
            v55 = 0xE800000000000000;
            v38 = 0x617461646174656DLL;
          }
        }

        else if (v12)
        {
          v55 = 0xE300000000000000;
          v38 = 6911093;
        }

        else
        {
          v55 = 0xE800000000000000;
        }

        if (v38 == 0x617461646174656DLL && v55 == 0xE800000000000000)
        {
          goto LABEL_25;
        }

        v110 = _stringCompareWithSmolCheck(_:_:expecting:)();
        0xE800000000000000, v111, v112, v113, v114, v115, v116, v117;
        v55, v118, v119, v120, v121, v122, v123, v124;
        if ((v110 & 1) == 0)
        {
          sub_1006ABFBC();
          swift_allocError();
          swift_willThrow();
        }
      }
    }
  }
}

void sub_10068E204()
{
  v0._rawValue = &off_1008E16E8;
  v1 = sub_1005F7EC0(v0, &unk_100944ED0, off_1008D41A0);
  if (v1 == 2)
  {
    return;
  }

  v2 = v1;
  v3._rawValue = &off_1008E0D68;
  v4 = sub_1005F7674(v3, &unk_100944ED0, off_1008D41A0);
  if (v4 == 7)
  {
    return;
  }

  v12 = v4;
  if (v2)
  {
    v13 = 0x7265646E696D6572;
  }

  else
  {
    v13 = 0x49746E756F636361;
  }

  if (v2)
  {
    v14 = 0xEA00000000004449;
  }

  else
  {
    v14 = 0xE900000000000044;
  }

  v15 = 0xE900000000000044;
  if (v13 == 0x49746E756F636361 && v14 == 0xE900000000000044)
  {
LABEL_11:
    v15, v5, v6, v7, v8, v9, v10, v11;
    v14, v16, v17, v18, v19, v20, v21, v22;
    goto LABEL_13;
  }

  v23 = _stringCompareWithSmolCheck(_:_:expecting:)();
  0xE900000000000044, v24, v25, v26, v27, v28, v29, v30;
  v14, v31, v32, v33, v34, v35, v36, v37;
  if ((v23 & 1) == 0)
  {
    v15 = 0xEA00000000004449;
    if (v13 != 0x7265646E696D6572 || v14 != 0xEA00000000004449)
    {
      v73 = _stringCompareWithSmolCheck(_:_:expecting:)();
      0xEA00000000004449, v74, v75, v76, v77, v78, v79, v80;
      v14, v81, v82, v83, v84, v85, v86, v87;
      if ((v73 & 1) == 0)
      {
        return;
      }

      goto LABEL_13;
    }

    goto LABEL_11;
  }

LABEL_13:
  v38 = 0;
  v39 = v12;
  while (v38 != 7)
  {
    v55 = *(&off_1008E1EB0 + v38 + 32);
    if (v55 <= 2)
    {
      if (*(&off_1008E1EB0 + v38 + 32))
      {
        if (v55 == 1)
        {
          v56 = 6911093;
        }

        else
        {
          v56 = 0x657A6953656C6966;
        }

        if (v55 == 1)
        {
          v57 = 0xE300000000000000;
        }

        else
        {
          v57 = 0xE800000000000000;
        }
      }

      else
      {
        v57 = 0xE800000000000000;
        v56 = 0x44497463656A626FLL;
      }
    }

    else if (*(&off_1008E1EB0 + v38 + 32) > 4u)
    {
      if (v55 == 5)
      {
        v57 = 0xE500000000000000;
        v56 = 0x6874646977;
      }

      else
      {
        v57 = 0xE600000000000000;
        v56 = 0x746867696568;
      }
    }

    else
    {
      if (v55 == 3)
      {
        v56 = 0x4C5255656C6966;
      }

      else
      {
        v56 = 0xD000000000000012;
      }

      if (v55 == 3)
      {
        v57 = 0xE700000000000000;
      }

      else
      {
        v57 = 0x80000001007EA7D0;
      }
    }

    v58 = 0x746867696568;
    if (v39 == 5)
    {
      v58 = 0x6874646977;
    }

    v59 = 0xE500000000000000;
    if (v39 != 5)
    {
      v59 = 0xE600000000000000;
    }

    v60 = 0xD000000000000012;
    if (v39 == 3)
    {
      v60 = 0x4C5255656C6966;
      v61 = 0xE700000000000000;
    }

    else
    {
      v61 = 0x80000001007EA7D0;
    }

    if (v39 <= 4)
    {
      v58 = v60;
      v59 = v61;
    }

    v62 = 0x657A6953656C6966;
    if (v39 == 1)
    {
      v62 = 6911093;
      v63 = 0xE300000000000000;
    }

    else
    {
      v63 = 0xE800000000000000;
    }

    if (!v39)
    {
      v62 = 0x44497463656A626FLL;
      v63 = 0xE800000000000000;
    }

    if (v39 <= 2)
    {
      v64 = v62;
    }

    else
    {
      v64 = v58;
    }

    if (v39 <= 2)
    {
      v65 = v63;
    }

    else
    {
      v65 = v59;
    }

    if (v56 == v64 && v57 == v65)
    {
      v57, v5, v64, v7, v8, v9, v10, v11;
      v65, v66, v67, v68, v69, v70, v71, v72;
      return;
    }

    v40 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v57, v41, v42, v43, v44, v45, v46, v47;
    v65, v48, v49, v50, v51, v52, v53, v54;
    ++v38;
    if (v40)
    {
      return;
    }
  }

  sub_1006ABFBC();
  swift_allocError();
  swift_willThrow();
}

void sub_10068E5A8()
{
  v0._rawValue = &off_1008E1610;
  v1 = sub_1005F7EC0(v0, &qword_100939DF0, off_1008D4188);
  if (v1 == 2)
  {
    return;
  }

  v2 = v1;
  v3._rawValue = &off_1008E0B58;
  v4 = sub_1005F6904(v3, &qword_100939DF0, off_1008D4188);
  if (v4 == 5)
  {
    return;
  }

  v12 = v4;
  if (v2)
  {
    v13 = 0x7265646E696D6572;
  }

  else
  {
    v13 = 0x49746E756F636361;
  }

  if (v2)
  {
    v14 = 0xEA00000000004449;
  }

  else
  {
    v14 = 0xE900000000000044;
  }

  v15 = 0xE900000000000044;
  if (v13 == 0x49746E756F636361 && v14 == 0xE900000000000044)
  {
LABEL_11:
    v15, v5, v6, v7, v8, v9, v10, v11;
    v14, v16, v17, v18, v19, v20, v21, v22;
    goto LABEL_13;
  }

  v23 = _stringCompareWithSmolCheck(_:_:expecting:)();
  0xE900000000000044, v24, v25, v26, v27, v28, v29, v30;
  v14, v31, v32, v33, v34, v35, v36, v37;
  if ((v23 & 1) == 0)
  {
    v15 = 0xEA00000000004449;
    if (v13 != 0x7265646E696D6572 || v14 != 0xEA00000000004449)
    {
      v71 = _stringCompareWithSmolCheck(_:_:expecting:)();
      0xEA00000000004449, v72, v73, v74, v75, v76, v77, v78;
      v14, v79, v80, v81, v82, v83, v84, v85;
      if ((v71 & 1) == 0)
      {
        return;
      }

      goto LABEL_13;
    }

    goto LABEL_11;
  }

LABEL_13:
  v38 = 0;
  v39 = v12;
  while (v38 != 5)
  {
    v55 = *(&off_1008E1F00 + v38 + 32);
    if (v55 <= 1)
    {
      if (*(&off_1008E1F00 + v38 + 32))
      {
        v56 = 6911093;
      }

      else
      {
        v56 = 0x44497463656A626FLL;
      }

      if (*(&off_1008E1F00 + v38 + 32))
      {
        v57 = 0xE300000000000000;
      }

      else
      {
        v57 = 0xE800000000000000;
      }
    }

    else if (v55 == 2)
    {
      v57 = 0xE800000000000000;
      v56 = 0x657A6953656C6966;
    }

    else
    {
      if (v55 == 3)
      {
        v56 = 0x4C5255656C6966;
      }

      else
      {
        v56 = 0xD000000000000012;
      }

      if (v55 == 3)
      {
        v57 = 0xE700000000000000;
      }

      else
      {
        v57 = 0x80000001007EA7D0;
      }
    }

    if (v39 == 3)
    {
      v58 = 0x4C5255656C6966;
    }

    else
    {
      v58 = 0xD000000000000012;
    }

    if (v39 == 3)
    {
      v59 = 0xE700000000000000;
    }

    else
    {
      v59 = 0x80000001007EA7D0;
    }

    if (v39 == 2)
    {
      v58 = 0x657A6953656C6966;
      v59 = 0xE800000000000000;
    }

    if (v39)
    {
      v60 = 6911093;
    }

    else
    {
      v60 = 0x44497463656A626FLL;
    }

    if (v39)
    {
      v61 = 0xE300000000000000;
    }

    else
    {
      v61 = 0xE800000000000000;
    }

    if (v39 <= 1)
    {
      v62 = v60;
    }

    else
    {
      v62 = v58;
    }

    if (v39 <= 1)
    {
      v63 = v61;
    }

    else
    {
      v63 = v59;
    }

    if (v56 == v62 && v57 == v63)
    {
      v57, v5, v62, v7, v8, v9, v10, v11;
      v63, v64, v65, v66, v67, v68, v69, v70;
      return;
    }

    v40 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v57, v41, v42, v43, v44, v45, v46, v47;
    v63, v48, v49, v50, v51, v52, v53, v54;
    ++v38;
    if (v40)
    {
      return;
    }
  }

  sub_1006ABFBC();
  swift_allocError();
  swift_willThrow();
}