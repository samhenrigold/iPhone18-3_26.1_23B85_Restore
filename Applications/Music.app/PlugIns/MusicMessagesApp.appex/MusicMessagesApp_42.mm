void NSFileManager.createDirectoryIfNeeded(at:)(uint64_t a1)
{
  v2 = v1;
  sub_1004D803C();
  LOBYTE(v16) = 0;
  v3 = sub_1004DD3FC();

  v4 = [v1 fileExistsAtPath:v3 isDirectory:&v16];

  if (v4)
  {
    if (v16)
    {
      return;
    }

    sub_1004D7FDC(v16);
    v7 = v6;
    v16 = 0;
    v8 = [v1 removeItemAtURL:v6 error:&v16];

    v9 = v16;
    if (!v8)
    {
      goto LABEL_7;
    }

    v10 = v16;
  }

  sub_1004D7FDC(v5);
  v12 = v11;
  v16 = 0;
  v13 = [v2 createDirectoryAtURL:v11 withIntermediateDirectories:1 attributes:0 error:&v16];

  v9 = v16;
  if (v13)
  {
    v14 = v16;
    return;
  }

LABEL_7:
  v15 = v9;
  sub_1004D7F4C();

  swift_willThrow();
}

Swift::tuple_exists_Bool_isDirectory_Bool __swiftcall NSFileManager.directoryExists(at:)(Swift::String at)
{
  v7 = 0;
  v2 = sub_1004DD3FC();
  v3 = [v1 fileExistsAtPath:v2 isDirectory:&v7];

  v5 = v3;
  result.isDirectory = v4;
  result.exists = v5;
  return result;
}

uint64_t NSFileManager.groupCacheURL(for:)@<X0>(uint64_t a3@<X8>)
{
  v4 = v3;
  sub_100004CB8(&qword_100647868, &qword_100535FF8);
  __chkstk_darwin();
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v9 = &v20 - v8;
  v10 = sub_1004D809C();
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1004DD3FC();
  v15 = [v4 containerURLForSecurityApplicationGroupIdentifier:v14];

  if (v15)
  {
    sub_1004D802C();

    v16 = *(v11 + 56);
    v16(v7, 0, 1, v10);
  }

  else
  {
    v16 = *(v11 + 56);
    v16(v7, 1, 1, v10);
  }

  sub_1004157E8(v7, v9);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_100415858(v9);
    v17 = 1;
  }

  else
  {
    sub_1004D7FEC();
    v18 = *(v11 + 8);
    v18(v9, v10);
    sub_1004D7FEC();
    v18(v13, v10);
    v17 = 0;
  }

  return (v16)(a3, v17, 1, v10);
}

uint64_t sub_1004157E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004CB8(&qword_100647868, &qword_100535FF8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100415858(uint64_t a1)
{
  v2 = sub_100004CB8(&qword_100647868, &qword_100535FF8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1004158C4()
{
  result = qword_100647870;
  if (!qword_100647870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100647870);
  }

  return result;
}

uint64_t String.sha256Data.getter(uint64_t a1, uint64_t a2)
{
  v2 = sub_1004DD18C();
  v20 = *(v2 - 8);
  __chkstk_darwin();
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1004DD17C();
  v22 = *(v5 - 8);
  __chkstk_darwin();
  v21 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1004DD48C();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1004DD47C();
  v11 = sub_1004DD44C();
  v13 = v12;
  (*(v8 + 8))(v10, v7);
  if (v13 >> 60 != 15)
  {
    sub_100010530(v11, v13);
    sub_10041658C(&qword_100647878, &type metadata accessor for SHA256, &protocol conformance descriptor for SHA256);
    sub_1004DD16C();
    sub_100010530(v11, v13);
    sub_100416144(v11, v13, v4, v14);
    sub_100010584(v11, v13);
    sub_100010584(v11, v13);
    v15 = v21;
    sub_1004DD15C();
    (*(v20 + 8))(v4, v2);
    v25 = v5;
    v26 = sub_10041658C(&qword_100647880, &type metadata accessor for SHA256Digest, &protocol conformance descriptor for SHA256Digest);
    v16 = sub_1000357EC(v24);
    v17 = v22;
    (*(v22 + 16))(v16, v15, v5);
    sub_100008C70(v24, v25);
    sub_1004D7D8C();
    sub_100010584(v11, v13);
    (*(v17 + 8))(v15, v5);
    v11 = v23;
    sub_100008D24(v24);
  }

  return v11;
}

uint64_t Data.Digest.SHA256.getter(uint64_t a1, unint64_t a2)
{
  v4 = sub_1004DD18C();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10041658C(&qword_100647878, &type metadata accessor for SHA256, &protocol conformance descriptor for SHA256);
  sub_1004DD16C();
  sub_100010530(a1, a2);
  sub_100416144(a1, a2, v7, v8);
  sub_100010598(a1, a2);
  sub_1004DD15C();
  return (*(v5 + 8))(v7, v4);
}

uint64_t Data.Digest.MD5.getter(uint64_t a1, unint64_t a2)
{
  v4 = sub_1004DD1AC();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10041658C(&qword_100647888, &type metadata accessor for Insecure.MD5, &protocol conformance descriptor for Insecure.MD5);
  sub_1004DD16C();
  sub_100010530(a1, a2);
  sub_100416368(a1, a2, v7, v8);
  sub_100010598(a1, a2);
  sub_1004DD15C();
  return (*(v5 + 8))(v7, v4);
}

uint64_t Data.Digest.SHA512.getter(uint64_t a1, unint64_t a2)
{
  v4 = sub_1004DD19C();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10041658C(&qword_100647890, &type metadata accessor for SHA512, &protocol conformance descriptor for SHA512);
  sub_1004DD16C();
  sub_100010530(a1, a2);
  sub_1004165D4(a1, a2, v7, v8);
  sub_100010598(a1, a2);
  sub_1004DD15C();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_100416144(uint64_t a1, unint64_t a2, uint64_t a3, __n128 a4)
{
  v4 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v4)
    {
      sub_1004DD18C();
      sub_10041658C(&qword_100647878, &type metadata accessor for SHA256, &protocol conformance descriptor for SHA256);
      return sub_1004DD14C();
    }

    v6 = a1;
    v7 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return sub_1004168C4(v6, v7, a4, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, &type metadata accessor for SHA256, &qword_100647878, &type metadata accessor for SHA256, &protocol conformance descriptor for SHA256);
  }

  if (v4 == 2)
  {
    v6 = *(a1 + 16);
    v7 = *(a1 + 24);
    return sub_1004168C4(v6, v7, a4, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, &type metadata accessor for SHA256, &qword_100647878, &type metadata accessor for SHA256, &protocol conformance descriptor for SHA256);
  }

  sub_1004DD18C();
  sub_10041658C(&qword_100647878, &type metadata accessor for SHA256, &protocol conformance descriptor for SHA256);
  return sub_1004DD14C();
}

uint64_t sub_100416368(uint64_t a1, unint64_t a2, uint64_t a3, __n128 a4)
{
  v4 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v4)
    {
      sub_1004DD1AC();
      sub_10041658C(&qword_100647888, &type metadata accessor for Insecure.MD5, &protocol conformance descriptor for Insecure.MD5);
      return sub_1004DD14C();
    }

    v6 = a1;
    v7 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return sub_1004168C4(v6, v7, a4, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, &type metadata accessor for Insecure.MD5, &qword_100647888, &type metadata accessor for Insecure.MD5, &protocol conformance descriptor for Insecure.MD5);
  }

  if (v4 == 2)
  {
    v6 = *(a1 + 16);
    v7 = *(a1 + 24);
    return sub_1004168C4(v6, v7, a4, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, &type metadata accessor for Insecure.MD5, &qword_100647888, &type metadata accessor for Insecure.MD5, &protocol conformance descriptor for Insecure.MD5);
  }

  sub_1004DD1AC();
  sub_10041658C(&qword_100647888, &type metadata accessor for Insecure.MD5, &protocol conformance descriptor for Insecure.MD5);
  return sub_1004DD14C();
}

uint64_t sub_10041658C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1004165D4(uint64_t a1, unint64_t a2, uint64_t a3, __n128 a4)
{
  v4 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v4)
    {
      sub_1004DD19C();
      sub_10041658C(&qword_100647890, &type metadata accessor for SHA512, &protocol conformance descriptor for SHA512);
      return sub_1004DD14C();
    }

    v6 = a1;
    v7 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return sub_1004168C4(v6, v7, a4, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, &type metadata accessor for SHA512, &qword_100647890, &type metadata accessor for SHA512, &protocol conformance descriptor for SHA512);
  }

  if (v4 == 2)
  {
    v6 = *(a1 + 16);
    v7 = *(a1 + 24);
    return sub_1004168C4(v6, v7, a4, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, &type metadata accessor for SHA512, &qword_100647890, &type metadata accessor for SHA512, &protocol conformance descriptor for SHA512);
  }

  sub_1004DD19C();
  sub_10041658C(&qword_100647890, &type metadata accessor for SHA512, &protocol conformance descriptor for SHA512);
  return sub_1004DD14C();
}

