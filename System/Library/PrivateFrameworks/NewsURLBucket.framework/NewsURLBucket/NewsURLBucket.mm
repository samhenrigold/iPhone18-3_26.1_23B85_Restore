id sub_25C3352CC(char *a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  ObjectType = swift_getObjectType();
  v8 = *a3;
  a4(0);
  *&a1[v8] = swift_allocObject();
  v10.receiver = a1;
  v10.super_class = ObjectType;
  return objc_msgSendSuper2(&v10, sel_init);
}

uint64_t variable initialization expression of URLHasher.stringHasher()
{
  type metadata accessor for StringHasher();

  return swift_allocObject();
}

uint64_t variable initialization expression of ObjCHashBucketer.hashBucketer()
{
  type metadata accessor for HashBucketer();

  return swift_allocObject();
}

uint64_t variable initialization expression of ObjCURLCanonicalizer.urlCanonicalizer()
{
  type metadata accessor for URLCanonicalizer();

  return swift_allocObject();
}

uint64_t variable initialization expression of ObjCURLHasher.urlHasher()
{
  type metadata accessor for URLHasher();
  v0 = swift_allocObject();
  type metadata accessor for StringHasher();
  *(v0 + 16) = swift_allocObject();
  return v0;
}

uint64_t _s13NewsURLBucket12HashBucketerC6bucket3for0E5CountSi10Foundation4DataV_SitF_0(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = a2 >> 62;
  v27 = *MEMORY[0x277D85DE8];
  v19 = a1 >> 32;
  v20 = BYTE6(a2);
  if ((a2 >> 62) > 1)
  {
    if (v6 == 2)
    {
      v7 = *(a1 + 24);
      sub_25C335BCC(a1, a2);
    }

    else
    {
      v7 = 0;
    }
  }

  else if (v6)
  {
    sub_25C335BCC(a1, a2);
    v7 = v19;
  }

  else
  {
    v7 = BYTE6(a2);
  }

  for (i = 0; ; i = v17 % a3)
  {
    if (v6 > 1)
    {
      if (v6 == 2)
      {
        if (v7 == *(a1 + 16))
        {
          goto LABEL_40;
        }

        goto LABEL_18;
      }
    }

    else if (v6)
    {
      if (v7 == a1)
      {
        goto LABEL_40;
      }

      goto LABEL_18;
    }

    if (!v7)
    {
      goto LABEL_40;
    }

LABEL_18:
    if (__OFSUB__(v7--, 1))
    {
      __break(1u);
LABEL_42:
      __break(1u);
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
      __break(1u);
LABEL_52:
      __break(1u);
    }

    if (v6 > 1)
    {
      if (v6 != 2)
      {
        goto LABEL_50;
      }

      if (v7 < *(a1 + 16))
      {
        goto LABEL_44;
      }

      if (v7 >= *(a1 + 24))
      {
        goto LABEL_47;
      }

      v11 = sub_25C339B50();
      if (!v11)
      {
        goto LABEL_52;
      }

      v12 = v11;
      v13 = sub_25C339B80();
      v14 = v7 - v13;
      if (__OFSUB__(v7, v13))
      {
        goto LABEL_49;
      }

      goto LABEL_34;
    }

    if (v6)
    {
      if (v7 < a1 || v7 >= v19)
      {
        goto LABEL_46;
      }

      v15 = sub_25C339B50();
      if (!v15)
      {
        goto LABEL_51;
      }

      v12 = v15;
      v16 = sub_25C339B80();
      v14 = v7 - v16;
      if (__OFSUB__(v7, v16))
      {
        goto LABEL_48;
      }

LABEL_34:
      v10 = *(v12 + v14);
      goto LABEL_35;
    }

    if (v7 >= v20)
    {
      goto LABEL_45;
    }

    v21 = a1;
    v22 = a2;
    v23 = BYTE2(a2);
    v24 = BYTE3(a2);
    v25 = BYTE4(a2);
    v26 = BYTE5(a2);
    v10 = *(&v21 + v7);
LABEL_35:
    if ((i - 0x80000000000000) >> 56 != 255)
    {
      goto LABEL_42;
    }

    if (!a3)
    {
      goto LABEL_43;
    }

    v17 = v10 | (i << 8);
    if (v17 == 0x8000000000000000 && a3 == -1)
    {
      break;
    }
  }

  __break(1u);
LABEL_40:
  sub_25C335C20(a1, a2);
  return i;
}

