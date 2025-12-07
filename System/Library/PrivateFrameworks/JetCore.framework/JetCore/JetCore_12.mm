uint64_t sub_1DB4034B8(int a1, void *__src)
{
  sub_1DB4036F0(__src);
  if (qword_1ECC42228 != -1)
  {
    swift_once();
  }

  v3 = qword_1ECC466F0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1DB50EE90;
  v20 = sub_1DB301BC0(0, 21, 0, MEMORY[0x1E69E7CC0]);
  v5._object = 0x80000001DB52D5F0;
  v5._countAndFlagsBits = 0xD000000000000014;
  LogMessage.StringInterpolation.appendLiteral(_:)(v5);
  v19[3] = &type metadata for OperationCheckpoint;
  v19[0] = swift_allocObject();
  memcpy((v19[0] + 16), __src, 0x190uLL);
  sub_1DB301CDC(v19, v15);
  v16 = 0u;
  v17 = 0u;
  sub_1DB40390C(__src, v14);
  sub_1DB301D4C(v15, &v16);
  v18 = 1;
  v6 = v20;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v6 = sub_1DB301BC0(0, *(v6 + 2) + 1, 1, v6);
    v20 = v6;
  }

  v8 = *(v6 + 2);
  v7 = *(v6 + 3);
  if (v8 >= v7 >> 1)
  {
    v6 = sub_1DB301BC0((v7 > 1), v8 + 1, 1, v6);
  }

  *(v6 + 2) = v8 + 1;
  v9 = &v6[40 * v8];
  v10 = v16;
  v11 = v17;
  v9[64] = v18;
  *(v9 + 2) = v10;
  *(v9 + 3) = v11;
  v20 = v6;
  sub_1DB30623C(v19, &qword_1ECC426B0, &qword_1DB50EEB0);
  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v12);
  *(v4 + 32) = v20;
  v14[0] = v3;
  LOBYTE(v16) = 3;
  OSLogger.log(contentsOf:withLevel:)(v4, &v16);
}

void sub_1DB4036F0(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  v3 = *v1;
  v4 = *(v1 + 8);
  sub_1DB40390C(__src, v8);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1DB3A6D2C(v3);
  }

  memcpy(__srca, __dst, sizeof(__srca));
  nullsub_8();
  if ((v4 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (v4 >= v3[2])
  {
LABEL_10:
    __break(1u);
    return;
  }

  v5 = &v3[50 * v4];
  memcpy(v8, v5 + 4, sizeof(v8));
  memcpy(v5 + 4, __srca, 0x190uLL);
  sub_1DB30623C(v8, &qword_1ECC42980, &qword_1DB50F438);
  *v1 = v3;
  if (v3[2] == v4 + 1)
  {
    v6 = 0;
  }

  else
  {
    v6 = v4 + 1;
  }

  *(v1 + 8) = v6;
}

void sub_1DB403808(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, unint64_t a48, uint64_t a49, uint64_t a50)
{
  v51 = a48 >> 61;

  if ((a48 >> 61) > 4)
  {
    if (v51 == 7)
    {
    }

    else
    {
      if (v51 == 6)
      {
      }
    }
  }
}

Swift::Double_optional __swiftcall JSONObject.timeInterval(convertedFrom:)(JetCore::JSONTimeUnit convertedFrom)
{
  v2 = *convertedFrom;
  sub_1DB330D60(v1, v10);
  if (!v11)
  {
    sub_1DB330DD0(v10);
LABEL_7:
    LOBYTE(v7) = 0;
    goto LABEL_9;
  }

  v3 = __swift_project_boxed_opaque_existential_1(v10, v11);
  sub_1DB300B14(v3, v9);
  sub_1DB36BD70();
  if ((swift_dynamicCast() & 1) == 0)
  {
    __swift_destroy_boxed_opaque_existential_0(v10);
    goto LABEL_7;
  }

  [v8 doubleValue];
  v5 = v4;

  __swift_destroy_boxed_opaque_existential_0(v10);
  if (v2)
  {
    v6 = v5 / 1000.0;
    v7 = v5 / 1000.0;
  }

  else
  {
    LOBYTE(v7) = LOBYTE(v5);
  }

LABEL_9:
  result.value = v6;
  result.is_nil = LOBYTE(v7);
  return result;
}

uint64_t JSONObject.date.getter@<X0>(uint64_t a1@<X8>)
{
  sub_1DB330D60(v1, v5);
  if (v6)
  {
    __swift_project_boxed_opaque_existential_1(v5, v6);
    sub_1DB408C04(a1);
    return __swift_destroy_boxed_opaque_existential_0(v5);
  }

  else
  {
    sub_1DB330DD0(v5);
    v4 = sub_1DB509DD0();
    return (*(*(v4 - 8) + 56))(a1, 1, 1, v4);
  }
}

uint64_t DiscardOnError<A>.hashValue.getter(uint64_t a1, uint64_t a2)
{
  sub_1DB50BCF0();
  sub_1DB50A5D0();
  return sub_1DB50BD30();
}

uint64_t sub_1DB403CD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  sub_1DB50BCF0();
  DiscardOnError<A>.hash(into:)(v6, a2, v4);
  return sub_1DB50BD30();
}

uint64_t DiscardOnError<A>.init(from:)(void *a1, uint64_t a2, uint64_t a3)
{
  sub_1DB30BE90(a1, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC44ED0, &unk_1DB518DC0);
  if (swift_dynamicCast())
  {
    sub_1DB34A204(v7);
  }

  else
  {
    DiscardOnErrorLogUnsupportedDecoderError()();
  }

  sub_1DB30BE90(a1, v7);
  (*(a3 + 8))(v7, a2, a3);
  return __swift_destroy_boxed_opaque_existential_0(a1);
}

Swift::Void __swiftcall DiscardOnErrorLogUnsupportedDecoderError()()
{
  if (qword_1ECC42110 != -1)
  {
    swift_once();
  }

  if ([qword_1ECC45538 compareWithValue:0 andExchangeWithValue:1])
  {
    if (qword_1ECC42218 != -1)
    {
      swift_once();
    }

    v0 = qword_1ECC466E8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
    v1 = swift_allocObject();
    *(v1 + 16) = xmmword_1DB511620;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A30, &unk_1DB50F8E0);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_1DB50EE90;
    v3 = MEMORY[0x1E69E6158];
    v17 = MEMORY[0x1E69E6158];
    v14 = 0xD00000000000004FLL;
    v15 = 0x80000001DB52D610;
    *(v2 + 48) = 0u;
    *(v2 + 32) = 0u;
    sub_1DB301D4C(&v14, v2 + 32);
    *(v2 + 64) = 0;
    *(v1 + 32) = v2;
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_1DB50EE90;
    v17 = v3;
    v14 = 0xD000000000000051;
    v15 = 0x80000001DB52D660;
    *(v4 + 48) = 0u;
    *(v4 + 32) = 0u;
    sub_1DB301D4C(&v14, v4 + 32);
    *(v4 + 64) = 0;
    *(v1 + 40) = v4;
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_1DB50EE90;
    v17 = v3;
    v14 = 0xD000000000000048;
    v15 = 0x80000001DB52D6C0;
    *(v5 + 48) = 0u;
    *(v5 + 32) = 0u;
    sub_1DB301D4C(&v14, v5 + 32);
    *(v5 + 64) = 0;
    *(v1 + 48) = v5;
    v6 = sub_1DB50AF40();
    if (os_log_type_enabled(v0, v6))
    {
      if (qword_1EE30EDD8 != -1)
      {
        swift_once();
      }

      v7 = off_1EE30EDE0;
      os_unfair_lock_lock(off_1EE30EDE0 + 5);
      os_unfair_lock_opaque_low = LOBYTE(v7[4]._os_unfair_lock_opaque);
      os_unfair_lock_unlock(v7 + 5);
      if (os_unfair_lock_opaque_low == 2)
      {
        LOBYTE(os_unfair_lock_opaque_low) = os_variant_has_internal_content();
      }

      v9 = swift_allocObject();
      *(v9 + 16) = (os_unfair_lock_opaque_low & 1) == 0;
      v14 = v1;
      v15 = sub_1DB31485C;
      v16 = v9;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42D00, &unk_1DB511AC0);
      sub_1DB314864();
      v10 = sub_1DB50A5E0();
      v12 = v11;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42D08, &qword_1DB511AD0);
      v13 = swift_allocObject();
      *(v13 + 16) = xmmword_1DB50EE90;
      *(v13 + 56) = v3;
      *(v13 + 64) = sub_1DB31494C();
      *(v13 + 32) = v10;
      *(v13 + 40) = v12;
      sub_1DB50A1E0("%{public}@", 10, 2, &dword_1DB2F5000, v0, v6, v13);
    }
  }
}

id sub_1DB404204()
{
  result = [objc_allocWithZone(_JEAtomicFlag) initWithInitialValue_];
  qword_1ECC45538 = result;
  return result;
}

uint64_t Models.DeepLinkDestination.init(deserializing:using:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *a2;
  JSONObject.subscript.getter(0x6575676573, 0xE500000000000000, v8);
  v10 = v6;
  static AnyActionTypes.makeInstance(byDeserializing:using:)(v8, &v10, v9);
  sub_1DB3151CC(a1);
  sub_1DB3151CC(v8);

  if (!v3)
  {
    return sub_1DB30C7A8(v9, a3);
  }

  return result;
}

uint64_t sub_1DB404360@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6575676573 && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1DB50BA30();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1DB4043E4(uint64_t a1)
{
  v2 = sub_1DB404654();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB404420(uint64_t a1)
{
  v2 = sub_1DB404654();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Models.DeepLinkDestination.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC455C0, &qword_1DB51AED0);
  v19 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v16 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB404654();
  sub_1DB50BDF0();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v8 = sub_1DB50BDE0();
    v9 = sub_1DB31F3BC(0xD000000000000023, 0x80000001DB5298A0, v8);
    v11 = v10;

    if (v9)
    {
      v12 = v9;
    }

    else
    {
      v12 = &type metadata for EmptyActionKindTable;
    }

    if (v9)
    {
      v13 = v11;
    }

    else
    {
      v13 = &off_1F56F1850;
    }

    sub_1DB4046A8(v12, v13, v16);
    (*(v19 + 8))(v7, v5);
    sub_1DB30C7A8(v16, v17);
    v14 = v17[1];
    *a2 = v17[0];
    *(a2 + 16) = v14;
    *(a2 + 32) = v18;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

unint64_t sub_1DB404654()
{
  result = qword_1ECC455C8;
  if (!qword_1ECC455C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC455C8);
  }

  return result;
}

void *sub_1DB4046A8@<X0>(uint64_t a2@<X3>, uint64_t a4@<X5>, uint64_t a6@<X8>)
{
  type metadata accessor for CodeByKind(0, a2, *(a4 + 8), a2);
  sub_1DB50B7C0();
  swift_getWitnessTable();
  result = sub_1DB50B780();
  if (!v6)
  {
    return sub_1DB30C7A8(&v9, a6);
  }

  return result;
}

uint64_t Models.DeepLinkDestination.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC455D0, &qword_1DB51AED8);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v15 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v6 = sub_1DB404654();
  sub_1DB50BE40();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v7 = sub_1DB50BE30();
  v8 = sub_1DB31F3BC(0xD000000000000023, 0x80000001DB5298A0, v7);
  v10 = v9;

  if (v8)
  {
    v12 = v8;
  }

  else
  {
    v12 = &type metadata for EmptyActionKindTable;
  }

  if (v8)
  {
    v13 = v10;
  }

  else
  {
    v13 = &off_1F56F1850;
  }

  sub_1DB404938(v15[1], v12, v5, v11, v12, &_s19DeepLinkDestinationV10CodingKeysON, v13, v6);
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1DB404938(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_1DB30BE90(a1, v14);
  v10 = *(a7 + 8);
  CodeByKind.init(wrappedValue:)(v14, v15);
  sub_1DB50B8C0();
  v12 = type metadata accessor for CodeByKind(0, a5, v10, v11);
  swift_getWitnessTable();
  sub_1DB50B8A0();
  return (*(*(v12 - 8) + 8))(v15, v12);
}

uint64_t Models.DeepLinkDestination.segue.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_0(v1);

  return sub_1DB30C7A8(a1, v1);
}

unint64_t sub_1DB404B24()
{
  result = qword_1ECC455D8;
  if (!qword_1ECC455D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC455D8);
  }

  return result;
}

unint64_t sub_1DB404B7C()
{
  result = qword_1ECC455E0;
  if (!qword_1ECC455E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC455E0);
  }

  return result;
}

unint64_t sub_1DB404BD4()
{
  result = qword_1ECC455E8;
  if (!qword_1ECC455E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC455E8);
  }

  return result;
}

uint64_t sub_1DB404C28(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  if (!a1)
  {
    return !a2;
  }

  if (!a2 || (sub_1DB48F3DC(a2, a1) & 1) == 0)
  {
    return 0;
  }

  v8 = 1 << *(a1 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a1 + 64);
  v11 = (v8 + 63) >> 6;

  v13 = 0;
  v25 = a3;
  while (v10)
  {
    v14 = a4;
    v15 = a2;
LABEL_14:
    v17 = __clz(__rbit64(v10)) | (v13 << 6);
    v18 = (*(a1 + 48) + 16 * v17);
    v20 = *v18;
    v19 = v18[1];
    sub_1DB300B14(*(a1 + 56) + 32 * v17, v30);
    v29[0] = v20;
    v29[1] = v19;
    sub_1DB300B14(v30, v28);
    if (*(v15 + 16))
    {

      v21 = sub_1DB306160(v20, v19);
      if (v22)
      {
        sub_1DB300B14(*(v15 + 56) + 32 * v21, &v26);
      }

      else
      {
        v26 = 0u;
        v27 = 0u;
      }
    }

    else
    {
      v26 = 0u;
      v27 = 0u;
    }

    a4 = v14;
    v10 &= v10 - 1;
    v23 = sub_1DB404E3C(v28, &v26, v25, v14);
    sub_1DB30623C(&v26, &qword_1ECC426B0, &qword_1DB50EEB0);
    sub_1DB30623C(v28, &qword_1ECC426B0, &qword_1DB50EEB0);
    result = sub_1DB30623C(v29, &qword_1ECC43438, &qword_1DB511338);
    if ((v23 & 1) == 0)
    {
      v24 = 0;
LABEL_24:

      return v24;
    }
  }

  v15 = a2;
  while (1)
  {
    v16 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v16 >= v11)
    {
      v24 = 1;
      goto LABEL_24;
    }

    v10 = *(a1 + 64 + 8 * v16);
    ++v13;
    if (v10)
    {
      v14 = a4;
      v13 = v16;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1DB404E3C(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  sub_1DB301CDC(a1, &v53);
  if (!v54)
  {
    goto LABEL_7;
  }

  sub_1DB30C200(&v53, &v57);
  sub_1DB301CDC(a2, &v53);
  if (!v54)
  {
    __swift_destroy_boxed_opaque_existential_0(&v57);
LABEL_7:
    sub_1DB30623C(&v53, &qword_1ECC426B0, &qword_1DB50EEB0);
    v7 = 0;
    return v7 & 1;
  }

  sub_1DB30C200(&v53, v56);
  sub_1DB300B14(&v57, &v53);
  sub_1DB300B14(v56, v55);
  sub_1DB336FD4(0, &qword_1ECC433A0, 0x1E696AD98);
  if (swift_dynamicCast())
  {
    if (swift_dynamicCast())
    {
      sub_1DB336FD4(0, &qword_1EE30C798, 0x1E69E58C0);
      v7 = sub_1DB50B0C0();

LABEL_58:
      __swift_destroy_boxed_opaque_existential_0(v56);
      __swift_destroy_boxed_opaque_existential_0(&v57);
      goto LABEL_59;
    }
  }

  if (swift_dynamicCast() && swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_0(v56);
    __swift_destroy_boxed_opaque_existential_0(&v57);
    v7 = v43 ^ v50 ^ 1;
LABEL_59:
    __swift_destroy_boxed_opaque_existential_0(v55);
    __swift_destroy_boxed_opaque_existential_0(&v53);
    return v7 & 1;
  }

  if (swift_dynamicCast() && swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_0(v56);
    __swift_destroy_boxed_opaque_existential_0(&v57);
    v7 = *&v43 == *&v50;
    goto LABEL_59;
  }

  v8 = MEMORY[0x1E69E6158];
  if (swift_dynamicCast())
  {
    if (swift_dynamicCast())
    {
      if (v43 == v50)
      {
        v7 = 1;
      }

      else
      {
        v7 = sub_1DB50BA30();
      }

      goto LABEL_57;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC433A8, &unk_1DB511088);
  if (!swift_dynamicCast())
  {
LABEL_38:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42F88, &qword_1DB511080);
    if (swift_dynamicCast())
    {
      if (swift_dynamicCast())
      {
        if (a4 < a3)
        {
          v7 = sub_1DB404C28(v43, v50, a3, a4 + 1);

LABEL_57:

          goto LABEL_58;
        }

LABEL_61:

        __swift_destroy_boxed_opaque_existential_0(v56);
        __swift_destroy_boxed_opaque_existential_0(&v57);
        __swift_destroy_boxed_opaque_existential_0(v55);
        __swift_destroy_boxed_opaque_existential_0(&v53);
        v7 = 0;
        return v7 & 1;
      }
    }

    if (qword_1ECC42228 != -1)
    {
      goto LABEL_71;
    }

    goto LABEL_44;
  }

  v9 = v52;
  if (!swift_dynamicCast())
  {

    goto LABEL_38;
  }

  if (a4 >= a3)
  {
    goto LABEL_61;
  }

  v8 = 0;
  v10 = 0;
  v11 = *(v52 + 16);
  v12 = *(v47 + 16);
  v38 = v47;
  v36 = v47 + 32;
  v37 = v52 + 32;
  while (1)
  {
    if (v10 == v11)
    {
      v50 = 0u;
      v51 = 0u;
      v10 = v11;
      if (v8 == v12)
      {
        goto LABEL_26;
      }

      goto LABEL_30;
    }

    if ((v10 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v10 >= *(v9 + 16))
    {
      goto LABEL_69;
    }

    sub_1DB300B14(v37 + 32 * v10++, &v50);
    if (v8 == v12)
    {
LABEL_26:
      v48 = 0u;
      v49 = 0u;
      v8 = v12;
      goto LABEL_33;
    }

LABEL_30:
    if ((v8 & 0x8000000000000000) != 0)
    {
      goto LABEL_68;
    }

    if (v8 >= *(v38 + 16))
    {
      goto LABEL_70;
    }

    sub_1DB300B14(v36 + 32 * v8++, &v48);
LABEL_33:
    v43 = v50;
    v44 = v51;
    v45 = v48;
    v46 = v49;
    if (!*(&v51 + 1))
    {

      __swift_destroy_boxed_opaque_existential_0(v56);
      __swift_destroy_boxed_opaque_existential_0(&v57);
      if (*(&v46 + 1))
      {
        sub_1DB30623C(&v45, &qword_1ECC426B0, &qword_1DB50EEB0);
        v7 = 0;
      }

      else
      {
        v7 = 1;
      }

      goto LABEL_59;
    }

    if (!*(&v46 + 1))
    {

      __swift_destroy_boxed_opaque_existential_0(v56);
      __swift_destroy_boxed_opaque_existential_0(&v57);
      v14 = &v43;
      goto LABEL_65;
    }

    sub_1DB30C200(&v43, v42);
    sub_1DB30C200(&v45, v41);
    sub_1DB300B14(v42, v40);
    sub_1DB300B14(v41, v39);
    v13 = sub_1DB404E3C(v40, v39, a3, a4 + 1);
    sub_1DB30623C(v39, &qword_1ECC426B0, &qword_1DB50EEB0);
    sub_1DB30623C(v40, &qword_1ECC426B0, &qword_1DB50EEB0);
    __swift_destroy_boxed_opaque_existential_0(v41);
    __swift_destroy_boxed_opaque_existential_0(v42);
    if ((v13 & 1) == 0)
    {

      __swift_destroy_boxed_opaque_existential_0(v56);
      v14 = &v57;
LABEL_65:
      __swift_destroy_boxed_opaque_existential_0(v14);
      v7 = 0;
      goto LABEL_59;
    }
  }

  __break(1u);
LABEL_68:
  __break(1u);
LABEL_69:
  __break(1u);
LABEL_70:
  __break(1u);
LABEL_71:
  swift_once();
LABEL_44:
  v15 = qword_1ECC466F0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1DB50F8D0;
  *&v42[0] = sub_1DB301BC0(0, 64, 0, MEMORY[0x1E69E7CC0]);
  v17._object = 0x80000001DB52D710;
  v17._countAndFlagsBits = 0xD000000000000034;
  LogMessage.StringInterpolation.appendLiteral(_:)(v17);
  __swift_project_boxed_opaque_existential_1(&v57, v58);
  DynamicType = swift_getDynamicType();
  *(&v51 + 1) = swift_getMetatypeMetadata();
  *&v50 = DynamicType;
  sub_1DB301CDC(&v50, &v48);
  v43 = 0u;
  v44 = 0u;
  sub_1DB301D4C(&v48, &v43);
  LOBYTE(v45) = 0;
  v19 = *&v42[0];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v19 = sub_1DB301BC0(0, *(v19 + 2) + 1, 1, v19);
  }

  v21 = *(v19 + 2);
  v20 = *(v19 + 3);
  if (v21 >= v20 >> 1)
  {
    v19 = sub_1DB301BC0((v20 > 1), v21 + 1, 1, v19);
  }

  *(v19 + 2) = v21 + 1;
  v22 = &v19[40 * v21];
  v23 = v43;
  v24 = v44;
  v22[64] = v45;
  *(v22 + 2) = v23;
  *(v22 + 3) = v24;
  *&v42[0] = v19;
  sub_1DB30623C(&v50, &qword_1ECC426B0, &qword_1DB50EEB0);
  v25._countAndFlagsBits = 0x756F662073617720;
  v25._object = 0xEB000000002E646ELL;
  LogMessage.StringInterpolation.appendLiteral(_:)(v25);
  *(v16 + 32) = *&v42[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A30, &unk_1DB50F8E0);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_1DB50EE90;
  *(&v44 + 1) = v8;
  *&v43 = 0xD000000000000059;
  *(&v43 + 1) = 0x80000001DB52D750;
  *(v26 + 48) = 0u;
  *(v26 + 32) = 0u;
  sub_1DB301D4C(&v43, v26 + 32);
  *(v26 + 64) = 0;
  *(v16 + 40) = v26;
  v27 = sub_1DB50AF40();
  if (os_log_type_enabled(v15, v27))
  {
    if (qword_1EE30EDD8 != -1)
    {
      swift_once();
    }

    v28 = off_1EE30EDE0;
    os_unfair_lock_lock(off_1EE30EDE0 + 5);
    os_unfair_lock_opaque_low = LOBYTE(v28[4]._os_unfair_lock_opaque);
    os_unfair_lock_unlock(v28 + 5);
    if (os_unfair_lock_opaque_low == 2)
    {
      LOBYTE(os_unfair_lock_opaque_low) = os_variant_has_internal_content();
    }

    v30 = swift_allocObject();
    *(v30 + 16) = (os_unfair_lock_opaque_low & 1) == 0;
    *&v43 = v16;
    *(&v43 + 1) = sub_1DB31485C;
    *&v44 = v30;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42D00, &unk_1DB511AC0);
    sub_1DB314864();
    v31 = sub_1DB50A5E0();
    v33 = v32;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42D08, &qword_1DB511AD0);
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_1DB50EE90;
    *(v34 + 56) = v8;
    *(v34 + 64) = sub_1DB31494C();
    *(v34 + 32) = v31;
    *(v34 + 40) = v33;
    sub_1DB50A1E0("%{public}@", 10, 2, &dword_1DB2F5000, v15, v27, v34);
  }

  v7 = _isStructurallyEqual(_:to:with:at:)(&v57, v56, a3, 0);
  __swift_destroy_boxed_opaque_existential_0(v56);
  __swift_destroy_boxed_opaque_existential_0(&v57);
  sub_1DB30623C(&v53, &qword_1ECC44C00, qword_1DB5174C8);
  return v7 & 1;
}

uint64_t sub_1DB405888(uint64_t a1)
{
  sub_1DB405A10();
  sub_1DB50AA60();
  v2 = v1;
  if (swift_dynamicCast())
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DB405910(uint64_t a1)
{
  v3 = [*v2 objectAtIndexedSubscript_];
  sub_1DB50B200();

  return swift_unknownObjectRelease();
}

unint64_t sub_1DB405990(uint64_t a1)
{
  result = sub_1DB4059B8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1DB4059B8()
{
  result = qword_1ECC455F0[0];
  if (!qword_1ECC455F0[0])
  {
    sub_1DB405A10();
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECC455F0);
  }

  return result;
}

unint64_t sub_1DB405A10()
{
  result = qword_1ECC45BD0;
  if (!qword_1ECC45BD0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECC45BD0);
  }

  return result;
}

