uint64_t sub_1B0B0D1F4(uint64_t result, int a2, int a3)
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
      *(result + 32) = (a2 - 1);
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

uint64_t __swift_memcpy5_1(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for FlagDecoder(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[5])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for FlagDecoder(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 4) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 5) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 5) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_1B0B0D328()
{
  result = qword_1EB6DA2D8;
  if (!qword_1EB6DA2D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E3120, qword_1B0E9B270);
    sub_1B0B0D3AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DA2D8);
  }

  return result;
}

unint64_t sub_1B0B0D3AC()
{
  result = qword_1EB6DE230;
  if (!qword_1EB6DE230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DE230);
  }

  return result;
}

uint64_t sub_1B0B0D400(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B0B0D468(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B0B0D530(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MoveAndCopyMessages.CommandID(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B0B0D594(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
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

uint64_t sub_1B0B0D5DC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
      *(result + 120) = 1;
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

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1B0B0D648()
{
  result = sub_1B03D0770(&unk_1F2710EA8);
  qword_1EB737D30 = result;
  return result;
}

void sub_1B0B0D670(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for MailboxTaskLogger(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v22 - v8;
  sub_1B0A92638(a1, &v22 - v8);
  sub_1B0A92638(a1, v6);
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0B0E0FC(v2, v25);
  v10 = sub_1B0E43988();
  v11 = sub_1B0E45908();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v24 = v13;
    *v12 = 68159491;
    *(v12 + 4) = 2;
    *(v12 + 8) = 256;
    v14 = &v6[*(v4 + 20)];
    *(v12 + 10) = *v14;
    *(v12 + 11) = 2082;
    v15 = &v9[*(v4 + 20)];
    *(v12 + 13) = sub_1B0399D64(*(v15 + 1), *(v15 + 2), &v24);
    *(v12 + 21) = 1040;
    *(v12 + 23) = 2;
    *(v12 + 27) = 512;
    v16 = *(v14 + 12);
    sub_1B0A9269C(v6);
    *(v12 + 29) = v16;
    *(v12 + 31) = 2160;
    *(v12 + 33) = 0x786F626C69616DLL;
    *(v12 + 41) = 2085;
    v17 = *(v15 + 4);
    LODWORD(v15) = *(v15 + 10);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0A9269C(v9);
    v22 = v17;
    v23 = v15;
    v18 = sub_1B0E44BA8();
    v20 = sub_1B0399D64(v18, v19, &v24);

    *(v12 + 43) = v20;
    *(v12 + 51) = 2048;
    v21 = *(v26 + 16);
    sub_1B0B0E134(v25);
    *(v12 + 53) = v21;
    _os_log_impl(&dword_1B0389000, v10, v11, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Created task. %ld identifier(s).", v12, 0x3Du);
    swift_arrayDestroy();
    MEMORY[0x1B272C230](v13, -1, -1);
    MEMORY[0x1B272C230](v12, -1, -1);
  }

  else
  {
    sub_1B0B0E134(v25);
    sub_1B0A9269C(v6);

    sub_1B0A9269C(v9);
  }
}

void sub_1B0B0D924(uint64_t a1)
{
  v2 = v1;
  v4 = *(v1 + 40);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v5 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v6 = sub_1B03D753C(v5, v4);

  if (*(v6 + 16))
  {
    v7 = *(v2 + 24);
    v8 = *(v2 + 32);
    sub_1B0B25B64(v6, v7, v8);
  }

  else
  {

    v7 = *(v2 + 24);
    v8 = *(v2 + 32);
  }

  MEMORY[0x1EEE9AC00](v9);
  if (*(a1 + 192) == 1)
  {
    v11 = *(a1 + 176);
    v10 = *(a1 + 184);
    v14 = *(a1 + 168);
    v12 = v14;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0B2BE00(&v14, v7, v8, 0, sub_1B0B0DD00);
    sub_1B03BB638(v12, v11, v10, 1);
    v13 = v14;
    *(a1 + 176) = 0;
    *(a1 + 184) = 0;
    *(a1 + 168) = v13;
    *(a1 + 192) = 1;
  }
}

uint64_t sub_1B0B0DA6C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 112);
  v4 = *(type metadata accessor for MailboxSyncState(0) + 56);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(a1 + v4);
  sub_1B0B0DE00(v3, sub_1B0B0DD08, 0, isUniquelyReferenced_nonNull_native, &v7);

  *(a1 + v4) = v7;
  return result;
}

double sub_1B0B0DB0C()
{
  if (qword_1EB6DD4B8 != -1)
  {
    swift_once();
  }

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return result;
}

void sub_1B0B0DB7C(uint64_t a1@<X1>, uint64_t a2@<X3>, unint64_t *a3@<X8>, double a4@<D0>)
{
  if (sub_1B0A9F164(a1, a2, a4))
  {
    v6 = 0xF000000000000007;
  }

  else
  {
    v7 = swift_allocObject();
    v8 = *(v4 + 32);
    *(v7 + 16) = *(v4 + 24);
    *(v7 + 24) = v8;
    *(v7 + 32) = *(v4 + 40);
    v6 = v7 | 0xA000000000000002;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  }

  *a3 = v6;
}

unint64_t sub_1B0B0DC30()
{
  result = qword_1EB6DD4B0;
  if (!qword_1EB6DD4B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DD4B0);
  }

  return result;
}

unint64_t sub_1B0B0DC84(uint64_t a1)
{
  result = sub_1B0B0DCAC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B0B0DCAC()
{
  result = qword_1EB6DD4A8;
  if (!qword_1EB6DD4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DD4A8);
  }

  return result;
}

uint64_t sub_1B0B0DD08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *(a1 + 33);
  *a2 = *a1;
  *(a2 + 8) = v2;
  *(a2 + 16) = v4;
  *(a2 + 24) = v5;
  *(a2 + 32) = v6;
  *(a2 + 33) = v7;
  return sub_1B03B2000(v3, v2);
}

unint64_t sub_1B0B0DD38(unint64_t result)
{
  if (((result >> 59) & 0x1E | (result >> 2) & 1) == 0x15 && (*(v1 + 32) | (*(v1 + 32) << 32)) == (*((result & 0xFFFFFFFFFFFFFFBLL) + 0x18) | (*((result & 0xFFFFFFFFFFFFFFBLL) + 0x18) << 32)))
  {
    v2 = *((result & 0xFFFFFFFFFFFFFFBLL) + 0x20);
    result = sub_1B04520BC(*(v1 + 24), *((result & 0xFFFFFFFFFFFFFFBLL) + 0x10));
    if (result)
    {
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v4 = *(v1 + 112);
      sub_1B0B0DE00(v2, sub_1B0B0DD08, 0, isUniquelyReferenced_nonNull_native, &v4);

      *(v1 + 112) = v4;
    }
  }

  return result;
}

uint64_t sub_1B0B0DE00(uint64_t a1, void (*a2)(uint64_t *__return_ptr, __int128 *), uint64_t a3, char a4, void *a5)
{
  v58 = a5;
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
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

  v11 = 0;
  v41 = v10;
  v42 = v6;
  while (1)
  {
    v13 = v9;
    v14 = v11;
    if (!v9)
    {
      break;
    }

LABEL_12:
    v16 = __clz(__rbit64(v13)) | (v14 << 6);
    v17 = *(a1 + 56) + 24 * v16;
    v18 = *v17;
    v19 = *(v17 + 8);
    v20 = *(v17 + 16);
    LOBYTE(v17) = *(v17 + 17);
    v48 = *(*(a1 + 48) + 16 * v16);
    v49 = v18;
    v50 = v19;
    v51 = v20;
    v52 = v17;
    sub_1B03B2000(v48, *(&v48 + 1));
    a2(&v53, &v48);
    sub_1B0391D50(v48, *(&v48 + 1));
    v21 = v57;
    if ((v57 & 0xFF00) == 0x200)
    {
LABEL_22:
      sub_1B03D91F8(a1);
    }

    v23 = v53;
    v22 = v54;
    v45 = v55;
    v46 = v56;
    v47 = HIBYTE(v57);
    v24 = *v58;
    v26 = sub_1B0AE002C(v53, v54);
    v27 = v24[2];
    v28 = (v25 & 1) == 0;
    v29 = v27 + v28;
    if (__OFADD__(v27, v28))
    {
      goto LABEL_24;
    }

    v30 = v25;
    if (v24[3] >= v29)
    {
      if ((a4 & 1) == 0)
      {
        sub_1B0B8DE40();
      }
    }

    else
    {
      sub_1B0B30DF8(v29, a4 & 1);
      v31 = sub_1B0AE002C(v23, v22);
      if ((v30 & 1) != (v32 & 1))
      {
        goto LABEL_26;
      }

      v26 = v31;
    }

    v33 = (v13 - 1) & v13;
    v34 = *v58;
    if (v30)
    {
      sub_1B0391D50(v23, v22);
      v12 = v34[7] + 24 * v26;
      *v12 = v45;
      *(v12 + 8) = v46;
      *(v12 + 16) = v21 & 1;
      *(v12 + 17) = v47;
    }

    else
    {
      v34[(v26 >> 6) + 8] |= 1 << v26;
      v35 = (v34[6] + 16 * v26);
      *v35 = v23;
      v35[1] = v22;
      v36 = v34[7] + 24 * v26;
      *v36 = v45;
      *(v36 + 8) = v46;
      *(v36 + 16) = v21 & 1;
      *(v36 + 17) = v47;
      v37 = v34[2];
      v38 = __OFADD__(v37, 1);
      v39 = v37 + 1;
      if (v38)
      {
        goto LABEL_25;
      }

      v34[2] = v39;
    }

    a4 = 1;
    v11 = v14;
    v10 = v41;
    v6 = v42;
    v9 = v33;
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
      goto LABEL_22;
    }

    v13 = *(v6 + 8 * v14);
    ++v15;
    if (v13)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  result = sub_1B0E46BA8();
  __break(1u);
  return result;
}

uint64_t sub_1B0B0E178(uint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) == 0)
  {
    return a2;
  }

  __break(1u);
  return result;
}

__n128 __swift_memcpy114_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 56);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_1B0B0E22C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 114))
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

uint64_t sub_1B0B0E274(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 112) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 114) = 1;
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

    *(result + 114) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1B0B0E2E4(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Task.Logger(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v29[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v29[-v8 - 8];
  sub_1B03B1B00(a1, &v29[-v8 - 8], type metadata accessor for Task.Logger);
  sub_1B03B1B00(a1, v6, type metadata accessor for Task.Logger);
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0B11BF0(v2, v30);
  sub_1B0B11BF0(v2, v29);
  v10 = sub_1B0E43988();
  v11 = sub_1B0E45908();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v28 = v13;
    *v12 = 68158722;
    *(v12 + 4) = 2;
    *(v12 + 8) = 256;
    v14 = *&v6[*(v4 + 20)];
    sub_1B03B1D60(v6, type metadata accessor for Task.Logger);
    *(v12 + 10) = v14;
    *(v12 + 11) = 2082;
    v15 = &v9[*(v4 + 20)];
    v16 = v15[1];
    v17 = v15[2];
    v18 = v15[3];
    sub_1B0A982D8(*v15, v16, v17, v18);
    sub_1B03B1D60(v9, type metadata accessor for Task.Logger);
    if (v18 < 0)
    {
    }

    v19 = sub_1B0399D64(v16, v17, &v28);

    *(v12 + 13) = v19;
    *(v12 + 21) = 2080;
    if (v31)
    {
      v20 = 0x616C696176616E75;
    }

    else
    {
      v20 = 0x6574726F70707573;
    }

    if (v31)
    {
      v21 = 0xEB00000000656C62;
    }

    else
    {
      v21 = 0xE900000000000064;
    }

    sub_1B0B11C28(v30);
    v22 = sub_1B0399D64(v20, v21, &v28);

    *(v12 + 23) = v22;
    *(v12 + 31) = 2080;
    if (v29[113])
    {
      v23 = 256;
    }

    else
    {
      v23 = 0;
    }

    v24 = sub_1B0B6C628(v23 | v29[112]);
    v26 = v25;
    sub_1B0B11C28(v29);
    v27 = sub_1B0399D64(v24, v26, &v28);

    *(v12 + 33) = v27;
    _os_log_impl(&dword_1B0389000, v10, v11, "[%.*hhx-%{public}s] Created task (NAMESPACE: %s; LIST: %s).", v12, 0x29u);
    swift_arrayDestroy();
    MEMORY[0x1B272C230](v13, -1, -1);
    MEMORY[0x1B272C230](v12, -1, -1);
  }

  else
  {
    sub_1B03B1D60(v6, type metadata accessor for Task.Logger);

    sub_1B0B11C28(v29);
    sub_1B0B11C28(v30);
    sub_1B03B1D60(v9, type metadata accessor for Task.Logger);
  }
}

uint64_t sub_1B0B0E658@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X1>, uint64_t a3@<X2>, double a4@<D0>)
{
  if (*(v4 + 80) & 1) != 0 || *(v4 + 88) || (v6 = a2, v7 = a3, v8 = sub_1B0B70024(1, a2, a3, a4), a2 = v6, a3 = v7, (v8))
  {
    if (sub_1B0B70024(0, a2, a3, a4))
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4570, &qword_1B0EC55C8);
      v10 = *(*(v9 - 8) + 56);
      v11 = v9;
      v12 = a1;
      v13 = 1;
      goto LABEL_11;
    }

    if (*(v4 + 113))
    {
      v14 = 256;
    }

    else
    {
      v14 = 0;
    }

    v15 = sub_1B0B0E848(v14 | *(v4 + 112));
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4570, &qword_1B0EC55C8);
    v17 = &a1[*(v16 + 48)];
    *a1 = 0;
    v18 = ByteBufferAllocator.buffer(string:)(0x2AuLL, 0xE100000000000000, j__malloc, j__realloc, sub_1B0B815B8, sub_1B0439080);
    v21 = MailboxName.init(_:)(v18, v20, v19 & 0xFFFFFFFFFFFFFFLL);
    *v17 = 0;
    *(v17 + 2) = 0;
    *(v17 + 2) = v21;
    *(v17 + 6) = v22;
    *(v17 + 4) = v15;
    type metadata accessor for ClientCommand(0);
  }

  else
  {
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4570, &qword_1B0EC55C8);
    *a1 = 1;
    type metadata accessor for ClientCommand(0);
  }

  swift_storeEnumTagMultiPayload();
  v10 = *(*(v16 - 8) + 56);
  v12 = a1;
  v13 = 0;
  v11 = v16;
LABEL_11:

  return v10(v12, v13, 1, v11);
}

char *sub_1B0B0E848(__int16 a1)
{
  if (!a1)
  {
    result = MEMORY[0x1E69E7CC0];
    if ((a1 & 0x100) != 0)
    {
      return result;
    }

    goto LABEL_12;
  }

  if (a1 == 1)
  {
    result = sub_1B0AFF314(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v4 = *(result + 2);
    v3 = *(result + 3);
    v5 = v4 + 1;
    if (v4 >= v3 >> 1)
    {
      result = sub_1B0AFF314((v3 > 1), v4 + 1, 1, result);
    }

    v6 = &unk_1F27105C8;
  }

  else
  {
    result = sub_1B0AFF314(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v4 = *(result + 2);
    v7 = *(result + 3);
    v5 = v4 + 1;
    if (v4 >= v7 >> 1)
    {
      result = sub_1B0AFF314((v7 > 1), v4 + 1, 1, result);
    }

    v6 = &unk_1F27105F0;
  }

  *(result + 2) = v5;
  v8 = &result[64 * v4];
  *(v8 + 4) = v6;
  *(v8 + 8) = 0;
  if ((a1 & 0x100) == 0)
  {
LABEL_12:
    v9 = result;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = v9;
    }

    else
    {
      result = sub_1B0AFF314(0, *(v9 + 2) + 1, 1, v9);
    }

    v11 = *(result + 2);
    v10 = *(result + 3);
    if (v11 >= v10 >> 1)
    {
      result = sub_1B0AFF314((v10 > 1), v11 + 1, 1, result);
    }

    *(result + 2) = v11 + 1;
    v12 = &result[64 * v11];
    *(v12 + 4) = 2;
    *(v12 + 5) = 0;
    *(v12 + 6) = 0;
    *(v12 + 7) = 0;
    *(v12 + 8) = 0x8000000000000000;
    *(v12 + 9) = 0;
    *(v12 + 10) = 0;
    *(v12 + 11) = 0;
  }

  return result;
}

unint64_t sub_1B0B0E9BC(char a1, unint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v13 = type metadata accessor for Task.Logger(0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v33 - v18;
  if ((a1 & 1) == 0 && !*(*v6 + 16))
  {
    v39 = v17;
    sub_1B03B1B00(a6, &v33 - v18, type metadata accessor for Task.Logger);
    sub_1B03B1B00(a6, v15, type metadata accessor for Task.Logger);
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v20 = sub_1B0E43988();
    v21 = sub_1B0E458E8();
    if (os_log_type_enabled(v20, v21))
    {
      v37 = v21;
      v38 = v20;
      v22 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v40 = v36;
      *v22 = 68158210;
      *(v22 + 4) = 2;
      *(v22 + 8) = 256;
      v23 = v39;
      v34 = *&v15[*(v39 + 20)];
      v35 = type metadata accessor for Task.Logger;
      sub_1B03B1D60(v15, type metadata accessor for Task.Logger);
      *(v22 + 10) = v34;
      *(v22 + 11) = 2082;
      v24 = &v19[*(v23 + 20)];
      v25 = *v24;
      v27 = v24[2];
      v26 = v24[3];
      v28 = v24[4];
      v39 = v24[1];
      v34 = v28;
      sub_1B0A982D8(v25, v39, v27, v26);
      sub_1B03B1D60(v19, v35);
      if (v26 < 0)
      {
      }

      v29 = sub_1B0399D64(v39, v27, &v40);

      *(v22 + 13) = v29;
      v30 = v38;
      _os_log_impl(&dword_1B0389000, v38, v37, "[%.*hhx-%{public}s] LIST completed, but we didn’t get any mailboxes, notably no INBOX.", v22, 0x15u);
      v31 = v36;
      __swift_destroy_boxed_opaque_existential_0(v36);
      MEMORY[0x1B272C230](v31, -1, -1);
      MEMORY[0x1B272C230](v22, -1, -1);
    }

    else
    {
      sub_1B03B1D60(v15, type metadata accessor for Task.Logger);

      sub_1B03B1D60(v19, type metadata accessor for Task.Logger);
    }
  }

  return sub_1B0A9174C(a6, a2, a3, a4, a5);
}

uint64_t sub_1B0B0EC90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(v4 + 88);
  if (v9)
  {
    v11 = *(v4 + 96);
    v10 = *(v4 + 104);
    v12 = sub_1B07BA724(*(v4 + 88));
    if ((sub_1B0A9D054(0, a2, a4, v12) & 1) == 0)
    {
      v17 = swift_allocObject();
      result = 0;
      v17[2] = v9;
      v17[3] = v11;
      v17[4] = v10;
      return result;
    }
  }

  if ((sub_1B0A986FC(0, a1, a2, a3) & 1) != 0 && (v9 || *(v4 + 80)) && (sub_1B0A9D054(1, a2, a4, v13) & 1) == 0)
  {
    *(swift_allocObject() + 16) = *v4;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    return 1;
  }

  else if ((sub_1B0B11FE4(1, a1, a2, a4, sub_1B0A9D03C) & 1) != 0 && (sub_1B0A9D054(2, a2, a4, v14) & 1) == 0 && (v15 = *(v4 + 8), *(v15 + 16)))
  {
    *(swift_allocObject() + 16) = v15;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    return 2;
  }

  else
  {
    return 3;
  }
}

void sub_1B0B0EE38(NSObject *a1, uint64_t a2)
{
  v3 = v2;
  v222 = 0;
  v235 = type metadata accessor for MailboxTaskLogger(0);
  MEMORY[0x1EEE9AC00](v235);
  v234 = (&v219 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v239 = type metadata accessor for State.Logger(0);
  MEMORY[0x1EEE9AC00](v239);
  v240 = &v219 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v238 = type metadata accessor for Task.Logger(0);
  MEMORY[0x1EEE9AC00](v238);
  v9 = &v219 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v228 = &v219 - v11;
  MEMORY[0x1EEE9AC00](v12);
  *&v225 = &v219 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v226 = &v219 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v233 = &v219 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v237 = &v219 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v223 = &v219 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v224 = (&v219 - v23);
  MEMORY[0x1EEE9AC00](v24);
  v231 = (&v219 - v25);
  MEMORY[0x1EEE9AC00](v26);
  v232 = (&v219 - v27);
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v219 - v29;
  MEMORY[0x1EEE9AC00](v31);
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v219 - v33;
  MEMORY[0x1EEE9AC00](v35);
  isa = a1[15].isa;
  v236 = a2;
  v229 = v9;
  v227 = a1;
  if (isa)
  {
    v40 = &v219 - v38;
    v41 = a1;
    v42 = *(isa + 16);
    MEMORY[0x1EEE9AC00](v36);
    *&v230 = v43;
    *(&v219 - 2) = v43;
    v44 = v222;
    v45 = sub_1B0B11728(isa, sub_1B0B10A18);

    v41[15].isa = v45;
    v46 = v42 - v45[2];
    v222 = v44;
    if (v46 < 1)
    {
      a2 = v236;
    }

    else
    {
      a2 = v236;
      sub_1B03B1B00(v236, v40, type metadata accessor for Task.Logger);
      sub_1B03B1B00(a2, v34, type metadata accessor for Task.Logger);
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      v47 = sub_1B0E43988();
      v48 = sub_1B0E45908();
      if (os_log_type_enabled(v47, v48))
      {
        LODWORD(v221) = v48;
        v49 = swift_slowAlloc();
        v220 = swift_slowAlloc();
        v255[0] = v220;
        *v49 = 68158466;
        *(v49 + 4) = 2;
        *(v49 + 8) = 256;
        v50 = v238;
        v51 = *&v34[*(v238 + 20)];
        sub_1B03B1D60(v34, type metadata accessor for Task.Logger);
        *(v49 + 10) = v51;
        *(v49 + 11) = 2082;
        v52 = &v40[*(v50 + 20)];
        v53 = v52[1];
        v54 = v52[2];
        v55 = v52[3];
        sub_1B0A982D8(*v52, v53, v54, v55);
        sub_1B03B1D60(v40, type metadata accessor for Task.Logger);
        if (v55 < 0)
        {
        }

        v56 = sub_1B0399D64(v53, v54, v255);

        *(v49 + 13) = v56;
        *(v49 + 21) = 2048;
        *(v49 + 23) = v46;
        _os_log_impl(&dword_1B0389000, v47, v221, "[%.*hhx-%{public}s] Did remove %ld mailbox(es)", v49, 0x1Fu);
        v57 = v220;
        __swift_destroy_boxed_opaque_existential_0(v220);
        MEMORY[0x1B272C230](v57, -1, -1);
        MEMORY[0x1B272C230](v49, -1, -1);

        a2 = v236;
        v9 = v229;
      }

      else
      {
        sub_1B03B1D60(v34, type metadata accessor for Task.Logger);

        sub_1B03B1D60(v40, type metadata accessor for Task.Logger);
      }
    }

    v70 = v232;
    v3 = v230;
  }

  else
  {
    v58 = v37;
    sub_1B03B1B00(a2, v37, type metadata accessor for Task.Logger);
    sub_1B03B1B00(a2, v30, type metadata accessor for Task.Logger);
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v59 = sub_1B0E43988();
    v60 = sub_1B0E458E8();
    if (os_log_type_enabled(v59, v60))
    {
      LODWORD(v221) = v60;
      *&v230 = v3;
      v61 = swift_slowAlloc();
      v220 = swift_slowAlloc();
      v255[0] = v220;
      *v61 = 68158210;
      *(v61 + 4) = 2;
      *(v61 + 8) = 256;
      v62 = v238;
      v63 = *&v30[*(v238 + 20)];
      sub_1B03B1D60(v30, type metadata accessor for Task.Logger);
      *(v61 + 10) = v63;
      *(v61 + 11) = 2082;
      v64 = (v58 + *(v62 + 20));
      v65 = v64[1];
      v67 = v64[2];
      v66 = v64[3];
      sub_1B0A982D8(*v64, v65, v67, v66);
      sub_1B03B1D60(v58, type metadata accessor for Task.Logger);
      if (v66 < 0)
      {
      }

      v68 = sub_1B0399D64(v65, v67, v255);

      *(v61 + 13) = v68;
      _os_log_impl(&dword_1B0389000, v59, v221, "[%.*hhx-%{public}s] Setting empty list of mailboxes.", v61, 0x15u);
      v69 = v220;
      __swift_destroy_boxed_opaque_existential_0(v220);
      MEMORY[0x1B272C230](v69, -1, -1);
      MEMORY[0x1B272C230](v61, -1, -1);

      a2 = v236;
      v9 = v229;
      v3 = v230;
    }

    else
    {
      sub_1B03B1D60(v30, type metadata accessor for Task.Logger);

      sub_1B03B1D60(v58, type metadata accessor for Task.Logger);
    }

    v70 = v232;
    v71 = sub_1B0BAB530(MEMORY[0x1E69E7CC0]);
    v227[15].isa = v71;
  }

  v72 = v231;
  v73 = v3[11];
  v232 = v3[12];
  v74 = v3[13];
  if (!v73)
  {
    v70 = v224;
    sub_1B03B1B00(a2, v224, type metadata accessor for Task.Logger);
    v95 = v223;
    sub_1B03B1B00(a2, v223, type metadata accessor for Task.Logger);
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v75 = sub_1B0E43988();
    v96 = sub_1B0E45908();
    if (os_log_type_enabled(v75, v96))
    {
      LODWORD(v230) = v96;
      v231 = v75;
      v97 = swift_slowAlloc();
      v221 = swift_slowAlloc();
      v255[0] = v221;
      *v97 = 68158210;
      *(v97 + 4) = 2;
      *(v97 + 8) = 256;
      v98 = v238;
      v99 = *(v95 + *(v238 + 20));
      sub_1B03B1D60(v95, type metadata accessor for Task.Logger);
      *(v97 + 10) = v99;
      *(v97 + 11) = 2082;
      v100 = (v70 + *(v98 + 20));
      v101 = v100[1];
      v103 = v100[2];
      v102 = v100[3];
      sub_1B0A982D8(*v100, v101, v103, v102);
      sub_1B03B1D60(v70, type metadata accessor for Task.Logger);
      if (v102 < 0)
      {
      }

      v104 = sub_1B0399D64(v101, v103, v255);

      *(v97 + 13) = v104;
      v105 = v231;
      _os_log_impl(&dword_1B0389000, v231, v230, "[%.*hhx-%{public}s] Server isn't namespaced.", v97, 0x15u);
      v106 = v221;
      __swift_destroy_boxed_opaque_existential_0(v221);
      MEMORY[0x1B272C230](v106, -1, -1);
      MEMORY[0x1B272C230](v97, -1, -1);

      a2 = v236;
      v9 = v229;
      goto LABEL_28;
    }

    v107 = v95;
LABEL_27:
    sub_1B03B1D60(v107, type metadata accessor for Task.Logger);

    sub_1B03B1D60(v70, type metadata accessor for Task.Logger);
LABEL_28:
    v94 = v232;
    goto LABEL_29;
  }

  sub_1B03B1B00(a2, v70, type metadata accessor for Task.Logger);
  sub_1B03B1B00(a2, v72, type metadata accessor for Task.Logger);
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v75 = sub_1B0E43988();
  v76 = sub_1B0E45908();

  if (!os_log_type_enabled(v75, v76))
  {
    v107 = v72;
    goto LABEL_27;
  }

  LODWORD(v230) = v76;
  v231 = v75;
  v77 = swift_slowAlloc();
  v224 = swift_slowAlloc();
  *&v254[0] = v224;
  *v77 = 68158979;
  *(v77 + 4) = 2;
  *(v77 + 8) = 256;
  v78 = v238;
  v79 = *(&v72->isa + *(v238 + 20));
  sub_1B03B1D60(v72, type metadata accessor for Task.Logger);
  *(v77 + 10) = v79;
  *(v77 + 11) = 2082;
  v80 = (v70 + *(v78 + 20));
  v81 = v80[1];
  v83 = v80[2];
  v82 = v80[3];
  sub_1B0A982D8(*v80, v81, v83, v82);
  sub_1B03B1D60(v70, type metadata accessor for Task.Logger);
  if (v82 < 0)
  {
  }

  v84 = sub_1B0399D64(v81, v83, v254);

  *(v77 + 13) = v84;
  *(v77 + 21) = 2160;
  *(v77 + 23) = 0x786F626C69616DLL;
  *(v77 + 31) = 2085;
  v85 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v255[0] = MailboxName.init(_:)(v85);
  LODWORD(v255[1]) = v86;
  v87 = sub_1B0E44BA8();
  v89 = sub_1B0399D64(v87, v88, v254);

  *(v77 + 33) = v89;
  *(v77 + 41) = 2080;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v90 = v232;
  v91 = sub_1B0399D64(v232, v74, v254);

  *(v77 + 43) = v91;
  v92 = v231;
  _os_log_impl(&dword_1B0389000, v231, v230, "[%.*hhx-%{public}s] Server is namespaced: %{sensitive,mask.mailbox}s (%s)", v77, 0x33u);
  v93 = v224;
  swift_arrayDestroy();
  MEMORY[0x1B272C230](v93, -1, -1);
  MEMORY[0x1B272C230](v77, -1, -1);

  v94 = v90;
  a2 = v236;
  v9 = v229;
LABEL_29:
  v108 = v227;
  v109 = v227[18].isa;
  v227[18].isa = v73;
  v108[19].isa = v94;
  v108[20].isa = v74;
  sub_1B07BA724(v73);
  sub_1B07BA794(v109);
  BYTE1(v108[17].isa) = 0;
  v108[16].isa = static MonotonicTime.now()();
  LOBYTE(v108[17].isa) = 0;
  v110 = v237;
  sub_1B03B1B00(a2, v237, type metadata accessor for Task.Logger);
  v111 = *(v110 + *(v238 + 20));
  v112 = v240;
  sub_1B0E43998();
  *(v112 + *(v239 + 20)) = v111;
  sub_1B03B1D60(v110, type metadata accessor for Task.Logger);
  sub_1B0B86B3C(v112);
  sub_1B03B1D60(v112, type metadata accessor for State.Logger);
  memcpy(v255, v108, 0x108uLL);
  v113 = sub_1B0B38204();
  v115 = v113[2].isa;
  if (v115)
  {
    v240 = v115 - 1;
    v116 = 32;
    *&v114 = 68160515;
    v230 = v114;
    v232 = v113;
    while (1)
    {
      v239 = v116;
      v117 = *(&v113[2].isa + v116);
      v254[0] = *(&v113->isa + v116);
      v254[1] = v117;
      v118 = *(&v113[4].isa + v116);
      v119 = *(&v113[6].isa + v116);
      v120 = *(&v113[8].isa + v116);
      LOBYTE(v254[5]) = *(&v113[10].isa + v116);
      v254[3] = v119;
      v254[4] = v120;
      v254[2] = v118;
      v121 = WORD6(v254[0]);
      v122 = *&v254[0];
      v123 = DWORD2(v254[0]);
      v124 = v233;
      sub_1B03B1B00(a2, v233, type metadata accessor for Task.Logger);
      v125 = sub_1B0E439A8();
      v126 = v234;
      (*(*(v125 - 8) + 16))(v234, v124, v125);
      v127 = v124 + *(v238 + 20);
      v129 = *(v127 + 8);
      v128 = *(v127 + 16);
      v130 = *v127;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      swift_bridgeObjectRetain_n();
      sub_1B0B118A8(v254, v253);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B03B1D60(v124, type metadata accessor for Task.Logger);
      v131 = v126 + SHIDWORD(v235[2].isa);
      *v131 = v130;
      *(v131 + 8) = v129;
      *(v131 + 16) = v128;
      LODWORD(v237) = v121;
      *(v131 + 24) = v121;
      *(v131 + 32) = v122;
      *(v131 + 40) = v123;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B03B1D60(v126, type metadata accessor for MailboxTaskLogger);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0B118A8(v254, v253);
      sub_1B0B118A8(v254, v253);
      sub_1B0B118A8(v254, v253);
      sub_1B0B118A8(v254, v253);
      sub_1B0B118A8(v254, v253);
      sub_1B0B118A8(v254, v253);
      sub_1B0B118A8(v254, v253);
      sub_1B0B118A8(v254, v253);
      sub_1B0B118A8(v254, v253);
      v132 = sub_1B0E43988();
      v133 = sub_1B0E45908();
      if (os_log_type_enabled(v132, v133))
      {
        v134 = swift_slowAlloc();
        v231 = swift_slowAlloc();
        v246 = v231;
        *v134 = v230;
        *(v134 + 4) = 2;
        *(v134 + 8) = 256;
        *(v134 + 10) = v130;
        *(v134 + 11) = 2082;
        v135 = sub_1B0399D64(v129, v128, &v246);

        *(v134 + 13) = v135;
        *(v134 + 21) = 1040;
        *(v134 + 23) = 2;
        *(v134 + 27) = 512;

        *(v134 + 29) = v237;

        *(v134 + 31) = 2160;
        *(v134 + 33) = 0x786F626C69616DLL;
        *(v134 + 41) = 2085;
        v253[0] = v122;
        LODWORD(v253[1]) = v123;
        v136 = sub_1B0E44BA8();
        v138 = sub_1B0399D64(v136, v137, &v246);

        *(v134 + 43) = v138;
        *(v134 + 51) = 2048;
        sub_1B0B11904(v254);
        v139 = *&v254[1];
        if (BYTE8(v254[1]))
        {
          v139 = 0;
        }

        *(v134 + 53) = v139;
        sub_1B0B11904(v254);
        *(v134 + 61) = 1024;
        v140 = static MailboxOfInterest.LocalModification.__derived_enum_equals(_:_:)(*&v254[2], SDWORD2(v254[2]), 0, 0);
        sub_1B0B11904(v254);
        *(v134 + 63) = (v140 & 1) == 0;
        sub_1B0B11904(v254);
        *(v134 + 67) = 2048;
        sub_1B0B11904(v254);
        v141 = *&v254[3];
        if (BYTE8(v254[3]))
        {
          v141 = 0;
        }

        *(v134 + 69) = v141;
        sub_1B0B11904(v254);
        *(v134 + 77) = 1024;
        sub_1B0B11904(v254);
        v142 = HIDWORD(v254[3]);
        if (LOBYTE(v254[4]))
        {
          v142 = 0;
        }

        *(v134 + 79) = v142;
        sub_1B0B11904(v254);
        *(v134 + 83) = 2048;
        sub_1B0B11904(v254);
        v143 = *(&v254[4] + 1);
        if (LOBYTE(v254[5]))
        {
          v143 = 0;
        }

        *(v134 + 85) = v143;
        sub_1B0B11904(v254);
        _os_log_impl(&dword_1B0389000, v132, v133, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] local {highest-mod-seq: %llu, modifications: %{BOOL}d}, remote {count: %ld, next UID: %u, highest-mod-seq: %llu}", v134, 0x5Du);
        v144 = v231;
        swift_arrayDestroy();
        MEMORY[0x1B272C230](v144, -1, -1);
        v145 = v134;
        a2 = v236;
        MEMORY[0x1B272C230](v145, -1, -1);
      }

      else
      {
        sub_1B0B11904(v254);
        sub_1B0B11904(v254);
        sub_1B0B11904(v254);
        sub_1B0B11904(v254);
        sub_1B0B11904(v254);
        swift_bridgeObjectRelease_n();
        swift_bridgeObjectRelease_n();
        sub_1B0B11904(v254);
        sub_1B0B11904(v254);
        sub_1B0B11904(v254);
        sub_1B0B11904(v254);
        sub_1B0B11904(v254);
      }

      v113 = v232;
      if (!v240)
      {
        break;
      }

      --v240;
      v116 = v239 + 88;
    }

    v9 = v229;
  }

  else
  {
  }

  v146 = v227;
  memcpy(v254, v227, 0x108uLL);
  v147 = sub_1B03C5290();
  v148 = *(v147 + 16);
  memcpy(v253, v146, sizeof(v253));
  v149 = LOBYTE(v253[3]);
  v150 = BYTE1(v253[3]);
  v151 = v253[4];
  v152 = v253[7];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v153 = sub_1B0397D14();
  v154 = v153;
  if (v151 == 3 || v151 == 2)
  {

    LODWORD(v240) = 1;
    v155 = v226;
LABEL_49:
    v156 = v225;
    goto LABEL_50;
  }

  v216 = sub_1B0BAE1A4(v153);
  if (v150)
  {
    goto LABEL_95;
  }

  if (v151 == 1)
  {
    if (!v149)
    {
LABEL_95:
      v217 = v216 ^ 1;
      goto LABEL_96;
    }

    if (v149 == 1)
    {
      v217 = 1;
LABEL_96:
      LODWORD(v240) = v217;
      goto LABEL_97;
    }
  }

  else if (v151 || (v149 - 1) >= 2)
  {
    goto LABEL_95;
  }

  LODWORD(v240) = 0;
LABEL_97:
  v155 = v226;
  sub_1B0397E04(&unk_1F2710548, v152);
  sub_1B0BAE1A4(v154);
  v218 = sub_1B039109C(v152);

  if (v218)
  {
    goto LABEL_49;
  }

  v156 = v225;
  if (v150)
  {
    sub_1B0BAE1A4(v154);
  }

LABEL_50:

  sub_1B03B1B00(a2, v155, type metadata accessor for Task.Logger);
  sub_1B03B1B00(a2, v156, type metadata accessor for Task.Logger);
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  v157 = sub_1B0E43988();
  v158 = sub_1B0E45908();
  if (os_log_type_enabled(v157, v158))
  {
    v237 = v148;
    v239 = v147;
    v159 = v156;
    v160 = swift_slowAlloc();
    v235 = swift_slowAlloc();
    v246 = v235;
    *v160 = 68158722;
    *(v160 + 4) = 2;
    *(v160 + 8) = 256;
    v161 = v238;
    v162 = *(v159 + *(v238 + 20));
    sub_1B03B1D60(v159, type metadata accessor for Task.Logger);
    *(v160 + 10) = v162;
    *(v160 + 11) = 2082;
    v163 = (v155 + *(v161 + 20));
    v164 = v163[1];
    v166 = v163[2];
    v165 = v163[3];
    sub_1B0A982D8(*v163, v164, v166, v165);
    sub_1B03B1D60(v155, type metadata accessor for Task.Logger);
    if (v165 < 0)
    {
    }

    v167 = sub_1B0399D64(v164, v166, &v246);

    *(v160 + 13) = v167;
    *(v160 + 21) = 2048;
    *(v160 + 23) = v237;
    *(v160 + 31) = 2080;
    if (v240)
    {
      v168 = 0xD000000000000014;
    }

    else
    {
      v168 = 0x746C7561666564;
    }

    if (v240)
    {
      v169 = 0x80000001B0F2B370;
    }

    else
    {
      v169 = 0xE700000000000000;
    }

    v170 = sub_1B0399D64(v168, v169, &v246);

    *(v160 + 33) = v170;
    _os_log_impl(&dword_1B0389000, v157, v158, "[%.*hhx-%{public}s] There are (still) %ld mailbox(es) to sync. Sync behavior: %s.", v160, 0x29u);
    v171 = v235;
    swift_arrayDestroy();
    MEMORY[0x1B272C230](v171, -1, -1);
    MEMORY[0x1B272C230](v160, -1, -1);

    v9 = v229;
    v147 = v239;
  }

  else
  {
    sub_1B03B1D60(v156, type metadata accessor for Task.Logger);

    sub_1B03B1D60(v155, type metadata accessor for Task.Logger);
  }

  sub_1B0B11958(4, v147, &v246);

  v172 = v246;
  v173 = v248;
  v174 = v249;
  v237 = v250;
  v175 = v251;
  v176 = v252;
  v245 = v248;
  v244 = v251;
  v223 = v247;
  sub_1B0B11A78(v246, v247, v248);
  v178 = v228;
  if ((v173 & 1) == 0 && (v175 & 1) == 0)
  {
    v179 = v223;
    if (v223 == v237)
    {
      v180 = v223;
      if (v172 == v174)
      {
LABEL_86:
        v215 = v244;
        sub_1B0425168(v172, v179, v245);
        sub_1B0425168(v174, v237, v215);

        sub_1B0425168(v174, v180, 0);
        return;
      }

      v181 = 0;
      v235 = (v176 + 56);
      v224 = (v176 + 64);
      *&v177 = 68158979;
      v225 = v177;
      v182 = v172;
      v226 = v176;
      v227 = v174;
      v233 = v237;
      v234 = v172;
      while (v182 >= v172)
      {
        if (v182 >= v174)
        {
          goto LABEL_103;
        }

        if (v182 < 0)
        {
          goto LABEL_104;
        }

        v183 = 1 << v176[32];
        if (v182 >= v183)
        {
          goto LABEL_104;
        }

        v184 = v182 >> 6;
        v185 = v235[v182 >> 6].isa;
        if (((v185 >> v182) & 1) == 0)
        {
          goto LABEL_105;
        }

        if (*(v176 + 9) != v237)
        {
          goto LABEL_106;
        }

        v186 = v185 & (-2 << (v182 & 0x3F));
        if (v186)
        {
          v183 = __clz(__rbit64(v186)) | v182 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v187 = v184 << 6;
          v188 = v184 + 1;
          v189 = &v224[v184];
          while (v188 < (v183 + 63) >> 6)
          {
            v191 = *v189++;
            v190 = v191;
            v187 += 64;
            ++v188;
            if (v191)
            {
              v183 = __clz(__rbit64(v190)) + v187;
              break;
            }
          }
        }

        v192 = __OFADD__(v181, 1);
        v193 = v181 + 1;
        if (v192)
        {
          goto LABEL_107;
        }

        v240 = v193;
        v194 = *(v176 + 6) + 16 * v182;
        v195 = *v194;
        v196 = *(v194 + 8);
        v197 = v236;
        sub_1B03B1B00(v236, v178, type metadata accessor for Task.Logger);
        sub_1B03B1B00(v197, v9, type metadata accessor for Task.Logger);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B0394868();
        sub_1B0394868();
        sub_1B0394868();
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v198 = sub_1B0E43988();
        v199 = v9;
        v200 = sub_1B0E45908();

        LODWORD(v239) = v200;
        if (os_log_type_enabled(v198, v200))
        {
          LODWORD(v231) = v196;
          v232 = v198;
          v201 = v178;
          v202 = swift_slowAlloc();
          *&v230 = swift_slowAlloc();
          v243 = v230;
          *v202 = v225;
          *(v202 + 4) = 2;
          *(v202 + 8) = 256;
          v203 = v238;
          v204 = *(v199 + *(v238 + 20));
          sub_1B03B1D60(v199, type metadata accessor for Task.Logger);
          *(v202 + 10) = v204;
          *(v202 + 11) = 2082;
          v205 = (v201 + *(v203 + 20));
          v206 = v205[1];
          v208 = v205[2];
          v207 = v205[3];
          sub_1B0A982D8(*v205, v206, v208, v207);
          sub_1B03B1D60(v201, type metadata accessor for Task.Logger);
          if (v207 < 0)
          {
          }

          v209 = sub_1B0399D64(v206, v208, &v243);

          *(v202 + 13) = v209;
          *(v202 + 21) = 2048;
          v181 = v240;
          *(v202 + 23) = v240;
          *(v202 + 31) = 2160;
          *(v202 + 33) = 0x786F626C69616DLL;
          *(v202 + 41) = 2085;
          v241 = v195;
          v242 = v231;
          v210 = sub_1B0E44BA8();
          v212 = sub_1B0399D64(v210, v211, &v243);

          *(v202 + 43) = v212;
          v213 = v232;
          _os_log_impl(&dword_1B0389000, v232, v239, "[%.*hhx-%{public}s] [%ld] mailbox to sync: '%{sensitive,mask.mailbox}s'", v202, 0x33u);
          v214 = v230;
          swift_arrayDestroy();
          MEMORY[0x1B272C230](v214, -1, -1);
          MEMORY[0x1B272C230](v202, -1, -1);

          v178 = v228;
          v9 = v229;
          v176 = v226;
          v174 = v227;
        }

        else
        {
          sub_1B03B1D60(v199, type metadata accessor for Task.Logger);

          sub_1B03B1D60(v178, type metadata accessor for Task.Logger);
          v181 = v240;
          v9 = v199;
        }

        v182 = v183;
        v180 = v233;
        v172 = v234;
        if (v183 == v174)
        {
          v179 = v223;
          goto LABEL_86;
        }
      }
    }

    else
    {
      __break(1u);
    }

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
  }

  __break(1u);
}

uint64_t sub_1B0B10874@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  result = sub_1B0B0EC90(a1, a2, a3, a4);
  *a5 = result;
  a5[1] = v7;
  return result;
}

uint64_t sub_1B0B108C4()
{
  v1 = *(v0 + 64);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v1;
}

unint64_t sub_1B0B108F4()
{
  result = qword_1EB6DDF40;
  if (!qword_1EB6DDF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DDF40);
  }

  return result;
}

