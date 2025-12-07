uint64_t static CRContext.uniqueContextUnchecked(for:encryptionDelegate:)(uint64_t a1, uint64_t a2)
{
  v4 = v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5B9DC0, &qword_1AE240B90);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v15 - v8;
  v10 = sub_1AE23BDDC();
  v11 = (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  if (qword_1ED96B308 != -1)
  {
    v11 = swift_once();
  }

  MEMORY[0x1EEE9AC00](v11);
  v15[-4] = v2;
  v15[-3] = a1;
  v15[-2] = a2;
  v15[-1] = v9;
  v13 = v12;
  sub_1AE23D6AC();

  if (!v3)
  {
    v4 = v15[1];
  }

  sub_1ADDCEDE0(v9, &qword_1EB5B9DC0, &qword_1AE240B90);
  return v4;
}

void static CRContext.uniqueContextUnchecked(for:encryptionDelegate:temporaryDirectory:)(uint64_t a1)
{
  if (qword_1ED96B308 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  MEMORY[0x1EEE9AC00](a1);
  v2 = v1;
  sub_1AE23D6AC();
}

uint64_t sub_1ADE3FB94@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  if (qword_1ED966B70 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v9 = off_1ED9664C8;
  if (!*(off_1ED9664C8 + 2) || (v10 = sub_1ADDFF050(a1), (v11 & 1) == 0))
  {
    v14 = 0;
    v15 = 1;
    sub_1ADDCEDE0(&v14, &qword_1EB5B9E90, &qword_1AE240ED0);
    swift_endAccess();
LABEL_8:
    result = sub_1ADE41744(a1, a2, a3);
    if (v4)
    {
      return result;
    }

    goto LABEL_9;
  }

  sub_1ADE42CF8(v9[7] + 8 * v10, &v14);
  v15 = 0;
  Strong = swift_unknownObjectWeakLoadStrong();
  sub_1ADDCEDE0(&v14, &qword_1EB5B9E90, &qword_1AE240ED0);
  swift_endAccess();
  if (!Strong)
  {
    goto LABEL_8;
  }

  result = Strong;
LABEL_9:
  *a4 = result;
  return result;
}

uint64_t static CRContext.currentUniqueContextUnchecked(for:)(uint64_t a1)
{
  if (qword_1ED96B308 != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  MEMORY[0x1EEE9AC00](a1);
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5B9DC8, &qword_1AE240B98);
  sub_1AE23D6AC();

  return v5;
}

uint64_t sub_1ADE3FDC4@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  if (qword_1ED966B70 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = off_1ED9664C8;
  if (*(off_1ED9664C8 + 2) && (v5 = sub_1ADDFF050(a1), (v6 & 1) != 0))
  {
    sub_1ADE42CF8(v4[7] + 8 * v5, &v9);
    v10 = 0;
    Strong = swift_unknownObjectWeakLoadStrong();
    sub_1ADDCEDE0(&v9, &qword_1EB5B9E90, &qword_1AE240ED0);
    result = swift_endAccess();
  }

  else
  {
    v9 = 0;
    v10 = 1;
    sub_1ADDCEDE0(&v9, &qword_1EB5B9E90, &qword_1AE240ED0);
    result = swift_endAccess();
    Strong = 0;
  }

  *a2 = Strong;
  return result;
}

Swift::Void __swiftcall CRContext.close()()
{
  if (qword_1ED96B308 != -1)
  {
    swift_once();
  }

  v1 = *(qword_1ED96F2F8 + 40);
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_1ADE4145C;
  *(v3 + 24) = v2;
  v8[4] = sub_1ADDF70F4;
  v8[5] = v3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 1107296256;
  v8[2] = sub_1ADDF70CC;
  v8[3] = &block_descriptor;
  v4 = _Block_copy(v8);
  v5 = v1;
  v6 = v0;

  dispatch_sync(v5, v4);

  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }
}

uint64_t sub_1ADE4006C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5B9DC0, &qword_1AE240B90);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v11 - v3;
  v5 = (a1 + OBJC_IVAR___CRContext_crdtDatabase);
  v6 = *(a1 + OBJC_IVAR___CRContext_crdtDatabase + 8);
  ObjectType = swift_getObjectType();
  v8 = *(v6 + 48);
  swift_unknownObjectRetain();
  v8(ObjectType, v6);
  swift_unknownObjectRelease();
  v9 = sub_1AE23BDDC();
  (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
  *v5 = sub_1ADDCFD3C(v4);
  v5[1] = &off_1F23C69F0;
  return swift_unknownObjectRelease();
}

id sub_1ADE40488()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1ADE404C0()
{
  result = sub_1ADE404E4();
  byte_1ED969FC8 = result & 1;
  return result;
}

uint64_t sub_1ADE404E4()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    sub_1AE23CD0C();

    sub_1AE23CD7C();
  }

  if (sub_1AE23CE4C())
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_1AE23CE4C();
  }

  return v2 & 1;
}

uint64_t sub_1ADE405F4()
{
  v0 = sub_1AE23CD0C();
  v1 = MEMORY[0x1B26FB700](v0);

  return v1;
}

uint64_t sub_1ADE40630(uint64_t a1)
{
  sub_1AE23CD0C();
  sub_1AE23CDAC();
}

uint64_t sub_1ADE40684(uint64_t a1, id *a2)
{
  result = sub_1AE23CCEC();
  *a2 = 0;
  return result;
}

uint64_t sub_1ADE406FC(uint64_t a1, id *a2)
{
  v3 = sub_1AE23CCFC();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_1ADE4077C@<X0>(uint64_t *a2@<X8>)
{
  sub_1AE23CD0C();
  v3 = sub_1AE23CCDC();

  *a2 = v3;
  return result;
}

uint64_t sub_1ADE407C0(void *a1, uint64_t *a2)
{
  v2 = sub_1AE23CD0C();
  v4 = v3;
  if (v2 == sub_1AE23CD0C() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_1AE23E00C();
  }

  return v7 & 1;
}

uint64_t sub_1ADE40848(uint64_t a1)
{
  v2 = sub_1ADDD322C(&qword_1EB5B8BE0, type metadata accessor for Key, &unk_1AE240E70);
  v3 = sub_1ADDD322C(&qword_1EB5B9E68, type metadata accessor for Key, &unk_1AE240DC4);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1ADE40904(uint64_t a1)
{
  v2 = sub_1ADDD322C(&unk_1ED966B50, type metadata accessor for URLResourceKey, &unk_1AE2411E4);
  v3 = sub_1ADDD322C(&unk_1EB5B9F08, type metadata accessor for URLResourceKey, &unk_1AE241138);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1ADE409C0@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_1AE23CCDC();

  *a2 = v3;
  return result;
}

uint64_t sub_1ADE40A08(uint64_t a1)
{
  v2 = sub_1ADDD322C(&unk_1ED9664B0, type metadata accessor for FileAttributeKey, &unk_1AE241228);
  v3 = sub_1ADDD322C(&qword_1EB5B9F18, type metadata accessor for FileAttributeKey, &unk_1AE241024);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

void sub_1ADE40AC4(uint64_t a1)
{
  v2 = a1;
  v8[1] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v7 = swift_slowAlloc();
      sub_1ADE40FB8(v7, v4, v2);
      MEMORY[0x1B26FDA50](v7, -1, -1);
      return;
    }
  }

  MEMORY[0x1EEE9AC00](a1);
  v6 = v8 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0);
  bzero(v6, v5);
  sub_1ADE40C24(v6, v4, v2);
  if (v1)
  {
    swift_willThrow();
  }
}

void sub_1ADE40C24(unint64_t *a1, uint64_t a2, void *a3)
{
  v35 = a2;
  v36 = a1;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5B9E98, &qword_1AE240ED8);
  MEMORY[0x1EEE9AC00](v45);
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v44 = &v35 - v7;
  v8 = sub_1AE23BDDC();
  v10.n128_f64[0] = MEMORY[0x1EEE9AC00](v8);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = 0;
  v46 = a3;
  v16 = a3[8];
  v15 = a3 + 8;
  v14 = v16;
  v17 = 1 << *(v15 - 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & v14;
  v37 = 0;
  v38 = (v17 + 63) >> 6;
  v42 = v15;
  v43 = v9;
  v40 = (v9 + 8);
  v41 = v9 + 16;
  while (v19)
  {
    v20 = __clz(__rbit64(v19));
    v47 = (v19 - 1) & v19;
LABEL_11:
    v23 = v20 | (v13 << 6);
    v24 = v46;
    v25 = *(v43 + 16);
    v25(v12, v46[6] + *(v43 + 72) * v23, v8, v10);
    v26 = v24[7];
    v39 = v23;
    sub_1ADE42CF8(v26 + 8 * v23, v48);
    v27 = v44;
    (v25)(v44, v12, v8);
    v28 = v45;
    sub_1ADE42CF8(v48, v27 + *(v45 + 48));
    v29 = v8;
    sub_1ADDCEE40(v27, v5, &qword_1EB5B9E98, &qword_1AE240ED8);
    v30 = *(v28 + 48);
    Strong = swift_unknownObjectWeakLoadStrong();
    sub_1ADDCEDE0(v27, &qword_1EB5B9E98, &qword_1AE240ED8);
    sub_1ADE42D30(&v5[v30]);
    if (Strong)
    {

      v33 = *v40;
      (*v40)(v5, v8);
      sub_1ADE42D30(v48);
      v33(v12, v8);
      *(v36 + ((v39 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v39;
      v34 = __OFADD__(v37++, 1);
      v15 = v42;
      v19 = v47;
      if (v34)
      {
        __break(1u);
LABEL_16:
        sub_1ADE41030(v36, v35, v37, v46);
        return;
      }
    }

    else
    {
      v32 = *v40;
      (*v40)(v5, v29);
      sub_1ADE42D30(v48);
      v32(v12, v29);
      v8 = v29;
      v15 = v42;
      v19 = v47;
    }
  }

  v21 = v13;
  while (1)
  {
    v13 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v13 >= v38)
    {
      goto LABEL_16;
    }

    v22 = v15[v13];
    ++v21;
    if (v22)
    {
      v20 = __clz(__rbit64(v22));
      v47 = (v22 - 1) & v22;
      goto LABEL_11;
    }
  }

  __break(1u);
}

void *sub_1ADE40FB8(void *result, uint64_t a2, void *a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v4 = result;
      v5 = a2;
      bzero(result, 8 * a2);
      result = v4;
      a2 = v5;
    }

    sub_1ADE40C24(result, a2, a3);
    v7 = v6;

    return v7;
  }

  return result;
}