unint64_t sub_1DB405A5C(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = sub_1DB35C8C0();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1DB405AE4(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))(a1);
    }

    v17 = *((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

_DWORD *sub_1DB405C20(_DWORD *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v10 = a3 - v7 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a3)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (a2 > v7)
  {
    if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v14 = a2 - v7;
    }

    else
    {
      v14 = 1;
    }

    if (((v8 + 7) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v15 = ~v7 + a2;
      v16 = result;
      bzero(result, ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 16);
      result = v16;
      *v16 = v15;
    }

    if (v13 > 1)
    {
      if (v13 == 2)
      {
        *(result + v9) = v14;
      }

      else
      {
        *(result + v9) = v14;
      }
    }

    else if (v13)
    {
      *(result + v9) = v14;
    }

    return result;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *(result + v9) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_36;
    }

    *(result + v9) = 0;
  }

  else if (v13)
  {
    *(result + v9) = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_36;
  }

  if (!a2)
  {
    return result;
  }

LABEL_36:
  if (v6 < 0x7FFFFFFF)
  {
    v18 = ((result + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
    if ((a2 & 0x80000000) != 0)
    {
      *v18 = a2 & 0x7FFFFFFF;
      v18[1] = 0;
    }

    else
    {
      *v18 = a2 - 1;
    }
  }

  else
  {
    v17 = *(v5 + 56);

    return v17();
  }

  return result;
}

uint64_t sub_1DB405E3C(uint64_t a1, uint64_t a2)
{
  v6 = *(a2 + 16);
  v5 = *(a2 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v11 = &v14 - v10;
  v12 = *(v2 + *(a2 + 36));
  (*(v5 + 24))(a1, v6, v5, v9);
  v12(v11);
  return (*(v8 + 8))(v11, AssociatedTypeWitness);
}

char *sub_1DB405F74(uint64_t a1)
{
  v3 = *(a1 + 16);
  v2 = *(a1 + 24);
  v36 = a1;
  v39 = *(v2 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v32 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v6 = &v31 - v5;
  v7 = sub_1DB50B120();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v31 - v8;
  v10 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = swift_getAssociatedTypeWitness();
  v33 = *(v14 - 8);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v31 - v16;
  v18 = (*(v2 + 16))(v3, v2, v15);
  v19 = sub_1DB3035BC(0, v18 & ~(v18 >> 63), 0, MEMORY[0x1E69E7CC0]);
  v20 = *(v10 + 16);
  v37 = v1;
  v20(v13, v1, v3);
  sub_1DB50A880();
  v21 = v32;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v38 = v17;
  v39 = v14;
  v35 = AssociatedConformanceWitness;
  sub_1DB50B170();
  v34 = *(v21 + 48);
  if (v34(v9, 1, AssociatedTypeWitness) != 1)
  {
    v24 = *(v21 + 32);
    v25 = (v21 + 8);
    do
    {
      v24(v6, v9, AssociatedTypeWitness);
      (*(v37 + *(v36 + 36)))(v40, v6);
      v27 = *(v19 + 2);
      v26 = *(v19 + 3);
      if (v27 >= v26 >> 1)
      {
        v19 = sub_1DB3035BC((v26 > 1), v27 + 1, 1, v19);
      }

      (*v25)(v6, AssociatedTypeWitness);
      *(v19 + 2) = v27 + 1;
      v28 = &v19[40 * v27];
      v29 = v40[0];
      v30 = v40[1];
      *(v28 + 8) = v41;
      *(v28 + 2) = v29;
      *(v28 + 3) = v30;
      sub_1DB50B170();
    }

    while (v34(v9, 1, AssociatedTypeWitness) != 1);
  }

  (*(v33 + 8))(v38, v39);
  return v19;
}

uint64_t sub_1DB40638C(void (*a1)(void *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a4;
  v30 = a1;
  v31 = a2;
  MEMORY[0x1EEE9AC00](a1);
  v24[0] = v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v6 + 16);
  v7 = *(v6 + 24);
  v32 = v6;
  v28 = *(v7 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v26 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v11 = v24 - v10;
  v12 = sub_1DB50B120();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = v24 - v13;
  v33 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v27 = v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = swift_getAssociatedTypeWitness();
  v25 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v18 = v24 - v17;
  v37 = sub_1DB50A480();
  v19 = v34;
  v24[1] = (*(v7 + 16))(v8, v7);
  v29 = sub_1DB50AA60();
  sub_1DB50A9C0();
  (*(v33 + 2))(v27, v19, v8);
  sub_1DB50A880();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v33 = v18;
  v28 = AssociatedConformanceWitness;
  sub_1DB50B170();
  v21 = v26;
  v27 = *(v26 + 48);
  if ((v27)(v14, 1, AssociatedTypeWitness) == 1)
  {
LABEL_5:
    (*(v25 + 8))(v33, v35);
    return v37;
  }

  else
  {
    v26 = *(v21 + 32);
    v22 = (v21 + 8);
    while (1)
    {
      (v26)(v11, v14, AssociatedTypeWitness);
      (*(v34 + *(v32 + 36)))(v36, v11);
      v30(v36);
      if (v4)
      {
        break;
      }

      sub_1DB50AA10();
      sub_1DB3151CC(v36);
      (*v22)(v11, AssociatedTypeWitness);
      sub_1DB50B170();
      if ((v27)(v14, 1, AssociatedTypeWitness) == 1)
      {
        goto LABEL_5;
      }
    }

    sub_1DB3151CC(v36);
    (*v22)(v11, AssociatedTypeWitness);
    (*(v25 + 8))(v33, v35);
  }
}

uint64_t sub_1DB40684C(void (*a1)(void *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v5;
  v67 = a1;
  v68 = a2;
  v58 = sub_1DB50B120();
  v61 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v73 = &v48 - v9;
  v64 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v57 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v56 = &v48 - v13;
  v15 = *(a3 + 16);
  v14 = *(a3 + 24);
  v69 = a3;
  v65 = *(v14 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v60 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v72 = &v48 - v16;
  v17 = sub_1DB50B120();
  MEMORY[0x1EEE9AC00](v17 - 8);
  v59 = &v48 - v18;
  v71 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v48 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = swift_getAssociatedTypeWitness();
  v50 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v48 - v23;
  v75 = sub_1DB50A480();
  (*(v14 + 16))(v15, v14);
  v66 = a4;
  v25 = v22;
  v55 = sub_1DB50AA60();
  sub_1DB50A9C0();
  v26 = *(v71 + 16);
  v70 = v4;
  v26(v21, v4, v15);
  v27 = v59;
  sub_1DB50A880();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v71 = v25;
  sub_1DB50B170();
  v29 = v60;
  v30 = v60 + 48;
  v31 = AssociatedTypeWitness;
  v65 = *(v60 + 48);
  if ((v65)(v27, 1) == 1)
  {
LABEL_2:
    (*(v50 + 8))(v24, v71);
    return v75;
  }

  else
  {
    v33 = *(v29 + 32);
    v62 = (v64 + 6);
    v63 = v33;
    v54 = (v64 + 4);
    v53 = (v64 + 2);
    v52 = v64 + 1;
    v64 = (v29 + 8);
    v51 = (v61 + 8);
    v60 = v29 + 32;
    while (1)
    {
      v34 = v72;
      v63(v72, v27, v31);
      (*(v70 + *(v69 + 36)))(v74, v34);
      v67(v74);
      if (v6)
      {
        break;
      }

      v35 = v66;
      if ((*v62)(v73, 1, v66) == 1)
      {
        sub_1DB3151CC(v74);
        (*v64)(v72, v31);
        (*v51)(v73, v58);
      }

      else
      {
        v36 = *v54;
        v61 = 0;
        v37 = v31;
        v38 = v56;
        v36(v56, v73, v35);
        (*v53)(v57, v38, v35);
        v39 = v30;
        v40 = AssociatedConformanceWitness;
        v41 = v24;
        v42 = v35;
        v43 = v72;
        sub_1DB50AA10();
        v44 = v38;
        v45 = v37;
        v6 = v61;
        v27 = v59;
        v46 = v42;
        v24 = v41;
        AssociatedConformanceWitness = v40;
        v30 = v39;
        (*v52)(v44, v46);
        sub_1DB3151CC(v74);
        v47 = v43;
        v31 = v45;
        (*v64)(v47, v45);
      }

      sub_1DB50B170();
      if (v65(v27, 1, v31) == 1)
      {
        goto LABEL_2;
      }
    }

    sub_1DB3151CC(v74);
    (*v64)(v72, v31);
    (*(v50 + 8))(v24, v71);
  }
}

char *sub_1DB406F68(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v40 = a1;
  v41 = a2;
  v5 = *(a3 + 16);
  v4 = *(a3 + 24);
  v42 = a3;
  v44 = *(v4 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v36 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v8 = &v34 - v7;
  v9 = sub_1DB50B120();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v34 - v10;
  v12 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = v5;
  v17 = swift_getAssociatedTypeWitness();
  v35 = *(v17 - 8);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = &v34 - v19;
  (*(v12 + 16))(v15, v48, v16, v18);
  sub_1DB50A880();
  v21 = v36;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v43 = v20;
  v44 = v17;
  v39 = AssociatedConformanceWitness;
  sub_1DB50B170();
  v38 = *(v21 + 48);
  if (v38(v11, 1, AssociatedTypeWitness) == 1)
  {
    v23 = MEMORY[0x1E69E7CC0];
LABEL_3:
    (*(v35 + 8))(v43, v44);
  }

  else
  {
    v25 = *(v21 + 32);
    v24 = v21 + 32;
    v37 = v25;
    v26 = (v24 - 24);
    v23 = MEMORY[0x1E69E7CC0];
    v36 = v24;
    v25(v8, v11, AssociatedTypeWitness);
    while (1)
    {
      (*(v48 + *(v42 + 36)))(v47, v8);
      v27 = v40(v47);
      if (v3)
      {
        break;
      }

      if (v27)
      {
        sub_1DB3171C0(v47, v45);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v23 = sub_1DB3035BC(0, *(v23 + 2) + 1, 1, v23);
        }

        v29 = *(v23 + 2);
        v28 = *(v23 + 3);
        if (v29 >= v28 >> 1)
        {
          v23 = sub_1DB3035BC((v28 > 1), v29 + 1, 1, v23);
        }

        sub_1DB3151CC(v47);
        (*v26)(v8, AssociatedTypeWitness);
        *(v23 + 2) = v29 + 1;
        v30 = &v23[40 * v29];
        v31 = v45[0];
        v32 = v45[1];
        *(v30 + 8) = v46;
        *(v30 + 2) = v31;
        *(v30 + 3) = v32;
      }

      else
      {
        sub_1DB3151CC(v47);
        (*v26)(v8, AssociatedTypeWitness);
      }

      sub_1DB50B170();
      if (v38(v11, 1, AssociatedTypeWitness) == 1)
      {
        goto LABEL_3;
      }

      v37(v8, v11, AssociatedTypeWitness);
    }

    sub_1DB3151CC(v47);
    (*v26)(v8, AssociatedTypeWitness);
    (*(v35 + 8))(v43, v44);
  }

  return v23;
}

uint64_t sub_1DB407424@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t, void *)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v52 = a1;
  v47 = a2;
  v48 = a3;
  v41 = a5;
  v40 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v37 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v7 + 16);
  v49 = v7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v43 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v10 = &v36 - v9;
  v11 = sub_1DB50B120();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v36 - v12;
  v14 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = swift_getAssociatedTypeWitness();
  v39 = *(v18 - 8);
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = &v36 - v20;
  v22 = *(v40 + 16);
  v50 = a4;
  v22(v41, v52, a4, v19);
  (*(v14 + 16))(v17, v53, v8);
  sub_1DB50A880();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v51 = v21;
  v52 = v18;
  v46 = AssociatedConformanceWitness;
  sub_1DB50B170();
  v24 = v43;
  v25 = AssociatedTypeWitness;
  v44 = *(v43 + 48);
  v45 = v43 + 48;
  if (v44(v13, 1, AssociatedTypeWitness) == 1)
  {
    return (*(v39 + 8))(v51, v52);
  }

  v27 = *(v24 + 32);
  v26 = v24 + 32;
  v28 = v41;
  v29 = (v26 - 24);
  v42 = v27;
  v43 = v40 + 8;
  v30 = (v40 + 32);
  v31 = v37;
  while (1)
  {
    v32 = v26;
    v42(v10, v13, v25);
    (*(v53 + *(v49 + 36)))(v54, v10);
    v33 = v55;
    v47(v28, v54);
    if (v33)
    {
      break;
    }

    v55 = 0;
    sub_1DB3151CC(v54);
    (*v29)(v10, v25);
    v34 = v50;
    (*v43)(v28, v50);
    (*v30)(v28, v31, v34);
    sub_1DB50B170();
    v26 = v32;
    if (v44(v13, 1, v25) == 1)
    {
      return (*(v39 + 8))(v51, v52);
    }
  }

  sub_1DB3151CC(v54);
  (*v29)(v10, v25);
  (*(v39 + 8))(v51, v52);
  return (*v43)(v28, v50);
}

uint64_t sub_1DB40791C(void (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v29 = a1;
  v30 = a2;
  v5 = *(a3 + 16);
  v4 = *(a3 + 24);
  v31 = a3;
  v33 = *(v4 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v25 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v8 = &v25 - v7;
  v9 = sub_1DB50B120();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v25 - v10;
  v12 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_getAssociatedTypeWitness();
  v26 = *(v16 - 8);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = &v25 - v18;
  (*(v12 + 16))(v15, v35, v5, v17);
  sub_1DB50A880();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v32 = v19;
  v33 = v16;
  v21 = v25;
  v28 = AssociatedConformanceWitness;
  sub_1DB50B170();
  v27 = *(v21 + 48);
  if (v27(v11, 1, AssociatedTypeWitness) != 1)
  {
    v22 = *(v21 + 32);
    v23 = (v21 + 8);
    while (1)
    {
      v22(v8, v11, AssociatedTypeWitness);
      (*(v35 + *(v31 + 36)))(v34, v8);
      v29(v34);
      if (v3)
      {
        break;
      }

      sub_1DB3151CC(v34);
      (*v23)(v8, AssociatedTypeWitness);
      sub_1DB50B170();
      if (v27(v11, 1, AssociatedTypeWitness) == 1)
      {
        return (*(v26 + 8))(v32, v33);
      }
    }

    sub_1DB3151CC(v34);
    (*v23)(v8, AssociatedTypeWitness);
  }

  return (*(v26 + 8))(v32, v33);
}

BOOL sub_1DB407CD4(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v30 = a1;
  v31 = a2;
  v5 = *(a3 + 16);
  v4 = *(a3 + 24);
  v32 = a3;
  v37 = *(v4 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v28 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v8 = &v27 - v7;
  v9 = sub_1DB50B120();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v27 - v10;
  v12 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_getAssociatedTypeWitness();
  v29 = *(v16 - 8);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = &v27 - v18;
  (*(v12 + 16))(v15, v34, v5, v17);
  v35 = v19;
  sub_1DB50A880();
  v37 = v16;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v20 = (v28 + 48);
  v21 = (v28 + 32);
  v22 = (v28 + 8);
  do
  {
    sub_1DB50B170();
    v23 = (*v20)(v11, 1, AssociatedTypeWitness);
    if (v23 == 1)
    {
      break;
    }

    (*v21)(v8, v11, AssociatedTypeWitness);
    (*(v34 + *(v32 + 36)))(v36, v8);
    v24 = v30(v36);
    if (v3)
    {
      sub_1DB3151CC(v36);
      (*v22)(v8, AssociatedTypeWitness);
      break;
    }

    v25 = v24;
    sub_1DB3151CC(v36);
    (*v22)(v8, AssociatedTypeWitness);
  }

  while ((v25 & 1) == 0);
  (*(v29 + 8))(v35, v37);
  return v23 != 1;
}

uint64_t MetricsFieldInclusionRequest.init(deserializing:using:)@<X0>(uint64_t a1@<X0>, void *a3@<X8>)
{

  sub_1DB330D60(a1, v12);
  if (v13)
  {
    v5 = __swift_project_boxed_opaque_existential_1(v12, v13);
    sub_1DB300B14(v5, v11);
    if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_0(v12);
      result = sub_1DB3151CC(a1);
      *a3 = v9;
      a3[1] = v10;
      return result;
    }

    __swift_destroy_boxed_opaque_existential_0(v12);
  }

  else
  {
    sub_1DB330DD0(v12);
  }

  sub_1DB315178();
  swift_allocError();
  v7 = MEMORY[0x1E69E7CC0];
  *v8 = &type metadata for MetricsFieldInclusionRequest;
  v8[1] = v7;
  v8[2] = 0;
  v8[3] = 0;
  swift_willThrow();
  return sub_1DB3151CC(a1);
}

uint64_t MetricsFieldInclusionRequest.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB50BDD0();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v9, v9[3]);
    v5 = sub_1DB50BA40();
    v7 = v6;
    __swift_destroy_boxed_opaque_existential_0(v9);
    *a2 = v5;
    a2[1] = v7;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t MetricsFieldInclusionRequest.encode(to:)(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB50BE20();
  __swift_mutable_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_1DB50BAC0();
  return __swift_destroy_boxed_opaque_existential_0(v2);
}

uint64_t MetricsFieldInclusionRequest.rawValue.getter()
{
  v1 = *v0;

  return v1;
}

void static MetricsFieldInclusionRequest.pageReferrer.getter(uint64_t a1@<X8>)
{
  strcpy(a1, "pageReferrer");
  *(a1 + 13) = 0;
  *(a1 + 14) = -5120;
}

unint64_t sub_1DB4084F8()
{
  result = qword_1ECC45678;
  if (!qword_1ECC45678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC45678);
  }

  return result;
}

uint64_t sub_1DB408574(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1DB4085BC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double sub_1DB40860C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  sub_1DB300B14(v4, &v15);
  sub_1DB336FD4(0, &qword_1ECC45BF0, 0x1E695DF20);
  if (swift_dynamicCast())
  {
    v8 = v13 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    v15 = 0u;
    v16 = 0u;
  }

  else
  {
    *&v15 = a1;
    *(&v15 + 1) = a2;

    v9 = v13;
    v10 = [v9 __swift_objectForKeyedSubscript_];
    swift_unknownObjectRelease();

    if (v10)
    {
      sub_1DB50B200();
      swift_unknownObjectRelease();
    }

    else
    {
      v13 = 0u;
      v14 = 0u;
    }

    v15 = v13;
    v16 = v14;
    if (*(&v14 + 1))
    {
      *(a3 + 24) = &type metadata for FoundationValue;
      *(a3 + 32) = &off_1F56FB6B0;
      v11 = swift_allocObject();
      *a3 = v11;
      sub_1DB30C200(&v15, (v11 + 16));

      return result;
    }
  }

  sub_1DB30623C(&v15, &qword_1ECC426B0, &qword_1DB50EEB0);
  result = 0.0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0;
  return result;
}

uint64_t sub_1DB40879C(uint64_t a1, uint64_t a2)
{
  sub_1DB300B14(v2, &v11);
  sub_1DB336FD4(0, &qword_1ECC45BF0, 0x1E695DF20);
  if (swift_dynamicCast())
  {
    v3 = v9 == 0;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    v11 = 0u;
    v12 = 0u;
LABEL_12:
    v7 = 0;
    goto LABEL_13;
  }

  v4 = v9;
  v5 = sub_1DB50A620();
  v6 = [v4 objectForKey_];

  if (v6)
  {
    sub_1DB50B200();
    swift_unknownObjectRelease();
  }

  else
  {

    v9 = 0u;
    v10 = 0u;
  }

  v11 = v9;
  v12 = v10;
  if (!*(&v10 + 1))
  {
    goto LABEL_12;
  }

  v7 = 1;
LABEL_13:
  sub_1DB30623C(&v11, &qword_1ECC426B0, &qword_1DB50EEB0);
  return v7;
}

BOOL sub_1DB4088D8()
{
  sub_1DB300B14(v0, v11);
  sub_1DB336FD4(0, &qword_1ECC433A0, 0x1E696AD98);
  v1 = swift_dynamicCast();
  v2 = *MEMORY[0x1E695E4D0];
  if (v1)
  {
    v3 = v10 == 0;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    if (!v2)
    {
      goto LABEL_17;
    }
  }

  else if (v2)
  {
    swift_unknownObjectRelease();
    if (v10 == v2)
    {
      return 1;
    }
  }

  else
  {
    v4 = 0;
    swift_unknownObjectRelease();
  }

  sub_1DB300B14(v0, v11);
  v5 = swift_dynamicCast();
  v6 = *MEMORY[0x1E695E4C0];
  if (v5 && v10)
  {
    if (v6)
    {
      swift_unknownObjectRelease();
      return v10 == v6;
    }

    v9 = 0;
    swift_unknownObjectRelease();
    return 0;
  }

  if (!v6)
  {
LABEL_17:
    v8 = 0;
    return 1;
  }

  return 0;
}

char *sub_1DB408A14()
{
  sub_1DB300B14(v0, v6);
  sub_1DB336FD4(0, &qword_1ECC42E40, 0x1E695DFB0);
  if (swift_dynamicCast())
  {
  }

  else
  {
    sub_1DB300B14(v0, v7);
    sub_1DB336FD4(0, &qword_1ECC45BF0, 0x1E695DF20);
    if (swift_dynamicCast())
    {
      v8[3] = &type metadata for FoundationDictionary;
      v8[4] = &off_1F56FF4E8;
      v8[0] = v6[0];
      v1 = __swift_project_boxed_opaque_existential_1(v8, &type metadata for FoundationDictionary);
      v3 = sub_1DB4A190C(*v1, v2);
      sub_1DB317740(v8);
      return v3;
    }
  }

  return MEMORY[0x1E69E7CC0];
}

double sub_1DB408B14@<D0>(uint64_t a1@<X8>)
{
  sub_1DB300B14(v1, v6);
  sub_1DB336FD4(0, &qword_1ECC42E40, 0x1E695DFB0);
  if (swift_dynamicCast())
  {
  }

  else
  {
    sub_1DB300B14(v1, v7);
    sub_1DB336FD4(0, &qword_1ECC45BF0, 0x1E695DF20);
    if (swift_dynamicCast())
    {
      v4 = v6[0];
      *(a1 + 24) = &type metadata for FoundationDictionary;
      *(a1 + 32) = &off_1F56FF4E8;
      *a1 = v4;
      return result;
    }
  }

  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t sub_1DB408C04@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC43838, &unk_1DB513310);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v27 - v8;
  sub_1DB300B14(v2, v30);
  if (swift_dynamicCast())
  {
    v28 = a1;
    v10 = v29;
    v11 = sub_1DB476330();
    v12 = sub_1DB50A620();

    [v11 setDateFormat_];

    v27 = v10;
    v13 = sub_1DB50A620();
    v14 = [v11 dateFromString_];

    if (v14)
    {
      sub_1DB509DB0();

      v15 = 0;
      v11 = v14;
    }

    else
    {
      v15 = 1;
    }

    v18 = sub_1DB509DD0();
    v19 = *(v18 - 8);
    v20 = *(v19 + 56);
    v20(v6, v15, 1, v18);
    sub_1DB35EA44(v6, v9);
    if ((*(v19 + 48))(v9, 1, v18) == 1 && ((sub_1DB30623C(v9, &qword_1ECC43838, &unk_1DB513310), v21 = sub_1DB476330(), v22 = sub_1DB50A620(), , [v21 setDateFormat_], v22, v23 = sub_1DB50A620(), v24 = objc_msgSend(v21, sel_dateFromString_, v23), v23, !v24) ? (v25 = 1) : (sub_1DB509DB0(), v21, v25 = 0, v21 = v24), v21, v18 = sub_1DB509DD0(), v19 = *(v18 - 8), v20 = *(v19 + 56), v20(v6, v25, 1, v18), sub_1DB35EA44(v6, v9), (*(v19 + 48))(v9, 1, v18) == 1))
    {
      sub_1DB30623C(v9, &qword_1ECC43838, &unk_1DB513310);

      return (v20)(v28, 1, 1, v18);
    }

    else
    {

      v26 = v28;
      (*(v19 + 32))(v28, v9, v18);
      return (v20)(v26, 0, 1, v18);
    }
  }

  else
  {
    v16 = sub_1DB509DD0();
    return (*(*(v16 - 8) + 56))(a1, 1, 1, v16);
  }
}

uint64_t BaseObjectGraph._withAllDependenciesResolved.getter()
{
  *(v1 + 24) = v0;
  *(v1 + 32) = *v0;
  return MEMORY[0x1EEE6DFA0](sub_1DB4090F8, 0, 0);
}

uint64_t sub_1DB4090F8()
{
  v1 = v0[4];
  v2 = swift_task_alloc();
  v0[5] = v2;
  *v2 = v0;
  v2[1] = sub_1DB4091B0;
  v3 = v0[3];

  return sub_1DB40CD74((v0 + 2), &unk_1DB51B2B0, v3, v1);
}

uint64_t sub_1DB4091B0()
{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = sub_1DB4092E0;
  }

  else
  {
    v2 = sub_1DB4092C4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t BaseObjectGraph.__allocating_init(name:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(a3 + 16);
  v9 = sub_1DB30BC94();
  v11 = MEMORY[0x1E12859D0](v8, &type metadata for OpaqueMetatype, MEMORY[0x1E69E7CA0] + 8, v9);
  sub_1DB307C9C(a3);

  return (*(v4 + 96))(a1, a2, &v11);
}

void *BaseObjectGraph._injectIfAvailable<A>(_:)(uint64_t a1, uint64_t a2)
{
  v5[2] = a2;
  v5[4] = a1;
  v3 = sub_1DB50B120();
  return sub_1DB40CCB4(sub_1DB40F5A0, v5, v3);
}

uint64_t sub_1DB409408(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[87] = a4;
  v4[86] = a3;
  v4[85] = a2;
  v4[84] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC456B0, &qword_1DB51B3B0);
  v4[88] = swift_task_alloc();
  v5 = type metadata accessor for _ResolvedDependency(0);
  v4[89] = v5;
  v4[90] = *(v5 - 8);
  v4[91] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC44120, &qword_1DB514148);
  v4[92] = v6;
  v4[93] = *(v6 - 8);
  v4[94] = swift_task_alloc();
  v4[95] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC456B8, &qword_1DB51B3B8);
  v4[96] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC456C0, &qword_1DB51B3C0);
  v4[97] = v7;
  v4[98] = *(v7 - 8);
  v4[99] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC46EB0, &qword_1DB50F750);
  v4[100] = swift_task_alloc();
  v4[101] = swift_task_alloc();
  v4[102] = swift_task_alloc();
  v4[103] = swift_task_alloc();
  v4[104] = swift_task_alloc();
  v4[105] = swift_task_alloc();
  v8 = sub_1DB50A230();
  v4[106] = v8;
  v4[107] = *(v8 - 8);
  v4[108] = swift_task_alloc();
  v4[109] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DB4096FC, 0, 0);
}

