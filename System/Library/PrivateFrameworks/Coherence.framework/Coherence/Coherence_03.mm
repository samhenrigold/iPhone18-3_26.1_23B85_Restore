uint64_t sub_1ADE0A8DC()
{
  swift_beginAccess();

  v0 = sub_1AE23D0AC();

  return v0;
}

id sub_1ADE0A96C()
{
  v1 = [objc_msgSend(*(v0 + qword_1ED96F258) attributedString)];
  swift_unknownObjectRelease();
  return v1;
}

uint64_t sub_1ADE0A9DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Replica(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void sub_1ADE0AA4C(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v29 = v8;
  v9 = *(v8 + 84);
  v10 = sub_1AE23BFEC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 84);
  if (v12 <= v9)
  {
    v13 = v9;
  }

  else
  {
    v13 = *(v11 + 84);
  }

  v14 = *(v11 + 80) & 0xF8 | 7;
  v15 = *(v8 + 64) + v14;
  v16 = ((((*(*(v10 - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  v17 = v16 + (v15 & ~v14);
  if (v17)
  {
    v18 = 2;
  }

  else
  {
    v18 = a3 - v13 + 1;
  }

  if (v18 >= 0x10000)
  {
    v19 = 4;
  }

  else
  {
    v19 = 2;
  }

  if (v18 < 0x100)
  {
    v19 = 1;
  }

  if (v18 >= 2)
  {
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  if (v13 < a3)
  {
    v21 = v20;
  }

  else
  {
    v21 = 0;
  }

  if (a2 > v13)
  {
    if (v17)
    {
      v22 = 1;
    }

    else
    {
      v22 = a2 - v13;
    }

    if (v17)
    {
      v23 = ~v13 + a2;
      bzero(a1, v17);
      *a1 = v23;
    }

    if (v21 > 1)
    {
      if (v21 == 2)
      {
        *(a1 + v17) = v22;
      }

      else
      {
        *(a1 + v17) = v22;
      }
    }

    else if (v21)
    {
      *(a1 + v17) = v22;
    }

    return;
  }

  if (v21 > 1)
  {
    if (v21 != 2)
    {
      *(a1 + v17) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_36;
    }

    *(a1 + v17) = 0;
    goto LABEL_35;
  }

  if (!v21)
  {
LABEL_35:
    if (!a2)
    {
      return;
    }

    goto LABEL_36;
  }

  *(a1 + v17) = 0;
  if (!a2)
  {
    return;
  }

LABEL_36:
  if (v9 >= v12)
  {
    v27 = *(v29 + 56);

    v27(a1, a2, v9, v7);
  }

  else
  {
    v24 = ((a1 + v15) & ~v14);
    if (v12 >= a2)
    {
      v28 = *(v11 + 56);

      v28(v24, a2);
    }

    else if (v16)
    {
      v25 = ~v12 + a2;
      v26 = ((a1 + v15) & ~v14);
      bzero(v24, v16);
      *v26 = v25;
    }
  }
}

uint64_t sub_1ADE0ACE4(int *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = sub_1AE23BFEC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  if (v10 <= v7)
  {
    v11 = v7;
  }

  else
  {
    v11 = *(v9 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v12 = *(v9 + 80) & 0xF8 | 7;
  v13 = *(v6 + 64) + v12;
  if (v11 < a2)
  {
    v14 = ((((*(*(v8 - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + (v13 & ~v12) + 8;
    v15 = v14 & 0xFFFFFFF8;
    if ((v14 & 0xFFFFFFF8) != 0)
    {
      v16 = 2;
    }

    else
    {
      v16 = a2 - v11 + 1;
    }

    if (v16 >= 0x10000)
    {
      v17 = 4;
    }

    else
    {
      v17 = 2;
    }

    if (v16 < 0x100)
    {
      v17 = 1;
    }

    v18 = v16 >= 2 ? v17 : 0;
    if (v18 > 1)
    {
      if (v18 == 2)
      {
        v19 = *(a1 + v14);
        if (v19)
        {
          goto LABEL_20;
        }
      }

      else
      {
        v19 = *(a1 + v14);
        if (v19)
        {
          goto LABEL_20;
        }
      }
    }

    else if (v18)
    {
      v19 = *(a1 + v14);
      if (v19)
      {
LABEL_20:
        v20 = v19 - 1;
        if (v15)
        {
          v20 = 0;
          v21 = *a1;
        }

        else
        {
          v21 = 0;
        }

        return v11 + (v21 | v20) + 1;
      }
    }

    if (!v11)
    {
      return 0;
    }
  }

  if (v7 >= v10)
  {
    v24 = *(v6 + 48);

    return v24(a1, v7, v5);
  }

  else
  {
    v22 = *(v9 + 48);

    return v22((a1 + v13) & ~v12);
  }
}

void sub_1ADE0AF18()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 64);
  if (!v2)
  {
LABEL_21:
    __break(1u);
    return;
  }

  v3 = *(v2 + 16);
  if ((~v3 & 0xF000000000000007) != 0 && (v3 & 0xF000000000000000) == 0x3000000000000000)
  {
    v5 = *((v3 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
    v6 = *(v5 + 16);
    if (v6)
    {
      v23 = MEMORY[0x1E69E7CC0];

      v22 = v1;
      sub_1ADE0B11C(0, v6, 0);
      v7 = 0;
      while (v7 < *(v5 + 16))
      {
        v8 = *(v5 + 8 * v7 + 32);
        v9 = *(v1 + 32);
        v10 = *(v9 + 16);
        if (v10)
        {
          v11 = v8 >= v10;
        }

        else
        {
          v11 = 1;
        }

        if (v11)
        {

          sub_1ADE42E40(v18, v19, v20);
          swift_allocError();
          *v21 = 0xD000000000000015;
          *(v21 + 8) = 0x80000001AE25FCF0;
          *(v21 + 16) = 0;
          swift_willThrow();

          return;
        }

        v12 = v9 + 16 * v8;
        v14 = *(v12 + 32);
        v13 = *(v12 + 40);
        v16 = *(v23 + 16);
        v15 = *(v23 + 24);

        if (v16 >= v15 >> 1)
        {
          sub_1ADE0B11C((v15 > 1), v16 + 1, 1);
          v1 = v22;
        }

        ++v7;
        *(v23 + 16) = v16 + 1;
        v17 = v23 + 16 * v16;
        *(v17 + 32) = v14;
        *(v17 + 40) = v13;
        if (v6 == v7)
        {

          return;
        }
      }

      __break(1u);
      goto LABEL_21;
    }
  }
}

char *sub_1ADE0B11C(char *a1, int64_t a2, char a3)
{
  result = sub_1ADDF5128(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1ADE0B140()
{

  return swift_deallocClassInstance();
}

Swift::Void __swiftcall CRAttributedString.insert(contentsOf:at:)(NSAttributedString contentsOf, Swift::Int at)
{
  sub_1ADE0B3D0(v3);
  v6 = *v2;
  if (!*v2)
  {
    goto LABEL_15;
  }

  v7 = *(v6 + 16);
  v8 = [(objc_class *)contentsOf.super.isa length];
  v9 = swift_allocObject();
  v9[2].super.isa = contentsOf.super.isa;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_1ADE0F07C;
  *(v10 + 24) = v9;
  v19[4] = sub_1AE16B1E4;
  v19[5] = v10;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 1107296256;
  v19[2] = sub_1ADE0EEE0;
  v19[3] = &block_descriptor_13_0;
  v11 = _Block_copy(v19);
  v12 = contentsOf.super.isa;

  [v7 insertAtIndex:at length:v8 getStorage:v11];

  _Block_release(v11);
  LOBYTE(v7) = swift_isEscapingClosureAtFileLocation();

  if (v7)
  {
    __break(1u);
  }

  else
  {
    v13 = [(objc_class *)v12 length];
    if (*(v6 + 40))
    {
      goto LABEL_10;
    }

    v14 = *(v6 + 24);
    v15 = *(v6 + 32);
    v16 = __OFADD__(v14, v15);
    v17 = v14 + v15;
    if (!v16)
    {
      if (v17 != at)
      {
        goto LABEL_10;
      }

      v18 = v13 + at;
      if (!__OFADD__(at, v13))
      {
        v13 = (v18 - v14);
        if (!__OFSUB__(v18, v14))
        {
          goto LABEL_11;
        }

        __break(1u);
LABEL_10:
        *(v6 + 24) = at;
LABEL_11:
        *(v6 + 32) = v13;
        *(v6 + 40) = 0;

        return;
      }

      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
LABEL_15:
  __break(1u);
}

uint64_t sub_1ADE0B380()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

void sub_1ADE0B3D0(__n128 a1)
{
  isUniquelyReferenced_native = swift_isUniquelyReferenced_native();
  v3 = *v1;
  if (isUniquelyReferenced_native)
  {
    if (v3)
    {
      v4 = *(v3 + 16);

      [v4 useRenameIfAvailable];
      return;
    }

    __break(1u);
LABEL_11:
    __break(1u);
    return;
  }

  if (!v3)
  {
    goto LABEL_11;
  }

  type metadata accessor for CRAttributedStringRef();
  v5 = swift_allocObject();
  *(v5 + 24) = 0;
  *(v5 + 32) = 0;
  *(v5 + 40) = 1;
  v6 = qword_1EB5B9C00;

  if (v6 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_1EB5D7CC0);
  *(v3 + 24) = 0;
  *(v3 + 32) = 0;
  *(v3 + 40) = 1;
  os_unfair_lock_unlock(&dword_1EB5D7CC0);
  [*(v3 + 16) copy];
  sub_1AE23D83C();

  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5B9FE8, &qword_1AE241500);
  swift_dynamicCast();
  *(v5 + 16) = v7;

  *v1 = v5;
}

char *sub_1ADE0B544(char *a1, int64_t a2, char a3)
{
  result = sub_1ADDEC34C(a1, a2, a3, *v3, &qword_1EB5BA150, &unk_1AE242310);
  *v3 = result;
  return result;
}

uint64_t sub_1ADE0B5E4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, char *a3@<X8>)
{
  CRExtensible.init(rawValue:)(a1, a2[2], a2[3], a2[4], a2[5], a3);
  v5 = *(*(a2 - 1) + 56);

  return v5(a3, 0, 1, a2);
}

uint64_t sub_1ADE0B65C(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 200);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v9 - v5;
  v7 = *(v2 + 224);
  swift_beginAccess();
  (*(v4 + 16))(v6, v1 + v7, v3);
  sub_1AE23CBCC();
  return (*(v4 + 8))(v6, v3);
}

void std::vector<Coherence_namespace::TopoSubstring *>::reserve(void *a1, unint64_t a2)
{
  if (a2 > (a1[2] - *a1) >> 3)
  {
    if (!(a2 >> 61))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<Coherence_namespace::TopoSubstring *>>(a1, a2);
    }

    std::vector<Coherence_namespace::TopoSubstring *>::__throw_length_error[abi:ne200100]();
  }
}

id sub_1ADE0B868(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(v3 + OBJC_IVAR____TtC9Coherence15CRStringDecoder_encoded + 40);
  if (v5)
  {
    v6 = *(v3 + OBJC_IVAR____TtC9Coherence15CRStringDecoder_encoded + 48);
    v7 = *(v3 + OBJC_IVAR____TtC9Coherence15CRStringDecoder_decoder);
    sub_1ADE42C78(v5, v6);

    result = sub_1ADDD6748(v5, v6, v7, &v15);
    if (!v4)
    {
      v9 = type metadata accessor for ObjCVersion();
      v10 = objc_allocWithZone(v9);
      v11 = &v10[OBJC_IVAR____TtC9Coherence11ObjCVersion_version];
      v12 = MEMORY[0x1E69E7CC8];
      *v11 = MEMORY[0x1E69E7CC8];
      *(v11 + 1) = v12;
      swift_beginAccess();
      *v11 = v15;

      v14.receiver = v10;
      v14.super_class = v9;
      return objc_msgSendSuper2(&v14, sel_init);
    }
  }

  else
  {
    sub_1ADE42E40(a1, a2, a3);
    swift_allocError();
    *v13 = 0xD000000000000018;
    *(v13 + 8) = 0x80000001AE2616C0;
    *(v13 + 16) = 0;
    return swift_willThrow();
  }

  return result;
}

id sub_1ADE0B9B8(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v5 = a1;
  v6 = a4();

  return v6;
}

void *sub_1ADE0BA68(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
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

void *sub_1ADE0BC44(void *a1, int64_t a2, char a3)
{
  result = sub_1ADE0BA68(a1, a2, a3, *v3, &qword_1EB5BA218, &qword_1AE241BF0, MEMORY[0x1E69695A8]);
  *v3 = result;
  return result;
}

void sub_1ADE0BC88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *, char *))
{
  v36 = a4;
  v35 = type metadata accessor for Timestamp(0);
  MEMORY[0x1EEE9AC00](v35);
  v34 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v26 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v26 - v15;
  v27 = a2;
  if (a3 != a2)
  {
    v17 = *v4;
    v18 = *(v14 + 72);
    v19 = *v4 + v18 * (a3 - 1);
    v32 = -v18;
    v33 = v17;
    v20 = a1 - a3;
    v26 = v18;
    v21 = v17 + v18 * a3;
LABEL_4:
    v30 = v19;
    v31 = a3;
    v28 = v21;
    v29 = v20;
    v22 = v19;
    while (1)
    {
      sub_1ADDF8030(v21, v16, type metadata accessor for Timestamp);
      sub_1ADDF8030(v22, v12, type metadata accessor for Timestamp);
      v23 = v36(v16, v12);
      sub_1ADDE5300(v12, type metadata accessor for Timestamp);
      sub_1ADDE5300(v16, type metadata accessor for Timestamp);
      if (v5)
      {
        break;
      }

      if (v23)
      {
        if (!v33)
        {
          __break(1u);
          return;
        }

        v24 = v34;
        sub_1ADDE5F9C(v21, v34, type metadata accessor for Timestamp);
        swift_arrayInitWithTakeFrontToBack();
        sub_1ADDE5F9C(v24, v22, type metadata accessor for Timestamp);
        v22 += v32;
        v21 += v32;
        if (!__CFADD__(v20++, 1))
        {
          continue;
        }
      }

      a3 = v31 + 1;
      v19 = v30 + v26;
      v20 = v29 - 1;
      v21 = v28 + v26;
      if (v31 + 1 != v27)
      {
        goto LABEL_4;
      }

      return;
    }
  }
}

uint64_t sub_1ADE0BF00(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  v3 = sub_1ADDE4ECC(isUniquelyReferenced_nonNull_native, v12, 1, v3);
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = (v3[3] >> 1) - v3[2];
  result = sub_1AE23BFEC();
  if (v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = v3[2];
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    v3[2] = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void sub_1ADE0C068(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v67 = *MEMORY[0x1E69E9840];
  v8 = sub_1AE23BFEC();
  MEMORY[0x1EEE9AC00](v8);
  v59 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v62 = &v49 - v11;
  v14.n128_f64[0] = MEMORY[0x1EEE9AC00](v12);
  v16 = &v49 - v15;
  v51 = a2;
  if (a3 != a2)
  {
    v17 = *a4;
    v60 = *(v13 + 16);
    v61 = v13 + 16;
    v18 = *(v13 + 72);
    v19 = (v13 + 8);
    v57 = (v13 + 32);
    v58 = v17;
    v20 = (v17 + v18 * (a3 - 1));
    v56 = -v18;
    v21 = a1 - a3;
    v50 = v18;
    v22 = v17 + v18 * a3;
    do
    {
      v54 = v20;
      v55 = a3;
      v52 = v22;
      v53 = v21;
      v23 = v21;
      v24 = v20;
      do
      {
        v25 = v16;
        v26 = v16;
        v27 = v60;
        (v60)(v25, v22, v8, v14);
        v27(v62, v24, v8);
        v16 = v26;
        v65 = sub_1AE23BFCC();
        LOWORD(v66) = v28;
        BYTE2(v66) = v29;
        BYTE3(v66) = v30;
        BYTE4(v66) = v31;
        BYTE5(v66) = v32;
        BYTE6(v66) = v33;
        HIBYTE(v66) = v34;
        v63 = sub_1AE23BFCC();
        LOWORD(v64) = v35;
        BYTE2(v64) = v36;
        BYTE3(v64) = v37;
        BYTE4(v64) = v38;
        BYTE5(v64) = v39;
        BYTE6(v64) = v40;
        HIBYTE(v64) = v41;
        v42 = bswap64(v65);
        v43 = bswap64(v63);
        if (v42 == v43 && (v42 = bswap64(v66), v43 = bswap64(v64), v42 == v43))
        {
          v44 = 0;
        }

        else if (v42 < v43)
        {
          v44 = -1;
        }

        else
        {
          v44 = 1;
        }

        v45 = *v19;
        (*v19)(v62, v8);
        v45(v26, v8);
        if ((v44 & 0x80000000) == 0)
        {
          break;
        }

        if (!v58)
        {
          __break(1u);
        }

        v46 = *v57;
        v47 = v59;
        (*v57)(v59, v22, v8);
        swift_arrayInitWithTakeFrontToBack();
        v46(v24, v47, v8);
        v24 += v56;
        v22 += v56;
      }

      while (!__CFADD__(v23++, 1));
      a3 = v55 + 1;
      v20 = &v54[v50];
      v21 = v53 - 1;
      v22 = v52 + v50;
    }

    while (v55 + 1 != v51);
  }
}

unint64_t sub_1ADE0C418@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>, uint64_t a3@<X1>, uint64_t a4@<X2>)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  v6 = *(v4 + OBJC_IVAR____TtC9Coherence15CRStringDecoder_subsequence[0] + 8);
  if (*(v6 + 16) <= result)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v7 = *(v6 + 16 * result + 32);
  v8 = *(*(v4 + OBJC_IVAR____TtC9Coherence15CRStringDecoder_decoder) + 24);
  v9 = *(v8 + 16);
  if (v9)
  {
    v10 = v7 >= v9;
  }

  else
  {
    v10 = 1;
  }

  if (v10)
  {
    sub_1ADE42E40(result, a3, a4);
    swift_allocError();
    *v11 = 0xD000000000000013;
    *(v11 + 8) = 0x80000001AE25FD70;
    *(v11 + 16) = 0;
    return swift_willThrow();
  }

  else
  {
    v12 = sub_1AE23BFEC();
    return (*(*(v12 - 8) + 16))(a2, v8 + ((*(*(v12 - 8) + 80) + 32) & ~*(*(v12 - 8) + 80)) + *(*(v12 - 8) + 72) * v7, v12);
  }
}

void std::vector<Coherence_namespace::TopoID>::push_back[abi:ne200100](uint64_t a1, __int128 *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3);
    v9 = v8 + 1;
    if (v8 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<Coherence_namespace::TopoSubstring *>::__throw_length_error[abi:ne200100]();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x555555555555555)
    {
      v11 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<Coherence_namespace::TopoID>>(a1, v11);
    }

    v12 = 24 * v8;
    v13 = *a2;
    *(v12 + 16) = *(a2 + 2);
    *v12 = v13;
    v7 = 24 * v8 + 24;
    v14 = *(a1 + 8) - *a1;
    v15 = v12 - v14;
    memcpy((v12 - v14), *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v7;
    *(a1 + 16) = 0;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    v6 = *a2;
    *(v5 + 16) = *(a2 + 2);
    *v5 = v6;
    v7 = v5 + 24;
  }

  *(a1 + 8) = v7;
}

double sub_1ADE0C65C@<D0>(ValueMetadata *a1@<X0>, ValueMetadata *a2@<X1>, ValueMetadata *a3@<X2>, char *a4@<X8>)
{
  sub_1ADDE78C8();
  v10 = *(v9 + 16);
  if ((~v10 & 0xF000000000000007) != 0 && (v10 & 0xF000000000000000) == 0x8000000000000000)
  {
    v12 = ((v10 & 0xFFFFFFFFFFFFFFFLL) + 16);
  }

  else
  {
    if (qword_1ED967F98 != -1)
    {
      swift_once();
    }

    v12 = &off_1ED967FA0;
  }

  v13 = *v12;

  v14 = *(v4 + 16);

  return sub_1ADE0A2B0(v13, v14, a1, a2, a3, a4);
}

void *sub_1ADE0C750(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4)
{
  v9 = MEMORY[0x1E69E7CC8];
  v4[3] = MEMORY[0x1E69E7CC8];
  v4[4] = v9;
  v4[5] = sub_1AE23C9CC();
  v4[6] = 0;
  v4[2] = a1;
  swift_beginAccess();
  *(v4 + 3) = *a2;

  swift_beginAccess();
  v4[5] = a3;

  v4[6] = a4;
  return v4;
}

uint64_t sub_1ADE0C8B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  (*(*(a3 - 8) + 32))(a6, a1);
  v11 = a6 + *(type metadata accessor for CROrderedSetElement(0, a3, a4, a5) + 44);

  return sub_1AE017B14(a2, v11);
}

char *sub_1ADE0C954@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  if (*(a1 + 40))
  {
    type metadata accessor for CRSequenceRef(0, a4, a5, a4);
    v11 = swift_allocObject();
    result = sub_1ADDF4E90(a1, a2, a3);
    if (!v6)
    {
      *a6 = v11;
    }
  }

  else
  {

    result = sub_1AE030800(a1);
    *a6 = 0;
  }

  return result;
}

id sub_1ADE0CA18(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3)
  {
    v10 = swift_allocObject();
    *(v10 + 2) = a4;
    *(v10 + 3) = a5;
    *(v10 + 4) = a3;
    v11 = objc_allocWithZone(type metadata accessor for CRSequenceDecoder());
    v12 = &v11[OBJC_IVAR____TtC9Coherence17CRSequenceDecoder_getStorage];
    *v12 = sub_1ADE0A8BC;
    v12[1] = v10;
    v13 = &v11[OBJC_IVAR____TtC9Coherence15CRStringDecoder_subsequence[0]];
    v37[0] = 1;
    v38 = 1;
    *v13 = 0;
    v14 = MEMORY[0x1E69E7CC0];
    *(v13 + 1) = MEMORY[0x1E69E7CC0];
    *(v13 + 2) = v14;
    *(v13 + 3) = v14;
    *(v13 + 4) = 0;
    v13[40] = 1;
    *(v13 + 6) = 0;
    *(v13 + 7) = 0;
    v13[64] = 1;
    v15 = &v11[OBJC_IVAR____TtC9Coherence15CRStringDecoder_encoded];
    v16 = *a1;
    v17 = a1[2];
    *(v15 + 1) = a1[1];
    *(v15 + 2) = v17;
    *v15 = v16;
    v18 = a1[3];
    v19 = a1[4];
    v20 = a1[5];
    *(v15 + 12) = *(a1 + 12);
    *(v15 + 4) = v19;
    *(v15 + 5) = v20;
    *(v15 + 3) = v18;
    *&v11[OBJC_IVAR____TtC9Coherence15CRStringDecoder_decoder] = a2;

    sub_1ADE51B64(a1, v37);
    v21 = type metadata accessor for CRStringDecoder();
    v35 = v11;
    v22 = &v35;
  }

  else
  {
    v23 = swift_allocObject();
    *(v23 + 2) = a4;
    *(v23 + 3) = a5;
    *(v23 + 4) = a2;
    v24 = objc_allocWithZone(type metadata accessor for CRSequenceDecoder());
    v25 = &v24[OBJC_IVAR____TtC9Coherence17CRSequenceDecoder_getStorage];
    *v25 = sub_1AE16AB14;
    v25[1] = v23;
    v26 = &v24[OBJC_IVAR____TtC9Coherence15CRStringDecoder_subsequence[0]];
    v37[0] = 1;
    v38 = 1;
    *v26 = 0;
    v27 = MEMORY[0x1E69E7CC0];
    *(v26 + 1) = MEMORY[0x1E69E7CC0];
    *(v26 + 2) = v27;
    *(v26 + 3) = v27;
    *(v26 + 4) = 0;
    v26[40] = 1;
    *(v26 + 6) = 0;
    *(v26 + 7) = 0;
    v26[64] = 1;
    v28 = &v24[OBJC_IVAR____TtC9Coherence15CRStringDecoder_encoded];
    v29 = *a1;
    v30 = a1[2];
    *(v28 + 1) = a1[1];
    *(v28 + 2) = v30;
    *v28 = v29;
    v31 = a1[3];
    v32 = a1[4];
    v33 = a1[5];
    *(v28 + 12) = *(a1 + 12);
    *(v28 + 4) = v32;
    *(v28 + 5) = v33;
    *(v28 + 3) = v31;
    *&v24[OBJC_IVAR____TtC9Coherence15CRStringDecoder_decoder] = a2;

    sub_1ADE51B64(a1, v37);
    v21 = type metadata accessor for CRStringDecoder();
    v36 = v24;
    v22 = &v36;
  }

  v22->super_class = v21;

  return [(objc_super *)v22 init];
}

uint64_t sub_1ADE0CC88()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1ADE0CCC0()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

id sub_1ADE0CCF8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  v6 = type metadata accessor for CRSequenceStorage(0, a2, a3, a3);

  v7 = objc_allocWithZone(v6);
  result = sub_1ADE0CD68(a1, v7, v8, v9);
  a4[3] = v6;
  *a4 = result;
  return result;
}

id sub_1ADE0CD68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *v4;
  v6 = *MEMORY[0x1E69E7D40];
  *(v4 + qword_1EB5BD4A8) = a1;
  v7 = type metadata accessor for CRSequenceStorage(0, *((v6 & v5) + 0x50), *((v6 & v5) + 0x58), a4);
  v9.receiver = v4;
  v9.super_class = v7;
  return objc_msgSendSuper2(&v9, sel_init);
}

id CRSequence.count.getter()
{
  if (*v0)
  {
    return sub_1ADE0A96C();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1ADE0CE3C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Replica(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

void *CRSet.init(defaultState:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  result = CRSet.init()(a1, a2, a3, &v6);
  *a4 = v6;
  return result;
}

uint64_t sub_1ADE0CEE8()
{
  v1 = OBJC_IVAR____TtC9Coherence12ReplicaState_identity;
  v2 = sub_1AE23BFEC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1ADDD7E20(v0 + OBJC_IVAR____TtC9Coherence12ReplicaState__replica);

  return swift_deallocClassInstance();
}

uint64_t sub_1ADE0CF94()
{
  sub_1AE1D0FEC(v0[2], v0[3], v0[4], v0[5], v0[6], v0[7], v0[8], v0[9], v0[10], v0[11]);
  sub_1AE1D1058(v0[12], v0[13], v0[14], v0[15], v0[16], v0[17], v0[18], v0[19], v0[20], v0[21], v0[22], v0[23], v0[24]);

  return swift_deallocClassInstance();
}

void sub_1ADE0D120(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id obj)
{
  objc_sync_exit(obj);

  _Unwind_Resume(a1);
}

void Coherence_namespace::traverseIterative(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    memset(v4, 0, sizeof(v4));
    v5 = 1065353216;
    Coherence_namespace::traverseIterative(a1, v4, v3);
    std::__hash_table<std::__hash_value_type<Coherence_namespace::TopoSubstring const*,unsigned int>,std::__unordered_map_hasher<Coherence_namespace::TopoSubstring const*,std::__hash_value_type<Coherence_namespace::TopoSubstring const*,unsigned int>,std::hash<Coherence_namespace::TopoSubstring const*>,std::equal_to<Coherence_namespace::TopoSubstring const*>,true>,std::__unordered_map_equal<Coherence_namespace::TopoSubstring const*,std::__hash_value_type<Coherence_namespace::TopoSubstring const*,unsigned int>,std::equal_to<Coherence_namespace::TopoSubstring const*>,std::hash<Coherence_namespace::TopoSubstring const*>,true>,std::allocator<std::__hash_value_type<Coherence_namespace::TopoSubstring const*,unsigned int>>>::~__hash_table(v4);
  }
}

void sub_1ADE0D1A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::__hash_table<std::__hash_value_type<Coherence_namespace::TopoSubstring const*,unsigned int>,std::__unordered_map_hasher<Coherence_namespace::TopoSubstring const*,std::__hash_value_type<Coherence_namespace::TopoSubstring const*,unsigned int>,std::hash<Coherence_namespace::TopoSubstring const*>,std::equal_to<Coherence_namespace::TopoSubstring const*>,true>,std::__unordered_map_equal<Coherence_namespace::TopoSubstring const*,std::__hash_value_type<Coherence_namespace::TopoSubstring const*,unsigned int>,std::equal_to<Coherence_namespace::TopoSubstring const*>,std::hash<Coherence_namespace::TopoSubstring const*>,true>,std::allocator<std::__hash_value_type<Coherence_namespace::TopoSubstring const*,unsigned int>>>::~__hash_table(&a9);

  _Unwind_Resume(a1);
}

void Coherence_namespace::traverseIterative(uint64_t a1, void *a2, void *a3)
{
  v19 = a1;
  v5 = a3;
  if (a1)
  {
    v18 = 0u;
    memset(v17, 0, sizeof(v17));
    std::deque<Coherence_namespace::TopoSubstring *>::push_back(v17, &v19);
    v6 = *(&v18 + 1);
    if (*(&v18 + 1))
    {
      while (1)
      {
        v7 = v6 - 1;
        v8 = *(*(*(&v17[0] + 1) + (((v18 + v7) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((v18 + v7) & 0x1FF));
        *(&v18 + 1) = v7;
        std::deque<Coherence_namespace::TopoSubstring *>::__maybe_remove_back_spare[abi:ne200100](v17, 1);
        v5[2](v5, v8);
        while (1)
        {
          v10 = *(v8 + 56);
          v9 = *(v8 + 64);
          if (v9 - v10 != 8)
          {
            break;
          }

          v11 = *v10;
          if (*(*v10 + 80) != 1)
          {
            break;
          }

          v5[2](v5, *v10);
          v8 = v11;
        }

        if (v9 != v10)
        {
          break;
        }

LABEL_18:
        v6 = *(&v18 + 1);
        if (!*(&v18 + 1))
        {
          goto LABEL_19;
        }
      }

      v12 = v9 - 8;
      while (1)
      {
        v13 = std::__hash_table<Coherence_namespace::TopoSubstring *,std::hash<Coherence_namespace::TopoSubstring *>,std::equal_to<Coherence_namespace::TopoSubstring *>,std::allocator<Coherence_namespace::TopoSubstring *>>::find<Coherence_namespace::TopoSubstring *>(a2, v12);
        if (v13)
        {
          v14 = *(v13 + 6) - 1;
          if (*(v13 + 6) == 1)
          {
            goto LABEL_15;
          }
        }

        else
        {
          v15 = *(*v12 + 80);
          if (v15 < 2)
          {
LABEL_15:
            std::deque<Coherence_namespace::TopoSubstring *>::push_back(v17, v12);
            goto LABEL_16;
          }

          v20 = v12;
          v13 = std::__hash_table<std::__hash_value_type<Coherence_namespace::TopoSubstring *,unsigned int>,std::__unordered_map_hasher<Coherence_namespace::TopoSubstring *,std::__hash_value_type<Coherence_namespace::TopoSubstring *,unsigned int>,std::hash<Coherence_namespace::TopoSubstring *>,std::equal_to<Coherence_namespace::TopoSubstring *>,true>,std::__unordered_map_equal<Coherence_namespace::TopoSubstring *,std::__hash_value_type<Coherence_namespace::TopoSubstring *,unsigned int>,std::equal_to<Coherence_namespace::TopoSubstring *>,std::hash<Coherence_namespace::TopoSubstring *>,true>,std::allocator<std::__hash_value_type<Coherence_namespace::TopoSubstring *,unsigned int>>>::__emplace_unique_key_args<Coherence_namespace::TopoSubstring *,std::piecewise_construct_t const&,std::tuple<Coherence_namespace::TopoSubstring * const&>,std::tuple<>>(a2, v12, &std::piecewise_construct, &v20);
          v14 = v15 - 1;
        }

        *(v13 + 6) = v14;
LABEL_16:
        v16 = v12 == *(v8 + 56);
        v12 -= 8;
        if (v16)
        {
          goto LABEL_18;
        }
      }
    }

LABEL_19:
    std::deque<Coherence_namespace::TopoSubstring *>::~deque[abi:ne200100](v17);
  }
}

void sub_1ADE0D350(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::deque<Coherence_namespace::TopoSubstring *>::~deque[abi:ne200100](&a9);

  _Unwind_Resume(a1);
}

void std::deque<Coherence_namespace::TopoSubstring *>::__add_back_capacity(unint64_t *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x200;
  v3 = v1 - 512;
  if (!v2)
  {
    v5 = a1[2];
    v6 = a1[3];
    v7 = v6 - *a1;
    if (v5 - a1[1] < v7)
    {
      if (v6 != v5)
      {
        operator new();
      }

      operator new();
    }

    if (v6 == *a1)
    {
      v8 = 1;
    }

    else
    {
      v8 = v7 >> 2;
    }

    v10 = a1;
    std::__allocate_at_least[abi:ne200100]<std::allocator<Coherence_namespace::TopoSubstring **>>(a1, v8);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v9 = *v4;
  a1[1] = (v4 + 1);
  std::__split_buffer<Coherence_namespace::TopoSubstring **>::emplace_back<Coherence_namespace::TopoSubstring **&>(a1, &v9);
}

void sub_1ADE0D4FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<Coherence_namespace::TopoSubstring **>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::deque<Coherence_namespace::TopoSubstring *>::push_back(unint64_t *a1, void *a2)
{
  v4 = a1[2];
  v5 = a1[1];
  if (v4 == v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = ((v4 - v5) << 6) - 1;
  }

  v7 = a1[5];
  v8 = v7 + a1[4];
  if (v6 == v8)
  {
    std::deque<Coherence_namespace::TopoSubstring *>::__add_back_capacity(a1);
    v5 = a1[1];
    v7 = a1[5];
    v8 = a1[4] + v7;
  }

  *(*(v5 + ((v8 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v8 & 0x1FF)) = *a2;
  a1[5] = v7 + 1;
}

void std::__split_buffer<Coherence_namespace::TopoSubstring **>::emplace_back<Coherence_namespace::TopoSubstring **>(unint64_t *a1, void *a2)
{
  v4 = a1[2];
  if (v4 == a1[3])
  {
    v5 = a1[1];
    v6 = &v5[-*a1];
    if (v5 <= *a1)
    {
      if (v4 == *a1)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*a1] >> 2;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<Coherence_namespace::TopoSubstring **>>(a1[4], v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = a1[1];
    }

    v4 = &v9[v10];
    a1[1] = &v5[8 * v7];
    a1[2] = &v9[v10];
  }

  *v4 = *a2;
  a1[2] += 8;
}

uint64_t std::deque<Coherence_namespace::TopoSubstring *>::__maybe_remove_back_spare[abi:ne200100](void *a1, int a2)
{
  v3 = a1[1];
  v2 = a1[2];
  if (v2 == v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = ((v2 - v3) << 6) - 1;
  }

  v5 = v4 - (a1[5] + a1[4]);
  if (v5 < 0x200)
  {
    a2 = 1;
  }

  if (v5 < 0x400)
  {
    v7 = a2;
  }

  else
  {
    v7 = 0;
  }

  if ((v7 & 1) == 0)
  {
    operator delete(*(v2 - 8));
    a1[2] -= 8;
  }

  return v7 ^ 1u;
}

uint64_t std::deque<Coherence_namespace::TopoSubstring *>::~deque[abi:ne200100](void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  a1[5] = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 256;
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_9;
    }

    v5 = 512;
  }

  a1[4] = v5;
LABEL_9:
  while (v2 != v3)
  {
    v6 = *v2++;
    operator delete(v6);
  }

  return std::__split_buffer<Coherence_namespace::TopoSubstring **>::~__split_buffer(a1);
}

uint64_t std::__split_buffer<Coherence_namespace::TopoSubstring **>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    *(a1 + 16) = v2 + ((v3 - v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  v4 = *a1;
  if (*a1)
  {
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_1ADE0D908(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Replica(0);
  v7 = v6 - 8;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v13[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = OBJC_IVAR____TtC9Coherence11ObjCReplica_uuid;
  swift_beginAccess();
  v11 = sub_1AE23BFEC();
  result = (*(*(v11 - 8) + 16))(v9, a3 + v10, v11);
  *&v9[*(v7 + 28)] = *(a3 + OBJC_IVAR____TtC9Coherence11ObjCReplica_index);
  if (__OFADD__(a1, a2))
  {
    __break(1u);
  }

  else if (a1 + a2 >= a1)
  {
    swift_beginAccess();
    sub_1ADE0DA80(v9, a1);
    sub_1ADE0DCEC(v9, type metadata accessor for Replica);
    return swift_endAccess();
  }

  __break(1u);
  return result;
}

uint64_t sub_1ADE0DA80(uint64_t a1, uint64_t a2)
{
  v4 = v3;
  v22[2] = a2;
  v6 = type metadata accessor for Replica(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1AE23C12C();
  v22[1] = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *v3;
  v23 = v13;
  v15 = sub_1ADDD8A6C(a1);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_10;
  }

  v2 = v14;
  if (v13[3] >= v18)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_6;
    }

LABEL_10:
    sub_1ADDFB81C();
    v13 = v23;
    goto LABEL_6;
  }

  sub_1ADDDDED0(v18, isUniquelyReferenced_nonNull_native);
  v13 = v23;
  v19 = sub_1ADDD8A6C(a1);
  if ((v2 & 1) != (v20 & 1))
  {
    result = sub_1AE23E27C();
    __break(1u);
    return result;
  }

  v15 = v19;
LABEL_6:
  *v4 = v13;
  if ((v2 & 1) == 0)
  {
    sub_1AE23C11C();
    sub_1ADDDE3A0(a1, v8, type metadata accessor for Replica);
    sub_1ADDDE678(v15, v8, v11, v13);
  }

  return sub_1AE23C07C();
}

uint64_t sub_1ADE0DC8C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1ADE0DCEC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t Coherence_namespace::TopoReplica::TopoReplica(uint64_t a1, void *a2)
{
  v3 = a2;
  *(a1 + 16) = objc_msgSend_index(v3);
  v4 = [v3 uuid];
  [v4 getUUIDBytes:a1];

  return a1;
}

void Coherence_namespace::TopoSubstring::addAddedBy(Coherence_namespace::TopoSubstring *this, const Coherence_namespace::TopoID *a2)
{
  v5 = *(this + 5);
  v4 = *(this + 6);
  if (v5 >= v4)
  {
    v8 = *(this + 4);
    v9 = 0xAAAAAAAAAAAAAAABLL * ((v5 - v8) >> 3);
    v10 = v9 + 1;
    if (v9 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<Coherence_namespace::TopoSubstring *>::__throw_length_error[abi:ne200100]();
    }

    v11 = 0xAAAAAAAAAAAAAAABLL * ((v4 - v8) >> 3);
    if (2 * v11 > v10)
    {
      v10 = 2 * v11;
    }

    if (v11 >= 0x555555555555555)
    {
      v12 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v12 = v10;
    }

    if (v12)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<Coherence_namespace::TopoID>>(this + 32, v12);
    }

    v13 = 24 * v9;
    v14 = *a2;
    *(v13 + 16) = *(a2 + 2);
    *v13 = v14;
    v7 = 24 * v9 + 24;
    v15 = *(this + 4);
    v16 = *(this + 5) - v15;
    v17 = 24 * v9 - v16;
    memcpy((v13 - v16), v15, v16);
    v18 = *(this + 4);
    *(this + 4) = v17;
    *(this + 5) = v7;
    *(this + 6) = 0;
    if (v18)
    {
      operator delete(v18);
    }
  }

  else
  {
    v6 = *a2;
    *(v5 + 16) = *(a2 + 2);
    *v5 = v6;
    v7 = v5 + 24;
  }

  v19 = *(this + 4);
  v20 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * ((v7 - v19) >> 3));
  *(this + 5) = v7;
  if (v7 == v19)
  {
    v21 = 0;
  }

  else
  {
    v21 = v20;
  }

  std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,Coherence_namespace::TopoID *,false>(v19, v7, &v22, v21, 1);
}

void std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,Coherence_namespace::TopoID *,false>(unint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
LABEL_1:
  v8 = (a2 - 24);
  v74 = (a2 - 48);
  v9 = (a2 - 72);
  v10 = result;
LABEL_2:
  v11 = 1 - a4;
  while (1)
  {
    result = v10;
    v12 = v11;
    v13 = a2 - v10;
    v14 = 0xAAAAAAAAAAAAAAABLL * ((a2 - v10) >> 3);
    if (v14 > 2)
    {
      break;
    }

    if (v14 < 2)
    {
      return;
    }

    if (v14 == 2)
    {
      if (Coherence_namespace::TopoID::operator<(a2 - 24, v10))
      {
LABEL_77:
        v122 = *(v10 + 16);
        v98 = *v10;
        v70 = *v8;
        *(v10 + 16) = *(a2 - 8);
        *v10 = v70;
        *v8 = v98;
        v59 = v122;
        goto LABEL_78;
      }

      return;
    }

LABEL_10:
    if (v13 <= 575)
    {
      if (a5)
      {

        std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,Coherence_namespace::TopoID *>(v10, a2);
      }

      else
      {

        std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,Coherence_namespace::TopoID *>(v10, a2);
      }

      return;
    }

    if (v12 == 1)
    {
      if (v10 != a2)
      {

        std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,Coherence_namespace::TopoID *,Coherence_namespace::TopoID *>(v10, a2, a2, a3);
      }

      return;
    }

    v15 = v14 >> 1;
    v16 = v10 + 24 * (v14 >> 1);
    if (v13 >= 0xC01)
    {
      v17 = Coherence_namespace::TopoID::operator<(v10 + 24 * v15, v10);
      v18 = Coherence_namespace::TopoID::operator<(a2 - 24, result + 24 * v15);
      if (v17)
      {
        if (v18)
        {
          v100 = *(result + 16);
          v76 = *result;
          v19 = *v8;
          *(result + 16) = *(a2 - 8);
          *result = v19;
          goto LABEL_27;
        }

        v106 = *(result + 16);
        v82 = *result;
        v27 = *v16;
        *(result + 16) = *(v16 + 16);
        *result = v27;
        *(v16 + 16) = v106;
        *v16 = v82;
        if (Coherence_namespace::TopoID::operator<(a2 - 24, result + 24 * v15))
        {
          v100 = *(v16 + 16);
          v76 = *v16;
          v28 = *v8;
          *(v16 + 16) = *(a2 - 8);
          *v16 = v28;
LABEL_27:
          *v8 = v76;
          *(a2 - 8) = v100;
        }
      }

      else if (v18)
      {
        v102 = *(v16 + 16);
        v78 = *v16;
        v23 = *v8;
        *(v16 + 16) = *(a2 - 8);
        *v16 = v23;
        *v8 = v78;
        *(a2 - 8) = v102;
        if (Coherence_namespace::TopoID::operator<(result + 24 * v15, result))
        {
          v103 = *(result + 16);
          v79 = *result;
          v24 = *v16;
          *(result + 16) = *(v16 + 16);
          *result = v24;
          *(v16 + 16) = v103;
          *v16 = v79;
        }
      }

      v29 = result + 24 * v15 - 24;
      v30 = Coherence_namespace::TopoID::operator<(v29, result + 24);
      v31 = Coherence_namespace::TopoID::operator<(v74, v29);
      if (v30)
      {
        if (v31)
        {
          v32 = *(result + 40);
          v33 = *(result + 24);
          v34 = *(a2 - 32);
          *(result + 24) = *v74;
          *(result + 40) = v34;
          *v74 = v33;
          *(a2 - 32) = v32;
        }

        else
        {
          v86 = *(result + 24);
          v110 = *(result + 40);
          v39 = *(result + 24 * v15 - 8);
          *(result + 24) = *v29;
          *(result + 40) = v39;
          *(result + 24 * v15 - 8) = v110;
          *v29 = v86;
          if (Coherence_namespace::TopoID::operator<(v74, v29))
          {
            v111 = *(result + 24 * v15 - 8);
            v87 = *v29;
            v40 = *v74;
            *(result + 24 * v15 - 8) = *(a2 - 32);
            *v29 = v40;
            *v74 = v87;
            *(a2 - 32) = v111;
          }
        }
      }

      else if (v31)
      {
        v107 = *(result + 24 * v15 - 8);
        v83 = *v29;
        v35 = *v74;
        *(result + 24 * v15 - 8) = *(a2 - 32);
        *v29 = v35;
        *v74 = v83;
        *(a2 - 32) = v107;
        if (Coherence_namespace::TopoID::operator<(v29, result + 24))
        {
          v84 = *(result + 24);
          v108 = *(result + 40);
          v36 = *(result + 24 * v15 - 8);
          *(result + 24) = *v29;
          *(result + 40) = v36;
          *(result + 24 * v15 - 8) = v108;
          *v29 = v84;
        }
      }

      v41 = result + 24 * v15;
      v42 = Coherence_namespace::TopoID::operator<(v41 + 24, result + 48);
      v43 = Coherence_namespace::TopoID::operator<(a2 - 72, v41 + 24);
      if (v42)
      {
        if (v43)
        {
          v44 = *(result + 64);
          v45 = *(result + 48);
          v46 = *(a2 - 56);
          *(result + 48) = *v9;
          *(result + 64) = v46;
          *v9 = v45;
          goto LABEL_47;
        }

        v90 = *(result + 48);
        v114 = *(result + 64);
        v49 = *(v41 + 40);
        *(result + 48) = *(v41 + 24);
        *(result + 64) = v49;
        *(v41 + 40) = v114;
        *(v41 + 24) = v90;
        if (Coherence_namespace::TopoID::operator<(a2 - 72, v41 + 24))
        {
          v115 = *(v41 + 40);
          v91 = *(v41 + 24);
          v50 = *v9;
          *(v41 + 40) = *(a2 - 56);
          *(v41 + 24) = v50;
          *v9 = v91;
          v44 = v115;
LABEL_47:
          *(a2 - 56) = v44;
        }
      }

      else if (v43)
      {
        v112 = *(v41 + 40);
        v88 = *(v41 + 24);
        v47 = *v9;
        *(v41 + 40) = *(a2 - 56);
        *(v41 + 24) = v47;
        *v9 = v88;
        *(a2 - 56) = v112;
        if (Coherence_namespace::TopoID::operator<(v41 + 24, result + 48))
        {
          v89 = *(result + 48);
          v113 = *(result + 64);
          v48 = *(v41 + 40);
          *(result + 48) = *(v41 + 24);
          *(result + 64) = v48;
          *(v41 + 40) = v113;
          *(v41 + 24) = v89;
        }
      }

      v51 = Coherence_namespace::TopoID::operator<(v16, v29);
      v52 = Coherence_namespace::TopoID::operator<(v41 + 24, v16);
      if (v51)
      {
        if (v52)
        {
          v116 = *(v29 + 16);
          v92 = *v29;
          *v29 = *(v41 + 24);
          *(v29 + 16) = *(v41 + 40);
          goto LABEL_56;
        }

        v119 = *(v29 + 16);
        v95 = *v29;
        *v29 = *v16;
        *(v29 + 16) = *(v16 + 16);
        *(v16 + 16) = v119;
        *v16 = v95;
        if (Coherence_namespace::TopoID::operator<(v41 + 24, v16))
        {
          v116 = *(v16 + 16);
          v92 = *v16;
          *v16 = *(v41 + 24);
          *(v16 + 16) = *(v41 + 40);
LABEL_56:
          *(v41 + 40) = v116;
          *(v41 + 24) = v92;
        }
      }

      else if (v52)
      {
        v117 = *(v16 + 16);
        v93 = *v16;
        *v16 = *(v41 + 24);
        *(v16 + 16) = *(v41 + 40);
        *(v41 + 40) = v117;
        *(v41 + 24) = v93;
        if (Coherence_namespace::TopoID::operator<(v16, v29))
        {
          v118 = *(v29 + 16);
          v94 = *v29;
          *v29 = *v16;
          *(v29 + 16) = *(v16 + 16);
          *(v16 + 16) = v118;
          *v16 = v94;
        }
      }

      v120 = *(result + 16);
      v96 = *result;
      v53 = *v16;
      *(result + 16) = *(v16 + 16);
      *result = v53;
      *(v16 + 16) = v120;
      *v16 = v96;
      goto LABEL_58;
    }

    v20 = Coherence_namespace::TopoID::operator<(v10, v10 + 24 * v15);
    v21 = Coherence_namespace::TopoID::operator<(a2 - 24, result);
    if (v20)
    {
      if (v21)
      {
        v101 = *(v16 + 16);
        v77 = *v16;
        v22 = *v8;
        *(v16 + 16) = *(a2 - 8);
        *v16 = v22;
LABEL_36:
        *v8 = v77;
        *(a2 - 8) = v101;
        goto LABEL_58;
      }

      v109 = *(v16 + 16);
      v85 = *v16;
      v37 = *result;
      *(v16 + 16) = *(result + 16);
      *v16 = v37;
      *(result + 16) = v109;
      *result = v85;
      if (Coherence_namespace::TopoID::operator<(a2 - 24, result))
      {
        v101 = *(result + 16);
        v77 = *result;
        v38 = *v8;
        *(result + 16) = *(a2 - 8);
        *result = v38;
        goto LABEL_36;
      }
    }

    else if (v21)
    {
      v104 = *(result + 16);
      v80 = *result;
      v25 = *v8;
      *(result + 16) = *(a2 - 8);
      *result = v25;
      *v8 = v80;
      *(a2 - 8) = v104;
      if (Coherence_namespace::TopoID::operator<(result, result + 24 * v15))
      {
        v105 = *(v16 + 16);
        v81 = *v16;
        v26 = *result;
        *(v16 + 16) = *(result + 16);
        *v16 = v26;
        *(result + 16) = v105;
        *result = v81;
      }
    }

LABEL_58:
    if ((a5 & 1) == 0 && !Coherence_namespace::TopoID::operator<(result - 24, result))
    {
      v10 = std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,Coherence_namespace::TopoID *,std::__less<void,void> &>(result, a2);
      goto LABEL_65;
    }

    v54 = std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,Coherence_namespace::TopoID *,std::__less<void,void> &>(result, a2);
    if ((v55 & 1) == 0)
    {
      goto LABEL_63;
    }

    v56 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,Coherence_namespace::TopoID *>(result, v54);
    v10 = (v54 + 24);
    if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,Coherence_namespace::TopoID *>((v54 + 24), a2))
    {
      a4 = -v12;
      a2 = v54;
      if (v56)
      {
        return;
      }

      goto LABEL_1;
    }

    v11 = v12 + 1;
    if (!v56)
    {
LABEL_63:
      std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,Coherence_namespace::TopoID *,false>(result, v54, a3, -v12, a5 & 1);
      v10 = (v54 + 24);
LABEL_65:
      a5 = 0;
      a4 = -v12;
      goto LABEL_2;
    }
  }

  if (v14 != 3)
  {
    if (v14 == 4)
    {

      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,Coherence_namespace::TopoID *,0>(v10, (v10 + 24), (v10 + 48), (a2 - 24));
      return;
    }

    if (v14 == 5)
    {
      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,Coherence_namespace::TopoID *,0>(v10, (v10 + 24), (v10 + 48), (v10 + 72));
      if (!Coherence_namespace::TopoID::operator<(a2 - 24, v10 + 72))
      {
        return;
      }

      v62 = *(v10 + 88);
      v63 = *(v10 + 72);
      v64 = *(a2 - 8);
      *(v10 + 72) = *v8;
      *(v10 + 88) = v64;
      *v8 = v63;
      *(a2 - 8) = v62;
      if (!Coherence_namespace::TopoID::operator<(v10 + 72, v10 + 48))
      {
        return;
      }

      v65 = *(v10 + 64);
      v66 = *(v10 + 48);
      *(v10 + 48) = *(v10 + 72);
      *(v10 + 64) = *(v10 + 88);
      *(v10 + 72) = v66;
      *(v10 + 88) = v65;
      if (!Coherence_namespace::TopoID::operator<(v10 + 48, v10 + 24))
      {
        return;
      }

      v67 = *(v10 + 40);
      v68 = *(v10 + 24);
      *(v10 + 24) = *(v10 + 48);
      *(v10 + 40) = *(v10 + 64);
      *(v10 + 48) = v68;
      *(v10 + 64) = v67;
      goto LABEL_92;
    }

    goto LABEL_10;
  }

  v57 = Coherence_namespace::TopoID::operator<(v10 + 24, v10);
  v58 = Coherence_namespace::TopoID::operator<(a2 - 24, v10 + 24);
  if (!v57)
  {
    if (!v58)
    {
      return;
    }

    v71 = *(v10 + 40);
    v72 = *(v10 + 24);
    v73 = *(a2 - 8);
    *(v10 + 24) = *v8;
    *(v10 + 40) = v73;
    *v8 = v72;
    *(a2 - 8) = v71;
LABEL_92:
    if (Coherence_namespace::TopoID::operator<(v10 + 24, v10))
    {
      v123 = *(v10 + 16);
      v99 = *v10;
      *v10 = *(v10 + 24);
      *(v10 + 16) = *(v10 + 40);
      *(v10 + 24) = v99;
      *(v10 + 40) = v123;
    }

    return;
  }

  if (v58)
  {
    goto LABEL_77;
  }

  v121 = *(v10 + 16);
  v97 = *v10;
  *v10 = *(v10 + 24);
  *(v10 + 16) = *(v10 + 40);
  *(v10 + 24) = v97;
  *(v10 + 40) = v121;
  if (Coherence_namespace::TopoID::operator<(a2 - 24, v10 + 24))
  {
    v59 = *(v10 + 40);
    v60 = *(v10 + 24);
    v61 = *(a2 - 8);
    *(v10 + 24) = *v8;
    *(v10 + 40) = v61;
    *v8 = v60;
LABEL_78:
    *(a2 - 8) = v59;
  }
}

_TtC9Coherence11ObjCReplica *Coherence_namespace::TopoReplica::objc(Coherence_namespace::TopoReplica *this)
{
  v2 = [_TtC9Coherence11ObjCReplica alloc];
  v3 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:this];
  v4 = [(ObjCReplica *)v2 initWithUuid:v3 index:*(this + 4)];

  return v4;
}

char *std::vector<Coherence_namespace::TopoSubstring *>::insert(void *a1, char *__src, char *a3)
{
  v4 = __src;
  v6 = a1[1];
  v7 = a1[2];
  if (v6 >= v7)
  {
    v10 = *a1;
    v11 = (&v6[-*a1] >> 3) + 1;
    if (v11 >> 61)
    {
      std::vector<Coherence_namespace::TopoSubstring *>::__throw_length_error[abi:ne200100]();
    }

    v12 = &__src[-v10];
    v13 = v7 - v10;
    if (v13 >> 2 > v11)
    {
      v11 = v13 >> 2;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFF8)
    {
      v14 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v11;
    }

    v15 = v12 >> 3;
    v29 = a1;
    if (v14)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<Coherence_namespace::TopoSubstring *>>(a1, v14);
    }

    v26 = 0;
    v27 = 8 * v15;
    v28 = (8 * v15);
    std::__split_buffer<Coherence_namespace::TopoSubstring *>::emplace_back<Coherence_namespace::TopoSubstring * const&>(&v26, a3);
    v16 = v27;
    memcpy(v28, v4, a1[1] - v4);
    v17 = *a1;
    v18 = v27;
    *&v28 = v28 + a1[1] - v4;
    a1[1] = v4;
    v19 = v4 - v17;
    v20 = (v18 - (v4 - v17));
    memcpy(v20, v17, v19);
    v21 = *a1;
    *a1 = v20;
    v22 = a1[2];
    *(a1 + 1) = v28;
    *&v28 = v21;
    *(&v28 + 1) = v22;
    v26 = v21;
    v27 = v21;
    if (v21)
    {
      operator delete(v21);
    }

    return v16;
  }

  else if (__src == v6)
  {
    *v6 = *a3;
    a1[1] = v6 + 8;
  }

  else
  {
    v8 = __src + 8;
    if (v6 < 8)
    {
      v9 = a1[1];
    }

    else
    {
      *v6 = *(v6 - 1);
      v9 = (v6 + 8);
    }

    a1[1] = v9;
    if (v6 != v8)
    {
      memmove(__src + 8, __src, v6 - v8);
      v9 = a1[1];
    }

    v23 = v9 <= a3 || v4 > a3;
    v24 = 8;
    if (v23)
    {
      v24 = 0;
    }

    *v4 = *&a3[v24];
  }

  return v4;
}

void sub_1ADE0EDA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::__split_buffer<Coherence_namespace::TopoSubstring *>::emplace_back<Coherence_namespace::TopoSubstring * const&>(unint64_t *a1, void *a2)
{
  v4 = a1[2];
  if (v4 == a1[3])
  {
    v5 = a1[1];
    v6 = &v5[-*a1];
    if (v5 <= *a1)
    {
      if (v4 == *a1)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*a1] >> 2;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<Coherence_namespace::TopoSubstring *>>(a1[4], v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = a1[1];
    }

    v4 = &v9[v10];
    a1[1] = &v5[8 * v7];
    a1[2] = &v9[v10];
  }

  *v4 = *a2;
  a1[2] += 8;
}

id sub_1ADE0EEE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1AE23BFEC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + 32);
  sub_1AE23BF9C();
  v11(v14, v10, a3, a4);
  (*(v8 + 8))(v10, v7);
  __swift_project_boxed_opaque_existential_1(v14, v14[3]);
  v12 = sub_1AE23DFFC();
  __swift_destroy_boxed_opaque_existential_1(v14);

  return v12;
}

id sub_1ADE0F080@<X0>(void *a1@<X8>)
{
  v4 = *(v1 + 16);
  a1[3] = sub_1ADDEE524(0, &qword_1EB5BBB18, 0x1E696AAB0);
  *a1 = v4;

  return v4;
}

void sub_1ADE0F248(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  std::__hash_table<std::__hash_value_type<Coherence_namespace::TopoSubstring const*,unsigned int>,std::__unordered_map_hasher<Coherence_namespace::TopoSubstring const*,std::__hash_value_type<Coherence_namespace::TopoSubstring const*,unsigned int>,std::hash<Coherence_namespace::TopoSubstring const*>,std::equal_to<Coherence_namespace::TopoSubstring const*>,true>,std::__unordered_map_equal<Coherence_namespace::TopoSubstring const*,std::__hash_value_type<Coherence_namespace::TopoSubstring const*,unsigned int>,std::equal_to<Coherence_namespace::TopoSubstring const*>,std::hash<Coherence_namespace::TopoSubstring const*>,true>,std::allocator<std::__hash_value_type<Coherence_namespace::TopoSubstring const*,unsigned int>>>::~__hash_table(v15 + 48);
  _Unwind_Resume(a1);
}

BOOL Coherence_namespace::TopoSubstring::isSequentialWith(Coherence_namespace::TopoSubstring *this, const TopoIDRange *a2)
{
  result = Coherence_namespace::TopoIDRange::isSequentialWith(this, a2);
  if (result)
  {
    v5 = *(this + 4);
    v6 = *(this + 5);
    v7 = *&a2[1].charID.replica.uuid[4];
    if (v6 - v5 == *&a2[1].charID.replica.uuid[12] - v7)
    {
      if (v6 == v5)
      {
        return 1;
      }

      v8 = 0;
      v9 = *(this + 6);
      if (0xAAAAAAAAAAAAAAABLL * ((v6 - v5) >> 3) <= 1)
      {
        v10 = 1;
      }

      else
      {
        v10 = 0xAAAAAAAAAAAAAAABLL * ((v6 - v5) >> 3);
      }

      while (*(v5 + v8 + 16) == *(v7 + v8 + 16))
      {
        if (uuid_compare((v5 + v8), (v7 + v8)))
        {
          break;
        }

        v5 = *(this + 4);
        v7 = *&a2[1].charID.replica.uuid[4];
        if (*(v5 + v8 + 20) + v9 != *(v7 + v8 + 20))
        {
          break;
        }

        v8 += 24;
        if (!--v10)
        {
          return 1;
        }
      }
    }

    return 0;
  }

  return result;
}

unint64_t CRAttributedString.Attributes.init()@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1ADE0F4FC(MEMORY[0x1E69E7CC0]);
  *a1 = result;
  return result;
}

unint64_t sub_1ADE0F4FC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA098, &qword_1AE241878);
    v3 = sub_1AE23DCDC();
    v4 = a1 + 32;

    while (1)
    {
      sub_1ADDCEE40(v4, &v11, &qword_1EB5BA0A0, &qword_1AE241880);
      v5 = v11;
      result = sub_1ADDF1D10(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_1ADDEE390(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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

uint64_t CRAttributedString.Attributes.subscript.setter(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v24[2] = a2;
  v6 = *(*a2 + *MEMORY[0x1E69E6CE8] + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = sub_1AE23D7CC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v24 - v10;
  v12 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = v24 - v18;
  v20 = *(v9 + 16);
  v25 = a1;
  v20(v11, a1, v8, v17);
  if ((*(v12 + 48))(v11, 1, AssociatedTypeWitness) == 1)
  {
    v21 = *(v9 + 8);
    v21(v11, v8);
    (*(a4 + 40))(v6, a4);
    v22 = sub_1AE23CCDC();

    v26 = 0u;
    v27 = 0u;
    sub_1ADE15F98(&v26, v22);

    return (v21)(v25, v8);
  }

  else
  {
    (*(v12 + 32))(v19, v11, AssociatedTypeWitness);
    (*(a4 + 40))(v6, a4);
    v24[0] = sub_1AE23CCDC();

    (*(v12 + 16))(v15, v19, AssociatedTypeWitness);
    *(&v27 + 1) = &type metadata for AnyCRValue;
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedConformanceWitness();
    AnyCRValue.init<A>(_:)(v15, AssociatedTypeWitness, &v26);
    sub_1ADE15F98(&v26, v24[0]);

    (*(v9 + 8))(v25, v8);
    return (*(v12 + 8))(v19, AssociatedTypeWitness);
  }
}

void sub_1ADE0F9AC(uint64_t a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  sub_1ADE0B3D0(a4);
  v8 = *v4;
  if (v8)
  {
    [*(v8 + 16) attributedString];
    objc_opt_self();
    v9 = swift_dynamicCastObjCClassUnconditional();
    v11 = a1;

    sub_1AE1D24B8(&v11, a2, a3);
    type metadata accessor for Key(0);
    sub_1ADDEE3A0();
    v10 = sub_1AE23C9FC();

    [v9 setAttributes:v10 range:{a2, a3}];

    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }
}

uint64_t CRAttributedString.init()@<X0>(uint64_t *a1@<X8>)
{
  *a1 = 0;
  type metadata accessor for CRAttributedStringRef();
  v2 = swift_allocObject();
  result = sub_1ADDEBF04();
  *a1 = v2;
  return result;
}

uint64_t CROrderedSet.append(_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  sub_1ADE0FC48(v4, v4);
  v5 = *(v4 - 8);
  swift_allocObject();
  v6 = sub_1AE23CFFC();
  (*(v5 + 16))(v7, a1, v4);
  sub_1ADE0FCBC(v6, v4);
  v12 = v8;
  v9 = sub_1AE23D11C();
  WitnessTable = swift_getWitnessTable();
  sub_1ADDF7744(&v12, 0, 1, a2, v9, WitnessTable);
}

uint64_t sub_1ADE0FC48(uint64_t a1, uint64_t a2)
{
  if (swift_isClassType() && a2)
  {

    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BAA38, &unk_1AE2456C0);
  }

  else
  {

    return sub_1AE23DDAC();
  }
}

uint64_t CRSet.insert(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v8 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v16 - v12;
  sub_1ADE0FE78(a3);
  *v13 = sub_1ADE0FF20(&v13[*(TupleTypeMetadata2 + 48)], a2) & 1;
  (*(v8 + 32))(v10, v13, TupleTypeMetadata2);
  v14 = *v10;
  (*(*(v6 - 8) + 32))(a1, &v10[*(TupleTypeMetadata2 + 48)], v6);
  return v14;
}

void sub_1ADE0FE78(uint64_t a1)
{
  v2 = v1;
  v4[0] = *(a1 + 16);
  v4[1] = &type metadata for CRSetElement;
  v5 = *(a1 + 24);
  v6 = &off_1EE7B4A80;
  type metadata accessor for CRSetRef(0, v4);
  if ((sub_1AE23DFBC() & 1) == 0)
  {
    v3 = (*(**v1 + 288))();

    *v2 = v3;
  }
}

uint64_t sub_1ADE0FF20(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v53 = a1;
  v54 = *v2;
  v55 = a2;
  v4 = *(v54 + 80);
  v52 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v51 = &v48 - v5;
  v6 = type metadata accessor for Replica(0);
  MEMORY[0x1EEE9AC00](v6);
  v49 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1AE23C12C();
  v50 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v48 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Timestamp(0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v48 - v15;
  swift_beginAccess();
  if (*(v2[5] + 16))
  {
    v17 = *(v54 + 104);

    sub_1ADDFFB6C(v55, v4, v17);
    if (v18)
    {

      sub_1AE23CB9C();

      return 0;
    }
  }

  sub_1ADE10580(v16);
  sub_1ADDF8030(v16, v13, type metadata accessor for Timestamp);
  v20 = sub_1ADE09898(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v22 = v20[2];
  v21 = v20[3];
  if (v22 >= v21 >> 1)
  {
    v20 = sub_1ADE09898((v21 > 1), v22 + 1, 1, v20);
  }

  v20[2] = v22 + 1;
  v23 = v20 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
  sub_1AE017B14(v13, &v23[*(v11 + 72) * v22]);
  v24 = v20[2];
  v57 = v23;
  v58 = v24;
  sub_1ADDF3CCC(sub_1ADF7B924, 0);
  swift_beginAccess();
  if (!*&v16[*(v6 + 20)])
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v56 = v3[3];
    v26 = v56;
    v3[3] = 0x8000000000000000;
    v28 = sub_1ADDD8A6C(v16);
    v36 = v26[2];
    v37 = (v35 & 1) == 0;
    v38 = v36 + v37;
    if (!__OFADD__(v36, v37))
    {
      v39 = v35;
      if (v26[3] >= v38)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1ADDFB81C();
          v26 = v56;
        }
      }

      else
      {
        sub_1ADDDDED0(v38, isUniquelyReferenced_nonNull_native);
        v26 = v56;
        v40 = sub_1ADDD8A6C(v16);
        if ((v39 & 1) != (v41 & 1))
        {
          goto LABEL_27;
        }

        v28 = v40;
      }

      v43 = v52;
      v42 = v53;
      v3[3] = v26;
      if (v39)
      {
        goto LABEL_19;
      }

      goto LABEL_18;
    }

    goto LABEL_25;
  }

  v25 = swift_isUniquelyReferenced_nonNull_native();
  v56 = v3[4];
  v26 = v56;
  v3[4] = 0x8000000000000000;
  v28 = sub_1ADDD8A6C(v16);
  v29 = v26[2];
  v30 = (v27 & 1) == 0;
  v31 = v29 + v30;
  if (__OFADD__(v29, v30))
  {
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    sub_1ADDFB81C();
    v26 = v56;
LABEL_17:
    v43 = v52;
    v42 = v53;
    v3[4] = v26;
    if (v10)
    {
LABEL_19:
      sub_1AE23C08C();
      swift_endAccess();
      v46 = *(v43 + 16);
      v47 = v55;
      v46(v51, v55, v4);
      v56 = v20;
      swift_beginAccess();
      sub_1AE23CB1C();
      sub_1AE23CB8C();
      swift_endAccess();
      sub_1AE017AB8(v16);
      v46(v42, v47, v4);
      return 1;
    }

LABEL_18:
    v53 = v4;
    v44 = v48;
    sub_1AE23C11C();
    v45 = v49;
    sub_1ADDF8030(v16, v49, type metadata accessor for Replica);
    v4 = v53;
    sub_1ADDDE678(v28, v45, v44, v26);
    goto LABEL_19;
  }

  LOBYTE(v10) = v27;
  if (v26[3] >= v31)
  {
    if (v25)
    {
      goto LABEL_17;
    }

    goto LABEL_26;
  }

  sub_1ADDDDED0(v31, v25);
  v26 = v56;
  v32 = sub_1ADDD8A6C(v16);
  if ((v10 & 1) == (v33 & 1))
  {
    v28 = v32;
    goto LABEL_17;
  }

LABEL_27:
  result = sub_1AE23E27C();
  __break(1u);
  return result;
}

void sub_1ADE10580(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = qword_1ED967EE8;

  if (v4 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_1ED96F1F8);
  sub_1AE1FEC4C(v3, a1);
  os_unfair_lock_unlock(&dword_1ED96F1F8);
  v5 = OBJC_IVAR____TtC9Coherence12ReplicaState_localCounter;
  v6 = *(v3 + OBJC_IVAR____TtC9Coherence12ReplicaState_localCounter);
  *(a1 + *(type metadata accessor for Timestamp(0) + 20)) = v6;
  if (__OFADD__(v6, 1))
  {
    __break(1u);
  }

  else
  {
    *(v3 + v5) = v6 + 1;
  }
}

uint64_t sub_1ADE10650(uint64_t a1)
{
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v22 = *(a1 + 16);
  v5 = type metadata accessor for CROrderedSet.DeduplicatedInfo(255, v22, v3, v4);
  v6 = sub_1AE23D7CC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v21 - v8;
  v10 = *(v5 - 8);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v21 - v13;
  v15 = *(a1 + 48);
  (*(v7 + 16))(v9, v1 + v15, v6, v12);
  if ((*(v10 + 48))(v9, 1, v5) == 1)
  {
    return (*(v7 + 8))(v9, v6);
  }

  (*(v10 + 32))(v14, v9, v5);
  v17 = *(v5 + 44);
  v18 = type metadata accessor for CROrderedSetElement(255, v22, v3, v4);
  v20 = type metadata accessor for CRSequence(0, v18, &off_1F23C8BA0, v19);
  sub_1AE168474(&v14[v17], v20);
  (*(v10 + 8))(v14, v5);
  (*(v7 + 8))(v1 + v15, v6);
  return (*(v10 + 56))(v1 + v15, 1, 1, v5);
}

void sub_1ADE108AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  type metadata accessor for CRSequenceRef(0, *(a1 + 16), *(a1 + 24), a4);
  if ((sub_1AE23DFAC() & 1) == 0)
  {
    v6 = swift_allocObject();

    sub_1ADE162F8(v7);

    *v5 = v6;
  }
}

id sub_1ADE10964@<X0>(uint64_t a1@<X3>, uint64_t a2@<X4>, uint64_t a3@<X6>, void *a4@<X8>)
{
  v6 = type metadata accessor for CRSequenceStorage(0, a2, a3, a1);

  v7 = objc_allocWithZone(v6);
  result = sub_1ADE0CD68(a1, v8, v9, v10);
  a4[3] = v6;
  *a4 = result;
  return result;
}

uint64_t sub_1ADE109CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for CRSequenceStorage(0, *((*MEMORY[0x1E69E7D40] & *v4) + 0x50), *((*MEMORY[0x1E69E7D40] & *v4) + 0x58), a4);
  swift_dynamicCastClassUnconditional();
  swift_beginAccess();
  swift_beginAccess();
  sub_1AE23D11C();

  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1AE23D57C();
  return swift_endAccess();
}

void sub_1ADE10B20(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_unknownObjectRetain();
  v8 = a1;
  sub_1ADE109CC(a3, a4, v8, v7);
  swift_unknownObjectRelease();
}

uint64_t *std::vector<Coherence_namespace::TopoSubstring *>::__assign_with_size[abi:ne200100]<Coherence_namespace::TopoSubstring **,Coherence_namespace::TopoSubstring **>(uint64_t *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 3)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (!(a4 >> 61))
    {
      v9 = v7 >> 2;
      if (v7 >> 2 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFF8)
      {
        v10 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<Coherence_namespace::TopoSubstring *>::__vallocate[abi:ne200100](v6, v10);
    }

    std::vector<Coherence_namespace::TopoSubstring *>::__throw_length_error[abi:ne200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 3)
  {
    v15 = a3 - __src;
    if (v15)
    {
      result = memmove(*result, __src, v15);
    }

    v14 = &v8[v15];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    if (a3 != v13)
    {
      result = memmove(v11, v13, a3 - v13);
    }

    v14 = &v11[a3 - v13];
  }

  v6[1] = v14;
  return result;
}

uint64_t sub_1ADE10CC4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_1ADE10D14()
{
  (*(*(*(*v0 + 200) - 8) + 8))(v0 + *(*v0 + 224));

  return swift_deallocClassInstance();
}

void sub_1ADE10DC0(uint64_t *a1@<X0>, uint64_t a2@<X1>, void (*a3)(void *)@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, uint64_t a10)
{
  v87 = a7;
  v88 = a8;
  v85 = a5;
  v86 = a6;
  v92 = a4;
  v14 = type metadata accessor for FinalizedTimestamp(0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v84 = v75 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = v75 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5B9E70, &unk_1AE240EC0);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = v75 - v20;
  v22 = sub_1AE23BFEC();
  v23 = *(v22 - 8);
  v27.n128_f64[0] = MEMORY[0x1EEE9AC00](v22);
  v29 = v75 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = a1;
  v30 = *a1;
  v31 = *(a2 + 24);
  v32 = *(v31 + 16);
  if (v32)
  {
    v33 = v30 >= v32;
  }

  else
  {
    v33 = 1;
  }

  if (v33)
  {
    sub_1ADE42E40(v24, v25, v26);
    swift_allocError();
    *v34 = 0xD000000000000013;
    *(v34 + 8) = 0x80000001AE25FD70;
    *(v34 + 16) = 0;
    swift_willThrow();
    sub_1ADDDCE80(a3, v92);

    v35 = v91;
LABEL_22:
    sub_1ADFAECE8(v35);
    return;
  }

  v81 = a9;
  v82 = v18;
  v89 = a3;
  (*(v23 + 16))(v29, v31 + ((*(v23 + 80) + 32) & ~*(v23 + 80)) + *(v23 + 72) * v30, v22, v27);
  type metadata accessor for ReplicaState(0);
  v36 = swift_allocObject();
  v37 = OBJC_IVAR____TtC9Coherence12ReplicaState__replica;
  v38 = type metadata accessor for Replica(0);
  v39 = *(*(v38 - 8) + 56);
  v83 = a2;
  v39(v36 + v37, 1, 1, v38);
  (*(v23 + 32))(v36 + OBJC_IVAR____TtC9Coherence12ReplicaState_identity, v29, v22);
  *(v36 + OBJC_IVAR____TtC9Coherence12ReplicaState_localCounter) = 0;
  *(v36 + OBJC_IVAR____TtC9Coherence12ReplicaState_localAlternateCounter) = 0;
  v39(v21, 1, 1, v38);
  v40 = v83;
  swift_beginAccess();
  sub_1ADF92F3C(v21, v36 + v37, &unk_1EB5B9E70, &unk_1AE240EC0);
  swift_endAccess();
  v41 = v91;
  v42 = v91[3];
  if (v42)
  {
    v43 = v91[3];
  }

  else
  {
    v43 = MEMORY[0x1E69E7CC0];
  }

  if (v42)
  {
    v44 = v91[4];
  }

  else
  {
    v44 = MEMORY[0x1E69E7CC0];
  }

  sub_1ADE42C78(v42, v91[4]);

  v45 = v90;
  sub_1ADDD6748(v43, v44, v40, &v93);
  if (v45)
  {

    sub_1ADDDCE80(v89, v92);

    v35 = v41;
    goto LABEL_22;
  }

  v90 = v36;
  v46 = v93;
  if (*(v41 + 56))
  {
    v47 = 0;
  }

  else
  {
    v47 = *(v41 + 40);
  }

  if (*(v41 + 56))
  {
    v48 = 0;
  }

  else
  {
    v48 = *(v41 + 48);
  }

  sub_1ADE058D4(v47, v48, v40, v82);
  v79 = *(&v46 + 1);
  v80 = v46;
  v78 = v75;
  v99 = *(v41 + 8);
  *&v93 = v99;
  MEMORY[0x1EEE9AC00](v99);
  v49 = v86;
  v75[-8] = v85;
  v75[-7] = v49;
  v50 = v88;
  v75[-6] = v87;
  v75[-5] = v50;
  v75[-4] = a10;
  v75[-3] = v51;
  v77 = v51;
  v75[-2] = v40;

  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB5BBB90, &unk_1AE24EC40);
  v54 = type metadata accessor for CRDictionaryElement(255, v49, a10, v53);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BB180, &unk_1AE2427A0);
  v57 = sub_1ADE11630();
  v58 = sub_1ADE08EB0(sub_1ADE11694, &v75[-10], v52, TupleTypeMetadata2, v56, v57, MEMORY[0x1E69E7288], &v98);
  v75[1] = TupleTypeMetadata2;
  v75[2] = v54;
  v59 = v77;
  v76 = 0;
  sub_1ADFAECE8(v91);
  v60 = sub_1ADDCEDE0(&v99, qword_1EB5BBB90, &unk_1AE24EC40);
  v61 = v89;
  if (v89)
  {
    v62 = v92;

    v61(v58);
    v60 = sub_1ADDDCE80(v61, v62);
  }

  v91 = v75;
  *&v93 = v58;
  MEMORY[0x1EEE9AC00](v60);
  v64 = v85;
  v63 = v86;
  v75[-6] = v85;
  v75[-5] = v63;
  v65 = v63;
  v66 = v87;
  v67 = v88;
  v75[-4] = v87;
  v75[-3] = v67;
  v75[-2] = a10;
  v75[-1] = v59;
  sub_1AE23D11C();
  swift_getWitnessTable();
  v68 = v76;
  v69 = sub_1AE23CB2C();
  if (v68)
  {
    sub_1ADDD2728(v82, type metadata accessor for FinalizedTimestamp);

    sub_1ADDDCE80(v89, v92);
  }

  else
  {
    v70 = v69;
    *&v93 = v64;
    *(&v93 + 1) = v65;
    v94 = v66;
    v95 = v67;
    v96 = a10;
    v97 = v59;
    type metadata accessor for CRDictionaryRef(0, &v93);
    *&v93 = v80;
    *(&v93 + 1) = v79;
    if (qword_1ED96B308 != -1)
    {
      swift_once();
    }

    sub_1AE23D6AC();
    v71 = v98;
    v72 = v82;
    v73 = v84;
    sub_1ADDD2658(v82, v84, type metadata accessor for FinalizedTimestamp);
    v74 = sub_1ADE1386C(v90, &v93, v70, v71, v73);
    sub_1ADDDCE80(v89, v92);

    sub_1ADDD2728(v72, type metadata accessor for FinalizedTimestamp);
    *v81 = v74;
  }
}

unint64_t sub_1ADE11630()
{
  result = qword_1ED969F40[0];
  if (!qword_1ED969F40[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1EB5BBB90, &unk_1AE24EC40);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED969F40);
  }

  return result;
}

void sub_1ADE116C0(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X6>, uint64_t a7@<X8>, char **a8)
{
  v52 = a7;
  v53 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v57 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for FinalizedTimestamp(0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v56 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = a6;
  v18 = type metadata accessor for CRDictionaryElement(0, a4, a6, v17);
  v50 = *(v18 - 8);
  v51 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v49 = &v49 - v19;
  v20 = a3;
  v59 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v49 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *a1;
  v24 = a1[1];
  v26 = a1[2];
  v54 = a1[3];
  v55 = v26;
  v58 = a4;
  if (v25)
  {
    inited = v25;
  }

  else
  {
    type metadata accessor for Proto_Value._StorageClass();
    inited = swift_initStaticObject();
  }

  type metadata accessor for CRDecoder();
  swift_allocObject();

  sub_1ADE0262C(inited, a2);

  v28 = *(*(a5 + 8) + 8);
  v29 = *(v28 + 8);

  v31 = v61;
  v29(v30, v20, v28);
  if (v31)
  {

    *a8 = v31;
  }

  else
  {
    v61 = v23;
    v32 = v58;
    if (v24)
    {
      v33 = v24;
    }

    else
    {
      type metadata accessor for Proto_CRDT._StorageClass();
      v33 = swift_initStaticObject();
    }

    v34 = v60;

    sub_1ADE04FC4(v33, a2, v32, v34, &v63);
    v60 = v20;
    v36 = v63;
    v37 = type metadata accessor for CRRegister(0, v32, v34, v35);
    CRRegister.timestamp.getter(v56);
    v62 = v36;
    CRRegister.value.getter(v37);
    v39 = v54;
    v38 = v55;
    if (v55)
    {
      v40 = v55;
    }

    else
    {
      v40 = MEMORY[0x1E69E7CC0];
    }

    if (v55)
    {
      v41 = v54;
    }

    else
    {
      v41 = MEMORY[0x1E69E7CC0];
    }

    sub_1ADE42C78(v38, v39);
    sub_1ADDF4A24(v40, v41, a2);
    v43 = v42;

    v44 = v49;
    sub_1ADE12F9C(v56, v57, v43, v32, v34, v49);
    v45 = v60;
    v46 = v51;
    v47 = *(swift_getTupleTypeMetadata2() + 48);
    v48 = v52;
    (*(v59 + 32))(v52, v61, v45);
    (*(v50 + 32))(v48 + v47, v44, v46);
  }
}

void SharedTagged_2.init(from:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *(a1 + 72);
  if (!v6)
  {
    sub_1ADE42E40(a1, a2, a3);
    swift_allocError();
    *v20 = 0xD000000000000017;
    *(v20 + 8) = 0x80000001AE25FB70;
    *(v20 + 16) = 0;
    swift_willThrow();
    goto LABEL_12;
  }

  v7 = v4;
  type metadata accessor for CRDecoder.CRValueContainer();
  *(swift_initStackObject() + 16) = a1;
  v11 = *(v6 + 16);
  if ((~v11 & 0xF000000000000007) != 0 && ((v11 >> 59) & 0x1E | (v11 >> 2) & 1) == 0xB)
  {
    v12 = *((v11 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
  }

  else
  {
    v12 = &unk_1EB5B9140;
  }

  swift_beginAccess();
  *&v52 = v12[2];
  v14 = *(type metadata accessor for SharedTagged_2(0, a2, a3, v13) + 36);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();

  v50 = AssociatedTypeWitness;
  v51 = v14;
  v49 = AssociatedConformanceWitness;
  CRExtensible.init(rawValue:)(&v52, AssociatedTypeWitness, AssociatedConformanceWitness, &protocol witness table for Int, MEMORY[0x1E69E6540], (a4 + v14));
  if (*(a1 + 57) >= 3u)
  {
    v17 = *(a1 + 72);
    if (!v17)
    {
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
      goto LABEL_57;
    }

    v18 = *(v17 + 16);
    if ((~v18 & 0xF000000000000007) != 0 && ((v18 >> 59) & 0x1E | (v18 >> 2) & 1) == 0xB)
    {
      v19 = *((v18 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
    }

    else
    {
      v19 = &unk_1EB5B9140;
    }

    swift_beginAccess();
    if (v19[3])
    {
      inited = v19[3];
    }

    else
    {
      type metadata accessor for Proto_Value._StorageClass();
      inited = swift_initStaticObject();
    }

    v22 = *(inited + 16);
    sub_1ADE51B2C(v22);

    if ((~v22 & 0xF000000000000007) != 0)
    {
      if (((v22 >> 59) & 0x1E | (v22 >> 2) & 1) == 0x10)
      {
        v23 = *((v22 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        sub_1ADE51B48(v22);
        v27 = *(a1 + 40);
        v28 = *(v27 + 16);
        if (v28 && v23 < v28)
        {
          v29 = *(v27 + 16 * v23 + 32);
          *a4 = v29;
          sub_1ADDD86D8(v29, *(&v29 + 1));
          goto LABEL_41;
        }

        sub_1ADE42E40(v24, v25, v26);
        swift_allocError();
        *v47 = 0xD000000000000013;
        *(v47 + 8) = 0x80000001AE25FC60;
        *(v47 + 16) = 0;
        swift_willThrow();
LABEL_39:

LABEL_50:
        *&v52 = v50;
        *(&v52 + 1) = v49;
        v53 = &protocol witness table for Int;
        v54 = MEMORY[0x1E69E6540];
        v46 = type metadata accessor for CRExtensible(0, &v52);
        (*(*(v46 - 8) + 8))(a4 + v51, v46);
        return;
      }

      sub_1ADE51B48(v22);
    }
  }

  v30 = *(a1 + 72);
  if (!v30)
  {
    __break(1u);
    goto LABEL_54;
  }

  v31 = *(v30 + 16);
  if ((~v31 & 0xF000000000000007) != 0 && ((v31 >> 59) & 0x1E | (v31 >> 2) & 1) == 0xB)
  {
    v32 = *((v31 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
  }

  else
  {
    v32 = &unk_1EB5B9140;
  }

  swift_beginAccess();
  v33 = v32[3];
  if (v33)
  {
    v34 = v33;
  }

  else
  {
    type metadata accessor for Proto_Value._StorageClass();
    v34 = swift_initStaticObject();
  }

  v35 = *(v34 + 16);
  if ((~v35 & 0xF000000000000007) != 0 && ((v35 >> 59) & 0x1E | (v35 >> 2) & 1) == 7)
  {
    v36 = *((v35 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
  }

  else
  {
    type metadata accessor for Proto_Reference._StorageClass();
    v36 = swift_initStaticObject();
  }

  swift_beginAccess();
  v37 = v36[8];
  if (v37)
  {
    v39 = v36[9];
    v38 = v36[10];

    sub_1ADDD86D8(v39, v38);
  }

  else
  {
    v39 = 0;
    v38 = 0xC000000000000000;
    v37 = MEMORY[0x1E69E7CC0];
  }

  sub_1ADDE94BC(v37, v39, v38, &v52);
  if (v7)
  {
    goto LABEL_39;
  }

  *a4 = v52;
LABEL_41:
  *&v52 = v50;
  *(&v52 + 1) = AssociatedConformanceWitness;
  v53 = &protocol witness table for Int;
  v54 = MEMORY[0x1E69E6540];
  v40 = type metadata accessor for CRExtensible(0, &v52);
  CRExtensible.rawValue.getter(v40, &v55);
  v41 = *(a1 + 16);
  if (v55 == 1)
  {
    if (v41)
    {
      goto LABEL_48;
    }

    goto LABEL_56;
  }

  if (!v55)
  {
    if (v41)
    {
      goto LABEL_48;
    }

    goto LABEL_55;
  }

  if (v41)
  {
LABEL_48:
    v42 = swift_getAssociatedTypeWitness();
    v44 = *(a4 + 8);
    *&v52 = *a4;
    v43 = v52;
    *(&v52 + 1) = v44;
    v48 = *(*v41 + 200);

    sub_1ADDD86D8(v43, v44);
    v45 = swift_getAssociatedConformanceWitness();
    v48(v42, &v52, a1, 0, v42, v45);
    if (v7)
    {
      sub_1ADDCC35C(v52, *(&v52 + 1));

      sub_1ADDCC35C(*a4, *(a4 + 8));
      goto LABEL_50;
    }

    sub_1ADDCC35C(v52, *(&v52 + 1));

LABEL_12:

    return;
  }

LABEL_57:
  __break(1u);
}

uint64_t sub_1ADE1234C(uint64_t a1, uint64_t *a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  v10 = *a2;
  v11 = a2[1];
  result = swift_beginAccess();
  if (!*(*(v6 + 24) + 16) || (, sub_1ADDDE7CC(v10, v11), v15 = v14, result = , (v15 & 1) == 0))
  {
    if ((a4 & 1) == 0)
    {
      type metadata accessor for CRDecodeContext.DecodingReference(0, a5, a6, v13);
      v16 = swift_allocObject();
      *(v16 + 16) = v10;
      *(v16 + 24) = v11;
      swift_beginAccess();
      sub_1ADDD86D8(v10, v11);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v18 = *(v6 + 16);
      *(v6 + 16) = 0x8000000000000000;
      sub_1ADDE9748(v16, v10, v11, isUniquelyReferenced_nonNull_native);
      *(v6 + 16) = v18;
      return swift_endAccess();
    }
  }

  return result;
}

void sub_1ADE12478(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  WitnessTable = swift_getWitnessTable();
  sub_1AE23D7CC();
  v8 = swift_getWitnessTable();
  CRValue<>.init(from:)(a1, a2, WitnessTable, v8, a4);
}

void sub_1ADE12538(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v7 = *(swift_getAssociatedTypeWitness() - 8);
  v8 = *(v7 + 64);
  if (v8 <= 8)
  {
    v8 = 8;
  }

  v9 = *(v7 + 80) & 0xF8;
  v10 = v9 | 7;
  v11 = v8 + ((v9 + 23) & ~(v9 | 7)) + 1;
  if (a3 < 0xFF)
  {
    v12 = 0;
  }

  else if (v11 <= 3)
  {
    v15 = ((a3 + ~(-1 << (8 * v11)) - 254) >> (8 * v11)) + 1;
    if (HIWORD(v15))
    {
      v12 = 4;
    }

    else
    {
      if (v15 < 0x100)
      {
        v16 = 1;
      }

      else
      {
        v16 = 2;
      }

      if (v15 >= 2)
      {
        v12 = v16;
      }

      else
      {
        v12 = 0;
      }
    }
  }

  else
  {
    v12 = 1;
  }

  if (a2 > 0xFE)
  {
    v13 = a2 - 255;
    if (v11 >= 4)
    {
      bzero(a1, v11);
      *a1 = v13;
      v14 = 1;
      if (v12 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v14 = (v13 >> (8 * v11)) + 1;
    if (v11)
    {
      v17 = v13 & ~(-1 << (8 * v11));
      bzero(a1, v11);
      if (v11 != 3)
      {
        if (v11 == 2)
        {
          *a1 = v17;
          if (v12 > 1)
          {
LABEL_39:
            if (v12 == 2)
            {
              *&a1[v11] = v14;
            }

            else
            {
              *&a1[v11] = v14;
            }

            return;
          }
        }

        else
        {
          *a1 = v13;
          if (v12 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v12)
        {
          a1[v11] = v14;
        }

        return;
      }

      *a1 = v17;
      a1[2] = BYTE2(v17);
    }

    if (v12 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v12 <= 1)
  {
    if (v12)
    {
      a1[v11] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      *((&a1[v10 + 16] & ~v10) + v8) = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v12 == 2)
  {
    *&a1[v11] = 0;
    goto LABEL_24;
  }

  *&a1[v11] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

uint64_t sub_1ADE12774(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(swift_getAssociatedTypeWitness() - 8);
  v6 = *(v5 + 64);
  if (v6 <= 8)
  {
    v6 = 8;
  }

  if (!a2)
  {
    return 0;
  }

  v7 = *(v5 + 80) & 0xF8;
  v8 = v7 | 7;
  if (a2 < 0xFF)
  {
    goto LABEL_27;
  }

  v9 = v6 + ((v7 + 23) & ~v8) + 1;
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((a2 + ~(-1 << v10) - 254) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v13 < 2)
    {
LABEL_27:
      v17 = *(((a1 + v8 + 16) & ~v8) + v6);
      if (v17 >= 2)
      {
        return (v17 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_27;
  }

LABEL_14:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 <= 3)
    {
      v15 = v9;
    }

    else
    {
      v15 = 4;
    }

    if (v15 > 2)
    {
      if (v15 == 3)
      {
        v16 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v16 = *a1;
      }
    }

    else if (v15 == 1)
    {
      v16 = *a1;
    }

    else
    {
      v16 = *a1;
    }
  }

  else
  {
    v16 = 0;
  }

  return (v16 | v14) + 255;
}

uint64_t sub_1ADE12910@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = MEMORY[0x1EEE9AC00](*(a2 - 8));
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = v9;
  if ((*(v9 + 48))(a1, 1, a2, v6) == 1)
  {
    v10 = sub_1AE23D7CC();
    (*(*(v10 - 8) + 8))(a1, v10);
    v11 = *(v15 + 56);

    return v11(a3, 1, 1, a2);
  }

  else
  {
    v13 = *(v15 + 32);
    v13(v8, a1, a2);
    v13(a3, v8, a2);
    return (*(v15 + 56))(a3, 0, 1, a2);
  }
}

uint64_t sub_1ADE12AC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  sub_1ADE12910(a1, *(a2 + 16), a3);
  v5 = *(*(a2 - 8) + 56);

  return v5(a3, 0, 1, a2);
}

uint64_t sub_1ADE12B38(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = v5 - 1;
  if (!v5)
  {
    v6 = 0;
  }

  v7 = *(*(*(a3 + 16) - 8) + 64);
  if (!v5)
  {
    ++v7;
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v6;
  if (a2 > v6)
  {
    v9 = 8 * v7;
    if (v7 > 3)
    {
      goto LABEL_8;
    }

    v11 = ((v8 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v7);
      if (v10)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v11 <= 0xFF)
      {
        if (v11 < 2)
        {
          goto LABEL_28;
        }

LABEL_8:
        v10 = *(a1 + v7);
        if (!*(a1 + v7))
        {
          goto LABEL_28;
        }

LABEL_15:
        v12 = (v10 - 1) << v9;
        if (v7 > 3)
        {
          v12 = 0;
        }

        if (v7)
        {
          if (v7 <= 3)
          {
            v13 = v7;
          }

          else
          {
            v13 = 4;
          }

          if (v13 > 2)
          {
            if (v13 == 3)
            {
              v14 = *a1 | (*(a1 + 2) << 16);
            }

            else
            {
              v14 = *a1;
            }
          }

          else if (v13 == 1)
          {
            v14 = *a1;
          }

          else
          {
            v14 = *a1;
          }
        }

        else
        {
          v14 = 0;
        }

        return v6 + (v14 | v12) + 1;
      }

      v10 = *(a1 + v7);
      if (*(a1 + v7))
      {
        goto LABEL_15;
      }
    }
  }

LABEL_28:
  if (v5 < 2)
  {
    return 0;
  }

  v16 = (*(v4 + 48))(a1, v5);
  if (v16 >= 2)
  {
    return v16 - 1;
  }

  else
  {
    return 0;
  }
}

char *sub_1ADE12CB8(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = v7 - 1;
  if (v7)
  {
    v9 = *(*(*(a4 + 16) - 8) + 64);
  }

  else
  {
    v8 = 0;
    v9 = *(*(*(a4 + 16) - 8) + 64) + 1;
  }

  v10 = a3 >= v8;
  v11 = a3 - v8;
  if (v11 == 0 || !v10)
  {
    goto LABEL_16;
  }

  if (v9 > 3)
  {
    v5 = 1;
    if (v8 < a2)
    {
      goto LABEL_17;
    }

    goto LABEL_26;
  }

  v12 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
  if (!HIWORD(v12))
  {
    if (v12 < 0x100)
    {
      v13 = 1;
    }

    else
    {
      v13 = 2;
    }

    if (v12 >= 2)
    {
      v5 = v13;
    }

    else
    {
      v5 = 0;
    }

LABEL_16:
    if (v8 < a2)
    {
      goto LABEL_17;
    }

    goto LABEL_26;
  }

  v5 = 4;
  if (v8 < a2)
  {
LABEL_17:
    v14 = ~v8 + a2;
    if (v9 < 4)
    {
      v16 = (v14 >> (8 * v9)) + 1;
      if (v9)
      {
        v17 = v14 & ~(-1 << (8 * v9));
        v18 = result;
        bzero(result, v9);
        result = v18;
        if (v9 != 3)
        {
          if (v9 == 2)
          {
            *v18 = v17;
            if (v5 > 1)
            {
LABEL_44:
              if (v5 == 2)
              {
                *&result[v9] = v16;
              }

              else
              {
                *&result[v9] = v16;
              }

              return result;
            }
          }

          else
          {
            *v18 = v14;
            if (v5 > 1)
            {
              goto LABEL_44;
            }
          }

          goto LABEL_41;
        }

        *v18 = v17;
        v18[2] = BYTE2(v17);
      }

      if (v5 > 1)
      {
        goto LABEL_44;
      }
    }

    else
    {
      v15 = result;
      bzero(result, v9);
      result = v15;
      *v15 = v14;
      v16 = 1;
      if (v5 > 1)
      {
        goto LABEL_44;
      }
    }

LABEL_41:
    if (v5)
    {
      result[v9] = v16;
    }

    return result;
  }

LABEL_26:
  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *&result[v9] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_33;
    }

    *&result[v9] = 0;
  }

  else if (v5)
  {
    result[v9] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_33;
  }

  if (!a2)
  {
    return result;
  }

LABEL_33:
  if (v7 >= 2)
  {
    v19 = *(v6 + 56);

    return v19();
  }

  return result;
}

uint64_t sub_1ADE12EE4@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 216);
  swift_beginAccess();
  return sub_1ADED0548(v1 + v3, a1);
}

uint64_t CRRegister.value.getter(uint64_t a1)
{
  v2 = *v1;
  if (v2)
  {
    return (*(*v2 + 96))();
  }

  else
  {
    return sub_1AE0062C4(a1);
  }
}

uint64_t sub_1ADE12F9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  sub_1ADE172E4(a1, a6);
  v12 = type metadata accessor for CRDictionaryElement(0, a4, a5, v11);
  result = (*(*(a4 - 8) + 32))(a6 + *(v12 + 36), a2, a4);
  *(a6 + *(v12 + 40)) = a3;
  return result;
}

uint64_t sub_1ADE13038()
{
  sub_1ADDCC35C(*(v0 + 16), *(v0 + 24));

  return swift_deallocClassInstance();
}

double sub_1ADE13074(uint64_t a1)
{
  v3 = *(v1 + 64);
  swift_beginAccess();
  *(v3 + 16) = a1;

  return result;
}

uint64_t sub_1ADE130C8(int *a1, unsigned int a2, uint64_t a3)
{
  v6 = sub_1AE23BFEC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(*(a3 + 16) - 8);
  v10 = *(v9 + 84);
  v11 = *(v9 + 80);
  if (v10 <= v8)
  {
    v12 = *(v7 + 84);
  }

  else
  {
    v12 = *(v9 + 84);
  }

  if (v12 <= 0x7FFFFFFF)
  {
    v12 = 0x7FFFFFFF;
  }

  if (!a2)
  {
    return 0;
  }

  v13 = ((*(*(v6 - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + v11 + 8;
  v14 = *(v9 + 64) + 7;
  if (v12 >= a2)
  {
    goto LABEL_29;
  }

  v15 = ((v14 + (v13 & ~v11)) & 0xFFFFFFFFFFFFFFF8) + 8;
  v16 = v15 & 0xFFFFFFF8;
  if ((v15 & 0xFFFFFFF8) != 0)
  {
    v17 = 2;
  }

  else
  {
    v17 = a2 - v12 + 1;
  }

  if (v17 >= 0x10000)
  {
    v18 = 4;
  }

  else
  {
    v18 = 2;
  }

  if (v17 < 0x100)
  {
    v18 = 1;
  }

  if (v17 >= 2)
  {
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  if (v19 > 1)
  {
    if (v19 == 2)
    {
      v20 = *(a1 + v15);
      if (!v20)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v20 = *(a1 + v15);
      if (!v20)
      {
        goto LABEL_29;
      }
    }

LABEL_26:
    v22 = v20 - 1;
    if (v16)
    {
      v22 = 0;
      v23 = *a1;
    }

    else
    {
      v23 = 0;
    }

    return v12 + (v23 | v22) + 1;
  }

  if (v19)
  {
    v20 = *(a1 + v15);
    if (v20)
    {
      goto LABEL_26;
    }
  }

LABEL_29:
  if (v8 == v12)
  {
    v24 = *(v7 + 48);

    return v24(a1);
  }

  else
  {
    v25 = (a1 + v13) & ~v11;
    if (v10 == v12)
    {
      v26 = *(v9 + 48);

      return v26(v25, v10);
    }

    else
    {
      v27 = *((v14 + v25) & 0xFFFFFFFFFFFFFFF8);
      if (v27 >= 0xFFFFFFFF)
      {
        LODWORD(v27) = -1;
      }

      return (v27 + 1);
    }
  }
}

uint64_t sub_1ADE13320(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t))
{
  sub_1AE23E31C();
  a4(v7, a2);
  return sub_1AE23E34C();
}

uint64_t sub_1ADE1338C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1AE23BECC();
  v8[0] = swift_getAssociatedTypeWitness();
  v8[1] = swift_getAssociatedConformanceWitness();
  v8[2] = &protocol witness table for Int;
  v8[3] = MEMORY[0x1E69E6540];
  v6 = type metadata accessor for CRExtensible(0, v8);
  return CRExtensible.hash(into:)(a1, v6);
}

uint64_t sub_1ADE13454(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t), uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = *a1;
  v13 = a1[1];
  v14 = *a2;
  v15 = a2[1];
  sub_1ADDD86D8(*a1, v13);
  sub_1ADDD86D8(v14, v15);
  v16 = sub_1ADDD6F8C(v12, v13, v14, v15);
  sub_1ADDCC35C(v14, v15);
  sub_1ADDCC35C(v12, v13);
  if (!v16)
  {
    return 0;
  }

  v17 = *(a5(0, a3, a4) + 36);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v20 = MEMORY[0x1E69E6540];

  return static CRExtensible.== infix(_:_:)(a1 + v17, a2 + v17, AssociatedTypeWitness, AssociatedConformanceWitness, &protocol witness table for Int, v20);
}

void sub_1ADE135E0(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = sub_1AE23BFEC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  v11 = *(*(a4 + 16) - 8);
  v12 = *(v11 + 84);
  v13 = *(v11 + 80);
  v14 = *(v11 + 64);
  if (v12 <= v10)
  {
    v15 = *(v9 + 84);
  }

  else
  {
    v15 = *(v11 + 84);
  }

  if (v15 <= 0x7FFFFFFF)
  {
    v15 = 0x7FFFFFFF;
  }

  v16 = ((*(*(v8 - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + v13 + 8;
  v17 = v14 + 7;
  v18 = ((v14 + 7 + (v16 & ~v13)) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v15 >= a3)
  {
    v21 = 0;
    v22 = a2 - v15;
    if (a2 <= v15)
    {
      goto LABEL_19;
    }
  }

  else
  {
    if (((v14 + 7 + (v16 & ~v13)) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v19 = a3 - v15 + 1;
    }

    else
    {
      v19 = 2;
    }

    if (v19 >= 0x10000)
    {
      v20 = 4;
    }

    else
    {
      v20 = 2;
    }

    if (v19 < 0x100)
    {
      v20 = 1;
    }

    if (v19 >= 2)
    {
      v21 = v20;
    }

    else
    {
      v21 = 0;
    }

    v22 = a2 - v15;
    if (a2 <= v15)
    {
LABEL_19:
      if (v21 > 1)
      {
        if (v21 != 2)
        {
          *(a1 + v18) = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_35;
        }

        *(a1 + v18) = 0;
      }

      else if (v21)
      {
        *(a1 + v18) = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_35;
      }

      if (!a2)
      {
        return;
      }

LABEL_35:
      if (v10 == v15)
      {
        v25 = *(v9 + 56);

        v25(a1, a2);
      }

      else
      {
        v26 = (a1 + v16) & ~v13;
        if (v12 == v15)
        {
          v27 = *(v11 + 56);

          v27(v26, a2, v12);
        }

        else
        {
          if ((a2 & 0x80000000) != 0)
          {
            v28 = a2 & 0x7FFFFFFF;
          }

          else
          {
            v28 = (a2 - 1);
          }

          *((v17 + v26) & 0xFFFFFFFFFFFFFFF8) = v28;
        }
      }

      return;
    }
  }

  if (v18)
  {
    v23 = 1;
  }

  else
  {
    v23 = v22;
  }

  if (v18)
  {
    v24 = ~v15 + a2;
    bzero(a1, v18);
    *a1 = v24;
  }

  if (v21 > 1)
  {
    if (v21 == 2)
    {
      *(a1 + v18) = v23;
    }

    else
    {
      *(a1 + v18) = v23;
    }
  }

  else if (v21)
  {
    *(a1 + v18) = v23;
  }
}

void *sub_1ADE138D8(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = *a2;
  if (qword_1ED96AC50 != -1)
  {
    swift_once();
  }

  sub_1ADDD0F70();
  sub_1AE23BFBC();
  sub_1ADDD2658(a5, v5 + qword_1ED96F250, type metadata accessor for FinalizedTimestamp);
  v13 = v12;
  v10 = sub_1ADE0C750(a1, &v13, a3, a4);
  sub_1ADDD2728(a5, type metadata accessor for FinalizedTimestamp);
  return v10;
}

unint64_t sub_1ADE13A44()
{
  result = qword_1EB5B8C20;
  if (!qword_1EB5B8C20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1EB5BCC38, &qword_1AE251830);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5B8C20);
  }

  return result;
}

uint64_t sub_1ADE13AA8(void (*a1)(char *, char *), uint64_t a2, unsigned int (*a3)(char *, uint64_t, uint64_t), char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v45 = a8;
  v9 = v8;
  v60 = a2;
  v61 = a4;
  v59 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v54 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v43 = &v42 - v14;
  v46 = a5;
  v44 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v56 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v57 = &v42 - v18;
  v19 = sub_1AE23D7CC();
  v47 = *(v19 - 8);
  v48 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v50 = &v42 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v42 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v49 = &v42 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v55 = *(a3 - 1);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v42 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = a6;
  v62 = swift_getAssociatedTypeWitness();
  v51 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v31 = &v42 - v30;
  v32 = sub_1AE23CE9C();
  v63 = sub_1AE23DB5C();
  v58 = sub_1AE23DB6C();
  sub_1AE23DB0C();
  (*(v55 + 2))(v29, v52, a3);
  v61 = v31;
  v55 = a3;
  result = sub_1AE23CE7C();
  if (v32 < 0)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v32)
  {
    v34 = (v54 + 48);
    v35 = (v54 + 8);
    swift_getAssociatedConformanceWitness();
    while (1)
    {
      sub_1AE23D80C();
      result = (*v34)(v23, 1, AssociatedTypeWitness);
      if (result == 1)
      {
        goto LABEL_17;
      }

      v59(v23, v57);
      if (v9)
      {
        (*(v51 + 8))(v61, v62);

        (*(v44 + 32))(v45, v57, v46);
        return (*v35)(v23, AssociatedTypeWitness);
      }

      v9 = 0;
      (*v35)(v23, AssociatedTypeWitness);
      sub_1AE23DB4C();
      if (!--v32)
      {
        goto LABEL_9;
      }
    }
  }

  swift_getAssociatedConformanceWitness();
LABEL_9:
  v36 = v50;
  sub_1AE23D80C();
  v37 = v36;
  v38 = v54;
  v39 = *(v54 + 48);
  v57 = (v54 + 48);
  v55 = v39;
  if (v39(v36, 1, AssociatedTypeWitness) == 1)
  {
LABEL_13:
    (*(v51 + 8))(v61, v62);
    (*(v47 + 8))(v37, v48);
    return v63;
  }

  else
  {
    v54 = *(v38 + 32);
    v40 = (v38 + 8);
    v41 = v43;
    while (1)
    {
      (v54)(v41, v37, AssociatedTypeWitness);
      v59(v41, v56);
      if (v9)
      {
        break;
      }

      v9 = 0;
      (*v40)(v41, AssociatedTypeWitness);
      sub_1AE23DB4C();
      sub_1AE23D80C();
      if (v55(v37, 1, AssociatedTypeWitness) == 1)
      {
        goto LABEL_13;
      }
    }

    (*v40)(v41, AssociatedTypeWitness);
    (*(v51 + 8))(v61, v62);

    return (*(v44 + 32))(v45, v56, v46);
  }
}

uint64_t sub_1ADE141D4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v9 = a1[1];
  *a5 = *a1;
  a5[1] = v9;
  v10 = sub_1AE23D05C();
  if (sub_1AE23D0AC())
  {
    v11 = sub_1AE18F13C(v10, a2, a4);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CD0];
  }

  a5[3] = v11;
  v12 = type metadata accessor for TreeNode(255, a2, a3, a4);
  v13 = sub_1AE23D11C();
  swift_getTupleTypeMetadata2();
  v14 = sub_1AE23D05C();
  WitnessTable = swift_getWitnessTable();
  v16 = sub_1ADDEAF38(v14, v12, v13, WitnessTable);

  a5[2] = v16;
  v17 = type metadata accessor for CROrderedTree(0, a2, a3, a4);
  return sub_1ADE145CC(1, v17);
}

uint64_t sub_1ADE14314@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v38 = a8;
  v39 = a2;
  v40 = a3;
  v41 = a4;
  v37 = a9;
  v15 = type metadata accessor for Timestamp(0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v36 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v36 - v18;
  v21 = type metadata accessor for CRDictionaryElement(255, a7, a11, v20);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v23 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v25 = &v36 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v26);
  v29 = &v36 - v28;
  (*(*(a6 - 8) + 16))(&v36 - v28, a1, a6, v27);
  v30 = *(v21 - 8);
  (*(v30 + 16))(&v29[*(TupleTypeMetadata2 + 48)], v39, v21);

  v31 = v42;
  sub_1ADE017C0(v40, v41, a5, v19);
  if (v31)
  {
    return (*(v23 + 8))(v29, TupleTypeMetadata2);
  }

  v42 = a10;
  (*(v23 + 32))(v25, v29, TupleTypeMetadata2);
  v33 = *(TupleTypeMetadata2 + 48);
  v34 = v19;
  v35 = v36;
  sub_1AE017B14(v34, v36);
  sub_1ADE0C8B4(v25, v35, a6, v38, v42, v37);
  return (*(v30 + 8))(&v25[v33], v21);
}

uint64_t sub_1ADE145CC(int a1, void *a2)
{
  v4 = a2[2];
  v3 = a2[3];
  v58 = a2;
  v5 = a2[4];
  v78 = v3;
  v6 = type metadata accessor for TreeNode(255, v4, v3, v5);
  v57 = sub_1AE23D7CC();
  v80 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v56 = &v50 - v7;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v70 = &v50 - v8;
  v60 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v50 - v13;
  v61 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v67 = &v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v50 - v18;
  v20 = swift_getTupleTypeMetadata2();
  v76 = sub_1AE23D7CC();
  v72 = *(v76 - 8);
  MEMORY[0x1EEE9AC00](v76);
  v75 = &v50 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v74 = &v50 - v23;
  v24 = 0;
  v52 = a1;
  if ((a1 & 1) == 0)
  {
    v24 = v79[3];
  }

  v25 = sub_1AE23D05C();
  v26 = sub_1AE23D0AC();
  v51 = v24;
  if (v26)
  {
    v27 = sub_1AE18F13C(v25, v4, v5);
  }

  else
  {
    v27 = MEMORY[0x1E69E7CD0];
  }

  v28 = v79;

  v28[3] = v27;
  v90 = sub_1AE23D05C();
  v29 = v28[1];
  v87 = *v28;
  v88 = v29;

  WitnessTable = swift_getWitnessTable();
  v81 = v4;
  v82 = v6;
  v83 = v78;
  v84 = v5;
  v85 = &off_1F23C93F8;
  v86 = WitnessTable;
  v73 = WitnessTable;
  v55 = type metadata accessor for CROrderedDictionary(0, &v81);
  CROrderedDictionary.makeIterator()(v55, &v89);

  v72 += 4;
  v71 = v20 - 8;
  v66 = (v61 + 4);
  v65 = (v60 + 4);
  v64 = (v61 + 2);
  v63 = (v60 + 2);
  v62 = (v61 + 6);
  v54 = (v60 + 6);
  v53 = (v80 + 8);
  ++v61;
  ++v60;
  v31 = v74;
  v69 = v20;
  v68 = v5;
  v59 = v19;
  while (1)
  {
    v81 = v4;
    v82 = v6;
    v83 = v78;
    v84 = v5;
    v85 = &off_1F23C93F8;
    v86 = v73;
    v33 = type metadata accessor for CROrderedDictionary.Iterator(0, &v81);
    v34 = v75;
    CROrderedDictionary.Iterator.next()(v33, v75);
    (*v72)(v31, v34, v76);
    if ((*(*(v20 - 8) + 48))(v31, 1, v20) == 1)
    {
      break;
    }

    v35 = *(v20 + 48);
    v80 = *v66;
    (v80)(v19, v31, v4);
    (*v65)(v14, &v31[v35], v6);
    v36 = *(TupleTypeMetadata2 + 48);
    v37 = v19;
    v38 = v11;
    v39 = v4;
    v40 = v6;
    v41 = v70;
    (*v64)(v70, v37, v39);
    v42 = *v63;
    (*v63)(&v41[v36], v14, v40);
    sub_1AE23D11C();
    v6 = v40;
    v4 = v39;
    v11 = v38;
    sub_1AE23D0CC();
    v42(v38, v14, v6);
    if ((*v62)(v38, 1, v4) == 1)
    {
      v19 = v59;
      sub_1ADE158F4(v59, v58);
      (*v60)(v14, v6);
      (*v61)(v19, v4);
    }

    else
    {
      v43 = v67;
      (v80)(v67, v38, v4);
      v44 = v79[1];
      v81 = *v79;
      v82 = v44;
      v45 = v56;
      CROrderedDictionary.subscript.getter(v43, v55);
      v46 = (*v54)(v45, 1, v6);
      (*v53)(v45, v57);
      v19 = v59;
      if (v46 == 1)
      {
        sub_1ADE158F4(v59, v58);
      }

      v32 = *v61;
      (*v61)(v67, v4);
      (*v60)(v14, v6);
      v32(v19, v4);
    }

    v5 = v68;
    v20 = v69;
    v31 = v74;
  }

  sub_1AE1877E4(v90, v58);
  if (v52)
  {

LABEL_18:
    v48 = sub_1AE23DB9C();

    sub_1AE1847AC(v48, v58);
  }

  if (!v51)
  {
    goto LABEL_18;
  }

  v47 = sub_1AE23D30C();

  swift_bridgeObjectRelease_n();
  if ((v47 & 1) == 0)
  {
    goto LABEL_18;
  }
}

uint64_t CROrderedDictionary.makeIterator()@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(v2 + 8);
  v5 = type metadata accessor for CROrderedSetElement(255, a1[2], a1[4], a1[5]);
  v7 = type metadata accessor for CRSequence(0, v5, &off_1F23C8BA0, v6);

  result = sub_1ADDEF6DC(v7);
  *a2 = result;
  a2[1] = 0;
  a2[2] = v4;
  return result;
}

uint64_t sub_1ADE14F84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t CROrderedDictionary.Iterator.next()@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v52 = a2;
  v4 = *(a1 + 24);
  v5 = sub_1AE23D7CC();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v47 = &v46 - v6;
  v7 = *(*(a1 + 16) - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v50 = &v46 - v13;
  v51 = v12;
  v48 = *(a1 + 32);
  v14 = type metadata accessor for CROrderedSetElement(255, v12, v48, *(&v48 + 1));
  v15 = sub_1AE23D7CC();
  v53 = *(v15 - 8);
  v54 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v46 - v19;
  v21 = *v2;
  v22 = sub_1AE23D0AC();
  v23 = v2[1];
  v49 = a1;
  if (v23 == v22)
  {
    v24 = *(v14 - 8);
    (*(v24 + 56))(v20, 1, 1, v14);
    goto LABEL_6;
  }

  v46 = v4;
  v25 = sub_1AE23D08C();
  sub_1AE23D00C();
  if ((v25 & 1) == 0)
  {
    result = sub_1AE23DAAC();
    v26 = *(v14 - 8);
    if (*(v26 + 64) != 8)
    {
LABEL_16:
      __break(1u);
      return result;
    }

    *&v55[0] = result;
    (*(v26 + 16))(v20, v55, v14);
    result = swift_unknownObjectRelease();
    v28 = v23 + 1;
    if (!__OFADD__(v23, 1))
    {
      goto LABEL_5;
    }

LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v26 = *(v14 - 8);
  result = (*(v26 + 16))(v20, v21 + ((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v23, v14);
  v28 = v23 + 1;
  if (__OFADD__(v23, 1))
  {
    goto LABEL_14;
  }

LABEL_5:
  v2[1] = v28;
  v24 = v26;
  (*(v26 + 56))(v20, 0, 1, v14);
  v4 = v46;
LABEL_6:
  v29 = v53;
  v30 = v54;
  (*(v53 + 16))(v17, v20, v54);
  if ((*(v24 + 48))(v17, 1, v14) == 1)
  {
    v31 = *(v29 + 8);
    v31(v20, v30);
    v31(v17, v30);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    return (*(*(TupleTypeMetadata2 - 8) + 56))(v52, 1, 1, TupleTypeMetadata2);
  }

  v46 = v2;
  v33 = *(v7 + 16);
  v34 = v10;
  v35 = v10;
  v36 = v51;
  v33(v35, v17, v51);
  (*(v24 + 8))(v17, v14);
  v37 = v50;
  (*(v7 + 32))(v50, v34, v36);
  v38 = v52;
  v33(v52, v37, v36);
  v39 = v37;
  v40 = v47;
  *&v41 = v36;
  *(&v41 + 1) = v4;
  v55[0] = v41;
  v55[1] = v48;
  v55[2] = *(v49 + 48);
  type metadata accessor for CRDictionary(0, v55);
  CRDictionary.subscript.getter(v42, v40);
  v43 = *(v4 - 1);
  result = (*(v43 + 48))(v40, 1, v4);
  if (result == 1)
  {
    goto LABEL_15;
  }

  v44 = swift_getTupleTypeMetadata2();
  v45 = *(v44 + 48);
  (*(v7 + 8))(v39, v36);
  (*(v53 + 8))(v20, v54);
  (*(v43 + 32))(&v38[v45], v40, v4);
  return (*(*(v44 - 8) + 56))(v38, 0, 1, v44);
}

uint64_t sub_1ADE15640@<X0>(uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v16 = a3;
  v4 = *(*v3 + 448);
  v5 = type metadata accessor for CRDictionaryElement(255, v4, *(*v3 + 472), a2);
  v6 = sub_1AE23D7CC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v16 - v8;
  swift_beginAccess();

  sub_1AE23CB7C();

  if ((*(*(v5 - 8) + 48))(v9, 1, v5))
  {
    (*(v7 + 8))(v9, v6);
    v10 = *(v4 - 8);
    v11 = 1;
    v12 = v16;
  }

  else
  {
    v13 = *(v5 + 36);
    v10 = *(v4 - 8);
    v14 = v16;
    (*(v10 + 16))(v16, &v9[v13], v4);
    (*(v7 + 8))(v9, v6);
    v11 = 0;
    v12 = v14;
  }

  return (*(v10 + 56))(v12, v11, 1, v4);
}

uint64_t sub_1ADE158F4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v11 - v8;
  (*(v3 + 16))(v5, v7);
  sub_1AE23D38C();
  sub_1AE23D33C();
  return (*(v3 + 8))(v9, v2);
}

uint64_t sub_1ADE15A14(uint64_t a1, _OWORD *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v10 = *(v3 + 8);
  v6 = a2[2];
  v9[0] = a2[1];
  v9[1] = v6;
  v9[2] = a2[3];
  v7 = type metadata accessor for CRDictionary(0, v9);
  return a3(a1, v7);
}

uint64_t sub_1ADE15AB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(v3 + 72))
  {
    type metadata accessor for CRDecoder.CRValueContainer();
    v4 = swift_allocObject();
    *(v4 + 16) = v3;
  }

  else
  {
    sub_1ADE42E40(a1, a2, a3);
    v5 = swift_allocError();
    *v6 = 0xD000000000000017;
    *(v6 + 8) = 0x80000001AE25FB70;
    *(v6 + 16) = 0;
    v4 = v5;
    swift_willThrow();
  }

  return v4;
}

void *sub_1ADE15B94(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA0A8, &qword_1AE241888);
  v3 = sub_1AE23DCDC();
  v4 = a1[4];
  v5 = a1[5];
  v6 = sub_1ADF4A3F0(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v8 = v6;
  result = v5;
  v10 = a1 + 7;
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

    v8 = sub_1ADF4A3F0(v4);
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

void sub_1ADE15C9C(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v2 + 72);
  if (!v3)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    return;
  }

  v4 = *(v3 + 16);
  if ((~v4 & 0xF000000000000007) == 0 || ((v4 >> 59) & 0x1E | (v4 >> 2) & 1) != 13)
  {
    if ((a1 & 0x8000000000000000) == 0)
    {
LABEL_7:

      return;
    }

LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (a1 < 0)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v7 = *(*((v4 & 0xFFFFFFFFFFFFFFBLL) + 0x10) + 16);

  if (!v7)
  {
    goto LABEL_7;
  }

  v9 = -v7;
  v10 = 4;
  while (1)
  {
    if (v10 - *(v8 + 16) == 4)
    {
      __break(1u);
      goto LABEL_22;
    }

    if (*(v8 + 8 * v10) == a1)
    {
      break;
    }

    ++v10;
    if (v9 + v10 == 4)
    {
      goto LABEL_7;
    }
  }

  v11 = *(v2 + 72);
  if (!v11)
  {
    goto LABEL_25;
  }

  v12 = *(v11 + 16);
  if ((~v12 & 0xF000000000000007) != 0 && ((v12 >> 59) & 0x1E | (v12 >> 2) & 1) == 0xD && (v10 - 4) < *(*((v12 & 0xFFFFFFFFFFFFFFBLL) + 0x18) + 16))
  {
    type metadata accessor for CRDecoder();
    swift_allocObject();

    sub_1ADE0262C(v13, v2);
  }
}

void sub_1ADE15E44()
{
  v1 = *(*(v0 + 16) + 72);
  if (!v1)
  {
LABEL_13:
    __break(1u);
    return;
  }

  v2 = *(v1 + 16);
  if ((~v2 & 0xF000000000000007) != 0 && ((v2 >> 59) & 0x1E | (v2 >> 2) & 1) == 0xD)
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
    v4 = *(v3 + 16);
    if (v4)
    {
      v10 = MEMORY[0x1E69E7CC0];

      sub_1ADE0B544(0, v4, 0);
      v5 = 32;
      v6 = v10;
      while (1)
      {
        v7 = *(v3 + v5);
        if (v7 < 0)
        {
          break;
        }

        v11 = v6;
        v9 = *(v6 + 16);
        v8 = *(v6 + 24);
        if (v9 >= v8 >> 1)
        {
          sub_1ADE0B544((v8 > 1), v9 + 1, 1);
          v6 = v11;
        }

        *(v6 + 16) = v9 + 1;
        *(v6 + 8 * v9 + 32) = v7;
        v5 += 8;
        if (!--v4)
        {

          return;
        }
      }

      __break(1u);
      goto LABEL_13;
    }
  }
}

void sub_1ADE15F98(uint64_t a1, void *a2)
{
  if (*(a1 + 24))
  {
    sub_1ADDEE390(a1, v6);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v5 = *v2;
    sub_1ADDF4818(v6, a2, isUniquelyReferenced_nonNull_native);

    *v2 = v5;
  }

  else
  {
    sub_1ADDCEDE0(a1, &qword_1EB5BAA00, &qword_1AE2587A0);
    sub_1ADEBEEB4(a2, v6);

    sub_1ADDCEDE0(v6, &qword_1EB5BAA00, &qword_1AE2587A0);
  }
}

uint64_t CRAttributedString.setAttributes(_:range:)(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = sub_1ADE0F4FC(MEMORY[0x1E69E7CC0]);
  }

  sub_1ADE0F9AC(v6, a2, a3, v7);
}

uint64_t sub_1ADE160D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a1 + 32);
  if (a2)
  {
    ObjectType = swift_getObjectType();
    *&v11 = a2;
    sub_1ADDEE390(&v11, v13);
  }

  else
  {
    memset(v13, 0, sizeof(v13));
  }

  swift_unknownObjectRetain();
  v9(v13, a3, a4, a5);
  return sub_1ADDCEDE0(v13, &qword_1EB5BAA00, &qword_1AE2587A0);
}

uint64_t sub_1ADE16180(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v7 = type metadata accessor for FinalizedTimestamp(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1ADDCEE40(a1, v17, &qword_1EB5BAA00, &qword_1AE2587A0);
  if (!v18)
  {
    return sub_1ADDCEDE0(v17, &qword_1EB5BAA00, &qword_1AE2587A0);
  }

  type metadata accessor for ObjCFinalizedTimestamp(0);
  result = swift_dynamicCast();
  if (result)
  {
    v11 = v16;
    v12 = *a5;
    sub_1ADED0548(v16 + OBJC_IVAR____TtC9Coherence22ObjCFinalizedTimestamp_timestamp, v9);

    v13 = *&v9[*(v7 + 20)];
    result = sub_1ADDE5118(v9, type metadata accessor for FinalizedTimestamp);
    if (v13 <= v12)
    {
      v14 = v12;
    }

    else
    {
      v14 = v13;
    }

    *a5 = v14;
  }

  return result;
}

uint64_t *sub_1ADE162F8(uint64_t a1)
{
  v3 = *v1;
  v4 = sub_1AE23BFEC();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ED96AC50 != -1)
  {
    swift_once();
  }

  sub_1ADDD0F70();
  sub_1AE23BFBC();
  if (a1)
  {
    [*(a1 + qword_1ED96F258) copy];
    sub_1AE23D83C();

    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5B9FE8, &qword_1AE241500);
    swift_dynamicCast();
    *(v1 + qword_1ED96F258) = v12[1];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5B9FE8, &qword_1AE241500);
    v8 = type metadata accessor for CRSequenceStorage(0, *(v3 + 80), *(v3 + 88), v7);
    v9 = [objc_allocWithZone(v8) init];
    v13[3] = v8;
    v13[0] = v9;
    sub_1ADDD0F70();
    sub_1AE23BFBC();
    v10 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    *(v1 + qword_1ED96F258) = sub_1ADE16668(v13, v6);
  }

  return v1;
}

id sub_1ADE165D0()
{
  v1 = *v0;
  v2 = *MEMORY[0x1E69E7D40];
  v3 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x50);
  *(v0 + qword_1EB5BD4A8) = sub_1AE23C9DC();
  v5 = type metadata accessor for CRSequenceStorage(0, v3, *((v2 & v1) + 0x58), v4);
  v7.receiver = v0;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, sel_init);
}

id sub_1ADE16668(void *a1, uint64_t a2)
{
  v3 = v2;
  v5 = a1[3];
  if (v5)
  {
    v7 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v8 = *(v5 - 8);
    v9 = MEMORY[0x1EEE9AC00](v7);
    v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v8 + 16))(v11, v9);
    v12 = sub_1AE23DFFC();
    (*(v8 + 8))(v11, v5);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v12 = 0;
  }

  v13 = sub_1AE23BF7C();
  v14 = [v3 initWithStorage:v12 uuid:v13];
  swift_unknownObjectRelease();

  v15 = sub_1AE23BFEC();
  (*(*(v15 - 8) + 8))(a2, v15);
  return v14;
}

uint64_t sub_1ADE167F4@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v12 = type metadata accessor for Timestamp(0);
  v13 = v12 - 8;
  MEMORY[0x1EEE9AC00](v12);
  v15 = v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = v24 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v20 + 16))(v19, a1, a3, v17);
  v24[3] = *a2;
  v21 = type metadata accessor for CROrderedSetElement(255, a3, a4, a5);
  type metadata accessor for CRSequence(0, v21, &off_1F23C8BA0, v22);
  sub_1ADE16998(v15);
  *&v15[*(type metadata accessor for Replica(0) + 20)] = 0;
  *&v15[*(v13 + 28)] = 0;
  return sub_1ADE0C8B4(v19, v15, a3, a4, a5, a6);
}

