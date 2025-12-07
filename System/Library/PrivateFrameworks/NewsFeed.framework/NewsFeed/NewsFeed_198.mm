void sub_1D6D47228(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, __n128 a6)
{
  v30 = a5;
  v32 = a2;
  v33 = a3;
  sub_1D6D48FEC(0, &qword_1EC8954E0, type metadata accessor for FormatPackage, sub_1D5C2AED8, type metadata accessor for DebugFormatObject);
  MEMORY[0x1EEE9AC00](v9, v10);
  v13 = (v28 - v12);
  v14 = MEMORY[0x1E69E7CC0];
  v36 = MEMORY[0x1E69E7CC0];
  v31 = a1;
  v15 = *(a1 + 16);
  if (v15)
  {
    v16 = 0;
    v28[0] = v11;
    v29 = v15;
    while (2)
    {
      v28[1] = v14;
      while (1)
      {
        if (v16 >= v15)
        {
          __break(1u);
LABEL_19:
          __break(1u);
          return;
        }

        sub_1D5C2AB28(0);
        if (__OFADD__(v16, 1))
        {
          goto LABEL_19;
        }

        sub_1D6D43150((v31 + ((*(*(v17 - 8) + 80) + 32) & ~*(*(v17 - 8) + 80)) + *(*(v17 - 8) + 72) * v16), v33, v13);
        if (v6)
        {
          goto LABEL_16;
        }

        v34 = v16 + 1;
        v18 = *a4;
        v19 = *v13;
        v20 = v13[1];
        v21 = v13;

        v22 = sub_1D5BE240C(v19, v20, v18);

        if (v22)
        {
          type metadata accessor for DebugFormatManagerError(0);
          sub_1D5B71130(&qword_1EC88E370, 255, type metadata accessor for DebugFormatManagerError, &unk_1D73234C4);
          swift_allocError();
          *v27 = v19;
          v27[1] = v20;
          swift_storeEnumTagMultiPayload();
          swift_willThrow();

          sub_1D6D493F8(v21, &qword_1EC8954E0, type metadata accessor for FormatPackage, sub_1D5C2AED8, type metadata accessor for DebugFormatObject);
LABEL_16:

          return;
        }

        sub_1D5B860D0(&v35, v19, v20);

        v23 = *v30;

        v24 = sub_1D5BE240C(v19, v20, v23);

        if ((v24 & 1) == 0)
        {
          break;
        }

        v13 = v21;
        sub_1D6D493F8(v21, &qword_1EC8954E0, type metadata accessor for FormatPackage, sub_1D5C2AED8, type metadata accessor for DebugFormatObject);
        ++v16;
        v15 = v29;
        if (v34 == v29)
        {
          return;
        }
      }

      v25 = v30;
      sub_1D5B860D0(&v35, v19, v20);

      v13 = v21;
      sub_1D6D38070(v21, v33, v21 + *(v28[0] + 36), v25);
      v26 = sub_1D6D493F8(v21, &qword_1EC8954E0, type metadata accessor for FormatPackage, sub_1D5C2AED8, type metadata accessor for DebugFormatObject);
      MEMORY[0x1DA6F9CE0](v26);
      if (*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v36 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D726272C();
      }

      sub_1D726278C();
      v14 = v36;
      v15 = v29;
      v16 = v34;
      if (v34 != v29)
      {
        continue;
      }

      break;
    }
  }
}

uint64_t objectdestroy_3Tm_3()
{
  v1 = sub_1D725891C();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);

  v5 = *(v0 + v4);
  if ((v5 - 1) >= 4)
  {
  }

  return swift_deallocObject();
}

void sub_1D6D47788(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    a5(255, a3, a4);
    v6 = sub_1D72627FC();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t sub_1D6D477E4()
{
  result = qword_1EDF04A30;
  if (!qword_1EDF04A30)
  {
    sub_1D6D47788(255, &qword_1EDF04A38, &qword_1EDF1AAF0, 0x1E69B5380, sub_1D5B5A498);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF04A30);
  }

  return result;
}

void sub_1D6D478DC(uint64_t a1)
{
  if (!qword_1EC895438)
  {
    type metadata accessor for DebugFormatManagerIndex(255);
    sub_1D6D47994(255);
    sub_1D6D4635C(255, qword_1EC88E160, type metadata accessor for DebugFormatCacheFile, MEMORY[0x1E69E62F8]);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EC895438);
    }
  }
}

void sub_1D6D47994(uint64_t a1)
{
  if (!qword_1EC895440)
  {
    type metadata accessor for DebugFormatCacheFile(255);
    v1 = sub_1D7261E1C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC895440);
    }
  }
}

void *sub_1D6D47A68(uint64_t a1)
{
  v44 = type metadata accessor for FormatFile(0);
  MEMORY[0x1EEE9AC00](v44, v2);
  v4 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6D4635C(0, &qword_1EC895458, type metadata accessor for DebugFormatWorkspaceReference, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v36 - v7;
  v9 = type metadata accessor for DebugFormatWorkspaceReference(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v39 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DebugFormatCacheFile(0);
  v42 = *(v13 - 8);
  v43 = v13;
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1 + 64;
  v18 = 1 << *(a1 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & *(a1 + 64);
  v21 = (v18 + 63) >> 6;
  v41 = (v10 + 56);
  v38 = v10;
  v22 = (v10 + 48);
  v45 = a1;

  v24 = 0;
  v40 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v25 = v24;
    if (!v20)
    {
      break;
    }

LABEL_8:
    sub_1D6D49454(*(v45 + 56) + *(v42 + 72) * (__clz(__rbit64(v20)) | (v24 << 6)), v16, type metadata accessor for DebugFormatCacheFile);
    sub_1D6D49454(&v16[*(v43 + 32)], v4, type metadata accessor for FormatFile);
    if (swift_getEnumCaseMultiPayload() == 12)
    {
      v26 = *(v4 + 9);
      *(v8 + 8) = *(v4 + 8);
      *(v8 + 9) = v26;
      *(v8 + 10) = *(v4 + 10);
      *(v8 + 175) = *(v4 + 175);
      v27 = *(v4 + 5);
      *(v8 + 4) = *(v4 + 4);
      *(v8 + 5) = v27;
      v28 = *(v4 + 7);
      *(v8 + 6) = *(v4 + 6);
      *(v8 + 7) = v28;
      v29 = *(v4 + 3);
      *(v8 + 2) = *(v4 + 2);
      *(v8 + 3) = v29;
      v30 = *(v4 + 1);
      *v8 = *v4;
      *(v8 + 1) = v30;
      sub_1D6D491B0(v16, &v8[*(v9 + 20)], type metadata accessor for DebugFormatCacheFile);
      (*v41)(v8, 0, 1, v9);
    }

    else
    {
      sub_1D6D49218(v16, type metadata accessor for DebugFormatCacheFile);
      (*v41)(v8, 1, 1, v9);
      sub_1D6D49218(v4, type metadata accessor for FormatFile);
    }

    v20 &= v20 - 1;
    if ((*v22)(v8, 1, v9) == 1)
    {
      result = sub_1D6D494BC(v8, &qword_1EC895458, type metadata accessor for DebugFormatWorkspaceReference);
    }

    else
    {
      sub_1D6D491B0(v8, v39, type metadata accessor for DebugFormatWorkspaceReference);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v40 = sub_1D699651C(0, v40[2] + 1, 1, v40);
      }

      v32 = v40[2];
      v31 = v40[3];
      v33 = v32 + 1;
      if (v32 >= v31 >> 1)
      {
        v36 = v40[2];
        v37 = v32 + 1;
        v35 = sub_1D699651C((v31 > 1), v32 + 1, 1, v40);
        v32 = v36;
        v33 = v37;
        v40 = v35;
      }

      v34 = v40;
      v40[2] = v33;
      result = sub_1D6D491B0(v39, v34 + ((*(v38 + 80) + 32) & ~*(v38 + 80)) + *(v38 + 72) * v32, type metadata accessor for DebugFormatWorkspaceReference);
    }
  }

  while (1)
  {
    v24 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      break;
    }

    if (v24 >= v21)
    {

      return v40;
    }

    v20 = *(v17 + 8 * v24);
    ++v25;
    if (v20)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

void sub_1D6D47FBC(uint64_t a1)
{
  if (!qword_1EC895468)
  {
    sub_1D6D4635C(255, qword_1EC88E160, type metadata accessor for DebugFormatCacheFile, MEMORY[0x1E69E62F8]);
    sub_1D6D493A8(255, &qword_1EDF43BA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    sub_1D6D47788(255, &qword_1EDF1AE00, &qword_1EDF3C5D0, MEMORY[0x1E69E7280], sub_1D5B49474);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EC895468);
    }
  }
}

void sub_1D6D4818C(uint64_t a1)
{
  if (!qword_1EC895470)
  {
    sub_1D6D4635C(255, qword_1EC88E160, type metadata accessor for DebugFormatCacheFile, MEMORY[0x1E69E62F8]);
    sub_1D6D493A8(255, &qword_1EDF43BA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    sub_1D6D47788(255, &qword_1EDF1AE00, &qword_1EDF3C5D0, MEMORY[0x1E69E7280], sub_1D5B49474);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EC895470);
    }
  }
}

void sub_1D6D48318()
{
  if (!qword_1EC895480)
  {
    v0 = type metadata accessor for DebugFormatServiceResult(0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6190], MEMORY[0x1E69E6160]);
    if (!v1)
    {
      atomic_store(v0, &qword_1EC895480);
    }
  }
}

uint64_t sub_1D6D483A4(__int128 *a1, uint64_t a2)
{
  v5 = *(sub_1D72585BC() - 8);
  v6 = (*(v5 + 80) + 41) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for DebugFormatCacheFileMetadata(0) - 8);
  return sub_1D6D35F58(a1, a2, *(v2 + 16), *(v2 + 24), *(v2 + 40), v2 + v6, v2 + ((v6 + v7 + *(v8 + 80)) & ~*(v8 + 80)), *(v2 + 32));
}

void sub_1D6D48490(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v7)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_1D6D485F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

uint64_t sub_1D6D48668(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  sub_1D6D493A8(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1D6D48788(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, void, unint64_t, void))
{
  v7 = *(sub_1D72585BC() - 8);
  v8 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  return a3(a1, a2, *(v3 + 16), v3 + v8, *(v3 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t objectdestroy_29Tm_1()
{
  v1 = *(type metadata accessor for DebugFormatManagerIndex(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);

  v3 = v0 + v2 + *(type metadata accessor for DebugFormatFileDirectory(0) + 20);
  v4 = sub_1D725BD1C();
  v5 = *(*(v4 - 8) + 8);
  v5(v3, v4);
  v6 = type metadata accessor for DebugFormatFileDirectoryMetadata(0);
  v5(v3 + *(v6 + 20), v4);

  return swift_deallocObject();
}

void sub_1D6D48AAC(uint64_t a1)
{
  if (!qword_1EC8954A0)
  {
    type metadata accessor for DebugFormatCacheFile(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC8954A0);
    }
  }
}

void sub_1D6D48BCC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4();
    v11 = a5();
    v12 = type metadata accessor for DebugFormatServiceResult(a1, v9, v10, v11);
    if (!v13)
    {
      atomic_store(v12, a2);
    }
  }
}

void sub_1D6D48DD8(uint64_t a1)
{
  if (!qword_1EC8954D0)
  {
    sub_1D5EF3A64(255);
    sub_1D6D47788(255, &qword_1EDF1AE00, &qword_1EDF3C5D0, MEMORY[0x1E69E7280], sub_1D5B49474);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC8954D0);
    }
  }
}

uint64_t sub_1D6D48F00(uint64_t a1)
{
  v3 = *(type metadata accessor for FormatPackage(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(type metadata accessor for DebugFormatCacheFile(0) - 8);
  return sub_1D6D37CD0(a1, v1 + v4, *(v1 + v5), v1 + ((v5 + *(v6 + 80) + 8) & ~*(v6 + 80)));
}

void sub_1D6D48FEC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4();
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

uint64_t sub_1D6D4906C(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(void), uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t))
{
  sub_1D5C2AFF4(0, a3, a4, a5, a6);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

uint64_t sub_1D6D490E0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  sub_1D5C2AFF4(0, a2, a3, a4, a5);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_1D6D4913C(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(void), uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t))
{
  sub_1D5C2AFF4(0, a3, a4, a5, a6);
  (*(*(v8 - 8) + 32))(a2, a1, v8);
  return a2;
}

uint64_t sub_1D6D491B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D6D49218(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D6D49278(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  sub_1D6D48FEC(0, a3, type metadata accessor for FormatSnippet, sub_1D5C2C4B8, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1D6D49310(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  sub_1D6D48FEC(0, a3, type metadata accessor for FormatSnippet, sub_1D5C2C4B8, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

void sub_1D6D493A8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1D6D493F8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  sub_1D6D48FEC(0, a2, a3, a4, a5);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_1D6D49454(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D6D494BC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1D6D4635C(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t objectdestroy_22Tm()
{
  v1 = sub_1D72585BC();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1D6D4962C(uint64_t a1, uint64_t a2)
{
  v5 = *(sub_1D72585BC() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  return sub_1D6D33A14(a1, a2, v2 + v6, *(v2 + v6 + *(v5 + 64)));
}

uint64_t objectdestroy_40Tm_0()
{
  v1 = sub_1D72585BC();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 24) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t get_enum_tag_for_layout_string_8NewsFeed14FormatDOMErrorO(uint64_t a1)
{
  if ((*(a1 + 24) & 0xFu) <= 0xA)
  {
    return *(a1 + 24) & 0xF;
  }

  else
  {
    return (*a1 + 11);
  }
}

uint64_t sub_1D6D498A8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF5 && *(a1 + 25))
  {
    return (*a1 + 245);
  }

  v3 = *(a1 + 24);
  if (v3 <= 0xB)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1D6D498F0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF4)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 245;
    if (a3 >= 0xF5)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF5)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

uint64_t sub_1D6D49938(uint64_t result, unsigned int a2)
{
  v2 = a2 - 11;
  if (a2 >= 0xB)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    LOBYTE(a2) = 11;
    *result = v2;
  }

  *(result + 24) = a2;
  return result;
}

uint64_t _s8NewsFeed19FormatColumnRowSpanV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2)
  {
    v2 = *(a2 + 16);
    v3 = *(a2 + 8);
    v4 = *(a1 + 16);
    v9 = *(a1 + 8);
    v10 = v4;
    v7 = v3;
    v8 = v2;

    v5 = _s8NewsFeed11FormatRatioO2eeoiySbAC_ACtFZ_0(&v9, &v7);
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

unint64_t sub_1D6D49A14(uint64_t a1)
{
  result = sub_1D6D49A3C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6D49A3C()
{
  result = qword_1EC8954E8;
  if (!qword_1EC8954E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8954E8);
  }

  return result;
}

unint64_t sub_1D6D49A90(void *a1)
{
  a1[1] = sub_1D5CBA124();
  a1[2] = sub_1D66F8CB4();
  result = sub_1D6D49AC8();
  a1[3] = result;
  return result;
}

unint64_t sub_1D6D49AC8()
{
  result = qword_1EC8954F0;
  if (!qword_1EC8954F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8954F0);
  }

  return result;
}

BOOL static FormatSourceItemTipObject.== infix(_:_:)(char *a1, char *a2)
{
  v2 = *a2;
  v5 = *a1;
  v4 = v2;
  return _s8NewsFeed26FormatSourceItemTipBindingO2eeoiySbAC_ACtFZ_0(&v5, &v4);
}

BOOL sub_1D6D49BC4(char *a1, char *a2)
{
  v2 = *a2;
  v5 = *a1;
  v4 = v2;
  return _s8NewsFeed26FormatSourceItemTipBindingO2eeoiySbAC_ACtFZ_0(&v5, &v4);
}

unint64_t sub_1D6D49C00(uint64_t a1)
{
  result = sub_1D6D49C28();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6D49C28()
{
  result = qword_1EC8954F8;
  if (!qword_1EC8954F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8954F8);
  }

  return result;
}

unint64_t sub_1D6D49C7C(void *a1)
{
  a1[1] = sub_1D66B9F78();
  a1[2] = sub_1D66BA148();
  result = sub_1D6D49CB4();
  a1[3] = result;
  return result;
}

unint64_t sub_1D6D49CB4()
{
  result = qword_1EC895500;
  if (!qword_1EC895500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC895500);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FormatSourceItemTipBinding(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xD)
  {
    goto LABEL_17;
  }

  if (a2 + 243 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 243) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 243;
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

      return (*a1 | (v4 << 8)) - 243;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 243;
    }
  }

LABEL_17:
  v6 = ((2 * *a1) & 0xC | (*a1 >> 3) & 3) ^ 0xF;
  if (v6 >= 0xC)
  {
    v6 = -1;
  }

  return v6 + 1;
}

uint64_t storeEnumTagSinglePayload for FormatSourceItemTipBinding(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 243 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 243) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xD)
  {
    v4 = 0;
  }

  if (a2 > 0xC)
  {
    v5 = ((a2 - 13) >> 8) + 1;
    *result = a2 - 13;
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
    *result = 2 * ((((-a2 >> 2) & 3) - 4 * a2) & 0xF);
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void *sub_1D6D49E84(uint64_t a1, uint64_t a2)
{
  sub_1D5EA74B8(0);
  v155 = v4;
  v165 = *(v4 - 8);
  v166 = v4 - 8;
  v167 = v165;
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = (&v144 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for WebEmbedDataVisualization(0);
  v153 = *(v8 - 8);
  v154 = v8;
  MEMORY[0x1EEE9AC00](v8, v9);
  v147 = (&v144 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v11, v12);
  v146 = (&v144 - v13);
  MEMORY[0x1EEE9AC00](v14, v15);
  v145 = (&v144 - v16);
  sub_1D5B4D72C(0);
  MEMORY[0x1EEE9AC00](v17 - 8, v18);
  v156 = &v144 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v157 = &v144 - v22;
  MEMORY[0x1EEE9AC00](v23, v24);
  v150 = &v144 - v25;
  sub_1D5B69BE0(0);
  MEMORY[0x1EEE9AC00](v26 - 8, v27);
  v149 = &v144 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v164 = type metadata accessor for FeedHeadline(0);
  v158 = *(v164 - 8);
  MEMORY[0x1EEE9AC00](v164, v29);
  v144 = &v144 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = *(a1 + 112);
  v197 = *(a1 + 96);
  v198 = v31;
  v199 = *(a1 + 128);
  v200 = *(a1 + 144);
  v32 = *(a1 + 48);
  v193 = *(a1 + 32);
  v194 = v32;
  v33 = *(a1 + 80);
  v195 = *(a1 + 64);
  v196 = v33;
  v34 = *(a1 + 16);
  v191 = *a1;
  v192 = v34;
  *&v160 = MEMORY[0x1E69E6F90];
  sub_1D6D4B0E0(0, &qword_1EC880AC0, sub_1D5E4F358, MEMORY[0x1E69E6F90]);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_1D7279960;
  v170[2] = a2;
  sub_1D5ECF488(sub_1D6D4B144, v170, &unk_1F50F7420);
  sub_1D6795150(0x6E61656C6F6F42, 0xE700000000000000, 0, 0, v36, v182);

  *(v35 + 56) = &type metadata for FormatInspectionGroup;
  *(v35 + 64) = &off_1F518B2C0;
  v37 = swift_allocObject();
  *(v35 + 32) = v37;
  v148 = v35 + 32;
  v38 = v182[1];
  *(v37 + 16) = v182[0];
  *(v37 + 32) = v38;
  *(v37 + 48) = v183;
  v169[2] = a2;
  sub_1D71964DC(sub_1D6D4B164, v169, &unk_1F50F74C8);
  v40 = sub_1D5F62998(v39);

  sub_1D6795150(1954047316, 0xE400000000000000, 0, 0, v40, v184);

  *(v35 + 96) = &type metadata for FormatInspectionGroup;
  *(v35 + 104) = &off_1F518B2C0;
  v41 = swift_allocObject();
  *(v35 + 72) = v41;
  v42 = v184[1];
  *(v41 + 16) = v184[0];
  *(v41 + 32) = v42;
  *(v41 + 48) = v185;
  v168[2] = a2;
  sub_1D5ECF4A0(sub_1D6D4B180, v168, &unk_1F50F74F0);
  sub_1D6795150(5001813, 0xE300000000000000, 0, 0, v43, v186);

  *(v35 + 136) = &type metadata for FormatInspectionGroup;
  *(v35 + 144) = &off_1F518B2C0;
  v44 = swift_allocObject();
  v159 = v35;
  *(v35 + 112) = v44;
  v45 = v186[1];
  *(v44 + 16) = v186[0];
  *(v44 + 32) = v45;
  *(v44 + 48) = v187;
  v46 = v160;
  sub_1D6D4B0E0(0, &qword_1EC880490, sub_1D5EA74B8, v160);
  v47 = (*(v167 + 80) + 32) & ~*(v167 + 80);
  v167 = *(v165 + 72);
  v48 = swift_allocObject();
  *(v48 + 16) = xmmword_1D7279970;
  v163 = v47;
  v49 = (v48 + v47);
  v50 = v149;
  v162 = v49;
  sub_1D6D4B0E0(0, &qword_1EC8803C0, sub_1D5E4F38C, v46);
  v52 = v51;
  v53 = swift_allocObject();
  v160 = xmmword_1D7273AE0;
  *(v53 + 16) = xmmword_1D7273AE0;
  v54 = type metadata accessor for FeedWebEmbed(0);
  sub_1D6D4B248(a2 + *(v54 + 48), v50, sub_1D5B69BE0);
  v55 = (*(v158 + 48))(v50, 1, v164);
  v152 = v48;
  v161 = a2;
  if (v55 == 1)
  {
    sub_1D6D4B1A0(v50, sub_1D5B69BE0);
    v56 = sub_1D7073500(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v57 = v144;
    sub_1D5CAD8D4(v50, v144, type metadata accessor for FeedHeadline);
    v58 = *(a1 + 112);
    v178 = *(a1 + 96);
    v179 = v58;
    v180 = *(a1 + 128);
    v181 = *(a1 + 144);
    v59 = *(a1 + 48);
    v174 = *(a1 + 32);
    v175 = v59;
    v60 = *(a1 + 80);
    v176 = *(a1 + 64);
    v177 = v60;
    v61 = *(a1 + 16);
    v172 = *a1;
    v173 = v61;
    v56 = sub_1D5E4E6A4(&v172, v57);
    sub_1D6D4B1A0(v57, type metadata accessor for FeedHeadline);
  }

  *(v53 + 56) = &type metadata for FormatInspection;
  *(v53 + 64) = &off_1F51E3FD0;
  *(v53 + 32) = v56;
  v62 = sub_1D5F62BFC(v53);
  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_1((v53 + 32));
  swift_deallocClassInstance();
  v63 = sub_1D7073500(v62);

  v64 = v162;
  sub_1D711AD20(0x656E696C64616548, 0xE800000000000000, v63, 0, 0, v162);
  v65 = type metadata accessor for FormatInspectionItem(0);
  v66 = *(v65 - 8);
  v165 = *(v66 + 56);
  v166 = v65;
  v164 = v66 + 56;
  (v165)(v64, 0, 1);
  v149 = v52;
  v67 = swift_allocObject();
  *(v67 + 16) = v160;
  v158 = *(v54 + 52);
  v68 = v150;
  sub_1D6D4B248(v161 + v158, v150, sub_1D5B4D72C);
  v69 = v154;
  v70 = *(v153 + 48);
  v71 = v70(v68, 1, v154);
  v72 = sub_1D5B4D72C;
  v73 = v157;
  v151 = v54;
  if (v71 == 1)
  {
    goto LABEL_7;
  }

  v74 = v68;
  v75 = v68;
  v76 = v145;
  sub_1D6D4B248(v74, v145, type metadata accessor for WebEmbedDataVisualization);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1D6D4B1A0(v76, type metadata accessor for WebEmbedDataVisualization);
    v72 = type metadata accessor for WebEmbedDataVisualization;
    v68 = v75;
LABEL_7:
    sub_1D6D4B1A0(v68, v72);
LABEL_8:
    v77 = sub_1D7073500(MEMORY[0x1E69E7CC0]);
    goto LABEL_9;
  }

  v87 = *v76;
  sub_1D6D4B1A0(v75, type metadata accessor for WebEmbedDataVisualization);
  v172.n128_u64[0] = v87;
  SportsDataVisualization.event.getter();
  v89 = v88;
  v73 = v157;

  if (!v89)
  {
    goto LABEL_8;
  }

  v90 = [swift_unknownObjectRetain() identifier];
  v153 = sub_1D726207C();
  v92 = v91;

  swift_unknownObjectRelease();
  v178 = v197;
  v179 = v198;
  v180 = v199;
  v181 = v200;
  v174 = v193;
  v175 = v194;
  v176 = v195;
  v177 = v196;
  v172 = v191;
  v173 = v192;
  *&v188 = v153;
  *(&v188 + 1) = v92;
  v189 = v89;
  LOBYTE(v190) = 0;
  v93 = sub_1D6B19314(&v172, &v188);
  swift_unknownObjectRelease();

  v77 = v93;
  v73 = v157;
LABEL_9:
  *(v67 + 56) = &type metadata for FormatInspection;
  *(v67 + 64) = &off_1F51E3FD0;
  *(v67 + 32) = v77;
  v78 = sub_1D5F62BFC(v67);
  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_1((v67 + 32));
  swift_deallocClassInstance();
  v79 = sub_1D7073500(v78);

  v80 = v167;
  v81 = v162;
  sub_1D711AD20(0x45207374726F7053, 0xEC000000746E6576, v79, 0, 0, &v162[v167]);
  (v165)(&v81[v80], 0, 1, v166);
  v82 = v161;
  v83 = v158;
  sub_1D6D4B248(v161 + v158, v73, sub_1D5B4D72C);
  if (v70(v73, 1, v69) == 1)
  {
    sub_1D6D4B1A0(v73, sub_1D5B4D72C);
    v157 = 0;
    v84 = 0;
  }

  else
  {
    v85 = v82;
    v86 = v146;
    sub_1D6D4B248(v73, v146, type metadata accessor for WebEmbedDataVisualization);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1D6D4B1A0(v86, type metadata accessor for WebEmbedDataVisualization);
      sub_1D6D4B1A0(v73, type metadata accessor for WebEmbedDataVisualization);
      v157 = 0;
      v84 = 0;
    }

    else
    {
      v94 = *v86;
      sub_1D6D4B1A0(v73, type metadata accessor for WebEmbedDataVisualization);

      v95 = (v94 >> 58) & 0x38;
      v157 = *&aScore_29[v95];
      v84 = *&aBoxscorelinesc[v95 + 32];
    }

    v82 = v85;
    v83 = v158;
  }

  v96 = swift_allocObject();
  *(v96 + 16) = v160;
  v178 = v197;
  v179 = v198;
  v180 = v199;
  v181 = v200;
  v174 = v193;
  v175 = v194;
  v176 = v195;
  v177 = v196;
  v172 = v191;
  v173 = v192;
  v97 = v82 + v83;
  v98 = v156;
  sub_1D6D4B248(v97, v156, sub_1D5B4D72C);
  v99 = v70(v98, 1, v69);
  v100 = sub_1D5B4D72C;
  if (v99 == 1)
  {
    goto LABEL_20;
  }

  v101 = v147;
  sub_1D6D4B248(v98, v147, type metadata accessor for WebEmbedDataVisualization);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1D6D4B1A0(v101, type metadata accessor for WebEmbedDataVisualization);
    v100 = type metadata accessor for WebEmbedDataVisualization;
    v98 = v156;
LABEL_20:
    v102 = 0xF000000000000007;
    goto LABEL_22;
  }

  v102 = *v101;
  v100 = type metadata accessor for WebEmbedDataVisualization;
LABEL_22:
  sub_1D6D4B1A0(v98, v100);
  v103 = &v162[2 * v167];
  *&v188 = v102;
  v104 = sub_1D6F88A40(&v172, &v188);
  sub_1D5FC5034(v188);
  *(v96 + 56) = &type metadata for FormatInspection;
  *(v96 + 64) = &off_1F51E3FD0;
  *(v96 + 32) = v104;
  v105 = sub_1D5F62BFC(v96);
  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_1((v96 + 32));
  swift_deallocClassInstance();
  v106 = sub_1D7073500(v105);

  sub_1D711AD20(0xD000000000000019, 0x80000001D73F1C90, v106, v157, v84, v103);
  (v165)(v103, 0, 1, v166);
  sub_1D6795150(0x65626D4520626557, 0xE900000000000064, 0, 0, v152, &v188);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v107 = v159;
  *(v159 + 176) = &type metadata for FormatInspectionGroup;
  *(v107 + 184) = &off_1F518B2C0;
  v108 = swift_allocObject();
  *(v107 + 152) = v108;
  v109 = v189;
  *(v108 + 16) = v188;
  *(v108 + 32) = v109;
  *(v108 + 48) = v190;
  *(&v173 + 1) = v151;
  *&v174 = sub_1D6D4B200(&qword_1EDF12B88, type metadata accessor for FeedWebEmbed, &protocol conformance descriptor for FeedWebEmbed);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v172);
  sub_1D6D4B248(v161, boxed_opaque_existential_1, type metadata accessor for FeedWebEmbed);
  sub_1D713A66C(&v172, &v171);
  __swift_destroy_boxed_opaque_existential_1(&v172);
  v111 = v171;
  v171 = MEMORY[0x1E69E7CC0];
  sub_1D69972A4(0, 0, 0);
  v112 = v171;
  if (v111)
  {
    while (1)
    {
      v113 = v111 & -v111;
      v172.n128_u64[0] = 91;
      v172.n128_u64[1] = 0xE100000000000000;
      v170[4] = v113;
      v170[3] = sub_1D713AFE4();
      sub_1D5BBE0A8();
      sub_1D6D4B200(&qword_1EDF3C840, sub_1D5BBE0A8, MEMORY[0x1E69E6310]);
      v114 = sub_1D7261F3C();
      v116 = v115;

      MEMORY[0x1DA6F9910](v114, v116);

      MEMORY[0x1DA6F9910](93, 0xE100000000000000);
      v117 = sub_1D5FD24A4(1uLL, v172.n128_i64[0], v172.n128_u64[1]);
      v119 = v118;

      result = sub_1D726398C();
      if (__OFSUB__(result, 1))
      {
        break;
      }

      result = sub_1D726396C();
      if (v121)
      {
        v122 = v119;
      }

      else
      {
        v122 = result;
      }

      if (v122 >> 14 < v117 >> 14)
      {
        goto LABEL_34;
      }

      v123 = sub_1D72639BC();
      v125 = v124;
      v127 = v126;
      v129 = v128;

      v130 = MEMORY[0x1DA6F97E0](v123, v125, v127, v129);
      v132 = v131;

      v133 = v166;
      v134 = (v7 + *(v166 + 24));
      *v134 = 0;
      v134[1] = 0xE000000000000000;
      v135 = type metadata accessor for FormatInspectionItem.Value(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v135 - 8) + 56))(v134, 0, 1, v135);
      *v7 = v130;
      v7[1] = v132;
      v7[2] = 0;
      v7[3] = 0;
      v136 = v7 + *(v133 + 28);
      *v136 = 0;
      *(v136 + 1) = 0;
      v136[16] = -1;
      (v165)(v7, 0, 1, v133);
      v171 = v112;
      v138 = *(v112 + 16);
      v137 = *(v112 + 24);
      if (v138 >= v137 >> 1)
      {
        sub_1D69972A4((v137 > 1), v138 + 1, 1);
        v112 = v171;
      }

      *(v112 + 16) = v138 + 1;
      sub_1D5CAD8D4(v7, v112 + v163 + v138 * v167, sub_1D5EA74B8);
      v139 = v113 == v111;
      v111 ^= v113;
      if (v139)
      {
        goto LABEL_32;
      }
    }

    __break(1u);
LABEL_34:
    __break(1u);
  }

  else
  {
LABEL_32:
    sub_1D6795150(0x737469617254, 0xE600000000000000, 0, 0, v112, &v172);

    v140 = v159;
    *(v159 + 216) = &type metadata for FormatInspectionGroup;
    *(v140 + 224) = &off_1F518B2C0;
    v141 = swift_allocObject();
    *(v140 + 192) = v141;
    v142 = v173;
    *(v141 + 16) = v172;
    *(v141 + 32) = v142;
    *(v141 + 48) = v174;
    v143 = sub_1D7073500(v140);
    swift_setDeallocating();
    sub_1D5E4F358(0);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    return v143;
  }

  return result;
}