uint64_t sub_1004167F8(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t sub_100416814(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 16))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_100416868(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *result = a2 - 13;
    *(result + 8) = 0;
    if (a3 >= 0xD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t sub_1004168C4(uint64_t a1, uint64_t a2, __n128 a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void), unint64_t *a7, uint64_t (*a8)(uint64_t), uint64_t a9)
{
  result = sub_1004D7CAC();
  if (!result || (result = sub_1004D7CDC(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_1004D7CCC();
      a6(0);
      sub_10041658C(a7, a8, a9);
      return sub_1004DD14C();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1004169A8(uint64_t result, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a5 >= 1)
  {
    v5 = a4;
  }

  else
  {
    v5 = 0;
  }

  if (!a2)
  {
LABEL_20:
    a3 = 0;
    goto LABEL_24;
  }

  if (!a3)
  {
LABEL_24:
    *result = a4;
    *(result + 8) = a5;
    *(result + 16) = v5;
    *(result + 24) = a5 < 1;
    return a3;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v6 = a4 + a5;
    v7 = __OFADD__(a4, a5);
    if (v5 > v6)
    {
      v6 = v5;
    }

    v8 = v6 - v5;
    v9 = 1;
    while (1)
    {
      if (a5 < 1)
      {
        v5 = 0;
        a3 = 0;
        goto LABEL_24;
      }

      if (v7)
      {
        break;
      }

      if (v5 - v6 + v9 == 1)
      {
        v5 = v6;
        a3 = v8;
        goto LABEL_24;
      }

      *a2 = v5 + v9 - 1;
      if (a3 == v9)
      {
        v5 += v9;
        goto LABEL_24;
      }

      ++a2;
      if (__OFADD__(v9++, 1))
      {
        __break(1u);
        goto LABEL_20;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t Array.append(_:if:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a4 + 16);
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin();
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = v10(v7);
  if (v11)
  {
    (*(v6 + 16))(v9, a1, v5);
    sub_1004DD93C();
  }

  return v11 & 1;
}

uint64_t Array.append<A>(contentsOf:if:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = *(a5 - 8);
  v9 = __chkstk_darwin();
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = v12(v9);
  if (v13)
  {
    (*(v8 + 16))(v11, a1, a5);
    sub_1004DD92C();
  }

  return v13 & 1;
}

uint64_t Array.item(where:)@<X0>(uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_1004DD98C();
  swift_getWitnessTable();
  sub_1004DDD5C();
  if (v9)
  {
    v7 = 1;
  }

  else
  {
    sub_1004DD99C();
    v7 = 0;
  }

  return (*(*(a4 - 8) + 56))(a5, v7, 1, a4);
}

Swift::Void __swiftcall Array.moveItem(at:to:)(Swift::Int at, Swift::Int to)
{
  v3 = *(v2 + 16);
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v8 = &v9 - v7;
  sub_1004DD95C();
  (*(v4 + 16))(v6, v8, v3);
  sub_1004DD94C();
  (*(v4 + 8))(v8, v3);
}

uint64_t Array.subscript.getter@<X0>(uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_1004DD98C();
  swift_getWitnessTable();
  sub_1004DDCEC();
  sub_100004CB8(&qword_100647898, &unk_100536180);
  if (sub_1004DDE6C())
  {
    sub_1004DD99C();
    v6 = 0;
  }

  else
  {
    v6 = 1;
  }

  return (*(*(a3 - 8) + 56))(a4, v6, 1, a3);
}

uint64_t Array.inserting(separator:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[2] = a3;
  v4[3] = a1;
  return Array.inserting(separator:)(sub_100416FE0, v4, a2, a3);
}

uint64_t Array.inserting(separator:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_1004DD91C();
  if (result < 2)
  {

    return a3;
  }

  if (result + 0x4000000000000000 >= 0)
  {
    v13[8] = 0;
    v13[9] = 2 * result - 1;
    __chkstk_darwin();
    v13[2] = a4;
    v13[3] = a3;
    v13[4] = a1;
    v13[5] = a2;
    v9 = sub_100004CB8(&qword_100647898, &unk_100536180);
    v10 = sub_10041758C();
    sub_10041716C(sub_100417124, v13, v9, a4, &type metadata for Never, v10, &protocol witness table for Never, v11);
    return v12;
  }

  __break(1u);
  return result;
}

uint64_t sub_100417124(uint64_t *a1)
{
  if (*a1)
  {
    return (*(v1 + 32))();
  }

  else
  {
    return sub_1004DD99C();
  }
}

void sub_10041716C(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v27 = a8;
  v36 = a1;
  v37 = a2;
  v10 = *(a5 - 8);
  __chkstk_darwin();
  v38 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v40 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin();
  v13 = &v25 - v12;
  __chkstk_darwin();
  v34 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = swift_getAssociatedTypeWitness();
  v28 = *(v15 - 8);
  v29 = v15;
  __chkstk_darwin();
  v17 = &v25 - v16;
  v18 = sub_1004DDD0C();
  if (v18)
  {
    v39 = v18;
    v43 = sub_1004DEC1C();
    v30 = sub_1004DEC2C();
    sub_1004DEBBC(v39);
    sub_1004DDCFC();
    if ((v39 & 0x8000000000000000) == 0)
    {
      v25 = v10;
      v26 = a5;
      v19 = 0;
      v31 = (v40 + 16);
      v32 = (v40 + 8);
      v33 = v8;
      while (!__OFADD__(v19, 1))
      {
        v40 = v19 + 1;
        v20 = sub_1004DDE1C();
        v21 = v13;
        v22 = v13;
        v23 = AssociatedTypeWitness;
        (*v31)(v21);
        v20(v42, 0);
        v24 = v41;
        v36(v22, v38);
        if (v24)
        {
          (*v32)(v22, v23);
          (*(v28 + 8))(v17, v29);

          (*(v25 + 32))(v27, v38, v26);
          return;
        }

        v41 = 0;
        (*v32)(v22, v23);
        sub_1004DEC0C();
        sub_1004DDD4C();
        ++v19;
        v13 = v22;
        if (v40 == v39)
        {
          (*(v28 + 8))(v17, v29);
          return;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
    sub_1004DD8DC();
  }
}

unint64_t sub_10041758C()
{
  result = qword_1006478A0;
  if (!qword_1006478A0)
  {
    sub_100008DE4(&qword_100647898, &unk_100536180);
    sub_100417618();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006478A0);
  }

  return result;
}

unint64_t sub_100417618()
{
  result = qword_1006478A8;
  if (!qword_1006478A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006478A8);
  }

  return result;
}

uint64_t Set.insert(_:if:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(a5 + 16);
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin();
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v12(v9))
  {
    (*(v8 + 16))(v11, a2, v7);
    v13 = sub_1004DDC6C();
    (*(v8 + 56))(a1, 0, 1, v7);
  }

  else
  {
    (*(v8 + 56))(a1, 1, 1, v7);
    v13 = 0;
  }

  return v13 & 1;
}

id NSBundle.displayName.getter()
{
  result = [v0 localizedInfoDictionary];
  if (result)
  {
    v2 = result;
    v3 = sub_1004DD21C();

    if (*(v3 + 16) && (v4 = sub_10041CAAC(0xD000000000000013, 0x80000001004FA280, &String.hash(into:), sub_100029280), (v5 & 1) != 0))
    {
      sub_10000904C(*(v3 + 56) + 32 * v4, v7);

      if (swift_dynamicCast())
      {
        return v6;
      }

      else
      {
        return 0;
      }
    }

    else
    {

      return 0;
    }
  }

  return result;
}

uint64_t NSBundle.exportedTypeDeclarations.getter()
{
  v1 = sub_1004DD3FC();
  v2 = [v0 objectForInfoDictionaryKey:v1];

  if (v2)
  {
    sub_1004DE8DC();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    sub_100004CB8(&qword_1006478B0, &qword_100536190);
    if (swift_dynamicCast())
    {
      return v4;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_10001074C(v7, &qword_100648130, &qword_100535CF0);
    return 0;
  }
}

uint64_t ClosedRange.clamp(_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1004DF13C();
  sub_1004DF14C();
  return (*(v3 + 8))(v5, v2);
}

uint64_t ClosedRange<>.scaledValue(relativeTo:relativeValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v32 = a5;
  v30 = a4;
  v25 = a2;
  v7 = *(*(a4 + 16) + 8);
  v8 = *(a3 + 16);
  swift_getAssociatedTypeWitness();
  __chkstk_darwin();
  __chkstk_darwin();
  v26 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v11 = &v24 - v10;
  __chkstk_darwin();
  v31 = &v24 - v12;
  __chkstk_darwin();
  v14 = &v24 - v13;
  __chkstk_darwin();
  v16 = &v24 - v15;
  v28 = a3;
  v29 = v7;
  v17 = *(v7 + 8);
  v27 = a1;
  v19 = v18;
  sub_1004DED0C();
  swift_getAssociatedConformanceWitness();
  sub_1004DF10C();
  sub_1004DF05C();
  LOBYTE(v7) = sub_1004DD31C();
  v20 = *(v19 + 8);
  v20(v14, v8);
  if (v7)
  {
    ClosedRange.clamp(_:)(v25, v28);
    sub_1004DED0C();
    v24 = v17;
    sub_1004DD29C();
    v20(v11, v8);
    v21 = v26;
    sub_1004DED0C();
    v22 = v31;
    sub_1004DDCDC();
    v20(v21, v8);
    sub_1004DECFC();
    v20(v11, v8);
    v20(v22, v8);
    v20(v14, v8);
    return (v20)(v16, v8);
  }

  else
  {
    v20(v16, v8);
    return (*(v19 + 16))(v32, v33, v8);
  }
}

uint64_t Data.hexRepresentation.getter(uint64_t a1, unint64_t a2)
{
  sub_100010530(a1, a2);
  result = sub_100418240(a1, a2, a1, a2, v4);
  if (!v6)
  {
    return 0;
  }

  return result;
}

void sub_100417F50(uint8x16_t *a1@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  sub_1004DD48C();
  __chkstk_darwin();
  v8 = a3 >> 62;
  if ((a3 >> 62) <= 1)
  {
    if (!v8)
    {
      v9 = BYTE6(a3);
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (v8 != 2)
  {
    swift_slowAlloc();
    goto LABEL_42;
  }

  v11 = *(a2 + 16);
  v10 = *(a2 + 24);
  v12 = __OFSUB__(v10, v11);
  v9 = v10 - v11;
  if (v12)
  {
    __break(1u);
LABEL_8:
    LODWORD(v9) = HIDWORD(a2) - a2;
    if (__OFSUB__(HIDWORD(a2), a2))
    {
LABEL_46:
      __break(1u);
      goto LABEL_47;
    }

    v9 = v9;
  }

LABEL_10:
  if (v9 + 0x4000000000000000 < 0)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v13 = swift_slowAlloc();
  if (v8 != 2)
  {
    if (v8 == 1)
    {
      LODWORD(v14) = HIDWORD(a2) - a2;
      if (__OFSUB__(HIDWORD(a2), a2))
      {
LABEL_47:
        __break(1u);
        goto LABEL_48;
      }

      v14 = v14;
      goto LABEL_17;
    }

    v14 = BYTE6(a3);
    if (BYTE6(a3))
    {
LABEL_21:
      v17 = v14 - 1;
      if (v14 - 1 >= 0x4000000000000000)
      {
        v18 = 0x4000000000000000;
      }

      else
      {
        v18 = v14 - 1;
      }

      if (v14 <= 0x20)
      {
        goto LABEL_29;
      }

      if (v17 >= 0x4000000000000000)
      {
        v17 = 0x4000000000000000;
      }

      if (v13 >= a1->u64 + v17 + 1 || v13 + 2 * v17 + 2 <= a1)
      {
        v20 = v18 + 1;
        v21 = v20 & 0x1F;
        if ((v20 & 0x1F) == 0)
        {
          v21 = 32;
        }

        v19 = v20 - v21;
        v22 = (v13 + 32);
        v23 = a1 + 1;
        v24.i64[0] = 0x9F9F9F9F9F9F9F9FLL;
        v24.i64[1] = 0x9F9F9F9F9F9F9F9FLL;
        v25.i64[0] = 0x5757575757575757;
        v25.i64[1] = 0x5757575757575757;
        v26.i64[0] = 0x3030303030303030;
        v26.i64[1] = 0x3030303030303030;
        v27.i64[0] = 0xF0F0F0F0F0F0F0FLL;
        v27.i64[1] = 0xF0F0F0F0F0F0F0FLL;
        v28.i64[0] = 0x909090909090909;
        v28.i64[1] = 0x909090909090909;
        v29 = v19;
        do
        {
          v30 = v23[-1];
          v31.i64[0] = 0x5757575757575757;
          v31.i64[1] = 0x5757575757575757;
          v32.i64[0] = 0x5757575757575757;
          v32.i64[1] = 0x5757575757575757;
          v33.i64[0] = 0x3030303030303030;
          v33.i64[1] = 0x3030303030303030;
          v34.i64[0] = 0x3030303030303030;
          v34.i64[1] = 0x3030303030303030;
          v49.val[0] = vbslq_s8(vcgtq_u8(v30, v24), vsraq_n_u8(v31, v30, 4uLL), vsraq_n_u8(v33, v30, 4uLL));
          v35 = vandq_s8(v30, v27);
          v49.val[1] = vbslq_s8(vcgtq_u8(v35, v28), vaddq_s8(v35, v25), vorrq_s8(v35, v26));
          v48.val[0] = vbslq_s8(vcgtq_u8(*v23, v24), vsraq_n_u8(v32, *v23, 4uLL), vsraq_n_u8(v34, *v23, 4uLL));
          v36 = vandq_s8(*v23, v27);
          v37 = v22 - 32;
          vst2q_s8(v37, v49);
          v48.val[1] = vbslq_s8(vcgtq_u8(v36, v28), vaddq_s8(v36, v25), vorrq_s8(v36, v26));
          vst2q_s8(v22, v48);
          v22 += 64;
          v23 += 2;
          v29 -= 32;
        }

        while (v29);
      }

      else
      {
LABEL_29:
        v19 = 0;
      }

      v38 = v19 - 0x4000000000000000;
      v39 = (v13 + 2 * v19 + 1);
      v40 = v14 - v19;
      v41 = &a1->u8[v19];
      while (v38)
      {
        v43 = *v41++;
        v42 = v43;
        v44 = (v43 >> 4) + 87;
        v45 = (v43 >> 4) | 0x30;
        if (v43 > 0x9F)
        {
          LOBYTE(v45) = v44;
        }

        *(v39 - 1) = v45;
        if ((v42 & 0xFu) <= 9)
        {
          v46 = v42 & 0xF | 0x30;
        }

        else
        {
          v46 = (v42 & 0xF) + 87;
        }

        *v39 = v46;
        v39 += 2;
        ++v38;
        if (!--v40)
        {
          goto LABEL_42;
        }
      }

      __break(1u);
      goto LABEL_44;
    }

LABEL_42:
    sub_1004DD47C();
    *a4 = sub_1004DD36C();
    a4[1] = v47;
    return;
  }

  v16 = *(a2 + 16);
  v15 = *(a2 + 24);
  v12 = __OFSUB__(v15, v16);
  v14 = v15 - v16;
  if (!v12)
  {
LABEL_17:
    if ((v14 & 0x8000000000000000) != 0)
    {
LABEL_45:
      __break(1u);
      goto LABEL_46;
    }

    if (!v14)
    {
      goto LABEL_42;
    }

    goto LABEL_21;
  }

LABEL_48:
  __break(1u);
}

uint64_t sub_100418240(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, __n128 a5)
{
  v8 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v8 != 2)
    {
      *(v14.i64 + 6) = 0;
      v14.i64[0] = 0;
LABEL_10:
      sub_100417F50(&v14, a3, a4, &v15);
      result = sub_100010598(a3, a4);
      if (!v5)
      {
        return v15;
      }

      return result;
    }

    v9 = *(a1 + 16);
    v10 = *(a1 + 24);
  }

  else
  {
    if (!v8)
    {
      v14.i64[0] = a1;
      v14.i16[4] = a2;
      v14.i8[10] = BYTE2(a2);
      v14.i8[11] = BYTE3(a2);
      v14.i8[12] = BYTE4(a2);
      v14.i8[13] = BYTE5(a2);
      goto LABEL_10;
    }

    v9 = a1;
    v10 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }
  }

  sub_10041D50C(v9, v10, a5, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
  if (v5)
  {
    return sub_100010598(a3, a4);
  }

  v13 = v11;
  sub_100010598(a3, a4);
  return v13;
}

uint64_t sub_1004183E4()
{
  v0 = sub_100404DB8(&off_1005FAB90);
  sub_100004CB8(&qword_1006479E0, &unk_1005365A8);
  result = swift_arrayDestroy();
  static Data.Hexadecimal.hexToDecimalMapping = v0;
  return result;
}

uint64_t *Data.Hexadecimal.hexToDecimalMapping.unsafeMutableAddressor()
{
  if (qword_100646D30 != -1)
  {
    swift_once();
  }

  return &static Data.Hexadecimal.hexToDecimalMapping;
}

double static Data.Hexadecimal.hexToDecimalMapping.getter()
{
  if (qword_100646D30 != -1)
  {
    swift_once();
  }

  swift_beginAccess();

  return result;
}

double static Data.Hexadecimal.hexToDecimalMapping.setter(uint64_t a1)
{
  if (qword_100646D30 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  static Data.Hexadecimal.hexToDecimalMapping = a1;

  return result;
}

uint64_t (*static Data.Hexadecimal.hexToDecimalMapping.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_100646D30 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t Data.init(hexString:)(uint64_t a1, void *a2)
{
  if (sub_1004DD58C())
  {
    v17[0] = 48;
    v17[1] = 0xE100000000000000;
    v19._countAndFlagsBits = a1;
    v19._object = a2;
    sub_1004DD5FC(v19);
  }

  v4 = 0;
  LOBYTE(v5) = 0;
  v18 = xmmword_100512890;
  while (1)
  {
    v7 = sub_1004DD60C();
    if (!v8)
    {
      break;
    }

    v9 = v7;
    v10 = v8;
    if (qword_100646D30 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v11 = static Data.Hexadecimal.hexToDecimalMapping;
    if (!*(static Data.Hexadecimal.hexToDecimalMapping + 16) || (v12 = sub_10041CAAC(v9, v10, &Character.hash(into:), sub_100029280), (v13 & 1) == 0))
    {
      swift_endAccess();

      sub_100010598(v18, *(&v18 + 1));
      return 0;
    }

    v14 = *(*(v11 + 56) + v12);
    swift_endAccess();

    if (v4)
    {
      v5 = v14 + v5;
      if ((v5 & 0x100) != 0)
      {
        goto LABEL_17;
      }

      v15 = sub_100004CB8(&qword_1006478B8, &qword_100536198);
      v17[3] = v15;
      v17[4] = sub_100042B08(&qword_1006478C0, &qword_1006478B8, &qword_100536198, &protocol conformance descriptor for <A> CollectionOfOne<A>);
      LOBYTE(v17[0]) = v5;
      sub_100008C70(v17, v15);
      sub_1004D80DC();
      sub_100008D24(v17);
      LOBYTE(v5) = 0;
    }

    else
    {
      v5 = 16 * (v14 & 0xF) + v5;
      if ((v5 & 0x100) != 0)
      {
        goto LABEL_18;
      }
    }

    if (__OFADD__(v4++, 1))
    {
      __break(1u);
LABEL_17:
      __break(1u);
LABEL_18:
      __break(1u);
    }
  }

  return v18;
}

uint64_t sub_1004188D8()
{
  sub_100004CB8(&qword_1006478C8, &qword_1005361A0);
  __chkstk_darwin();
  v1 = &v14 - v0;
  v2 = sub_1004D840C();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1004D84CC();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100035718(v10, static Calendar.musicDefaultCalendar);
  v11 = sub_100035430(v6, static Calendar.musicDefaultCalendar);
  (*(v3 + 104))(v5, enum case for Calendar.Identifier.gregorian(_:), v2);
  sub_1004D841C();
  (*(v3 + 8))(v5, v2);
  sub_1004D853C();
  v12 = sub_1004D855C();
  result = (*(*(v12 - 8) + 48))(v1, 1, v12);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_1004D84AC();
    return (*(v7 + 32))(v11, v9, v6);
  }

  return result;
}

uint64_t Calendar.musicDefaultCalendar.unsafeMutableAddressor()
{
  if (qword_100646D38 != -1)
  {
    swift_once();
  }

  v0 = sub_1004D84CC();

  return sub_100035430(v0, static Calendar.musicDefaultCalendar);
}

uint64_t static Calendar.musicDefaultCalendar.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_100646D38 != -1)
  {
    swift_once();
  }

  v2 = sub_1004D84CC();
  v3 = sub_100035430(v2, static Calendar.musicDefaultCalendar);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t static Calendar.date(forReleaseYear:)@<X0>(char a2@<W1>, uint64_t a3@<X8>)
{
  sub_100004CB8(&qword_1006478C8, &qword_1005361A0);
  __chkstk_darwin();
  v6 = &v18 - v5;
  sub_100004CB8(&qword_1006478D0, &qword_1005361A8);
  __chkstk_darwin();
  v8 = &v18 - v7;
  v9 = sub_1004D7D4C();
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v13 = sub_1004D826C();
    v14 = *(*(v13 - 8) + 56);

    return v14(a3, 1, 1, v13);
  }

  else
  {
    if (qword_100646D38 != -1)
    {
      swift_once();
    }

    v16 = sub_1004D84CC();
    sub_100035430(v16, static Calendar.musicDefaultCalendar);
    (*(*(v16 - 8) + 56))(v8, 1, 1, v16);
    v17 = sub_1004D855C();
    (*(*(v17 - 8) + 56))(v6, 1, 1, v17);
    sub_1004D7D3C();
    sub_1004D847C();
    return (*(v10 + 8))(v12, v9);
  }
}

uint64_t static FormatStyle<>.musicReleaseYear.getter()
{
  sub_1004D855C();
  __chkstk_darwin();
  v0 = sub_1004D815C();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1004D817C();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1004D7EAC();
  sub_1004D814C();
  sub_1004D813C();
  (*(v1 + 8))(v3, v0);
  (*(v5 + 8))(v7, v4);
  if (qword_100646D38 != -1)
  {
    swift_once();
  }

  v8 = sub_1004D84CC();
  sub_100035430(v8, static Calendar.musicDefaultCalendar);
  sub_1004D849C();
  return sub_1004D816C();
}

id static NSDateFormatter.iso8601ExtendedDateFormatter.getter()
{
  sub_100004CB8(&qword_1006478C8, &qword_1005361A0);
  __chkstk_darwin();
  v1 = &v13 - v0;
  v2 = sub_1004D83FC();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_allocWithZone(NSDateFormatter) init];
  sub_1004D82BC();
  isa = sub_1004D831C().super.isa;
  (*(v3 + 8))(v5, v2);
  [v6 setLocale:isa];

  v8 = sub_1004DD3FC();
  [v6 setDateFormat:v8];

  sub_1004D853C();
  v9 = sub_1004D855C();
  v10 = *(v9 - 8);
  v11 = 0;
  if ((*(v10 + 48))(v1, 1, v9) != 1)
  {
    v11 = sub_1004D854C().super.isa;
    (*(v10 + 8))(v1, v9);
  }

  [v6 setTimeZone:v11];

  return v6;
}

void sub_1004193E8()
{
  v0 = sub_1004D855C();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_allocWithZone(NSDateFormatter) init];
  [v4 setDateStyle:3];
  if (qword_100646D38 != -1)
  {
    swift_once();
  }

  v5 = sub_1004D84CC();
  sub_100035430(v5, static Calendar.musicDefaultCalendar);
  sub_1004D849C();
  isa = sub_1004D854C().super.isa;
  (*(v1 + 8))(v3, v0);
  [v4 setTimeZone:isa];

  static NSDateFormatter.releaseDateFormatter = v4;
}

uint64_t *NSDateFormatter.releaseDateFormatter.unsafeMutableAddressor()
{
  if (qword_100646D40 != -1)
  {
    swift_once();
  }

  return &static NSDateFormatter.releaseDateFormatter;
}

id sub_1004195C4()
{
  v0 = [objc_allocWithZone(NSDateComponentsFormatter) init];
  [v0 setUnitsStyle:3];
  result = [v0 setAllowedUnits:96];
  static NSDateFormatter.collectionsDurationFormatter = v0;
  return result;
}

uint64_t *NSDateFormatter.collectionsDurationFormatter.unsafeMutableAddressor()
{
  if (qword_100646D48 != -1)
  {
    swift_once();
  }

  return &static NSDateFormatter.collectionsDurationFormatter;
}

void Dictionary.filterIncludingPairsWithStringValues()(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = *(a3 - 8);
  __chkstk_darwin();
  v65 = v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v56 = v52 - v9;
  v53 = *(v10 - 8);
  __chkstk_darwin();
  v73 = v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v67 = v52 - v12;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v62 = sub_1004DE7CC();
  v14 = *(v62 - 8);
  __chkstk_darwin();
  v68 = v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v61 = v52 - v16;
  swift_getTupleTypeMetadata2();
  v17 = sub_1004DD8DC();
  v55 = a4;
  v18 = sub_10041D108(v17, a2, &type metadata for String, a4);

  v76 = v18;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v19 = sub_1004DEC8C();
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v64 = v19 | 0x8000000000000000;
  }

  else
  {
    v23 = -1 << *(a1 + 32);
    v21 = ~v23;
    v20 = a1 + 64;
    v24 = -v23;
    if (v24 < 64)
    {
      v25 = ~(-1 << v24);
    }

    else
    {
      v25 = -1;
    }

    v22 = v25 & *(a1 + 64);
    v64 = a1;
  }

  v70 = (v53 + 32);
  v69 = (v54 + 32);
  v60 = TupleTypeMetadata2 - 8;
  v52[1] = v21;
  v26 = (v21 + 64) >> 6;
  v66 = (v53 + 16);
  v52[2] = v54 + 16;
  v58 = (v53 + 8);
  v59 = (v14 + 32);
  v57 = (v54 + 8);

  v27 = 0;
  v28 = v65;
  v29 = v68;
  v63 = v20;
  v30 = v64;
  if ((v64 & 0x8000000000000000) == 0)
  {
    goto LABEL_11;
  }

LABEL_8:
  if (sub_1004DECBC())
  {
    sub_1004DF04C();
    swift_unknownObjectRelease();
    v31 = v56;
    sub_1004DF04C();
    swift_unknownObjectRelease();
    v32 = v27;
    v72 = v22;
    goto LABEL_20;
  }

  v33 = 1;
  v71 = v27;
  v72 = v22;
  while (1)
  {
    v28 = v65;
LABEL_22:
    v42 = *(TupleTypeMetadata2 - 8);
    (*(v42 + 56))(v29, v33, 1, TupleTypeMetadata2);
    v43 = v61;
    (*v59)(v61, v29, v62);
    if ((*(v42 + 48))(v43, 1, TupleTypeMetadata2) == 1)
    {
      sub_100010458(v64);
      return;
    }

    v44 = *(TupleTypeMetadata2 + 48);
    (*v70)(v73, v43, a2);
    (*v69)(v28, &v43[v44], a3);
    if (swift_dynamicCast())
    {
      v45 = v74;
      v46 = v75;
LABEL_27:
      v50 = v67;
      v22 = v72;
      (*v57)(v28, a3);
      v51 = v73;
      (*v66)(v50, v73, a2);
      v74 = v45;
      v75 = v46;
      sub_1004DD25C();
      sub_1004DD28C();
      (*v58)(v51, a2);
      v27 = v71;
      v29 = v68;
      goto LABEL_29;
    }

    sub_100006F10(0, &qword_1006478D8, NSNumber_ptr);
    if (swift_dynamicCast())
    {
      v47 = v74;
      v48 = [v74 description];
      v45 = sub_1004DD43C();
      v46 = v49;

      v28 = v65;
      goto LABEL_27;
    }

    (*v58)(v73, a2);
    (*v57)(v28, a3);
    v27 = v71;
    v22 = v72;
LABEL_29:
    v20 = v63;
    v30 = v64;
    if ((v64 & 0x8000000000000000) != 0)
    {
      goto LABEL_8;
    }

LABEL_11:
    v34 = v22;
    v32 = v27;
    if (!v22)
    {
      break;
    }

LABEL_19:
    v72 = (v34 - 1) & v34;
    v38 = __clz(__rbit64(v34)) | (v32 << 6);
    v39 = v30;
    (*(v53 + 16))(v67, *(v30 + 48) + *(v53 + 72) * v38, a2);
    v40 = *(v39 + 56) + *(v54 + 72) * v38;
    v31 = v56;
    (*(v54 + 16))(v56, v40, a3);
LABEL_20:
    v41 = *(TupleTypeMetadata2 + 48);
    v29 = v68;
    (*v70)();
    (*v69)(&v29[v41], v31, a3);
    v33 = 0;
    v71 = v32;
  }

  if (v26 <= v27 + 1)
  {
    v35 = v27 + 1;
  }

  else
  {
    v35 = v26;
  }

  v36 = v35 - 1;
  v37 = v27;
  while (1)
  {
    v32 = v37 + 1;
    if (__OFADD__(v37, 1))
    {
      break;
    }

    if (v32 >= v26)
    {
      v71 = v36;
      v72 = 0;
      v33 = 1;
      goto LABEL_22;
    }

    v34 = *(v20 + 8 * v32);
    ++v37;
    if (v34)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
}

void Dictionary.filteredDictionary(_:)(uint64_t (*a1)(char *, char *), uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v60 = a1;
  v61 = a2;
  sub_1004DE7CC();
  __chkstk_darwin();
  v52 = v50 - v10;
  v55 = *(a5 - 8);
  __chkstk_darwin();
  v12 = v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v57 = v50 - v13;
  v54 = *(a4 - 8);
  __chkstk_darwin();
  v15 = v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v75 = v50 - v16;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v68 = sub_1004DE7CC();
  v18 = *(v68 - 8);
  __chkstk_darwin();
  v67 = v50 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v66 = v50 - v20;
  swift_getTupleTypeMetadata2();
  v21 = sub_1004DD8DC();
  v73 = a4;
  v53 = a6;
  v22 = sub_10041D108(v21, a4, a5, a6);

  v77 = v22;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v23 = sub_1004DEC8C();
    v24 = 0;
    v25 = 0;
    v69 = v23 | 0x8000000000000000;
    v70 = 0;
  }

  else
  {
    v26 = -1 << *(a3 + 32);
    v24 = ~v26;
    v27 = *(a3 + 64);
    v69 = a3;
    v70 = a3 + 64;
    v28 = -v26;
    if (v28 < 64)
    {
      v29 = ~(-1 << v28);
    }

    else
    {
      v29 = -1;
    }

    v25 = v29 & v27;
  }

  v72 = (v54 + 32);
  v30 = (v55 + 32);
  v65 = TupleTypeMetadata2 - 8;
  v50[1] = v24;
  v31 = (v24 + 64) >> 6;
  v62 = (v55 + 16);
  v63 = (v54 + 16);
  v64 = (v18 + 32);
  v58 = (v54 + 8);
  v59 = (v55 + 8);
  v51 = (v55 + 56);

  v32 = 0;
  v74 = v12;
  v56 = v15;
  while (1)
  {
    v71 = v25;
    if ((v69 & 0x8000000000000000) == 0)
    {
      break;
    }

    if (sub_1004DECBC())
    {
      sub_1004DF04C();
      swift_unknownObjectRelease();
      v41 = v57;
      sub_1004DF04C();
      swift_unknownObjectRelease();
      v34 = v32;
      v76 = v71;
      goto LABEL_21;
    }

    v44 = 1;
    v36 = v32;
    v76 = v71;
    v43 = v67;
LABEL_22:
    v45 = *(TupleTypeMetadata2 - 8);
    (*(v45 + 56))(v43, v44, 1, TupleTypeMetadata2);
    v46 = v66;
    (*v64)();
    if ((*(v45 + 48))(v46, 1, TupleTypeMetadata2) == 1)
    {
      sub_100010458(v69);
      return;
    }

    v47 = *(TupleTypeMetadata2 + 48);
    v48 = v73;
    (*v72)(v15, v46, v73);
    (*v30)(v12, &v46[v47], a5);
    if (v60(v15, v12))
    {
      (*v63)(v75, v15, v48);
      v49 = v52;
      (*v62)(v52, v74, a5);
      (*v51)(v49, 0, 1, a5);
      sub_1004DD25C();
      v12 = v74;
      sub_1004DD28C();
    }

    (*v59)(v12, a5);
    (*v58)(v15, v48);
    v32 = v36;
    v25 = v76;
  }

  v33 = v25;
  v34 = v32;
  if (v25)
  {
LABEL_18:
    v76 = (v33 - 1) & v33;
    v38 = __clz(__rbit64(v33)) | (v34 << 6);
    v39 = v69;
    (*(v54 + 16))(v75, *(v69 + 48) + *(v54 + 72) * v38, v73);
    v40 = *(v39 + 56) + *(v55 + 72) * v38;
    v41 = v57;
    (*(v55 + 16))(v57, v40, a5);
LABEL_21:
    v42 = *(TupleTypeMetadata2 + 48);
    v43 = v67;
    (*v72)();
    (*v30)(&v43[v42], v41, a5);
    v44 = 0;
    v36 = v34;
    v12 = v74;
    v15 = v56;
    goto LABEL_22;
  }

  if (v31 <= v32 + 1)
  {
    v35 = v32 + 1;
  }

  else
  {
    v35 = v31;
  }

  v36 = v35 - 1;
  v37 = v32;
  while (1)
  {
    v34 = v37 + 1;
    if (__OFADD__(v37, 1))
    {
      break;
    }

    if (v34 >= v31)
    {
      v76 = 0;
      v44 = 1;
      v43 = v67;
      goto LABEL_22;
    }

    v33 = *(v70 + 8 * v34);
    ++v37;
    if (v33)
    {
      goto LABEL_18;
    }
  }

  __break(1u);
}

uint64_t IndexPath.safeSection.getter()
{
  if ((sub_1004D85EC() - 1) > 1)
  {

    return sub_1004D7A2C();
  }

  else
  {

    return sub_1004D860C();
  }
}

uint64_t IndexPath.safeSection.setter(uint64_t a1)
{
  result = sub_1004D85EC();
  if ((result - 1) <= 1)
  {

    return sub_1004D861C();
  }

  return result;
}

uint64_t (*IndexPath.safeSection.modify(uint64_t *a1))(uint64_t *a1)
{
  a1[1] = v1;
  if ((sub_1004D85EC() - 1) > 1)
  {
    v3 = sub_1004D7A2C();
  }

  else
  {
    v3 = sub_1004D860C();
  }

  *a1 = v3;
  return sub_10041A6A8;
}

uint64_t sub_10041A6A8(uint64_t *a1)
{
  result = sub_1004D85EC();
  if ((result - 1) <= 1)
  {
    return sub_1004D861C();
  }

  return result;
}

uint64_t IndexPath.safeItem.getter()
{
  if (sub_1004D85EC() > 1)
  {

    return sub_1004D860C();
  }

  else
  {

    return sub_1004D7A2C();
  }
}

unint64_t IndexPath.safeItem.setter(uint64_t a1)
{
  result = sub_1004D85EC();
  if (result >= 2)
  {

    return sub_1004D861C();
  }

  return result;
}

unint64_t (*IndexPath.safeItem.modify(uint64_t *a1))(uint64_t *a1)
{
  a1[1] = v1;
  if (sub_1004D85EC() > 1)
  {
    v3 = sub_1004D860C();
  }

  else
  {
    v3 = sub_1004D7A2C();
  }

  *a1 = v3;
  return sub_10041A7E0;
}

unint64_t sub_10041A7E0(uint64_t *a1)
{
  result = sub_1004D85EC();
  if (result >= 2)
  {
    return sub_1004D861C();
  }

  return result;
}

Swift::String __swiftcall String.trim()()
{
  v2 = v1;
  v3 = v0;
  v4 = sub_1004D7B3C();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1004D7AFC();
  v15._countAndFlagsBits = 41154;
  v15._object = 0xA200000000000000;
  sub_1004D7B0C(v15);
  v14[0] = v3;
  v14[1] = v2;
  sub_10041D3F4();
  v8 = sub_1004DE86C();
  v10 = v9;
  (*(v5 + 8))(v7, v4);
  v11 = v8;
  v12 = v10;
  result._object = v12;
  result._countAndFlagsBits = v11;
  return result;
}

Swift::String __swiftcall String.removeSpaces()()
{
  sub_10041D3F4();
  v0 = sub_1004DE87C();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

Swift::String __swiftcall String.replace(usingRegexPattern:with:options:)(Swift::String usingRegexPattern, Swift::String with, NSRegularExpressionOptions options)
{
  v5 = v4;
  v6 = v3;
  object = usingRegexPattern._object;
  countAndFlagsBits = usingRegexPattern._countAndFlagsBits;
  objc_allocWithZone(NSRegularExpression);

  v10 = sub_10041C978(countAndFlagsBits, object, options);
  if (v10)
  {
    v11 = v10;
    v12 = sub_1004DD58C();
    v13 = sub_1004DD3FC();
    v14 = sub_1004DD3FC();
    v15 = [v11 stringByReplacingMatchesInString:v13 options:0 range:0 withTemplate:{v12, v14}];

    v6 = sub_1004DD43C();
    v5 = v16;
  }

  else
  {
  }

  v17 = v6;
  v18 = v5;
  result._object = v18;
  result._countAndFlagsBits = v17;
  return result;
}

Swift::String __swiftcall String.insensitiveCompareString()()
{
  v2 = v1;
  v3 = v0;
  sub_100004CB8(&qword_1006478E8, &qword_1005361B0);
  __chkstk_darwin();
  v5 = &v24 - v4;
  v6 = 0xE000000000000000;
  v28 = 0;
  v29 = 0xE000000000000000;
  v7 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v7 = v3 & 0xFFFFFFFFFFFFLL;
  }

  v24 = v3;
  v25 = v2;
  v26 = 0;
  v27 = v7;

  v8 = sub_1004DD60C();
  if (v9)
  {
    v10 = v8;
    v11 = v9;
    do
    {
      if ((sub_1004DD2DC() & 1) == 0)
      {
        v30._countAndFlagsBits = v10;
        v30._object = v11;
        sub_1004DD5EC(v30);
      }

      v10 = sub_1004DD60C();
      v11 = v12;
    }

    while (v12);
    v13 = v28;
    v6 = v29;
  }

  else
  {
    v13 = 0;
  }

  v24 = v13;
  v25 = v6;
  sub_10041D3F4();
  v14 = sub_1004DE85C();
  v16 = v15;

  v28 = v14;
  v29 = v16;
  sub_1004D838C();
  v17 = sub_1004D83FC();
  (*(*(v17 - 8) + 56))(v5, 0, 1, v17);
  v18 = sub_1004DE89C();
  v20 = v19;
  sub_10001074C(v5, &qword_1006478E8, &qword_1005361B0);

  v21 = v18;
  v22 = v20;
  result._object = v22;
  result._countAndFlagsBits = v21;
  return result;
}

id String.BOOLValue.getter(uint64_t a1, uint64_t a2)
{
  v2 = sub_1004DD3FC();
  v3 = [v2 BOOLValue];

  return v3;
}

uint64_t String.containsExcessiveHeightCharacters.getter(uint64_t a1, uint64_t a2)
{
  sub_100004CB8(&qword_1006478F0, &qword_1005361B8);
  __chkstk_darwin();
  v5 = v22 - v4;
  v6 = sub_1004D7B3C();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v11 = v22 - v10;
  __chkstk_darwin();
  v13 = v22 - v12;
  v14 = CTFontCopySystemUIFontExcessiveLineHeightCharacterSet();
  if (v14)
  {
    v15 = v14;
    objc_opt_self();
    if (!swift_dynamicCastObjCClass())
    {

      v16 = 0;
      return v16 & 1;
    }

    (*(v7 + 56))(v5, 1, 1, v6);
    sub_10041D8CC(&qword_1006478F8, &type metadata accessor for CharacterSet, &protocol conformance descriptor for CharacterSet);
    sub_1004DEE1C();

    if ((*(v7 + 48))(v5, 1, v6) != 1)
    {
      v17 = *(v7 + 32);
      v17(v11, v5, v6);
      v17(v13, v11, v6);
      (*(v7 + 16))(v9, v13, v6);
      sub_1004D7B1C();
      sub_1004D7B1C();
      v22[0] = a1;
      v22[1] = a2;
      sub_10041D3F4();
      sub_1004DE84C();
      v19 = v18;
      v20 = *(v7 + 8);
      v20(v9, v6);
      v20(v13, v6);
      v16 = v19 ^ 1;
      return v16 & 1;
    }
  }

  v16 = 0;
  return v16 & 1;
}

BOOL String.containsCharacter(from:)(uint64_t a1)
{
  sub_10041D3F4();
  sub_1004DE84C();
  return (v1 & 1) == 0;
}

BOOL Optional<A>.isEmpty.getter(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v3 = v2 == 0;
  return !a2 || v3;
}

uint64_t Optional<A>.nonEmpty.getter(uint64_t a1, unint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v2)
  {
    return 0;
  }

  return a1;
}

NSAttributedString __swiftcall NSAttributedString.init(string:attributes:replacingPlaceholder:withImage:imageAttributes:)(Swift::String string, Swift::OpaquePointer attributes, Swift::String replacingPlaceholder, UIImage_optional withImage, Swift::OpaquePointer imageAttributes)
{
  isa = withImage.value.super.isa;
  sub_1004DD40C();
  v6 = objc_allocWithZone(NSMutableAttributedString);
  v7 = sub_1004DD3FC();

  _s3__C3KeyVMa_0(0);
  sub_10041D8CC(&qword_100646EB8, _s3__C3KeyVMa_0, &unk_100535500);
  v8 = sub_1004DD1FC().super.isa;

  v9 = [v6 initWithString:v7 attributes:v8];

  v10 = sub_1004DD3FC();

  v11 = sub_1004DD3FC();

  v12 = [v10 rangeOfString:v11 options:129];
  v14 = v13;

  if (isa)
  {
    v15 = objc_opt_self();
    isa = isa;
    v16 = [v15 textAttachmentWithImage:isa];
    v17 = sub_1004DD1FC().super.isa;

    v18 = [objc_opt_self() attributedStringWithAttachment:v16 attributes:v17];
  }

  else
  {

    v18 = [objc_allocWithZone(NSAttributedString) init];
  }

  [v9 replaceCharactersInRange:v12 withAttributedString:{v14, v18}];
  v19 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithAttributedString:v9];

  return v19;
}

uint64_t NSAttributedString.init(_:)(uint64_t a1)
{
  sub_100004CB8(&qword_100647900, &qword_1005361C0);
  __chkstk_darwin();
  v3 = &v12 - v2;
  v4 = sub_1004D7E3C();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v9 = &v12 - v8;
  sub_10041D448(a1, v3);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_10001074C(a1, &qword_100647900, &qword_1005361C0);
    sub_10001074C(v3, &qword_100647900, &qword_1005361C0);
    return 0;
  }

  else
  {
    (*(v5 + 32))(v9, v3, v4);
    (*(v5 + 16))(v7, v9, v4);
    v11 = sub_1004DE1BC();
    sub_10001074C(a1, &qword_100647900, &qword_1005361C0);
    (*(v5 + 8))(v9, v4);
    return v11;
  }
}

uint64_t *Double.epsilon.unsafeMutableAddressor()
{
  if (qword_100646D50 != -1)
  {
    swift_once();
  }

  return &static Double.epsilon;
}

double static Double.epsilon.getter()
{
  if (qword_100646D50 != -1)
  {
    swift_once();
  }

  return *&static Double.epsilon;
}

uint64_t _NSRange.init(range:in:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1004DD57C();
  if (v4 & 1) != 0 || (sub_1004DD57C(), (v5))
  {
    result = sub_1004DECCC();
    __break(1u);
  }

  else
  {
    v6 = sub_1004DD67C();
    sub_1004DD67C();

    return v6;
  }

  return result;
}

{
  sub_1004DD59C();
  sub_1004DD57C();
  if (v4 & 1) != 0 || (sub_1004DD57C(), (v5))
  {
    result = sub_1004DECCC();
    __break(1u);
  }

  else
  {
    v6 = sub_1004DD67C();
    sub_1004DD67C();

    return v6;
  }

  return result;
}

Swift::Bool __swiftcall _NSRange.contains(_:)(__C::_NSRange a1)
{
  if (a1.location >= v1)
  {
    if (__OFADD__(a1.location, a1.length))
    {
      __break(1u);
    }

    else if (!__OFADD__(v1, v2))
    {
      LOBYTE(a1.location) = v1 + v2 >= a1.location + a1.length;
      return a1.location;
    }

    __break(1u);
    return a1.location;
  }

  LOBYTE(a1.location) = 0;
  return a1.location;
}

__C::_NSRange __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> _NSRange.convert(from:to:preserveLength:)(Swift::String from, Swift::String to, Swift::Bool preserveLength)
{
  sub_10041D3F4();
  if (sub_1004DE8BC())
  {
    v4 = sub_1004DD65C();
    v5 = sub_1004DD3FC();
    v6 = sub_1004DD3FC();
    v7 = [v5 rangeOfString:{v6, to._countAndFlagsBits, to._object, from._countAndFlagsBits, from._object}];
    v9 = v8;

    v10.location = 0;
    v10.length = v4;
    v11.location = v7;
    v11.length = v9;
    v14 = _NSRange.convert(from:to:preserveLength:)(v10, v11, preserveLength);
    length = v14.length;
    location = v14.location;
  }

  else
  {
    sub_10041D4B8();
    swift_allocError();
    *v15 = 4;
    location = swift_willThrow();
  }

  result.length = length;
  result.location = location;
  return result;
}

__C::_NSRange __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> _NSRange.convert(from:to:preserveLength:)(__C::_NSRange from, __C::_NSRange to, Swift::Bool preserveLength)
{
  if (to.location < from.location)
  {
    goto LABEL_5;
  }

  if (__OFADD__(to.location, to.length))
  {
    __break(1u);
    goto LABEL_19;
  }

  v5 = from.location + from.length;
  if (__OFADD__(from.location, from.length))
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v5 < to.location + to.length)
  {
LABEL_5:
    v6 = 0;
LABEL_6:
    sub_10041D4B8();
    swift_allocError();
    *v7 = v6;
    from.location = swift_willThrow();
    return from;
  }

  if (v3 < from.location)
  {
LABEL_11:
    v6 = 1;
    goto LABEL_6;
  }

  if (__OFADD__(v3, v4))
  {
    goto LABEL_20;
  }

  if (v5 < v3 + v4)
  {
    goto LABEL_11;
  }

  if (__OFSUB__(v3, to.location))
  {
LABEL_21:
    __break(1u);
    return from;
  }

  v11.location = 0;
  v11.length = to.length;
  v9 = v4;
  from.location = sub_1004DE73C(v11);
  if (v10)
  {
    v6 = 2;
    goto LABEL_6;
  }

  if (preserveLength && from.length != v9)
  {
    v6 = 3;
    goto LABEL_6;
  }

  return from;
}

Swift::Bool __swiftcall _NSRange.intersects(_:)(__C::_NSRange a1)
{
  v3 = v1 + v2;
  if (__OFADD__(v1, v2))
  {
    __break(1u);
    goto LABEL_17;
  }

  v4 = a1.location + a1.length;
  if (__OFADD__(a1.location, a1.length))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v3 >= v4)
  {
    v5 = a1.location + a1.length;
  }

  else
  {
    v5 = v1 + v2;
  }

  if (v1 >= a1.location && v4 > v1)
  {
    if (!__OFSUB__(v5, v1))
    {
      goto LABEL_14;
    }

    __break(1u);
  }

  v6 = 0;
  if (a1.location < v1 || v3 <= a1.location)
  {
    goto LABEL_15;
  }

  if (__OFSUB__(v5, a1.location))
  {
LABEL_18:
    __break(1u);
    return a1.location;
  }

LABEL_14:
  v6 = 1;
LABEL_15:
  LOBYTE(a1.location) = v6;
  return a1.location;
}

