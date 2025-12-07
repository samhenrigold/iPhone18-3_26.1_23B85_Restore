unint64_t ContentTransition.NamedTransition.init(from:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = result;
  v5 = *(result + 8);
  v6 = *(result + 16);
  if (v5 < v6)
  {
    v7 = 0;
    v8 = 3;
    v53 = 2;
    v9 = 0x8000000000;
    while (1)
    {
      result = v3[3];
      if (result)
      {
        v10 = v3[4];
        if (v5 < v10)
        {
          goto LABEL_13;
        }

        if (v10 < v5)
        {
          goto LABEL_145;
        }

        v3[3] = 0;
      }

      result = ProtobufDecoder.decodeVarint()(result);
      if (v2)
      {
        return result;
      }

      if (result <= 7)
      {
        goto LABEL_145;
      }

LABEL_13:
      v11 = result >> 3;
      if (result >> 3 > 4)
      {
        if (result >> 3 > 6)
        {
          if (v11 == 7)
          {
            if ((result & 7) != 0)
            {
              if ((result & 7) != 2)
              {
                goto LABEL_145;
              }

              result = ProtobufDecoder.decodeVarint()(result);
              if (v2)
              {
                return result;
              }

              if ((result & 0x8000000000000000) != 0)
              {
                goto LABEL_163;
              }

              v44 = v3[1] + result;
              if (v6 < v44)
              {
LABEL_145:
                lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
                swift_allocError();
                return swift_willThrow();
              }

              v3[3] = 56;
              v3[4] = v44;
            }

            result = ProtobufDecoder.decodeVarint()(result);
            if (v2)
            {
              return result;
            }

            v53 = result != 0;
            goto LABEL_6;
          }

          if (v11 == 8)
          {
            if ((result & 7) != 2)
            {
              goto LABEL_145;
            }

            v24 = v3[5];
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v24 + 16) + 1, 1, v24);
              v24 = isUniquelyReferenced_nonNull_native;
            }

            v27 = *(v24 + 16);
            v26 = *(v24 + 24);
            if (v27 >= v26 >> 1)
            {
              isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v26 > 1), v27 + 1, 1, v24);
              v24 = isUniquelyReferenced_nonNull_native;
            }

            *(v24 + 16) = v27 + 1;
            *(v24 + 8 * v27 + 32) = v6;
            v3[5] = v24;
            result = ProtobufDecoder.decodeVarint()(isUniquelyReferenced_nonNull_native);
            if (v2)
            {
              return result;
            }

            if ((result & 0x8000000000000000) != 0)
            {
              goto LABEL_156;
            }

            v28 = v3[1] + result;
            if (v6 < v28)
            {
              goto LABEL_145;
            }

            v3[2] = v28;
            ContentTransition.Style.init(from:)(v3, &v55);
            v29 = v3[5];
            if (!*(v29 + 16))
            {
              goto LABEL_158;
            }

            result = swift_isUniquelyReferenced_nonNull_native();
            if ((result & 1) == 0)
            {
              result = specialized _ArrayBuffer._consumeAndCreateNew()(v29);
              v29 = result;
            }

            v30 = *(v29 + 16);
            if (!v30)
            {
              goto LABEL_160;
            }

            v31 = v30 - 1;
            v6 = *(v29 + 8 * v31 + 32);
            *(v29 + 16) = v31;
            v3[5] = v29;
            v3[2] = v6;
            v8 = v55;
            goto LABEL_6;
          }
        }

        else
        {
          if (v11 == 5)
          {
            if ((result & 7) != 2)
            {
              goto LABEL_145;
            }

            v34 = v3[5];
            v35 = swift_isUniquelyReferenced_nonNull_native();
            if ((v35 & 1) == 0)
            {
              v35 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v34 + 16) + 1, 1, v34);
              v34 = v35;
            }

            v37 = *(v34 + 16);
            v36 = *(v34 + 24);
            if (v37 >= v36 >> 1)
            {
              v35 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v36 > 1), v37 + 1, 1, v34);
              v34 = v35;
            }

            *(v34 + 16) = v37 + 1;
            *(v34 + 8 * v37 + 32) = v6;
            v3[5] = v34;
            result = ProtobufDecoder.decodeVarint()(v35);
            if (v2)
            {
              return result;
            }

            if ((result & 0x8000000000000000) != 0)
            {
              goto LABEL_155;
            }

            v38 = v3[1] + result;
            if (v6 < v38)
            {
              goto LABEL_145;
            }

            v3[2] = v38;
            closure #1 in ContentTransition.NamedTransition.init(from:)(v3, &v54);
            v39 = v3[5];
            if (!*(v39 + 16))
            {
              goto LABEL_159;
            }

            result = swift_isUniquelyReferenced_nonNull_native();
            if (result)
            {
              v40 = *(v39 + 16);
              if (!v40)
              {
                goto LABEL_161;
              }
            }

            else
            {
              result = specialized _ArrayBuffer._consumeAndCreateNew()(v39);
              v39 = result;
              v40 = *(result + 16);
              if (!v40)
              {
                goto LABEL_161;
              }
            }

            v7 = 0;
            v41 = v40 - 1;
            v6 = *(v39 + 8 * v41 + 32);
            *(v39 + 16) = v41;
            v3[5] = v39;
            v3[2] = v6;
            v9 = v54;
            goto LABEL_6;
          }

          if (v11 == 6)
          {
            if ((result & 7) != 2)
            {
              goto LABEL_145;
            }

            v14 = v3[5];
            v15 = swift_isUniquelyReferenced_nonNull_native();
            if ((v15 & 1) == 0)
            {
              v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v14 + 16) + 1, 1, v14);
              v14 = v15;
            }

            v17 = *(v14 + 16);
            v16 = *(v14 + 24);
            if (v17 >= v16 >> 1)
            {
              v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v17 + 1, 1, v14);
              v14 = v15;
            }

            *(v14 + 16) = v17 + 1;
            *(v14 + 8 * v17 + 32) = v6;
            v3[5] = v14;
            result = ProtobufDecoder.decodeVarint()(v15);
            if (v2)
            {
              return result;
            }

            if ((result & 0x8000000000000000) != 0)
            {
              __break(1u);
LABEL_155:
              __break(1u);
LABEL_156:
              __break(1u);
LABEL_157:
              __break(1u);
LABEL_158:
              __break(1u);
LABEL_159:
              __break(1u);
LABEL_160:
              __break(1u);
LABEL_161:
              __break(1u);
LABEL_162:
              __break(1u);
LABEL_163:
              __break(1u);
LABEL_164:
              __break(1u);
LABEL_165:
              __break(1u);
LABEL_166:
              __break(1u);
LABEL_167:
              __break(1u);
LABEL_168:
              __break(1u);
              __break(1u);
LABEL_169:
              __break(1u);
              do
              {
                __break(1u);
                result = specialized _ArrayBuffer._consumeAndCreateNew()(a2);
                a2 = result;
                v47 = *(result + 16);
                if (v47)
                {
                  goto LABEL_153;
                }

                __break(1u);
                a2 = v3[5];
                if (!*(a2 + 16))
                {
                  goto LABEL_169;
                }

                result = swift_isUniquelyReferenced_nonNull_native();
                if (result)
                {
                  v47 = *(a2 + 16);
                  if (v47)
                  {
                    goto LABEL_153;
                  }
                }

                else
                {
                  result = specialized _ArrayBuffer._consumeAndCreateNew()(a2);
                  a2 = result;
                  v47 = *(result + 16);
                  if (v47)
                  {
                    goto LABEL_153;
                  }
                }

                __break(1u);
                a2 = v3[5];
              }

              while (!*(a2 + 16));
              result = swift_isUniquelyReferenced_nonNull_native();
              if (result)
              {
                v47 = *(a2 + 16);
                if (v47)
                {
LABEL_153:
                  v48 = v47 - 1;
                  v49 = *(a2 + 8 * v48 + 32);
                  *(a2 + 16) = v48;
                  v3[5] = a2;
                  v3[2] = v49;
                  return result;
                }
              }

              else
              {
                result = specialized _ArrayBuffer._consumeAndCreateNew()(a2);
                a2 = result;
                v47 = *(result + 16);
                if (v47)
                {
                  goto LABEL_153;
                }
              }

              __break(1u);
              return result;
            }

            v18 = v3[1] + result;
            if (v6 < v18)
            {
              goto LABEL_145;
            }

            v3[2] = v18;
            ContentTransition.NumericTextConfiguration.init(from:)(v3, &v50);
            v19 = v3[5];
            if (!*(v19 + 16))
            {
              goto LABEL_157;
            }

            result = swift_isUniquelyReferenced_nonNull_native();
            if (result)
            {
              v20 = *(v19 + 16);
              if (!v20)
              {
                goto LABEL_162;
              }
            }

            else
            {
              result = specialized _ArrayBuffer._consumeAndCreateNew()(v19);
              v19 = result;
              v20 = *(result + 16);
              if (!v20)
              {
                goto LABEL_162;
              }
            }

            v21 = v20 - 1;
            v6 = *(v19 + 8 * v21 + 32);
            *(v19 + 16) = v21;
            v3[5] = v19;
            v3[2] = v6;
            v7 = v51 | (v52 << 16);
            v9 = v50 & 0xFFFFFF01FFFFFFFFLL | 0x4000000000;
            goto LABEL_6;
          }
        }

LABEL_85:
        v45 = result & 7;
        if (v45 > 1)
        {
          if (v45 == 2)
          {
            result = ProtobufDecoder.decodeVarint()(result);
            if (v2)
            {
              return result;
            }

            if ((result & 0x8000000000000000) != 0)
            {
              goto LABEL_165;
            }

            v46 = v3[1] + result;
            if (v6 < v46)
            {
              goto LABEL_145;
            }
          }

          else
          {
            if (v45 != 5)
            {
              goto LABEL_145;
            }

            v46 = v3[1] + 4;
            if (v6 < v46)
            {
              goto LABEL_145;
            }
          }

          goto LABEL_5;
        }

        if ((result & 7) != 0)
        {
          if (v45 != 1)
          {
            goto LABEL_145;
          }

          v46 = v3[1] + 8;
          if (v6 < v46)
          {
            goto LABEL_145;
          }

LABEL_5:
          v3[1] = v46;
          goto LABEL_6;
        }

        result = ProtobufDecoder.decodeVarint()(result);
        if (v2)
        {
          return result;
        }

        goto LABEL_6;
      }

      if (result >> 3 > 2)
      {
        if (v11 == 3)
        {
          v42 = result & 7;
          if (v42 > 1)
          {
            if (v42 == 2)
            {
              result = ProtobufDecoder.decodeVarint()(result);
              if (v2)
              {
                return result;
              }

              if ((result & 0x8000000000000000) != 0)
              {
                goto LABEL_167;
              }

              v43 = v3[1] + result;
            }

            else
            {
              if (v42 != 5)
              {
                goto LABEL_145;
              }

              v43 = v3[1] + 4;
            }
          }

          else
          {
            if ((result & 7) == 0)
            {
              result = ProtobufDecoder.decodeVarint()(result);
              if (v2)
              {
                return result;
              }

              v7 = 0;
              v9 = 0x8000000003;
              goto LABEL_6;
            }

            if (v42 != 1)
            {
              goto LABEL_145;
            }

            v43 = v3[1] + 8;
          }

          if (v6 < v43)
          {
            goto LABEL_145;
          }

          v7 = 0;
          v3[1] = v43;
          v9 = 0x8000000003;
        }

        else
        {
          if (v11 != 4)
          {
            goto LABEL_85;
          }

          v22 = result & 7;
          if (v22 > 1)
          {
            if (v22 == 2)
            {
              result = ProtobufDecoder.decodeVarint()(result);
              if (v2)
              {
                return result;
              }

              if ((result & 0x8000000000000000) != 0)
              {
                goto LABEL_164;
              }

              v23 = v3[1] + result;
            }

            else
            {
              if (v22 != 5)
              {
                goto LABEL_145;
              }

              v23 = v3[1] + 4;
            }
          }

          else
          {
            if ((result & 7) == 0)
            {
              result = ProtobufDecoder.decodeVarint()(result);
              if (v2)
              {
                return result;
              }

              v7 = 0;
              v9 = 0x8000000004;
              goto LABEL_6;
            }

            if (v22 != 1)
            {
              goto LABEL_145;
            }

            v23 = v3[1] + 8;
          }

          if (v6 < v23)
          {
            goto LABEL_145;
          }

          v7 = 0;
          v3[1] = v23;
          v9 = 0x8000000004;
        }
      }

      else
      {
        if (v11 == 1)
        {
          v32 = result & 7;
          if (v32 > 1)
          {
            if (v32 == 2)
            {
              result = ProtobufDecoder.decodeVarint()(result);
              if (v2)
              {
                return result;
              }

              if ((result & 0x8000000000000000) != 0)
              {
                goto LABEL_166;
              }

              v33 = v3[1] + result;
            }

            else
            {
              if (v32 != 5)
              {
                goto LABEL_145;
              }

              v33 = v3[1] + 4;
            }

LABEL_113:
            if (v6 < v33)
            {
              goto LABEL_145;
            }

            v7 = 0;
            v3[1] = v33;
          }

          else
          {
            if ((result & 7) != 0)
            {
              if (v32 != 1)
              {
                goto LABEL_145;
              }

              v33 = v3[1] + 8;
              goto LABEL_113;
            }

            result = ProtobufDecoder.decodeVarint()(result);
            if (v2)
            {
              return result;
            }

            v7 = 0;
          }

          v9 = 0x8000000001;
          goto LABEL_6;
        }

        if (v11 != 2)
        {
          goto LABEL_85;
        }

        v12 = result & 7;
        if (v12 > 1)
        {
          if (v12 == 2)
          {
            result = ProtobufDecoder.decodeVarint()(result);
            if (v2)
            {
              return result;
            }

            if ((result & 0x8000000000000000) != 0)
            {
              goto LABEL_168;
            }

            v13 = v3[1] + result;
          }

          else
          {
            if (v12 != 5)
            {
              goto LABEL_145;
            }

            v13 = v3[1] + 4;
          }
        }

        else
        {
          if ((result & 7) == 0)
          {
            result = ProtobufDecoder.decodeVarint()(result);
            if (v2)
            {
              return result;
            }

            v7 = 0;
            v9 = 0x8000000002;
            goto LABEL_6;
          }

          if (v12 != 1)
          {
            goto LABEL_145;
          }

          v13 = v3[1] + 8;
        }

        if (v6 < v13)
        {
          goto LABEL_145;
        }

        v7 = 0;
        v3[1] = v13;
        v9 = 0x8000000002;
      }

LABEL_6:
      v5 = v3[1];
      if (v5 >= v6)
      {
        goto LABEL_4;
      }
    }
  }

  v7 = 0;
  v8 = 3;
  v53 = 2;
  v9 = 0x8000000000;
LABEL_4:
  v3[3] = 0;
  *a2 = v9;
  *(a2 + 8) = v7;
  *(a2 + 10) = BYTE2(v7);
  *(a2 + 11) = v53;
  *(a2 + 12) = v8;
  return result;
}

void _s7SwiftUI15ProtobufDecoderV19decodeAttachedValue2as9generatorxxm_x10Foundation4DataVKXEtKlFAA19CodablePlatformFontV_Tt0g503_s7a4UI15cd9V21decodef42MessagexyKAA0c9DecodableG0RzAA0c9Encodableu18RzlFx10Foundation4k11VKXEfU_AA19lmN5V_TG5SDys17CodingUserInfoKeyVypGTf1cn_n(uint64_t a1, uint64_t a2)
{
  v68 = a2;
  v4 = type metadata accessor for Data.Deallocator();
  MEMORY[0x1EEE9AC00](v4);
  v8 = *(a1 + 8);
  v9 = *(a1 + 16);
  if (v8 >= v9)
  {
    *(a1 + 24) = 0;
LABEL_4:
    lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
    swift_allocError();
    swift_willThrow();
    goto LABEL_71;
  }

  v66 = (&v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v67 = v5;
  v10 = 0;
  v65 = *MEMORY[0x1E6969028];
  v64 = (v6 + 104);
  do
  {
    v11 = *(a1 + 24);
    if (v11)
    {
      v12 = *(a1 + 32);
      if (v8 < v12)
      {
        goto LABEL_14;
      }

      if (v12 < v8)
      {
        goto LABEL_68;
      }

      *(a1 + 24) = 0;
    }

    v11 = ProtobufDecoder.decodeVarint()(v11);
    if (v2)
    {
      goto LABEL_69;
    }

    if (v11 < 8)
    {
      goto LABEL_68;
    }

LABEL_14:
    v13 = v11 & 7;
    if (v11 >> 3 == 1)
    {
      if ((v11 & 7) != 0)
      {
        if (v13 != 2)
        {
          goto LABEL_68;
        }

        v11 = ProtobufDecoder.decodeVarint()(v11);
        if (v2)
        {
          goto LABEL_69;
        }

        if ((v11 & 0x8000000000000000) != 0)
        {
          goto LABEL_75;
        }

        v24 = *(a1 + 8) + v11;
        if (v9 < v24)
        {
LABEL_68:
          lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
          swift_allocError();
          swift_willThrow();
LABEL_69:

          return;
        }

        *(a1 + 24) = 8;
        *(a1 + 32) = v24;
      }

      v25 = ProtobufDecoder.decodeVarint()(v11);
      if (v2)
      {
        goto LABEL_69;
      }

      v26 = v25;
      v27 = *(a1 + 48);
      if (one-time initialization token for readerKey != -1)
      {
        swift_once();
      }

      v28 = type metadata accessor for CodingUserInfoKey();
      v29 = __swift_project_value_buffer(v28, static ArchiveReader.readerKey);
      if (*(v27 + 16))
      {
        v30 = specialized __RawDictionaryStorage.find<A>(_:)(v29);
        if (v31)
        {
          outlined init with copy of Any(*(v27 + 56) + 32 * v30, &v70);
          type metadata accessor for ArchiveReader();
          if (swift_dynamicCast())
          {
            v32 = v69;
            if (one-time initialization token for cacheKey != -1)
            {
              swift_once();
            }

            v33 = __swift_project_value_buffer(v28, static ArchiveReader.cacheKey);
            if (*(v27 + 16) && (v34 = specialized __RawDictionaryStorage.find<A>(_:)(v33), (v35 & 1) != 0) && (outlined init with copy of Any(*(v27 + 56) + 32 * v34, &v70), type metadata accessor for MutableBox<[Int : Any]>(0, &lazy cache variable for type metadata for MutableBox<[Int : Any]>, type metadata accessor for [Int : Any], type metadata accessor for MutableBox), (swift_dynamicCast() & 1) != 0))
            {
              if (v26 < 0)
              {
                goto LABEL_77;
              }

              v36 = v69;
              swift_beginAccess();
              v37 = *(v36 + 16);
              if (*(v37 + 16) && (v38 = specialized __RawDictionaryStorage.find<A>(_:)(v26), (v39 & 1) != 0))
              {
                outlined init with copy of Any(*(v37 + 56) + 32 * v38, &v70);
                swift_endAccess();

                outlined init with take of Any(&v70, &v69);
                if (swift_dynamicCast())
                {
                  v10 = v73;
                }

                else
                {
                  v10 = 0;
                }
              }

              else
              {
                v63 = v36;
                swift_endAccess();
                v46 = *(v32 + 16);
                if (!v46)
                {
                  goto LABEL_80;
                }

                v47 = (*(v32 + 32) + 16 * v26);
                v48 = *v47;
                if (*v47 < 0)
                {
                  goto LABEL_78;
                }

                v49 = v47[1];

                if (v49 < 0)
                {
                  goto LABEL_79;
                }

                v50 = swift_allocObject();
                *(v50 + 16) = v32;
                v62 = v32;
                v52 = v66;
                v51 = v67;
                *v66 = OptionalAnchorValueBox.__ivar_destroyer;
                *(v52 + 8) = v50;
                (*v64)(v52, v65, v51);
                v53 = specialized Data.init(bytesNoCopy:count:deallocator:)(v46 + v48, v49, v52);
                v55 = v54;
                outlined copy of Data._Representation(v53, v54);
                v61 = v55;
                ProtobufDecoder.init(_:)(v53, v55, &v70);
                v56 = v68;

                v72 = v56;
                v57 = specialized CodablePlatformFont.init(from:)(&v70);
                v58 = v70;

                outlined consume of Data._Representation(v53, v61);
                v71 = &type metadata for CodablePlatformFont;
                *&v70 = v57;
                swift_beginAccess();
                v59 = v57;
                specialized Dictionary.subscript.setter(&v70, v26);
                swift_endAccess();

                v10 = v57;
              }
            }

            else
            {
            }
          }
        }
      }

      goto LABEL_6;
    }

    if (v11 >> 3 == 2)
    {
      if (v13 != 2)
      {
        goto LABEL_68;
      }

      v14 = ProtobufDecoder.decodeVarint()(v11);
      if (v2)
      {
        goto LABEL_69;
      }

      v15 = v14;
      if (v14 < 0)
      {
        __break(1u);
LABEL_73:
        __break(1u);
LABEL_74:
        __break(1u);
LABEL_75:
        __break(1u);
LABEL_76:
        __break(1u);
LABEL_77:
        __break(1u);
LABEL_78:
        __break(1u);
LABEL_79:
        __break(1u);
LABEL_80:
        __break(1u);
        return;
      }

      v16 = *(a1 + 8);
      if (v9 < v16 + v14)
      {
        goto LABEL_68;
      }

      *(a1 + 8) = v16 + v14;
      if (v14)
      {
        v17 = v16 - [*a1 bytes];
        v18 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v20 = v19;
        if (__OFADD__(v17, v15))
        {
          goto LABEL_73;
        }

        if (v17 + v15 < v17)
        {
          goto LABEL_74;
        }

        v21 = v18;
        v15 = Data._Representation.subscript.getter();
        v23 = v22;
        outlined consume of Data._Representation(v21, v20);
      }

      else
      {
        v23 = 0xC000000000000000;
      }

      v41 = v10;
      outlined copy of Data._Representation(v15, v23);
      ProtobufDecoder.init(_:)(v15, v23, &v70);
      v42 = v68;

      v72 = v42;
      v43 = specialized CodablePlatformFont.init(from:)(&v70);
      v44 = v70;

      outlined consume of Data._Representation(v15, v23);
      v10 = v43;
LABEL_6:
      v2 = 0;
      goto LABEL_7;
    }

    if ((v11 & 7) > 1)
    {
      if (v13 == 2)
      {
        v45 = ProtobufDecoder.decodeVarint()(v11);
        if (v2)
        {
          goto LABEL_69;
        }

        if (v45 < 0)
        {
          goto LABEL_76;
        }

        v40 = *(a1 + 8) + v45;
        if (v9 < v40)
        {
          goto LABEL_68;
        }
      }

      else
      {
        if (v13 != 5)
        {
          goto LABEL_68;
        }

        v40 = *(a1 + 8) + 4;
        if (v9 < v40)
        {
          goto LABEL_68;
        }
      }

      goto LABEL_63;
    }

    if ((v11 & 7) != 0)
    {
      if (v13 != 1)
      {
        goto LABEL_68;
      }

      v40 = *(a1 + 8) + 8;
      if (v9 < v40)
      {
        goto LABEL_68;
      }

LABEL_63:
      *(a1 + 8) = v40;
      goto LABEL_7;
    }

    ProtobufDecoder.decodeVarint()(v11);
    if (v2)
    {
      goto LABEL_69;
    }

LABEL_7:
    v8 = *(a1 + 8);
  }

  while (v8 < v9);
  *(a1 + 24) = 0;
  if (!v10)
  {
    goto LABEL_4;
  }

LABEL_71:
}

uint64_t specialized _NativeDictionary.ensureUnique(isUnique:capacity:)(char a1, uint64_t a2, void (*a3)(uint64_t, uint64_t), void (*a4)(void))
{
  v5 = *(*v4 + 24);
  if (v5 >= a2 && (a1 & 1) != 0)
  {
    return 0;
  }

  if ((a1 & 1) == 0)
  {
    if (v5 < a2)
    {
      v6 = a2;
      v7 = 0;
      goto LABEL_9;
    }

    a4();
    return 0;
  }

  v6 = a2;
  v7 = 1;
LABEL_9:
  a3(v6, v7);
  return 1;
}

uint64_t ProtobufDecoder.preferredCompositionLanguage.getter()
{
  v1 = *(v0 + 48);
  if (one-time initialization token for preferredCompositionLanguage != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for CodingUserInfoKey();
  v3 = __swift_project_value_buffer(v2, static ArchivedViewCore.preferredCompositionLanguage);
  if (!*(v1 + 16))
  {
    return 0;
  }

  v4 = specialized __RawDictionaryStorage.find<A>(_:)(v3);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  outlined init with copy of Any(*(v1 + 56) + 32 * v4, v8);
  type metadata accessor for CTCompositionLanguage(0);
  result = swift_dynamicCast();
  if (result)
  {
    return v7;
  }

  return result;
}

void DisplayList.Item.init(from:)(id *a1@<X0>, char *a2@<X8>)
{
  v65 = *MEMORY[0x1E69E9840];
  v5 = ++static DisplayList.Version.lastValue;
  v6 = a1[1];
  v7 = a1[2];
  if (v6 >= v7)
  {
    v8 = 0;
    v56 = 0u;
    v57 = xmmword_18DDD8CE0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
LABEL_4:
    a1[3] = 0;
    *a2 = v12;
    *(a2 + 1) = v11;
    *(a2 + 2) = v10;
    *(a2 + 3) = v9;
    *(a2 + 4) = v5;
    *(a2 + 40) = v56;
    *(a2 + 56) = v57;
    *(a2 + 18) = v8;
    return;
  }

  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v56 = 0u;
  v57 = xmmword_18DDD8CE0;
  while (1)
  {
    v16 = a1[3];
    if (v16)
    {
      v17 = a1[4];
      if (v6 < v17)
      {
        goto LABEL_14;
      }

      if (v17 < v6)
      {
        goto LABEL_97;
      }

      a1[3] = 0;
    }

    v16 = ProtobufDecoder.decodeVarint()(v16);
    if (v2)
    {
      goto LABEL_109;
    }

    if (v16 <= 7)
    {
      goto LABEL_97;
    }

LABEL_14:
    v18 = v16 >> 3;
    if (v16 >> 3 <= 2)
    {
      break;
    }

    switch(v18)
    {
      case 3uLL:
        if ((v16 & 7) != 2)
        {
          goto LABEL_97;
        }

        v31 = a1[5];
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v31 + 2) + 1, 1, v31);
          v31 = isUniquelyReferenced_nonNull_native;
        }

        v34 = *(v31 + 2);
        v33 = *(v31 + 3);
        if (v34 >= v33 >> 1)
        {
          isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v33 > 1), v34 + 1, 1, v31);
          v31 = isUniquelyReferenced_nonNull_native;
        }

        *(v31 + 2) = v34 + 1;
        *&v31[8 * v34 + 32] = v7;
        a1[5] = v31;
        v35 = ProtobufDecoder.decodeVarint()(isUniquelyReferenced_nonNull_native);
        if (v2)
        {
          goto LABEL_109;
        }

        if (v35 < 0)
        {
          goto LABEL_112;
        }

        v36 = a1[1] + v35;
        if (v7 < v36)
        {
          goto LABEL_97;
        }

        a1[2] = v36;
        v59 = 0u;
        v60 = 0u;
        closure #1 in EdgeInsets.init(from:)(&v59, a1, &v58);
        v37 = a1[5];
        if (!*(v37 + 2))
        {
          goto LABEL_117;
        }

        v11 = *(&v59 + 1);
        v12 = v59;
        v9 = *(&v60 + 1);
        v10 = v60;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v38 = *(v37 + 2);
          if (!v38)
          {
            goto LABEL_120;
          }
        }

        else
        {
          v37 = specialized _ArrayBuffer._consumeAndCreateNew()(v37);
          v38 = *(v37 + 2);
          if (!v38)
          {
            goto LABEL_120;
          }
        }

        v39 = v38 - 1;
        v7 = *&v37[8 * v39 + 32];
        *(v37 + 2) = v39;
        a1[5] = v37;
        a1[2] = v7;
        goto LABEL_7;
      case 4uLL:
        if ((v16 & 7) != 0)
        {
          if ((v16 & 7) != 2)
          {
            goto LABEL_97;
          }

          v16 = ProtobufDecoder.decodeVarint()(v16);
          if (v2)
          {
            goto LABEL_109;
          }

          if ((v16 & 0x8000000000000000) != 0)
          {
            goto LABEL_121;
          }

          v40 = a1[1] + v16;
          if (v7 < v40)
          {
            goto LABEL_97;
          }

          a1[3] = 32;
          a1[4] = v40;
        }

        v41 = ProtobufDecoder.decodeVarint()(v16);
        if (v2)
        {
          goto LABEL_109;
        }

        v8 = v41;
        goto LABEL_7;
      case 5uLL:
        if ((v16 & 7) != 2)
        {
          goto LABEL_97;
        }

        v19 = a1[5];
        v20 = swift_isUniquelyReferenced_nonNull_native();
        if ((v20 & 1) == 0)
        {
          v20 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v19 + 2) + 1, 1, v19);
          v19 = v20;
        }

        v22 = *(v19 + 2);
        v21 = *(v19 + 3);
        if (v22 >= v21 >> 1)
        {
          v20 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v21 > 1), v22 + 1, 1, v19);
          v19 = v20;
        }

        *(v19 + 2) = v22 + 1;
        *&v19[8 * v22 + 32] = v7;
        a1[5] = v19;
        v23 = ProtobufDecoder.decodeVarint()(v20);
        if (v2)
        {
          goto LABEL_109;
        }

        if (v23 < 0)
        {
          goto LABEL_113;
        }

        v24 = a1[1] + v23;
        if (v7 < v24)
        {
          goto LABEL_97;
        }

        a1[2] = v24;
        closure #3 in DisplayList.Item.init(from:)(a1, &v59);
        v13 = a1[5];
        if (!*(v13 + 2))
        {
          goto LABEL_116;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v14 = *(v13 + 2);
          if (!v14)
          {
            goto LABEL_118;
          }
        }

        else
        {
          v13 = specialized _ArrayBuffer._consumeAndCreateNew()(v13);
          v14 = *(v13 + 2);
          if (!v14)
          {
            goto LABEL_118;
          }
        }

