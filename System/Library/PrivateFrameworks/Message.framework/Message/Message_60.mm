void sub_1B0BCF7A4(char a1@<W0>, uint64_t a2@<X1>, void (*a3)(uint64_t, unint64_t)@<X2>, uint64_t a4@<X8>)
{
  v10 = _s6LoggerVMa_0(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v45 - v15;
  if ((a1 & 1) == 0)
  {
    v33 = (v4[9] >> 59) & 6 | ((v4[7] & 0x2000000000000000) != 0);
    v46 = v5;
    if (v33 > 2)
    {
      if ((v33 - 5) >= 2)
      {
        if (v33 == 3)
        {
          if (qword_1EB6E5378 != -1)
          {
            swift_once();
          }

          v34 = &qword_1EB738388;
        }

        else
        {
          if (qword_1EB6E5380 != -1)
          {
            swift_once();
          }

          v34 = &qword_1EB738398;
        }
      }

      else
      {
        if (qword_1EB6E5370 != -1)
        {
          swift_once();
        }

        v34 = &qword_1EB738378;
      }
    }

    else if (v33)
    {
      if (v33 == 1)
      {
        if (qword_1EB6DE340 != -1)
        {
          swift_once();
        }

        v34 = &qword_1EB737E98;
      }

      else
      {
        if (qword_1EB6DE338 != -1)
        {
          swift_once();
        }

        v34 = &qword_1EB737E88;
      }
    }

    else
    {
      v34 = AuthenticationMechanism.plain.unsafeMutableAddressor();
    }

    v38 = *v34;
    v39 = v34[1];
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v40 = 0;
    v41 = 0;
    v42 = 0;
    goto LABEL_51;
  }

  v17 = v4[11];
  if (v17 >> 60 != 15)
  {
    v35 = v4[10];
    *(v4 + 5) = xmmword_1B0EC58F0;
    sub_1B03B2000(v35, v17);
    a3(v35, v17);
    v36 = (v4[9] >> 59) & 6 | ((v4[7] & 0x2000000000000000) != 0);
    v46 = v5;
    if (v36 > 2)
    {
      if ((v36 - 5) >= 2)
      {
        if (v36 == 3)
        {
          if (qword_1EB6E5378 != -1)
          {
            swift_once();
          }

          v37 = &qword_1EB738388;
        }

        else
        {
          if (qword_1EB6E5380 != -1)
          {
            swift_once();
          }

          v37 = &qword_1EB738398;
        }
      }

      else
      {
        if (qword_1EB6E5370 != -1)
        {
          swift_once();
        }

        v37 = &qword_1EB738378;
      }
    }

    else if (v36)
    {
      if (v36 == 1)
      {
        if (qword_1EB6DE340 != -1)
        {
          swift_once();
        }

        v37 = &qword_1EB737E98;
      }

      else
      {
        if (qword_1EB6DE338 != -1)
        {
          swift_once();
        }

        v37 = &qword_1EB737E88;
      }
    }

    else
    {
      v37 = AuthenticationMechanism.plain.unsafeMutableAddressor();
    }

    v38 = *v37;
    v39 = v37[1];
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v40 = sub_1B0BD09D4(v35, v17, j__malloc, j__realloc, sub_1B0B815B8, sub_1B0439080);
    v41 = v43;
    v42 = v44;
    a3(v35, v17);
LABEL_51:
    *a4 = v38;
    *(a4 + 8) = v39;
    *(a4 + 16) = v40;
    *(a4 + 24) = v41;
    *(a4 + 32) = v42;
    *(a4 + 38) = BYTE6(v42);
    *(a4 + 36) = WORD2(v42);
    *(a4 + 39) = *v47;
    *(a4 + 48) = *&v47[9];
    *(a4 + 64) = 1;
    return;
  }

  v18 = v14;
  sub_1B0BCD47C();
  v19 = swift_allocError();
  *v20 = xmmword_1B0ECE570;
  *(v20 + 16) = 1;
  swift_willThrow();
  sub_1B041C97C(a2, v16);
  sub_1B041C97C(a2, v12);
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  v21 = v19;
  v22 = sub_1B0E43988();
  v23 = sub_1B0E458E8();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v48 = v46;
    *v24 = 68158466;
    *(v24 + 4) = 2;
    *(v24 + 8) = 256;
    v26 = v12[*(v18 + 20)];
    sub_1B041C9E0(v12);
    *(v24 + 10) = v26;
    *(v24 + 11) = 2082;
    v27 = *&v16[*(v18 + 20) + 4];
    sub_1B041C9E0(v16);
    v28 = ConnectionID.debugDescription.getter(v27);
    v30 = sub_1B0399D64(v28, v29, &v48);

    *(v24 + 13) = v30;
    *(v24 + 21) = 2112;
    v31 = sub_1B0E42CC8();
    *(v24 + 23) = v31;
    *v25 = v31;
    _os_log_impl(&dword_1B0389000, v22, v23, "[%.*hhx-%{public}s] Authentication failed: %@", v24, 0x1Fu);
    sub_1B0BD096C(v25);
    MEMORY[0x1B272C230](v25, -1, -1);
    v32 = v46;
    __swift_destroy_boxed_opaque_existential_0(v46);
    MEMORY[0x1B272C230](v32, -1, -1);
    MEMORY[0x1B272C230](v24, -1, -1);
  }

  else
  {
    sub_1B041C9E0(v12);

    sub_1B041C9E0(v16);
  }

  swift_willThrow();
}

void sub_1B0BCFE44(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = _s6LoggerVMa_0(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v61 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v61 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v61 - v18;
  if ((a1 & 1) == 0)
  {
    v31 = (v3[9] >> 59) & 6 | ((v3[7] & 0x2000000000000000) != 0);
    if (v31 <= 2)
    {
      if (!v31)
      {
LABEL_26:
        v32 = AuthenticationMechanism.plain.unsafeMutableAddressor();
LABEL_40:
        v55 = *v32;
        v54 = v32[1];
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v56 = 0;
        v57 = 0;
        v58 = 0;
LABEL_41:
        *a3 = v55;
        *(a3 + 8) = v54;
        *(a3 + 16) = v56;
        *(a3 + 24) = v57;
        *(a3 + 32) = v58;
        *(a3 + 38) = BYTE6(v58);
        *(a3 + 36) = WORD2(v58);
        *(a3 + 39) = *v63;
        *(a3 + 48) = *&v63[9];
        *(a3 + 64) = 1;
        return;
      }

LABEL_8:
      if (v31 == 1)
      {
        if (qword_1EB6DE340 != -1)
        {
          swift_once();
        }

        v32 = &qword_1EB737E98;
      }

      else
      {
        if (qword_1EB6DE338 != -1)
        {
          swift_once();
        }

        v32 = &qword_1EB737E88;
      }

      goto LABEL_40;
    }

LABEL_27:
    if ((v31 - 5) >= 2)
    {
      if (v31 == 3)
      {
        if (qword_1EB6E5378 != -1)
        {
          swift_once();
        }

        v32 = &qword_1EB738388;
      }

      else
      {
        if (qword_1EB6E5380 != -1)
        {
          swift_once();
        }

        v32 = &qword_1EB738398;
      }
    }

    else
    {
      if (qword_1EB6E5370 != -1)
      {
        swift_once();
      }

      v32 = &qword_1EB738378;
    }

    goto LABEL_40;
  }

  v20 = v3[11];
  if (v20 >> 60 != 11)
  {
    if (v20 >> 60 != 15)
    {
      v48 = v3[10];
      *(v3 + 5) = xmmword_1B0ECD820;
      sub_1B03B2000(v48, v20);
      sub_1B05072A8(v48, v20);
      v49 = sub_1B0BF8AAC(v3[12], v3[13], v3[14], v3[15], v48, v20);
      v51 = v50;
      sub_1B05072A8(v48, v20);
      v52 = (v3[9] >> 59) & 6 | ((v3[7] & 0x2000000000000000) != 0);
      if (v52 > 2)
      {
        if ((v52 - 5) >= 2)
        {
          if (v52 == 3)
          {
            if (qword_1EB6E5378 != -1)
            {
              swift_once();
            }

            v53 = &qword_1EB738388;
          }

          else
          {
            if (qword_1EB6E5380 != -1)
            {
              swift_once();
            }

            v53 = &qword_1EB738398;
          }
        }

        else
        {
          if (qword_1EB6E5370 != -1)
          {
            swift_once();
          }

          v53 = &qword_1EB738378;
        }
      }

      else if (v52)
      {
        if (v52 == 1)
        {
          if (qword_1EB6DE340 != -1)
          {
            swift_once();
          }

          v53 = &qword_1EB737E98;
        }

        else
        {
          if (qword_1EB6DE338 != -1)
          {
            swift_once();
          }

          v53 = &qword_1EB737E88;
        }
      }

      else
      {
        v53 = AuthenticationMechanism.plain.unsafeMutableAddressor();
      }

      v55 = *v53;
      v54 = v53[1];
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v56 = sub_1B0BD09D4(v49, v51, j__malloc, j__realloc, sub_1B0B815B8, sub_1B0439080);
      v57 = v59;
      v58 = v60;
      sub_1B0391D50(v49, v51);
      goto LABEL_41;
    }

    v21 = v17;
    v62 = v3;
    sub_1B041C97C(a2, v12);
    sub_1B041C97C(a2, v9);
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v22 = sub_1B0E43988();
    v23 = sub_1B0E458C8();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v64 = v61;
      *v24 = 68158210;
      *(v24 + 4) = 2;
      *(v24 + 8) = 256;
      v25 = v9[*(v21 + 20)];
      sub_1B041C9E0(v9);
      *(v24 + 10) = v25;
      *(v24 + 11) = 2082;
      v26 = *&v12[*(v21 + 20) + 4];
      sub_1B041C9E0(v12);
      v27 = ConnectionID.debugDescription.getter(v26);
      v29 = sub_1B0399D64(v27, v28, &v64);

      *(v24 + 13) = v29;
      _os_log_impl(&dword_1B0389000, v22, v23, "[%.*hhx-%{public}s] Authentication implementation has no initial response", v24, 0x15u);
      v30 = v61;
      __swift_destroy_boxed_opaque_existential_0(v61);
      MEMORY[0x1B272C230](v30, -1, -1);
      MEMORY[0x1B272C230](v24, -1, -1);
    }

    else
    {
      sub_1B041C9E0(v9);

      sub_1B041C9E0(v12);
    }

    v31 = (v62[9] >> 59) & 6 | ((v62[7] & 0x2000000000000000) != 0);
    if (v31 <= 2)
    {
      if (!v31)
      {
        goto LABEL_26;
      }

      goto LABEL_8;
    }

    goto LABEL_27;
  }

  v33 = v17;
  sub_1B0BCD47C();
  v34 = swift_allocError();
  *v35 = xmmword_1B0ECE570;
  *(v35 + 16) = 1;
  swift_willThrow();
  sub_1B041C97C(a2, v19);
  sub_1B041C97C(a2, v15);
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  v36 = v34;
  v37 = sub_1B0E43988();
  v38 = sub_1B0E458E8();

  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v62 = swift_slowAlloc();
    v64 = v62;
    *v39 = 68158466;
    *(v39 + 4) = 2;
    *(v39 + 8) = 256;
    v41 = v15[*(v33 + 20)];
    sub_1B041C9E0(v15);
    *(v39 + 10) = v41;
    *(v39 + 11) = 2082;
    v42 = *&v19[*(v33 + 20) + 4];
    sub_1B041C9E0(v19);
    v43 = ConnectionID.debugDescription.getter(v42);
    v45 = sub_1B0399D64(v43, v44, &v64);

    *(v39 + 13) = v45;
    *(v39 + 21) = 2112;
    v46 = sub_1B0E42CC8();
    *(v39 + 23) = v46;
    *v40 = v46;
    _os_log_impl(&dword_1B0389000, v37, v38, "[%.*hhx-%{public}s] Authentication failed: %@", v39, 0x1Fu);
    sub_1B0BD096C(v40);
    MEMORY[0x1B272C230](v40, -1, -1);
    v47 = v62;
    __swift_destroy_boxed_opaque_existential_0(v62);
    MEMORY[0x1B272C230](v47, -1, -1);
    MEMORY[0x1B272C230](v39, -1, -1);
  }

  else
  {
    sub_1B041C9E0(v15);

    sub_1B041C9E0(v19);
  }

  swift_willThrow();
}

__n128 sub_1B0BD06BC@<Q0>(char a1@<W0>, uint64_t a2@<X1>, void (*a3)(uint64_t, unint64_t)@<X4>, uint64_t a4@<X8>)
{
  sub_1B0BCF7A4(a1, a2, a3, v8);
  if (!v4)
  {
    v7 = v8[3];
    *(a4 + 32) = v8[2];
    *(a4 + 48) = v7;
    *(a4 + 64) = v9;
    result = v8[1];
    *a4 = v8[0];
    *(a4 + 16) = result;
  }

  return result;
}

__n128 sub_1B0BD0714@<Q0>(uint64_t a1@<X8>)
{
  v3 = v1[3];
  v15 = v1[2];
  v16 = v3;
  v17 = v1[4];
  v4 = v1[1];
  v14[0] = *v1;
  v14[1] = v4;
  v5 = v15;
  v6 = v16;
  v7 = v17;
  v8 = *(&v15 + 1) & 0xCFFFFFFFFFFFFFFFLL;
  v9 = *(&v16 + 1) | 0x1000000000000000;
  v11 = v4;
  v12 = v14[0];
  sub_1B0BD1224(v14, v13);
  result = v12;
  *a1 = v12;
  *(a1 + 16) = v11;
  *(a1 + 32) = v5;
  *(a1 + 40) = v8;
  *(a1 + 48) = v6;
  *(a1 + 56) = v9;
  *(a1 + 64) = v7;
  return result;
}

__n128 sub_1B0BD07A8@<Q0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1B0BCFE44(a1, a2, v7);
  if (!v3)
  {
    v6 = v7[3];
    *(a3 + 32) = v7[2];
    *(a3 + 48) = v6;
    *(a3 + 64) = v8;
    result = v7[1];
    *a3 = v7[0];
    *(a3 + 16) = result;
  }

  return result;
}

__n128 sub_1B0BD07FC@<Q0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 88);
  v15 = *(v1 + 72);
  v16 = v3;
  v17 = *(v1 + 104);
  v4 = *(v1 + 56);
  v14[0] = *(v1 + 40);
  v14[1] = v4;
  v5 = v15;
  v6 = v16;
  v7 = v17;
  v8 = *(&v15 + 1) & 0xCFFFFFFFFFFFFFFFLL;
  v9 = *(&v16 + 1) | 0x1000000000000000;
  v11 = v4;
  v12 = v14[0];
  sub_1B0BD1224(v14, v13);
  result = v12;
  *a1 = v12;
  *(a1 + 16) = v11;
  *(a1 + 32) = v5;
  *(a1 + 40) = v8;
  *(a1 + 48) = v6;
  *(a1 + 56) = v9;
  *(a1 + 64) = v7;
  return result;
}

__n128 sub_1B0BD0898@<Q0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1B0BCEE04(a1, a2, v7);
  if (!v3)
  {
    v6 = v7[3];
    *(a3 + 32) = v7[2];
    *(a3 + 48) = v6;
    *(a3 + 64) = v8;
    result = v7[1];
    *a3 = v7[0];
    *(a3 + 16) = result;
  }

  return result;
}

__n128 sub_1B0BD08EC@<Q0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1B0BCE780(a1, a2, v7);
  if (!v3)
  {
    v6 = v7[3];
    *(a3 + 32) = v7[2];
    *(a3 + 48) = v6;
    *(a3 + 64) = v8;
    result = v7[1];
    *a3 = v7[0];
    *(a3 + 16) = result;
  }

  return result;
}

uint64_t sub_1B0BD096C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B0BD09D4(uint64_t result, unint64_t a2, uint64_t (*a3)(void), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = result;
  v8 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v8 != 2)
    {
      goto LABEL_13;
    }

    v10 = *(result + 16);
    v9 = *(result + 24);
    result = v9 - v10;
    if (!__OFSUB__(v9, v10))
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  else if (!v8)
  {
    result = BYTE6(a2);
    goto LABEL_11;
  }

  if (!__OFSUB__(HIDWORD(v7), v7))
  {
    result = HIDWORD(v7) - v7;
LABEL_10:
    if (result < 0)
    {
      __break(1u);
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

LABEL_11:
    if (result)
    {
      v11 = _s12NIOIMAPCore210ByteBufferV8_StorageC11reallocated15minimumCapacity9allocatorAEs6UInt32V_AA0bC9AllocatorVtFZ_0(result, a3, a4, a5, a6);
      swift_beginAccess();
      v12 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = *(v11 + 16);
      goto LABEL_14;
    }

LABEL_13:
    v17 = ByteBufferAllocator.zeroCapacityWithDefaultAllocator.unsafeMutableAddressor();
    v11 = *v17;
    v12 = *(v17 + 2);
    v13 = *(v17 + 3);
    v16 = *(v17 + 4);
    v14 = *(v17 + 10);
    v15 = *(v17 + 22);

LABEL_14:
    v18 = v11;
    v19 = v12;
    v20 = v13;
    v21 = v16;
    v22 = v14;
    v23 = v15;
    result = sub_1B0BD0F04(v7, a2, &v18, v13);
    if ((result & 0x100000000) != 0)
    {
      result = sub_1B0BD0B40(v7, a2, v13);
    }

    if (!__CFADD__(v20, result))
    {
      return v18;
    }

    goto LABEL_19;
  }

LABEL_20:
  __break(1u);
  return result;
}

void *sub_1B0BD0B40(uint64_t a1, unint64_t a2, Swift::UInt32 a3)
{
  v4 = v3;
  v32 = sub_1B0E42FC8();
  v8 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v31 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E53C8, &qword_1B0ECFB78);
  if (result == MEMORY[0x1E6969080])
  {
    goto LABEL_31;
  }

  v11 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v11)
    {
      v12 = BYTE6(a2);
      goto LABEL_12;
    }

    goto LABEL_9;
  }

  if (v11 != 2)
  {
    v12 = 0;
    goto LABEL_12;
  }

  v14 = *(a1 + 16);
  v13 = *(a1 + 24);
  v12 = v13 - v14;
  if (__OFSUB__(v13, v14))
  {
    __break(1u);
LABEL_9:
    if (__OFSUB__(HIDWORD(a1), a1))
    {
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
      return result;
    }

    v12 = HIDWORD(a1) - a1;
  }

LABEL_12:
  v15 = a3 + v12;
  if (__CFADD__(a3, v12))
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v16 = *(v4 + 16);
    v17 = v15 >= v16;
    v18 = v15 - v16;
    if (v17)
    {
      v19 = v18;
    }

    else
    {
      v19 = 0;
    }

    v20 = sub_1B03904C0();
    ByteBuffer._copyStorageAndRebase(extraCapacity:resetIndices:)(v19, v20 & 1);
  }

  v30 = v8;
  sub_1B0BD0DC8(v12, v4, a3);
  v21 = sub_1B0E42EB8();
  sub_1B0BD11CC();
  result = sub_1B0E45E38();
  if (v34 != 1)
  {
    v23 = a3;
    v24 = a3;
    while (1)
    {
      v22 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if ((v22 & 0x8000000000000000) != 0)
      {
        goto LABEL_27;
      }

      if (HIDWORD(v22))
      {
        goto LABEL_28;
      }

      v25 = v33;
      ByteBuffer._ensureAvailableCapacity(_:at:)(v21 + 1, v23);
      v26 = *v4;
      v27 = *(v4 + 20);
      v28 = *(v4 + 22);
      swift_beginAccess();
      *(*(v26 + 24) + (v28 | (v27 << 8)) + v24 + v21) = v25;
      result = sub_1B0E45E38();
      ++v21;
      if (v34 == 1)
      {
        goto LABEL_25;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v22 = v21;
LABEL_25:
  (*(v30 + 8))(v31, v32);
  return v22;
}

unint64_t sub_1B0BD0DC8(unint64_t result, uint64_t *a2, Swift::UInt32 at)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (!HIDWORD(result))
  {
    ByteBuffer._ensureAvailableCapacity(_:at:)(result, at);
    v5 = *a2;
    v6 = *(a2 + 10);
    v7 = *(a2 + 22);
    swift_beginAccess();
    return *(v5 + 24) + (v7 | (v6 << 8)) + at;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B0BD0E48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = sub_1B0E42A98();
  v9 = result;
  if (result)
  {
    result = sub_1B0E42AC8();
    if (__OFSUB__(a1, result))
    {
LABEL_13:
      __break(1u);
      return result;
    }

    v9 += a1 - result;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
    __break(1u);
    goto LABEL_13;
  }

  v12 = sub_1B0E42AB8();
  if (v9)
  {
    if (v12 >= v11)
    {
      v13 = v11;
    }

    else
    {
      v13 = v12;
    }

    v14 = v13 + v9;
    v15 = v9;
  }

  else
  {
    v15 = 0;
    v14 = 0;
  }

  ByteBuffer._setBytes(_:at:)(v15, v14, a5);
  return result;
}

unint64_t sub_1B0BD0F04(uint64_t a1, unint64_t a2, void *a3, uint64_t a4)
{
  v5 = a4;
  v21[2] = *MEMORY[0x1E69E9840];
  v7 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v7 == 2)
    {
      result = sub_1B0BD0E48(*(a1 + 16), *(a1 + 24), a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
      if (v4)
      {
        return result;
      }

      LODWORD(v8) = result;
      v15 = HIDWORD(result) & 1;
    }

    else
    {
      memset(v21, 0, 14);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v17 = *(a3 + 4);
        v11 = v5 >= v17;
        v18 = v5 - v17;
        if (v11)
        {
          v19 = v18;
        }

        else
        {
          v19 = 0;
        }

        v20 = sub_1B03904C0();
        ByteBuffer._copyStorageAndRebase(extraCapacity:resetIndices:)(v19, v20 & 1);
      }

      ByteBuffer._ensureAvailableCapacity(_:at:)(0, v5);
      ByteBuffer._setBytesAssumingUniqueBufferAccess(_:at:)(v21, v21, v5);
      LODWORD(v8) = 0;
      LOBYTE(v15) = 0;
    }

    goto LABEL_23;
  }

  if (!v7)
  {
    v21[0] = a1;
    LOWORD(v21[1]) = a2;
    BYTE2(v21[1]) = BYTE2(a2);
    BYTE3(v21[1]) = BYTE3(a2);
    BYTE4(v21[1]) = BYTE4(a2);
    v8 = BYTE6(a2);
    BYTE5(v21[1]) = BYTE5(a2);
    v9 = a4 + BYTE6(a2);
    if (!__CFADD__(a4, BYTE6(a2)))
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = *(a3 + 4);
        v11 = v9 >= v10;
        v12 = v9 - v10;
        if (v11)
        {
          v13 = v12;
        }

        else
        {
          v13 = 0;
        }

        v14 = sub_1B03904C0();
        ByteBuffer._copyStorageAndRebase(extraCapacity:resetIndices:)(v13, v14 & 1);
      }

      ByteBuffer._ensureAvailableCapacity(_:at:)(v8, v5);
      ByteBuffer._setBytesAssumingUniqueBufferAccess(_:at:)(v21, v21 + v8, v5);
      LOBYTE(v15) = 0;
      goto LABEL_23;
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  if (a1 >> 32 < a1)
  {
    goto LABEL_26;
  }

  result = sub_1B0BD0E48(a1, a1 >> 32, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
  if (v4)
  {
    return result;
  }

  LODWORD(v8) = result;
  v15 = HIDWORD(result) & 1;
LABEL_23:
  LOBYTE(v21[0]) = v15;
  return v8 | (v15 << 32);
}

uint64_t _s12NIOIMAPCore210ByteBufferV8_StorageC11reallocated15minimumCapacity9allocatorAEs6UInt32V_AA0bC9AllocatorVtFZ_0(int a1, uint64_t (*a2)(void), uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1)
  {
    v9 = (a1 - 1) | ((a1 - 1) >> 1) | (((a1 - 1) | ((a1 - 1) >> 1)) >> 2);
    v10 = v9 | (v9 >> 4) | ((v9 | (v9 >> 4)) >> 8);
    v11 = v10 | HIWORD(v10);
    v12 = __CFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      v14 = -1;
    }

    else
    {
      v14 = v13;
    }
  }

  else
  {
    v14 = 0;
  }

  result = a2(v14);
  if (result)
  {
    v16 = result;
    type metadata accessor for ByteBuffer._Storage();
    result = swift_allocObject();
    *(result + 16) = v14;
    *(result + 24) = v16;
    *(result + 32) = a2;
    *(result + 40) = a3;
    *(result + 48) = a4;
    *(result + 56) = a5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1B0BD11CC()
{
  result = qword_1EB6DED20;
  if (!qword_1EB6DED20)
  {
    sub_1B0E42FC8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DED20);
  }

  return result;
}

uint64_t sub_1B0BD1280(uint64_t result, uint64_t a2, unsigned __int8 a3)
{
  if (a3 != 0xFF)
  {
    return sub_1B0BD1294(result, a2, a3);
  }

  return result;
}

uint64_t sub_1B0BD1294(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

uint64_t sub_1B0BD1360(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Authenticator(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B0BD13F0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E53D0, &unk_1B0ECFB80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B0BD1458(uint64_t result, uint64_t a2, unint64_t a3, unsigned __int8 a4)
{
  if ((a4 >> 6) > 1u)
  {
    if (a4 >> 6 == 2)
    {
    }
  }

  else if (a4 >> 6)
  {
    return sub_1B0BB6FE0(result, a2, a3, a4 & 0x3F);
  }

  else
  {
    return sub_1B0BD1488(result, a2, a3);
  }

  return result;
}

uint64_t sub_1B0BD1488(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (a3 >= 4)
  {
    sub_1B0447F00(result);
  }

  return result;
}

__n128 __swift_memcpy184_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  result = a2[8];
  v9 = a2[9];
  v10 = a2[10];
  *(a1 + 176) = *(a2 + 22);
  *(a1 + 144) = v9;
  *(a1 + 160) = v10;
  *(a1 + 128) = result;
  return result;
}

uint64_t sub_1B0BD1510(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 184))
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

uint64_t sub_1B0BD1558(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 184) = 1;
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

    *(result + 184) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1B0BD15D4(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 120);
  v4 = *(a1 + 152);
  v16[8] = *(a1 + 136);
  v16[9] = v4;
  v16[10] = *(a1 + 168);
  v5 = *(a1 + 56);
  v6 = *(a1 + 88);
  v16[4] = *(a1 + 72);
  v16[5] = v6;
  v16[6] = *(a1 + 104);
  v16[7] = v3;
  v7 = *(a1 + 24);
  v16[0] = *(a1 + 8);
  v16[1] = v7;
  v16[2] = *(a1 + 40);
  v16[3] = v5;
  v8 = *a2;
  v9 = *(a2 + 120);
  v10 = *(a2 + 152);
  v17[8] = *(a2 + 136);
  v17[9] = v10;
  v17[10] = *(a2 + 168);
  v11 = *(a2 + 56);
  v12 = *(a2 + 88);
  v17[4] = *(a2 + 72);
  v17[5] = v12;
  v17[6] = *(a2 + 104);
  v17[7] = v9;
  v13 = *(a2 + 24);
  v17[0] = *(a2 + 8);
  v17[1] = v13;
  v17[2] = *(a2 + 40);
  v17[3] = v11;
  if (sub_1B044DA4C(v2, v8))
  {
    v14 = static ServerID.__derived_struct_equals(_:_:)(v16, v17);
  }

  else
  {
    v14 = 0;
  }

  return v14 & 1;
}

uint64_t sub_1B0BD16D8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  *&v48 = _s6LoggerVMa_0(0);
  MEMORY[0x1EEE9AC00](v48);
  v5 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v43 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v43 - v10;
  v12 = v1[3];
  v13 = v1[4];
  __swift_project_boxed_opaque_existential_0(v1, v12);
  (*(v13 + 8))(v49, v12, v13);
  v15 = sub_1B0C0E5E8(v14);
  v17 = v16;
  sub_1B0BD2F90(v49);
  v18 = type metadata accessor for AuthenticationTask(0);
  sub_1B0BD2FE4(v1 + *(v18 + 20), v11, _s6LoggerVMa_0);
  sub_1B0BD2FE4(v11, v8, _s6LoggerVMa_0);
  sub_1B0BD2FE4(v11, v5, _s6LoggerVMa_0);
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v19 = sub_1B0E43988();
  v20 = sub_1B0E45908();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *&v46 = v18;
    v22 = v21;
    *&v45 = swift_slowAlloc();
    *&v50[0] = v45;
    *v22 = 68158466;
    *(v22 + 4) = 2;
    *(v22 + 8) = 256;
    v43 = v15;
    v23 = v48;
    v24 = *(v48 + 20);
    v44 = v20;
    v25 = v5[v24];
    *&v47 = a1;
    sub_1B0BD304C(v5, _s6LoggerVMa_0);
    *(v22 + 10) = v25;
    *(v22 + 11) = 2082;
    v26 = *&v8[*(v23 + 20) + 4];
    sub_1B0BD304C(v8, _s6LoggerVMa_0);
    v27 = ConnectionID.debugDescription.getter(v26);
    v29 = sub_1B0399D64(v27, v28, v50);

    *(v22 + 13) = v29;
    a1 = v47;
    *(v22 + 21) = 2082;
    v30 = sub_1B0399D64(v43, v17, v50);

    *(v22 + 23) = v30;
    _os_log_impl(&dword_1B0389000, v19, v44, "[%.*hhx-%{public}s] Using authentication mechanism '%{public}s'.", v22, 0x1Fu);
    v31 = v45;
    swift_arrayDestroy();
    MEMORY[0x1B272C230](v31, -1, -1);
    v32 = v22;
    v18 = v46;
    MEMORY[0x1B272C230](v32, -1, -1);
  }

  else
  {
    sub_1B0BD304C(v5, _s6LoggerVMa_0);

    sub_1B0BD304C(v8, _s6LoggerVMa_0);
  }

  v33 = v2[6];
  if ((v33 & 0x3000000000000000) == 0x2000000000000000 && v33 == 0x2000000000000000 && !v2[5])
  {
    v34 = *(v2 + *(v18 + 24));
    if (*(v2 + *(v18 + 24)))
    {
      v35 = 2;
    }

    else
    {
      v35 = 1;
    }

    sub_1B0BD30AC(0, 0x2000000000000000uLL);
    v2[5] = v35;
    v2[6] = 0x2000000000000000;
    v36 = v2[3];
    v37 = v2[4];
    __swift_mutable_project_boxed_opaque_existential_1(v2, v36);
    (*(v37 + 16))(v50, v34, v11, v36, v37);
    v48 = v50[1];
    v47 = v50[0];
    v46 = v50[3];
    v45 = v50[2];
    v38 = v51;
    result = sub_1B0BD304C(v11, _s6LoggerVMa_0);
    v40 = v45;
    v41 = v46;
    v42 = v48;
    *a1 = v47;
    *(a1 + 16) = v42;
    *(a1 + 32) = v40;
    *(a1 + 48) = v41;
    *(a1 + 64) = v38;
  }

  else
  {
    result = sub_1B0E465B8();
    __break(1u);
  }

  return result;
}

