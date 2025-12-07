uint64_t sub_1B0C02B44()
{
  v1 = v0;
  if (qword_1EB6DCD50 != -1)
  {
    swift_once();
  }

  v2 = sub_1B0E439A8();
  __swift_project_value_buffer(v2, qword_1EB6DCD58);

  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  v3 = sub_1B0E43988();
  v4 = sub_1B0E45908();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v22[0] = v6;
    *v5 = 68158210;
    *(v5 + 4) = 2;
    *(v5 + 8) = 256;
    *(v5 + 10) = sub_1B04314DC(v6);

    *(v5 + 11) = 2082;
    v8 = sub_1B04314DC(v7);
    v9 = ConnectionID.debugDescription.getter(HIDWORD(v8));
    v11 = sub_1B0399D64(v9, v10, v22);

    *(v5 + 13) = v11;
    _os_log_impl(&dword_1B0389000, v3, v4, "[%.*hhx-%{public}s] Enabling RFC 4978 compression.", v5, 0x15u);
    __swift_destroy_boxed_opaque_existential_0Tm(v6);
    MEMORY[0x1B272C230](v6, -1, -1);
    MEMORY[0x1B272C230](v5, -1, -1);
  }

  else
  {
  }

  type metadata accessor for Deflate.Compressor();
  v12 = swift_allocObject();
  type metadata accessor for Deflate.Stream();
  v13 = swift_allocObject();
  *(v13 + 32) = 0u;
  *(v13 + 48) = 0u;
  *(v13 + 64) = 0u;
  *(v13 + 80) = 0u;
  *(v13 + 96) = 0u;
  *(v13 + 112) = 0u;
  *(v13 + 128) = 0;
  *(v13 + 16) = 0u;
  swift_beginAccess();
  v14 = deflateInit2_((v13 + 16), 1, 8, -15, 8, 4, "1.2.12", 112);
  swift_endAccess();
  if (v14)
  {
    sub_1B0BFC8A0();
    swift_allocError();
    *v20 = "deflateInit2";
    *(v20 + 8) = 12;
    *(v20 + 16) = 2;
    *(v20 + 20) = v14;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
  }

  else
  {
    *(v12 + 16) = v13;
    *(v12 + 24) = 0;
    type metadata accessor for Deflate.Decompressor();
    v15 = swift_allocObject();
    v16 = swift_allocObject();
    *(v16 + 32) = 0u;
    *(v16 + 48) = 0u;
    *(v16 + 64) = 0u;
    *(v16 + 80) = 0u;
    *(v16 + 96) = 0u;
    *(v16 + 112) = 0u;
    *(v16 + 16) = 0u;
    *(v16 + 128) = 1;
    swift_beginAccess();
    v14 = inflateInit2_((v16 + 16), -15, "1.2.12", 112);
    swift_endAccess();
    if (!v14)
    {
      *(v15 + 16) = v16;
      v17 = *(v1 + 248);
      v18 = *(v1 + 256);
      *(v1 + 248) = v12;
      *(v1 + 256) = v15;
      return sub_1B03D6500(v17, v18);
    }
  }

  sub_1B0BFC8A0();
  swift_allocError();
  *v21 = "inflateInit2";
  *(v21 + 8) = 12;
  *(v21 + 16) = 2;
  *(v21 + 20) = v14;
  swift_willThrow();
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_1B0C02EEC(unint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v64 = HIDWORD(a1);
  v65 = a3;
  v6 = type metadata accessor for HandshakeReply.Encoded(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v63 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ConnectionCommand(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v62 - v12;
  v14 = type metadata accessor for ClientCommand(0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v62 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v62 - v18;
  v20 = type metadata accessor for OutboundContent(0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v62 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B03FD270(a2, v22, type metadata accessor for OutboundContent);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_1B04498A0(v22, v19, type metadata accessor for ClientCommand);
    sub_1B03FD270(v19, v16, type metadata accessor for ClientCommand);
    v30 = v67;
    v31 = v67[242];
    v32 = v67[243];
    v33 = v67[244];
    *v13 = a1;
    *(v13 + 1) = v64;
    if (v33)
    {
      v34 = 0x10000;
    }

    else
    {
      v34 = 0;
    }

    if (v32)
    {
      v35 = 256;
    }

    else
    {
      v35 = 0;
    }

    ClientCommand.encode(tag:options:)(a1 & 0xFFFFFFFF000000FFLL, v35 | v31 | v34, &v13[*(v8 + 20)]);
    sub_1B03D6B24(v16, type metadata accessor for ClientCommand);
    v36 = swift_beginAccess();
    if (*(v30 + 28))
    {
      sub_1B0BEA5A0();
      v37 = swift_allocError();
      swift_willThrow();
      swift_endAccess();
      sub_1B03D6B24(v19, type metadata accessor for ClientCommand);
      v38 = type metadata accessor for ConnectionCommand;
      v39 = v13;
LABEL_18:
      sub_1B03D6B24(v39, v38);
      goto LABEL_19;
    }

    MEMORY[0x1EEE9AC00](v36);
    *(&v62 - 2) = v13;
    v55 = sub_1B0BE95B0(sub_1B0C0598C);
    swift_endAccess();
    sub_1B03D6B24(v19, type metadata accessor for ClientCommand);
    v56 = type metadata accessor for ConnectionCommand;
    v57 = v13;
LABEL_34:
    sub_1B03D6B24(v57, v56);
    return v55;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v24 = *v22;
    v25 = *(v22 + 1);
    v26 = v22[16];
    sub_1B0BD30C8(*v22, v25, v26);
    v27 = v63;
    sub_1B0C036DC(v24, v25, v26, a1 & 0xFFFFFFFF000000FFLL, v63);
    v28 = v67;
    v29 = swift_beginAccess();
    if (!*(v28 + 28))
    {
      sub_1B0C05938();
      goto LABEL_17;
    }

    if (*(*(v28 + 26) + 16))
    {
      sub_1B0C058DC();
LABEL_17:
      v37 = swift_allocError();
      swift_willThrow();
      swift_endAccess();
      sub_1B0BCDEB0(v24, v25, v26);
      v38 = type metadata accessor for HandshakeReply.Encoded;
      v39 = v27;
      goto LABEL_18;
    }

    MEMORY[0x1EEE9AC00](v29);
    *(&v62 - 2) = v27;
    v55 = sub_1B0BE95B0(sub_1B0C05930);
    swift_endAccess();
    sub_1B0BCDEB0(v24, v25, v26);
    v56 = type metadata accessor for HandshakeReply.Encoded;
    v57 = v27;
    goto LABEL_34;
  }

  v40 = v67;
  swift_beginAccess();
  if (!*(v40 + 28))
  {
    v58 = ClientCommand.EncodingOptions.rfc3501.unsafeMutableAddressor();
    if (v58[2])
    {
      v59 = 0x10000;
    }

    else
    {
      v59 = 0;
    }

    if (v58[1])
    {
      v60 = 256;
    }

    else
    {
      v60 = 0;
    }

    v61 = ClientCommandEncoder.idle(tag:)(a1 & 0xFFFFFFFF000000FFLL, v60 | *v58 | v59, &v10[*(v8 + 20)]);
    *v10 = a1;
    *(v10 + 1) = v64;
    MEMORY[0x1EEE9AC00](v61);
    *(&v62 - 2) = v10;
    v55 = sub_1B0BE95B0(sub_1B0C058D4);
    sub_1B03D6B24(v10, type metadata accessor for ConnectionCommand);
    swift_endAccess();
    return v55;
  }

  sub_1B0BEA5A0();
  v37 = swift_allocError();
  swift_willThrow();
  swift_endAccess();
LABEL_19:
  if (qword_1EB6DCD50 != -1)
  {
    swift_once();
  }

  v41 = sub_1B0E439A8();
  __swift_project_value_buffer(v41, qword_1EB6DCD58);

  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  v42 = v37;
  v43 = sub_1B0E43988();
  v44 = sub_1B0E458E8();

  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v66[0] = v47;
    *v45 = 68158466;
    *(v45 + 4) = 2;
    *(v45 + 8) = 256;
    *(v45 + 10) = sub_1B04314DC(v47);

    *(v45 + 11) = 2082;
    v49 = sub_1B04314DC(v48);
    v50 = ConnectionID.debugDescription.getter(HIDWORD(v49));
    v52 = sub_1B0399D64(v50, v51, v66);

    *(v45 + 13) = v52;
    *(v45 + 21) = 2112;
    v53 = sub_1B0E42CC8();
    *(v45 + 23) = v53;
    *v46 = v53;
    _os_log_impl(&dword_1B0389000, v43, v44, "[%.*hhx-%{public}s] Unable to append command to output buffer. Invalid state. %@", v45, 0x1Fu);
    sub_1B0398EFC(v46, &unk_1EB6E2630, &qword_1B0E97970);
    MEMORY[0x1B272C230](v46, -1, -1);
    __swift_destroy_boxed_opaque_existential_0Tm(v47);
    MEMORY[0x1B272C230](v47, -1, -1);
    MEMORY[0x1B272C230](v45, -1, -1);
  }

  else
  {
  }

  return swift_willThrow();
}

uint64_t sub_1B0C036DC@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v59 = *MEMORY[0x1E69E9840];
  v10 = sub_1B0E443C8();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = a1;
  if (a3)
  {
    v57 = sub_1B0E42E78();
    v58 = v14;
    v15 = sub_1B0C05480(&unk_1F271BC60);
    v17 = v16;
    v55 = MEMORY[0x1E6969080];
    v56 = MEMORY[0x1E6969078];
    *&v53 = v15;
    *(&v53 + 1) = v16;
    v18 = __swift_project_boxed_opaque_existential_0(&v53, MEMORY[0x1E6969080]);
    v19 = *v18;
    v20 = v18[1];
    sub_1B03B2000(v15, v17);
    sub_1B0C05070(v19, v20, &v57);
    sub_1B0391D50(v15, v17);
    __swift_destroy_boxed_opaque_existential_0Tm(&v53);
    v21 = v57;
    v22 = v58;
    v23 = v58 >> 62;
    if ((v58 >> 62) > 1)
    {
      if (v23 != 2)
      {
        *(&v53 + 6) = 0;
        *&v53 = 0;
        goto LABEL_54;
      }

      v50 = v10;
      v51 = a5;
      v44 = *(v57 + 16);
      v45 = *(v57 + 24);
      if (sub_1B0E42A98() && __OFSUB__(v44, sub_1B0E42AC8()))
      {
        goto LABEL_61;
      }

      if (__OFSUB__(v45, v44))
      {
        goto LABEL_60;
      }

      sub_1B0E42AB8();
      sub_1B0E44358();
      sub_1B0BCDEB0(v52, a2, 1);
      a5 = v51;
    }

    else
    {
      if (!v23)
      {
        *&v53 = v57;
        DWORD2(v53) = v58;
        WORD6(v53) = WORD2(v58);
LABEL_54:
        sub_1B0E44358();
        sub_1B0BCDEB0(v52, a2, 1);
        goto LABEL_55;
      }

      v50 = v10;
      v51 = a5;
      if (v57 >> 32 < v57)
      {
        goto LABEL_59;
      }

      if (sub_1B0E42A98() && __OFSUB__(v21, sub_1B0E42AC8()))
      {
        goto LABEL_62;
      }

      a5 = v51;
      sub_1B0E42AB8();
      sub_1B0E44358();
      sub_1B0BCDEB0(v52, a2, 1);
    }

    v10 = v50;
LABEL_55:
    sub_1B0391D50(v21, v22);
    goto LABEL_56;
  }

  v50 = v10;
  v51 = a5;
  v24 = HIBYTE(a2) & 0xF;
  *&v53 = a1;
  *(&v53 + 1) = a2;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v24 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v54 = 0;
  v55 = v24;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v25 = sub_1B0E44DB8();
  if (v26)
  {
    v27 = v25;
    v28 = v26;
    v29 = MEMORY[0x1E69E7CC0];
    v49 = a4;
    do
    {
      while (1)
      {
        if ((v27 != 2573 || v28 != 0xE200000000000000) && (sub_1B0E46A78() & 1) == 0)
        {
          if ((v28 & 0x2000000000000000) != 0)
          {
            v31 = HIBYTE(v28) & 0xF;
          }

          else
          {
            v31 = v27 & 0xFFFFFFFFFFFFLL;
          }

          if (!v31)
          {
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
LABEL_63:
            __break(1u);
LABEL_64:
            __break(1u);
          }

          if ((v28 & 0x1000000000000000) != 0)
          {
            v36 = sub_1B0E44C18();
          }

          else
          {
            if ((v28 & 0x2000000000000000) != 0)
            {
              v33 = v27;
            }

            else
            {
              v32 = ((v27 & 0x1000000000000000) != 0 ? (v28 & 0xFFFFFFFFFFFFFFFLL) + 32 : sub_1B0E46368());
              v33 = *v32;
            }

            v34 = v33;
            v35 = (__clz(~v33) - 24) << 16;
            v36 = v34 < 0 ? v35 : 65541;
          }

          if (v36 >> 14 == 4 * v31)
          {
            v37 = sub_1B0C04CF0(v27, v28);
            if ((v37 & 0x100000000) != 0)
            {
              goto LABEL_63;
            }

            if ((v37 & 0xFFFFFF80) == 0)
            {
              break;
            }
          }
        }

LABEL_10:
        v27 = sub_1B0E44DB8();
        v28 = v30;
        if (!v30)
        {
          a4 = v49;
          goto LABEL_47;
        }
      }

      v38 = sub_1B0C04CF0(v27, v28);
      if ((v38 & 0x100000000) != 0)
      {
        goto LABEL_64;
      }

      v39 = v38;

      if ((v39 & 0xFFFFFF00) != 0)
      {
        goto LABEL_58;
      }

      v40 = v39;
      if (v39 - 127 < 0xFFFFFFA1)
      {
        goto LABEL_10;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v29 = sub_1B0C0C114(0, *(v29 + 2) + 1, 1, v29);
      }

      v42 = *(v29 + 2);
      v41 = *(v29 + 3);
      if (v42 >= v41 >> 1)
      {
        v29 = sub_1B0C0C114((v41 > 1), v42 + 1, 1, v29);
      }

      *(v29 + 2) = v42 + 1;
      v29[v42 + 32] = v40;
      v27 = sub_1B0E44DB8();
      v28 = v43;
      a4 = v49;
    }

    while (v43);
  }

LABEL_47:

  sub_1B0E44358();
  sub_1B0BCDEB0(v52, a2, 0);

  v10 = v50;
  a5 = v51;
LABEL_56:
  (*(v11 + 32))(a5, v13, v10);
  result = type metadata accessor for HandshakeReply.Encoded(0);
  v47 = a5 + *(result + 20);
  *v47 = a4;
  *(v47 + 4) = HIDWORD(a4);
  return result;
}

uint64_t *sub_1B0C03CB4@<X0>(uint64_t *__return_ptr a1@<X8>, _BYTE *__src@<X0>, unint64_t a3@<X1>)
{
  result = 0;
  v6 = 0xC000000000000000;
  if (__src && a3)
  {
    if (a3 <= 14)
    {
      result = sub_1B0C052C8(__src, &__src[a3]);
      v6 = v9 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      sub_1B0E42AD8();
      swift_allocObject();
      v8 = sub_1B0E42A88();
      if (a3 >= 0x7FFFFFFF)
      {
        sub_1B0E42EC8();
        result = swift_allocObject();
        result[2] = 0;
        result[3] = a3;
        v6 = v8 | 0x8000000000000000;
      }

      else
      {
        result = (a3 << 32);
        v6 = v8 | 0x4000000000000000;
      }
    }
  }

  *a1 = result;
  a1[1] = v6;
  return result;
}

uint64_t sub_1B0C03D7C@<X0>(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = sub_1B0E443C8();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5690, &qword_1B0ED3918) + 48);
    (*(v8 + 16))(v10, a3, v7);
    sub_1B03D6540(&qword_1EB6DB988, 255, MEMORY[0x1E69E7FD0], MEMORY[0x1E69E7FE0]);
    result = sub_1B0E44F18();
    *(a4 + v11) = result;
  }

  else
  {
    v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5690, &qword_1B0ED3918) + 48);
    (*(v8 + 16))(v10, a3, v7);
    sub_1B03D6540(&qword_1EB6DB988, 255, MEMORY[0x1E69E7FD0], MEMORY[0x1E69E7FE0]);
    result = sub_1B0E44F18();
    *(a4 + v13) = result;
  }

  return result;
}

char *sub_1B0C03F68(void *(*a1)(uint64_t *__return_ptr, char *, char *), uint64_t a2)
{
  v4 = v2;
  v20 = *MEMORY[0x1E69E9840];
  v7 = *v2;
  v6 = v2[1];
  v8 = v6 >> 62;
  if ((v6 >> 62) <= 1)
  {
    if (!v8)
    {
      sub_1B0391D50(v7, v6);
      v17[0] = v7;
      LOWORD(v17[1]) = v6;
      BYTE2(v17[1]) = BYTE2(v6);
      BYTE3(v17[1]) = BYTE3(v6);
      BYTE4(v17[1]) = BYTE4(v6);
      BYTE5(v17[1]) = BYTE5(v6);
      BYTE6(v17[1]) = BYTE6(v6);
      result = a1(&v18, v17, v17 + BYTE6(v6));
      if (!v3)
      {
        result = v18;
      }

      v10 = LODWORD(v17[1]) | ((WORD2(v17[1]) | (BYTE6(v17[1]) << 16)) << 32);
      *v4 = v17[0];
      v4[1] = v10;
      return result;
    }

    v12 = v6 & 0x3FFFFFFFFFFFFFFFLL;

    sub_1B0391D50(v7, v6);
    *v4 = xmmword_1B0ECF4A0;
    sub_1B0391D50(0, 0xC000000000000000);
    v13 = v7 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v13 < v7)
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      if (sub_1B0E42A98() && __OFSUB__(v7, sub_1B0E42AC8()))
      {
LABEL_26:
        __break(1u);
      }

      sub_1B0E42AD8();
      swift_allocObject();
      v14 = sub_1B0E42A78();

      v12 = v14;
    }

    if (v13 >= v7)
    {

      v15 = sub_1B0C04B8C(v7, v7 >> 32, a1);

      v11 = v12 | 0x4000000000000000;
      if (!v3)
      {
        *v4 = v7;
        v4[1] = v11;
        return v15;
      }

      *v4 = v7;
      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_25;
  }

  if (v8 == 2)
  {

    sub_1B0391D50(v7, v6);
    v18 = v7;
    v19 = v6 & 0x3FFFFFFFFFFFFFFFLL;
    *v4 = xmmword_1B0ECF4A0;
    sub_1B0391D50(0, 0xC000000000000000);
    sub_1B0E42E88();
    result = sub_1B0C04B8C(*(v18 + 2), *(v18 + 3), a1);
    v11 = v19 | 0x8000000000000000;
    if (!v3)
    {
      *v4 = v18;
      v4[1] = v11;
      return result;
    }

    *v4 = v18;
LABEL_21:
    v4[1] = v11;
    return result;
  }

  memset(v17, 0, 15);
  result = a1(&v18, v17, v17);
  if (!v3)
  {
    return v18;
  }

  return result;
}