uint64_t sub_1ADE16998@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA2F8, &unk_1AE2422B0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v13 - v4;
  v6 = *v1;
  if (*v1)
  {
    v7 = qword_1ED96F260;
    v8 = sub_1AE23BFEC();
    v9 = *(v8 - 8);
    (*(v9 + 16))(v5, v6 + v7, v8);
    (*(v9 + 56))(v5, 0, 1, v8);
    return (*(v9 + 32))(a1, v5, v8);
  }

  else
  {
    v11 = sub_1AE23BFEC();
    v12 = *(v11 - 8);
    (*(v12 + 56))(v5, 1, 1, v11);
    if (qword_1ED96AC50 != -1)
    {
      swift_once();
    }

    sub_1ADDD0F70();
    sub_1AE23BFBC();
    result = (*(v12 + 48))(v5, 1, v11);
    if (result != 1)
    {
      return sub_1ADDCEDE0(v5, &qword_1EB5BA2F8, &unk_1AE2422B0);
    }
  }

  return result;
}

void CRSequence.append<A>(contentsOf:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1ADE108AC(a2, a2, a3, a4);
  if (*v4)
  {
    sub_1ADE16C80(a1, a3, a4);
  }

  else
  {
    __break(1u);
  }
}

void sub_1ADE16C80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *v3;
  v7 = MEMORY[0x1EEE9AC00](a1);
  (*(v9 + 16))(aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
  v10 = *(v6 + 80);
  v11 = sub_1AE23D13C();
  v12 = *(v3 + qword_1ED96F258);
  v13 = [v12 length];
  v14 = sub_1AE23D0AC();
  v15 = swift_allocObject();
  v15[2] = v10;
  v15[3] = a2;
  v15[4] = *(v6 + 88);
  v15[5] = a3;
  v15[6] = v11;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_1ADE109C8;
  *(v16 + 24) = v15;
  aBlock[4] = sub_1AE16B1E4;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1ADE0EEE0;
  aBlock[3] = &block_descriptor_56;
  v17 = _Block_copy(aBlock);

  [v12 insertAtIndex:v13 length:v14 getStorage:v17];

  _Block_release(v17);
  LOBYTE(v12) = swift_isEscapingClosureAtFileLocation();

  if (v12)
  {
    __break(1u);
  }
}

