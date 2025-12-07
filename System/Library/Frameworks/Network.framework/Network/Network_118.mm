uint64_t NWTXTRecord.subscript.getter(uint64_t a1, uint64_t a2)
{
  v5 = sub_182AD3008();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = *v2;
  if (!*(v6 + 16))
  {
    return 0;
  }

  v7 = sub_181E68520(a1, a2);
  if ((v8 & 1) == 0)
  {
    return 0;
  }

  v9 = *(v6 + 56) + 24 * v7;
  v10 = *v9;
  v11 = *(v9 + 8);
  v12 = *(v9 + 16);
  if (v12)
  {
    if (v12 == 1)
    {
      sub_181F49B58(v10, v11);
      sub_182AD2FD8();
      sub_181E692AC();
      v13 = sub_182AD2FB8();
      sub_1820F5168(v10, v11, 1);
      return v13;
    }

    else
    {
      return 0;
    }
  }

  else
  {

    return v10;
  }
}

{
  v4 = sub_18224DB54(v9, *a2, *(a2 + 8), *(a2 + 16), *v2);
  v5 = v9[0];
  v6 = v9[1];
  v7 = v10;

  sub_1820F5148(v5, v6, v7);
  sub_1820F5168(v5, v6, v7);

  *a1 = v5;
  *(a1 + 8) = v6;
  *(a1 + 16) = v7;
  return v4;
}

uint64_t NWTXTRecord.init(nw:)@<X0>(NSObject *a1@<X0>, void *a2@<X8>)
{
  v4 = swift_allocObject();
  *(v4 + 16) = MEMORY[0x1E69E7CC8];
  v5 = (v4 + 16);
  v9[4] = sub_181E63B60;
  v9[5] = v4;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = sub_181E63AEC;
  v9[3] = &block_descriptor_32;
  v6 = _Block_copy(v9);

  nw_txt_record_apply(a1, v6);
  _Block_release(v6);
  a2[1] = a1;
  swift_beginAccess();
  v7 = *v5;

  *a2 = v7;
  return result;
}

uint64_t NWTXTRecord.debugDescription.getter()
{
  sub_181F9A944();

  return sub_182AD2E88();
}

uint64_t NWTXTRecord.data.getter()
{
  v1 = *(v0 + 8);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_182AE7580;
  v6[4] = sub_181FB0158;
  v6[5] = v2;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 1107296256;
  v6[2] = sub_18224CA7C;
  v6[3] = &block_descriptor_6_2;
  v3 = _Block_copy(v6);
  swift_unknownObjectRetain();

  nw_txt_record_access_bytes(v1, v3);
  _Block_release(v3);
  swift_unknownObjectRelease();
  swift_beginAccess();
  v4 = *(v2 + 16);
  sub_181F49B58(v4, *(v2 + 24));

  return v4;
}

uint64_t NWTXTRecord.init(_:)@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v31 = *MEMORY[0x1E69E9840];
  v6 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v6 == 2 && *(result + 16) != *(result + 24))
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

  if (!v6)
  {
    if ((a2 & 0xFF000000000000) != 0)
    {
      aBlock = result;
      LOWORD(v26) = a2;
      BYTE2(v26) = BYTE2(a2);
      BYTE3(v26) = BYTE3(a2);
      BYTE4(v26) = BYTE4(a2);
      v7 = BYTE6(a2);
      BYTE5(v26) = BYTE5(a2);
      p_aBlock = &aBlock;
LABEL_24:
      v17 = nw_txt_record_create_with_bytes(p_aBlock, v7);
      v22 = swift_allocObject();
      *(v22 + 16) = MEMORY[0x1E69E7CC8];
      v23 = (v22 + 16);
      v29 = sub_18225BD58;
      v30 = v22;
      aBlock = MEMORY[0x1E69E9820];
      v26 = 1107296256;
      v27 = sub_181E63AEC;
      v28 = &block_descriptor_11_0;
      v24 = _Block_copy(&aBlock);

      nw_txt_record_apply(v17, v24);
      sub_181C1F2E4(result, a2);
      _Block_release(v24);
      swift_beginAccess();
      v18 = *v23;

      goto LABEL_25;
    }

LABEL_15:
    v16 = sub_18225A6AC(MEMORY[0x1E69E7CC0]);
    NWTXTRecord.init(_:)(v16, &aBlock);
    v15 = sub_181C1F2E4(result, a2);
    v18 = aBlock;
    v17 = v26;
LABEL_25:
    *a3 = v18;
    a3[1] = v17;
    return v15;
  }

  while (1)
  {
    if (result == result >> 32)
    {
      goto LABEL_15;
    }

LABEL_7:
    if (v6 != 2)
    {
      break;
    }

    v9 = *(result + 16);
    v10 = *(result + 24);
    v11 = sub_182AD1D58();
    if (v11)
    {
      v12 = sub_182AD1D88();
      if (__OFSUB__(v9, v12))
      {
        goto LABEL_29;
      }

      v11 += v9 - v12;
    }

    v13 = __OFSUB__(v10, v9);
    v14 = v10 - v9;
    if (v13)
    {
      goto LABEL_27;
    }

    v15 = sub_182AD1D78();
    if (v11)
    {
      goto LABEL_20;
    }

    __break(1u);
  }

  v14 = (result >> 32) - result;
  if (result >> 32 < result)
  {
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v19 = sub_182AD1D58();
  if (!v19)
  {
    v15 = sub_182AD1D78();
    goto LABEL_31;
  }

  v20 = v19;
  v21 = sub_182AD1D88();
  if (__OFSUB__(result, v21))
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
  }

  v11 = result - v21 + v20;
  v15 = sub_182AD1D78();
  if (v11)
  {
LABEL_20:
    if (v15 >= v14)
    {
      v7 = v14;
    }

    else
    {
      v7 = v15;
    }

    p_aBlock = v11;
    goto LABEL_24;
  }

LABEL_31:
  __break(1u);
  return v15;
}

uint64_t sub_18224CA7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  LOBYTE(a3) = v5(a2, a3);

  return a3 & 1;
}

uint64_t sub_18224CAD8(unint64_t a1, unint64_t a2)
{
  v47 = *MEMORY[0x1E69E9840];
  v4 = a2 >> 62;
  v31 = HIDWORD(a1);
  if ((a2 >> 62) <= 1)
  {
    if (!v4)
    {
      v5 = BYTE6(a2);
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (v4 != 2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  v5 = v6 - v7;
  if (__OFSUB__(v6, v7))
  {
    __break(1u);
LABEL_8:
    if (__OFSUB__(HIDWORD(a1), a1))
    {
      goto LABEL_49;
    }

    v5 = HIDWORD(a1) - a1;
  }

LABEL_10:
  v8 = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    v46 = MEMORY[0x1E69E7CC0];
    v32 = a2 >> 62;
    sub_181DE0DB0(0, v5 & ~(v5 >> 63), 0);
    v9 = v32;
    if (v32)
    {
      if (v32 == 2)
      {
        v10 = *(a1 + 16);
      }

      else
      {
        v10 = a1;
      }
    }

    else
    {
      v10 = 0;
    }

    v33 = v10;
    if (v5 < 0)
    {
      goto LABEL_48;
    }

    v11 = 0;
    v8 = v46;
    v30 = &v34 + v10;
    do
    {
      if (v11 >= v5)
      {
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
LABEL_51:
        __break(1u);
      }

      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        goto LABEL_41;
      }

      v13 = v33 + v11;
      if (v9 == 2)
      {
        if (v13 < *(a1 + 16))
        {
          goto LABEL_43;
        }

        if (v13 >= *(a1 + 24))
        {
          goto LABEL_45;
        }

        v18 = sub_182AD1D58();
        if (!v18)
        {
          goto LABEL_51;
        }

        v15 = v18;
        v19 = sub_182AD1D88();
        v17 = v13 - v19;
        if (__OFSUB__(v13, v19))
        {
          goto LABEL_47;
        }
      }

      else
      {
        if (v9 != 1)
        {
          if (v13 >= BYTE6(a2))
          {
            goto LABEL_42;
          }

          v34 = a1;
          v35 = BYTE2(a1);
          v36 = BYTE3(a1);
          v37 = v31;
          v38 = BYTE5(a1);
          v39 = BYTE6(a1);
          v40 = HIBYTE(a1);
          v41 = a2;
          v42 = BYTE2(a2);
          v43 = BYTE3(a2);
          v44 = BYTE4(a2);
          v45 = BYTE5(a2);
          v20 = v30[v11];
          goto LABEL_36;
        }

        if (v13 < a1 || v13 >= a1 >> 32)
        {
          goto LABEL_44;
        }

        v14 = sub_182AD1D58();
        if (!v14)
        {
          goto LABEL_50;
        }

        v15 = v14;
        v16 = sub_182AD1D88();
        v17 = v13 - v16;
        if (__OFSUB__(v13, v16))
        {
          goto LABEL_46;
        }
      }

      v20 = *(v15 + v17);
      v9 = v32;
LABEL_36:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8394A0, &qword_182AF2300);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_182AE9730;
      *(v21 + 56) = MEMORY[0x1E69E7508];
      *(v21 + 64) = MEMORY[0x1E69E7558];
      *(v21 + 32) = v20;
      v22 = sub_182AD2FC8();
      v46 = v8;
      v25 = *(v8 + 16);
      v24 = *(v8 + 24);
      if (v25 >= v24 >> 1)
      {
        v29 = v22;
        v27 = v23;
        sub_181DE0DB0((v24 > 1), v25 + 1, 1);
        v9 = v32;
        v23 = v27;
        v22 = v29;
        v8 = v46;
      }

      *(v8 + 16) = v25 + 1;
      v26 = v8 + 16 * v25;
      *(v26 + 32) = v22;
      *(v26 + 40) = v23;
      ++v11;
    }

    while (v12 != v5);
  }

  return v8;
}

void NWTXTRecord.getEntry(for:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *v3;
  if (*(v5 + 16) && (v6 = sub_181E68520(a1, a2), (v7 & 1) != 0))
  {
    v8 = *(v5 + 56) + 24 * v6;
    v9 = *v8;
    v10 = *(v8 + 8);
    *a3 = *v8;
    *(a3 + 8) = v10;
    v11 = *(v8 + 16);
    *(a3 + 16) = v11;

    sub_1820F5148(v9, v10, v11);
  }

  else
  {
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = -1;
  }
}

uint64_t NWTXTRecord.Entry.data.getter()
{
  v1 = *v0;
  if (*(v0 + 16))
  {
    if (*(v0 + 16) == 1)
    {
      sub_181F49B58(*v0, *(v0 + 8));
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v2 = *(v0 + 8);

    return sub_181F76154(v1, v2);
  }

  return v1;
}

uint64_t NWTXTRecord.setEntry(_:for:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  v6 = *result;
  v7 = *(result + 8);
  v8 = *(result + 16);
  if (!*(result + 16))
  {
    if (v6)
    {
      v11 = 0;
    }

    else
    {
      v11 = v7 == 0xE000000000000000;
    }

    if (!v11 && (sub_182AD4268() & 1) == 0)
    {
      v24[0] = v6;
      v24[1] = v7;

      sub_1820F5148(v6, v7, 0);
      v12 = sub_18225B6FC(v24, v3, a2);

      if (!v12)
      {
        return 0;
      }

      goto LABEL_24;
    }

    goto LABEL_23;
  }

  if (v8 == 1)
  {
    v9 = v7 >> 62;
    if (v7 >> 62 != 3)
    {
      if (v9)
      {
        if (v9 == 1)
        {
          LODWORD(v10) = HIDWORD(v6) - v6;
          if (!__OFSUB__(HIDWORD(v6), v6))
          {
            v10 = v10;
            goto LABEL_20;
          }

          __break(1u);
LABEL_27:
          __break(1u);
          return result;
        }

        v17 = *(v6 + 16);
        v16 = *(v6 + 24);
        v18 = __OFSUB__(v16, v17);
        v10 = v16 - v17;
        if (v18)
        {
          goto LABEL_27;
        }
      }

      else
      {
        v10 = BYTE6(v7);
      }

LABEL_20:
      if (v10)
      {

        v19 = sub_18225A3C8(v6, v7, v3, a2, a3);

        if (v19)
        {
          goto LABEL_24;
        }

        return 0;
      }
    }

LABEL_23:
    v20 = sub_182AD3048();
    v21 = swift_unknownObjectRetain();
    v22 = nw_txt_record_set_key(v21, (v20 + 32), "", 0);
    swift_unknownObjectRelease();

    if (!v22)
    {
      return 0;
    }

    goto LABEL_24;
  }

  if (v6 | v7)
  {
    goto LABEL_23;
  }

  v13 = sub_182AD3048();
  v14 = swift_unknownObjectRetain();
  v15 = nw_txt_record_set_key(v14, (v13 + 32), 0, 0);
  swift_unknownObjectRelease();

  if (!v15)
  {
    return 0;
  }

LABEL_24:

  sub_1820F5148(v6, v7, v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v24[0] = *v3;
  sub_181E63F28(v6, v7, v8, a2, a3, isUniquelyReferenced_nonNull_native);

  *v3 = v24[0];
  return 1;
}

Swift::Bool __swiftcall NWTXTRecord.removeEntry(key:)(Swift::String key)
{
  object = key._object;
  countAndFlagsBits = key._countAndFlagsBits;
  v3 = sub_182AD3048();
  v4 = swift_unknownObjectRetain();
  v5 = nw_txt_record_remove_key(v4, (v3 + 32));
  swift_unknownObjectRelease();

  if (v5)
  {

    sub_182250074(countAndFlagsBits, object, v7);

    sub_1820F5188(v7[0], v7[1], v8);
  }

  return v5;
}

uint64_t NWTXTRecord.Entry.hash(into:)(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  if (*(v1 + 16))
  {
    if (*(v1 + 16) == 1)
    {
      sub_181F49B58(*v1, *(v1 + 8));
    }

    else
    {
      if (!(v2 | v3))
      {
        return sub_182AD4518();
      }

      v2 = 0;
      v3 = 0xC000000000000000;
    }
  }

  else
  {

    v2 = sub_181F76154(v2, v3);
    v3 = v4;
  }

  sub_182AD4518();
  sub_182AD2168();

  return sub_181D9D680(v2, v3);
}

unint64_t NWTXTRecord.Entry.debugDescription.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  if (*(v0 + 16))
  {
    if (*(v0 + 16) == 1)
    {
      sub_18224CAD8(v1, v2);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83B530, &unk_182AE5750);
      sub_181AB3DCC(&qword_1EA836F88, &qword_1EA83B530, &unk_182AE5750, MEMORY[0x1E69E6310]);
      v3 = sub_182AD2EC8();
      v5 = v4;

      MEMORY[0x1865D9CA0](v3, v5);

      MEMORY[0x1865D9CA0](62, 0xE100000000000000);
      return 60;
    }

    else if (v1 | v2)
    {
      return 0x3E7974706D653CLL;
    }

    else
    {
      return 0x3E656E6F6E3CLL;
    }
  }

  else
  {
    v7 = *v0;

    return v7;
  }
}