unint64_t sub_1B0B10948()
{
  result = qword_1EB6DDF38;
  if (!qword_1EB6DDF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DDF38);
  }

  return result;
}

unint64_t sub_1B0B1099C(uint64_t a1)
{
  result = sub_1B0B109C4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B0B109C4()
{
  result = qword_1EB6DDF30;
  if (!qword_1EB6DDF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DDF30);
  }

  return result;
}

uint64_t sub_1B0B10A18(uint64_t a1, uint64_t a2)
{
  if (*(**(v2 + 16) + 16))
  {
    sub_1B03AB888(a1, a2);
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

unint64_t *sub_1B0B10A54(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, _OWORD *))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    v8 = sub_1B0B11584(result, a2, a3, a4);

    return v8;
  }

  return result;
}

void sub_1B0B10AE4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1B0E460B8();
  v7 = 1 << *(a2 + 32);
  if (v7 < v6)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (*(a1 + 16))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = *(a2 + 36);
  v9 = *(a1 + 8);
  if (v8 != v9)
  {
    goto LABEL_12;
  }

  if (*a1 < v6)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (*(a1 + 40))
  {
LABEL_17:
    __break(1u);
    return;
  }

  v10 = *(a1 + 32);
  if (v8 != v10)
  {
    goto LABEL_14;
  }

  v11 = *(a1 + 24);
  if (v7 < v11)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  *a3 = *a1;
  *(a3 + 8) = v9;
  *(a3 + 16) = 0;
  *(a3 + 24) = v11;
  *(a3 + 32) = v10;
  *(a3 + 40) = 0;
  *(a3 + 48) = a2;

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
}

uint64_t sub_1B0B10BC8(uint64_t result, uint64_t a2, char a3, uint64_t a4, uint64_t a5, int a6, char a7, uint64_t a8)
{
  if (a4 < 0)
  {
LABEL_26:
    __break(1u);
  }

  else
  {
    if (!a4)
    {
      v20 = result;
      sub_1B0B11A78(result, a2, a3 & 1);
      return v20;
    }

    v8 = 0;
    v9 = a3 | a7;
    while ((v9 & 1) == 0)
    {
      if (a2 != a6)
      {
        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      if (result == a5)
      {
        return 0;
      }

      if (result < 0)
      {
        goto LABEL_23;
      }

      v11 = 1 << *(a8 + 32);
      if (result >= v11)
      {
        goto LABEL_23;
      }

      v12 = result >> 6;
      v13 = *(a8 + 56 + 8 * (result >> 6));
      if (((v13 >> result) & 1) == 0)
      {
        goto LABEL_24;
      }

      if (*(a8 + 36) != a6)
      {
        goto LABEL_25;
      }

      v14 = v13 & (-2 << (result & 0x3F));
      if (v14)
      {
        result = __clz(__rbit64(v14)) | result & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v15 = v12 << 6;
        v16 = v12 + 1;
        v17 = (a8 + 64 + 8 * v12);
        while (v16 < (v11 + 63) >> 6)
        {
          v19 = *v17++;
          v18 = v19;
          v15 += 64;
          ++v16;
          if (v19)
          {
            result = __clz(__rbit64(v18)) + v15;
            goto LABEL_5;
          }
        }

        result = 1 << *(a8 + 32);
      }

LABEL_5:
      LODWORD(a2) = a6;
      v9 = a7;
      if (v8++ == a4 - 1)
      {
        return result;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B0B10D2C(uint64_t a1)
{
  v3 = type metadata accessor for UntaggedResponse(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B03B1B00(a1, v5, type metadata accessor for UntaggedResponse);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 10:
      v34 = *v5;
      v35 = *(v5 + 1);
      if (*(*v5 + 16))
      {
        v36 = *(v34 + 64);
        if (v36)
        {
          v46[1] = *(v34 + 88);
          v48 = v35;
          v47 = *(v34 + 56);
          v38 = *(v34 + 32);
          v37 = *(v34 + 40);
          v39 = *(v34 + 48) | (*(v34 + 54) << 48) | (*(v34 + 52) << 32);
          swift_retain_n();
          swift_bridgeObjectRetain_n();
          swift_retain_n();
          swift_retain_n();
          swift_retain_n();
          v40 = MailboxName.init(_:)(v38, v37, v39);
          v41 = Namespace.init(prefix:separator:)(v40, v47, v36);
          v43 = v42;
          v45 = v44;

          swift_bridgeObjectRelease_n();

LABEL_23:
          result = sub_1B07BA794(*(v1 + 88));
          *(v1 + 88) = v41;
          *(v1 + 96) = v43;
          *(v1 + 104) = v45;
          return result;
        }
      }

      v41 = 0;
      v43 = 0;
      v45 = 0;
      goto LABEL_23;
    case 9:
      v17 = *v5;
      v18 = *(v5 + 2);
      v19 = *(v5 + 6);
      v54 = *(v5 + 5);
      v55 = v19;
      v20 = *(v5 + 8);
      v56 = *(v5 + 7);
      v57 = v20;
      v21 = *(v5 + 2);
      v50 = *(v5 + 1);
      v51 = v21;
      v22 = *(v5 + 4);
      v52 = *(v5 + 3);
      v53 = v22;
      v23 = sub_1B0B6C038(v49, v17, v18);
      v25 = v24;
      v26 = *v24;
      sub_1B0B11B9C(&v50);
      if (v26)
      {
        if (BYTE8(v50) & 1) != 0 || (v52 & 1) != 0 || (BYTE8(v52))
        {
          v27 = 0;
          v28 = 0;
          v29 = 0;
          v30 = 0;
          v31 = 0;
          v32 = 0;
          v33 = 1;
        }

        else
        {
          v33 = 0;
          v27 = v50;
          v29 = v53;
          v30 = BYTE8(v53);
          v31 = v55;
          v32 = BYTE8(v55);
          v28 = HIDWORD(v51) | (DWORD1(v52) << 32);
        }

        v25[3] = v27;
        v25[4] = v28;
        v25[5] = v29;
        v25[6] = v30;
        v25[7] = v31;
        *(v25 + 64) = v32;
        *(v25 + 65) = v33;
        (v23)(v49, 0);
      }

      else
      {
        (v23)(v49, 0);
      }

    case 7:
      v7 = *(v5 + 1);
      v8 = *(v5 + 4);
      v9 = v5[20];
      if (*(v1 + 80) == 1 && !*(v1 + 88))
      {
        v10 = sub_1B0B9C9AC(v9);
        if (v11)
        {
          *(v1 + 88) = Namespace.init(prefix:separator:)(MEMORY[0x1E69E7CC0], v10, v11);
          *(v1 + 96) = v12;
          *(v1 + 104) = v13;
        }
      }

      swift_bridgeObjectRetain_n();
      v14 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      RemoteMailbox.init(attributes:path:)(v14, v7, v8 | (v9 << 32), &v50);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v49[0] = *v1;
      sub_1B0A9BF5C(&v50, v7, v8, isUniquelyReferenced_nonNull_native);

      swift_bridgeObjectRelease_n();

      *v1 = v49[0];
      break;
    default:
      return sub_1B03B1D60(v5, type metadata accessor for UntaggedResponse);
  }

  return result;
}

unint64_t sub_1B0B1117C(unint64_t result)
{
  if (*(v1 + 112) != 2 || ((result >> 59) & 0x1E | (result >> 2) & 1) != 4)
  {
    return result;
  }

  v3 = *((result & 0xFFFFFFFFFFFFFFBLL) + 0x10);
  v4 = *(v3 + 16);
  if (!v4)
  {
    return result;
  }

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v5 = 0;
  v6 = v4 - 1;
  v7 = 32;
  v50 = v3;
  v51 = v4 - 1;
  do
  {
    v8 = *(v3 + v7 + 32);
    v9 = *(v3 + v7 + 48);
    v10 = *(v3 + v7 + 64);
    *&v65[9] = *(v3 + v7 + 73);
    *v65 = v10;
    v11 = *(v3 + v7 + 16);
    v61 = *(v3 + v7);
    v62 = v11;
    v63 = v8;
    v64 = v9;
    v12 = *&v65[16];
    v13 = *(&v10 + 1);
    sub_1B0B11A84(&v61, &v56);
    if ((static MailboxOfInterest.LocalModification.__derived_enum_equals(_:_:)(v13, v12, 0, 0) & 1) == 0 || v65[24] != 1)
    {
      goto LABEL_28;
    }

    v14 = *v52;
    if (!*(*v52 + 16) || (v15 = sub_1B03AB888(v62, DWORD2(v62)), (v16 & 1) == 0))
    {
      v54 = 0;
      v53 = 0;
      v26 = 0;
      v27 = 0;
      v25 = 0;
      v24 = 0;
      v22 = 0;
      v23 = 0;
      v21 = 0;
LABEL_16:
      sub_1B0B11AE0(&v61);
      *&v56 = 0;
      *(&v56 + 1) = v21;
      *&v57 = v23;
      *(&v57 + 1) = v22;
      *&v58 = v24;
      *(&v58 + 1) = v25;
      *&v59 = v27;
      *(&v59 + 1) = v26;
      LOBYTE(v60) = v53;
      HIBYTE(v60) = v54;
      sub_1B0B11B34(&v56);
LABEL_17:
      v3 = v50;
      v6 = v51;
      if (v51 == v5)
      {
      }

      goto LABEL_29;
    }

    v17 = *(v14 + 56) + 72 * v15;
    v56 = *v17;
    v18 = *(v17 + 64);
    v20 = *(v17 + 32);
    v19 = *(v17 + 48);
    v57 = *(v17 + 16);
    v58 = v20;
    v59 = v19;
    v60 = v18;
    v21 = *(&v56 + 1);
    v47 = v56;
    v22 = *(&v57 + 1);
    v23 = v57;
    v25 = *(&v20 + 1);
    v24 = v20;
    v26 = *(&v19 + 1);
    v27 = v19;
    v53 = v18;
    v54 = HIBYTE(v18);
    sub_1B03BB0B4(&v56, &v55);
    if (!v47)
    {
      goto LABEL_16;
    }

    v56 = __PAIR128__(v21, v47);
    v57 = __PAIR128__(v22, v23);
    v58 = __PAIR128__(v25, v24);
    v59 = __PAIR128__(v26, v27);
    v60 = __PAIR16__(v54, v53);
    sub_1B0B11B34(&v56);
    if (v54)
    {
      sub_1B0B11AE0(&v61);
      goto LABEL_17;
    }

    v28 = v27;
    v3 = v50;
    v6 = v51;
    if (v53 & 1) != 0 || (v65[0])
    {
      goto LABEL_28;
    }

    if (((*(&v64 + 1) | v26) & 0x8000000000000000) != 0)
    {
      goto LABEL_39;
    }

    if (v26 != *(&v64 + 1))
    {
LABEL_28:
      sub_1B0B11AE0(&v61);
      if (v6 == v5)
      {
      }

      goto LABEL_29;
    }

    v29 = v61;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v55 = v52[1];
    v30 = v55;
    v31 = sub_1B03B8A9C(v29, *(&v29 + 1));
    v33 = v30[2];
    v34 = (v32 & 1) == 0;
    v35 = __OFADD__(v33, v34);
    v36 = v33 + v34;
    if (v35)
    {
      goto LABEL_40;
    }

    if (v30[3] >= v36)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v40 = v55;
        if ((v32 & 1) == 0)
        {
          goto LABEL_35;
        }
      }

      else
      {
        v49 = v31;
        v42 = v32;
        sub_1B0B8D4FC();
        v43 = v42;
        v31 = v49;
        v40 = v55;
        if ((v43 & 1) == 0)
        {
          goto LABEL_35;
        }
      }
    }

    else
    {
      v37 = v32;
      sub_1B0B2F9F0(v36, isUniquelyReferenced_nonNull_native);
      v31 = sub_1B03B8A9C(v29, *(&v29 + 1));
      if ((v37 & 1) != (v38 & 1))
      {
        goto LABEL_42;
      }

      v39 = v37;
      v40 = v55;
      if ((v39 & 1) == 0)
      {
LABEL_35:
        v40[(v31 >> 6) + 8] |= 1 << v31;
        *(v40[6] + 16 * v31) = v29;
        v44 = v40[7] + 24 * v31;
        *v44 = 0;
        *(v44 + 4) = 1;
        *(v44 + 8) = v25;
        *(v44 + 16) = v28 & 1;
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B0B11AE0(&v61);
        v45 = v40[2];
        v35 = __OFADD__(v45, 1);
        v46 = v45 + 1;
        if (v35)
        {
          goto LABEL_41;
        }

        v40[2] = v46;
        goto LABEL_37;
      }
    }

    v41 = v40[7] + 24 * v31;
    *v41 = 0;
    *(v41 + 4) = 1;
    *(v41 + 8) = v25;
    *(v41 + 16) = v28 & 1;
    sub_1B0B11AE0(&v61);
LABEL_37:
    v52[1] = v40;
    if (v51 == v5)
    {
    }

LABEL_29:
    ++v5;
    v7 += 96;
  }

  while (v5 < *(v3 + 16));
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  result = sub_1B0E46BA8();
  __break(1u);
  return result;
}

unint64_t *sub_1B0B11584(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, _OWORD *))
{
  v29 = a4;
  v24 = result;
  v25 = 0;
  v5 = 0;
  v6 = a3 + 64;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 64);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_11:
    v14 = v11 | (v5 << 6);
    v15 = *(a3 + 48) + 16 * v14;
    v16 = *v15;
    v17 = *(v15 + 8);
    v18 = *(a3 + 56) + 72 * v14;
    v27[0] = *v18;
    v20 = *(v18 + 32);
    v19 = *(v18 + 48);
    v21 = *(v18 + 16);
    v28 = *(v18 + 64);
    v27[2] = v20;
    v27[3] = v19;
    v27[1] = v21;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B03BB0B4(v27, v26);
    LOBYTE(v17) = v29(v16, v17, v27);
    sub_1B039E440(v27);

    if (v17)
    {
      *(v24 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      if (__OFADD__(v25++, 1))
      {
        __break(1u);
        return sub_1B0B22180(v24, a2, v25, a3);
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      return sub_1B0B22180(v24, a2, v25, a3);
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_1B0B11728(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, _OWORD *))
{
  v4 = a1;
  v12[1] = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 32);
  v6 = ((1 << v5) + 63) >> 6;
  if ((v5 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    MEMORY[0x1EEE9AC00](a1);
    v8 = v12 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v8, v7);
    result = sub_1B0B11584(v8, v6, v4, a2);
    if (v2)
    {
      return swift_willThrow();
    }

    return result;
  }

  v10 = swift_slowAlloc();
  v11 = sub_1B0B10A54(v10, v6, v4, a2);
  result = MEMORY[0x1B272C230](v10, -1, -1);
  if (!v2)
  {
    return v11;
  }

  return result;
}

void sub_1B0B11958(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v6 = sub_1B0E460B8();
    v7 = *(a2 + 36);
    v8 = -1 << *(a2 + 32);
    v9 = sub_1B0B10BC8(v6, v7, 0, a1, -v8, *(a2 + 36), 0, a2);
    v11 = v10;
    v13 = v12;
    v14 = v12;
    v15 = sub_1B0E460B8();
    if (v14 == 255)
    {
      v16 = -v8;
    }

    else
    {
      v16 = v9;
    }

    if (v14 == 255)
    {
      v17 = v7;
    }

    else
    {
      v17 = v11;
    }

    if (v14 != 255 && (v13 & 1) != 0)
    {
      goto LABEL_16;
    }

    v18 = *(a2 + 36);
    if (v18 == v17)
    {
      if (v16 >= v15)
      {
        v22[0] = v15;
        v22[1] = v18;
        v23 = 0;
        v24 = v16;
        v25 = v17;
        v26 = 0;
        sub_1B0B10AE4(v22, a2, v20);
        v19 = v20[1];
        *a3 = v20[0];
        *(a3 + 16) = v19;
        *(a3 + 32) = v20[2];
        *(a3 + 48) = v21;
        return;
      }

      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_15:
  __break(1u);
LABEL_16:
  __break(1u);
}

double sub_1B0B11A78(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  }

  return result;
}

uint64_t sub_1B0B11B34(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4568, &qword_1B0EC55C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B0B11C58(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v38 = a4;
  v33 = a3;
  v40 = type metadata accessor for TaskHistory.Running(0);
  v32 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v39 = &v31 - v11;
  v12 = type metadata accessor for TaskHistory.Previous(0);
  v35 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v31 - v16;
  result = sub_1B0A9E3F4(a1, a2 & 1, a5);
  v36 = *(result + 16);
  if (!v36)
  {
LABEL_19:
    v30 = 0;
    goto LABEL_20;
  }

  v19 = 0;
  v34 = result + 32;
  v37 = result;
  while (1)
  {
    if (v19 >= *(result + 16))
    {
      __break(1u);
      return result;
    }

    v20 = *(v38 + 16);
    if (v20)
    {
      break;
    }

LABEL_3:
    ++v19;
    result = v37;
    if (v19 == v36)
    {
      goto LABEL_19;
    }
  }

  v21 = *(v34 + 4 * v19);
  v22 = v38 + ((*(v35 + 80) + 32) & ~*(v35 + 80));
  v23 = *(v35 + 72);
  while (1)
  {
    sub_1B03B1B00(v22, v17, type metadata accessor for TaskHistory.Previous);
    sub_1B0A98D1C(v17, v14, type metadata accessor for TaskHistory.Previous);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      break;
    }

    sub_1B03B1D60(v14, type metadata accessor for TaskHistory.Previous);
LABEL_8:
    v22 += v23;
    if (!--v20)
    {
      goto LABEL_3;
    }
  }

  v24 = *(v14 + 2);
  sub_1B03E1BE8(*v14);
  if (v24 != v21)
  {
    goto LABEL_8;
  }

  v25 = *(v33 + 16);
  if (v25)
  {
    v26 = v33 + ((*(v32 + 80) + 32) & ~*(v32 + 80));
    v27 = *(v32 + 72);
    do
    {
      v28 = v39;
      sub_1B03B1B00(v26, v39, type metadata accessor for TaskHistory.Running);
      sub_1B0A98D1C(v28, v9, type metadata accessor for TaskHistory.Running);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v29 = *(v9 + 1);
        sub_1B03E1BE8(*(v9 + 1));
        if (v29 == v21)
        {
          goto LABEL_3;
        }
      }

      else
      {
        sub_1B03B1D60(v9, type metadata accessor for TaskHistory.Running);
      }

      v26 += v27;
      --v25;
    }

    while (v25);
  }

  v30 = 1;
LABEL_20:

  return v30;
}

uint64_t sub_1B0B11FE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, double))
{
  v39 = a3;
  v34 = a2;
  v41 = type metadata accessor for TaskHistory.Running(0);
  v33 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v40 = &v32 - v11;
  v12 = type metadata accessor for TaskHistory.Previous(0);
  v36 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v32 - v17;
  result = a5(a1, a4, v16);
  v37 = *(result + 16);
  if (!v37)
  {
LABEL_19:
    v31 = 0;
    goto LABEL_20;
  }

  v20 = 0;
  v35 = result + 32;
  v38 = result;
  while (1)
  {
    if (v20 >= *(result + 16))
    {
      __break(1u);
      return result;
    }

    v21 = *(v39 + 16);
    if (v21)
    {
      break;
    }

LABEL_3:
    ++v20;
    result = v38;
    if (v20 == v37)
    {
      goto LABEL_19;
    }
  }

  v22 = *(v35 + 4 * v20);
  v23 = v39 + ((*(v36 + 80) + 32) & ~*(v36 + 80));
  v24 = *(v36 + 72);
  while (1)
  {
    sub_1B03B1B00(v23, v18, type metadata accessor for TaskHistory.Previous);
    sub_1B0A98D1C(v18, v14, type metadata accessor for TaskHistory.Previous);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      break;
    }

    sub_1B03B1D60(v14, type metadata accessor for TaskHistory.Previous);
LABEL_8:
    v23 += v24;
    if (!--v21)
    {
      goto LABEL_3;
    }
  }

  v25 = *(v14 + 2);
  sub_1B03E1BE8(*v14);
  if (v25 != v22)
  {
    goto LABEL_8;
  }

  v26 = *(v34 + 16);
  if (v26)
  {
    v27 = v34 + ((*(v33 + 80) + 32) & ~*(v33 + 80));
    v28 = *(v33 + 72);
    do
    {
      v29 = v40;
      sub_1B03B1B00(v27, v40, type metadata accessor for TaskHistory.Running);
      sub_1B0A98D1C(v29, v9, type metadata accessor for TaskHistory.Running);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v30 = *(v9 + 1);
        sub_1B03E1BE8(*(v9 + 1));
        if (v30 == v22)
        {
          goto LABEL_3;
        }
      }

      else
      {
        sub_1B03B1D60(v9, type metadata accessor for TaskHistory.Running);
      }

      v27 += v28;
      --v26;
    }

    while (v26);
  }

  v31 = 1;