uint64_t sub_1ADE16EF8()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1ADE16FCC(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
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

uint64_t sub_1ADE1705C@<X0>(uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v5 = type metadata accessor for CRDictionaryElement(255, *(*v3 + 448), *(*v3 + 472), a2);
  v6 = sub_1AE23D7CC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v13 - v8;
  swift_beginAccess();

  sub_1AE23CB7C();

  v10 = 1;
  if (!(*(*(v5 - 8) + 48))(v9, 1, v5))
  {
    sub_1ADDD2658(v9, a3, type metadata accessor for FinalizedTimestamp);
    v10 = 0;
  }

  (*(v7 + 8))(v9, v6);
  v11 = type metadata accessor for FinalizedTimestamp(0);
  return (*(*(v11 - 8) + 56))(a3, v10, 1, v11);
}

uint64_t sub_1ADE1727C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA460, &qword_1AE251020);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1ADE172E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FinalizedTimestamp(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1ADE17348(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA460, &qword_1AE251020);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1ADE173B8(uint64_t a1)
{
  v2 = type metadata accessor for FinalizedTimestamp(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1ADE17414@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = MEMORY[0x1EEE9AC00](a1);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v6, v4);
  v8 = *(a1 + 16);
  v9 = *(v8 - 8);
  v10 = 1;
  if ((*(v9 + 48))(v6, 1, v8) != 1)
  {
    (*(v9 + 32))(a2, v6, v8);
    v10 = 0;
  }

  return (*(v9 + 56))(a2, v10, 1, v8);
}

uint64_t sub_1ADE17574(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getWitnessTable();
  sub_1AE23D7CC();
  swift_getWitnessTable();
  return sub_1AE23CF9C();
}

uint64_t sub_1ADE1761C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getWitnessTable();
  sub_1AE23D7CC();
  swift_getWitnessTable();
  return sub_1AE23CFAC();
}

