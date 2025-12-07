unint64_t sub_188455D9C()
{
  result = qword_1EA90D2B0;
  if (!qword_1EA90D2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA90D2B0);
  }

  return result;
}

uint64_t sub_188455DF0(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, int64_t a6, uint64_t *a7)
{
  v31[2] = *MEMORY[0x1E69E9840];
  v7 = a6;
  switch(a2 >> 62)
  {
    case 1uLL:
      v22 = a1 >> 32;
      if (a1 >> 32 < a1)
      {
        __break(1u);
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      v29 = a7;
      v30 = a6;
      v23 = a1;
      v15 = __DataStorage._bytes.getter();
      if (!v15)
      {
        goto LABEL_15;
      }

      v24 = __DataStorage._offset.getter();
      if (__OFSUB__(v23, v24))
      {
LABEL_26:
        __break(1u);
      }

      v15 += v23 - v24;
LABEL_15:
      v7 = v22 - v23;
LABEL_16:
      v25 = MEMORY[0x18CFD43A0]();
      if (v25 >= v7)
      {
        v26 = v7;
      }

      else
      {
        v26 = v25;
      }

      v27 = (v26 + v15);
      if (v15)
      {
        v11 = v27;
      }

      else
      {
        v11 = 0;
      }

      v12 = v15;
      v18 = a3;
      v19 = a4;
      v20 = a5;
      v7 = v30;
      v21 = v30;
      a7 = v29;
LABEL_23:
      sub_188456288(v12, v11, v18, v19, v20, v21, a7);
      sub_188423CCC(a3, a4);
      return sub_188423CCC(a5, v7);
    case 2uLL:
      v29 = a7;
      v30 = a6;
      v14 = *(a1 + 16);
      v13 = *(a1 + 24);
      v15 = __DataStorage._bytes.getter();
      if (!v15)
      {
        goto LABEL_6;
      }

      v16 = __DataStorage._offset.getter();
      if (__OFSUB__(v14, v16))
      {
        goto LABEL_25;
      }

      v15 += v14 - v16;
LABEL_6:
      v17 = __OFSUB__(v13, v14);
      v7 = v13 - v14;
      if (!v17)
      {
        goto LABEL_16;
      }

      __break(1u);
LABEL_9:
      memset(v31, 0, 14);
      v12 = v31;
      v11 = v31;
LABEL_10:
      v18 = a3;
      v19 = a4;
      v20 = a5;
      v21 = v7;
      goto LABEL_23;
    case 3uLL:
      goto LABEL_9;
    default:
      v31[0] = a1;
      LOWORD(v31[1]) = a2;
      BYTE2(v31[1]) = BYTE2(a2);
      BYTE3(v31[1]) = BYTE3(a2);
      BYTE4(v31[1]) = BYTE4(a2);
      BYTE5(v31[1]) = BYTE5(a2);
      v11 = v31 + BYTE6(a2);
      v12 = v31;
      goto LABEL_10;
  }
}

uint64_t sub_188456028(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  sub_188423C74(a1, a2);
  sub_188456100(1uLL, a1, a2, &v11);
  v8 = v11;
  v11 = xmmword_1886F7310;
  sub_188423C74(a3, a4);
  sub_188423C74(v8, *(&v8 + 1));
  sub_188455DF0(v8, *(&v8 + 1), a3, a4, v8, *(&v8 + 1), &v11);
  sub_188423CCC(v8, *(&v8 + 1));
  v9 = v11;
  sub_188423C74(v11, *(&v11 + 1));
  sub_188423CCC(v9, *(&v9 + 1));
  return v9;
}

unint64_t sub_188456100@<X0>(unint64_t result@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v5 = a3 >> 62;
    v7 = result;
    v9 = 0;
    v10 = BYTE6(a3);
    v11 = 0;
    switch(a3 >> 62)
    {
      case 1uLL:
        v11 = a2;
        v9 = a2 >> 32;
        break;
      case 2uLL:
        v11 = *(a2 + 16);
        v9 = *(a2 + 24);
        break;
      case 3uLL:
        break;
      default:
        v11 = 0;
        v9 = BYTE6(a3);
        break;
    }

    v12 = sub_188456760(v11, v9, a2, a3);
    if (!v7 || v12 >= v7)
    {
      v13 = sub_1884566F8(v11, v7, a2, a3);
      v14 = 0;
      switch(v5)
      {
        case 1:
          v14 = a2 >> 32;
          break;
        case 2:
          v14 = *(a2 + 24);
          break;
        case 3:
          break;
        default:
          v14 = v10;
          break;
      }

      if (v14 < v13)
      {
        __break(1u);
      }
    }

    v15 = Data._Representation.subscript.getter();
    v17 = v16;
    result = sub_188423CCC(a2, a3);
    *a4 = v15;
    a4[1] = v17;
  }

  return result;
}

void *sub_188456288(UInt8 *a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, const __CFData *a6, uint64_t *a7)
{
  v62 = *MEMORY[0x1E69E9840];
  v8 = a6;
  v9 = a5;
  switch(a4 >> 62)
  {
    case 1uLL:
      if (a3 > a3 >> 32)
      {
        __break(1u);
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      v60 = a5;
      v9 = a6;
      sub_188423C74(a5, a6);
      sub_188423C74(a3, a4);
      v46 = __DataStorage._bytes.getter();
      if (!v46)
      {
        goto LABEL_16;
      }

      v47 = __DataStorage._offset.getter();
      if (__OFSUB__(a3, v47))
      {
LABEL_21:
        __break(1u);
      }

      v46 += a3 - v47;
LABEL_16:
      MEMORY[0x18CFD43A0]();
      v48 = *MEMORY[0x1E695E480];
      v49 = MEMORY[0x18CFD45F0](v60, v9);
      v8 = CFDataCreate(v48, a1, v49);
      v50 = MEMORY[0x18CFD45F0](a3, a4);
      a1 = CFDataCreate(v48, v46, v50);
      result = PCSCopyUnwrappedKey();
      if (result)
      {
LABEL_17:
        v51 = result;
        BytePtr = CFDataGetBytePtr(v51);
        Length = CFDataGetLength(v51);

        v54 = sub_188515EB4(BytePtr, Length);
        v56 = v55;

        v57 = *a7;
        v58 = a7[1];
        *a7 = v54;
        a7[1] = v56;
        sub_188423CCC(v57, v58);
        v44 = v60;
        v45 = v9;
LABEL_18:
        sub_188423CCC(v44, v45);
        return sub_188423CCC(a3, a4);
      }

      else
      {
LABEL_24:
        __break(1u);
      }

      return result;
    case 2uLL:
      v27 = *(a3 + 16);
      v60 = a5;
      v9 = a6;
      sub_188423C74(a5, a6);
      sub_188423C74(a3, a4);
      v28 = __DataStorage._bytes.getter();
      if (!v28)
      {
        goto LABEL_7;
      }

      v29 = __DataStorage._offset.getter();
      if (__OFSUB__(v27, v29))
      {
        goto LABEL_20;
      }

      v28 += v27 - v29;
LABEL_7:
      MEMORY[0x18CFD43A0]();
      v30 = *MEMORY[0x1E695E480];
      v31 = MEMORY[0x18CFD45F0](v60, v9);
      v8 = CFDataCreate(v30, a1, v31);
      v32 = MEMORY[0x18CFD45F0](a3, a4);
      a1 = CFDataCreate(v30, v28, v32);
      result = PCSCopyUnwrappedKey();
      if (result)
      {
        goto LABEL_17;
      }

      __break(1u);
LABEL_9:
      memset(bytes, 0, 14);
      v33 = *MEMORY[0x1E695E480];
      sub_188423C74(v9, v8);
      v34 = MEMORY[0x18CFD45F0](v9, v8);
      v59 = v8;
      v35 = CFDataCreate(v33, a1, v34);
      v36 = MEMORY[0x18CFD45F0](a3, a4);
      v37 = CFDataCreate(v33, bytes, v36);
      result = PCSCopyUnwrappedKey();
      if (!result)
      {
        __break(1u);
LABEL_23:
        __break(1u);
        goto LABEL_24;
      }

      v38 = result;
      v39 = CFDataGetBytePtr(v38);
      v40 = CFDataGetLength(v38);

      v41 = sub_188515EB4(v39, v40);
      v43 = v42;

      v25 = *a7;
      v26 = a7[1];
      *a7 = v41;
      a7[1] = v43;
LABEL_11:
      sub_188423CCC(v25, v26);
      v44 = v9;
      v45 = v59;
      goto LABEL_18;
    case 3uLL:
      goto LABEL_9;
    default:
      *bytes = a3;
      *&bytes[8] = a4;
      bytes[10] = BYTE2(a4);
      bytes[11] = BYTE3(a4);
      bytes[12] = BYTE4(a4);
      bytes[13] = BYTE5(a4);
      v13 = *MEMORY[0x1E695E480];
      sub_188423C74(a5, a6);
      v14 = MEMORY[0x18CFD45F0](v9, v8);
      v59 = v8;
      v15 = CFDataCreate(v13, a1, v14);
      v16 = MEMORY[0x18CFD45F0](a3, a4);
      v17 = CFDataCreate(v13, bytes, v16);
      result = PCSCopyUnwrappedKey();
      if (!result)
      {
        goto LABEL_23;
      }

      v19 = result;
      v20 = CFDataGetBytePtr(v19);
      v21 = CFDataGetLength(v19);

      v22 = sub_188515EB4(v20, v21);
      v24 = v23;

      v25 = *a7;
      v26 = a7[1];
      *a7 = v22;
      a7[1] = v24;
      goto LABEL_11;
  }
}

uint64_t sub_1884566F8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = __OFADD__(a1, a2);
  result = a1 + a2;
  if (v8)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v5 = 0;
  v6 = 0;
  switch(a4 >> 62)
  {
    case 1uLL:
      v6 = a3;
      v5 = a3 >> 32;
      break;
    case 2uLL:
      v6 = *(a3 + 16);
      v5 = *(a3 + 24);
      break;
    case 3uLL:
      break;
    default:
      v6 = 0;
      v5 = BYTE6(a4);
      break;
  }

  if (v5 >= result)
  {
    v8 = __OFSUB__(result, v6);
    v7 = result - v6 < 0;
  }

  else
  {
    v8 = 0;
    v7 = 1;
  }

  if (v7 != v8)
  {
    goto LABEL_12;
  }

  return result;
}

uint64_t sub_188456760(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = 0;
  v5 = 0;
  switch(a4 >> 62)
  {
    case 1uLL:
      v4 = a3 >> 32;
      v5 = a3;
      break;
    case 2uLL:
      v5 = *(a3 + 16);
      v4 = *(a3 + 24);
      break;
    case 3uLL:
      break;
    default:
      v5 = 0;
      v4 = BYTE6(a4);
      break;
  }

  if (v4 < result || v5 > result)
  {
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v7 = 0;
  v8 = 0;
  switch(a4 >> 62)
  {
    case 1uLL:
      v7 = a3 >> 32;
      v8 = a3;
      break;
    case 2uLL:
      v8 = *(a3 + 16);
      v7 = *(a3 + 24);
      break;
    case 3uLL:
      break;
    default:
      v8 = 0;
      v7 = BYTE6(a4);
      break;
  }

  if (v7 < a2 || v8 > a2)
  {
    goto LABEL_21;
  }

  v10 = __OFSUB__(a2, result);
  result = a2 - result;
  if (v10)
  {
LABEL_22:
    __break(1u);
  }

  return result;
}

uint64_t sub_188456830(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for SHA256();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for SHA256Digest();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v33[0] = v33 - v12;
  type metadata accessor for __DataStorage();
  swift_allocObject();
  v13 = __DataStorage.init(capacity:)();
  v34 = 0;
  v35 = v13 | 0x4000000000000000;
  sub_188456B2C(0, 0, 129);
  sub_188456BF0();
  sub_1883F9B8C();
  dispatch thunk of HashFunction.init()();
  sub_188423C74(a1, a2);
  sub_188517514(a1, a2);
  sub_188423CCC(a1, a2);
  sub_1883F9B8C();
  dispatch thunk of HashFunction.finalize()();
  v14 = *(v5 + 8);
  v15.n128_f64[0] = v14(v7, v4);
  sub_188515F84(v10, v15);
  sub_1883F9B8C();
  dispatch thunk of HashFunction.init()();
  v16 = sub_1883F712C();
  sub_188423C74(v16, v17);
  v18 = sub_1883F712C();
  sub_188517514(v18, v19);
  v20 = sub_1883F712C();
  sub_188423CCC(v20, v21);
  v22 = v33[0];
  sub_1883F9B8C();
  dispatch thunk of HashFunction.finalize()();
  v14(v7, v4);
  v23 = sub_1883F712C();
  sub_188423CCC(v23, v24);
  v26 = sub_188515F84(v22, v25);
  v28 = v27;
  v29 = sub_188456AC4(20, v26, v27);
  v31 = v30;
  sub_188423CCC(v26, v28);
  Data.append(_:)();
  sub_188423CCC(v29, v31);
  return v34;
}

uint64_t sub_188456AC4(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = BYTE6(a3);
  v4 = a3 >> 62;
  v7 = 0;
  result = 0;
  switch(v4)
  {
    case 1uLL:
      result = a2;
      v7 = a2 >> 32;
      break;
    case 2uLL:
      result = *(a2 + 16);
      v7 = *(a2 + 24);
      break;
    case 3uLL:
      break;
    default:
      result = 0;
      v7 = v3;
      break;
  }

  if (v7 >= result && result <= a1)
  {
    return Data._Representation.subscript.getter();
  }

  __break(1u);
  return result;
}

uint64_t sub_188456B2C(uint64_t a1, uint64_t a2, char a3)
{
  v8 = *MEMORY[0x1E69E9840];
  v6 = sub_18844E6FC(&qword_1EA90D2C0, &qword_1886F73F8);
  v7 = sub_188456C48();
  LOBYTE(v5[0]) = a3;
  sub_188400B68(v5, v6);
  Data._Representation.replaceSubrange(_:with:count:)();
  return sub_1883FE944(v5);
}

unint64_t sub_188456BF0()
{
  result = qword_1EA90D2B8;
  if (!qword_1EA90D2B8)
  {
    type metadata accessor for SHA256();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA90D2B8);
  }

  return result;
}

unint64_t sub_188456C48()
{
  result = qword_1EA90D2C8;
  if (!qword_1EA90D2C8)
  {
    sub_18844E798(&qword_1EA90D2C0, &qword_1886F73F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA90D2C8);
  }

  return result;
}

uint64_t sub_188456CAC(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_188456CD0, 0, 0);
}

void sub_188456CD0()
{
  sub_1883F78E0();
  v1 = v0[4];
  v2 = v0[2];
  v3 = *(v1 + OBJC_IVAR____TtC8CloudKit17ChunkStreamHandle_range);
  if (v3 > v2 || (v4 = v0[3], *(v1 + OBJC_IVAR____TtC8CloudKit17ChunkStreamHandle_range + 8) < v4))
  {
    sub_18845AD68();
    swift_allocError();
    *v5 = 0;
    swift_willThrow();
    sub_1883F816C();

    v6();
    return;
  }

  v7 = v2 - v3;
  if (__OFSUB__(v2, v3))
  {
    __break(1u);
    goto LABEL_13;
  }

  v8 = v4 - v3;
  if (__OFSUB__(v4, v3))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v8 < v7)
  {
LABEL_14:
    __break(1u);
    return;
  }

  v9 = swift_task_alloc();
  v0[5] = v9;
  *v9 = v0;
  v9[1] = sub_188456E24;

  sub_18845868C(v7, v8);
}

uint64_t sub_188456E24()
{
  sub_1883F78E0();
  v3 = v2;
  v5 = v4;
  v6 = *v1;
  sub_1883F78D4();
  *v7 = v6;

  sub_1883F7904();
  if (!v0)
  {
    v8 = v5;
    v9 = v3;
  }

  return v10(v8, v9);
}