LABEL_6:
        v15 = v14 - 1;
        v7 = *&v13[8 * v15 + 32];
        *(v13 + 2) = v15;
        a1[5] = v13;
        a1[2] = v7;
        v54 = v59;
        v55 = v60;
        outlined consume of DisplayList.Item.Value(v56, *(&v56 + 1), v57, DWORD2(v57));
        v56 = v54;
        v57 = v55;
        v2 = 0;
        goto LABEL_7;
    }

LABEL_76:
    v48 = v16 & 7;
    if (v48 > 1)
    {
      if (v48 == 2)
      {
        v50 = ProtobufDecoder.decodeVarint()(v16);
        if (v2)
        {
          goto LABEL_109;
        }

        if (v50 < 0)
        {
          goto LABEL_122;
        }

        v49 = a1[1] + v50;
        if (v7 < v49)
        {
          goto LABEL_97;
        }
      }

      else
      {
        if (v48 != 5)
        {
          goto LABEL_97;
        }

        v49 = a1[1] + 4;
        if (v7 < v49)
        {
          goto LABEL_97;
        }
      }

      goto LABEL_90;
    }

    if ((v16 & 7) != 0)
    {
      if (v48 != 1)
      {
        goto LABEL_97;
      }

      v49 = a1[1] + 8;
      if (v7 < v49)
      {
        goto LABEL_97;
      }

LABEL_90:
      a1[1] = v49;
      goto LABEL_7;
    }

    ProtobufDecoder.decodeVarint()(v16);
    if (v2)
    {
      goto LABEL_109;
    }

LABEL_7:
    v6 = a1[1];
    if (v6 >= v7)
    {
      goto LABEL_4;
    }
  }

  if (v18 == 1)
  {
    if ((v16 & 7) != 2)
    {
      goto LABEL_97;
    }

    v42 = a1[5];
    v43 = swift_isUniquelyReferenced_nonNull_native();
    if ((v43 & 1) == 0)
    {
      v43 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v42 + 2) + 1, 1, v42);
      v42 = v43;
    }

    v45 = *(v42 + 2);
    v44 = *(v42 + 3);
    if (v45 >= v44 >> 1)
    {
      v43 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v44 > 1), v45 + 1, 1, v42);
      v42 = v43;
    }

    *(v42 + 2) = v45 + 1;
    *&v42[8 * v45 + 32] = v7;
    a1[5] = v42;
    v46 = ProtobufDecoder.decodeVarint()(v43);
    if (v2)
    {
      goto LABEL_109;
    }

    if (v46 < 0)
    {
      goto LABEL_111;
    }

    v47 = a1[1] + v46;
    if (v7 < v47)
    {
      goto LABEL_97;
    }

    a1[2] = v47;
    closure #1 in DisplayList.Item.init(from:)(a1, &v59);
    v13 = a1[5];
    if (!*(v13 + 2))
    {
      goto LABEL_115;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v14 = *(v13 + 2);
      if (!v14)
      {
        goto LABEL_119;
      }
    }

    else
    {
      v13 = specialized _ArrayBuffer._consumeAndCreateNew()(v13);
      v14 = *(v13 + 2);
      if (!v14)
      {
        goto LABEL_119;
      }
    }

    goto LABEL_6;
  }

  if (v18 != 2)
  {
    goto LABEL_76;
  }

  if ((v16 & 7) != 2)
  {
    goto LABEL_97;
  }

  v25 = a1[5];
  v26 = swift_isUniquelyReferenced_nonNull_native();
  if ((v26 & 1) == 0)
  {
    v26 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v25 + 2) + 1, 1, v25);
    v25 = v26;
  }

  v28 = *(v25 + 2);
  v27 = *(v25 + 3);
  if (v28 >= v27 >> 1)
  {
    v26 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v27 > 1), v28 + 1, 1, v25);
    v25 = v26;
  }

  *(v25 + 2) = v28 + 1;
  *&v25[8 * v28 + 32] = v7;
  a1[5] = v25;
  v29 = ProtobufDecoder.decodeVarint()(v26);
  if (v2)
  {
    goto LABEL_109;
  }

  if ((v29 & 0x8000000000000000) == 0)
  {
    v30 = a1[1] + v29;
    if (v7 < v30)
    {
      goto LABEL_97;
    }

    a1[2] = v30;
    closure #2 in DisplayList.Item.init(from:)(a1, &v59);
    v13 = a1[5];
    if (!*(v13 + 2))
    {
      goto LABEL_114;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v14 = *(v13 + 2);
      if (!v14)
      {
        goto LABEL_96;
      }
    }

    else
    {
      v13 = specialized _ArrayBuffer._consumeAndCreateNew()(v13);
      v14 = *(v13 + 2);
      if (!v14)
      {
LABEL_96:
        __break(1u);
LABEL_97:
        lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
        swift_allocError();
        swift_willThrow();
        goto LABEL_109;
      }
    }

    goto LABEL_6;
  }

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
LABEL_119:
  __break(1u);
LABEL_120:
  __break(1u);
LABEL_121:
  __break(1u);
LABEL_122:
  __break(1u);
  __break(1u);
LABEL_123:
  __break(1u);
LABEL_124:
  __break(1u);
  do
  {
    __break(1u);
    a2 = specialized _ArrayBuffer._consumeAndCreateNew()(a2);
    v51 = *(a2 + 2);
    if (v51)
    {
      goto LABEL_108;
    }

    __break(1u);
    a2 = a1[5];
    if (!*(a2 + 2))
    {
      goto LABEL_123;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v51 = *(a2 + 2);
      if (v51)
      {
        goto LABEL_108;
      }
    }

    else
    {
      a2 = specialized _ArrayBuffer._consumeAndCreateNew()(a2);
      v51 = *(a2 + 2);
      if (v51)
      {
        goto LABEL_108;
      }
    }

    __break(1u);
    a2 = a1[5];
    if (!*(a2 + 2))
    {
      goto LABEL_124;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v51 = *(a2 + 2);
      if (v51)
      {
        goto LABEL_108;
      }
    }

    else
    {
      a2 = specialized _ArrayBuffer._consumeAndCreateNew()(a2);
      v51 = *(a2 + 2);
      if (v51)
      {
        goto LABEL_108;
      }
    }

    __break(1u);
    a2 = a1[5];
  }

  while (!*(a2 + 2));
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v51 = *(a2 + 2);
    if (v51)
    {
      goto LABEL_108;
    }

LABEL_132:
    __break(1u);
  }

  a2 = specialized _ArrayBuffer._consumeAndCreateNew()(a2);
  v51 = *(a2 + 2);
  if (!v51)
  {
    goto LABEL_132;
  }

LABEL_108:
  v52 = v51 - 1;
  v53 = *&a2[8 * v52 + 32];
  *(a2 + 2) = v52;
  a1[5] = a2;
  a1[2] = v53;
LABEL_109:
  *&v59 = v12;
  *(&v59 + 1) = v11;
  *&v60 = v10;
  *(&v60 + 1) = v9;
  v61 = v5;
  v62 = v56;
  v63 = v57;
  v64 = v8;
  outlined destroy of DisplayList.Item(&v59);
}

void closure #1 in DisplayList.Effect.init(from:)(id *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[1];
  v5 = a1[2];
  if (v4 >= v5)
  {
    goto LABEL_65;
  }

  v51 = 0;
  v52 = 0;
  v6 = 0;
  v55 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 6;
  v10 = 1;
  while (1)
  {
    v11 = a1[3];
    if (v11)
    {
      v12 = a1[4];
      if (v4 < v12)
      {
        goto LABEL_11;
      }

      if (v12 < v4)
      {
        goto LABEL_67;
      }

      a1[3] = 0;
    }

    v11 = ProtobufDecoder.decodeVarint()(v11);
    if (v2)
    {
      goto LABEL_68;
    }

    if (v11 < 8)
    {
      goto LABEL_67;
    }

LABEL_11:
    v13 = v11 >> 3;
    v14 = v11 & 7;
    if (v11 >> 3 == 3)
    {
      break;
    }

    if (v13 == 2)
    {
      if (v14 != 2)
      {
        goto LABEL_67;
      }

      v6 = v2;
      v27 = a1[5];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v27 + 2) + 1, 1, v27);
        v27 = isUniquelyReferenced_nonNull_native;
      }

      v30 = *(v27 + 2);
      v29 = *(v27 + 3);
      if (v30 >= v29 >> 1)
      {
        isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v29 > 1), v30 + 1, 1, v27);
        v27 = isUniquelyReferenced_nonNull_native;
      }

      *(v27 + 2) = v30 + 1;
      *&v27[8 * v30 + 32] = v5;
      a1[5] = v27;
      v31 = ProtobufDecoder.decodeVarint()(isUniquelyReferenced_nonNull_native);
      if (v2)
      {
        goto LABEL_68;
      }

      if (v31 < 0)
      {
        __break(1u);
LABEL_74:
        __break(1u);
LABEL_75:
        __break(1u);
LABEL_76:
        __break(1u);
LABEL_77:
        __break(1u);
LABEL_78:
        __break(1u);
LABEL_79:
        __break(1u);
        __break(1u);
        do
        {
          __break(1u);
          v7 = specialized _ArrayBuffer._consumeAndCreateNew()(v7);
          v43 = *(v7 + 2);
          if (v43)
          {
            goto LABEL_72;
          }

          __break(1u);
          v6 = v7;
          v7 = a1[5];
        }

        while (!*(v7 + 2));
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v43 = *(v7 + 2);
          if (v43)
          {
LABEL_72:
            v44 = v43 - 1;
            v45 = *&v7[8 * v44 + 32];
            *(v7 + 2) = v44;
            outlined consume of Path.Storage(v52, v55, v6, v8, v9);
            a1[5] = v7;
            a1[2] = v45;
            return;
          }
        }

        else
        {
          v7 = specialized _ArrayBuffer._consumeAndCreateNew()(v7);
          v43 = *(v7 + 2);
          if (v43)
          {
            goto LABEL_72;
          }
        }

        __break(1u);
        return;
      }

      v32 = a1[1] + v31;
      if (v5 < v32)
      {
        goto LABEL_67;
      }

      a1[2] = v32;
      v33 = specialized FillStyle.init(from:)(a1);
      v34 = a1[5];
      if (!*(v34 + 2))
      {
        goto LABEL_76;
      }

      v6 = v33;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v35 = *(v34 + 2);
        if (!v35)
        {
          goto LABEL_77;
        }
      }

      else
      {
        v34 = specialized _ArrayBuffer._consumeAndCreateNew()(v34);
        v35 = *(v34 + 2);
        if (!v35)
        {
          goto LABEL_77;
        }
      }

      v36 = v35 - 1;
      v5 = *&v34[8 * v36 + 32];
      *(v34 + 2) = v36;
      v10 = (v6 >> 8) & 1;
      a1[5] = v34;
      a1[2] = v5;
    }

    else
    {
      if (v13 == 1)
      {
        if (v14 != 2)
        {
          goto LABEL_67;
        }

        v49 = v6;
        v6 = v2;
        v15 = a1[5];
        v16 = swift_isUniquelyReferenced_nonNull_native();
        v48 = v10;
        if ((v16 & 1) == 0)
        {
          v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v15 + 2) + 1, 1, v15);
          v15 = v16;
        }

        v18 = *(v15 + 2);
        v17 = *(v15 + 3);
        if (v18 >= v17 >> 1)
        {
          v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18 + 1, 1, v15);
          v15 = v16;
        }

        *(v15 + 2) = v18 + 1;
        *&v15[8 * v18 + 32] = v5;
        a1[5] = v15;
        v19 = ProtobufDecoder.decodeVarint()(v16);
        if (v2)
        {
          goto LABEL_68;
        }

        if (v19 < 0)
        {
          goto LABEL_74;
        }

        v20 = a1[1] + v19;
        if (v5 < v20)
        {
          goto LABEL_67;
        }

        a1[2] = v20;
        specialized Path.init(from:)(a1, v53);
        v21 = a1[5];
        if (!*(v21 + 2))
        {
          goto LABEL_75;
        }

        v22 = v7;
        v46 = v8;
        v47 = v9;
        v23 = v53[0];
        v24 = v53[1];
        v7 = v53[2];
        v8 = v53[3];
        v9 = v54;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v25 = *(v21 + 2);
          if (!v25)
          {
            goto LABEL_64;
          }

          goto LABEL_25;
        }

        v21 = specialized _ArrayBuffer._consumeAndCreateNew()(v21);
        v25 = *(v21 + 2);
        if (v25)
        {
LABEL_25:
          v26 = v25 - 1;
          v5 = *&v21[8 * v26 + 32];
          *(v21 + 2) = v26;
          outlined consume of Path.Storage(v52, v55, v22, v46, v47);
          v52 = v23;
          a1[5] = v21;
          a1[2] = v5;
          v55 = v24;
          v10 = v48;
          v6 = v49;
          goto LABEL_4;
        }

LABEL_64:
        __break(1u);
LABEL_65:
        v51 = 0;
        v52 = 0;
        LOBYTE(v6) = 0;
        v55 = 0;
        v7 = 0;
        v8 = 0;
        LOBYTE(v10) = 1;
        v9 = 6;
LABEL_66:
        a1[3] = 0;
        v41 = swift_allocObject();
        v42 = v55;
        *(v41 + 16) = v52;
        *(v41 + 24) = v42;
        *(v41 + 32) = v7;
        *(v41 + 40) = v8;
        *(v41 + 48) = v9;
        *(v41 + 49) = v6 & 1;
        *(v41 + 50) = v10 & 1;
        *(v41 + 52) = v51;
        *a2 = v41;
        *(a2 + 8) = 0;
        *(a2 + 12) = 6;
        return;
      }

      if ((v11 & 7) > 1)
      {
        if (v14 == 2)
        {
          v40 = ProtobufDecoder.decodeVarint()(v11);
          if (v2)
          {
            goto LABEL_68;
          }

          if (v40 < 0)
          {
            goto LABEL_79;
          }

          v39 = a1[1] + v40;
          if (v5 < v39)
          {
            goto LABEL_67;
          }
        }

        else
        {
          if (v14 != 5)
          {
            goto LABEL_67;
          }

          v39 = a1[1] + 4;
          if (v5 < v39)
          {
            goto LABEL_67;
          }
        }

        goto LABEL_3;
      }

      if ((v11 & 7) != 0)
      {
        if (v14 != 1)
        {
          goto LABEL_67;
        }

        v39 = a1[1] + 8;
        if (v5 < v39)
        {
          goto LABEL_67;
        }

LABEL_3:
        a1[1] = v39;
        goto LABEL_4;
      }

      ProtobufDecoder.decodeVarint()(v11);
      if (v2)
      {
        goto LABEL_68;
      }
    }

LABEL_4:
    v4 = a1[1];
    if (v4 >= v5)
    {
      goto LABEL_66;
    }
  }

  if ((v11 & 7) == 0)
  {
LABEL_44:
    v38 = ProtobufDecoder.decodeVarint()(v11);
    if (v2)
    {
      goto LABEL_68;
    }

    v51 = v38;
    goto LABEL_4;
  }

  if (v14 != 2)
  {
    goto LABEL_67;
  }

  v11 = ProtobufDecoder.decodeVarint()(v11);
  if (v2)
  {
    goto LABEL_68;
  }

  if ((v11 & 0x8000000000000000) != 0)
  {
    goto LABEL_78;
  }

  v37 = a1[1] + v11;
  if (v5 >= v37)
  {
    a1[3] = 24;
    a1[4] = v37;
    goto LABEL_44;
  }

LABEL_67:
  lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
  swift_allocError();
  swift_willThrow();
LABEL_68:
  outlined consume of Path.Storage(v52, v55, v7, v8, v9);
}

void specialized project #1 <A>(type:) in CodableViewFactory.init(from:)(__int128 *a1@<X1>, uint64_t *a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t *a6@<X8>)
{
  v14 = *a1;
  v16 = *a1;
  swift_beginAccess();
  v10 = *a2;
  v11 = a2[1];
  a6[3] = a3;
  a6[4] = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a6);
  v13 = v14;

  outlined copy of Data._Representation(v10, v11);
  ProtobufDecoder.value<A>(fromBinaryPlist:type:)(a3, a4, boxed_opaque_existential_1);

  outlined consume of Data._Representation(v10, v11);
  if (v17)
  {
    __swift_deallocate_boxed_opaque_existential_1(a6);
  }
}

uint64_t _DisplayList_Identity.init(from:)@<X0>(void *a1@<X0>, _DWORD *a2@<X8>)
{
  v13 = a2;
  type metadata accessor for KeyedEncodingContainer<_DisplayList_Identity.CodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<_DisplayList_Identity.CodingKeys>, lazy protocol witness table accessor for type _DisplayList_Identity.CodingKeys and conformance _DisplayList_Identity.CodingKeys, &unk_1F0048590, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type _DisplayList_Identity.CodingKeys and conformance _DisplayList_Identity.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v9 = v13;
    v10 = KeyedDecodingContainer.decode(_:forKey:)();
    (*(v6 + 8))(v8, v5);
    *v9 = v10;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t closure #1 in EdgeInsets.init(from:)(unint64_t result, void *a2, uint64_t *a3)
{
  v5 = a2[1];
  if (v5 >= a2[2])
  {
LABEL_43:
    a2[3] = 0;
    return result;
  }

  v7 = result;
  while (1)
  {
    result = a2[3];
    if (result)
    {
      v8 = a2[4];
      if (v5 < v8)
      {
        goto LABEL_11;
      }

      if (v8 < v5)
      {
        goto LABEL_41;
      }

      a2[3] = 0;
    }

    result = ProtobufDecoder.decodeVarint()(result);
    if (v3)
    {
      goto LABEL_42;
    }

    if (result <= 7)
    {
LABEL_41:
      lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
      v19 = swift_allocError();
      result = swift_willThrow();
      v3 = v19;
LABEL_42:
      *a3 = v3;
      return result;
    }

LABEL_11:
    if (result <= 0x27)
    {
      break;
    }

    v9 = result & 7;
    if (v9 > 1)
    {
      if (v9 == 2)
      {
        result = ProtobufDecoder.decodeVarint()(result);
        if (v3)
        {
          goto LABEL_42;
        }

        if ((result & 0x8000000000000000) != 0)
        {
          goto LABEL_47;
        }

        v10 = a2[1] + result;
        if (a2[2] < v10)
        {
          goto LABEL_41;
        }
      }

      else
      {
        if (v9 != 5)
        {
          goto LABEL_41;
        }

        v10 = a2[1] + 4;
        if (a2[2] < v10)
        {
          goto LABEL_41;
        }
      }

      goto LABEL_3;
    }

    if ((result & 7) != 0)
    {
      if (v9 != 1)
      {
        goto LABEL_41;
      }

      v10 = a2[1] + 8;
      if (a2[2] < v10)
      {
        goto LABEL_41;
      }

LABEL_3:
      a2[1] = v10;
      goto LABEL_4;
    }

    result = ProtobufDecoder.decodeVarint()(result);
    if (v3)
    {
      goto LABEL_42;
    }

LABEL_4:
    v5 = a2[1];
    if (v5 >= a2[2])
    {
      goto LABEL_43;
    }
  }

  v11 = (result >> 3) - 1;
  if (result >> 3)
  {
    if ((v11 & 0x8000000000000000) != 0)
    {
      goto LABEL_45;
    }

    v12 = result & 7;
    if (v12 == 5)
    {
      v17 = a2[1];
      if (a2[2] < (v17 + 1))
      {
        goto LABEL_41;
      }

      v18 = *v17;
      a2[1] = v17 + 1;
      v16 = v18;
    }

    else
    {
      if (v12 == 2)
      {
        v15 = result;
        result = ProtobufDecoder.decodeVarint()(result);
        if (v3)
        {
          goto LABEL_42;
        }

        if ((result & 0x8000000000000000) != 0)
        {
          goto LABEL_46;
        }

        v13 = a2[1];
        v14 = a2[2];
        if (v14 < v13 + result)
        {
          goto LABEL_41;
        }

        a2[3] = v15 & 0x38 | 1;
        a2[4] = v13 + result;
      }

      else
      {
        if (v12 != 1)
        {
          goto LABEL_41;
        }

        v13 = a2[1];
        v14 = a2[2];
      }

      if (v14 < (v13 + 1))
      {
        goto LABEL_41;
      }

      v16 = *v13;
      a2[1] = v13 + 1;
    }

    *(v7 + 8 * v11) = v16;
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

uint64_t ProtobufDecoder.dataField(_:)(void *a1)
{
  if ((*a1 & 7) != 2)
  {
    lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
    swift_allocError();
    swift_willThrow();
    return v3;
  }

  v4 = ProtobufDecoder.decodeDataBuffer()(a1);
  if (v2)
  {
    return v3;
  }

  v3 = 0;
  if (!v4)
  {
    return v3;
  }

  v6 = v5 - v4;
  if (v5 == v4)
  {
    return v3;
  }

  v7 = v4 - [*v1 bytes];
  result = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  if (__OFADD__(v7, v6))
  {
    __break(1u);
  }

  else if (v7 + v6 >= v7)
  {
    v11 = result;
    v3 = Data._Representation.subscript.getter();
    outlined consume of Data._Representation(v11, v10);
    return v3;
  }

  __break(1u);
  return result;
}

uint64_t ProtobufDecoder.decodeDataBuffer()(uint64_t a1)
{
  result = ProtobufDecoder.decodeVarint()(a1);
  if (!v2)
  {
    if (result < 0)
    {
      __break(1u);
    }

    else
    {
      v4 = result;
      result = *(v1 + 8);
      if (*(v1 + 16) >= (result + v4))
      {
        *(v1 + 8) = result + v4;
      }

      else
      {
        lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
        swift_allocError();
        return swift_willThrow();
      }
    }
  }

  return result;
}

unint64_t specialized CGPoint.init(from:)(unint64_t result)
{
  v2 = result;
  v3 = *(result + 8);
  v4 = *(result + 16);
  if (v3 >= v4)
  {
LABEL_2:
    v2[3] = 0;
    return result;
  }

  while (1)
  {
    result = v2[3];
    if (result)
    {
      v5 = v2[4];
      if (v3 < v5)
      {
        goto LABEL_13;
      }

      if (v5 < v3)
      {
        goto LABEL_51;
      }

      v2[3] = 0;
    }

    result = ProtobufDecoder.decodeVarint()(result);
    if (v1)
    {
      return result;
    }

    if (result <= 7)
    {
      goto LABEL_51;
    }

LABEL_13:
    v6 = result & 7;
    if (result >> 3 == 2)
    {
      break;
    }

    if (result >> 3 == 1)
    {
      if (v6 != 5)
      {
        if (v6 == 2)
        {
          result = ProtobufDecoder.decodeVarint()(result);
          if (v1)
          {
            return result;
          }

          if ((result & 0x8000000000000000) != 0)
          {
            goto LABEL_54;
          }

          v7 = v2[1];
          if (v4 < v7 + result)
          {
            goto LABEL_51;
          }

          v2[3] = 9;
          v2[4] = v7 + result;
        }

        else
        {
          if (v6 != 1)
          {
            goto LABEL_51;
          }

          v7 = v2[1];
        }

        v3 = v7 + 8;
        if (v4 < v7 + 8)
        {
          goto LABEL_51;
        }

        goto LABEL_5;
      }

      v3 = v2[1] + 4;
      if (v4 < v3)
      {
        goto LABEL_51;
      }

      v2[1] = v3;
    }

    else
    {
      if ((result & 7) > 1)
      {
        if (v6 == 2)
        {
          result = ProtobufDecoder.decodeVarint()(result);
          if (v1)
          {
            return result;
          }

          if ((result & 0x8000000000000000) != 0)
          {
            __break(1u);
LABEL_51:
            lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
            swift_allocError();
            return swift_willThrow();
          }

          v3 = v2[1] + result;
        }

        else
        {
          if (v6 != 5)
          {
            goto LABEL_51;
          }

          v3 = v2[1] + 4;
        }

LABEL_4:
        if (v4 < v3)
        {
          goto LABEL_51;
        }

LABEL_5:
        v2[1] = v3;
        goto LABEL_6;
      }

      if ((result & 7) != 0)
      {
        if (v6 != 1)
        {
          goto LABEL_51;
        }

        v3 = v2[1] + 8;
        goto LABEL_4;
      }

      result = ProtobufDecoder.decodeVarint()(result);
      if (v1)
      {
        return result;
      }

      v3 = v2[1];
    }

LABEL_6:
    if (v3 >= v4)
    {
      goto LABEL_2;
    }
  }

  if (v6 == 5)
  {
    v3 = v2[1] + 4;
    if (v4 < v3)
    {
      goto LABEL_51;
    }

    v2[1] = v3;
    goto LABEL_6;
  }

  if (v6 != 2)
  {
    if (v6 != 1)
    {
      goto LABEL_51;
    }

    v8 = v2[1];
    goto LABEL_40;
  }

  result = ProtobufDecoder.decodeVarint()(result);
  if (v1)
  {
    return result;
  }

  if ((result & 0x8000000000000000) == 0)
  {
    v8 = v2[1];
    if (v4 < v8 + result)
    {
      goto LABEL_51;
    }

    v2[3] = 17;
    v2[4] = v8 + result;
LABEL_40:
    v3 = v8 + 8;
    if (v4 < v8 + 8)
    {
      goto LABEL_51;
    }

    goto LABEL_5;
  }

  __break(1u);
LABEL_54:
  __break(1u);
  return result;
}

void closure #2 in DisplayList.Item.init(from:)(unint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  if (v5 >= v6)
  {
LABEL_50:
    v9 = 0;
    v27 = 0x1400000000;
    v10 = MEMORY[0x1E69E7CC0];
    v28 = 0x40000000;
LABEL_51:
    v3[3] = 0;
    *a2 = v9;
    a2[1] = v27;
    a2[2] = v10;
    a2[3] = v28;
    return;
  }

  v7 = 0;
  v8 = 0;
  v9 = 0;
  v36 = 0;
  v37 = 20;
  v10 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v11 = v3[3];
    if (v11)
    {
      v12 = v3[4];
      if (v5 < v12)
      {
        goto LABEL_11;
      }

      if (v12 < v5)
      {
        goto LABEL_52;
      }

      v3[3] = 0;
    }

    a1 = ProtobufDecoder.decodeVarint()(a1);
    if (v2)
    {
      goto LABEL_54;
    }

    v11 = a1;
    if (a1 < 8)
    {
LABEL_52:

LABEL_53:
      lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
      swift_allocError();
      swift_willThrow();
      goto LABEL_55;
    }

LABEL_11:
    if (v11 >> 3 == 2)
    {
      break;
    }

    if (v11 >> 3 == 1)
    {
      if ((v11 & 7) != 2)
      {
        goto LABEL_52;
      }

      ProtobufDecoder.beginMessage()();
      if (v2)
      {
LABEL_54:

LABEL_55:
        outlined consume of DisplayList.Effect(v9, v36, v37);
        return;
      }

      DisplayList.Effect.init(from:)(v3, &v33);
      v13 = v3[5];
      if (!*(v13 + 2))
      {
        goto LABEL_63;
      }

      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v14 = *(v13 + 2);
        if (!v14)
        {
          goto LABEL_64;
        }
      }

      else
      {
        v13 = specialized _ArrayBuffer._consumeAndCreateNew()(v13);
        v14 = *(v13 + 2);
        if (!v14)
        {
          goto LABEL_64;
        }
      }

      v15 = v14 - 1;
      v6 = *&v13[8 * v15 + 32];
      *(v13 + 2) = v15;
      outlined consume of DisplayList.Effect(v9, v36, v37);
      v3[5] = v13;
      v3[2] = v6;
      v9 = v33;
      v36 = v34;
      v37 = v35;
    }

    else
    {
      v25 = v11 & 7;
      if (v25 > 1)
      {
        if (v25 == 2)
        {
          a1 = ProtobufDecoder.decodeVarint()(a1);
          if (v2)
          {
            goto LABEL_54;
          }

          if ((a1 & 0x8000000000000000) != 0)
          {
            goto LABEL_66;
          }

          v26 = v3[1] + a1;
          if (v6 < v26)
          {
            goto LABEL_52;
          }
        }

        else
        {
          if (v25 != 5)
          {
            goto LABEL_52;
          }

          v26 = v3[1] + 4;
          if (v6 < v26)
          {
            goto LABEL_52;
          }
        }
      }

      else
      {
        if ((v11 & 7) == 0)
        {
          a1 = ProtobufDecoder.decodeVarint()(a1);
          if (v2)
          {
            goto LABEL_54;
          }

          goto LABEL_4;
        }

        if (v25 != 1)
        {
          goto LABEL_52;
        }

        v26 = v3[1] + 8;
        if (v6 < v26)
        {
          goto LABEL_52;
        }
      }

      v3[1] = v26;
    }

LABEL_4:
    v5 = v3[1];
    if (v5 >= v6)
    {
      v27 = v36 | (v37 << 32);
      v28 = v8 | (v7 << 32) | 0x40000000;
      goto LABEL_51;
    }
  }

  if ((v11 & 7) != 2)
  {
    goto LABEL_53;
  }

  v16 = v3[5];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v16 + 16) + 1, 1, v16);
    v16 = isUniquelyReferenced_nonNull_native;
  }

  v19 = *(v16 + 16);
  v18 = *(v16 + 24);
  if (v19 >= v18 >> 1)
  {
    isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v19 + 1, 1, v16);
    v16 = isUniquelyReferenced_nonNull_native;
  }

  *(v16 + 16) = v19 + 1;
  *(v16 + 8 * v19 + 32) = v6;
  v3[5] = v16;
  v20 = ProtobufDecoder.decodeVarint()(isUniquelyReferenced_nonNull_native);
  if (v2)
  {
    goto LABEL_55;
  }

  if ((v20 & 0x8000000000000000) == 0)
  {
    v21 = v3[1] + v20;
    if (v6 < v21)
    {
      goto LABEL_53;
    }

    v3[2] = v21;
    DisplayList.init(from:)(v3, &v33);
    v22 = v3[5];
    if (!*(v22 + 16))
    {
      goto LABEL_65;
    }

    a1 = swift_isUniquelyReferenced_nonNull_native();
    if (a1)
    {
      v23 = *(v22 + 16);
      if (!v23)
      {
        goto LABEL_49;
      }
    }

    else
    {
      a1 = specialized _ArrayBuffer._consumeAndCreateNew()(v22);
      v22 = a1;
      v23 = *(a1 + 16);
      if (!v23)
      {
LABEL_49:
        __break(1u);
        goto LABEL_50;
      }
    }

    v24 = v23 - 1;
    v6 = *(v22 + 8 * v24 + 32);
    *(v22 + 16) = v24;
    v3[5] = v22;
    v3[2] = v6;
    v10 = v33;
    v8 = v34;
    v7 = v35;
    goto LABEL_4;
  }

  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
  __break(1u);
  v29 = specialized _ArrayBuffer._consumeAndCreateNew()(a2);
  v30 = *(v29 + 2);
  if (v30)
  {
LABEL_61:
    v31 = v30 - 1;
    v32 = *&v29[8 * v31 + 32];
    *(v29 + 2) = v31;
    outlined consume of DisplayList.Effect(v9, v36, v37);
    v3[5] = v29;
    v3[2] = v32;
    return;
  }

  __break(1u);
  v29 = v3[5];
  if (!*(v29 + 2))
  {
    __break(1u);
LABEL_69:
    v29 = specialized _ArrayBuffer._consumeAndCreateNew()(v29);
    v30 = *(v29 + 2);
    if (!v30)
    {
      goto LABEL_70;
    }

    goto LABEL_61;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_69;
  }

  v30 = *(v29 + 2);
  if (v30)
  {
    goto LABEL_61;
  }