uint64_t sub_1ADE41030(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v44 = sub_1AE23BDDC();
  v42 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v9 = v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v39 = v36 - v11;
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5B9EA0, &qword_1AE240EE0);
  result = sub_1AE23DCDC();
  v13 = result;
  if (a2 < 1)
  {
    v14 = 0;
  }

  else
  {
    v14 = *a1;
  }

  v15 = 0;
  v36[1] = v42 + 16;
  v37 = result;
  v43 = v42 + 32;
  v16 = result + 64;
  v38 = a1;
  v36[0] = a4;
  v17 = v44;
  while (v14)
  {
    v18 = v9;
    v19 = __clz(__rbit64(v14));
    v40 = (v14 - 1) & v14;
LABEL_16:
    v22 = v19 | (v15 << 6);
    v23 = a4[6];
    v24 = v42;
    v41 = *(v42 + 72);
    v25 = v39;
    (*(v42 + 16))(v39, v23 + v41 * v22, v17);
    sub_1ADE42CF8(a4[7] + 8 * v22, v46);
    v26 = *(v24 + 32);
    v9 = v18;
    v26(v18, v25, v17);
    sub_1ADE42D60(v46, v45);
    v13 = v37;
    sub_1ADDD322C(&unk_1ED969ED8, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
    result = sub_1AE23CBBC();
    v27 = -1 << *(v13 + 32);
    v28 = result & ~v27;
    v29 = v28 >> 6;
    if (((-1 << v28) & ~*(v16 + 8 * (v28 >> 6))) == 0)
    {
      v31 = 0;
      v32 = (63 - v27) >> 6;
      a1 = v38;
      while (++v29 != v32 || (v31 & 1) == 0)
      {
        v33 = v29 == v32;
        if (v29 == v32)
        {
          v29 = 0;
        }

        v31 |= v33;
        v34 = *(v16 + 8 * v29);
        if (v34 != -1)
        {
          v30 = __clz(__rbit64(~v34)) + (v29 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v30 = __clz(__rbit64((-1 << v28) & ~*(v16 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
    a1 = v38;
LABEL_26:
    *(v16 + ((v30 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v30;
    v26((*(v13 + 48) + v30 * v41), v9, v44);
    result = sub_1ADE42D60(v45, *(v13 + 56) + 8 * v30);
    ++*(v13 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v36[0];
    v14 = v40;
    if (!a3)
    {
      return v13;
    }
  }

  v20 = v15;
  while (1)
  {
    v15 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v15 >= a2)
    {
      return v13;
    }

    v21 = a1[v15];
    ++v20;
    if (v21)
    {
      v18 = v9;
      v19 = __clz(__rbit64(v21));
      v40 = (v21 - 1) & v21;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

unint64_t sub_1ADE41468(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5B9DD0;
  if (!qword_1EB5B9DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5B9DD0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CRContext.UniqueContextError(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for CRContext.UniqueContextError(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

__n128 __swift_memcpy48_1(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_1ADE415EC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 48))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1ADE4160C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 48) = v3;
  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1ADE41744(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5B9DC0, &qword_1AE240B90);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v25[-v7];
  v9 = sub_1AE23BDDC();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v25[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v25[-v15];
  v17 = *(v10 + 16);
  v17(&v25[-v15], a1, v9, v14);
  sub_1ADDCEE40(a2, v27, &qword_1EB5B9DB0, &qword_1AE240B80);
  sub_1ADDCEE40(a3, v8, &qword_1EB5B9DC0, &qword_1AE240B90);
  v18 = v28;
  sub_1ADDFE5A4(v16, v27, v8);
  v20 = v19;
  if (!v18)
  {
    v28 = v17;
    if (qword_1ED966B70 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    if (*(off_1ED9664C8 + 2) > 0xAuLL)
    {

      sub_1ADE40AC4(v21);
      v23 = v22;

      off_1ED9664C8 = v23;
    }

    v28(v12, a1, v9);
    swift_unknownObjectWeakInit();
    v26[8] = 0;
    swift_beginAccess();
    sub_1AE1D17FC(v26, v12);
    swift_endAccess();
  }

  return v20;
}

id sub_1ADE419F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18[0] = a2;
  if (qword_1ED96B308 != -1)
  {
    swift_once();
  }

  v4 = a1 + OBJC_IVAR____TtC9Coherence18ObjCRenameSequence_renameSequence;
  swift_beginAccess();
  v5 = *(v4 + 8);
  v6 = *(v4 + 16);
  v7 = a1 + OBJC_IVAR____TtC9Coherence18ObjCRenameSequence_renameAddedBySequence;
  v8 = swift_beginAccess();
  v18[1] = v18;
  v9 = *(v7 + 8);
  v10 = *(v7 + 16);
  MEMORY[0x1EEE9AC00](v8);

  sub_1ADE42C78(v5, v6);

  sub_1ADE42C78(v9, v10);
  sub_1AE23D6AC();

  sub_1ADE42CB8(v9, v10);

  sub_1ADE42CB8(v5, v6);
  v11 = v20;
  v12 = v21;
  v13 = v22;
  v14 = type metadata accessor for ObjCRenames();
  v15 = objc_allocWithZone(v14);
  v16 = &v15[OBJC_IVAR____TtC9Coherence11ObjCRenames_renames];
  *v16 = v11;
  v16[8] = v12;
  *(v16 + 2) = v13;
  v19.receiver = v15;
  v19.super_class = v14;
  return objc_msgSendSuper2(&v19, sel_init);
}

void sub_1ADE41BE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v46 = sub_1AE23C88C();
  v45 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v43 = v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_1AE23C8CC();
  v42 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v41 = v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5B9E70, &unk_1AE240EC0);
  v39 = *(v8 - 8);
  v9 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v38 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = v38 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = v38 - v18;
  if (qword_1ED96B308 != -1)
  {
    swift_once();
  }

  v40 = qword_1ED96F2F8;
  v20 = OBJC_IVAR____TtC9Coherence11ObjCVersion_version;
  swift_beginAccess();
  v47 = *(a1 + v20);
  v21 = OBJC_IVAR____TtC9Coherence11ObjCVersion_version;
  swift_beginAccess();
  v48 = *(a2 + v21);
  v22 = OBJC_IVAR____TtC9Coherence11ObjCReplica_uuid;
  swift_beginAccess();
  v23 = sub_1AE23BFEC();
  (*(*(v23 - 8) + 16))(v19, a3 + v22, v23);
  v24 = *(a3 + OBJC_IVAR____TtC9Coherence11ObjCReplica_index);
  v25 = type metadata accessor for Replica(0);
  *&v19[*(v25 + 20)] = v24;
  v26 = *(*(v25 - 8) + 56);
  v26(v19, 0, 1, v25);
  v26(v16, 1, 1, v25);
  v27 = v16;
  if (*(*(&v47 + 1) + 16) || *(v48.n128_u64[1] + 16))
  {
    v28 = v40;
    v38[1] = *(v40 + 40);
    v38[0] = *(&v47 + 1);
    sub_1ADDCEE40(v19, v13, &unk_1EB5B9E70, &unk_1AE240EC0);
    sub_1ADDCEE40(v27, v10, &unk_1EB5B9E70, &unk_1AE240EC0);
    v29 = *(v39 + 80);
    v30 = (v29 + 56) & ~v29;
    v39 = v27;
    v31 = (v9 + v29 + v30) & ~v29;
    v32 = swift_allocObject();
    v33 = v48;
    *(v32 + 16) = v47;
    *(v32 + 32) = v33;
    *(v32 + 48) = v28;
    sub_1ADDD2198(v13, v32 + v30, &unk_1EB5B9E70, &unk_1AE240EC0);
    sub_1ADDD2198(v10, v32 + v31, &unk_1EB5B9E70, &unk_1AE240EC0);
    aBlock[4] = sub_1ADE4315C;
    aBlock[5] = v32;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1ADDD2200;
    aBlock[3] = &block_descriptor_78;
    v34 = _Block_copy(aBlock);
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();

    v35 = v41;
    sub_1AE23C8AC();
    v49 = MEMORY[0x1E69E7CC0];
    sub_1ADDD322C(&qword_1ED96AC40, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5B9E80, &qword_1AE2521E0);
    sub_1ADDCF010(&qword_1ED96AA50, &unk_1EB5B9E80, &qword_1AE2521E0);
    v36 = v43;
    v37 = v46;
    sub_1AE23D8DC();
    MEMORY[0x1B26FBF60](0, v35, v36, v34);
    _Block_release(v34);

    (*(v45 + 8))(v36, v37);
    (*(v42 + 8))(v35, v44);
    sub_1ADDCEDE0(v39, &unk_1EB5B9E70, &unk_1AE240EC0);
    sub_1ADDCEDE0(v19, &unk_1EB5B9E70, &unk_1AE240EC0);
  }

  else
  {
    sub_1ADDCEDE0(v16, &unk_1EB5B9E70, &unk_1AE240EC0);
    sub_1ADDCEDE0(v19, &unk_1EB5B9E70, &unk_1AE240EC0);
  }
}

void sub_1ADE422E4(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  v52 = a4;
  v51 = sub_1AE23C88C();
  v50 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v48 = v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_1AE23C8CC();
  v47 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v46 = v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5B9E70, &unk_1AE240EC0);
  v42 = *(v9 - 8);
  v10 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v44 = v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v43 = v41 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v15 = v41 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = v41 - v17;
  if (qword_1ED96B308 != -1)
  {
    swift_once();
  }

  v45 = qword_1ED96F2F8;
  v19 = OBJC_IVAR____TtC9Coherence11ObjCVersion_version;
  swift_beginAccess();
  v55 = *(a1 + v19);
  v20 = OBJC_IVAR____TtC9Coherence11ObjCVersion_version;
  swift_beginAccess();
  v54 = *(a2 + v20);
  v21 = OBJC_IVAR____TtC9Coherence11ObjCReplica_uuid;
  swift_beginAccess();
  v22 = sub_1AE23BFEC();
  v23 = *(*(v22 - 8) + 16);
  v23(v18, a3 + v21, v22);
  v24 = *(a3 + OBJC_IVAR____TtC9Coherence11ObjCReplica_index);
  v25 = type metadata accessor for Replica(0);
  *&v18[*(v25 + 20)] = v24;
  v26 = *(*(v25 - 8) + 56);
  v53 = v18;
  v26();
  v27 = OBJC_IVAR____TtC9Coherence11ObjCReplica_uuid;
  v28 = v52;
  swift_beginAccess();
  v23(v15, v28 + v27, v22);
  *&v15[*(v25 + 20)] = *(v28 + OBJC_IVAR____TtC9Coherence11ObjCReplica_index);
  (v26)(v15, 0, 1, v25);
  if (*(*(&v55 + 1) + 16) || *(*(&v54 + 1) + 16))
  {
    v29 = v45;
    v41[1] = *(v45 + 40);
    v41[0] = *(&v55 + 1);
    v30 = v43;
    sub_1ADDCEE40(v53, v43, &unk_1EB5B9E70, &unk_1AE240EC0);
    v31 = v44;
    sub_1ADDCEE40(v15, v44, &unk_1EB5B9E70, &unk_1AE240EC0);
    v32 = *(v42 + 80);
    v33 = (v32 + 56) & ~v32;
    v52 = v15;
    v34 = (v10 + v32 + v33) & ~v32;
    v35 = swift_allocObject();
    v36 = v54;
    *(v35 + 16) = v55;
    *(v35 + 32) = v36;
    *(v35 + 48) = v29;
    sub_1ADDD2198(v30, v35 + v33, &unk_1EB5B9E70, &unk_1AE240EC0);
    sub_1ADDD2198(v31, v35 + v34, &unk_1EB5B9E70, &unk_1AE240EC0);
    aBlock[4] = sub_1ADE42B98;
    aBlock[5] = v35;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1ADDD2200;
    aBlock[3] = &block_descriptor_71;
    v37 = _Block_copy(aBlock);
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();

    v38 = v46;
    sub_1AE23C8AC();
    v56 = MEMORY[0x1E69E7CC0];
    sub_1ADDD322C(&qword_1ED96AC40, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5B9E80, &qword_1AE2521E0);
    sub_1ADDCF010(&qword_1ED96AA50, &unk_1EB5B9E80, &qword_1AE2521E0);
    v39 = v48;
    v40 = v51;
    sub_1AE23D8DC();
    MEMORY[0x1B26FBF60](0, v38, v39, v37);
    _Block_release(v37);

    (*(v50 + 8))(v39, v40);
    (*(v47 + 8))(v38, v49);
    sub_1ADDCEDE0(v52, &unk_1EB5B9E70, &unk_1AE240EC0);
    sub_1ADDCEDE0(v53, &unk_1EB5B9E70, &unk_1AE240EC0);
  }

  else
  {
    sub_1ADDCEDE0(v15, &unk_1EB5B9E70, &unk_1AE240EC0);
    sub_1ADDCEDE0(v53, &unk_1EB5B9E70, &unk_1AE240EC0);
  }
}

uint64_t sub_1ADE42A7C(uint64_t a1, void (*a2)(void))
{
  if (qword_1ED96B308 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_1AE220BC8();
  a2();

  swift_beginAccess();
  sub_1AE220BC8();
  a2();
}

void sub_1ADE42B9C()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5B9E70, &unk_1AE240EC0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 56) & ~v2;
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = v0[5];
  v8 = v0[6];
  v9 = v0 + ((*(v1 + 64) + v2 + v3) & ~v2);

  sub_1ADE75D9C(v4, v5, v6, v7, v8, v0 + v3, v9);
}

double sub_1ADE42C78(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
  }

  return result;
}

uint64_t sub_1ADE42CB8(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_1ADE42D98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5B9EB0;
  if (!qword_1EB5B9EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5B9EB0);
  }

  return result;
}

unint64_t sub_1ADE42DEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ED967170;
  if (!qword_1ED967170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED967170);
  }

  return result;
}

unint64_t sub_1ADE42E40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5B94F0;
  if (!qword_1EB5B94F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5B94F0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CRCounter.MutatingAction(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for CRCounter.MutatingAction(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 8) = v3;
  return result;
}

uint64_t sub_1ADE42EF8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1ADE42F18(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
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

  *(result + 4) = v3;
  return result;
}

uint64_t sub_1ADE43178()
{
  sqlite3_snapshot_free(*(v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_1ADE431D4()
{
  v0 = sub_1AE23C78C();
  __swift_allocate_value_buffer(v0, qword_1ED96F208);
  __swift_project_value_buffer(v0, qword_1ED96F208);
  return sub_1AE23C77C();
}

uint64_t sub_1ADE43248()
{
  (*(*v0 + 280))();

  return swift_deallocClassInstance();
}

void sub_1ADE432BC()
{
  if ((*(v0 + 40) & 1) == 0)
  {
    *(v0 + 40) = 1;
    (*(*v0 + 384))();
    if (sqlite3_close(*(v0 + 32)))
    {
      sub_1AE23DA2C();

      v1 = sub_1AE23DD9C();
      MEMORY[0x1B26FB670](v1);

      MEMORY[0x1B26FB670](46, 0xE100000000000000);
      sub_1AE23DC5C();
      __break(1u);
    }
  }
}

uint64_t sub_1ADE433DC(uint64_t a1, uint64_t a2)
{
  result = sub_1ADDD1E30(0xD000000000000014, 0x80000001AE25FA20);
  if (!v3)
  {
    v7 = result;
    if (sqlite3_step(result) != 100)
    {
      return sqlite3_finalize(v7);
    }

    result = sqlite3_column_int(v7, 0);
    v10 = result / 0x7FFF;
    v11 = result % 0x7FFF;
    if (__OFSUB__(result, 0x7FFF * (result / 0x7FFF)))
    {
      __break(1u);
    }

    else if (result >= -1073741822)
    {
      if (result <= 1073709055)
      {
        *(v2 + 64) = v10;
        *(v2 + 66) = 0;
        if (a1)
        {
          v12 = v10;
          v13 = *(a1 + 16);
          v14 = (a1 + 32);
          while (v13)
          {
            v15 = *v14++;
            --v13;
            if (v15 == (result / 0x7FFF))
            {
              goto LABEL_10;
            }
          }

          v19 = 2;
          goto LABEL_19;
        }

LABEL_10:
        if (a2)
        {
          if (v11 >= -32768)
          {
            if (v11 < 0x8000)
            {
              v12 = v11;
              v16 = *(a2 + 16);
              v17 = (a2 + 32);
              while (v16)
              {
                v18 = *v17++;
                --v16;
                if (v18 == (result % 0x7FFF))
                {
                  return sqlite3_finalize(v7);
                }
              }

              v19 = 1;
LABEL_19:
              sub_1ADE42E40(result, v8, v9);
              swift_allocError();
              *v20 = v12;
              *(v20 + 8) = 0;
              *(v20 + 16) = v19;
              swift_willThrow();
              return sqlite3_finalize(v7);
            }

LABEL_25:
            __break(1u);
            return result;
          }

LABEL_24:
          __break(1u);
          goto LABEL_25;
        }

        return sqlite3_finalize(v7);
      }

LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    __break(1u);
    goto LABEL_23;
  }

  return result;
}

const char *sub_1ADE43570(const char *result, int a2)
{
  v3 = *(v2 + 64);
  if (*(v2 + 66) == 1)
  {
    if (result > 0)
    {
      goto LABEL_9;
    }
  }

  else if (v3 < result)
  {
    goto LABEL_9;
  }

  v4 = *(v2 + 68);
  if (*(v2 + 70))
  {
    v4 = 0;
  }

  if ((a2 & 0x10000) != 0)
  {
    if ((v4 & 0x80000000) == 0)
    {
      return result;
    }
  }

  else if (v4 >= a2)
  {
    return result;
  }

LABEL_9:
  v5 = *(v2 + 68);
  if (*(v2 + 70))
  {
    v5 = 0;
  }

  if ((a2 & 0x10000) != 0)
  {
    v6 = 0;
  }

  else
  {
    v6 = a2;
  }

  if (v6 > v5)
  {
    v5 = v6;
  }

  if (*(v2 + 66))
  {
    v3 = 0;
  }

  if (v3 <= result)
  {
    LOWORD(v3) = result;
  }

  return sub_1ADE43620(v3, v5);
}

const char *sub_1ADE43620(int a1, int a2)
{
  sub_1AE23DA2C();

  v6 = sub_1AE23DD9C();
  MEMORY[0x1B26FB670](v6);

  MEMORY[0x1B26FB670](59, 0xE100000000000000);
  v7 = sub_1ADDD1E30(0xD000000000000016, 0x80000001AE25F9E0);

  if (!v3)
  {
    if (sqlite3_step(v7) == 101)
    {
      *(v2 + 64) = a1;
      *(v2 + 66) = BYTE2(a1) & 1;
      *(v2 + 68) = a2;
      *(v2 + 70) = BYTE2(a2) & 1;
    }

    else
    {
      sub_1AE23DA2C();

      result = sqlite3_errmsg(*(v2 + 32));
      if (!result)
      {
        __break(1u);
        return result;
      }

      v9 = sub_1AE23CDEC();
      MEMORY[0x1B26FB670](v9);

      v10 = MEMORY[0x1B26FB670](46, 0xE100000000000000);
      sub_1ADE47024(v10, v11, v12);
      swift_allocError();
      *v13 = 0xD000000000000014;
      *(v13 + 8) = 0x80000001AE25FA00;
      *(v13 + 16) = 0;
      swift_willThrow();
    }

    return sqlite3_finalize(v7);
  }

  return result;
}

char *sub_1ADE43808()
{
  result = sub_1ADDD1E30(0xD00000000000001ELL, 0x80000001AE25F9A0);
  if (!v1)
  {
    v3 = result;
    do
    {
      v4 = sqlite3_step(v3);
    }

    while (v4 == 100);
    if (v4 != 101)
    {
      sub_1AE23DA2C();

      result = sqlite3_errmsg(*(v0 + 32));
      if (!result)
      {
        __break(1u);
        return result;
      }

      v5 = sub_1AE23CDEC();
      MEMORY[0x1B26FB670](v5);

      v6 = MEMORY[0x1B26FB670](46, 0xE100000000000000);
      sub_1ADE47024(v6, v7, v8);
      swift_allocError();
      *v9 = 0xD000000000000011;
      *(v9 + 8) = 0x80000001AE25F9C0;
      *(v9 + 16) = 0;
      swift_willThrow();
    }

    return sqlite3_finalize(v3);
  }

  return result;
}

char *sub_1ADE43924()
{
  result = sub_1ADDD1E30(0xD000000000000018, 0x80000001AE25F980);
  if (!v1)
  {
    v3 = result;
    do
    {
      v4 = sqlite3_step(v3);
    }

    while (v4 == 100);
    if (v4 == 101)
    {
      return sqlite3_finalize(v3);
    }

    else
    {
      result = sqlite3_errmsg(*(v0 + 32));
      if (result)
      {
        v5 = sub_1AE23CDEC();
        MEMORY[0x1B26FB670](v5);

        v6 = MEMORY[0x1B26FB670](46, 0xE100000000000000);
        sub_1ADE47024(v6, v7, v8);
        swift_allocError();
        *v9 = 0x75746573204C4157;
        *(v9 + 8) = 0xEB00000000203A70;
        *(v9 + 16) = 0;
        swift_willThrow();
        return sqlite3_finalize(v3);
      }

      else
      {
        __break(1u);
      }
    }
  }

  return result;
}

void sub_1ADE43B64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x1B26FB670](a1, a2);
  v6 = sub_1ADDD1E30(0x4E494F5045564153, v25);
  if (v4)
  {

    return;
  }

  v7 = v6;
  v8 = sqlite3_step(v6);
  if (v8 == 5)
  {

    sub_1ADE47024(v16, v17, v18);
    swift_allocError();
    *v19 = 0;
    *(v19 + 8) = 0;
    v20 = 5;
LABEL_13:
    *(v19 + 16) = v20;
    swift_willThrow();
    sqlite3_finalize(v7);
    return;
  }

  if (v8 != 101)
  {
    if (!sqlite3_errmsg(*(v3 + 32)))
    {
      __break(1u);
LABEL_16:
      __break(1u);
      return;
    }

    v21 = sub_1AE23CDEC();
    v23 = v22;
    sub_1ADE47024(v21, v22, v24);
    swift_allocError();
    *v19 = v21;
    *(v19 + 8) = v23;
    v20 = 2;
    goto LABEL_13;
  }

  sqlite3_finalize(v7);
  if (a3)
  {
    v9 = *(v3 + 32);
    v10 = *(a3 + 16);

    if (!sqlite3_snapshot_open(v9, "main", v10))
    {
LABEL_9:

      return;
    }

    if (sqlite3_errmsg(*(v3 + 32)))
    {
      v11 = sub_1AE23CDEC();
      v13 = v12;
      sub_1ADE47024(v11, v12, v14);
      swift_allocError();
      *v15 = v11;
      *(v15 + 8) = v13;
      *(v15 + 16) = 4;
      swift_willThrow();
      goto LABEL_9;
    }

    goto LABEL_16;
  }
}

const char *sub_1ADE43DA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  MEMORY[0x1B26FB670](a1, a2);
  v6 = sub_1ADDD1E30(a3, a4);
  if (v5)
  {
  }

  v8 = v6;
  v9 = sqlite3_step(v6);
  if (v9 == 5)
  {

    sub_1ADE47024(v10, v11, v12);
    swift_allocError();
    *v13 = 0;
    *(v13 + 8) = 0;
    v14 = 5;
LABEL_9:
    *(v13 + 16) = v14;
    swift_willThrow();
    return sqlite3_finalize(v8);
  }

  if (v9 == 101)
  {

    return sqlite3_finalize(v8);
  }

  result = sqlite3_errmsg(*(v4 + 32));
  if (result)
  {

    v15 = sub_1AE23CDEC();
    v17 = v16;
    sub_1ADE47024(v15, v16, v18);
    swift_allocError();
    *v13 = v15;
    *(v13 + 8) = v17;
    v14 = 2;
    goto LABEL_9;
  }

  __break(1u);
  return result;
}

void sub_1ADE43ECC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v9 = sub_1ADDD1E30(0xD00000000000001BLL, 0x80000001AE25F1C0);
  if (v4)
  {
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sqlite3_step(v9);
  if (v11 == 5)
  {
    sub_1ADE47024(v11, v12, v13);
    swift_allocError();
    *v21 = 0;
    *(v21 + 8) = 0;
    v22 = 5;
LABEL_11:
    *(v21 + 16) = v22;
    swift_willThrow();
    v27 = v10;
LABEL_12:
    sqlite3_finalize(v27);
    goto LABEL_13;
  }

  if (v11 != 101)
  {
    if (!sqlite3_errmsg(*(a2 + 32)))
    {
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v23 = sub_1AE23CDEC();
    v25 = v24;
    sub_1ADE47024(v23, v24, v26);
    swift_allocError();
    *v21 = v23;
    *(v21 + 8) = v25;
    v22 = 2;
    goto LABEL_11;
  }

  sqlite3_finalize(v10);
  if (a1)
  {
    v14 = *(a2 + 32);
    v15 = *(a1 + 16);

    if (sqlite3_snapshot_open(v14, "main", v15))
    {
      if (sqlite3_errmsg(*(a2 + 32)))
      {
        v16 = sub_1AE23CDEC();
        v18 = v17;
        sub_1ADE47024(v16, v17, v19);
        swift_allocError();
        *v20 = v16;
        *(v20 + 8) = v18;
        *(v20 + 16) = 4;
        swift_willThrow();

LABEL_14:

        return;
      }

      goto LABEL_29;
    }
  }

  sub_1AE02EE88(a3, a4);
  v28 = sub_1ADDD1E30(0x4E41525420444E45, 0xEF4E4F4954434153);
  v29 = sqlite3_step(v28);
  if (v29 == 5)
  {
    sub_1ADE47024(v29, v30, v31);
    v33 = swift_allocError();
    *v32 = 0;
    *(v32 + 8) = 0;
    v34 = 5;
LABEL_22:
    *(v32 + 16) = v34;
    swift_willThrow();
    sqlite3_finalize(v28);
    v39 = sub_1ADDD1E30(0x4B4341424C4C4F52, 0xE800000000000000);
    v40 = sqlite3_step(v39);
    if (v40 == 5)
    {
      sub_1ADE47024(v40, v41, v42);
      swift_allocError();
      *v43 = 0;
      *(v43 + 8) = 0;
      *(v43 + 16) = 5;
      swift_willThrow();
      sqlite3_finalize(v39);

      return;
    }

    if (v40 != 101)
    {
      if (sqlite3_errmsg(*(a2 + 32)))
      {
        v44 = sub_1AE23CDEC();
        v46 = v45;
        sub_1ADE47024(v44, v45, v47);
        swift_allocError();
        *v48 = v44;
        *(v48 + 8) = v46;
        *(v48 + 16) = 2;
        swift_willThrow();
        sqlite3_finalize(v39);

        return;
      }

      goto LABEL_30;
    }

    sqlite3_finalize(v39);
    swift_willThrow();
LABEL_13:

    goto LABEL_14;
  }

  if (v29 == 101)
  {
    v27 = v28;
    goto LABEL_12;
  }

  if (sqlite3_errmsg(*(a2 + 32)))
  {
    v35 = sub_1AE23CDEC();
    v37 = v36;
    sub_1ADE47024(v35, v36, v38);
    v33 = swift_allocError();
    *v32 = v35;
    *(v32 + 8) = v37;
    v34 = 2;
    goto LABEL_22;
  }

LABEL_31:
  __break(1u);
}

void sub_1ADE442A4(uint64_t a1@<X0>, void (*a2)(uint64_t)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v6 = v4;
  v11 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v13 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1ADDD1E30(0xD00000000000001BLL, 0x80000001AE25F1C0);
  if (!v5)
  {
    v60 = v11;
    v15 = v14;
    v16 = sqlite3_step(v14);
    if (v16 != 101)
    {
      if (v16 == 5)
      {
        sub_1ADE47024(v16, v17, v18);
        swift_allocError();
        *v19 = 0;
        *(v19 + 8) = 0;
        *(v19 + 16) = 5;
        swift_willThrow();
        sqlite3_finalize(v15);
        return;
      }

      if (sqlite3_errmsg(*(v6 + 32)))
      {
        v28 = sub_1AE23CDEC();
        v30 = v29;
        sub_1ADE47024(v28, v29, v31);
        swift_allocError();
        *v32 = v28;
        *(v32 + 8) = v30;
        *(v32 + 16) = 2;
        swift_willThrow();
        sqlite3_finalize(v15);
        return;
      }

      __break(1u);
      goto LABEL_27;
    }

    v20 = sqlite3_finalize(v15);
    if (a1)
    {
      v21 = *(v6 + 32);
      v22 = *(a1 + 16);

      if (sqlite3_snapshot_open(v21, "main", v22))
      {
        if (sqlite3_errmsg(*(v6 + 32)))
        {
          v23 = sub_1AE23CDEC();
          v25 = v24;
          sub_1ADE47024(v23, v24, v26);
          swift_allocError();
          *v27 = v23;
          *(v27 + 8) = v25;
          *(v27 + 16) = 4;
          swift_willThrow();

          return;
        }

LABEL_27:
        __break(1u);
LABEL_28:
        __break(1u);
LABEL_29:
        __break(1u);
        return;
      }
    }

    a2(v20);
    (*(v60 + 32))(a4, v13, a3);
    v33 = sub_1ADDD1E30(0x4E41525420444E45, 0xEF4E4F4954434153);
    v39 = v33;
    v40 = sqlite3_step(v33);
    if (v40 == 5)
    {
      sub_1ADE47024(v40, v41, v42);
      v49 = swift_allocError();
      *v50 = 0;
      *(v50 + 8) = 0;
      *(v50 + 16) = 5;
      v51 = v49;
      swift_willThrow();
      sqlite3_finalize(v39);
      v34 = v60;
    }

    else
    {
      if (v40 == 101)
      {
        sqlite3_finalize(v39);
        return;
      }

      v52 = sqlite3_errmsg(*(v6 + 32));
      v34 = v60;
      if (!v52)
      {
        goto LABEL_29;
      }

      v53 = sub_1AE23CDEC();
      v55 = v54;
      sub_1ADE47024(v53, v54, v56);
      v57 = swift_allocError();
      *v58 = v53;
      *(v58 + 8) = v55;
      *(v58 + 16) = 2;
      v51 = v57;
      swift_willThrow();
      sqlite3_finalize(v39);
    }

    v35 = sub_1ADDD1E30(0x4B4341424C4C4F52, 0xE800000000000000);
    v36 = sqlite3_step(v35);
    if (v36 == 5)
    {
      sub_1ADE47024(v36, v37, v38);
      swift_allocError();
      *v43 = 0;
      *(v43 + 8) = 0;
      v44 = 5;
    }

    else
    {
      if (v36 == 101)
      {
        sqlite3_finalize(v35);
        swift_willThrow();
        (*(v34 + 8))(a4, a3);
        return;
      }

      if (!sqlite3_errmsg(*(v6 + 32)))
      {
        goto LABEL_28;
      }

      v45 = sub_1AE23CDEC();
      v47 = v46;
      sub_1ADE47024(v45, v46, v48);
      swift_allocError();
      *v43 = v45;
      *(v43 + 8) = v47;
      v44 = 2;
    }

    *(v43 + 16) = v44;
    swift_willThrow();
    sqlite3_finalize(v35);

    (*(v34 + 8))(a4, a3);
  }
}

sqlite3_stmt *sub_1ADE44764()
{
  result = sub_1ADDD1E30(0xD00000000000008FLL, 0x80000001AE25F850);
  if (!v1)
  {
    v3 = result;
    v4 = sqlite3_step(result);
    if (v4 == 101)
    {
      sqlite3_finalize(v3);
      v3 = sub_1ADDD1E30(0xD00000000000005DLL, 0x80000001AE25F8E0);
      v4 = sqlite3_step(v3);
      if (v4 == 101)
      {
        return sqlite3_finalize(v3);
      }

      if (v4 == 5)
      {
        goto LABEL_4;
      }

      if (sqlite3_errmsg(*(v0 + 32)))
      {
LABEL_10:
        v9 = sub_1AE23CDEC();
        v11 = v10;
        sub_1ADE47024(v9, v10, v12);
        swift_allocError();
        *v7 = v9;
        *(v7 + 8) = v11;
        v8 = 2;
        goto LABEL_11;
      }

      __break(1u);
    }

    else if (v4 == 5)
    {
LABEL_4:
      sub_1ADE47024(v4, v5, v6);
      swift_allocError();
      *v7 = 0;
      *(v7 + 8) = 0;
      v8 = 5;
LABEL_11:
      *(v7 + 16) = v8;
      swift_willThrow();
      return sqlite3_finalize(v3);
    }

    result = sqlite3_errmsg(*(v0 + 32));
    if (!result)
    {
      __break(1u);
      return result;
    }

    goto LABEL_10;
  }

  return result;
}

const char *sub_1ADE448B4()
{
  result = sub_1ADDD1E30(0xD00000000000001ALL, 0x80000001AE25F2F0);
  if (!v1)
  {
    v0[16] = result;
    v0[17] = sub_1ADDD1E30(0xD000000000000026, 0x80000001AE25F310);
    v0[18] = sub_1ADDD1E30(0xD00000000000002DLL, 0x80000001AE25F340);
    v0[19] = sub_1ADDD1E30(0xD000000000000032, 0x80000001AE25F370);
    v0[20] = sub_1ADDD1E30(0xD000000000000036, 0x80000001AE25F3B0);
    v0[21] = sub_1ADDD1E30(0xD00000000000003ELL, 0x80000001AE25F3F0);
    v0[22] = sub_1ADDD1E30(0xD000000000000020, 0x80000001AE25F430);
    v0[23] = sub_1ADDD1E30(0xD000000000000016, 0x80000001AE25F460);
    v0[24] = sub_1ADDD1E30(0xD000000000000022, 0x80000001AE25F480);
    v0[25] = sub_1ADDD1E30(0xD000000000000035, 0x80000001AE25F4B0);
    v0[26] = sub_1ADDD1E30(0xD000000000000032, 0x80000001AE25F4F0);
    v0[27] = sub_1ADDD1E30(0xD000000000000028, 0x80000001AE25F530);
    v0[28] = sub_1ADDD1E30(0xD000000000000052, 0x80000001AE25F560);
    v0[29] = sub_1ADDD1E30(0xD00000000000002CLL, 0x80000001AE25F5C0);
    v0[33] = sub_1ADDD1E30(0xD000000000000036, 0x80000001AE25F5F0);
    v0[34] = sub_1ADDD1E30(0xD000000000000039, 0x80000001AE25F630);
    v0[31] = sub_1ADDD1E30(0xD000000000000033, 0x80000001AE25F670);
    v0[32] = sub_1ADDD1E30(0xD00000000000002FLL, 0x80000001AE25F6B0);
    v0[30] = sub_1ADDD1E30(0xD000000000000030, 0x80000001AE25F6E0);
    v0[35] = sub_1ADDD1E30(0xD0000000000000F0, 0x80000001AE25F720);
    result = sub_1ADDD1E30(0xD000000000000023, 0x80000001AE25F820);
    v0[36] = result;
  }

  return result;
}

uint64_t sub_1ADE44B80()
{
  sqlite3_finalize(v0[16]);
  sqlite3_finalize(v0[17]);
  sqlite3_finalize(v0[18]);
  sqlite3_finalize(v0[19]);
  sqlite3_finalize(v0[21]);
  sqlite3_finalize(v0[20]);
  sqlite3_finalize(v0[22]);
  sqlite3_finalize(v0[23]);
  sqlite3_finalize(v0[24]);
  sqlite3_finalize(v0[25]);
  sqlite3_finalize(v0[26]);
  sqlite3_finalize(v0[27]);
  sqlite3_finalize(v0[28]);
  sqlite3_finalize(v0[29]);
  sqlite3_finalize(v0[30]);
  sqlite3_finalize(v0[31]);
  sqlite3_finalize(v0[32]);
  sqlite3_finalize(v0[33]);
  sqlite3_finalize(v0[34]);
  sqlite3_finalize(v0[35]);
  v1 = v0[36];

  return sqlite3_finalize(v1);
}

unint64_t sub_1ADE44C48(uint64_t a1, unint64_t a2)
{
  v4 = BYTE6(a2);
  v12[2] = *MEMORY[0x1E69E9840];
  v5 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v5)
    {
      v12[0] = a1;
      LOWORD(v12[1]) = a2;
      BYTE2(v12[1]) = BYTE2(a2);
      BYTE3(v12[1]) = BYTE3(a2);
      BYTE4(v12[1]) = BYTE4(a2);
      BYTE5(v12[1]) = BYTE5(a2);

      v6 = v12 + v4;
      goto LABEL_9;
    }

    v7 = a1;
    v8 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:

    v3 = sub_1ADE478D0(v7, v8);

    return v3;
  }

  if (v5 == 2)
  {
    v7 = *(a1 + 16);
    v8 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v12, 0, 14);

  v6 = v12;
LABEL_9:
  v9 = sub_1ADE45718(v12, v6);
  if (!v2)
  {
    v3 = v9;
    if (!v9)
    {
      v10 = MEMORY[0x1E69E7CC0];
      v3 = sub_1ADDDA5BC(MEMORY[0x1E69E7CC0]);
      sub_1ADDD9ECC(v10);
    }
  }

  return v3;
}

const void *sub_1ADE44E0C(const void *result, uint64_t a2)
{
  if (result)
  {
    v3 = a2 - result;
  }

  else
  {
    v3 = 0;
  }

  if (v3 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v3 > 0x7FFFFFFF)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  sqlite3_bind_blob(*(v2 + 240), 1, result, v3, *(v2 + 72));
  if (sqlite3_step(*(v2 + 240)) == 100)
  {
    v4 = sqlite3_column_int(*(v2 + 240), 0);
  }

  else
  {
    v4 = 0;
  }

  sqlite3_reset(*(v2 + 240));
  return v4;
}

uint64_t sub_1ADE44EB4(uint64_t a1, char **a2)
{
  v30 = *MEMORY[0x1E69E9840];
  while (sqlite3_step(*(a1 + 192)) == 100)
  {
    v5 = sqlite3_column_bytes(*(a1 + 192), 0);
    v6 = sqlite3_column_blob(*(a1 + 192), 0);
    v7 = sqlite3_column_bytes(*(a1 + 192), 1);
    v8 = sqlite3_column_blob(*(a1 + 192), 1);
    if (!v6)
    {
      __break(1u);
    }

    v9 = v8;
    if (v5)
    {
      if (v5 <= 14)
      {
        memset(__dst, 0, sizeof(__dst));
        v29 = v5;
        memcpy(__dst, v6, v5);
        v11 = *__dst;
        v2 = v2 & 0xF00000000000000 | *&__dst[8] | ((*&__dst[12] | (v29 << 16)) << 32);
        v12 = v2;
        if (!v9)
        {
          goto LABEL_11;
        }
      }

      else
      {
        sub_1AE23BBCC();
        swift_allocObject();
        if (v5 == 0x7FFFFFFF)
        {
          v10 = sub_1AE23BB6C();
          sub_1AE23BE2C();
          v11 = swift_allocObject();
          *(v11 + 16) = xmmword_1AE241270;
          v12 = v10 | 0x8000000000000000;
          if (!v9)
          {
            goto LABEL_11;
          }
        }

        else
        {
          v11 = v5 << 32;
          v12 = sub_1AE23BB6C() | 0x4000000000000000;
          if (!v9)
          {
LABEL_11:
            v13 = *a2;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *a2 = v13;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v13 = sub_1ADE55498(0, *(v13 + 2) + 1, 1, v13);
              *a2 = v13;
            }

            v16 = *(v13 + 2);
            v15 = *(v13 + 3);
            if (v16 >= v15 >> 1)
            {
              v13 = sub_1ADE55498((v15 > 1), v16 + 1, 1, v13);
              *a2 = v13;
            }

            *(v13 + 2) = v16 + 1;
            v17 = &v13[16 * v16];
            *(v17 + 4) = v11;
            *(v17 + 5) = v12;
            continue;
          }
        }
      }
    }

    else
    {
      v11 = 0;
      v12 = 0xC000000000000000;
      if (!v8)
      {
        goto LABEL_11;
      }
    }

    if (v7)
    {
      if (v7 <= 14)
      {
        memset(__dst, 0, sizeof(__dst));
        v29 = v7;
        memcpy(__dst, v9, v7);
        v19 = v26 & 0xF00000000000000 | *&__dst[8] | ((*&__dst[12] | (v29 << 16)) << 32);
        v26 = v19;
        v27 = *__dst;
      }

      else
      {
        sub_1AE23BBCC();
        swift_allocObject();
        if (v7 == 0x7FFFFFFF)
        {
          v18 = sub_1AE23BB6C();
          sub_1AE23BE2C();
          v27 = swift_allocObject();
          *(v27 + 16) = xmmword_1AE241270;
          v19 = v18 | 0x8000000000000000;
        }

        else
        {
          v27 = v7 << 32;
          v19 = sub_1AE23BB6C() | 0x4000000000000000;
        }
      }
    }

    else
    {
      v27 = 0;
      v19 = 0xC000000000000000;
    }

    v20 = *a2;
    sub_1ADDD86D8(v27, v19);
    v21 = swift_isUniquelyReferenced_nonNull_native();
    *a2 = v20;
    if ((v21 & 1) == 0)
    {
      v20 = sub_1ADE55498(0, *(v20 + 2) + 1, 1, v20);
      *a2 = v20;
    }

    v23 = *(v20 + 2);
    v22 = *(v20 + 3);
    if (v23 >= v22 >> 1)
    {
      v20 = sub_1ADE55498((v22 > 1), v23 + 1, 1, v20);
      *a2 = v20;
    }

    *(v20 + 2) = v23 + 1;
    v24 = &v20[16 * v23];
    *(v24 + 4) = v11;
    *(v24 + 5) = v12;
    sub_1ADDCC35C(v27, v19);
    sub_1ADDCC35C(v27, v19);
  }

  return sqlite3_reset(*(a1 + 192));
}

void sub_1ADE4528C(void (*a1)(uint64_t, unint64_t, uint64_t, unint64_t))
{
  v3 = v1;
  v20 = *MEMORY[0x1E69E9840];
  while (sqlite3_step(*(v3 + 192)) == 100)
  {
    v5 = sqlite3_column_bytes(*(v3 + 192), 0);
    v6 = sqlite3_column_blob(*(v3 + 192), 0);
    v7 = sqlite3_column_bytes(*(v3 + 192), 1);
    v8 = sqlite3_column_blob(*(v3 + 192), 1);
    if (!v6)
    {
      __break(1u);
    }

    v9 = v8;
    if (v5)
    {
      if (v5 <= 14)
      {
        memset(__dst, 0, sizeof(__dst));
        v19 = v5;
        memcpy(__dst, v6, v5);
        v11 = *__dst;
        v12 = v17 & 0xF00000000000000 | *&__dst[8] | ((*&__dst[12] | (v19 << 16)) << 32);
        v17 = v12;
        if (!v9)
        {
          goto LABEL_11;
        }
      }

      else
      {
        sub_1AE23BBCC();
        swift_allocObject();
        if (v5 == 0x7FFFFFFF)
        {
          v10 = sub_1AE23BB6C();
          sub_1AE23BE2C();
          v11 = swift_allocObject();
          *(v11 + 16) = xmmword_1AE241270;
          v12 = v10 | 0x8000000000000000;
          if (!v9)
          {
            goto LABEL_11;
          }
        }

        else
        {
          v11 = v5 << 32;
          v12 = sub_1AE23BB6C() | 0x4000000000000000;
          if (!v9)
          {
LABEL_11:
            a1(v11, v12, 0, 0xF000000000000000);
            sub_1ADDCC35C(v11, v12);
            if (v2)
            {
              return;
            }

            continue;
          }
        }
      }
    }

    else
    {
      v11 = 0;
      v12 = 0xC000000000000000;
      if (!v8)
      {
        goto LABEL_11;
      }
    }

    if (v7)
    {
      if (v7 <= 14)
      {
        memset(__dst, 0, sizeof(__dst));
        v19 = v7;
        memcpy(__dst, v9, v7);
        v14 = *__dst;
        v15 = v16 & 0xF00000000000000 | *&__dst[8] | ((*&__dst[12] | (v19 << 16)) << 32);
        v16 = v15;
      }

      else
      {
        sub_1AE23BBCC();
        swift_allocObject();
        if (v7 == 0x7FFFFFFF)
        {
          v13 = sub_1AE23BB6C();
          sub_1AE23BE2C();
          v14 = swift_allocObject();
          *(v14 + 16) = xmmword_1AE241270;
          v15 = v13 | 0x8000000000000000;
        }

        else
        {
          v14 = v7 << 32;
          v15 = sub_1AE23BB6C() | 0x4000000000000000;
        }
      }
    }

    else
    {
      v14 = 0;
      v15 = 0xC000000000000000;
    }

    sub_1ADDD86D8(v14, v15);
    a1(v11, v12, v14, v15);
    if (v2)
    {
      sub_1ADDCC35C(v14, v15);
      sub_1ADDCC35C(v14, v15);
      sub_1ADDCC35C(v11, v12);
      return;
    }

    sub_1ADDCC35C(v11, v12);
    sub_1ADDCC35C(v14, v15);
    sub_1ADDCC35C(v14, v15);
  }

  sqlite3_reset(*(v3 + 192));
}

const char *sub_1ADE45600(const char *result, uint64_t a2)
{
  if (result)
  {
    v3 = a2 - result;
  }

  else
  {
    v3 = 0;
  }

  if (v3 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v3 > 0x7FFFFFFF)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  sqlite3_bind_blob(*(v2 + 288), 1, result, v3, *(v2 + 72));
  if (sqlite3_step(*(v2 + 288)) == 101)
  {
    return sqlite3_reset(*(v2 + 288));
  }

  result = sqlite3_errmsg(*(v2 + 32));
  if (result)
  {
    v4 = sub_1AE23CDEC();
    MEMORY[0x1B26FB670](v4);

    v5 = MEMORY[0x1B26FB670](46, 0xE100000000000000);
    sub_1ADE47024(v5, v6, v7);
    swift_allocError();
    *v8 = 0x203A65766F6D6552;
    *(v8 + 8) = 0xE800000000000000;
    *(v8 + 16) = 2;
    return swift_willThrow();
  }

LABEL_12:
  __break(1u);
  return result;
}

unint64_t sub_1ADE45718(void *a1, uint64_t a2)
{
  if (a1)
  {
    v7 = a2 - a1;
  }

  else
  {
    v7 = 0;
  }

  if (v7 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (v7 > 0x7FFFFFFF)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    swift_once();
    goto LABEL_9;
  }

  v2 = v4;
  sqlite3_bind_blob(*(v3 + 264), 1, a1, v7, *(v3 + 72));
  if (sqlite3_step(*(v3 + 264)) != 100 || (v8 = sqlite3_column_bytes(*(v3 + 264), 0), (v9 = sqlite3_column_blob(*(v3 + 264), 0)) == 0))
  {
    v5 = 0;
    goto LABEL_12;
  }

  v5 = sub_1ADDD8EE0(v9, v8);
  v6 = v10;
  if (qword_1ED96AE88 != -1)
  {
    goto LABEL_17;
  }

LABEL_9:
  v11 = qword_1ED96F2A8;

  v12 = sub_1ADF98A98(v5, v6, v11);
  if (v2)
  {
    return v5;
  }

  v5 = v12;
LABEL_12:
  sqlite3_reset(*(v3 + 264));
  return v5;
}

void sub_1ADE45848(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = v5;
  v17 = 1;
  type metadata accessor for CREncoder();
  swift_initStackObject();
  CREncoder.init(_:version:fileSignature:)(a1, &v17, 0, 0xF000000000000000);
  sub_1ADE6B3B8(a4, a5);
  v14 = v13;
  v16 = v15;

  if (!v6)
  {
    sub_1ADDD86D8(v14, v16);

    sub_1ADE47078(a2, a3, v14, v16, v7);
    sub_1ADDCC35C(v14, v16);
  }
}

uint64_t sub_1ADE45948(uint64_t result, uint64_t a2, uint64_t a3, const void *a4, uint64_t a5)
{
  if (result)
  {
    v6 = a2 - result;
  }

  else
  {
    v6 = 0;
  }

  if (v6 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_17;
  }

  if (v6 > 0x7FFFFFFF)
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v9 = *(a3 + 72);
  result = sqlite3_bind_blob(*(a3 + 272), 1, result, v6, *(a3 + 72));
  if (a4)
  {
    v10 = a5 - a4;
  }

  else
  {
    v10 = 0;
  }

  if (v10 < 0xFFFFFFFF80000000)
  {
    goto LABEL_18;
  }

  if (v10 > 0x7FFFFFFF)
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    return result;
  }

  sqlite3_bind_blob(*(a3 + 272), 2, a4, v10, v9);
  if (sqlite3_step(*(a3 + 272)) == 101)
  {
    return sqlite3_reset(*(a3 + 272));
  }

  sub_1AE23DA2C();

  result = sqlite3_errmsg(*(a3 + 32));
  if (!result)
  {
    goto LABEL_20;
  }

  v11 = sub_1AE23CDEC();
  MEMORY[0x1B26FB670](v11);

  v12 = MEMORY[0x1B26FB670](46, 0xE100000000000000);
  sub_1ADE47024(v12, v13, v14);
  swift_allocError();
  *v15 = 0xD000000000000018;
  *(v15 + 8) = 0x80000001AE25F2D0;
  *(v15 + 16) = 2;
  return swift_willThrow();
}

uint64_t sub_1ADE45ADC@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t *a4@<X8>)
{
  if (result)
  {
    v6 = a2 - result;
  }

  else
  {
    v6 = 0;
  }

  if (v6 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_19;
  }

  if (v6 > 0x7FFFFFFF)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  sqlite3_bind_blob(*(a3 + 208), 1, result, v6, *(a3 + 72));
  if (sqlite3_step(*(a3 + 208)) != 100)
  {
    v11 = 0;
    v18 = 0;
    v19 = 0;
    v13 = 0xF000000000000000;
    goto LABEL_16;
  }

  v8 = sqlite3_column_bytes(*(a3 + 208), 0);
  v9 = sqlite3_column_blob(*(a3 + 208), 0);
  v10 = sqlite3_column_bytes(*(a3 + 208), 1);
  result = sqlite3_column_blob(*(a3 + 208), 1);
  if (!result)
  {
LABEL_20:
    __break(1u);
    return result;
  }

  v11 = sub_1ADDD8EE0(result, v10);
  v13 = v12;
  swift_beginAccess();
  sub_1ADE477F8(a3 + 88, &v23);
  if (v24)
  {
    v28 = v8;
    sub_1ADE23E6C(&v23, v25);
    v15 = v26;
    v14 = v27;
    __swift_project_boxed_opaque_existential_1(v25, v26);
    v16 = (*(v14 + 16))(v11, v13, v15, v14);
    if (v4)
    {
      sub_1ADDCC35C(v11, v13);
      return __swift_destroy_boxed_opaque_existential_1(v25);
    }

    v21 = v16;
    v22 = v17;
    sub_1ADDCC35C(v11, v13);
    __swift_destroy_boxed_opaque_existential_1(v25);
    v11 = v21;
    v13 = v22;
    LODWORD(v8) = v28;
    if (!v9)
    {
      goto LABEL_15;
    }
  }

  else
  {
    sub_1ADE47868(&v23);
    if (!v9)
    {
LABEL_15:
      v18 = 0;
      v19 = 0xC000000000000000;
      goto LABEL_16;
    }
  }

  v18 = sub_1ADDD8EE0(v9, v8);
  v19 = v20;
LABEL_16:
  result = sqlite3_reset(*(a3 + 208));
  *a4 = v11;
  a4[1] = v13;
  a4[2] = v18;
  a4[3] = v19;
  return result;
}

void *sub_1ADE45CE4()
{
  v3 = v0;
  v56 = *MEMORY[0x1E69E9840];
  v49 = sub_1ADE51154(MEMORY[0x1E69E7CC0]);
  v4 = sub_1ADDD1E30(0xD00000000000001FLL, 0x80000001AE25F2B0);
  if (v1)
  {

    return v2;
  }

  v5 = v4;
  if (sqlite3_step(v4) == 100)
  {
    sqlite3_column_int(v5, 0);
  }

  sqlite3_finalize(v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5B9FE0, &qword_1AE2413E8);
  sub_1AE23CA3C();
  swift_beginAccess();
  v2 = v49;
  if (sqlite3_step(*(v0 + 216)) != 100)
  {
LABEL_36:
    sqlite3_reset(*(v3 + 216));
    return v2;
  }

  v45 = v0;
  while (1)
  {
    v11 = sqlite3_column_bytes(*(v3 + 216), 0);
    v12 = sqlite3_column_blob(*(v3 + 216), 0);
    v13 = sqlite3_column_bytes(*(v3 + 216), 1);
    v14 = sqlite3_column_blob(*(v3 + 216), 1);
    v15 = sqlite3_column_bytes(*(v3 + 216), 2);
    v16 = sqlite3_column_blob(*(v3 + 216), 2);
    v17 = v16;
    if (v12)
    {
      v47 = sub_1ADDD8EE0(v12, v11);
      v48 = v18;
      if (!v17)
      {
        goto LABEL_40;
      }
    }

    else
    {
      v47 = 0;
      v48 = 0xC000000000000000;
      if (!v16)
      {
        goto LABEL_40;
      }
    }

    v46 = v13;
    if (v15)
    {
      if (v15 <= 14)
      {
        memset(__dst, 0, sizeof(__dst));
        v53 = v15;
        memcpy(__dst, v17, v15);
        v20 = *__dst;
        v21 = v44 & 0xF00000000000000 | *&__dst[8] | ((*&__dst[12] | (v53 << 16)) << 32);
        v44 = v21;
      }

      else
      {
        sub_1AE23BBCC();
        swift_allocObject();
        if (v15 == 0x7FFFFFFF)
        {
          v19 = sub_1AE23BB6C();
          sub_1AE23BE2C();
          v20 = swift_allocObject();
          *(v20 + 16) = xmmword_1AE241270;
          v21 = v19 | 0x8000000000000000;
        }

        else
        {
          v20 = v15 << 32;
          v21 = sub_1AE23BB6C() | 0x4000000000000000;
        }
      }
    }

    else
    {
      v20 = 0;
      v21 = 0xC000000000000000;
    }

    sub_1ADE477F8(v3 + 88, &v50);
    if (v51)
    {
      sub_1ADE23E6C(&v50, __dst);
      v22 = v54;
      v23 = v55;
      __swift_project_boxed_opaque_existential_1(__dst, v54);
      v24 = (*(v23 + 16))(v20, v21, v22, v23);
      v26 = v25;
      sub_1ADDCC35C(v20, v21);
      __swift_destroy_boxed_opaque_existential_1(__dst);
      v20 = v24;
      v21 = v26;
      if (v14)
      {
        goto LABEL_22;
      }
    }

    else
    {
      sub_1ADE47868(&v50);
      if (v14)
      {
LABEL_22:
        v14 = sub_1ADDD8EE0(v14, v46);
        v28 = v27;
        goto LABEL_25;
      }
    }

    v28 = 0xC000000000000000;
LABEL_25:
    sub_1ADDD86D8(v20, v21);
    sub_1ADDD86D8(v14, v28);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *__dst = v2;
    v31 = sub_1ADDDE7CC(v47, v48);
    v32 = v2[2];
    v33 = (v30 & 1) == 0;
    v34 = v32 + v33;
    if (__OFADD__(v32, v33))
    {
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
    }

    v35 = v30;
    if (v2[3] < v34)
    {
      break;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      v2 = *__dst;
      if (v30)
      {
        goto LABEL_7;
      }
    }

    else
    {
      sub_1ADF70518();
      v2 = *__dst;
      if (v35)
      {
LABEL_7:
        v6 = (v2[7] + 32 * v31);
        v7 = *v6;
        v8 = v6[1];
        v9 = v6[2];
        v10 = v6[3];
        *v6 = v20;
        v6[1] = v21;
        v6[2] = v14;
        v6[3] = v28;
        sub_1ADDCC35C(v7, v8);
        sub_1ADDCC35C(v9, v10);
        sub_1ADDCC35C(v47, v48);
        sub_1ADDCC35C(v14, v28);
        sub_1ADDCC35C(v20, v21);
        goto LABEL_8;
      }
    }

LABEL_32:
    v2[(v31 >> 6) + 8] |= 1 << v31;
    v38 = (v2[6] + 16 * v31);
    *v38 = v47;
    v38[1] = v48;
    v39 = (v2[7] + 32 * v31);
    *v39 = v20;
    v39[1] = v21;
    v39[2] = v14;
    v39[3] = v28;
    sub_1ADDCC35C(v14, v28);
    sub_1ADDCC35C(v20, v21);
    v40 = v2[2];
    v41 = __OFADD__(v40, 1);
    v42 = v40 + 1;
    if (v41)
    {
      goto LABEL_39;
    }

    v2[2] = v42;
LABEL_8:
    v3 = v45;
    if (sqlite3_step(*(v45 + 216)) != 100)
    {
      goto LABEL_36;
    }
  }

  sub_1ADF6B238(v34, isUniquelyReferenced_nonNull_native);
  v36 = sub_1ADDDE7CC(v47, v48);
  if ((v35 & 1) == (v37 & 1))
  {
    v31 = v36;
    v2 = *__dst;
    if (v35)
    {
      goto LABEL_7;
    }

    goto LABEL_32;
  }

  result = sub_1AE23E27C();
  __break(1u);
  return result;
}

uint64_t sub_1ADE46228@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t *a4@<X8>)
{
  if (result)
  {
    v6 = a2 - result;
  }

  else
  {
    v6 = 0;
  }

  if (v6 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_22;
  }

  if (v6 > 0x7FFFFFFF)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  sqlite3_bind_blob(*(a3 + 224), 1, result, v6, *(a3 + 72));
  if (sqlite3_step(*(a3 + 224)) == 100)
  {
    v30 = sqlite3_column_bytes(*(a3 + 224), 0);
    v8 = sqlite3_column_blob(*(a3 + 224), 0);
    v31 = sqlite3_column_int(*(a3 + 224), 1);
    v9 = sqlite3_column_bytes(*(a3 + 224), 2);
    v10 = sqlite3_column_blob(*(a3 + 224), 2);
    v11 = sqlite3_column_bytes(*(a3 + 224), 3);
    result = sqlite3_column_blob(*(a3 + 224), 3);
    if (result)
    {
      v12 = sub_1ADDD8EE0(result, v11);
      v14 = v13;
      swift_beginAccess();
      sub_1ADE477F8(a3 + 88, &v32);
      if (v33)
      {
        v28 = v10;
        v29 = v9;
        sub_1ADE23E6C(&v32, v34);
        v16 = v35;
        v15 = v36;
        __swift_project_boxed_opaque_existential_1(v34, v35);
        v17 = (*(v15 + 16))(v12, v14, v16, v15);
        if (v4)
        {
          sub_1ADDCC35C(v12, v14);
          return __swift_destroy_boxed_opaque_existential_1(v34);
        }

        v24 = v17;
        v25 = v18;
        v37 = 0;
        sub_1ADDCC35C(v12, v14);
        __swift_destroy_boxed_opaque_existential_1(v34);
        v12 = v24;
        v14 = v25;
        v10 = v28;
        v9 = v29;
      }

      else
      {
        v37 = v4;
        sub_1ADE47868(&v32);
      }

      v21 = v31;
      if (v8)
      {
        v19 = sub_1ADDD8EE0(v8, v30);
        v20 = v26;
        if (v10)
        {
LABEL_16:
          v22 = sub_1ADDD8EE0(v10, v9);
          v23 = v27;
          goto LABEL_19;
        }
      }

      else
      {
        v19 = 0;
        v20 = 0xC000000000000000;
        if (v10)
        {
          goto LABEL_16;
        }
      }

      v22 = 0;
      v23 = 0xC000000000000000;
      goto LABEL_19;
    }

LABEL_23:
    __break(1u);
    return result;
  }

  v37 = v4;
  v12 = 0;
  v19 = 0;
  v20 = 0;
  v21 = 0;
  v22 = 0;
  v23 = 0;
  v14 = 0xF000000000000000;
LABEL_19:
  result = sqlite3_reset(*(a3 + 224));
  *a4 = v12;
  a4[1] = v14;
  a4[2] = v19;
  a4[3] = v20;
  a4[4] = v21;
  a4[5] = v22;
  a4[6] = v23;
  return result;
}

uint64_t sub_1ADE464B4(uint64_t a1, unint64_t a2)
{
  v11[3] = *MEMORY[0x1E69E9840];
  v4 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v4 != 2)
    {
      memset(v11, 0, 14);

      v5 = v11;
      goto LABEL_9;
    }

    v6 = *(a1 + 16);
    v7 = *(a1 + 24);
  }

  else
  {
    if (!v4)
    {
      v11[0] = a1;
      LOWORD(v11[1]) = a2;
      BYTE2(v11[1]) = BYTE2(a2);
      BYTE3(v11[1]) = BYTE3(a2);
      BYTE4(v11[1]) = BYTE4(a2);
      BYTE5(v11[1]) = BYTE5(a2);

      v5 = (v11 + BYTE6(a2));
LABEL_9:
      sub_1ADE4664C(&v10, v11, v5, v2);

      v8 = v10;
      return v8 & 1;
    }

    v6 = a1;
    v7 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }
  }

  v8 = sub_1ADE4799C(v6, v7, a2 & 0x3FFFFFFFFFFFFFFFLL, v2);

  return v8 & 1;
}

uint64_t *sub_1ADE4664C@<X0>(uint64_t *__return_ptr a1@<X8>, uint64_t *result@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>)
{
  if (result)
  {
    v5 = a3 - result;
  }

  else
  {
    v5 = 0;
  }

  if (v5 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v5 > 0x7FFFFFFF)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  sqlite3_bind_blob(*(a4 + 200), 1, result, v5, *(a4 + 72));
  v7 = sqlite3_step(*(a4 + 200)) == 100 && sqlite3_column_int(*(a4 + 200), 0) != 0;
  result = sqlite3_reset(*(a4 + 200));
  *a1 = v7;
  return result;
}

uint64_t sub_1ADE466F8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  if (result)
  {
    v6 = a2 - result;
  }

  else
  {
    v6 = 0;
  }

  if (v6 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_24;
  }

  if (v6 > 0x7FFFFFFF)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v11 = result;
  v12 = *(a3 + 72);
  sqlite3_bind_blob(*(a3 + 144), 1, result, v6, v12);
  result = sqlite3_step(*(a3 + 144));
  if (result == 100)
  {
    v13 = sqlite3_column_int(*(a3 + 144), 0);
  }

  else
  {
    if (a4 < 1)
    {
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    v13 = 0;
    *a5 = 0;
  }

  result = sqlite3_reset(*(a3 + 144));
  v16 = __OFADD__(v13, a4);
  v17 = v13 + a4;
  if (v16)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v17)
  {
    if (v17 < 1)
    {
      v18 = 0x80000001AE25F210;
      sub_1ADE42E40(result, v14, v15);
      swift_allocError();
      v20 = 0;
      v21 = 0xD000000000000014;
LABEL_21:
      *v19 = v21;
      *(v19 + 8) = v18;
      *(v19 + 16) = v20;
      return swift_willThrow();
    }

    result = sqlite3_bind_blob(*(a3 + 168), 1, v11, v6, v12);
    if (!(v17 >> 31))
    {
      sqlite3_bind_int(*(a3 + 168), 2, v17);
      if (sqlite3_step(*(a3 + 168)) == 101)
      {
        return sqlite3_reset(*(a3 + 168));
      }

      sub_1AE23DA2C();

      result = sqlite3_errmsg(*(a3 + 32));
      if (result)
      {
        v22 = sub_1AE23CDEC();
        MEMORY[0x1B26FB670](v22);

        v23 = MEMORY[0x1B26FB670](46, 0xE100000000000000);
        v21 = 0xD000000000000018;
        v18 = 0x80000001AE25F230;
        sub_1ADE47024(v23, v24, v25);
        swift_allocError();
        v20 = 2;
        goto LABEL_21;
      }

LABEL_28:
      __break(1u);
      return result;
    }

LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  result = sub_1ADE46960(v11, a2);
  if (!v5)
  {
    *a5 = 1;
  }

  return result;
}

const char *sub_1ADE46960(const char *result, uint64_t a2)
{
  if (result)
  {
    v3 = a2 - result;
  }

  else
  {
    v3 = 0;
  }

  if (v3 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v3 > 0x7FFFFFFF)
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    return result;
  }

  sqlite3_bind_blob(*(v2 + 176), 1, result, v3, *(v2 + 72));
  if (sqlite3_step(*(v2 + 176)) == 101)
  {
    return sqlite3_reset(*(v2 + 176));
  }

  sub_1AE23DA2C();

  strcpy(v10, "Delete Asset: ");
  HIBYTE(v10[1]) = -18;
  result = sqlite3_errmsg(*(v2 + 32));
  if (!result)
  {
    goto LABEL_13;
  }

  v4 = sub_1AE23CDEC();
  MEMORY[0x1B26FB670](v4);

  v5 = MEMORY[0x1B26FB670](46, 0xE100000000000000);
  v6 = v10[1];
  sub_1ADE47024(v5, v7, v8);
  swift_allocError();
  *v9 = v10[0];
  *(v9 + 8) = v6;
  *(v9 + 16) = 2;
  return swift_willThrow();
}