void sub_25C335BCC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return;
    }
  }
}

void sub_25C335C20(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return;
    }
  }
}

uint64_t BloomFilterReaderWriter.QueryResult.hashValue.getter(char a1)
{
  sub_25C339E60();
  MEMORY[0x25F884490](a1 & 1);
  return sub_25C339E80();
}

uint64_t sub_25C335D0C()
{
  v1 = *v0;
  sub_25C339E60();
  MEMORY[0x25F884490](v1);
  return sub_25C339E80();
}

uint64_t sub_25C335D80(uint64_t a1)
{
  v2 = *v1;
  sub_25C339E60();
  MEMORY[0x25F884490](v2);
  return sub_25C339E80();
}

uint64_t BloomFilterReaderWriter.data.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 72);
  sub_25C335BCC(v1, *(v0 + 80));
  return v1;
}

Swift::Void __swiftcall BloomFilterReaderWriter.add(_:)(Swift::String a1)
{
  v2 = v1[2];
  if (v2 < 0)
  {
    goto LABEL_30;
  }

  if (!v2)
  {
    return;
  }

  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v5 = 0;
  while (1)
  {
    v6 = sub_25C336048(countAndFlagsBits, object);
    swift_beginAccess();
    v7 = v1[9];
    v8 = v1[10];
    v9 = v8 >> 62;
    if ((v8 >> 62) > 1)
    {
      if (v9 != 2)
      {
        goto LABEL_31;
      }

      if (v6 >= *(v7 + 16))
      {
        if (v6 >= *(v7 + 24))
        {
          goto LABEL_28;
        }

        if (!sub_25C339B50())
        {
          goto LABEL_33;
        }

        if (__OFSUB__(v6, sub_25C339B80()))
        {
          goto LABEL_29;
        }

        goto LABEL_4;
      }

      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
    }

    if (!v9)
    {
      if (v6 >= BYTE6(v8))
      {
        goto LABEL_26;
      }

      goto LABEL_4;
    }

    if (v6 >= v7 >> 32 || v6 < v7)
    {
      goto LABEL_27;
    }

    if (!sub_25C339B50())
    {
      goto LABEL_32;
    }

    if (__OFSUB__(v6, sub_25C339B80()))
    {
      break;
    }

LABEL_4:
    ++v5;
    swift_endAccess();
    swift_beginAccess();
    sub_25C339CA0();
    swift_endAccess();
    if (v2 == v5)
    {
      return;
    }
  }

  __break(1u);
}