LABEL_70:
  __break(1u);
}

void lazy protocol witness table accessor for type _DisplayList_Identity.CodingKeys and conformance _DisplayList_Identity.CodingKeys()
{
  if (!lazy protocol witness table cache variable for type _DisplayList_Identity.CodingKeys and conformance _DisplayList_Identity.CodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for _DisplayList_Identity.CodingKeys, &unk_1F0048590, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type _DisplayList_Identity.CodingKeys and conformance _DisplayList_Identity.CodingKeys);
  }
}

{
  if (!lazy protocol witness table cache variable for type _DisplayList_Identity.CodingKeys and conformance _DisplayList_Identity.CodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for _DisplayList_Identity.CodingKeys, &unk_1F0048590, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type _DisplayList_Identity.CodingKeys and conformance _DisplayList_Identity.CodingKeys);
  }
}

{
  if (!lazy protocol witness table cache variable for type _DisplayList_Identity.CodingKeys and conformance _DisplayList_Identity.CodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for _DisplayList_Identity.CodingKeys, &unk_1F0048590, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type _DisplayList_Identity.CodingKeys and conformance _DisplayList_Identity.CodingKeys);
  }
}

{
  if (!lazy protocol witness table cache variable for type _DisplayList_Identity.CodingKeys and conformance _DisplayList_Identity.CodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for _DisplayList_Identity.CodingKeys, &unk_1F0048590, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type _DisplayList_Identity.CodingKeys and conformance _DisplayList_Identity.CodingKeys);
  }
}

void closure #2 in DisplayList.Content.Value.init(from:)(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = a1[1];
  v5 = a1[2];
  if (v4 < v5)
  {
    LOBYTE(v58) = 0;
    v6 = 0;
    v59 = 0;
    v60 = 0;
    v61 = 0;
    v7 = 0;
    v8 = 6;
    LOBYTE(v55) = 1;
    while (1)
    {
      v12 = a1[3];
      if (v12)
      {
        v13 = a1[4];
        if (v4 < v13)
        {
          goto LABEL_13;
        }

        if (v13 < v4)
        {
          goto LABEL_73;
        }

        a1[3] = 0;
      }

      v12 = ProtobufDecoder.decodeVarint()(v12);
      if (v2)
      {
        goto LABEL_74;
      }

      if (v12 < 8)
      {
        goto LABEL_73;
      }

LABEL_13:
      v14 = v12 >> 3;
      if (v12 >> 3 == 3)
      {
        if ((v12 & 7) != 2)
        {
          goto LABEL_73;
        }

        v38 = a1[5];
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v38 + 16) + 1, 1, v38);
          v38 = isUniquelyReferenced_nonNull_native;
        }

        v41 = *(v38 + 16);
        v40 = *(v38 + 24);
        if (v41 >= v40 >> 1)
        {
          isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v40 > 1), v41 + 1, 1, v38);
          v38 = isUniquelyReferenced_nonNull_native;
        }

        *(v38 + 16) = v41 + 1;
        *(v38 + 8 * v41 + 32) = v5;
        a1[5] = v38;
        v42 = ProtobufDecoder.decodeVarint()(isUniquelyReferenced_nonNull_native);
        if (v2)
        {
          goto LABEL_74;
        }

        if (v42 < 0)
        {
          goto LABEL_87;
        }

        v43 = a1[1] + v42;
        if (v5 < v43)
        {
          goto LABEL_73;
        }

        a1[2] = v43;
        v58 = specialized FillStyle.init(from:)(a1);
        v44 = a1[5];
        if (!*(v44 + 2))
        {
          goto LABEL_89;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v45 = *(v44 + 2);
          if (!v45)
          {
            goto LABEL_92;
          }
        }

        else
        {
          v44 = specialized _ArrayBuffer._consumeAndCreateNew()(v44);
          v45 = *(v44 + 2);
          if (!v45)
          {
            goto LABEL_92;
          }
        }

        v46 = v45 - 1;
        v5 = *&v44[8 * v46 + 32];
        *(v44 + 2) = v46;
        v55 = (v58 >> 8) & 1;
        a1[5] = v44;
        a1[2] = v5;
        goto LABEL_6;
      }

      if (v14 == 2)
      {
        if ((v12 & 7) != 2)
        {
          goto LABEL_73;
        }

        v29 = a1[5];
        v30 = swift_isUniquelyReferenced_nonNull_native();
        if ((v30 & 1) == 0)
        {
          v30 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v29 + 16) + 1, 1, v29);
          v29 = v30;
        }

        v32 = *(v29 + 16);
        v31 = *(v29 + 24);
        if (v32 >= v31 >> 1)
        {
          v30 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v31 > 1), v32 + 1, 1, v29);
          v29 = v30;
        }

        *(v29 + 16) = v32 + 1;
        *(v29 + 8 * v32 + 32) = v5;
        a1[5] = v29;
        v33 = ProtobufDecoder.decodeVarint()(v30);
        if (v2)
        {
          goto LABEL_74;
        }

        if (v33 < 0)
        {
          __break(1u);
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
          __break(1u);
LABEL_94:
          __break(1u);
          do
          {
            __break(1u);
            v7 = specialized _ArrayBuffer._consumeAndCreateNew()(v7);
            v51 = *(v7 + 2);
            if (v51)
            {
              goto LABEL_84;
            }

            __break(1u);
            v5 = v7;
            v7 = a1[5];
            if (!*(v7 + 2))
            {
              goto LABEL_94;
            }

            if (swift_isUniquelyReferenced_nonNull_native())
            {
              v51 = *(v7 + 2);
              if (v51)
              {
                goto LABEL_84;
              }
            }

            else
            {
              v7 = specialized _ArrayBuffer._consumeAndCreateNew()(v7);
              v51 = *(v7 + 2);
              if (v51)
              {
                goto LABEL_84;
              }
            }

            __break(1u);
            v5 = v7;
            v7 = a1[5];
          }

          while (!*(v7 + 2));
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v51 = *(v7 + 2);
            if (v51)
            {
LABEL_84:
              v52 = v51 - 1;
              v53 = *&v7[8 * v52 + 32];
              *(v7 + 2) = v52;
              outlined consume of Path.Storage(v59, v60, v61, v5, v8);

              a1[5] = v7;
              a1[2] = v53;
              return;
            }
          }

          else
          {
            v7 = specialized _ArrayBuffer._consumeAndCreateNew()(v7);
            v51 = *(v7 + 2);
            if (v51)
            {
              goto LABEL_84;
            }
          }

          __break(1u);
          return;
        }

        v34 = a1[1] + v33;
        if (v5 < v34)
        {
          goto LABEL_73;
        }

        a1[2] = v34;
        CodableResolvedPaint.init(from:)(a1, &v64);
        v35 = a1[5];
        if (!*(v35 + 2))
        {
          goto LABEL_88;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v36 = *(v35 + 2);
          if (!v36)
          {
            goto LABEL_91;
          }
        }

        else
        {
          v35 = specialized _ArrayBuffer._consumeAndCreateNew()(v35);
          v36 = *(v35 + 2);
          if (!v36)
          {
            goto LABEL_91;
          }
        }

        v37 = v36 - 1;
        v5 = *&v35[8 * v37 + 32];
        *(v35 + 2) = v37;

        a1[5] = v35;
        a1[2] = v5;
        v6 = v64;
        goto LABEL_6;
      }

      if (v14 == 1)
      {
        if ((v12 & 7) != 2)
        {
          goto LABEL_73;
        }

        v15 = a1[5];
        v16 = swift_isUniquelyReferenced_nonNull_native();
        if ((v16 & 1) == 0)
        {
          v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v15 + 16) + 1, 1, v15);
          v15 = v16;
        }

        v18 = *(v15 + 16);
        v17 = *(v15 + 24);
        if (v18 >= v17 >> 1)
        {
          v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18 + 1, 1, v15);
          v15 = v16;
        }

        *(v15 + 16) = v18 + 1;
        *(v15 + 8 * v18 + 32) = v5;
        a1[5] = v15;
        v19 = ProtobufDecoder.decodeVarint()(v16);
        if (v2)
        {
          goto LABEL_74;
        }

        if (v19 < 0)
        {
          goto LABEL_86;
        }

        v20 = a1[1] + v19;
        if (v5 < v20)
        {
          goto LABEL_73;
        }

        a1[2] = v20;
        specialized Path.init(from:)(a1, v62);
        v21 = a1[5];
        if (!*(v21 + 2))
        {
          goto LABEL_90;
        }

        v22 = v7;
        v56 = v8;
        v57 = v6;
        v23 = v62[0];
        v24 = v62[1];
        v25 = v62[2];
        v7 = v62[3];
        v8 = v63;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v26 = *(v21 + 2);
          if (!v26)
          {
            goto LABEL_72;
          }
        }

        else
        {
          v21 = specialized _ArrayBuffer._consumeAndCreateNew()(v21);
          v26 = *(v21 + 2);
          if (!v26)
          {
LABEL_72:
            __break(1u);
LABEL_73:
            lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
            swift_allocError();
            swift_willThrow();
LABEL_74:
            outlined consume of Path.Storage(v59, v60, v61, v7, v8);

            return;
          }
        }

        v27 = v26 - 1;
        v28 = *&v21[8 * v27 + 32];
        *(v21 + 2) = v27;
        outlined consume of Path.Storage(v59, v60, v61, v22, v56);
        v59 = v23;
        v60 = v24;
        v5 = v28;
        a1[5] = v21;
        a1[2] = v28;
        v61 = v25;
        v6 = v57;
        goto LABEL_6;
      }

      v47 = v12 & 7;
      if (v47 > 1)
      {
        if (v47 == 2)
        {
          v49 = ProtobufDecoder.decodeVarint()(v12);
          if (v2)
          {
            goto LABEL_74;
          }

          if (v49 < 0)
          {
            goto LABEL_93;
          }

          v48 = a1[1] + v49;
          if (v5 < v48)
          {
            goto LABEL_73;
          }
        }

        else
        {
          if (v47 != 5)
          {
            goto LABEL_73;
          }

          v48 = a1[1] + 4;
          if (v5 < v48)
          {
            goto LABEL_73;
          }
        }
      }

      else
      {
        if ((v12 & 7) == 0)
        {
          ProtobufDecoder.decodeVarint()(v12);
          if (v2)
          {
            goto LABEL_74;
          }

          goto LABEL_6;
        }

        if (v47 != 1)
        {
          goto LABEL_73;
        }

        v48 = a1[1] + 8;
        if (v5 < v48)
        {
          goto LABEL_73;
        }
      }

      a1[1] = v48;
LABEL_6:
      v4 = a1[1];
      if (v4 >= v5)
      {
        a1[3] = 0;
        if (v6)
        {
          v50 = swift_allocObject();
          *(v50 + 16) = v59;
          *(v50 + 24) = v60;
          *(v50 + 32) = v61;
          *(v50 + 40) = v7;
          *(v50 + 48) = v8;
          *(v50 + 56) = v6;
          *(v50 + 64) = v58 & 1;
          *(v50 + 65) = v55 & 1;
          *a2 = v50 | 0x4000000000000000;
          return;
        }

        v10 = v60;
        v11 = v61;
        v9 = v59;
        goto LABEL_4;
      }
    }
  }

  v9 = 0;
  v10 = 0;
  v11 = 0;
  v7 = 0;
  a1[3] = 0;
  v8 = 6;
LABEL_4:
  lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
  swift_allocError();
  swift_willThrow();
  outlined consume of Path.Storage(v9, v10, v11, v7, v8);
}

uint64_t sub_18D35F034()
{
  outlined consume of Path.Storage(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));

  return swift_deallocObject();
}

uint64_t specialized Array._customRemoveLast()()
{
  v1 = *v0;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    v3 = *(v1 + 16);
    if (v3)
    {
LABEL_3:
      v4 = v3 - 1;
      result = *(v1 + 8 * v4 + 32);
      *(v1 + 16) = v4;
      *v0 = v1;
      return result;
    }
  }

  else
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v1);
    v1 = result;
    v3 = *(result + 16);
    if (v3)
    {
      goto LABEL_3;
    }
  }

  __break(1u);
  return result;
}

uint64_t closure #1 in static ResolvableTextSegmentAttribute.toggleAttributes(in:)(uint64_t a1, Swift::Int a2, Swift::Int a3, uint64_t a4, NSMutableAttributedString a5)
{
  type metadata accessor for AttributedString.AdaptiveImageGlyph?(0, &lazy cache variable for type metadata for ResolvableTextSegmentAttribute.Value?, type metadata accessor for ResolvableTextSegmentAttribute.Value, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v22[-v10];
  v12 = type metadata accessor for ResolvableTextSegmentAttribute.Value(0);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v22[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = MEMORY[0x1E69E7CA0];
  _sypSgWOcTm_0(a1, v22, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], _sypSgMaTm_6);
  if (v23)
  {
    v17 = swift_dynamicCast();
    (*(v13 + 56))(v11, v17 ^ 1u, 1, v12);
    if ((*(v13 + 48))(v11, 1, v12) != 1)
    {
      v18 = _s7SwiftUI33ResolvableStringResolutionContextVWObTm_1(v11, v15, type metadata accessor for ResolvableTextSegmentAttribute.Value);
      v19 = MEMORY[0x193AC38C0](v18);
      v20.location = a2;
      v20.length = a3;
      ResolvableTextSegmentAttribute.Value.toggleAttributes(in:of:)(v20, a5);
      objc_autoreleasePoolPop(v19);
      return outlined destroy of ResolvableTextSegmentAttribute.Value(v15, type metadata accessor for ResolvableTextSegmentAttribute.Value);
    }
  }

  else
  {
    _sypSgWOhTm_8(v22, &lazy cache variable for type metadata for Any?, v16 + 8, MEMORY[0x1E69E6720], _sypSgMaTm_6);
    (*(v13 + 56))(v11, 1, 1, v12);
  }

  return outlined destroy of ResolvableStringAttribute?(v11, &lazy cache variable for type metadata for ResolvableTextSegmentAttribute.Value?, type metadata accessor for ResolvableTextSegmentAttribute.Value, MEMORY[0x1E69E6720], type metadata accessor for AttributedString.AdaptiveImageGlyph?);
}

double outlined consume of AccessibilityText.Storage(void *a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }

  return result;
}

double outlined consume of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>?(void *a1, uint64_t a2, int a3)
{
  if (BYTE2(a3) != 255)
  {
    return outlined consume of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(a1, a2, a3, BYTE2(a3) & 1);
  }

  return result;
}

uint64_t outlined destroy of Locale?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = (a5)(0, a2, a3, a4);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t initializeWithCopy for CodableAccessibilityAttachmentStorage.VBase(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v6;
  v7 = *(a2 + 34);
  v8 = *(a2 + 32);

  if (v7 == 255)
  {
    *(a1 + 16) = *(a2 + 16);
    *(a1 + 31) = *(a2 + 31);
  }

  else
  {
    v9 = v8 & 0xFF00FFFF | (v7 << 16);
    v10 = *(a2 + 16);
    v11 = *(a2 + 24);
    outlined copy of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(v10, v11, v9, BYTE2(v9) & 1);
    *(a1 + 16) = v10;
    *(a1 + 24) = v11;
    *(a1 + 32) = v9;
    *(a1 + 34) = BYTE2(v9) & 1;
  }

  if (*(a2 + 58) == 255)
  {
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 55) = *(a2 + 55);
  }

  else
  {
    v12 = *(a2 + 56) | (*(a2 + 58) << 16);
    v13 = *(a2 + 40);
    v14 = *(a2 + 48);
    outlined copy of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(v13, v14, *(a2 + 56), BYTE2(v12) & 1);
    *(a1 + 40) = v13;
    *(a1 + 48) = v14;
    *(a1 + 56) = v12;
    *(a1 + 58) = BYTE2(v12) & 1;
  }

  if (*(a2 + 82) == 255)
  {
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 79) = *(a2 + 79);
  }

  else
  {
    v15 = *(a2 + 80) | (*(a2 + 82) << 16);
    v16 = *(a2 + 64);
    v17 = *(a2 + 72);
    outlined copy of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(v16, v17, *(a2 + 80), BYTE2(v15) & 1);
    *(a1 + 64) = v16;
    *(a1 + 72) = v17;
    *(a1 + 80) = v15;
    *(a1 + 82) = BYTE2(v15) & 1;
  }

  *(a1 + 84) = *(a2 + 84);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 136) = *(a2 + 136);
  v18 = *(a2 + 232);
  if (v18 == 1)
  {
    memcpy((a1 + 144), (a2 + 144), 0x108uLL);
  }

  else
  {
    if (*(a2 + 162) == 255)
    {
      *(a1 + 144) = *(a2 + 144);
      *(a1 + 159) = *(a2 + 159);
    }

    else
    {
      v19 = *(a2 + 160) | (*(a2 + 162) << 16);
      v20 = *(a2 + 144);
      v21 = *(a2 + 152);
      outlined copy of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(v20, v21, *(a2 + 160), BYTE2(v19) & 1);
      *(a1 + 144) = v20;
      *(a1 + 152) = v21;
      *(a1 + 160) = v19;
      *(a1 + 162) = BYTE2(v19) & 1;
      v18 = *(a2 + 232);
    }

    *(a1 + 163) = *(a2 + 163);
    *(a1 + 168) = *(a2 + 168);
    *(a1 + 176) = *(a2 + 176);
    *(a1 + 177) = *(a2 + 177);
    v22 = (a1 + 184);
    v23 = (a2 + 184);
    if (v18)
    {
      if (*(a2 + 202) == 255)
      {
        *v22 = *v23;
        *(a1 + 199) = *(a2 + 199);
      }

      else
      {
        v27 = *(a2 + 200) | (*(a2 + 202) << 16);
        v28 = *(a2 + 184);
        v29 = *(a2 + 192);
        outlined copy of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(v28, v29, *(a2 + 200), BYTE2(v27) & 1);
        *(a1 + 184) = v28;
        *(a1 + 192) = v29;
        *(a1 + 200) = v27;
        *(a1 + 202) = BYTE2(v27) & 1;
      }

      if (*(a2 + 226) == 255)
      {
        *(a1 + 208) = *(a2 + 208);
        *(a1 + 223) = *(a2 + 223);
      }

      else
      {
        v30 = *(a2 + 224) | (*(a2 + 226) << 16);
        v31 = *(a2 + 208);
        v32 = *(a2 + 216);
        outlined copy of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(v31, v32, *(a2 + 224), BYTE2(v30) & 1);
        *(a1 + 208) = v31;
        *(a1 + 216) = v32;
        *(a1 + 224) = v30;
        *(a1 + 226) = BYTE2(v30) & 1;
      }

      v33 = *(a2 + 240);
      *(a1 + 232) = *(a2 + 232);
      *(a1 + 240) = v33;
      *(a1 + 248) = *(a2 + 248);
      *(a1 + 256) = *(a2 + 256);
      *(a1 + 264) = *(a2 + 264);
      v34 = *(a2 + 280);
      *(a1 + 272) = *(a2 + 272);
      *(a1 + 280) = v34;
      *(a1 + 288) = *(a2 + 288);
    }

    else
    {
      v24 = *(a2 + 264);
      *(a1 + 248) = *(a2 + 248);
      *(a1 + 264) = v24;
      *(a1 + 280) = *(a2 + 280);
      v25 = *(a2 + 200);
      *v22 = *v23;
      *(a1 + 200) = v25;
      v26 = *(a2 + 232);
      *(a1 + 216) = *(a2 + 216);
      *(a1 + 232) = v26;
    }

    v35 = (a1 + 296);
    v36 = (a2 + 296);
    if (*(a2 + 344))
    {
      if (*(a2 + 314) == 255)
      {
        *v35 = *v36;
        *(a1 + 311) = *(a2 + 311);
      }

      else
      {
        v40 = *(a2 + 312) | (*(a2 + 314) << 16);
        v41 = *(a2 + 296);
        v42 = *(a2 + 304);
        outlined copy of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(v41, v42, *(a2 + 312), BYTE2(v40) & 1);
        *(a1 + 296) = v41;
        *(a1 + 304) = v42;
        *(a1 + 312) = v40;
        *(a1 + 314) = BYTE2(v40) & 1;
      }

      if (*(a2 + 338) == 255)
      {
        *(a1 + 320) = *(a2 + 320);
        *(a1 + 335) = *(a2 + 335);
      }

      else
      {
        v43 = *(a2 + 336) | (*(a2 + 338) << 16);
        v44 = *(a2 + 320);
        v45 = *(a2 + 328);
        outlined copy of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(v44, v45, *(a2 + 336), BYTE2(v43) & 1);
        *(a1 + 320) = v44;
        *(a1 + 328) = v45;
        *(a1 + 336) = v43;
        *(a1 + 338) = BYTE2(v43) & 1;
      }

      v46 = *(a2 + 352);
      *(a1 + 344) = *(a2 + 344);
      *(a1 + 352) = v46;
      *(a1 + 360) = *(a2 + 360);
      *(a1 + 368) = *(a2 + 368);
      *(a1 + 376) = *(a2 + 376);
      v47 = *(a2 + 392);
      *(a1 + 384) = *(a2 + 384);
      *(a1 + 392) = v47;
      *(a1 + 400) = *(a2 + 400);
    }

    else
    {
      v37 = *(a2 + 376);
      *(a1 + 360) = *(a2 + 360);
      *(a1 + 376) = v37;
      *(a1 + 392) = *(a2 + 392);
      v38 = *(a2 + 312);
      *v35 = *v36;
      *(a1 + 312) = v38;
      v39 = *(a2 + 344);
      *(a1 + 328) = *(a2 + 328);
      *(a1 + 344) = v39;
    }
  }

  v48 = *(a3 + 52);
  v49 = (a1 + v48);
  v50 = (a2 + v48);
  v51 = type metadata accessor for LinkDestination.Configuration(0);
  v52 = *(v51 - 8);
  if ((*(v52 + 48))(v50, 1, v51))
  {
    type metadata accessor for LinkDestination.Configuration?(0);
    memcpy(v49, v50, *(*(v53 - 8) + 64));
  }

  else
  {
    v54 = type metadata accessor for URL();
    (*(*(v54 - 8) + 16))(v49, v50, v54);
    *(v49 + *(v51 + 20)) = *(v50 + *(v51 + 20));
    (*(v52 + 56))(v49, 0, 1, v51);
  }

  *(a1 + *(a3 + 56)) = *(a2 + *(a3 + 56));

  return a1;
}

uint64_t sub_18D35FA2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