uint64_t sub_1ADE46AA8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  result = sub_1ADE44E0C(a1, a2);
  if (v12)
  {
    if (a4 < 1)
    {
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    v13 = *a5;
    v14 = a5[1];
    *a5 = xmmword_1AE241280;
    sub_1ADDDDEBC(v13, v14);
    result = 0;
  }

  v15 = result + a4;
  if (__OFADD__(result, a4))
  {
    __break(1u);
    goto LABEL_23;
  }

  if (v15)
  {
    if (v15 < 1)
    {
      sub_1ADE42E40(result, v12, v15);
      swift_allocError();
      *v20 = 0xD000000000000018;
      *(v20 + 8) = 0x80000001AE25F250;
      *(v20 + 16) = 0;
      return swift_willThrow();
    }

    if (!(v15 >> 31))
    {
      result = sqlite3_bind_int(*(a3 + 248), 1, v15);
      if (a1)
      {
        v16 = a2 - a1;
      }

      else
      {
        v16 = 0;
      }

      if (v16 >= 0xFFFFFFFF80000000)
      {
        if (v16 <= 0x7FFFFFFF)
        {
          sqlite3_bind_blob(*(a3 + 248), 2, a1, v16, *(a3 + 72));
          if (sqlite3_step(*(a3 + 248)) == 101)
          {
            return sqlite3_reset(*(a3 + 248));
          }

          sub_1AE23DA2C();

          result = sqlite3_errmsg(*(a3 + 32));
          if (result)
          {
            v21 = sub_1AE23CDEC();
            MEMORY[0x1B26FB670](v21);

            v22 = MEMORY[0x1B26FB670](46, 0xE100000000000000);
            sub_1ADE47024(v22, v23, v24);
            swift_allocError();
            *v25 = 0xD00000000000001CLL;
            *(v25 + 8) = 0x80000001AE25F270;
            *(v25 + 16) = 2;
            return swift_willThrow();
          }

LABEL_27:
          __break(1u);
          return result;
        }

LABEL_26:
        __break(1u);
        goto LABEL_27;
      }

LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  result = sub_1ADE45718(a1, a2);
  if (!v5)
  {
    v18 = result;
    v19 = v17;
    sub_1ADE45600(a1, a2);
    v26 = *a5;
    v27 = a5[1];
    *a5 = v18;
    a5[1] = v19;
    return sub_1ADDDDEBC(v26, v27);
  }

  return result;
}

uint64_t sub_1ADE46D0C(uint64_t result, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v5 = a5 - a4;
  if (!a4)
  {
    v5 = 0;
  }

  if (v5 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (v5 > 0x7FFFFFFF)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v8 = result;
  v9 = *(a3 + 72);
  result = sqlite3_bind_blob(*(a3 + 256), 1, a4, v5, v9);
  if (v8)
  {
    v10 = a2 - v8;
  }

  else
  {
    v10 = 0;
  }

  if (v10 < 0xFFFFFFFF80000000)
  {
    goto LABEL_17;
  }

  if (v10 > 0x7FFFFFFF)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    return result;
  }

  sqlite3_bind_blob(*(a3 + 256), 2, v8, v10, v9);
  if (sqlite3_step(*(a3 + 256)) == 101)
  {
    return sqlite3_reset(*(a3 + 256));
  }

  sub_1AE23DA2C();

  result = sqlite3_errmsg(*(a3 + 32));
  if (!result)
  {
    goto LABEL_19;
  }

  v11 = sub_1AE23CDEC();
  MEMORY[0x1B26FB670](v11);

  v12 = MEMORY[0x1B26FB670](46, 0xE100000000000000);
  sub_1ADE47024(v12, v13, v14);
  swift_allocError();
  *v15 = 0xD00000000000001DLL;
  *(v15 + 8) = 0x80000001AE25F1F0;
  *(v15 + 16) = 2;
  return swift_willThrow();
}

uint64_t sub_1ADE46EAC()
{
  if ((*(v0 + 40) & 1) == 0 && (*(v0 + 40) = 1, sub_1ADE44B80(), sqlite3_close(*(v0 + 32))))
  {
    sub_1AE23DA2C();

    v2 = sub_1AE23DD9C();
    MEMORY[0x1B26FB670](v2);

    MEMORY[0x1B26FB670](46, 0xE100000000000000);
    result = sub_1AE23DC5C();
    __break(1u);
  }

  else
  {

    sub_1ADE47868(v0 + 88);
    return v0;
  }

  return result;
}

uint64_t sub_1ADE46FC8()
{
  sub_1ADE46EAC();

  return swift_deallocClassInstance();
}

unint64_t sub_1ADE47024(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ED9670B0;
  if (!qword_1ED9670B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9670B0);
  }

  return result;
}

void sub_1ADE47078(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v8 = BYTE6(a2);
  v28[2] = *MEMORY[0x1E69E9840];
  v9 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v9)
    {
      v28[0] = a1;
      LOWORD(v28[1]) = a2;
      BYTE2(v28[1]) = BYTE2(a2);
      BYTE3(v28[1]) = BYTE3(a2);
      BYTE4(v28[1]) = BYTE4(a2);
      BYTE5(v28[1]) = BYTE5(a2);

      sub_1ADDD86D8(a3, a4);

      v10 = a3;
      v11 = a4;
      v12 = a5;
      v13 = v28 + v8;
LABEL_24:
      sub_1ADE47390(v10, v11, v12, v28, v13);
      goto LABEL_25;
    }

    v22 = a1;
    v23 = (a1 >> 32) - a1;
    if (a1 >> 32 >= a1)
    {

      sub_1ADDD86D8(a3, a4);

      sub_1ADDD86D8(a3, a4);

      v16 = sub_1AE23BB7C();
      if (!v16)
      {
        goto LABEL_16;
      }

      v24 = sub_1AE23BBAC();
      if (!__OFSUB__(v22, v24))
      {
        v16 += v22 - v24;
LABEL_16:
        v25 = sub_1AE23BB9C();
        if (v25 >= v23)
        {
          v21 = v23;
        }

        else
        {
          v21 = v25;
        }

        goto LABEL_19;
      }

LABEL_29:
      __break(1u);
    }

    __break(1u);
    goto LABEL_27;
  }

  if (v9 != 2)
  {
    memset(v28, 0, 14);

    sub_1ADDD86D8(a3, a4);

    v13 = v28;
    v10 = a3;
    v11 = a4;
    v12 = a5;
    goto LABEL_24;
  }

  v15 = *(a1 + 16);
  v14 = *(a1 + 24);

  sub_1ADDD86D8(a3, a4);

  sub_1ADDD86D8(a3, a4);

  v16 = sub_1AE23BB7C();
  if (v16)
  {
    v17 = sub_1AE23BBAC();
    if (__OFSUB__(v15, v17))
    {
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    v16 += v15 - v17;
  }

  v18 = __OFSUB__(v14, v15);
  v19 = v14 - v15;
  if (v18)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v20 = sub_1AE23BB9C();
  if (v20 >= v19)
  {
    v21 = v19;
  }

  else
  {
    v21 = v20;
  }

LABEL_19:
  v26 = &v16[v21];
  if (v16)
  {
    v27 = v26;
  }

  else
  {
    v27 = 0;
  }

  sub_1ADE47390(a3, a4, a5, v16, v27);

  sub_1ADDCC35C(a3, a4);

LABEL_25:
  sub_1ADDCC35C(a3, a4);

  sub_1ADDCC35C(a3, a4);
}