uint64_t sub_188456F28(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x64616F6C6E776F64 && a2 == 0xEB000000004C5255;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 7955819 && a2 == 0xE300000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x727574616E676973 && a2 == 0xE900000000000065;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x65676E6172 && a2 == 0xE500000000000000)
      {

        return 3;
      }

      else
      {
        v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t sub_188457088(char a1)
{
  result = 0x64616F6C6E776F64;
  switch(a1)
  {
    case 1:
      result = 7955819;
      break;
    case 2:
      result = 0x727574616E676973;
      break;
    case 3:
      result = 0x65676E6172;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_188457114@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_188456F28(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_18845713C(uint64_t a1)
{
  v2 = sub_18845ADBC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_188457178(uint64_t a1)
{
  v2 = sub_18845ADBC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1884571B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v6 = v5;
  v28 = a3;
  v31 = type metadata accessor for URL.DirectoryHint();
  v11 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for URL();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v29 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_defaultActor_initialize();
  v17 = *(v15 + 16);
  v32 = a1;
  v17(v6 + OBJC_IVAR____TtCC8CloudKit17ChunkStreamHandleP33_8C09B02C3959D7B1EC6CDDBFBA6DF63011ChunkReader_url, a1, v14);
  v18 = (v6 + OBJC_IVAR____TtCC8CloudKit17ChunkStreamHandleP33_8C09B02C3959D7B1EC6CDDBFBA6DF63011ChunkReader_signature);
  v19 = a2;
  *v18 = a2;
  v20 = v28;
  v18[1] = v28;
  v21 = (v6 + OBJC_IVAR____TtCC8CloudKit17ChunkStreamHandleP33_8C09B02C3959D7B1EC6CDDBFBA6DF63011ChunkReader_key);
  *v21 = a4;
  v21[1] = a5;

  v30 = a4;
  v22 = a4;
  v23 = a5;
  sub_188423C74(v22, a5);
  if (qword_1EA90CB08 != -1)
  {
    swift_once();
  }

  sub_1883FDE5C(v14, qword_1EA90D2D0);
  v33 = v19;
  v34 = v20;
  v24 = v31;
  (*(v11 + 104))(v13, *MEMORY[0x1E6968F70], v31);
  sub_18845B108();
  v25 = v29;
  URL.appending<A>(component:directoryHint:)();
  sub_188423CCC(v30, v23);
  (*(v15 + 8))(v32, v14);
  (*(v11 + 8))(v13, v24);

  (*(v15 + 32))(v6 + OBJC_IVAR____TtCC8CloudKit17ChunkStreamHandleP33_8C09B02C3959D7B1EC6CDDBFBA6DF63011ChunkReader_cacheFile, v25, v14);
  *(v6 + OBJC_IVAR____TtCC8CloudKit17ChunkStreamHandleP33_8C09B02C3959D7B1EC6CDDBFBA6DF63011ChunkReader_cacheState) = 0;
  return v6;
}

unint64_t sub_188457494(uint64_t a1, unint64_t a2)
{
  v4 = v2;
  type metadata accessor for __DataStorage();
  swift_allocObject();
  v7 = __DataStorage.init(length:)();
  v8 = *(v2 + OBJC_IVAR____TtCC8CloudKit17ChunkStreamHandleP33_8C09B02C3959D7B1EC6CDDBFBA6DF63011ChunkReader_key);
  v9 = *(v4 + OBJC_IVAR____TtCC8CloudKit17ChunkStreamHandleP33_8C09B02C3959D7B1EC6CDDBFBA6DF63011ChunkReader_key + 8);
  type metadata accessor for ChunkDataDecryptor();
  swift_allocObject();

  sub_188423C74(v8, v9);
  sub_188454D24(0x1000000000, v7 | 0x4000000000000000, v8, v9);
  if (!v3)
  {
    a2 = sub_188455194(a1, a2);
  }

  return a2;
}

uint64_t sub_18845759C(uint64_t a1, unint64_t a2)
{
  v47 = *MEMORY[0x1E69E9840];
  v3 = *(v2 + OBJC_IVAR____TtCC8CloudKit17ChunkStreamHandleP33_8C09B02C3959D7B1EC6CDDBFBA6DF63011ChunkReader_signature);
  v4 = *(v2 + OBJC_IVAR____TtCC8CloudKit17ChunkStreamHandleP33_8C09B02C3959D7B1EC6CDDBFBA6DF63011ChunkReader_signature + 8);
  v5 = sub_188456830(a1, a2);
  v7 = v6 >> 62;
  v8 = v6;
  v37 = HIDWORD(v5);
  v38 = BYTE6(v6);
  switch(v6 >> 62)
  {
    case 1uLL:
      if (__OFSUB__(HIDWORD(v5), v5))
      {
        goto LABEL_51;
      }

      v9 = HIDWORD(v5) - v5;
LABEL_6:
      if (!v9)
      {
LABEL_10:
        sub_188423CCC(v5, v6);
        v14 = MEMORY[0x1E69E7CC0];
        goto LABEL_37;
      }

      v46 = MEMORY[0x1E69E7CC0];
      v39 = v5;
      sub_18840489C(0, v9 & ~(v9 >> 63), 0);
      v12 = v39;
      v36 = v4;
      if (v7)
      {
        if (v7 == 2)
        {
          v13 = *(v39 + 16);
        }

        else
        {
          v13 = v39;
        }
      }

      else
      {
        v13 = 0;
      }

      if (v9 < 0)
      {
        goto LABEL_50;
      }

      v14 = v46;
      break;
    case 2uLL:
      v11 = *(v5 + 16);
      v10 = *(v5 + 24);
      v9 = v10 - v11;
      if (!__OFSUB__(v10, v11))
      {
        goto LABEL_6;
      }

      goto LABEL_52;
    case 3uLL:
      goto LABEL_10;
    default:
      v9 = BYTE6(v6);
      goto LABEL_6;
  }

  do
  {
    if (v7 == 1)
    {
      if (v13 < v39 || v13 >= v39 >> 32)
      {
        goto LABEL_46;
      }

      v17 = __DataStorage._bytes.getter();
      if (!v17)
      {
        goto LABEL_53;
      }

      v18 = v17;
      v19 = __DataStorage._offset.getter();
      v20 = v13 - v19;
      if (__OFSUB__(v13, v19))
      {
        goto LABEL_48;
      }

LABEL_32:
      v15 = *(v18 + v20);
      v12 = v39;
      goto LABEL_33;
    }

    if (v7)
    {
      if (v13 < *(v12 + 16))
      {
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
LABEL_54:
        __break(1u);
      }

      if (v13 >= *(v12 + 24))
      {
        goto LABEL_47;
      }

      v21 = __DataStorage._bytes.getter();
      if (!v21)
      {
        goto LABEL_54;
      }

      v18 = v21;
      v22 = __DataStorage._offset.getter();
      v20 = v13 - v22;
      if (__OFSUB__(v13, v22))
      {
        goto LABEL_49;
      }

      goto LABEL_32;
    }

    if (v13 >= v38)
    {
      goto LABEL_45;
    }

    LOBYTE(v40) = v12;
    *(&v40 + 1) = *(&v39 + 1);
    BYTE3(v40) = BYTE3(v39);
    BYTE4(v40) = v37;
    *(&v40 + 5) = *(&v39 + 5);
    HIBYTE(v40) = HIBYTE(v39);
    v41 = v8;
    v42 = BYTE2(v8);
    v43 = BYTE3(v8);
    v44 = BYTE4(v8);
    v45 = BYTE5(v8);
    v15 = *(&v40 + v13);
LABEL_33:
    sub_18844E6FC(&qword_1EA90D328, &qword_1886F75C8);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_1886F7400;
    *(v23 + 56) = MEMORY[0x1E69E7508];
    *(v23 + 64) = MEMORY[0x1E69E7558];
    *(v23 + 32) = v15;
    v24 = String.init(format:_:)();
    v26 = v25;
    v46 = v14;
    v28 = *(v14 + 16);
    v27 = *(v14 + 24);
    if (v28 >= v27 >> 1)
    {
      sub_18840489C((v27 > 1), v28 + 1, 1);
      v12 = v39;
      v14 = v46;
    }

    *(v14 + 16) = v28 + 1;
    v29 = v14 + 16 * v28;
    *(v29 + 32) = v24;
    *(v29 + 40) = v26;
    ++v13;
    --v9;
  }

  while (v9);
  sub_188423CCC(v12, v8);
  v4 = v36;
LABEL_37:
  v40 = v14;
  sub_18844E6FC(&qword_1EA90D330, &qword_1886F75D0);
  sub_1883F94A4();
  v30 = BidirectionalCollection<>.joined(separator:)();
  v32 = v31;

  if (v3 == v30 && v4 == v32)
  {
    v34 = 1;
  }

  else
  {
    v34 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v34 & 1;
}

void sub_188457994()
{
  v0 = type metadata accessor for URL();
  sub_188420F44(v0, qword_1EA90D2D0);
  v1 = sub_1883FDE5C(v0, qword_1EA90D2D0);
  sub_1884579E0(v1);
}

void sub_1884579E0(uint64_t a1@<X8>)
{
  v38 = a1;
  v39[1] = *MEMORY[0x1E69E9840];
  v1 = sub_18844E6FC(&qword_1EA90D240, &qword_1886F70B0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v37 = &v34 - v2;
  v3 = type metadata accessor for URL.DirectoryHint();
  v35 = *(v3 - 8);
  v36 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = objc_opt_self();
  v11 = [v10 defaultManager];
  v39[0] = 0;
  v12 = [v11 URLForDirectory:13 inDomain:1 appropriateForURL:0 create:0 error:v39];
  v13 = v39[0];
  if (v12)
  {
    v14 = v12;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v13;

    v16 = [v10 defaultManager];
    URL._bridgeToObjectiveC()(v17);
    v19 = v18;
    v39[0] = 0;
    v20 = [v16 URLForDirectory:99 inDomain:1 appropriateForURL:v18 create:1 error:v39];

    v21 = v39[0];
    if (v20)
    {
      static URL._unconditionallyBridgeFromObjectiveC(_:)();
      v22 = v21;

      (*(v7 + 8))(v9, v6);
      return;
    }

    v25 = v39[0];
    v24 = _convertNSErrorToError(_:)();

    swift_willThrow();
    (*(v7 + 8))(v9, v6);
  }

  else
  {
    v23 = v39[0];
    v24 = _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  if (qword_1EA90CC18 != -1)
  {
    swift_once();
  }

  v26 = type metadata accessor for Logger();
  sub_1883FDE5C(v26, qword_1EA90E888);
  v27 = v24;
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    *v30 = 138412290;
    v32 = v24;
    v33 = _swift_stdlib_bridgeErrorToNSError();
    *(v30 + 4) = v33;
    *v31 = v33;
    _os_log_impl(&dword_1883EA000, v28, v29, "Failed to create cache directory with error %@", v30, 0xCu);
    sub_18845B1B0(v31, &qword_1EA90DC70, &unk_1886FA190);
    MEMORY[0x18CFD7E80](v31, -1, -1);
    MEMORY[0x18CFD7E80](v30, -1, -1);
  }

  (*(v35 + 104))(v5, *MEMORY[0x1E6968F58], v36);
  sub_1883F90F4(v37, 1, 1, v6);
  URL.init(filePath:directoryHint:relativeTo:)();
}

uint64_t sub_188457E80()
{
  v1 = type metadata accessor for URL();
  v2 = MEMORY[0x1EEE9AC00](v1);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v0 + OBJC_IVAR____TtCC8CloudKit17ChunkStreamHandleP33_8C09B02C3959D7B1EC6CDDBFBA6DF63011ChunkReader_url, v2);
  return URLRequest.init(url:cachePolicy:timeoutInterval:)();
}

char *sub_188457F5C(unint64_t a1, char *a2)
{
  v4 = v2;
  v28[1] = *MEMORY[0x1E69E9840];
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18845B058();
  (*(v8 + 16))(v10, v4 + OBJC_IVAR____TtCC8CloudKit17ChunkStreamHandleP33_8C09B02C3959D7B1EC6CDDBFBA6DF63011ChunkReader_cacheFile, v7);
  v11 = sub_1884583B0(v10);
  if (v3)
  {
    return a2;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    swift_once();
    goto LABEL_15;
  }

  v10 = v11;
  v28[0] = 0;
  if (![v11 seekToOffset:a1 error:v28])
  {
    a2 = v28[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
    return a2;
  }

  v12 = &a2[-a1];
  if (__OFSUB__(a2, a1))
  {
    goto LABEL_19;
  }

  v13 = v28[0];
  v14 = NSFileHandle.read(upToCount:)();
  a2 = v14;
  a1 = v15;
  if (v15 >> 60 != 15)
  {
    sub_188423C74(v14, v15);
    v16 = MEMORY[0x18CFD45F0](a2, a1);
    sub_18841BA74(a2, a1);
    if (v16 == v12)
    {
      if (qword_1EA90CC18 != -1)
      {
        swift_once();
      }

      v17 = type metadata accessor for Logger();
      sub_1883FDE5C(v17, qword_1EA90E888);

      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        v28[0] = v21;
        *v20 = 136315138;
        *(v20 + 4) = sub_1883FE340(*(v4 + OBJC_IVAR____TtCC8CloudKit17ChunkStreamHandleP33_8C09B02C3959D7B1EC6CDDBFBA6DF63011ChunkReader_signature), *(v4 + OBJC_IVAR____TtCC8CloudKit17ChunkStreamHandleP33_8C09B02C3959D7B1EC6CDDBFBA6DF63011ChunkReader_signature + 8), v28);
        _os_log_impl(&dword_1883EA000, v18, v19, "found chunk with signature %s in local cache", v20, 0xCu);
        sub_1883FE944(v21);
        MEMORY[0x18CFD7E80](v21, -1, -1);
        MEMORY[0x18CFD7E80](v20, -1, -1);
      }

      return a2;
    }
  }

  if (qword_1EA90CC18 != -1)
  {
    goto LABEL_20;
  }

LABEL_15:
  v23 = type metadata accessor for Logger();
  sub_1883FDE5C(v23, qword_1EA90E888);

  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v28[0] = v27;
    *v26 = 136315138;
    *(v26 + 4) = sub_1883FE340(*(v4 + OBJC_IVAR____TtCC8CloudKit17ChunkStreamHandleP33_8C09B02C3959D7B1EC6CDDBFBA6DF63011ChunkReader_signature), *(v4 + OBJC_IVAR____TtCC8CloudKit17ChunkStreamHandleP33_8C09B02C3959D7B1EC6CDDBFBA6DF63011ChunkReader_signature + 8), v28);
    _os_log_impl(&dword_1883EA000, v24, v25, "can't find chunk with signature %s in local cache", v26, 0xCu);
    sub_1883FE944(v27);
    MEMORY[0x18CFD7E80](v27, -1, -1);
    MEMORY[0x18CFD7E80](v26, -1, -1);
  }

  sub_18841BA74(a2, a1);

  return 0;
}

id sub_1884583B0(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  URL._bridgeToObjectiveC()(v13);
  v3 = v2;
  v12 = 0;
  v4 = [swift_getObjCClassFromMetadata() fileHandleForReadingFromURL:v2 error:&v12];

  v5 = v12;
  if (v4)
  {
    v6 = type metadata accessor for URL();
    v7 = *(*(v6 - 8) + 8);
    v8 = v5;
    v7(a1, v6);
  }

  else
  {
    v9 = v12;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v10 = type metadata accessor for URL();
    (*(*(v10 - 8) + 8))(a1, v10);
  }

  return v4;
}

id sub_188458508(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  result = Data.write(to:options:)();
  if (!v3)
  {
    if (qword_1EA90CC18 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_1883FDE5C(v6, qword_1EA90E888);

    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v11 = v10;
      *v9 = 136315138;
      *(v9 + 4) = sub_1883FE340(*(v4 + OBJC_IVAR____TtCC8CloudKit17ChunkStreamHandleP33_8C09B02C3959D7B1EC6CDDBFBA6DF63011ChunkReader_signature), *(v4 + OBJC_IVAR____TtCC8CloudKit17ChunkStreamHandleP33_8C09B02C3959D7B1EC6CDDBFBA6DF63011ChunkReader_signature + 8), &v11);
      _os_log_impl(&dword_1883EA000, v7, v8, "cache chunk with signature %s", v9, 0xCu);
      sub_1883FE944(v10);
      MEMORY[0x18CFD7E80](v10, -1, -1);
      MEMORY[0x18CFD7E80](v9, -1, -1);
    }

    return sub_1885160C4();
  }

  return result;
}

uint64_t sub_18845868C(uint64_t a1, uint64_t a2)
{
  v3[7] = a2;
  v3[8] = v2;
  v3[6] = a1;
  sub_18844E6FC(&qword_1EA90E6A0, &qword_1886F7030);
  v3[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_18845872C, v2, 0);
}

uint64_t sub_18845872C()
{
  v42 = v0;
  v1 = *(v0 + 64);
  v2 = OBJC_IVAR____TtCC8CloudKit17ChunkStreamHandleP33_8C09B02C3959D7B1EC6CDDBFBA6DF63011ChunkReader_cacheState;
  v3 = *(v1 + OBJC_IVAR____TtCC8CloudKit17ChunkStreamHandleP33_8C09B02C3959D7B1EC6CDDBFBA6DF63011ChunkReader_cacheState);
  *(v0 + 80) = v3;
  if (!v3)
  {
    if (qword_1EA90CC18 != -1)
    {
      sub_1883F7138(&qword_1EA90CC18);
    }

    v11 = type metadata accessor for Logger();
    sub_1883FDE5C(v11, qword_1EA90E888);

    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.debug.getter();

    if (!os_log_type_enabled(v12, v13))
    {
      goto LABEL_21;
    }

    v14 = sub_1883F9984();
    v15 = sub_1883FE540();
    v41 = v15;
    *v14 = 136315138;
    *(v14 + 4) = sub_1883FF074(OBJC_IVAR____TtCC8CloudKit17ChunkStreamHandleP33_8C09B02C3959D7B1EC6CDDBFBA6DF63011ChunkReader_signature, v41);
    v16 = "chunk %s needed, downloading";
    goto LABEL_20;
  }

  if (v3 == 1)
  {
    if (qword_1EA90CC18 != -1)
    {
      sub_1883F7138(&qword_1EA90CC18);
    }

    v4 = type metadata accessor for Logger();
    sub_1883FDE5C(v4, qword_1EA90E888);

    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = *(v0 + 64);
      v8 = sub_1883F9984();
      v9 = sub_1883FE540();
      v41 = v9;
      *v8 = 136315138;
      *(v8 + 4) = sub_1883FE340(*(v7 + OBJC_IVAR____TtCC8CloudKit17ChunkStreamHandleP33_8C09B02C3959D7B1EC6CDDBFBA6DF63011ChunkReader_signature), *(v7 + OBJC_IVAR____TtCC8CloudKit17ChunkStreamHandleP33_8C09B02C3959D7B1EC6CDDBFBA6DF63011ChunkReader_signature + 8), &v41);
      _os_log_impl(&dword_1883EA000, v5, v6, "chunk %s available in cache, retrieving", v8, 0xCu);
      sub_1883FE944(v9);
      sub_1883F7B60();
      sub_1883F7B60();
    }

    sub_188457F5C(*(v0 + 48), *(v0 + 56));
    if (v10 >> 60 != 15)
    {

      sub_1883F7904();
      sub_1883F7E58();

      __asm { BRAA            X3, X16 }
    }

    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.debug.getter();

    if (!os_log_type_enabled(v12, v13))
    {
      goto LABEL_21;
    }

    v14 = sub_1883F9984();
    v15 = sub_1883FE540();
    v41 = v15;
    *v14 = 136315138;
    *(v14 + 4) = sub_1883FF074(OBJC_IVAR____TtCC8CloudKit17ChunkStreamHandleP33_8C09B02C3959D7B1EC6CDDBFBA6DF63011ChunkReader_signature, v41);
    v16 = "chunk %s not found in cache, re-downloading";
LABEL_20:
    _os_log_impl(&dword_1883EA000, v12, v13, v16, v14, 0xCu);
    sub_1883FE944(v15);
    sub_1883F7B60();
    sub_1883F7B60();
LABEL_21:

    v25 = *(v0 + 64);
    v24 = *(v0 + 72);
    v26 = type metadata accessor for TaskPriority();
    sub_1883F90F4(v24, 1, 1, v26);
    v27 = sub_18845AE64(&qword_1EA90D318, type metadata accessor for ChunkStreamHandle.ChunkReader, &unk_1886F7514);
    v28 = swift_allocObject();
    v28[2] = v25;
    v28[3] = v27;
    v28[4] = v25;
    swift_retain_n();
    v29 = sub_1884E049C(0, 0, v24, &unk_1886F75B8, v28);
    *(v0 + 112) = v29;
    v30 = *(v1 + v2);
    *(v1 + v2) = v29;

    sub_18845B048(v30);
    v31 = swift_task_alloc();
    *(v0 + 120) = v31;
    sub_18844E6FC(&qword_1EA90E3D0, &qword_1886F75C0);
    *v31 = v0;
    v31[1] = sub_188458FAC;
    goto LABEL_22;
  }

  v17 = qword_1EA90CC18;

  if (v17 != -1)
  {
    sub_1883F7138(&qword_1EA90CC18);
  }

  v18 = type metadata accessor for Logger();
  *(v0 + 88) = sub_1883FDE5C(v18, qword_1EA90E888);

  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = sub_1883F9984();
    v22 = sub_1883FE540();
    v41 = v22;
    *v21 = 136315138;
    *(v21 + 4) = sub_1883FF074(OBJC_IVAR____TtCC8CloudKit17ChunkStreamHandleP33_8C09B02C3959D7B1EC6CDDBFBA6DF63011ChunkReader_signature, v41);
    _os_log_impl(&dword_1883EA000, v19, v20, "chunk %s download in-progress, waiting", v21, 0xCu);
    sub_1883FE944(v22);
    sub_1883F7B60();
    sub_1883F7B60();
  }

  v23 = swift_task_alloc();
  *(v0 + 96) = v23;
  sub_18844E6FC(&qword_1EA90E3D0, &qword_1886F75C0);
  *v23 = v0;
  v23[1] = sub_188458D20;
LABEL_22:
  sub_1883F7E58();

  return MEMORY[0x1EEE6DA10](v32, v33, v34, v35, v36);
}

uint64_t sub_188458D20()
{
  sub_1883F78E0();
  v2 = *v1;
  sub_1883F78D4();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 104) = v0;

  v5 = *(v2 + 64);
  if (v0)
  {
    v6 = sub_18845917C;
  }

  else
  {
    v6 = sub_188458E44;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

void sub_188458E44()
{
  v1 = v0[5];
  v2 = v0[4];
  Data.subdata(in:)();
  sub_188423CCC(v2, v1);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[10];
  if (v5)
  {
    v7 = v0[8];
    v8 = sub_1883F9984();
    v9 = sub_1883FE540();
    v12 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_1883FE340(*(v7 + OBJC_IVAR____TtCC8CloudKit17ChunkStreamHandleP33_8C09B02C3959D7B1EC6CDDBFBA6DF63011ChunkReader_signature), *(v7 + OBJC_IVAR____TtCC8CloudKit17ChunkStreamHandleP33_8C09B02C3959D7B1EC6CDDBFBA6DF63011ChunkReader_signature + 8), &v12);
    _os_log_impl(&dword_1883EA000, v3, v4, "chunk %s download in-progress, done waiting", v8, 0xCu);
    sub_1883FE944(v9);
    sub_1883F7B60();
    sub_1883F7B60();
  }

  sub_18845B048(v6);

  sub_1883F7904();
  sub_1883F7E58();

  __asm { BRAA            X3, X16 }
}

uint64_t sub_188458FAC()
{
  sub_1883F78E0();
  v2 = *v1;
  sub_1883F78D4();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 128) = v0;

  v5 = *(v2 + 64);
  if (v0)
  {
    v6 = sub_1884591E4;
  }

  else
  {
    v6 = sub_1884590D0;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t sub_1884590D0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = Data.subdata(in:)();
  v5 = v4;

  sub_188423CCC(v1, v2);

  sub_1883F7904();

  return v6(v3, v5);
}

uint64_t sub_18845917C()
{
  sub_18845B048(*(v0 + 80));

  sub_1883F816C();

  return v1();
}

uint64_t sub_1884591E4()
{

  sub_1883F816C();

  return v0();
}

uint64_t sub_18845924C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a1;
  v4[5] = a4;
  v6 = type metadata accessor for URLRequest();
  v4[6] = v6;
  v4[7] = *(v6 - 8);
  v4[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_188459310, a4, 0);
}

uint64_t sub_188459310()
{
  v13 = v0;
  if (qword_1EA90CC18 != -1)
  {
    sub_1883F7138(&qword_1EA90CC18);
  }

  v1 = type metadata accessor for Logger();
  sub_1883FDE5C(v1, qword_1EA90E888);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[5];
    v5 = sub_1883F9984();
    v6 = sub_1883FE540();
    v12 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_1883FE340(*(v4 + OBJC_IVAR____TtCC8CloudKit17ChunkStreamHandleP33_8C09B02C3959D7B1EC6CDDBFBA6DF63011ChunkReader_signature), *(v4 + OBJC_IVAR____TtCC8CloudKit17ChunkStreamHandleP33_8C09B02C3959D7B1EC6CDDBFBA6DF63011ChunkReader_signature + 8), &v12);
    _os_log_impl(&dword_1883EA000, v2, v3, "chunk %s, download starting", v5, 0xCu);
    sub_1883FE944(v6);
    sub_1883F7B60();
    sub_1883F7B60();
  }

  sub_188457E80();
  type metadata accessor for AssetStreamHandle();
  v7 = sub_18844F690();
  v0[9] = v7;
  v8 = [objc_opt_self() sharedManager];
  v0[10] = v8;
  if (v8)
  {
    v10 = swift_task_alloc();
    v0[11] = v10;
    *v10 = v0;
    v10[1] = sub_188459500;
    v8 = v0[8];
    v9 = v7;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x1EEDF0D18](v8, v9);
}

uint64_t sub_188459500()
{
  sub_1883F78E0();
  v2 = *v1;
  sub_1883F78D4();
  *v4 = v3;
  v5 = *v1;
  sub_1883F78D4();
  *v6 = v5;
  v9[12] = v7;
  v9[13] = v8;
  v9[14] = v10;
  v9[15] = v0;

  v11 = *(v2 + 80);
  v12 = *(v2 + 40);

  if (v0)
  {
    v13 = sub_188459970;
  }

  else
  {
    v13 = sub_188459648;
  }

  return MEMORY[0x1EEE6DFA0](v13, v12, 0);
}

uint64_t sub_188459648()
{
  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  if (!v1 || [v1 statusCode] != 200)
  {
    v9 = v0[13];
    v10 = v0[14];
    v11 = v0[12];
    v12 = v0[9];
    v34 = v0[8];
    v13 = v0[6];
    v14 = v0[7];
    v15 = v0[5];
    v16 = *(v15 + OBJC_IVAR____TtCC8CloudKit17ChunkStreamHandleP33_8C09B02C3959D7B1EC6CDDBFBA6DF63011ChunkReader_cacheState);
    *(v15 + OBJC_IVAR____TtCC8CloudKit17ChunkStreamHandleP33_8C09B02C3959D7B1EC6CDDBFBA6DF63011ChunkReader_cacheState) = 0;
    sub_18845B048(v16);
    type metadata accessor for CKError(0);
    v0[3] = 4;
    sub_188498E9C(MEMORY[0x1E69E7CC0]);
    sub_18845AE64(&qword_1EA90CAE0, type metadata accessor for CKError, &unk_1886F6978);
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();

    sub_188423CCC(v11, v9);
    (*(v14 + 8))(v34, v13);
    goto LABEL_6;
  }

  v2 = v0[15];
  v3 = sub_188457494(v0[12], v0[13]);
  if (v2)
  {
    v5 = v0[13];
    v6 = v0[14];
    v7 = v0[12];
    v8 = v0[9];
    (*(v0[7] + 8))(v0[8], v0[6]);

    sub_188423CCC(v7, v5);
LABEL_6:

    sub_1883F816C();
    goto LABEL_7;
  }

  v19 = v3;
  v20 = v4;
  if ((sub_18845759C(v3, v4) & 1) == 0)
  {
    v25 = v0[13];
    v26 = v0[14];
    v27 = v0[12];
    v28 = v0[9];
    v29 = v0[7];
    v33 = v0[6];
    v35 = v0[8];
    sub_18845AD68();
    swift_allocError();
    *v30 = 1;
    swift_willThrow();

    sub_188423CCC(v19, v20);
    sub_188423CCC(v27, v25);
    (*(v29 + 8))(v35, v33);
    goto LABEL_6;
  }

  sub_188458508(v19, v20);
  v21 = v0[13];
  v22 = v0[14];
  v23 = v0[12];
  v24 = v0[9];
  v36 = v0[5];
  (*(v0[7] + 8))(v0[8], v0[6]);

  sub_188423CCC(v23, v21);
  v31 = *(v36 + OBJC_IVAR____TtCC8CloudKit17ChunkStreamHandleP33_8C09B02C3959D7B1EC6CDDBFBA6DF63011ChunkReader_cacheState);
  *(v36 + OBJC_IVAR____TtCC8CloudKit17ChunkStreamHandleP33_8C09B02C3959D7B1EC6CDDBFBA6DF63011ChunkReader_cacheState) = 1;
  sub_18845B048(v31);
  v32 = v0[4];
  *v32 = v19;
  v32[1] = v20;

  sub_1883F816C();
LABEL_7:

  return v17();
}

uint64_t sub_188459970()
{
  sub_1883F78E0();
  v1 = *(v0 + 64);
  v2 = *(v0 + 48);
  v3 = *(v0 + 56);

  (*(v3 + 8))(v1, v2);

  sub_1883F816C();

  return v4();
}

uint64_t sub_1884599F8()
{
  v1 = v0;
  v18[1] = *MEMORY[0x1E69E9840];
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_opt_self() defaultManager];
  v7 = OBJC_IVAR____TtCC8CloudKit17ChunkStreamHandleP33_8C09B02C3959D7B1EC6CDDBFBA6DF63011ChunkReader_cacheFile;
  (*(v3 + 16))(v5, v1 + OBJC_IVAR____TtCC8CloudKit17ChunkStreamHandleP33_8C09B02C3959D7B1EC6CDDBFBA6DF63011ChunkReader_cacheFile, v2);
  URL._bridgeToObjectiveC()(v8);
  v10 = v9;
  v11 = *(v3 + 8);
  v11(v5, v2);
  v18[0] = 0;
  v12 = [v6 removeItemAtURL:v10 error:v18];

  if (v12)
  {
    v13 = v18[0];
  }

  else
  {
    v14 = v18[0];
    v15 = _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  v11((v1 + OBJC_IVAR____TtCC8CloudKit17ChunkStreamHandleP33_8C09B02C3959D7B1EC6CDDBFBA6DF63011ChunkReader_url), v2);

  sub_188423CCC(*(v1 + OBJC_IVAR____TtCC8CloudKit17ChunkStreamHandleP33_8C09B02C3959D7B1EC6CDDBFBA6DF63011ChunkReader_key), *(v1 + OBJC_IVAR____TtCC8CloudKit17ChunkStreamHandleP33_8C09B02C3959D7B1EC6CDDBFBA6DF63011ChunkReader_key + 8));
  v11((v1 + v7), v2);
  sub_18845B048(*(v1 + OBJC_IVAR____TtCC8CloudKit17ChunkStreamHandleP33_8C09B02C3959D7B1EC6CDDBFBA6DF63011ChunkReader_cacheState));
  swift_defaultActor_destroy();
  return v1;
}

uint64_t sub_188459C24()
{
  v0 = sub_1884599F8();

  return MEMORY[0x1EEE6DEF0](v0);
}

void *sub_188459C94(void *a1)
{
  ObjectType = swift_getObjectType();
  v2 = type metadata accessor for URL();
  sub_1883F70DC();
  v36 = v3;
  MEMORY[0x1EEE9AC00](v4);
  v6 = v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v33 - v8;
  v38 = sub_18844E6FC(&qword_1EA90D338, &qword_1886F75D8);
  sub_1883F70DC();
  MEMORY[0x1EEE9AC00](v10);
  v12 = v33 - v11;
  sub_188400B68(a1, a1[3]);
  sub_18845ADBC();
  v37 = v12;
  v13 = v39;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v13)
  {
    sub_1883FE944(a1);
    v32 = v40;
    swift_deallocPartialClassInstance();
  }

  else
  {
    v35 = v6;
    v39 = a1;
    LOBYTE(v43) = 0;
    sub_1883F9130();
    sub_18845AE64(v14, v15, MEMORY[0x1E6968FD0]);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v17 = *(v36 + 32);
    v18 = v40;
    v34 = OBJC_IVAR____TtC8CloudKit17ChunkStreamHandle_downloadURL;
    v17(v40 + OBJC_IVAR____TtC8CloudKit17ChunkStreamHandle_downloadURL, v9, v2);
    v44 = 1;
    sub_188424048();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v19 = &v18[OBJC_IVAR____TtC8CloudKit17ChunkStreamHandle_key];
    *&v18[OBJC_IVAR____TtC8CloudKit17ChunkStreamHandle_key] = v43;
    LOBYTE(v43) = 2;
    v33[1] = 0;
    v20 = KeyedDecodingContainer.decode(_:forKey:)();
    v21 = v39;
    v22 = v18;
    v23 = &v18[OBJC_IVAR____TtC8CloudKit17ChunkStreamHandle_signature];
    *v23 = v20;
    v23[1] = v24;
    sub_18844E6FC(&qword_1EA90D308, &unk_1886F75A0);
    v44 = 3;
    sub_18845B09C(&qword_1EA90D348, MEMORY[0x1E69E6560], MEMORY[0x1E69E66E0]);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *&v22[OBJC_IVAR____TtC8CloudKit17ChunkStreamHandle_range] = v43;
    (*(v36 + 16))(v35, &v22[v34], v2);
    v25 = v23[1];
    v36 = *v23;
    v26 = v22;
    v27 = *v19;
    v28 = v19[1];
    type metadata accessor for ChunkStreamHandle.ChunkReader(0);
    swift_allocObject();

    sub_188423C74(v27, v28);
    v29 = sub_1884571B4(v35, v36, v25, v27, v28);
    v30 = sub_1883F8714();
    v31(v30);
    *&v26[OBJC_IVAR____TtC8CloudKit17ChunkStreamHandle_chunkReader] = v29;
    v42.receiver = v26;
    v42.super_class = ObjectType;
    v32 = objc_msgSendSuper2(&v42, sel_init);
    sub_1883FE944(v21);
  }

  return v32;
}

id sub_18845A1C0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v55 = a5;
  v54 = a4;
  v63 = a3;
  v58 = v5;
  v59 = a2;
  ObjectType = swift_getObjectType();
  v7 = type metadata accessor for URLError.Code();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v8 = type metadata accessor for URLError();
  sub_1883F70DC();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_18844E6FC(&qword_1EA90D240, &qword_1886F70B0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v48 - v15;
  v17 = type metadata accessor for URL();
  sub_1883F70DC();
  v19 = v18;
  MEMORY[0x1EEE9AC00](v20);
  v53 = &v48 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v48 - v23;
  URL.init(string:)();
  if (sub_1883F971C(v16, 1, v17) == 1)
  {
    sub_18845B15C(a1);
    sub_18845B1B0(v16, &qword_1EA90D240, &qword_1886F70B0);
    static URLError.Code.badURL.getter();
    sub_188498E9C(MEMORY[0x1E69E7CC0]);
    sub_18845AE64(&qword_1EA90D350, MEMORY[0x1E6969C20], MEMORY[0x1E6969C18]);
    _BridgedStoredNSError.init(_:userInfo:)();
    URLError._nsError.getter();
    v26 = *(v10 + 8);
    v25 = (v10 + 8);
    v26(v13, v8);
    swift_willThrow();
    sub_188423CCC(v59, v63);
  }

  else
  {
    v27 = v59;
    v25 = v63;
    (*(v19 + 32))(v24, v16, v17);
    v28 = v56;
    v29 = sub_188516178(*a1, *(a1 + 8));
    if (!v28)
    {
      v51 = v30;
      v52 = v29;
      v32 = sub_188456028(v29, v30, v27, v25);
      v56 = v33;
      v34 = *(v19 + 16);
      v48 = OBJC_IVAR____TtC8CloudKit17ChunkStreamHandle_downloadURL;
      v49 = v34;
      v35 = v58;
      v34(&v58[OBJC_IVAR____TtC8CloudKit17ChunkStreamHandle_downloadURL], v24, v17);
      v36 = &v35[OBJC_IVAR____TtC8CloudKit17ChunkStreamHandle_key];
      v37 = v32;
      v50 = v32;
      v38 = v56;
      *v36 = v32;
      v36[1] = v38;
      v39 = &v35[OBJC_IVAR____TtC8CloudKit17ChunkStreamHandle_range];
      v40 = v55;
      *v39 = v54;
      v39[1] = v40;
      v62 = *(a1 + 16);
      v41 = &v35[OBJC_IVAR____TtC8CloudKit17ChunkStreamHandle_signature];
      *&v35[OBJC_IVAR____TtC8CloudKit17ChunkStreamHandle_signature] = v62;
      sub_188423C74(v37, v38);
      sub_18845B204(&v62, v61);
      sub_18845B15C(a1);
      v42 = v53;
      v49(v53, &v35[v48], v17);
      v43 = *v41;
      v44 = v41[1];
      v55 = v43;
      v45 = *v36;
      v46 = v36[1];
      type metadata accessor for ChunkStreamHandle.ChunkReader(0);
      v54 = swift_allocObject();

      sub_188423C74(v45, v46);
      v47 = sub_1884571B4(v42, v55, v44, v45, v46);
      sub_188423CCC(v52, v51);
      sub_188423CCC(v50, v56);
      (*(v19 + 8))(v24, v17);
      *&v35[OBJC_IVAR____TtC8CloudKit17ChunkStreamHandle_chunkReader] = v47;
      v60.receiver = v35;
      v60.super_class = ObjectType;
      v25 = objc_msgSendSuper2(&v60, sel_init);
      sub_188423CCC(v59, v63);
      return v25;
    }

    sub_188423CCC(v27, v25);
    sub_18845B15C(a1);
    (*(v19 + 8))(v24, v17);
  }

  swift_deallocPartialClassInstance();
  return v25;
}

uint64_t sub_18845A7D0(uint64_t a1)
{
  result = type metadata accessor for URL();
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

uint64_t sub_18845A8B4(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_18845A8EC(uint64_t a1)
{
  result = type metadata accessor for URL();
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

uint64_t sub_18845A9A8(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_18845A9CC(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 8))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_18845AA20(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void *sub_18845AA7C(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

uint64_t sub_18845AAAC(void *a1)
{
  v3 = v1;
  v5 = sub_18844E6FC(&qword_1EA90D2F0, &qword_1886F7598);
  sub_1883F70DC();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v15 - v9;
  sub_188400B68(a1, a1[3]);
  sub_18845ADBC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v17) = 0;
  type metadata accessor for URL();
  sub_1883F9130();
  sub_18845AE64(v11, v12, MEMORY[0x1E6968FB8]);
  sub_1883F9550();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v13 = *(v3 + OBJC_IVAR____TtC8CloudKit17ChunkStreamHandle_key + 8);
    *&v17 = *(v3 + OBJC_IVAR____TtC8CloudKit17ChunkStreamHandle_key);
    *(&v17 + 1) = v13;
    v16 = 1;
    sub_188423C74(v17, v13);
    sub_18845AE10();
    sub_1883F9550();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_188423CCC(v17, *(&v17 + 1));
    LOBYTE(v17) = 2;
    sub_1883F9550();
    KeyedEncodingContainer.encode(_:forKey:)();
    v17 = *(v3 + OBJC_IVAR____TtC8CloudKit17ChunkStreamHandle_range);
    v16 = 3;
    sub_18844E6FC(&qword_1EA90D308, &unk_1886F75A0);
    sub_18845B09C(&qword_1EA90D310, MEMORY[0x1E69E6538], MEMORY[0x1E69E66B0]);
    sub_1883F9550();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v7 + 8))(v10, v5);
}

void *sub_18845AD18@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_188459C50(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_18845AD68()
{
  result = qword_1EA90D2E8;
  if (!qword_1EA90D2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA90D2E8);
  }

  return result;
}

unint64_t sub_18845ADBC()
{
  result = qword_1EA90D2F8;
  if (!qword_1EA90D2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA90D2F8);
  }

  return result;
}

unint64_t sub_18845AE10()
{
  result = qword_1EA90C660;
  if (!qword_1EA90C660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA90C660);
  }

  return result;
}

uint64_t sub_18845AE64(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_18845AEAC()
{
  sub_1883F78E0();
  v3 = v2;
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_18845AF5C;

  return sub_18845924C(v3, v4, v5, v6);
}

uint64_t sub_18845AF5C()
{
  v1 = *v0;
  sub_1883F78D4();
  *v2 = v1;

  sub_1883F816C();

  return v3();
}

unint64_t sub_18845B048(unint64_t result)
{
  if (result >= 2)
  {
  }

  return result;
}

unint64_t sub_18845B058()
{
  result = qword_1EA90D320;
  if (!qword_1EA90D320)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EA90D320);
  }

  return result;
}

