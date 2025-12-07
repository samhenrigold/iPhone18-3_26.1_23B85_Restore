double sub_1928(_BYTE *a1, _BYTE *a2, void *a3)
{
  if (qword_4E5A8 != -1)
  {
    swift_once();
  }

  v7 = sub_342A0();
  sub_3034(v7, qword_53A18);
  v8 = sub_34280();
  v9 = sub_345D0();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_0, v8, v9, "Start runP2P()", v10, 2u);
  }

  if (a1[OBJC_IVAR___PhonemeString_encoding] > 1u || a1[OBJC_IVAR___PhonemeString_encoding])
  {
    v11 = sub_34BC0();

    if ((v11 & 1) == 0)
    {
      goto LABEL_25;
    }
  }

  else
  {
  }

  if (a2[OBJC_IVAR___PhonemeString_encoding] == 2)
  {

    goto LABEL_12;
  }

  v12 = sub_34BC0();

  if ((v12 & 1) == 0)
  {
LABEL_25:
    sub_34890(86);
    v51._countAndFlagsBits = 0xD000000000000049;
    v51._object = 0x8000000000038750;
    sub_34460(v51);
    v25 = [a1 description];
    v26 = sub_343B0();
    v28 = v27;

    v52._countAndFlagsBits = v26;
    v52._object = v28;
    sub_34460(v52);

    v53._countAndFlagsBits = 0x3A74656772617420;
    v53._object = 0xE900000000000020;
    sub_34460(v53);
    v29 = [a2 description];
    v30 = sub_343B0();
    v32 = v31;

    v54._countAndFlagsBits = v30;
    v54._object = v32;
    sub_34460(v54);

    sub_306C();
    swift_allocError();
    *v33 = 0;
    *(v33 + 8) = 0xE000000000000000;
    *(v33 + 16) = 0;
LABEL_30:
    swift_willThrow();
    goto LABEL_31;
  }

LABEL_12:
  v13 = *&a1[OBJC_IVAR___PhonemeString_symbols + 8];
  if ((v13 & 0x2000000000000000) != 0)
  {
    v14 = HIBYTE(v13) & 0xF;
  }

  else
  {
    v14 = *&a1[OBJC_IVAR___PhonemeString_symbols] & 0xFFFFFFFFFFFFLL;
  }

  if (!v14)
  {
    sub_34890(67);
    v55._object = 0x80000000000387F0;
    v55._countAndFlagsBits = 0xD000000000000041;
    sub_34460(v55);
    v34 = [a1 description];
LABEL_28:
    v35 = v34;
    v36 = sub_343B0();
    v38 = v37;

    v57._countAndFlagsBits = v36;
    v57._object = v38;
    sub_34460(v57);

    sub_306C();
    swift_allocError();
    *v39 = 0;
    *(v39 + 8) = 0xE000000000000000;
    v40 = 2;
LABEL_29:
    *(v39 + 16) = v40;
    goto LABEL_30;
  }

  v15 = *&a2[OBJC_IVAR___PhonemeString_symbols + 8];
  if ((v15 & 0x2000000000000000) != 0)
  {
    v16 = HIBYTE(v15) & 0xF;
  }

  else
  {
    v16 = *&a2[OBJC_IVAR___PhonemeString_symbols] & 0xFFFFFFFFFFFFLL;
  }

  if (!v16)
  {
    sub_34890(67);
    v56._object = 0x80000000000387A0;
    v56._countAndFlagsBits = 0xD000000000000041;
    sub_34460(v56);
    v34 = [a2 description];
    goto LABEL_28;
  }

  sub_30C0(a3, a3[3]);
  v17 = sub_29BA4(a1, 2, 0);
  if (v50)
  {
    goto LABEL_31;
  }

  v18 = sub_20E0(a2, v17);

  if ((v18 & 1) == 0)
  {
    sub_30C0(a3, a3[3]);
    v42 = sub_29BA4(a2, 0, 0);
    v43 = sub_18BEC(v42);

    if (v43)
    {
      sub_21E8(v43);
      v3 = v48;
      sub_30C0((v49 + 16), *(v49 + 40));
      sub_33C40();

      goto LABEL_31;
    }

    v44 = [a2 description];
    v45 = sub_343B0();
    v47 = v46;

    v58._countAndFlagsBits = 0x5341766E206F7420;
    v58._object = 0xE900000000000052;
    sub_34460(v58);
    sub_306C();
    swift_allocError();
    *v39 = v45;
    *(v39 + 8) = v47;
    v40 = 4;
    goto LABEL_29;
  }

  v19 = a2;
  v20 = sub_34280();
  v21 = sub_345D0();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *v22 = 138412290;
    *(v22 + 4) = v19;
    *v23 = v19;
    v24 = v19;
    _os_log_impl(&dword_0, v20, v21, "Found exact match for %@, p2p distance is 0", v22, 0xCu);
    sub_319C(v23);
  }

  v3 = 0.0;
LABEL_31:
  sub_1FF8();
  return v3;
}

void sub_1FF8()
{
  if (qword_4E5A8 != -1)
  {
    swift_once();
  }

  v0 = sub_342A0();
  sub_3034(v0, qword_53A18);
  oslog = sub_34280();
  v1 = sub_345D0();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_0, oslog, v1, "End runP2P()", v2, 2u);
  }
}