LABEL_20:

  return v31;
}

uint64_t sub_1B0B12358(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v39 = a4;
  v34 = a3;
  v41 = type metadata accessor for TaskHistory.Running(0);
  v33 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v40 = &v32 - v11;
  v12 = type metadata accessor for TaskHistory.Previous(0);
  v36 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v32 - v17;
  result = sub_1B0A9F194(a1, a2, a5, v16);
  v37 = *(result + 16);
  if (!v37)
  {
LABEL_19:
    v31 = 0;
    goto LABEL_20;
  }

  v20 = 0;
  v35 = result + 32;
  v38 = result;
  while (1)
  {
    if (v20 >= *(result + 16))
    {
      __break(1u);
      return result;
    }

    v21 = *(v39 + 16);
    if (v21)
    {
      break;
    }

LABEL_3:
    ++v20;
    result = v38;
    if (v20 == v37)
    {
      goto LABEL_19;
    }
  }

  v22 = *(v35 + 4 * v20);
  v23 = v39 + ((*(v36 + 80) + 32) & ~*(v36 + 80));
  v24 = *(v36 + 72);
  while (1)
  {
    sub_1B03B1B00(v23, v18, type metadata accessor for TaskHistory.Previous);
    sub_1B0A98D1C(v18, v14, type metadata accessor for TaskHistory.Previous);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      break;
    }

    sub_1B03B1D60(v14, type metadata accessor for TaskHistory.Previous);
LABEL_8:
    v23 += v24;
    if (!--v21)
    {
      goto LABEL_3;
    }
  }

  v25 = *(v14 + 2);
  sub_1B03E1BE8(*v14);
  if (v25 != v22)
  {
    goto LABEL_8;
  }

  v26 = *(v34 + 16);
  if (v26)
  {
    v27 = v34 + ((*(v33 + 80) + 32) & ~*(v33 + 80));
    v28 = *(v33 + 72);
    do
    {
      v29 = v40;
      sub_1B03B1B00(v27, v40, type metadata accessor for TaskHistory.Running);
      sub_1B0A98D1C(v29, v9, type metadata accessor for TaskHistory.Running);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v30 = *(v9 + 1);
        sub_1B03E1BE8(*(v9 + 1));
        if (v30 == v22)
        {
          goto LABEL_3;
        }
      }

      else
      {
        sub_1B03B1D60(v9, type metadata accessor for TaskHistory.Running);
      }

      v27 += v28;
      --v26;
    }

    while (v26);
  }

  v31 = 1;
LABEL_20:

  return v31;
}

uint64_t sub_1B0B126CC(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a3;
  v31 = a2;
  v38 = type metadata accessor for TaskHistory.Running(0);
  v30 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v37 = &v29 - v9;
  v10 = type metadata accessor for TaskHistory.Previous(0);
  v33 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v29 - v14;
  result = sub_1B0A9F750(a1 & 1, a4);
  v34 = *(result + 16);
  if (!v34)
  {
LABEL_19:
    v28 = 0;
    goto LABEL_20;
  }

  v17 = 0;
  v32 = result + 32;
  v35 = result;
  while (1)
  {
    if (v17 >= *(result + 16))
    {
      __break(1u);
      return result;
    }

    v18 = *(v36 + 16);
    if (v18)
    {
      break;
    }

LABEL_3:
    ++v17;
    result = v35;
    if (v17 == v34)
    {
      goto LABEL_19;
    }
  }

  v19 = *(v32 + 4 * v17);
  v20 = v36 + ((*(v33 + 80) + 32) & ~*(v33 + 80));
  v21 = *(v33 + 72);
  while (1)
  {
    sub_1B03B1B00(v20, v15, type metadata accessor for TaskHistory.Previous);
    sub_1B0A98D1C(v15, v12, type metadata accessor for TaskHistory.Previous);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      break;
    }

    sub_1B03B1D60(v12, type metadata accessor for TaskHistory.Previous);
LABEL_8:
    v20 += v21;
    if (!--v18)
    {
      goto LABEL_3;
    }
  }

  v22 = *(v12 + 2);
  sub_1B03E1BE8(*v12);
  if (v22 != v19)
  {
    goto LABEL_8;
  }

  v23 = *(v31 + 16);
  if (v23)
  {
    v24 = v31 + ((*(v30 + 80) + 32) & ~*(v30 + 80));
    v25 = *(v30 + 72);
    do
    {
      v26 = v37;
      sub_1B03B1B00(v24, v37, type metadata accessor for TaskHistory.Running);
      sub_1B0A98D1C(v26, v7, type metadata accessor for TaskHistory.Running);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v27 = *(v7 + 1);
        sub_1B03E1BE8(*(v7 + 1));
        if (v27 == v19)
        {
          goto LABEL_3;
        }
      }

      else
      {
        sub_1B03B1D60(v7, type metadata accessor for TaskHistory.Running);
      }

      v24 += v25;
      --v23;
    }

    while (v23);
  }

  v28 = 1;
LABEL_20:

  return v28;
}

void sub_1B0B12A70(void (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v6 = a3 + 56;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 56);
  v10 = (v7 + 63) >> 6;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v11 = 0;
  if (v9)
  {
    while (1)
    {
      v12 = v11;
LABEL_8:
      v13 = *(*(a3 + 48) + (__clz(__rbit64(v9)) | (v12 << 6)));
      a1(&v13);
      if (v3)
      {
        break;
      }

      v9 &= v9 - 1;
      v11 = v12;
      if (!v9)
      {
        goto LABEL_5;
      }
    }

LABEL_11:
  }

  else
  {
LABEL_5:
    while (1)
    {
      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v12 >= v10)
      {
        goto LABEL_11;
      }

      v9 = *(v6 + 8 * v12);
      ++v11;
      if (v9)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }
}

void sub_1B0B12B64(void (*a1)(uint64_t *), uint64_t a2, uint64_t a3)
{
  v6 = a3 + 56;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 56);
  v10 = (v7 + 63) >> 6;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v11 = 0;
  if (v9)
  {
    while (1)
    {
      v12 = v11;
LABEL_8:
      v13 = *(a3 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9))));
      v14 = *v13;
      LODWORD(v13) = *(v13 + 8);
      v15 = v14;
      v16 = v13;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      a1(&v15);
      if (v3)
      {
        break;
      }

      v9 &= v9 - 1;

      v11 = v12;
      if (!v9)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v12 >= v10)
      {

        return;
      }

      v9 = *(v6 + 8 * v12);
      ++v11;
      if (v9)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }
}

BOOL sub_1B0B12CA4(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[9];
  v13[8] = a1[8];
  v13[9] = v2;
  v13[10] = a1[10];
  v3 = a1[5];
  v13[4] = a1[4];
  v13[5] = v3;
  v4 = a1[7];
  v13[6] = a1[6];
  v13[7] = v4;
  v5 = a1[1];
  v13[0] = *a1;
  v13[1] = v5;
  v6 = a1[3];
  v13[2] = a1[2];
  v13[3] = v6;
  v7 = a2[9];
  v14[8] = a2[8];
  v14[9] = v7;
  v14[10] = a2[10];
  v8 = a2[5];
  v14[4] = a2[4];
  v14[5] = v8;
  v9 = a2[7];
  v14[6] = a2[6];
  v14[7] = v9;
  v10 = a2[1];
  v14[0] = *a2;
  v14[1] = v10;
  v11 = a2[3];
  v14[2] = a2[2];
  v14[3] = v11;
  return sub_1B03B5F54(v13, v14);
}

_DWORD *sub_1B0B12D88@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result & 0xFFFFFF;
  *(a2 + 4) = 0;
  return result;
}

uint64_t sub_1B0B12DA8()
{
  sub_1B0E46C28();
  sub_1B0E46C88();
  return sub_1B0E46CB8();
}

uint64_t sub_1B0B12DF0(uint64_t a1)
{
  sub_1B0E46C28();
  sub_1B0E46C88();
  return sub_1B0E46CB8();
}

uint64_t sub_1B0B12E34(__int128 *a1, int a2, uint64_t a3, void *a4)
{
  v55 = a3;
  v56 = a4;
  LODWORD(v60) = a2;
  v54 = _s12LocalMailboxV6LoggerVMa(0);
  MEMORY[0x1EEE9AC00](v54);
  v58 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v57 = &v53 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v59 = &v53 - v10;
  v11 = type metadata accessor for PendingPersistenceUpdates(0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = _s13SelectedStateV7WrappedVMa(0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = (&v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = type metadata accessor for MailboxSyncState(0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(v4 + 96);
  v70 = v20;
  v21 = a1[2];
  v72 = a1[1];
  v73 = v21;
  v74[0] = a1[3];
  *(v74 + 11) = *(a1 + 59);
  v71 = *a1;
  v22 = *a1;
  if (*a1)
  {
    v65 = *a1;
    v66 = *(a1 + 8);
    v67 = *(a1 + 24);
    v68 = *(a1 + 40);
    *v69 = *(a1 + 56);
    *&v69[15] = *(a1 + 71);
    v23 = v4;
    if (v66 | (v66 << 32)) == (*(v4 + 24) | (*(v4 + 24) << 32)) && (sub_1B04520BC(v22, *(v4 + 16)))
    {
      v24 = v4;
      sub_1B03B5C80(a1, v61, &qword_1EB6E4580, &qword_1B0EC5720);
      sub_1B03B5C80(a1, v61, &qword_1EB6E4580, &qword_1B0EC5720);

      sub_1B0B395EC(&v65, v55, v19);
      sub_1B0398EFC(&v70, &qword_1EB6E4578, &qword_1B0EC5718);
      v25 = *(v4 + 84);
      v26 = *(v4 + 88);
      *v16 = v60;
      sub_1B0B149EC(v19, v16 + *(v14 + 20), type metadata accessor for MailboxSyncState);
      v27 = v16 + *(v14 + 24);
      *v27 = v25;
      v27[4] = v26;
      _s13SelectedStateV8_StorageCMa(0);
      v28 = swift_allocObject();
      sub_1B0B149EC(v16, v28 + OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped, _s13SelectedStateV7WrappedVMa);

      *(v24 + 96) = v28;
      return result;
    }

    sub_1B03B5C80(a1, v61, &qword_1EB6E4580, &qword_1B0EC5720);

    if (!v20)
    {
      return sub_1B0398EFC(&v70, &qword_1EB6E4578, &qword_1B0EC5718);
    }
  }

  else
  {

    v23 = v4;
    if (!v20)
    {
      return sub_1B0398EFC(&v70, &qword_1EB6E4578, &qword_1B0EC5718);
    }
  }

  v30 = OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped;
  swift_beginAccess();
  if (*(v20 + v30) != v60)
  {
    return sub_1B0398EFC(&v70, &qword_1EB6E4578, &qword_1B0EC5718);
  }

  v31 = v20 + OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped;
  swift_beginAccess();
  sub_1B03D0E68(v31 + *(v14 + 20) + *(v17 + 52), v13, type metadata accessor for PendingPersistenceUpdates);
  v62 = MEMORY[0x1E69E7CD0];
  if (*v13 == 1)
  {
    swift_retain_n();
    sub_1B03BDD7C(v64, 6);
  }

  else
  {
    swift_retain_n();
  }

  if (v13[1] == 1)
  {
    sub_1B03BDD7C(v64, 7);
  }

  if (v13[2] == 1)
  {
    sub_1B03BDD7C(v64, 8);
  }

  v32 = v62;
  sub_1B03D44D0(v13, type metadata accessor for PendingPersistenceUpdates);
  v33 = *(v32 + 16);

  if (v33)
  {
    v34 = v56;
    v35 = v59;
    sub_1B03D0E68(v56, v59, _s12LocalMailboxV6LoggerVMa);
    v36 = v57;
    sub_1B03D0E68(v34, v57, _s12LocalMailboxV6LoggerVMa);
    v37 = v58;
    sub_1B03D0E68(v34, v58, _s12LocalMailboxV6LoggerVMa);
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v38 = sub_1B0E43988();
    v39 = sub_1B0E458C8();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v64[0] = v56;
      *v40 = 68158979;
      LODWORD(v55) = v39;
      v41 = v37;
      v42 = v36;
      v60 = v23;
      *(v40 + 4) = 2;
      *(v40 + 8) = 256;
      v43 = v54;
      v44 = *(v36 + *(v54 + 20));
      sub_1B03D44D0(v42, _s12LocalMailboxV6LoggerVMa);
      *(v40 + 10) = v44;
      *(v40 + 11) = 1040;
      *(v40 + 13) = 2;
      *(v40 + 17) = 512;
      v45 = *(v41 + *(v43 + 20) + 2);
      sub_1B03D44D0(v41, _s12LocalMailboxV6LoggerVMa);
      *(v40 + 19) = v45;
      *(v40 + 21) = 2160;
      *(v40 + 23) = 0x786F626C69616DLL;
      *(v40 + 31) = 2085;
      v46 = v35 + *(v43 + 20);
      v47 = *(v46 + 8);
      v48 = *(v46 + 16);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B03D44D0(v35, _s12LocalMailboxV6LoggerVMa);
      v62 = v47;
      v63 = v48;
      v49 = sub_1B0E44BA8();
      v51 = sub_1B0399D64(v49, v50, v64);

      *(v40 + 33) = v51;
      v23 = v60;
      _os_log_impl(&dword_1B0389000, v38, v55, "[%.*hhx-{%.*hx}-%{sensitive,mask.mailbox}s] Mailbox has pending updates while being deselected.", v40, 0x29u);
      v52 = v56;
      __swift_destroy_boxed_opaque_existential_0(v56);
      MEMORY[0x1B272C230](v52, -1, -1);
      MEMORY[0x1B272C230](v40, -1, -1);
    }

    else
    {
      sub_1B03D44D0(v37, _s12LocalMailboxV6LoggerVMa);
      sub_1B03D44D0(v36, _s12LocalMailboxV6LoggerVMa);

      sub_1B03D44D0(v35, _s12LocalMailboxV6LoggerVMa);
    }

    Set<>.formNonEmpty()();
  }

  sub_1B0398EFC(&v70, &qword_1EB6E4578, &qword_1B0EC5718);

  *(v23 + 96) = 0;
  return result;
}

void sub_1B0B13584(int a1, uint64_t a2)
{
  v40 = a2;
  v41 = a1;
  v34 = _s19UserInitiatedSearchV5StateOMa(0);
  MEMORY[0x1EEE9AC00](v34);
  v30 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v32 = &v30 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E3670, &unk_1B0E9B260);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v39 = &v30 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26C0, &unk_1B0E9DE10);
  v37 = *(v10 - 8);
  v38 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v35 = &v30 - v11;
  v31 = _s19UserInitiatedSearchVMa(0);
  v12 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = (&v30 - v15);
  v17 = *(v2 + 152);
  v36 = (v2 + 152);
  v18 = v17[2];
  if (!v18)
  {
    return;
  }

  v19 = 0;
  while (1)
  {
    if (v19 >= v17[2])
    {
      __break(1u);
LABEL_17:
      v17 = sub_1B0B8C93C(v17);
      goto LABEL_10;
    }

    v3 = (*(v12 + 80) + 32) & ~*(v12 + 80);
    v4 = *(v12 + 72) * v19;
    sub_1B03D0E68(v17 + v3 + v4, v16, _s19UserInitiatedSearchVMa);
    v20 = *v16;
    sub_1B03D44D0(v16, _s19UserInitiatedSearchVMa);
    if (v20 == v41)
    {
      break;
    }

    if (v18 == ++v19)
    {
      return;
    }
  }

  v21 = v39;
  sub_1B03B5C80(v40, v39, &unk_1EB6E3670, &unk_1B0E9B260);
  if ((*(v37 + 48))(v21, 1, v38) == 1)
  {
    sub_1B0398EFC(v21, &unk_1EB6E3670, &unk_1B0E9B260);
    v22 = v33;
    sub_1B0BAFFB0(v19, v33);
    sub_1B03D44D0(v22, _s19UserInitiatedSearchVMa);
    return;
  }

  sub_1B074BA2C(v21, v35);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_10:
  if (v19 >= v17[2])
  {
    __break(1u);
  }

  else
  {
    v23 = v32;
    v24 = v17 + v3 + *(v31 + 20);
    sub_1B03D0E68(&v24[v4], v32, _s19UserInitiatedSearchV5StateOMa);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1B0398EFC(v35, &unk_1EB6E26C0, &unk_1B0E9DE10);
      sub_1B03D44D0(v23, _s19UserInitiatedSearchV5StateOMa);
    }

    else
    {
      sub_1B03D44D0(v23, _s19UserInitiatedSearchV5StateOMa);
      v25 = v35;
      v26 = v30;
      sub_1B03B5C80(v35, v30, &unk_1EB6E26C0, &unk_1B0E9DE10);
      MessagesVMa = _s19UserInitiatedSearchV13FetchMessagesVMa(0);
      sub_1B03D06F8();
      sub_1B0E46EE8();
      sub_1B0398EFC(v25, &unk_1EB6E26C0, &unk_1B0E9DE10);
      v28 = *(MessagesVMa + 24);
      v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
      (*(*(v29 - 8) + 56))(v26 + v28, 1, 1, v29);
      swift_storeEnumTagMultiPayload();
      sub_1B0B14B64(v26, &v24[v4]);
    }

    *v36 = v17;
  }
}

char *sub_1B0B13A74(char *result, uint64_t a2)
{
  v3 = *(v2 + 152);
  v4 = v3[2];
  if (v4)
  {
    v5 = v2;
    v7 = result;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_9:
      v3 = sub_1B0B8C93C(v3);
    }

    for (i = 0; i != v4; ++i)
    {
      if (i >= v3[2])
      {
        __break(1u);
        goto LABEL_9;
      }

      _s19UserInitiatedSearchVMa(0);
      result = sub_1B0BC7F44(v7, a2);
    }

    *(v5 + 152) = v3;
  }

  return result;
}

void sub_1B0B13B6C(uint64_t a1)
{
  v2 = v1;
  v36 = _s13SelectedStateV7WrappedVMa(0);
  MEMORY[0x1EEE9AC00](v36);
  v33 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v5 = sub_1B0B1476C((v1 + 144), a1);

  v6 = *(*(v2 + 144) + 16);
  if (v6 >= v5)
  {
    sub_1B0BAD234(v5, v6);
    v7 = a1 + 56;
    v8 = 1 << *(a1 + 32);
    v9 = -1;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    v10 = v9 & *(a1 + 56);
    v11 = (v8 + 63) >> 6;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v12 = 0;
    v13 = &OBJC_IVAR____TtC15IMAP2Connection10Connection_receiveTranscoder;
    v34 = v2;
    v35 = a1;
    while (v10)
    {
      v14 = v10;
LABEL_13:
      v10 = (v14 - 1) & v14;
      if (*(v2 + 96))
      {
        v16 = (*(a1 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v14)))));
        v17 = *v16;
        v18 = v16[1];
        sub_1B03B2000(*v16, v18);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v20 = *(v2 + 96);
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v21 = v13[81];
          swift_beginAccess();
          v22 = v20 + v21;
          v23 = v33;
          sub_1B03D0E68(v22, v33, _s13SelectedStateV7WrappedVMa);
          _s13SelectedStateV8_StorageCMa(0);
          v24 = swift_allocObject();
          sub_1B0B149EC(v23, v24 + OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped, _s13SelectedStateV7WrappedVMa);

          *(v2 + 96) = v24;
          v20 = v24;
          v13 = &OBJC_IVAR____TtC15IMAP2Connection10Connection_receiveTranscoder;
        }

        v25 = v20 + v13[81];
        swift_beginAccess();
        v26 = v25 + *(v36 + 20);
        v27 = *(type metadata accessor for MailboxSyncState(0) + 56);
        v28 = sub_1B0AE002C(v17, v18);
        if (v29)
        {
          v30 = v28;
          v31 = swift_isUniquelyReferenced_nonNull_native();
          v32 = *(v26 + v27);
          v37 = v32;
          *(v26 + v27) = 0x8000000000000000;
          if (!v31)
          {
            sub_1B0B8DE40();
            v32 = v37;
          }

          sub_1B0391D50(*(*(v32 + 48) + 16 * v30), *(*(v32 + 48) + 16 * v30 + 8));
          sub_1B0B90414(v30, v32);
          *(v26 + v27) = v32;
        }

        swift_endAccess();
        sub_1B0391D50(v17, v18);
        v2 = v34;
        a1 = v35;
        v13 = &OBJC_IVAR____TtC15IMAP2Connection10Connection_receiveTranscoder;
      }
    }

    while (1)
    {
      v15 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v15 >= v11)
      {

        return;
      }

      v14 = *(v7 + 8 * v15);
      ++v12;
      if (v14)
      {
        v12 = v15;
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  __break(1u);
}