uint64_t sub_1DB4096FC()
{
  v87 = v0;
  if (qword_1EE30EAE8 == -1)
  {
    goto LABEL_2;
  }

  while (1)
  {
    swift_once();
LABEL_2:
    v1 = sub_1DB50A270();
    __swift_project_value_buffer(v1, qword_1EE312DE8);
    sub_1DB50A250();
    sub_1DB50A200();
    v2 = sub_1DB50A250();
    v3 = sub_1DB50B070();
    if (sub_1DB50B0E0())
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      v5 = sub_1DB50A210();
      _os_signpost_emit_with_name_impl(&dword_1DB2F5000, v2, v3, v5, "ResolveDependencies", "", v4, 2u);
      MEMORY[0x1E1288220](v4, -1, -1);
    }

    v6 = (v0 + 632);
    v7 = *(v0 + 872);
    v8 = *(v0 + 864);
    v9 = *(v0 + 856);
    v10 = *(v0 + 848);
    v11 = *(v0 + 696);
    v12 = *(v0 + 688);

    v13 = v10;
    v14 = v12;
    (*(v9 + 16))(v8, v7, v13);
    sub_1DB50A2C0();
    swift_allocObject();
    v15 = v11;
    *(v0 + 880) = sub_1DB50A2B0();
    v16 = v11 + 64;
    v17 = -1;
    v18 = -1 << *(v11 + 32);
    if (-v18 < 64)
    {
      v17 = ~(-1 << -v18);
    }

    v19 = v17 & *(v11 + 64);
    v20 = (63 - v18) >> 6;

    v21 = 0;
    v82 = v15;
    v80 = v16;
    v81 = v14;
    if (v19)
    {
      break;
    }

LABEL_10:
    if (v20 <= v21 + 1)
    {
      v23 = v21 + 1;
    }

    else
    {
      v23 = v20;
    }

    v24 = v23 - 1;
    while (1)
    {
      v22 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v22 >= v20)
      {
        v19 = 0;
        *(v0 + 88) = 0;
        *(v0 + 72) = 0u;
        v21 = v24;
        *(v0 + 56) = 0u;
        goto LABEL_19;
      }

      v19 = *(v16 + 8 * v22);
      ++v21;
      if (v19)
      {
        v21 = v22;
        goto LABEL_18;
      }
    }

    __break(1u);
  }

  while (1)
  {
    v22 = v21;
LABEL_18:
    v25 = __clz(__rbit64(v19));
    v19 &= v19 - 1;
    v26 = v25 | (v22 << 6);
    v27 = *(*(v15 + 48) + 8 * v26);
    sub_1DB300B14(*(v15 + 56) + 32 * v26, v0 + 336);
    *(v0 + 56) = v27;
    sub_1DB30C200((v0 + 336), (v0 + 64));
LABEL_19:
    v28 = *(v0 + 72);
    *(v0 + 16) = *(v0 + 56);
    *(v0 + 32) = v28;
    *(v0 + 48) = *(v0 + 88);
    v29 = *(v0 + 16);
    if (!v29)
    {
      break;
    }

    sub_1DB30C200((v0 + 24), (v0 + 400));
    if (*(v14 + 16) && (sub_1DB30EE50(v29), (v30 & 1) != 0))
    {
      sub_1DB300B14(v0 + 400, v0 + 432);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC456C8, &qword_1DB51B3C8);
      if (swift_dynamicCast())
      {
        v31 = *(v0 + 840);
        v83 = *(v0 + 832);
        sub_1DB2FEA0C((v0 + 96), v0 + 256);
        v32 = sub_1DB50ABA0();
        v33 = *(v32 - 8);
        (*(v33 + 56))(v31, 1, 1, v32);
        sub_1DB30BE90(v0 + 256, v0 + 296);
        v34 = swift_allocObject();
        v34[2] = 0;
        v35 = v34 + 2;
        v34[3] = 0;
        v34[4] = v29;
        sub_1DB2FEA0C((v0 + 296), (v34 + 5));
        sub_1DB30C4B8(v31, v83, &unk_1ECC46EB0, &qword_1DB50F750);
        v36 = (*(v33 + 48))(v83, 1, v32);
        v37 = *(v0 + 832);
        if (v36 == 1)
        {
          sub_1DB30623C(*(v0 + 832), &unk_1ECC46EB0, &qword_1DB50F750);
          if (*v35)
          {
            goto LABEL_25;
          }

LABEL_32:
          v38 = 0;
          v40 = 0;
        }

        else
        {
          sub_1DB50AB90();
          (*(v33 + 8))(v37, v32);
          if (!*v35)
          {
            goto LABEL_32;
          }

LABEL_25:
          swift_getObjectType();
          swift_unknownObjectRetain();
          v38 = sub_1DB50AAD0();
          v40 = v39;
          swift_unknownObjectRelease();
        }

        v51 = **(v0 + 680);

        if (v40 | v38)
        {
          v52 = v0 + 528;
          *(v0 + 528) = 0;
          *(v0 + 536) = 0;
          *(v0 + 544) = v38;
          *(v0 + 552) = v40;
        }

        else
        {
          v52 = 0;
        }

        v15 = v82;
        v63 = *(v0 + 840);
        *(v0 + 608) = 1;
        *(v0 + 616) = v52;
        *(v0 + 624) = v51;
        swift_task_create();

        sub_1DB30623C(v63, &unk_1ECC46EB0, &qword_1DB50F750);
        v64 = (v0 + 256);
        goto LABEL_48;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC456D0, &qword_1DB51B3D0);
      if (swift_dynamicCast())
      {
        v41 = *(v0 + 824);
        v84 = *(v0 + 816);
        sub_1DB2FEA0C((v0 + 136), v0 + 176);
        v42 = sub_1DB50ABA0();
        v43 = *(v42 - 8);
        (*(v43 + 56))(v41, 1, 1, v42);
        sub_1DB30BE90(v0 + 176, v0 + 216);
        v44 = swift_allocObject();
        v44[2] = 0;
        v45 = v44 + 2;
        v44[3] = 0;
        v44[4] = v29;
        sub_1DB2FEA0C((v0 + 216), (v44 + 5));
        sub_1DB30C4B8(v41, v84, &unk_1ECC46EB0, &qword_1DB50F750);
        v46 = (*(v43 + 48))(v84, 1, v42);
        v47 = *(v0 + 816);
        if (v46 == 1)
        {
          sub_1DB30623C(*(v0 + 816), &unk_1ECC46EB0, &qword_1DB50F750);
          if (*v45)
          {
            goto LABEL_30;
          }

LABEL_42:
          v48 = 0;
          v50 = 0;
        }

        else
        {
          sub_1DB50AB90();
          (*(v43 + 8))(v47, v42);
          if (!*v45)
          {
            goto LABEL_42;
          }

LABEL_30:
          swift_getObjectType();
          swift_unknownObjectRetain();
          v48 = sub_1DB50AAD0();
          v50 = v49;
          swift_unknownObjectRelease();
        }

        v65 = **(v0 + 680);

        if (v50 | v48)
        {
          v66 = v0 + 496;
          *(v0 + 496) = 0;
          *(v0 + 504) = 0;
          *(v0 + 512) = v48;
          *(v0 + 520) = v50;
        }

        else
        {
          v66 = 0;
        }

        v15 = v82;
        v67 = *(v0 + 824);
        *(v0 + 584) = 1;
        *(v0 + 592) = v66;
        *(v0 + 600) = v65;
        swift_task_create();

        sub_1DB30623C(v67, &unk_1ECC46EB0, &qword_1DB50F750);
        v64 = (v0 + 176);
LABEL_48:
        __swift_destroy_boxed_opaque_existential_0(v64);
        __swift_destroy_boxed_opaque_existential_0((v0 + 400));
        v6 = (v0 + 632);
        v14 = v81;
        goto LABEL_49;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC44108, &qword_1DB521B50);
      if (swift_dynamicCast())
      {
        v53 = *(v0 + 808);
        v79 = *(v0 + 800);
        v54 = sub_1DB50ABA0();
        v55 = *(v54 - 8);
        v85 = *v6;
        (*(v55 + 56))(v53, 1, 1, v54);
        v56 = swift_allocObject();
        *(v56 + 16) = 0;
        v57 = (v56 + 16);
        *(v56 + 24) = 0;
        *(v56 + 32) = v29;
        *(v56 + 40) = v85;
        sub_1DB30C4B8(v53, v79, &unk_1ECC46EB0, &qword_1DB50F750);
        v58 = v55;
        LODWORD(v55) = (*(v55 + 48))(v79, 1, v54);
        swift_unknownObjectRetain();
        v59 = *(v0 + 800);
        if (v55 == 1)
        {
          sub_1DB30623C(*(v0 + 800), &unk_1ECC46EB0, &qword_1DB50F750);
          if (*v57)
          {
            goto LABEL_38;
          }

LABEL_53:
          v60 = 0;
          v62 = 0;
        }

        else
        {
          sub_1DB50AB90();
          (*(v58 + 8))(v59, v54);
          if (!*v57)
          {
            goto LABEL_53;
          }

LABEL_38:
          swift_getObjectType();
          swift_unknownObjectRetain();
          v60 = sub_1DB50AAD0();
          v62 = v61;
          swift_unknownObjectRelease();
        }

        v68 = **(v0 + 680);

        if (v62 | v60)
        {
          v69 = v0 + 464;
          *(v0 + 464) = 0;
          *(v0 + 472) = 0;
          *(v0 + 480) = v60;
          *(v0 + 488) = v62;
        }

        else
        {
          v69 = 0;
        }

        v14 = v81;
        v15 = v82;
        v70 = *(v0 + 808);
        *(v0 + 560) = 1;
        *(v0 + 568) = v69;
        *(v0 + 576) = v68;
        swift_task_create();

        swift_unknownObjectRelease();

        sub_1DB30623C(v70, &unk_1ECC46EB0, &qword_1DB50F750);
        __swift_destroy_boxed_opaque_existential_0((v0 + 400));
        v6 = (v0 + 632);
LABEL_49:
        v16 = v80;
        goto LABEL_50;
      }

      __swift_destroy_boxed_opaque_existential_0((v0 + 400));
LABEL_50:
      __swift_destroy_boxed_opaque_existential_0((v0 + 432));
      if (!v19)
      {
        goto LABEL_10;
      }
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_0((v0 + 400));
      if (!v19)
      {
        goto LABEL_10;
      }
    }
  }

  v71 = *(v0 + 696);

  *(v0 + 648) = v71;

  sub_1DB4C1C98(v72, &v86);
  v73 = MEMORY[0x1E69E7CC0];
  if (v86)
  {
    v74 = v86;
  }

  else
  {
    v74 = MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A00, &unk_1DB5102D0);
  sub_1DB50ACC0();
  *(v0 + 904) = v74;
  *(v0 + 888) = v73;
  v75 = swift_task_alloc();
  *(v0 + 896) = v75;
  *v75 = v0;
  v75[1] = sub_1DB40A250;
  v76 = *(v0 + 776);
  v77 = *(v0 + 768);

  return MEMORY[0x1EEE6DAD8](v77, 0, 0, v76, v0 + 656);
}

uint64_t sub_1DB40A250()
{

  if (v0)
  {

    v1 = sub_1DB40A9A8;
  }

  else
  {
    v1 = sub_1DB40A374;
  }

  return MEMORY[0x1EEE6DFA0](v1, 0, 0);
}

uint64_t sub_1DB40A374()
{
  v61 = v0;
  v2 = *(v0 + 768);
  if ((*(*(v0 + 744) + 48))(v2, 1, *(v0 + 736)) == 1)
  {
    v3 = *(v0 + 904);
    v4 = *(v0 + 888);
    v5 = *(v0 + 880);
    v6 = *(v0 + 872);
    v7 = *(v0 + 856);
    v59 = *(v0 + 848);
    v8 = *(v0 + 688);
    v9 = *(v0 + 672);
    (*(*(v0 + 784) + 8))(*(v0 + 792), *(v0 + 776));
    v60[3] = &type metadata for AsyncObjectGraphMetrics;
    v60[0] = v3;
    sub_1DB30D870(v60, &type metadata for AsyncObjectGraphMetrics);
    sub_1DB3E33EC(v4, (v0 + 648), v9);

    sub_1DB40C1A4(v5, v8);

    (*(v7 + 8))(v6, v59);

    v10 = *(v0 + 8);

    return v10();
  }

  v12 = *(v0 + 760);
  v13 = *(v0 + 752);
  sub_1DB411820(v2, v12);
  sub_1DB30C4B8(v12, v13, &qword_1ECC44120, &qword_1DB514148);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = **(v0 + 752);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *(v0 + 888);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v16 = sub_1DB302A34(0, v16[2] + 1, 1, *(v0 + 888));
    }

    v18 = v16[2];
    v17 = v16[3];
    if (v18 >= v17 >> 1)
    {
      v16 = sub_1DB302A34((v17 > 1), v18 + 1, 1, v16);
    }

    v16[2] = v18 + 1;
    v16[v18 + 4] = v14;
    v19 = 1;
  }

  else
  {
    sub_1DB382904(*(v0 + 752), *(v0 + 704));
    v19 = 0;
    v16 = *(v0 + 888);
  }

  v20 = *(v0 + 720);
  v21 = *(v0 + 712);
  v22 = *(v0 + 704);
  (*(v20 + 56))(v22, v19, 1, v21);
  v24 = *(v20 + 48);
  v23 = v20 + 48;
  if (v24(v22, 1, v21) == 1)
  {
    v25 = *(v0 + 704);
    sub_1DB30623C(*(v0 + 760), &qword_1ECC44120, &qword_1DB514148);
    sub_1DB30623C(v25, &qword_1ECC456B0, &qword_1DB51B3B0);
LABEL_32:
    *(v0 + 888) = v16;
    v58 = swift_task_alloc();
    *(v0 + 896) = v58;
    *v58 = v0;
    v58[1] = sub_1DB40A250;
    v43 = *(v0 + 776);
    v40 = *(v0 + 768);
    v44 = v0 + 656;
    v41 = 0;
    v42 = 0;

    return MEMORY[0x1EEE6DAD8](v40, v41, v42, v43, v44);
  }

  v26 = *(v0 + 728);
  sub_1DB382904(*(v0 + 704), v26);
  v27 = *v26;
  sub_1DB300B14((v26 + 1), v0 + 368);
  v28 = *(v0 + 648);
  v29 = swift_isUniquelyReferenced_nonNull_native();
  *(v0 + 664) = v28;
  v30 = sub_1DB30EE50(v27);
  v32 = *(v28 + 16);
  v33 = (v31 & 1) == 0;
  v34 = __OFADD__(v32, v33);
  v35 = v32 + v33;
  if (v34)
  {
    __break(1u);
    goto LABEL_24;
  }

  v23 = v31;
  v1 = (v0 + 664);
  if (*(v28 + 24) >= v35)
  {
    if (v29)
    {
LABEL_21:
      v37 = *v1;
      if (v23)
      {
LABEL_22:
        v38 = (v37[7] + 32 * v30);
        __swift_destroy_boxed_opaque_existential_0(v38);
        sub_1DB30C200((v0 + 368), v38);
LABEL_27:
        *(v0 + 648) = v37;
        v47 = sub_1DB50BEE0();
        v49 = v48;
        sub_1DB509920();
        v51 = v50;
        v52 = swift_isUniquelyReferenced_nonNull_native();
        v53 = *(v0 + 904);
        if ((v52 & 1) == 0)
        {
          v53 = sub_1DB30324C(0, *(v53 + 2) + 1, 1, *(v0 + 904));
        }

        v55 = *(v53 + 2);
        v54 = *(v53 + 3);
        if (v55 >= v54 >> 1)
        {
          v53 = sub_1DB30324C((v54 > 1), v55 + 1, 1, v53);
        }

        v56 = *(v0 + 760);
        sub_1DB411890(*(v0 + 728));
        sub_1DB30623C(v56, &qword_1ECC44120, &qword_1DB514148);
        *(v53 + 2) = v55 + 1;
        v57 = &v53[24 * v55];
        *(v57 + 4) = v47;
        *(v57 + 5) = v49;
        *(v57 + 6) = v51;
        *(v0 + 904) = v53;
        goto LABEL_32;
      }

LABEL_25:
      v37[(v30 >> 6) + 8] |= 1 << v30;
      *(v37[6] + 8 * v30) = v27;
      v40 = sub_1DB30C200((v0 + 368), (v37[7] + 32 * v30));
      v45 = v37[2];
      v34 = __OFADD__(v45, 1);
      v46 = v45 + 1;
      if (v34)
      {
        __break(1u);
        return MEMORY[0x1EEE6DAD8](v40, v41, v42, v43, v44);
      }

      v37[2] = v46;
      goto LABEL_27;
    }

LABEL_24:
    v39 = v30;
    sub_1DB311D10();
    v30 = v39;
    v37 = *v1;
    if (v23)
    {
      goto LABEL_22;
    }

    goto LABEL_25;
  }

  sub_1DB31A6AC(v35, v29);
  v30 = sub_1DB30EE50(v27);
  if ((v23 & 1) == (v36 & 1))
  {
    goto LABEL_21;
  }

  return sub_1DB50BC20();
}

uint64_t sub_1DB40A9A8()
{
  v1 = v0[110];
  v2 = v0[109];
  v3 = v0[107];
  v4 = v0[106];
  v5 = v0[86];
  (*(v0[98] + 8))(v0[99], v0[97]);

  sub_1DB40C1A4(v1, v5);

  (*(v3 + 8))(v2, v4);

  v6 = v0[1];

  return v6();
}

uint64_t sub_1DB40AB48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[87] = a4;
  v4[86] = a3;
  v4[85] = a2;
  v4[84] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC456B0, &qword_1DB51B3B0);
  v4[88] = swift_task_alloc();
  v5 = type metadata accessor for _ResolvedDependency(0);
  v4[89] = v5;
  v4[90] = *(v5 - 8);
  v4[91] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC44120, &qword_1DB514148);
  v4[92] = v6;
  v4[93] = *(v6 - 8);
  v4[94] = swift_task_alloc();
  v4[95] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC456B8, &qword_1DB51B3B8);
  v4[96] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC456C0, &qword_1DB51B3C0);
  v4[97] = v7;
  v4[98] = *(v7 - 8);
  v4[99] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC46EB0, &qword_1DB50F750);
  v4[100] = swift_task_alloc();
  v4[101] = swift_task_alloc();
  v4[102] = swift_task_alloc();
  v4[103] = swift_task_alloc();
  v4[104] = swift_task_alloc();
  v4[105] = swift_task_alloc();
  v8 = sub_1DB50A230();
  v4[106] = v8;
  v4[107] = *(v8 - 8);
  v4[108] = swift_task_alloc();
  v4[109] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DB40AE3C, 0, 0);
}

