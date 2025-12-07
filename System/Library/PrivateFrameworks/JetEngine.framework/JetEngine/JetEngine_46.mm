uint64_t JSValue.date.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4395E0, qword_1AB4DB790);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v15 - v6;
  if ([v2 isDate])
  {
    v8 = [v2 toDate];
    if (v8)
    {
      v9 = v8;
      sub_1AB45F984();

      v10 = sub_1AB45F9B4();
      (*(*(v10 - 8) + 56))(v7, 0, 1, v10);
    }

    else
    {
      v14 = sub_1AB45F9B4();
      (*(*(v14 - 8) + 56))(v7, 1, 1, v14);
    }

    return sub_1AB167244(v7, a1);
  }

  else
  {
    v11 = sub_1AB45F9B4();
    v12 = *(*(v11 - 8) + 56);

    return v12(a1, 1, 1, v11);
  }
}

void sub_1AB3FC6D8(void **a1@<X0>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = sub_1AB460514();
  v6 = [v4 valueForProperty_];

  if (v6)
  {
    *a3 = v6;
  }

  else
  {
    __break(1u);
  }
}

void sub_1AB3FC740(uint64_t *a1, void **a2, void *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = sub_1AB460514();
  [v4 setValue:v3 forProperty:v5];
}

void JSValue.subscript.modify(void *a1, uint64_t a2, uint64_t a3)
{
  a1[2] = a3;
  a1[3] = v3;
  a1[1] = a2;
  v5 = sub_1AB460514();
  v6 = [v3 valueForProperty_];

  if (v6)
  {
    *a1 = v6;
  }

  else
  {
    __break(1u);
  }
}

void sub_1AB3FC838(uint64_t a1, char a2)
{
  v7 = *a1;
  v4 = *(a1 + 24);
  if (a2)
  {
    v5 = v7;
    v6 = sub_1AB460514();
    [v4 setValue:v5 forProperty:v6];
  }

  else
  {
    v5 = sub_1AB460514();
    [v4 setValue:v7 forProperty:v5];
  }
}

id sub_1AB3FC908@<X0>(id *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  result = [*a1 valueAtIndex_];
  if (result)
  {
    *a3 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void JSValue.subscript.setter(void *a1, uint64_t a2)
{
  [v2 setValue:a1 atIndex:a2];
}

uint64_t (*JSValue.subscript.modify(uint64_t (**a1)(), uint64_t (*a2)()))()
{
  a1[1] = a2;
  a1[2] = v2;
  result = [v2 valueAtIndex_];
  if (result)
  {
    *a1 = result;
    return sub_1AB3FCA04;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1AB3FCA04(id *a1)
{
  v1 = *a1;
  [a1[2] setValue_atIndex_];
}

uint64_t JSValue.url.getter@<X0>(uint64_t a1@<X8>)
{
  if ([v1 isString] && (v3 = objc_msgSend(v1, sel_toString)) != 0)
  {
    v4 = v3;
    sub_1AB460544();

    sub_1AB45F714();
  }

  else
  {
    v6 = sub_1AB45F764();
    v7 = *(*(v6 - 8) + 56);

    return v7(a1, 1, 1, v6);
  }
}

uint64_t MetricsEventType.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1AB462204();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1Tm(v9, v9[3]);
    v5 = sub_1AB461DB4();
    v7 = v6;
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    *a2 = v5;
    a2[1] = v7;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t MetricsEventType.encode(to:)(void *a1)
{
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1AB462254();
  __swift_mutable_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_1AB461E34();
  return __swift_destroy_boxed_opaque_existential_1Tm(v2);
}

uint64_t MetricsEventType.rawValue.getter()
{
  v1 = *v0;

  return v1;
}

void static MetricsEventType.playActivity.getter(uint64_t a1@<X8>)
{
  strcpy(a1, "playActivity");
  *(a1 + 13) = 0;
  *(a1 + 14) = -5120;
}

void static MetricsEventType.seekActivity.getter(uint64_t a1@<X8>)
{
  strcpy(a1, "seekActivity");
  *(a1 + 13) = 0;
  *(a1 + 14) = -5120;
}

uint64_t JetPackAssetCacheStatus.hashValue.getter()
{
  v1 = *v0;
  sub_1AB4620A4();
  MEMORY[0x1AC59D3F0](v1);
  return sub_1AB462104();
}

uint64_t JetPackAssetStandardCachePolicy.status(for:dateProvider:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, char *a3@<X8>)
{
  v6 = sub_1AB45F9B4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v29 - v11;
  v13 = a1 + *(type metadata accessor for JetPackAsset(0) + 20);
  result = sub_1AB3FD26C(v13);
  if (result)
  {
    goto LABEL_2;
  }

  v30 = v7;
  result = type metadata accessor for JetPackAsset.Metadata(0);
  v16 = (v13 + *(result + 44));
  if ((v16[40] & 1) == 0)
  {
    sub_1AB45F904();
    v29 = a3;
    v17 = a2[3];
    v18 = a2[4];
    __swift_project_boxed_opaque_existential_1Tm(a2, v17);
    (*(v18 + 8))(v17, v18);
    sub_1AB05D094();
    v19 = sub_1AB4604B4();
    v20 = *(v30 + 8);
    v20(v9, v6);
    result = (v20)(v12, v6);
    a3 = v29;
    if (v19)
    {
      v15 = 3;
      goto LABEL_12;
    }
  }

  if (v16[8] & 1) == 0 && (sub_1AB45F904(), v29 = a3, v21 = a2[3], v22 = a2[4], __swift_project_boxed_opaque_existential_1Tm(a2, v21), (*(v22 + 8))(v21, v22), sub_1AB05D094(), v23 = sub_1AB4604B4(), v24 = *(v30 + 8), v24(v9, v6), result = (v24)(v12, v6), a3 = v29, (v23))
  {
LABEL_2:
    v15 = 2;
  }

  else
  {
    v15 = 0;
    if ((v16[24] & 1) == 0)
    {
      sub_1AB45F904();
      v25 = a2[3];
      v26 = a2[4];
      __swift_project_boxed_opaque_existential_1Tm(a2, v25);
      (*(v26 + 8))(v25, v26);
      sub_1AB05D094();
      v27 = sub_1AB4604B4();
      v28 = *(v30 + 8);
      v28(v9, v6);
      result = (v28)(v12, v6);
      if (v27)
      {
        v15 = 1;
      }
    }
  }

LABEL_12:
  *a3 = v15;
  return result;
}

uint64_t sub_1AB3FD26C(uint64_t a1)
{
  v2 = type metadata accessor for JetPackAsset.Metadata(0);
  v3 = *(a1 + v2[11] + 41);
  if (v3 >= 4)
  {
LABEL_11:

    v6 = 0;
    return v6 & 1;
  }

  v4 = sub_1AB461DA4();

  if (v4)
  {
    goto LABEL_4;
  }

  v5 = (a1 + v2[7]);
  if (v5[3])
  {
    goto LABEL_4;
  }

  v7 = *v5;
  v8 = v5[1];
  v9 = v5[2];
  if (qword_1ED4D0408 != -1)
  {
    swift_once();
  }

  if (v7 != xmmword_1ED4D3E90)
  {
    goto LABEL_26;
  }

  v10 = *(&xmmword_1ED4D3E90 + 1);
  v26 = qword_1ED4D3EA0;
  if (v3 <= 1 && v3)
  {
    goto LABEL_16;
  }

  v11 = sub_1AB461DA4();

  if (v11)
  {
    goto LABEL_17;
  }

  if (v3 == 2)
  {
    goto LABEL_16;
  }

  v12 = sub_1AB461DA4();

  if (v12)
  {
    goto LABEL_17;
  }

  if (v3 > 1)
  {
LABEL_16:

LABEL_17:
    if (v8 == v10)
    {
      goto LABEL_18;
    }

LABEL_26:
    v6 = 1;
    return v6 & 1;
  }

  v25 = sub_1AB461DA4();

  if ((v25 & 1) != 0 && v8 != v10)
  {
    goto LABEL_26;
  }

LABEL_18:
  if (v3 != 2)
  {
    v13 = sub_1AB461DA4();

    if (v13)
    {
      goto LABEL_25;
    }

    if (v3 <= 1)
    {
      v14 = sub_1AB461DA4();

      if ((v14 & 1) == 0)
      {
        goto LABEL_28;
      }

      goto LABEL_25;
    }
  }

LABEL_25:
  if (v9 != v26)
  {
    goto LABEL_26;
  }

LABEL_28:
  if (v3 <= 2)
  {
    v16 = sub_1AB461DA4();

    if ((v16 & 1) == 0)
    {
      goto LABEL_4;
    }
  }

  else
  {
  }

  v17 = (a1 + v2[8]);
  v18 = v17[1];
  if (v18)
  {
    v19 = *v17;
    v20 = JEGestaltGetBuildVersion();
    v21 = sub_1AB460544();
    v23 = v22;

    if (v19 != v21 || v18 != v23)
    {
      v24 = sub_1AB461DA4();

      v6 = v24 ^ 1;
      return v6 & 1;
    }

    goto LABEL_11;
  }

LABEL_4:
  v6 = 0;
  return v6 & 1;
}

unint64_t sub_1AB3FD744()
{
  result = qword_1EB43CF60;
  if (!qword_1EB43CF60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43CF60);
  }

  return result;
}

Swift::Bool __swiftcall jet_debug_tooling_os_variant_has_internal_content()()
{
  if (qword_1EB4359F8 != -1)
  {
    swift_once();
  }

  v0 = off_1EB435A00;
  os_unfair_lock_lock(off_1EB435A00 + 5);
  os_unfair_lock_opaque_low = LOBYTE(v0[4]._os_unfair_lock_opaque);
  os_unfair_lock_unlock(v0 + 5);
  if (os_unfair_lock_opaque_low == 2)
  {
    LOBYTE(os_unfair_lock_opaque_low) = os_variant_has_internal_content();
  }

  return os_unfair_lock_opaque_low & 1;
}

uint64_t static JetDebugTooling.isRunningFromTest.getter()
{
  if (qword_1EB4359C0 != -1)
  {
    swift_once();
  }

  return byte_1EB435998;
}

uint64_t sub_1AB3FD8B0(uint64_t a1, unint64_t a2)
{
  v45 = *MEMORY[0x1E69E9840];
  v39[0] = a1;
  v39[1] = a2;
  *&v42 = a1;
  *(&v42 + 1) = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43CF70, &qword_1AB4F9798);
  if (swift_dynamicCast())
  {
    sub_1AB0149B0(__src, &v43);
    __swift_project_boxed_opaque_existential_1Tm(&v43, v44);
    sub_1AB45F534();
    __src[0] = v42;
    __swift_destroy_boxed_opaque_existential_1Tm(&v43);
    goto LABEL_63;
  }

  v41 = 0;
  memset(__src, 0, sizeof(__src));
  sub_1AB3FF034(__src);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_67;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
    *&__src[0] = a1;
    *(&__src[0] + 1) = a2 & 0xFFFFFFFFFFFFFFLL;
    v4 = __src;
  }

  else if ((a1 & 0x1000000000000000) != 0)
  {
    v4 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v4 = sub_1AB461714();
  }

  sub_1AB3FE178(&v43, v4, v5);
  v6 = *(&v43 + 1);
  v7 = v43;
  if (*(&v43 + 1) >> 60 != 15)
  {
    __src[0] = v43;
    goto LABEL_63;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

LABEL_12:
  *&__src[0] = sub_1AB3FE874(v8);
  *(&__src[0] + 1) = v9;
  MEMORY[0x1EEE9AC00](*&__src[0]);
  v34[2] = v39;
  sub_1AB3FE240(sub_1AB3FF09C, v34);
  v14 = v10;
  v15 = v11;
  v16 = v12;
  v17 = *(&__src[0] + 1) >> 62;
  if ((*(&__src[0] + 1) >> 62) > 1)
  {
    if (v17 == 2)
    {
      v19 = *(*&__src[0] + 16);
      v18 = *(*&__src[0] + 24);
      v20 = __OFSUB__(v18, v19);
      v21 = v18 - v19;
      if (v20)
      {
        goto LABEL_70;
      }

      if (v13 != v21)
      {
        goto LABEL_23;
      }
    }

    else if (v13)
    {
      v22 = 0;
      goto LABEL_60;
    }
  }

  else if (v17)
  {
    if (__OFSUB__(DWORD1(__src[0]), __src[0]))
    {
      goto LABEL_71;
    }

    if (v13 != DWORD1(__src[0]) - LODWORD(__src[0]))
    {
LABEL_23:
      if (v17 == 2)
      {
        v22 = *(*&__src[0] + 24);
      }

      else if (v17 == 1)
      {
        v22 = *&__src[0] >> 32;
      }

      else
      {
        v22 = BYTE14(__src[0]);
      }

LABEL_60:
      if (v22 >= v13)
      {
        sub_1AB45F7F4();
LABEL_62:

        goto LABEL_63;
      }

      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
    }
  }

  else if (v13 != BYTE14(__src[0]))
  {
    goto LABEL_23;
  }

  v36 = v7;
  if ((v11 & 0x2000000000000000) != 0)
  {
    v23 = HIBYTE(v11) & 0xF;
  }

  else
  {
    v23 = v10 & 0xFFFFFFFFFFFFLL;
  }

  *(&v42 + 7) = 0;
  *&v42 = 0;
  if (4 * v23 == v12 >> 14)
  {
    goto LABEL_57;
  }

  v35 = v6;
  LOBYTE(v24) = 0;
  v25 = (v10 >> 59) & 1;
  if ((v11 & 0x1000000000000000) == 0)
  {
    LOBYTE(v25) = 1;
  }

  v26 = 4 << v25;
  v37 = (v11 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v38 = v11 & 0xFFFFFFFFFFFFFFLL;
  do
  {
    v27 = v16 & 0xC;
    v28 = v16;
    if (v27 == v26)
    {
      v28 = sub_1AB3FE0FC(v16, v14, v15);
    }

    v29 = v28 >> 16;
    if (v28 >> 16 >= v23)
    {
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      v8 = sub_1AB460734();
      v7 = 0;
      v6 = 0xF000000000000000;
      goto LABEL_12;
    }

    if ((v15 & 0x1000000000000000) != 0)
    {
      v31 = sub_1AB460764();
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else if ((v15 & 0x2000000000000000) != 0)
    {
      *&v43 = v14;
      *(&v43 + 1) = v38;
      v31 = *(&v43 + v29);
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v30 = v37;
      if ((v14 & 0x1000000000000000) == 0)
      {
        v30 = sub_1AB461714();
      }

      v31 = *(v30 + v29);
      if (v27 != v26)
      {
LABEL_46:
        if ((v15 & 0x1000000000000000) == 0)
        {
          goto LABEL_47;
        }

        goto LABEL_50;
      }
    }

    v16 = sub_1AB3FE0FC(v16, v14, v15);
    if ((v15 & 0x1000000000000000) == 0)
    {
LABEL_47:
      v16 = (v16 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_52;
    }

LABEL_50:
    if (v23 <= v16 >> 16)
    {
      goto LABEL_66;
    }

    v16 = sub_1AB460744();
LABEL_52:
    *(&v42 + v24) = v31;
    v24 = v24 + 1;
    if ((v24 >> 8))
    {
      goto LABEL_65;
    }

    if (v24 == 14)
    {
      *&v43 = v42;
      *(&v43 + 6) = *(&v42 + 6);
      sub_1AB45F804();
      LOBYTE(v24) = 0;
    }
  }

  while (4 * v23 != v16 >> 14);
  v6 = v35;
  if (v24)
  {
    *&v43 = v42;
    *(&v43 + 6) = *(&v42 + 6);
    sub_1AB45F804();
    sub_1AB03BD58(v36, v6);
    goto LABEL_62;
  }

LABEL_57:

  sub_1AB03BD58(v36, v6);
LABEL_63:
  v32 = __src[0];
  sub_1AB017200(*&__src[0], *(&__src[0] + 1));

  sub_1AB017254(v32, *(&v32 + 1));
  return v32;
}

id sub_1AB3FDDF4(id a1, void *a2, void *a3)
{
  v5 = a2;
  sub_1AB23EA88(v5, &v22);
  countAndFlagsBits = v22._countAndFlagsBits;
  if (LOBYTE(v22._countAndFlagsBits) == 2)
  {
    sub_1AB0C3EF0();
    swift_allocError();
    v8 = v7;
    v9 = v5;
    v10 = 0x6C416F7470797243;
    v11 = 0xEF6D687469726F67;
    v12 = v8;
LABEL_8:
    JSError.init(badValue:expected:)(v9, v10, v11, v12);
    swift_willThrow();
    return a1;
  }

  if (([a3 isString] & 1) == 0)
  {
    sub_1AB0C3EF0();
    swift_allocError();
    a1 = v21;
    v9 = a3;
    v10 = 0x676E69727473;
    v12 = a1;
    v11 = 0xE600000000000000;
    goto LABEL_8;
  }

  LOBYTE(v22._countAndFlagsBits) = countAndFlagsBits & 1;
  result = [a3 toString];
  if (result)
  {
    v14 = result;
    v15 = sub_1AB460544();
    v17 = v16;

    v18._countAndFlagsBits = v15;
    v18._object = v17;
    v19 = CryptoAlgorithm.makeDigest(fromContentsOf:)(v18);

    v22 = v19;

    v20 = sub_1AB461F94();
    a1 = [objc_opt_self() valueWithObject:v20 inContext:a1];
    result = swift_unknownObjectRelease();
    if (a1)
    {

      return a1;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_1AB3FE0FC(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_1AB460774();
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
    v5 = MEMORY[0x1AC59BA90](15, a1 >> 16);
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

uint64_t *sub_1AB3FE178@<X0>(uint64_t *__return_ptr a1@<X8>, _BYTE *__src@<X0>, unint64_t a3@<X1>)
{
  result = 0;
  v6 = 0xC000000000000000;
  if (__src && a3)
  {
    if (a3 <= 14)
    {
      result = sub_1AB0683DC(__src, &__src[a3]);
      v6 = v9 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      sub_1AB45F464();
      swift_allocObject();
      v8 = sub_1AB45F404();
      if (a3 >= 0x7FFFFFFF)
      {
        sub_1AB45F7E4();
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

void sub_1AB3FE240(void *(*a1)(uint64_t *__return_ptr, char *, char *), uint64_t a2)
{
  v4 = v2;
  v19[2] = *MEMORY[0x1E69E9840];
  v7 = *v2;
  v6 = v2[1];
  v8 = v6 >> 62;
  if ((v6 >> 62) > 1)
  {
    if (v8 != 2)
    {
      memset(v19, 0, 15);
      a1(&v17, v19, v19);
      return;
    }

    sub_1AB017254(v7, v6);
    v17 = v7;
    v18 = v6 & 0x3FFFFFFFFFFFFFFFLL;
    *v4 = xmmword_1AB4DA6A0;
    sub_1AB017254(0, 0xC000000000000000);
    sub_1AB45F774();
    sub_1AB3FE650(*(v17 + 16), *(v17 + 24), a1, v10);
    v11 = v18 | 0x8000000000000000;
    if (!v3)
    {
      *v4 = v17;
      v4[1] = v11;
      return;
    }

    *v4 = v17;
    goto LABEL_18;
  }

  if (!v8)
  {
    sub_1AB017254(v7, v6);
    v19[0] = v7;
    LOWORD(v19[1]) = v6;
    BYTE2(v19[1]) = BYTE2(v6);
    BYTE3(v19[1]) = BYTE3(v6);
    BYTE4(v19[1]) = BYTE4(v6);
    BYTE5(v19[1]) = BYTE5(v6);
    BYTE6(v19[1]) = BYTE6(v6);
    a1(&v17, v19, v19 + BYTE6(v6));
    v9 = LODWORD(v19[1]) | ((WORD2(v19[1]) | (BYTE6(v19[1]) << 16)) << 32);
    *v4 = v19[0];
    v4[1] = v9;
    return;
  }

  v12 = v6 & 0x3FFFFFFFFFFFFFFFLL;

  sub_1AB017254(v7, v6);
  *v4 = xmmword_1AB4DA6A0;
  sub_1AB017254(0, 0xC000000000000000);
  v13 = v7 >> 32;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    if (v13 < v7)
    {
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    if (sub_1AB45F414() && __OFSUB__(v7, sub_1AB45F444()))
    {
LABEL_22:
      __break(1u);
    }

    sub_1AB45F464();
    swift_allocObject();
    v14 = sub_1AB45F3F4();

    v12 = v14;
  }

  if (v13 < v7)
  {
    __break(1u);
    goto LABEL_21;
  }

  sub_1AB3FE650(v7, v7 >> 32, a1, v15);

  v11 = v12 | 0x4000000000000000;
  if (v3)
  {
    *v4 = v7;
LABEL_18:
    v4[1] = v11;
    return;
  }

  *v4 = v7;
  v4[1] = v11;
}

void *sub_1AB3FE5E4(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
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

char *sub_1AB3FE650(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *), __n128 a4)
{
  result = sub_1AB45F414();
  if (!result)
  {
    goto LABEL_12;
  }

  v9 = result;
  result = sub_1AB45F444();
  v10 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v11 = __OFSUB__(a2, a1);
  v12 = a2 - a1;
  if (v11)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v13 = sub_1AB45F434();
  if (v13 >= v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = v13;
  }

  result = a3(&v15, &v9[v10], &v9[v10 + v14]);
  if (!v4)
  {
    return v15;
  }

  return result;
}

uint64_t sub_1AB3FE704@<X0>(uint64_t result@<X0>, void *a4@<X8>)
{
  if (result)
  {
    result = sub_1AB4615E4();
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

unint64_t sub_1AB3FE754(unint64_t result)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result <= 0xFF)
  {
    return 0;
  }

  __break(1u);
  return result;
}

uint64_t sub_1AB3FE774(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_1AB45F464();
  swift_allocObject();
  result = sub_1AB45F404();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_1AB45F7E4();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_1AB3FE7F0(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_1AB45F464();
  swift_allocObject();
  result = sub_1AB45F404();
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

uint64_t sub_1AB3FE874(uint64_t result)
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
      sub_1AB45F464();
      swift_allocObject();
      sub_1AB45F424();
      if (v1 >= 0x7FFFFFFF)
      {
        sub_1AB45F7E4();
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

id sub_1AB3FE914(void *a1, void *a2)
{
  v4 = [objc_opt_self() currentContext];
  if (v4)
  {
    v5 = v4;
    v6 = sub_1AB3FDDF4(v4, a1, a2);

    return v6;
  }

  else
  {
    result = sub_1AB461884();
    __break(1u);
  }

  return result;
}

id sub_1AB3FEA80(void *a1)
{
  v2 = [objc_opt_self() currentContext];
  if (v2)
  {
    v3 = v2;
    if ([a1 isString] && (v4 = objc_msgSend(a1, sel_toString)) != 0)
    {
      v5 = v4;
      v6 = sub_1AB460544();
      v8 = v7;

      v9 = sub_1AB3FD8B0(v6, v8);
      v11 = v10;
      sub_1AB45F844();
      sub_1AB017254(v9, v11);
      v12 = sub_1AB461F94();
      v13 = [objc_opt_self() valueWithObject:v12 inContext:v3];
      swift_unknownObjectRelease();
      if (v13)
      {

        return v13;
      }
    }

    else
    {
      sub_1AB0C3EF0();
      v14 = swift_allocError();
      JSError.init(badValue:expected:)(a1, 0x676E69727473, 0xE600000000000000, v15);
      swift_willThrow();
      v16 = v14;
      v17 = [v3 exceptionHandler];
      if (v17)
      {
        v18 = v17;
        v19 = sub_1AB23E418(v14, v3);
        (v18)[2](v18, v3, v19);
        _Block_release(v18);
      }

      v20 = [objc_opt_self() valueWithUndefinedInContext_];
      if (v20)
      {
        v13 = v20;

        return v13;
      }

      __break(1u);
    }

    __break(1u);
  }

  result = sub_1AB461884();
  __break(1u);
  return result;
}

id sub_1AB3FED00(void *a1)
{
  v2 = sub_1AB4605C4();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = [objc_opt_self() currentContext];
  if (!v3)
  {
    goto LABEL_20;
  }

  v4 = v3;
  if ([a1 isString] && (v5 = objc_msgSend(a1, sel_toString)) != 0)
  {
    v6 = v5;
    sub_1AB460544();

    v7 = sub_1AB45F7D4();
    if (v8 >> 60 != 15)
    {
      v9 = v7;
      v10 = v8;
      sub_1AB460594();
      sub_1AB460564();
      if (v11)
      {

        v12 = sub_1AB461F94();
        v13 = [objc_opt_self() valueWithObject:v12 inContext:v4];
        swift_unknownObjectRelease();
        if (v13)
        {

          sub_1AB03BD58(v9, v10);
LABEL_15:

          return v13;
        }

        goto LABEL_19;
      }

      sub_1AB03BD58(v9, v10);
    }

    v21 = [objc_opt_self() valueWithNullInContext_];
    if (v21)
    {
      v13 = v21;
      goto LABEL_15;
    }
  }

  else
  {
    sub_1AB0C3EF0();
    v14 = swift_allocError();
    JSError.init(badValue:expected:)(a1, 0x676E69727473, 0xE600000000000000, v15);
    swift_willThrow();
    v16 = v14;
    v17 = [v4 exceptionHandler];
    if (v17)
    {
      v18 = v17;
      v19 = sub_1AB23E418(v14, v4);
      (v18)[2](v18, v4, v19);
      _Block_release(v18);
    }

    v20 = [objc_opt_self() valueWithUndefinedInContext_];
    if (v20)
    {
      v13 = v20;

      return v13;
    }

    __break(1u);
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  result = sub_1AB461884();
  __break(1u);
  return result;
}

uint64_t sub_1AB3FF034(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43CF78, &qword_1AB4F97A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_1AB3FF09C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(v3 + 16);
  v7 = *v5;
  v6 = v5[1];
  v13[0] = v7;
  v13[1] = v6;
  v12[2] = v13;
  result = sub_1AB3FE5E4(sub_1AB3FF104, v12, a1, a2);
  *a3 = result;
  a3[1] = v9;
  a3[2] = v10;
  a3[3] = v11;
  return result;
}

void *sub_1AB3FF124@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_1AB0B9254(a1, v6);
  v7 = a2;

  return Models.AlertAction.Button.init(deserializing:using:)(v6, &v7, a3);
}

__n128 Models.AlertAction.Button.init(title:role:action:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *a6 = a1;
  *(a6 + 8) = a2;
  result = *a5;
  v7 = *(a5 + 16);
  *(a6 + 32) = *a5;
  *(a6 + 48) = v7;
  *(a6 + 64) = *(a5 + 32);
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  return result;
}

__n128 Models.AlertAction.Button.init(title:action:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = a1;
  *(a4 + 8) = a2;
  result = *a3;
  v5 = *(a3 + 16);
  *(a4 + 32) = *a3;
  *(a4 + 48) = v5;
  *(a4 + 64) = *(a3 + 32);
  *(a4 + 16) = 0;
  *(a4 + 24) = 0;
  return result;
}

uint64_t Models.AlertAction.Button.init(deserializing:using:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a2;
  JSONObject.subscript.getter(0x656C746974, 0xE500000000000000, v22);
  sub_1AB014A58(v22, v19, &qword_1EB436BA0, &qword_1AB4D4F40);
  v6 = v20;
  if (!v20)
  {

    sub_1AB066D84(v22);
    sub_1AB014AC0(v19, &qword_1EB436BA0, &qword_1AB4D4F40);
LABEL_9:
    sub_1AB163664();
    swift_allocError();
    *v18 = xmmword_1AB4F97B0;
    *(v18 + 16) = 0x20000001F20189D0uLL;
    *(v18 + 24) = 0;
    swift_willThrow();
    return sub_1AB066D84(a1);
  }

  v7 = v21;
  __swift_project_boxed_opaque_existential_1Tm(v19, v20);
  v8 = (*(v7 + 24))(v6, v7);
  v10 = v9;
  sub_1AB066D84(v22);
  __swift_destroy_boxed_opaque_existential_1Tm(v19);
  if (!v10)
  {

    goto LABEL_9;
  }

  *a3 = v8;
  a3[1] = v10;
  JSONObject.subscript.getter(0x6E6F69746361, 0xE600000000000000, v22);
  v19[0] = v5;
  static AnyActionTypes.tryToMakeInstance(byDeserializing:using:)(v22, v19, (a3 + 4));
  sub_1AB066D84(v22);

  JSONObject.subscript.getter(1701605234, 0xE400000000000000, v22);
  sub_1AB014A58(v22, v19, &qword_1EB436BA0, &qword_1AB4D4F40);
  v11 = v20;
  if (v20)
  {
    v12 = v21;
    __swift_project_boxed_opaque_existential_1Tm(v19, v20);
    v13 = (*(v12 + 24))(v11, v12);
    v15 = v14;
    sub_1AB066D84(a1);
    sub_1AB066D84(v22);
    result = __swift_destroy_boxed_opaque_existential_1Tm(v19);
    if (v15)
    {
      v17 = v13;
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    sub_1AB066D84(a1);
    sub_1AB066D84(v22);
    result = sub_1AB014AC0(v19, &qword_1EB436BA0, &qword_1AB4D4F40);
    v17 = 0;
    v15 = 0;
  }

  a3[2] = v17;
  a3[3] = v15;
  return result;
}

uint64_t Models.AlertAction.Button.title.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t Models.AlertAction.Button.role.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t Models.AlertAction.Severity.init(rawValue:)@<X0>(char *a3@<X8>)
{
  v4 = sub_1AB4619B4();

  if (v4 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (!v4)
  {
    v6 = 0;
  }

  *a3 = v6;
  return result;
}

uint64_t Models.AlertAction.Severity.rawValue.getter()
{
  if (*v0)
  {
    return 0x6C61636974697263;
  }

  else
  {
    return 0x74616D726F666E69;
  }
}

uint64_t sub_1AB3FF5E8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6C61636974697263;
  }

  else
  {
    v3 = 0x74616D726F666E69;
  }

  if (v2)
  {
    v4 = 0xED00006C616E6F69;
  }

  else
  {
    v4 = 0xE800000000000000;
  }

  if (*a2)
  {
    v5 = 0x6C61636974697263;
  }

  else
  {
    v5 = 0x74616D726F666E69;
  }

  if (*a2)
  {
    v6 = 0xE800000000000000;
  }

  else
  {
    v6 = 0xED00006C616E6F69;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1AB461DA4();
  }

  return v8 & 1;
}

uint64_t sub_1AB3FF69C()
{
  sub_1AB4620A4();
  sub_1AB460684();

  return sub_1AB462104();
}

uint64_t sub_1AB3FF72C(uint64_t a1)
{
  sub_1AB460684();
}

uint64_t sub_1AB3FF7A8(uint64_t a1)
{
  sub_1AB4620A4();
  sub_1AB460684();

  return sub_1AB462104();
}

uint64_t sub_1AB3FF834@<X0>(char *a2@<X8>)
{
  v3 = sub_1AB4619B4();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_1AB3FF894(uint64_t *a1@<X8>)
{
  v2 = 0x74616D726F666E69;
  if (*v1)
  {
    v2 = 0x6C61636974697263;
  }

  v3 = 0xED00006C616E6F69;
  if (*v1)
  {
    v3 = 0xE800000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

__n128 Models.AlertAction.init(actionMetrics:severity:icon:title:message:buttons:)@<Q0>(_OWORD *a1@<X0>, _BYTE *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  *a9 = *a1;
  v9 = *(a3 + 48);
  *(a9 + 56) = *(a3 + 32);
  *(a9 + 72) = v9;
  *(a9 + 88) = *(a3 + 64);
  result = *a3;
  v11 = *(a3 + 16);
  *(a9 + 24) = *a3;
  *(a9 + 16) = *a2;
  v12 = *(a3 + 80);
  *(a9 + 40) = v11;
  *(a9 + 104) = v12;
  *(a9 + 112) = a4;
  *(a9 + 120) = a5;
  *(a9 + 128) = a6;
  *(a9 + 136) = a7;
  *(a9 + 144) = a8;
  return result;
}

uint64_t Models.AlertAction.init(deserializing:using:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *a2;
  JSONObject.subscript.getter(0x736E6F74747562, 0xE700000000000000, v45);
  sub_1AB014A58(v45, v47, &qword_1EB436BA0, &qword_1AB4D4F40);
  v7 = v48;
  if (!v48)
  {
    sub_1AB066D84(v45);

    sub_1AB014AC0(v47, &qword_1EB436BA0, &qword_1AB4D4F40);
    v50 = 0u;
    v51 = 0u;
    v52 = 0;
LABEL_13:
    sub_1AB014AC0(&v50, &qword_1EB437EF8, &qword_1AB4DBA50);
    sub_1AB163664();
    swift_allocError();
    *v17 = xmmword_1AB4F97C0;
    *(v17 + 16) = 0x20000001F20188C0uLL;
    *(v17 + 24) = 0;
    swift_willThrow();
    return sub_1AB066D84(a1);
  }

  v8 = v49;
  __swift_project_boxed_opaque_existential_1Tm(v47, v48);
  (*(v8 + 152))(&v50, v7, v8);
  sub_1AB066D84(v45);
  __swift_destroy_boxed_opaque_existential_1Tm(v47);
  if (!*(&v51 + 1))
  {

    goto LABEL_13;
  }

  v53[0] = v50;
  v53[1] = v51;
  v54 = v52;
  JSONObject.subscript.getter(0x654D6E6F69746361, 0xED00007363697274, v45);

  JSONObject.subscript.getter(1635017060, 0xE400000000000000, &v50);

  v9 = sub_1AB37F7F4(&v50, v6);
  JSONObject.subscript.getter(0x6D6F74737563, 0xE600000000000000, &v50);
  v42[0] = v6;
  ScalarDictionary.init(tryDeserializing:using:)(&v50, v42, v47);
  sub_1AB066D84(v45);
  v55 = v47[0];
  JSONObject.subscript.getter(0x7974697265766573, 0xE800000000000000, v45);
  sub_1AB014A58(v45, &v50, &qword_1EB436BA0, &qword_1AB4D4F40);
  v10 = *(&v51 + 1);
  if (*(&v51 + 1))
  {
    v11 = v52;
    __swift_project_boxed_opaque_existential_1Tm(&v50, *(&v51 + 1));
    (*(v11 + 24))(v10, v11);
    v13 = v12;
    __swift_destroy_boxed_opaque_existential_1Tm(&v50);
    if (v13)
    {
      v14 = sub_1AB4619B4();

      sub_1AB066D84(v45);
      if (v14 == 1)
      {
        v15 = 1;
      }

      else
      {
        v15 = 2;
      }

      if (v14)
      {
        v16 = v15;
      }

      else
      {
        v16 = 0;
      }

      goto LABEL_17;
    }

    sub_1AB066D84(v45);
  }

  else
  {
    sub_1AB066D84(v45);
    sub_1AB014AC0(&v50, &qword_1EB436BA0, &qword_1AB4D4F40);
  }

  v16 = 2;
LABEL_17:
  JSONObject.subscript.getter(1852793705, 0xE400000000000000, &v50);
  v47[0] = v6;

  MediaArtwork.init(deserializing:using:)(&v50, v47, v45);
  if (v3)
  {

    sub_1AB066D84(a1);
    return sub_1AB06A37C(v53);
  }

  else
  {
    v38 = v16;
    JSONObject.subscript.getter(0x656C746974, 0xE500000000000000, &v50);
    sub_1AB014A58(&v50, v47, &qword_1EB436BA0, &qword_1AB4D4F40);
    v19 = v48;
    if (v48)
    {
      v20 = v49;
      __swift_project_boxed_opaque_existential_1Tm(v47, v48);
      v37 = (*(v20 + 24))(v19, v20);
      v40 = v21;
      sub_1AB066D84(&v50);
      __swift_destroy_boxed_opaque_existential_1Tm(v47);
    }

    else
    {
      sub_1AB066D84(&v50);
      sub_1AB014AC0(v47, &qword_1EB436BA0, &qword_1AB4D4F40);
      v37 = 0;
      v40 = 0;
    }

    JSONObject.subscript.getter(0x6567617373656DLL, 0xE700000000000000, v47);
    sub_1AB014A58(v47, v42, &qword_1EB436BA0, &qword_1AB4D4F40);
    v22 = v43;
    v41 = v9;
    if (v43)
    {
      v23 = v44;
      __swift_project_boxed_opaque_existential_1Tm(v42, v43);
      v36 = (*(v23 + 24))(v22, v23);
      v39 = v24;
      sub_1AB066D84(v47);
      __swift_destroy_boxed_opaque_existential_1Tm(v42);
    }

    else
    {
      sub_1AB066D84(v47);
      sub_1AB014AC0(v42, &qword_1EB436BA0, &qword_1AB4D4F40);
      v36 = 0;
      v39 = 0;
    }

    v25 = sub_1AB06A28C(v53, v42);
    MEMORY[0x1EEE9AC00](v25);
    v35[2] = v6;
    v26 = v43;
    v27 = v44;
    __swift_project_boxed_opaque_existential_1Tm(v42, v43);
    v28 = (*(v27 + 48))(sub_1AB400058, v35, &type metadata for Models.AlertAction.Button, v26, v27);

    sub_1AB066D84(a1);
    sub_1AB06A37C(v53);
    result = sub_1AB06A37C(v42);
    v29 = v45[3];
    *(a3 + 56) = v45[2];
    *(a3 + 72) = v29;
    *(a3 + 88) = v45[4];
    v30 = v45[1];
    *(a3 + 24) = v45[0];
    v31 = v55;
    *a3 = v41;
    *(a3 + 8) = v31;
    *(a3 + 16) = v38;
    v32 = v46;
    *(a3 + 40) = v30;
    v33 = v37;
    *(a3 + 104) = v32;
    *(a3 + 112) = v33;
    v34 = v36;
    *(a3 + 120) = v40;
    *(a3 + 128) = v34;
    *(a3 + 136) = v39;
    *(a3 + 144) = v28;
  }

  return result;
}

uint64_t Models.AlertAction.actionMetrics.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

double Models.AlertAction.icon.getter@<D0>(uint64_t a1@<X8>)
{
  sub_1AB014A58(v1 + 24, v6, &qword_1EB43BCF0, &qword_1AB4F1470);
  v3 = v6[3];
  *(a1 + 32) = v6[2];
  *(a1 + 48) = v3;
  *(a1 + 64) = v6[4];
  *(a1 + 80) = v7;
  result = *v6;
  v5 = v6[1];
  *a1 = v6[0];
  *(a1 + 16) = v5;
  return result;
}

uint64_t Models.AlertAction.title.getter()
{
  v1 = *(v0 + 112);

  return v1;
}

uint64_t Models.AlertAction.message.getter()
{
  v1 = *(v0 + 128);

  return v1;
}

uint64_t sub_1AB4001E4()
{
  v1 = *v0;
  v2 = 0x654D6E6F69746361;
  v3 = 0x656C746974;
  v4 = 0x6567617373656DLL;
  if (v1 != 4)
  {
    v4 = 0x736E6F74747562;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x7974697265766573;
  if (v1 != 1)
  {
    v5 = 1852793705;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1AB4002A0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1AB4020AC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1AB4002C8(uint64_t a1)
{
  v2 = sub_1AB4010DC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AB400304(uint64_t a1)
{
  v2 = sub_1AB4010DC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AB400408()
{
  v1 = 0x6E6F69746361;
  if (*v0 != 1)
  {
    v1 = 1701605234;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x656C746974;
  }
}

uint64_t sub_1AB400454@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1AB4022AC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1AB40047C(uint64_t a1)
{
  v2 = sub_1AB400808();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AB4004B8(uint64_t a1)
{
  v2 = sub_1AB400808();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Models.AlertAction.Button.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43CF88, &qword_1AB4F97D0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v19 - v6;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  v8 = sub_1AB400808();
  sub_1AB462224();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v19[2] = v8;
  LOBYTE(v21[0]) = 0;
  v23[0] = sub_1AB461A84();
  v23[1] = v10;
  v19[1] = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43CF98, &qword_1AB4F97D8);
  v27 = 2;
  sub_1AB40085C();
  sub_1AB461A54();
  v11 = *(&v21[0] + 1);
  v12 = *&v21[0];
  if (*(&v21[0] + 1) == 1)
  {
    v12 = 0;
    v11 = 0;
  }

  v23[2] = v12;
  v23[3] = v11;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  v13 = sub_1AB462214();
  v14 = sub_1AB3098DC(0xD000000000000023, 0x80000001AB500830, v13);
  v16 = v15;

  if (v14)
  {
    v17 = v14;
  }

  else
  {
    v17 = &type metadata for EmptyActionKindTable;
  }

  if (v14)
  {
    v18 = v16;
  }

  else
  {
    v18 = &off_1F200AB90;
  }

  v27 = 1;
  decodeActionModel<A, B>(using:container:forKey:)(v17, v18, v21);
  (*(v5 + 8))(v7, v4);
  v24 = v21[0];
  v25 = v21[1];
  v26 = v22;
  sub_1AB4009B8(v23, v20);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return sub_1AB4009F0(v23);
}

unint64_t sub_1AB400808()
{
  result = qword_1EB43CF90;
  if (!qword_1EB43CF90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43CF90);
  }

  return result;
}

unint64_t sub_1AB40085C()
{
  result = qword_1EB43CFA0;
  if (!qword_1EB43CFA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB43CF98, &qword_1AB4F97D8);
    sub_1AB4008E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43CFA0);
  }

  return result;
}

unint64_t sub_1AB4008E0()
{
  result = qword_1EB43CFA8;
  if (!qword_1EB43CFA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB43CFB0, &qword_1AB4F97E0);
    sub_1AB400964();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43CFA8);
  }

  return result;
}

unint64_t sub_1AB400964()
{
  result = qword_1EB43CFB8;
  if (!qword_1EB43CFB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43CFB8);
  }

  return result;
}

uint64_t Models.AlertAction.Button.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43CFC0, &qword_1AB4F97E8);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v16 - v5;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  v7 = sub_1AB400808();
  sub_1AB462274();
  LOBYTE(v18) = 0;
  v8 = v17;
  sub_1AB461BB4();
  if (v8)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v16 = v7;
  v17 = v4;
  v18 = *(v1 + 16);
  v19 = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43CFB0, &qword_1AB4F97E0);
  sub_1AB400CA0();
  sub_1AB461BF4();
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  v10 = sub_1AB462264();
  v11 = sub_1AB3098DC(0xD000000000000023, 0x80000001AB500830, v10);
  v13 = v12;

  if (v11)
  {
    v14 = v11;
  }

  else
  {
    v14 = &type metadata for EmptyActionKindTable;
  }

  if (v11)
  {
    v15 = v13;
  }

  else
  {
    v15 = &off_1F200AB90;
  }

  LOBYTE(v18) = 1;
  encodeActionModel<A, B>(_:using:container:forKey:)(v1 + 32, v14, v6, &v18, v14, &_s11AlertActionV6ButtonV10CodingKeysON, v15, v16);
  return (*(v17 + 8))(v6, v3);
}

unint64_t sub_1AB400CA0()
{
  result = qword_1EB43CFC8;
  if (!qword_1EB43CFC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB43CFB0, &qword_1AB4F97E0);
    sub_1AB400D24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43CFC8);
  }

  return result;
}

unint64_t sub_1AB400D24()
{
  result = qword_1EB43CFD0;
  if (!qword_1EB43CFD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43CFD0);
  }

  return result;
}

uint64_t Models.AlertAction.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43CFD8, &qword_1AB4F97F0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1AB4010DC();
  sub_1AB462274();
  v9 = *(v3 + 8);
  *&v13 = *v3;
  *(&v13 + 1) = v9;
  v12 = 0;
  sub_1AB24CA70();

  sub_1AB461BF4();
  if (v2)
  {
  }

  else
  {

    LOBYTE(v13) = *(v3 + 16);
    v12 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43CFE8, &qword_1AB4F97F8);
    sub_1AB401130();
    sub_1AB461BF4();
    LOBYTE(v13) = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43BCF0, &qword_1AB4F1470);
    sub_1AB4019D4(&qword_1EB43D010, &protocol witness table for MediaArtwork, &protocol conformance descriptor for <A> DiscardOnError<A>);
    sub_1AB461BF4();
    v13 = *(v3 + 112);
    v12 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43B938, &unk_1AB4EF090);
    sub_1AB37DC30();
    sub_1AB461BF4();
    v13 = *(v3 + 128);
    v12 = 4;
    sub_1AB461BF4();
    *&v13 = *(v3 + 144);
    v12 = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43D018, &qword_1AB4F9808);
    sub_1AB40128C();
    sub_1AB461BF4();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_1AB4010DC()
{
  result = qword_1EB43CFE0;
  if (!qword_1EB43CFE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43CFE0);
  }

  return result;
}

unint64_t sub_1AB401130()
{
  result = qword_1EB43CFF0;
  if (!qword_1EB43CFF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB43CFE8, &qword_1AB4F97F8);
    sub_1AB4011B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43CFF0);
  }

  return result;
}

unint64_t sub_1AB4011B4()
{
  result = qword_1EB43CFF8;
  if (!qword_1EB43CFF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB43D000, &qword_1AB4F9800);
    sub_1AB401238();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43CFF8);
  }

  return result;
}

unint64_t sub_1AB401238()
{
  result = qword_1EB43D008;
  if (!qword_1EB43D008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43D008);
  }

  return result;
}

unint64_t sub_1AB40128C()
{
  result = qword_1EB43D020;
  if (!qword_1EB43D020)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB43D018, &qword_1AB4F9808);
    sub_1AB401310();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43D020);
  }

  return result;
}