void sub_1B0B13E58(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for MailboxSyncState(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v21[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22 = a2;
  v23 = v2;
  sub_1B0B12A70(sub_1B0B149D0, v21, a1);
  v8 = *(v2 + 96);
  if (v8)
  {
    v9 = v8 + OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped;
    swift_beginAccess();
    v10 = _s13SelectedStateV7WrappedVMa(0);
    v11 = (v9 + *(v10 + 20));
    if (*(v11[19] + 16) == 15 && !*(v11[20] + 16) && !*(v11[21] + 16))
    {
      v12 = (v9 + *(v10 + 24));
      v13 = *v12;
      v14 = *(v12 + 4);
      sub_1B03D0E68(v11, v7, type metadata accessor for MailboxSyncState);
      v15 = *(v7 + 4);
      v16 = v7[20];
      v17 = *(v7 + 3);
      v18 = v7[32];
      sub_1B03D44D0(v7, type metadata accessor for MailboxSyncState);
      *(v2 + 104) = v13;
      if (v16 & 1 | (v18 > 1))
      {
        v19 = 0;
      }

      else
      {
        v19 = v15;
      }

      *(v2 + 108) = v14;
      if (v16 & 1 | (v18 > 1))
      {
        v20 = 0;
      }

      else
      {
        v20 = v17;
      }

      *(v2 + 112) = v19;
      *(v2 + 120) = v20;
      *(v2 + 128) = v16 & 1 | (v18 > 1);
    }
  }
}

uint64_t sub_1B0B13FEC(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  v6 = _s13SelectedStateV7WrappedVMa(0);
  MEMORY[0x1EEE9AC00](v6);
  v44 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for MailboxTaskLogger(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v41 - v12;
  v14 = *a1;
  sub_1B03D0E68(a2, &v41 - v12, type metadata accessor for MailboxTaskLogger);
  sub_1B03D0E68(a2, v10, type metadata accessor for MailboxTaskLogger);
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  v15 = sub_1B0E43988();
  v16 = sub_1B0E458C8();
  if (!os_log_type_enabled(v15, v16))
  {
    sub_1B03D44D0(v10, type metadata accessor for MailboxTaskLogger);

    sub_1B03D44D0(v13, type metadata accessor for MailboxTaskLogger);
    result = *(a3 + 96);
    if (!result)
    {
      return result;
    }

LABEL_5:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v34 = *(a3 + 96);
      v35 = OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped;
      swift_beginAccess();
      v36 = v44;
      sub_1B03D0E68(v34 + v35, v44, _s13SelectedStateV7WrappedVMa);
      _s13SelectedStateV8_StorageCMa(0);
      v37 = swift_allocObject();
      sub_1B0B149EC(v36, v37 + OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped, _s13SelectedStateV7WrappedVMa);
      *(a3 + 96) = v37;
    }

    v38 = *(a3 + 96) + OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped;
    swift_beginAccess();
    v39 = (v38 + *(v6 + 20));
    if (sub_1B0A94670(v14, v39[20]))
    {
      sub_1B03BDE74(v14);
      v40 = v14;
    }

    else
    {
      if ((sub_1B0A94670(v14, v39[19]) & 1) == 0 || (sub_1B0A94670(v14, v39[21]) & 1) == 0)
      {
        sub_1B03BDD7C(&v48, v14);
        return swift_endAccess();
      }

      v40 = v14;
    }

    sub_1B03BDE74(v40);
    return swift_endAccess();
  }

  v17 = swift_slowAlloc();
  v43 = v6;
  v18 = v17;
  v42 = swift_slowAlloc();
  v45[0] = v42;
  *v18 = 68159491;
  *(v18 + 4) = 2;
  *(v18 + 8) = 256;
  v19 = *(v8 + 20);
  v41 = v15;
  v20 = &v10[v19];
  *(v18 + 10) = v10[v19];
  *(v18 + 11) = 2082;
  v21 = *(v8 + 20);
  v47 = v16;
  v22 = &v13[v21];
  *(v18 + 13) = sub_1B0399D64(*&v13[v21 + 8], *&v13[v21 + 16], v45);
  *(v18 + 21) = 1040;
  *(v18 + 23) = 2;
  *(v18 + 27) = 512;
  LOWORD(v20) = *(v20 + 12);
  sub_1B03D44D0(v10, type metadata accessor for MailboxTaskLogger);
  *(v18 + 29) = v20;
  *(v18 + 31) = 2160;
  *(v18 + 33) = 0x786F626C69616DLL;
  *(v18 + 41) = 2085;
  v23 = *(v22 + 4);
  LODWORD(v22) = *(v22 + 10);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B03D44D0(v13, type metadata accessor for MailboxTaskLogger);
  v45[3] = v23;
  v46 = v22;
  v24 = sub_1B0E44BA8();
  v26 = sub_1B0399D64(v24, v25, v45);

  *(v18 + 43) = v26;
  *(v18 + 51) = 2080;
  v27 = sub_1B0BAEDAC(v14);
  v29 = sub_1B0399D64(v27, v28, v45);

  *(v18 + 53) = v29;
  v30 = v41;
  _os_log_impl(&dword_1B0389000, v41, v47, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Marking step %s as complete.", v18, 0x3Du);
  v31 = v42;
  swift_arrayDestroy();
  MEMORY[0x1B272C230](v31, -1, -1);
  v32 = v18;
  v6 = v43;
  MEMORY[0x1B272C230](v32, -1, -1);

  result = *(a3 + 96);
  if (result)
  {
    goto LABEL_5;
  }

  return result;
}

uint64_t sub_1B0B144C8()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_1B0E46C28();
  if (v2 == 1)
  {
    MEMORY[0x1B2728D70](0);
  }

  else
  {
    MEMORY[0x1B2728D70](1);
    MEMORY[0x1B2728DB0](v1);
  }

  return sub_1B0E46CB8();
}

uint64_t sub_1B0B14538()
{
  if (*(v0 + 8) == 1)
  {
    return MEMORY[0x1B2728D70](0);
  }

  v2 = *v0;
  MEMORY[0x1B2728D70](1);
  return MEMORY[0x1B2728DB0](v2);
}

uint64_t sub_1B0B14588(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  sub_1B0E46C28();
  if (v3 == 1)
  {
    MEMORY[0x1B2728D70](0);
  }

  else
  {
    MEMORY[0x1B2728D70](1);
    MEMORY[0x1B2728DB0](v2);
  }

  return sub_1B0E46CB8();
}

BOOL sub_1B0B145F4(_BOOL8 result, uint64_t a2)
{
  if (*(result + 8) == 1)
  {
    return (*(a2 + 8) & 1) != 0;
  }

  if (*(a2 + 8))
  {
    return 0;
  }

  if (((*a2 | *result) & 0x8000000000000000) == 0)
  {
    return *a2 == *result;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B0B1463C(uint64_t result, int a2, uint64_t a3, char a4, uint64_t a5, int a6, uint64_t a7, char a8)
{
  if ((result & 0x100000000) != 0)
  {
    if ((a5 & 0x100000000) == 0)
    {
      return 0;
    }

    goto LABEL_6;
  }

  v8 = result;
  result = 0;
  if ((a5 & 0x100000000) == 0 && v8 == a5)
  {
LABEL_6:
    if (a4)
    {
      if (a8)
      {
        return 1;
      }
    }

    else if ((a8 & 1) == 0 && a2 == a6)
    {
      if ((a7 | a3) < 0)
      {
        __break(1u);
        return result;
      }

      if (a7 == a3)
      {
        return 1;
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_1B0B1469C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return 0;
  }

  v4 = 0;
  for (i = a1 + 56; ; i += 40)
  {
    v6 = *(i - 16);
    v7 = *(i - 8);
    sub_1B03B2000(v6, v7);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v8 = sub_1B0A92A68(v6, v7, a2);
    sub_1B0391D50(v6, v7);

    if (v8)
    {
      break;
    }

    if (v2 == ++v4)
    {
      return 0;
    }
  }

  return v4;
}

uint64_t sub_1B0B1476C(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  result = sub_1B0B1469C(*a1, a2);
  v35 = result;
  if (v2)
  {
    return v35;
  }

  if (v5)
  {
    return *(v3 + 16);
  }

  v6 = result + 1;
  if (!__OFADD__(result, 1))
  {
    v8 = (v3 + 16);
    v7 = *(v3 + 16);
    if (v6 == v7)
    {
      return v35;
    }

    v9 = 40 * result + 104;
    while (v6 < v7)
    {
      v14 = v3 + v9;
      v15 = *(v3 + v9 - 24);
      v16 = *(v3 + v9 - 16);
      sub_1B03B2000(v15, v16);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v17 = sub_1B0A92A68(v15, v16, a2);
      sub_1B0391D50(v15, v16);

      if ((v17 & 1) == 0)
      {
        v13 = v35;
        if (v6 != v35)
        {
          if ((v35 & 0x8000000000000000) != 0)
          {
            goto LABEL_23;
          }

          if (v35 >= *v8)
          {
            goto LABEL_24;
          }

          if (v6 >= *v8)
          {
            goto LABEL_25;
          }

          v18 = 40 * v35;
          v19 = v3 + 32 + 40 * v35;
          v20 = *(v19 + 24);
          v28 = *(v19 + 32);
          v31 = *v19;
          v32 = *(v14 - 32);
          v22 = *(v14 - 24);
          v21 = *(v14 - 16);
          v23 = *(v14 - 8);
          v24 = *(v3 + v9);
          v30 = *(v19 + 8);
          v29 = *(v19 + 16);
          sub_1B03B2000(v30, v29);
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          sub_1B03B2000(v22, v21);
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = sub_1B0B8C964(v3);
            v3 = result;
          }

          if (v35 >= *(v3 + 16))
          {
            goto LABEL_26;
          }

          v25 = v3 + v18;
          v26 = *(v3 + v18 + 40);
          v27 = *(v3 + v18 + 48);
          *(v25 + 32) = v32;
          *(v25 + 40) = v22;
          *(v25 + 48) = v21;
          *(v25 + 56) = v23;
          *(v25 + 64) = v24;
          sub_1B0391D50(v26, v27);

          if (v6 >= *(v3 + 16))
          {
            goto LABEL_27;
          }

          v10 = (v3 + v9);
          v11 = *(v3 + v9 - 24);
          v12 = *(v3 + v9 - 16);
          *(v10 - 8) = v31;
          *(v10 - 3) = v30;
          *(v10 - 2) = v29;
          *(v10 - 1) = v20;
          *v10 = v28;
          sub_1B0391D50(v11, v12);

          *a1 = v3;
          v13 = v35;
        }

        v35 = v13 + 1;
      }

      ++v6;
      v8 = (v3 + 16);
      v7 = *(v3 + 16);
      v9 += 40;
      if (v6 == v7)
      {
        return v35;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1B0B149EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B0B14A7C(uint64_t a1)
{
  result = sub_1B0E439A8();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1B0B14AF0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 25))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B0B14B10(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 25) = v3;
  return result;
}

uint64_t sub_1B0B14B64(uint64_t a1, uint64_t a2)
{
  v4 = _s19UserInitiatedSearchV5StateOMa(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1B0B14BDC()
{
  result = qword_1EB6E4588;
  if (!qword_1EB6E4588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E4588);
  }

  return result;
}

uint64_t sub_1B0B14C30(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v17 = *(a3 + 16);
  v18 = result;
  if (v17)
  {
    v4 = 0;
    v5 = (a3 + 52);
    v6 = MEMORY[0x1E69E7CC0];
    while (v4 < *(v3 + 16))
    {
      v7 = *(v5 - 5);
      v8 = *(v5 - 12);
      v9 = *(v5 - 1);
      v10 = *v5;
      v20 = v7;
      v21 = v8;
      v22 = v9;
      v23 = v10;
      v11 = j___s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v12 = v18(&v20, v11);
      if (v19)
      {
        j__swift_bridgeObjectRelease();

        goto LABEL_15;
      }

      if (v12)
      {
        result = swift_isUniquelyReferenced_nonNull_native();
        v24 = v6;
        if ((result & 1) == 0)
        {
          result = sub_1B0B09D84(0, *(v6 + 16) + 1, 1);
          v6 = v24;
        }

        v14 = *(v6 + 16);
        v13 = *(v6 + 24);
        if (v14 >= v13 >> 1)
        {
          result = sub_1B0B09D84((v13 > 1), v14 + 1, 1);
          v6 = v24;
        }

        *(v6 + 16) = v14 + 1;
        v15 = v6 + 24 * v14;
        *(v15 + 32) = v7;
        *(v15 + 40) = v8;
        *(v15 + 48) = v9;
        *(v15 + 52) = v10;
        v3 = a3;
      }

      else
      {
        result = j__swift_bridgeObjectRelease();
      }

      ++v4;
      v5 += 24;
      if (v17 == v4)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v6 = MEMORY[0x1E69E7CC0];
LABEL_15:

    return v6;
  }

  return result;
}

uint64_t sub_1B0B14DE4(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v18 = result;
  v17 = *(a3 + 16);
  if (v17)
  {
    v5 = 0;
    v6 = (a3 + 48);
    v7 = MEMORY[0x1E69E7CC0];
    while (v5 < *(v4 + 16))
    {
      v8 = *(v6 - 4);
      v10 = *(v6 - 1);
      v9 = *v6;
      v19 = v8;
      v20 = v10;
      v21 = v9;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v11 = v18(&v19);
      if (v3)
      {

        goto LABEL_16;
      }

      if (v11)
      {
        result = swift_isUniquelyReferenced_nonNull_native();
        v22 = v7;
        if ((result & 1) == 0)
        {
          result = sub_1B0B09DA4(0, *(v7 + 16) + 1, 1);
          v7 = v22;
        }

        v13 = *(v7 + 16);
        v12 = *(v7 + 24);
        v14 = v13 + 1;
        if (v13 >= v12 >> 1)
        {
          result = sub_1B0B09DA4((v12 > 1), v13 + 1, 1);
          v14 = v13 + 1;
          v7 = v22;
        }

        *(v7 + 16) = v14;
        v15 = v7 + 24 * v13;
        *(v15 + 32) = v8;
        *(v15 + 40) = v10;
        *(v15 + 48) = v9;
        v4 = a3;
      }

      else
      {
      }

      ++v5;
      v6 += 3;
      if (v17 == v5)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
LABEL_16:

    return v7;
  }

  return result;
}

uint64_t sub_1B0B14F6C(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v18 = result;
  v17 = *(a3 + 16);
  if (v17)
  {
    v5 = 0;
    v6 = (a3 + 48);
    v7 = MEMORY[0x1E69E7CC0];
    while (v5 < *(v4 + 16))
    {
      v8 = *(v6 - 4);
      v10 = *(v6 - 1);
      v9 = *v6;
      v19 = v8;
      v20 = v10;
      v21 = v9;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v11 = v18(&v19);
      if (v3)
      {

        goto LABEL_16;
      }

      if (v11)
      {
        result = swift_isUniquelyReferenced_nonNull_native();
        v22 = v7;
        if ((result & 1) == 0)
        {
          result = sub_1B0B09E04(0, *(v7 + 16) + 1, 1);
          v7 = v22;
        }

        v13 = *(v7 + 16);
        v12 = *(v7 + 24);
        v14 = v13 + 1;
        if (v13 >= v12 >> 1)
        {
          result = sub_1B0B09E04((v12 > 1), v13 + 1, 1);
          v14 = v13 + 1;
          v7 = v22;
        }

        *(v7 + 16) = v14;
        v15 = v7 + 24 * v13;
        *(v15 + 32) = v8;
        *(v15 + 40) = v10;
        *(v15 + 48) = v9;
        v4 = a3;
      }

      else
      {
      }

      ++v5;
      v6 += 3;
      if (v17 == v5)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
LABEL_16:

    return v7;
  }

  return result;
}

uint64_t sub_1B0B150F4(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v18 = result;
  v17 = *(a3 + 16);
  if (v17)
  {
    v5 = 0;
    v6 = (a3 + 48);
    v7 = MEMORY[0x1E69E7CC0];
    while (v5 < *(v4 + 16))
    {
      v8 = *(v6 - 4);
      v10 = *(v6 - 1);
      v9 = *v6;
      v19 = v8;
      v20 = v10;
      v21 = v9;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v11 = v18(&v19);
      if (v3)
      {

        goto LABEL_16;
      }

      if (v11)
      {
        result = swift_isUniquelyReferenced_nonNull_native();
        v22 = v7;
        if ((result & 1) == 0)
        {
          result = sub_1B0B09EC4(0, *(v7 + 16) + 1, 1);
          v7 = v22;
        }

        v13 = *(v7 + 16);
        v12 = *(v7 + 24);
        v14 = v13 + 1;
        if (v13 >= v12 >> 1)
        {
          result = sub_1B0B09EC4((v12 > 1), v13 + 1, 1);
          v14 = v13 + 1;
          v7 = v22;
        }

        *(v7 + 16) = v14;
        v15 = v7 + 24 * v13;
        *(v15 + 32) = v8;
        *(v15 + 40) = v10;
        *(v15 + 48) = v9;
        v4 = a3;
      }

      else
      {
      }

      ++v5;
      v6 += 3;
      if (v17 == v5)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
LABEL_16:

    return v7;
  }

  return result;
}

void sub_1B0B1527C(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4280, &qword_1B0EC4800);
  v24 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v23 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v20 - v10;
  v22 = *(a3 + 16);
  if (v22)
  {
    v12 = 0;
    v13 = MEMORY[0x1E69E7CC0];
    v20[1] = a2;
    v21 = a3;
    v20[0] = a1;
    while (v12 < *(a3 + 16))
    {
      v14 = (*(v24 + 80) + 32) & ~*(v24 + 80);
      v15 = *(v24 + 72);
      sub_1B03B5C80(a3 + v14 + v15 * v12, v11, &qword_1EB6E4280, &qword_1B0EC4800);
      v16 = a1(v11);
      if (v3)
      {
        sub_1B0398EFC(v11, &qword_1EB6E4280, &qword_1B0EC4800);

        goto LABEL_15;
      }

      if (v16)
      {
        sub_1B03C60A4(v11, v23, &qword_1EB6E4280, &qword_1B0EC4800);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v25 = v13;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1B0B0A064(0, *(v13 + 16) + 1, 1);
          v13 = v25;
        }

        v19 = *(v13 + 16);
        v18 = *(v13 + 24);
        if (v19 >= v18 >> 1)
        {
          sub_1B0B0A064((v18 > 1), v19 + 1, 1);
          v13 = v25;
        }

        *(v13 + 16) = v19 + 1;
        sub_1B03C60A4(v23, v13 + v14 + v19 * v15, &qword_1EB6E4280, &qword_1B0EC4800);
        a3 = v21;
        a1 = v20[0];
      }

      else
      {
        sub_1B0398EFC(v11, &qword_1EB6E4280, &qword_1B0EC4800);
      }

      if (v22 == ++v12)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_15:
  }
}

void sub_1B0B15500(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  SearchResult = type metadata accessor for FetchSearchResultMessages.Requests.Search(0);
  v24 = *(SearchResult - 8);
  MEMORY[0x1EEE9AC00](SearchResult - 8);
  v23 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v20 - v10;
  v22 = *(a3 + 16);
  if (v22)
  {
    v12 = 0;
    v13 = MEMORY[0x1E69E7CC0];
    v20[1] = a2;
    v21 = a3;
    v20[0] = a1;
    while (v12 < *(a3 + 16))
    {
      v14 = (*(v24 + 80) + 32) & ~*(v24 + 80);
      v15 = *(v24 + 72);
      sub_1B03BCDD0(a3 + v14 + v15 * v12, v11, type metadata accessor for FetchSearchResultMessages.Requests.Search);
      v16 = a1(v11);
      if (v3)
      {
        sub_1B0B238BC(v11, type metadata accessor for FetchSearchResultMessages.Requests.Search);

        goto LABEL_15;
      }

      if (v16)
      {
        sub_1B0B24104(v11, v23, type metadata accessor for FetchSearchResultMessages.Requests.Search);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v25 = v13;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1B0B0A184(0, *(v13 + 16) + 1, 1);
          v13 = v25;
        }

        v19 = *(v13 + 16);
        v18 = *(v13 + 24);
        if (v19 >= v18 >> 1)
        {
          sub_1B0B0A184((v18 > 1), v19 + 1, 1);
          v13 = v25;
        }

        *(v13 + 16) = v19 + 1;
        sub_1B0B24104(v23, v13 + v14 + v19 * v15, type metadata accessor for FetchSearchResultMessages.Requests.Search);
        a3 = v21;
        a1 = v20[0];
      }

      else
      {
        sub_1B0B238BC(v11, type metadata accessor for FetchSearchResultMessages.Requests.Search);
      }

      if (v22 == ++v12)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_15:
  }
}

uint64_t sub_1B0B1578C(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v18 = result;
  v17 = *(a3 + 16);
  if (v17)
  {
    v5 = 0;
    v6 = (a3 + 49);
    v7 = MEMORY[0x1E69E7CC0];
    while (v5 < *(v4 + 16))
    {
      v12 = *(v6 - 17);
      v13 = *(v6 - 9);
      v14 = *(v6 - 1);
      v15 = *v6;
      v19 = v12;
      v20 = v13;
      v21 = v14;
      v22 = v15;
      result = v18(&v19);
      if (v3)
      {

        goto LABEL_15;
      }

      if (result)
      {
        result = swift_isUniquelyReferenced_nonNull_native();
        v23 = v7;
        if ((result & 1) == 0)
        {
          result = sub_1B0B0A244(0, *(v7 + 16) + 1, 1);
          v7 = v23;
        }

        v9 = *(v7 + 16);
        v8 = *(v7 + 24);
        v10 = v9 + 1;
        if (v9 >= v8 >> 1)
        {
          result = sub_1B0B0A244((v8 > 1), v9 + 1, 1);
          v10 = v9 + 1;
          v3 = 0;
          v7 = v23;
        }

        *(v7 + 16) = v10;
        v11 = v7 + 24 * v9;
        *(v11 + 32) = v12;
        *(v11 + 40) = v13;
        *(v11 + 48) = v14;
        *(v11 + 49) = v15;
        v4 = a3;
      }

      ++v5;
      v6 += 24;
      if (v17 == v5)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
LABEL_15:

    return v7;
  }

  return result;
}

uint64_t sub_1B0B159C0(uint64_t result, uint64_t a2, uint64_t a3, void (*a4)(void), uint64_t (*a5)(uint64_t, uint64_t), uint64_t (*a6)(BOOL, uint64_t, uint64_t))
{
  v7 = a3;
  v8 = *(a3 + 16);
  if (v8)
  {
    v9 = a4;
    v10 = result;
    v11 = 0;
    v12 = (a3 + 48);
    v13 = MEMORY[0x1E69E7CC0];
    v25 = result;
    v24 = *(a3 + 16);
    while (v11 < *(v7 + 16))
    {
      v14 = *(v12 - 1);
      v15 = *v12;
      v29 = *(v12 - 4);
      v30 = v14;
      v31 = v15;
      v9();
      v16 = v10(&v29);
      if (v6)
      {
        a5(v30, v31);

        goto LABEL_15;
      }

      if (v16)
      {
        v17 = v29;
        v19 = v30;
        v18 = v31;
        result = swift_isUniquelyReferenced_nonNull_native();
        v32 = v13;
        if ((result & 1) == 0)
        {
          result = a6(0, *(v13 + 16) + 1, 1);
          v13 = v32;
        }

        v21 = *(v13 + 16);
        v20 = *(v13 + 24);
        if (v21 >= v20 >> 1)
        {
          result = a6(v20 > 1, v21 + 1, 1);
          v13 = v32;
        }

        *(v13 + 16) = v21 + 1;
        v22 = v13 + 24 * v21;
        *(v22 + 32) = v17;
        *(v22 + 40) = v19;
        *(v22 + 48) = v18;
        v9 = a4;
        v7 = a3;
        v10 = v25;
        v8 = v24;
      }

      else
      {
        result = a5(v30, v31);
      }

      ++v11;
      v12 += 3;
      if (v8 == v11)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC0];
LABEL_15:

    return v13;
  }

  return result;
}

uint64_t sub_1B0B15B88(uint64_t a1, void (*a2)(_BYTE *__return_ptr, _BYTE *), uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = a2;
    v6 = 0;
    v7 = a1 + 32;
    v8 = *(a4 + 16);
    v38 = (a4 + 32);
    v9 = MEMORY[0x1E69E7CC0];
    v36 = a1 + 32;
    do
    {
      v20 = (v7 + 24 * v6);
      v21 = *v20;
      v22 = *(v20 + 1);
      v23 = *(v20 + 16);
      LOBYTE(v20) = *(v20 + 17);
      *v40 = v21;
      *&v40[8] = v22;
      v40[16] = v23;
      v40[17] = v20;
      v5(v39, v40);
      if (v8)
      {
        v24 = *v39;
        v25 = v38;
        v26 = v8;
        while (1)
        {
          v27 = v25[9];
          *&v40[128] = v25[8];
          *&v40[144] = v27;
          *&v40[160] = v25[10];
          *&v40[169] = *(v25 + 169);
          v28 = v25[5];
          *&v40[64] = v25[4];
          *&v40[80] = v28;
          v29 = v25[7];
          *&v40[96] = v25[6];
          *&v40[112] = v29;
          v30 = v25[1];
          *v40 = *v25;
          *&v40[16] = v30;
          v31 = v25[3];
          *&v40[32] = v25[2];
          *&v40[48] = v31;
          if (*v39 == *v40)
          {
            break;
          }

          v25 += 12;
          if (!--v26)
          {
            goto LABEL_4;
          }
        }

        sub_1B0A912A8(v40, v39);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_1B0B00298(0, v9[2] + 1, 1, v9);
        }

        v33 = v9[2];
        v32 = v9[3];
        if (v33 >= v32 >> 1)
        {
          v9 = sub_1B0B00298((v32 > 1), v33 + 1, 1, v9);
        }

        *&v39[132] = *&v40[136];
        *&v39[148] = *&v40[152];
        *&v39[164] = *&v40[168];
        v39[180] = v40[184];
        *&v39[68] = *&v40[72];
        *&v39[84] = *&v40[88];
        *&v39[100] = *&v40[104];
        *&v39[116] = *&v40[120];
        *&v39[4] = *&v40[8];
        *&v39[20] = *&v40[24];
        *&v39[36] = *&v40[40];
        *&v39[52] = *&v40[56];
        v9[2] = v33 + 1;
        v10 = &v9[24 * v33];
        *(v10 + 8) = v24;
        v11 = *v39;
        v12 = *&v39[16];
        v13 = *&v39[32];
        *(v10 + 84) = *&v39[48];
        *(v10 + 68) = v13;
        *(v10 + 52) = v12;
        *(v10 + 36) = v11;
        v14 = *&v39[64];
        v15 = *&v39[80];
        v16 = *&v39[96];
        *(v10 + 148) = *&v39[112];
        *(v10 + 132) = v16;
        *(v10 + 116) = v15;
        *(v10 + 100) = v14;
        v17 = *&v39[128];
        v18 = *&v39[144];
        v19 = *&v39[160];
        *(v10 + 209) = *&v39[173];
        *(v10 + 196) = v19;
        *(v10 + 180) = v18;
        *(v10 + 164) = v17;
        v7 = v36;
        v5 = a2;
      }

LABEL_4:
      ++v6;
    }

    while (v6 != v4);
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];
  }

  if (v9[2])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E45C0, &unk_1B0EC5930);
    v34 = sub_1B0E466A8();
  }

  else
  {
    v34 = MEMORY[0x1E69E7CC8];
  }

  *v40 = v34;
  sub_1B0B234B8(v9, 1, v40);

  return *v40;
}

uint64_t sub_1B0B15E58(uint64_t a1)
{
  sub_1B03D06F8();
  result = sub_1B0E46EE8();
  v3 = 0;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  for (i = (v4 + 63) >> 6; v6; result = MessageIdentifierSet.insert(_:)(v12, &v11, v10))
  {
    v8 = v3;
LABEL_9:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v11 = *(*(a1 + 48) + ((v8 << 8) | (4 * v9)));
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  }

  while (1)
  {
    v8 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v8 >= i)
    {
    }

    v6 = *(a1 + 64 + 8 * v8);
    ++v3;
    if (v6)
    {
      v3 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B0B15F78(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v9 = a1[3];
  v10 = a1[4];
  v11 = __swift_project_boxed_opaque_existential_0(a1, v9);
  v12 = sub_1B0B7CD90(v11, a2, a3, v9, v10);
  if ((v12 & 1) != 0 && (a5 & 1) == 0)
  {
    v13 = a1[3];
    v14 = a1[4];
    __swift_project_boxed_opaque_existential_0(a1, v13);
    v12 = (*(v14 + 56))(v13, v14) ^ 1;
  }

  return v12 & 1;
}

uint64_t sub_1B0B16070@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t (*a5)(uint64_t *)@<X4>, _DWORD *a6@<X5>, void (*a7)(uint64_t)@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, unint64_t a13, uint64_t a14, char a15)
{
  v238 = a8;
  v239 = a7;
  v268 = a5;
  v257 = a2;
  v251 = a1;
  v246 = a9;
  v254 = type metadata accessor for SearchMailbox(0);
  MEMORY[0x1EEE9AC00](v254);
  v253 = (&v225 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v255 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4590, &qword_1B0EC5900);
  MEMORY[0x1EEE9AC00](v255);
  v252 = &v225 - v21;
  v270 = _s19UserInitiatedSearchV5StateOMa(0);
  MEMORY[0x1EEE9AC00](v270);
  v261 = &v225 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v269 = _s19UserInitiatedSearchVMa(0);
  v241 = *(v269 - 8);
  MEMORY[0x1EEE9AC00](v269);
  v256 = (&v225 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v233 = _s29DetermineMessageBatchesResultOMa(0);
  MEMORY[0x1EEE9AC00](v233);
  v234 = (&v225 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = type metadata accessor for MessageBatches(0);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v232 = &v225 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v228 = type metadata accessor for DownloadTask(0);
  MEMORY[0x1EEE9AC00](v228);
  v229 = (&v225 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  v230 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4598, &unk_1B0EC5908);
  MEMORY[0x1EEE9AC00](v230);
  v231 = &v225 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  MEMORY[0x1EEE9AC00](v29 - 8);
  v237 = &v225 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v242 = &v225 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v244 = &v225 - v34;
  v35 = type metadata accessor for MessagesPendingDownloadPerPass(0);
  MEMORY[0x1EEE9AC00](v35 - 8);
  v240 = &v225 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for MessagesPendingDownload(0);
  MEMORY[0x1EEE9AC00](v37 - 8);
  v235 = &v225 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39);
  v236 = &v225 - v40;
  MEMORY[0x1EEE9AC00](v41);
  v265 = &v225 - v42;
  v243 = 0;
  v266 = _s29DetermineNewestMessagesResultOMa(0);
  MEMORY[0x1EEE9AC00](v266);
  v44 = &v225 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v260 = *(v15 + 172);
  v45 = *v15;
  v259 = *(v15 + 8);
  v46 = *(v15 + 16);
  v258 = *(v15 + 24);
  v247 = v15;
  v47 = *(v15 + 144);
  v48 = *(v47 + 16);
  v245 = a3;
  v262 = v46;
  v263 = v45;
  v227 = a4;
  v267 = v47;
  if (v48)
  {
    *&v278 = MEMORY[0x1E69E7CC0];
    swift_bridgeObjectRetain_n();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0B0A304(0, v48, 0);
    v49 = v278;
    v50 = (v47 + 48);
    do
    {
      v52 = *(v50 - 1);
      v51 = *v50;
      sub_1B03B2000(v52, *v50);
      *&v278 = v49;
      v54 = *(v49 + 16);
      v53 = *(v49 + 24);
      v16 = v54 + 1;
      if (v54 >= v53 >> 1)
      {
        sub_1B0B0A304((v53 > 1), v54 + 1, 1);
        v49 = v278;
      }

      v50 += 5;
      *(v49 + 16) = v16;
      v55 = v49 + 16 * v54;
      *(v55 + 32) = v52;
      *(v55 + 40) = v51;
      --v48;
    }

    while (v48);
    a3 = v245;
  }

  else
  {
    swift_bridgeObjectRetain_n();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v49 = MEMORY[0x1E69E7CC0];
  }

  v56 = sub_1B03D74A0(v49);

  v57 = v251 + OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped;
  swift_beginAccess();
  v248 = _s13SelectedStateV7WrappedVMa(0);
  v58 = *(v248 + 20);
  v264 = v57;
  v59 = v57 + v58;
  v249 = type metadata accessor for MailboxSyncState(0);
  v60 = *(v59 + *(v249 + 56));
  *&v284 = MEMORY[0x1E69E7CD0];
  BYTE8(v284) = 0;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v61 = MEMORY[0x1E69E7CC0];
  v62 = sub_1B03D016C(MEMORY[0x1E69E7CC0]);
  v285 = v62;
  v63 = sub_1B03D753C(v60, v56);

  if (*(v63 + 16))
  {
    *&v278 = v263;
    *(&v278 + 1) = v259;
    LOWORD(v279) = v260;
    *(&v279 + 1) = v262;
    LODWORD(v280) = v258;
    *&v275 = v262;
    DWORD2(v275) = v258;
    *(&v280 + 1) = v63;
    *&v281 = &type metadata for GetUIDsForDownloadRequests;
    sub_1B0451F2C();
    sub_1B0E461E8();
    v290 = v282;
    v291 = v283;
    v292 = v284;
    v293 = v285;
    v286 = v278;
    v287 = v279;
    v288 = v280;
    v289 = v281;
    sub_1B0B0E0FC(&v286, v271);
    *&v271[120] = v61;
    *&v271[128] = v61;
    sub_1B0B0E134(&v286);
    *&v272[96] = *&v271[96];
    *&v272[112] = *&v271[112];
    *&v272[128] = *&v271[128];
    *&v272[32] = *&v271[32];
    *&v272[48] = *&v271[48];
    *&v272[64] = *&v271[64];
    *&v272[80] = *&v271[80];
    *v272 = *v271;
    *&v272[16] = *&v271[16];
    v62 = &qword_1B0EC5918;
    v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E45A0, &qword_1B0EC5918);
    *&v271[24] = v64;
    v65 = sub_1B0B23F6C(&qword_1EB6DD398, &qword_1EB6E45A0, &qword_1B0EC5918);
    *&v271[32] = v65;
    *v271 = swift_allocObject();
    sub_1B03B5C80(v272, *v271 + 16, &qword_1EB6E45A0, &qword_1B0EC5918);
    v66 = v268(v271);
    __swift_destroy_boxed_opaque_existential_0(v271);
    if (v66)
    {

      v67 = v246;
      v246[3] = v64;
      v67[4] = v65;
      result = swift_allocObject();
      *v67 = result;
      v69 = *&v272[112];
      *(result + 112) = *&v272[96];
      *(result + 128) = v69;
      *(result + 144) = *&v272[128];
      v70 = *&v272[48];
      *(result + 48) = *&v272[32];
      *(result + 64) = v70;
      v71 = *&v272[80];
      *(result + 80) = *&v272[64];
      *(result + 96) = v71;
      v72 = *&v272[16];
      *(result + 16) = *v272;
      *(result + 32) = v72;
      return result;
    }

    sub_1B0398EFC(v272, &qword_1EB6E45A0, &qword_1B0EC5918);
  }

  else
  {

    swift_bridgeObjectRelease_n();
  }

  v226 = a13;
  LOBYTE(v73) = v247;
  sub_1B03D6DD0(v251, v268, a6, v44);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v75 = v261;
  v76 = v265;
  if (EnumCaseMultiPayload == 1)
  {

    v77 = *(v44 + 1);
    v78 = v246;
    *v246 = *v44;
    *(v78 + 16) = v77;
    *(v78 + 32) = *(v44 + 4);
    return result;
  }

  sub_1B0B238BC(v44, _s29DetermineNewestMessagesResultOMa);
  if (qword_1EB6DDFC0 != -1)
  {
    swift_once();
  }

  v79 = v257;
  v80 = sub_1B03D9200(qword_1EB737DC0, v257, a3);
  v250 = a6;
  if ((v80 & 1) == 0)
  {

    goto LABEL_67;
  }

  v16 = v248;
  v81 = v249;
  v82 = v264;
  v83 = v264 + *(v248 + 20) + *(v249 + 52);
  v84 = v83 + *(type metadata accessor for PendingPersistenceUpdates(0) + 28);
  v73 = v240;
  sub_1B03BCDD0(v84, v240, type metadata accessor for MessagesPendingDownloadPerPass);
  sub_1B03BCDD0(v73, v76, type metadata accessor for MessagesPendingDownload);
  v85 = sub_1B0B238BC(v73, type metadata accessor for MessagesPendingDownloadPerPass);
  if (!*(*v76 + 16) && !*(*(v82 + *(v16 + 20) + *(v81 + 56)) + 16))
  {

    sub_1B0B238BC(v76, type metadata accessor for MessagesPendingDownload);
    a3 = v245;
    v79 = v257;
    goto LABEL_67;
  }

  v86 = v244;
  v239(v85);
  v87 = v236;
  sub_1B03BCDD0(v76, v236, type metadata accessor for MessagesPendingDownload);
  a6 = &unk_1B0E9AF40;
  v76 = v242;
  sub_1B03B5C80(v86, v242, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  v88 = *(v82 + *(v16 + 20) + *(v81 + 56));
  v16 = v235;
  sub_1B03BCDD0(v87, v235, type metadata accessor for MessagesPendingDownload);
  v89 = v237;
  sub_1B03B5C80(v76, v237, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  v90 = swift_allocObject();
  *(v90 + 16) = v88;
  *&v286 = v267;
  *(&v286 + 1) = sub_1B0B23A04;
  *&v287 = v90;
  *(&v287 + 1) = sub_1B0B23460;
  *&v288 = 0;
  *(&v288 + 1) = sub_1B0B23474;
  *&v289 = 0;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v91 = sub_1B0B20C24(v16, v89, &v286);
  v93 = v92;
  v240 = v94;
  sub_1B0398EFC(v76, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  sub_1B0B238BC(v87, type metadata accessor for MessagesPendingDownload);
  v239 = v91;
  LODWORD(v238) = byte_1F2711300;
  if (byte_1F2711300)
  {
    a3 = v245;
    if (byte_1F2711300 == 1)
    {
      v95 = 11;
    }

    else
    {
      v95 = 13;
    }

    v99 = v242;
    v100 = sub_1B0B42388(v95, v91, v93 | ((HIDWORD(v93) & 1) << 32), v242);
    MEMORY[0x1EEE9AC00](v100);
    *(&v225 - 2) = v99;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v101 = v91;
    v102 = v243;
    v103 = sub_1B0B1578C(sub_1B0B23A0C, (&v225 - 4), v101);
    v243 = v102;
    v104 = sub_1B0B208F0(v103);
    sub_1B0398EFC(v99, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    v98 = v104;
    v75 = v261;
    v105 = v264;
    v106 = v248;
    v107 = v249;
    v79 = v257;
    v62 = *(v104 + 16);
    if (!v62)
    {
      goto LABEL_65;
    }

    goto LABEL_31;
  }

  v96 = v240;
  v62 = *(v240 + 16);
  LOBYTE(v73) = v62 - 7;
  a3 = v245;
  v79 = v257;
  if (v62 > 7)
  {
    v97 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v98 = sub_1B0B20A30(v97, v96 + 32, v62 - 7, (2 * v62) | 1);
    v75 = v261;
    goto LABEL_30;
  }

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v108 = v62 - 1;
  v75 = v261;
  v98 = v96;
  if (v62 <= 1)
  {
LABEL_30:
    v105 = v264;
    v106 = v248;
    v107 = v249;
    v62 = *(v98 + 2);
    if (!v62)
    {
      goto LABEL_65;
    }

LABEL_31:
    v109 = *(v105 + *(v106 + 20) + *(v107 + 80));
    v110 = *(v109 + 16);
    v266 = v109 + 32;
    v267 = (v98 + 8);
    v248 = v109;
    v111 = v98;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v249 = v111;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v112 = 0;
    v113 = MEMORY[0x1E69E7CC0];
    v264 = v62;
    do
    {
      if (v110)
      {
        v124 = *(v267 + 24 * v112);
        v125 = v266;
        v126 = v110;
        while (1)
        {
          v127 = *v125;
          v128 = v125[1];
          v129 = v125[3];
          *&v272[32] = v125[2];
          *&v272[48] = v129;
          *v272 = v127;
          *&v272[16] = v128;
          v130 = v125[4];
          v131 = v125[5];
          v132 = v125[7];
          *&v272[96] = v125[6];
          *&v272[112] = v132;
          *&v272[64] = v130;
          *&v272[80] = v131;
          v133 = v125[8];
          v134 = v125[9];
          v135 = v125[10];
          *&v272[169] = *(v125 + 169);
          *&v272[144] = v134;
          *&v272[160] = v135;
          *&v272[128] = v133;
          if (v124 == *v272)
          {
            break;
          }

          v125 += 12;
          if (!--v126)
          {
            goto LABEL_33;
          }
        }

        sub_1B0A912A8(v272, v271);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v113 = sub_1B0B00298(0, v113[2] + 1, 1, v113);
        }

        v137 = v113[2];
        v136 = v113[3];
        if (v137 >= v136 >> 1)
        {
          v113 = sub_1B0B00298((v136 > 1), v137 + 1, 1, v113);
        }

        *&v271[132] = *&v272[136];
        *&v271[148] = *&v272[152];
        *&v271[164] = *&v272[168];
        v271[180] = v272[184];
        *&v271[68] = *&v272[72];
        *&v271[84] = *&v272[88];
        *&v271[100] = *&v272[104];
        *&v271[116] = *&v272[120];
        *&v271[4] = *&v272[8];
        *&v271[20] = *&v272[24];
        *&v271[36] = *&v272[40];
        *&v271[52] = *&v272[56];
        v113[2] = v137 + 1;
        v114 = &v113[24 * v137];
        *(v114 + 8) = v124;
        v115 = *v271;
        v116 = *&v271[16];
        v117 = *&v271[32];
        *(v114 + 84) = *&v271[48];
        *(v114 + 68) = v117;
        *(v114 + 52) = v116;
        *(v114 + 36) = v115;
        v118 = *&v271[64];
        v119 = *&v271[80];
        v120 = *&v271[96];
        *(v114 + 148) = *&v271[112];
        *(v114 + 132) = v120;
        *(v114 + 116) = v119;
        *(v114 + 100) = v118;
        v121 = *&v271[128];
        v122 = *&v271[144];
        v123 = *&v271[160];
        *(v114 + 209) = *&v271[173];
        *(v114 + 196) = v123;
        *(v114 + 180) = v122;
        *(v114 + 164) = v121;
        v62 = v264;
      }

LABEL_33:
      ++v112;
    }

    while (v112 != v62);
    if (v113[2])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E45C0, &unk_1B0EC5930);
      v138 = sub_1B0E466A8();
    }

    else
    {
      v138 = MEMORY[0x1E69E7CC8];
    }

    v139 = v263;
    *v272 = v138;
    v140 = v243;
    sub_1B0B234B8(v113, 1, v272);
    if (v140)
    {

      __break(1u);
      return result;
    }

    v141 = v249;

    v267 = *v272;
    v294[0] = v139;
    v294[1] = v259;
    v295 = v260;
    v142 = v262;
    v296 = v262;
    v297 = v258;
    v143 = v258;
    swift_bridgeObjectRetain_n();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v144 = sub_1B0451E64(MEMORY[0x1E69E7CC0]);
    v145 = v229;
    *v229 = v144;
    *(v145 + 8) = 0;
    v146 = v238;
    sub_1B0ABD77C(v294, v141, v238, v272);
    v147 = *&v272[40];
    v148 = *&v272[16];
    *(v145 + 64) = *v272;
    *(v145 + 80) = v148;
    *(v145 + 96) = *&v272[32];
    *(v145 + 112) = v272[48];
    *(v145 + 9) = 0;
    *v271 = v142;
    *&v271[8] = v143;
    LODWORD(a6) = v143;
    v271[12] = 0;
    v271[13] = v146;
    v149 = v228;
    *(v145 + 16) = v228;
    sub_1B03D06A4();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0E461E8();
    v150 = *(v149 + 36);
    v266 = *(v149 + 40);
    v73 = v145 + v150;
    v151 = _s18InProgressMessagesVMa(0);
    sub_1B03D06F8();
    sub_1B0E46EE8();
    sub_1B0E46EE8();
    sub_1B0E46EE8();
    v152 = MEMORY[0x1E69E7CC0];
    v153 = sub_1B0BABAA8(MEMORY[0x1E69E7CC0]);
    *v73 = v142;
    *(v73 + 8) = a6;
    *(v73 + 16) = v267;
    *(v73 + v151[7]) = v152;
    *(v73 + v151[8]) = v152;
    v16 = v152;
    *(v73 + v151[11]) = v153;
    sub_1B0AC3330(v145 + v266);
    sub_1B0AC39A4(v147);

    v154 = v231;
    sub_1B0B24104(v145, v231, type metadata accessor for DownloadTask);
    v76 = v230;
    v155 = (v154 + *(v230 + 36));
    *v155 = v16;
    v155[1] = v16;
    *&v271[24] = v76;
    v62 = sub_1B0B23F6C(&qword_1EB6DD400, &qword_1EB6E4598, &unk_1B0EC5908);
    *&v271[32] = v62;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v271);
    sub_1B03B5C80(v154, boxed_opaque_existential_1, &qword_1EB6E4598, &unk_1B0EC5908);
    LOBYTE(v73) = v268(v271);
    __swift_destroy_boxed_opaque_existential_0(v271);
    if ((v73 & 1) == 0)
    {
      sub_1B0398EFC(v154, &qword_1EB6E4598, &unk_1B0EC5908);
      a3 = v245;
      v79 = v257;
      v75 = v261;
      LOBYTE(v73) = v239;
      goto LABEL_66;
    }

    *(&v276 + 1) = v76;
    v277 = v62;
    v157 = __swift_allocate_boxed_opaque_existential_1(&v275);
    sub_1B03C60A4(v154, v157, &qword_1EB6E4598, &unk_1B0EC5908);
    sub_1B0398EFC(v244, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    sub_1B0B238BC(v265, type metadata accessor for MessagesPendingDownload);
    a3 = v245;
    v79 = v257;
    v75 = v261;
    if (*(&v276 + 1))
    {
      sub_1B0450C74(&v275, &v278);
      v158 = &v278;
      return sub_1B0450C74(v158, v246);
    }

    goto LABEL_68;
  }

  v159 = *(v96 + 16);
  if (!v159)
  {
LABEL_99:
    __break(1u);
    goto LABEL_100;
  }

  if (v108 < v159)
  {
    LODWORD(v16) = *(v96 + 32);
    v267 = *(v96 + 40);
    LOBYTE(a6) = *(v96 + 48);
    LODWORD(v266) = *(v96 + 49);
    v76 = 24 * v108;
    v160 = v96 + 32 + 24 * v108;
    LODWORD(a3) = *v160;
    v79 = *(v160 + 8);
    LOBYTE(v73) = *(v160 + 16);
    LOBYTE(v75) = *(v160 + 17);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v98 = v96;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      goto LABEL_101;
    }

    goto LABEL_55;
  }

LABEL_100:
  while (1)
  {
    __break(1u);
LABEL_101:
    v98 = sub_1B0B8C98C(v240);
LABEL_55:
    v98[8] = a3;
    *(v98 + 5) = v79;
    *(v98 + 48) = v73;
    *(v98 + 49) = v75;
    v162 = v98 + v76 + 32;
    *v162 = v16;
    *(v162 + 1) = v267;
    v162[16] = a6;
    v162[17] = v266;
    a3 = v245;
    v79 = v257;
    v75 = v261;
    v105 = v264;
    v107 = v249;
    v73 = v62 >> 1;
    if (v62 >> 1 == 1)
    {
      break;
    }

    v163 = v62 - 2;
    if (v62 == 3)
    {
      goto LABEL_62;
    }

    v164 = *(v98 + 2);
    if (v164 < 2)
    {
      goto LABEL_99;
    }

    if (v163 < v164)
    {
      LODWORD(v267) = v98[14];
      v266 = *(v98 + 8);
      LODWORD(v242) = *(v98 + 72);
      v76 = *(v98 + 73);
      v165 = 6 * v163;
      v166 = &v98[6 * v163];
      v167 = v166[8];
      v168 = *(v166 + 5);
      v169 = *(v166 + 48);
      LODWORD(v16) = *(v166 + 49);
      a6 = v98;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        a6 = sub_1B0B8C98C(a6);
      }

      v105 = v264;
      v107 = v249;
      v98 = a6;
      v170 = &a6[v165];
      a6[14] = v167;
      *(a6 + 8) = v168;
      *(a6 + 72) = v169;
      *(a6 + 73) = v16;
      v170[8] = v267;
      *(v170 + 5) = v266;
      *(v170 + 48) = v242;
      *(v170 + 49) = v76;
      a3 = v245;
      v79 = v257;
      v75 = v261;
LABEL_62:
      if (v73 == 2)
      {
        break;
      }

      v171 = v62 - 3;
      if (v62 == 5)
      {
        break;
      }

      v216 = *(v98 + 2);
      if (v216 < 3)
      {
        goto LABEL_99;
      }

      if (v171 < v216)
      {
        LODWORD(v267) = v98[20];
        v217 = *(v98 + 11);
        v218 = *(v98 + 96);
        v219 = *(v98 + 97);
        v16 = 24 * v171;
        v220 = &v98[6 * v171];
        v76 = v220[8];
        v221 = *(v220 + 5);
        v222 = *(v220 + 48);
        v223 = *(v220 + 49);
        a6 = v98;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          a6 = sub_1B0B8C98C(a6);
        }

        v98 = a6;
        v224 = a6 + v16;
        a6[20] = v76;
        *(a6 + 11) = v221;
        *(a6 + 96) = v222;
        *(a6 + 97) = v223;
        *(v224 + 8) = v267;
        *(v224 + 5) = v217;
        v224[48] = v218;
        v224[49] = v219;
        a3 = v245;
        v79 = v257;
        v75 = v261;
        goto LABEL_30;
      }
    }
  }

  v106 = v248;
  v62 = *(v98 + 2);
  if (v62)
  {
    goto LABEL_31;
  }

LABEL_65:

  LOBYTE(v73) = v239;
LABEL_66:
  sub_1B0398EFC(v244, &unk_1EB6E1AF0, &unk_1B0E9AF40);

  sub_1B0B238BC(v265, type metadata accessor for MessagesPendingDownload);
LABEL_67:
  v277 = 0;
  v275 = 0u;
  v276 = 0u;
LABEL_68:
  sub_1B0398EFC(&v275, &qword_1EB6E45A8, &unk_1B0EC5920);
  if (qword_1EB6DDF10 != -1)
  {
    swift_once();
  }

  if ((sub_1B03D9200(qword_1EB737DA8, v79, a3) & 1) == 0)
  {
    __break(1u);
    goto LABEL_99;
  }

  v249 = a12;
  v244 = *(v247 + 152);
  v172 = *(v244 + 16);
  v173 = v256;
  if (!v172)
  {
LABEL_78:
    result = sub_1B0ADEB60(v244);
    if (result)
    {
      v191 = v234;
      v192 = v247;
      sub_1B0B1B95C(v251, v268, v250, v249, a14, a15 & 1, v234);
      result = swift_getEnumCaseMultiPayload();
      if (result == 1)
      {
        v193 = *(v191 + 1);
        v194 = v246;
        *v246 = *v191;
        *(v194 + 16) = v193;
        *(v194 + 32) = v191[4];
      }

      else
      {
        v197 = HIDWORD(v226) & 1;
        v198 = v226 & 1;
        v269 = HIWORD(v226) & 1;
        v270 = (v226 >> 40) & 1;
        v267 = HIBYTE(v226) & 1;
        v199 = BYTE3(v226) & 1;
        v200 = v226 >> 16;
        v201 = v191;
        v202 = v226 >> 8;
        v203 = v232;
        sub_1B0B24104(v201, v232, type metadata accessor for MessageBatches);
        MEMORY[0x1EEE9AC00](v79);
        *(&v225 - 4) = v192;
        *(&v225 - 3) = v203;
        LODWORD(v265) = v198;
        *(&v225 - 16) = v198;
        v262 = v202;
        v263 = v200;
        *(&v225 - 15) = v202;
        *(&v225 - 14) = v200;
        LODWORD(v264) = v199;
        *(&v225 - 13) = v199;
        v266 = v197;
        *(&v225 - 12) = v197;
        v205 = v269;
        v204 = v270;
        v207 = v267;
        v206 = v268;
        *(&v225 - 11) = v270;
        *(&v225 - 10) = v205;
        *(&v225 - 9) = v207;
        v208 = v245;
        v209 = v227;
        sub_1B0B18C58(v210, v245, v206, sub_1B0B2391C, &v273, v227);
        if (v274)
        {
          sub_1B0450C74(&v273, &v275);
          sub_1B0450C74(&v275, &v278);
          v211 = v246;
          v212 = v232;
        }

        else
        {
          v213 = sub_1B0398EFC(&v273, &qword_1EB6E45A8, &unk_1B0EC5920);
          MEMORY[0x1EEE9AC00](v213);
          v214 = v232;
          *(&v225 - 6) = v247;
          *(&v225 - 5) = v214;
          v215 = v249;
          *(&v225 - 4) = v251;
          *(&v225 - 3) = v215;
          *(&v225 - 16) = v265;
          LOBYTE(v215) = v263;
          *(&v225 - 15) = v262;
          *(&v225 - 14) = v215;
          *(&v225 - 13) = v264;
          *(&v225 - 12) = v266;
          *(&v225 - 11) = v204;
          *(&v225 - 10) = v205;
          *(&v225 - 9) = v207;
          sub_1B0B1892C(v257, v208, v268, v250, sub_1B0B23920, &v273, v209);
          v212 = v214;
          if (v274)
          {
            sub_1B0450C74(&v273, &v275);
            sub_1B0450C74(&v275, &v278);
          }

          else
          {
            sub_1B0398EFC(&v273, &qword_1EB6E45A8, &unk_1B0EC5920);
            v278 = 0u;
            v279 = 0u;
            *&v280 = 0;
          }

          v211 = v246;
        }

        sub_1B0B238BC(v212, type metadata accessor for MessageBatches);
        if (*(&v279 + 1))
        {
          sub_1B0450C74(&v278, v271);
          return sub_1B0450C74(v271, v211);
        }

        else
        {
          result = sub_1B0398EFC(&v278, &qword_1EB6E45A8, &unk_1B0EC5920);
          *(v211 + 32) = 0;
          *v211 = 0u;
          *(v211 + 16) = 0u;
        }
      }
    }

    else
    {
      v195 = v246;
      v246[4] = 0;
      *v195 = 0u;
      v195[1] = 0u;
    }

    return result;
  }

  v174 = v244 + ((*(v241 + 80) + 32) & ~*(v241 + 80));
  v175 = *(v241 + 72);
  v248 = v175;
  while (2)
  {
    sub_1B03BCDD0(v174, v173, _s19UserInitiatedSearchVMa);
    sub_1B03BCDD0(v173 + *(v269 + 20), v75, _s19UserInitiatedSearchV5StateOMa);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1B0B238BC(v173, _s19UserInitiatedSearchVMa);
      sub_1B0B238BC(v75, _s19UserInitiatedSearchV5StateOMa);
      goto LABEL_74;
    }

    v177 = *v75;
    v176 = *(v75 + 8);
    v266 = *(v75 + 16);
    LODWORD(v265) = *(v75 + 24);
    v178 = *v173;
    LODWORD(v264) = *(v249 + 4);
    v180 = v253;
    v179 = v254;
    *v253 = 223;
    *(v180 + 104) = MEMORY[0x1E69E7CD0];
    *(v180 + 112) = 0;
    v181 = *(v179 + 52);
    v182 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26C0, &unk_1B0E9DE10);
    (*(*(v182 - 8) + 56))(v180 + v181, 1, 1, v182);
    *(v180 + 8) = v178;
    v183 = v262;
    v184 = v259;
    *(v180 + 16) = v263;
    *(v180 + 24) = v184;
    *(v180 + 32) = v260;
    *(v180 + 40) = v183;
    LODWORD(v184) = v258;
    *(v180 + 48) = v258;
    LODWORD(v275) = v178;
    *(&v275 + 1) = v183;
    LODWORD(v276) = v184;
    *(v180 + 56) = v179;
    swift_bridgeObjectRetain_n();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0B23938(v177);
    sub_1B0B23974();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0E461E8();
    *(v180 + 120) = v177;
    *(v180 + 128) = v176;
    v267 = v176;
    *(v180 + 136) = v266;
    *(v180 + 144) = v265;
    *(v180 + 145) = v264;
    v185 = v252;
    sub_1B0B24104(v180, v252, type metadata accessor for SearchMailbox);
    v186 = v255;
    v187 = (v185 + *(v255 + 36));
    v188 = MEMORY[0x1E69E7CC0];
    *v187 = MEMORY[0x1E69E7CC0];
    v187[1] = v188;
    *(&v276 + 1) = v186;
    v189 = sub_1B0B23F6C(&qword_1EB6E45B8, &qword_1EB6E4590, &qword_1B0EC5900);
    v277 = v189;
    v190 = __swift_allocate_boxed_opaque_existential_1(&v275);
    sub_1B03B5C80(v185, v190, &qword_1EB6E4590, &qword_1B0EC5900);
    LOBYTE(v178) = v268(&v275);
    __swift_destroy_boxed_opaque_existential_0(&v275);
    if ((v178 & 1) == 0)
    {
      sub_1B0B239C8(v177);

      sub_1B0398EFC(v185, &qword_1EB6E4590, &qword_1B0EC5900);
      v173 = v256;
      sub_1B0B238BC(v256, _s19UserInitiatedSearchVMa);
      v79 = v257;
      v75 = v261;
      v175 = v248;
LABEL_74:
      v174 += v175;
      if (!--v172)
      {
        goto LABEL_78;
      }

      continue;
    }

    break;
  }

  *(&v279 + 1) = v255;
  *&v280 = v189;
  v196 = __swift_allocate_boxed_opaque_existential_1(&v278);
  sub_1B03C60A4(v185, v196, &qword_1EB6E4590, &qword_1B0EC5900);
  sub_1B0B239C8(v177);

  sub_1B0B238BC(v256, _s19UserInitiatedSearchVMa);
  sub_1B0450C74(&v278, v271);
  v158 = v271;
  return sub_1B0450C74(v158, v246);
}

uint64_t sub_1B0B17C7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t (*a5)(uint64_t *)@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>, uint64_t a8, uint64_t a9, uint64_t a10, unint64_t a11, uint64_t a12, char a13, uint64_t a14)
{
  v74 = a4;
  v78 = a1;
  v86 = type metadata accessor for SearchMailbox(0);
  MEMORY[0x1EEE9AC00](v86);
  v20 = &v72 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4590, &qword_1B0EC5900);
  MEMORY[0x1EEE9AC00](v87);
  v85 = &v72 - v21;
  v96 = _s19UserInitiatedSearchV5StateOMa(0);
  MEMORY[0x1EEE9AC00](v96);
  v89 = &v72 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = _s19UserInitiatedSearchVMa(0);
  v23 = *(v95 - 8);
  MEMORY[0x1EEE9AC00](v95);
  v25 = (&v72 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v77 = _s29DetermineMessageBatchesResultOMa(0);
  MEMORY[0x1EEE9AC00](v77);
  v27 = (&v72 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28 = type metadata accessor for MessageBatches(0);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v30 = &v72 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EB6DDF10 != -1)
  {
    swift_once();
  }

  result = sub_1B03D9200(qword_1EB737DA8, a2, a3);
  if (result)
  {
    v75 = v27;
    v76 = v30;
    v72 = a2;
    v73 = a3;
    v79 = a7;
    v32 = a14;
    v88 = a10;
    v80 = *(a14 + 152);
    v33 = *(v80 + 16);
    v34 = v89;
    if (v33)
    {
      v35 = v80 + ((*(v23 + 80) + 32) & ~*(v23 + 80));
      v36 = *(v23 + 72);
      v84 = a5;
      v83 = a14;
      v81 = v36;
      v82 = v25;
      do
      {
        sub_1B03BCDD0(v35, v25, _s19UserInitiatedSearchVMa);
        sub_1B03BCDD0(v25 + *(v95 + 20), v34, _s19UserInitiatedSearchV5StateOMa);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          sub_1B0B238BC(v25, _s19UserInitiatedSearchVMa);
          sub_1B0B238BC(v34, _s19UserInitiatedSearchV5StateOMa);
        }

        else
        {
          v37 = *(v34 + 8);
          v97 = *v34;
          v98 = v37;
          v94 = *(v34 + 16);
          v93 = *(v34 + 24);
          v38 = *v25;
          v91 = *(v32 + 172);
          v39 = *v32;
          v90 = *(v32 + 8);
          v40 = v32;
          v41 = *(v32 + 16);
          v42 = *(v40 + 24);
          v92 = *(v88 + 4);
          *v20 = 223;
          *(v20 + 13) = MEMORY[0x1E69E7CD0];
          v20[112] = 0;
          v43 = a6;
          v44 = v86;
          v45 = *(v86 + 52);
          v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26C0, &unk_1B0E9DE10);
          (*(*(v46 - 8) + 56))(&v20[v45], 1, 1, v46);
          *(v20 + 2) = v38;
          v47 = v90;
          *(v20 + 2) = v39;
          *(v20 + 3) = v47;
          *(v20 + 16) = v91;
          *(v20 + 5) = v41;
          *(v20 + 12) = v42;
          LODWORD(v101) = v38;
          *(&v101 + 1) = v41;
          v102 = v42;
          *(v20 + 7) = v44;
          swift_bridgeObjectRetain_n();
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          v48 = v97;
          sub_1B0B23938(v97);
          sub_1B0B23974();
          v49 = v98;
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          sub_1B0E461E8();
          *(v20 + 15) = v48;
          *(v20 + 16) = v49;
          *(v20 + 17) = v94;
          v20[144] = v93;
          *(v20 + 145) = v92;
          v50 = v85;
          sub_1B0B24104(v20, v85, type metadata accessor for SearchMailbox);
          v51 = v87;
          v52 = (v50 + *(v87 + 36));
          v53 = MEMORY[0x1E69E7CC0];
          *v52 = MEMORY[0x1E69E7CC0];
          v52[1] = v53;
          v103 = v51;
          v54 = sub_1B0B23F6C(&qword_1EB6E45B8, &qword_1EB6E4590, &qword_1B0EC5900);
          v104 = v54;
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v101);
          sub_1B03B5C80(v50, boxed_opaque_existential_1, &qword_1EB6E4590, &qword_1B0EC5900);
          a6 = v43;
          a5 = v84;
          LOBYTE(v39) = v84(&v101);
          __swift_destroy_boxed_opaque_existential_0(&v101);
          if (v39)
          {
            *(&v106 + 1) = v87;
            v107 = v54;
            v60 = __swift_allocate_boxed_opaque_existential_1(&v105);
            sub_1B03C60A4(v50, v60, &qword_1EB6E4590, &qword_1B0EC5900);
            sub_1B0B239C8(v97);

            sub_1B0B238BC(v82, _s19UserInitiatedSearchVMa);
            sub_1B0450C74(&v105, &v108);
            return sub_1B0450C74(&v108, v79);
          }

          sub_1B0B239C8(v97);

          sub_1B0398EFC(v50, &qword_1EB6E4590, &qword_1B0EC5900);
          v25 = v82;
          sub_1B0B238BC(v82, _s19UserInitiatedSearchVMa);
          v32 = v83;
          v34 = v89;
          v36 = v81;
        }

        v35 += v36;
        --v33;
      }

      while (v33);
    }

    result = sub_1B0ADEB60(v80);
    if (result)
    {
      v56 = v75;
      sub_1B0B1B95C(v78, a5, a6, v88, a12, a13 & 1, v75);
      result = swift_getEnumCaseMultiPayload();
      if (result == 1)
      {
        v57 = *(v56 + 1);
        v58 = v79;
        *v79 = *v56;
        *(v58 + 16) = v57;
        *(v58 + 32) = v56[4];
      }

      else
      {
        v61 = v76;
        v62 = sub_1B0B24104(v56, v76, type metadata accessor for MessageBatches);
        MEMORY[0x1EEE9AC00](v62);
        *(&v72 - 4) = v63;
        *(&v72 - 3) = v61;
        LODWORD(v95) = a11 & 1;
        *(&v72 - 16) = a11 & 1;
        v97 = a11 >> 8;
        *(&v72 - 15) = BYTE1(a11);
        v98 = a11 >> 16;
        *(&v72 - 14) = BYTE2(a11);
        v83 = v63;
        *(&v72 - 13) = BYTE3(a11) & 1;
        *(&v72 - 12) = BYTE4(a11) & 1;
        v64 = (a11 >> 40) & 1;
        *(&v72 - 11) = v64;
        *(&v72 - 10) = BYTE6(a11) & 1;
        v65 = HIBYTE(a11) & 1;
        *(&v72 - 9) = v65;
        v66 = v72;
        v67 = v73;
        v68 = v74;
        v84 = a5;
        v96 = a6;
        sub_1B0B18C58(v72, v73, a5, sub_1B0B2419C, &v99, v74);
        if (v100 || (v69 = sub_1B0398EFC(&v99, &qword_1EB6E45A8, &unk_1B0EC5920), MEMORY[0x1EEE9AC00](v69), *(&v72 - 6) = v83, *(&v72 - 5) = v61, v70 = v88, *(&v72 - 4) = v78, *(&v72 - 3) = v70, *(&v72 - 16) = v95, *(&v72 - 15) = v97, *(&v72 - 14) = v98, *(&v72 - 13) = BYTE3(a11) & 1, *(&v72 - 12) = BYTE4(a11) & 1, *(&v72 - 11) = v64, *(&v72 - 10) = BYTE6(a11) & 1, *(&v72 - 9) = v65, sub_1B0B1892C(v66, v67, v84, v96, sub_1B0B241A0, &v99, v68), v100))
        {
          sub_1B0450C74(&v99, &v101);
          sub_1B0450C74(&v101, &v105);
        }

        else
        {
          sub_1B0398EFC(&v99, &qword_1EB6E45A8, &unk_1B0EC5920);
          v105 = 0u;
          v106 = 0u;
          v107 = 0;
        }

        v71 = v79;
        sub_1B0B238BC(v76, type metadata accessor for MessageBatches);
        if (*(&v106 + 1))
        {
          sub_1B0450C74(&v105, &v108);
          return sub_1B0450C74(&v108, v71);
        }

        else
        {
          result = sub_1B0398EFC(&v105, &qword_1EB6E45A8, &unk_1B0EC5920);
          *(v71 + 32) = 0;
          *v71 = 0u;
          *(v71 + 16) = 0u;
        }
      }
    }

    else
    {
      v59 = v79;
      *(v79 + 32) = 0;
      *v59 = 0u;
      v59[1] = 0u;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B0B186FC@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3920, &qword_1B0E9B070);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v18 - v7;
  if (*(a1 + 16) && (v9 = sub_1B03AB888(*(a2 + 16), *(a2 + 24)), (v10 & 1) != 0))
  {
    v11 = v9;
    v12 = *(a1 + 56);
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
    v14 = *(v13 - 8);
    sub_1B03B5C80(v12 + *(v14 + 72) * v11, v8, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    (*(v14 + 56))(v8, 0, 1, v13);
    return sub_1B03C60A4(v8, a3, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  }

  else
  {
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
    v17 = *(v16 - 8);
    (*(v17 + 56))(v8, 1, 1, v16);
    sub_1B03D06F8();
    sub_1B0E46EE8();
    result = (*(v17 + 48))(v8, 1, v16);
    if (result != 1)
    {
      return sub_1B0398EFC(v8, &qword_1EB6E3920, &qword_1B0E9B070);
    }
  }

  return result;
}

double sub_1B0B1892C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t *)@<X3>, uint64_t a4@<X4>, void (*a5)(void)@<X5>, uint64_t a6@<X8>, uint64_t a7@<X2>)
{
  v29[1] = a4;
  v30 = a3;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E45D8, &qword_1B0EC5950);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = v29 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E45E0, &qword_1B0EC5958);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = (v29 - v19);
  if (qword_1EB6DD598 != -1)
  {
    swift_once();
  }

  if ((sub_1B03D9200(qword_1EB737D38, a1, a2) & 1) == 0)
  {
    goto LABEL_6;
  }

  a5();
  SearchResultMessages = type metadata accessor for FetchSearchResultMessages(0);
  if ((*(*(SearchResultMessages - 8) + 48))(v14, 1, SearchResultMessages) == 1)
  {
    sub_1B0398EFC(v14, &qword_1EB6E45D8, &qword_1B0EC5950);
LABEL_6:
    *(a6 + 32) = 0;
    result = 0.0;
    *a6 = 0u;
    *(a6 + 16) = 0u;
    return result;
  }

  sub_1B03BCDD0(v14, v17, type metadata accessor for FetchSearchResultMessages);
  v23 = &v17[*(v15 + 36)];
  v24 = MEMORY[0x1E69E7CC0];
  *v23 = MEMORY[0x1E69E7CC0];
  *(v23 + 1) = v24;
  sub_1B0B238BC(v14, type metadata accessor for FetchSearchResultMessages);
  sub_1B03C60A4(v17, v20, &qword_1EB6E45E0, &qword_1B0EC5958);
  if (!*(*v20 + 16) || (sub_1B0B1F36C(*v20, a1, a2, a7)) && (v31[3] = v15, v25 = sub_1B0B23F6C(&qword_1EB6E45E8, &qword_1EB6E45E0, &qword_1B0EC5958), v31[4] = v25, v26 = __swift_allocate_boxed_opaque_existential_1(v31), sub_1B03B5C80(v20, v26, &qword_1EB6E45E0, &qword_1B0EC5958), v27 = v30(v31), __swift_destroy_boxed_opaque_existential_0(v31), (v27))
  {
    *(a6 + 24) = v15;
    *(a6 + 32) = v25;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a6);
    sub_1B03C60A4(v20, boxed_opaque_existential_1, &qword_1EB6E45E0, &qword_1B0EC5958);
  }

  else
  {
    sub_1B0398EFC(v20, &qword_1EB6E45E0, &qword_1B0EC5958);
    result = 0.0;
    *a6 = 0u;
    *(a6 + 16) = 0u;
    *(a6 + 32) = 0;
  }

  return result;
}