uint64_t sub_20E0(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v3 = a1;
    v4 = sub_34810();
  }

  else if (*(a2 + 16) && (type metadata accessor for PhonemeString(), v5 = sub_34670(*(a2 + 40)), v6 = -1 << *(a2 + 32), v7 = v5 & ~v6, ((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0))
  {
    v8 = ~v6;
    do
    {
      v9 = *(*(a2 + 48) + 8 * v7);
      v4 = sub_34680();

      if (v4)
      {
        break;
      }

      v7 = (v7 + 1) & v8;
    }

    while (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

void sub_21E8(void *a1)
{
  v3 = sub_155F4(32, 0xE100000000000000);
  v5 = v4;
  v63 = a1;
  v6 = sub_155F4(32, 0xE100000000000000);
  v8 = v7;
  v9 = sub_2A30(v6, v7, v3, v5);
  v11 = v10;

  sub_2A30(v9, v11, v6, v8);
  v13 = v12;

  sub_324C();
  v14 = sub_346E0();

  v15 = sub_346E0();

  v67 = v15;
  v68 = v14;
  v64 = *(v14 + 16);
  v16 = *(v15 + 16);
  v17 = sub_34520();
  v18 = v17;
  *(v17 + 2) = v16 + 1;
  *(v17 + 4) = 0;
  if (v16)
  {
    bzero(v17 + 40, 8 * v16);
  }

  v19 = sub_32C8(v18, v64 + 1);

  if (!v64)
  {
    goto LABEL_78;
  }

  v65 = v19;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_79;
  }

  while (1)
  {
    v20 = v65;
    if (v65[2] < 2uLL)
    {
      __break(1u);
    }

    else
    {
      v18 = v65[5];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v65[5] = v18;
      if (isUniquelyReferenced_nonNull_native)
      {
        if (!*(v18 + 2))
        {
          goto LABEL_82;
        }

        goto LABEL_8;
      }
    }

    v18 = sub_32A0(v18);
    v65[5] = v18;
    if (!*(v18 + 2))
    {
LABEL_82:
      __break(1u);
LABEL_83:
      __break(1u);
      goto LABEL_84;
    }

LABEL_8:
    *(v18 + 4) = 0x3FF0000000000000;
    v20 = (v64 - 1);
    if (v64 != 1)
    {
      goto LABEL_47;
    }

LABEL_9:
    if (!v16)
    {
      goto LABEL_83;
    }

    if (v65[2])
    {
      v13 = (v65 + 4);
      v18 = v65[4];
      v22 = swift_isUniquelyReferenced_nonNull_native();
      v65[4] = v18;
      if (v22)
      {
        goto LABEL_12;
      }

      goto LABEL_85;
    }

LABEL_84:
    __break(1u);
LABEL_85:
    v18 = sub_32A0(v18);
LABEL_12:
    if (*(v18 + 2) < 2uLL)
    {
      __break(1u);
LABEL_87:
      swift_once();
      goto LABEL_65;
    }

    *(v18 + 5) = 0x3FF0000000000000;
    *v13 = v18;
    v66 = v16 - 1;
    if (v16 == (&dword_0 + 1))
    {
      break;
    }

LABEL_55:
    v20 = (1 - v16);
    v47 = 6;
    while (v65[2])
    {
      v18 = *v13;
      v48 = swift_isUniquelyReferenced_nonNull_native();
      *v13 = v18;
      if ((v48 & 1) == 0)
      {
        v18 = sub_32A0(v18);
        *v13 = v18;
      }

      if ((v47 - 4) >= *(v18 + 2))
      {
        goto LABEL_77;
      }

      *&v18[8 * v47] = (v47 - 4);
      ++v47;
      if (v20 + v47 == &dword_4 + 2)
      {
        goto LABEL_14;
      }
    }

LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    v65 = sub_32B4(v65);
  }

LABEL_14:
  v16 = v65;
  if (!*(v68 + 16))
  {
LABEL_46:
    __break(1u);
LABEL_47:
    v44 = (v65 + 6);
    v45 = 2;
    while (v45 < v65[2])
    {
      v18 = *v44;
      v46 = swift_isUniquelyReferenced_nonNull_native();
      *v44 = v18;
      if (v46)
      {
        if (!*(v18 + 2))
        {
          goto LABEL_54;
        }
      }

      else
      {
        v18 = sub_32A0(v18);
        *v44 = v18;
        if (!*(v18 + 2))
        {
LABEL_54:
          __break(1u);
          goto LABEL_55;
        }
      }

      *(v18 + 4) = v45++;
      ++v44;
      v20 = (v20 - 1);
      if (!v20)
      {
        goto LABEL_9;
      }
    }

LABEL_75:
    __break(1u);
    goto LABEL_76;
  }

  v23 = 0;
  v24 = 1;
  v1 = 1.0;
  v70 = (v68 + 32);
  while (2)
  {
    v25 = 0;
    v26 = v23;
    v27 = (v67 + 40);
    v69 = v24;
    while (1)
    {
      if (v25 >= *(v67 + 16))
      {
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
        goto LABEL_75;
      }

      v28 = v13;
      v29 = *v70;
      v30 = v70[1];
      v13 = *(v27 - 1);
      v18 = *v27;
      v31 = 0.0;
      v32 = *v70 == v13 && v30 == v18;
      if (!v32 && (sub_34BC0() & 1) == 0)
      {
        v33 = qword_4E568;

        if (v33 != -1)
        {
          swift_once();
        }

        v34 = qword_539F0;
        v31 = 1.0;
        if (*(qword_539F0 + 16))
        {
          v35 = sub_2A684(v29, v30, v13, v18);
          if (v36)
          {
            v31 = *(*(v34 + 56) + 8 * v35);
          }
        }

        v16 = v65;
      }

      v37 = v16[2];
      if (v26 >= v37)
      {
        goto LABEL_70;
      }

      v20 = (v25 + 1);
      v38 = v28[v26];
      if (v25 + 1 >= *(v38 + 2))
      {
        goto LABEL_71;
      }

      v13 = v28;
      v23 = v69;
      if (v69 >= v37)
      {
        goto LABEL_72;
      }

      v18 = v13[v69];
      if (v25 >= *(v18 + 2))
      {
        goto LABEL_73;
      }

      v39 = *&v38[8 * v25 + 40] + 1.0;
      v40 = &v18[8 * v25];
      v41 = *&v38[8 * v25 + 32];
      if (*(v40 + 4) + 1.0 < v39)
      {
        v39 = *(v40 + 4) + 1.0;
      }

      if (v31 + v41 >= v39)
      {
        v42 = v39;
      }

      else
      {
        v42 = v31 + v41;
      }

      v43 = swift_isUniquelyReferenced_nonNull_native();
      v13[v69] = v18;
      if ((v43 & 1) == 0)
      {
        v18 = sub_32A0(v18);
        v13[v69] = v18;
      }

      if (v20 >= *(v18 + 2))
      {
        goto LABEL_74;
      }

      *&v18[8 * v25 + 40] = v42;
      if (v66 == v25)
      {
        break;
      }

      ++v25;
      v27 += 2;
      if (v26 >= *(v68 + 16))
      {
        goto LABEL_46;
      }
    }

    if (v69 != v64)
    {
      v24 = v69 + 1;
      v70 = (v68 + 32 + 16 * v69);
      if (v69 < *(v68 + 16))
      {
        continue;
      }

      goto LABEL_46;
    }

    break;
  }

  v49 = v16[2];
  if (!v49 || (v50 = v13[v49 - 1], (v51 = *(v50 + 2)) == 0))
  {
    sub_34890(24);

    sub_3204(&qword_4E6E8, &qword_35758);
    v71._countAndFlagsBits = sub_34510();
    sub_34460(v71);

    sub_306C();
    swift_allocError();
    *v61 = 0xD000000000000016;
    *(v61 + 8) = 0x8000000000038840;
    *(v61 + 16) = 1;
    swift_willThrow();

    return;
  }

  v1 = *&v50[8 * v51 + 24];
  if (qword_4E5A8 != -1)
  {
    goto LABEL_87;
  }

LABEL_65:
  v52 = sub_342A0();
  sub_3034(v52, qword_53A18);
  v53 = v62;
  v54 = v63;
  v55 = sub_34280();
  v56 = sub_345D0();

  if (os_log_type_enabled(v55, v56))
  {
    v57 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    *v57 = 138412802;
    *(v57 + 4) = v53;
    *(v57 + 12) = 2112;
    *(v57 + 14) = v54;
    *v58 = v53;
    v58[1] = v54;
    *(v57 + 22) = 2048;
    *(v57 + 24) = v1;
    v59 = v53;
    v60 = v54;
    _os_log_impl(&dword_0, v55, v56, "Calculated Levenshtein Edit Distance between %@ and %@: %f", v57, 0x20u);
    sub_3204(&qword_4E6D8, &qword_35750);
    swift_arrayDestroy();
  }
}

uint64_t sub_29D4()
{
  sub_3364((v0 + 16));

  return swift_deallocClassInstance();
}

unint64_t sub_2A30(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  if (qword_4E570 != -1)
  {
    goto LABEL_24;
  }

  while (1)
  {
    v6 = qword_539F8;
    v7 = qword_539F8 + 64;
    v8 = 1 << *(qword_539F8 + 32);
    v9 = -1;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    v10 = v9 & *(qword_539F8 + 64);
    v11 = (v8 + 63) >> 6;

    v12 = 0;
    v20 = v7;
    v21 = v6;
    v19 = v11;
LABEL_5:
    v22 = a3;
    v23 = a4;
    if (!v10)
    {
      break;
    }

    while (1)
    {
LABEL_10:
      v14 = *(*(v6 + 56) + 8 * (__clz(__rbit64(v10)) | (v12 << 6)));
      v10 &= v10 - 1;
      sub_324C();

      if ((sub_34730() & 1) == 0)
      {

        goto LABEL_18;
      }

      v15 = *(v14 + 16);

      if (v15)
      {
        break;
      }

LABEL_16:
      swift_bridgeObjectRelease_n();
      a3 = v22;
      a4 = v23;
      v7 = v20;
      v6 = v21;
      v11 = v19;
LABEL_18:

      if (!v10)
      {
        goto LABEL_6;
      }
    }

    a3 = 0;
    v16 = v14 + 40;
    while (a3 < *(v14 + 16))
    {
      a4 = *(v16 - 8);

      if (sub_34730())
      {

        a3 = sub_34710();
        a4 = v17;

        v7 = v20;
        v6 = v21;
        v11 = v19;
        goto LABEL_5;
      }

      ++a3;
      v16 += 16;
      if (v15 == a3)
      {
        goto LABEL_16;
      }
    }

LABEL_23:
    __break(1u);
LABEL_24:
    swift_once();
  }

  while (1)
  {
LABEL_6:
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
      goto LABEL_23;
    }

    if (v13 >= v11)
    {
      break;
    }

    v10 = *(v7 + 8 * v13);
    ++v12;
    if (v10)
    {
      v12 = v13;
      goto LABEL_10;
    }
  }

  return a3;
}

uint64_t sub_2CE4()
{
  sub_343B0();
  v0 = sub_344A0();

  return v0;
}

uint64_t sub_2D20(uint64_t a1)
{
  sub_343B0();
  sub_34430();
}

Swift::Int sub_2D74(uint64_t a1)
{
  sub_343B0();
  sub_34C40();
  sub_34430();
  v1 = sub_34C70();

  return v1;
}

uint64_t sub_2DF0(uint64_t a1, id *a2)
{
  result = sub_34390();
  *a2 = 0;
  return result;
}

uint64_t sub_2E68(uint64_t a1, id *a2)
{
  v3 = sub_343A0();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_2EE8@<X0>(uint64_t *a2@<X8>)
{
  sub_343B0();
  v3 = sub_34380();

  *a2 = v3;
  return result;
}

uint64_t sub_2F38(void *a1, uint64_t *a2)
{
  v2 = sub_343B0();
  v4 = v3;
  if (v2 == sub_343B0() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_34BC0();
  }

  return v7 & 1;
}

uint64_t sub_2FC0@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_34380();

  *a2 = v3;
  return result;
}

uint64_t sub_3008@<X0>(uint64_t *a1@<X8>)
{
  result = sub_343B0();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_3034(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_306C()
{
  result = qword_4E6D0;
  if (!qword_4E6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4E6D0);
  }

  return result;
}

void *sub_30C0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_3104(uint64_t a1)
{
  v2 = sub_349C(&qword_4E710, &unk_358D8);
  v3 = sub_349C(&qword_4E718, &unk_3582C);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_319C(uint64_t a1)
{
  v2 = sub_3204(&qword_4E6D8, &qword_35750);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_3204(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_324C()
{
  result = qword_4E6E0;
  if (!qword_4E6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4E6E0);
  }

  return result;
}

void *sub_32C8(void *result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (!a2)
    {
      return _swiftEmptyArrayStorage;
    }

    v3 = result;
    sub_3204(&qword_4E6E8, &qword_35758);
    v4 = sub_34520();
    v5 = v4;
    *(v4 + 16) = a2;
    *(v4 + 32) = v3;
    v6 = a2 - 1;
    if (v6)
    {
      v7 = (v4 + 40);
      do
      {
        *v7++ = v3;

        --v6;
      }

      while (v6);
    }

    return v5;
  }

  return result;
}

uint64_t sub_3364(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

void type metadata accessor for FileAttributeKey()
{
  if (!qword_4E6F0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_4E6F0);
    }
  }
}

uint64_t sub_349C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FileAttributeKey();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_34E4()
{
  v1 = v0;
  sub_34890(295);
  v14._countAndFlagsBits = 0xD00000000000001DLL;
  v14._object = 0x80000000000389F0;
  sub_34460(v14);
  sub_33B90();
  sub_8114(&qword_4E9E8, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v15._countAndFlagsBits = sub_34BB0();
  sub_34460(v15);

  v16._object = 0x8000000000038A10;
  v16._countAndFlagsBits = 0xD000000000000010;
  sub_34460(v16);
  v2 = type metadata accessor for TMDCGroundTruth(0);
  sub_34460(*(v0 + v2[6]));
  v17._countAndFlagsBits = 0xD000000000000012;
  v17._object = 0x8000000000038A30;
  sub_34460(v17);
  v18._countAndFlagsBits = sub_34BB0();
  sub_34460(v18);

  v19._countAndFlagsBits = 0xD000000000000015;
  v19._object = 0x8000000000038A50;
  sub_34460(v19);
  sub_34460(*(v0 + v2[8]));
  v20._countAndFlagsBits = 0xD00000000000001ELL;
  v20._object = 0x8000000000038A70;
  sub_34460(v20);
  v3 = [*(v0 + v2[9]) description];
  v4 = sub_343B0();
  v6 = v5;

  v21._countAndFlagsBits = v4;
  v21._object = v6;
  sub_34460(v21);

  v22._countAndFlagsBits = 0xD000000000000020;
  v22._object = 0x8000000000038A90;
  sub_34460(v22);
  v7 = *(v1 + v2[10]);
  sub_3204(&unk_4E9F0, &qword_35A58);
  v23._countAndFlagsBits = sub_34400();
  sub_34460(v23);

  v24._object = 0x8000000000038AC0;
  v24._countAndFlagsBits = 0xD000000000000010;
  sub_34460(v24);
  sub_34580();
  v25._countAndFlagsBits = 0x6F7320676F4C0A2CLL;
  v25._object = 0xEE00203A65637275;
  sub_34460(v25);
  sub_34980();
  v26._countAndFlagsBits = 0xD000000000000021;
  v26._object = 0x8000000000038AE0;
  sub_34460(v26);
  v8 = (v1 + v2[13]);
  if (v8[1])
  {
    v9 = *v8;
    v10 = v8[1];
  }

  else
  {
    v10 = 0x8000000000038B10;
    v9 = 0xD000000000000014;
  }

  v27._countAndFlagsBits = v9;
  v27._object = v10;
  sub_34460(v27);

  v28._countAndFlagsBits = 0xD00000000000002DLL;
  v28._object = 0x8000000000038B30;
  sub_34460(v28);
  if (*(v1 + v2[12]))
  {
    v11._countAndFlagsBits = 0x6F6E6F727073696DLL;
  }

  else
  {
    v11._countAndFlagsBits = 0xD000000000000013;
  }

  if (*(v1 + v2[12]))
  {
    v12 = 0xED00006465636E75;
  }

  else
  {
    v12 = 0x8000000000038B60;
  }

  v11._object = v12;
  sub_34460(v11);

  v29._countAndFlagsBits = 0xD000000000000015;
  v29._object = 0x8000000000038B80;
  sub_34460(v29);
  return 0;
}

unint64_t sub_38EC(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x6174736944703270;
    v6 = 0xD00000000000001BLL;
    if (a1 == 8)
    {
      v6 = 0xD000000000000010;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0xD00000000000001ALL;
    if (a1 == 5)
    {
      v7 = 0xD000000000000018;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x696669746E656469;
    v2 = 0x4E746361746E6F63;
    v3 = 0x69666E6F43727361;
    if (a1 != 3)
    {
      v3 = 0x656E6F6850727361;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x6372756F53676F6CLL;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_3AB4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_62E4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_3AF4(uint64_t a1)
{
  v2 = sub_7F58();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_3B30(uint64_t a1)
{
  v2 = sub_7F58();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_3B6C(void *a1)
{
  v3 = v1;
  v5 = sub_3204(&qword_4EBB0, &unk_35D60);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v12 - v7;
  sub_30C0(a1, a1[3]);
  sub_7F58();
  sub_34CA0();
  LOBYTE(v12) = 0;
  sub_33B90();
  sub_8114(&qword_4EBB8, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  sub_34B70();
  if (!v2)
  {
    v9 = type metadata accessor for TMDCGroundTruth(0);
    LOBYTE(v12) = *(v3 + v9[5]);
    v13 = 1;
    sub_80C0();
    sub_34B70();
    LOBYTE(v12) = 2;
    sub_34B40();
    LOBYTE(v12) = 3;
    sub_34B90();
    LOBYTE(v12) = 4;
    sub_34B40();
    v12 = *(v3 + v9[9]);
    v13 = 5;
    type metadata accessor for ContactPronunciation();
    sub_8114(&qword_4EBC8, 255, type metadata accessor for ContactPronunciation, &unk_380FC);
    sub_34B70();
    v12 = *(v3 + v9[10]);
    v13 = 6;
    type metadata accessor for CorrectedPronunciation();
    sub_8114(&qword_4EBD0, v10, type metadata accessor for CorrectedPronunciation, &unk_359E4);
    sub_34B20();
    LOBYTE(v12) = 7;
    sub_34B60();
    LOBYTE(v12) = 8;
    sub_34B50();
    LOBYTE(v12) = 9;
    sub_34B00();
  }

  return (*(v6 + 8))(v8, v5);
}

void sub_3F50(void *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v4 = sub_33B90();
  v35 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_3204(&qword_4EB80, &qword_35D58);
  v7 = *(v30 - 8);
  __chkstk_darwin(v30);
  v9 = &v29 - v8;
  v34 = type metadata accessor for TMDCGroundTruth(0);
  __chkstk_darwin(v34);
  v33 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_33B80();
  sub_33FF0();
  swift_allocObject();
  sub_33FE0();
  sub_33FD0();

  v11 = a1[3];
  v32 = a1;
  sub_30C0(a1, v11);
  sub_7F58();
  v31 = v9;
  sub_34C90();
  if (v2)
  {
    v13 = v33;
    sub_3364(v32);
    (*(v35 + 8))(v13, v4);
  }

  else
  {
    v12 = v29;
    LOBYTE(v36) = 0;
    sub_8114(&qword_4EB90, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    sub_34AB0();
    v14 = v33;
    (*(v35 + 40))(v33, v6, v4);
    v37 = 1;
    sub_7FAC();
    sub_34AB0();
    v15 = v34;
    v14[v34[5]] = v36;
    LOBYTE(v36) = 2;
    v16 = sub_34A80();
    v17 = &v14[v15[6]];
    *v17 = v16;
    v17[1] = v18;
    LOBYTE(v36) = 3;
    *&v14[v15[7]] = sub_34AD0();
    LOBYTE(v36) = 4;
    v19 = sub_34A80();
    v20 = &v14[v15[8]];
    *v20 = v19;
    v20[1] = v21;
    type metadata accessor for ContactPronunciation();
    v37 = 5;
    sub_8114(&qword_4EBA0, 255, type metadata accessor for ContactPronunciation, &unk_38124);
    sub_34AB0();
    *&v14[v15[9]] = v36;
    type metadata accessor for CorrectedPronunciation();
    v37 = 6;
    sub_8114(&qword_4EBA8, v22, type metadata accessor for CorrectedPronunciation, &unk_35A0C);
    sub_34A60();
    *&v14[v15[10]] = v36;
    LOBYTE(v36) = 7;
    sub_34AA0();
    *&v14[v34[11]] = v23;
    LOBYTE(v36) = 8;
    v14[v34[12]] = sub_34A90() & 1;
    LOBYTE(v36) = 9;
    v24 = sub_34A40();
    v26 = v25;
    (*(v7 + 8))(v31, v30);
    v27 = v33;
    v28 = &v33[v34[13]];
    *v28 = v24;
    v28[1] = v26;
    sub_8000(v27, v12);
    sub_3364(v32);
    sub_8064(v27);
  }
}

uint64_t sub_4710()
{
  sub_34890(96);
  v5._countAndFlagsBits = 0x656C61636F6C207BLL;
  v5._object = 0xEA0000000000203ALL;
  sub_34460(v5);
  sub_34460(*(v0 + OBJC_IVAR___CorrectedPronunciation_locale));
  v6._countAndFlagsBits = 0xD00000000000001ALL;
  v6._object = 0x8000000000038BF0;
  sub_34460(v6);
  v1 = *(v0 + OBJC_IVAR___CorrectedPronunciation_maybeFirstNamePhonemeString);
  sub_3204(&qword_4EA28, &qword_35A80);
  v7._countAndFlagsBits = sub_34400();
  sub_34460(v7);

  v8._object = 0x8000000000038C10;
  v8._countAndFlagsBits = 0xD000000000000019;
  sub_34460(v8);
  v2 = *(v0 + OBJC_IVAR___CorrectedPronunciation_maybeLastNamePhonemeString);
  v9._countAndFlagsBits = sub_34400();
  sub_34460(v9);

  v10._object = 0x8000000000038C30;
  v10._countAndFlagsBits = 0xD000000000000019;
  sub_34460(v10);
  v3 = *(v0 + OBJC_IVAR___CorrectedPronunciation_maybeNickNamePhonemeString);
  v11._countAndFlagsBits = sub_34400();
  sub_34460(v11);

  v12._countAndFlagsBits = 32032;
  v12._object = 0xE200000000000000;
  sub_34460(v12);
  return 0;
}

id sub_48C0(void *a1)
{
  v2 = v1;
  sub_7F10(0, &qword_4EA20, NSString_ptr);
  v4 = sub_34660();
  if (v4)
  {
    v5 = v4;
    v6 = sub_343B0();
    v8 = v7;

    v9 = &v2[OBJC_IVAR___CorrectedPronunciation_locale];
    *v9 = v6;
    v9[1] = v8;
    type metadata accessor for PhonemeString();
    *&v2[OBJC_IVAR___CorrectedPronunciation_maybeFirstNamePhonemeString] = sub_34660();
    *&v2[OBJC_IVAR___CorrectedPronunciation_maybeLastNamePhonemeString] = sub_34660();
    *&v2[OBJC_IVAR___CorrectedPronunciation_maybeNickNamePhonemeString] = sub_34660();
    v12.receiver = v2;
    v12.super_class = type metadata accessor for CorrectedPronunciation();
    v10 = objc_msgSendSuper2(&v12, "init");
  }

  else
  {

    type metadata accessor for CorrectedPronunciation();
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v10;
}

void sub_4A60(void *a1)
{
  v3 = sub_34380();
  v4 = sub_34380();
  [a1 encodeObject:v3 forKey:v4];

  v5 = *(v1 + OBJC_IVAR___CorrectedPronunciation_maybeFirstNamePhonemeString);
  v6 = sub_34380();
  [a1 encodeObject:v5 forKey:v6];

  v7 = *(v1 + OBJC_IVAR___CorrectedPronunciation_maybeLastNamePhonemeString);
  v8 = sub_34380();
  [a1 encodeObject:v7 forKey:v8];

  v9 = *(v1 + OBJC_IVAR___CorrectedPronunciation_maybeNickNamePhonemeString);
  v10 = sub_34380();
  [a1 encodeObject:v9 forKey:v10];
}

uint64_t sub_4C30(uint64_t a1)
{
  sub_7734(a1, v21);
  if (!v22)
  {
    sub_76CC(v21);
    goto LABEL_23;
  }

  type metadata accessor for CorrectedPronunciation();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_23:
    v17 = 0;
    return v17 & 1;
  }

  v2 = *(v1 + OBJC_IVAR___CorrectedPronunciation_locale) == *&v20[OBJC_IVAR___CorrectedPronunciation_locale] && *(v1 + OBJC_IVAR___CorrectedPronunciation_locale + 8) == *&v20[OBJC_IVAR___CorrectedPronunciation_locale + 8];
  if (!v2 && (sub_34BC0() & 1) == 0)
  {
    goto LABEL_22;
  }

  v3 = *(v1 + OBJC_IVAR___CorrectedPronunciation_maybeFirstNamePhonemeString);
  v4 = *&v20[OBJC_IVAR___CorrectedPronunciation_maybeFirstNamePhonemeString];
  if (v3)
  {
    if (!v4)
    {
      goto LABEL_22;
    }

    type metadata accessor for PhonemeString();
    v5 = v4;
    v6 = v3;
    v7 = sub_34680();

    if ((v7 & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  else if (v4)
  {
    goto LABEL_22;
  }

  v8 = *(v1 + OBJC_IVAR___CorrectedPronunciation_maybeLastNamePhonemeString);
  v9 = *&v20[OBJC_IVAR___CorrectedPronunciation_maybeLastNamePhonemeString];
  if (!v8)
  {
    if (!v9)
    {
      goto LABEL_19;
    }

LABEL_22:

    goto LABEL_23;
  }

  if (!v9)
  {
    goto LABEL_22;
  }

  type metadata accessor for PhonemeString();
  v10 = v9;
  v11 = v8;
  v12 = sub_34680();

  if ((v12 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_19:
  v13 = *(v1 + OBJC_IVAR___CorrectedPronunciation_maybeNickNamePhonemeString);
  v14 = *&v20[OBJC_IVAR___CorrectedPronunciation_maybeNickNamePhonemeString];
  if (!v13)
  {
    v19 = v14;

    if (!v14)
    {
      v17 = 1;
      return v17 & 1;
    }

    goto LABEL_23;
  }

  if (!v14)
  {
    goto LABEL_22;
  }

  type metadata accessor for PhonemeString();
  v15 = v14;
  v16 = v13;
  v17 = sub_34680();

  return v17 & 1;
}

unint64_t sub_4EC0()
{
  v1 = 0x656C61636F6CLL;
  if (*v0)
  {
    v1 = 0xD00000000000001BLL;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return 0xD00000000000001ALL;
  }
}

uint64_t sub_4F40@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_6638(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_4F74(uint64_t a1)
{
  v2 = sub_7678();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_4FB0(uint64_t a1)
{
  v2 = sub_7678();

  return CodingKey.debugDescription.getter(a1, v2);
}

id sub_4FEC(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for CorrectedPronunciation();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_50B4(void *a1)
{
  v3 = v1;
  v5 = sub_3204(&qword_4EA08, &unk_35A70);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10 - v7;
  sub_30C0(a1, a1[3]);
  sub_7678();
  sub_34CA0();
  LOBYTE(v11) = 0;
  sub_34B40();
  if (!v2)
  {
    v11 = *(v3 + OBJC_IVAR___CorrectedPronunciation_maybeFirstNamePhonemeString);
    HIBYTE(v10) = 1;
    type metadata accessor for PhonemeString();
    sub_8114(&qword_4EA10, 255, type metadata accessor for PhonemeString, &unk_36F8C);
    sub_34B20();
    v11 = *(v3 + OBJC_IVAR___CorrectedPronunciation_maybeLastNamePhonemeString);
    HIBYTE(v10) = 2;
    sub_34B20();
    v11 = *(v3 + OBJC_IVAR___CorrectedPronunciation_maybeNickNamePhonemeString);
    HIBYTE(v10) = 3;
    sub_34B20();
  }

  return (*(v6 + 8))(v8, v5);
}

void *sub_5304(void *a1)
{
  v3 = v1;
  v5 = sub_3204(&qword_4E9D0, &qword_35A50);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v14 - v7;
  sub_30C0(a1, a1[3]);
  sub_7678();
  sub_34C90();
  if (v2)
  {
    sub_3364(a1);
    type metadata accessor for CorrectedPronunciation();
    swift_deallocPartialClassInstance();
  }

  else
  {
    LOBYTE(v17) = 0;
    v9 = sub_34A80();
    v11 = (v1 + OBJC_IVAR___CorrectedPronunciation_locale);
    *v11 = v9;
    v11[1] = v12;
    v14[2] = v11;
    type metadata accessor for PhonemeString();
    v16 = 1;
    v14[1] = sub_8114(&qword_4E9E0, 255, type metadata accessor for PhonemeString, &unk_36FB4);
    sub_34A60();
    *(v1 + OBJC_IVAR___CorrectedPronunciation_maybeFirstNamePhonemeString) = v17;
    v16 = 2;
    sub_34A60();
    *(v1 + OBJC_IVAR___CorrectedPronunciation_maybeLastNamePhonemeString) = v17;
    v16 = 3;
    sub_34A60();
    *(v1 + OBJC_IVAR___CorrectedPronunciation_maybeNickNamePhonemeString) = v17;
    v13 = type metadata accessor for CorrectedPronunciation();
    v15.receiver = v1;
    v15.super_class = v13;
    v3 = objc_msgSendSuper2(&v15, "init");
    (*(v6 + 8))(v8, v5);
    sub_3364(a1);
  }

  return v3;
}

void *sub_5680@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = objc_allocWithZone(type metadata accessor for CorrectedPronunciation());
  result = sub_5304(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

id sub_57CC(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_582C(void *a1, int a2)
{
  v25 = a2;
  v3 = sub_3204(&qword_4EB58, &qword_35D38);
  v23 = *(v3 - 8);
  v24 = v3;
  __chkstk_darwin(v3);
  v22 = &v18 - v4;
  v5 = sub_3204(&qword_4EB60, &qword_35D40);
  v20 = *(v5 - 8);
  v21 = v5;
  __chkstk_darwin(v5);
  v7 = &v18 - v6;
  v8 = sub_3204(&qword_4EB68, &qword_35D48);
  v19 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v18 - v9;
  v11 = sub_3204(&unk_4EB70, &qword_35D50);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v18 - v13;
  sub_30C0(a1, a1[3]);
  sub_7DC0();
  sub_34CA0();
  v15 = (v12 + 8);
  if (v25)
  {
    if (v25 == 1)
    {
      v27 = 1;
      sub_7E68();
      sub_34AF0();
      (*(v20 + 8))(v7, v21);
    }

    else
    {
      v28 = 2;
      sub_7E14();
      v16 = v22;
      sub_34AF0();
      (*(v23 + 8))(v16, v24);
    }
  }

  else
  {
    v26 = 0;
    sub_7EBC();
    sub_34AF0();
    (*(v19 + 8))(v10, v8);
  }

  return (*v15)(v14, v11);
}

uint64_t sub_5BB8(uint64_t a1)
{
  v2 = sub_7E68();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_5BF4(uint64_t a1)
{
  v2 = sub_7E68();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_5C30()
{
  v1 = 0x746E65696C63;
  if (*v0 != 1)
  {
    v1 = 0x6E776F6E6B6E75;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6C616E7265746E69;
  }
}

uint64_t sub_5C94@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_67A8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_5CC8(uint64_t a1)
{
  v2 = sub_7DC0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_5D04(uint64_t a1)
{
  v2 = sub_7DC0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_5D40@<X0>(_BYTE *a2@<X8>)
{

  *a2 = 1;
  return result;
}

uint64_t sub_5D7C(uint64_t a1)
{
  v2 = sub_7EBC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_5DB8(uint64_t a1)
{
  v2 = sub_7EBC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_5DF4(uint64_t a1)
{
  v2 = sub_7E14();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_5E30(uint64_t a1)
{
  v2 = sub_7E14();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_5E6C()
{
  v1 = *v0;
  sub_34C40();
  sub_34C50(v1);
  return sub_34C70();
}

Swift::Int sub_5EB4(uint64_t a1)
{
  v2 = *v1;
  sub_34C40();
  sub_34C50(v2);
  return sub_34C70();
}

uint64_t sub_5EF8@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = sub_68C4(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

void sub_5F40()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = sub_34380();
  v2 = [v0 BOOLForKey:v1];

  byte_4E8A1 = v2;
}

uint64_t sub_6004(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_33B90();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_33B80();
  v13 = sub_6E54(a1, v12, a2, a3, a4);
  if (!v4)
  {
    sub_73AC(v13);
  }

  return (*(v10 + 8))(v12, v9);
}

BOOL sub_6124(uint64_t a1, uint64_t a2)
{
  if ((sub_33B60() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for TMDCGroundTruth(0);
  if (*(a1 + *(v4 + 20)) != *(a2 + *(v4 + 20)))
  {
    return 0;
  }

  v5 = v4;
  v6 = *(v4 + 24);
  v7 = *(a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = (a2 + v6);
  v10 = v7 == *v9 && v8 == v9[1];
  if (!v10 && (sub_34BC0() & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + v5[7]) != *(a2 + v5[7]))
  {
    return 0;
  }

  v11 = v5[8];
  v12 = *(a1 + v11);
  v13 = *(a1 + v11 + 8);
  v14 = (a2 + v11);
  v15 = v12 == *v14 && v13 == v14[1];
  if (!v15 && (sub_34BC0() & 1) == 0)
  {
    return 0;
  }

  sub_7F10(0, &unk_4F9E0, NSObject_ptr);
  if ((sub_34680() & 1) == 0)
  {
    return 0;
  }

  v16 = v5[10];
  v17 = *(a1 + v16);
  v18 = *(a2 + v16);
  if (v17)
  {
    if (!v18)
    {
      return 0;
    }

    type metadata accessor for CorrectedPronunciation();
    v19 = v18;
    v20 = v17;
    v21 = sub_34680();

    if ((v21 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v18)
  {
    return 0;
  }

  if (*(a1 + v5[11]) != *(a2 + v5[11]) || *(a1 + v5[12]) != *(a2 + v5[12]))
  {
    return 0;
  }

  v23 = v5[13];
  v24 = (a1 + v23);
  v25 = *(a1 + v23 + 8);
  v26 = (a2 + v23);
  v27 = v26[1];
  if (!v25)
  {
    return !v27;
  }

  return v27 && (*v24 == *v26 && v25 == v27 || (sub_34BC0() & 1) != 0);
}

uint64_t sub_62E4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_34BC0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6372756F53676F6CLL && a2 == 0xE900000000000065 || (sub_34BC0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4E746361746E6F63 && a2 == 0xEB00000000656D61 || (sub_34BC0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x69666E6F43727361 && a2 == 0xED000065636E6564 || (sub_34BC0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x656E6F6850727361 && a2 == 0xEB0000000073656DLL || (sub_34BC0() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000018 && 0x8000000000038C80 == a2 || (sub_34BC0() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD00000000000001ALL && 0x8000000000038CA0 == a2 || (sub_34BC0() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6174736944703270 && a2 == 0xEB0000000065636ELL || (sub_34BC0() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000000038CC0 == a2 || (sub_34BC0() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD00000000000001BLL && 0x8000000000038CE0 == a2)
  {

    return 9;
  }

  else
  {
    v6 = sub_34BC0();

    if (v6)
    {
      return 9;
    }

    else
    {
      return 10;
    }
  }
}

uint64_t sub_6638(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C61636F6CLL && a2 == 0xE600000000000000;
  if (v4 || (sub_34BC0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD00000000000001BLL && 0x80000000000388D0 == a2 || (sub_34BC0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000000000388F0 == a2 || (sub_34BC0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD00000000000001ALL && 0x8000000000038910 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_34BC0();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_67A8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C616E7265746E69 && a2 == 0xEE00656372756F53;
  if (v4 || (sub_34BC0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746E65696C63 && a2 == 0xE600000000000000 || (sub_34BC0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_34BC0();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_68C4(void *a1)
{
  v29 = sub_3204(&qword_4EB10, &qword_35D10);
  v32 = *(v29 - 8);
  __chkstk_darwin(v29);
  v33 = &v26 - v2;
  v3 = sub_3204(&qword_4EB18, &qword_35D18);
  v30 = *(v3 - 8);
  v31 = v3;
  __chkstk_darwin(v3);
  v5 = &v26 - v4;
  v6 = sub_3204(&qword_4EB20, &qword_35D20);
  v28 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v26 - v7;
  v9 = sub_3204(&qword_4EB28, &qword_35D28);
  v34 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v26 - v10;
  sub_30C0(a1, a1[3]);
  sub_7DC0();
  v12 = v35;
  sub_34C90();
  if (v12)
  {
    goto LABEL_14;
  }

  v27 = v6;
  v13 = v33;
  v35 = a1;
  v14 = v11;
  v15 = sub_34AE0();
  v16 = *(v15 + 16);
  if (!v16 || ((v17 = *(v15 + 32), v16 == 1) ? (v18 = v17 == 3) : (v18 = 1), v18))
  {
    v19 = sub_348F0();
    swift_allocError();
    v21 = v20;
    sub_3204(&qword_4EB38, &qword_35D30);
    *v21 = &type metadata for LogSource;
    sub_34A30();
    sub_348E0();
    (*(*(v19 - 8) + 104))(v21, enum case for DecodingError.typeMismatch(_:), v19);
    swift_willThrow();
    (*(v34 + 8))(v14, v9);
    swift_unknownObjectRelease();
    a1 = v35;
LABEL_14:
    sub_3364(a1);
    return 0;
  }

  v36 = *(v15 + 32);
  if (!v17)
  {
    v37 = 0;
    sub_7EBC();
    v22 = v11;
    sub_34A20();
    (*(v28 + 8))(v8, v27);
    v23 = v34;
    goto LABEL_15;
  }

  if (v17 == 1)
  {
    v38 = 1;
    sub_7E68();
    v22 = v11;
    sub_34A20();
    v23 = v34;
    (*(v30 + 8))(v5, v31);
LABEL_15:
    (*(v23 + 8))(v22, v9);
    goto LABEL_16;
  }

  v39 = 2;
  sub_7E14();
  sub_34A20();
  v24 = v34;
  (*(v32 + 8))(v13, v29);
  (*(v24 + 8))(v14, v9);
LABEL_16:
  swift_unknownObjectRelease();
  sub_3364(v35);
  return v36;
}

uint64_t sub_6E54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = [objc_allocWithZone(PLUSSchemaPLUSClientEvent) init];
  if (!v10)
  {
    goto LABEL_18;
  }

  v11 = v10;
  v12 = [objc_allocWithZone(PLUSSchemaPLUSClientEventMetadata) init];
  if (!v12)
  {
LABEL_17:

LABEL_18:
    sub_75D8();
    swift_allocError();
    *v33 = xmmword_35940;
    swift_willThrow();
    return a2;
  }

  v13 = v12;
  v43 = a5;
  v14 = [objc_allocWithZone(PLUSSchemaPLUSTMDCGroundTruthGenerated) init];
  if (!v14)
  {
    v15 = v13;
LABEL_16:

    v11 = v15;
    goto LABEL_17;
  }

  v15 = v14;
  v44 = a1;
  v16 = [objc_allocWithZone(PLUSSchemaPLUSTMDCGroundTruth) init];
  if (!v16)
  {

    v11 = v13;
    goto LABEL_16;
  }

  v17 = v16;
  v42 = v15;
  v18 = objc_allocWithZone(SISchemaUUID);
  isa = sub_33B50().super.isa;
  v41 = [v18 initWithNSUUID:isa];

  [v17 setAsrPostItnLinkId:a4];
  [v17 setAsrRawRecognitionLinkId:a3];
  v20 = [objc_allocWithZone(PLUSSchemaPLUSTMDCSiriCurrentPronunciationTier1) init];
  if (v20)
  {
    v21 = v20;
    v40 = *(v44 + *(type metadata accessor for TMDCGroundTruth(0) + 36));

    v22 = v17;
    v23 = sub_34380();

    [v21 setPhonemes:v23];

    v17 = v22;
    if (*(v40 + OBJC_IVAR___ContactPronunciation_source))
    {
      v24 = 2 * (*(v40 + OBJC_IVAR___ContactPronunciation_source) == 2);
    }

    else
    {
      v24 = 1;
    }

    [v21 setSource:{v24, v40}];
    [v22 setSiriCurrentPronunciation:v21];
  }

  v25 = type metadata accessor for TMDCGroundTruth(0);
  v26 = *(v44 + v25[10]);
  if (v26)
  {
    v27 = objc_allocWithZone(PLUSSchemaPLUSTMDCCorrectedPronunciationTier1);
    v28 = v26;
    v29 = [v27 init];
    if (v29)
    {
      v30 = v29;
      v31 = v17;
      if (*&v28[OBJC_IVAR___CorrectedPronunciation_maybeFirstNamePhonemeString])
      {

        v32 = sub_34380();
      }

      else
      {
        v32 = 0;
      }

      [v30 setFirstNamePhonemes:v32];

      if (*&v28[OBJC_IVAR___CorrectedPronunciation_maybeLastNamePhonemeString])
      {

        v35 = sub_34380();
      }

      else
      {
        v35 = 0;
      }

      [v30 setLastNamePhonemes:v35];

      if (*&v28[OBJC_IVAR___CorrectedPronunciation_maybeNickNamePhonemeString])
      {

        v36 = sub_34380();
      }

      else
      {
        v36 = 0;
      }

      [v30 setNicknamePhonemes:v36];

      v17 = v31;
      [v31 setCorrectedPronunciation:v30];
    }

    else
    {
      v30 = v28;
    }
  }

  v37 = objc_allocWithZone(SISchemaUUID);
  v38 = sub_33B50().super.isa;
  v39 = [v37 initWithNSUUID:v38];

  [v17 setGroundTruthId:v39];
  [v17 setIsTTSMispronounced:*(v44 + v25[12])];
  [v17 setPhonemesToPhonemesDistance:*(v44 + v25[11])];
  [v42 setGroundTruth:v17];
  [v42 setOriginalRequestId:v43];
  [v13 setPlusId:v41];
  [v11 setTmdcGroundTruthGenerated:v42];
  [v11 setEventMetadata:v13];
  sub_3204(&unk_4F4B0, &qword_36C70);
  a2 = swift_allocObject();
  *(a2 + 16) = xmmword_35930;
  *(a2 + 32) = v11;

  return a2;
}

void sub_73AC(unint64_t a1)
{
  if (qword_4E550 != -1)
  {
    swift_once();
  }

  if (byte_4E8A1)
  {
    if (qword_4E5A8 != -1)
    {
      swift_once();
    }

    v2 = sub_342A0();
    sub_3034(v2, qword_53A18);
    oslog = sub_34280();
    v3 = sub_345D0();
    if (os_log_type_enabled(oslog, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_0, oslog, v3, "Omitting SELF logging call as UsageLoggingDisabled flag present", v4, 2u);
    }
  }

  else
  {
    v6 = [objc_opt_self() sharedAnalytics];
    oslog = [v6 defaultMessageStream];

    if (a1 >> 62)
    {
      v7 = sub_349A0();
      v5 = oslog;
      if (!v7)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v7 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
      v5 = oslog;
      if (!v7)
      {
        goto LABEL_9;
      }
    }

    if (v7 < 1)
    {
      __break(1u);
      return;
    }

    v8 = 0;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v9 = sub_348C0();
      }

      else
      {
        v9 = *(a1 + 8 * v8 + 32);
      }

      v10 = v9;
      ++v8;
      isa = sub_33B50().super.isa;
      [oslog emitMessage:v10 isolatedStreamUUID:isa];
    }

    while (v7 != v8);
  }

  v5 = oslog;
LABEL_9:
}

unint64_t sub_75D8()
{
  result = qword_4E9C0;
  if (!qword_4E9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4E9C0);
  }

  return result;
}

uint64_t type metadata accessor for TMDCGroundTruth(uint64_t a1)
{
  result = qword_4EA88;
  if (!qword_4EA88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_7678()
{
  result = qword_4E9D8;
  if (!qword_4E9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4E9D8);
  }

  return result;
}

uint64_t sub_76CC(uint64_t a1)
{
  v2 = sub_3204(&qword_4EA18, &qword_38170);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_7734(uint64_t a1, uint64_t a2)
{
  v4 = sub_3204(&qword_4EA18, &qword_38170);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t getEnumTagSinglePayload for PhonemeFormat(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PhonemeFormat(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_793C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_33B90();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_7A10(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_33B90();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

void sub_7ACC(uint64_t a1)
{
  sub_33B90();
  if (v1 <= 0x3F)
  {
    type metadata accessor for ContactPronunciation();
    if (v2 <= 0x3F)
    {
      sub_7BBC(319);
      if (v3 <= 0x3F)
      {
        sub_7C10();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_7BBC(uint64_t a1)
{
  if (!qword_4EA98)
  {
    type metadata accessor for CorrectedPronunciation();
    v1 = sub_346A0();
    if (!v2)
    {
      atomic_store(v1, &qword_4EA98);
    }
  }
}

void sub_7C10()
{
  if (!qword_4EAA0)
  {
    v0 = sub_346A0();
    if (!v1)
    {
      atomic_store(v0, &qword_4EAA0);
    }
  }
}

unint64_t sub_7C64()
{
  result = qword_4EAF0;
  if (!qword_4EAF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4EAF0);
  }

  return result;
}

unint64_t sub_7CBC()
{
  result = qword_4EAF8;
  if (!qword_4EAF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4EAF8);
  }

  return result;
}

unint64_t sub_7D14()
{
  result = qword_4EB00;
  if (!qword_4EB00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4EB00);
  }

  return result;
}

unint64_t sub_7D6C()
{
  result = qword_4EB08;
  if (!qword_4EB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4EB08);
  }

  return result;
}

unint64_t sub_7DC0()
{
  result = qword_4EB30;
  if (!qword_4EB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4EB30);
  }

  return result;
}

unint64_t sub_7E14()
{
  result = qword_4EB40;
  if (!qword_4EB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4EB40);
  }

  return result;
}

unint64_t sub_7E68()
{
  result = qword_4EB48;
  if (!qword_4EB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4EB48);
  }

  return result;
}

unint64_t sub_7EBC()
{
  result = qword_4EB50;
  if (!qword_4EB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4EB50);
  }

  return result;
}

uint64_t sub_7F10(uint64_t a1, unint64_t *a2, void *a3)
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

unint64_t sub_7F58()
{
  result = qword_4EB88;
  if (!qword_4EB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4EB88);
  }

  return result;
}

unint64_t sub_7FAC()
{
  result = qword_4EB98;
  if (!qword_4EB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4EB98);
  }

  return result;
}

uint64_t sub_8000(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TMDCGroundTruth(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_8064(uint64_t a1)
{
  v2 = type metadata accessor for TMDCGroundTruth(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_80C0()
{
  result = qword_4EBC0;
  if (!qword_4EBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4EBC0);
  }

  return result;
}

uint64_t sub_8114(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TMDCGroundTruth.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TMDCGroundTruth.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_82B0(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_8344(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_8438()
{
  result = qword_4EBD8;
  if (!qword_4EBD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4EBD8);
  }

  return result;
}

unint64_t sub_8490()
{
  result = qword_4EBE0;
  if (!qword_4EBE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4EBE0);
  }

  return result;
}

unint64_t sub_84E8()
{
  result = qword_4EBE8;
  if (!qword_4EBE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4EBE8);
  }

  return result;
}

unint64_t sub_8540()
{
  result = qword_4EBF0;
  if (!qword_4EBF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4EBF0);
  }

  return result;
}

unint64_t sub_8598()
{
  result = qword_4EBF8;
  if (!qword_4EBF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4EBF8);
  }

  return result;
}

unint64_t sub_85F0()
{
  result = qword_4EC00;
  if (!qword_4EC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4EC00);
  }

  return result;
}

unint64_t sub_8648()
{
  result = qword_4EC08;
  if (!qword_4EC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4EC08);
  }

  return result;
}

unint64_t sub_86A0()
{
  result = qword_4EC10;
  if (!qword_4EC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4EC10);
  }

  return result;
}

unint64_t sub_86F8()
{
  result = qword_4EC18;
  if (!qword_4EC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4EC18);
  }

  return result;
}

unint64_t sub_8750()
{
  result = qword_4EC20;
  if (!qword_4EC20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4EC20);
  }

  return result;
}

unint64_t sub_87A8()
{
  result = qword_4EC28;
  if (!qword_4EC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4EC28);
  }

  return result;
}

unint64_t sub_8800()
{
  result = qword_4EC30;
  if (!qword_4EC30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4EC30);
  }

  return result;
}

uint64_t sub_887C()
{
  v1[3] = v0;
  sub_3204(&qword_4ED18, &qword_36298);
  v1[4] = swift_task_alloc();
  v2 = sub_33D80();
  v1[5] = v2;
  v1[6] = *(v2 - 8);
  v1[7] = swift_task_alloc();
  v3 = sub_3204(&qword_4ED20, &qword_362A0);
  v1[8] = v3;
  v1[9] = *(v3 - 8);
  v1[10] = swift_task_alloc();
  v4 = sub_3204(&qword_4ED28, &qword_362A8);
  v1[11] = v4;
  v1[12] = *(v4 - 8);
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();

  return _swift_task_switch(sub_8A50, 0, 0);
}

uint64_t sub_8A50()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[11];
  v4 = v0[12];
  sub_30C0((v0[3] + 16), *(v0[3] + 40));
  sub_13FF8();
  v0[2] = _swiftEmptyArrayStorage;
  (*(v4 + 16))(v2, v1, v3);
  sub_A830(&qword_4ED30, &qword_4ED28, &qword_362A8, &protocol conformance descriptor for AsyncMapSequence<A, B>);
  sub_34570();
  v5 = sub_A830(&qword_4ED38, &qword_4ED20, &qword_362A0, &protocol conformance descriptor for AsyncMapSequence<A, B>.Iterator);
  v6 = swift_task_alloc();
  v0[15] = v6;
  *v6 = v0;
  v6[1] = sub_8BCC;
  v7 = v0[8];
  v8 = v0[4];

  return dispatch thunk of AsyncIteratorProtocol.next()(v8, v7, v5);
}

uint64_t sub_8BCC()
{
  v2 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    (*(v2[9] + 8))(v2[10], v2[8]);

    v3 = sub_8EC4;
  }

  else
  {
    v3 = sub_8D00;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_8D00()
{
  v1 = v0[5];
  v2 = v0[6];
  v3 = v0[4];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = v0[14];
    v5 = v0[11];
    v6 = v0[12];
    (*(v0[9] + 8))(v0[10], v0[8]);
    sub_A948(v3, &qword_4ED18, &qword_36298);
    v7 = v0[2];
    (*(v6 + 8))(v4, v5);

    v8 = v0[1];

    return v8(v7);
  }

  else
  {
    (*(v2 + 32))(v0[7], v3, v1);
    v10 = swift_task_alloc();
    v0[17] = v10;
    *v10 = v0;
    v10[1] = sub_8F80;
    v11 = v0[7];
    v12 = v0[3];

    return sub_9284((v0 + 2), v11, v12);
  }
}

uint64_t sub_8EC4()
{
  (*(v0[12] + 8))(v0[14], v0[11]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_8F80()
{
  v2 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v4 = v2[9];
    v3 = v2[10];
    v5 = v2[8];
    (*(v2[6] + 8))(v2[7], v2[5]);
    (*(v4 + 8))(v3, v5);

    v6 = sub_91C8;
  }

  else
  {
    (*(v2[6] + 8))(v2[7], v2[5]);
    v6 = sub_90F0;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_90F0()
{
  v1 = sub_A830(&qword_4ED38, &qword_4ED20, &qword_362A0, &protocol conformance descriptor for AsyncMapSequence<A, B>.Iterator);
  v2 = swift_task_alloc();
  v0[15] = v2;
  *v2 = v0;
  v2[1] = sub_8BCC;
  v3 = v0[8];
  v4 = v0[4];

  return dispatch thunk of AsyncIteratorProtocol.next()(v4, v3, v1);
}

uint64_t sub_91C8()
{
  (*(v0[12] + 8))(v0[14], v0[11]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_9284(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[17] = a2;
  v3[18] = a3;
  v3[16] = a1;
  sub_3204(&qword_4ED40, &qword_362B8);
  v3[19] = swift_task_alloc();
  v4 = sub_33B90();
  v3[20] = v4;
  v3[21] = *(v4 - 8);
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();
  v3[25] = swift_task_alloc();
  v3[26] = swift_task_alloc();
  v3[27] = swift_task_alloc();
  v3[28] = swift_task_alloc();

  return _swift_task_switch(sub_93C8, 0, 0);
}

uint64_t sub_93C8()
{
  v122 = v0;
  v1 = *(v0 + 160);
  v2 = *(v0 + 168);
  v3 = *(v0 + 152);
  sub_33D50();
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_A948(*(v0 + 152), &qword_4ED40, &qword_362B8);
    if (qword_4E5A8 != -1)
    {
      swift_once();
    }

    v4 = sub_342A0();
    sub_3034(v4, qword_53A18);
    v5 = sub_34280();
    v6 = sub_345D0();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_0, v5, v6, "Couldn't locate conversationID, skipping conversation", v7, 2u);
    }

    goto LABEL_38;
  }

  v8 = *(v0 + 144);
  v9 = *(v0 + 136);
  (*(*(v0 + 168) + 32))(*(v0 + 224), *(v0 + 152), *(v0 + 160));
  v10 = objc_autoreleasePoolPush();
  sub_A154(v9, v8, (v0 + 120), v121);
  v11 = *(v0 + 224);
  objc_autoreleasePoolPop(v10);
  v12 = v121[0];
  v13 = sub_1CACC(v11, v121[0]);
  if (v13 == 2)
  {

    if (qword_4E5A8 != -1)
    {
      swift_once();
    }

    v14 = *(v0 + 224);
    v15 = *(v0 + 208);
    v16 = *(v0 + 160);
    v17 = *(v0 + 168);
    v18 = sub_342A0();
    sub_3034(v18, qword_53A18);
    (*(v17 + 16))(v15, v14, v16);
    v19 = sub_34280();
    v20 = sub_345D0();
    v21 = os_log_type_enabled(v19, v20);
    v22 = *(v0 + 224);
    v23 = *(v0 + 208);
    v25 = *(v0 + 160);
    v24 = *(v0 + 168);
    if (v21)
    {
      v119 = *(v0 + 224);
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v121[0] = v27;
      *v26 = 136315138;
      sub_A8F0();
      v28 = sub_34BB0();
      v30 = v29;
      v31 = *(v24 + 8);
      v31(v23, v25);
      v32 = sub_22960(v28, v30, v121);

      *(v26 + 4) = v32;
      _os_log_impl(&dword_0, v19, v20, "[%s]: Conversation doesn't belong to accepted domains", v26, 0xCu);
      sub_3364(v27);

      v31(v119, v25);
    }

    else
    {

      v57 = *(v24 + 8);
      v57(v23, v25);
      v57(v22, v25);
    }

    goto LABEL_38;
  }

  v34 = v13 & 1;
  v35 = v13;
  sub_30C0((*(v0 + 144) + 144), *(*(v0 + 144) + 168));
  if (v35)
  {
    if ((sub_33C80() & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  else if ((sub_33C70() & 1) == 0)
  {
LABEL_14:

    if (qword_4E5A8 != -1)
    {
      swift_once();
    }

    v36 = *(v0 + 224);
    v38 = *(v0 + 168);
    v37 = *(v0 + 176);
    v39 = *(v0 + 160);
    v40 = sub_342A0();
    sub_3034(v40, qword_53A18);
    (*(v38 + 16))(v37, v36, v39);
    v41 = sub_34280();
    v42 = sub_345D0();
    v43 = os_log_type_enabled(v41, v42);
    v44 = *(v0 + 224);
    v46 = *(v0 + 168);
    v45 = *(v0 + 176);
    v47 = *(v0 + 160);
    if (v43)
    {
      v115 = v34;
      v48 = swift_slowAlloc();
      v121[0] = swift_slowAlloc();
      *v48 = 136315394;
      sub_A8F0();
      v49 = sub_34BB0();
      v51 = v50;
      v52 = *(v46 + 8);
      v52(v45, v47);
      v53 = sub_22960(v49, v51, v121);

      *(v48 + 4) = v53;
      *(v48 + 12) = 2080;
      *(v0 + 65) = v115;
      v54 = sub_34400();
      v56 = sub_22960(v54, v55, v121);

      *(v48 + 14) = v56;
      _os_log_impl(&dword_0, v41, v42, "[%s]: %s is not enabled", v48, 0x16u);
      swift_arrayDestroy();

      v52(v44, v47);
    }

    else
    {

      v33 = *(v46 + 8);
      v33(v45, v47);
      v33(v44, v47);
    }

    goto LABEL_38;
  }

  if (qword_4E5A8 != -1)
  {
    swift_once();
  }

  v58 = *(v0 + 224);
  v59 = *(v0 + 200);
  v61 = *(v0 + 160);
  v60 = *(v0 + 168);
  v62 = sub_342A0();
  sub_3034(v62, qword_53A18);
  log = *(v60 + 16);
  (log)(v59, v58, v61);
  v63 = sub_34280();
  v64 = sub_345D0();
  v65 = os_log_type_enabled(v63, v64);
  v66 = *(v0 + 200);
  v68 = *(v0 + 160);
  v67 = *(v0 + 168);
  if (v65)
  {
    v116 = v34;
    v69 = swift_slowAlloc();
    v113 = swift_slowAlloc();
    v121[0] = v113;
    *v69 = 136315138;
    sub_A8F0();
    v70 = sub_34BB0();
    v72 = v71;
    v120 = *(v67 + 8);
    v120(v66, v68);
    v73 = sub_22960(v70, v72, v121);

    *(v69 + 4) = v73;
    _os_log_impl(&dword_0, v63, v64, "[%s]: Begin fetching ConversationData for conversation", v69, 0xCu);
    sub_3364(v113);

    v34 = v116;
  }

  else
  {

    v120 = *(v67 + 8);
    v120(v66, v68);
  }

  sub_30C0((*(v0 + 144) + 56), *(*(v0 + 144) + 80));
  sub_32474(v34, v12, v0 + 16);

  v74 = *(v0 + 16);
  v75 = *(v0 + 224);
  v76 = *(v0 + 160);
  if (v74)
  {
    v77 = *(v0 + 184);
    *(v0 + 72) = *(v0 + 24);
    *(v0 + 88) = *(v0 + 40);
    *(v0 + 97) = *(v0 + 49);
    (log)(v77, v75, v76);
    v78 = sub_34280();
    v79 = sub_345D0();
    v80 = os_log_type_enabled(v78, v79);
    v81 = *(v0 + 184);
    v82 = *(v0 + 160);
    if (v80)
    {
      v83 = swift_slowAlloc();
      v117 = v74;
      v84 = swift_slowAlloc();
      v121[0] = v84;
      *v83 = 136315138;
      sub_A8F0();
      v85 = sub_34BB0();
      v87 = v86;
      v88 = v82;
      v89 = v120;
      v120(v81, v88);
      v90 = sub_22960(v85, v87, v121);

      *(v83 + 4) = v90;
      _os_log_impl(&dword_0, v78, v79, "[%s]: Finished fetching ConversationData", v83, 0xCu);
      sub_3364(v84);
      v74 = v117;
    }

    else
    {

      v103 = v82;
      v89 = v120;
      v120(v81, v103);
    }

    v104 = **(v0 + 128);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v104 = sub_13388(0, *(v104 + 2) + 1, 1, v104);
    }

    v106 = *(v104 + 2);
    v105 = *(v104 + 3);
    if (v106 >= v105 >> 1)
    {
      v104 = sub_13388((v105 > 1), v106 + 1, 1, v104);
    }

    v107 = *(v0 + 128);
    v89(*(v0 + 224), *(v0 + 160));
    *(v104 + 2) = v106 + 1;
    v108 = &v104[56 * v106];
    *(v108 + 4) = v74;
    v109 = *(v0 + 72);
    v110 = *(v0 + 88);
    *(v108 + 65) = *(v0 + 97);
    *(v108 + 56) = v110;
    *(v108 + 40) = v109;
    *v107 = v104;
  }

  else
  {
    (log)(*(v0 + 192), v75, v76);
    v91 = sub_34280();
    v92 = sub_345D0();
    v93 = os_log_type_enabled(v91, v92);
    v94 = *(v0 + 224);
    v95 = *(v0 + 192);
    v96 = *(v0 + 160);
    if (v93)
    {
      v118 = *(v0 + 224);
      v97 = swift_slowAlloc();
      v98 = swift_slowAlloc();
      v121[0] = v98;
      *v97 = 136315138;
      sub_A8F0();
      v99 = sub_34BB0();
      v101 = v100;
      v120(v95, v96);
      v102 = sub_22960(v99, v101, v121);

      *(v97 + 4) = v102;
      _os_log_impl(&dword_0, v91, v92, "[%s]: ConversationData couldn't be fetched, skipping conversation", v97, 0xCu);
      sub_3364(v98);

      v120(v118, v96);
    }

    else
    {

      v120(v95, v96);
      v120(v94, v96);
    }
  }

LABEL_38:

  v111 = *(v0 + 8);

  return v111();
}

uint64_t sub_A154@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  v43 = a3;
  v44 = a4;
  v7 = sub_3204(&qword_4ED48, &qword_362C0);
  __chkstk_darwin(v7 - 8);
  v9 = &v41 - v8;
  v10 = sub_33B30();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v41 - v15;
  sub_33D60();
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_A948(v9, &qword_4ED48, &qword_362C0);
    if (qword_4E5A8 != -1)
    {
      swift_once();
    }

    v17 = sub_342A0();
    sub_3034(v17, qword_53A18);
    v18 = sub_34280();
    v19 = sub_345E0();
    v20 = os_log_type_enabled(v18, v19);
    v21 = v44;
    if (v20)
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_0, v18, v19, "No timestamp found in the conversation, skipping joining with CoreDuet events", v22, 2u);
    }

    sub_33D70();
    sub_34960();
    sub_349F0();
    v23 = v45;
    if (v45)
    {
      v24 = _swiftEmptyArrayStorage;
      do
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v24 = sub_134AC(0, v24[2] + 1, 1, v24);
        }

        v26 = v24[2];
        v25 = v24[3];
        if (v26 >= v25 >> 1)
        {
          v24 = sub_134AC((v25 > 1), v26 + 1, 1, v24);
        }

        v24[2] = v26 + 1;
        v27 = &v24[2 * v26];
        v27[4] = v23;
        v27[5] = _swiftEmptyArrayStorage;
        sub_349F0();
        v23 = v45;
      }

      while (v45);
    }

    else
    {
      v24 = _swiftEmptyArrayStorage;
    }

    *v21 = v24;
  }

  else
  {
    v42 = a1;
    (*(v11 + 32))(v16, v9, v10);
    sub_33B00();
    sub_30C0(a2 + 13, a2[16]);
    sub_A878();
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_361D0;
    *(v28 + 32) = sub_7F10(0, &qword_4ED50, INStartCallIntent_ptr);
    *(v28 + 40) = sub_7F10(0, &qword_4ED58, INSendMessageIntent_ptr);
    sub_33E90();
    if (v4)
    {

      v29 = *(v11 + 8);
      v29(v14, v10);
      result = (v29)(v16, v10);
      *v43 = v4;
    }

    else
    {
      v43 = 0;

      v31 = sub_34970();

      sub_33D70();
      sub_34970();

      sub_34020();
      sub_33DD0();
      v32 = sub_340E0();

      if (qword_4E5A8 != -1)
      {
        swift_once();
      }

      v33 = sub_342A0();
      sub_3034(v33, qword_53A18);
      swift_bridgeObjectRetain_n();

      v34 = sub_34280();
      v35 = sub_345D0();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        *v36 = 134218240;
        LODWORD(v42) = v35;
        v37 = *(v31 + 16);

        *(v36 + 4) = v37;

        *(v36 + 12) = 2048;
        v38 = *(v32 + 16);

        *(v36 + 14) = v38;

        _os_log_impl(&dword_0, v34, v42, "Found %ld call/message events, grouped into %ld turnEventPairs", v36, 0x16u);
      }

      else
      {

        swift_bridgeObjectRelease_n();
      }

      v39 = v44;
      v40 = *(v11 + 8);
      v40(v14, v10);
      result = (v40)(v16, v10);
      *v39 = v32;
    }
  }

  return result;
}

uint64_t sub_A76C()
{
  sub_3364(v0 + 2);
  sub_3364(v0 + 7);

  sub_3364(v0 + 13);
  sub_3364(v0 + 18);

  return swift_deallocClassInstance();
}

uint64_t sub_A7E8(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_A830(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_A7E8(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_A878()
{
  v0 = sub_3204(&qword_4ED60, &qword_362C8);
  if (swift_isClassType())
  {
    v1 = v0 == 0;
  }

  else
  {
    v1 = 1;
  }

  if (v1)
  {
    v2 = &unk_4ED68;
    v3 = &unk_362D0;
  }

  else
  {
    v2 = &unk_4F4B0;
    v3 = &qword_36C70;
  }

  return sub_3204(v2, v3);
}

unint64_t sub_A8F0()
{
  result = qword_4E9E8;
  if (!qword_4E9E8)
  {
    sub_33B90();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4E9E8);
  }

  return result;
}

uint64_t sub_A948(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_3204(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

char *sub_A9A8(uint64_t a1)
{
  v2 = sub_33D40();
  v69 = *(v2 - 8);
  v70 = v2;
  v3 = __chkstk_darwin(v2);
  v66 = &v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v67 = &v60 - v5;
  v6 = sub_33B90();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v74 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v60 - v10;
  sub_34000();
  v12 = sub_33F00();
  v14 = v13;

  if (*(v12 + 16))
  {
    v71 = v14;
    sub_34010();
    v15 = sub_B188(v11, v12);
    v16 = v1;
    if (v1)
    {
      (*(v7 + 8))(v11, v6);
    }

    else
    {
      v29 = v15;
      v31 = *(v7 + 8);
      v30 = v7 + 8;
      v64 = v31;
      v31(v11, v6);

      if (qword_4E5A8 != -1)
      {
        swift_once();
      }

      v32 = sub_342A0();
      sub_3034(v32, qword_53A18);

      v33 = sub_34280();
      v34 = sub_345D0();
      v35 = os_log_type_enabled(v33, v34);
      v62 = v30;
      if (v35)
      {
        v36 = swift_slowAlloc();
        *v36 = 134217984;
        *(v36 + 4) = *(v29 + 2);

        _os_log_impl(&dword_0, v33, v34, "Fetched %ld asrContactTokens", v36, 0xCu);
        v16 = 0;
      }

      else
      {
      }

      v65 = v6;
      v37 = sub_34000();
      v38 = v37;
      v7 = v74;
      v63 = v37 >> 62;
      v68 = v16;
      v61 = v29;
      v39 = v37 & 0xFFFFFFFFFFFFFF8;
      if (v37 >> 62)
      {
        v40 = sub_349A0();
      }

      else
      {
        v40 = *(&dword_10 + (v37 & 0xFFFFFFFFFFFFFF8));
      }

      v41 = 0;
      v42 = v38 & 0xC000000000000001;
      v60 = v38 + 32;
      while (v40 != v41)
      {
        if (v42)
        {
          v43 = sub_348C0();
        }

        else
        {
          if (v41 >= *(v39 + 16))
          {
            __break(1u);
LABEL_46:
            __break(1u);
            goto LABEL_47;
          }

          v43 = *(v38 + 8 * v41 + 32);
        }

        v44 = v43;
        v16 = sub_33D10();

        if (v16)
        {
          v40 = v41;
          break;
        }

        if (__OFADD__(v41++, 1))
        {
          goto LABEL_46;
        }
      }

      if (v63)
      {
        goto LABEL_33;
      }

      result = *(v39 + 16);
      if (v40 == result)
      {
        goto LABEL_34;
      }

LABEL_28:
      if (v42)
      {
        while (1)
        {
          v46 = sub_348C0();
LABEL_31:
          v40 = v46;
          v47 = sub_33D10();

          if (!v47)
          {
            __break(1u);
LABEL_33:
            result = sub_349A0();
            if (v40 != result)
            {
              goto LABEL_28;
            }
          }

LABEL_34:

          v48 = *(v71 + 16);
          if (v48 && (v42 = v7, v50 = v69, v49 = v70, v51 = v67, (*(v69 + 16))(v67, v71 + ((*(v50 + 80) + 32) & ~*(v50 + 80)), v70), v52 = sub_33D30(), v53 = v50, v7 = v42, (*(v53 + 8))(v51, v49), v52))
          {
            *(&v73 + 1) = sub_C67C();
            *&v72 = v52;
          }

          else
          {
            v52 = 0;
            v72 = 0u;
            v73 = 0u;
          }

          v54 = v52;
          sub_34010();
          sub_C3E8(&v72, 0xD000000000000014, 0x8000000000038ED0, v7);
          v64(v7, v65);
          sub_76CC(&v72);
          if (!v48)
          {
            break;
          }

          v39 = v71;
          if (*(v71 + 16))
          {
            v55 = v69;
            v56 = v70;
            v57 = v66;
            (*(v69 + 16))(v66, v71 + ((*(v55 + 80) + 32) & ~*(v55 + 80)), v70);

            v58 = sub_33D20();
            (*(v55 + 8))(v57, v56);
            v7 = v74;
            if (v58)
            {
              *(&v73 + 1) = sub_C67C();
              *&v72 = v58;
LABEL_44:
              v59 = v58;
              sub_34010();
              sub_C3E8(&v72, 0x4C4E544974736F70, 0xED000044496B6E69, v7);
              v64(v7, v65);
              sub_76CC(&v72);
              return v61;
            }

LABEL_43:
            v58 = 0;
            v72 = 0u;
            v73 = 0u;
            goto LABEL_44;
          }

          __break(1u);
        }

        goto LABEL_43;
      }

      if (v40 < *(v39 + 16))
      {
        v46 = *(v60 + 8 * v40);
        goto LABEL_31;
      }

      __break(1u);
    }
  }

  else
  {
    v68 = v1;
    v16 = v6;

    if (qword_4E5A8 != -1)
    {
LABEL_47:
      swift_once();
    }

    v18 = sub_342A0();
    sub_3034(v18, qword_53A18);

    v19 = sub_34280();
    v20 = sub_345E0();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *&v72 = v22;
      *v21 = 136315138;
      v23 = v74;
      sub_34010();
      sub_A8F0();
      v24 = v16;
      v25 = sub_34BB0();
      v27 = v26;
      (*(v7 + 8))(v23, v24);
      v28 = sub_22960(v25, v27, &v72);

      *(v21 + 4) = v28;
      _os_log_impl(&dword_0, v19, v20, "[%s]: No ASR features found for turn", v21, 0xCu);
      sub_3364(v22);
    }

    return 0;
  }

  return result;
}

char *sub_B188(uint64_t a1, uint64_t a2)
{
  v6 = sub_33B90();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v88 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_315A8(a2);
  if (!v10)
  {
    v18 = 0;
LABEL_26:
    v28 = sub_33B40();
    v30 = v29;
    sub_C2E4();
    swift_allocError();
    *v31 = v28;
    *(v31 + 8) = v30;
    *(v31 + 16) = v18;
    swift_willThrow();
    return v9;
  }

  v11 = v10;
  v98 = v7;
  v12 = *(v10 + 16);
  if (!v12)
  {
    v18 = 0;
LABEL_25:

    goto LABEL_26;
  }

  v97 = v6;
  v13 = sub_315C0(a2);
  if (!v13)
  {
    v18 = 1;
    goto LABEL_25;
  }

  v14 = v13;
  if (!*(v13 + 16))
  {
    v18 = 1;
LABEL_24:

    goto LABEL_25;
  }

  v15 = sub_317A4(a2);
  if (!v15)
  {
    v18 = 2;
    goto LABEL_24;
  }

  v92 = a1;
  v16 = *(v15 + 16);
  if (!v16)
  {
    v18 = 2;
LABEL_23:

    goto LABEL_24;
  }

  v17 = *(v14 + 16);
  v18 = 3;
  if (v17 != *(v11 + 16) || v16 != v17)
  {
    goto LABEL_23;
  }

  v93 = v2;
  v94 = v15;
  v88[1] = v3;
  v19 = 0;
  v95 = v14;
  v96 = v11 + 32;
  v100 = v11;
  v20 = (v11 + 40);
  v21 = _swiftEmptyArrayStorage;
  do
  {
    v25 = *(v20 - 1);
    v24 = *v20;

    v26 = sub_BA34(&off_46DB8, v25, v24);

    sub_C338(&unk_46DD8);
    if (v26)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v102 = v21;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_2FAEC(0, v21[2] + 1, 1);
        v21 = v102;
      }

      v23 = v21[2];
      v22 = v21[3];
      if (v23 >= v22 >> 1)
      {
        sub_2FAEC((v22 > 1), v23 + 1, 1);
        v21 = v102;
      }

      v21[2] = v23 + 1;
      v21[v23 + 4] = v19;
    }

    ++v19;
    v20 += 2;
  }

  while (v12 != v19);
  if (qword_4E5A8 != -1)
  {
    goto LABEL_59;
  }

  while (1)
  {
    v33 = sub_342A0();
    v34 = sub_3034(v33, qword_53A18);

    v90 = v34;
    v35 = sub_34280();
    v36 = sub_345D0();
    v37 = os_log_type_enabled(v35, v36);
    v38 = v94;
    v39 = v92;
    if (v37)
    {
      v40 = swift_slowAlloc();
      *v40 = 134217984;
      *(v40 + 4) = v21[2];

      _os_log_impl(&dword_0, v35, v36, "Found %ld ASR indices containing contact tags", v40, 0xCu);
    }

    else
    {
    }

    v42 = v21[2];
    v43 = v98;
    if (!v42)
    {
      break;
    }

    v91 = v38 + 32;
    v92 = v95 + 32;
    v9 = _swiftEmptyArrayStorage;
    *&v41 = 136315138;
    v89 = v41;
    v44 = 4;
    v99 = v21;
    while (1)
    {
      v45 = v21[v44];
      if ((v45 & 0x8000000000000000) != 0)
      {
        break;
      }

      if (v45 >= *(v100 + 16))
      {
        goto LABEL_56;
      }

      v46 = v96 + 16 * v45;
      v48 = *v46;
      v47 = *(v46 + 8);

      v49 = sub_BACC(v48, v47);
      v51 = v50;
      v21 = v52;

      if (v51)
      {
        if (v45 >= *(v95 + 16))
        {
          goto LABEL_57;
        }

        if (v45 >= *(v94 + 16))
        {
          goto LABEL_58;
        }

        v53 = (v92 + 16 * v45);
        v55 = *v53;
        v54 = v53[1];
        v97 = *(v91 + 8 * v45);
        v98 = v49;
        v56 = 24;
        if (*(v100 + 16) == *(v99 + 16))
        {
          v56 = 32;
        }

        v57 = *(v93 + v56);
        v58 = type metadata accessor for PhonemeString();
        v59 = objc_allocWithZone(v58);
        v60 = &v59[OBJC_IVAR___PhonemeString_symbols];
        *v60 = v55;
        v60[1] = v54;
        v59[OBJC_IVAR___PhonemeString_encoding] = 0;
        v61 = &v59[OBJC_IVAR___PhonemeString_boundary];
        *v61 = 32;
        v61[1] = 0xE100000000000000;
        v101.receiver = v59;
        v101.super_class = v58;

        v62 = objc_msgSendSuper2(&v101, "init");
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_130FC(0, *(v9 + 2) + 1, 1, v9);
        }

        v64 = *(v9 + 2);
        v63 = *(v9 + 3);
        if (v64 >= v63 >> 1)
        {
          v9 = sub_130FC((v63 > 1), v64 + 1, 1, v9);
        }

        v66 = v97;
        v65 = v98;
        v67 = v57 <= v97;
        *(v9 + 2) = v64 + 1;
        v68 = &v9[48 * v64];
        *(v68 + 4) = v65;
        *(v68 + 5) = v51;
        v68[48] = v21;
        *(v68 + 7) = v62;
        *(v68 + 8) = v66;
        v68[72] = v67;
      }

      else
      {

        v69 = sub_34280();
        v70 = sub_345E0();

        if (os_log_type_enabled(v69, v70))
        {
          v71 = swift_slowAlloc();
          v72 = swift_slowAlloc();
          v102 = v72;
          *v71 = v89;
          v73 = *v46;
          v74 = *(v46 + 8);

          v75 = sub_22960(v73, v74, &v102);

          *(v71 + 4) = v75;
          _os_log_impl(&dword_0, v69, v70, "Couldn't build ASRContactName from %s", v71, 0xCu);
          sub_3364(v72);
        }
      }

      v21 = v99;
      ++v44;
      if (!--v42)
      {

        return v9;
      }
    }

    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    swift_once();
  }

  v76 = v97;
  (v43[2])(v9, v39, v97);

  v77 = sub_34280();
  v78 = sub_345D0();

  if (os_log_type_enabled(v77, v78))
  {
    v79 = swift_slowAlloc();
    v99 = swift_slowAlloc();
    v102 = v99;
    *v79 = 136315394;
    sub_A8F0();
    v80 = sub_34BB0();
    v82 = v81;
    (v43[1])(v9, v76);
    v83 = sub_22960(v80, v82, &v102);

    *(v79 + 4) = v83;
    *(v79 + 12) = 2080;
    v84 = sub_34510();
    v86 = v85;

    v87 = sub_22960(v84, v86, &v102);

    *(v79 + 14) = v87;
    _os_log_impl(&dword_0, v77, v78, "[%s]: No contact found in ASR for %s", v79, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    (v43[1])(v9, v76);
  }

  return _swiftEmptyArrayStorage;
}

BOOL sub_BA34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1 + 40;
  v4 = *(a1 + 16) + 1;
  do
  {
    if (!--v4)
    {
      break;
    }

    v5 = v3 + 16;
    sub_324C();
    v6 = sub_34730();
    v3 = v5;
  }

  while ((v6 & 1) == 0);
  return v4 != 0;
}

void *sub_BACC(void *a1, unint64_t a2)
{
  v4 = sub_33AB0();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_4E5A8 != -1)
  {
    swift_once();
  }

  v8 = sub_342A0();
  sub_3034(v8, qword_53A18);

  v9 = sub_34280();
  v10 = sub_345D0();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v60 = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_22960(a1, a2, &v60);
    _os_log_impl(&dword_0, v9, v10, "toASRContactName for ASR token %s", v11, 0xCu);
    sub_3364(v12);
  }

  v60 = a1;
  v61 = a2;
  v58 = 3158110;
  v59 = 0xE300000000000000;
  v13 = sub_324C();
  v14 = sub_346E0();
  if (v14[2] != 1)
  {

    v27 = sub_34280();
    v32 = sub_345D0();
    if (!os_log_type_enabled(v27, v32))
    {
LABEL_25:

      return 0;
    }

    v33 = swift_slowAlloc();
    *v33 = 0;
    v34 = "Multiple name parts not supported. Skipping this ASR token.";
    v35 = v32;
    v36 = v27;
    v37 = v33;
    v38 = 2;
    goto LABEL_14;
  }

  v16 = v14[4];
  v15 = v14[5];

  v60 = v16;
  v61 = v15;
  v58 = 0x746361746E6F635CLL;
  v59 = 0xE90000000000002DLL;
  v17 = &type metadata for String;
  v18 = sub_346E0();

  if (v18[2] == 2)
  {
    v19 = v18[5];
    v60 = v18[4];
    v61 = v19;
    v58 = 3158622;
    v59 = 0xE300000000000000;
    v56 = 32;
    v57 = 0xE100000000000000;
    v60 = sub_34710();
    v61 = v20;
    sub_33A80();
    v21 = sub_34700();
    v22 = v5;
    v24 = v23;
    v25 = *(v22 + 8);
    v54 = v22 + 8;
    v25(v7, v4);

    v55 = v21;
    v60 = v21;
    v61 = v24;
    v26 = v24;
    v58 = 32;
    v59 = 0xE100000000000000;
    if (sub_34730())
    {

      v27 = sub_34280();
      v28 = sub_345E0();

      if (!os_log_type_enabled(v27, v28))
      {

        goto LABEL_25;
      }

      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v60 = v30;
      *v29 = 136315138;
      v31 = sub_22960(v55, v24, &v60);

      *(v29 + 4) = v31;
      _os_log_impl(&dword_0, v27, v28, "Multiple words in name text %s not supported. Skipping this ASR token.", v29, 0xCu);
      sub_3364(v30);
      goto LABEL_23;
    }

    if (v18[2] < 2uLL)
    {
      __break(1u);
    }

    else
    {
      v42 = v18[6];
      v43 = v18[7];

      v60 = v42;
      v61 = v43;
      v58 = 3158622;
      v59 = 0xE300000000000000;
      v56 = 32;
      v57 = 0xE100000000000000;
      v44 = sub_34710();
      v46 = v45;

      v60 = v44;
      v61 = v46;
      sub_33A80();
      v17 = sub_34700();
      v13 = v47;
      v25(v7, v4);

      if (qword_4E558 == -1)
      {
        goto LABEL_17;
      }
    }

    swift_once();
LABEL_17:
    if (*(&dword_10 + off_4ED70))
    {
      sub_2A60C(v17, v13);
      if (v48)
      {

        return v55;
      }
    }

    v27 = sub_34280();
    v50 = sub_345E0();

    if (!os_log_type_enabled(v27, v50))
    {

      goto LABEL_25;
    }

    v51 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    *v51 = 136315394;
    v52 = sub_22960(v17, v13, &v60);

    *(v51 + 4) = v52;
    *(v51 + 12) = 2080;
    v53 = sub_22960(v55, v26, &v60);

    *(v51 + 14) = v53;
    _os_log_impl(&dword_0, v27, v50, "Name part %s invalid for name %s. Skipping this ASR token.", v51, 0x16u);
    swift_arrayDestroy();
LABEL_23:

    goto LABEL_24;
  }

  v27 = sub_34280();
  v39 = sub_345D0();
  if (os_log_type_enabled(v27, v39))
  {
    v40 = swift_slowAlloc();
    *v40 = 134217984;
    v41 = v18[2];

    *(v40 + 4) = v41;

    v34 = "Invalid token format. Expected 2 components, actual: %ld. Skipping this ASR token.";
    v35 = v39;
    v36 = v27;
    v37 = v40;
    v38 = 12;
LABEL_14:
    _os_log_impl(&dword_0, v36, v35, v34, v37, v38);
LABEL_24:

    goto LABEL_25;
  }

  swift_bridgeObjectRelease_n();
  return 0;
}

uint64_t sub_C288()
{

  return swift_deallocClassInstance();
}

unint64_t sub_C2E4()
{
  result = qword_4EE48;
  if (!qword_4EE48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4EE48);
  }

  return result;
}

uint64_t sub_C38C()
{
  v0 = sub_1AAAC(&off_46D50);
  sub_3204(&qword_4EE50, qword_36390);
  result = swift_arrayDestroy();
  off_4ED70 = v0;
  return result;
}

void sub_C3E8(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v8 = sub_33B90();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(a1 + 24))
  {
    if (qword_4E5A8 != -1)
    {
      swift_once();
    }

    v12 = sub_342A0();
    sub_3034(v12, qword_53A18);
    (*(v9 + 16))(v11, a4, v8);

    v13 = sub_34280();
    v14 = sub_345E0();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v21 = a2;
      v16 = v15;
      v22 = swift_slowAlloc();
      *v16 = 136315394;
      sub_A8F0();
      v17 = sub_34BB0();
      v19 = v18;
      (*(v9 + 8))(v11, v8);
      v20 = sub_22960(v17, v19, &v22);

      *(v16 + 4) = v20;
      *(v16 + 12) = 2080;
      *(v16 + 14) = sub_22960(v21, a3, &v22);
      _os_log_impl(&dword_0, v13, v14, "[%s]: Failed to extract link ID '%s' for turn", v16, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      (*(v9 + 8))(v11, v8);
    }
  }
}

unint64_t sub_C67C()
{
  result = qword_4F380;
  if (!qword_4F380)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_4F380);
  }

  return result;
}

id sub_C6C8(uint64_t a1, void *a2, uint64_t a3, void *a4, void *a5, double a6)
{
  v11 = sub_342D0();
  v60 = *(v11 - 8);
  v61 = v11;
  v12 = __chkstk_darwin(v11);
  v14 = v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = v57 - v15;
  v17 = objc_allocWithZone(sub_33C10());

  v59._countAndFlagsBits = a3;
  v59._object = a4;
  sub_33C00();
  v18 = objc_allocWithZone(sub_33BF0());
  v58._countAndFlagsBits = a1;
  v58._object = a2;
  v62 = sub_33BE0();
  v19 = swift_allocObject();
  *(v19 + 16) = 0;
  v20 = v19 + 16;
  v64 = v19;
  *(v19 + 24) = 0xE000000000000000;
  v21 = swift_allocObject();
  v63 = v21;
  *(v21 + 16) = 0;
  v22 = (v21 + 16);
  v23 = dispatch_semaphore_create(0);
  v57[0] = v20;
  if (a5)
  {
    v24 = a5;
  }

  else
  {
    v24 = *(v57[2] + OBJC_IVAR____TtC44SiriPrivateLearningTTSMispronunciationPlugin20TTSPhonemesGenerator_sharedSession);
  }

  v25 = swift_allocObject();
  v26 = v63;
  v25[2] = v64;
  v25[3] = v26;
  v25[4] = v23;
  v27 = a5;

  v28 = v23;
  v29 = v62;
  sub_33BC0();

  sub_342C0();
  sub_342E0();
  v30 = v61;
  v31 = *(v60 + 8);
  v31(v14, v61);
  sub_34620();
  v31(v16, v30);
  if (sub_342B0())
  {
    v69 = 0;
    v70 = 0xE000000000000000;
    sub_34890(28);

    v69 = 0x7478657420726F66;
    v70 = 0xE900000000000020;
    sub_34460(v58);
    v71._countAndFlagsBits = 0x6175676E616C202CLL;
    v71._object = 0xEF2065646F436567;
    sub_34460(v71);
    sub_34460(v59);
    v32 = v69;
    v33 = v70;
    sub_D0A8();
    swift_allocError();
    *v34 = v32;
    *(v34 + 8) = v33;
    *(v34 + 16) = 2;
    swift_willThrow();
LABEL_8:
    v39 = v64;

    return v39;
  }

  swift_beginAccess();
  v35 = *v22;
  if (*v22)
  {
    v67 = 0;
    v68 = 0xE000000000000000;
    swift_errorRetain();
    sub_34890(49);
    v72._countAndFlagsBits = 0x7478657420726F66;
    v72._object = 0xE900000000000020;
    sub_34460(v72);
    sub_34460(v58);
    v73._countAndFlagsBits = 0x6175676E616C202CLL;
    v73._object = 0xEF2065646F436567;
    sub_34460(v73);
    sub_34460(v59);
    v74._object = 0x8000000000038F60;
    v74._countAndFlagsBits = 0xD000000000000013;
    sub_34460(v74);
    v65 = v35;
    sub_3204(&qword_4EF28, &qword_36CC0);
    sub_34980();
    v36 = v67;
    v37 = v68;
    sub_D0A8();
    swift_allocError();
    *v38 = v36;
    *(v38 + 8) = v37;
    *(v38 + 16) = 1;
    swift_willThrow();

    goto LABEL_8;
  }

  v41 = v64;
  if (qword_4E5A8 != -1)
  {
    swift_once();
  }

  v42 = sub_342A0();
  sub_3034(v42, qword_53A18);

  v43 = sub_34280();
  v44 = sub_345D0();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    v46 = v28;
    v47 = swift_slowAlloc();
    v67 = v47;
    *v45 = 136315138;
    swift_beginAccess();
    v48 = v41[2];
    v49 = v41[3];

    v50 = sub_22960(v48, v49, &v67);
    v29 = v62;

    *(v45 + 4) = v50;
    _os_log_impl(&dword_0, v43, v44, "Successfully fetched phonemes from TTS: %s", v45, 0xCu);
    sub_3364(v47);
    v28 = v46;
  }

  else
  {
  }

  swift_beginAccess();
  v52 = v41[2];
  v51 = v41[3];
  v53 = type metadata accessor for PhonemeString();
  v54 = objc_allocWithZone(v53);
  v55 = &v54[OBJC_IVAR___PhonemeString_symbols];
  *v55 = v52;
  v55[1] = v51;
  v54[OBJC_IVAR___PhonemeString_encoding] = 2;
  v56 = &v54[OBJC_IVAR___PhonemeString_boundary];
  *v56 = 32;
  v56[1] = 0xE100000000000000;
  v66.receiver = v54;
  v66.super_class = v53;

  v39 = objc_msgSendSuper2(&v66, "init", v57[0]);

  return v39;
}

Swift::Int sub_CD8C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    v8 = a1;
  }

  else
  {
    v8 = 0;
  }

  if (a2)
  {
    v9 = a2;
  }

  else
  {
    v9 = 0xE000000000000000;
  }

  swift_beginAccess();
  *(a4 + 16) = v8;
  *(a4 + 24) = v9;

  swift_beginAccess();
  *(a5 + 16) = a3;
  swift_errorRetain();

  return sub_34630();
}

uint64_t sub_CE48()
{
  v1 = OBJC_IVAR____TtC44SiriPrivateLearningTTSMispronunciationPlugin20TTSPhonemesGenerator_currentLocale;
  v2 = sub_34070();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TTSPhonemesGenerator(uint64_t a1)
{
  result = qword_4EE80;
  if (!qword_4EE80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_CF48(uint64_t a1)
{
  result = sub_34070();
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

uint64_t sub_CFE4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_D01C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_D054()
{

  return _swift_deallocObject(v0, 40, 7);
}

unint64_t sub_D0A8()
{
  result = qword_4EF30;
  if (!qword_4EF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4EF30);
  }

  return result;
}

uint64_t sub_D0FC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = _s28SiriPrivateLearningAnalytics6LocaleV0abC25TTSMispronunciationPluginE17phonemeDataFormatSSvg_0();
  if (!*(a1 + 16))
  {

    goto LABEL_5;
  }

  v6 = sub_2A60C(v4, v5);
  v8 = v7;

  if ((v8 & 1) == 0)
  {
LABEL_5:
    v14 = 0;
    v23 = xmmword_36420;
    v21 = 0uLL;
    v22 = 0uLL;
    v19 = 0uLL;
    v20 = 0uLL;
    v17 = 0uLL;
    v18 = 0uLL;
    goto LABEL_6;
  }

  v10 = *(a1 + 56) + 120 * v6;
  v12 = *(v10 + 32);
  v11 = *(v10 + 48);
  v13 = *(v10 + 16);
  v32[0] = *v10;
  v32[1] = v13;
  v33 = v12;
  v34 = v11;
  v14 = *(v10 + 112);
  v16 = *(v10 + 80);
  v15 = *(v10 + 96);
  v35 = *(v10 + 64);
  v36 = v16;
  v37 = v15;
  v38 = v14;
  v29 = v13;
  v30 = v32[0];
  v27 = v34;
  v28 = v33;
  v25 = v16;
  v26 = v35;
  v24 = v15;
  result = sub_D934(v32, v31);
  v18 = v24;
  v17 = v25;
  v20 = v26;
  v19 = v27;
  v22 = v28;
  v21 = v29;
  v23 = v30;
LABEL_6:
  *a2 = v23;
  *(a2 + 16) = v21;
  *(a2 + 32) = v22;
  *(a2 + 48) = v19;
  *(a2 + 64) = v20;
  *(a2 + 80) = v17;
  *(a2 + 96) = v18;
  *(a2 + 112) = v14;
  return result;
}

uint64_t sub_D224(uint64_t a1, uint64_t a2)
{
  v4 = sub_34070();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_D0FC(a2, &v19);
  if (v19 == 1)
  {
    if (qword_4E5A8 != -1)
    {
      swift_once();
    }

    v8 = sub_342A0();
    sub_3034(v8, qword_53A18);
    (*(v5 + 16))(v7, a1, v4);
    v9 = sub_34280();
    v10 = sub_345D0();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v26 = v12;
      *v11 = 136315138;
      v13 = _s28SiriPrivateLearningAnalytics6LocaleV0abC25TTSMispronunciationPluginE17phonemeDataFormatSSvg_0();
      v15 = v14;
      (*(v5 + 8))(v7, v4);
      v16 = sub_22960(v13, v15, &v26);

      *(v11 + 4) = v16;
      _os_log_impl(&dword_0, v9, v10, "No phonemeData entry for locale %s", v11, 0xCu);
      sub_3364(v12);
    }

    else
    {

      (*(v5 + 8))(v7, v4);
    }

    v17 = 1;
  }

  else
  {
    v26 = v19;
    v30 = v23;
    v31 = v24;
    v32[0] = v25[0];
    *(v32 + 9) = *(v25 + 9);
    v27 = v20;
    v28 = v21;
    v29 = v22;
    v17 = sub_D4EC();
    sub_D8CC(&v19);
  }

  return v17 & 1;
}

uint64_t sub_D4EC()
{
  v1 = sub_33AB0();
  v32 = *(v1 - 8);
  __chkstk_darwin(v1);
  v3 = &v32 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = v0;
  v4 = v0[10];
  if (v4 && (v5 = *(v4 + 16)) != 0)
  {
    v6 = (v32 + 8);
    v7 = (v4 + 56);
    while (1)
    {
      v8 = *v7;
      if (*v7)
      {
        v9 = HIBYTE(v8) & 0xF;
        if ((v8 & 0x2000000000000000) == 0)
        {
          v9 = *(v7 - 1) & 0xFFFFFFFFFFFFLL;
        }

        if (v9)
        {
          v34 = *(v7 - 1);
          v35 = v8;
          v10 = qword_4E5A0;

          if (v10 != -1)
          {
            swift_once();
          }

          sub_3034(v1, qword_4FA60);
          sub_33AA0();
          sub_324C();
          sub_346F0();
          v12 = v11;
          (*v6)(v3, v1);

          if ((v12 & 1) == 0)
          {
            break;
          }
        }
      }

      v7 += 8;
      if (!--v5)
      {
        goto LABEL_13;
      }
    }
  }

  else
  {
LABEL_13:
    v13 = *v33;
    if (*v33 && (v14 = *(v13 + 16)) != 0)
    {
      v15 = (v32 + 8);
      v16 = (v13 + 56);
      while (1)
      {
        v17 = *v16;
        if (*v16)
        {
          v18 = HIBYTE(v17) & 0xF;
          if ((v17 & 0x2000000000000000) == 0)
          {
            v18 = *(v16 - 1) & 0xFFFFFFFFFFFFLL;
          }

          if (v18)
          {
            v34 = *(v16 - 1);
            v35 = v17;
            v19 = qword_4E5A0;

            if (v19 != -1)
            {
              swift_once();
            }

            sub_3034(v1, qword_4FA60);
            sub_33AA0();
            sub_324C();
            sub_346F0();
            v21 = v20;
            (*v15)(v3, v1);

            if ((v21 & 1) == 0)
            {
              break;
            }
          }
        }

        v16 += 8;
        if (!--v14)
        {
          goto LABEL_25;
        }
      }
    }

    else
    {
LABEL_25:
      v22 = v33[5];
      if (!v22)
      {
        return 1;
      }

      v23 = *(v22 + 16);
      if (!v23)
      {
        return 1;
      }

      v24 = (v32 + 8);
      for (i = (v22 + 56); ; i += 8)
      {
        v26 = *i;
        if (*i)
        {
          v27 = HIBYTE(v26) & 0xF;
          if ((v26 & 0x2000000000000000) == 0)
          {
            v27 = *(i - 1) & 0xFFFFFFFFFFFFLL;
          }

          if (v27)
          {
            v34 = *(i - 1);
            v35 = v26;
            v28 = qword_4E5A0;

            if (v28 != -1)
            {
              swift_once();
            }

            sub_3034(v1, qword_4FA60);
            sub_33AA0();
            sub_324C();
            sub_346F0();
            v30 = v29;
            (*v24)(v3, v1);

            if ((v30 & 1) == 0)
            {
              break;
            }
          }
        }

        if (!--v23)
        {
          return 1;
        }
      }
    }
  }

  return 0;
}

uint64_t sub_D8CC(uint64_t a1)
{
  v2 = sub_3204(&qword_4F4E0, &unk_36430);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_D990(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_3204(&qword_4EF60, &qword_366A8);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v11[-v8];
  sub_30C0(a1, a1[3]);
  sub_F0C8();
  sub_34CA0();
  v12 = a2;
  v11[15] = 0;
  sub_3204(&qword_4EF48, &qword_366A0);
  sub_F170(&qword_4EF68, sub_F1F4, &protocol witness table for String, &protocol conformance descriptor for <> [A : B]);
  sub_34B70();
  if (!v3)
  {
    v11[14] = 1;
    sub_34B80();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_DB94()
{
  if (*v0)
  {
    return 0x63656843656D616ELL;
  }

  else
  {
    return 0xD000000000000012;
  }
}

uint64_t sub_DBDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000012 && 0x8000000000038F80 == a2 || (sub_34BC0() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x63656843656D616ELL && a2 == 0xEC0000006D75736BLL)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_34BC0();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_DCD4(uint64_t a1)
{
  v2 = sub_F0C8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_DD10(uint64_t a1)
{
  v2 = sub_F0C8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_DD4C@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_EEB8(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v5;
  }

  return result;
}

uint64_t sub_DD9C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = "ntact#Person#firstName";
  if (v2 == 1)
  {
    v4 = "ntact#Person#firstName";
  }

  else
  {
    v4 = "ntact#Person#lastName";
  }

  if (*a1)
  {
    v5 = 0xD000000000000025;
  }

  else
  {
    v5 = 0xD000000000000026;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = &unk_385E0;
  }

  if (*a2 != 1)
  {
    v3 = "ntact#Person#lastName";
  }

  if (*a2)
  {
    v7 = 0xD000000000000025;
  }

  else
  {
    v7 = 0xD000000000000026;
  }

  if (*a2)
  {
    v8 = v3;
  }

  else
  {
    v8 = &unk_385E0;
  }

  if (v5 == v7 && (v6 | 0x8000000000000000) == (v8 | 0x8000000000000000))
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_34BC0();
  }

  return v9 & 1;
}

Swift::Int sub_DE64()
{
  sub_34C40();
  sub_34430();

  return sub_34C70();
}

uint64_t sub_DEF4(uint64_t a1)
{
  sub_34430();
}

Swift::Int sub_DF70(uint64_t a1)
{
  sub_34C40();
  sub_34430();

  return sub_34C70();
}

uint64_t sub_DFFC(void *a1)
{
  v3 = v1;
  v5 = sub_3204(&qword_4EFA8, &qword_366C8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13 - v7;
  sub_30C0(a1, a1[3]);
  sub_FEF0();
  sub_34CA0();
  v9 = v3[1];
  v15 = *v3;
  v16 = v9;
  v17 = *(v3 + 32);
  v14 = 0;
  sub_10008();
  sub_34B20();
  if (v2)
  {
    return (*(v6 + 8))(v8, v5);
  }

  v10 = *(v3 + 56);
  v15 = *(v3 + 40);
  v16 = v10;
  v17 = *(v3 + 72);
  v14 = 1;
  sub_34B20();
  v12 = v3[6];
  v15 = v3[5];
  v16 = v12;
  v17 = *(v3 + 112);
  v14 = 2;
  sub_34B20();
  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_E1FC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_F248(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_E22C(unint64_t *a1@<X8>)
{
  v2 = 0xD000000000000025;
  v3 = "ntact#Person#firstName";
  if (*v1 != 1)
  {
    v3 = "ntact#Person#lastName";
  }

  if (*v1)
  {
    v4 = v3;
  }

  else
  {
    v2 = 0xD000000000000026;
    v4 = &unk_385E0;
  }

  *a1 = v2;
  a1[1] = v4 | 0x8000000000000000;
}

unint64_t sub_E27C()
{
  if (*v0)
  {
    return 0xD000000000000025;
  }

  else
  {
    return 0xD000000000000026;
  }
}

unint64_t sub_E2C8@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_F248(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_E2F0(uint64_t a1)
{
  v2 = sub_FEF0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_E32C(uint64_t a1)
{
  v2 = sub_FEF0();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_E368@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_F294(a2, v8);
  if (!v2)
  {
    v5 = v12;
    *(a1 + 64) = v11;
    *(a1 + 80) = v5;
    *(a1 + 96) = v13;
    *(a1 + 112) = v14;
    v6 = v8[1];
    *a1 = v8[0];
    *(a1 + 16) = v6;
    result = *&v9;
    v7 = v10;
    *(a1 + 32) = v9;
    *(a1 + 48) = v7;
  }

  return result;
}

uint64_t sub_E3E8(void *a1)
{
  v3 = v1;
  v5 = sub_3204(&qword_4F028, &qword_36AD8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10[-v7];
  sub_30C0(a1, a1[3]);
  sub_105A0();
  sub_34CA0();
  v11 = *v3;
  v10[7] = 0;
  sub_3204(&qword_4F010, &qword_36AD0);
  sub_10648(&qword_4F030, sub_106C0, &protocol conformance descriptor for <A> [A]);
  sub_34B70();
  if (v2)
  {
    return (*(v6 + 8))(v8, v5);
  }

  v10[6] = 1;
  sub_34B40();
  v10[5] = 2;
  sub_34B30();
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_E5E8()
{
  v1 = 0x65756C6176;
  if (*v0 != 1)
  {
    v1 = 0x6D617473656D6974;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000014;
  }
}

uint64_t sub_E648@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_F62C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_E670(uint64_t a1)
{
  v2 = sub_105A0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_E6AC(uint64_t a1)
{
  v2 = sub_105A0();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_E6E8@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_F754(a2, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = v5;
    *(a1 + 32) = v7;
  }

  return result;
}

uint64_t sub_E748(void *a1)
{
  v3 = sub_3204(&qword_4EF88, &qword_366B8);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_30C0(a1, a1[3]);
  sub_FE34();
  sub_34CA0();
  v8[15] = 0;
  sub_34B00();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v8[14] = 1;
  sub_34B00();
  v8[13] = 2;
  sub_34B10();
  v8[12] = 3;
  sub_34B00();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_E90C()
{
  v1 = 0x6449677061;
  v2 = 0x66664F6E656B6F74;
  if (*v0 != 2)
  {
    v2 = 0x6172676F6874726FLL;
  }

  if (*v0)
  {
    v1 = 0x61746144737474;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_E994@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_FA00(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_E9BC(uint64_t a1)
{
  v2 = sub_FE34();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_E9F8(uint64_t a1)
{
  v2 = sub_FE34();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_EA34@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_FB68(a2, v7);
  if (!v2)
  {
    v5 = v7[1];
    *a1 = v7[0];
    a1[1] = v5;
    result = *&v8;
    v6 = v9;
    a1[2] = v8;
    a1[3] = v6;
  }

  return result;
}

uint64_t sub_EA90(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v2)
  {
    return 0;
  }

  LODWORD(v5) = 0;
  v6 = 0;
  v7 = a2 & 0xFFFFFFFFFFFFFFLL;
  v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
  while ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v15[0] = a1;
      v15[1] = v7;
      v12 = v15 + v6;
    }

    else
    {
      v11 = v8;
      if ((a1 & 0x1000000000000000) == 0)
      {
        v11 = sub_34900();
      }

      v12 = (v11 + v6);
    }

    v9 = *v12;
    if ((*v12 & 0x80000000) == 0)
    {
      goto LABEL_15;
    }

    v13 = (__clz(v9 ^ 0xFF) - 24);
    if (v13 > 2)
    {
      if (v13 == 3)
      {
        v9 = ((v9 & 0xF) << 12) | ((v12[1] & 0x3F) << 6) | v12[2] & 0x3F;
        v10 = 3;
      }

      else
      {
        v9 = ((v9 & 0xF) << 18) | ((v12[1] & 0x3F) << 12) | ((v12[2] & 0x3F) << 6) | v12[3] & 0x3F;
        v10 = 4;
      }

      goto LABEL_7;
    }

    if (v13 == 1)
    {
LABEL_15:
      v10 = 1;
    }

    else
    {
      v10 = 2;
      v9 = v12[1] & 0x3F | ((v9 & 0x1F) << 6);
    }

LABEL_7:
    v6 += v10;
    v5 = (v9 - v5 + 32 * v5);
    if (v6 >= v2)
    {
      return v5;
    }
  }

  v9 = sub_34880();
  if ((v9 & 0x80000000) == 0)
  {
    goto LABEL_7;
  }

  __break(1u);
  return 0;
}

__n128 sub_EC04(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_EC18(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 64))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_EC74(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_ECE8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t sub_ECFC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 12))
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

uint64_t sub_ED44(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 12) = 1;
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

    *(result + 12) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_ED94(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_EDAC(uint64_t a1, __int128 *a2)
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
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_EDD8(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 113))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_EE34(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 112) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 113) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 113) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_EEB8(void *a1)
{
  v3 = sub_3204(&qword_4EF38, &qword_36698);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9[-v5];
  v7 = a1[3];
  sub_30C0(a1, v7);
  sub_F0C8();
  sub_34C90();
  if (!v1)
  {
    sub_3204(&qword_4EF48, &qword_366A0);
    v9[7] = 0;
    sub_F170(&qword_4EF50, sub_F11C, &protocol witness table for String, &protocol conformance descriptor for <> [A : B]);
    sub_34AB0();
    v7 = v10;
    v9[6] = 1;
    sub_34AC0();
    (*(v4 + 8))(v6, v3);
  }

  sub_3364(a1);
  return v7;
}

unint64_t sub_F0C8()
{
  result = qword_4EF40;
  if (!qword_4EF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4EF40);
  }

  return result;
}

unint64_t sub_F11C()
{
  result = qword_4EF58;
  if (!qword_4EF58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4EF58);
  }

  return result;
}

uint64_t sub_F170(unint64_t *a1, void (*a2)(void), uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_A7E8(&qword_4EF48, &qword_366A0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_F1F4()
{
  result = qword_4EF70;
  if (!qword_4EF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4EF70);
  }

  return result;
}

unint64_t sub_F248(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_46DE8;
  v6._object = a2;
  v4 = sub_34A10(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_F294@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = sub_3204(&qword_4EF90, &qword_366C0);
  v5 = *(v29 - 8);
  __chkstk_darwin(v29);
  v7 = &v19 - v6;
  sub_30C0(a1, a1[3]);
  sub_FEF0();
  sub_34C90();
  if (v2)
  {
    return sub_3364(a1);
  }

  v8 = v5;
  v28 = a2;
  LOBYTE(v30) = 0;
  sub_FF44();
  v9 = v29;
  sub_34A60();
  v26 = v38;
  v27 = v39;
  v53 = v40;
  LOBYTE(v30) = 1;
  sub_34A60();
  *v25 = v38;
  *&v25[16] = v39;
  v24 = v40;
  v54 = 2;
  sub_34A60();
  (*(v8 + 8))(v7, v9);
  v22 = v51;
  v23 = *(&v50 + 1);
  v21 = *(&v51 + 1);
  v20 = v52;
  v10 = v26;
  v29 = v50;
  v30 = v26;
  v11 = v27;
  v31 = v27;
  v12 = v53;
  LOBYTE(v32) = v53;
  *(&v32 + 1) = *v25;
  v33 = *&v25[8];
  *&v34 = *&v25[24];
  v13 = v24;
  BYTE8(v34) = v24;
  v35 = v50;
  v36 = v51;
  v37 = v52;
  sub_D934(&v30, &v38);
  sub_3364(a1);
  v38 = v10;
  v39 = v11;
  v40 = v12;
  v41 = *v25;
  v42 = *&v25[8];
  v43 = *&v25[24];
  v44 = v13;
  v45 = v29;
  v46 = v23;
  v47 = v22;
  v48 = v21;
  v49 = v20;
  result = sub_FFD8(&v38);
  v15 = v35;
  v16 = v28;
  *(v28 + 64) = v34;
  *(v16 + 80) = v15;
  *(v16 + 96) = v36;
  *(v16 + 112) = v37;
  v17 = v31;
  *v16 = v30;
  *(v16 + 16) = v17;
  v18 = v33;
  *(v16 + 32) = v32;
  *(v16 + 48) = v18;
  return result;
}

uint64_t sub_F62C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000014 && 0x8000000000038FA0 == a2 || (sub_34BC0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000 || (sub_34BC0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070)
  {

    return 2;
  }

  else
  {
    v5 = sub_34BC0();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_F754@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = sub_3204(&qword_4F000, &qword_36AC8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v19 - v7;
  sub_30C0(a1, a1[3]);
  sub_105A0();
  sub_34C90();
  if (v2)
  {
    return sub_3364(a1);
  }

  sub_3204(&qword_4F010, &qword_36AD0);
  v24 = 0;
  sub_10648(&qword_4F018, sub_105F4, &protocol conformance descriptor for <A> [A]);
  sub_34AB0();
  v21 = a2;
  v9 = v25;
  v23 = 1;
  v10 = sub_34A80();
  v20 = v11;
  v22 = 2;
  v12 = sub_34A70();
  v13 = v8;
  v15 = v14;
  (*(v6 + 8))(v13, v5);
  result = sub_3364(a1);
  v17 = v20;
  v18 = v21;
  *v21 = v9;
  v18[1] = v10;
  v18[2] = v17;
  v18[3] = v12;
  *(v18 + 32) = v15 & 1;
  return result;
}

uint64_t sub_FA00(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6449677061 && a2 == 0xE500000000000000;
  if (v4 || (sub_34BC0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x61746144737474 && a2 == 0xE700000000000000 || (sub_34BC0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x66664F6E656B6F74 && a2 == 0xEB00000000746573 || (sub_34BC0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6172676F6874726FLL && a2 == 0xEB00000000796870)
  {

    return 3;
  }

  else
  {
    v6 = sub_34BC0();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_FB68@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_3204(&qword_4EF78, &qword_366B0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v24 - v7;
  sub_30C0(a1, a1[3]);
  sub_FE34();
  sub_34C90();
  if (v2)
  {
    return sub_3364(a1);
  }

  LOBYTE(v32[0]) = 0;
  v9 = sub_34A40();
  v11 = v10;
  v27 = v9;
  LOBYTE(v32[0]) = 1;
  *&v26 = sub_34A40();
  *(&v26 + 1) = v12;
  LOBYTE(v32[0]) = 2;
  v25 = sub_34A50();
  v38 = v13 & 1;
  v39 = 3;
  v14 = sub_34A40();
  v15 = v8;
  v17 = v16;
  (*(v6 + 8))(v15, v5);
  v18 = v27;
  *&v28 = v27;
  *(&v28 + 1) = v11;
  v29 = v26;
  v19 = v25;
  *&v30 = v25;
  v20 = v38;
  BYTE8(v30) = v38;
  *&v31 = v14;
  *(&v31 + 1) = v17;
  sub_FE88(&v28, v32);
  sub_3364(a1);
  v32[0] = v18;
  v32[1] = v11;
  v33 = v26;
  v34 = v19;
  v35 = v20;
  v36 = v14;
  v37 = v17;
  result = sub_FEC0(v32);
  v22 = v29;
  *a2 = v28;
  a2[1] = v22;
  v23 = v31;
  a2[2] = v30;
  a2[3] = v23;
  return result;
}

unint64_t sub_FE34()
{
  result = qword_4EF80;
  if (!qword_4EF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4EF80);
  }

  return result;
}

unint64_t sub_FEF0()
{
  result = qword_4EF98;
  if (!qword_4EF98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4EF98);
  }

  return result;
}

unint64_t sub_FF44()
{
  result = qword_4EFA0;
  if (!qword_4EFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4EFA0);
  }

  return result;
}

uint64_t sub_FF98(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_10008()
{
  result = qword_4EFB0;
  if (!qword_4EFB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4EFB0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PhonemeData.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PhonemeData.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 sub_101D8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_101EC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_10234(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1028C()
{
  result = qword_4EFB8;
  if (!qword_4EFB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4EFB8);
  }

  return result;
}

unint64_t sub_102E4()
{
  result = qword_4EFC0;
  if (!qword_4EFC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4EFC0);
  }

  return result;
}

unint64_t sub_1033C()
{
  result = qword_4EFC8;
  if (!qword_4EFC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4EFC8);
  }

  return result;
}

unint64_t sub_10394()
{
  result = qword_4EFD0;
  if (!qword_4EFD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4EFD0);
  }

  return result;
}

unint64_t sub_103EC()
{
  result = qword_4EFD8;
  if (!qword_4EFD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4EFD8);
  }

  return result;
}

unint64_t sub_10444()
{
  result = qword_4EFE0;
  if (!qword_4EFE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4EFE0);
  }

  return result;
}

unint64_t sub_1049C()
{
  result = qword_4EFE8;
  if (!qword_4EFE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4EFE8);
  }

  return result;
}

unint64_t sub_104F4()
{
  result = qword_4EFF0;
  if (!qword_4EFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4EFF0);
  }

  return result;
}

unint64_t sub_1054C()
{
  result = qword_4EFF8;
  if (!qword_4EFF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4EFF8);
  }

  return result;
}

unint64_t sub_105A0()
{
  result = qword_4F008;
  if (!qword_4F008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F008);
  }

  return result;
}

unint64_t sub_105F4()
{
  result = qword_4F020;
  if (!qword_4F020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F020);
  }

  return result;
}

uint64_t sub_10648(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_A7E8(&qword_4F010, &qword_36AD0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_106C0()
{
  result = qword_4F038;
  if (!qword_4F038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F038);
  }

  return result;
}

unint64_t sub_10728()
{
  result = qword_4F040;
  if (!qword_4F040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F040);
  }

  return result;
}

unint64_t sub_10780()
{
  result = qword_4F048;
  if (!qword_4F048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F048);
  }

  return result;
}

unint64_t sub_107D8()
{
  result = qword_4F050;
  if (!qword_4F050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F050);
  }

  return result;
}

uint64_t type metadata accessor for TMDCCoreDataStore(uint64_t a1)
{
  result = qword_4F068;
  if (!qword_4F068)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_108BC()
{
  v2 = sub_34030();
  v3 = v0;

  v4._object = 0x80000000000390E0;
  v4._countAndFlagsBits = 0xD000000000000019;
  sub_34460(v4);

  qword_4F058 = v2;
  unk_4F060 = v3;
  return result;
}

id sub_1092C(id a1)
{
  v2 = objc_opt_self();
  v3 = sub_34380();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    a1 = [objc_allocWithZone(type metadata accessor for TMDCGroundTruthCoreDataRecord()) initWithEntity:v4 insertIntoManagedObjectContext:a1];
    v7 = a1;
    sub_10A28(&v7);
  }

  else
  {
    sub_13878();
    swift_allocError();
    *v5 = 0;
    v5[1] = 0;
    swift_willThrow();
  }

  return a1;
}

void sub_10A28(void **a1)
{
  v3 = sub_33B30();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;
  isa = sub_33B50().super.isa;
  [v7 setIdentifier:isa];

  v9 = type metadata accessor for TMDCGroundTruth(0);
  v10 = sub_34380();
  [v7 setContactName:v10];

  v11 = sub_34380();
  [v7 setAsrPhonemes:v11];

  v12 = [objc_allocWithZone(NSNumber) initWithLongLong:*(v1 + v9[7])];
  [v7 setAsrConfidence:v12];

  [v7 setSiriCurrentPronunciation:*(v1 + v9[9])];
  [v7 setSiriCorrectedPronunciation:*(v1 + v9[10])];
  v13 = [objc_allocWithZone(NSNumber) initWithDouble:*(v1 + v9[11])];
  [v7 setP2pDistance:v13];

  v14 = [objc_allocWithZone(NSNumber) initWithBool:*(v1 + v9[12])];
  [v7 setTtsMispronounced:v14];

  if (*(v1 + v9[13] + 8))
  {
    v15 = sub_34380();
  }

  else
  {
    v15 = 0;
  }

  [v7 setOverriddenContactIdentifier:v15];

  sub_33B20();
  sub_33B10();
  v17 = v16;
  (*(v4 + 8))(v6, v3);
  v18 = [objc_allocWithZone(NSNumber) initWithDouble:v17];
  [v7 setEditTimestamp:v18];
}

int *sub_10CF4@<X0>(uint64_t a1@<X8>)
{
  v39 = sub_33B90();
  v3 = *(v39 - 8);
  __chkstk_darwin(v39);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [v1 identifier];
  sub_33B70();

  v7 = [v1 contactName];
  v8 = sub_343B0();
  v37 = v9;
  v38 = v8;

  v10 = [v1 asrConfidence];
  v36 = [v10 longLongValue];

  v11 = [v1 asrPhonemes];
  v12 = sub_343B0();
  v34 = v13;
  v35 = v12;

  v14 = [v1 siriCurrentPronunciation];
  v15 = [v1 siriCorrectedPronunciation];
  v16 = [v1 p2pDistance];
  [v16 doubleValue];
  v18 = v17;

  v19 = [v1 ttsMispronounced];
  v20 = [v19 BOOLValue];

  v21 = [v1 overriddenContactIdentifier];
  if (v21)
  {
    v22 = v21;
    v23 = sub_343B0();
    v25 = v24;
  }

  else
  {
    v23 = 0;
    v25 = 0;
  }

  sub_33FF0();
  swift_allocObject();
  sub_33FE0();
  v26 = sub_33FD0();

  (*(v3 + 32))(a1, v5, v39);
  result = type metadata accessor for TMDCGroundTruth(0);
  *(a1 + result[5]) = (v26 & 1) == 0;
  v28 = (a1 + result[6]);
  v29 = v37;
  *v28 = v38;
  v28[1] = v29;
  v30 = v35;
  *(a1 + result[7]) = v36;
  v31 = (a1 + result[8]);
  v32 = v34;
  *v31 = v30;
  v31[1] = v32;
  *(a1 + result[9]) = v14;
  *(a1 + result[10]) = v15;
  *(a1 + result[11]) = v18;
  *(a1 + result[12]) = v20;
  v33 = (a1 + result[13]);
  *v33 = v23;
  v33[1] = v25;
  return result;
}

void sub_10FF4()
{
  v1 = sub_33DA0();
  v2 = sub_1092C(v1);

  if (!v0)
  {

    v3 = sub_33DA0();
    v7 = 0;
    v4 = [v3 save:&v7];

    if (v4)
    {
      v5 = v7;
    }

    else
    {
      v6 = v7;
      sub_33AC0();

      swift_willThrow();
    }
  }
}

void sub_110E8(unint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v33 = a3;
  v34 = a1;
  v5 = type metadata accessor for TMDCGroundTruth(0);
  v35 = *(v5 - 8);
  __chkstk_darwin(v5 - 8);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = objc_allocWithZone(NSFetchRequest);
  v9 = sub_34380();
  v10 = [v8 initWithEntityName:v9];

  if (a2)
  {
    sub_7F10(0, &qword_4F0C0, NSPredicate_ptr);
    sub_3204(&qword_4F0C8, &qword_36C78);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_35920;
    *(v11 + 56) = &type metadata for String;
    *(v11 + 64) = sub_13820();
    *(v11 + 32) = v34;
    *(v11 + 40) = a2;

    v12 = sub_345B0();
    [v10 setPredicate:v12];
  }

  sub_3204(&unk_4F4B0, &qword_36C70);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_35930;
  v14 = objc_allocWithZone(NSSortDescriptor);
  v15 = sub_34380();
  v16 = [v14 initWithKey:v15 ascending:0];

  *(v13 + 32) = v16;
  sub_7F10(0, &qword_4F0B8, NSSortDescriptor_ptr);
  isa = sub_344F0().super.isa;

  [v10 setSortDescriptors:isa];

  v18 = sub_33DA0();
  type metadata accessor for TMDCGroundTruthCoreDataRecord();
  v19 = sub_34650();
  v20 = v3;
  if (v3)
  {
  }

  else
  {
    v21 = v19;

    if (v21 >> 62)
    {
      goto LABEL_21;
    }

    v22 = *(&dword_10 + (v21 & 0xFFFFFFFFFFFFFF8));
    v31 = 0;
    for (i = v10; v22; i = v10)
    {
      v23 = 0;
      v34 = v21 & 0xC000000000000001;
      v20 = _swiftEmptyArrayStorage;
      v24 = v7;
      v10 = v22;
      while (1)
      {
        if (v34)
        {
          v25 = sub_348C0();
        }

        else
        {
          if (v23 >= *(&dword_10 + (v21 & 0xFFFFFFFFFFFFFF8)))
          {
            goto LABEL_20;
          }

          v25 = *(v21 + 8 * v23 + 32);
        }

        v26 = v25;
        v27 = (v23 + 1);
        if (__OFADD__(v23, 1))
        {
          break;
        }

        sub_10CF4(v7);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = sub_135E0(0, v20[2] + 1, 1, v20, &qword_4F0D8, &qword_36C80, type metadata accessor for TMDCGroundTruth);
        }

        v29 = v20[2];
        v28 = v20[3];
        if (v29 >= v28 >> 1)
        {
          v20 = sub_135E0((v28 > 1), v29 + 1, 1, v20, &qword_4F0D8, &qword_36C80, type metadata accessor for TMDCGroundTruth);
        }

        v20[2] = v29 + 1;
        v30 = v20 + ((*(v35 + 80) + 32) & ~*(v35 + 80)) + *(v35 + 72) * v29;
        v7 = v24;
        sub_137BC(v24, v30);
        ++v23;
        if (v27 == v10)
        {
          goto LABEL_23;
        }
      }

      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      v22 = sub_349A0();
      v31 = v20;
    }

    v20 = _swiftEmptyArrayStorage;
LABEL_23:

    *v33 = v20;
  }
}

void sub_11594(uint64_t a1)
{
  v3 = objc_allocWithZone(NSFetchRequest);
  v4 = sub_34380();
  v5 = [v3 initWithEntityName:v4];

  if (*(a1 + 16))
  {
    sub_7F10(0, &qword_4F0C0, NSPredicate_ptr);
    sub_3204(&qword_4F0C8, &qword_36C78);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_35920;
    *(v6 + 56) = sub_3204(&qword_4F138, &qword_36CD0);
    *(v6 + 64) = sub_13E28();
    *(v6 + 32) = a1;

    v7 = sub_345B0();
    [v5 setPredicate:v7];
  }

  v8 = sub_33DA0();
  type metadata accessor for TMDCGroundTruthCoreDataRecord();
  v9 = sub_34650();
  if (v1)
  {
  }

  else
  {
    v10 = v9;

    v21 = v5;
    if (v10 >> 62)
    {
      goto LABEL_17;
    }

    for (i = *(&dword_10 + (v10 & 0xFFFFFFFFFFFFFF8)); i; i = sub_349A0())
    {
      v12 = 0;
      while (1)
      {
        if ((v10 & 0xC000000000000001) != 0)
        {
          v13 = sub_348C0();
        }

        else
        {
          if (v12 >= *(&dword_10 + (v10 & 0xFFFFFFFFFFFFFF8)))
          {
            goto LABEL_16;
          }

          v13 = *(v10 + 8 * v12 + 32);
        }

        v14 = v13;
        v15 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        v16 = sub_33DA0();
        [v16 deleteObject:v14];

        ++v12;
        if (v15 == i)
        {
          goto LABEL_18;
        }
      }

      __break(1u);
LABEL_16:
      __break(1u);
LABEL_17:
      ;
    }

LABEL_18:

    v17 = sub_33DA0();
    v22 = 0;
    v18 = [v17 save:&v22];

    if (v18)
    {
      v19 = v22;
    }

    else
    {
      v20 = v22;
      sub_33AC0();

      swift_willThrow();
    }
  }
}

void sub_118B4(uint64_t a1)
{
  v3 = v1;
  v4 = sub_33DA0();
  v5 = sub_1207C();

  if (qword_4E5A8 != -1)
  {
    goto LABEL_63;
  }

  while (1)
  {
    v6 = sub_342A0();
    sub_3034(v6, qword_53A18);
    v7 = sub_34280();
    v8 = sub_345D0();
    if (os_log_type_enabled(v7, v8))
    {
      v2 = swift_slowAlloc();
      *v2 = 134217984;
      *(v2 + 4) = v5;
      _os_log_impl(&dword_0, v7, v8, "Current TMDCCoreData store size (bytes): %ld", v2, 0xCu);
    }

    v9 = v5 - 500000;
    if (__OFADD__(v5, -500000))
    {
      __break(1u);
    }

    else
    {
      v10 = sub_34280();
      v11 = sub_345D0();
      v12 = os_log_type_enabled(v10, v11);
      if (v9 < 1)
      {
        if (v12)
        {
          v15 = swift_slowAlloc();
          *v15 = 0;
          _os_log_impl(&dword_0, v10, v11, "Store size to delete is not greater than 0, skipping deletion", v15, 2u);
        }

        return;
      }

      if (v12)
      {
        v13 = swift_slowAlloc();
        *v13 = 134217984;
        *(v13 + 4) = v9;
        _os_log_impl(&dword_0, v10, v11, "Store size to delete (in bytes): %ld", v13, 0xCu);
      }

      v14 = sub_12A60(0, 1, 1);
      if (v3)
      {
        return;
      }

      v3 = v14;
      v2 = v14 >> 62;
      if (!(v14 >> 62))
      {
        v16 = *(&dword_10 + (v14 & 0xFFFFFFFFFFFFFF8));
        if (v16 < 1)
        {
          goto LABEL_66;
        }

        goto LABEL_15;
      }
    }

    v16 = sub_349A0();
    if (v16 < 1)
    {
LABEL_66:

      v23 = sub_34280();
      v53 = sub_345D0();
      if (os_log_type_enabled(v23, v53))
      {
        v54 = swift_slowAlloc();
        *v54 = 0;
        _os_log_impl(&dword_0, v23, v53, "No records were fetched, skipping deletion", v54, 2u);
      }

      goto LABEL_25;
    }

LABEL_15:
    v17 = v5 / v16;
    if (!(v5 / v16))
    {
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
    }

    v18 = v9 / v17;
    if (v9 / v17 < 1)
    {

      v23 = sub_34280();
      v24 = sub_345D0();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        *v25 = 0;
        _os_log_impl(&dword_0, v23, v24, "No records to delete based on size, skipping deletion", v25, 2u);
      }

LABEL_25:

      return;
    }

    v19 = sub_34280();
    v20 = sub_345D0();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 134217984;
      *(v21 + 4) = v18;
      _os_log_impl(&dword_0, v19, v20, "Number of records to delete: %ld", v21, 0xCu);
    }

    if (v2)
    {
      v26 = sub_349A0();
      if (v26 >= v18)
      {
        v27 = v18;
      }

      else
      {
        v27 = v26;
      }

      if (v26 >= 0)
      {
        v5 = v27;
      }

      else
      {
        v5 = v18;
      }

      if (v5 < 0)
      {
        goto LABEL_73;
      }

      if (sub_349A0() < 0)
      {
        goto LABEL_74;
      }

      v22 = sub_349A0();
    }

    else
    {
      v22 = *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8));
      if (v22 >= v18)
      {
        v5 = v18;
      }

      else
      {
        v5 = *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8));
      }
    }

    if (v22 < v5)
    {
      goto LABEL_70;
    }

    if ((v3 & 0xC000000000000001) != 0 && v5)
    {
      type metadata accessor for TMDCGroundTruthCoreDataRecord();

      v28 = 0;
      do
      {
        v29 = (v28 + 1);
        sub_348B0(v28);
        v28 = v29;
      }

      while (v5 != v29);
    }

    else
    {
    }

    if (v2)
    {
      sub_349B0();
      v30 = v31;
      v2 = v32;
      v34 = v33;

      v5 = v34 >> 1;
    }

    else
    {
      v30 = (v3 & 0xFFFFFFFFFFFFFF8) + 32;
    }

    v3 = v5 - v2;
    if (__OFSUB__(v5, v2))
    {
      goto LABEL_71;
    }

    if (!v3)
    {
      break;
    }

    v55 = v18;
    v56 = _swiftEmptyArrayStorage;
    sub_34930();
    if ((v3 & 0x8000000000000000) != 0)
    {
      goto LABEL_72;
    }

    if (v5 <= v2)
    {
      v35 = v2;
    }

    else
    {
      v35 = v5;
    }

    v36 = v35 - v2;
    v37 = (v30 + 8 * v2);
    while (v36)
    {
      v38 = *v37++;
      v5 = [v38 objectID];
      sub_34910();
      v2 = v56[2];
      sub_34940();
      sub_34950();
      sub_34920();
      --v36;
      if (!--v3)
      {
        swift_unknownObjectRelease();
        v18 = v55;
        goto LABEL_56;
      }
    }

    __break(1u);
LABEL_63:
    swift_once();
  }

  swift_unknownObjectRelease();
LABEL_56:
  v39 = objc_allocWithZone(NSBatchDeleteRequest);
  sub_7F10(0, &qword_4F120, NSManagedObjectID_ptr);
  isa = sub_344F0().super.isa;

  v41 = [v39 initWithObjectIDs:isa];

  v42 = sub_33DA0();
  v56 = 0;
  v43 = [v42 executeRequest:v41 error:&v56];

  v44 = v56;
  if (v43 && (v45 = v56, v43, v46 = sub_33DA0(), v56 = 0, v47 = [v46 save:&v56], v46, v44 = v56, v47))
  {
    v48 = v56;
    v49 = sub_34280();
    v50 = sub_345D0();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      *v51 = 134217984;
      *(v51 + 4) = v18;
      _os_log_impl(&dword_0, v49, v50, "Completed deleting %ld TMDC CoreData records", v51, 0xCu);
    }
  }

  else
  {
    v52 = v44;
    sub_33AC0();

    swift_willThrow();
  }
}

char *sub_1207C()
{
  v1 = v0;
  v2 = sub_3204(&qword_4F128, &qword_36CC8);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v72 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v72 - v6;
  v8 = sub_33AF0();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v72 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [v1 persistentStoreCoordinator];
  if (!v12)
  {
    goto LABEL_50;
  }

  v13 = v12;
  v14 = [v12 persistentStores];

  sub_7F10(0, &qword_4F130, NSPersistentStore_ptr);
  v15 = sub_34500();

  if (!(v15 >> 62))
  {
    if (*(&dword_10 + (v15 & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_4;
    }

    goto LABEL_49;
  }

  if (!sub_349A0())
  {
LABEL_49:

LABEL_50:
    (*(v9 + 56))(v7, 1, 1, v8);
    goto LABEL_51;
  }

LABEL_4:
  if ((v15 & 0xC000000000000001) != 0)
  {
    v16 = sub_348C0();
  }

  else
  {
    if (!*(&dword_10 + (v15 & 0xFFFFFFFFFFFFFF8)))
    {
      __break(1u);
      goto LABEL_59;
    }

    v16 = *(v15 + 32);
  }

  v17 = v16;

  v18 = [v17 URL];

  if (v18)
  {
    sub_33AD0();

    (*(v9 + 56))(v5, 0, 1, v8);
  }

  else
  {
    (*(v9 + 56))(v5, 1, 1, v8);
  }

  sub_13C9C(v5, v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
LABEL_51:
    sub_13D0C(v7);
    if (qword_4E5A8 != -1)
    {
      swift_once();
    }

    v68 = sub_342A0();
    sub_3034(v68, qword_53A18);
    v69 = sub_34280();
    v70 = sub_345E0();
    if (os_log_type_enabled(v69, v70))
    {
      v71 = swift_slowAlloc();
      *v71 = 0;
      _os_log_impl(&dword_0, v69, v70, "NSManagedObjectContext: Failed to get store URL", v71, 2u);
    }

    return 0;
  }

  (*(v9 + 32))(v11, v7, v8);
  v19 = objc_opt_self();
  v20 = [v19 defaultManager];
  sub_33AE0();
  v21 = sub_34380();

  v74 = 0;
  v22 = [v20 attributesOfItemAtPath:v21 error:&v74];

  v23 = v74;
  if (!v22)
  {
LABEL_25:
    v44 = v74;
LABEL_26:
    sub_33AC0();

    swift_willThrow();
    if (qword_4E5A8 != -1)
    {
      swift_once();
    }

    v45 = sub_342A0();
    sub_3034(v45, qword_53A18);
    swift_errorRetain();
    v46 = sub_34280();
    v47 = sub_345E0();

    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v76[0] = v49;
      *v48 = 136315138;
      swift_getErrorValue();
      v50 = sub_34BF0();
      v52 = sub_22960(v50, v51, v76);

      *(v48 + 4) = v52;
      _os_log_impl(&dword_0, v46, v47, "NSManagedObjectContext: Cannot determine store size %s", v48, 0xCu);
      sub_3364(v49);
    }

    else
    {
    }

LABEL_31:
    (*(v9 + 8))(v11, v8);
    return 0;
  }

  type metadata accessor for FileAttributeKey();
  sub_13D74();
  v24 = sub_342F0();
  v25 = v23;

  if (!*(v24 + 16) || (v26 = sub_2A71C(NSFileSize), (v27 & 1) == 0))
  {

LABEL_21:
    if (qword_4E5A8 == -1)
    {
LABEL_22:
      v40 = sub_342A0();
      sub_3034(v40, qword_53A18);
      v41 = sub_34280();
      v42 = sub_345E0();
      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        *v43 = 0;
        _os_log_impl(&dword_0, v41, v42, "NSManagedObjectContext: Failed to get store size", v43, 2u);
      }

      goto LABEL_31;
    }

LABEL_59:
    swift_once();
    goto LABEL_22;
  }

  sub_13DCC(*(v24 + 56) + 32 * v26, v76);

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_21;
  }

  v72 = v74;
  v73 = NSFileSize;
  v28 = [v19 defaultManager];
  v74 = sub_33AE0();
  v75 = v29;
  v77._countAndFlagsBits = 1818326829;
  v77._object = 0xE400000000000000;
  sub_34460(v77);
  v30 = sub_34380();

  v74 = 0;
  v31 = [v28 attributesOfItemAtPath:v30 error:&v74];

  v32 = v74;
  if (!v31)
  {
    goto LABEL_25;
  }

  v33 = sub_342F0();
  v34 = v32;

  if (*(v33 + 16))
  {
    v35 = sub_2A71C(v73);
    p_weak_ivar_lyt = &PostSiriEngagementDataProcessor.weak_ivar_lyt;
    v37 = &PostSiriEngagementDataProcessor.weak_ivar_lyt;
    if (v38)
    {
      sub_13DCC(*(v33 + 56) + 32 * v35, v76);

      if (swift_dynamicCast())
      {
        v39 = v74;
        goto LABEL_36;
      }
    }

    else
    {
    }

    v39 = 0;
  }

  else
  {

    v39 = 0;
    p_weak_ivar_lyt = (&PostSiriEngagementDataProcessor + 56);
    v37 = (&PostSiriEngagementDataProcessor + 56);
  }

LABEL_36:
  v53 = [v19 v37[446]];
  v74 = sub_33AE0();
  v75 = v54;
  v78._countAndFlagsBits = 1835561773;
  v78._object = 0xE400000000000000;
  sub_34460(v78);
  v55 = sub_34380();

  v74 = 0;
  v56 = [v53 p:v55 weak:&v74 ivar:?lyt[447]];

  v57 = v74;
  if (!v56)
  {
LABEL_47:
    v44 = v57;
    goto LABEL_26;
  }

  v58 = sub_342F0();
  v59 = v57;

  if (*(v58 + 16) && (v60 = sub_2A71C(v73), (v61 & 1) != 0))
  {
    sub_13DCC(*(v58 + 56) + 32 * v60, v76);
    v62 = *(v9 + 8);
    v9 += 8;
    v62(v11, v8);

    if (swift_dynamicCast())
    {
      v63 = v74;
      goto LABEL_43;
    }
  }

  else
  {

    v64 = *(v9 + 8);
    v9 += 8;
    v64(v11, v8);
  }

  v63 = 0;
LABEL_43:
  v65 = __OFADD__(v72, v63);
  v66 = &v63[v72];
  if (v65)
  {
    __break(1u);
  }

  result = &v39[v66];
  if (__OFADD__(v66, v39))
  {
    __break(1u);
    goto LABEL_47;
  }

  return result;
}

uint64_t sub_12A60(uint64_t a1, char a2, char a3)
{
  v5 = objc_allocWithZone(NSFetchRequest);
  v6 = sub_34380();
  v7 = [v5 initWithEntityName:v6];

  sub_3204(&unk_4F4B0, &qword_36C70);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_35930;
  v9 = objc_allocWithZone(NSSortDescriptor);
  v10 = sub_34380();
  v11 = [v9 initWithKey:v10 ascending:a3 & 1];

  *(v8 + 32) = v11;
  sub_7F10(0, &qword_4F0B8, NSSortDescriptor_ptr);
  isa = sub_344F0().super.isa;

  [v7 setSortDescriptors:isa];

  if ((a2 & 1) == 0)
  {
    [v7 setFetchLimit:a1];
  }

  v13 = sub_33DA0();
  type metadata accessor for TMDCGroundTruthCoreDataRecord();
  v14 = sub_34650();

  return v14;
}

uint64_t sub_12C4C()
{
  sub_33DB0();

  return swift_deallocClassInstance();
}

char *sub_12C84(char *result, int64_t a2, char a3, char *a4)
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
    sub_3204(&qword_4F170, &qword_36D00);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    v10 = _swiftEmptyArrayStorage;
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_12DAC(char *result, int64_t a2, char a3, char *a4)
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
    sub_3204(&qword_4F178, &qword_36D08);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

void *sub_12ED4(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    sub_3204(a5, a6);
    v16 = swift_allocObject();
    v17 = j__malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 25;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 3);
  }

  else
  {
    v16 = _swiftEmptyArrayStorage;
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 8 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    sub_3204(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

char *sub_13008(char *result, int64_t a2, char a3, char *a4)
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
    sub_3204(&qword_4F158, &qword_36CE8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
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

char *sub_130FC(char *result, int64_t a2, char a3, char *a4)
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
    sub_3204(&qword_4F148, &qword_36CD8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_13240(void *result, int64_t a2, char a3, void *a4)
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
    sub_3204(&qword_4F0F0, &qword_36C90);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_3204(&qword_4F0F8, &qword_36C98);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_13388(char *result, int64_t a2, char a3, char *a4)
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
    sub_3204(&qword_4F150, &qword_36CE0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_134AC(void *result, int64_t a2, char a3, void *a4)
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
    sub_3204(&qword_4F160, &qword_36CF0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_3204(&qword_4F168, &qword_36CF8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_135E0(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_3204(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

uint64_t sub_137BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TMDCGroundTruth(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_13820()
{
  result = qword_4F0D0;
  if (!qword_4F0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F0D0);
  }

  return result;
}

unint64_t sub_13878()
{
  result = qword_4F0E0;
  if (!qword_4F0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F0E0);
  }

  return result;
}

char *sub_138CC(char *result, int64_t a2, char a3, char *a4)
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
    sub_3204(&qword_4F188, qword_36D20);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    v10 = _swiftEmptyArrayStorage;
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

void *sub_139D8(void *result, int64_t a2, char a3, void *a4)
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
    sub_3204(&qword_4F118, &qword_36CB8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_3204(&qword_4EF28, &qword_36CC0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_13B0C(char *result, int64_t a2, char a3, char *a4)
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
    sub_3204(&qword_4F100, &qword_36CA0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    v10 = _swiftEmptyArrayStorage;
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

void *sub_13C18(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  sub_3204(&qword_4F100, &qword_36CA0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

uint64_t sub_13C9C(uint64_t a1, uint64_t a2)
{
  v4 = sub_3204(&qword_4F128, &qword_36CC8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_13D0C(uint64_t a1)
{
  v2 = sub_3204(&qword_4F128, &qword_36CC8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_13D74()
{
  result = qword_4E710;
  if (!qword_4E710)
  {
    type metadata accessor for FileAttributeKey();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4E710);
  }

  return result;
}

uint64_t sub_13DCC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_13E28()
{
  result = qword_4F140;
  if (!qword_4F140)
  {
    sub_A7E8(&qword_4F138, &qword_36CD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F140);
  }

  return result;
}

id TMDCGroundTruthCoreDataRecord.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id TMDCGroundTruthCoreDataRecord.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for TMDCGroundTruthCoreDataRecord();
  v5 = objc_msgSendSuper2(&v7, "initWithEntity:insertIntoManagedObjectContext:", a1, a2);

  return v5;
}

id TMDCGroundTruthCoreDataRecord.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TMDCGroundTruthCoreDataRecord();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_13FF8()
{
  v1 = sub_3204(&qword_4F268, &qword_36E08);
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v12 - v6;
  sub_30C0(v0 + 7, v0[10]);
  v8 = sub_33F30();
  if (!v8)
  {
    sub_33E30();
    v8 = sub_33E20();
  }

  v9 = v8;
  sub_30C0(v0 + 2, v0[5]);
  sub_33FB0();
  (*(v2 + 16))(v5, v7, v1);
  v10 = swift_allocObject();
  *(v10 + 16) = &unk_36E18;
  *(v10 + 24) = v0;
  sub_33D80();
  sub_14760();

  sub_34990();

  return (*(v2 + 8))(v7, v1);
}

uint64_t sub_14228(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return _swift_task_switch(sub_1424C, 0, 0);
}

uint64_t sub_1424C()
{
  v1 = v0[4];
  if (v1)
  {
    sub_30C0((v0[5] + 56), *(v0[5] + 80));
    v2 = v1;
    sub_33F40();
  }

  v3 = v0[2];
  v4 = v0[3];
  v5 = sub_33D80();
  (*(*(v5 - 8) + 16))(v3, v4, v5);
  v6 = v0[1];

  return v6();
}

uint64_t sub_14324(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = *(a2 + *(sub_3204(&qword_4F278, &unk_36E30) + 48));
  v10 = (a3 + *a3);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_14454;

  return v10(a1, a2, v7);
}

uint64_t sub_14454()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_14548()
{
  sub_3364((v0 + 16));
  sub_3364((v0 + 56));

  return swift_deallocClassInstance();
}

uint64_t sub_145AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_147C4;

  return sub_14228(a1, a2, a3, v3);
}

uint64_t sub_14660()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_14698(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_14454;

  return sub_14324(a1, a2, v6);
}

unint64_t sub_14760()
{
  result = qword_4F270;
  if (!qword_4F270)
  {
    sub_A7E8(&qword_4F268, &qword_36E08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F270);
  }

  return result;
}

BOOL sub_147C8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v5[2] = *(a1 + 32);
  v6 = *(a1 + 48);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v7[2] = *(a2 + 32);
  v8 = *(a2 + 48);
  return sub_18140(v5, v7);
}

uint64_t sub_14824(uint64_t *a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  if (*a1 == *a2 && a1[1] == *(a2 + 8))
  {
    return v2 ^ v3 ^ 1u;
  }

  v5 = sub_34BC0();
  result = 0;
  if (v5)
  {
    return v2 ^ v3 ^ 1u;
  }

  return result;
}

uint64_t sub_14884(__int128 *a1, __int128 *a2)
{
  v2 = a1[1];
  v5 = *a1;
  v6[0] = v2;
  *(v6 + 9) = *(a1 + 25);
  v3 = a2[1];
  v7 = *a2;
  v8[0] = v3;
  *(v8 + 9) = *(a2 + 25);
  return sub_181E8(&v5, &v7) & 1;
}

uint64_t sub_148EC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 1953718636;
  if (v2 != 1)
  {
    v3 = 1801677166;
  }

  if (*a1)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0x7473726966;
  }

  if (v2)
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  v6 = 1953718636;
  if (*a2 != 1)
  {
    v6 = 1801677166;
  }

  if (*a2)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0x7473726966;
  }

  if (*a2)
  {
    v8 = 0xE400000000000000;
  }

  else
  {
    v8 = 0xE500000000000000;
  }

  if (v4 == v7 && v5 == v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_34BC0();
  }

  return v9 & 1;
}

Swift::Int sub_149CC()
{
  sub_34C40();
  sub_34430();

  return sub_34C70();
}

uint64_t sub_14A5C(uint64_t a1)
{
  sub_34430();
}

Swift::Int sub_14AD8(uint64_t a1)
{
  sub_34C40();
  sub_34430();

  return sub_34C70();
}

unint64_t sub_14B64@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_18358(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_14B94(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 1953718636;
  if (v2 != 1)
  {
    v4 = 1801677166;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0x7473726966;
  }

  if (!v5)
  {
    v3 = 0xE400000000000000;
  }

  *a1 = v6;
  a1[1] = v3;
}

void sub_14BF8(void *a1)
{
  v2 = sub_34380();
  v3 = sub_34380();
  [a1 encodeObject:v2 forKey:v3];

  v4 = sub_34380();

  v5 = sub_34380();
  [a1 encodeObject:v4 forKey:v5];

  v6 = sub_34380();
  v7 = sub_34380();
  [a1 encodeObject:v6 forKey:v7];
}

id sub_14E00(void *a1)
{
  v2 = v1;
  sub_7F10(0, &qword_4EA20, NSString_ptr);
  v4 = sub_34660();
  if (v4)
  {
    v5 = v4;
    v6 = sub_343B0();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = sub_34660();
  if (v9)
  {
    v10 = v9;
    v11 = sub_343B0();
    v13 = v12;
  }

  else
  {
    v11 = 0;
    v13 = 0;
  }

  v14 = sub_34660();
  if (!v14)
  {
    v16 = 0;
    v18 = 0;
    if (v8)
    {
      goto LABEL_9;
    }

LABEL_13:

    goto LABEL_14;
  }

  v15 = v14;
  v16 = sub_343B0();
  v18 = v17;

  if (!v8)
  {
    goto LABEL_13;
  }

LABEL_9:
  if (!v13 || (v19 = sub_183A4(v11, v13), v19 == 4))
  {

LABEL_14:

    goto LABEL_15;
  }

  if (v18)
  {
    v21 = &v2[OBJC_IVAR___PhonemeString_symbols];
    *v21 = v6;
    v21[1] = v8;
    v2[OBJC_IVAR___PhonemeString_encoding] = v19;
    v22 = &v2[OBJC_IVAR___PhonemeString_boundary];
    *v22 = v16;
    v22[1] = v18;
    v24.receiver = v2;
    v24.super_class = type metadata accessor for PhonemeString();
    v23 = objc_msgSendSuper2(&v24, "init");

    return v23;
  }

LABEL_15:
  type metadata accessor for PhonemeString();
  swift_deallocPartialClassInstance();
  return 0;
}