uint64_t sub_25C336048(uint64_t a1, unint64_t a2)
{
  v5 = sub_25C339E40();
  v7 = v6;

  MEMORY[0x25F8843A0](v5, v7);

  v8 = _s13NewsURLBucket12StringHasherC4hash3for9maxLength10Foundation4DataVSS_SitF_0(a1, a2, 0x7FFFFFFFFFFFFFFFLL);
  v10 = v9;

  v11 = v2[7];
  v12 = v2[8];
  __swift_project_boxed_opaque_existential_1(v2 + 4, v11);
  result = swift_beginAccess();
  v14 = v2[9];
  v15 = v2[10];
  v16 = v15 >> 62;
  if ((v15 >> 62) > 1)
  {
    v17 = 0;
    if (v16 != 2)
    {
      goto LABEL_10;
    }

    v19 = v14 + 16;
    v14 = *(v14 + 16);
    v18 = *(v19 + 8);
    v17 = v18 - v14;
    if (!__OFSUB__(v18, v14))
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  else if (!v16)
  {
    v17 = BYTE6(v15);
LABEL_10:
    v22 = (*(v12 + 8))(v8, v10, v17, v11, v12);
    sub_25C335C20(v8, v10);
    return v22 / 8;
  }

  v20 = __OFSUB__(HIDWORD(v14), v14);
  v21 = HIDWORD(v14) - v14;
  if (!v20)
  {
    v17 = v21;
    goto LABEL_10;
  }

  __break(1u);
  return result;
}

NewsURLBucket::BloomFilterReaderWriter::QueryResult __swiftcall BloomFilterReaderWriter.contains(_:)(Swift::String a1)
{
  v2 = v1;
  v53 = a1;
  v64 = *MEMORY[0x277D85DE8];
  v50 = sub_25C339D20();
  v3 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v49 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_25C339D10();
  v5 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v51 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = v2[2];
  if (v54 >= 1)
  {
    swift_beginAccess();
    v7 = 0;
    v47 = (v5 + 8);
    v48 = (v3 + 8);
    while (1)
    {
      v55 = v54 != v7;
      if (v54 == v7)
      {
        return v55;
      }

      if (__OFADD__(v7, 1))
      {
        __break(1u);
LABEL_40:
        __break(1u);
LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
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
      }

      v56 = v7;
      v63._countAndFlagsBits = v7;
      v9 = sub_25C339E40();
      v11 = v10;
      v63 = v53;

      MEMORY[0x25F8843A0](v9, v11);

      v12 = v63;

      v13 = sub_25C3367EC(v12._countAndFlagsBits, v12._object);
      v15 = v14;
      sub_25C3377B8();
      v16 = v49;
      v17 = v50;
      sub_25C339CF0();
      sub_25C335BCC(v13, v15);
      sub_25C33731C(v13, v15, v16);
      sub_25C335C20(v13, v15);
      v18 = v51;
      sub_25C339CE0();
      v19 = (*v48)(v16, v17);
      MEMORY[0x28223BE20](v19);
      *(&v47 - 2) = 0x7FFFFFFFFFFFFFFFLL;
      sub_25C339D00();
      sub_25C335C20(v13, v15);
      (*v47)(v18, v52);

      v20 = v63;
      v21 = v2[7];
      v22 = v2[8];
      __swift_project_boxed_opaque_existential_1(v2 + 4, v21);
      v23 = v2[9];
      v24 = v2[10];
      v25 = v24 >> 62;
      if ((v24 >> 62) > 1)
      {
        if (v25 == 2)
        {
          v29 = v23 + 16;
          v27 = *(v23 + 16);
          v28 = *(v29 + 8);
          v26 = v28 - v27;
          if (__OFSUB__(v28, v27))
          {
            goto LABEL_45;
          }
        }

        else
        {
          v26 = 0;
        }
      }

      else if (v25)
      {
        v30 = __OFSUB__(HIDWORD(v23), v23);
        v31 = HIDWORD(v23) - v23;
        if (v30)
        {
          goto LABEL_46;
        }

        v26 = v31;
      }

      else
      {
        v26 = BYTE6(v24);
      }

      v32 = (*(v22 + 8))(v20._countAndFlagsBits, v20._object, v26, v21, v22);
      sub_25C335C20(v20._countAndFlagsBits, v20._object);
      v33 = v32 / 8;
      v35 = v32 - (v34 & 0xFFFFFFFFFFFFFFF8);
      v36 = v35 >= 0 ? 1 << v35 : 0;
      swift_beginAccess();
      v37 = v2[9];
      v38 = v2[10];
      v39 = v38 >> 62;
      if ((v38 >> 62) > 1)
      {
        break;
      }

      if (v39)
      {
        if (v33 >= v37 >> 32 || v33 < v37)
        {
          goto LABEL_42;
        }

        v44 = sub_25C339B50();
        if (!v44)
        {
          goto LABEL_48;
        }

        v41 = v44;
        v45 = sub_25C339B80();
        v43 = v33 - v45;
        if (__OFSUB__(v33, v45))
        {
          __break(1u);
          return 1;
        }

        goto LABEL_3;
      }

      if (v33 >= BYTE6(v38))
      {
        goto LABEL_41;
      }

      v57 = v2[9];
      v58 = v38;
      v59 = BYTE2(v38);
      v60 = BYTE3(v38);
      v61 = BYTE4(v38);
      v62 = BYTE5(v38);
      v8 = *(&v57 + v33);
LABEL_4:
      swift_endAccess();
      v7 = v56 + 1;
      if ((v8 & v36) == 0)
      {
        return v55;
      }
    }

    if (v39 != 2)
    {
      goto LABEL_47;
    }

    if (v33 < *(v37 + 16))
    {
      goto LABEL_40;
    }

    if (v33 >= *(v37 + 24))
    {
      goto LABEL_43;
    }

    v40 = sub_25C339B50();
    if (!v40)
    {
      goto LABEL_49;
    }

    v41 = v40;
    v42 = sub_25C339B80();
    v43 = v33 - v42;
    if (__OFSUB__(v33, v42))
    {
      goto LABEL_44;
    }

LABEL_3:
    v8 = *(v41 + v43);
    goto LABEL_4;
  }

  return 1;
}

void *BloomFilterReaderWriter.deinit()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 4);
  sub_25C335C20(v0[9], v0[10]);
  return v0;
}