uint64_t sub_1ADE176C4@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_1ADE17700(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x1EEE9AC00](a1);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v2);
  return sub_1AE23D0CC();
}

uint64_t sub_1ADE177C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getWitnessTable();
  sub_1AE23D7CC();
  swift_getWitnessTable();
  return sub_1AE23E0AC() & 1;
}

char *sub_1ADE17874()
{
  v0 = sub_1ADDF36A8();
  sub_1ADDD2728(&v0[qword_1ED96F250], type metadata accessor for FinalizedTimestamp);
  v1 = qword_1ED96F278;
  v2 = sub_1AE23BFEC();
  (*(*(v2 - 8) + 8))(&v0[v1], v2);
  return v0;
}

uint64_t sub_1ADE17900()
{
  sub_1ADE17874();

  return swift_deallocClassInstance();
}

void sub_1ADE17954(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BB7E0, &qword_1AE24CEE0);
  v37 = v4;
  v6 = sub_1AE23DCCC();
  v7 = v6;
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
    v14 = v6 + 64;
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = *(*(v5 + 48) + 16 * v21);
      v23 = *(v5 + 56) + 48 * v21;
      v39 = *v23;
      v40 = v22;
      v24 = *(v23 + 24);
      v38 = *(v23 + 16);
      v25 = *(v23 + 32);
      v26 = *(v23 + 40);
      if ((v37 & 1) == 0)
      {
        sub_1ADDD86D8(v22, *(&v22 + 1));
      }

      sub_1AE23E31C();
      sub_1AE23BECC();
      v27 = sub_1AE23E34C();
      v28 = -1 << *(v7 + 32);
      v29 = v27 & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        v16 = v40;
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
        return;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
      v16 = v40;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 16 * v15) = v16;
      v17 = *(v7 + 56) + 48 * v15;
      *v17 = v39;
      *(v17 + 16) = v38;
      *(v17 + 24) = v24;
      *(v17 + 32) = v25;
      *(v17 + 40) = v26;
      ++*(v7 + 16);
      v5 = v36;
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
        v12 = (v20 - 1) & v20;
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
}