char *sub_1B0C042F4(void *(*a1)(uint64_t *__return_ptr, char *, char *), uint64_t a2)
{
  v4 = v2;
  v19[2] = *MEMORY[0x1E69E9840];
  v7 = *v2;
  v6 = v2[1];
  v8 = v6 >> 62;
  if ((v6 >> 62) <= 1)
  {
    if (!v8)
    {
      sub_1B0391D50(v7, v6);
      v19[0] = v7;
      LOWORD(v19[1]) = v6;
      BYTE2(v19[1]) = BYTE2(v6);
      BYTE3(v19[1]) = BYTE3(v6);
      BYTE4(v19[1]) = BYTE4(v6);
      BYTE5(v19[1]) = BYTE5(v6);
      BYTE6(v19[1]) = BYTE6(v6);
      result = a1(&v17, v19, v19 + BYTE6(v6));
      if (!v3)
      {
        result = v17;
      }

      v10 = LODWORD(v19[1]) | ((WORD2(v19[1]) | (BYTE6(v19[1]) << 16)) << 32);
      *v4 = v19[0];
      v4[1] = v10;
      return result;
    }

    v12 = v6 & 0x3FFFFFFFFFFFFFFFLL;

    sub_1B0391D50(v7, v6);
    *v4 = xmmword_1B0ECF4A0;
    sub_1B0391D50(0, 0xC000000000000000);
    v13 = v7 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v13 < v7)
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      if (sub_1B0E42A98() && __OFSUB__(v7, sub_1B0E42AC8()))
      {
LABEL_26:
        __break(1u);
      }

      sub_1B0E42AD8();
      swift_allocObject();
      v14 = sub_1B0E42A78();

      v12 = v14;
    }

    if (v13 >= v7)
    {

      v15 = sub_1B0C04C3C(v7, v7 >> 32, a1);

      v11 = v12 | 0x4000000000000000;
      if (!v3)
      {
        *v4 = v7;
        v4[1] = v11;
        return v15;
      }

      *v4 = v7;
      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_25;
  }

  if (v8 == 2)
  {

    sub_1B0391D50(v7, v6);
    v17 = v7;
    v18 = v6 & 0x3FFFFFFFFFFFFFFFLL;
    *v4 = xmmword_1B0ECF4A0;
    sub_1B0391D50(0, 0xC000000000000000);
    sub_1B0E42E88();
    result = sub_1B0C04C3C(*(v17 + 2), *(v17 + 3), a1);
    v11 = v18 | 0x8000000000000000;
    if (!v3)
    {
      *v4 = v17;
      v4[1] = v11;
      return result;
    }

    *v4 = v17;
LABEL_21:
    v4[1] = v11;
    return result;
  }

  memset(v19, 0, 15);
  result = a1(&v17, v19, v19);
  if (!v3)
  {
    return v17;
  }

  return result;
}

uint64_t sub_1B0C04698(void (*a1)(uint64_t, uint64_t), uint64_t a2)
{
  v3 = v2;
  v23 = *MEMORY[0x1E69E9840];
  v6 = *v2;
  v5 = v2[1];
  v7 = v5 >> 62;
  if ((v5 >> 62) <= 1)
  {
    if (v7)
    {

      sub_1B0391D50(v6, v5);
      *&v22 = v6;
      *(&v22 + 1) = v5 & 0x3FFFFFFFFFFFFFFFLL;
      *v3 = xmmword_1B0ECF4A0;
      sub_1B0391D50(0, 0xC000000000000000);
      result = sub_1B0C04AB0(a1);
      v9 = v22;
      v10 = *(&v22 + 1) | 0x4000000000000000;
    }

    else
    {
      sub_1B0391D50(v6, v5);
      *&v22 = v6;
      WORD4(v22) = v5;
      BYTE10(v22) = BYTE2(v5);
      BYTE11(v22) = BYTE3(v5);
      BYTE12(v22) = BYTE4(v5);
      BYTE13(v22) = BYTE5(v5);
      BYTE14(v22) = BYTE6(v5);
      result = (a1)(&v22, &v22 + BYTE6(v5));
      v9 = v22;
      v10 = DWORD2(v22) | ((WORD6(v22) | (BYTE14(v22) << 16)) << 32);
    }

    *v3 = v9;
    v3[1] = v10;
    return result;
  }

  if (v7 != 2)
  {
    *(&v22 + 7) = 0;
    *&v22 = 0;
    return (a1)(&v22, &v22);
  }

  sub_1B0391D50(v6, v5);
  *&v22 = v6;
  *(&v22 + 1) = v5 & 0x3FFFFFFFFFFFFFFFLL;
  *v3 = xmmword_1B0ECF4A0;
  sub_1B0391D50(0, 0xC000000000000000);
  sub_1B0E42E88();
  v11 = *(&v22 + 1);
  v12 = *(v22 + 16);
  v13 = *(v22 + 24);
  result = sub_1B0E42A98();
  if (!result)
  {
    __break(1u);
    return result;
  }

  v14 = result;
  v15 = sub_1B0E42AC8();
  v16 = v12 - v15;
  if (__OFSUB__(v12, v15))
  {
    __break(1u);
LABEL_17:
    __break(1u);
  }

  v17 = __OFSUB__(v13, v12);
  v18 = v13 - v12;
  if (v17)
  {
    goto LABEL_17;
  }

  v19 = sub_1B0E42AB8();
  if (v19 >= v18)
  {
    v20 = v18;
  }

  else
  {
    v20 = v19;
  }

  result = (a1)(v14 + v16, v14 + v16 + v20);
  *v3 = v22;
  v3[1] = v11 | 0x8000000000000000;
  return result;
}

_BYTE *sub_1B0C04948@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = sub_1B0C052C8(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_1B0C05380(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_1B0C053FC(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

void *sub_1B0C049DC(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    result = a1(&v6, a3, a4 - a3);
    if (!v4)
    {
      return v6;
    }
  }

  else
  {
    result = (a1)(&v6, 0, 0, 0, a4);
    if (!v4)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

void *sub_1B0C04A44(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    result = a1(&v6, a3, a4 - a3);
    if (!v4)
    {
      return v6;
    }
  }

  else
  {
    result = (a1)(&v6, 0, 0, 0, a4);
    if (!v4)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B0C04AB0(void (*a1)(uint64_t, uint64_t))
{
  result = sub_1B0E42EA8();
  v4 = *v1;
  v5 = v1[1];
  if (v5 < v4)
  {
    __break(1u);
    goto LABEL_9;
  }

  v11 = a1;

  result = sub_1B0E42A98();
  if (!result)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v6 = result;
  result = sub_1B0E42AC8();
  v7 = v4 - result;
  if (__OFSUB__(v4, result))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v8 = v5 - v4;
  v9 = sub_1B0E42AB8();
  if (v9 >= v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = v9;
  }

  v11(v6 + v7, v6 + v7 + v10);
}

char *sub_1B0C04B8C(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = sub_1B0E42A98();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = sub_1B0E42AC8();
  v9 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = sub_1B0E42AB8();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  result = a3(&v14, &v8[v9], &v8[v9 + v13]);
  if (!v3)
  {
    return v14;
  }

  return result;
}

char *sub_1B0C04C3C(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = sub_1B0E42A98();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = sub_1B0E42AC8();
  v9 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = sub_1B0E42AB8();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  result = a3(&v14, &v8[v9], &v8[v9 + v13]);
  if (!v3)
  {
    return v14;
  }

  return result;
}

unint64_t sub_1B0C04CF0(unint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    v5 = sub_1B0C04E40(0xFuLL, a1, a2);
    if ((a2 & 0x1000000000000000) != 0)
    {
      v8 = sub_1B0E46288();
    }

    else
    {
      v6 = v5 >> 16;
      if ((a2 & 0x2000000000000000) != 0)
      {
        v16[0] = a1;
        v16[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        v7 = v16 + v6;
      }

      else if ((a1 & 0x1000000000000000) != 0)
      {
        v7 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32 + v6);
      }

      else
      {
        v7 = (sub_1B0E46368() + v6);
      }

      v8 = *v7;
      if (*v7 < 0)
      {
        v9 = (__clz(v8 ^ 0xFF) - 24);
        if (v9 > 2)
        {
          if (v9 == 3)
          {
            v10 = v7[1];
            v11 = v7[2];
            v12 = ((v8 & 0xF) << 12) | ((v10 & 0x3F) << 6);
          }

          else
          {
            v13 = v7[1];
            v14 = v7[2];
            v11 = v7[3];
            v12 = ((v8 & 0xF) << 18) | ((v13 & 0x3F) << 12) | ((v14 & 0x3F) << 6);
          }

          v8 = v12 & 0xFFFFFFC0 | v11 & 0x3F;
        }

        else if (v9 != 1)
        {
          v8 = v7[1] & 0x3F | ((v8 & 0x1F) << 6);
        }
      }
    }
  }

  else
  {
    v8 = 0;
  }

  LOBYTE(v16[0]) = v2 == 0;
  return v8 | ((v2 == 0) << 32);
}

unint64_t sub_1B0C04E40(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 1) == 0 || (result & 0xC) == 4 << v3)
  {
    goto LABEL_9;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= result >> 16)
  {
    __break(1u);
LABEL_9:
    result = sub_1B0C04ED8(result, a2, a3);
    if ((result & 1) == 0)
    {
      return result & 0xC | sub_1B0C04F4C(result, a2, a3) & 0xFFFFFFFFFFFFFFF3 | 1;
    }
  }

  return result;
}

unint64_t sub_1B0C04ED8(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 0xC) == 4 << v3)
  {
    v5 = a2;
    v6 = a3;
    result = sub_1B0A6D6C4(result, a2, a3);
    a2 = v5;
    a3 = v6;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= result >> 16)
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1B0C04F4C(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0xC000) != 0 || result < 0x10000)
  {
    result &= 0xFFFFFFFFFFFF0000;
  }

  else
  {
    v5 = result >> 16;
    if ((a3 & 0x1000000000000000) == 0)
    {
      v13[2] = v3;
      v13[3] = v4;
      if ((a3 & 0x2000000000000000) != 0)
      {
        v13[0] = a2;
        v13[1] = a3 & 0xFFFFFFFFFFFFFFLL;
        if (v5 != (HIBYTE(a3) & 0xF) && (*(v13 + v5) & 0xC0) == 0x80)
        {
          do
          {
            v7 = v5 - 1;
            v11 = *(&v12 + v5-- + 7) & 0xC0;
          }

          while (v11 == 128);
          return v7 << 16;
        }

        goto LABEL_14;
      }

      if ((a2 & 0x1000000000000000) != 0)
      {
        v6 = (a3 & 0xFFFFFFFFFFFFFFFLL) + 32;
        if (v5 == (a2 & 0xFFFFFFFFFFFFLL))
        {
          goto LABEL_14;
        }
      }

      else
      {
        v12 = result >> 16;
        v6 = sub_1B0E46368();
        v5 = v12;
        if (v12 == v10)
        {
          goto LABEL_14;
        }
      }

      if ((*(v6 + v5) & 0xC0) == 0x80)
      {
        do
        {
          v7 = v5 - 1;
          v8 = *(v6 - 1 + v5--) & 0xC0;
        }

        while (v8 == 128);
        return v7 << 16;
      }

LABEL_14:
      v7 = v5;
      return v7 << 16;
    }

    v9 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v9 = a2 & 0xFFFFFFFFFFFFLL;
    }

    if (v5 != v9)
    {

      return MEMORY[0x1EEE6A340]();
    }
  }

  return result;
}

uint64_t sub_1B0C05070(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v3)
    {
      return sub_1B0E42EF8();
    }

    v4 = a1;
    v5 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return sub_1B0C051A8(v4, v5);
  }

  if (v3 == 2)
  {
    v4 = *(a1 + 16);
    v5 = *(a1 + 24);
    return sub_1B0C051A8(v4, v5);
  }

  return sub_1B0E42EF8();
}

uint64_t sub_1B0C051A8(uint64_t a1, uint64_t a2)
{
  result = sub_1B0E42A98();
  if (!result || (result = sub_1B0E42AC8(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_1B0E42AB8();
      return sub_1B0E42EF8();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1B0C0523C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X8>)
{
  result = sub_1B0C05DE8(a1, a2, *a3);
  if (!v4)
  {
    *a4 = result;
    a4[1] = v7;
  }

  return result;
}

uint64_t sub_1B0C05278@<X0>(uint64_t result@<X0>, void *a4@<X8>)
{
  if (result)
  {
    result = sub_1B0E462A8();
    if ((v5 & 1) == 0)
    {
      *a4 = 0;
      a4[1] = 0xE000000000000000;
      a4[2] = 15;
      a4[3] = result;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1B0C052C8(_BYTE *__src, _BYTE *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v9 = v3;
  v8 = 0;
  v7 = 0;
  if (__src)
  {
    if (a2 != __src)
    {
      memcpy(&__dst, __src, v2);
      return __dst;
    }
  }

  return result;
}

uint64_t sub_1B0C05380(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_1B0E42AD8();
  swift_allocObject();
  result = sub_1B0E42A88();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_1B0E42EC8();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_1B0C053FC(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_1B0E42AD8();
  swift_allocObject();
  result = sub_1B0E42A88();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_1B0C05480(uint64_t a1)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E21D0, &unk_1B0EA2E70);
  v10 = sub_1B0C05994();
  v8[0] = a1;
  v2 = __swift_project_boxed_opaque_existential_0(v8, v9);
  v3 = (*v2 + 32);
  v4 = *(*v2 + 16);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B0C04948(v3, &v3[v4], &v7);
  v5 = v7;
  __swift_destroy_boxed_opaque_existential_0Tm(v8);
  return v5;
}

uint64_t sub_1B0C05530(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      if (result < 0)
      {
        __break(1u);
      }

      else
      {
        return 0;
      }
    }

    else
    {
      sub_1B0E42AD8();
      swift_allocObject();
      sub_1B0E42AA8();
      if (v1 >= 0x7FFFFFFF)
      {
        sub_1B0E42EC8();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = v1;
      }

      else
      {
        return v1 << 32;
      }
    }
  }

  return result;
}

uint64_t sub_1B0C055D0(uint64_t a1, uint64_t a2)
{
  if (qword_1EB6DCDA8 != -1)
  {
    swift_once();
  }

  sub_1B0E44008();
  swift_allocObject();

  v4 = sub_1B0E43FE8();
  v7[0] = a1;
  sub_1B0E44028();
  v7[3] = type metadata accessor for OutboundContent(0);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v7);
  sub_1B03FD270(a2, boxed_opaque_existential_0, type metadata accessor for OutboundContent);
  sub_1B0E44028();
  return v4;
}

uint64_t sub_1B0C05704()
{
  if (qword_1EB6DCD50 != -1)
  {
    swift_once();
  }

  v1 = sub_1B0E439A8();
  __swift_project_value_buffer(v1, qword_1EB6DCD58);

  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  v2 = sub_1B0E43988();
  v3 = sub_1B0E45908();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v12[0] = v5;
    *v4 = 68158210;
    *(v4 + 4) = 2;
    *(v4 + 8) = 256;
    *(v4 + 10) = sub_1B04314DC(v5);

    *(v4 + 11) = 2082;
    v7 = sub_1B04314DC(v6);
    v8 = ConnectionID.debugDescription.getter(HIDWORD(v7));
    v10 = sub_1B0399D64(v8, v9, v12);

    *(v4 + 13) = v10;
    _os_log_impl(&dword_1B0389000, v2, v3, "[%.*hhx-%{public}s] Enabling Openwave Messaging workaround.", v4, 0x15u);
    __swift_destroy_boxed_opaque_existential_0Tm(v5);
    MEMORY[0x1B272C230](v5, -1, -1);
    MEMORY[0x1B272C230](v4, -1, -1);
  }

  else
  {
  }

  result = swift_beginAccess();
  if (*(v0 + 241) == 1)
  {
    *(v0 + 232) = 0;
    *(v0 + 240) = 1;
  }

  return result;
}

unint64_t sub_1B0C058DC()
{
  result = qword_1EB6E5660;
  if (!qword_1EB6E5660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E5660);
  }

  return result;
}

unint64_t sub_1B0C05938()
{
  result = qword_1EB6E5668;
  if (!qword_1EB6E5668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E5668);
  }

  return result;
}

unint64_t sub_1B0C05994()
{
  result = qword_1EB6DAE08;
  if (!qword_1EB6DAE08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E21D0, &unk_1B0EA2E70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DAE08);
  }

  return result;
}

unint64_t sub_1B0C05A4C()
{
  result = qword_1EB6E5678;
  if (!qword_1EB6E5678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E5678);
  }

  return result;
}

uint64_t sub_1B0C05ACC(uint64_t a1)
{
  v3 = *(sub_1B0E43828() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  v6 = *v5;
  v7 = *(v5 + 8);

  return sub_1B0C01F58(a1, v1 + v4, v6, v7);
}

void *sub_1B0C05B6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(v3 + 16);
  v7 = *v5;
  v6 = v5[1];
  v13[0] = v7;
  v13[1] = v6;
  v12[2] = v13;
  result = sub_1B0C04A44(sub_1B0C05BD4, v12, a1, a2);
  *a3 = result;
  a3[1] = v9;
  a3[2] = v10;
  a3[3] = v11;
  return result;
}

uint64_t sub_1B0C05BF8(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = sub_1B0E441D8();
  v5 = (*(*(v4 - 8) + 48))(a1, 1, v4) == 1;
  return v3(v5);
}

void sub_1B0C05C80(uint64_t a1)
{
  sub_1B0C05CFC(319);
  if (v1 <= 0x3F)
  {
    sub_1B0E44118();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1B0C05CFC(uint64_t a1)
{
  if (!qword_1EB6DCCF8)
  {
    type metadata accessor for OutboundContent(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB6DCCF8);
    }
  }
}

void *sub_1B0C05D64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v8 = **(v3 + 16);
  v7[2] = &v8;
  result = sub_1B0C049DC(sub_1B0C05DC8, v7, a1, a2);
  *a3 = result;
  a3[1] = v6;
  return result;
}

uint64_t sub_1B0C05DE8(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (!result || !a2)
  {
    return a3;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    v5 = result;
    sub_1B0E466E8();
    if ((v9 & 1) == 0)
    {
      v6 = 0;
      v7 = v8;
      do
      {
        *(v5 + v6) = v7;
        if (a2 - 1 == v6)
        {
          break;
        }

        sub_1B0E466E8();
        v7 = v8;
        ++v6;
      }

      while ((v9 & 1) == 0);
    }

    return a3;
  }

  __break(1u);
  return result;
}