double sub_1B0B18C58@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(__int128 *)@<X3>, void (*a4)(void *__return_ptr)@<X5>, uint64_t a5@<X8>, uint64_t a6@<X2>)
{
  if (qword_1EB6DD2C0 != -1)
  {
    swift_once();
  }

  if ((sub_1B03D9200(qword_1EB737D20, a1, a2) & 1) == 0)
  {
    goto LABEL_11;
  }

  a4(v21);
  if (!v21[0])
  {
    sub_1B0398EFC(v21, &qword_1EB6E45F8, &qword_1B0EC5970);
LABEL_11:
    *(a5 + 32) = 0;
    *&v19 = 0;
    *a5 = 0u;
    *(a5 + 16) = 0u;
    return *&v19;
  }

  sub_1B0B23A90(v21, &v22);
  *&v30 = MEMORY[0x1E69E7CC0];
  *(&v30 + 1) = MEMORY[0x1E69E7CC0];
  sub_1B0B23AEC(v21);
  v37 = v28;
  v38 = v29;
  v39 = v30;
  v33 = v24;
  v34 = v25;
  v35 = v26;
  v36 = v27;
  v31 = v22;
  v32 = v23;
  if (!*(v22 + 16) || (sub_1B0B1F36C(v22, a1, a2, a6)) && (v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4600, &qword_1B0EC5978), *(&v23 + 1) = v12, v13 = sub_1B0B23F6C(&qword_1EB6DD388, &qword_1EB6E4600, &qword_1B0EC5978), *&v24 = v13, *&v22 = swift_allocObject(), sub_1B03B5C80(&v31, v22 + 16, &qword_1EB6E4600, &qword_1B0EC5978), v14 = a3(&v22), __swift_destroy_boxed_opaque_existential_0(&v22), (v14))
  {
    *(a5 + 24) = v12;
    *(a5 + 32) = v13;
    v15 = swift_allocObject();
    *a5 = v15;
    v16 = v38;
    v15[7] = v37;
    v15[8] = v16;
    v15[9] = v39;
    v17 = v34;
    v15[3] = v33;
    v15[4] = v17;
    v18 = v36;
    v15[5] = v35;
    v15[6] = v18;
    v19 = v32;
    v15[1] = v31;
    v15[2] = v19;
  }

  else
  {
    sub_1B0398EFC(&v31, &qword_1EB6E4600, &qword_1B0EC5978);
    *&v19 = 0;
    *a5 = 0u;
    *(a5 + 16) = 0u;
    *(a5 + 32) = 0;
  }

  return *&v19;
}

uint64_t sub_1B0B18EA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(uint64_t *)@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X5>, char a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v34[1] = a5;
  v35 = a4;
  v34[0] = a3;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4618, &qword_1B0EC59A8);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = v34 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4620, &qword_1B0EC59B0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = v34 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = v34 - v23;
  if (qword_1EB6DD9A0 != -1)
  {
    swift_once();
  }

  if ((sub_1B03D9200(qword_1EB737D70, a1, a2) & 1) == 0)
  {
    goto LABEL_6;
  }

  sub_1B0B1B414(a6, a7 & 1, a8, a10 & 0x101010101FFFF01, v18);
  PendingDownload = type metadata accessor for FindPendingDownload(0);
  if ((*(*(PendingDownload - 8) + 48))(v18, 1, PendingDownload) == 1)
  {
    sub_1B0398EFC(v18, &qword_1EB6E4618, &qword_1B0EC59A8);
LABEL_6:
    *(a9 + 32) = 0;
    *a9 = 0u;
    *(a9 + 16) = 0u;
    goto LABEL_7;
  }

  sub_1B03BCDD0(v18, v21, type metadata accessor for FindPendingDownload);
  v27 = &v21[*(v19 + 36)];
  v28 = MEMORY[0x1E69E7CC0];
  *v27 = MEMORY[0x1E69E7CC0];
  *(v27 + 1) = v28;
  sub_1B0B238BC(v18, type metadata accessor for FindPendingDownload);
  sub_1B03C60A4(v21, v24, &qword_1EB6E4620, &qword_1B0EC59B0);
  v29 = *(v24 + 6);
  if (!*(v29 + 16) || (sub_1B0B1F36C(v29, a1, a2, v34[0])) && (v36[3] = v19, v30 = sub_1B0B23F6C(&qword_1EB6DD3C8, &qword_1EB6E4620, &qword_1B0EC59B0), v36[4] = v30, v31 = __swift_allocate_boxed_opaque_existential_1(v36), sub_1B03B5C80(v24, v31, &qword_1EB6E4620, &qword_1B0EC59B0), v32 = v35(v36), __swift_destroy_boxed_opaque_existential_0(v36), (v32))
  {
    *(a9 + 24) = v19;
    *(a9 + 32) = v30;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a9);
    sub_1B03C60A4(v24, boxed_opaque_existential_1, &qword_1EB6E4620, &qword_1B0EC59B0);
  }

  else
  {
    sub_1B0398EFC(v24, &qword_1EB6E4620, &qword_1B0EC59B0);
    *a9 = 0u;
    *(a9 + 16) = 0u;
    *(a9 + 32) = 0;
  }

LABEL_7:
  sub_1B03A3614(a6);
}

