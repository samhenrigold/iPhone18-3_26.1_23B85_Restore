uint64_t *sub_100149B00()
{
  sub_100151520();

  sub_10014416C(v7, v5);
  result = sub_100149BA0(__src, v7, v1);
  if (!v2)
  {
    v0[3] = &type metadata for AvroSingleValueDecodingContainer;
    v0[4] = sub_10014E760();
    v4 = swift_allocObject();
    *v0 = v4;
    return memcpy((v4 + 16), __src, 0x78uLL);
  }

  return result;
}

uint64_t *sub_100149BA0@<X0>(uint64_t *__return_ptr a1@<X8>, unsigned __int16 *__src@<X1>, void *a3@<X0>)
{
  v7 = a3[3];
  v8 = __src[48] >> 12;
  if (v8 == 7)
  {
    v9 = *(*__src + 48);
    sub_10000C4FC(a3 + 4, a3[7]);
    v10 = sub_100152188();
    if (!v3)
    {
      if (v10 < *(v9 + 16))
      {
        if ((v10 & 0x8000000000000000) == 0)
        {
          memcpy(v17, (v9 + 104 * v10 + 32), 0x62uLL);

          sub_10014416C(v17, __srca);
          sub_1001441C8(__src);
          v11 = v17;
LABEL_10:
          memcpy(__dst, v11, sizeof(__dst));
          goto LABEL_11;
        }

        __break(1u);
        goto LABEL_15;
      }

      sub_10014E8FC();
      swift_allocError();
      *v14 = 2;
      swift_willThrow();
    }

    sub_1001441C8(__src);
  }

  if (v8 == 3)
  {
    memcpy(__dst, __src, sizeof(__dst));

LABEL_11:
    __srca[0] = v7;
    memcpy(&__srca[1], __dst, 0x62uLL);
    __srca[14] = a3;
    v17[0] = v7;
    memcpy(&v17[1], __dst, 0x62uLL);
    v17[14] = a3;
    sub_10014E894(__srca, &v15);
    sub_10014E8CC(v17);
    return memcpy(a1, __srca, 0x78uLL);
  }

  memcpy(__dst, __src, sizeof(__dst));

  sub_10014416C(__src, v17);
  v12 = sub_10015E780();
  if (v12[2])
  {
    memcpy(__srca, v12 + 4, 0x62uLL);
    sub_10014416C(__srca, v17);

    memcpy(v17, __dst, 0x62uLL);
    sub_1001441C8(v17);
    sub_1001441C8(__src);
    v11 = __srca;
    goto LABEL_10;
  }

LABEL_15:

  __break(1u);
  return result;
}

uint64_t sub_100149DD4()
{

  sub_100004118((v0 + 32));
  sub_10000B894(*(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 152), *(v0 + 136));
  return v0;
}

uint64_t sub_100149E2C()
{
  sub_100149DD4();

  return _swift_deallocClassInstance(v0, 170, 7);
}

uint64_t sub_100149EFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v3 + 16);
  sub_1001500B4(a3, a1, a2, isUniquelyReferenced_nonNull_native);
  *(v3 + 16) = v9;
  return swift_endAccess();
}

uint64_t sub_100149F8C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 16);
  if (!*(v5 + 16))
  {
    return 0;
  }

  v6 = sub_10000A350(a1, a2, sub_10000A3D0);
  if (v7)
  {
    v8 = *(*(v5 + 56) + 8 * v6);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t sub_10014A05C()
{
  v0 = sub_10014A03C();

  return _swift_deallocClassInstance(v0, 24, 7);
}

uint64_t sub_10014A100(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  Array.init()();
  sub_100099DF4(&qword_1002DEB38, &qword_10023C4E8);
  type metadata accessor for Array();
  sub_100151454();
  Sequence.reduce<A>(into:_:)();

  return v7;
}

uint64_t sub_10014A1C4(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v17[1] = a1;
  v5 = type metadata accessor for Optional();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v17 - v7;
  v9 = *(a3 - 8);
  __chkstk_darwin(v10);
  v12 = v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = v17 - v14;

  dispatch thunk of CodingKey.init(stringValue:)();
  if (sub_100004DFC(v8, 1, a3) == 1)
  {
    return (*(v6 + 8))(v8, v5);
  }

  (*(v9 + 32))(v15, v8, a3);
  (*(v9 + 16))(v12, v15, a3);
  type metadata accessor for Array();
  Array.append(_:)();
  return (*(v9 + 8))(v15, a3);
}

void *sub_10014A3F4@<X0>(uint64_t a1@<X3>, void *a4@<X8>)
{
  v6 = dispatch thunk of CodingKey.stringValue.getter();
  if (!*(a1 + 16))
  {
    goto LABEL_15;
  }

  v8 = sub_10000A350(v6, v7, sub_10000A3D0);
  v10 = v9;

  if (v10)
  {
    memcpy(__dst, (*(a1 + 56) + 104 * v8), 0x62uLL);
    if ((__dst[12] & 0xF000) != 0x7000)
    {
      sub_10014416C(__dst, v20);
      goto LABEL_7;
    }

    v11 = *(__dst[0] + 48);
    sub_10014416C(__dst, v20);

    v12 = dispatch thunk of CodingKey.stringValue.getter();
    v14 = sub_100149F8C(v12, v13);
    v16 = v15;

    if (v16)
    {

LABEL_7:
      v17 = __dst;
LABEL_11:
      memcpy(v20, v17, 0x62uLL);
      return memcpy(a4, v20, 0x62uLL);
    }

    if ((v14 & 0x8000000000000000) == 0)
    {
      if (v14 < *(v11 + 16))
      {
        memcpy(__src, (v11 + 104 * v14 + 32), 0x62uLL);
        sub_10014416C(__src, v20);

        sub_1001441C8(__dst);
        v17 = __src;
        goto LABEL_11;
      }

      goto LABEL_14;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_14:
  __break(1u);
LABEL_15:

  __break(1u);
  return result;
}

uint64_t sub_10014A5B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = dispatch thunk of CodingKey.stringValue.getter();
  if (*(a4 + 16))
  {
    sub_10000A350(v8, v9, sub_10000A3D0);
    v11 = v10;
  }

  else
  {

    v11 = 0;
  }

  return v11 & 1;
}

uint64_t sub_10014A638(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_10014A3F4(a4, v23);
  v9 = v28 >> 12;
  if (v9 != 7)
  {
    if (v9 == 13 && v28 == 53248 && (v10 = vorrq_s8(vorrq_s8(v24, v26), vorrq_s8(v25, v27)), !(*&vorr_s8(*v10.i8, *&vextq_s8(v10, v10, 8uLL)) | v23[3] | v23[2] | v23[1] | v23[0])))
    {
      LOBYTE(v11) = 1;
    }

    else
    {
      sub_1001441C8(v23);
      LOBYTE(v11) = 0;
    }

    return v11 & 1;
  }

  v12 = *(v23[0] + 48);
  v11 = *sub_10000C4FC((a3 + 32), *(a3 + 56));
  v13 = sub_100152188();
  if (!v7)
  {
    v14 = v13;
    if (v13 >= *(v12 + 16))
    {
      sub_10014E8FC();
      swift_allocError();
      *v19 = 2;
      swift_willThrow();
      sub_1001441C8(v23);
      return v11 & 1;
    }

    v15 = dispatch thunk of CodingKey.stringValue.getter();
    sub_100149EFC(v15, v16, v14);

    if ((v14 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v14 < *(v12 + 16))
    {
      memcpy(__dst, (v12 + 104 * v14 + 32), sizeof(__dst));
      sub_10014416C(__dst, v21);

      v17 = vorrq_s8(vorrq_s8(vorrq_s8(*__dst, *&__dst[32]), vorrq_s8(*&__dst[16], *&__dst[48])), vorrq_s8(*&__dst[64], *&__dst[80]));
      if (vorr_s8(*v17.i8, *&vextq_s8(v17, v17, 8uLL)))
      {
        v18 = 0;
      }

      else
      {
        v18 = *&__dst[96] == -12288;
      }

      LOBYTE(v11) = v18;
      sub_1001441C8(__dst);
      sub_1001441C8(v23);
      return v11 & 1;
    }

    __break(1u);
  }

  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_10014A87C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a10, uint64_t a11)
{
  sub_10014A3F4(a5, v72);
  v17 = v73 >> 12;
  switch(v17)
  {
    case 12:
      sub_100151350();
      swift_allocError();
      v21 = 6;
      goto LABEL_10;
    case 8:
      goto LABEL_6;
    case 6:
      if (!sub_1001513A4(a1, a1, &protocol descriptor for _AvroDictionaryDecodableMarker) || (v60 = v18, v59 = *(v18 + 8), v59() != &type metadata for String))
      {
LABEL_6:
        sub_10014B0A4(a4, a5, v69);
        if (!v62)
        {
          sub_100008494(v69, v70);
          dispatch thunk of UnkeyedDecodingContainer.decode<A>(_:)();
          sub_1001441C8(v72);
          return sub_100004118(v69);
        }

        return sub_1001441C8(v72);
      }

      if (sub_10014A5B4(a2, a3, a4, a5, a6, a7, a10))
      {
        sub_10014B0A4(a4, a5, v69);
        if (!v62)
        {
          sub_10000C4FC(v69, v70);
          v26 = dispatch thunk of UnkeyedDecodingContainer.count.getter();
          if ((v27 & 1) == 0 && !v26)
          {
            sub_1001441C8(v72);
            v28 = &_swiftEmptyDictionarySingleton;
LABEL_39:
            *&v64 = v28;
            sub_100099DF4(&qword_1002DD3E8, &qword_100237740);
            swift_dynamicCast();
            return sub_100004118(v69);
          }

          v63 = &_swiftEmptyDictionarySingleton;
          v29 = v59;
          while (1)
          {
            while (1)
            {
              do
              {
                sub_10000C4FC(v69, v70);
                if (dispatch thunk of UnkeyedDecodingContainer.isAtEnd.getter())
                {
                  sub_1001441C8(v72);
                  v28 = v63;
                  goto LABEL_39;
                }

                v30 = v29();
                __chkstk_darwin(v30);
                sub_100008494(v69, v70);
                dispatch thunk of UnkeyedDecodingContainer.decode<A>(_:)();
                v29 = v59;
              }

              while ((swift_dynamicCast() & 1) == 0);
              v31 = v64;
              v32 = (*(v60 + 16))();
              v34 = v33;
              sub_100008494(v69, v70);
              *(&v65 + 1) = v32;
              v66 = v34;
              sub_100007914(&v64);
              dispatch thunk of UnkeyedDecodingContainer.decode<A>(_:)();
              v41 = *(&v65 + 1);
              v42 = sub_10000C4FC(&v64, *(&v65 + 1));
              v68 = v41;
              v43 = sub_100007914(&v67);
              (*(*(v41 - 8) + 16))(v43, v42, v41);
              sub_100004118(&v64);
              if (v68)
              {
                break;
              }

              sub_100004E24(&v67, &unk_1002DFC10, &qword_10022E6D0);
              v35 = sub_10000A350(v31, *(&v31 + 1), sub_10000A3D0);
              v37 = v36;

              if (v37)
              {
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                v74 = v63;
                v39 = v63[3];
                sub_100099DF4(&unk_1002DEA80, &unk_10023B9C0);
                _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v39);
                v40 = v74;

                sub_1000197D8((v40[7] + 32 * v35), &v64);
                v63 = v40;
                _NativeDictionary._delete(at:)();
              }

              else
              {
                v64 = 0u;
                v65 = 0u;
              }

              v29 = v59;
              sub_100004E24(&v64, &unk_1002DFC10, &qword_10022E6D0);
            }

            sub_1000197D8(&v67, &v64);
            v44 = swift_isUniquelyReferenced_nonNull_native();
            v74 = v63;
            v45 = sub_10000A350(v31, *(&v31 + 1), sub_10000A3D0);
            v47 = v63[2];
            v48 = (v46 & 1) == 0;
            v49 = v47 + v48;
            if (__OFADD__(v47, v48))
            {
              break;
            }

            v50 = v45;
            v51 = v46;
            sub_100099DF4(&unk_1002DEA80, &unk_10023B9C0);
            if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v44, v49))
            {
              v52 = sub_10000A350(v31, *(&v31 + 1), sub_10000A3D0);
              v29 = v59;
              if ((v51 & 1) != (v53 & 1))
              {
                goto LABEL_43;
              }

              v50 = v52;
            }

            else
            {
              v29 = v59;
            }

            if (v51)
            {

              v63 = v74;
              v54 = (v74[7] + 32 * v50);
              sub_100004118(v54);
              sub_1000197D8(&v64, v54);
            }

            else
            {
              v55 = v74;
              v74[(v50 >> 6) + 8] |= 1 << v50;
              *(v55[6] + 16 * v50) = v31;
              sub_1000197D8(&v64, (v55[7] + 32 * v50));
              v56 = v55[2];
              v57 = __OFADD__(v56, 1);
              v58 = v56 + 1;
              if (v57)
              {
                goto LABEL_41;
              }

              v63 = v55;
              v55[2] = v58;
            }
          }

          __break(1u);
LABEL_41:
          __break(1u);
          goto LABEL_42;
        }

        return sub_1001441C8(v72);
      }

      sub_10014E8FC();
      swift_allocError();
      v21 = 1;
LABEL_10:
      *v20 = v21;
      swift_willThrow();
      return sub_1001441C8(v72);
  }

  v22 = type metadata accessor for AvroBinaryDecoder();
  swift_allocObject();

  sub_10014416C(v72, v69);
  v23 = sub_1001486A8(a4, v72);
  if (!v62)
  {
    v25 = v23;
    v70 = v22;
    v71 = sub_10000DADC(&qword_1002DEA68, v24, type metadata accessor for AvroBinaryDecoder);
    v69[0] = v25;
    dispatch thunk of Decodable.init(from:)();
    return sub_1001441C8(v72);
  }

LABEL_42:
  swift_unexpectedError();
  __break(1u);
LABEL_43:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void *sub_10014B0A4@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t *a5@<X8>)
{

  sub_10014A3F4(a2, v11);
  result = sub_100149108(a1, v11, __src);
  if (!v5)
  {
    a5[3] = &type metadata for AvroUnkeyedDecodingContainer;
    a5[4] = sub_10014E950();
    v10 = swift_allocObject();
    *a5 = v10;
    return memcpy((v10 + 16), __src, 0x160uLL);
  }

  return result;
}

uint64_t sub_10014B194(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{

  sub_10014A3F4(a5, v16);
  sub_1001487F0(a4, v16, a8, a10);
  v14 = type metadata accessor for AvroKeyedDecodingContainer(0, a8, a10, v13);
  swift_getWitnessTable(byte_10023C140, v14);
  return KeyedDecodingContainer.init<A>(_:)();
}

uint64_t sub_10014B294@<X0>(uint64_t a2@<X1>, void *a3@<X8>)
{
  a3[3] = type metadata accessor for AvroBinaryDecoder();
  a3[4] = sub_10000DADC(&qword_1002DEA68, v5, type metadata accessor for AvroBinaryDecoder);
  *a3 = a2;
}

uint64_t sub_10014B314@<X0>(uint64_t a2@<X2>, void *a3@<X8>)
{
  a3[3] = type metadata accessor for AvroBinaryDecoder();
  a3[4] = sub_10000DADC(&qword_1002DEA68, v5, type metadata accessor for AvroBinaryDecoder);
  *a3 = a2;
}

uint64_t sub_10014B3F0(uint64_t a1, uint64_t a2)
{
  sub_10014A87C(&type metadata for Bool, a1, *v2, *(v2 + 8), *(v2 + 16), *(v2 + 24), *(a2 + 16), &type metadata for Bool, *(a2 + 24), &protocol witness table for Bool);
  if (!v3)
  {
    v4 = v6;
  }

  return v4 & 1;
}

uint64_t sub_10014B450(uint64_t a1, uint64_t a2)
{
  result = sub_10014A87C(&type metadata for String, a1, *v2, *(v2 + 8), *(v2 + 16), *(v2 + 24), *(a2 + 16), &type metadata for String, *(a2 + 24), &protocol witness table for String);
  if (!v3)
  {
    return v5;
  }

  return result;
}

double sub_10014B4AC(uint64_t a1, uint64_t a2)
{
  sub_10014A87C(&type metadata for Double, a1, *v2, *(v2 + 8), *(v2 + 16), *(v2 + 24), *(a2 + 16), &type metadata for Double, *(a2 + 24), &protocol witness table for Double);
  if (!v3)
  {
    return v5;
  }

  return result;
}

float sub_10014B508(uint64_t a1, uint64_t a2)
{
  sub_10014A87C(&type metadata for Float, a1, *v2, *(v2 + 8), *(v2 + 16), *(v2 + 24), *(a2 + 16), &type metadata for Float, *(a2 + 24), &protocol witness table for Float);
  if (!v3)
  {
    return v5;
  }

  return result;
}

uint64_t sub_10014B694()
{
  sub_100006AD0();
  result = sub_10000A28C(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11);
  if (!v0)
  {
    return v12;
  }

  return result;
}

uint64_t sub_10014B6F0()
{
  sub_100006AD0();
  result = sub_10000A28C(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11);
  if (!v0)
  {
    return v12;
  }

  return result;
}

uint64_t sub_10014B74C()
{
  sub_100006AD0();
  result = sub_10000A28C(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11);
  if (!v0)
  {
    return v12;
  }

  return result;
}

uint64_t sub_10014B7A8()
{
  sub_100006AD0();
  result = sub_10000A28C(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11);
  if (!v0)
  {
    return v12;
  }

  return result;
}

uint64_t sub_10014B850()
{
  result = KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:)();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_10014B8A0()
{
  result = KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:)();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_10014B948()
{
  result = KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:)();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_10014B998()
{
  result = KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:)();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_10014BAC0()
{
  result = KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:)();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_10014BB10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  result = a4(a1, a2, a3);
  if (v4)
  {
    return v6;
  }

  return result;
}

uint64_t sub_10014BCA4@<X0>(uint64_t a1@<X8>)
{
  v4 = *(v1 + 336);
  if (!v4)
  {
    goto LABEL_16;
  }

  v5 = *(v1 + 168);
  v6 = *(v1 + 192);
  v7 = *(v1 + 208);
  if (v5 >> 8 != 0xFFFFFFFF || *(v1 + 192) > 1uLL || (v7 & 0xFCFE) != 0)
  {
    if ((*(v1 + 344) & 1) == 0)
    {
      v19 = *(v1 + 192);
      if (*(v1 + 329))
      {
        sub_10000C4FC((*(v1 + 320) + 32), *(*(v1 + 320) + 56));
        result = sub_100152188();
        if (v2)
        {
          return result;
        }

        v11 = *(v1 + 128);
        __dst[0] = *(v1 + 112);
        __dst[1] = v11;
        __dst[2] = *(v1 + 144);
        *&__dst[3] = *(v1 + 160);
        *(&__dst[3] + 1) = v5;
        __dst[4] = *(v1 + 176);
        __dst[5] = v19;
      }

      else
      {
        v16 = *(v1 + 128);
        __dst[0] = *(v1 + 112);
        __dst[1] = v16;
        __dst[2] = *(v1 + 144);
        *&__dst[3] = *(v1 + 160);
        *(&__dst[3] + 1) = v5;
        __dst[4] = *(v1 + 176);
        __dst[5] = v6;
      }

      LOWORD(__dst[6]) = v7;
      result = sub_10014416C(__dst, v20);
      v12 = v19;
      v17 = *(v1 + 112);
      v18 = *(v1 + 144);
      v24 = *(v1 + 128);
      v25 = v18;
      v26 = *(v1 + 160);
      v22 = *(v1 + 176);
      v23 = v17;
      goto LABEL_17;
    }

LABEL_16:
    memcpy(__dst, (v1 + 216), 0x62uLL);
    result = sub_10014416C(__dst, v20);
    v24 = __dst[1];
    v25 = __dst[2];
    v5 = *(&__dst[3] + 1);
    v26 = *&__dst[3];
    v12 = __dst[5];
    v22 = __dst[4];
    v23 = __dst[0];
    v7 = __dst[6];
LABEL_17:
    v13 = v24;
    v14 = v25;
    v15 = v22;
    *a1 = v23;
    *(a1 + 16) = v13;
    *(a1 + 32) = v14;
    *(a1 + 48) = v26;
    *(a1 + 56) = v5;
    *(a1 + 64) = v15;
    *(a1 + 80) = v12;
    *(a1 + 96) = v7;
    return result;
  }

  if ((*(v1 + 329) & 1) == 0)
  {
    goto LABEL_16;
  }

  if (*(v1 + 344) >= v4)
  {
    goto LABEL_16;
  }

  sub_10000C4FC((*(v1 + 320) + 32), *(*(v1 + 320) + 56));
  result = sub_100152188();
  if (!v2)
  {
    goto LABEL_16;
  }

  return result;
}

void sub_10014BE70()
{
  v1 = *(v0 + 344);
  v2 = v1 + 1;
  if (__OFADD__(v1, 1))
  {
    __break(1u);
    goto LABEL_20;
  }

  *(v0 + 344) = v2;
  if (v2 == *(v0 + 336) && *(v0 + 328) == 1)
  {
    sub_10000C4FC((*(v0 + 320) + 32), *(*(v0 + 320) + 56));
    v3 = sub_100152188();
    if (v3)
    {
      if ((v3 & 0x8000000000000000) != 0)
      {
        *(v0 + 329) = 1;
        v4 = __OFSUB__(0, v3);
        v3 = -v3;
        if (v4)
        {
          goto LABEL_21;
        }
      }

      v7 = (*(v0 + 208) & 0xFCFE) != 0 || *(v0 + 168) >> 8 != 0xFFFFFFFFLL || *(v0 + 192) > 1uLL;
      v8 = v3 << v7;
      v4 = __OFADD__(v2, v8);
      v9 = v2 + v8;
      if (!v4)
      {
        *(v0 + 336) = v9;
        return;
      }

LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
    }
  }
}

uint64_t sub_10014BF6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10014BE70();
  v6 = *(v3 + 320);
  memcpy(__dst, (v3 + 8), 0x62uLL);

  sub_10014416C(__dst, v12);
  v12[0] = sub_1001487F0(v6, __dst, a2, a3);
  v12[1] = v7;
  v12[2] = v8;
  v12[3] = v9;
  v10 = type metadata accessor for AvroKeyedDecodingContainer(0, a2, a3, v9);
  swift_getWitnessTable(byte_10023C140, v10);
  return KeyedDecodingContainer.init<A>(_:)();
}

void *sub_10014C04C@<X0>(uint64_t *a1@<X8>)
{
  v4 = *(v1 + 320);
  memcpy(__dst, (v1 + 8), 0x62uLL);

  sub_10014416C(__dst, &v7);
  result = sub_100149108(v4, __dst, __src);
  if (!v2)
  {
    a1[3] = &type metadata for AvroUnkeyedDecodingContainer;
    a1[4] = sub_10014E950();
    v6 = swift_allocObject();
    *a1 = v6;
    return memcpy((v6 + 16), __src, 0x160uLL);
  }

  return result;
}

uint64_t sub_10014C10C@<X0>(void *a1@<X8>)
{
  sub_10014BE70();
  v3 = *(v1 + 320);
  a1[3] = type metadata accessor for AvroBinaryDecoder();
  a1[4] = sub_10000DADC(&qword_1002DEA68, v4, type metadata accessor for AvroBinaryDecoder);
  *a1 = v3;
}

void sub_10014C190(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v23 = a3;
  v17 = a4;
  v7 = *(a2 - 8);
  __chkstk_darwin(a1);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  memcpy(v22, v4, sizeof(v22));
  sub_10014BCA4(v21);
  if (!v5)
  {
    v15 = v7;
    v16 = v9;
    v10 = type metadata accessor for AvroBinaryDecoder();
    swift_allocObject();

    v12 = sub_1001486A8(v11, v21);
    v19 = v10;
    v20 = sub_10000DADC(&qword_1002DEA68, v13, type metadata accessor for AvroBinaryDecoder);
    v18 = v12;
    v14 = v16;
    dispatch thunk of Decodable.init(from:)();
    (*(v15 + 32))(v17, v14, a2);
  }

  sub_10014BE70();
}

BOOL sub_10014C42C()
{
  v1 = vorrq_s8(vorrq_s8(vorrq_s8(*(v0 + 8), *(v0 + 40)), vorrq_s8(*(v0 + 24), *(v0 + 56))), vorrq_s8(*(v0 + 72), *(v0 + 88)));
  if (vorr_s8(*v1.i8, *&vextq_s8(v1, v1, 8uLL)))
  {
    return 0;
  }

  else
  {
    return *(v0 + 104) == -12288;
  }
}