uint64_t get_enum_tag_for_layout_string_15IMAP2Connection6FramerC11CompressionO(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1B0C05EC8(uint64_t a1, uint64_t a2)
{
  v4 = _s12OutputHelperV5ChunkVMa(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B0C05F2C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B0C05F94(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B0C05FF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (a1)
  {
    v5 = a2 + a1;
  }

  else
  {
    v5 = 0;
  }

  return a5(a1, v5, a3, a4);
}

void sub_1B0C06050(uint64_t a1)
{
  sub_1B0E443C8();
  if (v1 <= 0x3F)
  {
    sub_1B0AD434C(319, &qword_1EB6DACD0, MEMORY[0x1E69E6530]);
    if (v2 <= 0x3F)
    {
      sub_1B0AD434C(319, &qword_1EB6DD0D8, &type metadata for Tag);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t HandshakeReply.Encoded.init(content:tag:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a2;
  v6 = HIDWORD(a2);
  v7 = sub_1B0E443C8();
  (*(*(v7 - 8) + 32))(a3, a1, v7);
  result = type metadata accessor for HandshakeReply.Encoded(0);
  v9 = a3 + *(result + 20);
  *v9 = v3;
  *(v9 + 4) = v6;
  return result;
}

uint64_t type metadata accessor for HandshakeReply.Encoded(uint64_t a1)
{
  result = qword_1EB6DCE68;
  if (!qword_1EB6DCE68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B0C061F4(uint64_t a1, unint64_t a2, char a3, uint64_t a4, unint64_t a5, char a6)
{
  if (a3)
  {
    if (a6)
    {
      return sub_1B0AB8858(a1, a2, a4, a5);
    }

    return 0;
  }

  if (a6)
  {
    return 0;
  }

  if (a1 == a4 && a2 == a5)
  {
    return 1;
  }

  else
  {
    return sub_1B0E46A78();
  }
}

uint64_t sub_1B0C0623C(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *a2;
  v7 = *(a2 + 8);
  v8 = *(a2 + 16);
  if (a1[2])
  {
    if (v8)
    {
      return sub_1B0AB8858(v4, v5, v6, v7);
    }

    return 0;
  }

  if (v8)
  {
    return 0;
  }

  if (v4 == v6 && v5 == v7)
  {
    return 1;
  }

  else
  {
    return sub_1B0E46A78();
  }
}

uint64_t HandshakeReply.Encoded.content.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B0E443C8();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t HandshakeReply.Encoded.content.setter(uint64_t a1)
{
  v3 = sub_1B0E443C8();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t HandshakeReply.Encoded.tag.setter(unint64_t a1)
{
  v2 = a1;
  v3 = HIDWORD(a1);
  result = type metadata accessor for HandshakeReply.Encoded(0);
  v5 = v1 + *(result + 20);
  *v5 = v2;
  *(v5 + 4) = v3;
  return result;
}

uint64_t _s15IMAP2Connection14HandshakeReplyO7EncodedV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B0E443C8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v24 - v9;
  v11 = *(type metadata accessor for HandshakeReply.Encoded(0) + 20);
  v12 = *(a1 + v11);
  v13 = *(a1 + v11 + 4);
  v14 = (a2 + v11);
  v15 = *v14;
  v16 = *(v14 + 1);
  if (v12 != v15 || v13 != v16)
  {
    return 0;
  }

  v19 = *(v5 + 16);
  v19(v10, a1, v4);
  v19(v7, a2, v4);
  v20 = _s13IMAP2Protocol11MessageDataV04BodyD0V5countSivg_0();
  if (v20 == _s13IMAP2Protocol11MessageDataV04BodyD0V5countSivg_0())
  {
    sub_1B075CEE0();
    sub_1B0E45668();
    v21 = sub_1B0E456C8();
    if (v25 == v24[2])
    {
      v18 = 1;
    }

    else
    {
      MEMORY[0x1EEE9AC00](v21);
      v24[-2] = v7;
      v24[-1] = v10;
      sub_1B0E44328();
      v18 = v25;
    }
  }

  else
  {
    v18 = 0;
  }

  v22 = *(v5 + 8);
  v22(v7, v4);
  v22(v10, v4);
  return v18;
}

uint64_t get_enum_tag_for_layout_string_19CollectionsInternal17OrderedDictionaryVyS2SSgGSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1B0C06704(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 72);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B0C0674C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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
      *(result + 72) = (a2 - 1);
      return result;
    }

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1B0C067B4@<X0>(uint64_t a2@<X8>)
{
  result = sub_1B0C06D08(*(v2 + 24));
  *a2 = result;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  *(a2 + 64) = 2;
  return result;
}

uint64_t sub_1B0C06814(uint64_t a1)
{
  v3 = type metadata accessor for UntaggedResponse(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B0B7EAA4(a1, v5);
  if (swift_getEnumCaseMultiPayload() != 21)
  {
    return sub_1B0B7EB08(v5);
  }

  v8 = *v5;
  v6 = *(v5 + 2);
  result = sub_1B03B8738(v1[10], v1[11], v1[12]);
  *(v1 + 5) = v8;
  v1[12] = v6;
  return result;
}

double sub_1B0C068E0@<D0>(char a1@<W3>, uint64_t a2@<X8>)
{
  if (a1 || (v4 = v2[11]) == 0)
  {
    *&v14 = 0;
    v13 = 9uLL;
    BYTE8(v14) = -64;
    sub_1B0BD6CF8(&v13);
  }

  else
  {
    v5 = v2[12];
    v6 = v2[10];

    ServerID.init(_:)(v6, v4, v5, &v13);
    sub_1B0C06A4C(&v13);
  }

  v33 = v21;
  v34 = v22;
  v35 = v23;
  v36 = v24;
  v29 = v17;
  v30 = v18;
  v31 = v19;
  v32 = v20;
  v25 = v13;
  v26 = v14;
  v27 = v15;
  v28 = v16;
  __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
  v45 = v35;
  v46 = v36;
  v41 = v29;
  v42 = v30;
  v43 = v31;
  v44 = v32;
  v37 = v25;
  v38 = v26;
  v39 = v27;
  v40 = v28;
  v7 = v34;
  *(a2 + 128) = v33;
  *(a2 + 144) = v7;
  *(a2 + 160) = v45;
  *(a2 + 176) = v46;
  v8 = v42;
  *(a2 + 64) = v41;
  *(a2 + 80) = v8;
  v9 = v44;
  *(a2 + 96) = v43;
  *(a2 + 112) = v9;
  v10 = v38;
  *a2 = v37;
  *(a2 + 16) = v10;
  result = *&v39;
  v12 = v40;
  *(a2 + 32) = v39;
  *(a2 + 48) = v12;
  return result;
}

uint64_t sub_1B0C06A58(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v28 = MEMORY[0x1E69E7CC0];
  v27 = *(a1 + 16);
  sub_1B041D32C(0, v1, 0);
  v2 = v28;
  v4 = a1 + 56;
  result = sub_1B0E460B8();
  v6 = v27;
  v7 = 0;
  while ((result & 0x8000000000000000) == 0 && result < 1 << *(a1 + 32))
  {
    v9 = result >> 6;
    v10 = 1 << result;
    if ((*(v4 + 8 * (result >> 6)) & (1 << result)) == 0)
    {
      goto LABEL_30;
    }

    v11 = *(*(a1 + 48) + result);
    if (v11 <= 1)
    {
      if (*(*(a1 + 48) + result))
      {
        v12 = 0xE90000000000006CLL;
        v13 = 0x6C69662D6B636162;
      }

      else
      {
        v12 = 0xE700000000000000;
        v13 = 0x72657865646E69;
      }
    }

    else if (v11 == 2)
    {
      v12 = 0xE800000000000000;
      v13 = 0x6574616E6F646572;
    }

    else if (v11 == 3)
    {
      v12 = 0xE800000000000000;
      v13 = 0x6369646F69726570;
    }

    else
    {
      v12 = 0xE400000000000000;
      v13 = 1752397168;
    }

    v14 = *(a1 + 36);
    v16 = *(v28 + 16);
    v15 = *(v28 + 24);
    if (v16 >= v15 >> 1)
    {
      v25 = *(a1 + 36);
      v26 = result;
      sub_1B041D32C((v15 > 1), v16 + 1, 1);
      v6 = v27;
      v14 = v25;
      result = v26;
    }

    *(v28 + 16) = v16 + 1;
    v17 = v28 + 16 * v16;
    *(v17 + 32) = v13;
    *(v17 + 40) = v12;
    v8 = 1 << *(a1 + 32);
    if (result >= v8)
    {
      goto LABEL_31;
    }

    v4 = a1 + 56;
    v18 = *(a1 + 56 + 8 * v9);
    if ((v18 & v10) == 0)
    {
      goto LABEL_32;
    }

    if (v14 != *(a1 + 36))
    {
      goto LABEL_33;
    }

    v19 = v18 & (-2 << (result & 0x3F));
    if (v19)
    {
      v8 = __clz(__rbit64(v19)) | result & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v20 = v9 << 6;
      v21 = v9 + 1;
      v22 = (a1 + 64 + 8 * v9);
      while (v21 < (v8 + 63) >> 6)
      {
        v24 = *v22++;
        v23 = v24;
        v20 += 64;
        ++v21;
        if (v24)
        {
          sub_1B0425168(result, v14, 0);
          v6 = v27;
          v8 = __clz(__rbit64(v23)) + v20;
          goto LABEL_4;
        }
      }

      sub_1B0425168(result, v14, 0);
      v6 = v27;
    }

LABEL_4:
    ++v7;
    result = v8;
    if (v7 == v6)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
  return result;
}

uint64_t sub_1B0C06D08(__n128 a1)
{
  v2 = v1[1];
  if (v2)
  {
    v3 = *v1;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0C074E0(v3, v2, 1701667182, 0xE400000000000000);
  }

  v4 = v1[3];
  if (v4)
  {
    v5 = v1[2];
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0C074E0(v5, v4, 0x6E6F6973726576, 0xE700000000000000);
  }

  v6 = v1[5];
  if (v6)
  {
    v7 = v1[4];
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0C074E0(v7, v6, 29551, 0xE200000000000000);
  }

  v8 = v1[7];
  if (v8)
  {
    v9 = v1[6];
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0C074E0(v9, v8, 0x69737265762D736FLL, 0xEA00000000006E6FLL);
  }

  sub_1B0C074E0(0x6E4920656C707041, 0xE900000000000063, 0x726F646E6576, 0xE600000000000000);
  v10 = v1[8];
  v11 = sub_1B0C091FC(v10);
  sub_1B0C074E0(v11, v12, 0x746E657665, 0xE500000000000000);
  if (*(v10 + 16))
  {
    sub_1B0E46C28();
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    v13 = sub_1B0E46CB8();
    v14 = -1 << *(v10 + 32);
    v15 = v13 & ~v14;
    if ((*(v10 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
    {
      v16 = ~v14;
      while (1)
      {
        v17 = *(*(v10 + 48) + v15);
        if (v17 <= 2 && v17 != 1 && v17 != 2)
        {
          break;
        }

        v18 = sub_1B0E46A78();

        if (v18)
        {
          goto LABEL_19;
        }

        v15 = (v15 + 1) & v16;
        if (((*(v10 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
        {
          return 0;
        }
      }

LABEL_19:
      sub_1B0C074E0(49, 0xE100000000000000, 0x72657865646E69, 0xE700000000000000);
    }
  }

  return 0;
}

void sub_1B0C06FDC(__int128 *a1)
{
  v2 = v1;
  if (v2[1])
  {
    sub_1B0E46C68();
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    if (v2[3])
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_1B0E46C68();
    if (v2[3])
    {
LABEL_3:
      sub_1B0E46C68();
      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
      if (v2[5])
      {
        goto LABEL_4;
      }

LABEL_8:
      sub_1B0E46C68();
      if (v2[7])
      {
        goto LABEL_5;
      }

      goto LABEL_9;
    }
  }

  sub_1B0E46C68();
  if (!v2[5])
  {
    goto LABEL_8;
  }

LABEL_4:
  sub_1B0E46C68();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  if (v2[7])
  {
LABEL_5:
    sub_1B0E46C68();
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    goto LABEL_10;
  }

LABEL_9:
  sub_1B0E46C68();
LABEL_10:
  v4 = v2[8];

  sub_1B0C08D50(a1, v4);
}

uint64_t sub_1B0C070EC()
{
  sub_1B0E46C28();
  sub_1B0C06FDC(v1);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0C07130(uint64_t a1)
{
  sub_1B0E46C28();
  sub_1B0C06FDC(v2);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0C0716C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v7[2] = *(a1 + 32);
  v7[3] = v2;
  v8 = *(a1 + 64);
  v3 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v3;
  v4 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v9[3] = v4;
  v10 = *(a2 + 64);
  v5 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v5;
  return sub_1B0C08F18(v7, v9) & 1;
}

id sub_1B0C071C8()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 infoDictionary];

  if (!v1)
  {
    return v1;
  }

  v2 = sub_1B0E445A8();

  result = *MEMORY[0x1E695E4F0];
  if (!*MEMORY[0x1E695E4F0])
  {
    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v4 = sub_1B0E44AD8();
  if (*(v2 + 16))
  {
    v6 = sub_1B0441038(v4, v5);
    v8 = v7;

    if (v8)
    {
      sub_1B039AEC8(*(v2 + 56) + 32 * v6, v29);
      if (swift_dynamicCast())
      {
LABEL_13:
        v1 = v27;
        if (!*(v2 + 16))
        {
          goto LABEL_24;
        }

LABEL_17:
        v14 = sub_1B0441038(0xD00000000000001ALL, 0x80000001B0F2D0B0);
        if (v15)
        {
          sub_1B039AEC8(*(v2 + 56) + 32 * v14, v29);
          v16 = swift_dynamicCast();
          if (v16)
          {
            v17 = v27;
          }

          else
          {
            v17 = 0;
          }

          if (v16)
          {
            v18 = v28;
          }

          else
          {
            v18 = 0;
          }

LABEL_25:
          result = *MEMORY[0x1E695E500];
          if (*MEMORY[0x1E695E500])
          {
            v19 = sub_1B0E44AD8();
            if (*(v2 + 16))
            {
              v21 = sub_1B0441038(v19, v20);
              v23 = v22;

              if (v23)
              {
                sub_1B039AEC8(*(v2 + 56) + 32 * v21, v29);

                v24 = swift_dynamicCast();
                if (v24)
                {
                  v25 = v27;
                }

                else
                {
                  v25 = 0;
                }

                if (v24)
                {
                  v26 = v28;
                }

                else
                {
                  v26 = 0;
                }

                goto LABEL_36;
              }
            }

            else
            {
            }

            v25 = 0;
            v26 = 0;
LABEL_36:
            sub_1B0C07708(v17, v18, v25, v26);

            return v1;
          }

          goto LABEL_39;
        }

LABEL_24:
        v17 = 0;
        v18 = 0;
        goto LABEL_25;
      }
    }
  }

  else
  {
  }

  result = *MEMORY[0x1E695E4F8];
  if (*MEMORY[0x1E695E4F8])
  {
    v9 = sub_1B0E44AD8();
    if (*(v2 + 16))
    {
      v11 = sub_1B0441038(v9, v10);
      v13 = v12;

      if (v13)
      {
        sub_1B039AEC8(*(v2 + 56) + 32 * v11, v29);
        if (swift_dynamicCast())
        {
          goto LABEL_13;
        }
      }
    }

    else
    {
    }

    v1 = 0;
    if (!*(v2 + 16))
    {
      goto LABEL_24;
    }

    goto LABEL_17;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_1B0C074E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  v10 = v4[1];
  v11 = *(v10 + 16);
  if (*v4)
  {

    v12 = sub_1B0C08B5C(a3, a4, v10 + 32, v11, (v9 + 16), v9 + 32);
    v14 = v13;
    v11 = v15;

    if ((v14 & 1) == 0)
    {

      if (a2 == 1)
      {
LABEL_4:
        sub_1B0C07FE0(v12, v11);

        sub_1B0C08148(v12);
LABEL_15:
      }

      goto LABEL_24;
    }
  }

  else if (v11)
  {
    v12 = 0;
    v16 = (v10 + 40);
    while (1)
    {
      v17 = *(v16 - 1) == a3 && *v16 == a4;
      if (v17 || (sub_1B0E46A78() & 1) != 0)
      {
        break;
      }

      ++v12;
      v16 += 2;
      if (v11 == v12)
      {
        v11 = 0;
        goto LABEL_14;
      }
    }

    v11 = 0;
    if (a2 == 1)
    {
      goto LABEL_4;
    }

LABEL_24:
    v25 = v4[2];
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1B0C0E078(v25);
      v25 = result;
    }

    if ((v12 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v12 < v25[2])
    {
      v26 = &v25[2 * v12];
      v26[4] = a1;
      v26[5] = a2;

      v4[2] = v25;
      return result;
    }

    __break(1u);
    return result;
  }

LABEL_14:
  if (a2 == 1)
  {
    goto LABEL_15;
  }

  sub_1B0C07E68(a3, a4, v11);

  v21 = v4[2];
  v19 = v4 + 2;
  v20 = v21;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v19 = v21;
  if ((result & 1) == 0)
  {
    result = sub_1B041DB10(0, *(v20 + 16) + 1, 1);
    v20 = *v19;
  }

  v23 = *(v20 + 16);
  v22 = *(v20 + 24);
  if (v23 >= v22 >> 1)
  {
    result = sub_1B041DB10((v22 > 1), v23 + 1, 1);
    v20 = *v19;
  }

  *(v20 + 16) = v23 + 1;
  v24 = v20 + 16 * v23;
  *(v24 + 32) = a1;
  *(v24 + 40) = a2;
  *v19 = v20;
  return result;
}

uint64_t sub_1B0C07708(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    if (!a4 || a1 == a3 && a2 == a4 || (v4 = a1, v7 = sub_1B0E46A78(), a1 = v4, (v7 & 1) != 0))
    {
      v8 = a1;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      return v8;
    }

    v12 = v4;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    MEMORY[0x1B2726E80](10272, 0xE200000000000000);
    v10 = a3;
    v11 = a4;
  }

  else
  {
    if (!a4)
    {
      return a3;
    }

    v12 = 40;
    v10 = a3;
    v11 = a4;
  }

  MEMORY[0x1B2726E80](v10, v11);
  MEMORY[0x1B2726E80](41, 0xE100000000000000);
  return v12;
}

uint64_t sub_1B0C077FC@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1B0E44B68();
  MEMORY[0x1EEE9AC00](v4 - 8);
  sub_1B0E42AD8();
  swift_allocObject();
  v13 = 0xC800000000;
  v14 = sub_1B0E42AA8();
  sub_1B0C08CA8(&v13, 0);
  v14 |= 0x4000000000000000uLL;
  v5 = sub_1B0C07A1C(&v13, a1);
  if ((v6 & 1) != 0 || v5 < 1)
  {
    result = sub_1B0391D50(v13, v14);
    v9 = 0;
    v11 = 0;
  }

  else
  {
    sub_1B0E42EE8();
    v7 = v13;
    v8 = v14;
    sub_1B0E44B48();
    v9 = sub_1B0E44AF8();
    v11 = v10;
    result = sub_1B0391D50(v7, v8);
  }

  *a2 = v9;
  a2[1] = v11;
  return result;
}

double sub_1B0C0793C(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
LABEL_9:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3850, &qword_1B0E9B600);
    sub_1B0E46258();
    if (!v2)
    {
      return *&v5[2];
    }

    return result;
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((a1 & 0x1000000000000000) != 0)
    {
      sub_1B0C077FC(((a2 & 0xFFFFFFFFFFFFFFFLL) + 32), v5);
      if (!v2)
      {
        return *v5;
      }

      return result;
    }

    goto LABEL_9;
  }

  v5[0] = a1;
  v5[1] = a2 & 0xFFFFFFFFFFFFFFLL;
  sub_1B0C077FC(v5, &v4);
  if (!v2)
  {
    return *&v4;
  }

  return result;
}

uint64_t sub_1B0C07A1C(uint64_t *a1, char *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = *a1;
  v5 = a1[1];
  v7 = v5 >> 62;
  if ((v5 >> 62) > 1)
  {
    if (v7 != 2)
    {
      *(&v17 + 7) = 0;
      v16 = 0;
      *&v17 = 0;
      if (sysctlbyname(a2, &v17, &v16, 0, 0))
      {
        return 0;
      }

      else
      {
        return v16;
      }
    }

    sub_1B0391D50(v6, v5);
    *&v17 = v6;
    *(&v17 + 1) = v5 & 0x3FFFFFFFFFFFFFFFLL;
    *a1 = xmmword_1B0ECF4A0;
    sub_1B0391D50(0, 0xC000000000000000);
    sub_1B0E42E88();
    v6 = v17;
    result = sub_1B0C07D84(*(v17 + 16), *(v17 + 24), *(&v17 + 1), a2);
    v10 = *(&v17 + 1) | 0x8000000000000000;
    if (!v2)
    {
      *a1 = v17;
      a1[1] = v10;
      return result;
    }

LABEL_21:
    *a1 = v6;
    a1[1] = v10;
    return result;
  }

  if (v7)
  {
    v11 = v5 & 0x3FFFFFFFFFFFFFFFLL;

    sub_1B0391D50(v6, v5);
    *a1 = xmmword_1B0ECF4A0;
    sub_1B0391D50(0, 0xC000000000000000);
    v12 = v6 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v12 < v6)
      {
LABEL_24:
        __break(1u);
        goto LABEL_25;
      }

      if (sub_1B0E42A98() && __OFSUB__(v6, sub_1B0E42AC8()))
      {
LABEL_25:
        __break(1u);
      }

      sub_1B0E42AD8();
      swift_allocObject();
      v13 = sub_1B0E42A78();

      v11 = v13;
    }

    if (v12 >= v6)
    {

      v14 = sub_1B0C07D84(v6, v6 >> 32, v11, a2);

      v10 = v11 | 0x4000000000000000;
      if (!v2)
      {
        *a1 = v6;
        a1[1] = v10;
        return v14;
      }

      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_24;
  }

  sub_1B0391D50(v6, v5);
  *&v17 = v6;
  WORD4(v17) = v5;
  BYTE10(v17) = BYTE2(v5);
  BYTE11(v17) = BYTE3(v5);
  BYTE12(v17) = BYTE4(v5);
  BYTE13(v17) = BYTE5(v5);
  BYTE14(v17) = BYTE6(v5);
  v16 = BYTE6(v5);
  if (sysctlbyname(a2, &v17, &v16, 0, 0))
  {
    result = 0;
  }

  else
  {
    result = v16;
  }

  v9 = DWORD2(v17) | ((WORD6(v17) | (BYTE14(v17) << 16)) << 32);
  *a1 = v17;
  a1[1] = v9;
  return result;
}

size_t sub_1B0C07D84(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  v16[1] = *MEMORY[0x1E69E9840];
  v7 = sub_1B0E42A98();
  if (!v7)
  {
LABEL_13:
    __break(1u);
  }

  v8 = v7;
  v9 = sub_1B0E42AC8();
  v10 = a1 - v9;
  if (__OFSUB__(a1, v9))
  {
    __break(1u);
    goto LABEL_12;
  }

  v11 = __OFSUB__(a2, a1);
  v12 = a2 - a1;
  if (v11)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v13 = sub_1B0E42AB8();
  if (v13 >= v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = v13;
  }

  v16[0] = v14;
  if (sysctlbyname(a4, (v8 + v10), v16, 0, 0))
  {
    return 0;
  }

  else
  {
    return v16[0];
  }
}

uint64_t sub_1B0C07E68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v9 = v3[1];
  v7 = v3 + 1;
  v8 = v9;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  result = swift_isUniquelyReferenced_nonNull_native();
  *v7 = v9;
  if ((result & 1) == 0)
  {
    result = sub_1B041D32C(0, *(v8 + 16) + 1, 1);
    v8 = *v7;
  }

  v12 = *(v8 + 16);
  v11 = *(v8 + 24);
  if (v12 >= v11 >> 1)
  {
    result = sub_1B041D32C((v11 > 1), v12 + 1, 1);
    v8 = *v7;
  }

  *(v8 + 16) = v12 + 1;
  v13 = v8 + 16 * v12;
  *(v13 + 32) = a1;
  *(v13 + 40) = a2;
  v4[1] = v8;
  v14 = *v4;
  if (*v4)
  {
    swift_beginAccess();
    if (MEMORY[0x1B2725670](*(v14 + 16) & 0x3FLL) > v12)
    {
      result = swift_isUniquelyReferenced_native();
      v15 = *v4;
      if ((result & 1) == 0)
      {
        if (!v15)
        {
LABEL_16:
          __break(1u);
          return result;
        }

        v16 = sub_1B0E43578();

        *v4 = v16;
        v15 = v16;
      }

      if (v15)
      {
        return sub_1B0E43518();
      }

      __break(1u);
      goto LABEL_16;
    }
  }

  else if (v12 < 0xF)
  {
    return result;
  }

  return sub_1B0C08258();
}

uint64_t sub_1B0C07FE0(uint64_t a1, uint64_t a2)
{
  v4 = v2[1];
  v5 = *(v4 + 16);
  v6 = *v2;
  if (!*v2)
  {
    if (!v5)
    {
      goto LABEL_16;
    }

    return sub_1B0C081D0(a1);
  }

  swift_beginAccess();
  if ((*(v6 + 16) & 0x3FLL) == (*(v6 + 24) & 0x3FLL))
  {
    if (!v5)
    {
      goto LABEL_16;
    }
  }

  else if (v5 <= MEMORY[0x1B2725680]())
  {
LABEL_16:
    v11 = sub_1B0C081D0(a1);
    sub_1B0C08258();
    return v11;
  }

  result = swift_isUniquelyReferenced_native();
  v9 = *v2;
  if ((result & 1) == 0)
  {
    if (!v9)
    {
      goto LABEL_20;
    }

    v10 = sub_1B0E43578();

    *v2 = v10;
    v9 = v10;
  }

  if (v9)
  {

    result = sub_1B0C082F8(a2, (v9 + 16), v9 + 32, v2);
    if (__OFADD__(a1, 1))
    {
      __break(1u);
    }

    else if (a1 + 1 >= a1)
    {

      sub_1B0C084F0(a1, a1 + 1, v4, (v9 + 16), v9 + 32);

      return sub_1B0C081D0(a1);
    }

    __break(1u);
  }

  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1B0C08148(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1B0C0E078(v3);
    v3 = result;
  }

  v5 = v3[2];
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = &v3[2 * a1];
    v8 = v7[4];
    memmove(v7 + 4, v7 + 6, 16 * (v5 - 1 - a1));
    v3[2] = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_1B0C081D0(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1B0C0E064(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_1B0C08258()
{
  v1 = *v0;
  if (*v0)
  {
    swift_beginAccess();
    v2 = *(v1 + 24) & 0x3FLL;
  }

  else
  {
    v2 = 0;
  }

  v3 = v0[1];
  v4 = *(v3 + 16);
  if (v2 || v4 >= 0x10)
  {
    v6 = MEMORY[0x1B27256A0](v4);
    if (v2 <= v6)
    {
      v7 = v6;
    }

    else
    {
      v7 = v2;
    }

    v5 = sub_1B0C0895C(v3, v7, 0, v2);
  }

  else
  {
    v5 = 0;
  }

  *v0 = v5;
  return result;
}

unint64_t sub_1B0C082F8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = a1;
  v14 = sub_1B0E434F8();
  sub_1B0E43548();
  if (v14)
  {
    v7 = sub_1B0E43508();
    while (1)
    {
      result = sub_1B0E43528();
      if (v9)
      {
LABEL_20:
        __break(1u);
        return result;
      }

      if ((result & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_18:
        __break(1u);
LABEL_19:
        __break(1u);
        goto LABEL_20;
      }

      if (result >= *(*(a4 + 8) + 16))
      {
        goto LABEL_18;
      }

      sub_1B0E46C28();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
      v10 = sub_1B0E46CB8();

      v11 = 1 << *a2;
      if (__OFSUB__(v11, 1))
      {
        goto LABEL_19;
      }

      v12 = (v11 - 1) & v10;
      if (v6 >= v7)
      {
        break;
      }

      if (v12 < v7)
      {
        goto LABEL_12;
      }

LABEL_13:
      sub_1B0E43528();
      v6 = a1;
      sub_1B0E43518();
LABEL_3:
      sub_1B0E43548();
    }

    if (v12 < v7)
    {
      goto LABEL_3;
    }

LABEL_12:
    if (v6 < v12)
    {
      goto LABEL_3;
    }

    goto LABEL_13;
  }

  return sub_1B0E43518();
}

uint64_t sub_1B0C084F0(uint64_t result, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    goto LABEL_58;
  }

  if (v6 >= 1)
  {
    v8 = result;
    v9 = *(a3 + 16);
    if (result < (v9 - v6) / 2)
    {
      result = MEMORY[0x1B2725670](*a4 & 0x3FLL);
      if (result / 3 > v8)
      {
        if (v8 < 0)
        {
LABEL_62:
          __break(1u);
          goto LABEL_63;
        }

        if (v9 < v8)
        {
LABEL_63:
          __break(1u);
          goto LABEL_64;
        }

        if (v8)
        {
          v10 = 0;
          while (1)
          {
            sub_1B0E46C28();
            _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
            _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
            result = sub_1B0E46CB8();
            if (__OFSUB__(1 << *a4, 1))
            {
              break;
            }

            if (sub_1B0E434F8())
            {
              while (1)
              {
                v11 = sub_1B0E43528();
                if ((v12 & 1) == 0 && v11 == v10)
                {
                  break;
                }

                sub_1B0E43548();
              }
            }

            result = v10 + v6;
            if (__OFADD__(v10, v6))
            {
              goto LABEL_55;
            }

            ++v10;
            sub_1B0E43538();

            if (v10 == v8)
            {
              goto LABEL_17;
            }
          }

          __break(1u);
LABEL_55:
          __break(1u);
          goto LABEL_56;
        }

LABEL_17:

        goto LABEL_18;
      }

      sub_1B0E434F8();
      v19 = sub_1B0E43528();
      if ((v20 & 1) != 0 || v19 >= v8)
      {
LABEL_33:
        result = sub_1B0E43548();
LABEL_18:
        v13 = a4[1];
        if (__OFSUB__(v13 >> 6, v6))
        {
LABEL_60:
          __break(1u);
          goto LABEL_61;
        }

        v14 = 1 << *a4;
        v15 = __OFSUB__(v14, 1);
        v16 = v14 - 1;
        if (v15)
        {
LABEL_61:
          __break(1u);
          goto LABEL_62;
        }

        v17 = (v16 & (((v13 >> 6) - v6) >> 63)) + (v13 >> 6) - v6;
        if (v17 < v16)
        {
          v16 = 0;
        }

        a4[1] = a4[1] & 0x3FLL | ((v17 - v16) << 6);
        return result;
      }

      if (!__OFADD__(v19, v6))
      {
        sub_1B0E43538();
        goto LABEL_33;
      }

      __break(1u);
LABEL_39:
      sub_1B0E434F8();
      v21 = sub_1B0E43528();
      if ((v22 & 1) == 0 && v21 >= v5)
      {
        v15 = __OFSUB__(v21, v6);
        result = v21 - v6;
        if (v15)
        {
LABEL_56:
          __break(1u);
LABEL_57:
          __break(1u);
LABEL_58:
          __break(1u);
          goto LABEL_59;
        }

        sub_1B0E43538();
      }

      return sub_1B0E43548();
    }

    v5 = a2;
    v18 = v9 - a2;
    if (__OFSUB__(v9, a2))
    {
LABEL_59:
      __break(1u);
      goto LABEL_60;
    }

    result = MEMORY[0x1B2725670](*a4 & 0x3FLL);
    if (v18 >= result / 3)
    {
      goto LABEL_39;
    }

    if (v9 < v5)
    {
LABEL_64:
      __break(1u);
      goto LABEL_65;
    }

    if (v5 < 0)
    {
LABEL_65:
      __break(1u);
      return result;
    }

    if (v9 != v5)
    {
      do
      {
        sub_1B0E46C28();
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
        result = sub_1B0E46CB8();
        if (__OFSUB__(1 << *a4, 1))
        {
          goto LABEL_57;
        }

        if (sub_1B0E434F8())
        {
          while (1)
          {
            v23 = sub_1B0E43528();
            if ((v24 & 1) == 0 && v23 == v5)
            {
              break;
            }

            sub_1B0E43548();
          }
        }

        sub_1B0E43538();
      }

      while (++v5 != v9);
    }
  }

  return result;
}

uint64_t sub_1B0C0895C(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v6 = *(a1 + 16);
  if (a3)
  {
    v7 = 0;
  }

  else
  {
    v7 = a2;
  }

  v8 = MEMORY[0x1B27256A0](v6, a2);
  result = 0;
  if (v8 <= v7)
  {
    v8 = v7;
  }

  if (v8 <= a4)
  {
    v8 = a4;
  }

  if (v8 >= 5)
  {
    v10 = MEMORY[0x1B27256B0](v8, a4);
    sub_1B0C089DC(a1, (v10 + 16), v10 + 32);
    return v10;
  }

  return result;
}

uint64_t sub_1B0C08A2C(uint64_t result, uint64_t a2, void *a3, uint64_t a4)
{
  if (a2)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      v6 = 0;
      while (1)
      {
        sub_1B0E46C28();
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
        v7 = sub_1B0E46CB8();
        if (__OFSUB__(1 << *a3, 1))
        {
          break;
        }

        v8 = sub_1B0E434F8();

        if (v8)
        {
          while (1)
          {
            sub_1B0E43548();
          }
        }

        v7 = sub_1B0E43538();
        if (++v6 == a2)
        {
          return v7;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  return v7;
}

uint64_t sub_1B0C08B5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  sub_1B0E46C28();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  result = sub_1B0E46CB8();
  if (__OFSUB__(1 << *a5, 1))
  {
    __break(1u);
  }

  else
  {
    sub_1B0E434F8();
    result = sub_1B0E43528();
    if ((v11 & 1) == 0)
    {
      v12 = (a3 + 16 * result);
      if (*v12 != a1 || v12[1] != a2)
      {
        while (1)
        {
          v14 = result;
          if (sub_1B0E46A78())
          {
            break;
          }

          sub_1B0E43548();
          result = sub_1B0E43528();
          if ((v15 & 1) == 0)
          {
            v16 = (a3 + 16 * result);
            if (*v16 != a1 || v16[1] != a2)
            {
              continue;
            }
          }

          return result;
        }

        return v14;
      }
    }
  }

  return result;
}

uint64_t sub_1B0C08CA8(int *a1, int a2)
{
  result = sub_1B0E42EA8();
  v5 = *a1;
  v6 = a1[1];
  if (v6 < v5)
  {
    __break(1u);
    goto LABEL_9;
  }

  result = sub_1B0E42A98();
  if (!result)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v7 = result;
  result = sub_1B0E42AC8();
  v8 = v5 - result;
  if (__OFSUB__(v5, result))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v9 = v6 - v5;
  v10 = sub_1B0E42AB8();
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

void sub_1B0C08D50(__int128 *a1, uint64_t a2)
{
  sub_1B0E46CB8();
  v3 = 1 << *(a2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a2 + 56);
  v6 = (v3 + 63) >> 6;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v7 = 0;
  v8 = 0;
  while (v5)
  {
LABEL_9:
    sub_1B0E46C28();
    v5 &= v5 - 1;
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

    v7 ^= sub_1B0E46CB8();
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      MEMORY[0x1B2728D70](v7);
      return;
    }

    v5 = *(a2 + 56 + 8 * v9);
    ++v8;
    if (v5)
    {
      v8 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_1B0C08F18(void *a1, void *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if (v2)
  {
    if (!v3)
    {
      return 0;
    }

    if (*a1 != *a2 || v2 != v3)
    {
      v5 = a1;
      v6 = a2;
      v7 = sub_1B0E46A78();
      a2 = v6;
      v8 = v7;
      a1 = v5;
      if ((v8 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v3)
  {
    return 0;
  }

  v9 = a1[3];
  v10 = a2[3];
  if (v9)
  {
    if (!v10)
    {
      return 0;
    }

    if (a1[2] != a2[2] || v9 != v10)
    {
      v11 = a1;
      v12 = a2;
      v13 = sub_1B0E46A78();
      a2 = v12;
      v14 = v13;
      a1 = v11;
      if ((v14 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v10)
  {
    return 0;
  }

  v15 = a1[5];
  v16 = a2[5];
  if (v15)
  {
    if (!v16)
    {
      return 0;
    }

    if (a1[4] != a2[4] || v15 != v16)
    {
      v17 = a1;
      v18 = a2;
      v19 = sub_1B0E46A78();
      a2 = v18;
      v20 = v19;
      a1 = v17;
      if ((v20 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v16)
  {
    return 0;
  }

  v21 = a1[7];
  v22 = a2[7];
  if (v21)
  {
    if (v22)
    {
      if (a1[6] == a2[6] && v21 == v22)
      {
        goto LABEL_29;
      }

      v23 = a1;
      v24 = a2;
      v25 = sub_1B0E46A78();
      a2 = v24;
      v26 = v25;
      a1 = v23;
      if (v26)
      {
        goto LABEL_29;
      }
    }

    return 0;
  }

  if (v22)
  {
    return 0;
  }

LABEL_29:
  v27 = a1[8];
  v28 = a2[8];

  return sub_1B038F0C4(v27, v28);
}

uint64_t sub_1B0C090B4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v24 = sub_1B0C071C8();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = sub_1B0E44AC8();
  v10 = MGGetStringAnswer();

  if (v10)
  {
    v11 = sub_1B0E44AD8();
    v13 = v12;
  }

  else
  {
    v11 = 0;
    v13 = 0;
  }

  sub_1B0C0793C(0xD000000000000015, 0x80000001B0F2D090);
  v15 = v14;
  v17 = v16;
  sub_1B0C0793C(0x76736F2E6E72656BLL, 0xEE006E6F69737265);
  v20 = sub_1B0C07708(v15, v17, v18, v19);
  v22 = v21;

  *a2 = v24;
  a2[1] = v4;
  a2[2] = v6;
  a2[3] = v8;
  a2[4] = v11;
  a2[5] = v13;
  a2[6] = v20;
  a2[7] = v22;
  a2[8] = a1;
  return result;
}

uint64_t sub_1B0C091FC(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    return 0;
  }

  v3 = sub_1B0C06A58(a1);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B0C2A0EC(&v3);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2A70, &qword_1B0E9B5F0);
  sub_1B03B11C4();
  v1 = sub_1B0E448E8();

  return v1;
}

uint64_t sub_1B0C092CC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 64);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B0C09314(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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
      *(result + 64) = (a2 - 1);
      return result;
    }

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1B0C09378()
{
  result = qword_1EB6E56C0;
  if (!qword_1EB6E56C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E56C0);
  }

  return result;
}

__n128 __swift_memcpy60_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1B0C093E8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 60) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 60) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__uint64_t sub_1B0C09438(__uint64_t result)
{
  if (result)
  {
    if (result == 1)
    {
      v2 = *(v1 + 56) * 17.0;
      result = static MonotonicTime.now()();
      *v1 = v2;
      *(v1 + 8) = xmmword_1B0EA4610;
      *(v1 + 24) = result;
      *(v1 + 32) = 0;
      return result;
    }

    v4 = *(v1 + 48) * *(v1 + 56);
    result = static MonotonicTime.now()();
    *v1 = xmmword_1B0EA4610;
    *(v1 + 16) = result;
    *(v1 + 24) = v4;
    v3 = 1;
  }

  else
  {
    *v1 = 0u;
    *(v1 + 16) = 0u;
    v3 = 2;
  }

  *(v1 + 32) = v3;
  return result;
}

BOOL sub_1B0C094D4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return sub_1B0C097BC(v5, v7);
}

BOOL sub_1B0C09520(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(a2 + 16);
  if (*(a1 + 16))
  {
    if (!*(a2 + 16))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 8) != *(a2 + 8))
    {
      v2 = 1;
    }

    if (v2)
    {
      return 0;
    }
  }

  return *(a1 + 24) == *(a2 + 24);
}

BOOL sub_1B0C09578(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a2 + 16);
  if (*(a1 + 8))
  {
    if (v2 == v4)
    {
      v5 = *(a2 + 8);
    }

    else
    {
      v5 = 0;
    }

    if (v5 != 1)
    {
      return 0;
    }

    return v3 == *(a2 + 24);
  }

  result = 0;
  if ((*(a2 + 8) & 1) == 0 && *a1 == *a2 && v2 == v4)
  {
    return v3 == *(a2 + 24);
  }

  return result;
}

uint64_t sub_1B0C095D8(uint64_t result, char a2, uint64_t a3)
{
  *(v3 + 8) = result;
  *(v3 + 16) = a2 & 1;
  if (a2)
  {
    return 1;
  }

  v4 = *v3;
  v5 = __OFSUB__(a3, result);
  v6 = a3 - result;
  if (a3 >= result)
  {
LABEL_7:
    if (!v5)
    {
      goto LABEL_8;
    }

LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (__OFSUB__(result, a3))
  {
    __break(1u);
    goto LABEL_19;
  }

  v5 = __OFSUB__(0, result - a3);
  v6 = a3 - result;
  if (v5)
  {
    __break(1u);
    goto LABEL_7;
  }

LABEL_8:
  if (v4 >= v6 / 1000000000.0)
  {
    return 1;
  }

  v7 = *(v3 + 24);
  if (v7 > a3)
  {
    if (!__OFSUB__(v7, a3))
    {
      v8 = a3 - v7;
      if (!__OFSUB__(0, v7 - a3))
      {
LABEL_15:
        if (v4 < v8 / 1000000000.0)
        {
          result = 0;
          *(v3 + 24) = a3;
          return result;
        }

        return 1;
      }

      __break(1u);
      goto LABEL_14;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_14:
  v8 = a3 - v7;
  if (!__OFSUB__(a3, v7))
  {
    goto LABEL_15;
  }

LABEL_21:
  __break(1u);
  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for Action.UnreadCountOutsideWindowOfInterest(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;

  return v2 + 16;
}

uint64_t getEnumTagSinglePayload for IdleTimer.State(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 33))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 32);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for IdleTimer.State(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_1B0C09778(uint64_t a1)
{
  if (*(a1 + 32) <= 1u)
  {
    return *(a1 + 32);
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_1B0C09790(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
    *(result + 16) = 0;
    *(result + 24) = 0;
  }

  *(result + 32) = a2;
  return result;
}

BOOL sub_1B0C097BC(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  if (*(a1 + 32))
  {
    if (*(a1 + 32) != 1)
    {
      if (*(a2 + 32) != 2)
      {
        return 0;
      }

      v6 = vorrq_s8(*a2, *(a2 + 16));
      return !*&vorr_s8(*v6.i8, *&vextq_s8(v6, v6, 8uLL));
    }

    if (*(a2 + 32) == 1)
    {
      if (v3)
      {
        if ((*(a2 + 8) & 1) == 0)
        {
          return 0;
        }
      }

      else if ((*(a2 + 8) & 1) != 0 || *a2 != *&v2)
      {
        return 0;
      }

      return (v4 | ((*(a1 + 17) | ((*(a1 + 21) | (*(a1 + 23) << 16)) << 32)) << 8)) == *(a2 + 16) && *(a2 + 24) == v5;
    }
  }

  else
  {
    if (*(a2 + 32) || v2 != *a2)
    {
      return 0;
    }

    if (v4)
    {
      if ((*(a2 + 16) & 1) == 0)
      {
        return 0;
      }
    }

    else if ((*(a2 + 16) & 1) != 0 || v3 != *(a2 + 8))
    {
      return 0;
    }

    if (*&v5 == *(a2 + 24))
    {
      return 1;
    }
  }

  return 0;
}

uint64_t get_enum_tag_for_layout_string_15IMAP2Connection7CommandO(uint64_t a1)
{
  if ((*(a1 + 64) & 7u) <= 4)
  {
    return *(a1 + 64) & 7;
  }

  else
  {
    return (*a1 + 5);
  }
}

__n128 __swift_memcpy145_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 128);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  *(a1 + 96) = result;
  return result;
}

uint64_t sub_1B0C09964(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFB && *(a1 + 145))
  {
    return (*a1 + 251);
  }

  v3 = *(a1 + 144);
  if (v3 <= 5)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1B0C099AC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 136) = 0;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 144) = 0;
    *result = a2 - 251;
    if (a3 >= 0xFB)
    {
      *(result + 145) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
    {
      *(result + 145) = 0;
    }

    if (a2)
    {
      *(result + 144) = -a2;
    }
  }

  return result;
}

__n128 sub_1B0C09A34@<Q0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 128);
  v9 = *(v1 + 112);
  v10 = v3;
  v11 = *(v1 + 144);
  v4 = *(v1 + 96);
  v8[0] = *(v1 + 80);
  v8[1] = v4;
  v14 = v9;
  v15 = v3;
  v16 = v11;
  v12 = v8[0];
  v13 = v4;
  sub_1B0BF7124(v8, v7);
  v5 = v15;
  *(a1 + 32) = v14;
  *(a1 + 48) = v5;
  *(a1 + 64) = v16;
  result = v13;
  *a1 = v12;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1B0C09AB8()
{
  sub_1B0BCD47C();
  swift_allocError();
  *v0 = xmmword_1B0ECD830;
  *(v0 + 16) = 0;
  return swift_willThrow();
}

uint64_t sub_1B0C09B10(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = *(a1 + 3);
  v8 = *(a1 + 5);
  v9 = a1[7];
  v10 = *(a1 + 6);
  v11 = *(a1 + 8);
  v28[2] = *(a1 + 7);
  v28[3] = v11;
  v29 = *(a1 + 144);
  v12 = *(a1 + 4);
  v28[0] = *(a1 + 5);
  v28[1] = v10;
  v13 = *a2;
  v14 = a2[1];
  v15 = a2[2];
  v16 = *(a2 + 3);
  v17 = *(a2 + 5);
  v18 = a2[7];
  v19 = *(a2 + 8);
  v30[2] = *(a2 + 7);
  v30[3] = v19;
  v20 = *(a2 + 4);
  v21 = *(a2 + 5);
  v22 = *(a2 + 6);
  v31 = *(a2 + 144);
  v30[0] = v21;
  v30[1] = v22;
  if ((v9 & 0x1000000000000000) != 0)
  {
    v32[0] = v4;
    v32[1] = v5;
    v33 = v7;
    v34 = v8;
    v32[2] = v6;
    v35 = v9 & 0xEFFFFFFFFFFFFFFFLL;
    v36 = v12;
    if ((v18 & 0x1000000000000000) == 0 || (v37[0] = v13, v37[1] = v14, v38 = v16, v39 = v17, v37[2] = v15, v40 = v18 & 0xEFFFFFFFFFFFFFFFLL, v41 = v20, (sub_1B0C0FEBC(v32, v37) & 1) == 0))
    {
LABEL_13:
      v24 = 0;
      return v24 & 1;
    }
  }

  else
  {
    if ((v18 & 0x1000000000000000) != 0)
    {
      goto LABEL_13;
    }

    if (v4 != v13 || v5 != v14)
    {
      v26 = v16;
      v27 = v7;
      v23 = sub_1B0E46A78();
      *&v16 = v26;
      *&v7 = v27;
      if ((v23 & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    if ((v6 != v15 || v7 != v16) && (sub_1B0E46A78() & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  v24 = sub_1B0C2DC74(v28, v30);
  return v24 & 1;
}

uint64_t sub_1B0C09C68(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 162))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B0C09CB0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 152) = 0;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 160) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 162) = 1;
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

    *(result + 162) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1B0C09D2C(unint64_t a1, uint64_t a2)
{
  v5 = _s6LoggerVMa_0(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v54 - v9;
  v11 = type metadata accessor for UntaggedResponse(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v54 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v54 - v18;
  v20 = *(v2 + 16);
  v21 = *(v2 + 88) | (*(v2 + 90) << 16);
  if (((1 << (a1 >> 60)) & 0x1E7) != 0)
  {
    return;
  }

  if (a1 >> 60 == 3)
  {
    v22 = swift_projectBox();
    v23 = (v21 >> 21) & 7;
    if (v23)
    {
      if (v23 != 1)
      {
        return;
      }

      sub_1B0C0B0FC(v22, v16, type metadata accessor for UntaggedResponse);
      sub_1B0C0B0FC(v16, v13, type metadata accessor for UntaggedResponse);
      if (swift_getEnumCaseMultiPayload() == 9)
      {
        v24 = *v13;
        v25 = *(v13 + 2);
        v26 = *(v13 + 6);
        v56[4] = *(v13 + 5);
        v56[5] = v26;
        v27 = *(v13 + 8);
        v56[6] = *(v13 + 7);
        v56[7] = v27;
        v28 = *(v13 + 2);
        v56[0] = *(v13 + 1);
        v56[1] = v28;
        v29 = *(v13 + 4);
        v30 = *(v2 + 8) | (*(v2 + 8) << 32);
        v56[2] = *(v13 + 3);
        v56[3] = v29;
        if (v30 == (v25 | (v25 << 32)))
        {
          v31 = sub_1B04520BC(*v2, v24);
          sub_1B0C0B164(v16, type metadata accessor for UntaggedResponse);

          sub_1B0B11B9C(v56);
          if ((v31 & 1) != 0 && (BYTE8(v56[0]) & 1) == 0)
          {
            *(v2 + 104) = *&v56[0];
            *(v2 + 112) = 0;
          }
        }

        else
        {
          sub_1B0B11B9C(v56);
          sub_1B0C0B164(v16, type metadata accessor for UntaggedResponse);
        }

        return;
      }

      v35 = type metadata accessor for UntaggedResponse;
      sub_1B0C0B164(v16, type metadata accessor for UntaggedResponse);
      v36 = v13;
    }

    else
    {
      v35 = type metadata accessor for UntaggedResponse;
      sub_1B0C0B0FC(v22, v19, type metadata accessor for UntaggedResponse);
      sub_1B0C0A424(v19);
      v36 = v19;
    }

LABEL_26:
    sub_1B0C0B164(v36, v35);
    return;
  }

  v33 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
  v32 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x14);
  v34 = (v21 >> 21) & 7;
  if (v34)
  {
    if (v34 == 1 && __PAIR64__(v32, v33) == v20)
    {

      sub_1B0C0AE80();
      return;
    }

LABEL_22:
    sub_1B0C0B0FC(a2, v10, _s6LoggerVMa_0);
    sub_1B0C0B0FC(a2, v7, _s6LoggerVMa_0);
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v41 = sub_1B0E43988();
    v42 = sub_1B0E45908();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v55 = v32;
      *&v56[0] = v44;
      v45 = v44;
      *v43 = 68158466;
      *(v43 + 4) = 2;
      *(v43 + 8) = 256;
      v46 = v7[*(v5 + 20)];
      sub_1B0C0B164(v7, _s6LoggerVMa_0);
      *(v43 + 10) = v46;
      *(v43 + 11) = 2082;
      v47 = *&v10[*(v5 + 20) + 4];
      sub_1B0C0B164(v10, _s6LoggerVMa_0);
      v48 = ConnectionID.debugDescription.getter(v47);
      v50 = sub_1B0399D64(v48, v49, v56);

      *(v43 + 13) = v50;
      *(v43 + 21) = 2082;
      v51 = Tag.debugDescription.getter(v33 | (v55 << 32));
      v53 = sub_1B0399D64(v51, v52, v56);

      *(v43 + 23) = v53;
      _os_log_impl(&dword_1B0389000, v41, v42, "[%.*hhx-%{public}s] Received command completion for command '%{public}s' unrelated to mailbox selection.", v43, 0x1Fu);
      swift_arrayDestroy();
      MEMORY[0x1B272C230](v45, -1, -1);
      MEMORY[0x1B272C230](v43, -1, -1);

      return;
    }

    v35 = _s6LoggerVMa_0;
    sub_1B0C0B164(v7, _s6LoggerVMa_0);

    v36 = v10;
    goto LABEL_26;
  }

  if (__PAIR64__(v32, v33) != v20)
  {
    goto LABEL_22;
  }

  v37 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
  v38 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
  v39 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
  v40 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x30);

  sub_1B0C0A6A8(v37, v38, v39, v40);
}

uint64_t sub_1B0C0A2A0(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[3];
  v7[2] = *(a1 + 2);
  v8[0] = v2;
  *(v8 + 11) = *(a1 + 59);
  v3 = *(a1 + 1);
  v7[0] = *a1;
  v7[1] = v3;
  v4 = a2[3];
  v9[2] = a2[2];
  v10[0] = v4;
  *(v10 + 11) = *(a2 + 59);
  v5 = a2[1];
  v9[0] = *a2;
  v9[1] = v5;
  return sub_1B0C0A994(v7, v9) & 1;
}

BOOL sub_1B0C0A2FC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  v4 = *(a2 + 24);
  result = (v4 & v3) == 255;
  if (v3 != 255 && v4 != 255)
  {
    if (v3)
    {
      if (v3 == 1)
      {
        if (v4 == 1)
        {
          goto LABEL_10;
        }
      }

      else if (v4 == 2)
      {
        goto LABEL_10;
      }
    }

    else if (!*(a2 + 24))
    {
LABEL_10:
      if (static ResponseText.__derived_struct_equals(_:_:)(*a1, *(a1 + 8), *(a1 + 16), *a2, *(a2 + 8), *(a2 + 16)))
      {
        return 1;
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_1B0C0A390(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 144);
  v13[8] = *(a1 + 128);
  v13[9] = v2;
  v14 = *(a1 + 160);
  v3 = *(a1 + 80);
  v13[4] = *(a1 + 64);
  v13[5] = v3;
  v4 = *(a1 + 112);
  v13[6] = *(a1 + 96);
  v13[7] = v4;
  v5 = *(a1 + 16);
  v13[0] = *a1;
  v13[1] = v5;
  v6 = *(a1 + 48);
  v13[2] = *(a1 + 32);
  v13[3] = v6;
  v7 = *(a2 + 144);
  v15[8] = *(a2 + 128);
  v15[9] = v7;
  v16 = *(a2 + 160);
  v8 = *(a2 + 80);
  v15[4] = *(a2 + 64);
  v15[5] = v8;
  v9 = *(a2 + 112);
  v15[6] = *(a2 + 96);
  v15[7] = v9;
  v10 = *(a2 + 16);
  v15[0] = *a2;
  v15[1] = v10;
  v11 = *(a2 + 48);
  v15[2] = *(a2 + 32);
  v15[3] = v11;
  return sub_1B0C0AC10(v13, v15) & 1;
}

uint64_t sub_1B0C0A424(uint64_t a1)
{
  v3 = type metadata accessor for UntaggedResponse(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = (&v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1B0C0B0FC(a1, v5, type metadata accessor for UntaggedResponse);
  result = swift_getEnumCaseMultiPayload();
  if (result > 14)
  {
    if (result == 15)
    {
      *(v1 + 104) = *v5;
      *(v1 + 112) = 0;
    }

    else if (result != 16)
    {
      return sub_1B0C0B164(v5, type metadata accessor for UntaggedResponse);
    }
  }

  else
  {
    if (result)
    {
      if (result == 13)
      {
        v7 = *v5;

        *(v1 + 96) = v7;
        return result;
      }

      return sub_1B0C0B164(v5, type metadata accessor for UntaggedResponse);
    }

    v8 = *v5;
    if ((~*v5 & 0xF000000000000007) == 0)
    {
    }

    v9 = (v8 >> 59) & 0x1E | (v8 >> 2) & 1;
    if (v9 > 4)
    {
      if (v9 == 5)
      {
        v15 = *((v8 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        sub_1B0447F00(v8);

        *(v1 + 116) = v15;
        *(v1 + 120) = 0;
      }

      else if (v9 == 11)
      {
        v17 = *((v8 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        sub_1B0447F00(v8);

        *(v1 + 152) = v17;
        *(v1 + 160) = 0;
      }

      else
      {
        if (v9 != 17 || v8 != 0x8000000000000054)
        {
          goto LABEL_23;
        }

        sub_1B0447F00(0x8000000000000054);

        *(v1 + 152) = 0;
        *(v1 + 160) = 1;
      }
    }

    else
    {
      switch(v9)
      {
        case 2:
          v12 = *v5;
          v13 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          v14 = sub_1B0B386A0(v13);

          sub_1B0447F00(v12);

          *(v1 + 128) = v14;
          break;
        case 3:
          v16 = *((v8 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
          sub_1B0447F00(v8);

          *(v1 + 136) = v16;
          *(v1 + 140) = 0;
          break;
        case 4:
          v10 = *((v8 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
          sub_1B0447F00(v8);

          *(v1 + 144) = v10;
          *(v1 + 148) = 0;
          return result;
        default:
LABEL_23:
          sub_1B0447F00(v8);
      }
    }
  }

  return result;
}

__n128 sub_1B0C0A6A8(unint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4)
  {
    v5 = a4;
    v6 = *(v4 + 64);
    v67 = *(v4 + 48);
    v68[0] = v6;
    *(v68 + 11) = *(v4 + 75);
    v7 = *(v4 + 32);
    v65 = *(v4 + 16);
    v66 = v7;
    sub_1B0A91FD0(a1, a2, a3, a4);
    sub_1B0BF6CA4(&v65);
    *(v4 + 16) = a1;
    *(v4 + 24) = a2;
    *(v4 + 32) = a3;
    *(v4 + 40) = v5;
    *(v4 + 48) = 0;
LABEL_3:
    *(v4 + 64) = 0;
    *(v4 + 72) = 0;
    v12 = 96;
    goto LABEL_4;
  }

  if ((~a1 & 0xF000000000000007) != 0 && ((a1 >> 59) & 0x1E | (a1 >> 2) & 1) == 0x11)
  {
    if (a1 == 0x800000000000001CLL)
    {
      v13 = 1;
    }

    else
    {
      if (a1 != 0x8000000000000024)
      {
        goto LABEL_13;
      }

      v13 = 0;
    }

    *(v4 + 91) = v13;
  }

LABEL_13:
  v14 = *(v4 + 96);
  if (!v14)
  {
    v17 = *(v4 + 64);
    v67 = *(v4 + 48);
    v68[0] = v17;
    *(v68 + 11) = *(v4 + 75);
    v18 = *(v4 + 32);
    v65 = *(v4 + 16);
    v66 = v18;
    sub_1B0BF6CA4(&v65);
    *(v4 + 24) = 0;
    *(v4 + 32) = 0;
    *(v4 + 16) = 0;
    result.n128_u64[0] = 255;
    *(v4 + 40) = xmmword_1B0ED4540;
    goto LABEL_3;
  }

  if ((*(v4 + 112) & 1) == 0)
  {
    v19 = *(v4 + 104);
    v20 = *(v4 + 8);
    v21 = *(v4 + 91);
    v22 = *(v4 + 116);
    v23 = *(v4 + 128);
    v24 = *(v4 + 136);
    v25 = *(v4 + 144);
    v26 = *(v4 + 152);
    v27 = *(v4 + 160);
    v41 = *(v4 + 120);
    v40 = *(v4 + 140);
    v39 = *(v4 + 148);
    v38 = *(v4 + 161);
    *&v42 = *v4;
    DWORD2(v42) = v20;
    *&v43 = v14;
    *(&v43 + 1) = v19;
    LODWORD(v44) = v22;
    BYTE4(v44) = v41;
    v45 = v23;
    v46.i32[0] = v24;
    v46.i8[4] = v40;
    v46.i32[2] = v25;
    v46.i8[12] = v39;
    v47 = v26;
    LOBYTE(v48) = v27;
    HIBYTE(v48) = v38;
    v49 = v21;
    v50 = v42;
    v51 = v20;
    v52 = v14;
    v53 = v19;
    v54 = v22;
    v55 = v41;
    v56 = v23;
    v57 = v24;
    v58 = v40;
    v59 = v25;
    v60 = v39;
    v61 = v26;
    v62 = v27;
    v63 = v38;
    v64 = v21;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0B37A20(&v42, &v65);
    sub_1B0B37A7C(&v50);
    v28 = v45;
    v29 = v47;
    v30 = v44 & 0x1FFFFFFFFLL;
    v31 = v48 & 0x1FF;
    v32 = (v48 | (v49 << 16)) & 0x1FFFF | 0x400000;
    v33 = *(v4 + 64);
    v67 = *(v4 + 48);
    v68[0] = v33;
    *(v68 + 11) = *(v4 + 75);
    v34 = *(v4 + 32);
    v65 = *(v4 + 16);
    v66 = v34;
    v36 = v42;
    v37 = vandq_s8(v46, vdupq_n_s64(0x1FFFFFFFFuLL));
    v35 = v43;
    sub_1B0BF6CA4(&v65);
    *(v4 + 16) = v36;
    *(v4 + 32) = v35;
    *(v4 + 48) = v30;
    *(v4 + 56) = v28;
    result = v37;
    *(v4 + 64) = v37;
    *(v4 + 80) = v29;
    *(v4 + 90) = BYTE2(v32);
    *(v4 + 88) = v31;
    return result;
  }

  v15 = *(v4 + 64);
  v67 = *(v4 + 48);
  v68[0] = v15;
  *(v68 + 11) = *(v4 + 75);
  v16 = *(v4 + 32);
  v65 = *(v4 + 16);
  v66 = v16;
  sub_1B0BF6CA4(&v65);
  *(v4 + 16) = 1;
  result.n128_u64[0] = 0;
  *(v4 + 24) = 0u;
  *(v4 + 40) = 0u;
  *(v4 + 56) = 0u;
  *(v4 + 72) = 0u;
  v12 = 0x80;
LABEL_4:
  *(v4 + 90) = v12;
  *(v4 + 88) = 0;
  return result;
}

uint64_t sub_1B0C0A994(int8x16_t *a1, uint64_t a2)
{
  v3 = a1->i64[0];
  v4 = a1[4].u8[10];
  v5 = v4 >> 5;
  if (v5 <= 1)
  {
    if (v4 >> 5)
    {
      if (((*(a2 + 74) << 16) & 0xE00000) != 0x200000)
      {
        goto LABEL_36;
      }
    }

    else if (((*(a2 + 74) << 16) & 0xE00000) != 0)
    {
      goto LABEL_36;
    }

    v17 = v3 == *a2;
  }

  else
  {
    v6 = a1->i64[1];
    v7 = a1[1];
    v8 = a1[2];
    v9 = a1[3];
    v10 = a1[4].i64[0];
    v11 = a1[4].u16[4] | (a1[4].u8[10] << 16);
    if (v5 != 2)
    {
      if (v5 == 3)
      {
        if (((*(a2 + 74) << 16) & 0xE00000) == 0x600000)
        {
          v12 = *(a2 + 24);
          if (v7.i8[8] == -1)
          {
            if (v12 == 255)
            {
LABEL_35:
              v17 = 1;
              return v17 & 1;
            }
          }

          else if (v12 != 255)
          {
            if (v7.i8[8])
            {
              if (v7.u8[8] == 1)
              {
                if (v12 != 1)
                {
                  goto LABEL_36;
                }
              }

              else if (v12 != 2)
              {
                goto LABEL_36;
              }
            }

            else if (*(a2 + 24))
            {
              goto LABEL_36;
            }

            if (static ResponseText.__derived_struct_equals(_:_:)(v3, v6, v7.i64[0], *a2, *(a2 + 8), *(a2 + 16)))
            {
              goto LABEL_35;
            }
          }
        }
      }

      else
      {
        v18 = v7.i64[0] | v6;
        v19 = v7.i64[1];
        v20 = vorrq_s8(v9, v8);
        if (v10 | *&vorr_s8(*v20.i8, *&vextq_s8(v20, v20, 8uLL)) | v18 | v19 | v3 || v11 != 0x800000)
        {
          v23 = *(a2 + 72) | (*(a2 + 74) << 16);
          if ((v23 & 0xE00000) == 0x800000 && v23 == 0x800000 && *a2 == 1)
          {
            v24 = vorrq_s8(vorrq_s8(*(a2 + 8), *(a2 + 40)), vorrq_s8(*(a2 + 24), *(a2 + 56)));
            if (!*&vorr_s8(*v24.i8, *&vextq_s8(v24, v24, 8uLL)))
            {
              goto LABEL_35;
            }
          }
        }

        else
        {
          v21 = *(a2 + 72) | (*(a2 + 74) << 16);
          if ((v21 & 0xE00000) == 0x800000 && v21 == 0x800000)
          {
            v22 = vorrq_s8(vorrq_s8(*(a2 + 8), *(a2 + 40)), vorrq_s8(*(a2 + 24), *(a2 + 56)));
            if (!(*&vorr_s8(*v22.i8, *&vextq_s8(v22, v22, 8uLL)) | *a2))
            {
              goto LABEL_35;
            }
          }
        }
      }

LABEL_36:
      v17 = 0;
      return v17 & 1;
    }

    v30[0] = v3;
    v30[1] = v6;
    v31 = v7;
    v32 = v8;
    v33 = v9;
    v34 = v10;
    v35 = v11;
    v36 = BYTE2(v11) & 0x1F;
    v13 = *(a2 + 72) | (*(a2 + 74) << 16);
    if ((v13 & 0xE00000) != 0x400000)
    {
      goto LABEL_36;
    }

    v14 = *(a2 + 64);
    v15 = *(a2 + 16);
    v26[0] = *a2;
    v26[1] = v15;
    v16 = *(a2 + 48);
    v26[2] = *(a2 + 32);
    v26[3] = v16;
    v27 = v14;
    v28 = v13;
    v29 = BYTE2(v13) & 0x1F;
    v17 = _s15IMAP2Connection15SelectedMailboxV23__derived_struct_equalsySbAC_ACtFZ_0(v30, v26);
  }

  return v17 & 1;
}

uint64_t sub_1B0C0AC10(uint64_t result, unsigned __int8 *a2)
{
  if ((*(result + 8) | (*(result + 8) << 32)) != (*(a2 + 2) | (*(a2 + 2) << 32)))
  {
    return 0;
  }

  v2 = *result;
  v3 = *a2;
  v4 = *(*result + 16);
  if (v4 != *(*a2 + 16))
  {
    return 0;
  }

  if (v4)
  {
    v5 = v2 == v3;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    v6 = (v2 + 32);
    v7 = (v3 + 32);
    while (v4)
    {
      if (*v6 != *v7)
      {
        return 0;
      }

      ++v6;
      ++v7;
      if (!--v4)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_40:
    if (*(v6 + 34) != *(v4 + 136))
    {
      LOBYTE(v7) = 1;
    }

    if (v7)
    {
      return 0;
    }

    goto LABEL_43;
  }

LABEL_11:
  v8 = *(result + 64);
  v28[2] = *(result + 48);
  v29[0] = v8;
  *(v29 + 11) = *(result + 75);
  v9 = *(result + 32);
  v10 = result;
  v28[0] = *(result + 16);
  v28[1] = v9;
  v11 = *(a2 + 4);
  v26[2] = *(a2 + 3);
  v27[0] = v11;
  *(v27 + 11) = *(a2 + 75);
  v12 = *(a2 + 2);
  v26[0] = *(a2 + 1);
  v26[1] = v12;
  result = sub_1B0C0A994(v28, v26);
  if (result & 1) == 0 || ((*(v10 + 91) ^ a2[91]))
  {
    return 0;
  }

  v4 = v10;
  v6 = a2;
  v14 = *(v10 + 96);
  v15 = *(a2 + 12);
  if (v14)
  {
    if (!v15)
    {
      return 0;
    }

    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v16 = sub_1B0AFE1EC(v14, v15);

    v4 = v10;
    v6 = a2;
    if ((v16 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v15)
  {
    return 0;
  }

  v17 = v6[112];
  if (*(v4 + 112))
  {
    if (!v6[112])
    {
      return 0;
    }
  }

  else
  {
    if (*(v4 + 104) != *(v6 + 13))
    {
      v17 = 1;
    }

    if (v17)
    {
      return 0;
    }
  }

  v18 = v6[120];
  if (*(v4 + 120))
  {
    if (!v6[120])
    {
      return 0;
    }
  }

  else
  {
    if (*(v6 + 29) != *(v4 + 116))
    {
      v18 = 1;
    }

    if (v18)
    {
      return 0;
    }
  }

  v19 = *(v4 + 128);
  v20 = *(v6 + 16);
  if (v19)
  {
    if (!v20)
    {
      return 0;
    }

    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v21 = sub_1B0BE5598(v19, v20);

    v4 = v10;
    v6 = a2;
    if ((v21 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v20)
  {
    return 0;
  }

  LOBYTE(v7) = v6[140];
  if ((*(v4 + 140) & 1) == 0)
  {
    goto LABEL_40;
  }

  if (!v6[140])
  {
    return 0;
  }

LABEL_43:
  v22 = v6[148];
  if (*(v4 + 148))
  {
    if (!v6[148])
    {
      return 0;
    }
  }

  else
  {
    if (*(v4 + 144) != *(v6 + 36))
    {
      v22 = 1;
    }

    if (v22)
    {
      return 0;
    }
  }

  v23 = v6[161];
  if (*(v4 + 161))
  {
    return (v23 & 1) != 0;
  }

  if (v6[161])
  {
    return 0;
  }

  v23 = v6[160];
  if (*(v4 + 160))
  {
    return (v23 & 1) != 0;
  }

  if (v6[160])
  {
    return 0;
  }

  v24 = *(v4 + 152);
  v25 = *(v6 + 19);
  if (((v25 | v24) & 0x8000000000000000) == 0)
  {
    return v25 == v24;
  }

  __break(1u);
  return result;
}

__n128 sub_1B0C0AE80()
{
  v1 = *(v0 + 96);
  if (v1 && (*(v0 + 112) & 1) == 0)
  {
    v5 = *(v0 + 104);
    v6 = *(v0 + 8);
    v7 = *(v0 + 91);
    v8 = *(v0 + 116);
    v9 = *(v0 + 128);
    v10 = *(v0 + 136);
    v11 = *(v0 + 144);
    v12 = *(v0 + 152);
    v13 = *(v0 + 160);
    v27 = *(v0 + 120);
    v26 = *(v0 + 140);
    v25 = *(v0 + 148);
    v24 = *(v0 + 161);
    *&v28 = *v0;
    DWORD2(v28) = v6;
    *&v29 = v1;
    *(&v29 + 1) = v5;
    LODWORD(v30) = v8;
    BYTE4(v30) = v27;
    v31 = v9;
    v32.i32[0] = v10;
    v32.i8[4] = v26;
    v32.i32[2] = v11;
    v32.i8[12] = v25;
    v33 = v12;
    LOBYTE(v34) = v13;
    HIBYTE(v34) = v24;
    v35 = v7;
    v36 = v28;
    v37 = v6;
    v38 = v1;
    v39 = v5;
    v40 = v8;
    v41 = v27;
    v42 = v9;
    v43 = v10;
    v44 = v26;
    v45 = v11;
    v46 = v25;
    v47 = v12;
    v48 = v13;
    v49 = v24;
    v50 = v7;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0B37A20(&v28, &v51);
    sub_1B0B37A7C(&v36);
    v14 = v31;
    v15 = v33;
    v16 = v30 & 0x1FFFFFFFFLL;
    v17 = v34 & 0x1FF;
    v18 = (v34 | (v35 << 16)) & 0x1FFFF | 0x400000;
    v19 = *(v0 + 64);
    v53 = *(v0 + 48);
    v54[0] = v19;
    *(v54 + 11) = *(v0 + 75);
    v20 = *(v0 + 32);
    v51 = *(v0 + 16);
    v52 = v20;
    v22 = v28;
    v23 = vandq_s8(v32, vdupq_n_s64(0x1FFFFFFFFuLL));
    v21 = v29;
    sub_1B0BF6CA4(&v51);
    *(v0 + 16) = v22;
    *(v0 + 32) = v21;
    *(v0 + 48) = v16;
    *(v0 + 56) = v14;
    result = v23;
    *(v0 + 64) = v23;
    *(v0 + 80) = v15;
    *(v0 + 90) = BYTE2(v18);
    *(v0 + 88) = v17;
  }

  else
  {
    v2 = *(v0 + 64);
    v53 = *(v0 + 48);
    v54[0] = v2;
    *(v54 + 11) = *(v0 + 75);
    v3 = *(v0 + 32);
    v51 = *(v0 + 16);
    v52 = v3;
    sub_1B0BF6CA4(&v51);
    *(v0 + 24) = 0;
    *(v0 + 32) = 0;
    *(v0 + 16) = 0;
    result.n128_u64[0] = 255;
    *(v0 + 40) = xmmword_1B0ED4540;
    *(v0 + 64) = 0;
    *(v0 + 72) = 0;
    *(v0 + 90) = 96;
    *(v0 + 88) = 0;
  }

  return result;
}

double sub_1B0C0B08C@<D0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  *a3 = a1;
  *(a3 + 8) = a2;
  result = 0.0;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *(a3 + 64) = 0u;
  *(a3 + 80) = 0;
  *(a3 + 88) = 0x800000;
  *(a3 + 96) = 0;
  *(a3 + 104) = 0;
  *(a3 + 112) = 1;
  *(a3 + 116) = 0;
  *(a3 + 120) = 1;
  *(a3 + 128) = 0;
  *(a3 + 136) = 0;
  *(a3 + 140) = 1;
  *(a3 + 144) = 0;
  *(a3 + 148) = 1;
  *(a3 + 152) = 0;
  *(a3 + 160) = 256;
  return result;
}

uint64_t sub_1B0C0B0FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B0C0B164(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

__n128 __swift_memcpy75_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 59) = *(a2 + 59);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1B0C0B1E8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 75))
  {
    return *a1 + 0x80000000;
  }

  v2 = (*(a1 + 48) >> 2) & 0x80000000 | (*(a1 + 32) >> 33);
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_1B0C0B248(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 74) = 0;
    *(a1 + 72) = 0;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 75) = 1;
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
      *a1 = 0u;
      *(a1 + 16) = 0u;
      *(a1 + 32) = -a2 << 33;
      result = 0.0;
      *(a1 + 40) = xmmword_1B0ED4550;
      *(a1 + 56) = 0;
      *(a1 + 64) = 0;
      *(a1 + 71) = 0;
      return result;
    }

    *(a1 + 75) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1B0C0B2C0(uint64_t a1)
{
  v2 = *(a1 + 72);
  result = a1 + 72;
  *(result + 2) = ((v2 | (*(result + 2) << 16)) >> 16) & 0x1F;
  *result = v2;
  return result;
}

int8x16_t sub_1B0C0B2DC(uint64_t a1, unsigned int a2)
{
  if (a2 < 4)
  {
    v4 = *(a1 + 72);
    v3 = a1 + 72;
    v5 = (v4 | (*(v3 + 2) << 16)) & 0x101FF;
    *(v3 - 40) &= 0x1FFFFFFFFuLL;
    result = vandq_s8(*(v3 - 24), vdupq_n_s64(0x1FFFFFFFFuLL));
    *(v3 - 24) = result;
    *v3 = v5;
    *(v3 + 2) = (v5 | (a2 << 21)) >> 16;
  }

  else
  {
    *a1 = a2 - 4;
    result.i64[0] = 0;
    *(a1 + 8) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 74) = 0x80;
    *(a1 + 72) = 0;
  }

  return result;
}

uint64_t sub_1B0C0B364(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 25))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 24);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  if (v4 + 1 >= 2)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B0C0B3AC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 24) = 0;
    *(result + 16) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = ~a2;
    }
  }

  return result;
}

uint64_t sub_1B0C0B3F8(uint64_t result, unsigned int a2)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 254;
  }

  else if (a2)
  {
    *(result + 24) = -a2;
  }

  return result;
}

uint64_t sub_1B0C0B434@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1B0C0DFDC(v5);
    v5 = result;
  }

  v7 = *(v5 + 16);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = v5 + 40 * a1;
    v10 = *(v9 + 32);
    v9 += 32;
    v11 = *(v9 + 8);
    v12 = *(v9 + 16);
    v13 = *(v9 + 24);
    v14 = *(v9 + 32);
    result = memmove(v9, (v9 + 40), 40 * (v7 - 1 - a1));
    *(v5 + 16) = v8;
    *v2 = v5;
    *a2 = v10;
    *(a2 + 8) = v11;
    *(a2 + 16) = v12;
    *(a2 + 24) = v13;
    *(a2 + 32) = v14;
  }

  return result;
}

uint64_t sub_1B0C0B4F8@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1B0C0DFF0(v5);
    v5 = result;
  }

  v7 = v5[2];
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = *(_s19CommandOutputBufferV7ElementOMa(0) - 8);
    v10 = *(v9 + 72);
    v11 = v5 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + v10 * a1;
    result = sub_1B0C0E3A0(v11, a2);
    if (v10 > 0 || v11 >= v11 + v10 + v10 * (v8 - a1))
    {
      result = swift_arrayInitWithTakeFrontToBack();
    }

    else if (v10)
    {
      result = swift_arrayInitWithTakeBackToFront();
    }

    v5[2] = v8;
    *v2 = v5;
  }

  return result;
}

uint64_t sub_1B0C0B618@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1B0C0E03C(v5);
    v5 = result;
  }

  v7 = *(v5 + 16);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = v5 + 40 * a1;
    v10 = *(v9 + 32);
    v9 += 32;
    v11 = *(v9 + 8);
    v12 = *(v9 + 16);
    v13 = *(v9 + 24);
    v14 = *(v9 + 32);
    result = memmove(v9, (v9 + 40), 40 * (v7 - 1 - a1));
    *(v5 + 16) = v8;
    *v2 = v5;
    *a2 = v10;
    *(a2 + 8) = v11;
    *(a2 + 16) = v12;
    *(a2 + 24) = v13;
    *(a2 + 32) = v14;
  }

  return result;
}

uint64_t sub_1B0C0B6DC@<X0>(unint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1B0C0DFC8(v5);
    v5 = result;
  }

  v7 = v5[2];
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = &v5[6 * a1];
    v10 = v9[3];
    *a2 = v9[2];
    a2[1] = v10;
    a2[2] = v9[4];
    result = memmove(v9 + 2, v9 + 5, 48 * (v8 - a1));
    v5[2] = v8;
    *v2 = v5;
  }

  return result;
}

BOOL static MailboxSelectionUsage.__derived_enum_equals(_:_:)(uint64_t a1, char a2, unint64_t a3, char a4)
{
  if ((a2 & 1) == 0)
  {
    if ((a4 & 1) == 0)
    {
      return a1 == a3;
    }

    return 0;
  }

  if (!a1)
  {
    return (a4 & 1) != 0 && !a3;
  }

  if (a1 == 1)
  {
    return (a4 & 1) != 0 && a3 == 1;
  }

  return (a4 & 1) != 0 && a3 > 1;
}

BOOL static MailboxSelectionUsage.__derived_enum_less_than(_:_:)(uint64_t a1, char a2, uint64_t a3, char a4)
{
  if ((a2 & 1) == 0)
  {
    if ((a4 & 1) == 0)
    {
      return a1 < a3;
    }

    v4 = 1;
LABEL_17:
    v6 = 2;
    if (a3 != 1)
    {
      v6 = 3;
    }

    if (!a3)
    {
      v6 = 0;
    }

    return v4 < v6;
  }

  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 2;
      if ((a4 & 1) != 0 && a3 == 1)
      {
        return 0;
      }
    }

    else
    {
      v4 = 3;
      if ((a4 & 1) != 0 && a3 > 1)
      {
        return 0;
      }
    }
  }

  else
  {
    v4 = 0;
    if ((a4 & 1) != 0 && !a3)
    {
      return 0;
    }
  }

  if (a4)
  {
    goto LABEL_17;
  }

  v6 = 1;
  return v4 < v6;
}

BOOL sub_1B0C0B92C(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*(a1 + 8) != 1)
  {
    if ((*(a2 + 8) & 1) == 0)
    {
      return v2 < v3;
    }

    v5 = 1;
    goto LABEL_18;
  }

  if (v2)
  {
    if (v2 == 1)
    {
      if (v3 == 1)
      {
        v4 = *(a2 + 8);
      }

      else
      {
        v4 = 0;
      }

      if ((v4 & 1) == 0)
      {
        v5 = 2;
        if (!*(a2 + 8))
        {
          goto LABEL_29;
        }

LABEL_18:
        v8 = 2;
        if (v3 != 1)
        {
          v8 = 3;
        }

        if (v3)
        {
          v3 = v8;
        }

        return v5 < v3;
      }

      return 0;
    }

    if (v3 > 1)
    {
      v9 = *(a2 + 8);
    }

    else
    {
      v9 = 0;
    }

    if (v9 == 1)
    {
      return 0;
    }

    v5 = 3;
    if (*(a2 + 8))
    {
      goto LABEL_18;
    }
  }

  else
  {
    if (v3)
    {
      v7 = 0;
    }

    else
    {
      v7 = *(a2 + 8);
    }

    if (v7)
    {
      return 0;
    }

    v5 = 0;
    if (*(a2 + 8))
    {
      goto LABEL_18;
    }
  }

LABEL_29:
  v3 = 1;
  return v5 < v3;
}

BOOL sub_1B0C0B9E0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*(a2 + 8) != 1)
  {
    if ((*(a1 + 8) & 1) == 0)
    {
      return v3 >= v2;
    }

    v5 = 1;
    goto LABEL_18;
  }

  if (v3)
  {
    if (v3 == 1)
    {
      if (v2 == 1)
      {
        v4 = *(a1 + 8);
      }

      else
      {
        v4 = 0;
      }

      if ((v4 & 1) == 0)
      {
        v5 = 2;
        if (!*(a1 + 8))
        {
          goto LABEL_29;
        }

LABEL_18:
        v8 = 2;
        if (v2 != 1)
        {
          v8 = 3;
        }

        if (v2)
        {
          v2 = v8;
        }

        return v5 >= v2;
      }

      return 1;
    }

    if (v2 > 1)
    {
      v9 = *(a1 + 8);
    }

    else
    {
      v9 = 0;
    }

    if (v9 == 1)
    {
      return 1;
    }

    v5 = 3;
    if (*(a1 + 8))
    {
      goto LABEL_18;
    }
  }

  else
  {
    if (v2)
    {
      v7 = 0;
    }

    else
    {
      v7 = *(a1 + 8);
    }

    if (v7)
    {
      return 1;
    }

    v5 = 0;
    if (*(a1 + 8))
    {
      goto LABEL_18;
    }
  }

LABEL_29:
  v2 = 1;
  return v5 >= v2;
}