uint64_t sub_1B0BD1BE0(uint64_t a1)
{
  v2 = v1;
  v4 = _s6LoggerVMa_0(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v42 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v42 - v11;
  v13 = type metadata accessor for UntaggedResponse(0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = (&v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1B0BD2FE4(a1, v15, type metadata accessor for UntaggedResponse);
  if (swift_getEnumCaseMultiPayload() != 5)
  {
    return sub_1B0BD304C(v15, type metadata accessor for UntaggedResponse);
  }

  v16 = *v15;
  v17 = type metadata accessor for AuthenticationTask(0);
  sub_1B0BD2FE4(v2 + *(v17 + 20), v12, _s6LoggerVMa_0);
  sub_1B0BD2FE4(v12, v9, _s6LoggerVMa_0);
  sub_1B0BD2FE4(v12, v6, _s6LoggerVMa_0);
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v18 = sub_1B0E43988();
  v19 = sub_1B0E45908();

  if (os_log_type_enabled(v18, v19))
  {
    v45 = v19;
    v46 = v18;
    v47 = v2;
    v20 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v49 = v44;
    *v20 = 68158466;
    *(v20 + 4) = 2;
    *(v20 + 8) = 256;
    v21 = v6[*(v4 + 20)];
    sub_1B0BD304C(v6, _s6LoggerVMa_0);
    *(v20 + 10) = v21;
    *(v20 + 11) = 2082;
    v22 = *&v9[*(v4 + 20) + 4];
    sub_1B0BD304C(v9, _s6LoggerVMa_0);
    v23 = ConnectionID.debugDescription.getter(v22);
    v25 = sub_1B0399D64(v23, v24, &v49);

    *(v20 + 13) = v25;
    *(v20 + 21) = 2080;
    v26 = *(v16 + 16);
    v27 = MEMORY[0x1E69E7CC0];
    if (v26)
    {
      v42 = v17;
      v48 = MEMORY[0x1E69E7CC0];
      sub_1B041D32C(0, v26, 0);
      v27 = v48;
      v43 = v16;
      v28 = (v16 + 40);
      do
      {
        v29 = *(v28 - 1);
        v30 = *v28;
        v48 = v27;
        v32 = *(v27 + 16);
        v31 = *(v27 + 24);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        if (v32 >= v31 >> 1)
        {
          sub_1B041D32C((v31 > 1), v32 + 1, 1);
          v27 = v48;
        }

        *(v27 + 16) = v32 + 1;
        v33 = v27 + 16 * v32;
        *(v33 + 32) = v29;
        *(v33 + 40) = v30;
        v28 += 4;
        --v26;
      }

      while (v26);
      v17 = v42;
      v16 = v43;
    }

    v48 = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2A70, &qword_1B0E9B5F0);
    sub_1B03B11C4();
    v35 = sub_1B0E448E8();
    v37 = v36;

    v38 = sub_1B0399D64(v35, v37, &v49);

    *(v20 + 23) = v38;
    v39 = v46;
    _os_log_impl(&dword_1B0389000, v46, v45, "[%.*hhx-%{public}s] Got capabilities during auth: %s.", v20, 0x1Fu);
    v40 = v44;
    swift_arrayDestroy();
    MEMORY[0x1B272C230](v40, -1, -1);
    MEMORY[0x1B272C230](v20, -1, -1);

    sub_1B0BD304C(v12, _s6LoggerVMa_0);
    v2 = v47;
  }

  else
  {
    sub_1B0BD304C(v6, _s6LoggerVMa_0);

    sub_1B0BD304C(v9, _s6LoggerVMa_0);
    sub_1B0BD304C(v12, _s6LoggerVMa_0);
  }

  v41 = *(v17 + 28);

  *(v2 + v41) = v16;
  return result;
}

void sub_1B0BD208C(uint64_t a1@<X0>, unint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v86 = _s6LoggerVMa_0(0);
  MEMORY[0x1EEE9AC00](v86);
  v11 = (&v84 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v12);
  v89 = &v84 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v84 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v84 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = (&v84 - v21);
  v23 = type metadata accessor for AuthenticationTask(0);
  sub_1B0BD2FE4(v5 + *(v23 + 20), v22, _s6LoggerVMa_0);
  sub_1B0BD30C8(a1, a2, a3 & 1);
  v24 = sub_1B0BCDD68(a1, a2, a3 & 1);
  v87 = v19;
  v88 = v11;
  v25 = v24;
  v27 = v26;
  sub_1B0BD3198(v24, v26, v22);
  sub_1B0391D50(v25, v27);
  v48 = v5[5];
  v49 = v5[6];
  v64 = (v49 >> 60) & 3;
  if (!v64)
  {
    sub_1B03B2000(v5[5], v5[6]);
    sub_1B0BD30AC(v48, v49);
    *(v5 + 5) = xmmword_1B0ECFC50;
    sub_1B0BD304C(v22, _s6LoggerVMa_0);
    sub_1B04FAEB0(&v104);
    v51 = v104;
    v50 = v105;
    v53 = v106;
    v52 = v107;
    v55 = v108;
    v54 = v109;
    v57 = v110;
    v56 = v111;
    v59 = v112;
    v58 = v113;
    v61 = *(&v114 + 1);
    v60 = v114;
    v62 = 1;
    goto LABEL_7;
  }

  if (v64 == 1)
  {
    swift_willThrow();
    v87 = v48;
    v65 = v48;
  }

  else
  {
    if (__PAIR128__(v49 - 0x2000000000000000, v48) >= 3)
    {
      v68 = v16;
      v85 = v5;
      v69 = v87;
      sub_1B0BD2FE4(v22, v87, _s6LoggerVMa_0);
      sub_1B0BD2FE4(v22, v16, _s6LoggerVMa_0);
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      v70 = sub_1B0E43988();
      v71 = sub_1B0E458F8();
      if (os_log_type_enabled(v70, v71))
      {
        v72 = swift_slowAlloc();
        LODWORD(v89) = v71;
        v73 = v72;
        v88 = swift_slowAlloc();
        *&v104 = v88;
        *v73 = 68158210;
        *(v73 + 4) = 2;
        *(v73 + 8) = 256;
        v74 = v86;
        v75 = v22;
        v76 = *(v68 + *(v86 + 20));
        sub_1B0BD304C(v68, _s6LoggerVMa_0);
        *(v73 + 10) = v76;
        v22 = v75;
        *(v73 + 11) = 2082;
        v77 = *&v69[*(v74 + 20) + 4];
        sub_1B0BD304C(v69, _s6LoggerVMa_0);
        v78 = ConnectionID.debugDescription.getter(v77);
        v80 = sub_1B0399D64(v78, v79, &v104);

        *(v73 + 13) = v80;
        _os_log_impl(&dword_1B0389000, v70, v89, "[%.*hhx-%{public}s] Authentication plugin failed generating response", v73, 0x15u);
        v81 = v88;
        __swift_destroy_boxed_opaque_existential_0(v88);
        MEMORY[0x1B272C230](v81, -1, -1);
        MEMORY[0x1B272C230](v73, -1, -1);
      }

      else
      {
        sub_1B0BD304C(v16, _s6LoggerVMa_0);

        sub_1B0BD304C(v69, _s6LoggerVMa_0);
      }

      v82 = v85[3];
      v83 = v85[4];
      __swift_project_boxed_opaque_existential_0(v85, v82);
      (*(v83 + 8))(v90, v82, v83);
      sub_1B0BD304C(v22, _s6LoggerVMa_0);
      v94 = v90[2];
      v95 = v90[3];
      v96 = v90[4];
      v47 = v90[0];
      v46 = v90[1];
      goto LABEL_6;
    }

    sub_1B0BCD47C();
    v66 = swift_allocError();
    *v67 = v48;
    *(v67 + 8) = v49;
    *(v67 + 16) = 0;
    swift_willThrow();
    sub_1B0BD30D8(v48, v49);
    v87 = v66;
  }

  v28 = v88;
  sub_1B0BD2FE4(v22, v89, _s6LoggerVMa_0);
  sub_1B0BD2FE4(v22, v28, _s6LoggerVMa_0);
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  v88 = v22;
  v29 = sub_1B0E43988();
  v30 = sub_1B0E458E8();
  v31 = v28;
  if (os_log_type_enabled(v29, v30))
  {
    v32 = swift_slowAlloc();
    v84 = swift_slowAlloc();
    *&v104 = v84;
    *v32 = 68158210;
    *(v32 + 4) = 2;
    *(v32 + 8) = 256;
    v33 = a4;
    v34 = v89;
    v35 = v86;
    v36 = *(v86 + 20);
    v85 = v5;
    v37 = *(v31 + v36);
    sub_1B0BD304C(v31, _s6LoggerVMa_0);
    *(v32 + 10) = v37;
    *(v32 + 11) = 2082;
    v38 = *(v34 + *(v35 + 20) + 4);
    v39 = v34;
    a4 = v33;
    sub_1B0BD304C(v39, _s6LoggerVMa_0);
    v40 = ConnectionID.debugDescription.getter(v38);
    v42 = sub_1B0399D64(v40, v41, &v104);

    *(v32 + 13) = v42;
    v5 = v85;
    _os_log_impl(&dword_1B0389000, v29, v30, "[%.*hhx-%{public}s] Caught error processing Handshake query", v32, 0x15u);
    v43 = v84;
    __swift_destroy_boxed_opaque_existential_0(v84);
    MEMORY[0x1B272C230](v43, -1, -1);
    MEMORY[0x1B272C230](v32, -1, -1);
  }

  else
  {
    sub_1B0BD304C(v28, _s6LoggerVMa_0);

    sub_1B0BD304C(v89, _s6LoggerVMa_0);
  }

  v44 = v5[3];
  v45 = v5[4];
  __swift_project_boxed_opaque_existential_0(v5, v44);
  (*(v45 + 8))(v91, v44, v45);

  sub_1B0BD304C(v88, _s6LoggerVMa_0);
  v94 = v91[2];
  v95 = v91[3];
  v96 = v91[4];
  v47 = v91[0];
  v46 = v91[1];
LABEL_6:
  v92 = v47;
  v93 = v46;
  *&v98 = 0;
  v97 = 0uLL;
  sub_1B0BD2F7C(&v92);
  v112 = v100;
  v113 = v101;
  v114 = v102;
  v115 = v103;
  v108 = v96;
  v109 = v97;
  v110 = v98;
  v111 = v99;
  v104 = v92;
  v105 = v93;
  v106 = v94;
  v107 = v95;
  __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
  v48 = 0;
  v49 = 0;
  v51 = v104;
  v50 = v105;
  v53 = v106;
  v52 = v107;
  v55 = v108;
  v54 = v109;
  v57 = v110;
  v56 = v111;
  v59 = v112;
  v58 = v113;
  v61 = *(&v114 + 1);
  v60 = v114;
  v62 = -1;
LABEL_7:
  v63 = v115;
  *a4 = v48;
  *(a4 + 8) = v49;
  *(a4 + 16) = v62;
  *(a4 + 24) = v51;
  *(a4 + 40) = v50;
  *(a4 + 56) = v53;
  *(a4 + 72) = v52;
  *(a4 + 88) = v55;
  *(a4 + 104) = v54;
  *(a4 + 120) = v57;
  *(a4 + 136) = v56;
  *(a4 + 152) = v59;
  *(a4 + 168) = v58;
  *(a4 + 184) = v60;
  *(a4 + 192) = v61;
  *(a4 + 200) = v63;
}

double sub_1B0BD2844@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unsigned __int8 a4@<W3>, uint64_t a5@<X8>)
{
  v6 = v5;
  v62 = a2;
  v63 = a3;
  v9 = a4;
  v10 = type metadata accessor for AuthenticationTask(0);
  MEMORY[0x1EEE9AC00](v10);
  v61 = &v54[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = _s6LoggerVMa_0(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v54[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v54[-v16];
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v54[-v19];
  sub_1B0BD2FE4(v6 + *(v10 + 20), &v54[-v19], _s6LoggerVMa_0);
  if (v9)
  {
    sub_1B04420D8(a1);
    v21 = v63;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v22 = v6[3];
    v23 = v6[4];
    __swift_project_boxed_opaque_existential_0(v6, v22);
    (*(v23 + 8))(v88, v22, v23);
    sub_1B0BD304C(v20, _s6LoggerVMa_0);
    v66 = v88[2];
    v67 = v88[3];
    v68 = v88[4];
    v64 = v88[0];
    v65 = v88[1];
    *&v69 = a1;
    *(&v69 + 1) = v62;
    *&v70 = v21;
    sub_1B0BD2F7C(&v64);
    v84 = v72;
    v85 = v73;
    v86 = v74;
    v87 = v75;
    v80 = v68;
    v81 = v69;
    v82 = v70;
    v83 = v71;
    v76 = v64;
    v77 = v65;
    v78 = v66;
    v79 = v67;
    __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
    v97 = v84;
    v98 = v85;
    v99 = v86;
    v100 = v87;
    v93 = v80;
    v94 = v81;
    v95 = v82;
    v96 = v83;
    v89 = v76;
    v90 = v77;
    v91 = v78;
    v92 = v79;
  }

  else
  {
    v58 = v12;
    v60 = v10;
    sub_1B0BD2FE4(v20, v17, _s6LoggerVMa_0);
    sub_1B0BD2FE4(v20, v14, _s6LoggerVMa_0);
    v59 = a1;
    sub_1B04420D8(a1);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0BD2FE4(v6, v61, type metadata accessor for AuthenticationTask);
    v24 = sub_1B0E43988();
    v25 = sub_1B0E45908();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v57 = v6;
      v27 = v26;
      v56 = swift_slowAlloc();
      *&v89 = v56;
      *v27 = 68158466;
      *(v27 + 4) = 2;
      *(v27 + 8) = 256;
      v28 = v58;
      v29 = *(v58 + 20);
      v55 = v25;
      v30 = v14[v29];
      sub_1B0BD304C(v14, _s6LoggerVMa_0);
      *(v27 + 10) = v30;
      *(v27 + 11) = 2082;
      v31 = *&v17[*(v28 + 20) + 4];
      sub_1B0BD304C(v17, _s6LoggerVMa_0);
      v32 = ConnectionID.debugDescription.getter(v31);
      v34 = sub_1B0399D64(v32, v33, &v89);

      *(v27 + 13) = v34;
      *(v27 + 21) = 2082;
      v35 = v61;
      v36 = v61[3];
      v37 = v61[4];
      __swift_project_boxed_opaque_existential_0(v61, v36);
      (*(v37 + 8))(v88, v36, v37);
      v39 = sub_1B0C0E5E8(v38);
      v41 = v40;
      sub_1B0BD2F90(v88);
      sub_1B0BD304C(v35, type metadata accessor for AuthenticationTask);
      v42 = sub_1B0399D64(v39, v41, &v89);

      *(v27 + 23) = v42;
      _os_log_impl(&dword_1B0389000, v24, v55, "[%.*hhx-%{public}s] Authenticated with '%{public}s'.", v27, 0x1Fu);
      v43 = v56;
      swift_arrayDestroy();
      MEMORY[0x1B272C230](v43, -1, -1);
      v44 = v27;
      v6 = v57;
      MEMORY[0x1B272C230](v44, -1, -1);

      v45 = v20;
      v46 = _s6LoggerVMa_0;
    }

    else
    {
      sub_1B0BD304C(v14, _s6LoggerVMa_0);

      sub_1B0BD304C(v17, _s6LoggerVMa_0);
      sub_1B0BD304C(v20, _s6LoggerVMa_0);
      v46 = type metadata accessor for AuthenticationTask;
      v45 = v61;
    }

    sub_1B0BD304C(v45, v46);
    v47 = *(v6 + *(v60 + 28));
    *&v64 = v59;
    *(&v64 + 1) = v62;
    *&v65 = v63;
    *(&v65 + 1) = v47;
    sub_1B0BD2F88(&v64);
    v84 = v72;
    v85 = v73;
    v86 = v74;
    v87 = v75;
    v80 = v68;
    v81 = v69;
    v82 = v70;
    v83 = v71;
    v76 = v64;
    v77 = v65;
    v78 = v66;
    v79 = v67;
    __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
    v97 = v84;
    v98 = v85;
    v99 = v86;
    v100 = v87;
    v93 = v80;
    v94 = v81;
    v95 = v82;
    v96 = v83;
    v89 = v76;
    v90 = v77;
    v91 = v78;
    v92 = v79;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  }

  v48 = v98;
  *(a5 + 128) = v97;
  *(a5 + 144) = v48;
  *(a5 + 160) = v99;
  *(a5 + 176) = v100;
  v49 = v94;
  *(a5 + 64) = v93;
  *(a5 + 80) = v49;
  v50 = v96;
  *(a5 + 96) = v95;
  *(a5 + 112) = v50;
  v51 = v90;
  *a5 = v89;
  *(a5 + 16) = v51;
  result = *&v91;
  v53 = v92;
  *(a5 + 32) = v91;
  *(a5 + 48) = v53;
  return result;
}

__n128 sub_1B0BD2E54@<Q0>(uint64_t a1@<X8>)
{
  sub_1B0BD16D8(v4);
  v2 = v4[3];
  *(a1 + 32) = v4[2];
  *(a1 + 48) = v2;
  *(a1 + 64) = v5;
  result = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = result;
  return result;
}

double sub_1B0BD2EA8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unsigned __int8 a4@<W3>, uint64_t a5@<X8>)
{
  sub_1B0BD2844(a1, a2, a3, a4, v12);
  v6 = v20;
  *(a5 + 128) = v19;
  *(a5 + 144) = v6;
  *(a5 + 160) = v21;
  *(a5 + 176) = v22;
  v7 = v16;
  *(a5 + 64) = v15;
  *(a5 + 80) = v7;
  v8 = v18;
  *(a5 + 96) = v17;
  *(a5 + 112) = v8;
  v9 = v12[1];
  *a5 = v12[0];
  *(a5 + 16) = v9;
  result = *&v13;
  v11 = v14;
  *(a5 + 32) = v13;
  *(a5 + 48) = v11;
  return result;
}

uint64_t sub_1B0BD2F24(void *a1, void *a2, uint64_t a3)
{
  if (sub_1B0BD35D4(a1, a2))
  {
    v6 = *(a1 + *(a3 + 24)) ^ *(a2 + *(a3 + 24)) ^ 1;
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t sub_1B0BD2FE4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B0BD304C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1B0BD30AC(uint64_t result, unint64_t a2)
{
  v2 = (a2 >> 60) & 3;
  if (v2 == 1)
  {
  }

  else if (!v2)
  {
    sub_1B0391D50(result, a2);
  }
}

double sub_1B0BD30C8(uint64_t a1, unint64_t a2, char a3)
{
  if (a3)
  {
    sub_1B03B2000(a1, a2);
  }

  else
  {
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  }

  return result;
}

uint64_t sub_1B0BD30D8(uint64_t result, unint64_t a2)
{
  v2 = (a2 >> 60) & 3;
  if (v2 == 1)
  {
    return result;
  }

  if (!v2)
  {
    return sub_1B03B2000(result, a2);
  }

  return result;
}

uint64_t sub_1B0BD30F4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B0BD313C(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

void sub_1B0BD3198(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v5 = v3[5];
  v6 = v3[6];
  v7 = (v6 >> 60) & 3;
  if (!v7)
  {
    goto LABEL_18;
  }

  if (v7 == 1)
  {
    v8 = v5;
LABEL_19:
    swift_willThrow();
    return;
  }

  v9 = v4;
  if (__PAIR128__(0x2000000000000000, 1) < __PAIR128__(v6, v5))
  {
    if (v6 == 0x2000000000000000 && v5 == 2)
    {
      v12 = v3[3];
      v13 = v3[4];
      v14 = v3;
      v16 = v3;
      __swift_mutable_project_boxed_opaque_existential_1(v16, v12);
      (*(v13 + 32))(a1, a2, a3, v12, v13);
      if (!v4)
      {
        v19 = v14[3];
        v20 = v14[4];
        __swift_mutable_project_boxed_opaque_existential_1(v14, v19);
        v21 = (*(v20 + 24))(v19, v20);
        if (v22 >> 60 != 15)
        {
          v45 = v21;
          v46 = v22;
          sub_1B0BD30AC(v14[5], v14[6]);
          v14[5] = v45;
          v14[6] = v46;
          return;
        }

        sub_1B0BD3E9C();
        v9 = swift_allocError();
        swift_willThrow();
      }

LABEL_25:
      v32 = v14[5];
      v33 = v14[6];
      v34 = v9;
      sub_1B0BD30AC(v32, v33);
      v14[5] = v9;
      v14[6] = 0x1000000000000000;
      goto LABEL_19;
    }

LABEL_18:
    sub_1B0BCD47C();
    swift_allocError();
    *v23 = v5;
    *(v23 + 8) = v6;
    *(v23 + 16) = 0;
    sub_1B0BD30D8(v5, v6);
    goto LABEL_19;
  }

  if (!(v5 | v6 ^ 0x2000000000000000))
  {
    goto LABEL_18;
  }

  v10 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v10 != 2)
    {
      goto LABEL_27;
    }

    v24 = *(a1 + 16);
    v25 = *(a1 + 24);
    goto LABEL_23;
  }

  if (v10)
  {
    v24 = a1;
    v25 = a1 >> 32;
LABEL_23:
    if (v24 == v25)
    {
      goto LABEL_27;
    }

    goto LABEL_24;
  }

  if ((a2 & 0xFF000000000000) == 0)
  {
    goto LABEL_27;
  }

LABEL_24:
  v26 = v3[3];
  v27 = v3[4];
  v14 = v3;
  v29 = v3;
  __swift_mutable_project_boxed_opaque_existential_1(v29, v26);
  (*(v27 + 32))(a1, a2, a3, v26, v27);
  if (v4)
  {
    goto LABEL_25;
  }

  v3 = v14;
LABEL_27:
  v35 = v3[3];
  v36 = v3[4];
  v37 = v3;
  __swift_mutable_project_boxed_opaque_existential_1(v3, v35);
  v38 = (*(v36 + 24))(v35, v36);
  if (v4)
  {
LABEL_30:
    v40 = v3[5];
    v41 = v37[6];
    v42 = v9;
    sub_1B0BD30AC(v40, v41);
    v37[5] = v9;
    v37[6] = 0x1000000000000000;
    goto LABEL_19;
  }

  if (v39 >> 60 == 15)
  {
    sub_1B0BD3E9C();
    v9 = swift_allocError();
    swift_willThrow();
    goto LABEL_30;
  }

  v43 = v38;
  v44 = v39;
  sub_1B0BD30AC(v37[5], v37[6]);
  v37[5] = v43;
  v37[6] = v44;
}

BOOL sub_1B0BD34C8(unint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *a2;
  v7 = a2[1];
  v8 = (v5 >> 60) & 3;
  if (!v8)
  {
    return (v7 & 0x3000000000000000) == 0 && sub_1B0AB8858(v4, v5, v6, v7);
  }

  if (v8 == 1)
  {
    return (v7 & 0x3000000000000000) == 0x1000000000000000;
  }

  if (__PAIR128__(0x2000000000000000, 1) < __PAIR128__(v5, v4))
  {
    v9 = v7 & 0x3000000000000000;
    if (v5 == 0x2000000000000000 && v4 == 2)
    {
      if (v9 != 0x2000000000000000 || v6 != 2)
      {
        return 0;
      }
    }

    else if (v9 != 0x2000000000000000 || v6 != 3)
    {
      return 0;
    }
  }

  else if (v4 | v5 ^ 0x2000000000000000)
  {
    if ((v7 & 0x3000000000000000) != 0x2000000000000000 || v6 != 1)
    {
      return 0;
    }
  }

  else if ((v7 & 0x3000000000000000) != 0x2000000000000000 || v6)
  {
    return 0;
  }

  return v7 == 0x2000000000000000;
}

uint64_t sub_1B0BD35D4(void *a1, void *a2)
{
  v4 = a1[5];
  v3 = a1[6];
  v5 = a2[5];
  v6 = a2[6];
  v7 = (v3 >> 60) & 3;
  if (!v7)
  {
    if ((v6 & 0x3000000000000000) != 0)
    {
      goto LABEL_63;
    }

    v8 = a1;
    v9 = sub_1B0AB8858(a1[5], v3, v5, v6);
    a1 = v8;
    if (!v9)
    {
      goto LABEL_63;
    }

    goto LABEL_27;
  }

  if (v7 == 1)
  {
    if ((v6 & 0x3000000000000000) != 0x1000000000000000)
    {
      goto LABEL_63;
    }

LABEL_27:
    v12 = a1[3];
    v13 = a1[4];
    v14 = a1;
    __swift_project_boxed_opaque_existential_0(a1, v12);
    (*(v13 + 8))(&v68, v12, v13);
    v15 = a2[3];
    v16 = a2[4];
    __swift_project_boxed_opaque_existential_0(a2, v15);
    (*(v16 + 8))(&v75, v15, v16);
    v17 = v69;
    v18 = v70;
    if ((v73 & 0x1000000000000000) != 0)
    {
      v85 = v68;
      v86 = v69;
      v87 = v70;
      v88 = v71;
      v89 = v72;
      v90 = v73 & 0xEFFFFFFFFFFFFFFFLL;
      v91 = v74;
      if ((v79 & 0x1000000000000000) != 0)
      {
        v81[0] = v75;
        v81[1] = v76;
        v81[2] = v77;
        v82 = v78;
        v83 = v79 & 0xEFFFFFFFFFFFFFFFLL;
        v84 = v80;
        v20 = sub_1B0C0FEBC(&v85, v81);
        goto LABEL_37;
      }
    }

    else if ((v79 & 0x1000000000000000) == 0)
    {
      v19 = v76;
      if (v68 == v75 || (sub_1B0E46A78() & 1) != 0)
      {
        if (__PAIR128__(v18, v17) == v19)
        {
          sub_1B0BD2F90(&v75);
          sub_1B0BD2F90(&v68);
LABEL_38:
          sub_1B03D2CA8(v14, v66);
          sub_1B03D2CA8(a2, v67);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E53E0, &qword_1B0ECFDF8);
          if (swift_dynamicCast())
          {
            v52 = v62;
            v53 = v63;
            v54 = v64;
            v55 = v65;
            v48 = v58;
            v49 = v59;
            v50 = v60;
            v51 = v61;
            v46 = v56;
            v47 = v57;
            if (swift_dynamicCast())
            {
              v32 = v42;
              v33 = v43;
              v34 = v44;
              v35 = v45;
              v28 = v38;
              v29 = v39;
              v30 = v40;
              v31 = v41;
              v26 = v36;
              v27 = v37;
              if ((*(&v49 + 1) & 0x1000000000000000) != 0)
              {
                v96 = v46;
                v97 = v47;
                v98 = v48;
                *&v99 = v49;
                *(&v99 + 1) = *(&v49 + 1) & 0xEFFFFFFFFFFFFFFFLL;
                v100 = v50;
                if ((*(&v29 + 1) & 0x1000000000000000) == 0 || (v101 = v26, v102 = v27, v103 = v28, *&v104 = v29, *(&v104 + 1) = *(&v29 + 1) & 0xEFFFFFFFFFFFFFFFLL, v105 = v30, (sub_1B0C0FEBC(&v96, &v101) & 1) == 0))
                {
LABEL_68:
                  v10 = 0;
                  goto LABEL_69;
                }
              }

              else if ((HIBYTE(v29) & 0x10) != 0 || v46 != v26 && (sub_1B0E46A78() & 1) == 0 || v47 != v27 && (sub_1B0E46A78() & 1) == 0)
              {
                goto LABEL_68;
              }

              v92[2] = v53;
              v92[3] = v54;
              v93 = v55;
              v92[0] = v51;
              v92[1] = v52;
              v94[2] = v33;
              v94[3] = v34;
              v95 = v35;
              v94[1] = v32;
              v94[0] = v31;
              v10 = sub_1B0C2DC74(v92, v94);
LABEL_69:
              sub_1B0BD3E48(&v26);
              sub_1B0BD3E48(&v46);
LABEL_75:
              __swift_destroy_boxed_opaque_existential_0(v67);
              __swift_destroy_boxed_opaque_existential_0(v66);
              return v10 & 1;
            }

            sub_1B0BD3E48(&v46);
          }

          if (swift_dynamicCast())
          {
            v48 = v58;
            v49 = v59;
            v50 = v60;
            v51 = v61;
            v46 = v56;
            v47 = v57;
            if (swift_dynamicCast())
            {
              v28 = v38;
              v29 = v39;
              v30 = v40;
              v31 = v41;
              v26 = v36;
              v27 = v37;
              v98 = v48;
              v99 = v49;
              v100 = v50;
              v101 = v36;
              v96 = v46;
              v97 = v47;
              v103 = v38;
              v104 = v39;
              v105 = v40;
              v102 = v37;
              if (sub_1B0C0FEBC(&v96, &v101))
              {
                v22 = v31.u64[1];
                if (*(&v51 + 1) >> 60 == 15)
                {
                  sub_1B0BD3DF4(&v46);
                  sub_1B0BD3DF4(&v26);
                  goto LABEL_59;
                }

                if (v31.i64[1] >> 60 != 15)
                {
                  v24 = sub_1B0AB8858(v51, *(&v51 + 1), v31.i64[0], v31.u64[1]);
                  sub_1B0BD3DF4(&v26);
                  sub_1B0BD3DF4(&v46);
                  if (v24)
                  {
                    goto LABEL_79;
                  }

                  goto LABEL_74;
                }
              }

              sub_1B0BD3DF4(&v26);
              sub_1B0BD3DF4(&v46);
              goto LABEL_74;
            }

            sub_1B0BD3DF4(&v46);
          }

          if (swift_dynamicCast())
          {
            v48 = v58;
            v49 = v59;
            v50 = v60;
            v51 = v61;
            v46 = v56;
            v47 = v57;
            if (swift_dynamicCast())
            {
              v28 = v38;
              v29 = v39;
              v30 = v40;
              v31 = v41;
              v26 = v36;
              v27 = v37;
              v98 = v48;
              v99 = v49;
              v100 = v50;
              v101 = v36;
              v96 = v46;
              v97 = v47;
              v103 = v38;
              v104 = v39;
              v105 = v40;
              v102 = v37;
              if (sub_1B0C0FEBC(&v96, &v101))
              {
                v22 = v31.u64[1];
                if (*(&v51 + 1) >> 60 == 15)
                {
                  sub_1B0BD3DA0(&v46);
                  sub_1B0BD3DA0(&v26);
LABEL_59:
                  if (v22 >> 60 == 15)
                  {
                    goto LABEL_79;
                  }

                  goto LABEL_74;
                }

                if (v31.i64[1] >> 60 != 15)
                {
                  v25 = sub_1B0AB8858(v51, *(&v51 + 1), v31.i64[0], v31.u64[1]);
                  sub_1B0BD3DA0(&v26);
                  sub_1B0BD3DA0(&v46);
                  if (v25)
                  {
LABEL_79:
                    v10 = 1;
                    goto LABEL_75;
                  }

LABEL_74:
                  v10 = 0;
                  goto LABEL_75;
                }
              }

              sub_1B0BD3DA0(&v26);
              sub_1B0BD3DA0(&v46);
              goto LABEL_74;
            }

            sub_1B0BD3DA0(&v46);
          }

          sub_1B0BD3D38(v66);
LABEL_63:
          v10 = 0;
          return v10 & 1;
        }

        v20 = sub_1B0E46A78();
LABEL_37:
        v21 = v20;
        sub_1B0BD2F90(&v75);
        sub_1B0BD2F90(&v68);
        if ((v21 & 1) == 0)
        {
          goto LABEL_63;
        }

        goto LABEL_38;
      }
    }

    sub_1B0BD2F90(&v75);
    sub_1B0BD2F90(&v68);
    goto LABEL_63;
  }

  if (__PAIR128__(0x2000000000000000, 1) < __PAIR128__(v3, v4))
  {
    if (v3 == 0x2000000000000000 && v4 == 2)
    {
      if ((v6 & 0x3000000000000000) != 0x2000000000000000)
      {
        goto LABEL_63;
      }

      v10 = 0;
      if (v5 != 2)
      {
        return v10 & 1;
      }
    }

    else
    {
      if ((v6 & 0x3000000000000000) != 0x2000000000000000)
      {
        goto LABEL_63;
      }

      v10 = 0;
      if (v5 != 3)
      {
        return v10 & 1;
      }
    }
  }

  else if (v4 | v3 ^ 0x2000000000000000)
  {
    if ((v6 & 0x3000000000000000) != 0x2000000000000000)
    {
      goto LABEL_63;
    }

    v10 = 0;
    if (v5 != 1)
    {
      return v10 & 1;
    }
  }

  else
  {
    if ((v6 & 0x3000000000000000) != 0x2000000000000000)
    {
      goto LABEL_63;
    }

    v10 = 0;
    if (v5)
    {
      return v10 & 1;
    }
  }

  if (v6 == 0x2000000000000000)
  {
    goto LABEL_27;
  }

  return v10 & 1;
}

uint64_t sub_1B0BD3D38(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E53E8, &unk_1B0ECFE00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1B0BD3E9C()
{
  result = qword_1EB6E53F0;
  if (!qword_1EB6E53F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E53F0);
  }

  return result;
}

void sub_1B0BD3F38()
{
  v1 = *(v0 + 24);
  v4 = *(v1 + 56);
  v3 = v1 + 56;
  v2 = v4;
  v5 = 1 << *(*(v0 + 24) + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & v2;
  v8 = (v5 + 63) >> 6;
  v20 = *(v0 + 24);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 3;
  while (1)
  {
    v13 = v12;
    v14 = v11;
    v15 = v10;
    if (!v7)
    {
      break;
    }

    v16 = v7;
LABEL_11:
    v7 = (v16 - 1) & v16;
    if (v13 >= 4)
    {
      sub_1B04420D8(v10);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0BD1488(v10, v11, v13);
      v12 = v13;
    }

    else
    {
      v18 = (*(v20 + 48) + 24 * (__clz(__rbit64(v16)) | (v9 << 6)));
      v19 = v18[2];
      if (v19 >= 4)
      {
        v10 = *v18;
        v11 = v18[1];
        sub_1B04420D8(*v18);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B0BD1488(v15, v14, v13);
        sub_1B04420D8(v10);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B0BD1488(v10, v11, v19);
        v12 = v19;
      }

      else
      {
        v10 = 0;
        v11 = 0;
        v12 = 0;
        if (v13)
        {
          if (v19)
          {
            v10 = 0;
            v11 = 0;
            v12 = 1;
            if (v13 != 1)
            {
              if (v19 == 1)
              {
                sub_1B0BD1488(v15, v14, v13);
                v10 = 0;
                v11 = 0;
                v12 = 1;
              }

              else
              {
                v10 = 0;
                v11 = 0;
                v12 = 2;
                if (v13 != 2)
                {
                  v10 = 0;
                  v11 = 0;
                  v12 = 3;
                  if (v19 == 2)
                  {
                    sub_1B0BD1488(v15, v14, v13);
                    v10 = 0;
                    v11 = 0;
                    v12 = 2;
                  }
                }
              }
            }
          }

          else
          {
            sub_1B0BD1488(v15, v14, v13);
            v10 = 0;
            v11 = 0;
            v12 = 0;
          }
        }
      }
    }
  }

  while (1)
  {
    v17 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v17 >= v8)
    {

      return;
    }

    v16 = *(v3 + 8 * v17);
    ++v9;
    if (v16)
    {
      v9 = v17;
      goto LABEL_11;
    }
  }

  __break(1u);
}

uint64_t sub_1B0BD4184@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E53F8, &qword_1B0ECFF80);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v24 - v8;
  v10 = _s6LoggerVMa_0(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B0BD445C(a2);
  if (v3)
  {
    sub_1B044D7D0(a2, _s6LoggerVMa_0);
    return sub_1B0BD65E4(a1);
  }

  else
  {
    v14 = a1[1];
    sub_1B0C0F6E4(*a1);
    v16 = sub_1B0C0F858(v14, v15);

    v24[0] = v16;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0BD4F78(v24);

    v26 = v24[0];
    v17 = Capability.saslIR.unsafeMutableAddressor();
    v18 = v17[1];
    v19 = v17[2];
    v20 = *(v17 + 24);
    v24[0] = *v17;
    v24[1] = v18;
    v24[2] = v19;
    v25 = v20;
    MEMORY[0x1EEE9AC00](v17);
    v24[-2] = v24;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    LOBYTE(v14) = sub_1B0C32414(sub_1B0BD6614, &v24[-4], v14);
    sub_1B0BD65E4(a1);

    sub_1B041C97C(a2, v12);
    v21 = MEMORY[0x1E69E7CD0];
    *(a3 + 16) = MEMORY[0x1E69E7CD0];
    *(a3 + 24) = v21;
    v22 = *(type metadata accessor for Authenticator(0) + 32);
    v23 = type metadata accessor for AuthenticationTask(0);
    (*(*(v23 - 8) + 56))(a3 + v22, 1, 1, v23);
    *(a3 + 8) = v14 & 1;
    *a3 = v26;
    sub_1B0BD4AAC(v12, v9);
    sub_1B044D7D0(a2, _s6LoggerVMa_0);
    sub_1B044D7D0(v12, _s6LoggerVMa_0);
    return sub_1B0BD6634(v9, a3 + v22);
  }
}

void sub_1B0BD445C(uint64_t a1)
{
  v3 = _s6LoggerVMa_0(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v53 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v53 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v53 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v53 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v53 - v19;
  v21 = *(v1 + 16);
  v22 = *(v1 + 56);
  if (v22 != 1)
  {
    if (v21 >> 62 == 1)
    {
      v34 = *(v1 + 40);
      if (!v22)
      {
        v42 = *(v1 + 16);
        if (v34 == 1)
        {
          if (v42 == 772)
          {
            return;
          }
        }

        else if ((v42 - 771) < 2)
        {
          return;
        }

        goto LABEL_28;
      }

      v35 = *(v1 + 32);
      v36 = *(v1 + 16);
      if (v34 == 1)
      {
        if (v36 != 772)
        {
          goto LABEL_28;
        }
      }

      else if ((v36 - 773) < 0xFFFFFFFE)
      {
        goto LABEL_28;
      }

      if (v35 && (*(v1 + 48) == *(v1 + 24) && v22 == v35 || (sub_1B0E46A78() & 1) != 0))
      {
        return;
      }
    }

LABEL_28:
    sub_1B041C97C(a1, v8);
    sub_1B041C97C(a1, v5);
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v44 = sub_1B0E43988();
    v45 = sub_1B0E458E8();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v54 = v47;
      *v46 = 68158210;
      *(v46 + 4) = 2;
      *(v46 + 8) = 256;
      v48 = v5[*(v3 + 20)];
      sub_1B044D7D0(v5, _s6LoggerVMa_0);
      *(v46 + 10) = v48;
      *(v46 + 11) = 2082;
      v49 = *&v8[*(v3 + 20) + 4];
      sub_1B044D7D0(v8, _s6LoggerVMa_0);
      v50 = ConnectionID.debugDescription.getter(v49);
      v52 = sub_1B0399D64(v50, v51, &v54);

      *(v46 + 13) = v52;
      _os_log_impl(&dword_1B0389000, v44, v45, "[%.*hhx-%{public}s] Connection security does not fulfil requirements for sending credentials.", v46, 0x15u);
      __swift_destroy_boxed_opaque_existential_0(v47);
      MEMORY[0x1B272C230](v47, -1, -1);
      MEMORY[0x1B272C230](v46, -1, -1);
    }

    else
    {
      sub_1B044D7D0(v5, _s6LoggerVMa_0);

      sub_1B044D7D0(v8, _s6LoggerVMa_0);
    }

    sub_1B0BD675C();
    swift_allocError();
    swift_willThrow();
    return;
  }

  v23 = v21 >> 62;
  if (v23)
  {
    if (v23 == 1)
    {
      return;
    }

    sub_1B041C97C(a1, &v53 - v19);
    sub_1B041C97C(a1, v17);
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v24 = sub_1B0E43988();
    v25 = sub_1B0E45908();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v54 = v27;
      *v26 = 68158210;
      *(v26 + 4) = 2;
      *(v26 + 8) = 256;
      v28 = v17[*(v3 + 20)];
      sub_1B044D7D0(v17, _s6LoggerVMa_0);
      *(v26 + 10) = v28;
      *(v26 + 11) = 2082;
      v29 = *&v20[*(v3 + 20) + 4];
      sub_1B044D7D0(v20, _s6LoggerVMa_0);
      v30 = ConnectionID.debugDescription.getter(v29);
      v32 = sub_1B0399D64(v30, v31, &v54);

      *(v26 + 13) = v32;
      v33 = "[%.*hhx-%{public}s] Sending credentials over insecure connection.";
LABEL_13:
      _os_log_impl(&dword_1B0389000, v24, v25, v33, v26, 0x15u);
      __swift_destroy_boxed_opaque_existential_0(v27);
      MEMORY[0x1B272C230](v27, -1, -1);
      MEMORY[0x1B272C230](v26, -1, -1);

      return;
    }

    sub_1B044D7D0(v17, _s6LoggerVMa_0);

    v43 = v20;
  }

  else
  {
    sub_1B041C97C(a1, v14);
    sub_1B041C97C(a1, v11);
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v24 = sub_1B0E43988();
    v25 = sub_1B0E45908();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v54 = v27;
      *v26 = 68158210;
      *(v26 + 4) = 2;
      *(v26 + 8) = 256;
      v37 = v11[*(v3 + 20)];
      sub_1B044D7D0(v11, _s6LoggerVMa_0);
      *(v26 + 10) = v37;
      *(v26 + 11) = 2082;
      v38 = *&v14[*(v3 + 20) + 4];
      sub_1B044D7D0(v14, _s6LoggerVMa_0);
      v39 = ConnectionID.debugDescription.getter(v38);
      v41 = sub_1B0399D64(v39, v40, &v54);

      *(v26 + 13) = v41;
      v33 = "[%.*hhx-%{public}s] Sending credentials over insecure connection (opportunistic TLS).";
      goto LABEL_13;
    }

    sub_1B044D7D0(v11, _s6LoggerVMa_0);

    v43 = v14;
  }

  sub_1B044D7D0(v43, _s6LoggerVMa_0);
}