unint64_t sub_1AB401310()
{
  result = qword_1EB43D028;
  if (!qword_1EB43D028)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB43D030, &qword_1AB4F9810);
    sub_1AB401394();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43D028);
  }

  return result;
}

unint64_t sub_1AB401394()
{
  result = qword_1EB43D038;
  if (!qword_1EB43D038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43D038);
  }

  return result;
}

uint64_t Models.AlertAction.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43D040, &qword_1AB4F9818);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - v7;
  v17 = 2;
  v9 = a1[3];
  v27 = a1;
  __swift_project_boxed_opaque_existential_1Tm(a1, v9);
  sub_1AB4010DC();
  sub_1AB462224();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(v27);
  }

  v12 = a2;
  v15 = 0;
  sub_1AB24CE74();
  sub_1AB461AC4();
  v16 = v13[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43CFE8, &qword_1AB4F97F8);
  v15 = 1;
  sub_1AB401878();
  sub_1AB461AC4();
  v17 = v13[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43BCF0, &qword_1AB4F1470);
  v15 = 2;
  sub_1AB4019D4(&qword_1EB43BCF8, &protocol witness table for MediaArtwork, &protocol conformance descriptor for <A> DiscardOnError<A>);
  sub_1AB461AC4();
  v20 = v13[2];
  v21 = v13[3];
  v22 = v13[4];
  v23 = v14;
  v18 = v13[0];
  v19 = v13[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43B938, &unk_1AB4EF090);
  v15 = 3;
  sub_1AB37DF54();
  sub_1AB461AC4();
  v24 = v13[0];
  v15 = 4;
  sub_1AB461AC4();
  v25 = v13[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43D018, &qword_1AB4F9808);
  v15 = 5;
  sub_1AB401A40();
  sub_1AB461AC4();
  (*(v6 + 8))(v8, v5);
  v26 = *&v13[0];
  sub_1AB401B9C(&v16, v12);
  __swift_destroy_boxed_opaque_existential_1Tm(v27);
  return sub_1AB401BD4(&v16);
}

unint64_t sub_1AB401878()
{
  result = qword_1EB43D048;
  if (!qword_1EB43D048)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB43CFE8, &qword_1AB4F97F8);
    sub_1AB4018FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43D048);
  }

  return result;
}

unint64_t sub_1AB4018FC()
{
  result = qword_1EB43D050;
  if (!qword_1EB43D050)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB43D000, &qword_1AB4F9800);
    sub_1AB401980();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43D050);
  }

  return result;
}

unint64_t sub_1AB401980()
{
  result = qword_1EB43D058;
  if (!qword_1EB43D058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43D058);
  }

  return result;
}

uint64_t sub_1AB4019D4(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB43BCF0, &qword_1AB4F1470);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1AB401A40()
{
  result = qword_1EB43D060;
  if (!qword_1EB43D060)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB43D018, &qword_1AB4F9808);
    sub_1AB401AC4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43D060);
  }

  return result;
}

unint64_t sub_1AB401AC4()
{
  result = qword_1EB43D068;
  if (!qword_1EB43D068)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB43D030, &qword_1AB4F9810);
    sub_1AB401B48();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43D068);
  }

  return result;
}

unint64_t sub_1AB401B48()
{
  result = qword_1EB43D070;
  if (!qword_1EB43D070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43D070);
  }

  return result;
}

__n128 Models.AlertAction.init(actionMetrics:title:message:buttons:)@<Q0>(__n128 *a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X4>, unint64_t a6@<X5>, __n128 *a7@<X8>)
{
  v16 = &_s12_EmptySourceVN;
  v17 = &off_1EE764AB0;
  MediaArtwork.init(_:)(&v15, &a7[1].n128_i64[1]);
  result = *a1;
  *a7 = *a1;
  a7[1].n128_u8[0] = 2;
  a7[7].n128_u64[0] = a2;
  a7[7].n128_u64[1] = a3;
  a7[8].n128_u64[0] = a4;
  a7[8].n128_u64[1] = a5;
  a7[9].n128_u64[0] = a6;
  return result;
}

unint64_t sub_1AB401CCC()
{
  result = qword_1EB43D078;
  if (!qword_1EB43D078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43D078);
  }

  return result;
}

unint64_t sub_1AB401D24()
{
  result = qword_1EB43D080;
  if (!qword_1EB43D080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43D080);
  }

  return result;
}

uint64_t sub_1AB401D78(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 152))
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

uint64_t sub_1AB401DC0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
      *(result + 152) = 1;
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

    *(result + 152) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_9JetEngine11ActionModel_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

unint64_t sub_1AB401EA0()
{
  result = qword_1EB43D088;
  if (!qword_1EB43D088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43D088);
  }

  return result;
}

unint64_t sub_1AB401EF8()
{
  result = qword_1EB43D090;
  if (!qword_1EB43D090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43D090);
  }

  return result;
}

unint64_t sub_1AB401F50()
{
  result = qword_1EB43D098;
  if (!qword_1EB43D098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43D098);
  }

  return result;
}

unint64_t sub_1AB401FA8()
{
  result = qword_1EB43D0A0;
  if (!qword_1EB43D0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43D0A0);
  }

  return result;
}

unint64_t sub_1AB402000()
{
  result = qword_1EB43D0A8;
  if (!qword_1EB43D0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43D0A8);
  }

  return result;
}

unint64_t sub_1AB402058()
{
  result = qword_1EB43D0B0;
  if (!qword_1EB43D0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43D0B0);
  }

  return result;
}

uint64_t sub_1AB4020AC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x654D6E6F69746361 && a2 == 0xED00007363697274;
  if (v4 || (sub_1AB461DA4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7974697265766573 && a2 == 0xE800000000000000 || (sub_1AB461DA4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1852793705 && a2 == 0xE400000000000000 || (sub_1AB461DA4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_1AB461DA4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6567617373656DLL && a2 == 0xE700000000000000 || (sub_1AB461DA4() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x736E6F74747562 && a2 == 0xE700000000000000)
  {

    return 5;
  }

  else
  {
    v6 = sub_1AB461DA4();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_1AB4022AC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
  if (v4 || (sub_1AB461DA4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6F69746361 && a2 == 0xE600000000000000 || (sub_1AB461DA4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1701605234 && a2 == 0xE400000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1AB461DA4();

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

unint64_t sub_1AB402418()
{
  result = qword_1EB43D0B8;
  if (!qword_1EB43D0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43D0B8);
  }

  return result;
}

unint64_t sub_1AB40246C()
{
  result = qword_1EB43D0C0;
  if (!qword_1EB43D0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43D0C0);
  }

  return result;
}

unint64_t MetricsError.errorDescription.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  if (v3 <= 2)
  {
    if (!*(v0 + 16))
    {
      v14 = 0;
      sub_1AB4615D4();
      MEMORY[0x1AC59BA20](0x7320746F6E6E6143, 0xED00002074726174);
      MEMORY[0x1AC59BA20](v1, v2);
      v4 = " without starting it first";
      v5 = 0xD00000000000002ALL;
      goto LABEL_9;
    }

    if (v3 == 1)
    {
      sub_1AB4615D4();

      v14 = 0x6520746F6E6E6143;
      MEMORY[0x1AC59BA20](v1, v2);
      v4 = "No end(s) found for ";
      v5 = 0xD00000000000001ALL;
LABEL_9:
      v7 = v4 | 0x8000000000000000;
LABEL_11:
      MEMORY[0x1AC59BA20](v5, v7);
      return v14;
    }

    sub_1AB4615D4();

    v6 = 0xD000000000000014;
LABEL_13:
    v14 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436FB0, &qword_1AB4D6D60);
    sub_1AB402858();
    sub_1AB0273A8();
    v9 = sub_1AB460894();
    MEMORY[0x1AC59BA20](v9);

    return v14;
  }

  if (v3 == 3)
  {
    sub_1AB4615D4();

    v14 = 0xD000000000000010;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436FB0, &qword_1AB4D6D60);
    sub_1AB402858();
    sub_1AB0273A8();
    v8 = sub_1AB460894();
    MEMORY[0x1AC59BA20](v8);

    v5 = 0x73696D2065726120;
    v7 = 0xEC000000676E6973;
    goto LABEL_11;
  }

  if (v3 == 4)
  {
    sub_1AB4615D4();

    v6 = 0xD00000000000001CLL;
    goto LABEL_13;
  }

  if (v1 <= 1)
  {
    v11 = v1 | v2;
    v12 = 0xD000000000000031;
    v13 = 0xD00000000000002ELL;
  }

  else
  {
    v11 = v1 ^ 2 | v2;
    v12 = 0xD00000000000003FLL;
    v13 = 0xD00000000000004ELL;
    if (!(v1 ^ 3 | v2))
    {
      v13 = 0xD00000000000002BLL;
    }
  }

  if (v11)
  {
    return v13;
  }

  else
  {
    return v12;
  }
}

unint64_t sub_1AB402858()
{
  result = qword_1EB43D0C8;
  if (!qword_1EB43D0C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB436FB0, &qword_1AB4D6D60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43D0C8);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_9JetEngine12MetricsErrorO(uint64_t a1)
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

uint64_t sub_1AB4028E0(uint64_t result, unsigned int a2)
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

unsigned __int8 *sub_1AB402908(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, unsigned __int8 *md, __n128 a6)
{
  data[2] = *MEMORY[0x1E69E9840];
  v8 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v8 != 2)
    {
      v13 = a4 >> 62;
      memset(data, 0, 14);
      if ((a4 >> 62) > 1)
      {
LABEL_20:
        LODWORD(v10) = 0;
        if (v13 != 2)
        {
          goto LABEL_30;
        }

        v17 = *(a3 + 16);
        v16 = *(a3 + 24);
        v10 = v16 - v17;
        if (!__OFSUB__(v16, v17))
        {
LABEL_26:
          if ((v10 & 0x8000000000000000) == 0)
          {
            if (HIDWORD(v10))
            {
              __break(1u);
              goto LABEL_29;
            }

LABEL_30:
            v12 = CC_SHA256(data, v10, md);
            sub_1AB017254(a3, a4);
            return v12;
          }

          goto LABEL_34;
        }

        __break(1u);
LABEL_24:
        if (__OFSUB__(HIDWORD(a3), a3))
        {
          goto LABEL_37;
        }

        v10 = HIDWORD(a3) - a3;
        goto LABEL_26;
      }

      if (v13)
      {
        goto LABEL_24;
      }

      goto LABEL_14;
    }

    a1 = *(a1 + 16);
    v11 = a2 & 0x3FFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (!v8)
    {
      data[0] = a1;
      LOWORD(data[1]) = a2;
      BYTE2(data[1]) = BYTE2(a2);
      BYTE3(data[1]) = BYTE3(a2);
      BYTE4(data[1]) = BYTE4(a2);
      v9 = a4 >> 62;
      BYTE5(data[1]) = BYTE5(a2);
      if ((a4 >> 62) > 1)
      {
        if (v9 != 2)
        {
LABEL_29:
          LODWORD(v10) = 0;
          goto LABEL_30;
        }

        v15 = *(a3 + 16);
        v14 = *(a3 + 24);
        v10 = v14 - v15;
        if (__OFSUB__(v14, v15))
        {
          goto LABEL_36;
        }

        goto LABEL_17;
      }

      if (v9)
      {
        if (__OFSUB__(HIDWORD(a3), a3))
        {
LABEL_35:
          __break(1u);
LABEL_36:
          __break(1u);
LABEL_37:
          __break(1u);
        }

        v10 = HIDWORD(a3) - a3;
LABEL_17:
        if ((v10 & 0x8000000000000000) == 0)
        {
          v13 = HIDWORD(v10);
          if (!HIDWORD(v10))
          {
            goto LABEL_30;
          }

          __break(1u);
          goto LABEL_20;
        }

LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
        goto LABEL_35;
      }

LABEL_14:
      LODWORD(v10) = BYTE6(a4);
      goto LABEL_30;
    }

    if (a1 > a1 >> 32)
    {
      __break(1u);
      goto LABEL_33;
    }

    v11 = a2 & 0x3FFFFFFFFFFFFFFFLL;
    a1 = a1;
  }

  v12 = sub_1AB4033B0(a1, a6, v11, a3, a4, md);
  sub_1AB017254(a3, a4);
  return v12;
}

uint64_t sub_1AB402B18()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    sub_1AB460544();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43D0E8, &qword_1AB4F9FF8);
  swift_allocObject();
  result = sub_1AB4622D4();
  qword_1EB433450 = result;
  return result;
}

uint64_t sub_1AB402BE0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43C540, &qword_1AB4F4790);
  swift_allocObject();
  result = sub_1AB4622D4();
  qword_1EB432CF8 = result;
  return result;
}

uint64_t sub_1AB402C40()
{
  v0 = sub_1AB1BF140(&unk_1F1FF2990);
  result = swift_arrayDestroy();
  qword_1EB432338 = v0;
  return result;
}

void sub_1AB402CB8()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    sub_1AB460544();

    v2 = sub_1AB4605F4();
    v4 = v3;

    if (qword_1EB433A08 != -1)
    {
      swift_once();
    }

    v5 = sub_1AB05CF1C(v2, v4, qword_1EB433A10);
  }

  else
  {
    v5 = 0;
  }

  byte_1EB432CF0 = v5 & 1;
}

uint64_t sub_1AB402DD8()
{
  v0 = sub_1AB1BF140(&unk_1F1FF2930);
  result = swift_arrayDestroy();
  qword_1EB433A10 = v0;
  return result;
}

uint64_t sub_1AB402E74()
{
  v0 = sub_1AB1BF140(&unk_1F1FF4348);
  result = swift_arrayDestroy();
  qword_1EB432380 = v0;
  return result;
}

void *sub_1AB402EEC(uint64_t a1, void *a2, uint64_t *a3, _BYTE *a4, uint64_t a5)
{
  if (*a2 != -1)
  {
    v9 = a3;
    swift_once();
    a3 = v9;
  }

  v6 = *a3;
  if (qword_1EB433460 != -1)
  {
    swift_once();
  }

  result = sub_1AB4622E4();
  if (v11)
  {
    v8 = sub_1AB05CF1C(v10, v11, v6);
  }

  else
  {
    v8 = 0;
  }

  *a4 = v8 & 1;
  return result;
}

uint64_t sub_1AB402FDC()
{
  v0 = sub_1AB1BF140(&unk_1F1FF4388);
  result = swift_arrayDestroy();
  qword_1EB432360 = v0;
  return result;
}

uint64_t sub_1AB403028()
{
  v0 = sub_1AB0550D0(&unk_1F1FF35A8);
  sub_1AB0589A8(&unk_1F1FF35C8);
  if (qword_1EB433460 != -1)
  {
    swift_once();
  }

  sub_1AB4622E4();
  if (v4)
  {
    v1 = sub_1AB05CF1C(v3, v4, v0);
  }

  else
  {
    v1 = 0;
  }

  byte_1EB432388 = v1 & 1;
  return result;
}

uint64_t sub_1AB4030F0()
{
  v0 = sub_1AB4605C4();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1AB1BF140(&unk_1F1FF36B8);
  swift_arrayDestroy();
  if (qword_1EB433460 != -1)
  {
    swift_once();
  }

  sub_1AB4622E4();
  v5 = v19;
  if (v19)
  {
    swift_bridgeObjectRetain_n();
    sub_1AB4605A4();
    v6 = sub_1AB460554();
    v8 = v7;
    (*(v1 + 8))(v3, v0);
    if (v8 >> 60 == 15)
    {
      v9 = 0;
      v10 = 0xE000000000000000;
    }

    else
    {
      v11 = swift_slowAlloc();
      sub_1AB017200(v6, v8);
      sub_1AB402908(v6, v8, v6, v8, v11, v12);
      v13 = sub_1AB05AF50(v11, 0x20uLL);
      v15 = v14;
      MEMORY[0x1AC59F020](v11, -1, -1);
      v9 = sub_1AB45F844();
      v10 = v16;
      sub_1AB017254(v13, v15);
      sub_1AB03BD58(v6, v8);
    }

    swift_bridgeObjectRelease_n();
    v5 = sub_1AB05CF1C(v9, v10, v4);
  }

  byte_1EB43D0E1 = v5 & 1;
  return result;
}

uint64_t sub_1AB403368(void *a1, unsigned __int8 *a2, uint64_t a3)
{
  if (*a1 == -1)
  {
    return *a2;
  }

  swift_once();
  return *a2;
}