double sub_1ADE47390(uint64_t a1, unint64_t a2, uint64_t a3, const void *a4, uint64_t a5)
{
  v5 = a3;
  v25[2] = *MEMORY[0x1E69E9840];
  v6 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v6)
    {
      v25[0] = a1;
      LOWORD(v25[1]) = a2;
      BYTE2(v25[1]) = BYTE2(a2);
      BYTE3(v25[1]) = BYTE3(a2);
      BYTE4(v25[1]) = BYTE4(a2);
      BYTE5(v25[1]) = BYTE5(a2);
      v7 = v25 + BYTE6(a2);
      v8 = v25;
      goto LABEL_24;
    }

    v19 = a1;
    v20 = (a1 >> 32) - a1;
    if (a1 >> 32 >= a1)
    {
      v9 = a4;
      v10 = a5;
      v13 = sub_1AE23BB7C();
      if (!v13)
      {
        goto LABEL_16;
      }

      v21 = sub_1AE23BBAC();
      if (!__OFSUB__(v19, v21))
      {
        v13 += v19 - v21;
LABEL_16:
        v22 = sub_1AE23BB9C();
        if (v22 >= v20)
        {
          v18 = v20;
        }

        else
        {
          v18 = v22;
        }

        goto LABEL_19;
      }

LABEL_28:
      __break(1u);
    }

    __break(1u);
    goto LABEL_26;
  }

  if (v6 != 2)
  {
    memset(v25, 0, 14);
    v8 = v25;
    v7 = v25;
    goto LABEL_24;
  }

  v9 = a4;
  v10 = a5;
  v12 = *(a1 + 16);
  v11 = *(a1 + 24);
  v13 = sub_1AE23BB7C();
  if (v13)
  {
    v14 = sub_1AE23BBAC();
    if (__OFSUB__(v12, v14))
    {
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    v13 += v12 - v14;
  }

  v15 = __OFSUB__(v11, v12);
  v16 = v11 - v12;
  if (v15)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v17 = sub_1AE23BB9C();
  if (v17 >= v16)
  {
    v18 = v16;
  }

  else
  {
    v18 = v17;
  }

LABEL_19:
  v23 = (v18 + v13);
  if (v13)
  {
    v7 = v23;
  }

  else
  {
    v7 = 0;
  }

  v8 = v13;
  a3 = v5;
  a4 = v9;
  a5 = v10;
LABEL_24:
  sub_1ADE45948(v8, v7, a3, a4, a5);

  return result;
}

uint64_t sub_1ADE475A4(uint64_t a1, char **a2)
{
  v18 = *MEMORY[0x1E69E9840];
  while (sqlite3_step(*(a1 + 184)) == 100)
  {
    v4 = sqlite3_column_bytes(*(a1 + 184), 0);
    v5 = sqlite3_column_blob(*(a1 + 184), 0);
    if (!v5)
    {
      __break(1u);
    }

    if (v4)
    {
      if (v4 <= 14)
      {
        memset(__dst, 0, sizeof(__dst));
        v17 = v4;
        memcpy(__dst, v5, v4);
        v7 = *__dst;
        v8 = v15 & 0xF00000000000000 | *&__dst[8] | ((*&__dst[12] | (v17 << 16)) << 32);
        v15 = v8;
      }

      else
      {
        sub_1AE23BBCC();
        swift_allocObject();
        if (v4 == 0x7FFFFFFF)
        {
          v6 = sub_1AE23BB6C();
          sub_1AE23BE2C();
          v7 = swift_allocObject();
          *(v7 + 16) = xmmword_1AE241270;
          v8 = v6 | 0x8000000000000000;
        }

        else
        {
          v7 = v4 << 32;
          v8 = sub_1AE23BB6C() | 0x4000000000000000;
        }
      }
    }

    else
    {
      v7 = 0;
      v8 = 0xC000000000000000;
    }

    sub_1AE1A3880(v7, v8, __dst);
    v9 = *__dst;
    v10 = *a2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *a2 = v10;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v10 = sub_1ADE556B0(0, *(v10 + 2) + 1, 1, v10);
      *a2 = v10;
    }

    v13 = *(v10 + 2);
    v12 = *(v10 + 3);
    if (v13 >= v12 >> 1)
    {
      v10 = sub_1ADE556B0((v12 > 1), v13 + 1, 1, v10);
      *a2 = v10;
    }

    *(v10 + 2) = v13 + 1;
    *&v10[8 * v13 + 32] = v9;
    sub_1ADDCC35C(v7, v8);
  }

  return sqlite3_reset(*(a1 + 184));
}

uint64_t sub_1ADE477F8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5B9DB0, &qword_1AE240B80);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1ADE47868(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5B9DB0, &qword_1AE240B80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

char *sub_1ADE478D0(uint64_t a1, uint64_t a2)
{
  result = sub_1AE23BB7C();
  v6 = result;
  if (result)
  {
    result = sub_1AE23BBAC();
    if (__OFSUB__(a1, result))
    {
LABEL_16:
      __break(1u);
      return result;
    }

    v6 += a1 - result;
  }

  v7 = __OFSUB__(a2, a1);
  v8 = a2 - a1;
  if (v7)
  {
    __break(1u);
    goto LABEL_16;
  }

  v9 = sub_1AE23BB9C();
  if (v9 >= v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = v9;
  }

  v11 = &v6[v10];
  if (v6)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  result = sub_1ADE45718(v6, v12);
  if (!v2 && !result)
  {
    v13 = MEMORY[0x1E69E7CC0];
    v14 = sub_1ADDDA5BC(MEMORY[0x1E69E7CC0]);
    sub_1ADDD9ECC(v13);
    return v14;
  }

  return result;
}

uint64_t *sub_1ADE4799C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_1AE23BB7C();
  v9 = result;
  if (result)
  {
    result = sub_1AE23BBAC();
    if (__OFSUB__(a1, result))
    {
LABEL_15:
      __break(1u);
      return result;
    }

    v9 = (v9 + a1 - result);
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
    __break(1u);
    goto LABEL_15;
  }

  v12 = sub_1AE23BB9C();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  v14 = v9 + v13;
  if (v9)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  sub_1ADE4664C(&v17, v9, v15, a4);
  if (!v4)
  {
    v16 = v17;
  }

  return (v16 & 1);
}

uint64_t get_enum_tag_for_layout_string_9Coherence11SQLiteErrorO(uint64_t a1)
{
  if ((*(a1 + 16) & 7u) <= 4)
  {
    return *(a1 + 16) & 7;
  }

  else
  {
    return (*a1 + 5);
  }
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_1ADE47A7C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFB && *(a1 + 17))
  {
    return (*a1 + 251);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_1ADE47AC4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 16) = 0;
    *result = a2 - 251;
    *(result + 8) = 0;
    if (a3 >= 0xFB)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_1ADE47B08(uint64_t result, unsigned int a2)
{
  if (a2 >= 5)
  {
    *result = a2 - 5;
    *(result + 8) = 0;
    LOBYTE(a2) = 5;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_1ADE47B30()
{
  v1 = v0;
  v2 = sub_1AE23BFEC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_allocWithZone(MEMORY[0x1E696AD60]) init];
  v7 = sub_1ADDEE524(0, &qword_1EB5BA0F8, 0x1E696AD60);
  v18[3] = v7;
  v18[0] = v6;
  if (qword_1ED96AC50 != -1)
  {
    swift_once();
  }

  sub_1ADDD0F70();
  sub_1AE23BFBC();
  if (v7)
  {
    v8 = __swift_project_boxed_opaque_existential_1(v18, v7);
    v9 = *(v7 - 8);
    v10 = MEMORY[0x1EEE9AC00](v8);
    v12 = v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v9 + 16))(v12, v10);
    v13 = sub_1AE23DFFC();
    (*(v9 + 8))(v12, v7);
    __swift_destroy_boxed_opaque_existential_1(v18);
  }

  else
  {
    v13 = 0;
  }

  v14 = objc_allocWithZone(_TtC9Coherence19CRTTMergeableString);
  v15 = sub_1AE23BF7C();
  v16 = [v14 initWithStorage:v13 uuid:{v15, v18[0]}];
  swift_unknownObjectRelease();

  (*(v3 + 8))(v5, v2);
  *(v1 + 16) = v16;
  return v1;
}

uint64_t CRString.copy(renamingReferences:)@<X0>(uint64_t *a1@<X8>)
{
  v3 = [*(*v1 + 16) attributedString];
  objc_opt_self();
  swift_dynamicCastObjCClassUnconditional();
  v4 = sub_1AE23CD0C();
  v6 = v5;
  swift_unknownObjectRelease();
  type metadata accessor for CRStringRef();
  v7 = swift_allocObject();
  sub_1ADE47B30();
  *a1 = v7;
  v8._countAndFlagsBits = v4;
  v8._object = v6;
  CRString.insert(contentsOf:at:)(v8, 0);
}

uint64_t CRString.string.getter()
{
  v1 = [*(*v0 + 16) attributedString];
  objc_opt_self();
  swift_dynamicCastObjCClassUnconditional();
  v2 = sub_1AE23CD0C();
  swift_unknownObjectRelease();
  return v2;
}

uint64_t CRString.copy(renamingReferences:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *v2;
  if (!a1)
  {
    sub_1ADE51288(MEMORY[0x1E69E7CC0]);
  }

  v5 = [*(v4 + 16) attributedString];
  objc_opt_self();
  swift_dynamicCastObjCClassUnconditional();
  v6 = sub_1AE23CD0C();
  v8 = v7;
  swift_unknownObjectRelease();
  type metadata accessor for CRStringRef();
  v9 = swift_allocObject();
  sub_1ADE47B30();
  *a2 = v9;
  v10._countAndFlagsBits = v6;
  v10._object = v8;
  CRString.insert(contentsOf:at:)(v10, 0);
}

void CRString.init(_:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for CRStringRef();
  v4 = swift_allocObject();
  sub_1ADE47B30();

  *a2 = v4;
}

uint64_t CRString.init()@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for CRStringRef();
  v2 = swift_allocObject();
  result = sub_1ADE47B30();
  *a1 = v2;
  return result;
}

uint64_t CRString.init(_:string:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  type metadata accessor for CRStringRef();
  v8 = swift_allocObject();
  sub_1ADE47B30();
  v9._countAndFlagsBits = a2;
  v9._object = a3;
  CRString.insert(contentsOf:at:)(v9, 0);

  *a4 = v8;
  return result;
}

uint64_t sub_1ADE48170@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  type metadata accessor for CRStringRef();
  v6 = swift_allocObject();
  sub_1ADE47B30();
  *a3 = v6;
  v7._countAndFlagsBits = a1;
  v7._object = a2;
  CRString.insert(contentsOf:at:)(v7, 0);
}

uint64_t CRString.init(defaultState:)@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for CRStringRef();
  v2 = swift_allocObject();
  result = sub_1ADE47B30();
  *a1 = v2;
  return result;
}

Swift::Void __swiftcall CRString.insert(contentsOf:at:)(Swift::String contentsOf, Swift::Int at)
{
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = *v2;
    type metadata accessor for CRStringRef();
    v5 = swift_allocObject();
    [*(v4 + 16) copy];
    sub_1AE23D83C();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5B9FE8, &qword_1AE241500);
    swift_dynamicCast();
    *(v5 + 16) = aBlock[6];

    *v2 = v5;
  }

  v6 = objc_allocWithZone(MEMORY[0x1E696AEC0]);
  v7 = sub_1AE23CCDC();
  v8 = [v6 initWithString_];

  v9 = *(*v2 + 16);
  v10 = [v8 length];
  v11 = swift_allocObject();
  *(v11 + 16) = v8;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_1ADE522B0;
  *(v12 + 24) = v11;
  aBlock[4] = sub_1ADE0F04C;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1ADE0EEE0;
  aBlock[3] = &block_descriptor_0;
  v13 = _Block_copy(aBlock);
  v14 = v8;

  [v9 insertAtIndex:at length:v10 getStorage:v13];

  _Block_release(v13);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }
}

Swift::Void __swiftcall CRString.append(_:)(Swift::String a1)
{
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = *v1;
    type metadata accessor for CRStringRef();
    v3 = swift_allocObject();
    [*(v2 + 16) copy];
    sub_1AE23D83C();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5B9FE8, &qword_1AE241500);
    swift_dynamicCast();
    *(v3 + 16) = aBlock[6];

    *v1 = v3;
  }

  v4 = objc_allocWithZone(MEMORY[0x1E696AEC0]);
  v5 = sub_1AE23CCDC();
  v6 = [v4 initWithString_];

  v7 = *(*v1 + 16);
  v8 = [v7 length];
  v9 = [v6 length];
  v10 = swift_allocObject();
  *(v10 + 16) = v6;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_1ADE513A4;
  *(v11 + 24) = v10;
  aBlock[4] = sub_1ADE522A8;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1ADE0EEE0;
  aBlock[3] = &block_descriptor_13;
  v12 = _Block_copy(aBlock);
  v13 = v6;

  [v7 insertAtIndex:v8 length:v9 getStorage:v12];

  _Block_release(v12);
  LOBYTE(v7) = swift_isEscapingClosureAtFileLocation();

  if (v7)
  {
    __break(1u);
  }
}

void CRString.removeSubrange(_:)(uint64_t a1, uint64_t a2)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *v2;
  if (isUniquelyReferenced_nonNull_native)
  {
    v7 = *(v6 + 16);
  }

  else
  {
    type metadata accessor for CRStringRef();
    v8 = swift_allocObject();
    [*(v6 + 16) copy];
    sub_1AE23D83C();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5B9FE8, &qword_1AE241500);
    swift_dynamicCast();
    v7 = v12;
    *(v8 + 16) = v12;

    *v2 = v8;
  }

  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
  }

  else
  {
    v10 = v9 + 1;
    if (!__OFADD__(v9, 1))
    {
      v11 = v7;
      [v11 removeObjectsInRange_];

      return;
    }
  }

  __break(1u);
}

{
  v3 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
  }

  else if (v3 >= 1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *v2;
    if (isUniquelyReferenced_nonNull_native)
    {
      v7 = *(v6 + 16);
    }

    else
    {
      type metadata accessor for CRStringRef();
      v8 = swift_allocObject();
      [*(v6 + 16) copy];
      sub_1AE23D83C();
      swift_unknownObjectRelease();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5B9FE8, &qword_1AE241500);
      swift_dynamicCast();
      v7 = v10;
      *(v8 + 16) = v10;

      *v2 = v8;
    }

    v9 = v7;
    [v9 removeObjectsInRange_];
  }
}

void CRString.replaceSubrange(_:with:)(Swift::Int at, uint64_t a2, Swift::String contentsOf)
{
  v4 = a2 - at;
  if (__OFSUB__(a2, at))
  {
    __break(1u);
  }

  else if (v4 < 1)
  {
    if (!v4)
    {
      countAndFlagsBits = contentsOf._countAndFlagsBits;
      object = contentsOf._object;

      CRString.insert(contentsOf:at:)(*&countAndFlagsBits, at);
    }
  }

  else
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *v3;
    if (isUniquelyReferenced_nonNull_native)
    {
      v8 = *(v7 + 16);
    }

    else
    {
      type metadata accessor for CRStringRef();
      v11 = swift_allocObject();
      [*(v7 + 16) copy];
      sub_1AE23D83C();
      swift_unknownObjectRelease();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5B9FE8, &qword_1AE241500);
      swift_dynamicCast();
      v8 = v17;
      *(v11 + 16) = v17;

      *v3 = v11;
    }

    v12 = MEMORY[0x1E696AEC0];
    v13 = v8;
    v14 = objc_allocWithZone(v12);
    v15 = sub_1AE23CCDC();
    v16 = [v14 initWithString_];

    [v13 replaceStorageInRange:at withStorage:{v4, v16}];
  }
}

void CRString.merge(_:)(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  if (*v2 == *a1)
  {
    if (qword_1ED9670C0 != -1)
    {
      swift_once();
    }

    v8 = &word_1ED96F220;
  }

  else
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *v2;
    if (isUniquelyReferenced_nonNull_native)
    {
      v7 = *(v6 + 16);
    }

    else
    {
      type metadata accessor for CRStringRef();
      v9 = swift_allocObject();
      [*(v6 + 16) copy];
      sub_1AE23D83C();
      swift_unknownObjectRelease();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5B9FE8, &qword_1AE241500);
      swift_dynamicCast();
      v7 = v19;
      *(v9 + 16) = v19;

      *v2 = v9;
    }

    v10 = *(v4 + 16);
    v11 = qword_1EB5B96D8;
    v12 = v7;
    v13 = v10;
    if (v11 != -1)
    {
      swift_once();
    }

    os_unfair_lock_lock(&dword_1EB5D7500);
    v14 = byte_1EB5D7504;
    os_unfair_lock_unlock(&dword_1EB5D7500);
    if (v14 == 1)
    {
      if (qword_1EB5B9940 != -1)
      {
        swift_once();
      }

      v15 = qword_1EB5B9948;
    }

    else
    {
      v15 = 0;
    }

    v16 = [v12 mergeWithString:v13 optimized:1 suggestedContext:v15];

    if (v16 == 2)
    {

      *v2 = v4;
      if (qword_1EB5B9910 != -1)
      {
        swift_once();
      }

      v8 = &word_1EB5D750B;
    }

    else
    {
      if (qword_1EB5B9528 != -1)
      {
        swift_once();
      }

      v8 = &word_1EB5D74C0;
    }
  }

  v17 = *v8;
  v18 = *(v8 + 2);
  *a2 = v17;
  *(a2 + 2) = v18;
}

id CRString.count.getter()
{
  v1 = [objc_msgSend(*(*v0 + 16) attributedString)];
  swift_unknownObjectRelease();
  return v1;
}

id sub_1ADE48DF0(uint64_t *a1)
{
  v2 = *a1;
  v3 = *v1;
  v4 = [*(*v1 + 16) attributedString];
  objc_opt_self();
  swift_dynamicCastObjCClassUnconditional();
  v5 = sub_1AE23CD0C();
  v7 = v6;
  swift_unknownObjectRelease();
  v8 = [*(v2 + 16) attributedString];
  objc_opt_self();
  swift_dynamicCastObjCClassUnconditional();
  v9 = sub_1AE23CD0C();
  v11 = v10;
  swift_unknownObjectRelease();
  if (v5 == v9 && v7 == v11)
  {

    return [*(v3 + 16) graphIsEqual_];
  }

  v13 = sub_1AE23E00C();

  result = 0;
  if (v13)
  {
    return [*(v3 + 16) graphIsEqual_];
  }

  return result;
}

unint64_t static CRString.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v4[0] = *a2;
  v4[1] = v2;
  return sub_1ADE48DF0(v4) & 1;
}