void sub_1D6D4B0E0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1D6D4B1A0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D6D4B200(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D6D4B248(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t FormatModelContext.dragItem.getter@<X0>(uint64_t a1@<X8>)
{
  sub_1D5B76B10(v1, v7);
  sub_1D5B49474(0, &qword_1EC895508, MEMORY[0x1E69D8858]);
  if (swift_dynamicCast())
  {
    sub_1D5B63F14(v5, v8);
    __swift_project_boxed_opaque_existential_1(v8, v8[3]);
    sub_1D725FB2C();
    return __swift_destroy_boxed_opaque_existential_1(v8);
  }

  else
  {
    v6 = 0;
    memset(v5, 0, sizeof(v5));
    sub_1D5BFB774(v5, &qword_1EC895510, &qword_1EC895508, MEMORY[0x1E69D8858]);
    v4 = sub_1D725F84C();
    return (*(*(v4 - 8) + 56))(a1, 1, 1, v4);
  }
}

uint64_t FormatModelContext.rankValue.getter()
{
  sub_1D5B76B10(v0, v5);
  sub_1D5B49474(0, &unk_1EDF17078, MEMORY[0x1E69D7CC0]);
  if (swift_dynamicCast())
  {
    sub_1D5B63F14(v3, v6);
    __swift_project_boxed_opaque_existential_1(v6, v6[3]);
    v1 = sub_1D725DF9C();
    __swift_destroy_boxed_opaque_existential_1(v6);
    return v1;
  }

  else
  {
    v4 = 0;
    memset(v3, 0, sizeof(v3));
    sub_1D5BFB774(v3, &qword_1EC895518, &unk_1EDF17078, MEMORY[0x1E69D7CC0]);
    return 0;
  }
}

uint64_t FormatModelContext.keyCommands.getter()
{
  sub_1D5B76B10(v0, v5);
  sub_1D5B49474(0, &qword_1EC895520, MEMORY[0x1E69D8158]);
  if (swift_dynamicCast())
  {
    sub_1D5B63F14(v3, v6);
    __swift_project_boxed_opaque_existential_1(v6, v6[3]);
    v1 = sub_1D725EA2C();
    __swift_destroy_boxed_opaque_existential_1(v6);
    return v1;
  }

  else
  {
    v4 = 0;
    memset(v3, 0, sizeof(v3));
    sub_1D5BFB774(v3, &qword_1EC895528, &qword_1EC895520, MEMORY[0x1E69D8158]);
    return MEMORY[0x1E69E7CC0];
  }
}

uint64_t FormatModelContext.isImpressionable.getter()
{
  sub_1D5B76B10(v0, v5);
  sub_1D5B49474(0, &unk_1EDF17240, MEMORY[0x1E69D77D8]);
  if (swift_dynamicCast())
  {
    sub_1D5B63F14(v3, v6);
    __swift_project_boxed_opaque_existential_1(v6, v6[3]);
    v1 = sub_1D725D10C();
    __swift_destroy_boxed_opaque_existential_1(v6);
  }

  else
  {
    v4 = 0;
    memset(v3, 0, sizeof(v3));
    sub_1D5BFB774(v3, &qword_1EC895530, &unk_1EDF17240, MEMORY[0x1E69D77D8]);
    v1 = 0;
  }

  return v1 & 1;
}

uint64_t FormatModelContext.selectionStyle.getter@<X0>(uint64_t a1@<X8>)
{
  sub_1D5B76B10(v1, v8);
  sub_1D5B49474(0, &qword_1EC895538, MEMORY[0x1E69D7588]);
  if (swift_dynamicCast())
  {
    sub_1D5B63F14(v6, v9);
    __swift_project_boxed_opaque_existential_1(v9, v9[3]);
    sub_1D725CA4C();
    return __swift_destroy_boxed_opaque_existential_1(v9);
  }

  else
  {
    v7 = 0;
    memset(v6, 0, sizeof(v6));
    sub_1D5BFB774(v6, &qword_1EC895540, &qword_1EC895538, MEMORY[0x1E69D7588]);
    v4 = *MEMORY[0x1E69D77F8];
    v5 = sub_1D725D20C();
    return (*(*(v5 - 8) + 104))(a1, v4, v5);
  }
}

uint64_t FormatModelContext.highlightStyle.getter@<X0>(uint64_t a1@<X8>)
{
  sub_1D5B76B10(v1, v8);
  sub_1D5B49474(0, &qword_1EC895548, MEMORY[0x1E69D76E0]);
  if (swift_dynamicCast())
  {
    sub_1D5B63F14(v6, v9);
    __swift_project_boxed_opaque_existential_1(v9, v9[3]);
    sub_1D725CF0C();
    return __swift_destroy_boxed_opaque_existential_1(v9);
  }

  else
  {
    v7 = 0;
    memset(v6, 0, sizeof(v6));
    sub_1D5BFB774(v6, &qword_1EC895550, &qword_1EC895548, MEMORY[0x1E69D76E0]);
    v4 = *MEMORY[0x1E69D77A0];
    v5 = sub_1D725D08C();
    return (*(*(v5 - 8) + 104))(a1, v4, v5);
  }
}

uint64_t FormatModelContext.contextMenu.getter()
{
  sub_1D5B76B10(v0, v5);
  sub_1D5B49474(0, &qword_1EC895558, MEMORY[0x1E69D7CA8]);
  if (swift_dynamicCast())
  {
    sub_1D5B63F14(v3, v6);
    __swift_project_boxed_opaque_existential_1(v6, v6[3]);
    v1 = sub_1D725DF6C();
    __swift_destroy_boxed_opaque_existential_1(v6);
    return v1;
  }

  else
  {
    v4 = 0;
    memset(v3, 0, sizeof(v3));
    sub_1D5BFB774(v3, &qword_1EC895560, &qword_1EC895558, MEMORY[0x1E69D7CA8]);
    return 0;
  }
}

uint64_t sub_1D6D4BA24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t (*a10)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  sub_1D5B76B10(v10, v25);
  sub_1D5B49474(0, &qword_1EC895558, MEMORY[0x1E69D7CA8]);
  if (swift_dynamicCast())
  {
    sub_1D5B63F14(v23, v26);
    v20 = v27;
    v19 = v28;
    __swift_project_boxed_opaque_existential_1(v26, v27);
    v21 = a10(a1, a2, a3, a4, a5, a6, a7, a8, a9, v20, v19);
    __swift_destroy_boxed_opaque_existential_1(v26);
    return v21;
  }

  else
  {
    v24 = 0;
    memset(v23, 0, sizeof(v23));
    sub_1D5BFB774(v23, &qword_1EC895560, &qword_1EC895558, MEMORY[0x1E69D7CA8]);
    return 0;
  }
}

void sub_1D6D4BBDC(void *a1, char a2, void **a3, double a4)
{
  v8 = *a3;
  v9 = v4[2];
  v10 = v4[3];
  v11 = v4[4];
  v12 = v4[5];
  v13 = swift_allocObject();
  v13[2] = v8;
  v13[3] = v9;
  v13[4] = v10;
  v14 = objc_allocWithZone(MEMORY[0x1E69DC888]);
  v28[4] = sub_1D5E46A8C;
  v28[5] = v13;
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 1107296256;
  v28[2] = sub_1D6E0CD34;
  v28[3] = &block_descriptor_96;
  v15 = _Block_copy(v28);
  v16 = v9;
  v17 = v10;
  v18 = v11;
  v19 = v12;
  v20 = v8;
  v21 = v16;
  v22 = v17;
  v23 = [v14 initWithDynamicProvider_];
  _Block_release(v15);

  [a1 setBackgroundColor_];

  v24 = [a1 layer];
  [v24 setCornerRadius_];

  v25 = [a1 layer];
  v26 = v25;
  if (a2)
  {
    if ((a2 & 2) != 0)
    {
      v27 = 3;
      if ((a2 & 4) == 0)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v27 = 1;
      if ((a2 & 4) == 0)
      {
        goto LABEL_8;
      }
    }

    goto LABEL_7;
  }

  if ((a2 & 2) == 0)
  {
    v27 = 0;
    if ((a2 & 4) == 0)
    {
      goto LABEL_8;
    }

LABEL_7:
    v27 |= 4uLL;
    goto LABEL_8;
  }

  v27 = 2;
  if ((a2 & 4) != 0)
  {
    goto LABEL_7;
  }

LABEL_8:
  if ((a2 & 8) != 0)
  {
    v27 |= 8uLL;
  }

  [v25 setMaskedCorners_];
}

uint64_t sub_1D6D4BDFC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);

  __swift_destroy_boxed_opaque_existential_1((v0 + 48));

  return swift_deallocClassInstance();
}