uint64_t sub_1B0BD4AAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for AuthenticationTask(0);
  v6 = *(v5 - 1);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = *v2;
  v15 = v2;
  sub_1B0BD4E3C(sub_1B0BD66A4, v9, v23);
  if ((~v25 & 0x3000000000000000) != 0 || (v27 & 0x1000000000000000) == 0)
  {
    v16 = v23[0];
    v17 = v23[1];
    v18 = v24;
    v19 = v25;
    v20 = v26;
    v21 = v27;
    v22 = v28;
    v11 = *(v2 + 8);
    sub_1B041C97C(a1, &v8[v5[5]]);
    sub_1B0C0E7D4(v8);
    sub_1B0398EFC(v23, &qword_1EB6E53D0, &unk_1B0ECFB80);
    *(v8 + 40) = xmmword_1B0ECFF60;
    *&v8[v5[7]] = 0;
    v8[v5[8]] = 2;
    v8[v5[6]] = v11;
    sub_1B0BD6580(v8, a2);
    v12 = 0;
  }

  else
  {
    v12 = 1;
  }

  return (*(v6 + 56))(a2, v12, 1, v5);
}

uint64_t sub_1B0BD4C68(__int128 *a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E53F8, &qword_1B0ECFF80);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v23[-1] - v12;
  if (a4 && (_s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0(), sub_1B04420D8(a2), v14 = sub_1B0BCE634(a2), v16 != 4))
  {
    v17 = v14;
    v18 = v15;
    v19 = v16;
  }

  else
  {
    v17 = 0;
    v18 = 0;
    v19 = 3;
  }

  sub_1B0BD6700(a1, v24);
  sub_1B0C1DC1C(v24, a1);
  sub_1B0BD2F90(v24);
  sub_1B0BD67B0(v17, v18, v19);
  sub_1B0C1D95C(v23, v17, v18, v19);
  sub_1B0BD1488(v23[0], v23[1], v23[2]);
  sub_1B0BD4AAC(a5, v13);
  sub_1B0BD1488(v17, v18, v19);
  v20 = type metadata accessor for Authenticator(0);
  return sub_1B0BD6634(v13, v6 + *(v20 + 32));
}

BOOL sub_1B0BD4DE4(_OWORD *a1, uint64_t a2)
{
  v2 = a1[3];
  v6[2] = a1[2];
  v6[3] = v2;
  v6[4] = a1[4];
  v3 = a1[1];
  v6[0] = *a1;
  v6[1] = v3;
  sub_1B0BE2F58(v6, *(a2 + 16));
  return (v4 & 1) == 0;
}

uint64_t sub_1B0BD4E3C@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v5 = *(a2 + 16);
  if (v5)
  {
    v6 = result;
    v7 = (a2 + 32);
    while (1)
    {
      v8 = v7[3];
      v23 = v7[2];
      v24 = v8;
      v25 = v7[4];
      v9 = v7[1];
      v22[0] = *v7;
      v22[1] = v9;
      v19 = v23;
      v20 = v8;
      v21 = v25;
      v17 = v22[0];
      v18 = v9;
      sub_1B0BD6700(v22, &v12);
      result = v6(&v17);
      if (v3)
      {
        v14 = v19;
        v15 = v20;
        v16 = v21;
        v12 = v17;
        v13 = v18;
        return sub_1B0BD2F90(&v12);
      }

      if (result)
      {
        break;
      }

      v14 = v19;
      v15 = v20;
      v16 = v21;
      v12 = v17;
      v13 = v18;
      result = sub_1B0BD2F90(&v12);
      v7 += 5;
      if (!--v5)
      {
        goto LABEL_6;
      }
    }

    v10 = v20;
    *(a3 + 32) = v19;
    *(a3 + 48) = v10;
    *(a3 + 64) = v21;
    v11 = v18;
    *a3 = v17;
    *(a3 + 16) = v11;
  }

  else
  {
LABEL_6:
    *(a3 + 32) = 0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    *(a3 + 40) = xmmword_1B0ECFF70;
    *(a3 + 64) = 0;
    *(a3 + 72) = 0;
    *(a3 + 56) = 0x1000000000000000;
  }

  return result;
}

uint64_t sub_1B0BD4F78(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1B0C0E050(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_1B0BD4FE4(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_1B0BD4FE4(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1B0E469A8();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v5 = sub_1B0E45278();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_1B0BD5334(v7, v8, a1, v4);
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
    return sub_1B0BD50DC(0, v2, 1, a1);
  }

  return result;
}

unint64_t sub_1B0BD50DC(unint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 80 * a3;
    v6 = result - a3;
LABEL_5:
    v7 = v6;
    v8 = v5;
    while (1)
    {
      v9 = *(v8 + 56);
      if ((v9 & 0x1000000000000000) != 0)
      {
        v21 = (*(v8 + 72) >> 59) & 6 | ((v9 & 0x2000000000000000) != 0);
        if (v21 <= 2)
        {
          if (v21)
          {
            if (v21 == 1)
            {
              v10 = 1;
              v11 = 1;
              v12 = 1;
              v13 = 1;
              v14 = 1;
              result = 2;
            }

            else
            {
              v10 = 1;
              v11 = 1;
              v12 = 1;
              v13 = 1;
              v14 = 1;
              result = 1;
            }
          }

          else
          {
            v12 = 0;
            v13 = 0;
            v14 = 0;
            v10 = 1;
            v11 = 1;
            result = 5;
          }
        }

        else if (v21 > 4)
        {
          if (v21 == 5)
          {
            v11 = 0;
            v12 = 0;
            v13 = 0;
            v14 = 0;
            v10 = 1;
            result = 6;
          }

          else
          {
            v10 = 0;
            v11 = 0;
            v12 = 0;
            v13 = 0;
            v14 = 0;
            result = 7;
          }
        }

        else if (v21 == 3)
        {
          v13 = 0;
          v10 = 1;
          v11 = 1;
          v12 = 1;
          v14 = 1;
          result = 3;
        }

        else
        {
          v12 = 0;
          v13 = 0;
          v10 = 1;
          v11 = 1;
          v14 = 1;
          result = 4;
        }
      }

      else
      {
        v10 = 0;
        v11 = 0;
        v12 = 0;
        v13 = 0;
        v14 = 0;
        result = 8;
      }

      v15 = *(v8 - 24);
      if ((v15 & 0x1000000000000000) == 0)
      {
        break;
      }

      v22 = (*(v8 - 8) >> 59) & 6 | ((v15 & 0x2000000000000000) != 0);
      if (v22 <= 2)
      {
        if (v22)
        {
          if (v22 == 1)
          {
            v16 = 2;
          }

          else
          {
            v16 = 1;
          }

LABEL_10:
          if (result >= v16)
          {
            goto LABEL_4;
          }

          goto LABEL_11;
        }

        if ((v14 & 1) == 0)
        {
          goto LABEL_4;
        }
      }

      else if (v22 > 4)
      {
        if (v22 == 5)
        {
          if ((v11 & 1) == 0)
          {
            goto LABEL_4;
          }
        }

        else if ((v10 & 1) == 0)
        {
LABEL_4:
          ++a3;
          v5 += 80;
          --v6;
          if (a3 == a2)
          {
            return result;
          }

          goto LABEL_5;
        }
      }

      else if (v22 == 3)
      {
        if ((v13 & 1) == 0)
        {
          goto LABEL_4;
        }
      }

      else if ((v12 & 1) == 0)
      {
        goto LABEL_4;
      }

LABEL_11:
      if (!v4)
      {
        __break(1u);
        return result;
      }

      v17 = (v8 - 80);
      v25 = *(v8 + 32);
      v26 = *(v8 + 48);
      v27 = *(v8 + 64);
      v23 = *v8;
      v24 = *(v8 + 16);
      v18 = *(v8 - 32);
      *(v8 + 32) = *(v8 - 48);
      *(v8 + 48) = v18;
      *(v8 + 64) = *(v8 - 16);
      v19 = *(v8 - 64);
      *v8 = *(v8 - 80);
      *(v8 + 16) = v19;
      v17[3] = v26;
      v17[4] = v27;
      v17[1] = v24;
      v17[2] = v25;
      v8 -= 80;
      *v17 = v23;
      if (__CFADD__(v7++, 1))
      {
        goto LABEL_4;
      }
    }

    v16 = 8;
    goto LABEL_10;
  }

  return result;
}

unint64_t sub_1B0BD5334(unint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = v4;
  v102 = result;
  v7 = a3[1];
  if (v7 < 1)
  {
    v9 = MEMORY[0x1E69E7CC0];
LABEL_170:
    v5 = *v102;
    if (!*v102)
    {
      goto LABEL_208;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
LABEL_172:
      v96 = *(v9 + 2);
      if (v96 >= 2)
      {
        while (*a3)
        {
          v97 = *&v9[16 * v96];
          v98 = *&v9[16 * v96 + 24];
          sub_1B0BD5CCC((*a3 + 80 * v97), (*a3 + 80 * *&v9[16 * v96 + 16]), (*a3 + 80 * v98), v5);
          if (v6)
          {
          }

          if (v98 < v97)
          {
            goto LABEL_195;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v9 = sub_1B0B9443C(v9);
          }

          if (v96 - 2 >= *(v9 + 2))
          {
            goto LABEL_196;
          }

          v99 = &v9[16 * v96];
          *v99 = v97;
          *(v99 + 1) = v98;
          result = sub_1B0B943B0(v96 - 1);
          v96 = *(v9 + 2);
          if (v96 <= 1)
          {
          }
        }

        goto LABEL_206;
      }
    }

LABEL_202:
    result = sub_1B0B9443C(v9);
    v9 = result;
    goto LABEL_172;
  }

  v8 = 0;
  v9 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v10 = v8++;
    if (v8 < v7)
    {
      v11 = *a3;
      v12 = *a3 + 80 * v8;
      v13 = *(v12 + 56);
      if ((v13 & 0x1000000000000000) != 0)
      {
        v14 = qword_1B0ED00E8[(*(v12 + 72) >> 59) & 6 | (v13 >> 61) & 1];
      }

      else
      {
        v14 = 8;
      }

      v15 = v11 + 80 * v10;
      v16 = *(v15 + 56);
      if ((v16 & 0x1000000000000000) != 0)
      {
        v17 = qword_1B0ED00E8[(*(v15 + 72) >> 59) & 6 | (v16 >> 61) & 1];
      }

      else
      {
        v17 = 8;
      }

      v8 = v10 + 2;
      if (v10 + 2 < v7)
      {
        v18 = (v11 + 80 * v10 + 232);
        while (1)
        {
          v20 = *(v18 - 2);
          if ((v20 & 0x1000000000000000) != 0)
          {
            v21 = (*v18 >> 59) & 6 | ((v20 & 0x2000000000000000) != 0);
            if (v21 <= 2)
            {
              if (v21)
              {
                v26 = v21 == 1;
                v21 = 0;
                v22 = 0;
                v23 = 0;
                v24 = 0;
                v25 = 2;
                if (!v26)
                {
                  v25 = 1;
                }

                result = 0;
                if ((v13 & 0x1000000000000000) == 0)
                {
LABEL_13:
                  v19 = 8;
                  goto LABEL_14;
                }
              }

              else
              {
                v22 = 0;
                v23 = 1;
                v24 = 1;
                result = 1;
                v25 = 5;
                if ((v13 & 0x1000000000000000) == 0)
                {
                  goto LABEL_13;
                }
              }
            }

            else if (v21 > 4)
            {
              v26 = v21 == 5;
              v22 = 1;
              v21 = v21 != 5;
              v23 = 1;
              v24 = 1;
              v25 = 6;
              if (!v26)
              {
                v25 = 7;
              }

              result = 1;
              if ((v13 & 0x1000000000000000) == 0)
              {
                goto LABEL_13;
              }
            }

            else
            {
              v26 = v21 == 3;
              v21 = 0;
              v22 = 0;
              v23 = !v26;
              v24 = 1;
              v25 = 3;
              if (!v26)
              {
                v25 = 4;
              }

              result = 0;
              if ((v13 & 0x1000000000000000) == 0)
              {
                goto LABEL_13;
              }
            }
          }

          else
          {
            v21 = 1;
            v22 = 1;
            v23 = 1;
            v24 = 1;
            result = 1;
            v25 = 8;
            if ((v13 & 0x1000000000000000) == 0)
            {
              goto LABEL_13;
            }
          }

          v27 = (*(v18 - 10) >> 59) & 6 | ((v13 & 0x2000000000000000) != 0);
          if (v27 > 2)
          {
            if (v27 > 4)
            {
              if (v27 == 5)
              {
                if ((((v14 < v17) ^ v22) & 1) == 0)
                {
                  break;
                }
              }

              else if ((((v14 < v17) ^ v21) & 1) == 0)
              {
                break;
              }
            }

            else if (v27 == 3)
            {
              if ((((v14 < v17) ^ v24) & 1) == 0)
              {
                break;
              }
            }

            else if ((((v14 < v17) ^ v23) & 1) == 0)
            {
              break;
            }

            goto LABEL_15;
          }

          if (!v27)
          {
            if ((((v14 < v17) ^ result) & 1) == 0)
            {
              break;
            }

            goto LABEL_15;
          }

          v26 = v27 == 1;
          v19 = 2;
          if (!v26)
          {
            v19 = 1;
          }

LABEL_14:
          if (v14 < v17 == v25 >= v19)
          {
            break;
          }

LABEL_15:
          ++v8;
          v18 += 10;
          v13 = v20;
          if (v7 == v8)
          {
            v8 = v7;
            break;
          }
        }
      }

      if (v14 < v17)
      {
        if (v8 < v10)
        {
          goto LABEL_199;
        }

        if (v10 < v8)
        {
          v28 = 80 * v8 - 80;
          v29 = 80 * v10;
          v5 = v8;
          v100 = v10;
          do
          {
            if (v10 != --v5)
            {
              v31 = *a3;
              if (!*a3)
              {
                goto LABEL_205;
              }

              v30 = (v31 + v28);
              v108 = *(v31 + v29 + 32);
              v110 = *(v31 + v29 + 48);
              v112 = *(v31 + v29 + 64);
              v104 = *(v31 + v29);
              v106 = *(v31 + v29 + 16);
              result = memmove((v31 + v29), (v31 + v28), 0x50uLL);
              v30[2] = v108;
              v30[3] = v110;
              v30[4] = v112;
              *v30 = v104;
              v30[1] = v106;
            }

            ++v10;
            v28 -= 80;
            v29 += 80;
          }

          while (v10 < v5);
          v7 = a3[1];
          v10 = v100;
        }
      }
    }

    if (v8 >= v7)
    {
      goto LABEL_119;
    }

    if (__OFSUB__(v8, v10))
    {
      goto LABEL_198;
    }

    if (v8 - v10 >= a4)
    {
      goto LABEL_119;
    }

    if (__OFADD__(v10, a4))
    {
      goto LABEL_200;
    }

    if (v10 + a4 < v7)
    {
      v7 = v10 + a4;
    }

    if (v7 < v10)
    {
LABEL_201:
      __break(1u);
      goto LABEL_202;
    }

    if (v8 == v7)
    {
      goto LABEL_119;
    }

    v32 = *a3;
    v33 = *a3 + 80 * v8;
    v34 = v10 - v8;
LABEL_77:
    v35 = v34;
    v36 = v33;
LABEL_78:
    v37 = *(v36 + 56);
    if ((v37 & 0x1000000000000000) != 0)
    {
      v49 = (*(v36 + 72) >> 59) & 6 | ((v37 & 0x2000000000000000) != 0);
      if (v49 <= 2)
      {
        if (v49)
        {
          if (v49 == 1)
          {
            v38 = 1;
            v39 = 1;
            v40 = 1;
            v41 = 1;
            v42 = 1;
            result = 2;
          }

          else
          {
            v38 = 1;
            v39 = 1;
            v40 = 1;
            v41 = 1;
            v42 = 1;
            result = 1;
          }
        }

        else
        {
          v40 = 0;
          v41 = 0;
          v42 = 0;
          v38 = 1;
          v39 = 1;
          result = 5;
        }
      }

      else if (v49 > 4)
      {
        if (v49 == 5)
        {
          v39 = 0;
          v40 = 0;
          v41 = 0;
          v42 = 0;
          v38 = 1;
          result = 6;
        }

        else
        {
          v38 = 0;
          v39 = 0;
          v40 = 0;
          v41 = 0;
          v42 = 0;
          result = 7;
        }
      }

      else if (v49 == 3)
      {
        v41 = 0;
        v38 = 1;
        v39 = 1;
        v40 = 1;
        v42 = 1;
        result = 3;
      }

      else
      {
        v40 = 0;
        v41 = 0;
        v38 = 1;
        v39 = 1;
        v42 = 1;
        result = 4;
      }
    }

    else
    {
      v38 = 0;
      v39 = 0;
      v40 = 0;
      v41 = 0;
      v42 = 0;
      result = 8;
    }

    v43 = *(v36 - 24);
    if ((v43 & 0x1000000000000000) == 0)
    {
      v44 = 8;
      goto LABEL_82;
    }

    v50 = (*(v36 - 8) >> 59) & 6 | ((v43 & 0x2000000000000000) != 0);
    if (v50 <= 2)
    {
      break;
    }

    if (v50 <= 4)
    {
      if (v50 == 3)
      {
        if ((v41 & 1) == 0)
        {
          goto LABEL_76;
        }
      }

      else if ((v40 & 1) == 0)
      {
        goto LABEL_76;
      }

      goto LABEL_83;
    }

    if (v50 == 5)
    {
      if ((v39 & 1) == 0)
      {
        goto LABEL_76;
      }

      goto LABEL_83;
    }

    if (v38)
    {
      goto LABEL_83;
    }

LABEL_76:
    ++v8;
    v33 += 80;
    --v34;
    if (v8 != v7)
    {
      goto LABEL_77;
    }

    v8 = v7;
LABEL_119:
    if (v8 < v10)
    {
      goto LABEL_197;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1B0AFF300(0, *(v9 + 2) + 1, 1, v9);
      v9 = result;
    }

    v5 = *(v9 + 2);
    v51 = *(v9 + 3);
    v52 = v5 + 1;
    if (v5 >= v51 >> 1)
    {
      result = sub_1B0AFF300((v51 > 1), v5 + 1, 1, v9);
      v9 = result;
    }

    *(v9 + 2) = v52;
    v53 = &v9[16 * v5];
    *(v53 + 4) = v10;
    *(v53 + 5) = v8;
    v54 = *v102;
    if (!*v102)
    {
      goto LABEL_207;
    }

    if (v5)
    {
      while (2)
      {
        v55 = v52 - 1;
        if (v52 >= 4)
        {
          v60 = &v9[16 * v52 + 32];
          v61 = *(v60 - 64);
          v62 = *(v60 - 56);
          v66 = __OFSUB__(v62, v61);
          v63 = v62 - v61;
          if (v66)
          {
            goto LABEL_184;
          }

          v65 = *(v60 - 48);
          v64 = *(v60 - 40);
          v66 = __OFSUB__(v64, v65);
          v58 = v64 - v65;
          v59 = v66;
          if (v66)
          {
            goto LABEL_185;
          }

          v67 = &v9[16 * v52];
          v69 = *v67;
          v68 = *(v67 + 1);
          v66 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v66)
          {
            goto LABEL_187;
          }

          v66 = __OFADD__(v58, v70);
          v71 = v58 + v70;
          if (v66)
          {
            goto LABEL_190;
          }

          if (v71 >= v63)
          {
            v89 = &v9[16 * v55 + 32];
            v91 = *v89;
            v90 = *(v89 + 1);
            v66 = __OFSUB__(v90, v91);
            v92 = v90 - v91;
            if (v66)
            {
              goto LABEL_194;
            }

            if (v58 < v92)
            {
              v55 = v52 - 2;
            }
          }

          else
          {
LABEL_139:
            if (v59)
            {
              goto LABEL_186;
            }

            v72 = &v9[16 * v52];
            v74 = *v72;
            v73 = *(v72 + 1);
            v75 = __OFSUB__(v73, v74);
            v76 = v73 - v74;
            v77 = v75;
            if (v75)
            {
              goto LABEL_189;
            }

            v78 = &v9[16 * v55 + 32];
            v80 = *v78;
            v79 = *(v78 + 1);
            v66 = __OFSUB__(v79, v80);
            v81 = v79 - v80;
            if (v66)
            {
              goto LABEL_192;
            }

            if (__OFADD__(v76, v81))
            {
              goto LABEL_193;
            }

            if (v76 + v81 < v58)
            {
              goto LABEL_153;
            }

            if (v58 < v81)
            {
              v55 = v52 - 2;
            }
          }
        }

        else
        {
          if (v52 == 3)
          {
            v56 = *(v9 + 4);
            v57 = *(v9 + 5);
            v66 = __OFSUB__(v57, v56);
            v58 = v57 - v56;
            v59 = v66;
            goto LABEL_139;
          }

          v82 = &v9[16 * v52];
          v84 = *v82;
          v83 = *(v82 + 1);
          v66 = __OFSUB__(v83, v84);
          v76 = v83 - v84;
          v77 = v66;
LABEL_153:
          if (v77)
          {
            goto LABEL_188;
          }

          v85 = &v9[16 * v55];
          v87 = *(v85 + 4);
          v86 = *(v85 + 5);
          v66 = __OFSUB__(v86, v87);
          v88 = v86 - v87;
          if (v66)
          {
            goto LABEL_191;
          }

          if (v88 < v76)
          {
            break;
          }
        }

        v5 = v55 - 1;
        if (v55 - 1 >= v52)
        {
          __break(1u);
LABEL_182:
          __break(1u);
LABEL_183:
          __break(1u);
LABEL_184:
          __break(1u);
LABEL_185:
          __break(1u);
LABEL_186:
          __break(1u);
LABEL_187:
          __break(1u);
LABEL_188:
          __break(1u);
LABEL_189:
          __break(1u);
LABEL_190:
          __break(1u);
LABEL_191:
          __break(1u);
LABEL_192:
          __break(1u);
LABEL_193:
          __break(1u);
LABEL_194:
          __break(1u);
LABEL_195:
          __break(1u);
LABEL_196:
          __break(1u);
LABEL_197:
          __break(1u);
LABEL_198:
          __break(1u);
LABEL_199:
          __break(1u);
LABEL_200:
          __break(1u);
          goto LABEL_201;
        }

        if (!*a3)
        {
          goto LABEL_204;
        }

        v93 = *&v9[16 * v5 + 32];
        v94 = *&v9[16 * v55 + 40];
        sub_1B0BD5CCC((*a3 + 80 * v93), (*a3 + 80 * *&v9[16 * v55 + 32]), (*a3 + 80 * v94), v54);
        if (v6)
        {
        }

        if (v94 < v93)
        {
          goto LABEL_182;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_1B0B9443C(v9);
        }

        if (v5 >= *(v9 + 2))
        {
          goto LABEL_183;
        }

        v95 = &v9[16 * v5];
        *(v95 + 4) = v93;
        *(v95 + 5) = v94;
        result = sub_1B0B943B0(v55);
        v52 = *(v9 + 2);
        if (v52 <= 1)
        {
          break;
        }

        continue;
      }
    }

    v7 = a3[1];
    if (v8 >= v7)
    {
      goto LABEL_170;
    }
  }

  if (v50)
  {
    if (v50 == 1)
    {
      v44 = 2;
    }

    else
    {
      v44 = 1;
    }

LABEL_82:
    if (result >= v44)
    {
      goto LABEL_76;
    }

    goto LABEL_83;
  }

  if ((v42 & 1) == 0)
  {
    goto LABEL_76;
  }