uint64_t static CRStruct_1.fieldKeys.getter(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA1F8, &qword_1AE242320);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AE2418F0;
  v5 = (*(*(a2 + 8) + 32))(a1);
  v7 = v6;

  *(v4 + 32) = v5;
  *(v4 + 40) = v7;
  return v4;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> CRStruct_1.decode(fields:)(Swift::OpaquePointer fields)
{
  v4 = v3;
  v5 = v1;
  v7 = *(v2 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v10 = (*(v7 + 32))(v5, v7, v9);
  v12 = v11;
  if (*(fields._rawValue + 2))
  {
    v13 = v10;
    v20 = v4;

    v14 = sub_1ADDD7A10(v13, v12);
    v16 = v15;

    if (v16)
    {
      v17 = *(*(fields._rawValue + 7) + 8 * v14);
      v18 = *(*(swift_getAssociatedConformanceWitness() + 16) + 8);
      v19 = *(v18 + 8);
      swift_retain_n();

      v19(v17, AssociatedTypeWitness, v18);
      if (v20)
      {
      }

      else
      {
        swift_setAtWritableKeyPath();
      }
    }

    else
    {
    }
  }

  else
  {
  }
}

uint64_t static CRStruct_4.fieldKeys.getter(uint64_t a1, uint64_t a2)
{
  (*(*(a2 + 8) + 80))(v12);
  v3 = v12[0];
  v2 = v12[1];
  v4 = v12[3];
  v5 = v12[4];
  v7 = v12[6];
  v6 = v12[7];
  v11 = v12[9];
  v8 = v12[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA1F8, &qword_1AE242320);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1AE242560;

  *(v9 + 32) = v3;
  *(v9 + 40) = v2;

  *(v9 + 48) = v4;
  *(v9 + 56) = v5;

  *(v9 + 64) = v7;
  *(v9 + 72) = v6;

  *(v9 + 80) = v11;
  *(v9 + 88) = v8;

  return v9;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> CRStruct_4.decode(fields:)(Swift::OpaquePointer fields)
{
  v3 = v1;
  rawValue = fields._rawValue;
  v4 = *(v2 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v61 = &v58 - v5;
  v74 = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](v74);
  v62 = &v58 - v6;
  v7 = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](v7);
  v64 = &v58 - v8;
  v9 = swift_getAssociatedTypeWitness();
  v10 = MEMORY[0x1EEE9AC00](v9);
  v66 = &v58 - v11;
  v12 = *(v4 + 80);
  v70 = v4;
  v12(&TupleTypeMetadata2, v3, v4, v10);
  v13 = v86;
  v14 = v88;
  v83 = v89;
  v15 = v91;
  v96[14] = v92;
  v16 = v94;
  v17 = v95;
  v76 = TupleTypeMetadata2;
  v96[0] = TupleTypeMetadata2;
  v96[1] = v85;
  v75 = v85;
  v96[2] = v86;
  v96[3] = v87;
  v69 = v87;
  v96[4] = v88;
  v96[5] = v89;
  v68 = v90;
  v96[6] = v90;
  v96[7] = v91;
  v96[8] = v92;
  v96[9] = v93;
  v67 = v93;
  v96[10] = v94;
  v96[11] = v95;
  v65 = v9;
  sub_1AE23DB8C();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v63 = v7;
  sub_1AE23DB8C();
  v85 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v86 = swift_getTupleTypeMetadata2();
  v77 = v3;
  sub_1AE23DB8C();
  v18 = v17;
  v19 = v16;
  v20 = rawValue;
  v87 = swift_getTupleTypeMetadata2();
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v71 = *(TupleTypeMetadata - 8);
  v23 = v71 + 16;
  v22 = *(v71 + 16);
  v82 = TupleTypeMetadata;
  v22(&TupleTypeMetadata2, v96);

  v79 = v15;

  v24 = v20[2];
  v80 = v13;
  v78 = v22;
  if (v24)
  {
    v25 = v22;
    v26 = v23;
    v27 = v18;
    sub_1ADDD7A10(v76, v75);
    v29 = v28;

    if ((v29 & 1) == 0)
    {
      v18 = v27;
      v23 = v26;
      v25(&TupleTypeMetadata2, v96, v82);
      goto LABEL_9;
    }

    v25(&TupleTypeMetadata2, v96, v82);

    v60 = v27;

    v30 = v65;
    v31 = *(*(swift_getAssociatedConformanceWitness() + 16) + 8);
    v59 = v14;
    v32 = *(v31 + 8);

    v34 = v81;
    v32(v33, v30, v31);
    v81 = v34;
    if (v34)
    {
      goto LABEL_19;
    }

    swift_setAtWritableKeyPath();

    v20 = rawValue;
    v18 = v60;
    v14 = v59;
    v23 = v26;
    v22 = v78;
  }

  else
  {
  }

  (v22)(&TupleTypeMetadata2, v96, v82);
LABEL_9:

  v76 = v19;

  if (v20[2])
  {
    sub_1ADDD7A10(v69, v14);
    v36 = v35;

    if (v36)
    {
      v37 = v20;
      (v78)(&TupleTypeMetadata2, v96, v82);

      v60 = v18;

      v38 = v63;
      v39 = *(*(swift_getAssociatedConformanceWitness() + 16) + 8);
      v69 = v23;
      v40 = *(v39 + 8);

      v42 = v81;
      v40(v41, v38, v39);
      v81 = v42;
      if (v42)
      {
        goto LABEL_19;
      }

      v20 = v37;
      swift_setAtWritableKeyPath();

      v23 = v69;
    }
  }

  else
  {
  }

  v43 = v82;
  (v78)(&TupleTypeMetadata2, v96, v82);

  if (v20[2])
  {
    sub_1ADDD7A10(v68, v79);
    v45 = v44;

    if (v45)
    {
      (v78)(&TupleTypeMetadata2, v96, v82);

      v59 = v14;

      v46 = v74;
      v47 = *(*(swift_getAssociatedConformanceWitness() + 16) + 8);
      v48 = *(v47 + 8);

      v69 = v23;
      v50 = v81;
      v48(v49, v46, v47);
      v81 = v50;
      if (v50)
      {
LABEL_19:
        v43 = v82;
        goto LABEL_20;
      }

      swift_setAtWritableKeyPath();

      v20 = rawValue;
      v43 = v82;
    }

    else
    {
      v43 = v82;
    }
  }

  else
  {
  }

  (v78)(&TupleTypeMetadata2, v96, v43);

  if (v20[2])
  {
    sub_1ADDD7A10(v67, v76);
    v52 = v51;

    if ((v52 & 1) == 0)
    {
      goto LABEL_28;
    }

    (v78)(&TupleTypeMetadata2, v96, v43);

    v53 = AssociatedTypeWitness;
    v54 = *(*(swift_getAssociatedConformanceWitness() + 16) + 8);
    v55 = *(v54 + 8);

    v57 = v81;
    v55(v56, v53, v54);
    v81 = v57;
    if (!v57)
    {
      swift_setAtWritableKeyPath();
      (*(v71 + 8))(v96, v43);

      return;
    }

LABEL_20:

LABEL_28:
    (*(v71 + 8))(v96, v43);
    return;
  }

  (*(v71 + 8))(v96, v43);
}

void sub_1ADE18DC0(uint64_t a1, uint64_t *a2)
{
  v4 = a2[1];
  v45 = *a2;
  v44 = v4;
  v48 = type metadata accessor for PartiallyOrderedReferenceMap(0);
  v5 = v48[5];

  v49 = v2;
  sub_1ADE19160(v6, sub_1ADE1A500, 0, (v2 + v5));
  v7 = *(a1 + 64);
  v46 = a1 + 64;
  v8 = 1 << *(a1 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & v7;
  v11 = (v8 + 63) >> 6;

  v12 = 0;
  v47 = a1;
  while (v10)
  {
LABEL_11:
    v14 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    v15 = v14 | (v12 << 6);
    v16 = (*(a1 + 56) + 48 * v15);
    v17 = v16[3];
    if (*(v17 + 16))
    {
      v18 = (*(a1 + 48) + 16 * v15);
      v19 = *v18;
      v20 = v18[1];
      v21 = v16[2];
      v23 = v16[4];
      v22 = v16[5];
      v24 = *v16;
      v51 = v49 + v48[7];
      sub_1AE23E31C();
      sub_1ADDD86D8(v19, v20);
      v55 = v24;

      v54 = v21;

      v56 = v17;

      v53 = v23;

      v52 = v22;

      sub_1AE23BECC();
      v50 = sub_1AE23E34C();
      v59 = v19;
      v60 = v20;
      MEMORY[0x1EEE9AC00](v50);
      v43[2] = &v59;
      v26 = v59;
      v25 = v60;
      v57 = v19;
      v58 = v20;
      v27 = v51;
      sub_1ADDD86D8(v19, v20);
      LOBYTE(v25) = sub_1ADDDB234(0, v26, v25, v50, sub_1ADE1B14C, v43);
      v29 = v28;
      v31 = v30;
      sub_1ADDCC35C(v59, v60);
      if (v25)
      {

        sub_1ADDCC35C(v57, v58);
        ++*(v27 + 16);
      }

      else
      {
        v32 = v29 + *(v29 + 24) + 16 * ~v31;
        v33 = *(v32 + 32);
        v34 = *(v32 + 40);
        sub_1ADDD86D8(v33, v34);

        sub_1ADDCC35C(v57, v58);
        sub_1ADDCC35C(v33, v34);
      }

      a1 = v47;
    }
  }

  while (1)
  {
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v13 >= v11)
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA138, &qword_1AE251E60);
      v35 = swift_allocObject();
      *(v35 + 16) = xmmword_1AE2418F0;

      v36 = v45;

      v37 = v44;

      sub_1ADE1AFA0(a1);
      *(v35 + 32) = v36;
      *(v35 + 40) = v37;
      *(v35 + 48) = v38;
      *(v35 + 56) = v39;
      *(v35 + 64) = v40;
      v41 = v49;
      v42 = v48[6];

      *(v41 + v42) = v35;
      return;
    }

    v10 = *(v46 + 8 * v13);
    ++v12;
    if (v10)
    {
      v12 = v13;
      goto LABEL_11;
    }
  }

  __break(1u);
}