uint64_t BloomFilterReaderWriter.__deallocating_deinit()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 4);
  sub_25C335C20(v0[9], v0[10]);

  return MEMORY[0x2821FE8D8](v0, 88, 7);
}

uint64_t sub_25C3367EC(uint64_t a1, unint64_t a2)
{
  v45 = *MEMORY[0x277D85DE8];
  v39[0] = a1;
  v39[1] = a2;
  *&v42 = a1;
  *(&v42 + 1) = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBF5FB8, &qword_25C33A4E8);
  if (swift_dynamicCast())
  {
    sub_25C337BDC(__src, &v43);
    __swift_project_boxed_opaque_existential_1(&v43, v44);
    sub_25C339BA0();
    __src[0] = v42;
    __swift_destroy_boxed_opaque_existential_1(&v43);
    goto LABEL_63;
  }

  v41 = 0;
  memset(__src, 0, sizeof(__src));
  sub_25C337AF8(__src);
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
    v4 = sub_25C339E30();
  }

  sub_25C336CFC(&v43, v4, v5);
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
  *&__src[0] = sub_25C337618(v8);
  *(&__src[0] + 1) = v9;
  MEMORY[0x28223BE20](*&__src[0]);
  v34[2] = v39;
  v10 = sub_25C336DC4(sub_25C337B60, v34);
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
        sub_25C339C80();
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
      v28 = sub_25C33754C(v16, v14, v15);
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
      v8 = sub_25C339DA0();
      v7 = 0;
      v6 = 0xF000000000000000;
      goto LABEL_12;
    }

    if ((v15 & 0x1000000000000000) != 0)
    {
      v31 = sub_25C339DD0();
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
        v30 = sub_25C339E30();
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

    v16 = sub_25C33754C(v16, v14, v15);
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

    v16 = sub_25C339DB0();
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
      sub_25C339C90();
      LOBYTE(v24) = 0;
    }
  }

  while (4 * v23 != v16 >> 14);
  v6 = v35;
  if (v24)
  {
    *&v43 = v42;
    *(&v43 + 6) = *(&v42 + 6);
    sub_25C339C90();
    sub_25C337BC8(v36, v6);
    goto LABEL_62;
  }

LABEL_57:

  sub_25C337BC8(v36, v6);
LABEL_63:
  v32 = __src[0];
  sub_25C335BCC(*&__src[0], *(&__src[0] + 1));

  sub_25C335C20(v32, *(&v32 + 1));
  return v32;
}