uint64_t sub_18845B09C(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_18844E798(&qword_1EA90D308, &unk_1886F75A0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_18845B108()
{
  result = qword_1EA90C8E0[0];
  if (!qword_1EA90C8E0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EA90C8E0);
  }

  return result;
}

uint64_t sub_18845B1B0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  sub_18844E6FC(a2, a3);
  sub_1883F7158();
  (*(v4 + 8))(a1);
  return a1;
}

_BYTE *storeEnumTagSinglePayload for ChunkStreamHandle.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
        break;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ChunkStreamHandle.StreamError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
        break;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_18845B41C()
{
  result = qword_1EA90D358;
  if (!qword_1EA90D358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA90D358);
  }

  return result;
}

unint64_t sub_18845B474()
{
  result = qword_1EA90D360;
  if (!qword_1EA90D360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA90D360);
  }

  return result;
}

unint64_t sub_18845B4CC()
{
  result = qword_1EA90D368;
  if (!qword_1EA90D368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA90D368);
  }

  return result;
}

unint64_t sub_18845B524()
{
  result = qword_1EA90D370;
  if (!qword_1EA90D370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA90D370);
  }

  return result;
}

id sub_18845B578(id a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10, __int128 a11, __int128 a12, uint64_t a13, uint64_t a14)
{
  v32 = a7;
  v33 = a8;
  v31 = a6;
  v29 = a10;
  v30 = a9;
  v27 = a12;
  v28 = a11;
  v15 = type metadata accessor for AssetStreamHandle();
  sub_1883F70DC();
  v25 = v16;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v25 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v35;
  static AssetStreamHandle.makeAssetStreamHandle(partition:owner:accessToken:requestorID:signature:referenceSignature:size:assetKey:filenameExtension:applicationID:)();
  if (!v20)
  {
    v21 = v26;
    v22 = objc_allocWithZone(v26);
    v23 = v25;
    (*(v25 + 16))(v22 + OBJC_IVAR____TtC8CloudKit28CloudAssetsAssetStreamHandle_assetStreamHandle, v19, v15);
    v34.receiver = v22;
    v34.super_class = v21;
    a1 = objc_msgSendSuper2(&v34, sel_init);
    (*(v23 + 8))(v19, v15);
  }

  return a1;
}

void *sub_18845BD50()
{
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for AssetStreamHandle();
  sub_1883F70DC();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1883F716C();
  sub_188423C74(v9, v10);
  sub_1883F716C();
  AssetStreamHandle.init(from:)();
  if (v1)
  {
    v11 = sub_1883F716C();
    sub_188423CCC(v11, v12);
    swift_deallocPartialClassInstance();
  }

  else
  {
    (*(v5 + 32))(v0 + OBJC_IVAR____TtC8CloudKit28CloudAssetsAssetStreamHandle_assetStreamHandle, v8, v3);
    v16.receiver = v0;
    v16.super_class = ObjectType;
    v0 = objc_msgSendSuper2(&v16, sel_init);
    v13 = sub_1883F716C();
    sub_188423CCC(v13, v14);
  }

  return v0;
}