double sub_1B0B191FC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(__int128 *)@<X3>, void (*a4)(void *__return_ptr)@<X5>, uint64_t a5@<X8>, uint64_t a6@<X2>)
{
  if (qword_1EB6DD8B8 != -1)
  {
    swift_once();
  }

  if ((sub_1B03D9200(qword_1EB737D60, a1, a2) & 1) == 0)
  {
    goto LABEL_11;
  }

  a4(v24);
  if (!v24[0])
  {
    sub_1B0398EFC(v24, &qword_1EB6E4690, &qword_1B0EC5A28);
LABEL_11:
    *(a5 + 32) = 0;
    *&v22 = 0;
    *a5 = 0u;
    *(a5 + 16) = 0u;
    return *&v22;
  }

  sub_1B0AA6A5C(v24, &v25);
  *(&v32 + 1) = MEMORY[0x1E69E7CC0];
  v33 = MEMORY[0x1E69E7CC0];
  sub_1B0AA6A94(v24);
  v40 = v31;
  v41 = v32;
  v36 = v27;
  v37 = v28;
  v42 = v33;
  v38 = v29;
  v39 = v30;
  v34 = v25;
  v35 = v26;
  v12 = *(sub_1B03D0770(&unk_1F2711038) + 16);

  if (!v12 || (v13 = sub_1B03D0770(&unk_1F2711060), v14 = sub_1B0B1F36C(v13, a1, a2, a6), , (v14)) && (v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4698, &qword_1B0EC5A30), *(&v26 + 1) = v15, v16 = sub_1B0B23F6C(&qword_1EB6DD3B8, &qword_1EB6E4698, &qword_1B0EC5A30), *&v27 = v16, *&v25 = swift_allocObject(), sub_1B03B5C80(&v34, v25 + 16, &qword_1EB6E4698, &qword_1B0EC5A30), v17 = a3(&v25), __swift_destroy_boxed_opaque_existential_0(&v25), (v17))
  {
    *(a5 + 24) = v15;
    *(a5 + 32) = v16;
    v18 = swift_allocObject();
    *a5 = v18;
    v19 = v41;
    *(v18 + 112) = v40;
    *(v18 + 128) = v19;
    *(v18 + 144) = v42;
    v20 = v37;
    *(v18 + 48) = v36;
    *(v18 + 64) = v20;
    v21 = v39;
    *(v18 + 80) = v38;
    *(v18 + 96) = v21;
    v22 = v35;
    *(v18 + 16) = v34;
    *(v18 + 32) = v22;
  }

  else
  {
    sub_1B0398EFC(&v34, &qword_1EB6E4698, &qword_1B0EC5A30);
    *&v22 = 0;
    *a5 = 0u;
    *(a5 + 16) = 0u;
    *(a5 + 32) = 0;
  }

  return *&v22;
}

double sub_1B0B19478@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(__int128 *)@<X3>, void (*a4)(void *__return_ptr)@<X5>, uint64_t a5@<X8>, uint64_t a6@<X2>)
{
  if (qword_1EB6DD380 != -1)
  {
    swift_once();
  }

  if ((sub_1B03D9200(qword_1EB737D28, a1, a2) & 1) == 0)
  {
    goto LABEL_11;
  }

  a4(v24);
  if (!v24[0])
  {
    sub_1B0398EFC(v24, &qword_1EB6E4680, &qword_1B0EC5A18);
LABEL_11:
    *(a5 + 32) = 0;
    result = 0.0;
    *a5 = 0u;
    *(a5 + 16) = 0u;
    return result;
  }

  sub_1B0AA93EC(v24, &v25);
  *&v32 = MEMORY[0x1E69E7CC0];
  *(&v32 + 1) = MEMORY[0x1E69E7CC0];
  sub_1B0AA9424(v24);
  v37 = v29;
  v38 = v30;
  v39 = v31;
  v40 = v32;
  v33 = v25;
  v34 = v26;
  v35 = v27;
  v36 = v28;
  v12 = *(sub_1B03D0770(&unk_1F2711088) + 16);

  if (!v12 || (v13 = sub_1B03D0770(&unk_1F27110B0), v14 = sub_1B0B1F36C(v13, a1, a2, a6), , (v14)) && (v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4688, &qword_1B0EC5A20), *(&v26 + 1) = v15, v16 = sub_1B0B23F6C(&qword_1EB6DD390, &qword_1EB6E4688, &qword_1B0EC5A20), *&v27 = v16, *&v25 = swift_allocObject(), sub_1B03B5C80(&v33, v25 + 16, &qword_1EB6E4688, &qword_1B0EC5A20), v17 = a3(&v25), __swift_destroy_boxed_opaque_existential_0(&v25), (v17))
  {
    *(a5 + 24) = v15;
    *(a5 + 32) = v16;
    v18 = swift_allocObject();
    *a5 = v18;
    v19 = v38;
    v18[5] = v37;
    v18[6] = v19;
    v20 = v40;
    v18[7] = v39;
    v18[8] = v20;
    v21 = v34;
    v18[1] = v33;
    v18[2] = v21;
    result = *&v35;
    v23 = v36;
    v18[3] = v35;
    v18[4] = v23;
  }

  else
  {
    sub_1B0398EFC(&v33, &qword_1EB6E4688, &qword_1B0EC5A20);
    result = 0.0;
    *a5 = 0u;
    *(a5 + 16) = 0u;
    *(a5 + 32) = 0;
  }

  return result;
}

double sub_1B0B196DC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(__int128 *)@<X3>, void (*a4)(void *__return_ptr)@<X5>, uint64_t a5@<X8>, uint64_t a6@<X2>)
{
  if (qword_1EB6E3DC0 != -1)
  {
    swift_once();
  }

  if ((sub_1B03D9200(qword_1EB738368, a1, a2) & 1) == 0)
  {
    goto LABEL_11;
  }

  a4(v22);
  if (!v22[0])
  {
    sub_1B0398EFC(v22, &qword_1EB6E46B8, &qword_1B0EC5A48);
LABEL_11:
    *(a5 + 32) = 0;
    *&v20 = 0;
    *a5 = 0u;
    *(a5 + 16) = 0u;
    return *&v20;
  }

  sub_1B0AA47C0(v22, &v23);
  *(&v32 + 1) = MEMORY[0x1E69E7CC0];
  v33 = MEMORY[0x1E69E7CC0];
  sub_1B0AA47F8(v22);
  v42 = v31;
  v43 = v32;
  v44 = v33;
  v38 = v27;
  v39 = v28;
  v40 = v29;
  v41 = v30;
  v34 = v23;
  v35 = v24;
  v36 = v25;
  v37 = v26;
  if (!*(*(&v25 + 1) + 16) || (sub_1B0B1F36C(*(&v25 + 1), a1, a2, a6)) && (v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E46C0, &qword_1B0EC5A50), *(&v24 + 1) = v12, v13 = sub_1B0B23F6C(&qword_1EB6E46C8, &qword_1EB6E46C0, &qword_1B0EC5A50), *&v25 = v13, *&v23 = swift_allocObject(), sub_1B03B5C80(&v34, v23 + 16, &qword_1EB6E46C0, &qword_1B0EC5A50), v14 = a3(&v23), __swift_destroy_boxed_opaque_existential_0(&v23), (v14))
  {
    *(a5 + 24) = v12;
    *(a5 + 32) = v13;
    v15 = swift_allocObject();
    *a5 = v15;
    v16 = v43;
    *(v15 + 144) = v42;
    *(v15 + 160) = v16;
    *(v15 + 176) = v44;
    v17 = v39;
    *(v15 + 80) = v38;
    *(v15 + 96) = v17;
    v18 = v41;
    *(v15 + 112) = v40;
    *(v15 + 128) = v18;
    v19 = v35;
    *(v15 + 16) = v34;
    *(v15 + 32) = v19;
    v20 = v37;
    *(v15 + 48) = v36;
    *(v15 + 64) = v20;
  }

  else
  {
    sub_1B0398EFC(&v34, &qword_1EB6E46C0, &qword_1B0EC5A50);
    *&v20 = 0;
    *a5 = 0u;
    *(a5 + 16) = 0u;
    *(a5 + 32) = 0;
  }

  return *&v20;
}

double sub_1B0B1993C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(__int128 *)@<X3>, void (*a4)(void *__return_ptr)@<X5>, uint64_t a5@<X8>, uint64_t a6@<X2>)
{
  if (qword_1EB6E3DC8 != -1)
  {
    swift_once();
  }

  if ((sub_1B03D9200(qword_1EB738370, a1, a2) & 1) == 0)
  {
    goto LABEL_11;
  }

  a4(v22);
  if (!v22[0])
  {
    sub_1B0398EFC(v22, &qword_1EB6E4670, &qword_1B0EC5A08);
LABEL_11:
    *(a5 + 32) = 0;
    result = 0.0;
    *a5 = 0u;
    *(a5 + 16) = 0u;
    return result;
  }

  sub_1B0AA5BF0(v22, &v23);
  *&v32 = MEMORY[0x1E69E7CC0];
  *(&v32 + 1) = MEMORY[0x1E69E7CC0];
  sub_1B0AA5C28(v22);
  v39 = v29;
  v40 = v30;
  v41 = v31;
  v42 = v32;
  v35 = v25;
  v36 = v26;
  v37 = v27;
  v38 = v28;
  v33 = v23;
  v34 = v24;
  if (!*(*(&v25 + 1) + 16) || (sub_1B0B1F36C(*(&v25 + 1), a1, a2, a6)) && (v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E46A8, &qword_1B0EC5A40), *(&v24 + 1) = v12, v13 = sub_1B0B23F6C(&qword_1EB6E46B0, &qword_1EB6E46A8, &qword_1B0EC5A40), *&v25 = v13, *&v23 = swift_allocObject(), sub_1B03B5C80(&v33, v23 + 16, &qword_1EB6E46A8, &qword_1B0EC5A40), v14 = a3(&v23), __swift_destroy_boxed_opaque_existential_0(&v23), (v14))
  {
    *(a5 + 24) = v12;
    *(a5 + 32) = v13;
    v15 = swift_allocObject();
    *a5 = v15;
    v16 = v40;
    v15[7] = v39;
    v15[8] = v16;
    v17 = v42;
    v15[9] = v41;
    v15[10] = v17;
    v18 = v36;
    v15[3] = v35;
    v15[4] = v18;
    v19 = v38;
    v15[5] = v37;
    v15[6] = v19;
    result = *&v33;
    v21 = v34;
    v15[1] = v33;
    v15[2] = v21;
  }

  else
  {
    sub_1B0398EFC(&v33, &qword_1EB6E46A8, &qword_1B0EC5A40);
    result = 0.0;
    *a5 = 0u;
    *(a5 + 16) = 0u;
    *(a5 + 32) = 0;
  }

  return result;
}

double sub_1B0B19B88@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(__int128 *)@<X3>, void (*a4)(void *__return_ptr)@<X5>, uint64_t a5@<X8>, uint64_t a6@<X2>)
{
  if (qword_1EB6DD7B8 != -1)
  {
    swift_once();
  }

  if ((sub_1B03D9200(qword_1EB737D50, a1, a2) & 1) == 0)
  {
    goto LABEL_11;
  }

  a4(v21);
  if (!v21[0])
  {
    sub_1B0398EFC(v21, &qword_1EB6E4678, &qword_1B0EC5A10);
LABEL_11:
    *(a5 + 32) = 0;
    result = 0.0;
    *a5 = 0u;
    *(a5 + 16) = 0u;
    return result;
  }

  sub_1B0B23F10(v21, &v22);
  *(&v30 + 1) = MEMORY[0x1E69E7CC0];
  v31 = MEMORY[0x1E69E7CC0];
  sub_1B0B23EB0(v21);
  v38 = v28;
  v39 = v29;
  v40 = v30;
  v41 = v31;
  v34 = v24;
  v35 = v25;
  v36 = v26;
  v37 = v27;
  v32 = v22;
  v33 = v23;
  if (!*(*(&v24 + 1) + 16) || (sub_1B0B1F36C(*(&v24 + 1), a1, a2, a6)) && (v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E46A0, &qword_1B0EC5A38), *(&v23 + 1) = v12, v13 = sub_1B0B23F6C(&qword_1EB6DD3B0, &qword_1EB6E46A0, &qword_1B0EC5A38), *&v24 = v13, *&v22 = swift_allocObject(), sub_1B03B5C80(&v32, v22 + 16, &qword_1EB6E46A0, &qword_1B0EC5A38), v14 = a3(&v22), __swift_destroy_boxed_opaque_existential_0(&v22), (v14))
  {
    *(a5 + 24) = v12;
    *(a5 + 32) = v13;
    v15 = swift_allocObject();
    *a5 = v15;
    v16 = v39;
    *(v15 + 112) = v38;
    *(v15 + 128) = v16;
    *(v15 + 144) = v40;
    *(v15 + 160) = v41;
    v17 = v35;
    *(v15 + 48) = v34;
    *(v15 + 64) = v17;
    v18 = v37;
    *(v15 + 80) = v36;
    *(v15 + 96) = v18;
    result = *&v32;
    v20 = v33;
    *(v15 + 16) = v32;
    *(v15 + 32) = v20;
  }

  else
  {
    sub_1B0398EFC(&v32, &qword_1EB6E46A0, &qword_1B0EC5A38);
    result = 0.0;
    *a5 = 0u;
    *(a5 + 16) = 0u;
    *(a5 + 32) = 0;
  }

  return result;
}

uint64_t sub_1B0B19DE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(__int128 *)@<X3>, uint64_t a4@<X5>, char *a5@<X6>, uint64_t a6@<X8>, uint64_t a7@<X2>)
{
  if (qword_1EB6DD970 != -1)
  {
    swift_once();
  }

  if (sub_1B03D9200(qword_1EB737D68, a1, a2))
  {
    v14 = *(a4 + 172);
    v15 = *(a4 + 8);
    v16 = *(a4 + 16);
    v17 = *(a4 + 24);
    *&v57 = *a4;
    *(&v57 + 1) = v15;
    v58 = v14;
    v59 = v16;
    v60 = v17;
    v18 = *a5;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0B500B0(&v57, v18, v30);
    sub_1B0B23DC4(v30, &v31);
    *&v43 = MEMORY[0x1E69E7CC0];
    *(&v43 + 1) = MEMORY[0x1E69E7CC0];
    sub_1B0B23E20(v30);
    v54 = v41;
    v55 = v42;
    v56 = v43;
    v50 = v37;
    v51 = v38;
    v52 = v39;
    v53 = v40;
    v46 = v33;
    v47 = v34;
    v48 = v35;
    v49 = v36;
    v44 = v31;
    v45 = v32;
    if (!*(v37 + 16) || (sub_1B0B1F36C(v37, a1, a2, a7)) && (v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4640, &qword_1B0EC59D8), *(&v32 + 1) = v19, v20 = sub_1B0B23F6C(&qword_1EB6DD3C0, &qword_1EB6E4640, &qword_1B0EC59D8), *&v33 = v20, *&v31 = swift_allocObject(), sub_1B03B5C80(&v44, v31 + 16, &qword_1EB6E4640, &qword_1B0EC59D8), v21 = a3(&v31), __swift_destroy_boxed_opaque_existential_0(&v31), (v21))
    {
      *(a6 + 24) = v19;
      *(a6 + 32) = v20;
      v22 = swift_allocObject();
      *a6 = v22;
      v23 = v55;
      v22[11] = v54;
      v22[12] = v23;
      v22[13] = v56;
      v24 = v51;
      v22[7] = v50;
      v22[8] = v24;
      v25 = v53;
      v22[9] = v52;
      v22[10] = v25;
      v26 = v47;
      v22[3] = v46;
      v22[4] = v26;
      v27 = v49;
      v22[5] = v48;
      v22[6] = v27;
      v28 = v45;
      v22[1] = v44;
      v22[2] = v28;
    }

    else
    {
      sub_1B0398EFC(&v44, &qword_1EB6E4640, &qword_1B0EC59D8);
      *a6 = 0u;
      *(a6 + 16) = 0u;
      *(a6 + 32) = 0;
    }

    return sub_1B03A3614(a4);
  }

  else
  {
    *(a6 + 32) = 0;
    *a6 = 0u;
    *(a6 + 16) = 0u;

    return sub_1B03A3614(a4);
  }
}

uint64_t sub_1B0B1A09C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(uint64_t *)@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v33[1] = a5;
  v34 = a4;
  v33[0] = a3;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4648, &qword_1B0EC59E0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = v33 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4650, &qword_1B0EC59E8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = v33 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = v33 - v22;
  if (qword_1EB6DDC30 != -1)
  {
    swift_once();
  }

  if ((sub_1B03D9200(qword_1EB737DA0, a1, a2) & 1) == 0)
  {
    goto LABEL_6;
  }

  sub_1B0B1F088(a6, a7, a8, v17);
  v24 = type metadata accessor for UploadMessages(0);
  if ((*(*(v24 - 8) + 48))(v17, 1, v24) == 1)
  {
    sub_1B0398EFC(v17, &qword_1EB6E4648, &qword_1B0EC59E0);
LABEL_6:
    *(a9 + 32) = 0;
    *a9 = 0u;
    *(a9 + 16) = 0u;
    goto LABEL_7;
  }

  sub_1B03BCDD0(v17, v20, type metadata accessor for UploadMessages);
  v26 = &v20[*(v18 + 36)];
  v27 = MEMORY[0x1E69E7CC0];
  *v26 = MEMORY[0x1E69E7CC0];
  *(v26 + 1) = v27;
  sub_1B0B238BC(v17, type metadata accessor for UploadMessages);
  sub_1B03C60A4(v20, v23, &qword_1EB6E4650, &qword_1B0EC59E8);
  v28 = *(v23 + 5);
  if (!*(v28 + 16) || (sub_1B0B1F36C(v28, a1, a2, v33[0])) && (v35[3] = v18, v29 = sub_1B0B23F6C(&qword_1EB6DD3F0, &qword_1EB6E4650, &qword_1B0EC59E8), v35[4] = v29, v30 = __swift_allocate_boxed_opaque_existential_1(v35), sub_1B03B5C80(v23, v30, &qword_1EB6E4650, &qword_1B0EC59E8), v31 = v34(v35), __swift_destroy_boxed_opaque_existential_0(v35), (v31))
  {
    *(a9 + 24) = v18;
    *(a9 + 32) = v29;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a9);
    sub_1B03C60A4(v23, boxed_opaque_existential_1, &qword_1EB6E4650, &qword_1B0EC59E8);
  }

  else
  {
    sub_1B0398EFC(v23, &qword_1EB6E4650, &qword_1B0EC59E8);
    *a9 = 0u;
    *(a9 + 16) = 0u;
    *(a9 + 32) = 0;
  }

LABEL_7:
  sub_1B03A3614(a6);
}

double sub_1B0B1A3E4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(__int128 *)@<X3>, void (*a4)(void *__return_ptr)@<X5>, uint64_t a5@<X8>, uint64_t a6@<X2>)
{
  if (qword_1EB6DDA38 != -1)
  {
    swift_once();
  }

  if ((sub_1B03D9200(qword_1EB737D80, a1, a2) & 1) == 0)
  {
    goto LABEL_11;
  }

  a4(v22);
  if (!v22[0])
  {
    sub_1B0398EFC(v22, &qword_1EB6E4658, &qword_1B0EC59F0);
LABEL_11:
    *(a5 + 32) = 0;
    result = 0.0;
    *a5 = 0u;
    *(a5 + 16) = 0u;
    return result;
  }

  sub_1B0A96130(v22, &v23);
  *&v32 = MEMORY[0x1E69E7CC0];
  *(&v32 + 1) = MEMORY[0x1E69E7CC0];
  sub_1B0A96168(v22);
  v39 = v29;
  v40 = v30;
  v41 = v31;
  v42 = v32;
  v35 = v25;
  v36 = v26;
  v37 = v27;
  v38 = v28;
  v33 = v23;
  v34 = v24;
  if (!*(v23 + 16) || (sub_1B0B1F36C(v23, a1, a2, a6)) && (v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4660, &qword_1B0EC59F8), *(&v24 + 1) = v12, v13 = sub_1B0B23F6C(&qword_1EB6DD3D8, &qword_1EB6E4660, &qword_1B0EC59F8), *&v25 = v13, *&v23 = swift_allocObject(), sub_1B03B5C80(&v33, v23 + 16, &qword_1EB6E4660, &qword_1B0EC59F8), v14 = a3(&v23), __swift_destroy_boxed_opaque_existential_0(&v23), (v14))
  {
    *(a5 + 24) = v12;
    *(a5 + 32) = v13;
    v15 = swift_allocObject();
    *a5 = v15;
    v16 = v40;
    v15[7] = v39;
    v15[8] = v16;
    v17 = v42;
    v15[9] = v41;
    v15[10] = v17;
    v18 = v36;
    v15[3] = v35;
    v15[4] = v18;
    v19 = v38;
    v15[5] = v37;
    v15[6] = v19;
    result = *&v33;
    v21 = v34;
    v15[1] = v33;
    v15[2] = v21;
  }

  else
  {
    sub_1B0398EFC(&v33, &qword_1EB6E4660, &qword_1B0EC59F8);
    result = 0.0;
    *a5 = 0u;
    *(a5 + 16) = 0u;
    *(a5 + 32) = 0;
  }

  return result;
}

uint64_t sub_1B0B1A630@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(uint64_t *)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v38 = a3;
  v39 = a5;
  v14 = type metadata accessor for UploadFlagChanges(0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4668, &qword_1B0EC5A00);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v36 - v21;
  if (qword_1EB6DDA80 != -1)
  {
    swift_once();
  }

  if (sub_1B03D9200(qword_1EB737D90, a1, a2))
  {
    v37 = a4;
    v23 = *(a6 + 172);
    v24 = *(a6 + 8);
    v25 = *(a6 + 16);
    v26 = *(a6 + 24);
    v41[0] = *a6;
    v41[1] = v24;
    v42 = v23;
    v43 = v25;
    v44 = v26;
    v27 = *(a7 + 2);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0BB9FE0(v41, v27, v16);
    sub_1B03BCDD0(v16, v19, type metadata accessor for UploadFlagChanges);
    v28 = &v19[*(v17 + 36)];
    v29 = MEMORY[0x1E69E7CC0];
    *v28 = MEMORY[0x1E69E7CC0];
    *(v28 + 1) = v29;
    sub_1B0B238BC(v16, type metadata accessor for UploadFlagChanges);
    sub_1B03C60A4(v19, v22, &qword_1EB6E4668, &qword_1B0EC5A00);
    v30 = *(v22 + 5);
    if (!*(v30 + 16) || (sub_1B0B1F36C(v30, a1, a2, v38)) && (v40[3] = v17, v31 = sub_1B0B23F6C(&qword_1EB6DD3E0, &qword_1EB6E4668, &qword_1B0EC5A00), v40[4] = v31, v32 = __swift_allocate_boxed_opaque_existential_1(v40), sub_1B03B5C80(v22, v32, &qword_1EB6E4668, &qword_1B0EC5A00), v33 = v37(v40), __swift_destroy_boxed_opaque_existential_0(v40), (v33))
    {
      *(a8 + 24) = v17;
      *(a8 + 32) = v31;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a8);
      sub_1B03C60A4(v22, boxed_opaque_existential_1, &qword_1EB6E4668, &qword_1B0EC5A00);
    }

    else
    {
      sub_1B0398EFC(v22, &qword_1EB6E4668, &qword_1B0EC5A00);
      *a8 = 0u;
      *(a8 + 16) = 0u;
      *(a8 + 32) = 0;
    }
  }

  else
  {
    *(a8 + 32) = 0;
    *a8 = 0u;
    *(a8 + 16) = 0u;
  }

  return sub_1B03A3614(a6);
}

double sub_1B0B1A96C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t *)@<X3>, uint64_t a4@<X4>, void (*a5)(void)@<X5>, uint64_t a6@<X8>, uint64_t a7@<X2>)
{
  v29[1] = a4;
  v30 = a3;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E46D0, &qword_1B0EC5A58);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = v29 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E46D8, &qword_1B0EC5A60);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = (v29 - v19);
  if (qword_1EB6DDF70 != -1)
  {
    swift_once();
  }

  if ((sub_1B03D9200(qword_1EB737DB8, a1, a2) & 1) == 0)
  {
    goto LABEL_6;
  }

  a5();
  Messages = type metadata accessor for FetchMessages(0);
  if ((*(*(Messages - 8) + 48))(v14, 1, Messages) == 1)
  {
    sub_1B0398EFC(v14, &qword_1EB6E46D0, &qword_1B0EC5A58);
LABEL_6:
    *(a6 + 32) = 0;
    result = 0.0;
    *a6 = 0u;
    *(a6 + 16) = 0u;
    return result;
  }

  sub_1B03BCDD0(v14, v17, type metadata accessor for FetchMessages);
  v23 = &v17[*(v15 + 36)];
  v24 = MEMORY[0x1E69E7CC0];
  *v23 = MEMORY[0x1E69E7CC0];
  *(v23 + 1) = v24;
  sub_1B0B238BC(v14, type metadata accessor for FetchMessages);
  sub_1B03C60A4(v17, v20, &qword_1EB6E46D8, &qword_1B0EC5A60);
  if (!*(*v20 + 16) || (sub_1B0B1F36C(*v20, a1, a2, a7)) && (v31[3] = v15, v25 = sub_1B0B23F6C(&qword_1EB6DD3F8, &qword_1EB6E46D8, &qword_1B0EC5A60), v31[4] = v25, v26 = __swift_allocate_boxed_opaque_existential_1(v31), sub_1B03B5C80(v20, v26, &qword_1EB6E46D8, &qword_1B0EC5A60), v27 = v30(v31), __swift_destroy_boxed_opaque_existential_0(v31), (v27))
  {
    *(a6 + 24) = v15;
    *(a6 + 32) = v25;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a6);
    sub_1B03C60A4(v20, boxed_opaque_existential_1, &qword_1EB6E46D8, &qword_1B0EC5A60);
  }

  else
  {
    sub_1B0398EFC(v20, &qword_1EB6E46D8, &qword_1B0EC5A60);
    result = 0.0;
    *a6 = 0u;
    *(a6 + 16) = 0u;
    *(a6 + 32) = 0;
  }

  return result;
}

double sub_1B0B1AC98@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t *)@<X3>, uint64_t a4@<X4>, void (*a5)(void)@<X5>, uint64_t a6@<X8>, uint64_t a7@<X2>)
{
  v30[1] = a4;
  v31 = a3;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E46E0, &qword_1B0EC5A68);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = v30 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E46E8, &qword_1B0EC5A70);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = v30 - v19;
  if (qword_1EB6DDA00 != -1)
  {
    swift_once();
  }

  if ((sub_1B03D9200(qword_1EB737D78, a1, a2) & 1) == 0)
  {
    goto LABEL_6;
  }

  a5();
  MissingMessages = type metadata accessor for FindMissingMessages(0);
  if ((*(*(MissingMessages - 8) + 48))(v14, 1, MissingMessages) == 1)
  {
    sub_1B0398EFC(v14, &qword_1EB6E46E0, &qword_1B0EC5A68);
LABEL_6:
    *(a6 + 32) = 0;
    result = 0.0;
    *a6 = 0u;
    *(a6 + 16) = 0u;
    return result;
  }

  sub_1B03BCDD0(v14, v17, type metadata accessor for FindMissingMessages);
  v23 = &v17[*(v15 + 36)];
  v24 = MEMORY[0x1E69E7CC0];
  *v23 = MEMORY[0x1E69E7CC0];
  *(v23 + 1) = v24;
  sub_1B0B238BC(v14, type metadata accessor for FindMissingMessages);
  sub_1B03C60A4(v17, v20, &qword_1EB6E46E8, &qword_1B0EC5A70);
  v25 = *(v20 + 13);
  if (!*(v25 + 16) || (sub_1B0B1F36C(v25, a1, a2, a7)) && (v32[3] = v15, v26 = sub_1B0B23F6C(&qword_1EB6DD3D0, &qword_1EB6E46E8, &qword_1B0EC5A70), v32[4] = v26, v27 = __swift_allocate_boxed_opaque_existential_1(v32), sub_1B03B5C80(v20, v27, &qword_1EB6E46E8, &qword_1B0EC5A70), v28 = v31(v32), __swift_destroy_boxed_opaque_existential_0(v32), (v28))
  {
    *(a6 + 24) = v15;
    *(a6 + 32) = v26;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a6);
    sub_1B03C60A4(v20, boxed_opaque_existential_1, &qword_1EB6E46E8, &qword_1B0EC5A70);
  }

  else
  {
    sub_1B0398EFC(v20, &qword_1EB6E46E8, &qword_1B0EC5A70);
    result = 0.0;
    *a6 = 0u;
    *(a6 + 16) = 0u;
    *(a6 + 32) = 0;
  }

  return result;
}

uint64_t sub_1B0B1AFC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(uint64_t *)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v49 = a5;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v44 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E46F0, &qword_1B0EC5A78);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v44 - v19;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E46F8, &qword_1B0EC5A80);
  MEMORY[0x1EEE9AC00](v51);
  v22 = &v44 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v50 = &v44 - v24;
  if (qword_1EB6DD888 != -1)
  {
    swift_once();
  }

  v47 = a1;
  v48 = a2;
  if ((sub_1B03D9200(qword_1EB737D58, a1, a2) & 1) == 0)
  {
    goto LABEL_6;
  }

  v44 = a3;
  v45 = a4;
  v25 = *(a6 + 172);
  v26 = *(a6 + 8);
  v27 = *(a6 + 16);
  v28 = *(a6 + 24);
  *&v53 = *a6;
  *(&v53 + 1) = v26;
  v54 = v25;
  v55 = v27;
  v56 = v28;
  v46 = a7;
  v29 = a7 + OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped;
  swift_beginAccess();
  v30 = *(_s13SelectedStateV7WrappedVMa(0) + 20);
  v31 = v29 + v30 + *(type metadata accessor for MailboxSyncState(0) + 48);
  v32 = type metadata accessor for PendingServerResponses(0);
  sub_1B03B5C80(v31 + *(v32 + 24), v17, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B0B60C14(&v53, v17, v20);
  v33 = type metadata accessor for NotifyMessagesVanished(0);
  if ((*(*(v33 - 8) + 48))(v20, 1, v33) == 1)
  {
    sub_1B0398EFC(v20, &qword_1EB6E46F0, &qword_1B0EC5A78);
LABEL_6:
    *(a8 + 32) = 0;
    *a8 = 0u;
    *(a8 + 16) = 0u;
    goto LABEL_12;
  }

  sub_1B03BCDD0(v20, v22, type metadata accessor for NotifyMessagesVanished);
  v34 = v51;
  v35 = &v22[*(v51 + 36)];
  v36 = MEMORY[0x1E69E7CC0];
  *v35 = MEMORY[0x1E69E7CC0];
  *(v35 + 1) = v36;
  sub_1B0B238BC(v20, type metadata accessor for NotifyMessagesVanished);
  v37 = v50;
  sub_1B03C60A4(v22, v50, &qword_1EB6E46F8, &qword_1B0EC5A80);
  v38 = *(v37 + *(v33 + 36));
  if (!*(v38 + 16) || (sub_1B0B1F36C(v38, v47, v48, v44)) && (v52[3] = v34, v39 = sub_1B0B23F6C(&qword_1EB6E4700, &qword_1EB6E46F8, &qword_1B0EC5A80), v52[4] = v39, v40 = __swift_allocate_boxed_opaque_existential_1(v52), sub_1B03B5C80(v37, v40, &qword_1EB6E46F8, &qword_1B0EC5A80), v41 = v45(v52), __swift_destroy_boxed_opaque_existential_0(v52), (v41))
  {
    *(a8 + 24) = v34;
    *(a8 + 32) = v39;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a8);
    sub_1B03C60A4(v37, boxed_opaque_existential_1, &qword_1EB6E46F8, &qword_1B0EC5A80);
  }

  else
  {
    sub_1B0398EFC(v37, &qword_1EB6E46F8, &qword_1B0EC5A80);
    *a8 = 0u;
    *(a8 + 16) = 0u;
    *(a8 + 32) = 0;
  }

LABEL_12:
  sub_1B03A3614(a6);
}