BOOL sub_1B0C0BA9C(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*(a1 + 8) != 1)
  {
    if ((*(a2 + 8) & 1) == 0)
    {
      return v2 >= v3;
    }

    v5 = 1;
    goto LABEL_18;
  }

  if (v2)
  {
    if (v2 == 1)
    {
      if (v3 == 1)
      {
        v4 = *(a2 + 8);
      }

      else
      {
        v4 = 0;
      }

      if ((v4 & 1) == 0)
      {
        v5 = 2;
        if (!*(a2 + 8))
        {
          goto LABEL_29;
        }

LABEL_18:
        v8 = 2;
        if (v3 != 1)
        {
          v8 = 3;
        }

        if (v3)
        {
          v3 = v8;
        }

        return v5 >= v3;
      }

      return 1;
    }

    if (v3 > 1)
    {
      v9 = *(a2 + 8);
    }

    else
    {
      v9 = 0;
    }

    if (v9 == 1)
    {
      return 1;
    }

    v5 = 3;
    if (*(a2 + 8))
    {
      goto LABEL_18;
    }
  }

  else
  {
    if (v3)
    {
      v7 = 0;
    }

    else
    {
      v7 = *(a2 + 8);
    }

    if (v7)
    {
      return 1;
    }

    v5 = 0;
    if (*(a2 + 8))
    {
      goto LABEL_18;
    }
  }