uint64_t NWTXTRecord.Entry.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  sub_182AD44E8();
  if (v3)
  {
    if (v3 == 1)
    {
      sub_181F49B58(v1, v2);
    }

    else
    {
      if (!(v1 | v2))
      {
        sub_182AD4518();
        return sub_182AD4558();
      }

      v1 = 0;
      v2 = 0xC000000000000000;
    }
  }

  else
  {

    v1 = sub_181F76154(v1, v2);
    v2 = v4;
  }

  sub_182AD4518();
  sub_182AD2168();
  sub_181D9D680(v1, v2);
  return sub_182AD4558();
}

uint64_t sub_18224D53C(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  sub_182AD44E8();
  if (v4)
  {
    if (v4 == 1)
    {
      sub_181F49B58(v2, v3);
    }

    else
    {
      if (!(v2 | v3))
      {
        sub_182AD4518();
        return sub_182AD4558();
      }

      v2 = 0;
      v3 = 0xC000000000000000;
    }
  }

  else
  {

    v2 = sub_181F76154(v2, v3);
    v3 = v5;
  }

  sub_182AD4518();
  sub_182AD2168();
  sub_181D9D680(v2, v3);
  return sub_182AD4558();
}

uint64_t sub_18224D60C()
{
  sub_182AD44E8();
  sub_182AD3028();
  sub_182AD30E8();

  return sub_182AD4558();
}

uint64_t sub_18224D674(uint64_t a1)
{
  sub_182AD3028();
  sub_182AD30E8();
}

uint64_t sub_18224D6C8(uint64_t a1)
{
  sub_182AD44E8();
  sub_182AD3028();
  sub_182AD30E8();

  return sub_182AD4558();
}

uint64_t sub_18224D72C(void *a1, uint64_t *a2)
{
  v2 = sub_182AD3028();
  v4 = v3;
  if (v2 == sub_182AD3028() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_182AD4268();
  }

  return v7 & 1;
}

uint64_t sub_18224D7C0(_BYTE *a1, unint64_t a2, uint64_t a3)
{
  if (a2)
  {
    if (a2 <= 14)
    {
      v7 = sub_181E68460(a1, &a1[a2]);
      v8 = v9 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      sub_182AD1DB8();
      swift_allocObject();
      v5 = sub_182AD1D48();
      v6 = v5;
      if (a2 >= 0x7FFFFFFF)
      {
        sub_182AD20C8();
        v7 = swift_allocObject();
        *(v7 + 16) = 0;
        *(v7 + 24) = a2;
        v8 = v6 | 0x8000000000000000;
      }

      else
      {
        v7 = a2 << 32;
        v8 = v5 | 0x4000000000000000;
      }
    }
  }

  else
  {
    v7 = 0;
    v8 = 0xC000000000000000;
  }

  swift_beginAccess();
  v10 = *(a3 + 16);
  v11 = *(a3 + 24);
  *(a3 + 16) = v7;
  *(a3 + 24) = v8;
  sub_181C1F2E4(v10, v11);
  return 1;
}

uint64_t sub_18224D8AC(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  v4 = a3[1];
  v5 = *a1;
  v6 = a1[1];

  return NWTXTRecord.subscript.setter(v5, v6, v3, v4);
}

void (*NWTXTRecord.subscript.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x28uLL);
  }

  v8 = v7;
  *a1 = v7;
  v7[3] = a3;
  v7[4] = v3;
  v7[2] = a2;
  *v7 = NWTXTRecord.subscript.getter(a2, a3);
  v8[1] = v9;
  return sub_18224D9B0;
}

void sub_18224D9B0(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = **a1;
  v4 = (*a1)[1];
  v5 = (*a1)[3];
  v6 = (*a1)[2];
  if (a2)
  {

    NWTXTRecord.subscript.setter(v3, v4, v6, v5);
  }

  else
  {

    NWTXTRecord.subscript.setter(v3, v4, v6, v5);
  }

  free(v2);
}

uint64_t NWTXTRecord.dictionary.getter()
{
  v1 = *v0;
  v3 = MEMORY[0x1E69E7CC8];
  sub_18224BC18(v1, &v3);
  return v3;
}

uint64_t sub_18224DB54(uint64_t result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a5 + 36) == a3)
  {
    v5 = *(*(a5 + 48) + 16 * a2);
    v6 = *(a5 + 56) + 24 * a2;
    v7 = *v6;
    v8 = *(v6 + 8);
    *result = *v6;
    *(result + 8) = v8;
    v9 = *(v6 + 16);
    *(result + 16) = v9;

    sub_1820F5148(v7, v8, v9);
    return v5;
  }

LABEL_8:
  __break(1u);
  return result;
}

void *sub_18224DC08(void *result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a5 + 36) == a3)
  {
    v5 = *(*(a5 + 48) + 8 * a2);
    *result = *(*(a5 + 56) + 8 * a2);

    return v5;
  }

LABEL_8:
  __break(1u);
  return result;
}