unsigned __int8 *sub_1AB4033B0(uint64_t a1, __n128 a2, uint64_t a3, uint64_t a4, unint64_t a5, unsigned __int8 *a6)
{
  v10 = sub_1AB45F414();
  if (!v10)
  {
    goto LABEL_21;
  }

  v11 = v10;
  v12 = sub_1AB45F444();
  if (__OFSUB__(a1, v12))
  {
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v13 = (a1 - v12 + v11);
  result = sub_1AB45F434();
  if (v13)
  {
    v15 = a5 >> 62;
    if ((a5 >> 62) > 1)
    {
      if (v15 != 2)
      {
        goto LABEL_16;
      }

      v18 = *(a4 + 16);
      v17 = *(a4 + 24);
      v16 = v17 - v18;
      if (!__OFSUB__(v17, v18))
      {
LABEL_13:
        if ((v16 & 0x8000000000000000) == 0)
        {
          if (!HIDWORD(v16))
          {
            return CC_SHA256(v13, v16, a6);
          }

          __break(1u);
LABEL_16:
          LODWORD(v16) = 0;
          return CC_SHA256(v13, v16, a6);
        }

        goto LABEL_19;
      }

      __break(1u);
    }

    else if (!v15)
    {
      LODWORD(v16) = BYTE6(a5);
      return CC_SHA256(v13, v16, a6);
    }

    if (__OFSUB__(HIDWORD(a4), a4))
    {
LABEL_20:
      __break(1u);
LABEL_21:
      result = sub_1AB45F434();
      goto LABEL_22;
    }

    v16 = HIDWORD(a4) - a4;
    goto LABEL_13;
  }

LABEL_22:
  __break(1u);
  return result;
}

uint64_t JSSource.init(_:file:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a5@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB4395B0, &qword_1AB4D6720);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v15 - v9;
  v11 = *(type metadata accessor for JSSource(0) + 20);
  v12 = sub_1AB45F764();
  v13 = *(*(v12 - 8) + 56);
  v13(&a5[v11], 1, 1, v12);
  *a5 = a1;
  *(a5 + 1) = a2;
  sub_1AB45F634();

  v13(v10, 0, 1, v12);
  return sub_1AB04F3C8(v10, &a5[v11]);
}

uint64_t JSSource.code.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t JSSource.sourceURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for JSSource(0) + 20);

  return sub_1AB03BC60(v3, a1);
}

uint64_t JSSource.sourceURL.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for JSSource(0) + 20);

  return sub_1AB04F3C8(a1, v3);
}

uint64_t JSSource.description.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t _s9JetEngine8JSSourceV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = sub_1AB45F764();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB4395B0, &qword_1AB4D6720);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB438C48, &qword_1AB4E0CF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v20 - v12;
  if (*a1 == *a2 || (v14 = 0, (sub_1AB461DA4() & 1) != 0))
  {
    v15 = *(type metadata accessor for JSSource(0) + 20);
    v16 = *(v11 + 48);
    sub_1AB03BC60(a1 + v15, v13);
    sub_1AB03BC60(a2 + v15, &v13[v16]);
    v17 = *(v5 + 48);
    if (v17(v13, 1, v4) == 1)
    {
      if (v17(&v13[v16], 1, v4) == 1)
      {
        sub_1AB014AC0(v13, &unk_1EB4395B0, &qword_1AB4D6720);
        v14 = 1;
        return v14 & 1;
      }
    }

    else
    {
      sub_1AB03BC60(v13, v10);
      if (v17(&v13[v16], 1, v4) != 1)
      {
        (*(v5 + 32))(v7, &v13[v16], v4);
        sub_1AB0B30F8();
        v14 = sub_1AB460504();
        v18 = *(v5 + 8);
        v18(v7, v4);
        v18(v10, v4);
        sub_1AB014AC0(v13, &unk_1EB4395B0, &qword_1AB4D6720);
        return v14 & 1;
      }

      (*(v5 + 8))(v10, v4);
    }

    sub_1AB014AC0(v13, &qword_1EB438C48, &qword_1AB4E0CF0);
    v14 = 0;
  }

  return v14 & 1;
}

uint64_t PathExpression.init(pattern:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v5 = v4;
  v6 = a3;
  v76 = a4;
  v9 = sub_1AB45EFB4();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v75 = &v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1AB45EFC4();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = a1;
  v73 = a2;
  v74 = v6;
  v15 = sub_1AB461614();
  v17 = sub_1AB404D24(v15, v16);

  v19 = *(v17 + 16);
  v20 = 0x1E696A000uLL;
  if (v19)
  {
    v69 = v14;
    v70 = v12;
    v71 = v11;
    v21 = 0;
    v81 = 12126;
    v82 = 0xE200000000000000;
    v22 = (v17 + 40);
    v77 = v17;
    v78 = v4;
    v83 = v19;
    while (v21 < *(v17 + 16))
    {
      v24 = *(v22 - 1);
      v23 = *v22;
      if (v24 != 47 || v23 != 0xE100000000000000)
      {
        result = sub_1AB461DA4();
        if ((result & 1) == 0)
        {

          if ((sub_1AB460794() & 1) == 0)
          {
            MEMORY[0x1AC59BA20](47, 0xE100000000000000);
          }

          if (v24 == 42 && v23 == 0xE100000000000000 || (sub_1AB461DA4() & 1) != 0)
          {

            result = MEMORY[0x1AC59BA20](0x292A5D2F5E5B28, 0xE700000000000000);
          }

          else if (sub_1AB460784() & 1) != 0 || (sub_1AB460794())
          {
            if ((sub_1AB460784() & 1) == 0 || (sub_1AB460794() & 1) == 0)
            {

              sub_1AB45EF74();
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436E78, &unk_1AB4D6AC0);
              inited = swift_initStackObject();
              *(inited + 16) = xmmword_1AB4D47F0;
              *(inited + 32) = sub_1AB460544();
              *(inited + 40) = v58;
              v79 = 0;
              v80 = 0xE000000000000000;
              sub_1AB4615D4();
              MEMORY[0x1AC59BA20](0xD000000000000017, 0x80000001AB50E4C0);
              MEMORY[0x1AC59BA20](v24, v23);

              v59 = "Path pattern component ";
              v60 = 0xD00000000000001CLL;
LABEL_41:
              MEMORY[0x1AC59BA20](v60, v59 | 0x8000000000000000);
              v62 = v79;
              v63 = v80;
              *(inited + 72) = MEMORY[0x1E69E6158];
              *(inited + 48) = v62;
              *(inited + 56) = v63;
              *(inited + 80) = sub_1AB460544();
              *(inited + 88) = v64;
              *(inited + 120) = MEMORY[0x1E69E6A70];
              v65 = v73;
              *(inited + 96) = v72;
              *(inited + 104) = v65;
              *(inited + 112) = v74;
              sub_1AB01B220(inited);
              swift_setDeallocating();
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB439AA0, &qword_1AB4DA4B0);
              swift_arrayDestroy();
              sub_1AB2CEA10();
              v66 = v69;
              v67 = v71;
              sub_1AB45F574();
              sub_1AB45EF64();
              (*(v70 + 8))(v66, v67);
              return swift_willThrow();
            }

            v26 = sub_1AB4050BC(1uLL, v24, v23);
            v28 = v27;

            result = sub_1AB4613C4();
            if (__OFSUB__(result, 1))
            {
              goto LABEL_43;
            }

            v29 = sub_1AB4613A4();
            if (v30)
            {
              v31 = v28;
            }

            else
            {
              v31 = v29;
            }

            result = objc_opt_self();
            if (v31 >> 14 < v26 >> 14)
            {
              goto LABEL_44;
            }

            v32 = result;
            v33 = sub_1AB4613E4();
            v35 = v34;
            v37 = v36;
            v39 = v38;

            MEMORY[0x1AC59B960](v33, v35, v37, v39);

            v40 = sub_1AB460514();

            v41 = [v32 escapedPatternForString_];

            v42 = sub_1AB460544();
            v44 = v43;

            v79 = 3948328;
            v80 = 0xE300000000000000;
            MEMORY[0x1AC59BA20](v42, v44);

            MEMORY[0x1AC59BA20](0x292A5D2F5E5B3ELL, 0xE700000000000000);
            MEMORY[0x1AC59BA20](v79, v80);

            v17 = v77;
            v5 = v78;
            v20 = 0x1E696A000;
          }

          else
          {
            if (sub_1AB460784() & 1) != 0 || (sub_1AB460794())
            {
              if ((sub_1AB460784() & 1) == 0 || (sub_1AB460794() & 1) == 0)
              {

                sub_1AB45EF74();
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436E78, &unk_1AB4D6AC0);
                inited = swift_initStackObject();
                *(inited + 16) = xmmword_1AB4D47F0;
                *(inited + 32) = sub_1AB460544();
                *(inited + 40) = v61;
                v79 = 0;
                v80 = 0xE000000000000000;
                sub_1AB4615D4();
                MEMORY[0x1AC59BA20](0xD000000000000017, 0x80000001AB50E4C0);
                MEMORY[0x1AC59BA20](v24, v23);

                v59 = "";
                v60 = 0xD00000000000001BLL;
                goto LABEL_41;
              }

              MEMORY[0x1AC59BA20](v24, v23);
            }

            else
            {
              v45 = objc_opt_self();
              v46 = sub_1AB460514();

              v47 = [v45 escapedPatternForString_];

              v48 = sub_1AB460544();
              v50 = v49;

              MEMORY[0x1AC59BA20](v48, v50);
            }
          }

          v19 = v83;
        }
      }

      ++v21;
      v22 += 2;
      if (v19 == v21)
      {

        MEMORY[0x1AC59BA20](36, 0xE100000000000000);
        v51 = v81;
        v52 = v82;
        v53 = objc_allocWithZone(*(v20 + 3696));
        v54 = v51;
        v55 = v52;
        goto LABEL_36;
      }
    }

    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
  }

  else
  {

    v56 = objc_allocWithZone(MEMORY[0x1E696AE70]);
    v54 = 10798;
    v55 = 0xE200000000000000;
LABEL_36:
    result = sub_1AB0C5760(v54, v55, 0);
    if (!v5)
    {
      *v76 = result;
    }
  }

  return result;
}

JetEngine::PathExpression::MatchResult_optional __swiftcall PathExpression.match(_:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v5 = v1;
  v6 = *v2;
  v7 = sub_1AB460514();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB437578, &qword_1AB4D8128);
  sub_1AB01561C(&qword_1EB437580, &qword_1EB437578, &qword_1AB4D8128, MEMORY[0x1E69E6D28]);
  sub_1AB0273A8();
  v8 = sub_1AB4612F4();
  v10 = [v6 firstMatchInString:v7 options:0 range:{v8, v9}];

  if (v10)
  {
  }

  else
  {
    countAndFlagsBits = 0;
    object = 0;
  }

  *v5 = v10;
  v5[1] = countAndFlagsBits;
  v5[2] = object;
  result.value.raw._object = v13;
  result.value.raw._countAndFlagsBits = v12;
  result.value.base.super.isa = v11;
  result.is_nil = v14;
  return result;
}

uint64_t PathExpression.MatchResult.raw.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

char *PathExpression.MatchResult.endIndex.getter()
{
  v1 = [*v0 numberOfRanges];
  v2 = __OFSUB__(v1, 1);
  result = v1 - 1;
  if (v2)
  {
    __break(1u);
  }

  return result;
}

Swift::Int __swiftcall PathExpression.MatchResult.index(after:)(Swift::Int after)
{
  v1 = __OFADD__(after, 1);
  result = after + 1;
  if (v1)
  {
    __break(1u);
  }

  return result;
}

uint64_t PathExpression.MatchResult.subscript.getter(uint64_t a1)
{
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = *v1;
  v4 = [*v1 numberOfRanges];
  if (__OFSUB__(v4, 1))
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v4 - 1 <= a1)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  [v3 rangeAtIndex_];
  sub_1AB460FD4();
  if ((v5 & 1) == 0)
  {
    v6 = sub_1AB4607E4();
    v7 = MEMORY[0x1AC59B960](v6);

    return v7;
  }

LABEL_9:
  result = sub_1AB461884();
  __break(1u);
  return result;
}

uint64_t PathExpression.MatchResult.subscript.getter(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = sub_1AB460514();
  [v3 rangeWithName_];

  sub_1AB460FD4();
  if (v5)
  {
    return 0;
  }

  v7 = sub_1AB4607E4();
  v8 = MEMORY[0x1AC59B960](v7);

  return v8;
}

{
  v5 = sub_1AB45EFB4();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1AB45EFC4();
  v27 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  v10 = *(v2 + 8);
  v11 = *(v2 + 16);
  v24 = a2;
  v12 = sub_1AB460514();
  [v9 rangeWithName_];

  sub_1AB460FD4();
  if (v13)
  {
    sub_1AB45EF74();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436E78, &unk_1AB4D6AC0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1AB4D47F0;
    *(inited + 32) = sub_1AB460544();
    *(inited + 40) = v15;
    v25 = 0;
    v26 = 0xE000000000000000;
    sub_1AB4615D4();

    v25 = 0xD000000000000019;
    v26 = 0x80000001AB50E500;
    MEMORY[0x1AC59BA20](a1, v24);
    MEMORY[0x1AC59BA20](0x6E697373696D2060, 0xE900000000000067);
    v16 = v25;
    v17 = v26;
    v18 = MEMORY[0x1E69E6158];
    *(inited + 72) = MEMORY[0x1E69E6158];
    *(inited + 48) = v16;
    *(inited + 56) = v17;
    *(inited + 80) = sub_1AB460544();
    *(inited + 88) = v19;
    *(inited + 120) = v18;
    *(inited + 96) = v10;
    *(inited + 104) = v11;

    sub_1AB01B220(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB439AA0, &qword_1AB4DA4B0);
    swift_arrayDestroy();
    sub_1AB2CEA10();
    sub_1AB45F574();
    sub_1AB45EF64();
    (*(v27 + 8))(v8, v6);
    return swift_willThrow();
  }

  else
  {
    v21 = sub_1AB4607E4();
    v22 = MEMORY[0x1AC59B960](v21);

    return v22;
  }
}

uint64_t PathExpression.MatchResult.debugDescription.getter()
{
  strcpy(v2, "MatchResult(");
  sub_1AB40516C();
  sub_1AB0273A8();
  v0 = sub_1AB460894();
  MEMORY[0x1AC59BA20](v0);

  MEMORY[0x1AC59BA20](41, 0xE100000000000000);
  return v2[0];
}

char *sub_1AB4049E0@<X0>(void *a1@<X8>)
{
  result = [*v1 numberOfRanges];
  if (__OFSUB__(result, 1))
  {
    __break(1u);
  }

  else
  {
    *a1 = result - 1;
  }

  return result;
}

uint64_t (*sub_1AB404A20(uint64_t *a1, uint64_t *a2))()
{
  matched = PathExpression.MatchResult.subscript.getter(*a2);
  a1[1] = v4;
  a1[2] = v4;
  *a1 = matched;
  return sub_1AB404A6C;
}

char *sub_1AB404A74@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = *v2;
  v7 = *(v2 + 8);
  v8 = *(v2 + 16);
  result = [v6 numberOfRanges];
  v10 = (result - 1);
  if (__OFSUB__(result, 1))
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v10 < 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v5 < 0)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v10 < v4)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  a2[2] = v6;
  a2[3] = v7;
  a2[4] = v8;
  *a2 = v5;
  a2[1] = v4;
  v11 = v6;
}

char *sub_1AB404B0C@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = 0;
  v6 = v3;

  result = [v6 numberOfRanges];
  if (__OFSUB__(result, 1))
  {
    __break(1u);
  }

  else
  {
    a1[4] = result - 1;
  }

  return result;
}

id sub_1AB404B74()
{
  result = [*v0 numberOfRanges];
  if (!__OFSUB__(result, 1))
  {
    return (result == 1);
  }

  __break(1u);
  return result;
}

unint64_t sub_1AB404BAC@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  result = sub_1AB4052C0(*a1, a2, *a3);
  *a4 = result;
  *(a4 + 8) = v6 & 1;
  return result;
}

uint64_t sub_1AB404BE4(uint64_t a1)
{
  strcpy(v3, "MatchResult(");
  sub_1AB40516C();
  sub_1AB0273A8();
  v1 = sub_1AB460894();
  MEMORY[0x1AC59BA20](v1);

  MEMORY[0x1AC59BA20](41, 0xE100000000000000);
  return v3[0];
}

unint64_t sub_1AB404C94()
{
  v1 = [*v0 numberOfRanges];
  v2 = __OFSUB__(v1, 1);
  result = v1 - 1;
  if (v2)
  {
    __break(1u);
    goto LABEL_5;
  }

  if ((result & 0x8000000000000000) != 0)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

char *sub_1AB404CCC()
{
  v1 = *v0;
  v2 = sub_1AB2BE90C(*v0, *(v0 + 8), *(v0 + 16));

  return v2;
}

uint64_t sub_1AB404D24(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB4395B0, &qword_1AB4D6720);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v17 - v5;
  v7 = sub_1AB45F764();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1AB45F3E4();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AB45F3D4();
  sub_1AB45F3C4();

  MEMORY[0x1AC59A6B0](a1, a2);
  sub_1AB45F334();
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_1AB03BCD0(v6);
    v15 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    (*(v8 + 32))(v10, v6, v7);
    v15 = sub_1AB45F624();
    (*(v8 + 8))(v10, v7);
  }

  (*(v12 + 8))(v14, v11);
  return v15;
}

unint64_t PathExpression.debugDescription.getter()
{
  v1 = [*v0 pattern];
  v2 = sub_1AB460544();
  v4 = v3;

  MEMORY[0x1AC59BA20](v2, v4);

  MEMORY[0x1AC59BA20](41, 0xE100000000000000);
  return 0xD000000000000018;
}

unint64_t sub_1AB40501C()
{
  v1 = [*v0 pattern];
  v2 = sub_1AB460544();
  v4 = v3;

  MEMORY[0x1AC59BA20](v2, v4);

  MEMORY[0x1AC59BA20](41, 0xE100000000000000);
  return 0xD000000000000018;
}

unint64_t sub_1AB4050BC(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v4 = 7;
  if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
  {
    v4 = 11;
  }

  v5 = v4 | (v3 << 16);
  result = sub_1AB4606C4();
  if (v6)
  {
    result = v5;
  }

  if (4 * v3 < result >> 14)
  {
    goto LABEL_14;
  }

  return sub_1AB4607E4();
}

unint64_t sub_1AB40516C()
{
  result = qword_1EB43D0F0;
  if (!qword_1EB43D0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43D0F0);
  }

  return result;
}

unint64_t sub_1AB4052C0(unint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
LABEL_21:
    __break(1u);
    return result;
  }

  if (a2)
  {
    v3 = a3 - result;
    if (a3 - result >= a2 - 1)
    {
      v3 = a2 - 1;
    }

    if (v3 >= (result ^ 0x7FFFFFFFFFFFFFFFLL))
    {
      v3 = result ^ 0x7FFFFFFFFFFFFFFFLL;
    }

    v4 = v3 + 1;
    if (v4 >= 5)
    {
      v7 = v4 & 3;
      if ((v4 & 3) == 0)
      {
        v7 = 4;
      }

      v5 = v4 - v7;
      v8 = 0uLL;
      v9 = result;
      v10 = vdupq_n_s64(1uLL);
      v11 = v5;
      do
      {
        v8 = vaddq_s64(v8, v10);
        v9 = vaddq_s64(v9, v10);
        v11 -= 4;
      }

      while (v11);
      v6 = vaddvq_s64(vpaddq_s64(v9, v8));
    }

    else
    {
      v5 = 0;
      v6 = result;
    }

    v12 = v5 + result - 0x7FFFFFFFFFFFFFFFLL;
    v13 = v5 + result - a3;
    v14 = a2 - v5;
    result = v6;
    while (1)
    {
      if (!v13)
      {
        return 0;
      }

      if (!v12)
      {
        break;
      }

      ++result;
      ++v12;
      ++v13;
      if (!--v14)
      {
        return result;
      }
    }

    __break(1u);
    goto LABEL_21;
  }

  return result;
}

uint64_t JSONObject.decode<A>(_:using:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v8 = *a2;

  v6 = _sSD9JetEngines17CodingUserInfoKeyVRszypRs_rlE11jsonContextSDyACypGAA11JSONContextV_tcfC_0(&v8);
  JSONObject.decode<A>(_:withUserInfo:)(v6, v6, a3, a4);
}

uint64_t sub_1AB405430(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 16);
  v26 = MEMORY[0x1E69E7CC0];
  sub_1AB03BD38(0, v2, 0);
  v3 = v1 + 56;
  v4 = -1;
  v5 = -1 << *(v1 + 32);
  if (-v5 < 64)
  {
    v4 = ~(-1 << -v5);
  }

  v6 = v4 & *(v1 + 56);
  v7 = (63 - v5) >> 6;
  v25 = v1;
  if (v2)
  {

    v9 = 0;
    v10 = 0;
    while (v6)
    {
LABEL_10:
      result = *(*(v1 + 48) + ((v10 << 9) | (8 * __clz(__rbit64(v6)))));
      if (!result)
      {
        goto LABEL_28;
      }

      result = sub_1AB462314();
      v14 = *(v26 + 16);
      v13 = *(v26 + 24);
      if (v14 >= v13 >> 1)
      {
        v23 = v12;
        v24 = result;
        sub_1AB03BD38((v13 > 1), v14 + 1, 1);
        v12 = v23;
        result = v24;
      }

      ++v9;
      v6 &= v6 - 1;
      *(v26 + 16) = v14 + 1;
      v15 = v26 + 16 * v14;
      *(v15 + 32) = result;
      *(v15 + 40) = v12;
      v1 = v25;
      if (v9 == v2)
      {
        goto LABEL_16;
      }
    }

    while (1)
    {
      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v11 >= v7)
      {
        goto LABEL_28;
      }

      v6 = *(v3 + 8 * v11);
      ++v10;
      if (v6)
      {
        v10 = v11;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {

    v10 = 0;
LABEL_16:
    if (v6)
    {
      goto LABEL_21;
    }

    while (1)
    {
      v16 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v16 >= v7)
      {

        return v26;
      }

      v6 = *(v3 + 8 * v16);
      ++v10;
      if (v6)
      {
        v10 = v16;
        do
        {
LABEL_21:
          result = sub_1AB462314();
          v19 = *(v26 + 16);
          v18 = *(v26 + 24);
          if (v19 >= v18 >> 1)
          {
            v21 = result;
            v22 = v17;
            sub_1AB03BD38((v18 > 1), v19 + 1, 1);
            v17 = v22;
            result = v21;
          }

          v6 &= v6 - 1;
          *(v26 + 16) = v19 + 1;
          v20 = v26 + 16 * v19;
          *(v20 + 32) = result;
          *(v20 + 40) = v17;
        }

        while (v6);
      }
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
  return result;
}

void sub_1AB405670(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a3;
  if (qword_1EB435DF8 != -1)
  {
    swift_once();
  }

  sub_1AB4622E4();
  v9 = v49;
  if (v49)
  {
    v10 = *(&v49 + 1);
    sub_1AB4615D4();

    *&v49 = 0xD000000000000030;
    *(&v49 + 1) = 0x80000001AB50EC20;
    v11 = sub_1AB462314();
    MEMORY[0x1AC59BA20](v11);

    v9(&v49);
    sub_1AB0177B8(v9, v10);
LABEL_26:

    return;
  }

  if (qword_1EB435DF0 != -1)
  {
    swift_once();
  }

  if (byte_1EB43D128 == 1)
  {
    sub_1AB4615D4();

    *&v49 = 0xD000000000000030;
    *(&v49 + 1) = 0x80000001AB50EC20;
    v12 = sub_1AB462314();
    MEMORY[0x1AC59BA20](v12);

    v13 = v49;
    v14 = sub_1AB461084();
    sub_1AB016760(0, &qword_1ED4D21E0, 0x1E69E9BF8);
    v15 = sub_1AB461324();
    if (os_log_type_enabled(v15, v14))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *&v49 = v17;
      *v16 = 136446722;
      v18 = sub_1AB461614();
      v20 = sub_1AB030D2C(v18, v19, &v49);

      *(v16 + 4) = v20;
      *(v16 + 12) = 2050;
      *(v16 + 14) = a4;
      *(v16 + 22) = 2082;
      v21 = sub_1AB030D2C(v13, *(&v13 + 1), &v49);

      *(v16 + 24) = v21;
      _os_log_impl(&dword_1AB012000, v15, v14, "%{public}s:%{public}lu: Requirement unsatisfied: %{public}s", v16, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1AC59F020](v17, -1, -1);
      MEMORY[0x1AC59F020](v16, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    if (byte_1EB43D128 == 2)
    {
      if (qword_1EB435660 != -1)
      {
        swift_once();
      }

      v22 = qword_1EB435668;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10, &unk_1AB4D4860);
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_1AB4D4720;
      v55 = sub_1AB0168A8(0, 31, 0, MEMORY[0x1E69E7CC0]);
      v24._countAndFlagsBits = 0;
      v24._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v24);
      v54 = MEMORY[0x1E69E6A70];
      *&v52 = a1;
      *(&v52 + 1) = a2;
      v53 = v6;
      sub_1AB01522C(&v52, v48);
      v49 = 0u;
      v50 = 0u;
      sub_1AB0169C4(v48, &v49);
      v51 = 0;
      v25 = v55;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v25 = sub_1AB0168A8(0, *(v25 + 2) + 1, 1, v25);
        v55 = v25;
      }

      v27 = *(v25 + 2);
      v26 = *(v25 + 3);
      if (v27 >= v26 >> 1)
      {
        v25 = sub_1AB0168A8((v26 > 1), v27 + 1, 1, v25);
      }

      *(v25 + 2) = v27 + 1;
      v28 = &v25[40 * v27];
      v29 = v49;
      v30 = v50;
      v28[64] = v51;
      *(v28 + 2) = v29;
      *(v28 + 3) = v30;
      v55 = v25;
      sub_1AB0167A8(&v52);
      v31._countAndFlagsBits = 58;
      v31._object = 0xE100000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v31);
      v54 = MEMORY[0x1E69E6810];
      *&v52 = a4;
      sub_1AB01522C(&v52, v48);
      v49 = 0u;
      v50 = 0u;
      sub_1AB0169C4(v48, &v49);
      v51 = 0;
      v32 = v55;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v32 = sub_1AB0168A8(0, *(v32 + 2) + 1, 1, v32);
        v55 = v32;
      }

      v34 = *(v32 + 2);
      v33 = *(v32 + 3);
      if (v34 >= v33 >> 1)
      {
        v32 = sub_1AB0168A8((v33 > 1), v34 + 1, 1, v32);
      }

      *(v32 + 2) = v34 + 1;
      v35 = &v32[40 * v34];
      v36 = v49;
      v37 = v50;
      v35[64] = v51;
      *(v35 + 2) = v36;
      *(v35 + 3) = v37;
      v55 = v32;
      sub_1AB0167A8(&v52);
      v38._countAndFlagsBits = 0xD00000000000001BLL;
      v38._object = 0x80000001AB50E540;
      LogMessage.StringInterpolation.appendLiteral(_:)(v38);
      *&v49 = 0;
      *(&v49 + 1) = 0xE000000000000000;
      sub_1AB4615D4();

      *&v49 = 0xD000000000000030;
      *(&v49 + 1) = 0x80000001AB50EC20;
      v39 = sub_1AB462314();
      MEMORY[0x1AC59BA20](v39);

      v54 = MEMORY[0x1E69E6158];
      v52 = v49;
      sub_1AB01522C(&v52, v48);
      v49 = 0u;
      v50 = 0u;
      sub_1AB0169C4(v48, &v49);
      v51 = 0;
      v40 = v55;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v40 = sub_1AB0168A8(0, *(v40 + 2) + 1, 1, v40);
      }

      v42 = *(v40 + 2);
      v41 = *(v40 + 3);
      if (v42 >= v41 >> 1)
      {
        v40 = sub_1AB0168A8((v41 > 1), v42 + 1, 1, v40);
      }

      *(v40 + 2) = v42 + 1;
      v43 = &v40[40 * v42];
      v44 = v49;
      v45 = v50;
      v43[64] = v51;
      *(v43 + 2) = v44;
      *(v43 + 3) = v45;
      v55 = v40;
      sub_1AB0167A8(&v52);
      v46._countAndFlagsBits = 0;
      v46._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v46);
      *(v23 + 32) = v55;
      *&v49 = v22;
      LOBYTE(v52) = 0;
      OSLogger.log(contentsOf:withLevel:)(v23, &v52);
      goto LABEL_26;
    }

    sub_1AB4615D4();

    v47 = sub_1AB462314();
    MEMORY[0x1AC59BA20](v47);

    sub_1AB461884();
    __break(1u);
  }
}