double destroy for CodableAccessibilityAttachmentStorage.VBase(uint64_t a1, uint64_t a2)
{

  if (*(a1 + 34) != 255)
  {
    v4 = *(a1 + 32) | (*(a1 + 34) << 16);
    outlined consume of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(*(a1 + 16), *(a1 + 24), v4, BYTE2(v4) & 1);
  }

  if (*(a1 + 58) != 255)
  {
    v5 = *(a1 + 56) | (*(a1 + 58) << 16);
    outlined consume of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(*(a1 + 40), *(a1 + 48), v5, BYTE2(v5) & 1);
  }

  if (*(a1 + 82) != 255)
  {
    v6 = *(a1 + 80) | (*(a1 + 82) << 16);
    outlined consume of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(*(a1 + 64), *(a1 + 72), v6, BYTE2(v6) & 1);
  }

  v7 = *(a1 + 232);
  if (v7 != 1)
  {
    if (*(a1 + 162) != 255)
    {
      v8 = *(a1 + 160) | (*(a1 + 162) << 16);
      outlined consume of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(*(a1 + 144), *(a1 + 152), v8, BYTE2(v8) & 1);
    }

    if (v7)
    {
      if (*(a1 + 202) != 255)
      {
        v9 = *(a1 + 200) | (*(a1 + 202) << 16);
        outlined consume of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(*(a1 + 184), *(a1 + 192), v9, BYTE2(v9) & 1);
      }

      if (*(a1 + 226) != 255)
      {
        v10 = *(a1 + 224) | (*(a1 + 226) << 16);
        outlined consume of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(*(a1 + 208), *(a1 + 216), v10, BYTE2(v10) & 1);
      }
    }

    if (*(a1 + 344))
    {
      if (*(a1 + 314) != 255)
      {
        v11 = *(a1 + 312) | (*(a1 + 314) << 16);
        outlined consume of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(*(a1 + 296), *(a1 + 304), v11, BYTE2(v11) & 1);
      }

      if (*(a1 + 338) != 255)
      {
        v12 = *(a1 + 336) | (*(a1 + 338) << 16);
        outlined consume of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(*(a1 + 320), *(a1 + 328), v12, BYTE2(v12) & 1);
      }
    }
  }

  v13 = *(a2 + 52);
  v14 = type metadata accessor for LinkDestination.Configuration(0);
  if (!(*(*(v14 - 8) + 48))(a1 + v13, 1, v14))
  {
    v15 = type metadata accessor for URL();
    (*(*(v15 - 8) + 8))(a1 + v13, v15);
  }

  return result;
}

uint64_t initializeWithCopy for CodableAccessibilityAttachmentStorage.V3(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v6;
  v7 = *(a2 + 34);
  v8 = *(a2 + 32);

  if (v7 == 255)
  {
    *(a1 + 16) = *(a2 + 16);
    *(a1 + 31) = *(a2 + 31);
  }

  else
  {
    v9 = v8 & 0xFF00FFFF | (v7 << 16);
    v10 = *(a2 + 16);
    v11 = *(a2 + 24);
    outlined copy of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(v10, v11, v9, BYTE2(v9) & 1);
    *(a1 + 16) = v10;
    *(a1 + 24) = v11;
    *(a1 + 32) = v9;
    *(a1 + 34) = BYTE2(v9) & 1;
  }

  if (*(a2 + 58) == 255)
  {
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 55) = *(a2 + 55);
  }

  else
  {
    v12 = *(a2 + 56) | (*(a2 + 58) << 16);
    v13 = *(a2 + 40);
    v14 = *(a2 + 48);
    outlined copy of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(v13, v14, *(a2 + 56), BYTE2(v12) & 1);
    *(a1 + 40) = v13;
    *(a1 + 48) = v14;
    *(a1 + 56) = v12;
    *(a1 + 58) = BYTE2(v12) & 1;
  }

  if (*(a2 + 82) == 255)
  {
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 79) = *(a2 + 79);
  }

  else
  {
    v15 = *(a2 + 80) | (*(a2 + 82) << 16);
    v16 = *(a2 + 64);
    v17 = *(a2 + 72);
    outlined copy of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(v16, v17, *(a2 + 80), BYTE2(v15) & 1);
    *(a1 + 64) = v16;
    *(a1 + 72) = v17;
    *(a1 + 80) = v15;
    *(a1 + 82) = BYTE2(v15) & 1;
  }

  *(a1 + 84) = *(a2 + 84);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 136) = *(a2 + 136);
  v18 = *(a2 + 232);
  if (v18 == 1)
  {
    memcpy((a1 + 144), (a2 + 144), 0x108uLL);
  }

  else
  {
    if (*(a2 + 162) == 255)
    {
      *(a1 + 144) = *(a2 + 144);
      *(a1 + 159) = *(a2 + 159);
    }

    else
    {
      v19 = *(a2 + 160) | (*(a2 + 162) << 16);
      v20 = *(a2 + 144);
      v21 = *(a2 + 152);
      outlined copy of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(v20, v21, *(a2 + 160), BYTE2(v19) & 1);
      *(a1 + 144) = v20;
      *(a1 + 152) = v21;
      *(a1 + 160) = v19;
      *(a1 + 162) = BYTE2(v19) & 1;
      v18 = *(a2 + 232);
    }

    *(a1 + 163) = *(a2 + 163);
    *(a1 + 168) = *(a2 + 168);
    *(a1 + 176) = *(a2 + 176);
    *(a1 + 177) = *(a2 + 177);
    v22 = (a1 + 184);
    v23 = (a2 + 184);
    if (v18)
    {
      if (*(a2 + 202) == 255)
      {
        *v22 = *v23;
        *(a1 + 199) = *(a2 + 199);
      }

      else
      {
        v27 = *(a2 + 200) | (*(a2 + 202) << 16);
        v28 = *(a2 + 184);
        v29 = *(a2 + 192);
        outlined copy of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(v28, v29, *(a2 + 200), BYTE2(v27) & 1);
        *(a1 + 184) = v28;
        *(a1 + 192) = v29;
        *(a1 + 200) = v27;
        *(a1 + 202) = BYTE2(v27) & 1;
      }

      if (*(a2 + 226) == 255)
      {
        *(a1 + 208) = *(a2 + 208);
        *(a1 + 223) = *(a2 + 223);
      }

      else
      {
        v30 = *(a2 + 224) | (*(a2 + 226) << 16);
        v31 = *(a2 + 208);
        v32 = *(a2 + 216);
        outlined copy of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(v31, v32, *(a2 + 224), BYTE2(v30) & 1);
        *(a1 + 208) = v31;
        *(a1 + 216) = v32;
        *(a1 + 224) = v30;
        *(a1 + 226) = BYTE2(v30) & 1;
      }

      v33 = *(a2 + 240);
      *(a1 + 232) = *(a2 + 232);
      *(a1 + 240) = v33;
      *(a1 + 248) = *(a2 + 248);
      *(a1 + 256) = *(a2 + 256);
      *(a1 + 264) = *(a2 + 264);
      v34 = *(a2 + 280);
      *(a1 + 272) = *(a2 + 272);
      *(a1 + 280) = v34;
      *(a1 + 288) = *(a2 + 288);
    }

    else
    {
      v24 = *(a2 + 264);
      *(a1 + 248) = *(a2 + 248);
      *(a1 + 264) = v24;
      *(a1 + 280) = *(a2 + 280);
      v25 = *(a2 + 200);
      *v22 = *v23;
      *(a1 + 200) = v25;
      v26 = *(a2 + 232);
      *(a1 + 216) = *(a2 + 216);
      *(a1 + 232) = v26;
    }

    v35 = (a1 + 296);
    v36 = (a2 + 296);
    if (*(a2 + 344))
    {
      if (*(a2 + 314) == 255)
      {
        *v35 = *v36;
        *(a1 + 311) = *(a2 + 311);
      }

      else
      {
        v40 = *(a2 + 312) | (*(a2 + 314) << 16);
        v41 = *(a2 + 296);
        v42 = *(a2 + 304);
        outlined copy of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(v41, v42, *(a2 + 312), BYTE2(v40) & 1);
        *(a1 + 296) = v41;
        *(a1 + 304) = v42;
        *(a1 + 312) = v40;
        *(a1 + 314) = BYTE2(v40) & 1;
      }

      if (*(a2 + 338) == 255)
      {
        *(a1 + 320) = *(a2 + 320);
        *(a1 + 335) = *(a2 + 335);
      }

      else
      {
        v43 = *(a2 + 336) | (*(a2 + 338) << 16);
        v44 = *(a2 + 320);
        v45 = *(a2 + 328);
        outlined copy of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(v44, v45, *(a2 + 336), BYTE2(v43) & 1);
        *(a1 + 320) = v44;
        *(a1 + 328) = v45;
        *(a1 + 336) = v43;
        *(a1 + 338) = BYTE2(v43) & 1;
      }

      v46 = *(a2 + 352);
      *(a1 + 344) = *(a2 + 344);
      *(a1 + 352) = v46;
      *(a1 + 360) = *(a2 + 360);
      *(a1 + 368) = *(a2 + 368);
      *(a1 + 376) = *(a2 + 376);
      v47 = *(a2 + 392);
      *(a1 + 384) = *(a2 + 384);
      *(a1 + 392) = v47;
      *(a1 + 400) = *(a2 + 400);
    }

    else
    {
      v37 = *(a2 + 376);
      *(a1 + 360) = *(a2 + 360);
      *(a1 + 376) = v37;
      *(a1 + 392) = *(a2 + 392);
      v38 = *(a2 + 312);
      *v35 = *v36;
      *(a1 + 312) = v38;
      v39 = *(a2 + 344);
      *(a1 + 328) = *(a2 + 328);
      *(a1 + 344) = v39;
    }
  }

  v48 = type metadata accessor for CodableAccessibilityAttachmentStorage.VBase(0);
  v49 = *(v48 + 52);
  v50 = (a1 + v49);
  v51 = (a2 + v49);
  v52 = type metadata accessor for LinkDestination.Configuration(0);
  v53 = *(v52 - 8);
  if ((*(v53 + 48))(v51, 1, v52))
  {
    type metadata accessor for LinkDestination.Configuration?(0);
    memcpy(v50, v51, *(*(v54 - 8) + 64));
  }

  else
  {
    v55 = type metadata accessor for URL();
    (*(*(v55 - 8) + 16))(v50, v51, v55);
    *(v50 + *(v52 + 20)) = *(v51 + *(v52 + 20));
    (*(v53 + 56))(v50, 0, 1, v52);
  }

  *(a1 + *(v48 + 56)) = *(a2 + *(v48 + 56));
  v56 = a3[5];
  v57 = a3[6];
  v58 = a1 + v56;
  v59 = a2 + v56;
  v60 = *(v59 + 8);
  *v58 = *v59;
  *(v58 + 8) = v60;
  v61 = *(v59 + 24);
  *(v58 + 16) = *(v59 + 16);
  *(v58 + 24) = v61;
  *(v58 + 32) = *(v59 + 32);
  *(v58 + 48) = *(v59 + 48);
  v62 = a1 + v57;
  v63 = (a2 + v57);
  v64 = *(a2 + v57 + 48);

  if (v64 != 1)
  {
    v67 = *(v63 + 16);
    if (v67 == 255)
    {
      *v62 = *v63;
      *(v62 + 16) = *(v63 + 8);
      if (v64)
      {
LABEL_40:
        v68 = v63[7];
        *(v62 + 48) = v64;
        *(v62 + 56) = v68;
        (**(v64 - 8))(v62 + 24, (v63 + 3), v64);
        goto LABEL_43;
      }
    }

    else
    {
      v69 = *v63;
      v70 = v63[1];
      v71 = v67 & 1;
      outlined copy of AccessibilityText.Storage(*v63, v70, v67 & 1);
      *v62 = v69;
      *(v62 + 8) = v70;
      *(v62 + 16) = v71;
      *(v62 + 17) = *(v63 + 17);
      v64 = v63[6];
      if (v64)
      {
        goto LABEL_40;
      }
    }

    *(v62 + 24) = *(v63 + 3);
    *(v62 + 40) = *(v63 + 5);
    *(v62 + 56) = v63[7];
    goto LABEL_43;
  }

  v65 = *(v63 + 1);
  *v62 = *v63;
  *(v62 + 16) = v65;
  v66 = *(v63 + 3);
  *(v62 + 32) = *(v63 + 2);
  *(v62 + 48) = v66;
LABEL_43:
  v72 = a3[8];
  *(a1 + a3[7]) = *(a2 + a3[7]);
  v73 = a1 + v72;
  v74 = a2 + v72;
  *v73 = *v74;
  *(v73 + 16) = *(v74 + 16);
  v75 = a3[10];
  *(a1 + a3[9]) = *(a2 + a3[9]);
  *(a1 + v75) = *(a2 + v75);
  v76 = a3[12];
  *(a1 + a3[11]) = *(a2 + a3[11]);
  *(a1 + v76) = *(a2 + v76);
  v77 = a3[13];
  v78 = a3[14];
  v79 = (a1 + v77);
  v80 = (a2 + v77);
  v81 = v80[1];
  *v79 = *v80;
  v79[1] = v81;
  *(a1 + v78) = *(a2 + v78);

  return a1;
}

uint64_t sub_18D360458(uint64_t a1, uint64_t a2)
{
  type metadata accessor for CodableAccessibilityVersionStorage<CodableAccessibilityAttachmentStorage.V2, CodableAccessibilityAttachmentStorage.V3>(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t initializeWithCopy for CodableAccessibilityAttachmentStorage(uint64_t a1, uint64_t a2)
{
  type metadata accessor for CodableAccessibilityVersionStorage<CodableAccessibilityAttachmentStorage.V2, CodableAccessibilityAttachmentStorage.V3>(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v5 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v5;
  v6 = *(a2 + 32) | (*(a2 + 34) << 16);

  if (EnumCaseMultiPayload == 1)
  {
    if (BYTE2(v6) == 255)
    {
      *(a1 + 16) = *(a2 + 16);
      *(a1 + 31) = *(a2 + 31);
    }

    else
    {
      v7 = *(a2 + 16);
      v8 = *(a2 + 24);
      outlined copy of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(v7, v8, v6, BYTE2(v6) & 1);
      *(a1 + 16) = v7;
      *(a1 + 24) = v8;
      *(a1 + 32) = v6;
      *(a1 + 34) = BYTE2(v6) & 1;
    }

    if (*(a2 + 58) == 255)
    {
      *(a1 + 40) = *(a2 + 40);
      *(a1 + 55) = *(a2 + 55);
    }

    else
    {
      v11 = *(a2 + 56) | (*(a2 + 58) << 16);
      v12 = *(a2 + 40);
      v13 = *(a2 + 48);
      outlined copy of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(v12, v13, *(a2 + 56), BYTE2(v11) & 1);
      *(a1 + 40) = v12;
      *(a1 + 48) = v13;
      *(a1 + 56) = v11;
      *(a1 + 58) = BYTE2(v11) & 1;
    }

    if (*(a2 + 82) == 255)
    {
      *(a1 + 64) = *(a2 + 64);
      *(a1 + 79) = *(a2 + 79);
    }

    else
    {
      v17 = *(a2 + 80) | (*(a2 + 82) << 16);
      v18 = *(a2 + 64);
      v19 = *(a2 + 72);
      outlined copy of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(v18, v19, *(a2 + 80), BYTE2(v17) & 1);
      *(a1 + 64) = v18;
      *(a1 + 72) = v19;
      *(a1 + 80) = v17;
      *(a1 + 82) = BYTE2(v17) & 1;
    }

    *(a1 + 84) = *(a2 + 84);
    *(a1 + 96) = *(a2 + 96);
    *(a1 + 112) = *(a2 + 112);
    *(a1 + 120) = *(a2 + 120);
    *(a1 + 128) = *(a2 + 128);
    *(a1 + 136) = *(a2 + 136);
    v20 = *(a2 + 232);
    if (v20 == 1)
    {
      memcpy((a1 + 144), (a2 + 144), 0x108uLL);
    }

    else
    {
      if (*(a2 + 162) == 255)
      {
        *(a1 + 144) = *(a2 + 144);
        *(a1 + 159) = *(a2 + 159);
      }

      else
      {
        v25 = *(a2 + 160) | (*(a2 + 162) << 16);
        v26 = *(a2 + 144);
        v27 = *(a2 + 152);
        outlined copy of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(v26, v27, *(a2 + 160), BYTE2(v25) & 1);
        *(a1 + 144) = v26;
        *(a1 + 152) = v27;
        *(a1 + 160) = v25;
        *(a1 + 162) = BYTE2(v25) & 1;
        v20 = *(a2 + 232);
      }

      *(a1 + 163) = *(a2 + 163);
      *(a1 + 168) = *(a2 + 168);
      *(a1 + 176) = *(a2 + 176);
      *(a1 + 177) = *(a2 + 177);
      v28 = (a1 + 184);
      v29 = (a2 + 184);
      if (v20)
      {
        if (*(a2 + 202) == 255)
        {
          *v28 = *v29;
          *(a1 + 199) = *(a2 + 199);
        }

        else
        {
          v41 = *(a2 + 200) | (*(a2 + 202) << 16);
          v42 = *(a2 + 184);
          v43 = *(a2 + 192);
          outlined copy of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(v42, v43, *(a2 + 200), BYTE2(v41) & 1);
          *(a1 + 184) = v42;
          *(a1 + 192) = v43;
          *(a1 + 200) = v41;
          *(a1 + 202) = BYTE2(v41) & 1;
        }

        if (*(a2 + 226) == 255)
        {
          *(a1 + 208) = *(a2 + 208);
          *(a1 + 223) = *(a2 + 223);
        }

        else
        {
          v47 = *(a2 + 224) | (*(a2 + 226) << 16);
          v48 = *(a2 + 208);
          v49 = *(a2 + 216);
          outlined copy of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(v48, v49, *(a2 + 224), BYTE2(v47) & 1);
          *(a1 + 208) = v48;
          *(a1 + 216) = v49;
          *(a1 + 224) = v47;
          *(a1 + 226) = BYTE2(v47) & 1;
        }

        v50 = *(a2 + 240);
        *(a1 + 232) = *(a2 + 232);
        *(a1 + 240) = v50;
        *(a1 + 248) = *(a2 + 248);
        *(a1 + 256) = *(a2 + 256);
        *(a1 + 264) = *(a2 + 264);
        v51 = *(a2 + 280);
        *(a1 + 272) = *(a2 + 272);
        *(a1 + 280) = v51;
        *(a1 + 288) = *(a2 + 288);
      }

      else
      {
        v35 = *(a2 + 264);
        *(a1 + 248) = *(a2 + 248);
        *(a1 + 264) = v35;
        *(a1 + 280) = *(a2 + 280);
        v36 = *(a2 + 200);
        *v28 = *v29;
        *(a1 + 200) = v36;
        v37 = *(a2 + 232);
        *(a1 + 216) = *(a2 + 216);
        *(a1 + 232) = v37;
      }

      v52 = (a1 + 296);
      v53 = (a2 + 296);
      if (*(a2 + 344))
      {
        if (*(a2 + 314) == 255)
        {
          *v52 = *v53;
          *(a1 + 311) = *(a2 + 311);
        }

        else
        {
          v67 = *(a2 + 312) | (*(a2 + 314) << 16);
          v68 = *(a2 + 296);
          v69 = *(a2 + 304);
          outlined copy of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(v68, v69, *(a2 + 312), BYTE2(v67) & 1);
          *(a1 + 296) = v68;
          *(a1 + 304) = v69;
          *(a1 + 312) = v67;
          *(a1 + 314) = BYTE2(v67) & 1;
        }

        if (*(a2 + 338) == 255)
        {
          *(a1 + 320) = *(a2 + 320);
          *(a1 + 335) = *(a2 + 335);
        }

        else
        {
          v73 = *(a2 + 336) | (*(a2 + 338) << 16);
          v74 = *(a2 + 320);
          v75 = *(a2 + 328);
          outlined copy of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(v74, v75, *(a2 + 336), BYTE2(v73) & 1);
          *(a1 + 320) = v74;
          *(a1 + 328) = v75;
          *(a1 + 336) = v73;
          *(a1 + 338) = BYTE2(v73) & 1;
        }

        v76 = *(a2 + 352);
        *(a1 + 344) = *(a2 + 344);
        *(a1 + 352) = v76;
        *(a1 + 360) = *(a2 + 360);
        *(a1 + 368) = *(a2 + 368);
        *(a1 + 376) = *(a2 + 376);
        v77 = *(a2 + 392);
        *(a1 + 384) = *(a2 + 384);
        *(a1 + 392) = v77;
        *(a1 + 400) = *(a2 + 400);
      }

      else
      {
        v54 = *(a2 + 376);
        *(a1 + 360) = *(a2 + 360);
        *(a1 + 376) = v54;
        *(a1 + 392) = *(a2 + 392);
        v55 = *(a2 + 312);
        *v52 = *v53;
        *(a1 + 312) = v55;
        v56 = *(a2 + 344);
        *(a1 + 328) = *(a2 + 328);
        *(a1 + 344) = v56;
      }
    }

    v78 = type metadata accessor for CodableAccessibilityAttachmentStorage.VBase(0);
    v79 = *(v78 + 52);
    v80 = (a1 + v79);
    v81 = (a2 + v79);
    v82 = type metadata accessor for LinkDestination.Configuration(0);
    v83 = *(v82 - 8);
    if ((*(v83 + 48))(v81, 1, v82))
    {
      type metadata accessor for LinkDestination.Configuration?(0);
      memcpy(v80, v81, *(*(v84 - 8) + 64));
    }

    else
    {
      v85 = type metadata accessor for URL();
      (*(*(v85 - 8) + 16))(v80, v81, v85);
      *(v80 + *(v82 + 20)) = *(v81 + *(v82 + 20));
      (*(v83 + 56))(v80, 0, 1, v82);
    }

    *(a1 + *(v78 + 56)) = *(a2 + *(v78 + 56));
    v86 = type metadata accessor for CodableAccessibilityAttachmentStorage.V3(0);
    v87 = v86[5];
    v88 = a1 + v87;
    v89 = a2 + v87;
    v90 = *(v89 + 8);
    *v88 = *v89;
    *(v88 + 8) = v90;
    v91 = *(v89 + 24);
    *(v88 + 16) = *(v89 + 16);
    *(v88 + 24) = v91;
    *(v88 + 48) = *(v89 + 48);
    *(v88 + 32) = *(v89 + 32);
    v92 = v86[6];
    v93 = a1 + v92;
    v94 = (a2 + v92);
    v95 = *(a2 + v92 + 48);

    if (v95 == 1)
    {
      v96 = *(v94 + 1);
      *v93 = *v94;
      *(v93 + 16) = v96;
      v97 = *(v94 + 3);
      *(v93 + 32) = *(v94 + 2);
      *(v93 + 48) = v97;
LABEL_74:
      *(a1 + v86[7]) = *(a2 + v86[7]);
      v103 = v86[8];
      v104 = a1 + v103;
      v105 = a2 + v103;
      *v104 = *v105;
      *(v104 + 16) = *(v105 + 16);
      *(a1 + v86[9]) = *(a2 + v86[9]);
      *(a1 + v86[10]) = *(a2 + v86[10]);
      *(a1 + v86[11]) = *(a2 + v86[11]);
      *(a1 + v86[12]) = *(a2 + v86[12]);
      v106 = v86[13];
      v107 = (a1 + v106);
      v108 = (a2 + v106);
      v109 = v108[1];
      *v107 = *v108;
      v107[1] = v109;
      *(a1 + v86[14]) = *(a2 + v86[14]);

      goto LABEL_81;
    }

    v98 = *(v94 + 16);
    if (v98 == 255)
    {
      *v93 = *v94;
      *(v93 + 16) = *(v94 + 8);
      if (v95)
      {
LABEL_71:
        v99 = v94[7];
        *(v93 + 48) = v95;
        *(v93 + 56) = v99;
        (**(v95 - 8))(v93 + 24, (v94 + 3), v95);
        goto LABEL_74;
      }
    }

    else
    {
      v100 = *v94;
      v101 = v94[1];
      v102 = v98 & 1;
      outlined copy of AccessibilityText.Storage(*v94, v101, v98 & 1);
      *v93 = v100;
      *(v93 + 8) = v101;
      *(v93 + 16) = v102;
      *(v93 + 17) = *(v94 + 17);
      v95 = v94[6];
      if (v95)
      {
        goto LABEL_71;
      }
    }

    *(v93 + 24) = *(v94 + 3);
    *(v93 + 40) = *(v94 + 5);
    *(v93 + 56) = v94[7];
    goto LABEL_74;
  }

  if (BYTE2(v6) == 255)
  {
    *(a1 + 16) = *(a2 + 16);
    *(a1 + 31) = *(a2 + 31);
  }

  else
  {
    v9 = *(a2 + 16);
    v10 = *(a2 + 24);
    outlined copy of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(v9, v10, v6, BYTE2(v6) & 1);
    *(a1 + 16) = v9;
    *(a1 + 24) = v10;
    *(a1 + 32) = v6;
    *(a1 + 34) = BYTE2(v6) & 1;
  }

  if (*(a2 + 58) == 255)
  {
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 55) = *(a2 + 55);
  }

  else
  {
    v14 = *(a2 + 56) | (*(a2 + 58) << 16);
    v15 = *(a2 + 40);
    v16 = *(a2 + 48);
    outlined copy of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(v15, v16, *(a2 + 56), BYTE2(v14) & 1);
    *(a1 + 40) = v15;
    *(a1 + 48) = v16;
    *(a1 + 56) = v14;
    *(a1 + 58) = BYTE2(v14) & 1;
  }

  if (*(a2 + 82) == 255)
  {
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 79) = *(a2 + 79);
  }

  else
  {
    v21 = *(a2 + 80) | (*(a2 + 82) << 16);
    v22 = *(a2 + 64);
    v23 = *(a2 + 72);
    outlined copy of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(v22, v23, *(a2 + 80), BYTE2(v21) & 1);
    *(a1 + 64) = v22;
    *(a1 + 72) = v23;
    *(a1 + 80) = v21;
    *(a1 + 82) = BYTE2(v21) & 1;
  }

  *(a1 + 84) = *(a2 + 84);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 136) = *(a2 + 136);
  v24 = *(a2 + 232);
  if (v24 == 1)
  {
    memcpy((a1 + 144), (a2 + 144), 0x108uLL);
  }

  else
  {
    if (*(a2 + 162) == 255)
    {
      *(a1 + 144) = *(a2 + 144);
      *(a1 + 159) = *(a2 + 159);
    }

    else
    {
      v30 = *(a2 + 160) | (*(a2 + 162) << 16);
      v31 = *(a2 + 144);
      v32 = *(a2 + 152);
      outlined copy of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(v31, v32, *(a2 + 160), BYTE2(v30) & 1);
      *(a1 + 144) = v31;
      *(a1 + 152) = v32;
      *(a1 + 160) = v30;
      *(a1 + 162) = BYTE2(v30) & 1;
      v24 = *(a2 + 232);
    }

    *(a1 + 163) = *(a2 + 163);
    *(a1 + 168) = *(a2 + 168);
    *(a1 + 176) = *(a2 + 176);
    *(a1 + 177) = *(a2 + 177);
    v33 = (a1 + 184);
    v34 = (a2 + 184);
    if (v24)
    {
      if (*(a2 + 202) == 255)
      {
        *v33 = *v34;
        *(a1 + 199) = *(a2 + 199);
      }

      else
      {
        v44 = *(a2 + 200) | (*(a2 + 202) << 16);
        v45 = *(a2 + 184);
        v46 = *(a2 + 192);
        outlined copy of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(v45, v46, *(a2 + 200), BYTE2(v44) & 1);
        *(a1 + 184) = v45;
        *(a1 + 192) = v46;
        *(a1 + 200) = v44;
        *(a1 + 202) = BYTE2(v44) & 1;
      }

      if (*(a2 + 226) == 255)
      {
        *(a1 + 208) = *(a2 + 208);
        *(a1 + 223) = *(a2 + 223);
      }

      else
      {
        v57 = *(a2 + 224) | (*(a2 + 226) << 16);
        v58 = *(a2 + 208);
        v59 = *(a2 + 216);
        outlined copy of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(v58, v59, *(a2 + 224), BYTE2(v57) & 1);
        *(a1 + 208) = v58;
        *(a1 + 216) = v59;
        *(a1 + 224) = v57;
        *(a1 + 226) = BYTE2(v57) & 1;
      }

      v60 = *(a2 + 240);
      *(a1 + 232) = *(a2 + 232);
      *(a1 + 240) = v60;
      *(a1 + 248) = *(a2 + 248);
      *(a1 + 256) = *(a2 + 256);
      *(a1 + 264) = *(a2 + 264);
      v61 = *(a2 + 280);
      *(a1 + 272) = *(a2 + 272);
      *(a1 + 280) = v61;
      *(a1 + 288) = *(a2 + 288);
    }

    else
    {
      v38 = *(a2 + 264);
      *(a1 + 248) = *(a2 + 248);
      *(a1 + 264) = v38;
      *(a1 + 280) = *(a2 + 280);
      v39 = *(a2 + 200);
      *v33 = *v34;
      *(a1 + 200) = v39;
      v40 = *(a2 + 232);
      *(a1 + 216) = *(a2 + 216);
      *(a1 + 232) = v40;
    }

    v62 = (a1 + 296);
    v63 = (a2 + 296);
    if (*(a2 + 344))
    {
      if (*(a2 + 314) == 255)
      {
        *v62 = *v63;
        *(a1 + 311) = *(a2 + 311);
      }

      else
      {
        v70 = *(a2 + 312) | (*(a2 + 314) << 16);
        v71 = *(a2 + 296);
        v72 = *(a2 + 304);
        outlined copy of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(v71, v72, *(a2 + 312), BYTE2(v70) & 1);
        *(a1 + 296) = v71;
        *(a1 + 304) = v72;
        *(a1 + 312) = v70;
        *(a1 + 314) = BYTE2(v70) & 1;
      }

      if (*(a2 + 338) == 255)
      {
        *(a1 + 320) = *(a2 + 320);
        *(a1 + 335) = *(a2 + 335);
      }

      else
      {
        v110 = *(a2 + 336) | (*(a2 + 338) << 16);
        v111 = *(a2 + 320);
        v112 = *(a2 + 328);
        outlined copy of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(v111, v112, *(a2 + 336), BYTE2(v110) & 1);
        *(a1 + 320) = v111;
        *(a1 + 328) = v112;
        *(a1 + 336) = v110;
        *(a1 + 338) = BYTE2(v110) & 1;
      }

      v113 = *(a2 + 352);
      *(a1 + 344) = *(a2 + 344);
      *(a1 + 352) = v113;
      *(a1 + 360) = *(a2 + 360);
      *(a1 + 368) = *(a2 + 368);
      *(a1 + 376) = *(a2 + 376);
      v114 = *(a2 + 392);
      *(a1 + 384) = *(a2 + 384);
      *(a1 + 392) = v114;
      *(a1 + 400) = *(a2 + 400);
    }

    else
    {
      v64 = *(a2 + 376);
      *(a1 + 360) = *(a2 + 360);
      *(a1 + 376) = v64;
      *(a1 + 392) = *(a2 + 392);
      v65 = *(a2 + 312);
      *v62 = *v63;
      *(a1 + 312) = v65;
      v66 = *(a2 + 344);
      *(a1 + 328) = *(a2 + 328);
      *(a1 + 344) = v66;
    }
  }

  v115 = type metadata accessor for CodableAccessibilityAttachmentStorage.VBase(0);
  v116 = *(v115 + 52);
  v117 = (a1 + v116);
  v118 = (a2 + v116);
  v119 = type metadata accessor for LinkDestination.Configuration(0);
  v120 = *(v119 - 8);
  if ((*(v120 + 48))(v118, 1, v119))
  {
    type metadata accessor for LinkDestination.Configuration?(0);
    memcpy(v117, v118, *(*(v121 - 8) + 64));
  }

  else
  {
    v122 = type metadata accessor for URL();
    (*(*(v122 - 8) + 16))(v117, v118, v122);
    *(v117 + *(v119 + 20)) = *(v118 + *(v119 + 20));
    (*(v120 + 56))(v117, 0, 1, v119);
  }

  *(a1 + *(v115 + 56)) = *(a2 + *(v115 + 56));
  v123 = type metadata accessor for CodableAccessibilityAttachmentStorage.V2(0);
  *(a1 + *(v123 + 20)) = *(a2 + *(v123 + 20));

LABEL_81:
  swift_storeEnumTagMultiPayload();
  return a1;
}