uint64_t sub_1B0B1B414@<X0>(uint64_t *a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v57 = a4;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  MEMORY[0x1EEE9AC00](v50);
  v53 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v48 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v48 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v58 = &v48 - v17;
  v18 = type metadata accessor for MessagesPendingDownload(0);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v48 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for PendingPersistenceUpdates(0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v48 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = *(a1 + 43);
  v24 = *a1;
  v48 = a1[1];
  v56 = a1[2];
  v51 = *(a1 + 6);
  v25 = a3 + OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped;
  swift_beginAccess();
  v26 = *(_s13SelectedStateV7WrappedVMa(0) + 20);
  v27 = type metadata accessor for MailboxSyncState(0);
  sub_1B03BCDD0(v25 + v26 + *(v27 + 52), v23, type metadata accessor for PendingPersistenceUpdates);
  v28 = &v23[*(v21 + 28)];
  v54 = a2;
  if (a2)
  {
    v28 += *(type metadata accessor for MessagesPendingDownloadPerPass(0) + 20);
  }

  sub_1B03BCDD0(v28, v20, type metadata accessor for MessagesPendingDownload);
  sub_1B03B5C80(&v23[*(v21 + 32)], v58, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  v29 = *(*v20 + 16);
  swift_bridgeObjectRetain_n();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v55 = v20;
  v52 = v23;
  if (v29 < 0x11A || (v30 = sub_1B0B41D24(), (v30 & 0x100000000) != 0))
  {
    v32 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0B15E58(v32);
  }

  else
  {
    LODWORD(v60) = 1;
    LODWORD(v59) = v30;
    v31 = sub_1B041C1E8();
    static MessageIdentifier.... infix(_:_:)(&v60, &v59, &type metadata for UID, &v61);
    v60 = v61;
    v59 = Range<>.init<A>(_:)(&v60, &type metadata for UID, v31);
    sub_1B03D06F8();
    sub_1B0E46F08();
  }

  MessageIdentifierSet.union(_:)(v58, v15);
  sub_1B0398EFC(v12, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  v33 = v53;
  sub_1B03B5C80(v15, v53, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  v34 = v56;
  v35 = (v57 & 1) == 0;
  *(a5 + 56) = 0;
  v36 = 47;
  if (v35)
  {
    v36 = 0;
  }

  v50 = v36;
  *a5 = 0;
  *(a5 + 8) = v24;
  *(a5 + 16) = v48;
  *(a5 + 24) = v49;
  *(a5 + 32) = v34;
  v37 = v51;
  *(a5 + 40) = v51;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E43D0, &qword_1B0EC5138);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B0EC1E70;
  v39 = v15;
  v40 = v33;
  v41 = v54 & 1;
  if (v54)
  {
    v42 = 10;
  }

  else
  {
    v42 = 9;
  }

  *(inited + 32) = v42;
  v43 = sub_1B03D0770(inited);
  swift_setDeallocating();
  *(a5 + 48) = v43;
  *(a5 + 57) = v41;
  PendingDownload = type metadata accessor for FindPendingDownload(0);
  sub_1B03B5C80(v40, a5 + PendingDownload[9], &unk_1EB6E1AF0, &unk_1B0E9AF40);
  v45 = PendingDownload[11];
  v61 = v34;
  v62 = v37;
  v63 = v41;
  *(a5 + v45) = PendingDownload;
  sub_1B03D0964();
  sub_1B0E461E8();
  sub_1B0398EFC(v40, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  sub_1B0398EFC(v39, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  sub_1B0398EFC(v58, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  sub_1B0B238BC(v52, type metadata accessor for PendingPersistenceUpdates);
  v46 = a5 + PendingDownload[10];
  *v46 = v50;
  *(v46 + 8) = (v57 & 1) == 0;
  sub_1B0B238BC(v55, type metadata accessor for MessagesPendingDownload);
  return (*(*(PendingDownload - 1) + 56))(a5, 0, 1, PendingDownload);
}

uint64_t sub_1B0B1B95C@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t *)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, uint64_t *a7@<X8>)
{
  v112 = a4;
  v113 = a6;
  v108 = a5;
  v109 = a3;
  v110 = a2;
  v114 = a7;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26C0, &unk_1B0E9DE10);
  v100 = *(v101 - 8);
  MEMORY[0x1EEE9AC00](v101);
  v91 = &v87 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v92 = &v87 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E3670, &unk_1B0E9B260);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v95 = &v87 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v97 = &v87 - v14;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  MEMORY[0x1EEE9AC00](v99);
  v93 = &v87 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v98 = &v87 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v96 = &v87 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v102 = &v87 - v21;
  v103 = type metadata accessor for DetermineMessageBatches.TaskState(0);
  MEMORY[0x1EEE9AC00](v103);
  v94 = (&v87 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v23);
  v105 = (&v87 - v24);
  v104 = type metadata accessor for DetermineMessageBatches(0);
  MEMORY[0x1EEE9AC00](v104);
  v26 = &v87 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4608, &unk_1B0EC5980);
  MEMORY[0x1EEE9AC00](v106);
  v107 = &v87 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4010, &unk_1B0EC6220);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v30 = &v87 - v29;
  v31 = type metadata accessor for MessageBatches(0);
  v32 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v34 = &v87 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = a1 + OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped;
  swift_beginAccess();
  v36 = _s13SelectedStateV7WrappedVMa(0);
  v37 = *(v36 + 20);
  v38 = type metadata accessor for MailboxSyncState(0);
  sub_1B03B5C80(v35 + v37 + *(v38 + 60), v30, &qword_1EB6E4010, &unk_1B0EC6220);
  if ((*(v32 + 48))(v30, 1, v31) != 1)
  {
    sub_1B0B24104(v30, v34, type metadata accessor for MessageBatches);
    sub_1B0B24104(v34, v114, type metadata accessor for MessageBatches);
    _s29DetermineMessageBatchesResultOMa(0);
    return swift_storeEnumTagMultiPayload();
  }

  sub_1B0398EFC(v30, &qword_1EB6E4010, &unk_1B0EC6220);
  v39 = *(v111 + 43);
  v40 = *v111;
  v87 = v111[1];
  v41 = v111[2];
  v89 = *(v111 + 6);
  v42 = *(v111 + 48);
  result = *(v112 + 16);
  v44 = *(v112 + 24);
  v45 = v35 + *(v36 + 20);
  v46 = *v45;
  v47 = *(v45 + 8);
  LODWORD(v111) = *(v45 + 12);
  v48 = *(v112 + 4);
  v49 = *(v112 + 5);
  v120 = *(v112 + 42);
  if (v44)
  {
    v50 = 4507;
  }

  else
  {
    result = sub_1B0B3F320(result);
    v50 = result;
  }

  v90 = v39;
  v88 = v47;
  if (!v46)
  {
    sub_1B03D06F8();
    swift_bridgeObjectRetain_n();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v62 = v102;
    sub_1B0E46EE8();
    v63 = v62;
    v64 = v96;
    sub_1B03B5C80(v63, v96, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    v56 = v40;
    if (MessageIdentifierSet.count.getter() <= 0)
    {
      sub_1B0398EFC(v64, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      v67 = 1;
      v68 = v105;
      v66 = v97;
    }

    else
    {
      v65 = v92;
      sub_1B03C60A4(v64, v92, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      v66 = v97;
      sub_1B03C60A4(v65, v97, &unk_1EB6E26C0, &unk_1B0E9DE10);
      v67 = 0;
      v68 = v105;
    }

    (*(v100 + 56))(v66, v67, 1, v101);
    sub_1B0B3EF98(v50, MEMORY[0x1E69E7CC0], v66, v68);
    sub_1B0398EFC(v102, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    swift_storeEnumTagMultiPayload();
LABEL_25:
    if (v49)
    {
      v70 = 256;
    }

    else
    {
      v70 = 0;
    }

    v71 = v70 | v48;
    if (v120)
    {
      v72 = v71;
    }

    else
    {
      v72 = 2;
    }

    v73 = v104;
    sub_1B03BCDD0(v68, &v26[*(v104 + 56)], type metadata accessor for DetermineMessageBatches.TaskState);
    *v26 = MEMORY[0x1E69E7CD0];
    v26[8] = 0;
    *(v26 + 76) = 0;
    v26[84] = 1;
    v74 = &v26[*(v73 + 60)];
    v75 = v68;
    v76 = MEMORY[0x1E69E7CC0];
    *v74 = sub_1B0BAB9B4(MEMORY[0x1E69E7CC0]);
    v74[8] = 0;
    v116 = v41;
    LODWORD(v74) = v89;
    v117 = v89;
    *(v26 + 2) = v73;
    sub_1B0451F2C();
    sub_1B0E461E8();
    sub_1B0B238BC(v75, type metadata accessor for DetermineMessageBatches.TaskState);
    v77 = v87;
    *(v26 + 12) = v56;
    *(v26 + 13) = v77;
    *(v26 + 56) = v90;
    *(v26 + 15) = v41;
    v78 = v107;
    *(v26 + 8) = v108;
    v26[72] = v113 & 1;
    *(v26 + 11) = v46;
    *(v26 + 18) = v50;
    LODWORD(v77) = v88;
    *(v26 + 32) = v74;
    *(v26 + 33) = v77;
    v26[136] = v111;
    *(v26 + 137) = v72;
    sub_1B0B24104(v26, v78, type metadata accessor for DetermineMessageBatches);
    v79 = v106;
    v80 = (v78 + *(v106 + 36));
    *v80 = v76;
    v80[1] = v76;
    v118 = v79;
    v81 = sub_1B0B23F6C(&qword_1EB6DD3A8, &qword_1EB6E4608, &unk_1B0EC5980);
    v119 = v81;
    v82 = __swift_allocate_boxed_opaque_existential_1(&v116);
    sub_1B03B5C80(v78, v82, &qword_1EB6E4608, &unk_1B0EC5980);
    v83 = v110(&v116);
    __swift_destroy_boxed_opaque_existential_0(&v116);
    if (v83)
    {
      v84 = v114;
      v114[3] = v79;
      v84[4] = v81;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v84);
      sub_1B03C60A4(v78, boxed_opaque_existential_1, &qword_1EB6E4608, &unk_1B0EC5980);
      _s29DetermineMessageBatchesResultOMa(0);
    }

    else
    {
      sub_1B0398EFC(v78, &qword_1EB6E4608, &unk_1B0EC5980);
      _s29DetermineMessageBatchesResultOMa(0);
      v86 = v114;
      *v114 = 0u;
      *(v86 + 1) = 0u;
      v86[4] = 0;
    }

    return swift_storeEnumTagMultiPayload();
  }

  if (v50 + 0x4000000000000000 >= 0)
  {
    if (v46 >= 2 * v50 / 3)
    {
      if ((v42 & 1) != 0 || ((v111 ^ 1 | v113) & 1) == 0)
      {
        v68 = v105;
      }

      else
      {
        v68 = v105;
        *v105 = v46;
      }

      swift_storeEnumTagMultiPayload();
      swift_bridgeObjectRetain_n();
      v56 = v40;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E42D0, &unk_1B0EC5990);
      v51 = swift_allocObject();
      *(v51 + 16) = xmmword_1B0EC1E70;
      if (v111)
      {
        v52 = -1;
      }

      else
      {
        v52 = v47;
      }

      v115 = v52;
      LODWORD(v116) = 1;
      sub_1B041C1E8();
      swift_bridgeObjectRetain_n();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      static MessageIdentifier.... infix(_:_:)(&v116, &v115, &type metadata for UID, v51 + 32);
      sub_1B03D06F8();
      v53 = v98;
      sub_1B0E46EE8();
      v54 = v53;
      v55 = v93;
      sub_1B03B5C80(v54, v93, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      v56 = v40;
      if (MessageIdentifierSet.count.getter() <= 0)
      {
        sub_1B0398EFC(v55, &unk_1EB6E1AF0, &unk_1B0E9AF40);
        v61 = 1;
        v60 = v95;
      }

      else
      {
        v57 = v55;
        v58 = v91;
        sub_1B03C60A4(v57, v91, &unk_1EB6E1AF0, &unk_1B0E9AF40);
        v59 = v58;
        v60 = v95;
        sub_1B03C60A4(v59, v95, &unk_1EB6E26C0, &unk_1B0E9DE10);
        v61 = 0;
      }

      (*(v100 + 56))(v60, v61, 1, v101);
      v69 = v94;
      sub_1B0B3EF98(v50, v51, v60, v94);
      sub_1B0398EFC(v98, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      swift_storeEnumTagMultiPayload();
      v68 = v105;
      sub_1B0B24104(v69, v105, type metadata accessor for DetermineMessageBatches.TaskState);
    }

    goto LABEL_25;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B0B1C53C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, char *a5@<X4>, uint64_t a6@<X8>)
{
  v104 = a5;
  v90 = a4;
  v101 = a6;
  v106 = a4 >> 8;
  MissingMessages = type metadata accessor for FindMissingMessages(0);
  v10 = *(MissingMessages - 8);
  v99 = MissingMessages;
  v100 = v10;
  MEMORY[0x1EEE9AC00](MissingMessages);
  v12 = &v86 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v105 = &v86 - v14;
  v92 = _s15MissingMessagesOMa(0);
  MEMORY[0x1EEE9AC00](v92);
  v91 = &v86 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v86 = &v86 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v88 = &v86 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v86 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v86 - v24;
  v26 = type metadata accessor for MessageBatches(0);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v108 = &v86 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v86 - v29;
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v86 - v32;
  v96 = *(a1 + 43);
  v34 = a1[1];
  v102 = *a1;
  v93 = v34;
  v35 = a1[2];
  v94 = *(a1 + 6);
  v87 = a1[5];
  v107 = *(a1 + 48);
  sub_1B03BCDD0(a2, &v86 - v32, type metadata accessor for MessageBatches);
  v36 = a3 + OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped;
  swift_beginAccess();
  v37 = _s13SelectedStateV7WrappedVMa(0);
  v38 = *(v37 + 20);
  v39 = type metadata accessor for MailboxSyncState(0);
  sub_1B03BCDD0(v36 + v38 + *(v39 + 68), v25, _s15MissingMessagesOMa);
  v40 = v36 + *(v37 + 20);
  v41 = *(v40 + 8);
  LOBYTE(v36) = *(v40 + 12);
  v98 = v104[4];
  v97 = v104[5];
  v103 = v33;
  v42 = v33;
  v43 = v87;
  v89 = v30;
  sub_1B03BCDD0(v42, v30, type metadata accessor for MessageBatches);
  v104 = v25;
  sub_1B03BCDD0(v25, v22, _s15MissingMessagesOMa);
  v44 = v88;
  sub_1B03BCDD0(v22, v88, _s15MissingMessagesOMa);
  v95 = v35;
  swift_bridgeObjectRetain_n();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  LOBYTE(v109) = v36;
  v109 = sub_1B0AF7574(v44, v43, v107 & 1, v41 | (v36 << 32), v106);
  v110 = v45;
  v111 = v46;
  v112 = v47;
  if (BYTE1(v90))
  {
    if (BYTE1(v90) == 1)
    {
      v48 = 2;
    }

    else
    {
      v48 = 1;
    }

    v55 = v89;
    sub_1B0AF65C8(v48, v89);
    v57 = v104;
    v58 = v99;
    v59 = v91;
  }

  else
  {
    v49 = v86;
    sub_1B03BCDD0(v22, v86, _s15MissingMessagesOMa);
    if (swift_getEnumCaseMultiPayload())
    {
      sub_1B0B238BC(v49, _s15MissingMessagesOMa);
      v50 = v89;
      v51 = *v89;
      v52 = sub_1B0B3EF14();
      v53 = v52 | ((HIDWORD(v52) & 1) << 32);
      v54 = v51;
      v55 = v50;
      if (sub_1B0B4B0F4(v54, v53))
      {
        v56 = 3;
      }

      else
      {
        v56 = 1;
      }

      v57 = v104;
      v58 = v99;
      v59 = v91;
    }

    else
    {
      v56 = 1;
      v57 = v104;
      v58 = v99;
      v59 = v91;
      v55 = v89;
    }

    sub_1B0AF6338(v56, v55);
  }

  sub_1B0B238BC(v22, _s15MissingMessagesOMa);
  sub_1B0B238BC(v55, type metadata accessor for MessageBatches);
  v99 = v109;
  v92 = v110 | (BYTE4(v110) << 32);
  LODWORD(v91) = BYTE5(v110);
  LODWORD(v90) = v111;
  LODWORD(v89) = v112;
  v60 = sub_1B0B4AC30();
  v61 = v60;
  if (v43 >= v60)
  {
    v62 = v60;
  }

  else
  {
    v62 = v43;
  }

  if (BYTE4(v60) & 1 | v107 & 1)
  {
    v63 = v60;
  }

  else
  {
    v63 = v62;
  }

  sub_1B03BCDD0(v103, v108, type metadata accessor for MessageBatches);
  sub_1B03BCDD0(v57, v59, _s15MissingMessagesOMa);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    sub_1B0B238BC(v59, _s15MissingMessagesOMa);
  }

  sub_1B0B4AE74(v105);
  v88 = v63;
  if (v106)
  {
    v65 = 0;
    if (v106 == 1)
    {
      v66 = 1499;
    }

    else
    {
      v66 = 191;
    }
  }

  else
  {
    v66 = 0;
    v65 = 1;
  }

  *v12 = 0xD000000000000013;
  *(v12 + 1) = 0x80000001B0F2B390;
  *(v12 + 13) = sub_1B03D0770(&unk_1F2711308);
  v12[112] = 0;
  sub_1B03D06F8();
  sub_1B0E46EE8();
  sub_1B0E46EE8();
  v67 = v93;
  *(v12 + 8) = v102;
  *(v12 + 9) = v67;
  *(v12 + 40) = v96;
  v68 = v95;
  *(v12 + 11) = v95;
  v69 = v94;
  *(v12 + 24) = v94;
  v109 = v68;
  LODWORD(v110) = v69;
  *(v12 + 2) = v58;
  sub_1B0451F2C();
  sub_1B0E461E8();
  sub_1B03BCDD0(v108, &v12[v58[9]], type metadata accessor for MessageBatches);
  v70 = &v12[v58[10]];
  *v70 = v43;
  v70[8] = v107 & 1;
  v71 = &v12[v58[11]];
  *v71 = v99;
  v72 = v92;
  v71[12] = BYTE4(v92);
  *(v71 + 2) = v72;
  v71[13] = v91;
  *(v71 + 4) = v90;
  v71[20] = v89;
  v73 = &v12[v58[13]];
  *v73 = v66;
  v73[8] = v65;
  v12[v58[14]] = EnumCaseMultiPayload == 0;
  v74 = v105;
  sub_1B03B5C80(v105, &v12[v58[15]], &unk_1EB6E1AF0, &unk_1B0E9AF40);
  v75 = &v12[v58[12]];
  v76 = v98;
  *v75 = v98;
  v77 = v97;
  v75[1] = v97;
  if ((v61 & 0x100000000) != 0)
  {
    v78 = 0;
    v79 = 0;
    v80 = 0;
    v81 = 0;
  }

  else
  {
    v82 = 256;
    if (!v77)
    {
      v82 = 0;
    }

    v79 = v82 | v76 | (v88 << 32);
    v81 = MEMORY[0x1E69E7CC0];
    v80 = 0x100000000;
    v78 = 94;
  }

  v83 = &v12[v58[18]];
  sub_1B0398EFC(v74, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  sub_1B0B238BC(v108, type metadata accessor for MessageBatches);
  sub_1B0B238BC(v104, _s15MissingMessagesOMa);
  sub_1B0B238BC(v103, type metadata accessor for MessageBatches);
  *v83 = v78;
  v83[1] = v79;
  v83[2] = v80;
  v83[3] = v81;
  v84 = v101;
  sub_1B0B24104(v12, v101, type metadata accessor for FindMissingMessages);
  return (*(v100 + 56))(v84, 0, 1, v58);
}

uint64_t sub_1B0B1CE74@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v72 = a5;
  v86 = a4;
  v90 = a6;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  MEMORY[0x1EEE9AC00](v83);
  v81 = &v65[-v9];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E3670, &unk_1B0E9B260);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v85 = &v65[-v11];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26C0, &unk_1B0E9DE10);
  v87 = *(v12 - 8);
  v88 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v73 = &v65[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v14);
  v71 = &v65[-v15];
  Messages = type metadata accessor for FetchMessages(0);
  v89 = *(Messages - 8);
  MEMORY[0x1EEE9AC00](Messages);
  v17 = &v65[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = type metadata accessor for FetchMessages.MissingUIDs(0);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v77 = &v65[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = _s15MissingMessagesOMa(0);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = &v65[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v65[-v24];
  v26 = type metadata accessor for MessageBatches(0);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v74 = &v65[-((v27 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v65[-v29];
  LODWORD(v82) = *(a1 + 43);
  v31 = a1[1];
  v75 = *a1;
  v76 = v31;
  v32 = a1[2];
  v91 = *(a1 + 6);
  sub_1B03BCDD0(a2, &v65[-v29], type metadata accessor for MessageBatches);
  v33 = a3 + OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped;
  swift_beginAccess();
  v34 = _s13SelectedStateV7WrappedVMa(0);
  v35 = *(v34 + 20);
  v36 = type metadata accessor for MailboxSyncState(0);
  sub_1B03BCDD0(v33 + v35 + *(v36 + 68), v25, _s15MissingMessagesOMa);
  v95 = a1[5];
  v96 = *(a1 + 48);
  v37 = (v33 + *(v34 + 20));
  v70 = v37[144];
  v69 = v37[145];
  v68 = v37[146];
  v67 = v37[147];
  v66 = v37[148];
  v94 = v86[1];
  v84 = v30;
  v38 = v74;
  sub_1B03BCDD0(v30, v74, type metadata accessor for MessageBatches);
  v86 = v25;
  v39 = v25;
  v40 = Messages;
  sub_1B03BCDD0(v39, v22, _s15MissingMessagesOMa);
  swift_bridgeObjectRetain_n();
  v41 = v75;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v42 = v77;
  sub_1B0AD0CFC(v22, v77);
  *v17 = sub_1B0451E64(&unk_1F2711330);
  v17[8] = 0;
  v43 = &v17[v40[9]];
  v44 = type metadata accessor for NewServerMessages(0);
  v45 = *(v44 - 1);
  v46 = *(v45 + 56);
  v79 = v45 + 56;
  v80 = v46;
  v46(v43, 1, 1, v44);
  v47 = v76;
  *(v17 + 2) = v41;
  *(v17 + 3) = v47;
  *(v17 + 16) = v82;
  *(v17 + 5) = v32;
  v48 = v91;
  *(v17 + 12) = v91;
  v49 = v40[8];
  v92 = v32;
  v93 = v48;
  *&v17[v49] = v40;
  sub_1B0451F2C();
  v82 = v32;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v50 = v81;
  sub_1B0E461E8();
  sub_1B03BCDD0(v38, &v17[v40[7]], type metadata accessor for MessageBatches);
  sub_1B03BCDD0(v42, &v17[v40[10]], type metadata accessor for FetchMessages.MissingUIDs);
  MessageIdentifierSet.suffix(_:)(47, v83, v50);
  if (MessageIdentifierSet.count.getter() < 1)
  {
    sub_1B0398EFC(v50, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    v54 = 1;
    v53 = v85;
  }

  else
  {
    v51 = v50;
    v52 = v73;
    sub_1B03C60A4(v51, v73, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    v53 = v85;
    sub_1B03C60A4(v52, v85, &unk_1EB6E26C0, &unk_1B0E9DE10);
    v54 = 0;
  }

  v56 = v87;
  v55 = v88;
  (*(v87 + 56))(v53, v54, 1, v88);
  if ((*(v56 + 48))(v53, 1, v55) == 1)
  {

    sub_1B0B238BC(v42, type metadata accessor for FetchMessages.MissingUIDs);
    sub_1B0B238BC(v38, type metadata accessor for MessageBatches);
    sub_1B0B238BC(v86, _s15MissingMessagesOMa);
    sub_1B0B238BC(v84, type metadata accessor for MessageBatches);
    sub_1B0398EFC(v53, &unk_1EB6E3670, &unk_1B0E9B260);
    sub_1B0398EFC(v43, &qword_1EB6E41C0, &unk_1B0EC4330);
    v57 = 1;
  }

  else
  {
    v58 = v53;
    v59 = v71;
    sub_1B03C60A4(v58, v71, &unk_1EB6E26C0, &unk_1B0E9DE10);
    sub_1B0398EFC(v43, &qword_1EB6E41C0, &unk_1B0EC4330);
    sub_1B03C60A4(v59, v43 + v44[5], &unk_1EB6E26C0, &unk_1B0E9DE10);
    v60 = v44[9];
    sub_1B0B238BC(v42, type metadata accessor for FetchMessages.MissingUIDs);
    sub_1B0B238BC(v38, type metadata accessor for MessageBatches);
    sub_1B0B238BC(v86, _s15MissingMessagesOMa);
    sub_1B0B238BC(v84, type metadata accessor for MessageBatches);
    v57 = 0;
    *(v43 + v60) = MEMORY[0x1E69E7CC0];
    *v43 = v82;
    *(v43 + 8) = v91;
    v61 = (v43 + v44[6]);
    *v61 = v70;
    v61[1] = v69;
    v61[2] = v68;
    v61[3] = v67;
    v61[4] = v66;
    *(v43 + v44[7]) = v94;
    *(v43 + v44[8]) = BYTE6(v72) & 1;
  }

  v80(v43, v57, 1, v44);
  v62 = &v17[v40[11]];
  *v62 = v95;
  v62[8] = v96;
  v63 = v90;
  sub_1B0B24104(v17, v90, type metadata accessor for FetchMessages);
  return (*(v89 + 56))(v63, 0, 1, v40);
}

void *sub_1B0B1D788@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 43);
  v6 = a2 + OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped;
  swift_beginAccess();
  v7 = v6 + *(_s13SelectedStateV7WrappedVMa(0) + 20);
  v8 = *(v7 + 24);
  LODWORD(v7) = *(v7 + 32);
  v9 = v7 != 1;
  if (v7 == 1)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0;
  }

  v11 = *a1;
  v12 = a1[1];
  v13 = a1[2];
  v14 = *(a1 + 6);
  *a3 = sub_1B03D0770(&unk_1F2710FE8);
  *(a3 + 8) = 0;
  *(a3 + 113) = 0;
  *(a3 + 120) = sub_1B0BABEA0(MEMORY[0x1E69E7CC0]);
  *(a3 + 128) = 0;
  *(a3 + 16) = v11;
  *(a3 + 24) = v12;
  *(a3 + 32) = v5;
  *(a3 + 40) = v13;
  *(a3 + 48) = v14;
  *(a3 + 56) = &type metadata for UpdateLocalFlags;
  sub_1B0451F2C();
  swift_bridgeObjectRetain_n();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  result = sub_1B0E461E8();
  *(a3 + 104) = v10;
  *(a3 + 112) = v9;
  return result;
}

uint64_t sub_1B0B1D8A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t (*a6)(__int128 *)@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v10 = v9;
  v183 = a1;
  v184 = a8;
  v180 = a6;
  v181 = a7;
  v182 = a5;
  v179 = a9;
  v14 = type metadata accessor for MessageBatches(0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = (&v160 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v17);
  v175 = &v160 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v177 = &v160 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v174 = (&v160 - v22);
  v23 = type metadata accessor for PendingServerResponses(0);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v176 = (&v160 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v25);
  v27 = (&v160 - v26);
  v28 = 0;
  v29 = a2 + 56;
  v187 = a3;
  v30 = a3 + 7;
  v185 = a4;
  v186 = a4 + 7;
  do
  {
    if (!*(a2 + 16))
    {
      goto LABEL_33;
    }

    v31 = byte_1F27110D8[v28 + 32];
    sub_1B0E46C28();
    MEMORY[0x1B2728D70](v31);
    v32 = sub_1B0E46CB8();
    v33 = -1 << *(a2 + 32);
    v34 = v32 & ~v33;
    if (((*(v29 + ((v34 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v34) & 1) == 0)
    {
      goto LABEL_33;
    }

    ++v28;
    v35 = ~v33;
    while (*(*(a2 + 48) + v34) != v31)
    {
      v34 = (v34 + 1) & v35;
      if (((*(v29 + ((v34 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v34) & 1) == 0)
      {
        goto LABEL_33;
      }
    }

    if (v187[2])
    {
      v178 = v27;
      v36 = v16;
      v37 = a2;
      v38 = v10;
      v39 = v187;
      sub_1B0E46C28();
      MEMORY[0x1B2728D70](v31);
      v40 = sub_1B0E46CB8();
      v41 = *(v39 + 32);
      v10 = v38;
      a2 = v37;
      v16 = v36;
      v27 = v178;
      v42 = -1 << v41;
      v43 = v40 & ~(-1 << v41);
      if ((*(v30 + ((v43 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v43))
      {
        v44 = ~v42;
        while (*(v187[6] + v43) != v31)
        {
          v43 = (v43 + 1) & v44;
          if (((*(v30 + ((v43 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v43) & 1) == 0)
          {
            goto LABEL_13;
          }
        }

LABEL_33:
        v72 = v184;
        if (!*(v184 + 2))
        {
          v178 = a2;
          v168 = *(v10 + 43);
          v73 = *v10;
          v169 = v10[1];
          v74 = v10[2];
          v75 = *(v10 + 6);
          v161 = v10[5];
          v162 = *(v10 + 48);
          v167 = v10[7];
          v186 = v10;
          v76 = *(v10 + 64);
          v170 = v75;
          LODWORD(v171) = v76;
          v77 = v183 + OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped;
          swift_beginAccess();
          v164 = _s13SelectedStateV7WrappedVMa(0);
          v165 = v77;
          v78 = v77 + *(v164 + 20);
          v166 = *(v78 + 24);
          v79 = *(v78 + 32);
          v163 = type metadata accessor for MailboxSyncState(0);
          sub_1B03BCDD0(v78 + *(v163 + 48), v27, type metadata accessor for PendingServerResponses);
          v80 = v27[3];
          v81 = v27[4];
          __swift_project_boxed_opaque_existential_0(v27, v80);
          v82 = v27;
          v83 = *(v81 + 24);
          v172 = v74;
          swift_bridgeObjectRetain_n();
          v173 = v73;
          swift_bridgeObjectRetain_n();
          v84 = v81;
          v72 = v184;
          v85 = v83(v80, v84);
          sub_1B0B238BC(v82, type metadata accessor for PendingServerResponses);
          v86 = *(v72 + 1);
          *(&v207 + 1) = sub_1B03D0770(&unk_1F2711100);
          LOBYTE(v208) = 0;
          if (v171 || v79)
          {

            swift_bridgeObjectRelease_n();

            v213 = 0u;
            v214 = 0u;
            v215 = 0u;
            v216 = 0u;
            v217 = 0u;
            v218 = 0u;
            v219 = 0u;
            memset(v220, 0, 17);
            a2 = v178;
          }

          else
          {
            *&v205 = v173;
            *(&v205 + 1) = v169;
            v87 = v168;
            LOWORD(v206) = v168;
            *(&v206 + 1) = v172;
            LODWORD(v207) = v170;
            *&v190 = v172;
            DWORD2(v190) = v170;
            *(&v208 + 1) = &type metadata for QuickFlagChangesResync;
            sub_1B0451F2C();
            v88 = sub_1B0E461E8();
            *(&v211 + 1) = v167;
            *&v212[0] = v166;
            *(&v212[0] + 1) = v85;
            LOBYTE(v212[1]) = v86;
            LOBYTE(v220[1]) = v86;
            v215 = v207;
            v216 = v208;
            v217 = v209;
            v218 = v210;
            v213 = v205;
            v214 = v206;
            v219 = v211;
            v220[0] = v212[0];
            a2 = v178;
            if (v205)
            {
              v228[16] = v220[1];
              v227 = v219;
              *v228 = v220[0];
              v223 = v215;
              v224 = v216;
              v225 = v217;
              v226 = v218;
              v221 = v213;
              v222 = v214;
              MEMORY[0x1EEE9AC00](v88);
              *(&v160 - 2) = &v221;
              v89 = a2;
              v90 = v185;
              v91 = a2;
              v92 = v180;
              sub_1B0B19B88(v89, v187, v180, sub_1B0B23E98, &v205, v185);
              if (*(&v206 + 1))
              {

                sub_1B0450C74(&v205, &v213);
                v93 = &v213;
                v94 = v179;
LABEL_39:
                sub_1B0450C74(v93, v94);
                return sub_1B0B23EB0(&v221);
              }

              sub_1B0398EFC(&v205, &qword_1EB6E45A8, &unk_1B0EC5920);
              v123 = v91;
              if (sub_1B0A94670(2, v91))
              {
                v124 = sub_1B0A94670(2, v187);
                v125 = v186;
                if ((v124 & 1) == 0 && ((sub_1B03BE324(v123, v187) & 1) == 0 || (sub_1B0A94670(2, v90) & 1) == 0))
                {
                  v127 = (v165 + *(v164 + 20));
                  v128 = *v127;
                  v129 = v127 + *(v163 + 48);
                  v183 = *(v129 + 5);
                  v130 = v129[48];
                  v131 = v174;
                  result = sub_1B03BCDD0(v182, v174, type metadata accessor for MessageBatches);
                  v132 = *(v72 + 4);
                  BYTE4(v192) = 1;
                  v133 = *v131 / 2;
                  if (v133 >= v128)
                  {
                    v138 = v183;
                    sub_1B0B23E80(v183, v130);

                    sub_1B0AA93E0(v138, v130);
                    sub_1B0B238BC(v131, type metadata accessor for MessageBatches);
                    v123 = v178;
                    v125 = v186;
LABEL_80:
                    v205 = 0u;
                    v206 = 0u;
                    v207 = 0u;
                    v208 = 0u;
                    v209 = 0u;
                    v210 = 0u;
                    v211 = 0u;
                    v72 = v184;
LABEL_81:
                    v126 = sub_1B0398EFC(&v205, &qword_1EB6E4680, &qword_1B0EC5A18);
                    goto LABEL_82;
                  }

                  v134 = v183;
                  v68 = __OFSUB__(v128, v133);
                  v135 = v128 - v133;
                  if (!v68)
                  {
                    v123 = v178;
                    v125 = v186;
                    if (v135 <= 0 || HIDWORD(v135))
                    {
LABEL_73:
                      sub_1B0B23E80(v183, v130);

                      v136 = v134;
                      v137 = v130;
LABEL_74:
                      sub_1B0AA93E0(v136, v137);
                      sub_1B0B238BC(v174, type metadata accessor for MessageBatches);
                      goto LABEL_80;
                    }

                    if (v130)
                    {
                      if (v183 > 139)
                      {
                        goto LABEL_73;
                      }

                      if (v183 > 0)
                      {
                        goto LABEL_93;
                      }
                    }

                    else
                    {
                      v147 = *(v183 + 16);
                      if (v147 >= 0x8C)
                      {
                        goto LABEL_73;
                      }

                      v148 = (v183 + 32);
                      while (v147)
                      {
                        v149 = *v148++;
                        --v147;
                        if (v149 < v135)
                        {
                          sub_1B0B23E80(v183, 0);

                          v136 = v134;
                          v137 = 0;
                          goto LABEL_74;
                        }
                      }
                    }

                    if ((v162 & 1) == 0)
                    {
                      *&v190 = v173;
                      *(&v190 + 1) = v169;
                      LOWORD(v191) = v87;
                      *(&v191 + 1) = v172;
                      LODWORD(v192) = v170;
                      v188 = v172;
                      v189 = v170;
                      *(&v192 + 1) = &type metadata for DetectRemovedMessagesInRecent;
                      v153 = v132;
                      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
                      sub_1B0B23E80(v134, v130);
                      sub_1B0E461E8();
                      v154 = v174;
                      v155 = sub_1B0B48718(v174, v161, 0);
                      v157 = v156;
                      v158 = sub_1B0B238BC(v154, type metadata accessor for MessageBatches);
                      *(&v195 + 1) = v155;
                      LODWORD(v196) = v157;
                      BYTE4(v196) = BYTE4(v157) & 1;
                      *(&v196 + 5) = v153;
                      if ((v130 & 1) == 0)
                      {
                        v159 = *(v134 + 16);
                        v158 = sub_1B0AA93E0(v134, 0);
                        v134 = v159;
                      }

                      v123 = v178;
                      v125 = v186;
                      *(&v196 + 1) = v134;
                      v209 = v194;
                      v210 = v195;
                      v205 = v190;
                      v206 = v191;
                      v207 = v192;
                      v208 = v193;
                      v211 = v196;
                      v72 = v184;
                      if (v190)
                      {
                        v217 = v209;
                        v218 = v210;
                        v219 = v211;
                        v213 = v205;
                        v214 = v206;
                        v215 = v207;
                        v216 = v208;
                        MEMORY[0x1EEE9AC00](v158);
                        *(&v160 - 2) = &v213;
                        sub_1B0B19478(v123, v187, v92, sub_1B0B23F04, &v190, v90);
                        if (*(&v191 + 1))
                        {
                          sub_1B0450C74(&v190, &v205);
                          sub_1B0450C74(&v205, &v197);
                          sub_1B0AA9424(&v213);
LABEL_84:
                          v71 = v179;
                          if (*(&v198 + 1))
                          {
                            sub_1B0450C74(&v197, &v200);
                            v93 = &v200;
                            v94 = v71;
                            goto LABEL_39;
                          }

LABEL_88:
                          sub_1B0398EFC(&v197, &qword_1EB6E45A8, &unk_1B0EC5920);
                          result = sub_1B0B23EB0(&v221);
                          goto LABEL_61;
                        }

                        sub_1B0398EFC(&v190, &qword_1EB6E45A8, &unk_1B0EC5920);
                        sub_1B0AA9424(&v213);
LABEL_87:
                        v71 = v179;
                        v199 = 0;
                        v197 = 0u;
                        v198 = 0u;
                        goto LABEL_88;
                      }

                      goto LABEL_81;
                    }

LABEL_93:
                    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
                    sub_1B0B238BC(v174, type metadata accessor for MessageBatches);
                    swift_bridgeObjectRelease_n();

                    goto LABEL_80;
                  }

                  __break(1u);
LABEL_120:
                  __break(1u);
                  return result;
                }
              }

              else
              {

                v125 = v186;
              }

LABEL_82:
              MEMORY[0x1EEE9AC00](v126);
              v139 = v182;
              *(&v160 - 4) = v125;
              *(&v160 - 3) = v139;
              *(&v160 - 2) = v72;
              sub_1B0B191FC(v123, v187, v92, sub_1B0B23EA4, &v205, v90);
              if (*(&v206 + 1))
              {
                sub_1B0450C74(&v205, &v213);
                sub_1B0450C74(&v213, &v197);
                goto LABEL_84;
              }

              sub_1B0398EFC(&v205, &qword_1EB6E45A8, &unk_1B0EC5920);
              goto LABEL_87;
            }
          }

          sub_1B0398EFC(&v213, &qword_1EB6E4678, &qword_1B0EC5A10);
          v10 = v186;
        }

        v95 = sub_1B0A94670(4, a2);
        v96 = v185;
        if (v95)
        {
          v95 = sub_1B0A94670(4, v187);
          if ((v95 & 1) == 0)
          {
            if ((sub_1B03BE324(a2, v187) & 1) == 0 || (v95 = sub_1B0A94670(4, v96), (v95 & 1) == 0))
            {
              v178 = a2;
              v168 = *(v10 + 43);
              v97 = *v10;
              v166 = v10[1];
              v173 = v10[2];
              v174 = v97;
              LODWORD(v167) = *(v10 + 6);
              v169 = v10[5];
              v186 = v10;
              v170 = *(v10 + 48);
              v98 = v183 + OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped;
              swift_beginAccess();
              v99 = _s13SelectedStateV7WrappedVMa(0);
              v100 = (v98 + *(v99 + 20));
              v171 = *v100;
              v172 = v99;
              v101 = v100 + *(type metadata accessor for MailboxSyncState(0) + 48);
              v102 = *(v101 + 40);
              v103 = *(v101 + 48);
              v104 = v176;
              sub_1B03BCDD0(v101, v176, type metadata accessor for PendingServerResponses);
              v106 = v104[3];
              v105 = v104[4];
              __swift_project_boxed_opaque_existential_0(v104, v106);
              v107 = *(v105 + 24);
              swift_bridgeObjectRetain_n();
              _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
              v108 = sub_1B0B23E80(v102, v103);
              v109 = v106;
              v110 = v102;
              v111 = v107(v109, v105, v108);
              sub_1B0B238BC(v104, type metadata accessor for PendingServerResponses);
              v112 = *(v184 + 1);
              LODWORD(v107) = *(v98 + *(v172 + 20) + 32);
              v113 = v177;
              sub_1B03BCDD0(v182, v177, type metadata accessor for MessageBatches);
              *(&v207 + 1) = sub_1B03D0770(&unk_1F2711128);
              LOBYTE(v208) = 1;
              if (v107 && (v114 = *v113, sub_1B0AA59AC(v171, *v113, v102, v103)) && sub_1B0AA5A24(v171, v114, v111) && (v170 & 1) == 0)
              {
                *&v205 = v174;
                *(&v205 + 1) = v166;
                LOWORD(v206) = v168;
                *(&v206 + 1) = v173;
                LODWORD(v207) = v167;
                *&v200 = v173;
                DWORD2(v200) = v167;
                *(&v208 + 1) = &type metadata for DetectChangesToMessagesInRecent;
                sub_1B0451F2C();
                sub_1B0E461E8();
                *&v212[0] = v111;
                if ((v103 & 1) == 0)
                {
                  v115 = *(v102 + 16);
                  sub_1B0AA93E0(v102, 0);
                  v110 = v115;
                }

                v96 = v185;
                v10 = v186;
                a2 = v178;
                v116 = v169;
                *(&v212[0] + 1) = v110;
                BYTE8(v211) = v112;
                v117 = v175;
                sub_1B03BCDD0(v113, v175, type metadata accessor for MessageBatches);
                LOBYTE(v200) = 0;
                sub_1B0B3EDEC(0xFFFFFFFFLL);
                v118 = sub_1B0B48718(v117, v116, 0);
                v120 = v119;
                sub_1B0B238BC(v117, type metadata accessor for MessageBatches);
                v121 = sub_1B0B238BC(v113, type metadata accessor for MessageBatches);
                *&v212[1] = v118;
                DWORD2(v212[1]) = v120;
                BYTE12(v212[1]) = BYTE4(v120) & 1;
                v219 = v211;
                v220[0] = v212[0];
                v215 = v207;
                v216 = v208;
                v217 = v209;
                v218 = v210;
                v213 = v205;
                v214 = v206;
                *(v220 + 13) = *(v212 + 13);
                if (v205)
                {
                  v227 = v219;
                  *v228 = v220[0];
                  *&v228[13] = *(v220 + 13);
                  v223 = v215;
                  v224 = v216;
                  v225 = v217;
                  v226 = v218;
                  v221 = v213;
                  v222 = v214;
                  MEMORY[0x1EEE9AC00](v121);
                  *(&v160 - 2) = &v221;
                  sub_1B0B1993C(a2, v187, v180, sub_1B0B23E8C, &v205, v96);
                  if (*(&v206 + 1))
                  {
                    sub_1B0450C74(&v205, &v213);
                    sub_1B0450C74(&v213, v179);
                    return sub_1B0AA5C28(&v221);
                  }

                  sub_1B0398EFC(&v205, &qword_1EB6E45A8, &unk_1B0EC5920);
                  result = sub_1B0AA5C28(&v221);
                  goto LABEL_60;
                }
              }

              else
              {

                sub_1B0AA93E0(v102, v103);
                swift_bridgeObjectRelease_n();

                sub_1B0B238BC(v113, type metadata accessor for MessageBatches);

                v213 = 0u;
                v214 = 0u;
                v215 = 0u;
                v216 = 0u;
                v217 = 0u;
                v218 = 0u;
                v219 = 0u;
                memset(v220, 0, 29);
                v96 = v185;
                v10 = v186;
                a2 = v178;
              }

              v95 = sub_1B0398EFC(&v213, &qword_1EB6E4670, &qword_1B0EC5A08);
              v72 = v184;
            }
          }
        }

        MEMORY[0x1EEE9AC00](v95);
        *(&v160 - 4) = v10;
        *(&v160 - 3) = v72;
        v122 = v182;
        *(&v160 - 2) = v183;
        *(&v160 - 1) = v122;
        sub_1B0B196DC(a2, v187, v180, sub_1B0B23E74, &v213, v96);
        if (*(&v214 + 1))
        {
          sub_1B0450C74(&v213, &v221);
          return sub_1B0450C74(&v221, v179);
        }

        result = sub_1B0398EFC(&v213, &qword_1EB6E45A8, &unk_1B0EC5920);
LABEL_60:
        v71 = v179;
        goto LABEL_61;
      }
    }

LABEL_13:
    if (sub_1B03BE324(a2, v187))
    {
      if (v185[2])
      {
        v178 = a2;
        v45 = v10;
        v46 = v185;
        sub_1B0E46C28();
        MEMORY[0x1B2728D70](v31);
        v47 = sub_1B0E46CB8();
        v48 = *(v46 + 32);
        v10 = v45;
        a2 = v178;
        v49 = -1 << v48;
        v50 = v47 & ~(-1 << v48);
        if ((*(v186 + ((v50 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v50))
        {
          v51 = ~v49;
          while (*(v185[6] + v50) != v31)
          {
            v50 = (v50 + 1) & v51;
            if (((*(v186 + ((v50 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v50) & 1) == 0)
            {
              goto LABEL_19;
            }
          }

          goto LABEL_33;
        }
      }
    }

LABEL_19:
    ;
  }

  while (v28 != 2);
  v52 = sub_1B0A94670(2, a2);
  v53 = v185;
  if ((v52 & 1) == 0)
  {
    goto LABEL_29;
  }

  v52 = sub_1B0A94670(2, v187);
  if (v52)
  {
    goto LABEL_29;
  }

  if (sub_1B03BE324(a2, v187))
  {
    v52 = sub_1B0A94670(2, v53);
    if (v52)
    {
      goto LABEL_29;
    }
  }

  v178 = a2;
  LODWORD(v176) = *(v10 + 43);
  v54 = *v10;
  v175 = v10[1];
  v55 = v10[2];
  v56 = *(v10 + 6);
  v177 = v10[5];
  v186 = v10;
  v57 = *(v10 + 48);
  v58 = v183 + OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped;
  swift_beginAccess();
  v59 = (v58 + *(_s13SelectedStateV7WrappedVMa(0) + 20));
  v60 = *v59;
  v61 = v59 + *(type metadata accessor for MailboxSyncState(0) + 48);
  v62 = *(v61 + 5);
  v63 = v61[48];
  result = sub_1B03BCDD0(v182, v16, type metadata accessor for MessageBatches);
  v65 = *(v184 + 4);
  BYTE4(v207) = 1;
  v66 = v16;
  v67 = *v16 / 2;
  if (v67 >= v60)
  {
    goto LABEL_27;
  }

  v68 = __OFSUB__(v60, v67);
  v69 = v60 - v67;
  if (v68)
  {
    goto LABEL_120;
  }

  if ((v69 - 0x100000000) <= 0xFFFFFFFF00000000)
  {
    goto LABEL_27;
  }

  if (v63)
  {
    if (v62 <= 0)
    {
      goto LABEL_96;
    }

    goto LABEL_27;
  }

  v150 = *(v62 + 16);
  if (v150 > 0x8B)
  {
    goto LABEL_27;
  }

  v151 = (v62 + 32);
  while (v150)
  {
    v152 = *v151++;
    --v150;
    if (v152 < v69)
    {
      goto LABEL_27;
    }
  }

LABEL_96:
  if (v57)
  {
LABEL_27:
    sub_1B0B238BC(v16, type metadata accessor for MessageBatches);
    v213 = 0u;
    v214 = 0u;
    v215 = 0u;
    v216 = 0u;
    v217 = 0u;
    v218 = 0u;
    v219 = 0u;
    v53 = v185;
    a2 = v178;
  }

  else
  {
    *&v205 = v54;
    *(&v205 + 1) = v175;
    LOWORD(v206) = v176;
    *(&v206 + 1) = v55;
    LODWORD(v207) = v56;
    v203 = v55;
    v204 = v56;
    *(&v207 + 1) = &type metadata for DetectRemovedMessagesInRecent;
    v140 = v65;
    swift_bridgeObjectRetain_n();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0B23E80(v62, v63);
    sub_1B0451F2C();
    sub_1B0E461E8();
    v141 = v66;
    v142 = sub_1B0B48718(v66, v177, v57 & 1);
    v144 = v143;
    v145 = sub_1B0B238BC(v141, type metadata accessor for MessageBatches);
    *(&v210 + 1) = v142;
    LODWORD(v211) = v144;
    BYTE4(v211) = BYTE4(v144) & 1;
    *(&v211 + 5) = v140;
    if ((v63 & 1) == 0)
    {
      v146 = *(v62 + 16);
      v145 = sub_1B0AA93E0(v62, 0);
      v62 = v146;
    }

    v53 = v185;
    *(&v211 + 1) = v62;
    v217 = v209;
    v218 = v210;
    v213 = v205;
    v214 = v206;
    v215 = v207;
    v216 = v208;
    v219 = v211;
    a2 = v178;
    if (v205)
    {
      v225 = v217;
      v226 = v218;
      v227 = v219;
      v221 = v213;
      v222 = v214;
      v223 = v215;
      v224 = v216;
      MEMORY[0x1EEE9AC00](v145);
      *(&v160 - 2) = &v221;
      sub_1B0B19478(a2, v187, v180, sub_1B0B241A8, &v205, v53);
      if (*(&v206 + 1))
      {
        sub_1B0450C74(&v205, &v213);
        sub_1B0450C74(&v213, &v200);
        sub_1B0AA9424(&v221);
        goto LABEL_31;
      }

      sub_1B0398EFC(&v205, &qword_1EB6E45A8, &unk_1B0EC5920);
      sub_1B0AA9424(&v221);
LABEL_76:
      v71 = v179;
      v202 = 0;
      v200 = 0u;
      v201 = 0u;
      goto LABEL_77;
    }
  }

  v52 = sub_1B0398EFC(&v213, &qword_1EB6E4680, &qword_1B0EC5A18);
  v10 = v186;
LABEL_29:
  MEMORY[0x1EEE9AC00](v52);
  v70 = v182;
  *(&v160 - 4) = v10;
  *(&v160 - 3) = v70;
  *(&v160 - 2) = v184;
  sub_1B0B191FC(a2, v187, v180, sub_1B0B24194, &v213, v53);
  if (!*(&v214 + 1))
  {
    sub_1B0398EFC(&v213, &qword_1EB6E45A8, &unk_1B0EC5920);
    goto LABEL_76;
  }

  sub_1B0450C74(&v213, &v221);
  sub_1B0450C74(&v221, &v200);
LABEL_31:
  v71 = v179;
  if (*(&v201 + 1))
  {
    sub_1B0450C74(&v200, &v190);
    return sub_1B0450C74(&v190, v71);
  }

LABEL_77:
  result = sub_1B0398EFC(&v200, &qword_1EB6E45A8, &unk_1B0EC5920);
LABEL_61:
  *(v71 + 32) = 0;
  *v71 = 0u;
  *(v71 + 16) = 0u;
  return result;
}

void *sub_1B0B1EE84@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _OWORD *a5@<X8>)
{
  v6 = *(a2 + 8);
  v7 = *(v6 + 16);
  if (v7)
  {
    v8 = *(v6 + 8 * v7 + 24);
  }

  else
  {
    v8 = 1;
  }

  v23 = v8;
  v9 = *(a1 + 43);
  v10 = *a1;
  v11 = a1[1];
  v12 = a1[2];
  v13 = *(a1 + 6);
  v22 = *(a3 + 4);
  v14 = a4 + OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped;
  swift_beginAccess();
  v15 = *(_s13SelectedStateV7WrappedVMa(0) + 20);
  v16 = (v14 + v15 + *(type metadata accessor for MailboxSyncState(0) + 76));
  v17 = *v16;
  v18 = v16[1];
  swift_bridgeObjectRetain_n();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v19 = static MonotonicTime.now()();
  result = sub_1B0451E64(&unk_1F2711358);
  *&v24 = result;
  BYTE8(v24) = 0;
  *&v31[16] = 0;
  v31[24] = 1;
  if (__OFSUB__(v18, 1))
  {
    __break(1u);
  }

  else
  {
    v21 = exp2((v18 - 1));
    if (MonotonicTime.init(seconds:since:)(v17, fmin(v21 + v21, 37.0)) >= v19)
    {

      result = swift_bridgeObjectRelease_n();
      *(a5 + 121) = 0u;
      a5[6] = 0u;
      a5[7] = 0u;
      a5[4] = 0u;
      a5[5] = 0u;
      a5[2] = 0u;
      a5[3] = 0u;
      *a5 = 0u;
      a5[1] = 0u;
    }

    else
    {
      *&v25 = v10;
      *(&v25 + 1) = v11;
      LOWORD(v26) = v9;
      *(&v26 + 1) = v12;
      LODWORD(v27) = v13;
      *(&v27 + 1) = &type metadata for CountUnreadMessages;
      sub_1B0451F2C();
      result = sub_1B0E461E8();
      DWORD2(v30) = v23;
      *v31 = 1000000;
      v31[8] = 0;
      *&v31[9] = v22;
      a5[2] = v26;
      a5[3] = v27;
      a5[4] = v28;
      a5[5] = v29;
      *a5 = v24;
      a5[1] = v25;
      a5[6] = v30;
      a5[7] = *v31;
      *(a5 + 121) = *&v31[9];
    }
  }

  return result;
}

uint64_t sub_1B0B1F088@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v32 = a4;
  v7 = type metadata accessor for UploadMessages(0);
  v8 = *(v7 - 1);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = *(a1 + 43);
  v11 = *a1;
  v30 = a1[1];
  v12 = a1[2];
  v13 = *(a1 + 6);
  v35 = *(a2 + 1);
  v14 = a3 + OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped;
  swift_beginAccess();
  v15 = v14 + *(_s13SelectedStateV7WrappedVMa(0) + 20);
  HIDWORD(v29) = *(v15 + 32);
  v16 = *(a2 + 32);
  LOBYTE(v14) = *(a2 + 40);
  v17 = type metadata accessor for MailboxSyncState(0);
  if (v14)
  {
    v18 = v16 != 0;
    v19 = 2;
    if (!v16)
    {
      v20 = (v15 + *(v17 + 72));
      if ((*(v20 + 9) & 1) == 0)
      {
        v21 = *v20;
        v22 = *(v20 + 8);
        if (v22)
        {
          v18 = 1;
        }

        else
        {
          v18 = v21;
        }

        if (v22)
        {
          v19 = 2;
        }

        else
        {
          v19 = 1;
        }
      }
    }
  }

  else
  {
    v19 = 0;
    v18 = v16;
  }

  swift_bridgeObjectRetain_n();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *(v10 + 5) = sub_1B0451E64(&unk_1F27111C8);
  v10[48] = 0;
  v23 = v7[13];
  v24 = type metadata accessor for UploadMessages.PendingUpload(0);
  (*(*(v24 - 8) + 56))(&v10[v23], 1, 1, v24);
  *&v10[v7[14]] = xmmword_1B0EC58F0;
  v10[v7[18]] = 0;
  v25 = v30;
  *v10 = v11;
  *(v10 + 1) = v25;
  *(v10 + 8) = v31;
  *(v10 + 3) = v12;
  *(v10 + 8) = v13;
  v33 = v12;
  v34 = v13;
  *(v10 + 7) = v7;
  sub_1B0451F2C();
  sub_1B0E461E8();
  v10[104] = v35;
  v10[105] = HIDWORD(v29) == 0;
  *(v10 + 14) = v18;
  v10[120] = v19;
  v26 = MEMORY[0x1E69E7CC0];
  *(v10 + 16) = MEMORY[0x1E69E7CC0];
  *(v10 + 17) = v26;
  *(v10 + 18) = v26 + 32;
  *(v10 + 152) = xmmword_1B0EA4610;
  *&v10[v7[15]] = MEMORY[0x1E69E7CD0];
  *&v10[v7[16]] = v26;
  *&v10[v7[17]] = v26;
  v27 = v32;
  sub_1B0B24104(v10, v32, type metadata accessor for UploadMessages);
  return (*(v8 + 56))(v27, 0, 1, v7);
}

uint64_t sub_1B0B1F36C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = 0;
  v7 = result + 56;
  v8 = 1 << *(result + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(result + 56);
  v11 = (v8 + 63) >> 6;
  v12 = a2 + 56;
  v13 = a3 + 56;
  v27 = a4 + 56;
  v28 = result;
LABEL_5:
  while (v10)
  {
    if (!*(a2 + 16))
    {
      return 1;
    }

LABEL_7:
    v14 = *(*(v5 + 48) + (__clz(__rbit64(v10)) | (v6 << 6)));
    sub_1B0E46C28();
    MEMORY[0x1B2728D70](v14);
    v15 = sub_1B0E46CB8();
    v16 = -1 << *(a2 + 32);
    v17 = v15 & ~v16;
    if (((*(v12 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
    {
      return 1;
    }

    v10 &= v10 - 1;
    v18 = ~v16;
    while (*(*(a2 + 48) + v17) != v14)
    {
      v17 = (v17 + 1) & v18;
      if (((*(v12 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
      {
        return 1;
      }
    }

    if (*(a3 + 16))
    {
      sub_1B0E46C28();
      MEMORY[0x1B2728D70](v14);
      v20 = sub_1B0E46CB8();
      v21 = -1 << *(a3 + 32);
      v22 = v20 & ~v21;
      if ((*(v13 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22))
      {
        v23 = ~v21;
        while (*(*(a3 + 48) + v22) != v14)
        {
          v22 = (v22 + 1) & v23;
          if (((*(v13 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
          {
            goto LABEL_22;
          }
        }

        return 1;
      }
    }

LABEL_22:
    result = sub_1B03BE324(a2, a3);
    v5 = v28;
    if (result)
    {
      if (*(a4 + 16))
      {
        sub_1B0E46C28();
        MEMORY[0x1B2728D70](v14);
        result = sub_1B0E46CB8();
        v5 = v28;
        v24 = -1 << *(a4 + 32);
        v25 = result & ~v24;
        if ((*(v27 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25))
        {
          v26 = ~v24;
          while (*(*(a4 + 48) + v25) != v14)
          {
            v25 = (v25 + 1) & v26;
            if (((*(v27 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25) & 1) == 0)
            {
              goto LABEL_5;
            }
          }

          return 1;
        }
      }
    }
  }

  do
  {
    v19 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
      return result;
    }

    if (v19 >= v11)
    {
      return 0;
    }

    v10 = *(v7 + 8 * v19);
    ++v6;
  }

  while (!v10);
  v6 = v19;
  if (*(a2 + 16))
  {
    goto LABEL_7;
  }

  return 1;
}

void sub_1B0B1F618(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2780, &unk_1B0E9C5E0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v41 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v41 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v20 = v41 - v19;
  v21 = *(a2 + 8);
  v22 = *(v21 + 16);
  if (v22)
  {
    v23 = *(v21 + 8 * v22 + 24);
  }

  else
  {
    v23 = 1;
  }

  v24 = *(a1 + 43);
  v28 = (a3 & 0x10000000000) == 0;
  v26 = *a1;
  v25 = a1[1];
  v27 = a1[2];
  v28 = v28 || v23 == 1;
  v29 = v28;
  v47 = *(a1 + 6);
  v46 = v25;
  if (v28)
  {
    swift_bridgeObjectRetain_n();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v30 = 0;
    v31 = 0;
    v32 = 1;
LABEL_22:
    *a4 = sub_1B0451E64(&unk_1F2711380);
    *(a4 + 8) = 1;
    v40 = v46;
    *(a4 + 16) = v26;
    *(a4 + 24) = v40;
    *(a4 + 32) = v24;
    *(a4 + 40) = v27;
    LODWORD(v40) = v47;
    *(a4 + 48) = v47;
    v49 = v27;
    v50 = v40;
    *(a4 + 56) = &type metadata for PurgeMessagesOutsideWindowOfInterest;
    sub_1B0451F2C();
    sub_1B0E461E8();
    *(a4 + 104) = v31;
    *(a4 + 112) = v29;
    *(a4 + 116) = v30;
    *(a4 + 124) = v32 & 1;
    return;
  }

  v45 = v24;
  v33 = a1[5];
  v34 = *(a1 + 48);
  LODWORD(v48) = 1;
  if (v23 >= 2)
  {
    v41[1] = v18;
    v42 = v33;
    v44 = v29;
    v51 = v23 - 1;
    v35 = sub_1B041C1E8();
    swift_bridgeObjectRetain_n();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    static MessageIdentifier.... infix(_:_:)(&v48, &v51, &type metadata for UID, &v49);
    v43 = v49 | (HIDWORD(v49) << 32);
    if (v34)
    {
      v30 = 0;
    }

    else
    {
      v48 = Range<>.init<A>(_:)(&v49, &type metadata for UID, v35);
      sub_1B03D06F8();
      sub_1B0E46F08();
      v49 = v42;
      v48 = Range<>.init<A>(_:)(&v49, &type metadata for UID, v35);
      sub_1B0E46F08();
      MessageIdentifierSet.subtracting(_:)(v20, v16);
      sub_1B0398EFC(v13, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      MessageIdentifierSet.ranges.getter(v10);
      sub_1B0398EFC(v16, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      v30 = sub_1B0B4A3E8();
      v37 = v36;
      sub_1B0398EFC(v10, &unk_1EB6E2780, &unk_1B0E9C5E0);
      sub_1B0398EFC(v20, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      if ((v37 & 1) == 0)
      {
        v38 = v30 == v42;
        v39 = HIDWORD(v42) == HIDWORD(v30);
        v32 = v38 && v39;
        if (v38 && v39)
        {
          v30 = 0;
        }

        goto LABEL_21;
      }

      v30 = 1;
    }

    v32 = 1;
LABEL_21:
    LOBYTE(v29) = v44;
    LOWORD(v24) = v45;
    v31 = v43;
    goto LABEL_22;
  }

  __break(1u);
}

uint64_t sub_1B0B1F9EC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v53 = a5;
  v56 = a3;
  v59 = a6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E45F0, &unk_1B0EC5960);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v42 - v10;
  SearchResult = type metadata accessor for FetchSearchResultMessages.Requests(0);
  v12 = *(SearchResult - 8);
  MEMORY[0x1EEE9AC00](SearchResult);
  v52 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  SearchResultMessages = type metadata accessor for FetchSearchResultMessages(0);
  v58 = *(SearchResultMessages - 1);
  MEMORY[0x1EEE9AC00](SearchResultMessages);
  v16 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for MessageBatches(0);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = *(a1 + 43);
  v20 = *a1;
  v50 = a1[1];
  v21 = a1[2];
  v49 = *(a1 + 6);
  v55 = a1[5];
  v54 = *(a1 + 48);
  sub_1B03BCDD0(a2, v19, type metadata accessor for MessageBatches);
  v22 = v56 + OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped;
  swift_beginAccess();
  v23 = (v22 + *(_s13SelectedStateV7WrappedVMa(0) + 20));
  v24 = v23[144];
  v47 = v23[145];
  v48 = v24;
  v25 = v23[146];
  v45 = v23[147];
  v46 = v25;
  v44 = v23[148];
  v62 = *(a4 + 1);
  *v16 = MEMORY[0x1E69E7CD0];
  v16[8] = 0;
  v26 = SearchResultMessages[13];
  v27 = type metadata accessor for NewServerMessages(0);
  v28 = *(v27 - 8);
  v29 = *(v28 + 56);
  v56 = v26;
  v42 = v28 + 56;
  v43 = v29;
  v29(&v16[v26], 1, 1, v27);
  swift_bridgeObjectRetain_n();
  v30 = v20;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v31 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B0AD74BC(v31, v55, v54 & 1, v11);
  if ((*(v12 + 48))(v11, 1, SearchResult) == 1)
  {
    swift_bridgeObjectRelease_n();

    sub_1B0B238BC(v19, type metadata accessor for MessageBatches);
    sub_1B0398EFC(v11, &qword_1EB6E45F0, &unk_1B0EC5960);
    sub_1B0398EFC(&v16[v56], &qword_1EB6E41C0, &unk_1B0EC4330);
    return (*(v58 + 56))(v59, 1, 1, SearchResultMessages);
  }

  else
  {
    v33 = v52;
    sub_1B0B24104(v11, v52, type metadata accessor for FetchSearchResultMessages.Requests);
    v34 = SearchResultMessages[8];
    v60 = v21;
    v35 = v49;
    v61 = v49;
    *&v16[v34] = SearchResultMessages;
    sub_1B0451F2C();
    sub_1B0E461E8();
    v36 = v50;
    *(v16 + 2) = v30;
    *(v16 + 3) = v36;
    *(v16 + 16) = v51;
    *(v16 + 5) = v21;
    *(v16 + 12) = v35;
    sub_1B0B24104(v19, &v16[SearchResultMessages[7]], type metadata accessor for MessageBatches);
    v37 = v56;
    sub_1B0398EFC(&v16[v56], &qword_1EB6E41C0, &unk_1B0EC4330);
    v43(&v16[v37], 1, 1, v27);
    v38 = &v16[SearchResultMessages[9]];
    v39 = v47;
    *v38 = v48;
    v38[1] = v39;
    v40 = v45;
    v38[2] = v46;
    v38[3] = v40;
    v38[4] = v44;
    v16[SearchResultMessages[10]] = v62;
    v16[SearchResultMessages[11]] = BYTE6(v53) & 1;
    sub_1B0B24104(v33, &v16[SearchResultMessages[12]], type metadata accessor for FetchSearchResultMessages.Requests);
    v41 = v59;
    sub_1B03BCDD0(v16, v59, type metadata accessor for FetchSearchResultMessages);
    (*(v58 + 56))(v41, 0, 1, SearchResultMessages);
    return sub_1B0B238BC(v16, type metadata accessor for FetchSearchResultMessages);
  }
}