LABEL_29:
  v3 = 1;
  return v5 >= v3;
}

BOOL sub_1B0C0BB58(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*(a2 + 8) != 1)
  {
    if ((*(a1 + 8) & 1) == 0)
    {
      return v3 < v2;
    }

    v5 = 1;
    goto LABEL_18;
  }

  if (v3)
  {
    if (v3 == 1)
    {
      if (v2 == 1)
      {
        v4 = *(a1 + 8);
      }

      else
      {
        v4 = 0;
      }

      if ((v4 & 1) == 0)
      {
        v5 = 2;
        if (!*(a1 + 8))
        {
          goto LABEL_29;
        }

LABEL_18:
        v8 = 2;
        if (v2 != 1)
        {
          v8 = 3;
        }

        if (v2)
        {
          v2 = v8;
        }

        return v5 < v2;
      }

      return 0;
    }

    if (v2 > 1)
    {
      v9 = *(a1 + 8);
    }

    else
    {
      v9 = 0;
    }

    if (v9 == 1)
    {
      return 0;
    }

    v5 = 3;
    if (*(a1 + 8))
    {
      goto LABEL_18;
    }
  }

  else
  {
    if (v2)
    {
      v7 = 0;
    }

    else
    {
      v7 = *(a1 + 8);
    }

    if (v7)
    {
      return 0;
    }

    v5 = 0;
    if (*(a1 + 8))
    {
      goto LABEL_18;
    }
  }