uint64_t sub_10014C4CC(uint64_t a1)
{
  v2 = *(v1 + 104);
  if ((v2 & 0xF000) == 0xD000 && ((v3 = vorrq_s8(vorrq_s8(*(v1 + 40), *(v1 + 72)), vorrq_s8(*(v1 + 56), *(v1 + 88))), v4 = *&vorr_s8(*v3.i8, *&vextq_s8(v3, v3, 8uLL)) | *(v1 + 32) | *(v1 + 24) | *(v1 + 16), v2 == 53248) ? (v5 = *(v1 + 8) == 1) : (v5 = 0), v5 ? (v6 = v4 == 0) : (v6 = 0), v6))
  {
    sub_10000C4FC((*(v1 + 320) + 32), *(*(v1 + 320) + 56));
    v8 = sub_1001520EC();
  }

  else
  {
    sub_10014E8FC();
    swift_allocError();
    *v7 = 3;
    v8 = swift_willThrow();
  }

  return v8 & 1;
}

uint64_t sub_10014C5A8(uint64_t a1)
{
  v2 = *(v1 + 104);
  if ((v2 & 0xF000) == 0xD000 && ((v3 = vorrq_s8(vorrq_s8(*(v1 + 40), *(v1 + 72)), vorrq_s8(*(v1 + 56), *(v1 + 88))), v4 = *&vorr_s8(*v3.i8, *&vextq_s8(v3, v3, 8uLL)) | *(v1 + 32) | *(v1 + 24) | *(v1 + 16), v2 == 53248) ? (v5 = *(v1 + 8) == 1) : (v5 = 0), v5 ? (v6 = v4 == 0) : (v6 = 0), v6))
  {
    sub_10000C4FC((*(v1 + 112) + 32), *(*(v1 + 112) + 56));
    v8 = sub_1001520EC();
  }

  else
  {
    sub_10014E8FC();
    swift_allocError();
    *v7 = 3;
    v8 = swift_willThrow();
  }

  return v8 & 1;
}

unint64_t sub_10014C6D0(uint64_t a1)
{
  v3 = *(v1 + 8);
  v4 = *(v1 + 104);
  if (v4 >> 12 != 4)
  {
    if (v4 >> 12 == 13 && ((v5 = vorrq_s8(vorrq_s8(*(v1 + 40), *(v1 + 72)), vorrq_s8(*(v1 + 56), *(v1 + 88))), v6 = *&vorr_s8(*v5.i8, *&vextq_s8(v5, v5, 8uLL)) | *(v1 + 32) | *(v1 + 24) | *(v1 + 16), v4 == 53248) ? (v7 = v3 == 4) : (v7 = 0), v7 ? (v8 = v6 == 0) : (v8 = 0), v8))
    {
      v1 = *sub_10000C4FC((*(v1 + 112) + 32), *(*(v1 + 112) + 56));
      v12 = sub_1001523D4();
      if (!v2)
      {
        return v12;
      }
    }

    else
    {
      sub_10014E8FC();
      swift_allocError();
      *v9 = 16;
      swift_willThrow();
    }

    return v1;
  }

  v10 = *(v3 + 88);
  v1 = *sub_10000C4FC((*(v1 + 112) + 32), *(*(v1 + 112) + 56));
  result = sub_100152188();
  if (v2)
  {
    return v1;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *(v10 + 16))
  {
    v1 = *(v10 + 16 * result + 32);

    return v1;
  }

  __break(1u);
  return result;
}

unint64_t sub_10014C824(uint64_t a1)
{
  v3 = *(v1 + 8);
  v4 = *(v1 + 104);
  if (v4 >> 12 != 4)
  {
    if (v4 >> 12 == 13 && ((v5 = vorrq_s8(vorrq_s8(*(v1 + 40), *(v1 + 72)), vorrq_s8(*(v1 + 56), *(v1 + 88))), v6 = *&vorr_s8(*v5.i8, *&vextq_s8(v5, v5, 8uLL)) | *(v1 + 32) | *(v1 + 24) | *(v1 + 16), v4 == 53248) ? (v7 = v3 == 4) : (v7 = 0), v7 ? (v8 = v6 == 0) : (v8 = 0), v8))
    {
      v1 = *sub_10000C4FC((*(v1 + 320) + 32), *(*(v1 + 320) + 56));
      v12 = sub_1001523D4();
      if (!v2)
      {
        return v12;
      }
    }

    else
    {
      sub_10014E8FC();
      swift_allocError();
      *v9 = 16;
      swift_willThrow();
    }

    return v1;
  }

  v10 = *(v3 + 88);
  v1 = *sub_10000C4FC((*(v1 + 320) + 32), *(*(v1 + 320) + 56));
  result = sub_100152188();
  if (v2)
  {
    return v1;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *(v10 + 16))
  {
    v1 = *(v10 + 16 * result + 32);

    return v1;
  }

  __break(1u);
  return result;
}