LABEL_83:
  if (v32)
  {
    v45 = (v36 - 80);
    v109 = *(v36 + 32);
    v111 = *(v36 + 48);
    v113 = *(v36 + 64);
    v105 = *v36;
    v107 = *(v36 + 16);
    v46 = *(v36 - 32);
    *(v36 + 32) = *(v36 - 48);
    *(v36 + 48) = v46;
    *(v36 + 64) = *(v36 - 16);
    v47 = *(v36 - 64);
    *v36 = *(v36 - 80);
    *(v36 + 16) = v47;
    v45[3] = v111;
    v45[4] = v113;
    v45[1] = v107;
    v45[2] = v109;
    v36 -= 80;
    *v45 = v105;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_76;
    }

    goto LABEL_78;
  }

  __break(1u);
LABEL_204:
  __break(1u);
LABEL_205:
  __break(1u);
LABEL_206:
  __break(1u);
LABEL_207:
  __break(1u);
LABEL_208:
  __break(1u);
  return result;
}

uint64_t sub_1B0BD5CCC(char *__dst, char *a2, char *a3, char *__src)
{
  v4 = __src;
  v5 = a3;
  v6 = a2;
  v7 = __dst;
  v8 = a2 - __dst;
  v9 = (a2 - __dst) / 80;
  v10 = a3 - a2;
  v11 = (a3 - a2) / 80;
  if (v9 < v11)
  {
    if (__src != __dst || &__dst[80 * v9] <= __src)
    {
      memmove(__src, __dst, 80 * v9);
    }

    v12 = &v4[80 * v9];
    if (v8 < 80 || v6 >= v5)
    {
      v6 = v7;
      goto LABEL_127;
    }

    while (1)
    {
      v13 = *(v6 + 7);
      if ((v13 & 0x1000000000000000) != 0)
      {
        v23 = (*(v6 + 9) >> 59) & 6 | ((v13 & 0x2000000000000000) != 0);
        if (v23 <= 2)
        {
          v18 = 1;
          if (v23 == 1)
          {
            v27 = 2;
          }

          else
          {
            v27 = 1;
          }

          v14 = 1;
          v15 = 1;
          v16 = v23 != 0;
          v17 = v23 != 0;
          if (!v23)
          {
            v18 = 0;
          }

          v22 = v23 == 0;
          v19 = 5;
          if (!v22)
          {
            v19 = v27;
          }

          v20 = *(v4 + 7);
          if ((v20 & 0x1000000000000000) == 0)
          {
LABEL_9:
            if (v19 >= 8)
            {
              goto LABEL_48;
            }

            goto LABEL_10;
          }
        }

        else
        {
          v14 = v23 == 5;
          if (v23 == 5)
          {
            v24 = 6;
          }

          else
          {
            v24 = 7;
          }

          v16 = v23 == 3;
          if (v23 == 3)
          {
            v25 = 3;
          }

          else
          {
            v25 = 4;
          }

          if (v23 > 4)
          {
            v15 = 0;
          }

          else
          {
            v14 = 1;
            v15 = 1;
          }

          if (v23 > 4)
          {
            v16 = 0;
          }

          v17 = 0;
          v18 = v23 <= 4;
          if (v23 <= 4)
          {
            v19 = v25;
          }

          else
          {
            v19 = v24;
          }

          v20 = *(v4 + 7);
          if ((v20 & 0x1000000000000000) == 0)
          {
            goto LABEL_9;
          }
        }
      }

      else
      {
        v14 = 0;
        v15 = 0;
        v16 = 0;
        v17 = 0;
        v18 = 0;
        v19 = 8;
        v20 = *(v4 + 7);
        if ((v20 & 0x1000000000000000) == 0)
        {
          goto LABEL_9;
        }
      }

      v26 = (*(v4 + 9) >> 59) & 6 | ((v20 & 0x2000000000000000) != 0);
      if (v26 <= 2)
      {
        if (v26)
        {
          if (v26 == 1)
          {
            v28 = 2;
          }

          else
          {
            v28 = 1;
          }

          if (v19 >= v28)
          {
LABEL_48:
            v21 = v4;
            v22 = v7 == v4;
            v4 += 80;
            if (v22)
            {
              goto LABEL_50;
            }

LABEL_49:
            memmove(v7, v21, 0x50uLL);
            goto LABEL_50;
          }
        }

        else if (!v18)
        {
          goto LABEL_48;
        }
      }

      else if (v26 > 4)
      {
        if (v26 == 5)
        {
          if ((v15 & 1) == 0)
          {
            goto LABEL_48;
          }
        }

        else if (!v14)
        {
          goto LABEL_48;
        }
      }

      else if (v26 == 3)
      {
        if (!v17)
        {
          goto LABEL_48;
        }
      }

      else if (!v16)
      {
        goto LABEL_48;
      }

LABEL_10:
      v21 = v6;
      v22 = v7 == v6;
      v6 += 80;
      if (!v22)
      {
        goto LABEL_49;
      }

LABEL_50:
      v7 += 80;
      if (v4 >= v12 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_127;
      }
    }
  }

  if (__src != a2 || &a2[80 * v11] <= __src)
  {
    memmove(__src, a2, 80 * v11);
  }

  v12 = &v4[80 * v11];
  if (v10 >= 80 && v6 > v7)
  {
LABEL_67:
    v5 -= 80;
    while (1)
    {
      v29 = *(v12 - 3);
      if ((v29 & 0x1000000000000000) != 0)
      {
        v37 = (*(v12 - 1) >> 59) & 6 | ((v29 & 0x2000000000000000) != 0);
        if (v37 <= 2)
        {
          v34 = 1;
          if (v37 == 1)
          {
            v41 = 2;
          }

          else
          {
            v41 = 1;
          }

          v30 = 1;
          v31 = 1;
          v32 = v37 != 0;
          v33 = v37 != 0;
          if (!v37)
          {
            v34 = 0;
          }

          v22 = v37 == 0;
          v35 = 5;
          if (!v22)
          {
            v35 = v41;
          }

          v36 = *(v6 - 3);
          if ((v36 & 0x1000000000000000) == 0)
          {
LABEL_71:
            if (v35 < 8)
            {
              goto LABEL_119;
            }

            goto LABEL_117;
          }
        }

        else
        {
          v30 = v37 == 5;
          if (v37 == 5)
          {
            v38 = 6;
          }

          else
          {
            v38 = 7;
          }

          v32 = v37 == 3;
          if (v37 == 3)
          {
            v39 = 3;
          }

          else
          {
            v39 = 4;
          }

          if (v37 > 4)
          {
            v31 = 0;
          }

          else
          {
            v30 = 1;
            v31 = 1;
          }

          if (v37 > 4)
          {
            v32 = 0;
          }

          v33 = 0;
          v34 = v37 <= 4;
          if (v37 <= 4)
          {
            v35 = v39;
          }

          else
          {
            v35 = v38;
          }

          v36 = *(v6 - 3);
          if ((v36 & 0x1000000000000000) == 0)
          {
            goto LABEL_71;
          }
        }
      }

      else
      {
        v30 = 0;
        v31 = 0;
        v32 = 0;
        v33 = 0;
        v34 = 0;
        v35 = 8;
        v36 = *(v6 - 3);
        if ((v36 & 0x1000000000000000) == 0)
        {
          goto LABEL_71;
        }
      }

      v40 = (*(v6 - 1) >> 59) & 6 | ((v36 & 0x2000000000000000) != 0);
      if (v40 <= 2)
      {
        if (v40)
        {
          if (v40 == 1)
          {
            v42 = 2;
          }

          else
          {
            v42 = 1;
          }

          if (v35 < v42)
          {
LABEL_119:
            v44 = v6 - 80;
            if (v5 + 80 != v6)
            {
              memmove(v5, v6 - 80, 0x50uLL);
            }

            if (v12 <= v4 || (v6 -= 80, v44 <= v7))
            {
              v6 = v44;
              break;
            }

            goto LABEL_67;
          }
        }

        else if (v34)
        {
          goto LABEL_119;
        }
      }

      else if (v40 > 4)
      {
        if (v40 == 5)
        {
          if (v31)
          {
            goto LABEL_119;
          }
        }

        else if (v30)
        {
          goto LABEL_119;
        }
      }

      else if (v40 == 3)
      {
        if (v33)
        {
          goto LABEL_119;
        }
      }

      else if (v32)
      {
        goto LABEL_119;
      }

LABEL_117:
      v43 = (v12 - 80);
      if (v5 + 80 != v12)
      {
        memmove(v5, v12 - 80, 0x50uLL);
      }

      v5 -= 80;
      v12 -= 80;
      if (v43 <= v4)
      {
        v12 = v43;
        break;
      }
    }
  }

LABEL_127:
  v45 = (v12 - v4) / 80;
  if (v6 != v4 || v6 >= &v4[80 * v45])
  {
    memmove(v6, v4, 80 * v45);
  }

  return 1;
}

BOOL sub_1B0BD61C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AuthenticationTask(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E53F8, &qword_1B0ECFF80);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = (&v24 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5400, &unk_1B0ECFFC0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v24 - v12;
  if ((sub_1B0BF7F80(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  sub_1B0BE5804(*(a1 + 16), *(a2 + 16));
  if ((v14 & 1) == 0 || (sub_1B0BE7524(*(a1 + 24), *(a2 + 24)) & 1) == 0)
  {
    return 0;
  }

  v15 = *(type metadata accessor for Authenticator(0) + 32);
  v16 = *(v11 + 48);
  sub_1B0BD6510(a1 + v15, v13);
  sub_1B0BD6510(a2 + v15, &v13[v16]);
  v17 = *(v5 + 48);
  if (v17(v13, 1, v4) == 1)
  {
    if (v17(&v13[v16], 1, v4) == 1)
    {
      sub_1B0398EFC(v13, &qword_1EB6E53F8, &qword_1B0ECFF80);
      return 1;
    }

    goto LABEL_10;
  }

  sub_1B0BD6510(v13, v10);
  if (v17(&v13[v16], 1, v4) == 1)
  {
    sub_1B044D7D0(v10, type metadata accessor for AuthenticationTask);
LABEL_10:
    v19 = &qword_1EB6E5400;
    v20 = &unk_1B0ECFFC0;
LABEL_11:
    sub_1B0398EFC(v13, v19, v20);
    return 0;
  }

  sub_1B0BD6580(&v13[v16], v7);
  if ((sub_1B0BD35D4(v10, v7) & 1) == 0)
  {
    sub_1B044D7D0(v7, type metadata accessor for AuthenticationTask);
    sub_1B044D7D0(v10, type metadata accessor for AuthenticationTask);
    v19 = &qword_1EB6E53F8;
    v20 = &qword_1B0ECFF80;
    goto LABEL_11;
  }

  v21 = *(v4 + 24);
  v22 = *(v10 + v21);
  v23 = *(v7 + v21);
  sub_1B044D7D0(v7, type metadata accessor for AuthenticationTask);
  sub_1B044D7D0(v10, type metadata accessor for AuthenticationTask);
  sub_1B0398EFC(v13, &qword_1EB6E53F8, &qword_1B0ECFF80);
  return v22 == v23;
}

uint64_t sub_1B0BD6510(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E53F8, &qword_1B0ECFF80);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B0BD6580(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AuthenticationTask(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B0BD6634(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E53F8, &qword_1B0ECFF80);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

BOOL sub_1B0BD66A4(_OWORD *a1)
{
  v2 = *(v1 + 16);
  v3 = a1[3];
  v7[2] = a1[2];
  v7[3] = v3;
  v7[4] = a1[4];
  v4 = a1[1];
  v7[0] = *a1;
  v7[1] = v4;
  sub_1B0BE2F58(v7, *(v2 + 16));
  return (v5 & 1) == 0;
}

unint64_t sub_1B0BD675C()
{
  result = qword_1EB6E5408;
  if (!qword_1EB6E5408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E5408);
  }

  return result;
}

double sub_1B0BD67B0(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 >= 4)
  {
    sub_1B04420D8(a1);

    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  }

  return result;
}

uint64_t sub_1B0BD6804(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_1B0BD684C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1B0BD68AC()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v15 - v3;
  v5 = type metadata accessor for ClientCommand(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B0BD6A44(v1, v7);
  if (swift_getEnumCaseMultiPayload() == 15)
  {
    v8 = *(v7 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3FE0, &unk_1B0EC26C0) + 48));
    sub_1B074BA2C(v7, v4);
    v9 = MessageIdentifierSet.count.getter();
    v7 = sub_1B0BD6AA8(v8);

    result = sub_1B03D09B8(v4);
    v11 = v9 * v7;
    if ((v9 * v7) >> 64 == (v9 * v7) >> 63)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  result = sub_1B0BB439C(v7);
  v11 = 0;
LABEL_5:
  v12 = __OFADD__(v11, 5);
  v13 = v11 + 5;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    v14 = ((v13 - 1) * 0x6666666666666667) >> 64;
    return (v14 >> 1) + (v14 >> 63);
  }

  return result;
}

uint64_t sub_1B0BD6A44(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ClientCommand(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B0BD6AA8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = 0;
  v5 = a1 + 64;
  while (2)
  {
    v6 = (v5 + 40 * v4);
    for (i = v4; ; ++i)
    {
      if (i >= v1)
      {
        __break(1u);
LABEL_38:
        __break(1u);
        goto LABEL_39;
      }

      v4 = i + 1;
      if (__OFADD__(i, 1))
      {
        goto LABEL_38;
      }

      v8 = *(v6 - 2);
      v9 = *(v6 - 1);
      v10 = *v6 | (*(v6 + 4) << 32);
      v11 = v10 >> 37;
      if (v10 >> 37 != 6)
      {
        break;
      }

      v12 = *(v6 - 4);
      v13 = v8 | *(v6 - 3) | v9;
      if (v10 == 0xC000000000 && v12 == 3 && v13 == 0)
      {
        goto LABEL_29;
      }

      v16 = v10 == 0xC000000000 && v12 == 6;
      if (v16 && v13 == 0)
      {
        goto LABEL_29;
      }

LABEL_4:
      v6 += 10;
      if (v4 == v1)
      {
        return result;
      }
    }

    if (v11 != 1)
    {
      if (v11 == 3)
      {
        goto LABEL_29;
      }

      goto LABEL_4;
    }

    if ((v9 & 0xFE) != 0 && (v8 - 1) >= 2)
    {
LABEL_29:
      v18 = __OFADD__(result, 5);
      result += 5;
      if (!v18)
      {
        goto LABEL_30;
      }

LABEL_39:
      __break(1u);
      return result;
    }

    v18 = __OFADD__(result++, 1);
    if (v18)
    {
      __break(1u);
      return result;
    }

LABEL_30:
    if (v4 != v1)
    {
      continue;
    }

    return result;
  }
}

double sub_1B0BD6BB8@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 64) = 5;
  return result;
}

double sub_1B0BD6BD0@<D0>(char a1@<W3>, uint64_t a2@<X8>)
{
  if (a1)
  {
    *&v10 = 0;
    v9 = 7uLL;
    BYTE8(v10) = -64;
    sub_1B0BD6CF8(&v9);
    v29 = v17;
    v30 = v18;
    v31 = v19;
    v32 = v20;
    v25 = v13;
    v26 = v14;
    v27 = v15;
    v28 = v16;
    v21 = v9;
    v22 = v10;
    v23 = v11;
    v24 = v12;
    __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
    v41 = v29;
    v42 = v30;
    v43 = v31;
    v44 = v32;
    v37 = v25;
    v38 = v26;
    v39 = v27;
    v40 = v28;
    v33 = v21;
    v34 = v22;
    v35 = v23;
    v36 = v24;
  }

  else
  {
    sub_1B04FAEB0(&v33);
  }

  v3 = v42;
  *(a2 + 128) = v41;
  *(a2 + 144) = v3;
  *(a2 + 160) = v43;
  *(a2 + 176) = v44;
  v4 = v38;
  *(a2 + 64) = v37;
  *(a2 + 80) = v4;
  v5 = v40;
  *(a2 + 96) = v39;
  *(a2 + 112) = v5;
  v6 = v34;
  *a2 = v33;
  *(a2 + 16) = v6;
  result = *&v35;
  v8 = v36;
  *(a2 + 32) = v35;
  *(a2 + 48) = v8;
  return result;
}

uint64_t sub_1B0BD6D08(uint64_t a1)
{
  result = sub_1B0E43BC8();
  if (v2 <= 0x3F)
  {
    result = _s6LoggerVMa_0(319);
    if (v3 <= 0x3F)
    {
      result = swift_checkMetadataState();
      if (v4 <= 0x3F)
      {
        return swift_initClassMetadata2();
      }
    }
  }

  return result;
}

uint64_t sub_1B0BD6E20()
{
  v0 = sub_1B0E459C8();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1B0E45988();
  MEMORY[0x1EEE9AC00](v4);
  v5 = sub_1B0E44288();
  MEMORY[0x1EEE9AC00](v5 - 8);
  sub_1B0BD84D8(0, &qword_1EB6DEED0, 0x1E69E9610);
  sub_1B0E44258();
  v7[1] = MEMORY[0x1E69E7CC0];
  sub_1B06D6240();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1888, &unk_1B0EEDC60);
  sub_1B06D62C0();
  sub_1B0E460A8();
  (*(v1 + 104))(v3, *MEMORY[0x1E69E8090], v0);
  result = sub_1B0E45A08();
  qword_1EB6DCDB8 = result;
  return result;
}

uint64_t *sub_1B0BD7038()
{
  v1 = *v0;
  v2 = qword_1EB737B78;
  v3 = sub_1B0E43BC8();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  sub_1B041C9E0(v0 + qword_1EB737B88);
  (*(*(*(v1 + 88) - 8) + 8))(v0 + *(*v0 + 136));
  return v0;
}

uint64_t sub_1B0BD711C()
{
  sub_1B0BD7038();

  return swift_deallocClassInstance();
}

void sub_1B0BD718C()
{
  type metadata accessor for CertUITrustManager();
  swift_allocObject();
  CertUITrustManager.init()();
  qword_1EB6DCDE0 = v0;
}

uint64_t sub_1B0BD71CC(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v66[1] = a6;
  v67 = a5;
  v9 = _s6LoggerVMa_0(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v66 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = v66 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = v66 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = v66 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v26 = v66 - v25;
  if (a1)
  {
    if (a1 == 1)
    {
      sub_1B041C97C(a2, v20);
      sub_1B041C97C(a2, v17);
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      v27 = sub_1B0E43988();
      v28 = sub_1B0E458E8();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        v68 = v30;
        *v29 = 68158210;
        *(v29 + 4) = 2;
        *(v29 + 8) = 256;
        v31 = v17[*(v9 + 20)];
        sub_1B041C9E0(v17);
        *(v29 + 10) = v31;
        *(v29 + 11) = 2082;
        v32 = *&v20[*(v9 + 20) + 4];
        sub_1B041C9E0(v20);
        v33 = ConnectionID.debugDescription.getter(v32);
        v35 = sub_1B0399D64(v33, v34, &v68);

        *(v29 + 13) = v35;
        _os_log_impl(&dword_1B0389000, v27, v28, "[%.*hhx-%{public}s] [Prompt] User allowed untrusted certificate(s) for session.", v29, 0x15u);
        __swift_destroy_boxed_opaque_existential_0(v30);
        MEMORY[0x1B272C230](v30, -1, -1);
        MEMORY[0x1B272C230](v29, -1, -1);
      }

      else
      {
        sub_1B041C9E0(v17);

        sub_1B041C9E0(v20);
      }
    }

    else
    {
      sub_1B041C97C(a2, v14);
      sub_1B041C97C(a2, v11);
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      v45 = sub_1B0E43988();
      v46 = sub_1B0E458E8();
      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        v48 = swift_slowAlloc();
        v68 = v48;
        *v47 = 68158210;
        *(v47 + 4) = 2;
        *(v47 + 8) = 256;
        v49 = v11[*(v9 + 20)];
        sub_1B041C9E0(v11);
        *(v47 + 10) = v49;
        *(v47 + 11) = 2082;
        v50 = *&v14[*(v9 + 20) + 4];
        sub_1B041C9E0(v14);
        v51 = ConnectionID.debugDescription.getter(v50);
        v53 = sub_1B0399D64(v51, v52, &v68);

        *(v47 + 13) = v53;
        _os_log_impl(&dword_1B0389000, v45, v46, "[%.*hhx-%{public}s] [Prompt] User allowed untrusted certificate(s) permanently.", v47, 0x15u);
        __swift_destroy_boxed_opaque_existential_0(v48);
        MEMORY[0x1B272C230](v48, -1, -1);
        MEMORY[0x1B272C230](v47, -1, -1);
      }

      else
      {
        sub_1B041C9E0(v11);

        sub_1B041C9E0(v14);
      }

      v60 = *(a3 + 16);
      v61 = objc_allocWithZone(MEMORY[0x1E696AD98]);
      v62 = v60;
      v63 = [v61 initWithBool_];
      v64 = sub_1B0E44AC8();
      [v62 setAccountProperty:v63 forKey:v64];
    }

    v59 = 1;
  }

  else
  {
    sub_1B041C97C(a2, v66 - v25);
    sub_1B041C97C(a2, v23);
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v36 = sub_1B0E43988();
    v37 = sub_1B0E458E8();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v68 = v39;
      *v38 = 68158210;
      *(v38 + 4) = 2;
      *(v38 + 8) = 256;
      v40 = v23[*(v9 + 20)];
      sub_1B041C9E0(v23);
      *(v38 + 10) = v40;
      *(v38 + 11) = 2082;
      v41 = *&v26[*(v9 + 20) + 4];
      sub_1B041C9E0(v26);
      v42 = ConnectionID.debugDescription.getter(v41);
      v44 = sub_1B0399D64(v42, v43, &v68);

      *(v38 + 13) = v44;
      _os_log_impl(&dword_1B0389000, v36, v37, "[%.*hhx-%{public}s] [Prompt] User denied untrusted certificate(s).", v38, 0x15u);
      __swift_destroy_boxed_opaque_existential_0(v39);
      MEMORY[0x1B272C230](v39, -1, -1);
      MEMORY[0x1B272C230](v38, -1, -1);
    }

    else
    {
      sub_1B041C9E0(v23);

      sub_1B041C9E0(v26);
    }

    v54 = *(a3 + 16);
    v55 = objc_allocWithZone(MEMORY[0x1E696AD98]);
    v56 = v54;
    v57 = [v55 initWithBool_];
    v58 = sub_1B0E44AC8();
    [v56 setAccountProperty:v57 forKey:v58];

    v59 = 0;
  }

  return v67(v59);
}