uint64_t sub_1D6D4BE8C(uint64_t a1, uint64_t a2)
{
  sub_1D6D4C0E0(0, qword_1EDF2A668, type metadata accessor for FormatViewBackground);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1D6D4BF74(uint64_t a1)
{
  sub_1D6D4C0E0(319, qword_1EDF2A668, type metadata accessor for FormatViewBackground);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_1D6D4BFFC(uint64_t a1)
{
  result = type metadata accessor for FormatViewBackground.Mica(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for FormatViewBackground.SplitBackground(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_1D6D4C0E0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D726393C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1D6D4C148(uint64_t a1)
{
  sub_1D6D4C0E0(319, &qword_1EDF3B668, MEMORY[0x1E69D78C0]);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_1D6D4C208(uint64_t a1)
{
  result = sub_1D725D5FC();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1D6D4C290(void *a1)
{
  v1 = [objc_msgSend(a1 possiblyUnfetchedAppConfiguration)];
  swift_unknownObjectRelease();
  if (v1)
  {
    [v1 feedNumberOfViewportsBetweenAds];
  }

  else
  {
    __break(1u);
  }
}

BOOL _s8NewsFeed22FormatImageNodeRequestV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  v6 = *a2;
  v5 = a2[1];
  if (v3)
  {
    if (!v6)
    {
      goto LABEL_13;
    }

    v7 = v3;
    swift_bridgeObjectRetain_n();

    v8 = sub_1D633D620(v7, v6);
    swift_bridgeObjectRelease_n();

    if ((v8 & 1) == 0)
    {
      return 0;
    }

    if (v4)
    {
      goto LABEL_5;
    }
  }

  else
  {
    if (v6)
    {
      goto LABEL_13;
    }

    if (v4)
    {
LABEL_5:
      if (v5)
      {
        swift_bridgeObjectRetain_n();

        v9 = sub_1D633D620(v4, v5);
        swift_bridgeObjectRelease_n();

        return (v9 & 1) != 0;
      }

      goto LABEL_13;
    }
  }

  if (v5)
  {
LABEL_13:

    return 0;
  }

  return 1;
}

unint64_t sub_1D6D4C5D0(uint64_t a1)
{
  result = sub_1D6D4C5F8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6D4C5F8()
{
  result = qword_1EC895590;
  if (!qword_1EC895590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC895590);
  }

  return result;
}

unint64_t sub_1D6D4C68C()
{
  result = qword_1EC895598;
  if (!qword_1EC895598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC895598);
  }

  return result;
}

unint64_t sub_1D6D4C6E0(uint64_t a1)
{
  result = sub_1D6D4C708();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6D4C708()
{
  result = qword_1EC8955A0;
  if (!qword_1EC8955A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8955A0);
  }

  return result;
}

unint64_t sub_1D6D4C79C()
{
  result = qword_1EC8955A8;
  if (!qword_1EC8955A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8955A8);
  }

  return result;
}

unint64_t sub_1D6D4C7F0(uint64_t a1)
{
  result = sub_1D6D4C818();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6D4C818()
{
  result = qword_1EC8955B0;
  if (!qword_1EC8955B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8955B0);
  }

  return result;
}

uint64_t sub_1D6D4C8AC(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  a1[1] = (a4)(a1, a2, a3);
  a1[2] = a5();
  result = a6();
  a1[3] = result;
  return result;
}

unint64_t sub_1D6D4C900()
{
  result = qword_1EC8955B8;
  if (!qword_1EC8955B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8955B8);
  }

  return result;
}

uint64_t keypath_setTm_0(void *a1, void *a2)
{

  *a2 = *a1;
}

void *sub_1D6D4C9C8(uint64_t a1, unint64_t *a2)
{
  sub_1D5EA74B8(0);
  v4 = *(v3 - 8);
  v5 = v4;
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = (&v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = (&v64 - v11);
  v14 = *a2;
  v13 = a2[1];
  v15 = MEMORY[0x1E69E6F90];
  sub_1D6048F4C(0, &qword_1EC880AC0, sub_1D5E4F358, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D7270C10;
  sub_1D6048F4C(0, &qword_1EC880490, sub_1D5EA74B8, v15);
  v17 = *(v4 + 72);
  v18 = *(v5 + 80);
  v75 = (v18 + 32) & ~v18;
  v68 = v18;
  v69 = v19;
  v20 = swift_allocObject();
  v72 = xmmword_1D7273AE0;
  v66 = v20;
  *(v20 + 16) = xmmword_1D7273AE0;
  sub_1D6048F4C(0, &qword_1EC8803C0, sub_1D5E4F38C, v15);
  v67 = v21;
  v74 = swift_initStackObject();
  *(v74 + 16) = v72;
  v22 = MEMORY[0x1E69E7CC0];
  v23 = MEMORY[0x1E69E7CC0];
  if (v14 >= 2)
  {

    v23 = v14;
  }

  v70 = v14;
  v71 = inited;
  v65 = v13;
  v24 = *(v23 + 16);
  if (v24)
  {
    *&v80[0] = v22;
    sub_1D69972A4(0, v24, 0);
    v25 = *&v80[0];
    v73 = v23;
    v26 = (v23 + 64);
    do
    {
      v27 = *v26;
      v82 = *(v26 - 2);
      v83 = *(v26 - 1);
      LOBYTE(v84) = v27;
      sub_1D6E7C97C(v12);
      v28 = type metadata accessor for FormatInspectionItem(0);
      (*(*(v28 - 8) + 56))(v12, 0, 1, v28);
      *&v80[0] = v25;
      v30 = *(v25 + 16);
      v29 = *(v25 + 24);
      if (v30 >= v29 >> 1)
      {
        sub_1D69972A4((v29 > 1), v30 + 1, 1);
        v25 = *&v80[0];
      }

      *(v25 + 16) = v30 + 1;
      sub_1D5E4F52C(v12, v25 + v75 + v30 * v17);
      v26 += 40;
      --v24;
    }

    while (v24);

    inited = v71;
  }

  else
  {

    v25 = MEMORY[0x1E69E7CC0];
  }

  sub_1D6795150(0x656D7473756A6441, 0xEB0000000073746ELL, 0, 0, v25, v76);

  v31 = v74;
  *(v74 + 56) = &type metadata for FormatInspectionGroup;
  *(v31 + 64) = &off_1F518B2C0;
  v32 = swift_allocObject();
  *(v31 + 32) = v32;
  *(v32 + 48) = v77;
  v33 = v76[1];
  *(v32 + 16) = v76[0];
  *(v32 + 32) = v33;
  v34 = sub_1D5F62BFC(v31);
  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_1((v31 + 32));
  v35 = sub_1D7073500(v34);

  v36 = v75;
  v37 = v66;
  sub_1D711AD20(0x656D7473756A6441, 0xEB0000000073746ELL, v35, 0, 0, (v66 + v75));
  v38 = type metadata accessor for FormatInspectionItem(0);
  v39 = *(v38 - 8);
  v40 = *(v39 + 56);
  v73 = v39 + 56;
  v74 = v40;
  v40(v37 + v36, 0, 1, v38);
  sub_1D6795150(1702521171, 0xE400000000000000, 0, 0, v37, v78);
  swift_setDeallocating();
  sub_1D6180C78(v37 + v36);
  swift_deallocClassInstance();
  *(inited + 56) = &type metadata for FormatInspectionGroup;
  *(inited + 64) = &off_1F518B2C0;
  v41 = swift_allocObject();
  *(inited + 32) = v41;
  *(v41 + 48) = v79;
  v42 = v78[1];
  *(v41 + 16) = v78[0];
  *(v41 + 32) = v42;
  v43 = swift_allocObject();
  *(v43 + 16) = v72;
  v44 = swift_initStackObject();
  *(v44 + 16) = v72;
  v45 = MEMORY[0x1E69E7CC0];
  v68 = v44;
  v69 = v43;
  v46 = MEMORY[0x1E69E7CC0];
  if (v70 != 1 && v65)
  {
  }

  v47 = *(v46 + 16);
  if (v47)
  {
    *&v80[0] = v45;
    sub_1D69972A4(0, v47, 0);
    v48 = *&v80[0];
    *&v72 = v46;
    v49 = (v46 + 64);
    do
    {
      v50 = *v49;
      v82 = *(v49 - 2);
      v83 = *(v49 - 1);
      LOBYTE(v84) = v50;
      sub_1D6E7C97C(v8);
      (v74)(v8, 0, 1, v38);
      *&v80[0] = v48;
      v52 = *(v48 + 16);
      v51 = *(v48 + 24);
      if (v52 >= v51 >> 1)
      {
        sub_1D69972A4((v51 > 1), v52 + 1, 1);
        v48 = *&v80[0];
      }

      *(v48 + 16) = v52 + 1;
      sub_1D5E4F52C(v8, v48 + v75 + v52 * v17);
      v49 += 40;
      --v47;
    }

    while (v47);

    inited = v71;
  }

  else
  {

    v48 = MEMORY[0x1E69E7CC0];
  }

  sub_1D6795150(0x656D7473756A6441, 0xEB0000000073746ELL, 0, 0, v48, v80);

  v53 = v68;
  *(v68 + 56) = &type metadata for FormatInspectionGroup;
  *(v53 + 64) = &off_1F518B2C0;
  v54 = swift_allocObject();
  *(v53 + 32) = v54;
  *(v54 + 48) = v81;
  v55 = v80[1];
  *(v54 + 16) = v80[0];
  *(v54 + 32) = v55;
  v56 = sub_1D5F62BFC(v53);
  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_1((v53 + 32));
  v57 = sub_1D7073500(v56);

  v58 = v75;
  v59 = v69;
  sub_1D711AD20(0x656D7473756A6441, 0xEB0000000073746ELL, v57, 0, 0, (v69 + v75));
  (v74)(v59 + v58, 0, 1, v38);
  sub_1D6795150(1752457552, 0xE400000000000000, 0, 0, v59, &v82);
  swift_setDeallocating();
  sub_1D6180C78(v59 + v58);
  swift_deallocClassInstance();
  *(inited + 96) = &type metadata for FormatInspectionGroup;
  *(inited + 104) = &off_1F518B2C0;
  v60 = swift_allocObject();
  *(inited + 72) = v60;
  *(v60 + 48) = v84;
  v61 = v83;
  *(v60 + 16) = v82;
  *(v60 + 32) = v61;
  v62 = sub_1D7073500(inited);
  swift_setDeallocating();
  sub_1D5E4F358(0);
  swift_arrayDestroy();
  return v62;
}

void FormatResource.loadableFonts(in:)(_OWORD *a1)
{
  sub_1D5B54CB8(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v34[-v6];
  v8 = a1[5];
  v35[4] = a1[4];
  v35[5] = v8;
  v9 = a1[6];
  v10 = a1[1];
  v35[0] = *a1;
  v35[1] = v10;
  v11 = a1[3];
  v35[2] = a1[2];
  v35[3] = v11;
  v12 = *v1;
  v13 = v1[1];
  v14 = v1[3];
  v37[2] = v1[2];
  v37[3] = v14;
  v15 = v1[2];
  v16 = *v1;
  v37[1] = v1[1];
  v36 = v9;
  v37[0] = v12;
  *(v40 + 9) = *(v1 + 105);
  v17 = v1[5];
  v40[0] = v1[6];
  v18 = v1[3];
  v19 = v1[5];
  v38 = v1[4];
  v39 = v19;
  v41[2] = v15;
  v41[3] = v18;
  v41[0] = v16;
  v41[1] = v13;
  v20 = v1[6];
  *(v42 + 9) = *(v1 + 105);
  v41[5] = v17;
  v42[0] = v20;
  v41[4] = v38;
  if (sub_1D5D2423C(v41) == 1)
  {
    nullsub_1();
    return;
  }

  nullsub_1();
  if ((*(v21 + 42) & 1) == 0)
  {
    v27 = *(v21 + 16);
    sub_1D5E42B34();
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_1D72816C0;
    sub_1D5E9A920(v37, v34);

    sub_1D5D27084(v35, v27, v7);
    if (v2)
    {
      sub_1D5E9A97C(v37);

      *(v28 + 16) = 0;

      return;
    }

    v29 = sub_1D72585BC();
    v30 = *(v29 - 8);
    (*(v30 + 56))(v7, 0, 1, v29);
    v31 = sub_1D726203C();
    v32 = 0;
    if ((*(v30 + 48))(v7, 1, v29) != 1)
    {
      v32 = sub_1D725844C();
      (*(v30 + 8))(v7, v29);
    }

    v33 = [objc_opt_self() loadableFontWithName:v31 url:v32];

    if (v33)
    {
      *(v28 + 32) = v33;
      sub_1D5E9A97C(v37);
      return;
    }

    __break(1u);
LABEL_19:
    __break(1u);
    return;
  }

  if (v36)
  {
    v22 = [v36 asChannel];
    if (v22)
    {
      v23 = [v22 theme];
      if (!v23 || (v24 = [v23 defaultHeadlineTemplate], swift_unknownObjectRelease(), !v24))
      {
        swift_unknownObjectRelease();
        return;
      }

      v25 = [v24 loadableFonts];
      if (v25)
      {
        v26 = v25;
        sub_1D6AE56F0();
        sub_1D726267C();
        swift_unknownObjectRelease();

        return;
      }

      goto LABEL_19;
    }
  }
}

void sub_1D6D4D5FC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, void *a7@<X6>, void (*a8)(void *__return_ptr, uint64_t, uint64_t, __n128)@<X7>, char *a9@<X8>, void (*a10)(void, uint64_t, uint64_t, uint64_t, uint64_t, __n128))
{
  v123 = a8;
  v134 = a7;
  v125 = a6;
  v138 = a5;
  v115 = a4;
  v127 = a3;
  v131 = a2;
  v136 = a1;
  v129 = a9;
  v122 = type metadata accessor for FeedWebEmbed(0);
  MEMORY[0x1EEE9AC00](v122, v10);
  v128 = &v113 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for FeedHeadline(0);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v126 = &v113 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B54CB8(0, &qword_1EDF40B30, type metadata accessor for FormatCustomItem.Action);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v121 = &v113 - v17;
  sub_1D5B54CB8(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  MEMORY[0x1EEE9AC00](v18 - 8, v19);
  v118 = &v113 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v124 = &v113 - v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v119 = &v113 - v26;
  MEMORY[0x1EEE9AC00](v27, v28);
  v117 = &v113 - v29;
  MEMORY[0x1EEE9AC00](v30, v31);
  v120 = &v113 - v32;
  v133 = sub_1D72585BC();
  v132 = *(v133 - 8);
  MEMORY[0x1EEE9AC00](v133, v33);
  v113 = &v113 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35, v36);
  v38 = &v113 - v37;
  MEMORY[0x1EEE9AC00](v39, v40);
  v116 = &v113 - v41;
  MEMORY[0x1EEE9AC00](v42, v43);
  v45 = &v113 - v44;
  MEMORY[0x1EEE9AC00](v46, v47);
  v114 = &v113 - v48;
  v49 = type metadata accessor for FeedCustomItem(0);
  MEMORY[0x1EEE9AC00](v49, v50);
  v52 = (&v113 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0));
  v130 = type metadata accessor for FormatLayoutError(0);
  MEMORY[0x1EEE9AC00](v130, v53);
  v55 = (&v113 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D5B54CB8(0, &qword_1EDF337F0, type metadata accessor for FormatOption);
  MEMORY[0x1EEE9AC00](v56 - 8, v57);
  v59 = &v113 - v58;
  v60 = type metadata accessor for FormatOption(0);
  v61 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60, v62);
  v64 = &v113 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v138 <= 2u)
  {
    if (v138)
    {
      if (v138 != 1)
      {
        v92 = v126;
        v93 = v135;
        sub_1D6B7C374(*(v136 + *v134), v126);
        v94 = v133;
        v95 = v132;
        if (!v93)
        {
          LOBYTE(v137[0]) = v131;
          v96 = v117;
          sub_1D6B44234(v92, v117);
          if ((*(v95 + 48))(v96, 1, v94) == 1)
          {
            sub_1D5D28540(v96, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
            sub_1D5D285FC();
            swift_allocError();
            *v97 = 0xD000000000000022;
            v97[1] = 0x80000001D73F1D90;
            swift_storeEnumTagMultiPayload();
            swift_willThrow();
            v91 = type metadata accessor for FeedHeadline;
            goto LABEL_25;
          }

          sub_1D5D28B04(v92, type metadata accessor for FeedHeadline);
          v108 = *(v95 + 32);
          v108(v45, v96, v94);
          v108(v129, v45, v94);
        }

        return;
      }

      v55 = v52;
      v65 = v135;
      sub_1D6B7B794(*(v136 + *v134), v52);
      v66 = v133;
      v67 = v132;
      if (v65)
      {
        return;
      }

      v68 = *(v49 + 20);
      v69 = type metadata accessor for FormatCustomItem.Resolved(0);
      v70 = v121;
      sub_1D5D27018(v52 + v68 + *(v69 + 24), v121, &qword_1EDF40B30, type metadata accessor for FormatCustomItem.Action);
      v71 = type metadata accessor for FormatCustomItem.Action(0);
      v72 = 1;
      v73 = (*(*(v71 - 8) + 48))(v70, 1, v71);
      v74 = v120;
      if (v73 != 1)
      {
        (*(v67 + 32))(v120, v70, v66);
        v72 = 0;
      }

      (*(v67 + 56))(v74, v72, 1, v66);
      if ((*(v67 + 48))(v74, 1, v66) != 1)
      {
        sub_1D5D28B04(v52, type metadata accessor for FeedCustomItem);
        v105 = *(v67 + 32);
        v106 = v114;
        v105(v114, v74, v66);
        v105(v129, v106, v66);
        return;
      }

      sub_1D5D28540(v74, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
      sub_1D5D285FC();
      swift_allocError();
      *v75 = 0xD000000000000025;
      v75[1] = 0x80000001D73F1DC0;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      v76 = type metadata accessor for FeedCustomItem;
    }

    else
    {
      v82 = v136;
      v83 = v127;

      v84 = v131;
      FormatOptionCollection.subscript.getter(v131, v83, v59);
      if ((*(v61 + 48))(v59, 1, v60) != 1)
      {

        sub_1D5D247E0(v59, v64);
        v103 = *(v64 + 2);

        v104 = v135;
        (v123)(v137, v82, v103);
        if (!v104)
        {

          (a10)(v137[0], v84, v83, v115, v82);
        }

        sub_1D5D28B04(v64, type metadata accessor for FormatOption);

        return;
      }

      sub_1D5D28540(v59, &qword_1EDF337F0, type metadata accessor for FormatOption);
      *v55 = v84;
      v55[1] = v83;
      swift_storeEnumTagMultiPayload();
      sub_1D5D285FC();
      swift_allocError();
      sub_1D5D287F4(v55, v85, type metadata accessor for FormatLayoutError);
      swift_willThrow();
      v76 = type metadata accessor for FormatLayoutError;
    }

    sub_1D5D28B04(v55, v76);
    return;
  }

  if (v138 == 3)
  {
    v86 = v135;
    v92 = v128;
    sub_1D6B7BE60(*(v136 + *v134), v128);
    v87 = v133;
    v88 = v132;
    if (v86)
    {
      return;
    }

    if (v131)
    {
      v89 = v119;
      sub_1D5D27018(v92 + *(v122 + 36), v119, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
      if ((*(v88 + 48))(v89, 1, v87) == 1)
      {
        sub_1D5D28540(v89, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
        sub_1D5D285FC();
        swift_allocError();
        *v90 = 0xD000000000000023;
        v90[1] = 0x80000001D73F1D60;
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
        v91 = type metadata accessor for FeedWebEmbed;
LABEL_25:
        sub_1D5D28B04(v92, v91);
        return;
      }

      sub_1D5D28B04(v92, type metadata accessor for FeedWebEmbed);
    }

    else
    {
      v89 = v119;
      (*(v132 + 16))(v119, v92 + *(v122 + 32), v133);
      sub_1D5D28B04(v92, type metadata accessor for FeedWebEmbed);
      (*(v88 + 56))(v89, 0, 1, v87);
    }

    v111 = *(v88 + 32);
    v112 = v116;
    v111(v116, v89, v87);
    v111(v129, v112, v87);
  }

  else if (v138 == 4)
  {
    v77 = v124;
    v78 = v135;
    sub_1D6D4F790(v136, v131, v134, v124);
    if (!v78)
    {
      v79 = v132;
      v80 = v133;
      if ((*(v132 + 48))(v77, 1, v133) == 1)
      {
        sub_1D5D28540(v77, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
        sub_1D5D285FC();
        swift_allocError();
        *v81 = 0xD00000000000001FLL;
        v81[1] = 0x80000001D73F1D40;
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
      }

      else
      {
        v107 = *(v79 + 32);
        v107(v38, v77, v80);
        v107(v129, v38, v80);
      }
    }
  }

  else
  {
    v98 = v135;
    sub_1D6B7C06C(*(v136 + *v134), v137);
    if (!v98)
    {
      v99 = v118;
      sub_1D60F32F8(v118);
      v100 = v132;
      v101 = v133;
      if ((*(v132 + 48))(v99, 1, v133) == 1)
      {
        sub_1D5D28540(v99, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
        sub_1D5D285FC();
        swift_allocError();
        *v102 = 0xD00000000000001DLL;
        v102[1] = 0x80000001D73F1D20;
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
        sub_1D5EE5B54(v137);
      }

      else
      {
        sub_1D5EE5B54(v137);
        v109 = *(v100 + 32);
        v110 = v113;
        v109(v113, v99, v101);
        v109(v129, v110, v101);
      }
    }
  }
}

void sub_1D6D4E524(void (*a1)(uint64_t, uint64_t, uint64_t, uint64_t, void, __n128)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, char *a6@<X8>)
{
  v107 = a5;
  v97 = a4;
  v96 = a3;
  v102 = a2;
  v104 = a1;
  v101 = a6;
  v95 = type metadata accessor for FeedWebEmbed(0);
  MEMORY[0x1EEE9AC00](v95, v6);
  v99 = &v90 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for FeedHeadline(0);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v98 = &v90 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B54CB8(0, &qword_1EDF40B30, type metadata accessor for FormatCustomItem.Action);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v94 = &v90 - v13;
  sub_1D5B54CB8(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v91 = &v90 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v90 - v19;
  MEMORY[0x1EEE9AC00](v21, v22);
  v92 = &v90 - v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = &v90 - v26;
  MEMORY[0x1EEE9AC00](v28, v29);
  v93 = &v90 - v30;
  v103 = sub_1D72585BC();
  v100 = *(v103 - 8);
  MEMORY[0x1EEE9AC00](v103, v31);
  v33 = &v90 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34, v35);
  v37 = &v90 - v36;
  MEMORY[0x1EEE9AC00](v38, v39);
  v41 = &v90 - v40;
  MEMORY[0x1EEE9AC00](v42, v43);
  v45 = &v90 - v44;
  MEMORY[0x1EEE9AC00](v46, v47);
  v49 = &v90 - v48;
  v50 = type metadata accessor for FeedCustomItem(0);
  v52 = MEMORY[0x1EEE9AC00](v50, v51);
  v54 = &v90 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v107 > 2u)
  {
    if (v107 == 3)
    {
      v71 = v99;
      v72 = v105;
      sub_1D5FB5240();
      v73 = v103;
      if (v72)
      {
        return;
      }

      if (v102)
      {
        v74 = v92;
        sub_1D5D27018(v71 + *(v95 + 36), v92, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
        if ((*(v100 + 48))(v74, 1, v73) == 1)
        {
          sub_1D5D28540(v74, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
          type metadata accessor for FormatLayoutError(0);
          sub_1D5D285FC();
          swift_allocError();
          *v75 = 0xD000000000000023;
          v75[1] = 0x80000001D73F1D60;
          swift_storeEnumTagMultiPayload();
          swift_willThrow();
          sub_1D5D28B04(v71, type metadata accessor for FeedWebEmbed);
          return;
        }

        sub_1D5D28B04(v71, type metadata accessor for FeedWebEmbed);
        v84 = v100;
      }

      else
      {
        v84 = v100;
        v74 = v92;
        (*(v100 + 16))(v92, v71 + *(v95 + 32), v103);
        sub_1D5D28B04(v71, type metadata accessor for FeedWebEmbed);
        (*(v84 + 56))(v74, 0, 1, v73);
      }

      v89 = *(v84 + 32);
      v89(v41, v74, v73);
      v89(v101, v41, v73);
    }

    else
    {
      v67 = v103;
      if (v107 == 4)
      {
        v68 = v105;
        sub_1D6D4FA48(v102, sub_1D5FB5A54, sub_1D5FB61AC, sub_1D5FB6008, v20);
        if (!v68)
        {
          v69 = v100;
          if ((*(v100 + 48))(v20, 1, v67) == 1)
          {
            sub_1D5D28540(v20, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
            type metadata accessor for FormatLayoutError(0);
            sub_1D5D285FC();
            swift_allocError();
            *v70 = 0xD00000000000001FLL;
            v70[1] = 0x80000001D73F1D40;
            swift_storeEnumTagMultiPayload();
            swift_willThrow();
          }

          else
          {
            v86 = *(v69 + 32);
            v86(v37, v20, v67);
            v86(v101, v37, v67);
          }
        }
      }

      else
      {
        v80 = v105;
        sub_1D5FB526C(v106);
        if (!v80)
        {
          v81 = v91;
          sub_1D60F32F8(v91);
          v82 = v100;
          if ((*(v100 + 48))(v81, 1, v67) == 1)
          {
            sub_1D5D28540(v81, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
            type metadata accessor for FormatLayoutError(0);
            sub_1D5D285FC();
            swift_allocError();
            *v83 = 0xD00000000000001DLL;
            v83[1] = 0x80000001D73F1D20;
            swift_storeEnumTagMultiPayload();
            swift_willThrow();
            sub_1D5EE5B54(v106);
          }

          else
          {
            sub_1D5EE5B54(v106);
            v88 = *(v82 + 32);
            v88(v33, v81, v67);
            v88(v101, v33, v67);
          }
        }
      }
    }
  }

  else
  {
    if (!v107)
    {
      sub_1D6F711B8(v104, v102, v96, v97, v101);
      return;
    }

    if (v107 == 1)
    {
      v55 = v105;
      sub_1D5FB4FE0(v52);
      if (v55)
      {
        return;
      }

      v56 = *(v50 + 20);
      v57 = type metadata accessor for FormatCustomItem.Resolved(0);
      v58 = v94;
      sub_1D5D27018(&v54[v56 + *(v57 + 24)], v94, &qword_1EDF40B30, type metadata accessor for FormatCustomItem.Action);
      v59 = type metadata accessor for FormatCustomItem.Action(0);
      v60 = 1;
      v61 = (*(*(v59 - 8) + 48))(v58, 1, v59);
      v62 = v103;
      v63 = v100;
      v64 = v93;
      if (v61 != 1)
      {
        (*(v100 + 32))(v93, v58, v103);
        v60 = 0;
      }

      (*(v63 + 56))(v64, v60, 1, v62);
      if ((*(v63 + 48))(v64, 1, v62) == 1)
      {
        sub_1D5D28540(v64, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
        type metadata accessor for FormatLayoutError(0);
        sub_1D5D285FC();
        swift_allocError();
        *v65 = 0xD000000000000025;
        v65[1] = 0x80000001D73F1DC0;
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
        v66 = type metadata accessor for FeedCustomItem;
LABEL_23:
        sub_1D5D28B04(v54, v66);
        return;
      }

      sub_1D5D28B04(v54, type metadata accessor for FeedCustomItem);
      v85 = *(v63 + 32);
      v85(v49, v64, v62);
      v85(v101, v49, v62);
    }

    else
    {
      v54 = v98;
      v76 = v105;
      sub_1D5FB543C();
      if (v76)
      {
        return;
      }

      v106[0] = v102;
      sub_1D6B44234(v54, v27);
      v77 = v100;
      v78 = v103;
      if ((*(v100 + 48))(v27, 1, v103) == 1)
      {
        sub_1D5D28540(v27, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
        type metadata accessor for FormatLayoutError(0);
        sub_1D5D285FC();
        swift_allocError();
        *v79 = 0xD000000000000022;
        v79[1] = 0x80000001D73F1D90;
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
        v66 = type metadata accessor for FeedHeadline;
        goto LABEL_23;
      }

      sub_1D5D28B04(v54, type metadata accessor for FeedHeadline);
      v87 = *(v77 + 32);
      v87(v45, v27, v78);
      v87(v101, v45, v78);
    }
  }
}

void sub_1D6D4F160(void (*a1)(uint64_t, uint64_t, uint64_t, uint64_t, void, __n128)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unsigned __int8 a5@<W4>, char *a6@<X8>)
{
  v41 = a3;
  v38 = a4;
  v43 = a1;
  v44 = a2;
  v40 = a6;
  sub_1D5B54CB8(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v38 - v9;
  v11 = sub_1D72585BC();
  v39 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = type metadata accessor for FormatLayoutError(0);
  MEMORY[0x1EEE9AC00](v45, v15);
  v17 = (&v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D5B54CB8(0, &qword_1EDF337F0, type metadata accessor for FormatOption);
  MEMORY[0x1EEE9AC00](v18 - 8, v19);
  v21 = &v38 - v20;
  v22 = type metadata accessor for FormatOption(0);
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22, v24);
  v26 = &v38 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a5 > 2u)
  {
    if (a5 == 4)
    {
      v27 = v42;
      sub_1D6D4FA48(v44, sub_1D5F54C3C, sub_1D5F55D7C, sub_1D5F55B34, v10);
      if (v27)
      {
        return;
      }

      v28 = v39;
      if ((*(v39 + 48))(v10, 1, v11) != 1)
      {
        v37 = *(v28 + 32);
        v37(v14, v10, v11);
        v37(v40, v14, v11);
        return;
      }

      sub_1D5D28540(v10, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
      sub_1D5D285FC();
      swift_allocError();
      *v29 = 0xD00000000000001FLL;
      v29[1] = 0x80000001D73F1D40;
      goto LABEL_9;
    }

LABEL_8:
    sub_1D5D285FC();
    swift_allocError();
    *v30 = 0xD000000000000066;
    v30[1] = 0x80000001D73C3700;
LABEL_9:
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    return;
  }

  if (a5)
  {
    goto LABEL_8;
  }

  v31 = off_1F513B088[0];
  type metadata accessor for FormatDecorationContext(0);
  v32 = v41;

  v33 = v31(v44, v32, v21);
  if ((*(v23 + 48))(v21, 1, v22, v33) == 1)
  {
    sub_1D5D28540(v21, &qword_1EDF337F0, type metadata accessor for FormatOption);
    *v17 = v44;
    v17[1] = v32;
    swift_storeEnumTagMultiPayload();
    sub_1D5D285FC();
    swift_allocError();
    sub_1D5D287F4(v17, v34, type metadata accessor for FormatLayoutError);
    swift_willThrow();
    sub_1D5D28B04(v17, type metadata accessor for FormatLayoutError);
  }

  else
  {

    sub_1D5D247E0(v21, v26);

    v35 = v42;
    v36 = v43;
    sub_1D6B766A8(v43, &v46);
    if (!v35)
    {

      sub_1D6B83618(v46, v44, v32, v38, v36, v40);
    }

    sub_1D5D28B04(v26, type metadata accessor for FormatOption);
  }
}

uint64_t sub_1D6D4F6F4()
{
  type metadata accessor for FormatLayoutError(0);
  sub_1D5D285FC();
  swift_allocError();
  *v0 = 0xD00000000000007ALL;
  v0[1] = 0x80000001D73C3800;
  swift_storeEnumTagMultiPayload();
  return swift_willThrow();
}

void sub_1D6D4F790(uint64_t a1@<X0>, unsigned __int8 a2@<W1>, void *a3@<X2>, char *a4@<X8>)
{
  v9 = type metadata accessor for FeedWebEmbed(0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v22[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for FeedHeadline(0);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v16 = &v22[-1] - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 >> 6)
  {
    if (a2 >> 6 == 1)
    {
      sub_1D6751840(*(a1 + *a3 + 8), v12);
      if (!v4)
      {
        if (a2)
        {
          sub_1D5D27018(&v12[*(v9 + 36)], a4, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
          sub_1D5D28B04(v12, type metadata accessor for FeedWebEmbed);
        }

        else
        {
          v18 = *(v9 + 32);
          v19 = sub_1D72585BC();
          v20 = *(v19 - 8);
          (*(v20 + 16))(a4, &v12[v18], v19);
          sub_1D5D28B04(v12, type metadata accessor for FeedWebEmbed);
          (*(v20 + 56))(a4, 0, 1, v19);
        }
      }
    }

    else
    {
      sub_1D6750B04(*(a1 + *a3 + 8), v22);
      if (!v4)
      {
        v17 = v22[1];
        sub_1D60F353C(a4);
        swift_unknownObjectRelease();
      }
    }
  }

  else
  {
    sub_1D6752174(*(a1 + *a3 + 8), v16);
    if (!v4)
    {
      LOBYTE(v22[0]) = a2;
      sub_1D6B44234(v16, a4);
      sub_1D5D28B04(v16, type metadata accessor for FeedHeadline);
    }
  }
}

void sub_1D6D4FA48(unsigned __int8 a1@<W1>, void (*a2)(__n128)@<X2>, void (*a3)(__n128)@<X3>, void (*a4)(void *__return_ptr, __n128)@<X4>, char *a5@<X8>)
{
  v27 = a5;
  v10 = type metadata accessor for FeedWebEmbed(0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v26[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for FeedHeadline(0);
  v16 = MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v18 = &v26[-1] - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 6)
  {
    if (a1 >> 6 == 1)
    {
      a2(v16);
      if (!v5)
      {
        if (a1)
        {
          sub_1D5D27018(&v13[*(v10 + 36)], v27, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
          sub_1D5D28B04(v13, type metadata accessor for FeedWebEmbed);
        }

        else
        {
          v20 = *(v10 + 32);
          v21 = sub_1D72585BC();
          v22 = *(v21 - 8);
          v23 = &v13[v20];
          v24 = v27;
          (*(v22 + 16))(v27, v23, v21);
          sub_1D5D28B04(v13, type metadata accessor for FeedWebEmbed);
          (*(v22 + 56))(v24, 0, 1, v21);
        }
      }
    }

    else
    {
      a4(v26, v16);
      if (!v5)
      {
        v19 = v26[1];
        sub_1D60F353C(v27);
        swift_unknownObjectRelease();
      }
    }
  }

  else
  {
    a3(v16);
    if (!v5)
    {
      LOBYTE(v26[0]) = a1;
      sub_1D6B44234(v18, v27);
      sub_1D5D28B04(v18, type metadata accessor for FeedHeadline);
    }
  }
}

void sub_1D6D4FCF8(uint64_t a1@<X0>, unint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = sub_1D72585BC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v32 - v13;
  v15 = type metadata accessor for FormatAbsoluteURL(0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v19 = &v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v20 == 2)
    {
      v23 = a2 & 0x3FFFFFFFFFFFFFFFLL;
      v24 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v25 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      v26 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
      v27 = *(v23 + 40);
      sub_1D5D27950(v24, v25, v26, *(v23 + 40));
      sub_1D6D4D5FC(a1, v24, v25, v26, v27, &OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_options, &OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindingStack, sub_1D6B744A8, a3, sub_1D6B80238);
      sub_1D5D28C84(v24, v25, v26, v27);
    }

    else
    {
      v30 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v31 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);

      sub_1D6D52088(a1, v30, v31, a3);
    }
  }

  else if (v20)
  {
    v33 = a3;
    v28 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
    v34 = *(a1 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config + 1);

    sub_1D722B410(v10);
    sub_1D725849C();
    v29 = *(v7 + 8);
    v29(v10, v6);
    sub_1D6B79708(v28, MEMORY[0x1E69E7CC0], v33);

    v29(v14, v6);
  }

  else
  {
    v21 = v17;
    v22 = swift_projectBox();
    sub_1D5D287F4(v22, v19, type metadata accessor for FormatAbsoluteURL);
    sub_1D6B79708(*&v19[*(v21 + 20)], MEMORY[0x1E69E7CC0], a3);
    sub_1D5D28B04(v19, type metadata accessor for FormatAbsoluteURL);
  }
}

void sub_1D6D5003C(char *a1@<X0>, unint64_t a2@<X1>, char *a3@<X8>)
{
  v48 = a1;
  sub_1D5B54CB8(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v47 - v7;
  sub_1D5B54CB8(0, &unk_1EDF43B50, MEMORY[0x1E69681B8]);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v47 - v11;
  v13 = sub_1D7257C7C();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for FormatAbsoluteURL(0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v22 = &v47 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v23 == 2)
    {
      v28 = a2 & 0x3FFFFFFFFFFFFFFFLL;
      v29 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v30 = *(v28 + 24);
      v31 = *(v28 + 32);
      v32 = *(v28 + 40);
      sub_1D5D27950(v29, v30, v31, *(v28 + 40));
      sub_1D6D4E524(v48, v29, v30, v31, v32, a3);
      sub_1D5D28C84(v29, v30, v31, v32);
    }

    else
    {
      v37 = a2 & 0x3FFFFFFFFFFFFFFFLL;
      v38 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v39 = *(v37 + 24);

      sub_1D6D53964(v48, v38, v39, a3);
    }
  }

  else
  {
    if (!v23)
    {
      v47 = a3;
      v24 = v20;
      v25 = swift_projectBox();
      sub_1D5D287F4(v25, v22, type metadata accessor for FormatAbsoluteURL);
      v26 = *&v22[*(v24 + 20)];
      if (*(v26 + 16))
      {
        sub_1D7257BCC();
        if ((*(v14 + 48))(v12, 1, v13) != 1)
        {
          (*(v14 + 32))(v17, v12, v13);
          v40 = sub_1D7257B6C();
          if (v40)
          {
            v42 = v40;
          }

          else
          {
            v42 = MEMORY[0x1E69E7CC0];
          }

          MEMORY[0x1EEE9AC00](v40, v41);
          *(&v47 - 2) = v48;
          v43 = sub_1D5FBB260(sub_1D6D578B0, (&v47 - 4), v26);
          v49 = v42;
          sub_1D69852E4(v43);
          sub_1D7257B7C();
          sub_1D7257BDC();
          (*(v14 + 8))(v17, v13);
          v44 = sub_1D72585BC();
          v45 = *(v44 - 8);
          v46 = *(v45 + 48);
          if (v46(v8, 1, v44) == 1)
          {
            (*(v45 + 16))(v47, v22, v44);
            if (v46(v8, 1, v44) != 1)
            {
              sub_1D5D28540(v8, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
            }
          }

          else
          {
            (*(v45 + 32))(v47, v8, v44);
          }

          goto LABEL_7;
        }

        sub_1D5D28540(v12, &unk_1EDF43B50, MEMORY[0x1E69681B8]);
      }

      v27 = sub_1D72585BC();
      (*(*(v27 - 8) + 16))(v47, v22, v27);
LABEL_7:
      sub_1D5D28B04(v22, type metadata accessor for FormatAbsoluteURL);
      return;
    }

    v33 = a2 & 0x3FFFFFFFFFFFFFFFLL;
    v35 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    v34 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
    v36 = *(v33 + 32);

    sub_1D60B1338(v48, v35, v34, v36, a3);
  }
}

double sub_1D6D505B4@<D0>(void (*a1)(uint64_t, uint64_t, uint64_t, uint64_t, void, __n128)@<X0>, unint64_t a2@<X1>, char *a3@<X8>)
{
  v58 = a3;
  v57 = a1;
  v4 = sub_1D72585BC();
  v55 = *(v4 - 8);
  v56 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v53 - v10;
  sub_1D5B54CB8(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v54 = &v53 - v14;
  sub_1D5B54CB8(0, &unk_1EDF43B50, MEMORY[0x1E69681B8]);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v18 = &v53 - v17;
  v19 = sub_1D7257C7C();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19, v21);
  v23 = &v53 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for FormatAbsoluteURL(0);
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = &v53 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v28 == 2)
    {
      v33 = a2 & 0x3FFFFFFFFFFFFFFFLL;
      v34 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v35 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      v36 = *(v33 + 32);
      v37 = *(v33 + 40);
      sub_1D5D27950(v34, v35, v36, v37);
      sub_1D6D4F160(v57, v34, v35, v36, v37, v58);
      sub_1D5D28C84(v34, v35, v36, v37);
    }

    else
    {
      v43 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v44 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);

      sub_1D6D5422C(v57, v43, v44, v58);
    }
  }

  else
  {
    if (!v28)
    {
      v29 = swift_projectBox();
      sub_1D5D287F4(v29, v27, type metadata accessor for FormatAbsoluteURL);
      v30 = *&v27[*(v24 + 20)];
      if (*(v30 + 16))
      {
        sub_1D7257BCC();
        v31 = v20;
        if ((*(v20 + 48))(v18, 1, v19) != 1)
        {
          (*(v20 + 32))(v23, v18, v19);
          v45 = sub_1D7257B6C();
          if (v45)
          {
            v47 = v45;
          }

          else
          {
            v47 = MEMORY[0x1E69E7CC0];
          }

          MEMORY[0x1EEE9AC00](v45, v46);
          *(&v53 - 2) = v57;
          v48 = sub_1D5FBB260(sub_1D6D578B0, (&v53 - 4), v30);
          v59 = v47;
          sub_1D69852E4(v48);
          sub_1D7257B7C();
          v49 = v54;
          sub_1D7257BDC();
          (*(v31 + 8))(v23, v19);
          v51 = v55;
          v50 = v56;
          v52 = *(v55 + 48);
          if (v52(v49, 1, v56) == 1)
          {
            (*(v51 + 16))(v58, v27, v50);
            if (v52(v49, 1, v50) != 1)
            {
              sub_1D5D28540(v49, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
            }
          }

          else
          {
            (*(v51 + 32))(v58, v49, v50);
          }

          goto LABEL_7;
        }

        sub_1D5D28540(v18, &unk_1EDF43B50, MEMORY[0x1E69681B8]);
      }

      (*(v55 + 16))(v58, v27, v56);
LABEL_7:
      sub_1D5D28B04(v27, type metadata accessor for FormatAbsoluteURL);
      return result;
    }

    v38 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
    v39 = v57;
    v60 = *(v57 + 9);

    sub_1D722B410(v7);
    sub_1D725849C();
    v40 = *(v55 + 8);
    v41 = v7;
    v42 = v56;
    v40(v41, v56);
    sub_1D6B7A750(v39, v38, MEMORY[0x1E69E7CC0], v58);

    v40(v11, v42);
  }

  return result;
}

double sub_1D6D50BD4@<D0>(__int128 *a1@<X0>, char *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v177 = a3;
  v178 = a2;
  v174 = a4;
  v158 = type metadata accessor for FormatLayoutError(0);
  MEMORY[0x1EEE9AC00](v158, v5);
  v154 = &v146 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v157 = &v146 - v9;
  MEMORY[0x1EEE9AC00](v10, v11);
  v153 = &v146 - v12;
  MEMORY[0x1EEE9AC00](v13, v14);
  v156 = &v146 - v15;
  MEMORY[0x1EEE9AC00](v16, v17);
  v155 = (&v146 - v18);
  sub_1D5B54CB8(0, &qword_1EDF337F0, type metadata accessor for FormatOption);
  MEMORY[0x1EEE9AC00](v19 - 8, v20);
  v161 = &v146 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22, v23);
  v164 = &v146 - v24;
  MEMORY[0x1EEE9AC00](v25, v26);
  v160 = &v146 - v27;
  MEMORY[0x1EEE9AC00](v28, v29);
  v163 = &v146 - v30;
  MEMORY[0x1EEE9AC00](v31, v32);
  v162 = &v146 - v33;
  v169 = type metadata accessor for FormatOption(0);
  v176 = *(v169 - 8);
  MEMORY[0x1EEE9AC00](v169, v34);
  v159 = &v146 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36, v37);
  v39 = &v146 - v38;
  MEMORY[0x1EEE9AC00](v40, v41);
  v43 = &v146 - v42;
  MEMORY[0x1EEE9AC00](v44, v45);
  v47 = &v146 - v46;
  MEMORY[0x1EEE9AC00](v48, v49);
  v51 = &v146 - v50;
  v52 = sub_1D72585BC();
  v53 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52, v54);
  v56 = &v146 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = v218;
  sub_1D5D27084(a1, v178, v56);
  v218 = v57;
  if (v57)
  {
    return result;
  }

  v59 = v53;
  v149 = v43;
  v150 = v47;
  v151 = v39;
  v152 = v51;
  v172 = a1;
  v165 = v56;
  v60 = *(v177 + 16);
  if (!v60)
  {
    v134 = MEMORY[0x1E69E7CC0];
    v83 = MEMORY[0x1E69E7CC0];
    v133 = v174;
    v135 = v59;
LABEL_54:
    v136 = v165;
    sub_1D6B79734(v83, v134, v133);

    (*(v135 + 8))(v136, v52);
    return result;
  }

  v147 = v52;
  v148 = v53;
  v61 = (v177 + 32);
  v166 = (v176 + 48);
  v62 = v60 - 1;
  v178 = MEMORY[0x1E69E7CC0];
  v171 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v63 = v61[1];
    v187 = *v61;
    v188 = v63;
    v64 = v61[3];
    v189 = v61[2];
    v190 = v64;
    v65 = v61[5];
    v191 = v61[4];
    v192[0] = v65;
    *(v192 + 10) = *(v61 + 90);
    v66 = *(&v187 + 1);
    v218 = v187;
    v67 = *(&v188 + 1);
    v68 = v189;
    v69 = WORD4(v192[1]);
    v70 = (WORD4(v192[1]) >> 12) & 3;
    v71 = v190;
    v176 = v62;
    v177 = v188;
    if (v70)
    {
      break;
    }

    if (v190 >> 14)
    {
      v83 = v178;
      if (v190 >> 14 == 1)
      {
        v84 = v172[5];
        v184 = v172[4];
        v185 = v84;
        v186 = v172[6];
        v85 = v172[1];
        v180 = *v172;
        v181 = v85;
        v86 = v172[3];
        v182 = v172[2];
        v183 = v86;
        v87 = off_1F51B1B98[0];
        sub_1D60B2AC8(&v187, v179);
        sub_1D60B2AC8(&v187, v179);

        v88 = v162;
        v87(v218, v66, v162);
        if ((*v166)(v88, 1, v169) == 1)
        {
          sub_1D5D28540(v88, &qword_1EDF337F0, type metadata accessor for FormatOption);
          v140 = v155;
          *v155 = v218;
          *(v140 + 8) = v66;
          swift_storeEnumTagMultiPayload();
          sub_1D5D285FC();
          v141 = swift_allocError();
          sub_1D5D287F4(v140, v142, type metadata accessor for FormatLayoutError);
          v218 = v141;
          swift_willThrow();
          sub_1D60B2A74(&v187);
          sub_1D5D28B04(v140, type metadata accessor for FormatLayoutError);
          (*(v148 + 8))(v165, v147);
          sub_1D60B2A74(&v187);

          goto LABEL_63;
        }

        sub_1D5D247E0(v88, v152);
        *&v194[8] = v184;
        *&v194[10] = v185;
        *&v194[12] = v186;
        *v194 = v180;
        *&v194[2] = v181;
        *&v194[4] = v182;
        *&v194[6] = v183;
        sub_1D6B74D28(v194, v179);
        v193[4] = v184;
        v193[5] = v185;
        v193[6] = v186;
        v193[0] = v180;
        v193[1] = v181;
        v193[2] = v182;
        v193[3] = v183;
        sub_1D6B7DC5C(v179[0], v218, v66, v177, v193);
        sub_1D5D28B04(v152, type metadata accessor for FormatOption);
      }

      else
      {
        *&v194[15] = __PAIR128__(*(&v187 + 1), v218);
        *&v194[17] = __PAIR128__(*(&v188 + 1), v177);
        *&v194[19] = v189;
        v195 = v190 & 0x3FFF;
        sub_1D60B2AC8(&v187, &v180);
        sub_1D60B2AC8(&v187, &v180);
        sub_1D68A8D54(v172);
      }

      sub_1D60B2A74(&v187);
    }

    else
    {
      sub_1D60B2AC8(&v187, &v180);
      sub_1D5E1DA6C(v218, v66, v177, v67, v68, *(&v68 + 1), v71);
      v83 = v178;
    }

    sub_1D725845C();
    sub_1D60B2A74(&v187);

LABEL_50:
    v133 = v174;
    if (!v176)
    {
      v134 = v171;
      v52 = v147;
      v135 = v148;
      goto LABEL_54;
    }

    v178 = v83;
    v62 = v176 - 1;
    v61 += 7;
  }

  v173 = v191;
  v72 = v70 == 1;
  v175 = *(&v190 + 1);
  v170 = *(&v191 + 1);
  v168 = *&v192[1];
  v167 = v192[0];
  v73 = v190 >> 14;
  if (!v72)
  {
    if (!(v190 >> 14))
    {
      sub_1D60B2AC8(&v187, &v180);
      v111 = v66;
      v82 = v66;
      v80 = v218;
      sub_1D5E1DA6C(v218, v111, v177, v67, v68, *(&v68 + 1), v71);
      goto LABEL_31;
    }

    if (v73 != 1)
    {
      v216[7] = __PAIR128__(*(&v187 + 1), v218);
      v216[8] = __PAIR128__(*(&v188 + 1), v177);
      v216[9] = v189;
      v217 = v190 & 0x3FFF;
      sub_1D60B2AC8(&v187, &v180);
      v80 = sub_1D68A8D54(v172);
      v82 = v112;
      goto LABEL_31;
    }

    v89 = v172[5];
    v184 = v172[4];
    v185 = v89;
    v186 = v172[6];
    v90 = v172[1];
    v180 = *v172;
    v181 = v90;
    v91 = v172[3];
    v182 = v172[2];
    v183 = v91;
    v92 = off_1F51B1B98[0];
    sub_1D60B2AC8(&v187, v179);

    v93 = v164;
    v92(v218, v66, v164);
    if ((*v166)(v93, 1, v169) != 1)
    {

      v94 = v151;
      sub_1D5D247E0(v93, v151);
      v216[4] = v184;
      v216[5] = v185;
      v216[6] = v186;
      v216[0] = v180;
      v216[1] = v181;
      v216[2] = v182;
      v216[3] = v183;

      sub_1D6B74D28(v216, v179);

      v215[4] = v184;
      v215[5] = v185;
      v215[6] = v186;
      v215[0] = v180;
      v215[1] = v181;
      v215[3] = v183;
      v215[2] = v182;
      v80 = sub_1D6B7DC5C(v179[0], v218, v66, v177, v215);
      v82 = v95;
      sub_1D5D28B04(v94, type metadata accessor for FormatOption);

LABEL_31:
      v113 = swift_allocObject();
      v99 = v173;
      v218 = v113;
      if (v69 >> 14)
      {
        if (v69 >> 14 == 1)
        {
          v177 = v82;
          v114 = v172[5];
          v184 = v172[4];
          v185 = v114;
          v186 = v172[6];
          v115 = v172[1];
          v180 = *v172;
          v181 = v115;
          v116 = v172[3];
          v182 = v172[2];
          v183 = v116;
          v117 = off_1F51B1B98[0];

          v118 = v161;
          v117(v175, v99, v161);
          if ((*v166)(v118, 1, v169) == 1)
          {
            sub_1D5D28540(v118, &qword_1EDF337F0, type metadata accessor for FormatOption);
            v143 = v154;
            goto LABEL_61;
          }

          v119 = v159;
          sub_1D5D247E0(v118, v159);
          v208[4] = v184;
          v208[5] = v185;
          v208[6] = v186;
          v208[0] = v180;
          v208[1] = v181;
          v208[3] = v183;
          v208[2] = v182;

          sub_1D6B74D28(v208, v179);
          v82 = v177;
          v83 = v178;

          v207[4] = v184;
          v207[5] = v185;
          v207[6] = v186;
          v207[0] = v180;
          v207[1] = v181;
          v207[3] = v183;
          v207[2] = v182;
          v120 = sub_1D6B7DC5C(v179[0], v175, v99, v170, v207);
          v99 = v121;
          v122 = v119;
          v123 = v120;
          sub_1D5D28B04(v122, type metadata accessor for FormatOption);

          v124 = v123;
          v113 = v218;
        }

        else
        {
          v209 = v175;
          v210 = v173;
          v211 = v170;
          v212 = v167;
          v213 = v168;
          v214 = v69 & 0xFFF;
          v124 = sub_1D68A8D54(v172);
          v99 = v129;
          v83 = v178;
        }
      }

      else
      {

        v83 = v178;
        v124 = v175;
      }

      *(v113 + 16) = v124;
      *(v113 + 24) = v99;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v171 = sub_1D698CA54(0, *(v171 + 2) + 1, 1, v171);
      }

      v131 = *(v171 + 2);
      v130 = *(v171 + 3);
      if (v131 >= v130 >> 1)
      {
        v171 = sub_1D698CA54((v130 > 1), v131 + 1, 1, v171);
      }

      sub_1D60B2A74(&v187);
      v132 = v171;
      *(v171 + 2) = v131 + 1;
      v128 = &v132[24 * v131];
      goto LABEL_49;
    }

    sub_1D5D28540(v93, &qword_1EDF337F0, type metadata accessor for FormatOption);
    v137 = v157;
LABEL_57:
    *v137 = v218;
    v137[1] = v66;
    swift_storeEnumTagMultiPayload();
    sub_1D5D285FC();
    v138 = swift_allocError();
    sub_1D5D287F4(v137, v139, type metadata accessor for FormatLayoutError);
    swift_willThrow();
    sub_1D5D28B04(v137, type metadata accessor for FormatLayoutError);
    v218 = v138;
    (*(v148 + 8))(v165, v147);
    goto LABEL_62;
  }

  if (v190 >> 14)
  {
    if (v73 == 1)
    {
      v74 = v172[5];
      v184 = v172[4];
      v185 = v74;
      v186 = v172[6];
      v75 = v172[1];
      v180 = *v172;
      v181 = v75;
      v76 = v172[3];
      v182 = v172[2];
      v183 = v76;
      v77 = off_1F51B1B98[0];
      sub_1D60B2AC8(&v187, v179);

      v78 = v163;
      v77(v218, v66, v163);
      if ((*v166)(v78, 1, v169) == 1)
      {
        sub_1D5D28540(v78, &qword_1EDF337F0, type metadata accessor for FormatOption);
        v137 = v156;
        goto LABEL_57;
      }

      v79 = v150;
      sub_1D5D247E0(v78, v150);
      *&v205[8] = v184;
      *&v205[10] = v185;
      *&v205[12] = v186;
      *v205 = v180;
      *&v205[2] = v181;
      *&v205[6] = v183;
      *&v205[4] = v182;

      sub_1D6B74D28(v205, v179);

      v204[4] = v184;
      v204[5] = v185;
      v204[6] = v186;
      v204[0] = v180;
      v204[1] = v181;
      v204[3] = v183;
      v204[2] = v182;
      v80 = sub_1D6B7DC5C(v179[0], v218, v66, v177, v204);
      v82 = v81;
      sub_1D5D28B04(v79, type metadata accessor for FormatOption);
    }

    else
    {
      *&v205[15] = __PAIR128__(*(&v187 + 1), v218);
      *&v205[17] = __PAIR128__(*(&v188 + 1), v177);
      *&v205[19] = v189;
      v206 = v190 & 0x3FFF;
      sub_1D60B2AC8(&v187, &v180);
      v80 = sub_1D68A8D54(v172);
      v82 = v97;
    }
  }

  else
  {
    sub_1D60B2AC8(&v187, &v180);
    v96 = v66;
    v82 = v66;
    v80 = v218;
    sub_1D5E1DA6C(v218, v96, v177, v67, v68, *(&v68 + 1), v71);
  }

  v98 = swift_allocObject();
  v99 = v173;
  v218 = v98;
  if (!(v69 >> 14))
  {

    v83 = v178;
    v110 = v175;
    goto LABEL_37;
  }

  if (v69 >> 14 != 1)
  {
    v198 = v175;
    v199 = v173;
    v200 = v170;
    v201 = v167;
    v202 = v168;
    v203 = v69 & 0xFFF;
    v110 = sub_1D68A8D54(v172);
    v99 = v125;
    v83 = v178;
    goto LABEL_37;
  }

  v177 = v82;
  v100 = v172[5];
  v184 = v172[4];
  v185 = v100;
  v186 = v172[6];
  v101 = v172[1];
  v180 = *v172;
  v181 = v101;
  v102 = v172[3];
  v182 = v172[2];
  v183 = v102;
  v103 = off_1F51B1B98[0];

  v104 = v160;
  v103(v175, v99, v160);
  if ((*v166)(v104, 1, v169) != 1)
  {

    v105 = v149;
    sub_1D5D247E0(v104, v149);
    v197[4] = v184;
    v197[5] = v185;
    v197[6] = v186;
    v197[0] = v180;
    v197[1] = v181;
    v197[3] = v183;
    v197[2] = v182;

    sub_1D6B74D28(v197, v179);
    v82 = v177;
    v83 = v178;

    v196[4] = v184;
    v196[5] = v185;
    v196[6] = v186;
    v196[0] = v180;
    v196[1] = v181;
    v196[2] = v182;
    v196[3] = v183;
    v106 = sub_1D6B7DC5C(v179[0], v175, v99, v170, v196);
    v99 = v107;
    v108 = v105;
    v109 = v106;
    sub_1D5D28B04(v108, type metadata accessor for FormatOption);

    v110 = v109;
    v98 = v218;
LABEL_37:
    *(v98 + 16) = v110;
    *(v98 + 24) = v99;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v83 = sub_1D698CA54(0, *(v83 + 2) + 1, 1, v83);
    }

    v127 = *(v83 + 2);
    v126 = *(v83 + 3);
    if (v127 >= v126 >> 1)
    {
      v83 = sub_1D698CA54((v126 > 1), v127 + 1, 1, v83);
    }

    sub_1D60B2A74(&v187);
    *(v83 + 2) = v127 + 1;
    v128 = &v83[24 * v127];
LABEL_49:
    *(v128 + 4) = v80;
    *(v128 + 5) = v82;
    *(v128 + 6) = v218;
    goto LABEL_50;
  }

  sub_1D5D28540(v104, &qword_1EDF337F0, type metadata accessor for FormatOption);
  v143 = v153;
LABEL_61:
  *v143 = v175;
  v143[1] = v99;
  swift_storeEnumTagMultiPayload();
  sub_1D5D285FC();
  v144 = swift_allocError();
  sub_1D5D287F4(v143, v145, type metadata accessor for FormatLayoutError);
  swift_willThrow();
  sub_1D5D28B04(v143, type metadata accessor for FormatLayoutError);
  v218 = v144;
  (*(v148 + 8))(v165, v147);

  swift_deallocUninitializedObject();
LABEL_62:
  sub_1D60B2A74(&v187);

LABEL_63:

  return result;
}

double sub_1D6D52088@<D0>(uint64_t a1@<X0>, char *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v251 = a3;
  v252 = a2;
  v246 = a4;
  v239 = type metadata accessor for FormatLayoutError(0);
  MEMORY[0x1EEE9AC00](v239, v5);
  v216 = (&v208 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v7, v8);
  v235 = (&v208 - v9);
  MEMORY[0x1EEE9AC00](v10, v11);
  v215 = (&v208 - v12);
  MEMORY[0x1EEE9AC00](v13, v14);
  v234 = (&v208 - v15);
  MEMORY[0x1EEE9AC00](v16, v17);
  v233 = (&v208 - v18);
  sub_1D5B54CB8(0, &qword_1EDF337F0, type metadata accessor for FormatOption);
  MEMORY[0x1EEE9AC00](v19 - 8, v20);
  v228 = &v208 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22, v23);
  v232 = &v208 - v24;
  MEMORY[0x1EEE9AC00](v25, v26);
  v227 = &v208 - v27;
  MEMORY[0x1EEE9AC00](v28, v29);
  v231 = &v208 - v30;
  MEMORY[0x1EEE9AC00](v31, v32);
  v230 = &v208 - v33;
  v240 = type metadata accessor for FormatOption(0);
  v250 = *(v240 - 8);
  MEMORY[0x1EEE9AC00](v240, v34);
  v220 = &v208 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36, v37);
  v219 = &v208 - v38;
  MEMORY[0x1EEE9AC00](v39, v40);
  v226 = &v208 - v41;
  MEMORY[0x1EEE9AC00](v42, v43);
  v224 = &v208 - v44;
  MEMORY[0x1EEE9AC00](v45, v46);
  v223 = &v208 - v47;
  MEMORY[0x1EEE9AC00](v48, v49);
  v229 = &v208 - v50;
  MEMORY[0x1EEE9AC00](v51, v52);
  v218 = &v208 - v53;
  MEMORY[0x1EEE9AC00](v54, v55);
  v217 = &v208 - v56;
  MEMORY[0x1EEE9AC00](v57, v58);
  v225 = &v208 - v59;
  MEMORY[0x1EEE9AC00](v60, v61);
  v222 = &v208 - v62;
  MEMORY[0x1EEE9AC00](v63, v64);
  v221 = &v208 - v65;
  MEMORY[0x1EEE9AC00](v66, v67);
  v69 = &v208 - v68;
  MEMORY[0x1EEE9AC00](v70, v71);
  v73 = &v208 - v72;
  MEMORY[0x1EEE9AC00](v74, v75);
  v77 = &v208 - v76;
  MEMORY[0x1EEE9AC00](v78, v79);
  v81 = &v208 - v80;
  v82 = sub_1D72585BC();
  v83 = *(v82 - 8);
  MEMORY[0x1EEE9AC00](v82, v84);
  v86 = &v208 - ((v85 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = v283;
  sub_1D6D4FCF8(a1, v252, v86);
  if (v87)
  {
    return result;
  }

  v209 = v77;
  v210 = v73;
  v213 = v82;
  v214 = v81;
  v212 = v69;
  v249 = a1;
  v236 = v86;
  v89 = *(v251 + 16);
  if (!v89)
  {
    v115 = MEMORY[0x1E69E7CC0];
    v198 = MEMORY[0x1E69E7CC0];
    v95 = v246;
LABEL_85:
    v199 = v236;
    sub_1D6B79708(v198, v115, v95);

    (*(v83 + 8))(v199, v213);
    return result;
  }

  v211 = v83;
  v237 = OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_options;
  v90 = (v251 + 32);
  v238 = (v250 + 56);
  v91 = v89 - 1;
  v244 = MEMORY[0x1E69E7CC0];
  v252 = MEMORY[0x1E69E7CC0];
  v92 = 0;
  while (1)
  {
    v97 = v90[1];
    v254 = *v90;
    v255 = v97;
    v98 = v90[3];
    v256 = v90[2];
    v257 = v98;
    v99 = v90[5];
    v258 = v90[4];
    *v259 = v99;
    *(&v259[1] + 2) = *(v90 + 90);
    v100 = *(&v254 + 1);
    v283 = v254;
    v250 = v91;
    v101 = *(&v255 + 1);
    v251 = v255;
    v102 = v256;
    v103 = LOWORD(v259[3]);
    v104 = (LOWORD(v259[3]) >> 12) & 3;
    v105 = v257;
    if (v104)
    {
      v247 = *(&v257 + 1);
      v245 = *(&v258 + 1);
      v248 = v258;
      v241 = v259[0];
      v242 = v259[1];
      v243 = v259[2];
      if (v104 == 1)
      {
        if (!(v257 >> 14))
        {
          sub_1D60B2AC8(&v254, v253);
          sub_1D5E1DA6C(v283, v100, v251, v101, v102, *(&v102 + 1), v105);
          v133 = v249;
LABEL_36:
          v134 = v247;
LABEL_37:
          v146 = swift_allocObject();
          v147 = v146;
          if (v103 >> 14)
          {
            if (v103 >> 14 == 1)
            {
              v251 = v146;
              v148 = *(v133 + v237);
              v149 = *(v148 + 16);
              swift_beginAccess();
              v150 = *(*(v149 + 16) + 16);
              v151 = v248;

              if (v150 && (sub_1D5B69D90(v134, v151), (v152 & 1) != 0))
              {
                swift_endAccess();
                v153 = v218;
                sub_1D5D25108(v218);
                v154 = v153;
                v155 = v217;
                sub_1D5D247E0(v154, v217);
                v156 = v155;
                v157 = v227;
                sub_1D5D247E0(v156, v227);
                v115 = v252;
                v158 = v151;
              }

              else
              {
                swift_endAccess();
                swift_beginAccess();
                v161 = *(v148 + 24);
                v115 = v252;
                v158 = v151;
                if (!*(v161 + 16) || (sub_1D5B69D90(v134, v151), (v162 & 1) == 0))
                {
                  swift_endAccess();
                  v206 = v227;
                  (*v238)(v227, 1, 1, v240);
                  sub_1D5D28540(v206, &qword_1EDF337F0, type metadata accessor for FormatOption);
                  v205 = v215;
LABEL_92:
                  *v205 = v134;
                  v205[1] = v158;
                  swift_storeEnumTagMultiPayload();
                  sub_1D5D285FC();
                  swift_allocError();
                  sub_1D5D287F4(v205, v207, type metadata accessor for FormatLayoutError);
                  swift_willThrow();
                  sub_1D5D28B04(v205, type metadata accessor for FormatLayoutError);
                  (*(v211 + 8))(v236, v213);

                  swift_deallocUninitializedObject();
LABEL_93:
                  sub_1D60B2A74(&v254);
                  goto LABEL_94;
                }

                swift_endAccess();
                v157 = v227;
                sub_1D5D25108(v227);
              }

              (*v238)(v157, 0, 1, v240);

              v163 = v225;
              sub_1D5D247E0(v157, v225);

              v164 = v158;
              v165 = v249;
              sub_1D6B744A8(v249, v253);

              v134 = sub_1D6B7DB60(v253[0], v247, v164, v245, v165);
              v159 = v166;
              sub_1D5D28B04(v163, type metadata accessor for FormatOption);

              v147 = v251;
              goto LABEL_49;
            }

            v261 = v134;
            v262 = v248;
            v263 = v245;
            v264 = v241;
            v265 = v242;
            v266 = v243;
            v267 = v103 & 0xFFF;
            v134 = sub_1D688E6FC(v133, 0);
            v159 = v160;
          }

          else
          {
            v159 = v248;
          }

          v115 = v252;
LABEL_49:
          *(v147 + 16) = v134;
          *(v147 + 24) = v159;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v244 = sub_1D698CA54(0, *(v244 + 2) + 1, 1, v244);
          }

          v168 = *(v244 + 2);
          v167 = *(v244 + 3);
          if (v168 >= v167 >> 1)
          {
            v244 = sub_1D698CA54((v167 > 1), v168 + 1, 1, v244);
          }

          sub_1D60B2A74(&v254);
          v93 = v244;
          *(v244 + 2) = v168 + 1;
          v94 = &v93[24 * v168];
          goto LABEL_5;
        }

        if (v257 >> 14 != 1)
        {
          v268 = __PAIR128__(*(&v254 + 1), v283);
          v269 = __PAIR128__(*(&v255 + 1), v251);
          v270 = v256;
          v271 = v257 & 0x3FFF;
          sub_1D5E1DA6C(v283, *(&v254 + 1), v251, *(&v255 + 1), v256, *(&v256 + 1), v257);
          v134 = v247;
          sub_1D5E1DA6C(v247, v248, v245, v241, v242, v243, v103 & 0xFFFFCFFF);
          v133 = v249;
          v283 = sub_1D688E6FC(v249, 0);
          v100 = v135;
          goto LABEL_37;
        }

        v106 = *(v249 + v237);
        v107 = *(v106 + 16);
        swift_beginAccess();
        if (*(*(v107 + 16) + 16))
        {
          sub_1D60B2AC8(&v254, v253);

          sub_1D5B69D90(v283, v100);
          v108 = v234;
          if (v109)
          {
            swift_endAccess();
            v110 = v222;
            sub_1D5D25108(v222);
            v111 = v110;
            v112 = v221;
            sub_1D5D247E0(v111, v221);
            v113 = v112;
            v114 = v231;
            sub_1D5D247E0(v113, v231);
LABEL_35:
            (*v238)(v114, 0, 1, v240);

            v144 = v212;
            sub_1D5D247E0(v114, v212);

            v133 = v249;
            sub_1D6B744A8(v249, v253);

            v283 = sub_1D6B7DB60(v253[0], v283, v100, v251, v133);
            v100 = v145;
            sub_1D5D28B04(v144, type metadata accessor for FormatOption);

            goto LABEL_36;
          }
        }

        else
        {
          sub_1D60B2AC8(&v254, v253);

          v108 = v234;
        }

        swift_endAccess();
        swift_beginAccess();
        v141 = *(v106 + 24);
        v142 = v283;
        if (!*(v141 + 16) || (sub_1D5B69D90(v283, v100), (v143 & 1) == 0))
        {
          swift_endAccess();
          v200 = v231;
          (*v238)(v231, 1, 1, v240);
LABEL_88:
          sub_1D5D28540(v200, &qword_1EDF337F0, type metadata accessor for FormatOption);
          *v108 = v142;
          v108[1] = v100;
          swift_storeEnumTagMultiPayload();
          sub_1D5D285FC();
          swift_allocError();
          sub_1D5D287F4(v108, v201, type metadata accessor for FormatLayoutError);
          swift_willThrow();
          sub_1D5D28B04(v108, type metadata accessor for FormatLayoutError);
          (*(v211 + 8))(v236, v213);
          goto LABEL_93;
        }

        swift_endAccess();
        v114 = v231;
        sub_1D5D25108(v231);
        goto LABEL_35;
      }

      if (!(v257 >> 14))
      {
        sub_1D60B2AC8(&v254, v253);
        sub_1D5E1DA6C(v283, v100, v251, v101, v102, *(&v102 + 1), v105);
        v139 = v249;
LABEL_65:
        v134 = v247;
LABEL_66:
        v177 = swift_allocObject();
        v147 = v177;
        if (v103 >> 14)
        {
          if (v103 >> 14 == 1)
          {
            v251 = v177;
            v178 = *(v139 + v237);
            v179 = *(v178 + 16);
            swift_beginAccess();
            v180 = *(*(v179 + 16) + 16);
            v181 = v248;

            if (v180 && (sub_1D5B69D90(v134, v181), (v182 & 1) != 0))
            {
              swift_endAccess();
              v183 = v220;
              sub_1D5D25108(v220);
              v184 = v183;
              v185 = v219;
              sub_1D5D247E0(v184, v219);
              v186 = v185;
              v187 = v228;
              sub_1D5D247E0(v186, v228);
              v115 = v252;
              v158 = v181;
            }

            else
            {
              swift_endAccess();
              swift_beginAccess();
              v190 = *(v178 + 24);
              v115 = v252;
              v158 = v181;
              if (!*(v190 + 16) || (sub_1D5B69D90(v134, v181), (v191 & 1) == 0))
              {
                swift_endAccess();
                v204 = v228;
                (*v238)(v228, 1, 1, v240);
                sub_1D5D28540(v204, &qword_1EDF337F0, type metadata accessor for FormatOption);
                v205 = v216;
                goto LABEL_92;
              }

              swift_endAccess();
              v187 = v228;
              sub_1D5D25108(v228);
            }

            (*v238)(v187, 0, 1, v240);

            v192 = v226;
            sub_1D5D247E0(v187, v226);

            v193 = v158;
            v194 = v249;
            sub_1D6B744A8(v249, v253);

            v134 = sub_1D6B7DB60(v253[0], v247, v193, v245, v194);
            v188 = v195;
            sub_1D5D28B04(v192, type metadata accessor for FormatOption);

            v147 = v251;
            goto LABEL_78;
          }

          v272 = v134;
          v273 = v248;
          v274 = v245;
          v275 = v241;
          v276 = v242;
          v277 = v243;
          v278 = v103 & 0xFFF;
          v134 = sub_1D688E6FC(v139, 0);
          v188 = v189;
        }

        else
        {
          v188 = v248;
        }

        v115 = v252;
LABEL_78:
        *(v147 + 16) = v134;
        *(v147 + 24) = v188;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v115 = sub_1D698CA54(0, *(v115 + 2) + 1, 1, v115);
        }

        v197 = *(v115 + 2);
        v196 = *(v115 + 3);
        if (v197 >= v196 >> 1)
        {
          v115 = sub_1D698CA54((v196 > 1), v197 + 1, 1, v115);
        }

        sub_1D60B2A74(&v254);
        *(v115 + 2) = v197 + 1;
        v94 = &v115[24 * v197];
LABEL_5:
        *(v94 + 4) = v283;
        *(v94 + 5) = v100;
        *(v94 + 6) = v147;
        v95 = v246;
        v96 = v250;
        if (!v250)
        {
          goto LABEL_84;
        }

        goto LABEL_6;
      }

      if (v257 >> 14 != 1)
      {
        v279 = __PAIR128__(*(&v254 + 1), v283);
        v280 = __PAIR128__(*(&v255 + 1), v251);
        v281 = v256;
        v282 = v257 & 0x3FFF;
        sub_1D5E1DA6C(v283, *(&v254 + 1), v251, *(&v255 + 1), v256, *(&v256 + 1), v257);
        v134 = v247;
        sub_1D5E1DA6C(v247, v248, v245, v241, v242, v243, v103 & 0xFFFFCFFF);
        v139 = v249;
        v283 = sub_1D688E6FC(v249, 0);
        v100 = v140;
        goto LABEL_66;
      }

      v125 = *(v249 + v237);
      v126 = *(v125 + 16);
      swift_beginAccess();
      if (*(*(v126 + 16) + 16))
      {
        sub_1D60B2AC8(&v254, v253);

        sub_1D5B69D90(v283, v100);
        v108 = v235;
        if (v127)
        {
          swift_endAccess();
          v128 = v224;
          sub_1D5D25108(v224);
          v129 = v128;
          v130 = v223;
          sub_1D5D247E0(v129, v223);
          v131 = v130;
          v132 = v232;
          sub_1D5D247E0(v131, v232);
LABEL_64:
          (*v238)(v132, 0, 1, v240);

          v175 = v229;
          sub_1D5D247E0(v132, v229);

          v139 = v249;
          sub_1D6B744A8(v249, v253);

          v283 = sub_1D6B7DB60(v253[0], v283, v100, v251, v139);
          v100 = v176;
          sub_1D5D28B04(v175, type metadata accessor for FormatOption);

          goto LABEL_65;
        }
      }

      else
      {
        sub_1D60B2AC8(&v254, v253);

        v108 = v235;
      }

      swift_endAccess();
      swift_beginAccess();
      v173 = *(v125 + 24);
      v142 = v283;
      if (!*(v173 + 16) || (sub_1D5B69D90(v283, v100), (v174 & 1) == 0))
      {
        swift_endAccess();
        v200 = v232;
        (*v238)(v232, 1, 1, v240);
        goto LABEL_88;
      }

      swift_endAccess();
      v132 = v232;
      sub_1D5D25108(v232);
      goto LABEL_64;
    }

    if (!(v257 >> 14))
    {
      sub_1D60B2AC8(&v254, v253);
      sub_1D5E1DA6C(v283, v100, v251, v101, v102, *(&v102 + 1), v105);
      v115 = v252;
      v95 = v246;
      goto LABEL_58;
    }

    v115 = v252;
    if (v257 >> 14 != 1)
    {
      break;
    }

    v116 = *(v249 + v237);
    v117 = *(v116 + 16);
    swift_beginAccess();
    if (!*(*(v117 + 16) + 16))
    {
      sub_1D60B2AC8(&v254, v253);
      sub_1D60B2AC8(&v254, v253);

      v118 = v233;
LABEL_54:
      swift_endAccess();
      swift_beginAccess();
      v169 = *(v116 + 24);
      v170 = v283;
      if (!*(v169 + 16) || (sub_1D5B69D90(v283, v100), (v171 & 1) == 0))
      {
        swift_endAccess();
        v202 = v230;
        (*v238)(v230, 1, 1, v240);
        sub_1D5D28540(v202, &qword_1EDF337F0, type metadata accessor for FormatOption);
        *v118 = v170;
        v118[1] = v100;
        swift_storeEnumTagMultiPayload();
        sub_1D5D285FC();
        swift_allocError();
        sub_1D5D287F4(v118, v203, type metadata accessor for FormatLayoutError);
        swift_willThrow();
        sub_1D60B2A74(&v254);
        sub_1D5D28B04(v118, type metadata accessor for FormatLayoutError);
        (*(v211 + 8))(v236, v213);
        sub_1D60B2A74(&v254);
LABEL_94:

        goto LABEL_95;
      }

      swift_endAccess();
      v124 = v230;
      sub_1D5D25108(v230);
      goto LABEL_57;
    }

    sub_1D60B2AC8(&v254, v253);
    sub_1D60B2AC8(&v254, v253);

    sub_1D5B69D90(v283, v100);
    v118 = v233;
    if ((v119 & 1) == 0)
    {
      goto LABEL_54;
    }

    swift_endAccess();
    v120 = v210;
    sub_1D5D25108(v210);
    v121 = v120;
    v122 = v209;
    sub_1D5D247E0(v121, v209);
    v123 = v122;
    v124 = v230;
    sub_1D5D247E0(v123, v230);
LABEL_57:
    (*v238)(v124, 0, 1, v240);

    sub_1D5D247E0(v124, v214);
    v172 = v249;
    sub_1D6B744A8(v249, v253);
    v95 = v246;
    sub_1D6B7DB60(v253[0], v283, v100, v251, v172);
    v92 = 0;
    sub_1D5D28B04(v214, type metadata accessor for FormatOption);

    sub_1D60B2A74(&v254);
LABEL_58:
    sub_1D725845C();
    sub_1D60B2A74(&v254);

    v96 = v250;
    if (!v250)
    {
LABEL_84:
      v83 = v211;
      v198 = v244;
      goto LABEL_85;
    }

LABEL_6:
    v252 = v115;
    v91 = v96 - 1;
    v90 += 7;
  }

  v248 = v92;
  v136 = v283;
  *&v259[5] = __PAIR128__(*(&v254 + 1), v283);
  v137 = v251;
  *&v259[7] = __PAIR128__(*(&v255 + 1), v251);
  *&v259[9] = v256;
  v260 = v257 & 0x3FFF;
  sub_1D60B2AC8(&v254, v253);
  sub_1D5E1DA6C(v136, v100, v137, v101, v102, *(&v102 + 1), v105);
  v138 = v248;
  sub_1D688E6FC(v249, 0);
  v92 = v138;
  if (!v138)
  {
    sub_1D60B2A74(&v254);
    v95 = v246;
    v115 = v252;
    goto LABEL_58;
  }

  sub_1D60B2A74(&v254);
  (*(v211 + 8))(v236, v213);
  sub_1D60B2A74(&v254);

LABEL_95:

  return result;
}

void sub_1D6D53964(char *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v67 = a4;
  v8 = sub_1D72585BC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6D5003C(a1, a2, v12);
  if (v4)
  {
    return;
  }

  v66 = a1;
  v13 = *(a3 + 16);
  if (!v13)
  {
    v60 = MEMORY[0x1E69E7CC0];
    v17 = MEMORY[0x1E69E7CC0];
    v18 = v67;
LABEL_58:
    sub_1D6B7A1C0(v66, v17, v60, v18);

    (*(v9 + 8))(v12, v8);
    return;
  }

  v63 = v8;
  v64 = v12;
  v62 = v9;
  v75 = 0;
  v14 = (a3 + 32);
  v15 = v13 - 1;
  v76 = MEMORY[0x1E69E7CC0];
  v65 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v20 = v14[1];
    v78 = *v14;
    v79 = v20;
    v21 = v14[3];
    v80 = v14[2];
    v81 = v21;
    v22 = v14[5];
    v82 = v14[4];
    v83[0] = v22;
    *(v83 + 10) = *(v14 + 90);
    v23 = *(&v78 + 1);
    v107 = v78;
    v24 = v79;
    v25 = v80;
    v26 = WORD4(v83[1]);
    v27 = (WORD4(v83[1]) >> 12) & 3;
    v28 = v81;
    v73 = v15;
    if (v27)
    {
      break;
    }

    if (v81 >> 14)
    {
      if (v81 >> 14 == 1)
      {
        sub_1D60B2AC8(&v78, v77);
        v33 = v107;
        sub_1D5E1DA6C(v107, v23, v24, *(&v24 + 1), v25, *(&v25 + 1), v28);
        v34 = v75;
        sub_1D6F71E48(v66, v33, v23, v24);
      }

      else
      {
        v46 = v107;
        v83[2] = __PAIR128__(*(&v78 + 1), v107);
        v83[3] = v79;
        v83[4] = v80;
        v84 = v81 & 0x3FFF;
        sub_1D60B2AC8(&v78, v77);
        sub_1D5E1DA6C(v46, v23, v24, *(&v24 + 1), v25, *(&v25 + 1), v28);
        v34 = v75;
        sub_1D68901F8(v66, 0);
      }

      v16 = v34;
      v18 = v67;
      if (v34)
      {
        sub_1D60B2A74(&v78);
        (*(v62 + 8))(v64, v63);
        sub_1D60B2A74(&v78);

        goto LABEL_64;
      }

      sub_1D60B2A74(&v78);
      v17 = v76;
    }

    else
    {
      sub_1D60B2AC8(&v78, v77);
      sub_1D5E1DA6C(v107, v23, v24, *(&v24 + 1), v25, *(&v25 + 1), v28);
      v16 = v75;
      v17 = v76;
      v18 = v67;
    }

    sub_1D725845C();
    sub_1D60B2A74(&v78);

    v19 = v73;
    if (!v73)
    {
      goto LABEL_57;
    }

LABEL_6:
    v75 = v16;
    v76 = v17;
    v15 = v19 - 1;
    v14 += 7;
  }

  v74 = *(&v81 + 1);
  v71 = *(&v82 + 1);
  v72 = v82;
  v70 = *&v83[0];
  v29 = v81 >> 14;
  v68 = *(&v83[0] + 1);
  v69 = *&v83[1];
  if (v27 != 1)
  {
    if (v81 >> 14)
    {
      if (v29 == 1)
      {
        sub_1D5E1DA6C(v107, *(&v78 + 1), v79, *(&v79 + 1), v80, *(&v80 + 1), v81);
        v35 = v74;
        sub_1D5E1DA6C(v74, v72, v71, v70, v68, v69, v26 & 0xFFFFCFFF);
        v36 = v75;
        v37 = sub_1D6F71E48(v66, v107, v23, v24);
      }

      else
      {
        v103 = __PAIR128__(*(&v78 + 1), v107);
        v104 = v79;
        v105 = v80;
        v106 = v81 & 0x3FFF;
        sub_1D5E1DA6C(v107, *(&v78 + 1), v79, *(&v79 + 1), v80, *(&v80 + 1), v81);
        v35 = v74;
        sub_1D5E1DA6C(v74, v72, v71, v70, v68, v69, v26 & 0xFFFFCFFF);
        v36 = v75;
        v37 = sub_1D68901F8(v66, 0);
      }

      v16 = v36;
      if (v36)
      {
LABEL_60:
        (*(v62 + 8))(v64, v63);
        goto LABEL_63;
      }

      v23 = v38;
      v107 = v37;
    }

    else
    {
      sub_1D60B2AC8(&v78, v77);
      sub_1D5E1DA6C(v107, v23, v24, *(&v24 + 1), v25, *(&v25 + 1), v28);
      v35 = v74;
      v16 = v75;
    }

    v47 = swift_allocObject();
    v48 = v72;
    if (v26 >> 14)
    {
      v17 = v76;
      if (v26 >> 14 == 1)
      {
        v49 = sub_1D6F71E48(v66, v35, v72, v71);
        v18 = v67;
        if (v16)
        {
          goto LABEL_62;
        }

        v35 = v49;
        v48 = v50;
LABEL_50:
        *(v47 + 16) = v35;
        *(v47 + 24) = v48;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v65 = sub_1D698CA54(0, *(v65 + 2) + 1, 1, v65);
        }

        v57 = *(v65 + 2);
        v56 = *(v65 + 3);
        if (v57 >= v56 >> 1)
        {
          v65 = sub_1D698CA54((v56 > 1), v57 + 1, 1, v65);
        }

        sub_1D60B2A74(&v78);
        v58 = v65;
        *(v65 + 2) = v57 + 1;
        v59 = &v58[24 * v57];
        *(v59 + 4) = v107;
        *(v59 + 5) = v23;
        *(v59 + 6) = v47;
        v19 = v73;
        if (!v73)
        {
LABEL_57:
          v9 = v62;
          v8 = v63;
          v12 = v64;
          v60 = v65;
          goto LABEL_58;
        }

        goto LABEL_6;
      }

      v96 = v35;
      v97 = v72;
      v98 = v71;
      v99 = v70;
      v100 = v68;
      v101 = v69;
      v102 = v26 & 0xFFF;
      v54 = sub_1D68901F8(v66, 0);
      if (v16)
      {
        goto LABEL_62;
      }

      v35 = v54;
      v48 = v55;
    }

    else
    {

      v17 = v76;
    }

    v18 = v67;
    goto LABEL_50;
  }

  if (v81 >> 14)
  {
    if (v29 == 1)
    {
      sub_1D5E1DA6C(v107, *(&v78 + 1), v79, *(&v79 + 1), v80, *(&v80 + 1), v81);
      sub_1D5E1DA6C(v74, v72, v71, v70, v68, v69, v26 & 0xFFFFCFFF);
      v30 = v75;
      v31 = sub_1D6F71E48(v66, v107, v23, v24);
    }

    else
    {
      v92 = __PAIR128__(*(&v78 + 1), v107);
      v93 = v79;
      v94 = v80;
      v95 = v81 & 0x3FFF;
      sub_1D5E1DA6C(v107, *(&v78 + 1), v79, *(&v79 + 1), v80, *(&v80 + 1), v81);
      sub_1D5E1DA6C(v74, v72, v71, v70, v68, v69, v26 & 0xFFFFCFFF);
      v30 = v75;
      v31 = sub_1D68901F8(v66, 0);
    }

    v16 = v30;
    if (v30)
    {
      goto LABEL_60;
    }

    v40 = v31;
    v23 = v32;
  }

  else
  {
    sub_1D60B2AC8(&v78, v77);
    v39 = v28;
    v40 = v107;
    sub_1D5E1DA6C(v107, v23, v24, *(&v24 + 1), v25, *(&v25 + 1), v39);
    v16 = v75;
  }

  v17 = v76;
  v41 = swift_allocObject();
  v42 = v72;
  if (!(v26 >> 14))
  {

    goto LABEL_41;
  }

  if (v26 >> 14 == 1)
  {
    v43 = v16;
    v44 = sub_1D6F71E48(v66, v74, v72, v71);
  }

  else
  {
    v85 = v74;
    v86 = v72;
    v87 = v71;
    v88 = v70;
    v89 = v68;
    v90 = v69;
    v91 = v26 & 0xFFF;
    v43 = v16;
    v44 = sub_1D68901F8(v66, 0);
  }

  v74 = v44;
  v16 = v43;
  if (!v43)
  {
    v42 = v45;
LABEL_41:
    *(v41 + 16) = v74;
    *(v41 + 24) = v42;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v17 = sub_1D698CA54(0, *(v17 + 2) + 1, 1, v17);
    }

    v52 = *(v17 + 2);
    v51 = *(v17 + 3);
    if (v52 >= v51 >> 1)
    {
      v17 = sub_1D698CA54((v51 > 1), v52 + 1, 1, v17);
    }

    sub_1D60B2A74(&v78);
    *(v17 + 2) = v52 + 1;
    v53 = &v17[24 * v52];
    *(v53 + 4) = v40;
    *(v53 + 5) = v23;
    *(v53 + 6) = v41;
    v18 = v67;
    v19 = v73;
    if (!v73)
    {
      goto LABEL_57;
    }

    goto LABEL_6;
  }

LABEL_62:

  (*(v62 + 8))(v64, v63);
  swift_deallocUninitializedObject();
LABEL_63:
  sub_1D60B2A74(&v78);

LABEL_64:
}

double sub_1D6D5422C@<D0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v185 = a3;
  v186 = a2;
  v182 = a4;
  v165 = type metadata accessor for FormatLayoutError(0);
  MEMORY[0x1EEE9AC00](v165, v5);
  v161 = (&v154 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v7, v8);
  v164 = (&v154 - v9);
  MEMORY[0x1EEE9AC00](v10, v11);
  v160 = (&v154 - v12);
  MEMORY[0x1EEE9AC00](v13, v14);
  v163 = (&v154 - v15);
  MEMORY[0x1EEE9AC00](v16, v17);
  v162 = (&v154 - v18);
  sub_1D5B54CB8(0, &qword_1EDF337F0, type metadata accessor for FormatOption);
  MEMORY[0x1EEE9AC00](v19 - 8, v20);
  v168 = &v154 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22, v23);
  v171 = &v154 - v24;
  MEMORY[0x1EEE9AC00](v25, v26);
  v167 = &v154 - v27;
  MEMORY[0x1EEE9AC00](v28, v29);
  v170 = &v154 - v30;
  MEMORY[0x1EEE9AC00](v31, v32);
  v169 = &v154 - v33;
  v174 = type metadata accessor for FormatOption(0);
  v184 = *(v174 - 8);
  MEMORY[0x1EEE9AC00](v174, v34);
  v166 = &v154 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36, v37);
  v39 = &v154 - v38;
  MEMORY[0x1EEE9AC00](v40, v41);
  v43 = &v154 - v42;
  MEMORY[0x1EEE9AC00](v44, v45);
  v47 = &v154 - v46;
  MEMORY[0x1EEE9AC00](v48, v49);
  v51 = &v154 - v50;
  v52 = sub_1D72585BC();
  v53 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52, v54);
  v56 = &v154 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = v215;
  result = sub_1D6D505B4(a1, v186, v56);
  if (v57)
  {
    return result;
  }

  v157 = v43;
  v158 = v47;
  v155 = v51;
  v156 = v52;
  v159 = v39;
  v181 = a1;
  v172 = v56;
  v59 = *(v185 + 16);
  if (!v59)
  {
    v107 = MEMORY[0x1E69E7CC0];
    v178 = MEMORY[0x1E69E7CC0];
    v64 = v182;
LABEL_66:
    v144 = v172;
    sub_1D6B7A750(v181, v178, v107, v64);

    (*(v53 + 8))(v144, v156);
    return result;
  }

  v215 = 0;
  v154 = v53;
  v60 = (v185 + 32);
  v173 = (v184 + 48);
  v61 = v59 - 1;
  v178 = MEMORY[0x1E69E7CC0];
  v186 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v66 = v60[1];
    v188 = *v60;
    v189 = v66;
    v67 = v60[3];
    v190 = v60[2];
    v191 = v67;
    v68 = v60[5];
    v192 = v60[4];
    v193[0] = v68;
    *(v193 + 10) = *(v60 + 90);
    v69 = *(&v188 + 1);
    v70 = v188;
    v71 = *(&v189 + 1);
    v184 = v61;
    v185 = v189;
    v72 = v190;
    v73 = WORD4(v193[1]);
    v74 = (WORD4(v193[1]) >> 12) & 3;
    v75 = v191;
    if (v74)
    {
      break;
    }

    if (v191 >> 14)
    {
      if (v191 >> 14 == 1)
      {
        v83 = off_1F513B088[0];
        sub_1D60B2AC8(&v188, v187);
        sub_1D60B2AC8(&v188, v187);
        type metadata accessor for FormatDecorationContext(0);

        v84 = v169;
        v85 = v181;
        v86 = v83(v70, v69, v169);
        if ((*v173)(v84, 1, v174, v86) == 1)
        {
          sub_1D5D28540(v84, &qword_1EDF337F0, type metadata accessor for FormatOption);
          v87 = v162;
          *v162 = v70;
          *(v87 + 8) = v69;
          swift_storeEnumTagMultiPayload();
          sub_1D5D285FC();
          swift_allocError();
          sub_1D5D287F4(v87, v146, type metadata accessor for FormatLayoutError);
          swift_willThrow();
          sub_1D60B2A74(&v188);
          v147 = type metadata accessor for FormatLayoutError;
LABEL_81:
          sub_1D5D28B04(v87, v147);
          goto LABEL_82;
        }

        v87 = v155;
        sub_1D5D247E0(v84, v155);
        v88 = v215;
        sub_1D6B766A8(v85, v187);
        if (v88)
        {
          sub_1D60B2A74(&v188);
          v147 = type metadata accessor for FormatOption;
          goto LABEL_81;
        }

        sub_1D6B8273C(v187[0], v70, v69, v185, v85);
        v81 = 0;
        sub_1D5D28B04(v87, type metadata accessor for FormatOption);
      }

      else
      {
        v193[2] = v188;
        v112 = *(&v188 + 1);
        v113 = v185;
        v193[3] = __PAIR128__(*(&v189 + 1), v185);
        v193[4] = v190;
        v194 = v191 & 0x3FFF;
        sub_1D60B2AC8(&v188, v187);
        sub_1D5E1DA6C(v70, v112, v113, v71, v72, *(&v72 + 1), v75);
        v114 = v215;
        sub_1D6891050(v181, 0);
        v81 = v114;
        if (v114)
        {
          sub_1D60B2A74(&v188);
LABEL_82:
          (*(v154 + 8))(v172, v156);
          sub_1D60B2A74(&v188);

          goto LABEL_86;
        }
      }

      sub_1D60B2A74(&v188);
    }

    else
    {
      sub_1D60B2AC8(&v188, v187);
      sub_1D5E1DA6C(v70, v69, v185, v71, v72, *(&v72 + 1), v75);
      v81 = v215;
    }

    sub_1D725845C();
    sub_1D60B2A74(&v188);

    v64 = v182;
    v107 = v186;
    v65 = v184;
    if (!v184)
    {
LABEL_65:
      v53 = v154;
      goto LABEL_66;
    }

LABEL_6:
    v215 = v81;
    v186 = v107;
    v61 = v65 - 1;
    v60 += 7;
  }

  v183 = *(&v191 + 1);
  v179 = *(&v192 + 1);
  v180 = v192;
  v176 = v193[0];
  v177 = *&v193[1];
  if (v74 == 1)
  {
    if (!(v191 >> 14))
    {
      sub_1D60B2AC8(&v188, v187);
      sub_1D5E1DA6C(v70, v69, v185, v71, v72, *(&v72 + 1), v75);
      v81 = v215;
      goto LABEL_25;
    }

    if (v191 >> 14 != 1)
    {
      v201 = v188;
      v202 = __PAIR128__(*(&v189 + 1), v185);
      v203 = v190;
      v204 = v191 & 0x3FFF;
      sub_1D5E1DA6C(v188, *(&v188 + 1), v185, *(&v189 + 1), v190, *(&v190 + 1), v191);
      v96 = v183;
      v95 = v180;
      sub_1D5E1DA6C(v183, v180, v179, v176, *(&v176 + 1), v177, v73 & 0xFFFFCFFF);
      v97 = v215;
      v98 = sub_1D6891050(v181, 0);
      v81 = v97;
      if (v97)
      {
        goto LABEL_75;
      }

      v70 = v98;
      v69 = v99;
LABEL_29:
      v185 = swift_allocObject();
      if (v73 >> 14)
      {
        if (v73 >> 14 == 1)
        {
          v180 = v70;
          v175 = v69;
          v215 = v81;
          v100 = v95;
          v101 = off_1F513B088[0];
          type metadata accessor for FormatDecorationContext(0);

          v102 = v96;
          v103 = v167;
          v104 = v181;
          v105 = v101(v102, v95, v167);
          v106 = (*v173)(v103, 1, v174, v105);
          v107 = v186;
          if (v106 == 1)
          {
            sub_1D5D28540(v103, &qword_1EDF337F0, type metadata accessor for FormatOption);
            v150 = v160;
            *v160 = v183;
            *(v150 + 8) = v100;
            swift_storeEnumTagMultiPayload();
            sub_1D5D285FC();
            swift_allocError();
            sub_1D5D287F4(v150, v151, type metadata accessor for FormatLayoutError);
            swift_willThrow();
            sub_1D5D28B04(v150, type metadata accessor for FormatLayoutError);
            goto LABEL_84;
          }

          v108 = v157;
          sub_1D5D247E0(v103, v157);

          v109 = v215;
          sub_1D6B766A8(v104, v187);
          v81 = v109;
          if (v109)
          {
            goto LABEL_83;
          }

          v110 = sub_1D6B8273C(v187[0], v183, v100, v179, v104);
          v69 = v175;
          v96 = v110;
          v95 = v111;
          sub_1D5D28B04(v157, type metadata accessor for FormatOption);

          v70 = v180;
          goto LABEL_51;
        }

        v195 = v96;
        v196 = v95;
        v197 = v179;
        v198 = v176;
        v199 = v177;
        v200 = v73 & 0xFFF;
        v132 = sub_1D6891050(v181, 0);
        if (v81)
        {
          goto LABEL_84;
        }

        v96 = v132;
        v95 = v133;
      }

      else
      {
      }

      v107 = v186;
LABEL_51:
      v134 = v185;
      *(v185 + 16) = v96;
      *(v134 + 24) = v95;
      v135 = v134;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v178 = sub_1D698CA54(0, *(v178 + 2) + 1, 1, v178);
      }

      v137 = *(v178 + 2);
      v136 = *(v178 + 3);
      if (v137 >= v136 >> 1)
      {
        v178 = sub_1D698CA54((v136 > 1), v137 + 1, 1, v178);
      }

      sub_1D60B2A74(&v188);
      v62 = v178;
      *(v178 + 2) = v137 + 1;
      v63 = &v62[24 * v137];
      *(v63 + 4) = v70;
      *(v63 + 5) = v69;
      *(v63 + 6) = v135;
      goto LABEL_5;
    }

    v76 = off_1F513B088[0];
    sub_1D60B2AC8(&v188, v187);
    type metadata accessor for FormatDecorationContext(0);

    v77 = v170;
    v78 = v181;
    v79 = v76(v70, v69, v170);
    if ((*v173)(v77, 1, v174, v79) != 1)
    {

      sub_1D5D247E0(v77, v158);

      v80 = v215;
      sub_1D6B766A8(v78, v187);
      v81 = v80;
      if (!v80)
      {

        v70 = sub_1D6B8273C(v187[0], v70, v69, v185, v78);
        v69 = v82;
        sub_1D5D28B04(v158, type metadata accessor for FormatOption);

LABEL_25:
        v95 = v180;
        v96 = v183;
        goto LABEL_29;
      }

      v145 = v158;
      goto LABEL_69;
    }

    sub_1D5D28540(v77, &qword_1EDF337F0, type metadata accessor for FormatOption);
    v148 = v163;
LABEL_74:
    *v148 = v70;
    v148[1] = v69;
    swift_storeEnumTagMultiPayload();
    sub_1D5D285FC();
    swift_allocError();
    sub_1D5D287F4(v148, v149, type metadata accessor for FormatLayoutError);
    swift_willThrow();
    sub_1D5D28B04(v148, type metadata accessor for FormatLayoutError);
    goto LABEL_75;
  }

  if (!(v191 >> 14))
  {
    sub_1D60B2AC8(&v188, v187);
    v175 = v69;
    sub_1D5E1DA6C(v70, v69, v185, v71, v72, *(&v72 + 1), v75);
    v81 = v215;
LABEL_39:
    v115 = v180;
    v116 = v183;
    goto LABEL_42;
  }

  if (v191 >> 14 == 1)
  {
    v89 = off_1F513B088[0];
    sub_1D60B2AC8(&v188, v187);
    type metadata accessor for FormatDecorationContext(0);

    v90 = v171;
    v91 = v181;
    v92 = v89(v70, v69, v171);
    if ((*v173)(v90, 1, v174, v92) == 1)
    {
      sub_1D5D28540(v90, &qword_1EDF337F0, type metadata accessor for FormatOption);
      v148 = v164;
      goto LABEL_74;
    }

    sub_1D5D247E0(v90, v159);

    v93 = v215;
    sub_1D6B766A8(v91, v187);
    v81 = v93;
    if (v93)
    {
      v145 = v159;
LABEL_69:
      sub_1D5D28B04(v145, type metadata accessor for FormatOption);

LABEL_75:
      (*(v154 + 8))(v172, v156);
      goto LABEL_85;
    }

    v70 = sub_1D6B8273C(v187[0], v70, v69, v185, v91);
    v175 = v94;
    sub_1D5D28B04(v159, type metadata accessor for FormatOption);

    goto LABEL_39;
  }

  v211 = v188;
  v212 = __PAIR128__(*(&v189 + 1), v185);
  v213 = v190;
  v214 = v191 & 0x3FFF;
  sub_1D5E1DA6C(v188, *(&v188 + 1), v185, *(&v189 + 1), v190, *(&v190 + 1), v191);
  v116 = v183;
  v115 = v180;
  sub_1D5E1DA6C(v183, v180, v179, v176, *(&v176 + 1), v177, v73 & 0xFFFFCFFF);
  v117 = v215;
  v118 = sub_1D6891050(v181, 0);
  v175 = v119;
  v81 = v117;
  if (v117)
  {
    goto LABEL_75;
  }

  v70 = v118;