uint64_t sub_1DB40AE3C()
{
  v89 = v0;
  if (qword_1EE30EAE8 == -1)
  {
    goto LABEL_2;
  }

  while (1)
  {
    swift_once();
LABEL_2:
    v1 = sub_1DB50A270();
    __swift_project_value_buffer(v1, qword_1EE312DE8);
    sub_1DB50A250();
    sub_1DB50A200();
    v2 = sub_1DB50A250();
    v3 = sub_1DB50B070();
    if (sub_1DB50B0E0())
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      v5 = sub_1DB50A210();
      _os_signpost_emit_with_name_impl(&dword_1DB2F5000, v2, v3, v5, "ResolveDependencies", "", v4, 2u);
      MEMORY[0x1E1288220](v4, -1, -1);
    }

    v6 = *(v0 + 872);
    v7 = *(v0 + 864);
    v8 = *(v0 + 856);
    v9 = *(v0 + 848);
    v10 = *(v0 + 696);
    v11 = *(v0 + 688);

    (*(v8 + 16))(v7, v6, v9);
    sub_1DB50A2C0();
    swift_allocObject();
    v12 = v10;
    v13 = v0 + 632;
    *(v0 + 880) = sub_1DB50A2B0();
    v14 = v10 + 64;
    v15 = -1 << *(v10 + 32);
    v16 = -v15 < 64 ? ~(-1 << -v15) : -1;
    v17 = v16 & *(v10 + 64);
    v18 = (63 - v15) >> 6;
    v87 = v11;
    v19 = v11 + 56;

    v20 = 0;
    v86 = v12;
    if (v17)
    {
      break;
    }

LABEL_11:
    if (v18 <= v20 + 1)
    {
      v23 = v20 + 1;
    }

    else
    {
      v23 = v18;
    }

    v24 = v23 - 1;
    while (1)
    {
      v22 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v22 >= v18)
      {
        v21 = v13;
        v17 = 0;
        *(v0 + 88) = 0;
        *(v0 + 72) = 0u;
        v20 = v24;
        *(v0 + 56) = 0u;
        goto LABEL_20;
      }

      v17 = *(v14 + 8 * v22);
      ++v20;
      if (v17)
      {
        v21 = v13;
        v20 = v22;
        goto LABEL_19;
      }
    }

    __break(1u);
  }

  while (1)
  {
    v21 = v13;
    v22 = v20;
LABEL_19:
    v25 = __clz(__rbit64(v17));
    v17 &= v17 - 1;
    v26 = v25 | (v22 << 6);
    v27 = *(*(v86 + 48) + 8 * v26);
    sub_1DB300B14(*(v86 + 56) + 32 * v26, v0 + 336);
    *(v0 + 56) = v27;
    sub_1DB30C200((v0 + 336), (v0 + 64));
LABEL_20:
    v28 = *(v0 + 72);
    *(v0 + 16) = *(v0 + 56);
    *(v0 + 32) = v28;
    *(v0 + 48) = *(v0 + 88);
    v29 = *(v0 + 16);
    if (!v29)
    {
      break;
    }

    sub_1DB30C200((v0 + 24), (v0 + 400));
    if (*(v87 + 16) && (sub_1DB50BCF0(), MEMORY[0x1E12871F0](v29), v30 = sub_1DB50BD30(), v31 = -1 << *(v87 + 32), v32 = v30 & ~v31, ((*(v19 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32) & 1) != 0))
    {
      v33 = ~v31;
      while (*(*(v87 + 48) + 8 * v32) != v29)
      {
        v32 = (v32 + 1) & v33;
        if (((*(v19 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32) & 1) == 0)
        {
          goto LABEL_9;
        }
      }

      sub_1DB300B14(v0 + 400, v0 + 432);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC456C8, &qword_1DB51B3C8);
      if (swift_dynamicCast())
      {
        v34 = *(v0 + 840);
        v82 = *(v0 + 832);
        sub_1DB2FEA0C((v0 + 96), v0 + 256);
        v35 = sub_1DB50ABA0();
        v36 = *(v35 - 8);
        (*(v36 + 56))(v34, 1, 1, v35);
        sub_1DB30BE90(v0 + 256, v0 + 296);
        v37 = swift_allocObject();
        v37[2] = 0;
        v78 = v37 + 2;
        v37[3] = 0;
        v37[4] = v29;
        sub_1DB2FEA0C((v0 + 296), (v37 + 5));
        sub_1DB30C4B8(v34, v82, &unk_1ECC46EB0, &qword_1DB50F750);
        v38 = (*(v36 + 48))(v82, 1, v35);
        v39 = *(v0 + 832);
        if (v38 == 1)
        {
          sub_1DB30623C(*(v0 + 832), &unk_1ECC46EB0, &qword_1DB50F750);
        }

        else
        {
          sub_1DB50AB90();
          (*(v36 + 8))(v39, v35);
        }

        if (*v78)
        {
          swift_getObjectType();
          swift_unknownObjectRetain();
          v46 = sub_1DB50AAD0();
          v48 = v47;
          swift_unknownObjectRelease();
        }

        else
        {
          v46 = 0;
          v48 = 0;
        }

        v54 = **(v0 + 680);

        if (v48 | v46)
        {
          v55 = v0 + 528;
          *(v0 + 528) = 0;
          *(v0 + 536) = 0;
          *(v0 + 544) = v46;
          *(v0 + 552) = v48;
        }

        else
        {
          v55 = 0;
        }

        v56 = *(v0 + 840);
        *(v0 + 608) = 1;
        *(v0 + 616) = v55;
        *(v0 + 624) = v54;
        swift_task_create();

        sub_1DB30623C(v56, &unk_1ECC46EB0, &qword_1DB50F750);
        v57 = (v0 + 256);
        goto LABEL_54;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC456D0, &qword_1DB51B3D0);
      if (swift_dynamicCast())
      {
        v40 = *(v0 + 824);
        v83 = *(v0 + 816);
        sub_1DB2FEA0C((v0 + 136), v0 + 176);
        v41 = sub_1DB50ABA0();
        v42 = *(v41 - 8);
        (*(v42 + 56))(v40, 1, 1, v41);
        sub_1DB30BE90(v0 + 176, v0 + 216);
        v43 = swift_allocObject();
        v43[2] = 0;
        v79 = v43 + 2;
        v43[3] = 0;
        v43[4] = v29;
        sub_1DB2FEA0C((v0 + 216), (v43 + 5));
        sub_1DB30C4B8(v40, v83, &unk_1ECC46EB0, &qword_1DB50F750);
        v44 = (*(v42 + 48))(v83, 1, v41);
        v45 = *(v0 + 816);
        if (v44 == 1)
        {
          sub_1DB30623C(*(v0 + 816), &unk_1ECC46EB0, &qword_1DB50F750);
        }

        else
        {
          sub_1DB50AB90();
          (*(v42 + 8))(v45, v41);
        }

        if (*v79)
        {
          swift_getObjectType();
          swift_unknownObjectRetain();
          v58 = sub_1DB50AAD0();
          v60 = v59;
          swift_unknownObjectRelease();
        }

        else
        {
          v58 = 0;
          v60 = 0;
        }

        v61 = **(v0 + 680);

        if (v60 | v58)
        {
          v62 = v0 + 496;
          *(v0 + 496) = 0;
          *(v0 + 504) = 0;
          *(v0 + 512) = v58;
          *(v0 + 520) = v60;
        }

        else
        {
          v62 = 0;
        }

        v63 = *(v0 + 824);
        *(v0 + 584) = 1;
        *(v0 + 592) = v62;
        *(v0 + 600) = v61;
        swift_task_create();

        sub_1DB30623C(v63, &unk_1ECC46EB0, &qword_1DB50F750);
        v57 = (v0 + 176);
LABEL_54:
        __swift_destroy_boxed_opaque_existential_0(v57);
LABEL_55:
        __swift_destroy_boxed_opaque_existential_0((v0 + 400));
        v13 = v0 + 632;
        goto LABEL_56;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC44108, &qword_1DB521B50);
      v13 = v21;
      if (swift_dynamicCast())
      {
        v49 = *(v0 + 808);
        v77 = *(v0 + 800);
        v50 = sub_1DB50ABA0();
        v84 = *(v50 - 8);
        v85 = *(v0 + 632);
        (*(v84 + 56))(v49, 1, 1, v50);
        v51 = swift_allocObject();
        *(v51 + 16) = 0;
        v80 = (v51 + 16);
        *(v51 + 24) = 0;
        *(v51 + 32) = v29;
        *(v51 + 40) = v85;
        sub_1DB30C4B8(v49, v77, &unk_1ECC46EB0, &qword_1DB50F750);
        v52 = v50;
        LODWORD(v50) = (*(v84 + 48))(v77, 1, v50);
        swift_unknownObjectRetain();
        v53 = *(v0 + 800);
        if (v50 == 1)
        {
          sub_1DB30623C(*(v0 + 800), &unk_1ECC46EB0, &qword_1DB50F750);
        }

        else
        {
          sub_1DB50AB90();
          (*(v84 + 8))(v53, v52);
        }

        if (*v80)
        {
          swift_getObjectType();
          swift_unknownObjectRetain();
          v64 = sub_1DB50AAD0();
          v66 = v65;
          swift_unknownObjectRelease();
        }

        else
        {
          v64 = 0;
          v66 = 0;
        }

        v81 = **(v0 + 680);

        if (v66 | v64)
        {
          v67 = v0 + 464;
          *(v0 + 464) = 0;
          *(v0 + 472) = 0;
          *(v0 + 480) = v64;
          *(v0 + 488) = v66;
        }

        else
        {
          v67 = 0;
        }

        v68 = *(v0 + 808);
        *(v0 + 560) = 1;
        *(v0 + 568) = v67;
        *(v0 + 576) = v81;
        swift_task_create();

        swift_unknownObjectRelease();

        sub_1DB30623C(v68, &unk_1ECC46EB0, &qword_1DB50F750);
        goto LABEL_55;
      }

      __swift_destroy_boxed_opaque_existential_0((v0 + 400));
LABEL_56:
      __swift_destroy_boxed_opaque_existential_0((v0 + 432));
      if (!v17)
      {
        goto LABEL_11;
      }
    }

    else
    {
LABEL_9:
      __swift_destroy_boxed_opaque_existential_0((v0 + 400));
      v13 = v21;
      if (!v17)
      {
        goto LABEL_11;
      }
    }
  }

  v69 = *(v0 + 696);

  *(v0 + 648) = v69;

  sub_1DB4C1C98(v70, &v88);
  v71 = MEMORY[0x1E69E7CC0];
  if (v88)
  {
    v72 = v88;
  }

  else
  {
    v72 = MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A00, &unk_1DB5102D0);
  sub_1DB50ACC0();
  *(v0 + 904) = v72;
  *(v0 + 888) = v71;
  v73 = swift_task_alloc();
  *(v0 + 896) = v73;
  *v73 = v0;
  v73[1] = sub_1DB40BA4C;
  v74 = *(v0 + 776);
  v75 = *(v0 + 768);

  return MEMORY[0x1EEE6DAD8](v75, 0, 0, v74, v0 + 656);
}

uint64_t sub_1DB40BA4C()
{

  if (v0)
  {

    v1 = sub_1DB411C90;
  }

  else
  {
    v1 = sub_1DB40BB70;
  }

  return MEMORY[0x1EEE6DFA0](v1, 0, 0);
}

uint64_t sub_1DB40BB70()
{
  v61 = v0;
  v2 = *(v0 + 768);
  if ((*(*(v0 + 744) + 48))(v2, 1, *(v0 + 736)) == 1)
  {
    v3 = *(v0 + 904);
    v4 = *(v0 + 888);
    v5 = *(v0 + 880);
    v6 = *(v0 + 872);
    v7 = *(v0 + 856);
    v59 = *(v0 + 848);
    v8 = *(v0 + 688);
    v9 = *(v0 + 672);
    (*(*(v0 + 784) + 8))(*(v0 + 792), *(v0 + 776));
    v60[3] = &type metadata for AsyncObjectGraphMetrics;
    v60[0] = v3;
    sub_1DB30D870(v60, &type metadata for AsyncObjectGraphMetrics);
    sub_1DB3E33EC(v4, (v0 + 648), v9);

    sub_1DB40C1A4(v5, v8);

    (*(v7 + 8))(v6, v59);

    v10 = *(v0 + 8);

    return v10();
  }

  v12 = *(v0 + 760);
  v13 = *(v0 + 752);
  sub_1DB411820(v2, v12);
  sub_1DB30C4B8(v12, v13, &qword_1ECC44120, &qword_1DB514148);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = **(v0 + 752);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *(v0 + 888);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v16 = sub_1DB302A34(0, v16[2] + 1, 1, *(v0 + 888));
    }

    v18 = v16[2];
    v17 = v16[3];
    if (v18 >= v17 >> 1)
    {
      v16 = sub_1DB302A34((v17 > 1), v18 + 1, 1, v16);
    }

    v16[2] = v18 + 1;
    v16[v18 + 4] = v14;
    v19 = 1;
  }

  else
  {
    sub_1DB382904(*(v0 + 752), *(v0 + 704));
    v19 = 0;
    v16 = *(v0 + 888);
  }

  v20 = *(v0 + 720);
  v21 = *(v0 + 712);
  v22 = *(v0 + 704);
  (*(v20 + 56))(v22, v19, 1, v21);
  v24 = *(v20 + 48);
  v23 = v20 + 48;
  if (v24(v22, 1, v21) == 1)
  {
    v25 = *(v0 + 704);
    sub_1DB30623C(*(v0 + 760), &qword_1ECC44120, &qword_1DB514148);
    sub_1DB30623C(v25, &qword_1ECC456B0, &qword_1DB51B3B0);
LABEL_32:
    *(v0 + 888) = v16;
    v58 = swift_task_alloc();
    *(v0 + 896) = v58;
    *v58 = v0;
    v58[1] = sub_1DB40BA4C;
    v43 = *(v0 + 776);
    v40 = *(v0 + 768);
    v44 = v0 + 656;
    v41 = 0;
    v42 = 0;

    return MEMORY[0x1EEE6DAD8](v40, v41, v42, v43, v44);
  }

  v26 = *(v0 + 728);
  sub_1DB382904(*(v0 + 704), v26);
  v27 = *v26;
  sub_1DB300B14((v26 + 1), v0 + 368);
  v28 = *(v0 + 648);
  v29 = swift_isUniquelyReferenced_nonNull_native();
  *(v0 + 664) = v28;
  v30 = sub_1DB30EE50(v27);
  v32 = *(v28 + 16);
  v33 = (v31 & 1) == 0;
  v34 = __OFADD__(v32, v33);
  v35 = v32 + v33;
  if (v34)
  {
    __break(1u);
    goto LABEL_24;
  }

  v23 = v31;
  v1 = (v0 + 664);
  if (*(v28 + 24) >= v35)
  {
    if (v29)
    {
LABEL_21:
      v37 = *v1;
      if (v23)
      {
LABEL_22:
        v38 = (v37[7] + 32 * v30);
        __swift_destroy_boxed_opaque_existential_0(v38);
        sub_1DB30C200((v0 + 368), v38);
LABEL_27:
        *(v0 + 648) = v37;
        v47 = sub_1DB50BEE0();
        v49 = v48;
        sub_1DB509920();
        v51 = v50;
        v52 = swift_isUniquelyReferenced_nonNull_native();
        v53 = *(v0 + 904);
        if ((v52 & 1) == 0)
        {
          v53 = sub_1DB30324C(0, *(v53 + 2) + 1, 1, *(v0 + 904));
        }

        v55 = *(v53 + 2);
        v54 = *(v53 + 3);
        if (v55 >= v54 >> 1)
        {
          v53 = sub_1DB30324C((v54 > 1), v55 + 1, 1, v53);
        }

        v56 = *(v0 + 760);
        sub_1DB411890(*(v0 + 728));
        sub_1DB30623C(v56, &qword_1ECC44120, &qword_1DB514148);
        *(v53 + 2) = v55 + 1;
        v57 = &v53[24 * v55];
        *(v57 + 4) = v47;
        *(v57 + 5) = v49;
        *(v57 + 6) = v51;
        *(v0 + 904) = v53;
        goto LABEL_32;
      }

LABEL_25:
      v37[(v30 >> 6) + 8] |= 1 << v30;
      *(v37[6] + 8 * v30) = v27;
      v40 = sub_1DB30C200((v0 + 368), (v37[7] + 32 * v30));
      v45 = v37[2];
      v34 = __OFADD__(v45, 1);
      v46 = v45 + 1;
      if (v34)
      {
        __break(1u);
        return MEMORY[0x1EEE6DAD8](v40, v41, v42, v43, v44);
      }

      v37[2] = v46;
      goto LABEL_27;
    }

LABEL_24:
    v39 = v30;
    sub_1DB311D10();
    v30 = v39;
    v37 = *v1;
    if (v23)
    {
      goto LABEL_22;
    }

    goto LABEL_25;
  }

  sub_1DB31A6AC(v35, v29);
  v30 = sub_1DB30EE50(v27);
  if ((v23 & 1) == (v36 & 1))
  {
    goto LABEL_21;
  }

  return sub_1DB50BC20();
}

uint64_t sub_1DB40C1A4(uint64_t a1, uint64_t a2)
{
  v3 = sub_1DB50A280();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v18[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_1DB50A230();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v18[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_1EE30EAE8 != -1)
  {
    swift_once();
  }

  v11 = sub_1DB50A270();
  __swift_project_value_buffer(v11, qword_1EE312DE8);

  v12 = sub_1DB50A250();
  sub_1DB50A2A0();
  v19 = sub_1DB50B060();
  if (sub_1DB50B0E0())
  {

    sub_1DB50A2D0();

    if ((*(v4 + 88))(v6, v3) == *MEMORY[0x1E69E93E8])
    {
      v13 = 0;
      v14 = "[Error] Interval already ended";
    }

    else
    {
      (*(v4 + 8))(v6, v3);
      v14 = "count=%ld";
      v13 = 1;
    }

    v15 = swift_slowAlloc();
    *v15 = 0;
    *(v15 + 1) = v13;
    *(v15 + 2) = 2048;
    *(v15 + 4) = *(a2 + 16);

    v16 = sub_1DB50A210();
    _os_signpost_emit_with_name_impl(&dword_1DB2F5000, v12, v19, v16, "ResolveDependencies", v14, v15, 0xCu);
    MEMORY[0x1E1288220](v15, -1, -1);
  }

  else
  {
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t BaseObjectGraph._downcast<A>(to:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = swift_dynamicCastClass();
  if (v5)
  {
    v6 = v5;

    return v6;
  }

  else
  {
    swift_beginAccess();
    v9 = v3[3];
    v8 = v3[4];
    v11 = v3[2];
    v10 = *(a2 + 96);

    return v10(v9, v8, &v11);
  }
}

uint64_t BaseObjectGraph._injectIfAvailable<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DB40C548, 0, 0);
}

uint64_t sub_1DB40C548()
{
  v1 = *(v0 + 24);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *(v2 + 16) = *(v0 + 32);
  *(v2 + 32) = v1;
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  v4 = sub_1DB50B120();
  *v3 = v0;
  v3[1] = sub_1DB3A02D8;
  v5 = *(v0 + 16);

  return sub_1DB40CD74(v5, &unk_1DB51B2D0, v2, v4);
}

uint64_t static BaseObjectGraph.current.getter()
{
  if (qword_1EE30EAE0 != -1)
  {
    swift_once();
  }

  v1 = sub_1DB50BEB0();
  v2 = BaseObjectGraph._downcast<A>(to:)(v1, v0);

  return v2;
}

uint64_t sub_1DB40C6BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v22 = *(AssociatedTypeWitness - 8);
  v9 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v11 = &v21 - v10;
  (*(v5 + 16))(v7, a1, a2, v9);
  sub_1DB50A880();
  swift_getAssociatedConformanceWitness();
  sub_1DB50B170();
  if (v27)
  {
    v12 = MEMORY[0x1E69E7CC0];
    do
    {
      v25[0] = v27;
      v25[1] = v28;
      v26 = v29;
      v23 = 60;
      v24 = 0xE100000000000000;
      v13 = sub_1DB50BEE0();
      MEMORY[0x1E1285C70](v13);

      MEMORY[0x1E1285C70](62, 0xE100000000000000);
      v14 = v23;
      v15 = v24;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v12 = sub_1DB302404(0, *(v12 + 2) + 1, 1, v12);
      }

      v17 = *(v12 + 2);
      v16 = *(v12 + 3);
      if (v17 >= v16 >> 1)
      {
        v12 = sub_1DB302404((v16 > 1), v17 + 1, 1, v12);
      }

      sub_1DB30BF1C(v25);
      *(v12 + 2) = v17 + 1;
      v18 = &v12[16 * v17];
      *(v18 + 4) = v14;
      *(v18 + 5) = v15;
      sub_1DB50B170();
    }

    while (v27);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  (*(v22 + 8))(v11, AssociatedTypeWitness);
  *&v27 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC43100, &unk_1DB511B70);
  sub_1DB367EE0(&qword_1EE30C840, &qword_1ECC43100, &unk_1DB511B70);
  v19 = sub_1DB50A5E0();

  return v19;
}

uint64_t sub_1DB40C9E8()
{
  v0 = sub_1DB50A270();
  __swift_allocate_value_buffer(v0, qword_1EE312DE8);
  __swift_project_value_buffer(v0, qword_1EE312DE8);
  return sub_1DB50A260();
}

void *BaseObjectGraph.__allocating_init(name:dependencies:)(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  result = swift_allocObject();
  v7 = *a3;
  result[3] = a1;
  result[4] = a2;
  result[2] = v7;
  return result;
}

void *BaseObjectGraph.init(name:dependencies:)(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = *a3;
  v3[3] = a1;
  v3[4] = a2;
  v3[2] = v4;
  return v3;
}

uint64_t BaseObjectGraph.__allocating_init(_:)(void *a1)
{
  swift_beginAccess();
  v4 = a1[3];
  v3 = a1[4];
  v8 = a1[2];
  v5 = *(v1 + 96);

  v6 = v5(v4, v3, &v8);

  return v6;
}

uint64_t sub_1DB40CB68()
{
  v0 = sub_1DB30BC94();
  v3 = MEMORY[0x1E12859D0](0, &type metadata for OpaqueMetatype, MEMORY[0x1E69E7CA0] + 8, v0);
  sub_1DB307C9C(MEMORY[0x1E69E7CC0]);
  type metadata accessor for BaseObjectGraph();
  v1 = swift_allocObject();
  v1[3] = 0xD00000000000001BLL;
  v1[4] = 0x80000001DB52D920;
  v1[2] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC456D8, &qword_1DB51B3F0);
  swift_allocObject();
  result = sub_1DB50BEA0();
  qword_1EE30EAD0 = result;
  return result;
}

uint64_t sub_1DB40CC30()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC43810, &qword_1DB5147E0);
  v0 = swift_allocObject();
  *(v0 + 24) = 0;
  *(v0 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC456A0, &qword_1DB51B388);
  swift_allocObject();
  result = sub_1DB50BEA0();
  qword_1EE312DE0 = result;
  return result;
}

uint64_t sub_1DB40CCB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_1EE30EAE0 != -1)
  {
    swift_once();
  }

  return sub_1DB50BEC0();
}

uint64_t sub_1DB40CD74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[6] = a4;
  v5[7] = v4;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DB40CD9C, 0, 0);
}

uint64_t sub_1DB40CD9C()
{
  if (qword_1EE30EAE0 != -1)
  {
    swift_once();
  }

  v0[2] = v0[7];
  v1 = swift_task_alloc();
  v0[8] = v1;
  *v1 = v0;
  v1[1] = sub_1DB40CEB4;
  v2 = v0[5];
  v3 = v0[3];
  v4 = v0[4];

  return MEMORY[0x1EEE6DE98](v3, v0 + 2, v4, v2, 0, 0, 0xD00000000000001DLL, 0x80000001DB52D7F0);
}

uint64_t sub_1DB40CEB4()
{
  v2 = *v1;
  *(v2 + 72) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1DB40CFE8, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1DB40D000(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  *(v4 + 24) = v3;
  *(v4 + 32) = v2;
}

uint64_t sub_1DB40D060()
{
  swift_beginAccess();
  v1 = *(v0 + 24);

  return v1;
}

uint64_t sub_1DB40D0AC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
}

void *sub_1DB40D154()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v3 = sub_1DB324338(*(v1 + 16), 0);
  v4 = sub_1DB324740(&v7, v3 + 4, v2, v1);
  v5 = v7;

  sub_1DB2FEA60(v5);
  if (v4 != v2)
  {
    __break(1u);
    return MEMORY[0x1E69E7CC0];
  }

  return v3;
}

uint64_t sub_1DB40D228(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v12 = v3[2];

  DependencyDictionary.replace<A>(dependencies:)(a1, a2, a3);
  swift_beginAccess();
  v10 = v3[3];
  v11 = v3[4];

  MEMORY[0x1E1285C70](1528834848, 0xE400000000000000);
  v8 = sub_1DB40C6BC(a1, a2, a3);
  MEMORY[0x1E1285C70](v8);

  MEMORY[0x1E1285C70](93, 0xE100000000000000);
  return (*(v7 + 96))(v10, v11, &v12);
}

uint64_t sub_1DB40D33C(uint64_t *a1)
{
  v2 = *v1;
  v10 = v1[2];
  v3 = *a1;
  v4 = v2;
  sub_1DB300B14((a1 + 1), v8);

  sub_1DB381A90(v8, v3, v9);
  sub_1DB30623C(v9, &qword_1ECC426B0, &qword_1DB50EEB0);
  swift_beginAccess();
  v5 = v1[4];
  *&v8[0] = v1[3];
  *(&v8[0] + 1) = v5;

  MEMORY[0x1E1285C70](2108192, 0xE300000000000000);
  v6 = sub_1DB50BEE0();
  MEMORY[0x1E1285C70](v6);

  return (*(v4 + 96))(*&v8[0], *(&v8[0] + 1), &v10);
}

uint64_t sub_1DB40D468(void *a1, void (*a2)(uint64_t, uint64_t (*)@<X0>(void *a1@<X0>, void *a2@<X8>), void, uint64_t, void *))
{
  v5 = v2[2];
  v6 = a1[2];
  v7 = *v2;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15[0] = v5;
  a2(v6, sub_1DB381A80, 0, isUniquelyReferenced_nonNull_native, v15);

  v9 = v15[0];

  swift_beginAccess();
  v10 = v2[4];
  v16 = v2[3];
  v17 = v10;

  MEMORY[0x1E1285C70](2108192, 0xE300000000000000);
  swift_beginAccess();
  v11 = a1[3];
  v12 = a1[4];

  MEMORY[0x1E1285C70](v11, v12);

  v13 = v16;
  v16 = v9;
  return (*(v7 + 96))(v13, v17, &v16);
}

uint64_t sub_1DB40D614(uint64_t a1)
{
  v3 = *v1;
  v8 = v1[2];

  DependencyDictionary.remove(dependencyFor:)(a1);
  swift_beginAccess();
  v6 = v1[3];
  v7 = v1[4];

  MEMORY[0x1E1285C70](2108704, 0xE300000000000000);
  v4 = sub_1DB50BEE0();
  MEMORY[0x1E1285C70](v4);

  return (*(v3 + 96))(v6, v7, &v8);
}

uint64_t sub_1DB40D738(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t), uint64_t a5, uint64_t a6, uint64_t a7)
{
  v26 = a6;
  v27 = a7;
  v25 = a5;
  v23 = a4;
  v28 = *v7;
  v11 = sub_1DB50B340();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v23 - v13;
  v15 = sub_1DB50B510();
  v24 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v23 - v16;
  v31 = v7[2];

  v23(a1, a2, a3);
  MEMORY[0x1E1285DC0](a2, a3);
  swift_getWitnessTable();
  sub_1DB50B650();
  (*(v12 + 8))(v14, v11);
  swift_getWitnessTable();
  sub_1DB301E30();
  v18 = sub_1DB50A900();
  v20 = v19;
  (*(v24 + 8))(v17, v15);
  swift_beginAccess();
  v21 = v7[4];
  v29 = v7[3];
  v30 = v21;

  MEMORY[0x1E1285C70](v26, v27);
  MEMORY[0x1E1285C70](v18, v20);

  MEMORY[0x1E1285C70](93, 0xE100000000000000);
  return (*(v28 + 96))(v29, v30, &v31);
}