id CRString.finalizeTimestamps(_:)(uint64_t a1)
{
  result = [*(*v1 + 16) needToFinalizeTimestamps];
  if (result)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v5 = *v1;
    if (isUniquelyReferenced_nonNull_native)
    {
      v6 = *(v5 + 16);
    }

    else
    {
      type metadata accessor for CRStringRef();
      v7 = swift_allocObject();
      [*(v5 + 16) copy];
      sub_1AE23D83C();
      swift_unknownObjectRelease();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5B9FE8, &qword_1AE241500);
      swift_dynamicCast();
      v6 = v8;
      *(v7 + 16) = v8;

      *v1 = v7;
    }

    return [v6 finalizeTimestamps_];
  }

  return result;
}

void CRString.actionUndoingDifference(from:)(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v5 = *v2;
  if (v5 == *a1)
  {
    goto LABEL_6;
  }

  if ([*(v5 + 16) hasDeltaTo:*(v4 + 16) compareElements:0])
  {
    v8 = v4;
    v9 = v5;

    CRString.merge(_:)(&v8, &v7);
    v7 = v4;
    v8 = v9;
    CRString.actionUndoingDifference(from:)(&v7, a2);

    return;
  }

  v6 = [*(v5 + 16) undoCommandToChangeFrom:*(v4 + 16) unedited:0];
  if (!v6)
  {
LABEL_6:
    *a2 = 0;
  }

  else
  {
    *a2 = v6;
  }
}

void *CRString.apply(_:)(void *result)
{
  if (*result)
  {
    swift_unknownObjectRetain();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = *v1;
      type metadata accessor for CRStringRef();
      v3 = swift_allocObject();
      [*(v2 + 16) copy];
      sub_1AE23D83C();
      swift_unknownObjectRelease();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5B9FE8, &qword_1AE241500);
      swift_dynamicCast();
      *(v3 + 16) = v5;

      *v1 = v3;
    }

    objc_opt_self();
    v4 = swift_dynamicCastObjCClass();
    if (v4)
    {
      [v4 applyToString_];
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

id CRString.hasDelta(from:)(uint64_t a1)
{
  if (*v1 == *a1)
  {
    return 0;
  }

  else
  {
    return [*(*a1 + 16) hasDeltaTo:*(*v1 + 16) compareElements:0];
  }
}

void CRString.delta(_:from:)(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v7 = *a2;
  v8 = *v3;

  CRString.finalizeTimestamps(_:)(a1);
  CRString.finalizeTimestamps(_:)(a1);
  v6 = [objc_allocWithZone(_TtC9Coherence24CRTTMergeableStringDelta) initWithDeltasTo:*(v8 + 16) from:*(v7 + 16) compareElements:0];

  *a3 = v6;
}

Swift::Bool __swiftcall CRString.merge(delta:)(Coherence::CRString::Partial *delta)
{
  isa = delta->delta.super.isa;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *v1;
  if (isUniquelyReferenced_nonNull_native)
  {
    v5 = *(v4 + 16);
  }

  else
  {
    type metadata accessor for CRStringRef();
    v6 = swift_allocObject();
    [*(v4 + 16) copy];
    sub_1AE23D83C();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5B9FE8, &qword_1AE241500);
    swift_dynamicCast();
    v5 = v8;
    *(v6 + 16) = v8;

    *v1 = v6;
  }

  return [v5 deltaMerge_];
}

unint64_t sub_1ADE494B4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v4[0] = *a2;
  v4[1] = v2;
  return sub_1ADE48DF0(v4) & 1;
}

uint64_t sub_1ADE494F4@<X0>(uint64_t *a1@<X8>)
{
  v3 = [*(*v1 + 16) attributedString];
  objc_opt_self();
  swift_dynamicCastObjCClassUnconditional();
  v4 = sub_1AE23CD0C();
  v6 = v5;
  swift_unknownObjectRelease();
  type metadata accessor for CRStringRef();
  v7 = swift_allocObject();
  sub_1ADE47B30();
  *a1 = v7;
  v8._countAndFlagsBits = v4;
  v8._object = v6;
  CRString.insert(contentsOf:at:)(v8, 0);
}

void CRString.observableDifference(from:with:)(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *a1;
  v6 = *v3;
  if (*v3 != *a1)
  {
    if ([*(v6 + 16) hasDeltaTo:*(v5 + 16) compareElements:0])
    {
      v17 = v5;
      aBlock[0] = v6;

      CRString.merge(_:)(&v17, &v16);
      v16 = v5;
      v17 = aBlock[0];
      CRString.observableDifference(from:with:)(&v16, a2, a3);

      return;
    }

    v8 = swift_allocObject();
    *(v8 + 16) = MEMORY[0x1E69E7CC0];
    v9 = (v8 + 16);
    v10 = *(v5 + 16);
    v11 = *(v6 + 16);
    aBlock[4] = sub_1ADE51408;
    aBlock[5] = v8;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1ADE4EFB0;
    aBlock[3] = &block_descriptor_19;
    v12 = _Block_copy(aBlock);
    v13 = v10;
    v14 = v11;

    [v13 deltaTo:v14 edited:v12 unedited:0];
    _Block_release(v12);

    swift_beginAccess();
    v15 = *v9;
    if (*(v15 + 16))
    {

      *a3 = v15;
      return;
    }
  }

  *a3 = 0;
}

void CRString.init(from:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  if (*(a1 + 64))
  {
    type metadata accessor for CRDecoder.CRDTContainer();
    inited = swift_initStackObject();
    *(inited + 16) = a1;
    *(inited + 24) = 0;
    *(inited + 32) = 1;
    sub_1ADE64F48(&v9);
    swift_setDeallocating();

    if (!v4)
    {
      *a4 = v9;
    }
  }

  else
  {
    sub_1ADE42E40(a1, a2, a3);
    swift_allocError();
    *v8 = 0xD000000000000014;
    *(v8 + 8) = 0x80000001AE25FB50;
    *(v8 + 16) = 0;
    swift_willThrow();
  }
}

double sub_1ADE49904(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1ADDFCC74(a1, a2, a3);
  if (!v3)
  {
    v6 = *(v4 + 16);
    v7 = v4;

    v8 = sub_1ADE50584(v6);
    swift_beginAccess();
    *(v7 + 24) = v8;
  }

  return result;
}

double CRString.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1ADDFCC74(a1, a2, a3);
  if (!v3)
  {
    v6 = *(v4 + 16);
    v7 = v4;

    v8 = sub_1ADE50584(v6);
    swift_beginAccess();
    *(v7 + 24) = v8;
  }

  return result;
}

uint64_t sub_1ADE49A44@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for CRStringRef();
  v2 = swift_allocObject();
  result = sub_1ADE47B30();
  *a1 = v2;
  return result;
}

void sub_1ADE49B64(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16) && v2 && a1 != a2)
  {
    v3 = (a2 + 64);
    v4 = (a1 + 64);
    while (1)
    {
      v5 = *(v4 - 3);
      v6 = *(v4 - 2);
      v7 = *(v4 - 1);
      v8 = *v4;
      v15[0] = *(v4 - 4);
      v15[1] = v5;
      v15[2] = v6;
      v15[3] = v7;
      v15[4] = v8;
      if (!v2)
      {
        break;
      }

      v11 = v2;
      v9 = *(v3 - 3);
      v12 = *(v3 - 1);
      v13 = *(v3 - 2);
      v10 = *v3;
      v16[0] = *(v3 - 4);
      v16[1] = v9;
      v16[2] = v13;
      v16[3] = v12;
      v16[4] = v10;

      sub_1ADE42C78(v6, v7);

      sub_1ADE42C78(v13, v12);

      v14 = sub_1AE1C0B68(v15, v16);

      sub_1ADE42CB8(v13, v12);

      sub_1ADE42CB8(v6, v7);

      if (v14)
      {
        v4 += 5;
        v3 += 5;
        v2 = v11 - 1;
        if (v11 != 1)
        {
          continue;
        }
      }

      return;
    }

    __break(1u);
  }
}