void sub_1AB405D94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = a3;
  if (qword_1EB435DF8 != -1)
  {
    swift_once();
  }

  sub_1AB4622E4();
  v10 = v46;
  if (v46)
  {
    v11 = *(&v46 + 1);
    *&v46 = 0;
    *(&v46 + 1) = 0xE000000000000000;
    sub_1AB4615D4();
    MEMORY[0x1AC59BA20](0xD000000000000022, 0x80000001AB50EB60);
    *&v49 = a5;
    sub_1AB461824();
    MEMORY[0x1AC59BA20](0xD00000000000003BLL, 0x80000001AB50EB90);
    v10(&v46);
    sub_1AB0177B8(v10, v11);
LABEL_26:

    return;
  }

  if (qword_1EB435DF0 != -1)
  {
    swift_once();
  }

  if (byte_1EB43D128 == 1)
  {
    *&v46 = 0;
    *(&v46 + 1) = 0xE000000000000000;
    sub_1AB4615D4();
    MEMORY[0x1AC59BA20](0xD000000000000022, 0x80000001AB50EB60);
    *&v49 = a5;
    sub_1AB461824();
    MEMORY[0x1AC59BA20](0xD00000000000003BLL, 0x80000001AB50EB90);
    v12 = v46;
    v13 = sub_1AB461084();
    sub_1AB016760(0, &qword_1ED4D21E0, 0x1E69E9BF8);
    v14 = sub_1AB461324();
    if (os_log_type_enabled(v14, v13))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *&v46 = v16;
      *v15 = 136446722;
      v17 = sub_1AB461614();
      v19 = sub_1AB030D2C(v17, v18, &v46);

      *(v15 + 4) = v19;
      *(v15 + 12) = 2050;
      *(v15 + 14) = a4;
      *(v15 + 22) = 2082;
      v20 = sub_1AB030D2C(v12, *(&v12 + 1), &v46);

      *(v15 + 24) = v20;
      _os_log_impl(&dword_1AB012000, v14, v13, "%{public}s:%{public}lu: Requirement unsatisfied: %{public}s", v15, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1AC59F020](v16, -1, -1);
      MEMORY[0x1AC59F020](v15, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    if (byte_1EB43D128 == 2)
    {
      if (qword_1EB435660 != -1)
      {
        swift_once();
      }

      v21 = qword_1EB435668;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10, &unk_1AB4D4860);
      v22 = swift_allocObject();
      *(v22 + 16) = xmmword_1AB4D4720;
      v52 = sub_1AB0168A8(0, 31, 0, MEMORY[0x1E69E7CC0]);
      v23._countAndFlagsBits = 0;
      v23._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v23);
      v51 = MEMORY[0x1E69E6A70];
      *&v49 = a1;
      *(&v49 + 1) = a2;
      v50 = v7;
      sub_1AB01522C(&v49, v45);
      v46 = 0u;
      v47 = 0u;
      sub_1AB0169C4(v45, &v46);
      v48 = 0;
      v24 = v52;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v24 = sub_1AB0168A8(0, *(v24 + 2) + 1, 1, v24);
        v52 = v24;
      }

      v26 = *(v24 + 2);
      v25 = *(v24 + 3);
      if (v26 >= v25 >> 1)
      {
        v24 = sub_1AB0168A8((v25 > 1), v26 + 1, 1, v24);
      }

      *(v24 + 2) = v26 + 1;
      v27 = &v24[40 * v26];
      v28 = v46;
      v29 = v47;
      v27[64] = v48;
      *(v27 + 2) = v28;
      *(v27 + 3) = v29;
      v52 = v24;
      sub_1AB0167A8(&v49);
      v30._countAndFlagsBits = 58;
      v30._object = 0xE100000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v30);
      v51 = MEMORY[0x1E69E6810];
      *&v49 = a4;
      sub_1AB01522C(&v49, v45);
      v46 = 0u;
      v47 = 0u;
      sub_1AB0169C4(v45, &v46);
      v48 = 0;
      v31 = v52;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v31 = sub_1AB0168A8(0, *(v31 + 2) + 1, 1, v31);
        v52 = v31;
      }

      v33 = *(v31 + 2);
      v32 = *(v31 + 3);
      if (v33 >= v32 >> 1)
      {
        v31 = sub_1AB0168A8((v32 > 1), v33 + 1, 1, v31);
      }

      *(v31 + 2) = v33 + 1;
      v34 = &v31[40 * v33];
      v35 = v46;
      v36 = v47;
      v34[64] = v48;
      *(v34 + 2) = v35;
      *(v34 + 3) = v36;
      v52 = v31;
      sub_1AB0167A8(&v49);
      v37._countAndFlagsBits = 0xD00000000000001BLL;
      v37._object = 0x80000001AB50E540;
      LogMessage.StringInterpolation.appendLiteral(_:)(v37);
      *&v46 = 0;
      *(&v46 + 1) = 0xE000000000000000;
      sub_1AB4615D4();
      MEMORY[0x1AC59BA20](0xD000000000000022, 0x80000001AB50EB60);
      *&v49 = a5;
      sub_1AB461824();
      MEMORY[0x1AC59BA20](0xD00000000000003BLL, 0x80000001AB50EB90);
      v51 = MEMORY[0x1E69E6158];
      v49 = v46;
      sub_1AB01522C(&v49, v45);
      v46 = 0u;
      v47 = 0u;
      sub_1AB0169C4(v45, &v46);
      v48 = 0;
      v38 = v52;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v38 = sub_1AB0168A8(0, *(v38 + 2) + 1, 1, v38);
        v52 = v38;
      }

      v40 = *(v38 + 2);
      v39 = *(v38 + 3);
      if (v40 >= v39 >> 1)
      {
        v38 = sub_1AB0168A8((v39 > 1), v40 + 1, 1, v38);
      }

      *(v38 + 2) = v40 + 1;
      v41 = &v38[40 * v40];
      v42 = v46;
      v43 = v47;
      v41[64] = v48;
      *(v41 + 2) = v42;
      *(v41 + 3) = v43;
      v52 = v38;
      sub_1AB0167A8(&v49);
      v44._countAndFlagsBits = 0;
      v44._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v44);
      *(v22 + 32) = v52;
      *&v46 = v21;
      LOBYTE(v49) = 0;
      OSLogger.log(contentsOf:withLevel:)(v22, &v49);
      goto LABEL_26;
    }

    sub_1AB4615D4();
    MEMORY[0x1AC59BA20](0xD000000000000022, 0x80000001AB50EB60);
    sub_1AB461824();
    MEMORY[0x1AC59BA20](0xD00000000000003BLL, 0x80000001AB50EB90);
    sub_1AB461884();
    __break(1u);
  }
}

void sub_1AB40658C(unint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a3;
  if (qword_1EB435DF8 != -1)
  {
    swift_once();
  }

  sub_1AB4622E4();
  v8 = v42;
  if (v42)
  {
    v9 = *(&v42 + 1);
    *&v42 = 0xD000000000000024;
    *(&v42 + 1) = 0x80000001AB50E9F0;
    v8(&v42);
    sub_1AB0177B8(v8, v9);
  }

  else
  {
    if (qword_1EB435DF0 != -1)
    {
      swift_once();
    }

    if (byte_1EB43D128 == 1)
    {
      v10 = sub_1AB461084();
      sub_1AB016760(0, &qword_1ED4D21E0, 0x1E69E9BF8);
      v11 = sub_1AB461324();
      if (os_log_type_enabled(v11, v10))
      {
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        *&v42 = v13;
        *v12 = 136446722;
        v14 = sub_1AB461614();
        v16 = sub_1AB030D2C(v14, v15, &v42);

        *(v12 + 4) = v16;
        *(v12 + 12) = 2050;
        *(v12 + 14) = a4;
        *(v12 + 22) = 2082;
        *(v12 + 24) = sub_1AB030D2C(0xD000000000000024, 0x80000001AB50E9F0, &v42);
        _os_log_impl(&dword_1AB012000, v11, v10, "%{public}s:%{public}lu: Requirement unsatisfied: %{public}s", v12, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1AC59F020](v13, -1, -1);
        MEMORY[0x1AC59F020](v12, -1, -1);
      }
    }

    else if (byte_1EB43D128 == 2)
    {
      if (qword_1EB435660 != -1)
      {
        swift_once();
      }

      v17 = qword_1EB435668;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10, &unk_1AB4D4860);
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_1AB4D4720;
      v49 = sub_1AB0168A8(0, 31, 0, MEMORY[0x1E69E7CC0]);
      v19._countAndFlagsBits = 0;
      v19._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v19);
      v48 = MEMORY[0x1E69E6A70];
      v45 = a1;
      v46 = a2;
      v47 = v5;
      sub_1AB01522C(&v45, v41);
      v42 = 0u;
      v43 = 0u;
      sub_1AB0169C4(v41, &v42);
      v44 = 0;
      v20 = v49;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v20 = sub_1AB0168A8(0, *(v20 + 2) + 1, 1, v20);
        v49 = v20;
      }

      v22 = *(v20 + 2);
      v21 = *(v20 + 3);
      if (v22 >= v21 >> 1)
      {
        v20 = sub_1AB0168A8((v21 > 1), v22 + 1, 1, v20);
      }

      *(v20 + 2) = v22 + 1;
      v23 = &v20[40 * v22];
      v24 = v42;
      v25 = v43;
      v23[64] = v44;
      *(v23 + 2) = v24;
      *(v23 + 3) = v25;
      v49 = v20;
      sub_1AB0167A8(&v45);
      v26._countAndFlagsBits = 58;
      v26._object = 0xE100000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v26);
      v48 = MEMORY[0x1E69E6810];
      v45 = a4;
      sub_1AB01522C(&v45, v41);
      v42 = 0u;
      v43 = 0u;
      sub_1AB0169C4(v41, &v42);
      v44 = 0;
      v27 = v49;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v27 = sub_1AB0168A8(0, *(v27 + 2) + 1, 1, v27);
        v49 = v27;
      }

      v29 = *(v27 + 2);
      v28 = *(v27 + 3);
      if (v29 >= v28 >> 1)
      {
        v27 = sub_1AB0168A8((v28 > 1), v29 + 1, 1, v27);
      }

      *(v27 + 2) = v29 + 1;
      v30 = &v27[40 * v29];
      v31 = v42;
      v32 = v43;
      v30[64] = v44;
      *(v30 + 2) = v31;
      *(v30 + 3) = v32;
      v49 = v27;
      sub_1AB0167A8(&v45);
      v33._countAndFlagsBits = 0xD00000000000001BLL;
      v33._object = 0x80000001AB50E540;
      LogMessage.StringInterpolation.appendLiteral(_:)(v33);
      v48 = MEMORY[0x1E69E6158];
      v45 = 0xD000000000000024;
      v46 = 0x80000001AB50E9F0;
      sub_1AB01522C(&v45, v41);
      v42 = 0u;
      v43 = 0u;
      sub_1AB0169C4(v41, &v42);
      v44 = 0;
      v34 = v49;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v34 = sub_1AB0168A8(0, *(v34 + 2) + 1, 1, v34);
        v49 = v34;
      }

      v36 = *(v34 + 2);
      v35 = *(v34 + 3);
      if (v36 >= v35 >> 1)
      {
        v34 = sub_1AB0168A8((v35 > 1), v36 + 1, 1, v34);
      }

      *(v34 + 2) = v36 + 1;
      v37 = &v34[40 * v36];
      v38 = v42;
      v39 = v43;
      v37[64] = v44;
      *(v37 + 2) = v38;
      *(v37 + 3) = v39;
      v49 = v34;
      sub_1AB0167A8(&v45);
      v40._countAndFlagsBits = 0;
      v40._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v40);
      *(v18 + 32) = v49;
      *&v42 = v17;
      LOBYTE(v45) = 0;
      OSLogger.log(contentsOf:withLevel:)(v18, &v45);
    }

    else
    {
      sub_1AB461884();
      __break(1u);
    }
  }
}

void sub_1AB406B74(unint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a3;
  if (qword_1EB435DF8 != -1)
  {
    swift_once();
  }

  sub_1AB4622E4();
  v8 = v42;
  if (v42)
  {
    v9 = *(&v42 + 1);
    *&v42 = 0xD000000000000080;
    *(&v42 + 1) = 0x80000001AB50EF40;
    v8(&v42);
    sub_1AB0177B8(v8, v9);
  }

  else
  {
    if (qword_1EB435DF0 != -1)
    {
      swift_once();
    }

    if (byte_1EB43D128 == 1)
    {
      v10 = sub_1AB461084();
      sub_1AB016760(0, &qword_1ED4D21E0, 0x1E69E9BF8);
      v11 = sub_1AB461324();
      if (os_log_type_enabled(v11, v10))
      {
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        *&v42 = v13;
        *v12 = 136446722;
        v14 = sub_1AB461614();
        v16 = sub_1AB030D2C(v14, v15, &v42);

        *(v12 + 4) = v16;
        *(v12 + 12) = 2050;
        *(v12 + 14) = a4;
        *(v12 + 22) = 2082;
        *(v12 + 24) = sub_1AB030D2C(0xD000000000000080, 0x80000001AB50EF40, &v42);
        _os_log_impl(&dword_1AB012000, v11, v10, "%{public}s:%{public}lu: Requirement unsatisfied: %{public}s", v12, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1AC59F020](v13, -1, -1);
        MEMORY[0x1AC59F020](v12, -1, -1);
      }
    }

    else if (byte_1EB43D128 == 2)
    {
      if (qword_1EB435660 != -1)
      {
        swift_once();
      }

      v17 = qword_1EB435668;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10, &unk_1AB4D4860);
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_1AB4D4720;
      v49 = sub_1AB0168A8(0, 31, 0, MEMORY[0x1E69E7CC0]);
      v19._countAndFlagsBits = 0;
      v19._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v19);
      v48 = MEMORY[0x1E69E6A70];
      v45 = a1;
      v46 = a2;
      v47 = v5;
      sub_1AB01522C(&v45, v41);
      v42 = 0u;
      v43 = 0u;
      sub_1AB0169C4(v41, &v42);
      v44 = 0;
      v20 = v49;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v20 = sub_1AB0168A8(0, *(v20 + 2) + 1, 1, v20);
        v49 = v20;
      }

      v22 = *(v20 + 2);
      v21 = *(v20 + 3);
      if (v22 >= v21 >> 1)
      {
        v20 = sub_1AB0168A8((v21 > 1), v22 + 1, 1, v20);
      }

      *(v20 + 2) = v22 + 1;
      v23 = &v20[40 * v22];
      v24 = v42;
      v25 = v43;
      v23[64] = v44;
      *(v23 + 2) = v24;
      *(v23 + 3) = v25;
      v49 = v20;
      sub_1AB0167A8(&v45);
      v26._countAndFlagsBits = 58;
      v26._object = 0xE100000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v26);
      v48 = MEMORY[0x1E69E6810];
      v45 = a4;
      sub_1AB01522C(&v45, v41);
      v42 = 0u;
      v43 = 0u;
      sub_1AB0169C4(v41, &v42);
      v44 = 0;
      v27 = v49;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v27 = sub_1AB0168A8(0, *(v27 + 2) + 1, 1, v27);
        v49 = v27;
      }

      v29 = *(v27 + 2);
      v28 = *(v27 + 3);
      if (v29 >= v28 >> 1)
      {
        v27 = sub_1AB0168A8((v28 > 1), v29 + 1, 1, v27);
      }

      *(v27 + 2) = v29 + 1;
      v30 = &v27[40 * v29];
      v31 = v42;
      v32 = v43;
      v30[64] = v44;
      *(v30 + 2) = v31;
      *(v30 + 3) = v32;
      v49 = v27;
      sub_1AB0167A8(&v45);
      v33._countAndFlagsBits = 0xD00000000000001BLL;
      v33._object = 0x80000001AB50E540;
      LogMessage.StringInterpolation.appendLiteral(_:)(v33);
      v48 = MEMORY[0x1E69E6158];
      v45 = 0xD000000000000080;
      v46 = 0x80000001AB50EF40;
      sub_1AB01522C(&v45, v41);
      v42 = 0u;
      v43 = 0u;
      sub_1AB0169C4(v41, &v42);
      v44 = 0;
      v34 = v49;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v34 = sub_1AB0168A8(0, *(v34 + 2) + 1, 1, v34);
        v49 = v34;
      }

      v36 = *(v34 + 2);
      v35 = *(v34 + 3);
      if (v36 >= v35 >> 1)
      {
        v34 = sub_1AB0168A8((v35 > 1), v36 + 1, 1, v34);
      }

      *(v34 + 2) = v36 + 1;
      v37 = &v34[40 * v36];
      v38 = v42;
      v39 = v43;
      v37[64] = v44;
      *(v37 + 2) = v38;
      *(v37 + 3) = v39;
      v49 = v34;
      sub_1AB0167A8(&v45);
      v40._countAndFlagsBits = 0;
      v40._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v40);
      *(v18 + 32) = v49;
      *&v42 = v17;
      LOBYTE(v45) = 0;
      OSLogger.log(contentsOf:withLevel:)(v18, &v45);
    }

    else
    {
      sub_1AB461884();
      __break(1u);
    }
  }
}

void sub_1AB40715C(unint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a3;
  if (qword_1EB435DF8 != -1)
  {
    swift_once();
  }

  sub_1AB4622E4();
  v8 = v42;
  if (v42)
  {
    v9 = *(&v42 + 1);
    *&v42 = 0xD00000000000001ALL;
    *(&v42 + 1) = 0x80000001AB50EF20;
    v8(&v42);
    sub_1AB0177B8(v8, v9);
  }

  else
  {
    if (qword_1EB435DF0 != -1)
    {
      swift_once();
    }

    if (byte_1EB43D128 == 1)
    {
      v10 = sub_1AB461084();
      sub_1AB016760(0, &qword_1ED4D21E0, 0x1E69E9BF8);
      v11 = sub_1AB461324();
      if (os_log_type_enabled(v11, v10))
      {
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        *&v42 = v13;
        *v12 = 136446722;
        v14 = sub_1AB461614();
        v16 = sub_1AB030D2C(v14, v15, &v42);

        *(v12 + 4) = v16;
        *(v12 + 12) = 2050;
        *(v12 + 14) = a4;
        *(v12 + 22) = 2082;
        *(v12 + 24) = sub_1AB030D2C(0xD00000000000001ALL, 0x80000001AB50EF20, &v42);
        _os_log_impl(&dword_1AB012000, v11, v10, "%{public}s:%{public}lu: Requirement unsatisfied: %{public}s", v12, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1AC59F020](v13, -1, -1);
        MEMORY[0x1AC59F020](v12, -1, -1);
      }
    }

    else if (byte_1EB43D128 == 2)
    {
      if (qword_1EB435660 != -1)
      {
        swift_once();
      }

      v17 = qword_1EB435668;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10, &unk_1AB4D4860);
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_1AB4D4720;
      v49 = sub_1AB0168A8(0, 31, 0, MEMORY[0x1E69E7CC0]);
      v19._countAndFlagsBits = 0;
      v19._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v19);
      v48 = MEMORY[0x1E69E6A70];
      v45 = a1;
      v46 = a2;
      v47 = v5;
      sub_1AB01522C(&v45, v41);
      v42 = 0u;
      v43 = 0u;
      sub_1AB0169C4(v41, &v42);
      v44 = 0;
      v20 = v49;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v20 = sub_1AB0168A8(0, *(v20 + 2) + 1, 1, v20);
        v49 = v20;
      }

      v22 = *(v20 + 2);
      v21 = *(v20 + 3);
      if (v22 >= v21 >> 1)
      {
        v20 = sub_1AB0168A8((v21 > 1), v22 + 1, 1, v20);
      }

      *(v20 + 2) = v22 + 1;
      v23 = &v20[40 * v22];
      v24 = v42;
      v25 = v43;
      v23[64] = v44;
      *(v23 + 2) = v24;
      *(v23 + 3) = v25;
      v49 = v20;
      sub_1AB0167A8(&v45);
      v26._countAndFlagsBits = 58;
      v26._object = 0xE100000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v26);
      v48 = MEMORY[0x1E69E6810];
      v45 = a4;
      sub_1AB01522C(&v45, v41);
      v42 = 0u;
      v43 = 0u;
      sub_1AB0169C4(v41, &v42);
      v44 = 0;
      v27 = v49;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v27 = sub_1AB0168A8(0, *(v27 + 2) + 1, 1, v27);
        v49 = v27;
      }

      v29 = *(v27 + 2);
      v28 = *(v27 + 3);
      if (v29 >= v28 >> 1)
      {
        v27 = sub_1AB0168A8((v28 > 1), v29 + 1, 1, v27);
      }

      *(v27 + 2) = v29 + 1;
      v30 = &v27[40 * v29];
      v31 = v42;
      v32 = v43;
      v30[64] = v44;
      *(v30 + 2) = v31;
      *(v30 + 3) = v32;
      v49 = v27;
      sub_1AB0167A8(&v45);
      v33._countAndFlagsBits = 0xD00000000000001BLL;
      v33._object = 0x80000001AB50E540;
      LogMessage.StringInterpolation.appendLiteral(_:)(v33);
      v48 = MEMORY[0x1E69E6158];
      v45 = 0xD00000000000001ALL;
      v46 = 0x80000001AB50EF20;
      sub_1AB01522C(&v45, v41);
      v42 = 0u;
      v43 = 0u;
      sub_1AB0169C4(v41, &v42);
      v44 = 0;
      v34 = v49;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v34 = sub_1AB0168A8(0, *(v34 + 2) + 1, 1, v34);
        v49 = v34;
      }

      v36 = *(v34 + 2);
      v35 = *(v34 + 3);
      if (v36 >= v35 >> 1)
      {
        v34 = sub_1AB0168A8((v35 > 1), v36 + 1, 1, v34);
      }

      *(v34 + 2) = v36 + 1;
      v37 = &v34[40 * v36];
      v38 = v42;
      v39 = v43;
      v37[64] = v44;
      *(v37 + 2) = v38;
      *(v37 + 3) = v39;
      v49 = v34;
      sub_1AB0167A8(&v45);
      v40._countAndFlagsBits = 0;
      v40._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v40);
      *(v18 + 32) = v49;
      *&v42 = v17;
      LOBYTE(v45) = 0;
      OSLogger.log(contentsOf:withLevel:)(v18, &v45);
    }

    else
    {
      sub_1AB461884();
      __break(1u);
    }
  }
}

void sub_1AB407744(unint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a3;
  if (qword_1EB435DF8 != -1)
  {
    swift_once();
  }

  sub_1AB4622E4();
  v8 = v42;
  if (v42)
  {
    v9 = *(&v42 + 1);
    *&v42 = 0xD000000000000090;
    *(&v42 + 1) = 0x80000001AB50EDE0;
    v8(&v42);
    sub_1AB0177B8(v8, v9);
  }

  else
  {
    if (qword_1EB435DF0 != -1)
    {
      swift_once();
    }

    if (byte_1EB43D128 == 1)
    {
      v10 = sub_1AB461084();
      sub_1AB016760(0, &qword_1ED4D21E0, 0x1E69E9BF8);
      v11 = sub_1AB461324();
      if (os_log_type_enabled(v11, v10))
      {
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        *&v42 = v13;
        *v12 = 136446722;
        v14 = sub_1AB461614();
        v16 = sub_1AB030D2C(v14, v15, &v42);

        *(v12 + 4) = v16;
        *(v12 + 12) = 2050;
        *(v12 + 14) = a4;
        *(v12 + 22) = 2082;
        *(v12 + 24) = sub_1AB030D2C(0xD000000000000090, 0x80000001AB50EDE0, &v42);
        _os_log_impl(&dword_1AB012000, v11, v10, "%{public}s:%{public}lu: Requirement unsatisfied: %{public}s", v12, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1AC59F020](v13, -1, -1);
        MEMORY[0x1AC59F020](v12, -1, -1);
      }
    }

    else if (byte_1EB43D128 == 2)
    {
      if (qword_1EB435660 != -1)
      {
        swift_once();
      }

      v17 = qword_1EB435668;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10, &unk_1AB4D4860);
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_1AB4D4720;
      v49 = sub_1AB0168A8(0, 31, 0, MEMORY[0x1E69E7CC0]);
      v19._countAndFlagsBits = 0;
      v19._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v19);
      v48 = MEMORY[0x1E69E6A70];
      v45 = a1;
      v46 = a2;
      v47 = v5;
      sub_1AB01522C(&v45, v41);
      v42 = 0u;
      v43 = 0u;
      sub_1AB0169C4(v41, &v42);
      v44 = 0;
      v20 = v49;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v20 = sub_1AB0168A8(0, *(v20 + 2) + 1, 1, v20);
        v49 = v20;
      }

      v22 = *(v20 + 2);
      v21 = *(v20 + 3);
      if (v22 >= v21 >> 1)
      {
        v20 = sub_1AB0168A8((v21 > 1), v22 + 1, 1, v20);
      }

      *(v20 + 2) = v22 + 1;
      v23 = &v20[40 * v22];
      v24 = v42;
      v25 = v43;
      v23[64] = v44;
      *(v23 + 2) = v24;
      *(v23 + 3) = v25;
      v49 = v20;
      sub_1AB0167A8(&v45);
      v26._countAndFlagsBits = 58;
      v26._object = 0xE100000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v26);
      v48 = MEMORY[0x1E69E6810];
      v45 = a4;
      sub_1AB01522C(&v45, v41);
      v42 = 0u;
      v43 = 0u;
      sub_1AB0169C4(v41, &v42);
      v44 = 0;
      v27 = v49;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v27 = sub_1AB0168A8(0, *(v27 + 2) + 1, 1, v27);
        v49 = v27;
      }

      v29 = *(v27 + 2);
      v28 = *(v27 + 3);
      if (v29 >= v28 >> 1)
      {
        v27 = sub_1AB0168A8((v28 > 1), v29 + 1, 1, v27);
      }

      *(v27 + 2) = v29 + 1;
      v30 = &v27[40 * v29];
      v31 = v42;
      v32 = v43;
      v30[64] = v44;
      *(v30 + 2) = v31;
      *(v30 + 3) = v32;
      v49 = v27;
      sub_1AB0167A8(&v45);
      v33._countAndFlagsBits = 0xD00000000000001BLL;
      v33._object = 0x80000001AB50E540;
      LogMessage.StringInterpolation.appendLiteral(_:)(v33);
      v48 = MEMORY[0x1E69E6158];
      v45 = 0xD000000000000090;
      v46 = 0x80000001AB50EDE0;
      sub_1AB01522C(&v45, v41);
      v42 = 0u;
      v43 = 0u;
      sub_1AB0169C4(v41, &v42);
      v44 = 0;
      v34 = v49;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v34 = sub_1AB0168A8(0, *(v34 + 2) + 1, 1, v34);
        v49 = v34;
      }

      v36 = *(v34 + 2);
      v35 = *(v34 + 3);
      if (v36 >= v35 >> 1)
      {
        v34 = sub_1AB0168A8((v35 > 1), v36 + 1, 1, v34);
      }

      *(v34 + 2) = v36 + 1;
      v37 = &v34[40 * v36];
      v38 = v42;
      v39 = v43;
      v37[64] = v44;
      *(v37 + 2) = v38;
      *(v37 + 3) = v39;
      v49 = v34;
      sub_1AB0167A8(&v45);
      v40._countAndFlagsBits = 0;
      v40._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v40);
      *(v18 + 32) = v49;
      *&v42 = v17;
      LOBYTE(v45) = 0;
      OSLogger.log(contentsOf:withLevel:)(v18, &v45);
    }

    else
    {
      sub_1AB461884();
      __break(1u);
    }
  }
}

void sub_1AB407D2C(unint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a3;
  if (qword_1EB435DF8 != -1)
  {
    swift_once();
  }

  sub_1AB4622E4();
  v8 = v42;
  if (v42)
  {
    v9 = *(&v42 + 1);
    *&v42 = 0xD000000000000095;
    *(&v42 + 1) = 0x80000001AB50EE80;
    v8(&v42);
    sub_1AB0177B8(v8, v9);
  }

  else
  {
    if (qword_1EB435DF0 != -1)
    {
      swift_once();
    }

    if (byte_1EB43D128 == 1)
    {
      v10 = sub_1AB461084();
      sub_1AB016760(0, &qword_1ED4D21E0, 0x1E69E9BF8);
      v11 = sub_1AB461324();
      if (os_log_type_enabled(v11, v10))
      {
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        *&v42 = v13;
        *v12 = 136446722;
        v14 = sub_1AB461614();
        v16 = sub_1AB030D2C(v14, v15, &v42);

        *(v12 + 4) = v16;
        *(v12 + 12) = 2050;
        *(v12 + 14) = a4;
        *(v12 + 22) = 2082;
        *(v12 + 24) = sub_1AB030D2C(0xD000000000000095, 0x80000001AB50EE80, &v42);
        _os_log_impl(&dword_1AB012000, v11, v10, "%{public}s:%{public}lu: Requirement unsatisfied: %{public}s", v12, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1AC59F020](v13, -1, -1);
        MEMORY[0x1AC59F020](v12, -1, -1);
      }
    }

    else if (byte_1EB43D128 == 2)
    {
      if (qword_1EB435660 != -1)
      {
        swift_once();
      }

      v17 = qword_1EB435668;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10, &unk_1AB4D4860);
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_1AB4D4720;
      v49 = sub_1AB0168A8(0, 31, 0, MEMORY[0x1E69E7CC0]);
      v19._countAndFlagsBits = 0;
      v19._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v19);
      v48 = MEMORY[0x1E69E6A70];
      v45 = a1;
      v46 = a2;
      v47 = v5;
      sub_1AB01522C(&v45, v41);
      v42 = 0u;
      v43 = 0u;
      sub_1AB0169C4(v41, &v42);
      v44 = 0;
      v20 = v49;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v20 = sub_1AB0168A8(0, *(v20 + 2) + 1, 1, v20);
        v49 = v20;
      }

      v22 = *(v20 + 2);
      v21 = *(v20 + 3);
      if (v22 >= v21 >> 1)
      {
        v20 = sub_1AB0168A8((v21 > 1), v22 + 1, 1, v20);
      }

      *(v20 + 2) = v22 + 1;
      v23 = &v20[40 * v22];
      v24 = v42;
      v25 = v43;
      v23[64] = v44;
      *(v23 + 2) = v24;
      *(v23 + 3) = v25;
      v49 = v20;
      sub_1AB0167A8(&v45);
      v26._countAndFlagsBits = 58;
      v26._object = 0xE100000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v26);
      v48 = MEMORY[0x1E69E6810];
      v45 = a4;
      sub_1AB01522C(&v45, v41);
      v42 = 0u;
      v43 = 0u;
      sub_1AB0169C4(v41, &v42);
      v44 = 0;
      v27 = v49;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v27 = sub_1AB0168A8(0, *(v27 + 2) + 1, 1, v27);
        v49 = v27;
      }

      v29 = *(v27 + 2);
      v28 = *(v27 + 3);
      if (v29 >= v28 >> 1)
      {
        v27 = sub_1AB0168A8((v28 > 1), v29 + 1, 1, v27);
      }

      *(v27 + 2) = v29 + 1;
      v30 = &v27[40 * v29];
      v31 = v42;
      v32 = v43;
      v30[64] = v44;
      *(v30 + 2) = v31;
      *(v30 + 3) = v32;
      v49 = v27;
      sub_1AB0167A8(&v45);
      v33._countAndFlagsBits = 0xD00000000000001BLL;
      v33._object = 0x80000001AB50E540;
      LogMessage.StringInterpolation.appendLiteral(_:)(v33);
      v48 = MEMORY[0x1E69E6158];
      v45 = 0xD000000000000095;
      v46 = 0x80000001AB50EE80;
      sub_1AB01522C(&v45, v41);
      v42 = 0u;
      v43 = 0u;
      sub_1AB0169C4(v41, &v42);
      v44 = 0;
      v34 = v49;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v34 = sub_1AB0168A8(0, *(v34 + 2) + 1, 1, v34);
        v49 = v34;
      }

      v36 = *(v34 + 2);
      v35 = *(v34 + 3);
      if (v36 >= v35 >> 1)
      {
        v34 = sub_1AB0168A8((v35 > 1), v36 + 1, 1, v34);
      }

      *(v34 + 2) = v36 + 1;
      v37 = &v34[40 * v36];
      v38 = v42;
      v39 = v43;
      v37[64] = v44;
      *(v37 + 2) = v38;
      *(v37 + 3) = v39;
      v49 = v34;
      sub_1AB0167A8(&v45);
      v40._countAndFlagsBits = 0;
      v40._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v40);
      *(v18 + 32) = v49;
      *&v42 = v17;
      LOBYTE(v45) = 0;
      OSLogger.log(contentsOf:withLevel:)(v18, &v45);
    }

    else
    {
      sub_1AB461884();
      __break(1u);
    }
  }
}