LABEL_29:
  v2 = 1;
  return v5 < v2;
}

BOOL sub_1B0C0BC0C(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*(a1 + 8) != 1)
  {
    if ((*(a2 + 8) & 1) == 0)
    {
      return v2 == v3;
    }

    return 0;
  }

  if (v2)
  {
    if (v2 != 1)
    {
      if (v3 > 1)
      {
        v7 = *(a2 + 8);
      }

      else
      {
        v7 = 0;
      }

      return v7 == 1;
    }

    v4 = v3 == 1;
  }

  else
  {
    v4 = v3 == 0;
  }

  if (v4)
  {
    v6 = *(a2 + 8);
  }

  else
  {
    v6 = 0;
  }

  return (v6 & 1) != 0;
}

BOOL sub_1B0C0BC74(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return sub_1B0C0E404(v5, v7);
}

uint64_t MailboxesSelectionUsage.Value.mailbox.setter(uint64_t a1, int a2)
{

  *v2 = a1;
  *(v2 + 8) = a2;
  return result;
}

uint64_t MailboxesSelectionUsage.Value.usage.setter(uint64_t result, char a2)
{
  *(v2 + 16) = result;
  *(v2 + 24) = a2 & 1;
  return result;
}

uint64_t MailboxesSelectionUsage.min.getter(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v1 = (a1 + 64);
    v2 = 1;
    v3 = *(a1 + 16);
    result = 2;
    while (1)
    {
      v8 = *(v1 - 1);
      if (*v1 == 1)
      {
        if (v8)
        {
          if (v8 == 1)
          {
            if ((v2 & (result == 1)) == 0)
            {
              v5 = 2;
LABEL_27:
              if (v2)
              {
                goto LABEL_4;
              }

LABEL_30:
              v6 = 1;
              goto LABEL_9;
            }

            result = 1;
            v2 = 1;
          }

          else
          {
            if ((v2 & (result > 1)) != 1)
            {
              v5 = 3;
              if ((v2 & 1) == 0)
              {
                goto LABEL_30;
              }

LABEL_4:
              if (result == 1)
              {
                v6 = 2;
              }

              else
              {
                v6 = 3;
              }

              if (!result)
              {
                v6 = 0;
              }

LABEL_9:
              v7 = v5 < v6;
              goto LABEL_10;
            }

            v2 = 1;
            result = 2;
          }
        }

        else
        {
          v5 = 0;
          if ((v2 & (result == 0)) == 0)
          {
            goto LABEL_27;
          }

          v2 = 1;
          result = 0;
        }
      }

      else
      {
        if (v2)
        {
          v5 = 1;
          goto LABEL_4;
        }

        if (v8 != result)
        {
          v7 = v8 < result;
LABEL_10:
          if (v7)
          {
            result = *(v1 - 1);
            v2 = *v1;
          }

          goto LABEL_12;
        }

        v2 = 0;
      }

LABEL_12:
      v1 += 40;
      if (!--v3)
      {
        return result;
      }
    }
  }

  return 0;
}