double destroy for CodableAccessibilityAttachmentStorage(uint64_t a1)
{
  type metadata accessor for CodableAccessibilityVersionStorage<CodableAccessibilityAttachmentStorage.V2, CodableAccessibilityAttachmentStorage.V3>(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  v3 = *(a1 + 32) | (*(a1 + 34) << 16);
  if (EnumCaseMultiPayload == 1)
  {
    if (*(a1 + 34) != 255)
    {
      outlined consume of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(*(a1 + 16), *(a1 + 24), v3, BYTE2(v3) & 1);
    }

    if (*(a1 + 58) != 255)
    {
      v4 = *(a1 + 56) | (*(a1 + 58) << 16);
      outlined consume of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(*(a1 + 40), *(a1 + 48), v4, BYTE2(v4) & 1);
    }

    if (*(a1 + 82) != 255)
    {
      v5 = *(a1 + 80) | (*(a1 + 82) << 16);
      outlined consume of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(*(a1 + 64), *(a1 + 72), v5, BYTE2(v5) & 1);
    }

    v6 = *(a1 + 232);
    if (v6 != 1)
    {
      if (*(a1 + 162) != 255)
      {
        v7 = *(a1 + 160) | (*(a1 + 162) << 16);
        outlined consume of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(*(a1 + 144), *(a1 + 152), v7, BYTE2(v7) & 1);
        v6 = *(a1 + 232);
      }

      if (v6)
      {
        if (*(a1 + 202) != 255)
        {
          v8 = *(a1 + 200) | (*(a1 + 202) << 16);
          outlined consume of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(*(a1 + 184), *(a1 + 192), v8, BYTE2(v8) & 1);
        }

        if (*(a1 + 226) != 255)
        {
          v9 = *(a1 + 224) | (*(a1 + 226) << 16);
          outlined consume of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(*(a1 + 208), *(a1 + 216), v9, BYTE2(v9) & 1);
        }
      }

      if (*(a1 + 344))
      {
        if (*(a1 + 314) != 255)
        {
          v10 = *(a1 + 312) | (*(a1 + 314) << 16);
          outlined consume of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(*(a1 + 296), *(a1 + 304), v10, BYTE2(v10) & 1);
        }

        if (*(a1 + 338) != 255)
        {
          v11 = *(a1 + 336) | (*(a1 + 338) << 16);
          outlined consume of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(*(a1 + 320), *(a1 + 328), v11, BYTE2(v11) & 1);
        }
      }
    }

    v12 = *(type metadata accessor for CodableAccessibilityAttachmentStorage.VBase(0) + 52);
    v13 = type metadata accessor for LinkDestination.Configuration(0);
    if (!(*(*(v13 - 8) + 48))(a1 + v12, 1, v13))
    {
      v14 = type metadata accessor for URL();
      (*(*(v14 - 8) + 8))(a1 + v12, v14);
    }

    v15 = type metadata accessor for CodableAccessibilityAttachmentStorage.V3(0);

    v16 = a1 + *(v15 + 24);
    v17 = *(v16 + 48);
    if (v17 != 1)
    {
      v18 = *(v16 + 16);
      if (v18 != 255)
      {
        outlined consume of AccessibilityText.Storage(*v16, *(v16 + 8), v18 & 1);
        v17 = *(v16 + 48);
      }

      if (v17)
      {
        __swift_destroy_boxed_opaque_existential_1((v16 + 24));
      }
    }
  }

  else
  {
    if (*(a1 + 34) != 255)
    {
      outlined consume of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(*(a1 + 16), *(a1 + 24), v3, BYTE2(v3) & 1);
    }

    if (*(a1 + 58) != 255)
    {
      v20 = *(a1 + 56) | (*(a1 + 58) << 16);
      outlined consume of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(*(a1 + 40), *(a1 + 48), v20, BYTE2(v20) & 1);
    }

    if (*(a1 + 82) != 255)
    {
      v21 = *(a1 + 80) | (*(a1 + 82) << 16);
      outlined consume of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(*(a1 + 64), *(a1 + 72), v21, BYTE2(v21) & 1);
    }

    v22 = *(a1 + 232);
    if (v22 != 1)
    {
      if (*(a1 + 162) != 255)
      {
        v23 = *(a1 + 160) | (*(a1 + 162) << 16);
        outlined consume of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(*(a1 + 144), *(a1 + 152), v23, BYTE2(v23) & 1);
        v22 = *(a1 + 232);
      }

      if (v22)
      {
        if (*(a1 + 202) != 255)
        {
          v24 = *(a1 + 200) | (*(a1 + 202) << 16);
          outlined consume of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(*(a1 + 184), *(a1 + 192), v24, BYTE2(v24) & 1);
        }

        if (*(a1 + 226) != 255)
        {
          v25 = *(a1 + 224) | (*(a1 + 226) << 16);
          outlined consume of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(*(a1 + 208), *(a1 + 216), v25, BYTE2(v25) & 1);
        }
      }

      if (*(a1 + 344))
      {
        if (*(a1 + 314) != 255)
        {
          v26 = *(a1 + 312) | (*(a1 + 314) << 16);
          outlined consume of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(*(a1 + 296), *(a1 + 304), v26, BYTE2(v26) & 1);
        }

        if (*(a1 + 338) != 255)
        {
          v27 = *(a1 + 336) | (*(a1 + 338) << 16);
          outlined consume of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(*(a1 + 320), *(a1 + 328), v27, BYTE2(v27) & 1);
        }
      }
    }

    v28 = *(type metadata accessor for CodableAccessibilityAttachmentStorage.VBase(0) + 52);
    v29 = type metadata accessor for LinkDestination.Configuration(0);
    if (!(*(*(v29 - 8) + 48))(a1 + v28, 1, v29))
    {
      v30 = type metadata accessor for URL();
      (*(*(v30 - 8) + 8))(a1 + v28, v30);
    }

    type metadata accessor for CodableAccessibilityAttachmentStorage.V2(0);
  }

  return result;
}

uint64_t outlined init with take of AccessibilityNodeAttachment(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccessibilityNodeAttachment(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

Swift::Double __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ProtobufDecoder.doubleField(_:)(SwiftUI::ProtobufFormat::Field a1)
{
  v3 = *a1.rawValue;
  v4 = *a1.rawValue & 7;
  switch(v4)
  {
    case 5:
      v9 = v1[1];
      if (v1[2] >= (v9 + 1))
      {
        v10 = *v9;
        v1[1] = v9 + 1;
        return v10;
      }

      break;
    case 2:
      v8 = ProtobufDecoder.decodeVarint()(a1.rawValue);
      if (v2)
      {
        return result;
      }

      if (v8 < 0)
      {
        __break(1u);
        return result;
      }

      v5 = v1[1];
      v6 = v1[2];
      if (v6 >= v5 + v8)
      {
        v1[3] = v3 & 0xFFFFFFFFFFFFFFF8 | 1;
        v1[4] = v5 + v8;
LABEL_5:
        if (v6 >= (v5 + 1))
        {
          result = *v5;
          v1[1] = v5 + 1;
          return result;
        }
      }

      break;
    case 1:
      v5 = v1[1];
      v6 = v1[2];
      goto LABEL_5;
  }

  lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
  swift_allocError();
  swift_willThrow();
  return result;
}

uint64_t ResolvedStyledText.needsDynamicRenderingInArchive.getter()
{
  v1 = *(v0 + 216);
  if (v1 && [*(v0 + 216) length] >= 1)
  {
    if (one-time initialization token for updateSchedule != -1)
    {
      swift_once();
    }

    v2 = static NSAttributedStringKey.updateSchedule;
    [v1 length];
    if ([v1 attribute:v2 atIndex:0 effectiveRange:0])
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      outlined destroy of Any?(v5);
      v3 = 1;
      return v3 & 1;
    }

    memset(v5, 0, sizeof(v5));
    outlined destroy of Any?(v5);
  }

  swift_beginAccess();
  if ((*(v0 + 160) & 2) != 0 && ResolvedStyledText.largerSizeVariant.getter(&largerSizeVariantKey))
  {
    v3 = ResolvedStyledText.needsDynamicRenderingInArchive.getter();
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

uint64_t ArchivedViewCore.Metadata.archiveID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArchivedViewCore.Metadata(0) + 36);
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_18D361C4C()
{
  if (MEMORY[0x1E69E7D58])
  {
    type metadata accessor for NamedImage.VectorInfo?(0, &lazy cache variable for type metadata for Mutex<NamedImage.Cache.Data>, &unk_1F0082C48, MEMORY[0x1E69E8300]);
  }
}

uint64_t _s7SwiftUI27StatefulMaterialProviderBox33_4075E3A4E56336DD739D990E781CBB12LLC8resolved2in0E0QzAA17EnvironmentValuesV_tFyAD5CacheVyx_GSgzYuYTXEfU0_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v13 = &v19 - v12;
  v15 = type metadata accessor for StatefulMaterialProviderBox.Cache(255, a5, a6, v14);
  v16 = type metadata accessor for Optional();
  (*(*(v16 - 8) + 8))(a1, v16);
  (*(v11 + 16))(v13, a2, AssociatedTypeWitness);

  v17 = StatefulMaterialProviderBox.Cache.init(resolved:plist:)(v13, a5, a6, a1);
  return (*(*(v15 - 8) + 56))(a1, 0, 1, v15, v17);
}

uint64_t StatefulMaterialProviderBox.resolveLayers(in:)@<X0>(__int128 *a1@<X0>, uint64_t *a2@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v7 = v13 - v6;
  v8 = a1[1];
  v16 = *a1;
  v17 = v8;
  v9 = a1[3];
  v18 = a1[2];
  v19[0] = v9;
  *(v19 + 9) = *(a1 + 57);
  v15 = v16;
  outlined init with copy of Material.Context(&v16, v13);
  StatefulMaterialProviderBox.resolved(in:)(&v15, v7);

  v13[2] = v18;
  v14[0] = v19[0];
  *(v14 + 9) = *(v19 + 9);
  v13[1] = v17;
  v13[0] = v16;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v11 = (*(AssociatedConformanceWitness + 16))(v13, AssociatedTypeWitness, AssociatedConformanceWitness);
  result = (*(v5 + 8))(v7, AssociatedTypeWitness);
  *a2 = v11;
  return result;
}

uint64_t StatefulMaterialProviderBox.resolved(in:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v36 = a2;
  v5 = *v2;
  v6 = *(*v2 + 208);
  v7 = *(*v2 + 200);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v34 = &v25 - v10;
  v11 = swift_getAssociatedTypeWitness();
  v32 = *(v11 - 8);
  v33 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v31 = &v25 - v12;
  v13 = type metadata accessor for Optional();
  v26 = *(v13 - 8);
  v27 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v25 - v14;
  v17 = *a1;
  v16 = a1[1];
  v18 = (v3 + *(v5 + 224));
  os_unfair_lock_lock(v18);
  type metadata accessor for StatefulMaterialProviderBox.Cache(255, v7, v6, v19);
  type metadata accessor for Optional();
  v28 = *(type metadata accessor for Mutex() + 28);
  v29 = v16;
  v30 = v17;
  _s7SwiftUI27StatefulMaterialProviderBox33_4075E3A4E56336DD739D990E781CBB12LLC8resolved2in0E0QzAA17EnvironmentValuesV_tFAHSgAD5CacheVyx_GSgzYuYTXEfU_(v18 + v28, v17, v7, v6, v15);
  v25 = 0;
  os_unfair_lock_unlock(v18);
  v35 = v9;
  v20 = *(v9 + 48);
  v37 = AssociatedTypeWitness;
  if (v20(v15, 1, AssociatedTypeWitness) == 1)
  {
    (*(v26 + 8))(v15, v27);
    v21 = v31;
    (*(v6 + 48))(v7, v6);
    v39 = 0;
    v40 = 1;
    v41 = 0;
    v42 = 0;
    v22 = v29;
    v23 = v30;
    v38[0] = v30;
    v38[1] = v29;
    v27 = *(v6 + 56);

    v27(v21, v38, v7, v6);
    v15 = v34;
    (*(v6 + 64))(v21, v7, v6);
    os_unfair_lock_lock(v18);
    _s7SwiftUI27StatefulMaterialProviderBox33_4075E3A4E56336DD739D990E781CBB12LLC8resolved2in0E0QzAA17EnvironmentValuesV_tFyAD5CacheVyx_GSgzYuYTXEfU0_(v18 + v28, v15, v23, v22, v7, v6);
    os_unfair_lock_unlock(v18);

    (*(v32 + 8))(v21, v33);
  }

  return (*(v35 + 32))(v36, v15, v37);
}

uint64_t _s7SwiftUI27StatefulMaterialProviderBox33_4075E3A4E56336DD739D990E781CBB12LLC8resolved2in0E0QzAA17EnvironmentValuesV_tFAHSgAD5CacheVyx_GSgzYuYTXEfU_@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v23 = a2;
  v24 = a5;
  v6 = type metadata accessor for StatefulMaterialProviderBox.Cache(255, a3, a4, a3);
  v7 = type metadata accessor for Optional();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v23 - v9;
  v11 = *(v6 - 8);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v23 - v14;
  (*(v8 + 16))(v10, a1, v7, v13);
  if ((*(v11 + 48))(v10, 1, v6) == 1)
  {
    (*(v8 + 8))(v10, v7);
  }

  else
  {
    (*(v11 + 32))(v15, v10, v6);
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v17 = Strong;

      if (v17 == v23)
      {
        AssociatedTypeWitness = swift_getAssociatedTypeWitness();
        v21 = *(AssociatedTypeWitness - 8);
        v22 = v24;
        (*(v21 + 16))(v24, v15, AssociatedTypeWitness);
        (*(v11 + 8))(v15, v6);
        return (*(v21 + 56))(v22, 0, 1, AssociatedTypeWitness);
      }
    }

    (*(v11 + 8))(v15, v6);
  }

  v18 = swift_getAssociatedTypeWitness();
  return (*(*(v18 - 8) + 56))(v24, 1, 1, v18);
}

double static ViewDecoders.registerDecodableFactoryType<A, B>(_:forType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = _typeName(_:qualified:)();
  static ViewDecoders.registerDecodableFactoryType<A>(_:forID:)(a1, v9, v10, v11, a5, a6);

  return result;
}

unint64_t type metadata accessor for Decodable & AnyViewFactory.Type()
{
  result = lazy cache variable for type metadata for Decodable & AnyViewFactory.Type;
  if (!lazy cache variable for type metadata for Decodable & AnyViewFactory.Type)
  {
    type metadata accessor for Decodable & AnyViewFactory();
    result = swift_getExistentialMetatypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for Decodable & AnyViewFactory.Type);
  }

  return result;
}

unint64_t type metadata accessor for Decodable & AnyViewFactory()
{
  result = lazy cache variable for type metadata for Decodable & AnyViewFactory;
  if (!lazy cache variable for type metadata for Decodable & AnyViewFactory)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for Decodable & AnyViewFactory);
  }

  return result;
}

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  a7[(result >> 6) + 8] |= 1 << result;
  v7 = (a7[6] + 16 * result);
  *v7 = a2;
  v7[1] = a3;
  v8 = (a7[7] + 24 * result);
  *v8 = a4;
  v8[1] = a5;
  v8[2] = a6;
  v9 = a7[2];
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    a7[2] = v11;
  }

  return result;
}

uint64_t _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA018DefaultPixelLengthI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(void *a1)
{
  v3 = *(v1 + 16);

  os_unfair_lock_lock((v3 + 16));
  v4 = *(v3 + 24);
  if (a1)
  {
    if (v4 == a1[8])
    {
LABEL_3:
      type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<DefaultPixelLengthKey>, &type metadata for DefaultPixelLengthKey, &protocol witness table for DefaultPixelLengthKey, type metadata accessor for EnvironmentPropertyKey);
      v6 = v5;
      v7 = *(v3 + 32);
      if (*(v7 + 16) && (v8 = specialized __RawDictionaryStorage.find<A>(_:)(v5), (v9 & 1) != 0))
      {
        outlined init with copy of AnyTrackedValue(*(v7 + 56) + 40 * v8, v21);
        outlined init with take of AnyTrackedValue(v21, &v22);
        v10 = v25;
        __swift_project_boxed_opaque_existential_1(&v22, v24);
        v11 = v10[1];
        type metadata accessor for [LayoutDirection](0, &lazy cache variable for type metadata for CGFloat?, MEMORY[0x1E69E7DE0], MEMORY[0x1E69E6720]);
        v11(v21);
        __swift_destroy_boxed_opaque_existential_1(&v22);
      }

      else
      {
        v15 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA018DefaultPixelLengthS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(a1);
        if (v15)
        {
          v16 = v15[9];
          v17 = *(v15 + 80);
        }

        else
        {
          v16 = 0;
          v17 = 1;
        }

        *&v21[0] = v16;
        BYTE8(v21[0]) = v17;
        type metadata accessor for TrackedValue<EnvironmentPropertyKey<DefaultPixelLengthKey>>(0);
        v24 = v18;
        v25 = &protocol witness table for TrackedValue<A>;
        v22 = v16;
        v23 = v17;
        specialized Dictionary.subscript.setter(&v22, v6);
      }

      goto LABEL_15;
    }
  }

  else if (!v4)
  {
    goto LABEL_3;
  }

  v12 = 1;
  *(v3 + 56) = 1;
  v13 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA018DefaultPixelLengthS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(a1);
  if (v13)
  {
    v14 = v13[9];
    v12 = *(v13 + 80);
  }

  else
  {
    v14 = 0;
  }

  *&v21[0] = v14;
  BYTE8(v21[0]) = v12;
LABEL_15:
  v19 = *&v21[0];
  os_unfair_lock_unlock((v3 + 16));

  return v19;
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<DefaultPixelLengthKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<DefaultPixelLengthKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<DefaultPixelLengthKey>, &type metadata for DefaultPixelLengthKey, &protocol witness table for DefaultPixelLengthKey, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<DefaultPixelLengthKey> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TrackedValue(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<DefaultPixelLengthKey>>);
    }
  }
}

uint64_t _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA06WindowJ4KeysO13AppearsActiveVG_Tt1g5(uint64_t a1)
{
  v3 = *(v1 + 16);

  os_unfair_lock_lock((v3 + 16));
  v4 = *(v3 + 24);
  if (!a1)
  {
    if (!v4)
    {
      goto LABEL_3;
    }

LABEL_7:
    *(v3 + 56) = 1;
    LOBYTE(v14[0]) = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA06WindowG4KeysO13AppearsActiveVG_Tt2g5(a1) & 1;
    goto LABEL_9;
  }

  if (v4 != *(a1 + 64))
  {
    goto LABEL_7;
  }

LABEL_3:
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<WindowEnvironmentKeys.AppearsActive>, &type metadata for WindowEnvironmentKeys.AppearsActive, &protocol witness table for WindowEnvironmentKeys.AppearsActive, type metadata accessor for EnvironmentPropertyKey);
  v6 = v5;
  v7 = *(v3 + 32);
  if (*(v7 + 16) && (v8 = specialized __RawDictionaryStorage.find<A>(_:)(v5), (v9 & 1) != 0))
  {
    outlined init with copy of AnyTrackedValue(*(v7 + 56) + 40 * v8, v14);
    outlined init with take of AnyTrackedValue(v14, v15);
    v10 = v16;
    v11 = v17;
    __swift_project_boxed_opaque_existential_1(v15, v16);
    (v11[1])(v14, MEMORY[0x1E69E6370], v10, v11);
    __swift_destroy_boxed_opaque_existential_1(v15);
  }

  else
  {
    LOBYTE(v14[0]) = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA06WindowG4KeysO13AppearsActiveVG_Tt2g5(a1) & 1;
    type metadata accessor for TrackedValue<EnvironmentPropertyKey<WindowEnvironmentKeys.AppearsActive>>(0);
    v16 = v12;
    v17 = &protocol witness table for TrackedValue<A>;
    LOBYTE(v15[0]) = v14[0];
    specialized Dictionary.subscript.setter(v15, v6);
  }

LABEL_9:
  os_unfair_lock_unlock((v3 + 16));

  return LOBYTE(v14[0]);
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<WindowEnvironmentKeys.AppearsActive>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<WindowEnvironmentKeys.AppearsActive>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<WindowEnvironmentKeys.AppearsActive>, &type metadata for WindowEnvironmentKeys.AppearsActive, &protocol witness table for WindowEnvironmentKeys.AppearsActive, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<WindowEnvironmentKeys.AppearsActive> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TrackedValue(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<WindowEnvironmentKeys.AppearsActive>>);
    }
  }
}

uint64_t _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA025AccessibilityReduceMotionI033_1E80A5D8CD82563C298D64AC1337E839LLVG_Tt1g5(uint64_t a1)
{
  v3 = *(v1 + 16);

  os_unfair_lock_lock((v3 + 16));
  v4 = *(v3 + 24);
  if (!a1)
  {
    if (!v4)
    {
      goto LABEL_3;
    }

LABEL_7:
    *(v3 + 56) = 1;
    LOBYTE(v14[0]) = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA025AccessibilityReduceMotionF033_1E80A5D8CD82563C298D64AC1337E839LLVG_Tt2g5(a1);
    goto LABEL_9;
  }

  if (v4 != *(a1 + 64))
  {
    goto LABEL_7;
  }

LABEL_3:
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<AccessibilityReduceMotionKey>, &type metadata for AccessibilityReduceMotionKey, &protocol witness table for AccessibilityReduceMotionKey, type metadata accessor for EnvironmentPropertyKey);
  v6 = v5;
  v7 = *(v3 + 32);
  if (*(v7 + 16) && (v8 = specialized __RawDictionaryStorage.find<A>(_:)(v5), (v9 & 1) != 0))
  {
    outlined init with copy of AnyTrackedValue(*(v7 + 56) + 40 * v8, v14);
    outlined init with take of AnyTrackedValue(v14, v15);
    v10 = v17;
    __swift_project_boxed_opaque_existential_1(v15, v16);
    v11 = v10[1];
    type metadata accessor for [LayoutDirection](0, &lazy cache variable for type metadata for Bool?, MEMORY[0x1E69E6370], MEMORY[0x1E69E6720]);
    v11(v14);
    __swift_destroy_boxed_opaque_existential_1(v15);
  }

  else
  {
    LOBYTE(v14[0]) = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA025AccessibilityReduceMotionF033_1E80A5D8CD82563C298D64AC1337E839LLVG_Tt2g5(a1);
    type metadata accessor for TrackedValue<EnvironmentPropertyKey<AccessibilityReduceMotionKey>>(0);
    v16 = v12;
    v17 = &protocol witness table for TrackedValue<A>;
    LOBYTE(v15[0]) = v14[0];
    specialized Dictionary.subscript.setter(v15, v6);
  }

LABEL_9:
  os_unfair_lock_unlock((v3 + 16));

  return LOBYTE(v14[0]);
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<AccessibilityReduceMotionKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<AccessibilityReduceMotionKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<AccessibilityReduceMotionKey>, &type metadata for AccessibilityReduceMotionKey, &protocol witness table for AccessibilityReduceMotionKey, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<AccessibilityReduceMotionKey> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TrackedValue(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<AccessibilityReduceMotionKey>>);
    }
  }
}

void AtomicBox.wrappedValue.getter(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = *(a1 + 16);
  v6 = *(v5 - 8);
  v7 = (*(v6 + 80) + 20) & ~*(v6 + 80);
  os_unfair_lock_lock(v4 + 4);
  (*(v6 + 16))(a2, v4 + v7, v5);

  os_unfair_lock_unlock(v4 + 4);
}

void closure #1 in DisplayList.ViewRasterizer.drawingContent(list:time:)(CGFloat *a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, double a7, double a8, double a9)
{
  v42 = a6;
  v10 = a4;
  v46 = a1;
  v14 = HIDWORD(a4);
  v15 = type metadata accessor for DispatchWorkItemFlags();
  v45 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DispatchQoS();
  v43 = *(v18 - 8);
  v44 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  value = printTree.value;
  if (printTree.value != 2)
  {
    swift_endAccess();
    if (!value)
    {
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  v22 = getenv("SWIFTUI_PRINT_TREE");
  if (!v22)
  {
    printTree.value = 0;
    swift_endAccess();
    goto LABEL_8;
  }

  v23 = atoi(v22);
  printTree.value = v23 != 0;
  swift_endAccess();
  if (v23)
  {
LABEL_6:
    type metadata accessor for _ContiguousArrayStorage<Any>();
    v24 = swift_allocObject();
    v41 = v15;
    v25 = v24;
    *(v24 + 16) = xmmword_18DDA6EB0;
    aBlock = 0;
    v48 = 0xE000000000000000;
    _StringGuts.grow(_:)(17);
    MEMORY[0x193ABEDD0](0x2077656956, 0xE500000000000000);
    v53 = a2;
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x193ABEDD0](544497952, 0xE400000000000000);
    v53 = *&a9;
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x193ABEDD0](2618, 0xE200000000000000);
    v53 = a3;
    v54 = v10;
    v55 = v14;
    DisplayList.description.getter();
    MEMORY[0x193ABEDD0]();

    v26 = aBlock;
    v27 = v48;
    v25[7] = MEMORY[0x1E69E6158];
    v25[4] = v26;
    v25[5] = v27;
    print(_:separator:terminator:)();
    v15 = v41;
  }

LABEL_8:
  v28 = *(a5 + 64);
  *(a5 + 72) = a9;
  *(a5 + 80) = 0x7FF0000000000000;
  aBlock = a3;
  LOWORD(v48) = v10;
  HIDWORD(v48) = v14;

  v29 = *(a5 + 48);
  v30 = *(a5 + 56);
  DisplayList.GraphicsRenderer.render(list:in:)(&aBlock, v46);
  swift_beginAccess();

  v31 = MEMORY[0x1E69E7CC8];
  *(a5 + 16) = MEMORY[0x1E69E7CC8];

  swift_beginAccess();
  v32 = *(a5 + 32);
  *(a5 + 32) = v31;
  *(a5 + 40) = v31;
  *(a5 + 16) = v32;
  swift_endAccess();
  *(a5 + 48) = v29;
  *(a5 + 56) = v30;
  *(a5 + 64) = v28;

  v33 = fmax(*(a5 + 80) - a9, 0.000001);
  if (v33 != INFINITY)
  {
    v34 = v42;
    swift_beginAccess();
    swift_unknownObjectWeakLoadStrong();
    v35 = *(v34 + 24);
    type metadata accessor for OS_dispatch_queue();
    v36 = static OS_dispatch_queue.main.getter();
    v37 = swift_allocObject();
    *(v37 + 24) = v35;
    swift_unknownObjectWeakInit();
    v38 = swift_allocObject();
    *(v38 + 16) = v37;
    *(v38 + 24) = v33;
    v51 = partial apply for closure #1 in closure #1 in DisplayList.ViewRasterizer.drawingContent(list:time:);
    v52 = v38;
    aBlock = MEMORY[0x1E69E9820];
    v48 = 1107296256;
    v49 = thunk for @escaping @callee_guaranteed () -> ();
    v50 = &block_descriptor_19;
    v39 = _Block_copy(&aBlock);

    static DispatchQoS.unspecified.getter();
    aBlock = MEMORY[0x1E69E7CC0];
    lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
    type metadata accessor for ViewGraphRenderObserver?(0, &lazy cache variable for type metadata for [DispatchWorkItemFlags], MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x193ABFB70](0, v20, v17, v39);
    _Block_release(v39);
    swift_unknownObjectRelease();

    (*(v45 + 8))(v17, v15);
    (*(v43 + 8))(v20, v44);
  }
}