LABEL_42:
  v120 = swift_allocObject();
  v121 = v120;
  if (!(v73 >> 14))
  {

LABEL_58:
    v107 = v186;
    goto LABEL_59;
  }

  if (v73 >> 14 != 1)
  {
    v205 = v116;
    v206 = v115;
    v207 = v179;
    v208 = v176;
    v209 = v177;
    v210 = v73 & 0xFFF;
    v138 = sub_1D6891050(v181, 0);
    if (v81)
    {
      goto LABEL_84;
    }

    v116 = v138;
    v115 = v139;
    goto LABEL_58;
  }

  v215 = v120;
  v180 = v70;
  v122 = v81;
  v123 = v115;
  v124 = off_1F513B088[0];
  type metadata accessor for FormatDecorationContext(0);

  v125 = v116;
  v126 = v168;
  v127 = v181;
  v128 = v124(v125, v115, v168);
  if ((*v173)(v126, 1, v174, v128) == 1)
  {
    sub_1D5D28540(v126, &qword_1EDF337F0, type metadata accessor for FormatOption);
    v152 = v161;
    *v161 = v183;
    *(v152 + 8) = v123;
    swift_storeEnumTagMultiPayload();
    sub_1D5D285FC();
    swift_allocError();
    sub_1D5D287F4(v152, v153, type metadata accessor for FormatLayoutError);
    swift_willThrow();
    sub_1D5D28B04(v152, type metadata accessor for FormatLayoutError);
    goto LABEL_84;
  }

  v108 = v166;
  sub_1D5D247E0(v126, v166);

  v129 = v122;
  sub_1D6B766A8(v127, v187);
  v81 = v122;
  v107 = v186;
  if (!v129)
  {

    v116 = sub_1D6B8273C(v187[0], v183, v123, v179, v127);
    v131 = v130;
    sub_1D5D28B04(v108, type metadata accessor for FormatOption);

    v70 = v180;
    v115 = v131;
    v121 = v215;
LABEL_59:
    *(v121 + 16) = v116;
    *(v121 + 24) = v115;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v107 = sub_1D698CA54(0, *(v107 + 2) + 1, 1, v107);
    }

    v140 = v175;
    v142 = *(v107 + 2);
    v141 = *(v107 + 3);
    if (v142 >= v141 >> 1)
    {
      v107 = sub_1D698CA54((v141 > 1), v142 + 1, 1, v107);
    }

    sub_1D60B2A74(&v188);
    *(v107 + 2) = v142 + 1;
    v143 = &v107[24 * v142];
    *(v143 + 4) = v70;
    *(v143 + 5) = v140;
    *(v143 + 6) = v121;