uint64_t sub_10041BC38()
{
  result = sub_1004D7A2C();
  static _NSRange.notFound = result;
  *algn_1006741E8 = 0;
  return result;
}

uint64_t *_NSRange.notFound.unsafeMutableAddressor()
{
  if (qword_100646D58 != -1)
  {
    swift_once();
  }

  return &static _NSRange.notFound;
}

uint64_t static _NSRange.notFound.getter()
{
  if (qword_100646D58 != -1)
  {
    swift_once();
  }

  return static _NSRange.notFound;
}

Swift::tuple_first___C__NSRange_second___C__NSRange __swiftcall _NSRange.difference(_:)(__C::_NSRange a1)
{
  v3 = v1 + v2;
  v4 = __OFADD__(v1, v2);
  if (v1 < a1.location)
  {
    if (!v4)
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  if (v4)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  if (__OFADD__(a1.location, a1.length))
  {
LABEL_51:
    __break(1u);
LABEL_52:
    v11 = v2;
    v13 = v1;
    swift_once();
    v2 = v11;
    v1 = v13;
    goto LABEL_39;
  }

  if (a1.location + a1.length >= v3)
  {
    if (qword_100646D58 == -1)
    {
LABEL_44:
      v1 = static _NSRange.notFound;
      v2 = *algn_1006741E8;
      v5 = static _NSRange.notFound;
      v7 = *algn_1006741E8;
      goto LABEL_45;
    }

LABEL_47:
    swift_once();
    goto LABEL_44;
  }

LABEL_10:
  v5 = a1.location + a1.length;
  if (__OFADD__(a1.location, a1.length))
  {
    __break(1u);
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  if (v1 < a1.location || v5 <= v1)
  {
    goto LABEL_27;
  }

  v6 = 0;
  v2 = a1.location - v1;
  if (!__OFSUB__(a1.location, v1))
  {
    while (1)
    {
      v7 = v3 - v5;
      if (__OFSUB__(v3, v5))
      {
        goto LABEL_49;
      }

      if (!v6)
      {
        break;
      }

      if (v5 >= v3)
      {
        goto LABEL_38;
      }

      v3 = v1 + v2;
      if (__OFADD__(v1, v2))
      {
        __break(1u);
LABEL_54:
        v12 = v7;
        v14 = a1.location + a1.length;
        swift_once();
        v7 = v12;
        v5 = v14;
LABEL_42:
        v1 = v5;
        v2 = v7;
        v5 = static _NSRange.notFound;
        v7 = *algn_1006741E8;
        goto LABEL_45;
      }

      if (v3 < v5)
      {
        goto LABEL_45;
      }

      v8 = __OFADD__(v5, v7);
      v9 = v5 + v7;
      if (v8)
      {
        __break(1u);
        goto LABEL_56;
      }

      if (v3 > v9)
      {
        v9 = v1 + v2;
      }

      if (v5 < v1)
      {
        v1 = a1.location + a1.length;
      }

      v2 = v9 - v1;
      if (!__OFSUB__(v9, v1))
      {
        goto LABEL_38;
      }

      __break(1u);
LABEL_27:
      if (a1.location < v1 || v3 <= a1.location)
      {
        goto LABEL_38;
      }

      v6 = v1 < a1.location && v2 > 0;
      v2 = a1.location - v1;
      if (__OFSUB__(a1.location, v1))
      {
        goto LABEL_37;
      }
    }

    if (v5 < v3)
    {
      if (qword_100646D58 != -1)
      {
        goto LABEL_54;
      }

      goto LABEL_42;
    }

    if (qword_100646D58 == -1)
    {
      goto LABEL_44;
    }

    goto LABEL_47;
  }

LABEL_37:
  __break(1u);
LABEL_38:
  if (qword_100646D58 != -1)
  {
    goto LABEL_52;
  }

LABEL_39:
  v5 = static _NSRange.notFound;
  v7 = *algn_1006741E8;
LABEL_45:
  a1.location = v1;
  a1.length = v2;
  v1 = v5;
  v2 = v7;
LABEL_56:
  result.first = a1;
  result.second.length = v2;
  result.second.location = v1;
  return result;
}

Swift::Int_optional __swiftcall _NSRange.NSRangeIterator.next()()
{
  v1 = *(v0 + 16);
  if (*(v0 + 24))
  {
    v2 = 1;
  }

  else
  {
    v3 = *(v0 + 8);
    if (__OFADD__(*v0, v3))
    {
      __break(1u);
    }

    else if (v1 >= *v0 + v3)
    {
      v1 = 0;
      v2 = 1;
    }

    else
    {
      v2 = 0;
      *(v0 + 16) = v1 + 1;
    }
  }

  result.value = v1;
  result.is_nil = v2;
  return result;
}

void sub_10041BF38(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  if (*(v1 + 24))
  {
    goto LABEL_6;
  }

  v3 = *(v1 + 8);
  if (!__OFADD__(*v1, v3))
  {
    if (v2 < *v1 + v3)
    {
      v4 = 0;
      *(v1 + 16) = v2 + 1;
LABEL_7:
      *a1 = v2;
      *(a1 + 8) = v4;
      return;
    }

    v2 = 0;
LABEL_6:
    v4 = 1;
    goto LABEL_7;
  }

  __break(1u);
}

void sub_10041BF90(uint64_t a1@<X8>)
{
  v2 = v1[1];
  if (v2 >= 1)
  {
    v3 = *v1;
  }

  else
  {
    v3 = 0;
  }

  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v2 < 1;
}

uint64_t WeakWrapper.value.setter(uint64_t a1)
{
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t (*WeakWrapper.value.modify(uint64_t *a1))()
{
  a1[1] = v1;
  *a1 = swift_unknownObjectWeakLoadStrong();
  return sub_10041C04C;
}

uint64_t sub_10041C04C(void *a1)
{
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t WeakWrapper.init(value:)()
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

BOOL static WeakWrapper.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v3 = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if (v3)
    {
      v4 = v3;
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      return Strong == v4;
    }
  }

  else if (!v3)
  {
    return 1;
  }

  swift_unknownObjectRelease();
  return 0;
}

uint64_t Int.romanNumeral.getter(uint64_t a1)
{
  if (a1 < 1)
  {
    return 0;
  }

  v1 = a1;
  for (i = 0; i != 13; ++i)
  {
    v3 = qword_1005365B8[*(&off_1005FADC0 + i + 32)];
    if (v1 >= v3)
    {
      v4 = 0xE100000000000000;
      v5 = 77;
      switch(*(&off_1005FADC0 + i + 32))
      {
        case 1:
          v4 = 0xE200000000000000;
          v5 = 19779;
          break;
        case 2:
          v5 = 68;
          break;
        case 3:
          v4 = 0xE200000000000000;
          v5 = 17475;
          break;
        case 4:
          v5 = 67;
          break;
        case 5:
          v4 = 0xE200000000000000;
          v5 = 17240;
          break;
        case 6:
          v5 = 76;
          break;
        case 7:
          v4 = 0xE200000000000000;
          v5 = 19544;
          break;
        case 8:
          v5 = 88;
          break;
        case 9:
          v4 = 0xE200000000000000;
          v5 = 22601;
          break;
        case 0xA:
          v5 = 86;
          break;
        case 0xB:
          v4 = 0xE200000000000000;
          v5 = 22089;
          break;
        case 0xC:
          v5 = 73;
          break;
        default:
          goto LABEL_18;
      }

      do
      {
LABEL_18:
        v1 -= v3;
        v7._countAndFlagsBits = v5;
        v7._object = v4;
        sub_1004DD5FC(v7);
      }

      while (v1 >= v3);
    }
  }

  return 0;
}

uint64_t RomanNumerals.rawValue.getter(char a1)
{
  result = 77;
  switch(a1)
  {
    case 1:
      result = 19779;
      break;
    case 2:
      result = 68;
      break;
    case 3:
      result = 17475;
      break;
    case 4:
      result = 67;
      break;
    case 5:
      result = 17240;
      break;
    case 6:
      result = 76;
      break;
    case 7:
      result = 19544;
      break;
    case 8:
      result = 88;
      break;
    case 9:
      result = 22601;
      break;
    case 10:
      result = 86;
      break;
    case 11:
      result = 22089;
      break;
    case 12:
      result = 73;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_10041C3D8(char *a1, char *a2)
{
  v2 = *a2;
  v3 = RomanNumerals.rawValue.getter(*a1);
  v5 = v4;
  if (v3 == RomanNumerals.rawValue.getter(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1004DF08C();
  }

  return v8 & 1;
}

Swift::Int sub_10041C460()
{
  v1 = *v0;
  sub_1004DF26C();
  RomanNumerals.rawValue.getter(v1);
  sub_1004DD55C();

  return sub_1004DF2BC();
}

double sub_10041C4C4(uint64_t a1)
{
  RomanNumerals.rawValue.getter(*v1);
  sub_1004DD55C();

  return result;
}

Swift::Int sub_10041C518()
{
  v1 = *v0;
  sub_1004DF26C();
  RomanNumerals.rawValue.getter(v1);
  sub_1004DD55C();

  return sub_1004DF2BC();
}

unint64_t sub_10041C578@<X0>(Swift::String *a1@<X0>, MusicUtilities::RomanNumerals_optional *a2@<X8>)
{
  result = _s14MusicUtilities13RomanNumeralsO8rawValueACSgSS_tcfC_0(a1->_countAndFlagsBits, a1->_object);
  a2->value = result;
  return result;
}

uint64_t sub_10041C5A8@<X0>(uint64_t *a1@<X8>)
{
  result = RomanNumerals.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

Swift::Int sub_10041C5E4()
{
  result = sub_10041D914(&off_1005FAF48);
  static NSDirectionalEdgeInsets.Edge.all = result;
  return result;
}

uint64_t *NSDirectionalEdgeInsets.Edge.all.unsafeMutableAddressor()
{
  if (qword_100646D60 != -1)
  {
    swift_once();
  }

  return &static NSDirectionalEdgeInsets.Edge.all;
}

double static NSDirectionalEdgeInsets.Edge.all.getter()
{
  if (qword_100646D60 != -1)
  {
    swift_once();
  }

  return result;
}

double NSDirectionalEdgeInsets.init(edge:length:)(uint64_t a1, double a2)
{
  if (sub_10012131C(0, a1))
  {
    v4 = a2;
  }

  else
  {
    v4 = 0.0;
  }

  sub_10012131C(1u, a1);
  sub_10012131C(2u, a1);
  sub_10012131C(3u, a1);

  return v4;
}

uint64_t sub_10041C760(uint64_t a1, uint64_t a2)
{
  v3 = sub_1004D85FC();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (sub_10041D8CC(&qword_1006479C8, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath), v7 = sub_1004DD2AC(), v8 = -1 << *(a2 + 32), v9 = v7 & ~v8, v18 = a2 + 56, ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0))
  {
    v17 = a2;
    v10 = ~v8;
    v11 = v4 + 16;
    v12 = *(v4 + 16);
    v13 = *(v11 + 56);
    v14 = (v11 - 8);
    do
    {
      v12(v6, *(v17 + 48) + v13 * v9, v3);
      sub_10041D8CC(&qword_1006479D0, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
      v15 = sub_1004DD35C();
      (*v14)(v6, v3);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

id sub_10041C978(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1004DD3FC();

  v10 = 0;
  v6 = [v3 initWithPattern:v5 options:a3 error:&v10];

  if (v6)
  {
    v7 = v10;
  }

  else
  {
    v8 = v10;
    sub_1004D7F4C();

    swift_willThrow();
  }

  return v6;
}

uint64_t sub_10041CAAC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *, uint64_t, uint64_t), uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  sub_1004DF26C();
  a3(v10, a1, a2);
  v7 = sub_1004DF2BC();

  return a4(a1, a2, v7);
}

unint64_t sub_10041CB40(Swift::UInt a1)
{
  sub_1004DF26C();
  sub_1004DF27C(a1);
  v2 = sub_1004DF2BC();

  return sub_10002914C(a1, v2);
}

unint64_t sub_10041CBAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1004DF26C();
  if (a2)
  {
    sub_1004DF27C(1uLL);
    sub_1004DD55C();
  }

  else
  {
    sub_1004DF27C(0);
  }

  v6 = sub_1004DF2BC();

  return sub_10041CCAC(a1, a2, a3, v6);
}

unint64_t sub_10041CC50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1004DD2AC();

  return sub_10041CDF4(a1, v6, a2, a3);
}

unint64_t sub_10041CCAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4 + 64;
  v6 = -1 << *(v4 + 32);
  v7 = a4 & ~v6;
  if ((*(v4 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v8 = v4;
    v11 = ~v6;
    do
    {
      v14 = (*(v8 + 48) + 24 * v7);
      v15 = v14[1];
      v16 = v14[2];
      if (v15)
      {
        if (a2)
        {
          v17 = *v14 == a1 && v15 == a2;
          if (v17 || (sub_1004DF08C() & 1) != 0)
          {
LABEL_3:
            sub_100006F10(0, &unk_1006480F0, NSObject_ptr);

            v12 = v16;
            v13 = sub_1004DE5FC();

            if (v13)
            {
              return v7;
            }
          }
        }
      }

      else if (!a2)
      {
        goto LABEL_3;
      }

      v7 = (v7 + 1) & v11;
    }

    while (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  return v7;
}

unint64_t sub_10041CDF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22[1] = a1;
  v22[2] = a4;
  v7 = __chkstk_darwin();
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = v4;
  v10 = -1 << *(v4 + 32);
  v12 = v11 & ~v10;
  v22[0] = v4 + 64;
  if ((*(v4 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v10;
    v16 = *(v6 + 16);
    v14 = v6 + 16;
    v15 = v16;
    v17 = *(v14 + 56);
    v18 = (v14 - 8);
    do
    {
      v19 = v14;
      v15(v9, *(v23 + 48) + v17 * v12, a3, v7);
      v20 = sub_1004DD35C();
      (*v18)(v9, a3);
      if (v20)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      v14 = v19;
    }

    while (((*(v22[0] + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  return v12;
}

void sub_10041CF7C(uint64_t a1, uint64_t a2)
{
  v2 = _swiftEmptyArrayStorage;
  v21 = a2 < 1;
  if (a2 < 1)
  {
    v4 = 0;
  }

  else
  {
    v3 = a1;
    if (__OFADD__(a1, a2))
    {
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    v4 = 0;
    if (a1 <= a1 + a2)
    {
      v5 = a1 + a2;
    }

    else
    {
      v5 = a1;
    }

    v6 = &_swiftEmptyArrayStorage[4];
    while (v5 != v3)
    {
      if (!v4)
      {
        v7 = v2[3];
        if (((v7 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_30;
        }

        v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
        if (v8 <= 1)
        {
          v9 = 1;
        }

        else
        {
          v9 = v8;
        }

        sub_100004CB8(&qword_1006479C0, &qword_100536598);
        v10 = swift_allocObject();
        v11 = j__malloc_size(v10);
        v12 = v11 - 32;
        if (v11 < 32)
        {
          v12 = v11 - 25;
        }

        v13 = v12 >> 3;
        v10[2] = v9;
        v10[3] = 2 * (v12 >> 3);
        v14 = (v10 + 4);
        v15 = v2[3] >> 1;
        if (v2[2])
        {
          v16 = v2 + 4;
          if (v10 != v2 || v14 >= v16 + 8 * v15)
          {
            memmove(v10 + 4, v16, 8 * v15);
          }

          v2[2] = 0;
        }

        v6 = (v14 + 8 * v15);
        v4 = (v13 & 0x7FFFFFFFFFFFFFFFLL) - v15;

        v2 = v10;
      }

      v17 = __OFSUB__(v4--, 1);
      if (v17)
      {
        __break(1u);
LABEL_30:
        __break(1u);
        goto LABEL_31;
      }

      *v6++ = v3++;
      if (v21)
      {
        break;
      }
    }
  }

  v18 = v2[3];
  if (v18 < 2)
  {
    return;
  }

  v19 = v18 >> 1;
  v17 = __OFSUB__(v19, v4);
  v20 = v19 - v4;
  if (v17)
  {
LABEL_32:
    __break(1u);
    return;
  }

  v2[2] = v20;
}

unint64_t sub_10041D108(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(TupleTypeMetadata2 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin();
  v12 = v23 - v11;
  if (sub_1004DD91C())
  {
    sub_1004DEDCC();
    v13 = sub_1004DEDBC();
  }

  else
  {
    v13 = _swiftEmptyDictionarySingleton;
  }

  result = sub_1004DD97C();
  if (result)
  {
    if (result >= 1)
    {
      v23[0] = v10;
      v27 = a4;
      v15 = 0;
      v16 = *(TupleTypeMetadata2 + 48);
      v25 = a3;
      v26 = (v9 + 16);
      v23[2] = a2 - 8;
      v24 = v16;
      v23[1] = a3 - 8;
      while (1)
      {
        v17 = result;
        if (sub_1004DD8FC())
        {
          (*(v9 + 16))(v12, a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v15, TupleTypeMetadata2);
        }

        else
        {
          result = sub_1004DEB1C();
          if (v23[0] != 8)
          {
            goto LABEL_19;
          }

          v28 = result;
          (*v26)(v12, &v28, TupleTypeMetadata2);
          swift_unknownObjectRelease();
        }

        result = sub_10041CC50(v12, a2, v27);
        if (v18)
        {
          break;
        }

        v19 = result;
        *(v13 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
        (*(*(a2 - 8) + 32))(v13[6] + *(*(a2 - 8) + 72) * result, v12, a2);
        result = (*(*(v25 - 8) + 32))(v13[7] + *(*(v25 - 8) + 72) * v19, &v12[v24]);
        v20 = v13[2];
        v21 = __OFADD__(v20, 1);
        v22 = v20 + 1;
        if (v21)
        {
          goto LABEL_17;
        }

        ++v15;
        v13[2] = v22;
        result = v17;
        if (v17 == v15)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {
LABEL_15:

    return v13;
  }

  return result;
}

unint64_t sub_10041D3F4()
{
  result = qword_1006478E0;
  if (!qword_1006478E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006478E0);
  }

  return result;
}

uint64_t sub_10041D448(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004CB8(&qword_100647900, &qword_1005361C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_10041D4B8()
{
  result = qword_100647908;
  if (!qword_100647908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100647908);
  }

  return result;
}

void sub_10041D50C(uint64_t a1, uint64_t a2, __n128 a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v10 = sub_1004D7CAC();
  if (v10)
  {
    v11 = sub_1004D7CDC();
    if (__OFSUB__(a1, v11))
    {
      goto LABEL_7;
    }

    v10 = (v10 + a1 - v11);
  }

  if (!__OFSUB__(a2, a1))
  {
    sub_1004D7CCC();
    sub_100417F50(v10, a5, a6, &v12);
    return;
  }

  __break(1u);
LABEL_7:
  __break(1u);
}

unint64_t _s14MusicUtilities13RomanNumeralsO8rawValueACSgSS_tcfC_0(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1005FADF0;
  v6._object = a2;
  v4 = sub_1004DEE2C(v3, v6);

  if (v4 >= 0xD)
  {
    return 13;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_10041D618()
{
  result = qword_100647910;
  if (!qword_100647910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100647910);
  }

  return result;
}

unint64_t sub_10041D670()
{
  result = qword_100647918;
  if (!qword_100647918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100647918);
  }

  return result;
}

unint64_t sub_10041D6C8()
{
  result = qword_100647920;
  if (!qword_100647920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100647920);
  }

  return result;
}

unint64_t sub_10041D764()
{
  result = qword_100647938[0];
  if (!qword_100647938[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100647938);
  }

  return result;
}

__n128 sub_10041D7E4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_10041D7F8(uint64_t a1, int a2)
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

uint64_t sub_10041D818(uint64_t result, int a2, int a3)
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

uint64_t sub_10041D858(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_10041D8CC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

Swift::Int sub_10041D914(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100004CB8(&qword_1006479D8, &qword_1005365A0);
    v3 = sub_1004DEA8C();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (1)
    {
      v10 = *(v6 + v4);
      sub_1004DF26C();
      sub_1004DF27C(v10);
      result = sub_1004DF2BC();
      v12 = ~(-1 << *(v3 + 32));
      v13 = result & v12;
      v14 = (result & v12) >> 6;
      v15 = *(v5 + 8 * v14);
      v16 = 1 << (result & v12);
      v17 = *(v3 + 48);
      if ((v16 & v15) != 0)
      {
        while (*(v17 + v13) != v10)
        {
          v13 = (v13 + 1) & v12;
          v14 = v13 >> 6;
          v15 = *(v5 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v5 + 8 * v14) = v16 | v15;
        *(v17 + v13) = v10;
        v7 = *(v3 + 16);
        v8 = __OFADD__(v7, 1);
        v9 = v7 + 1;
        if (v8)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v9;
      }

      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

void MPModelObject.humanDescription(including:)(uint64_t a1)
{
  v2 = v1;
  swift_getObjectType();
  v11._countAndFlagsBits = sub_1004DF34C();
  sub_1004DD5FC(v11);

  v12._countAndFlagsBits = 8250;
  v12._object = 0xE200000000000000;
  sub_1004DD5FC(v12);
  sub_1004DEC6C();
  v10[0] = 0;
  v10[1] = 0xE000000000000000;
  v4 = objc_opt_self();
  v5 = swift_allocObject();
  v5[2] = a1;
  v5[3] = v10;
  v5[4] = v2;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_10041DF7C;
  *(v6 + 24) = v5;
  v9[4] = sub_100107FC0;
  v9[5] = v6;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_1000121E8;
  v9[3] = &unk_1005FC528;
  v7 = _Block_copy(v9);

  v8 = v2;

  [v4 performWithoutEnforcement:v7];
  _Block_release(v7);
  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    __break(1u);
  }

  else
  {
  }
}

void sub_10041DC48(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    goto LABEL_4;
  }

  v6 = sub_100443FF0(*(a1 + 16), 0);
  v25 = sub_1003B274C(v27, v6 + 32, v4, a1);
  v7 = *&v27[0];

  sub_100010458(v7);
  if (v25 != v4)
  {
    __break(1u);
LABEL_4:
    v6 = _swiftEmptyArrayStorage;
  }

  *&v27[0] = v6;
  sub_10041EF54(v27);
  v8 = *&v27[0];
  v9 = *(*&v27[0] + 16);
  if (!v9)
  {
LABEL_20:

    return;
  }

  v10 = 0;
  v11 = *&v27[0] + 32;
  while (v10 < *(v8 + 16))
  {
    if (!*(v11 + v10))
    {
      strcpy(v27, " identifiers=");
      HIWORD(v27[0]) = -4864;
      v12 = [a3 identifiers];
      v13 = [v12 description];
      v14 = sub_1004DD43C();
      v16 = v15;

      v28._countAndFlagsBits = v14;
      v28._object = v16;
      sub_1004DD5FC(v28);

LABEL_8:
      v18 = *(&v27[0] + 1);
      v17._countAndFlagsBits = *&v27[0];
      goto LABEL_9;
    }

    if (*(v11 + v10) == 1)
    {
      *&v27[0] = 23328;
      *(&v27[0] + 1) = 0xE200000000000000;
      v19 = [a3 shortDescription];
      v20 = sub_1004DD43C();
      v22 = v21;

      v29._countAndFlagsBits = v20;
      v29._object = v22;
      sub_1004DD5FC(v29);

      v30._countAndFlagsBits = 93;
      v30._object = 0xE100000000000000;
      sub_1004DD5FC(v30);
      goto LABEL_8;
    }

    sub_10041F08C();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    InstanceVariable = class_getInstanceVariable(ObjCClassFromMetadata, "_storage");
    if (!InstanceVariable)
    {
      goto LABEL_10;
    }

    strcpy(v26, " properties=");
    BYTE5(v26[1]) = 0;
    HIWORD(v26[1]) = -5120;
    if (object_getIvar(a3, InstanceVariable))
    {
      sub_1004DE8DC();
      swift_unknownObjectRelease();
    }

    else
    {
      memset(v27, 0, sizeof(v27));
    }

    sub_100004CB8(&qword_100648130, &qword_100535CF0);
    v31._countAndFlagsBits = sub_1004DD4DC();
    sub_1004DD5FC(v31);

    v17._countAndFlagsBits = v26[0];
    v18 = v26[1];
LABEL_9:
    v17._object = v18;
    sub_1004DD5FC(v17);

LABEL_10:
    if (v9 == ++v10)
    {
      goto LABEL_20;
    }
  }

  __break(1u);

  __break(1u);
}

uint64_t sub_10041DF3C()
{

  return swift_deallocObject();
}

double sub_10041DF98(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

unint64_t sub_10041DFB4()
{
  result = qword_1006479E8;
  if (!qword_1006479E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006479E8);
  }

  return result;
}

uint64_t sub_10041E070()
{
  v1 = v0;
  v2 = [v0 title];
  if (v2)
  {
    v3 = v2;
    v4 = sub_1004DD43C();
    v6 = v5;
  }

  else
  {
    v6 = 0xED0000676E6F5320;
    v4 = 0x64656C7469746E55;
  }

  v20._countAndFlagsBits = v4;
  v20._object = v6;
  sub_1004DD5FC(v20);

  v21._countAndFlagsBits = 34;
  v21._object = 0xE100000000000000;
  sub_1004DD5FC(v21);
  v7 = [v1 album];
  if (v7)
  {
    v8 = v7;
    v9 = [v7 shortDescription];
    v10 = sub_1004DD43C();
    v12 = v11;

    v22._countAndFlagsBits = v10;
    v22._object = v12;
    sub_1004DD5FC(v22);

    v23._countAndFlagsBits = 0x206D75626C41203BLL;
    v23._object = 0xE800000000000000;
    sub_1004DD5FC(v23);
  }

  v13 = [v1 artist];
  if (v13)
  {
    v14 = v13;
    v15 = [v13 shortDescription];
    v16 = sub_1004DD43C();
    v18 = v17;

    v24._countAndFlagsBits = v16;
    v24._object = v18;
    sub_1004DD5FC(v24);

    v25._countAndFlagsBits = 0x747369747241203BLL;
    v25._object = 0xE900000000000020;
    sub_1004DD5FC(v25);
  }

  return 0x22203A656C746954;
}

uint64_t sub_10041E470()
{
  v1 = [v0 name];
  if (v1)
  {
    v2 = v1;
    v3 = sub_1004DD43C();
    v5 = v4;
  }

  else
  {
    v5 = 0x80000001004F2AA0;
    v3 = 0xD000000000000011;
  }

  v7._countAndFlagsBits = v3;
  v7._object = v5;
  sub_1004DD5FC(v7);

  v8._countAndFlagsBits = 34;
  v8._object = 0xE100000000000000;
  sub_1004DD5FC(v8);
  return 0x22203A656D614ELL;
}

uint64_t sub_10041E544()
{
  v1 = swift_allocObject();
  *(v1 + 16) = v0;
  v2 = swift_allocObject();
  *(v2 + 16) = sub_10041EEDC;
  *(v2 + 24) = v1;
  v8 = v2;
  v3 = v0;
  sub_100004CB8(&qword_1006479F0, &qword_100536708);
  v9._countAndFlagsBits = sub_1004DD4DC();
  sub_1004DD5FC(v9);

  v10._countAndFlagsBits = 2236475;
  v10._object = 0xE300000000000000;
  sub_1004DD5FC(v10);
  v4 = [v3 anyObject];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 shortDescription];

    sub_1004DD43C();
  }

  sub_100004CB8(&qword_1006479F8, &qword_100536710);
  v11._countAndFlagsBits = sub_1004DD4DC();
  sub_1004DD5FC(v11);

  v12._countAndFlagsBits = 34;
  v12._object = 0xE100000000000000;
  sub_1004DD5FC(v12);
  return 0x203A65707954;
}

uint64_t sub_10041E88C()
{
  v1 = v0;
  v2 = [v0 title];
  if (v2)
  {
    v3 = v2;
    v4 = sub_1004DD43C();
    v6 = v5;
  }

  else
  {
    v6 = 0x80000001004FA3B0;
    v4 = 0xD000000000000010;
  }

  v20._countAndFlagsBits = v4;
  v20._object = v6;
  sub_1004DD5FC(v20);

  v21._countAndFlagsBits = 34;
  v21._object = 0xE100000000000000;
  sub_1004DD5FC(v21);
  v7 = [v1 show];
  if (v7)
  {
    v8 = v7;
    v9 = [v7 shortDescription];
    v10 = sub_1004DD43C();
    v12 = v11;

    v22._countAndFlagsBits = v10;
    v22._object = v12;
    sub_1004DD5FC(v22);

    v23._countAndFlagsBits = 0x20776F6853203BLL;
    v23._object = 0xE700000000000000;
    sub_1004DD5FC(v23);
  }

  v13 = [v1 season];
  if (v13)
  {
    v14 = v13;
    v15 = [v13 shortDescription];
    v16 = sub_1004DD43C();
    v18 = v17;

    v24._countAndFlagsBits = v16;
    v24._object = v18;
    sub_1004DD5FC(v24);

    v25._countAndFlagsBits = 0x6E6F73616553203BLL;
    v25._object = 0xE900000000000020;
    sub_1004DD5FC(v25);
  }

  return 0x22203A656C746954;
}

id sub_10041EB90(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  a3();

  v5 = sub_1004DD3FC();

  return v5;
}

uint64_t sub_10041EC00()
{
  v1 = [v0 name];
  if (v1)
  {
    v2 = v1;
    v3 = sub_1004DD43C();
    v5 = v4;
  }

  else
  {
    v5 = 0x80000001004FA390;
    v3 = 0xD000000000000010;
  }

  v7._countAndFlagsBits = v3;
  v7._object = v5;
  sub_1004DD5FC(v7);

  v8._countAndFlagsBits = 34;
  v8._object = 0xE100000000000000;
  sub_1004DD5FC(v8);
  return 0x22203A656D614ELL;
}

uint64_t sub_10041EEA4()
{

  return swift_deallocObject();
}

uint64_t sub_10041EEEC()
{

  return swift_deallocObject();
}

uint64_t sub_10041EF24@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = result;
  return result;
}

void sub_10041EF54(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1004462F8(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  v4 = sub_1004DEF7C(v3);
  if (v4 >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = v2[v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          v14 = *v13;
          if (v11 >= v14)
          {
            break;
          }

          v13[1] = v14;
          *v13-- = v11;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        ++v10;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = v4;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = sub_1004DD8EC();
      v7[2] = v6;
    }

    else
    {
      v7 = _swiftEmptyArrayStorage;
    }

    v16[0] = v7 + 4;
    v16[1] = v6;
    sub_10041F0D8(v16, v17, v18, v5);
    v7[2] = 0;
  }

  *a1 = v2;
}

unint64_t sub_10041F08C()
{
  result = qword_100647A00;
  if (!qword_100647A00)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100647A00);
  }

  return result;
}

void sub_10041F0D8(unsigned __int8 *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = a3[1];
  if (v6 < 1)
  {
    v9 = _swiftEmptyArrayStorage;
LABEL_88:
    a1 = *a1;
    if (!a1)
    {
      goto LABEL_126;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_120:
      v9 = sub_1004461E0(v9);
    }

    v77 = v9 + 16;
    v78 = *(v9 + 2);
    if (v78 >= 2)
    {
      while (*a3)
      {
        v79 = &v9[16 * v78];
        v80 = *v79;
        v81 = &v77[2 * v78];
        v82 = v81[1];
        sub_1003B23BC((*a3 + *v79), (*a3 + *v81), (*a3 + v82), a1);
        if (v4)
        {
          goto LABEL_97;
        }

        if (v82 < v80)
        {
          goto LABEL_112;
        }

        if (v78 - 2 >= *v77)
        {
          goto LABEL_113;
        }

        *v79 = v80;
        *(v79 + 1) = v82;
        v83 = *v77 - v78;
        if (*v77 < v78)
        {
          goto LABEL_114;
        }

        v78 = *v77 - 1;
        memmove(v81, v81 + 2, 16 * v83);
        *v77 = v78;
        if (v78 <= 1)
        {
          goto LABEL_97;
        }
      }

      goto LABEL_124;
    }

LABEL_97:

    return;
  }

  v7 = a4;
  v8 = 0;
  v9 = _swiftEmptyArrayStorage;
  while (1)
  {
    v10 = v8++;
    if (v8 < v6)
    {
      v11 = *(*a3 + v8);
      v12 = *(*a3 + v10);
      v13 = v10 + 2;
      v14 = v11;
      while (v6 != v13)
      {
        v15 = *(*a3 + v13);
        v16 = (v11 < v12) ^ (v15 >= v14);
        ++v13;
        v14 = v15;
        if ((v16 & 1) == 0)
        {
          v8 = v13 - 1;
          if (v11 >= v12)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v8 = v6;
      if (v11 >= v12)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v8 < v10)
      {
        goto LABEL_117;
      }

      if (v10 < v8)
      {
        v17 = v8 - 1;
        v18 = v10;
        do
        {
          if (v18 != v17)
          {
            v21 = *a3;
            if (!*a3)
            {
              goto LABEL_123;
            }

            v19 = *(v21 + v18);
            *(v21 + v18) = *(v21 + v17);
            *(v21 + v17) = v19;
          }
        }

        while (++v18 < v17--);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v8 < v6)
    {
      if (__OFSUB__(v8, v10))
      {
        goto LABEL_116;
      }

      if (v8 - v10 < v7)
      {
        if (__OFADD__(v10, v7))
        {
          goto LABEL_118;
        }

        if (v10 + v7 < v6)
        {
          v6 = v10 + v7;
        }

        if (v6 < v10)
        {
LABEL_119:
          __break(1u);
          goto LABEL_120;
        }

        if (v8 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v8 < v10)
    {
      goto LABEL_115;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = sub_100413EF4(0, *(v9 + 2) + 1, 1, v9);
    }

    v31 = *(v9 + 2);
    v30 = *(v9 + 3);
    v32 = v31 + 1;
    if (v31 >= v30 >> 1)
    {
      v9 = sub_100413EF4((v30 > 1), v31 + 1, 1, v9);
    }

    *(v9 + 2) = v32;
    v33 = &v9[16 * v31];
    *(v33 + 4) = v10;
    *(v33 + 5) = v8;
    v34 = *a1;
    if (!*a1)
    {
      goto LABEL_125;
    }

    if (v31)
    {
      while (1)
      {
        v35 = v32 - 1;
        if (v32 >= 4)
        {
          break;
        }

        if (v32 == 3)
        {
          v36 = *(v9 + 4);
          v37 = *(v9 + 5);
          v46 = __OFSUB__(v37, v36);
          v38 = v37 - v36;
          v39 = v46;
LABEL_57:
          if (v39)
          {
            goto LABEL_103;
          }

          v52 = &v9[16 * v32];
          v54 = *v52;
          v53 = *(v52 + 1);
          v55 = __OFSUB__(v53, v54);
          v56 = v53 - v54;
          v57 = v55;
          if (v55)
          {
            goto LABEL_106;
          }

          v58 = &v9[16 * v35 + 32];
          v60 = *v58;
          v59 = *(v58 + 1);
          v46 = __OFSUB__(v59, v60);
          v61 = v59 - v60;
          if (v46)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v56, v61))
          {
            goto LABEL_110;
          }

          if (v56 + v61 >= v38)
          {
            if (v38 < v61)
            {
              v35 = v32 - 2;
            }

            goto LABEL_78;
          }

          goto LABEL_71;
        }

        v62 = &v9[16 * v32];
        v64 = *v62;
        v63 = *(v62 + 1);
        v46 = __OFSUB__(v63, v64);
        v56 = v63 - v64;
        v57 = v46;
LABEL_71:
        if (v57)
        {
          goto LABEL_105;
        }

        v65 = &v9[16 * v35];
        v67 = *(v65 + 4);
        v66 = *(v65 + 5);
        v46 = __OFSUB__(v66, v67);
        v68 = v66 - v67;
        if (v46)
        {
          goto LABEL_108;
        }

        if (v68 < v56)
        {
          goto LABEL_3;
        }

LABEL_78:
        v73 = v35 - 1;
        if (v35 - 1 >= v32)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
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
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
          goto LABEL_119;
        }

        if (!*a3)
        {
          goto LABEL_122;
        }

        v74 = *&v9[16 * v73 + 32];
        v75 = *&v9[16 * v35 + 40];
        sub_1003B23BC((*a3 + v74), (*a3 + *&v9[16 * v35 + 32]), (*a3 + v75), v34);
        if (v4)
        {
          goto LABEL_97;
        }

        if (v75 < v74)
        {
          goto LABEL_99;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_1004461E0(v9);
        }

        if (v73 >= *(v9 + 2))
        {
          goto LABEL_100;
        }

        v76 = &v9[16 * v73];
        *(v76 + 4) = v74;
        *(v76 + 5) = v75;
        sub_100446154(v35);
        v32 = *(v9 + 2);
        if (v32 <= 1)
        {
          goto LABEL_3;
        }
      }

      v40 = &v9[16 * v32 + 32];
      v41 = *(v40 - 64);
      v42 = *(v40 - 56);
      v46 = __OFSUB__(v42, v41);
      v43 = v42 - v41;
      if (v46)
      {
        goto LABEL_101;
      }

      v45 = *(v40 - 48);
      v44 = *(v40 - 40);
      v46 = __OFSUB__(v44, v45);
      v38 = v44 - v45;
      v39 = v46;
      if (v46)
      {
        goto LABEL_102;
      }

      v47 = &v9[16 * v32];
      v49 = *v47;
      v48 = *(v47 + 1);
      v46 = __OFSUB__(v48, v49);
      v50 = v48 - v49;
      if (v46)
      {
        goto LABEL_104;
      }

      v46 = __OFADD__(v38, v50);
      v51 = v38 + v50;
      if (v46)
      {
        goto LABEL_107;
      }

      if (v51 >= v43)
      {
        v69 = &v9[16 * v35 + 32];
        v71 = *v69;
        v70 = *(v69 + 1);
        v46 = __OFSUB__(v70, v71);
        v72 = v70 - v71;
        if (v46)
        {
          goto LABEL_111;
        }

        if (v38 < v72)
        {
          v35 = v32 - 2;
        }

        goto LABEL_78;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    v7 = a4;
    if (v8 >= v6)
    {
      goto LABEL_88;
    }
  }

  v22 = *a3;
  v23 = (*a3 + v8);
  v24 = v10 - v8;
LABEL_30:
  v25 = *(v22 + v8);
  v26 = v24;
  v27 = v23;
  while (1)
  {
    v28 = *(v27 - 1);
    if (v25 >= v28)
    {
LABEL_29:
      ++v8;
      ++v23;
      --v24;
      if (v8 != v6)
      {
        goto LABEL_30;
      }

      v8 = v6;
      goto LABEL_37;
    }

    if (!v22)
    {
      break;
    }

    *v27 = v28;
    *--v27 = v25;
    if (__CFADD__(v26++, 1))
    {
      goto LABEL_29;
    }
  }

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
}

void sub_10041F618(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *v1;
  v4 = *(*v1 + 2);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= *(v3 + 3) >> 1)
  {
    if (*(a1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  v3 = sub_100413F08(isUniquelyReferenced_nonNull_native, v11, 1, v3);
  if (!*(a1 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 3) >> 1) - *(v3 + 2) < v2)
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
    return;
  }

  v8 = *(v3 + 2);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 2) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

void sub_10041F70C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *v1;
  v4 = *(*v1 + 2);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= *(v3 + 3) >> 1)
  {
    if (*(a1 + 16))
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

  v3 = sub_10041422C(isUniquelyReferenced_nonNull_native, v12, 1, v3);
  if (!*(a1 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 2);
  if ((*(v3 + 3) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy(&v3[16 * v8 + 32], (a1 + 32), 16 * v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v9 = *(v3 + 2);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 2) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

void sub_10041F7F8(uint64_t a1)
{
  v2 = *(a1 + 16);
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

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(a1 + 16))
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

  v3 = sub_10041403C(isUniquelyReferenced_nonNull_native, v12, 1, v3);
  if (!*(a1 + 16))
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
  sub_100004CB8(&qword_100647838, &qword_100535FC0);
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
    return;
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
}

void sub_10041F930(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_1004DED5C();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v1 >> 62))
  {
    v4 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v5 = __OFADD__(v4, v3);
    v6 = v4 + v3;
    if (!v5)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = sub_1004DED5C();
  v5 = __OFADD__(v13, v3);
  v6 = v13 + v3;
  if (v5)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_1001540D4(v6, 1);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_1004208FC(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v10 < 1)
  {
LABEL_9:
    *v1 = v7;
    return;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
}

void sub_10041FA20(uint64_t a1)
{
  v2 = *(a1 + 16);
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

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(a1 + 16))
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

  v3 = sub_10041448C(isUniquelyReferenced_nonNull_native, v12, 1, v3);
  if (!*(a1 + 16))
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
  sub_1004D7BBC();
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
    return;
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
}

char *String.components(wrappedToLineLength:bullet:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, void *a5)
{
  v74 = a1;
  v9 = sub_1004D7B3C();
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75._countAndFlagsBits = a4;
  v75._object = a5;
  sub_1004D7B2C();
  v64 = sub_10041D3F4();
  v13 = sub_1004DE81C();
  v14 = *(v10 + 8);
  v14(v12, v9);
  result = v13;
  v69 = *(v13 + 16);
  if (v69)
  {
    v16 = 0;
    v67 = a2;
    v68 = v13 + 32;
    v17 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v17 = a2 & 0xFFFFFFFFFFFFLL;
    }

    v62 = v17;
    v18 = _swiftEmptyArrayStorage;
    v65 = v13;
    v66 = a3;
    while (1)
    {
      if (v16 >= *(result + 2))
      {
LABEL_50:
        __break(1u);
LABEL_51:
        __break(1u);
        return result;
      }

      v19 = (v68 + 16 * v16);
      v20 = *v19;
      v21 = v19[1];
      v81 = v18;
      v22 = HIBYTE(v21) & 0xF;
      if ((v21 & 0x2000000000000000) == 0)
      {
        v22 = v20 & 0xFFFFFFFFFFFFLL;
      }

      if (v22)
      {
        v72 = v16;
        v23 = objc_allocWithZone(NSScanner);

        v71 = v21;
        v24 = v18;
        v25 = sub_1004DD3FC();
        v26 = [v23 initWithString:v25];

        v80._countAndFlagsBits = sub_1004201D4(v67, a3, &v81);
        v80._object = v27;
        sub_1004D7AEC();
        v28 = sub_1004DE76C();
        v30 = v29;
        v14(v12, v9);
        v70 = v24;
        v73 = v24;
        if (v30)
        {
          v73 = v70;
          while (1)
          {
            v31 = v80;
            v32 = sub_1004DD58C();
            result = sub_1004DD58C();
            v33 = &result[v32];
            if (__OFADD__(v32, result))
            {
              break;
            }

            v34 = __OFADD__(v33, 1);
            v35 = (v33 + 1);
            if (v34)
            {
              goto LABEL_49;
            }

            if (v35 > v74)
            {
              v75 = v31;
              v78 = 606827356;
              v79 = 0xE400000000000000;
              v76 = 0;
              v77 = 0xE000000000000000;
              v37 = sub_1004DE87C();
              v63 = v38;

              swift_beginAccess();
              if (swift_isUniquelyReferenced_nonNull_native())
              {
                v39 = v73;
              }

              else
              {
                v39 = sub_100413F08(0, *(v73 + 2) + 1, 1, v73);
              }

              v41 = *(v39 + 2);
              v40 = *(v39 + 3);
              if (v41 >= v40 >> 1)
              {
                v39 = sub_100413F08((v40 > 1), v41 + 1, 1, v39);
              }

              *(v39 + 2) = v41 + 1;
              v42 = &v39[16 * v41];
              v43 = v63;
              *(v42 + 4) = v37;
              *(v42 + 5) = v43;
              v73 = v39;
              v81 = v39;
              swift_endAccess();
              if (v62)
              {
                result = sub_1004DD58C();
                v44 = (result + 1);
                if (__OFADD__(result, 1))
                {
                  goto LABEL_51;
                }

                v83._countAndFlagsBits = 32;
                v83._object = 0xE100000000000000;
                v45 = sub_1004DD6AC(v83, v44);
                v47 = v46;
              }

              else
              {
                v45 = 0;
                v47 = 0xE000000000000000;
              }

              v75._countAndFlagsBits = v45;
              v75._object = v47;

              v84._countAndFlagsBits = v28;
              v84._object = v30;
              sub_1004DD5FC(v84);

              v85._countAndFlagsBits = 32;
              v85._object = 0xE100000000000000;
              sub_1004DD5FC(v85);

              v80 = v75;
            }

            else
            {
              v75._countAndFlagsBits = v28;
              v75._object = v30;

              v82._countAndFlagsBits = 32;
              v82._object = 0xE100000000000000;
              sub_1004DD5FC(v82);

              sub_1004DD5FC(v75);
            }

            sub_1004D7AEC();
            v28 = sub_1004DE76C();
            v30 = v36;
            v14(v12, v9);
            if (!v30)
            {
              goto LABEL_31;
            }
          }

          __break(1u);
LABEL_49:
          __break(1u);
          goto LABEL_50;
        }

LABEL_31:
        v48 = (v80._object >> 56) & 0xF;
        if ((v80._object & 0x2000000000000000) == 0)
        {
          v48 = v80._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
        }

        if (v48)
        {
          v75 = v80;
          v78 = 606827356;
          v79 = 0xE400000000000000;
          v76 = 0;
          v77 = 0xE000000000000000;
          v49 = sub_1004DE87C();
          v51 = v50;

          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v52 = v73;
          }

          else
          {
            v52 = sub_100413F08(0, *(v73 + 2) + 1, 1, v73);
          }

          v54 = *(v52 + 2);
          v53 = *(v52 + 3);
          if (v54 >= v53 >> 1)
          {
            v52 = sub_100413F08((v53 > 1), v54 + 1, 1, v52);
          }

          *(v52 + 2) = v54 + 1;
          v55 = &v52[16 * v54];
          *(v55 + 4) = v49;
          *(v55 + 5) = v51;
          a3 = v66;
          v18 = v52;
        }

        else
        {

          a3 = v66;
          v18 = v73;
        }
      }

      else
      {
        v56 = *(v18 + 2);
        if (!v56)
        {
          goto LABEL_8;
        }

        v71 = v21;
        v72 = v16;

        v57 = v18;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v57 = sub_100413F08(0, v56 + 1, 1, v18);
        }

        v59 = *(v57 + 2);
        v58 = *(v57 + 3);
        if (v59 >= v58 >> 1)
        {
          v57 = sub_100413F08((v58 > 1), v59 + 1, 1, v57);
        }

        *(v57 + 2) = v59 + 1;
        v60 = &v57[16 * v59];
        v61 = v71;
        *(v60 + 4) = v20;
        *(v60 + 5) = v61;
        v18 = v57;
      }

      result = v65;
      v16 = v72;
LABEL_8:
      if (++v16 == v69)
      {
        goto LABEL_47;
      }
    }
  }

  v18 = _swiftEmptyArrayStorage;
LABEL_47:

  return v18;
}

uint64_t sub_1004201D4(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v3 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v3)
  {
    return 0;
  }

  swift_beginAccess();
  if (*(*a3 + 16))
  {
    result = sub_1004DD58C();
    v7 = result + 1;
    if (__OFADD__(result, 1))
    {
      __break(1u);
    }

    else
    {
      v8._countAndFlagsBits = 32;
      v8._object = 0xE100000000000000;
      return sub_1004DD6AC(v8, v7);
    }
  }

  else
  {

    v9._countAndFlagsBits = 32;
    v9._object = 0xE100000000000000;
    sub_1004DD5FC(v9);
    return a1;
  }

  return result;
}

char *Array<A>.asciiBoxed()(uint64_t a1)
{
  v40 = *(a1 + 16);
  if (v40)
  {
    v41 = 0;
    v5 = 0;
    v38 = a1 + 32;
    while (1)
    {
      v2 = *(v38 + 8 * v5);
      v7 = v2[2];
      if (v7)
      {
        v4 = v2[4];
        v3 = v2[5];

        if (v7 != 1)
        {
          v8 = v2 + 5;
          v1 = 1;
          v37 = v5;
LABEL_10:
          v9 = &v8[2 * v1];
          while (1)
          {
            v10 = v2[2];
            if (v1 >= v10)
            {
              break;
            }

            v12 = *(v9 - 1);
            v11 = *v9;
            v13 = (v1 + 1);

            v14 = sub_1004DD58C();
            if (v14 < sub_1004DD58C())
            {

              v3 = v11;
              v4 = v12;
              v5 = v37;
              v15 = v7 - 1 == v1++;
              v8 = v2 + 5;
              if (v15)
              {
                goto LABEL_17;
              }

              goto LABEL_10;
            }

            v9 += 2;
            ++v1;
            if (v7 == v13)
            {
              v5 = v37;
              goto LABEL_17;
            }
          }

          __break(1u);
          goto LABEL_44;
        }

LABEL_17:
        v3 = sub_1004DD58C();
      }

      else
      {
        v3 = 0;
      }

      ++v5;
      v6 = v41;
      if (v3 > v41)
      {
        v6 = v3;
      }

      v41 = v6;
      if (v5 == v40)
      {
        goto LABEL_19;
      }
    }
  }

  v41 = 0;
LABEL_19:
  v10 = v41;
  v7 = (v41 + 2);
  if (__OFADD__(v41, 2))
  {
LABEL_44:
    __break(1u);
LABEL_45:
    v7 = sub_100413F08((v10 > 1), v1, 1, v7);
    goto LABEL_40;
  }

  sub_10041D3F4();
  v42 = sub_1004DE8AC();
  v45 = v16;

  v48._countAndFlagsBits = 11441634;
  v48._object = 0xA300000000000000;
  sub_1004DD5FC(v48);

  v35 = v42;
  v36 = v45;
  v43 = sub_1004DE8AC();
  v46 = v17;

  v49._countAndFlagsBits = 10786018;
  v49._object = 0xA300000000000000;
  sub_1004DD5FC(v49);

  if (!v40)
  {
    v7 = _swiftEmptyArrayStorage;
    goto LABEL_42;
  }

  v18 = 0;
  v34 = a1 + 32;
  v7 = _swiftEmptyArrayStorage;
  do
  {
    v19 = *(v34 + 8 * v18);
    if (v18)
    {
      v20 = v46;
    }

    else
    {
      v20 = v36;
    }

    if (v18)
    {
      v21 = v43;
    }

    else
    {
      v21 = v35;
    }

    v39 = v18;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = sub_100413F08(0, *(v7 + 2) + 1, 1, v7);
    }

    v23 = *(v7 + 2);
    v22 = *(v7 + 3);
    if (v23 >= v22 >> 1)
    {
      v7 = sub_100413F08((v22 > 1), v23 + 1, 1, v7);
    }

    *(v7 + 2) = v23 + 1;
    v24 = &v7[16 * v23];
    *(v24 + 4) = v21;
    *(v24 + 5) = v20;
    v25 = *(v19 + 16);
    if (v25)
    {
      v26 = v19 + 40;
      do
      {
        v50._countAndFlagsBits = sub_1004DE8AC();
        sub_1004DD5FC(v50);

        v51._countAndFlagsBits = 8557794;
        v51._object = 0xA300000000000000;
        sub_1004DD5FC(v51);

        v28 = *(v7 + 2);
        v27 = *(v7 + 3);
        if (v28 >= v27 >> 1)
        {
          v7 = sub_100413F08((v27 > 1), v28 + 1, 1, v7);
        }

        *(v7 + 2) = v28 + 1;
        v29 = &v7[16 * v28];
        *(v29 + 4) = 545428706;
        *(v29 + 5) = 0xA400000000000000;
        v26 += 16;
        --v25;
      }

      while (v25);
    }

    v18 = v39 + 1;
  }

  while (v39 + 1 != v40);
  v44 = sub_1004DE8AC();
  v47 = v30;

  v52._countAndFlagsBits = 11507170;
  v52._object = 0xA300000000000000;
  sub_1004DD5FC(v52);

  v2 = v44;
  v3 = v47;
  v4 = *(v7 + 2);
  v10 = *(v7 + 3);
  v1 = v4 + 1;
  if (v4 >= v10 >> 1)
  {
    goto LABEL_45;
  }

LABEL_40:
  *(v7 + 2) = v1;
  v31 = &v7[16 * v4];
  *(v31 + 4) = v2;
  *(v31 + 5) = v3;
LABEL_42:

  return v7;
}

{
  sub_100004CB8(&qword_100647A08, &qword_100536718);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100511DA0;
  *(inited + 32) = a1;

  v3 = Array<A>.asciiBoxed()(inited);
  swift_setDeallocating();
  sub_100420894(inited + 32);
  return v3;
}

void Array<A>.appendStringComponents(_:lineLength:bullet:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v5 = String.components(wrappedToLineLength:bullet:)(a3, a4, a5, a1, a2);

  sub_10041F618(v5);
}

uint64_t sub_100420894(uint64_t a1)
{
  v2 = sub_100004CB8(&qword_100647A10, &qword_100536880);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1004208FC(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1004DED5C();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1004DED5C();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_100420AC8();
          for (i = 0; i != v6; ++i)
          {
            sub_100004CB8(&qword_100647A18, &unk_100536720);
            v9 = sub_10026FB4C(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_100420A7C();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_100420A7C()
{
  result = qword_100648060;
  if (!qword_100648060)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100648060);
  }

  return result;
}

unint64_t sub_100420AC8()
{
  result = qword_100647A20;
  if (!qword_100647A20)
  {
    sub_100008DE4(&qword_100647A18, &unk_100536720);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100647A20);
  }

  return result;
}

id Optional<A>.isArtworkVisuallyIdentical(to:)(uint64_t a1, id a2)
{
  if (a2)
  {
    if (a1)
    {
      return [a2 isArtworkVisuallyIdenticalToCatalog:a1];
    }

    return 0;
  }

  return !a1;
}

uint64_t MPCPlaybackIntentOptions.debugDescription.getter(char a1)
{
  if ((a1 & 1) == 0)
  {
    v2 = _swiftEmptyArrayStorage;
    if ((a1 & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  v2 = sub_100413F08(0, 1, 1, _swiftEmptyArrayStorage);
  v4 = *(v2 + 2);
  v3 = *(v2 + 3);
  if (v4 >= v3 >> 1)
  {
    v2 = sub_100413F08((v3 > 1), v4 + 1, 1, v2);
  }

  *(v2 + 2) = v4 + 1;
  v5 = &v2[16 * v4];
  *(v5 + 4) = 0x656D6D4979616C70;
  *(v5 + 5) = 0xEF796C6574616964;
  if ((a1 & 2) != 0)
  {
LABEL_7:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_100413F08(0, *(v2 + 2) + 1, 1, v2);
    }

    v7 = *(v2 + 2);
    v6 = *(v2 + 3);
    if (v7 >= v6 >> 1)
    {
      v2 = sub_100413F08((v6 > 1), v7 + 1, 1, v2);
    }

    *(v2 + 2) = v7 + 1;
    v8 = &v2[16 * v7];
    *(v8 + 4) = 0x6575517465736572;
    *(v8 + 5) = 0xEA00000000006575;
  }

LABEL_12:
  if ((a1 & 4) != 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_100413F08(0, *(v2 + 2) + 1, 1, v2);
    }

    v10 = *(v2 + 2);
    v9 = *(v2 + 3);
    if (v10 >= v9 >> 1)
    {
      v2 = sub_100413F08((v9 > 1), v10 + 1, 1, v2);
    }

    *(v2 + 2) = v10 + 1;
    v11 = &v2[16 * v10];
    *(v11 + 4) = 0x4E70556F54646461;
    *(v11 + 5) = 0xEF64616548747865;
    if ((a1 & 8) == 0)
    {
LABEL_14:
      if ((a1 & 0x10) == 0)
      {
        goto LABEL_31;
      }

      goto LABEL_26;
    }
  }

  else if ((a1 & 8) == 0)
  {
    goto LABEL_14;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100413F08(0, *(v2 + 2) + 1, 1, v2);
  }

  v13 = *(v2 + 2);
  v12 = *(v2 + 3);
  if (v13 >= v12 >> 1)
  {
    v2 = sub_100413F08((v12 > 1), v13 + 1, 1, v2);
  }

  *(v2 + 2) = v13 + 1;
  v14 = &v2[16 * v13];
  *(v14 + 4) = 0x4E70556F54646461;
  *(v14 + 5) = 0xEF6C696154747865;
  if ((a1 & 0x10) != 0)
  {
LABEL_26:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_100413F08(0, *(v2 + 2) + 1, 1, v2);
    }

    v16 = *(v2 + 2);
    v15 = *(v2 + 3);
    if (v16 >= v15 >> 1)
    {
      v2 = sub_100413F08((v15 > 1), v16 + 1, 1, v2);
    }

    *(v2 + 2) = v16 + 1;
    v17 = &v2[16 * v16];
    *(v17 + 4) = 0x5074726174736572;
    *(v17 + 5) = 0xEF6B63616279616CLL;
  }

LABEL_31:
  sub_100004CB8(&qword_100647A10, &qword_100536880);
  sub_100421080();
  v18 = sub_1004DD30C();
  v20 = v19;

  v22._countAndFlagsBits = v18;
  v22._object = v20;
  sub_1004DD5FC(v22);

  v23._countAndFlagsBits = 93;
  v23._object = 0xE100000000000000;
  sub_1004DD5FC(v23);
  return 91;
}

__C::MPMediaLibraryFilteringOptions __swiftcall MPMediaLibraryFilteringOptions.init(_:)(NSNumber_optional a1)
{
  if (a1.value.super.super.isa)
  {
    isa = a1.value.super.super.isa;
    v2 = [(objc_class *)a1.value.super.super.isa unsignedIntegerValue];

    a1.value.super.super.isa = v2;
  }

  return a1.value.super.super.isa;
}

id static PropertySetCombinator.buildBlock(_:)(unint64_t a1)
{
  v2 = [objc_opt_self() emptyPropertySet];
  if (a1 >> 62)
  {
    goto LABEL_15;
  }

  v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (1)
  {
    v2 = v2;
    v4 = v2;
    v11 = v2;
    if (!v3)
    {
      break;
    }

    v5 = 0;
    v6 = v2;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v2 = sub_1004DEB2C();
      }

      else
      {
        if (v5 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v2 = *(a1 + 8 * v5 + 32);
      }

      v7 = v2;
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      v4 = [v6 propertySetByCombiningWithPropertySet:v2];

      ++v5;
      v6 = v4;
      if (v8 == v3)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    v10 = v2;
    v3 = sub_1004DED5C();
    v2 = v10;
  }

LABEL_12:

  return v4;
}

unint64_t sub_100421080()
{
  result = qword_100647A28;
  if (!qword_100647A28)
  {
    sub_100008DE4(&qword_100647A10, &qword_100536880);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100647A28);
  }

  return result;
}

uint64_t GenericMusicItem.innerMusicItem.getter@<X0>(uint64_t *a1@<X8>)
{
  v124 = a1;
  v72 = sub_1004D916C();
  v71 = *(v72 - 8);
  __chkstk_darwin();
  v70 = &v70 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_1004D911C();
  v74 = *(v75 - 8);
  __chkstk_darwin();
  v73 = &v70 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_1004D91EC();
  v77 = *(v78 - 8);
  __chkstk_darwin();
  v76 = &v70 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = sub_1004D924C();
  v80 = *(v81 - 8);
  __chkstk_darwin();
  v79 = &v70 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = sub_1004D92AC();
  v83 = *(v84 - 8);
  __chkstk_darwin();
  v82 = &v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = sub_1004DCD1C();
  v86 = *(v87 - 8);
  __chkstk_darwin();
  v85 = &v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = sub_1004DC95C();
  v89 = *(v90 - 8);
  __chkstk_darwin();
  v88 = &v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = sub_1004D90CC();
  v92 = *(v93 - 8);
  __chkstk_darwin();
  v91 = &v70 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = sub_1004DC7DC();
  v95 = *(v96 - 8);
  __chkstk_darwin();
  v94 = &v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = sub_1004DD08C();
  v98 = *(v99 - 8);
  __chkstk_darwin();
  v97 = &v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = sub_1004DD05C();
  v101 = *(v102 - 8);
  __chkstk_darwin();
  v100 = &v70 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1004DC2DC();
  v104 = *(v12 - 8);
  v105 = v12;
  __chkstk_darwin();
  v103 = &v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1004D8FEC();
  v107 = *(v14 - 8);
  v108 = v14;
  __chkstk_darwin();
  v106 = &v70 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1004DCA3C();
  v110 = *(v16 - 8);
  v111 = v16;
  __chkstk_darwin();
  v109 = &v70 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1004D908C();
  v113 = *(v18 - 8);
  v114 = v18;
  __chkstk_darwin();
  v112 = &v70 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1004DCCCC();
  v116 = *(v20 - 8);
  v117 = v20;
  __chkstk_darwin();
  v115 = &v70 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1004D905C();
  v119 = *(v22 - 8);
  v120 = v22;
  __chkstk_darwin();
  v118 = &v70 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1004D91FC();
  v121 = *(v24 - 8);
  v122 = v24;
  __chkstk_darwin();
  v26 = &v70 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_1004DCB3C();
  v28 = *(v27 - 8);
  __chkstk_darwin();
  v30 = &v70 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_1004DCA0C();
  v32 = *(v31 - 8);
  __chkstk_darwin();
  v34 = &v70 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_1004D8BFC();
  v36 = *(v35 - 8);
  v37 = __chkstk_darwin();
  v39 = &v70 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v36 + 16))(v39, v123, v35, v37);
  v40 = (*(v36 + 88))(v39, v35);
  if (v40 == enum case for GenericMusicItem.album(_:))
  {
    (*(v36 + 96))(v39, v35);
    v41 = *(v32 + 32);
    v41(v34, v39, v31);
    v42 = v124;
    v124[3] = v31;
    v42[4] = &protocol witness table for Album;
    v43 = sub_1000357EC(v42);
    return (v41)(v43, v34, v31);
  }

  v45 = v124;
  if (v40 == enum case for GenericMusicItem.artist(_:))
  {
    (*(v36 + 96))(v39, v35);
    v46 = *(v28 + 32);
    v46(v30, v39, v27);
    v45[3] = v27;
    v45[4] = &protocol witness table for Artist;
    v47 = sub_1000357EC(v45);
    return (v46)(v47, v30, v27);
  }

  if (v40 == enum case for GenericMusicItem.composer(_:))
  {
    (*(v36 + 96))(v39, v35);
    v48 = v122;
    v49 = *(v121 + 32);
    v49(v26, v39, v122);
    v45[3] = v48;
    v45[4] = sub_100423874(&qword_100647A78, &type metadata accessor for Composer, &protocol conformance descriptor for Composer);
    v50 = sub_1000357EC(v45);
    v51 = v26;
    return (v49)(v50, v51, v48);
  }

  if (v40 == enum case for GenericMusicItem.creditArtist(_:))
  {
    (*(v36 + 96))(v39, v35);
    v52 = v118;
    v49 = *(v119 + 32);
    v48 = v120;
    v49(v118, v39, v120);
    v45[3] = v48;
    v53 = &unk_100647A70;
    v54 = &type metadata accessor for CreditArtist;
    v55 = &protocol conformance descriptor for CreditArtist;
LABEL_9:
    v45[4] = sub_100423874(v53, v54, v55);
    v50 = sub_1000357EC(v45);
    v51 = v52;
    return (v49)(v50, v51, v48);
  }

  v56 = v124;
  if (v40 == enum case for GenericMusicItem.curator(_:))
  {
    (*(v36 + 96))(v39, v35);
    v57 = v115;
    v58 = *(v116 + 32);
    v59 = v117;
    v58(v115, v39, v117);
    v60 = &protocol witness table for Curator;
LABEL_13:
    v56[3] = v59;
    v56[4] = v60;
LABEL_17:
    v64 = sub_1000357EC(v56);
    return (v58)(v64, v57, v59);
  }

  if (v40 == enum case for GenericMusicItem.editorialItem(_:))
  {
    (*(v36 + 96))(v39, v35);
    v57 = v112;
    v58 = *(v113 + 32);
    v59 = v114;
    v58(v112, v39, v114);
    v56[3] = v59;
    v61 = &unk_100647A68;
    v62 = &type metadata accessor for EditorialItem;
    v63 = &protocol conformance descriptor for EditorialItem;
LABEL_16:
    v56[4] = sub_100423874(v61, v62, v63);
    goto LABEL_17;
  }

  if (v40 == enum case for GenericMusicItem.genre(_:))
  {
    (*(v36 + 96))(v39, v35);
    v57 = v109;
    v58 = *(v110 + 32);
    v59 = v111;
    v58(v109, v39, v111);
    v60 = &protocol witness table for Genre;
    goto LABEL_13;
  }

  if (v40 == enum case for GenericMusicItem.musicMovie(_:))
  {
    (*(v36 + 96))(v39, v35);
    v57 = v106;
    v58 = *(v107 + 32);
    v59 = v108;
    v58(v106, v39, v108);
    v56[3] = v59;
    v61 = &unk_100647A60;
    v62 = &type metadata accessor for MusicMovie;
    v63 = &protocol conformance descriptor for MusicMovie;
    goto LABEL_16;
  }

  if (v40 == enum case for GenericMusicItem.musicVideo(_:))
  {
    (*(v36 + 96))(v39, v35);
    v59 = v105;
    v58 = *(v104 + 32);
    v57 = v103;
    v58(v103, v39, v105);
    v60 = &protocol witness table for MusicVideo;
    goto LABEL_13;
  }

  if (v40 == enum case for GenericMusicItem.playlist(_:))
  {
    (*(v36 + 96))(v39, v35);
    v58 = *(v101 + 32);
    v57 = v100;
    v59 = v102;
    v58(v100, v39, v102);
    v60 = &protocol witness table for Playlist;
    goto LABEL_13;
  }

  if (v40 == enum case for GenericMusicItem.radioShow(_:))
  {
    (*(v36 + 96))(v39, v35);
    v58 = *(v98 + 32);
    v57 = v97;
    v59 = v99;
    v58(v97, v39, v99);
    v60 = &protocol witness table for RadioShow;
    goto LABEL_13;
  }

  if (v40 == enum case for GenericMusicItem.recordLabel(_:))
  {
    (*(v36 + 96))(v39, v35);
    v58 = *(v95 + 32);
    v57 = v94;
    v59 = v96;
    v58(v94, v39, v96);
    v60 = &protocol witness table for RecordLabel;
    goto LABEL_13;
  }

  if (v40 == enum case for GenericMusicItem.socialProfile(_:))
  {
    (*(v36 + 96))(v39, v35);
    v58 = *(v92 + 32);
    v57 = v91;
    v59 = v93;
    v58(v91, v39, v93);
    v56[3] = v59;
    v61 = &unk_100647A58;
    v62 = &type metadata accessor for SocialProfile;
    v63 = &protocol conformance descriptor for SocialProfile;
    goto LABEL_16;
  }

  if (v40 == enum case for GenericMusicItem.song(_:))
  {
    (*(v36 + 96))(v39, v35);
    v58 = *(v89 + 32);
    v57 = v88;
    v59 = v90;
    v58(v88, v39, v90);
    v60 = &protocol witness table for Song;
    goto LABEL_13;
  }

  if (v40 == enum case for GenericMusicItem.station(_:))
  {
    (*(v36 + 96))(v39, v35);
    v65 = *(v86 + 32);
    v66 = v85;
    v67 = v87;
    v65(v85, v39, v87);
    v45[3] = v67;
    v45[4] = &protocol witness table for Station;
    v68 = sub_1000357EC(v45);
    return (v65)(v68, v66, v67);
  }

  else
  {
    if (v40 == enum case for GenericMusicItem.tvEpisode(_:))
    {
      (*(v36 + 96))(v39, v35);
      v49 = *(v83 + 32);
      v52 = v82;
      v48 = v84;
      v49(v82, v39, v84);
      v45[3] = v48;
      v53 = &unk_100647A50;
      v54 = &type metadata accessor for TVEpisode;
      v55 = &protocol conformance descriptor for TVEpisode;
      goto LABEL_9;
    }

    if (v40 == enum case for GenericMusicItem.tvSeason(_:))
    {
      (*(v36 + 96))(v39, v35);
      v49 = *(v80 + 32);
      v52 = v79;
      v48 = v81;
      v49(v79, v39, v81);
      v45[3] = v48;
      v53 = &unk_100647A48;
      v54 = &type metadata accessor for TVSeason;
      v55 = &protocol conformance descriptor for TVSeason;
      goto LABEL_9;
    }

    if (v40 == enum case for GenericMusicItem.tvShow(_:))
    {
      (*(v36 + 96))(v39, v35);
      v49 = *(v77 + 32);
      v52 = v76;
      v48 = v78;
      v49(v76, v39, v78);
      v45[3] = v48;
      v53 = &unk_100647A40;
      v54 = &type metadata accessor for TVShow;
      v55 = &protocol conformance descriptor for TVShow;
      goto LABEL_9;
    }

    if (v40 == enum case for GenericMusicItem.uploadedAudio(_:))
    {
      (*(v36 + 96))(v39, v35);
      v49 = *(v74 + 32);
      v52 = v73;
      v48 = v75;
      v49(v73, v39, v75);
      v45[3] = v48;
      v53 = &unk_100647A38;
      v54 = &type metadata accessor for UploadedAudio;
      v55 = &protocol conformance descriptor for UploadedAudio;
      goto LABEL_9;
    }

    if (v40 == enum case for GenericMusicItem.uploadedVideo(_:))
    {
      (*(v36 + 96))(v39, v35);
      v49 = *(v71 + 32);
      v52 = v70;
      v48 = v72;
      v49(v70, v39, v72);
      v45[3] = v48;
      v53 = &unk_100647A30;
      v54 = &type metadata accessor for UploadedVideo;
      v55 = &protocol conformance descriptor for UploadedVideo;
      goto LABEL_9;
    }

    v69 = (v36 + 8);
    if (v40 == enum case for GenericMusicItem.other(_:))
    {
      result = (*v69)(v39, v35);
      v45[4] = 0;
      *v45 = 0u;
      *(v45 + 1) = 0u;
    }

    else
    {
      v124[4] = 0;
      *v45 = 0u;
      *(v45 + 1) = 0u;
      return (*v69)(v39, v35);
    }
  }

  return result;
}

uint64_t GenericMusicItem.catalogID.getter()
{
  v0 = sub_1004D91EC();
  v38 = *(v0 - 8);
  v39 = v0;
  __chkstk_darwin();
  v37 = &v37 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_1004D924C();
  v41 = *(v2 - 8);
  v42 = v2;
  __chkstk_darwin();
  v40 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1004D92AC();
  v44 = *(v4 - 8);
  v45 = v4;
  __chkstk_darwin();
  v43 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1004DC95C();
  v47 = *(v6 - 8);
  v48 = v6;
  __chkstk_darwin();
  v46 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1004DD05C();
  v50 = *(v8 - 8);
  v51 = v8;
  __chkstk_darwin();
  v49 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1004DC2DC();
  v53 = *(v10 - 8);
  v54 = v10;
  __chkstk_darwin();
  v52 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1004D8FEC();
  v55 = *(v12 - 8);
  v56 = v12;
  __chkstk_darwin();
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1004DCB3C();
  v16 = *(v15 - 8);
  __chkstk_darwin();
  v18 = &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1004DCA0C();
  v20 = *(v19 - 8);
  __chkstk_darwin();
  v22 = &v37 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1004D8BFC();
  v24 = *(v23 - 8);
  v25 = __chkstk_darwin();
  v27 = &v37 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v24 + 16))(v27, v57, v23, v25);
  v28 = (*(v24 + 88))(v27, v23);
  if (v28 != enum case for GenericMusicItem.album(_:))
  {
    if (v28 == enum case for GenericMusicItem.artist(_:))
    {
      (*(v24 + 96))(v27, v23);
      (*(v16 + 32))(v18, v27, v15);
      v29 = sub_1004DCB0C();
      (*(v16 + 8))(v18, v15);
      return v29;
    }

    if (v28 != enum case for GenericMusicItem.composer(_:) && v28 != enum case for GenericMusicItem.curator(_:) && v28 != enum case for GenericMusicItem.editorialItem(_:) && v28 != enum case for GenericMusicItem.genre(_:))
    {
      if (v28 == enum case for GenericMusicItem.musicMovie(_:))
      {
        (*(v24 + 96))(v27, v23);
        v31 = v55;
        v30 = v56;
        (*(v55 + 32))(v14, v27, v56);
        v29 = sub_1004D8FDC();
        (*(v31 + 8))(v14, v30);
        return v29;
      }

      if (v28 == enum case for GenericMusicItem.musicVideo(_:))
      {
        (*(v24 + 96))(v27, v23);
        v32 = v52;
        v33 = v53;
        v34 = v54;
        (*(v53 + 32))(v52, v27, v54);
        v35 = sub_1004DC28C();
LABEL_15:
        v29 = v35;
        (*(v33 + 8))(v32, v34);
        return v29;
      }

      if (v28 == enum case for GenericMusicItem.playlist(_:))
      {
        (*(v24 + 96))(v27, v23);
        v32 = v49;
        v33 = v50;
        v34 = v51;
        (*(v50 + 32))(v49, v27, v51);
        v35 = sub_1004DCF1C();
        goto LABEL_15;
      }

      if (v28 != enum case for GenericMusicItem.radioShow(_:) && v28 != enum case for GenericMusicItem.recordLabel(_:) && v28 != enum case for GenericMusicItem.socialProfile(_:))
      {
        if (v28 == enum case for GenericMusicItem.song(_:))
        {
          (*(v24 + 96))(v27, v23);
          v32 = v46;
          v33 = v47;
          v34 = v48;
          (*(v47 + 32))(v46, v27, v48);
          v35 = sub_1004DC88C();
          goto LABEL_15;
        }

        if (v28 != enum case for GenericMusicItem.station(_:))
        {
          if (v28 == enum case for GenericMusicItem.tvEpisode(_:))
          {
            (*(v24 + 96))(v27, v23);
            v32 = v43;
            v33 = v44;
            v34 = v45;
            (*(v44 + 32))(v43, v27, v45);
            v35 = sub_1004D929C();
            goto LABEL_15;
          }

          if (v28 == enum case for GenericMusicItem.tvSeason(_:))
          {
            (*(v24 + 96))(v27, v23);
            v32 = v40;
            v33 = v41;
            v34 = v42;
            (*(v41 + 32))(v40, v27, v42);
            v35 = sub_1004D923C();
            goto LABEL_15;
          }

          if (v28 == enum case for GenericMusicItem.tvShow(_:))
          {
            (*(v24 + 96))(v27, v23);
            v32 = v37;
            v33 = v38;
            v34 = v39;
            (*(v38 + 32))(v37, v27, v39);
            v35 = sub_1004D91DC();
            goto LABEL_15;
          }
        }
      }
    }

    (*(v24 + 8))(v27, v23);
    return 0;
  }

  (*(v24 + 96))(v27, v23);
  (*(v20 + 32))(v22, v27, v19);
  v29 = sub_1004DC9AC();
  (*(v20 + 8))(v22, v19);
  return v29;
}

uint64_t Playlist.Entry.InternalItem.musicItem.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = sub_1004DCF8C();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin();
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, v2, v4, v6);
  v9 = (*(v5 + 88))(v8, v4);
  if (v9 == enum case for Playlist.Entry.InternalItem.musicMovie(_:))
  {
    (*(v5 + 96))(v8, v4);
    v10 = sub_1004D8FEC();
    a1[3] = v10;
    v11 = &unk_100647A60;
    v12 = &type metadata accessor for MusicMovie;
    v13 = &protocol conformance descriptor for MusicMovie;
LABEL_3:
    v14 = sub_100423874(v11, v12, v13);
LABEL_8:
    a1[4] = v14;
    v15 = sub_1000357EC(a1);
    return (*(*(v10 - 8) + 32))(v15, v8, v10);
  }

  if (v9 == enum case for Playlist.Entry.InternalItem.musicVideo(_:))
  {
    (*(v5 + 96))(v8, v4);
    v10 = sub_1004DC2DC();
    a1[3] = v10;
    v14 = &protocol witness table for MusicVideo;
    goto LABEL_8;
  }

  if (v9 == enum case for Playlist.Entry.InternalItem.song(_:))
  {
    (*(v5 + 96))(v8, v4);
    v10 = sub_1004DC95C();
    a1[3] = v10;
    v14 = &protocol witness table for Song;
    goto LABEL_8;
  }

  if (v9 == enum case for Playlist.Entry.InternalItem.tvEpisode(_:))
  {
    (*(v5 + 96))(v8, v4);
    v10 = sub_1004D92AC();
    a1[3] = v10;
    v11 = &unk_100647A50;
    v12 = &type metadata accessor for TVEpisode;
    v13 = &protocol conformance descriptor for TVEpisode;
    goto LABEL_3;
  }

  if (v9 == enum case for Playlist.Entry.InternalItem.uploadedAudio(_:))
  {
    (*(v5 + 96))(v8, v4);
    v10 = sub_1004D911C();
    a1[3] = v10;
    v11 = &unk_100647A38;
    v12 = &type metadata accessor for UploadedAudio;
    v13 = &protocol conformance descriptor for UploadedAudio;
    goto LABEL_3;
  }

  if (v9 == enum case for Playlist.Entry.InternalItem.uploadedVideo(_:))
  {
    (*(v5 + 96))(v8, v4);
    v10 = sub_1004D916C();
    a1[3] = v10;
    v11 = &unk_100647A30;
    v12 = &type metadata accessor for UploadedVideo;
    v13 = &protocol conformance descriptor for UploadedVideo;
    goto LABEL_3;
  }

  v17 = 0;
  v18 = 0xE000000000000000;
  sub_1004DEAAC(42);

  v17 = 0xD000000000000028;
  v18 = 0x80000001004FA420;
  sub_100423874(&qword_100647A80, &type metadata accessor for Playlist.Entry.InternalItem, &protocol conformance descriptor for Playlist.Entry.InternalItem);
  v19._countAndFlagsBits = sub_1004DEFFC();
  sub_1004DD5FC(v19);

  result = sub_1004DECCC();
  __break(1u);
  return result;
}

uint64_t Artist.pinPlayabilityStatus(isOnline:explicitContentIsAllowed:)@<X0>(char a1@<W0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = sub_1004DCABC();
  if (v7)
  {
    v8 = 0;
  }

  else
  {
    v8 = v6;
  }

  v9 = sub_1004DCADC();
  if (v10)
  {
    v11 = 0;
  }

  else
  {
    v11 = v9;
  }

  v12 = sub_1004DCAEC();
  if (v13)
  {
    v14 = 0;
  }

  else
  {
    v14 = v12;
  }

  v15 = sub_1004DCAFC();
  if (v16)
  {
    if ((a1 & 1) == 0)
    {
      if ((a2 & 1) == 0)
      {
        if (v11 <= 0)
        {
          if (v14 <= 0)
          {
            goto LABEL_36;
          }

          goto LABEL_20;
        }

LABEL_27:
        v18 = &enum case for MusicPlayer.PlayabilityStatus.UnplayableReason.networkUnavailable(_:);
        goto LABEL_28;
      }

      goto LABEL_22;
    }
  }

  else if ((a1 & 1) == 0)
  {
    if (a2)
    {
LABEL_22:
      if (v14 <= 0)
      {
        goto LABEL_27;
      }

LABEL_23:
      v17 = &enum case for MusicPlayer.PlayabilityStatus.playable(_:);
      goto LABEL_30;
    }

    if (v11 >= 1 && !v15)
    {
      goto LABEL_27;
    }

    if (v14 < 1 || v15)
    {
      if (v15 <= 0)
      {
LABEL_36:
        v20 = sub_1004DC31C();
        v21 = *(*(v20 - 8) + 104);
        if (v8 < 1)
        {
          v28 = &enum case for MusicPlayer.PlayabilityStatus.UnplayableReason.unsupportedType(_:);
        }

        else
        {
          v28 = &enum case for MusicPlayer.PlayabilityStatus.UnplayableReason.explicitRestricted(_:);
        }

        v23 = *v28;
        v22 = a3;
        goto LABEL_29;
      }

      goto LABEL_23;
    }

LABEL_20:
    v18 = &enum case for MusicPlayer.PlayabilityStatus.UnplayableReason.explicitRestricted(_:);
LABEL_28:
    v19 = *v18;
    v20 = sub_1004DC31C();
    v21 = *(*(v20 - 8) + 104);
    v22 = a3;
    v23 = v19;
LABEL_29:
    v21(v22, v23, v20);
    v17 = &enum case for MusicPlayer.PlayabilityStatus.unplayable(_:);
    goto LABEL_30;
  }

  if (!v8)
  {
    v18 = &enum case for MusicPlayer.PlayabilityStatus.UnplayableReason.unsupportedType(_:);
    goto LABEL_28;
  }

  v17 = &enum case for MusicPlayer.PlayabilityStatus.playable(_:);
  if ((a2 & 1) == 0 && v11 <= 0)
  {
    goto LABEL_20;
  }

LABEL_30:
  v24 = *v17;
  v25 = sub_1004DC32C();
  v26 = *(*(v25 - 8) + 104);

  return v26(a3, v24, v25);
}

uint64_t MusicPin.Action.symbolName.getter()
{
  v1 = v0;
  v2 = sub_1004D8F7C();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin();
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v1, v2, v4);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == enum case for MusicPin.Action.navigate(_:))
  {
    return 0;
  }

  if (v7 == enum case for MusicPin.Action.play(_:))
  {
    return 0x6C69662E79616C70;
  }

  if (v7 != enum case for MusicPin.Action.shuffle(_:))
  {
    (*(v3 + 8))(v6, v2);
    return 0;
  }

  return 0x656C6666756873;
}

uint64_t sub_10042380C(uint64_t a1)
{
  v2 = sub_100004CB8(&qword_100647A88, &qword_100536798);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100423874(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1004238D4(uint64_t (*a1)(__n128))
{
  v39 = sub_1004D855C();
  v2 = *(v39 - 8);
  __chkstk_darwin();
  v4 = v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_1004D815C();
  v34 = *(v36 - 8);
  __chkstk_darwin();
  v33 = v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1004D817C();
  v37 = *(v6 - 8);
  v38 = v6;
  __chkstk_darwin();
  v32 = v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v35 = v31 - v8;
  sub_100004CB8(&qword_1006478C8, &qword_1005361A0);
  __chkstk_darwin();
  v10 = v31 - v9;
  sub_100004CB8(&qword_1006478D0, &qword_1005361A8);
  __chkstk_darwin();
  v12 = v31 - v11;
  v13 = sub_1004D7D4C();
  v14 = *(v13 - 8);
  __chkstk_darwin();
  v16 = v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100004CB8(&qword_100647A88, &qword_100536798);
  v17 = __chkstk_darwin();
  v19 = v31 - v18;
  a1(v17);
  if (v20)
  {
    v21 = sub_1004D826C();
    (*(*(v21 - 8) + 56))(v19, 1, 1, v21);
LABEL_6:
    sub_10042380C(v19);
    return 0;
  }

  v31[1] = v4;
  if (qword_100646D38 != -1)
  {
    swift_once();
  }

  v22 = sub_1004D84CC();
  sub_100035430(v22, static Calendar.musicDefaultCalendar);
  (*(*(v22 - 8) + 56))(v12, 1, 1, v22);
  (*(v2 + 56))(v10, 1, 1, v39);
  sub_1004D7D3C();
  sub_1004D847C();
  (*(v14 + 8))(v16, v13);
  v23 = sub_1004D826C();
  v24 = *(v23 - 8);
  if ((*(v24 + 48))(v19, 1, v23) == 1)
  {
    goto LABEL_6;
  }

  v26 = v32;
  sub_1004D7EAC();
  v27 = v33;
  sub_1004D814C();
  v28 = v35;
  sub_1004D813C();
  (*(v34 + 8))(v27, v36);
  v29 = v38;
  v30 = *(v37 + 8);
  v30(v26, v38);
  sub_1004D849C();
  sub_1004D816C();
  sub_100423874(&qword_100647A90, &type metadata accessor for Date.FormatStyle, &protocol conformance descriptor for Date.FormatStyle);
  sub_1004D824C();
  v30(v28, v29);
  (*(v24 + 8))(v19, v23);
  return v40;
}

uint64_t sub_100423F3C(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = sub_100028EF8(a1);
  if (v4)
  {
    return *(*(a2 + 56) + 8 * v3);
  }

  else
  {
    return 0;
  }
}

void sub_100423FCC(NSObject *a1@<X0>, uint64_t a2@<X1>, NSObject *a3@<X2>, uint64_t a4@<X3>, void (**a5)(uint64_t, uint64_t *, NSObject *, __n128)@<X4>, int a6@<W5>, unint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15)
{
  LODWORD(v735) = a6;
  v723 = a5;
  v725 = a4;
  v716 = a3;
  v720 = a2;
  v19 = a14;
  v718 = a13;
  v714 = a11;
  v713 = a10;
  v703 = sub_100004CB8(&qword_100647838, &qword_100535FC0);
  v702 = *(v703 - 8);
  __chkstk_darwin();
  v701 = v630 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v704 = v630 - v21;
  swift_getAssociatedTypeWitness();
  v715 = a15;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v731 = sub_1004DEDEC();
  *&v666 = v731[-1];
  __chkstk_darwin();
  v740 = (v630 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v730 = (v630 - v25);
  v26 = sub_1004DEDFC();
  WitnessTable = swift_getWitnessTable();
  v695 = sub_1004DEC7C();
  *&v665 = *(v695 - 8);
  __chkstk_darwin();
  v738 = v630 - v27;
  v685 = *(v26 - 8);
  __chkstk_darwin();
  v699 = v630 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v680 = v630 - v29;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v682 = sub_1004DE7CC();
  v664 = *(v682 - 8);
  __chkstk_darwin();
  v692 = (v630 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v732 = (v630 - v31);
  v736 = v26;
  sub_1004DE7CC();
  __chkstk_darwin();
  v687 = v630 - v32;
  v675 = sub_100004CB8(&qword_100647C68, &qword_100536870);
  __chkstk_darwin();
  v743 = (v630 - v33);
  v739 = AssociatedTypeWitness;
  v676 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin();
  *&v726 = v630 - v34;
  v35 = a1;
  v686 = swift_checkMetadataState();
  v667 = *(v686 - 8);
  __chkstk_darwin();
  v672 = v630 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v684 = v630 - v37;
  v673 = *(a14 - 1);
  __chkstk_darwin();
  v660 = v630 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v662 = v630 - v39;
  __chkstk_darwin();
  v661 = v630 - v40;
  __chkstk_darwin();
  v671 = v630 - v41;
  __chkstk_darwin();
  v679 = v630 - v42;
  __chkstk_darwin();
  v694 = v630 - v43;
  __chkstk_darwin();
  v724 = (v630 - v44);
  __chkstk_darwin();
  v742 = (v630 - v45);
  v744 = sub_1004D85FC();
  v727 = *(v744 - 8);
  __chkstk_darwin();
  v683 = v630 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v677 = v630 - v47;
  __chkstk_darwin();
  v670 = v630 - v48;
  __chkstk_darwin();
  v669 = v630 - v49;
  __chkstk_darwin();
  v668 = v630 - v50;
  __chkstk_darwin();
  v681 = v630 - v51;
  __chkstk_darwin();
  v663 = v630 - v52;
  __chkstk_darwin();
  v712 = v630 - v53;
  __chkstk_darwin();
  v700 = v630 - v54;
  __chkstk_darwin();
  v56 = v630 - v55;
  __chkstk_darwin();
  v689 = v630 - v57;
  __chkstk_darwin();
  v709 = v630 - v58;
  __chkstk_darwin();
  *&v707 = v630 - v59;
  __chkstk_darwin();
  v708 = (v630 - v60);
  __chkstk_darwin();
  v688 = v630 - v61;
  __chkstk_darwin();
  v698 = v630 - v62;
  __chkstk_darwin();
  v697 = v630 - v63;
  __chkstk_darwin();
  v690 = v630 - v64;
  __chkstk_darwin();
  v710 = v630 - v65;
  __chkstk_darwin();
  v711 = v630 - v66;
  __chkstk_darwin();
  v733 = v630 - v67;
  __chkstk_darwin();
  v741 = v630 - v68;
  __chkstk_darwin();
  *&v728 = v630 - v69;
  v705 = sub_100004CB8(&qword_100647C70, &qword_100536878);
  v674 = *(v705 - 8);
  __chkstk_darwin();
  v678 = v630 - v70;
  *a9 = 0;
  v71 = type metadata accessor for AIDiffingUpdate(0);
  v72 = v71[6];
  _s14MusicUtilities15AIDiffingUpdateV18deletedSectionsSet10Foundation05IndexG0Vvpfi_0();
  v722 = v71[7];
  _s14MusicUtilities15AIDiffingUpdateV18deletedSectionsSet10Foundation05IndexG0Vvpfi_0();
  v73 = v71[8];
  *(a9 + v73) = _swiftEmptyArrayStorage;
  v74 = (a9 + v71[9]);
  *v74 = 0;
  v74[1] = _swiftEmptyArrayStorage;
  v706 = v74;
  v75 = (a9 + v71[10]);
  *v75 = 0;
  v75[1] = _swiftEmptyArrayStorage;
  v717 = v75;
  v76 = (a9 + v71[11]);
  *v76 = 0;
  v76[1] = _swiftEmptyArrayStorage;
  v719 = v71[12];
  *(a9 + v719) = _swiftEmptyArrayStorage;
  *(a9 + 8) = a7;
  *(a9 + 16) = a8;
  v737 = a9;
  if (!v35)
  {
    sub_10000DE64(a7, a8);
    sub_10000DE74(a12, v718);
    sub_10000DE74(v713, v714);
    sub_10000DE74(a7, a8);

LABEL_14:

    *v737 = 1;
    return;
  }

  v696 = a12;
  if (!v720)
  {
    sub_10000DE64(a7, a8);
    sub_10000DE74(v696, v718);
    sub_10000DE74(v713, v714);
    sub_10000DE74(a7, a8);
LABEL_13:

    goto LABEL_14;
  }

  v659 = v73;
  v656 = AssociatedConformanceWitness;
  sub_10000DE64(a7, a8);

  v77 = sub_1004DD91C();
  v78 = v35;
  v79 = v718;
  v80 = v696;
  if (v77 <= 0 || (v643 = v77, v691 = v78, v81 = sub_1004DD91C(), v81 < 1))
  {

    sub_10000DE74(v80, v79);
    sub_10000DE74(v713, v714);
    sub_10000DE74(a7, a8);

    goto LABEL_13;
  }

  TupleTypeMetadata3 = v81;
  v647 = v72;
  v652 = v56;
  if (qword_100646D68 != -1)
  {
    goto LABEL_370;
  }

  while (1)
  {
    v83 = sub_1004D966C();
    v84 = sub_100035430(v83, qword_100647A98);

    v729 = v84;
    v85 = sub_1004D964C();
    v86 = sub_1004DDF9C();

    v87 = os_log_type_enabled(v85, v86);
    v721 = v19;
    v658 = TupleTypeMetadata3;
    if (v87)
    {
      v88 = swift_slowAlloc();
      v748 = swift_slowAlloc();
      *v88 = 136315394;
      v89 = sub_1004DF34C();
      v91 = sub_10042E62C(v89, v90, &v748);

      *(v88 + 4) = v91;
      *(v88 + 12) = 2080;
      v92 = sub_1004DD88C();
      v94 = sub_10042E62C(v92, v93, &v748);

      *(v88 + 14) = v94;
      v19 = v721;
      _os_log_impl(&_mh_execute_header, v85, v86, "Building update for section with item type %s, visible index paths: %s", v88, 0x16u);
      swift_arrayDestroy();
    }

    v646 = a8;
    v95 = v713;
    v642 = a7;
    if (v713)
    {
      v96 = swift_allocObject();
      v97 = v715;
      v96[2] = v19;
      v96[3] = v97;
      v98 = v714;
      v96[4] = v95;
      v96[5] = v98;
      v99 = sub_100434730;
    }

    else
    {
      v96 = swift_allocObject();
      v97 = v715;
      v96[2] = v19;
      v96[3] = v97;
      v99 = sub_1004344E4;
      v98 = v714;
    }

    v100 = swift_allocObject();
    v100[2] = v19;
    v100[3] = v97;
    v100[4] = v99;
    v100[5] = v96;
    v650 = v100;
    sub_10000DE64(v95, v98);
    v756 = sub_100404ED4(_swiftEmptyArrayStorage);
    v755 = &_swiftEmptySetSingleton;
    v748 = v691;
    __chkstk_darwin();
    v630[-4] = v19;
    v630[-3] = v97;
    v630[-2] = &v755;
    v101 = sub_1004DD98C();
    v102 = swift_getWitnessTable();
    sub_10041716C(sub_10043455C, &v630[-6], v101, &type metadata for String, &type metadata for Never, v102, &protocol witness table for Never, v103);
    v649 = v104;
    v746[0] = v720;
    swift_getWitnessTable();
    sub_1004DD72C();
    v746[0] = v748;
    __chkstk_darwin();
    v630[-4] = v105;
    v630[-3] = v97;
    v630[-2] = &v756;
    __chkstk_darwin();
    v630[-4] = v106;
    v630[-3] = v97;
    v630[-2] = sub_100434580;
    v630[-1] = v107;
    v108 = sub_1004DED4C();
    v754[1] = v102;
    v109 = swift_getWitnessTable();
    sub_10041716C(sub_10043458C, &v630[-6], v108, &type metadata for String, &type metadata for Never, v109, &protocol witness table for Never, v110);
    v112 = v111;
    v113 = v649;

    v114 = v755;
    if (v755[2] != *(v113 + 16))
    {

      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();

      v170 = sub_1004D964C();
      v171 = sub_1004DDF8C();

      if (os_log_type_enabled(v170, v171))
      {
        v172 = swift_slowAlloc();
        v173 = swift_slowAlloc();
        v748 = v173;
        *v172 = 136446210;
        v174 = sub_1004DD88C();
        v176 = v175;

        v177 = sub_10042E62C(v174, v176, &v748);

        *(v172 + 4) = v177;
        v178 = "Found duplicate sections in old items, falling back to reload data. Sections: %{public}s";
LABEL_66:
        _os_log_impl(&_mh_execute_header, v170, v171, v178, v172, 0xCu);
        sub_100008D24(v173);

        sub_10000DE74(v696, v718);
        sub_10000DE74(v713, v714);
        sub_10000DE74(v642, v646);
LABEL_68:

        *v737 = 1;
        goto LABEL_69;
      }

LABEL_67:

      sub_10000DE74(v696, v718);
      sub_10000DE74(v713, v714);
      sub_10000DE74(v642, v646);

      goto LABEL_68;
    }

    if (v112[2] != v658)
    {

      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();

      v170 = sub_1004D964C();
      v171 = sub_1004DDF8C();

      if (os_log_type_enabled(v170, v171))
      {
        v172 = swift_slowAlloc();
        v173 = swift_slowAlloc();
        v748 = v173;
        *v172 = 136446210;
        v179 = sub_1004DD88C();
        v181 = v180;

        v182 = sub_10042E62C(v179, v181, &v748);

        *(v172 + 4) = v182;
        v178 = "Found duplicate sections in new items, falling back to reload data. Sections: %{public}s";
        goto LABEL_66;
      }

      goto LABEL_67;
    }

    v632 = v112;
    v748 = v112;
    v746[0] = v113;
    sub_100004CB8(&qword_100647A10, &qword_100536880);
    sub_100042B08(&qword_100647A28, &qword_100647A10, &qword_100536880, &protocol conformance descriptor for [A]);
    sub_1004DD2FC();
    v634 = sub_100404FD0(_swiftEmptyArrayStorage);
    v754[0] = v634;
    v753 = &_swiftEmptySetSingleton;
    v19 = v721;
    v637 = swift_getAssociatedConformanceWitness();
    v115 = sub_1004D93EC();
    swift_getTupleTypeMetadata2();
    v116 = sub_1004DD8DC();
    v117 = sub_10041D108(v116, &type metadata for Int, v115, &protocol witness table for Int);
    v118 = v115;

    v657 = v117;
    v752 = v117;
    v119 = sub_1004DD8DC();
    v120 = sub_10041D108(v119, &type metadata for Int, v115, &protocol witness table for Int);

    v751 = v120;
    v748 = v716;

    sub_100430BD8(&v748);
    v630[1] = 0;
    v633 = v114;
    a8 = v748;
    v121 = v748[2];
    v122 = v728;
    v655 = v118;
    v654 = v121;
    if (v121)
    {
      a7 = 0;
      *&v653 = v748 + ((*(v727 + 80) + 32) & ~*(v727 + 80));
      v658 = (v727 + 16);
      v123 = (v727 + 8);
      v644 = v715 + 40;
      v636 = (v676 + 16);
      v641 = v667 + 8;
      v635 = (v676 + 8);
      v638 = (v715 + 32);
      v639 = (v673 + 8);
      TupleTypeMetadata3 = v736;
      v640 = (v727 + 8);
      v648 = v748;
      while (1)
      {
        if (a7 >= *(a8 + 16))
        {
          goto LABEL_360;
        }

        v124 = *(v727 + 16);
        v124(v122, v653 + *(v727 + 72) * a7, v744);
        if (sub_1004D85DC() < v725)
        {
          (*v123)(v122, v744);
        }

        else
        {
          a8 = v739;
          if ((v735 & 1) != 0 || sub_1004D85DC() <= v723)
          {
            v125 = v733;
            v126 = v744;
            v124(v733, v122, v744);
            v127 = v741;
            v128 = v125;
            v118 = v655;
            sub_10042EBD4(v741, v128);
            v651 = *v123;
            (v651)(v127, v126);
            v746[0] = sub_1004D85DC();
            TupleTypeMetadata3 = &type metadata for Int;
            v19 = &protocol witness table for Int;
            sub_1004DD27C();
            if (v749)
            {
              sub_100322E20(v748, v749);
            }

            else
            {
              v129 = sub_1004D85DC();
              sub_1004DD8DC();
              v748 = sub_1004D93BC();
              v749 = v130;
              v746[0] = v129;
              sub_1004DD25C();
              sub_1004DD28C();
              v131 = sub_1004D85DC();
              v132 = sub_1004D85CC();
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v748 = v754[0];
              v134 = v132;
              TupleTypeMetadata3 = &type metadata for Int;
              sub_10043062C(v134, v131, isUniquelyReferenced_nonNull_native);
              v634 = v748;
              v754[0] = v748;
            }

            v746[0] = sub_1004D85DC();
            sub_1004DD27C();
            if (v749)
            {
              sub_100322E20(v748, v749);
            }

            else
            {
              v135 = sub_1004D85DC();
              sub_1004DD8DC();
              v748 = sub_1004D93BC();
              v749 = v136;
              v746[0] = v135;
              sub_1004DD25C();
              sub_1004DD28C();
            }

            if (__OFSUB__(sub_1004D85DC(), v725))
            {
              goto LABEL_368;
            }

            sub_1004DD99C();
            v746[0] = sub_1004D85DC();
            sub_1004DD27C();
            v137 = v749;
            if (v749)
            {
              v645 = sub_1004DEBFC();
            }

            else
            {
              v645 = 0;
            }

            v750 = sub_1004D85DC();
            sub_1004DD25C();
            v138 = sub_1004DD26C();
            if (*(v139 + 8))
            {
              v140 = v684;
              (*(v715 + 40))(v721);
              v747 = sub_1004D85CC();
              v141 = v686;
              v142 = sub_1004DDE1C();
              v143 = v726;
              (*v636)(v726);
              v142(v746, 0);
              v144 = v140;
              v118 = v655;
              v145 = v141;
              v146 = v739;
              (*v641)(v144, v145);
              sub_1004D93DC();
              v147 = v143;
              v122 = v728;
              (*v635)(v147, v146);
            }

            v138(&v748, 0);
            v746[0] = sub_1004D85DC();
            v657 = v752;
            sub_1004DD27C();
            if (v749)
            {
              v148 = sub_1004DEBFC();

              v19 = v721;
              if (v137 && v645 == v148)
              {
LABEL_344:

                swift_bridgeObjectRelease_n();

                swift_bridgeObjectRelease_n();

                v610 = sub_1004D964C();
                v611 = sub_1004DDF8C();
                if (os_log_type_enabled(v610, v611))
                {
                  v612 = swift_slowAlloc();
                  *v612 = 0;
                  _os_log_impl(&_mh_execute_header, v610, v611, "Found duplicate in old visible items, falling back to reload data.", v612, 2u);
                }

                sub_10000DE74(v696, v718);

                sub_10000DE74(v713, v714);
                sub_10000DE74(v642, v646);
                (*v639)(v742, v19);
                (v651)(v122, v744);
                (*(v674 + 8))(v678, v705);
                *v737 = 1;

LABEL_352:

LABEL_69:

                return;
              }
            }

            else
            {
              v19 = v721;
              if (!v137)
              {
                goto LABEL_344;
              }
            }

            v149 = (*(v715 + 32))(v19);
            if (*(v756 + 16) && (sub_10041CA54(v149, v150), (v151 & 1) != 0))
            {

              sub_1004DD99C();
              v152 = sub_1004D85CC();
              v153 = *(v715 + 40);
              v154 = v684;
              v153(v19);
              v155 = v686;
              v156 = sub_1004DDD0C();
              v157 = *v641;
              v158 = v154;
              v118 = v655;
              (*v641)(v158, v155);
              v159 = v152 < v156;
              v160 = v122;
              if (v159)
              {
                v746[0] = sub_1004D85DC();
                sub_1004DD27C();
                v645 = v749;
                if (v749)
                {
                  v631 = sub_1004DEBFC();
                }

                else
                {
                  v631 = 0;
                }

                v750 = sub_1004D85DC();
                v161 = sub_1004DD26C();
                if (*(v162 + 8))
                {
                  v163 = v684;
                  v630[0] = v161;
                  (v153)(v721, v715);
                  v747 = sub_1004D85CC();
                  v164 = v686;
                  v165 = sub_1004DDE1C();
                  v166 = v726;
                  v167 = v739;
                  (*v636)(v726);
                  v165(v746, 0);
                  v157(v163, v164);
                  v118 = v655;
                  sub_1004D93DC();
                  (*v635)(v166, v167);
                  (v630[0])(&v748, 0);
                }

                else
                {
                  v161(&v748, 0);
                  v118 = v655;
                }

                v746[0] = sub_1004D85DC();
                sub_1004DD27C();
                if (v749)
                {
                  v168 = sub_1004DEBFC();

                  v160 = v728;
                  if (v645 && v631 == v168)
                  {
LABEL_353:

                    swift_bridgeObjectRelease_n();

                    swift_bridgeObjectRelease_n();

                    v625 = sub_1004D964C();
                    v626 = sub_1004DDF8C();
                    if (os_log_type_enabled(v625, v626))
                    {
                      v627 = swift_slowAlloc();
                      *v627 = 0;
                      _os_log_impl(&_mh_execute_header, v625, v626, "Found duplicate in new visible items, falling back to reload data.", v627, 2u);
                    }

                    sub_10000DE74(v696, v718);

                    sub_10000DE74(v713, v714);
                    sub_10000DE74(v642, v646);
                    v628 = *v639;
                    v629 = v721;
                    (*v639)(v724, v721);
                    v628(v742, v629);
                    (v651)(v728, v744);
                    (*(v674 + 8))(v678, v705);

                    *v737 = 1;

                    return;
                  }
                }

                else
                {
                  v160 = v728;
                  if (!v645)
                  {
                    goto LABEL_353;
                  }
                }
              }

              v169 = *v639;
              v19 = v721;
              (*v639)(v724, v721);
              v169(v742, v19);
              v123 = v640;
              (v651)(v160, v744);
              TupleTypeMetadata3 = v736;
              v122 = v160;
            }

            else
            {

              (*v639)(v742, v19);
              v123 = v640;
              (v651)(v122, v744);
              TupleTypeMetadata3 = v736;
            }
          }

          else
          {
            (*v123)(v122, v744);
          }

          a8 = v648;
        }

        if (v654 == ++a7)
        {
          goto LABEL_71;
        }
      }
    }

    TupleTypeMetadata3 = v736;
LABEL_71:

    swift_getTupleTypeMetadata2();
    v183 = sub_1004DD8DC();
    v184 = sub_10041D108(v183, &type metadata for Int, TupleTypeMetadata3, &protocol witness table for Int);

    a7 = v657 + 64;
    v185 = *(v657 + 64);
    v750 = v184;
    v186 = 1 << *(v657 + 32);
    v187 = -1;
    if (v186 < 64)
    {
      v187 = ~(-1 << v186);
    }

    a8 = v187 & v185;
    v188 = (v186 + 63) >> 6;
    v724 = (v685 + 56);

    v189 = 0;
    while (1)
    {
      v190 = v705;
      if (!a8)
      {
        break;
      }

      v191 = v118;
      TupleTypeMetadata3 = v189;
LABEL_81:
      v192 = __clz(__rbit64(a8)) | (TupleTypeMetadata3 << 6);
      v193 = *(*(v657 + 48) + 8 * v192);
      a8 &= a8 - 1;
      v194 = (*(v657 + 56) + 16 * v192);
      v195 = *v194;
      v196 = v194[1];
      v742 = v193;
      v746[0] = v193;
      v197 = v195;

      v198 = v191;
      sub_1004DD27C();
      v199 = v749;
      if (v749)
      {
        *&v726 = v630;
        *&v728 = v748;
        v735 = v197;
        v746[0] = v197;
        v746[1] = v196;
        v733 = v196;
        __chkstk_darwin();
        v200 = v715;
        v630[-12] = v721;
        v630[-11] = v200;
        v201 = v650;
        v630[-10] = sub_100434524;
        v630[-9] = v201;
        v202 = v718;
        v630[-8] = v696;
        v630[-7] = v202;
        v630[-6] = v203;
        v630[-5] = v199;
        v630[-4] = v754;
        v204 = v742;
        v205 = v737;
        v630[-3] = v742;
        v630[-2] = v205;
        swift_getWitnessTable();
        v206 = v687;
        v118 = v655;
        sub_1004DD2EC();
        (*v724)(v206, 0, 1, v736);
        v748 = v204;
        sub_1004DD25C();
        sub_1004DD28C();

        v19 = v721;

        v189 = TupleTypeMetadata3;
      }

      else
      {

        v189 = TupleTypeMetadata3;
        v19 = v721;
        v118 = v198;
      }
    }

    while (1)
    {
      TupleTypeMetadata3 = v189 + 1;
      if (__OFADD__(v189, 1))
      {
        goto LABEL_359;
      }

      if (TupleTypeMetadata3 >= v188)
      {
        break;
      }

      a8 = *(a7 + 8 * TupleTypeMetadata3);
      ++v189;
      if (a8)
      {
        v191 = v118;
        goto LABEL_81;
      }
    }

    v207 = v743;
    (*(v674 + 16))(v743, v678, v190);
    v208 = *(v675 + 36);
    v209 = sub_100042B08(&qword_100647C78, &qword_100647C70, &qword_100536878, &protocol conformance descriptor for CollectionDifference<A>);
    sub_1004DDCFC();
    sub_1004DDD3C();
    if (*(v207 + v208) != v748)
    {
      *&v210 = 134349056;
      v728 = v210;
      *&v210 = 134349312;
      v726 = v210;
      v733 = v208;
      do
      {
        a7 = v19;
        v19 = v209;
        v390 = sub_1004DDE1C();
        v392 = *v391;
        v393 = *(v391 + 16);
        v394 = *(v391 + 24);
        TupleTypeMetadata3 = *(v391 + 32);
        v395 = *(v391 + 33);
        v396 = *v391;
        v735 = *(v391 + 8);
        v742 = v393;
        v397 = MPCPlaybackEngine.Configuration.options.getter(v396, v735, v393);
        v390(&v748, 0, v397);
        v209 = v19;
        sub_1004DDD4C();
        a8 = v392 + v725;
        v398 = __OFADD__(v392, v725);
        if (v395)
        {
          if (v398)
          {
            goto LABEL_365;
          }

          if ((TupleTypeMetadata3 & 1) == 0)
          {
            v404 = v392 + v725;
            v405 = v394 + v725;
            if (__OFADD__(v394, v725))
            {
              goto LABEL_372;
            }

            v406 = sub_1004D964C();
            v407 = sub_1004DDF9C();
            if (os_log_type_enabled(v406, v407))
            {
              v408 = swift_slowAlloc();
              *v408 = v726;
              *(v408 + 4) = v404;
              *(v408 + 12) = 2050;
              *(v408 + 14) = v405;
              _os_log_impl(&_mh_execute_header, v406, v407, "[Remove] Moving section from %{public}ld to %{public}ld", v408, 0x16u);
            }

            v409 = *&v737[v659];
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v409 = sub_10041422C(0, *(v409 + 2) + 1, 1, v409);
            }

            v411 = *(v409 + 2);
            v410 = *(v409 + 3);
            if (v411 >= v410 >> 1)
            {
              v409 = sub_10041422C((v410 > 1), v411 + 1, 1, v409);
            }

            sub_100434650();
            *(v409 + 2) = v411 + 1;
            v412 = &v409[16 * v411];
            *(v412 + 4) = v404;
            *(v412 + 5) = v405;
LABEL_226:
            *&v737[v659] = v409;
            v19 = v721;
            goto LABEL_196;
          }

          v19 = a7;
          v399 = sub_1004D964C();
          v400 = sub_1004DDF9C();
          if (os_log_type_enabled(v399, v400))
          {
            v401 = swift_slowAlloc();
            *v401 = v728;
            *(v401 + 4) = a8;
            _os_log_impl(&_mh_execute_header, v399, v400, "Deleting section %{public}ld", v401, 0xCu);
            v19 = v721;
          }
        }

        else
        {
          if (v398)
          {
            goto LABEL_366;
          }

          if ((TupleTypeMetadata3 & 1) == 0)
          {
            v413 = v392 + v725;
            v414 = v394 + v725;
            if (__OFADD__(v394, v725))
            {
              goto LABEL_373;
            }

            v415 = sub_1004D964C();
            v416 = sub_1004DDF9C();
            if (os_log_type_enabled(v415, v416))
            {
              v417 = swift_slowAlloc();
              *v417 = v726;
              *(v417 + 4) = v414;
              *(v417 + 12) = 2050;
              *(v417 + 14) = v413;
              _os_log_impl(&_mh_execute_header, v415, v416, "[Insert] Moving section from %{public}ld to %{public}ld", v417, 0x16u);
            }

            v409 = *&v737[v659];
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v409 = sub_10041422C(0, *(v409 + 2) + 1, 1, v409);
            }

            v419 = *(v409 + 2);
            v418 = *(v409 + 3);
            if (v419 >= v418 >> 1)
            {
              v409 = sub_10041422C((v418 > 1), v419 + 1, 1, v409);
            }

            sub_100434650();
            *(v409 + 2) = v419 + 1;
            v420 = &v409[16 * v419];
            *(v420 + 4) = v414;
            *(v420 + 5) = v413;
            goto LABEL_226;
          }

          v19 = a7;
          v399 = sub_1004D964C();
          v402 = sub_1004DDF9C();
          if (os_log_type_enabled(v399, v402))
          {
            v403 = swift_slowAlloc();
            *v403 = v728;
            *(v403 + 4) = a8;
            _os_log_impl(&_mh_execute_header, v399, v402, "Inserting section %{public}ld", v403, 0xCu);
            v19 = v721;
          }
        }

        sub_1004D84EC(a8);
        sub_100434650();
LABEL_196:
        v389 = v743;
        sub_1004DDD3C();
      }

      while (*(v389 + v733) != v748);
    }

    sub_100434658(v743);
    v211 = sub_100404FD0(_swiftEmptyArrayStorage);
    v213 = (v750 + 64);
    v212 = *(v750 + 64);
    v214 = 1 << *(v750 + 32);
    v215 = -1;
    v747 = v211;
    if (v214 < 64)
    {
      v215 = ~(-1 << v214);
    }

    v659 = v215 & v212;
    v635 = ((v214 + 63) >> 6);
    v216 = TupleTypeMetadata2;
    v640 = (TupleTypeMetadata2 - 8);
    v655 = (v685 + 16);
    v658 = (v685 + 32);
    v639 = (v664 + 32);
    v644 = v715 + 32;
    v724 = (v666 + 16);
    v723 = (v666 + 32);
    v743 = (v727 + 16);
    v742 = (v727 + 8);
    v722 = (v676 + 8);
    v637 = (v665 + 8);
    v645 = (v673 + 8);
    v638 = (v685 + 8);
    v641 = v750;

    v217 = 0;
    *&v218 = 134349312;
    v665 = v218;
    *&v218 = 136446210;
    v666 = v218;
    *&v218 = 136446466;
    v653 = v218;
    a8 = v739;
    TupleTypeMetadata3 = v736;
    v219 = v738;
    v220 = v732;
    v636 = v213;
LABEL_88:
    a7 = v692;
    v221 = v659;
    if (v659)
    {
      v654 = v217;
      v222 = v217;
      goto LABEL_98;
    }

    v223 = v635 <= v217 + 1 ? v217 + 1 : v635;
    v224 = v223 - 1;
LABEL_94:
    v222 = v217 + 1;
    if (!__OFADD__(v217, 1))
    {
      break;
    }

LABEL_358:
    __break(1u);
LABEL_359:
    __break(1u);
LABEL_360:
    __break(1u);
LABEL_361:
    __break(1u);
LABEL_362:
    __break(1u);
LABEL_363:
    __break(1u);
LABEL_364:
    __break(1u);
LABEL_365:
    __break(1u);
LABEL_366:
    __break(1u);
LABEL_367:
    __break(1u);
LABEL_368:
    __break(1u);
LABEL_369:
    __break(1u);
LABEL_370:
    swift_once();
  }

  if (v222 >= v635)
  {
    v659 = 0;
    v233 = 1;
    v654 = v224;
    goto LABEL_99;
  }

  v221 = v213[v222];
  ++v217;
  if (!v221)
  {
    goto LABEL_94;
  }

  v654 = v222;
LABEL_98:
  v659 = (v221 - 1) & v221;
  v225 = __clz(__rbit64(v221)) | (v222 << 6);
  v226 = *(*(v641 + 48) + 8 * v225);
  v227 = v685;
  v228 = v680;
  (*(v685 + 16))(v680, *(v641 + 56) + *(v685 + 72) * v225, TupleTypeMetadata3);
  v229 = TupleTypeMetadata2;
  v230 = *(TupleTypeMetadata2 + 48);
  v231 = v692;
  *v692 = v226;
  v232 = *(v227 + 32);
  v216 = v229;
  v232(v231 + v230, v228, TupleTypeMetadata3);
  a7 = v231;
  v233 = 0;
LABEL_99:
  v234 = *(v216 - 8);
  (*(v234 + 56))(a7, v233, 1, v216);
  (*v639)(v220, a7, v682);
  if ((*(v234 + 48))(v220, 1, v216) == 1)
  {

    v421 = 0;
    v710 = (v715 + 40);
    v422 = *(v715 + 32);
    v730 = (v667 + 8);
    v711 = (v673 + 16);
    v719 = v727 + 32;
    *&v423 = 134350594;
    v707 = v423;
    v424 = v643;
    v425 = v646;
    v722 = v422;
    while (1)
    {
      if (v421 >= v424)
      {
        goto LABEL_375;
      }

      v427 = (v421 + 1);
      if (__OFADD__(v421, 1))
      {
        goto LABEL_376;
      }

      v428 = v679;
      sub_1004DD99C();
      v429 = v422(v19, v715);
      v431 = v756;
      if (!*(v756 + 16))
      {
        (*v645)(v428, v19);

LABEL_229:
        v426 = v718;
        goto LABEL_230;
      }

      v432 = sub_10041CA54(v429, v430);
      v434 = v433;

      if ((v434 & 1) == 0)
      {
        (*v645)(v679, v19);
        goto LABEL_229;
      }

      v723 = (v421 + 1);
      v435 = *(*(v431 + 7) + 8 * v432);
      v436 = v715;
      v437 = *(v715 + 40);
      v437(v19, v715);
      v740 = v435;
      sub_1004DD99C();
      v438 = v684;
      v437(v19, v436);
      v439 = v686;
      v440 = sub_1004DDD0C();
      v441 = *v730;
      (*v730)(v438, v439);
      v442 = sub_1004DDD0C();
      v738 = v440;
      v443 = __OFSUB__(v442, v440);
      v444 = v442 - v440;
      if (v443)
      {
        goto LABEL_377;
      }

      v445 = v661;
      if (v444 < 0)
      {
        v443 = __OFSUB__(0, v444);
        v444 = -v444;
        if (v443)
        {
          goto LABEL_380;
        }
      }

      v736 = v442;
      swift_beginAccess();
      v724 = v747;
      v446 = sub_100423F3C(v740, v747);
      v448 = v447;
      swift_endAccess();
      if (v448)
      {
        v449 = 0;
      }

      else
      {
        v449 = v446;
      }

      v739 = v444 + v449;
      if (__OFADD__(v444, v449))
      {
        goto LABEL_378;
      }

      v737 = sub_1004DDD0C();
      v450 = *v711;
      v451 = v721;
      (*v711)(v445, v679, v721);
      v452 = v662;
      v708 = v450;
      v450(v662, v671, v451);
      v453 = sub_1004D964C();
      v454 = sub_1004DDF9C();
      v455 = os_log_type_enabled(v453, v454);
      *&v728 = v441;
      v709 = v431;
      if (v455)
      {
        v456 = swift_slowAlloc();
        v735 = swift_slowAlloc();
        v745 = v735;
        *v456 = v707;
        *(v456 + 4) = v421;
        *(v456 + 12) = 2082;
        WitnessTable = v453;
        LODWORD(v733) = v454;
        v457 = v722;
        v458 = v722(v451, v715);
        v459 = v445;
        v461 = v460;
        v462 = *v645;
        (*v645)(v459, v451);
        v463 = sub_10042E62C(v458, v461, &v745);

        *(v456 + 14) = v463;
        *(v456 + 22) = 2050;
        *(v456 + 24) = v740;
        *(v456 + 32) = 2080;
        v464 = v662;
        v465 = v457(v451, v715);
        v467 = v466;
        *&v726 = v462;
        v462(v464, v451);
        v468 = sub_10042E62C(v465, v467, &v745);

        *(v456 + 34) = v468;
        *(v456 + 42) = 2050;
        *(v456 + 44) = v444;
        *(v456 + 52) = 2050;
        *(v456 + 54) = v739;
        *(v456 + 62) = 2082;
        v748 = sub_100423F3C(v740, v724);
        LOBYTE(v749) = v469 & 1;
        sub_100004CB8(&qword_100647C88, &qword_100536888);
        v470 = sub_1004DD4DC();
        v472 = sub_10042E62C(v470, v471, &v745);

        *(v456 + 64) = v472;
        v473 = WitnessTable;
        _os_log_impl(&_mh_execute_header, WitnessTable, v733, "Section %{public}ld(%{public}s) mapped to section %{public}ld(%s): difference=%{public}ld adjustedDifference=%{public}ld diffAdjustmentMap=%{public}s", v456, 0x48u);
        swift_arrayDestroy();

        v436 = v715;
      }

      else
      {

        v474 = *v645;
        (*v645)(v452, v451);
        *&v726 = v474;
        v474(v445, v451);
      }

      v748 = _swiftEmptyArrayStorage;
      v475 = v738;
      if (v736 > v738)
      {
        v475 = v736;
      }

      v476 = (v475 - 1);
      if (__OFSUB__(v475, 1))
      {
        goto LABEL_379;
      }

      swift_beginAccess();
      isa = _swiftEmptyArrayStorage[2];
      if (isa >= v739)
      {
        v561 = _swiftEmptyArrayStorage;
        v527 = v683;
        goto LABEL_307;
      }

      v735 = v421 + v725;
      v478 = __OFADD__(v421, v725);
      LODWORD(v736) = v478;
      v479 = v740;
      if (v737 >= v738)
      {
        v479 = v421;
      }

      v732 = (v479 + v725);
      v480 = __OFADD__(v479, v725);
      LODWORD(v733) = v480;
      WitnessTable = &_swiftEmptyArrayStorage[2];
      v731 = _swiftEmptyArrayStorage;
      do
      {
        while (1)
        {
          if (v476 < 0)
          {

            v613 = v660;
            v614 = v679;
            v708(v660, v679, v451);
            v615 = sub_1004D964C();
            v616 = sub_1004DDF8C();
            if (os_log_type_enabled(v615, v616))
            {
              v617 = swift_slowAlloc();
              v618 = swift_slowAlloc();
              v745 = v618;
              *v617 = v666;
              v619 = v722(v451, v436);
              v621 = v620;
              v622 = v726;
              (v726)(v613, v451);
              v623 = sub_10042E62C(v619, v621, &v745);

              *(v617 + 4) = v623;
              _os_log_impl(&_mh_execute_header, v615, v616, "We ran out of items while trying to build index paths for section with identifier %{public}s", v617, 0xCu);
              sub_100008D24(v618);

              sub_10000DE74(v696, v718);

              sub_10000DE74(v713, v714);
              sub_10000DE74(v642, v646);
              v622(v671, v451);
              (v728)(v672, v686);
              v622(v614, v451);
            }

            else
            {

              sub_10000DE74(v696, v718);

              sub_10000DE74(v713, v714);
              sub_10000DE74(v642, v646);
              v624 = v726;
              (v726)(v613, v451);
              v624(v671, v451);
              (v728)(v672, v686);
              v624(v614, v451);
            }

            (*(v674 + 8))(v678, v705);

            goto LABEL_193;
          }

          if (v736)
          {
            __break(1u);
LABEL_372:
            __break(1u);
LABEL_373:
            __break(1u);
LABEL_374:
            __break(1u);
LABEL_375:
            __break(1u);
LABEL_376:
            __break(1u);
LABEL_377:
            __break(1u);
LABEL_378:
            __break(1u);
LABEL_379:
            __break(1u);
LABEL_380:
            __break(1u);

            __break(1u);
            return;
          }

          sub_1004D85BC();
          v481 = v753;
          v482 = *(v753 + 2);
          v740 = v476;
          if (v482)
          {
            sub_100434764(&qword_1006479C8, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
            v483 = sub_1004DD2AC();
            v484 = -1 << v481[32];
            v485 = v483 & ~v484;
            if ((*&v481[((v485 >> 3) & 0xFFFFFFFFFFFFFF8) + 56] >> v485))
            {
              v486 = ~v484;
              v487 = *(v727 + 72);
              v488 = *(v727 + 16);
              while (1)
              {
                v489 = v741;
                v488(v741, *(v481 + 6) + v487 * v485, v744);
                sub_100434764(&qword_1006479D0, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
                v490 = sub_1004DD35C();
                v491 = *v742;
                (*v742)(v489, v744);
                if (v490)
                {
                  break;
                }

                v485 = (v485 + 1) & v486;
                if (((*&v481[((v485 >> 3) & 0xFFFFFFFFFFFFFF8) + 56] >> v485) & 1) == 0)
                {
                  goto LABEL_266;
                }
              }

              v509 = v663;
              v510 = v712;
              v488(v663, v712, v744);
              v511 = sub_1004D964C();
              v512 = sub_1004DDF9C();
              if (os_log_type_enabled(v511, v512))
              {
                v513 = swift_slowAlloc();
                v514 = swift_slowAlloc();
                v745 = v514;
                *v513 = v666;
                sub_100434764(&qword_100647C80, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
                v515 = v744;
                v516 = sub_1004DEFFC();
                v518 = v517;
                v491(v509, v515);
                v519 = sub_10042E62C(v516, v518, &v745);

                *(v513 + 4) = v519;
                _os_log_impl(&_mh_execute_header, v511, v512, "%{public}s contained in the visible index paths set, skipping", v513, 0xCu);
                sub_100008D24(v514);

                v491(v510, v515);
              }

              else
              {

                v526 = v744;
                v491(v509, v744);
                v491(v510, v526);
              }

              v451 = v721;
              v527 = v683;
              v493 = v740;
              goto LABEL_297;
            }
          }

LABEL_266:
          if (v733)
          {
            goto LABEL_374;
          }

          v492 = v681;
          v493 = v740;
          sub_1004D85BC();
          v494 = (*(v727 + 80) + 32) & ~*(v727 + 80);
          if (v737 < v738)
          {
            break;
          }

          v503 = *v717;
          v502 = v717[1];
          v504 = v502 + v494;
          v505 = *(v502 + 16);
          if (*v717)
          {

            sub_100432B58(v492, v504, v505, (v503 + 16), v503 + 32);
            v507 = v506;

            if (v507)
            {
              goto LABEL_299;
            }

            v508 = *v743;
          }

          else
          {
            if (!v505)
            {
              goto LABEL_299;
            }

            v523 = *(v727 + 72);
            v508 = *(v727 + 16);
            while (1)
            {
              v524 = v741;
              v508(v741, v504, v744);
              sub_100434764(&qword_1006479D0, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
              v525 = sub_1004DD35C();
              (*v742)(v524, v744);
              if (v525)
              {
                break;
              }

              v504 += v523;
              if (!--v505)
              {
                goto LABEL_299;
              }
            }

            v493 = v740;
          }

          v528 = v669;
          v508(v669, v492, v744);
          v529 = sub_1004D964C();
          v543 = sub_1004DDF9C();
          if (!os_log_type_enabled(v529, v543))
          {
LABEL_295:

            v549 = *v742;
            v550 = v744;
            (*v742)(v528, v744);
            v549(v712, v550);
            v549(v492, v550);
            goto LABEL_296;
          }

          v531 = swift_slowAlloc();
          v544 = v528;
          v533 = swift_slowAlloc();
          v745 = v533;
          *v531 = v666;
          sub_100434764(&qword_100647C80, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
          v534 = v744;
          v545 = sub_1004DEFFC();
          v547 = v546;
          v538 = *v742;
          (*v742)(v544, v534);
          v548 = sub_10042E62C(v545, v547, &v745);

          *(v531 + 4) = v548;
          v540 = v543;
          v541 = v529;
          v542 = "%{public}s contained in the deleted index paths set, skipping";
LABEL_294:
          _os_log_impl(&_mh_execute_header, v541, v540, v542, v531, 0xCu);
          sub_100008D24(v533);

          v538(v712, v534);
          v538(v681, v534);
          v493 = v740;
LABEL_296:
          v451 = v721;
          v527 = v683;
LABEL_297:
          v476 = v493 - 1;
          isa = WitnessTable->isa;
          v436 = v715;
          if (WitnessTable->isa >= v739)
          {
            goto LABEL_306;
          }
        }

        v496 = *v706;
        v495 = v706[1];
        v497 = v495 + v494;
        v498 = *(v495 + 16);
        if (*v706)
        {

          sub_100432B58(v492, v497, v498, (v496 + 16), v496 + 32);
          v500 = v499;

          if ((v500 & 1) == 0)
          {
            v501 = *v743;
LABEL_289:
            v528 = v668;
            v501(v668, v492, v744);
            v529 = sub_1004D964C();
            v530 = sub_1004DDF9C();
            if (!os_log_type_enabled(v529, v530))
            {
              goto LABEL_295;
            }

            v531 = swift_slowAlloc();
            v532 = v528;
            v533 = swift_slowAlloc();
            v745 = v533;
            *v531 = v666;
            sub_100434764(&qword_100647C80, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
            v534 = v744;
            v535 = sub_1004DEFFC();
            v537 = v536;
            v538 = *v742;
            (*v742)(v532, v534);
            v539 = sub_10042E62C(v535, v537, &v745);

            *(v531 + 4) = v539;
            v540 = v530;
            v541 = v529;
            v542 = "%{public}s contained in the inserted index paths set, skipping";
            goto LABEL_294;
          }
        }

        else if (v498)
        {
          v520 = *(v727 + 72);
          v501 = *(v727 + 16);
          while (1)
          {
            v521 = v741;
            v501(v741, v497, v744);
            sub_100434764(&qword_1006479D0, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
            v522 = sub_1004DD35C();
            (*v742)(v521, v744);
            if (v522)
            {
              break;
            }

            v497 += v520;
            if (!--v498)
            {
              goto LABEL_299;
            }
          }

          v493 = v740;
          goto LABEL_289;
        }

LABEL_299:
        (*v743)(v670, v492, v744);
        v551 = v731;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v551 = sub_100414014(0, v551[2].isa + 1, 1, v551);
        }

        v451 = v721;
        v436 = v715;
        v552 = v712;
        v553 = v740;
        v555 = v551[2].isa;
        v554 = v551[3].isa;
        if (v555 >= v554 >> 1)
        {
          v551 = sub_100414014((v554 > 1), v555 + 1, 1, v551);
        }

        v551[2].isa = (v555 + 1);
        v556 = v551 + 2;
        v557 = v727;
        v558 = v551 + v494 + *(v727 + 72) * v555;
        v559 = v744;
        (*(v727 + 32))(v558, v670, v744);
        v731 = v551;
        v748 = v551;
        v560 = *(v557 + 8);
        v560(v552, v559);
        v560(v681, v559);
        v476 = v553 - 1;
        WitnessTable = v551 + 2;
        isa = v551[2].isa;
      }

      while (v556->isa < v739);
      v527 = v683;
LABEL_306:
      v561 = v731;
LABEL_307:
      v731 = v561;

      if (v737 >= v738)
      {
        if (isa)
        {
          v578 = 0;
          v579 = *(v727 + 72);
          v580 = (*(v727 + 80) + 32) & ~*(v727 + 80);
          v581 = v731 + v580;
          v582 = *(v727 + 16);
          v740 = (v731 + v580);
          v582(v527, v731 + v580, v744);
          while (1)
          {
            v584 = *v717;
            v583 = v717[1];
            v585 = v583 + v580;
            v586 = *(v583 + 16);
            if (*v717)
            {

              sub_100432B58(v527, v585, v586, (v584 + 16), v584 + 32);
              v588 = v587;
              v590 = v589;

              if (v588)
              {
                v527 = v683;
                goto LABEL_336;
              }

              v527 = v683;
            }

            else if (v586)
            {
              while (1)
              {
                v591 = v741;
                v582(v741, v585, v744);
                sub_100434764(&qword_1006479D0, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
                v592 = sub_1004DD35C();
                (*v742)(v591, v744);
                if (v592)
                {
                  break;
                }

                v585 += v579;
                if (!--v586)
                {
                  v590 = 0;
                  v581 = v740;
                  goto LABEL_336;
                }
              }

              v581 = v740;
            }

            else
            {
              v590 = 0;
LABEL_336:
              sub_10043253C(v527, v590);
            }

            v578 = (v578 + 1);
            (*v742)(v527, v744);
            if (v578 == isa)
            {
              break;
            }

            v582(v527, (v581 + v579 * v578), v744);
          }
        }

        v593 = sub_1004D964C();
        v604 = sub_1004DDF9C();
        if (os_log_type_enabled(v593, v604))
        {
          v595 = swift_slowAlloc();
          v596 = swift_slowAlloc();
          v745 = v596;
          *v595 = v666;

          v605 = sub_1004DD88C();
          v607 = v606;

          v608 = sub_10042E62C(v605, v607, &v745);

          *(v595 + 4) = v608;
          v601 = v604;
          v602 = v593;
          v603 = "Non visible adjustment: deleting %{public}s";
LABEL_342:
          _os_log_impl(&_mh_execute_header, v602, v601, v603, v595, 0xCu);
          sub_100008D24(v596);
        }
      }

      else
      {
        if (isa)
        {
          v562 = 0;
          v563 = *(v727 + 72);
          v564 = (*(v727 + 80) + 32) & ~*(v727 + 80);
          v565 = v731 + v564;
          v566 = *(v727 + 16);
          v567 = v677;
          v740 = (v731 + v564);
          v566(v677, v731 + v564, v744);
          while (1)
          {
            v569 = *v706;
            v568 = v706[1];
            v570 = v568 + v564;
            v571 = *(v568 + 16);
            if (*v706)
            {

              sub_100432B58(v567, v570, v571, (v569 + 16), v569 + 32);
              v573 = v572;
              v575 = v574;

              if (v573)
              {
                v567 = v677;
                goto LABEL_321;
              }

              v567 = v677;
            }

            else if (v571)
            {
              while (1)
              {
                v576 = v741;
                v566(v741, v570, v744);
                sub_100434764(&qword_1006479D0, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
                v577 = sub_1004DD35C();
                (*v742)(v576, v744);
                if (v577)
                {
                  break;
                }

                v570 += v563;
                if (!--v571)
                {
                  v575 = 0;
                  v565 = v740;
                  goto LABEL_321;
                }
              }

              v565 = v740;
            }

            else
            {
              v575 = 0;
LABEL_321:
              sub_10043253C(v567, v575);
            }

            v562 = (v562 + 1);
            (*v742)(v567, v744);
            if (v562 == isa)
            {
              break;
            }

            v566(v567, (v565 + v563 * v562), v744);
          }
        }

        v593 = sub_1004D964C();
        v594 = sub_1004DDF9C();
        if (os_log_type_enabled(v593, v594))
        {
          v595 = swift_slowAlloc();
          v596 = swift_slowAlloc();
          v745 = v596;
          *v595 = v666;

          v597 = sub_1004DD88C();
          v599 = v598;

          v600 = sub_10042E62C(v597, v599, &v745);

          *(v595 + 4) = v600;
          v601 = v594;
          v602 = v593;
          v603 = "Non visible adjustment: inserting %{public}s";
          goto LABEL_342;
        }
      }

      v19 = v721;
      v609 = v726;
      (v726)(v671, v721);
      (v728)(v672, v686);
      v609(v679, v19);

      v425 = v646;
      v426 = v718;
      v422 = v722;
      v427 = v723;
LABEL_230:
      v424 = v643;
      v421 = v427;
      if (v427 == v643)
      {

        sub_10000DE74(v696, v426);

        sub_10000DE74(v713, v714);

        sub_10000DE74(v642, v425);

        (*(v674 + 8))(v678, v705);

        goto LABEL_352;
      }
    }
  }

  v235 = *v220;
  (*v658)(v699, v220 + *(v216 + 48), TupleTypeMetadata3);
  v733 = v235;
  if (__OFSUB__(v235, v725))
  {
    goto LABEL_367;
  }

  sub_1004DD99C();
  v236 = (*(v715 + 32))(v19);
  v238 = *(v756 + 16);
  v664 = v756;
  if (v238 && (v239 = sub_10041CA54(v236, v237), (v240 & 1) != 0))
  {
    v241 = *(*(v664 + 56) + 8 * v239);

    v242 = swift_isUniquelyReferenced_nonNull_native();
    v748 = v747;
    v687 = v241;
    sub_10043062C(0, v241, v242);
    LODWORD(v726) = 0;
    v747 = v748;
  }

  else
  {

    v687 = 0;
    LODWORD(v726) = 1;
  }

  (*v655)(v219, v699, TupleTypeMetadata3);
  v243 = *(v695 + 36);
  a7 = WitnessTable;
  sub_1004DDCFC();
  sub_1004DDD3C();
  if (sub_1004DEDDC())
  {
LABEL_87:
    (*v637)(v219, v695);
    (*v645)(v694, v19);
    (*v638)(v699, TupleTypeMetadata3);
    v216 = TupleTypeMetadata2;
    v213 = v636;
    v217 = v654;
    goto LABEL_88;
  }

  v675 = v687 + v725;
  v244 = __OFADD__(v687, v725);
  LODWORD(v676) = v244;
  v735 = v243;
  while (1)
  {
    v248 = sub_1004DDE1C();
    v249 = v730;
    v250 = v731;
    (*v724)(v730);
    v248(&v748, 0);
    sub_1004DDD4C();
    v251 = v740;
    (*v723)(v740, v249, v250);
    LODWORD(v248) = swift_getEnumCaseMultiPayload();
    v252 = *v251;
    sub_100008DE4(&qword_100647C88, &qword_100536888);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    v253 = v251 + *(TupleTypeMetadata3 + 64);
    v254 = *v253;
    a8 = v253[8];
    v255 = v754[0];
    v256 = *(v754[0] + 16);
    if (v248 != 1)
    {
      if (v256)
      {
        v259 = sub_100028EF8(v733);
        if (v260)
        {
          v256 = *(*(v255 + 56) + 8 * v259);
        }

        else
        {
          v256 = 0;
        }
      }

      if (__OFADD__(v252, v256))
      {
        __break(1u);
LABEL_357:
        __break(1u);
        goto LABEL_358;
      }

      a7 = v740 + *(TupleTypeMetadata3 + 48);
      if (v726)
      {
        v275 = sub_1004D964C();
        v276 = sub_1004DDF9C();
        v277 = os_log_type_enabled(v275, v276);
        TupleTypeMetadata3 = v736;
        if (v277)
        {
          v278 = swift_slowAlloc();
          *v278 = v665;
          *(v278 + 4) = v733;
          *(v278 + 12) = 2050;
          *(v278 + 14) = v252;
          goto LABEL_144;
        }

LABEL_145:

        a8 = v739;
        v219 = v738;
        v220 = v732;
        goto LABEL_113;
      }

      *&v728 = v740 + *(TupleTypeMetadata3 + 48);
      if (a8)
      {
        v280 = sub_10042AA3C(&v748, v687);
        if (*(v279 + 8))
        {
          (v280)(&v748, 0);
          a7 = v698;
        }

        else
        {
          a7 = v698;
          if (__OFADD__(*v279, 1))
          {
            goto LABEL_369;
          }

          ++*v279;
          (v280)(&v748, 0);
        }

        if (v676)
        {
          goto LABEL_363;
        }

        sub_1004D85BC();
        v343 = *v706;
        v342 = v706[1];
        v344 = v342 + ((*(v727 + 80) + 32) & ~*(v727 + 80));
        v345 = *(v342 + 16);
        if (*v706)
        {

          sub_100432B58(a7, v344, v345, (v343 + 16), v343 + 32);
          v347 = v346;
          v349 = v348;

          if ((v347 & 1) == 0)
          {
            goto LABEL_185;
          }
        }

        else
        {
          if (v345)
          {
            v368 = *(v727 + 72);
            v369 = *(v727 + 16);
            do
            {
              v370 = v741;
              v371 = v744;
              v369(v741, v344, v744);
              sub_100434764(&qword_1006479D0, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
              v372 = sub_1004DD35C();
              (*v742)(v370, v371);
              if (v372)
              {
                goto LABEL_185;
              }

              v344 += v368;
            }

            while (--v345);
          }

          v349 = 0;
        }

        sub_10043253C(a7, v349);
LABEL_185:
        v373 = v688;
        (*v743)(v688, a7, v744);
        v374 = sub_1004D964C();
        v375 = sub_1004DDF9C();
        if (os_log_type_enabled(v374, v375))
        {
          v376 = swift_slowAlloc();
          v377 = swift_slowAlloc();
          v748 = v377;
          *v376 = v666;
          sub_100434764(&qword_100647C80, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
          v378 = v744;
          v379 = sub_1004DEFFC();
          v381 = v380;
          v382 = *v742;
          (*v742)(v373, v378);
          v383 = sub_10042E62C(v379, v381, &v748);

          *(v376 + 4) = v383;
          _os_log_impl(&_mh_execute_header, v374, v375, "Inserting item %{public}s", v376, 0xCu);
          sub_100008D24(v377);
          v19 = v721;

          v382(v698, v378);
        }

        else
        {

          v384 = *v742;
          v385 = v744;
          (*v742)(v373, v744);
          v384(a7, v385);
        }

        a8 = v739;
        TupleTypeMetadata3 = v736;
        v219 = v738;
        v220 = v732;
        goto LABEL_112;
      }

      v282 = v711;
      sub_1004D85BC();
      if (v676)
      {
        goto LABEL_362;
      }

      v283 = v710;
      sub_1004D85BC();
      v284 = *v743;
      v285 = v690;
      v286 = v282;
      v287 = v744;
      (*v743)(v690, v286, v744);
      v288 = v697;
      v284(v697, v283, v287);
      v289 = sub_1004D964C();
      v290 = sub_1004DDF9C();
      if (os_log_type_enabled(v289, v290))
      {
        v291 = swift_slowAlloc();
        v651 = swift_slowAlloc();
        v748 = v651;
        *v291 = v653;
        sub_100434764(&qword_100647C80, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
        v292 = v744;
        v293 = sub_1004DEFFC();
        v294 = v285;
        v296 = v295;
        v297 = *v742;
        (*v742)(v294, v292);
        v298 = sub_10042E62C(v293, v296, &v748);

        *(v291 + 4) = v298;
        *(v291 + 12) = 2082;
        v299 = v697;
        v300 = sub_1004DEFFC();
        v302 = v301;
        v297(v299, v292);
        v303 = sub_10042E62C(v300, v302, &v748);

        *(v291 + 14) = v303;
        _os_log_impl(&_mh_execute_header, v289, v290, "[Insert] Moving item %{public}s to %{public}s", v291, 0x16u);
        swift_arrayDestroy();
      }

      else
      {

        v297 = *v742;
        v350 = v288;
        v351 = v744;
        (*v742)(v350, v744);
        v297(v285, v351);
      }

      a8 = v739;
      v219 = v738;
      v220 = v732;
      v352 = *(v703 + 48);
      v353 = v704;
      v354 = v744;
      v284(v704, v711, v744);
      v284(&v353[v352], v710, v354);
      v355 = *&v737[v719];
      v356 = swift_isUniquelyReferenced_nonNull_native();
      v19 = v721;
      if ((v356 & 1) == 0)
      {
        v355 = sub_10041403C(0, v355[2] + 1, 1, v355);
      }

      v358 = v355[2];
      v357 = v355[3];
      if (v358 >= v357 >> 1)
      {
        v355 = sub_10041403C((v357 > 1), v358 + 1, 1, v355);
      }

      v245 = v744;
      v297(v710, v744);
      v297(v711, v245);
      v355[2] = v358 + 1;
      v246 = v355 + ((*(v702 + 80) + 32) & ~*(v702 + 80)) + *(v702 + 72) * v358;
      v247 = &v732;
      goto LABEL_111;
    }

    if (v256)
    {
      v257 = sub_100028EF8(v733);
      if (v258)
      {
        v256 = *(*(v255 + 56) + 8 * v257);
      }

      else
      {
        v256 = 0;
      }
    }

    if (__OFADD__(v252, v256))
    {
      goto LABEL_357;
    }

    if (v726)
    {
      break;
    }

    v262 = sub_10042AA3C(&v748, v687);
    if (*(v261 + 8) != 1)
    {
      if (__OFSUB__(*v261, 1))
      {
        goto LABEL_361;
      }

      --*v261;
    }

    (v262)(&v748, 0);
    *&v728 = v740 + *(TupleTypeMetadata3 + 48);
    if (a8)
    {
      goto LABEL_130;
    }

    v19 = v707;
    sub_1004D85BC();
    if (v676)
    {
      goto LABEL_364;
    }

    v304 = v709;
    sub_1004D85BC();
    v305 = v744;
    v306 = *v743;
    v307 = v689;
    (*v743)(v689, v19, v744);
    v308 = v652;
    v306(v652, v304, v305);
    v309 = sub_1004D964C();
    v310 = sub_1004DDF9C();
    if (os_log_type_enabled(v309, v310))
    {
      v311 = swift_slowAlloc();
      v651 = swift_slowAlloc();
      v748 = v651;
      *v311 = v653;
      sub_100434764(&qword_100647C80, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
      v648 = v309;
      v312 = v744;
      v313 = sub_1004DEFFC();
      LODWORD(v647) = v310;
      v315 = v314;
      v316 = *v742;
      (*v742)(v307, v312);
      v317 = v313;
      v19 = v707;
      v318 = sub_10042E62C(v317, v315, &v748);

      *(v311 + 4) = v318;
      *(v311 + 12) = 2082;
      v319 = sub_1004DEFFC();
      v321 = v320;
      v316(v308, v312);
      v322 = sub_10042E62C(v319, v321, &v748);

      *(v311 + 14) = v322;
      v323 = v648;
      _os_log_impl(&_mh_execute_header, v648, v647, "[Remove] Moving item %{public}s to %{public}s", v311, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      v316 = *v742;
      v359 = v308;
      v360 = v744;
      (*v742)(v359, v744);
      v316(v307, v360);
    }

    v219 = v738;
    v220 = v732;
    v361 = *(v703 + 48);
    v362 = v701;
    v363 = v744;
    v306(v701, v19, v744);
    v306(&v362[v361], v709, v363);
    v355 = *&v737[v719];
    v364 = swift_isUniquelyReferenced_nonNull_native();
    v19 = v721;
    a8 = v739;
    if ((v364 & 1) == 0)
    {
      v355 = sub_10041403C(0, v355[2] + 1, 1, v355);
    }

    v366 = v355[2];
    v365 = v355[3];
    if (v366 >= v365 >> 1)
    {
      v355 = sub_10041403C((v365 > 1), v366 + 1, 1, v355);
    }

    v367 = v744;
    v316(v709, v744);
    v316(v707, v367);
    v355[2] = v366 + 1;
    v246 = v355 + ((*(v702 + 80) + 32) & ~*(v702 + 80)) + *(v702 + 72) * v366;
    v247 = &v729;
LABEL_111:
    sub_1004346C0(*(v247 - 32), v246);
    *&v737[v719] = v355;
    TupleTypeMetadata3 = v736;
LABEL_112:
    a7 = v728;
LABEL_113:
    (*v722)(a7, a8);
    a7 = WitnessTable;
    sub_1004DDD3C();
    if (sub_1004DEDDC())
    {
      goto LABEL_87;
    }
  }

  a7 = v740 + *(TupleTypeMetadata3 + 48);
  if (!a8)
  {
    v275 = sub_1004D964C();
    v276 = sub_1004DDF9C();
    v281 = os_log_type_enabled(v275, v276);
    TupleTypeMetadata3 = v736;
    if (v281)
    {
      v278 = swift_slowAlloc();
      *v278 = v665;
      *(v278 + 4) = v733;
      *(v278 + 12) = 2050;
      *(v278 + 14) = v254;
LABEL_144:
      _os_log_impl(&_mh_execute_header, v275, v276, "Skipping insert for [%{public}ld,%{public}ld]", v278, 0x16u);
    }

    goto LABEL_145;
  }

  *&v728 = v740 + *(TupleTypeMetadata3 + 48);
LABEL_130:
  v263 = v708;
  sub_1004D85BC();
  v264 = sub_10041C760(v263, v753);
  v265 = v739;
  v266 = v738;
  if (v264)
  {
    v268 = *v717;
    v267 = v717[1];
    v269 = v267 + ((*(v727 + 80) + 32) & ~*(v727 + 80));
    v270 = *(v267 + 16);
    if (*v717)
    {

      sub_100432B58(v263, v269, v270, (v268 + 16), v268 + 32);
      v272 = v271;
      v274 = v273;

      if ((v272 & 1) == 0)
      {
        goto LABEL_158;
      }
    }

    else
    {
      if (v270)
      {
        v324 = *(v727 + 72);
        v325 = *(v727 + 16);
        do
        {
          v326 = v741;
          v327 = v744;
          v325(v741, v269, v744);
          sub_100434764(&qword_1006479D0, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
          v328 = sub_1004DD35C();
          (*v742)(v326, v327);
          if (v328)
          {
            goto LABEL_158;
          }

          v269 += v324;
        }

        while (--v270);
      }

      v274 = 0;
    }

    sub_10043253C(v263, v274);
LABEL_158:
    v329 = v700;
    (*v743)(v700, v263, v744);
    v330 = sub_1004D964C();
    v331 = sub_1004DDF9C();
    if (os_log_type_enabled(v330, v331))
    {
      v332 = swift_slowAlloc();
      v333 = swift_slowAlloc();
      v748 = v333;
      *v332 = v666;
      sub_100434764(&qword_100647C80, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
      v334 = v744;
      v335 = sub_1004DEFFC();
      v337 = v336;
      v338 = *v742;
      (*v742)(v329, v334);
      v339 = sub_10042E62C(v335, v337, &v748);

      *(v332 + 4) = v339;
      _os_log_impl(&_mh_execute_header, v330, v331, "Deleting item %{public}s", v332, 0xCu);
      sub_100008D24(v333);
      v19 = v721;

      v338(v708, v334);
    }

    else
    {

      v340 = *v742;
      v341 = v744;
      (*v742)(v329, v744);
      v340(v263, v341);
    }

    a8 = v739;
    TupleTypeMetadata3 = v736;
    v219 = v738;
    v220 = v732;
    goto LABEL_112;
  }

  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();

  v386 = sub_1004D964C();
  v387 = sub_1004DDF7C();
  if (os_log_type_enabled(v386, v387))
  {
    v388 = swift_slowAlloc();
    *v388 = 0;
    _os_log_impl(&_mh_execute_header, v386, v387, "Tried to delete an index path from the visible items diff that is not present in the visible index paths set. The visible index paths are likely not consecutive and the diff would be inconsistent, bailing and reloading data.", v388, 2u);
    v265 = v739;
  }

  sub_10000DE74(v696, v718);

  sub_10000DE74(v713, v714);
  sub_10000DE74(v642, v646);
  (*v637)(v266, v695);
  (*v645)(v694, v19);
  (*v638)(v699, v736);
  (*(v674 + 8))(v678, v705);
  (*v742)(v263, v744);
  *v737 = 1;
  (*v722)(v728, v265);

LABEL_193:
}

uint64_t sub_10042A7B4@<X0>(_BYTE *a5@<X8>)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  result = sub_1004DD35C();
  *a5 = result & 1;
  return result;
}

uint64_t sub_10042A89C@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t *a3@<X8>)
{
  v6 = *(a2 + 32);
  v7 = v6(a1, a2);
  sub_10042EEB4(&v11, v7, v8);

  result = v6(a1, a2);
  *a3 = result;
  a3[1] = v10;
  return result;
}

uint64_t sub_10042A95C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a5 + 32);
  v10 = v9(a4, a5);
  v12 = v11;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = *a3;
  *a3 = 0x8000000000000000;
  sub_100430750(a1, v10, v12, isUniquelyReferenced_nonNull_native);

  *a3 = v15;

  return v9(a4, a5);
}

uint64_t (*sub_10042AA3C(uint64_t **a1, uint64_t a2))()
{
  if (&_swift_coroFrameAlloc)
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v4[4] = sub_100432170(v4, a2);
  return sub_10042AAB4;
}

uint64_t (*sub_10042AAB8(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  if (&_swift_coroFrameAlloc)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x28uLL);
  }

  *a1 = v8;
  v8[4] = sub_100432218(v8, a2, a3, a4);
  return sub_100434848;
}

void sub_10042AB48(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t sub_10042AB94(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, __n128), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t), uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v37 = a8;
  v19 = sub_1004D85FC();
  v20 = *(v19 - 8);
  v21 = __chkstk_darwin();
  v23 = &v34 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = a3(a1, a2, v21);
  if ((v24 & 1) == 0 || !a5)
  {
    return v24 & 1;
  }

  if (a5(a1, a2) & 1) != 0 || (v35 = v20, v36 = a7, swift_getAssociatedTypeWitness(), swift_getAssociatedConformanceWitness(), swift_getAssociatedTypeWitness(), swift_getAssociatedConformanceWitness(), v25 = sub_1004D93CC(), (v26))
  {
    sub_10000DE74(a5, a6);
    return v24 & 1;
  }

  v27 = *a9;
  v28 = *(*a9 + 16);
  if (v28)
  {
    v29 = v25;
    v30 = sub_100028EF8(a10);
    if (v31)
    {
      v28 = *(*(v27 + 56) + 8 * v30);
    }

    else
    {
      v28 = 0;
    }

    v25 = v29;
  }

  v32 = __OFADD__(v25, v28);
  result = v25 + v28;
  if (!v32)
  {
    sub_1004D85BC();
    type metadata accessor for AIDiffingUpdate(0);
    sub_100432334(v23);
    sub_10000DE74(a5, a6);
    (*(v35 + 8))(v23, v19);
    return v24 & 1;
  }

  __break(1u);
  return result;
}

void UICollectionView.calculateAIDiff<A>(oldItems:newItems:startingSectionIndex:finalSectionIndex:modelUpdateHandler:identityComparator:visualComparator:)(NSObject *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (**a4)(uint64_t, uint64_t *, NSObject *, __n128)@<X3>, char a5@<W4>, unint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14)
{

  v20 = [v14 indexPathsForVisibleItems];
  sub_1004D85FC();
  v21 = sub_1004DD87C();

  sub_10000DE64(a6, a7);
  sub_10000DE64(a8, a10);
  sub_10000DE64(a11, a12);
  sub_100423FCC(a1, a2, v21, a3, a4, a5 & 1, a6, a7, a9, a8, a10, a11, a12, a13, a14);
}