uint64_t sub_18D363914()
{

  return swift_deallocObject();
}

void AtomicBox.access<A>(_:)(void (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v5 = *v3;
  v6 = (*(*(*(a3 + 16) - 8) + 80) + 20) & ~*(*(*(a3 + 16) - 8) + 80);
  os_unfair_lock_lock(v5 + 4);
  a1(v5 + v6);
  os_unfair_lock_unlock(v5 + 4);
}

void ContentTransition.CustomTransition.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = a1[1];
  v6 = a1[2];
  if (v5 < v6)
  {
    v7 = 0;
    v8 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v9 = a1[3];
      if (v9)
      {
        v10 = a1[4];
        if (v5 < v10)
        {
          goto LABEL_11;
        }

        if (v10 < v5)
        {
          goto LABEL_58;
        }

        a1[3] = 0;
      }

      v9 = ProtobufDecoder.decodeVarint()(v9);
      if (v2)
      {
        goto LABEL_63;
      }

      if (v9 < 8)
      {
        goto LABEL_58;
      }

LABEL_11:
      if (v9 >> 3 == 2)
      {
        if ((v9 & 7) != 2)
        {
          goto LABEL_60;
        }

        v13 = a1[5];
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v13 + 16) + 1, 1, v13);
          v13 = isUniquelyReferenced_nonNull_native;
        }

        v16 = *(v13 + 16);
        v15 = *(v13 + 24);
        if (v16 >= v15 >> 1)
        {
          isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1, v13);
          v13 = isUniquelyReferenced_nonNull_native;
        }

        *(v13 + 16) = v16 + 1;
        *(v13 + 8 * v16 + 32) = v6;
        a1[5] = v13;
        v17 = ProtobufDecoder.decodeVarint()(isUniquelyReferenced_nonNull_native);
        if (v2)
        {
          goto LABEL_63;
        }

        if (v17 < 0)
        {
          __break(1u);
LABEL_65:
          __break(1u);
LABEL_66:
          __break(1u);
LABEL_67:
          __break(1u);
LABEL_68:
          __break(1u);
          __break(1u);
          v30 = specialized _ArrayBuffer._consumeAndCreateNew()(a2);
          v31 = *(v30 + 2);
          if (!v31)
          {
            __break(1u);
            return;
          }

          v28 = v31 - 1;
          v29 = *&v30[8 * v28 + 32];
          *(v30 + 2) = v28;
          a1[5] = v30;
          a1[2] = v29;
LABEL_63:

          return;
        }

        v18 = a1[1] + v17;
        if (v6 < v18)
        {
LABEL_60:
          lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
          swift_allocError();
          swift_willThrow();
          goto LABEL_63;
        }

        a1[2] = v18;
        ContentTransition.Effect.init(from:)(a1, v35);
        v19 = a1[5];
        if (!*(v19 + 2))
        {
          goto LABEL_65;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v20 = *(v19 + 2);
          if (!v20)
          {
            goto LABEL_66;
          }
        }

        else
        {
          v19 = specialized _ArrayBuffer._consumeAndCreateNew()(v19);
          v20 = *(v19 + 2);
          if (!v20)
          {
            goto LABEL_66;
          }
        }

        v21 = v20 - 1;
        v6 = *&v19[8 * v21 + 32];
        *(v19 + 2) = v21;
        a1[5] = v19;
        a1[2] = v6;
        v32 = v35[0];
        v33 = v35[1];
        v34 = v36;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 2) + 1, 1, v8);
        }

        v23 = *(v8 + 2);
        v22 = *(v8 + 3);
        if (v23 >= v22 >> 1)
        {
          v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v23 + 1, 1, v8);
        }

        *(v8 + 2) = v23 + 1;
        v24 = &v8[36 * v23];
        *(v24 + 16) = v34;
        *(v24 + 2) = v32;
        *(v24 + 3) = v33;
      }

      else if (v9 >> 3 == 1)
      {
        if ((v9 & 7) != 0)
        {
          if ((v9 & 7) != 2)
          {
            goto LABEL_58;
          }

          v9 = ProtobufDecoder.decodeVarint()(v9);
          if (v2)
          {
            goto LABEL_63;
          }

          if ((v9 & 0x8000000000000000) != 0)
          {
            goto LABEL_67;
          }

          v11 = a1[1] + v9;
          if (v6 < v11)
          {
LABEL_58:
            lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
            swift_allocError();
            swift_willThrow();
            goto LABEL_63;
          }

          a1[3] = 8;
          a1[4] = v11;
        }

        v12 = ProtobufDecoder.decodeVarint()(v9);
        if (v2)
        {
          goto LABEL_63;
        }

        if (HIDWORD(v12))
        {
          v7 = 0;
        }

        else
        {
          v7 = v12;
        }
      }

      else
      {
        v25 = v9 & 7;
        if (v25 > 1)
        {
          if (v25 == 2)
          {
            v27 = ProtobufDecoder.decodeVarint()(v9);
            if (v2)
            {
              goto LABEL_63;
            }

            if (v27 < 0)
            {
              goto LABEL_68;
            }

            v26 = a1[1] + v27;
            if (v6 < v26)
            {
              goto LABEL_58;
            }
          }

          else
          {
            if (v25 != 5)
            {
              goto LABEL_58;
            }

            v26 = a1[1] + 4;
            if (v6 < v26)
            {
              goto LABEL_58;
            }
          }

          goto LABEL_3;
        }

        if ((v9 & 7) != 0)
        {
          if (v25 != 1)
          {
            goto LABEL_58;
          }

          v26 = a1[1] + 8;
          if (v6 < v26)
          {
            goto LABEL_58;
          }

LABEL_3:
          a1[1] = v26;
          goto LABEL_4;
        }

        ProtobufDecoder.decodeVarint()(v9);
        if (v2)
        {
          goto LABEL_63;
        }
      }

LABEL_4:
      v5 = a1[1];
      if (v5 >= v6)
      {
        goto LABEL_57;
      }
    }
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
LABEL_57:
  a1[3] = 0;
  *a2 = v8;
  *(a2 + 8) = v7;
  *(a2 + 12) = 2;
}

unint64_t ContentTransition.Effect.init(from:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = result;
  v5 = *(result + 8);
  v6 = *(result + 16);
  if (v5 >= v6)
  {
    v7 = 0;
    v29 = 0;
    v8 = 0;
    v9 = 1.0;
    v11 = 0.0;
    v10 = 2;
    v12 = 1;
    v13 = 2;
    v14 = 3;
LABEL_4:
    v3[3] = 0;
    *a2 = v12;
    *(a2 + 4) = v7;
    *(a2 + 8) = v10;
    *(a2 + 12) = v29;
    *(a2 + 16) = v13;
    *(a2 + 20) = v11;
    *(a2 + 24) = v9;
    *(a2 + 28) = v14;
    *(a2 + 32) = v8;
    return result;
  }

  v7 = 0;
  v29 = 0;
  v8 = 0;
  v9 = 1.0;
  v10 = 2;
  v11 = 0.0;
  v12 = 1;
  v13 = 2;
  v14 = 3;
  while (1)
  {
    result = v3[3];
    if (result)
    {
      v15 = v3[4];
      if (v5 < v15)
      {
        goto LABEL_13;
      }

      if (v15 < v5)
      {
        goto LABEL_120;
      }

      v3[3] = 0;
    }

    result = ProtobufDecoder.decodeVarint()(result);
    if (v2)
    {
      return result;
    }

    if (result <= 7)
    {
LABEL_120:
      lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
      swift_allocError();
      return swift_willThrow();
    }

LABEL_13:
    v16 = result >> 3;
    v17 = result & 7;
    if (result >> 3 <= 4)
    {
      if (result >> 3 > 2)
      {
        if (v16 == 3)
        {
          if (v17 == 2)
          {
            result = ProtobufDecoder.decodeVarint()(result);
            if (v2)
            {
              return result;
            }

            if ((result & 0x8000000000000000) != 0)
            {
              goto LABEL_126;
            }

            v23 = v3[1];
            if (v6 < v23 + result)
            {
              goto LABEL_120;
            }

            v3[3] = 29;
            v3[4] = v23 + result;
          }

          else
          {
            if (v17 != 5)
            {
              goto LABEL_120;
            }

            v23 = v3[1];
          }

          if (v6 < (v23 + 1))
          {
            goto LABEL_120;
          }

          v13 = 0;
          v29 = *v23;
          v3[1] = v23 + 1;
          goto LABEL_6;
        }

        if (v16 == 4)
        {
          if (v17 == 2)
          {
            result = ProtobufDecoder.decodeVarint()(result);
            if (v2)
            {
              return result;
            }

            if ((result & 0x8000000000000000) != 0)
            {
              goto LABEL_128;
            }

            v20 = v3[1];
            if (v6 < v20 + result)
            {
              goto LABEL_120;
            }

            v3[3] = 37;
            v3[4] = v20 + result;
          }

          else
          {
            if (v17 != 5)
            {
              goto LABEL_120;
            }

            v20 = v3[1];
          }

          if (v6 < (v20 + 1))
          {
            goto LABEL_120;
          }

          v11 = *v20;
          v3[1] = v20 + 1;
          goto LABEL_6;
        }
      }

      else
      {
        if (v16 == 1)
        {
          if ((result & 7) != 0)
          {
            if (v17 != 2)
            {
              goto LABEL_120;
            }

            result = ProtobufDecoder.decodeVarint()(result);
            if (v2)
            {
              return result;
            }

            if ((result & 0x8000000000000000) != 0)
            {
              goto LABEL_125;
            }

            v22 = v3[1] + result;
            if (v6 < v22)
            {
              goto LABEL_120;
            }

            v3[3] = 8;
            v3[4] = v22;
          }

          result = ProtobufDecoder.decodeVarint()(result);
          if (v2)
          {
            return result;
          }

          if (HIDWORD(result))
          {
            v12 = 0;
          }

          else
          {
            v12 = result;
          }

          goto LABEL_6;
        }

        if (v16 == 2)
        {
          if (v17 == 2)
          {
            result = ProtobufDecoder.decodeVarint()(result);
            if (v2)
            {
              return result;
            }

            if ((result & 0x8000000000000000) != 0)
            {
              goto LABEL_127;
            }

            v19 = v3[1];
            if (v6 < v19 + result)
            {
              goto LABEL_120;
            }

            v3[3] = 21;
            v3[4] = v19 + result;
          }

          else
          {
            if (v17 != 5)
            {
              goto LABEL_120;
            }

            v19 = v3[1];
          }

          if (v6 < (v19 + 1))
          {
            goto LABEL_120;
          }

          v10 = 0;
          v7 = *v19;
          v3[1] = v19 + 1;
          goto LABEL_6;
        }
      }

      goto LABEL_76;
    }

    if (result >> 3 <= 6)
    {
      if (v16 == 5)
      {
        if (v17 == 2)
        {
          result = ProtobufDecoder.decodeVarint()(result);
          if (v2)
          {
            return result;
          }

          if ((result & 0x8000000000000000) != 0)
          {
            goto LABEL_129;
          }

          v25 = v3[1];
          if (v6 < v25 + result)
          {
            goto LABEL_120;
          }

          v3[3] = 45;
          v3[4] = v25 + result;
        }

        else
        {
          if (v17 != 5)
          {
            goto LABEL_120;
          }

          v25 = v3[1];
        }

        if (v6 < (v25 + 1))
        {
          goto LABEL_120;
        }

        v28 = *v25;
        v3[1] = v25 + 1;
        v9 = v28 - v11;
        goto LABEL_6;
      }

      if (v16 == 6)
      {
        if ((result & 7) != 0)
        {
          if (v17 != 2)
          {
            goto LABEL_120;
          }

          result = ProtobufDecoder.decodeVarint()(result);
          if (v2)
          {
            return result;
          }

          if ((result & 0x8000000000000000) != 0)
          {
            goto LABEL_130;
          }

          v21 = v3[1] + result;
          if (v6 < v21)
          {
            goto LABEL_120;
          }

          v3[3] = 48;
          v3[4] = v21;
        }

        result = ProtobufDecoder.decodeVarint()(result);
        if (v2)
        {
          return result;
        }

        if (HIDWORD(result))
        {
          v14 = 3;
        }

        else
        {
          v14 = result;
        }

        goto LABEL_6;
      }

      goto LABEL_76;
    }

    if (v16 == 7)
    {
      break;
    }

    if (v16 == 9)
    {
      if (v17 == 2)
      {
        result = ProtobufDecoder.decodeVarint()(result);
        if (v2)
        {
          return result;
        }

        if ((result & 0x8000000000000000) != 0)
        {
          goto LABEL_123;
        }

        v26 = v3[1];
        if (v6 < v26 + result)
        {
          goto LABEL_120;
        }

        v3[3] = 77;
        v3[4] = v26 + result;
      }

      else
      {
        if (v17 != 5)
        {
          goto LABEL_120;
        }

        v26 = v3[1];
      }

      if (v6 < (v26 + 1))
      {
        goto LABEL_120;
      }

      v9 = *v26;
      v3[1] = v26 + 1;
      goto LABEL_6;
    }

    if (v16 == 10)
    {
      if ((result & 7) != 0)
      {
        if (v17 != 2)
        {
          goto LABEL_120;
        }

        result = ProtobufDecoder.decodeVarint()(result);
        if (v2)
        {
          return result;
        }

        if ((result & 0x8000000000000000) != 0)
        {
          goto LABEL_124;
        }

        v18 = v3[1] + result;
        if (v6 < v18)
        {
          goto LABEL_120;
        }

        v3[3] = 80;
        v3[4] = v18;
      }

      result = ProtobufDecoder.decodeVarint()(result);
      if (v2)
      {
        return result;
      }

      v8 = result;
      goto LABEL_6;
    }

LABEL_76:
    if ((result & 7) > 1)
    {
      if (v17 == 2)
      {
        result = ProtobufDecoder.decodeVarint()(result);
        if (v2)
        {
          return result;
        }

        if ((result & 0x8000000000000000) != 0)
        {
          goto LABEL_131;
        }

        v27 = v3[1] + result;
        if (v6 < v27)
        {
          goto LABEL_120;
        }
      }

      else
      {
        if (v17 != 5)
        {
          goto LABEL_120;
        }

        v27 = v3[1] + 4;
        if (v6 < v27)
        {
          goto LABEL_120;
        }
      }

      goto LABEL_5;
    }

    if ((result & 7) != 0)
    {
      if (v17 != 1)
      {
        goto LABEL_120;
      }

      v27 = v3[1] + 8;
      if (v6 < v27)
      {
        goto LABEL_120;
      }

LABEL_5:
      v3[1] = v27;
      goto LABEL_6;
    }

    result = ProtobufDecoder.decodeVarint()(result);
    if (v2)
    {
      return result;
    }

LABEL_6:
    v5 = v3[1];
    if (v5 >= v6)
    {
      goto LABEL_4;
    }
  }

  if ((result & 7) == 0)
  {
LABEL_68:
    result = ProtobufDecoder.decodeVarint()(result);
    if (v2)
    {
      return result;
    }

    v7 = result;
    v10 = 1;
    goto LABEL_6;
  }

  if (v17 != 2)
  {
    goto LABEL_120;
  }

  result = ProtobufDecoder.decodeVarint()(result);
  if (v2)
  {
    return result;
  }

  if ((result & 0x8000000000000000) == 0)
  {
    v24 = v3[1] + result;
    if (v6 < v24)
    {
      goto LABEL_120;
    }

    v3[3] = 56;
    v3[4] = v24;
    goto LABEL_68;
  }

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
  return result;
}

unint64_t specialized Color.ResolvedHDR.init(from:)@<X0>(unint64_t result@<X0>, float *a2@<X8>)
{
  v3 = result;
  v5 = *(result + 8);
  v6 = *(result + 16);
  v7 = 0;
  v8 = 1.0;
  if (v5 >= v6)
  {
    v9 = 2143289344;
    v10 = 0;
    v11 = 0;
LABEL_77:
    v3[3] = 0;
    *a2 = v11;
    *(a2 + 1) = v10;
    *(a2 + 2) = v7;
    a2[3] = v8;
    *(a2 + 4) = v9;
    return result;
  }

  v9 = 2143289344;
  v10 = 0;
  v11 = 0;
  while (1)
  {
    result = v3[3];
    if (result)
    {
      v12 = v3[4];
      if (v5 < v12)
      {
        goto LABEL_9;
      }

      if (v12 < v5)
      {
        goto LABEL_78;
      }

      v3[3] = 0;
    }

    result = ProtobufDecoder.decodeVarint()(result);
    if (v2)
    {
      return result;
    }

    if (result <= 7)
    {
LABEL_78:
      lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
      swift_allocError();
      return swift_willThrow();
    }

LABEL_9:
    v13 = result >> 3;
    v14 = result & 7;
    if (result >> 3 <= 2)
    {
      if (v13 == 1)
      {
        if (v14 == 2)
        {
          result = ProtobufDecoder.decodeVarint()(result);
          if (v2)
          {
            return result;
          }

          if ((result & 0x8000000000000000) != 0)
          {
            goto LABEL_83;
          }

          v19 = v3[1];
          if (v6 < v19 + result)
          {
            goto LABEL_78;
          }

          v3[3] = 13;
          v3[4] = v19 + result;
        }

        else
        {
          if (v14 != 5)
          {
            goto LABEL_78;
          }

          v19 = v3[1];
        }

        v5 = (v19 + 1);
        if (v6 < (v19 + 1))
        {
          goto LABEL_78;
        }

        v11 = *v19;
        goto LABEL_73;
      }

      if (v13 == 2)
      {
        if (v14 == 2)
        {
          result = ProtobufDecoder.decodeVarint()(result);
          if (v2)
          {
            return result;
          }

          if ((result & 0x8000000000000000) != 0)
          {
            goto LABEL_84;
          }

          v16 = v3[1];
          if (v6 < v16 + result)
          {
            goto LABEL_78;
          }

          v3[3] = 21;
          v3[4] = v16 + result;
        }

        else
        {
          if (v14 != 5)
          {
            goto LABEL_78;
          }

          v16 = v3[1];
        }

        v5 = (v16 + 1);
        if (v6 < (v16 + 1))
        {
          goto LABEL_78;
        }

        v10 = *v16;
        goto LABEL_73;
      }

      goto LABEL_30;
    }

    if (v13 == 3)
    {
      break;
    }

    if (v13 == 4)
    {
      if (v14 == 2)
      {
        result = ProtobufDecoder.decodeVarint()(result);
        if (v2)
        {
          return result;
        }

        if ((result & 0x8000000000000000) != 0)
        {
          goto LABEL_81;
        }

        v18 = v3[1];
        if (v6 < v18 + result)
        {
          goto LABEL_78;
        }

        v3[3] = 37;
        v3[4] = v18 + result;
      }

      else
      {
        if (v14 != 5)
        {
          goto LABEL_78;
        }

        v18 = v3[1];
      }

      v5 = (v18 + 1);
      if (v6 < (v18 + 1))
      {
        goto LABEL_78;
      }

      v8 = *v18;
      goto LABEL_73;
    }

    if (v13 == 5)
    {
      if (v14 == 2)
      {
        result = ProtobufDecoder.decodeVarint()(result);
        if (v2)
        {
          return result;
        }

        if ((result & 0x8000000000000000) != 0)
        {
          goto LABEL_82;
        }

        v15 = v3[1];
        if (v6 < v15 + result)
        {
          goto LABEL_78;
        }

        v3[3] = 45;
        v3[4] = v15 + result;
      }

      else
      {
        if (v14 != 5)
        {
          goto LABEL_78;
        }

        v15 = v3[1];
      }

      v5 = (v15 + 1);
      if (v6 < (v15 + 1))
      {
        goto LABEL_78;
      }

      v9 = *v15;
      goto LABEL_73;
    }

LABEL_30:
    if ((result & 7) > 1)
    {
      if (v14 == 2)
      {
        result = ProtobufDecoder.decodeVarint()(result);
        if (v2)
        {
          return result;
        }

        if ((result & 0x8000000000000000) != 0)
        {
          goto LABEL_85;
        }

        v5 = v3[1] + result;
      }

      else
      {
        if (v14 != 5)
        {
          goto LABEL_78;
        }

        v5 = v3[1] + 4;
      }
    }

    else
    {
      if ((result & 7) == 0)
      {
        result = ProtobufDecoder.decodeVarint()(result);
        if (v2)
        {
          return result;
        }

        v5 = v3[1];
        goto LABEL_74;
      }

      if (v14 != 1)
      {
        goto LABEL_78;
      }

      v5 = v3[1] + 8;
    }

    if (v6 < v5)
    {
      goto LABEL_78;
    }

LABEL_73:
    v3[1] = v5;
LABEL_74:
    if (v5 >= v6)
    {
      goto LABEL_77;
    }
  }

  if (v14 != 2)
  {
    if (v14 != 5)
    {
      goto LABEL_78;
    }

    v17 = v3[1];
LABEL_41:
    v5 = (v17 + 1);
    if (v6 < (v17 + 1))
    {
      goto LABEL_78;
    }

    v7 = *v17;
    goto LABEL_73;
  }

  result = ProtobufDecoder.decodeVarint()(result);
  if (v2)
  {
    return result;
  }

  if ((result & 0x8000000000000000) == 0)
  {
    v17 = v3[1];
    if (v6 < v17 + result)
    {
      goto LABEL_78;
    }

    v3[3] = 29;
    v3[4] = v17 + result;
    goto LABEL_41;
  }

  __break(1u);
LABEL_81:
  __break(1u);
LABEL_82:
  __break(1u);
LABEL_83:
  __break(1u);
LABEL_84:
  __break(1u);
LABEL_85:
  __break(1u);
  return result;
}

void lazy protocol witness table accessor for type [CodableAccessibilityValueStorage] and conformance <A> [A]()
{
  if (!lazy protocol witness table cache variable for type [CodableAccessibilityValueStorage] and conformance <A> [A])
  {
    v6[3] = v0;
    v6[4] = v1;
    type metadata accessor for CodableAccessibilityValueStorage?(255, &lazy cache variable for type metadata for [CodableAccessibilityValueStorage], &type metadata for CodableAccessibilityValueStorage, MEMORY[0x1E69E62F8]);
    v3 = v2;
    lazy protocol witness table accessor for type CodableAccessibilityValueStorage and conformance CodableAccessibilityValueStorage();
    v6[0] = v4;
    swift_getWitnessTable(MEMORY[0x1E69E6330], v3, v6);
    atomic_store(v5, &lazy protocol witness table cache variable for type [CodableAccessibilityValueStorage] and conformance <A> [A]);
  }
}

{
  if (!lazy protocol witness table cache variable for type [CodableAccessibilityValueStorage] and conformance <A> [A])
  {
    v6[3] = v0;
    v6[4] = v1;
    type metadata accessor for CodableAccessibilityValueStorage?(255, &lazy cache variable for type metadata for [CodableAccessibilityValueStorage], &type metadata for CodableAccessibilityValueStorage, MEMORY[0x1E69E62F8]);
    v3 = v2;
    lazy protocol witness table accessor for type CodableAccessibilityValueStorage and conformance CodableAccessibilityValueStorage();
    v6[0] = v4;
    swift_getWitnessTable(MEMORY[0x1E69E6300], v3, v6);
    atomic_store(v5, &lazy protocol witness table cache variable for type [CodableAccessibilityValueStorage] and conformance <A> [A]);
  }
}

void type metadata accessor for CodableAccessibilityValueStorage?(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t CodableAccessibilityValueStorage.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v15 = a2;
  type metadata accessor for KeyedEncodingContainer<AccessibilityEmptyValue.CodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<CodableAccessibilityValueStorage.CodingKeys>, lazy protocol witness table accessor for type CodableAccessibilityValueStorage.CodingKeys and conformance CodableAccessibilityValueStorage.CodingKeys, &unk_1F008EE20, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v16[-1] - v7;
  v18 = 0;
  v19 = 0;
  v20 = 255;
  memset(v21, 0, sizeof(v21));
  v22 = 0;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type CodableAccessibilityValueStorage.CodingKeys and conformance CodableAccessibilityValueStorage.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v9 = v6;
    v10 = v15;
    v23 = 0;
    lazy protocol witness table accessor for type AccessibilityText and conformance AccessibilityText();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v11 = v16[0];
    v12 = v16[1];
    v13 = v17;
    outlined consume of AccessibilityText?(v18, v19, v20);
    v18 = v11;
    v19 = v12;
    v20 = v13;
    v23 = 1;
    lazy protocol witness table accessor for type AnyAccessibilityValue and conformance AnyAccessibilityValue();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    (*(v9 + 8))(v8, v5);
    outlined assign with take of AnyAccessibilityValue?(v16, v21);
    outlined init with copy of CodableAccessibilityValueStorage(&v18, v10);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return outlined destroy of CodableAccessibilityValueStorage(&v18);
}

void type metadata accessor for KeyedEncodingContainer<AccessibilityEmptyValue.CodingKeys>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void lazy protocol witness table accessor for type CodableAccessibilityValueStorage.CodingKeys and conformance CodableAccessibilityValueStorage.CodingKeys()
{
  if (!lazy protocol witness table cache variable for type CodableAccessibilityValueStorage.CodingKeys and conformance CodableAccessibilityValueStorage.CodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for CodableAccessibilityValueStorage.CodingKeys, &unk_1F008EE20, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type CodableAccessibilityValueStorage.CodingKeys and conformance CodableAccessibilityValueStorage.CodingKeys);
  }
}

{
  if (!lazy protocol witness table cache variable for type CodableAccessibilityValueStorage.CodingKeys and conformance CodableAccessibilityValueStorage.CodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for CodableAccessibilityValueStorage.CodingKeys, &unk_1F008EE20, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type CodableAccessibilityValueStorage.CodingKeys and conformance CodableAccessibilityValueStorage.CodingKeys);
  }
}

{
  if (!lazy protocol witness table cache variable for type CodableAccessibilityValueStorage.CodingKeys and conformance CodableAccessibilityValueStorage.CodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for CodableAccessibilityValueStorage.CodingKeys, &unk_1F008EE20, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type CodableAccessibilityValueStorage.CodingKeys and conformance CodableAccessibilityValueStorage.CodingKeys);
  }
}

{
  if (!lazy protocol witness table cache variable for type CodableAccessibilityValueStorage.CodingKeys and conformance CodableAccessibilityValueStorage.CodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for CodableAccessibilityValueStorage.CodingKeys, &unk_1F008EE20, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type CodableAccessibilityValueStorage.CodingKeys and conformance CodableAccessibilityValueStorage.CodingKeys);
  }
}

void lazy protocol witness table accessor for type AccessibilityText and conformance AccessibilityText()
{
  if (!lazy protocol witness table cache variable for type AccessibilityText and conformance AccessibilityText)
  {
    swift_getWitnessTable(protocol conformance descriptor for AccessibilityText, &type metadata for AccessibilityText, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type AccessibilityText and conformance AccessibilityText);
  }
}