uint64_t *sub_25C336CFC@<X0>(uint64_t *__return_ptr a1@<X8>, _BYTE *__src@<X0>, unint64_t a3@<X1>)
{
  result = 0;
  v6 = 0xC000000000000000;
  if (__src && a3)
  {
    if (a3 <= 14)
    {
      result = sub_25C33979C(__src, &__src[a3]);
      v6 = v9 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      sub_25C339B90();
      swift_allocObject();
      v8 = sub_25C339B40();
      if (a3 >= 0x7FFFFFFF)
      {
        sub_25C339C70();
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

char *sub_25C336DC4(void *(*a1)(uint64_t *__return_ptr, char *, char *), uint64_t a2)
{
  v4 = v2;
  v19[2] = *MEMORY[0x277D85DE8];
  v7 = *v2;
  v6 = v2[1];
  v8 = v6 >> 62;
  if ((v6 >> 62) <= 1)
  {
    if (!v8)
    {
      sub_25C335C20(v7, v6);
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

    sub_25C335C20(v7, v6);
    *v4 = xmmword_25C33A3B0;
    sub_25C335C20(0, 0xC000000000000000);
    v13 = v7 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v13 < v7)
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      if (sub_25C339B50() && __OFSUB__(v7, sub_25C339B80()))
      {
LABEL_26:
        __break(1u);
      }

      sub_25C339B90();
      swift_allocObject();
      v14 = sub_25C339B30();

      v12 = v14;
    }

    if (v13 >= v7)
    {

      v15 = sub_25C337268(v7, v7 >> 32, a1);

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

    sub_25C335C20(v7, v6);
    v17 = v7;
    v18 = v6 & 0x3FFFFFFFFFFFFFFFLL;
    *v4 = xmmword_25C33A3B0;
    sub_25C335C20(0, 0xC000000000000000);
    sub_25C339C60();
    result = sub_25C337268(*(v17 + 2), *(v17 + 3), a1);
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

_BYTE *sub_25C337168@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
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
    result = sub_25C33979C(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_25C3376B8(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_25C337734(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

void *sub_25C3371FC(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
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

char *sub_25C337268(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = sub_25C339B50();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = sub_25C339B80();
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

  v12 = sub_25C339B70();
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

uint64_t sub_25C33731C(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v3)
    {
      sub_25C339D20();
      sub_25C3377B8();
      return sub_25C339CD0();
    }

    v5 = a1;
    v6 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return sub_25C33749C(v5, v6);
  }

  if (v3 == 2)
  {
    v5 = *(a1 + 16);
    v6 = *(a1 + 24);
    return sub_25C33749C(v5, v6);
  }

  sub_25C339D20();
  sub_25C3377B8();
  return sub_25C339CD0();
}

uint64_t sub_25C33749C(uint64_t a1, uint64_t a2)
{
  result = sub_25C339B50();
  if (!result || (result = sub_25C339B80(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_25C339B70();
      sub_25C339D20();
      sub_25C3377B8();
      return sub_25C339CD0();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_25C33754C(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_25C339DF0();
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
    v5 = MEMORY[0x25F8843E0](15, a1 >> 16);
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

uint64_t sub_25C3375C8@<X0>(uint64_t result@<X0>, void *a4@<X8>)
{
  if (result)
  {
    result = sub_25C339E20();
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

uint64_t sub_25C337618(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      return sub_25C33977C(result);
    }

    else
    {
      sub_25C339B90();
      swift_allocObject();
      sub_25C339B60();
      if (v1 >= 0x7FFFFFFF)
      {
        sub_25C339C70();
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

uint64_t sub_25C3376B8(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_25C339B90();
  swift_allocObject();
  result = sub_25C339B40();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_25C339C70();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_25C337734(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_25C339B90();
  swift_allocObject();
  result = sub_25C339B40();
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

unint64_t sub_25C3377B8()
{
  result = qword_27FBF5FA8;
  if (!qword_27FBF5FA8)
  {
    sub_25C339D20();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBF5FA8);
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(void *a1)
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

unint64_t sub_25C3378C0()
{
  result = qword_27FBF5FB0;
  if (!qword_27FBF5FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBF5FB0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for BloomFilterReaderWriter.QueryResult(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for BloomFilterReaderWriter.QueryResult(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_25C337AF8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBF5FC0, &qword_25C33A4F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_25C337B60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(v3 + 16);
  v7 = *v5;
  v6 = v5[1];
  v13[0] = v7;
  v13[1] = v6;
  v12[2] = v13;
  result = sub_25C3371FC(sub_25C337BF4, v12, a1, a2);
  *a3 = result;
  a3[1] = v9;
  a3[2] = v10;
  a3[3] = v11;
  return result;
}

void sub_25C337BC8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    sub_25C335C20(a1, a2);
  }
}

uint64_t sub_25C337BDC(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t URLHasher.__allocating_init()()
{
  v0 = swift_allocObject();
  type metadata accessor for StringHasher();
  *(v0 + 16) = swift_allocObject();
  return v0;
}

uint64_t URLHasher.init()()
{
  type metadata accessor for StringHasher();
  *(v0 + 16) = swift_allocObject();
  return v0;
}

uint64_t URLHasher.hash(for:maxLength:)(uint64_t a1, uint64_t a2)
{
  v3 = sub_25C339BC0();
  v5 = _s13NewsURLBucket12StringHasherC4hash3for9maxLength10Foundation4DataVSS_SitF_0(v3, v4, a2);

  return v5;
}

uint64_t URLHasher.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_25C337D3C(uint64_t a1, uint64_t a2)
{
  v3 = sub_25C339BC0();
  v5 = _s13NewsURLBucket12StringHasherC4hash3for9maxLength10Foundation4DataVSS_SitF_0(v3, v4, a2);

  return v5;
}

uint64_t URLCanonicalizer.canonicalizedURL(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBF5FC8, &qword_25C33A530);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v29 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBF5FD0, &qword_25C33A538);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v29 - v7;
  v9 = sub_25C339B20();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25C339B10();
  sub_25C339BC0();
  sub_25C339B00();

  v13 = *(v10 + 48);
  if (!v13(v8, 1, v9))
  {
    v14 = MEMORY[0x25F8840F0]();
    if (v15)
    {
      v35 = v14;
      v36 = v15;
      v33 = 0x292B3F5C7C2B2F28;
      v34 = 0xE900000000000024;
      v31 = 0;
      v32 = 0xE000000000000000;
      v29 = v15;
      sub_25C338278();
      sub_25C339E10();
    }
  }

  if (v13(v8, 1, v9))
  {
  }

  else
  {
    sub_25C339AE0();
  }

  sub_25C339C30();
  if (v16)
  {
    sub_25C339D50();
  }

  sub_25C339AF0();
  sub_25C339C20();
  sub_25C339AC0();
  v17 = sub_25C339BF0();
  if (v18)
  {
    v19 = sub_25C339D50();
    v21 = v20;

    v17 = v19;
  }

  else
  {
    v21 = 0;
  }

  MEMORY[0x25F8840B0](v17, v21);
  if (sub_25C339C00() == 47 && v22 == 0xE100000000000000)
  {
  }

  else
  {
    v23 = sub_25C339E50();

    if ((v23 & 1) == 0)
    {
      v24 = sub_25C339C00();
      MEMORY[0x25F8840C0](v24);
    }
  }

  sub_25C339C10();
  sub_25C339AB0();
  sub_25C339A80();
  (*(v10 + 8))(v12, v9);
  v25 = sub_25C339C50();
  v26 = *(v25 - 8);
  v27 = *(v26 + 48);
  if (v27(v5, 1, v25) == 1)
  {
    (*(v26 + 16))(v30, a1, v25);
    if (v27(v5, 1, v25) != 1)
    {
      sub_25C338218(v5, &qword_27FBF5FC8, &qword_25C33A530);
    }
  }

  else
  {
    (*(v26 + 32))(v30, v5, v25);
  }

  return sub_25C338218(v8, &qword_27FBF5FD0, &qword_25C33A538);
}

uint64_t sub_25C338218(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_25C338278()
{
  result = qword_27FBF5FD8;
  if (!qword_27FBF5FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBF5FD8);
  }

  return result;
}

id sub_25C3382FC()
{
  v0 = objc_allocWithZone(MEMORY[0x277CCAC68]);
  result = sub_25C338924(0xD00000000000002DLL, 0x800000025C33AD10, 1);
  qword_27FBF5FE0 = result;
  return result;
}

unint64_t sub_25C338374()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBF5FC8, &qword_25C33A530);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = v30 - v1;
  v3 = sub_25C339C50();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25C339BC0();
  v7 = sub_25C339D50();
  v9 = v8;

  if (qword_27FBF5FA0 != -1)
  {
    swift_once();
  }

  if (qword_27FBF5FE0)
  {
    v10 = qword_27FBF5FE0;
    v11 = MEMORY[0x25F884400](v7, v9);
    v12 = sub_25C339D30();
    v13 = [v10 firstMatchInString:v12 options:0 range:{0, v11}];

    if (v13)
    {
    }

    else
    {
      v31 = v7;
      v32 = v9;
      v30[2] = 0x292F2F2A2E285ELL;
      v30[3] = 0xE700000000000000;
      v30[0] = 0;
      v30[1] = 0xE000000000000000;
      sub_25C338278();
      v14 = sub_25C339E10();
      v16 = v15;

      v31 = 0x2F2F3A70747468;
      v32 = 0xE700000000000000;
      MEMORY[0x25F8843A0](v14, v16);
    }
  }

  sub_25C339C40();

  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    sub_25C338760(v2);
    return 0;
  }

  (*(v4 + 32))(v6, v2, v3);
  v18 = sub_25C339BF0();
  v20 = v19;
  if (!v19)
  {
    (*(v4 + 8))(v6, v3);
    return 0;
  }

  v17 = v18;
  if ((sub_25C3387C8(779581303, 0xE400000000000000, v18, v19) & 1) == 0)
  {
LABEL_15:
    (*(v4 + 8))(v6, v3);
    return v17;
  }

  result = sub_25C339D70();
  v22 = HIBYTE(v20) & 0xF;
  if ((v20 & 0x2000000000000000) == 0)
  {
    v22 = v17 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v22 >= result >> 14)
  {
    v23 = sub_25C339E00();
    v25 = v24;
    v27 = v26;
    v29 = v28;

    v17 = MEMORY[0x25F884380](v23, v25, v27, v29);

    goto LABEL_15;
  }

  __break(1u);
  return result;
}

uint64_t sub_25C338760(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBF5FC8, &qword_25C33A530);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25C3387C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  v4 = sub_25C339D90();
  if (v5)
  {
    v6 = v4;
    v7 = v5;
    do
    {
      v10 = sub_25C339D90();
      if (!v11)
      {

        return 1;
      }

      if (v6 == v10 && v7 == v11)
      {
      }

      else
      {
        v8 = sub_25C339E50();

        if ((v8 & 1) == 0)
        {

          goto LABEL_14;
        }
      }

      v6 = sub_25C339D90();
      v7 = v9;
    }

    while (v9);
  }

  sub_25C339D90();
  v13 = v12;

  if (!v13)
  {
    return 1;
  }

LABEL_14:

  return 0;
}

id sub_25C338924(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v5 = sub_25C339D30();

  v10[0] = 0;
  v6 = [v3 initWithPattern:v5 options:a3 error:v10];

  if (v6)
  {
    v7 = v10[0];
  }

  else
  {
    v8 = v10[0];
    sub_25C339BB0();

    swift_willThrow();
  }

  return v6;
}

id sub_25C338C58(uint64_t *a1, uint64_t (*a2)(void))
{
  ObjectType = swift_getObjectType();
  v6 = *a1;
  a2(0);
  *&v2[v6] = swift_allocObject();
  v8.receiver = v2;
  v8.super_class = ObjectType;
  return objc_msgSendSuper2(&v8, sel_init);
}

uint64_t ObjCURLHasher.hash(for:maxLength:)(uint64_t a1, uint64_t a2)
{
  v3 = sub_25C339BC0();
  v5 = _s13NewsURLBucket12StringHasherC4hash3for9maxLength10Foundation4DataVSS_SitF_0(v3, v4, a2);

  return v5;
}

id ObjCURLHasher.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ObjCURLHasher.init()(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR___NBObjCURLHasher_urlHasher;
  type metadata accessor for URLHasher();
  v5 = swift_allocObject();
  type metadata accessor for StringHasher();
  *(v5 + 16) = swift_allocObject();
  *&v2[v4] = v5;
  v7.receiver = v2;
  v7.super_class = ObjectType;
  return objc_msgSendSuper2(&v7, sel_init);
}

id ObjCBloomFilterReader.__allocating_init(data:hashFunctionCount:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  type metadata accessor for StringHasher();
  v8 = swift_allocObject();
  v15 = type metadata accessor for HashBucketer();
  v16 = &protocol witness table for HashBucketer;
  *&v14 = swift_allocObject();
  v9 = type metadata accessor for BloomFilterReaderWriter();
  v10 = swift_allocObject();
  v10[9] = a1;
  v10[10] = a2;
  v10[2] = a3;
  v10[3] = v8;
  sub_25C337BDC(&v14, (v10 + 4));
  v11 = &v7[OBJC_IVAR___NBObjCBloomFilterReader_bloomFilterReader];
  *(v11 + 3) = v9;
  *(v11 + 4) = &protocol witness table for BloomFilterReaderWriter;
  *v11 = v10;
  v13.receiver = v7;
  v13.super_class = v3;
  return objc_msgSendSuper2(&v13, sel_init);
}

id ObjCBloomFilterReader.init(data:hashFunctionCount:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  type metadata accessor for StringHasher();
  v8 = swift_allocObject();
  v15 = type metadata accessor for HashBucketer();
  v16 = &protocol witness table for HashBucketer;
  *&v14 = swift_allocObject();
  v9 = type metadata accessor for BloomFilterReaderWriter();
  v10 = swift_allocObject();
  v10[9] = a1;
  v10[10] = a2;
  v10[2] = a3;
  v10[3] = v8;
  sub_25C337BDC(&v14, (v10 + 4));
  v11 = &v3[OBJC_IVAR___NBObjCBloomFilterReader_bloomFilterReader];
  *(v11 + 3) = v9;
  *(v11 + 4) = &protocol witness table for BloomFilterReaderWriter;
  *v11 = v10;
  v13.receiver = v3;
  v13.super_class = ObjectType;
  return objc_msgSendSuper2(&v13, sel_init);
}

Swift::Bool __swiftcall ObjCBloomFilterReader.maybeContains(_:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v4 = *(v1 + OBJC_IVAR___NBObjCBloomFilterReader_bloomFilterReader + 24);
  v5 = *(v1 + OBJC_IVAR___NBObjCBloomFilterReader_bloomFilterReader + 32);
  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR___NBObjCBloomFilterReader_bloomFilterReader), v4);
  return ((*(v5 + 8))(countAndFlagsBits, object, v4, v5) & 1) == 0;
}

id _s13NewsURLBucket13ObjCURLHasherCfD_0(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

NSString_optional __swiftcall NSURL.nb_domain()()
{
  v0 = sub_25C339C50();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25C339BE0();
  sub_25C338374();
  v5 = v4;
  (*(v1 + 8))(v3, v0);
  if (!v5)
  {
    return 0;
  }

  v6 = sub_25C339D30();

  return v6;
}

id sub_25C339494(void *a1)
{
  v2 = sub_25C339C50();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25C339BE0();
  v6 = a1;
  sub_25C338374();
  v8 = v7;
  (*(v3 + 8))(v5, v2);
  if (v8)
  {
    v9 = sub_25C339D30();
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

void *sub_25C33967C@<X0>(void *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  if (result)
  {
    if (a2 - result >= a3)
    {
      v5 = a3;
    }

    else
    {
      v5 = a2 - result;
    }

    if (v5)
    {
      if (v5 < 15)
      {
        result = sub_25C33979C(result, result + v5);
        v7 = v8 & 0xFFFFFFFFFFFFFFLL;
      }

      else
      {
        sub_25C339B90();
        swift_allocObject();
        v6 = sub_25C339B40();
        if (v5 >= 0x7FFFFFFF)
        {
          sub_25C339C70();
          result = swift_allocObject();
          result[2] = 0;
          result[3] = v5;
          v7 = v6 | 0x8000000000000000;
        }

        else
        {
          result = (v5 << 32);
          v7 = v6 | 0x4000000000000000;
        }
      }
    }

    else
    {
      result = 0;
      v7 = 0xC000000000000000;
    }
  }

  else
  {
    v7 = 0xC000000000000000;
  }

  *a4 = result;
  a4[1] = v7;
  return result;
}

unint64_t sub_25C33977C(unint64_t result)
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

uint64_t sub_25C33979C(_BYTE *__src, _BYTE *a2)
{
  v10 = *MEMORY[0x277D85DE8];
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

uint64_t _s13NewsURLBucket12StringHasherC4hash3for9maxLength10Foundation4DataVSS_SitF_0(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v17 = a3;
  v5 = sub_25C339D20();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_25C339D10();
  v9 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);

  v12 = sub_25C3367EC(a1, a2);
  v14 = v13;
  sub_25C3377B8();
  sub_25C339CF0();
  sub_25C335BCC(v12, v14);
  sub_25C33731C(v12, v14, v8);
  sub_25C335C20(v12, v14);
  sub_25C339CE0();
  (*(v6 + 8))(v8, v5);
  v18 = v17;
  sub_25C339D00();
  sub_25C335C20(v12, v14);
  (*(v9 + 8))(v11, v16);
  return v19;
}