uint64_t sub_1ADE49CF0(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (a2 + 48);
  v4 = (result + 48);
  while (v2)
  {
    v5 = *(v3 - 2);
    v6 = *(v3 - 1);
    v8 = *v3;
    v3 += 3;
    v7 = v8;
    result = *(v4 - 2) == v5 && *(v4 - 1) == v6 && *v4 == v7;
    v11 = result != 1 || v2-- == 1;
    v4 += 3;
    if (v11)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1ADE49DA4(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

void sub_1ADE49E00(uint64_t a1, uint64_t a2)
{
  v66 = sub_1AE23C32C();
  MEMORY[0x1EEE9AC00](v66);
  v5 = &v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v56 - v8;
  v10 = *(a1 + 16);
  if (v10 != *(a2 + 16) || !v10 || a1 == a2)
  {
    return;
  }

  v11 = 0;
  v57 = 0;
  v58 = v10;
  v60 = a1 + 32;
  v59 = a2 + 32;
  v65 = (v7 + 8);
  while (1)
  {
    if (v11 == v10)
    {
      __break(1u);
LABEL_68:
      __break(1u);
LABEL_69:
      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
      return;
    }

    v12 = (v60 + 24 * v11);
    v13 = (v59 + 24 * v11);
    v14 = *v13;
    v67 = *v12;
    v68 = v14;
    v15 = *(v67 + 16);
    if (v15 != *(v14 + 16))
    {
      return;
    }

    v16 = v12[1];
    v17 = v12[2];
    v18 = v13[1];
    v19 = v13[2];
    v63 = v18;
    v64 = v16;
    v61 = v11;
    v62 = v17;
    if (v15)
    {
      break;
    }

    sub_1ADDD86D8(v16, v17);

    v22 = v19;
    sub_1ADDD86D8(v18, v19);
LABEL_22:
    v35 = v62;
    v36 = v62 >> 62;
    v37 = v22;
    v38 = v22 >> 62;
    if (v62 >> 62 == 3)
    {
      v39 = v64;
      if (v64)
      {
        v40 = 0;
      }

      else
      {
        v40 = v62 == 0xC000000000000000;
      }

      if (v40 && v22 >> 62 == 3)
      {
        v43 = v63;
        if (v63)
        {
          v44 = 0;
        }

        else
        {
          v44 = v22 == 0xC000000000000000;
        }

        if (v44)
        {
          goto LABEL_56;
        }

        v42 = 0;
      }

      else
      {
        v42 = 0;
        v43 = v63;
      }
    }

    else
    {
      v39 = v64;
      if (v36)
      {
        if (v36 == 1)
        {
          LODWORD(v42) = HIDWORD(v64) - v64;
          v43 = v63;
          if (__OFSUB__(HIDWORD(v64), v64))
          {
            goto LABEL_71;
          }

          v42 = v42;
        }

        else
        {
          v46 = *(v64 + 16);
          v45 = *(v64 + 24);
          v47 = __OFSUB__(v45, v46);
          v42 = v45 - v46;
          v43 = v63;
          if (v47)
          {
            goto LABEL_70;
          }
        }
      }

      else
      {
        v42 = BYTE6(v62);
        v43 = v63;
      }
    }

    if (v38 <= 1)
    {
      if (v38)
      {
        LODWORD(v48) = HIDWORD(v43) - v43;
        if (__OFSUB__(HIDWORD(v43), v43))
        {
          goto LABEL_69;
        }

        v48 = v48;
      }

      else
      {
        v48 = BYTE6(v22);
      }

LABEL_51:
      if (v42 != v48)
      {
        goto LABEL_66;
      }

      if (v42 >= 1)
      {
        sub_1ADDD86D8(v43, v22);
        v51 = v22;
        v52 = v57;
        if ((sub_1ADDD1544(v39, v35, v43, v51) & 1) == 0)
        {
          goto LABEL_66;
        }

        v57 = v52;
      }

      goto LABEL_56;
    }

    if (v38 == 2)
    {
      v50 = *(v43 + 16);
      v49 = *(v43 + 24);
      v47 = __OFSUB__(v49, v50);
      v48 = v49 - v50;
      if (v47)
      {
        goto LABEL_68;
      }

      goto LABEL_51;
    }

    if (v42)
    {
LABEL_66:

      goto LABEL_64;
    }

LABEL_56:
    sub_1AE23C31C();
    sub_1AE23C31C();
    sub_1ADE51EAC();
    v53 = v66;
    v54 = sub_1AE23CCBC();
    v55 = *v65;
    (*v65)(v5, v53);
    v55(v9, v53);

    sub_1ADDCC35C(v43, v37);

    sub_1ADDCC35C(v39, v35);
    if (v54)
    {
      v11 = v61 + 1;
      v10 = v58;
      if (v61 + 1 != v58)
      {
        continue;
      }
    }

    return;
  }

  v20 = v67;

  sub_1ADDD86D8(v16, v17);
  v21 = v68;

  v22 = v19;
  sub_1ADDD86D8(v18, v19);
  if (v20 == v21)
  {
    goto LABEL_22;
  }

  v23 = 32;
  while (1)
  {
    v24 = *(v67 + v23);
    v25 = *(v68 + v23);
    if (v24 == v25)
    {

      goto LABEL_18;
    }

    v26 = v9;
    v27 = v5;
    v28 = *(v24 + 16);
    v29 = *(v25 + 16);
    v30 = v29 & 0xF000000000000007;
    if ((~v28 & 0xF000000000000007) == 0)
    {
      if (v30 != 0xF000000000000007)
      {
        break;
      }

      swift_retain_n();
      swift_retain_n();
      v5 = v27;
      goto LABEL_17;
    }

    if (v30 == 0xF000000000000007)
    {
      break;
    }

    swift_retain_n();
    swift_retain_n();
    sub_1ADE51B2C(v29);
    sub_1ADE51B2C(v28);
    v31 = sub_1AE1B7AA8(v28, v29);

    sub_1ADE51B48(v29);
    sub_1ADE51B48(v28);
    v5 = v27;
    if ((v31 & 1) == 0)
    {
      goto LABEL_62;
    }

LABEL_17:

    v9 = v26;
LABEL_18:
    sub_1AE23C31C();
    sub_1AE23C31C();
    sub_1ADE51EAC();
    v32 = v66;
    v33 = sub_1AE23CCBC();

    v34 = *v65;
    (*v65)(v5, v32);
    v34(v9, v32);
    if ((v33 & 1) == 0)
    {

      goto LABEL_63;
    }

    v23 += 8;
    if (!--v15)
    {
      goto LABEL_22;
    }
  }

  swift_retain_n();
  swift_retain_n();
LABEL_62:

LABEL_63:
  v43 = v63;
  v39 = v64;
  v35 = v62;
  v37 = v22;
LABEL_64:
  sub_1ADDCC35C(v43, v37);

  sub_1ADDCC35C(v39, v35);
}

uint64_t sub_1ADE4A3AC(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

void sub_1ADE4A408(int64x2_t *a1, int64x2_t *a2)
{
  v4 = sub_1AE23C32C();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v18 - v9;
  v11 = a1[1].i64[0];
  if (v11 == a2[1].i64[0] && v11 && a1 != a2)
  {
    v12 = a1 + 2;
    v13 = a2 + 2;
    v14 = (v8 + 8);
    do
    {
      v15 = vmovn_s64(vceqq_s64(*v12, *v13));
      if ((v15.i32[0] & v15.i32[1] & 1) == 0)
      {
        break;
      }

      sub_1AE23C31C();
      sub_1AE23C31C();
      sub_1ADE51EAC();
      v16 = sub_1AE23CCBC();
      v17 = *v14;
      (*v14)(v6, v4);
      v17(v10, v4);
      if ((v16 & 1) == 0)
      {
        break;
      }

      ++v12;
      ++v13;
      --v11;
    }

    while (v11);
  }
}

void sub_1ADE4A5B0(uint64_t a1, uint64_t a2)
{
  v46 = sub_1AE23C32C();
  MEMORY[0x1EEE9AC00](v46);
  v47 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v45 = &v38 - v7;
  v8 = *(a1 + 16);
  if (v8 != *(a2 + 16) || !v8 || a1 == a2)
  {
    return;
  }

  v39 = 0;
  v40 = (v6 + 8);
  v9 = (a1 + 48);
  v10 = (a2 + 48);
  while (v8)
  {
    v11 = *(v9 - 2);
    v12 = *(v9 - 1);
    v13 = *v9;
    v14 = *(v10 - 2);
    v15 = *(v10 - 1);
    v16 = *v10;
    v43 = v9;
    v44 = v8;
    v42 = v10;
    v48 = v16;
    if (v13)
    {
      if (!v16)
      {
        return;
      }

      sub_1ADDD86D8(v11, v12);

      sub_1ADDD86D8(v14, v15);
      swift_bridgeObjectRetain_n();

      sub_1ADE4E9A0(v17, v16);
      if ((v18 & 1) == 0)
      {

LABEL_44:
        sub_1ADDCC35C(v14, v15);

        sub_1ADDCC35C(v11, v12);

        return;
      }

      v19 = v45;
      sub_1AE23C31C();
      v20 = v47;
      sub_1AE23C31C();
      sub_1ADE51EAC();
      v21 = v46;
      v41 = sub_1AE23CCBC();
      v22 = *v40;
      (*v40)(v20, v21);
      v22(v19, v21);

      if ((v41 & 1) == 0)
      {
        goto LABEL_44;
      }
    }

    else
    {
      if (v16)
      {
        return;
      }

      sub_1ADDD86D8(v11, v12);
      sub_1ADDD86D8(v14, v15);
    }

    v23 = v12 >> 62;
    v24 = v15 >> 62;
    if (v12 >> 62 == 3)
    {
      v25 = 0;
      if (!v11 && v12 == 0xC000000000000000 && v15 >> 62 == 3)
      {
        v25 = 0;
        if (!v14 && v15 == 0xC000000000000000)
        {
          goto LABEL_40;
        }
      }
    }

    else if (v23)
    {
      if (v23 == 1)
      {
        LODWORD(v25) = HIDWORD(v11) - v11;
        if (__OFSUB__(HIDWORD(v11), v11))
        {
          goto LABEL_50;
        }

        v25 = v25;
      }

      else
      {
        v27 = *(v11 + 16);
        v26 = *(v11 + 24);
        v28 = __OFSUB__(v26, v27);
        v25 = v26 - v27;
        if (v28)
        {
          goto LABEL_49;
        }
      }
    }

    else
    {
      v25 = BYTE6(v12);
    }

    if (v24 <= 1)
    {
      if (v24)
      {
        LODWORD(v29) = HIDWORD(v14) - v14;
        if (__OFSUB__(HIDWORD(v14), v14))
        {
          goto LABEL_48;
        }

        v29 = v29;
      }

      else
      {
        v29 = BYTE6(v15);
      }

LABEL_35:
      if (v25 != v29)
      {
        goto LABEL_44;
      }

      if (v25 >= 1)
      {
        sub_1ADDD86D8(v14, v15);
        v32 = v39;
        if ((sub_1ADDD1544(v11, v12, v14, v15) & 1) == 0)
        {
          goto LABEL_44;
        }

        v39 = v32;
      }

      goto LABEL_40;
    }

    if (v24 == 2)
    {
      v31 = *(v14 + 16);
      v30 = *(v14 + 24);
      v28 = __OFSUB__(v30, v31);
      v29 = v30 - v31;
      if (v28)
      {
        goto LABEL_47;
      }

      goto LABEL_35;
    }

    if (v25)
    {
      goto LABEL_44;
    }

LABEL_40:
    v33 = v45;
    sub_1AE23C31C();
    v34 = v47;
    sub_1AE23C31C();
    sub_1ADE51EAC();
    v35 = v15;
    v36 = v46;
    v41 = sub_1AE23CCBC();
    v37 = *v40;
    (*v40)(v34, v36);
    v37(v33, v36);
    sub_1ADDCC35C(v14, v35);

    sub_1ADDCC35C(v11, v12);

    if (v41)
    {
      v9 = v43 + 3;
      v10 = v42 + 3;
      v8 = v44 - 1;
      if (v44 != 1)
      {
        continue;
      }
    }

    return;
  }

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

void sub_1ADE4AA04(uint64_t a1, uint64_t a2)
{
  v61 = sub_1AE23C32C();
  MEMORY[0x1EEE9AC00](v61);
  v62 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v8 = *(a1 + 16);
  if (v8 != *(a2 + 16) || !v8 || a1 == a2)
  {
    return;
  }

  v9 = 0;
  v53 = 0;
  v56 = a2 + 32;
  v57 = a1 + 32;
  v58 = (v6 + 8);
  v63 = &v53 - v7;
  v55 = v8;
  while (v9 != v8)
  {
    v10 = (v57 + 32 * v9);
    v12 = *v10;
    v11 = v10[1];
    v13 = v10[2];
    v64 = v10[3];
    v65 = v11;
    v14 = (v56 + 32 * v9);
    v15 = *v14;
    v16 = v14[1];
    v17 = v14[2];
    v18 = v14[3];
    if (v13)
    {
      if (!v17)
      {
        return;
      }

      v19 = *(v13 + 16);
      if (v19 != *(v17 + 16))
      {
LABEL_54:
        sub_1ADDD86D8(v12, v65);
        v52 = v64;
        sub_1ADE42C78(v13, v64);
        sub_1ADDD86D8(v15, v16);
        sub_1ADE42C78(v17, v18);
        sub_1ADE42C78(v17, v18);
        sub_1ADE42C78(v13, v52);
LABEL_55:

        sub_1ADE42CB8(v13, v64);
LABEL_56:
        sub_1ADDCC35C(v15, v16);
        sub_1ADE42CB8(v17, v18);
        sub_1ADDCC35C(v12, v65);
        sub_1ADE42CB8(v13, v64);
        return;
      }

      if (v19)
      {
        v20 = v13 == v17;
      }

      else
      {
        v20 = 1;
      }

      if (!v20)
      {
        v34 = (v13 + 32);
        v35 = (v17 + 32);
        while (v19)
        {
          if (*v34 != *v35)
          {
            goto LABEL_54;
          }

          ++v34;
          ++v35;
          if (!--v19)
          {
            goto LABEL_14;
          }
        }

        __break(1u);
        break;
      }

LABEL_14:
      sub_1ADDD86D8(v12, v65);
      v21 = v64;
      sub_1ADE42C78(v13, v64);
      sub_1ADDD86D8(v15, v16);
      sub_1ADE42C78(v17, v18);
      sub_1ADE42C78(v17, v18);
      sub_1ADE42C78(v13, v21);
      sub_1ADE4E544(v21, v18);
      if ((v22 & 1) == 0)
      {
        goto LABEL_55;
      }

      v60 = v9;
      sub_1AE23C31C();
      v23 = v62;
      sub_1AE23C31C();
      sub_1ADE51EAC();
      v59 = v17;
      v24 = v61;
      v54 = sub_1AE23CCBC();
      v25 = v15;
      v26 = *v58;
      v27 = v23;
      v28 = v63;
      (*v58)(v27, v24);
      v29 = v24;
      v17 = v59;
      v26(v28, v29);
      v30 = v64;
      v15 = v25;

      sub_1ADE42CB8(v13, v30);
      if ((v54 & 1) == 0)
      {
        goto LABEL_56;
      }
    }

    else
    {
      if (v17)
      {
        return;
      }

      v60 = v9;
      sub_1ADDD86D8(v12, v65);
      sub_1ADE42C78(0, v64);
      sub_1ADDD86D8(v15, v16);
      sub_1ADE42C78(0, v18);
    }

    v31 = v65 >> 62;
    v32 = v16 >> 62;
    if (v65 >> 62 == 3)
    {
      v33 = 0;
      if (!v12 && v65 == 0xC000000000000000 && v16 >> 62 == 3)
      {
        v33 = 0;
        if (!v15 && v16 == 0xC000000000000000)
        {
          goto LABEL_50;
        }
      }
    }

    else if (v31)
    {
      if (v31 == 1)
      {
        LODWORD(v33) = HIDWORD(v12) - v12;
        if (__OFSUB__(HIDWORD(v12), v12))
        {
          goto LABEL_62;
        }

        v33 = v33;
      }

      else
      {
        v37 = *(v12 + 16);
        v36 = *(v12 + 24);
        v38 = __OFSUB__(v36, v37);
        v33 = v36 - v37;
        if (v38)
        {
          goto LABEL_63;
        }
      }
    }

    else
    {
      v33 = BYTE6(v65);
    }

    if (v32 > 1)
    {
      if (v32 != 2)
      {
        if (v33)
        {
          goto LABEL_56;
        }

        goto LABEL_50;
      }

      v41 = *(v15 + 16);
      v40 = *(v15 + 24);
      v38 = __OFSUB__(v40, v41);
      v39 = v40 - v41;
      if (v38)
      {
        goto LABEL_60;
      }
    }

    else if (v32)
    {
      LODWORD(v39) = HIDWORD(v15) - v15;
      if (__OFSUB__(HIDWORD(v15), v15))
      {
        goto LABEL_61;
      }

      v39 = v39;
    }

    else
    {
      v39 = BYTE6(v16);
    }

    if (v33 != v39)
    {
      goto LABEL_56;
    }

    if (v33 >= 1)
    {
      sub_1ADDD86D8(v15, v16);
      v42 = v53;
      v43 = sub_1ADDD1544(v12, v65, v15, v16);
      v53 = v42;
      if ((v43 & 1) == 0)
      {
        goto LABEL_56;
      }
    }

LABEL_50:
    sub_1AE23C31C();
    v44 = v62;
    sub_1AE23C31C();
    sub_1ADE51EAC();
    v45 = v16;
    v46 = v17;
    v47 = v61;
    LODWORD(v59) = sub_1AE23CCBC();
    v48 = v15;
    v49 = *v58;
    v50 = v44;
    v51 = v63;
    (*v58)(v50, v47);
    v49(v51, v47);
    sub_1ADDCC35C(v48, v45);
    sub_1ADE42CB8(v46, v18);
    sub_1ADDCC35C(v12, v65);
    sub_1ADE42CB8(v13, v64);
    if (v59)
    {
      v9 = v60 + 1;
      v8 = v55;
      if (v60 + 1 != v55)
      {
        continue;
      }
    }

    return;
  }

  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
}

uint64_t sub_1ADE4AF74(uint64_t a1, uint64_t a2)
{
  v33[3] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = 0;
    v4 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v7 = *(v4 - 1);
      v6 = *v4;
      v9 = *(i - 1);
      v8 = *i;
      v10 = *v4 >> 62;
      v11 = *i >> 62;
      if (v10 == 3)
      {
        break;
      }

      if (v10 > 1)
      {
        if (v10 == 2)
        {
          v20 = *(v7 + 16);
          v19 = *(v7 + 24);
          v17 = __OFSUB__(v19, v20);
          v13 = v19 - v20;
          if (v17)
          {
            goto LABEL_62;
          }

          goto LABEL_28;
        }

        v13 = 0;
        if (v11 <= 1)
        {
          goto LABEL_29;
        }
      }

      else if (v10)
      {
        LODWORD(v13) = HIDWORD(v7) - v7;
        if (__OFSUB__(HIDWORD(v7), v7))
        {
          goto LABEL_63;
        }

        v13 = v13;
        if (v11 <= 1)
        {
LABEL_29:
          if (v11)
          {
            LODWORD(v18) = HIDWORD(v9) - v9;
            if (__OFSUB__(HIDWORD(v9), v9))
            {
              __break(1u);
LABEL_61:
              __break(1u);
LABEL_62:
              __break(1u);
LABEL_63:
              __break(1u);
LABEL_64:
              __break(1u);
LABEL_65:
              __break(1u);
LABEL_66:
              __break(1u);
LABEL_67:
              __break(1u);
            }

            v18 = v18;
          }

          else
          {
            v18 = BYTE6(v8);
          }

          goto LABEL_33;
        }
      }

      else
      {
        v13 = BYTE6(v6);
        if (v11 <= 1)
        {
          goto LABEL_29;
        }
      }

LABEL_22:
      if (v11 != 2)
      {
        if (v13)
        {
          return 0;
        }

        goto LABEL_6;
      }

      v16 = *(v9 + 16);
      v15 = *(v9 + 24);
      v17 = __OFSUB__(v15, v16);
      v18 = v15 - v16;
      if (v17)
      {
        goto LABEL_61;
      }

LABEL_33:
      if (v13 != v18)
      {
        return 0;
      }

      if (v13 < 1)
      {
        goto LABEL_6;
      }

      if (v10 > 1)
      {
        if (v10 == 2)
        {
          v31 = v3;
          v21 = *(v7 + 16);
          v30 = *(v7 + 24);
          sub_1ADDD86D8(v7, v6);
          sub_1ADDD86D8(v9, v8);
          v22 = sub_1AE23BB7C();
          if (v22)
          {
            v23 = sub_1AE23BBAC();
            if (__OFSUB__(v21, v23))
            {
              goto LABEL_66;
            }

            v22 += v21 - v23;
          }

          if (__OFSUB__(v30, v21))
          {
            goto LABEL_65;
          }

          sub_1AE23BB9C();
          v24 = v22;
          v25 = v9;
          v26 = v8;
          v3 = v31;
          goto LABEL_54;
        }

        memset(v33, 0, 14);
        sub_1ADDD86D8(v7, v6);
        sub_1ADDD86D8(v9, v8);
      }

      else
      {
        if (v10)
        {
          if (v7 >> 32 < v7)
          {
            goto LABEL_64;
          }

          sub_1ADDD86D8(v7, v6);
          sub_1ADDD86D8(v9, v8);
          v27 = sub_1AE23BB7C();
          if (v27)
          {
            v28 = sub_1AE23BBAC();
            if (__OFSUB__(v7, v28))
            {
              goto LABEL_67;
            }

            v27 += v7 - v28;
          }

          sub_1AE23BB9C();
          v24 = v27;
          v25 = v9;
          v26 = v8;
LABEL_54:
          sub_1ADDD8820(v24, v25, v26, v33);
          sub_1ADDCC35C(v9, v8);
          sub_1ADDCC35C(v7, v6);
          if ((v33[0] & 1) == 0)
          {
            return 0;
          }

          goto LABEL_6;
        }

        v33[0] = *(v4 - 1);
        LOWORD(v33[1]) = v6;
        BYTE2(v33[1]) = BYTE2(v6);
        BYTE3(v33[1]) = BYTE3(v6);
        BYTE4(v33[1]) = BYTE4(v6);
        BYTE5(v33[1]) = BYTE5(v6);
        sub_1ADDD86D8(v7, v6);
        sub_1ADDD86D8(v9, v8);
      }

      sub_1ADDD8820(v33, v9, v8, &v32);
      sub_1ADDCC35C(v9, v8);
      sub_1ADDCC35C(v7, v6);
      if (!v32)
      {
        return 0;
      }

LABEL_6:
      v4 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    if (v7)
    {
      v12 = 0;
    }

    else
    {
      v12 = v6 == 0xC000000000000000;
    }

    v13 = 0;
    v14 = v12 && *i >> 62 == 3;
    if (v14 && !v9 && v8 == 0xC000000000000000)
    {
      goto LABEL_6;
    }

LABEL_28:
    if (v11 <= 1)
    {
      goto LABEL_29;
    }

    goto LABEL_22;
  }

  return 1;
}

void sub_1ADE4B380(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AE23C32C();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v27[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v27[-v9];
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16) && v11 && a1 != a2)
  {
    v12 = (v8 + 8);
    v13 = (a2 + 72);
    v14 = a1 + 40;
    while (1)
    {
      v16 = *(v14 + 16);
      v15 = *(v14 + 24);
      v17 = *(v14 + 32);
      v19 = *(v13 - 2);
      v18 = *(v13 - 1);
      v20 = *v13;
      if (*(v14 + 8))
      {
        if ((*(v13 - 24) & 1) == 0)
        {
          return;
        }
      }

      else
      {
        if (*(v13 - 24))
        {
          return;
        }

        if (*(v14 - 8) != *(v13 - 5))
        {
          return;
        }

        if (*v14 != *(v13 - 4))
        {
          return;
        }

        v31 = *(v14 + 16);
        v32 = v15;
        v29 = v19;
        v30 = v18;
        v28 = v20;
        sub_1AE23C31C();
        sub_1AE23C31C();
        sub_1ADE51EAC();
        v21 = sub_1AE23CCBC();
        v22 = *v12;
        (*v12)(v6, v4);
        v22(v10, v4);
        LOBYTE(v20) = v28;
        v19 = v29;
        v18 = v30;
        v16 = v31;
        v15 = v32;
        if ((v21 & 1) == 0)
        {
          return;
        }
      }

      if (v17)
      {
        if ((v20 & 1) == 0)
        {
          return;
        }
      }

      else
      {
        if (v20)
        {
          return;
        }

        if (v16 != v19)
        {
          return;
        }

        if (v15 != v18)
        {
          return;
        }

        sub_1AE23C31C();
        sub_1AE23C31C();
        sub_1ADE51EAC();
        v23 = sub_1AE23CCBC();
        v24 = *v12;
        (*v12)(v6, v4);
        v24(v10, v4);
        if ((v23 & 1) == 0)
        {
          return;
        }
      }

      sub_1AE23C31C();
      sub_1AE23C31C();
      sub_1ADE51EAC();
      v25 = sub_1AE23CCBC();
      v26 = *v12;
      (*v12)(v6, v4);
      v26(v10, v4);
      if (v25)
      {
        v14 += 48;
        v13 += 48;
        if (--v11)
        {
          continue;
        }
      }

      return;
    }
  }
}

void sub_1ADE4B64C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AE23C32C();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v83 = &v70 - v9;
  v10 = *(a2 + 16);
  v92 = *(a1 + 16);
  if (v92 == v10 && v92 && a1 != a2)
  {
    v11 = (a1 + 32);
    v12 = (a2 + 32);
    v78 = (v8 + 8);
    v72 = v4;
    v71 = v6;
    while (v92)
    {
      v13 = *v11;
      v14 = *v12;
      if (*v11 == *v12)
      {
      }

      else
      {
        v16 = *(v13 + 16);
        v15 = *(v13 + 24);
        v18 = *(v13 + 32);
        v17 = *(v13 + 40);
        v20 = *(v13 + 48);
        v19 = *(v13 + 56);
        v21 = *(v13 + 64);
        v23 = *(v14 + 16);
        v22 = *(v14 + 24);
        v25 = *(v14 + 32);
        v24 = *(v14 + 40);
        v27 = *(v14 + 48);
        v26 = *(v14 + 56);
        v28 = *(v14 + 64);
        v89 = v20;
        v82 = v18;
        v90 = v26;
        v85 = v27;
        v91 = v24;
        v87 = v22;
        v88 = v25;
        v86 = v23;
        if (v21 == 255)
        {
          v52 = v16;
          v53 = v15;
          if (v28 != 255)
          {
            goto LABEL_20;
          }

          swift_retain_n();
          swift_retain_n();
          v54 = v52;
          v55 = v52;
          v56 = v53;
          v57 = v53;
          v58 = v82;
          v59 = v89;
          sub_1ADE51F04(v55, v57, v82, v17, v89, v19, 0xFFu);
          sub_1ADE51F04(v86, v87, v88, v91, v85, v90, 0xFFu);
          sub_1ADE52030(v54, v56, v58, v17, v59, v19, 0xFFu);
        }

        else
        {
          if (v28 == 255)
          {
            v52 = v16;
            v53 = v15;
LABEL_20:
            v84 = v28;
            v64 = v21;
            swift_retain_n();
            swift_retain_n();
            v65 = v52;
            v66 = v53;
            v67 = v82;
            sub_1ADE51F04(v52, v53, v82, v17, v89, v19, v64);
            v68 = v90;
            v69 = v85;
            sub_1ADE51F04(v86, v87, v88, v91, v85, v90, v84);
            sub_1ADE52030(v65, v66, v67, v17, v89, v19, v64);
            sub_1ADE52030(v86, v87, v88, v91, v69, v68, v84);
LABEL_21:

            return;
          }

          v95[0] = v23;
          v95[1] = v22;
          v95[2] = v25;
          v95[3] = v24;
          v95[4] = v27;
          v95[5] = v26;
          v96 = v28;
          v93[0] = v16;
          v93[1] = v15;
          v93[2] = v18;
          v93[3] = v17;
          v93[4] = v20;
          v93[5] = v19;
          v94 = v21;
          v80 = v16;
          v29 = v15;
          v81 = v19;
          v79 = v21;
          v84 = v28;
          swift_retain_n();
          swift_retain_n();
          v73 = v29;
          v30 = v17;
          v76 = v12;
          v31 = v17;
          v74 = v17;
          v32 = v79;
          sub_1ADE51F04(v16, v29, v18, v30, v20, v19, v79);
          v33 = v87;
          v34 = v85;
          sub_1ADE51F04(v86, v87, v88, v91, v85, v90, v84);

          v35 = v29;
          v36 = v18;
          sub_1ADE51F04(v80, v35, v18, v31, v20, v81, v32);
          v37 = v86;
          v38 = v33;
          v39 = v33;
          v77 = v11;
          v40 = v88;
          v41 = v91;
          v42 = v34;
          v43 = v34;
          v44 = v90;
          v45 = v84;
          sub_1ADE51F04(v86, v38, v88, v91, v42, v90, v84);
          v75 = sub_1ADE9280C(v93, v95);
          sub_1ADE52030(v37, v39, v40, v41, v43, v44, v45);
          v46 = v80;
          v47 = v73;
          v48 = v36;
          v49 = v74;
          v12 = v76;
          v50 = v81;
          LOBYTE(v39) = v79;
          sub_1ADE52030(v80, v73, v48, v74, v89, v81, v79);

          v51 = v40;
          v11 = v77;
          sub_1ADE52030(v37, v87, v51, v91, v85, v90, v84);
          sub_1ADE52030(v46, v47, v82, v49, v89, v50, v39);
          if ((v75 & 1) == 0)
          {
            goto LABEL_21;
          }
        }

        v4 = v72;
        v6 = v71;
      }

      v60 = v83;
      sub_1AE23C31C();
      sub_1AE23C31C();
      sub_1ADE51EAC();
      v61 = sub_1AE23CCBC();

      v62 = *v78;
      (*v78)(v6, v4);
      v62(v60, v4);
      if (v61)
      {
        v63 = v92;
        ++v11;
        ++v12;
        --v92;
        if (v63 != 1)
        {
          continue;
        }
      }

      return;
    }

    __break(1u);
  }
}

void sub_1ADE4BC88(uint64_t a1, uint64_t a2)
{
  v59 = sub_1AE23C32C();
  MEMORY[0x1EEE9AC00](v59);
  v60 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v49 - v7;
  v9 = *(a1 + 16);
  if (v9 == *(a2 + 16) && v9 && a1 != a2)
  {
    v10 = 0;
    v11 = a1 + 32;
    v12 = a2 + 32;
    v56 = (v6 + 8);
    v51 = a1 + 32;
    v52 = v9;
    v50 = a2 + 32;
    while (v10 != v9)
    {
      v13 = (v11 + 48 * v10);
      v14 = *v13;
      v15 = *(v13 + 1);
      v16 = *(v13 + 2);
      v17 = *(v13 + 40);
      v18 = (v12 + 48 * v10);
      v19 = *v18;
      v21 = *(v18 + 1);
      v20 = *(v18 + 2);
      v22 = *(v18 + 40);
      v53 = v10;
      v55 = v20;
      if (v17)
      {
        if ((v22 & 1) == 0)
        {
          return;
        }
      }

      else
      {
        if (v22)
        {
          return;
        }

        v24 = *(v13 + 3);
        v23 = *(v13 + 4);
        if (v24 != *(v18 + 3) || v23 != *(v18 + 4))
        {
          return;
        }

        sub_1AE23C31C();
        v58 = v14;
        v26 = v60;
        sub_1AE23C31C();
        sub_1ADE51EAC();
        v27 = v59;
        v28 = sub_1AE23CCBC();
        v29 = *v56;
        v30 = v26;
        v14 = v58;
        (*v56)(v30, v27);
        v29(v8, v27);
        if ((v28 & 1) == 0)
        {
          goto LABEL_40;
        }
      }

      if (v14 != v19)
      {
        goto LABEL_40;
      }

      v54 = v16;
      v31 = *(v21 + 16);
      v57 = *(v15 + 16);
      if (v57 != v31)
      {
        goto LABEL_40;
      }

      if (v57)
      {
        v32 = v15 == v21;
      }

      else
      {
        v32 = 1;
      }

      if (!v32)
      {
        v39 = 0;
        v40 = (v15 + 40);
        v41 = (v21 + 40);
        while (v39 < *(v15 + 16))
        {
          if (v39 >= *(v21 + 16))
          {
            goto LABEL_44;
          }

          if (*(v40 - 1) != *(v41 - 1))
          {
            goto LABEL_40;
          }

          if (*v40 != *v41)
          {
            goto LABEL_40;
          }

          sub_1AE23C31C();
          v42 = v8;
          v43 = v60;
          sub_1AE23C31C();
          sub_1ADE51EAC();
          v44 = v59;
          v58 = sub_1AE23CCBC();
          v45 = v21;
          v46 = v15;
          v47 = *v56;
          v48 = v43;
          v8 = v42;
          (*v56)(v48, v44);
          v47(v42, v44);
          v15 = v46;
          v21 = v45;
          if ((v58 & 1) == 0)
          {
            goto LABEL_40;
          }

          ++v39;
          v40 += 2;
          v41 += 2;
          if (v57 == v39)
          {
            goto LABEL_23;
          }
        }

        __break(1u);
LABEL_44:
        __break(1u);
        break;
      }

LABEL_23:
      v33 = *(v54 + 16);
      if (v33 != *(v55 + 16))
      {
        goto LABEL_40;
      }

      if (v33 && v54 != v55)
      {
        v34 = 32;
        while (*(v54 + v34) == *(v55 + v34))
        {
          v34 += 4;
          if (!--v33)
          {
            goto LABEL_29;
          }
        }

LABEL_40:

        return;
      }

LABEL_29:
      sub_1AE23C31C();
      v35 = v60;
      sub_1AE23C31C();
      sub_1ADE51EAC();
      v36 = v59;
      v37 = sub_1AE23CCBC();
      v38 = *v56;
      (*v56)(v35, v36);
      v38(v8, v36);

      if (v37)
      {
        v9 = v52;
        v10 = v53 + 1;
        v12 = v50;
        v11 = v51;
        if (v53 + 1 != v52)
        {
          continue;
        }
      }

      return;
    }

    __break(1u);
  }
}

uint64_t sub_1ADE4C130(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AE23C32C();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &i - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &i - v9;
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
    return 0;
  }

  if (!v11 || a1 == a2)
  {
    return 1;
  }

  v12 = 0;
  v13 = a1 + 32;
  v14 = a2 + 32;
  v15 = (v8 + 8);
  v44 = a1 + 32;
  for (i = a2 + 32; ; v14 = i)
  {
    v16 = (v13 + 72 * v12);
    v51 = *(v16 + 64);
    v17 = v16[3];
    v49 = v16[2];
    v50 = v17;
    v18 = v16[1];
    v47 = *v16;
    v48 = v18;
    v19 = (v14 + 72 * v12);
    v56 = *(v19 + 64);
    v20 = v19[3];
    v54 = v19[2];
    v55 = v20;
    v21 = v19[1];
    v52 = *v19;
    v53 = v21;
    v45 = v12;
    if (v51)
    {
      if ((v56 & 1) == 0)
      {
        return 0;
      }

      sub_1ADE5218C(&v47, v46);
      result = sub_1ADE5218C(&v52, v46);
    }

    else
    {
      if ((v56 & 1) != 0 || v50 != v55)
      {
        return 0;
      }

      sub_1ADE5218C(&v47, v46);
      sub_1ADE5218C(&v52, v46);
      sub_1AE23C31C();
      sub_1AE23C31C();
      sub_1ADE51EAC();
      v23 = sub_1AE23CCBC();
      v24 = *v15;
      (*v15)(v6, v4);
      result = (v24)(v10, v4);
      if ((v23 & 1) == 0)
      {
        goto LABEL_52;
      }
    }

    if (v47 != v52)
    {
      goto LABEL_52;
    }

    v25 = *(*(&v47 + 1) + 16);
    if (v25 != *(*(&v52 + 1) + 16))
    {
      goto LABEL_52;
    }

    if (v25 && *(&v47 + 1) != *(&v52 + 1))
    {
      v26 = (*(&v47 + 1) + 40);
      v27 = (*(&v52 + 1) + 40);
      while (*(v26 - 1) == *(v27 - 1))
      {
        v28 = *v26;
        v26 += 2;
        if (v28 != *v27)
        {
          break;
        }

        sub_1AE23C31C();
        sub_1AE23C31C();
        sub_1ADE51EAC();
        v29 = sub_1AE23CCBC();
        v30 = *v15;
        (*v15)(v6, v4);
        result = (v30)(v10, v4);
        if ((v29 & 1) == 0)
        {
          break;
        }

        v27 += 2;
        if (!--v25)
        {
          goto LABEL_20;
        }
      }

      goto LABEL_52;
    }

LABEL_20:
    v31 = *(v48 + 16);
    if (v31 != *(v53 + 16))
    {
      goto LABEL_52;
    }

    if (v31 && v48 != v53)
    {
      v32 = (v48 + 32);
      v33 = (v53 + 32);
      while (*v32 == *v33)
      {
        ++v32;
        ++v33;
        if (!--v31)
        {
          goto LABEL_26;
        }
      }

LABEL_52:
      sub_1ADE521E8(&v52);
      sub_1ADE521E8(&v47);
      return 0;
    }

LABEL_26:
    v34 = *(*(&v48 + 1) + 16);
    if (v34 != *(*(&v53 + 1) + 16))
    {
      goto LABEL_52;
    }

    if (v34 && *(&v48 + 1) != *(&v53 + 1))
    {
      break;
    }

LABEL_32:
    if (BYTE8(v54))
    {
      if (v54)
      {
        if (v54 == 1)
        {
          if (v49 != 1)
          {
            goto LABEL_52;
          }
        }

        else if (v49 != 2)
        {
          goto LABEL_52;
        }
      }

      else if (v49)
      {
        goto LABEL_52;
      }
    }

    else if (v49 != v54)
    {
      goto LABEL_52;
    }

    sub_1AE23C31C();
    sub_1AE23C31C();
    sub_1ADE51EAC();
    v41 = sub_1AE23CCBC();
    v42 = *v15;
    (*v15)(v6, v4);
    v42(v10, v4);
    sub_1ADE521E8(&v52);
    sub_1ADE521E8(&v47);
    if ((v41 & 1) == 0)
    {
      return 0;
    }

    v12 = v45 + 1;
    if (v45 + 1 == v11)
    {
      return 1;
    }

    v13 = v44;
  }

  v36 = (*(&v48 + 1) + 40);
  v37 = (*(&v53 + 1) + 40);
  while (v34)
  {
    if (*(v36 - 1) != *(v37 - 1))
    {
      goto LABEL_52;
    }

    v38 = *v36;
    v36 += 2;
    if (v38 != *v37)
    {
      goto LABEL_52;
    }

    sub_1AE23C31C();
    sub_1AE23C31C();
    sub_1ADE51EAC();
    v39 = sub_1AE23CCBC();
    v40 = *v15;
    (*v15)(v6, v4);
    result = (v40)(v10, v4);
    if ((v39 & 1) == 0)
    {
      goto LABEL_52;
    }

    v37 += 2;
    if (!--v34)
    {
      goto LABEL_32;
    }
  }

  __break(1u);
  return result;
}

void sub_1ADE4C634(uint64_t a1, uint64_t a2)
{
  v35 = sub_1AE23C32C();
  MEMORY[0x1EEE9AC00](v35);
  v34 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v33 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8 == *(a2 + 16) && v8 && a1 != a2)
  {
    v9 = 0;
    v31 = a2;
    v32 = (v6 + 8);
    v30 = a1;
    while (1)
    {
      v10 = a1 + v9;
      v11 = a2 + v9;
      if (*(a1 + v9 + 32) != *(a2 + v9 + 32))
      {
        break;
      }

      v13 = *(v10 + 40);
      v12 = *(v10 + 48);
      v14 = *(v10 + 56);
      v15 = *(v10 + 64);
      v17 = *(v11 + 40);
      v16 = *(v11 + 48);
      v18 = *(v11 + 56);
      v19 = *(v11 + 64);

      if ((sub_1ADE4C8D8(v13, v17) & 1) == 0)
      {
        goto LABEL_17;
      }

      if (v15)
      {
        if ((v19 & 1) == 0)
        {
          goto LABEL_17;
        }
      }

      else if ((v19 & 1) != 0 || v12 != v16 || v14 != v18 || (v20 = v33, sub_1AE23C31C(), v21 = v34, sub_1AE23C31C(), sub_1ADE51EAC(), v22 = v35, v23 = sub_1AE23CCBC(), v24 = *v32, (*v32)(v21, v22), v24(v20, v22), (v23 & 1) == 0))
      {
LABEL_17:

        return;
      }

      v25 = v33;
      sub_1AE23C31C();
      v26 = v34;
      sub_1AE23C31C();
      sub_1ADE51EAC();
      v27 = v35;
      v28 = sub_1AE23CCBC();

      v29 = *v32;
      (*v32)(v26, v27);
      v29(v25, v27);
      if (v28)
      {
        v9 += 40;
        --v8;
        a1 = v30;
        a2 = v31;
        if (v8)
        {
          continue;
        }
      }

      return;
    }
  }
}

uint64_t sub_1ADE4C8D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AE23C32C();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v26 - v9;
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
    return 0;
  }

  if (!v11 || a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 32) != *(a2 + 32))
  {
    return 0;
  }

  v12 = (a2 + 40);
  v13 = (a1 + 40);
  v14 = (v8 + 8);
  while (1)
  {
    v15 = *v13;
    v16 = *v12;
    if (!*v13)
    {
      if (v16)
      {
        return 0;
      }

      goto LABEL_19;
    }

    if (!v16)
    {
      return 0;
    }

    if (v15 == v16)
    {
      swift_retain_n();
      swift_retain_n();
      goto LABEL_18;
    }

    v17 = *(v16 + 16);
    v27 = *(v15 + 16);
    v18 = ~v27 & 0xF000000000000007;
    v28 = v17 & 0xF000000000000007;
    v29 = v17;

    if (!v18)
    {
      if (v28 != 0xF000000000000007)
      {
        break;
      }

      swift_retain_n();
      swift_retain_n();
      goto LABEL_17;
    }

    if (v28 == 0xF000000000000007)
    {
      break;
    }

    swift_retain_n();
    swift_retain_n();
    sub_1ADE51B2C(v29);
    v19 = v27;
    sub_1ADE51B2C(v27);
    LODWORD(v28) = sub_1AE1B7AA8(v19, v29);

    sub_1ADE51B48(v29);
    sub_1ADE51B48(v19);
    if ((v28 & 1) == 0)
    {
      goto LABEL_25;
    }

LABEL_17:

LABEL_18:
    sub_1AE23C31C();
    sub_1AE23C31C();
    sub_1ADE51EAC();
    LODWORD(v29) = sub_1AE23CCBC();
    v20 = *v14;
    (*v14)(v6, v4);
    v20(v10, v4);

    if ((v29 & 1) == 0)
    {
      goto LABEL_26;
    }

LABEL_19:
    sub_1AE23C31C();
    sub_1AE23C31C();
    sub_1ADE51EAC();
    v21 = sub_1AE23CCBC();

    v22 = *v14;
    (*v14)(v6, v4);
    v22(v10, v4);
    if ((v21 & 1) == 0)
    {
      return 0;
    }

    if (!--v11)
    {
      return 1;
    }

    result = 0;
    v24 = *(v13 + 2);
    v25 = *(v12 + 2);
    v13 += 2;
    v12 += 2;
    if (v24 != v25)
    {
      return result;
    }
  }

  swift_retain_n();
  swift_retain_n();