void sub_1AB408314(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a3;
  if (qword_1EB435DF8 != -1)
  {
    swift_once();
  }

  sub_1AB4622E4();
  v8 = v44;
  if (v44)
  {
    v9 = *(&v44 + 1);
    *&v44 = 0;
    *(&v44 + 1) = 0xE000000000000000;
    sub_1AB4615D4();
    MEMORY[0x1AC59BA20](0xD000000000000011, 0x80000001AB50DA50);
    MEMORY[0x1AC59BA20](0xD00000000000001ALL, 0x80000001AB50E890);
    MEMORY[0x1AC59BA20](0xD000000000000020, 0x80000001AB50DA70);

    MEMORY[0x1AC59BA20](0xD000000000000032, 0x80000001AB50DAA0);

    v8(&v44);
    sub_1AB0177B8(v8, v9);
LABEL_26:

    return;
  }

  if (qword_1EB435DF0 != -1)
  {
    swift_once();
  }

  if (byte_1EB43D128 == 1)
  {
    *&v44 = 0;
    *(&v44 + 1) = 0xE000000000000000;
    sub_1AB4615D4();
    MEMORY[0x1AC59BA20](0xD000000000000011, 0x80000001AB50DA50);
    MEMORY[0x1AC59BA20](0xD00000000000001ALL, 0x80000001AB50E890);
    MEMORY[0x1AC59BA20](0xD000000000000020, 0x80000001AB50DA70);

    MEMORY[0x1AC59BA20](0xD000000000000032, 0x80000001AB50DAA0);

    v10 = v44;
    v11 = sub_1AB461084();
    sub_1AB016760(0, &qword_1ED4D21E0, 0x1E69E9BF8);
    v12 = sub_1AB461324();
    if (os_log_type_enabled(v12, v11))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *&v44 = v14;
      *v13 = 136446722;
      v15 = sub_1AB461614();
      v17 = sub_1AB030D2C(v15, v16, &v44);

      *(v13 + 4) = v17;
      *(v13 + 12) = 2050;
      *(v13 + 14) = a4;
      *(v13 + 22) = 2082;
      v18 = sub_1AB030D2C(v10, *(&v10 + 1), &v44);

      *(v13 + 24) = v18;
      _os_log_impl(&dword_1AB012000, v12, v11, "%{public}s:%{public}lu: Requirement unsatisfied: %{public}s", v13, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1AC59F020](v14, -1, -1);
      MEMORY[0x1AC59F020](v13, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    if (byte_1EB43D128 == 2)
    {
      if (qword_1EB435660 != -1)
      {
        swift_once();
      }

      v19 = qword_1EB435668;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10, &unk_1AB4D4860);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_1AB4D4720;
      v50 = sub_1AB0168A8(0, 31, 0, MEMORY[0x1E69E7CC0]);
      v21._countAndFlagsBits = 0;
      v21._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v21);
      v49 = MEMORY[0x1E69E6A70];
      *&v47 = a1;
      *(&v47 + 1) = a2;
      v48 = v5;
      sub_1AB01522C(&v47, v43);
      v44 = 0u;
      v45 = 0u;
      sub_1AB0169C4(v43, &v44);
      v46 = 0;
      v22 = v50;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v22 = sub_1AB0168A8(0, *(v22 + 2) + 1, 1, v22);
        v50 = v22;
      }

      v24 = *(v22 + 2);
      v23 = *(v22 + 3);
      if (v24 >= v23 >> 1)
      {
        v22 = sub_1AB0168A8((v23 > 1), v24 + 1, 1, v22);
      }

      *(v22 + 2) = v24 + 1;
      v25 = &v22[40 * v24];
      v26 = v44;
      v27 = v45;
      v25[64] = v46;
      *(v25 + 2) = v26;
      *(v25 + 3) = v27;
      v50 = v22;
      sub_1AB0167A8(&v47);
      v28._countAndFlagsBits = 58;
      v28._object = 0xE100000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v28);
      v49 = MEMORY[0x1E69E6810];
      *&v47 = a4;
      sub_1AB01522C(&v47, v43);
      v44 = 0u;
      v45 = 0u;
      sub_1AB0169C4(v43, &v44);
      v46 = 0;
      v29 = v50;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v29 = sub_1AB0168A8(0, *(v29 + 2) + 1, 1, v29);
        v50 = v29;
      }

      v31 = *(v29 + 2);
      v30 = *(v29 + 3);
      if (v31 >= v30 >> 1)
      {
        v29 = sub_1AB0168A8((v30 > 1), v31 + 1, 1, v29);
      }

      *(v29 + 2) = v31 + 1;
      v32 = &v29[40 * v31];
      v33 = v44;
      v34 = v45;
      v32[64] = v46;
      *(v32 + 2) = v33;
      *(v32 + 3) = v34;
      v50 = v29;
      sub_1AB0167A8(&v47);
      v35._countAndFlagsBits = 0xD00000000000001BLL;
      v35._object = 0x80000001AB50E540;
      LogMessage.StringInterpolation.appendLiteral(_:)(v35);
      *&v44 = 0;
      *(&v44 + 1) = 0xE000000000000000;
      sub_1AB4615D4();
      MEMORY[0x1AC59BA20](0xD000000000000011, 0x80000001AB50DA50);
      MEMORY[0x1AC59BA20](0xD00000000000001ALL, 0x80000001AB50E890);
      MEMORY[0x1AC59BA20](0xD000000000000020, 0x80000001AB50DA70);

      MEMORY[0x1AC59BA20](0xD000000000000032, 0x80000001AB50DAA0);

      v49 = MEMORY[0x1E69E6158];
      v47 = v44;
      sub_1AB01522C(&v47, v43);
      v44 = 0u;
      v45 = 0u;
      sub_1AB0169C4(v43, &v44);
      v46 = 0;
      v36 = v50;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v36 = sub_1AB0168A8(0, *(v36 + 2) + 1, 1, v36);
        v50 = v36;
      }

      v38 = *(v36 + 2);
      v37 = *(v36 + 3);
      if (v38 >= v37 >> 1)
      {
        v36 = sub_1AB0168A8((v37 > 1), v38 + 1, 1, v36);
      }

      *(v36 + 2) = v38 + 1;
      v39 = &v36[40 * v38];
      v40 = v44;
      v41 = v45;
      v39[64] = v46;
      *(v39 + 2) = v40;
      *(v39 + 3) = v41;
      v50 = v36;
      sub_1AB0167A8(&v47);
      v42._countAndFlagsBits = 0;
      v42._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v42);
      *(v20 + 32) = v50;
      *&v44 = v19;
      LOBYTE(v47) = 0;
      OSLogger.log(contentsOf:withLevel:)(v20, &v47);
      goto LABEL_26;
    }

    sub_1AB4615D4();
    MEMORY[0x1AC59BA20](0xD000000000000011, 0x80000001AB50DA50);
    MEMORY[0x1AC59BA20](0xD00000000000001ALL, 0x80000001AB50E890);
    MEMORY[0x1AC59BA20](0xD000000000000020, 0x80000001AB50DA70);

    MEMORY[0x1AC59BA20](0xD000000000000032, 0x80000001AB50DAA0);

    sub_1AB461884();
    __break(1u);
  }
}

void sub_1AB408B9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a3;
  if (qword_1EB435DF8 != -1)
  {
    swift_once();
  }

  sub_1AB4622E4();
  v8 = v44;
  if (v44)
  {
    v9 = *(&v44 + 1);
    *&v44 = 0;
    *(&v44 + 1) = 0xE000000000000000;
    sub_1AB4615D4();
    MEMORY[0x1AC59BA20](0xD000000000000011, 0x80000001AB50DA50);
    MEMORY[0x1AC59BA20](0xD00000000000001DLL, 0x80000001AB50E850);
    MEMORY[0x1AC59BA20](0xD000000000000020, 0x80000001AB50DA70);

    MEMORY[0x1AC59BA20](0xD000000000000032, 0x80000001AB50DAA0);

    v8(&v44);
    sub_1AB0177B8(v8, v9);
LABEL_26:

    return;
  }

  if (qword_1EB435DF0 != -1)
  {
    swift_once();
  }

  if (byte_1EB43D128 == 1)
  {
    *&v44 = 0;
    *(&v44 + 1) = 0xE000000000000000;
    sub_1AB4615D4();
    MEMORY[0x1AC59BA20](0xD000000000000011, 0x80000001AB50DA50);
    MEMORY[0x1AC59BA20](0xD00000000000001DLL, 0x80000001AB50E850);
    MEMORY[0x1AC59BA20](0xD000000000000020, 0x80000001AB50DA70);

    MEMORY[0x1AC59BA20](0xD000000000000032, 0x80000001AB50DAA0);

    v10 = v44;
    v11 = sub_1AB461084();
    sub_1AB016760(0, &qword_1ED4D21E0, 0x1E69E9BF8);
    v12 = sub_1AB461324();
    if (os_log_type_enabled(v12, v11))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *&v44 = v14;
      *v13 = 136446722;
      v15 = sub_1AB461614();
      v17 = sub_1AB030D2C(v15, v16, &v44);

      *(v13 + 4) = v17;
      *(v13 + 12) = 2050;
      *(v13 + 14) = a4;
      *(v13 + 22) = 2082;
      v18 = sub_1AB030D2C(v10, *(&v10 + 1), &v44);

      *(v13 + 24) = v18;
      _os_log_impl(&dword_1AB012000, v12, v11, "%{public}s:%{public}lu: Requirement unsatisfied: %{public}s", v13, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1AC59F020](v14, -1, -1);
      MEMORY[0x1AC59F020](v13, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    if (byte_1EB43D128 == 2)
    {
      if (qword_1EB435660 != -1)
      {
        swift_once();
      }

      v19 = qword_1EB435668;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10, &unk_1AB4D4860);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_1AB4D4720;
      v50 = sub_1AB0168A8(0, 31, 0, MEMORY[0x1E69E7CC0]);
      v21._countAndFlagsBits = 0;
      v21._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v21);
      v49 = MEMORY[0x1E69E6A70];
      *&v47 = a1;
      *(&v47 + 1) = a2;
      v48 = v5;
      sub_1AB01522C(&v47, v43);
      v44 = 0u;
      v45 = 0u;
      sub_1AB0169C4(v43, &v44);
      v46 = 0;
      v22 = v50;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v22 = sub_1AB0168A8(0, *(v22 + 2) + 1, 1, v22);
        v50 = v22;
      }

      v24 = *(v22 + 2);
      v23 = *(v22 + 3);
      if (v24 >= v23 >> 1)
      {
        v22 = sub_1AB0168A8((v23 > 1), v24 + 1, 1, v22);
      }

      *(v22 + 2) = v24 + 1;
      v25 = &v22[40 * v24];
      v26 = v44;
      v27 = v45;
      v25[64] = v46;
      *(v25 + 2) = v26;
      *(v25 + 3) = v27;
      v50 = v22;
      sub_1AB0167A8(&v47);
      v28._countAndFlagsBits = 58;
      v28._object = 0xE100000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v28);
      v49 = MEMORY[0x1E69E6810];
      *&v47 = a4;
      sub_1AB01522C(&v47, v43);
      v44 = 0u;
      v45 = 0u;
      sub_1AB0169C4(v43, &v44);
      v46 = 0;
      v29 = v50;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v29 = sub_1AB0168A8(0, *(v29 + 2) + 1, 1, v29);
        v50 = v29;
      }

      v31 = *(v29 + 2);
      v30 = *(v29 + 3);
      if (v31 >= v30 >> 1)
      {
        v29 = sub_1AB0168A8((v30 > 1), v31 + 1, 1, v29);
      }

      *(v29 + 2) = v31 + 1;
      v32 = &v29[40 * v31];
      v33 = v44;
      v34 = v45;
      v32[64] = v46;
      *(v32 + 2) = v33;
      *(v32 + 3) = v34;
      v50 = v29;
      sub_1AB0167A8(&v47);
      v35._countAndFlagsBits = 0xD00000000000001BLL;
      v35._object = 0x80000001AB50E540;
      LogMessage.StringInterpolation.appendLiteral(_:)(v35);
      *&v44 = 0;
      *(&v44 + 1) = 0xE000000000000000;
      sub_1AB4615D4();
      MEMORY[0x1AC59BA20](0xD000000000000011, 0x80000001AB50DA50);
      MEMORY[0x1AC59BA20](0xD00000000000001DLL, 0x80000001AB50E850);
      MEMORY[0x1AC59BA20](0xD000000000000020, 0x80000001AB50DA70);

      MEMORY[0x1AC59BA20](0xD000000000000032, 0x80000001AB50DAA0);

      v49 = MEMORY[0x1E69E6158];
      v47 = v44;
      sub_1AB01522C(&v47, v43);
      v44 = 0u;
      v45 = 0u;
      sub_1AB0169C4(v43, &v44);
      v46 = 0;
      v36 = v50;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v36 = sub_1AB0168A8(0, *(v36 + 2) + 1, 1, v36);
        v50 = v36;
      }

      v38 = *(v36 + 2);
      v37 = *(v36 + 3);
      if (v38 >= v37 >> 1)
      {
        v36 = sub_1AB0168A8((v37 > 1), v38 + 1, 1, v36);
      }

      *(v36 + 2) = v38 + 1;
      v39 = &v36[40 * v38];
      v40 = v44;
      v41 = v45;
      v39[64] = v46;
      *(v39 + 2) = v40;
      *(v39 + 3) = v41;
      v50 = v36;
      sub_1AB0167A8(&v47);
      v42._countAndFlagsBits = 0;
      v42._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v42);
      *(v20 + 32) = v50;
      *&v44 = v19;
      LOBYTE(v47) = 0;
      OSLogger.log(contentsOf:withLevel:)(v20, &v47);
      goto LABEL_26;
    }

    sub_1AB4615D4();
    MEMORY[0x1AC59BA20](0xD000000000000011, 0x80000001AB50DA50);
    MEMORY[0x1AC59BA20](0xD00000000000001DLL, 0x80000001AB50E850);
    MEMORY[0x1AC59BA20](0xD000000000000020, 0x80000001AB50DA70);

    MEMORY[0x1AC59BA20](0xD000000000000032, 0x80000001AB50DAA0);

    sub_1AB461884();
    __break(1u);
  }
}

void sub_1AB409424(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a3;
  if (qword_1EB435DF8 != -1)
  {
    swift_once();
  }

  sub_1AB4622E4();
  v8 = v44;
  if (v44)
  {
    v9 = *(&v44 + 1);
    *&v44 = 0;
    *(&v44 + 1) = 0xE000000000000000;
    sub_1AB4615D4();
    MEMORY[0x1AC59BA20](0xD000000000000011, 0x80000001AB50DA50);
    MEMORY[0x1AC59BA20](0xD00000000000002ALL, 0x80000001AB50E820);
    MEMORY[0x1AC59BA20](0xD000000000000020, 0x80000001AB50DA70);

    MEMORY[0x1AC59BA20](0xD000000000000032, 0x80000001AB50DAA0);

    v8(&v44);
    sub_1AB0177B8(v8, v9);
LABEL_26:

    return;
  }

  if (qword_1EB435DF0 != -1)
  {
    swift_once();
  }

  if (byte_1EB43D128 == 1)
  {
    *&v44 = 0;
    *(&v44 + 1) = 0xE000000000000000;
    sub_1AB4615D4();
    MEMORY[0x1AC59BA20](0xD000000000000011, 0x80000001AB50DA50);
    MEMORY[0x1AC59BA20](0xD00000000000002ALL, 0x80000001AB50E820);
    MEMORY[0x1AC59BA20](0xD000000000000020, 0x80000001AB50DA70);

    MEMORY[0x1AC59BA20](0xD000000000000032, 0x80000001AB50DAA0);

    v10 = v44;
    v11 = sub_1AB461084();
    sub_1AB016760(0, &qword_1ED4D21E0, 0x1E69E9BF8);
    v12 = sub_1AB461324();
    if (os_log_type_enabled(v12, v11))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *&v44 = v14;
      *v13 = 136446722;
      v15 = sub_1AB461614();
      v17 = sub_1AB030D2C(v15, v16, &v44);

      *(v13 + 4) = v17;
      *(v13 + 12) = 2050;
      *(v13 + 14) = a4;
      *(v13 + 22) = 2082;
      v18 = sub_1AB030D2C(v10, *(&v10 + 1), &v44);

      *(v13 + 24) = v18;
      _os_log_impl(&dword_1AB012000, v12, v11, "%{public}s:%{public}lu: Requirement unsatisfied: %{public}s", v13, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1AC59F020](v14, -1, -1);
      MEMORY[0x1AC59F020](v13, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    if (byte_1EB43D128 == 2)
    {
      if (qword_1EB435660 != -1)
      {
        swift_once();
      }

      v19 = qword_1EB435668;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10, &unk_1AB4D4860);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_1AB4D4720;
      v50 = sub_1AB0168A8(0, 31, 0, MEMORY[0x1E69E7CC0]);
      v21._countAndFlagsBits = 0;
      v21._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v21);
      v49 = MEMORY[0x1E69E6A70];
      *&v47 = a1;
      *(&v47 + 1) = a2;
      v48 = v5;
      sub_1AB01522C(&v47, v43);
      v44 = 0u;
      v45 = 0u;
      sub_1AB0169C4(v43, &v44);
      v46 = 0;
      v22 = v50;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v22 = sub_1AB0168A8(0, *(v22 + 2) + 1, 1, v22);
        v50 = v22;
      }

      v24 = *(v22 + 2);
      v23 = *(v22 + 3);
      if (v24 >= v23 >> 1)
      {
        v22 = sub_1AB0168A8((v23 > 1), v24 + 1, 1, v22);
      }

      *(v22 + 2) = v24 + 1;
      v25 = &v22[40 * v24];
      v26 = v44;
      v27 = v45;
      v25[64] = v46;
      *(v25 + 2) = v26;
      *(v25 + 3) = v27;
      v50 = v22;
      sub_1AB0167A8(&v47);
      v28._countAndFlagsBits = 58;
      v28._object = 0xE100000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v28);
      v49 = MEMORY[0x1E69E6810];
      *&v47 = a4;
      sub_1AB01522C(&v47, v43);
      v44 = 0u;
      v45 = 0u;
      sub_1AB0169C4(v43, &v44);
      v46 = 0;
      v29 = v50;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v29 = sub_1AB0168A8(0, *(v29 + 2) + 1, 1, v29);
        v50 = v29;
      }

      v31 = *(v29 + 2);
      v30 = *(v29 + 3);
      if (v31 >= v30 >> 1)
      {
        v29 = sub_1AB0168A8((v30 > 1), v31 + 1, 1, v29);
      }

      *(v29 + 2) = v31 + 1;
      v32 = &v29[40 * v31];
      v33 = v44;
      v34 = v45;
      v32[64] = v46;
      *(v32 + 2) = v33;
      *(v32 + 3) = v34;
      v50 = v29;
      sub_1AB0167A8(&v47);
      v35._countAndFlagsBits = 0xD00000000000001BLL;
      v35._object = 0x80000001AB50E540;
      LogMessage.StringInterpolation.appendLiteral(_:)(v35);
      *&v44 = 0;
      *(&v44 + 1) = 0xE000000000000000;
      sub_1AB4615D4();
      MEMORY[0x1AC59BA20](0xD000000000000011, 0x80000001AB50DA50);
      MEMORY[0x1AC59BA20](0xD00000000000002ALL, 0x80000001AB50E820);
      MEMORY[0x1AC59BA20](0xD000000000000020, 0x80000001AB50DA70);

      MEMORY[0x1AC59BA20](0xD000000000000032, 0x80000001AB50DAA0);

      v49 = MEMORY[0x1E69E6158];
      v47 = v44;
      sub_1AB01522C(&v47, v43);
      v44 = 0u;
      v45 = 0u;
      sub_1AB0169C4(v43, &v44);
      v46 = 0;
      v36 = v50;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v36 = sub_1AB0168A8(0, *(v36 + 2) + 1, 1, v36);
        v50 = v36;
      }

      v38 = *(v36 + 2);
      v37 = *(v36 + 3);
      if (v38 >= v37 >> 1)
      {
        v36 = sub_1AB0168A8((v37 > 1), v38 + 1, 1, v36);
      }

      *(v36 + 2) = v38 + 1;
      v39 = &v36[40 * v38];
      v40 = v44;
      v41 = v45;
      v39[64] = v46;
      *(v39 + 2) = v40;
      *(v39 + 3) = v41;
      v50 = v36;
      sub_1AB0167A8(&v47);
      v42._countAndFlagsBits = 0;
      v42._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v42);
      *(v20 + 32) = v50;
      *&v44 = v19;
      LOBYTE(v47) = 0;
      OSLogger.log(contentsOf:withLevel:)(v20, &v47);
      goto LABEL_26;
    }

    sub_1AB4615D4();
    MEMORY[0x1AC59BA20](0xD000000000000011, 0x80000001AB50DA50);
    MEMORY[0x1AC59BA20](0xD00000000000002ALL, 0x80000001AB50E820);
    MEMORY[0x1AC59BA20](0xD000000000000020, 0x80000001AB50DA70);

    MEMORY[0x1AC59BA20](0xD000000000000032, 0x80000001AB50DAA0);

    sub_1AB461884();
    __break(1u);
  }
}

void sub_1AB409CAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a3;
  if (qword_1EB435DF8 != -1)
  {
    swift_once();
  }

  sub_1AB4622E4();
  v8 = v44;
  if (v44)
  {
    v9 = *(&v44 + 1);
    *&v44 = 0;
    *(&v44 + 1) = 0xE000000000000000;
    sub_1AB4615D4();
    MEMORY[0x1AC59BA20](0xD000000000000011, 0x80000001AB50DA50);
    MEMORY[0x1AC59BA20](0xD000000000000023, 0x80000001AB50E7F0);
    MEMORY[0x1AC59BA20](0xD000000000000020, 0x80000001AB50DA70);

    MEMORY[0x1AC59BA20](0xD000000000000032, 0x80000001AB50DAA0);

    v8(&v44);
    sub_1AB0177B8(v8, v9);
LABEL_26:

    return;
  }

  if (qword_1EB435DF0 != -1)
  {
    swift_once();
  }

  if (byte_1EB43D128 == 1)
  {
    *&v44 = 0;
    *(&v44 + 1) = 0xE000000000000000;
    sub_1AB4615D4();
    MEMORY[0x1AC59BA20](0xD000000000000011, 0x80000001AB50DA50);
    MEMORY[0x1AC59BA20](0xD000000000000023, 0x80000001AB50E7F0);
    MEMORY[0x1AC59BA20](0xD000000000000020, 0x80000001AB50DA70);

    MEMORY[0x1AC59BA20](0xD000000000000032, 0x80000001AB50DAA0);

    v10 = v44;
    v11 = sub_1AB461084();
    sub_1AB016760(0, &qword_1ED4D21E0, 0x1E69E9BF8);
    v12 = sub_1AB461324();
    if (os_log_type_enabled(v12, v11))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *&v44 = v14;
      *v13 = 136446722;
      v15 = sub_1AB461614();
      v17 = sub_1AB030D2C(v15, v16, &v44);

      *(v13 + 4) = v17;
      *(v13 + 12) = 2050;
      *(v13 + 14) = a4;
      *(v13 + 22) = 2082;
      v18 = sub_1AB030D2C(v10, *(&v10 + 1), &v44);

      *(v13 + 24) = v18;
      _os_log_impl(&dword_1AB012000, v12, v11, "%{public}s:%{public}lu: Requirement unsatisfied: %{public}s", v13, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1AC59F020](v14, -1, -1);
      MEMORY[0x1AC59F020](v13, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    if (byte_1EB43D128 == 2)
    {
      if (qword_1EB435660 != -1)
      {
        swift_once();
      }

      v19 = qword_1EB435668;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10, &unk_1AB4D4860);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_1AB4D4720;
      v50 = sub_1AB0168A8(0, 31, 0, MEMORY[0x1E69E7CC0]);
      v21._countAndFlagsBits = 0;
      v21._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v21);
      v49 = MEMORY[0x1E69E6A70];
      *&v47 = a1;
      *(&v47 + 1) = a2;
      v48 = v5;
      sub_1AB01522C(&v47, v43);
      v44 = 0u;
      v45 = 0u;
      sub_1AB0169C4(v43, &v44);
      v46 = 0;
      v22 = v50;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v22 = sub_1AB0168A8(0, *(v22 + 2) + 1, 1, v22);
        v50 = v22;
      }

      v24 = *(v22 + 2);
      v23 = *(v22 + 3);
      if (v24 >= v23 >> 1)
      {
        v22 = sub_1AB0168A8((v23 > 1), v24 + 1, 1, v22);
      }

      *(v22 + 2) = v24 + 1;
      v25 = &v22[40 * v24];
      v26 = v44;
      v27 = v45;
      v25[64] = v46;
      *(v25 + 2) = v26;
      *(v25 + 3) = v27;
      v50 = v22;
      sub_1AB0167A8(&v47);
      v28._countAndFlagsBits = 58;
      v28._object = 0xE100000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v28);
      v49 = MEMORY[0x1E69E6810];
      *&v47 = a4;
      sub_1AB01522C(&v47, v43);
      v44 = 0u;
      v45 = 0u;
      sub_1AB0169C4(v43, &v44);
      v46 = 0;
      v29 = v50;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v29 = sub_1AB0168A8(0, *(v29 + 2) + 1, 1, v29);
        v50 = v29;
      }

      v31 = *(v29 + 2);
      v30 = *(v29 + 3);
      if (v31 >= v30 >> 1)
      {
        v29 = sub_1AB0168A8((v30 > 1), v31 + 1, 1, v29);
      }

      *(v29 + 2) = v31 + 1;
      v32 = &v29[40 * v31];
      v33 = v44;
      v34 = v45;
      v32[64] = v46;
      *(v32 + 2) = v33;
      *(v32 + 3) = v34;
      v50 = v29;
      sub_1AB0167A8(&v47);
      v35._countAndFlagsBits = 0xD00000000000001BLL;
      v35._object = 0x80000001AB50E540;
      LogMessage.StringInterpolation.appendLiteral(_:)(v35);
      *&v44 = 0;
      *(&v44 + 1) = 0xE000000000000000;
      sub_1AB4615D4();
      MEMORY[0x1AC59BA20](0xD000000000000011, 0x80000001AB50DA50);
      MEMORY[0x1AC59BA20](0xD000000000000023, 0x80000001AB50E7F0);
      MEMORY[0x1AC59BA20](0xD000000000000020, 0x80000001AB50DA70);

      MEMORY[0x1AC59BA20](0xD000000000000032, 0x80000001AB50DAA0);

      v49 = MEMORY[0x1E69E6158];
      v47 = v44;
      sub_1AB01522C(&v47, v43);
      v44 = 0u;
      v45 = 0u;
      sub_1AB0169C4(v43, &v44);
      v46 = 0;
      v36 = v50;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v36 = sub_1AB0168A8(0, *(v36 + 2) + 1, 1, v36);
        v50 = v36;
      }

      v38 = *(v36 + 2);
      v37 = *(v36 + 3);
      if (v38 >= v37 >> 1)
      {
        v36 = sub_1AB0168A8((v37 > 1), v38 + 1, 1, v36);
      }

      *(v36 + 2) = v38 + 1;
      v39 = &v36[40 * v38];
      v40 = v44;
      v41 = v45;
      v39[64] = v46;
      *(v39 + 2) = v40;
      *(v39 + 3) = v41;
      v50 = v36;
      sub_1AB0167A8(&v47);
      v42._countAndFlagsBits = 0;
      v42._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v42);
      *(v20 + 32) = v50;
      *&v44 = v19;
      LOBYTE(v47) = 0;
      OSLogger.log(contentsOf:withLevel:)(v20, &v47);
      goto LABEL_26;
    }

    sub_1AB4615D4();
    MEMORY[0x1AC59BA20](0xD000000000000011, 0x80000001AB50DA50);
    MEMORY[0x1AC59BA20](0xD000000000000023, 0x80000001AB50E7F0);
    MEMORY[0x1AC59BA20](0xD000000000000020, 0x80000001AB50DA70);

    MEMORY[0x1AC59BA20](0xD000000000000032, 0x80000001AB50DAA0);

    sub_1AB461884();
    __break(1u);
  }
}