BOOL static NWTXTRecord.Index.== infix(_:_:)(_BOOL8 result, uint64_t a2)
{
  if ((*(result + 16) & 1) == 0 && (*(a2 + 16) & 1) == 0)
  {
    if (*(result + 8) == *(a2 + 8))
    {
      return *result == *a2;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

BOOL static NWTXTRecord.Index.< infix(_:_:)(_BOOL8 result, uint64_t a2)
{
  if ((*(result + 16) & 1) == 0 && (*(a2 + 16) & 1) == 0)
  {
    if (*(result + 8) == *(a2 + 8))
    {
      return *result < *a2;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

BOOL sub_18224DCFC(_BOOL8 result, uint64_t a2)
{
  if ((*(result + 16) & 1) == 0 && (*(a2 + 16) & 1) == 0)
  {
    if (*(result + 8) == *(a2 + 8))
    {
      return *result < *a2;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

BOOL sub_18224DD38(_BOOL8 result, uint64_t a2)
{
  if ((*(a2 + 16) & 1) == 0 && (*(result + 16) & 1) == 0)
  {
    if (*(a2 + 8) == *(result + 8))
    {
      return *a2 >= *result;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

BOOL sub_18224DD74(_BOOL8 result, uint64_t a2)
{
  if ((*(result + 16) & 1) == 0 && (*(a2 + 16) & 1) == 0)
  {
    if (*(result + 8) == *(a2 + 8))
    {
      return *result >= *a2;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

BOOL sub_18224DDB0(_BOOL8 result, uint64_t a2)
{
  if ((*(a2 + 16) & 1) == 0 && (*(result + 16) & 1) == 0)
  {
    if (*(a2 + 8) == *(result + 8))
    {
      return *a2 < *result;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

BOOL sub_18224DDEC(_BOOL8 result, uint64_t a2)
{
  if ((*(result + 16) & 1) == 0 && (*(a2 + 16) & 1) == 0)
  {
    if (*(result + 8) == *(a2 + 8))
    {
      return *result == *a2;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t NWTXTRecord.startIndex.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  result = sub_182AD3AD8();
  v5 = *(v3 + 36);
  *a1 = result;
  *(a1 + 8) = v5;
  *(a1 + 16) = 0;
  return result;
}

void NWTXTRecord.endIndex.getter(uint64_t a1@<X8>)
{
  v2 = *(*v1 + 36);
  *a1 = 1 << *(*v1 + 32);
  *(a1 + 8) = v2;
  *(a1 + 16) = 0;
}

uint64_t NWTXTRecord.index(after:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_18225A0F4(*a1, *(a1 + 8), *(a1 + 16), *v2);
  *a2 = result;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6 & 1;
  return result;
}

uint64_t sub_18224DED0@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  result = sub_182AD3AD8();
  v5 = *(v3 + 36);
  *a1 = result;
  *(a1 + 8) = v5;
  *(a1 + 16) = 0;
  return result;
}

void sub_18224DF18(uint64_t a1@<X8>)
{
  v2 = *(*v1 + 36);
  *a1 = 1 << *(*v1 + 32);
  *(a1 + 8) = v2;
  *(a1 + 16) = 0;
}

void (*sub_18224DF38(uint64_t **a1, uint64_t a2))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x21uLL);
  }

  v6 = v5;
  *a1 = v5;
  v7 = sub_18224DB54(v14, *a2, *(a2 + 8), *(a2 + 16), *v2);
  v9 = v8;
  v10 = v14[0];
  v11 = v14[1];
  v12 = v15;

  sub_1820F5148(v10, v11, v12);
  sub_1820F5168(v10, v11, v12);

  *v6 = v7;
  v6[1] = v9;
  v6[2] = v10;
  v6[3] = v11;
  *(v6 + 32) = v12;
  return sub_18224E020;
}

void sub_18224E020(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 16);
  v3 = *(*a1 + 24);
  v4 = *(*a1 + 32);

  sub_1820F5168(v2, v3, v4);

  free(v1);
}

uint64_t sub_18224E07C@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[1];
  v5 = *a1;
  v6[0] = v3;
  *(v6 + 9) = *(a1 + 25);
  return sub_18224B2C4(&v5, *v2, v2[1], a2);
}

uint64_t sub_18224E0BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = a1;
  *(a3 + 8) = a2;

  swift_unknownObjectRetain();
  result = sub_182AD3AD8();
  v6 = *(a1 + 36);
  *(a3 + 16) = result;
  *(a3 + 24) = v6;
  *(a3 + 32) = 0;
  *(a3 + 40) = 1 << *(a1 + 32);
  *(a3 + 48) = v6;
  *(a3 + 56) = 0;
  return result;
}

void sub_18224E198(unint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  if (a4 < 0)
  {
LABEL_23:
    __break(1u);
    return;
  }

  v7 = a3;
  v8 = result;
  v9 = a6;
  if (a4)
  {
    v11 = a5 + 64;
    sub_18225BB64(result, a2, a3 & 1);
    v13 = a2;
    v14 = 0;
    v15 = a4 - 1;
    v16 = v13;
    while ((v8 & 0x8000000000000000) == 0)
    {
      v18 = 1 << *(a5 + 32);
      if (v8 >= v18)
      {
        break;
      }

      v19 = v8 >> 6;
      v20 = *(v11 + 8 * (v8 >> 6));
      if (((v20 >> v8) & 1) == 0)
      {
        goto LABEL_21;
      }

      if (*(a5 + 36) != v13)
      {
        goto LABEL_22;
      }

      v21 = v20 & (-2 << (v8 & 0x3F));
      if (v21)
      {
        sub_18225BB58(v8, v13, v7 & 1);
        v8 = __clz(__rbit64(v21)) | v8 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v22 = v19 << 6;
        v23 = v19 + 1;
        v24 = (a5 + 72 + 8 * v19);
        while (v23 < (v18 + 63) >> 6)
        {
          v26 = *v24++;
          v25 = v26;
          v22 += 64;
          ++v23;
          if (v26)
          {
            sub_18225BB58(v8, v13, v7 & 1);
            v8 = __clz(__rbit64(v25)) + v22;
            goto LABEL_5;
          }
        }

        sub_18225BB58(v8, v13, v7 & 1);
        v8 = v18;
      }

LABEL_5:
      v7 = 0;
      v13 = v16;
      if (v14++ == v15)
      {
        v9 = a6;
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  sub_18225BB64(result, a2, a3 & 1);
  v16 = a2;
LABEL_19:
  *v9 = v8;
  *(v9 + 8) = v16;
  *(v9 + 16) = v7 & 1;
}

void sub_18224E388(unint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unsigned int a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  if (a4 < 0)
  {
LABEL_27:
    __break(1u);
  }

  else
  {
    v14 = a3;
    v15 = result;
    v17 = a2;
    sub_18225BB64(result, a2, a3 & 1);
    if (!a4)
    {
LABEL_22:
      *a9 = v15;
      *(a9 + 8) = v17;
      *(a9 + 16) = v14 & 1;
      return;
    }

    v37 = a9;
    v18 = 0;
    v19 = a8 + 64;
    v20 = a4 - 1;
    v21 = a6;
    v22 = v14 | a7;
    v23 = v17;
    v38 = v20;
    while ((v22 & 1) == 0)
    {
      if (v23 != a6)
      {
        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
LABEL_26:
        __break(1u);
        goto LABEL_27;
      }

      if (v15 == a5)
      {
        sub_18225BB58(a5, v23, 0);
        *v37 = 0;
        *(v37 + 8) = 0;
        *(v37 + 16) = -1;
        return;
      }

      if ((v15 & 0x8000000000000000) != 0)
      {
        goto LABEL_24;
      }

      v25 = 1 << *(a8 + 32);
      if (v15 >= v25)
      {
        goto LABEL_24;
      }

      v26 = v15 >> 6;
      v27 = *(v19 + 8 * (v15 >> 6));
      if (((v27 >> v15) & 1) == 0)
      {
        goto LABEL_25;
      }

      if (*(a8 + 36) != a6)
      {
        goto LABEL_26;
      }

      v28 = v27 & (-2 << (v15 & 0x3F));
      if (v28)
      {
        sub_18225BB58(v15, v23, 0);
        v15 = __clz(__rbit64(v28)) | v15 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v29 = v19;
        v30 = a7;
        v31 = a5;
        v32 = v26 << 6;
        v33 = v26 + 1;
        v34 = (a8 + 72 + 8 * v26);
        while (v33 < (v25 + 63) >> 6)
        {
          v36 = *v34++;
          v35 = v36;
          v32 += 64;
          ++v33;
          if (v36)
          {
            sub_18225BB58(v15, v23, 0);
            v15 = __clz(__rbit64(v35)) + v32;
            goto LABEL_19;
          }
        }

        sub_18225BB58(v15, v23, 0);
        v15 = v25;
LABEL_19:
        a5 = v31;
        a7 = v30;
        v19 = v29;
        v21 = a6;
      }

      v23 = v21;
      v22 = a7;
      if (v18++ == v38)
      {
        v14 = 0;
        v17 = v21;
        a9 = v37;
        goto LABEL_22;
      }
    }
  }

  __break(1u);
}

uint64_t sub_18224E5AC(uint64_t result, uint64_t a2)
{
  if (*(result + 16) & 1) != 0 || (*(a2 + 16))
  {
    goto LABEL_13;
  }

  v2 = *(result + 8);
  if (v2 != *(a2 + 8))
  {
    __break(1u);
    goto LABEL_10;
  }

  if (*result < *a2)
  {
LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (*(a2 + 40))
  {
LABEL_14:
    __break(1u);
    return result;
  }

  if (v2 != *(a2 + 32))
  {
    goto LABEL_11;
  }

  if (*result >= *(a2 + 24))
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  return result;
}

uint64_t sub_18224E618(uint64_t result, uint64_t a2)
{
  if (*(result + 16) & 1) != 0 || (*(a2 + 16))
  {
    goto LABEL_13;
  }

  v2 = *(result + 8);
  if (v2 != *(a2 + 8))
  {
    __break(1u);
    goto LABEL_10;
  }

  if (*result < *a2)
  {
LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (*(a2 + 40))
  {
LABEL_14:
    __break(1u);
    return result;
  }

  if (*(a2 + 32) != v2)
  {
    goto LABEL_11;
  }

  if (*(a2 + 24) < *result)
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  return result;
}

uint64_t sub_18224E684(uint64_t result, uint64_t a2)
{
  if (*(result + 16) & 1) != 0 || (*(a2 + 16))
  {
    goto LABEL_13;
  }

  if (*(result + 8) != *(a2 + 8))
  {
    __break(1u);
    goto LABEL_10;
  }

  if (*result < *a2)
  {
LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if ((*(a2 + 40) | *(result + 40)))
  {
LABEL_14:
    __break(1u);
    return result;
  }

  if (*(a2 + 32) != *(result + 32))
  {
    goto LABEL_11;
  }

  if (*(a2 + 24) < *(result + 24))
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  return result;
}

uint64_t sub_18224E700@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_18225A0F4(*a1, *(a1 + 8), *(a1 + 16), *v2);
  *a2 = result;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6 & 1;
  return result;
}

uint64_t sub_18224E740(uint64_t *a1)
{
  v3 = *v1;
  v4 = *a1;
  v5 = a1[1];
  v6 = *(a1 + 16);
  v7 = sub_18225A0F4(*a1, v5, v6, v3);
  v9 = v8;
  v11 = v10;
  result = sub_18225BB58(v4, v5, v6);
  *a1 = v7;
  a1[1] = v9;
  *(a1 + 16) = v11 & 1;
  return result;
}

uint64_t sub_18224E7BC@<X0>(uint64_t a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  *a1 = v4;
  *(a1 + 8) = v3;

  swift_unknownObjectRetain();
  v5 = sub_182AD3AD8();
  v6 = *(v4 + 36);
  swift_unknownObjectRelease();

  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = 0;
  return result;
}

void *sub_18224E83C()
{
  v1 = sub_1822D0730(*v0, *(v0 + 8));
  swift_unknownObjectRelease();

  return v1;
}

uint64_t sub_18224E890()
{
  sub_181F9A944();

  return sub_182AD2E88();
}

uint64_t NWTXTRecord.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v36[5] = *MEMORY[0x1E69E9840];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_182AD45C8();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v36, v36[3]);
    sub_181C67934();
    sub_182AD4298();
    v6 = aBlock;
    v5 = v31;
    v7 = v31 >> 62;
    if ((v31 >> 62) > 1)
    {
      if (v7 != 2)
      {
        memset(v29, 0, 14);
        v9 = v29;
        v8 = 0;
        goto LABEL_23;
      }

      v10 = *(aBlock + 16);
      v11 = *(aBlock + 24);
      v12 = sub_182AD1D58();
      if (v12)
      {
        v13 = sub_182AD1D88();
        if (__OFSUB__(v10, v13))
        {
          goto LABEL_31;
        }

        v12 += v10 - v13;
      }

      v14 = __OFSUB__(v11, v10);
      v15 = v11 - v10;
      if (!v14)
      {
LABEL_17:
        v19 = sub_182AD1D78();
        if (v12)
        {
          if (v19 >= v15)
          {
            v8 = v15;
          }

          else
          {
            v8 = v19;
          }

          v9 = v12;
LABEL_23:
          v20 = nw_txt_record_create_with_bytes(v9, v8);
          sub_181C1F2E4(v6, v5);
          if (v20)
          {
            v21 = swift_allocObject();
            *(v21 + 16) = MEMORY[0x1E69E7CC8];
            v22 = (v21 + 16);
            v34 = sub_18225BD58;
            v35 = v21;
            aBlock = MEMORY[0x1E69E9820];
            v31 = 1107296256;
            v32 = sub_181E63AEC;
            v33 = &block_descriptor_16_0;
            v23 = _Block_copy(&aBlock);
            swift_unknownObjectRetain();

            nw_txt_record_apply(v20, v23);
            swift_unknownObjectRelease();
            _Block_release(v23);
            swift_beginAccess();
            v24 = *v22;

            *a2 = v24;
            a2[1] = v20;
LABEL_28:
            __swift_destroy_boxed_opaque_existential_1(v36);
            return __swift_destroy_boxed_opaque_existential_1(a1);
          }

LABEL_27:
          v25 = sub_182AD3C98();
          swift_allocError();
          v27 = v26;
          __swift_project_boxed_opaque_existential_1(a1, a1[3]);
          sub_182AD45A8();
          sub_182AD3C88();
          (*(*(v25 - 8) + 104))(v27, *MEMORY[0x1E69E6B00], v25);
          swift_willThrow();
          goto LABEL_28;
        }

LABEL_26:
        sub_181C1F2E4(aBlock, v31);
        goto LABEL_27;
      }

      __break(1u);
    }

    else if (!v7)
    {
      v29[0] = aBlock;
      LODWORD(v29[1]) = v31;
      WORD2(v29[1]) = WORD2(v31);
      v8 = BYTE6(v31);
      v9 = v29;
      goto LABEL_23;
    }

    v15 = (aBlock >> 32) - aBlock;
    if (aBlock >> 32 >= aBlock)
    {
      v16 = sub_182AD1D58();
      if (!v16)
      {
        sub_182AD1D78();
        goto LABEL_26;
      }

      v17 = v16;
      v18 = sub_182AD1D88();
      if (!__OFSUB__(aBlock, v18))
      {
        v12 = aBlock - v18 + v17;
        goto LABEL_17;
      }

LABEL_32:
      __break(1u);
    }

    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t NWTXTRecord.encode(to:)(void *a1)
{
  v4 = *v1;
  v3 = v1[1];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_182AD4618();
  bytes = nw_txt_record_get_bytes(v3);
  if (bytes)
  {
    v6 = bytes;
    length = nw_txt_record_get_length(v3);
    v8 = sub_181E63D00(v6, length);
    v10 = v9;
    __swift_mutable_project_boxed_opaque_existential_1(v15, v15[3]);
    sub_181C675F8();
    sub_182AD42C8();
    sub_181C1F2E4(v8, v10);
  }

  else
  {
    v11 = sub_182AD3CB8();
    swift_allocError();
    v13 = v12;
    v15[6] = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839510, &qword_182B06410) + 48);
    v13[3] = &type metadata for NWTXTRecord;
    *v13 = v4;
    v13[1] = v3;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);

    swift_unknownObjectRetain();
    sub_182AD45F8();
    sub_182AD3C88();
    (*(*(v11 - 8) + 104))(v13, *MEMORY[0x1E69E6B30], v11);
    swift_willThrow();
  }

  return __swift_destroy_boxed_opaque_existential_1(v15);
}

unint64_t sub_18224EEF0(uint64_t a1)
{
  sub_182AD44E8();
  if (a1)
  {
    MEMORY[0x1865DB070](1);
    v2 = a1;
  }

  else
  {
    v2 = 0;
  }

  MEMORY[0x1865DB070](v2);
  v3 = sub_182AD4558();

  return sub_18224F4E4(a1, v3);
}

unint64_t sub_18224EF74(uint64_t a1)
{
  v1 = a1;
  sub_182AD44E8();
  sub_182AD4518();
  v2 = sub_182AD4558();
  return sub_181A41F40(v1, v2);
}

unint64_t sub_18224EFDC(uint64_t a1)
{
  v1 = a1;
  v2 = a1;
  sub_182AD44E8();
  sub_182AD4518();
  if (v2 != 5)
  {
    MEMORY[0x1865DB070](v1);
  }

  v3 = sub_182AD4558();

  return sub_18224F55C(v1, v3);
}

unint64_t sub_18224F070(uint64_t a1, char a2)
{
  sub_182AD44E8();
  if (a2)
  {
    MEMORY[0x1865DB070](0);
  }

  else
  {
    MEMORY[0x1865DB070](1);
    MEMORY[0x1865DB0B0](a1);
  }

  v4 = sub_182AD4558();

  return sub_18224F5E0(a1, a2 & 1, v4);
}

unint64_t sub_18224F100(uint64_t a1)
{
  sub_182AD44E8();
  MEMORY[0x1865DB0B0](a1);
  v2 = sub_182AD4558();
  return sub_18224F668(a1, v2);
}

unint64_t sub_18224F168(uint64_t a1)
{
  v1 = a1;
  sub_182AD44E8();
  MEMORY[0x1865DB0B0](qword_182B014A8[v1]);
  v2 = sub_182AD4558();

  return sub_18224F6D4(v1, v2);
}

unint64_t sub_18224F1E0(uint64_t a1)
{
  sub_182AD3E78();
  v2 = sub_182AD2EA8();

  return sub_18224F754(a1, v2);
}

unint64_t sub_18224F244(uint64_t a1)
{
  v2 = sub_182AD3B08();

  return sub_18224F8EC(a1, v2);
}

unint64_t sub_18224F288(uint64_t *a1)
{
  sub_182AD44E8();
  sub_182AD30E8();
  type metadata accessor for NWActorID(0);
  sub_182AD2258();
  sub_18225BB70(&qword_1EA836BF0, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_182AD2EB8();
  v2 = sub_182AD4558();

  return sub_18224F9B4(a1, v2);
}

unint64_t sub_18224F354(uint64_t a1)
{
  sub_182AD2258();
  sub_18225BB70(&qword_1EA836BF0, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  v2 = sub_182AD2EA8();

  return sub_18224FB48(a1, v2);
}

unint64_t sub_18224F3EC(uint64_t a1)
{
  v2 = sub_182AD44D8();

  return sub_18224F668(a1, v2);
}

unint64_t sub_18224F430(uint64_t a1)
{
  sub_182AD44E8();
  type metadata accessor for CFString(0);
  sub_18225BB70(&unk_1EA83B630, type metadata accessor for CFString, &unk_182AE343C);
  sub_182AD2368();
  v2 = sub_182AD4558();

  return sub_18224FD08(a1, v2);
}

unint64_t sub_18224F4E4(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      v7 = *(*(v2 + 48) + 8 * result);
      if (v7)
      {
        if (v7 == a1)
        {
          return result;
        }
      }

      else if (!a1)
      {
        return result;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_18224F55C(unsigned __int8 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      v7 = *(*(v2 + 48) + result);
      if (v7 == 5)
      {
        if (a1 == 5)
        {
          return result;
        }
      }

      else if (v7 == a1)
      {
        return result;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_18224F5E0(uint64_t a1, char a2, uint64_t a3)
{
  v5 = -1 << *(v3 + 32);
  result = a3 & ~v5;
  if ((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v7 = ~v5;
    do
    {
      v8 = *(v3 + 48) + 16 * result;
      if (*(v8 + 8) == 1)
      {
        if (a2)
        {
          return result;
        }
      }

      else if ((a2 & 1) == 0 && *v8 == a1)
      {
        return result;
      }

      result = (result + 1) & v7;
    }

    while (((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_18224F668(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_18224F6D4(char a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (qword_182B014A8[*(*(v2 + 48) + result)] == qword_182B014A8[a1])
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_18224F754(uint64_t a1, uint64_t a2)
{
  v22 = a1;
  v4 = sub_182AD3E78();
  v6.n128_f64[0] = MEMORY[0x1EEE9AC00](v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v21 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v5 + 16);
    v12 = v5 + 16;
    v13 = v14;
    v15 = *(v12 + 56);
    v16 = (v12 - 8);
    do
    {
      v17 = v12;
      v13(v8, *(v23 + 48) + v15 * v10, v4, v6);
      v18 = sub_182AD2F48();
      (*v16)(v8, v4);
      if (v18)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      v12 = v17;
    }

    while (((*(v21 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

unint64_t sub_18224F8EC(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_181FADD54(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x1865DA680](v9, a1);
      sub_181FADDB0(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_18224F9B4(uint64_t *a1, uint64_t a2)
{
  v5 = type metadata accessor for NWActorID(0);
  MEMORY[0x1EEE9AC00](v5);
  v8 = (&v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v12 = *a1;
    v13 = a1[1];
    v14 = *(v6 + 72);
    while (1)
    {
      sub_18225BC14(*(v2 + 48) + v14 * v10, v8, type metadata accessor for NWActorID);
      v15 = *v8 == v12 && v8[1] == v13;
      if (v15 || (sub_182AD4268()) && (sub_182AD2218())
      {
        break;
      }

      sub_18225BBB8(v8);
      v10 = (v10 + 1) & v11;
      if (((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        return v10;
      }
    }

    sub_18225BBB8(v8);
  }

  return v10;
}

unint64_t sub_18224FB48(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = sub_182AD2258();
  v5 = *(v4 - 8);
  v6.n128_f64[0] = MEMORY[0x1EEE9AC00](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v19 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v5 + 16);
    v13 = v5 + 16;
    v12 = v14;
    v15 = *(v13 + 56);
    do
    {
      v12(v8, *(v21 + 48) + v15 * v10, v4, v6);
      sub_18225BB70(&qword_1EA83B620, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
      v16 = sub_182AD2F48();
      (*(v13 - 8))(v8, v4);
      if (v16)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v19 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

unint64_t sub_18224FD08(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    type metadata accessor for CFString(0);
    sub_18225BB70(&unk_1EA83B630, type metadata accessor for CFString, &unk_182AE343C);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_182AD2358();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t sub_18224FE14(uint64_t a1, unint64_t a2)
{
  v2 = sub_182AD3258();
  v6 = sub_18224FE94(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_18224FE94(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_182AD39C8();
    if (!v9 || (v10 = v9, v11 = sub_181AC1BE8(v9, 0), v12 = sub_1822B072C(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_182AD30C8();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_182AD30C8();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_182AD3CF8();
LABEL_4:

  return sub_182AD30C8();
}

uint64_t sub_18224FFEC(uint64_t a1)
{
  v2 = v1;
  v3 = sub_181A41ED8(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *v1;
  v11 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_182254CDC();
    v7 = v11;
  }

  v8 = v5;
  v9 = *(*(v7 + 56) + 8 * v5);
  sub_181BE0664(v8, v7);
  *v2 = v7;
  return v9;
}

uint64_t sub_182250074@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  result = sub_181E68520(a1, a2);
  if (v7)
  {
    v8 = result;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v13 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_182254FA0();
      v10 = v13;
    }

    v11 = *(v10 + 56) + 24 * v8;
    v12 = *(v11 + 16);
    *a3 = *v11;
    *(a3 + 16) = v12;
    result = sub_181FAA328(v8, v10);
    *v4 = v10;
  }

  else
  {
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = -1;
  }

  return result;
}

uint64_t sub_182250128(uint64_t a1)
{
  v2 = v1;
  v3 = sub_18224F100(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *v1;
  v11 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_18225563C();
    v7 = v11;
  }

  v8 = v5;
  v9 = *(*(v7 + 56) + 8 * v5);
  sub_181FAAA70(v8, v7);
  *v2 = v7;
  return v9;
}

uint64_t sub_1822501BC(uint64_t a1)
{
  v2 = v1;
  v3 = sub_18224F100(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *v1;
  v11 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_182255A5C();
    v7 = v11;
  }

  v8 = v5;
  v9 = *(*(v7 + 56) + 8 * v5);
  sub_181FAAA70(v8, v7);
  *v2 = v7;
  return v9;
}

double sub_182250244@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = sub_18224F1E0(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v13 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_182255D5C();
      v9 = v13;
    }

    v10 = *(v9 + 48);
    v11 = sub_182AD3E78();
    (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v7, v11);
    sub_181E7BFC4((*(v9 + 56) + 32 * v7), a2);
    sub_181FAADA8(v7, v9);
    *v3 = v9;
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t sub_182250320@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_18224F288(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v21 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1822564DC();
      v9 = v21;
    }

    v10 = *(v9 + 48);
    v11 = type metadata accessor for NWActorID(0);
    sub_18225BBB8(v10 + *(*(v11 - 8) + 72) * v7);
    v12 = *(v9 + 56);
    v13 = type metadata accessor for NWActorDiscoveryMechanism(0);
    v20 = *(v13 - 8);
    sub_18225BC7C(v12 + *(v20 + 72) * v7, a2, type metadata accessor for NWActorDiscoveryMechanism);
    sub_181FAB390(v7, v9);
    *v3 = v9;
    v14 = *(v20 + 56);
    v15 = a2;
    v16 = 0;
    v17 = v13;
  }

  else
  {
    v18 = type metadata accessor for NWActorDiscoveryMechanism(0);
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a2;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

uint64_t sub_1822504A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = sub_181CBDA14(a1, a2, sub_181D04C70);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v20 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_182256A10();
      v10 = v20;
    }

    v11 = *(v10 + 56);
    v12 = type metadata accessor for NWActorSystem.ServerRole(0);
    v19 = *(v12 - 8);
    sub_18225BC7C(v11 + *(v19 + 72) * v8, a3, type metadata accessor for NWActorSystem.ServerRole);
    sub_181FABA20(v8, v10);
    *v4 = v10;
    v13 = *(v19 + 56);
    v14 = a3;
    v15 = 0;
    v16 = v12;
  }

  else
  {
    v17 = type metadata accessor for NWActorSystem.ServerRole(0);
    v13 = *(*(v17 - 8) + 56);
    v16 = v17;
    v14 = a3;
    v15 = 1;
  }

  return v13(v14, v15, 1, v16);
}

uint64_t sub_182250624@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_18224F354(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v21 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_182257714();
      v9 = v21;
    }

    v10 = *(v9 + 48);
    v11 = sub_182AD2258();
    (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v7, v11);
    v12 = *(v9 + 56);
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83AB10, &unk_182AF6860);
    v20 = *(v13 - 8);
    (*(v20 + 32))(a2, v12 + *(v20 + 72) * v7, v13);
    sub_181FAC2C4(v7, v9);
    *v3 = v9;
    v14 = *(v20 + 56);
    v15 = a2;
    v16 = 0;
    v17 = v13;
  }

  else
  {
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83AB10, &unk_182AF6860);
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a2;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

uint64_t sub_1822507DC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83B5C8, &qword_182B01380);
  v31 = v4;
  result = sub_182AD3ED8();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v31 & 1) == 0)
      {
      }

      sub_182AD44E8();
      if (v20)
      {
        MEMORY[0x1865DB070](1);
        v22 = v20;
      }

      else
      {
        v22 = 0;
      }

      MEMORY[0x1865DB070](v22);
      result = sub_182AD4558();
      v23 = -1 << *(v7 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v31 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_36;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v2;
    if (v30 >= 64)
    {
      bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v7;
  return result;
}

uint64_t sub_182250A84(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for SecFramer(0);
  v35 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v37 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83B5A0, &qword_182B01358);
  v36 = v4;
  result = sub_182AD3ED8();
  v9 = result;
  if (*(v7 + 16))
  {
    v34 = v2;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v21 = v18 | (v10 << 6);
      v22 = *(*(v7 + 48) + v21);
      v23 = *(v35 + 72);
      v24 = *(v7 + 56) + v23 * v21;
      if (v36)
      {
        sub_18225BC7C(v24, v37, type metadata accessor for SecFramer);
      }

      else
      {
        sub_18225BC14(v24, v37, type metadata accessor for SecFramer);
      }

      sub_182AD44E8();
      sub_182AD4518();
      if (v22 != 5)
      {
        MEMORY[0x1865DB070](v22);
      }

      result = sub_182AD4558();
      v25 = -1 << *(v9 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v16 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v16 + 8 * v27);
          if (v31 != -1)
          {
            v17 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v26) & ~*(v16 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v9 + 48) + v17) = v22;
      result = sub_18225BC7C(v37, *(v9 + 56) + v23 * v17, type metadata accessor for SecFramer);
      ++*(v9 + 16);
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v10 >= v15)
      {
        break;
      }

      v20 = v11[v10];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_36;
    }

    v32 = 1 << *(v7 + 32);
    v3 = v34;
    if (v32 >= 64)
    {
      bzero((v7 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v32;
    }

    *(v7 + 16) = 0;
  }

LABEL_36:
  *v3 = v9;
  return result;
}

uint64_t sub_182250DFC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83B5C0, &qword_182B01378);
  v35 = v4;
  result = sub_182AD3ED8();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(v5 + 56);
      v22 = *(v5 + 48) + 16 * v20;
      v23 = *v22;
      v24 = *(v22 + 8);
      v25 = *(v21 + 8 * v20);
      if ((v35 & 1) == 0)
      {
      }

      sub_182AD44E8();
      if (v24)
      {
        MEMORY[0x1865DB070](0);
      }

      else
      {
        MEMORY[0x1865DB070](1);
        MEMORY[0x1865DB0B0](v23);
      }

      result = sub_182AD4558();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 16 * v15;
      *v16 = v23;
      *(v16 + 8) = v24;
      *(*(v7 + 56) + 8 * v15) = v25;
      ++*(v7 + 16);
      v5 = v34;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_36;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v7;
  return result;
}

uint64_t sub_1822510BC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83B5A8, &qword_182B01360);
  result = sub_182AD3ED8();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v4;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      sub_182AD44E8();
      MEMORY[0x1865DB0B0](v20);
      result = sub_182AD4558();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v30 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_31;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_31:
  *v3 = v7;
  return result;
}

uint64_t sub_18225133C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83B590, &qword_182B01348);
  v42 = v4;
  result = sub_182AD3ED8();
  v7 = result;
  if (*(v5 + 16))
  {
    v39 = v2;
    v40 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    v41 = result;
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v43 = (v12 - 1) & v12;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = *(*(v5 + 48) + v21);
      v23 = (*(v5 + 56) + 56 * v21);
      v24 = *v23;
      v25 = v23[1];
      v27 = v23[2];
      v26 = v23[3];
      v29 = v23[4];
      v28 = v23[5];
      v45 = v23[6];
      v46 = v22;
      if ((v42 & 1) == 0)
      {
        sub_18206A3C4(v24, v25, v27, v26, v29, v28, v45);
      }

      v44 = v28;
      v7 = v41;
      sub_182AD44E8();
      MEMORY[0x1865DB0B0](qword_182B014A8[v46]);
      v30 = sub_182AD4558();
      v31 = -1 << *(v41 + 32);
      v32 = v30 & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v14 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        result = v44;
        v16 = v26;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v14 + 8 * v33);
          if (v37 != -1)
          {
            v15 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v32) & ~*(v14 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
      result = v44;
      v16 = v26;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v41 + 48) + v15) = v46;
      v17 = (*(v41 + 56) + 56 * v15);
      *v17 = v24;
      v17[1] = v25;
      v17[2] = v27;
      v17[3] = v16;
      v17[4] = v29;
      v17[5] = result;
      v17[6] = v45;
      ++*(v41 + 16);
      v5 = v40;
      v12 = v43;
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v43 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v42 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_33;
    }

    v38 = 1 << *(v5 + 32);
    v3 = v39;
    if (v38 >= 64)
    {
      bzero(v9, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v38;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_182251654(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83B660, &qword_182B01410);
  result = sub_182AD3ED8();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v4;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      sub_182AD44E8();
      MEMORY[0x1865DB070](v20);
      result = sub_182AD4558();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v30 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_31;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_31:
  *v3 = v7;
  return result;
}

uint64_t sub_1822518D4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83B668, &qword_182B01418);
  result = sub_182AD3ED8();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v4;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      sub_182AD44E8();
      sub_182AD4518();
      result = sub_182AD4558();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v30 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_31;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_31:
  *v3 = v7;
  return result;
}

uint64_t sub_182251B54(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83B658, &qword_182B01408);
  v30 = v4;
  result = sub_182AD3ED8();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v30 & 1) == 0)
      {
      }

      sub_182AD44E8();
      MEMORY[0x1865DB0B0](v20);
      result = sub_182AD4558();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v30 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_182251DE4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83B6C8, &qword_182B01478);
  result = sub_182AD3ED8();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = v19 | (v8 << 6);
      v23 = *(v5 + 48) + 40 * v22;
      if (v4)
      {
        v24 = *v23;
        v25 = *(v23 + 16);
        v38 = *(v23 + 32);
        v36 = v24;
        v37 = v25;
        sub_181E7BFC4((*(v5 + 56) + 32 * v22), v35);
      }

      else
      {
        sub_181FADD54(v23, &v36);
        sub_181C65504(*(v5 + 56) + 32 * v22, v35);
      }

      result = sub_182AD3B08();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 40 * v15;
      v17 = v36;
      v18 = v37;
      *(v16 + 32) = v38;
      *v16 = v17;
      *(v16 + 16) = v18;
      result = sub_181E7BFC4(v35, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if (v4)
    {
      v33 = 1 << *(v5 + 32);
      if (v33 >= 64)
      {
        bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v33;
      }

      *(v5 + 16) = 0;
    }

    v3 = v34;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_18225209C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_182AD3E78();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83B628, &unk_182B013D0);
  v39 = v4;
  result = sub_182AD3ED8();
  v11 = result;
  if (*(v9 + 16))
  {
    v42 = v8;
    v43 = v5;
    v35 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v36 = (v6 + 16);
    v37 = v6;
    v40 = (v6 + 32);
    v18 = result + 64;
    v38 = v9;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v41 = *(v6 + 72);
      v25 = v24 + v41 * v23;
      if (v39)
      {
        (*v40)(v42, v25, v43);
        sub_181E7BFC4((*(v9 + 56) + 32 * v23), v44);
      }

      else
      {
        (*v36)(v42, v25, v43);
        sub_181C65504(*(v9 + 56) + 32 * v23, v44);
      }

      result = sub_182AD2EA8();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        v6 = v37;
        v9 = v38;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
      v6 = v37;
      v9 = v38;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v40)((*(v11 + 48) + v41 * v19), v42, v43);
      result = sub_181E7BFC4(v44, (*(v11 + 56) + 32 * v19));
      ++*(v11 + 16);
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_18225243C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v45 = sub_182AD2258();
  v5 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v44 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83B6C0, &qword_182B01470);
  v42 = v4;
  result = sub_182AD3ED8();
  v9 = result;
  if (*(v7 + 16))
  {
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v38 = v2;
    v39 = (v5 + 16);
    v40 = v7;
    v41 = v5;
    v43 = (v5 + 32);
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(v7 + 56);
      v24 = (*(v7 + 48) + 16 * v22);
      v26 = *v24;
      v25 = v24[1];
      v27 = *(v41 + 72);
      v28 = v23 + v27 * v22;
      if (v42)
      {
        (*v43)(v44, v28, v45);
      }

      else
      {
        (*v39)(v44, v28, v45);
      }

      sub_182AD44E8();
      sub_182AD30E8();
      result = sub_182AD4558();
      v29 = -1 << *(v9 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v16 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v16 + 8 * v31);
          if (v35 != -1)
          {
            v17 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v30) & ~*(v16 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v26;
      v18[1] = v25;
      result = (*v43)(*(v9 + 56) + v27 * v17, v44, v45);
      ++*(v9 + 16);
      v7 = v40;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v42 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_34;
    }

    v36 = 1 << *(v7 + 32);
    v3 = v38;
    if (v36 >= 64)
    {
      bzero(v11, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v36;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

uint64_t sub_1822527BC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v7 = v4;
  v8 = a2;
  v9 = type metadata accessor for NWActorID(0);
  v41 = *(v9 - 8);
  v42 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v43 = v8;
  result = sub_182AD3ED8();
  v14 = v12;
  v15 = result;
  if (*(v12 + 16))
  {
    v39 = v7;
    v40 = v12;
    v16 = 0;
    v17 = (v12 + 64);
    v18 = 1 << *(v12 + 32);
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    else
    {
      v19 = -1;
    }

    v20 = v19 & *(v12 + 64);
    v21 = (v18 + 63) >> 6;
    v22 = result + 64;
    while (v20)
    {
      v24 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
LABEL_15:
      v27 = v24 | (v16 << 6);
      v28 = *(v41 + 72);
      v29 = *(v14 + 48) + v28 * v27;
      if (v43)
      {
        sub_18225BC7C(v29, v11, type metadata accessor for NWActorID);
        v44 = *(*(v14 + 56) + 8 * v27);
      }

      else
      {
        sub_18225BC14(v29, v11, type metadata accessor for NWActorID);
        v44 = *(*(v14 + 56) + 8 * v27);
      }

      sub_182AD44E8();
      sub_182AD30E8();
      sub_182AD2258();
      sub_18225BB70(&qword_1EA836BF0, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      sub_182AD2EB8();
      result = sub_182AD4558();
      v30 = -1 << *(v15 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v22 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        v14 = v40;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v22 + 8 * v32);
          if (v36 != -1)
          {
            v23 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v23 = __clz(__rbit64((-1 << v31) & ~*(v22 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
      v14 = v40;
LABEL_7:
      *(v22 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      result = sub_18225BC7C(v11, *(v15 + 48) + v28 * v23, type metadata accessor for NWActorID);
      *(*(v15 + 56) + 8 * v23) = v44;
      ++*(v15 + 16);
    }

    v25 = v16;
    while (1)
    {
      v16 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v16 >= v21)
      {
        break;
      }

      v26 = v17[v16];
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v20 = (v26 - 1) & v26;
        goto LABEL_15;
      }
    }

    if ((v43 & 1) == 0)
    {

      v7 = v39;
      goto LABEL_34;
    }

    v37 = 1 << *(v14 + 32);
    v7 = v39;
    if (v37 >= 64)
    {
      bzero(v17, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v17 = -1 << v37;
    }

    *(v14 + 16) = 0;
  }

LABEL_34:
  *v7 = v15;
  return result;
}

uint64_t sub_182252BA0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for NWActorDiscoveryMechanism(0);
  v41 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v44 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for NWActorID(0);
  v39 = *(v7 - 8);
  v40 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83B650, &qword_182B01400);
  v42 = v4;
  result = sub_182AD3ED8();
  v12 = result;
  if (*(v10 + 16))
  {
    v37 = v2;
    v38 = v10;
    v13 = 0;
    v14 = (v10 + 64);
    v15 = 1 << *(v10 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v10 + 64);
    v18 = (v15 + 63) >> 6;
    v19 = result + 64;
    while (v17)
    {
      v21 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_15:
      v24 = v21 | (v13 << 6);
      v25 = *(v10 + 48);
      v43 = *(v39 + 72);
      v26 = v25 + v43 * v24;
      if (v42)
      {
        sub_18225BC7C(v26, v9, type metadata accessor for NWActorID);
        v27 = *(v41 + 72);
        sub_18225BC7C(*(v10 + 56) + v27 * v24, v44, type metadata accessor for NWActorDiscoveryMechanism);
      }

      else
      {
        sub_18225BC14(v26, v9, type metadata accessor for NWActorID);
        v27 = *(v41 + 72);
        sub_18225BC14(*(v10 + 56) + v27 * v24, v44, type metadata accessor for NWActorDiscoveryMechanism);
      }

      sub_182AD44E8();
      sub_182AD30E8();
      sub_182AD2258();
      sub_18225BB70(&qword_1EA836BF0, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      sub_182AD2EB8();
      result = sub_182AD4558();
      v28 = -1 << *(v12 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v19 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        v10 = v38;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v19 + 8 * v30);
          if (v34 != -1)
          {
            v20 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v29) & ~*(v19 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
      v10 = v38;
LABEL_7:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      sub_18225BC7C(v9, *(v12 + 48) + v43 * v20, type metadata accessor for NWActorID);
      result = sub_18225BC7C(v44, *(v12 + 56) + v27 * v20, type metadata accessor for NWActorDiscoveryMechanism);
      ++*(v12 + 16);
    }

    v22 = v13;
    while (1)
    {
      v13 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v13 >= v18)
      {
        break;
      }

      v23 = v14[v13];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v17 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v42 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_34;
    }

    v35 = 1 << *(v10 + 32);
    v3 = v37;
    if (v35 >= 64)
    {
      bzero(v14, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v35;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v12;
  return result;
}

uint64_t sub_182253050(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for NWActorID(0);
  v36 = *(v5 - 8);
  v37 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83B648, &qword_182B013F8);
  v38 = v4;
  result = sub_182AD3ED8();
  v10 = result;
  if (*(v8 + 16))
  {
    v34 = v2;
    v35 = v8;
    v11 = 0;
    v12 = (v8 + 64);
    v13 = 1 << *(v8 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v8 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_15:
      v22 = v19 | (v11 << 6);
      v23 = *(v36 + 72);
      v24 = *(v8 + 48) + v23 * v22;
      if (v38)
      {
        sub_18225BC7C(v24, v7, type metadata accessor for NWActorID);
        v39 = *(*(v8 + 56) + 16 * v22);
      }

      else
      {
        sub_18225BC14(v24, v7, type metadata accessor for NWActorID);
        v39 = *(*(v8 + 56) + 16 * v22);
      }

      sub_182AD44E8();
      sub_182AD30E8();
      sub_182AD2258();
      sub_18225BB70(&qword_1EA836BF0, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      sub_182AD2EB8();
      result = sub_182AD4558();
      v25 = -1 << *(v10 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v17 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        v8 = v35;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v17 + 8 * v27);
          if (v31 != -1)
          {
            v18 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v26) & ~*(v17 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
      v8 = v35;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = sub_18225BC7C(v7, *(v10 + 48) + v23 * v18, type metadata accessor for NWActorID);
      *(*(v10 + 56) + 16 * v18) = v39;
      ++*(v10 + 16);
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_34;
    }

    v32 = 1 << *(v8 + 32);
    v3 = v34;
    if (v32 >= 64)
    {
      bzero(v12, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v32;
    }

    *(v8 + 16) = 0;
  }

LABEL_34:
  *v3 = v10;
  return result;
}

uint64_t sub_182253434(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for NWActorSystem.ServerRole(0);
  v39 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v41 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83B6B8, &qword_182B01468);
  v40 = v4;
  result = sub_182AD3ED8();
  v9 = result;
  if (*(v7 + 16))
  {
    v37 = v2;
    v38 = v7;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(v7 + 56);
      v24 = (*(v7 + 48) + 16 * v22);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(v39 + 72);
      v28 = v23 + v27 * v22;
      if (v40)
      {
        sub_18225BC7C(v28, v41, type metadata accessor for NWActorSystem.ServerRole);
      }

      else
      {
        sub_18225BC14(v28, v41, type metadata accessor for NWActorSystem.ServerRole);
      }

      sub_182AD44E8();
      sub_182AD30E8();
      result = sub_182AD4558();
      v29 = -1 << *(v9 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v16 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v16 + 8 * v31);
          if (v35 != -1)
          {
            v17 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v30) & ~*(v16 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v25;
      v18[1] = v26;
      result = sub_18225BC7C(v41, *(v9 + 56) + v27 * v17, type metadata accessor for NWActorSystem.ServerRole);
      ++*(v9 + 16);
      v7 = v38;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_34;
    }

    v36 = 1 << *(v7 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v11, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v36;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

uint64_t sub_1822537AC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_182AD2258();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83B688, &unk_182B01438);
  v38 = v4;
  result = sub_182AD3ED8();
  v11 = result;
  if (*(v9 + 16))
  {
    v42 = v8;
    v43 = v5;
    v34 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v35 = (v6 + 16);
    v36 = v6;
    v39 = (v6 + 32);
    v18 = result + 64;
    v37 = v9;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v41 = *(v6 + 72);
      v25 = v24 + v41 * v23;
      if (v38)
      {
        (*v39)(v42, v25, v43);
        v40 = *(*(v9 + 56) + 16 * v23);
      }

      else
      {
        (*v35)(v42, v25, v43);
        v40 = *(*(v9 + 56) + 16 * v23);
      }

      sub_18225BB70(&qword_1EA836BF0, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      result = sub_182AD2EA8();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        v6 = v36;
        v9 = v37;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
      v6 = v36;
      v9 = v37;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v39)(*(v11 + 48) + v41 * v19, v42, v43);
      *(*(v11 + 56) + 16 * v19) = v40;
      ++*(v11 + 16);
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v34;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_182253B84(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA839610, &qword_182AE6060);
  v5 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v38 = &v34 - v6;
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83B640, &qword_182B013F0);
  v37 = v4;
  result = sub_182AD3ED8();
  v9 = result;
  if (*(v7 + 16))
  {
    v34 = v3;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v35 = (v5 + 16);
    v36 = v5;
    v16 = (v5 + 32);
    v17 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(*(v7 + 48) + 8 * v22);
      v24 = *(v5 + 72);
      v25 = *(v7 + 56) + v24 * v22;
      if (v37)
      {
        (*v16)(v38, v25, v39);
      }

      else
      {
        (*v35)(v38, v25, v39);
      }

      result = sub_182AD44D8();
      v26 = -1 << *(v9 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v9 + 48) + 8 * v18) = v23;
      result = (*v16)(*(v9 + 56) + v24 * v18, v38, v39);
      ++*(v9 + 16);
      v5 = v36;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_34;
    }

    v33 = 1 << *(v7 + 32);
    v3 = v34;
    if (v33 >= 64)
    {
      bzero((v7 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v33;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

uint64_t sub_182253ED8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83B5B0, &qword_182B01368);
  v33 = v4;
  result = sub_182AD3ED8();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v5 + 56) + 32 * v20);
      if (v33)
      {
        sub_181E7BFC4(v24, v34);
      }

      else
      {
        sub_181C65504(v24, v34);
      }

      sub_182AD44E8();
      sub_182AD30E8();
      result = sub_182AD4558();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = sub_181E7BFC4(v34, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_182254190(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83AB10, &unk_182AF6860);
  v5 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v51 = &v40 - v6;
  v7 = sub_182AD2258();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v53 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83B698, &qword_182B01448);
  v47 = v4;
  result = sub_182AD3ED8();
  v12 = result;
  if (*(v10 + 16))
  {
    v13 = 0;
    v14 = v8;
    v15 = (v10 + 64);
    v16 = 1 << *(v10 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v10 + 64);
    v19 = (v16 + 63) >> 6;
    v43 = (v14 + 16);
    v44 = v14;
    v41 = v2;
    v42 = v5 + 16;
    v45 = v10;
    v46 = v5;
    v48 = (v5 + 32);
    v49 = (v14 + 32);
    v20 = result + 64;
    v21 = v14;
    while (v18)
    {
      v23 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_15:
      v26 = v23 | (v13 << 6);
      v27 = *(v10 + 48);
      v50 = *(v21 + 72);
      v28 = v27 + v50 * v26;
      if (v47)
      {
        (*v49)(v53, v28, v7);
        v29 = *(v10 + 56);
        v30 = *(v46 + 72);
        (*(v46 + 32))(v51, v29 + v30 * v26, v52);
      }

      else
      {
        (*v43)(v53, v28, v7);
        v31 = *(v10 + 56);
        v30 = *(v46 + 72);
        (*(v46 + 16))(v51, v31 + v30 * v26, v52);
      }

      sub_18225BB70(&qword_1EA836BF0, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      result = sub_182AD2EA8();
      v32 = -1 << *(v12 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v20 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v20 + 8 * v34);
          if (v38 != -1)
          {
            v22 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v33) & ~*(v20 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v20 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      (*v49)((*(v12 + 48) + v50 * v22), v53, v7);
      result = (*v48)(*(v12 + 56) + v30 * v22, v51, v52);
      ++*(v12 + 16);
      v21 = v44;
      v10 = v45;
    }

    v24 = v13;
    while (1)
    {
      v13 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v13 >= v19)
      {
        break;
      }

      v25 = v15[v13];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v18 = (v25 - 1) & v25;
        goto LABEL_15;
      }
    }

    if ((v47 & 1) == 0)
    {

      v3 = v41;
      goto LABEL_34;
    }

    v39 = 1 << *(v10 + 32);
    v3 = v41;
    if (v39 >= 64)
    {
      bzero(v15, ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v39;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v12;
  return result;
}

uint64_t sub_182254640(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_182AD2258();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83B610, &qword_182B013C8);
  v39 = v4;
  result = sub_182AD3ED8();
  v11 = result;
  if (*(v9 + 16))
  {
    v43 = v8;
    v35 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v36 = (v6 + 16);
    v37 = v9;
    v38 = v6;
    v40 = (v6 + 32);
    v18 = result + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v42 = *(v38 + 72);
      v25 = v24 + v42 * v23;
      if (v39)
      {
        (*v40)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      else
      {
        (*v36)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      sub_18225BB70(&qword_1EA836BF0, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      result = sub_182AD2EA8();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v40)(*(v11 + 48) + v42 * v19, v43, v5);
      *(*(v11 + 56) + 8 * v19) = v41;
      ++*(v11 + 16);
      v9 = v37;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_182254A1C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83B5F8, &unk_182B013B0);
  v37 = v4;
  result = sub_182AD3ED8();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = 16 * (v19 | (v8 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = (*(v5 + 56) + v22);
      v27 = v26[1];
      v38 = *v26;
      if ((v37 & 1) == 0)
      {
      }

      sub_182AD44E8();
      sub_182AD30E8();
      result = sub_182AD4558();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = (*(v7 + 56) + v16);
      *v18 = v38;
      v18[1] = v27;
      ++*(v7 + 16);
      v5 = v36;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v2;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

void sub_182254CDC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83B608, &qword_182B013C0);
  v2 = *v0;
  v3 = sub_182AD3EC8();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        *(*(v4 + 56) + 8 * v17) = v18;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void sub_182254E38()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83B5B8, &qword_182B01370);
  v2 = *v0;
  v3 = sub_182AD3EC8();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v20 = *v18;
        v19 = v18[1];
        LODWORD(v18) = *(*(v2 + 56) + 4 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = v20;
        v21[1] = v19;
        *(*(v4 + 56) + 4 * v17) = v18;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void sub_182254FA0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83B6E8, &unk_182B01498);
  v2 = *v0;
  v3 = sub_182AD3EC8();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v17 *= 24;
        v22 = *(v2 + 56) + v17;
        v23 = *v22;
        v24 = *(v22 + 8);
        v25 = (*(v4 + 48) + v18);
        v26 = *(v22 + 16);
        *v25 = v21;
        v25[1] = v20;
        v27 = *(v4 + 56) + v17;
        *v27 = v23;
        *(v27 + 8) = v24;
        *(v27 + 16) = v26;

        sub_1820F5148(v23, v24, v26);
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

      v16 = *(v2 + 64 + 8 * v8);
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

void sub_182255138()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83B5C8, &qword_182B01380);
  v2 = *v0;
  v3 = sub_182AD3EC8();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_182255294()
{
  v1 = v0;
  v2 = type metadata accessor for SecFramer(0);
  v27 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v26 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83B5A0, &qword_182B01358);
  v4 = *v0;
  v5 = sub_182AD3EC8();
  v6 = v5;
  if (*(v4 + 16))
  {
    v25 = v1;
    result = (v5 + 64);
    v8 = v4 + 64;
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v8 + 8 * v9)
    {
      result = memmove(result, (v4 + 64), 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v28 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = *(v4 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_14:
        v20 = v17 | (v10 << 6);
        v21 = *(*(v4 + 48) + v20);
        v22 = v26;
        v23 = *(v27 + 72) * v20;
        sub_18225BC14(*(v4 + 56) + v23, v26, type metadata accessor for SecFramer);
        v24 = v28;
        *(*(v28 + 48) + v20) = v21;
        result = sub_18225BC7C(v22, *(v24 + 56) + v23, type metadata accessor for SecFramer);
      }

      while (v15);
    }

    v18 = v10;
    while (1)
    {
      v10 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v10 >= v16)
      {

        v1 = v25;
        v6 = v28;
        goto LABEL_18;
      }

      v19 = *(v8 + 8 * v10);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

void sub_1822554CC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83B5C0, &qword_182B01378);
  v2 = *v0;
  v3 = sub_182AD3EC8();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v18 = *(v2 + 48) + 16 * v17;
        v19 = *v18;
        LOBYTE(v18) = *(v18 + 8);
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = *(v4 + 48) + 16 * v17;
        *v21 = v19;
        *(v21 + 8) = v18;
        *(*(v4 + 56) + 8 * v17) = v20;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_18225563C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83B5A8, &qword_182B01360);
  v2 = *v0;
  v3 = sub_182AD3EC8();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 8 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 8 * v14);
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
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

      v16 = *(v2 + 64 + 8 * v8);
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

void sub_182255788()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83B590, &qword_182B01348);
  v2 = *v0;
  v3 = sub_182AD3EC8();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v18 = (*(v2 + 56) + 56 * v17);
        v19 = *v18;
        v20 = v18[1];
        v21 = v18[2];
        v22 = v18[3];
        v23 = v18[4];
        v24 = v18[5];
        v25 = v18[6];
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        v26 = (*(v4 + 56) + 56 * v17);
        *v26 = v19;
        v26[1] = v20;
        v26[2] = v21;
        v26[3] = v22;
        v26[4] = v23;
        v26[5] = v24;
        v26[6] = v25;
        sub_18206A3C4(v19, v20, v21, v22, v23, v24, v25);
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_182255920(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_182AD3EC8();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v4 + 64);
    for (i = (v11 + 63) >> 6; v13; *(*(v6 + 56) + 8 * v16) = v19)
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      v16 = v15 | (v10 << 6);
LABEL_17:
      v19 = *(*(v4 + 56) + 8 * v16);
      *(*(v6 + 48) + v16) = *(*(v4 + 48) + v16);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= i)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v13 = (v18 - 1) & v18;
        v16 = __clz(__rbit64(v18)) | (v10 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

void sub_182255A5C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83B658, &qword_182B01408);
  v2 = *v0;
  v3 = sub_182AD3EC8();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_182255BB8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83B6C8, &qword_182B01478);
  v2 = *v0;
  v3 = sub_182AD3EC8();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v18 = 40 * v17;
        sub_181FADD54(*(v2 + 48) + 40 * v17, v23);
        v17 *= 32;
        sub_181C65504(*(v2 + 56) + v17, v22);
        v19 = *(v4 + 48) + v18;
        v20 = v23[0];
        v21 = v23[1];
        *(v19 + 32) = v24;
        *v19 = v20;
        *(v19 + 16) = v21;
        result = sub_181E7BFC4(v22, (*(v4 + 56) + v17));
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_182255D5C()
{
  v1 = v0;
  v26 = sub_182AD3E78();
  v28 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v25 = v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83B628, &unk_182B013D0);
  v3 = *v0;
  v4 = sub_182AD3EC8();
  v5 = v4;
  if (*(v3 + 16))
  {
    v24[0] = v1;
    result = (v4 + 64);
    v7 = v3 + 64;
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v7 + 8 * v8)
    {
      result = memmove(result, (v3 + 64), 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v27 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v24[1] = v28 + 32;
    v24[2] = v28 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v29 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v28;
        v20 = *(v28 + 72) * v18;
        v21 = v25;
        v22 = v26;
        (*(v28 + 16))(v25, *(v3 + 48) + v20, v26);
        v18 *= 32;
        sub_181C65504(*(v3 + 56) + v18, v30);
        v23 = v27;
        (*(v19 + 32))(*(v27 + 48) + v20, v21, v22);
        result = sub_181E7BFC4(v30, (*(v23 + 56) + v18));
        v13 = v29;
      }

      while (v29);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v24[0];
        v5 = v27;
        goto LABEL_18;
      }

      v17 = *(v7 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v29 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

void sub_182255FE0()
{
  v1 = v0;
  v35 = sub_182AD2258();
  v37 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v34 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83B6C0, &qword_182B01470);
  v3 = *v0;
  v4 = sub_182AD3EC8();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v30 = v1;
    v31 = v3 + 64;
    if (v5 != v3 || v6 >= &v7[8 * v8])
    {
      memmove(v6, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v36 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v32 = v37 + 32;
    v33 = v37 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v38 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = 16 * v18;
        v20 = (*(v3 + 48) + 16 * v18);
        v21 = *v20;
        v22 = v20[1];
        v23 = v37;
        v24 = *(v37 + 72) * v18;
        v25 = v34;
        v26 = v35;
        (*(v37 + 16))(v34, *(v3 + 56) + v24, v35);
        v27 = v36;
        v28 = (*(v36 + 48) + v19);
        *v28 = v21;
        v28[1] = v22;
        (*(v23 + 32))(*(v27 + 56) + v24, v25, v26);

        v13 = v38;
      }

      while (v38);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v30;
        v5 = v36;
        goto LABEL_18;
      }

      v17 = *(v31 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v38 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }
}

void sub_182256288(uint64_t *a1, uint64_t *a2)
{
  v5 = v2;
  v6 = type metadata accessor for NWActorID(0);
  v34 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v33 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v8 = *v2;
  v9 = sub_182AD3EC8();
  v10 = v9;
  if (*(v8 + 16))
  {
    v32 = v5;
    v11 = (v9 + 64);
    v12 = v8 + 64;
    v13 = ((1 << *(v10 + 32)) + 63) >> 6;
    if (v10 != v8 || v11 >= v8 + 64 + 8 * v13)
    {
      memmove(v11, (v8 + 64), 8 * v13);
    }

    v15 = 0;
    v16 = *(v8 + 16);
    v35 = v10;
    *(v10 + 16) = v16;
    v17 = 1 << *(v8 + 32);
    v18 = -1;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    v19 = v18 & *(v8 + 64);
    v20 = (v17 + 63) >> 6;
    if (v19)
    {
      do
      {
        v21 = __clz(__rbit64(v19));
        v36 = (v19 - 1) & v19;
LABEL_17:
        v24 = v21 | (v15 << 6);
        v25 = v33;
        v26 = *(v34 + 72) * v24;
        sub_18225BC14(*(v8 + 48) + v26, v33, type metadata accessor for NWActorID);
        v27 = *(*(v8 + 56) + 8 * v24);
        v28 = v8;
        v29 = v35;
        sub_18225BC7C(v25, *(v35 + 48) + v26, type metadata accessor for NWActorID);
        v30 = *(v29 + 56);
        v8 = v28;
        *(v30 + 8 * v24) = v27;

        v19 = v36;
      }

      while (v36);
    }

    v22 = v15;
    while (1)
    {
      v15 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v15 >= v20)
      {

        v5 = v32;
        v10 = v35;
        goto LABEL_21;
      }

      v23 = *(v12 + 8 * v15);
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v36 = (v23 - 1) & v23;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v5 = v10;
  }
}

char *sub_1822564DC()
{
  v1 = v0;
  v2 = type metadata accessor for NWActorDiscoveryMechanism(0);
  v32 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v31 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for NWActorID(0);
  v30 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v29 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83B650, &qword_182B01400);
  v6 = *v0;
  v7 = sub_182AD3EC8();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 64);
    v10 = (v6 + 64);
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    v27 = v1;
    v28 = v6 + 64;
    if (v8 != v6 || result >= &v10[8 * v11])
    {
      result = memmove(result, v10, 8 * v11);
    }

    v12 = 0;
    v13 = *(v6 + 16);
    v33 = v8;
    *(v8 + 16) = v13;
    v14 = 1 << *(v6 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v6 + 64);
    v17 = (v14 + 63) >> 6;
    if (v16)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v34 = (v16 - 1) & v16;
LABEL_14:
        v21 = v18 | (v12 << 6);
        v22 = v29;
        v23 = *(v30 + 72) * v21;
        sub_18225BC14(*(v6 + 48) + v23, v29, type metadata accessor for NWActorID);
        v24 = v31;
        v25 = *(v32 + 72) * v21;
        sub_18225BC14(*(v6 + 56) + v25, v31, type metadata accessor for NWActorDiscoveryMechanism);
        v26 = v33;
        sub_18225BC7C(v22, *(v33 + 48) + v23, type metadata accessor for NWActorID);
        result = sub_18225BC7C(v24, *(v26 + 56) + v25, type metadata accessor for NWActorDiscoveryMechanism);
        v16 = v34;
      }

      while (v34);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v1 = v27;
        v8 = v33;
        goto LABEL_18;
      }

      v20 = *(v28 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v34 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
}

void sub_1822567D0()
{
  v1 = v0;
  v2 = type metadata accessor for NWActorID(0);
  v24 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83B648, &qword_182B013F8);
  v5 = *v0;
  v6 = sub_182AD3EC8();
  v7 = v6;
  if (*(v5 + 16))
  {
    v23 = v1;
    v8 = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || v8 >= v9 + 8 * v10)
    {
      memmove(v8, (v5 + 64), 8 * v10);
    }

    v11 = 0;
    *(v7 + 16) = *(v5 + 16);
    v12 = 1 << *(v5 + 32);
    v13 = *(v5 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_14:
        v20 = v17 | (v11 << 6);
        v21 = *(v24 + 72) * v20;
        sub_18225BC14(*(v5 + 48) + v21, v4, type metadata accessor for NWActorID);
        v20 *= 16;
        v22 = *(v7 + 48);
        v25 = *(*(v5 + 56) + v20);
        sub_18225BC7C(v4, v22 + v21, type metadata accessor for NWActorID);
        *(*(v7 + 56) + v20) = v25;
      }

      while (v15);
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

        v1 = v23;
        goto LABEL_18;
      }

      v19 = *(v9 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }
}

void sub_182256A10()
{
  v1 = v0;
  v2 = type metadata accessor for NWActorSystem.ServerRole(0);
  v33 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v32 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83B6B8, &qword_182B01468);
  v4 = *v0;
  v5 = sub_182AD3EC8();
  v6 = v5;
  if (*(v4 + 16))
  {
    v31 = v1;
    v7 = (v5 + 64);
    v8 = v4 + 64;
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || v7 >= v8 + 8 * v9)
    {
      memmove(v7, (v4 + 64), 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v34 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v35 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = 16 * v19;
        v21 = *(v4 + 56);
        v22 = (*(v4 + 48) + 16 * v19);
        v23 = v4;
        v24 = *v22;
        v25 = v22[1];
        v26 = v32;
        v27 = *(v33 + 72) * v19;
        sub_18225BC14(v21 + v27, v32, type metadata accessor for NWActorSystem.ServerRole);
        v28 = v34;
        v29 = (*(v34 + 48) + v20);
        *v29 = v24;
        v29[1] = v25;
        v4 = v23;
        sub_18225BC7C(v26, *(v28 + 56) + v27, type metadata accessor for NWActorSystem.ServerRole);

        v14 = v35;
      }

      while (v35);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v31;
        v6 = v34;
        goto LABEL_18;
      }

      v18 = *(v8 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v35 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }
}

void sub_182256C70()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83B5D8, &qword_182B01390);
  v2 = *v0;
  v3 = sub_182AD3EC8();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 16 * v17) = *(*(v2 + 48) + 16 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_182256DD0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83B5F0, &qword_182B013A8);
  v2 = *v0;
  v3 = sub_182AD3EC8();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 8 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 8 * v14);
      *(*(v4 + 48) + 16 * v14) = *(*(v2 + 48) + 16 * v14);
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_182256F20()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83B5E8, &qword_182B013A0);
  v2 = *v0;
  v3 = sub_182AD3EC8();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 16 * v17) = *(*(v2 + 48) + 16 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
        result = swift_unknownObjectRetain();
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

      v16 = *(v2 + 64 + 8 * v8);
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

void sub_182257080()
{
  v1 = v0;
  v30 = sub_182AD2258();
  v32 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v29 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83B688, &unk_182B01438);
  v3 = *v0;
  v4 = sub_182AD3EC8();
  v5 = v4;
  if (*(v3 + 16))
  {
    v25 = v1;
    v6 = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || v6 >= v3 + 64 + 8 * v7)
    {
      memmove(v6, (v3 + 64), 8 * v7);
    }

    v8 = 0;
    v9 = *(v3 + 16);
    v31 = v5;
    *(v5 + 16) = v9;
    v10 = 1 << *(v3 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(v3 + 64);
    v13 = (v10 + 63) >> 6;
    v28 = v32 + 16;
    v26 = v3 + 64;
    v27 = v32 + 32;
    while (v12)
    {
      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_14:
      v17 = v14 | (v8 << 6);
      v18 = v32;
      v19 = *(v32 + 72) * v17;
      v20 = v29;
      v21 = v30;
      (*(v32 + 16))(v29, *(v3 + 48) + v19, v30);
      v17 *= 16;
      v22 = v31;
      v23 = *(v31 + 48);
      v24 = *(v18 + 32);
      v33 = *(*(v3 + 56) + v17);
      v24(v23 + v19, v20, v21);
      *(*(v22 + 56) + v17) = v33;
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

        v1 = v25;
        v5 = v31;
        goto LABEL_18;
      }

      v16 = *(v26 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }
}

void *sub_182257300()
{
  v1 = v0;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA839610, &qword_182AE6060);
  v31 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v28 = &v24 - v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83B640, &qword_182B013F0);
  v3 = *v0;
  v4 = sub_182AD3EC8();
  v5 = v4;
  if (*(v3 + 16))
  {
    v24 = v1;
    result = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 64 + 8 * v7)
    {
      result = memmove(result, (v3 + 64), 8 * v7);
    }

    v8 = 0;
    v9 = *(v3 + 16);
    v30 = v5;
    *(v5 + 16) = v9;
    v10 = 1 << *(v3 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(v3 + 64);
    v13 = (v10 + 63) >> 6;
    v27 = v31 + 16;
    v25 = v3 + 64;
    for (i = v31 + 32; v12; result = (*(v19 + 32))(*(v23 + 56) + v20, v22, v21))
    {
      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_14:
      v17 = v14 | (v8 << 6);
      v18 = *(*(v3 + 48) + 8 * v17);
      v19 = v31;
      v20 = *(v31 + 72) * v17;
      v22 = v28;
      v21 = v29;
      (*(v31 + 16))(v28, *(v3 + 56) + v20, v29);
      v23 = v30;
      *(*(v30 + 48) + 8 * v17) = v18;
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

        v1 = v24;
        v5 = v30;
        goto LABEL_18;
      }

      v16 = *(v25 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

void sub_182257570()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83B5B0, &qword_182B01368);
  v2 = *v0;
  v3 = sub_182AD3EC8();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_181C65504(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_181E7BFC4(v25, (*(v4 + 56) + v22));
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

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
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

LABEL_21:
    *v1 = v4;
  }
}

char *sub_182257714()
{
  v1 = v0;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83AB10, &unk_182AF6860);
  v44 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v40 = &v30 - v2;
  v39 = sub_182AD2258();
  v43 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v38 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83B698, &qword_182B01448);
  v4 = *v0;
  v5 = sub_182AD3EC8();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v30 = v1;
    v31 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v42 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v35 = v43 + 16;
    v36 = v15;
    v33 = v43 + 32;
    v34 = v44 + 16;
    v32 = v44 + 32;
    v37 = v4;
    v17 = v38;
    v16 = v39;
    if (v14)
    {
      do
      {
        v18 = __clz(__rbit64(v14));
        v45 = (v14 - 1) & v14;
LABEL_14:
        v21 = v18 | (v10 << 6);
        v22 = v43;
        v23 = *(v43 + 72) * v21;
        (*(v43 + 16))(v17, *(v4 + 48) + v23, v16);
        v24 = v44;
        v25 = *(v44 + 72) * v21;
        v26 = v40;
        v27 = v41;
        (*(v44 + 16))(v40, *(v4 + 56) + v25, v41);
        v28 = v42;
        (*(v22 + 32))(*(v42 + 48) + v23, v17, v16);
        v29 = *(v28 + 56);
        v4 = v37;
        result = (*(v24 + 32))(v29 + v25, v26, v27);
        v15 = v36;
        v14 = v45;
      }

      while (v45);
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v30;
        v6 = v42;
        goto LABEL_18;
      }

      v20 = *(v31 + 8 * v10);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v45 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

void sub_182257A70()
{
  v1 = v0;
  v33 = sub_182AD2258();
  v35 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v32 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83B610, &qword_182B013C8);
  v3 = *v0;
  v4 = sub_182AD3EC8();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v28 = v1;
    v29 = v3 + 64;
    if (v5 != v3 || v6 >= &v7[8 * v8])
    {
      memmove(v6, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v34 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v30 = v35 + 32;
    v31 = v35 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v36 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v35;
        v20 = *(v35 + 72) * v18;
        v22 = v32;
        v21 = v33;
        (*(v35 + 16))(v32, *(v3 + 48) + v20, v33);
        v23 = *(*(v3 + 56) + 8 * v18);
        v24 = v3;
        v25 = v34;
        (*(v19 + 32))(*(v34 + 48) + v20, v22, v21);
        v26 = *(v25 + 56);
        v3 = v24;
        *(v26 + 8 * v18) = v23;

        v13 = v36;
      }

      while (v36);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v28;
        v5 = v34;
        goto LABEL_18;
      }

      v17 = *(v29 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v36 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }
}

void sub_182257CF0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83B5F8, &unk_182B013B0);
  v2 = *v0;
  v3 = sub_182AD3EC8();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
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

      v16 = *(v2 + 64 + 8 * v8);
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

uint64_t sub_182257E68(unint64_t a1, char a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + a1) = a2;
  v7 = a4[7];
  v8 = type metadata accessor for SecFramer(0);
  result = sub_18225BC7C(a3, v7 + *(*(v8 - 8) + 72) * a1, type metadata accessor for SecFramer);
  v10 = a4[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v12;
  }

  return result;
}

_OWORD *sub_182257F10(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_182AD3E78();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  result = sub_181E7BFC4(a3, (a4[7] + 32 * a1));
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

uint64_t sub_182257FD0(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for NWActorID(0);
  result = sub_18225BC7C(a2, v8 + *(*(v9 - 8) + 72) * a1, type metadata accessor for NWActorID);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

uint64_t sub_182258084(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for NWActorID(0);
  sub_18225BC7C(a2, v8 + *(*(v9 - 8) + 72) * a1, type metadata accessor for NWActorID);
  v10 = a4[7];
  v11 = type metadata accessor for NWActorDiscoveryMechanism(0);
  result = sub_18225BC7C(a3, v10 + *(*(v11 - 8) + 72) * a1, type metadata accessor for NWActorDiscoveryMechanism);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

uint64_t sub_182258170(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v10 = a5[6];
  v11 = type metadata accessor for NWActorID(0);
  result = sub_18225BC7C(a2, v10 + *(*(v11 - 8) + 72) * a1, type metadata accessor for NWActorID);
  v13 = (a5[7] + 16 * a1);
  *v13 = a3;
  v13[1] = a4;
  v14 = a5[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v16;
  }

  return result;
}

uint64_t sub_18225822C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = type metadata accessor for NWActorSystem.ServerRole(0);
  result = sub_18225BC7C(a4, v9 + *(*(v10 - 8) + 72) * a1, type metadata accessor for NWActorSystem.ServerRole);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

uint64_t sub_1822582D8(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v10 = a5[6];
  v11 = sub_182AD2258();
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a2, v11);
  v13 = (a5[7] + 16 * a1);
  *v13 = a3;
  v13[1] = a4;
  v14 = a5[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v16;
  }

  return result;
}

uint64_t sub_182258398(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  v7 = a4[7];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA839610, &qword_182AE6060);
  result = (*(*(v8 - 8) + 32))(v7 + *(*(v8 - 8) + 72) * a1, a3, v8);
  v10 = a4[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v12;
  }

  return result;
}

_OWORD *sub_182258450(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_181E7BFC4(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

uint64_t sub_1822584BC(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_182AD2258();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v10 = a4[7];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83AB10, &unk_182AF6860);
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a3, v11);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

uint64_t sub_1822585BC(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_182AD2258();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

unint64_t sub_182258674(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_18224EEF0(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_1822507DC(v14, a3 & 1);
      result = sub_18224EEF0(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_16:
        result = sub_182AD4408();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      sub_182255138();
      result = v17;
    }
  }

  v19 = *v4;
  if ((v15 & 1) == 0)
  {
    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + 8 * result) = a2;
    *(v19[7] + 8 * result) = a1;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return result;
    }

    goto LABEL_15;
  }

  *(v19[7] + 8 * result) = a1;
}

uint64_t sub_1822587C0(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_18224EFDC(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 >= v13 && (a3 & 1) != 0)
  {
LABEL_7:
    v16 = *v4;
    if (v14)
    {
LABEL_8:
      v17 = v16[7];
      v18 = type metadata accessor for SecFramer(0);
      return sub_18225BCE4(a1, v17 + *(*(v18 - 8) + 72) * v10, type metadata accessor for SecFramer);
    }

    goto LABEL_11;
  }

  if (v15 >= v13 && (a3 & 1) == 0)
  {
    sub_182255294();
    goto LABEL_7;
  }

  sub_182250A84(v13, a3 & 1);
  v20 = sub_18224EFDC(a2);
  if ((v14 & 1) != (v21 & 1))
  {
LABEL_15:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83B4D0, &qword_182B01350);
    result = sub_182AD4408();
    __break(1u);
    return result;
  }

  v10 = v20;
  v16 = *v4;
  if (v14)
  {
    goto LABEL_8;
  }

LABEL_11:

  return sub_182257E68(v10, a2, a1, v16);
}

unint64_t sub_182258920(uint64_t a1, uint64_t a2, char a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_18224F070(a2, a3 & 1);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_182250DFC(v16, a4 & 1);
      result = sub_18224F070(a2, a3 & 1);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_16:
        result = sub_182AD4408();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_1822554CC();
      result = v19;
    }
  }

  v21 = *v5;
  if ((v17 & 1) == 0)
  {
    v21[(result >> 6) + 8] |= 1 << result;
    v22 = v21[6] + 16 * result;
    *v22 = a2;
    *(v22 + 8) = a3 & 1;
    *(v21[7] + 8 * result) = a1;
    v23 = v21[2];
    v15 = __OFADD__(v23, 1);
    v24 = v23 + 1;
    if (!v15)
    {
      v21[2] = v24;
      return result;
    }

    goto LABEL_15;
  }

  *(v21[7] + 8 * result) = a1;
}

unint64_t sub_182258A90(__int128 *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_18224F168(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_18225133C(v14, a3 & 1);
      result = sub_18224F168(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_16:
        result = sub_182AD4408();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      sub_182255788();
      result = v17;
    }
  }

  v19 = *v4;
  if ((v15 & 1) == 0)
  {
    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + result) = a2;
    v21 = v19[7] + 56 * result;
    v22 = *a1;
    v23 = a1[1];
    v24 = a1[2];
    *(v21 + 48) = *(a1 + 6);
    *(v21 + 16) = v23;
    *(v21 + 32) = v24;
    *v21 = v22;
    v25 = v19[2];
    v13 = __OFADD__(v25, 1);
    v26 = v25 + 1;
    if (!v13)
    {
      v19[2] = v26;
      return result;
    }

    goto LABEL_15;
  }

  v20 = v19[7] + 56 * result;

  return sub_18225BAFC(a1, v20);
}

unint64_t sub_182258BF8(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_181A41ED8(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 >= v14 && (a3 & 1) != 0)
  {
    goto LABEL_8;
  }

  if (v16 >= v14 && (a3 & 1) == 0)
  {
    v17 = result;
    sub_182255920(&qword_1EA83B660, &qword_182B01410);
    result = v17;
    goto LABEL_8;
  }

  sub_182251654(v14, a3 & 1);
  result = sub_181A41ED8(a2);
  if ((v15 & 1) == (v18 & 1))
  {
LABEL_8:
    v19 = *v4;
    if (v15)
    {
      *(v19[7] + 8 * result) = a1;
      return result;
    }

    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + result) = a2;
    *(v19[7] + 8 * result) = a1;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return result;
    }

    goto LABEL_13;
  }

LABEL_14:
  result = sub_182AD4408();
  __break(1u);
  return result;
}

unint64_t sub_182258D30(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_18224F100(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 >= v14 && (a3 & 1) != 0)
  {
    goto LABEL_8;
  }

  if (v16 >= v14 && (a3 & 1) == 0)
  {
    v17 = result;
    sub_18225563C();
    result = v17;
    goto LABEL_8;
  }

  sub_1822510BC(v14, a3 & 1);
  result = sub_18224F100(a2);
  if ((v15 & 1) == (v18 & 1))
  {
LABEL_8:
    v19 = *v4;
    if (v15)
    {
      *(v19[7] + 8 * result) = a1;
      return result;
    }

    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + 8 * result) = a2;
    *(v19[7] + 8 * result) = a1;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return result;
    }

    goto LABEL_13;
  }

LABEL_14:
  result = sub_182AD4408();
  __break(1u);
  return result;
}

_OWORD *sub_182258E54(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_182AD3E78();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_18224F1E0(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_182255D5C();
      goto LABEL_7;
    }

    sub_18225209C(v17, a3 & 1);
    v23 = sub_18224F1E0(a2);
    if ((v18 & 1) == (v24 & 1))
    {
      v14 = v23;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_182257F10(v14, v11, a1, v20);
    }

LABEL_15:
    result = sub_182AD4408();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = (v20[7] + 32 * v14);
  __swift_destroy_boxed_opaque_existential_1(v21);

  return sub_181E7BFC4(a1, v21);
}

uint64_t sub_182259054(uint64_t a1, uint64_t *a2, char a3, uint64_t *a4, uint64_t *a5)
{
  v27 = a5;
  v7 = v5;
  v11 = type metadata accessor for NWActorID(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *v5;
  v16 = sub_18224F288(a2);
  v17 = v14[2];
  v18 = (v15 & 1) == 0;
  v19 = v17 + v18;
  if (__OFADD__(v17, v18))
  {
    __break(1u);
    goto LABEL_15;
  }

  v20 = v15;
  v21 = v14[3];
  if (v21 < v19 || (a3 & 1) == 0)
  {
    if (v21 >= v19 && (a3 & 1) == 0)
    {
      sub_182256288(a4, v27);
      goto LABEL_7;
    }

    sub_1822527BC(v19, a3 & 1, a4, v27);
    v24 = sub_18224F288(a2);
    if ((v20 & 1) == (v25 & 1))
    {
      v16 = v24;
      v22 = *v7;
      if (v20)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_18225BC14(a2, v13, type metadata accessor for NWActorID);
      return sub_182257FD0(v16, v13, a1, v22);
    }

LABEL_15:
    result = sub_182AD4408();
    __break(1u);
    return result;
  }

LABEL_7:
  v22 = *v7;
  if ((v20 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  *(v22[7] + 8 * v16) = a1;
}

uint64_t sub_182259214(uint64_t a1, uint64_t *a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for NWActorID(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  v13 = sub_18224F288(a2);
  v14 = v11[2];
  v15 = (v12 & 1) == 0;
  v16 = v14 + v15;
  if (__OFADD__(v14, v15))
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = v11[3];
  if (v18 >= v16 && (a3 & 1) != 0)
  {
LABEL_7:
    v19 = *v4;
    if (v17)
    {
LABEL_8:
      v20 = v19[7];
      v21 = type metadata accessor for NWActorDiscoveryMechanism(0);
      return sub_18225BCE4(a1, v20 + *(*(v21 - 8) + 72) * v13, type metadata accessor for NWActorDiscoveryMechanism);
    }

    goto LABEL_11;
  }

  if (v18 >= v16 && (a3 & 1) == 0)
  {
    sub_1822564DC();
    goto LABEL_7;
  }

  sub_182252BA0(v16, a3 & 1);
  v23 = sub_18224F288(a2);
  if ((v17 & 1) != (v24 & 1))
  {
LABEL_14:
    result = sub_182AD4408();
    __break(1u);
    return result;
  }

  v13 = v23;
  v19 = *v4;
  if (v17)
  {
    goto LABEL_8;
  }

LABEL_11:
  sub_18225BC14(a2, v10, type metadata accessor for NWActorID);
  return sub_182258084(v13, v10, a1, v19);
}

uint64_t sub_1822593C0(uint64_t a1, uint64_t a2, uint64_t *a3, char a4)
{
  v5 = v4;
  v10 = type metadata accessor for NWActorID(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v4;
  v15 = sub_18224F288(a3);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = v13[3];
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 >= v18 && (a4 & 1) == 0)
    {
      sub_1822567D0();
      goto LABEL_7;
    }

    sub_182253050(v18, a4 & 1);
    v24 = sub_18224F288(a3);
    if ((v19 & 1) == (v25 & 1))
    {
      v15 = v24;
      v21 = *v5;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_18225BC14(a3, v12, type metadata accessor for NWActorID);
      return sub_182258170(v15, v12, a1, a2, v21);
    }

LABEL_15:
    result = sub_182AD4408();
    __break(1u);
    return result;
  }

LABEL_7:
  v21 = *v5;
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v22 = (v21[7] + 16 * v15);
  *v22 = a1;
  v22[1] = a2;
}

void sub_182259570(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_181CBDA14(a2, a3, sub_181D04C70);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_15;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 >= v15 && (a4 & 1) != 0)
  {
LABEL_7:
    v18 = *v5;
    if (v16)
    {
LABEL_8:
      v19 = v18[7];
      v20 = type metadata accessor for NWActorSystem.ServerRole(0);
      sub_18225BCE4(a1, v19 + *(*(v20 - 8) + 72) * v12, type metadata accessor for NWActorSystem.ServerRole);
      return;
    }

    goto LABEL_11;
  }

  if (v17 >= v15 && (a4 & 1) == 0)
  {
    sub_182256A10();
    goto LABEL_7;
  }

  sub_182253434(v15, a4 & 1);
  v21 = sub_181CBDA14(a2, a3, sub_181D04C70);
  if ((v16 & 1) != (v22 & 1))
  {
LABEL_15:
    sub_182AD4408();
    __break(1u);
    return;
  }

  v12 = v21;
  v18 = *v5;
  if (v16)
  {
    goto LABEL_8;
  }

LABEL_11:
  sub_18225822C(v12, a2, a3, a1, v18);
}

uint64_t sub_182259704(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v28 = a1;
  v9 = sub_182AD2258();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v4;
  v15 = sub_18224F354(a3);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = v13[3];
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 >= v18 && (a4 & 1) == 0)
    {
      sub_182257080();
      goto LABEL_9;
    }

    sub_1822537AC(v18, a4 & 1);
    v21 = sub_18224F354(a3);
    if ((v19 & 1) == (v22 & 1))
    {
      v15 = v21;
      goto LABEL_9;
    }

LABEL_15:
    result = sub_182AD4408();
    __break(1u);
    return result;
  }

LABEL_9:
  v23 = v28;
  v24 = *v5;
  if (v19)
  {
    v25 = (v24[7] + 16 * v15);
    *v25 = v28;
    v25[1] = a2;
  }

  else
  {
    (*(v10 + 16))(v12, a3, v9);
    return sub_1822582D8(v15, v12, v23, a2, v24);
  }
}

unint64_t sub_1822598E0(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_18224F100(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_182251B54(v14, a3 & 1);
      result = sub_18224F100(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_16:
        result = sub_182AD4408();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      sub_182255A5C();
      result = v17;
    }
  }

  v19 = *v4;
  if ((v15 & 1) == 0)
  {
    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + 8 * result) = a2;
    *(v19[7] + 8 * result) = a1;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return result;
    }

    goto LABEL_15;
  }

  *(v19[7] + 8 * result) = a1;
}

uint64_t sub_182259A2C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_18224F3EC(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_182257300();
      goto LABEL_7;
    }

    sub_182253B84(v13, a3 & 1);
    v24 = sub_18224F3EC(a2);
    if ((v14 & 1) == (v25 & 1))
    {
      v10 = v24;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_182AD4408();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if (v14)
  {
LABEL_8:
    v17 = v16[7];
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA839610, &qword_182AE6060);
    v19 = *(v18 - 8);
    v20 = *(v19 + 40);
    v21 = v18;
    v22 = v17 + *(v19 + 72) * v10;

    return v20(v22, a1, v21);
  }

LABEL_13:

  return sub_182258398(v10, a2, a1, v16);
}

void sub_182259BA0(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_181CBDA14(a2, a3, sub_181D04C70);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_182257570();
      v11 = v19;
      goto LABEL_8;
    }

    sub_182253ED8(v16, a4 & 1);
    v11 = sub_181CBDA14(a2, a3, sub_181D04C70);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      sub_182AD4408();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_1(v22);

    sub_181E7BFC4(a1, v22);
  }

  else
  {
    sub_182258450(v11, a2, a3, a1, v21);
  }
}

uint64_t sub_182259D18(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_182AD2258();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_18224F354(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_182257714();
      goto LABEL_7;
    }

    sub_182254190(v17, a3 & 1);
    v28 = sub_18224F354(a2);
    if ((v18 & 1) == (v29 & 1))
    {
      v14 = v28;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_1822584BC(v14, v11, a1, v20);
    }

LABEL_15:
    result = sub_182AD4408();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = v20[7];
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83AB10, &unk_182AF6860);
  v23 = *(v22 - 8);
  v24 = *(v23 + 40);
  v25 = v22;
  v26 = v21 + *(v23 + 72) * v14;

  return v24(v26, a1, v25);
}

uint64_t sub_182259F28(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_182AD2258();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_18224F354(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_182257A70();
      goto LABEL_7;
    }

    sub_182254640(v17, a3 & 1);
    v22 = sub_18224F354(a2);
    if ((v18 & 1) == (v23 & 1))
    {
      v14 = v22;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_1822585BC(v14, v11, a1, v20);
    }

LABEL_15:
    result = sub_182AD4408();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  *(v20[7] + 8 * v14) = a1;
}

uint64_t sub_18225A0F4(uint64_t result, int a2, uint64_t a3, uint64_t a4)
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
    return sub_182AD3AF8();
  }

LABEL_8:
  __break(1u);
  return result;
}

BOOL _s7Network11NWTXTRecordV5EntryO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v5 = *a2;
  v4 = *(a2 + 8);
  v6 = *(a2 + 16);
  if (*(a1 + 16))
  {
    if (*(a1 + 16) == 1)
    {
      sub_181F49B58(*a1, v2);
      if (!v6)
      {
        goto LABEL_12;
      }
    }

    else
    {
      if (v3 | v2)
      {
        v2 = 0xC000000000000000;
      }

      else
      {
        v2 = 0xF000000000000000;
      }

      v3 = 0;
      if (!*(a2 + 16))
      {
        goto LABEL_12;
      }
    }
  }

  else
  {

    v3 = sub_181F76154(v3, v2);
    v2 = v7;
    if (!v6)
    {
LABEL_12:

      v5 = sub_181F76154(v5, v4);
      v4 = v8;
      goto LABEL_17;
    }
  }

  if (v6 == 1)
  {
    sub_181F49B58(v5, v4);
  }

  else
  {
    if (v5 | v4)
    {
      v4 = 0xC000000000000000;
    }

    else
    {
      v4 = 0xF000000000000000;
    }

    v5 = 0;
  }

LABEL_17:
  if (v2 >> 60 == 15)
  {
    if (v4 >> 60 == 15)
    {
      sub_181D9D680(v3, v2);
      return 1;
    }

    goto LABEL_21;
  }

  if (v4 >> 60 == 15)
  {
LABEL_21:
    sub_181D9D680(v3, v2);
    sub_181D9D680(v5, v4);
    return 0;
  }

  sub_181F49B44(v3, v2);
  sub_181F49B44(v5, v4);
  v10 = sub_18206EADC(v3, v2, v5, v4);
  sub_181D9D680(v5, v4);
  sub_181D9D680(v5, v4);
  sub_181D9D680(v3, v2);
  sub_181D9D680(v3, v2);
  return v10;
}

BOOL sub_18225A318(const uint8_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    v4 = a2 - a1;
    v6 = sub_182AD3048();
    v7 = swift_unknownObjectRetain();
    v8 = (v6 + 32);
    v9 = a1;
    v10 = v4;
  }

  else
  {
    v11 = sub_182AD3048();
    v7 = swift_unknownObjectRetain();
    v8 = (v11 + 32);
    v9 = 0;
    v10 = 0;
  }

  v12 = nw_txt_record_set_key(v7, v8, v9, v10);
  swift_unknownObjectRelease();

  return v12;
}

BOOL sub_18225A3C8(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v39 = *MEMORY[0x1E69E9840];
  v5 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v5)
    {
      *value = a1;
      *&value[8] = a2;
      value[10] = BYTE2(a2);
      value[11] = BYTE3(a2);
      value[12] = BYTE4(a2);
      v6 = BYTE6(a2);
      value[13] = BYTE5(a2);
      v7 = sub_182AD3048();
      v8 = swift_unknownObjectRetain();
      v9 = (v7 + 32);
      v10 = v6;
LABEL_28:
      v37 = nw_txt_record_set_key(v8, v9, value, v10);
      swift_unknownObjectRelease();

      return v37;
    }

    v25 = a1;
    v26 = (a1 >> 32) - a1;
    if (a1 >> 32 >= a1)
    {
      v29 = sub_182AD1D58();
      if (!v29)
      {
LABEL_20:
        v31 = sub_182AD1D78();
        if (v31 >= v26)
        {
          v32 = v26;
        }

        else
        {
          v32 = v31;
        }

        v33 = &v29[v32];
        if (v29)
        {
          v34 = v33;
        }

        else
        {
          v34 = 0;
        }

        v35 = sub_18225A318(v29, v34, a3, a4);

        return v35;
      }

      v30 = sub_182AD1D88();
      if (!__OFSUB__(v25, v30))
      {
        v29 += v25 - v30;
        goto LABEL_20;
      }

LABEL_32:
      __break(1u);
    }

    __break(1u);
    goto LABEL_30;
  }

  if (v5 != 2)
  {
    memset(value, 0, 14);
    v36 = sub_182AD3048();
    v8 = swift_unknownObjectRetain();
    v9 = (v36 + 32);
    v10 = 0;
    goto LABEL_28;
  }

  v13 = *(a1 + 16);
  v14 = *(a1 + 24);
  v15 = sub_182AD1D58();
  if (v15)
  {
    v16 = sub_182AD1D88();
    if (__OFSUB__(v13, v16))
    {
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    v15 += v13 - v16;
  }

  v17 = __OFSUB__(v14, v13);
  v18 = v14 - v13;
  if (v17)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v19 = sub_182AD1D78();
  if (v19 >= v18)
  {
    v20 = v18;
  }

  else
  {
    v20 = v19;
  }

  v21 = &v15[v20];
  if (v15)
  {
    v22 = v21;
  }

  else
  {
    v22 = 0;
  }

  v23 = sub_18225A318(v15, v22, a3, a4);

  return v23;
}