void sub_1ADE19160(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = -1 << *(a1 + 32);
  v6 = ~v5;
  v7 = *(a1 + 64);
  v8 = -v5;
  v240 = a1;
  v241 = a1 + 64;
  v242 = v6;
  v243 = 0;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v244 = v9 & v7;
  v245 = a2;
  v190 = a3;
  v246 = a3;
  sub_1ADE1A3A0(&v233);
  if (v236)
  {
    v10 = v236;
    v199 = a4;
    while (1)
    {
      v203 = v10;
      v17 = v233;
      v18 = v234;
      v201 = v235;
      v19 = v238;
      v204 = v239;
      v205 = v237;
      v20 = v199;
      ++v199[2];
      sub_1AE23E31C();
      sub_1ADDD86D8(v17, *(&v17 + 1));
      sub_1AE23BECC();
      v21 = sub_1AE23E34C();
      sub_1ADDCC35C(v17, *(&v17 + 1));
      v22 = *v20;
      swift_beginAccess();
      v23 = *(v22 + 16) != 0;
      v228 = v17;
      v200 = v17;
      sub_1ADDD86D8(v17, *(&v17 + 1));
      sub_1ADDDC21C(0, 0, 0, 0, 0, 0);
      v230 = 0u;
      v231 = 0u;
      v229 = 0u;
      *v232 = v21;
      *&v232[8] = 0;
      *&v232[16] = v22;
      *&v232[24] = 0;
      v232[28] = 0;
      v232[29] = v23;
      v232[30] = 0;
      sub_1ADDDD688(&v228);
      v24 = v229;
      v25 = v230;
      if (v230)
      {
        v26 = v19;
        v27 = v18;
        v202 = *(&v231 + 1);
        v198 = v231;

        v28 = v203;

        v29 = v205;

        v30 = v204;

        v31 = sub_1ADDDC21C(v24, *(&v24 + 1), v25, *(&v25 + 1), v198, v202);
        v32 = v27;
      }

      else
      {
        sub_1ADDDC21C(v229, *(&v229 + 1), 0, *(&v230 + 1), v231, *(&v231 + 1));
        v32 = v18;

        v28 = v203;

        v29 = v205;

        v30 = v204;

        v26 = v19;
      }

      *&v229 = v32;
      *(&v229 + 1) = v201;
      *&v230 = v28;
      *(&v230 + 1) = v29;
      v201 = v26;
      v202 = v32;
      *&v231 = v26;
      *(&v231 + 1) = v30;
      v227[0] = *v232;
      *(v227 + 15) = *&v232[15];
      v226[2] = v230;
      v226[3] = v231;
      v226[0] = v228;
      v226[1] = v229;
      v223 = v230;
      v224 = v231;
      v225[0] = *v232;
      *(v225 + 15) = *&v232[15];
      v33 = *&v232[15] >> 8;
      v34 = (*&v232[23] >> 8);
      v35 = v232[28];
      v36 = v232[29];
      v37 = *(&v227[0] + 1);
      v38 = *v232;
      v221 = v228;
      v222 = v229;
      if (!v28)
      {
        if (v232[30])
        {
          sub_1ADDCEE40(v226, &v216, &qword_1EB5BA960, &qword_1AE2455E0);
          v50 = v193 & 0xFFFF000000000000 | v34 | (v35 << 32);
          v51 = 0x10000000000;
          if (!v36)
          {
            v51 = 0;
          }

          v193 = v50 | v51;
          sub_1AE035D24(0, v38, v37, v33, v50 | v51, &v208);
          sub_1ADDCC35C(v200, *(&v200 + 1));
          v218 = v230;
          v219 = v231;
          v220[0] = *v232;
          *(v220 + 15) = *&v232[15];
          v216 = v228;
          v217 = v229;
          sub_1ADDCEDE0(&v216, &qword_1EB5BA960, &qword_1AE2455E0);
          v212 = v208;
          v213 = v209;
          v214 = v210;
          v215 = v211;
          v52 = &v212;
          v53 = &qword_1EB5BA980;
          v54 = &qword_1AE245630;
        }

        else
        {
          sub_1ADDCEE40(v226, &v216, &qword_1EB5BA960, &qword_1AE2455E0);
          sub_1ADDCC35C(v200, *(&v200 + 1));
          v218 = v230;
          v219 = v231;
          v220[0] = *v232;
          *(v220 + 15) = *&v232[15];
          v216 = v228;
          v217 = v229;
          v52 = &v216;
          v53 = &qword_1EB5BA960;
          v54 = &qword_1AE2455E0;
        }

        sub_1ADDCEDE0(v52, v53, v54);
        goto LABEL_7;
      }

      if ((v232[30] & 1) == 0)
      {
        break;
      }

      v11 = v33 + *(v33 + 24);
      v12 = *(&v221 + 1);
      v197 = *(&v221 + 1);
      v198 = v221;
      v13 = v222;
      v14 = *(&v223 + 1);
      v15 = v224;
      v16 = v11 + (~v34 << 6);
      *(v16 + 32) = v221;
      *(v16 + 40) = v12;
      *(v16 + 48) = v13;
      *(v16 + 64) = v28;
      *(v16 + 72) = v14;
      *(v16 + 80) = v15;
      sub_1ADDCEE40(v226, &v216, &qword_1EB5BA960, &qword_1AE2455E0);
      sub_1ADDDDE40(v13, *(&v13 + 1), v28, v14, v15, *(&v15 + 1));
      sub_1ADDD86D8(v198, v197);
      sub_1ADDCC35C(v200, *(&v200 + 1));
      v218 = v230;
      v219 = v231;
      v220[0] = *v232;
      *(v220 + 15) = *&v232[15];
      v216 = v228;
      v217 = v229;
      sub_1ADDCEDE0(&v216, &qword_1EB5BA960, &qword_1AE2455E0);
LABEL_7:
      v218 = v223;
      v219 = v224;
      v220[0] = v225[0];
      *(v220 + 15) = *(v225 + 15);
      v216 = v221;
      v217 = v222;
      sub_1ADDCEDE0(&v216, &qword_1EB5BA960, &qword_1AE2455E0);

      sub_1ADE1A3A0(&v233);
      v10 = v236;
      if (!v236)
      {
        goto LABEL_71;
      }
    }

    v197 = &v179;
    MEMORY[0x1EEE9AC00](v31);
    v196 = &v179 - 4;
    v178 = v39;
    v41 = *(&v221 + 1);
    v40 = v221;
    sub_1ADDCEE40(v226, &v216, &qword_1EB5BA960, &qword_1AE2455E0);
    v42 = v199;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v44 = (*v42 + 32);
    v198 = *v42;
    v194 = v44;
    v195 = v38;
    v46 = sub_1ADDDAB3C(0, v40, v41, v38, &v198[2], v44, v45);
    v48 = v46 >> 29;
    if (v46 >> 29 <= 1)
    {
      if (v48)
      {
        v72 = HIDWORD(v46);
        if (isUniquelyReferenced_nonNull_native)
        {
          v73 = v46;
          v74 = v198;
          swift_beginAccess();
          if (v74[3].i32[1] < 0x40u)
          {
            sub_1ADE1A674(v73, v72, sub_1ADE1A60C, v196, v75);
            goto LABEL_38;
          }

          v126 = sub_1ADE1A914(v72, v73, &v74[2], v194);
          v128 = *(&v221 + 1);
          v127 = v221;
          v129 = *(&v222 + 1);
          v130 = v222;
          v132 = *(&v223 + 1);
          v131 = v223;
          v134 = *(&v224 + 1);
          v133 = v224;
          *v126 = v221;
          *(v126 + 1) = v128;
          *(v126 + 1) = __PAIR128__(v129, v130);
          *(v126 + 2) = __PAIR128__(v132, v131);
          *(v126 + 3) = __PAIR128__(v134, v133);
          v135 = v130;
          goto LABEL_70;
        }

        v57 = sub_1ADDD83C0(v46, HIDWORD(v46), sub_1ADE1A60C, v47, v196, v198);
      }

      else
      {
        if (isUniquelyReferenced_nonNull_native)
        {
LABEL_38:
          sub_1ADDCC35C(v200, *(&v200 + 1));
LABEL_59:
          v218 = v230;
          v219 = v231;
          v220[0] = *v232;
          *(v220 + 15) = *&v232[15];
          v216 = v228;
          v217 = v229;
          sub_1ADDCEDE0(&v216, &qword_1EB5BA960, &qword_1AE2455E0);
          goto LABEL_7;
        }

        v55 = v42[1];
        v56 = sub_1ADDFB3E0();
        v57 = sub_1ADDF59C8(v56, v198, v55);
      }

LABEL_58:
      v124 = v57;
      v125 = v58;

      sub_1ADDCC35C(v200, *(&v200 + 1));
      *v42 = v124;
      v42[1] = v125;
      goto LABEL_59;
    }

    if (v48 != 2)
    {
      if (v48 == 3)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          v49 = v198;
        }

        else
        {
          v76 = v42[1];
          v191 = v46;
          v77 = sub_1ADDFB3E0();
          v78 = sub_1ADDF59C8(v77, v198, v76);
          v80 = v79;

          HIDWORD(v46) = HIDWORD(v191);
          *v42 = v78;
          v42[1] = v80;
          v49 = v78;
        }

        v81 = v192;
        v82 = sub_1ADE1ACAC(&v49[4], HIDWORD(v46), 0, v40, v41, v195, sub_1ADE1A60C, v196);
        v192 = v81;
        sub_1ADDCC35C(v200, *(&v200 + 1));
        if (v82)
        {
          ++v42[1];
        }

        goto LABEL_59;
      }

      if (v46 == 0x80000000)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          v68 = v198;
          swift_beginAccess();
          v69 = v68[3].u32[1];
          v70 = v69 >= 0x40;
          v71 = v69 - 64;
          if (!v70)
          {
            sub_1AE034ECC(sub_1ADE1A60C, v196, sub_1AE0351D8, sub_1AE035028);
            goto LABEL_38;
          }

          v171 = v68[2].u32[0];
          v172 = v68[2].i32[1];
          v173 = vcnt_s8(v171);
          v173.i16[0] = vaddlv_u8(v173);
          v68[3].i32[1] = v71;
          if (v171 == v172)
          {
            v174 = v171;
          }

          else
          {
            v174 = v173.u32[0];
          }

          v175 = v68[3].u32[0] - (v174 << 6);
          v176 = v194 + v175;
          v177 = v171 + 1;
          v68[2].i32[0] = v177;
          v68[2].i32[1] = v177;
          v128 = *(&v221 + 1);
          v127 = v221;
          v129 = *(&v222 + 1);
          v135 = v222;
          v132 = *(&v223 + 1);
          v131 = v223;
          v134 = *(&v224 + 1);
          v133 = v224;
          *(v176 - 8) = v221;
          *(v176 - 7) = v128;
          *(v176 - 3) = __PAIR128__(v129, v135);
          *(v68 + v175) = v131;
          *(v176 - 3) = v132;
          *(v176 - 1) = __PAIR128__(v134, v133);
LABEL_70:
          sub_1ADDDDE40(v135, v129, v131, v132, v133, v134);
          sub_1ADDD86D8(v127, v128);
          sub_1ADDCC35C(v200, *(&v200 + 1));
          ++v42[1];
          goto LABEL_59;
        }

        v57 = sub_1AE034BB0(sub_1ADE1A60C, v196, v198, v42[1], sub_1AE035378, sub_1AE035028);
      }

      else
      {
        v83 = v42[1];
        v84 = v198;
        v85 = v198[4];

        v57 = sub_1AE033D0C(0, sub_1ADE1A60C, v196, v195, v84, v83, v85);
      }

      goto LABEL_58;
    }

    v191 = v46;
    v59 = HIDWORD(v46);
    v60 = ~HIDWORD(v46);
    v61 = (&v194[8 * v60] + v198[3].u32[0]);
    v62 = *v61;
    v63 = v61[1];
    sub_1AE23E31C();
    sub_1ADDD86D8(v62, v63);
    sub_1AE23BECC();
    v64 = sub_1AE23E34C();
    sub_1ADDCC35C(v62, v63);
    if (v195 == v64)
    {
      v66 = v198[2].i32[0];
      v67 = v198[2].i32[1];
      if (v66 == v67)
      {
        if (v66 != 1)
        {
          goto LABEL_49;
        }

LABEL_48:
        v87 = v194 + v198[3].u32[0];
        v88 = *(v87 - 1);
        v90 = *(v87 - 4);
        v89 = *(v87 - 3);
        v210 = *(v87 - 2);
        v211 = v88;
        v208 = v90;
        v209 = v89;
        sub_1ADDCEE40(&v208, &v216, &qword_1EB5BA9E8, &qword_1AE251DE0);

        v92 = *(&v208 + 1);
        v91 = v208;
        v93 = v209;
        v94 = v210;
        v194 = *(&v211 + 1);
        v95 = v211;
        v96 = sub_1ADDDAC74(136);
        *(v96 + 16) = 0x200000002;
        v97 = *(v96 + 24);
        v98 = *(v96 + 28) - 136;
        v99 = v194;
        *(v96 + 32) = v195;
        *(v96 + 28) = v98;
        v100 = v96 + 32 + v97;
        v212 = __PAIR128__(v92, v91);
        v213 = v93;
        v214 = v94;
        *&v215 = v95;
        *(&v215 + 1) = v99;
        *(v100 - 64) = v91;
        *(v100 - 56) = v92;
        *(v100 - 48) = v93;
        *(v100 - 32) = v94;
        *(v100 - 16) = v95;
        *(v100 - 8) = v99;
        v101 = *(&v221 + 1);
        v196 = *(&v221 + 1);
        v198 = v221;
        v102 = v222;
        v103 = v223;
        v104 = v224;
        *(v100 - 128) = v221;
        *(v100 - 120) = v101;
        *(v100 - 112) = v102;
        *(v100 - 96) = v103;
        *(v100 - 80) = v104;
        v216 = __PAIR128__(v92, v91);
        v217 = v93;
        v218 = v94;
        *&v219 = v95;
        *(&v219 + 1) = v99;
        sub_1ADDCEE40(&v212, v207, &qword_1EB5BA9E8, &qword_1AE251DE0);
        v105 = v199;
        sub_1ADDDDE40(v102, *(&v102 + 1), v103, *(&v103 + 1), v104, *(&v104 + 1));
        sub_1ADDD86D8(v198, v196);
        sub_1ADDCEDE0(&v216, &qword_1EB5BA9E8, &qword_1AE251DE0);
        sub_1ADDCC35C(v200, *(&v200 + 1));
        *v105 = v96;
        v105[1] = 2;
        goto LABEL_59;
      }

      if (v66)
      {
        if (!v67)
        {
          v65.i32[0] = v198[2].i32[0];
          v86 = vcnt_s8(v65);
          v86.i16[0] = vaddlv_u8(v86);
          if (v86.i32[0] < 2u)
          {
            goto LABEL_48;
          }
        }
      }
    }