LABEL_5:
    v64 = v182;
    v65 = v184;
    if (!v184)
    {
      goto LABEL_65;
    }

    goto LABEL_6;
  }

LABEL_83:
  sub_1D5D28B04(v108, type metadata accessor for FormatOption);

LABEL_84:
  (*(v154 + 8))(v172, v156);

  swift_deallocUninitializedObject();
LABEL_85:
  sub_1D60B2A74(&v188);

LABEL_86:

  return result;
}

uint64_t sub_1D6D55650@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>, double a4@<D0>)
{
  v119 = a1;
  v117 = a3;
  sub_1D5B54CB8(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v112 = &v111 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v114 = &v111 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v116 = &v111 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v113 = &v111 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v115 = &v111 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v111 - v23;
  MEMORY[0x1EEE9AC00](v25, v26);
  v28 = &v111 - v27;
  MEMORY[0x1EEE9AC00](v29, v30);
  v32 = &v111 - v31;
  MEMORY[0x1EEE9AC00](v33, v34);
  v36 = &v111 - v35;
  sub_1D5B54CB8(0, &qword_1EDF3BF60, MEMORY[0x1E69D7398]);
  MEMORY[0x1EEE9AC00](v37 - 8, v38);
  v40 = &v111 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v41, v42);
  MEMORY[0x1EEE9AC00](v43, v44);
  v46 = &v111 - v45;
  MEMORY[0x1EEE9AC00](v47, v48);
  MEMORY[0x1EEE9AC00](v49, v50);
  v52 = &v111 - v51;
  MEMORY[0x1EEE9AC00](v53, v54);
  v58 = &v111 - v55;
  if (a4 >= 3.0)
  {
    sub_1D5D27018(a2, &v111 - v55, &qword_1EDF3BF60, MEMORY[0x1E69D7398]);
    v60 = sub_1D725A3AC();
    v61 = *(v60 - 8);
    if ((*(v61 + 48))(v58, 1, v60) != 1)
    {
      sub_1D5D27018(v58, v52, &qword_1EDF3BF60, MEMORY[0x1E69D7398]);
      v67 = (*(v61 + 88))(v52, v60);
      if (v67 == *MEMORY[0x1E69D7380])
      {
        v68 = v118;
        v69 = v118[5];
        if ((~v69 & 0xF000000000000007) != 0)
        {
          v85 = v120;
          sub_1D6D4FCF8(v119, v69, v36);
          if (!v85)
          {
            v86 = sub_1D72585BC();
            v87 = *(v86 - 8);
            (*(v87 + 56))(v36, 0, 1, v86);
            (*(v87 + 32))(v117, v36, v86);
          }
        }

        else
        {
          v70 = sub_1D72585BC();
          v71 = *(v70 - 8);
          (*(v71 + 56))(v36, 1, 1, v70);
          sub_1D6D4FCF8(v119, v68[2], v117);
          if ((*(v71 + 48))(v36, 1, v70) != 1)
          {
            sub_1D5D28540(v36, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
          }
        }

        return sub_1D5D28540(v58, &qword_1EDF3BF60, MEMORY[0x1E69D7398]);
      }

      if (v67 == *MEMORY[0x1E69D7388])
      {
        v81 = v118;
        v82 = v118[11];
        if ((~v82 & 0xF000000000000007) != 0)
        {
          v101 = v120;
          sub_1D6D4FCF8(v119, v82, v32);
          if (!v101)
          {
            v102 = sub_1D72585BC();
            v103 = *(v102 - 8);
            (*(v103 + 56))(v32, 0, 1, v102);
            (*(v103 + 32))(v117, v32, v102);
          }
        }

        else
        {
          v83 = sub_1D72585BC();
          v84 = *(v83 - 8);
          (*(v84 + 56))(v32, 1, 1, v83);
          sub_1D6D4FCF8(v119, v81[2], v117);
          if ((*(v84 + 48))(v32, 1, v83) != 1)
          {
            sub_1D5D28540(v32, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
          }
        }

        return sub_1D5D28540(v58, &qword_1EDF3BF60, MEMORY[0x1E69D7398]);
      }

      if (v67 == *MEMORY[0x1E69D7390])
      {
        v94 = v118;
        v95 = v118[14];
        if ((~v95 & 0xF000000000000007) != 0)
        {
          v105 = v120;
          sub_1D6D4FCF8(v119, v95, v28);
          if (!v105)
          {
            v106 = sub_1D72585BC();
            v107 = *(v106 - 8);
            (*(v107 + 56))(v28, 0, 1, v106);
            (*(v107 + 32))(v117, v28, v106);
          }
        }

        else
        {
          v96 = sub_1D72585BC();
          v97 = *(v96 - 8);
          (*(v97 + 56))(v28, 1, 1, v96);
          sub_1D6D4FCF8(v119, v94[2], v117);
          if ((*(v97 + 48))(v28, 1, v96) != 1)
          {
            sub_1D5D28540(v28, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
          }
        }

        return sub_1D5D28540(v58, &qword_1EDF3BF60, MEMORY[0x1E69D7398]);
      }

      (*(v61 + 8))(v52, v60);
    }

    v62 = v118[2];
    goto LABEL_9;
  }

  if (a4 >= 2.0)
  {
    v63 = a2;
    v64 = v57;
    sub_1D5D27018(v63, v57, &qword_1EDF3BF60, MEMORY[0x1E69D7398]);
    v65 = sub_1D725A3AC();
    v66 = *(v65 - 8);
    if ((*(v66 + 48))(v64, 1, v65) != 1)
    {
      v58 = v64;
      sub_1D5D27018(v64, v46, &qword_1EDF3BF60, MEMORY[0x1E69D7398]);
      v75 = (*(v66 + 88))(v46, v65);
      v76 = v118;
      if (v75 == *MEMORY[0x1E69D7380])
      {
        v77 = v118[4];
        if ((~v77 & 0xF000000000000007) != 0)
        {
          v98 = v120;
          sub_1D6D4FCF8(v119, v77, v24);
          if (!v98)
          {
            v99 = sub_1D72585BC();
            v100 = *(v99 - 8);
            (*(v100 + 56))(v24, 0, 1, v99);
            (*(v100 + 32))(v117, v24, v99);
          }

          return sub_1D5D28540(v58, &qword_1EDF3BF60, MEMORY[0x1E69D7398]);
        }

        v78 = sub_1D72585BC();
        v79 = *(v78 - 8);
        (*(v79 + 56))(v24, 1, 1, v78);
        v80 = v76[1];
        goto LABEL_57;
      }

      if (v75 == *MEMORY[0x1E69D7388])
      {
        v90 = v118[10];
        if ((~v90 & 0xF000000000000007) != 0)
        {
          v104 = v115;
          goto LABEL_64;
        }

        v91 = sub_1D72585BC();
        v92 = *(v91 - 8);
        v93 = v115;
        (*(v92 + 56))(v115, 1, 1, v91);
      }

      else
      {
        if (v75 != *MEMORY[0x1E69D7390])
        {
          (*(v66 + 8))(v46, v65);
          v62 = v76[1];
          goto LABEL_9;
        }

        v90 = v118[13];
        if ((~v90 & 0xF000000000000007) != 0)
        {
          v104 = v113;
          goto LABEL_64;
        }

        v91 = sub_1D72585BC();
        v92 = *(v91 - 8);
        v93 = v113;
        (*(v92 + 56))(v113, 1, 1, v91);
      }

      sub_1D6D4FCF8(v119, v76[1], v117);
      if ((*(v92 + 48))(v93, 1, v91) != 1)
      {
        sub_1D5D28540(v93, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
      }

      return sub_1D5D28540(v58, &qword_1EDF3BF60, MEMORY[0x1E69D7398]);
    }

    v58 = v64;
    v62 = v118[1];
  }

  else
  {
    if (a4 < 1.0)
    {
      return sub_1D6D55650(v119, a2, v117, 3.0);
    }

    v72 = v56;
    sub_1D5D27018(a2, v56, &qword_1EDF3BF60, MEMORY[0x1E69D7398]);
    v73 = sub_1D725A3AC();
    v74 = *(v73 - 8);
    if ((*(v74 + 48))(v72, 1, v73) == 1)
    {
      sub_1D6D4FCF8(v119, *v118, v117);
      v58 = v72;
      return sub_1D5D28540(v58, &qword_1EDF3BF60, MEMORY[0x1E69D7398]);
    }

    v58 = v72;
    sub_1D5D27018(v72, v40, &qword_1EDF3BF60, MEMORY[0x1E69D7398]);
    v88 = (*(v74 + 88))(v40, v73);
    v89 = v118;
    if (v88 == *MEMORY[0x1E69D7380])
    {
      v90 = v118[3];
      if ((~v90 & 0xF000000000000007) == 0)
      {
        v78 = sub_1D72585BC();
        v79 = *(v78 - 8);
        v24 = v116;
        (*(v79 + 56))(v116, 1, 1, v78);
LABEL_56:
        v80 = *v89;
LABEL_57:
        sub_1D6D4FCF8(v119, v80, v117);
        if ((*(v79 + 48))(v24, 1, v78) != 1)
        {
          sub_1D5D28540(v24, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
        }

        return sub_1D5D28540(v58, &qword_1EDF3BF60, MEMORY[0x1E69D7398]);
      }

      v104 = v116;
      goto LABEL_64;
    }

    if (v88 == *MEMORY[0x1E69D7388])
    {
      v90 = v118[9];
      if ((~v90 & 0xF000000000000007) == 0)
      {
        v78 = sub_1D72585BC();
        v79 = *(v78 - 8);
        v24 = v114;
        (*(v79 + 56))(v114, 1, 1, v78);
        goto LABEL_56;
      }

      v104 = v114;
LABEL_64:
      v108 = v120;
      sub_1D6D4FCF8(v119, v90, v104);
      if (!v108)
      {
        v109 = sub_1D72585BC();
        v110 = *(v109 - 8);
        (*(v110 + 56))(v104, 0, 1, v109);
        (*(v110 + 32))(v117, v104, v109);
      }

      return sub_1D5D28540(v58, &qword_1EDF3BF60, MEMORY[0x1E69D7398]);
    }

    if (v88 == *MEMORY[0x1E69D7390])
    {
      v90 = v118[12];
      if ((~v90 & 0xF000000000000007) == 0)
      {
        v78 = sub_1D72585BC();
        v79 = *(v78 - 8);
        v24 = v112;
        (*(v79 + 56))(v112, 1, 1, v78);
        goto LABEL_56;
      }

      v104 = v112;
      goto LABEL_64;
    }

    (*(v74 + 8))(v40, v73);
    v62 = *v89;
  }

LABEL_9:
  sub_1D6D4FCF8(v119, v62, v117);
  return sub_1D5D28540(v58, &qword_1EDF3BF60, MEMORY[0x1E69D7398]);
}

uint64_t sub_1D6D566B8@<X0>(void (*a1)(uint64_t, uint64_t, uint64_t, uint64_t, void, __n128)@<X0>, uint64_t a2@<X1>, char *a3@<X8>, double a4@<D0>)
{
  v124 = a1;
  v122 = a3;
  sub_1D5B54CB8(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v117 = &v116 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v119 = &v116 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v121 = &v116 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v118 = &v116 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v120 = &v116 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v116 - v23;
  MEMORY[0x1EEE9AC00](v25, v26);
  v28 = &v116 - v27;
  MEMORY[0x1EEE9AC00](v29, v30);
  v32 = &v116 - v31;
  MEMORY[0x1EEE9AC00](v33, v34);
  v36 = &v116 - v35;
  sub_1D5B54CB8(0, &qword_1EDF3BF60, MEMORY[0x1E69D7398]);
  MEMORY[0x1EEE9AC00](v37 - 8, v38);
  v40 = &v116 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v41, v42);
  MEMORY[0x1EEE9AC00](v43, v44);
  v46 = &v116 - v45;
  MEMORY[0x1EEE9AC00](v47, v48);
  MEMORY[0x1EEE9AC00](v49, v50);
  v52 = &v116 - v51;
  MEMORY[0x1EEE9AC00](v53, v54);
  v58 = &v116 - v55;
  if (a4 >= 3.0)
  {
    sub_1D5D27018(a2, &v116 - v55, &qword_1EDF3BF60, MEMORY[0x1E69D7398]);
    v60 = sub_1D725A3AC();
    v61 = *(v60 - 8);
    if ((*(v61 + 48))(v58, 1, v60) != 1)
    {
      sub_1D5D27018(v58, v52, &qword_1EDF3BF60, MEMORY[0x1E69D7398]);
      v67 = (*(v61 + 88))(v52, v60);
      if (v67 == *MEMORY[0x1E69D7380])
      {
        v68 = v123;
        v69 = v123[5];
        if ((~v69 & 0xF000000000000007) != 0)
        {
          v87 = v125;
          sub_1D6D505B4(v124, v69, v36);
          if (!v87)
          {
            v88 = sub_1D72585BC();
            v89 = *(v88 - 8);
            (*(v89 + 56))(v36, 0, 1, v88);
            (*(v89 + 32))(v122, v36, v88);
          }
        }

        else
        {
          v70 = sub_1D72585BC();
          v71 = *(v70 - 8);
          (*(v71 + 56))(v36, 1, 1, v70);
          v72 = sub_1D6D505B4(v124, v68[2], v122);
          if ((*(v71 + 48))(v36, 1, v70, v72) != 1)
          {
            sub_1D5D28540(v36, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
          }
        }

        return sub_1D5D28540(v58, &qword_1EDF3BF60, MEMORY[0x1E69D7398]);
      }

      if (v67 == *MEMORY[0x1E69D7388])
      {
        v82 = v123;
        v83 = v123[11];
        if ((~v83 & 0xF000000000000007) != 0)
        {
          v104 = v125;
          sub_1D6D505B4(v124, v83, v32);
          if (!v104)
          {
            v105 = sub_1D72585BC();
            v106 = *(v105 - 8);
            (*(v106 + 56))(v32, 0, 1, v105);
            (*(v106 + 32))(v122, v32, v105);
          }
        }

        else
        {
          v84 = sub_1D72585BC();
          v85 = *(v84 - 8);
          (*(v85 + 56))(v32, 1, 1, v84);
          v86 = sub_1D6D505B4(v124, v82[2], v122);
          if ((*(v85 + 48))(v32, 1, v84, v86) != 1)
          {
            sub_1D5D28540(v32, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
          }
        }

        return sub_1D5D28540(v58, &qword_1EDF3BF60, MEMORY[0x1E69D7398]);
      }

      if (v67 == *MEMORY[0x1E69D7390])
      {
        v96 = v123;
        v97 = v123[14];
        if ((~v97 & 0xF000000000000007) != 0)
        {
          v109 = v125;
          sub_1D6D505B4(v124, v97, v28);
          if (!v109)
          {
            v110 = sub_1D72585BC();
            v111 = *(v110 - 8);
            (*(v111 + 56))(v28, 0, 1, v110);
            (*(v111 + 32))(v122, v28, v110);
          }
        }

        else
        {
          v98 = sub_1D72585BC();
          v99 = *(v98 - 8);
          (*(v99 + 56))(v28, 1, 1, v98);
          v100 = sub_1D6D505B4(v124, v96[2], v122);
          if ((*(v99 + 48))(v28, 1, v98, v100) != 1)
          {
            sub_1D5D28540(v28, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
          }
        }

        return sub_1D5D28540(v58, &qword_1EDF3BF60, MEMORY[0x1E69D7398]);
      }

      (*(v61 + 8))(v52, v60);
    }

    v62 = v123[2];
    goto LABEL_9;
  }

  if (a4 >= 2.0)
  {
    v63 = a2;
    v64 = v57;
    sub_1D5D27018(v63, v57, &qword_1EDF3BF60, MEMORY[0x1E69D7398]);
    v65 = sub_1D725A3AC();
    v66 = *(v65 - 8);
    if ((*(v66 + 48))(v64, 1, v65) != 1)
    {
      v58 = v64;
      sub_1D5D27018(v64, v46, &qword_1EDF3BF60, MEMORY[0x1E69D7398]);
      v76 = (*(v66 + 88))(v46, v65);
      v77 = v123;
      if (v76 == *MEMORY[0x1E69D7380])
      {
        v78 = v123[4];
        if ((~v78 & 0xF000000000000007) != 0)
        {
          v101 = v125;
          sub_1D6D505B4(v124, v78, v24);
          if (!v101)
          {
            v102 = sub_1D72585BC();
            v103 = *(v102 - 8);
            (*(v103 + 56))(v24, 0, 1, v102);
            (*(v103 + 32))(v122, v24, v102);
          }

          return sub_1D5D28540(v58, &qword_1EDF3BF60, MEMORY[0x1E69D7398]);
        }

        v79 = sub_1D72585BC();
        v80 = *(v79 - 8);
        (*(v80 + 56))(v24, 1, 1, v79);
        v81 = v77[1];
        goto LABEL_57;
      }

      if (v76 == *MEMORY[0x1E69D7388])
      {
        v92 = v123[10];
        if ((~v92 & 0xF000000000000007) != 0)
        {
          v108 = v120;
          goto LABEL_64;
        }

        v93 = sub_1D72585BC();
        v94 = *(v93 - 8);
        v95 = v120;
        (*(v94 + 56))(v120, 1, 1, v93);
      }

      else
      {
        if (v76 != *MEMORY[0x1E69D7390])
        {
          (*(v66 + 8))(v46, v65);
          v62 = v77[1];
          goto LABEL_9;
        }

        v92 = v123[13];
        if ((~v92 & 0xF000000000000007) != 0)
        {
          v108 = v118;
          goto LABEL_64;
        }

        v93 = sub_1D72585BC();
        v94 = *(v93 - 8);
        v95 = v118;
        (*(v94 + 56))(v118, 1, 1, v93);
      }

      v107 = sub_1D6D505B4(v124, v77[1], v122);
      if ((*(v94 + 48))(v95, 1, v93, v107) != 1)
      {
        sub_1D5D28540(v95, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
      }

      return sub_1D5D28540(v58, &qword_1EDF3BF60, MEMORY[0x1E69D7398]);
    }

    v58 = v64;
    v62 = v123[1];
  }

  else
  {
    if (a4 < 1.0)
    {
      return sub_1D6D566B8(v124, a2, v122, 3.0);
    }

    v73 = v56;
    sub_1D5D27018(a2, v56, &qword_1EDF3BF60, MEMORY[0x1E69D7398]);
    v74 = sub_1D725A3AC();
    v75 = *(v74 - 8);
    if ((*(v75 + 48))(v73, 1, v74) == 1)
    {
      sub_1D6D505B4(v124, *v123, v122);
      v58 = v73;
      return sub_1D5D28540(v58, &qword_1EDF3BF60, MEMORY[0x1E69D7398]);
    }

    v58 = v73;
    sub_1D5D27018(v73, v40, &qword_1EDF3BF60, MEMORY[0x1E69D7398]);
    v90 = (*(v75 + 88))(v40, v74);
    v91 = v123;
    if (v90 == *MEMORY[0x1E69D7380])
    {
      v92 = v123[3];
      if ((~v92 & 0xF000000000000007) == 0)
      {
        v79 = sub_1D72585BC();
        v80 = *(v79 - 8);
        v24 = v121;
        (*(v80 + 56))(v121, 1, 1, v79);
LABEL_56:
        v81 = *v91;
LABEL_57:
        v112 = sub_1D6D505B4(v124, v81, v122);
        if ((*(v80 + 48))(v24, 1, v79, v112) != 1)
        {
          sub_1D5D28540(v24, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
        }

        return sub_1D5D28540(v58, &qword_1EDF3BF60, MEMORY[0x1E69D7398]);
      }

      v108 = v121;
      goto LABEL_64;
    }

    if (v90 == *MEMORY[0x1E69D7388])
    {
      v92 = v123[9];
      if ((~v92 & 0xF000000000000007) == 0)
      {
        v79 = sub_1D72585BC();
        v80 = *(v79 - 8);
        v24 = v119;
        (*(v80 + 56))(v119, 1, 1, v79);
        goto LABEL_56;
      }

      v108 = v119;
LABEL_64:
      v113 = v125;
      sub_1D6D505B4(v124, v92, v108);
      if (!v113)
      {
        v114 = sub_1D72585BC();
        v115 = *(v114 - 8);
        (*(v115 + 56))(v108, 0, 1, v114);
        (*(v115 + 32))(v122, v108, v114);
      }

      return sub_1D5D28540(v58, &qword_1EDF3BF60, MEMORY[0x1E69D7398]);
    }

    if (v90 == *MEMORY[0x1E69D7390])
    {
      v92 = v123[12];
      if ((~v92 & 0xF000000000000007) == 0)
      {
        v79 = sub_1D72585BC();
        v80 = *(v79 - 8);
        v24 = v117;
        (*(v80 + 56))(v117, 1, 1, v79);
        goto LABEL_56;
      }

      v108 = v117;
      goto LABEL_64;
    }

    (*(v75 + 8))(v40, v74);
    v62 = *v91;
  }

LABEL_9:
  sub_1D6D505B4(v124, v62, v122);
  return sub_1D5D28540(v58, &qword_1EDF3BF60, MEMORY[0x1E69D7398]);
}

uint64_t sub_1D6D5772C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 121))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 120);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1D6D57774(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 121) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 121) = 0;
    }

    if (a2)
    {
      *(result + 120) = -a2;
    }
  }

  return result;
}

__n128 __swift_memcpy43_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 27) = *(a2 + 27);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1D6D577F8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 43))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 42);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1D6D57840(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 42) = 0;
    *(result + 40) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 43) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 43) = 0;
    }

    if (a2)
    {
      *(result + 42) = -a2;
    }
  }

  return result;
}

uint64_t FeedGroupConfigSidecarConfigPlacement.subgroupIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_1D6D57910()
{
  v1 = 0x7365707974627573;
  if (*v0 != 1)
  {
    v1 = 0x6E6F697469736F70;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000012;
  }
}

uint64_t sub_1D6D57970@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D6D58690(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D6D57998(uint64_t a1)
{
  v2 = sub_1D6D57C28();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6D579D4(uint64_t a1)
{
  v2 = sub_1D6D57C28();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FeedGroupConfigSidecarConfigPlacement.encode(to:)(void *a1)
{
  sub_1D6D57FA0(0, &qword_1EDF02858, MEMORY[0x1E69E6F58]);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = v15 - v7;
  v15[0] = *(v1 + 16);
  v16 = *(v1 + 24);
  v9 = a1[3];
  v10 = a1;
  v12 = v11;
  __swift_project_boxed_opaque_existential_1(v10, v9);
  sub_1D6D57C28();
  sub_1D7264B5C();
  v20 = 0;
  sub_1D72643FC();
  if (!v2)
  {
    v13 = v16;
    v15[1] = v15[0];
    v19 = 1;
    sub_1D5BBE0A8();
    sub_1D5B99688(&qword_1EDF04A90, MEMORY[0x1E69E6160], MEMORY[0x1E69E6300]);
    sub_1D726443C();
    v18 = v13;
    v17 = 2;
    sub_1D6D57C7C();
    sub_1D726443C();
  }

  return (*(v5 + 8))(v8, v12);
}

unint64_t sub_1D6D57C28()
{
  result = qword_1EDF12AA0;
  if (!qword_1EDF12AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF12AA0);
  }

  return result;
}

unint64_t sub_1D6D57C7C()
{
  result = qword_1EDF12AB8;
  if (!qword_1EDF12AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF12AB8);
  }

  return result;
}

void FeedGroupConfigSidecarConfigPlacement.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D6D57FA0(0, &qword_1EDF03B48, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v16 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6D57C28();
  sub_1D7264B0C();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v23 = 0;
    v11 = sub_1D72642BC();
    v13 = v12;
    v18 = v11;
    sub_1D5BBE0A8();
    v22 = 1;
    sub_1D5B99688(&qword_1EDF3C830, MEMORY[0x1E69E6190], MEMORY[0x1E69E6330]);
    sub_1D726431C();
    v17 = v19;
    v20 = 2;
    sub_1D6D58004();
    sub_1D726431C();
    (*(v7 + 8))(v10, v6);
    v14 = v21;
    v15 = v17;
    *a2 = v18;
    *(a2 + 8) = v13;
    *(a2 + 16) = v15;
    *(a2 + 24) = v14;

    __swift_destroy_boxed_opaque_existential_1(a1);
  }
}

void sub_1D6D57FA0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D6D57C28();
    v7 = a3(a1, &type metadata for FeedGroupConfigSidecarConfigPlacement.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1D6D58004()
{
  result = qword_1EDF12AA8;
  if (!qword_1EDF12AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF12AA8);
  }

  return result;
}

NewsFeed::FeedGroupConfigSidecarConfigPlacementPosition_optional __swiftcall FeedGroupConfigSidecarConfigPlacementPosition.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D72641CC();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t FeedGroupConfigSidecarConfigPlacementPosition.rawValue.getter()
{
  v1 = 0x7265746661;
  if (*v0 != 1)
  {
    v1 = 0x6563616C706572;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x65726F666562;
  }
}

uint64_t sub_1D6D58138(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE500000000000000;
  v4 = 0x7265746661;
  if (v2 != 1)
  {
    v4 = 0x6563616C706572;
    v3 = 0xE700000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x65726F666562;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  v7 = 0xE500000000000000;
  v8 = 0x7265746661;
  if (*a2 != 1)
  {
    v8 = 0x6563616C706572;
    v7 = 0xE700000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x65726F666562;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE600000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1D72646CC();
  }

  return v11 & 1;
}

unint64_t sub_1D6D58234()
{
  result = qword_1EC8955C0;
  if (!qword_1EC8955C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8955C0);
  }

  return result;
}

uint64_t sub_1D6D58288()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

double sub_1D6D58324(uint64_t a1)
{
  sub_1D72621EC();

  return result;
}

uint64_t sub_1D6D583AC(uint64_t a1)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

void sub_1D6D58450(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0xE500000000000000;
  v5 = 0x7265746661;
  if (v2 != 1)
  {
    v5 = 0x6563616C706572;
    v4 = 0xE700000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x65726F666562;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_1D6D5858C()
{
  result = qword_1EC8955C8;
  if (!qword_1EC8955C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8955C8);
  }

  return result;
}

unint64_t sub_1D6D585E4()
{
  result = qword_1EDF12A90;
  if (!qword_1EDF12A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF12A90);
  }

  return result;
}

unint64_t sub_1D6D5863C()
{
  result = qword_1EDF12A98;
  if (!qword_1EDF12A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF12A98);
  }

  return result;
}

uint64_t sub_1D6D58690(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000012 && 0x80000001D73F1DF0 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7365707974627573 && a2 == 0xE800000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E6F697469736F70 && a2 == 0xE800000000000000)
  {

    return 2;
  }

  else
  {
    v5 = sub_1D72646CC();

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

unint64_t sub_1D6D587B4()
{
  result = qword_1EDF12AB0;
  if (!qword_1EDF12AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF12AB0);
  }

  return result;
}

uint64_t sub_1D6D58834@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D5F0B948();
  *a1 = result & 1;
  return result;
}

void sub_1D6D5888C(_BYTE *a2@<X8>)
{
  type metadata accessor for DebugFormatEditorWorkspaceGroup(0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D72600CC();

  *a2 = v3;
}

uint64_t sub_1D6D58928(char *a1, uint64_t *a2)
{
  type metadata accessor for DebugFormatEditorWorkspaceGroup(0);
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1D72600DC();
}

uint64_t sub_1D6D589B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _OWORD *a5@<X8>)
{
  v37 = a5;
  sub_1D6D59AA4(0);
  v42 = v9;
  v38 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v10);
  v41 = &KeyPath - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v40 = &KeyPath - v14;
  v15 = a4 + *(*a4 + 88);
  v16 = type metadata accessor for DebugFormatEditorWorkspaceGroup(0);
  v17 = (*(*(v15 + v16[6]) + 16) + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__name);
  swift_beginAccess();
  v18 = v17[1];
  if (v18)
  {
    v43 = *v17;
    v39 = v18;
  }

  else
  {
    v39 = 0xE800000000000000;
    v43 = 0x64656C7469746E55;
  }

  v19 = (v15 + v16[7]);
  v20 = v19[1];
  v36 = *v19;
  v21 = *(v15 + v16[5]) + OBJC_IVAR____TtC8NewsFeed24DebugFormatBindingResult_content;
  v47[0] = *(v21 + *(type metadata accessor for FormatContent.Resolved(0) + 36));
  KeyPath = swift_getKeyPath();
  v22 = swift_allocObject();
  v22[2] = a1;
  v22[3] = a2;
  v22[4] = a3;
  v22[5] = a4;
  sub_1D5B5A840(0, &qword_1EDF3C8C0, &type metadata for FormatContentSubgroup.ResolvedContainer, MEMORY[0x1E69E62F8]);
  sub_1D6D59C84(0, &qword_1EC8955F8, sub_1D6D59B90, MEMORY[0x1E6981F40]);
  sub_1D6D59E14();
  sub_1D6D59F24();

  v23 = v40;
  sub_1D72619DC();
  v24 = v38;
  v25 = *(v38 + 16);
  v26 = v41;
  v27 = v42;
  v25(v41, v23, v42);
  *&v44 = 0x676E697070696873;
  *(&v44 + 1) = 0xEB00000000786F62;
  v28 = v39;
  *&v45 = v43;
  *(&v45 + 1) = v39;
  v29 = v36;
  *v46 = v36;
  *&v46[8] = v20;
  *&v46[16] = 0;
  v46[24] = 1;
  v30 = v45;
  v31 = v37;
  *v37 = v44;
  v31[1] = v30;
  v31[2] = *v46;
  *(v31 + 41) = *&v46[9];
  sub_1D6D59A3C(0);
  v25(v31 + *(v32 + 48), v26, v27);
  sub_1D6D59FAC(&v44, v47);
  v33 = *(v24 + 8);
  v33(v23, v27);
  v33(v26, v27);
  v47[0] = 0x676E697070696873;
  v47[1] = 0xEB00000000786F62;
  v47[2] = v43;
  v47[3] = v28;
  v47[4] = v29;
  v47[5] = v20;
  v47[6] = 0;
  v48 = 1;
  return sub_1D6D5A008(v47);
}