unint64_t sub_18225A6AC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83B5F8, &unk_182B013B0);
    v3 = sub_182AD3EE8();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_181CBDA14(v5, v6, sub_181D04C70);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_18225A7D4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83B6E8, &unk_182B01498);
    v3 = sub_182AD3EE8();

    for (i = (a1 + 64); ; i += 40)
    {
      v5 = *(i - 4);
      v6 = *(i - 3);
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      sub_1820F5148(v7, v8, v9);
      result = sub_181E68520(v5, v6);
      if (v11)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v3[6] + 16 * result);
      *v12 = v5;
      v12[1] = v6;
      v13 = v3[7] + 24 * result;
      *v13 = v7;
      *(v13 + 8) = v8;
      *(v13 + 16) = v9;
      v14 = v3[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v3[2] = v16;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

void *sub_18225A8F8(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83B658, &qword_182B01408);
  v3 = sub_182AD3EE8();
  v4 = a1[4];
  v5 = a1[5];
  v6 = sub_18224F100(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v8 = v6;
  result = v5;
  v10 = (a1 + 7);
  while (1)
  {
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + 8 * v8) = v4;
    *(v3[7] + 8 * v8) = result;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = v10 + 2;
    v4 = *(v10 - 1);
    v15 = *v10;

    v8 = sub_18224F100(v4);
    v10 = v14;
    result = v15;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}