uint64_t type metadata accessor for CloudAssetsAssetStreamHandle(uint64_t a1)
{
  result = qword_1EA90C2C0;
  if (!qword_1EA90C2C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_18845C170(uint64_t a1)
{
  result = type metadata accessor for AssetStreamHandle();
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

uint64_t sub_18845C260(uint64_t a1)
{
  v2 = sub_18844E6FC(&qword_1EA90D240, &qword_1886F70B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void CKContainer.fetchAllLongLivedOperationIDs(completionHandler:)(uint64_t a1, uint64_t a2)
{
  v4[4] = a1;
  v4[5] = a2;
  sub_1883F7188();
  v4[1] = 1107296256;
  v4[2] = sub_18845C364;
  v4[3] = &unk_1EFA263D0;
  v3 = _Block_copy(v4);

  [v2 fetchAllLongLivedOperationIDsWithCompletionHandler_];
  _Block_release(v3);
}

uint64_t sub_18845C364(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  if (a2)
  {
    v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v5 = 0;
  }

  v6 = a3;
  v4(v5, a3);
}

uint64_t CKContainer.allLongLivedOperationIDs()()
{
  sub_1883F7120();
  v1[19] = v0;
  v2 = sub_18844E6FC(&qword_1EA90D378, &qword_1886F77F0);
  v1[20] = v2;
  v1[21] = *(v2 - 8);
  v1[22] = swift_task_alloc();
  sub_1883F7FD8();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_18845C4C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v15 = v14;
  v16 = v14;
  v17 = v14 + 2;
  v18 = v14 + 10;
  v19 = v14 + 18;
  v21 = v14[21];
  v20 = v14[22];
  v22 = v14[20];
  v32 = v15[19];
  v15[2] = v16;
  v15[7] = v19;
  v15[3] = sub_18845C68C;
  swift_continuation_init();
  v15[17] = v22;
  v23 = sub_188403664(v15 + 14);
  sub_18844E6FC(&qword_1EA90D330, &qword_1886F75D0);
  sub_18844E6FC(&qword_1EA90E3D0, &qword_1886F75C0);
  CheckedContinuation.init(continuation:function:)();
  (*(v21 + 32))(v23, v20, v22);
  v15[10] = MEMORY[0x1E69E9820];
  v15[11] = 1107296256;
  v15[12] = sub_18845C85C;
  v15[13] = &unk_1EFA263F8;
  [v32 fetchAllLongLivedOperationIDsWithCompletionHandler_];
  (*(v21 + 8))(v23, v22);

  return MEMORY[0x1EEE6DEC8](v17, v24, v25, v26, v27, v28, v29, v30, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_18845C68C()
{
  sub_1883F7120();
  sub_1883F78EC();
  sub_1883F8D80();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 184) = *(v3 + 48);
  sub_1883F7FD8();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_18845C788()
{
  sub_1883F7120();
  v1 = *(v0 + 144);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_18845C7F0()
{
  sub_1883F78E0();
  swift_willThrow();

  sub_1883F816C();

  return v0();
}

void sub_18845C85C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_188400B68((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v6 = a3;
    sub_1884E09BC();
  }

  else
  {
    v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    sub_1884E0B24(v4, v5);
  }
}

void CKContainer.fetchLongLivedOperation(withID:completionHandler:)()
{
  sub_1883FDE94();
  v3 = MEMORY[0x18CFD5010]();
  v6 = v2;
  v7 = v0;
  sub_1883F7188();
  v5[1] = 1107296256;
  v5[2] = sub_18845C9D8;
  v5[3] = &unk_1EFA26420;
  v4 = _Block_copy(v5);

  [v1 fetchLongLivedOperationWithID:v3 completionHandler:v4];
  _Block_release(v4);
}

void sub_18845C9D8(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

uint64_t CKContainer.longLivedOperation(for:)()
{
  sub_1883F7120();
  v1[20] = v2;
  v1[21] = v0;
  v1[19] = v3;
  v4 = sub_18844E6FC(&qword_1EA90D380, &qword_1886F7800);
  v1[22] = v4;
  v1[23] = *(v4 - 8);
  v1[24] = swift_task_alloc();
  sub_1883F7FD8();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_18845CB2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v15 = v14;
  v16 = v14 + 2;
  v17 = v14 + 18;
  v18 = v14[23];
  v19 = v14[24];
  v20 = v14[22];
  v31 = v15[21];
  v21 = MEMORY[0x18CFD5010](v15[19], v15[20], a3, a4, a5, a6, a7, a8);
  v15[25] = v21;
  v15[2] = v15;
  v15[7] = v17;
  v15[3] = sub_18845CD08;
  swift_continuation_init();
  v15[17] = v20;
  v22 = sub_188403664(v15 + 14);
  sub_18844E6FC(&qword_1EA90D388, &qword_1886F7808);
  sub_18844E6FC(&qword_1EA90E3D0, &qword_1886F75C0);
  CheckedContinuation.init(continuation:function:)();
  (*(v18 + 32))(v22, v19, v20);
  v15[10] = MEMORY[0x1E69E9820];
  v15[11] = 1107296256;
  v15[12] = sub_18845CEE8;
  v15[13] = &unk_1EFA26448;
  [v31 fetchLongLivedOperationWithID:v21 completionHandler:?];
  (*(v18 + 8))(v22, v20);

  return MEMORY[0x1EEE6DEC8](v16, v23, v24, v25, v26, v27, v28, v29, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_18845CD08()
{
  sub_1883F7120();
  sub_1883F78EC();
  sub_1883F8D80();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 208) = *(v3 + 48);
  sub_1883F7FD8();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_18845CE04()
{
  sub_1883F7120();
  v1 = *(v0 + 144);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_18845CE74()
{
  sub_1883F78E0();
  v1 = *(v0 + 200);
  swift_willThrow();

  sub_1883F816C();

  return v2();
}

void sub_18845CEE8(uint64_t a1, void *a2, void *a3)
{
  sub_188400B68((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v6 = a3;
    sub_1884E09E4();
  }

  else
  {
    v5 = a2;

    sub_1884E0B38();
  }
}

void CKContainer.configuredWith<A>(configuration:group:body:)(void *a1, void *a2, void (*a3)(void))
{
  v4 = v3;
  swift_getObjectType();
  sub_1883F4C5C(0, &qword_1EA90CAB0, off_1E70BA0C8);
  v8 = a2;
  v9 = a1;
  v10 = sub_1884296E8(a1, a2);
  v11 = [v4 implementation];
  v12 = v10;
  v13 = sub_1884276B8(v11, v10);
  a3();
  sub_18845D450(v13, nullsub_4);
}

uint64_t CKContainer.configuredWith<A>(configuration:group:body:)()
{
  sub_1883F7120();
  v1[6] = v2;
  v1[7] = v0;
  v1[4] = v3;
  v1[5] = v4;
  v1[2] = v5;
  v1[3] = v6;
  v1[8] = swift_getObjectType();
  sub_1883F7FD8();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_18845D110()
{
  v1 = v0[7];
  v3 = v0[4];
  v2 = v0[5];
  v4 = v0[3];
  sub_1883F4C5C(0, &qword_1EA90CAB0, off_1E70BA0C8);
  v5 = v3;
  v6 = v4;
  v7 = sub_1884296E8(v4, v3);
  v0[9] = v7;
  v8 = [v1 implementation];
  v9 = v7;
  v10 = sub_1884276B8(v8, v7);
  v0[10] = v10;
  v14 = (v2 + *v2);
  v11 = swift_task_alloc();
  v0[11] = v11;
  *v11 = v0;
  v11[1] = sub_18845D298;
  v12 = v0[2];

  return v14(v12, v10);
}

uint64_t sub_18845D298()
{
  sub_1883F7120();
  sub_1883F78EC();
  sub_1883F8D80();
  *v3 = v2;
  v4 = *v1;
  sub_1883F7110();
  *v5 = v4;
  *(v6 + 96) = v0;

  sub_1883F7FD8();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_18845D390()
{
  sub_1883F7120();
  sub_1883F819C();

  sub_1883F816C();

  return v2();
}

uint64_t sub_18845D3F0()
{
  sub_1883F7120();
  sub_1883F819C();

  sub_1883F816C();

  return v2();
}

uint64_t sub_18845D450(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v7 = a1;
  return sub_18849C900(&v7, a2, 0, ObjectType, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], v5);
}

uint64_t CKContainer.userIdentities(forEmailAddresses:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return sub_1883F7178();
}

uint64_t sub_18845D510()
{
  sub_1883F7120();
  v1 = *(v0 + 24);
  sub_1884036E8([v1 implementation]);
  sub_1883F856C([v1 convenienceConfiguration]);
  v2 = swift_task_alloc();
  v3 = sub_1883F8B08(v2);
  *v3 = v4;
  v5 = sub_1883F9B98(v3);

  return sub_18845D6F8(v5, v6, v7);
}

uint64_t sub_18845D5CC()
{
  sub_1883F78E0();
  sub_1883F8740();
  v3 = v2;
  sub_1883F7B78();
  *v4 = v3;
  v5 = *v1;
  sub_1883F7110();
  *v6 = v5;
  *(v3 + 56) = v0;

  if (v0)
  {
    sub_1883F7FD8();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    v10 = *(v3 + 32);

    v11 = sub_1883FA044();

    return v12(v11);
  }
}

uint64_t sub_18845D6F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  return sub_1883F7178();
}

uint64_t sub_18845D710()
{
  sub_1883F78E0();
  v1 = *(v0 + 48);
  v2 = sub_1883FDD2C();
  sub_1883F8724(v2);
  v3 = swift_task_alloc();
  sub_1883F9758(v3);
  sub_18844E6FC(&qword_1EA90D488, &qword_1886F7980);
  sub_1883FE558();
  *v1 = v4;
  v1[1] = sub_18845D7E4;
  sub_1883F9148();
  sub_1883F7E74();

  return MEMORY[0x1EEE6DE38](v5, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_18845D7E4()
{
  sub_1883F7120();
  sub_1883F78EC();
  v3 = v2;
  sub_1883F7B78();
  *v4 = v3;
  v5 = *v1;
  sub_1883F7110();
  *v6 = v5;
  *(v3 + 72) = v0;

  if (!v0)
  {
  }

  sub_1883F7FD8();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t CKContainer.userIdentities(forPhoneNumbers:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return sub_1883F7178();
}

uint64_t sub_18845D9F4()
{
  sub_1883F7120();
  v1 = *(v0 + 24);
  sub_1884036E8([v1 implementation]);
  sub_1883F856C([v1 convenienceConfiguration]);
  v2 = swift_task_alloc();
  v3 = sub_1883F8B08(v2);
  *v3 = v4;
  v5 = sub_1883F9B98(v3);

  return sub_18845DC3C(v5, v6, v7);
}

uint64_t sub_18845DAB0()
{
  sub_1883F78E0();
  sub_1883F8740();
  v3 = v2;
  sub_1883F7B78();
  *v4 = v3;
  v5 = *v1;
  sub_1883F7110();
  *v6 = v5;
  *(v3 + 56) = v0;

  if (v0)
  {
    sub_1883F7FD8();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    v10 = *(v3 + 32);

    v11 = sub_1883FA044();

    return v12(v11);
  }
}

uint64_t sub_18845DBDC()
{
  sub_1883F7120();
  v1 = *(v0 + 32);

  sub_1883F816C();

  return v2();
}

uint64_t sub_18845DC3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  return sub_1883F7178();
}

uint64_t sub_18845DC54()
{
  sub_1883F78E0();
  v1 = *(v0 + 48);
  v2 = sub_1883FDD2C();
  sub_1883F8724(v2);
  v3 = swift_task_alloc();
  sub_1883F9758(v3);
  sub_18844E6FC(&qword_1EA90D488, &qword_1886F7980);
  sub_1883FE558();
  *v1 = v4;
  v1[1] = sub_18845DD28;
  sub_1883F9148();
  sub_1883F7E74();

  return MEMORY[0x1EEE6DE38](v5, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_18845DD28()
{
  sub_1883F7120();
  sub_1883F78EC();
  v3 = v2;
  sub_1883F7B78();
  *v4 = v3;
  v5 = *v1;
  sub_1883F7110();
  *v6 = v5;
  *(v3 + 72) = v0;

  if (!v0)
  {
  }

  sub_1883F7FD8();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_18845DE28()
{
  sub_1883F7120();

  sub_1883F816C();

  return v0();
}

void sub_18845DEB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = [v6 implementation];
  v8 = [v6 convenienceConfiguration];
  sub_18845E680();
}

uint64_t CKContainer.userIdentities(forUserRecordIDs:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return sub_1883F7178();
}

uint64_t sub_18845DF98()
{
  sub_1883F7120();
  v1 = *(v0 + 24);
  sub_1884036E8([v1 implementation]);
  sub_1883F856C([v1 convenienceConfiguration]);
  v2 = swift_task_alloc();
  v3 = sub_1883F8B08(v2);
  *v3 = v4;
  v5 = sub_1883F9B98(v3);

  return sub_18845E054(v5, v6, v7);
}

uint64_t sub_18845E054(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  return sub_1883F7178();
}

uint64_t sub_18845E06C()
{
  sub_1883F78E0();
  v1 = *(v0 + 48);
  v2 = sub_1883FDD2C();
  sub_1883F8724(v2);
  v3 = swift_task_alloc();
  sub_1883F9758(v3);
  sub_18844E6FC(&qword_1EA90D460, &qword_1886F7968);
  sub_1883FE558();
  *v1 = v4;
  v1[1] = sub_18845D7E4;
  sub_1883F9148();
  sub_1883F7E74();

  return MEMORY[0x1EEE6DE38](v5, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t CKContainer.shareParticipants(forEmailAddresses:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return sub_1883F7178();
}

uint64_t sub_18845E190()
{
  sub_1883F7120();
  v1 = *(v0 + 24);
  sub_1884036E8([v1 implementation]);
  sub_1883F856C([v1 convenienceConfiguration]);
  v2 = swift_task_alloc();
  v3 = sub_1883F8B08(v2);
  *v3 = v4;
  v5 = sub_1883F9B98(v3);

  return sub_18845E24C(v5, v6, v7);
}

uint64_t sub_18845E24C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  return sub_1883F7178();
}

uint64_t sub_18845E264()
{
  sub_1883F78E0();
  v1 = *(v0 + 48);
  v2 = sub_1883FDD2C();
  sub_1883F8724(v2);
  v3 = swift_task_alloc();
  sub_1883F9758(v3);
  sub_18844E6FC(&qword_1EA90D448, &qword_1886F7950);
  sub_1883FE558();
  *v1 = v4;
  v1[1] = sub_18845D7E4;
  sub_1883F9148();
  sub_1883F7E74();

  return MEMORY[0x1EEE6DE38](v5, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_18845E374(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void (*a23)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  sub_1883F9160();
  v41 = v23;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v34 = objc_opt_self();
  isa = Array._bridgeToObjectiveC()().super.isa;
  v36 = [v34 *v25];

  sub_1883F4C5C(0, &qword_1EA90D428, off_1E70BA990);
  v37 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v38 = swift_allocObject();
  *(v38 + 16) = v29;
  *(v38 + 24) = v27;

  a23(v37, v33, v31, v41, v38);

  sub_1883F8750();
}

uint64_t CKContainer.shareParticipants(forPhoneNumbers:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return sub_1883F7178();
}

uint64_t sub_18845E4A4()
{
  sub_1883F7120();
  v1 = *(v0 + 24);
  sub_1884036E8([v1 implementation]);
  sub_1883F856C([v1 convenienceConfiguration]);
  v2 = swift_task_alloc();
  v3 = sub_1883F8B08(v2);
  *v3 = v4;
  v5 = sub_1883F9B98(v3);

  return sub_18845E560(v5, v6, v7);
}

uint64_t sub_18845E560(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  return sub_1883F7178();
}

uint64_t sub_18845E578()
{
  sub_1883F78E0();
  v1 = *(v0 + 48);
  v2 = sub_1883FDD2C();
  sub_1883F8724(v2);
  v3 = swift_task_alloc();
  sub_1883F9758(v3);
  sub_18844E6FC(&qword_1EA90D448, &qword_1886F7950);
  sub_1883FE558();
  *v1 = v4;
  v1[1] = sub_18845D7E4;
  sub_1883F9148();
  sub_1883F7E74();

  return MEMORY[0x1EEE6DE38](v5, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_18845E680()
{
  sub_1883F9160();
  v18 = v0;
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = objc_opt_self();
  sub_1883F4C5C(0, &qword_1EA90CA70, off_1E70BA618);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v13 = [v11 lookupInfosWithRecordIDs_];

  sub_1883F4C5C(0, &qword_1EA90D428, off_1E70BA990);
  v14 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v15 = swift_allocObject();
  *(v15 + 16) = v6;
  *(v15 + 24) = v4;

  v18(v14, v10, v8, v2, v15);

  sub_1883F8750();
}

uint64_t CKContainer.shareParticipants(forUserRecordIDs:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return sub_1883F7178();
}

uint64_t sub_18845E7C4()
{
  sub_1883F7120();
  v1 = *(v0 + 24);
  sub_1884036E8([v1 implementation]);
  sub_1883F856C([v1 convenienceConfiguration]);
  v2 = swift_task_alloc();
  v3 = sub_1883F8B08(v2);
  *v3 = v4;
  v5 = sub_1883F9B98(v3);

  return sub_18845E880(v5, v6, v7);
}

uint64_t sub_18845E880(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  return sub_1883F7178();
}

uint64_t sub_18845E898()
{
  sub_1883F78E0();
  v1 = *(v0 + 48);
  v2 = sub_1883FDD2C();
  sub_1883F8724(v2);
  v3 = swift_task_alloc();
  sub_1883F9758(v3);
  sub_18844E6FC(&qword_1EA90D430, &qword_1886F7938);
  sub_1883FE558();
  *v1 = v4;
  v1[1] = sub_18845D7E4;
  sub_1883F9148();
  sub_1883F7E74();

  return MEMORY[0x1EEE6DE38](v5, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t CKContainer.shareParticipants(for:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return sub_1883F7178();
}

uint64_t sub_18845E980()
{
  sub_1883F7120();
  v1 = *(v0 + 24);
  sub_1884036E8([v1 implementation]);
  sub_1883F856C([v1 convenienceConfiguration]);
  v2 = swift_task_alloc();
  v3 = sub_1883F8B08(v2);
  *v3 = v4;
  v5 = sub_1883F9B98(v3);

  return sub_18845EA3C(v5, v6, v7);
}

uint64_t sub_18845EA3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  return sub_1883F7178();
}

uint64_t sub_18845EA54()
{
  sub_1883F78E0();
  v1 = *(v0 + 48);
  v2 = sub_1883FDD2C();
  sub_1883F8724(v2);
  v3 = swift_task_alloc();
  sub_1883F9758(v3);
  sub_18844E6FC(&qword_1EA90D410, &qword_1886F7928);
  sub_1883FE558();
  *v1 = v4;
  v1[1] = sub_18845D7E4;
  sub_1883F9148();
  sub_1883F7E74();

  return MEMORY[0x1EEE6DE38](v5, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t CKContainer.fetchShareMetadatas(for:completionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = [v4 implementation];
  v9 = [v4 convenienceConfiguration];
  type metadata accessor for URL();
  sub_1883F4C5C(0, &qword_1EA90D390, off_1E70BA190);
  sub_188461F84();
  v10 = Dictionary.init(dictionaryLiteral:)();
  sub_18845EC28(a1, v10, v4, v9, a2, a3);
}

uint64_t sub_18845EC28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_1883F4C5C(0, &qword_1EA90D408, off_1E70BA320);

  v7 = sub_188462088();
  if (*(a2 + 16))
  {
    sub_188462E54(a2, v7);
  }

  sub_1883F7B88();
  v8 = swift_allocObject();
  *(v8 + 16) = MEMORY[0x1E69E7CC8];

  CKFetchShareMetadataOperation.perShareMetadataResultBlock.setter(sub_188462EF4, v8);
  sub_1883F7E80();
  v9 = swift_allocObject();
  sub_18840AF5C(v9);

  v10 = sub_188405278();
  v12 = CKFetchShareMetadataOperation.fetchShareMetadataResultBlock.setter(v10, v11);
  sub_1883FEC38(v12, sel__scheduleConvenienceOperation_wrappingContainer_convenienceConfiguration_);
}

uint64_t CKContainer.shareMetadatas(for:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return sub_1883F7178();
}

uint64_t sub_18845ED70()
{
  sub_1883F78E0();
  v1 = v0[3];
  v0[4] = [v1 implementation];
  v2 = [v1 convenienceConfiguration];
  v0[5] = v2;
  type metadata accessor for URL();
  sub_1883F4C5C(0, &qword_1EA90D390, off_1E70BA190);
  sub_188461F84();
  v3 = Dictionary.init(dictionaryLiteral:)();
  v0[6] = v3;
  v4 = swift_task_alloc();
  v0[7] = v4;
  *v4 = v0;
  v4[1] = sub_18845EEA0;
  v6 = v0[2];
  v5 = v0[3];

  return sub_18845F03C(v6, v3, v5, v2);
}

uint64_t sub_18845EEA0()
{
  sub_1883F78E0();
  sub_1883F8740();
  v3 = v2;
  sub_1883F7B78();
  *v4 = v3;
  v5 = *v1;
  sub_1883F7110();
  *v6 = v5;
  v3[8] = v0;

  if (v0)
  {
    sub_1883F7FD8();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    v10 = v3[5];
    v11 = v3[4];

    v12 = sub_1883FA044();

    return v13(v12);
  }
}

uint64_t sub_18845EFD4()
{
  sub_1883F7120();
  v1 = *(v0 + 40);
  v2 = *(v0 + 32);

  sub_1883F816C();

  return v3();
}

uint64_t sub_18845F03C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[6] = a4;
  v5[7] = v4;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  return sub_1883F7178();
}

uint64_t sub_18845F058()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v0 + 64) = v4;
  v5 = *(v0 + 24);
  *(v4 + 16) = v1;
  *(v4 + 24) = v5;
  *(v4 + 40) = v3;
  *(v4 + 48) = v2;
  v6 = swift_task_alloc();
  *(v0 + 72) = v6;
  sub_18844E6FC(&qword_1EA90D3F8, &qword_1886F7918);
  sub_1883FE558();
  *v6 = v7;
  v6[1] = sub_18845F168;
  sub_1883F7FD8();
  sub_1883F7E74();

  return MEMORY[0x1EEE6DE38](v8, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t sub_18845F168()
{
  sub_1883F7120();
  sub_1883F78EC();
  v3 = v2;
  sub_1883F7B78();
  *v4 = v3;
  v5 = *v1;
  sub_1883F7110();
  *v6 = v5;
  *(v3 + 80) = v0;

  if (!v0)
  {
  }

  sub_1883F7FD8();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_18845F284()
{
  sub_1883F7120();

  sub_1883F816C();

  return v0();
}

uint64_t CKContainer.shareMetadatas(for:invitationTokensByShareURL:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return sub_1883F7178();
}

uint64_t sub_18845F2F8()
{
  sub_1883F7120();
  v1 = v0[4];
  v0[5] = [v1 implementation];
  v2 = [v1 convenienceConfiguration];
  v0[6] = v2;
  v3 = swift_task_alloc();
  v0[7] = v3;
  *v3 = v0;
  v3[1] = sub_18845F3D8;
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[2];

  return sub_18845F03C(v6, v4, v5, v2);
}

uint64_t sub_18845F3D8()
{
  sub_1883F78E0();
  sub_1883F8740();
  v3 = v2;
  sub_1883F7B78();
  *v4 = v3;
  v5 = *v1;
  sub_1883F7110();
  *v6 = v5;
  *(v3 + 64) = v0;

  if (v0)
  {
    sub_1883F7FD8();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    v10 = *(v3 + 40);

    v11 = sub_1883FA044();

    return v12(v11);
  }
}

uint64_t sub_18845F504()
{
  sub_1883F7120();
  v1 = *(v0 + 40);

  sub_1883F816C();

  return v2();
}

void sub_18845F57C()
{
  sub_1883FDE94();
  v4 = v3;
  v6 = v5;
  v7 = [v1 implementation];
  v8 = [v1 convenienceConfiguration];
  v0(v6, v1, v8, v4, v2);
}

uint64_t sub_18845F62C()
{
  sub_1883FF090();
  sub_1883F4C5C(0, &qword_1EA90D3F0, off_1E70B9F90);

  v0 = sub_188460FB8();
  sub_1883F7B88();
  v1 = swift_allocObject();
  *(v1 + 16) = MEMORY[0x1E69E7CC8];

  CKAcceptSharesOperation.perShareResultBlock.setter(sub_188462DE8, v1);
  sub_1883F7E80();
  v2 = swift_allocObject();
  sub_18840AF5C(v2);

  v3 = sub_188405278();
  v5 = CKAcceptSharesOperation.acceptSharesResultBlock.setter(v3, v4);
  sub_1883FEC38(v5, sel__scheduleConvenienceOperation_wrappingContainer_convenienceConfiguration_);
}

uint64_t CKContainer.accept(_:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return sub_1883F7178();
}

uint64_t sub_18845F764()
{
  sub_1883F7120();
  v1 = *(v0 + 24);
  sub_1884036E8([v1 implementation]);
  sub_1883F856C([v1 convenienceConfiguration]);
  v2 = swift_task_alloc();
  v3 = sub_1883F8B08(v2);
  *v3 = v4;
  v5 = sub_1883F9B98(v3);

  return sub_18845F820(v5, v6, v7);
}

uint64_t sub_18845F820(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  return sub_1883F7178();
}

uint64_t sub_18845F838()
{
  sub_1883F78E0();
  v1 = *(v0 + 48);
  v2 = sub_1883FDD2C();
  sub_1883F8724(v2);
  v3 = swift_task_alloc();
  sub_1883F9758(v3);
  sub_18844E6FC(&qword_1EA90D3E0, &qword_1886F7908);
  sub_1883FE558();
  *v1 = v4;
  v1[1] = sub_18845D7E4;
  sub_1883F9148();
  sub_1883F7E74();

  return MEMORY[0x1EEE6DE38](v5, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_18845F924()
{
  sub_1883FF090();
  sub_1883F4C5C(0, &qword_1EA90D3D0, off_1E70BA160);

  v0 = sub_188460FB8();
  sub_1883F7B88();
  v1 = swift_allocObject();
  *(v1 + 16) = MEMORY[0x1E69E7CC8];

  CKDeclineSharesOperation.perShareResultBlock.setter(sub_188462D74, v1);
  sub_1883F7E80();
  v2 = swift_allocObject();
  sub_18840AF5C(v2);

  v3 = sub_188405278();
  v5 = CKDeclineSharesOperation.declineSharesResultBlock.setter(v3, v4);
  sub_1883FEC38(v5, sel__scheduleConvenienceOperation_wrappingContainer_convenienceConfiguration_);
}

uint64_t CKContainer.decline(_:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return sub_1883F7178();
}

uint64_t sub_18845FA5C()
{
  sub_1883F7120();
  v1 = *(v0 + 24);
  sub_1884036E8([v1 implementation]);
  sub_1883F856C([v1 convenienceConfiguration]);
  v2 = swift_task_alloc();
  v3 = sub_1883F8B08(v2);
  *v3 = v4;
  v5 = sub_1883F9B98(v3);

  return sub_18845FB18(v5, v6, v7);
}

uint64_t sub_18845FB18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  return sub_1883F7178();
}

uint64_t sub_18845FB30()
{
  sub_1883F78E0();
  v1 = *(v0 + 48);
  v2 = sub_1883FDD2C();
  sub_1883F8724(v2);
  v3 = swift_task_alloc();
  sub_1883F9758(v3);
  sub_18844E6FC(&qword_1EA90D3C0, &qword_1886F78F8);
  sub_1883FE558();
  *v1 = v4;
  v1[1] = sub_18845D7E4;
  sub_1883F9148();
  sub_1883F7E74();

  return MEMORY[0x1EEE6DE38](v5, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t CKContainer.requestShareAccess(for:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return sub_1883F7178();
}

uint64_t sub_18845FC18()
{
  sub_1883F7120();
  v1 = *(v0 + 24);
  sub_1884036E8([v1 implementation]);
  sub_1883F856C([v1 convenienceConfiguration]);
  v2 = swift_task_alloc();
  v3 = sub_1883F8B08(v2);
  *v3 = v4;
  v5 = sub_1883F9B98(v3);

  return sub_18845FCD4(v5, v6, v7);
}

uint64_t sub_18845FCD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  return sub_1883F7178();
}

uint64_t sub_18845FCEC()
{
  sub_1883F78E0();
  v1 = *(v0 + 48);
  v2 = sub_1883FDD2C();
  sub_1883F8724(v2);
  v3 = swift_task_alloc();
  sub_1883F9758(v3);
  sub_18844E6FC(&qword_1EA90D3A0, &qword_1886F78E0);
  sub_1883FE558();
  *v1 = v4;
  v1[1] = sub_18845D7E4;
  sub_1883F9148();
  sub_1883F7E74();

  return MEMORY[0x1EEE6DE38](v5, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_18845FDC0()
{
  sub_1883FF090();
  sub_1883F4C5C(0, &qword_1EA90D470, off_1E70BA1A8);

  v0 = sub_188460FB8();
  sub_1883F7B88();
  v1 = swift_allocObject();
  *(v1 + 16) = MEMORY[0x1E69E7CC8];
  v8[4] = sub_188463180;
  v8[5] = v1;
  sub_1883F7188();
  v8[1] = 1107296256;
  v8[2] = sub_18845FFA8;
  v8[3] = &unk_1EFA26898;
  v2 = _Block_copy(v8);

  [v0 setUserIdentityDiscoveredBlock_];
  _Block_release(v2);
  sub_1883F7E80();
  v3 = swift_allocObject();
  sub_18840AF5C(v3);

  v4 = sub_188405278();
  v6 = CKDiscoverUserIdentitiesOperation.discoverUserIdentitiesResultBlock.setter(v4, v5);
  sub_1883FEC38(v6, sel__scheduleConvenienceOperation_wrappingContainer_convenienceConfiguration_);
}

uint64_t sub_18845FF44(void *a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  sub_18846FE34(a1, a2);
  return swift_endAccess();
}

void sub_18845FFA8(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(v7, v6);
}

uint64_t sub_1884601D0@<X0>(unint64_t *a1@<X0>, SEL *a2@<X1>, char *a3@<X2>, uint64_t *a4@<X8>)
{
  format = a3;
  v67 = a2;
  v62 = a4;
  v4 = *a1;
  if ((*a1 & 0xC000000000000001) != 0)
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = __CocoaDictionary.makeIterator()() | 0x8000000000000000;
  }

  else
  {
    v9 = -1 << *(v4 + 32);
    v6 = ~v9;
    v5 = v4 + 64;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v7 = v11 & *(v4 + 64);
    v8 = *a1;
  }

  v12 = 0;
  v61 = v6;
  v13 = (v6 + 64) >> 6;
  v63 = MEMORY[0x1E69E7CC8];
  *&v14 = 138412290;
  *v65 = v14;
  while (2)
  {
    v15 = v12;
    if ((v8 & 0x8000000000000000) != 0)
    {
      while (1)
      {
        if (!__CocoaDictionary.Iterator.next()())
        {
          goto LABEL_33;
        }

        v24 = v23;
        sub_1883F4C5C(0, &qword_1EA90D428, off_1E70BA990);
        swift_dynamicCast();
        v21 = *v74;
        v73 = v24;
        sub_1883F4C5C(0, &qword_1EA90D480, off_1E70BA988);
        swift_dynamicCast();
        v22 = *v74;
        v12 = v15;
        v18 = v7;
        if (!*v74)
        {
          goto LABEL_33;
        }

LABEL_17:
        v71 = v18;
        v25 = v5;
        v26 = v8;
        v27 = sub_188463094(v21, v67);
        if (v28)
        {
          break;
        }

        v68 = v22;
        if (qword_1ED4B5C68 != -1)
        {
          swift_once();
        }

        v29 = type metadata accessor for Logger();
        sub_1883FDE5C(v29, qword_1ED4B5C70);
        v30 = v21;
        v31 = Logger.logObject.getter();
        v32 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v31, v32))
        {
          v33 = swift_slowAlloc();
          v34 = swift_slowAlloc();
          *v33 = v65[0];
          *(v33 + 4) = v30;
          *v34 = v21;
          v35 = v30;
          _os_log_impl(&dword_1883EA000, v31, v32, format, v33, 0xCu);
          sub_188462FE0(v34);
          sub_1883F7B60();
          sub_1883F7B60();
          v30 = v31;
          v31 = v35;
        }

        v8 = v26;

        v15 = v12;
        v7 = v71;
        v5 = v25;
        if ((v8 & 0x8000000000000000) == 0)
        {
          goto LABEL_9;
        }
      }

      v36 = v27;
      v37 = v28;
      v69 = v22;
      isUnique = swift_isUniquelyReferenced_nonNull_native();
      *v75 = v63;
      v38 = sub_188420F2C(v36, v37);
      LODWORD(v63) = v39;
      if (__OFADD__(*(*v75 + 16), (v39 & 1) == 0))
      {
        goto LABEL_35;
      }

      v40 = v38;
      v41 = sub_18844E6FC(&qword_1EA90D498, &unk_1886F7990);
      if (sub_188405D10(v41, v42, v43, v44, v45, v46, v47, v48, v59, isUnique, v61, v62, v63, v65[0], v65[1], format, v67, v69, v71, v73, v75[0]))
      {
        v49 = sub_188420F2C(v36, v37);
        if ((v64 & 1) != (v50 & 1))
        {
          goto LABEL_37;
        }

        v40 = v49;
        if ((v64 & 1) == 0)
        {
          goto LABEL_28;
        }
      }

      else if ((v64 & 1) == 0)
      {
LABEL_28:
        sub_188405670(*v74 + 8 * (v40 >> 6));
        v52 = (v51 + 16 * v40);
        *v52 = v36;
        v52[1] = v37;
        *(*(*v74 + 56) + 8 * v40) = v70;

        v53 = *(*v74 + 16);
        v54 = __OFADD__(v53, 1);
        v55 = v53 + 1;
        if (v54)
        {
          goto LABEL_36;
        }

        v63 = *v74;
        *(*v74 + 16) = v55;
        goto LABEL_32;
      }

      v63 = *v74;
      v56 = *(*v74 + 56);
      v57 = *(v56 + 8 * v40);
      *(v56 + 8 * v40) = v70;

LABEL_32:
      v8 = v26;
      v5 = v25;
      v7 = v72;
      continue;
    }

    break;
  }

LABEL_9:
  v16 = v15;
  v17 = v7;
  v12 = v15;
  if (v7)
  {
LABEL_13:
    v18 = (v17 - 1) & v17;
    v19 = (v12 << 9) | (8 * __clz(__rbit64(v17)));
    v20 = *(*(v8 + 56) + v19);
    v21 = *(*(v8 + 48) + v19);
    v22 = v20;
    if (v21)
    {
      goto LABEL_17;
    }

LABEL_33:
    result = sub_1883F70C4(v8);
    *v62 = v63;
  }

  else
  {
    while (1)
    {
      v12 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v12 >= v13)
      {
        goto LABEL_33;
      }

      v17 = *(v5 + 8 * v12);
      ++v16;
      if (v17)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_1884607EC@<X0>(unint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  if ((*a1 & 0xC000000000000001) != 0)
  {
    v3 = 0;
    v4 = 0;
    v5 = 0;
    v6 = __CocoaDictionary.makeIterator()() | 0x8000000000000000;
  }

  else
  {
    v7 = -1 << *(v2 + 32);
    v4 = ~v7;
    v3 = v2 + 64;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v5 = v9 & *(v2 + 64);
    v6 = *a1;
  }

  v10 = 0;
  v11 = (v4 + 64) >> 6;
  v54 = MEMORY[0x1E69E7CC8];
  v55 = v3;
  v56 = v11;
LABEL_8:
  v12 = v10;
  if ((v6 & 0x8000000000000000) != 0)
  {
    while (__CocoaDictionary.Iterator.next()())
    {
      sub_1883F4C5C(0, &qword_1EA90D428, off_1E70BA990);
      swift_dynamicCast();
      v18 = v57;
      sub_1883F4C5C(0, &qword_1EA90D480, off_1E70BA988);
      swift_dynamicCast();
      v19 = v57;
      v10 = v12;
      v15 = v5;
      if (!v57)
      {
        break;
      }

LABEL_17:
      v20 = [v18 userRecordID];
      if (v20)
      {
        v30 = v20;
        v31 = v54;
        v52 = v6;
        if ((v54 & 0xC000000000000001) != 0)
        {
          if (v54 >= 0)
          {
            v31 = (v54 & 0xFFFFFFFFFFFFFF8);
          }

          v32 = v19;
          v33 = v19;
          v34 = __CocoaSet.count.getter();
          if (__OFADD__(v34, 1))
          {
            goto LABEL_43;
          }

          v31 = sub_188510C74(v31, v34 + 1);
        }

        else
        {
          v32 = v19;
          v35 = v19;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v57 = v31;
        sub_188486398();
        v39 = v31[2];
        v40 = (v38 & 1) == 0;
        v41 = v39 + v40;
        if (__OFADD__(v39, v40))
        {
          goto LABEL_42;
        }

        v42 = v37;
        v43 = v38;
        sub_18844E6FC(&qword_1EA90D478, &qword_1886F7978);
        if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v41))
        {
          sub_188486398();
          v6 = v52;
          if ((v43 & 1) != (v45 & 1))
          {
            goto LABEL_45;
          }

          v42 = v44;
        }

        else
        {
          v6 = v52;
        }

        v54 = v31;
        if (v43)
        {
          v46 = v31[7];
          v47 = *(v46 + 8 * v42);
          *(v46 + 8 * v42) = v32;
        }

        else
        {
          v31[(v42 >> 6) + 8] |= 1 << v42;
          *(v31[6] + 8 * v42) = v30;
          *(v31[7] + 8 * v42) = v32;

          v48 = v31[2];
          v49 = __OFADD__(v48, 1);
          v50 = v48 + 1;
          if (v49)
          {
            goto LABEL_44;
          }

          v31[2] = v50;
        }

        v5 = v15;
        v3 = v55;
        v11 = v56;
        goto LABEL_8;
      }

      v21 = v19;
      v22 = v6;
      if (qword_1ED4B5C68 != -1)
      {
        swift_once();
      }

      v23 = type metadata accessor for Logger();
      sub_1883FDE5C(v23, qword_1ED4B5C70);
      v24 = v18;
      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        *v27 = 138412290;
        *(v27 + 4) = v24;
        *v28 = v18;
        v29 = v24;
        _os_log_impl(&dword_1883EA000, v25, v26, "Unexpected lookup info that lacks user record id: %@", v27, 0xCu);
        sub_188462FE0(v28);
        MEMORY[0x18CFD7E80](v28, -1, -1);
        MEMORY[0x18CFD7E80](v27, -1, -1);
        v24 = v25;
        v25 = v29;
      }

      v6 = v22;
      v3 = v55;

      v12 = v10;
      v5 = v15;
      v11 = v56;
      if ((v22 & 0x8000000000000000) == 0)
      {
        goto LABEL_9;
      }
    }

    goto LABEL_40;
  }

LABEL_9:
  v13 = v12;
  v14 = v5;
  v10 = v12;
  if (v5)
  {
LABEL_13:
    v15 = (v14 - 1) & v14;
    v16 = (v10 << 9) | (8 * __clz(__rbit64(v14)));
    v17 = *(*(v6 + 56) + v16);
    v18 = *(*(v6 + 48) + v16);
    v19 = v17;
    if (v18)
    {
      goto LABEL_17;
    }

LABEL_40:
    result = sub_1883F70C4(v6);
    *a2 = v54;
    return result;
  }

  while (1)
  {
    v10 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v10 >= v11)
    {
      goto LABEL_40;
    }

    v14 = *(v3 + 8 * v10);
    ++v13;
    if (v14)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  sub_1883F4C5C(0, &qword_1EA90CA70, off_1E70BA618);
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_188460CC8(uint64_t a1)
{
  v2 = sub_18844E6FC(&qword_1EA90D468, &qword_1886F7970);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v10 - v5;
  (*(v3 + 16))(&v10 - v5, a1, v2, v4);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  (*(v3 + 32))(v8 + v7, v6, v2);
  sub_18845E680();
}

uint64_t sub_188460E60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  sub_1883F4C5C(0, &qword_1EA90D420, off_1E70BA330);

  v11 = sub_188460FB8();
  v12 = swift_allocObject();
  *(v12 + 16) = MEMORY[0x1E69E7CC8];

  CKFetchShareParticipantsOperation.perShareParticipantResultBlock.setter(sub_188462F44, v12);
  v13 = swift_allocObject();
  v13[2] = v12;
  v13[3] = a4;
  v13[4] = a5;

  CKFetchShareParticipantsOperation.fetchShareParticipantsResultBlock.setter(sub_188463240, v13);
  [v6 _scheduleConvenienceOperation_wrappingContainer_convenienceConfiguration_];
}

id sub_188460FB8()
{
  sub_1883FDE94();
  v3 = v2;
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_1883F4C5C(0, v3, v1);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v6 = [v4 *v0];

  return v6;
}

void sub_188461044(void *a1, char a2, uint64_t a3, void (*a4)(uint64_t))
{
  if (a2)
  {
    v5 = a1;
  }

  else
  {
    swift_beginAccess();
  }

  v6 = sub_1883FB4B8();
  a4(v6);
  v7 = sub_1883FB4B8();
  sub_1884631E0(v7, v8);
}

uint64_t sub_1884610CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_18844E6FC(&qword_1EA90D418, &qword_1886F7930);
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v17 - v12;
  (*(v10 + 16))(&v17 - v12, a1, v9, v11);
  v14 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v15 = swift_allocObject();
  (*(v10 + 32))(v15 + v14, v13, v9);
  sub_188460E60(a3, a4, a5, sub_188462F30, v15);
}

void sub_1884613D8(id a1, char a2, void (*a3)(uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t *__return_ptr, id *, uint64_t, uint64_t, uint64_t))
{
  if (a2)
  {
    v8 = a1;
  }

  else
  {
    v17 = a1;
    a7(&v16, &v17, a5, a6, a4);
  }

  v9 = sub_1883FB4B8();
  sub_1884631D4(v9, v10);
  v11 = sub_1883FB4B8();
  a3(v11);
  v12 = sub_1883FB4B8();
  sub_1884631E0(v12, v13);
  v14 = sub_1883FB4B8();
  sub_1884631E0(v14, v15);
}

uint64_t sub_188461468@<X0>(uint64_t *a1@<X0>, SEL *a2@<X1>, char *a3@<X2>, uint64_t *a4@<X8>)
{
  format = a3;
  v59 = a4;
  v4 = *a1;
  v5 = v4 + 64;
  v6 = 1 << *(v4 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(v4 + 64);
  v9 = (v6 + 63) >> 6;
  v68 = a2;
  v69 = v4;

  v10 = 0;
  v11 = MEMORY[0x1E69E7CC8];
  *&v12 = 138412290;
  *v60 = v12;
  while (2)
  {
    while (2)
    {
      v66 = v11;
      if (v8)
      {
        goto LABEL_9;
      }

      do
      {
LABEL_5:
        v13 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          __break(1u);
LABEL_26:
          __break(1u);
          goto LABEL_27;
        }

        if (v13 >= v9)
        {

          *v59 = v11;
          return result;
        }

        v8 = *(v5 + 8 * v13);
        ++v10;
      }

      while (!v8);
      v10 = v13;
LABEL_9:
      while (1)
      {
        v14 = __clz(__rbit64(v8));
        v8 &= v8 - 1;
        v15 = v14 | (v10 << 6);
        v16 = *(*(v69 + 48) + 8 * v15);
        v17 = *(v69 + 56) + 16 * v15;
        v18 = *v17;
        v19 = *(v17 + 8);
        v20 = v16;
        v21 = sub_188405284();
        sub_188449260(v21);
        v22 = sub_188463094(v20, v68);
        HIDWORD(v70) = v19;
        if (v23)
        {
          break;
        }

        if (qword_1ED4B5C68 != -1)
        {
          swift_once();
        }

        v24 = type metadata accessor for Logger();
        sub_1883FDE5C(v24, qword_1ED4B5C70);
        v25 = v20;
        v26 = Logger.logObject.getter();
        v27 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v26, v27))
        {
          v28 = swift_slowAlloc();
          v29 = swift_slowAlloc();
          *v28 = v60[0];
          *(v28 + 4) = v25;
          *v29 = v25;
          v63 = v25;
          _os_log_impl(&dword_1883EA000, v26, v27, format, v28, 0xCu);
          sub_188462FE0(v29);
          sub_1883F7B60();
          sub_1883F7B60();
          v25 = v26;
          v26 = v63;
        }

        sub_18844CAFC(v18);

        v11 = v66;
        if (!v8)
        {
          goto LABEL_5;
        }
      }

      v30 = v22;
      v31 = v23;
      v32 = sub_188405284();
      sub_188449260(v32);
      isUnique = swift_isUniquelyReferenced_nonNull_native();
      v64 = sub_188420F2C(v30, v31);
      LODWORD(v66) = v33;
      if (__OFADD__(*(v11 + 16), (v33 & 1) == 0))
      {
        goto LABEL_26;
      }

      v34 = sub_18844E6FC(&qword_1EA90D458, &qword_1886F7960);
      if (!sub_188405D10(v34, v35, v36, v37, v38, v39, v40, v41, v57, isUnique, v59, v60[0], v60[1], v61, format, v64, v66, v68, v69, v70, v11))
      {
        v44 = BYTE4(v70);
        if ((v67 & 1) == 0)
        {
          break;
        }

        goto LABEL_23;
      }

      v42 = sub_188420F2C(v30, v31);
      v44 = BYTE4(v70);
      if ((v67 & 1) != (v43 & 1))
      {
        goto LABEL_28;
      }

      v65 = v42;
      if (v67)
      {
LABEL_23:

        v11 = *v71;
        v53 = *(*v71 + 56) + 16 * v65;
        v54 = *v53;
        *v53 = v18;
        *(v53 + 8) = v44;
        sub_18844CAFC(v54);
        v55 = sub_188405284();
        sub_18844CAFC(v55);

        continue;
      }

      break;
    }

    v11 = *v71;
    sub_188405670(*v71 + 8 * (v65 >> 6));
    v47 = (v45 + 16 * v46);
    *v47 = v30;
    v47[1] = v31;
    v48 = *(*v71 + 56) + 16 * v46;
    *v48 = v18;
    *(v48 + 8) = v44;
    v49 = sub_188405284();
    sub_18844CAFC(v49);

    v50 = *(*v71 + 16);
    v51 = __OFADD__(v50, 1);
    v52 = v50 + 1;
    if (!v51)
    {
      *(*v71 + 16) = v52;
      continue;
    }

    break;
  }

LABEL_27:
  __break(1u);
LABEL_28:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void sub_18846198C(id a1, char a2, void (*a3)(uint64_t), uint64_t a4, void (*a5)(uint64_t *__return_ptr, id *))
{
  if (a2)
  {
    v6 = a1;
  }

  else
  {
    v15 = a1;
    a5(&v14, &v15);
  }

  v7 = sub_1883FE28C();
  sub_1884631D4(v7, v8);
  v9 = sub_1883FE28C();
  a3(v9);
  v10 = sub_1883FE28C();
  sub_1884631E0(v10, v11);
  v12 = sub_1883FE28C();
  sub_1884631E0(v12, v13);
}

uint64_t sub_188461A14@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  v3 = *a1 + 64;
  v4 = 1 << *(*a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(*a1 + 64);
  v7 = (v4 + 63) >> 6;

  v8 = 0;
  v47 = MEMORY[0x1E69E7CC8];
  v9 = &selRef_unsignedShortValue;
  v49 = v2;
  while (v6)
  {
LABEL_9:
    v11 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v12 = v11 | (v8 << 6);
    v13 = *(*(v2 + 48) + 8 * v12);
    v14 = *(v2 + 56) + 16 * v12;
    v15 = *v14;
    v16 = *(v14 + 8);
    v17 = v13;
    sub_188449260(v15);
    v18 = [v17 v9[52]];
    v51 = v16;
    v50 = v15;
    if (v18)
    {
      v28 = v18;
      sub_188449260(v15);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v52 = v47;
      sub_188486398();
      v31 = v47[2];
      v48 = v32;
      v33 = (v32 & 1) == 0;
      v34 = v31 + v33;
      if (__OFADD__(v31, v33))
      {
        goto LABEL_26;
      }

      v35 = v30;
      sub_18844E6FC(&qword_1EA90D440, &qword_1886F7948);
      if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v34))
      {
        sub_188486398();
        v38 = v48;
        v9 = &selRef_unsignedShortValue;
        if ((v48 & 1) != (v37 & 1))
        {
          goto LABEL_28;
        }

        v35 = v36;
      }

      else
      {
        v9 = &selRef_unsignedShortValue;
        v38 = v48;
      }

      v47 = v52;
      if (v38)
      {
        v39 = v52[7] + 16 * v35;
        v40 = *v39;
        *v39 = v15;
        *(v39 + 8) = v51;
        sub_18844CAFC(v40);

        sub_18844CAFC(v15);
        v2 = v49;
      }

      else
      {
        v52[(v35 >> 6) + 8] |= 1 << v35;
        *(v52[6] + 8 * v35) = v28;
        v41 = v52[7] + 16 * v35;
        *v41 = v15;
        *(v41 + 8) = v51;
        sub_18844CAFC(v15);

        v42 = v52[2];
        v43 = __OFADD__(v42, 1);
        v44 = v42 + 1;
        if (v43)
        {
          goto LABEL_27;
        }

        v52[2] = v44;
        v2 = v49;
      }
    }

    else
    {
      if (qword_1ED4B5C68 != -1)
      {
        swift_once();
      }

      v19 = type metadata accessor for Logger();
      sub_1883FDE5C(v19, qword_1ED4B5C70);
      v20 = v17;
      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        *v23 = 138412290;
        *(v23 + 4) = v20;
        *v24 = v20;
        v25 = v20;
        _os_log_impl(&dword_1883EA000, v21, v22, "Unexpected lookup info that lacks user record id: %@", v23, 0xCu);
        sub_188462FE0(v24);
        v26 = v24;
        v2 = v49;
        MEMORY[0x18CFD7E80](v26, -1, -1);
        v27 = v23;
        v9 = &selRef_unsignedShortValue;
        MEMORY[0x18CFD7E80](v27, -1, -1);
        v20 = v21;
        v21 = v25;
      }

      sub_18844CAFC(v50);
    }
  }

  while (1)
  {
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v10 >= v7)
    {

      *a2 = v47;
      return result;
    }

    v6 = *(v3 + 8 * v10);
    ++v8;
    if (v6)
    {
      v8 = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  sub_1883F4C5C(0, &qword_1EA90CA70, off_1E70BA618);
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_188461DEC(uint64_t a1)
{
  v2 = sub_18844E6FC(&qword_1EA90D438, &qword_1886F7940);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v10 - v5;
  (*(v3 + 16))(&v10 - v5, a1, v2, v4);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  (*(v3 + 32))(v8 + v7, v6, v2);
  sub_18845E680();
}

unint64_t sub_188461F84()
{
  result = qword_1EA90D398;
  if (!qword_1EA90D398)
  {
    type metadata accessor for URL();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA90D398);
  }

  return result;
}

_BYTE *_s11ApplicationOwst(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

id sub_188462088()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  type metadata accessor for URL();
  isa = Array._bridgeToObjectiveC()().super.isa;

  v2 = [v0 initWithShareURLs_];

  return v2;
}

uint64_t sub_188462100(uint64_t a1, void *a2, char a3, uint64_t a4)
{
  swift_beginAccess();
  sub_188449260(a2);
  swift_isUniquelyReferenced_nonNull_native();
  v9 = *(a4 + 16);
  sub_1884AE418(a2, a3 & 1, a1);
  *(a4 + 16) = v9;
  return swift_endAccess();
}

uint64_t sub_188462194(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v19 = a6;
  v10 = sub_18844E6FC(&qword_1EA90D400, &qword_1886F7920);
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v18 - v13;
  (*(v11 + 16))(&v18 - v13, a1, v10, v12);
  v15 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v16 = swift_allocObject();
  (*(v11 + 32))(v16 + v15, v14, v10);
  sub_18845EC28(a3, a4, a5, v19, sub_188462E40, v16);
}

uint64_t sub_188462308(uint64_t a1)
{
  v2 = sub_18844E6FC(&qword_1EA90D3E8, &qword_1886F7910);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v10 - v5;
  (*(v3 + 16))(&v10 - v5, a1, v2, v4);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  (*(v3 + 32))(v8 + v7, v6, v2);
  sub_18845F62C();
}

uint64_t sub_188462470(uint64_t a1, uint64_t a2, char a3, uint64_t a4, void (*a5)(uint64_t, void), void (*a6)(uint64_t, void, uint64_t, uint64_t))
{
  swift_beginAccess();
  a5(a2, a3 & 1);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *(a4 + 16);
  a6(a2, a3 & 1, a1, isUniquelyReferenced_nonNull_native);
  *(a4 + 16) = v14;
  return swift_endAccess();
}

uint64_t sub_18846251C(uint64_t a1)
{
  v2 = sub_18844E6FC(&qword_1EA90D3C8, &qword_1886F7900);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v10 - v5;
  (*(v3 + 16))(&v10 - v5, a1, v2, v4);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  (*(v3 + 32))(v8 + v7, v6, v2);
  sub_18845F924();
}

void sub_188462684()
{
  sub_1883FF090();
  sub_1883F4C5C(0, &qword_1EA90D3B0, off_1E70BA780);

  v4 = sub_188462088();
  sub_1883F7E80();
  v3 = swift_allocObject();
  sub_18840AF5C(v3);

  CKShareRequestAccessOperation.shareAccessRequestResultBlock.setter(sub_188462CAC, v3);
  [v1 _scheduleConvenienceOperation_wrappingContainer_convenienceConfiguration_];
}

void sub_188462768(void *a1, int a2, uint64_t a3, void (*a4)(void *, void), uint64_t a5)
{
  v10 = type metadata accessor for URL();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v44 - v16;
  if (a2)
  {
    v18 = a1;
LABEL_17:
    a4(a1, a2 & 1);
    sub_1884631E0(a1, a2 & 1);
    return;
  }

  v44 = a5;
  v45 = a4;
  v46 = a2;
  v19 = *(a3 + 16);
  if (!v19)
  {
    a1 = MEMORY[0x1E69E7CC8];
LABEL_16:
    LOBYTE(a2) = v46;
    a4 = v45;
    goto LABEL_17;
  }

  v21 = *(v14 + 16);
  v20 = v14 + 16;
  v22 = a3 + ((*(v20 + 64) + 32) & ~*(v20 + 64));
  v48 = *(v20 + 56);
  v49 = v21;
  a1 = MEMORY[0x1E69E7CC8];
  v50 = v20;
  v47 = (v20 - 8);
  while (1)
  {
    v23 = v49;
    (v49)(v17, v22, v10, v15);
    v24 = v17;
    v23(v12, v17, v10);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v51 = a1;
    sub_1884863DC();
    v28 = a1[2];
    v29 = (v27 & 1) == 0;
    v30 = v28 + v29;
    if (__OFADD__(v28, v29))
    {
      break;
    }

    v31 = v26;
    v32 = v27;
    sub_18844E6FC(&qword_1EA90D3B8, &qword_1886F78F0);
    if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v30))
    {
      sub_1884863DC();
      if ((v32 & 1) != (v34 & 1))
      {
        goto LABEL_20;
      }

      v31 = v33;
    }

    v17 = v24;
    a1 = v51;
    if (v32)
    {
      v35 = v51[7] + 16 * v31;
      v36 = *v35;
      v37 = *(v35 + 8);
      *v35 = 0;
      *(v35 + 8) = 0;
      sub_188462CBC(v36, v37);
      v38 = *v47;
      (*v47)(v12, v10);
      v38(v24, v10);
    }

    else
    {
      v51[(v31 >> 6) + 8] |= 1 << v31;
      v49((a1[6] + v31 * v48), v12, v10);
      v39 = a1[7] + 16 * v31;
      *v39 = 0;
      *(v39 + 8) = 0;
      v40 = *v47;
      (*v47)(v12, v10);
      v40(v24, v10);
      v41 = a1[2];
      v42 = __OFADD__(v41, 1);
      v43 = v41 + 1;
      if (v42)
      {
        goto LABEL_19;
      }

      a1[2] = v43;
    }

    v22 += v48;
    if (!--v19)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

uint64_t sub_188462AA4(uint64_t a1)
{
  v2 = sub_18844E6FC(&qword_1EA90D3A8, &qword_1886F78E8);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v10 - v5;
  (*(v3 + 16))(&v10 - v5, a1, v2, v4);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  (*(v3 + 32))(v8 + v7, v6, v2);
  sub_188462684();
}

uint64_t sub_188462C18(void *a1, char a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  if (a2)
  {
    v7 = a1;
    sub_18844E6FC(a4, a5);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {

    sub_18844E6FC(a4, a5);
    return CheckedContinuation.resume(returning:)();
  }
}

void sub_188462CBC(id a1, char a2)
{
  if (a2)
  {
  }
}

uint64_t sub_188462CE8()
{
  sub_1883FDE94();
  v4 = v3;
  v6 = v5;
  v9 = *(sub_18844E6FC(v7, v8) - 8);
  return sub_188462C18(v6, v4 & 1, v1 + ((*(v9 + 80) + 16) & ~*(v9 + 80)), v2, v0);
}

id sub_188462DBC(id result, char a2)
{
  if (a2)
  {
    return result;
  }

  return result;
}

void sub_188462E54(uint64_t a1, void *a2)
{
  type metadata accessor for URL();
  sub_1883F4C5C(0, &qword_1EA90D390, off_1E70BA190);
  sub_188461F84();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  [a2 setShareInvitationTokensByShareURL_];
}

uint64_t sub_188462FE0(uint64_t a1)
{
  v2 = sub_18844E6FC(&qword_1EA90DC70, &unk_1886FA190);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_188463094(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v4;
}

double sub_1884631D4(id a1, char a2)
{
  if (a2)
  {
    v2 = a1;
  }

  else
  {
  }

  return result;
}

void sub_1884631E0(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_1884632A8(void *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  return *a2;
}

uint64_t CKDatabaseScope.description.getter(uint64_t a1)
{
  if (a1 == 3)
  {
    return 0x6465726168732ELL;
  }

  v6[4] = v1;
  v6[5] = v2;
  if (a1 == 2)
  {
    return 0x657461766972702ELL;
  }

  if (a1 == 1)
  {
    return 0x63696C6275702ELL;
  }

  if (qword_1EA90C8A0 != -1)
  {
    swift_once();
  }

  if (qword_1EA90C8A8 == a1)
  {
    return 0x7A696E6167726F2ELL;
  }

  if (qword_1EA90CB18 != -1)
  {
    swift_once();
  }

  if (qword_1EA90D4A0 == a1)
  {
    return 0x6E776F6E6B6E752ELL;
  }

  _StringGuts.grow(_:)(16);

  strcpy(v6, "unrecognized(");
  v5 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x18CFD5140](v5);

  MEMORY[0x18CFD5140](41, 0xE100000000000000);
  return v6[0];
}

void CKDatabase.undeprecated_perform(_:inZoneWith:completionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7[4] = a3;
  v7[5] = a4;
  sub_1883F7188();
  v7[1] = 1107296256;
  v7[2] = sub_188463674;
  v7[3] = &unk_1EFA26988;
  v4 = _Block_copy(v7);

  v5 = sub_1883FD768();
  [v5 v6];
  _Block_release(v4);
}

uint64_t sub_188463674(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    sub_1883F4C5C(0, &qword_1EA90C758, off_1E70BA5F8);
    v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v6 = a3;
  v5(v4, a3);
}

uint64_t CKDatabase.records(matching:inZoneWith:)()
{
  sub_1883F7120();
  v1[20] = v2;
  v1[21] = v0;
  v1[19] = v3;
  v4 = sub_18844E6FC(&qword_1EA90D4A8, &qword_1886F79B8);
  v1[22] = v4;
  sub_1883F8620(v4);
  v1[23] = v5;
  v1[24] = swift_task_alloc();
  sub_1883F7FD8();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1884637D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v15 = v14;
  v16 = v14;
  v17 = v14 + 2;
  v18 = v14 + 10;
  v19 = v14 + 18;
  v20 = v14[23];
  v21 = v14[24];
  v22 = v14[22];
  v33 = v15[21];
  v34 = v15[20];
  v32 = v15[19];
  v15[2] = v16;
  v15[7] = v19;
  sub_188413778();
  v15[17] = v22;
  v23 = sub_188403664(v15 + 14);
  sub_18844E6FC(&qword_1EA90D4B0, &unk_1886F79C0);
  sub_18844E6FC(&qword_1EA90E3D0, &qword_1886F75C0);
  CheckedContinuation.init(continuation:function:)();
  (*(v20 + 32))(v23, v21, v22);
  sub_1883F83B4();
  v15[11] = 1107296256;
  v15[12] = sub_188463B64;
  v15[13] = &unk_1EFA269B0;
  [v33 performQuery:v32 inZoneWithID:v34 completionHandler:v18];
  (*(v20 + 8))(v23, v22);

  return MEMORY[0x1EEE6DEC8](v17, v24, v25, v26, v27, v28, v29, v30, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_188463990()
{
  sub_1883F7120();
  sub_1883F78EC();
  sub_1883F78D4();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 200) = *(v3 + 48);
  sub_1883F7FD8();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_188463A90()
{
  sub_1883F7120();
  v1 = *(v0 + 144);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_188463AF8()
{
  sub_1883F78E0();
  swift_willThrow();

  sub_1883F816C();

  return v0();
}

void sub_188463B64(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_188400B68((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v6 = a3;
    sub_1884E0A0C();
  }

  else
  {
    sub_1883F4C5C(0, &qword_1EA90C758, off_1E70BA5F8);
    v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    sub_1884E0B7C(v4, v5);
  }
}

void CKDatabase.fetch(withSubscriptionID:completionHandler:)()
{
  sub_1883FDE94();
  v2 = MEMORY[0x18CFD5010]();
  v7 = v1;
  v8 = v0;
  sub_1883F7188();
  v6[1] = 1107296256;
  v6[2] = sub_18845C9D8;
  v6[3] = &unk_1EFA269D8;
  v3 = _Block_copy(v6);

  v4 = sub_1883FD768();
  [v4 v5];
  _Block_release(v3);
}

uint64_t CKDatabase.subscription(for:)()
{
  sub_1883F7120();
  v1[20] = v2;
  v1[21] = v0;
  v1[19] = v3;
  v4 = sub_18844E6FC(&qword_1EA90D4B8, &qword_1886F79D8);
  v1[22] = v4;
  sub_1883F8620(v4);
  v1[23] = v5;
  v1[24] = swift_task_alloc();
  sub_1883F7FD8();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_188463D94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v15 = v14;
  v16 = v14 + 2;
  v17 = v14 + 18;
  v18 = v14[23];
  v19 = v14[22];
  v32 = v15[21];
  v20 = MEMORY[0x18CFD5010](v15[19], v15[20], a3, a4, a5, a6, a7, a8);
  v15[25] = v20;
  v15[2] = v15;
  v15[7] = v17;
  sub_188413778();
  v15[17] = v19;
  v21 = sub_188403664(v15 + 14);
  sub_1883F4C5C(0, &qword_1EA90CA90, off_1E70BA7C8);
  sub_18844E6FC(&qword_1EA90E3D0, &qword_1886F75C0);
  sub_188404BC0();
  CheckedContinuation.init(continuation:function:)();
  v22 = sub_1883FE814();
  v23(v22);
  v15[10] = MEMORY[0x1E69E9820];
  v15[11] = 1107296256;
  v15[12] = sub_188464050;
  v15[13] = &unk_1EFA26A00;
  [v32 fetchSubscriptionWithID:v20 completionHandler:?];
  (*(v18 + 8))(v21, v19);

  return MEMORY[0x1EEE6DEC8](v16, v24, v25, v26, v27, v28, v29, v30, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_188463F50()
{
  sub_1883F7120();
  sub_1883F78EC();
  sub_1883F78D4();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 208) = *(v3 + 48);
  sub_1883F7FD8();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

void sub_188464050(uint64_t a1, void *a2, void *a3)
{
  sub_188400B68((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v6 = a3;
    sub_1884E0A34();
  }

  else if (a2)
  {
    v5 = a2;

    sub_1884E0B90();
  }

  else
  {
    __break(1u);
  }
}

void CKDatabase.delete(withSubscriptionID:completionHandler:)()
{
  sub_1883FDE94();
  v2 = MEMORY[0x18CFD5010]();
  v7 = v1;
  v8 = v0;
  sub_1883F7188();
  v6[1] = 1107296256;
  v6[2] = sub_1884641A8;
  v6[3] = &unk_1EFA26A28;
  v3 = _Block_copy(v6);

  v4 = sub_1883FD768();
  [v4 v5];
  _Block_release(v3);
}

uint64_t sub_1884641A8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  if (a2)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a3;
  v4(v5, v7, a3);
}

uint64_t CKDatabase.deleteSubscription(withID:)()
{
  sub_1883F7120();
  v1[21] = v2;
  v1[22] = v0;
  v1[20] = v3;
  v4 = sub_18844E6FC(&qword_1EA90D4C0, &qword_1886F79E8);
  v1[23] = v4;
  sub_1883F8620(v4);
  v1[24] = v5;
  v1[25] = swift_task_alloc();
  sub_1883F7FD8();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_188464300(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v15 = v14;
  v16 = v14 + 2;
  v17 = v14 + 10;
  v18 = v14 + 18;
  v19 = v14[24];
  v20 = v14[23];
  v33 = v15[22];
  v21 = MEMORY[0x18CFD5010](v15[20], v15[21], a3, a4, a5, a6, a7, a8);
  v15[26] = v21;
  v15[2] = v15;
  v15[7] = v18;
  sub_188413778();
  v15[17] = v20;
  v22 = sub_188403664(v15 + 14);
  sub_18844E6FC(&qword_1EA90E3D0, &qword_1886F75C0);
  sub_188404BC0();
  CheckedContinuation.init(continuation:function:)();
  v23 = sub_1883FE814();
  v24(v23);
  sub_1883F83B4();
  v15[11] = 1107296256;
  v15[12] = sub_188464684;
  v15[13] = &unk_1EFA26A50;
  [v33 deleteSubscriptionWithID:v21 completionHandler:v17];
  (*(v19 + 8))(v22, v20);

  return MEMORY[0x1EEE6DEC8](v16, v25, v26, v27, v28, v29, v30, v31, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_188464494()
{
  sub_1883F7120();
  sub_1883F78EC();
  sub_1883F78D4();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 216) = *(v3 + 48);
  sub_1883F7FD8();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_188464594()
{
  sub_1883F78E0();
  v1 = *(v0 + 144);
  v2 = *(v0 + 152);

  v3 = *(v0 + 8);

  return v3(v1, v2);
}

uint64_t sub_188464610()
{
  sub_1883F78E0();
  v1 = *(v0 + 208);
  swift_willThrow();

  sub_1883F816C();

  return v2();
}

void sub_188464684(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_188400B68((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v7 = a3;
    sub_1884E0A5C();
  }

  else
  {
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();

    sub_1884E0BB8(v4, v6, v5);
  }
}

void CKDatabase.configuredWith<A>(configuration:group:body:)(void *a1, void *a2, void (*a3)(void))
{
  v4 = v3;
  sub_1883F4C5C(0, &qword_1EA90CAB0, off_1E70BA0C8);
  v8 = a2;
  v9 = a1;
  v10 = sub_1884296E8(a1, a2);
  v11 = [v4 container];
  if (v11)
  {
    v12 = v11;
    swift_getObjectType();

    v13 = [v4 container];
    if (v13)
    {
      v14 = v13;
      v15 = [v13 implementation];

      v16 = v10;
      v17 = sub_1884276B8(v15, v10);
      v18 = [v17 databaseWithDatabaseScope_];
      a3();

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1884648A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[7] = a7;
  v8[8] = a8;
  v8[5] = a5;
  v8[6] = a6;
  v8[3] = a2;
  v8[4] = a3;
  v8[2] = a1;
  return sub_1883F7178();
}

id sub_1884648C8()
{
  sub_1883FB4AC();
  sub_18846D2F0();
  sub_1883F4C5C(0, &qword_1EA90CAB0, off_1E70BA0C8);
  v4 = v1;
  v5 = v2;
  v6 = sub_1883FDFD0();
  sub_188404A1C(v6);
  result = [v0 container];
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v8 = result;
  swift_getObjectType();

  result = sub_18841BAB8();
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v9 = result;
  v10 = v3[4];
  v11 = [result implementation];

  v12 = v1;
  v13 = sub_1884276B8(v11, v1);
  v3[10] = v13;
  v3[11] = [v13 databaseWithDatabaseScope_];
  v14 = swift_task_alloc();
  v3[12] = v14;
  *v14 = v3;
  v14[1] = sub_188464A54;
  v15 = sub_1883FF484(v3[6]);

  return sub_18846EB78(v15, v16, v17);
}

uint64_t sub_188464A54()
{
  sub_1883F78E0();
  v3 = v2;
  sub_1883F78EC();
  v5 = v4;
  sub_1883F7B78();
  *v6 = v5;
  v7 = *v1;
  sub_1883F7110();
  *v8 = v7;
  *(v5 + 104) = v0;

  if (!v0)
  {
    *(v5 + 112) = v3;
  }

  sub_1883F9BB4();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

void sub_188464B5C()
{
  sub_1883FB4AC();
  sub_1883FF49C();

  sub_1883FB5FC();

  __asm { BRAA            X2, X16 }
}

void sub_188464BE0()
{
  sub_1883FB4AC();
  sub_1883FF49C();

  sub_1883F816C();
  sub_1883FB5FC();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_188464C5C()
{
  sub_1883F653C();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  sub_1883F78EC();
  v11 = v10;
  sub_1883F7B78();
  *v12 = v11;
  v13 = *v1;
  sub_1883F7110();
  *v14 = v13;
  *(v11 + 88) = v0;

  if (!v0)
  {
    *(v11 + 120) = v3 & 1;
    *(v11 + 96) = v5;
    *(v11 + 104) = v7;
    *(v11 + 112) = v9;
  }

  sub_1883F7FD8();

  return MEMORY[0x1EEE6DFA0](v15, v16, v17);
}

uint64_t sub_188464D90()
{
  sub_1883F7120();
  sub_188411038();

  v3 = *(v2 + 8);
  v5 = *(v2 + 104);
  v4 = *(v2 + 112);
  v6 = *(v2 + 96);
  v7 = *(v2 + 120);

  return v3(v4, v5, v6, v7);
}

uint64_t sub_188464E00()
{
  sub_1883F7120();
  sub_188411038();

  sub_1883F816C();

  return v2();
}

uint64_t sub_188464E64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return sub_1883F7178();
}

id sub_188464E80()
{
  sub_1883FB4E4();
  v16 = v3;
  sub_1883F653C();
  sub_18846D2F0();
  sub_1883F4C5C(0, &qword_1EA90CAB0, off_1E70BA0C8);
  v4 = v0;
  v5 = v1;
  v6 = sub_1883FDFD0();
  result = sub_18840AD04(v6);
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v8 = result;
  swift_getObjectType();

  result = sub_18841BAB8();
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v9 = result;
  v10 = *(v2 + 32);
  [result implementation];

  v11 = v0;
  v12 = sub_1883FDBA8();
  sub_1883FE210(v12);
  sub_1883FE990([v0 databaseWithDatabaseScope_]);
  v13 = swift_task_alloc();
  *(v2 + 80) = v13;
  *v13 = v2;
  v14 = sub_1884036F4(v13);

  return v15(v14);
}

uint64_t sub_188464FFC()
{
  sub_1883FB4AC();
  v3 = v2;
  v5 = v4;
  sub_1883F78EC();
  v7 = v6;
  sub_1883F7B78();
  *v8 = v7;
  v9 = *v1;
  sub_1883F7110();
  *v10 = v9;
  v7[11] = v0;

  if (!v0)
  {
    v7[12] = v3;
    v7[13] = v5;
  }

  sub_1883F7FD8();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_188465114(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return sub_1883F7178();
}

id sub_188465130()
{
  sub_1883FB4E4();
  v16 = v3;
  sub_1883F653C();
  sub_18846D2F0();
  sub_1883F4C5C(0, &qword_1EA90CAB0, off_1E70BA0C8);
  v4 = v0;
  v5 = v1;
  v6 = sub_1883FDFD0();
  result = sub_18840AD04(v6);
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v8 = result;
  swift_getObjectType();

  result = sub_18841BAB8();
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v9 = result;
  v10 = *(v2 + 32);
  [result implementation];

  v11 = v0;
  v12 = sub_1883FDBA8();
  sub_1883FE210(v12);
  sub_1883FE990([v0 databaseWithDatabaseScope_]);
  v13 = swift_task_alloc();
  *(v2 + 80) = v13;
  *v13 = v2;
  v14 = sub_1884036F4(v13);

  return v15(v14);
}

uint64_t sub_1884652AC()
{
  sub_1883FB4AC();
  v3 = v2;
  v5 = v4;
  sub_1883F78EC();
  v7 = v6;
  sub_1883F7B78();
  *v8 = v7;
  v9 = *v1;
  sub_1883F7110();
  *v10 = v9;
  v7[11] = v0;

  if (!v0)
  {
    v7[12] = v3;
    v7[13] = v5;
  }

  sub_1883F7FD8();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1884653C4()
{
  sub_1883F7120();
  sub_188411038();

  v3 = v2[1];
  v5 = v2[12];
  v4 = v2[13];

  return v3(v4, v5);
}

uint64_t sub_18846542C()
{
  sub_1883F7120();
  sub_188411038();

  sub_1883F816C();

  return v2();
}

uint64_t CKDatabase.configuredWith<A>(configuration:group:body:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return sub_1883F7178();
}

id sub_1884654A8()
{
  sub_1883FB4E4();
  v20 = v1;
  sub_1883F653C();
  v2 = v0[7];
  v4 = v0[3];
  v3 = v0[4];
  sub_1883F4C5C(0, &qword_1EA90CAB0, off_1E70BA0C8);
  v5 = v3;
  v6 = v4;
  v7 = sub_1883FDFD0();
  sub_1883FE210(v7);
  result = [v2 container];
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v9 = result;
  swift_getObjectType();

  result = sub_18841BAB8();
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v10 = result;
  v11 = v0[7];
  v12 = v0[5];
  v13 = [result implementation];

  v14 = v3;
  v15 = sub_1883FDBA8();
  sub_188404A1C(v15);
  v16 = [v3 databaseWithDatabaseScope_];
  v0[10] = v16;
  v19 = (v12 + *v12);
  v17 = swift_task_alloc();
  v0[11] = v17;
  *v17 = v0;
  v17[1] = sub_188465688;
  v18 = v0[2];

  return v19(v18, v16);
}

uint64_t sub_188465688()
{
  sub_1883F7120();
  sub_1883F78EC();
  sub_1883F78D4();
  *v3 = v2;
  v4 = *v1;
  sub_1883F7110();
  *v5 = v4;
  *(v6 + 96) = v0;

  sub_1883F7FD8();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_188465784()
{
  sub_1883F7120();
  v1 = *(v0 + 72);
  v2 = *(v0 + 64);

  sub_1883F816C();

  return v3();
}

uint64_t sub_1884657EC()
{
  sub_1883F7120();
  v1 = *(v0 + 72);
  v2 = *(v0 + 64);

  sub_1883F816C();

  return v3();
}

uint64_t sub_18846586C()
{
  sub_1883FEFBC();
  sub_1883F4C5C(0, &unk_1EA90C110, off_1E70BA308);

  v0 = sub_18846D310();

  CKFetchRecordsOperation.desiredKeys.setter(v1);
  sub_1883F7B88();
  *(swift_allocObject() + 16) = MEMORY[0x1E69E7CC8];

  v2 = sub_1883F8FF0();
  CKFetchRecordsOperation.perRecordResultBlock.setter(v2, v3);
  sub_1883F7E80();
  v4 = swift_allocObject();
  sub_1883F8B14(v4);

  v5 = sub_188405278();
  v7 = CKFetchRecordsOperation.fetchRecordsResultBlock.setter(v5, v6);
  sub_1883FEC38(v7, sel__scheduleConvenienceOperation_wrappingDatabase_convenienceConfiguration_);
}

uint64_t CKDatabase.records(for:desiredKeys:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return sub_1883F7178();
}

uint64_t sub_188465994()
{
  sub_1883F78E0();
  v2 = *(v1 + 32);
  sub_1883F856C([v2 implementation]);
  sub_18840C12C([objc_msgSend(v2 container)]);
  v3 = swift_task_alloc();
  v4 = sub_1884101CC(v3);
  *v4 = v5;
  v4[1] = sub_188465A7C;
  v6 = sub_1884007BC();

  return sub_188465BAC(v6, v7, v8, v0);
}

uint64_t sub_188465A7C()
{
  sub_1883F78E0();
  sub_1883F78EC();
  v3 = v2;
  sub_1883F7B78();
  *v4 = v3;
  v5 = *v1;
  sub_1883F7110();
  *v6 = v5;
  *(v3 + 64) = v0;

  if (v0)
  {
    sub_1883F7FD8();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    v10 = *(v3 + 40);

    v11 = sub_1883FA044();

    return v12(v11);
  }
}

uint64_t sub_188465BAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[6] = a4;
  v5[7] = v4;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  return sub_1883F7178();
}

uint64_t sub_188465BC8()
{
  sub_1883F653C();
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v17 = *(v0 + 32);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  v5 = sub_1883FE210(v4);
  *(v5 + 16) = v1;
  *(v5 + 24) = v3;
  *(v5 + 32) = v17;
  *(v5 + 48) = v2;
  v6 = swift_task_alloc();
  *(v0 + 72) = v6;
  sub_18844E6FC(&qword_1EA90D580, &qword_1886F7FA0);
  sub_1883FE558();
  *v6 = v7;
  v6[1] = sub_188465CD4;
  sub_1883F9BB4();
  sub_1883F7E74();

  return MEMORY[0x1EEE6DE38](v8, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t sub_188465CD4()
{
  sub_1883F7120();
  sub_1883F78EC();
  v3 = v2;
  sub_1883F7B78();
  *v4 = v3;
  v5 = *v1;
  sub_1883F7110();
  *v6 = v5;
  *(v3 + 80) = v0;

  if (!v0)
  {
  }

  sub_1883F7FD8();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

void CKDatabase.modifyRecords(saving:deleting:savePolicy:atomically:completionHandler:)()
{
  sub_1883F9160();
  sub_188414720();
  v1 = [v0 implementation];
  v2 = [v0 container];
  [v2 convenienceConfiguration];

  sub_1883F8630();
  sub_1883FC628();
  sub_188465E84();

  sub_1883F8750();
}

uint64_t sub_188465E84()
{
  sub_1883F8AF0();
  sub_188410CD0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  sub_1883F4C5C(0, &qword_1EA90C668, off_1E70BA428);

  v20.is_nil = v5;
  CKModifyRecordsOperation.init(recordsToSave:recordIDsToDelete:)(v6, v20, v21);
  v8 = v7;
  [v7 setSavePolicy_];
  [v8 setAtomic_];
  sub_1883F7B88();
  *(swift_allocObject() + 16) = MEMORY[0x1E69E7CC8];
  sub_1883F7B88();
  v9 = swift_allocObject();
  sub_1883FA6A8(v9);
  v10 = sub_1883F8FF0();
  CKModifyRecordsOperation.perRecordSaveBlock.setter(v10, v11);

  v12 = sub_188405278();
  CKModifyRecordsOperation.perRecordDeleteBlock.setter(v12, v13);
  sub_188405D30();
  v14 = swift_allocObject();
  sub_1883FB4C4(v14);

  v15 = sub_1883F7AB8();
  CKModifyRecordsOperation.modifyRecordsResultBlock.setter(v15, v16);
  sub_1883FEC38(v17, sel__scheduleConvenienceOperation_wrappingDatabase_convenienceConfiguration_);

  sub_1883F8178();
}

uint64_t CKDatabase.modifyRecords(saving:deleting:savePolicy:atomically:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v5 + 80) = a4;
  *(v5 + 32) = a3;
  *(v5 + 40) = v4;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  return sub_1883F7178();
}

uint64_t sub_188466014()
{
  sub_1883F78E0();
  v1 = v0[5];
  v0[6] = [v1 implementation];
  v2 = [v1 container];
  v3 = [v2 convenienceConfiguration];
  v0[7] = v3;

  v4 = swift_task_alloc();
  v0[8] = v4;
  *v4 = v0;
  v4[1] = sub_188466114;
  v5 = sub_1883FF484(v0[2]);

  return sub_1884662A0(v5, v6, v7, v8, v9, v3);
}

uint64_t sub_188466114()
{
  sub_1883F78E0();
  sub_1883F8D90();
  v3 = v2;
  sub_1883F7B78();
  *v4 = v3;
  v5 = *v1;
  sub_1883F7110();
  *v6 = v5;
  *(v3 + 72) = v0;

  if (v0)
  {
    sub_1883F7FD8();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    v10 = *(v3 + 48);

    v11 = sub_1883F917C();

    return v12(v11);
  }
}

uint64_t sub_188466240()
{
  sub_1883F7120();
  v1 = *(v0 + 48);

  sub_1883F816C();

  return v2();
}

uint64_t sub_1884662A0(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 64) = a6;
  *(v7 + 72) = v6;
  *(v7 + 104) = a4;
  *(v7 + 48) = a3;
  *(v7 + 56) = a5;
  *(v7 + 32) = a1;
  *(v7 + 40) = a2;
  return sub_1883F7178();
}

uint64_t sub_1884662C0()
{
  sub_1883F653C();
  v1 = *(v0 + 64);
  v2 = *(v0 + 104);
  v4 = *(v0 + 48);
  v3 = *(v0 + 56);
  v5 = swift_task_alloc();
  *(v0 + 80) = v5;
  sub_18846D2E0(v5);
  *(v6 + 40) = v4;
  *(v6 + 48) = v2;
  *(v6 + 56) = v3;
  *(v6 + 64) = v1;
  v7 = swift_task_alloc();
  *(v0 + 88) = v7;
  sub_18844E6FC(&qword_1EA90D570, &qword_1886F7F90);
  sub_1883FE558();
  *v7 = v8;
  v7[1] = sub_1884663D4;
  sub_1883F9BB4();
  sub_1883F7E74();

  return MEMORY[0x1EEE6DE38](v9, v10, v11, v12, v13, v14, v15, v16);
}

uint64_t sub_1884663D4()
{
  sub_1883F7120();
  sub_1883F78EC();
  v3 = v2;
  sub_1883F7B78();
  *v4 = v3;
  v5 = *v1;
  sub_1883F7110();
  *v6 = v5;
  *(v3 + 96) = v0;

  if (!v0)
  {
  }

  sub_1883F7FD8();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1884664F0()
{
  sub_1883F7120();

  sub_1883F816C();

  return v0();
}

void CKDatabase.fetch(withQuery:inZoneWith:desiredKeys:resultsLimit:completionHandler:)()
{
  sub_1883F9160();
  v1 = [v0 implementation];
  v2 = [v0 container];
  [v2 convenienceConfiguration];

  sub_1883F8630();
  sub_1883FC628();
  sub_18846660C();

  sub_1883F8750();
}

uint64_t sub_18846660C()
{
  sub_1883F8AF0();
  sub_188410CD0();
  v1 = v0;
  v3 = v2;
  v5 = [objc_allocWithZone(CKQueryOperation) initWithQuery_];
  [v5 setZoneID_];

  CKQueryOperation.desiredKeys.setter(v6);
  [v5 setResultsLimit_];
  sub_1883F7B88();
  *(swift_allocObject() + 16) = MEMORY[0x1E69E7CC0];

  v7 = sub_1883F8FF0();
  CKQueryOperation.recordMatchedBlock.setter(v7, v8);
  sub_1883F7E80();
  v9 = swift_allocObject();
  sub_1883F8B14(v9);

  v10 = sub_188405278();
  v12 = CKQueryOperation.queryResultBlock.setter(v10, v11);
  sub_1883FEC38(v12, sel__scheduleConvenienceOperation_wrappingDatabase_convenienceConfiguration_);

  sub_1883F8178();
}

void CKDatabase.fetch(withCursor:desiredKeys:resultsLimit:completionHandler:)()
{
  sub_188404A04();
  sub_1883FDEF0();
  v1 = [v0 implementation];
  v2 = [v0 container];
  [v2 convenienceConfiguration];

  sub_1883FD9C4();
  sub_1883FDD44();
  sub_1884667E0();

  sub_1883FE1B8();
}

uint64_t sub_1884667E0()
{
  sub_1884055FC();
  v1 = v0;
  v3 = [objc_allocWithZone(CKQueryOperation) initWithCursor_];

  CKQueryOperation.desiredKeys.setter(v4);
  [v3 setResultsLimit_];
  sub_1883F7B88();
  *(swift_allocObject() + 16) = MEMORY[0x1E69E7CC0];

  v5 = sub_1883F8FF0();
  CKQueryOperation.recordMatchedBlock.setter(v5, v6);
  sub_1883F7E80();
  v7 = swift_allocObject();
  sub_1883F8B14(v7);

  v8 = sub_188405278();
  v10 = CKQueryOperation.queryResultBlock.setter(v8, v9);
  sub_1883FEC38(v10, sel__scheduleConvenienceOperation_wrappingDatabase_convenienceConfiguration_);
}

uint64_t CKDatabase.records(matching:inZoneWith:desiredKeys:resultsLimit:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return sub_1883F7178();
}

uint64_t sub_188466914()
{
  sub_1883F78E0();
  v1 = v0[6];
  sub_1884041F4([v1 implementation]);
  v2 = [v1 container];
  v3 = [v2 convenienceConfiguration];
  v0[8] = v3;

  v4 = swift_task_alloc();
  v0[9] = v4;
  *v4 = v0;
  v4[1] = sub_188466A0C;
  v5 = sub_1884007BC();

  return sub_188466B98(v5, v6, v7, v8, v9, v3);
}

uint64_t sub_188466A0C()
{
  sub_1883F78E0();
  sub_1883F8D90();
  v3 = v2;
  sub_1883F7B78();
  *v4 = v3;
  v5 = *v1;
  sub_1883F7110();
  *v6 = v5;
  *(v3 + 80) = v0;

  if (v0)
  {
    sub_1883F7FD8();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    v10 = *(v3 + 56);

    v11 = sub_1883F917C();

    return v12(v11);
  }
}

uint64_t sub_188466B38()
{
  sub_1883F7120();
  v1 = *(v0 + 56);

  sub_1883F816C();

  return v2();
}

uint64_t sub_188466B98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[9] = a6;
  v7[10] = v6;
  v7[7] = a4;
  v7[8] = a5;
  v7[5] = a2;
  v7[6] = a3;
  v7[4] = a1;
  return sub_1883F7178();
}

uint64_t sub_188466BB8()
{
  v2 = *(v0 + 72);
  v1 = *(v0 + 80);
  v3 = *(v0 + 48);
  v16 = *(v0 + 32);
  v17 = *(v0 + 56);
  v4 = swift_task_alloc();
  *(v0 + 88) = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v16;
  *(v4 + 40) = v3;
  *(v4 + 48) = v17;
  *(v4 + 64) = v2;
  v5 = swift_task_alloc();
  *(v0 + 96) = v5;
  sub_18844E6FC(&qword_1EA90D560, &qword_1886F7F80);
  sub_1883FE558();
  *v5 = v6;
  v5[1] = sub_188466CD8;
  sub_1883F9BB4();
  sub_1883F7E74();

  return MEMORY[0x1EEE6DE38](v7, v8, v9, v10, v11, v12, v13, v14);
}

uint64_t sub_188466CD8()
{
  sub_1883F7120();
  sub_1883F78EC();
  v3 = v2;
  sub_1883F7B78();
  *v4 = v3;
  v5 = *v1;
  sub_1883F7110();
  *v6 = v5;
  *(v3 + 104) = v0;

  if (!v0)
  {
  }

  sub_1883F7FD8();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_188466DD8()
{
  sub_1883F7120();

  sub_1883F816C();

  return v0();
}

uint64_t CKDatabase.records(continuingMatchFrom:desiredKeys:resultsLimit:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return sub_1883F7178();
}

uint64_t sub_188466E4C()
{
  sub_1883F78E0();
  v1 = v0[5];
  v0[6] = [v1 implementation];
  v2 = [v1 container];
  v3 = [v2 convenienceConfiguration];
  v0[7] = v3;

  v4 = swift_task_alloc();
  v0[8] = v4;
  *v4 = v0;
  v4[1] = sub_188466F48;
  v5 = sub_1883FF484(v0[2]);

  return sub_188467074(v5, v6, v7, v8, v3);
}

uint64_t sub_188466F48()
{
  sub_1883F78E0();
  sub_1883F8D90();
  v3 = v2;
  sub_1883F7B78();
  *v4 = v3;
  v5 = *v1;
  sub_1883F7110();
  *v6 = v5;
  *(v3 + 72) = v0;

  if (v0)
  {
    sub_1883F7FD8();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    v10 = *(v3 + 48);

    v11 = sub_1883F917C();

    return v12(v11);
  }
}

uint64_t sub_188467074(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[8] = a5;
  v6[9] = v5;
  v6[6] = a3;
  v6[7] = a4;
  v6[4] = a1;
  v6[5] = a2;
  return sub_1883F7178();
}

uint64_t sub_188467090()
{
  sub_1883FB4E4();
  v19 = v1;
  sub_1883F653C();
  v3 = *(v0 + 64);
  v2 = *(v0 + 72);
  v18 = *(v0 + 48);
  v5 = *(v0 + 32);
  v4 = *(v0 + 40);
  v6 = swift_task_alloc();
  *(v0 + 80) = v6;
  *(v6 + 16) = v2;
  *(v6 + 24) = v5;
  *(v6 + 32) = v4;
  *(v6 + 40) = v18;
  *(v6 + 56) = v3;
  v7 = swift_task_alloc();
  *(v0 + 88) = v7;
  sub_18844E6FC(&qword_1EA90D560, &qword_1886F7F80);
  sub_1883FE558();
  *v7 = v8;
  v7[1] = sub_1884671A4;
  sub_1883F9BB4();
  sub_1883F7E74();

  return MEMORY[0x1EEE6DE38](v9, v10, v11, v12, v13, v14, v15, v16);
}

uint64_t sub_1884671A4()
{
  sub_1883F7120();
  sub_1883F78EC();
  v3 = v2;
  sub_1883F7B78();
  *v4 = v3;
  v5 = *v1;
  sub_1883F7110();
  *v6 = v5;
  *(v3 + 96) = v0;

  if (!v0)
  {
  }

  sub_1883F7FD8();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1884672BC()
{
  sub_1884057B8();
  sub_1883F4C5C(0, &qword_1EA90C108, off_1E70BA2F8);

  v0 = sub_18846AF9C();
  sub_1883F7B88();
  *(swift_allocObject() + 16) = MEMORY[0x1E69E7CC8];

  v1 = sub_1883F8FF0();
  CKFetchRecordZonesOperation.perRecordZoneResultBlock.setter(v1, v2);
  sub_1883F7E80();
  v3 = swift_allocObject();
  sub_1883F8B14(v3);

  v4 = sub_188405278();
  v6 = CKFetchRecordZonesOperation.fetchRecordZonesResultBlock.setter(v4, v5);
  sub_1883FEC38(v6, sel__scheduleConvenienceOperation_wrappingDatabase_convenienceConfiguration_);
}

uint64_t CKDatabase.recordZones(for:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return sub_1883F7178();
}

uint64_t sub_1884673CC()
{
  sub_1883F78E0();
  v1 = v0[3];
  v0[4] = [v1 implementation];
  v2 = [v1 container];
  v3 = [v2 convenienceConfiguration];
  v0[5] = v3;

  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = sub_1884674C4;
  v5 = sub_1883FF484(v0[2]);

  return sub_1884675F4(v5, v6, v3);
}

uint64_t sub_1884674C4()
{
  sub_1883F78E0();
  sub_1883F78EC();
  v3 = v2;
  sub_1883F7B78();
  *v4 = v3;
  v5 = *v1;
  sub_1883F7110();
  *v6 = v5;
  *(v3 + 56) = v0;

  if (v0)
  {
    sub_1883F7FD8();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    v10 = *(v3 + 32);

    v11 = sub_1883FA044();

    return v12(v11);
  }
}

uint64_t sub_1884675F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  return sub_1883F7178();
}

uint64_t sub_18846760C()
{
  sub_1883F78E0();
  v1 = swift_task_alloc();
  v2 = sub_1884041F4(v1);
  sub_18846D2FC(v2);
  v3 = swift_task_alloc();
  *(v0 + 64) = v3;
  sub_18844E6FC(&qword_1EA90D550, &qword_1886F7F70);
  sub_1883FE558();
  *v3 = v4;
  v3[1] = sub_1884676F8;
  sub_1883F9BB4();
  sub_1883F7E74();

  return MEMORY[0x1EEE6DE38](v5, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_1884676F8()
{
  sub_1883F7120();
  sub_1883F78EC();
  v3 = v2;
  sub_1883F7B78();
  *v4 = v3;
  v5 = *v1;
  sub_1883F7110();
  *v6 = v5;
  *(v3 + 72) = v0;

  if (!v0)
  {
  }

  sub_1883F7FD8();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

void CKDatabase.modifyRecordZones(saving:deleting:completionHandler:)()
{
  sub_188404A04();
  sub_1883FDE94();
  v1 = [v0 implementation];
  v2 = [v0 container];
  [v2 convenienceConfiguration];

  sub_1883FDD44();
  sub_1884678B4();

  sub_1883FE1B8();
}

uint64_t sub_1884678B4()
{
  sub_1883F8AF0();
  sub_1884055FC();
  v1 = v0;
  v3 = v2;
  sub_1883F4C5C(0, &qword_1EA90C5E8, off_1E70BA418);

  v18.is_nil = v3;
  CKModifyRecordZonesOperation.init(recordZonesToSave:recordZoneIDsToDelete:)(v4, v18, v19);
  v6 = v5;
  [v5 setMarkZonesAsUserPurged_];
  sub_1883F7B88();
  *(swift_allocObject() + 16) = MEMORY[0x1E69E7CC8];
  sub_1883F7B88();
  v7 = swift_allocObject();
  sub_1883FA6A8(v7);
  v8 = sub_1883F8FF0();
  CKModifyRecordZonesOperation.perRecordZoneSaveBlock.setter(v8, v9);

  v10 = sub_188405278();
  CKModifyRecordZonesOperation.perRecordZoneDeleteBlock.setter(v10, v11);
  sub_188405D30();
  v12 = swift_allocObject();
  sub_1883FB4C4(v12);

  v13 = sub_1883F7AB8();
  CKModifyRecordZonesOperation.modifyRecordZonesResultBlock.setter(v13, v14);
  sub_1883FEC38(v15, sel__scheduleConvenienceOperation_wrappingDatabase_convenienceConfiguration_);

  sub_1883F8178();
}

uint64_t CKDatabase.modifyRecordZones(saving:deleting:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return sub_1883F7178();
}

uint64_t sub_188467A28()
{
  sub_1883F78E0();
  v2 = *(v1 + 32);
  sub_1883F856C([v2 implementation]);
  sub_18840C12C([objc_msgSend(v2 container)]);
  v3 = swift_task_alloc();
  v4 = sub_1884101CC(v3);
  *v4 = v5;
  v4[1] = sub_188467B14;
  v6 = sub_1884007BC();

  return sub_188467C40(v6, v7, 0, v8, v0);
}

uint64_t sub_188467B14()
{
  sub_1883F78E0();
  sub_1883F8D90();
  v3 = v2;
  sub_1883F7B78();
  *v4 = v3;
  v5 = *v1;
  sub_1883F7110();
  *v6 = v5;
  *(v3 + 64) = v0;

  if (v0)
  {
    sub_1883F7FD8();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    v10 = *(v3 + 40);

    v11 = sub_1883F917C();

    return v12(v11);
  }
}

uint64_t sub_188467C40(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 56) = a5;
  *(v6 + 64) = v5;
  *(v6 + 40) = a2;
  *(v6 + 48) = a4;
  *(v6 + 96) = a3;
  *(v6 + 32) = a1;
  return sub_1883F7178();
}

uint64_t sub_188467C60()
{
  sub_1883FB4AC();
  v1 = *(v0 + 56);
  v2 = *(v0 + 48);
  v3 = *(v0 + 96);
  v4 = swift_task_alloc();
  v5 = sub_188404A1C(v4);
  sub_18846D2E0(v5);
  *(v6 + 40) = v3;
  *(v6 + 48) = v2;
  *(v6 + 56) = v1;
  v7 = swift_task_alloc();
  *(v0 + 80) = v7;
  sub_18844E6FC(&qword_1EA90D540, &qword_1886F7F60);
  sub_1883FE558();
  *v7 = v8;
  v7[1] = sub_188467D60;
  sub_1883F9BB4();
  sub_1883F7E74();
  sub_1883FB5FC();

  return MEMORY[0x1EEE6DE38](v9, v10, v11, v12, v13, v14, v15, v16);
}

uint64_t sub_188467D60()
{
  sub_1883F7120();
  sub_1883F78EC();
  v3 = v2;
  sub_1883F7B78();
  *v4 = v3;
  v5 = *v1;
  sub_1883F7110();
  *v6 = v5;
  *(v3 + 88) = v0;

  if (!v0)
  {
  }

  sub_1883F7FD8();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_188467E60()
{
  sub_1883F7120();

  sub_1883F816C();

  return v0();
}

uint64_t CKDatabase.modifyRecordZones(saving:deleting:markZonesAsUserPurged:)(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 24) = a2;
  *(v4 + 32) = v3;
  *(v4 + 72) = a3;
  *(v4 + 16) = a1;
  return sub_1883F7178();
}

uint64_t sub_188467ED8()
{
  sub_1883F78E0();
  v2 = *(v1 + 32);
  sub_1883F856C([v2 implementation]);
  sub_18840C12C([objc_msgSend(v2 container)]);
  v3 = swift_task_alloc();
  v4 = sub_1884101CC(v3);
  *v4 = v5;
  v4[1] = sub_188467FC4;
  v6 = sub_1884007BC();

  return sub_188467C40(v6, v7, v8, v9, v0);
}

uint64_t sub_188467FC4()
{
  sub_1883F78E0();
  sub_1883F8D90();
  v3 = v2;
  sub_1883F7B78();
  *v4 = v3;
  v5 = *v1;
  sub_1883F7110();
  *v6 = v5;
  *(v3 + 64) = v0;

  if (v0)
  {
    sub_1883F7FD8();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    v10 = *(v3 + 40);

    v11 = sub_1883F917C();

    return v12(v11);
  }
}

void sub_188468108()
{
  sub_188404A04();
  sub_1883FDE94();
  v4 = v3;
  v6 = v5;
  v7 = [v1 implementation];
  v8 = [v1 container];
  v11 = [v8 convenienceConfiguration];

  v0(v6, v1, v11, v4, v2);
  sub_1883FE1B8();
}

uint64_t sub_1884681CC()
{
  sub_1884057B8();
  sub_1883F4C5C(0, &qword_1EA90D538, off_1E70BA340);

  CKFetchSubscriptionsOperation.init(subscriptionIDs:)(v1, v0);
  v3 = v2;
  sub_1883F7B88();
  *(swift_allocObject() + 16) = MEMORY[0x1E69E7CC8];

  v4 = sub_1883F8FF0();
  CKFetchSubscriptionsOperation.perSubscriptionResultBlock.setter(v4, v5);
  sub_1883F7E80();
  v6 = swift_allocObject();
  sub_1883F8B14(v6);

  v7 = sub_188405278();
  v9 = CKFetchSubscriptionsOperation.fetchSubscriptionsResultBlock.setter(v7, v8);
  sub_1883FEC38(v9, sel__scheduleConvenienceOperation_wrappingDatabase_convenienceConfiguration_);
}

uint64_t CKDatabase.subscriptions(for:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return sub_1883F7178();
}

uint64_t sub_1884682DC()
{
  sub_1883F78E0();
  v1 = v0[3];
  v0[4] = [v1 implementation];
  v2 = [v1 container];
  v3 = [v2 convenienceConfiguration];
  v0[5] = v3;

  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = sub_1884683D4;
  v5 = sub_1883FF484(v0[2]);

  return sub_188468504(v5, v6, v3);
}

uint64_t sub_1884683D4()
{
  sub_1883F78E0();
  sub_1883F78EC();
  v3 = v2;
  sub_1883F7B78();
  *v4 = v3;
  v5 = *v1;
  sub_1883F7110();
  *v6 = v5;
  *(v3 + 56) = v0;

  if (v0)
  {
    sub_1883F7FD8();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    v10 = *(v3 + 32);

    v11 = sub_1883FA044();

    return v12(v11);
  }
}

uint64_t sub_188468504(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  return sub_1883F7178();
}

uint64_t sub_18846851C()
{
  sub_1883F78E0();
  v1 = swift_task_alloc();
  v2 = sub_1884041F4(v1);
  sub_18846D2FC(v2);
  v3 = swift_task_alloc();
  *(v0 + 64) = v3;
  sub_18844E6FC(&qword_1EA90D528, &qword_1886F7F50);
  sub_1883FE558();
  *v3 = v4;
  v3[1] = sub_18845D7E4;
  sub_1883F9BB4();
  sub_1883F7E74();

  return MEMORY[0x1EEE6DE38](v5, v6, v7, v8, v9, v10, v11, v12);
}

void sub_188468620()
{
  sub_188404A04();
  sub_1883FDEF0();
  v2 = [v1 implementation];
  v3 = [v1 container];
  [v3 convenienceConfiguration];

  v4 = sub_1883FD9C4();
  v0(v4);

  sub_1883FE1B8();
}

uint64_t sub_1884686DC()
{
  sub_1883F8AF0();
  sub_1883FEFBC();
  v1 = v0;
  sub_1883F4C5C(0, &qword_1EA90C338, off_1E70BA438);

  v16.is_nil = v1;
  CKModifySubscriptionsOperation.init(subscriptionsToSave:subscriptionIDsToDelete:)(v2, v16, v17);
  v4 = v3;
  sub_1883F7B88();
  *(swift_allocObject() + 16) = MEMORY[0x1E69E7CC8];
  sub_1883F7B88();
  v5 = swift_allocObject();
  sub_1883FA6A8(v5);
  v6 = sub_1883F8FF0();
  CKModifySubscriptionsOperation.perSubscriptionSaveBlock.setter(v6, v7);

  v8 = sub_188405278();
  CKModifySubscriptionsOperation.perSubscriptionDeleteBlock.setter(v8, v9);
  sub_188405D30();
  v10 = swift_allocObject();
  sub_1883FB4C4(v10);

  v11 = sub_1883F7AB8();
  CKModifySubscriptionsOperation.modifySubscriptionsResultBlock.setter(v11, v12);
  sub_1883FEC38(v13, sel__scheduleConvenienceOperation_wrappingDatabase_convenienceConfiguration_);

  sub_1883F8178();
}

uint64_t CKDatabase.modifySubscriptions(saving:deleting:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return sub_1883F7178();
}

uint64_t sub_18846883C()
{
  sub_1883F78E0();
  v2 = *(v1 + 32);
  sub_1883F856C([v2 implementation]);
  sub_18840C12C([objc_msgSend(v2 container)]);
  v3 = swift_task_alloc();
  v4 = sub_1884101CC(v3);
  *v4 = v5;
  v4[1] = sub_188467B14;
  v6 = sub_1884007BC();

  return sub_188468924(v6, v7, v8, v0);
}

uint64_t sub_188468924(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[7] = a4;
  v5[8] = v4;
  v5[5] = a2;
  v5[6] = a3;
  v5[4] = a1;
  return sub_1883F7178();
}

uint64_t sub_188468940()
{
  sub_1883FB4AC();
  v1 = v0[7];
  v2 = v0[6];
  v3 = swift_task_alloc();
  v4 = sub_188404A1C(v3);
  sub_18846D2E0(v4);
  *(v5 + 40) = v2;
  *(v5 + 48) = v1;
  v6 = swift_task_alloc();
  v0[10] = v6;
  sub_18844E6FC(&qword_1EA90D518, &qword_1886F7F40);
  sub_1883FE558();
  *v6 = v7;
  v6[1] = sub_188468A3C;
  sub_1883F9BB4();
  sub_1883F7E74();

  return MEMORY[0x1EEE6DE38](v8, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t sub_188468A3C()
{
  sub_1883F7120();
  sub_1883F78EC();
  v3 = v2;
  sub_1883F7B78();
  *v4 = v3;
  v5 = *v1;
  sub_1883F7110();
  *v6 = v5;
  *(v3 + 88) = v0;

  if (!v0)
  {
  }

  sub_1883F7FD8();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

void CKDatabase.DatabaseChange.Modification.zoneID.setter()
{
  sub_1883FE298();

  *v1 = v0;
}

uint64_t CKDatabase.DatabaseChange.Modification.zoneID.modify()
{
  sub_1883FE298();
  *v1 = v2;
  v1[1] = v0;
  v3 = v2;
  return sub_1883FF2AC();
}

id sub_188468BBC@<X0>(void *a1@<X8>)
{
  result = CKDatabase.DatabaseChange.Deletion.zoneID.getter();
  *a1 = result;
  return result;
}

void CKDatabase.DatabaseChange.Deletion.zoneID.setter()
{
  sub_1883FE298();

  *v1 = v0;
}

uint64_t CKDatabase.DatabaseChange.Deletion.zoneID.modify()
{
  sub_1883FE298();
  v1[1] = v0;
  v1[2] = v2;
  *v1 = v2;
  v3 = v2;
  return sub_1883FF2AC();
}

void sub_188468CAC(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 8);
  v5 = *a1;
  v6 = v3;
  CKDatabase.DatabaseChange.Deletion.reason.getter(&v4);
  *a2 = v4;
}

uint64_t (*CKDatabase.DatabaseChange.Deletion.reason.modify(uint64_t a1))()
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 8);
  return sub_188468D68;
}

Swift::Int CKDatabase.DatabaseChange.Deletion.Reason.hashValue.getter()
{
  v1 = *v0;
  sub_1883FEB6C();
  MEMORY[0x18CFD5EB0](v1);
  return Hasher._finalize()();
}

uint64_t CKDatabase.DatabaseChange.Deletion.init(zoneID:reason:)@<X0>(uint64_t result@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = result;
  *(a3 + 8) = v3;
  return result;
}

void CKDatabase.fetchDatabaseChanges(since:resultsLimit:completionHandler:)()
{
  sub_188404A04();
  sub_1883F999C();
  v1 = [v0 implementation];
  v2 = [v0 container];
  [v2 convenienceConfiguration];

  sub_1883FD9C4();
  sub_1883FDD44();
  sub_1884284C0(v3, v4, v5, v6, v7, v8, v9);

  sub_1883FE1B8();
}

uint64_t sub_188468ED8()
{
  sub_1883FB4AC();
  sub_1883F78EC();
  v3 = v2;
  sub_1883F7B78();
  *v4 = v3;
  v5 = *v1;
  sub_1883F7110();
  *v6 = v5;
  *(v3 + 64) = v0;

  if (!v0)
  {
    v11 = *(v3 + 40);

    sub_1883FDC40();
    sub_1883FB5FC();

    __asm { BRAA            X5, X16 }
  }

  sub_1883F7FD8();
  sub_1883FB5FC();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_188469018()
{
  sub_1883F7120();
  v1 = *(v0 + 40);

  sub_1883F816C();

  return v2();
}

uint64_t sub_18846907C()
{
  sub_1883F7120();
  sub_1883F78EC();
  v3 = v2;
  sub_1883F7B78();
  *v4 = v3;
  v5 = *v1;
  sub_1883F7110();
  *v6 = v5;
  *(v3 + 104) = v0;

  if (!v0)
  {
  }

  sub_1883F7FD8();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1884691A0()
{
  sub_1883F7120();

  sub_1883F816C();

  return v0();
}

uint64_t CKDatabase.RecordZoneChange.Modification.record.modify()
{
  sub_1883FE298();
  *v1 = v2;
  v1[1] = v0;
  v3 = v2;
  return sub_1883FF2AC();
}

id sub_188469248@<X0>(void *a1@<X8>)
{
  result = CKDatabase.RecordZoneChange.Deletion.recordID.getter();
  *a1 = result;
  return result;
}

void CKDatabase.RecordZoneChange.Deletion.recordID.setter()
{
  sub_1883FE298();

  *v1 = v0;
}

uint64_t CKDatabase.RecordZoneChange.Deletion.recordID.modify()
{
  sub_1883FE298();
  v1[1] = v0;
  v1[2] = v2;
  *v1 = v2;
  v3 = v2;
  return sub_1883FF2AC();
}

void sub_188469328(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *a1;
  if (a2)
  {
    v5 = v4;

    *v2 = v5;
  }

  else
  {

    *v2 = v4;
  }
}

uint64_t CKDatabase.RecordZoneChange.Deletion.recordType.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t sub_1884693D0@<X0>(uint64_t *a1@<X8>)
{
  result = CKDatabase.RecordZoneChange.Deletion.recordType.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_188469414(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return CKDatabase.RecordZoneChange.Deletion.recordType.setter(v1, v2);
}

uint64_t CKDatabase.RecordZoneChange.Deletion.recordType.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t CKDatabase.RecordZoneChange.Deletion.recordType.modify(void *a1)
{
  v4 = *(v1 + 8);
  v3 = *(v1 + 16);
  a1[2] = v1;
  a1[3] = v3;
  *a1 = v4;
  a1[1] = v3;

  return sub_1883FF2AC();
}

uint64_t sub_1884694D8(uint64_t *a1, char a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  if (a2)
  {

    *(v4 + 8) = v3;
    *(v4 + 16) = v2;
  }

  else
  {

    *(v4 + 8) = v3;
    *(v4 + 16) = v2;
  }

  return result;
}

uint64_t CKDatabase.RecordZoneChange.Deletion.init(recordID:recordType:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t CKDatabase.RecordZoneChange.ZoneAttributesModification.zone.modify()
{
  sub_1883FE298();
  *v1 = v2;
  v1[1] = v0;
  v3 = v2;
  return sub_1883FF2AC();
}

void sub_18846959C(uint64_t a1, char a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *v2;
  if (a2)
  {
    v5 = v3;

    *v2 = v5;
  }

  else
  {

    *v2 = v3;
  }
}

uint64_t sub_1884696F4(void *a1, void *a2, Swift::Int a3, NSData *a4, char a5, void (*a6)(uint64_t a1, void *a2, void *a3, void *a4), void *a7, uint64_t a8, uint64_t a9)
{
  if (a5)
  {
    v12 = 0;
  }

  else
  {
    v12 = a4;
  }

  sub_1883F4C5C(0, &qword_1EA90CA88, off_1E70BA2D8);
  v13 = a2;

  v124.value.super.isa = a2;
  v124.value._data = v12;
  v124.is_nil = 0;
  v122.value = a3;
  CKFetchRecordZoneChangesConfiguration.init(previousServerChangeToken:resultsLimit:desiredKeys:)(v14, v124, v122, v123);
  v16 = v15;
  sub_1883F4C5C(0, &qword_1EA90C760, off_1E70BA2E0);
  sub_18844E6FC(&qword_1EA90D4F8, &qword_1886F7F20);
  sub_1883F7E80();
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1886F79A0;
  *(v17 + 32) = a1;
  sub_18844E6FC(&qword_1EA90D500, &qword_1886F7F28);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1886F7400;
  *(inited + 32) = a1;
  *(inited + 40) = v16;
  sub_1883F4C5C(0, &qword_1ED4B5CC8, off_1E70BA650);
  sub_18841A9C8();
  v19 = a1;
  v20 = v16;
  v120.is_nil = Dictionary.init(dictionaryLiteral:)();
  v120.value._rawValue = v17;
  CKFetchRecordZoneChangesOperation.init(recordZoneIDs:configurationsByRecordZoneID:)(v21, v120, v121);
  v23 = v22;
  [v22 setFetchAllChanges_];
  sub_1883F7B88();
  v24 = swift_allocObject();
  *(v24 + 16) = MEMORY[0x1E69E7CC8];
  sub_1883F7B88();
  v25 = swift_allocObject();
  *(v25 + 16) = MEMORY[0x1E69E7CC0];
  sub_1883F7B88();
  v26 = swift_allocObject();
  *(v26 + 16) = 0;
  v27 = swift_allocObject();
  *(v27 + 16) = 0;
  sub_1883F7B88();
  v28 = swift_allocObject();
  *(v28 + 16) = 0;

  v29 = sub_188405278();
  CKFetchRecordZoneChangesOperation.recordWasChangedBlock.setter(v29, v30, v31, v32, v33, v34, v35, v36, a8, v65, a6, a7, v80, v84, v88, v92, v96, v100, v104, v108, v112, v116);

  v37 = sub_1883F7AB8();
  CKFetchRecordZoneChangesOperation.recordWithIDWasDeletedBlock.setter(v37, v38, v39, v40, v41, v42, v43, v44, v62, v66, v71, v76, v81, v85, v89, v93, v97, v101, v105, v109, v113, v117);
  sub_188405D30();
  v45 = swift_allocObject();
  v45[2] = v19;
  v45[3] = v26;
  v45[4] = v27;
  v45[5] = v28;
  v46 = v19;

  CKFetchRecordZoneChangesOperation.recordZoneFetchResultBlock.setter(sub_18846CA00, v45, v47, v48, v49, v50, v51, v52, v63, v67, v72, v77, v82, v86, v90, v94, v98, v102, v106, v110, v114, v118);
  v53 = swift_allocObject();
  v53[2] = v64;
  v53[3] = a9;
  v53[4] = v28;
  v53[5] = v26;
  v53[6] = v24;
  v53[7] = v25;
  v53[8] = v27;

  CKFetchRecordZoneChangesOperation.fetchRecordZoneChangesResultBlock.setter(sub_18846CA30, v53, v54, v55, v56, v57, v58, v59, v64, v68, v73, v78, v83, v87, v91, v95, v99, v103, v107, v111, v115, v119);
  [v69 _scheduleConvenienceOperation_wrappingDatabase_convenienceConfiguration_];
}

uint64_t CKDatabase.recordZoneChanges(inZoneWith:since:desiredKeys:resultsLimit:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 40) = a4;
  *(v6 + 48) = v5;
  *(v6 + 88) = a5;
  *(v6 + 24) = a2;
  *(v6 + 32) = a3;
  *(v6 + 16) = a1;
  return sub_1883F7178();
}

uint64_t sub_188469A84()
{
  sub_1883F78E0();
  v1 = v0[6];
  sub_1884041F4([v1 implementation]);
  v2 = [v1 container];
  v3 = [v2 convenienceConfiguration];
  v0[8] = v3;

  v4 = swift_task_alloc();
  v0[9] = v4;
  *v4 = v0;
  v4[1] = sub_188469B88;
  v5 = sub_1883FF484(v0[2]);

  return sub_188469D2C(v5, v6, v7, v8, v9, v10, v3);
}

uint64_t sub_188469B88()
{
  sub_1883FB4AC();
  sub_1883F78EC();
  v3 = v2;
  sub_1883F7B78();
  *v4 = v3;
  v5 = *v1;
  sub_1883F7110();
  *v6 = v5;
  *(v3 + 80) = v0;

  if (!v0)
  {
    v11 = *(v3 + 56);

    sub_1883FDC40();
    sub_1883FB5FC();

    __asm { BRAA            X5, X16 }
  }

  sub_1883F7FD8();
  sub_1883FB5FC();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_188469CC8()
{
  sub_1883F7120();
  v1 = *(v0 + 56);

  sub_1883F816C();

  return v2();
}

uint64_t sub_188469D2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  *(v8 + 88) = a7;
  *(v8 + 96) = v7;
  *(v8 + 72) = a4;
  *(v8 + 80) = a6;
  *(v8 + 41) = a5;
  *(v8 + 56) = a2;
  *(v8 + 64) = a3;
  *(v8 + 48) = a1;
  return sub_1883F7178();
}

uint64_t sub_188469D50()
{
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  v3 = *(v0 + 41);
  v5 = *(v0 + 72);
  v4 = *(v0 + 80);
  v19 = *(v0 + 56);
  v6 = *(v0 + 48);
  v7 = swift_task_alloc();
  *(v0 + 104) = v7;
  *(v7 + 16) = v1;
  *(v7 + 24) = v6;
  *(v7 + 32) = v19;
  *(v7 + 48) = v5;
  *(v7 + 56) = v3 & 1;
  *(v7 + 64) = v4;
  *(v7 + 72) = v2;
  v8 = swift_task_alloc();
  *(v0 + 112) = v8;
  sub_18844E6FC(&qword_1EA90D4E8, &qword_1886F7F10);
  sub_1883FE558();
  *v8 = v9;
  v8[1] = sub_188469E88;
  sub_1883F9BB4();
  sub_1883F7E74();

  return MEMORY[0x1EEE6DE38](v10, v11, v12, v13, v14, v15, v16, v17);
}

uint64_t sub_188469E88()
{
  sub_1883F7120();
  sub_1883F78EC();
  v3 = v2;
  sub_1883F7B78();
  *v4 = v3;
  v5 = *v1;
  sub_1883F7110();
  *v6 = v5;
  *(v3 + 120) = v0;

  if (!v0)
  {
  }

  sub_1883F7FD8();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_188469F88()
{
  sub_1883F7120();

  sub_1883F816C();

  return v0();
}

uint64_t static CKDatabase.DatabaseChange.Deletion.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  sub_1883F4C5C(0, &qword_1EA90CA80, 0x1E69E58C0);
  return sub_1883FAA9C() & (v2 == v3);
}

uint64_t CKDatabase.DatabaseChange.Deletion.hash(into:)()
{
  sub_1883FE298();
  v1 = *(v0 + 8);
  NSObject.hash(into:)();
  return MEMORY[0x18CFD5EB0](v1);
}

Swift::Int CKDatabase.DatabaseChange.Deletion.hashValue.getter()
{
  v1 = *(v0 + 8);
  sub_1883FEB6C();
  NSObject.hash(into:)();
  MEMORY[0x18CFD5EB0](v1);
  return Hasher._finalize()();
}

Swift::Int sub_18846A158(uint64_t a1)
{
  v2 = *(v1 + 8);
  Hasher.init(_seed:)();
  NSObject.hash(into:)();
  MEMORY[0x18CFD5EB0](v2);
  return Hasher._finalize()();
}

Swift::Int _sSo10CKDatabaseC8CloudKitE14DatabaseChangeO12ModificationV9hashValueSivg_0()
{
  sub_1883FEB6C();
  NSObject.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_18846A1F0(uint64_t a1)
{
  Hasher.init(_seed:)();
  NSObject.hash(into:)();
  return Hasher._finalize()();
}

uint64_t static CKDatabase.RecordZoneChange.Deletion.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a2[1];
  v5 = a2[2];
  sub_1883F4C5C(0, &qword_1EA90CA80, 0x1E69E58C0);
  if ((static NSObject.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  if (v2 == v4 && v3 == v5)
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t CKDatabase.RecordZoneChange.Deletion.hash(into:)(uint64_t a1)
{
  NSObject.hash(into:)();

  return String.hash(into:)();
}

Swift::Int CKDatabase.RecordZoneChange.Deletion.hashValue.getter()
{
  sub_1883FEB6C();
  NSObject.hash(into:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_18846A3A8(uint64_t a1)
{
  Hasher.init(_seed:)();
  NSObject.hash(into:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t CKDatabase.DatabaseChange.Modification.description.getter()
{
  v1 = *v0;
  sub_188403858();
  v2 = _typeName(_:qualified:)();
  MEMORY[0x18CFD5140](v2);

  MEMORY[0x18CFD5140](0x3D656E6F7A20, 0xE600000000000000);
  v3 = v1;
  v4 = [v3 description];
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  MEMORY[0x18CFD5140](v5, v7);

  sub_1883FA058();
  return v9;
}

void CKDatabase.DatabaseChange.Deletion.description.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, unint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_188404A64();
  v24 = *v23;
  _StringGuts.grow(_:)(22);
  MEMORY[0x18CFD5140](60, 0xE100000000000000);
  v25 = _typeName(_:qualified:)();
  MEMORY[0x18CFD5140](v25);

  MEMORY[0x18CFD5140](0x3D656E6F7A20, 0xE600000000000000);
  v26 = v24;
  v27 = [v26 description];
  v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v30 = v29;

  MEMORY[0x18CFD5140](v28, v30);

  MEMORY[0x18CFD5140](0x3D6E6F7361657220, 0xE800000000000000);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x18CFD5140](62, 0xE100000000000000);
  sub_188410B70();
}

uint64_t CKDatabase.RecordZoneChange.Modification.description.getter()
{
  v1 = *v0;
  sub_188403858();
  v2 = _typeName(_:qualified:)();
  MEMORY[0x18CFD5140](v2);

  v3 = sub_188402E68();
  MEMORY[0x18CFD5140](v3 & 0xFFFFFFFFFFFFLL | 0x3D64000000000000, 0xE800000000000000);
  v4 = [v1 conciseDescription];
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  MEMORY[0x18CFD5140](v5, v7);

  sub_1883FA058();
  return v9;
}

uint64_t CKDatabase.RecordZoneChange.Deletion.description.getter()
{
  v1 = *v0;
  _StringGuts.grow(_:)(30);

  sub_188403858();
  v2 = _typeName(_:qualified:)();
  MEMORY[0x18CFD5140](v2);

  v3 = sub_188402E68();
  MEMORY[0x18CFD5140](v3 & 0xFFFFFFFFFFFFLL | 0x4964000000000000, 0xEA00000000003D44);
  v4 = v1;
  v5 = [v4 description];
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  MEMORY[0x18CFD5140](v6, v8);

  v9 = sub_188402E68();
  MEMORY[0x18CFD5140](v9 & 0xFFFFFFFFFFFFLL | 0x5464000000000000, 0xEC0000003D657079);

  v10 = sub_1883F7E8C();
  MEMORY[0x18CFD5140](v10);

  sub_1883FA058();
  return 0;
}

uint64_t sub_18846A7F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15[1] = a6;
  v7 = sub_18844E6FC(&qword_1EA90D588, &unk_1886F7FA8);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = v15 - v10;
  (*(v8 + 16))(v15 - v10, a1, v7, v9);
  v12 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v13 = swift_allocObject();
  (*(v8 + 32))(v13 + v12, v11, v7);
  sub_18846586C();
}

uint64_t sub_18846A96C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17[2] = a7;
  v17[3] = a8;
  v17[1] = a2;
  v9 = sub_18844E6FC(&qword_1EA90D578, &qword_1886F7F98);
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = v17 - v12;
  (*(v10 + 16))(v17 - v12, a1, v9, v11);
  v14 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v15 = swift_allocObject();
  (*(v10 + 32))(v15 + v14, v13, v9);
  sub_188465E84();
}

void sub_18846AAEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_188404A64();
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  sub_188410E90(v20 + 16, v24);
  v28 = v27;
  sub_188449260(v25);
  sub_188476860();
  v29 = *(*(v21 + 16) + 16);
  sub_188476AAC(v29);
  v30 = *(v21 + 16);
  *(v30 + 16) = v29 + 1;
  v31 = v30 + 24 * v29;
  *(v31 + 32) = v28;
  *(v31 + 40) = v25;
  *(v31 + 48) = v23 & 1;
  *(v21 + 16) = v30;
  swift_endAccess();
  sub_188410B70();
}

void sub_18846AB8C()
{
  sub_188404A64();
  v5 = v4;
  v6 = v2;
  v7 = v1;
  if (v2)
  {
    v8 = 0;
    v9 = v1;
  }

  else
  {
    sub_18840FAEC(v1, v2, v3, v4);
    v9 = *(v0 + 16);

    v8 = v7;
  }

  sub_188449260(v7);
  v5(v9, v8, v6 & 1);
  sub_18846CFC0(v9, v8, v6 & 1);
  sub_188410B70();
}

uint64_t sub_18846AC1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17[2] = a7;
  v17[3] = a8;
  v17[1] = a2;
  v9 = sub_18844E6FC(&qword_1EA90D568, &qword_1886F7F88);
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = v17 - v12;
  (*(v10 + 16))(v17 - v12, a1, v9, v11);
  v14 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v15 = swift_allocObject();
  (*(v10 + 32))(v15 + v14, v13, v9);
  sub_18846660C();
}

uint64_t sub_18846AD9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v16[0] = a2;
  v16[1] = a7;
  v8 = sub_18844E6FC(&qword_1EA90D568, &qword_1886F7F88);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = v16 - v11;
  (*(v9 + 16))(v16 - v11, a1, v8, v10);
  v13 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v14 = swift_allocObject();
  (*(v9 + 32))(v14 + v13, v12, v8);
  sub_1884667E0();
}

uint64_t sub_18846AF14(id a1, void *a2, char a3)
{
  if (a3)
  {
    v3 = a1;
    v4 = sub_18844E6FC(&qword_1EA90D568, &qword_1886F7F88);
    sub_188402290(v4, v5, v6, v7, v8, v9, v10, v11, a1);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    v13 = a2;

    v14 = sub_18844E6FC(&qword_1EA90D568, &qword_1886F7F88);
    sub_188402290(v14, v15, v16, v17, v18, v19, v20, v21, a1);
    return CheckedContinuation.resume(returning:)();
  }
}

id sub_18846AF9C()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_1883F4C5C(0, &qword_1ED4B5CC8, off_1E70BA650);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v2 = [v0 initWithRecordZoneIDs_];

  return v2;
}

void sub_18846B024()
{
  sub_188404A64();
  v5 = v4;
  v6 = v2;
  if (v2)
  {
    v7 = v1;
    v8 = v1;
  }

  else
  {
    sub_18840FAEC(v1, v2, v3, v4);
    v7 = *(v0 + 16);
  }

  v5(v7, v6 & 1);
  sub_1884631E0(v7, v6 & 1);
  sub_188410B70();
}

uint64_t sub_18846B098(uint64_t a1)
{
  v2 = sub_18844E6FC(&qword_1EA90D558, &qword_1886F7F78);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v10 - v5;
  (*(v3 + 16))(&v10 - v5, a1, v2, v4);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  (*(v3 + 32))(v8 + v7, v6, v2);
  sub_1884672BC();
}

void sub_18846B200(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_188404A64();
  v24 = v23;
  v26 = v25;
  sub_1883F999C();
  sub_188410E90(v27 + 16, v28);
  v26(v22, v21 & 1);
  swift_isUniquelyReferenced_nonNull_native();
  v29 = sub_1883FEE3C();
  v24(v29);
  *(v20 + 16) = a9;
  swift_endAccess();
  sub_188410B70();
}

void sub_18846B27C(void *a1, char a2, uint64_t a3, uint64_t a4, void (*a5)(void *, uint64_t, void, __n128))
{
  if (a2)
  {
    v7 = a1;
    v8 = a1;
    v9 = 0;
  }

  else
  {
    swift_beginAccess();
    v7 = *(a3 + 16);
    swift_beginAccess();
    v9 = *(a4 + 16);
  }

  (a5)(v7, v9, a2 & 1);
  sub_18846D11C(v7, v9, a2 & 1);
}

uint64_t sub_18846B33C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v16[0] = a2;
  v16[1] = a7;
  v8 = sub_18844E6FC(&qword_1EA90D548, &qword_1886F7F68);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = v16 - v11;
  (*(v9 + 16))(v16 - v11, a1, v8, v10);
  v13 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v14 = swift_allocObject();
  (*(v9 + 32))(v14 + v13, v12, v8);
  sub_1884678B4();
}

uint64_t sub_18846B4B4(uint64_t a1)
{
  v2 = sub_18844E6FC(&qword_1EA90D530, &qword_1886F7F58);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v10 - v5;
  (*(v3 + 16))(&v10 - v5, a1, v2, v4);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  (*(v3 + 32))(v8 + v7, v6, v2);
  sub_1884681CC();
}

uint64_t sub_18846B61C(void *a1, char a2)
{
  if (a2)
  {
    v2 = a1;
    v3 = sub_1883F7E8C();
    sub_18844E6FC(v3, v4);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {

    v6 = sub_1883F7E8C();
    sub_18844E6FC(v6, v7);
    return CheckedContinuation.resume(returning:)();
  }
}

uint64_t sub_18846B694(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, void), void (*a7)(uint64_t))
{
  sub_188414720();
  sub_188410E90(v12 + 16, v13);
  a6(v9, v8 & 1);
  swift_isUniquelyReferenced_nonNull_native();
  v14 = sub_1883FEE3C();
  a7(v14);
  *(v7 + 16) = v16;
  return swift_endAccess();
}

uint64_t sub_18846B724(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15[1] = a6;
  v7 = sub_18844E6FC(&qword_1EA90D520, &qword_1886F7F48);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = v15 - v10;
  (*(v8 + 16))(v15 - v10, a1, v7, v9);
  v12 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v13 = swift_allocObject();
  (*(v8 + 32))(v13 + v12, v11, v7);
  sub_1884686DC();
}

uint64_t sub_18846B898(void *a1, uint64_t a2, char a3)
{
  if (a3)
  {
    v3 = a1;
    v4 = sub_1883F7E8C();
    v6 = sub_18844E6FC(v4, v5);
    sub_188402290(v6, v7, v8, v9, v10, v11, v12, v13, a1);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {

    v15 = sub_1883F7E8C();
    v17 = sub_18844E6FC(v15, v16);
    sub_188402290(v17, v18, v19, v20, v21, v22, v23, v24, a1);
    return CheckedContinuation.resume(returning:)();
  }
}

uint64_t sub_18846B914(void *a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = a1;
  sub_188476878();
  v5 = *(*(a2 + 16) + 16);
  sub_188476AC4();
  v6 = *(a2 + 16);
  *(v6 + 16) = v5 + 1;
  *(v6 + 8 * v5 + 32) = v4;
  *(a2 + 16) = v6;
  return swift_endAccess();
}

void sub_18846B9A0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

void sub_18846BA08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_188404A64();
  v21 = v20;
  v23 = v22;
  v25 = v24;
  sub_188410E90(v22 + 16, v22);
  v26 = v25;
  sub_188476918();
  v27 = *(*(v23 + 16) + 16);
  sub_188476B3C();
  v28 = *(v23 + 16);
  *(v28 + 16) = v27 + 1;
  v29 = v28 + 16 * v27;
  *(v29 + 32) = v26;
  *(v29 + 40) = v21;
  *(v23 + 16) = v28;
  swift_endAccess();

  sub_188410B70();
}

void sub_18846BA98(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v6 = a2;
  if ((a2 & 0x100) != 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = a1;
  }

  else
  {
    swift_beginAccess();
    v11 = *(a3 + 16);
    swift_beginAccess();
    v8 = *(a4 + 16);
    v10 = v6 & 1;

    v9 = a1;
  }

  sub_18846CBC4(a1);
  a5(v11, v8, v9, v10 & 0xFFFFFEFF | (((v6 >> 8) & 1) << 8));
  sub_18846CBD0(v11, v8, v9, v10, BYTE1(v6) & 1);
}

uint64_t sub_18846BBA0(void *a1, void *a2, char a3, uint64_t a4)
{
  swift_beginAccess();
  sub_188449260(a2);
  v8 = a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(a4 + 16);
  sub_1884AECA0(a2, a3 & 1, v8, isUniquelyReferenced_nonNull_native);
  *(a4 + 16) = v11;

  return swift_endAccess();
}

void sub_18846BC40(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  v8 = a1;
  swift_bridgeObjectRetain_n();
  v9 = v8;
  sub_188476948();
  v10 = *(*(a4 + 16) + 16);
  sub_188476B6C(v10);
  v11 = *(a4 + 16);
  *(v11 + 16) = v10 + 1;
  v12 = (v11 + 24 * v10);
  v12[4] = v9;
  v12[5] = a2;
  v12[6] = a3;
  *(a4 + 16) = v11;
  swift_endAccess();
}

void sub_18846BD04(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, __int16 a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1883F4C5C(0, &qword_1EA90CA80, 0x1E69E58C0);
  if (static NSObject.== infix(_:_:)())
  {
    v13 = a5;
    swift_beginAccess();
    if ((a5 & 0x100) != 0)
    {
      v16 = *(a9 + 16);
      *(a9 + 16) = a2;
      v17 = a2;
    }

    else
    {
      v14 = *(a7 + 16);
      *(a7 + 16) = a2;
      v15 = a2;

      swift_beginAccess();
      *(a8 + 16) = v13 & 1;
    }
  }
}

void sub_18846BDFC(uint64_t a1, char a2, void (*a3)(uint64_t, uint64_t, void *, uint64_t, __n128), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (a2)
  {
    (a3)(a1, 0, 0, 256, a5, a6, a7, a8);
  }

  else
  {
    swift_beginAccess();
    v14 = *(a5 + 16);
    if (v14)
    {
      v15 = v14;
      (a3)(v14, 0, 0, 256);
    }

    else
    {
      swift_beginAccess();
      v16 = *(a6 + 16);
      if (v16)
      {
        swift_beginAccess();
        v17 = *(a7 + 16);
        swift_beginAccess();
        v18 = *(a8 + 16);
        swift_beginAccess();
        v19 = *(a9 + 16);
        v20 = v16;

        (a3)(v17, v18, v16, v19);
      }

      else
      {
        type metadata accessor for CKError(0);
        sub_188498E9C(MEMORY[0x1E69E7CC0]);
        sub_18846CA68(&qword_1EA90CAE0, type metadata accessor for CKError, &unk_1886F6978);
        _BridgedStoredNSError.init(_:userInfo:)();
        (a3)(v21, 0, 0, 256);
      }
    }
  }
}

uint64_t sub_18846C004(uint64_t a1, uint64_t a2, void *a3, void *a4, Swift::Int a5, NSData *a6, char a7, void (*a8)(uint64_t a1, void *a2, void *a3, void *a4), void *a9)
{
  v24 = a2;
  v25 = a8;
  v23 = a6;
  v14 = sub_18844E6FC(&qword_1EA90D4F0, &qword_1886F7F18);
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v22 - v17;
  (*(v15 + 16))(&v22 - v17, a1, v14, v16);
  v19 = (*(v15 + 80) + 16) & ~*(v15 + 80);
  v20 = swift_allocObject();
  (*(v15 + 32))(v20 + v19, v18, v14);
  sub_1884696F4(a3, a4, a5, v23, a7 & 1, v25, a9, sub_18846C9D8, v20);
}

uint64_t sub_18846C224(uint64_t a1, uint64_t a2)
{
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;
  if (v2 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    sub_1883F7E8C();
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v7 & 1;
}

uint64_t sub_18846C2A4(unsigned __int8 a1, char a2)
{
  v2 = 0x656D614E656E6F7ALL;
  v3 = 0xE800000000000000;
  v4 = a1;
  v5 = 0x656D614E656E6F7ALL;
  switch(v4)
  {
    case 1:
      v5 = 0x6D614E72656E776FLL;
      v3 = 0xE900000000000065;
      break;
    case 2:
      v5 = 0xD000000000000011;
      v3 = 0x80000001886FED70;
      break;
    case 3:
      v5 = 0x6573616261746164;
      v3 = 0xED000065706F6353;
      break;
    default:
      break;
  }

  v6 = 0xE800000000000000;
  switch(a2)
  {
    case 1:
      v2 = 0x6D614E72656E776FLL;
      v6 = 0xE900000000000065;
      break;
    case 2:
      v2 = 0xD000000000000011;
      v6 = 0x80000001886FED70;
      break;
    case 3:
      v2 = 0x6573616261746164;
      v6 = 0xED000065706F6353;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

uint64_t sub_18846C410(char a1, char a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0x4449656E6F7ALL;
  }

  else
  {
    v3 = 0x614E64726F636572;
  }

  if (v2)
  {
    v4 = 0xEA0000000000656DLL;
  }

  else
  {
    v4 = 0xE600000000000000;
  }

  if (a2)
  {
    v5 = 0x4449656E6F7ALL;
  }

  else
  {
    v5 = 0x614E64726F636572;
  }

  if (a2)
  {
    v6 = 0xE600000000000000;
  }

  else
  {
    v6 = 0xEA0000000000656DLL;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

uint64_t sub_18846C4B0(Swift::Int a1)
{
  if (a1 < 16)
  {
    return 0;
  }

  _StringGuts.grow(_:)(a1);
  return 0;
}

unint64_t sub_18846C514()
{
  result = qword_1EA90D4C8;
  if (!qword_1EA90D4C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA90D4C8);
  }

  return result;
}

unint64_t sub_18846C56C()
{
  result = qword_1EA90C398;
  if (!qword_1EA90C398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA90C398);
  }

  return result;
}

unint64_t sub_18846C5C4()
{
  result = qword_1EA90D4D0;
  if (!qword_1EA90D4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA90D4D0);
  }

  return result;
}

unint64_t sub_18846C61C()
{
  result = qword_1EA90D4D8;
  if (!qword_1EA90D4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA90D4D8);
  }

  return result;
}

unint64_t sub_18846C674()
{
  result = qword_1EA90D4E0;
  if (!qword_1EA90D4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA90D4E0);
  }

  return result;
}

uint64_t sub_18846C6D8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_18846C6EC(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 9))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_18846C72C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 9) = 1;
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

    *(result + 9) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *_s14DatabaseChangeO8DeletionV6ReasonOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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
        break;
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

_BYTE *sub_18846C848(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_18846C914(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 8))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_18846C954(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_18846CA68(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_18846CAC4()
{
  sub_188404A04();
  sub_188414720();
  v2 = sub_18844E6FC(v0, v1);
  sub_1883F8AE4(v2);
  sub_188442F30();
  v3 = sub_1883F8630();
  sub_18846C190(v3);
  sub_1883FE1B8();
}

void sub_18846CBD0(void *a1, uint64_t a2, void *a3, uint64_t a4, char a5)
{
  if (a5)
  {
  }

  else
  {

    a1 = a3;
  }
}

uint64_t sub_18846CD34()
{
  sub_1883F999C();
  v2 = sub_18844E6FC(v0, v1);
  sub_1883F8AE4(v2);
  sub_188442F30();
  v3 = sub_1883FD9C4();
  return sub_18846B898(v3, v4, v5);
}

uint64_t sub_18846CE50()
{
  sub_1883FDE94();
  v1 = v0;
  v3 = v2;
  v6 = sub_18844E6FC(v4, v5);
  sub_1883F8AE4(v6);
  sub_188442F30();
  return sub_18846B61C(v3, v1 & 1);
}

uint64_t sub_18846CEE8(void *a1, void *a2, char a3)
{
  v6 = sub_18844E6FC(&qword_1EA90D568, &qword_1886F7F88);
  sub_1883F8AE4(v6);
  sub_188442F30();
  return sub_18846AF14(a1, a2, a3 & 1);
}

void sub_18846CFC0(void *a1, void *a2, char a3)
{
  if (a3)
  {
  }

  else
  {

    a1 = a2;
  }
}

uint64_t sub_18846D0B0()
{

  sub_188405D30();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

void sub_18846D11C(void *a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_18846D1AC()
{

  sub_1883F7E80();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

__n128 sub_18846D2E0(uint64_t a1)
{
  result = v2[2];
  *(a1 + 16) = v1;
  *(a1 + 24) = result;
  return result;
}

__n128 sub_18846D2FC(uint64_t a1)
{
  result = *(v3 + 24);
  *(a1 + 16) = v1;
  *(a1 + 24) = result;
  *(a1 + 40) = v2;
  return result;
}

id sub_18846D310()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_1883F4C5C(0, &qword_1EA90CA70, off_1E70BA618);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v2 = [v0 initWithRecordIDs_];

  return v2;
}

uint64_t sub_18846D398(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 24) = a2;
  *(v4 + 32) = v3;
  *(v4 + 72) = a3;
  *(v4 + 16) = a1;
  return sub_1883F7178();
}

uint64_t sub_18846D3B4()
{
  sub_1883F78E0();
  v1 = v0[4];
  v0[5] = [v1 implementation];
  v2 = [v1 container];
  v0[6] = [v2 convenienceConfiguration];

  v3 = swift_task_alloc();
  v0[7] = v3;
  *v3 = v0;
  v3[1] = sub_18846D4AC;
  v4 = sub_1883FD9D0();

  return sub_18846D5E4(v4, v5, v6, v7, v8);
}

uint64_t sub_18846D4AC()
{
  sub_1883F78E0();
  v3 = v2;
  sub_1883F78EC();
  v5 = v4;
  sub_1883F7B78();
  *v6 = v5;
  v7 = *v1;
  sub_1883F7110();
  *v8 = v7;
  *(v5 + 64) = v0;

  if (v0)
  {
    sub_1883F7FD8();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    v12 = *(v5 + 40);

    sub_1883F7910();

    return v13(v3);
  }
}

uint64_t sub_18846D5E4(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 48) = a5;
  *(v6 + 56) = v5;
  *(v6 + 32) = a2;
  *(v6 + 40) = a4;
  *(v6 + 152) = a3;
  *(v6 + 24) = a1;
  return sub_1883F7178();
}

uint64_t sub_18846D604(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v63 = *(v12 + 56);
  v68 = *(v12 + 48);
  v13 = *(v12 + 32);
  v58 = *(v12 + 40);
  v14 = *(v12 + 152);
  v15 = *(v12 + 24);
  sub_1883F4C5C(0, &qword_1EA90C760, off_1E70BA2E0);

  v117.is_nil = v13;
  CKFetchRecordZoneChangesOperation.init(recordZoneIDs:configurationsByRecordZoneID:)(v16, v117, v118);
  v18 = v17;
  *(v12 + 64) = v17;
  [v17 setFetchAllChanges_];
  [v18 setShouldFetchAssetContents_];
  sub_1883F7B88();
  v19 = swift_allocObject();
  *(v12 + 72) = v19;
  v20 = MEMORY[0x1E69E7CC8];
  *(v19 + 16) = MEMORY[0x1E69E7CC8];
  sub_1883F7B88();
  v21 = swift_allocObject();
  *(v12 + 80) = v21;
  v22 = MEMORY[0x1E69E7CC0];
  *(v21 + 16) = MEMORY[0x1E69E7CC0];
  sub_1883F7B88();
  v23 = swift_allocObject();
  *(v12 + 88) = v23;
  *(v23 + 16) = v22;
  sub_1883F7B88();
  v24 = swift_allocObject();
  *(v12 + 96) = v24;
  *(v24 + 16) = v20;
  sub_1883F7B88();
  v25 = swift_allocObject();
  *(v12 + 104) = v25;
  *(v25 + 16) = v20;
  sub_1883F7B88();
  v26 = swift_allocObject();
  *(v12 + 112) = v26;
  *(v26 + 16) = v20;

  CKFetchRecordZoneChangesOperation.recordWasChangedBlock.setter(sub_18846C9EC, v19, v27, v28, v29, v30, v31, v32, v58, v63, v68, v73, v77, v81, v85, v89, v93, v97, v101, v12, v108, v112);

  CKFetchRecordZoneChangesOperation.recordWithIDWasDeletedBlock.setter(sub_18846C9F8, v21, v33, v34, v35, v36, v37, v38, v59, v64, v69, v74, v78, v82, v86, v90, v94, v98, v102, v105, v109, v113);

  CKFetchRecordZoneChangesOperation.zoneAttributesChangedBlock.setter(sub_18846DC50, v23, v39, v40, v41, v42, v43, v44, v60, v65, v70, v75, v79, v83, v87, v91, v95, v99, v103, v106, v110, v114);
  v45 = swift_allocObject();
  v45[2] = v24;
  v45[3] = v25;
  v45[4] = v26;

  CKFetchRecordZoneChangesOperation.recordZoneFetchResultBlock.setter(sub_18846DDB0, v45, v46, v47, v48, v49, v50, v51, v61, v66, v71, v76, v80, v84, v88, v92, v96, v100, v104, v107, v111, v115);
  v52 = swift_task_alloc();
  *(v12 + 120) = v52;
  v52[2] = v18;
  v52[3] = v15;
  v52[4] = v26;
  v52[5] = v24;
  v52[6] = v19;
  v52[7] = v21;
  v52[8] = v23;
  v52[9] = v25;
  v52[10] = v67;
  v52[11] = v62;
  v52[12] = v72;
  v53 = swift_task_alloc();
  *(v12 + 128) = v53;
  *(v53 + 16) = v18;
  v54 = swift_task_alloc();
  *(v12 + 136) = v54;
  sub_18844E6FC(&qword_1EA90D590, &qword_1886F7FE0);
  sub_1883F81C8();
  *v54 = v56;
  v54[1] = sub_18846D940;

  return MEMORY[0x1EEE6DE18](v12 + 16, &unk_1886F7FD8, v52, sub_188470888, v53, 0, 0, v55, a9, a10, a11, a12);
}

uint64_t sub_18846D940()
{
  sub_1883F7120();
  sub_1883F78EC();
  v3 = v2;
  sub_1883F7B78();
  *v4 = v3;
  v5 = *v1;
  sub_1883F7110();
  *v6 = v5;
  *(v3 + 144) = v0;

  if (!v0)
  {
  }

  sub_1883F7FD8();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_18846DA48()
{

  v1 = *(v0 + 16);

  sub_1883F7910();

  return v2(v1);
}

uint64_t sub_18846DAFC()
{

  sub_1883F816C();

  return v1();
}

uint64_t sub_18846DBC4(void *a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = a1;
  sub_1884769BC();
  v5 = *(*(a2 + 16) + 16);
  sub_188476BC0();
  v6 = *(a2 + 16);
  *(v6 + 16) = v5 + 1;
  *(v6 + 8 * v5 + 32) = v4;
  *(a2 + 16) = v6;
  return swift_endAccess();
}

uint64_t sub_18846DC58(uint64_t a1, void *a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((a5 & 0x100) != 0)
  {
    swift_beginAccess();
    sub_188470650(a2, a3, a4, a5, 1);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *(a8 + 16);
    sub_1884AED80(a2, a1, isUniquelyReferenced_nonNull_native);
    *(a8 + 16) = v19;
  }

  else
  {
    swift_beginAccess();
    sub_18846FE8C(a2, a1, sub_1884AEF54, sub_188510DA4);
    swift_endAccess();
    swift_beginAccess();
    v12 = swift_isUniquelyReferenced_nonNull_native();
    v18 = *(a7 + 16);
    sub_1884AEE60(a5 & 1, a1, v12);
    *(a7 + 16) = v18;
  }

  return swift_endAccess();
}

uint64_t sub_18846DDC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 96) = v11;
  *(v8 + 104) = v12;
  *(v8 + 80) = v10;
  *(v8 + 64) = a7;
  *(v8 + 72) = a8;
  *(v8 + 48) = a5;
  *(v8 + 56) = a6;
  *(v8 + 32) = a3;
  *(v8 + 40) = a4;
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_18846DE08, 0, 0);
}

uint64_t sub_18846DE08()
{
  sub_1883F78E0();
  v1 = *(v0 + 104);
  v2 = swift_task_alloc();
  *(v0 + 112) = v2;
  v3 = *(v0 + 40);
  v4 = *(v0 + 56);
  v5 = *(v0 + 72);
  v6 = *(v0 + 88);
  *(v2 + 16) = *(v0 + 24);
  *(v2 + 32) = v3;
  *(v2 + 48) = v4;
  *(v2 + 64) = v5;
  *(v2 + 80) = v6;
  *(v2 + 96) = v1;
  v7 = swift_task_alloc();
  *(v0 + 120) = v7;
  sub_18844E6FC(&qword_1EA90D590, &qword_1886F7FE0);
  sub_1883F81C8();
  *v7 = v8;
  v7[1] = sub_18846DF18;
  sub_1883F955C();

  return MEMORY[0x1EEE6DE38](v9, v10, v11, 0xD000000000000071, v12, v13, v2, v14);
}

uint64_t sub_18846DF18()
{
  sub_1883F7120();
  sub_1883F78EC();
  v3 = v2;
  sub_1883F7B78();
  *v4 = v3;
  v5 = *v1;
  sub_1883F7110();
  *v6 = v5;
  *(v3 + 128) = v0;

  if (v0)
  {
    sub_1883F7FD8();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {

    sub_1883F816C();

    return v10();
  }
}

uint64_t sub_18846E034()
{
  sub_1883F7120();

  sub_1883F816C();

  return v0();
}

uint64_t sub_18846E090()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_188442BE4;
  sub_1883FF0A8();

  return sub_18846DDC8(v2, v3, v4, v5, v6, v7, v8, v9);
}

id sub_18846E180(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void (*a9)(void *a1), void *a10, uint64_t a11, uint64_t a12)
{
  v44 = a7;
  v45 = a8;
  v42 = a5;
  v43 = a6;
  v39 = a3;
  v48 = a12;
  v49 = a11;
  v46 = a2;
  v47 = a10;
  v40 = a9;
  v41 = a4;
  v38 = sub_18844E6FC(&qword_1EA90D598, &qword_1886F7FE8);
  v13 = *(v38 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v38);
  v17 = &v36 - v16;
  (*(v13 + 16))(&v36 - v16, a1, v15);
  v18 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v19 = (v14 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v37 = (v19 + 15) & 0xFFFFFFFFFFFFFFF8;
  v20 = (v37 + 15) & 0xFFFFFFFFFFFFFFF8;
  v21 = (v20 + 15) & 0xFFFFFFFFFFFFFFF8;
  v22 = (v21 + 15) & 0xFFFFFFFFFFFFFFF8;
  v23 = (v22 + 15) & 0xFFFFFFFFFFFFFFF8;
  v24 = swift_allocObject();
  (*(v13 + 32))(v24 + v18, v17, v38);
  *(v24 + v19) = v39;
  v25 = v42;
  *(v24 + v37) = v41;
  *(v24 + v20) = v25;
  v26 = v44;
  *(v24 + v21) = v43;
  *(v24 + v22) = v26;
  *(v24 + v23) = v45;
  *(v24 + ((v23 + 15) & 0xFFFFFFFFFFFFFFF8)) = v40;

  v27 = v24;
  v28 = v46;
  CKFetchRecordZoneChangesOperation.fetchRecordZoneChangesResultBlock.setter(sub_18846EA90, v27, v29, v30, v31, v32, v33, v34, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49);
  return [v47 _scheduleConvenienceOperation_wrappingDatabase_convenienceConfiguration_];
}

uint64_t sub_18846E3AC(void *a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a2)
  {
    v22 = a1;
    v10 = a1;
    sub_18844E6FC(&qword_1EA90D598, &qword_1886F7FE8);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    v22 = MEMORY[0x1E69E7CC8];
    v14 = sub_1883F4C9C(a4);
    for (i = 0; ; ++i)
    {
      if (v14 == i)
      {
        sub_18844E6FC(&qword_1EA90D598, &qword_1886F7FE8);
        return CheckedContinuation.resume(returning:)();
      }

      if ((a4 & 0xC000000000000001) != 0)
      {
        v16 = MEMORY[0x18CFD59D0](i, a4);
      }

      else
      {
        if (i >= *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v16 = *(a4 + 8 * i + 32);
      }

      v17 = v16;
      if (__OFADD__(i, 1))
      {
        break;
      }

      v21 = v16;
      sub_18846E524(&v22, &v21, (a5 + 16), (a6 + 16), (a7 + 16), (a8 + 16), (a9 + 16), (a10 + 16));
    }

    __break(1u);
LABEL_14:
    __break(1u);

    __break(1u);
  }

  return result;
}