void sub_1AB40A534(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a3;
  if (qword_1EB435DF8 != -1)
  {
    swift_once();
  }

  sub_1AB4622E4();
  v8 = v44;
  if (v44)
  {
    v9 = *(&v44 + 1);
    *&v44 = 0;
    *(&v44 + 1) = 0xE000000000000000;
    sub_1AB4615D4();
    MEMORY[0x1AC59BA20](0xD000000000000011, 0x80000001AB50DA50);
    MEMORY[0x1AC59BA20](0xD000000000000032, 0x80000001AB50E7B0);
    MEMORY[0x1AC59BA20](0xD000000000000020, 0x80000001AB50DA70);

    MEMORY[0x1AC59BA20](0xD000000000000032, 0x80000001AB50DAA0);

    v8(&v44);
    sub_1AB0177B8(v8, v9);
LABEL_26:

    return;
  }

  if (qword_1EB435DF0 != -1)
  {
    swift_once();
  }

  if (byte_1EB43D128 == 1)
  {
    *&v44 = 0;
    *(&v44 + 1) = 0xE000000000000000;
    sub_1AB4615D4();
    MEMORY[0x1AC59BA20](0xD000000000000011, 0x80000001AB50DA50);
    MEMORY[0x1AC59BA20](0xD000000000000032, 0x80000001AB50E7B0);
    MEMORY[0x1AC59BA20](0xD000000000000020, 0x80000001AB50DA70);

    MEMORY[0x1AC59BA20](0xD000000000000032, 0x80000001AB50DAA0);

    v10 = v44;
    v11 = sub_1AB461084();
    sub_1AB016760(0, &qword_1ED4D21E0, 0x1E69E9BF8);
    v12 = sub_1AB461324();
    if (os_log_type_enabled(v12, v11))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *&v44 = v14;
      *v13 = 136446722;
      v15 = sub_1AB461614();
      v17 = sub_1AB030D2C(v15, v16, &v44);

      *(v13 + 4) = v17;
      *(v13 + 12) = 2050;
      *(v13 + 14) = a4;
      *(v13 + 22) = 2082;
      v18 = sub_1AB030D2C(v10, *(&v10 + 1), &v44);

      *(v13 + 24) = v18;
      _os_log_impl(&dword_1AB012000, v12, v11, "%{public}s:%{public}lu: Requirement unsatisfied: %{public}s", v13, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1AC59F020](v14, -1, -1);
      MEMORY[0x1AC59F020](v13, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    if (byte_1EB43D128 == 2)
    {
      if (qword_1EB435660 != -1)
      {
        swift_once();
      }

      v19 = qword_1EB435668;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10, &unk_1AB4D4860);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_1AB4D4720;
      v50 = sub_1AB0168A8(0, 31, 0, MEMORY[0x1E69E7CC0]);
      v21._countAndFlagsBits = 0;
      v21._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v21);
      v49 = MEMORY[0x1E69E6A70];
      *&v47 = a1;
      *(&v47 + 1) = a2;
      v48 = v5;
      sub_1AB01522C(&v47, v43);
      v44 = 0u;
      v45 = 0u;
      sub_1AB0169C4(v43, &v44);
      v46 = 0;
      v22 = v50;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v22 = sub_1AB0168A8(0, *(v22 + 2) + 1, 1, v22);
        v50 = v22;
      }

      v24 = *(v22 + 2);
      v23 = *(v22 + 3);
      if (v24 >= v23 >> 1)
      {
        v22 = sub_1AB0168A8((v23 > 1), v24 + 1, 1, v22);
      }

      *(v22 + 2) = v24 + 1;
      v25 = &v22[40 * v24];
      v26 = v44;
      v27 = v45;
      v25[64] = v46;
      *(v25 + 2) = v26;
      *(v25 + 3) = v27;
      v50 = v22;
      sub_1AB0167A8(&v47);
      v28._countAndFlagsBits = 58;
      v28._object = 0xE100000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v28);
      v49 = MEMORY[0x1E69E6810];
      *&v47 = a4;
      sub_1AB01522C(&v47, v43);
      v44 = 0u;
      v45 = 0u;
      sub_1AB0169C4(v43, &v44);
      v46 = 0;
      v29 = v50;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v29 = sub_1AB0168A8(0, *(v29 + 2) + 1, 1, v29);
        v50 = v29;
      }

      v31 = *(v29 + 2);
      v30 = *(v29 + 3);
      if (v31 >= v30 >> 1)
      {
        v29 = sub_1AB0168A8((v30 > 1), v31 + 1, 1, v29);
      }

      *(v29 + 2) = v31 + 1;
      v32 = &v29[40 * v31];
      v33 = v44;
      v34 = v45;
      v32[64] = v46;
      *(v32 + 2) = v33;
      *(v32 + 3) = v34;
      v50 = v29;
      sub_1AB0167A8(&v47);
      v35._countAndFlagsBits = 0xD00000000000001BLL;
      v35._object = 0x80000001AB50E540;
      LogMessage.StringInterpolation.appendLiteral(_:)(v35);
      *&v44 = 0;
      *(&v44 + 1) = 0xE000000000000000;
      sub_1AB4615D4();
      MEMORY[0x1AC59BA20](0xD000000000000011, 0x80000001AB50DA50);
      MEMORY[0x1AC59BA20](0xD000000000000032, 0x80000001AB50E7B0);
      MEMORY[0x1AC59BA20](0xD000000000000020, 0x80000001AB50DA70);

      MEMORY[0x1AC59BA20](0xD000000000000032, 0x80000001AB50DAA0);

      v49 = MEMORY[0x1E69E6158];
      v47 = v44;
      sub_1AB01522C(&v47, v43);
      v44 = 0u;
      v45 = 0u;
      sub_1AB0169C4(v43, &v44);
      v46 = 0;
      v36 = v50;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v36 = sub_1AB0168A8(0, *(v36 + 2) + 1, 1, v36);
        v50 = v36;
      }

      v38 = *(v36 + 2);
      v37 = *(v36 + 3);
      if (v38 >= v37 >> 1)
      {
        v36 = sub_1AB0168A8((v37 > 1), v38 + 1, 1, v36);
      }

      *(v36 + 2) = v38 + 1;
      v39 = &v36[40 * v38];
      v40 = v44;
      v41 = v45;
      v39[64] = v46;
      *(v39 + 2) = v40;
      *(v39 + 3) = v41;
      v50 = v36;
      sub_1AB0167A8(&v47);
      v42._countAndFlagsBits = 0;
      v42._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v42);
      *(v20 + 32) = v50;
      *&v44 = v19;
      LOBYTE(v47) = 0;
      OSLogger.log(contentsOf:withLevel:)(v20, &v47);
      goto LABEL_26;
    }

    sub_1AB4615D4();
    MEMORY[0x1AC59BA20](0xD000000000000011, 0x80000001AB50DA50);
    MEMORY[0x1AC59BA20](0xD000000000000032, 0x80000001AB50E7B0);
    MEMORY[0x1AC59BA20](0xD000000000000020, 0x80000001AB50DA70);

    MEMORY[0x1AC59BA20](0xD000000000000032, 0x80000001AB50DAA0);

    sub_1AB461884();
    __break(1u);
  }
}

void sub_1AB40ADC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a3;
  if (qword_1EB435DF8 != -1)
  {
    swift_once();
  }

  sub_1AB4622E4();
  v8 = v44;
  if (v44)
  {
    v9 = *(&v44 + 1);
    *&v44 = 0;
    *(&v44 + 1) = 0xE000000000000000;
    sub_1AB4615D4();
    MEMORY[0x1AC59BA20](0xD000000000000011, 0x80000001AB50DA50);
    MEMORY[0x1AC59BA20](0xD000000000000013, 0x80000001AB50E870);
    MEMORY[0x1AC59BA20](0xD000000000000020, 0x80000001AB50DA70);

    MEMORY[0x1AC59BA20](0xD000000000000032, 0x80000001AB50DAA0);

    v8(&v44);
    sub_1AB0177B8(v8, v9);
LABEL_26:

    return;
  }

  if (qword_1EB435DF0 != -1)
  {
    swift_once();
  }

  if (byte_1EB43D128 == 1)
  {
    *&v44 = 0;
    *(&v44 + 1) = 0xE000000000000000;
    sub_1AB4615D4();
    MEMORY[0x1AC59BA20](0xD000000000000011, 0x80000001AB50DA50);
    MEMORY[0x1AC59BA20](0xD000000000000013, 0x80000001AB50E870);
    MEMORY[0x1AC59BA20](0xD000000000000020, 0x80000001AB50DA70);

    MEMORY[0x1AC59BA20](0xD000000000000032, 0x80000001AB50DAA0);

    v10 = v44;
    v11 = sub_1AB461084();
    sub_1AB016760(0, &qword_1ED4D21E0, 0x1E69E9BF8);
    v12 = sub_1AB461324();
    if (os_log_type_enabled(v12, v11))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *&v44 = v14;
      *v13 = 136446722;
      v15 = sub_1AB461614();
      v17 = sub_1AB030D2C(v15, v16, &v44);

      *(v13 + 4) = v17;
      *(v13 + 12) = 2050;
      *(v13 + 14) = a4;
      *(v13 + 22) = 2082;
      v18 = sub_1AB030D2C(v10, *(&v10 + 1), &v44);

      *(v13 + 24) = v18;
      _os_log_impl(&dword_1AB012000, v12, v11, "%{public}s:%{public}lu: Requirement unsatisfied: %{public}s", v13, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1AC59F020](v14, -1, -1);
      MEMORY[0x1AC59F020](v13, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    if (byte_1EB43D128 == 2)
    {
      if (qword_1EB435660 != -1)
      {
        swift_once();
      }

      v19 = qword_1EB435668;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10, &unk_1AB4D4860);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_1AB4D4720;
      v50 = sub_1AB0168A8(0, 31, 0, MEMORY[0x1E69E7CC0]);
      v21._countAndFlagsBits = 0;
      v21._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v21);
      v49 = MEMORY[0x1E69E6A70];
      *&v47 = a1;
      *(&v47 + 1) = a2;
      v48 = v5;
      sub_1AB01522C(&v47, v43);
      v44 = 0u;
      v45 = 0u;
      sub_1AB0169C4(v43, &v44);
      v46 = 0;
      v22 = v50;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v22 = sub_1AB0168A8(0, *(v22 + 2) + 1, 1, v22);
        v50 = v22;
      }

      v24 = *(v22 + 2);
      v23 = *(v22 + 3);
      if (v24 >= v23 >> 1)
      {
        v22 = sub_1AB0168A8((v23 > 1), v24 + 1, 1, v22);
      }

      *(v22 + 2) = v24 + 1;
      v25 = &v22[40 * v24];
      v26 = v44;
      v27 = v45;
      v25[64] = v46;
      *(v25 + 2) = v26;
      *(v25 + 3) = v27;
      v50 = v22;
      sub_1AB0167A8(&v47);
      v28._countAndFlagsBits = 58;
      v28._object = 0xE100000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v28);
      v49 = MEMORY[0x1E69E6810];
      *&v47 = a4;
      sub_1AB01522C(&v47, v43);
      v44 = 0u;
      v45 = 0u;
      sub_1AB0169C4(v43, &v44);
      v46 = 0;
      v29 = v50;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v29 = sub_1AB0168A8(0, *(v29 + 2) + 1, 1, v29);
        v50 = v29;
      }

      v31 = *(v29 + 2);
      v30 = *(v29 + 3);
      if (v31 >= v30 >> 1)
      {
        v29 = sub_1AB0168A8((v30 > 1), v31 + 1, 1, v29);
      }

      *(v29 + 2) = v31 + 1;
      v32 = &v29[40 * v31];
      v33 = v44;
      v34 = v45;
      v32[64] = v46;
      *(v32 + 2) = v33;
      *(v32 + 3) = v34;
      v50 = v29;
      sub_1AB0167A8(&v47);
      v35._countAndFlagsBits = 0xD00000000000001BLL;
      v35._object = 0x80000001AB50E540;
      LogMessage.StringInterpolation.appendLiteral(_:)(v35);
      *&v44 = 0;
      *(&v44 + 1) = 0xE000000000000000;
      sub_1AB4615D4();
      MEMORY[0x1AC59BA20](0xD000000000000011, 0x80000001AB50DA50);
      MEMORY[0x1AC59BA20](0xD000000000000013, 0x80000001AB50E870);
      MEMORY[0x1AC59BA20](0xD000000000000020, 0x80000001AB50DA70);

      MEMORY[0x1AC59BA20](0xD000000000000032, 0x80000001AB50DAA0);

      v49 = MEMORY[0x1E69E6158];
      v47 = v44;
      sub_1AB01522C(&v47, v43);
      v44 = 0u;
      v45 = 0u;
      sub_1AB0169C4(v43, &v44);
      v46 = 0;
      v36 = v50;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v36 = sub_1AB0168A8(0, *(v36 + 2) + 1, 1, v36);
        v50 = v36;
      }

      v38 = *(v36 + 2);
      v37 = *(v36 + 3);
      if (v38 >= v37 >> 1)
      {
        v36 = sub_1AB0168A8((v37 > 1), v38 + 1, 1, v36);
      }

      *(v36 + 2) = v38 + 1;
      v39 = &v36[40 * v38];
      v40 = v44;
      v41 = v45;
      v39[64] = v46;
      *(v39 + 2) = v40;
      *(v39 + 3) = v41;
      v50 = v36;
      sub_1AB0167A8(&v47);
      v42._countAndFlagsBits = 0;
      v42._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v42);
      *(v20 + 32) = v50;
      *&v44 = v19;
      LOBYTE(v47) = 0;
      OSLogger.log(contentsOf:withLevel:)(v20, &v47);
      goto LABEL_26;
    }

    sub_1AB4615D4();
    MEMORY[0x1AC59BA20](0xD000000000000011, 0x80000001AB50DA50);
    MEMORY[0x1AC59BA20](0xD000000000000013, 0x80000001AB50E870);
    MEMORY[0x1AC59BA20](0xD000000000000020, 0x80000001AB50DA70);

    MEMORY[0x1AC59BA20](0xD000000000000032, 0x80000001AB50DAA0);

    sub_1AB461884();
    __break(1u);
  }
}

void sub_1AB40B650(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a3;
  if (qword_1EB435DF8 != -1)
  {
    swift_once();
  }

  sub_1AB4622E4();
  v8 = v44;
  if (v44)
  {
    v9 = *(&v44 + 1);
    *&v44 = 0;
    *(&v44 + 1) = 0xE000000000000000;
    sub_1AB4615D4();
    MEMORY[0x1AC59BA20](0xD000000000000011, 0x80000001AB50DA50);
    MEMORY[0x1AC59BA20](0xD000000000000014, 0x80000001AB50E8B0);
    MEMORY[0x1AC59BA20](0xD000000000000020, 0x80000001AB50DA70);

    MEMORY[0x1AC59BA20](0xD000000000000032, 0x80000001AB50DAA0);

    v8(&v44);
    sub_1AB0177B8(v8, v9);
LABEL_26:

    return;
  }

  if (qword_1EB435DF0 != -1)
  {
    swift_once();
  }

  if (byte_1EB43D128 == 1)
  {
    *&v44 = 0;
    *(&v44 + 1) = 0xE000000000000000;
    sub_1AB4615D4();
    MEMORY[0x1AC59BA20](0xD000000000000011, 0x80000001AB50DA50);
    MEMORY[0x1AC59BA20](0xD000000000000014, 0x80000001AB50E8B0);
    MEMORY[0x1AC59BA20](0xD000000000000020, 0x80000001AB50DA70);

    MEMORY[0x1AC59BA20](0xD000000000000032, 0x80000001AB50DAA0);

    v10 = v44;
    v11 = sub_1AB461084();
    sub_1AB016760(0, &qword_1ED4D21E0, 0x1E69E9BF8);
    v12 = sub_1AB461324();
    if (os_log_type_enabled(v12, v11))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *&v44 = v14;
      *v13 = 136446722;
      v15 = sub_1AB461614();
      v17 = sub_1AB030D2C(v15, v16, &v44);

      *(v13 + 4) = v17;
      *(v13 + 12) = 2050;
      *(v13 + 14) = a4;
      *(v13 + 22) = 2082;
      v18 = sub_1AB030D2C(v10, *(&v10 + 1), &v44);

      *(v13 + 24) = v18;
      _os_log_impl(&dword_1AB012000, v12, v11, "%{public}s:%{public}lu: Requirement unsatisfied: %{public}s", v13, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1AC59F020](v14, -1, -1);
      MEMORY[0x1AC59F020](v13, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    if (byte_1EB43D128 == 2)
    {
      if (qword_1EB435660 != -1)
      {
        swift_once();
      }

      v19 = qword_1EB435668;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10, &unk_1AB4D4860);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_1AB4D4720;
      v50 = sub_1AB0168A8(0, 31, 0, MEMORY[0x1E69E7CC0]);
      v21._countAndFlagsBits = 0;
      v21._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v21);
      v49 = MEMORY[0x1E69E6A70];
      *&v47 = a1;
      *(&v47 + 1) = a2;
      v48 = v5;
      sub_1AB01522C(&v47, v43);
      v44 = 0u;
      v45 = 0u;
      sub_1AB0169C4(v43, &v44);
      v46 = 0;
      v22 = v50;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v22 = sub_1AB0168A8(0, *(v22 + 2) + 1, 1, v22);
        v50 = v22;
      }

      v24 = *(v22 + 2);
      v23 = *(v22 + 3);
      if (v24 >= v23 >> 1)
      {
        v22 = sub_1AB0168A8((v23 > 1), v24 + 1, 1, v22);
      }

      *(v22 + 2) = v24 + 1;
      v25 = &v22[40 * v24];
      v26 = v44;
      v27 = v45;
      v25[64] = v46;
      *(v25 + 2) = v26;
      *(v25 + 3) = v27;
      v50 = v22;
      sub_1AB0167A8(&v47);
      v28._countAndFlagsBits = 58;
      v28._object = 0xE100000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v28);
      v49 = MEMORY[0x1E69E6810];
      *&v47 = a4;
      sub_1AB01522C(&v47, v43);
      v44 = 0u;
      v45 = 0u;
      sub_1AB0169C4(v43, &v44);
      v46 = 0;
      v29 = v50;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v29 = sub_1AB0168A8(0, *(v29 + 2) + 1, 1, v29);
        v50 = v29;
      }

      v31 = *(v29 + 2);
      v30 = *(v29 + 3);
      if (v31 >= v30 >> 1)
      {
        v29 = sub_1AB0168A8((v30 > 1), v31 + 1, 1, v29);
      }

      *(v29 + 2) = v31 + 1;
      v32 = &v29[40 * v31];
      v33 = v44;
      v34 = v45;
      v32[64] = v46;
      *(v32 + 2) = v33;
      *(v32 + 3) = v34;
      v50 = v29;
      sub_1AB0167A8(&v47);
      v35._countAndFlagsBits = 0xD00000000000001BLL;
      v35._object = 0x80000001AB50E540;
      LogMessage.StringInterpolation.appendLiteral(_:)(v35);
      *&v44 = 0;
      *(&v44 + 1) = 0xE000000000000000;
      sub_1AB4615D4();
      MEMORY[0x1AC59BA20](0xD000000000000011, 0x80000001AB50DA50);
      MEMORY[0x1AC59BA20](0xD000000000000014, 0x80000001AB50E8B0);
      MEMORY[0x1AC59BA20](0xD000000000000020, 0x80000001AB50DA70);

      MEMORY[0x1AC59BA20](0xD000000000000032, 0x80000001AB50DAA0);

      v49 = MEMORY[0x1E69E6158];
      v47 = v44;
      sub_1AB01522C(&v47, v43);
      v44 = 0u;
      v45 = 0u;
      sub_1AB0169C4(v43, &v44);
      v46 = 0;
      v36 = v50;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v36 = sub_1AB0168A8(0, *(v36 + 2) + 1, 1, v36);
        v50 = v36;
      }

      v38 = *(v36 + 2);
      v37 = *(v36 + 3);
      if (v38 >= v37 >> 1)
      {
        v36 = sub_1AB0168A8((v37 > 1), v38 + 1, 1, v36);
      }

      *(v36 + 2) = v38 + 1;
      v39 = &v36[40 * v38];
      v40 = v44;
      v41 = v45;
      v39[64] = v46;
      *(v39 + 2) = v40;
      *(v39 + 3) = v41;
      v50 = v36;
      sub_1AB0167A8(&v47);
      v42._countAndFlagsBits = 0;
      v42._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v42);
      *(v20 + 32) = v50;
      *&v44 = v19;
      LOBYTE(v47) = 0;
      OSLogger.log(contentsOf:withLevel:)(v20, &v47);
      goto LABEL_26;
    }

    sub_1AB4615D4();
    MEMORY[0x1AC59BA20](0xD000000000000011, 0x80000001AB50DA50);
    MEMORY[0x1AC59BA20](0xD000000000000014, 0x80000001AB50E8B0);
    MEMORY[0x1AC59BA20](0xD000000000000020, 0x80000001AB50DA70);

    MEMORY[0x1AC59BA20](0xD000000000000032, 0x80000001AB50DAA0);

    sub_1AB461884();
    __break(1u);
  }
}

void sub_1AB40BED8(unint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a3;
  if (qword_1EB435DF8 != -1)
  {
    swift_once();
  }

  sub_1AB4622E4();
  v8 = v42;
  if (v42)
  {
    v9 = *(&v42 + 1);
    *&v42 = 0xD000000000000022;
    *(&v42 + 1) = 0x80000001AB50EDB0;
    v8(&v42);
    sub_1AB0177B8(v8, v9);
  }

  else
  {
    if (qword_1EB435DF0 != -1)
    {
      swift_once();
    }

    if (byte_1EB43D128 == 1)
    {
      v10 = sub_1AB461084();
      sub_1AB016760(0, &qword_1ED4D21E0, 0x1E69E9BF8);
      v11 = sub_1AB461324();
      if (os_log_type_enabled(v11, v10))
      {
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        *&v42 = v13;
        *v12 = 136446722;
        v14 = sub_1AB461614();
        v16 = sub_1AB030D2C(v14, v15, &v42);

        *(v12 + 4) = v16;
        *(v12 + 12) = 2050;
        *(v12 + 14) = a4;
        *(v12 + 22) = 2082;
        *(v12 + 24) = sub_1AB030D2C(0xD000000000000022, 0x80000001AB50EDB0, &v42);
        _os_log_impl(&dword_1AB012000, v11, v10, "%{public}s:%{public}lu: Requirement unsatisfied: %{public}s", v12, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1AC59F020](v13, -1, -1);
        MEMORY[0x1AC59F020](v12, -1, -1);
      }
    }

    else if (byte_1EB43D128 == 2)
    {
      if (qword_1EB435660 != -1)
      {
        swift_once();
      }

      v17 = qword_1EB435668;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10, &unk_1AB4D4860);
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_1AB4D4720;
      v49 = sub_1AB0168A8(0, 31, 0, MEMORY[0x1E69E7CC0]);
      v19._countAndFlagsBits = 0;
      v19._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v19);
      v48 = MEMORY[0x1E69E6A70];
      v45 = a1;
      v46 = a2;
      v47 = v5;
      sub_1AB01522C(&v45, v41);
      v42 = 0u;
      v43 = 0u;
      sub_1AB0169C4(v41, &v42);
      v44 = 0;
      v20 = v49;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v20 = sub_1AB0168A8(0, *(v20 + 2) + 1, 1, v20);
        v49 = v20;
      }

      v22 = *(v20 + 2);
      v21 = *(v20 + 3);
      if (v22 >= v21 >> 1)
      {
        v20 = sub_1AB0168A8((v21 > 1), v22 + 1, 1, v20);
      }

      *(v20 + 2) = v22 + 1;
      v23 = &v20[40 * v22];
      v24 = v42;
      v25 = v43;
      v23[64] = v44;
      *(v23 + 2) = v24;
      *(v23 + 3) = v25;
      v49 = v20;
      sub_1AB0167A8(&v45);
      v26._countAndFlagsBits = 58;
      v26._object = 0xE100000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v26);
      v48 = MEMORY[0x1E69E6810];
      v45 = a4;
      sub_1AB01522C(&v45, v41);
      v42 = 0u;
      v43 = 0u;
      sub_1AB0169C4(v41, &v42);
      v44 = 0;
      v27 = v49;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v27 = sub_1AB0168A8(0, *(v27 + 2) + 1, 1, v27);
        v49 = v27;
      }

      v29 = *(v27 + 2);
      v28 = *(v27 + 3);
      if (v29 >= v28 >> 1)
      {
        v27 = sub_1AB0168A8((v28 > 1), v29 + 1, 1, v27);
      }

      *(v27 + 2) = v29 + 1;
      v30 = &v27[40 * v29];
      v31 = v42;
      v32 = v43;
      v30[64] = v44;
      *(v30 + 2) = v31;
      *(v30 + 3) = v32;
      v49 = v27;
      sub_1AB0167A8(&v45);
      v33._countAndFlagsBits = 0xD00000000000001BLL;
      v33._object = 0x80000001AB50E540;
      LogMessage.StringInterpolation.appendLiteral(_:)(v33);
      v48 = MEMORY[0x1E69E6158];
      v45 = 0xD000000000000022;
      v46 = 0x80000001AB50EDB0;
      sub_1AB01522C(&v45, v41);
      v42 = 0u;
      v43 = 0u;
      sub_1AB0169C4(v41, &v42);
      v44 = 0;
      v34 = v49;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v34 = sub_1AB0168A8(0, *(v34 + 2) + 1, 1, v34);
        v49 = v34;
      }

      v36 = *(v34 + 2);
      v35 = *(v34 + 3);
      if (v36 >= v35 >> 1)
      {
        v34 = sub_1AB0168A8((v35 > 1), v36 + 1, 1, v34);
      }

      *(v34 + 2) = v36 + 1;
      v37 = &v34[40 * v36];
      v38 = v42;
      v39 = v43;
      v37[64] = v44;
      *(v37 + 2) = v38;
      *(v37 + 3) = v39;
      v49 = v34;
      sub_1AB0167A8(&v45);
      v40._countAndFlagsBits = 0;
      v40._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v40);
      *(v18 + 32) = v49;
      *&v42 = v17;
      LOBYTE(v45) = 0;
      OSLogger.log(contentsOf:withLevel:)(v18, &v45);
    }

    else
    {
      sub_1AB461884();
      __break(1u);
    }
  }
}

void sub_1AB40C4C0(unint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a3;
  if (qword_1EB435DF8 != -1)
  {
    swift_once();
  }

  sub_1AB4622E4();
  v8 = v42;
  if (v42)
  {
    v9 = *(&v42 + 1);
    *&v42 = 0xD000000000000034;
    *(&v42 + 1) = 0x80000001AB50EA20;
    v8(&v42);
    sub_1AB0177B8(v8, v9);
  }

  else
  {
    if (qword_1EB435DF0 != -1)
    {
      swift_once();
    }

    if (byte_1EB43D128 == 1)
    {
      v10 = sub_1AB461084();
      sub_1AB016760(0, &qword_1ED4D21E0, 0x1E69E9BF8);
      v11 = sub_1AB461324();
      if (os_log_type_enabled(v11, v10))
      {
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        *&v42 = v13;
        *v12 = 136446722;
        v14 = sub_1AB461614();
        v16 = sub_1AB030D2C(v14, v15, &v42);

        *(v12 + 4) = v16;
        *(v12 + 12) = 2050;
        *(v12 + 14) = a4;
        *(v12 + 22) = 2082;
        *(v12 + 24) = sub_1AB030D2C(0xD000000000000034, 0x80000001AB50EA20, &v42);
        _os_log_impl(&dword_1AB012000, v11, v10, "%{public}s:%{public}lu: Requirement unsatisfied: %{public}s", v12, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1AC59F020](v13, -1, -1);
        MEMORY[0x1AC59F020](v12, -1, -1);
      }
    }

    else if (byte_1EB43D128 == 2)
    {
      if (qword_1EB435660 != -1)
      {
        swift_once();
      }

      v17 = qword_1EB435668;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10, &unk_1AB4D4860);
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_1AB4D4720;
      v49 = sub_1AB0168A8(0, 31, 0, MEMORY[0x1E69E7CC0]);
      v19._countAndFlagsBits = 0;
      v19._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v19);
      v48 = MEMORY[0x1E69E6A70];
      v45 = a1;
      v46 = a2;
      v47 = v5;
      sub_1AB01522C(&v45, v41);
      v42 = 0u;
      v43 = 0u;
      sub_1AB0169C4(v41, &v42);
      v44 = 0;
      v20 = v49;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v20 = sub_1AB0168A8(0, *(v20 + 2) + 1, 1, v20);
        v49 = v20;
      }

      v22 = *(v20 + 2);
      v21 = *(v20 + 3);
      if (v22 >= v21 >> 1)
      {
        v20 = sub_1AB0168A8((v21 > 1), v22 + 1, 1, v20);
      }

      *(v20 + 2) = v22 + 1;
      v23 = &v20[40 * v22];
      v24 = v42;
      v25 = v43;
      v23[64] = v44;
      *(v23 + 2) = v24;
      *(v23 + 3) = v25;
      v49 = v20;
      sub_1AB0167A8(&v45);
      v26._countAndFlagsBits = 58;
      v26._object = 0xE100000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v26);
      v48 = MEMORY[0x1E69E6810];
      v45 = a4;
      sub_1AB01522C(&v45, v41);
      v42 = 0u;
      v43 = 0u;
      sub_1AB0169C4(v41, &v42);
      v44 = 0;
      v27 = v49;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v27 = sub_1AB0168A8(0, *(v27 + 2) + 1, 1, v27);
        v49 = v27;
      }

      v29 = *(v27 + 2);
      v28 = *(v27 + 3);
      if (v29 >= v28 >> 1)
      {
        v27 = sub_1AB0168A8((v28 > 1), v29 + 1, 1, v27);
      }

      *(v27 + 2) = v29 + 1;
      v30 = &v27[40 * v29];
      v31 = v42;
      v32 = v43;
      v30[64] = v44;
      *(v30 + 2) = v31;
      *(v30 + 3) = v32;
      v49 = v27;
      sub_1AB0167A8(&v45);
      v33._countAndFlagsBits = 0xD00000000000001BLL;
      v33._object = 0x80000001AB50E540;
      LogMessage.StringInterpolation.appendLiteral(_:)(v33);
      v48 = MEMORY[0x1E69E6158];
      v45 = 0xD000000000000034;
      v46 = 0x80000001AB50EA20;
      sub_1AB01522C(&v45, v41);
      v42 = 0u;
      v43 = 0u;
      sub_1AB0169C4(v41, &v42);
      v44 = 0;
      v34 = v49;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v34 = sub_1AB0168A8(0, *(v34 + 2) + 1, 1, v34);
        v49 = v34;
      }

      v36 = *(v34 + 2);
      v35 = *(v34 + 3);
      if (v36 >= v35 >> 1)
      {
        v34 = sub_1AB0168A8((v35 > 1), v36 + 1, 1, v34);
      }

      *(v34 + 2) = v36 + 1;
      v37 = &v34[40 * v36];
      v38 = v42;
      v39 = v43;
      v37[64] = v44;
      *(v37 + 2) = v38;
      *(v37 + 3) = v39;
      v49 = v34;
      sub_1AB0167A8(&v45);
      v40._countAndFlagsBits = 0;
      v40._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v40);
      *(v18 + 32) = v49;
      *&v42 = v17;
      LOBYTE(v45) = 0;
      OSLogger.log(contentsOf:withLevel:)(v18, &v45);
    }

    else
    {
      sub_1AB461884();
      __break(1u);
    }
  }
}