uint64_t sub_1B0BD77E4()
{
  v1 = _s6LoggerVMa_0(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = aBlock - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([*(v0 + 16) isDirty])
  {
    v5 = *(v0 + 16);
    v6 = *(v0 + 24);
    sub_1B041C97C(v0 + OBJC_IVAR____TtCVE15IMAP2ConnectionO16IMAP2Persistence16CertificateTrust29DefaultVerifierImplementationP33_F342119D05A6F1A070C6FAB1999158A515AccountAndStore_logger, aBlock - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
    v7 = (*(v2 + 80) + 16) & ~*(v2 + 80);
    v8 = swift_allocObject();
    sub_1B041ECBC(v4, v8 + v7);
    aBlock[4] = sub_1B0BD7F5C;
    aBlock[5] = v8;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1B0BD7D9C;
    aBlock[3] = &block_descriptor_24;
    v9 = _Block_copy(aBlock);
    v10 = v6;
    v11 = v5;

    [v10 saveVerifiedAccount:v11 withCompletionHandler:v9];
    _Block_release(v9);
  }

  sub_1B041C9E0(v0 + OBJC_IVAR____TtCVE15IMAP2ConnectionO16IMAP2Persistence16CertificateTrust29DefaultVerifierImplementationP33_F342119D05A6F1A070C6FAB1999158A515AccountAndStore_logger);
  return v0;
}

void sub_1B0BD79B4(char a1, void *a2, uint64_t a3)
{
  v6 = _s6LoggerVMa_0(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v41 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v41 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v41 - v16;
  if ((a1 & 1) == 0)
  {
    if (a2)
    {
      sub_1B041C97C(a3, &v41 - v16);
      sub_1B041C97C(a3, v14);
      v18 = a2;
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      v19 = a2;
      v20 = sub_1B0E43988();
      v21 = sub_1B0E458E8();

      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v42 = v24;
        *v22 = 68158466;
        *(v22 + 4) = 2;
        *(v22 + 8) = 256;
        v25 = v14[*(v6 + 20)];
        sub_1B041C9E0(v14);
        *(v22 + 10) = v25;
        *(v22 + 11) = 2082;
        v26 = *&v17[*(v6 + 20) + 4];
        sub_1B041C9E0(v17);
        v27 = ConnectionID.debugDescription.getter(v26);
        v29 = sub_1B0399D64(v27, v28, &v42);

        *(v22 + 13) = v29;
        *(v22 + 21) = 2112;
        v30 = sub_1B0E42CC8();
        *(v22 + 23) = v30;
        *v23 = v30;
        _os_log_impl(&dword_1B0389000, v20, v21, "[%.*hhx-%{public}s] Failed to save account: %@", v22, 0x1Fu);
        sub_1B0BD096C(v23);
        MEMORY[0x1B272C230](v23, -1, -1);
        __swift_destroy_boxed_opaque_existential_0(v24);
        MEMORY[0x1B272C230](v24, -1, -1);
        MEMORY[0x1B272C230](v22, -1, -1);

        return;
      }

      sub_1B041C9E0(v14);

      v40 = v17;
    }

    else
    {
      sub_1B041C97C(a3, v11);
      sub_1B041C97C(a3, v8);
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      v31 = sub_1B0E43988();
      v32 = sub_1B0E458E8();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        v42 = v34;
        *v33 = 68158210;
        *(v33 + 4) = 2;
        *(v33 + 8) = 256;
        v35 = v8[*(v6 + 20)];
        sub_1B041C9E0(v8);
        *(v33 + 10) = v35;
        *(v33 + 11) = 2082;
        v36 = *&v11[*(v6 + 20) + 4];
        sub_1B041C9E0(v11);
        v37 = ConnectionID.debugDescription.getter(v36);
        v39 = sub_1B0399D64(v37, v38, &v42);

        *(v33 + 13) = v39;
        _os_log_impl(&dword_1B0389000, v31, v32, "[%.*hhx-%{public}s] Failed to save account.", v33, 0x15u);
        __swift_destroy_boxed_opaque_existential_0(v34);
        MEMORY[0x1B272C230](v34, -1, -1);
        MEMORY[0x1B272C230](v33, -1, -1);

        return;
      }

      sub_1B041C9E0(v8);

      v40 = v11;
    }

    sub_1B041C9E0(v40);
  }
}

void sub_1B0BD7D9C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_1B0BD7E14()
{
  sub_1B0BD77E4();

  return swift_deallocClassInstance();
}

uint64_t _s29DefaultVerifierImplementationV15AccountAndStoreCMa(uint64_t a1)
{
  result = qword_1EB6E5418;
  if (!qword_1EB6E5418)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B0BD7EBC(uint64_t a1)
{
  result = _s6LoggerVMa_0(319);
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

void sub_1B0BD7F5C(char a1, void *a2)
{
  v5 = *(_s6LoggerVMa_0(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  sub_1B0BD79B4(a1, a2, v6);
}

id sub_1B0BD7FDC()
{
  v1 = sub_1B0E44AC8();
  v2 = [v0 accountPropertyForKey_];

  if (!v2)
  {
    return 0;
  }

  sub_1B0E45FE8();
  swift_unknownObjectRelease();
  sub_1B0392800(v7, v6);
  sub_1B0BD84D8(0, &qword_1EB6DA5B0, 0x1E696AD98);
  if (!swift_dynamicCast())
  {
    return 0;
  }

  v3 = [v5 BOOLValue];

  return v3;
}

uint64_t sub_1B0BD80D4()
{
  v1 = sub_1B0E44AC8();
  v2 = [v0 accountPropertyForKey_];

  if (!v2)
  {
    return 1;
  }

  sub_1B0E45FE8();
  swift_unknownObjectRelease();
  sub_1B0392800(v7, v6);
  sub_1B0BD84D8(0, &qword_1EB6DA5B0, 0x1E696AD98);
  if (!swift_dynamicCast())
  {
    return 1;
  }

  v3 = [v5 BOOLValue];

  return v3;
}

uint64_t sub_1B0BD81CC(int a1, uint64_t (*a2)(uint64_t))
{
  if (a1 == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2 * (a1 == 2);
  }

  return a2(v2);
}

uint64_t sub_1B0BD8208(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = _s6LoggerVMa_0(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v30 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v30 - v13;
  if (a2)
  {
    v15 = v12;
    v16 = [objc_allocWithZone(MEMORY[0x1E6959A48]) init];
    v17 = sub_1B0E44AC8();
    v18 = [v16 accountWithIdentifier_];

    if (v18)
    {
      sub_1B041C97C(a3, v14);
      _s29DefaultVerifierImplementationV15AccountAndStoreCMa(0);
      v19 = swift_allocObject();
      *(v19 + 16) = v18;
      *(v19 + 24) = v16;
      sub_1B041ECBC(v14, v19 + OBJC_IVAR____TtCVE15IMAP2ConnectionO16IMAP2Persistence16CertificateTrust29DefaultVerifierImplementationP33_F342119D05A6F1A070C6FAB1999158A515AccountAndStore_logger);
      return v19;
    }

    sub_1B041C97C(a3, v10);
    sub_1B041C97C(a3, v7);
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v21 = sub_1B0E43988();
    v22 = sub_1B0E458E8();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v31 = v24;
      *v23 = 68158210;
      *(v23 + 4) = 2;
      *(v23 + 8) = 256;
      v25 = v7[*(v15 + 20)];
      sub_1B041C9E0(v7);
      *(v23 + 10) = v25;
      *(v23 + 11) = 2082;
      v26 = *&v10[*(v15 + 20) + 4];
      sub_1B041C9E0(v10);
      v27 = ConnectionID.debugDescription.getter(v26);
      v29 = sub_1B0399D64(v27, v28, &v31);

      *(v23 + 13) = v29;
      _os_log_impl(&dword_1B0389000, v21, v22, "[%.*hhx-%{public}s] Unable to get account.", v23, 0x15u);
      __swift_destroy_boxed_opaque_existential_0(v24);
      MEMORY[0x1B272C230](v24, -1, -1);
      MEMORY[0x1B272C230](v23, -1, -1);
    }

    else
    {
      sub_1B041C9E0(v7);

      sub_1B041C9E0(v10);
    }
  }

  return 0;
}

uint64_t sub_1B0BD84D8(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

unint64_t sub_1B0BD8544()
{
  result = qword_1EB6E5430;
  if (!qword_1EB6E5430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E5430);
  }

  return result;
}

uint64_t sub_1B0BD85B8(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for ConnectionState(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v13[-v8];
  sub_1B038C9A4(a1, &v13[-v8], type metadata accessor for ConnectionState);
  v10 = *a2;
  v11 = OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_state;
  swift_beginAccess();
  sub_1B038C9A4(v10 + v11, v6, type metadata accessor for ConnectionState);
  swift_beginAccess();
  sub_1B044B474(v9, v10 + v11);
  swift_endAccess();
  sub_1B042D734(v6);
  sub_1B038D690(v6, type metadata accessor for ConnectionState);
  return sub_1B038D690(v9, type metadata accessor for ConnectionState);
}

uint64_t CommandConnection.connectionTraits.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_connectionTraits;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_1B0BD87D8(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  swift_beginAccess();
  *(v6 + v7) = v5;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
}

double sub_1B0BD8848(void *a1)
{
  swift_beginAccess();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return result;
}

uint64_t CommandConnection.__allocating_init(id:engineID:configuration:connectionTraits:makeCredentials:getPushInformation:finishPushRegistration:queue:delegate:reportDataTransfer:test_overrideIdleRefreshInterval:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t), void (*a8)(uint64_t), double a9, double a10, double a11, double a12, double a13, double a14, double a15, double a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, double a24, char a25)
{
  v91 = a8;
  v84 = a7;
  v90 = a6;
  v82 = a5;
  v85 = a4;
  v88 = a23;
  v89 = a18;
  v83 = a17;
  v81 = a21;
  v76 = sub_1B0E44208();
  v75 = *(v76 - 8);
  MEMORY[0x1EEE9AC00](v76);
  v78 = &v73[-((v29 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v30);
  v77 = &v73[-v31];
  v80 = sub_1B0E43DF8();
  v92 = *(v80 - 8);
  MEMORY[0x1EEE9AC00](v80);
  v87 = &v73[-((v32 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v33);
  v86 = &v73[-v34];
  v35 = type metadata accessor for ConnectionConfiguration(0);
  MEMORY[0x1EEE9AC00](v35 - 8);
  v37 = &v73[-((v36 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v38 = swift_allocObject();
  v39 = v38 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_delegate;
  *(v38 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v38 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_commandCounter) = 0;
  v40 = v38 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_runningCommands;
  v41 = MEMORY[0x1E69E7CC0];
  *v40 = MEMORY[0x1E69E7CC0];
  *(v40 + 8) = 0;
  *(v40 + 16) = 1;
  *(v38 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_recentErrors) = v41;
  *(v38 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_enqueuedEvents) = 0;
  *(v38 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_pathAttributes) = MEMORY[0x1E69E7CD0];
  *(v38 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_dataTransferReportCollector) = 0;
  v42 = (v38 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_idle);
  *v42 = 0u;
  v42[1] = 0u;
  v42[2] = 0u;
  *(v42 + 44) = 0u;
  *(v38 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_stuckConnectionCheckTimer) = 0;
  *(v38 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_id) = a1;
  *(v38 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_engineID) = a2;
  *(v38 + 24) = a19;
  v79 = a3;
  sub_1B038C9A4(a3, v37, type metadata accessor for ConnectionConfiguration);
  type metadata accessor for Connection(0);
  swift_allocObject();
  v43 = a19;
  v74 = a1;
  v44 = sub_1B04201EC(v37, v43, a2, a1);

  sub_1B038C9A4(v44 + OBJC_IVAR____TtC15IMAP2Connection10Connection_logger, v38 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger, _s6LoggerVMa_0);
  *(v39 + 8) = v81;
  v81 = a20;
  swift_unknownObjectWeakAssign();
  v45 = (v38 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_makeCredentials);
  *v45 = v82;
  v45[1] = a6;
  v46 = (v38 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_getPushInformation);
  v47 = v91;
  *v46 = v84;
  v46[1] = v47;
  v48 = (v38 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_finishPushRegistration);
  v49 = v89;
  *v48 = v83;
  v48[1] = v49;
  *(v38 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_connectionTraits) = v85;
  LODWORD(v85) = *MEMORY[0x1E6977C08];
  v84 = *(v92 + 104);
  v50 = v80;
  v84(v38 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_state);
  type metadata accessor for ConnectionState(0);
  swift_storeEnumTagMultiPayload();
  *(v38 + 16) = v44;
  *(v44 + OBJC_IVAR____TtC15IMAP2Connection10Connection_delegate + 8) = &off_1F271C898;
  swift_unknownObjectWeakAssign();
  v51 = *(v44 + OBJC_IVAR____TtC15IMAP2Connection10Connection_connection);
  _s27DataTransferReportCollectorCMa();
  v52 = swift_allocObject();
  *(v52 + 56) = 0;
  *(v52 + 64) = 0;
  *(v52 + 72) = 0;
  v53 = v43;

  v83 = v44;

  v54 = v86;
  sub_1B0E43E18();
  v55 = v87;
  v56 = v50;
  (v84)(v87, v85, v50);
  v57 = v55;
  LOBYTE(v44) = MEMORY[0x1B2725F00](v54, v55);
  v58 = *(v92 + 8);
  v58(v57, v56);
  result = (v58)(v54, v56);
  if (v44)
  {
    *(v52 + 16) = v51;
    *(v52 + 24) = v74;
    *(v52 + 32) = v53;
    *(v52 + 40) = a22;
    *(v52 + 48) = v88;
    *(v38 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_dataTransferReportCollector) = v52;

    if (a25)
    {
      v60 = 285.0;
    }

    else
    {
      v60 = a24;
    }

    v61 = v53;

    sub_1B0421B80(v61, v94, v60);
    v62 = (v38 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_idle);
    swift_beginAccess();
    v63 = v62[1];
    v96[0] = *v62;
    v96[1] = v63;
    *v97 = v62[2];
    *&v97[12] = *(v62 + 44);
    v64 = v94[1];
    *v62 = v94[0];
    v62[1] = v64;
    v62[2] = *v95;
    *(v62 + 44) = *&v95[12];
    sub_1B0398EFC(v96, &qword_1EB6E5438, &qword_1B0ED0350);
    v65 = v77;
    *v77 = 9;
    v66 = *MEMORY[0x1E69E7F48];
    v67 = *(v75 + 104);
    v68 = v76;
    v67(v65, v66, v76);
    v69 = v78;
    *v78 = 1;
    v67(v69, v66, v68);
    v70 = swift_allocObject();
    swift_weakInit();
    aBlock[4] = sub_1B038D2DC;
    aBlock[5] = v70;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1B038C908;
    aBlock[3] = &block_descriptor_25;
    v71 = _Block_copy(aBlock);
    type metadata accessor for RestartableTimer();
    swift_allocObject();

    v72 = RestartableTimer.init(queue:repeating:leeway:closure:)(v61, v65, v69, v71);
    swift_unknownObjectRelease();

    sub_1B038D690(v79, type metadata accessor for ConnectionConfiguration);

    *(v38 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_stuckConnectionCheckTimer) = v72;

    return v38;
  }

  else
  {
    __break(1u);
  }

  return result;
}

Swift::Void __swiftcall CommandConnection.cancel()()
{
  v1 = v0;
  v42 = type metadata accessor for ConnectionState(0);
  MEMORY[0x1EEE9AC00](v42);
  v41 = &v39 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v40 = &v39 - v4;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v39 - v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v39 - v9;
  v11 = _s6LoggerVMa_0(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1B0E44468();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = (&v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = *(v1 + 24);
  *v18 = v19;
  (*(v15 + 104))(v18, *MEMORY[0x1E69E8020], v14, v16);
  v20 = v19;
  LOBYTE(v19) = sub_1B0E44488();
  (*(v15 + 8))(v18, v14);
  if ((v19 & 1) == 0)
  {
    __break(1u);
    return;
  }

  v21 = v1 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger;
  sub_1B038C9A4(v1 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger, v13, _s6LoggerVMa_0);

  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  v22 = sub_1B0E43988();
  v23 = sub_1B0E439A8();
  (*(*(v23 - 8) + 8))(v13, v23);
  v24 = sub_1B0E45908();
  if (os_log_type_enabled(v22, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *&v49[0] = v26;
    *v25 = 68158210;
    *(v25 + 4) = 2;
    *(v25 + 8) = 256;
    v27 = v21 + *(v11 + 20);
    *(v25 + 10) = *v27;

    *(v25 + 11) = 2082;
    v28 = ConnectionID.debugDescription.getter(*(v27 + 4));
    v30 = sub_1B0399D64(v28, v29, v49);

    *(v25 + 13) = v30;
    _os_log_impl(&dword_1B0389000, v22, v24, "[%.*hhx-%{public}s] Cancel.", v25, 0x15u);
    __swift_destroy_boxed_opaque_existential_0Tm(v26);
    MEMORY[0x1B272C230](v26, -1, -1);
    MEMORY[0x1B272C230](v25, -1, -1);
  }

  else
  {
  }

  sub_1B0E43E28();
  v31 = OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_state;
  swift_beginAccess();
  sub_1B038C9A4(v1 + v31, v10, type metadata accessor for ConnectionState);
  sub_1B038CB4C(v10, v7, type metadata accessor for ConnectionState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      sub_1B038D690(v7, type metadata accessor for ConnectionState);
      return;
    }

    if (EnumCaseMultiPayload == 4)
    {
      return;
    }
  }

  else
  {
    sub_1B038D690(v7, type metadata accessor for ConnectionState);
  }

  v33 = v40;
  swift_storeEnumTagMultiPayload();
  v34 = v41;
  sub_1B038C9A4(v1 + v31, v41, type metadata accessor for ConnectionState);
  swift_beginAccess();
  sub_1B044B474(v33, v1 + v31);
  swift_endAccess();
  sub_1B042D734(v34);
  sub_1B038D690(v34, type metadata accessor for ConnectionState);
  sub_1B038D690(v33, type metadata accessor for ConnectionState);
  v35 = OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_stuckConnectionCheckTimer;
  if (*(v1 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_stuckConnectionCheckTimer))
  {

    RestartableTimer.stop()();
  }

  *(v1 + v35) = 0;

  v36 = v1 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_idle;
  swift_beginAccess();
  *&v50[12] = *(v36 + 44);
  v37 = *(v36 + 32);
  v49[1] = *(v36 + 16);
  *v50 = v37;
  v49[0] = *v36;
  if (*(&v37 + 1))
  {
    v38 = *(v36 + 16);
    v44[0] = *v36;
    v44[1] = v38;
    v45 = *(v36 + 32);
    v46 = *(&v37 + 1);
    v47 = *(v36 + 48);
    v48 = *(v36 + 56);
    sub_1B03B5C80(v49, &v43, &qword_1EB6E5438, &qword_1B0ED0350);

    sub_1B0398EFC(v44, &qword_1EB6E5438, &qword_1B0ED0350);
    RestartableTimer.stop()();
  }
}

BOOL CommandConnection.isCancelledOrFailed.getter()
{
  v1 = type metadata accessor for ConnectionState(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_state;
  swift_beginAccess();
  sub_1B038C9A4(v0 + v4, v3, type metadata accessor for ConnectionState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    sub_1B038D690(v3, type metadata accessor for ConnectionState);
  }

  return EnumCaseMultiPayload > 3;
}

uint64_t CommandConnection.canRunCommand(_:)()
{
  v1 = type metadata accessor for ConnectionState(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v21[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v21[-v5];
  v7 = sub_1B0E44468();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v21[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = *(v0 + 24);
  *v11 = v12;
  (*(v8 + 104))(v11, *MEMORY[0x1E69E8020], v7, v9);
  v13 = v12;
  LOBYTE(v12) = sub_1B0E44488();
  result = (*(v8 + 8))(v11, v7);
  if (v12)
  {
    v15 = OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_state;
    swift_beginAccess();
    sub_1B038C9A4(v0 + v15, v6, type metadata accessor for ConnectionState);
    sub_1B038CB4C(v6, v3, type metadata accessor for ConnectionState);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 2)
    {
      if ((EnumCaseMultiPayload - 4) < 2)
      {
        return 0;
      }
    }

    else if (EnumCaseMultiPayload >= 2)
    {
      sub_1B038D690(v3, type metadata accessor for ConnectionState);
      v17 = (v0 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_runningCommands);
      swift_beginAccess();
      v18 = *v17;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v19 = sub_1B0C1AD1C();
      sub_1B0C1B22C();
      v20 = sub_1B0BD68AC();
      sub_1B0C27278(v19, v20, v18);

      return 1;
    }

    sub_1B038D690(v3, type metadata accessor for ConnectionState);
    return 0;
  }

  __break(1u);
  return result;
}

unint64_t CommandConnection.send(_:)(uint64_t a1)
{
  v3 = type metadata accessor for OutboundContent(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v15[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_1B0E44468();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v15[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = *(v1 + 24);
  *v10 = v11;
  (*(v7 + 104))(v10, *MEMORY[0x1E69E8020], v6, v8);
  v12 = v11;
  LOBYTE(v11) = sub_1B0E44488();
  result = (*(v7 + 8))(v10, v6);
  if (v11)
  {
    MEMORY[0x1EEE9AC00](result);
    *&v15[-16] = v1;
    *&v15[-8] = a1;
    v14 = sub_1B0BD9F24(sub_1B0BE2764);
    sub_1B038C9A4(a1, v5, type metadata accessor for ClientCommand);
    swift_storeEnumTagMultiPayload();
    sub_1B0BEAF64(v14, v5);
    sub_1B038D690(v5, type metadata accessor for OutboundContent);
    return v14;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B0BD9D58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  sub_1B0C26D98(a1);
  return swift_endAccess();
}

unint64_t CommandConnection.makeNextCommandID()()
{
  v1 = sub_1B0E44468();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = (&v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v0 + 24);
  *v5 = v6;
  (*(v2 + 104))(v5, *MEMORY[0x1E69E8020], v1, v3);
  v7 = v6;
  LOBYTE(v6) = sub_1B0E44488();
  result = (*(v2 + 8))(v5, v1);
  if (v6)
  {
    v9 = OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_commandCounter;
    swift_beginAccess();
    v10 = (*(v0 + v9) + 1) & 0xFFFFFF;
    *(v0 + v9) = v10;
    return *(v0 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_id) | (v10 << 32);
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1B0BD9F24(uint64_t (*a1)(unint64_t))
{
  v4 = sub_1B0E44468();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = (&v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(v1 + 24);
  *v8 = v9;
  (*(v5 + 104))(v8, *MEMORY[0x1E69E8020], v4, v6);
  v10 = v9;
  LOBYTE(v9) = sub_1B0E44488();
  result = (*(v5 + 8))(v8, v4);
  if (v9)
  {
    v12 = OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_commandCounter;
    swift_beginAccess();
    v13 = *(v1 + v12);
    v14 = (v13 + 1) & 0xFFFFFF;
    *(v1 + v12) = v14;
    v15 = *(v1 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_id) | (v14 << 32);
    a1(v15);
    if (v2)
    {
      *(v1 + v12) = v13;
      swift_willThrow();
    }

    swift_endAccess();
    return v15;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t CommandConnection.selectedMailbox.getter()
{
  v1 = type metadata accessor for ConnectionState(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_state;
  swift_beginAccess();
  sub_1B038C9A4(v0 + v4, v3, type metadata accessor for ConnectionState);
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    sub_1B038D690(v3, type metadata accessor for ConnectionState);
    return 0;
  }

  memcpy(v29, v3, sizeof(v29));
  v5 = *(v3 + 21);
  v30[8] = *(v3 + 20);
  v30[9] = v5;
  v31 = *(v3 + 176);
  v6 = *(v3 + 17);
  v30[4] = *(v3 + 16);
  v30[5] = v6;
  v7 = *(v3 + 19);
  v30[6] = *(v3 + 18);
  v30[7] = v7;
  v8 = *(v3 + 13);
  v30[0] = *(v3 + 12);
  v30[1] = v8;
  v9 = *(v3 + 15);
  v30[2] = *(v3 + 14);
  v30[3] = v9;
  v10 = sub_1B0BE2780(v30);
  if (!v10)
  {
    sub_1B03DB9A4(v30);
    sub_1B0BE278C(v29);
    return 0;
  }

  if (v10 == 1)
  {
    v11 = sub_1B03DB9A4(v30);
    v26 = *&v29[320];
    v27 = *&v29[336];
    v28 = *&v29[352];
    v22 = *&v29[256];
    v23 = *&v29[272];
    v24 = *&v29[288];
    v25 = *&v29[304];
    v18 = *&v29[192];
    v19 = *&v29[208];
    v20 = *&v29[224];
    v21 = *&v29[240];
    v12 = sub_1B03DB9A4(&v18);
    sub_1B0BE2834(v12, &v17);
    sub_1B0BE278C(v29);
    v13 = *v11;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0BE27E0(&v29[192]);
    return v13;
  }

  else
  {
    v15 = *sub_1B03DB9A4(v30);
    v26 = *&v29[320];
    v27 = *&v29[336];
    v28 = *&v29[352];
    v22 = *&v29[256];
    v23 = *&v29[272];
    v24 = *&v29[288];
    v25 = *&v29[304];
    v18 = *&v29[192];
    v19 = *&v29[208];
    v20 = *&v29[224];
    v21 = *&v29[240];
    sub_1B03DB9A4(&v18);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0BE278C(v29);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0BE27E0(&v29[192]);
    return v15;
  }
}

uint64_t CommandConnection.selectMailbox(name:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for ConnectionState(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v15[-v10];
  v12 = OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_state;
  swift_beginAccess();
  sub_1B038C9A4(v3 + v12, v11, type metadata accessor for ConnectionState);
  LOBYTE(a1) = ConnectionState.selectMailbox(name:)(a1, a2);
  sub_1B038C9A4(v3 + v12, v8, type metadata accessor for ConnectionState);
  swift_beginAccess();
  sub_1B044B474(v11, v3 + v12);
  swift_endAccess();
  sub_1B042D734(v8);
  sub_1B038D690(v8, type metadata accessor for ConnectionState);
  sub_1B038D690(v11, type metadata accessor for ConnectionState);
  v13 = OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger;
  sub_1B038C9A4(v3 + v12, v11, type metadata accessor for ConnectionState);

  sub_1B0BF65A8(v3 + v13, v11, v3);

  sub_1B038C9A4(v3 + v12, v8, type metadata accessor for ConnectionState);
  swift_beginAccess();
  sub_1B044B474(v11, v3 + v12);
  swift_endAccess();
  sub_1B042D734(v8);
  sub_1B038D690(v8, type metadata accessor for ConnectionState);
  sub_1B038D690(v11, type metadata accessor for ConnectionState);
  return a1 & 1;
}

void CommandConnection.replaceDelegate(with:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v60 = a2;
  v5 = type metadata accessor for ConnectionState(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = (v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v8);
  v10 = v54 - v9;
  v57 = _s6LoggerVMa_0(0);
  MEMORY[0x1EEE9AC00](v57);
  v56 = v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v54 - v13;
  v15 = sub_1B0E44468();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = (v54 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = *(v3 + 24);
  *v19 = v20;
  (*(v16 + 104))(v19, *MEMORY[0x1E69E8020], v15, v17);
  v21 = v20;
  LOBYTE(v20) = sub_1B0E44488();
  (*(v16 + 8))(v19, v15);
  if (v20)
  {
    v58 = a1;
    v59 = v5;
    v22 = v3 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger;
    sub_1B038C9A4(v3 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger, v14, _s6LoggerVMa_0);

    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v23 = sub_1B0E43988();
    v24 = sub_1B0E439A8();
    v25 = *(v24 - 8);
    v26 = *(v25 + 8);
    v54[1] = v25 + 8;
    v26(v14, v24);
    v27 = sub_1B0E458D8();
    v28 = os_log_type_enabled(v23, v27);
    v55 = v22;
    if (v28)
    {
      v29 = swift_slowAlloc();
      v54[0] = swift_slowAlloc();
      v62[0] = v54[0];
      *v29 = 68158210;
      *(v29 + 4) = 2;
      *(v29 + 8) = 256;
      v30 = v22 + *(v57 + 20);
      *(v29 + 10) = *v30;

      *(v29 + 11) = 2082;
      v31 = ConnectionID.debugDescription.getter(*(v30 + 4));
      v33 = v3;
      v34 = v10;
      v35 = v24;
      v36 = v7;
      v37 = v26;
      v38 = sub_1B0399D64(v31, v32, v62);

      *(v29 + 13) = v38;
      v26 = v37;
      v7 = v36;
      v24 = v35;
      v10 = v34;
      v3 = v33;
      _os_log_impl(&dword_1B0389000, v23, v27, "[%.*hhx-%{public}s] Setting new delegate (better path available).", v29, 0x15u);
      v39 = v54[0];
      __swift_destroy_boxed_opaque_existential_0Tm(v54[0]);
      MEMORY[0x1B272C230](v39, -1, -1);
      MEMORY[0x1B272C230](v29, -1, -1);
    }

    else
    {
    }

    *(v3 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_delegate + 8) = v60;
    swift_unknownObjectWeakAssign();
    v40 = OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_state;
    swift_beginAccess();
    sub_1B038C9A4(v3 + v40, v10, type metadata accessor for ConnectionState);
    LODWORD(v40) = swift_getEnumCaseMultiPayload();
    sub_1B038D690(v10, type metadata accessor for ConnectionState);
    if (v40 == 2)
    {
      v41 = OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_connectionTraits;
      swift_beginAccess();
      v42 = *(v3 + v41);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v43 = static MonotonicTime.now()();
      *(v7 + *(type metadata accessor for UnauthenticatedStateWithTasks(0) + 28)) = MEMORY[0x1E69E7CC0];
      *v7 = v42;
      v7[1] = v43;
      type metadata accessor for UnauthenticatedState(0);
      swift_storeEnumTagMultiPayload();
      swift_storeEnumTagMultiPayload();
      sub_1B042D734(v7);
      sub_1B038D690(v7, type metadata accessor for ConnectionState);
    }

    else
    {
      v45 = v55;
      v44 = v56;
      sub_1B038C9A4(v55, v56, _s6LoggerVMa_0);

      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      v46 = sub_1B0E43988();
      v26(v44, v24);
      v47 = sub_1B0E458E8();
      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        v49 = swift_slowAlloc();
        v61[0] = v49;
        *v48 = 68158210;
        *(v48 + 4) = 2;
        *(v48 + 8) = 256;
        v50 = v45 + *(v57 + 20);
        *(v48 + 10) = *v50;

        *(v48 + 11) = 2082;
        v51 = ConnectionID.debugDescription.getter(*(v50 + 4));
        v53 = sub_1B0399D64(v51, v52, v61);

        *(v48 + 13) = v53;
        _os_log_impl(&dword_1B0389000, v46, v47, "[%.*hhx-%{public}s] Trying to replace delegate on unauthenticated connection. Closing.", v48, 0x15u);
        __swift_destroy_boxed_opaque_existential_0Tm(v49);
        MEMORY[0x1B272C230](v49, -1, -1);
        MEMORY[0x1B272C230](v48, -1, -1);
      }

      else
      {
      }

      CommandConnection.cancel()();
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t CommandConnection.deinit()
{

  sub_1B038D690(v0 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger, _s6LoggerVMa_0);
  sub_1B0BE2890(v0 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_delegate);

  sub_1B038D690(v0 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_state, type metadata accessor for ConnectionState);

  return v0;
}

uint64_t CommandConnection.__deallocating_deinit()
{
  CommandConnection.deinit();

  return swift_deallocClassInstance();
}

uint64_t Response.logIdentifier.getter()
{
  type metadata accessor for Response(0);
  sub_1B0E46508();
  return 0;
}

uint64_t sub_1B0BDAD70(unint64_t a1)
{
  v2 = type metadata accessor for ConnectionState(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v186 = &v180 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v185 = &v180 - v5;
  v184 = _s6LoggerVMa_0(0);
  MEMORY[0x1EEE9AC00](v184);
  v7 = &v180 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v180 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v180 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v180 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v180 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v180 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v180 - v24;
  v26 = type metadata accessor for UntaggedResponse(0);
  MEMORY[0x1EEE9AC00](v26);
  MEMORY[0x1EEE9AC00](v27);
  MEMORY[0x1EEE9AC00](v28);
  v32 = (&v180 - v31);
  v188 = a1;
  if (a1 >> 60 != 4)
  {
    if (a1 >> 60 == 3)
    {
      v33 = v30;
      v34 = v29;
      v35 = v188;
      v36 = swift_projectBox();
      sub_1B038C9A4(v36, v32, type metadata accessor for UntaggedResponse);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v38 = v187;
      if (EnumCaseMultiPayload == 4)
      {
        v39 = *v32;
        v40 = v32[1];
        v41 = v32[2];
        v42 = v187 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger;
        sub_1B038C9A4(v187 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger, v25, _s6LoggerVMa_0);

        sub_1B0394868();
        sub_1B0394868();
        sub_1B0394868();
        sub_1B04420D8(v39);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v43 = sub_1B0E43988();
        v44 = sub_1B0E439A8();
        (*(*(v44 - 8) + 8))(v25, v44);
        v45 = sub_1B0E458E8();
        sub_1B0447F00(v39);

        if (os_log_type_enabled(v43, v45))
        {
          v46 = swift_slowAlloc();
          v47 = swift_slowAlloc();
          v189[0] = v47;
          *v46 = 68158466;
          *(v46 + 4) = 2;
          *(v46 + 8) = 256;
          v48 = &v42[*(v184 + 20)];
          *(v46 + 10) = *v48;

          *(v46 + 11) = 2082;
          v49 = ConnectionID.debugDescription.getter(*(v48 + 1));
          v51 = sub_1B0399D64(v49, v50, v189);

          *(v46 + 13) = v51;
          *(v46 + 21) = 2082;
          v38 = v187;
          v52 = ResponseText.debugDescription.getter(v39, v40, v41);
          v54 = sub_1B0399D64(v52, v53, v189);

          *(v46 + 23) = v54;
          _os_log_impl(&dword_1B0389000, v43, v45, "[%.*hhx-%{public}s] Received BYE %{public}s", v46, 0x1Fu);
          swift_arrayDestroy();
          v55 = v47;
          v35 = v188;
          MEMORY[0x1B272C230](v55, -1, -1);
          MEMORY[0x1B272C230](v46, -1, -1);
          sub_1B0447F00(v39);
        }

        else
        {

          sub_1B0447F00(v39);
        }

        v112 = v185;
        v111 = v186;
      }

      else
      {
        sub_1B038D690(v32, type metadata accessor for UntaggedResponse);
        v95 = swift_projectBox();
        v96 = v34;
        sub_1B038C9A4(v95, v34, type metadata accessor for UntaggedResponse);
        v97 = v38 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger;
        sub_1B038C9A4(v38 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger, v22, _s6LoggerVMa_0);

        sub_1B0394868();
        sub_1B0394868();
        sub_1B0394868();
        v98 = v34;
        v99 = v33;
        sub_1B038C9A4(v98, v33, type metadata accessor for UntaggedResponse);
        v100 = sub_1B0E43988();
        v101 = sub_1B0E439A8();
        (*(*(v101 - 8) + 8))(v22, v101);
        v102 = sub_1B0E458D8();
        if (os_log_type_enabled(v100, v102))
        {
          v103 = swift_slowAlloc();
          v183 = swift_slowAlloc();
          v189[0] = v183;
          *v103 = 68158466;
          *(v103 + 4) = 2;
          *(v103 + 8) = 256;
          v104 = &v97[*(v184 + 20)];
          *(v103 + 10) = *v104;

          *(v103 + 11) = 2082;
          v105 = ConnectionID.debugDescription.getter(*(v104 + 1));
          v107 = sub_1B0399D64(v105, v106, v189);

          *(v103 + 13) = v107;
          *(v103 + 21) = 2082;
          v108 = UntaggedResponse.makeDescriptionWithoutPII()();
          sub_1B038D690(v99, type metadata accessor for UntaggedResponse);
          v109 = sub_1B0399D64(v108._countAndFlagsBits, v108._object, v189);

          *(v103 + 23) = v109;
          _os_log_impl(&dword_1B0389000, v100, v102, "[%.*hhx-%{public}s] Received 'S: %{public}s' from network.", v103, 0x1Fu);
          v110 = v183;
          swift_arrayDestroy();
          MEMORY[0x1B272C230](v110, -1, -1);
          MEMORY[0x1B272C230](v103, -1, -1);
        }

        else
        {

          sub_1B038D690(v33, type metadata accessor for UntaggedResponse);
        }

        sub_1B038D690(v96, type metadata accessor for UntaggedResponse);
        v112 = v185;
        v111 = v186;
        v35 = v188;
      }
    }

    else
    {
      v38 = v187;
      v82 = v187 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger;
      sub_1B038C9A4(v187 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger, v7, _s6LoggerVMa_0);

      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      v35 = v188;
      sub_1B044CD04(v188);
      v83 = sub_1B0E43988();
      v84 = sub_1B0E439A8();
      (*(*(v84 - 8) + 8))(v7, v84);
      v85 = sub_1B0E458D8();
      sub_1B044CEF8(v35);
      if (os_log_type_enabled(v83, v85))
      {
        v86 = swift_slowAlloc();
        v87 = swift_slowAlloc();
        v189[0] = v87;
        *v86 = 68158466;
        *(v86 + 4) = 2;
        *(v86 + 8) = 256;
        v88 = &v82[*(v184 + 20)];
        *(v86 + 10) = *v88;

        *(v86 + 11) = 2082;
        v89 = ConnectionID.debugDescription.getter(*(v88 + 1));
        v91 = sub_1B0399D64(v89, v90, v189);

        *(v86 + 13) = v91;
        *(v86 + 21) = 2080;
        v92 = Event.Payload.shortLogIdentifier.getter(v35);
        v94 = sub_1B0399D64(v92, v93, v189);

        *(v86 + 23) = v94;
        _os_log_impl(&dword_1B0389000, v83, v85, "[%.*hhx-%{public}s] Received '%s' from network.", v86, 0x1Fu);
        swift_arrayDestroy();
        MEMORY[0x1B272C230](v87, -1, -1);
        MEMORY[0x1B272C230](v86, -1, -1);
      }

      else
      {
      }

      v112 = v185;
      v111 = v186;
    }

    goto LABEL_34;
  }

  v56 = *((v188 & 0xFFFFFFFFFFFFFFFLL) + 0x14);
  v58 = *((v188 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
  v57 = *((v188 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
  v59 = *((v188 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
  v60 = *((v188 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
  v183 = *((v188 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
  if (!v60)
  {
    v113 = v187;
    v114 = v187 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger;
    sub_1B038C9A4(v187 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger, v10, _s6LoggerVMa_0);

    sub_1B0A91FD0(v58, v57, v59, 0);
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B04420D8(v58);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v115 = sub_1B0E43988();
    v116 = sub_1B0E439A8();
    (*(*(v116 - 8) + 8))(v10, v116);
    v117 = sub_1B0E458D8();
    if (os_log_type_enabled(v115, v117))
    {
      v118 = swift_slowAlloc();
      v181 = swift_slowAlloc();
      v182 = v57;
      v189[0] = v181;
      *v118 = 68158978;
      *(v118 + 4) = 2;
      *(v118 + 8) = 256;
      v119 = v56;
      v120 = &v114[*(v184 + 20)];
      *(v118 + 10) = *v120;

      *(v118 + 11) = 2082;
      v121 = ConnectionID.debugDescription.getter(*(v120 + 1));
      v123 = sub_1B0399D64(v121, v122, v189);

      *(v118 + 13) = v123;
      *(v118 + 21) = 2082;
      v124 = Tag.debugDescription.getter(v183 | (v119 << 32));
      v126 = sub_1B0399D64(v124, v125, v189);

      *(v118 + 23) = v126;
      *(v118 + 31) = 2082;
      *(v118 + 33) = sub_1B0399D64(19279, 0xE200000000000000, v189);
      *(v118 + 41) = 2082;
      v127 = v182;
      v128 = ResponseText.debugDescription.getter(v58, v182, v59);
      v130 = v129;
      sub_1B0447F00(v58);

      v131 = sub_1B0399D64(v128, v130, v189);

      *(v118 + 43) = v131;
      _os_log_impl(&dword_1B0389000, v115, v117, "[%.*hhx-%{public}s] Received 'S: %{public}s %{public}s %{public}s' from network.", v118, 0x33u);
      v132 = v181;
      swift_arrayDestroy();
      MEMORY[0x1B272C230](v132, -1, -1);
      MEMORY[0x1B272C230](v118, -1, -1);

      sub_1B0BB6FE0(v58, v127, v59, 0);
    }

    else
    {

      sub_1B0BB6FE0(v58, v57, v59, 0);
      sub_1B0447F00(v58);
    }

    v38 = v113;
    goto LABEL_33;
  }

  if (v60 != 1)
  {
    v181 = v56;
    v38 = v187;
    v133 = v187 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger;
    sub_1B038C9A4(v187 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger, v19, _s6LoggerVMa_0);

    sub_1B0A91FD0(v58, v57, v59, 2u);
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B04420D8(v58);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v134 = sub_1B0E43988();
    v135 = sub_1B0E439A8();
    (*(*(v135 - 8) + 8))(v19, v135);
    v136 = sub_1B0E458E8();
    if (os_log_type_enabled(v134, v136))
    {
      v137 = swift_slowAlloc();
      v138 = swift_slowAlloc();
      v182 = v57;
      v139 = v138;
      v189[0] = v138;
      *v137 = 68158978;
      *(v137 + 4) = 2;
      *(v137 + 8) = 256;
      v140 = &v133[*(v184 + 20)];
      *(v137 + 10) = *v140;

      *(v137 + 11) = 2082;
      v141 = ConnectionID.debugDescription.getter(*(v140 + 1));
      v143 = sub_1B0399D64(v141, v142, v189);

      *(v137 + 13) = v143;
      *(v137 + 21) = 2082;
      v144 = Tag.debugDescription.getter(v183 | (v181 << 32));
      v146 = sub_1B0399D64(v144, v145, v189);

      *(v137 + 23) = v146;
      *(v137 + 31) = 2082;
      *(v137 + 33) = sub_1B0399D64(4473154, 0xE300000000000000, v189);
      *(v137 + 41) = 2082;
      v147 = v182;
      v148 = ResponseText.debugDescription.getter(v58, v182, v59);
      v150 = v149;
      sub_1B0447F00(v58);

      v151 = sub_1B0399D64(v148, v150, v189);

      *(v137 + 43) = v151;
      _os_log_impl(&dword_1B0389000, v134, v136, "[%.*hhx-%{public}s] Received 'S: %{public}s %{public}s %{public}s' from network.", v137, 0x33u);
      swift_arrayDestroy();
      MEMORY[0x1B272C230](v139, -1, -1);
      MEMORY[0x1B272C230](v137, -1, -1);

      sub_1B0BB6FE0(v58, v147, v59, 2u);
    }

    else
    {

      sub_1B0BB6FE0(v58, v57, v59, 2u);
      sub_1B0447F00(v58);
    }

LABEL_33:
    v112 = v185;
    v111 = v186;
    v35 = v188;
LABEL_34:
    sub_1B0446050(v35);
    v172 = OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_connectionTraits;
    swift_beginAccess();
    v173 = *(v38 + v172);
    v174 = OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger;
    v175 = OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_state;
    swift_beginAccess();
    sub_1B038C9A4(v38 + v175, v112, type metadata accessor for ConnectionState);

    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0446DE4(v35, v173, sub_1B0BE2D10, v38, sub_1B0BE2D2C, v38, (v38 + v174));

    sub_1B038C9A4(v38 + v175, v111, type metadata accessor for ConnectionState);
    swift_beginAccess();
    sub_1B044B474(v112, v38 + v175);
    swift_endAccess();
    sub_1B042D734(v111);
    sub_1B038D690(v111, type metadata accessor for ConnectionState);
    sub_1B038D690(v112, type metadata accessor for ConnectionState);

    return sub_1B0BDE9C8();
  }

  if ((~v58 & 0xF000000000000007) == 0 || v58 != 0x800000000000006CLL)
  {
    v61 = v57;
    v62 = v187;
    v63 = v187 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger;
    sub_1B038C9A4(v187 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger, v13, _s6LoggerVMa_0);

    sub_1B0A91FD0(v58, v61, v59, 1u);
    sub_1B04420D8(v58);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B04420D8(v58);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v64 = sub_1B0E43988();
    v65 = sub_1B0E439A8();
    (*(*(v65 - 8) + 8))(v13, v65);
    v66 = sub_1B0E458E8();
    if (os_log_type_enabled(v64, v66))
    {
      v67 = swift_slowAlloc();
      v181 = swift_slowAlloc();
      v189[0] = v181;
      *v67 = 68158978;
      *(v67 + 4) = 2;
      *(v67 + 8) = 256;
      v68 = v56;
      v69 = &v63[*(v184 + 20)];
      *(v67 + 10) = *v69;

      v182 = v61;
      *(v67 + 11) = 2082;
      v70 = ConnectionID.debugDescription.getter(*(v69 + 1));
      v72 = sub_1B0399D64(v70, v71, v189);

      *(v67 + 13) = v72;
      *(v67 + 21) = 2082;
      v73 = Tag.debugDescription.getter(v183 | (v68 << 32));
      v75 = sub_1B0399D64(v73, v74, v189);

      *(v67 + 23) = v75;
      *(v67 + 31) = 2082;
      *(v67 + 33) = sub_1B0399D64(20302, 0xE200000000000000, v189);
      *(v67 + 41) = 2082;
      v76 = v182;
      v77 = ResponseText.debugDescription.getter(v58, v182, v59);
      v79 = v78;
      sub_1B0447F00(v58);

      v80 = sub_1B0399D64(v77, v79, v189);

      *(v67 + 43) = v80;
      _os_log_impl(&dword_1B0389000, v64, v66, "[%.*hhx-%{public}s] Received 'S: %{public}s %{public}s %{public}s' from network.", v67, 0x33u);
      v81 = v181;
      swift_arrayDestroy();
      MEMORY[0x1B272C230](v81, -1, -1);
      MEMORY[0x1B272C230](v67, -1, -1);

      sub_1B0447F00(v58);

      sub_1B0BB6FE0(v58, v76, v59, 1u);
    }

    else
    {

      sub_1B0447F00(v58);

      sub_1B0BB6FE0(v58, v61, v59, 1u);
      sub_1B0447F00(v58);
    }

    v38 = v62;
    goto LABEL_33;
  }

  v152 = v187;
  v153 = v187 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger;
  sub_1B038C9A4(v187 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger, v16, _s6LoggerVMa_0);
  sub_1B04420D8(0x800000000000006CLL);

  sub_1B0A91FD0(0x800000000000006CLL, v57, v59, 1u);
  sub_1B04420D8(0x800000000000006CLL);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B04420D8(0x800000000000006CLL);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v154 = v57;
  v155 = sub_1B0E43988();
  v156 = sub_1B0E439A8();
  (*(*(v156 - 8) + 8))(v16, v156);
  v157 = sub_1B0E458E8();
  if (os_log_type_enabled(v155, v157))
  {
    v158 = swift_slowAlloc();
    v159 = swift_slowAlloc();
    v189[0] = v159;
    *v158 = 68158978;
    *(v158 + 4) = 2;
    *(v158 + 8) = 256;
    v160 = v56;
    v161 = &v153[*(v184 + 20)];
    *(v158 + 10) = *v161;

    v182 = v154;
    *(v158 + 11) = 2082;
    v162 = ConnectionID.debugDescription.getter(*(v161 + 1));
    v164 = sub_1B0399D64(v162, v163, v189);

    *(v158 + 13) = v164;
    *(v158 + 21) = 2082;
    v165 = Tag.debugDescription.getter(v183 | (v160 << 32));
    v167 = sub_1B0399D64(v165, v166, v189);

    *(v158 + 23) = v167;
    *(v158 + 31) = 2082;
    *(v158 + 33) = sub_1B0399D64(20302, 0xE200000000000000, v189);
    *(v158 + 41) = 2082;
    v154 = v182;
    v168 = ResponseText.debugDescription.getter(0x800000000000006CLL, v182, v59);
    v170 = v169;
    sub_1B0447F00(0x800000000000006CLL);

    v171 = sub_1B0399D64(v168, v170, v189);

    *(v158 + 43) = v171;
    _os_log_impl(&dword_1B0389000, v155, v157, "[%.*hhx-%{public}s] Received 'S: %{public}s %{public}s %{public}s' from network. Server is temporarily unavailable.", v158, 0x33u);
    swift_arrayDestroy();
    MEMORY[0x1B272C230](v159, -1, -1);
    MEMORY[0x1B272C230](v158, -1, -1);
  }

  else
  {

    sub_1B0447F00(0x800000000000006CLL);
  }

  v177 = swift_allocObject();
  v178 = OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_recentErrors;
  swift_beginAccess();
  *(v177 + 16) = *(v152 + v178);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *(v177 + 24) = *ConnectionID.invalid.unsafeMutableAddressor();
  v179 = MEMORY[0x1E69E7CD0];
  *(v177 + 32) = MEMORY[0x1E69E7CD0];
  *(v177 + 40) = v179;
  sub_1B0446050(v177 | 0x1000000000000000);

  CommandConnection.cancel()();
  sub_1B0447F00(0x800000000000006CLL);

  return sub_1B0BB6FE0(0x800000000000006CLL, v154, v59, 1u);
}

uint64_t sub_1B0BDC398()
{
  v1 = type metadata accessor for ConnectionState(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v11[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v11[-v5];
  v7 = OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_state;
  swift_beginAccess();
  sub_1B038C9A4(v0 + v7, v6, type metadata accessor for ConnectionState);
  sub_1B038CB4C(v6, v3, type metadata accessor for ConnectionState);
  result = swift_getEnumCaseMultiPayload();
  if (result > 2)
  {
    if ((result - 4) < 2)
    {
      return result;
    }
  }

  else if (result >= 2)
  {
    sub_1B038D690(v3, type metadata accessor for ConnectionState);
    v9 = swift_allocObject();
    v10 = OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_pathAttributes;
    swift_beginAccess();
    *(v9 + 16) = *(v0 + v10);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0446050(v9 | 0x6000000000000000);
  }

  return sub_1B038D690(v3, type metadata accessor for ConnectionState);
}

Swift::Void __swiftcall CommandConnection.logState()()
{
  v1 = v0;
  v2 = type metadata accessor for ConnectionState(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1B0E428D8();
  MEMORY[0x1EEE9AC00](v5);
  v41 = _s6LoggerVMa_0(0);
  MEMORY[0x1EEE9AC00](v41);
  v42 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v43 = &v41 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v45 = &v41 - v10;
  sub_1B038C9A4(v0 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger, &v41 - v10, _s6LoggerVMa_0);
  sub_1B0E42928();
  swift_allocObject();
  v11 = sub_1B0E42918();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5440, &qword_1B0ED0358);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1B0EC3500;
  sub_1B0E428C8();
  sub_1B0E428B8();
  *&v62[0] = v12;
  sub_1B0BE2B48(&qword_1EB6DED40, MEMORY[0x1E6967F78], MEMORY[0x1E6967F88]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5448, &qword_1B0ED0360);
  sub_1B0BE28B8();
  sub_1B0E460A8();
  sub_1B0E428E8();
  v13 = OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_state;
  swift_beginAccess();
  v46 = v1;
  sub_1B038C9A4(v1 + v13, v4, type metadata accessor for ConnectionState);
  sub_1B0C28818(v62);
  sub_1B038D690(v4, type metadata accessor for ConnectionState);
  v59 = v62[4];
  v60 = v62[5];
  v61[0] = v63[0];
  *(v61 + 15) = *(v63 + 15);
  v55 = v62[0];
  v56 = v62[1];
  v57 = v62[2];
  v58 = v62[3];
  sub_1B0BE291C();
  v44 = v11;
  v14 = sub_1B0E428F8();
  v16 = v15;
  v53[4] = v59;
  v53[5] = v60;
  v54[0] = v61[0];
  *(v54 + 15) = *(v61 + 15);
  v53[0] = v55;
  v53[1] = v56;
  v53[2] = v57;
  v53[3] = v58;
  sub_1B0BE2970(v53);
  sub_1B03B2000(v14, v16);
  sub_1B03B2000(v14, v16);
  v17 = sub_1B0BE1FC4(v14, v16);
  if (v18)
  {
    v19 = v17;
    v20 = v18;
    sub_1B0391D50(v14, v16);
    sub_1B0391D50(v14, v16);
    sub_1B0391D50(v14, v16);
    v21 = v45;
    v22 = v43;
    goto LABEL_3;
  }

  v49 = v14;
  v50 = v16;
  sub_1B03B2000(v14, v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5450, &qword_1B0ED0368);
  if (swift_dynamicCast())
  {
    sub_1B0450C74(v47, v51);
    __swift_project_boxed_opaque_existential_0(v51, v52);
    v39 = sub_1B0E46708();
    sub_1B0391D50(v14, v16);
    v22 = v43;
    if (v39)
    {
      __swift_project_boxed_opaque_existential_0(v51, v52);
      sub_1B0E466F8();
      sub_1B0391D50(v14, v16);
      sub_1B0391D50(v14, v16);
      v20 = *(&v47[0] + 1);
      v19 = *&v47[0];
      __swift_destroy_boxed_opaque_existential_0Tm(v51);
      v21 = v45;
      goto LABEL_3;
    }

    __swift_destroy_boxed_opaque_existential_0Tm(v51);
    v21 = v45;
  }

  else
  {
    sub_1B0391D50(v14, v16);
    v48 = 0;
    memset(v47, 0, sizeof(v47));
    sub_1B0398EFC(v47, &qword_1EB6E5458, &qword_1B0ED0370);
    v21 = v45;
    v22 = v43;
  }

  v19 = sub_1B0BE1D00(v14, v16);
  v20 = v40;
  sub_1B0391D50(v14, v16);
  sub_1B0391D50(v14, v16);
LABEL_3:
  sub_1B038C9A4(v21, v22, _s6LoggerVMa_0);
  v23 = v42;
  sub_1B038C9A4(v21, v42, _s6LoggerVMa_0);
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  swift_retain_n();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v24 = sub_1B0E43988();
  v25 = sub_1B0E45908();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *&v55 = v27;
    *v26 = 68158722;
    *(v26 + 4) = 2;
    *(v26 + 8) = 256;
    v43 = v19;
    v28 = v41;
    v29 = *(v23 + *(v41 + 20));
    sub_1B038D690(v23, _s6LoggerVMa_0);
    *(v26 + 10) = v29;
    v30 = v22;
    v31 = v46;
    *(v26 + 11) = 2082;
    v32 = *(v30 + *(v28 + 20) + 4);
    sub_1B038D690(v30, _s6LoggerVMa_0);
    v33 = ConnectionID.debugDescription.getter(v32);
    v35 = sub_1B0399D64(v33, v34, &v55);

    *(v26 + 13) = v35;
    *(v26 + 21) = 2048;
    v36 = *(*(v31 + 16) + OBJC_IVAR____TtC15IMAP2Connection10Connection_underlyingID);

    *(v26 + 23) = v36;

    *(v26 + 31) = 2082;
    v37 = sub_1B0399D64(v43, v20, &v55);

    *(v26 + 33) = v37;
    _os_log_impl(&dword_1B0389000, v24, v25, "[%.*hhx-%{public}s] C%llu %{public}s", v26, 0x29u);
    swift_arrayDestroy();
    MEMORY[0x1B272C230](v27, -1, -1);
    MEMORY[0x1B272C230](v26, -1, -1);

    v38 = v45;
  }

  else
  {

    sub_1B038D690(v23, _s6LoggerVMa_0);

    sub_1B038D690(v22, _s6LoggerVMa_0);
    v38 = v21;
  }

  sub_1B038D690(v38, _s6LoggerVMa_0);
}

uint64_t sub_1B0BDCD94(uint64_t a1, unint64_t a2, int a3)
{
  v4 = v3;
  v40 = a3;
  v41 = a2;
  v42 = type metadata accessor for ConnectionEvent(0);
  MEMORY[0x1EEE9AC00](v42);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = _s6LoggerVMa_0(0);
  MEMORY[0x1EEE9AC00](v39);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for OutboundContent(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1B0E44468();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = (&v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = *(v4 + 24);
  *v17 = v18;
  (*(v14 + 104))(v17, *MEMORY[0x1E69E8020], v13, v15);
  v19 = v18;
  LOBYTE(v18) = sub_1B0E44488();
  result = (*(v14 + 8))(v17, v13);
  if (v18)
  {
    v21 = (v4 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_runningCommands);
    swift_beginAccess();
    v22 = sub_1B0C26F08(*v21);
    if (v23)
    {
      v24 = v4 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger;
      sub_1B038C9A4(v4 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger, v9, _s6LoggerVMa_0);

      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      v25 = sub_1B0E43988();
      v26 = sub_1B0E439A8();
      (*(*(v26 - 8) + 8))(v9, v26);
      v27 = sub_1B0E458D8();
      if (os_log_type_enabled(v25, v27))
      {
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        v43 = v29;
        *v28 = 68158210;
        *(v28 + 4) = 2;
        *(v28 + 8) = 256;
        v30 = v24 + *(v39 + 20);
        *(v28 + 10) = *v30;

        *(v28 + 11) = 2082;
        v31 = ConnectionID.debugDescription.getter(*(v30 + 4));
        v33 = sub_1B0399D64(v31, v32, &v43);

        *(v28 + 13) = v33;
        _os_log_impl(&dword_1B0389000, v25, v27, "[%.*hhx-%{public}s] Trying to send handshake reply, but no barrier command is running.", v28, 0x15u);
        __swift_destroy_boxed_opaque_existential_0Tm(v29);
        MEMORY[0x1B272C230](v29, -1, -1);
        MEMORY[0x1B272C230](v28, -1, -1);
      }

      else
      {
      }

      sub_1B0E43E28();
      type metadata accessor for ConnectionEvent.FailureReason(0);
      swift_storeEnumTagMultiPayload();
      swift_storeEnumTagMultiPayload();
      sub_1B0426594(v7);
      v37 = type metadata accessor for ConnectionEvent;
      v38 = v7;
    }

    else
    {
      v34 = v22;
      v35 = v41;
      *v12 = a1;
      *(v12 + 1) = v35;
      v36 = v40 & 1;
      v12[16] = v40 & 1;
      swift_storeEnumTagMultiPayload();
      sub_1B0BD30C8(a1, v35, v36);
      sub_1B0BEAF64(v34, v12);
      v37 = type metadata accessor for OutboundContent;
      v38 = v12;
    }

    return sub_1B038D690(v38, v37);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1B0BDD224(uint64_t a1, void (*a2)(void *, uint64_t, uint64_t, uint64_t))
{
  v100 = a2;
  v92 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5468, &qword_1B0ED0458);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v84 - v4;
  v91 = type metadata accessor for ConnectionEvent(0);
  v102 = *(v91 - 8);
  MEMORY[0x1EEE9AC00](v91);
  v98 = &v84 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v84 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5480, &qword_1B0ED0470);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v84 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v104 = (&v84 - v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5470, &unk_1B0ED0460);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v97 = &v84 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5488, &qword_1B0ED0478);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v101 = (&v84 - v18);
  v103 = type metadata accessor for CommandConnection.RecentErrors.Error.Kind(0);
  MEMORY[0x1EEE9AC00](v103);
  v90 = &v84 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v84 - v21;
  v23 = type metadata accessor for CommandConnection.RecentErrors.Error(0);
  v24 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v86 = &v84 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v85 = &v84 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v93 = (&v84 - v29);
  MEMORY[0x1EEE9AC00](v30);
  v94 = &v84 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v87 = &v84 - v33;
  MEMORY[0x1EEE9AC00](v34);
  v95 = &v84 - v35;
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v84 - v37;
  v84 = v2;
  v39 = *v2;
  v40 = (*v2 + 16);
  v41 = *v40;
  v99 = *v2;
  if (v41)
  {
    v42 = 0;
    while (v42 < *v40)
    {
      sub_1B038C9A4(v39 + ((*(v24 + 80) + 32) & ~*(v24 + 80)) + *(v24 + 72) * v42, v38, type metadata accessor for CommandConnection.RecentErrors.Error);
      sub_1B038CB4C(&v38[*(v23 + 20)], v22, type metadata accessor for CommandConnection.RecentErrors.Error.Kind);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if ((EnumCaseMultiPayload - 1) < 5)
      {
        sub_1B038D690(v22, type metadata accessor for CommandConnection.RecentErrors.Error.Kind);
      }

      else if (EnumCaseMultiPayload != 6)
      {
        sub_1B038D690(v22, type metadata accessor for CommandConnection.RecentErrors.Error.Kind);
        v89 = 0;
        goto LABEL_10;
      }

      ++v42;
      v39 = v99;
      if (v41 == v42)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

LABEL_9:
  v89 = 1;
LABEL_10:
  v44 = v97;
  sub_1B03B5C80(v100, v97, &qword_1EB6E5470, &unk_1B0ED0460);
  v45 = v104;
  sub_1B038CB4C(v44, v104, type metadata accessor for ConnectionEvent);
  v46 = v102;
  v47 = v102 + 56;
  v100 = *(v102 + 56);
  v48 = v91;
  v100(v45, 0, 1, v91);
  v49 = v101;
  v100(v101, 1, 1, v48);
  sub_1B0BE2E5C(v104, v49);
  sub_1B0BE2ECC(v49, v12);
  v97 = v47;
  v100(v49, 1, 1, v48);
  v50 = *(v46 + 48);
  v102 = v46 + 48;
  v96 = v50;
  v51 = v50(v12, 1, v48);
  v52 = v92;
  if (v51 != 1)
  {
    v104 = MEMORY[0x1E69E7CC0];
    v88 = v12;
    while (1)
    {
      sub_1B038CB4C(v12, v9, type metadata accessor for ConnectionEvent);
      v64 = v98;
      sub_1B038C9A4(v9, v98, type metadata accessor for ConnectionEvent);
      sub_1B04380C8(v52, v64, v5);
      sub_1B038D690(v9, type metadata accessor for ConnectionEvent);
      if ((*(v24 + 48))(v5, 1, v23) != 1)
      {
        break;
      }

      sub_1B0398EFC(v5, &qword_1EB6E5468, &qword_1B0ED0458);
LABEL_25:
      v63 = v101;
      sub_1B0BE2ECC(v101, v12);
      v100(v63, 1, 1, v48);
      if (v96(v12, 1, v48) == 1)
      {
        goto LABEL_12;
      }
    }

    v65 = v9;
    v66 = v5;
    v67 = v23;
    v68 = v66;
    v69 = v94;
    sub_1B038CB4C(v66, v94, type metadata accessor for CommandConnection.RecentErrors.Error);
    v70 = v90;
    if ((v89 & 1) == 0)
    {
      sub_1B038C9A4(v69 + *(v67 + 20), v90, type metadata accessor for CommandConnection.RecentErrors.Error.Kind);
      v71 = swift_getEnumCaseMultiPayload();
      if ((v71 - 1) >= 5)
      {
        v69 = v94;
        if (!v71)
        {
          sub_1B038D690(v70, type metadata accessor for CommandConnection.RecentErrors.Error.Kind);
          sub_1B038D690(v69, type metadata accessor for CommandConnection.RecentErrors.Error);
          v23 = v67;
          v5 = v68;
          v9 = v65;
LABEL_35:
          v12 = v88;
          goto LABEL_25;
        }
      }

      else
      {
        sub_1B038D690(v70, type metadata accessor for CommandConnection.RecentErrors.Error.Kind);
        v69 = v94;
      }
    }

    v72 = v87;
    sub_1B038CB4C(v69, v87, type metadata accessor for CommandConnection.RecentErrors.Error);
    sub_1B038CB4C(v72, v95, type metadata accessor for CommandConnection.RecentErrors.Error);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v104 = sub_1B0446C54(0, v104[2] + 1, 1, v104);
    }

    v23 = v67;
    v74 = v104[2];
    v73 = v104[3];
    v5 = v68;
    if (v74 >= v73 >> 1)
    {
      v104 = sub_1B0446C54((v73 > 1), v74 + 1, 1, v104);
    }

    v9 = v65;
    v75 = v104;
    v104[2] = v74 + 1;
    sub_1B038CB4C(v95, v75 + ((*(v24 + 80) + 32) & ~*(v24 + 80)) + *(v24 + 72) * v74, type metadata accessor for CommandConnection.RecentErrors.Error);
    v48 = v91;
    v52 = v92;
    goto LABEL_35;
  }

  v104 = MEMORY[0x1E69E7CC0];
LABEL_12:
  sub_1B0398EFC(v101, &qword_1EB6E5488, &qword_1B0ED0478);
  v53 = MonotonicTime.init(seconds:since:)(v52, -4.0);
  v54 = *v40;
  if (!*v40)
  {
    v62 = 0;
    goto LABEL_43;
  }

  v55 = 0;
  v56 = (*(v24 + 80) + 32) & ~*(v24 + 80);
  v57 = *(v24 + 72);
  v103 = v56;
  v58 = v84;
  v59 = v99;
  while (1)
  {
    v60 = *(v99 + v56);
    v61 = v53 - v60;
    if (v53 >= v60)
    {
      if (__OFSUB__(v53, v60))
      {
        goto LABEL_66;
      }
    }

    else
    {
      if (__OFSUB__(v60, v53))
      {
        goto LABEL_67;
      }

      v61 = v53 - v60;
      if (__OFSUB__(0, v60 - v53))
      {
        goto LABEL_68;
      }
    }

    if (v61 > 0)
    {
      break;
    }

    ++v55;
    v56 += v57;
    if (v54 == v55)
    {
      v62 = v54;
      goto LABEL_43;
    }
  }

  v62 = v55 + 1;
  if (__OFADD__(v55, 1))
  {
    goto LABEL_78;
  }

  if (v62 != v54)
  {
    v76 = v57 + v56;
    while (v62 < v54)
    {
      v77 = v59;
      v78 = v93;
      sub_1B038C9A4(v59 + v76, v93, type metadata accessor for CommandConnection.RecentErrors.Error);
      v79 = *v78;
      v80 = __OFSUB__(v53, *v78);
      v81 = v53 - *v78;
      if (v81 < 0 != v80)
      {
        v80 = __OFSUB__(v79, v53);
        v82 = v79 - v53;
        if (v80)
        {
          goto LABEL_71;
        }

        v81 = -v82;
        if (__OFSUB__(0, v82))
        {
          goto LABEL_72;
        }
      }

      else if (v80)
      {
        goto LABEL_70;
      }

      sub_1B038D690(v93, type metadata accessor for CommandConnection.RecentErrors.Error);
      if (v81 > 0)
      {
        v59 = v77;
      }

      else
      {
        v59 = v77;
        if (v62 != v55)
        {
          if ((v55 & 0x8000000000000000) != 0)
          {
            goto LABEL_73;
          }

          v83 = *v40;
          if (v55 >= *v40)
          {
            goto LABEL_74;
          }

          sub_1B038C9A4(v77 + v103 + v55 * v57, v85, type metadata accessor for CommandConnection.RecentErrors.Error);
          if (v62 >= v83)
          {
            goto LABEL_75;
          }

          sub_1B038C9A4(v77 + v76, v86, type metadata accessor for CommandConnection.RecentErrors.Error);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v77 = sub_1B0C0DF7C(v77);
          }

          sub_1B0BE2D30(v86, v77 + v103 + v55 * v57);
          if (v62 >= v77[2])
          {
            goto LABEL_76;
          }

          sub_1B0BE2D30(v85, v77 + v76);
          v59 = v77;
          *v58 = v77;
        }

        ++v55;
      }

      ++v62;
      v40 = v59 + 2;
      v54 = v59[2];
      v76 += v57;
      if (v62 == v54)
      {
        goto LABEL_42;
      }
    }

LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
    goto LABEL_77;
  }

  v62 = v54;
LABEL_42:
  v54 = v55;
  if (v62 >= v55)
  {
LABEL_43:
    sub_1B0445E64(v54, v62);
    sub_1B0445F24(v104);
    return;
  }

LABEL_77:
  __break(1u);
LABEL_78:
  __break(1u);
}

uint64_t sub_1B0BDDD9C(uint64_t a1)
{
  v2 = v1;
  v107 = type metadata accessor for ConnectionState(0);
  MEMORY[0x1EEE9AC00](v107);
  v108 = &v93[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v5);
  v106 = &v93[-v6];
  MEMORY[0x1EEE9AC00](v7);
  v105 = &v93[-v8];
  MEMORY[0x1EEE9AC00](v9);
  v104 = &v93[-v10];
  MEMORY[0x1EEE9AC00](v11);
  v102 = &v93[-v12];
  MEMORY[0x1EEE9AC00](v13);
  v101 = &v93[-v14];
  v98 = _s6LoggerVMa_0(0);
  MEMORY[0x1EEE9AC00](v98);
  v16 = &v93[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v93[-v18];
  v20 = sub_1B0E441D8();
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v97 = &v93[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v23);
  v100 = &v93[-v24];
  MEMORY[0x1EEE9AC00](v25);
  v99 = &v93[-v26];
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v93[-v28];
  v30 = sub_1B0E43DF8();
  v31 = *(v30 - 8);
  v32 = MEMORY[0x1EEE9AC00](v30);
  v34 = &v93[-((v33 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v35 = *(v31 + 16);
  v103 = a1;
  v35(v34, a1, v30, v32);
  if ((*(v31 + 88))(v34, v30) == *MEMORY[0x1E6977C10])
  {
    (*(v31 + 96))(v34, v30);
    if ((*(v21 + 88))(v34, v20) == *MEMORY[0x1E6977D68] && ((*(v21 + 16))(v29, v34, v20), (*(v21 + 96))(v29, v20), *v29 == 89))
    {
      v100 = v20;
      v36 = v2 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger;
      sub_1B038C9A4(v2 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger, v19, _s6LoggerVMa_0);
      swift_retain_n();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();

      v37 = sub_1B0E43988();
      v38 = sub_1B0E439A8();
      (*(*(v38 - 8) + 8))(v19, v38);
      v39 = sub_1B0E45908();
      if (os_log_type_enabled(v37, v39))
      {
        v40 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        v109[0] = v41;
        *v40 = 68158466;
        *(v40 + 4) = 2;
        *(v40 + 8) = 256;
        v42 = v36 + *(v98 + 20);
        *(v40 + 10) = *v42;

        *(v40 + 11) = 2082;
        v43 = ConnectionID.debugDescription.getter(*(v42 + 4));
        v45 = sub_1B0399D64(v43, v44, v109);

        *(v40 + 13) = v45;
        *(v40 + 21) = 2048;
        v46 = *(*(v2 + 16) + OBJC_IVAR____TtC15IMAP2Connection10Connection_underlyingID);

        *(v40 + 23) = v46;

        _os_log_impl(&dword_1B0389000, v37, v39, "[%.*hhx-%{public}s] [C%llu] Connection did fail: Operation canceled", v40, 0x1Fu);
        __swift_destroy_boxed_opaque_existential_0Tm(v41);
        MEMORY[0x1B272C230](v41, -1, -1);
        MEMORY[0x1B272C230](v40, -1, -1);
      }

      else
      {
      }

      (*(v21 + 8))(v34, v100);
    }

    else
    {
      v47 = v99;
      (*(v21 + 32))(v99, v34, v20);
      v48 = v2 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger;
      sub_1B038C9A4(v2 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger, v16, _s6LoggerVMa_0);
      swift_retain_n();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      v49 = v100;
      v96 = *(v21 + 16);
      v96(v100, v47, v20);

      v50 = sub_1B0E43988();
      v51 = sub_1B0E439A8();
      (*(*(v51 - 8) + 8))(v16, v51);
      v52 = sub_1B0E458E8();
      if (os_log_type_enabled(v50, v52))
      {
        v53 = swift_slowAlloc();
        v94 = v52;
        v54 = v53;
        v95 = swift_slowAlloc();
        v109[0] = v95;
        *v54 = 68158722;
        *(v54 + 4) = 2;
        *(v54 + 8) = 256;
        v55 = v48 + *(v98 + 20);
        *(v54 + 10) = *v55;

        *(v54 + 11) = 2082;
        v56 = ConnectionID.debugDescription.getter(*(v55 + 4));
        v58 = v50;
        v59 = sub_1B0399D64(v56, v57, v109);

        *(v54 + 13) = v59;
        *(v54 + 21) = 2048;
        v60 = *(*(v2 + 16) + OBJC_IVAR____TtC15IMAP2Connection10Connection_underlyingID);

        *(v54 + 23) = v60;

        *(v54 + 31) = 2080;
        v61 = v100;
        v96(v97, v100, v20);
        v62 = sub_1B0E44BA8();
        v64 = v63;
        v65 = *(v21 + 8);
        v65(v61, v20);
        v66 = sub_1B0399D64(v62, v64, v109);
        v67 = v47;
        v68 = v66;

        *(v54 + 33) = v68;
        _os_log_impl(&dword_1B0389000, v58, v94, "[%.*hhx-%{public}s] [C%llu] Connection did fail: %s", v54, 0x29u);
        v69 = v95;
        swift_arrayDestroy();
        MEMORY[0x1B272C230](v69, -1, -1);
        MEMORY[0x1B272C230](v54, -1, -1);

        v65(v67, v20);
      }

      else
      {

        v70 = *(v21 + 8);
        v70(v49, v20);
        v70(v47, v20);
      }
    }
  }

  else
  {
    (*(v31 + 8))(v34, v30);
  }

  v71 = v102;
  v72 = OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_state;
  swift_beginAccess();
  v73 = v101;
  sub_1B038C9A4(v2 + v72, v101, type metadata accessor for ConnectionState);
  sub_1B038CB4C(v73, v71, type metadata accessor for ConnectionState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    sub_1B038D690(v71, type metadata accessor for ConnectionState);
LABEL_14:
    v75 = 0;
    goto LABEL_17;
  }

  if (EnumCaseMultiPayload == 3)
  {
    sub_1B038D690(v71, type metadata accessor for ConnectionState);
  }

  else if (EnumCaseMultiPayload != 4)
  {
    goto LABEL_14;
  }

  v75 = 1;
LABEL_17:
  v76 = OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_connectionTraits;
  swift_beginAccess();
  v77 = *(v2 + v76);
  v78 = v104;
  sub_1B038C9A4(v2 + v72, v104, type metadata accessor for ConnectionState);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B042D344(v103, v77);

  v79 = v105;
  sub_1B038C9A4(v2 + v72, v105, type metadata accessor for ConnectionState);
  swift_beginAccess();
  sub_1B044B474(v78, v2 + v72);
  swift_endAccess();
  sub_1B042D734(v79);
  sub_1B038D690(v79, type metadata accessor for ConnectionState);
  sub_1B038D690(v78, type metadata accessor for ConnectionState);
  v80 = v106;
  sub_1B038C9A4(v2 + v72, v106, type metadata accessor for ConnectionState);
  v81 = v80;
  v82 = v108;
  sub_1B038CB4C(v81, v108, type metadata accessor for ConnectionState);
  result = swift_getEnumCaseMultiPayload();
  if (result <= 2)
  {
    sub_1B038D690(v82, type metadata accessor for ConnectionState);
    return sub_1B0BDE9C8();
  }

  if (result == 3)
  {
    result = sub_1B038D690(v82, type metadata accessor for ConnectionState);
  }

  else if (result != 4)
  {
    return sub_1B0BDE9C8();
  }

  if ((v75 & 1) == 0)
  {
    v84 = *(v2 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_id);
    v85 = OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_runningCommands;
    swift_beginAccess();
    v86 = *(v2 + v85);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    LODWORD(v84) = sub_1B044CC18(v84, v86);
    v88 = v87;
    v90 = v89;

    v91 = swift_allocObject();
    v92 = OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_recentErrors;
    swift_beginAccess();
    *(v91 + 16) = *(v2 + v92);
    *(v91 + 24) = v84;
    *(v91 + 32) = v88;
    *(v91 + 40) = v90;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0BDAD70(v91 | 0x1000000000000000);
  }

  return result;
}

uint64_t sub_1B0BDE9C8()
{
  v1 = v0;
  v2 = type metadata accessor for ConnectionState(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v13[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v13[-v6];
  v8 = OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_connectionTraits;
  swift_beginAccess();
  v9 = *(v1 + v8);
  v10 = OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger;
  v11 = OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_state;
  swift_beginAccess();
  sub_1B038C9A4(v1 + v11, v7, type metadata accessor for ConnectionState);
  v14 = sub_1B0BE2F54;
  v15 = v1;

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B042E7B4(sub_1B0447A6C, v13, sub_1B0BE2C90, v1, (v1 + v10));
  sub_1B0BF4820(v9, v1 + v10, v7, v1);

  sub_1B0BF58B0(v1 + v10, v7, v1);
  sub_1B038C9A4(v1 + v11, v4, type metadata accessor for ConnectionState);
  swift_beginAccess();
  sub_1B044B474(v7, v1 + v11);
  swift_endAccess();
  sub_1B042D734(v4);
  sub_1B038D690(v4, type metadata accessor for ConnectionState);
  sub_1B038D690(v7, type metadata accessor for ConnectionState);
}

uint64_t sub_1B0BDEBD8()
{
  v1 = v0;
  v2 = type metadata accessor for ConnectionState(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v35 - v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v35 - v9;
  v40 = type metadata accessor for UnauthenticatedStateWithTasks(0);
  MEMORY[0x1EEE9AC00](v40);
  v41 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1B0E44468();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = (&v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = *(v1 + 24);
  *v16 = v17;
  (*(v13 + 104))(v16, *MEMORY[0x1E69E8020], v12, v14);
  v18 = v17;
  LOBYTE(v17) = sub_1B0E44488();
  result = (*(v13 + 8))(v16, v12);
  if (v17)
  {
    v20 = OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_state;
    swift_beginAccess();
    sub_1B038C9A4(v1 + v20, v10, type metadata accessor for ConnectionState);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v36 = v20;
      v37 = v2;
      v38 = v7;
      v39 = v4;
      sub_1B038CB4C(v10, v41, type metadata accessor for UnauthenticatedStateWithTasks);
      v21 = OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger;
      sub_1B0BE2CCC(v42);
      v44[8] = v42[8];
      v44[9] = v42[9];
      v44[10] = v42[10];
      v45 = v43;
      v44[4] = v42[4];
      v44[5] = v42[5];
      v44[6] = v42[6];
      v44[7] = v42[7];
      v44[2] = v42[2];
      v44[3] = v42[3];
      v44[0] = v42[0];
      v44[1] = v42[1];
      v22 = sub_1B0C33814(v44, v1 + v21);
      v23 = *(v22 + 2);
      if (v23)
      {
        v24 = v22 + 7;
        do
        {
          v25 = *(v24 - 3);
          v26 = *(v24 - 2);
          v28 = *(v24 - 1);
          v27 = *v24;
          sub_1B0BE2C30(v25);
          sub_1B044A72C(v25, v26, v28, v27);
          sub_1B044B428(v25, v26, v28, v27);
          v24 += 4;
          --v23;
        }

        while (v23);
      }

      v29 = v41;
      v30 = v38;
      sub_1B038C9A4(v41, v38, type metadata accessor for UnauthenticatedStateWithTasks);
      swift_storeEnumTagMultiPayload();
      v31 = v36;
      v32 = v39;
      sub_1B038C9A4(v1 + v36, v39, type metadata accessor for ConnectionState);
      swift_beginAccess();
      sub_1B044B474(v30, v1 + v31);
      swift_endAccess();
      sub_1B042D734(v32);
      sub_1B038D690(v32, type metadata accessor for ConnectionState);
      sub_1B038D690(v30, type metadata accessor for ConnectionState);
      sub_1B0BDE9C8();
      v33 = type metadata accessor for UnauthenticatedStateWithTasks;
      v34 = v29;
    }

    else
    {
      v33 = type metadata accessor for ConnectionState;
      v34 = v10;
    }

    return sub_1B038D690(v34, v33);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B0BDF024@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for ConnectionConfiguration(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  v8 = sub_1B0447ABC();
  if (v10 == 1)
  {
    v11 = 0;
    v12 = 0;
    v13 = 0x8000000000000000;
  }

  else
  {
    v11 = v9;
    v12 = v10;
    if (*(v7 + OBJC_IVAR____TtC15IMAP2Connection10Connection_configuration + *(v4 + 28)) >= 0)
    {
      v13 = v8 | 0x4000000000000000;
    }

    else
    {
      v13 = v8;
    }
  }

  sub_1B038C9A4(v7 + OBJC_IVAR____TtC15IMAP2Connection10Connection_configuration, v6, type metadata accessor for ConnectionConfiguration);
  v14 = sub_1B0447BC4();
  v16 = v15;
  v18 = v17;
  result = sub_1B038D690(v6, type metadata accessor for ConnectionConfiguration);
  *a2 = v13;
  a2[1] = v11;
  a2[2] = v12;
  a2[3] = v14;
  a2[4] = v16;
  a2[5] = v18;
  return result;
}

uint64_t sub_1B0BDF160(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1B0BDF1C0(a1);
  }

  return result;
}

uint64_t sub_1B0BDF1C0(uint64_t a1)
{
  v2 = v1;
  v58 = a1;
  v56 = type metadata accessor for ConnectionConfiguration(0);
  MEMORY[0x1EEE9AC00](v56);
  v4 = &v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ConnectionState(0);
  MEMORY[0x1EEE9AC00](v5);
  v60 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v59 = &v49 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v49 - v10;
  v57 = type metadata accessor for UnauthenticatedStateWithTasks(0);
  MEMORY[0x1EEE9AC00](v57);
  v61 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1B0E44468();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = (&v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = *(v2 + 24);
  *v17 = v18;
  (*(v14 + 104))(v17, *MEMORY[0x1E69E8020], v13, v15);
  v19 = v18;
  v20 = sub_1B0E44488();
  result = (*(v14 + 8))(v17, v13);
  if (v20)
  {
    v22 = OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_state;
    swift_beginAccess();
    sub_1B038C9A4(v2 + v22, v11, type metadata accessor for ConnectionState);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1B038CB4C(v11, v61, type metadata accessor for UnauthenticatedStateWithTasks);
      v23 = *(v2 + 16);
      v24 = sub_1B0447ABC();
      v54 = v22;
      v55 = v5;
      v52 = v25;
      v53 = v24;
      v51 = v26;
      if (v26 == 1)
      {
        v56 = 0;
        v27 = 0;
        v28 = 0x8000000000000000;
      }

      else
      {
        if (*(v23 + OBJC_IVAR____TtC15IMAP2Connection10Connection_configuration + *(v56 + 28)) >= 0)
        {
          v28 = v24 | 0x4000000000000000;
        }

        else
        {
          v28 = v24;
        }

        v56 = v25;
        v27 = v26;
      }

      v31 = v58;
      sub_1B038C9A4(v23 + OBJC_IVAR____TtC15IMAP2Connection10Connection_configuration, v4, type metadata accessor for ConnectionConfiguration);
      v32 = sub_1B0447BC4();
      v34 = v33;
      v36 = v35;
      sub_1B038D690(v4, type metadata accessor for ConnectionConfiguration);
      v37 = OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger;
      *&v62 = v31;
      *(&v62 + 1) = v28;
      *&v63 = v56;
      *(&v63 + 1) = v27;
      v58 = v32;
      *&v64 = v32;
      *(&v64 + 1) = v34;
      v56 = v34;
      v50 = v36;
      *&v65 = v36;
      sub_1B0BE2C24(&v62);
      v74[8] = v70;
      v74[9] = v71;
      v74[10] = v72;
      v75 = v73;
      v74[4] = v66;
      v74[5] = v67;
      v74[6] = v68;
      v74[7] = v69;
      v74[2] = v64;
      v74[3] = v65;
      v74[0] = v62;
      v74[1] = v63;
      v38 = sub_1B0C33814(v74, v2 + v37);
      v39 = *(v38 + 2);
      if (v39)
      {
        v40 = v38 + 7;
        do
        {
          v42 = *(v40 - 3);
          v41 = *(v40 - 2);
          v43 = *(v40 - 1);
          v44 = *v40;
          sub_1B0BE2C30(v42);
          sub_1B044A72C(v42, v41, v43, v44);
          sub_1B044B428(v42, v41, v43, v44);
          v40 += 4;
          --v39;
        }

        while (v39);
      }

      sub_1B0429C7C(v53, v52, v51);
      sub_1B0429C7C(v58, v56, v50);
      v45 = v61;
      v46 = v59;
      sub_1B038C9A4(v61, v59, type metadata accessor for UnauthenticatedStateWithTasks);
      swift_storeEnumTagMultiPayload();
      v47 = v54;
      v48 = v60;
      sub_1B038C9A4(v2 + v54, v60, type metadata accessor for ConnectionState);
      swift_beginAccess();
      sub_1B044B474(v46, v2 + v47);
      swift_endAccess();
      sub_1B042D734(v48);
      sub_1B038D690(v48, type metadata accessor for ConnectionState);
      sub_1B038D690(v46, type metadata accessor for ConnectionState);
      sub_1B0BDE9C8();
      v29 = type metadata accessor for UnauthenticatedStateWithTasks;
      v30 = v45;
    }

    else
    {
      v29 = type metadata accessor for ConnectionState;
      v30 = v11;
    }

    return sub_1B038D690(v30, v29);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B0BDF750(__int128 *a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1B0BDF7B0(a1);
  }

  return result;
}

uint64_t sub_1B0BDF7B0(__int128 *a1)
{
  v2 = v1;
  v3 = a1[1];
  v58 = *a1;
  v59 = v3;
  v4 = a1[3];
  v60 = a1[2];
  v61 = v4;
  v5 = type metadata accessor for ConnectionState(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v42 = &v37 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v37 - v11;
  v41 = type metadata accessor for UnauthenticatedStateWithTasks(0);
  MEMORY[0x1EEE9AC00](v41);
  v43 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1B0E44468();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = (&v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = *(v2 + 24);
  *v18 = v19;
  (*(v15 + 104))(v18, *MEMORY[0x1E69E8020], v14, v16);
  v20 = v19;
  LOBYTE(v19) = sub_1B0E44488();
  result = (*(v15 + 8))(v18, v14);
  if (v19)
  {
    v22 = OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_state;
    swift_beginAccess();
    sub_1B038C9A4(v2 + v22, v12, type metadata accessor for ConnectionState);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v38 = v22;
      v39 = v5;
      v40 = v7;
      sub_1B038CB4C(v12, v43, type metadata accessor for UnauthenticatedStateWithTasks);
      v23 = OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger;
      v44 = v58;
      v45 = v59;
      v46 = v60;
      v47 = v61;
      sub_1B0BE2C84(&v44);
      v56[8] = v52;
      v56[9] = v53;
      v56[10] = v54;
      v57 = v55;
      v56[4] = v48;
      v56[5] = v49;
      v56[6] = v50;
      v56[7] = v51;
      v56[2] = v46;
      v56[3] = v47;
      v56[0] = v44;
      v56[1] = v45;
      v24 = sub_1B0C33814(v56, v2 + v23);
      v25 = *(v24 + 2);
      if (v25)
      {
        v26 = v24 + 7;
        do
        {
          v27 = *(v26 - 3);
          v28 = *(v26 - 2);
          v30 = *(v26 - 1);
          v29 = *v26;
          sub_1B0BE2C30(v27);
          sub_1B044A72C(v27, v28, v30, v29);
          sub_1B044B428(v27, v28, v30, v29);
          v26 += 4;
          --v25;
        }

        while (v25);
      }

      v31 = v42;
      v32 = v43;
      sub_1B038C9A4(v43, v42, type metadata accessor for UnauthenticatedStateWithTasks);
      swift_storeEnumTagMultiPayload();
      v33 = v38;
      v34 = v40;
      sub_1B038C9A4(v2 + v38, v40, type metadata accessor for ConnectionState);
      swift_beginAccess();
      sub_1B044B474(v31, v2 + v33);
      swift_endAccess();
      sub_1B042D734(v34);
      sub_1B038D690(v34, type metadata accessor for ConnectionState);
      sub_1B038D690(v31, type metadata accessor for ConnectionState);
      sub_1B0BDE9C8();
      v35 = type metadata accessor for UnauthenticatedStateWithTasks;
      v36 = v32;
    }

    else
    {
      v35 = type metadata accessor for ConnectionState;
      v36 = v12;
    }

    return sub_1B038D690(v36, v35);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1B0BDFC1C(uint64_t a1)
{
  v3 = _s6LoggerVMa_0(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v97 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v97 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v97 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v97 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v97 - v16;
  v18 = static MonotonicTime.now()();
  v19 = sub_1B0BE07D8(v18);
  if ((v20 & 1) == 0 || v19)
  {
    return;
  }

  v97 = v1;
  v21 = (v1 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_runningCommands);
  swift_beginAccess();
  v22 = 0;
  v23 = *v21;
  v24 = *(*v21 + 16);
  v25 = v24 + 1;
  v26 = 56;
  while (--v25)
  {
    v27 = *(v23 + v26);
    v26 += 40;
    v28 = v27 == 2;
    v29 = __OFADD__(v22, v28);
    v22 += v28;
    if (v29)
    {
      __break(1u);
      break;
    }
  }

  if (v22 > 2)
  {
    v30 = v97 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger;
    sub_1B038C9A4(v97 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger, v5, _s6LoggerVMa_0);

    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v31 = sub_1B0E43988();
    v32 = sub_1B0E439A8();
    (*(*(v32 - 8) + 8))(v5, v32);
    v33 = sub_1B0E458E8();
    if (os_log_type_enabled(v31, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v99[0] = v35;
      *v34 = 68158466;
      *(v34 + 4) = 2;
      *(v34 + 8) = 256;
      v36 = v30 + *(v3 + 20);
      *(v34 + 10) = *v36;

      *(v34 + 11) = 2082;
      v37 = ConnectionID.debugDescription.getter(*(v36 + 4));
      v39 = sub_1B0399D64(v37, v38, v99);

      *(v34 + 13) = v39;
      *(v34 + 21) = 2048;
      *(v34 + 23) = v22;
      _os_log_impl(&dword_1B0389000, v31, v33, "[%.*hhx-%{public}s] Connection has %ld IDLE running.", v34, 0x1Fu);
      __swift_destroy_boxed_opaque_existential_0Tm(v35);
      MEMORY[0x1B272C230](v35, -1, -1);
      MEMORY[0x1B272C230](v34, -1, -1);

LABEL_31:
      CommandConnection.cancel()();
      return;
    }

LABEL_30:

    goto LABEL_31;
  }

  v40 = a1;
  if (!v24)
  {
    goto LABEL_23;
  }

  v41 = (v23 + 64);
  v40 = a1;
  do
  {
    v42 = *v41;
    if (*v41 >= v40)
    {
      v42 = v40;
    }

    if (*(v41 - 8) == 2)
    {
      v40 = v42;
    }

    v41 += 5;
    --v24;
  }

  while (v24);
  if (v40 <= a1)
  {
    goto LABEL_23;
  }

  if (__OFSUB__(v40, a1))
  {
    goto LABEL_53;
  }

  v43 = a1 - v40;
  if (__OFSUB__(0, v40 - a1))
  {
    __break(1u);
LABEL_23:
    v43 = a1 - v40;
    if (!__OFSUB__(a1, v40))
    {
      goto LABEL_24;
    }

    __break(1u);
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

LABEL_24:
  v44 = v43 / 1000000000.0;
  if (v44 >= 570.0)
  {
    v58 = v97 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger;
    sub_1B038C9A4(v97 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger, v8, _s6LoggerVMa_0);

    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v31 = sub_1B0E43988();
    v59 = sub_1B0E439A8();
    (*(*(v59 - 8) + 8))(v8, v59);
    v60 = sub_1B0E458E8();
    if (os_log_type_enabled(v31, v60))
    {
      v61 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      v99[0] = v62;
      *v61 = 68158466;
      *(v61 + 4) = 2;
      *(v61 + 8) = 256;
      v63 = v58 + *(v3 + 20);
      *(v61 + 10) = *v63;

      *(v61 + 11) = 2082;
      v64 = ConnectionID.debugDescription.getter(*(v63 + 4));
      v66 = sub_1B0399D64(v64, v65, v99);

      *(v61 + 13) = v66;
      *(v61 + 21) = 2048;
      *(v61 + 23) = v44;
      _os_log_impl(&dword_1B0389000, v31, v60, "[%.*hhx-%{public}s] Connection has IDLE that has been running for %f s.", v61, 0x1Fu);
      __swift_destroy_boxed_opaque_existential_0Tm(v62);
      MEMORY[0x1B272C230](v62, -1, -1);
      MEMORY[0x1B272C230](v61, -1, -1);

      goto LABEL_31;
    }

    goto LABEL_30;
  }

  v45 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B0C27108(v45, v99);

  if (v99[1])
  {
    sub_1B0398EFC(v99, &qword_1EB6E5490, &unk_1B0ED0480);
    v46 = v97;
    goto LABEL_27;
  }

  v67 = *v21;
  v46 = v97;
  if (!*(v67 + 16))
  {
LABEL_27:
    v47 = v46 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger;
    sub_1B038C9A4(v46 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger, v11, _s6LoggerVMa_0);

    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v48 = sub_1B0E43988();
    v49 = sub_1B0E439A8();
    (*(*(v49 - 8) + 8))(v11, v49);
    v50 = sub_1B0E458D8();
    if (os_log_type_enabled(v48, v50))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v98 = v52;
      *v51 = 68158210;
      *(v51 + 4) = 2;
      *(v51 + 8) = 256;
      v53 = v47 + *(v3 + 20);
      *(v51 + 10) = *v53;

      *(v51 + 11) = 2082;
      v54 = ConnectionID.debugDescription.getter(*(v53 + 4));
      v56 = sub_1B0399D64(v54, v55, &v98);

      *(v51 + 13) = v56;
      _os_log_impl(&dword_1B0389000, v48, v50, "[%.*hhx-%{public}s] Stuck check: no (non-IDLE) commands are currently running.", v51, 0x15u);
      __swift_destroy_boxed_opaque_existential_0Tm(v52);
      MEMORY[0x1B272C230](v52, -1, -1);
      v57 = v51;
LABEL_29:
      MEMORY[0x1B272C230](v57, -1, -1);

      return;
    }

    goto LABEL_50;
  }

  v68 = *(*(v97 + 16) + OBJC_IVAR____TtC15IMAP2Connection10Connection_lastMessageTime);
  if (v68 <= a1)
  {
LABEL_42:
    v69 = a1 - v68;
    if (!__OFSUB__(a1, v68))
    {
      goto LABEL_43;
    }

LABEL_55:
    __break(1u);
    return;
  }

  if (__OFSUB__(v68, a1))
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  v69 = a1 - v68;
  if (__OFSUB__(0, v68 - a1))
  {
    __break(1u);
    goto LABEL_42;
  }

LABEL_43:
  v70 = v69 / 1000000000.0;
  if (v70 >= 2.0)
  {
    v71 = *(v46 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_id);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    LOBYTE(v71) = sub_1B044CC18(v71, v67);
    v73 = v72;

    v74 = sub_1B0BE4C1C(v71, v73);
    v76 = v75;

    v77 = v46 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger;
    if (v70 >= 87.0)
    {
      sub_1B038C9A4(v46 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger, v14, _s6LoggerVMa_0);

      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v87 = sub_1B0E43988();
      v88 = sub_1B0E439A8();
      (*(*(v88 - 8) + 8))(v14, v88);
      v89 = sub_1B0E458E8();

      if (os_log_type_enabled(v87, v89))
      {
        v90 = swift_slowAlloc();
        v91 = swift_slowAlloc();
        v98 = v91;
        *v90 = 68158978;
        *(v90 + 4) = 2;
        *(v90 + 8) = 256;
        v92 = v77 + *(v3 + 20);
        *(v90 + 10) = *v92;

        *(v90 + 11) = 2082;
        v93 = ConnectionID.debugDescription.getter(*(v92 + 4));
        v95 = sub_1B0399D64(v93, v94, &v98);

        *(v90 + 13) = v95;
        *(v90 + 21) = 1040;
        *(v90 + 23) = 1;
        *(v90 + 27) = 2048;
        *(v90 + 29) = v70;
        *(v90 + 37) = 2082;
        v96 = sub_1B0399D64(v74, v76, &v98);

        *(v90 + 39) = v96;
        _os_log_impl(&dword_1B0389000, v87, v89, "[%.*hhx-%{public}s] Connection appears to have been stuck for %.*f s. Running commands: %{public}s. Cancelling.", v90, 0x2Fu);
        swift_arrayDestroy();
        MEMORY[0x1B272C230](v91, -1, -1);
        MEMORY[0x1B272C230](v90, -1, -1);
      }

      else
      {
      }

      goto LABEL_31;
    }

    sub_1B038C9A4(v46 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger, v17, _s6LoggerVMa_0);

    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v48 = sub_1B0E43988();
    v78 = sub_1B0E439A8();
    (*(*(v78 - 8) + 8))(v17, v78);
    v79 = sub_1B0E458E8();

    if (os_log_type_enabled(v48, v79))
    {
      v80 = swift_slowAlloc();
      v81 = swift_slowAlloc();
      v98 = v81;
      *v80 = 68158978;
      *(v80 + 4) = 2;
      *(v80 + 8) = 256;
      v82 = v77 + *(v3 + 20);
      *(v80 + 10) = *v82;

      *(v80 + 11) = 2082;
      v83 = ConnectionID.debugDescription.getter(*(v82 + 4));
      v85 = sub_1B0399D64(v83, v84, &v98);

      *(v80 + 13) = v85;
      *(v80 + 21) = 1040;
      *(v80 + 23) = 1;
      *(v80 + 27) = 2048;
      *(v80 + 29) = v70;
      *(v80 + 37) = 2082;
      v86 = sub_1B0399D64(v74, v76, &v98);

      *(v80 + 39) = v86;
      _os_log_impl(&dword_1B0389000, v48, v79, "[%.*hhx-%{public}s] Connection appears to have been stuck for %.*f s. Running commands: %{public}s.", v80, 0x2Fu);
      swift_arrayDestroy();
      MEMORY[0x1B272C230](v81, -1, -1);
      v57 = v80;
      goto LABEL_29;
    }

LABEL_50:
  }
}

uint64_t sub_1B0BE07D8(uint64_t a1)
{
  v3 = type metadata accessor for ConnectionState(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for UnauthenticatedStateWithTasks(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_state;
  swift_beginAccess();
  sub_1B038C9A4(v1 + v9, v5, type metadata accessor for ConnectionState);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    goto LABEL_7;
  }

  sub_1B038CB4C(v5, v8, type metadata accessor for UnauthenticatedStateWithTasks);
  v10 = *(v8 + 1);
  *&result = COERCE_DOUBLE(sub_1B038D690(v8, type metadata accessor for UnauthenticatedStateWithTasks));
  if (v10 <= a1)
  {
    v12 = a1 - v10;
    if (!__OFSUB__(a1, v10))
    {
      goto LABEL_9;
    }

LABEL_14:
    __break(1u);
    return result;
  }

  if (__OFSUB__(v10, a1))
  {
    __break(1u);
    goto LABEL_14;
  }

  v12 = a1 - v10;
  if (__OFSUB__(0, v10 - a1))
  {
    __break(1u);
LABEL_7:
    sub_1B038D690(v5, type metadata accessor for ConnectionState);
    *&result = 0.0;
    return result;
  }

LABEL_9:
  if (v12 / 1000000000.0 <= 180.0)
  {
    return 1;
  }

  *&result = v12 / 1000000000.0;
  return result;
}

uint64_t sub_1B0BE09B8(uint64_t a1)
{
  v2 = type metadata accessor for ConnectionState(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v16[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v16[-v6 - 8];
  v8 = OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_state;
  swift_beginAccess();
  sub_1B038C9A4(a1 + v8, v7, type metadata accessor for ConnectionState);
  sub_1B038CB4C(v7, v4, type metadata accessor for ConnectionState);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    memcpy(v16, v4, 0x162uLL);
    v9 = *(v4 + 21);
    v17[8] = *(v4 + 20);
    v17[9] = v9;
    v18 = *(v4 + 176);
    v10 = *(v4 + 17);
    v17[4] = *(v4 + 16);
    v17[5] = v10;
    v11 = *(v4 + 19);
    v17[6] = *(v4 + 18);
    v17[7] = v11;
    v12 = *(v4 + 13);
    v17[0] = *(v4 + 12);
    v17[1] = v12;
    v13 = *(v4 + 15);
    v17[2] = *(v4 + 14);
    v17[3] = v13;
    if (sub_1B0BE2780(v17) == 2)
    {
      sub_1B03DB9A4(v17);
      sub_1B0BE278C(v16);
      return 1;
    }

    sub_1B0BE278C(v16);
  }

  else
  {
    sub_1B038D690(v4, type metadata accessor for ConnectionState);
  }

  return 0;
}

uint64_t sub_1B0BE0B70()
{
  v1 = sub_1B0E43828();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = type metadata accessor for OutboundContent(0);
  MEMORY[0x1EEE9AC00](v52);
  v53 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = _s6LoggerVMa_0(0);
  MEMORY[0x1EEE9AC00](v55);
  v7 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v47 - v9;
  v11 = sub_1B0E44468();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = (&v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = v0[3];
  *v15 = v16;
  (*(v12 + 104))(v15, *MEMORY[0x1E69E8020], v11, v13);
  v17 = v16;
  v18 = sub_1B0E44488();
  (*(v12 + 8))(v15, v11);
  if (v18)
  {
    v54 = v10;
    v48 = v7;
    v49 = v4;
    v50 = v2;
    v51 = v1;
    v19 = OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_commandCounter;
    swift_beginAccess();
    v7 = (*(v0 + v19) + 1) & 0xFFFFFF;
    *(v0 + v19) = v7;
    v4 = *(v0 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_id);
    v18 = (v0 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_runningCommands);
    swift_beginAccess();
    v15 = v0;
    v10 = static MonotonicTime.now()();
    v2 = *v18;
    v0 = MEMORY[0x1E69E7CD0];
    sub_1B0C27278(MEMORY[0x1E69E7CD0], 0, *v18);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v18 = v2;
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  v2 = sub_1B0C0C57C(0, *(v2 + 16) + 1, 1, v2);
  *v18 = v2;
LABEL_3:
  v21 = v4;
  v23 = *(v2 + 16);
  v22 = *(v2 + 24);
  if (v23 >= v22 >> 1)
  {
    v46 = sub_1B0C0C57C((v22 > 1), v23 + 1, 1, v2);
    v24 = v7;
    v2 = v46;
  }

  else
  {
    v24 = v7;
  }

  *(v2 + 16) = v23 + 1;
  v25 = v2 + 40 * v23;
  *(v25 + 32) = v4;
  *(v25 + 36) = v24;
  *(v25 + 40) = v0;
  *(v25 + 48) = 0;
  *(v25 + 56) = 2;
  *(v25 + 64) = v10;
  *v18 = v2;
  v26 = v24;
  swift_endAccess();
  swift_endAccess();
  v27 = v15 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger;
  v28 = v48;
  sub_1B038C9A4(v15 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger, v48, _s6LoggerVMa_0);

  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  v29 = sub_1B0E43988();
  v30 = sub_1B0E439A8();
  (*(*(v30 - 8) + 8))(v28, v30);
  v31 = sub_1B0E458D8();
  if (os_log_type_enabled(v29, v31))
  {
    v32 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    v56[0] = v54;
    *v32 = 68158466;
    *(v32 + 4) = 2;
    *(v32 + 8) = 256;
    v33 = &v27[*(v55 + 20)];
    *(v32 + 10) = *v33;

    *(v32 + 11) = 2082;
    v34 = ConnectionID.debugDescription.getter(*(v33 + 1));
    v36 = sub_1B0399D64(v34, v35, v56);

    *(v32 + 13) = v36;
    *(v32 + 21) = 2082;
    v21 = v4;
    v37 = v26 << 32;
    v38 = Tag.debugDescription.getter(v21 | ((v26 & 0xFFFFFF) << 32));
    v40 = sub_1B0399D64(v38, v39, v56);

    *(v32 + 23) = v40;
    _os_log_impl(&dword_1B0389000, v29, v31, "[%.*hhx-%{public}s] Sending IDLE as %{public}s", v32, 0x1Fu);
    v41 = v54;
    swift_arrayDestroy();
    MEMORY[0x1B272C230](v41, -1, -1);
    MEMORY[0x1B272C230](v32, -1, -1);
  }

  else
  {

    v37 = v26 << 32;
  }

  v42 = v51;
  v43 = v53;
  swift_storeEnumTagMultiPayload();
  sub_1B0BEAF64(v37 | v21, v43);
  sub_1B038D690(v43, type metadata accessor for OutboundContent);
  v44 = v49;
  sub_1B0E43838();
  sub_1B03CE2E0(v44);
  return (*(v50 + 8))(v44, v42);
}

uint64_t sub_1B0BE1334()
{
  v1 = sub_1B0E43828();
  v62 = *(v1 - 8);
  v63 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v61 = &v55 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = type metadata accessor for OutboundContent(0);
  MEMORY[0x1EEE9AC00](v59);
  v60 = &v55 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = _s6LoggerVMa_0(0);
  MEMORY[0x1EEE9AC00](v65);
  v64 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v55 - v6;
  v66 = type metadata accessor for ClientCommand(0);
  MEMORY[0x1EEE9AC00](v66);
  v9 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v55 - v11;
  v13 = sub_1B0E44468();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for ConnectionState(0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v55 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_state;
  swift_beginAccess();
  sub_1B038C9A4(v0 + v20, v19, type metadata accessor for ConnectionState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = sub_1B038D690(v19, type metadata accessor for ConnectionState);
  if (EnumCaseMultiPayload != 2)
  {
    return result;
  }

  v23 = (v0 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_runningCommands);
  result = swift_beginAccess();
  if (*(*v23 + 16))
  {
    return result;
  }

  v24 = *(v0 + 24);
  *v16 = v24;
  (*(v14 + 104))(v16, *MEMORY[0x1E69E8020], v13);
  v25 = v24;
  LOBYTE(v24) = sub_1B0E44488();
  v27 = *(v14 + 8);
  v26 = v14 + 8;
  v27(v16, v13);
  if ((v24 & 1) == 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  v28 = OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_commandCounter;
  swift_beginAccess();
  LODWORD(v57) = *(v0 + v28);
  v29 = (v57 + 1) & 0xFFFFFF;
  *(v0 + v28) = v29;
  v58 = v0;
  v56 = *(v0 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_id);
  swift_beginAccess();
  swift_storeEnumTagMultiPayload();
  v30 = sub_1B0C1AD1C();
  sub_1B038D690(v12, type metadata accessor for ClientCommand);
  swift_storeEnumTagMultiPayload();
  v0 = sub_1B0C1B22C();
  sub_1B038D690(v9, type metadata accessor for ClientCommand);
  v31 = static MonotonicTime.now()();
  v16 = *v23;
  sub_1B0C27278(v30, 0, *v23);
  v57 = v31;
  v26 = v29;
  v7 = v56;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v23 = v16;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_13:
    v16 = sub_1B0C0C57C(0, *(v16 + 2) + 1, 1, v16);
    *v23 = v16;
  }

  v33 = v58;
  v34 = v64;
  v35 = v65;
  v37 = *(v16 + 2);
  v36 = *(v16 + 3);
  if (v37 >= v36 >> 1)
  {
    v16 = sub_1B0C0C57C((v36 > 1), v37 + 1, 1, v16);
  }

  *(v16 + 2) = v37 + 1;
  v38 = &v16[40 * v37];
  *(v38 + 8) = v7;
  *(v38 + 9) = v26;
  *(v38 + 5) = v0;
  *(v38 + 6) = 0;
  v38[56] = 1;
  *(v38 + 8) = v57;
  *v23 = v16;
  swift_endAccess();
  swift_endAccess();
  v39 = v33 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger;
  sub_1B038C9A4(v33 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger, v34, _s6LoggerVMa_0);

  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  v40 = sub_1B0E43988();
  v41 = sub_1B0E439A8();
  (*(*(v41 - 8) + 8))(v34, v41);
  v42 = sub_1B0E458D8();
  if (os_log_type_enabled(v40, v42))
  {
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v67[0] = v44;
    *v43 = 68158466;
    *(v43 + 4) = 2;
    *(v43 + 8) = 256;
    v45 = v39 + *(v35 + 20);
    *(v43 + 10) = *v45;

    *(v43 + 11) = 2082;
    v46 = ConnectionID.debugDescription.getter(*(v45 + 4));
    v48 = sub_1B0399D64(v46, v47, v67);

    *(v43 + 13) = v48;
    *(v43 + 21) = 2082;
    v49 = v26 << 32;
    v50 = Tag.debugDescription.getter(v7 | ((v26 & 0xFFFFFF) << 32));
    v52 = sub_1B0399D64(v50, v51, v67);

    *(v43 + 23) = v52;
    _os_log_impl(&dword_1B0389000, v40, v42, "[%.*hhx-%{public}s] Sending NOOP as %{public}s", v43, 0x1Fu);
    swift_arrayDestroy();
    MEMORY[0x1B272C230](v44, -1, -1);
    MEMORY[0x1B272C230](v43, -1, -1);
  }

  else
  {

    v49 = v26 << 32;
  }

  v53 = v60;
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  sub_1B0BEAF64(v49 | v7, v53);
  sub_1B038D690(v53, type metadata accessor for OutboundContent);
  v54 = v61;
  sub_1B0E43838();
  sub_1B03CE2E0(v54);
  return (*(v62 + 8))(v54, v63);
}

uint64_t sub_1B0BE1D00(uint64_t a1, unint64_t a2)
{
  sub_1B03B2000(a1, a2);
  sub_1B0BE1E48(a1, a2);
  v4 = sub_1B0E44C68();

  return v4;
}

uint64_t sub_1B0BE1D6C@<X0>(uint64_t *a3@<X8>)
{
  result = sub_1B0E44C68();
  *a3 = result;
  a3[1] = v5;
  return result;
}

uint64_t sub_1B0BE1DA8(uint64_t a1, char a2)
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_1B0E46138();
LABEL_9:
  result = sub_1B0E46308();
  *v2 = result;
  return result;
}

void sub_1B0BE1E48(uint64_t a1, unint64_t a2)
{
  v4 = sub_1B0E42FC8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v8 != 2)
    {
LABEL_12:
      sub_1B0391D50(a1, a2);
      return;
    }

    v11 = *(a1 + 16);
    v10 = *(a1 + 24);
    v9 = v10 - v11;
    if (!__OFSUB__(v10, v11))
    {
      if (v9)
      {
        goto LABEL_8;
      }

      goto LABEL_12;
    }

    __break(1u);
LABEL_15:
    __break(1u);
  }

  else
  {
    if (v8)
    {
      goto LABEL_10;
    }

    v9 = BYTE6(a2);
    if (!BYTE6(a2))
    {
      goto LABEL_12;
    }

LABEL_8:
    while (1)
    {
      sub_1B03B7A3C(v9, 0);
      v12 = sub_1B0E42EB8();
      sub_1B0391D50(a1, a2);
      v13 = *(v5 + 8);
      v5 += 8;
      v13(v7, v4);
      if (v12 == v9)
      {
        break;
      }

      __break(1u);
LABEL_10:
      v14 = HIDWORD(a1) - a1;
      if (__OFSUB__(HIDWORD(a1), a1))
      {
        goto LABEL_15;
      }

      v9 = v14;
      if (!v14)
      {
        goto LABEL_12;
      }
    }
  }
}

uint64_t sub_1B0BE1FC4(uint64_t a1, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v2)
    {
      return sub_1B0E44C68();
    }

    goto LABEL_10;
  }

  if (v2 != 2)
  {
    return sub_1B0E44C68();
  }

  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  a1 = sub_1B0E42A98();
  if (a1)
  {
    a1 = sub_1B0E42AC8();
    if (__OFSUB__(v3, a1))
    {
      goto LABEL_18;
    }
  }

  if (__OFSUB__(v4, v3))
  {
    __break(1u);
LABEL_10:
    v5 = a1;
    if (a1 >> 32 >= a1)
    {
      if (!sub_1B0E42A98() || !__OFSUB__(v5, sub_1B0E42AC8()))
      {
        goto LABEL_15;
      }

LABEL_19:
      __break(1u);
    }

    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_15:
  sub_1B0E42AB8();
  return sub_1B0E44C68();
}

void sub_1B0BE2170()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5470, &unk_1B0ED0460);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = (&v45[-1] - v3);
  v5 = type metadata accessor for ConnectionEvent(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = (&v45[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = _s6LoggerVMa_0(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v45[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v45[-1] - v12;
  v14 = static MonotonicTime.now()();
  v15 = sub_1B0BE07D8(v14);
  v16 = *&v15;
  if ((v17 & 1) == 0)
  {
    v28 = v0 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger;
    sub_1B038C9A4(v0 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger, v10, _s6LoggerVMa_0);

    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v29 = sub_1B0E43988();
    v30 = sub_1B0E439A8();
    (*(*(v30 - 8) + 8))(v10, v30);
    v31 = sub_1B0E458E8();
    if (!os_log_type_enabled(v29, v31))
    {

      goto LABEL_11;
    }

    v32 = v16;
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v45[0] = v34;
    *v33 = 68158466;
    *(v33 + 4) = 2;
    *(v33 + 8) = 256;
    v35 = v28 + *(v8 + 20);
    *(v33 + 10) = *v35;

    *(v33 + 11) = 2082;
    v36 = ConnectionID.debugDescription.getter(*(v35 + 4));
    v38 = sub_1B0399D64(v36, v37, v45);

    *(v33 + 13) = v38;
    *(v33 + 21) = 2048;
    v39 = round(v32);
    if ((*&v39 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v39 > -9.22337204e18)
    {
      if (v39 < 9.22337204e18)
      {
        *(v33 + 23) = v39;
        _os_log_impl(&dword_1B0389000, v29, v31, "[%.*hhx-%{public}s] Stuck for %ld seconds trying in unauthenticated state. Closing connection.", v33, 0x1Fu);
        __swift_destroy_boxed_opaque_existential_0Tm(v34);
        MEMORY[0x1B272C230](v34, -1, -1);
        MEMORY[0x1B272C230](v33, -1, -1);

LABEL_11:
        v40 = static MonotonicTime.now()();
        *v7 = 0;
        v7[1] = 0;
        v7[2] = 2;
        type metadata accessor for ConnectionEvent.FailureReason(0);
        swift_storeEnumTagMultiPayload();
        swift_storeEnumTagMultiPayload();
        v41 = OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_recentErrors;
        swift_beginAccess();
        sub_1B038C9A4(v7, v4, type metadata accessor for ConnectionEvent);
        sub_1B0BDD224(v40, v4);
        sub_1B0398EFC(v4, &qword_1EB6E5470, &unk_1B0ED0460);
        sub_1B038D690(v7, type metadata accessor for ConnectionEvent);
        swift_endAccess();
        v42 = swift_allocObject();
        *(v42 + 16) = *(v1 + v41);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        *(v42 + 24) = *ConnectionID.invalid.unsafeMutableAddressor();
        v43 = MEMORY[0x1E69E7CD0];
        *(v42 + 32) = MEMORY[0x1E69E7CD0];
        *(v42 + 40) = v43;
        sub_1B0BDAD70(v42 | 0x1000000000000000);

        sub_1B0E43E28();
        return;
      }

LABEL_16:
      __break(1u);
      return;
    }

    __break(1u);
    goto LABEL_16;
  }

  if (v15)
  {
    v18 = v0 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger;
    sub_1B038C9A4(v0 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger, v13, _s6LoggerVMa_0);

    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v19 = sub_1B0E43988();
    v20 = sub_1B0E439A8();
    (*(*(v20 - 8) + 8))(v13, v20);
    v21 = sub_1B0E45908();
    if (os_log_type_enabled(v19, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v45[0] = v23;
      *v22 = 68158210;
      *(v22 + 4) = 2;
      *(v22 + 8) = 256;
      v24 = v18 + *(v8 + 20);
      *(v22 + 10) = *v24;

      *(v22 + 11) = 2082;
      v25 = ConnectionID.debugDescription.getter(*(v24 + 4));
      v27 = sub_1B0399D64(v25, v26, v45);

      *(v22 + 13) = v27;
      _os_log_impl(&dword_1B0389000, v19, v21, "[%.*hhx-%{public}s] Checking stuck: waiting", v22, 0x15u);
      __swift_destroy_boxed_opaque_existential_0Tm(v23);
      MEMORY[0x1B272C230](v23, -1, -1);
      MEMORY[0x1B272C230](v22, -1, -1);
    }

    else
    {
    }
  }
}