uint64_t sub_1DB40DA1C@<X0>(uint64_t *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42DA8, &qword_1DB50FA88);
  result = sub_1DB50A6C0();
  *a2 = result;
  a2[1] = v4;
  return result;
}

unint64_t sub_1DB40DA70(uint64_t a1, uint64_t a2)
{
  sub_1DB50B320();

  v31[0] = 0xD000000000000015;
  v31[1] = 0x80000001DB52D810;
  v5 = sub_1DB50BEE0();
  MEMORY[0x1E1285C70](v5);

  MEMORY[0x1E1285C70](0x20646E756F66203ELL, 0xEC00000022206E69);
  swift_beginAccess();
  v6 = v2[3];
  v7 = v2[4];

  MEMORY[0x1E1285C70](v6, v7);

  MEMORY[0x1E1285C70](11810, 0xE200000000000000);
  v32 = 0xD000000000000015;
  v33 = 0x80000001DB52D810;
  v8 = v2[2];
  v31[0] = v8;

  v9 = DependencyDictionary.types<A>(compatibleWith:)(a1, a2);

  if (*(v9 + 2))
  {
    v31[2] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC45680, &qword_1DB51C740);
    sub_1DB41114C();
    v10 = sub_1DB50A5E0();
    v12 = v11;

    sub_1DB50B320();

    strcpy(v31, " Did you mean ");
    HIBYTE(v31[1]) = -18;
    MEMORY[0x1E1285C70](v10, v12);

    MEMORY[0x1E1285C70](63, 0xE100000000000000);
    MEMORY[0x1E1285C70](v31[0], v31[1]);

    MEMORY[0x1E1285C70](0xD000000000000034, 0x80000001DB52D830);
    MEMORY[0x1E1285C70](0xD000000000000023, 0x80000001DB52D870);
    return v32;
  }

  v13 = *(v8 + 16);
  v14 = MEMORY[0x1E69E7CC0];
  if (!v13)
  {
    goto LABEL_6;
  }

  v15 = sub_1DB324338(*(v8 + 16), 0);
  v16 = sub_1DB324740(v31, v15 + 4, v13, v8);
  v17 = v31[0];

  sub_1DB2FEA60(v17);
  if (v16 != v13)
  {
    __break(1u);
LABEL_6:
    v15 = v14;
  }

  v31[0] = v15;

  sub_1DB4102CC(v31);

  v18 = *(v31[0] + 2);
  if (v18)
  {
    sub_1DB34130C(0, v18, 0);
    v19 = 32;
    v20 = v14;
    do
    {
      v31[0] = 60;
      v31[1] = 0xE100000000000000;
      v21 = sub_1DB50BEE0();
      MEMORY[0x1E1285C70](v21);

      MEMORY[0x1E1285C70](62, 0xE100000000000000);
      v22 = v31[0];
      v23 = v31[1];
      v25 = *(v20 + 2);
      v24 = *(v20 + 3);
      if (v25 >= v24 >> 1)
      {
        sub_1DB34130C((v24 > 1), v25 + 1, 1);
      }

      *(v20 + 2) = v25 + 1;
      v26 = &v20[16 * v25];
      *(v26 + 4) = v22;
      *(v26 + 5) = v23;
      v19 += 8;
      --v18;
    }

    while (v18);
  }

  else
  {

    v20 = MEMORY[0x1E69E7CC0];
  }

  v31[0] = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC43100, &unk_1DB511B70);
  sub_1DB367EE0(&qword_1EE30C840, &qword_1ECC43100, &unk_1DB511B70);
  v27 = sub_1DB50A5E0();
  v29 = v28;

  strcpy(v31, " Candidates: ");
  HIWORD(v31[1]) = -4864;
  MEMORY[0x1E1285C70](v27, v29);

  MEMORY[0x1E1285C70](v31[0], v31[1]);

  return v32;
}

uint64_t sub_1DB40DF1C@<X0>(void *a2@<X8>)
{
  v3 = sub_1DB50BEE0();
  MEMORY[0x1E1285C70](v3);

  result = MEMORY[0x1E1285C70](62, 0xE100000000000000);
  *a2 = 60;
  a2[1] = 0xE100000000000000;
  return result;
}

void sub_1DB40DF90(uint64_t a1, uint64_t a2)
{
  sub_1DB40DA70(a1, a2);
  sub_1DB50B580();
  __break(1u);
}

uint64_t sub_1DB40E030()
{
  v4 = sub_1DB50BEE0();
  MEMORY[0x1E1285C70](8744, 0xE200000000000000);
  swift_beginAccess();
  v2 = *(v0 + 24);
  v1 = *(v0 + 32);

  MEMORY[0x1E1285C70](v2, v1);

  MEMORY[0x1E1285C70](2112290, 0xE300000000000000);
  MEMORY[0x1E1285C70](0xD000000000000014, 0x80000001DB52D8A0);
  MEMORY[0x1E1285C70](41, 0xE100000000000000);
  return v4;
}

uint64_t BaseObjectGraph.deinit()
{

  return v0;
}

uint64_t BaseObjectGraph.__deallocating_deinit()
{

  return MEMORY[0x1EEE6BDC0](v0, 40, 7);
}

uint64_t BaseObjectGraph._inject<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1DB50B120();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v12 - v8;
  BaseObjectGraph._injectIfAvailable<A>(_:)(a1, a2);
  v10 = *(a2 - 8);
  if ((*(v10 + 48))(v9, 1, a2) == 1)
  {
    (*(v7 + 8))(v9, v6);
    sub_1DB40DF90(a1, a2);
  }

  return (*(v10 + 32))(a3, v9, a2);
}

uint64_t BaseObjectGraph._hasDependency<A>(_:)(uint64_t a1, uint64_t a2)
{

  LOBYTE(a2) = sub_1DB37D0E0(a1, a2);

  return a2 & 1;
}

uint64_t BaseObjectGraph._dependencyPersonality<A>(of:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{

  sub_1DB37D214(a1, a2, a3);
}

uint64_t BaseObjectGraph.dependencies<A>(compatibleWith:)(uint64_t a1, uint64_t a2)
{

  v4 = sub_1DB37DAF8(a1, a2);

  return v4;
}

uint64_t sub_1DB40E45C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  v4[3] = a1;
  v4[4] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DB40E480, 0, 0);
}

uint64_t sub_1DB40E480()
{
  v0[2] = *(v0[4] + 16);
  v1 = swift_task_alloc();
  v0[7] = v1;
  *v1 = v0;
  v1[1] = sub_1DB40E528;
  v2 = v0[5];
  v3 = v0[6];
  v4 = v0[3];

  return sub_1DB37ECE8(v4, v2, v3);
}

uint64_t sub_1DB40E528()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_1DB40E63C;
  }

  else
  {
    v2 = sub_1DB2FEB3C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t BaseObjectGraph._inject<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v7 = sub_1DB50B120();
  v4[6] = v7;
  v4[7] = *(v7 - 8);
  v8 = swift_task_alloc();
  v4[8] = v8;
  v9 = swift_task_alloc();
  v4[9] = v9;
  *v9 = v4;
  v9[1] = sub_1DB40E76C;

  return BaseObjectGraph._injectIfAvailable<A>(_:)(v8, a2, a3);
}

uint64_t sub_1DB40E76C()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_1DB411C88;
  }

  else
  {
    v2 = sub_1DB411C8C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t BaseObjectGraph._withDependenciesResolved<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  v4[7] = *v3;
  v5 = sub_1DB50B340();
  v4[8] = v5;
  v4[9] = *(v5 - 8);
  v4[10] = swift_task_alloc();
  v4[11] = sub_1DB50B510();
  v4[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DB40E9B4, 0, 0);
}

uint64_t sub_1DB40E9B4()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[7];
  v4 = v0[8];
  v5 = v0[6];
  MEMORY[0x1E1285DC0](v0[4], v0[5]);
  swift_getWitnessTable();
  sub_1DB50B650();
  (*(v2 + 8))(v1, v4);
  sub_1DB30BC94();
  swift_getWitnessTable();
  v6 = sub_1DB50AE00();
  v0[13] = v6;
  v7 = swift_task_alloc();
  v0[14] = v7;
  *(v7 + 16) = v6;
  *(v7 + 24) = v5;
  v8 = swift_task_alloc();
  v0[15] = v8;
  *v8 = v0;
  v8[1] = sub_1DB40EB68;

  return sub_1DB40CD74((v0 + 2), &unk_1DB51B2F8, v7, v3);
}

uint64_t sub_1DB40EB68()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_1DB40ED04;
  }

  else
  {

    v2 = sub_1DB40EC8C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DB40EC8C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1DB40ED04()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DB40ED90(uint64_t a1, uint64_t a2, void *a3)
{
  v3[9] = a2;
  v3[10] = a3;
  v3[8] = a1;
  v3[11] = *a3;
  return MEMORY[0x1EEE6DFA0](sub_1DB40EDDC, 0, 0);
}

uint64_t sub_1DB40EDDC()
{
  v1 = v0[9];
  v2 = v0[10];
  swift_beginAccess();
  v0[12] = v2[3];
  v0[13] = v2[4];
  v3 = v2[2];
  v0[7] = v1;

  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC44120, &qword_1DB514148);
  v5 = swift_task_alloc();
  v0[14] = v5;
  *(v5 + 16) = v0 + 7;
  *(v5 + 24) = v3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC456A8, &qword_1DB51B3A0);
  v7 = swift_task_alloc();
  v0[15] = v7;
  *v7 = v0;
  v7[1] = sub_1DB40EF2C;

  return MEMORY[0x1EEE6DD58](v0 + 5, v4, v6, 0, 0, &unk_1DB51B398, v5, v4);
}

uint64_t sub_1DB40EF2C()
{
  *(*v1 + 128) = v0;

  if (v0)
  {

    v2 = sub_1DB40F134;
  }

  else
  {

    v2 = sub_1DB40F074;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DB40F074()
{
  v8 = v0;
  v1 = *(v0 + 104);
  if (*(v0 + 48))
  {

    swift_willThrow();
  }

  else
  {
    v4 = *(v0 + 88);
    v3 = *(v0 + 96);
    v5 = *(v0 + 64);
    v7 = *(v0 + 40);
    *v5 = (*(v4 + 96))(v3, v1, &v7);
  }

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1DB40F14C(uint64_t a1, void *a2)
{
  v2[8] = a1;
  v2[9] = a2;
  v2[10] = *a2;
  return MEMORY[0x1EEE6DFA0](sub_1DB40F194, 0, 0);
}

uint64_t sub_1DB40F194()
{
  v1 = v0[9];
  swift_beginAccess();
  v0[11] = v1[3];
  v0[12] = v1[4];
  v2 = v1[2];

  v0[7] = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC44120, &qword_1DB514148);
  v4 = swift_task_alloc();
  v0[13] = v4;
  *(v4 + 16) = v0 + 7;
  *(v4 + 24) = v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC456A8, &qword_1DB51B3A0);
  v6 = swift_task_alloc();
  v0[14] = v6;
  *v6 = v0;
  v6[1] = sub_1DB40F2E4;

  return MEMORY[0x1EEE6DD58](v0 + 5, v3, v5, 0, 0, &unk_1DB51B400, v4, v3);
}

uint64_t sub_1DB40F2E4()
{
  *(*v1 + 120) = v0;

  if (v0)
  {

    v2 = sub_1DB40F4EC;
  }

  else
  {

    v2 = sub_1DB40F42C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DB40F42C()
{
  v8 = v0;
  v1 = *(v0 + 96);
  if (*(v0 + 48))
  {

    swift_willThrow();
  }

  else
  {
    v4 = *(v0 + 80);
    v3 = *(v0 + 88);
    v5 = *(v0 + 64);
    v7 = *(v0 + 40);
    *v5 = (*(v4 + 96))(v3, v1, &v7);
  }

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1DB40F504(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1DB30C7A0;

  return sub_1DB40F14C(a1, v1);
}

uint64_t sub_1DB40F5E4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1DB30C7A0;

  return sub_1DB40E45C(a1, v5, v6, v4);
}

uint64_t _s7JetCore15BaseObjectGraphC10injectSyncyxxmAA0G10DependencyRzlF_0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_1DB50B120();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v13 - v9;
  v13[1] = *(v3 + 16);
  DependencyDictionary.subscript.getter(a1, a2, v13 - v9);
  v11 = *(a2 - 8);
  if ((*(v11 + 48))(v10, 1, a2) == 1)
  {
    (*(v8 + 8))(v10, v7);
    sub_1DB40DF90(a1, a2);
  }

  return (*(v11 + 32))(a3, v10, a2);
}

uint64_t BaseObjectGraph.injectSyncThrowing<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  return sub_1DB40F8C4(a1, a2, sub_1DB411294, a3);
}

{
  return sub_1DB40F8C4(a1, a2, sub_1DB411C98, a3);
}

uint64_t BaseObjectGraph.injectIfAvailableSyncThrowing<A>(_:)(uint64_t a1, uint64_t a2)
{
  return sub_1DB40FA88(a1, a2, sub_1DB411294);
}

{
  return sub_1DB40FA88(a1, a2, sub_1DB411C98);
}

uint64_t sub_1DB40F8C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v10 = sub_1DB50B120();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v16[-v12];
  v17 = a2;
  v18 = v4;
  v19 = a1;
  result = sub_1DB40CCB4(a3, v16, v10);
  if (!v5)
  {
    v15 = *(a2 - 8);
    if ((*(v15 + 48))(v13, 1, a2) == 1)
    {
      (*(v11 + 8))(v13, v10);
      sub_1DB40DF90(a1, a2);
    }

    return (*(v15 + 32))(a4, v13, a2);
  }

  return result;
}

uint64_t sub_1DB40FA88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6[2] = a2;
  v6[4] = a1;
  v4 = sub_1DB50B120();
  return sub_1DB40CCB4(a3, v6, v4);
}

uint64_t BaseObjectGraph.injectAsyncThrowing<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v7 = sub_1DB50B120();
  v4[6] = v7;
  v4[7] = *(v7 - 8);
  v8 = swift_task_alloc();
  v4[8] = v8;
  v9 = swift_task_alloc();
  v4[9] = v9;
  *v9 = v4;
  v9[1] = sub_1DB40FC00;

  return BaseObjectGraph.injectIfAvailableAsyncThrowing<A>(_:)(v8, a2, a3);
}

uint64_t sub_1DB40FC00()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_1DB40FE38;
  }

  else
  {
    v2 = sub_1DB40FD14;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DB40FD14()
{
  v1 = v0[8];
  v2 = v0[4];
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v6 = v0[6];
    v7 = v0[7];
    v8 = v0[3];
    (*(v7 + 8))(v1, v6);
    sub_1DB40DF90(v8, v2);
  }

  (*(v3 + 32))(v0[2], v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1DB40FE38()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t BaseObjectGraph.injectIfAvailableAsyncThrowing<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DB40FEC0, 0, 0);
}

uint64_t sub_1DB40FEC0()
{
  v1 = *(v0 + 24);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *(v2 + 16) = *(v0 + 32);
  *(v2 + 32) = v1;
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  v4 = sub_1DB50B120();
  *v3 = v0;
  v3[1] = sub_1DB40FFB0;
  v5 = *(v0 + 16);

  return sub_1DB40CD74(v5, &unk_1DB51B318, v2, v4);
}

uint64_t sub_1DB40FFB0()
{
  v2 = *v1;
  *(v2 + 64) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1DB411CB0, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1DB4100EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  v4[3] = a1;
  v4[4] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DB410110, 0, 0);
}

uint64_t sub_1DB410110()
{
  v0[2] = *(v0[4] + 16);
  v1 = swift_task_alloc();
  v0[7] = v1;
  *v1 = v0;
  v1[1] = sub_1DB4101B8;
  v2 = v0[5];
  v3 = v0[6];
  v4 = v0[3];

  return sub_1DB37ECE8(v4, v2, v3);
}