void sub_1D6D58DF8(_OWORD *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = a1[1];
  v7[0] = *a1;
  v7[1] = v3;
  v4 = a1[3];
  v7[2] = a1[2];
  v7[3] = v4;
  v7[4] = a1[4];
  v5 = v7[0];
  sub_1D5CE9930(v7, &v6);

  *a2 = v5;
}

void sub_1D6D58EB4(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v49 = a5;
  v46 = a2;
  v47 = a4;
  sub_1D6D59CE8(0);
  v56 = *(v9 - 8);
  v57 = v9;
  MEMORY[0x1EEE9AC00](v9, v10);
  v48 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6D59C84(0, &qword_1EC895608, sub_1D6D59CE8, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v58 = &v46 - v18;
  v19 = a1[1];
  v80 = *a1;
  v81 = v19;
  v20 = a1[3];
  *v82 = a1[2];
  *&v82[16] = v20;
  *&v82[32] = a1[4];
  v75[0] = v80;
  v75[1] = v81;
  v76 = *v82 & 0x7FFFFFFFFFFFFFFFLL;
  v77 = *&v82[8];
  v55 = v20;
  v78 = v20;
  v79 = *&v82[32];
  sub_1D5CE9930(&v80, &v71);
  v21 = v55;

  sub_1D5CB71DC(v75);
  v22 = *(v21 + 16);

  if (v22)
  {
    v71 = v80;
    v72 = v81;
    v73 = *v82 & 0x7FFFFFFFFFFFFFFFLL;
    *v74 = *&v82[8];
    v55 = *&v82[16];
    *&v74[8] = *&v82[16];
    *&v74[24] = *&v82[32];
    sub_1D5CE9930(&v80, &v65);

    v23 = v55;

    sub_1D5CB71DC(&v71);
    type metadata accessor for DebugFormatBindingTree(0);
    sub_1D6D5A05C(&qword_1EC880C48, type metadata accessor for DebugFormatBindingTree, &unk_1D7365F28);
    v54 = sub_1D7260F8C();
    *&v55 = v23;
    v25 = v24;

    v53 = v25;
  }

  else
  {
    v53 = 0;
    v54 = 0;
    *&v55 = 0;
  }

  v71 = v80;
  v72 = v81;
  v52 = *&v82[8];
  *v74 = *&v82[8];
  *&v74[16] = *&v82[24];
  v73 = *v82 & 0x7FFFFFFFFFFFFFFFLL;
  *&v74[32] = *&v82[40];
  sub_1D5CE9930(&v80, &v65);
  v26 = v52;

  sub_1D5CB71DC(&v71);
  v27 = *(v26 + 16);

  if (v27)
  {
    v65 = v80;
    v66 = v81;
    v52 = *&v82[8];
    v68 = *&v82[8];
    v69 = *&v82[24];
    v67 = *v82 & 0x7FFFFFFFFFFFFFFFLL;
    v70 = *&v82[40];
    sub_1D5CE9930(&v80, v60);

    v28 = v52;

    sub_1D5CB71DC(&v65);
    type metadata accessor for DebugFormatBindingTree(0);
    sub_1D6D5A05C(&qword_1EC880C48, type metadata accessor for DebugFormatBindingTree, &unk_1D7365F28);
    v51 = sub_1D7260F8C();
    *&v52 = v28;
    v30 = v29;
  }

  else
  {
    v51 = 0;
    *&v52 = 0;
    v30 = 0;
  }

  v65 = v80;
  v66 = v81;
  v68 = *&v82[8];
  v50 = *&v82[24];
  v69 = *&v82[24];
  v67 = *v82 & 0x7FFFFFFFFFFFFFFFLL;
  v70 = *&v82[40];
  sub_1D5CE9930(&v80, v60);
  v31 = v50;

  sub_1D5CB71DC(&v65);
  v32 = *(v31 + 16);

  if (v32)
  {
    v60[0] = v80;
    v60[1] = v81;
    v61 = *v82 & 0x7FFFFFFFFFFFFFFFLL;
    v62 = *&v82[8];
    v50 = *&v82[24];
    v63 = *&v82[24];
    v64 = *&v82[40];
    sub_1D5CE9930(&v80, v59);

    sub_1D5CB71DC(v60);
    v59[0] = v50;
    *&v50 = swift_getKeyPath();
    v33 = swift_allocObject();
    v34 = v47;
    v33[2] = v46;
    v33[3] = a3;
    v35 = v49;
    v33[4] = v34;
    v33[5] = v35;
    sub_1D5B5A840(0, &qword_1EDF1B2A0, &type metadata for FormatContentSlot.Resolved, MEMORY[0x1E69E62F8]);
    sub_1D6D59D98();
    sub_1D6D5A0B0();

    v36 = v48;
    sub_1D72619DC();
    v38 = v56;
    v37 = v57;
    v39 = v58;
    (*(v56 + 32))(v58, v36, v57);
    (*(v38 + 56))(v39, 0, 1, v37);
  }

  else
  {
    v39 = v58;
    (*(v56 + 56))(v58, 1, 1, v57);
  }

  sub_1D6D5A104(v39, v15);
  v41 = v53;
  v40 = v54;
  *a6 = v54;
  a6[1] = v41;
  v42 = v55;
  v44 = v51;
  v43 = v52;
  a6[2] = v55;
  a6[3] = v44;
  a6[4] = v30;
  a6[5] = v43;
  sub_1D6D59B90(0);
  sub_1D6D5A104(v15, a6 + *(v45 + 64));
  sub_1D5EFF2E0(v40, v41);
  sub_1D5EFF2E0(v44, v30);
  sub_1D5EFF324(v44, v30, v43);
  sub_1D5EFF324(v40, v41, v42);
  sub_1D6D5A198(v39);
  sub_1D6D5A198(v15);
  sub_1D5EFF324(v44, v30, v43);
  sub_1D5EFF324(v40, v41, v42);
}

uint64_t sub_1D6D5957C@<X0>(_OWORD *a1@<X0>, uint64_t a3@<X4>, uint64_t *a4@<X8>)
{
  v6 = a1[1];
  v19[0] = *a1;
  v19[1] = v6;
  v7 = a1[3];
  v19[2] = a1[2];
  v19[3] = v7;
  v8 = a3 + *(*a3 + 88);
  v9 = *(v8 + *(type metadata accessor for DebugFormatEditorWorkspaceGroup(0) + 20));
  sub_1D5B5A840(0, &qword_1EC880BE8, &type metadata for FormatContentSlot.Resolved, type metadata accessor for DebugFormatBindingTreeSection);
  v10 = swift_allocObject();
  v11 = a1[1];
  *(v10 + 16) = *a1;
  *(v10 + 32) = v11;
  v12 = a1[3];
  *(v10 + 48) = a1[2];
  *(v10 + 64) = v12;
  *(v10 + 80) = v9;
  swift_beginAccess();
  v18[71] = 1;

  sub_1D5CB6F58(v19, v18);

  sub_1D726009C();
  swift_endAccess();
  type metadata accessor for DebugFormatBindingTree(0);
  sub_1D6D5A05C(&qword_1EC880C48, type metadata accessor for DebugFormatBindingTree, &unk_1D7365F28);
  v13 = sub_1D7260F8C();
  v15 = v14;
  sub_1D5EFED78();
  result = sub_1D7260F8C();
  *a4 = v13;
  a4[1] = v15;
  a4[2] = result;
  a4[3] = v17;
  return result;
}

uint64_t sub_1D6D59724@<X0>(uint64_t a1@<X3>, uint64_t a2@<X8>)
{
  v3 = *(*a1 + 88);
  v4 = (a1 + *(type metadata accessor for FormatWorkspaceGroup(0) + 24) + v3);
  v6 = *v4;
  v5 = v4[1];
  *a2 = 0x672E657261757173;
  *(a2 + 8) = 0xEF3278322E646972;
  *(a2 + 16) = 0x70756F7267627553;
  *(a2 + 24) = 0xE800000000000000;
  *(a2 + 32) = v6;
  *(a2 + 40) = v5;
  *(a2 + 48) = 0;
  *(a2 + 56) = 1;
}

uint64_t sub_1D6D597E0()
{
  v2 = *v0;
  v1 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_1D6D59C84(0, &qword_1EC8955D0, type metadata accessor for DebugFormatEditorWorkspaceGroup, type metadata accessor for DebugFormatBindingTreeSection);
  sub_1D6D5999C();
  sub_1D7260F9C();
  swift_getKeyPath();
  sub_1D7260FAC();

  v5 = swift_allocObject();
  v5[2] = v2;
  v5[3] = v1;
  v5[4] = v4;
  v5[5] = v3;
  sub_1D6D59C84(0, &qword_1EC8955E0, sub_1D6D59A3C, MEMORY[0x1E6981F40]);
  sub_1D5EFF0C0();
  sub_1D6D59E90();

  return sub_1D7260FFC();
}

unint64_t sub_1D6D5999C()
{
  result = qword_1EC8955D8;
  if (!qword_1EC8955D8)
  {
    sub_1D6D59C84(255, &qword_1EC8955D0, type metadata accessor for DebugFormatEditorWorkspaceGroup, type metadata accessor for DebugFormatBindingTreeSection);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8955D8);
  }

  return result;
}

void sub_1D6D59A3C(uint64_t a1)
{
  if (!qword_1EC8955E8)
  {
    sub_1D6D59AA4(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC8955E8);
    }
  }
}

void sub_1D6D59AA4(uint64_t a1)
{
  if (!qword_1EC8955F0)
  {
    sub_1D5B5A840(255, &qword_1EDF3C8C0, &type metadata for FormatContentSubgroup.ResolvedContainer, MEMORY[0x1E69E62F8]);
    sub_1D6D59C84(255, &qword_1EC8955F8, sub_1D6D59B90, MEMORY[0x1E6981F40]);
    sub_1D6D59E14();
    v1 = sub_1D72619FC();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC8955F0);
    }
  }
}

void sub_1D6D59B90(uint64_t a1)
{
  if (!qword_1EC895600)
  {
    v1 = MEMORY[0x1E69E6720];
    sub_1D5B5A840(255, &qword_1EC880C08, &type metadata for DebugFormatBindingTreeSelectorView, MEMORY[0x1E69E6720]);
    sub_1D5B5A840(255, &qword_1EC880C10, &type metadata for DebugFormatBindingTreeOptionView, v1);
    sub_1D6D59C84(255, &qword_1EC895608, sub_1D6D59CE8, MEMORY[0x1E69E6720]);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v3)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EC895600);
    }
  }
}

void sub_1D6D59C84(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1D6D59CE8(uint64_t a1)
{
  if (!qword_1EC895610)
  {
    sub_1D5B5A840(255, &qword_1EDF1B2A0, &type metadata for FormatContentSlot.Resolved, MEMORY[0x1E69E62F8]);
    sub_1D6D59D98();
    v1 = sub_1D72619FC();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC895610);
    }
  }
}

unint64_t sub_1D6D59D98()
{
  result = qword_1EC895618;
  if (!qword_1EC895618)
  {
    sub_1D5B5A840(255, &qword_1EDF1B2A0, &type metadata for FormatContentSlot.Resolved, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC895618);
  }

  return result;
}

unint64_t sub_1D6D59E14()
{
  result = qword_1EC895620;
  if (!qword_1EC895620)
  {
    sub_1D5B5A840(255, &qword_1EDF3C8C0, &type metadata for FormatContentSubgroup.ResolvedContainer, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC895620);
  }

  return result;
}