void sub_1AB40CAA8(unint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a3;
  if (qword_1EB435DF8 != -1)
  {
    swift_once();
  }

  sub_1AB4622E4();
  v8 = v42;
  if (v42)
  {
    v9 = *(&v42 + 1);
    *&v42 = 0xD000000000000032;
    *(&v42 + 1) = 0x80000001AB50EA60;
    v8(&v42);
    sub_1AB0177B8(v8, v9);
  }

  else
  {
    if (qword_1EB435DF0 != -1)
    {
      swift_once();
    }

    if (byte_1EB43D128 == 1)
    {
      v10 = sub_1AB461084();
      sub_1AB016760(0, &qword_1ED4D21E0, 0x1E69E9BF8);
      v11 = sub_1AB461324();
      if (os_log_type_enabled(v11, v10))
      {
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        *&v42 = v13;
        *v12 = 136446722;
        v14 = sub_1AB461614();
        v16 = sub_1AB030D2C(v14, v15, &v42);

        *(v12 + 4) = v16;
        *(v12 + 12) = 2050;
        *(v12 + 14) = a4;
        *(v12 + 22) = 2082;
        *(v12 + 24) = sub_1AB030D2C(0xD000000000000032, 0x80000001AB50EA60, &v42);
        _os_log_impl(&dword_1AB012000, v11, v10, "%{public}s:%{public}lu: Requirement unsatisfied: %{public}s", v12, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1AC59F020](v13, -1, -1);
        MEMORY[0x1AC59F020](v12, -1, -1);
      }
    }

    else if (byte_1EB43D128 == 2)
    {
      if (qword_1EB435660 != -1)
      {
        swift_once();
      }

      v17 = qword_1EB435668;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10, &unk_1AB4D4860);
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_1AB4D4720;
      v49 = sub_1AB0168A8(0, 31, 0, MEMORY[0x1E69E7CC0]);
      v19._countAndFlagsBits = 0;
      v19._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v19);
      v48 = MEMORY[0x1E69E6A70];
      v45 = a1;
      v46 = a2;
      v47 = v5;
      sub_1AB01522C(&v45, v41);
      v42 = 0u;
      v43 = 0u;
      sub_1AB0169C4(v41, &v42);
      v44 = 0;
      v20 = v49;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v20 = sub_1AB0168A8(0, *(v20 + 2) + 1, 1, v20);
        v49 = v20;
      }

      v22 = *(v20 + 2);
      v21 = *(v20 + 3);
      if (v22 >= v21 >> 1)
      {
        v20 = sub_1AB0168A8((v21 > 1), v22 + 1, 1, v20);
      }

      *(v20 + 2) = v22 + 1;
      v23 = &v20[40 * v22];
      v24 = v42;
      v25 = v43;
      v23[64] = v44;
      *(v23 + 2) = v24;
      *(v23 + 3) = v25;
      v49 = v20;
      sub_1AB0167A8(&v45);
      v26._countAndFlagsBits = 58;
      v26._object = 0xE100000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v26);
      v48 = MEMORY[0x1E69E6810];
      v45 = a4;
      sub_1AB01522C(&v45, v41);
      v42 = 0u;
      v43 = 0u;
      sub_1AB0169C4(v41, &v42);
      v44 = 0;
      v27 = v49;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v27 = sub_1AB0168A8(0, *(v27 + 2) + 1, 1, v27);
        v49 = v27;
      }

      v29 = *(v27 + 2);
      v28 = *(v27 + 3);
      if (v29 >= v28 >> 1)
      {
        v27 = sub_1AB0168A8((v28 > 1), v29 + 1, 1, v27);
      }

      *(v27 + 2) = v29 + 1;
      v30 = &v27[40 * v29];
      v31 = v42;
      v32 = v43;
      v30[64] = v44;
      *(v30 + 2) = v31;
      *(v30 + 3) = v32;
      v49 = v27;
      sub_1AB0167A8(&v45);
      v33._countAndFlagsBits = 0xD00000000000001BLL;
      v33._object = 0x80000001AB50E540;
      LogMessage.StringInterpolation.appendLiteral(_:)(v33);
      v48 = MEMORY[0x1E69E6158];
      v45 = 0xD000000000000032;
      v46 = 0x80000001AB50EA60;
      sub_1AB01522C(&v45, v41);
      v42 = 0u;
      v43 = 0u;
      sub_1AB0169C4(v41, &v42);
      v44 = 0;
      v34 = v49;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v34 = sub_1AB0168A8(0, *(v34 + 2) + 1, 1, v34);
        v49 = v34;
      }

      v36 = *(v34 + 2);
      v35 = *(v34 + 3);
      if (v36 >= v35 >> 1)
      {
        v34 = sub_1AB0168A8((v35 > 1), v36 + 1, 1, v34);
      }

      *(v34 + 2) = v36 + 1;
      v37 = &v34[40 * v36];
      v38 = v42;
      v39 = v43;
      v37[64] = v44;
      *(v37 + 2) = v38;
      *(v37 + 3) = v39;
      v49 = v34;
      sub_1AB0167A8(&v45);
      v40._countAndFlagsBits = 0;
      v40._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v40);
      *(v18 + 32) = v49;
      *&v42 = v17;
      LOBYTE(v45) = 0;
      OSLogger.log(contentsOf:withLevel:)(v18, &v45);
    }

    else
    {
      sub_1AB461884();
      __break(1u);
    }
  }
}

void sub_1AB40D090(unint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a3;
  if (qword_1EB435DF8 != -1)
  {
    swift_once();
  }

  sub_1AB4622E4();
  v8 = v42;
  if (v42)
  {
    v9 = *(&v42 + 1);
    *&v42 = 0xD000000000000027;
    *(&v42 + 1) = 0x80000001AB50EAA0;
    v8(&v42);
    sub_1AB0177B8(v8, v9);
  }

  else
  {
    if (qword_1EB435DF0 != -1)
    {
      swift_once();
    }

    if (byte_1EB43D128 == 1)
    {
      v10 = sub_1AB461084();
      sub_1AB016760(0, &qword_1ED4D21E0, 0x1E69E9BF8);
      v11 = sub_1AB461324();
      if (os_log_type_enabled(v11, v10))
      {
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        *&v42 = v13;
        *v12 = 136446722;
        v14 = sub_1AB461614();
        v16 = sub_1AB030D2C(v14, v15, &v42);

        *(v12 + 4) = v16;
        *(v12 + 12) = 2050;
        *(v12 + 14) = a4;
        *(v12 + 22) = 2082;
        *(v12 + 24) = sub_1AB030D2C(0xD000000000000027, 0x80000001AB50EAA0, &v42);
        _os_log_impl(&dword_1AB012000, v11, v10, "%{public}s:%{public}lu: Requirement unsatisfied: %{public}s", v12, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1AC59F020](v13, -1, -1);
        MEMORY[0x1AC59F020](v12, -1, -1);
      }
    }

    else if (byte_1EB43D128 == 2)
    {
      if (qword_1EB435660 != -1)
      {
        swift_once();
      }

      v17 = qword_1EB435668;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10, &unk_1AB4D4860);
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_1AB4D4720;
      v49 = sub_1AB0168A8(0, 31, 0, MEMORY[0x1E69E7CC0]);
      v19._countAndFlagsBits = 0;
      v19._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v19);
      v48 = MEMORY[0x1E69E6A70];
      v45 = a1;
      v46 = a2;
      v47 = v5;
      sub_1AB01522C(&v45, v41);
      v42 = 0u;
      v43 = 0u;
      sub_1AB0169C4(v41, &v42);
      v44 = 0;
      v20 = v49;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v20 = sub_1AB0168A8(0, *(v20 + 2) + 1, 1, v20);
        v49 = v20;
      }

      v22 = *(v20 + 2);
      v21 = *(v20 + 3);
      if (v22 >= v21 >> 1)
      {
        v20 = sub_1AB0168A8((v21 > 1), v22 + 1, 1, v20);
      }

      *(v20 + 2) = v22 + 1;
      v23 = &v20[40 * v22];
      v24 = v42;
      v25 = v43;
      v23[64] = v44;
      *(v23 + 2) = v24;
      *(v23 + 3) = v25;
      v49 = v20;
      sub_1AB0167A8(&v45);
      v26._countAndFlagsBits = 58;
      v26._object = 0xE100000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v26);
      v48 = MEMORY[0x1E69E6810];
      v45 = a4;
      sub_1AB01522C(&v45, v41);
      v42 = 0u;
      v43 = 0u;
      sub_1AB0169C4(v41, &v42);
      v44 = 0;
      v27 = v49;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v27 = sub_1AB0168A8(0, *(v27 + 2) + 1, 1, v27);
        v49 = v27;
      }

      v29 = *(v27 + 2);
      v28 = *(v27 + 3);
      if (v29 >= v28 >> 1)
      {
        v27 = sub_1AB0168A8((v28 > 1), v29 + 1, 1, v27);
      }

      *(v27 + 2) = v29 + 1;
      v30 = &v27[40 * v29];
      v31 = v42;
      v32 = v43;
      v30[64] = v44;
      *(v30 + 2) = v31;
      *(v30 + 3) = v32;
      v49 = v27;
      sub_1AB0167A8(&v45);
      v33._countAndFlagsBits = 0xD00000000000001BLL;
      v33._object = 0x80000001AB50E540;
      LogMessage.StringInterpolation.appendLiteral(_:)(v33);
      v48 = MEMORY[0x1E69E6158];
      v45 = 0xD000000000000027;
      v46 = 0x80000001AB50EAA0;
      sub_1AB01522C(&v45, v41);
      v42 = 0u;
      v43 = 0u;
      sub_1AB0169C4(v41, &v42);
      v44 = 0;
      v34 = v49;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v34 = sub_1AB0168A8(0, *(v34 + 2) + 1, 1, v34);
        v49 = v34;
      }

      v36 = *(v34 + 2);
      v35 = *(v34 + 3);
      if (v36 >= v35 >> 1)
      {
        v34 = sub_1AB0168A8((v35 > 1), v36 + 1, 1, v34);
      }

      *(v34 + 2) = v36 + 1;
      v37 = &v34[40 * v36];
      v38 = v42;
      v39 = v43;
      v37[64] = v44;
      *(v37 + 2) = v38;
      *(v37 + 3) = v39;
      v49 = v34;
      sub_1AB0167A8(&v45);
      v40._countAndFlagsBits = 0;
      v40._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v40);
      *(v18 + 32) = v49;
      *&v42 = v17;
      LOBYTE(v45) = 0;
      OSLogger.log(contentsOf:withLevel:)(v18, &v45);
    }

    else
    {
      sub_1AB461884();
      __break(1u);
    }
  }
}

void sub_1AB40D678(unint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a3;
  if (qword_1EB435DF8 != -1)
  {
    swift_once();
  }

  sub_1AB4622E4();
  v8 = v42;
  if (v42)
  {
    v9 = *(&v42 + 1);
    *&v42 = 0xD00000000000003CLL;
    *(&v42 + 1) = 0x80000001AB50ED70;
    v8(&v42);
    sub_1AB0177B8(v8, v9);
  }

  else
  {
    if (qword_1EB435DF0 != -1)
    {
      swift_once();
    }

    if (byte_1EB43D128 == 1)
    {
      v10 = sub_1AB461084();
      sub_1AB016760(0, &qword_1ED4D21E0, 0x1E69E9BF8);
      v11 = sub_1AB461324();
      if (os_log_type_enabled(v11, v10))
      {
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        *&v42 = v13;
        *v12 = 136446722;
        v14 = sub_1AB461614();
        v16 = sub_1AB030D2C(v14, v15, &v42);

        *(v12 + 4) = v16;
        *(v12 + 12) = 2050;
        *(v12 + 14) = a4;
        *(v12 + 22) = 2082;
        *(v12 + 24) = sub_1AB030D2C(0xD00000000000003CLL, 0x80000001AB50ED70, &v42);
        _os_log_impl(&dword_1AB012000, v11, v10, "%{public}s:%{public}lu: Requirement unsatisfied: %{public}s", v12, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1AC59F020](v13, -1, -1);
        MEMORY[0x1AC59F020](v12, -1, -1);
      }
    }

    else if (byte_1EB43D128 == 2)
    {
      if (qword_1EB435660 != -1)
      {
        swift_once();
      }

      v17 = qword_1EB435668;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10, &unk_1AB4D4860);
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_1AB4D4720;
      v49 = sub_1AB0168A8(0, 31, 0, MEMORY[0x1E69E7CC0]);
      v19._countAndFlagsBits = 0;
      v19._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v19);
      v48 = MEMORY[0x1E69E6A70];
      v45 = a1;
      v46 = a2;
      v47 = v5;
      sub_1AB01522C(&v45, v41);
      v42 = 0u;
      v43 = 0u;
      sub_1AB0169C4(v41, &v42);
      v44 = 0;
      v20 = v49;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v20 = sub_1AB0168A8(0, *(v20 + 2) + 1, 1, v20);
        v49 = v20;
      }

      v22 = *(v20 + 2);
      v21 = *(v20 + 3);
      if (v22 >= v21 >> 1)
      {
        v20 = sub_1AB0168A8((v21 > 1), v22 + 1, 1, v20);
      }

      *(v20 + 2) = v22 + 1;
      v23 = &v20[40 * v22];
      v24 = v42;
      v25 = v43;
      v23[64] = v44;
      *(v23 + 2) = v24;
      *(v23 + 3) = v25;
      v49 = v20;
      sub_1AB0167A8(&v45);
      v26._countAndFlagsBits = 58;
      v26._object = 0xE100000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v26);
      v48 = MEMORY[0x1E69E6810];
      v45 = a4;
      sub_1AB01522C(&v45, v41);
      v42 = 0u;
      v43 = 0u;
      sub_1AB0169C4(v41, &v42);
      v44 = 0;
      v27 = v49;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v27 = sub_1AB0168A8(0, *(v27 + 2) + 1, 1, v27);
        v49 = v27;
      }

      v29 = *(v27 + 2);
      v28 = *(v27 + 3);
      if (v29 >= v28 >> 1)
      {
        v27 = sub_1AB0168A8((v28 > 1), v29 + 1, 1, v27);
      }

      *(v27 + 2) = v29 + 1;
      v30 = &v27[40 * v29];
      v31 = v42;
      v32 = v43;
      v30[64] = v44;
      *(v30 + 2) = v31;
      *(v30 + 3) = v32;
      v49 = v27;
      sub_1AB0167A8(&v45);
      v33._countAndFlagsBits = 0xD00000000000001BLL;
      v33._object = 0x80000001AB50E540;
      LogMessage.StringInterpolation.appendLiteral(_:)(v33);
      v48 = MEMORY[0x1E69E6158];
      v45 = 0xD00000000000003CLL;
      v46 = 0x80000001AB50ED70;
      sub_1AB01522C(&v45, v41);
      v42 = 0u;
      v43 = 0u;
      sub_1AB0169C4(v41, &v42);
      v44 = 0;
      v34 = v49;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v34 = sub_1AB0168A8(0, *(v34 + 2) + 1, 1, v34);
        v49 = v34;
      }

      v36 = *(v34 + 2);
      v35 = *(v34 + 3);
      if (v36 >= v35 >> 1)
      {
        v34 = sub_1AB0168A8((v35 > 1), v36 + 1, 1, v34);
      }

      *(v34 + 2) = v36 + 1;
      v37 = &v34[40 * v36];
      v38 = v42;
      v39 = v43;
      v37[64] = v44;
      *(v37 + 2) = v38;
      *(v37 + 3) = v39;
      v49 = v34;
      sub_1AB0167A8(&v45);
      v40._countAndFlagsBits = 0;
      v40._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v40);
      *(v18 + 32) = v49;
      *&v42 = v17;
      LOBYTE(v45) = 0;
      OSLogger.log(contentsOf:withLevel:)(v18, &v45);
    }

    else
    {
      sub_1AB461884();
      __break(1u);
    }
  }
}

void sub_1AB40DC60(unint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a3;
  if (qword_1EB435DF8 != -1)
  {
    swift_once();
  }

  sub_1AB4622E4();
  v8 = v42;
  if (v42)
  {
    v9 = *(&v42 + 1);
    *&v42 = 0xD000000000000032;
    *(&v42 + 1) = 0x80000001AB50ED30;
    v8(&v42);
    sub_1AB0177B8(v8, v9);
  }

  else
  {
    if (qword_1EB435DF0 != -1)
    {
      swift_once();
    }

    if (byte_1EB43D128 == 1)
    {
      v10 = sub_1AB461084();
      sub_1AB016760(0, &qword_1ED4D21E0, 0x1E69E9BF8);
      v11 = sub_1AB461324();
      if (os_log_type_enabled(v11, v10))
      {
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        *&v42 = v13;
        *v12 = 136446722;
        v14 = sub_1AB461614();
        v16 = sub_1AB030D2C(v14, v15, &v42);

        *(v12 + 4) = v16;
        *(v12 + 12) = 2050;
        *(v12 + 14) = a4;
        *(v12 + 22) = 2082;
        *(v12 + 24) = sub_1AB030D2C(0xD000000000000032, 0x80000001AB50ED30, &v42);
        _os_log_impl(&dword_1AB012000, v11, v10, "%{public}s:%{public}lu: Requirement unsatisfied: %{public}s", v12, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1AC59F020](v13, -1, -1);
        MEMORY[0x1AC59F020](v12, -1, -1);
      }
    }

    else if (byte_1EB43D128 == 2)
    {
      if (qword_1EB435660 != -1)
      {
        swift_once();
      }

      v17 = qword_1EB435668;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10, &unk_1AB4D4860);
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_1AB4D4720;
      v49 = sub_1AB0168A8(0, 31, 0, MEMORY[0x1E69E7CC0]);
      v19._countAndFlagsBits = 0;
      v19._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v19);
      v48 = MEMORY[0x1E69E6A70];
      v45 = a1;
      v46 = a2;
      v47 = v5;
      sub_1AB01522C(&v45, v41);
      v42 = 0u;
      v43 = 0u;
      sub_1AB0169C4(v41, &v42);
      v44 = 0;
      v20 = v49;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v20 = sub_1AB0168A8(0, *(v20 + 2) + 1, 1, v20);
        v49 = v20;
      }

      v22 = *(v20 + 2);
      v21 = *(v20 + 3);
      if (v22 >= v21 >> 1)
      {
        v20 = sub_1AB0168A8((v21 > 1), v22 + 1, 1, v20);
      }

      *(v20 + 2) = v22 + 1;
      v23 = &v20[40 * v22];
      v24 = v42;
      v25 = v43;
      v23[64] = v44;
      *(v23 + 2) = v24;
      *(v23 + 3) = v25;
      v49 = v20;
      sub_1AB0167A8(&v45);
      v26._countAndFlagsBits = 58;
      v26._object = 0xE100000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v26);
      v48 = MEMORY[0x1E69E6810];
      v45 = a4;
      sub_1AB01522C(&v45, v41);
      v42 = 0u;
      v43 = 0u;
      sub_1AB0169C4(v41, &v42);
      v44 = 0;
      v27 = v49;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v27 = sub_1AB0168A8(0, *(v27 + 2) + 1, 1, v27);
        v49 = v27;
      }

      v29 = *(v27 + 2);
      v28 = *(v27 + 3);
      if (v29 >= v28 >> 1)
      {
        v27 = sub_1AB0168A8((v28 > 1), v29 + 1, 1, v27);
      }

      *(v27 + 2) = v29 + 1;
      v30 = &v27[40 * v29];
      v31 = v42;
      v32 = v43;
      v30[64] = v44;
      *(v30 + 2) = v31;
      *(v30 + 3) = v32;
      v49 = v27;
      sub_1AB0167A8(&v45);
      v33._countAndFlagsBits = 0xD00000000000001BLL;
      v33._object = 0x80000001AB50E540;
      LogMessage.StringInterpolation.appendLiteral(_:)(v33);
      v48 = MEMORY[0x1E69E6158];
      v45 = 0xD000000000000032;
      v46 = 0x80000001AB50ED30;
      sub_1AB01522C(&v45, v41);
      v42 = 0u;
      v43 = 0u;
      sub_1AB0169C4(v41, &v42);
      v44 = 0;
      v34 = v49;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v34 = sub_1AB0168A8(0, *(v34 + 2) + 1, 1, v34);
        v49 = v34;
      }

      v36 = *(v34 + 2);
      v35 = *(v34 + 3);
      if (v36 >= v35 >> 1)
      {
        v34 = sub_1AB0168A8((v35 > 1), v36 + 1, 1, v34);
      }

      *(v34 + 2) = v36 + 1;
      v37 = &v34[40 * v36];
      v38 = v42;
      v39 = v43;
      v37[64] = v44;
      *(v37 + 2) = v38;
      *(v37 + 3) = v39;
      v49 = v34;
      sub_1AB0167A8(&v45);
      v40._countAndFlagsBits = 0;
      v40._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v40);
      *(v18 + 32) = v49;
      *&v42 = v17;
      LOBYTE(v45) = 0;
      OSLogger.log(contentsOf:withLevel:)(v18, &v45);
    }

    else
    {
      sub_1AB461884();
      __break(1u);
    }
  }
}

void sub_1AB40E248(unint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a3;
  if (qword_1EB435DF8 != -1)
  {
    swift_once();
  }

  sub_1AB4622E4();
  v8 = v42;
  if (v42)
  {
    v9 = *(&v42 + 1);
    *&v42 = 0xD00000000000005CLL;
    *(&v42 + 1) = 0x80000001AB50E720;
    v8(&v42);
    sub_1AB0177B8(v8, v9);
  }

  else
  {
    if (qword_1EB435DF0 != -1)
    {
      swift_once();
    }

    if (byte_1EB43D128 == 1)
    {
      v10 = sub_1AB461084();
      sub_1AB016760(0, &qword_1ED4D21E0, 0x1E69E9BF8);
      v11 = sub_1AB461324();
      if (os_log_type_enabled(v11, v10))
      {
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        *&v42 = v13;
        *v12 = 136446722;
        v14 = sub_1AB461614();
        v16 = sub_1AB030D2C(v14, v15, &v42);

        *(v12 + 4) = v16;
        *(v12 + 12) = 2050;
        *(v12 + 14) = a4;
        *(v12 + 22) = 2082;
        *(v12 + 24) = sub_1AB030D2C(0xD00000000000005CLL, 0x80000001AB50E720, &v42);
        _os_log_impl(&dword_1AB012000, v11, v10, "%{public}s:%{public}lu: Requirement unsatisfied: %{public}s", v12, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1AC59F020](v13, -1, -1);
        MEMORY[0x1AC59F020](v12, -1, -1);
      }
    }

    else if (byte_1EB43D128 == 2)
    {
      if (qword_1EB435660 != -1)
      {
        swift_once();
      }

      v17 = qword_1EB435668;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10, &unk_1AB4D4860);
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_1AB4D4720;
      v49 = sub_1AB0168A8(0, 31, 0, MEMORY[0x1E69E7CC0]);
      v19._countAndFlagsBits = 0;
      v19._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v19);
      v48 = MEMORY[0x1E69E6A70];
      v45 = a1;
      v46 = a2;
      v47 = v5;
      sub_1AB01522C(&v45, v41);
      v42 = 0u;
      v43 = 0u;
      sub_1AB0169C4(v41, &v42);
      v44 = 0;
      v20 = v49;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v20 = sub_1AB0168A8(0, *(v20 + 2) + 1, 1, v20);
        v49 = v20;
      }

      v22 = *(v20 + 2);
      v21 = *(v20 + 3);
      if (v22 >= v21 >> 1)
      {
        v20 = sub_1AB0168A8((v21 > 1), v22 + 1, 1, v20);
      }

      *(v20 + 2) = v22 + 1;
      v23 = &v20[40 * v22];
      v24 = v42;
      v25 = v43;
      v23[64] = v44;
      *(v23 + 2) = v24;
      *(v23 + 3) = v25;
      v49 = v20;
      sub_1AB0167A8(&v45);
      v26._countAndFlagsBits = 58;
      v26._object = 0xE100000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v26);
      v48 = MEMORY[0x1E69E6810];
      v45 = a4;
      sub_1AB01522C(&v45, v41);
      v42 = 0u;
      v43 = 0u;
      sub_1AB0169C4(v41, &v42);
      v44 = 0;
      v27 = v49;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v27 = sub_1AB0168A8(0, *(v27 + 2) + 1, 1, v27);
        v49 = v27;
      }

      v29 = *(v27 + 2);
      v28 = *(v27 + 3);
      if (v29 >= v28 >> 1)
      {
        v27 = sub_1AB0168A8((v28 > 1), v29 + 1, 1, v27);
      }

      *(v27 + 2) = v29 + 1;
      v30 = &v27[40 * v29];
      v31 = v42;
      v32 = v43;
      v30[64] = v44;
      *(v30 + 2) = v31;
      *(v30 + 3) = v32;
      v49 = v27;
      sub_1AB0167A8(&v45);
      v33._countAndFlagsBits = 0xD00000000000001BLL;
      v33._object = 0x80000001AB50E540;
      LogMessage.StringInterpolation.appendLiteral(_:)(v33);
      v48 = MEMORY[0x1E69E6158];
      v45 = 0xD00000000000005CLL;
      v46 = 0x80000001AB50E720;
      sub_1AB01522C(&v45, v41);
      v42 = 0u;
      v43 = 0u;
      sub_1AB0169C4(v41, &v42);
      v44 = 0;
      v34 = v49;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v34 = sub_1AB0168A8(0, *(v34 + 2) + 1, 1, v34);
        v49 = v34;
      }

      v36 = *(v34 + 2);
      v35 = *(v34 + 3);
      if (v36 >= v35 >> 1)
      {
        v34 = sub_1AB0168A8((v35 > 1), v36 + 1, 1, v34);
      }

      *(v34 + 2) = v36 + 1;
      v37 = &v34[40 * v36];
      v38 = v42;
      v39 = v43;
      v37[64] = v44;
      *(v37 + 2) = v38;
      *(v37 + 3) = v39;
      v49 = v34;
      sub_1AB0167A8(&v45);
      v40._countAndFlagsBits = 0;
      v40._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v40);
      *(v18 + 32) = v49;
      *&v42 = v17;
      LOBYTE(v45) = 0;
      OSLogger.log(contentsOf:withLevel:)(v18, &v45);
    }

    else
    {
      sub_1AB461884();
      __break(1u);
    }
  }
}

void sub_1AB40E830(unint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a3;
  if (qword_1EB435DF8 != -1)
  {
    swift_once();
  }

  sub_1AB4622E4();
  v8 = v42;
  if (v42)
  {
    v9 = *(&v42 + 1);
    *&v42 = 0xD000000000000047;
    *(&v42 + 1) = 0x80000001AB50ECC0;
    v8(&v42);
    sub_1AB0177B8(v8, v9);
  }

  else
  {
    if (qword_1EB435DF0 != -1)
    {
      swift_once();
    }

    if (byte_1EB43D128 == 1)
    {
      v10 = sub_1AB461084();
      sub_1AB016760(0, &qword_1ED4D21E0, 0x1E69E9BF8);
      v11 = sub_1AB461324();
      if (os_log_type_enabled(v11, v10))
      {
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        *&v42 = v13;
        *v12 = 136446722;
        v14 = sub_1AB461614();
        v16 = sub_1AB030D2C(v14, v15, &v42);

        *(v12 + 4) = v16;
        *(v12 + 12) = 2050;
        *(v12 + 14) = a4;
        *(v12 + 22) = 2082;
        *(v12 + 24) = sub_1AB030D2C(0xD000000000000047, 0x80000001AB50ECC0, &v42);
        _os_log_impl(&dword_1AB012000, v11, v10, "%{public}s:%{public}lu: Requirement unsatisfied: %{public}s", v12, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1AC59F020](v13, -1, -1);
        MEMORY[0x1AC59F020](v12, -1, -1);
      }
    }

    else if (byte_1EB43D128 == 2)
    {
      if (qword_1EB435660 != -1)
      {
        swift_once();
      }

      v17 = qword_1EB435668;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10, &unk_1AB4D4860);
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_1AB4D4720;
      v49 = sub_1AB0168A8(0, 31, 0, MEMORY[0x1E69E7CC0]);
      v19._countAndFlagsBits = 0;
      v19._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v19);
      v48 = MEMORY[0x1E69E6A70];
      v45 = a1;
      v46 = a2;
      v47 = v5;
      sub_1AB01522C(&v45, v41);
      v42 = 0u;
      v43 = 0u;
      sub_1AB0169C4(v41, &v42);
      v44 = 0;
      v20 = v49;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v20 = sub_1AB0168A8(0, *(v20 + 2) + 1, 1, v20);
        v49 = v20;
      }

      v22 = *(v20 + 2);
      v21 = *(v20 + 3);
      if (v22 >= v21 >> 1)
      {
        v20 = sub_1AB0168A8((v21 > 1), v22 + 1, 1, v20);
      }

      *(v20 + 2) = v22 + 1;
      v23 = &v20[40 * v22];
      v24 = v42;
      v25 = v43;
      v23[64] = v44;
      *(v23 + 2) = v24;
      *(v23 + 3) = v25;
      v49 = v20;
      sub_1AB0167A8(&v45);
      v26._countAndFlagsBits = 58;
      v26._object = 0xE100000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v26);
      v48 = MEMORY[0x1E69E6810];
      v45 = a4;
      sub_1AB01522C(&v45, v41);
      v42 = 0u;
      v43 = 0u;
      sub_1AB0169C4(v41, &v42);
      v44 = 0;
      v27 = v49;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v27 = sub_1AB0168A8(0, *(v27 + 2) + 1, 1, v27);
        v49 = v27;
      }

      v29 = *(v27 + 2);
      v28 = *(v27 + 3);
      if (v29 >= v28 >> 1)
      {
        v27 = sub_1AB0168A8((v28 > 1), v29 + 1, 1, v27);
      }

      *(v27 + 2) = v29 + 1;
      v30 = &v27[40 * v29];
      v31 = v42;
      v32 = v43;
      v30[64] = v44;
      *(v30 + 2) = v31;
      *(v30 + 3) = v32;
      v49 = v27;
      sub_1AB0167A8(&v45);
      v33._countAndFlagsBits = 0xD00000000000001BLL;
      v33._object = 0x80000001AB50E540;
      LogMessage.StringInterpolation.appendLiteral(_:)(v33);
      v48 = MEMORY[0x1E69E6158];
      v45 = 0xD000000000000047;
      v46 = 0x80000001AB50ECC0;
      sub_1AB01522C(&v45, v41);
      v42 = 0u;
      v43 = 0u;
      sub_1AB0169C4(v41, &v42);
      v44 = 0;
      v34 = v49;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v34 = sub_1AB0168A8(0, *(v34 + 2) + 1, 1, v34);
        v49 = v34;
      }

      v36 = *(v34 + 2);
      v35 = *(v34 + 3);
      if (v36 >= v35 >> 1)
      {
        v34 = sub_1AB0168A8((v35 > 1), v36 + 1, 1, v34);
      }

      *(v34 + 2) = v36 + 1;
      v37 = &v34[40 * v36];
      v38 = v42;
      v39 = v43;
      v37[64] = v44;
      *(v37 + 2) = v38;
      *(v37 + 3) = v39;
      v49 = v34;
      sub_1AB0167A8(&v45);
      v40._countAndFlagsBits = 0;
      v40._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v40);
      *(v18 + 32) = v49;
      *&v42 = v17;
      LOBYTE(v45) = 0;
      OSLogger.log(contentsOf:withLevel:)(v18, &v45);
    }

    else
    {
      sub_1AB461884();
      __break(1u);
    }
  }
}