uint64_t sub_1DB4101B8()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_1DB411C84;
  }

  else
  {
    v2 = sub_1DB3F253C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DB4102CC(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1DB411080(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_1DB410338(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_1DB410338(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1DB50B8D0();
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
        v5 = sub_1DB50A9E0();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_1DB410548(v7, v8, a1, v4);
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
    return sub_1DB410430(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1DB410430(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = *a4 + 8 * a3 - 8;
    v7 = result - a3;
LABEL_6:
    v8 = v7;
    v9 = v6;
    while (1)
    {
      v10 = sub_1DB50BEE0();
      v12 = v11;
      if (v10 == sub_1DB50BEE0() && v12 == v13)
      {

LABEL_5:
        ++v4;
        v6 += 8;
        --v7;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_6;
      }

      v15 = sub_1DB50BA30();

      if ((v15 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v5)
      {
        break;
      }

      v16 = *v9;
      result = v9[1];
      *v9 = result;
      v9[1] = v16;
      --v9;
      if (__CFADD__(v8++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1DB410548(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3;
  v103 = result;
  v7 = a3[1];
  if (v7 < 1)
  {
    v9 = MEMORY[0x1E69E7CC0];
LABEL_105:
    v7 = *v103;
    if (!*v103)
    {
      goto LABEL_143;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
LABEL_107:
      v94 = *(v9 + 2);
      if (v94 >= 2)
      {
        while (1)
        {
          v95 = *v6;
          if (!*v6)
          {
            goto LABEL_141;
          }

          v6 = (v94 - 1);
          v96 = *&v9[16 * v94];
          v97 = *&v9[16 * v94 + 24];
          sub_1DB410C24((v95 + 8 * v96), (v95 + 8 * *&v9[16 * v94 + 16]), (v95 + 8 * v97), v7);
          if (v5)
          {
          }

          if (v97 < v96)
          {
            goto LABEL_130;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v9 = sub_1DB410FB4(v9);
          }

          if (v94 - 2 >= *(v9 + 2))
          {
            goto LABEL_131;
          }

          v98 = &v9[16 * v94];
          *v98 = v96;
          *(v98 + 1) = v97;
          result = sub_1DB410F28(v94 - 1);
          v94 = *(v9 + 2);
          v6 = a3;
          if (v94 <= 1)
          {
          }
        }
      }
    }

LABEL_137:
    result = sub_1DB410FB4(v9);
    v9 = result;
    goto LABEL_107;
  }

  v8 = 0;
  v9 = MEMORY[0x1E69E7CC0];
  while (2)
  {
    v10 = v8;
    v11 = v8 + 1;
    if (v8 + 1 >= v7)
    {
      goto LABEL_32;
    }

    v12 = *v6;
    v13 = sub_1DB50BEE0();
    v15 = v14;
    v17 = 0;
    if (v13 != sub_1DB50BEE0() || v15 != v16)
    {
      v17 = sub_1DB50BA30();
    }

    v11 = v10 + 2;
    if (v10 + 2 >= v7)
    {
      goto LABEL_24;
    }

    v19 = v5;
    v100 = v10;
    v20 = v12 + 8 * v10 + 16;
    while (1)
    {
      v22 = v11;
      v23 = sub_1DB50BEE0();
      v25 = v24;
      if (v23 == sub_1DB50BEE0() && v25 == v26)
      {

        if (v17)
        {
          v5 = v19;
          v6 = a3;
          v11 = v22;
          v10 = v100;
          goto LABEL_25;
        }

        goto LABEL_13;
      }

      v21 = sub_1DB50BA30();

      if ((v17 ^ v21))
      {
        break;
      }

LABEL_13:
      v11 = v22 + 1;
      v20 += 8;
      if (v7 == v22 + 1)
      {
        v11 = v7;
        v5 = v19;
        v6 = a3;
        goto LABEL_23;
      }
    }

    v5 = v19;
    v6 = a3;
    v11 = v22;
LABEL_23:
    v10 = v100;
LABEL_24:
    if (v17)
    {
LABEL_25:
      if (v11 < v10)
      {
        goto LABEL_134;
      }

      if (v10 < v11)
      {
        v28 = 8 * v11 - 8;
        v29 = 8 * v10;
        v30 = v11;
        v31 = v10;
        do
        {
          if (v31 != --v30)
          {
            v32 = *v6;
            if (!*v6)
            {
              goto LABEL_140;
            }

            v33 = *(v32 + v29);
            *(v32 + v29) = *(v32 + v28);
            *(v32 + v28) = v33;
          }

          ++v31;
          v28 -= 8;
          v29 += 8;
        }

        while (v31 < v30);
      }
    }

LABEL_32:
    v34 = v6[1];
    if (v11 >= v34)
    {
      goto LABEL_54;
    }

    if (__OFSUB__(v11, v10))
    {
      goto LABEL_133;
    }

    if (v11 - v10 >= a4)
    {
LABEL_54:
      if (v11 < v10)
      {
        goto LABEL_132;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      v107 = v11;
      if ((result & 1) == 0)
      {
        result = sub_1DB3039BC(0, *(v9 + 2) + 1, 1, v9);
        v9 = result;
      }

      v49 = *(v9 + 2);
      v48 = *(v9 + 3);
      v50 = v49 + 1;
      if (v49 >= v48 >> 1)
      {
        result = sub_1DB3039BC((v48 > 1), v49 + 1, 1, v9);
        v9 = result;
      }

      *(v9 + 2) = v50;
      v51 = &v9[16 * v49];
      *(v51 + 4) = v10;
      *(v51 + 5) = v11;
      v52 = *v103;
      if (!*v103)
      {
        goto LABEL_142;
      }

      if (!v49)
      {
LABEL_3:
        v7 = v6[1];
        v8 = v107;
        if (v107 >= v7)
        {
          goto LABEL_105;
        }

        continue;
      }

      while (1)
      {
        v53 = v50 - 1;
        if (v50 >= 4)
        {
          break;
        }

        if (v50 == 3)
        {
          v54 = *(v9 + 4);
          v55 = *(v9 + 5);
          v64 = __OFSUB__(v55, v54);
          v56 = v55 - v54;
          v57 = v64;
LABEL_74:
          if (v57)
          {
            goto LABEL_121;
          }

          v70 = &v9[16 * v50];
          v72 = *v70;
          v71 = *(v70 + 1);
          v73 = __OFSUB__(v71, v72);
          v74 = v71 - v72;
          v75 = v73;
          if (v73)
          {
            goto LABEL_124;
          }

          v76 = &v9[16 * v53 + 32];
          v78 = *v76;
          v77 = *(v76 + 1);
          v64 = __OFSUB__(v77, v78);
          v79 = v77 - v78;
          if (v64)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v74, v79))
          {
            goto LABEL_128;
          }

          if (v74 + v79 >= v56)
          {
            if (v56 < v79)
            {
              v53 = v50 - 2;
            }

            goto LABEL_95;
          }

          goto LABEL_88;
        }

        v80 = &v9[16 * v50];
        v82 = *v80;
        v81 = *(v80 + 1);
        v64 = __OFSUB__(v81, v82);
        v74 = v81 - v82;
        v75 = v64;
LABEL_88:
        if (v75)
        {
          goto LABEL_123;
        }

        v83 = &v9[16 * v53];
        v85 = *(v83 + 4);
        v84 = *(v83 + 5);
        v64 = __OFSUB__(v84, v85);
        v86 = v84 - v85;
        if (v64)
        {
          goto LABEL_126;
        }

        if (v86 < v74)
        {
          goto LABEL_3;
        }

LABEL_95:
        v91 = v53 - 1;
        if (v53 - 1 >= v50)
        {
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
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
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
          goto LABEL_136;
        }

        if (!*v6)
        {
          goto LABEL_139;
        }

        v92 = *&v9[16 * v91 + 32];
        v7 = *&v9[16 * v53 + 40];
        sub_1DB410C24((*v6 + 8 * v92), (*v6 + 8 * *&v9[16 * v53 + 32]), (*v6 + 8 * v7), v52);
        if (v5)
        {
        }

        if (v7 < v92)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_1DB410FB4(v9);
        }

        if (v91 >= *(v9 + 2))
        {
          goto LABEL_118;
        }

        v93 = &v9[16 * v91];
        *(v93 + 4) = v92;
        *(v93 + 5) = v7;
        result = sub_1DB410F28(v53);
        v50 = *(v9 + 2);
        if (v50 <= 1)
        {
          goto LABEL_3;
        }
      }

      v58 = &v9[16 * v50 + 32];
      v59 = *(v58 - 64);
      v60 = *(v58 - 56);
      v64 = __OFSUB__(v60, v59);
      v61 = v60 - v59;
      if (v64)
      {
        goto LABEL_119;
      }

      v63 = *(v58 - 48);
      v62 = *(v58 - 40);
      v64 = __OFSUB__(v62, v63);
      v56 = v62 - v63;
      v57 = v64;
      if (v64)
      {
        goto LABEL_120;
      }

      v65 = &v9[16 * v50];
      v67 = *v65;
      v66 = *(v65 + 1);
      v64 = __OFSUB__(v66, v67);
      v68 = v66 - v67;
      if (v64)
      {
        goto LABEL_122;
      }

      v64 = __OFADD__(v56, v68);
      v69 = v56 + v68;
      if (v64)
      {
        goto LABEL_125;
      }

      if (v69 >= v61)
      {
        v87 = &v9[16 * v53 + 32];
        v89 = *v87;
        v88 = *(v87 + 1);
        v64 = __OFSUB__(v88, v89);
        v90 = v88 - v89;
        if (v64)
        {
          goto LABEL_129;
        }

        if (v56 < v90)
        {
          v53 = v50 - 2;
        }

        goto LABEL_95;
      }

      goto LABEL_74;
    }

    break;
  }

  v35 = v10 + a4;
  if (__OFADD__(v10, a4))
  {
    goto LABEL_135;
  }

  if (v35 >= v34)
  {
    v35 = v6[1];
  }

  if (v35 < v10)
  {
LABEL_136:
    __break(1u);
    goto LABEL_137;
  }

  if (v11 == v35)
  {
    goto LABEL_54;
  }

  v99 = v5;
  v101 = v10;
  v36 = *v6;
  v37 = *v6 + 8 * v11 - 8;
  v38 = v10 - v11;
  v105 = v35;
LABEL_43:
  v106 = v11;
  v7 = v38;
  v39 = v37;
  while (1)
  {
    v40 = sub_1DB50BEE0();
    v42 = v41;
    if (v40 == sub_1DB50BEE0() && v42 == v43)
    {

LABEL_42:
      ++v11;
      v37 += 8;
      --v38;
      if (v106 + 1 == v105)
      {
        v11 = v105;
        v5 = v99;
        v10 = v101;
        v6 = a3;
        goto LABEL_54;
      }

      goto LABEL_43;
    }

    v45 = sub_1DB50BA30();

    if ((v45 & 1) == 0)
    {
      goto LABEL_42;
    }

    if (!v36)
    {
      break;
    }

    v46 = *v39;
    *v39 = v39[1];
    v39[1] = v46;
    --v39;
    if (__CFADD__(v7++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
  return result;
}

uint64_t sub_1DB410C24(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (a4 != __dst || &__dst[8 * v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[8 * v10];
    if (v8 < 8)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_47;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = sub_1DB50BEE0();
      v18 = v17;
      v20 = v16 == sub_1DB50BEE0() && v18 == v19;
      if (v20)
      {
        break;
      }

      v21 = sub_1DB50BA30();

      if ((v21 & 1) == 0)
      {
        goto LABEL_22;
      }

      v15 = v6;
      v20 = v7 == v6;
      v6 += 8;
      if (!v20)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 8;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

LABEL_22:
    v15 = v4;
    v20 = v7 == v4;
    v4 += 8;
    if (v20)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[8 * v13] <= a4)
  {
    memmove(a4, __src, 8 * v13);
  }

  v14 = &v4[8 * v13];
  if (v11 >= 8 && v6 > v7)
  {
LABEL_30:
    v31 = v6;
    v22 = v6 - 8;
    v5 -= 8;
    v23 = v14;
    while (1)
    {
      v23 -= 8;
      v6 = v22;
      v24 = sub_1DB50BEE0();
      v26 = v25;
      if (v24 == sub_1DB50BEE0() && v26 == v27)
      {
      }

      else
      {
        v29 = sub_1DB50BA30();

        if (v29)
        {
          if (v5 + 8 != v31)
          {
            *v5 = *v6;
          }

          if (v14 <= v4 || v6 <= v7)
          {
            break;
          }

          goto LABEL_30;
        }
      }

      v22 = v6;
      if (v5 + 8 != v14)
      {
        *v5 = *v23;
      }

      v5 -= 8;
      v14 = v23;
      if (v23 <= v4)
      {
        v14 = v23;
        v6 = v31;
        break;
      }
    }
  }

LABEL_47:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v6, v4, 8 * ((v14 - v4) / 8));
  }

  return 1;
}

uint64_t sub_1DB410F28(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1DB410FB4(v3);
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

uint64_t sub_1DB410FC8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v8 = *a3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1DB306AF4;

  return sub_1DB409408(a1, a2, v8, a4);
}

uint64_t sub_1DB411094(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v8 = *a3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1DB30C7A0;

  return sub_1DB40AB48(a1, a2, v8, a4);
}

unint64_t sub_1DB41114C()
{
  result = qword_1ECC45688;
  if (!qword_1ECC45688)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC45680, &qword_1DB51C740);
    sub_1DB367EE0(&qword_1ECC45690, &qword_1ECC45698, &qword_1DB51B2D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC45688);
  }

  return result;
}

uint64_t sub_1DB4111E8(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1DB30C7A0;

  return sub_1DB40ED90(a1, v5, v4);
}

uint64_t sub_1DB4112E0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1DB30C7A0;

  return sub_1DB4100EC(a1, v5, v6, v4);
}

uint64_t dispatch thunk of BaseObjectGraph.performAsCurrent<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = (*(*v4 + 112) + **(*v4 + 112));
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_1DB306AF4;

  return v12(a1, a2, a3, a4);
}

uint64_t sub_1DB411758(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1DB30C7A0;

  return sub_1DB411094(a1, a2, v7, v6);
}

uint64_t sub_1DB411820(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC44120, &qword_1DB514148);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DB411890(uint64_t a1)
{
  v2 = type metadata accessor for _ResolvedDependency(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DB4118EC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1DB30C7A0;

  return sub_1DB380CC0(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1DB4119B4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1DB30C7A0;

  return sub_1DB3809E8(a1, v4, v5, v6, (v1 + 5));
}

uint64_t objectdestroy_34Tm()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0((v0 + 40));

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1DB411AB4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1DB30C7A0;

  return sub_1DB3807EC(a1, v4, v5, v6, (v1 + 5));
}

uint64_t sub_1DB411B74(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1DB30C7A0;

  return sub_1DB410FC8(a1, a2, v7, v6);
}

uint64_t objectdestroyTm_2()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

double ComponentModel.contextMenu.getter@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t ComponentTypes.init()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC456E0, &qword_1DB51B448);
  swift_getTupleTypeMetadata2();
  v7 = sub_1DB50A9D0();
  v8 = sub_1DB4EA020(v7, a1, v6, a2);

  a3[2] = v8;
  return result;
}

uint64_t ComponentTypes.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = a1;
  a5[1] = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC456E0, &qword_1DB51B448);
  swift_getTupleTypeMetadata2();
  v9 = sub_1DB50A9D0();
  v10 = sub_1DB4EA020(v9, a3, v8, a4);

  a5[2] = v10;
  return result;
}

uint64_t ComponentTypes.registering(_:toKind:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v10 = *(a4 + 16);
  MEMORY[0x1EEE9AC00](a1);
  v12 = *(v5 + 16);
  *a5 = *v5;
  *(a5 + 16) = v12;
  (*(v13 + 16))(v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v14, v10);
  v16[1] = a1;
  v16[2] = a2;
  v16[3] = a3;

  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC456E0, &qword_1DB51B448);
  sub_1DB50A540();
  return sub_1DB50A5A0();
}

void ComponentTypes.makeInstance(ofKind:byDeserializing:using:)(uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a5@<X8>)
{
  v72 = a2;
  v59 = a5;
  v7 = sub_1DB50B3E0();
  v58 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v55 - v11;
  v13 = *a3;
  v14 = *v5;
  v60 = v5[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC456E0, &qword_1DB51B448);
  sub_1DB50A590();
  v15 = v66;
  if (v66)
  {
    v17 = v67;
    v16 = v68;
    goto LABEL_3;
  }

  v57 = v12;
  v56 = v9;
  if (!v14)
  {
    goto LABEL_14;
  }

  v20 = (*(v60 + 16))(v14);
  sub_1DB50A910();
  if (!*(v20 + 16))
  {

    goto LABEL_13;
  }

  v21 = sub_1DB306160(v66, v67);
  v23 = v22;

  if ((v23 & 1) == 0)
  {
LABEL_13:

LABEL_14:
    sub_1DB50A910();
    v32 = v66;
    v33 = v67;
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECC456E8, &qword_1DB51B450) | 0x6000000000000000;
    sub_1DB315178();
    swift_allocError();
    *v35 = v32;
    v35[1] = v33;
    v35[2] = v34;
    v35[3] = 0;
LABEL_15:
    swift_willThrow();
    return;
  }

  v24 = *(*(v20 + 56) + 16 * v21);

  v25 = dynamic_cast_existential_2_conditional(v24, v24, &protocol descriptor for ComponentModel, &protocol descriptor for ExpressibleByJSON);
  if (v25)
  {
    v15 = v25;
    v17 = v26;
    v16 = v27;
LABEL_3:
    sub_1DB3171C0(v72, v63);
    v62[0] = v13;
    v18 = v16[1];
    *&v69 = v15;
    *(&v69 + 1) = v17;
    v70 = v16;
    __swift_allocate_boxed_opaque_existential_0(&v66);

    v19 = v61;
    v18(v63, v62, v15, v16);
    if (v19)
    {
      __swift_deallocate_boxed_opaque_existential_0(&v66);
    }

    else
    {
      v61 = v69;
      v28 = v69;
      v29 = __swift_project_boxed_opaque_existential_1(&v66, v69);
      v30 = v59;
      *(v59 + 24) = v61;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v30);
      (*(*(v28 - 8) + 16))(boxed_opaque_existential_0, v29, v28);
      __swift_destroy_boxed_opaque_existential_0(&v66);
    }

    return;
  }

  v38 = dynamic_cast_existential_2_conditional(v24, v24, &protocol descriptor for ComponentModel, MEMORY[0x1E69E6440]);
  v39 = v61;
  if (!v38)
  {
    sub_1DB315178();
    swift_allocError();
    v49 = MEMORY[0x1E69E7CC0];
    *v50 = v24;
    v50[1] = v49;
    v50[2] = 0;
    v50[3] = 0;
    goto LABEL_15;
  }

  v40 = v36;
  v41 = v37;
  sub_1DB3171C0(v72, &v66);
  v63[0] = v13;

  v70 = _sSD7JetCores17CodingUserInfoKeyVRszypRs_rlE11jsonContextSDyACypGAA11JSONContextV_tcfC_0(v63);
  v71 = MEMORY[0x1E69E7CC0];
  v62[3] = &type metadata for _JSONObjectDecoder;
  v62[4] = sub_1DB34A154();
  v62[0] = swift_allocObject();
  sub_1DB34A1A8(&v66, v62[0] + 16);
  *&v64 = v38;
  *(&v64 + 1) = v40;
  v65 = v41;
  __swift_allocate_boxed_opaque_existential_0(v63);
  sub_1DB50ADB0();
  if (v39)
  {
    sub_1DB34A204(&v66);
    __swift_deallocate_boxed_opaque_existential_0(v63);
    v66 = v39;
    v42 = v39;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A00, &unk_1DB5102D0);
    v43 = v57;
    if (swift_dynamicCast())
    {

      v44 = v58;
      v45 = v56;
      (*(v58 + 32))(v56, v43, v7);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC470F0, &unk_1DB50F4B0);
      v46 = swift_allocObject();
      *(v46 + 16) = xmmword_1DB50EE90;
      *(v46 + 32) = swift_allocError();
      (*(v44 + 16))(v47, v45, v7);
      sub_1DB315178();
      swift_allocError();
      *v48 = v38;
      v48[1] = v46;
      v48[2] = 0;
      v48[3] = 0;
      swift_willThrow();
      (*(v44 + 8))(v45, v7);
    }
  }

  else
  {
    v61 = v64;
    v51 = v64;
    v52 = __swift_project_boxed_opaque_existential_1(v63, v64);
    v53 = v59;
    *(v59 + 24) = v61;
    v54 = __swift_allocate_boxed_opaque_existential_0(v53);
    (*(*(v51 - 8) + 16))(v54, v52, v51);
    sub_1DB34A204(&v66);
    __swift_destroy_boxed_opaque_existential_0(v63);
  }
}

uint64_t sub_1DB41268C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1DB4126C8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1DB412710(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1DB412794(uint64_t a1, uint64_t a2)
{
  sub_1DB50B320();

  MEMORY[0x1E1285C70](a1, a2);
  MEMORY[0x1E1285C70](10592, 0xE200000000000000);
  return 0xD000000000000026;
}

uint64_t sub_1DB412824(uint64_t a1, uint64_t a2)
{
  sub_1DB50B320();
  MEMORY[0x1E1285C70](0xD000000000000030, 0x80000001DB52DA80);
  MEMORY[0x1E1285C70](a1, a2);
  MEMORY[0x1E1285C70](10592, 0xE200000000000000);
  return 0;
}

uint64_t Models.AdamID.init(from:)()
{
  sub_1DB414030();
  v0 = sub_1DB50B1F0();
  return _s7JetCore6ModelsO6AdamIDV8rawValueAESS_tcfC_0(v0, v1);
}

uint64_t Models.AdamID.init(from:)(void *a1)
{
  v2 = [a1 description];
  v3 = sub_1DB50A650();
  v5 = v4;

  v6 = _s7JetCore6ModelsO6AdamIDV8rawValueAESS_tcfC_0(v3, v5);
  return v6;
}

unint64_t Models.AdamID.uint64.getter(unint64_t result, unint64_t a2)
{
  v3 = HIBYTE(a2) & 0xF;
  v4 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = v3;
  }

  else
  {
    v5 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return 0;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v23[0] = result;
      v23[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (v3)
        {
          if (--v3)
          {
            v7 = 0;
            v15 = v23 + 1;
            while (1)
            {
              v16 = *v15 - 48;
              if (v16 > 9)
              {
                break;
              }

              if (!is_mul_ok(v7, 0xAuLL))
              {
                break;
              }

              v10 = __CFADD__(10 * v7, v16);
              v7 = 10 * v7 + v16;
              if (v10)
              {
                break;
              }

              ++v15;
              if (!--v3)
              {
                goto LABEL_64;
              }
            }
          }

          goto LABEL_63;
        }

LABEL_74:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v3)
        {
          v7 = 0;
          v18 = v23;
          while (1)
          {
            v19 = *v18 - 48;
            if (v19 > 9)
            {
              break;
            }

            if (!is_mul_ok(v7, 0xAuLL))
            {
              break;
            }

            v10 = __CFADD__(10 * v7, v19);
            v7 = 10 * v7 + v19;
            if (v10)
            {
              break;
            }

            ++v18;
            if (!--v3)
            {
              goto LABEL_64;
            }
          }
        }

        goto LABEL_63;
      }

      if (v3)
      {
        if (--v3)
        {
          v7 = 0;
          v11 = v23 + 1;
          while (1)
          {
            v12 = *v11 - 48;
            if (v12 > 9)
            {
              break;
            }

            if (!is_mul_ok(v7, 0xAuLL))
            {
              break;
            }

            v10 = 10 * v7 >= v12;
            v7 = 10 * v7 - v12;
            if (!v10)
            {
              break;
            }

            ++v11;
            if (!--v3)
            {
              goto LABEL_64;
            }
          }
        }

        goto LABEL_63;
      }
    }

    else
    {
      if ((result & 0x1000000000000000) != 0)
      {
        result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = sub_1DB50B440();
      }

      v6 = *result;
      if (v6 == 43)
      {
        if (v4 >= 1)
        {
          v3 = v4 - 1;
          if (v4 != 1)
          {
            v7 = 0;
            if (result)
            {
              v13 = (result + 1);
              while (1)
              {
                v14 = *v13 - 48;
                if (v14 > 9)
                {
                  goto LABEL_63;
                }

                if (!is_mul_ok(v7, 0xAuLL))
                {
                  goto LABEL_63;
                }

                v10 = __CFADD__(10 * v7, v14);
                v7 = 10 * v7 + v14;
                if (v10)
                {
                  goto LABEL_63;
                }

                ++v13;
                if (!--v3)
                {
                  goto LABEL_64;
                }
              }
            }

            goto LABEL_55;
          }

          goto LABEL_63;
        }

        goto LABEL_73;
      }

      if (v6 != 45)
      {
        if (v4)
        {
          v7 = 0;
          if (result)
          {
            while (1)
            {
              v17 = *result - 48;
              if (v17 > 9)
              {
                goto LABEL_63;
              }

              if (!is_mul_ok(v7, 0xAuLL))
              {
                goto LABEL_63;
              }

              v10 = __CFADD__(10 * v7, v17);
              v7 = 10 * v7 + v17;
              if (v10)
              {
                goto LABEL_63;
              }

              ++result;
              if (!--v4)
              {
                goto LABEL_55;
              }
            }
          }

          goto LABEL_55;
        }

LABEL_63:
        v7 = 0;
        LOBYTE(v3) = 1;
        goto LABEL_64;
      }

      if (v4 >= 1)
      {
        v3 = v4 - 1;
        if (v4 != 1)
        {
          v7 = 0;
          if (result)
          {
            v8 = (result + 1);
            while (1)
            {
              v9 = *v8 - 48;
              if (v9 > 9)
              {
                goto LABEL_63;
              }

              if (!is_mul_ok(v7, 0xAuLL))
              {
                goto LABEL_63;
              }

              v10 = 10 * v7 >= v9;
              v7 = 10 * v7 - v9;
              if (!v10)
              {
                goto LABEL_63;
              }

              ++v8;
              if (!--v3)
              {
                goto LABEL_64;
              }
            }
          }

LABEL_55:
          LOBYTE(v3) = 0;
LABEL_64:
          v24 = v3;
          v20 = v3;
          goto LABEL_65;
        }

        goto LABEL_63;
      }

      __break(1u);
    }

    __break(1u);
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  v21 = result;

  v7 = sub_1DB4132E4(v21, a2, 10);
  v20 = v22;

LABEL_65:
  if (v20)
  {
    return 0;
  }

  else
  {
    return v7;
  }
}

id Models.AdamID.nsNumber.getter(unint64_t a1, unint64_t a2)
{
  v2 = Models.AdamID.uint64.getter(a1, a2);
  if (v3)
  {
    return 0;
  }

  else
  {
    return [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedLongLong_];
  }
}

uint64_t Models.AdamID.encode(to:)(void *a1, uint64_t a2, uint64_t a3)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB50BE20();
  __swift_mutable_project_boxed_opaque_existential_1(v4, v4[3]);
  sub_1DB50BAC0();
  return __swift_destroy_boxed_opaque_existential_0(v4);
}

uint64_t sub_1DB412DA0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = _s7JetCore6ModelsO6AdamIDV8rawValueAESS_tcfC_0(*a1, a1[1]);
  *a2 = result;
  a2[1] = v4;
  return result;
}