{
  if (!lazy protocol witness table cache variable for type AccessibilityText and conformance AccessibilityText)
  {
    swift_getWitnessTable(protocol conformance descriptor for AccessibilityText, &type metadata for AccessibilityText, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type AccessibilityText and conformance AccessibilityText);
  }
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content.CodingKeys()
{
  if (*v0)
  {
    return 0x65756C6176;
  }

  else
  {
    return 1954047348;
  }
}

uint64_t specialized CodableByProtobuf.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Decoder.singleValueContainer()();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v18, v18[3]);
    lazy protocol witness table accessor for type Data and conformance Data();
    dispatch thunk of SingleValueDecodingContainer.decode<A>(_:)();
    isa = v15.super.isa;
    v6 = v16;
    outlined copy of Data._Representation(v15.super.isa, v16);
    ProtobufDecoder.init(_:)(v15.super.isa, v16, &v15);
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v7 = dispatch thunk of Decoder.userInfo.getter();

    v17 = v7;
    AccessibilityText.init(from:)(&v15, &v12);
    outlined consume of Data._Representation(isa, v6);
    v8 = v13;
    v9 = v14;
    *a2 = v12;
    *(a2 + 16) = v8;
    *(a2 + 17) = v9;
    v10 = v15.super.isa;

    __swift_destroy_boxed_opaque_existential_1(v18);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Decoder.singleValueContainer()();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v20, v20[3]);
    lazy protocol witness table accessor for type Data and conformance Data();
    dispatch thunk of SingleValueDecodingContainer.decode<A>(_:)();
    isa = v17.super.isa;
    v6 = v18;
    outlined copy of Data._Representation(v17.super.isa, v18);
    ProtobufDecoder.init(_:)(v17.super.isa, v18, &v17);
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v7 = dispatch thunk of Decoder.userInfo.getter();

    v19 = v7;
    ResolvedGradient.init(from:)(&v17, &v13);
    outlined consume of Data._Representation(isa, v6);
    v8 = v14;
    v9 = v15;
    v10 = v16;
    *a2 = v13;
    *(a2 + 8) = v8;
    *(a2 + 12) = v9;
    *(a2 + 16) = v10;
    v11 = v17.super.isa;

    __swift_destroy_boxed_opaque_existential_1(v20);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void lazy protocol witness table accessor for type Data and conformance Data()
{
  if (!lazy protocol witness table cache variable for type Data and conformance Data)
  {
    swift_getWitnessTable(MEMORY[0x1E69690B0], MEMORY[0x1E6969080], v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Data and conformance Data);
  }
}

{
  if (!lazy protocol witness table cache variable for type Data and conformance Data)
  {
    swift_getWitnessTable(MEMORY[0x1E6969090], MEMORY[0x1E6969080], v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Data and conformance Data);
  }
}

uint64_t storeEnumTagSinglePayload for LayoutSubviews(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 18) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 18) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

double outlined consume of AccessibilityText?(void *a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return outlined consume of AccessibilityText.Storage(a1, a2, a3 & 1);
  }

  return result;
}

uint64_t outlined assign with take of AnyAccessibilityValue?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for AnyAccessibilityValue?(0, &lazy cache variable for type metadata for AnyAccessibilityValue?, &type metadata for AnyAccessibilityValue, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t initializeWithCopy for CodableAccessibilityValueStorage(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if (*(a2 + 16) != 0xFF)
  {
    v7 = v4 >> 8;
    v8 = *a2;
    v9 = *(a2 + 8);
    v10 = v4 & 1;
    outlined copy of AccessibilityText.Storage(*a2, v9, v4 & 1);
    *a1 = v8;
    *(a1 + 8) = v9;
    *(a1 + 16) = v10;
    *(a1 + 17) = v7;
    v5 = *(a2 + 48);
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_5:
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 56) = *(a2 + 56);
    return a1;
  }

  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  v5 = *(a2 + 48);
  if (!v5)
  {
    goto LABEL_5;
  }

LABEL_3:
  v6 = *(a2 + 56);
  *(a1 + 48) = v5;
  *(a1 + 56) = v6;
  (**(v5 - 8))(a1 + 24, a2 + 24);
  return a1;
}

void destroy for CodableAccessibilityValueStorage(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2 != 255)
  {
    outlined consume of AccessibilityText.Storage(*a1, *(a1 + 8), v2 & 1);
  }

  if (*(a1 + 48))
  {

    __swift_destroy_boxed_opaque_existential_1((a1 + 24));
  }
}

uint64_t outlined assign with take of CodableAccessibilityValueStorage?(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  type metadata accessor for CodableAccessibilityValueStorage?(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t getEnumTagSinglePayload for CodableAccessibilityValueStorage(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 64))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 48);
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

uint64_t storeEnumTagSinglePayload for CodableAccessibilityValueStorage(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 48) = a2;
    }
  }

  return result;
}

uint64_t ProtobufDecoder.decodeMessage<A>()(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  result = ProtobufDecoder.beginMessage()();
  if (!v3)
  {
    (*(a2 + 8))(v2, a1, a2);
    v8 = *(v2 + 40);
    if (*(v8 + 16))
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if (result)
      {
        v9 = *(v8 + 16);
        if (v9)
        {
LABEL_5:
          v10 = v9 - 1;
          v11 = *(v8 + 8 * v10 + 32);
          *(v8 + 16) = v10;
          *(v4 + 40) = v8;
          *(v4 + 16) = v11;
          return result;
        }

LABEL_9:
        __break(1u);
        return result;
      }
    }

    else
    {
      __break(1u);
    }

    result = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
    v8 = result;
    v9 = *(result + 16);
    if (v9)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

  return result;
}

uint64_t ProtobufDecoder.messageField<A>(_:)(void *a1, uint64_t a2, uint64_t a3)
{
  if ((*a1 & 7) == 2)
  {
    return ProtobufDecoder.decodeMessage<A>()(a2, a3);
  }

  lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
  swift_allocError();
  return swift_willThrow();
}

unint64_t protocol witness for ProtobufDecodableMessage.init(from:) in conformance CGPoint@<X0>(unint64_t a1@<X0>, void *a2@<X8>)
{
  result = specialized CGPoint.init(from:)(a1);
  if (!v2)
  {
    *a2 = v5;
    a2[1] = v6;
  }

  return result;
}

unint64_t specialized FillStyle.init(from:)(void *a1)
{
  v3 = a1[1];
  v4 = a1[2];
  if (v3 >= v4)
  {
    v5 = 0;
    a1[3] = 0;
LABEL_46:
    v13 = 256;
    return v13 | v5;
  }

  v5 = 0;
  v6 = 1;
  do
  {
    result = a1[3];
    if (result)
    {
      v8 = a1[4];
      if (v3 < v8)
      {
        goto LABEL_11;
      }

      if (v8 < v3)
      {
        goto LABEL_43;
      }

      a1[3] = 0;
    }

    result = ProtobufDecoder.decodeVarint()(result);
    if (v1)
    {
      return result;
    }

    if (result <= 7)
    {
LABEL_43:
      lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
      swift_allocError();
      return swift_willThrow();
    }

LABEL_11:
    v9 = result & 7;
    if (result >> 3 == 2)
    {
      if ((result & 7) != 0)
      {
        if (v9 != 2)
        {
          goto LABEL_43;
        }

        result = ProtobufDecoder.decodeVarint()(result);
        if (v1)
        {
          return result;
        }

        if ((result & 0x8000000000000000) != 0)
        {
          goto LABEL_51;
        }

        v11 = a1[1] + result;
        if (v4 < v11)
        {
          goto LABEL_43;
        }

        a1[3] = 16;
        a1[4] = v11;
      }

      result = ProtobufDecoder.decodeVarint()(result);
      if (v1)
      {
        return result;
      }

      v6 = result != 0;
    }

    else if (result >> 3 == 1)
    {
      if ((result & 7) != 0)
      {
        if (v9 != 2)
        {
          goto LABEL_43;
        }

        result = ProtobufDecoder.decodeVarint()(result);
        if (v1)
        {
          return result;
        }

        if ((result & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_51:
          __break(1u);
LABEL_52:
          __break(1u);
          return result;
        }

        v10 = a1[1] + result;
        if (v4 < v10)
        {
          goto LABEL_43;
        }

        a1[3] = 8;
        a1[4] = v10;
      }

      result = ProtobufDecoder.decodeVarint()(result);
      if (v1)
      {
        return result;
      }

      v5 = result != 0;
    }

    else
    {
      if ((result & 7) > 1)
      {
        if (v9 == 2)
        {
          result = ProtobufDecoder.decodeVarint()(result);
          if (v1)
          {
            return result;
          }

          if ((result & 0x8000000000000000) != 0)
          {
            goto LABEL_52;
          }

          v12 = a1[1] + result;
          if (v4 < v12)
          {
            goto LABEL_43;
          }
        }

        else
        {
          if (v9 != 5)
          {
            goto LABEL_43;
          }

          v12 = a1[1] + 4;
          if (v4 < v12)
          {
            goto LABEL_43;
          }
        }

        goto LABEL_3;
      }

      if ((result & 7) != 0)
      {
        if (v9 != 1)
        {
          goto LABEL_43;
        }

        v12 = a1[1] + 8;
        if (v4 < v12)
        {
          goto LABEL_43;
        }

LABEL_3:
        a1[1] = v12;
        goto LABEL_4;
      }

      result = ProtobufDecoder.decodeVarint()(result);
      if (v1)
      {
        return result;
      }
    }

LABEL_4:
    v3 = a1[1];
  }

  while (v3 < v4);
  a1[3] = 0;
  if (v6)
  {
    goto LABEL_46;
  }

  v13 = 0;
  return v13 | v5;
}

unint64_t specialized CodablePlatformFont.init(from:)(uint64_t a1)
{
  v2 = type metadata accessor for String.Encoding();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v285 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  CopyWithAttributes = type metadata accessor for URL();
  v6 = *(CopyWithAttributes - 8);
  MEMORY[0x1EEE9AC00](CopyWithAttributes);
  v306 = &v285 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for URL?(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v285 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v310 = &v285 - v12;
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v285 - v15;
  v311 = v6;
  v19 = *(v6 + 56);
  v17 = v6 + 56;
  v18 = v19;
  v312 = CopyWithAttributes;
  (v19)(&v285 - v15, 1, 1, CopyWithAttributes, v14);
  v20 = *(a1 + 8);
  v21 = *(a1 + 16);
  if (v20 >= v21)
  {
    v308 = 0;
    v307 = 0;
    v315 = 0;
    v314 = 0;
    v309 = 0;
    v313 = 0;
    v22 = 0.0;
    v23 = 0xF000000000000000;
    v24 = MEMORY[0x1E69E7CC8];
    goto LABEL_4;
  }

  v288 = v18;
  v289 = v17;
  v302 = v10;
  v304 = v4;
  v313 = 0;
  v309 = 0;
  v314 = 0;
  v315 = 0;
  v307 = 0;
  v300 = 0;
  v308 = 0;
  v297 = *MEMORY[0x1E6965878];
  v296 = *MEMORY[0x1E6965880];
  v295 = *MEMORY[0x1E69657F8];
  v294 = *MEMORY[0x1E69657E0];
  v290 = *MEMORY[0x1E69656F0];
  v293 = *MEMORY[0x1E6965788];
  v22 = 0.0;
  v23 = 0xF000000000000000;
  v298 = *MEMORY[0x1E69658F0];
  v292 = *MEMORY[0x1E69658F8];
  v303 = *MEMORY[0x1E69657A8];
  v301 = *MEMORY[0x1E6965898];
  v24 = MEMORY[0x1E69E7CC8];
  v25 = v316;
  v305 = v16;
  while (2)
  {
    v64 = *(a1 + 24);
    if (!v64)
    {
      goto LABEL_35;
    }

    v65 = *(a1 + 32);
    if (v20 >= v65)
    {
      if (v65 < v20)
      {
        goto LABEL_260;
      }

      *(a1 + 24) = 0;
LABEL_35:
      v64 = ProtobufDecoder.decodeVarint()(v64);
      if (v25)
      {
        goto LABEL_262;
      }

      if (v64 < 8)
      {
LABEL_260:

LABEL_261:

        lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
        v316 = swift_allocError();
        swift_willThrow();
LABEL_265:
        v277 = v314;
LABEL_266:
        outlined consume of Data?(v277, v23);
LABEL_275:
        v283 = v16;
        goto LABEL_276;
      }
    }

    switch(v64 >> 3)
    {
      case 1uLL:
        if ((v64 & 7) != 2)
        {
          goto LABEL_260;
        }

        CopyWithAttributes = *(a1 + 40);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(CopyWithAttributes + 16) + 1, 1, CopyWithAttributes);
          CopyWithAttributes = isUniquelyReferenced_nonNull_native;
        }

        v68 = *(CopyWithAttributes + 16);
        v67 = *(CopyWithAttributes + 24);
        if (v68 >= v67 >> 1)
        {
          isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v67 > 1), v68 + 1, 1, CopyWithAttributes);
          CopyWithAttributes = isUniquelyReferenced_nonNull_native;
        }

        *(CopyWithAttributes + 16) = v68 + 1;
        *(CopyWithAttributes + 8 * v68 + 32) = v21;
        *(a1 + 40) = CopyWithAttributes;
        v69 = ProtobufDecoder.decodeVarint()(isUniquelyReferenced_nonNull_native);
        if (v25)
        {
          goto LABEL_262;
        }

        if (v69 < 0)
        {
          goto LABEL_295;
        }

        v70 = *(a1 + 8) + v69;
        if (v21 < v70)
        {
          goto LABEL_260;
        }

        *(a1 + 16) = v70;
        _s7SwiftUI15ProtobufDecoderV19decodeAttachedValue2as9generatorxxm_x10Foundation4DataVKXEtKlFAI_Tt0g503_s7a34UI19CodablePlatformFontV4fromAcA15cd21Vz_tKcfc10Foundation4K18VAFzKXEfU_A2IXEfU_Tf1ncn_n(a1, &v317);
        if (!*(*(a1 + 40) + 16))
        {
          goto LABEL_301;
        }

        v71 = specialized Array._customRemoveLast()();
        if (!v71)
        {
          v71 = specialized Array.remove(at:)(*(*(a1 + 40) + 16) - 1);
        }

        CopyWithAttributes = v71;
        outlined consume of Data?(v314, v23);
        *(a1 + 16) = CopyWithAttributes;
        v23 = *(&v317 + 1);
        v314 = v317;
        goto LABEL_30;
      case 2uLL:
        if ((v64 & 7) != 2)
        {
          goto LABEL_260;
        }

        CopyWithAttributes = *(a1 + 40);
        v182 = swift_isUniquelyReferenced_nonNull_native();
        if ((v182 & 1) == 0)
        {
          v182 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(CopyWithAttributes + 16) + 1, 1, CopyWithAttributes);
          CopyWithAttributes = v182;
        }

        v184 = *(CopyWithAttributes + 16);
        v183 = *(CopyWithAttributes + 24);
        if (v184 >= v183 >> 1)
        {
          v182 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v183 > 1), v184 + 1, 1, CopyWithAttributes);
          CopyWithAttributes = v182;
        }

        *(CopyWithAttributes + 16) = v184 + 1;
        *(CopyWithAttributes + 8 * v184 + 32) = v21;
        *(a1 + 40) = CopyWithAttributes;
        v185 = ProtobufDecoder.decodeVarint()(v182);
        if (v25)
        {
          goto LABEL_262;
        }

        if (v185 < 0)
        {
          goto LABEL_298;
        }

        v186 = *(a1 + 8) + v185;
        if (v21 >= v186)
        {
          *(a1 + 16) = v186;
          URL.init(from:)(a1, v302);
          v187 = *(a1 + 40);
          if (*(v187 + 2))
          {
            if (swift_isUniquelyReferenced_nonNull_native())
            {
              v188 = *(v187 + 2);
              if (v188)
              {
LABEL_153:
                v189 = v188 - 1;
                v190 = *&v187[8 * v189 + 32];
                *(v187 + 2) = v189;
                *(a1 + 40) = v187;
                outlined destroy of ResolvableTextSegmentAttribute.Value?(v16, type metadata accessor for URL?);
                *(a1 + 16) = v190;
                CopyWithAttributes = v302;
                v288(v302, 0, 1, v312);
                outlined init with take of ResolvableTextSegmentAttribute.Value(CopyWithAttributes, v16, type metadata accessor for URL?);
                goto LABEL_30;
              }
            }

            else
            {
              v187 = specialized _ArrayBuffer._consumeAndCreateNew()(v187);
              v188 = *(v187 + 2);
              if (v188)
              {
                goto LABEL_153;
              }
            }

            goto LABEL_305;
          }

LABEL_303:
          __break(1u);
LABEL_304:
          __break(1u);
LABEL_305:
          __break(1u);
LABEL_306:
          __break(1u);
LABEL_307:
          __break(1u);
LABEL_308:
          __break(1u);
LABEL_309:
          __break(1u);
LABEL_310:
          __break(1u);
LABEL_311:
          __break(1u);
LABEL_312:
          __break(1u);
LABEL_313:
          __break(1u);
          goto LABEL_314;
        }

        lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
        v316 = swift_allocError();
        swift_willThrow();
        goto LABEL_263;
      case 3uLL:
        CopyWithAttributes = v25;
        v149 = v64;

        if ((v149 & 7) != 2)
        {
          goto LABEL_261;
        }

        v151 = ProtobufDecoder.decodeVarint()(v150);
        if (v25)
        {
          v316 = v25;
          goto LABEL_264;
        }

        CopyWithAttributes = v151;
        if (v151 < 0)
        {
          goto LABEL_297;
        }

        v152 = *(a1 + 8);
        if (v21 < v152 + v151)
        {
          goto LABEL_261;
        }

        *(a1 + 8) = v152 + v151;
        if (v151)
        {
          v153 = v152 - [*a1 bytes];
          v154 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v156 = v155;
          if (__OFADD__(v153, CopyWithAttributes))
          {
            goto LABEL_309;
          }

          if ((v153 + CopyWithAttributes) < v153)
          {
            goto LABEL_312;
          }

          v157 = v154;
          CopyWithAttributes = Data._Representation.subscript.getter();
          v106 = v158;
          outlined consume of Data._Representation(v157, v156);
        }

        else
        {
          v106 = 0xC000000000000000;
        }

        static String.Encoding.utf8.getter();
        v309 = String.init(data:encoding:)();
        v313 = v259;
        if (!v259)
        {
LABEL_288:

          lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
          v316 = swift_allocError();
          swift_willThrow();
          outlined consume of Data._Representation(CopyWithAttributes, v106);
          goto LABEL_265;
        }

LABEL_226:
        outlined consume of Data._Representation(CopyWithAttributes, v106);
        v25 = 0;
        goto LABEL_30;
      case 4uLL:
        if ((v64 & 7) == 0)
        {
          goto LABEL_125;
        }

        if ((v64 & 7) != 2)
        {
          goto LABEL_260;
        }

        v64 = ProtobufDecoder.decodeVarint()(v64);
        if (v25)
        {
          goto LABEL_262;
        }

        if ((v64 & 0x8000000000000000) != 0)
        {
          goto LABEL_319;
        }

        v161 = *(a1 + 8) + v64;
        if (v21 < v161)
        {
          goto LABEL_260;
        }

        *(a1 + 24) = 32;
        *(a1 + 32) = v161;
LABEL_125:
        v162 = ProtobufDecoder.decodeVarint()(v64);
        if (v25)
        {
          goto LABEL_262;
        }

        v300 = v162;
        goto LABEL_30;
      case 5uLL:
        CopyWithAttributes = v25;
        v96 = v64;

        if ((v96 & 7) != 2)
        {
          goto LABEL_261;
        }

        v98 = ProtobufDecoder.decodeVarint()(v97);
        if (v25)
        {
          v316 = v25;
          goto LABEL_264;
        }

        CopyWithAttributes = v98;
        if (v98 < 0)
        {
          goto LABEL_296;
        }

        v99 = *(a1 + 8);
        if (v21 < v99 + v98)
        {
          goto LABEL_261;
        }

        *(a1 + 8) = v99 + v98;
        if (v98)
        {
          v100 = v99 - [*a1 bytes];
          v101 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v103 = v102;
          if (__OFADD__(v100, CopyWithAttributes))
          {
            goto LABEL_310;
          }

          if ((v100 + CopyWithAttributes) < v100)
          {
            goto LABEL_313;
          }

          v104 = v101;
          CopyWithAttributes = Data._Representation.subscript.getter();
          v106 = v105;
          outlined consume of Data._Representation(v104, v103);
        }

        else
        {
          v106 = 0xC000000000000000;
        }

        static String.Encoding.utf8.getter();
        v307 = String.init(data:encoding:)();
        v315 = v242;
        if (!v242)
        {
          goto LABEL_288;
        }

        goto LABEL_226;
      case 6uLL:
        if ((v64 & 7) == 0)
        {
          goto LABEL_164;
        }

        if ((v64 & 7) != 2)
        {
          goto LABEL_260;
        }

        v64 = ProtobufDecoder.decodeVarint()(v64);
        if (v25)
        {
          goto LABEL_262;
        }

        if ((v64 & 0x8000000000000000) != 0)
        {
          goto LABEL_317;
        }

        v193 = *(a1 + 8) + v64;
        if (v21 < v193)
        {
          goto LABEL_260;
        }

        *(a1 + 24) = 48;
        *(a1 + 32) = v193;
LABEL_164:
        v194 = ProtobufDecoder.decodeVarint()(v64);
        if (v25)
        {
          goto LABEL_262;
        }

        v308 = v194;
        goto LABEL_30;
      case 7uLL:
        v205 = v64 & 7;
        if (v205 == 5)
        {
          v261 = *(a1 + 8);
          if (v21 < (v261 + 1))
          {
            goto LABEL_260;
          }

          v262 = *v261;
          *(a1 + 8) = v261 + 1;
          v22 = v262;
        }

        else
        {
          if (v205 == 2)
          {
            v260 = ProtobufDecoder.decodeVarint()(v64);
            if (v25)
            {
              goto LABEL_262;
            }

            if (v260 < 0)
            {
              goto LABEL_324;
            }

            v206 = *(a1 + 8);
            if (v21 < v206 + v260)
            {
              goto LABEL_260;
            }

            *(a1 + 24) = 57;
            *(a1 + 32) = v206 + v260;
          }

          else
          {
            if (v205 != 1)
            {
              goto LABEL_260;
            }

            v206 = *(a1 + 8);
          }

          if (v21 < (v206 + 1))
          {
            goto LABEL_260;
          }

          v22 = *v206;
          *(a1 + 8) = v206 + 1;
        }

        goto LABEL_30;
      case 8uLL:
        if ((v64 & 7) != 2)
        {
          goto LABEL_260;
        }

        CopyWithAttributes = *(a1 + 40);
        v163 = swift_isUniquelyReferenced_nonNull_native();
        if ((v163 & 1) == 0)
        {
          v163 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(CopyWithAttributes + 16) + 1, 1, CopyWithAttributes);
          CopyWithAttributes = v163;
        }

        v165 = *(CopyWithAttributes + 16);
        v164 = *(CopyWithAttributes + 24);
        if (v165 >= v164 >> 1)
        {
          v163 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v164 > 1), v165 + 1, 1, CopyWithAttributes);
          CopyWithAttributes = v163;
        }

        *(CopyWithAttributes + 16) = v165 + 1;
        *(CopyWithAttributes + 8 * v165 + 32) = v21;
        *(a1 + 40) = CopyWithAttributes;
        v166 = ProtobufDecoder.decodeVarint()(v163);
        if (v25)
        {
          goto LABEL_262;
        }

        if (v166 < 0)
        {
          goto LABEL_294;
        }

        v167 = *(a1 + 8) + v166;
        if (v21 < v167)
        {
          goto LABEL_260;
        }

        *(a1 + 16) = v167;
        specialized CodableFontTraits.init(from:)(a1);
        v169 = *(a1 + 40);
        if (!*(v169 + 2))
        {
          goto LABEL_302;
        }

        v170 = v168;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v171 = *(v169 + 2);
          if (!v171)
          {
            goto LABEL_304;
          }
        }

        else
        {
          v169 = specialized _ArrayBuffer._consumeAndCreateNew()(v169);
          v171 = *(v169 + 2);
          if (!v171)
          {
            goto LABEL_304;
          }
        }

        v172 = v171 - 1;
        v173 = *&v169[8 * v172 + 32];
        *(v169 + 2) = v172;
        *(a1 + 40) = v169;
        *(a1 + 16) = v173;
        *(&v318 + 1) = type metadata accessor for CAMediaTimingFunction(0, &lazy cache variable for type metadata for NSDictionary, 0x1E695DF20);
        *&v317 = v170;
        outlined init with take of Any(&v317, &v319);
        CopyWithAttributes = v170;
        v174 = swift_isUniquelyReferenced_nonNull_native();
        v323 = v24;
        v175 = specialized __RawDictionaryStorage.find<A>(_:)(v301);
        v177 = v24[2];
        v178 = (v176 & 1) == 0;
        v61 = __OFADD__(v177, v178);
        v179 = v177 + v178;
        if (v61)
        {
          goto LABEL_307;
        }

        v180 = v176;
        if (v24[3] < v179)
        {
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v179, v174);
          v175 = specialized __RawDictionaryStorage.find<A>(_:)(v301);
          if ((v180 & 1) != (v181 & 1))
          {
            goto LABEL_330;
          }

LABEL_209:
          v24 = v323;
          if (v180)
          {
            goto LABEL_210;
          }

          goto LABEL_258;
        }

        if (v174)
        {
          goto LABEL_209;
        }

        v272 = v175;
        specialized _NativeDictionary.copy()();
        v175 = v272;
        v24 = v323;
        if (v180)
        {
LABEL_210:
          v241 = (v24[7] + 32 * v175);
          __swift_destroy_boxed_opaque_existential_1(v241);
          outlined init with take of Any(&v319, v241);

          goto LABEL_30;
        }

LABEL_258:
        v24[(v175 >> 6) + 8] |= 1 << v175;
        v273 = v301;
        *(v24[6] + 8 * v175) = v301;
        outlined init with take of Any(&v319, (v24[7] + 32 * v175));
        v274 = v273;

        v275 = v24[2];
        v61 = __OFADD__(v275, 1);
        v276 = v275 + 1;
        if (v61)
        {
          goto LABEL_323;
        }

        v24[2] = v276;
        goto LABEL_30;
      case 9uLL:
        v299 = v24;
        v215 = *a1;
        CopyWithAttributes = *(a1 + 48);
        *&v317 = v64;
        v216 = v215;

        v217 = ProtobufDecoder.dataField(_:)(&v317);
        v316 = v25;
        if (v25)
        {

          outlined consume of Data?(v314, v23);

          v283 = v16;
          goto LABEL_276;
        }

        v219 = v217;
        v220 = v218;
        v221 = v16;
        v222 = v216;
        v223 = v221;
        v291 = v23;
        type metadata accessor for PropertyListDecoder();
        swift_allocObject();
        PropertyListDecoder.init()();

        dispatch thunk of PropertyListDecoder.userInfo.setter();
        type metadata accessor for [JSONCodable<CFArrayRef>](0);
        lazy protocol witness table accessor for type [JSONCodable<CFArrayRef>] and conformance <A> [A](&lazy protocol witness table cache variable for type [JSONCodable<CFArrayRef>] and conformance <A> [A], type metadata accessor for [JSONCodable<CFArrayRef>], lazy protocol witness table accessor for type JSONCodable<CFArrayRef> and conformance JSONCodable<A>);
        v224 = v316;
        dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
        v316 = v224;
        if (v224)
        {
          goto LABEL_285;
        }

        if (*(v317 + 16))
        {
          v225 = *(v317 + 32);

          outlined consume of Data._Representation(v219, v220);

          type metadata accessor for CFArrayRef(0);
          *(&v318 + 1) = v226;
          *&v317 = v225;
          outlined init with take of Any(&v317, &v319);
          CopyWithAttributes = v225;
          v227 = v299;
          v228 = swift_isUniquelyReferenced_nonNull_native();
          v323 = v227;
          v229 = specialized __RawDictionaryStorage.find<A>(_:)(v303);
          v231 = v227[2];
          v232 = (v230 & 1) == 0;
          v61 = __OFADD__(v231, v232);
          v233 = v231 + v232;
          if (v61)
          {
            goto LABEL_300;
          }

          v234 = v230;
          v23 = v291;
          if (v227[3] >= v233)
          {
            if ((v228 & 1) == 0)
            {
              v267 = v229;
              specialized _NativeDictionary.copy()();
              v229 = v267;
              v24 = v323;
              if (v234)
              {
                goto LABEL_207;
              }

              goto LABEL_253;
            }
          }

          else
          {
            specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v233, v228);
            v229 = specialized __RawDictionaryStorage.find<A>(_:)(v303);
            if ((v234 & 1) != (v235 & 1))
            {
              goto LABEL_330;
            }
          }

          v24 = v323;
          if (v234)
          {
LABEL_207:
            v240 = (v24[7] + 32 * v229);
            __swift_destroy_boxed_opaque_existential_1(v240);
            outlined init with take of Any(&v319, v240);

            goto LABEL_255;
          }