LABEL_25:

LABEL_26:

  return 0;
}

void sub_1ADE4CC60(uint64_t a1, uint64_t a2)
{
  v48 = sub_1AE23C32C();
  v4 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v50 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v49 = &v38 - v7;
  v8 = type metadata accessor for Proto4_Value.OneOf_TaggedOneOf(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v39 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA020, &qword_1AE241800);
  MEMORY[0x1EEE9AC00](v41);
  v12 = &v38 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA028, &qword_1AE241808);
  MEMORY[0x1EEE9AC00](v13 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = *(a1 + 16);
  if (v17 == *(a2 + 16) && v17 && a1 != a2)
  {
    v42 = &v38 - v15;
    v43 = v8;
    v38 = v16;
    v18 = (a1 + 32);
    v19 = (a2 + 32);
    v40 = (v9 + 48);
    v44 = (v4 + 8);
    while (v17)
    {
      v20 = *v18;
      v21 = *v19;
      if (*v18 == *v19)
      {
      }

      else
      {
        v45 = v18;
        v46 = v17;
        v22 = OBJC_IVAR____TtCV9Coherence12Proto4_ValueP33_4A59E951A5EB9D63730C3E01A1047EAB13_StorageClass__taggedOneOf;
        swift_beginAccess();
        v23 = v8;
        v24 = v42;
        sub_1ADDCEE40(v20 + v22, v42, &qword_1EB5BA028, &qword_1AE241808);
        v25 = OBJC_IVAR____TtCV9Coherence12Proto4_ValueP33_4A59E951A5EB9D63730C3E01A1047EAB13_StorageClass__taggedOneOf;
        swift_beginAccess();
        v26 = *(v41 + 48);
        sub_1ADDCEE40(v24, v12, &qword_1EB5BA028, &qword_1AE241808);
        sub_1ADDCEE40(v21 + v25, &v12[v26], &qword_1EB5BA028, &qword_1AE241808);
        v27 = *v40;
        v28 = (*v40)(v12, 1, v23);
        v47 = v20;
        if (v28 == 1)
        {
          swift_retain_n();
          swift_retain_n();
          sub_1ADDCEDE0(v24, &qword_1EB5BA028, &qword_1AE241808);
          if (v27(&v12[v26], 1, v23) != 1)
          {
            goto LABEL_20;
          }

          sub_1ADDCEDE0(v12, &qword_1EB5BA028, &qword_1AE241808);
        }

        else
        {
          v29 = v38;
          sub_1ADDCEE40(v12, v38, &qword_1EB5BA028, &qword_1AE241808);
          if (v27(&v12[v26], 1, v23) == 1)
          {
            swift_retain_n();
            swift_retain_n();
            sub_1ADDCEDE0(v42, &qword_1EB5BA028, &qword_1AE241808);
            sub_1ADDE52A0(v29, type metadata accessor for Proto4_Value.OneOf_TaggedOneOf);
LABEL_20:
            sub_1ADDCEDE0(v12, &qword_1EB5BA020, &qword_1AE241800);
LABEL_21:

            return;
          }

          v30 = v39;
          sub_1ADE5223C(&v12[v26], v39, type metadata accessor for Proto4_Value.OneOf_TaggedOneOf);
          swift_retain_n();
          swift_retain_n();
          v31 = sub_1ADE92804(v29, v30);
          sub_1ADDE52A0(v30, type metadata accessor for Proto4_Value.OneOf_TaggedOneOf);
          sub_1ADDCEDE0(v42, &qword_1EB5BA028, &qword_1AE241808);
          sub_1ADDE52A0(v29, type metadata accessor for Proto4_Value.OneOf_TaggedOneOf);
          sub_1ADDCEDE0(v12, &qword_1EB5BA028, &qword_1AE241808);
          if ((v31 & 1) == 0)
          {
            goto LABEL_21;
          }
        }

        v18 = v45;
        v17 = v46;
      }

      v32 = v49;
      sub_1AE23C31C();
      v33 = v50;
      sub_1AE23C31C();
      sub_1ADE51EAC();
      v34 = v48;
      v35 = sub_1AE23CCBC();

      v36 = *v44;
      (*v44)(v33, v34);
      v36(v32, v34);
      if (v35)
      {
        ++v18;
        ++v19;
        v37 = v17-- == 1;
        v8 = v43;
        if (!v37)
        {
          continue;
        }
      }

      return;
    }

    __break(1u);
  }
}

uint64_t sub_1ADE4D280(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Timestamp(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v19 - v9;
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
LABEL_12:
    v17 = 0;
    return v17 & 1;
  }

  if (v11 && a1 != a2)
  {
    v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v13 = a1 + v12;
    v14 = a2 + v12;
    v15 = *(v8 + 72);
    while (1)
    {
      sub_1ADDF8030(v13, v10, type metadata accessor for Timestamp);
      sub_1ADDF8030(v14, v6, type metadata accessor for Timestamp);
      if (*&v10[*(v4 + 20)] != *&v6[*(v4 + 20)])
      {
        break;
      }

      v16 = type metadata accessor for Replica(0);
      if (*&v10[*(v16 + 20)] != *&v6[*(v16 + 20)])
      {
        break;
      }

      v17 = sub_1AE23BF8C();
      sub_1ADDE52A0(v6, type metadata accessor for Timestamp);
      sub_1ADDE52A0(v10, type metadata accessor for Timestamp);
      if (v17)
      {
        v14 += v15;
        v13 += v15;
        if (--v11)
        {
          continue;
        }
      }

      return v17 & 1;
    }

    sub_1ADDE52A0(v6, type metadata accessor for Timestamp);
    sub_1ADDE52A0(v10, type metadata accessor for Timestamp);
    goto LABEL_12;
  }

  v17 = 1;
  return v17 & 1;
}

void sub_1ADE4D4A4(uint64_t a1, uint64_t a2)
{
  v102 = sub_1AE23C32C();
  MEMORY[0x1EEE9AC00](v102);
  v103 = &v81 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v81 - v7;
  v9 = *(a1 + 16);
  if (v9 == *(a2 + 16) && v9 && a1 != a2)
  {
    v98 = (v6 + 8);
    v10 = (a1 + 48);
    v11 = (a2 + 48);
    while (v9)
    {
      v12 = *(v10 - 2);
      v13 = *(v10 - 1);
      v14 = *v10;
      v15 = *(v11 - 2);
      v16 = *(v11 - 1);
      v17 = *v11;
      v104 = v13;
      v18 = v12 == v15 && v13 == v16;
      if (!v18 && (sub_1AE23E00C() & 1) == 0)
      {
        return;
      }

      v100 = v10;
      v101 = v9;
      v99 = v11;
      if (v14)
      {
        if (!v17)
        {
          return;
        }

        v97 = v16;
        v96 = v14;
        if (v14 == v17)
        {
        }

        else
        {
          v20 = *(v14 + 16);
          v19 = *(v14 + 24);
          v22 = *(v14 + 32);
          v21 = *(v14 + 40);
          v24 = *(v14 + 48);
          v23 = *(v14 + 56);
          v25 = *(v14 + 64);
          v27 = *(v17 + 16);
          v26 = *(v17 + 24);
          v29 = *(v17 + 32);
          v28 = *(v17 + 40);
          v30 = *(v17 + 48);
          v31 = *(v17 + 56);
          v32 = *(v17 + 64);
          v90 = v23;
          v89 = v22;
          v88 = v21;
          v87 = v19;
          v95 = v20;
          v86 = v31;
          v83 = v30;
          v94 = v28;
          v93 = v29;
          v92 = v26;
          v91 = v27;
          if (v25 == 255)
          {
            if (v32 != 255)
            {
LABEL_27:
              v85 = v32;
              v72 = v25;

              v73 = v95;
              v74 = v87;
              v75 = v89;
              v76 = v88;
              v77 = v24;
              v78 = v90;
              sub_1ADE51F04(v95, v87, v89, v88, v24, v90, v72);
              v79 = v83;
              v80 = v86;
              sub_1ADE51F04(v91, v92, v93, v94, v83, v86, v85);
              sub_1ADE52030(v73, v74, v75, v76, v77, v78, v72);
              sub_1ADE52030(v91, v92, v93, v94, v79, v80, v85);
LABEL_28:

              return;
            }

            v55 = v95;
            v56 = v87;
            v57 = v89;
            v58 = v88;
            v59 = v24;
            v60 = v24;
            v61 = v90;
            sub_1ADE51F04(v95, v87, v89, v88, v60, v90, 0xFFu);
            sub_1ADE51F04(v91, v92, v93, v94, v83, v86, 0xFFu);
            sub_1ADE52030(v55, v56, v57, v58, v59, v61, 0xFFu);
          }

          else
          {
            if (v32 == 255)
            {
              goto LABEL_27;
            }

            v107[0] = v27;
            v107[1] = v26;
            v107[2] = v29;
            v107[3] = v28;
            v107[4] = v30;
            v107[5] = v31;
            v108 = v32;
            v105[0] = v20;
            v105[1] = v19;
            v105[2] = v22;
            v105[3] = v21;
            v105[4] = v24;
            v105[5] = v23;
            v106 = v25;
            v85 = v32;
            v33 = v29;
            v34 = v24;
            v84 = v24;
            v35 = v30;
            v82 = v25;
            sub_1ADE51F04(v20, v19, v22, v21, v34, v23, v25);
            v36 = v27;
            v37 = v92;
            v38 = v33;
            v39 = v94;
            sub_1ADE51F04(v36, v92, v38, v94, v35, v31, v85);

            v40 = v87;
            sub_1ADE51F04(v95, v87, v89, v88, v84, v90, v82);
            v41 = v91;
            v42 = v37;
            v43 = v93;
            v44 = v35;
            v45 = v86;
            v46 = v85;
            sub_1ADE51F04(v91, v42, v93, v39, v44, v86, v85);
            v81 = sub_1ADE9280C(v105, v107);
            v47 = v41;
            v48 = v92;
            v49 = v43;
            v50 = v83;
            sub_1ADE52030(v47, v92, v49, v39, v83, v45, v46);
            v51 = v40;
            v52 = v89;
            v53 = v88;
            v54 = v90;
            LOBYTE(v45) = v82;
            sub_1ADE52030(v95, v51, v89, v88, v84, v90, v82);
            sub_1ADE52030(v91, v48, v93, v94, v50, v86, v85);
            sub_1ADE52030(v95, v87, v52, v53, v84, v54, v45);
            if ((v81 & 1) == 0)
            {
              goto LABEL_28;
            }
          }
        }

        sub_1AE23C31C();
        v62 = v103;
        sub_1AE23C31C();
        sub_1ADE51EAC();
        v63 = v102;
        v64 = sub_1AE23CCBC();
        v65 = *v98;
        (*v98)(v62, v63);
        v65(v8, v63);
        if ((v64 & 1) == 0)
        {
          goto LABEL_28;
        }
      }

      else
      {
        if (v17)
        {
          return;
        }
      }

      sub_1AE23C31C();
      v66 = v8;
      v67 = v103;
      sub_1AE23C31C();
      sub_1ADE51EAC();
      v68 = v102;
      v69 = sub_1AE23CCBC();
      v70 = *v98;
      v71 = v67;
      v8 = v66;
      (*v98)(v71, v68);
      v70(v66, v68);

      if (v69)
      {
        v10 = v100 + 3;
        v11 = v99 + 3;
        v9 = v101 - 1;
        if (v101 != 1)
        {
          continue;
        }
      }

      return;
    }

    __break(1u);
  }
}

uint64_t sub_1ADE4DC50(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_1AE23E00C() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

void sub_1ADE4DD20(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t), void (*a5)(uint64_t))
{
  v30 = a4;
  v31 = a5;
  v29 = a3;
  v7 = sub_1AE23C32C();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v27[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v27[-v12];
  v14 = *(a1 + 16);
  if (v14 != *(a2 + 16) || !v14 || a1 == a2)
  {
    return;
  }

  v15 = a1 + 32;
  v16 = a2 + 32;
  v32 = v7;
  v33 = (v11 + 8);
  while (1)
  {
    if (*v15 == *v16)
    {

      goto LABEL_13;
    }

    v17 = *(*v15 + 16);
    v18 = *(*v16 + 16);
    v19 = v18 & 0xF000000000000007;
    if ((~v17 & 0xF000000000000007) == 0)
    {
      if (v19 != 0xF000000000000007)
      {
        break;
      }

      swift_retain_n();
      swift_retain_n();
      v7 = v32;
      goto LABEL_12;
    }

    if (v19 == 0xF000000000000007)
    {
      break;
    }

    swift_retain_n();
    swift_retain_n();
    v20 = v13;
    v21 = v9;
    v22 = v29;
    v29(v18);
    v22(v17);
    v9 = v21;
    v13 = v20;
    v28 = v30(v17, v18);

    v23 = v18;
    v24 = v31;
    v31(v23);
    v24(v17);
    v7 = v32;
    if ((v28 & 1) == 0)
    {
      goto LABEL_18;
    }

LABEL_12:

LABEL_13:
    sub_1AE23C31C();
    sub_1AE23C31C();
    sub_1ADE51EAC();
    v25 = sub_1AE23CCBC();

    v26 = *v33;
    (*v33)(v9, v7);
    v26(v13, v7);
    if (v25)
    {
      v15 += 8;
      v16 += 8;
      if (--v14)
      {
        continue;
      }
    }

    return;
  }

  swift_retain_n();
  swift_retain_n();
LABEL_18:
}

void sub_1ADE4E034(uint64_t a1, uint64_t a2)
{
  v57 = sub_1AE23C32C();
  MEMORY[0x1EEE9AC00](v57);
  v56 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v55 = &v52 - v7;
  v8 = *(a1 + 16);
  if (v8 != *(a2 + 16) || !v8 || a1 == a2)
  {
    return;
  }

  v53 = (v6 + 8);
  v54 = 0;
  v9 = (a2 + 64);
  v10 = (a1 + 64);
  while (v8)
  {
    if (*(v10 - 4) != *(v9 - 4))
    {
      return;
    }

    v11 = *(v10 - 2);
    v12 = *(v10 - 1);
    v13 = *v10;
    v63 = *(v10 - 3);
    v64 = v12;
    v15 = *(v9 - 3);
    v14 = *(v9 - 2);
    v17 = *(v9 - 1);
    v16 = *v9;
    v18 = v11 >> 62;
    v61 = *v9;
    v62 = v14;
    v19 = v14 >> 62;
    if (v11 >> 62 == 3)
    {
      v20 = 0;
      if (!v63 && v11 == 0xC000000000000000 && v19 >= 3)
      {
        v20 = 0;
        if (!v15 && v62 == 0xC000000000000000)
        {
          sub_1ADDD86D8(0, 0xC000000000000000);
          sub_1ADDD86D8(v64, v13);
          v21 = 0;
          v22 = 0xC000000000000000;
          goto LABEL_35;
        }
      }
    }

    else if (v18)
    {
      if (v18 == 1)
      {
        LODWORD(v20) = HIDWORD(v63) - v63;
        if (__OFSUB__(HIDWORD(v63), v63))
        {
          goto LABEL_72;
        }

        v20 = v20;
      }

      else
      {
        v24 = *(v63 + 16);
        v23 = *(v63 + 24);
        v25 = __OFSUB__(v23, v24);
        v20 = v23 - v24;
        if (v25)
        {
          goto LABEL_73;
        }
      }
    }

    else
    {
      v20 = BYTE6(v11);
    }

    if (v19 > 1)
    {
      if (v19 != 2)
      {
        if (v20)
        {
          return;
        }

LABEL_34:
        sub_1ADDD86D8(v63, v11);
        sub_1ADDD86D8(v64, v13);
        v21 = v15;
        v22 = v62;
LABEL_35:
        sub_1ADDD86D8(v21, v22);
        sub_1ADDD86D8(v17, v16);
        goto LABEL_36;
      }

      v28 = *(v15 + 16);
      v27 = *(v15 + 24);
      v25 = __OFSUB__(v27, v28);
      v26 = v27 - v28;
      if (v25)
      {
        goto LABEL_69;
      }
    }

    else if (v19)
    {
      LODWORD(v26) = HIDWORD(v15) - v15;
      if (__OFSUB__(HIDWORD(v15), v15))
      {
        goto LABEL_68;
      }

      v26 = v26;
    }

    else
    {
      v26 = BYTE6(v62);
    }

    if (v20 != v26)
    {
      return;
    }

    if (v20 < 1)
    {
      goto LABEL_34;
    }

    v29 = v63;
    sub_1ADDD86D8(v63, v11);
    sub_1ADDD86D8(v64, v13);
    v30 = v62;
    sub_1ADDD86D8(v15, v62);
    sub_1ADDD86D8(v17, v16);
    sub_1ADDD86D8(v15, v30);
    v31 = v54;
    v32 = sub_1ADDD1544(v29, v11, v15, v30);
    v54 = v31;
    if ((v32 & 1) == 0)
    {
      goto LABEL_65;
    }

    v16 = v61;
LABEL_36:
    v33 = v13 >> 62;
    v34 = v16 >> 62;
    if (v13 >> 62 == 3)
    {
      v35 = 0;
      if (!v64 && v13 == 0xC000000000000000 && v16 >> 62 == 3)
      {
        v35 = 0;
        if (!v17 && v16 == 0xC000000000000000)
        {
          goto LABEL_62;
        }
      }

LABEL_49:
      if (v34 <= 1)
      {
        goto LABEL_50;
      }

      goto LABEL_55;
    }

    if (v33 == 2)
    {
      v37 = *(v64 + 16);
      v36 = *(v64 + 24);
      v25 = __OFSUB__(v36, v37);
      v35 = v36 - v37;
      if (v25)
      {
        goto LABEL_75;
      }

      goto LABEL_49;
    }

    if (v33 == 1)
    {
      LODWORD(v35) = HIDWORD(v64) - v64;
      if (__OFSUB__(HIDWORD(v64), v64))
      {
        goto LABEL_74;
      }

      v35 = v35;
      if (v34 <= 1)
      {
LABEL_50:
        if (v34)
        {
          LODWORD(v38) = HIDWORD(v17) - v17;
          if (__OFSUB__(HIDWORD(v17), v17))
          {
            goto LABEL_70;
          }

          v38 = v38;
        }

        else
        {
          v38 = BYTE6(v16);
        }

        goto LABEL_57;
      }
    }

    else
    {
      v35 = BYTE6(v13);
      if (v34 <= 1)
      {
        goto LABEL_50;
      }
    }

LABEL_55:
    if (v34 != 2)
    {
      if (v35)
      {
        goto LABEL_65;
      }

      goto LABEL_62;
    }

    v40 = *(v17 + 16);
    v39 = *(v17 + 24);
    v25 = __OFSUB__(v39, v40);
    v38 = v39 - v40;
    if (v25)
    {
      goto LABEL_71;
    }

LABEL_57:
    if (v35 != v38 || v35 >= 1 && (v41 = v61, sub_1ADDD86D8(v17, v61), v42 = v41, v43 = v54, v44 = sub_1ADDD1544(v64, v13, v17, v42), v54 = v43, (v44 & 1) == 0))
    {
LABEL_65:
      sub_1ADDCC35C(v15, v62);
      sub_1ADDCC35C(v17, v61);
      sub_1ADDCC35C(v63, v11);
      sub_1ADDCC35C(v64, v13);
      return;
    }

LABEL_62:
    v59 = v15;
    v60 = v11;
    v45 = v13;
    v46 = v8;
    v47 = v55;
    sub_1AE23C31C();
    v48 = v56;
    sub_1AE23C31C();
    sub_1ADE51EAC();
    v49 = v57;
    v58 = sub_1AE23CCBC();
    v50 = v17;
    v51 = *v53;
    (*v53)(v48, v49);
    v51(v47, v49);
    sub_1ADDCC35C(v59, v62);
    sub_1ADDCC35C(v50, v61);
    sub_1ADDCC35C(v63, v60);
    sub_1ADDCC35C(v64, v45);
    if (v58)
    {
      v9 += 5;
      v10 += 5;
      v8 = v46 - 1;
      if (v46 != 1)
      {
        continue;
      }
    }

    return;
  }

  __break(1u);
LABEL_68:
  __break(1u);
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
}

void sub_1ADE4E544(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AE23C32C();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v22 - v9;
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16))
  {
    if (v11)
    {
      if (a1 != a2)
      {
        v12 = a2 + 32;
        v23 = a1 + 32;
        v13 = *(a1 + 32);
        v14 = *(a2 + 32);
        v15 = *(v13 + 16);
        if (v15 == *(v14 + 16))
        {
          v16 = (v8 + 8);
          v17 = 1;
          while (!v15 || v13 == v14)
          {
LABEL_11:

            sub_1AE23C31C();
            sub_1AE23C31C();
            sub_1ADE51EAC();
            v20 = sub_1AE23CCBC();

            v21 = *v16;
            (*v16)(v6, v4);
            v21(v10, v4);
            if ((v20 & 1) != 0 && v17 != v11)
            {
              v13 = *(v23 + 8 * v17);
              v14 = *(v12 + 8 * v17++);
              v15 = *(v13 + 16);
              if (v15 == *(v14 + 16))
              {
                continue;
              }
            }

            return;
          }

          v18 = (v13 + 32);
          v19 = (v14 + 32);
          while (*v18 == *v19)
          {
            ++v18;
            ++v19;
            if (!--v15)
            {
              goto LABEL_11;
            }
          }
        }
      }
    }
  }
}

void sub_1ADE4E77C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v22 = a3;
  v5 = sub_1AE23C32C();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v21 - v10;
  v12 = *(a1 + 16);
  if (v12 == *(a2 + 16) && v12 && a1 != a2)
  {
    v13 = (a1 + 32);
    v14 = (a2 + 32);
    v15 = (v9 + 8);
    while (1)
    {
      v16 = *v13;
      v17 = *v14;

      if (v16 != v17)
      {

        v18 = v22(v16, v17);

        if ((v18 & 1) == 0)
        {
          break;
        }
      }

      sub_1AE23C31C();
      sub_1AE23C31C();
      sub_1ADE51EAC();
      v19 = sub_1AE23CCBC();

      v20 = *v15;
      (*v15)(v7, v5);
      v20(v11, v5);
      if (v19)
      {
        ++v13;
        ++v14;
        if (--v12)
        {
          continue;
        }
      }

      return;
    }
  }
}

void sub_1ADE4E9A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AE23C32C();
  MEMORY[0x1EEE9AC00](v4);
  MEMORY[0x1EEE9AC00](v5);
  v10 = &v45 - v9;
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16) || !v11 || a1 == a2)
  {
    return;
  }

  v47 = v6;
  v48 = v8;
  v12 = 0;
  v51 = a1 + 32;
  v49 = 0;
  v50 = a2 + 32;
  v46 = (v7 + 8);
  while (v12 != v11)
  {
    v13 = (v51 + 24 * v12);
    v15 = *v13;
    v14 = v13[1];
    v16 = v13[2];
    v17 = (v50 + 24 * v12);
    v19 = *v17;
    v18 = v17[1];
    v20 = v17[2];
    v21 = v14 >> 62;
    v22 = v18 >> 62;
    if (v14 >> 62 == 3)
    {
      if (v15)
      {
        v23 = 0;
      }

      else
      {
        v23 = v14 == 0xC000000000000000;
      }

      if (v23 && v18 >> 62 == 3 && !v19 && v18 == 0xC000000000000000)
      {
        sub_1ADDD86D8(0, 0xC000000000000000);

        v34 = 0;
        v35 = 0xC000000000000000;
        goto LABEL_42;
      }

      v26 = 0;
    }

    else if (v21)
    {
      if (v21 == 1)
      {
        LODWORD(v26) = HIDWORD(v15) - v15;
        if (__OFSUB__(HIDWORD(v15), v15))
        {
          goto LABEL_59;
        }

        v26 = v26;
      }

      else
      {
        v28 = *(v15 + 16);
        v27 = *(v15 + 24);
        v29 = __OFSUB__(v27, v28);
        v26 = v27 - v28;
        if (v29)
        {
          goto LABEL_58;
        }
      }
    }

    else
    {
      v26 = BYTE6(v14);
    }

    if (v22 > 1)
    {
      if (v22 != 2)
      {
        if (v26)
        {
          return;
        }

LABEL_40:
        sub_1ADDD86D8(v15, v14);

        v34 = v19;
        v35 = v18;
LABEL_42:
        sub_1ADDD86D8(v34, v35);

        goto LABEL_43;
      }

      v32 = *(v19 + 16);
      v31 = *(v19 + 24);
      v29 = __OFSUB__(v31, v32);
      v30 = v31 - v32;
      if (v29)
      {
        goto LABEL_56;
      }
    }

    else if (v22)
    {
      LODWORD(v30) = HIDWORD(v19) - v19;
      if (__OFSUB__(HIDWORD(v19), v19))
      {
        goto LABEL_57;
      }

      v30 = v30;
    }

    else
    {
      v30 = BYTE6(v18);
    }

    if (v26 != v30)
    {
      return;
    }

    if (v26 < 1)
    {
      goto LABEL_40;
    }

    sub_1ADDD86D8(v15, v14);

    sub_1ADDD86D8(v19, v18);

    sub_1ADDD86D8(v19, v18);
    v33 = v49;
    if ((sub_1ADDD1544(v15, v14, v19, v18) & 1) == 0)
    {
      goto LABEL_53;
    }

    v49 = v33;
LABEL_43:
    v36 = *(v16 + 16);
    if (v36 != *(v20 + 16))
    {
      goto LABEL_53;
    }

    if (v36 && v16 != v20)
    {
      v37 = 32;
      while (*(v16 + v37) == *(v20 + v37))
      {
        v37 += 8;
        if (!--v36)
        {
          goto LABEL_49;
        }
      }

LABEL_53:
      sub_1ADDCC35C(v19, v18);

      sub_1ADDCC35C(v15, v14);

      return;
    }

LABEL_49:
    v55 = v18;
    v38 = v12;
    sub_1AE23C31C();
    v53 = v19;
    v39 = v10;
    v40 = v48;
    sub_1AE23C31C();
    sub_1ADE51EAC();
    v41 = v47;
    v54 = sub_1AE23CCBC();
    v52 = v16;
    v42 = v15;
    v43 = *v46;
    v44 = v40;
    v10 = v39;
    (*v46)(v44, v41);
    v43(v39, v41);
    sub_1ADDCC35C(v53, v55);

    sub_1ADDCC35C(v42, v14);

    if (v54)
    {
      v12 = v38 + 1;
      if (v38 + 1 != v11)
      {
        continue;
      }
    }

    return;
  }

  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
}