void sub_10014C9C4()
{
  v2 = *(v0 + 24);
  v3 = *(v0 + 104);
  if (v3 >> 12)
  {
    if (v3 >> 12 == 13)
    {
      v4 = vorrq_s8(vorrq_s8(*(v0 + 40), *(v0 + 72)), vorrq_s8(*(v0 + 56), *(v0 + 88)));
      v5 = *&vorr_s8(*v4.i8, *&vextq_s8(v4, v4, 8uLL)) | *(v0 + 32) | *(v0 + 16) | v2;
      v6 = v3 == 53248 && *(v0 + 8) == 3;
      if (v6 && v5 == 0)
      {
        sub_10000C4FC((*(v0 + 320) + 32), *(*(v0 + 320) + 56));
        sub_100152374();
        return;
      }
    }

    goto LABEL_13;
  }

  if (*(v0 + 24) == 7)
  {
LABEL_13:
    sub_10014E8FC();
    swift_allocError();
    *v8 = 15;
    swift_willThrow();
    return;
  }

  if (sub_100161910(v2) == 1702125924 && v9 == 0xE400000000000000)
  {
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v11 & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  sub_10000C4FC((*(v0 + 320) + 32), *(*(v0 + 320) + 56));
  sub_100152188();
  if (!v1)
  {
    static Date.timeIntervalBetween1970AndReferenceDate.getter();
  }
}

void sub_10014CB48()
{
  v2 = *(v0 + 24);
  v3 = *(v0 + 104);
  if (v3 >> 12)
  {
    if (v3 >> 12 == 13)
    {
      v4 = vorrq_s8(vorrq_s8(*(v0 + 40), *(v0 + 72)), vorrq_s8(*(v0 + 56), *(v0 + 88)));
      v5 = *&vorr_s8(*v4.i8, *&vextq_s8(v4, v4, 8uLL)) | *(v0 + 32) | *(v0 + 16) | v2;
      v6 = v3 == 53248 && *(v0 + 8) == 3;
      if (v6 && v5 == 0)
      {
        sub_10000C4FC((*(v0 + 112) + 32), *(*(v0 + 112) + 56));
        sub_100152374();
        return;
      }
    }

    goto LABEL_13;
  }

  if (*(v0 + 24) == 7)
  {
LABEL_13:
    sub_10014E8FC();
    swift_allocError();
    *v8 = 15;
    swift_willThrow();
    return;
  }

  if (sub_100161910(v2) == 1702125924 && v9 == 0xE400000000000000)
  {
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v11 & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  sub_10000C4FC((*(v0 + 112) + 32), *(*(v0 + 112) + 56));
  sub_100152188();
  if (!v1)
  {
    static Date.timeIntervalBetween1970AndReferenceDate.getter();
  }
}

void sub_10014CD18(uint64_t a1)
{
  v2 = *(v1 + 104);
  if ((v2 & 0xF000) == 0xD000 && ((v3 = vorrq_s8(vorrq_s8(*(v1 + 40), *(v1 + 72)), vorrq_s8(*(v1 + 56), *(v1 + 88))), v4 = *&vorr_s8(*v3.i8, *&vextq_s8(v3, v3, 8uLL)) | *(v1 + 32) | *(v1 + 24) | *(v1 + 16), v2 == 53248) ? (v5 = *(v1 + 8) == 2) : (v5 = 0), v5 ? (v6 = v4 == 0) : (v6 = 0), v6))
  {
    sub_10000C4FC((*(v1 + 320) + 32), *(*(v1 + 320) + 56));
    sub_100152314();
  }

  else
  {
    sub_10014E8FC();
    swift_allocError();
    *v7 = 14;
    swift_willThrow();
  }
}

void sub_10014CDF0(uint64_t a1)
{
  v2 = *(v1 + 104);
  if ((v2 & 0xF000) == 0xD000 && ((v3 = vorrq_s8(vorrq_s8(*(v1 + 40), *(v1 + 72)), vorrq_s8(*(v1 + 56), *(v1 + 88))), v4 = *&vorr_s8(*v3.i8, *&vextq_s8(v3, v3, 8uLL)) | *(v1 + 32) | *(v1 + 24) | *(v1 + 16), v2 == 53248) ? (v5 = *(v1 + 8) == 2) : (v5 = 0), v5 ? (v6 = v4 == 0) : (v6 = 0), v6))
  {
    sub_10000C4FC((*(v1 + 112) + 32), *(*(v1 + 112) + 56));
    sub_100152314();
  }

  else
  {
    sub_10014E8FC();
    swift_allocError();
    *v7 = 14;
    swift_willThrow();
  }
}

unint64_t sub_10014CF14(uint64_t a1)
{
  if ((*(v1 + 104) & 0xE000) != 0)
  {
    sub_10014E8FC();
    swift_allocError();
    *v3 = 4;
    return swift_willThrow();
  }

  else
  {
    sub_10000C4FC((*(v1 + 320) + 32), *(*(v1 + 320) + 56));
    return sub_100152188();
  }
}

unint64_t sub_10014CF9C(uint64_t a1)
{
  if ((*(v1 + 104) & 0xE000) != 0)
  {
    sub_10014E8FC();
    swift_allocError();
    *v3 = 4;
    return swift_willThrow();
  }

  else
  {
    sub_10000C4FC((*(v1 + 112) + 32), *(*(v1 + 112) + 56));
    return sub_100152188();
  }
}

uint64_t sub_10014D070(uint64_t a1)
{
  if ((*(v1 + 104) & 0xE000) != 0)
  {
    sub_10014E8FC();
    swift_allocError();
    *v3 = 5;
    return swift_willThrow();
  }

  else
  {
    sub_10000C4FC((*(v1 + 320) + 32), *(*(v1 + 320) + 56));
    return sub_1001521BC();
  }
}

uint64_t sub_10014D0F8(uint64_t a1)
{
  if ((*(v1 + 104) & 0xE000) != 0)
  {
    sub_10014E8FC();
    swift_allocError();
    *v3 = 5;
    return swift_willThrow();
  }

  else
  {
    sub_10000C4FC((*(v1 + 112) + 32), *(*(v1 + 112) + 56));
    return sub_1001521BC();
  }
}

uint64_t sub_10014D230(uint64_t a1)
{
  v2 = *(v1 + 104) >> 12;
  v3 = v2 > 0xB;
  v4 = (1 << v2) & 0xDE9;
  if (v3 || v4 == 0)
  {
    sub_10014E8FC();
    swift_allocError();
    *v7 = 7;
    return swift_willThrow();
  }

  else
  {
    sub_10000C4FC((*(v1 + 320) + 32), *(*(v1 + 320) + 56));
    return sub_100152154();
  }
}

uint64_t sub_10014D2D0(uint64_t a1)
{
  v2 = *(v1 + 104) >> 12;
  v3 = v2 > 0xB;
  v4 = (1 << v2) & 0xDE9;
  if (v3 || v4 == 0)
  {
    sub_10014E8FC();
    swift_allocError();
    *v7 = 7;
    return swift_willThrow();
  }

  else
  {
    sub_10000C4FC((*(v1 + 112) + 32), *(*(v1 + 112) + 56));
    return sub_100152154();
  }
}

unint64_t sub_10014D3BC(uint64_t a1)
{
  if ((*(v1 + 104) & 0xF000) == 0x1000)
  {
    sub_10000C4FC((*(v1 + 320) + 32), *(*(v1 + 320) + 56));
    return sub_100152188();
  }

  else
  {
    sub_10014E8FC();
    swift_allocError();
    *v3 = 8;
    return swift_willThrow();
  }
}

unint64_t sub_10014D448(uint64_t a1)
{
  if ((*(v1 + 104) & 0xF000) == 0x1000)
  {
    sub_10000C4FC((*(v1 + 112) + 32), *(*(v1 + 112) + 56));
    return sub_100152188();
  }

  else
  {
    sub_10014E8FC();
    swift_allocError();
    *v3 = 8;
    return swift_willThrow();
  }
}

unint64_t sub_10014D538(uint64_t result)
{
  if ((*(v1 + 104) & 0xE000) != 0)
  {
    goto LABEL_5;
  }

  sub_10000C4FC((*(v1 + 320) + 32), *(*(v1 + 320) + 56));
  v3 = sub_100152188();
  if (!v2 && (v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_5:
    sub_10014E8FC();
    swift_allocError();
    *v4 = 9;
    return swift_willThrow();
  }

  return v3;
}

unint64_t sub_10014D5C4(uint64_t result)
{
  if ((*(v1 + 104) & 0xE000) != 0)
  {
    goto LABEL_5;
  }

  sub_10000C4FC((*(v1 + 112) + 32), *(*(v1 + 112) + 56));
  v3 = sub_100152188();
  if (!v2 && (v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_5:
    sub_10014E8FC();
    swift_allocError();
    *v4 = 9;
    return swift_willThrow();
  }

  return v3;
}

uint64_t sub_10014D69C(uint64_t a1)
{
  v2 = *(v1 + 104) >> 12;
  if (v2 == 8 || v2 == 2)
  {
    sub_10000C4FC((*(v1 + 320) + 32), *(*(v1 + 320) + 56));
    return sub_100152224();
  }

  else
  {
    sub_10014E8FC();
    swift_allocError();
    *v4 = 10;
    return swift_willThrow();
  }
}

uint64_t sub_10014D72C(uint64_t a1)
{
  v2 = *(v1 + 104) >> 12;
  if (v2 == 8 || v2 == 2)
  {
    sub_10000C4FC((*(v1 + 112) + 32), *(*(v1 + 112) + 56));
    return sub_100152224();
  }

  else
  {
    sub_10014E8FC();
    swift_allocError();
    *v4 = 10;
    return swift_willThrow();
  }
}

uint64_t sub_10014D820(uint64_t (*a1)(uint64_t), char a2)
{
  if ((*(v2 + 104) & 0xE000) != 0)
  {
    sub_10014E8FC();
    swift_allocError();
    *v7 = a2;
    return swift_willThrow();
  }

  else
  {
    v4 = sub_100007D24((*(v2 + 320) + 32), *(*(v2 + 320) + 56));
    return a1(v4);
  }
}

uint64_t sub_10014D8B0(uint64_t (*a1)(uint64_t), char a2)
{
  if ((*(v2 + 104) & 0xE000) != 0)
  {
    sub_10014E8FC();
    swift_allocError();
    *v7 = a2;
    return swift_willThrow();
  }

  else
  {
    v4 = sub_100007D24((*(v2 + 112) + 32), *(*(v2 + 112) + 56));
    return a1(v4);
  }
}

uint64_t sub_10014D98C(uint64_t a1)
{
  if ((*(v1 + 104) & 0xF000) == 0x8000)
  {
    sub_10000C4FC((*(v1 + 320) + 32), *(*(v1 + 320) + 56));
    return sub_1001522B4();
  }

  else
  {
    sub_10014E8FC();
    swift_allocError();
    *v3 = 12;
    return swift_willThrow();
  }
}

uint64_t sub_10014DA18(uint64_t a1)
{
  if ((*(v1 + 104) & 0xF000) == 0x8000)
  {
    sub_10000C4FC((*(v1 + 112) + 32), *(*(v1 + 112) + 56));
    return sub_1001522B4();
  }

  else
  {
    sub_10014E8FC();
    swift_allocError();
    *v3 = 12;
    return swift_willThrow();
  }
}

unint64_t sub_10014DAF0(uint64_t result)
{
  if ((*(v1 + 104) & 0xF000) != 0x1000)
  {
    goto LABEL_5;
  }

  sub_10000C4FC((*(v1 + 320) + 32), *(*(v1 + 320) + 56));
  v3 = sub_100152188();
  if (!v2 && (v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_5:
    sub_10014E8FC();
    swift_allocError();
    *v4 = 13;
    return swift_willThrow();
  }

  return v3;
}

unint64_t sub_10014DB80(uint64_t result)
{
  if ((*(v1 + 104) & 0xF000) != 0x1000)
  {
    goto LABEL_5;
  }

  sub_10000C4FC((*(v1 + 112) + 32), *(*(v1 + 112) + 56));
  v3 = sub_100152188();
  if (!v2 && (v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_5:
    sub_10014E8FC();
    swift_allocError();
    *v4 = 13;
    return swift_willThrow();
  }

  return v3;
}

uint64_t sub_10014DC70()
{
  result = UnkeyedDecodingContainer.decodeIfPresent(_:)();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_10014DCC0()
{
  result = UnkeyedDecodingContainer.decodeIfPresent(_:)();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_10014DD68()
{
  result = UnkeyedDecodingContainer.decodeIfPresent(_:)();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_10014DDB8()
{
  result = UnkeyedDecodingContainer.decodeIfPresent(_:)();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_10014DEE0()
{
  result = UnkeyedDecodingContainer.decodeIfPresent(_:)();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_10014DF30(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  result = a3(a1, a2);
  if (v3)
  {
    return v5;
  }

  return result;
}

void *sub_10014E470(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = (*(a4 + 16))(a2, a4);
  (*(a4 + 40))(v11, a2, a4);
  type metadata accessor for AvroBinaryDecoder();
  swift_allocObject();
  result = sub_1001486A8(v8, v11);
  if (!v5)
  {
    sub_10000DADC(&qword_1002DEA68, v10, type metadata accessor for AvroBinaryDecoder);
    return dispatch thunk of Decodable.init(from:)();
  }

  return result;
}

uint64_t type metadata accessor for AvroDecoder(uint64_t a1)
{
  result = qword_1002DE770;
  if (!qword_1002DE770)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10014E630(uint64_t a1)
{
  result = type metadata accessor for CodingUserInfoKey();
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

unint64_t sub_10014E760()
{
  result = qword_1002DE948;
  if (!qword_1002DE948)
  {
    result = swift_getWitnessTable("y5\a", &type metadata for AvroSingleValueDecodingContainer, v0, v1);
    atomic_store(result, &qword_1002DE948);
  }

  return result;
}

uint64_t sub_10014E7B4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, unsigned __int16 a13)
{
  switch(a13 >> 12)
  {
    case 0:
    case 1:
    case 2:
      goto LABEL_6;
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
    case 9:
    case 0xA:
    case 0xB:

      break;
    case 8:
    case 0xC:

LABEL_6:

      break;
    default:
      return v13;
  }

  return v13;
}

unint64_t sub_10014E8FC()
{
  result = qword_1002DE950;
  if (!qword_1002DE950)
  {
    result = swift_getWitnessTable("i+\a", &type metadata for BinaryDecodingError, v0, v1);
    atomic_store(result, &qword_1002DE950);
  }

  return result;
}

unint64_t sub_10014E950()
{
  result = qword_1002DE958;
  if (!qword_1002DE958)
  {
    result = swift_getWitnessTable(byte_10023C2C0, &type metadata for AvroUnkeyedDecodingContainer, v0, v1);
    atomic_store(result, &qword_1002DE958);
  }

  return result;
}

unint64_t sub_10014EB48()
{
  sub_100004FE0();
  Hasher.init(_seed:)();
  sub_1000B72B8(v3);
  v1 = Hasher._finalize()();

  return sub_10014ED40(v0, v1);
}

unint64_t sub_10014EBB0()
{
  sub_100004FE0();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v1 = Hasher._finalize()();

  return sub_10014EF7C(v0, v1);
}

unint64_t sub_10014EC40()
{
  sub_100004FE0();
  Hasher.init(_seed:)();
  sub_1001113D4(v3);
  v1 = Hasher._finalize()();

  return sub_10014F074(v0, v1);
}

unint64_t sub_10014ECA8()
{
  sub_100005150();
  type metadata accessor for CodingUserInfoKey();
  dispatch thunk of Hashable._rawHashValue(seed:)();
  v0 = sub_100004938();

  return sub_10014F31C(v0, v1);
}

unint64_t sub_10014ECFC(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return sub_10014F4A0(a1, v4);
}

unint64_t sub_10014ED40(uint64_t *a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v23 = ~v3;
    v6 = *a1;
    v7 = a1[1];
    do
    {
      v8 = *(v25 + 48) + 40 * v4;
      v9 = *(v8 + 16);
      v11 = *(v8 + 24);
      v10 = *(v8 + 32);
      v12 = *v8 == v6 && *(v8 + 8) == v7;
      if (!v12 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        goto LABEL_33;
      }

      if (v9)
      {
        if (v9 == 1)
        {
          v13 = 0xE600000000000000;
          v14 = 0x444972657375;
        }

        else
        {
          v13 = 0xE800000000000000;
          v14 = 0x4449746E65696C63;
        }
      }

      else
      {
        v13 = 0xE400000000000000;
        v14 = 1684632420;
      }

      v15 = *(a1 + 16);
      if (*(a1 + 16))
      {
        if (v15 == 1)
        {
          v16 = 0x444972657375;
        }

        else
        {
          v16 = 0x4449746E65696C63;
        }

        if (v15 == 1)
        {
          v17 = 0xE600000000000000;
        }

        else
        {
          v17 = 0xE800000000000000;
        }
      }

      else
      {
        v17 = 0xE400000000000000;
        v16 = 1684632420;
      }

      if (v14 == v16 && v13 == v17)
      {
      }

      else
      {
        v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v19 & 1) == 0)
        {

          goto LABEL_33;
        }
      }

      if (v11 == a1[3] && v10 == a1[4])
      {

        return v4;
      }

      v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v21)
      {
        return v4;
      }

LABEL_33:
      v4 = (v4 + 1) & v23;
    }

    while (((*(v24 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_10014EF7C(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
  for (i = a2 & v3; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v3)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
    if (v5 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v7 == v8)
    {

      return i;
    }

    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v10)
    {
      return i;
    }
  }

  return i;
}

unint64_t sub_10014F074(uint64_t *a1, uint64_t a2)
{
  v29 = type metadata accessor for TSDataSyncDatasetGroupIdentifier(0);
  __chkstk_darwin(v29);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = v2 + 64;
  v32 = v2;
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v30 = ~v8;
    v10 = 0x4449746E65696C63;
    v11 = *a1;
    v12 = a1[1];
    v13 = *(v5 + 72);
    do
    {
      sub_10011C544(*(v32 + 48) + v13 * v9, v7);
      v14 = *v7 == v11 && *(v7 + 1) == v12;
      if (!v14 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        goto LABEL_44;
      }

      v15 = v7[16];
      if (v7[16])
      {
        v16 = 0x444972657375;
        if (v15 == 1)
        {
          v17 = 0x444972657375;
        }

        else
        {
          v17 = v10;
        }

        if (v15 == 1)
        {
          v18 = 0xE600000000000000;
        }

        else
        {
          v18 = 0xE800000000000000;
        }
      }

      else
      {
        v18 = 0xE400000000000000;
        v17 = 1684632420;
        v16 = 0x444972657375;
      }

      v19 = *(a1 + 16);
      v20 = v10;
      if (v19 != 1)
      {
        v16 = v10;
      }

      v21 = 0xE600000000000000;
      if (v19 != 1)
      {
        v21 = 0xE800000000000000;
      }

      if (*(a1 + 16))
      {
        v22 = v16;
      }

      else
      {
        v22 = 1684632420;
      }

      if (*(a1 + 16))
      {
        v23 = v21;
      }

      else
      {
        v23 = 0xE400000000000000;
      }

      if (v17 == v22 && v18 == v23)
      {

        v10 = v20;
      }

      else
      {
        v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v10 = v20;
        if ((v25 & 1) == 0)
        {
          goto LABEL_44;
        }
      }

      v26 = *(v7 + 3) == a1[3] && *(v7 + 4) == a1[4];
      if (v26 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v27 = *(v7 + 5) == a1[5] && *(v7 + 6) == a1[6];
        if (v27 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (static AccountIdentity.== infix(_:_:)())
        {
          sub_10011C5A8(v7);
          return v9;
        }
      }

LABEL_44:
      sub_10011C5A8(v7);
      v9 = (v9 + 1) & v30;
    }

    while (((*(v31 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

unint64_t sub_10014F31C(uint64_t a1, uint64_t a2)
{
  v13[1] = a1;
  v4 = type metadata accessor for CodingUserInfoKey();
  v5 = *(v4 - 8);
  v6.n128_f64[0] = __chkstk_darwin(v4);
  v8 = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = v2;
  v15 = v2 + 64;
  v9 = ~(-1 << *(v2 + 32));
  for (i = a2 & v9; ((1 << i) & *(v15 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v9)
  {
    (*(v5 + 16))(v8, *(v14 + 48) + *(v5 + 72) * i, v4, v6);
    v11 = dispatch thunk of static Equatable.== infix(_:_:)();
    (*(v5 + 8))(v8, v4);
    if (v11)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_10014F4A0(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
  for (i = a2 & v3; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v3)
  {
    sub_10011723C(*(v2 + 48) + 40 * i, v7);
    v5 = static AnyHashable.== infix(_:_:)();
    sub_100117298(v7);
    if (v5)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_10014F564()
{
  sub_100002EA8();
  sub_100003994();
  sub_100004C1C();
  sub_10000BCF4(v1, v2, v3);
  sub_100006768();
  if (v4)
  {
    __break(1u);
LABEL_13:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  sub_1001514E8();
  sub_100099DF4(&qword_1002DE968, &unk_10023B920);
  if (sub_1000073A0())
  {
    sub_100004C1C();
    sub_100151560(v5, v6, v7);
    sub_10000775C();
    if (!v8)
    {
      goto LABEL_13;
    }
  }

  if (v0)
  {
    sub_10015150C();

    return sub_10015078C(v9, v10);
  }

  else
  {
    v13 = sub_1000083B8();
    sub_10015073C(v13, v14, v15, v16, v17);
    sub_10015150C();
  }
}

uint64_t sub_10014F648()
{
  sub_100004168();
  sub_10000463C();
  sub_100004C1C();
  sub_10000A350(v1, v4, v3);
  sub_100006768();
  if (v6)
  {
    __break(1u);
LABEL_13:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v7 = v5;
  sub_100099DF4(&qword_1002DBC60, &unk_10023F210);
  v8 = sub_1001514BC();
  v10 = _NativeDictionary.ensureUnique(isUnique:capacity:)(v8, v9);
  if (v10)
  {
    sub_100004C1C();
    sub_10000A350(v1, v0, v15);
    sub_1000053AC();
    if (!v16)
    {
      goto LABEL_13;
    }
  }

  if (v7)
  {
    sub_100013E0C(v10, v11, v12, v13, v14, *v2);
    sub_1000027F8();
  }

  else
  {
    v19 = sub_100014094();
    sub_1001507E8(v19, v20, v21, v22, v23, v24);
    sub_1000027F8();
  }
}

void sub_10014F748(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_100004168();
  sub_1001514D8();
  type metadata accessor for AccountIdentity();
  sub_100003724();
  __chkstk_darwin(v12);
  sub_10000306C();
  sub_1000040A0();
  sub_100006768();
  if (v14)
  {
    __break(1u);
LABEL_10:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  v15 = v13;
  sub_100099DF4(&qword_1002DB2D8, &qword_100231B90);
  if (sub_1000073A0())
  {
    sub_10000DA08();
    if ((v15 & 1) != (v16 & 1))
    {
      goto LABEL_10;
    }
  }

  if (v15)
  {
    type metadata accessor for Date();
    sub_10000307C();
    sub_1000027F8();

    v20(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10, a11, a12);
  }

  else
  {
    v25 = sub_100151578();
    v26(v25);
    sub_10000F3D0();
    sub_100150834(v27, v28, v29, v30);
    sub_1000027F8();
  }
}

void sub_10014F8C8()
{
  sub_100004168();
  sub_1001514D8();
  type metadata accessor for AccountIdentity();
  sub_100003724();
  __chkstk_darwin(v0);
  sub_10000306C();
  sub_1000040A0();
  sub_100006768();
  if (v2)
  {
    __break(1u);
LABEL_10:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  v3 = v1;
  sub_100099DF4(&unk_1002E0040, &qword_10023B9A8);
  if (sub_1000073A0())
  {
    sub_10000DA08();
    if ((v3 & 1) != (v4 & 1))
    {
      goto LABEL_10;
    }
  }

  if (v3)
  {
    sub_10000DF30();
    sub_1000027F8();
  }

  else
  {
    v6 = sub_100151578();
    v7(v6);
    sub_10000F3D0();
    sub_100150928(v8, v9, v10, v11);
    sub_1000027F8();
  }
}

uint64_t sub_10014FA20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_100002EA8();
  sub_10000D070();
  sub_1001515B0();
  sub_100002A8C();
  sub_100004C1C();
  sub_10000A350(v11, v10, v12);
  sub_100006768();
  if (v14)
  {
    __break(1u);
LABEL_13:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v15 = v13;
  sub_100099DF4(&qword_1002DEA20, &qword_10023B970);
  if (sub_1000073A0())
  {
    sub_100004C1C();
    v16 = sub_10000A874();
    sub_10000A350(v16, v17, v18);
    sub_1000053AC();
    if (!v19)
    {
      goto LABEL_13;
    }
  }

  if (v15)
  {
    type metadata accessor for Date();
    sub_10000307C();
    sub_10015150C();

    return v23(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10);
  }

  else
  {
    v29 = sub_10000B054();
    sub_1001509E0(v29, v30, v31, v32, v33);
    sub_10015150C();
  }
}

void sub_10014FB5C()
{
  sub_100004168();
  sub_10000D070();
  v4 = v3;
  v6 = v5;
  sub_100004C1C();
  sub_10000BCF4(v7, v8, v9);
  sub_100006768();
  if (v10)
  {
    __break(1u);
LABEL_12:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  sub_1001514E8();
  v11 = sub_10003CF74();
  sub_100099DF4(v11, v12);
  if (sub_1000073A0())
  {
    sub_100004C1C();
    sub_100151560(v13, v14, v15);
    sub_10000775C();
    if (!v17)
    {
      goto LABEL_12;
    }

    v2 = v16;
  }

  if (v1)
  {
    *(*(*v0 + 56) + v2) = v6;
    sub_1000027F8();
  }

  else
  {
    v18 = sub_10000F0D0();
    sub_100150A90(v18, v19, v4, v6, v20);
    sub_1000027F8();
  }
}

void sub_10014FC3C()
{
  sub_100002EA8();
  sub_100003994();
  sub_100004C1C();
  sub_10000BCF4(v4, v5, v6);
  sub_100006768();
  if (v7)
  {
    __break(1u);
LABEL_12:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  sub_1001514E8();
  sub_100099DF4(&qword_1002DEA18, &qword_10023B968);
  if (sub_1000073A0())
  {
    sub_100004C1C();
    sub_100151560(v8, v9, v10);
    sub_10000775C();
    if (!v12)
    {
      goto LABEL_12;
    }

    v3 = v11;
  }

  if (v2)
  {
    *(*(*v1 + 56) + 8 * v3) = v0;
    sub_10015150C();
  }

  else
  {
    v13 = sub_1000083B8();
    sub_10000A8B8(v13, v14, v15, v16, v17);
    sub_10015150C();
  }
}

void sub_10014FD08()
{
  sub_100002EA8();
  sub_10000D070();
  sub_1001515B0();
  sub_100002A8C();
  sub_100004C1C();
  sub_10000A350(v3, v1, v4);
  sub_100006768();
  if (v7)
  {
    __break(1u);
LABEL_12:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  v8 = v5;
  v9 = v6;
  sub_100099DF4(&qword_1002DEA10, &qword_10023B960);
  if (sub_1000073A0())
  {
    sub_100004C1C();
    v10 = sub_10000A874();
    sub_10000A350(v10, v11, v12);
    sub_1000053AC();
    if (!v14)
    {
      goto LABEL_12;
    }

    v8 = v13;
  }

  if (v9)
  {
    v15 = *(*v2 + 56);
    v16 = type metadata accessor for TSDataSyncTriggerEvent(0);
    sub_1000030B8(v16);
    sub_100150DC4(v0, v15 + *(v17 + 72) * v8, type metadata accessor for TSDataSyncTriggerEvent);
    sub_10015150C();
  }

  else
  {
    v18 = sub_10000B054();
    sub_100150B10(v18, v19, v20, v21, v22, v23, v24);
    sub_10015150C();
  }
}

uint64_t sub_10014FE48()
{
  sub_100004168();
  sub_10000463C();
  sub_100004C1C();
  sub_10000A350(v1, v4, v3);
  sub_100006768();
  if (v6)
  {
    __break(1u);
LABEL_13:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v7 = v5;
  sub_100099DF4(&qword_1002DEA38, &qword_10023B988);
  v8 = sub_1001514BC();
  v10 = _NativeDictionary.ensureUnique(isUnique:capacity:)(v8, v9);
  if (v10)
  {
    sub_100004C1C();
    sub_10000A350(v1, v0, v15);
    sub_1000053AC();
    if (!v16)
    {
      goto LABEL_13;
    }
  }

  if (v7)
  {
    sub_100013E0C(v10, v11, v12, v13, v14, *v2);
    sub_1000027F8();
  }

  else
  {
    v19 = sub_100014094();
    sub_100150AC4(v19, v20, v21, v22, v23, v24);
    sub_1000027F8();
  }
}

void sub_10014FF48()
{
  sub_100002EA8();
  sub_10000D070();
  sub_1001515B0();
  sub_100002A8C();
  sub_100004C1C();
  sub_10000A350(v3, v1, v4);
  sub_100006768();
  if (v7)
  {
    __break(1u);
LABEL_12:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  v8 = v5;
  v9 = v6;
  sub_100099DF4(&unk_1002DEA00, &unk_10023B950);
  if (sub_1000073A0())
  {
    sub_100004C1C();
    v10 = sub_10000A874();
    sub_10000A350(v10, v11, v12);
    sub_1000053AC();
    if (!v14)
    {
      goto LABEL_12;
    }

    v8 = v13;
  }

  if (v9)
  {
    v15 = *(*v2 + 56);
    v16 = type metadata accessor for TSDataSyncDatasetState(0);
    sub_1000030B8(v16);
    sub_100150DC4(v0, v15 + *(v17 + 72) * v8, type metadata accessor for TSDataSyncDatasetState);
    sub_10015150C();
  }

  else
  {
    v18 = sub_10000B054();
    sub_100150B10(v18, v19, v20, v21, v22, v23, v24);
    sub_10015150C();
  }
}

unint64_t sub_1001500B4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_10000A350(a2, a3, sub_10000A3D0);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_11;
  }

  v16 = v11;
  v17 = v12;
  sub_100099DF4(&unk_1002DEA50, &qword_10023B9A0);
  result = _NativeDictionary.ensureUnique(isUnique:capacity:)(a4 & 1, v15);
  if ((result & 1) == 0)
  {
    goto LABEL_5;
  }

  result = sub_10000A350(a2, a3, sub_10000A3D0);
  if ((v17 & 1) != (v19 & 1))
  {
LABEL_11:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v16 = result;
LABEL_5:
  v20 = *v5;
  if (v17)
  {
    *(v20[7] + 8 * v16) = a1;
  }

  else
  {
    sub_10000A8B8(v16, a2, a3, a1, v20);
  }

  return result;
}

void sub_100150204()
{
  sub_100004168();
  v1 = sub_1001514D8();
  type metadata accessor for TSDataSyncDatasetGroupIdentifier(v1);
  sub_10000307C();
  __chkstk_darwin(v2);
  sub_10000306C();
  v5 = v4 - v3;
  sub_10014EC40();
  sub_100006768();
  if (v7)
  {
    __break(1u);
LABEL_11:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  v8 = v6;
  sub_100099DF4(&unk_1002DEA40, &unk_10023B990);
  v9 = sub_1001514BC();
  if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v9, v10))
  {
    sub_10014EC40();
    sub_10000C690();
    if (!v11)
    {
      goto LABEL_11;
    }
  }

  if (v8)
  {
    sub_10000DF30();
    sub_1000027F8();
  }

  else
  {
    sub_10011C544(v0, v5);
    sub_10000F3D0();
    sub_100150B94(v13, v14, v15, v16);
    sub_1000027F8();
  }
}

_OWORD *sub_10015032C(uint64_t a1, uint64_t a2, char a3)
{
  v5 = v4;
  sub_100002A8C();
  sub_10014ECFC(v8);
  sub_100006768();
  if (v11)
  {
    __break(1u);
LABEL_12:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v12 = v9;
  v13 = v10;
  sub_100099DF4(&qword_1002DE9F0, &qword_10023B940);
  if (_NativeDictionary.ensureUnique(isUnique:capacity:)(a3 & 1, v4))
  {
    sub_10014ECFC(a2);
    sub_10000775C();
    if (!v15)
    {
      goto LABEL_12;
    }

    v12 = v14;
  }

  if (v13)
  {
    v16 = (*(*v4 + 56) + 32 * v12);
    sub_100004118((*(*v5 + 56) + 32 * v12));

    return sub_1000197D8(v3, v16);
  }

  else
  {
    sub_10011723C(a2, v22);
    sub_10000F3D0();
    return sub_100150C48(v18, v19, v20, v21);
  }
}

uint64_t sub_100150450()
{
  sub_100004168();
  sub_10000463C();
  v4 = v3;
  v6 = v5;
  sub_100004C1C();
  sub_10000A350(v1, v8, v7);
  sub_100006768();
  if (v11)
  {
    __break(1u);
LABEL_14:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v12 = v9;
  v13 = v10;
  sub_100099DF4(&qword_1002DE9F8, &qword_10023B948);
  v14 = sub_1001514BC();
  if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v14, v15))
  {
    sub_100004C1C();
    sub_10000A350(v1, v0, v16);
    sub_10000C690();
    if (!v18)
    {
      goto LABEL_14;
    }

    v12 = v17;
  }

  v19 = *v2;
  if (v13)
  {
    v20 = *(v19 + 56) + 16 * v12;
    *v20 = v6;
    *(v20 + 8) = v4 & 1;
    sub_1000027F8();

    return sub_100107D70(v21, v22);
  }

  else
  {
    sub_100150CC4(v12, v1, v0, v6, v4 & 1, v19);
    sub_1000027F8();
  }
}

void sub_1001505A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_100004168();
  v43 = v13;
  v15 = v14;
  v17 = v16;
  v44 = v18;
  type metadata accessor for CodingUserInfoKey();
  sub_100003724();
  __chkstk_darwin(v19);
  sub_10000306C();
  v22 = v21 - v20;
  sub_10014ECA8();
  sub_100006768();
  if (v25)
  {
    __break(1u);
    goto LABEL_11;
  }

  v26 = v23;
  v27 = v24;
  sub_100099DF4(v17, v15);
  v28 = sub_1001514BC();
  if (!_NativeDictionary.ensureUnique(isUnique:capacity:)(v28, v29))
  {
    goto LABEL_5;
  }

  v30 = sub_10014ECA8();
  if ((v27 & 1) != (v31 & 1))
  {
LABEL_11:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  v26 = v30;
LABEL_5:
  v32 = *v12;
  if (v27)
  {
    sub_100004118((*(v32 + 56) + 32 * v26));
    sub_1000027F8();

    v35(v33, v34, v35, v36, v37, v38, v39, v40, a9, a10, a11, a12);
  }

  else
  {
    v41 = sub_10000F0D0();
    v42(v41);
    sub_100150D18(v26, v22, v44, v32, v43);
    sub_1000027F8();
  }
}

void *sub_10015073C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = sub_10000325C(a1, a2, a3, a4, a5);
  result = memcpy((*(v7 + 56) + 104 * v6), v8, 0x62uLL);
  v10 = *(a5 + 16);
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    *(a5 + 16) = v12;
  }

  return result;
}

uint64_t sub_1001507E8(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = sub_10000ABB0(a1, a6 + 8 * (a1 >> 6));
  v8 = (v7[6] + 16 * result);
  *v8 = v9;
  v8[1] = v10;
  v11 = (v7[7] + 16 * result);
  *v11 = v12;
  v11[1] = v13;
  v14 = v7[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    v7[2] = v16;
  }

  return result;
}

uint64_t sub_100150834(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for AccountIdentity();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v10 = a4[7];
  v11 = type metadata accessor for Date();
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a3, v11);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

uint64_t sub_100150928(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for AccountIdentity();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

uint64_t sub_1001509E0(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = type metadata accessor for Date();
  result = (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a4, v10);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

unint64_t sub_100150A90(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = sub_10000325C(a1, a2, a3, a4, a5);
  *(*(v6 + 56) + result) = v7;
  v8 = *(v6 + 16);
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    *(v6 + 16) = v10;
  }

  return result;
}

unint64_t sub_100150AC4(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = (a6[6] + 16 * result);
  *v6 = a2;
  v6[1] = a3;
  v7 = (a6[7] + 16 * result);
  *v7 = a4;
  v7[1] = a5;
  v8 = a6[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v10;
  }

  return result;
}

uint64_t sub_100150B10(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(void))
{
  sub_10000325C(a1, a2, a3, a4, a5);
  v12 = *(v11 + 56);
  v14 = v13(0);
  sub_1000030B8(v14);
  result = sub_100150E24(a4, v12 + *(v15 + 72) * a1, a7);
  v17 = *(a5 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a5 + 16) = v19;
  }

  return result;
}

uint64_t sub_100150B94(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for TSDataSyncDatasetGroupIdentifier(0);
  result = sub_100150E24(a2, v8 + *(*(v9 - 8) + 72) * a1, type metadata accessor for TSDataSyncDatasetGroupIdentifier);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

_OWORD *sub_100150C48(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = sub_1000197D8(a3, (a4[7] + 32 * a1));
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

uint64_t sub_100150CC4(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = sub_10000ABB0(a1, a6 + 8 * (a1 >> 6));
  v8 = (v7[6] + 16 * result);
  *v8 = v9;
  v8[1] = v10;
  v11 = v7[7] + 16 * result;
  *v11 = v12;
  *(v11 + 8) = v13 & 1;
  v14 = v7[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    v7[2] = v16;
  }

  return result;
}

uint64_t sub_100150D18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, unint64_t))
{
  sub_1001515B0();
  v10 = v9;
  sub_10000ABB0(v9, v11 + 8 * (v9 >> 6));
  v13 = *(v12 + 48);
  type metadata accessor for CodingUserInfoKey();
  sub_10000307C();
  (*(v14 + 32))(v13 + *(v14 + 72) * v10, v6);
  result = a5(v5, *(a4 + 56) + 32 * v10);
  v16 = *(a4 + 16);
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    *(a4 + 16) = v18;
  }

  return result;
}

uint64_t sub_100150DC4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_10000307C();
  (*(v5 + 40))(a2, a1);
  return a2;
}

uint64_t sub_100150E24(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_10000307C();
  (*(v5 + 32))(a2, a1);
  return a2;
}

unint64_t sub_100150E84()
{
  result = qword_1002DEA60;
  if (!qword_1002DEA60)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1002DEA60);
  }

  return result;
}

uint64_t sub_100150EC8(uint64_t a1, uint64_t a2)
{
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;
  if (v2 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v7 & 1;
}

uint64_t sub_100151050(uint64_t a1)
{
  v1 = *(a1 + 96) >> 12;
  if (v1 <= 0xC)
  {
    return v1;
  }

  else
  {
    return (*a1 + 13);
  }
}

uint64_t sub_10015106C(uint64_t a1)
{
  v1 = *(a1 + 57);
  if (v1 > 0x80000000)
  {
    return -v1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100151088(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 352))
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

uint64_t sub_1001510C8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 344) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 352) = 1;
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

    *(result + 352) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10015117C(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 120))
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

uint64_t sub_1001511BC(uint64_t result, int a2, int a3)
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

uint64_t sub_100151228(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_100151264(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1001512A4(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_1001512EC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_100151350()
{
  result = qword_1002DEB30;
  if (!qword_1002DEB30)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for BinaryEncodingError, &type metadata for BinaryEncodingError, v0, v1);
    atomic_store(result, &qword_1002DEB30);
  }

  return result;
}

uint64_t sub_1001513A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (swift_conformsToProtocol2())
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void *sub_1001513E8(void *result)
{
  if ((*(*(result[3] - 8) + 80) & 0x20000) != 0)
  {
  }

  return result;
}

unint64_t sub_100151454()
{
  result = qword_1002DEB40;
  if (!qword_1002DEB40)
  {
    v3 = sub_10009A468(&qword_1002DEB38, &qword_10023C4E8);
    result = swift_getWitnessTable(&protocol conformance descriptor for [A : B].Keys, v3, v0, v1);
    atomic_store(result, &qword_1002DEB40);
  }

  return result;
}

void *sub_100151520()
{

  return memcpy((v1 - 136), (v0 + 72), 0x62uLL);
}

void *sub_100151544(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50)
{

  return memcpy(a1, &a50, 0x62uLL);
}

uint64_t sub_100151560(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{

  return sub_10000A350(v4, v3, a3);
}

uint64_t sub_1001515BC()
{
}

Swift::Int sub_1001515F4(uint64_t a1)
{
  Hasher.init(_seed:)();
  AvroSchemaEncodingError.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_100151660(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  Hasher.init(_seed:)();
  a4(v8, v6);
  return Hasher._finalize()();
}

Swift::Int sub_1001516C8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  Hasher.init(_seed:)();
  a4(v8, v6);
  return Hasher._finalize()();
}

unint64_t sub_100151718()
{
  result = qword_1002DEB50;
  if (!qword_1002DEB50)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AvroSchemaDecodingError, &type metadata for AvroSchemaDecodingError, v0, v1);
    atomic_store(result, &qword_1002DEB50);
  }

  return result;
}

unint64_t sub_100151770()
{
  result = qword_1002DEB58;
  if (!qword_1002DEB58)
  {
    result = swift_getWitnessTable("i+\a", &type metadata for AvroSchemaEncodingError, v0, v1);
    atomic_store(result, &qword_1002DEB58);
  }

  return result;
}

unint64_t sub_1001517C8()
{
  result = qword_1002DEB60;
  if (!qword_1002DEB60)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for BinaryEncodingError, &type metadata for BinaryEncodingError, v0, v1);
    atomic_store(result, &qword_1002DEB60);
  }

  return result;
}

unint64_t sub_100151820()
{
  result = qword_1002DEB68;
  if (!qword_1002DEB68)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for BinaryDecodingError, &type metadata for BinaryDecodingError, v0, v1);
    atomic_store(result, &qword_1002DEB68);
  }

  return result;
}

unint64_t sub_100151878()
{
  result = qword_1002DEB70;
  if (!qword_1002DEB70)
  {
    result = swift_getWitnessTable("q)\a", &type metadata for AvroSchemaResolutionError, v0, v1);
    atomic_store(result, &qword_1002DEB70);
  }

  return result;
}

unint64_t sub_1001518D0()
{
  result = qword_1002DEB78;
  if (!qword_1002DEB78)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AvroDeflateCodexError, &type metadata for AvroDeflateCodexError, v0, v1);
    atomic_store(result, &qword_1002DEB78);
  }

  return result;
}

unint64_t sub_100151928()
{
  result = qword_1002DEB80;
  if (!qword_1002DEB80)
  {
    result = swift_getWitnessTable("!(\a", &type metadata for AvroHandshakeError, v0, v1);
    atomic_store(result, &qword_1002DEB80);
  }

  return result;
}

unint64_t sub_100151980()
{
  result = qword_1002DEB88;
  if (!qword_1002DEB88)
  {
    result = swift_getWitnessTable("y'\a", &type metadata for AvroMessageError, v0, v1);
    atomic_store(result, &qword_1002DEB88);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AvroSchemaDecodingError(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for AvroSchemaEncodingError(_BYTE *result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for BinaryEncodingError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xE9)
  {
    if (a2 + 23 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 23) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 24;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x18;
  v5 = v6 - 24;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for BinaryEncodingError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 23 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 23) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xE9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xE8)
  {
    v6 = ((a2 - 233) >> 8) + 1;
    *result = a2 + 23;
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
          *result = a2 + 23;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for BinaryDecodingError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 16 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 16) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF0)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xEF)
  {
    v6 = ((a2 - 240) >> 8) + 1;
    *result = a2 + 16;
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
          *result = a2 + 16;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AvroDeflateCodexError(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_100151E7C(_BYTE *result, unsigned int a2, unsigned int a3)
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

void *sub_100151F8C(void *result, uint64_t a2)
{
  v2 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
  }

  else
  {
    v3 = v2 + 1;
    if (!__OFADD__(v2, 1))
    {
      if (v2 != -1)
      {
        v5 = result;
        v6 = sub_10013CA08();
        if (sub_1001228C0(&v7, (v6 + 4), v3, v5, a2) == v3)
        {
          return v6;
        }

        __break(1u);
      }

      return _swiftEmptyArrayStorage;
    }
  }

  __break(1u);
  return result;
}

void *sub_10015201C(const void *a1, int64_t a2)
{
  if (!a2)
  {
    return _swiftEmptyArrayStorage;
  }

  if (a2 < 1)
  {
    v4 = _swiftEmptyArrayStorage;
  }

  else
  {
    sub_100099DF4(&qword_1002E2760, &qword_10023CBF8);
    v4 = swift_allocObject();
    v5 = j__malloc_size(v4);
    v4[2] = a2;
    v4[3] = 2 * v5 - 64;
  }

  memcpy(v4 + 4, a1, a2);
  return v4;
}

void *sub_1001520B4(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v2[4] = a2;
  return v2;
}

uint64_t sub_1001520C4(uint64_t result)
{
  v2 = *(v1 + 24);
  *(v1 + 16) += result;
  if (__OFSUB__(v2, result))
  {
    __break(1u);
  }

  else
  {
    *(v1 + 24) = v2 - result;
  }

  return result;
}

uint64_t sub_1001520E4(uint64_t result, uint64_t a2)
{
  *(v2 + 16) = result;
  *(v2 + 24) = a2;
  return result;
}

BOOL sub_1001520EC()
{
  if (*(v0 + 24) < 1)
  {
    v2 = sub_10014E8FC();
    v3 = sub_100007F60(&type metadata for BinaryDecodingError, v2);
    sub_100004C34(v3, v4);
  }

  else
  {
    v1 = **(v0 + 16) != 0;
    sub_1001520C4(1);
  }

  return v1;
}

int64_t sub_1001521BC()
{
  result = sub_100152188();
  if (!v0)
  {
    if (result < -128)
    {
      __break(1u);
    }

    else if (result <= 127)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

int64_t sub_1001521F0()
{
  result = sub_100152188();
  if (!v0)
  {
    if (result < -32768)
    {
      __break(1u);
    }

    else if (result < 0x8000)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_100152224()
{
  if (*(v0 + 24) < 1)
  {
    v2 = sub_10014E8FC();
    v3 = sub_100007F60(&type metadata for BinaryDecodingError, v2);
    sub_100004C34(v3, v4);
  }

  else
  {
    v1 = **(v0 + 16);
    sub_1001520C4(1);
  }

  return v1;
}

unint64_t sub_100152284()
{
  result = sub_100152188();
  if (!v0)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (!(result >> 16))
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1001522B4()
{
  v2 = 0;
  result = sub_1001527A0(&v2);
  if (!v0)
  {
    return v2;
  }

  return result;
}

float sub_100152314()
{
  v2 = 0.0;
  sub_1001527A0(&v2);
  if (!v0)
  {
    return v2;
  }

  return result;
}

double sub_100152374()
{
  v2 = 0.0;
  sub_10015272C(&v2);
  if (!v0)
  {
    return v2;
  }

  return result;
}

char *sub_1001523D4()
{
  v1 = type metadata accessor for String.Encoding();
  __chkstk_darwin(v1 - 8);
  v3 = v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1001524E8();
  if (!v0)
  {
    v10[1] = v4;
    static String.Encoding.utf8.getter();
    sub_100099DF4(&qword_1002DEA90, &qword_10023B9D0);
    sub_1001528D4();
    v3 = String.init<A>(bytes:encoding:)();
    v6 = v5;

    if (!v6)
    {
      v8 = sub_10014E8FC();
      sub_100007F60(&type metadata for BinaryDecodingError, v8);
      *v9 = 1;
      swift_willThrow();
    }
  }

  return v3;
}

int64_t sub_1001524E8()
{
  result = sub_100152188();
  if (!v1)
  {
    v3 = result;
    if (*(v0 + 24) >= result)
    {
      if ((result & 0x8000000000000000) == 0)
      {
        v5 = *(v0 + 16);
        sub_1001520C4(result);
        return sub_10015201C(v5, v3);
      }

      v4 = 1;
    }

    else
    {
      v4 = 0;
    }

    v6 = sub_10014E8FC();
    sub_100007F60(&type metadata for BinaryDecodingError, v6);
    *v7 = v4;
    return swift_willThrow();
  }

  return result;
}

void *sub_10015257C(uint64_t a1)
{
  if (*(v1 + 24) >= a1)
  {
    v7 = *(v1 + 16);
    sub_1001520C4(a1);
    return sub_10015201C(v7, a1);
  }

  else
  {
    v2 = sub_10014E8FC();
    v3 = sub_100007F60(&type metadata for BinaryDecodingError, v2);
    return sub_100004C34(v3, v4);
  }
}

void *sub_1001525E8(uint64_t a1)
{
  if (*(v1 + 24) >= a1)
  {
    v7 = a1 >> 2;
    if (a1 >> 2 < 0)
    {
      __break(1u);
    }

    v3 = _swiftEmptyArrayStorage;
    if (v7)
    {
      while (1)
      {
        v13 = 0;
        sub_1001527A0(&v13);
        if (v2)
        {
          break;
        }

        v8 = v13;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_10013C4A4();
          v3 = v10;
        }

        v9 = v3[2];
        if (v9 >= v3[3] >> 1)
        {
          sub_10013C4A4();
          v3 = v11;
        }

        v3[2] = v9 + 1;
        *(v3 + v9 + 8) = v8;
        if (!--v7)
        {
          return v3;
        }
      }
    }
  }

  else
  {
    v4 = sub_10014E8FC();
    v5 = sub_100007F60(&type metadata for BinaryDecodingError, v4);
    sub_100004C34(v5, v6);
  }

  return v3;
}

uint64_t sub_10015272C(void *a1)
{
  if (*(v1 + 24) > 7)
  {
    *a1 = **(v1 + 16);
    return sub_1001520C4(8);
  }

  else
  {
    sub_10014E8FC();
    swift_allocError();
    *v2 = 0;
    return swift_willThrow();
  }
}

uint64_t sub_1001527A0(_DWORD *a1)
{
  if (*(v1 + 24) > 3)
  {
    *a1 = **(v1 + 16);
    return sub_1001520C4(4);
  }

  else
  {
    v2 = sub_10014E8FC();
    v3 = sub_100007F60(&type metadata for BinaryDecodingError, v2);
    return sub_100004C34(v3, v4);
  }
}

uint64_t sub_100152800()
{
  v1 = *(v0 + 24);
  v2 = v1 < 1;
  v3 = v1 - 1;
  if (v2)
  {
    v9 = 0;
  }

  else
  {
    v4 = *(v0 + 16);
    v7 = *v4;
    v6 = v4 + 1;
    result = v7;
    if ((v7 & 0x8000000000000000) == 0)
    {
LABEL_7:
      *(v0 + 16) = v6;
      *(v0 + 24) = v3;
      return result;
    }

    result &= 0x7Fu;
    v8 = 7;
    v9 = 1;
    while (1)
    {
      v2 = v3-- < 1;
      if (v2 || v8 > 0x3F)
      {
        break;
      }

      v10 = *v6++;
      result |= (v10 & 0x7F) << v8;
      v8 += 7;
      if ((v10 & 0x80) == 0)
      {
        goto LABEL_7;
      }
    }
  }

  v11 = sub_10014E8FC();
  sub_100007F60(&type metadata for BinaryDecodingError, v11);
  *v12 = v9;
  return swift_willThrow();
}

unint64_t sub_1001528D4()
{
  result = qword_1002DED28;
  if (!qword_1002DED28)
  {
    v3 = sub_10009A468(&qword_1002DEA90, &qword_10023B9D0);
    result = swift_getWitnessTable(&protocol conformance descriptor for [A], v3, v0, v1);
    atomic_store(result, &qword_1002DED28);
  }

  return result;
}

uint64_t sub_100152938(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0xEB0000000064695FLL;
  v3 = 0x72656D75736E6F63;
  v4 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v5 = 0xD000000000000018;
    }

    else
    {
      v5 = 0xD000000000000013;
    }

    if (v4 == 1)
    {
      v6 = 0x8000000100271E40;
    }

    else
    {
      v6 = 0x8000000100271E60;
    }
  }

  else
  {
    v5 = 0x72656D75736E6F63;
    v6 = 0xEB0000000064695FLL;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v3 = 0xD000000000000018;
    }

    else
    {
      v3 = 0xD000000000000013;
    }

    if (a2 == 1)
    {
      v2 = 0x8000000100271E40;
    }

    else
    {
      v2 = 0x8000000100271E60;
    }
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_100008ADC(v5, a2, v3);
  }

  return v8 & 1;
}

uint64_t sub_100152A1C(unsigned __int8 a1, uint64_t a2)
{
  v2 = 1701080941;
  v3 = 0xE400000000000000;
  v4 = a1;
  v5 = 1701080941;
  switch(v4)
  {
    case 1:
      v3 = 0xE800000000000000;
      v5 = sub_10015D670();
      break;
    case 2:
      v5 = sub_10015D670();
      v3 = 0xEF6374755F7A745FLL;
      break;
    case 3:
      v3 = 0xE800000000000000;
      v5 = 0x797469726F697270;
      break;
    default:
      break;
  }

  v6 = 0xE400000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE800000000000000;
      sub_10015D65C();
      break;
    case 2:
      sub_10015D65C();
      v6 = 0xEF6374755F7A745FLL;
      break;
    case 3:
      v6 = 0xE800000000000000;
      v2 = 0x797469726F697270;
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
    sub_100003288();
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

uint64_t sub_100152B48(char a1)
{
  sub_10000EE88(a1, 0xD000000000000016);
  sub_10000F3DC();
  if (v7)
  {
    v6 = v5;
  }

  else
  {
    v6 = v4;
  }

  v7 = v2 == v3 && v1 == (v6 | 0x8000000000000000);
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    sub_100003288();
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

uint64_t sub_100152BEC(unsigned __int8 a1, char a2)
{
  v2 = 1684632420;
  v3 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 0x444972657375;
    }

    else
    {
      v4 = 0x4449746E65696C63;
    }

    if (v3 == 1)
    {
      v5 = 0xE600000000000000;
    }

    else
    {
      v5 = 0xE800000000000000;
    }
  }

  else
  {
    v5 = 0xE400000000000000;
    v4 = 1684632420;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v2 = 0x444972657375;
    }

    else
    {
      v2 = 0x4449746E65696C63;
    }

    if (a2 == 1)
    {
      v6 = 0xE600000000000000;
    }

    else
    {
      v6 = 0xE800000000000000;
    }
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  if (v4 == v2 && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    sub_100003288();
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

uint64_t sub_100152CD8(unsigned __int8 a1, char a2)
{
  v2 = 1684632420;
  v3 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 0x64695F72657375;
    }

    else
    {
      v4 = 0x695F746E65696C63;
    }

    if (v3 == 1)
    {
      v5 = 0xE700000000000000;
    }

    else
    {
      v5 = 0xE900000000000064;
    }
  }

  else
  {
    v5 = 0xE400000000000000;
    v4 = 1684632420;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v2 = 0x64695F72657375;
    }

    else
    {
      v2 = 0x695F746E65696C63;
    }

    if (a2 == 1)
    {
      v6 = 0xE700000000000000;
    }

    else
    {
      v6 = 0xE900000000000064;
    }
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  if (v4 == v2 && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    sub_100003288();
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

uint64_t sub_100152DD4(char a1, char a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 1701080931;
  }

  else
  {
    v3 = 0x64695F666572;
  }

  if (v2)
  {
    v4 = 0xE600000000000000;
  }

  else
  {
    v4 = 0xE400000000000000;
  }

  if (a2)
  {
    v5 = 1701080931;
  }

  else
  {
    v5 = 0x64695F666572;
  }

  if (a2)
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    sub_100003288();
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

uint64_t sub_100152E64(char a1)
{
  if (a1)
  {
    v1 = 0xEB00000000617461;
  }

  else
  {
    v1 = 0xE400000000000000;
  }

  sub_100005164();
  if (v7)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = v2 == v3 && v1 == v6;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    sub_100003288();
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

uint64_t sub_100152EFC(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0xED00003436625F70;
  v3 = 0x697A675F6F727661;
  v4 = a1;
  v5 = 0x697A675F6F727661;
  v6 = 0xED00003436625F70;
  switch(v4)
  {
    case 1:
      v5 = 0xD000000000000013;
      v6 = 0x80000001002721F0;
      break;
    case 2:
      v6 = 0xE800000000000000;
      v5 = 0x7761725F6E6F736ALL;
      break;
    case 3:
      v5 = 0x697A675F6E6F736ALL;
      v6 = 0xED00003436625F70;
      break;
    case 4:
      v5 = 0x7461625F6E6F736ALL;
      v6 = 0xEF70697A675F6863;
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      v3 = 0xD000000000000013;
      v2 = 0x80000001002721F0;
      break;
    case 2:
      v2 = 0xE800000000000000;
      v3 = 0x7761725F6E6F736ALL;
      break;
    case 3:
      v3 = 0x697A675F6E6F736ALL;
      break;
    case 4:
      v3 = 0x7461625F6E6F736ALL;
      v2 = 0xEF70697A675F6863;
      break;
    default:
      break;
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_100008ADC(v5, a2, v3);
  }

  return v8 & 1;
}

uint64_t sub_10015308C(char a1)
{
  sub_10000EE88(a1, 0xD000000000000013);
  sub_10000F3DC();
  if (v7)
  {
    v6 = v5;
  }

  else
  {
    v6 = v4;
  }

  v7 = v2 == v3 && v1 == (v6 | 0x8000000000000000);
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    sub_100003288();
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

uint64_t sub_100153130(char a1, char a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0xD000000000000017;
  }

  else
  {
    v3 = 1635018093;
  }

  if (v2)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0x8000000100271EC0;
  }

  if (a2)
  {
    v5 = 0xD000000000000017;
  }

  else
  {
    v5 = 1635018093;
  }

  if (a2)
  {
    v6 = 0x8000000100271EC0;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    sub_100003288();
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

uint64_t sub_1001531C8(char a1)
{
  if (a1)
  {
    v1 = 0xE700000000000000;
  }

  else
  {
    v1 = 0xEB00000000657079;
  }

  sub_100005164();
  if (v7)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = v2 == v3 && v1 == v6;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    sub_100003288();
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

uint64_t sub_100153268(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0xEC000000656D616ELL;
  v3 = 0x5F74657361746164;
  v4 = a1;
  v5 = 0x5F74657361746164;
  v6 = 0xEC000000656D616ELL;
  switch(v4)
  {
    case 1:
      v6 = 0xE600000000000000;
      v5 = 0x6372735F6469;
      break;
    case 2:
      v5 = 0x69616D6F645F6469;
      v6 = 0xE90000000000006ELL;
      break;
    case 3:
      v6 = 0xE800000000000000;
      v5 = 0x79726576696C6564;
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      v2 = 0xE600000000000000;
      v3 = 0x6372735F6469;
      break;
    case 2:
      v3 = 0x69616D6F645F6469;
      v2 = 0xE90000000000006ELL;
      break;
    case 3:
      v2 = 0xE800000000000000;
      v3 = 0x79726576696C6564;
      break;
    default:
      break;
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_100008ADC(v5, a2, v3);
  }

  return v8 & 1;
}

uint64_t sub_1001533B0(char a1)
{
  if (a1)
  {
    v1 = 0xEB00000000657079;
  }

  else
  {
    v1 = 0xE700000000000000;
  }

  sub_100005164();
  if (v7)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = v2 == v3 && v1 == v6;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    sub_100003288();
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

uint64_t sub_100153450(char a1, char a2)
{
  v2 = "y";
  if (a1)
  {
    v3 = "accountDataV2GetUrl";
  }

  else
  {
    v3 = "y";
  }

  if (a2)
  {
    v2 = "accountDataV2GetUrl";
  }

  if ((v3 | 0x8000000000000000) == (v2 | 0x8000000000000000))
  {
    v4 = 1;
  }

  else
  {
    sub_100003288();
    v4 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v4 & 1;
}

uint64_t sub_100153500(char a1)
{
  sub_10000EE88(a1, 0xD000000000000010);
  sub_10000F3DC();
  if (v7)
  {
    v6 = v5;
  }

  else
  {
    v6 = v4;
  }

  v7 = v2 == v3 && v1 == (v6 | 0x8000000000000000);
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    sub_100003288();
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

uint64_t sub_1001535C8(unsigned __int8 a1, char a2)
{
  v2 = 0x64656C62616E65;
  v3 = 0xE700000000000000;
  v4 = a1;
  v5 = 0x64656C62616E65;
  switch(v4)
  {
    case 1:
      v3 = 0xE600000000000000;
      v5 = 0x6769666E6F63;
      break;
    case 2:
      v3 = 0xE400000000000000;
      v5 = 1635017060;
      break;
    case 3:
      v5 = 0x5F7363697274656DLL;
      v3 = 0xED00006369706F74;
      break;
    default:
      break;
  }

  v6 = 0xE700000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE600000000000000;
      v2 = 0x6769666E6F63;
      break;
    case 2:
      v6 = 0xE400000000000000;
      v2 = 1635017060;
      break;
    case 3:
      v2 = 0x5F7363697274656DLL;
      v6 = 0xED00006369706F74;
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
    sub_100003288();
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

uint64_t sub_100153740(char a1)
{
  if (a1)
  {
    v1 = 0xEF6E6F6974617A69;
  }

  else
  {
    v1 = 0xE800000000000000;
  }

  sub_100005164();
  if (v7)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = v2 == v3 && v1 == v6;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    sub_100003288();
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

uint64_t sub_1001537FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v5 = a3(a1);
  v7 = v6;
  if (v5 == a3(a2) && v7 == v8)
  {
    v10 = 1;
  }

  else
  {
    sub_100003288();
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v10 & 1;
}

uint64_t sub_100153888(unsigned __int8 a1, char a2)
{
  v2 = 1701667182;
  v3 = 0xE400000000000000;
  v4 = a1;
  v5 = 1701667182;
  switch(v4)
  {
    case 1:
      v5 = 1701869940;
      break;
    case 2:
      v3 = 0xE500000000000000;
      v5 = 0x726564726FLL;
      break;
    case 3:
      v3 = 0xE700000000000000;
      v5 = 0x73657361696C61;
      break;
    case 4:
      v3 = 0xE700000000000000;
      v5 = 0x746C7561666564;
      break;
    case 5:
      v3 = 0xE800000000000000;
      v5 = 0x6C616E6F6974706FLL;
      break;
    case 6:
      v3 = 0xE300000000000000;
      v5 = 6516580;
      break;
    default:
      break;
  }

  v6 = 0xE400000000000000;
  switch(a2)
  {
    case 1:
      v2 = 1701869940;
      break;
    case 2:
      v6 = 0xE500000000000000;
      v2 = 0x726564726FLL;
      break;
    case 3:
      v6 = 0xE700000000000000;
      v2 = 0x73657361696C61;
      break;
    case 4:
      v6 = 0xE700000000000000;
      v2 = 0x746C7561666564;
      break;
    case 5:
      v6 = 0xE800000000000000;
      v2 = 0x6C616E6F6974706FLL;
      break;
    case 6:
      v6 = 0xE300000000000000;
      v2 = 6516580;
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

uint64_t sub_100153A30(unsigned __int8 a1, char a2)
{
  v2 = 0x6C616D69636564;
  v3 = 0xE700000000000000;
  v4 = a1;
  v5 = 0x6C616D69636564;
  switch(v4)
  {
    case 1:
      v3 = 0xE400000000000000;
      v5 = 1702125924;
      break;
    case 2:
      v5 = 0x6C696D2D656D6974;
      v3 = 0xEB0000000073696CLL;
      break;
    case 3:
      v5 = 0x63696D2D656D6974;
      v3 = 0xEB00000000736F72;
      break;
    case 4:
      v5 = 0xD000000000000010;
      v6 = "millis";
      goto LABEL_7;
    case 5:
      v5 = 0xD000000000000010;
      v6 = "timestamp-millis";
LABEL_7:
      v3 = v6 | 0x8000000000000000;
      break;
    case 6:
      v3 = 0xE800000000000000;
      v5 = 0x6E6F697461727564;
      break;
    default:
      break;
  }

  v7 = 0xE700000000000000;
  switch(a2)
  {
    case 1:
      v7 = 0xE400000000000000;
      v2 = 1702125924;
      break;
    case 2:
      v2 = 0x6C696D2D656D6974;
      v7 = 0xEB0000000073696CLL;
      break;
    case 3:
      v2 = 0x63696D2D656D6974;
      v7 = 0xEB00000000736F72;
      break;
    case 4:
      v2 = 0xD000000000000010;
      v8 = "millis";
      goto LABEL_15;
    case 5:
      v2 = 0xD000000000000010;
      v8 = "timestamp-millis";
LABEL_15:
      v7 = v8 | 0x8000000000000000;
      break;
    case 6:
      v7 = 0xE800000000000000;
      v2 = 0x6E6F697461727564;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v7)
  {
    v10 = 1;
  }

  else
  {
    sub_100003288();
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v10 & 1;
}

uint64_t sub_100153C0C(char a1)
{
  if (a1)
  {
    v1 = 0xE800000000000000;
  }

  else
  {
    v1 = 0xE900000000000065;
  }

  sub_100005164();
  if (v7)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = v2 == v3 && v1 == v6;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    sub_100003288();
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

uint64_t sub_100153CA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100099DF4(&qword_1002DEDC0, &qword_10023CCF0);
  __chkstk_darwin(v4);
  v6 = &v12 - v5;
  result = sub_1000C87E0(a1);
  if (v9)
  {
    goto LABEL_9;
  }

  if (*(a1 + 36) != v8)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return result;
  }

  if (result == 1 << *(a1 + 32))
  {

    return sub_100002728(a2, 1, 1, v4);
  }

  else
  {
    v10 = *(v4 + 48);
    sub_10015CF08(v6, &v6[v10], result, v8, 0, a1);
    v11 = type metadata accessor for CodingUserInfoKey();
    (*(*(v11 - 8) + 32))(a2, v6, v11);
    sub_1001514B8(&v6[v10], (a2 + *(v4 + 48)));
    return sub_100002728(a2, 0, 1, v4);
  }
}

uint64_t sub_100153E24(uint64_t a1)
{
  v1 = a1;
  v2 = type metadata accessor for String.Encoding();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10[0] = 34;
  v10[1] = 0xE100000000000000;
  v6._countAndFlagsBits = sub_10016176C(v1);
  String.append(_:)(v6);

  v7._countAndFlagsBits = 34;
  v7._object = 0xE100000000000000;
  String.append(_:)(v7);
  static String.Encoding.utf8.getter();
  v8 = String.data(using:allowLossyConversion:)();

  (*(v3 + 8))(v5, v2);
  return v8;
}

uint64_t sub_100153F58(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = a1;
  v4 = type metadata accessor for String.Encoding();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = 0;
  v15 = 0xE000000000000000;
  _StringGuts.grow(_:)(32);

  v14 = 0x3A2265707974227BLL;
  v15 = 0xE900000000000022;
  v8._countAndFlagsBits = sub_10016176C(v3);
  String.append(_:)(v8);

  v9._object = 0x8000000100274B00;
  v9._countAndFlagsBits = 0xD000000000000011;
  String.append(_:)(v9);
  v10._countAndFlagsBits = sub_100161910(v2);
  String.append(_:)(v10);

  v11._countAndFlagsBits = 32034;
  v11._object = 0xE200000000000000;
  String.append(_:)(v11);
  static String.Encoding.utf8.getter();
  v12 = String.data(using:allowLossyConversion:)();

  (*(v5 + 8))(v7, v4);
  return v12;
}

double sub_1001540EC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = a1 == 1819047278 && a2 == 0xE400000000000000;
  if (v5 || (sub_10015D5D8(), sub_100003288(), (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
  {

    sub_100004C50();
    v13 = 0uLL;
  }

  else
  {
    v17 = a1 == 0x6E61656C6F6F62 && a2 == 0xE700000000000000;
    if (v17 || (sub_100003288(), (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
    {

      sub_100004C50();
      v13 = xmmword_10023CCA0;
    }

    else
    {
      v18 = a1 == 7630441 && a2 == 0xE300000000000000;
      if (v18 || (sub_100003288(), (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
      {

        sub_100008BAC();
        v9 = &unk_10023C000;
        v13 = xmmword_10023CC90;
        goto LABEL_8;
      }

      v19 = a1 == 1735290732 && a2 == 0xE400000000000000;
      if (v19 || (sub_100003288(), (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
      {

        sub_100008BAC();
        v9 = &unk_10023C000;
        v13 = xmmword_10023CC80;
        v15 = 4096;
        goto LABEL_8;
      }

      v20 = a1 == 0x74616F6C66 && a2 == 0xE500000000000000;
      if (v20 || (sub_100003288(), (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
      {

        sub_100004C50();
        v13 = xmmword_10023CC70;
      }

      else
      {
        v21 = a1 == 0x656C62756F64 && a2 == 0xE600000000000000;
        if (v21 || (sub_100003288(), (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
        {

          sub_100004C50();
          v13 = xmmword_10023CC60;
        }

        else
        {
          v22 = a1 == 0x7365747962 && a2 == 0xE500000000000000;
          if (v22 || (sub_100003288(), (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
          {

            v9 = 0;
            v7 = 0;
            v8 = 0;
            v10 = 0;
            v11 = 1;
            LOBYTE(v24[0]) = 1;
            v14 = xmmword_10023CC40;
            v13 = xmmword_10023CC50;
            v15 = 0x2000;
            v12 = 1;
            goto LABEL_8;
          }

          if (a1 != 0x676E69727473 || a2 != 0xE600000000000000)
          {
            sub_100003288();
            if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
            {
              sub_1001619E8(a1, a2, v24);
              v13 = v24[0];
              v14 = v24[1];
              v12 = v25;
              v9 = v26;
              v11 = v27;
              v10 = v25 & 0xFFFFFFFFFFFFFF00;
              v7 = v28;
              v8 = v27 & 0xFFFFFFFFFFFFFF00;
              v15 = -16384;
              goto LABEL_8;
            }
          }

          sub_100004C50();
          v13 = xmmword_10023B6F0;
        }
      }
    }
  }

  v14 = 0uLL;
  v15 = -12288;
LABEL_8:
  *a3 = v13;
  *(a3 + 16) = v14;
  *(a3 + 32) = v10 | v12;
  *(a3 + 40) = v9;
  *(a3 + 48) = v8 | v11;
  *(a3 + 56) = v7;
  result = 0.0;
  *(a3 + 64) = 0u;
  *(a3 + 80) = 0u;
  *(a3 + 96) = v15;
  return result;
}

void AvroSchema.init(schemaJson:decoder:)()
{
  sub_100004868();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = type metadata accessor for String.Encoding();
  sub_100003724();
  v9 = v8;
  __chkstk_darwin(v10);
  v12 = v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000D560();
  if (String.count.getter() <= 9)
  {
    v19[5] = v4;
    v19[6] = v2;
    v19[3] = 34;
    v19[4] = 0xE100000000000000;
    v19[1] = 0;
    v19[2] = 0xE000000000000000;
    sub_1000BBBB0();
    sub_1000109B8();
    v13 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
    v15 = v14;

    sub_1001540EC(v13, v15, v21);
    goto LABEL_7;
  }

  v22 = v6;
  static String.Encoding.utf8.getter();
  v16 = String.data(using:allowLossyConversion:)();
  v18 = v17;
  (*(v9 + 8))(v12, v7);
  if (v18 >> 60 != 15)
  {

    sub_100154604(v16, v18, v20);
    if (v0)
    {
      swift_willThrow();

LABEL_8:
      sub_100005074();
      return;
    }

    memcpy(v21, v20, 0x62uLL);
    v6 = v22;
LABEL_7:

    memcpy(v6, v21, 0x62uLL);
    goto LABEL_8;
  }

  __break(1u);
}

void *sub_100154604@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a4@<X8>)
{
  sub_100157420();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  if (v4)
  {
    swift_willThrow();

    return sub_10000D170(a1, a2);
  }

  else
  {

    sub_10000D170(a1, a2);
    return memcpy(a4, __src, 0x62uLL);
  }
}

unint64_t sub_1001546CC(uint64_t a1, uint64_t a2)
{
  v2 = _findStringSwitchCaseWithCache(cases:string:cache:)();

  if (v2 >= 0x15)
  {
    return 21;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_10015472C(char a1)
{
  result = 1701869940;
  switch(a1)
  {
    case 1:
      return 1701667182;
    case 2:
      return 0x63617073656D616ELL;
    case 3:
      v4 = 0x657361696C61;
      return v4 & 0xFFFFFFFFFFFFLL | 0x73000000000000;
    case 4:
      return 6516580;
    case 5:
      return 0x6C6F636F746F7270;
    case 6:
      return 0x736D657469;
    case 7:
      return 0x7365756C6176;
    case 8:
      return 0x73646C656966;
    case 9:
      v4 = 0x6C6F626D7973;
      return v4 & 0xFFFFFFFFFFFFLL | 0x73000000000000;
    case 10:
      return 1702521203;
    case 11:
      v3 = 1701081711;
      goto LABEL_6;
    case 12:
      return sub_10015D520();
    case 13:
      return sub_10015D624();
    case 14:
      return 0x6F69736963657270;
    case 15:
      return 0x656C616373;
    case 16:
      v3 = 1869771365;
LABEL_6:
      result = v3 & 0xFFFF0000FFFFFFFFLL | 0x7200000000;
      break;
    case 17:
      result = 0x736567617373656DLL;
      break;
    case 18:
      result = sub_10000B068();
      break;
    case 19:
      result = 0x6E6F696E75;
      break;
    case 20:
      result = 0x736568636E617262;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_100154934@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1001546CC(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_100154964@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10015472C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_100154998@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100154720(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1001549C0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_100154724();
  *a1 = result;
  return result;
}

uint64_t sub_1001549E8(uint64_t a1)
{
  v2 = sub_1001572F4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100154A24(uint64_t a1)
{
  v2 = sub_1001572F4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100154A60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v148 = a1;
  v110 = a3;
  v5 = sub_100099DF4(&qword_1002DED38, &qword_10023CCB8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v97 - v7;
  sub_10000C4FC(a2, *(a2 + 24));
  sub_1001572F4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v3)
  {
    (*(v6 + 8))(v148, v5);
    return sub_100004118(a2);
  }

  v108 = v6;
  v9 = v110;
  LOBYTE(v113[0]) = 8;
  v10 = v8;
  v11 = KeyedDecodingContainer.contains(_:)();
  v12 = v5;
  v109 = a2;
  v107 = v8;
  if (v11)
  {
    sub_1001512EC(a2, v113);
    AvroSchema.RecordSchema.init(from:)();
    v13 = v9;
    memcpy(v114, v115, 0x51uLL);
    sub_100155D7C();
    v24 = v114[4] == 0x726F727265 && v114[5] == 0xE500000000000000;
    v106 = 0;
    if (v24)
    {
      v44 = *(v108 + 8);
      v44(v148, v5);
      v44(v107, v5);
    }

    else
    {
      v25 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v9 = v108 + 8;
      v26 = *(v108 + 8);
      v26(v148, v5);
      v26(v107, v5);
      if ((v25 & 1) == 0)
      {
        v19 = swift_allocObject();
        memcpy((v19 + 16), v114, 0x51uLL);
        v104 = 0;
        v105 = 0;
        v20 = 0;
        v21 = 0;
        v22 = 12288;
        goto LABEL_63;
      }
    }

    v19 = swift_allocObject();
    memcpy(v112, v114, 0x51uLL);
    memcpy((v19 + 16), v114, 0x51uLL);
    memcpy(v113, v114, 0x51uLL);
    sub_10015BE18(v112, &v111);
    sub_10015BE74(v113);
    v104 = 0;
    v105 = 0;
    v20 = 0;
    v21 = 0;
    v22 = -28672;
    goto LABEL_63;
  }

  LOBYTE(v113[0]) = 9;
  v13 = v9;
  if (KeyedDecodingContainer.contains(_:)())
  {
    sub_1001512EC(a2, v113);
    v9 = v116;
    AvroSchema.EnumSchema.init(from:)();
    v106 = 0;
    a2 = 1836412517;
    v14 = v118;
    v15 = v119;
    v103 = v116[0];
    v5 = v116[1];
    if (v118 == 1836412517 && v119 == 0xE400000000000000)
    {
      v41 = *(v108 + 8);
      v41(v148, v12);
      v41(v107, v12);
      v15 = 0xE400000000000000;
    }

    else
    {
      v17 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v18 = *(v108 + 8);
      v18(v148, v12);
      v18(v107, v12);
      if (v17)
      {
        a2 = v14;
        v9 = v116;
      }

      else
      {
        v9 = v116;
        if (v5)
        {
          a2 = v14;
        }

        else
        {
          v5 = v15;
          v15 = 0xE400000000000000;
          v103 = v14;
          a2 = 1836412517;
        }
      }
    }

    v19 = swift_allocObject();
    v104 = 0;
    v105 = 0;
    v20 = 0;
    v21 = 0;
    *(v19 + 16) = v103;
    *(v19 + 24) = v5;
    *(v19 + 32) = v117;
    *(v19 + 48) = a2;
    *(v19 + 56) = v15;
    v42 = v120;
    v43 = v121;
    *(v19 + 96) = v122;
    v22 = 0x4000;
    *(v19 + 64) = v42;
    *(v19 + 80) = v43;
    goto LABEL_63;
  }

  LOBYTE(v113[0]) = 6;
  if (KeyedDecodingContainer.contains(_:)())
  {
    sub_1001512EC(a2, v113);
    AvroSchema.ArraySchema.init(from:)();
    v106 = 0;
    v9 = *(v108 + 8);
    (v9)(v148, v5);
    (v9)(v10, v5);
    v19 = swift_allocObject();
    memcpy((v19 + 16), v123, 0x73uLL);
    v104 = 0;
    v105 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 20480;
LABEL_63:
    result = sub_100004118(v109);
    v72 = v103;
    *v13 = v19;
    *(v13 + 8) = v72;
    v73 = v101;
    *(v13 + 16) = v9;
    *(v13 + 24) = v73;
    *(v13 + 32) = v21 | v5;
    *(v13 + 40) = v102;
    *(v13 + 48) = v20 | a2;
    v74 = v104;
    *(v13 + 56) = v105;
    *(v13 + 64) = v99;
    v75 = v100;
    *(v13 + 80) = v74;
    *(v13 + 88) = v75;
    *(v13 + 96) = v22;
    return result;
  }

  LOBYTE(v113[0]) = 7;
  v23 = KeyedDecodingContainer.contains(_:)();
  v5 = v148;
  if (v23)
  {
    sub_1001512EC(a2, v113);
    AvroSchema.MapSchema.init(from:)();
    v106 = 0;
    v9 = *(v108 + 8);
    (v9)(v5, v12);
    (v9)(v10, v12);
    v19 = swift_allocObject();
    memcpy((v19 + 16), v124, 0x73uLL);
    v104 = 0;
    v105 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 24576;
    goto LABEL_63;
  }

  a2 = v125;
  LOBYTE(v113[0]) = 10;
  if (KeyedDecodingContainer.contains(_:)())
  {
    sub_1001512EC(v109, v113);
    AvroSchema.FixedSchema.init(from:)(v113, v27, v28, v29, v30, v31, v32, v33, v97, v98);
    v59 = v126;
    v19 = v125[0];
    v60 = v125[2];
    v98 = v128;
    v105 = v129;
    v106 = 0;
    v99 = v130;
    v103 = v125[1];
    v104 = v131;
    v100 = v132;
    v101 = v125[3];
    LODWORD(v97) = v133;
    if (v126 == 0x6465786966 && v127 == 0xE500000000000000)
    {
      v71 = *(v108 + 8);
      v71(v148, v12);
      v71(v107, v12);
      v5 = 0x6465786966;
      v102 = 0xE500000000000000;
    }

    else
    {
      v102 = v127;
      v62 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v63 = *(v108 + 8);
      v63(v148, v12);
      v63(v107, v12);
      if ((v62 & 1) == 0 && !v103)
      {
        v64 = v102;
        v102 = 0xE500000000000000;
        v103 = v64;
        v19 = v59;
        v9 = v60;
        v5 = 0x6465786966;
LABEL_61:
        v104 &= 1u;
        v22 = v97 & 0x301 | 0x8000;
        v21 = v5 & 0xFFFFFFFFFFFFFF00;
        a2 = v98;
        goto LABEL_62;
      }

      v5 = v59;
    }

    v9 = v60;
    goto LABEL_61;
  }

  LOBYTE(v113[0]) = 20;
  if (KeyedDecodingContainer.contains(_:)())
  {
    sub_1001512EC(v109, v112);
    AvroSchema.UnionSchema.init(from:)();
    v113[0] = v134;
    v113[1] = v135;
    *&v113[2] = v136;
    sub_100156CD8();
    v106 = 0;
    v76 = *(v108 + 8);
    v76(v148, v12);
    v76(v107, v12);
    v19 = swift_allocObject();
    v104 = 0;
    v105 = 0;
    v20 = 0;
    v21 = 0;
    v77 = *&v113[2];
    v78 = v113[1];
    *(v19 + 16) = v113[0];
    *(v19 + 32) = v78;
    *(v19 + 48) = v77;
    v22 = 28672;
    goto LABEL_63;
  }

  LOBYTE(v113[0]) = 0;
  if ((KeyedDecodingContainer.contains(_:)() & 1) == 0)
  {
    LOBYTE(v113[0]) = 0;
    v65 = KeyedDecodingContainer.decode(_:forKey:)();
    v5 = v10;
    v106 = 0;
    sub_1001540EC(v65, v66, v143);
    v19 = v143[0];
    v9 = v143[2];
    v102 = v143[5];
    v103 = v143[1];
    v97 = v143[6];
    v98 = v143[4];
    v105 = v143[7];
    v99 = v144;
    v104 = v145;
    v100 = v146;
    v101 = v143[3];
    v22 = v147;
    v67 = *(v108 + 8);
    v67(v148, v12);
    v67(v5, v12);
    a2 = v97;
    LOBYTE(v5) = v98;
    v21 = v98 & 0xFFFFFFFFFFFFFF00;
LABEL_62:
    v20 = a2 & 0xFFFFFFFFFFFFFF00;
    goto LABEL_63;
  }

  LOBYTE(v113[0]) = 1;
  if ((KeyedDecodingContainer.contains(_:)() & 1) == 0 || (v5 = *(KeyedDecodingContainer.allKeys.getter() + 16), , v5 != 2))
  {
    v112[0] = 0;
    sub_10015CFE8();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    if (LOBYTE(v113[0]) != 20)
    {
      switch(LOBYTE(v113[0]))
      {
        case 0:
          v106 = 0;
          v79 = *(v108 + 8);
          v79(v148, v12);
          v79(v107, v12);
          v19 = 0;
          v102 = 0;
          v103 = 0;
          v9 = 0;
          v100 = 0;
          v101 = 0;
          v104 = 0;
          v105 = 0;
          LOBYTE(a2) = 0;
          v20 = 0;
          LOBYTE(v5) = 0;
          v21 = 0;
          v99 = 0u;
          v22 = -12288;
          goto LABEL_63;
        case 1:
          v106 = 0;
          v85 = *(v108 + 8);
          v85(v148, v12);
          v85(v107, v12);
          v102 = 0;
          v103 = 0;
          v9 = 0;
          v100 = 0;
          v101 = 0;
          v104 = 0;
          v105 = 0;
          LOBYTE(a2) = 0;
          v20 = 0;
          LOBYTE(v5) = 0;
          v21 = 0;
          v99 = 0u;
          v22 = -12288;
          v19 = 1;
          goto LABEL_63;
        case 2:
          v112[0] = 13;
          sub_10015D03C();
          LOBYTE(a2) = v12;
          KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
          v106 = 0;
          v98 = LOBYTE(v113[0]);
          if (LOBYTE(v113[0]) == 7)
          {
            v82 = *(v108 + 8);
            v82(v148, v12);
            v82(v107, v12);
            v104 = 0;
            v105 = 0;
            v22 = 0;
            v20 = 0;
            v21 = 0;
            v103 = 0xE300000000000000;
            v19 = 7630441;
            goto LABEL_82;
          }

          v19 = sub_10016176C(2);
          v103 = v90;
          v91 = *(v108 + 8);
          v91(v148, v12);
          v91(v107, v12);
          v104 = 0;
          v105 = 0;
          v22 = 0;
          v20 = 0;
          v21 = 0;
          goto LABEL_85;
        case 3:
          v112[0] = 13;
          sub_10015D03C();
          LOBYTE(a2) = v12;
          KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
          v106 = 0;
          v98 = LOBYTE(v113[0]);
          if (LOBYTE(v113[0]) == 7)
          {
            v83 = *(v108 + 8);
            v83(v148, v12);
            v83(v107, v12);
            v104 = 0;
            v105 = 0;
            v20 = 0;
            v21 = 0;
            v22 = 4096;
            v103 = 0xE400000000000000;
            v19 = 1735290732;
            goto LABEL_82;
          }

          v19 = sub_10016176C(3);
          v103 = v92;
          v93 = *(v108 + 8);
          v93(v148, v12);
          v93(v107, v12);
          v104 = 0;
          v105 = 0;
          v20 = 0;
          v21 = 0;
          v22 = 4096;
          goto LABEL_85;
        case 4:
          v106 = 0;
          v81 = *(v108 + 8);
          v81(v148, v12);
          v81(v107, v12);
          v102 = 0;
          v103 = 0;
          v9 = 0;
          v100 = 0;
          v101 = 0;
          v104 = 0;
          v105 = 0;
          LOBYTE(a2) = 0;
          v20 = 0;
          LOBYTE(v5) = 0;
          v21 = 0;
          v99 = 0u;
          v22 = -12288;
          v19 = 2;
          goto LABEL_63;
        case 5:
          v106 = 0;
          v86 = *(v108 + 8);
          v86(v148, v12);
          v86(v107, v12);
          v102 = 0;
          v103 = 0;
          v9 = 0;
          v100 = 0;
          v101 = 0;
          v104 = 0;
          v105 = 0;
          LOBYTE(a2) = 0;
          v20 = 0;
          LOBYTE(v5) = 0;
          v21 = 0;
          v99 = 0u;
          v22 = -12288;
          v19 = 3;
          goto LABEL_63;
        case 6:
          v112[0] = 13;
          sub_10015D03C();
          KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
          v106 = 0;
          v98 = LOBYTE(v113[0]);
          if (LOBYTE(v113[0]) == 7)
          {
            v19 = 0x7365747962;
            v89 = *(v108 + 8);
            v89(v148, v12);
            v89(v107, v12);
            v101 = 0;
            v102 = 0;
            v104 = 0;
            v105 = 0;
            v20 = 0;
            v21 = 0;
            LOBYTE(a2) = 1;
            LOBYTE(v113[0]) = 1;
            v112[0] = 1;
            v22 = 0x2000;
            v103 = 0xE500000000000000;
            LOBYTE(v5) = 1;
LABEL_82:
            v13 = v9;
            v9 = 7;
            goto LABEL_63;
          }

          LOBYTE(v113[0]) = 14;
          result = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
          v101 = result;
          if (v94)
          {
            goto LABEL_90;
          }

          LOBYTE(v113[0]) = 15;
          result = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
          v102 = result;
          v106 = 0;
          if (v95)
          {
            goto LABEL_91;
          }

          v19 = 0x7365747962;
          v96 = *(v108 + 8);
          v96(v148, v12);
          v96(v107, v12);
          v104 = 0;
          v105 = 0;
          LOBYTE(a2) = 0;
          v20 = 0;
          LOBYTE(v5) = 0;
          v21 = 0;
          LOBYTE(v113[0]) = 0;
          v112[0] = 0;
          v22 = 0x2000;
          v103 = 0xE500000000000000;
LABEL_85:
          v13 = v9;
          v9 = v98;
          break;
        case 7:
          v106 = 0;
          v84 = *(v108 + 8);
          v84(v148, v12);
          v84(v107, v12);
          v102 = 0;
          v103 = 0;
          v9 = 0;
          v100 = 0;
          v101 = 0;
          v104 = 0;
          v105 = 0;
          LOBYTE(a2) = 0;
          v20 = 0;
          LOBYTE(v5) = 0;
          v21 = 0;
          v99 = 0u;
          v22 = -12288;
          v19 = 4;
          goto LABEL_63;
        default:
          v106 = 0;
          v87 = sub_10016176C(v113[0]);
          v68 = sub_1001619E8(v87, v88, v141);
          v19 = v141[0];
          v69 = v141[2];
          v101 = v141[3];
          v5 = v141[4];
          v102 = v141[5];
          v103 = v141[1];
          a2 = v141[6];
          v70 = v142;
          goto LABEL_57;
      }

      goto LABEL_63;
    }

    v106 = 0;
    v68 = sub_1001619E8(0, 0xE000000000000000, v139);
    v19 = v139[0];
    v69 = v139[2];
    v101 = v139[3];
    v5 = v139[4];
    v102 = v139[5];
    v103 = v139[1];
    a2 = v139[6];
    v70 = v140;
LABEL_57:
    v105 = v70;
    v55 = v108;
    goto LABEL_68;
  }

  v106 = 0;
  result = KeyedDecodingContainer.allKeys.getter();
  v105 = *(result + 16);
  if (!v105)
  {

    v56 = 0;
    v58 = 0;
    v57 = 0xE000000000000000;
    v47 = 0xE000000000000000;
    v55 = v108;
LABEL_67:
    v68 = sub_100162FD0(v56, v57, v58, v47, v137);
    v19 = v137[0];
    v69 = v137[2];
    v101 = v137[3];
    v5 = v137[4];
    v102 = v137[5];
    v103 = v137[1];
    a2 = v137[6];
    v105 = v138;
LABEL_68:
    v80 = *(v55 + 8);
    v80(v148, v12, v68);
    (v80)(v107, v12);
    v9 = v69;
    v104 = 0;
    v21 = v5 & 0xFFFFFFFFFFFFFF00;
    v20 = a2 & 0xFFFFFFFFFFFFFF00;
    v22 = -16384;
    goto LABEL_63;
  }

  v45 = 0;
  v46 = 0;
  v103 = 0;
  v104 = 0xE000000000000000;
  v47 = 0xE000000000000000;
  while (v46 < *(result + 16))
  {
    v48 = result;
    if (*(result + v46 + 32))
    {

      LOBYTE(v113[0]) = 1;
      v49 = v106;
      v50 = KeyedDecodingContainer.decode(_:forKey:)();
      v106 = v49;
      if (v49)
      {
        goto LABEL_69;
      }

      v45 = v50;
      v47 = v51;
    }

    else
    {

      LOBYTE(v113[0]) = 0;
      v52 = v106;
      v53 = KeyedDecodingContainer.decode(_:forKey:)();
      v104 = v54;
      v106 = v52;
      if (v52)
      {
LABEL_69:

        v34 = type metadata accessor for DecodingError();
        swift_allocError();
        v36 = v35;
        v37 = v107;
        KeyedDecodingContainer.codingPath.getter();
        sub_100157348();
        swift_allocError();
        *v38 = 0;
        DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
        (*(*(v34 - 8) + 104))(v36, enum case for DecodingError.dataCorrupted(_:), v34);
        swift_willThrow();

        v39 = *(v108 + 8);
        v39(v148, v12);
        v39(v37, v12);
        a2 = v109;
        return sub_100004118(a2);
      }

      v103 = v53;
    }

    ++v46;
    result = v48;
    if (v105 == v46)
    {

      v55 = v108;
      v56 = v103;
      v57 = v104;
      v58 = v45;
      goto LABEL_67;
    }
  }

  __break(1u);
LABEL_90:
  __break(1u);
LABEL_91:
  __break(1u);
  return result;
}

void sub_100155D7C()
{
  sub_100004868();
  sub_100004FEC();
  v200 = v5;
  v201 = v4;
  v7 = v6;
  v9 = v8;
  v10 = v2;
  v12 = *(v0 + 4);
  v11 = *(v0 + 5);
  if (v12 != v2 || v11 != v3)
  {
    v14 = v2;
    v15 = v3;
    if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || *(v0 + 1))
    {
      v10 = v12;
    }

    else
    {
      *v0 = v12;
      *(v0 + 1) = v11;
      *(v0 + 4) = v14;
      *(v0 + 5) = v15;
      v11 = v15;

      v10 = v14;
    }

    v4 = v201;
  }

  v213 = v11;
  v214 = v10;
  if (v7)
  {

    v4 = v201;
    *v0 = v9;
    *(v0 + 1) = v7;
  }

  if (v4)
  {

    *(v0 + 2) = v200;
    *(v0 + 3) = v201;
  }

  v16 = *(v0 + 6);
  v215 = *(v16 + 16);
  if (!v215)
  {
    goto LABEL_118;
  }

  v17 = 0;
  v216 = v0;
  while (1)
  {
    if (v17 >= *(v16 + 16))
    {
      goto LABEL_125;
    }

    memcpy(__dst, (v16 + 184 * v17 + 48), 0x62uLL);
    v18 = LOWORD(__dst[12]) >> 12;
    v222 = v16;
    v245 = v17;
    if (v18 == 7)
    {
      v211 = v16 + 184 * v17;
      v217 = v1;
      v221 = 184 * v17;
      v26 = *(__dst[0] + 40);
      v25 = *(__dst[0] + 48);
      *v226 = *(__dst[0] + 16);
      *&v226[8] = *(__dst[0] + 24);
      *&v226[24] = v26;
      *&v226[32] = v25;
      v203 = *&v226[8];
      v205 = v26;
      if (!v17)
      {
        sub_10014416C(__dst, __src);

        v0 = &_swiftEmptyDictionarySingleton;
LABEL_63:
        v103 = v16;
        v105 = *v216;
        v104 = *(v216 + 1);
        v107 = *(v216 + 2);
        v106 = *(v216 + 3);
        v108 = *(v216 + 9);
        v109 = v216[80];
        *v227 = *v216;
        *&v227[8] = v104;
        *&v227[16] = v107;
        *&v227[24] = v106;
        *&v227[32] = v214;
        *&v227[40] = v213;
        *&v227[48] = v103;
        *&v227[56] = *(v216 + 56);
        *&v227[72] = v108;
        v227[80] = v109;
        if (v17 >= *(v103 + 16))
        {
          goto LABEL_127;
        }

        v110 = *(v211 + 32);
        v111 = *(v211 + 40);
        v112 = sub_100099DF4(&qword_1002DD538, &unk_100238260);
        v17 = sub_10015D5B4(v112);
        sub_10000F0DC(v17, v113, v114, v115, v116, v117, v118, v119, v120, v200, v201, v203, v205, v206, v208, v209, v211, v213, v214, v121);
        if (v104)
        {
          v210 = v110;
          v224 = v105;
          v225 = v104;
          v228[0] = 46;
          v228[1] = 0xE100000000000000;
          sub_10015BE18(v227, __src);
          sub_1000BBBB0();

          if ((sub_10015D598(v228, &type metadata for String) & 1) == 0 && v106)
          {
            v122 = sub_10015D5B4(v112);
            sub_10000F0DC(v122, v123, v124, v125, v126, v127, v128, v129, v130, v200, v201, v202, v204, v207, v208, v209, v110, v213, v214, v131);
            v132[4] = v107;
            v132[5] = v106;
            v132[6] = v105;
            v132[7] = v104;
            __src[0] = v132;

            sub_100099DF4(&qword_1002DA600, &qword_10022E490);
            sub_100010288();
            sub_10000C098();
            v105 = BidirectionalCollection<>.joined(separator:)();
            v104 = v133;
          }

          v110 = v210;
        }

        else
        {
          sub_10015BE18(v227, __src);

          v104 = v213;

          v105 = v214;
        }

        *(v17 + 32) = v105;
        *(v17 + 40) = v104;
        *(v17 + 48) = v110;
        *(v17 + 56) = v111;
        __src[0] = v17;

        sub_100099DF4(&qword_1002DA600, &qword_10022E490);
        sub_100010288();
        sub_10000C098();
        BidirectionalCollection<>.joined(separator:)();

        sub_10015BE74(v227);
        sub_1001591F0();
        v1 = v217;
        if (v217)
        {

          sub_1001441C8(__dst);
          goto LABEL_118;
        }

        sub_1000140AC();
        v135 = swift_allocObject();
        v136 = *&v226[32];
        v137 = *&v226[16];
        *(v135 + 16) = *v226;
        *(v135 + 32) = v137;
        *(v135 + 48) = v136;
        v16 = v222;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1001612B8();
          v16 = v198;
        }

        sub_10000BF28();
        if (v134)
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
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
          return;
        }

        v138 = v16 + v221;
        memcpy(__src, (v16 + v221 + 48), 0x62uLL);
        *(v138 + 48) = v135;
        v206 = v207 & 1;
        v208 = v208;
        *(v138 + 104) = v208;
        *(v138 + 128) = v206;
        HIDWORD(v209) = WORD2(v209) & 0x301 | 0x7000;
        *(v138 + 144) = WORD2(v209);
        sub_1001441C8(__src);
        sub_1001441C8(__dst);
        goto LABEL_81;
      }

      sub_10014416C(__dst, __src);
      v27 = (v16 + 48);

      v28 = 0;
      v0 = &_swiftEmptyDictionarySingleton;
      while (1)
      {
        if (v28 >= *(v16 + 16))
        {
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
          goto LABEL_128;
        }

        memcpy(v244, v27, sizeof(v244));
        v29 = AvroSchema.getName()();
        if (v29.value._object)
        {
          break;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v227 = v0;
        v46 = sub_10015D5D8();
        v48 = sub_10014EB30(v46, v47);
        v50 = *(v0 + 2);
        v51 = (v49 & 1) == 0;
        v52 = v50 + v51;
        if (__OFADD__(v50, v51))
        {
          goto LABEL_122;
        }

        v53 = v48;
        v54 = v49;
        sub_100099DF4(&qword_1002DE968, &unk_10023B920);
        if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v52))
        {
          v55 = sub_10015D5D8();
          v57 = sub_10014EB30(v55, v56);
          v16 = v222;
          if ((v54 & 1) != (v58 & 1))
          {
            goto LABEL_136;
          }

          v53 = v57;
          if ((v54 & 1) == 0)
          {
LABEL_48:
            v0 = *v227;
            sub_1000035B8(*v227 + 8 * (v53 >> 6));
            v59 = (*(v0 + 6) + 16 * v53);
            *v59 = 1819047278;
            v59[1] = 0xE400000000000000;
            sub_100006314();
            v62 = v60 + v53 * v61;
            *v62 = 0u;
            *(v62 + 16) = 0u;
            *(v62 + 32) = 0u;
            *(v62 + 48) = 0u;
            *(v62 + 64) = 0u;
            *(v62 + 80) = 0u;
            *(v62 + 96) = -12288;
            v63 = *(v0 + 2);
            v43 = __OFADD__(v63, 1);
            v64 = v63 + 1;
            if (v43)
            {
              goto LABEL_124;
            }

            *(v0 + 2) = v64;
            goto LABEL_55;
          }
        }

        else
        {
          v16 = v222;
          if ((v54 & 1) == 0)
          {
            goto LABEL_48;
          }
        }

        v0 = *v227;
        sub_100006314();
        v70 = (v68 + v53 * v69);
        memcpy(__src, v70, 0x62uLL);
        *v70 = 0u;
        v70[1] = 0u;
        v70[2] = 0u;
        v70[3] = 0u;
        v70[4] = 0u;
        v70[5] = 0u;
        *(v70 + 48) = -12288;
        sub_1001441C8(__src);
LABEL_55:
        v28 = (v28 + 1);
        v27 += 184;
        if (v17 == v28)
        {
          goto LABEL_63;
        }
      }

      memcpy(__src, v27, 0x62uLL);
      sub_10014416C(__src, v227);
      v30 = swift_isUniquelyReferenced_nonNull_native();
      v224 = v0;
      v31 = sub_10014EB30(v29.value._countAndFlagsBits, v29.value._object);
      v33 = *(v0 + 2);
      v34 = (v32 & 1) == 0;
      v35 = v33 + v34;
      if (__OFADD__(v33, v34))
      {
        goto LABEL_120;
      }

      v36 = v31;
      v37 = v32;
      sub_100099DF4(&qword_1002DE968, &unk_10023B920);
      if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v30, v35))
      {
        v38 = sub_10014EB30(v29.value._countAndFlagsBits, v29.value._object);
        v17 = v245;
        if ((v37 & 1) != (v39 & 1))
        {
          goto LABEL_136;
        }

        v36 = v38;
        if ((v37 & 1) == 0)
        {
          goto LABEL_42;
        }
      }

      else
      {
        v17 = v245;
        if ((v37 & 1) == 0)
        {
LABEL_42:
          v0 = v224;
          sub_1000035B8(v224 + 8 * (v36 >> 6));
          *(*(v0 + 6) + 16 * v36) = v29;
          sub_100006314();
          memcpy((v40 + v36 * v41), __src, 0x62uLL);
          v42 = *(v0 + 2);
          v43 = __OFADD__(v42, 1);
          v44 = v42 + 1;
          if (v43)
          {
            goto LABEL_123;
          }

          *(v0 + 2) = v44;
          goto LABEL_52;
        }
      }

      v0 = v224;
      sub_100006314();
      v67 = (v65 + v36 * v66);
      memcpy(v227, v67, sizeof(v227));
      memcpy(v67, __src, 0x62uLL);
      sub_1001441C8(v227);
LABEL_52:
      v16 = v222;
      goto LABEL_55;
    }

    if (v18 != 12)
    {
      v218 = v1;
      v71 = v16 + 184 * v17;
      v72 = v16;
      v74 = *v0;
      v73 = *(v0 + 1);
      v76 = *(v0 + 2);
      v75 = *(v0 + 3);
      v77 = *(v0 + 9);
      v78 = v0[80];
      __src[0] = *v0;
      __src[1] = v73;
      __src[2] = v76;
      __src[3] = v75;
      v80 = v213;
      v79 = v214;
      __src[4] = v214;
      __src[5] = v213;
      *&__src[7] = *(v0 + 56);
      __src[6] = v72;
      __src[9] = v77;
      LOBYTE(__src[10]) = v78;
      v0 = *(v71 + 40);
      v212 = *(v71 + 32);
      v81 = sub_100099DF4(&qword_1002DD538, &unk_100238260);
      v17 = sub_10015D5B4(v81);
      sub_10000F0DC(v17, v82, v83, v84, v85, v86, v87, v88, v89, v200, v201, v202, v204, v206, v208, v209, v212, v213, v214, v90);
      if (v73)
      {
        *v226 = v74;
        *&v226[8] = v73;
        v224 = 46;
        v225 = 0xE100000000000000;
        sub_10015BE18(__src, v227);
        sub_1000BBBB0();

        if ((sub_10015D598(&v224, &type metadata for String) & 1) == 0 && v75)
        {
          v91 = sub_10015D5B4(v81);
          sub_10000F0DC(v91, v92, v93, v94, v95, v96, v97, v98, v99, v200, v201, v202, v204, v206, v208, v209, v210, v213, v214, v100);
          v101[4] = v76;
          v101[5] = v75;
          v101[6] = v74;
          v101[7] = v73;
          *v227 = v101;

          sub_100099DF4(&qword_1002DA600, &qword_10022E490);
          sub_100010288();
          sub_10000C098();
          v74 = BidirectionalCollection<>.joined(separator:)();
          v73 = v102;
        }

        sub_10015BE74(__src);
      }

      else
      {

        v74 = v79;
        v73 = v80;
      }

      *(v17 + 32) = v74;
      *(v17 + 40) = v73;
      *(v17 + 48) = v210;
      *(v17 + 56) = v0;
      *v227 = v17;
      sub_100099DF4(&qword_1002DA600, &qword_10022E490);
      sub_100010288();
      sub_10000C098();
      BidirectionalCollection<>.joined(separator:)();

      v16 = v222;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1001612B8();
        v16 = v197;
      }

      sub_10000BF28();
      if (v134)
      {
        goto LABEL_126;
      }

      sub_1000109B8();
      sub_1001583E4();
      v1 = v218;
      if (v218)
      {

        *(v0 + 6) = v16;
        goto LABEL_118;
      }

LABEL_81:
      *(v0 + 6) = v16;
      goto LABEL_112;
    }

    if (v17)
    {
      break;
    }

LABEL_112:
    if (++v17 == v215)
    {
      goto LABEL_118;
    }
  }

  v220 = 184 * v17;
  v19 = __dst[2];
  v20 = __dst[3];

  v21 = 0;
  v22 = 48;
  while (1)
  {
    if (v21 >= *(v16 + 16))
    {
      goto LABEL_121;
    }

    memcpy(v243, (v16 + v22), sizeof(v243));
    v23 = AvroSchema.getName()();
    if (!v23.value._object)
    {
      if (!v20)
      {
        goto LABEL_83;
      }

      goto LABEL_32;
    }

    if (v20)
    {
      break;
    }

LABEL_32:
    v21 = (v21 + 1);
    v22 += 184;
    if (v245 == v21)
    {
      sub_1001441C8(__dst);
LABEL_111:
      v17 = v245;
      goto LABEL_112;
    }
  }

  if (v23.value._countAndFlagsBits != v19 || v23.value._object != v20)
  {
    _stringCompareWithSmolCheck(_:_:expecting:)();
    sub_10015D600();

    if (v243)
    {
      goto LABEL_83;
    }

    goto LABEL_32;
  }

LABEL_83:
  if (v21 >= *(v16 + 16))
  {
    goto LABEL_129;
  }

  memcpy(__src, (v16 + v22), 0x62uLL);
  sub_10014416C(__src, v227);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1001612B8();
    v16 = v199;
  }

  if (v245 >= *(v16 + 16))
  {
    goto LABEL_130;
  }

  v139 = v16;
  v140 = (v16 + v220);
  memcpy(v226, v140 + 6, sizeof(v226));
  memcpy(v140 + 6, __src, 0x62uLL);
  sub_1001441C8(v226);
  v141 = *(v139 + 16);
  if (v21 >= v141)
  {
    goto LABEL_131;
  }

  v223 = v139;
  memcpy(v227, (v139 + v22), sizeof(v227));
  v142 = *&v227[96] >> 12;
  switch(v142)
  {
    case 3:
      sub_10015D644(v242, *v227);
      if (v245 >= v141)
      {
        goto LABEL_135;
      }

      v180 = v140[4];
      v179 = v140[5];

      sub_10014416C(v227, &v224);

      sub_10015BE18(v242, &v224);
      v181 = sub_10015CBF8(sub_10011D0A8);
      if (v182)
      {
        v183 = v181;
        v184 = v182;
        v185 = sub_100099DF4(&qword_1002DD538, &unk_100238260);
        v186 = sub_10015D5B4(v185);
        sub_10000F0DC(v186, v187, v188, v189, v190, v191, v192, v193, v194, v200, v201, v202, v204, v206, v208, v209, v210, v213, v214, v195);
        v196[4] = v183;
        v196[5] = v184;
        v196[6] = v180;
        v196[7] = v179;
        v224 = v196;
        sub_100099DF4(&qword_1002DA600, &qword_10022E490);
        sub_100010288();
        sub_100006AEC();
        BidirectionalCollection<>.joined(separator:)();
        sub_10015D684();
      }

      else
      {
      }

      sub_10015BE74(v242);
LABEL_107:

      sub_1001441C8(v227);
      break;
    case 8:
      v233 = *v227;
      v234 = *&v227[8];
      v235 = *&v227[16];
      v236 = *&v227[24];
      v237 = *&v227[32];
      v238 = *&v227[48];
      v239 = *&v227[64];
      v240 = *&v227[80];
      v241 = *&v227[96] & 0xFFF;
      if (v245 >= v141)
      {
        goto LABEL_134;
      }

      v219 = v1;
      v162 = v140[4];
      v161 = v140[5];

      sub_10014416C(v227, &v224);

      v163 = sub_10015CAB0();
      if (v164)
      {
        v165 = v163;
        v166 = v164;
        v167 = sub_100099DF4(&qword_1002DD538, &unk_100238260);
        v168 = sub_10015D5B4(v167);
        sub_10000F0DC(v168, v169, v170, v171, v172, v173, v174, v175, v176, v200, v201, v202, v204, v206, v208, v209, v210, v213, v214, v177);
        v178[4] = v165;
        v178[5] = v166;
        v178[6] = v162;
        v178[7] = v161;
        v224 = v178;
        sub_100099DF4(&qword_1002DA600, &qword_10022E490);
        sub_100010288();
        sub_100006AEC();
        BidirectionalCollection<>.joined(separator:)();
      }

      else
      {

        swift_bridgeObjectRelease_n();
      }

      sub_1001441C8(v227);
      v1 = v219;
      break;
    case 4:
      sub_10015D644(v232, *v227);
      if (v245 >= v141)
      {
        goto LABEL_133;
      }

      v144 = v140[4];
      v143 = v140[5];
      swift_bridgeObjectRetain_n();
      sub_10014416C(v227, &v224);
      sub_10015C048(v232, &v224);
      v145 = sub_10015CBF8(sub_10011C524);
      if (v146)
      {
        v147 = v145;
        v148 = v146;
        v149 = sub_100099DF4(&qword_1002DD538, &unk_100238260);
        v150 = sub_10015D5B4(v149);
        sub_10000F0DC(v150, v151, v152, v153, v154, v155, v156, v157, v158, v200, v201, v202, v204, v206, v208, v209, v210, v213, v214, v159);
        v160[4] = v147;
        v160[5] = v148;
        v160[6] = v144;
        v160[7] = v143;
        v224 = v160;
        sub_100099DF4(&qword_1002DA600, &qword_10022E490);
        sub_100010288();
        sub_100006AEC();
        BidirectionalCollection<>.joined(separator:)();
        sub_10015D684();
      }

      else
      {
      }

      sub_10015C0A4(v232);
      goto LABEL_107;
    default:

      break;
  }

  if (v245 >= *(v223 + 16))
  {
    goto LABEL_132;
  }

  memcpy(v231, v140 + 6, sizeof(v231));
  AvroSchema.getTypeName()();
  sub_1001583E4();
  if (!v1)
  {

    sub_1001441C8(__dst);
    v0 = v216;
    v16 = v223;
    *(v216 + 6) = v223;
    goto LABEL_111;
  }

  sub_1001441C8(__dst);
  *(v216 + 6) = v223;
LABEL_118:
  sub_100005074();
}

void sub_100156CD8()
{
  v2 = *(v0 + 32);
  v3 = *(v2 + 16);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_8:
    sub_1001612CC();
    v2 = v6;
  }

  v4 = v2 + 32;
  v5 = -v3;
  v3 = -1;
  while (v5 + v3 != -1)
  {
    if (++v3 >= *(v2 + 16))
    {
      __break(1u);
      goto LABEL_8;
    }

    sub_1001583E4();
    v4 += 104;
    if (v1)
    {
      break;
    }
  }

  *(v7 + 32) = v2;
}

void AvroSchema.init(from:)()
{
  sub_100004868();
  v25 = v3;
  v5 = v4;
  v6 = sub_100099DF4(&qword_1002DED30, &qword_10023CCB0);
  sub_1000030B8(v6);
  sub_100003774();
  __chkstk_darwin(v7);
  sub_100003B38();
  v8 = sub_100099DF4(&qword_1002DED38, &qword_10023CCB8);
  sub_100003724();
  v33 = v9;
  __chkstk_darwin(v10);
  sub_10000308C();
  v13 = v11 - v12;
  __chkstk_darwin(v14);
  sub_10000A850();
  sub_100008B3C(v5, v5[3]);
  sub_1001572F4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v0)
  {

    sub_100002728(v1, 1, 1, v8);
    sub_10015D090(v1, &qword_1002DED30, &qword_10023CCB0);
    sub_10000C4FC(v5, v5[3]);
    sub_100002A98();
    dispatch thunk of Decoder.singleValueContainer()();
    sub_10000601C(&v27, v28);
    sub_100008B3C(v28, v28[3]);
    sub_100002A98();
    v17 = dispatch thunk of SingleValueDecodingContainer.decode(_:)();
    sub_1001540EC(v17, v18, v31);
    v26 = v31[0];
    v21 = v31[2];
    v22 = v31[1];
    v23 = v31[5];
    v24 = v31[3];
    v20 = v31[4];
    v19 = v32;
    sub_100004118(v28);
  }

  else
  {
    sub_100002728(v1, 0, 1, v8);
    v15 = sub_10000D560();
    v16(v15);
    (*(v33 + 16))(v13, v2, v8);
    sub_1001512EC(v5, v28);
    sub_100154A60(v13, v28, v29);
    v26 = v29[0];
    v21 = v29[2];
    v22 = v29[1];
    v23 = v29[5];
    v24 = v29[3];
    v20 = v29[4];
    v19 = v30;
    (*(v33 + 8))(v2, v8);
  }

  sub_100004118(v5);
  *v25 = v26;
  *(v25 + 16) = v22;
  *(v25 + 32) = v21;
  *(v25 + 48) = v24;
  *(v25 + 64) = v20;
  *(v25 + 80) = v23;
  *(v25 + 96) = v19;
  sub_100005074();
}

unint64_t sub_1001572F4()
{
  result = qword_1002DED40;
  if (!qword_1002DED40)
  {
    result = swift_getWitnessTable("M \a", &_s10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1002DED40);
  }

  return result;
}

unint64_t sub_100157348()
{
  result = qword_1002DED50;
  if (!qword_1002DED50)
  {
    result = swift_getWitnessTable("a-\a", &type metadata for AvroSchemaDecodingError, v0, v1);
    atomic_store(result, &qword_1002DED50);
  }

  return result;
}

unint64_t sub_10015739C()
{
  result = qword_1002DED60;
  if (!qword_1002DED60)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = sub_10009A468(&qword_1002DED58, &unk_10023CCC8);
    v4[0] = sub_100157420();
    result = swift_getWitnessTable(&protocol conformance descriptor for <A> [A], v3, v4);
    atomic_store(result, &qword_1002DED60);
  }

  return result;
}

unint64_t sub_100157420()
{
  result = qword_1002DED68;
  if (!qword_1002DED68)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AvroSchema, &type metadata for AvroSchema, v0, v1);
    atomic_store(result, &qword_1002DED68);
  }

  return result;
}

uint64_t AvroSchema.encode(jsonEncoder:)()
{
  v1 = v0[2];
  v2 = *(v0 + 48);
  v3 = v2 >> 12;
  if (!(v2 >> 12))
  {
    v16 = v0[2];
    v15 = 2;
    goto LABEL_12;
  }

  switch(v3)
  {
    case 1u:
      v16 = v0[2];
      v15 = 3;
LABEL_12:
      if (v16 == 7)
      {
        return sub_100153E24(v15);
      }

      return sub_100153F58(v15, v1);
    case 2u:
      if (v0[2] == 7)
      {
        v15 = 6;
        return sub_100153E24(v15);
      }

      break;
    case 0xDu:
      v5 = v0[10];
      v4 = v0[11];
      v6 = v0[8];
      v7 = v0[9];
      v9 = v0[6];
      v8 = v0[7];
      v11 = v0[4];
      v10 = v0[5];
      v12 = v0[3];
      v14 = *v0;
      v13 = v0[1];
      if (v2 == 53248 && !(v1 | v14 | v4 | v5 | v7 | v6 | v8 | v9 | v10 | v11 | v12 | v13))
      {
        v15 = 0;
        return sub_100153E24(v15);
      }

      v18 = v4 | v1 | v5 | v7 | v6 | v8 | v9 | v10 | v11 | v12 | v13;
      v19 = v2 == 53248 && v14 == 1;
      if (v19 && !v18)
      {
        v15 = 1;
        return sub_100153E24(v15);
      }

      v20 = v2 == 53248 && v14 == 2;
      if (v20 && !v18)
      {
        v15 = 4;
        return sub_100153E24(v15);
      }

      v21 = v2 == 53248 && v14 == 3;
      if (v21 && !v18)
      {
        v15 = 5;
        return sub_100153E24(v15);
      }

      v22 = v2 == 53248 && v14 == 4;
      if (v22 && !v18)
      {
        v15 = 7;
        return sub_100153E24(v15);
      }

      break;
  }

  sub_10015D5E8(v23);
  sub_100157620();
  return dispatch thunk of JSONEncoder.encode<A>(_:)();
}

unint64_t sub_100157620()
{
  result = qword_1002DED70;
  if (!qword_1002DED70)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AvroSchema, &type metadata for AvroSchema, v0, v1);
    atomic_store(result, &qword_1002DED70);
  }

  return result;
}

void AvroSchema.encode(to:)()
{
  sub_100004868();
  v2 = v0[1];
  v3 = v0[3];
  v4 = v0[5];
  v5 = v0[6];
  sub_10000C4FC(v6, v6[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  v14 = *v0;
  v15 = v0[2];
  v16 = v0[4];
  v17 = v0[7];
  v18 = v0[8];
  v20 = v0[9];
  v19 = v0[10];
  v21 = v0[11];
  v22 = *(v0 + 48);
  switch(v22 >> 12)
  {
    case 1u:
      if (v0[2] != 7)
      {
        goto LABEL_16;
      }

      v23 = 3;
      goto LABEL_63;
    case 2u:
      v81 = *v0;
      v82 = v2;
      v83 = v15;
      v84 = v3;
      v85 = v16;
      v86 = v4;
      v87 = v5;
      if (v15 == 7)
      {
        v23 = 6;
        goto LABEL_63;
      }

      sub_10000C6A0();
      AvroSchema.BytesSchema.encode(to:)();
      if (!v1 && ((v85 & 1) != 0 || v84 < 1 || (v87 & 1) != 0 || v84 < v86))
      {
        goto LABEL_54;
      }

      goto LABEL_66;
    case 3u:
      sub_10015D644(v101, v14);
      sub_10015BE18(v101, __dst);
      v53 = sub_10000C6A0();
      AvroSchema.RecordSchema.encode(to:)(v53, v54, v55, v56, v57, v58, v59, v60, v73, v74[0], v74[1], v74[2], v74[3], v74[4], v74[5], v74[6], v74[7], v74[8], v74[9], v74[10]);
      v52 = v101;
      goto LABEL_12;
    case 4u:
      sub_10015D644(v104, v14);
      sub_10015C048(v104, __dst);
      v32 = sub_10000C6A0();
      AvroSchema.EnumSchema.encode(to:)(v32, v33, v34, v35, v36, v37, v38, v39, v73, v74[0], v74[1], v74[2], v74[3], v74[4], v74[5], v74[6], v74[7], v74[8], v74[9], v74[10]);
      sub_10015C0A4(v104);
      goto LABEL_66;
    case 5u:
      memcpy(v102, v14 + 2, 0x73uLL);
      sub_100150F70(v102, __dst);
      v61 = sub_10000C6A0();
      AvroSchema.ArraySchema.encode(to:)(v61);
      sub_100150FCC(v102);
      goto LABEL_66;
    case 6u:
      memcpy(v103, v14 + 2, 0x73uLL);
      sub_10014EA68(v103, __dst);
      v63 = sub_10000C6A0();
      AvroSchema.MapSchema.encode(to:)(v63);
      sub_10014EAC4(v103);
      goto LABEL_66;
    case 7u:
      sub_10000D07C(v17, v7, v8, v9, v10, v11, v12, v13, v73, v74[0], v74[1], v74[2], v74[3], v74[4], v74[5], v74[6], v74[7], v74[8], v74[9], v74[10], v74[11], v74[12], v74[13], v74[14], v74[15], v74[16], v74[17], v74[18], v74[19], v74[20], v74[21], v74[22], v14[2], v14[3], v14[4], v14[5], v14[6], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *&__dst[72], *&__dst[80], *&__dst[88], *&__dst[96], *&__dst[104], *&__dst[112], *&__dst[120], *&__dst[128], *&__dst[136], *&__dst[144], *&__dst[152], *&__dst[160], *&__dst[168], *&__dst[176], v76, v77, v78, v79, v80);
      sub_10015BFF4();
      goto LABEL_65;
    case 8u:
      v88 = *v0;
      v89 = v2;
      v90 = v15;
      v91 = v3;
      v92 = v16;
      v93 = v4;
      v94 = v5;
      v95 = v17;
      v96 = v18;
      v97 = v20;
      v98 = v19;
      v99 = v21;
      v100 = v22 & 0xFFF;
      if (v17 == 7)
      {
        goto LABEL_24;
      }

      if (sub_100161910(v17) == 0x6C616D69636564 && v66 == 0xE700000000000000)
      {
      }

      else
      {
        v68 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v68 & 1) == 0)
        {
LABEL_24:
          sub_10000C6A0();
          AvroSchema.FixedSchema.encode(to:)();
          goto LABEL_66;
        }
      }

      sub_10000C6A0();
      AvroSchema.FixedSchema.encode(to:)();
      if (!v1 && (sub_1001636AC() & 1) == 0)
      {
LABEL_54:
        v70 = sub_100151350();
        sub_100007F60(&type metadata for BinaryEncodingError, v70);
        *v71 = 7;
LABEL_7:
        swift_willThrow();
      }

      goto LABEL_66;
    case 9u:
      sub_10015D644(v105, v14);
      sub_10015BE18(v105, __dst);
      v44 = sub_10000C6A0();
      AvroSchema.RecordSchema.encode(to:)(v44, v45, v46, v47, v48, v49, v50, v51, v73, v74[0], v74[1], v74[2], v74[3], v74[4], v74[5], v74[6], v74[7], v74[8], v74[9], v74[10]);
      v52 = v105;
LABEL_12:
      sub_10015BE74(v52);
      goto LABEL_66;
    case 0xAu:
      sub_10000D07C(v17, v7, v8, v9, v10, v11, v12, v13, v73, v74[0], v74[1], v74[2], v74[3], v74[4], v74[5], v74[6], v74[7], v74[8], v74[9], v74[10], v74[11], v74[12], v74[13], v74[14], v74[15], v74[16], v74[17], v74[18], v74[19], v74[20], v74[21], v74[22], v14[2], *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *&__dst[72], *&__dst[80], *&__dst[88], *&__dst[96], *&__dst[104], *&__dst[112], *&__dst[120], *&__dst[128], *&__dst[136], *&__dst[144], *&__dst[152], *&__dst[160], *&__dst[168], *&__dst[176], v76, v77, v78, v79, v80);
      sub_100099DF4(&qword_1002DED88, &qword_10023CCE0);
      sub_10015BF1C();
      goto LABEL_65;
    case 0xBu:
      memcpy(__dst, v14 + 2, 0xB2uLL);
      v24 = memcpy(v74, __dst, 0xB2uLL);
      sub_10000D07C(v24, v25, v26, v27, v28, v29, v30, v31, v73, v74[0], v74[1], v74[2], v74[3], v74[4], v74[5], v74[6], v74[7], v74[8], v74[9], v74[10], v74[11], v74[12], v74[13], v74[14], v74[15], v74[16], v74[17], v74[18], v74[19], v74[20], v74[21], v74[22], *__dst, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *&__dst[72], *&__dst[80], *&__dst[88], *&__dst[96], *&__dst[104], *&__dst[112], *&__dst[120], *&__dst[128], *&__dst[136], *&__dst[144], *&__dst[152], *&__dst[160], *&__dst[168], *&__dst[176], v76, v77, v78, v79, v80);
      sub_10015BFA0();
      goto LABEL_65;
    case 0xCu:
      v106 = type metadata accessor for EncodingError();
      sub_100007F60(v106, &protocol witness table for EncodingError);
      v41 = v40;
      sub_100099DF4(&qword_1002DED78, &qword_10023CCD8);
      v41[3] = &type metadata for AvroSchema;
      v42 = swift_allocObject();
      *v41 = v42;
      memcpy((v42 + 16), v0, 0x62uLL);
      sub_100008B3C(&v77, v80);

      dispatch thunk of SingleValueEncodingContainer.codingPath.getter();
      v43 = sub_10015BEC8();
      sub_100007F60(&type metadata for AvroSchemaEncodingError, v43);
      EncodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v106 - 8) + 104))(v41, enum case for EncodingError.invalidValue(_:));
      goto LABEL_7;
    case 0xDu:
      v62 = v3 | v2 | v4 | v5;
      if (v22 == 53248 && !(v62 | v14 | v15 | v16 | v17 | v18 | v20 | v19 | v21))
      {
        __dst[0] = 0;
        goto LABEL_64;
      }

      v64 = v62 | v15 | v16 | v17 | v18 | v20 | v19 | v21;
      v65 = v22 == 53248 && v14 == 1;
      if (!v65 || v64)
      {
        v69 = v22 == 53248 && v14 == 2;
        if (!v69 || v64)
        {
          v72 = v22 == 53248 && v14 == 3;
          if (!v72 || v64)
          {
            v23 = 7;
          }

          else
          {
            v23 = 5;
          }
        }

        else
        {
          v23 = 4;
        }
      }

      else
      {
        v23 = 1;
      }

      goto LABEL_63;
    default:
      if (v0[2] == 7)
      {
        v23 = 2;
LABEL_63:
        __dst[0] = v23;
LABEL_64:
        sub_10000D07C(v17, v7, v8, v9, v10, v11, v12, v13, v73, v74[0], v74[1], v74[2], v74[3], v74[4], v74[5], v74[6], v74[7], v74[8], v74[9], v74[10], v74[11], v74[12], v74[13], v74[14], v74[15], v74[16], v74[17], v74[18], v74[19], v74[20], v74[21], v74[22], *__dst, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *&__dst[72], *&__dst[80], *&__dst[88], *&__dst[96], *&__dst[104], *&__dst[112], *&__dst[120], *&__dst[128], *&__dst[136], *&__dst[144], *&__dst[152], *&__dst[160], *&__dst[168], *&__dst[176], v76, v77, v78, v79, v80);
        sub_10015C0F8();
      }

      else
      {
LABEL_16:
        __dst[0] = v0[2];
        sub_10000D07C(v17, v7, v8, v9, v10, v11, v12, v13, v73, v74[0], v74[1], v74[2], v74[3], v74[4], v74[5], v74[6], v74[7], v74[8], v74[9], v74[10], v74[11], v74[12], v74[13], v74[14], v74[15], v74[16], v74[17], v74[18], v74[19], v74[20], v74[21], v74[22], *__dst, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *&__dst[72], *&__dst[80], *&__dst[88], *&__dst[96], *&__dst[104], *&__dst[112], *&__dst[120], *&__dst[128], *&__dst[136], *&__dst[144], *&__dst[152], *&__dst[160], *&__dst[168], *&__dst[176], v76, v77, v78, v79, v80);
        sub_10015C14C();
      }

LABEL_65:
      dispatch thunk of SingleValueEncodingContainer.encode<A>(_:)();
LABEL_66:
      sub_100004118(&v77);
      sub_100005074();
      return;
  }
}

void AvroSchema.RecordSchema.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_100004868();
  v61 = v21;
  v24 = v23;
  v25 = sub_100099DF4(&qword_1002DEDB8, &qword_10023CCE8);
  sub_1000030B8(v25);
  sub_100003774();
  __chkstk_darwin(v26);
  v28 = &v57 - v27;
  v29 = sub_100099DF4(&qword_1002DEDC0, &qword_10023CCF0);
  sub_10000307C();
  __chkstk_darwin(v30);
  sub_10000308C();
  v33 = v31 - v32;
  __chkstk_darwin(v34);
  sub_10000A850();
  sub_100099DF4(&qword_1002DEDC8, &qword_10023CCF8);
  sub_100003724();
  v36 = v35;
  sub_100003774();
  __chkstk_darwin(v37);
  sub_100004880();
  v38 = v61;
  sub_100158D20(v24);
  if (!v38)
  {
    v58 = v22;
    v59 = v28;
    v57 = v33;
    v60 = v36;
    v61 = v20;
    sub_100008B3C(v24, v24[3]);
    v39 = sub_10015C1A0();
    sub_10015D6A4(&unk_1002B9FF8, v40, v39);
    v64 = 0;
    sub_100099DF4(&qword_1002DED88, &qword_10023CCE0);
    sub_10015BF1C();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v43 = *(sub_10000A600(v24) + 16);

    if (v43)
    {
      v44 = sub_10000A600(v24);
      v45 = v59;
      sub_100153CA8(v44, v59);

      if (sub_100004DFC(v45, 1, v29) == 1)
      {
        v46 = sub_10015D60C();
        v47(v46);
        sub_10015D090(v45, &qword_1002DEDB8, &qword_10023CCE8);
      }

      else
      {
        v48 = v58;
        sub_10015C1F4(v45, v58);
        v49 = v57;
        sub_10015C264(v48, v57);
        if (sub_10000AE5C())
        {
          v50 = v63;
          type metadata accessor for CodingUserInfoKey();
          sub_100006EF0();
          (*(v51 + 8))(v49);
          if (v50 == 2)
          {
            v62 = 1;
            KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
          }

          sub_10015D090(v48, &qword_1002DEDC0, &qword_10023CCF0);
          v52 = sub_10015D60C();
          v53(v52);
        }

        else
        {
          sub_10015D090(v48, &qword_1002DEDC0, &qword_10023CCF0);
          v54 = sub_10015D60C();
          v55(v54);
          type metadata accessor for CodingUserInfoKey();
          sub_100006EF0();
          (*(v56 + 8))(v49);
        }
      }
    }

    else
    {
      v41 = sub_10015D60C();
      v42(v41);
    }
  }

  sub_100005074();
}

void AvroSchema.EnumSchema.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_100004868();
  v24 = v23;
  v25 = sub_100099DF4(&qword_1002DEDB8, &qword_10023CCE8);
  sub_1000030B8(v25);
  sub_100003774();
  __chkstk_darwin(v26);
  sub_100003B38();
  v27 = sub_100099DF4(&qword_1002DEDC0, &qword_10023CCF0);
  sub_10000307C();
  __chkstk_darwin(v28);
  sub_10000308C();
  v31 = v29 - v30;
  __chkstk_darwin(v32);
  sub_10000A850();
  sub_100099DF4(&qword_1002DEDD8, &unk_10023CD00);
  sub_100003724();
  sub_100003774();
  __chkstk_darwin(v33);
  sub_100004880();
  sub_100158F88(v24);
  if (!v20)
  {
    sub_100008B3C(v24, v24[3]);
    v34 = sub_10015C2D4();
    sub_10015D6A4(&unk_1002B9F68, v35, v34);
    sub_100099DF4(&qword_1002DA600, &qword_10022E490);
    sub_10000ABC8(&qword_1002DEDE8, &protocol witness table for String);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v38 = *(sub_10000A600(v24) + 16);

    if (v38)
    {
      v39 = sub_10000A600(v24);
      sub_100153CA8(v39, v21);

      if (sub_100004DFC(v21, 1, v27) == 1)
      {
        v40 = sub_100005CF0();
        v41(v40);
        sub_10015D090(v21, &qword_1002DEDB8, &qword_10023CCE8);
      }

      else
      {
        sub_10015C1F4(v21, v22);
        sub_10015C264(v22, v31);
        if (sub_10000AE5C())
        {
          type metadata accessor for CodingUserInfoKey();
          sub_100006EF0();
          (*(v42 + 8))(v31);
          if (v48 == 2)
          {
            KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
          }

          sub_10015D090(v22, &qword_1002DEDC0, &qword_10023CCF0);
          v43 = sub_100005CF0();
          v44(v43);
        }

        else
        {
          sub_10015D090(v22, &qword_1002DEDC0, &qword_10023CCF0);
          v45 = sub_100005CF0();
          v46(v45);
          type metadata accessor for CodingUserInfoKey();
          sub_100006EF0();
          (*(v47 + 8))(v31);
        }
      }
    }

    else
    {
      v36 = sub_100005CF0();
      v37(v36);
    }
  }

  sub_100005074();
}

void sub_1001583E4()
{
  sub_100004868();
  v2 = v0;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = sub_10015D5E8(v105);
  v19 = v105[12];
  v20 = v105[0];
  switch(LOWORD(v105[12]) >> 12)
  {
    case 3:
      sub_1000040C0(v11, v12, v13, v14, v15, v16, v17, v18, v65, v67, v69, v71, v73, v75, v77, v79, v82, v85, v88, v91, v92, __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], __dst[9], __dst[10], v94, *(&v94 + 1), v95, *(&v95 + 1), v96, __src[0], __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8], __src[9], __src[10], __src[11], __src[12], __src[13], __src[14]);
      memcpy(__dst, (v20 + 16), 0x51uLL);
      sub_10014416C(v105, v100);
      sub_10015BE18(v98, v100);
      sub_1000039B0();
      sub_100155D7C();
      if (v1)
      {
        v21 = __dst;
        goto LABEL_37;
      }

      sub_10000776C(v100);
      sub_1001441C8(v100);
      sub_100004650();
      v58 = swift_allocObject();
      v59 = sub_10015D564(v58);
      memcpy(v59, __dst, 0x51uLL);
      sub_1001441C8(v105);
      sub_10000678C();
      v53 = 12288;
      goto LABEL_62;
    case 4:
      v106 = v6;
      sub_10000776C(v100);

      v25 = sub_1001441C8(v100);
      sub_1000040C0(v25, v26, v27, v28, v29, v30, v31, v32, v65, v67, v69, v71, v73, v75, v77, v79, v82, v85, v10, v91, v92, __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], __dst[9], __dst[10], v94, *(&v94 + 1), v95, *(&v95 + 1), v96, __src[0], __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8], __src[9], __src[10], __src[11], __src[12], __src[13], __src[14]);
      v34 = *(&v98[2] + 1);
      v33 = *&v98[2];
      v35 = *(&v98[0] + 1);
      v80 = *(&v98[1] + 1);
      v83 = *&v98[1];
      v36 = *(v20 + 80);
      v94 = *(v20 + 64);
      v95 = v36;
      LOBYTE(v96) = *(v20 + 96);
      v86 = 1836412517;
      if (*&v98[2] == 1836412517 && *(&v98[2] + 1) == 0xE400000000000000)
      {
        v34 = 0xE400000000000000;
      }

      else
      {
        if ((sub_10015D6C4(*&v98[2], *(&v98[2] + 1)) & 1) == 0 && !*(&v98[0] + 1))
        {
          v35 = *(&v98[2] + 1);
          v34 = 0xE400000000000000;
          goto LABEL_55;
        }

        v86 = *&v98[2];
      }

      v33 = *&v98[0];
LABEL_55:
      sub_10015C048(v98, v103);
      if (v8)
      {
      }

      else
      {
        v8 = v35;
        v89 = v33;
      }

      v62 = v106;
      if (v4)
      {
      }

      else
      {
        v4 = v80;
        v62 = v83;
      }

      sub_100004650();
      v63 = swift_allocObject();
      *(v63 + 16) = v89;
      *(v63 + 24) = v8;
      *(v63 + 32) = v62;
      *(v63 + 40) = v4;
      *(v63 + 48) = v86;
      *(v63 + 56) = v34;
      v64 = v95;
      *(v63 + 64) = v94;
      *(v63 + 80) = v64;
      *(v63 + 96) = v96;
      sub_1001441C8(v105);
      sub_10000678C();
      v53 = 0x4000;
      goto LABEL_62;
    case 5:
      sub_100008CAC(v100);
      sub_100008CAC(__src);
      sub_10014416C(v105, v98);
      sub_100150F70(v100, v98);
      sub_1000039B0();
      sub_1001583E4();
      if (v1)
      {
        memcpy(v98, __src, 0x73uLL);
        sub_100150FCC(v98);
        goto LABEL_38;
      }

      sub_10000776C(v98);
      sub_1001441C8(v98);
      v54 = swift_allocObject();
      v55 = sub_10015D564(v54);
      memcpy(v55, __src, 0x73uLL);
      sub_1001441C8(v105);
      sub_10000678C();
      v53 = 20480;
      goto LABEL_62;
    case 6:
      sub_100008CAC(v100);
      sub_100008CAC(v99);
      sub_10014416C(v105, v98);
      sub_10014EA68(v100, v98);
      sub_1000039B0();
      sub_1001583E4();
      if (v1)
      {
        memcpy(v98, v99, 0x73uLL);
        sub_10014EAC4(v98);
        goto LABEL_38;
      }

      sub_10000776C(v98);
      sub_1001441C8(v98);
      v56 = swift_allocObject();
      v57 = sub_10015D564(v56);
      memcpy(v57, v99, 0x73uLL);
      sub_1001441C8(v105);
      sub_10000678C();
      v53 = 24576;
      goto LABEL_62;
    case 7:
      v22 = *(v105[0] + 16);
      v24 = *(v105[0] + 40);
      v23 = *(v105[0] + 48);
      *(v98 + 8) = *(v105[0] + 24);
      *&v98[0] = v22;
      *(&v98[1] + 1) = v24;
      *&v98[2] = v23;
      sub_10014416C(v105, v100);

      sub_1000039B0();
      sub_100156CD8();
      if (v10)
      {

        goto LABEL_38;
      }

      sub_10000776C(v100);
      sub_1001441C8(v100);
      sub_1000140AC();
      v50 = swift_allocObject();
      v51 = *&v98[2];
      v52 = v98[1];
      *(v50 + 16) = v98[0];
      *(v50 + 32) = v52;
      *(v50 + 48) = v51;
      sub_1001441C8(v105);
      sub_10000678C();
      v53 = 28672;
      goto LABEL_62;
    case 8:
      v90 = v10;
      v107 = v6;
      v38 = v105[1];
      v66 = v105[2];
      v39 = v105[4];
      v40 = v105[5];
      v84 = v105[6];
      v87 = LOBYTE(v105[7]);
      v78 = v105[9];
      v81 = v105[8];
      v72 = v105[10];
      v74 = v105[3];
      v76 = v105[11];
      sub_10000776C(v98);
      sub_10000776C(v100);
      v101 &= 0xFFFu;
      sub_10014EA0C(v100, v103);
      sub_1001441C8(v98);
      v41 = 0xE500000000000000;
      if (v39 == 0x6465786966 && v40 == 0xE500000000000000)
      {
        v70 = 0x6465786966;
      }

      else
      {
        v43 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v41 = 0xE500000000000000;
        if (v38)
        {
          v44 = v20;
        }

        else
        {
          v44 = v39;
        }

        if (v38)
        {
          v45 = v38;
        }

        else
        {
          v45 = v40;
        }

        v46 = 0x6465786966;
        if (v38)
        {
          v46 = v39;
          v41 = v40;
        }

        if (v43)
        {
          v47 = v39;
        }

        else
        {
          v20 = v44;
          v38 = v45;
          v47 = v46;
        }

        v70 = v47;
        if (v43)
        {
          v41 = v40;
        }
      }

      v68 = v41;
      v48 = v107;
      v49 = v90;
      if (v8)
      {
        sub_10014416C(v105, v103);
      }

      else
      {
        memcpy(v103, v105, 0x62uLL);
        v103[48] &= 0xFFFu;
        sub_10014EA0C(v103, v102);
        v49 = v20;
        v8 = v38;
      }

      if (v4)
      {
      }

      else
      {
        v48 = v66;
        v4 = v74;
      }

      sub_1001441C8(v105);
      *v2 = v49;
      *(v2 + 8) = v8;
      *(v2 + 16) = v48;
      *(v2 + 24) = v4;
      *(v2 + 32) = v70;
      *(v2 + 40) = v68;
      *(v2 + 48) = v84;
      *(v2 + 56) = v87;
      *(v2 + 64) = v81;
      *(v2 + 72) = v78;
      *(v2 + 80) = v72 & 1;
      *(v2 + 88) = v76;
      *(v2 + 96) = v19 & 0x301 | 0x8000;
      goto LABEL_63;
    case 9:
      sub_1000040C0(v11, v12, v13, v14, v15, v16, v17, v18, v65, v67, v69, v71, v73, v75, v77, v79, v82, v85, v88, v91, v92, __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], __dst[9], __dst[10], v94, *(&v94 + 1), v95, *(&v95 + 1), v96, __src[0], __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8], __src[9], __src[10], __src[11], __src[12], __src[13], __src[14]);
      memcpy(v104, (v20 + 16), 0x51uLL);
      sub_10014416C(v105, v100);
      sub_10015BE18(v98, v100);
      sub_1000039B0();
      sub_100155D7C();
      if (v1)
      {
        v21 = v104;
LABEL_37:
        memcpy(v100, v21, 0x51uLL);
        sub_10015BE74(v100);
LABEL_38:
        sub_1001441C8(v105);
      }

      else
      {
        sub_10000776C(v100);
        sub_1001441C8(v100);
        sub_100004650();
        v60 = swift_allocObject();
        v61 = sub_10015D564(v60);
        memcpy(v61, v104, 0x51uLL);
        sub_1001441C8(v105);
        sub_10000678C();
        v53 = -28672;
LABEL_62:
        *(v2 + 96) = v53;
      }

LABEL_63:
      sub_100005074();
      return;
    default:
      goto LABEL_63;
  }
}

uint64_t sub_100158AD8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_100004EE8(1701667182, 0xE400000000000000) & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1701869940 && a2 == 0xE400000000000000;
    if (v6 || (sub_100004EE8(1701869940, 0xE400000000000000) & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x63617073656D616ELL && a2 == 0xE900000000000065;
      if (v7 || (sub_100004EE8(0x63617073656D616ELL, 0xE900000000000065) & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x73657361696C61 && a2 == 0xE700000000000000)
      {

        return 3;
      }

      else
      {
        sub_100004EE8(0x73657361696C61, 0xE700000000000000);
        sub_10015D600();

        if (a1)
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

uint64_t sub_100158C0C(char a1)
{
  result = 1701667182;
  switch(a1)
  {
    case 1:
      result = sub_10015D618();
      break;
    case 2:
      result = 0x63617073656D616ELL;
      break;
    case 3:
      result = 0x73657361696C61;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_100158C80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100158AD8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100158CA8(uint64_t a1)
{
  v2 = sub_10015CD34();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100158CE4(uint64_t a1)
{
  v2 = sub_10015CD34();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100158D20(void *a1)
{
  v3 = v1;
  v5 = sub_100099DF4(&qword_1002DEE88, &qword_10023D230);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v11 - v7;
  sub_10000C4FC(a1, a1[3]);
  sub_10015CD34();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  sub_1001613E0();
  v15 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v2)
  {
    (*(v6 + 8))(v8, v5);
  }

  else
  {

    v14 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    sub_10000C4FC(a1, a1[3]);
    v10 = *(dispatch thunk of Encoder.userInfo.getter() + 16);

    if (v10)
    {
      v13 = 2;
      KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
      v11[1] = *(v3 + 56);
      v12 = 3;
      sub_100099DF4(&qword_1002DEE98, &qword_10023D238);
      sub_10015CD88();
      KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    }

    return (*(v6 + 8))(v8, v5);
  }
}

uint64_t sub_100158F88(void *a1)
{
  v3 = v1;
  v5 = sub_100099DF4(&qword_1002DEE88, &qword_10023D230);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v11 - v7;
  sub_10000C4FC(a1, a1[3]);
  sub_10015CD34();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  sub_1001613E0();
  v15 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v2)
  {
    (*(v6 + 8))(v8, v5);
  }

  else
  {

    v14 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    sub_10000C4FC(a1, a1[3]);
    v10 = *(dispatch thunk of Encoder.userInfo.getter() + 16);

    if (v10)
    {
      v13 = 2;
      KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
      v11[1] = *(v3 + 48);
      v12 = 3;
      sub_100099DF4(&qword_1002DEE98, &qword_10023D238);
      sub_10015CD88();
      KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    }

    return (*(v6 + 8))(v8, v5);
  }
}

void sub_1001591F0()
{
  sub_100004868();
  v117 = v3;
  v118 = v4;
  v5 = *(v0 + 32);
  v120 = *(v5 + 16);
  if (!v120)
  {
    goto LABEL_84;
  }

  v116 = v2;
  v108 = v0;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_95;
  }

LABEL_3:
  v6 = 0;
  v119 = v5 + 32;
  v7 = &_swiftEmptyDictionarySingleton;
  v138 = v5;
  while (1)
  {
    sub_10015D538();
    if (v8)
    {
LABEL_86:
      __break(1u);
LABEL_87:
      __break(1u);
LABEL_88:
      __break(1u);
LABEL_89:
      __break(1u);
LABEL_90:
      __break(1u);
LABEL_91:
      __break(1u);
LABEL_92:
      __break(1u);
LABEL_93:
      __break(1u);
LABEL_94:
      __break(1u);
LABEL_95:
      sub_1001612CC();
      v5 = v106;
      goto LABEL_3;
    }

    v9 = (v119 + 104 * v6);
    sub_10000DF44(v128);
    v10 = v128[0];
    v11 = v130 >> 12;
    if (v11 == 3)
    {
      sub_100002EBC(v126);
      sub_100002EBC(v124);
      sub_10014416C(v128, __src);
      sub_10015BE18(v126, __src);
      v34 = sub_100159AAC(0x64726F636572, 0xE600000000000000, v116, v117, v118);
      if (!v1)
      {
        sub_100004650();
        v42 = swift_allocObject();
        v43 = sub_10015D564(v42);
        memcpy(v43, v124, 0x51uLL);
        sub_10015D538();
        if (v8)
        {
          goto LABEL_91;
        }

        sub_10000DF44(__src);
        *v9 = v124;
        v114 &= 1u;
        v9[7] = v113;
        v9[10] = v114;
        v111 = v111 & 0x301 | 0x3000;
        *(v9 + 48) = v111;
        goto LABEL_20;
      }

      sub_10015D5CC(v34, v35, v36, v37, v38, v39, v40, v41, v107, v108);
      v101 = v124;
LABEL_75:
      memcpy(__src, v101, 0x51uLL);
      sub_10015BE74(__src);
LABEL_82:
      v105 = v128;
      goto LABEL_83;
    }

    if (v11 == 9)
    {
      sub_100002EBC(v126);
      sub_100002EBC(v125);
      sub_10014416C(v128, __src);
      sub_10015BE18(v126, __src);
      v24 = sub_100159AAC(0x726F727265, 0xE500000000000000, v116, v117, v118);
      if (!v1)
      {
        sub_100004650();
        v32 = swift_allocObject();
        v33 = sub_10015D564(v32);
        memcpy(v33, v125, 0x51uLL);
        sub_10015D538();
        if (v8)
        {
          goto LABEL_92;
        }

        sub_10000DF44(__src);
        *v9 = v125;
        v9[7] = v112;
        v110 &= 1u;
        v9[10] = v110;
        v109 = v109 & 0x301 | 0x9000;
        *(v9 + 48) = v109;
LABEL_20:
        v23 = __src;
LABEL_21:
        sub_1001441C8(v23);
        sub_1001441C8(v128);
        goto LABEL_23;
      }

      sub_10015D5CC(v24, v25, v26, v27, v28, v29, v30, v31, v107, v108);
      v101 = v125;
      goto LABEL_75;
    }

    if (v11 == 12)
    {
      break;
    }

    sub_1000109B8();
    sub_1001583E4();
    if (v1)
    {

LABEL_72:
      sub_10015D5CC(v93, v94, v95, v96, v97, v98, v99, v100, v107, v108);
      goto LABEL_84;
    }

LABEL_23:
    if (!v6)
    {
      goto LABEL_54;
    }

LABEL_24:
    sub_10015D538();
    if (v8)
    {
      goto LABEL_89;
    }

    sub_10000DF44(v134);
    v44 = AvroSchema.getTypeName()();
    if (v7[2])
    {
      v45 = sub_10014EB30(v44._countAndFlagsBits, v44._object);
      v47 = v46;

      if ((v47 & 1) == 0)
      {
        goto LABEL_54;
      }

      memcpy(v133, (v7[7] + 104 * v45), 0x62uLL);
      v48 = AvroSchema.getName()();
      if (v6 >= *(v138 + 16))
      {
        goto LABEL_93;
      }

      sub_10000DF44(v132);
      v49 = AvroSchema.getName()();
      if (v48.value._object)
      {
        if (v49.value._object)
        {
          if (v48.value._countAndFlagsBits == v49.value._countAndFlagsBits && v48.value._object == v49.value._object)
          {
            sub_10014416C(v133, __src);

            goto LABEL_79;
          }

          sub_10000D560();
          sub_100003288();
          v51 = _stringCompareWithSmolCheck(_:_:expecting:)();
          sub_10014416C(v133, __src);

          if (v51)
          {
            goto LABEL_79;
          }

          v60 = v133;
          goto LABEL_53;
        }
      }

      else if (!v49.value._object)
      {
        v52 = sub_10014416C(v133, __src);
LABEL_79:
        sub_10015D5CC(v52, v53, v54, v55, v56, v57, v58, v59, v107, v108);
        v103 = sub_100157348();
        sub_100007F60(&type metadata for AvroSchemaDecodingError, v103);
        *v104 = 3;
        swift_willThrow();
        v105 = v133;
LABEL_83:
        sub_1001441C8(v105);

LABEL_84:
        sub_100005074();
        return;
      }
    }

LABEL_54:
    sub_10015D538();
    if (v8)
    {
      goto LABEL_87;
    }

    sub_10000DF44(v131);
    v66 = AvroSchema.getTypeName()();
    sub_10000DF44(__src);
    sub_10014416C(__src, v126);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v123[0] = v7;
    v68 = sub_10000D560();
    v70 = sub_10014EB30(v68, v69);
    v72 = v7[2];
    v73 = (v71 & 1) == 0;
    v74 = v72 + v73;
    if (__OFADD__(v72, v73))
    {
      goto LABEL_88;
    }

    v75 = v70;
    v76 = v71;
    sub_100099DF4(&qword_1002DE968, &unk_10023B920);
    if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v74))
    {
      v77 = sub_10000D560();
      v79 = sub_10014EB30(v77, v78);
      if ((v76 & 1) != (v80 & 1))
      {
        goto LABEL_99;
      }

      v75 = v79;
      if ((v76 & 1) == 0)
      {
LABEL_59:
        v7 = v123[0];
        sub_1000035B8(v123[0] + 8 * (v75 >> 6));
        *(v7[6] + 16 * v75) = v66;
        memcpy((v7[7] + 104 * v75), __src, 0x62uLL);
        v81 = v7[2];
        v82 = __OFADD__(v81, 1);
        v83 = v81 + 1;
        if (v82)
        {
          goto LABEL_90;
        }

        v7[2] = v83;
        goto LABEL_63;
      }
    }

    else if ((v76 & 1) == 0)
    {
      goto LABEL_59;
    }

    v7 = v123[0];
    v84 = (*(v123[0] + 56) + 104 * v75);
    sub_10015D5E8(v126);
    memcpy(v84, __src, 0x62uLL);
    sub_1001441C8(v126);

LABEL_63:
    ++v6;
    v5 = v138;
    if (v6 == v120)
    {

      goto LABEL_72;
    }
  }

  v115 = v129;
  if (!v129)
  {
    goto LABEL_98;
  }

  v12 = v128[1];
  v13 = v128[2];
  if (*(v116 + 16))
  {

    sub_10014EB30(v13, v115);
    if ((v14 & 1) == 0)
    {
      goto LABEL_38;
    }

    sub_10015D5E8(v126);
    sub_10015D5E8(__src);
    sub_10015D5E8(&v137);
    AvroSchema.getTypeName()();
    sub_10014416C(v126, v123);
    sub_1001583E4();
    if (v1)
    {
      sub_10015D5CC(v15, v16, v17, v18, v19, v20, v21, v22, v107, v108);
      v102 = __src;
LABEL_81:
      memcpy(v123, v102, 0x62uLL);
      sub_1001441C8(v123);

      goto LABEL_82;
    }

    memcpy(__dst, __src, 0x62uLL);
    sub_10014416C(__dst, v123);
    sub_10015D538();
    if (v8)
    {
      goto LABEL_94;
    }

    sub_10000DF44(v122);
    memcpy(v9, __dst, 0x62uLL);
    sub_1001441C8(v122);
    memcpy(v123, __src, 0x62uLL);
    v23 = v123;
    goto LABEL_21;
  }

LABEL_38:
  if (!v6)
  {
    v60 = v128;
LABEL_53:
    sub_1001441C8(v60);
    goto LABEL_54;
  }

  v61 = 0;
  v62 = 32;
  while (2)
  {
    if (v61 >= *(v5 + 16))
    {
      __break(1u);
      goto LABEL_86;
    }

    sub_10015D6E4(v136);
    v63 = AvroSchema.getName()();
    if (!v63.value._object)
    {
LABEL_47:
      ++v61;
      v62 += 104;
      v5 = v138;
      if (v6 == v61)
      {
        goto LABEL_70;
      }

      continue;
    }

    break;
  }

  if (v63.value._countAndFlagsBits != v10 || v63.value._object != v12)
  {
    v65 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v65)
    {
      goto LABEL_66;
    }

    goto LABEL_47;
  }

LABEL_66:
  if (v61 >= *(v138 + 16))
  {
    __break(1u);
  }

  else
  {
    sub_10015D6E4(__src);
    sub_10015D6E4(v126);
    sub_10015D6E4(v135);
    AvroSchema.getTypeName()();
    sub_10014416C(__src, v123);
    sub_1001583E4();
    if (v1)
    {
      sub_10015D5CC(v85, v86, v87, v88, v89, v90, v91, v92, v107, v108);
      v102 = v126;
      goto LABEL_81;
    }

    memcpy(__dst, v126, 0x62uLL);
    sub_10014416C(__dst, v123);
    sub_10015D538();
    if (!v8)
    {
      sub_10000DF44(v122);
      memcpy(v9, __dst, 0x62uLL);
      sub_1001441C8(v122);
      memcpy(v123, v126, 0x62uLL);
      sub_1001441C8(v123);
LABEL_70:
      sub_1001441C8(v128);
      goto LABEL_24;
    }
  }

  __break(1u);
LABEL_98:
  __break(1u);
LABEL_99:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

uint64_t sub_100159AAC(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = v6;
  v51 = a3;
  v11 = *(v5 + 32);
  v10 = *(v5 + 40);
  v12 = v11 == result && v10 == a2;
  v56 = result;
  if (v12)
  {
LABEL_8:
    v13 = v10;
    if (!a5)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v13 = a2;
  result = _stringCompareWithSmolCheck(_:_:expecting:)();
  if ((result & 1) != 0 || *(v5 + 8))
  {
    v56 = v11;
    goto LABEL_8;
  }

  *v5 = v11;
  *(v5 + 8) = v10;
  *(v5 + 32) = v56;
  *(v5 + 40) = v13;

  if (a5)
  {
LABEL_9:

    *(v5 + 16) = a4;
    *(v5 + 24) = a5;
  }

LABEL_10:
  v14 = *(v5 + 48);
  v15 = *(v14 + 16);
  if (v15)
  {
    v60 = v13;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_35:
      sub_1001612B8();
      v14 = v48;
    }

    v16 = 0;
    v17 = 0;
    v18 = *v5;
    v19 = *(v5 + 8);
    v52 = v15 - 1;
    v58 = *(v5 + 16);
    v59 = *(v5 + 24);
    v55 = *(v5 + 56);
    v54 = *(v5 + 72);
    v50 = v5;
    HIDWORD(v53) = *(v5 + 80);
    for (i = *v5; ; v18 = i)
    {
      v65[0] = v18;
      v65[1] = v19;
      v65[2] = v58;
      v65[3] = v59;
      v5 = v56;
      v65[4] = v56;
      v65[5] = v60;
      v65[6] = v14;
      v66 = v55;
      v67 = v54;
      v68 = BYTE4(v53);
      if (v17 >= *(v14 + 16))
      {
        __break(1u);
LABEL_34:
        __break(1u);
        goto LABEL_35;
      }

      v69 = v16;
      v20 = *(v14 + v16 + 40);
      v62 = *(v14 + v16 + 32);
      v21 = sub_100099DF4(&qword_1002DD538, &unk_100238260);
      v22 = sub_10015D5B4(v21);
      sub_10000F0DC(v22, v23, v24, v25, v26, v27, v28, v29, v30, v49, v50, v51, v52, v53, v54, v55, *(&v55 + 1), v56, v57, v31);
      if (v19)
      {
        v57 = v7;
        v64[2] = i;
        v64[3] = v19;
        v64[0] = 46;
        v64[1] = 0xE100000000000000;
        sub_10015BE18(v65, &v63);
        sub_1000BBBB0();

        if ((sub_10015D598(v64, &type metadata for String) & 1) != 0 || !v59)
        {
          sub_10015BE74(v65);
          v5 = i;
          v32 = v19;
        }

        else
        {
          v33 = sub_10015D5B4(v21);
          sub_10000F0DC(v33, v34, v35, v36, v37, v38, v39, v40, v41, v49, v50, v51, v52, v53, v54, v55, *(&v55 + 1), v56, v7, v42);
          v43[2].n128_u64[0] = v58;
          v43[2].n128_u64[1] = v59;
          v43[3].n128_u64[0] = i;
          v43[3].n128_u64[1] = v19;
          v63 = v43;

          sub_100099DF4(&qword_1002DA600, &qword_10022E490);
          sub_100010288();
          sub_100006AEC();
          v5 = BidirectionalCollection<>.joined(separator:)();
          v32 = v44;

          sub_10015BE74(v65);
        }

        v7 = v57;
      }

      else
      {

        v32 = v60;
      }

      v22[2].n128_u64[0] = v5;
      v22[2].n128_u64[1] = v32;
      v22[3].n128_u64[0] = v62;
      v22[3].n128_u64[1] = v20;
      v63 = v22;
      sub_100099DF4(&qword_1002DA600, &qword_10022E490);
      sub_100010288();
      sub_100006AEC();
      BidirectionalCollection<>.joined(separator:)();
      v15 = v45;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1001612B8();
        v14 = v47;
      }

      v46 = v69;
      if (v17 >= *(v14 + 16))
      {
        goto LABEL_34;
      }

      sub_100005CF0();
      sub_100159FE8();
      if (v7)
      {
        break;
      }

      if (v52 == v17)
      {
        goto LABEL_29;
      }

      v16 = v46 + 184;
      ++v17;
    }

LABEL_29:
    *(v50 + 48) = v14;
  }

  return result;
}

uint64_t sub_100159E54(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73646C656966 && a2 == 0xE600000000000000;
  if (v4 || (sub_100004EE8(0x73646C656966, 0xE600000000000000) & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 6516580 && a2 == 0xE300000000000000)
  {

    return 1;
  }

  else
  {
    sub_100004EE8(6516580, 0xE300000000000000);
    sub_10015D600();

    if (a1)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_100159EFC(char a1)
{
  if (a1)
  {
    return 6516580;
  }

  else
  {
    return 0x73646C656966;
  }
}

uint64_t sub_100159F48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100159E54(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100159F70(uint64_t a1)
{
  v2 = sub_10015C1A0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100159FAC(uint64_t a1)
{
  v2 = sub_10015C1A0();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_100159FE8()
{
  sub_100004868();
  v113 = v2;
  v4 = v3;
  v6 = v5;
  memcpy(v138, (v0 + 16), 0x62uLL);
  v7 = LOWORD(v138[12]);
  v139 = v6;
  v102 = v0;
  v8 = v138[0];
  v9 = v138[1];
  v11 = v138[2];
  v10 = v138[3];
  v13 = v138[5];
  v12 = v138[6];
  switch(LOWORD(v138[12]) >> 12)
  {
    case 3:
      v14 = v4;
      sub_100002EBC(v129);
      v15 = v130;
      v16 = v131;
      v7 = *v129;
      v17 = *&v129[8];
      v118 = *&v129[16];
      v18 = *&v129[24];
      v19 = v132;
      *v125 = *(v8 + 72);
      *&v125[9] = *(v8 + 81);
      v111 = 0xE600000000000000;
      v20 = v130 == 0x64726F636572 && v131 == 0xE600000000000000;
      v107 = 0x64726F636572;
      if (v20)
      {
        v15 = *v129;
      }

      else
      {
        v21 = v132;
        v22 = *&v129[8];
        if (_stringCompareWithSmolCheck(_:_:expecting:)())
        {
          v107 = v15;
          v111 = v16;
          v15 = v7;
          v17 = v22;
        }

        else if (v22)
        {
          v17 = v22;
          v107 = v15;
          v111 = v16;
          v15 = v7;
        }

        else
        {
          v111 = 0xE600000000000000;
          v17 = v16;
        }

        v19 = v21;
      }

      v121 = v17;
      if (v14)
      {
        v74 = v14;
        v75 = sub_10000A2A8();
        sub_10014416C(v75, v76);

        v77 = sub_10000424C();
        sub_10015BE18(v77, v78);

        v79 = v139;
      }

      else
      {
        v80 = sub_10000A2A8();
        sub_10014416C(v80, v81);
        v82 = sub_10000424C();
        sub_10015BE18(v82, v83);
        v79 = v118;
        v74 = v18;
      }

      v84 = v107;
      v106 = *(v132 + 16);
      if (!v106)
      {
        goto LABEL_65;
      }

      v85 = 0;
      v7 = 0;
      v105 = v135;
      v104 = v134;
      *v103 = v133;
      v19 = v132;
      v140 = v79;
      v110 = v74;
      v116 = v15;
      while (2)
      {
        __src[0] = v15;
        __src[1] = v121;
        __src[2] = v79;
        __src[3] = v74;
        __src[4] = v84;
        __src[5] = v111;
        __src[6] = v19;
        *&__src[7] = *v103;
        __src[9] = v104;
        LOBYTE(__src[10]) = v105;
        if (v7 >= *(v19 + 16))
        {
          __break(1u);
          goto LABEL_72;
        }

        v86 = *(v19 + v85 + 40);
        v120 = *(v19 + v85 + 32);
        v87 = sub_100099DF4(&qword_1002DD538, &unk_100238260);
        v88 = sub_10015D5B4(v87);
        *(v88 + 16) = xmmword_1002329F0;
        if (v121)
        {
          v127[0] = v116;
          v127[1] = v121;
          v126[0] = 46;
          v126[1] = 0xE100000000000000;
          sub_10015BE18(__src, __dst);
          sub_1000BBBB0();

          if ((sub_10015D598(v126, &type metadata for String) & 1) != 0 || !v110)
          {
            sub_10015BE74(__src);
            v84 = v116;
            v89 = v121;
          }

          else
          {
            v90 = sub_10015D5B4(v87);
            *(v90 + 16) = xmmword_1002329F0;
            *(v90 + 32) = v140;
            *(v90 + 40) = v110;
            *(v90 + 48) = v116;
            *(v90 + 56) = v121;
            __dst[0] = v90;

            sub_100099DF4(&qword_1002DA600, &qword_10022E490);
            sub_100010288();
            sub_10000C098();
            v84 = BidirectionalCollection<>.joined(separator:)();
            v89 = v91;

            sub_10015BE74(__src);
          }
        }

        else
        {

          v89 = v111;
        }

        *(v88 + 32) = v84;
        *(v88 + 40) = v89;
        *(v88 + 48) = v120;
        *(v88 + 56) = v86;
        __dst[0] = v88;
        sub_100099DF4(&qword_1002DA600, &qword_10022E490);
        sub_100010288();
        sub_10000C098();
        BidirectionalCollection<>.joined(separator:)();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1001612B8();
          v19 = v92;
        }

        v79 = v140;
        if (v7 >= *(v19 + 16))
        {
LABEL_72:
          __break(1u);
LABEL_73:
          __break(1u);
          return;
        }

        sub_10000D560();
        sub_100159FE8();
        if (!v1)
        {
          ++v7;

          v85 += 184;
          v84 = v107;
          v74 = v110;
          v15 = v116;
          if (v106 == v7)
          {
LABEL_65:
            sub_100004650();
            v93 = swift_allocObject();
            *(v93 + 16) = v15;
            *(v93 + 24) = v121;
            *(v93 + 32) = v79;
            *(v93 + 40) = v74;
            *(v93 + 48) = v84;
            *(v93 + 56) = v111;
            *(v93 + 64) = v19;
            *(v93 + 72) = *v125;
            *(v93 + 81) = *&v125[9];
            sub_10015D544(v93, v94, v95, v96, v97, v98, v99, v100, v101, v102);
            sub_1001441C8(__src);
            sub_1001441C8(v138);
            sub_10000DBE4();
            v54 = 12288;
            goto LABEL_66;
          }

          continue;
        }

        break;
      }

      __dst[0] = v116;
      __dst[1] = v121;
      __dst[2] = v140;
      __dst[3] = v110;
      __dst[4] = v107;
      __dst[5] = v111;
      __dst[6] = v19;
      *&__dst[7] = *v125;
      *(&__dst[8] + 1) = *&v125[9];
      sub_10015BE74(__dst);
LABEL_68:
      sub_1001441C8(v138);
LABEL_69:
      sub_100005074();
      return;
    case 4:
      v28 = 1836412517;
      sub_100002EBC(v129);
      v29 = v130;
      v30 = v131;
      v31 = *v129;
      v32 = *&v129[8];
      v33 = *&v129[16];
      v34 = *&v129[24];
      *v122 = *(v8 + 64);
      v123 = *(v8 + 80);
      v124 = *(v8 + 96);
      v35 = 0xE400000000000000;
      if (v130 != 1836412517 || v131 != 0xE400000000000000)
      {
        v37 = sub_100005CF0();
        if ((sub_10015D6C4(v37, v38) & 1) != 0 || v32)
        {
          v28 = v29;
          v35 = v30;
        }

        else
        {
          v31 = v29;
          v32 = v30;
        }
      }

      v55 = sub_10000A2A8();
      sub_10014416C(v55, v56);
      if (v4)
      {

        v57 = sub_10000424C();
        sub_10015C048(v57, v58);

        v33 = v139;
      }

      else
      {
        v59 = sub_10000424C();
        sub_10015C048(v59, v60);
        v4 = v34;
      }

      sub_100004650();
      v61 = swift_allocObject();
      *(v61 + 16) = v31;
      *(v61 + 24) = v32;
      *(v61 + 32) = v33;
      *(v61 + 40) = v4;
      *(v61 + 48) = v28;
      *(v61 + 56) = v35;
      *(v61 + 64) = *v122;
      *(v61 + 80) = v123;
      *(v61 + 96) = v124;
      sub_10015D544(v61, v62, v63, v64, v65, v66, v67, v68, v101, v102);
      sub_1001441C8(__src);
      sub_1001441C8(v138);
      sub_10000DBE4();
      *(v28 + 112) = 0x4000;
      goto LABEL_69;
    case 7:
      v23 = *(v138[0] + 16);
      v25 = *(v138[0] + 40);
      v24 = *(v138[0] + 48);
      *&v129[8] = *(v138[0] + 24);
      *v129 = v23;
      *&v129[24] = v25;
      v130 = v24;
      v26 = sub_10000A2A8();
      sub_10014416C(v26, v27);

      sub_1001591F0();
      if (v1)
      {

        goto LABEL_30;
      }

      sub_1000140AC();
      v44 = swift_allocObject();
      v45 = v130;
      v46 = *&v129[16];
      *(v44 + 16) = *v129;
      *(v44 + 32) = v46;
      *(v44 + 48) = v45;
      sub_10015D544(v44, v47, v48, v49, v50, v51, v52, v53, v101, v102);
      sub_1001441C8(__src);
      sub_1001441C8(v138);
      sub_10000DBE4();
      v54 = 28672;
LABEL_66:
      *(v7 + 112) = v54;
      goto LABEL_69;
    case 8:
      v109 = v4;
      v39 = v138[4];
      v119 = LOBYTE(v138[7]);
      v115 = v138[9];
      v117 = v138[8];
      v108 = v138[10];
      v114 = v138[11];
      v40 = 0x6465786966;
      v41 = 0xE500000000000000;
      if (v138[4] == 0x6465786966 && v138[5] == 0xE500000000000000)
      {
        goto LABEL_39;
      }

      if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v9)
      {
        v41 = v13;
        v40 = v39;
LABEL_39:
        v13 = v9;
        v39 = v8;
      }

      else
      {
        v40 = 0x6465786966;
      }

      v112 = v40;
      v69 = v109;
      if (v109)
      {
        v70 = sub_10000A2A8();
        sub_10014416C(v70, v71);
        v72 = sub_10000A2A8();
        sub_10014416C(v72, v73);

        v11 = v139;
      }

      else
      {
        memcpy(__src, v138, 0x62uLL);
        LOWORD(__src[12]) &= 0xFFFu;
        sub_10014416C(v138, v129);
        sub_10014EA0C(__src, v129);
        v69 = v10;
      }

      memcpy(__src, (v102 + 16), 0x62uLL);
      sub_1001441C8(__src);
      sub_1001441C8(v138);
      *(v102 + 16) = v39;
      *(v102 + 24) = v13;
      *(v102 + 32) = v11;
      *(v102 + 40) = v69;
      *(v102 + 48) = v112;
      *(v102 + 56) = v41;
      *(v102 + 64) = v12;
      *(v102 + 72) = v119;
      *(v102 + 80) = v117;
      *(v102 + 88) = v115;
      *(v102 + 96) = v108 & 1;
      *(v102 + 104) = v114;
      *(v102 + 112) = v7 & 0x301 | 0x8000;
      goto LABEL_69;
    case 0xC:
      if (!v138[3])
      {
        goto LABEL_73;
      }

      if (!*(v113 + 16))
      {
        goto LABEL_69;
      }

      sub_10014EB30(v11, v10);
      if ((v43 & 1) == 0)
      {
        goto LABEL_68;
      }

      sub_10015D5E8(v129);
      sub_10015D5E8(__src);
      sub_10015D5E8(v137);
      AvroSchema.getTypeName()();
      sub_10014416C(v129, __dst);
      sub_1000109B8();
      sub_1001583E4();
      if (!v1)
      {

        memcpy(v126, __src, 0x62uLL);
        memcpy(v127, __src, 0x62uLL);
        sub_10014416C(v126, __dst);
        sub_1001441C8(v127);
        memcpy(__dst, (v102 + 16), 0x62uLL);
        sub_1001441C8(__dst);
        sub_1001441C8(v138);
        memcpy((v102 + 16), v126, 0x62uLL);
        goto LABEL_69;
      }

      memcpy(__dst, __src, 0x62uLL);
      sub_1001441C8(__dst);
LABEL_30:

      goto LABEL_68;
    default:
      goto LABEL_69;
  }
}