void (*MailboxesSelectionUsage.subscript.modify(uint64_t *a1, int a2))(uint64_t **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x28uLL);
  }

  v6 = v5;
  *a1 = v5;
  *(v5 + 32) = v2;
  *(v5 + 28) = a2;
  *v5 = MailboxesSelectionUsage.subscript.getter(a2, *v2);
  *(v6 + 8) = v7;
  *(v6 + 16) = v8;
  *(v6 + 24) = v9;
  return sub_1B0C0BF8C;
}

void sub_1B0C0BF8C(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = **a1;
  v4 = v2[1];
  v5 = v2[2];
  v6 = *(v2 + 24);
  v7 = *(v2 + 7);
  if (a2)
  {
    v8 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    MailboxesSelectionUsage.subscript.setter(v8, v4, v5, v6, v7);
  }

  else
  {
    MailboxesSelectionUsage.subscript.setter(v3, v2[1], v2[2], *(v2 + 24), *(v2 + 7));
  }

  free(v2);
}

unint64_t sub_1B0C0C020(int *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *a1;
  result = MailboxesSelectionUsage.subscript.getter(*a1, *a2);
  if (result)
  {
    if ((v10 & 1) != 0 && v9 >= 2)
    {
    }

    else
    {
      v15 = result;
      v16 = v8;
      sub_1B08A34FC();
      v11 = sub_1B0E450A8();

      if ((v11 & 1) == 0)
      {
        v12 = *(*a2 + 16);
        if (v12)
        {
          result = 0;
          v13 = (*a2 + 32);
          while (1)
          {
            v14 = *v13;
            v13 += 10;
            if (v14 == v6)
            {
              break;
            }

            if (v12 == ++result)
            {
              return result;
            }
          }

          sub_1B0C0B618(result, &v15);
          return sub_1B0C0E158(&v15);
        }
      }
    }
  }

  return result;
}

char *sub_1B0C0C114(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5EE0, &qword_1B0E99B40);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

char *sub_1B0C0C208(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5630, &qword_1B0ED5CF0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 80);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[80 * v8])
    {
      memmove(v12, v13, 80 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1B0C0C328(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4CB0, &unk_1B0ED5D30);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1B0C0C434(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5700, &unk_1B0ED5D00);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[6 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 48 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5708, ",w\b");
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1B0C0C57C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E56F0, &unk_1B0ED5CE0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1B0C0C69C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E56F8, &qword_1B0ED5CF8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1B0C0C7D0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4718, &qword_1B0ED5CD0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

char *sub_1B0C0C8D4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5718, &qword_1B0ED5D28);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1B0C0C9F0(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5EE0, &qword_1B0E99B40);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size_0(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

void *sub_1B0C0CA64(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5650, &qword_1B0ED5D20);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size_0(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 29;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 2);
  return result;
}

uint64_t sub_1B0C0CAE8(uint64_t result, uint64_t a2, uint64_t *a3, char *a4)
{
  v5 = v4;
  v126 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v9 = MEMORY[0x1E69E7CC0];
LABEL_227:
    v7 = *v126;
    if (!*v126)
    {
      goto LABEL_265;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      goto LABEL_259;
    }

    goto LABEL_229;
  }

  v7 = a4;
  v8 = 0;
  v9 = MEMORY[0x1E69E7CC0];
  while (2)
  {
    v10 = v8++;
    if (v8 >= v6)
    {
      goto LABEL_109;
    }

    v11 = *a3 + 32 * v8;
    v12 = *v11;
    v13 = *(v11 + 16);
    v14 = *(v11 + 24);
    v15 = *a3 + 32 * v10;
    v16 = *(v15 + 16);
    if (v14 != 1)
    {
      if ((*(v15 + 24) & 1) == 0)
      {
        v23 = v13 < v16;
        if (v13 != v16)
        {
LABEL_45:
          v21 = v23;
          goto LABEL_48;
        }

        goto LABEL_44;
      }

      v18 = 1;
      goto LABEL_16;
    }

    if (!v13)
    {
      if (v16)
      {
        v24 = 0;
      }

      else
      {
        v24 = *(v15 + 24);
      }

      if (v24)
      {
        goto LABEL_44;
      }

      if (!*(v15 + 24))
      {
        v21 = 1;
        goto LABEL_48;
      }

      v18 = 0;
      goto LABEL_16;
    }

    if (v13 != 1)
    {
      if (v16 > 1)
      {
        v25 = *(v15 + 24);
      }

      else
      {
        v25 = 0;
      }

      if (v25 == 1)
      {
        goto LABEL_44;
      }

      v18 = 3;
      if ((*(v15 + 24) & 1) == 0)
      {
        goto LABEL_19;
      }

LABEL_16:
      v19 = qword_1B0ED5D40[v16];
      v20 = v18 >= v19;
      v21 = v18 < v19;
      if (!v20 || ((v14 ^ 1) & 1) != 0)
      {
        goto LABEL_48;
      }

      goto LABEL_19;
    }

    if (v16 == 1)
    {
      v17 = *(v15 + 24);
    }

    else
    {
      v17 = 0;
    }

    if (v17)
    {
      goto LABEL_44;
    }

    v18 = 2;
    if (*(v15 + 24))
    {
      goto LABEL_16;
    }

LABEL_19:
    if (!v13)
    {
      if (v16)
      {
        v26 = 0;
      }

      else
      {
        v26 = *(v15 + 24);
      }

      if ((v26 & 1) == 0)
      {
        goto LABEL_224;
      }

      goto LABEL_44;
    }

    if (v13 != 1)
    {
      if (v16 > 1)
      {
        v120 = *(v15 + 24);
      }

      else
      {
        v120 = 0;
      }

      if ((v120 & 1) == 0)
      {
        goto LABEL_224;
      }

      goto LABEL_44;
    }

    if (v16 == 1)
    {
      v22 = *(v15 + 24);
    }

    else
    {
      v22 = 0;
    }

    if (v22)
    {
LABEL_44:
      v23 = v12 < *v15;
      goto LABEL_45;
    }

LABEL_224:
    v21 = 0;
LABEL_48:
    v8 = v10 + 2;
    if (v10 + 2 >= v6)
    {
      goto LABEL_96;
    }

    v27 = v15 + 48;
    do
    {
      v28 = v27;
      v30 = *(v27 + 32);
      v27 += 32;
      v29 = v30;
      v31 = *(v28 + 16);
      v32 = *(v28 + 40);
      v33 = *(v28 - 16);
      v34 = *v28;
      v35 = *(v28 + 8);
      if (v32 != 1)
      {
        if ((v35 & 1) == 0)
        {
          if (v29 == v34)
          {
            goto LABEL_50;
          }

          if (v29 < v34)
          {
            goto LABEL_75;
          }

          goto LABEL_93;
        }

        v37 = 1;
        goto LABEL_63;
      }

      if (!v29)
      {
        if (v34)
        {
          v38 = 0;
        }

        else
        {
          v38 = v35;
        }

        if (v38)
        {
          goto LABEL_50;
        }

        if (!v35)
        {
LABEL_75:
          if (!v21)
          {
            goto LABEL_109;
          }

          goto LABEL_51;
        }

        v37 = 0;
LABEL_63:
        if (v37 < qword_1B0ED5D40[v34])
        {
          goto LABEL_75;
        }

        if (!v32)
        {
          goto LABEL_93;
        }

        goto LABEL_82;
      }

      if (v29 == 1)
      {
        if (v34 == 1)
        {
          v36 = v35;
        }

        else
        {
          v36 = 0;
        }

        if (v36)
        {
          goto LABEL_50;
        }

        v37 = 2;
        if (v35)
        {
          goto LABEL_63;
        }
      }

      else
      {
        if (v34 > 1)
        {
          v39 = v35;
        }

        else
        {
          v39 = 0;
        }

        if (v39 == 1)
        {
          goto LABEL_50;
        }

        v37 = 3;
        if (v35)
        {
          goto LABEL_63;
        }
      }

LABEL_82:
      if (v29)
      {
        if (v29 != 1)
        {
          if (v34 <= 1)
          {
            LOBYTE(v35) = 0;
          }

          if (v35)
          {
LABEL_50:
            if (((v21 ^ (v31 >= v33)) & 1) == 0)
            {
              goto LABEL_96;
            }

            goto LABEL_51;
          }

          goto LABEL_93;
        }

        v40 = v34 == 1;
      }

      else
      {
        v40 = v34 == 0;
      }

      if (!v40)
      {
        LOBYTE(v35) = 0;
      }

      if (v35)
      {
        goto LABEL_50;
      }

LABEL_93:
      if (v21)
      {
        goto LABEL_97;
      }

LABEL_51:
      ++v8;
    }

    while (v6 != v8);
    v8 = v6;
LABEL_96:
    if (v21)
    {
LABEL_97:
      if (v8 >= v10)
      {
        if (v10 < v8)
        {
          v41 = 32 * v8 - 32;
          v42 = 32 * v10;
          v43 = v8;
          v44 = v10;
          do
          {
            if (v44 != --v43)
            {
              v47 = *a3;
              if (!*a3)
              {
                goto LABEL_262;
              }

              v48 = (v47 + v42);
              v49 = (v47 + v41);
              v50 = *(v47 + v42);
              v51 = *(v47 + v42 + 8);
              v52 = *(v47 + v42 + 16);
              v53 = *(v47 + v42 + 24);
              if (v42 != v41 || (result = (v49 + 2), v48 >= v49 + 2))
              {
                v45 = v49[1];
                *v48 = *v49;
                v48[1] = v45;
              }

              v46 = v47 + v41;
              *v46 = v50;
              *(v46 + 8) = v51;
              *(v46 + 16) = v52;
              *(v46 + 24) = v53;
            }

            ++v44;
            v41 -= 32;
            v42 += 32;
          }

          while (v44 < v43);
          v6 = a3[1];
        }

        goto LABEL_109;
      }

LABEL_258:
      __break(1u);
LABEL_259:
      result = sub_1B0B9443C(v9);
      v9 = result;
LABEL_229:
      v121 = *(v9 + 2);
      if (v121 >= 2)
      {
        while (*a3)
        {
          v122 = *&v9[16 * v121];
          v123 = *&v9[16 * v121 + 24];
          sub_1B0C0D948((*a3 + 32 * v122), (*a3 + 32 * *&v9[16 * v121 + 16]), (*a3 + 32 * v123), v7);
          if (v5)
          {
          }

          if (v123 < v122)
          {
            goto LABEL_252;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v9 = sub_1B0B9443C(v9);
          }

          if (v121 - 2 >= *(v9 + 2))
          {
            goto LABEL_253;
          }

          v124 = &v9[16 * v121];
          *v124 = v122;
          *(v124 + 1) = v123;
          result = sub_1B0B943B0(v121 - 1);
          v121 = *(v9 + 2);
          if (v121 <= 1)
          {
          }
        }

        goto LABEL_263;
      }
    }

LABEL_109:
    if (v8 >= v6)
    {
      goto LABEL_170;
    }

    if (__OFSUB__(v8, v10))
    {
      goto LABEL_255;
    }

    if (v8 - v10 >= v7)
    {
      goto LABEL_170;
    }

    if (__OFADD__(v10, v7))
    {
      goto LABEL_256;
    }

    if (v10 + v7 < v6)
    {
      v6 = v10 + v7;
    }

    if (v6 < v10)
    {
LABEL_257:
      __break(1u);
      goto LABEL_258;
    }

    if (v8 == v6)
    {
      goto LABEL_170;
    }

    v54 = *a3;
    v55 = *a3 + 32 * v8 + 24;
    v56 = v10 - v8;
LABEL_119:
    v57 = v56;
    v58 = v55;
LABEL_120:
    v59 = v58 - 24;
    v60 = *(v58 - 3);
    v61 = *(v58 - 1);
    v62 = *v58;
    result = *(v58 - 7);
    v63 = *(v58 - 5);
    v64 = *(v58 - 32);
    if (v62 == 1)
    {
      if (!v61)
      {
        if (v63)
        {
          v68 = 0;
        }

        else
        {
          v68 = *(v58 - 32);
        }

        if (v68)
        {
          goto LABEL_164;
        }

        if (!*(v58 - 32))
        {
          goto LABEL_165;
        }

        v66 = 0;
        goto LABEL_131;
      }

      if (v61 == 1)
      {
        if (v63 == 1)
        {
          v65 = *(v58 - 32);
        }

        else
        {
          v65 = 0;
        }

        if (v65)
        {
          goto LABEL_164;
        }

        v66 = 2;
        if ((v64 & 1) == 0)
        {
          goto LABEL_133;
        }

LABEL_131:
        if (v66 < qword_1B0ED5D40[v63])
        {
          goto LABEL_165;
        }

        if (!*v58)
        {
          goto LABEL_118;
        }

        goto LABEL_133;
      }

      if (v63 > 1)
      {
        v69 = *(v58 - 32);
      }

      else
      {
        v69 = 0;
      }

      if (v69 == 1)
      {
        goto LABEL_164;
      }

      v66 = 3;
      if (v64)
      {
        goto LABEL_131;
      }

LABEL_133:
      if (v61)
      {
        if (v61 == 1)
        {
          if (v63 != 1)
          {
            v64 = 0;
          }

          if (v64 != 1)
          {
            goto LABEL_118;
          }

LABEL_164:
          if (v60 >= result)
          {
            goto LABEL_118;
          }

          goto LABEL_165;
        }

        if (v63 <= 1)
        {
          v64 = 0;
        }

        if (v64 == 1)
        {
          goto LABEL_164;
        }

LABEL_118:
        ++v8;
        v55 += 32;
        --v56;
        if (v8 == v6)
        {
          v8 = v6;
LABEL_170:
          if (v8 < v10)
          {
            goto LABEL_254;
          }

          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = sub_1B0AFF300(0, *(v9 + 2) + 1, 1, v9);
            v9 = result;
          }

          v75 = *(v9 + 2);
          v74 = *(v9 + 3);
          v76 = v75 + 1;
          if (v75 >= v74 >> 1)
          {
            result = sub_1B0AFF300((v74 > 1), v75 + 1, 1, v9);
            v9 = result;
          }

          *(v9 + 2) = v76;
          v77 = &v9[16 * v75];
          *(v77 + 4) = v10;
          *(v77 + 5) = v8;
          v78 = *v126;
          if (!*v126)
          {
            goto LABEL_264;
          }

          if (!v75)
          {
LABEL_3:
            v6 = a3[1];
            v7 = a4;
            if (v8 >= v6)
            {
              goto LABEL_227;
            }

            continue;
          }

          while (2)
          {
            v79 = v76 - 1;
            if (v76 >= 4)
            {
              v84 = &v9[16 * v76 + 32];
              v85 = *(v84 - 64);
              v86 = *(v84 - 56);
              v90 = __OFSUB__(v86, v85);
              v87 = v86 - v85;
              if (v90)
              {
                goto LABEL_241;
              }

              v89 = *(v84 - 48);
              v88 = *(v84 - 40);
              v90 = __OFSUB__(v88, v89);
              v82 = v88 - v89;
              v83 = v90;
              if (v90)
              {
                goto LABEL_242;
              }

              v91 = &v9[16 * v76];
              v93 = *v91;
              v92 = *(v91 + 1);
              v90 = __OFSUB__(v92, v93);
              v94 = v92 - v93;
              if (v90)
              {
                goto LABEL_244;
              }

              v90 = __OFADD__(v82, v94);
              v95 = v82 + v94;
              if (v90)
              {
                goto LABEL_247;
              }

              if (v95 >= v87)
              {
                v113 = &v9[16 * v79 + 32];
                v115 = *v113;
                v114 = *(v113 + 1);
                v90 = __OFSUB__(v114, v115);
                v116 = v114 - v115;
                if (v90)
                {
                  goto LABEL_251;
                }

                if (v82 < v116)
                {
                  v79 = v76 - 2;
                }
              }

              else
              {
LABEL_190:
                if (v83)
                {
                  goto LABEL_243;
                }

                v96 = &v9[16 * v76];
                v98 = *v96;
                v97 = *(v96 + 1);
                v99 = __OFSUB__(v97, v98);
                v100 = v97 - v98;
                v101 = v99;
                if (v99)
                {
                  goto LABEL_246;
                }

                v102 = &v9[16 * v79 + 32];
                v104 = *v102;
                v103 = *(v102 + 1);
                v90 = __OFSUB__(v103, v104);
                v105 = v103 - v104;
                if (v90)
                {
                  goto LABEL_249;
                }

                if (__OFADD__(v100, v105))
                {
                  goto LABEL_250;
                }

                if (v100 + v105 < v82)
                {
                  goto LABEL_204;
                }

                if (v82 < v105)
                {
                  v79 = v76 - 2;
                }
              }
            }

            else
            {
              if (v76 == 3)
              {
                v80 = *(v9 + 4);
                v81 = *(v9 + 5);
                v90 = __OFSUB__(v81, v80);
                v82 = v81 - v80;
                v83 = v90;
                goto LABEL_190;
              }

              v106 = &v9[16 * v76];
              v108 = *v106;
              v107 = *(v106 + 1);
              v90 = __OFSUB__(v107, v108);
              v100 = v107 - v108;
              v101 = v90;
LABEL_204:
              if (v101)
              {
                goto LABEL_245;
              }

              v109 = &v9[16 * v79];
              v111 = *(v109 + 4);
              v110 = *(v109 + 5);
              v90 = __OFSUB__(v110, v111);
              v112 = v110 - v111;
              if (v90)
              {
                goto LABEL_248;
              }

              if (v112 < v100)
              {
                goto LABEL_3;
              }
            }

            v7 = v79 - 1;
            if (v79 - 1 >= v76)
            {
              __break(1u);
LABEL_239:
              __break(1u);
LABEL_240:
              __break(1u);
LABEL_241:
              __break(1u);
LABEL_242:
              __break(1u);
LABEL_243:
              __break(1u);
LABEL_244:
              __break(1u);
LABEL_245:
              __break(1u);
LABEL_246:
              __break(1u);
LABEL_247:
              __break(1u);
LABEL_248:
              __break(1u);
LABEL_249:
              __break(1u);
LABEL_250:
              __break(1u);
LABEL_251:
              __break(1u);
LABEL_252:
              __break(1u);
LABEL_253:
              __break(1u);
LABEL_254:
              __break(1u);
LABEL_255:
              __break(1u);
LABEL_256:
              __break(1u);
              goto LABEL_257;
            }

            if (!*a3)
            {
              goto LABEL_261;
            }

            v117 = *&v9[16 * v7 + 32];
            v118 = *&v9[16 * v79 + 40];
            sub_1B0C0D948((*a3 + 32 * v117), (*a3 + 32 * *&v9[16 * v79 + 32]), (*a3 + 32 * v118), v78);
            if (v5)
            {
            }

            if (v118 < v117)
            {
              goto LABEL_239;
            }

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v9 = sub_1B0B9443C(v9);
            }

            if (v7 >= *(v9 + 2))
            {
              goto LABEL_240;
            }

            v119 = &v9[16 * v7];
            *(v119 + 4) = v117;
            *(v119 + 5) = v118;
            result = sub_1B0B943B0(v79);
            v76 = *(v9 + 2);
            if (v76 <= 1)
            {
              goto LABEL_3;
            }

            continue;
          }
        }

        goto LABEL_119;
      }

      if (v63)
      {
        v64 = 0;
      }

      v67 = v64 == 1;
    }

    else
    {
      if (v64)
      {
        v66 = 1;
        goto LABEL_131;
      }

      v67 = v61 == v63;
      if (v61 < v63)
      {
        goto LABEL_165;
      }
    }

    break;
  }

  if (!v67 || v60 >= result)
  {
    goto LABEL_118;
  }