void sub_1ADE4ED9C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16) && v2 && a1 != a2)
  {
    v3 = (a2 + 48);
    v4 = (a1 + 48);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;
      v7 = *(v4 - 2);
      v8 = *(v3 - 2);
      v9 = *(v3 - 1);
      v10 = *v3;

      v11 = sub_1ADE9C460(v7, v6, v5, v8, v9, v10);

      if ((v11 & 1) == 0)
      {
        break;
      }

      v3 += 3;
      v4 += 3;
      --v2;
    }

    while (v2);
  }
}

uint64_t sub_1ADE4EED0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  v9 = *(a5 + 16);
  result = swift_isUniquelyReferenced_nonNull_native();
  *(a5 + 16) = v9;
  if ((result & 1) == 0)
  {
    result = sub_1ADE559C8(0, *(v9 + 16) + 1, 1, v9);
    v9 = result;
    *(a5 + 16) = result;
  }

  v12 = *(v9 + 16);
  v11 = *(v9 + 24);
  if (v12 >= v11 >> 1)
  {
    result = sub_1ADE559C8((v11 > 1), v12 + 1, 1, v9);
    v9 = result;
  }

  *(v9 + 16) = v12 + 1;
  v13 = (v9 + 24 * v12);
  v13[4] = a1;
  v13[5] = a2;
  v13[6] = a3;
  *(a5 + 16) = v9;
  return result;
}

uint64_t sub_1ADE4EFB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a1 + 32);

  swift_unknownObjectRetain();
  v9(a2, a3, a4, a5);

  return swift_unknownObjectRelease();
}

void CRString.Cursor.init(from:)(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = type metadata accessor for Timestamp(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v13 = &v33 - v12;
  v14 = *(a1 + 72);
  if (!v14)
  {
    v17 = 0x80000001AE25FB70;
    sub_1ADE42E40(v9, v10, v11);
    swift_allocError();
    v19 = 0xD000000000000017;
    goto LABEL_8;
  }

  v15 = *(v14 + 16);
  v16 = (~v15 & 0xF000000000000007) != 0 && ((v15 >> 59) & 0x1E | (v15 >> 2) & 1) == 13;
  if (!v16 || (v20 = *((v15 & 0xFFFFFFFFFFFFFFBLL) + 0x18), *(v20 + 16) != 2))
  {
    v17 = 0x80000001AE25FB90;
    sub_1ADE42E40(v9, v10, v11);
    swift_allocError();
    v19 = 0xD00000000000001ALL;
LABEL_8:
    *v18 = v19;
    *(v18 + 8) = v17;
    *(v18 + 16) = 0;
    swift_willThrow();

    return;
  }

  v21 = *(*(v20 + 32) + 16);
  v22 = (~v21 & 0xF000000000000007);

  if (v22)
  {
    if (((v21 >> 59) & 0x1E | (v21 >> 2) & 1) == 9)
    {
      v24 = v21 & 0xFFFFFFFFFFFFFFBLL;
      v23 = *((v21 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v22 = *(v24 + 24);
    }

    else
    {
      v23 = 0;
      v22 = 0;
    }
  }

  else
  {
    v23 = 0;
  }

  sub_1ADE017C0(v23, v22, a1, v13);
  if (v2)
  {

    return;
  }

  v25 = *(a1 + 72);
  if (v25)
  {
    v26 = *(v25 + 16);
    if ((~v26 & 0xF000000000000007) != 0 && ((v26 >> 59) & 0x1E | (v26 >> 2) & 1) == 0xD)
    {
      v27 = *((v26 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
    }

    else
    {
      v27 = MEMORY[0x1E69E7CC0];
    }

    if (*(v27 + 16) < 2uLL)
    {
      __break(1u);
    }

    else
    {
      v28 = *(v27 + 40);

      v29 = *(v28 + 16);
      if ((~v29 & 0xF000000000000007) != 0 && !((v29 >> 59) & 0x1E | (v29 >> 2) & 1))
      {
        v23 = *(v29 + 16);
      }

      else
      {
        v23 = 0;
      }

      sub_1ADDF8030(v13, v7, type metadata accessor for Timestamp);
      v30 = type metadata accessor for ObjCTimestamp(0);
      v31 = objc_allocWithZone(v30);
      sub_1ADDF8030(v7, v31 + OBJC_IVAR____TtC9Coherence13ObjCTimestamp_timestamp, type metadata accessor for Timestamp);
      v33.receiver = v31;
      v33.super_class = v30;
      v22 = objc_msgSendSuper2(&v33, sel_init);
      sub_1ADDE52A0(v7, type metadata accessor for Timestamp);
      if (qword_1ED96B308 == -1)
      {
        goto LABEL_27;
      }
    }

    swift_once();
LABEL_27:
    sub_1AE23D6AC();
    v32 = [objc_allocWithZone(_TtC9Coherence24CRTTMergeableStringIndex) initWithTimestamp:v22 affinity:v23 renameGeneration:v34];

    sub_1ADDE52A0(v13, type metadata accessor for Timestamp);
    *a2 = v32;
    return;
  }

  __break(1u);
}

void CRString.Cursor.encode(to:)(uint64_t a1)
{
  v3 = type metadata accessor for Replica(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Timestamp(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  objc_opt_self();
  v9 = [swift_dynamicCastObjCClassUnconditional() needToFinalizeTimestamps];
  if (v9)
  {
    v12 = *(a1 + 16);
    objc_opt_self();
    v44 = [swift_dynamicCastObjCClassUnconditional() finalizedInContext_];
    v13 = v44;
    CRString.Cursor.encode(to:)(a1);
  }

  else
  {
    v14 = sub_1ADE71C08(v9, v10, v11);
    if (!v1)
    {
      v15 = v14;
      v43[2] = 0;
      v43[1] = type metadata accessor for Proto_Value._StorageClass();
      inited = swift_initStaticObject();
      objc_opt_self();
      v17 = swift_dynamicCastObjCClassUnconditional();

      v18 = [v17 timestamp];
      type metadata accessor for ObjCTimestamp(0);
      v19 = swift_dynamicCastClassUnconditional();
      sub_1ADDF8030(v19 + OBJC_IVAR____TtC9Coherence13ObjCTimestamp_timestamp, v8, type metadata accessor for Timestamp);

      sub_1ADDF8030(v8, v5, type metadata accessor for Replica);
      v20 = sub_1ADDF66A8(v5);
      v21 = sub_1AE23BFEC();
      (*(*(v21 - 8) + 8))(v5, v21);
      v22 = *&v8[*(v6 + 20)];
      sub_1ADDE52A0(v8, type metadata accessor for Timestamp);
      v23 = inited;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v23 = swift_allocObject();
        v24 = *(inited + 16);
        *(v23 + 16) = v24;
        sub_1ADE51B2C(v24);
      }

      v25 = swift_allocObject();
      *(v25 + 16) = v20;
      *(v25 + 24) = v22;
      v26 = v25 | 0x4000000000000004;
      v27 = *(v23 + 16);
      *(v23 + 16) = v26;
      sub_1ADE51B48(v27);
      swift_beginAccess();
      v28 = *(*(v15 + 24) + 16);
      if ((~v28 & 0xF000000000000007) != 0 && ((v28 >> 59) & 0x1E | (v28 >> 2) & 1) == 0xD)
      {
        v29 = v28 & 0xFFFFFFFFFFFFFFBLL;
        v31 = *(v29 + 16);
        v30 = *(v29 + 24);
      }

      else
      {
        v31 = MEMORY[0x1E69E7CC0];
        v30 = MEMORY[0x1E69E7CC0];
      }

      v45 = v30;

      MEMORY[0x1B26FB860](v32);
      if (*(v45 + 16) >= *(v45 + 24) >> 1)
      {
        sub_1AE23D03C();
      }

      sub_1AE23D09C();
      sub_1AE1B6BF8(v31, v45);
      swift_endAccess();
      objc_opt_self();
      v33 = [swift_dynamicCastObjCClassUnconditional() affinity];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v34 = swift_allocObject();
        v35 = *(inited + 16);
        *(v34 + 16) = v35;
        sub_1ADE51B2C(v35);

        inited = v34;
      }

      v36 = swift_allocObject();
      *(v36 + 16) = v33;
      v37 = *(inited + 16);
      *(inited + 16) = v36;
      sub_1ADE51B48(v37);
      swift_beginAccess();
      v38 = *(*(v15 + 24) + 16);
      if ((~v38 & 0xF000000000000007) != 0 && ((v38 >> 59) & 0x1E | (v38 >> 2) & 1) == 0xD)
      {
        v39 = v38 & 0xFFFFFFFFFFFFFFBLL;
        v41 = *(v39 + 16);
        v40 = *(v39 + 24);
      }

      else
      {
        v41 = MEMORY[0x1E69E7CC0];
        v40 = MEMORY[0x1E69E7CC0];
      }

      v45 = v40;

      MEMORY[0x1B26FB860](v42);
      if (*(v45 + 16) >= *(v45 + 24) >> 1)
      {
        sub_1AE23D03C();
      }

      sub_1AE23D09C();
      sub_1AE1B6BF8(v41, v45);
      swift_endAccess();
    }
  }
}

void CRString.Cursor.finalizeTimestamps(_:)(uint64_t a1)
{
  objc_opt_self();
  v3 = [swift_dynamicCastObjCClassUnconditional() finalizedInContext_];

  *v1 = v3;
}

void sub_1ADE4FBB8(uint64_t a1)
{
  objc_opt_self();
  v3 = [swift_dynamicCastObjCClassUnconditional() finalizedInContext_];

  *v1 = v3;
}

Coherence::CRString::Cursor __swiftcall CRString.cursor(at:affinity:)(Swift::Int at, Coherence::CRAffinity affinity)
{
  v6 = v2;
  v8 = *(*v3 + 16);
  sub_1ADE4FCD8(v8, at, affinity, v6);

  return result;
}

id sub_1ADE4FCD8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, unsigned __int8 a3@<W2>, void *a4@<X8>)
{
  v8 = a3;
  v9 = [a1 length];
  if (!v8)
  {
    if (v9 <= a2)
    {
      goto LABEL_10;
    }

    v10 = 2;
    goto LABEL_7;
  }

  if (__OFADD__(v9, 1))
  {
    __break(1u);
    goto LABEL_10;
  }

  if (v9 + 1 > a2)
  {
    v10 = a3 == 2;
LABEL_7:
    result = [a1 mergeableIndexForCharacterIndex:a2 affinity:v10];
    if (result)
    {
      *a4 = result;
      return result;
    }
  }

LABEL_10:
  result = sub_1AE23DC5C();
  __break(1u);
  return result;
}

void CRString.cursor(range:)(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v7 = *(*v3 + 16);
  sub_1ADE4FE3C(v7, a1, a2, a3);
}

void sub_1ADE4FE3C(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  if (a2 < 0)
  {
    goto LABEL_15;
  }

  v8 = [a1 length];
  if (__OFADD__(v8, 1))
  {
    __break(1u);
    goto LABEL_14;
  }

  if (v8 + 1 <= a3)
  {
    goto LABEL_15;
  }

  v9 = [a1 mergeableIndexForCharacterIndex:a3 affinity:0];
  if (!v9)
  {
    goto LABEL_15;
  }

  if (__OFSUB__(a3, a2))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (a3 != a2)
  {
    v11 = v9;
    v12 = [a1 mergeableIndexForCharacterIndex:a2 affinity:1];
    if (v12)
    {
      v13 = v12;

      *a4 = v13;
      a4[1] = v11;
      return;
    }

    while (1)
    {
LABEL_15:
      sub_1AE23DC5C();
      __break(1u);
    }
  }

  *a4 = v9;
  a4[1] = v9;

  v10 = v9;
}

Swift::Int_optional __swiftcall CRString.index(of:)(Coherence::CRString::Cursor of)
{
  v2 = *(*v1 + 16);
  objc_opt_self();
  v3 = swift_dynamicCastObjCClassUnconditional();
  v4 = v2;
  v5 = [v4 characterIndexForIndex_];
  v6 = sub_1AE23BB0C();

  v7 = v5 == v6;
  if (v5 == v6)
  {
    v8 = 0;
  }

  else
  {
    v8 = v5;
  }

  result.value = v8;
  result.is_nil = v7;
  return result;
}

void CRString.range(of:)(uint64_t *a1)
{
  v2 = *(*v1 + 16);
  objc_opt_self();
  v3 = swift_dynamicCastObjCClassUnconditional();
  v4 = v2;
  v5 = [v4 characterIndexForIndex_];
  objc_opt_self();
  v6 = [v4 characterIndexForIndex_];
  if (v5 == sub_1AE23BB0C())
  {
  }

  else
  {
    v7 = sub_1AE23BB0C();

    if (v6 != v7 && v6 < v5)
    {
      __break(1u);
    }
  }
}

void CRString.cursor(range:)(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9 = *(*v4 + 16);
  sub_1ADE4FE3C(v9, a3, a4, v11);

  v10 = v11[1];
  *a1 = v11[0];
  *a2 = v10;
}

void CRString.range(of:)(id *a1, void **a2)
{
  v3 = *a2;
  v4 = *v2;
  v5 = *a1;
  v6 = *(v4 + 16);
  v7 = v3;
  objc_opt_self();
  v8 = swift_dynamicCastObjCClassUnconditional();
  v9 = v6;
  v10 = [v9 characterIndexForIndex_];
  objc_opt_self();
  v11 = [v9 characterIndexForIndex_];
  if (v10 == sub_1AE23BB0C())
  {
  }

  else
  {
    v12 = sub_1AE23BB0C();

    if (v11 != v12 && v11 < v10)
    {
      __break(1u);
    }
  }
}

void sub_1ADE502C4(uint64_t a1@<X0>, unsigned __int8 a2@<W1>, void *a3@<X8>)
{
  v7 = *(*v3 + 16);
  sub_1ADE4FCD8(v7, a1, a2, a3);
}

void sub_1ADE50330(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v7 = *(*v3 + 16);
  sub_1ADE4FE3C(v7, a1, a2, a3);
}

void sub_1ADE5039C(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9 = *(*v4 + 16);
  sub_1ADE4FE3C(v9, a3, a4, v11);

  v10 = v11[1];
  *a1 = v11[0];
  *a2 = v10;
}

id sub_1ADE50410(uint64_t *a1)
{
  v2 = *(*v1 + 16);
  objc_opt_self();
  v3 = swift_dynamicCastObjCClassUnconditional();
  v4 = v2;
  v5 = [v4 characterIndexForIndex_];
  v6 = sub_1AE23BB0C();

  if (v5 == v6)
  {
    return 0;
  }

  else
  {
    return v5;
  }
}

uint64_t CRString.encode(to:)(uint64_t a1)
{
  v2 = [*(*v1 + 16) attributedString];
  objc_opt_self();
  swift_dynamicCastObjCClassUnconditional();
  sub_1AE23CD0C();
  swift_unknownObjectRelease();
  sub_1AE23CDDC();
}

void *sub_1ADE50584(uint64_t a1)
{
  v34 = *MEMORY[0x1E69E9840];
  v3 = *v1;
  v4 = objc_allocWithZone(type metadata accessor for CRTTStringEncoder());

  v6 = sub_1ADF8B964(v5);
  v7 = [*(v3 + 16) fullyRenamed_];
  *&v27 = 0;
  LODWORD(a1) = [v7 saveToEncoder:v6 error:&v27];

  v8 = v27;
  if (a1)
  {
    type metadata accessor for Proto_CRDT._StorageClass();
    inited = swift_initStaticObject();
    v10 = &v6[OBJC_IVAR____TtC9Coherence17CRTTStringEncoder_sequence];
    swift_beginAccess();
    v11 = *v10;
    v12 = *(v10 + 2);
    v28 = *(v10 + 1);
    v29 = v12;
    v27 = v11;
    v13 = *(v10 + 3);
    v14 = *(v10 + 4);
    v15 = *(v10 + 5);
    v33 = *(v10 + 12);
    v31 = v14;
    v32 = v15;
    v30 = v13;
    v16 = v8;
    sub_1ADE51B64(&v27, &v26);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v17 = swift_allocObject();
      v18 = inited[2];
      *(v17 + 16) = v18;
      sub_1ADE5215C(v18);

      inited = v17;
    }

    v19 = swift_allocObject();
    v20 = v32;
    *(v19 + 80) = v31;
    *(v19 + 96) = v20;
    *(v19 + 112) = v33;
    v21 = v28;
    *(v19 + 16) = v27;
    *(v19 + 32) = v21;
    v22 = v30;
    *(v19 + 48) = v29;
    *(v19 + 64) = v22;
    v23 = v19 | 0x4000000000000000;
    v24 = inited[2];
    inited[2] = v23;
    sub_1ADE52174(v24);
  }

  else
  {
    inited = v27;
    sub_1AE23BC9C();

    swift_willThrow();
  }

  return inited;
}

uint64_t sub_1ADE50788(uint64_t a1)
{
  v2 = [*(*v1 + 16) attributedString];
  objc_opt_self();
  swift_dynamicCastObjCClassUnconditional();
  sub_1AE23CD0C();
  swift_unknownObjectRelease();
  sub_1AE23CDDC();
}

void CRString.Partial.init(from:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v38 = *MEMORY[0x1E69E9840];
  if (*(a1 + 64))
  {
    type metadata accessor for CRDecoder.CRDTContainer();
    inited = swift_initStackObject();
    *(inited + 16) = a1;
    *(inited + 24) = 0;
    *(inited + 32) = 1;

    sub_1ADDE78C8();
    v8 = *(v7 + 16);
    v9 = (~v8 & 0xF000000000000007) != 0 && (v8 & 0xF000000000000000) == 0x4000000000000000;
    v10 = MEMORY[0x1E69E7CC0];
    if (v9)
    {
      v15 = v8 & 0xFFFFFFFFFFFFFFFLL;
      v16 = *(v15 + 80);
      *&v37[16] = *(v15 + 64);
      *&v37[32] = v16;
      *&v37[48] = *(v15 + 96);
      *&v37[64] = *(v15 + 112);
      v17 = *(v15 + 32);
      v35 = *(v15 + 16);
      v36 = v17;
      *v37 = *(v15 + 48);
      sub_1ADE51B64(&v35, v34);

      v29 = *&v37[56];
      v30 = *&v37[40];
      v28 = *&v37[24];
      v13 = *v37;
      v31 = v36;
      v32 = *&v37[8];
      v12 = *(&v35 + 1);
      v11 = v35;
    }

    else
    {

      v11 = 0;
      v31 = vdupq_n_s64(v10);
      v32 = 0u;
      v12 = 0xE000000000000000;
      v13 = v10;
      v28 = 0u;
      v29 = 0u;
      v30 = 0u;
    }

    v18 = type metadata accessor for CRStringDecoder();
    v19 = objc_allocWithZone(v18);
    v20 = &v19[OBJC_IVAR____TtC9Coherence15CRStringDecoder_subsequence[0]];
    LOBYTE(v35) = 1;
    *v20 = 0;
    *(v20 + 1) = v10;
    *(v20 + 2) = v10;
    *(v20 + 3) = v10;
    *(v20 + 4) = 0;
    v20[40] = 1;
    *(v20 + 41) = v34[0];
    *(v20 + 11) = *(v34 + 3);
    *(v20 + 6) = 0;
    *(v20 + 7) = 0;
    v20[64] = 1;
    v21 = &v19[OBJC_IVAR____TtC9Coherence15CRStringDecoder_encoded];
    *v21 = v11;
    *(v21 + 1) = v12;
    *(v21 + 1) = v31;
    *(v21 + 4) = v13;
    *(v21 + 56) = v28;
    *(v21 + 40) = v32;
    *(v21 + 88) = v29;
    *(v21 + 72) = v30;
    *&v19[OBJC_IVAR____TtC9Coherence15CRStringDecoder_decoder] = a1;
    v33.receiver = v19;
    v33.super_class = v18;

    v22 = objc_msgSendSuper2(&v33, sel_init);
    v23 = objc_allocWithZone(_TtC9Coherence24CRTTMergeableStringDelta);
    *&v35 = 0;
    v24 = [v23 initWithDecoder:v22 error:&v35];
    if (v24)
    {
      v25 = v24;
      v26 = v35;

      *a4 = v25;
    }

    else
    {
      v27 = v35;
      sub_1AE23BC9C();

      swift_willThrow();
    }
  }

  else
  {
    sub_1ADE42E40(a1, a2, a3);
    swift_allocError();
    *v14 = 0xD000000000000014;
    *(v14 + 8) = 0x80000001AE25FB50;
    *(v14 + 16) = 0;
    swift_willThrow();
  }
}

void CRString.Partial.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = *v3;
  sub_1ADDFCC74(a1, a2, a3);
  if (!v4)
  {
    v6 = objc_allocWithZone(type metadata accessor for CRTTStringEncoder());

    v8 = sub_1ADF8B964(v7);
    v19[0] = 0;
    v9 = [v5 saveToEncoder:v8 error:v19];
    v10 = v19[0];
    if (v9)
    {
      v11 = &v8[OBJC_IVAR____TtC9Coherence17CRTTStringEncoder_sequence];
      swift_beginAccess();
      v12 = *v11;
      v13 = *(v11 + 2);
      v20[1] = *(v11 + 1);
      v20[2] = v13;
      v20[0] = v12;
      v14 = *(v11 + 3);
      v15 = *(v11 + 4);
      v16 = *(v11 + 5);
      v21 = *(v11 + 12);
      v20[4] = v15;
      v20[5] = v16;
      v20[3] = v14;
      swift_beginAccess();
      v17 = v10;
      sub_1ADE51B64(v20, v19);
      sub_1AE1B6CF4(v20);
      swift_endAccess();
    }

    else
    {
      v18 = v19[0];
      sub_1AE23BC9C();

      swift_willThrow();
    }
  }
}

unint64_t sub_1ADE50D24(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA0D0, &qword_1AE2418B0);
    v3 = sub_1AE23DCDC();

    for (i = (a1 + 64); ; i += 5)
    {
      v5 = *(i - 4);
      v6 = *(i - 3);
      v15 = *(i - 1);
      v7 = *i;
      sub_1ADDD86D8(v5, v6);
      swift_unknownObjectRetain();
      result = sub_1ADDDE7CC(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      v11 = v3[7] + 24 * result;
      *v11 = v15;
      *(v11 + 16) = v7;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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

unint64_t sub_1ADE50E58(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA100, &unk_1AE2418D0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5B9EA0, &qword_1AE240EE0);
    v7 = sub_1AE23DCDC();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1ADDCEE40(v9, v5, &qword_1EB5BA100, &unk_1AE2418D0);
      result = sub_1ADDFF050(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_1AE23BDDC();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      result = sub_1ADE42D60(&v5[v8], v7[7] + 8 * v13);
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_1ADE51044(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA000, &qword_1AE2417E8);
    v3 = sub_1AE23DCDC();

    for (i = (a1 + 48); ; i += 2)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v13 = *i;

      result = sub_1ADDD7A10(v5, v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      *(v3[7] + 16 * result) = v13;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
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

unint64_t sub_1ADE51154(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA068, &qword_1AE241848);
    v3 = sub_1AE23DCDC();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v14 = i[1];
      v15 = *i;
      sub_1ADDD86D8(v5, v6);
      sub_1ADDD86D8(v15, *(&v15 + 1));
      sub_1ADDD86D8(v14, *(&v14 + 1));
      result = sub_1ADDDE7CC(v5, v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      v10 = (v3[7] + 32 * result);
      *v10 = v15;
      v10[1] = v14;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

unint64_t sub_1ADE51288(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA0F0, &qword_1AE2418C8);
    v3 = sub_1AE23DCDC();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;
      sub_1ADDD86D8(v5, v6);
      sub_1ADDD86D8(v7, v8);
      result = sub_1ADDDE7CC(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
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