unint64_t sub_1DB412DD0@<X0>(void *a1@<X0>, unint64_t *a2@<X8>)
{
  result = sub_1DB413864(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

void *sub_1DB412DFC(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC44F50, &qword_1DB518EA8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

uint64_t sub_1DB412E70(uint64_t a1, unint64_t a2)
{
  v2 = sub_1DB50A870();
  v6 = sub_1DB412EF0(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_1DB412EF0(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_1DB50B160();
    if (!v9 || (v10 = v9, v11 = sub_1DB412DFC(v9, 0), v12 = sub_1DB413048(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_1DB50A730();

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
      return sub_1DB50A730();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_1DB50B440();
LABEL_4:

  return sub_1DB50A730();
}

unint64_t sub_1DB413048(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_1DB413268(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_1DB50A7F0();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_1DB50B440();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_1DB413268(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_1DB50A7D0();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

unint64_t sub_1DB413268(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_1DB50A800();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x1E1285CD0](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

unsigned __int8 *sub_1DB4132E4(uint64_t a1, uint64_t a2, int64_t a3)
{
  v68 = a1;
  v69 = a2;

  result = sub_1DB50A860();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_1DB412E70(result, v5);
    v39 = v38;

    v5 = v39;
    if ((v39 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_1DB50B440();
      v7 = v67;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v21 = v7 - 1;
        if (v21)
        {
          v22 = a3 + 48;
          v23 = a3 + 55;
          v24 = a3 + 87;
          if (a3 > 10)
          {
            v22 = 58;
          }

          else
          {
            v24 = 97;
            v23 = 65;
          }

          if (result)
          {
            v13 = 0;
            v25 = result + 1;
            do
            {
              v26 = *v25;
              if (v26 < 0x30 || v26 >= v22)
              {
                if (v26 < 0x41 || v26 >= v23)
                {
                  v17 = 0;
                  if (v26 < 0x61 || v26 >= v24)
                  {
                    goto LABEL_127;
                  }

                  v27 = -87;
                }

                else
                {
                  v27 = -55;
                }
              }

              else
              {
                v27 = -48;
              }

              if (!is_mul_ok(v13, a3))
              {
                goto LABEL_126;
              }

              v28 = v13 * a3;
              v29 = v26 + v27;
              v20 = __CFADD__(v28, v29);
              v13 = v28 + v29;
              if (v20)
              {
                goto LABEL_126;
              }

              ++v25;
              --v21;
            }

            while (v21);
LABEL_47:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_65;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v30 = 0;
        v31 = a3 + 48;
        v32 = a3 + 55;
        v33 = a3 + 87;
        if (a3 > 10)
        {
          v31 = 58;
        }

        else
        {
          v33 = 97;
          v32 = 65;
        }

        while (1)
        {
          v34 = *result;
          if (v34 < 0x30 || v34 >= v31)
          {
            if (v34 < 0x41 || v34 >= v32)
            {
              v17 = 0;
              if (v34 < 0x61 || v34 >= v33)
              {
                goto LABEL_127;
              }

              v35 = -87;
            }

            else
            {
              v35 = -55;
            }
          }

          else
          {
            v35 = -48;
          }

          if (!is_mul_ok(v30, a3))
          {
            goto LABEL_126;
          }

          v36 = v30 * a3;
          v37 = v34 + v35;
          v20 = __CFADD__(v36, v37);
          v30 = v36 + v37;
          if (v20)
          {
            goto LABEL_126;
          }

          ++result;
          if (!--v7)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            if (!is_mul_ok(v13, a3))
            {
              goto LABEL_126;
            }

            v18 = v13 * a3;
            v19 = v15 + v16;
            v20 = v18 >= v19;
            v13 = v18 - v19;
            if (!v20)
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_47;
            }
          }
        }

LABEL_65:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v40 = HIBYTE(v5) & 0xF;
  v68 = v6;
  v69 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v40)
      {
        v30 = 0;
        v59 = a3 + 48;
        v60 = a3 + 55;
        v61 = a3 + 87;
        if (a3 > 10)
        {
          v59 = 58;
        }

        else
        {
          v61 = 97;
          v60 = 65;
        }

        v62 = &v68;
        while (1)
        {
          v63 = *v62;
          if (v63 < 0x30 || v63 >= v59)
          {
            if (v63 < 0x41 || v63 >= v60)
            {
              v17 = 0;
              if (v63 < 0x61 || v63 >= v61)
              {
                goto LABEL_127;
              }

              v64 = -87;
            }

            else
            {
              v64 = -55;
            }
          }

          else
          {
            v64 = -48;
          }

          if (!is_mul_ok(v30, a3))
          {
            goto LABEL_126;
          }

          v65 = v30 * a3;
          v66 = v63 + v64;
          v20 = __CFADD__(v65, v66);
          v30 = v65 + v66;
          if (v20)
          {
            goto LABEL_126;
          }

          v62 = (v62 + 1);
          if (!--v40)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v40)
    {
      v41 = v40 - 1;
      if (v41)
      {
        v30 = 0;
        v42 = a3 + 48;
        v43 = a3 + 55;
        v44 = a3 + 87;
        if (a3 > 10)
        {
          v42 = 58;
        }

        else
        {
          v44 = 97;
          v43 = 65;
        }

        v45 = &v68 + 1;
        while (1)
        {
          v46 = *v45;
          if (v46 < 0x30 || v46 >= v42)
          {
            if (v46 < 0x41 || v46 >= v43)
            {
              v17 = 0;
              if (v46 < 0x61 || v46 >= v44)
              {
                goto LABEL_127;
              }

              v47 = -87;
            }

            else
            {
              v47 = -55;
            }
          }

          else
          {
            v47 = -48;
          }

          if (!is_mul_ok(v30, a3))
          {
            goto LABEL_126;
          }

          v48 = v30 * a3;
          v49 = v46 + v47;
          v20 = v48 >= v49;
          v30 = v48 - v49;
          if (!v20)
          {
            goto LABEL_126;
          }

          ++v45;
          if (!--v41)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v40)
  {
    v50 = v40 - 1;
    if (v50)
    {
      v30 = 0;
      v51 = a3 + 48;
      v52 = a3 + 55;
      v53 = a3 + 87;
      if (a3 > 10)
      {
        v51 = 58;
      }

      else
      {
        v53 = 97;
        v52 = 65;
      }

      v54 = &v68 + 1;
      do
      {
        v55 = *v54;
        if (v55 < 0x30 || v55 >= v51)
        {
          if (v55 < 0x41 || v55 >= v52)
          {
            v17 = 0;
            if (v55 < 0x61 || v55 >= v53)
            {
              goto LABEL_127;
            }

            v56 = -87;
          }

          else
          {
            v56 = -55;
          }
        }

        else
        {
          v56 = -48;
        }

        if (!is_mul_ok(v30, a3))
        {
          goto LABEL_126;
        }

        v57 = v30 * a3;
        v58 = v55 + v56;
        v20 = __CFADD__(v57, v58);
        v30 = v57 + v58;
        if (v20)
        {
          goto LABEL_126;
        }

        ++v54;
        --v50;
      }

      while (v50);
LABEL_125:
      v17 = v30;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

unint64_t sub_1DB413864(void *a1)
{
  v3 = sub_1DB50B3D0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB50BDD0();
  if (v1)
  {
    goto LABEL_17;
  }

  __swift_project_boxed_opaque_existential_1(v35, v35[3]);
  v8 = sub_1DB50BA40();
  v7 = v8;
  v10 = v9;
  v11 = HIBYTE(v9) & 0xF;
  if ((v9 & 0x2000000000000000) == 0)
  {
    v11 = v8 & 0xFFFFFFFFFFFFLL;
  }

  if (!v11)
  {

    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1DB50BDB0();
    sub_1DB50B3C0();
    v20 = sub_1DB50B3E0();
    swift_allocError();
    v22 = v21;
    (*(v4 + 16))(v21, v6, v3);
    (*(*(v20 - 8) + 104))(v22, *MEMORY[0x1E69E6B00], v20);
    swift_willThrow();
    (*(v4 + 8))(v6, v3);
    goto LABEL_16;
  }

  v36 = v4;
  v31 = v8;
  v32 = v9;
  v33 = 0;
  v34 = v11;
  v30 = v11;

  v12 = sub_1DB50A7B0();
  if (!v13)
  {
LABEL_13:

    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1DB50BDB0();
    v31 = 0;
    v32 = 0xE000000000000000;
    sub_1DB50B320();
    MEMORY[0x1E1285C70](0xD000000000000031, 0x80000001DB52D9B0);
    goto LABEL_14;
  }

  while (1)
  {
    if (v12 == 48 && v13 == 0xE100000000000000)
    {

      goto LABEL_9;
    }

    v14 = sub_1DB50BA30();

    if ((v14 & 1) == 0)
    {
      break;
    }

LABEL_9:
    v12 = sub_1DB50A7B0();
    if (!v13)
    {
      goto LABEL_13;
    }
  }

  v31 = v7;
  v32 = v10;
  v33 = 0;
  v34 = v30;

  v24 = sub_1DB50A7B0();
  if (!v25)
  {
LABEL_29:

    __swift_destroy_boxed_opaque_existential_0(v35);
    __swift_destroy_boxed_opaque_existential_0(a1);
    return v7;
  }

  v26 = v24;
  v27 = v25;
  while (2)
  {
    if (v26 == 48 && v27 == 0xE100000000000000)
    {
      goto LABEL_21;
    }

    if ((sub_1DB50BA30() & 1) == 0)
    {
      if (v26 == 57 && v27 == 0xE100000000000000)
      {

LABEL_22:
        v26 = sub_1DB50A7B0();
        v27 = v29;
        if (!v29)
        {
          goto LABEL_29;
        }

        continue;
      }

LABEL_21:
      v28 = sub_1DB50BA30();

      if (v28)
      {
        goto LABEL_31;
      }

      goto LABEL_22;
    }

    break;
  }

LABEL_31:

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB50BDB0();
  v31 = 0;
  v32 = 0xE000000000000000;
  sub_1DB50B320();

  v31 = 0xD000000000000028;
  v32 = 0x80000001DB52D9F0;
LABEL_14:
  MEMORY[0x1E1285C70](v7, v10);

  MEMORY[0x1E1285C70](96, 0xE100000000000000);
  sub_1DB50B3C0();
  v15 = sub_1DB50B3E0();
  swift_allocError();
  v17 = v16;
  v18 = v36;
  (*(v36 + 16))(v16, v6, v3);
  (*(*(v15 - 8) + 104))(v17, *MEMORY[0x1E69E6B00], v15);
  swift_willThrow();
  v19 = *(v18 + 8);
  v7 = v18 + 8;
  v19(v6, v3);
LABEL_16:
  __swift_destroy_boxed_opaque_existential_0(v35);
LABEL_17:
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v7;
}

uint64_t _s7JetCore6ModelsO6AdamIDV8rawValueAESS_tcfC_0(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v3 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v3)
  {
    sub_1DB3CC438("JetCore/AdamID.swift", 0x14uLL, 2, 0x13uLL);
  }

  MEMORY[0x1EEE9AC00](a1);

  v4 = sub_1DB50A7B0();
  if (!v5)
  {
LABEL_13:

    sub_1DB3D66F0("JetCore/AdamID.swift", 20, 2, 21, sub_1DB4140EC);
    goto LABEL_15;
  }

  while (1)
  {
    if (v4 == 48 && v5 == 0xE100000000000000)
    {

      goto LABEL_9;
    }

    v6 = sub_1DB50BA30();

    if ((v6 & 1) == 0)
    {
      break;
    }

LABEL_9:
    v4 = sub_1DB50A7B0();
    if (!v5)
    {
      goto LABEL_13;
    }
  }

LABEL_15:
  MEMORY[0x1EEE9AC00](v7);

  v8 = sub_1DB50A7B0();
  if (!v9)
  {
LABEL_25:

    return a1;
  }

  v10 = v8;
  v11 = v9;
  while (2)
  {
    if (v10 == 48 && v11 == 0xE100000000000000)
    {
      goto LABEL_17;
    }

    if ((sub_1DB50BA30() & 1) == 0)
    {
      if (v10 == 57 && v11 == 0xE100000000000000)
      {

LABEL_18:
        v10 = sub_1DB50A7B0();
        v11 = v13;
        if (!v13)
        {
          goto LABEL_25;
        }

        continue;
      }

LABEL_17:
      v12 = sub_1DB50BA30();

      if (v12)
      {
        goto LABEL_27;
      }

      goto LABEL_18;
    }

    break;
  }

LABEL_27:

  sub_1DB3D66F0("JetCore/AdamID.swift", 20, 2, 23, sub_1DB4140F4);
  return a1;
}

unint64_t sub_1DB414030()
{
  result = qword_1ECC45770;
  if (!qword_1ECC45770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC45770);
  }

  return result;
}

unint64_t sub_1DB414088()
{
  result = qword_1ECC45778;
  if (!qword_1ECC45778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC45778);
  }

  return result;
}

uint64_t URLJetPackAssetRequest.init(url:sourcePolicy:usageID:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = *a2;
  v10 = sub_1DB509CA0();
  (*(*(v10 - 8) + 32))(a5, a1, v10);
  result = type metadata accessor for URLJetPackAssetRequest(0);
  *(a5 + *(result + 20)) = v9;
  v12 = (a5 + *(result + 24));
  *v12 = a3;
  v12[1] = a4;
  return result;
}

uint64_t type metadata accessor for URLJetPackAssetRequest(uint64_t a1)
{
  result = qword_1EE30CE48;
  if (!qword_1EE30CE48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t URLJetPackAssetRequest.init(url:sourcePolicy:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2;
  v6 = sub_1DB509CA0();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  result = type metadata accessor for URLJetPackAssetRequest(0);
  *(a3 + *(result + 20)) = v5;
  v8 = (a3 + *(result + 24));
  *v8 = 0;
  v8[1] = 0;
  return result;
}

uint64_t URLJetPackAssetRequest.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1DB509CA0();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t URLJetPackAssetRequest._sourcePolicy.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for URLJetPackAssetRequest(0);
  *a1 = *(v1 + *(result + 20));
  return result;
}

uint64_t URLJetPackAssetRequest.usageID.getter()
{
  v1 = *(v0 + *(type metadata accessor for URLJetPackAssetRequest(0) + 24));

  return v1;
}

uint64_t URLJetPackAssetRequest.usageIDOrDefault.getter()
{
  v1 = (v0 + *(type metadata accessor for URLJetPackAssetRequest(0) + 24));
  if (v1[1])
  {
    v2 = *v1;
  }

  else
  {
    v2 = 0x746C7561666564;
  }

  return v2;
}

uint64_t URLJetPackAssetRequest._cacheKey.getter()
{
  sub_1DB509CA0();
  sub_1DB415418(&qword_1EE30E288, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);

  return sub_1DB50B8F0();
}

uint64_t URLJetPackAssetRequest.hash(into:)(uint64_t a1)
{
  sub_1DB509CA0();
  sub_1DB415418(&unk_1EE30E298, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
  sub_1DB50A5D0();
  v2 = type metadata accessor for URLJetPackAssetRequest(0);
  sub_1DB50A740();

  if (!*(v1 + *(v2 + 24) + 8))
  {
    return sub_1DB50BD10();
  }

  sub_1DB50BD10();

  return sub_1DB50A740();
}

uint64_t URLJetPackAssetRequest.withSourcePolicy(_:)@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = sub_1DB509CA0();
  (*(*(v5 - 8) + 16))(a2, v2, v5);
  v6 = type metadata accessor for URLJetPackAssetRequest(0);
  v7 = (v2 + *(v6 + 24));
  *(a2 + *(v6 + 20)) = v4;
  v9 = *v7;
  v8 = v7[1];
  v10 = (a2 + *(v6 + 24));
  *v10 = v9;
  v10[1] = v8;
}

uint64_t sub_1DB41460C()
{
  v1 = 0x50656372756F735FLL;
  if (*v0 != 1)
  {
    v1 = 0x44496567617375;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 7107189;
  }
}

uint64_t sub_1DB41466C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1DB41562C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1DB414694(uint64_t a1)
{
  v2 = sub_1DB4151BC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB4146D0(uint64_t a1)
{
  v2 = sub_1DB4151BC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t URLJetPackAssetRequest.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC45780, &qword_1DB51B630);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB4151BC();
  sub_1DB50BE40();
  v10[15] = 0;
  sub_1DB509CA0();
  sub_1DB415418(&qword_1ECC440B0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FB8]);
  sub_1DB50B8A0();
  if (!v2)
  {
    v10[14] = *(v3 + *(type metadata accessor for URLJetPackAssetRequest(0) + 20));
    v10[13] = 1;
    sub_1DB415210();
    sub_1DB50B8A0();
    v10[12] = 2;
    sub_1DB50B800();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t URLJetPackAssetRequest.hashValue.getter()
{
  sub_1DB50BCF0();
  sub_1DB509CA0();
  sub_1DB415418(&unk_1EE30E298, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
  sub_1DB50A5D0();
  v1 = type metadata accessor for URLJetPackAssetRequest(0);
  sub_1DB50A740();

  if (*(v0 + *(v1 + 24) + 8))
  {
    sub_1DB50BD10();
    sub_1DB50A740();
  }

  else
  {
    sub_1DB50BD10();
  }

  return sub_1DB50BD30();
}

uint64_t URLJetPackAssetRequest.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v4 = sub_1DB509CA0();
  v25 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v27 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC45790, &qword_1DB51B638);
  v24 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v7 = &v22 - v6;
  v8 = type metadata accessor for URLJetPackAssetRequest(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB4151BC();
  sub_1DB50BDF0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v22 = v10;
  v12 = v24;
  v11 = v25;
  v31 = 0;
  sub_1DB415418(&qword_1EE30E290, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FD0]);
  v13 = v26;
  sub_1DB50B780();
  (*(v11 + 32))(v22, v27, v4);
  v29 = 1;
  sub_1DB415264();
  sub_1DB50B780();
  v22[*(v8 + 20)] = v30;
  v28 = 2;
  v14 = sub_1DB50B6E0();
  v27 = v15;
  v16 = v14;
  (*(v12 + 8))(v7, v13);
  v18 = v22;
  v17 = v23;
  v19 = &v22[*(v8 + 24)];
  v20 = v27;
  *v19 = v16;
  v19[1] = v20;
  sub_1DB4152B8(v18, v17);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return sub_1DB41531C(v18);
}

uint64_t sub_1DB414DE8()
{
  sub_1DB509CA0();
  sub_1DB415418(&qword_1EE30E288, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);

  return sub_1DB50B8F0();
}

uint64_t sub_1DB414EA4(uint64_t a1, uint64_t a2)
{
  sub_1DB50BCF0();
  sub_1DB509CA0();
  sub_1DB415418(&unk_1EE30E298, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
  sub_1DB50A5D0();
  sub_1DB50A740();

  if (*(v2 + *(a2 + 24) + 8))
  {
    sub_1DB50BD10();
    sub_1DB50A740();
  }

  else
  {
    sub_1DB50BD10();
  }

  return sub_1DB50BD30();
}

uint64_t _s7JetCore22URLJetPackAssetRequestV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((sub_1DB509BF0() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for URLJetPackAssetRequest(0);
  v5 = *(v4 + 20);
  v6 = *(a1 + v5);
  v7 = *(a2 + v5);
  if (v6)
  {
    if (v6 == 1)
    {
      v8 = 0x6E4F65746F6D6572;
      v9 = 0xEA0000000000796CLL;
      if (!v7)
      {
LABEL_11:
        v10 = 0xE800000000000000;
        if (v8 != 0x647261646E617473)
        {
          goto LABEL_16;
        }

        goto LABEL_14;
      }
    }

    else
    {
      v8 = 0x6C6E4F6C61636F6CLL;
      v9 = 0xE900000000000079;
      if (!v7)
      {
        goto LABEL_11;
      }
    }
  }

  else
  {
    v9 = 0xE800000000000000;
    v8 = 0x647261646E617473;
    if (!v7)
    {
      goto LABEL_11;
    }
  }

  if (v7 == 1)
  {
    v10 = 0xEA0000000000796CLL;
    if (v8 != 0x6E4F65746F6D6572)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v10 = 0xE900000000000079;
    if (v8 != 0x6C6E4F6C61636F6CLL)
    {
      goto LABEL_16;
    }
  }

LABEL_14:
  if (v9 == v10)
  {

    goto LABEL_17;
  }

LABEL_16:
  v11 = sub_1DB50BA30();

  if ((v11 & 1) == 0)
  {
    return 0;
  }

LABEL_17:
  v12 = *(v4 + 24);
  v13 = (a1 + v12);
  v14 = *(a1 + v12 + 8);
  v15 = (a2 + v12);
  v16 = v15[1];
  result = (v14 | v16) == 0;
  if (v14)
  {
    v18 = v16 == 0;
  }

  else
  {
    v18 = 1;
  }

  if (!v18)
  {
    if (*v13 == *v15 && v14 == v16)
    {
      return 1;
    }

    else
    {

      return sub_1DB50BA30();
    }
  }

  return result;
}

unint64_t sub_1DB4151BC()
{
  result = qword_1EE30CE88[0];
  if (!qword_1EE30CE88[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE30CE88);
  }

  return result;
}

unint64_t sub_1DB415210()
{
  result = qword_1ECC45788;
  if (!qword_1ECC45788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC45788);
  }

  return result;
}

unint64_t sub_1DB415264()
{
  result = qword_1EE30DCE0;
  if (!qword_1EE30DCE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE30DCE0);
  }

  return result;
}

uint64_t sub_1DB4152B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URLJetPackAssetRequest(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DB41531C(uint64_t a1)
{
  v2 = type metadata accessor for URLJetPackAssetRequest(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DB415378(uint64_t a1)
{
  result = sub_1DB415418(&qword_1EE30CE70, type metadata accessor for URLJetPackAssetRequest, &protocol conformance descriptor for URLJetPackAssetRequest);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1DB415418(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1DB415488(uint64_t a1)
{
  sub_1DB509CA0();
  if (v1 <= 0x3F)
  {
    sub_1DB377828();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_1DB415528()
{
  result = qword_1ECC45798;
  if (!qword_1ECC45798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC45798);
  }

  return result;
}

unint64_t sub_1DB415580()
{
  result = qword_1EE30CE78;
  if (!qword_1EE30CE78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE30CE78);
  }

  return result;
}

unint64_t sub_1DB4155D8()
{
  result = qword_1EE30CE80;
  if (!qword_1EE30CE80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE30CE80);
  }

  return result;
}

uint64_t sub_1DB41562C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7107189 && a2 == 0xE300000000000000;
  if (v3 || (sub_1DB50BA30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x50656372756F735FLL && a2 == 0xED00007963696C6FLL || (sub_1DB50BA30() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x44496567617375 && a2 == 0xE700000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1DB50BA30();

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

uint64_t SilverBulletJetPackAssetRequest.Environment.rawValue.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t SilverBulletJetPackAssetRequest.Environment.rawValue.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

void __swiftcall SilverBulletJetPackAssetRequest.init(environment:path:sourcePolicy:)(JetCore::SilverBulletJetPackAssetRequest *__return_ptr retstr, JetCore::SilverBulletJetPackAssetRequest::Environment environment, Swift::String path, JetCore::JetPackAssetRequestSourcePolicy sourcePolicy)
{
  v4 = *(environment.rawValue._countAndFlagsBits + 8);
  v5 = *path._object;
  retstr->environment.rawValue._countAndFlagsBits = *environment.rawValue._countAndFlagsBits;
  retstr->environment.rawValue._object = v4;
  retstr->path._countAndFlagsBits = environment.rawValue._object;
  retstr->path._object = path._countAndFlagsBits;
  retstr->_sourcePolicy = v5;
}

uint64_t SilverBulletJetPackAssetRequest._cacheKey.getter()
{
  v1 = v0[2];
  v2 = v0[3];
  v4 = *v0;

  MEMORY[0x1E1285C70](45, 0xE100000000000000);
  MEMORY[0x1E1285C70](v1, v2);
  return v4;
}

uint64_t SilverBulletJetPackAssetRequest.hash(into:)(uint64_t a1)
{
  sub_1DB50A740();
  sub_1DB50A740();
  sub_1DB50A740();
}

uint64_t SilverBulletJetPackAssetRequest.hashValue.getter()
{
  sub_1DB50BCF0();
  sub_1DB50A740();
  sub_1DB50A740();
  sub_1DB50A740();

  return sub_1DB50BD30();
}

uint64_t sub_1DB415A0C()
{
  v1 = v0[2];
  v2 = v0[3];
  v4 = *v0;

  MEMORY[0x1E1285C70](45, 0xE100000000000000);
  MEMORY[0x1E1285C70](v1, v2);
  return v4;
}

uint64_t sub_1DB415A7C(uint64_t a1)
{
  sub_1DB50A740();
  sub_1DB50A740();
  sub_1DB50A740();
}

uint64_t sub_1DB415B40(uint64_t a1)
{
  sub_1DB50BCF0();
  sub_1DB50A740();
  sub_1DB50A740();
  sub_1DB50A740();

  return sub_1DB50BD30();
}

uint64_t _s7JetCore012SilverBulletA16PackAssetRequestV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = *(a1 + 32);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (v8 || (sub_1DB50BA30()) && (v2 == v5 ? (v9 = v3 == v6) : (v9 = 0), v9 || (sub_1DB50BA30()))
  {
    v10 = 0x6E4F65746F6D6572;
    v11 = 0xEA0000000000796CLL;
    if (v4 != 1)
    {
      v10 = 0x6C6E4F6C61636F6CLL;
      v11 = 0xE900000000000079;
    }

    if (v4)
    {
      v12 = v10;
    }

    else
    {
      v12 = 0x647261646E617473;
    }

    if (v4)
    {
      v13 = v11;
    }

    else
    {
      v13 = 0xE800000000000000;
    }

    v14 = 0x6E4F65746F6D6572;
    v15 = 0xEA0000000000796CLL;
    if (v7 != 1)
    {
      v14 = 0x6C6E4F6C61636F6CLL;
      v15 = 0xE900000000000079;
    }

    if (v7)
    {
      v16 = v14;
    }

    else
    {
      v16 = 0x647261646E617473;
    }

    if (v7)
    {
      v17 = v15;
    }

    else
    {
      v17 = 0xE800000000000000;
    }

    if (v12 == v16 && v13 == v17)
    {
      v18 = 1;
    }

    else
    {
      v18 = sub_1DB50BA30();
    }
  }

  else
  {
    v18 = 0;
  }

  return v18 & 1;
}

unint64_t sub_1DB415D8C()
{
  result = qword_1ECC457A0;
  if (!qword_1ECC457A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC457A0);
  }

  return result;
}

unint64_t sub_1DB415DE0(uint64_t a1)
{
  result = sub_1DB415E08();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1DB415E08()
{
  result = qword_1ECC457A8;
  if (!qword_1ECC457A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC457A8);
  }

  return result;
}

unint64_t sub_1DB415E60()
{
  result = qword_1ECC457B0;
  if (!qword_1ECC457B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC457B0);
  }

  return result;
}

uint64_t sub_1DB415EB4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1DB415EFC(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_1DB415F60()
{
  if (qword_1EE30E8D0 != -1)
  {
    swift_once();
  }

  result = sub_1DB376278(0xD000000000000012, 0x80000001DB52DB50);
  byte_1EE30E6E0 = (result == 2) | result & 1;
  return result;
}

uint64_t Bag.FetchConfiguration.init(profile:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 2);
  *(a2 + 24) = *(a1 + 3);
  *(a2 + 32) = 0;
  *a2 = v3;
  *(a2 + 16) = v4;
  *(a2 + 40) = 0;
  if (qword_1EE30EDF0 != -1)
  {
    swift_once();
  }

  v5 = sub_1DB50A030();
  v6 = __swift_project_value_buffer(v5, qword_1EE312E00);
  Configuration = type metadata accessor for Bag.FetchConfiguration(0);
  v8 = *(*(v5 - 8) + 16);
  v9 = a2 + *(Configuration + 28);

  return v8(v9, v6, v5);
}

uint64_t Bag.FetchConfiguration.profile.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  v3 = v1[2];
  v4 = v1[3];
  *a1 = *v1;
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
}

__n128 Bag.FetchConfiguration.profile.setter(__n128 *a1)
{
  v5 = *a1;
  v2 = a1[1].n128_u64[0];
  v3 = a1[1].n128_u64[1];

  result = v5;
  *v1 = v5;
  v1[1].n128_u64[0] = v2;
  v1[1].n128_u64[1] = v3;
  return result;
}

uint64_t Bag.FetchConfiguration.withProfile(_:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = *a1;
  v4 = a1[1];
  v7 = a1[2];
  v6 = a1[3];
  sub_1DB419B38(v2, a2);

  *a2 = v5;
  a2[1] = v4;
  a2[2] = v7;
  a2[3] = v6;
  return result;
}

void *Bag.FetchConfiguration.process.getter()
{
  v1 = *(v0 + 32);
  v2 = v1;
  return v1;
}

void Bag.FetchConfiguration.withProcess(_:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1DB419B38(v2, a2);
  v5 = *(a2 + 32);
  v6 = a1;

  *(a2 + 32) = a1;
}

uint64_t Bag.FetchConfiguration.withWantsAutomaticUpdates(_:)@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  result = sub_1DB419B38(v2, a2);
  *(a2 + 40) = a1;
  return result;
}

uint64_t Bag.FetchConfiguration.bagServicePolicy.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Bag.FetchConfiguration(0) + 28);
  v4 = sub_1DB50A030();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Bag.FetchConfiguration.bagServicePolicy.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Bag.FetchConfiguration(0) + 28);
  v4 = sub_1DB50A030();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Bag.FetchConfiguration.withBagServicePolicy(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1DB419B38(v2, a2);
  v5 = *(type metadata accessor for Bag.FetchConfiguration(0) + 28);
  v6 = sub_1DB50A030();
  v7 = *(*(v6 - 8) + 24);

  return v7(a2 + v5, a1, v6);
}

uint64_t static Bag.fetchBag(using:)(uint64_t a1, uint64_t a2)
{
  v2[38] = a1;
  v2[39] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC457B8, &qword_1DB51BA18);
  v2[40] = v3;
  v2[41] = *(v3 - 8);
  v2[42] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DB4165BC, 0, 0);
}

uint64_t sub_1DB4165BC()
{
  if (qword_1EE30E6D0 != -1)
  {
    swift_once();
  }

  v1 = byte_1EE30E6E0;
  *(v0 + 217) = byte_1EE30E6E0;
  v2 = *(v0 + 312);
  if (v1 == 1)
  {
    v3 = sub_1DB419F44(v2);
  }

  else
  {
    v3 = sub_1DB41A510(v2);
  }

  *(v0 + 344) = v3;

  return MEMORY[0x1EEE6DFA0](sub_1DB416674, 0, 0);
}

uint64_t sub_1DB416674()
{
  v1 = v0 + 2;
  v0[2] = v0;
  v0[7] = v0 + 36;
  v0[3] = sub_1DB416740;
  v0[18] = swift_continuation_init();
  v2 = (v0 + 18);
  *(v2 + 72) = 1;
  sub_1DB309644(v2);
  sub_1DB30623C(v2, &qword_1ECC428D0, &qword_1DB50F350);

  return MEMORY[0x1EEE6DEC8](v1);
}

uint64_t sub_1DB416740(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  *(*v1 + 352) = v3;
  if (v3)
  {
    swift_willThrow();
    v4 = sub_1DB416AA8;
  }

  else
  {
    *(v2 + 360) = *(v2 + 288);
    v4 = sub_1DB416864;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1DB416864()
{
  if ((*(v0 + 217) & 1) != 0 || *(*(v0 + 312) + 40) == 1)
  {
    v1 = *(v0 + 360);
    v2 = *(v0 + 304);

    *v2 = v1;

    v3 = *(v0 + 8);

    return v3();
  }

  else
  {
    v9 = *(v0 + 360);
    v6 = *(v0 + 328);
    v5 = *(v0 + 336);
    v7 = *(v0 + 320);
    *(v0 + 80) = v0;
    *(v0 + 120) = v0 + 296;
    *(v0 + 88) = sub_1DB416B14;
    swift_continuation_init();
    *(v0 + 280) = v7;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 256));
    sub_1DB336FD4(0, &qword_1ECC46EC0, 0x1E698CB30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A00, &unk_1DB5102D0);
    sub_1DB50AAE0();
    (*(v6 + 32))(boxed_opaque_existential_0, v5, v7);
    *(v0 + 224) = MEMORY[0x1E69E9820];
    *(v0 + 232) = 1107296256;
    *(v0 + 240) = sub_1DB416D30;
    *(v0 + 248) = &block_descriptor_13;
    [v9 createSnapshotWithCompletion_];
    (*(v6 + 8))(boxed_opaque_existential_0, v7);

    return MEMORY[0x1EEE6DEC8](v0 + 80);
  }
}

uint64_t sub_1DB416AA8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DB416B14()
{
  v1 = *(*v0 + 112);
  *(*v0 + 368) = v1;
  if (v1)
  {
    v2 = sub_1DB416CA8;
  }

  else
  {
    v2 = sub_1DB416C24;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DB416C24()
{
  v1 = v0[38];

  swift_unknownObjectRelease();
  *v1 = v0[37];

  v2 = v0[1];

  return v2();
}

uint64_t sub_1DB416CA8(uint64_t a1)
{
  swift_willThrow();

  swift_unknownObjectRelease();

  v2 = *(v1 + 8);

  return v2();
}

void sub_1DB416D30(uint64_t a1, void *a2, void *a3)
{
  __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v5 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC457B8, &qword_1DB51BA18);
    sub_1DB50AAF0();
  }

  else if (a2)
  {
    v6 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC457B8, &qword_1DB51BA18);
    sub_1DB50AB00();
  }

  else
  {
    __break(1u);
  }
}

void sub_1DB416DE0(void (*a1)(id *), uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5[4];
  v7 = sub_1DB50A620();
  v8 = sub_1DB50A620();
  v9 = [objc_opt_self() bagForProfile:v7 profileVersion:v8 processInfo:v6];

  v10 = v9;
  a1(&v10);
}

uint64_t sub_1DB416EA0(uint64_t a1, uint64_t a2)
{
  v2[14] = a1;
  v2[15] = a2;
  sub_1DB509F90();
  v2[16] = swift_task_alloc();
  v3 = sub_1DB50A040();
  v2[17] = v3;
  v2[18] = *(v3 - 8);
  v2[19] = swift_task_alloc();
  v4 = sub_1DB50A070();
  v2[20] = v4;
  v2[21] = *(v4 - 8);
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DB417000, 0, 0);
}

uint64_t sub_1DB417000()
{
  v1 = *(v0[15] + 32);
  v0[25] = v1;
  if (v1)
  {
    v2 = v1;
    sub_1DB50A050();
  }

  else
  {
    sub_1DB50A060();
  }

  v3 = v0[24];
  v5 = v0[21];
  v4 = v0[22];
  v6 = v0[20];
  v7 = v0[15];
  (*(v5 + 32))(v3, v0[23], v6);
  v0[26] = *v7;
  v0[27] = v7[1];
  v0[28] = v7[2];
  v0[29] = v7[3];

  sub_1DB509F80();
  (*(v5 + 16))(v4, v3, v6);
  sub_1DB509FB0();
  v8 = v0[15];
  v9 = *(type metadata accessor for Bag.FetchConfiguration(0) + 28);
  v10 = swift_task_alloc();
  v0[30] = v10;
  *v10 = v0;
  v10[1] = sub_1DB417250;

  return MEMORY[0x1EEDEE0A8](v0 + 2, v8 + v9);
}

uint64_t sub_1DB417250()
{
  *(*v1 + 248) = v0;

  if (v0)
  {
    v2 = sub_1DB4175A4;
  }

  else
  {
    v2 = sub_1DB417364;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DB417364()
{
  super_class = v0[12].super_class;
  sub_1DB30BE90(&v0[1], &v0[3].super_class);
  v2 = v0[14].super_class;
  v3 = v0[13].super_class;
  if (super_class)
  {
    v4 = v0[12].super_class;

    v24 = v4;
    v21 = v4;
  }

  else
  {
    v5 = objc_opt_self();

    v21 = [v5 currentProcess];
    v24 = 0;
    v2 = v0[14].super_class;
    v3 = v0[13].super_class;
  }

  receiver = v0[14].receiver;
  v7 = v0[13].receiver;
  v8 = v0[12].receiver;
  v9 = v0[10].super_class;
  v10 = v0[9].receiver;
  v19 = v0[8].super_class;
  v20 = v0[9].super_class;
  v22 = v0[7].receiver;
  v23 = v0[10].receiver;
  v11 = type metadata accessor for AMSKitAMSBag();
  v12 = objc_allocWithZone(v11);
  *&v12[OBJC_IVAR____TtC7JetCore12AMSKitAMSBag____lazy_storage___amsBag] = 0;
  sub_1DB30BE90(&v0[3].super_class, &v12[OBJC_IVAR____TtC7JetCore12AMSKitAMSBag_amsKitBag]);
  v13 = &v12[OBJC_IVAR____TtC7JetCore12AMSKitAMSBag_profile];
  *v13 = v7;
  *(v13 + 1) = v3;
  v14 = &v12[OBJC_IVAR____TtC7JetCore12AMSKitAMSBag_profileVersion];
  *v14 = receiver;
  *(v14 + 1) = v2;
  *&v12[OBJC_IVAR____TtC7JetCore12AMSKitAMSBag_processInfo] = v21;
  v0[6].receiver = v12;
  v0[6].super_class = v11;
  v15 = v24;
  v16 = objc_msgSendSuper2(v0 + 6, sel_init);
  __swift_destroy_boxed_opaque_existential_0(&v0[3].super_class);
  __swift_destroy_boxed_opaque_existential_0(&v0[1].receiver);
  v10[1](v20, v19);
  (*(v9 + 1))(v8, v23);
  *v22 = v16;

  v17 = v0->super_class;

  return v17();
}

uint64_t sub_1DB4175A4()
{
  v1 = v0[24];
  v2 = v0[20];
  v3 = v0[21];
  (*(v0[18] + 8))(v0[19], v0[17]);
  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t static Bag.fetchBag(forProfile:)(__int128 *a1)
{
  v1 = *(a1 + 2);
  v2 = *(a1 + 3);
  v4 = *a1;
  v5 = v1;
  v6 = v2;
  return static Bag.fetchBag(forProfile:as:wantsAutomaticUpdates:)(&v4, 0, 0);
}

uint64_t static Bag.fetchBag(forProfile:as:)(__int128 *a1, void *a2)
{
  v2 = *(a1 + 2);
  v3 = *(a1 + 3);
  v5 = *a1;
  v6 = v2;
  v7 = v3;
  return static Bag.fetchBag(forProfile:as:wantsAutomaticUpdates:)(&v5, a2, 0);
}

uint64_t static Bag.fetchBag(forProfile:as:wantsAutomaticUpdates:)(uint64_t *a1, void *a2, int a3)
{
  v31 = a3;
  v32 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC46EB0, &qword_1DB50F750);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v33 = &v30 - v5;
  Configuration = type metadata accessor for Bag.FetchConfiguration(0);
  v30 = *(Configuration - 8);
  v7 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](Configuration);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v30 - v10;
  v12 = *a1;
  v13 = a1[1];
  v14 = a1[2];
  v15 = a1[3];
  if (qword_1EE30EDF0 != -1)
  {
    swift_once();
  }

  v16 = sub_1DB50A030();
  v17 = __swift_project_value_buffer(v16, qword_1EE312E00);
  *(v8 + 3) = v15;
  *(v8 + 4) = 0;
  *v8 = v12;
  *(v8 + 1) = v13;
  *(v8 + 2) = v14;
  v8[40] = 0;
  v18 = *(v16 - 8);
  (*(v18 + 16))(&v8[*(Configuration + 28)], v17, v16);
  v19 = v32;
  *(v8 + 4) = v32;
  sub_1DB419B38(v8, v11);
  v11[40] = v31 & 1;
  v20 = v19;

  sub_1DB41AB58(v8);
  (*(v18 + 24))(&v11[*(Configuration + 28)], v17, v16);
  sub_1DB419B38(v11, v8);
  v21 = (*(v30 + 80) + 16) & ~*(v30 + 80);
  v22 = swift_allocObject();
  sub_1DB41ABB4(v8, v22 + v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457C0, &unk_1DB51BA30);
  v23 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42B10, &qword_1DB50F660);
  v24 = swift_allocObject();
  *(v24 + 16) = 0;
  v25 = MEMORY[0x1E69E7CC0];
  *(v23 + 16) = v24;
  *(v23 + 24) = v25;
  *(v23 + 32) = 0;
  v26 = sub_1DB50ABA0();
  v27 = v33;
  (*(*(v26 - 8) + 56))(v33, 1, 1, v26);
  v28 = swift_allocObject();
  v28[2] = 0;
  v28[3] = 0;
  v28[4] = &unk_1DB51BA28;
  v28[5] = v22;
  v28[6] = v23;

  sub_1DB419B9C(0, 0, v27, &unk_1DB51BA48, v28);

  sub_1DB41AB58(v11);
  return v23;
}

uint64_t static Bag.fetchBag(forProfile:as:usingPolicy:)(uint64_t *a1, void *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC46EB0, &qword_1DB50F750);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v32 - v7;
  Configuration = type metadata accessor for Bag.FetchConfiguration(0);
  v10 = *(Configuration - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](Configuration);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v32 - v14;
  v17 = *a1;
  v16 = a1[1];
  v18 = a1[2];
  *(v12 + 3) = a1[3];
  *(v12 + 4) = 0;
  *v12 = v17;
  *(v12 + 1) = v16;
  *(v12 + 2) = v18;
  v12[40] = 0;
  v19 = qword_1EE30EDF0;

  if (v19 != -1)
  {
    swift_once();
  }

  v20 = sub_1DB50A030();
  v21 = __swift_project_value_buffer(v20, qword_1EE312E00);
  v22 = *(v20 - 8);
  (*(v22 + 16))(&v12[*(Configuration + 28)], v21, v20);
  *(v12 + 4) = a2;
  sub_1DB419B38(v12, v15);
  v15[40] = 0;
  v23 = a2;
  sub_1DB41AB58(v12);
  (*(v22 + 24))(&v15[*(Configuration + 28)], a3, v20);
  sub_1DB419B38(v15, v12);
  v24 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v25 = swift_allocObject();
  sub_1DB41ABB4(v12, v25 + v24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457C0, &unk_1DB51BA30);
  v26 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42B10, &qword_1DB50F660);
  v27 = swift_allocObject();
  *(v27 + 16) = 0;
  v28 = MEMORY[0x1E69E7CC0];
  *(v26 + 16) = v27;
  *(v26 + 24) = v28;
  *(v26 + 32) = 0;
  v29 = sub_1DB50ABA0();
  (*(*(v29 - 8) + 56))(v8, 1, 1, v29);
  v30 = swift_allocObject();
  v30[2] = 0;
  v30[3] = 0;
  v30[4] = &unk_1DB51BA50;
  v30[5] = v25;
  v30[6] = v26;

  sub_1DB419B9C(0, 0, v8, &unk_1DB51BA58, v30);

  sub_1DB41AB58(v15);
  return v26;
}

uint64_t static Bag.fetchBag(forProfile:as:wantsAutomaticUpdates:usingPolicy:)(uint64_t *a1, void *a2, char a3, uint64_t a4)
{
  v34 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC46EB0, &qword_1DB50F750);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v33 - v8;
  Configuration = type metadata accessor for Bag.FetchConfiguration(0);
  v11 = *(Configuration - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](Configuration);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v33 - v15;
  v18 = *a1;
  v17 = a1[1];
  v19 = a1[2];
  *(v13 + 3) = a1[3];
  *(v13 + 4) = 0;
  *v13 = v18;
  *(v13 + 1) = v17;
  *(v13 + 2) = v19;
  v13[40] = 0;
  v20 = qword_1EE30EDF0;

  if (v20 != -1)
  {
    swift_once();
  }

  v21 = sub_1DB50A030();
  v22 = __swift_project_value_buffer(v21, qword_1EE312E00);
  v23 = *(v21 - 8);
  (*(v23 + 16))(&v13[*(Configuration + 28)], v22, v21);
  *(v13 + 4) = a2;
  sub_1DB419B38(v13, v16);
  v16[40] = a3 & 1;
  v24 = a2;
  sub_1DB41AB58(v13);
  (*(v23 + 24))(&v16[*(Configuration + 28)], v34, v21);
  sub_1DB419B38(v16, v13);
  v25 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v26 = swift_allocObject();
  sub_1DB41ABB4(v13, v26 + v25);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457C0, &unk_1DB51BA30);
  v27 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42B10, &qword_1DB50F660);
  v28 = swift_allocObject();
  *(v28 + 16) = 0;
  v29 = MEMORY[0x1E69E7CC0];
  *(v27 + 16) = v28;
  *(v27 + 24) = v29;
  *(v27 + 32) = 0;
  v30 = sub_1DB50ABA0();
  (*(*(v30 - 8) + 56))(v9, 1, 1, v30);
  v31 = swift_allocObject();
  v31[2] = 0;
  v31[3] = 0;
  v31[4] = &unk_1DB51BA60;
  v31[5] = v26;
  v31[6] = v27;

  sub_1DB419B9C(0, 0, v9, &unk_1DB51BA68, v31);

  sub_1DB41AB58(v16);
  return v27;
}

uint64_t static Bag.fetchBag(forProfile:wantsAutomaticUpdates:)(__int128 *a1, int a2)
{
  v2 = *(a1 + 2);
  v3 = *(a1 + 3);
  v5 = *a1;
  v6 = v2;
  v7 = v3;
  return static Bag.fetchBag(forProfile:as:wantsAutomaticUpdates:)(&v5, 0, a2);
}

uint64_t sub_1DB4181F4(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DB306AF4;

  return static Bag.fetchBag(using:)(a1, a2);
}

uint64_t Bag.withLatestChanges.getter()
{
  v1 = *v0;
  v22[5] = &unk_1F5709C30;
  v2 = swift_dynamicCastObjCProtocolConditional();
  if (!v2)
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v7 = [v1 profile];
      v8 = sub_1DB50A650();
      v10 = v9;

      v11 = [v1 profileVersion];
      v12 = sub_1DB50A650();
      v14 = v13;

      v17 = v8;
      v18 = v10;
      v19 = v12;
      v20 = v14;
      v3 = static Bag.fetchBag(forProfile:as:wantsAutomaticUpdates:)(&v17, 0, 0);

      return v3;
    }

LABEL_6:
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457C0, &unk_1DB51BA30);
    v3 = swift_allocObject();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42B10, &qword_1DB50F660);
    v15 = swift_allocObject();
    *(v15 + 16) = 0;
    *(v3 + 16) = v15;
    *(v3 + 24) = v1;
    *(v3 + 32) = 1;
    swift_unknownObjectRetain();
    return v3;
  }

  if (![v2 replacingSnapshotIfNeeded])
  {
    goto LABEL_6;
  }

  swift_getObjectType();
  sub_1DB47CB24();
  v22[3] = &type metadata for SyncTaskScheduler;
  v22[4] = &protocol witness table for SyncTaskScheduler;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457C0, &unk_1DB51BA30);
  v3 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42B10, &qword_1DB50F660);
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  v5 = MEMORY[0x1E69E7CC0];
  *(v3 + 16) = v4;
  *(v3 + 24) = v5;
  *(v3 + 32) = 0;
  v6 = swift_allocObject();
  v6[2] = sub_1DB41B56C;
  v6[3] = 0;
  v6[4] = v3;
  v17 = sub_1DB41AF88;
  v18 = v6;
  v19 = sub_1DB41AF94;
  v20 = v3;
  sub_1DB30BE90(v22, v21);
  v21[40] = 0;
  swift_retain_n();

  sub_1DB309644(&v17);
  swift_unknownObjectRelease();

  sub_1DB30623C(&v17, &qword_1ECC428D0, &qword_1DB50F350);
  __swift_destroy_boxed_opaque_existential_0(v22);
  return v3;
}

uint64_t Bag.snapshot.getter()
{
  swift_getObjectType();
  sub_1DB47CB24();
  v7[3] = &type metadata for SyncTaskScheduler;
  v7[4] = &protocol witness table for SyncTaskScheduler;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457C0, &unk_1DB51BA30);
  v0 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42B10, &qword_1DB50F660);
  v1 = swift_allocObject();
  *(v1 + 16) = 0;
  v2 = MEMORY[0x1E69E7CC0];
  *(v0 + 16) = v1;
  *(v0 + 24) = v2;
  *(v0 + 32) = 0;
  v3 = swift_allocObject();
  v3[2] = sub_1DB41B56C;
  v3[3] = 0;
  v3[4] = v0;
  v5[0] = sub_1DB41B568;
  v5[1] = v3;
  v5[2] = sub_1DB41B584;
  v5[3] = v0;
  sub_1DB30BE90(v7, v6);
  v6[40] = 0;
  swift_retain_n();

  sub_1DB309644(v5);

  sub_1DB30623C(v5, &qword_1ECC428D0, &qword_1DB50F350);
  __swift_destroy_boxed_opaque_existential_0(v7);
  return v0;
}

uint64_t Bag.withLatestChanges()(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 176) = a1;
  *(v2 + 184) = v3;
  return MEMORY[0x1EEE6DFA0](sub_1DB4186E8, 0, 0);
}