LABEL_253:
          v24[(v229 >> 6) + 8] |= 1 << v229;
          v268 = v303;
          *(v24[6] + 8 * v229) = v303;
          outlined init with take of Any(&v319, (v24[7] + 32 * v229));
          v269 = v268;

          v270 = v24[2];
          v61 = __OFADD__(v270, 1);
          v271 = v270 + 1;
          if (v61)
          {
            goto LABEL_321;
          }

          v24[2] = v271;
LABEL_255:
          v25 = v316;
LABEL_256:
          v16 = v305;
          goto LABEL_30;
        }

        lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
        v316 = swift_allocError();
        swift_willThrow();
LABEL_285:

        outlined consume of Data?(v314, v291);

        outlined consume of Data._Representation(v219, v220);
        v283 = v223;
LABEL_276:
        outlined destroy of ResolvableTextSegmentAttribute.Value?(v283, type metadata accessor for URL?);

        return CopyWithAttributes;
      case 0xAuLL:
        v116 = *(a1 + 16);
        v321[0] = *a1;
        v321[1] = v116;
        v321[2] = *(a1 + 32);
        v322 = *(a1 + 48);
        v323 = v64;
        CopyWithAttributes = v25;
        outlined init with copy of ProtobufDecoder(v321, &v317);
        v117 = ProtobufDecoder.dataField(_:)(&v323);
        if (!v25)
        {
          v119 = v117;
          v120 = v118;
          _s7SwiftUI15ProtobufDecoderV5value15fromBinaryPlist4typex10Foundation4DataV_xmtKSeRzlFAA11JSONCodableVySDySSSdGG_Tt1B5(&v319);
          v316 = 0;
          v291 = v23;
          v299 = v24;
          outlined consume of Data._Representation(v119, v120);
          outlined destroy of ProtobufDecoder(v321);
          v121 = v319;
          v122 = v319 + 64;
          v123 = 1 << *(v319 + 32);
          if (v123 < 64)
          {
            v124 = ~(-1 << v123);
          }

          else
          {
            v124 = -1;
          }

          v125 = v124 & *(v319 + 64);
          v126 = (v123 + 63) >> 6;

          v127 = 0;
          for (i = MEMORY[0x1E69E7CC8]; v125; v127 = v129)
          {
            v129 = v127;
LABEL_95:
            v130 = __clz(__rbit64(v125));
            v125 &= v125 - 1;
            v131 = v130 | (v129 << 6);
            v132 = (*(v121 + 48) + 16 * v131);
            v134 = *v132;
            v133 = v132[1];
            v135 = *(*(v121 + 56) + 8 * v131);
            swift_bridgeObjectRetain_n();
            v136 = _ss17FixedWidthIntegerPsEyxSgSScfCSi_Tt1g5(v134, v133);
            if ((v137 & 1) == 0)
            {
              v138 = v136;
              LODWORD(v286) = swift_isUniquelyReferenced_nonNull_native();
              *&v317 = i;
              v287 = v138;
              v139 = specialized __RawDictionaryStorage.find<A>(_:)(v138);
              v141 = i[2];
              v142 = (v140 & 1) == 0;
              v61 = __OFADD__(v141, v142);
              v143 = v141 + v142;
              if (v61)
              {
                goto LABEL_326;
              }

              v144 = v140;
              if (i[3] >= v143)
              {
                if ((v286 & 1) == 0)
                {
                  v286 = v139;
                  specialized _NativeDictionary.copy()();
                  v139 = v286;
                }
              }

              else
              {
                specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v143, v286);
                v139 = specialized __RawDictionaryStorage.find<A>(_:)(v287);
                if ((v144 & 1) != (v145 & 1))
                {
                  goto LABEL_329;
                }
              }

              v146 = v287;
              i = v317;
              if (v144)
              {
                *(*(v317 + 56) + 8 * v139) = v135;
              }

              else
              {
                *(v317 + 8 * (v139 >> 6) + 64) |= 1 << v139;
                *(i[6] + 8 * v139) = v146;
                *(i[7] + 8 * v139) = v135;
                v147 = i[2];
                v61 = __OFADD__(v147, 1);
                v148 = v147 + 1;
                if (v61)
                {
                  goto LABEL_327;
                }

                i[2] = v148;
              }
            }
          }

          while (1)
          {
            v129 = v127 + 1;
            if (__OFADD__(v127, 1))
            {
              break;
            }

            if (v129 >= v126)
            {

              type metadata accessor for [Int : CGFloat](0, &lazy cache variable for type metadata for [Int : CGFloat], MEMORY[0x1E69E6530], MEMORY[0x1E69E7DE0], MEMORY[0x1E69E6540]);
              *(&v318 + 1) = v236;
              *&v317 = i;
              outlined init with take of Any(&v317, &v319);
              CopyWithAttributes = v299;
              v237 = swift_isUniquelyReferenced_nonNull_native();
              v323 = CopyWithAttributes;
              specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v319, v292, v237);
              v24 = v323;
              v25 = v316;
              v16 = v305;
              v23 = v291;
              goto LABEL_30;
            }

            v125 = *(v122 + 8 * v129);
            ++v127;
            if (v125)
            {
              goto LABEL_95;
            }
          }

          __break(1u);
LABEL_290:
          __break(1u);
LABEL_291:
          __break(1u);
LABEL_292:
          __break(1u);
LABEL_293:
          __break(1u);
LABEL_294:
          __break(1u);
LABEL_295:
          __break(1u);
LABEL_296:
          __break(1u);
LABEL_297:
          __break(1u);
LABEL_298:
          __break(1u);
LABEL_299:
          __break(1u);
LABEL_300:
          __break(1u);
LABEL_301:
          __break(1u);
LABEL_302:
          __break(1u);
          goto LABEL_303;
        }

        v316 = v25;

        outlined consume of Data?(v314, v23);
        outlined destroy of ProtobufDecoder(v321);
        goto LABEL_275;
      case 0xBuLL:
        *&v317 = v64;
        v207 = ProtobufDecoder.doubleField(_:)(&v317);
        v316 = v208;
        if (v208)
        {
          goto LABEL_263;
        }

        *(&v318 + 1) = MEMORY[0x1E69E63B0];
        *&v317 = v207;
        outlined init with take of Any(&v317, &v319);
        v209 = swift_isUniquelyReferenced_nonNull_native();
        v323 = v24;
        v79 = v298;
        v90 = specialized __RawDictionaryStorage.find<A>(_:)(v298);
        v211 = v24[2];
        v212 = (v210 & 1) == 0;
        v61 = __OFADD__(v211, v212);
        v213 = v211 + v212;
        if (v61)
        {
          goto LABEL_290;
        }

        CopyWithAttributes = v210;
        if (v24[3] >= v213)
        {
          if ((v209 & 1) == 0)
          {
            v264 = v90;
            specialized _NativeDictionary.copy()();
            v90 = v264;
            v79 = v298;
            v24 = v323;
            if ((CopyWithAttributes & 1) == 0)
            {
LABEL_195:
              v24[(v90 >> 6) + 8] |= 1 << v90;
              *(v24[6] + 8 * v90) = v79;
              outlined init with take of Any(&v319, (v24[7] + 32 * v90));
              v238 = v24[2];
              v61 = __OFADD__(v238, 1);
              v62 = v238 + 1;
              if (v61)
              {
LABEL_314:
                __break(1u);
LABEL_315:
                __break(1u);
LABEL_316:
                __break(1u);
LABEL_317:
                __break(1u);
LABEL_318:
                __break(1u);
LABEL_319:
                __break(1u);
LABEL_320:
                __break(1u);
LABEL_321:
                __break(1u);
LABEL_322:
                __break(1u);
LABEL_323:
                __break(1u);
LABEL_324:
                __break(1u);
LABEL_325:
                __break(1u);
LABEL_326:
                __break(1u);
LABEL_327:
                __break(1u);
                __break(1u);
                goto LABEL_328;
              }

              goto LABEL_28;
            }

            goto LABEL_203;
          }
        }

        else
        {
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v213, v209);
          v90 = specialized __RawDictionaryStorage.find<A>(_:)(v79);
          if ((CopyWithAttributes & 1) != (v214 & 1))
          {
            goto LABEL_330;
          }
        }

        v24 = v323;
        if ((CopyWithAttributes & 1) == 0)
        {
          goto LABEL_195;
        }

        goto LABEL_203;
      case 0xCuLL:
        if ((v64 & 7) == 0)
        {
          goto LABEL_65;
        }

        if ((v64 & 7) != 2)
        {
          goto LABEL_260;
        }

        v64 = ProtobufDecoder.decodeVarint()(v64);
        if (v25)
        {
          goto LABEL_262;
        }

        if ((v64 & 0x8000000000000000) != 0)
        {
          goto LABEL_318;
        }

        v87 = *(a1 + 8) + v64;
        if (v21 < v87)
        {
          goto LABEL_260;
        }

        *(a1 + 24) = 96;
        *(a1 + 32) = v87;
LABEL_65:
        v88 = ProtobufDecoder.decodeVarint()(v64);
        v316 = v25;
        v79 = v293;
        if (v25)
        {
          goto LABEL_263;
        }

        *(&v318 + 1) = MEMORY[0x1E69E6530];
        *&v317 = -(v88 & 1) ^ (v88 >> 1);
        outlined init with take of Any(&v317, &v319);
        v89 = swift_isUniquelyReferenced_nonNull_native();
        v323 = v24;
        v90 = specialized __RawDictionaryStorage.find<A>(_:)(v79);
        v92 = v24[2];
        v93 = (v91 & 1) == 0;
        v61 = __OFADD__(v92, v93);
        v94 = v92 + v93;
        if (v61)
        {
          goto LABEL_299;
        }

        CopyWithAttributes = v91;
        if (v24[3] >= v94)
        {
          if ((v89 & 1) == 0)
          {
            v265 = v90;
            specialized _NativeDictionary.copy()();
            v90 = v265;
            v79 = v293;
            v24 = v323;
            if (CopyWithAttributes)
            {
              goto LABEL_203;
            }

            goto LABEL_249;
          }
        }

        else
        {
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v94, v89);
          v90 = specialized __RawDictionaryStorage.find<A>(_:)(v79);
          if ((CopyWithAttributes & 1) != (v95 & 1))
          {
            goto LABEL_330;
          }
        }

        v24 = v323;
        if (CopyWithAttributes)
        {
LABEL_203:
          CopyWithAttributes = v24[7] + 32 * v90;
          goto LABEL_204;
        }

LABEL_249:
        v24[(v90 >> 6) + 8] |= 1 << v90;
        *(v24[6] + 8 * v90) = v79;
        outlined init with take of Any(&v319, (v24[7] + 32 * v90));
        v266 = v24[2];
        v61 = __OFADD__(v266, 1);
        v62 = v266 + 1;
        if (v61)
        {
          goto LABEL_320;
        }

LABEL_28:
        v24[2] = v62;
        v63 = v79;
LABEL_29:
        v25 = v316;
        goto LABEL_30;
      case 0xDuLL:
        if ((v64 & 7) != 2)
        {
          goto LABEL_260;
        }

        v107 = ProtobufDecoder.decodeVarint()(v64);
        if (v25)
        {
          goto LABEL_262;
        }

        CopyWithAttributes = v107;
        if (v107 < 0)
        {
          goto LABEL_293;
        }

        v108 = *(a1 + 8);
        if (v21 < v108 + v107)
        {
          goto LABEL_260;
        }

        *(a1 + 8) = v108 + v107;
        if (v107)
        {
          v109 = v108 - [*a1 bytes];
          v110 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v112 = v111;
          if (__OFADD__(v109, CopyWithAttributes))
          {
            goto LABEL_308;
          }

          if ((v109 + CopyWithAttributes) < v109)
          {
            goto LABEL_311;
          }

          v113 = v110;
          CopyWithAttributes = Data._Representation.subscript.getter();
          v115 = v114;
          outlined consume of Data._Representation(v113, v112);
        }

        else
        {
          v115 = 0xC000000000000000;
        }

        static String.Encoding.utf8.getter();
        v243 = String.init(data:encoding:)();
        if (!v244)
        {

          lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
          v316 = swift_allocError();
          swift_willThrow();
          outlined consume of Data._Representation(CopyWithAttributes, v115);
          outlined consume of Data?(v314, v23);
          v283 = v305;
          goto LABEL_276;
        }

        v245 = v243;
        v246 = v244;
        outlined consume of Data._Representation(CopyWithAttributes, v115);
        *(&v318 + 1) = MEMORY[0x1E69E6158];
        *&v317 = v245;
        *(&v317 + 1) = v246;
        outlined init with take of Any(&v317, &v319);
        v247 = swift_isUniquelyReferenced_nonNull_native();
        v323 = v24;
        v248 = v290;
        v249 = specialized __RawDictionaryStorage.find<A>(_:)(v290);
        v251 = v250;
        v252 = v24[2];
        v253 = (v250 & 1) == 0;
        if (__OFADD__(v252, v253))
        {
          goto LABEL_306;
        }

        CopyWithAttributes = v249;
        if (specialized _NativeDictionary.ensureUnique(isUnique:capacity:)(v247, v252 + v253, specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:), specialized _NativeDictionary.copy()))
        {
          v254 = specialized __RawDictionaryStorage.find<A>(_:)(v248);
          if ((v251 & 1) != (v255 & 1))
          {
            goto LABEL_330;
          }

          CopyWithAttributes = v254;
        }

        v24 = v323;
        if (v251)
        {
          CopyWithAttributes = v323[7] + 32 * CopyWithAttributes;
          __swift_destroy_boxed_opaque_existential_1(CopyWithAttributes);
          outlined init with take of Any(&v319, CopyWithAttributes);
        }

        else
        {
          v323[(CopyWithAttributes >> 6) + 8] |= 1 << CopyWithAttributes;
          *(v24[6] + 8 * CopyWithAttributes) = v248;
          outlined init with take of Any(&v319, (v24[7] + 32 * CopyWithAttributes));
          v256 = v24[2];
          v61 = __OFADD__(v256, 1);
          v257 = v256 + 1;
          if (v61)
          {
            goto LABEL_322;
          }

          v24[2] = v257;
          v258 = v248;
        }

        goto LABEL_256;
      case 0xEuLL:
        *&v317 = v64;
        v195 = ProtobufDecoder.doubleField(_:)(&v317);
        v316 = v196;
        if (v196)
        {
          goto LABEL_263;
        }

        *(&v318 + 1) = MEMORY[0x1E69E63B0];
        *&v317 = v195;
        outlined init with take of Any(&v317, &v319);
        v197 = swift_isUniquelyReferenced_nonNull_native();
        v323 = v24;
        v79 = v294;
        v198 = specialized __RawDictionaryStorage.find<A>(_:)(v294);
        v200 = v199;
        v201 = v24[2];
        v202 = (v199 & 1) == 0;
        if (__OFADD__(v201, v202))
        {
          goto LABEL_291;
        }

        CopyWithAttributes = v198;
        if ((specialized _NativeDictionary.ensureUnique(isUnique:capacity:)(v197, v201 + v202, specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:), specialized _NativeDictionary.copy()) & 1) == 0)
        {
          goto LABEL_171;
        }

        v203 = specialized __RawDictionaryStorage.find<A>(_:)(v79);
        if ((v200 & 1) != (v204 & 1))
        {
          goto LABEL_330;
        }

        CopyWithAttributes = v203;
LABEL_171:
        v24 = v323;
        if (v200)
        {
          goto LABEL_172;
        }

        v323[(CopyWithAttributes >> 6) + 8] |= 1 << CopyWithAttributes;
        *(v24[6] + 8 * CopyWithAttributes) = v79;
        outlined init with take of Any(&v319, (v24[7] + 32 * CopyWithAttributes));
        v239 = v24[2];
        v61 = __OFADD__(v239, 1);
        v62 = v239 + 1;
        if (!v61)
        {
          goto LABEL_28;
        }

        goto LABEL_316;
      case 0xFuLL:
        *&v317 = v64;
        v76 = ProtobufDecoder.doubleField(_:)(&v317);
        v316 = v77;
        if (v77)
        {
          goto LABEL_263;
        }

        *(&v318 + 1) = MEMORY[0x1E69E7DE0];
        *&v317 = v76;
        outlined init with take of Any(&v317, &v319);
        v78 = swift_isUniquelyReferenced_nonNull_native();
        v323 = v24;
        v79 = v295;
        v80 = specialized __RawDictionaryStorage.find<A>(_:)(v295);
        v82 = v81;
        v83 = v24[2];
        v84 = (v81 & 1) == 0;
        if (__OFADD__(v83, v84))
        {
          goto LABEL_292;
        }

        CopyWithAttributes = v80;
        if ((specialized _NativeDictionary.ensureUnique(isUnique:capacity:)(v78, v83 + v84, specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:), specialized _NativeDictionary.copy()) & 1) == 0)
        {
          goto LABEL_57;
        }

        v85 = specialized __RawDictionaryStorage.find<A>(_:)(v79);
        if ((v82 & 1) != (v86 & 1))
        {
          goto LABEL_330;
        }

        CopyWithAttributes = v85;
LABEL_57:
        v24 = v323;
        if (v82)
        {
LABEL_172:
          CopyWithAttributes = v24[7] + 32 * CopyWithAttributes;
LABEL_204:
          __swift_destroy_boxed_opaque_existential_1(CopyWithAttributes);
          outlined init with take of Any(&v319, CopyWithAttributes);
          goto LABEL_29;
        }

        v323[(CopyWithAttributes >> 6) + 8] |= 1 << CopyWithAttributes;
        *(v24[6] + 8 * CopyWithAttributes) = v79;
        outlined init with take of Any(&v319, (v24[7] + 32 * CopyWithAttributes));
        v60 = v24[2];
        v61 = __OFADD__(v60, 1);
        v62 = v60 + 1;
        if (v61)
        {
          goto LABEL_315;
        }

        goto LABEL_28;
      case 0x10uLL:
        *&v317 = v64;
        v159 = ProtobufDecoder.uintField(_:)(&v317);
        v316 = v160;
        if (v160)
        {
          goto LABEL_263;
        }

        *(&v318 + 1) = MEMORY[0x1E69E7668];
        LODWORD(v317) = v159;
        outlined init with take of Any(&v317, &v319);
        v74 = swift_isUniquelyReferenced_nonNull_native();
        v323 = v24;
        v75 = &v320;
        goto LABEL_118;
      case 0x11uLL:
        *&v317 = v64;
        v72 = ProtobufDecoder.uintField(_:)(&v317);
        v316 = v73;
        if (v73)
        {
          goto LABEL_263;
        }

        *(&v318 + 1) = MEMORY[0x1E69E7668];
        LODWORD(v317) = v72;
        outlined init with take of Any(&v317, &v319);
        v74 = swift_isUniquelyReferenced_nonNull_native();
        v323 = v24;
        v75 = v321;
LABEL_118:
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v319, *(v75 - 32), v74);
        v24 = v323;
        goto LABEL_29;
      default:
        v191 = v64 & 7;
        if (v191 > 1)
        {
          if (v191 == 2)
          {
            v263 = ProtobufDecoder.decodeVarint()(v64);
            if (v25)
            {
LABEL_262:
              v316 = v25;
LABEL_263:

LABEL_264:

              goto LABEL_265;
            }

            if (v263 < 0)
            {
              goto LABEL_325;
            }

            v192 = *(a1 + 8) + v263;
          }

          else
          {
            if (v191 != 5)
            {
              goto LABEL_260;
            }

            v192 = *(a1 + 8) + 4;
          }
        }

        else
        {
          if ((v64 & 7) == 0)
          {
            ProtobufDecoder.decodeVarint()(v64);
            if (v25)
            {
              goto LABEL_262;
            }

            goto LABEL_30;
          }

          if (v191 != 1)
          {
            goto LABEL_260;
          }

          v192 = *(a1 + 8) + 8;
        }

        if (v21 < v192)
        {
          goto LABEL_260;
        }

        *(a1 + 8) = v192;
LABEL_30:
        v20 = *(a1 + 8);
        v21 = *(a1 + 16);
        if (v20 >= v21)
        {
          v316 = v25;
LABEL_4:
          *(a1 + 24) = 0;
          v26 = v310;
          outlined init with copy of ResolvableTextSegmentAttribute.Value(v16, v310, type metadata accessor for URL?);
          v27 = v311;
          v28 = v312;
          if ((*(v311 + 48))(v26, 1, v312) == 1)
          {
            outlined destroy of ResolvableTextSegmentAttribute.Value?(v26, type metadata accessor for URL?);
            v29 = v314;
            v30 = v313;
            v31 = v315;
            if (v23 >> 60 == 15)
            {
              if (v313)
              {
                v32 = v16;
                v33 = v23;
                v34._countAndFlagsBits = 0x534E46532ELL;
                v34._object = 0xE500000000000000;
                v35 = v309;
                if (String.hasPrefix(_:)(v34))
                {
                  v36 = String.count.getter();
                  v37 = specialized Collection.dropFirst(_:)(v36, v35, v30);
                  v39 = v38;
                  v41 = v40;
                  v43 = v42;

                  *&v319 = 0x495546532ELL;
                  *(&v319 + 1) = 0xE500000000000000;
                  *&v317 = v37;
                  *(&v317 + 1) = v39;
                  *&v318 = v41;
                  *(&v318 + 1) = v43;
                  lazy protocol witness table accessor for type Substring and conformance Substring();
                  String.append<A>(contentsOf:)();

                  v30 = *(&v319 + 1);
                  v35 = v319;
                }

                v44 = *MEMORY[0x1E6965808];
                *(&v318 + 1) = MEMORY[0x1E69E6158];
                *&v317 = v35;
                *(&v317 + 1) = v30;
                outlined init with take of Any(&v317, &v319);
                v45 = swift_isUniquelyReferenced_nonNull_native();
                v323 = v24;
                specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v319, v44, v45);
                v23 = v33;
                v16 = v32;
                v29 = v314;
                v31 = v315;
              }

              goto LABEL_22;
            }

            if (v313)
            {
              outlined copy of Data._Representation(v314, v23);

              if (v24[2] && (v52 = specialized __RawDictionaryStorage.find<A>(_:)(*MEMORY[0x1E69658F8]), (v53 & 1) != 0))
              {
                outlined init with copy of Any(v24[7] + 32 * v52, &v317);
                outlined destroy of CodableAttributedString.Range.DecodingWrapper<TimeDataFormatting>(&v317, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], _sypSgMaTm_1);
                isa = Data._bridgeToObjectiveC()().super.isa;
                FontDescriptorFromData = CTFontManagerCreateFontDescriptorFromData(isa);

                if (FontDescriptorFromData)
                {

                  type metadata accessor for CFStringRef(0);
                  lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(&lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef, type metadata accessor for CFStringRef, protocol conformance descriptor for CFStringRef);
                  v56 = Dictionary._bridgeToObjectiveC()().super.isa;
                  CopyWithAttributes = CTFontDescriptorCreateCopyWithAttributes(FontDescriptorFromData, v56);
                  outlined consume of Data?(v29, v23);

                  goto LABEL_25;
                }
              }

              else
              {
                v317 = 0u;
                v318 = 0u;
                outlined destroy of CodableAttributedString.Range.DecodingWrapper<TimeDataFormatting>(&v317, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], _sypSgMaTm_1);
              }

              v278 = Data._bridgeToObjectiveC()().super.isa;
              FontDescriptorsFromData = CTFontManagerCreateFontDescriptorsFromData(v278);

              objc_opt_self();
              swift_dynamicCastObjCClassUnconditional();
              *&v317 = 0;
              type metadata accessor for CTFontDescriptorRef(0);
              static Array._forceBridgeFromObjectiveC(_:result:)();
              v280 = v317;
              if (!v317)
              {
LABEL_328:
                __break(1u);
LABEL_329:
                KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
                __break(1u);
LABEL_330:
                type metadata accessor for CFStringRef(0);
                KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
                __break(1u);
                JUMPOUT(0x18D367C24);
              }

              CopyWithAttributes = specialized static CodablePlatformFont.fontDescriptor(from:matching:with:)(v280, v309, v30, v24);

              if (CopyWithAttributes)
              {
                outlined consume of Data?(v29, v23);
                goto LABEL_272;
              }

              outlined consume of Data?(v29, v23);
              lazy protocol witness table accessor for type CodablePlatformFont.Error and conformance CodablePlatformFont.Error();
              v316 = swift_allocError();
              swift_willThrow();
              v277 = v29;
              goto LABEL_266;
            }

LABEL_22:
            if (v31)
            {
              v57 = MEMORY[0x193ABEC20](v307, v31);

              v58 = CTFontDescriptorGetContentSizeCategoryFromIndex();
              type metadata accessor for CFStringRef(0);
              lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(&lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef, type metadata accessor for CFStringRef, protocol conformance descriptor for CFStringRef);
              v59 = Dictionary._bridgeToObjectiveC()().super.isa;
              CopyWithAttributes = CTFontDescriptorCreateWithTextStyleAndAttributes();

              goto LABEL_272;
            }

            type metadata accessor for CFStringRef(0);
            lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(&lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef, type metadata accessor for CFStringRef, protocol conformance descriptor for CFStringRef);
            FontDescriptorFromData = Dictionary._bridgeToObjectiveC()().super.isa;
            CopyWithAttributes = CTFontDescriptorCreateWithAttributesAndOptions();
LABEL_25:

            goto LABEL_272;
          }

          v46 = v306;
          (*(v27 + 32))(v306, v26, v28);
          v29 = v314;
          v47 = v27;
          v48 = v313;
          v31 = v315;
          if (!v313)
          {
            (*(v47 + 8))(v46, v28);
            goto LABEL_22;
          }

          URL._bridgeToObjectiveC()(v49);
          v51 = v50;
          CopyWithAttributes = CTFontManagerCreateFontDescriptorsFromURL(v50);

          if (CopyWithAttributes)
          {
            objc_opt_self();
            if (!swift_dynamicCastObjCClass())
            {

              goto LABEL_274;
            }

            *&v317 = 0;
            type metadata accessor for CTFontDescriptorRef(0);
            static Array._conditionallyBridgeFromObjectiveC(_:result:)();

            if (v317)
            {
              CopyWithAttributes = specialized static CodablePlatformFont.fontDescriptor(from:matching:with:)(v317, v309, v48, v24);

              if (CopyWithAttributes)
              {
                (*(v311 + 8))(v46, v312);
LABEL_272:
                v281 = CopyWithAttributes;
                CopyWithAttributes = CTFontCreateWithFontDescriptor(v281, v22, 0);

                outlined consume of Data?(v29, v23);
                outlined destroy of ResolvableTextSegmentAttribute.Value?(v16, type metadata accessor for URL?);

                return CopyWithAttributes;
              }

              goto LABEL_274;
            }
          }

LABEL_274:
          lazy protocol witness table accessor for type CodablePlatformFont.Error and conformance CodablePlatformFont.Error();
          v316 = swift_allocError();
          swift_willThrow();
          v282 = outlined consume of Data?(v29, v23);
          (*(v311 + 8))(v46, v312, v282);
          goto LABEL_275;
        }

        continue;
    }
  }
}

Swift::UInt64 __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ProtobufDecoder.uint64Field(_:)(Swift::UInt64 result)
{
  v3 = *result;
  if ((*result & 7) == 0)
  {
    return ProtobufDecoder.decodeVarint()(result);
  }

  if ((*result & 7) != 2)
  {
LABEL_6:
    lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
    swift_allocError();
    return swift_willThrow();
  }

  result = ProtobufDecoder.decodeVarint()(result);
  if (!v2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
      return result;
    }

    v4 = v1[1] + result;
    if (v1[2] < v4)
    {
      goto LABEL_6;
    }

    v1[3] = v3 & 0xFFFFFFFFFFFFFFF8;
    v1[4] = v4;
    return ProtobufDecoder.decodeVarint()(result);
  }

  return result;
}