unint64_t sub_1D6D59E90()
{
  result = qword_1EC895628;
  if (!qword_1EC895628)
  {
    sub_1D6D59C84(255, &qword_1EC8955E0, sub_1D6D59A3C, MEMORY[0x1E6981F40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC895628);
  }

  return result;
}

unint64_t sub_1D6D59F24()
{
  result = qword_1EC895630;
  if (!qword_1EC895630)
  {
    sub_1D6D59C84(255, &qword_1EC8955F8, sub_1D6D59B90, MEMORY[0x1E6981F40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC895630);
  }

  return result;
}

uint64_t sub_1D6D5A05C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1D6D5A0B0()
{
  result = qword_1EC895638;
  if (!qword_1EC895638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC895638);
  }

  return result;
}

uint64_t sub_1D6D5A104(uint64_t a1, uint64_t a2)
{
  sub_1D6D59C84(0, &qword_1EC895608, sub_1D6D59CE8, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D6D5A198(uint64_t a1)
{
  sub_1D6D59C84(0, &qword_1EC895608, sub_1D6D59CE8, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D6D5A224(uint64_t a1)
{
  if (!qword_1EC895648)
  {
    sub_1D6D59C84(255, &qword_1EC8955E0, sub_1D6D59A3C, MEMORY[0x1E6981F40]);
    sub_1D5EFF0C0();
    sub_1D6D59E90();
    v1 = sub_1D726100C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC895648);
    }
  }
}

uint64_t URLScheme.description.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t FeedHeadlineClusteringResult.topicClusteringResult.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *(v1 + 8);
  a1[1] = v2;
}

NewsFeed::FeedHeadlineClusteringResult __swiftcall FeedHeadlineClusteringResult.init(channelClusteringResult:topicClusteringResult:inventoryItemsByTagID:)(NewsFeed::FeedChannelHeadlineClusteringResult channelClusteringResult, NewsFeed::FeedTopicHeadlineClusteringResult topicClusteringResult, Swift::OpaquePointer inventoryItemsByTagID)
{
  *v3 = *channelClusteringResult.clusters._rawValue;
  *(v3 + 8) = *topicClusteringResult.clusters._rawValue;
  *(v3 + 24) = topicClusteringResult.orphanedHeadlines._rawValue;
  result.topicClusteringResult = topicClusteringResult;
  result.inventoryItemsByTagID = inventoryItemsByTagID;
  result.channelClusteringResult = channelClusteringResult;
  return result;
}

unint64_t static FeedHeadlineClusteringResult.empty.getter@<X0>(void *a1@<X8>)
{
  v2 = MEMORY[0x1E69E7CC0];
  result = sub_1D605E5F8(MEMORY[0x1E69E7CC0]);
  *a1 = v2;
  a1[1] = v2;
  a1[2] = v2;
  a1[3] = result;
  return result;
}

unint64_t sub_1D6D5A438(uint64_t a1)
{
  sub_1D5B54D0C(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v19 - v4;
  v6 = sub_1D72585BC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5EB84C0(a1, v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_1D5E3E404(v5);
    return 0;
  }

  else
  {
    (*(v7 + 32))(v10, v5, v6);
    sub_1D5B54D0C(0, &qword_1EDF01E30, sub_1D6D5A8A8, MEMORY[0x1E69E6F90]);
    sub_1D6D5A8A8(0);
    v13 = v12 - 8;
    v14 = (*(*(v12 - 8) + 80) + 32) & ~*(*(v12 - 8) + 80);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1D7273AE0;
    v16 = (v15 + v14);
    v17 = *(v13 + 56);
    *v16 = 0x6465654661746164;
    *(v16 + 1) = 0xE800000000000000;
    (*(v7 + 16))(&v16[v17], v10, v6);
    v18 = sub_1D605D104(v15);
    swift_setDeallocating();
    sub_1D6D5A910(v16);
    swift_deallocClassInstance();
    (*(v7 + 8))(v10, v6);
    return v18;
  }
}

uint64_t sub_1D6D5A6F4()
{
  v1 = OBJC_IVAR____TtC8NewsFeed29WebEmbedConfigurationProvider_locale;
  v2 = sub_1D7258AAC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for WebEmbedConfigurationProvider(uint64_t a1)
{
  result = qword_1EDF20C98;
  if (!qword_1EDF20C98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D6D5A80C(uint64_t a1)
{
  result = sub_1D7258AAC();
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

void sub_1D6D5A8A8(uint64_t a1)
{
  if (!qword_1EDF054E0)
  {
    sub_1D72585BC();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDF054E0);
    }
  }
}

uint64_t sub_1D6D5A910(uint64_t a1)
{
  sub_1D6D5A8A8(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D6D5A96C(uint64_t a1)
{
  v2 = type metadata accessor for FormatContentSlotItemObject.Resolved(0);
  v42 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v3);
  v5 = v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = v41 - v8;
  v10 = MEMORY[0x1E69E7CC0];
  v45 = *(a1 + 16);
  if (!v45)
  {
    return v10;
  }

  v11 = 0;
  v44 = a1 + 32;
  result = MEMORY[0x1E69E7CC0];
  v41[2] = v2;
  while (1)
  {
    v50 = result;
    v46 = v11;
    v14 = *(v44 + (v11 << 6) + 32);
    v49[0] = v10;
    v15 = *(v14 + 16);
    if (v15)
    {
      v16 = v14 + ((*(v42 + 80) + 32) & ~*(v42 + 80));
      v17 = *(v42 + 72);
      v18 = v10;
      do
      {
        sub_1D5CED2F0(v16, v9);
        sub_1D5CED2F0(v9, v5);
        if (swift_getEnumCaseMultiPayload() == 2)
        {
          v19 = sub_1D5CED354(v9);
          MEMORY[0x1DA6F9CE0](v19);
          if (*((v49[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v49[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1D726272C();
            v10 = MEMORY[0x1E69E7CC0];
          }

          sub_1D726278C();
          v18 = v49[0];
        }

        else
        {
          sub_1D5CED354(v5);
          sub_1D5CED354(v9);
        }

        v16 += v17;
        --v15;
      }

      while (v15);
    }

    else
    {
      v18 = v10;
    }

    v20 = v18 >> 62;
    v21 = v50;
    v48 = v18;
    if (v18 >> 62)
    {
      v22 = sub_1D7263BFC();
    }

    else
    {
      v22 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v23 = v21 >> 62;
    if (v21 >> 62)
    {
      v40 = sub_1D7263BFC();
      v25 = v40 + v22;
      if (__OFADD__(v40, v22))
      {
LABEL_41:
        __break(1u);
        return v10;
      }
    }

    else
    {
      v24 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v25 = v24 + v22;
      if (__OFADD__(v24, v22))
      {
        goto LABEL_41;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (result)
    {
      if (!v23)
      {
        v26 = v21 & 0xFFFFFFFFFFFFFF8;
        if (v25 <= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_25;
        }

        goto LABEL_24;
      }

LABEL_23:
      sub_1D7263BFC();
      goto LABEL_24;
    }

    if (v23)
    {
      goto LABEL_23;
    }

LABEL_24:
    result = sub_1D7263DDC();
    v21 = result;
    v26 = result & 0xFFFFFFFFFFFFFF8;
LABEL_25:
    v47 = v22;
    v50 = v21;
    v27 = *(v26 + 16);
    v28 = *(v26 + 24);
    if (v20)
    {
      break;
    }

    v29 = *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v29)
    {
      goto LABEL_3;
    }

LABEL_29:
    if (((v28 >> 1) - v27) < v47)
    {
      goto LABEL_45;
    }

    v31 = v26 + 8 * v27 + 32;
    v43 = v26;
    if (v20)
    {
      if (v29 < 1)
      {
        goto LABEL_47;
      }

      sub_1D6D5BC7C(0, &qword_1EDF1AEB0, &qword_1EDF3C770, &protocolRef_FCTagProviding, sub_1D5B5534C);
      sub_1D6D5BCD8();
      v32 = 0;
      v33 = v48;
      do
      {
        v34 = sub_1D6D87860(v49, v32, v33);
        v36 = *v35;
        swift_unknownObjectRetain();
        (v34)(v49, 0);
        *(v31 + 8 * v32++) = v36;
      }

      while (v29 != v32);
    }

    else
    {
      sub_1D5B5534C(0, &qword_1EDF3C770, &protocolRef_FCTagProviding);
      swift_arrayInitWithCopy();
    }

    v13 = v46;
    v10 = MEMORY[0x1E69E7CC0];
    result = v50;
    if (v47 >= 1)
    {
      v37 = *(v43 + 16);
      v38 = __OFADD__(v37, v47);
      v39 = v37 + v47;
      if (v38)
      {
        goto LABEL_46;
      }

      *(v43 + 16) = v39;
    }

LABEL_4:
    v11 = v13 + 1;
    if (v11 == v45)
    {
      return result;
    }
  }

  v30 = v26;
  result = sub_1D7263BFC();
  v26 = v30;
  v29 = result;
  if (result)
  {
    goto LABEL_29;
  }

LABEL_3:

  v13 = v46;
  result = v50;
  if (v47 <= 0)
  {
    goto LABEL_4;
  }

  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
  return result;
}

uint64_t FormatContentSubgroup.ResolvedContainer.sections.getter()
{
  v1 = v0[1];
  v6[0] = *v0;
  v6[1] = v1;
  v2 = v0[3];
  v6[2] = v0[2];
  v6[3] = v2;
  v7 = v0[4];
  v3 = v7;
  sub_1D5CE9930(v6, &v5);

  return v3;
}

uint64_t FormatContentSubgroup.ResolvedContainer.options.getter()
{
  v1 = v0[1];
  v6[0] = *v0;
  v6[1] = v1;
  v2 = v0[3];
  v7 = v0[2];
  v8 = v2;
  v9 = v0[4];
  v3 = *(&v7 + 1);
  sub_1D5CE9930(v6, &v5);

  return v3;
}

void sub_1D6D5AF70(uint64_t a1)
{
  v3 = v1[1];
  v10 = *v1;
  v11 = v3;
  v4 = v1[3];
  v12 = v1[2];
  v5 = v1[4];
  v13 = v4;
  v14 = v5;
  v6 = v5.n128_u64[1];
  sub_1D5CE9930(&v10, v9);

  v7 = 0;
  v8 = *(v6 + 16);
  while (1)
  {
    if (v8 == v7)
    {
LABEL_5:

      return;
    }

    if (v7 >= *(v6 + 16))
    {
      break;
    }

    ++v7;
    v9[2] = v12;
    v9[3] = v13;
    v9[4] = v14;
    v9[0] = v10;
    v9[1] = v11;
    if ((sub_1D69CE36C(a1, v9) & 1) == 0)
    {
      goto LABEL_5;
    }
  }

  __break(1u);
}

uint64_t sub_1D6D5B118(uint64_t (*a1)(void))
{
  v3 = v1[1];
  v15[0] = *v1;
  v15[1] = v3;
  v4 = v1[4];
  *&v16[16] = v1[3];
  *&v16[32] = v4;
  *v16 = v1[2];
  v13[1] = v3;
  *&v14[24] = *&v16[24];
  *v14 = *v16 & 0x7FFFFFFFFFFFFFFFLL;
  *&v14[40] = *(&v4 + 1);
  v12 = *&v14[32];
  v13[0] = v15[0];
  *&v14[8] = *&v16[8];
  v11 = *&v14[16];
  v9 = v3;
  v10 = *v14;
  v8 = v15[0];
  sub_1D5CE9930(v15, v7);
  sub_1D5CEBCF0();
  v5 = a1();
  sub_1D5CB71DC(v13);

  return v5;
}

uint64_t FormatContentSubgroup.ResolvedContainer.selectors.getter()
{
  v1 = v0[1];
  v6[0] = *v0;
  v6[1] = v1;
  v2 = v0[3];
  v6[2] = v0[2];
  v6[3] = v2;
  v6[4] = v0[4];
  v3 = v2;
  sub_1D5CE9930(v6, &v5);

  return v3;
}

uint64_t FormatContentSubgroup.ResolvedContainer.encode(to:)(void *a1)
{
  sub_1D5C7F4D4(0, &qword_1EDF02690, MEMORY[0x1E69E6F58]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v18 - v8;
  v10 = v1[1];
  v19 = *v1;
  v20 = v10;
  v11 = v1[3];
  v21 = v1[2];
  v22 = v11;
  v12 = v1[4];
  v13 = v1[6];
  v14 = v1[7];
  v23 = v1[5];
  v24 = v13;
  v16 = v1[8];
  v15 = v1[9];
  v25 = v14;
  v26 = v16;
  v27 = v15;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C7F538();
  sub_1D7264B5C();
  if (v12 < 0)
  {
    LOBYTE(v28) = 1;
    v38 = 0;
    sub_1D6D5B558();
    sub_1D726443C();
    if (!v2)
    {
      v28 = v19;
      v29 = v20;
      v30 = v21;
      v31 = v22;
      v32 = v12 & 0x7FFFFFFFFFFFFFFFLL;
      v33 = v23;
      v34 = v24;
      v35 = v25;
      v36 = v26;
      v37 = v27;
      v38 = 1;
      goto LABEL_6;
    }
  }

  else
  {
    LOBYTE(v28) = 0;
    v38 = 0;
    sub_1D6D5B558();
    sub_1D726443C();
    if (!v2)
    {
      v28 = v19;
      v29 = v20;
      v30 = v21;
      v31 = v22;
      v32 = v12;
      v33 = v23;
      v34 = v24;
      v35 = v25;
      v36 = v26;
      v37 = v27;
      v38 = 1;
LABEL_6:
      sub_1D6D5B5AC();
      sub_1D726443C();
    }
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_1D6D5B558()
{
  result = qword_1EDF0E378;
  if (!qword_1EDF0E378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0E378);
  }

  return result;
}

unint64_t sub_1D6D5B5AC()
{
  result = qword_1EDF0E320;
  if (!qword_1EDF0E320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0E320);
  }

  return result;
}

uint64_t sub_1D6D5B600(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 0x6E6967756C70;
  }

  else
  {
    v2 = 0x656E696C6E69;
  }

  if (*a2)
  {
    v3 = 0x6E6967756C70;
  }

  else
  {
    v3 = 0x656E696C6E69;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_1D72646CC();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t sub_1D6D5B680()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

double sub_1D6D5B6F0(uint64_t a1)
{
  sub_1D72621EC();

  return result;
}

uint64_t sub_1D6D5B744(uint64_t a1)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

void sub_1D6D5B7B0(uint64_t *a1@<X8>)
{
  v2 = 0x656E696C6E69;
  if (*v1)
  {
    v2 = 0x6E6967756C70;
  }

  *a1 = v2;
  a1[1] = 0xE600000000000000;
}

void sub_1D6D5B83C(char *a3@<X8>)
{
  v4 = sub_1D72641CC();

  if (v4 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v4)
  {
    v5 = 0;
  }

  *a3 = v5;
}

uint64_t sub_1D6D5B8A0(uint64_t a1)
{
  v2 = sub_1D5C7F538();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6D5B8DC(uint64_t a1)
{
  v2 = sub_1D5C7F538();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D6D5B930()
{
  v1 = v0[1];
  v6[0] = *v0;
  v6[1] = v1;
  v2 = v0[3];
  v6[2] = v0[2];
  v6[3] = v2;
  v6[4] = v0[4];
  v3 = *&v6[0];
  sub_1D5CE9930(v6, &v5);

  return v3;
}

uint64_t FormatContentSubgroup.ResolvedContainer.filters.getter()
{
  v1 = v0[1];
  v6[0] = *v0;
  v6[1] = v1;
  v2 = v0[3];
  v6[2] = v0[2];
  v6[3] = v2;
  v7 = v0[4];
  v3 = *(&v7 + 1);
  sub_1D5CE9930(v6, &v5);

  return v3;
}

uint64_t sub_1D6D5BACC(uint64_t (*a1)(uint64_t))
{
  v3 = v1[1];
  v11[0] = *v1;
  v11[1] = v3;
  v4 = v1[4];
  *&v12[16] = v1[3];
  *&v12[32] = v4;
  *v12 = v1[2];
  v9[1] = v3;
  *&v10[8] = *&v12[8];
  *&v10[24] = *&v12[24];
  *v10 = *v12 & 0x7FFFFFFFFFFFFFFFLL;
  *&v10[40] = *(&v4 + 1);
  v8[7] = *v10;
  v8[8] = *&v10[16];
  v8[9] = *&v10[32];
  v9[0] = v11[0];
  v8[5] = v11[0];
  v8[6] = v3;
  v5 = sub_1D5CE9930(v11, v8);
  v6 = a1(v5);
  sub_1D5CB71DC(v9);
  return v6;
}

unint64_t sub_1D6D5BBD0()
{
  result = qword_1EC895658;
  if (!qword_1EC895658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC895658);
  }

  return result;
}

unint64_t sub_1D6D5BC28()
{
  result = qword_1EC895660;
  if (!qword_1EC895660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC895660);
  }

  return result;
}

void sub_1D6D5BC7C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    a5(255, a3, a4);
    v6 = sub_1D72627FC();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t sub_1D6D5BCD8()
{
  result = qword_1EC88E4D0;
  if (!qword_1EC88E4D0)
  {
    sub_1D6D5BC7C(255, &qword_1EDF1AEB0, &qword_1EDF3C770, &protocolRef_FCTagProviding, sub_1D5B5534C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88E4D0);
  }

  return result;
}

unint64_t sub_1D6D5BD5C()
{
  result = qword_1EC883200;
  if (!qword_1EC883200)
  {
    sub_1D6D5BC7C(255, &qword_1EDF04A18, &qword_1EDF3C750, &protocolRef_FCPuzzleProviding, sub_1D5B5534C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883200);
  }

  return result;
}

unint64_t sub_1D6D5BDE0()
{
  result = qword_1EC88F470;
  if (!qword_1EC88F470)
  {
    sub_1D6D5BC7C(255, &qword_1EDF1AE40, &qword_1EDF3C6C0, 0x1E69B5348, sub_1D5B5A498);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88F470);
  }

  return result;
}

uint64_t FeedGroupRegion.__allocating_init(groupIdentifier:pluginModel:feedGroupDebug:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  FeedGroupRegion.init(groupIdentifier:pluginModel:feedGroupDebug:)(a1, a2, a3, a4);
  return v8;
}

uint64_t FeedGroupRegion.__allocating_init<A>(items:groupIdentifier:groupItems:namespace:kind:slots:layoutOrder:groupDebug:feedGroupBindingOptions:selectors:feedGroupContextIdentifier:feedGroupRevision:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, __int128 *a7, uint64_t a8, unsigned __int8 *a9, uint64_t a10, __int128 *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v17 = sub_1D5D60320(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17);

  return v17;
}

uint64_t FeedGroupRegion.feedGroupIdentifier.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t FeedGroupRegion.identifier.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t FeedGroupRegion.namespace.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

unint64_t FeedGroupRegion.feedGroupKind.getter@<X0>(unint64_t *a1@<X8>)
{
  v2 = v1[10];
  v3 = v1[11];
  v4 = v1[12];
  v5 = v1[13];
  v6 = v1[14];
  v7 = v1[15];
  v8 = v1[16];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  a1[6] = v8;
  return sub_1D5D64F48(v2, v3, v4, v5, v6, v7, v8);
}

uint64_t FeedGroupRegion.feedGroupContextIdentifier.getter()
{
  v1 = *(v0 + 136);

  return v1;
}

__n128 FeedGroupRegion.feedGroupBindingOptions.getter@<Q0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 224);
  *a1 = *(v1 + 208);
  *(a1 + 16) = v3;
  *(a1 + 32) = *(v1 + 240);
  result = *(v1 + 250);
  *(a1 + 42) = result;
  return result;
}

__n128 FeedGroupRegion.feedGroupBindingOptions.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(a1 + 16);
  *(v1 + 208) = *a1;
  *(v1 + 224) = v3;
  *(v1 + 240) = *(a1 + 32);
  result = *(a1 + 42);
  *(v1 + 250) = result;
  return result;
}

uint64_t *FeedGroupRegion.__allocating_init<A>(items:namespace:kind:)(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, uint64_t a5, uint64_t a6)
{
  swift_allocObject();
  v12 = sub_1D6D5C800(a1, a2, a3, a4, a5, a6);

  return v12;
}

uint64_t *FeedGroupRegion.init<A>(items:namespace:kind:)(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, uint64_t a5, uint64_t a6)
{
  v6 = sub_1D6D5C800(a1, a2, a3, a4, a5, a6);

  return v6;
}

uint64_t FeedGroupRegion.init<A>(items:groupIdentifier:groupItems:namespace:kind:slots:layoutOrder:groupDebug:feedGroupBindingOptions:selectors:feedGroupContextIdentifier:feedGroupRevision:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, __int128 *a7, uint64_t a8, unsigned __int8 *a9, uint64_t a10, __int128 *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v17 = sub_1D5D603F8(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17);

  return v17;
}

uint64_t FeedGroupRegion.__allocating_init(identifier:groupIdentifier:groupItems:namespace:kind:slots:layoutOrder:groupDebug:feedGroupBindingOptions:selectors:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char *a10, uint64_t a11, _OWORD *a12, uint64_t a13)
{
  v18 = swift_allocObject();
  v26 = *(a8 + 32);
  v27 = *(a8 + 48);
  v28 = *a10;
  *(v18 + 224) = 0u;
  *(v18 + 240) = 0u;
  *(v18 + 208) = 0u;
  *(v18 + 249) = 0u;
  *(v18 + 265) = 1;
  *(v18 + 16) = a3;
  *(v18 + 24) = a4;

  MEMORY[0x1DA6F9910](14906, 0xE200000000000000);
  MEMORY[0x1DA6F9910](a1, a2);

  *(v18 + 32) = a6;
  *(v18 + 40) = a7;
  *(v18 + 64) = MEMORY[0x1E69E7CC0];
  *(v18 + 72) = a5;
  *(v18 + 48) = a6;
  *(v18 + 56) = a7;
  v19 = *(a8 + 16);
  *(v18 + 80) = *a8;
  *(v18 + 96) = v19;
  *(v18 + 112) = v26;
  *(v18 + 128) = v27;
  *(v18 + 136) = 0;
  *(v18 + 144) = 0xE000000000000000;
  *(v18 + 152) = a9;
  *(v18 + 160) = v28;
  v20 = *(a11 + 16);
  *(v18 + 168) = *a11;
  *(v18 + 184) = v20;
  *(v18 + 200) = *(a11 + 32);
  swift_beginAccess();
  v21 = a12[1];
  *(v18 + 208) = *a12;
  v22 = a12[2];
  *(v18 + 224) = v21;
  *(v18 + 240) = v22;
  *(v18 + 250) = *(a12 + 42);
  *(v18 + 272) = a13;
  return v18;
}

uint64_t FeedGroupRegion.init(identifier:groupIdentifier:groupItems:namespace:kind:slots:layoutOrder:groupDebug:feedGroupBindingOptions:selectors:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char *a10, uint64_t a11, _OWORD *a12, uint64_t a13)
{
  v24 = *(a8 + 32);
  v25 = *(a8 + 48);
  v26 = *a10;
  *(v13 + 224) = 0u;
  *(v13 + 240) = 0u;
  *(v13 + 208) = 0u;
  *(v13 + 249) = 0u;
  *(v13 + 265) = 1;
  *(v13 + 16) = a3;
  *(v13 + 24) = a4;

  MEMORY[0x1DA6F9910](14906, 0xE200000000000000);
  MEMORY[0x1DA6F9910](a1, a2);

  *(v13 + 32) = a6;
  *(v13 + 40) = a7;
  *(v13 + 64) = MEMORY[0x1E69E7CC0];
  *(v13 + 72) = a5;
  *(v13 + 48) = a6;
  *(v13 + 56) = a7;
  v19 = *(a8 + 16);
  *(v13 + 80) = *a8;
  *(v13 + 96) = v19;
  *(v13 + 112) = v24;
  *(v13 + 128) = v25;
  *(v13 + 136) = 0;
  *(v13 + 144) = 0xE000000000000000;
  *(v13 + 152) = a9;
  *(v13 + 160) = v26;
  v20 = *(a11 + 16);
  *(v13 + 168) = *a11;
  *(v13 + 184) = v20;
  *(v13 + 200) = *(a11 + 32);
  swift_beginAccess();
  v21 = a12[1];
  *(v13 + 208) = *a12;
  v22 = a12[2];
  *(v13 + 224) = v21;
  *(v13 + 240) = v22;
  *(v13 + 250) = *(a12 + 42);
  *(v13 + 272) = a13;
  return v13;
}

uint64_t FeedGroupRegion.init(groupIdentifier:pluginModel:feedGroupDebug:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  *(v4 + 224) = 0u;
  *(v4 + 240) = 0u;
  *(v4 + 249) = 0u;
  *(v4 + 208) = 0u;
  v8 = (v4 + 208);
  *(v4 + 265) = 1;
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  *(v4 + 32) = _s5TeaUI11PluginModelC8NewsFeedE15debugIdentifierSSvg_0();
  *(v4 + 40) = v9;
  sub_1D725CC0C();
  sub_1D5E4049C();
  *(v4 + 136) = sub_1D7263ADC();
  *(v4 + 144) = v10;
  sub_1D6D5CBE0(0, &qword_1EDF02218, type metadata accessor for FeedItem, MEMORY[0x1E69E6F90]);
  v11 = *(type metadata accessor for FeedItem(0) - 8);
  v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1D7273AE0;
  *(v13 + v12) = a3;
  swift_storeEnumTagMultiPayload();
  v14 = MEMORY[0x1E69E7CD0];
  *(v5 + 64) = v13;
  *(v5 + 72) = v14;
  *(v5 + 48) = 0;
  *(v5 + 56) = 0xE000000000000000;
  *(v5 + 80) = 0x8000000000000050;
  *(v5 + 88) = 0u;
  *(v5 + 104) = 0u;
  *(v5 + 120) = 0u;
  *(v5 + 152) = MEMORY[0x1E69E7CC0];
  *(v5 + 160) = 1;
  sub_1D5D64DD0(a4, v5 + 168);
  swift_beginAccess();
  *(v5 + 249) = 0u;
  *(v5 + 224) = 0u;
  *(v5 + 240) = 0u;
  *v8 = 0u;
  *(v5 + 265) = 1;
  sub_1D6330678(a4);
  *(v5 + 272) = v14;
  return v5;
}

uint64_t FeedGroupRegion.deinit()
{

  sub_1D5BC6C20(*(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128));

  sub_1D6330678(v0 + 168);

  return v0;
}

uint64_t FeedGroupRegion.__deallocating_deinit()
{
  FeedGroupRegion.deinit();

  return swift_deallocClassInstance();
}

uint64_t *sub_1D6D5C800(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v11 = *v6;
  v12 = *a4;
  v42 = a4[1];
  v43 = v12;
  v13 = *(a4 + 4);
  v40 = *(a4 + 5);
  v41 = v13;
  v39 = *(a4 + 6);
  v53 = 1;
  *(v6 + 13) = 0u;
  *(v6 + 14) = 0u;
  *(v6 + 15) = 0u;
  *(v6 + 249) = 0u;
  *(v6 + 265) = 1;
  v6[2] = a2;
  v6[3] = a3;
  v44 = a2;
  v51 = a2;
  v52 = a3;
  v36[4] = v11;
  v45 = a3;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1DA6F9910](14906, 0xE200000000000000);
  v46 = a1;
  v50 = a1;
  v48 = a5;
  v49 = a6;
  v38 = a6;
  v14 = sub_1D72627FC();
  WitnessTable = swift_getWitnessTable();
  v50 = sub_1D5B874E4(sub_1D6D5CCF4, v47, v14, MEMORY[0x1E69E6158], MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v15);
  sub_1D5BBE0A8();
  sub_1D5D60824(&qword_1EDF3C840, 255, sub_1D5BBE0A8, MEMORY[0x1E69E6310]);
  v16 = sub_1D7261F3C();
  v18 = v17;

  MEMORY[0x1DA6F9910](v16, v18);

  v20 = v52;
  v6[4] = v51;
  v6[5] = v20;
  v51 = v46;
  MEMORY[0x1EEE9AC00](v19, v21);
  v22 = v38;
  swift_getWitnessTable();
  v51 = sub_1D726242C();
  v23 = sub_1D7261F3C();
  v25 = v24;

  v7[17] = v23;
  v7[18] = v25;
  v51 = v46;
  MEMORY[0x1EEE9AC00](v26, v27);
  v36[2] = a5;
  v36[3] = v22;
  v28 = type metadata accessor for FeedItem(0);
  v30 = sub_1D5B874E4(sub_1D6D5CD0C, v36, v14, v28, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v29);
  v31 = MEMORY[0x1E69E7CD0];
  v7[8] = v30;
  v7[9] = v31;
  v32 = v45;
  v7[6] = v44;
  v7[7] = v32;
  v33 = v42;
  *(v7 + 5) = v43;
  *(v7 + 6) = v33;
  v34 = v40;
  v7[14] = v41;
  v7[15] = v34;
  v7[16] = v39;
  v7[19] = MEMORY[0x1E69E7CC0];
  *(v7 + 160) = 0;
  *(v7 + 21) = 0u;
  *(v7 + 23) = 0u;
  v7[25] = 0;
  v7[34] = v31;
  return v7;
}

void sub_1D6D5CBE0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_1D6D5CD3C(uint64_t a1)
{
  sub_1D5E4CF90(0);
  v3 = v2;
  v5 = MEMORY[0x1EEE9AC00](v2, v4);
  (*(v7 + 16))(&v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3, v5);
  sub_1D5B4A39C(&unk_1EDF17890, sub_1D5E4CF90, MEMORY[0x1E69D6BB0]);
  sub_1D726238C();
  i = v40;
  if (v40 >> 62)
  {
    goto LABEL_51;
  }

  v9 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v10 = v41;
  v33 = i;
  if (v41 != v9)
  {
    v36 = i & 0xFFFFFFFFFFFFFF8;
    v37 = i & 0xC000000000000001;
    v11 = MEMORY[0x1E69E7CC0];
    v34 = v9;
    v35 = i + 32;
    while (1)
    {
      if (v37)
      {
        v13 = MEMORY[0x1DA6FB460](v10, v33);
        v14 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          goto LABEL_45;
        }
      }

      else
      {
        if ((v10 & 0x8000000000000000) != 0)
        {
          goto LABEL_44;
        }

        if (v10 >= *(v36 + 16))
        {
          goto LABEL_46;
        }

        v13 = *(v35 + 8 * v10);

        v14 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          goto LABEL_45;
        }
      }

      v41 = v14;
      v15 = *(v13 + 32);

      i = v15 >> 62;
      v16 = v15 >> 62 ? sub_1D7263BFC() : *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v17 = v11 >> 62;
      if (v11 >> 62)
      {
        v31 = sub_1D7263BFC();
        v19 = v31 + v16;
        if (__OFADD__(v31, v16))
        {
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
          v9 = sub_1D7263BFC();
          goto LABEL_3;
        }
      }

      else
      {
        v18 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v19 = v18 + v16;
        if (__OFADD__(v18, v16))
        {
          goto LABEL_43;
        }
      }

      if (swift_isUniquelyReferenced_nonNull_bridgeObject())
      {
        break;
      }

      if (v17)
      {
        goto LABEL_22;
      }

LABEL_23:
      v11 = sub_1D7263DDC();
      v20 = v11 & 0xFFFFFFFFFFFFFF8;
LABEL_24:
      v21 = *(v20 + 16);
      v22 = *(v20 + 24);
      if (i)
      {
        v23 = sub_1D7263BFC();
        if (v23)
        {
LABEL_28:
          if (((v22 >> 1) - v21) < v16)
          {
            goto LABEL_48;
          }

          v42 = v11;
          v24 = v20 + 8 * v21 + 32;
          v38 = v16;
          if (i)
          {
            if (v23 < 1)
            {
              goto LABEL_50;
            }

            sub_1D5F87C68(0);
            sub_1D5B4A39C(&qword_1EDF049F8, sub_1D5F87C68, MEMORY[0x1E69E6340]);
            for (i = 0; i != v23; ++i)
            {
              v25 = sub_1D6D87760(v39, i, v15);
              v27 = *v26;
              swift_unknownObjectRetain();
              (v25)(v39, 0);
              *(v24 + 8 * i) = v27;
            }
          }

          else
          {
            sub_1D5B5534C(0, &qword_1EDF04500, &protocolRef_FCSportsProviding);
            swift_arrayInitWithCopy();
          }

          v9 = v34;
          v11 = v42;
          if (v38 >= 1)
          {
            v28 = *(v20 + 16);
            v29 = __OFADD__(v28, v38);
            v30 = v28 + v38;
            if (v29)
            {
              goto LABEL_49;
            }

            *(v20 + 16) = v30;
          }

          goto LABEL_8;
        }
      }

      else
      {
        v23 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v23)
        {
          goto LABEL_28;
        }
      }

      if (v16 > 0)
      {
        goto LABEL_47;
      }

LABEL_8:
      v10 = v41;
      if (v41 == v9)
      {
        goto LABEL_5;
      }
    }

    if (!v17)
    {
      v20 = v11 & 0xFFFFFFFFFFFFFF8;
      if (v19 <= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        goto LABEL_24;
      }

      goto LABEL_23;
    }

LABEL_22:
    sub_1D7263BFC();
    goto LABEL_23;
  }

  v11 = MEMORY[0x1E69E7CC0];
LABEL_5:

  return v11;
}

uint64_t FormatContentPool.init(headlines:headlineLists:issues:tags:tagFeeds:tagFeedFetches:puzzles:puzzleTypes:puzzleStatistics:recipes:recipeLists:placeholders:slotPlaceholders:webArchivePromises:resourcePromises:sportsDataVisualizations:genericDataVisualizations:sponsoredAdBanner:)@<X0>(unint64_t isUniquelyReferenced_nonNull_native@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, unint64_t a8@<X7>, id **a9@<X8>, uint64_t a10, unint64_t a11, id *a12, void *a13, void *a14, id *a15, id *a16, unint64_t a17, id *a18, unint64_t a19)
{
  v538 = a8;
  v535 = a6;
  v533 = a5;
  v543 = a4;
  v536 = a2;
  v534 = a9;
  v532 = type metadata accessor for PuzzleStatistic(0);
  v531 = *(v532 - 8);
  MEMORY[0x1EEE9AC00](v532, v22);
  v544 = &v531 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x1EEE9AC00](v24, v25);
  v28 = (&v531 - v27);
  if (isUniquelyReferenced_nonNull_native >> 62)
  {
    goto LABEL_52;
  }

  for (i = *((isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1D7263BFC())
  {
    v545 = a3;
    v539 = a7;
    v537 = v28;
    a3 = &selRef_accountStore;
    if (i)
    {
      v30 = 0;
      v541 = isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8;
      v542 = isUniquelyReferenced_nonNull_native & 0xC000000000000001;
      v28 = MEMORY[0x1E69E7CC8];
      v540 = isUniquelyReferenced_nonNull_native;
      while (1)
      {
        if (v542)
        {
          v32 = MEMORY[0x1DA6FB460](v30, isUniquelyReferenced_nonNull_native, v26);
          v33 = v30 + 1;
          if (__OFADD__(v30, 1))
          {
            goto LABEL_44;
          }
        }

        else
        {
          if (v30 >= *(v541 + 16))
          {
            goto LABEL_45;
          }

          v32 = *(isUniquelyReferenced_nonNull_native + 8 * v30 + 32);
          swift_unknownObjectRetain();
          v33 = v30 + 1;
          if (__OFADD__(v30, 1))
          {
LABEL_44:
            __break(1u);
LABEL_45:
            __break(1u);
LABEL_46:
            __break(1u);
            goto LABEL_47;
          }
        }

        v34 = [v32 identifier];
        a7 = sub_1D726207C();
        v36 = v35;

        swift_unknownObjectRetain();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v553 = v28;
        a3 = sub_1D5B69D90(a7, v36);
        v38 = v28[2];
        v39 = (v37 & 1) == 0;
        v40 = v38 + v39;
        if (__OFADD__(v38, v39))
        {
          goto LABEL_46;
        }

        v41 = v37;
        if (v28[3] >= v40)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            if (v37)
            {
              goto LABEL_5;
            }
          }

          else
          {
            sub_1D6D7D9AC(sub_1D6D8C5CC);
            if (v41)
            {
              goto LABEL_5;
            }
          }
        }

        else
        {
          sub_1D6D663A8(v40, isUniquelyReferenced_nonNull_native, sub_1D6D8C5CC);
          v42 = sub_1D5B69D90(a7, v36);
          if ((v41 & 1) != (v43 & 1))
          {
LABEL_449:
            result = sub_1D726493C();
            __break(1u);
            return result;
          }

          a3 = v42;
          if (v41)
          {
LABEL_5:

            v28 = v553;
            v31 = v553[7];
            a7 = v31[a3];
            v31[a3] = v32;
            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
            goto LABEL_6;
          }
        }

        v28 = v553;
        v553[(a3 >> 6) + 8] = (v553[(a3 >> 6) + 8] | (1 << a3));
        v44 = v28[6] + 16 * a3;
        *v44 = a7;
        v44[1] = v36;
        *(v28[7] + a3) = v32;
        swift_unknownObjectRelease();
        v45 = v28[2];
        v46 = __OFADD__(v45, 1);
        v47 = v45 + 1;
        if (v46)
        {
          goto LABEL_50;
        }

        v28[2] = v47;
LABEL_6:
        ++v30;
        a3 = &selRef_accountStore;
        isUniquelyReferenced_nonNull_native = v540;
        if (v33 == i)
        {
          goto LABEL_25;
        }
      }
    }

    v28 = MEMORY[0x1E69E7CC8];
LABEL_25:

    v48 = v534;
    v49 = v536;
    *v534 = v28;
    v48[1] = v49;
    v50 = v545;
    if (v545 >> 62)
    {
      break;
    }

    v51 = *((v545 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v51)
    {
      goto LABEL_54;
    }

LABEL_27:
    v52 = 0;
    v542 = v50 & 0xC000000000000001;
    v53 = v50 & 0xFFFFFFFFFFFFFF8;
    v28 = MEMORY[0x1E69E7CC8];
    while (1)
    {
      if (v542)
      {
        v56 = MEMORY[0x1DA6FB460](v52, v50);
      }

      else
      {
        if (v52 >= *(v53 + 16))
        {
          goto LABEL_48;
        }

        v56 = *(v50 + 8 * v52 + 32);
      }

      a7 = v56;
      isUniquelyReferenced_nonNull_native = v52 + 1;
      if (__OFADD__(v52, 1))
      {
        break;
      }

      v57 = [v56 identifier];
      v58 = sub_1D726207C();
      v60 = v59;

      v55 = a7;
      a3 = swift_isUniquelyReferenced_nonNull_native();
      v553 = v28;
      v61 = sub_1D5B69D90(v58, v60);
      v63 = v28[2];
      v64 = (v62 & 1) == 0;
      v46 = __OFADD__(v63, v64);
      v65 = v63 + v64;
      if (v46)
      {
        goto LABEL_49;
      }

      a7 = v62;
      if (v28[3] >= v65)
      {
        if ((a3 & 1) == 0)
        {
          v70 = v61;
          sub_1D6D7D3E8(sub_1D6D8C554);
          v61 = v70;
        }
      }

      else
      {
        sub_1D5C416B4(v65, a3, sub_1D6D8C554);
        v61 = sub_1D5B69D90(v58, v60);
        if ((a7 & 1) != (v66 & 1))
        {
          goto LABEL_449;
        }
      }

      a3 = &selRef_accountStore;
      v28 = v553;
      if (a7)
      {
        v54 = v553[7];
        a7 = v54[v61];
        v54[v61] = v55;

        v55 = a7;
      }

      else
      {
        v553[(v61 >> 6) + 8] = (v553[(v61 >> 6) + 8] | (1 << v61));
        v67 = (v28[6] + 16 * v61);
        *v67 = v58;
        v67[1] = v60;
        *(v28[7] + v61) = v55;
        v68 = v28[2];
        v46 = __OFADD__(v68, 1);
        v69 = v68 + 1;
        if (v46)
        {
          goto LABEL_51;
        }

        v28[2] = v69;
      }

      ++v52;
      v50 = v545;
      if (isUniquelyReferenced_nonNull_native == v51)
      {
        goto LABEL_55;
      }
    }

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
    ;
  }

  v71 = v545;
  v51 = sub_1D7263BFC();
  v50 = v71;
  if (v51)
  {
    goto LABEL_27;
  }

LABEL_54:
  v28 = MEMORY[0x1E69E7CC8];
LABEL_55:

  v534[2] = v28;
  v72 = v543;
  if (v543 >> 62)
  {
    goto LABEL_78;
  }

  v73 = *((v543 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v73)
  {
LABEL_57:
    v74 = 0;
    v545 = v72 & 0xC000000000000001;
    v75 = v72 & 0xFFFFFFFFFFFFFF8;
    v76 = MEMORY[0x1E69E7CC8];
    while (1)
    {
      if (v545)
      {
        v77 = MEMORY[0x1DA6FB460](v74);
        v78 = v74 + 1;
        if (__OFADD__(v74, 1))
        {
          goto LABEL_74;
        }
      }

      else
      {
        if (v74 >= *(v75 + 16))
        {
          goto LABEL_75;
        }

        v77 = *(v72 + 8 * v74 + 32);
        swift_unknownObjectRetain();
        v78 = v74 + 1;
        if (__OFADD__(v74, 1))
        {
LABEL_74:
          __break(1u);
LABEL_75:
          __break(1u);
LABEL_76:
          __break(1u);
LABEL_77:
          __break(1u);
LABEL_78:
          v94 = sub_1D7263BFC();
          v72 = v543;
          v73 = v94;
          if (!v94)
          {
            break;
          }

          goto LABEL_57;
        }
      }

      v79 = [v77 *(a3 + 248)];
      v80 = sub_1D726207C();
      v82 = v81;

      swift_unknownObjectRetain();
      a3 = swift_isUniquelyReferenced_nonNull_native();
      v553 = v76;
      v83 = sub_1D5B69D90(v80, v82);
      v85 = v76[2];
      v86 = (v84 & 1) == 0;
      v46 = __OFADD__(v85, v86);
      v87 = v85 + v86;
      if (v46)
      {
        goto LABEL_76;
      }

      v88 = v84;
      if (v76[3] >= v87)
      {
        if ((a3 & 1) == 0)
        {
          v93 = v83;
          sub_1D6D7D9AC(sub_1D6D8C4DC);
          v83 = v93;
        }
      }

      else
      {
        sub_1D6D663A8(v87, a3, sub_1D6D8C4DC);
        v83 = sub_1D5B69D90(v80, v82);
        if ((v88 & 1) != (v89 & 1))
        {
          goto LABEL_449;
        }
      }

      a3 = &selRef_accountStore;
      v76 = v553;
      if (v88)
      {
        *(v553[7] + v83) = v77;

        swift_unknownObjectRelease();
      }

      else
      {
        v553[(v83 >> 6) + 8] = (v553[(v83 >> 6) + 8] | (1 << v83));
        v90 = (v76[6] + 16 * v83);
        *v90 = v80;
        v90[1] = v82;
        *(v76[7] + v83) = v77;
        v91 = v76[2];
        v46 = __OFADD__(v91, 1);
        v92 = v91 + 1;
        if (v46)
        {
          goto LABEL_77;
        }

        v76[2] = v92;
      }

      swift_unknownObjectRelease();
      ++v74;
      v72 = v543;
      if (v78 == v73)
      {
        goto LABEL_80;
      }
    }
  }

  v76 = MEMORY[0x1E69E7CC8];
LABEL_80:

  v95 = v534;
  v96 = v533;
  v534[3] = v76;
  v95[4] = v96;
  v545 = (v95 + 3);
  v95[5] = v535;
  v97 = v539;
  if (v539 >> 62)
  {
    goto LABEL_105;
  }

  v98 = *((v539 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v98)
  {
LABEL_82:
    v99 = 0;
    v542 = v97 & 0xFFFFFFFFFFFFFF8;
    v543 = v97 & 0xC000000000000001;
    v100 = MEMORY[0x1E69E7CC8];
    while (1)
    {
      if (v543)
      {
        v97 = MEMORY[0x1DA6FB460](v99, v97);
        v101 = v97;
        v102 = v99 + 1;
        if (__OFADD__(v99, 1))
        {
          goto LABEL_101;
        }
      }

      else
      {
        if (v99 >= *(v542 + 16))
        {
          goto LABEL_102;
        }

        v101 = *(v97 + 8 * v99 + 32);
        v97 = swift_unknownObjectRetain();
        v102 = v99 + 1;
        if (__OFADD__(v99, 1))
        {
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          v118 = v97;
          v98 = sub_1D7263BFC();
          v97 = v118;
          if (!v98)
          {
            goto LABEL_106;
          }

          goto LABEL_82;
        }
      }

      v103 = [v101 *(a3 + 248)];
      v104 = sub_1D726207C();
      v106 = v105;

      swift_unknownObjectRetain();
      v107 = swift_isUniquelyReferenced_nonNull_native();
      v553 = v100;
      v97 = sub_1D5B69D90(v104, v106);
      v109 = v100[2];
      v110 = (v108 & 1) == 0;
      v46 = __OFADD__(v109, v110);
      v111 = v109 + v110;
      if (v46)
      {
        goto LABEL_103;
      }

      v112 = v108;
      if (v100[3] < v111)
      {
        break;
      }

      if (v107)
      {
        goto LABEL_93;
      }

      v117 = v97;
      sub_1D6D7D9AC(sub_1D6D8C464);
      v97 = v117;
      a3 = 0x1E84D8000;
      v100 = v553;
      if (v112)
      {
LABEL_83:
        *(v100[7] + v97) = v101;

        swift_unknownObjectRelease();
        goto LABEL_84;
      }

LABEL_94:
      v100[(v97 >> 6) + 8] = (v100[(v97 >> 6) + 8] | (1 << v97));
      v114 = (v100[6] + 16 * v97);
      *v114 = v104;
      v114[1] = v106;
      *(v100[7] + v97) = v101;
      v115 = v100[2];
      v46 = __OFADD__(v115, 1);
      v116 = v115 + 1;
      if (v46)
      {
        goto LABEL_104;
      }

      v100[2] = v116;
LABEL_84:
      swift_unknownObjectRelease();
      ++v99;
      v97 = v539;
      if (v102 == v98)
      {
        goto LABEL_107;
      }
    }

    sub_1D6D663A8(v111, v107, sub_1D6D8C464);
    v97 = sub_1D5B69D90(v104, v106);
    if ((v112 & 1) != (v113 & 1))
    {
      goto LABEL_449;
    }

LABEL_93:
    v100 = v553;
    if (v112)
    {
      goto LABEL_83;
    }

    goto LABEL_94;
  }

LABEL_106:
  v100 = MEMORY[0x1E69E7CC8];
LABEL_107:

  v534[6] = v100;
  v119 = v538;
  if (v538 >> 62)
  {
    goto LABEL_132;
  }

  v120 = *((v538 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v120)
  {
LABEL_109:
    v121 = 0;
    v542 = v119 & 0xFFFFFFFFFFFFFF8;
    v543 = v119 & 0xC000000000000001;
    v122 = MEMORY[0x1E69E7CC8];
    while (1)
    {
      if (v543)
      {
        v123 = MEMORY[0x1DA6FB460](v121);
        v124 = v121 + 1;
        if (__OFADD__(v121, 1))
        {
          goto LABEL_128;
        }
      }

      else
      {
        if (v121 >= *(v542 + 16))
        {
          goto LABEL_129;
        }

        v123 = *(v119 + 8 * v121 + 32);
        swift_unknownObjectRetain();
        v124 = v121 + 1;
        if (__OFADD__(v121, 1))
        {
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          v141 = sub_1D7263BFC();
          v119 = v538;
          v120 = v141;
          if (!v141)
          {
            goto LABEL_133;
          }

          goto LABEL_109;
        }
      }

      v125 = [v123 *(a3 + 248)];
      v126 = sub_1D726207C();
      v128 = v127;

      swift_unknownObjectRetain();
      v129 = swift_isUniquelyReferenced_nonNull_native();
      v553 = v122;
      v130 = sub_1D5B69D90(v126, v128);
      v132 = v122[2];
      v133 = (v131 & 1) == 0;
      v46 = __OFADD__(v132, v133);
      v134 = v132 + v133;
      if (v46)
      {
        goto LABEL_130;
      }

      v135 = v131;
      if (v122[3] < v134)
      {
        break;
      }

      if (v129)
      {
        goto LABEL_120;
      }

      v140 = v130;
      sub_1D6D7D9AC(sub_1D6D8C3EC);
      v130 = v140;
      a3 = 0x1E84D8000;
      v122 = v553;
      if (v135)
      {
LABEL_110:
        *(v122[7] + v130) = v123;

        swift_unknownObjectRelease();
        goto LABEL_111;
      }

LABEL_121:
      v122[(v130 >> 6) + 8] = (v122[(v130 >> 6) + 8] | (1 << v130));
      v137 = (v122[6] + 16 * v130);
      *v137 = v126;
      v137[1] = v128;
      *(v122[7] + v130) = v123;
      v138 = v122[2];
      v46 = __OFADD__(v138, 1);
      v139 = v138 + 1;
      if (v46)
      {
        goto LABEL_131;
      }

      v122[2] = v139;
LABEL_111:
      swift_unknownObjectRelease();
      ++v121;
      v119 = v538;
      if (v124 == v120)
      {
        goto LABEL_134;
      }
    }

    sub_1D6D663A8(v134, v129, sub_1D6D8C3EC);
    v130 = sub_1D5B69D90(v126, v128);
    if ((v135 & 1) != (v136 & 1))
    {
      goto LABEL_449;
    }

LABEL_120:
    v122 = v553;
    if (v135)
    {
      goto LABEL_110;
    }

    goto LABEL_121;
  }

LABEL_133:
  v122 = MEMORY[0x1E69E7CC8];
LABEL_134:

  v534[7] = v122;
  v143 = *(a10 + 16);
  if (v143)
  {
    v144 = *(v531 + 80);
    v543 = *(v532 + 20);
    v533 = a10;
    v145 = a10 + ((v144 + 32) & ~v144);
    v146 = *(v531 + 72);
    v541 = 0x80000001D73B7450;
    v542 = 0x80000001D73B7480;
    v539 = 0x80000001D73B7410;
    v540 = 0x80000001D73B7430;
    v538 = 0x80000001D73B73F0;
    v147 = MEMORY[0x1E69E7CC8];
    v535 = v146;
    v536 = 0xD000000000000015;
    v148 = v537;
    do
    {
      v149 = v148;
      v150 = [*v148 *(a3 + 248)];
      v151 = sub_1D726207C();
      v153 = v152;

      PuzzleStatisticCategory.statisticType.getter(&v552);
      v154 = 0x53646570756F7267;
      if (v552 != 9)
      {
        v154 = v536;
      }

      v155 = v542;
      if (v552 == 9)
      {
        v155 = 0xEC00000073746174;
      }

      if (v552 == 8)
      {
        v154 = 0xD00000000000001DLL;
      }

      v156 = v540;
      if (v552 == 8)
      {
        v155 = v541;
      }

      if (v552 == 6)
      {
        v157 = 0xD00000000000001CLL;
      }

      else
      {
        v157 = 0xD00000000000001DLL;
      }

      if (v552 == 6)
      {
        v156 = v539;
      }

      if (v552 == 5)
      {
        v157 = 0xD00000000000001CLL;
        v156 = v538;
      }

      if (v552 <= 7u)
      {
        v154 = v157;
        v155 = v156;
      }

      v158 = 0x5374636566726570;
      if (v552 != 3)
      {
        v158 = 0x74615265766C6F73;
      }

      v159 = 0xE900000000000065;
      if (v552 == 3)
      {
        v159 = 0xED00006465766C6FLL;
      }

      if (v552 == 2)
      {
        v158 = 0x5373656C7A7A7570;
        v159 = 0xED00006465766C6FLL;
      }

      v160 = 0x53747365676E6F6CLL;
      if (v552)
      {
        v160 = 0x53746E6572727563;
      }

      if (v552 <= 1u)
      {
        v158 = v160;
        v159 = 0xED00006B61657274;
      }

      if (v552 <= 4u)
      {
        v161 = v158;
      }

      else
      {
        v161 = v154;
      }

      if (v552 <= 4u)
      {
        v162 = v159;
      }

      else
      {
        v162 = v155;
      }

      v553 = v151;
      v554 = v153;

      MEMORY[0x1DA6F9910](v161, v162);

      v164 = v553;
      v163 = v554;
      sub_1D6D878E8(v149, v544, v165);
      v166 = swift_isUniquelyReferenced_nonNull_native();
      v553 = v147;
      v167 = sub_1D5B69D90(v164, v163);
      v169 = v147[2];
      v170 = (v168 & 1) == 0;
      v46 = __OFADD__(v169, v170);
      v171 = v169 + v170;
      if (v46)
      {
LABEL_424:
        __break(1u);
        goto LABEL_425;
      }

      v172 = v168;
      if (v147[3] >= v171)
      {
        v148 = v537;
        if ((v166 & 1) == 0)
        {
          v178 = v167;
          sub_1D6D7E474(type metadata accessor for PuzzleStatistic, sub_1D6D8C0AC, sub_1D6D878E8, sub_1D6D87900);
          v148 = v537;
          v167 = v178;
        }
      }

      else
      {
        sub_1D5D5DF18(v171, v166, type metadata accessor for PuzzleStatistic, sub_1D6D8C0AC, sub_1D6D87900, sub_1D6D878E8);
        v167 = sub_1D5B69D90(v164, v163);
        if ((v172 & 1) != (v173 & 1))
        {
          goto LABEL_449;
        }

        v148 = v537;
      }

      v174 = v535;
      v147 = v553;
      if (v172)
      {
        sub_1D6D88C1C(v544, v553[7] + v167 * v535, type metadata accessor for PuzzleStatistic);
      }

      else
      {
        v553[(v167 >> 6) + 8] = (v553[(v167 >> 6) + 8] | (1 << v167));
        v175 = (v147[6] + 16 * v167);
        *v175 = v164;
        v175[1] = v163;
        sub_1D6D87900(v544, v147[7] + v167 * v174);
        v176 = v147[2];
        v46 = __OFADD__(v176, 1);
        v177 = v176 + 1;
        if (v46)
        {
          goto LABEL_438;
        }

        v147[2] = v177;
      }

      sub_1D5CEB1A0(v148, type metadata accessor for PuzzleStatistic);
      v145 += v174;
      --v143;
    }

    while (v143);
  }

  else
  {

    v147 = MEMORY[0x1E69E7CC8];
  }

  v145 = a11;
  v534[8] = v147;
  if (a11 >> 62)
  {
    goto LABEL_448;
  }

  for (j = *((a11 & 0xFFFFFFFFFFFFFF8) + 0x10); ; j = sub_1D7263BFC())
  {
    v180 = MEMORY[0x1E69E7CC8];
    if (!j)
    {
      break;
    }

    v181 = 0;
    v544 = v145 & 0xC000000000000001;
    v182 = v145 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v544)
      {
        v183 = MEMORY[0x1DA6FB460](v181, v145);
      }

      else
      {
        if (v181 >= *(v182 + 16))
        {
          goto LABEL_426;
        }

        v183 = *(v145 + 8 * v181 + 32);
      }

      v184 = v183;
      v185 = v181 + 1;
      if (__OFADD__(v181, 1))
      {
        break;
      }

      v186 = v145;
      v187 = [v183 identifier];
      v188 = sub_1D726207C();
      v190 = v189;

      v145 = v186;
      v191 = v184;
      v192 = swift_isUniquelyReferenced_nonNull_native();
      v553 = v180;
      sub_1D6D7BFF4(v191, v188, v190, v192, sub_1D62D57AC);

      v180 = v553;
      ++v181;
      if (v185 == j)
      {
        goto LABEL_193;
      }
    }

LABEL_425:
    __break(1u);
LABEL_426:
    __break(1u);
LABEL_427:
    __break(1u);
LABEL_428:
    __break(1u);
LABEL_429:
    __break(1u);
LABEL_430:
    __break(1u);
LABEL_431:
    __break(1u);
LABEL_432:
    __break(1u);
LABEL_433:
    __break(1u);
LABEL_434:
    __break(1u);
LABEL_435:
    __break(1u);
LABEL_436:
    __break(1u);
LABEL_437:
    __break(1u);
LABEL_438:
    __break(1u);
LABEL_439:
    __break(1u);
LABEL_440:
    __break(1u);
LABEL_441:
    __break(1u);
LABEL_442:
    __break(1u);
LABEL_443:
    __break(1u);
LABEL_444:
    __break(1u);
LABEL_445:
    __break(1u);
LABEL_446:
    __break(1u);
LABEL_447:
    __break(1u);
LABEL_448:
    ;
  }

LABEL_193:

  v193 = a17;
  v194 = v534;
  v534[9] = v180;
  v194[10] = a12;
  v552 = MEMORY[0x1E69E7CC8];
  v553 = MEMORY[0x1E69E7CC8];
  v550 = MEMORY[0x1E69E7CC8];
  v551 = MEMORY[0x1E69E7CC8];
  v548 = MEMORY[0x1E69E7CC8];
  v549 = MEMORY[0x1E69E7CC8];
  v547 = MEMORY[0x1E69E7CC8];
  v538 = *(a17 + 16);
  if (v538)
  {
    v195 = 0;
    v535 = 0;
    v536 = a17;
    v537 = (a17 + 32);
    while (1)
    {
      if (v195 >= *(v193 + 16))
      {
        goto LABEL_446;
      }

      v196 = v537[v195];
      v197 = v196 >> 61;
      v540 = v195;
      if ((v196 >> 61) > 2)
      {
        v198 = v196 & 0x1FFFFFFFFFFFFFFFLL;
        if (v197 <= 4)
        {
          if (v197 == 3)
          {
            v145 = *((v196 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
            v199 = *(v145 + 48);

            v200 = [v199 identifier];
            v201 = sub_1D726207C();
            v203 = v202;

            sub_1D6D60400(v204, v201, v203, sub_1D6D76C28, sub_1D6716D80, sub_1D6D7D8B0);
            v205 = [objc_msgSend(*(v145 + 48) eventLeagueTag)];
            swift_unknownObjectRelease();
            v206 = sub_1D726207C();
            v208 = v207;

            sub_1D6D602E0([*(v145 + 48) eventLeagueTag], v206, v208);
            v209 = [*(v145 + 48) eventCompetitorTags];
            if (v209)
            {
              v210 = v209;
              sub_1D5B5534C(0, &qword_1EDF04500, &protocolRef_FCSportsProviding);
              v211 = sub_1D726267C();

              if (!(v211 >> 62))
              {
LABEL_201:
                v212 = *((v211 & 0xFFFFFFFFFFFFFF8) + 0x10);
                if (v212)
                {
                  goto LABEL_202;
                }

LABEL_402:

                goto LABEL_367;
              }
            }

            else
            {
              v211 = MEMORY[0x1E69E7CC0];
              if (!(MEMORY[0x1E69E7CC0] >> 62))
              {
                goto LABEL_201;
              }
            }

            v212 = sub_1D7263BFC();
            if (v212)
            {
LABEL_202:
              v539 = v145;
              v145 = 0;
              v543 = v211;
              v544 = v211 & 0xC000000000000001;
              v541 = v198;
              v542 = v211 & 0xFFFFFFFFFFFFFF8;
              while (1)
              {
                if (v544)
                {
                  v214 = MEMORY[0x1DA6FB460](v145, v211);
                  v215 = v145 + 1;
                  if (__OFADD__(v145, 1))
                  {
                    goto LABEL_406;
                  }
                }

                else
                {
                  if (v145 >= *(v542 + 16))
                  {
                    goto LABEL_439;
                  }

                  v214 = *(v211 + 8 * v145 + 32);
                  swift_unknownObjectRetain();
                  v215 = v145 + 1;
                  if (__OFADD__(v145, 1))
                  {
                    goto LABEL_406;
                  }
                }

                v216 = [v214 identifier];
                v217 = sub_1D726207C();
                v219 = v218;

                swift_unknownObjectRetain();
                v220 = v545;
                v221 = *v545;
                v222 = swift_isUniquelyReferenced_nonNull_native();
                v546 = v221;
                *v220 = 0x8000000000000000;
                v223 = sub_1D5B69D90(v217, v219);
                v225 = v224;
                v226 = v221[2];
                v227 = (v224 & 1) == 0;
                if (__OFADD__(v226, v227))
                {
                  goto LABEL_411;
                }

                v228 = v223;
                if (sub_1D6D76900(v222, v226 + v227))
                {
                  v229 = sub_1D5B69D90(v217, v219);
                  if ((v225 & 1) != (v230 & 1))
                  {
                    goto LABEL_449;
                  }

                  v228 = v229;
                }

                if (v225)
                {

                  v213 = v546;
                  *(v546[7] + 8 * v228) = v214;
                  swift_unknownObjectRelease();
                  swift_unknownObjectRelease();
                }

                else
                {
                  v213 = v546;
                  v546[(v228 >> 6) + 8] |= 1 << v228;
                  v231 = (v213[6] + 16 * v228);
                  *v231 = v217;
                  v231[1] = v219;
                  *(v213[7] + 8 * v228) = v214;
                  swift_unknownObjectRelease();
                  v232 = v213[2];
                  v46 = __OFADD__(v232, 1);
                  v233 = v232 + 1;
                  if (v46)
                  {
                    goto LABEL_430;
                  }

                  v213[2] = v233;
                }

                *v545 = v213;
                ++v145;
                v211 = v543;
                if (v215 == v212)
                {
                  goto LABEL_402;
                }
              }
            }

            goto LABEL_402;
          }

          v145 = *((v196 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
          v385 = *(v145 + 48);

          v386 = [v385 identifier];
          v387 = sub_1D726207C();
          v389 = v388;

          sub_1D6D60400(v390, v387, v389, sub_1D6D76BFC, sub_1D6716D80, sub_1D6D7D898);
          v391 = [objc_msgSend(*(v145 + 48) eventLeagueTag)];
          swift_unknownObjectRelease();
          v392 = sub_1D726207C();
          v394 = v393;

          sub_1D6D602E0([*(v145 + 48) eventLeagueTag], v392, v394);
          v395 = [*(v145 + 48) eventCompetitorTags];
          if (v395)
          {
            v396 = v395;
            sub_1D5B5534C(0, &qword_1EDF04500, &protocolRef_FCSportsProviding);
            v397 = sub_1D726267C();

            if (!(v397 >> 62))
            {
              goto LABEL_311;
            }
          }

          else
          {
            v397 = MEMORY[0x1E69E7CC0];
            if (!(MEMORY[0x1E69E7CC0] >> 62))
            {
LABEL_311:
              v398 = *((v397 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (v398)
              {
                goto LABEL_312;
              }

              goto LABEL_402;
            }
          }

          v398 = sub_1D7263BFC();
          if (v398)
          {
LABEL_312:
            v539 = v145;
            v145 = 0;
            v543 = v398;
            v544 = v397 & 0xC000000000000001;
            v541 = v198;
            v542 = v397 & 0xFFFFFFFFFFFFFF8;
            while (1)
            {
              if (v544)
              {
                v400 = MEMORY[0x1DA6FB460](v145, v397);
                v401 = v145 + 1;
                if (__OFADD__(v145, 1))
                {
                  goto LABEL_407;
                }
              }

              else
              {
                if (v145 >= *(v542 + 16))
                {
                  goto LABEL_443;
                }

                v400 = *(v397 + 8 * v145 + 32);
                swift_unknownObjectRetain();
                v401 = v145 + 1;
                if (__OFADD__(v145, 1))
                {
                  goto LABEL_407;
                }
              }

              v402 = [v400 identifier];
              v403 = sub_1D726207C();
              v405 = v404;

              swift_unknownObjectRetain();
              v406 = v545;
              v407 = *v545;
              v408 = swift_isUniquelyReferenced_nonNull_native();
              v546 = v407;
              *v406 = 0x8000000000000000;
              v409 = sub_1D5B69D90(v403, v405);
              v411 = v410;
              v412 = v407[2];
              v413 = (v410 & 1) == 0;
              if (__OFADD__(v412, v413))
              {
                goto LABEL_410;
              }

              v414 = v409;
              if (sub_1D6D76900(v408, v412 + v413))
              {
                v415 = sub_1D5B69D90(v403, v405);
                if ((v411 & 1) != (v416 & 1))
                {
                  goto LABEL_449;
                }

                v414 = v415;
              }

              if (v411)
              {

                v399 = v546;
                *(v546[7] + 8 * v414) = v400;
                swift_unknownObjectRelease();
                swift_unknownObjectRelease();
              }

              else
              {
                v399 = v546;
                v546[(v414 >> 6) + 8] |= 1 << v414;
                v417 = (v399[6] + 16 * v414);
                *v417 = v403;
                v417[1] = v405;
                *(v399[7] + 8 * v414) = v400;
                swift_unknownObjectRelease();
                v418 = v399[2];
                v46 = __OFADD__(v418, 1);
                v419 = v418 + 1;
                if (v46)
                {
                  goto LABEL_429;
                }

                v399[2] = v419;
              }

              *v545 = v399;
              ++v145;
              if (v401 == v543)
              {
                goto LABEL_402;
              }
            }
          }

          goto LABEL_402;
        }

        if (v197 == 5)
        {
          v145 = *((v196 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
          v278 = *(v145 + 48);

          v279 = [v278 identifier];
          v280 = sub_1D726207C();
          v282 = v281;

          sub_1D6D60400(v283, v280, v282, sub_1D6D76BD0, sub_1D6716D80, sub_1D6D7D880);
          v284 = [objc_msgSend(*(v145 + 48) eventLeagueTag)];
          swift_unknownObjectRelease();
          v285 = sub_1D726207C();
          v287 = v286;

          sub_1D6D602E0([*(v145 + 48) eventLeagueTag], v285, v287);
          v288 = [*(v145 + 48) eventCompetitorTags];
          if (v288)
          {
            v289 = v288;
            sub_1D5B5534C(0, &qword_1EDF04500, &protocolRef_FCSportsProviding);
            v290 = sub_1D726267C();

            if (!(v290 >> 62))
            {
              goto LABEL_249;
            }
          }

          else
          {
            v290 = MEMORY[0x1E69E7CC0];
            if (!(MEMORY[0x1E69E7CC0] >> 62))
            {
LABEL_249:
              v291 = *((v290 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (v291)
              {
                goto LABEL_250;
              }

              goto LABEL_402;
            }
          }

          v291 = sub_1D7263BFC();
          if (v291)
          {
LABEL_250:
            v539 = v145;
            v145 = 0;
            v543 = v291;
            v544 = v290 & 0xC000000000000001;
            v541 = v198;
            v542 = v290 & 0xFFFFFFFFFFFFFF8;
            while (1)
            {
              if (v544)
              {
                v293 = MEMORY[0x1DA6FB460](v145, v290);
                v294 = v145 + 1;
                if (__OFADD__(v145, 1))
                {
                  goto LABEL_408;
                }
              }

              else
              {
                if (v145 >= *(v542 + 16))
                {
                  goto LABEL_442;
                }

                v293 = *(v290 + 8 * v145 + 32);
                swift_unknownObjectRetain();
                v294 = v145 + 1;
                if (__OFADD__(v145, 1))
                {
                  goto LABEL_408;
                }
              }

              v295 = [v293 identifier];
              v296 = sub_1D726207C();
              v298 = v297;

              swift_unknownObjectRetain();
              v299 = v545;
              v300 = *v545;
              v301 = swift_isUniquelyReferenced_nonNull_native();
              v546 = v300;
              *v299 = 0x8000000000000000;
              v302 = sub_1D5B69D90(v296, v298);
              v304 = v303;
              v305 = v300[2];
              v306 = (v303 & 1) == 0;
              if (__OFADD__(v305, v306))
              {
                goto LABEL_413;
              }

              v307 = v302;
              if (sub_1D6D76900(v301, v305 + v306))
              {
                v308 = sub_1D5B69D90(v296, v298);
                if ((v304 & 1) != (v309 & 1))
                {
                  goto LABEL_449;
                }

                v307 = v308;
              }

              if (v304)
              {

                v292 = v546;
                *(v546[7] + 8 * v307) = v293;
                swift_unknownObjectRelease();
                swift_unknownObjectRelease();
              }

              else
              {
                v292 = v546;
                v546[(v307 >> 6) + 8] |= 1 << v307;
                v310 = (v292[6] + 16 * v307);
                *v310 = v296;
                v310[1] = v298;
                *(v292[7] + 8 * v307) = v293;
                swift_unknownObjectRelease();
                v311 = v292[2];
                v46 = __OFADD__(v311, 1);
                v312 = v311 + 1;
                if (v46)
                {
                  goto LABEL_427;
                }

                v292[2] = v312;
              }

              *v545 = v292;
              ++v145;
              if (v294 == v543)
              {
                goto LABEL_402;
              }
            }
          }

          goto LABEL_402;
        }

        v145 = *((v196 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
        v420 = *(v145 + 48);

        v421 = [v420 identifier];
        v422 = sub_1D726207C();
        v424 = v423;

        sub_1D6D60400(v425, v422, v424, sub_1D6D76BA4, sub_1D6716D80, sub_1D6D7D6FC);
        v426 = [objc_msgSend(*(v145 + 48) eventLeagueTag)];
        swift_unknownObjectRelease();
        v427 = sub_1D726207C();
        v429 = v428;

        sub_1D6D602E0([*(v145 + 48) eventLeagueTag], v427, v429);
        v430 = [*(v145 + 48) eventCompetitorTags];
        if (v430)
        {
          v431 = v430;
          sub_1D5B5534C(0, &qword_1EDF04500, &protocolRef_FCSportsProviding);
          v432 = sub_1D726267C();

          if (!(v432 >> 62))
          {
            goto LABEL_330;
          }
        }

        else
        {
          v432 = MEMORY[0x1E69E7CC0];
          if (!(MEMORY[0x1E69E7CC0] >> 62))
          {
LABEL_330:
            v433 = *((v432 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v433)
            {
              goto LABEL_331;
            }

            goto LABEL_402;
          }
        }

        v433 = sub_1D7263BFC();
        if (v433)
        {
LABEL_331:
          v539 = v145;
          v145 = 0;
          v543 = v433;
          v544 = v432 & 0xC000000000000001;
          v541 = v198;
          v542 = v432 & 0xFFFFFFFFFFFFFF8;
          while (1)
          {
            if (v544)
            {
              v435 = MEMORY[0x1DA6FB460](v145, v432);
              v436 = v145 + 1;
              if (__OFADD__(v145, 1))
              {
                goto LABEL_405;
              }
            }

            else
            {
              if (v145 >= *(v542 + 16))
              {
                goto LABEL_441;
              }

              v435 = *(v432 + 8 * v145 + 32);
              swift_unknownObjectRetain();
              v436 = v145 + 1;
              if (__OFADD__(v145, 1))
              {
LABEL_405:
                __break(1u);
LABEL_406:
                __break(1u);
LABEL_407:
                __break(1u);
LABEL_408:
                __break(1u);
LABEL_409:
                __break(1u);
LABEL_410:
                __break(1u);
LABEL_411:
                __break(1u);
LABEL_412:
                __break(1u);
LABEL_413:
                __break(1u);
LABEL_414:
                __break(1u);
LABEL_415:
                __break(1u);
LABEL_416:
                __break(1u);
LABEL_417:
                __break(1u);
LABEL_418:
                __break(1u);
LABEL_419:
                __break(1u);
LABEL_420:
                __break(1u);
LABEL_421:
                __break(1u);
                goto LABEL_422;
              }
            }

            v437 = [v435 identifier];
            v438 = sub_1D726207C();
            v440 = v439;

            swift_unknownObjectRetain();
            v441 = v545;
            v442 = *v545;
            v443 = swift_isUniquelyReferenced_nonNull_native();
            v546 = v442;
            *v441 = 0x8000000000000000;
            v444 = sub_1D5B69D90(v438, v440);
            v446 = v445;
            v447 = v442[2];
            v448 = (v445 & 1) == 0;
            if (__OFADD__(v447, v448))
            {
              goto LABEL_414;
            }

            v449 = v444;
            if (sub_1D6D76900(v443, v447 + v448))
            {
              v450 = sub_1D5B69D90(v438, v440);
              if ((v446 & 1) != (v451 & 1))
              {
                goto LABEL_449;
              }

              v449 = v450;
            }

            if (v446)
            {

              v434 = v546;
              *(v546[7] + 8 * v449) = v435;
              swift_unknownObjectRelease();
              swift_unknownObjectRelease();
            }

            else
            {
              v434 = v546;
              v546[(v449 >> 6) + 8] |= 1 << v449;
              v452 = (v434[6] + 16 * v449);
              *v452 = v438;
              v452[1] = v440;
              *(v434[7] + 8 * v449) = v435;
              swift_unknownObjectRelease();
              v453 = v434[2];
              v46 = __OFADD__(v453, 1);
              v454 = v453 + 1;
              if (v46)
              {
                goto LABEL_431;
              }

              v434[2] = v454;
            }

            *v545 = v434;
            ++v145;
            if (v436 == v543)
            {
              goto LABEL_402;
            }
          }
        }

        goto LABEL_402;
      }

      if (!v197)
      {
        v313 = *(v196 + 16);
        v314 = v313[5];
        v315 = v313[6];

        v316 = swift_retain_n();
        sub_1D6D60400(v316, v314, v315, sub_1D6D76CC4, sub_1D6716D80, sub_1D6D7D910);
        v317 = v313[4];
        if (v317 >> 62)
        {
          v318 = sub_1D7263BFC();
          if (v318)
          {
LABEL_268:
            v539 = v313;
            v544 = v317 & 0xC000000000000001;
            v541 = v196;
            v542 = v317 & 0xFFFFFFFFFFFFFF8;

            v319 = 0;
            v543 = v317;
            do
            {
              if (v544)
              {
                v321 = MEMORY[0x1DA6FB460](v319, v317);
                v322 = v319 + 1;
                if (__OFADD__(v319, 1))
                {
                  goto LABEL_409;
                }
              }

              else
              {
                if (v319 >= *(v542 + 16))
                {
                  goto LABEL_440;
                }

                v321 = *(v317 + 8 * v319 + 32);
                swift_unknownObjectRetain();
                v322 = v319 + 1;
                if (__OFADD__(v319, 1))
                {
                  goto LABEL_409;
                }
              }

              v323 = [v321 identifier];
              v324 = sub_1D726207C();
              v326 = v325;

              swift_unknownObjectRetain();
              v327 = v545;
              v328 = *v545;
              v145 = swift_isUniquelyReferenced_nonNull_native();
              v546 = v328;
              *v327 = 0x8000000000000000;
              v329 = sub_1D5B69D90(v324, v326);
              v331 = v330;
              v332 = v328[2];
              v333 = (v330 & 1) == 0;
              if (__OFADD__(v332, v333))
              {
                goto LABEL_412;
              }

              v334 = v329;
              if (sub_1D6D76900(v145, v332 + v333))
              {
                v335 = sub_1D5B69D90(v324, v326);
                if ((v331 & 1) != (v336 & 1))
                {
                  goto LABEL_449;
                }

                v334 = v335;
              }

              if (v331)
              {

                v320 = v546;
                *(v546[7] + 8 * v334) = v321;
                swift_unknownObjectRelease();
                swift_unknownObjectRelease();
              }

              else
              {
                v320 = v546;
                v546[(v334 >> 6) + 8] |= 1 << v334;
                v337 = (v320[6] + 16 * v334);
                *v337 = v324;
                v337[1] = v326;
                *(v320[7] + 8 * v334) = v321;
                swift_unknownObjectRelease();
                v338 = v320[2];
                v46 = __OFADD__(v338, 1);
                v339 = v338 + 1;
                if (v46)
                {
                  goto LABEL_428;
                }

                v320[2] = v339;
              }

              *v545 = v320;
              ++v319;
              v317 = v543;
            }

            while (v322 != v318);

            goto LABEL_368;
          }
        }

        else
        {
          v318 = *((v317 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v318)
          {
            goto LABEL_268;
          }
        }

        goto LABEL_366;
      }

      if (v197 != 1)
      {
        v340 = v196 & 0x1FFFFFFFFFFFFFFFLL;
        v341 = *((v196 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
        v342 = OBJC_IVAR____TtC8NewsFeed35SportsBracketGroupDataVisualization_visualizations;

        v343 = v535;
        v344 = sub_1D6D5CD3C(v341 + v342);
        v345 = v344;
        v535 = v343;
        v532 = v340;
        v533 = v342;
        if (v344 >> 62)
        {
          v346 = sub_1D7263BFC();
          v544 = v341;
          if (v346)
          {
LABEL_286:
            v145 = 0;
            v541 = v345;
            v542 = v345 & 0xC000000000000001;
            v539 = v345 & 0xFFFFFFFFFFFFFF8;
            do
            {
              if (v542)
              {
                v348 = MEMORY[0x1DA6FB460](v145, v345);
              }

              else
              {
                if (v145 >= *(v539 + 16))
                {
                  goto LABEL_445;
                }

                v348 = *(v345 + 8 * v145 + 32);
                swift_unknownObjectRetain();
              }

              if (__OFADD__(v145, 1))
              {
                goto LABEL_416;
              }

              v543 = v145 + 1;
              v349 = [v348 identifier];
              v350 = sub_1D726207C();
              v352 = v351;

              v353 = v551;
              v354 = swift_isUniquelyReferenced_nonNull_native();
              v546 = v353;
              v551 = 0x8000000000000000;
              v355 = sub_1D5B69D90(v350, v352);
              v357 = v356;
              v358 = v353[2];
              v359 = (v356 & 1) == 0;
              if (__OFADD__(v358, v359))
              {
                goto LABEL_418;
              }

              v360 = v355;
              if (sub_1D6D7689C(v354, v358 + v359, sub_1D6D8C1E4, sub_1D6D7D8C8))
              {
                v361 = sub_1D5B69D90(v350, v352);
                if ((v357 & 1) != (v362 & 1))
                {
                  goto LABEL_449;
                }

                v360 = v361;
              }

              if (v357)
              {

                v363 = v546;
                *(v546[7] + 8 * v360) = v544;
              }

              else
              {
                v363 = v546;
                v546[(v360 >> 6) + 8] |= 1 << v360;
                v364 = (v363[6] + 16 * v360);
                *v364 = v350;
                v364[1] = v352;
                *(v363[7] + 8 * v360) = v544;
                v365 = v363[2];
                v46 = __OFADD__(v365, 1);
                v366 = v365 + 1;
                if (v46)
                {
                  goto LABEL_432;
                }

                v363[2] = v366;
              }

              v551 = v363;
              v367 = [v348 identifier];
              v368 = sub_1D726207C();
              v370 = v369;

              swift_unknownObjectRetain();
              v371 = v545;
              v372 = *v545;
              v373 = swift_isUniquelyReferenced_nonNull_native();
              v546 = v372;
              *v371 = 0x8000000000000000;
              v374 = sub_1D5B69D90(v368, v370);
              v376 = v375;
              v377 = v372[2];
              v378 = (v375 & 1) == 0;
              if (__OFADD__(v377, v378))
              {
                goto LABEL_419;
              }

              v379 = v374;
              if (sub_1D6D76900(v373, v377 + v378))
              {
                v380 = sub_1D5B69D90(v368, v370);
                if ((v376 & 1) != (v381 & 1))
                {
                  goto LABEL_449;
                }

                v379 = v380;
              }

              if (v376)
              {

                v347 = v546;
                *(v546[7] + 8 * v379) = v348;
                swift_unknownObjectRelease();
                swift_unknownObjectRelease();
              }

              else
              {
                v347 = v546;
                v546[(v379 >> 6) + 8] |= 1 << v379;
                v382 = (v347[6] + 16 * v379);
                *v382 = v368;
                v382[1] = v370;
                *(v347[7] + 8 * v379) = v348;
                swift_unknownObjectRelease();
                v383 = v347[2];
                v46 = __OFADD__(v383, 1);
                v384 = v383 + 1;
                if (v46)
                {
                  goto LABEL_435;
                }

                v347[2] = v384;
              }

              *v545 = v347;
              ++v145;
              v345 = v541;
            }

            while (v543 != v346);
          }
        }

        else
        {
          v346 = *((v344 & 0xFFFFFFFFFFFFFF8) + 0x10);
          v544 = v341;
          if (v346)
          {
            goto LABEL_286;
          }
        }

        sub_1D5E4CF90(0);
        sub_1D725BE8C();
        v465 = v546[8];
        swift_unknownObjectRetain();

        if (v465)
        {
          v466 = [v465 identifier];
          v467 = sub_1D726207C();
          v469 = v468;

          sub_1D6D60400(v470, v467, v469, sub_1D6D76C54, sub_1D6716D80, sub_1D6D7D8C8);
          v471 = [v465 identifier];
          v472 = sub_1D726207C();
          v474 = v473;

          sub_1D6D602E0(v465, v472, v474);
        }

        v475 = SportsBracketGroupDataVisualization.leagueTags.getter();
        v476 = v475;
        if (v475 >> 62)
        {
          v477 = sub_1D7263BFC();
          if (v477)
          {
LABEL_378:
            v145 = 0;
            v541 = v476;
            v542 = v476 & 0xC000000000000001;
            v539 = v476 & 0xFFFFFFFFFFFFFF8;
            while (1)
            {
              if (v542)
              {
                v479 = MEMORY[0x1DA6FB460](v145, v476);
              }

              else
              {
                if (v145 >= *(v539 + 16))
                {
                  goto LABEL_447;
                }

                v479 = *(v476 + 8 * v145 + 32);
                swift_unknownObjectRetain();
              }

              if (__OFADD__(v145, 1))
              {
                goto LABEL_421;
              }

              v543 = v145 + 1;
              v480 = [v479 identifier];
              v481 = sub_1D726207C();
              v483 = v482;

              v484 = v551;
              v485 = swift_isUniquelyReferenced_nonNull_native();
              v546 = v484;
              v551 = 0x8000000000000000;
              v486 = sub_1D5B69D90(v481, v483);
              v488 = v487;
              v489 = v484[2];
              v490 = (v487 & 1) == 0;
              if (__OFADD__(v489, v490))
              {
                break;
              }

              v491 = v486;
              if (sub_1D6D7689C(v485, v489 + v490, sub_1D6D8C1E4, sub_1D6D7D8C8))
              {
                v492 = sub_1D5B69D90(v481, v483);
                if ((v488 & 1) != (v493 & 1))
                {
                  goto LABEL_449;
                }

                v491 = v492;
              }

              if (v488)
              {

                v494 = v546;
                *(v546[7] + 8 * v491) = v544;
              }

              else
              {
                v494 = v546;
                v546[(v491 >> 6) + 8] |= 1 << v491;
                v495 = (v494[6] + 16 * v491);
                *v495 = v481;
                v495[1] = v483;
                *(v494[7] + 8 * v491) = v544;
                v496 = v494[2];
                v46 = __OFADD__(v496, 1);
                v497 = v496 + 1;
                if (v46)
                {
                  goto LABEL_436;
                }

                v494[2] = v497;
              }

              v551 = v494;
              v498 = [v479 identifier];
              v499 = sub_1D726207C();
              v501 = v500;

              swift_unknownObjectRetain();
              v502 = v545;
              v503 = *v545;
              v504 = swift_isUniquelyReferenced_nonNull_native();
              v546 = v503;
              *v502 = 0x8000000000000000;
              v505 = sub_1D5B69D90(v499, v501);
              v507 = v506;
              v508 = v503[2];
              v509 = (v506 & 1) == 0;
              if (__OFADD__(v508, v509))
              {
                goto LABEL_423;
              }

              v510 = v505;
              if (sub_1D6D76900(v504, v508 + v509))
              {
                v511 = sub_1D5B69D90(v499, v501);
                if ((v507 & 1) != (v512 & 1))
                {
                  goto LABEL_449;
                }

                v510 = v511;
              }

              if (v507)
              {

                v478 = v546;
                *(v546[7] + 8 * v510) = v479;
                swift_unknownObjectRelease();
                swift_unknownObjectRelease();
              }

              else
              {
                v478 = v546;
                v546[(v510 >> 6) + 8] |= 1 << v510;
                v513 = (v478[6] + 16 * v510);
                *v513 = v499;
                v513[1] = v501;
                *(v478[7] + 8 * v510) = v479;
                swift_unknownObjectRelease();
                v514 = v478[2];
                v46 = __OFADD__(v514, 1);
                v515 = v514 + 1;
                if (v46)
                {
                  goto LABEL_437;
                }

                v478[2] = v515;
              }

              *v545 = v478;
              ++v145;
              v476 = v541;
              if (v543 == v477)
              {
                goto LABEL_402;
              }
            }

LABEL_422:
            __break(1u);
LABEL_423:
            __break(1u);
            goto LABEL_424;
          }
        }

        else
        {
          v477 = *((v475 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v477)
          {
            goto LABEL_378;
          }
        }

        goto LABEL_402;
      }

      v145 = v196 & 0x1FFFFFFFFFFFFFFFLL;
      v234 = *((v196 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v235 = *(v234 + 32);
      if (v235 >> 62)
      {
        v236 = sub_1D7263BFC();
        if (!v236)
        {
LABEL_371:

          v455 = *(v234 + 56);
          if (!v455)
          {
            goto LABEL_366;
          }

          goto LABEL_351;
        }
      }

      else
      {
        v236 = *((v235 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v236)
        {
          goto LABEL_371;
        }
      }

      v543 = v235 & 0xC000000000000001;
      v539 = v235 & 0xFFFFFFFFFFFFFF8;
      v533 = v196 & 0x1FFFFFFFFFFFFFFFLL;

      v145 = 0;
      v541 = v236;
      v542 = v235;
      do
      {
        if (v543)
        {
          v239 = MEMORY[0x1DA6FB460](v145, v235);
          v240 = v145 + 1;
          if (__OFADD__(v145, 1))
          {
            goto LABEL_415;
          }
        }

        else
        {
          if (v145 >= *(v539 + 16))
          {
            goto LABEL_444;
          }

          v239 = *(v235 + 8 * v145 + 32);
          swift_unknownObjectRetain();
          v240 = v145 + 1;
          if (__OFADD__(v145, 1))
          {
            goto LABEL_415;
          }
        }

        v544 = v240;
        v241 = [v239 identifier];
        v242 = sub_1D726207C();
        v244 = v243;

        v245 = v234;

        v246 = v552;
        v247 = swift_isUniquelyReferenced_nonNull_native();
        v546 = v246;
        v552 = 0x8000000000000000;
        v248 = sub_1D5B69D90(v242, v244);
        v250 = v249;
        v251 = v246[2];
        v252 = (v249 & 1) == 0;
        if (__OFADD__(v251, v252))
        {
          goto LABEL_417;
        }

        v253 = v248;
        if (sub_1D6D7689C(v247, v251 + v252, sub_1D6D8C17C, sub_1D6D7D8E0))
        {
          v254 = sub_1D5B69D90(v242, v244);
          if ((v250 & 1) != (v255 & 1))
          {
            goto LABEL_449;
          }

          v253 = v254;
        }

        if (v250)
        {

          v256 = v546;
          *(v546[7] + 8 * v253) = v245;
        }

        else
        {
          v256 = v546;
          v546[(v253 >> 6) + 8] |= 1 << v253;
          v257 = (v256[6] + 16 * v253);
          *v257 = v242;
          v257[1] = v244;
          *(v256[7] + 8 * v253) = v245;
          v258 = v256[2];
          v46 = __OFADD__(v258, 1);
          v259 = v258 + 1;
          if (v46)
          {
            goto LABEL_433;
          }

          v256[2] = v259;
        }

        v552 = v256;
        v260 = [v239 identifier];
        v261 = sub_1D726207C();
        v263 = v262;

        swift_unknownObjectRetain();
        v264 = v545;
        v265 = *v545;
        v266 = swift_isUniquelyReferenced_nonNull_native();
        v546 = v265;
        *v264 = 0x8000000000000000;
        v267 = sub_1D5B69D90(v261, v263);
        v269 = v268;
        v270 = v265[2];
        v271 = (v268 & 1) == 0;
        if (__OFADD__(v270, v271))
        {
          goto LABEL_420;
        }

        v272 = v267;
        if (sub_1D6D76900(v266, v270 + v271))
        {
          v273 = sub_1D5B69D90(v261, v263);
          if ((v269 & 1) != (v274 & 1))
          {
            goto LABEL_449;
          }

          v272 = v273;
        }

        if (v269)
        {

          v237 = v546;
          *(v546[7] + 8 * v272) = v239;
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
        }

        else
        {
          v237 = v546;
          v546[(v272 >> 6) + 8] |= 1 << v272;
          v275 = (v237[6] + 16 * v272);
          *v275 = v261;
          v275[1] = v263;
          *(v237[7] + 8 * v272) = v239;
          swift_unknownObjectRelease();
          v276 = v237[2];
          v46 = __OFADD__(v276, 1);
          v277 = v276 + 1;
          if (v46)
          {
            goto LABEL_434;
          }

          v237[2] = v277;
        }

        v238 = v544;
        *v545 = v237;
        ++v145;
        v235 = v542;
        v234 = v245;
      }

      while (v238 != v541);

      v145 = v533;
      v455 = *(v245 + 56);
      if (!v455)
      {
        goto LABEL_366;
      }

LABEL_351:
      v456 = [swift_unknownObjectRetain() identifier];
      v457 = sub_1D726207C();
      v459 = v458;

      sub_1D6D60400(v460, v457, v459, sub_1D6D76C80, sub_1D6716D80, sub_1D6D7D8E0);
      v461 = [v455 identifier];
      v462 = sub_1D726207C();
      v464 = v463;

      sub_1D6D602E0(v455, v462, v464);
LABEL_366:

LABEL_367:

LABEL_368:
      v195 = v540 + 1;
      v193 = v536;
      if (v540 + 1 == v538)
      {

        v516 = v552;
        v517 = v553;
        v518 = v550;
        v519 = v551;
        v520 = v548;
        v521 = v549;
        v522 = v547;
        goto LABEL_404;
      }
    }
  }

  v522 = MEMORY[0x1E69E7CC8];
  v520 = MEMORY[0x1E69E7CC8];
  v521 = MEMORY[0x1E69E7CC8];
  v518 = MEMORY[0x1E69E7CC8];
  v519 = MEMORY[0x1E69E7CC8];
  v516 = MEMORY[0x1E69E7CC8];
  v517 = MEMORY[0x1E69E7CC8];
LABEL_404:
  v545 = a19;
  v523 = v534;
  v534[15] = v517;
  v523[16] = v516;
  v523[17] = v519;
  v523[18] = v518;
  v523[19] = v521;
  v523[20] = v520;
  v523[21] = v522;
  v546 = a13;
  v524 = MEMORY[0x1E69E62F8];
  sub_1D6D8B278(0, &qword_1EDF1AFD0, &type metadata for FormatContentPoolPlaceholder, MEMORY[0x1E69E62F8]);
  sub_1D6D8796C(&qword_1EDF1AFC8, &qword_1EDF1AFD0, &type metadata for FormatContentPoolPlaceholder, v525);
  sub_1D6D87918();
  v526 = sub_1D72623BC();

  v523[11] = v526;
  v546 = a14;
  sub_1D6D8B278(0, &qword_1EDF1AF58, &type metadata for FormatContentPoolSlotPlaceholder, v524);
  sub_1D6D8796C(&qword_1EDF1AF50, &qword_1EDF1AF58, &type metadata for FormatContentPoolSlotPlaceholder, v527);
  sub_1D6D879D0();
  v528 = sub_1D72623BC();

  v523[12] = v528;
  v523[13] = a15;
  v523[14] = a16;
  v523[22] = a18;
  v529 = type metadata accessor for FormatContentPool(0);
  return sub_1D5CEB57C(v545, v523 + *(v529 + 108));
}