uint64_t sub_1DB4186E8()
{
  v0[20] = v0[23];
  v0[24] = Bag.withLatestChanges.getter();

  return MEMORY[0x1EEE6DFA0](sub_1DB41875C, 0, 0);
}

uint64_t sub_1DB41875C()
{
  v1 = v0 + 2;
  v0[2] = v0;
  v0[7] = v0 + 21;
  v0[3] = sub_1DB418828;
  v0[10] = swift_continuation_init();
  v2 = (v0 + 10);
  *(v2 + 72) = 1;
  sub_1DB309848(v2);
  sub_1DB30623C(v2, &qword_1ECC428C0, &unk_1DB50F6F0);

  return MEMORY[0x1EEE6DEC8](v1);
}

uint64_t sub_1DB418828(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  *(*v1 + 200) = v3;
  if (v3)
  {
    swift_willThrow();
    v4 = sub_1DB307408;
  }

  else
  {
    v5 = *(v2 + 176);

    *v5 = *(v2 + 168);
    v4 = sub_1DB2FEB3C;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t Bag.snapshot()(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 176) = a1;
  *(v2 + 184) = v3;
  return MEMORY[0x1EEE6DFA0](sub_1DB41897C, 0, 0);
}

uint64_t sub_1DB41897C()
{
  v0[20] = v0[23];
  v0[24] = Bag.snapshot.getter();

  return MEMORY[0x1EEE6DFA0](sub_1DB4189F0, 0, 0);
}

uint64_t sub_1DB4189F0()
{
  v1 = v0 + 2;
  v0[2] = v0;
  v0[7] = v0 + 21;
  v0[3] = sub_1DB418ABC;
  v0[10] = swift_continuation_init();
  v2 = (v0 + 10);
  *(v2 + 72) = 1;
  sub_1DB309848(v2);
  sub_1DB30623C(v2, &qword_1ECC428C0, &unk_1DB50F6F0);

  return MEMORY[0x1EEE6DEC8](v1);
}

uint64_t sub_1DB418ABC(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  *(*v1 + 200) = v3;
  if (v3)
  {
    swift_willThrow();
    v4 = sub_1DB41B564;
  }

  else
  {
    v5 = *(v2 + 176);

    *v5 = *(v2 + 168);
    v4 = sub_1DB3F253C;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1DB418BEC(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 24) = a6;
  v9 = (a4 + *a4);
  v7 = swift_task_alloc();
  *(v6 + 32) = v7;
  *v7 = v6;
  v7[1] = sub_1DB418CE0;

  return v9(v6 + 16);
}

uint64_t sub_1DB418CE0()
{
  *(*v1 + 40) = v0;

  if (v0)
  {
    v2 = sub_1DB418E60;
  }

  else
  {
    v2 = sub_1DB418DF4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DB418DF4()
{
  sub_1DB3F8328(*(v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DB418E60()
{
  v1 = *(v0 + 40);
  sub_1DB3DCBD0(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1DB418ED0(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 32) = a6;
  v9 = (a4 + *a4);
  v7 = swift_task_alloc();
  *(v6 + 40) = v7;
  *v7 = v6;
  v7[1] = sub_1DB418FC4;

  return v9(v6 + 16);
}

uint64_t sub_1DB418FC4()
{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = sub_1DB41914C;
  }

  else
  {
    v2 = sub_1DB4190D8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DB4190D8()
{
  sub_1DB3F85C8(v0[2], v0[3]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1DB41914C()
{
  v1 = *(v0 + 48);
  sub_1DB3DCE84(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1DB4191BC(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 24) = a6;
  v9 = (a4 + *a4);
  v7 = swift_task_alloc();
  *(v6 + 32) = v7;
  *v7 = v6;
  v7[1] = sub_1DB4192B0;

  return v9(v6 + 16);
}

uint64_t sub_1DB4192B0()
{
  *(*v1 + 40) = v0;

  if (v0)
  {
    v2 = sub_1DB419440;
  }

  else
  {
    v2 = sub_1DB4193C4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DB4193C4()
{
  v1 = v0[2];
  v2 = v0[3];
  swift_getObjectType();
  sub_1DB4B5F74(v1, v2);
  swift_unknownObjectRelease();
  v3 = v0[1];

  return v3();
}

uint64_t sub_1DB419440()
{
  v1 = *(v0 + 40);
  sub_1DB3DDB60(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1DB4194B0(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 24) = a6;
  v9 = (a4 + *a4);
  v7 = swift_task_alloc();
  *(v6 + 32) = v7;
  *v7 = v6;
  v7[1] = sub_1DB4195A4;

  return v9(v6 + 16);
}

uint64_t sub_1DB4195A4()
{
  *(*v1 + 40) = v0;

  if (v0)
  {
    v2 = sub_1DB419720;
  }

  else
  {
    v2 = sub_1DB4196B8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DB4196B8()
{
  sub_1DB3F9794(*(v0 + 16));
  swift_unknownObjectRelease();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DB419720()
{
  v1 = *(v0 + 40);
  sub_1DB3DDDFC(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1DB419790(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 16) = a6;
  v9 = (a4 + *a4);
  v7 = swift_task_alloc();
  *(v6 + 24) = v7;
  *v7 = v6;
  v7[1] = sub_1DB419884;

  return v9(v6 + 40);
}

uint64_t sub_1DB419884()
{
  *(*v1 + 32) = v0;

  if (v0)
  {
    v2 = sub_1DB4199FC;
  }

  else
  {
    v2 = sub_1DB419998;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DB419998()
{
  sub_1DB3F8B6C(*(v0 + 40));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DB4199FC()
{
  v1 = *(v0 + 32);
  sub_1DB3DD13C(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1DB419A6C(void (*a1)(uint64_t (*)(), uint64_t, void (*)(void *), uint64_t), uint64_t a2, uint64_t a3)
{
  swift_retain_n();
  a1(sub_1DB41B51C, a3, sub_1DB41B560, a3);
}

uint64_t type metadata accessor for Bag.FetchConfiguration(uint64_t a1)
{
  result = qword_1EE30E6C0;
  if (!qword_1EE30E6C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}