LABEL_165:
  if (v54)
  {
    v72 = *(v58 - 56);
    v71 = *(v58 - 40);
    *(v58 - 32) = v62;
    v58 -= 32;
    v73 = *(v58 + 4);
    *v59 = v72;
    *(v59 + 1) = v71;
    *(v58 - 3) = v60;
    *(v58 - 4) = v73;
    *(v58 - 1) = v61;
    v20 = __CFADD__(v57++, 1);
    if (v20)
    {
      goto LABEL_118;
    }

    goto LABEL_120;
  }

  __break(1u);
LABEL_261:
  __break(1u);
LABEL_262:
  __break(1u);
LABEL_263:
  __break(1u);
LABEL_264:
  __break(1u);
LABEL_265:
  __break(1u);
  return result;
}

uint64_t sub_1B0C0D358(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v100 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v101 = *v100;
    if (!*v100)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_1B0B9443C(v8);
      v8 = result;
    }

    v92 = (v8 + 16);
    v93 = *(v8 + 16);
    if (v93 >= 2)
    {
      while (*a3)
      {
        v94 = (v8 + 16 * v93);
        v95 = *v94;
        v96 = &v92[2 * v93];
        v97 = v96[1];
        sub_1B0C0DD3C((*a3 + 40 * *v94), (*a3 + 40 * *v96), *a3 + 40 * v97, v101);
        if (v5)
        {
        }

        if (v97 < v95)
        {
          goto LABEL_114;
        }

        if (v93 - 2 >= *v92)
        {
          goto LABEL_115;
        }

        *v94 = v95;
        v94[1] = v97;
        v98 = *v92 - v93;
        if (*v92 < v93)
        {
          goto LABEL_116;
        }

        v93 = *v92 - 1;
        result = memmove(v96, v96 + 2, 16 * v98);
        *v92 = v93;
        if (v93 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  v99 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 40 * v7);
      v11 = (*a3 + 40 * v9);
      v14 = *v11;
      v13 = v11 + 10;
      v12 = v14;
      v15 = v9 + 2;
      while (v6 != v15)
      {
        v16 = *v13;
        v17 = v13[10];
        v13 += 10;
        ++v15;
        if (v10 < v12 == v17 >= v16)
        {
          v7 = v15 - 1;
          if (v10 >= v12)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v12)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v18 = 40 * v7 - 16;
        v19 = 40 * v9 + 32;
        v20 = v7;
        v21 = v9;
        do
        {
          if (v21 != --v20)
          {
            v30 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v22 = (v30 + v19);
            v23 = *(v30 + v19 - 32);
            v24 = (v30 + v18);
            v25 = *(v22 - 3);
            v26 = *(v22 - 4);
            v27 = *(v22 - 1);
            v28 = *v22;
            result = v24[1];
            v29 = *(v24 - 1);
            *(v22 - 2) = *(v24 - 3);
            *(v22 - 1) = v29;
            *v22 = result;
            *(v24 - 6) = v23;
            *(v24 - 2) = v25;
            *(v24 - 2) = v26;
            *v24 = v27;
            *(v24 + 8) = v28;
          }

          ++v21;
          v18 -= 40;
          v19 += 40;
        }

        while (v21 < v20);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1B0AFF300(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v45 = *(v8 + 16);
    v44 = *(v8 + 24);
    v46 = v45 + 1;
    if (v45 >= v44 >> 1)
    {
      result = sub_1B0AFF300((v44 > 1), v45 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v46;
    v47 = v8 + 32;
    v48 = (v8 + 32 + 16 * v45);
    *v48 = v9;
    v48[1] = v7;
    v101 = *v100;
    if (!*v100)
    {
      goto LABEL_127;
    }

    if (v45)
    {
      while (1)
      {
        v49 = v46 - 1;
        if (v46 >= 4)
        {
          break;
        }

        if (v46 == 3)
        {
          v50 = *(v8 + 32);
          v51 = *(v8 + 40);
          v60 = __OFSUB__(v51, v50);
          v52 = v51 - v50;
          v53 = v60;
LABEL_57:
          if (v53)
          {
            goto LABEL_104;
          }

          v66 = (v8 + 16 * v46);
          v68 = *v66;
          v67 = v66[1];
          v69 = __OFSUB__(v67, v68);
          v70 = v67 - v68;
          v71 = v69;
          if (v69)
          {
            goto LABEL_106;
          }

          v72 = (v47 + 16 * v49);
          v74 = *v72;
          v73 = v72[1];
          v60 = __OFSUB__(v73, v74);
          v75 = v73 - v74;
          if (v60)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v70, v75))
          {
            goto LABEL_111;
          }

          if (v70 + v75 >= v52)
          {
            if (v52 < v75)
            {
              v49 = v46 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v46 < 2)
        {
          goto LABEL_112;
        }

        v76 = (v8 + 16 * v46);
        v78 = *v76;
        v77 = v76[1];
        v60 = __OFSUB__(v77, v78);
        v70 = v77 - v78;
        v71 = v60;
LABEL_72:
        if (v71)
        {
          goto LABEL_108;
        }

        v79 = (v47 + 16 * v49);
        v81 = *v79;
        v80 = v79[1];
        v60 = __OFSUB__(v80, v81);
        v82 = v80 - v81;
        if (v60)
        {
          goto LABEL_110;
        }

        if (v82 < v70)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v49 - 1 >= v46)
        {
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
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v87 = (v47 + 16 * (v49 - 1));
        v88 = *v87;
        v89 = (v47 + 16 * v49);
        v90 = v89[1];
        sub_1B0C0DD3C((*a3 + 40 * *v87), (*a3 + 40 * *v89), *a3 + 40 * v90, v101);
        if (v5)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_99;
        }

        if (v49 > *(v8 + 16))
        {
          goto LABEL_100;
        }

        *v87 = v88;
        v87[1] = v90;
        v91 = *(v8 + 16);
        if (v49 >= v91)
        {
          goto LABEL_101;
        }

        v46 = v91 - 1;
        result = memmove((v47 + 16 * v49), v89 + 2, 16 * (v91 - 1 - v49));
        *(v8 + 16) = v91 - 1;
        if (v91 <= 2)
        {
          goto LABEL_3;
        }
      }

      v54 = v47 + 16 * v46;
      v55 = *(v54 - 64);
      v56 = *(v54 - 56);
      v60 = __OFSUB__(v56, v55);
      v57 = v56 - v55;
      if (v60)
      {
        goto LABEL_102;
      }

      v59 = *(v54 - 48);
      v58 = *(v54 - 40);
      v60 = __OFSUB__(v58, v59);
      v52 = v58 - v59;
      v53 = v60;
      if (v60)
      {
        goto LABEL_103;
      }

      v61 = (v8 + 16 * v46);
      v63 = *v61;
      v62 = v61[1];
      v60 = __OFSUB__(v62, v63);
      v64 = v62 - v63;
      if (v60)
      {
        goto LABEL_105;
      }

      v60 = __OFADD__(v52, v64);
      v65 = v52 + v64;
      if (v60)
      {
        goto LABEL_107;
      }

      if (v65 >= v57)
      {
        v83 = (v47 + 16 * v49);
        v85 = *v83;
        v84 = v83[1];
        v60 = __OFSUB__(v84, v85);
        v86 = v84 - v85;
        if (v60)
        {
          goto LABEL_113;
        }

        if (v52 < v86)
        {
          v49 = v46 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v99;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v31 = *a3;
  v32 = *a3 + 40 * v7 - 40;
  v33 = v9 - v7;
LABEL_30:
  v34 = v33;
  v35 = v32;
  while (1)
  {
    v36 = v35 + 40;
    v37 = *(v35 + 40);
    if (v37 >= *v35)
    {
LABEL_29:
      ++v7;
      v32 += 40;
      --v33;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v31)
    {
      break;
    }

    v38 = *(v35 + 48);
    v39 = *(v35 + 56);
    v40 = *(v35 + 64);
    result = *(v35 + 72);
    v41 = *(v35 + 16);
    *v36 = *v35;
    *(v35 + 56) = v41;
    v42 = *(v35 + 32);
    *v35 = v37;
    *(v35 + 8) = v38;
    *(v35 + 16) = v39;
    *(v35 + 24) = v40;
    *(v35 + 32) = result;
    v35 -= 40;
    *(v36 + 32) = v42;
    if (__CFADD__(v34++, 1))
    {
      goto LABEL_29;
    }
  }

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
  return result;
}

uint64_t sub_1B0C0D948(char *__src, char *__dst, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __dst;
  v7 = __src;
  v8 = __dst - __src;
  v9 = __dst - __src + 31;
  if (__dst - __src >= 0)
  {
    v9 = __dst - __src;
  }

  v10 = v9 >> 5;
  v11 = a3 - __dst;
  v12 = a3 - __dst + 31;
  if (a3 - __dst >= 0)
  {
    v12 = a3 - __dst;
  }

  v13 = v12 >> 5;
  if (v10 < v13)
  {
    v14 = 32 * v10;
    if (a4 != __src || &__src[v14] <= a4)
    {
      memmove(a4, __src, v14);
    }

    v15 = &v4[v14];
    if (v8 < 32 || v6 >= v5)
    {
LABEL_130:
      v33 = v7;
      goto LABEL_132;
    }

    while (1)
    {
      v16 = *v6;
      v17 = *(v6 + 2);
      v18 = *v4;
      v19 = *(v4 + 2);
      v20 = v4[24];
      if (v6[24] == 1)
      {
        if (v17)
        {
          if (v17 == 1)
          {
            if (v19 == 1)
            {
              v21 = v4[24];
            }

            else
            {
              v21 = 0;
            }

            if (v21)
            {
              goto LABEL_58;
            }

            v22 = 2;
            if ((v20 & 1) == 0)
            {
              goto LABEL_42;
            }
          }

          else
          {
            if (v19 > 1)
            {
              v25 = v4[24];
            }

            else
            {
              v25 = 0;
            }

            if (v25 == 1)
            {
              goto LABEL_58;
            }

            v22 = 3;
            if ((v20 & 1) == 0)
            {
              goto LABEL_42;
            }
          }
        }

        else
        {
          if (v19)
          {
            v24 = 0;
          }

          else
          {
            v24 = v4[24];
          }

          if (v24)
          {
            goto LABEL_58;
          }

          if (!v4[24])
          {
            goto LABEL_59;
          }

          v22 = 0;
        }
      }

      else
      {
        if ((v20 & 1) == 0)
        {
          if (v17 < v19)
          {
            goto LABEL_59;
          }

          if (v17 == v19 && v16 < v18)
          {
            goto LABEL_59;
          }

          goto LABEL_64;
        }

        v22 = 1;
      }

      if (v22 < qword_1B0ED5D40[v19])
      {
        goto LABEL_59;
      }

      if (!v6[24])
      {
        goto LABEL_64;
      }

LABEL_42:
      if (v17)
      {
        if (v17 == 1)
        {
          if (v19 != 1)
          {
            v20 = 0;
          }

          if (v20 != 1)
          {
            goto LABEL_64;
          }
        }

        else
        {
          if (v19 <= 1)
          {
            v20 = 0;
          }

          if (v20 != 1)
          {
            goto LABEL_64;
          }
        }

LABEL_58:
        if (v16 < v18)
        {
          goto LABEL_59;
        }

        goto LABEL_64;
      }

      if (v19)
      {
        v20 = 0;
      }

      if (v20 == 1 && v16 < v18)
      {
LABEL_59:
        v27 = v6;
        v28 = v7 == v6;
        v6 += 32;
        if (v28)
        {
          goto LABEL_61;
        }

LABEL_60:
        v29 = *(v27 + 1);
        *v7 = *v27;
        *(v7 + 1) = v29;
        goto LABEL_61;
      }

LABEL_64:
      v27 = v4;
      v28 = v7 == v4;
      v4 += 32;
      if (!v28)
      {
        goto LABEL_60;
      }

LABEL_61:
      v7 += 32;
      if (v4 >= v15 || v6 >= v5)
      {
        goto LABEL_130;
      }
    }
  }

  v30 = 32 * v13;
  if (a4 != __dst || &__dst[v30] <= a4)
  {
    memmove(a4, __dst, 32 * v13);
  }

  v15 = &v4[v30];
  if (v11 < 32 || v6 <= v7)
  {
LABEL_131:
    v33 = v6;
    goto LABEL_132;
  }

  do
  {
    v31 = 0;
    v32 = v15;
    v33 = v6 - 32;
    while (1)
    {
      v34 = *&v32[v31 - 32];
      v35 = *&v32[v31 - 16];
      v36 = *(v6 - 4);
      v37 = *(v6 - 2);
      v38 = *(v6 - 8);
      if (v32[v31 - 8] == 1)
      {
        break;
      }

      if (v38)
      {
        v40 = 1;
        goto LABEL_103;
      }

      if (v35 < v37)
      {
        goto LABEL_125;
      }

      if (v35 == v37 && v34 < v36)
      {
        goto LABEL_125;
      }

LABEL_123:
      if (&v5[v31] != &v32[v31])
      {
        v45 = &v5[v31 - 32];
        v46 = *&v32[v31 - 16];
        *v45 = *&v32[v31 - 32];
        *(v45 + 1) = v46;
      }

      v31 -= 32;
      v15 = &v32[v31];
      if (&v32[v31] <= v4)
      {
        goto LABEL_131;
      }
    }

    if (!v35)
    {
      if (v37)
      {
        v42 = 0;
      }

      else
      {
        v42 = *(v6 - 8);
      }

      if ((v42 & 1) == 0)
      {
        if (!*(v6 - 8))
        {
          goto LABEL_125;
        }

        v40 = 0;
        goto LABEL_103;
      }

LABEL_122:
      if (v34 < v36)
      {
        goto LABEL_125;
      }

      goto LABEL_123;
    }

    if (v35 == 1)
    {
      if (v37 == 1)
      {
        v39 = *(v6 - 8);
      }

      else
      {
        v39 = 0;
      }

      if (v39)
      {
        goto LABEL_122;
      }

      v40 = 2;
      if (v38)
      {
LABEL_103:
        if (v40 < qword_1B0ED5D40[v37])
        {
          goto LABEL_125;
        }

        if (!v32[v31 - 8])
        {
          goto LABEL_123;
        }
      }
    }

    else
    {
      if (v37 > 1)
      {
        v43 = *(v6 - 8);
      }

      else
      {
        v43 = 0;
      }

      if (v43 == 1)
      {
        goto LABEL_122;
      }

      v40 = 3;
      if (v38)
      {
        goto LABEL_103;
      }
    }

    if (v35)
    {
      if (v35 == 1)
      {
        if (v37 != 1)
        {
          v38 = 0;
        }

        if (v38 != 1)
        {
          goto LABEL_123;
        }
      }

      else
      {
        if (v37 <= 1)
        {
          v38 = 0;
        }

        if (v38 != 1)
        {
          goto LABEL_123;
        }
      }

      goto LABEL_122;
    }

    if (v37)
    {
      v38 = 0;
    }

    if (v38 != 1 || v34 >= v36)
    {
      goto LABEL_123;
    }

LABEL_125:
    v47 = &v5[v31];
    v5 = &v5[v31 - 32];
    if (v47 != v6)
    {
      v48 = *(v6 - 1);
      *v5 = *v33;
      *(v5 + 1) = v48;
    }

    v15 = &v32[v31];
    if (&v32[v31] <= v4)
    {
      break;
    }

    v6 -= 32;
  }

  while (v33 > v7);
  v15 = &v32[v31];
LABEL_132:
  v49 = (v15 - v4 + (v15 - v4 < 0 ? 0x1FuLL : 0)) & 0xFFFFFFFFFFFFFFE0;
  if (v33 != v4 || v33 >= &v4[v49])
  {
    memmove(v33, v4, v49);
  }

  return 1;
}