LABEL_49:
    if (isUniquelyReferenced_nonNull_native)
    {
      v106 = v198;
      swift_beginAccess();
      v186 = v199[1];
      LODWORD(v107) = v106[2].i32[0];
      v108 = vcnt_s8(v107);
      v108.i16[0] = vaddlv_u8(v108);
      if (v107 == v106[2].i32[1])
      {
        v107 = v107;
      }

      else
      {
        v107 = v108.u32[0];
      }

      v109 = v106[3].u32[0];
      v106[3].i32[1] += 64;
      v110 = v194 + v109 + -64 * v107;
      v111 = (v107 + v60) << 6;
      v112 = *&v110[v111];
      v113 = *&v110[v111 + 8];
      v114 = *&v110[v111 + 16];
      v115 = *&v110[v111 + 24];
      v116 = *&v110[v111 + 32];
      v189 = *&v110[v111 + 40];
      v117 = *&v110[v111 + 56];
      *&v188 = *&v110[v111 + 48];
      memmove(v110 + 64, v110, v111);
      v118 = v106[2].i32[0];
      if ((v106[2].i32[1] & v118) != 0)
      {
        v119 = v118 - 1;
        v106[2].i32[1] = v119;
      }

      else
      {
        v119 = v118 & ((-1 << v191) - 1);
      }

      v136 = v195;
      v106[2].i32[0] = v119;
      v137 = v112;
      *&v216 = v112;
      v138 = v113;
      *(&v216 + 1) = v113;
      *&v217 = v114;
      v139 = v115;
      *(&v217 + 1) = v115;
      v140 = v116;
      *&v218 = v116;
      v141 = v189;
      *(&v218 + 1) = v189;
      v142 = v188;
      *&v219 = v188;
      *(&v219 + 1) = v117;
      v143 = v136;
      *(&v188 + 1) = v117;
      v185 = v114;
      v187 = v139;
      if (v136 == v64)
      {
        v206[0] = v137;
        v206[1] = v138;
        v206[2] = v114;
        v206[3] = v139;
        v206[4] = v140;
        v206[5] = v189;
        v206[6] = v188;
        v206[7] = v117;
        v144 = v137;
        v145 = sub_1ADDDAC74(136);
        *(v145 + 16) = 0x200000002;
        v146 = *(v145 + 24);
        v147 = *(v145 + 28) - 136;
        *(v145 + 32) = v143;
        *(v145 + 28) = v147;
        v148 = v145 + 32 + v146;
        v207[0] = v144;
        v207[1] = v138;
        v149 = v187;
        v207[2] = v114;
        v207[3] = v187;
        v207[4] = v140;
        v207[5] = v141;
        v150 = *(&v188 + 1);
        v207[6] = v142;
        v207[7] = *(&v188 + 1);
        *(v148 - 64) = v144;
        *(v148 - 56) = v138;
        v184 = v144;
        *(v148 - 48) = v114;
        *(v148 - 40) = v149;
        v151 = v149;
        *(v148 - 32) = v140;
        *(v148 - 24) = v141;
        *(v148 - 16) = v142;
        *(v148 - 8) = v150;
        v152 = *(&v221 + 1);
        v195 = *(&v221 + 1);
        v196 = v221;
        v154 = *(&v222 + 1);
        v153 = v222;
        v155 = v223;
        v182 = *(&v223 + 1);
        v183 = v223;
        v157 = *(&v224 + 1);
        v156 = v224;
        v181 = v224;
        v179 = v222;
        v180 = *(&v224 + 1);
        *(v148 - 128) = v221;
        *(v148 - 120) = v152;
        *(v148 - 112) = __PAIR128__(v154, v153);
        *(v148 - 96) = v155;
        *(v148 - 80) = __PAIR128__(v157, v156);
        *&v208 = v144;
        *(&v208 + 1) = v138;
        *&v209 = v114;
        *(&v209 + 1) = v151;
        *&v210 = v140;
        *(&v210 + 1) = v141;
        *&v211 = v142;
        *(&v211 + 1) = v150;
        sub_1ADDCEE40(&v216, &v212, &qword_1EB5BA9E8, &qword_1AE251DE0);
        sub_1ADDCEE40(v206, &v212, &qword_1EB5BA9E8, &qword_1AE251DE0);
        sub_1ADDCEE40(v207, &v212, &qword_1EB5BA9E8, &qword_1AE251DE0);
        sub_1ADDDDE40(v179, v154, v183, v182, v181, v180);
        sub_1ADDD86D8(v196, v195);
        sub_1ADDCEDE0(&v208, &qword_1EB5BA9E8, &qword_1AE251DE0);
        v158 = v184;
        *&v212 = v184;
        *(&v212 + 1) = v138;
        *&v213 = v114;
        *(&v213 + 1) = v187;
        *&v214 = v140;
        *(&v214 + 1) = v189;
        *&v215 = v142;
        *(&v215 + 1) = *(&v188 + 1);
        sub_1ADDCEDE0(&v212, &qword_1EB5BA9E8, &qword_1AE251DE0);
        v159 = 2;
        v160 = v158;
      }

      else
      {
        *&v208 = v137;
        *(&v208 + 1) = v138;
        *&v209 = v114;
        *(&v209 + 1) = v139;
        *&v210 = v140;
        *(&v210 + 1) = v189;
        *&v211 = v188;
        *(&v211 + 1) = v117;
        *&v247 = v114;
        *(&v247 + 1) = v139;
        v248 = v140;
        v249 = v189;
        v250 = v188;
        v251 = v117;
        v160 = v137;
        v161 = v114;
        v162 = v139;
        sub_1ADDCEE40(&v216, &v212, &qword_1EB5BA9E8, &qword_1AE251DE0);
        sub_1ADDCEE40(&v208, &v212, &qword_1EB5BA9E8, &qword_1AE251DE0);
        v145 = sub_1ADE1A9BC(5, v160, v138, &v247, v64, sub_1ADE1A60C, v196, v143);
        v159 = v163;
        *&v212 = v160;
        *(&v212 + 1) = v138;
        *&v213 = v161;
        *(&v213 + 1) = v162;
        *&v214 = v140;
        *(&v214 + 1) = v141;
        v215 = v188;
        sub_1ADDCEDE0(&v212, &qword_1EB5BA9E8, &qword_1AE251DE0);
      }

      v164 = v140;
      v165 = v198;
      v199[1] = v186 + v159 - 1;
      v166 = v165[2].i32[1];
      v167 = 1 << v191;
      v165[3].i32[1] -= 16;
      v168.i32[0] = v166;
      v168.i32[1] = v166 & (v167 - 1);
      v169 = vpaddl_u16(vpaddl_u8(vcnt_s8(v168)));
      v170 = &v194[2 * v169.u32[1]];
      memmove(v170 + 2, v170, 16 * (v169.u32[0] - v169.u32[1]));
      *v170 = v145;
      v170[1] = v159;
      v165[2].i32[1] |= v167;
      *&v212 = v160;
      *(&v212 + 1) = v138;
      *&v213 = v185;
      *(&v213 + 1) = v187;
      *&v214 = v164;
      *(&v214 + 1) = v189;
      v215 = v188;

      sub_1ADDCEDE0(&v212, &qword_1EB5BA9E8, &qword_1AE251DE0);

      sub_1ADDCC35C(v200, *(&v200 + 1));
    }

    else
    {
      v120 = v199;
      v178 = v199[1];
      v121 = sub_1AE034800(0, v191, v59, v64, v195, sub_1ADE1A60C, v196, v198);
      v123 = v122;

      sub_1ADDCC35C(v200, *(&v200 + 1));
      *v120 = v121;
      v120[1] = v123;
    }

    goto LABEL_59;
  }

LABEL_71:
  sub_1ADDDCE74(v240);
}

uint64_t sub_1ADE1A3A0@<X0>(_OWORD *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[3];
  v5 = v1[4];
  if (v5)
  {
    v6 = v1[3];
LABEL_10:
    v10 = __clz(__rbit64(v5)) | (v6 << 6);
    v11 = *(v3 + 48);
    v12 = *(v3 + 56) + 48 * v10;
    v13 = *(v12 + 16);
    v14 = *(v12 + 24);
    v15 = *(v12 + 32);
    v16 = *(v12 + 40);
    v17 = v1[5];
    v19 = *v12;
    v21 = *(v11 + 16 * v10);
    v18 = v21;
    v1[3] = v6;
    v1[4] = (v5 - 1) & v5;
    v22 = v19;
    *&v23 = v13;
    *(&v23 + 1) = v14;
    *&v24 = v15;
    *(&v24 + 1) = v16;
    sub_1ADDD86D8(v18, *(&v18 + 1));

    v17(&v21);
    v25[0] = v21;
    v25[1] = v22;
    v25[2] = v23;
    v25[3] = v24;
    return sub_1ADDCEDE0(v25, &qword_1EB5BA9E8, &qword_1AE251DE0);
  }

  else
  {
    v7 = (v1[2] + 64) >> 6;
    if (v7 <= v4 + 1)
    {
      v8 = v4 + 1;
    }

    else
    {
      v8 = (v1[2] + 64) >> 6;
    }

    v9 = v8 - 1;
    while (1)
    {
      v6 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      if (v6 >= v7)
      {
        v1[3] = v9;
        v1[4] = 0;
        *a1 = 0u;
        a1[1] = 0u;
        a1[2] = 0u;
        a1[3] = 0u;
        return result;
      }

      v5 = *(v1[1] + 8 * v6);
      ++v4;
      if (v5)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

__n128 sub_1ADE1A500@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v9 = *a1;
  v10 = *(a1 + 16);
  v7 = *a1;
  sub_1ADDD86D8(*a1, *(a1 + 8));

  sub_1ADDD86D8(v7.n128_i64[0], v7.n128_u64[1]);

  sub_1ADDCC35C(v7.n128_i64[0], v7.n128_u64[1]);

  result = v9;
  *a2 = v9;
  *(a2 + 16) = v10;
  *(a2 + 32) = v3;
  *(a2 + 40) = v4;
  *(a2 + 48) = v5;
  *(a2 + 56) = v6;
  return result;
}

uint64_t sub_1ADE1A614(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[2];
  v5 = a2[3];
  v6 = a2[4];
  v7 = a2[5];
  v8 = a2[6];
  v9 = a2[7];
  *a1 = *a2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  a1[6] = v8;
  a1[7] = v9;
  sub_1ADDDDE40(v4, v5, v6, v7, v8, v9);

  return sub_1ADDD86D8(v2, v3);
}

void sub_1ADE1A674(char a1, unsigned int a2, uint64_t (*a3)(char *), uint64_t a4, int8x8_t a5)
{
  v6 = *v5;
  v18 = v5[1];
  v7 = *(*v5 + 16) | (1 << a1);
  v8 = *(*v5 + 20);
  a5.i32[0] = v7;
  v9 = vcnt_s8(a5);
  v9.i16[0] = vaddlv_u8(v9);
  v10 = v9.u32[0];
  v11 = vcnt_s8(v8);
  v11.i16[0] = vaddlv_u8(v11);
  v12 = v11.u32[0];
  v13 = v10 << 6;
  v14 = (v10 << 6) + 16 * v11.i32[0];
  v15 = sub_1ADDDAC74(v13 + 16 * v11.u32[0]);
  *(v15 + 16) = v7;
  *(v15 + 20) = v8;
  v16 = *(v15 + 24);
  *(v15 + 28) -= v14;
  sub_1ADE1A764((v15 + 32), v12, (v15 + 32 - v13 + v16), v10, (v6 + 16), (v6 + 32), a2, a3, v17, a4);

  *v5 = v15;
  v5[1] = v18 + 1;
}

char *sub_1ADE1A764(char *result, uint64_t a2, char *__dst, uint64_t a4, unsigned int *a5, char *__src, unsigned int a7, uint64_t (*a8)(char *), int8x8_t a9, uint64_t a10)
{
  v15 = a5[1];
  if (*a5 != v15 && v15 != 0)
  {
    a9.i32[0] = a5[1];
    v31 = vcnt_s8(a9);
    v31.i16[0] = vaddlv_u8(v31);
    if (v31.u32[0] > a2)
    {
LABEL_52:
      __break(1u);
      goto LABEL_53;
    }

    if (result != __src || &__src[16 * v31.u32[0]] <= result)
    {
      v32 = __src;
      result = memmove(result, __src, 16 * v31.u32[0]);
      __src = v32;
    }
  }

  v17 = vcnt_s8(*a5);
  v17.i16[0] = vaddlv_u8(v17);
  if (*a5 == a5[1])
  {
    v18 = *a5;
  }

  else
  {
    v18 = v17.u32[0];
  }

  if (-a7 < -a4 && -a4 < 1)
  {
    v20 = 0;
  }

  else
  {
    v20 = a4 - a7;
  }

  v21 = a4 - v20;
  if (a4 < v20)
  {
    __break(1u);
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v22 = v18 - a7;
  if (v18 >= a7)
  {
    v23 = v18 - a7;
  }

  else
  {
    v23 = 0;
  }

  if (v18 < v23)
  {
    goto LABEL_48;
  }

  v24 = &__dst[64 * v20];
  if (__dst)
  {
    result = v24;
  }

  else
  {
    result = 0;
  }

  v25 = &__src[a5[2]];
  v26 = &v25[-64 * v18];
  v27 = v18 - v23;
  if (v18 != v23)
  {
    if (v21 < v27)
    {
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
      goto LABEL_52;
    }

    v28 = &v26[64 * v23];
    v29 = v28 <= result && v25 > result;
    if (!v29 || v28 != result)
    {
      result = memmove(result, v28, v27 << 6);
    }
  }

  if ((v22 & 0x8000000000000000) != 0)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  if (v18 == a7)
  {
    goto LABEL_41;
  }

  if ((a4 & 0x8000000000000000) == 0 && v22 > a4)
  {
    goto LABEL_51;
  }

  if (v26 != __dst || &v26[64 * v22] <= __dst)
  {
    result = memmove(__dst, v26, v22 << 6);
  }

LABEL_41:
  if (__dst)
  {
    result = a8(&__dst[64 * v22]);
    *a5 = 0;
    a5[3] = a5[2];
    return result;
  }

LABEL_53:
  __break(1u);
  return result;
}

char *sub_1ADE1A914(unsigned int a1, char a2, int *a3, uint64_t a4)
{
  v6 = ~a2;
  LODWORD(v7) = *a3;
  v8 = vcnt_s8(*a3);
  v8.i16[0] = vaddlv_u8(v8);
  if (*a3 == a3[1])
  {
    v7 = v7;
  }

  else
  {
    v7 = v8.u32[0];
  }

  v9 = a3[2];
  a3[3] -= 64;
  v10 = (a4 - (v7 << 6) + v9);
  v11 = v10 - 64;
  v12 = v7 - a1;
  memmove(v10 - 64, v10, v12 << 6);
  v13 = *a3;
  if (v6)
  {
    v14 = v13 | (1 << a2);
  }

  else
  {
    v14 = v13 + 1;
    a3[1] = v14;
  }

  *a3 = v14;
  return &v11[64 * v12];
}

int64_t sub_1ADE1A9BC(int a1, uint64_t a2, uint64_t a3, unsigned __int128 *a4, unint64_t a5, void (*a6)(unint64_t), uint64_t a7, unint64_t a8)
{
  v14 = (a5 >> a1) & 0x1F;
  v15 = (a8 >> a1) & 0x1F;
  v47[0] = a2;
  v47[1] = a3;
  v16 = a4[1];
  v48 = *a4;
  v49 = v16;
  v50 = a4[2];
  if (v14 == v15)
  {
    v43 = v48;
    v44 = v16;
    v45 = v50;
    sub_1ADDCEE40(v47, &v51, &qword_1EB5BA9E8, &qword_1AE251DE0);
    v19 = sub_1ADE1A9BC(a1 + 5, a2, a3, &v43, a5, a6, a7, a8);
    v21 = v20;
    v22 = sub_1ADDDAC74(16);
    *(v22 + 16) = 0;
    *(v22 + 20) = 1 << v14;
    *(v22 + 28) -= 16;
    *(v22 + 32) = v19;
    *(v22 + 40) = v21;
    v51 = a2;
    v52 = a3;
    v23 = a4[1];
    v55 = a4[2];
    v24 = *a4;
    v54 = v23;
    v53 = v24;
    sub_1ADDCEDE0(&v51, &qword_1EB5BA9E8, &qword_1AE251DE0);
  }

  else
  {
    v25 = *(&v48 + 1);
    v26 = v16;
    v38 = v48;
    v27 = v50;
    v28 = (1 << (a8 >> a1)) | (1 << (a5 >> a1));
    v29 = vcnt_s8(__PAIR64__(DWORD1(v50), v28));
    v29.i16[0] = vaddlv_u8(v29);
    v30 = (v29.i32[0] << 6);
    v22 = sub_1ADDDAC74(v30);
    v31 = *(v22 + 24);
    *(v22 + 28) -= v30;
    *(v22 + 16) = v28;
    *(v22 + 20) = 0;
    v32 = v22 - v30 + v31 + 32;
    v51 = a2;
    v52 = a3;
    v53 = __PAIR128__(v25, v38);
    v54 = v26;
    v55 = v27;
    v33 = v32 + ((v14 < v15) << 6);
    *v33 = a2;
    *(v33 + 8) = a3;
    *(v33 + 16) = v38;
    *(v33 + 24) = v25;
    *(v33 + 32) = v26;
    v34 = v32 + ((v14 >= v15) << 6);
    *(v33 + 48) = v27;
    sub_1ADDCEE40(v47, &v43, &qword_1EB5BA9E8, &qword_1AE251DE0);
    sub_1ADDCEE40(&v51, &v43, &qword_1EB5BA9E8, &qword_1AE251DE0);
    a6(v34);
    v39[0] = a2;
    v39[1] = a3;
    v35 = a4[1];
    v40 = *a4;
    v41 = v35;
    v42 = a4[2];
    sub_1ADDCEDE0(v39, &qword_1EB5BA9E8, &qword_1AE251DE0);
    *&v43 = a2;
    *(&v43 + 1) = a3;
    v44 = __PAIR128__(v25, v38);
    v45 = v26;
    v46 = v27;
    sub_1ADDCEDE0(&v43, &qword_1EB5BA9E8, &qword_1AE251DE0);
  }

  return v22;
}

uint64_t sub_1ADE1ACAC(uint64_t a1, unsigned int a2, int a3, uint64_t a4, unint64_t a5, unint64_t a6, uint64_t (*a7)(char *), uint64_t a8)
{
  v14 = (a1 + 16 * a2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = sub_1ADDDAB3C((a3 + 5), a4, a5, a6, &(*v14)[2], &(*v14)[4], v16);
  v19 = v17 >> 29;
  if (v17 >> 29 <= 1)
  {
    if (v19)
    {
      v27 = HIDWORD(v17);
      v28 = *v14;
      if (isUniquelyReferenced_nonNull_native)
      {
        v29 = v17;
        swift_beginAccess();
        if (v28[3].i32[1] >= 0x40u)
        {
          v42 = sub_1ADE1A914(v27, v29, &v28[2], &v28[4]);
          a7(v42);
          v14[1] = (v14[1] + 1);
        }

        else
        {
          sub_1ADE1A674(v29, v27, a7, a8, v30);
        }
      }

      else
      {
        *v14 = sub_1ADDD83C0(v17, HIDWORD(v17), a7, v18, a8, *v14);
        v14[1] = v41;
      }

      return 1;
    }

    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v35 = v14[1];
      v36 = *v14;
      v37 = sub_1ADDFB3E0();
      v38 = sub_1ADDF59C8(v37, v36, v35);
      v40 = v39;

      result = 0;
      *v14 = v38;
      v14[1] = v40;
      return result;
    }

    return 0;
  }

  if (v19 == 2)
  {
    sub_1AE033E90(isUniquelyReferenced_nonNull_native, (a3 + 5), v17, HIDWORD(v17), a6, a7, a8);
    return 1;
  }

  if (v19 != 3)
  {
    if (v17 != 0x80000000)
    {
      v32 = *v14;
      v31 = v14[1];
      v33 = (*v14)[4];

      *v14 = sub_1AE033D0C((a3 + 5), a7, a8, a6, v32, v31, v33);
      v14[1] = v34;

      return 1;
    }

    sub_1AE034414(isUniquelyReferenced_nonNull_native, a7, a8);
    return 1;
  }

  v20 = HIDWORD(v17);
  v21 = *v14;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v22 = v14[1];
    v44 = HIDWORD(v17);
    v23 = sub_1ADDFB3E0();
    v24 = sub_1ADDF59C8(v23, v21, v22);
    v43 = v25;

    LODWORD(v20) = v44;
    *v14 = v24;
    v14[1] = v43;
    v21 = v24;
  }

  if ((sub_1ADE1ACAC(&v21[4], v20, a3 + 5, a4, a5, a6, a7, a8) & 1) == 0)
  {
    return 0;
  }

  v14[1] = (v14[1] + 1);
  return 1;
}

void sub_1ADE1AFA0(uint64_t a1)
{
  v2 = *sub_1AE23C1EC();
  v18 = v2;
  v19 = 0;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v15[4] = v2;

  v7 = 0;
  while (v5)
  {
    v8 = v7;
LABEL_9:
    v9 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v10 = (*(a1 + 48) + ((v8 << 10) | (16 * v9)));
    v11 = *v10;
    v12 = v10[1];
    sub_1AE23E31C();
    sub_1ADDD86D8(v11, v12);
    sub_1ADDD86D8(v11, v12);
    sub_1AE23BECC();
    v13 = sub_1AE23E34C();
    sub_1ADDCC35C(v11, v12);
    v16 = v11;
    v17 = v12;
    MEMORY[0x1EEE9AC00](v14);
    v15[2] = &v16;
    sub_1ADDDB234(0, v16, v17, v13, sub_1ADE1B14C, v15);
    sub_1ADDCC35C(v16, v17);
  }

  while (1)
  {
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v8 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v8);
    ++v7;
    if (v5)
    {
      v7 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
}

void sub_1ADE1B150(char a1, unsigned int a2, uint64_t (*a3)(char *), uint64_t a4)
{
  v6 = *v4;
  v5 = v4[1];
  v7 = (*v4 + 16);
  v8 = *v7 | (1 << a1);
  v9 = *(*v4 + 20);
  v10 = vpaddl_u16(vpaddl_u8(vcnt_s8(__PAIR64__(v9, v8))));
  v11 = v10.u32[0];
  v12 = v10.u32[1];
  v13 = 16 * (v10.i32[0] + v10.i32[1]);
  v14 = sub_1ADDDB860(16 * (v10.u32[0] + v10.u32[1]));
  *(v14 + 16) = v8;
  *(v14 + 20) = v9;
  v15 = *(v14 + 24);
  *(v14 + 28) -= v13;
  sub_1ADE1B23C((v14 + 32), v12, (v14 + 32 - 16 * v11 + v15), v11, v7, (v6 + 32), a2, a3, v16, a4);

  *v4 = v14;
  v4[1] = v5 + 1;
}

char *sub_1ADE1B23C(char *result, uint64_t a2, char *__dst, uint64_t a4, unsigned int *a5, char *__src, unsigned int a7, uint64_t (*a8)(char *), int8x8_t a9, uint64_t a10)
{
  v15 = a5[1];
  if (*a5 != v15 && v15 != 0)
  {
    a9.i32[0] = a5[1];
    v31 = vcnt_s8(a9);
    v31.i16[0] = vaddlv_u8(v31);
    if (v31.u32[0] > a2)
    {
LABEL_52:
      __break(1u);
      goto LABEL_53;
    }

    if (result != __src || &__src[16 * v31.u32[0]] <= result)
    {
      v32 = __src;
      result = memmove(result, __src, 16 * v31.u32[0]);
      __src = v32;
    }
  }

  v17 = vcnt_s8(*a5);
  v17.i16[0] = vaddlv_u8(v17);
  if (*a5 == a5[1])
  {
    v18 = *a5;
  }

  else
  {
    v18 = v17.u32[0];
  }

  if (-a7 < -a4 && -a4 < 1)
  {
    v20 = 0;
  }

  else
  {
    v20 = a4 - a7;
  }

  v21 = a4 - v20;
  if (a4 < v20)
  {
    __break(1u);
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v22 = v18 - a7;
  if (v18 >= a7)
  {
    v23 = v18 - a7;
  }

  else
  {
    v23 = 0;
  }

  if (v18 < v23)
  {
    goto LABEL_48;
  }

  v24 = &__dst[16 * v20];
  if (__dst)
  {
    result = v24;
  }

  else
  {
    result = 0;
  }

  v25 = &__src[a5[2]];
  v26 = &v25[-16 * v18];
  v27 = v18 - v23;
  if (v18 != v23)
  {
    if (v21 < v27)
    {
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
      goto LABEL_52;
    }

    v28 = &v26[16 * v23];
    v29 = v28 <= result && v25 > result;
    if (!v29 || v28 != result)
    {
      result = memmove(result, v28, 16 * v27);
    }
  }

  if ((v22 & 0x8000000000000000) != 0)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  if (v18 == a7)
  {
    goto LABEL_41;
  }

  if ((a4 & 0x8000000000000000) == 0 && v22 > a4)
  {
    goto LABEL_51;
  }

  if (v26 != __dst || &v26[16 * v22] <= __dst)
  {
    result = memmove(__dst, v26, 16 * v22);
  }

LABEL_41:
  if (__dst)
  {
    result = a8(&__dst[16 * v22]);
    *a5 = 0;
    a5[3] = a5[2];
    return result;
  }

LABEL_53:
  __break(1u);
  return result;
}

uint64_t sub_1ADE1B3EC(char a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, void (*a6)(uint64_t), uint64_t a7)
{
  v8 = v7;
  v10 = a4;
  v56 = a3;
  v11 = a2;
  v13 = *v7;
  v59 = *v7 + 32;
  v14 = ~a4;
  v15 = (v59 + *(*v7 + 24) + 16 * v14);
  v16 = *v15;
  v17 = v15[1];
  sub_1AE23E31C();
  sub_1ADDD86D8(v16, v17);
  sub_1AE23BECC();
  v18 = sub_1AE23E34C();
  sub_1ADDCC35C(v16, v17);
  if (v18 == a5)
  {
    v20 = v13[4];
    v21 = v13[5];
    if (v20 == v21)
    {
      if (v20 == 1)
      {
LABEL_4:
        v22 = v59 + v13[6];
        v23 = *(v22 - 16);
        v24 = *(v22 - 8);
        sub_1ADDD86D8(v23, v24);

        v25 = sub_1AE034D24(a5, v23, v24, a6);
        *v8 = v25;
        v8[1] = v26;
        return v25;
      }
    }

    else
    {
      v19.i32[0] = v13[4];
      v27 = vcnt_s8(v19);
      v27.i16[0] = vaddlv_u8(v27);
      if (v20)
      {
        v28 = v21 == 0;
      }

      else
      {
        v28 = 0;
      }

      if (v28 && v27.i32[0] < 2u)
      {
        goto LABEL_4;
      }
    }
  }

  if (a1)
  {
    swift_beginAccess();
    v30 = v8[1];
    LODWORD(v31) = v13[4];
    v32 = vcnt_s8(v31);
    v32.i16[0] = vaddlv_u8(v32);
    if (v31 == v13[5])
    {
      v31 = v31;
    }

    else
    {
      v31 = v32.u32[0];
    }

    v33 = v13[6];
    v13[7] += 16;
    v34 = v59 - 16 * v31 + v33;
    v35 = 16 * (v31 + v14);
    v36 = *(v34 + v35);
    v37 = *(v34 + v35 + 8);
    memmove((v34 + 16), v34, v35);
    v38 = v13[4];
    if ((v13[5] & v38) != 0)
    {
      v39 = v38 - 1;
      v13[5] = v39;
    }

    else
    {
      v39 = v38 & ((-1 << v56) - 1);
    }

    v13[4] = v39;
    if (v18 == a5)
    {
      v44 = sub_1ADDDB860(40);
      *(v44 + 16) = 0x200000002;
      v45 = *(v44 + 24);
      *(v44 + 28) -= 40;
      *(v44 + 32) = a5;
      v46 = v44 + v45;
      *(v46 + 16) = v36;
      *(v46 + 24) = v37;
      sub_1ADDD86D8(v36, v37);
      sub_1ADDD86D8(v36, v37);
      sub_1ADDD86D8(v36, v37);
      a6(v46);
      sub_1ADDCC35C(v36, v37);
      v47 = 2;
      v25 = v44;
    }

    else
    {
      sub_1ADDD86D8(v36, v37);
      sub_1ADDD86D8(v36, v37);
      v44 = sub_1ADE1B784(v11 + 5, v36, v37, v18, a6, a7, a5, v48);
      v47 = v49;
      v25 = v50;
    }

    sub_1ADDCC35C(v36, v37);
    v8[1] = v30 + v47 - 1;
    v51 = v13[5];
    v13[7] -= 16;
    v52.i32[0] = v51;
    v52.i32[1] = v51 & ((1 << v56) - 1);
    v53 = vpaddl_u16(vpaddl_u8(vcnt_s8(v52)));
    v54 = (v59 + 16 * v53.u32[1]);
    memmove(v54 + 2, v54, 16 * (v53.u32[0] - v53.u32[1]));
    *v54 = v44;
    v54[1] = v47;
    v13[5] |= 1 << v56;

    sub_1ADDCC35C(v36, v37);
  }

  else
  {
    v40 = sub_1AE034564(v11, v56, v10, v18, a5, a6, a7, v13);
    v42 = v41;
    v25 = v43;

    *v8 = v40;
    v8[1] = v42;
  }

  return v25;
}

int64_t sub_1ADE1B784(int a1, uint64_t a2, unint64_t a3, unint64_t a4, void (*a5)(uint64_t), uint64_t a6, unint64_t a7, int8x8_t a8)
{
  v13 = (a4 >> a1) & 0x1F;
  v14 = (a7 >> a1) & 0x1F;
  if (v13 == v14)
  {
    sub_1ADDD86D8(a2, a3);
    v18 = sub_1ADE1B784(a1 + 5, a2, a3, a4, a5, a6, a7, v17);
    v20 = v19;
    v21 = sub_1ADDDB860(16);
    *(v21 + 16) = 0;
    *(v21 + 20) = 1 << v13;
    *(v21 + 28) -= 16;
    *(v21 + 32) = v18;
    *(v21 + 40) = v20;
  }

  else
  {
    v22 = (1 << (a7 >> a1)) | (1 << (a4 >> a1));
    a8.i32[0] = v22;
    v23 = vcnt_s8(a8);
    v23.i16[0] = vaddlv_u8(v23);
    v24 = (16 * v23.i32[0]);
    v21 = sub_1ADDDB860(v24);
    v25 = *(v21 + 24);
    *(v21 + 28) -= v24;
    *(v21 + 16) = v22;
    *(v21 + 20) = 0;
    v26 = v21 - v24 + v25 + 32;
    v27 = (v26 + 16 * (v13 < v14));
    *v27 = a2;
    v27[1] = a3;
    v28 = v26 + 16 * (v13 >= v14);
    sub_1ADDD86D8(a2, a3);
    sub_1ADDD86D8(a2, a3);
    a5(v28);
    sub_1ADDCC35C(a2, a3);
  }

  sub_1ADDCC35C(a2, a3);
  return v21;
}

void sub_1ADE1B924()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA098, &qword_1AE241878);
  v2 = *v0;
  v3 = sub_1AE23DCBC();
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
        v18 = *(*(v2 + 48) + 8 * v17);
        sub_1ADDE4E28(*(v2 + 56) + 32 * v17, v20);
        *(*(v4 + 48) + 8 * v17) = v18;
        sub_1ADDEE390(v20, (*(v4 + 56) + 32 * v17));
        v19 = v18;
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

uint64_t CRStruct_4.visitReferences(_:)(void *a1, uint64_t a2, uint64_t a3)
{
  v71 = a1;
  v4 = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v51 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v50 = &v50 - v5;
  v6 = swift_getAssociatedTypeWitness();
  v53 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v52 = &v50 - v7;
  v8 = swift_getAssociatedTypeWitness();
  v56 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v55 = &v50 - v9;
  v68 = swift_getAssociatedTypeWitness();
  v70 = *(v68 - 8);
  v10 = MEMORY[0x1EEE9AC00](v68);
  v69 = &v50 - v11;
  (*(v4 + 80))(v77, a2, v4, v10);
  v12 = v77[1];
  v67 = v77[2];
  v75 = v77[4];
  v74 = v77[5];
  v13 = v77[7];
  v14 = v77[8];
  v16 = v77[10];
  v15 = v77[11];
  sub_1AE23DB8C();
  v76[0] = swift_getTupleTypeMetadata2();
  v57 = v8;
  sub_1AE23DB8C();
  v76[1] = swift_getTupleTypeMetadata2();
  v54 = v6;
  sub_1AE23DB8C();
  v76[2] = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v76[3] = swift_getTupleTypeMetadata2();
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v72 = *(TupleTypeMetadata - 8);
  v18 = *(v72 + 16);
  v59 = v72 + 16;
  v58 = v18;
  v18(v76, v77, TupleTypeMetadata);
  v64 = v12;
  v19 = v71;

  v63 = v15;

  v60 = v16;

  v61 = v14;

  v62 = v13;

  v20 = v69;
  swift_getAtKeyPath();

  v65 = v4;
  v66 = a2;
  v21 = v68;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(*(AssociatedConformanceWitness + 16) + 48))(v19, v21);
  (*(v70 + 8))(v20, v21);
  v23 = v19[3];
  v24 = v19[4];
  __swift_project_boxed_opaque_existential_1(v19, v23);
  v25 = *(v24 + 8);
  v26 = v24;
  v27 = TupleTypeMetadata;
  if ((v25(v23, v26) & 1) == 0)
  {
    v58(v76, v77, TupleTypeMetadata);

    v28 = v55;
    swift_getAtKeyPath();

    v29 = v57;
    v30 = swift_getAssociatedConformanceWitness();
    (*(*(v30 + 16) + 48))(v19, v29);
    (*(v56 + 8))(v28, v29);
    v31 = v27;
    v32 = v19[3];
    v33 = v19[4];
    __swift_project_boxed_opaque_existential_1(v19, v32);
    v34 = *(v33 + 8);
    v35 = v33;
    v27 = v31;
    if ((v34(v32, v35) & 1) == 0)
    {
      v58(v76, v77, v31);

      v36 = v52;
      swift_getAtKeyPath();

      v37 = v54;
      v38 = swift_getAssociatedConformanceWitness();
      (*(*(v38 + 16) + 48))(v19, v37);
      (*(v53 + 8))(v36, v37);
      v39 = v19[3];
      v40 = v19[4];
      __swift_project_boxed_opaque_existential_1(v19, v39);
      v41 = *(v40 + 8);
      v42 = v40;
      v27 = v31;
      if ((v41(v39, v42) & 1) == 0)
      {
        v58(v76, v77, v31);

        v43 = v50;
        swift_getAtKeyPath();

        v44 = AssociatedTypeWitness;
        v45 = swift_getAssociatedConformanceWitness();
        (*(*(v45 + 16) + 48))(v19, v44);
        (*(v51 + 8))(v43, v44);
        v46 = v19[3];
        v47 = v19[4];
        __swift_project_boxed_opaque_existential_1(v19, v46);
        if (((*(v47 + 8))(v46, v47) & 1) == 0)
        {
          v48 = (*(*(v65 + 8) + 24))(v66);
          sub_1ADDDC764(v19, v48);
        }
      }
    }
  }

  return (*(v72 + 8))(v77, v27);
}

uint64_t CRStruct_2.visitReferences(_:)(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v26 = *(AssociatedTypeWitness - 8);
  v27 = AssociatedTypeWitness;
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v25 = &v24 - v8;
  v9 = swift_getAssociatedTypeWitness();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v24 - v12;
  (*(v6 + 48))(v32, a2, v6, v11);
  v30 = v32[1];
  v31 = v32[4];
  v29 = v32[5];

  v28 = v3;
  swift_getAtKeyPath();

  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(*(AssociatedConformanceWitness + 16) + 48))(a1, v9);
  (*(v10 + 8))(v13, v9);
  v15 = a1[3];
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v15);
  if ((*(v16 + 8))(v15, v16))
  {
  }

  else
  {

    v17 = v25;
    swift_getAtKeyPath();

    v18 = v27;
    v19 = swift_getAssociatedConformanceWitness();
    (*(*(v19 + 16) + 48))(a1, v18);
    (*(v26 + 8))(v17, v18);
    v20 = a1[3];
    v21 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v20);
    if ((*(v21 + 8))(v20, v21))
    {
    }

    else
    {
      v22 = (*(*(v6 + 8) + 24))(a2);
      sub_1ADDDC764(a1, v22);
    }
  }
}