void sub_1AB40EE18(unint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a3;
  if (qword_1EB435DF8 != -1)
  {
    swift_once();
  }

  sub_1AB4622E4();
  v8 = v42;
  if (v42)
  {
    v9 = *(&v42 + 1);
    *&v42 = 0xD00000000000002BLL;
    *(&v42 + 1) = 0x80000001AB50EC90;
    v8(&v42);
    sub_1AB0177B8(v8, v9);
  }

  else
  {
    if (qword_1EB435DF0 != -1)
    {
      swift_once();
    }

    if (byte_1EB43D128 == 1)
    {
      v10 = sub_1AB461084();
      sub_1AB016760(0, &qword_1ED4D21E0, 0x1E69E9BF8);
      v11 = sub_1AB461324();
      if (os_log_type_enabled(v11, v10))
      {
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        *&v42 = v13;
        *v12 = 136446722;
        v14 = sub_1AB461614();
        v16 = sub_1AB030D2C(v14, v15, &v42);

        *(v12 + 4) = v16;
        *(v12 + 12) = 2050;
        *(v12 + 14) = a4;
        *(v12 + 22) = 2082;
        *(v12 + 24) = sub_1AB030D2C(0xD00000000000002BLL, 0x80000001AB50EC90, &v42);
        _os_log_impl(&dword_1AB012000, v11, v10, "%{public}s:%{public}lu: Requirement unsatisfied: %{public}s", v12, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1AC59F020](v13, -1, -1);
        MEMORY[0x1AC59F020](v12, -1, -1);
      }
    }

    else if (byte_1EB43D128 == 2)
    {
      if (qword_1EB435660 != -1)
      {
        swift_once();
      }

      v17 = qword_1EB435668;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10, &unk_1AB4D4860);
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_1AB4D4720;
      v49 = sub_1AB0168A8(0, 31, 0, MEMORY[0x1E69E7CC0]);
      v19._countAndFlagsBits = 0;
      v19._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v19);
      v48 = MEMORY[0x1E69E6A70];
      v45 = a1;
      v46 = a2;
      v47 = v5;
      sub_1AB01522C(&v45, v41);
      v42 = 0u;
      v43 = 0u;
      sub_1AB0169C4(v41, &v42);
      v44 = 0;
      v20 = v49;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v20 = sub_1AB0168A8(0, *(v20 + 2) + 1, 1, v20);
        v49 = v20;
      }

      v22 = *(v20 + 2);
      v21 = *(v20 + 3);
      if (v22 >= v21 >> 1)
      {
        v20 = sub_1AB0168A8((v21 > 1), v22 + 1, 1, v20);
      }

      *(v20 + 2) = v22 + 1;
      v23 = &v20[40 * v22];
      v24 = v42;
      v25 = v43;
      v23[64] = v44;
      *(v23 + 2) = v24;
      *(v23 + 3) = v25;
      v49 = v20;
      sub_1AB0167A8(&v45);
      v26._countAndFlagsBits = 58;
      v26._object = 0xE100000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v26);
      v48 = MEMORY[0x1E69E6810];
      v45 = a4;
      sub_1AB01522C(&v45, v41);
      v42 = 0u;
      v43 = 0u;
      sub_1AB0169C4(v41, &v42);
      v44 = 0;
      v27 = v49;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v27 = sub_1AB0168A8(0, *(v27 + 2) + 1, 1, v27);
        v49 = v27;
      }

      v29 = *(v27 + 2);
      v28 = *(v27 + 3);
      if (v29 >= v28 >> 1)
      {
        v27 = sub_1AB0168A8((v28 > 1), v29 + 1, 1, v27);
      }

      *(v27 + 2) = v29 + 1;
      v30 = &v27[40 * v29];
      v31 = v42;
      v32 = v43;
      v30[64] = v44;
      *(v30 + 2) = v31;
      *(v30 + 3) = v32;
      v49 = v27;
      sub_1AB0167A8(&v45);
      v33._countAndFlagsBits = 0xD00000000000001BLL;
      v33._object = 0x80000001AB50E540;
      LogMessage.StringInterpolation.appendLiteral(_:)(v33);
      v48 = MEMORY[0x1E69E6158];
      v45 = 0xD00000000000002BLL;
      v46 = 0x80000001AB50EC90;
      sub_1AB01522C(&v45, v41);
      v42 = 0u;
      v43 = 0u;
      sub_1AB0169C4(v41, &v42);
      v44 = 0;
      v34 = v49;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v34 = sub_1AB0168A8(0, *(v34 + 2) + 1, 1, v34);
        v49 = v34;
      }

      v36 = *(v34 + 2);
      v35 = *(v34 + 3);
      if (v36 >= v35 >> 1)
      {
        v34 = sub_1AB0168A8((v35 > 1), v36 + 1, 1, v34);
      }

      *(v34 + 2) = v36 + 1;
      v37 = &v34[40 * v36];
      v38 = v42;
      v39 = v43;
      v37[64] = v44;
      *(v37 + 2) = v38;
      *(v37 + 3) = v39;
      v49 = v34;
      sub_1AB0167A8(&v45);
      v40._countAndFlagsBits = 0;
      v40._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v40);
      *(v18 + 32) = v49;
      *&v42 = v17;
      LOBYTE(v45) = 0;
      OSLogger.log(contentsOf:withLevel:)(v18, &v45);
    }

    else
    {
      sub_1AB461884();
      __break(1u);
    }
  }
}

void sub_1AB40F400(unint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a3;
  if (qword_1EB435DF8 != -1)
  {
    swift_once();
  }

  sub_1AB4622E4();
  v8 = v42;
  if (v42)
  {
    v9 = *(&v42 + 1);
    *&v42 = 0xD000000000000047;
    *(&v42 + 1) = 0x80000001AB50EAD0;
    v8(&v42);
    sub_1AB0177B8(v8, v9);
  }

  else
  {
    if (qword_1EB435DF0 != -1)
    {
      swift_once();
    }

    if (byte_1EB43D128 == 1)
    {
      v10 = sub_1AB461084();
      sub_1AB016760(0, &qword_1ED4D21E0, 0x1E69E9BF8);
      v11 = sub_1AB461324();
      if (os_log_type_enabled(v11, v10))
      {
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        *&v42 = v13;
        *v12 = 136446722;
        v14 = sub_1AB461614();
        v16 = sub_1AB030D2C(v14, v15, &v42);

        *(v12 + 4) = v16;
        *(v12 + 12) = 2050;
        *(v12 + 14) = a4;
        *(v12 + 22) = 2082;
        *(v12 + 24) = sub_1AB030D2C(0xD000000000000047, 0x80000001AB50EAD0, &v42);
        _os_log_impl(&dword_1AB012000, v11, v10, "%{public}s:%{public}lu: Requirement unsatisfied: %{public}s", v12, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1AC59F020](v13, -1, -1);
        MEMORY[0x1AC59F020](v12, -1, -1);
      }
    }

    else if (byte_1EB43D128 == 2)
    {
      if (qword_1EB435660 != -1)
      {
        swift_once();
      }

      v17 = qword_1EB435668;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10, &unk_1AB4D4860);
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_1AB4D4720;
      v49 = sub_1AB0168A8(0, 31, 0, MEMORY[0x1E69E7CC0]);
      v19._countAndFlagsBits = 0;
      v19._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v19);
      v48 = MEMORY[0x1E69E6A70];
      v45 = a1;
      v46 = a2;
      v47 = v5;
      sub_1AB01522C(&v45, v41);
      v42 = 0u;
      v43 = 0u;
      sub_1AB0169C4(v41, &v42);
      v44 = 0;
      v20 = v49;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v20 = sub_1AB0168A8(0, *(v20 + 2) + 1, 1, v20);
        v49 = v20;
      }

      v22 = *(v20 + 2);
      v21 = *(v20 + 3);
      if (v22 >= v21 >> 1)
      {
        v20 = sub_1AB0168A8((v21 > 1), v22 + 1, 1, v20);
      }

      *(v20 + 2) = v22 + 1;
      v23 = &v20[40 * v22];
      v24 = v42;
      v25 = v43;
      v23[64] = v44;
      *(v23 + 2) = v24;
      *(v23 + 3) = v25;
      v49 = v20;
      sub_1AB0167A8(&v45);
      v26._countAndFlagsBits = 58;
      v26._object = 0xE100000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v26);
      v48 = MEMORY[0x1E69E6810];
      v45 = a4;
      sub_1AB01522C(&v45, v41);
      v42 = 0u;
      v43 = 0u;
      sub_1AB0169C4(v41, &v42);
      v44 = 0;
      v27 = v49;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v27 = sub_1AB0168A8(0, *(v27 + 2) + 1, 1, v27);
        v49 = v27;
      }

      v29 = *(v27 + 2);
      v28 = *(v27 + 3);
      if (v29 >= v28 >> 1)
      {
        v27 = sub_1AB0168A8((v28 > 1), v29 + 1, 1, v27);
      }

      *(v27 + 2) = v29 + 1;
      v30 = &v27[40 * v29];
      v31 = v42;
      v32 = v43;
      v30[64] = v44;
      *(v30 + 2) = v31;
      *(v30 + 3) = v32;
      v49 = v27;
      sub_1AB0167A8(&v45);
      v33._countAndFlagsBits = 0xD00000000000001BLL;
      v33._object = 0x80000001AB50E540;
      LogMessage.StringInterpolation.appendLiteral(_:)(v33);
      v48 = MEMORY[0x1E69E6158];
      v45 = 0xD000000000000047;
      v46 = 0x80000001AB50EAD0;
      sub_1AB01522C(&v45, v41);
      v42 = 0u;
      v43 = 0u;
      sub_1AB0169C4(v41, &v42);
      v44 = 0;
      v34 = v49;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v34 = sub_1AB0168A8(0, *(v34 + 2) + 1, 1, v34);
        v49 = v34;
      }

      v36 = *(v34 + 2);
      v35 = *(v34 + 3);
      if (v36 >= v35 >> 1)
      {
        v34 = sub_1AB0168A8((v35 > 1), v36 + 1, 1, v34);
      }

      *(v34 + 2) = v36 + 1;
      v37 = &v34[40 * v36];
      v38 = v42;
      v39 = v43;
      v37[64] = v44;
      *(v37 + 2) = v38;
      *(v37 + 3) = v39;
      v49 = v34;
      sub_1AB0167A8(&v45);
      v40._countAndFlagsBits = 0;
      v40._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v40);
      *(v18 + 32) = v49;
      *&v42 = v17;
      LOBYTE(v45) = 0;
      OSLogger.log(contentsOf:withLevel:)(v18, &v45);
    }

    else
    {
      sub_1AB461884();
      __break(1u);
    }
  }
}

void sub_1AB40F9E8(unint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a3;
  if (qword_1EB435DF8 != -1)
  {
    swift_once();
  }

  sub_1AB4622E4();
  v8 = v42;
  if (v42)
  {
    v9 = *(&v42 + 1);
    *&v42 = 0xD00000000000002ALL;
    *(&v42 + 1) = 0x80000001AB50EC60;
    v8(&v42);
    sub_1AB0177B8(v8, v9);
  }

  else
  {
    if (qword_1EB435DF0 != -1)
    {
      swift_once();
    }

    if (byte_1EB43D128 == 1)
    {
      v10 = sub_1AB461084();
      sub_1AB016760(0, &qword_1ED4D21E0, 0x1E69E9BF8);
      v11 = sub_1AB461324();
      if (os_log_type_enabled(v11, v10))
      {
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        *&v42 = v13;
        *v12 = 136446722;
        v14 = sub_1AB461614();
        v16 = sub_1AB030D2C(v14, v15, &v42);

        *(v12 + 4) = v16;
        *(v12 + 12) = 2050;
        *(v12 + 14) = a4;
        *(v12 + 22) = 2082;
        *(v12 + 24) = sub_1AB030D2C(0xD00000000000002ALL, 0x80000001AB50EC60, &v42);
        _os_log_impl(&dword_1AB012000, v11, v10, "%{public}s:%{public}lu: Requirement unsatisfied: %{public}s", v12, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1AC59F020](v13, -1, -1);
        MEMORY[0x1AC59F020](v12, -1, -1);
      }
    }

    else if (byte_1EB43D128 == 2)
    {
      if (qword_1EB435660 != -1)
      {
        swift_once();
      }

      v17 = qword_1EB435668;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10, &unk_1AB4D4860);
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_1AB4D4720;
      v49 = sub_1AB0168A8(0, 31, 0, MEMORY[0x1E69E7CC0]);
      v19._countAndFlagsBits = 0;
      v19._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v19);
      v48 = MEMORY[0x1E69E6A70];
      v45 = a1;
      v46 = a2;
      v47 = v5;
      sub_1AB01522C(&v45, v41);
      v42 = 0u;
      v43 = 0u;
      sub_1AB0169C4(v41, &v42);
      v44 = 0;
      v20 = v49;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v20 = sub_1AB0168A8(0, *(v20 + 2) + 1, 1, v20);
        v49 = v20;
      }

      v22 = *(v20 + 2);
      v21 = *(v20 + 3);
      if (v22 >= v21 >> 1)
      {
        v20 = sub_1AB0168A8((v21 > 1), v22 + 1, 1, v20);
      }

      *(v20 + 2) = v22 + 1;
      v23 = &v20[40 * v22];
      v24 = v42;
      v25 = v43;
      v23[64] = v44;
      *(v23 + 2) = v24;
      *(v23 + 3) = v25;
      v49 = v20;
      sub_1AB0167A8(&v45);
      v26._countAndFlagsBits = 58;
      v26._object = 0xE100000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v26);
      v48 = MEMORY[0x1E69E6810];
      v45 = a4;
      sub_1AB01522C(&v45, v41);
      v42 = 0u;
      v43 = 0u;
      sub_1AB0169C4(v41, &v42);
      v44 = 0;
      v27 = v49;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v27 = sub_1AB0168A8(0, *(v27 + 2) + 1, 1, v27);
        v49 = v27;
      }

      v29 = *(v27 + 2);
      v28 = *(v27 + 3);
      if (v29 >= v28 >> 1)
      {
        v27 = sub_1AB0168A8((v28 > 1), v29 + 1, 1, v27);
      }

      *(v27 + 2) = v29 + 1;
      v30 = &v27[40 * v29];
      v31 = v42;
      v32 = v43;
      v30[64] = v44;
      *(v30 + 2) = v31;
      *(v30 + 3) = v32;
      v49 = v27;
      sub_1AB0167A8(&v45);
      v33._countAndFlagsBits = 0xD00000000000001BLL;
      v33._object = 0x80000001AB50E540;
      LogMessage.StringInterpolation.appendLiteral(_:)(v33);
      v48 = MEMORY[0x1E69E6158];
      v45 = 0xD00000000000002ALL;
      v46 = 0x80000001AB50EC60;
      sub_1AB01522C(&v45, v41);
      v42 = 0u;
      v43 = 0u;
      sub_1AB0169C4(v41, &v42);
      v44 = 0;
      v34 = v49;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v34 = sub_1AB0168A8(0, *(v34 + 2) + 1, 1, v34);
        v49 = v34;
      }

      v36 = *(v34 + 2);
      v35 = *(v34 + 3);
      if (v36 >= v35 >> 1)
      {
        v34 = sub_1AB0168A8((v35 > 1), v36 + 1, 1, v34);
      }

      *(v34 + 2) = v36 + 1;
      v37 = &v34[40 * v36];
      v38 = v42;
      v39 = v43;
      v37[64] = v44;
      *(v37 + 2) = v38;
      *(v37 + 3) = v39;
      v49 = v34;
      sub_1AB0167A8(&v45);
      v40._countAndFlagsBits = 0;
      v40._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v40);
      *(v18 + 32) = v49;
      *&v42 = v17;
      LOBYTE(v45) = 0;
      OSLogger.log(contentsOf:withLevel:)(v18, &v45);
    }

    else
    {
      sub_1AB461884();
      __break(1u);
    }
  }
}

void sub_1AB40FFD0(unint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a3;
  if (qword_1EB435DF8 != -1)
  {
    swift_once();
  }

  sub_1AB4622E4();
  v8 = v42;
  if (v42)
  {
    v9 = *(&v42 + 1);
    *&v42 = 0xD00000000000004CLL;
    *(&v42 + 1) = 0x80000001AB50EBD0;
    v8(&v42);
    sub_1AB0177B8(v8, v9);
  }

  else
  {
    if (qword_1EB435DF0 != -1)
    {
      swift_once();
    }

    if (byte_1EB43D128 == 1)
    {
      v10 = sub_1AB461084();
      sub_1AB016760(0, &qword_1ED4D21E0, 0x1E69E9BF8);
      v11 = sub_1AB461324();
      if (os_log_type_enabled(v11, v10))
      {
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        *&v42 = v13;
        *v12 = 136446722;
        v14 = sub_1AB461614();
        v16 = sub_1AB030D2C(v14, v15, &v42);

        *(v12 + 4) = v16;
        *(v12 + 12) = 2050;
        *(v12 + 14) = a4;
        *(v12 + 22) = 2082;
        *(v12 + 24) = sub_1AB030D2C(0xD00000000000004CLL, 0x80000001AB50EBD0, &v42);
        _os_log_impl(&dword_1AB012000, v11, v10, "%{public}s:%{public}lu: Requirement unsatisfied: %{public}s", v12, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1AC59F020](v13, -1, -1);
        MEMORY[0x1AC59F020](v12, -1, -1);
      }
    }

    else if (byte_1EB43D128 == 2)
    {
      if (qword_1EB435660 != -1)
      {
        swift_once();
      }

      v17 = qword_1EB435668;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10, &unk_1AB4D4860);
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_1AB4D4720;
      v49 = sub_1AB0168A8(0, 31, 0, MEMORY[0x1E69E7CC0]);
      v19._countAndFlagsBits = 0;
      v19._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v19);
      v48 = MEMORY[0x1E69E6A70];
      v45 = a1;
      v46 = a2;
      v47 = v5;
      sub_1AB01522C(&v45, v41);
      v42 = 0u;
      v43 = 0u;
      sub_1AB0169C4(v41, &v42);
      v44 = 0;
      v20 = v49;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v20 = sub_1AB0168A8(0, *(v20 + 2) + 1, 1, v20);
        v49 = v20;
      }

      v22 = *(v20 + 2);
      v21 = *(v20 + 3);
      if (v22 >= v21 >> 1)
      {
        v20 = sub_1AB0168A8((v21 > 1), v22 + 1, 1, v20);
      }

      *(v20 + 2) = v22 + 1;
      v23 = &v20[40 * v22];
      v24 = v42;
      v25 = v43;
      v23[64] = v44;
      *(v23 + 2) = v24;
      *(v23 + 3) = v25;
      v49 = v20;
      sub_1AB0167A8(&v45);
      v26._countAndFlagsBits = 58;
      v26._object = 0xE100000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v26);
      v48 = MEMORY[0x1E69E6810];
      v45 = a4;
      sub_1AB01522C(&v45, v41);
      v42 = 0u;
      v43 = 0u;
      sub_1AB0169C4(v41, &v42);
      v44 = 0;
      v27 = v49;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v27 = sub_1AB0168A8(0, *(v27 + 2) + 1, 1, v27);
        v49 = v27;
      }

      v29 = *(v27 + 2);
      v28 = *(v27 + 3);
      if (v29 >= v28 >> 1)
      {
        v27 = sub_1AB0168A8((v28 > 1), v29 + 1, 1, v27);
      }

      *(v27 + 2) = v29 + 1;
      v30 = &v27[40 * v29];
      v31 = v42;
      v32 = v43;
      v30[64] = v44;
      *(v30 + 2) = v31;
      *(v30 + 3) = v32;
      v49 = v27;
      sub_1AB0167A8(&v45);
      v33._countAndFlagsBits = 0xD00000000000001BLL;
      v33._object = 0x80000001AB50E540;
      LogMessage.StringInterpolation.appendLiteral(_:)(v33);
      v48 = MEMORY[0x1E69E6158];
      v45 = 0xD00000000000004CLL;
      v46 = 0x80000001AB50EBD0;
      sub_1AB01522C(&v45, v41);
      v42 = 0u;
      v43 = 0u;
      sub_1AB0169C4(v41, &v42);
      v44 = 0;
      v34 = v49;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v34 = sub_1AB0168A8(0, *(v34 + 2) + 1, 1, v34);
        v49 = v34;
      }

      v36 = *(v34 + 2);
      v35 = *(v34 + 3);
      if (v36 >= v35 >> 1)
      {
        v34 = sub_1AB0168A8((v35 > 1), v36 + 1, 1, v34);
      }

      *(v34 + 2) = v36 + 1;
      v37 = &v34[40 * v36];
      v38 = v42;
      v39 = v43;
      v37[64] = v44;
      *(v37 + 2) = v38;
      *(v37 + 3) = v39;
      v49 = v34;
      sub_1AB0167A8(&v45);
      v40._countAndFlagsBits = 0;
      v40._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v40);
      *(v18 + 32) = v49;
      *&v42 = v17;
      LOBYTE(v45) = 0;
      OSLogger.log(contentsOf:withLevel:)(v18, &v45);
    }

    else
    {
      sub_1AB461884();
      __break(1u);
    }
  }
}

void sub_1AB4105B8(unint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a3;
  if (qword_1EB435DF8 != -1)
  {
    swift_once();
  }

  sub_1AB4622E4();
  v8 = v42;
  if (v42)
  {
    v9 = *(&v42 + 1);
    *&v42 = 0xD00000000000003ALL;
    *(&v42 + 1) = 0x80000001AB50EB20;
    v8(&v42);
    sub_1AB0177B8(v8, v9);
  }

  else
  {
    if (qword_1EB435DF0 != -1)
    {
      swift_once();
    }

    if (byte_1EB43D128 == 1)
    {
      v10 = sub_1AB461084();
      sub_1AB016760(0, &qword_1ED4D21E0, 0x1E69E9BF8);
      v11 = sub_1AB461324();
      if (os_log_type_enabled(v11, v10))
      {
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        *&v42 = v13;
        *v12 = 136446722;
        v14 = sub_1AB461614();
        v16 = sub_1AB030D2C(v14, v15, &v42);

        *(v12 + 4) = v16;
        *(v12 + 12) = 2050;
        *(v12 + 14) = a4;
        *(v12 + 22) = 2082;
        *(v12 + 24) = sub_1AB030D2C(0xD00000000000003ALL, 0x80000001AB50EB20, &v42);
        _os_log_impl(&dword_1AB012000, v11, v10, "%{public}s:%{public}lu: Requirement unsatisfied: %{public}s", v12, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1AC59F020](v13, -1, -1);
        MEMORY[0x1AC59F020](v12, -1, -1);
      }
    }

    else if (byte_1EB43D128 == 2)
    {
      if (qword_1EB435660 != -1)
      {
        swift_once();
      }

      v17 = qword_1EB435668;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10, &unk_1AB4D4860);
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_1AB4D4720;
      v49 = sub_1AB0168A8(0, 31, 0, MEMORY[0x1E69E7CC0]);
      v19._countAndFlagsBits = 0;
      v19._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v19);
      v48 = MEMORY[0x1E69E6A70];
      v45 = a1;
      v46 = a2;
      v47 = v5;
      sub_1AB01522C(&v45, v41);
      v42 = 0u;
      v43 = 0u;
      sub_1AB0169C4(v41, &v42);
      v44 = 0;
      v20 = v49;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v20 = sub_1AB0168A8(0, *(v20 + 2) + 1, 1, v20);
        v49 = v20;
      }

      v22 = *(v20 + 2);
      v21 = *(v20 + 3);
      if (v22 >= v21 >> 1)
      {
        v20 = sub_1AB0168A8((v21 > 1), v22 + 1, 1, v20);
      }

      *(v20 + 2) = v22 + 1;
      v23 = &v20[40 * v22];
      v24 = v42;
      v25 = v43;
      v23[64] = v44;
      *(v23 + 2) = v24;
      *(v23 + 3) = v25;
      v49 = v20;
      sub_1AB0167A8(&v45);
      v26._countAndFlagsBits = 58;
      v26._object = 0xE100000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v26);
      v48 = MEMORY[0x1E69E6810];
      v45 = a4;
      sub_1AB01522C(&v45, v41);
      v42 = 0u;
      v43 = 0u;
      sub_1AB0169C4(v41, &v42);
      v44 = 0;
      v27 = v49;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v27 = sub_1AB0168A8(0, *(v27 + 2) + 1, 1, v27);
        v49 = v27;
      }

      v29 = *(v27 + 2);
      v28 = *(v27 + 3);
      if (v29 >= v28 >> 1)
      {
        v27 = sub_1AB0168A8((v28 > 1), v29 + 1, 1, v27);
      }

      *(v27 + 2) = v29 + 1;
      v30 = &v27[40 * v29];
      v31 = v42;
      v32 = v43;
      v30[64] = v44;
      *(v30 + 2) = v31;
      *(v30 + 3) = v32;
      v49 = v27;
      sub_1AB0167A8(&v45);
      v33._countAndFlagsBits = 0xD00000000000001BLL;
      v33._object = 0x80000001AB50E540;
      LogMessage.StringInterpolation.appendLiteral(_:)(v33);
      v48 = MEMORY[0x1E69E6158];
      v45 = 0xD00000000000003ALL;
      v46 = 0x80000001AB50EB20;
      sub_1AB01522C(&v45, v41);
      v42 = 0u;
      v43 = 0u;
      sub_1AB0169C4(v41, &v42);
      v44 = 0;
      v34 = v49;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v34 = sub_1AB0168A8(0, *(v34 + 2) + 1, 1, v34);
        v49 = v34;
      }

      v36 = *(v34 + 2);
      v35 = *(v34 + 3);
      if (v36 >= v35 >> 1)
      {
        v34 = sub_1AB0168A8((v35 > 1), v36 + 1, 1, v34);
      }

      *(v34 + 2) = v36 + 1;
      v37 = &v34[40 * v36];
      v38 = v42;
      v39 = v43;
      v37[64] = v44;
      *(v37 + 2) = v38;
      *(v37 + 3) = v39;
      v49 = v34;
      sub_1AB0167A8(&v45);
      v40._countAndFlagsBits = 0;
      v40._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v40);
      *(v18 + 32) = v49;
      *&v42 = v17;
      LOBYTE(v45) = 0;
      OSLogger.log(contentsOf:withLevel:)(v18, &v45);
    }

    else
    {
      sub_1AB461884();
      __break(1u);
    }
  }
}

void sub_1AB410BA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a3;
  if (qword_1EB435DF8 != -1)
  {
    swift_once();
  }

  sub_1AB4622E4();
  v9 = v49;
  if (v49)
  {
    v10 = *(&v49 + 1);
    sub_1AB4615D4();

    *&v49 = 0xD00000000000001ELL;
    *(&v49 + 1) = 0x80000001AB50E9D0;
    v11 = sub_1AB462314();
    MEMORY[0x1AC59BA20](v11);

    MEMORY[0x1AC59BA20](46, 0xE100000000000000);
    v9(&v49);
    sub_1AB0177B8(v9, v10);
LABEL_26:

    return;
  }

  if (qword_1EB435DF0 != -1)
  {
    swift_once();
  }

  if (byte_1EB43D128 == 1)
  {
    sub_1AB4615D4();

    *&v49 = 0xD00000000000001ELL;
    *(&v49 + 1) = 0x80000001AB50E9D0;
    v12 = sub_1AB462314();
    MEMORY[0x1AC59BA20](v12);

    MEMORY[0x1AC59BA20](46, 0xE100000000000000);
    v13 = v49;
    v14 = sub_1AB461084();
    sub_1AB016760(0, &qword_1ED4D21E0, 0x1E69E9BF8);
    v15 = sub_1AB461324();
    if (os_log_type_enabled(v15, v14))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *&v49 = v17;
      *v16 = 136446722;
      v18 = sub_1AB461614();
      v20 = sub_1AB030D2C(v18, v19, &v49);

      *(v16 + 4) = v20;
      *(v16 + 12) = 2050;
      *(v16 + 14) = a4;
      *(v16 + 22) = 2082;
      v21 = sub_1AB030D2C(v13, *(&v13 + 1), &v49);

      *(v16 + 24) = v21;
      _os_log_impl(&dword_1AB012000, v15, v14, "%{public}s:%{public}lu: Requirement unsatisfied: %{public}s", v16, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1AC59F020](v17, -1, -1);
      MEMORY[0x1AC59F020](v16, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    if (byte_1EB43D128 == 2)
    {
      if (qword_1EB435660 != -1)
      {
        swift_once();
      }

      v22 = qword_1EB435668;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10, &unk_1AB4D4860);
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_1AB4D4720;
      v55 = sub_1AB0168A8(0, 31, 0, MEMORY[0x1E69E7CC0]);
      v24._countAndFlagsBits = 0;
      v24._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v24);
      v54 = MEMORY[0x1E69E6A70];
      *&v52 = a1;
      *(&v52 + 1) = a2;
      v53 = v6;
      sub_1AB01522C(&v52, v48);
      v49 = 0u;
      v50 = 0u;
      sub_1AB0169C4(v48, &v49);
      v51 = 0;
      v25 = v55;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v25 = sub_1AB0168A8(0, *(v25 + 2) + 1, 1, v25);
        v55 = v25;
      }

      v27 = *(v25 + 2);
      v26 = *(v25 + 3);
      if (v27 >= v26 >> 1)
      {
        v25 = sub_1AB0168A8((v26 > 1), v27 + 1, 1, v25);
      }

      *(v25 + 2) = v27 + 1;
      v28 = &v25[40 * v27];
      v29 = v49;
      v30 = v50;
      v28[64] = v51;
      *(v28 + 2) = v29;
      *(v28 + 3) = v30;
      v55 = v25;
      sub_1AB0167A8(&v52);
      v31._countAndFlagsBits = 58;
      v31._object = 0xE100000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v31);
      v54 = MEMORY[0x1E69E6810];
      *&v52 = a4;
      sub_1AB01522C(&v52, v48);
      v49 = 0u;
      v50 = 0u;
      sub_1AB0169C4(v48, &v49);
      v51 = 0;
      v32 = v55;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v32 = sub_1AB0168A8(0, *(v32 + 2) + 1, 1, v32);
        v55 = v32;
      }

      v34 = *(v32 + 2);
      v33 = *(v32 + 3);
      if (v34 >= v33 >> 1)
      {
        v32 = sub_1AB0168A8((v33 > 1), v34 + 1, 1, v32);
      }

      *(v32 + 2) = v34 + 1;
      v35 = &v32[40 * v34];
      v36 = v49;
      v37 = v50;
      v35[64] = v51;
      *(v35 + 2) = v36;
      *(v35 + 3) = v37;
      v55 = v32;
      sub_1AB0167A8(&v52);
      v38._countAndFlagsBits = 0xD00000000000001BLL;
      v38._object = 0x80000001AB50E540;
      LogMessage.StringInterpolation.appendLiteral(_:)(v38);
      *&v49 = 0;
      *(&v49 + 1) = 0xE000000000000000;
      sub_1AB4615D4();

      *&v49 = 0xD00000000000001ELL;
      *(&v49 + 1) = 0x80000001AB50E9D0;
      v39 = sub_1AB462314();
      MEMORY[0x1AC59BA20](v39);

      MEMORY[0x1AC59BA20](46, 0xE100000000000000);
      v54 = MEMORY[0x1E69E6158];
      v52 = v49;
      sub_1AB01522C(&v52, v48);
      v49 = 0u;
      v50 = 0u;
      sub_1AB0169C4(v48, &v49);
      v51 = 0;
      v40 = v55;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v40 = sub_1AB0168A8(0, *(v40 + 2) + 1, 1, v40);
      }

      v42 = *(v40 + 2);
      v41 = *(v40 + 3);
      if (v42 >= v41 >> 1)
      {
        v40 = sub_1AB0168A8((v41 > 1), v42 + 1, 1, v40);
      }

      *(v40 + 2) = v42 + 1;
      v43 = &v40[40 * v42];
      v44 = v49;
      v45 = v50;
      v43[64] = v51;
      *(v43 + 2) = v44;
      *(v43 + 3) = v45;
      v55 = v40;
      sub_1AB0167A8(&v52);
      v46._countAndFlagsBits = 0;
      v46._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v46);
      *(v23 + 32) = v55;
      *&v49 = v22;
      LOBYTE(v52) = 0;
      OSLogger.log(contentsOf:withLevel:)(v23, &v52);
      goto LABEL_26;
    }

    sub_1AB4615D4();

    v47 = sub_1AB462314();
    MEMORY[0x1AC59BA20](v47);

    MEMORY[0x1AC59BA20](46, 0xE100000000000000);
    sub_1AB461884();
    __break(1u);
  }
}