uint64_t sub_1ADE1C81C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 16) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 24) = result;
  return result;
}

void CRDictionary.visitReferences(_:)(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v83 = a1;
  v7 = a2[3];
  v77 = a2[6];
  v78 = v7;
  v8 = type metadata accessor for CRDictionaryElement(0, v7, v77, a4);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v73 = &v66 - v13;
  v79 = a2;
  v14 = a2[2];
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v66 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v71 = &v66 - v20;
  v92 = v21;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v86 = sub_1AE23D7CC();
  v23 = *(v86 - 8);
  MEMORY[0x1EEE9AC00](v86);
  v88 = &v66 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v87 = &v66 - v26;
  v27 = *v5;
  swift_beginAccess();
  v28 = *(v27 + 40);
  v29 = *(v28 + 64);
  v67 = v28 + 64;
  v30 = 1 << *(v28 + 32);
  v31 = -1;
  if (v30 < 64)
  {
    v31 = ~(-1 << v30);
  }

  v32 = v31 & v29;
  v66 = (v30 + 63) >> 6;
  v89 = TupleTypeMetadata2;
  v85 = TupleTypeMetadata2 - 8;
  v33 = v11;
  v69 = v15 + 16;
  v68 = v9 + 16;
  v90 = (v9 + 32);
  v91 = (v15 + 32);
  v84 = (v23 + 32);
  v75 = v9;
  v80 = (v9 + 8);
  v72 = v15;
  v81 = (v15 + 8);
  v76 = v28;

  v34 = 0;
  v74 = v18;
  v70 = v11;
  v82 = v14;
  if (v32)
  {
    while (1)
    {
      v35 = v34;
LABEL_12:
      v41 = __clz(__rbit64(v32));
      v32 &= v32 - 1;
      v42 = v41 | (v35 << 6);
      v43 = v76;
      v44 = v72;
      v45 = v71;
      (*(v72 + 16))(v71, *(v76 + 48) + *(v72 + 72) * v42, v14);
      v46 = v75;
      v47 = *(v43 + 56) + *(v75 + 72) * v42;
      v48 = v73;
      v49 = v92;
      (*(v75 + 16))(v73, v47, v92);
      v38 = v89;
      v50 = *(v89 + 48);
      v51 = *(v44 + 32);
      v39 = v88;
      v51(v88, v45, v14);
      (*(v46 + 32))(&v39[v50], v48, v49);
      v52 = 0;
      v37 = v35;
      v18 = v74;
      v33 = v70;
      v40 = v87;
LABEL_13:
      v53 = *(v38 - 8);
      (*(v53 + 56))(v39, v52, 1, v38);
      (*v84)(v40, v39, v86);
      if ((*(v53 + 48))(v40, 1, v38) == 1)
      {
        break;
      }

      v93 = v37;
      v54 = *(v38 + 48);
      v55 = v82;
      (*v91)(v18, v40, v82);
      v56 = v33;
      v57 = v33;
      v58 = v92;
      (*v90)(v57, &v40[v54]);
      v59 = v83;
      v60 = v18;
      v62 = v83[3];
      v61 = v83[4];
      __swift_project_boxed_opaque_existential_1(v83, v62);
      if ((*(v61 + 8))(v62, v61) & 1) != 0 || ((*(*(v79[4] + 8) + 48))(v59, v55), v63 = v59[3], v64 = v59[4], __swift_project_boxed_opaque_existential_1(v59, v63), ((*(v64 + 8))(v63, v64)))
      {

        (*v80)(v56, v58);
        (*v81)(v60, v55);
        return;
      }

      v65 = v58;
      v33 = v56;
      (*(*(v77 + 8) + 48))(v59, v78);
      (*v80)(v56, v65);
      (*v81)(v60, v55);
      v34 = v93;
      v14 = v55;
      v18 = v60;
      if (!v32)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    if (v66 <= v34 + 1)
    {
      v36 = v34 + 1;
    }

    else
    {
      v36 = v66;
    }

    v37 = v36 - 1;
    v39 = v88;
    v38 = v89;
    v40 = v87;
    while (1)
    {
      v35 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        break;
      }

      if (v35 >= v66)
      {
        v32 = 0;
        v52 = 1;
        goto LABEL_13;
      }

      v32 = *(v67 + 8 * v35);
      ++v34;
      if (v32)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

double CROrderedTree.visitReferences(_:)(void *a1, void *a2)
{
  v5 = *v2;
  v4 = v2[1];
  v12[6] = v5;
  v12[7] = v4;
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[4];
  v9 = type metadata accessor for TreeNode(255, v6, v7, v8);

  v12[0] = v6;
  v12[1] = v9;
  v12[2] = v7;
  v12[3] = v8;
  v12[4] = &off_1F23C93F8;
  v12[5] = swift_getWitnessTable();
  v10 = type metadata accessor for CROrderedDictionary(0, v12);
  CROrderedDictionary.visitReferences(_:)(a1, v10);

  return result;
}

double CROrderedDictionary.visitReferences(_:)(void *a1, _OWORD *a2)
{
  v11 = *(v2 + 8);

  v5 = a2[2];
  v10[0] = a2[1];
  v10[1] = v5;
  v10[2] = a2[3];
  v6 = type metadata accessor for CRDictionary(0, v10);
  CRDictionary.visitReferences(_:)(a1, v6, v7, v8);

  return result;
}

void SharedTagged_2.visitReferences(_:)(void *a1, uint64_t a2)
{
  v13.n128_u64[0] = swift_getAssociatedTypeWitness();
  v13.n128_u64[1] = swift_getAssociatedConformanceWitness();
  v14 = &protocol witness table for Int;
  v15 = MEMORY[0x1E69E6540];
  v4 = type metadata accessor for CRExtensible(0, &v13);
  CRExtensible.rawValue.getter(v4, &v16);
  v6 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v6);
  v7 = v2[1];
  v12.n128_u64[0] = *v2;
  v8 = v12.n128_u64[0];
  v12.n128_u64[1] = v7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  Ref.init(id:)(&v12, &v13);
  v12 = v13;
  v11 = *(v5 + 16);
  sub_1ADDD86D8(v8, v7);
  v11(&v12, AssociatedTypeWitness, AssociatedConformanceWitness, v6, v5);
  sub_1ADDCC35C(v12.n128_i64[0], v12.n128_u64[1]);
}

__n128 Ref.init(id:)@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

void sub_1ADE1D29C(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7[2] = *a1;
  v4 = type metadata accessor for Ref(0, a2, a3, a4);
  WitnessTable = swift_getWitnessTable();
  Reference.identity.getter(v4, WitnessTable);
  v7[0] = v7[1];
  swift_beginAccess();
  sub_1ADE1D3FC(v7);
  v6 = v7[0];
  swift_endAccess();
  sub_1ADDCC35C(v6, *(&v6 + 1));
}

uint64_t sub_1ADE1D374(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 8) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

uint64_t Ref.id.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  *a1 = *v1;
  a1[1] = v3;
  return sub_1ADDD86D8(v2, v3);
}

unint64_t sub_1ADE1D3FC(uint64_t *a1)
{
  v3 = v1;
  v4 = *a1;
  v5 = a1[1];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *v1;
  v19 = v7;
  result = sub_1ADDDE7CC(v4, v5);
  v10 = v7[2];
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_11;
  }

  v2 = v9;
  if (v7[3] < v13)
  {
    sub_1ADE1D52C(v13, isUniquelyReferenced_nonNull_native);
    result = sub_1ADDDE7CC(v4, v5);
    if ((v2 & 1) == (v14 & 1))
    {
      goto LABEL_6;
    }

    result = sub_1AE23E27C();
    __break(1u);
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_6:
  *v3 = v7;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_7:
  v3 = result;
  sub_1ADDE8C98(result, v4, v5, 0, v7);
  sub_1ADDD86D8(v4, v5);
  result = v3;
LABEL_8:
  while (1)
  {
    v15 = v7[7];
    v16 = *(v15 + 8 * result);
    v12 = __OFADD__(v16, 1);
    v17 = v16 + 1;
    if (!v12)
    {
      break;
    }

LABEL_11:
    __break(1u);
LABEL_12:
    v18 = result;
    sub_1ADF6F1AC();
    result = v18;
    v7 = v19;
    *v3 = v19;
    if ((v2 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  *(v15 + 8 * result) = v17;
  return result;
}

void sub_1ADE1D52C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA090, &qword_1AE241870);
  v6 = sub_1AE23DCCC();
  v7 = v6;
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
    v14 = v6 + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(*(v5 + 56) + 8 * v20);
      v31 = *(*(v5 + 48) + 16 * v20);
      if ((v4 & 1) == 0)
      {
        sub_1ADDD86D8(v31, *(*(v5 + 48) + 16 * v20 + 8));
      }

      sub_1AE23E31C();
      sub_1AE23BECC();
      v22 = sub_1AE23E34C();
      v23 = -1 << *(v7 + 32);
      v24 = v22 & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        v16 = v31;
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

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
      v16 = v31;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 16 * v15) = v16;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
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

    if (v4)
    {
      v30 = 1 << *(v5 + 32);
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

    v3 = v2;
  }

  else
  {
  }

  *v3 = v7;
}

uint64_t sub_1ADE1D7CC()
{
  sub_1ADE42CB8(*(v0 + 40), *(v0 + 48));

  sub_1ADE73D6C(*(v0 + 64), *(v0 + 72), *(v0 + 80));

  return swift_deallocClassInstance();
}

uint64_t sub_1ADE1D820(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2;
    }
  }

  return result;
}

uint64_t sub_1ADE1D884(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 32);
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

double Capsule.root.getter(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1ADE1D940(a1, a2, a3, a4);
  Capsule.Ref.root.getter();

  return result;
}

void *sub_1ADE1D940(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4[4];
  if (v5)
  {
    v8 = v4;
    v6 = *v4;
    v7 = v8[1];
    type metadata accessor for Capsule.Ref(0, result[2], result[3], a4);
    v9 = swift_allocObject();
    v9[2] = v6;
    v9[3] = v7;
    v9[4] = v5;
    sub_1ADDD86D8(v6, v7);

    return v9;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t Capsule.Ref.root.getter()
{
  v2 = v1;
  v3 = type metadata accessor for PartiallyOrderedReferenceMap(0);
  v4 = v3 - 8;
  MEMORY[0x1EEE9AC00](v3);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v2[4];
  v8 = OBJC_IVAR____TtC9Coherence10CapsuleRef_references;
  swift_beginAccess();
  sub_1ADECD9E8(v7 + v8, v6, type metadata accessor for PartiallyOrderedReferenceMap);
  swift_beginAccess();
  v10 = v2[2];
  v9 = v2[3];
  v11 = *&v6[*(v4 + 28)];
  sub_1ADDD86D8(v10, v9);
  sub_1ADDDF7A8(v10, v9, v11, v20);
  sub_1ADDCC35C(v10, v9);
  result = sub_1ADDD872C(v6, type metadata accessor for PartiallyOrderedReferenceMap);
  v13 = v21;
  if (v21)
  {
    v15 = v23;
    v14 = v24;
    v16 = v22;
    v17 = v20[0];
    v18 = v20[1];

    result = sub_1ADDDC21C(v19, v18, v13, v16, v15, v14);
    if (v17)
    {
      (*(*v17 + 88))(v25, result);

      return swift_dynamicCast();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1ADE1DC00@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 280);
  v5 = sub_1AE23D7CC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - v7;
  v9 = *(v3 + 296);
  swift_beginAccess();
  (*(v6 + 16))(v8, v1 + v9, v5);
  v10 = *(v4 - 8);
  result = (*(v10 + 48))(v8, 1, v4);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    a1[3] = v4;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
    return (*(v10 + 32))(boxed_opaque_existential_1, v8, v4);
  }

  return result;
}

void Capsule.callAsFunction<A>(_:)(void (*a1)(void *), uint64_t a2, uint64_t a3, __n128 a4)
{
  Capsule.mutate<A>(_:)(a1, a2, a3, a4);
}

{
  Capsule.mutate<A>(_:)(a1, a2, a3, a4);
}

uint64_t Capsule.Ref.subscript.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = *(*v2 + 80);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v11[-v7];
  Capsule.Ref.root.getter();
  v9 = swift_readAtKeyPath();
  (*(*(*(v4 + *MEMORY[0x1E69E6CE8] + 8) - 8) + 16))(a2);
  v9(v11, 0);
  return (*(v6 + 8))(v8, v5);
}

uint64_t CROrderedTree.children(of:)(uint64_t a1, void *a2)
{
  v14 = a1;
  v3 = a2[2];
  v4 = sub_1AE23D7CC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - v6;
  v8 = type metadata accessor for TreeNode(0, v3, a2[3], a2[4]);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v14 - v11;
  (*(v5 + 16))(v7, v14, v4, v10);
  sub_1ADE1E114(v7, v3, v12);
  sub_1AE23D11C();
  swift_getWitnessTable();
  sub_1AE23CB7C();
  (*(v9 + 8))(v12, v8);
  result = v15;
  if (!v15)
  {
    return sub_1AE23D05C();
  }

  return result;
}

uint64_t sub_1ADE1E114@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = sub_1AE23D7CC();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v12 - v9;
  (*(v7 + 16))(&v12 - v9, a1, v6, v8);
  sub_1ADE12910(v10, a2, a3);
  return (*(v7 + 8))(a1, v6);
}

uint64_t sub_1ADE1E20C()
{
  sub_1ADE1E264();

  return swift_deallocClassInstance();
}

uint64_t sub_1ADE1E264()
{
  v1 = v0;
  if (qword_1ED96B308 != -1)
  {
    swift_once();
  }

  v2 = v0 + OBJC_IVAR____TtC9Coherence10CapsuleRef_version;
  swift_beginAccess();
  v3 = *(v2 + 8);
  v7[0] = MEMORY[0x1E69E7CC8];
  v7[1] = v3;

  sub_1ADDF8100(v7);

  sub_1ADE73DF4(v0 + OBJC_IVAR____TtC9Coherence10CapsuleRef_references);

  v4 = OBJC_IVAR____TtC9Coherence10CapsuleRef_versionUUID;
  v5 = sub_1AE23BFEC();
  (*(*(v5 - 8) + 8))(v1 + v4, v5);

  return v1;
}

uint64_t SharedTagged_2.tagged1.getter@<X0>(unint64_t *a2@<X8>)
{
  v3 = v2;
  v12.n128_u64[0] = swift_getAssociatedTypeWitness();
  v12.n128_u64[1] = swift_getAssociatedConformanceWitness();
  v13 = &protocol witness table for Int;
  v14 = MEMORY[0x1E69E6540];
  v5 = type metadata accessor for CRExtensible(0, &v12);
  result = CRExtensible.rawValue.getter(v5, &v12);
  if (v12.n128_u64[0])
  {
    v7 = 0;
    v8 = 0xF000000000000000;
  }

  else
  {
    v9 = *v2;
    v10 = v3[1];
    v11.n128_u64[0] = v9;
    v11.n128_u64[1] = v10;
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    Ref.init(id:)(&v11, &v12);
    v8 = v12.n128_u64[1];
    v7 = v12.n128_u64[0];
    result = sub_1ADDD86D8(v9, v10);
  }

  *a2 = v7;
  a2[1] = v8;
  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

void Ref.subscript.getter(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a1 + 4);
  v10 = *v4;
  v9 = v4[1];
  v11 = a1[1];
  v18 = *a1;
  v19 = v11;
  v20 = v8;
  v16 = v10;
  v17 = v9;
  sub_1ADDD86D8(v10, v9);
  v13 = type metadata accessor for Capsule(0, a3, a4, v12);
  Capsule.subscript.getter(&v16, v13, *(a2 + 16), *(a2 + 24));
  v14 = v16;
  v15 = v17;

  sub_1ADDCC35C(v14, v15);
}

void sub_1ADE1E598(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *, uint64_t, uint64_t))
{
  if (*(v5 + 32))
  {
    v9 = a1[1];
    v12 = *a1;
    v13 = v9;
    sub_1ADDD86D8(v12, v9);
    a5(&v12, a3, a4);
    v10 = v12;
    v11 = v13;

    sub_1ADDCC35C(v10, v11);
  }

  else
  {
    __break(1u);
  }
}

void Capsule.subscript.getter(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1ADE1E598(a1, a2, a3, a4, sub_1ADE1E638);
}

{
  sub_1ADE1E598(a1, a2, a3, a4, sub_1ADEAE800);
}

uint64_t sub_1ADE1E638(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v8 = type metadata accessor for PartiallyOrderedReferenceMap(0);
  v9 = v8 - 8;
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v29[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;
  v12 = a1[1];
  v14 = OBJC_IVAR____TtC9Coherence10CapsuleRef_references;
  swift_beginAccess();
  sub_1ADECD9E8(v4 + v14, v11, type metadata accessor for PartiallyOrderedReferenceMap);
  v36 = v13;
  v37 = v12;
  v16 = type metadata accessor for Ref(0, a2, a3, v15);
  WitnessTable = swift_getWitnessTable();
  Reference.identity.getter(v16, WitnessTable);
  v18 = v34;
  v19 = v35;
  sub_1ADDDF7A8(v34, v35, *&v11[*(v9 + 28)], v29);
  sub_1ADDCC35C(v18, v19);
  result = sub_1ADDD872C(v11, type metadata accessor for PartiallyOrderedReferenceMap);
  v21 = v30;
  if (v30)
  {
    v23 = v32;
    v22 = v33;
    v24 = v31;
    v25 = v29[0];
    v26 = v29[1];

    result = sub_1ADDDC21C(v27, v26, v21, v24, v23, v22);
    if (v25)
    {
      (*(*v25 + 88))(v38, result);

      return swift_dynamicCast();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t SharedTagged_2.tagged2.getter@<X0>(unint64_t *a2@<X8>)
{
  v3 = v2;
  v12.n128_u64[0] = swift_getAssociatedTypeWitness();
  v12.n128_u64[1] = swift_getAssociatedConformanceWitness();
  v13 = &protocol witness table for Int;
  v14 = MEMORY[0x1E69E6540];
  v5 = type metadata accessor for CRExtensible(0, &v12);
  result = CRExtensible.rawValue.getter(v5, &v12);
  if (v12.n128_u64[0] == 1)
  {
    v7 = *v2;
    v8 = v3[1];
    v11.n128_u64[0] = v7;
    v11.n128_u64[1] = v8;
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    Ref.init(id:)(&v11, &v12);
    v10 = v12.n128_u64[1];
    v9 = v12.n128_u64[0];
    result = sub_1ADDD86D8(v7, v8);
  }

  else
  {
    v9 = 0;
    v10 = 0xF000000000000000;
  }

  *a2 = v9;
  a2[1] = v10;
  return result;
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x1E69E5420], MEMORY[0x1E69E52A8]);
}

uint64_t sub_1ADE1E9F4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1AE23CD0C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1ADE1EA34()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1ADE1EA7C()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1ADE1EACC()
{

  if (v0[7])
  {
  }

  if (v0[9])
  {
  }

  if (v0[11])
  {
  }

  if (v0[13])
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 120, 7);
}

uint64_t sub_1ADE1EBE4()
{
  sub_1ADDCC35C(*(v0 + 16), *(v0 + 24));

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1ADE1EC4C()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1ADE1EC94()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1ADE1ECD4()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1ADE1ED2C()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}