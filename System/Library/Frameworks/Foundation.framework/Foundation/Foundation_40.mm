uint64_t ___createRegexForPattern_block_invoke()
{
  qword_1ED440028 = objc_alloc_init(MEMORY[0x1E695DEE0]);
  [qword_1ED440028 setName:@"NSRegularExpressionCache"];
  v0 = qword_1ED440028;

  return [v0 setCountLimit:10];
}

uint64_t specialized == infix<A>(_:_:)(uint64_t a1, char a2, uint64_t a3, char a4)
{
  if (a2)
  {
    v6 = 0xE200000000000000;
    v7 = 25700;
    if (a1 != 1)
    {
      v7 = 70;
      v6 = 0xE100000000000000;
    }

    if (a1)
    {
      countAndFlagsBits = v7;
    }

    else
    {
      countAndFlagsBits = 100;
    }

    if (a1)
    {
      object = v6;
    }

    else
    {
      object = 0xE100000000000000;
    }

    if ((a4 & 1) == 0)
    {
      goto LABEL_11;
    }

LABEL_24:
    v19 = 0xE200000000000000;
    v20 = 25700;
    if (a3 != 1)
    {
      v20 = 70;
      v19 = 0xE100000000000000;
    }

    if (a3)
    {
      v21 = v20;
    }

    else
    {
      v21 = 100;
    }

    if (a3)
    {
      v14 = v19;
    }

    else
    {
      v14 = 0xE100000000000000;
    }

    if (countAndFlagsBits != v21)
    {
      goto LABEL_35;
    }

    goto LABEL_33;
  }

  v15 = 10;
  if (a1 < 10)
  {
    v15 = a1;
  }

  if (v15 <= 1)
  {
    v16 = 1;
  }

  else
  {
    v16 = v15;
  }

  v17._countAndFlagsBits = 103;
  v17._object = 0xE100000000000000;
  v18 = String.init(repeating:count:)(v17, v16);
  countAndFlagsBits = v18._countAndFlagsBits;
  object = v18._object;
  if (a4)
  {
    goto LABEL_24;
  }

LABEL_11:
  v10 = 10;
  if (a3 < 10)
  {
    v10 = a3;
  }

  if (v10 <= 1)
  {
    v11 = 1;
  }

  else
  {
    v11 = v10;
  }

  v12._countAndFlagsBits = 103;
  v12._object = 0xE100000000000000;
  v13 = String.init(repeating:count:)(v12, v11);
  v14 = v13._object;
  if (countAndFlagsBits != v13._countAndFlagsBits)
  {
    goto LABEL_35;
  }

LABEL_33:
  if (object != v14)
  {
LABEL_35:
    v22 = _stringCompareWithSmolCheck(_:_:expecting:)();
    goto LABEL_36;
  }

  v22 = 1;
LABEL_36:

  return v22 & 1;
}

{
  if (a2)
  {
    if (a1)
    {
      countAndFlagsBits = 22873;
    }

    else
    {
      countAndFlagsBits = 89;
    }

    if (a1)
    {
      object = 0xE200000000000000;
    }

    else
    {
      object = 0xE100000000000000;
    }

    if ((a4 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v13 = 10;
    if (a1 < 10)
    {
      v13 = a1;
    }

    if (v13 <= 1)
    {
      v14 = 1;
    }

    else
    {
      v14 = v13;
    }

    v15._countAndFlagsBits = 89;
    v15._object = 0xE100000000000000;
    v16 = String.init(repeating:count:)(v15, v14);
    countAndFlagsBits = v16._countAndFlagsBits;
    object = v16._object;
    if ((a4 & 1) == 0)
    {
LABEL_9:
      v8 = 10;
      if (a3 < 10)
      {
        v8 = a3;
      }

      if (v8 <= 1)
      {
        v9 = 1;
      }

      else
      {
        v9 = v8;
      }

      v10._countAndFlagsBits = 89;
      v10._object = 0xE100000000000000;
      v11 = String.init(repeating:count:)(v10, v9);
      v12 = v11._object;
      if (countAndFlagsBits != v11._countAndFlagsBits)
      {
        goto LABEL_31;
      }

      goto LABEL_29;
    }
  }

  if (a3)
  {
    v17 = 22873;
  }

  else
  {
    v17 = 89;
  }

  if (a3)
  {
    v12 = 0xE200000000000000;
  }

  else
  {
    v12 = 0xE100000000000000;
  }

  if (countAndFlagsBits != v17)
  {
    goto LABEL_31;
  }

LABEL_29:
  if (object != v12)
  {
LABEL_31:
    v18 = _stringCompareWithSmolCheck(_:_:expecting:)();
    goto LABEL_32;
  }

  v18 = 1;
LABEL_32:

  return v18 & 1;
}

{
  if (a2)
  {
    v6 = 65;
  }

  else
  {
    v6 = 83;
  }

  if (a1 >= 2)
  {

    MEMORY[0x1865CB0E0](v6, 0xE100000000000000);
    if (a1 != 2)
    {
      MEMORY[0x1865CB0E0](v6, 0xE100000000000000);
      if (a1 != 3)
      {
        MEMORY[0x1865CB0E0](v6, 0xE100000000000000);
        if (a1 != 4)
        {
          MEMORY[0x1865CB0E0](v6, 0xE100000000000000);
          if (a1 != 5)
          {
            MEMORY[0x1865CB0E0](v6, 0xE100000000000000);
            if (a1 != 6)
            {
              MEMORY[0x1865CB0E0](v6, 0xE100000000000000);
              if (a1 != 7)
              {
                MEMORY[0x1865CB0E0](v6, 0xE100000000000000);
                if (a1 != 8)
                {
                  MEMORY[0x1865CB0E0](v6, 0xE100000000000000);
                }
              }
            }
          }
        }
      }
    }
  }

  if (a4)
  {
    v8 = 65;
  }

  else
  {
    v8 = 83;
  }

  if (a3 >= 2)
  {

    MEMORY[0x1865CB0E0](v8, 0xE100000000000000);
    if (a3 != 2)
    {
      MEMORY[0x1865CB0E0](v8, 0xE100000000000000);
      if (a3 != 3)
      {
        MEMORY[0x1865CB0E0](v8, 0xE100000000000000);
        if (a3 != 4)
        {
          MEMORY[0x1865CB0E0](v8, 0xE100000000000000);
          if (a3 != 5)
          {
            MEMORY[0x1865CB0E0](v8, 0xE100000000000000);
            if (a3 != 6)
            {
              MEMORY[0x1865CB0E0](v8, 0xE100000000000000);
              if (a3 != 7)
              {
                MEMORY[0x1865CB0E0](v8, 0xE100000000000000);
                if (a3 != 8)
                {
                  MEMORY[0x1865CB0E0](v8, 0xE100000000000000);
                }
              }
            }
          }
        }
      }
    }
  }

  if (v6 == v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v9 & 1;
}

uint64_t String.LocalizationValue.init(_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  a3[2] = a2;
  *a3 = MEMORY[0x1E69E7CC0];
  a3[1] = result;
  return result;
}

uint64_t AttributedString.Guts.fixScalarConstrainedAttributes(in:)(uint64_t *a1)
{
  v2 = *(v1 + 40);
  v228 = *(v1 + 24);
  v229 = v2;
  v230 = *(v1 + 56);
  swift_unknownObjectRetain();
  v3 = BigString.UnicodeScalarView.index(roundingDown:)();
  v199 = v4;
  v5 = v1;
  swift_unknownObjectRelease();
  v6 = *(v1 + 40);
  v225 = *(v1 + 24);
  v226 = v6;
  v227 = *(v1 + 56);
  swift_unknownObjectRetain();
  v7 = BigString.UnicodeScalarView.index(roundingUp:)();
  swift_unknownObjectRelease();
  v191 = v3;
  v8 = v3 >> 11;
  if (v7 >> 11 < v3 >> 11)
  {
LABEL_278:
    __break(1u);
    goto LABEL_279;
  }

  v198 = v7 >> 11;
  v9 = *(v5 + 72);
  if (v9)
  {
    v10 = *(v5 + 88);
  }

  else
  {
    v10 = 0;
  }

  if (v10 < v8)
  {
LABEL_279:
    __break(1u);
LABEL_280:
    __break(1u);
    goto LABEL_281;
  }

  v11 = *(v5 + 80);
  v196 = v5;
  v192 = v8;
  v207 = *(v5 + 96);
  if (v9)
  {
    if (v8 < *(v5 + 88))
    {
      v12 = (v9 + 16);
      v13 = *(v9 + 16);
      if (*(v9 + 16))
      {
        v14 = *(v9 + 18);
        swift_unknownObjectRetain_n();

        if (v14)
        {
          v211 = v11;
          v15 = v8;
          v16 = v14;
          v17 = v9;
          while (1)
          {
            v18 = *v12;
            if (*v12)
            {
              break;
            }

            v23 = v15;
LABEL_21:
            if (v23)
            {
              goto LABEL_274;
            }

            v15 = 0;
LABEL_12:
            v16 = (v18 << ((4 * v14 + 8) & 0x3C)) | ((-15 << ((4 * v14 + 8) & 0x3C)) - 1) & v16;
            v19 = *(v17 + 24 + 24 * v18);
            swift_unknownObjectRetain();
            swift_unknownObjectRelease();
            v12 = (v19 + 16);
            LOBYTE(v14) = *(v19 + 18);
            v17 = v19;
            if (!v14)
            {
              v26 = v19;
              v13 = *v12;
              if (*v12)
              {
                goto LABEL_28;
              }

LABEL_250:
              v29 = 0;
              v24 = v26;
              v11 = v211;
              if (v15)
              {
                goto LABEL_251;
              }

LABEL_34:
              v25 = 0;
              goto LABEL_36;
            }
          }

          v20 = 0;
          v21 = (v17 + 40);
          while (1)
          {
            v22 = *v21;
            v21 += 3;
            v23 = v15 - v22;
            if (__OFSUB__(v15, v22))
            {
              goto LABEL_252;
            }

            if (__OFADD__(v23, 1))
            {
              break;
            }

            if (v23 + 1 < 1)
            {
              v18 = v20;
              goto LABEL_12;
            }

            ++v20;
            v15 = v23;
            if (v18 == v20)
            {
              goto LABEL_21;
            }
          }

LABEL_253:
          __break(1u);
LABEL_254:
          __break(1u);
LABEL_255:
          __break(1u);
LABEL_256:
          __break(1u);
LABEL_257:
          __break(1u);
LABEL_258:
          __break(1u);
LABEL_259:
          __break(1u);
LABEL_260:
          __break(1u);
LABEL_261:
          __break(1u);
LABEL_262:
          __break(1u);
LABEL_263:
          __break(1u);
LABEL_264:
          __break(1u);
LABEL_265:
          __break(1u);
LABEL_266:
          __break(1u);
LABEL_267:
          __break(1u);
LABEL_268:
          __break(1u);
LABEL_269:
          __break(1u);
LABEL_270:
          __break(1u);
LABEL_271:
          __break(1u);
LABEL_272:
          __break(1u);
LABEL_273:
          __break(1u);
LABEL_274:
          __break(1u);
LABEL_275:
          __break(1u);
LABEL_276:
          __break(1u);
LABEL_277:
          __break(1u);
          goto LABEL_278;
        }

        v15 = v8;
        v16 = 0;
        v26 = v9;
LABEL_28:
        v27 = 0;
        v28 = 24;
        v25 = v15;
        v29 = v13;
        v24 = v26;
        while (1)
        {
          v30 = *(v24 + v28);
          v31 = v25 - v30;
          if (__OFSUB__(v25, v30))
          {
            goto LABEL_272;
          }

          if (__OFADD__(v31, 1))
          {
            goto LABEL_273;
          }

          if (v31 + 1 < 1)
          {
            break;
          }

          ++v27;
          v28 += 24;
          v25 -= v30;
          if (v29 == v27)
          {
            if (!v31)
            {
              goto LABEL_34;
            }

LABEL_251:
            __break(1u);
LABEL_252:
            __break(1u);
            goto LABEL_253;
          }
        }

        v29 = v27;
LABEL_36:
        swift_unknownObjectRelease();
        v206 = v16 & 0xFFFFFFFFFFFFF0FFLL | (v29 << 8);
        v5 = v196;
        v8 = v192;
        if (!v9)
        {
          goto LABEL_37;
        }

LABEL_24:
        v203 = specialized Rope._Node.distanceFromStart<A>(to:in:)(v207, v206, v24, v9, v11);
        swift_unknownObjectRelease();
        goto LABEL_38;
      }
    }
  }

  swift_unknownObjectRetain();

  v206 = specialized Rope._endPath.getter(v9);
  v24 = 0;
  v25 = 0;
  if (v9)
  {
    goto LABEL_24;
  }

LABEL_37:
  v203 = 0;
LABEL_38:
  v32 = v198;
  if (!__OFSUB__(v8, v25))
  {
    v205 = v8 - v25;
    v33 = v191;
    v188 = MEMORY[0x1E69E7CC8];
    v193 = MEMORY[0x1E69E7CC8];
    while (1)
    {
      v202 = v199;
      v200 = v33;
      v35 = v206;
      v34 = v207;
      v15 = *(v5 + 72);
      if (v8 == v32)
      {
        if (v15)
        {
          v36 = *(v5 + 88);
          if (v36 < v8)
          {
            goto LABEL_271;
          }

          v194 = v24;
          v37 = *(v5 + 80);
          v38 = *(v5 + 96);
          v39 = (v15 + 16);
          v40 = *(v15 + 16);
          v9 = *(v15 + 18);
          if (*(v15 + 16))
          {
            v41 = v8 < v36;
          }

          else
          {
            v41 = 0;
          }

          v211 = v37;
          if (v41)
          {
            swift_unknownObjectRetain_n();
            v46 = v8;
            if (!v9)
            {
              v16 = 0;
              v44 = v15;
LABEL_71:
              v52 = 0;
              v53 = 24;
              v43 = v46;
              v54 = v40;
              v24 = v194;
              while (1)
              {
                v55 = *(v44 + v53);
                v46 = v43 - v55;
                if (__OFSUB__(v43, v55))
                {
                  goto LABEL_254;
                }

                if (__OFADD__(v46, 1))
                {
                  goto LABEL_255;
                }

                if (v46 + 1 < 1)
                {
                  goto LABEL_79;
                }

                ++v52;
                v53 += 24;
                v43 -= v55;
                if (v54 == v52)
                {
                  v52 = v54;
                  goto LABEL_77;
                }
              }
            }

            v16 = v9;
            v47 = v15;
            do
            {
              v48 = *v39;
              if (*v39)
              {
                v49 = 0;
                v26 = (v47 + 40);
                while (1)
                {
                  v50 = *v26;
                  v26 += 3;
                  v51 = v46 - v50;
                  if (__OFSUB__(v46, v50))
                  {
                    break;
                  }

                  if (__OFADD__(v51, 1))
                  {
                    goto LABEL_246;
                  }

                  if (v51 + 1 < 1)
                  {
                    v48 = v49;
                    goto LABEL_57;
                  }

                  ++v49;
                  v46 = v51;
                  if (v48 == v49)
                  {
                    goto LABEL_66;
                  }
                }

                __break(1u);
LABEL_246:
                __break(1u);
                goto LABEL_247;
              }

              v51 = v46;
LABEL_66:
              if (v51)
              {
                goto LABEL_256;
              }

              v46 = 0;
LABEL_57:
              v16 = (v48 << ((4 * v9 + 8) & 0x3C)) | ((-15 << ((4 * v9 + 8) & 0x3C)) - 1) & v16;
              v44 = *(v47 + 24 + 24 * v48);
              swift_unknownObjectRetain();
              swift_unknownObjectRelease();
              v39 = (v44 + 16);
              v9 = *(v44 + 18);
              v47 = v44;
            }

            while (*(v44 + 18));
            LODWORD(v40) = *v39;
            if (*v39)
            {
              goto LABEL_71;
            }

            v52 = 0;
            v24 = v194;
LABEL_77:
            if (!v46)
            {
              v43 = 0;
LABEL_79:
              swift_unknownObjectRelease();
              v42 = v16 & 0xFFFFFFFFFFFFF0FFLL | (v52 << 8);
              v8 = v192;
              goto LABEL_80;
            }

            goto LABEL_282;
          }

          v42 = ((-15 << ((4 * v9 + 8) & 0x3C)) - 1) & v9 | (v40 << ((4 * v9 + 8) & 0x3C));
          swift_unknownObjectRetain();
          v43 = 0;
          v44 = 0;
          v24 = v194;
LABEL_80:
          specialized Rope._Node.distanceFromStart<A>(to:in:)(v38, v42, v44, v15, v211);
          swift_unknownObjectRelease();
          v5 = v196;
          v32 = v198;
          v35 = v206;
          v34 = v207;
        }

        else
        {
          if (v191 >= 0x800)
          {
            goto LABEL_276;
          }

          v43 = 0;
        }

        v45 = v8 - v43;
        if (__OFSUB__(v8, v43))
        {
          goto LABEL_269;
        }
      }

      else
      {
        v45 = v15 ? *(v5 + 88) : 0;
      }

      if (v205 == v45)
      {

        v171 = 0;
        v172 = 1 << *(v193 + 32);
        v173 = -1;
        if (v172 < 64)
        {
          v173 = ~(-1 << v172);
        }

        v174 = v173 & *(v193 + 64);
        v175 = (v172 + 63) >> 6;
        while (v174)
        {
LABEL_240:
          v177 = __clz(__rbit64(v174));
          v174 &= v174 - 1;
          v178 = v177 | (v171 << 6);
          v179 = *(*(v193 + 56) + 8 * v178);
          v180 = *(v179 + 16);
          if (v180)
          {
            v181 = (*(v193 + 48) + 16 * v178);
            v183 = *v181;
            v182 = v181[1];

            v184 = (v179 + 40);
            do
            {
              AttributedString.Guts.removeAttributeValue(forKey:in:adjustConstrainedAttributes:)(v183, v182, *(v184 - 1), *v184, 0);
              v184 += 2;
              --v180;
            }

            while (v180);
          }
        }

        while (1)
        {
          v176 = v171 + 1;
          if (__OFADD__(v171, 1))
          {
            goto LABEL_257;
          }

          if (v176 >= v175)
          {
          }

          v174 = *(v193 + 64 + 8 * v176);
          ++v171;
          if (v174)
          {
            v171 = v176;
            goto LABEL_240;
          }
        }
      }

      if (v34 != *(v5 + 96))
      {
        goto LABEL_258;
      }

      if (v24)
      {
        v56 = v24 + 24 * ((v35 >> ((4 * *(v24 + 18) + 8) & 0x3C)) & 0xF);
        v57 = *(v56 + 32);
        v58 = *(v56 + 24);
        swift_bridgeObjectRetain_n();
        swift_bridgeObjectRetain_n();
      }

      else
      {
        v59 = *(v5 + 72);
        swift_unknownObjectRetain();
        specialized Rope._Node.subscript.getter(v35, v59);
        v57 = v60;
        swift_unknownObjectRelease();
        if (v207 != *(v5 + 96))
        {
          goto LABEL_270;
        }

        v61 = *(v5 + 72);
        swift_unknownObjectRetain();
        v58 = specialized Rope._Node.subscript.getter(v35, v61);
        swift_unknownObjectRelease();
        v35 = v206;
        v32 = v198;
      }

      v62 = v205 + v58;
      if (__OFADD__(v205, v58))
      {
        goto LABEL_259;
      }

      if (v32 >= v205)
      {
        v63 = v205;
      }

      else
      {
        v63 = v32;
      }

      if (v205 < v8)
      {
        v63 = v8;
      }

      if (v62 <= v8)
      {
        v64 = v8;
      }

      else
      {
        v64 = v205 + v58;
      }

      if (v32 >= v62)
      {
        v65 = v64;
      }

      else
      {
        v65 = v32;
      }

      if (v63 == v65)
      {
        goto LABEL_260;
      }

      v208 = v57;
      v15 = v65 - v63;
      if (__OFSUB__(v65, v63))
      {
        goto LABEL_261;
      }

      v66 = *(v5 + 72);
      v67 = *(v5 + 96);
      v213 = v207;
      v214 = v35;
      v215[0] = v24;
      if (__OFADD__(v203, 1))
      {
        goto LABEL_262;
      }

      if (v207 != v67)
      {
        goto LABEL_263;
      }

      ++v203;
      if (v24)
      {
        v68 = *(v24 + 24 * ((v35 >> ((4 * *(v24 + 18) + 8) & 0x3C)) & 0xF) + 24);
        swift_unknownObjectRetain();
      }

      else
      {
        swift_unknownObjectRetain();
        v68 = specialized Rope._Node.subscript.getter(v35, v66);
      }

      v69 = __OFADD__(v205, v68);
      v70 = v205 + v68;
      if (v69)
      {
        goto LABEL_264;
      }

      if (v66)
      {
        v71 = ((-15 << ((4 * *(v66 + 18) + 8) & 0x3C)) - 1) & *(v66 + 18) | (*(v66 + 16) << ((4 * *(v66 + 18) + 8) & 0x3C));
      }

      else
      {
        v71 = 0;
      }

      if (v206 >= v71)
      {
        goto LABEL_265;
      }

      if (v24)
      {
        v72 = (4 * *(v24 + 18) + 8) & 0x3C;
        v73 = ((v206 >> v72) & 0xF) + 1;
        if (v73 < *(v24 + 16))
        {
          break;
        }
      }

      if (specialized Rope._Node.formSuccessor(of:)(&v213, v66))
      {
        swift_unknownObjectRelease();
        v74 = v214;
LABEL_117:
        v32 = v198;
        if (v70 >= v198)
        {
          goto LABEL_123;
        }

        goto LABEL_118;
      }

      if (v66)
      {
        v75 = *(v66 + 18);
        v76 = *(v66 + 16);
        swift_unknownObjectRelease();
        v77 = (4 * v75 + 8) & 0x3C;
        v78 = ((-15 << v77) - 1) & v75;
        v8 = v192;
        v74 = v78 | (v76 << v77);
      }

      else
      {
        v74 = 0;
      }

      v32 = v198;
      v213 = v207;
      v214 = v74;
      v215[0] = 0;
      if (v70 >= v198)
      {
LABEL_123:
        v79 = *(v5 + 72);
        if (v8 == v32)
        {
          v207 = *(v5 + 96);
          if (v79)
          {
            v80 = *(v5 + 88);
            if (v80 < v8)
            {
              goto LABEL_277;
            }

            v9 = *(v5 + 80);
            v81 = (v79 + 16);
            v82 = *(v79 + 16);
            v83 = *(v79 + 18);
            if (*(v79 + 16) && v8 < v80)
            {
              swift_unknownObjectRetain_n();
              v84 = v8;
              if (!v83)
              {
                v16 = 0;
                v24 = v79;
LABEL_151:
                v93 = 0;
                v94 = 24;
                v90 = v84;
                while (1)
                {
                  v95 = *(v24 + v94);
                  v96 = v90 - v95;
                  if (__OFSUB__(v90, v95))
                  {
                    goto LABEL_266;
                  }

                  if (__OFADD__(v96, 1))
                  {
                    goto LABEL_267;
                  }

                  if (v96 + 1 < 1)
                  {
                    goto LABEL_160;
                  }

                  ++v93;
                  v94 += 24;
                  v90 -= v95;
                  if (v82 == v93)
                  {
                    v93 = v82;
                    if (!v96)
                    {
                      goto LABEL_159;
                    }

                    goto LABEL_285;
                  }
                }
              }

              v16 = v83;
              v85 = v79;
              do
              {
                v86 = *v81;
                if (*v81)
                {
                  v87 = 0;
                  v26 = (v85 + 40);
                  while (1)
                  {
                    v88 = *v26;
                    v26 += 3;
                    v89 = v84 - v88;
                    if (__OFSUB__(v84, v88))
                    {
                      goto LABEL_248;
                    }

                    if (__OFADD__(v89, 1))
                    {
                      goto LABEL_249;
                    }

                    if (v89 + 1 < 1)
                    {
                      v86 = v87;
                      goto LABEL_131;
                    }

                    ++v87;
                    v84 = v89;
                    if (v86 == v87)
                    {
                      goto LABEL_140;
                    }
                  }
                }

                v89 = v84;
LABEL_140:
                if (v89)
                {
                  goto LABEL_268;
                }

                v84 = 0;
LABEL_131:
                v16 = (v86 << ((4 * v83 + 8) & 0x3C)) | ((-15 << ((4 * v83 + 8) & 0x3C)) - 1) & v16;
                v82 = *(v85 + 24 + 24 * v86);
                swift_unknownObjectRetain();
                swift_unknownObjectRelease();
                v81 = (v82 + 16);
                LOBYTE(v83) = *(v82 + 18);
                v85 = v82;
              }

              while (v83);
              v92 = v82;
              LODWORD(v82) = *v81;
              if (*v81)
              {
                v24 = v92;
                goto LABEL_151;
              }

              v93 = 0;
              v24 = v92;
              if (!v84)
              {
LABEL_159:
                v90 = 0;
LABEL_160:
                swift_unknownObjectRelease();
                v91 = v16 & 0xFFFFFFFFFFFFF0FFLL | (v93 << 8);
                v5 = v196;
                v8 = v192;
                goto LABEL_161;
              }

              goto LABEL_285;
            }

            v91 = ((-15 << ((4 * v83 + 8) & 0x3C)) - 1) & v83 | (v82 << ((4 * v83 + 8) & 0x3C));
            swift_unknownObjectRetain();
            v90 = 0;
            v24 = 0;
LABEL_161:
            v206 = v91;
            v203 = specialized Rope._Node.distanceFromStart<A>(to:in:)(v207, v91, v24, v79, v9);
            swift_unknownObjectRelease();
            v32 = v198;
          }

          else
          {
            if (v191 >= 0x800)
            {
              goto LABEL_280;
            }

            v90 = 0;
            v24 = 0;
            v206 = 0;
            v203 = 0;
          }

          if (__OFSUB__(v8, v90))
          {
            goto LABEL_275;
          }

          v205 = v8 - v90;
        }

        else
        {
          v207 = *(v5 + 96);
          if (v79)
          {
            v24 = 0;
            v205 = *(v5 + 88);
            v203 = *(v5 + 80);
            v206 = ((-15 << ((4 * *(v79 + 18) + 8) & 0x3C)) - 1) & *(v79 + 18) | (*(v79 + 16) << ((4 * *(v79 + 18) + 8) & 0x3C));
          }

          else
          {
            v205 = 0;
            v206 = 0;
            v24 = 0;
            v203 = 0;
          }
        }

        goto LABEL_164;
      }

LABEL_118:
      v205 = v70;
      v206 = v74;
      v207 = v213;
      v24 = v215[0];
LABEL_164:
      v97 = *(v5 + 40);
      v222 = *(v5 + 24);
      v223 = v97;
      v224 = *(v5 + 56);
      swift_unknownObjectRetain();
      v98 = v200;
      v33 = BigString.UTF8View.index(_:offsetBy:)();
      v199 = v99;
      swift_unknownObjectRelease();
      v15 = v208;

      v100 = specialized AttributedString._AttributeStorage.containsScalarConstraint.getter(v208);

      if ((v100 & 1) != 0 && v33 >> 10 > v200 >> 10)
      {
        v186 = v33;
        v187 = v33 >> 10;
        v195 = v24;
        v101 = v208 + 64;
        while (2)
        {
          v102 = v98;
          v103 = *(v5 + 40);
          v219 = *(v5 + 24);
          v220 = v103;
          v221 = *(v5 + 56);
          swift_unknownObjectRetain();
          v9 = v202;
          v197 = BigString.UnicodeScalarView.subscript.getter();
          swift_unknownObjectRelease();
          v104 = *(v5 + 40);
          v216 = *(v5 + 24);
          v217 = v104;
          v218 = *(v5 + 56);
          swift_unknownObjectRetain();
          v105 = BigString.UnicodeScalarView.index(after:)();
          v202 = v106;
          swift_unknownObjectRelease();
          v107 = 1 << *(v15 + 32);
          v108 = (v107 + 63) >> 6;
          if (v107 < 64)
          {
            v109 = ~(-1 << v107);
          }

          else
          {
            v109 = -1;
          }

          v110 = v109 & *(v15 + 64);
          v201 = v105;
          v189 = (v105 >> 11);
          v190 = v102 >> 11;

          v16 = 0;
          v204 = v108;
          if (!v110)
          {
LABEL_173:
            if (v108 <= v16 + 1)
            {
              v112 = v16 + 1;
            }

            else
            {
              v112 = v108;
            }

            v113 = v112 - 1;
            while (1)
            {
              v111 = v16 + 1;
              if (__OFADD__(v16, 1))
              {
                break;
              }

              if (v111 >= v108)
              {
                v128 = 0;
                v117 = 0;
                v126 = 0;
                v127 = 0;
                v119 = 0;
                v118 = 0;
                v121 = 0;
                v120 = 0;
                v123 = 0;
                v122 = 0;
                v125 = 0;
                v110 = 0;
                v16 = v113;
                goto LABEL_182;
              }

              v110 = *(v101 + 8 * v111);
              ++v16;
              if (v110)
              {
                v16 = v111;
                goto LABEL_181;
              }
            }

LABEL_247:
            __break(1u);
LABEL_248:
            __break(1u);
LABEL_249:
            __break(1u);
            goto LABEL_250;
          }

          while (1)
          {
            v111 = v16;
LABEL_181:
            v114 = __clz(__rbit64(v110));
            v110 &= v110 - 1;
            v115 = v114 | (v111 << 6);
            v116 = (*(v15 + 48) + 16 * v115);
            v117 = v116[1];
            v211 = *v116;
            outlined init with copy of AttributedString._AttributeValue(*(v15 + 56) + 72 * v115, v212);
            v209 = v212[1];
            v210 = v212[0];
            v119 = v212[2];
            v118 = v212[3];
            v121 = v212[4];
            v120 = v212[5];
            v123 = v212[6];
            v122 = v212[7];
            v124 = v212[8];

            v125 = v124;
            v127 = v209;
            v126 = v210;
            v128 = v211;
LABEL_182:
            v213 = v128;
            v214 = v117;
            v215[0] = v126;
            v215[1] = v127;
            v215[2] = v119;
            v215[3] = v118;
            v215[4] = v121;
            v215[5] = v120;
            v215[6] = v123;
            v215[7] = v122;
            v215[8] = v125;
            if (!v117)
            {
              break;
            }

            v9 = v117;
            outlined copy of AttributedString.AttributeRunBoundaries?(v120, v123);
            outlined destroy of AttributedString._AttributeValue(v215);
            v101 = v208 + 64;
            if (v123 < 2 || (v129 = specialized Collection.first.getter(v120, v123), outlined consume of AttributedString.AttributeRunBoundaries?(v120, v123), (v129 & 0x100000000) != 0) || v197 == v129)
            {

              goto LABEL_187;
            }

            if (v189 < v190)
            {
              goto LABEL_283;
            }

            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v212[0] = v188;
            v132 = specialized __RawDictionaryStorage.find<A>(_:)(v128, v9);
            v133 = *(v188 + 16);
            v134 = (v131 & 1) == 0;
            v135 = v133 + v134;
            if (__OFADD__(v133, v134))
            {
              goto LABEL_284;
            }

            v136 = v131;
            if (*(v188 + 24) >= v135)
            {
              if (isUniquelyReferenced_nonNull_native)
              {
                v137 = v188;
                v193 = v188;
                if ((v131 & 1) == 0)
                {
                  goto LABEL_216;
                }
              }

              else
              {
                LODWORD(v211) = v131;
                __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSaySnySiGGGMd, &_ss18_DictionaryStorageCySSSaySnySiGGGMR);
                v193 = static _DictionaryStorage.copy(original:)();
                if (*(v188 + 16))
                {
                  v141 = (v193 + 64);
                  v142 = ((1 << *(v193 + 32)) + 63) >> 6;
                  if (v193 != v188 || v141 >= v188 + 64 + 8 * v142)
                  {
                    memmove(v141, (v188 + 64), 8 * v142);
                  }

                  v143 = 0;
                  *(v193 + 16) = *(v188 + 16);
                  v144 = 1 << *(v188 + 32);
                  v145 = *(v188 + 64);
                  if (v144 < 64)
                  {
                    v146 = ~(-1 << v144);
                  }

                  else
                  {
                    v146 = -1;
                  }

                  v147 = v146 & v145;
                  v148 = (v144 + 63) >> 6;
                  if ((v146 & v145) != 0)
                  {
                    do
                    {
                      v149 = __clz(__rbit64(v147));
                      v147 &= v147 - 1;
LABEL_213:
                      v152 = v149 | (v143 << 6);
                      v153 = (*(v188 + 48) + 16 * v152);
                      v154 = v153[1];
                      v155 = *(*(v188 + 56) + 8 * v152);
                      v156 = (*(v193 + 48) + 16 * v152);
                      *v156 = *v153;
                      v156[1] = v154;
                      *(*(v193 + 56) + 8 * v152) = v155;
                    }

                    while (v147);
                  }

                  v150 = v143;
                  while (1)
                  {
                    v143 = v150 + 1;
                    if (__OFADD__(v150, 1))
                    {
                      goto LABEL_289;
                    }

                    if (v143 >= v148)
                    {
                      break;
                    }

                    v151 = *(v188 + 64 + 8 * v143);
                    ++v150;
                    if (v151)
                    {
                      v149 = __clz(__rbit64(v151));
                      v147 = (v151 - 1) & v151;
                      goto LABEL_213;
                    }
                  }
                }

                v137 = v193;
                if ((v211 & 1) == 0)
                {
LABEL_216:
                  *(v137 + 8 * (v132 >> 6) + 64) |= 1 << v132;
                  v140 = v193;
                  v157 = (*(v193 + 48) + 16 * v132);
                  *v157 = v128;
                  v157[1] = v9;
                  *(*(v193 + 56) + 8 * v132) = MEMORY[0x1E69E7CC0];
                  v158 = *(v193 + 16);
                  v69 = __OFADD__(v158, 1);
                  v159 = v158 + 1;
                  if (v69)
                  {
                    goto LABEL_286;
                  }

                  *(v193 + 16) = v159;
                  goto LABEL_218;
                }
              }
            }

            else
            {
              specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v135, isUniquelyReferenced_nonNull_native);
              v137 = v212[0];
              v138 = specialized __RawDictionaryStorage.find<A>(_:)(v128, v9);
              if ((v136 & 1) != (v139 & 1))
              {
                goto LABEL_290;
              }

              v132 = v138;
              v193 = v137;
              if ((v136 & 1) == 0)
              {
                goto LABEL_216;
              }
            }

            v140 = v193;
LABEL_218:
            v160 = *(v140 + 56);
            v161 = *(v160 + 8 * v132);
            v162 = *(v161 + 2);
            if (v162 && (v163 = v162 - 1, v164 = &v161[16 * v162 - 16], *(v164 + 5) == v190))
            {
              v9 = *(v164 + 4);
              if (v189 < v9)
              {
                goto LABEL_287;
              }

              v165 = swift_isUniquelyReferenced_nonNull_native();
              *(v160 + 8 * v132) = v161;
              if ((v165 & 1) == 0)
              {
                v161 = specialized _ArrayBuffer._consumeAndCreateNew()(v161);
                *(v160 + 8 * v132) = v161;
              }

              v166 = v193;
              if (v162 > *(v161 + 2))
              {
                goto LABEL_288;
              }
            }

            else
            {
              v167 = swift_isUniquelyReferenced_nonNull_native();
              *(v160 + 8 * v132) = v161;
              if ((v167 & 1) == 0)
              {
                v161 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v162 + 1, 1, v161);
                *(v160 + 8 * v132) = v161;
              }

              v163 = *(v161 + 2);
              v168 = *(v161 + 3);
              v166 = v193;
              if (v163 >= v168 >> 1)
              {
                v170 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v168 > 1), v163 + 1, 1, v161);
                v166 = v193;
                v161 = v170;
                *(v160 + 8 * v132) = v170;
              }

              *(v161 + 2) = v163 + 1;
              v9 = v190;
            }

            v169 = &v161[16 * v163];
            v26 = v189;
            *(v169 + 4) = v9;
            *(v169 + 5) = v189;
            v188 = v166;
LABEL_187:
            v15 = v208;
            v108 = v204;
            if (!v110)
            {
              goto LABEL_173;
            }
          }

          v15 = v208;

          v98 = v201;
          v5 = v196;
          v101 = v208 + 64;
          if (v187 > v201 >> 10)
          {
            continue;
          }

          break;
        }

        v8 = v192;
        v32 = v198;
        v24 = v195;
        v33 = v186;
      }

      else
      {
      }
    }

    v74 = (v73 << v72) | ((-15 << v72) - 1) & v206;
    swift_unknownObjectRelease();
    goto LABEL_117;
  }

LABEL_281:
  __break(1u);
LABEL_282:
  __break(1u);
LABEL_283:
  __break(1u);
LABEL_284:
  __break(1u);
LABEL_285:
  __break(1u);
LABEL_286:
  __break(1u);
LABEL_287:
  __break(1u);
LABEL_288:
  __break(1u);
LABEL_289:
  __break(1u);
LABEL_290:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t outlined consume of AttributedString.AttributeRunBoundaries?(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

void *NSFileHandle.readToEnd()()
{
  v14[1] = *MEMORY[0x1E69E9840];
  v14[0] = 0;
  v1 = [v0 readDataToEndOfFileAndReturnError_];
  v2 = v14[0];
  if (!v1)
  {
    if (v14[0])
    {
      v14[0];
LABEL_17:
      swift_willThrow();
      return v2;
    }

    if (one-time initialization token for _nilObjCError == -1)
    {
LABEL_16:
      v12 = _nilObjCError;
      goto LABEL_17;
    }

LABEL_21:
    swift_once();
    goto LABEL_16;
  }

  v3 = v1;
  v4 = v2;
  v2 = specialized Data.init(referencing:)(v3);
  v6 = v5;

  v7 = v6 >> 62;
  if ((v6 >> 62) > 1)
  {
    if (v7 != 2)
    {
      goto LABEL_14;
    }

    v9 = v2[2];
    v8 = v2[3];
    v10 = __OFSUB__(v8, v9);
    v11 = v8 - v9;
    if (!v10)
    {
      if (v11 <= 0)
      {
        goto LABEL_14;
      }

      return v2;
    }

    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v7)
  {
    if (!__OFSUB__(HIDWORD(v2), v2))
    {
      if (HIDWORD(v2) - v2 > 0)
      {
        return v2;
      }

LABEL_14:
      outlined consume of Data._Representation(v2, v6);
      return 0;
    }

    goto LABEL_20;
  }

  if (!BYTE6(v6))
  {
    goto LABEL_14;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type IndexSet.Index and conformance IndexSet.Index()
{
  result = lazy protocol witness table cache variable for type IndexSet.Index and conformance IndexSet.Index;
  if (!lazy protocol witness table cache variable for type IndexSet.Index and conformance IndexSet.Index)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IndexSet.Index and conformance IndexSet.Index);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IndexSet.Index and conformance IndexSet.Index;
  if (!lazy protocol witness table cache variable for type IndexSet.Index and conformance IndexSet.Index)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IndexSet.Index and conformance IndexSet.Index);
  }

  return result;
}

Swift::String __swiftcall Character._transform(toHalfWidth:stripDiacritics:caseFolding:)(Swift::Bool toHalfWidth, Swift::Bool stripDiacritics, Swift::Bool caseFolding)
{
  v5 = v4;
  v6 = v3;
  v7 = caseFolding;
  v8 = stripDiacritics;
  v9 = toHalfWidth;
  v58 = *MEMORY[0x1E69E9840];
  v50 = type metadata accessor for Unicode.Scalar.Properties();
  v10 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v49 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v6 == 2573 && v5 == 0xE200000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    goto LABEL_9;
  }

  if ((Character._isSingleScalar.getter() & 1) == 0)
  {
    goto LABEL_12;
  }

  v12 = specialized Collection.first.getter(v6, v5);
  if ((v12 & 0x100000000) != 0)
  {
    __break(1u);
    goto LABEL_65;
  }

  if ((v12 & 0xFFFFFF80) != 0)
  {
LABEL_12:
    v17 = 0xE000000000000000;
    v55 = 0;
    v56 = 0xE000000000000000;
    v18 = HIBYTE(v5) & 0xF;
    if ((v5 & 0x2000000000000000) == 0)
    {
      v18 = v6 & 0xFFFFFFFFFFFFLL;
    }

    v51 = v18;
    if (!v18)
    {
LABEL_58:
      v53 = v18;
      v54 = v17;
      countAndFlagsBits = String.init<A>(_:)();
      goto LABEL_59;
    }

    v46 = (v5 & 0xFFFFFFFFFFFFFFFLL) + 32;
    v47 = v5 & 0xFFFFFFFFFFFFFFLL;
    v48 = (v10 + 8);

    v19 = 0;
    while (1)
    {
      if ((v5 & 0x1000000000000000) != 0)
      {
        v34 = _StringGuts.foreignErrorCorrectedScalar(startingAt:)();
        v31 = v35;
      }

      else
      {
        if ((v5 & 0x2000000000000000) != 0)
        {
          v53 = v6;
          v54 = v47;
          v33 = &v53 + v19;
        }

        else
        {
          v32 = v46;
          if ((v6 & 0x1000000000000000) == 0)
          {
            v32 = _StringObject.sharedUTF8.getter();
          }

          v33 = (v32 + v19);
        }

        v34 = *v33;
        if ((*v33 & 0x80000000) == 0)
        {
          goto LABEL_27;
        }

        v40 = (__clz(v34 ^ 0xFF) - 24);
        if (v40 > 2)
        {
          if (v40 == 3)
          {
            v34 = ((v34 & 0xF) << 12) | ((v33[1] & 0x3F) << 6) | v33[2] & 0x3F;
            v31 = 3;
          }

          else
          {
            v34 = ((v34 & 0xF) << 18) | ((v33[1] & 0x3F) << 12) | ((v33[2] & 0x3F) << 6) | v33[3] & 0x3F;
            v31 = 4;
          }

          goto LABEL_28;
        }

        if (v40 == 1)
        {
LABEL_27:
          v31 = 1;
        }

        else
        {
          v34 = v33[1] & 0x3F | ((v34 & 0x1F) << 6);
          v31 = 2;
        }
      }

LABEL_28:
      v36 = v34;
      if (v9)
      {
        v36 = v34;
        if (v34 - 65280 < 0xEF)
        {
          LODWORD(v53) = v34;
          CFUniCharCompatibilityDecompose();
          v36 = v53;
          if (v53 >> 11 == 27)
          {
            goto LABEL_62;
          }

          if (WORD1(v53) > 0x10u)
          {
            __break(1u);
LABEL_62:
            __break(1u);
LABEL_63:
            __break(1u);
          }
        }
      }

      if (!v8)
      {
        goto LABEL_42;
      }

      if (BYTE2(v34) > 0xEu || (v37 = *(&__CFUniCharGraphemeExtendCharacterSetBitmap_0 + BYTE2(v34))) == 0 || ((*(v37 + (v34 >> 3)) >> (v34 & 7)) & 1) == 0)
      {
        if (BYTE2(v36) <= 2u)
        {
          v38 = *(&__CFUniCharCanonicalDecomposableCharacterSetBitmap_0 + BYTE2(v36));
          if (v38)
          {
            if (((*(v38 + (v36 >> 3)) >> (v36 & 7)) & 1) != 0 && CFUniCharDecomposeCharacter() >= 1 && v57[0] < 0x510)
            {
              v36 = v57[0];
            }
          }
        }

LABEL_42:
        v52 = v31;
        if (v7)
        {
          v20 = v49;
          Unicode.Scalar.properties.getter();
          v21 = v5;
          v22 = v9;
          v23 = v8;
          v24 = v7;
          v25 = v6;
          v26 = Unicode.Scalar.Properties._caseFolded.getter();
          v28 = v27;
          (*v48)(v20, v50);
          v29 = v26;
          v6 = v25;
          v7 = v24;
          v8 = v23;
          v9 = v22;
          v5 = v21;
          v30 = v28;
        }

        else
        {
          if (v36 > 0x7F)
          {
            v41 = (v36 & 0x3F) << 8;
            if (v36 >= 0x800)
            {
              v42 = (v41 | (v36 >> 6) & 0x3F) << 8;
              v43 = (((v42 | (v36 >> 12) & 0x3F) << 8) | (v36 >> 18)) - 2122219023;
              v39 = (v36 >> 12) + v42 + 8487393;
              if (HIWORD(v36))
              {
                v39 = v43;
              }
            }

            else
            {
              v39 = (v36 >> 6) + v41 + 33217;
            }
          }

          else
          {
            v39 = v36 + 1;
          }

          v53 = (v39 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (8 * (4 - (__clz(v39) >> 3))));
          v29 = static String._uncheckedFromUTF8(_:)();
        }

        MEMORY[0x1865CB0E0](v29, v30);

        v31 = v52;
      }

      v19 += v31;
      if (v19 >= v51)
      {

        v18 = v55;
        v17 = v56;
        goto LABEL_58;
      }
    }
  }

  v12 = specialized Collection.first.getter(v6, v5);
  if ((v12 & 0x100000000) != 0)
  {
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  if ((v12 & 0xFFFFFF00) != 0)
  {
    goto LABEL_63;
  }

LABEL_9:
  if (v7)
  {
    v16 = String.lowercased()();
    object = v16._object;
    countAndFlagsBits = v16._countAndFlagsBits;
LABEL_59:
    v6 = countAndFlagsBits;
    v5 = object;
    goto LABEL_60;
  }

LABEL_60:
  v12 = v6;
  v13 = v5;
LABEL_66:
  result._object = v13;
  result._countAndFlagsBits = v12;
  return result;
}

unint64_t specialized Collection.first.getter(unint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    v5 = _StringGuts.validateScalarIndex(_:)(0xFuLL, a1, a2);
    if ((a2 & 0x1000000000000000) != 0)
    {
      v8 = _StringGuts.foreignErrorCorrectedScalar(startingAt:)();
    }

    else
    {
      v6 = v5 >> 16;
      if ((a2 & 0x2000000000000000) != 0)
      {
        v16[0] = a1;
        v16[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        v7 = v16 + v6;
      }

      else if ((a1 & 0x1000000000000000) != 0)
      {
        v7 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32 + v6);
      }

      else
      {
        v7 = (_StringObject.sharedUTF8.getter() + v6);
      }

      v8 = *v7;
      if (*v7 < 0)
      {
        v9 = (__clz(v8 ^ 0xFF) - 24);
        if (v9 > 2)
        {
          if (v9 == 3)
          {
            v10 = v7[1];
            v11 = v7[2];
            v12 = ((v8 & 0xF) << 12) | ((v10 & 0x3F) << 6);
          }

          else
          {
            v13 = v7[1];
            v14 = v7[2];
            v11 = v7[3];
            v12 = ((v8 & 0xF) << 18) | ((v13 & 0x3F) << 12) | ((v14 & 0x3F) << 6);
          }

          v8 = v12 & 0xFFFFFFC0 | v11 & 0x3F;
        }

        else if (v9 != 1)
        {
          v8 = v7[1] & 0x3F | ((v8 & 0x1F) << 6);
        }
      }
    }
  }

  else
  {
    v8 = 0;
  }

  LOBYTE(v16[0]) = v2 == 0;
  return v8 | ((v2 == 0) << 32);
}

{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    v5 = _StringGuts.validateScalarIndex(_:)(0xFuLL, a1, a2);
    if ((a2 & 0x1000000000000000) != 0)
    {
      v9 = _StringGuts.foreignErrorCorrectedScalar(startingAt:)();
    }

    else
    {
      v6 = v5 >> 16;
      if ((a2 & 0x2000000000000000) != 0)
      {
        v17[0] = a1;
        v17[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        v8 = v17 + v6;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v7 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
        }

        else
        {
          v7 = _StringObject.sharedUTF8.getter();
        }

        v8 = (v7 + v6);
      }

      v9 = *v8;
      if (*v8 < 0)
      {
        v10 = (__clz(v9 ^ 0xFF) - 24);
        if (v10 > 2)
        {
          if (v10 == 3)
          {
            v11 = v8[1];
            v12 = v8[2];
            v13 = ((v9 & 0xF) << 12) | ((v11 & 0x3F) << 6);
          }

          else
          {
            v14 = v8[1];
            v15 = v8[2];
            v12 = v8[3];
            v13 = ((v9 & 0xF) << 18) | ((v14 & 0x3F) << 12) | ((v15 & 0x3F) << 6);
          }

          v9 = v13 & 0xFFFFFFC0 | v12 & 0x3F;
        }

        else if (v10 != 1)
        {
          v9 = v8[1] & 0x3F | ((v9 & 0x1F) << 6);
        }
      }
    }
  }

  else
  {
    v9 = 0;
  }

  LOBYTE(v17[0]) = v2 == 0;
  return v9 | ((v2 == 0) << 32);
}

uint64_t protocol witness for _LocaleProtocol.customDateFormat(_:) in conformance _LocaleAutoupdating(uint64_t *a1)
{
  v1 = *a1;
  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  v7[1] = *(&static LocaleCache.cache + 1);
  v7[2] = qword_1ED4404B0;
  LocaleCache._currentAndCache.getter();
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7[0] = v1;
  v5 = (*(v3 + 496))(v7, ObjectType, v3);
  swift_unknownObjectRelease();
  return v5;
}

uint64_t _LocaleICU.customDateFormat(_:)(uint64_t *a1)
{
  v2 = *(v1 + 136);
  v3 = *(v1 + 168);
  v12 = *(v1 + 152);
  v13[0] = v3;
  *(v13 + 12) = *(v1 + 180);
  v4 = *(v1 + 72);
  v5 = *(v1 + 104);
  v11[2] = *(v1 + 88);
  v11[3] = v5;
  v11[4] = *(v1 + 120);
  v11[5] = v2;
  v11[0] = *(v1 + 56);
  v11[1] = v4;
  if (_s10Foundation17LocalePreferencesVSgWOg(v11) == 1)
  {
    return 0;
  }

  v6 = *(&v12 + 1);
  if (!*(&v12 + 1))
  {
    return 0;
  }

  if (!*(*(&v12 + 1) + 16))
  {
    return 0;
  }

  v7 = specialized __RawDictionaryStorage.find<A>(_:)();
  if ((v8 & 1) == 0)
  {
    return 0;
  }

  v9 = *(*(v6 + 56) + 16 * v7);

  return v9;
}

uint64_t type metadata instantiation function for Measurement<>.FormatStyle.UnitWidth(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void type metadata completion function for Measurement<>.FormatStyle(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 16);
  type metadata accessor for Measurement<>.FormatStyle.UnitWidth(319, v4, a3, a4);
  if (v5 <= 0x3F)
  {
    type metadata accessor for FloatingPointFormatStyle<Double>?(319);
    if (v8 <= 0x3F)
    {
      type metadata accessor for MeasurementFormatUnitUsage(255, v4, v6, v7);
      type metadata accessor for Optional();
      if (v9 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata accessor for FloatingPointFormatStyle<Double>?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for FloatingPointFormatStyle<Double>?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation24FloatingPointFormatStyleVySdGMd, &_s10Foundation24FloatingPointFormatStyleVySdGMR);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for FloatingPointFormatStyle<Double>?);
    }
  }
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = (a4)(0, a2, a3);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1, a2, v6);
}

uint64_t __swift_get_extra_inhabitant_indexTm_0(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for NumberFormatStyleConfiguration.Collection(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t __swift_get_extra_inhabitant_indexTm_1(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for NumberFormatStyleConfiguration.Collection(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

uint64_t __swift_get_extra_inhabitant_indexTm_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 40) >> 1;
    v5 = -2 - v4;
    if (-2 - v4 < 0)
    {
      v5 = -1;
    }

    if (v4 > 0x80000000)
    {
      return (v5 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss25FloatingPointRoundingRuleOSgMd, &_ss25FloatingPointRoundingRuleOSgMR);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 36);

    return v10(v11, a2, v9);
  }
}

uint64_t __swift_get_extra_inhabitant_indexTm_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = (a4)(0, a2, a3);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1, a2, v6);
}

uint64_t lazy protocol witness table accessor for type CFDictionaryRef and conformance CFDictionaryRef(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t _sSo15CFDictionaryRefaAB14CoreFoundation9_CFObjectSCWlTm_0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t _sSo15CFDictionaryRefaAB14CoreFoundation9_CFObjectSCWlTm_1(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t _sSo15CFDictionaryRefaAB14CoreFoundation9_CFObjectSCWlTm_2(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t outlined assign with take of FloatingPointFormatStyle<Double>?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation24FloatingPointFormatStyleVySdGSgMd, &_s10Foundation24FloatingPointFormatStyleVySdGSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v7 = (a5)(0, a2, a3, a4);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1, a2, a2, v7);
}

void *__swift_store_extra_inhabitant_indexTm_0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for NumberFormatStyleConfiguration.Collection(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void *__swift_store_extra_inhabitant_indexTm_1(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for NumberFormatStyleConfiguration.Collection(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t __swift_store_extra_inhabitant_indexTm_2(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *(result + 40) = 2 * ~a2;
    *(result + 56) = 0;
    *(result + 64) = 0;
    *(result + 48) = 0;
    *(result + 72) = 0;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss25FloatingPointRoundingRuleOSgMd, &_ss25FloatingPointRoundingRuleOSgMR);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t __swift_store_extra_inhabitant_indexTm_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v7 = (a5)(0, a2, a3, a4);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1, a2, a2, v7);
}

uint64_t instantiation function for generic protocol witness table for Measurement<A><>.FormatStyle(void *a1, uint64_t a2)
{
  a1[1] = swift_getWitnessTable();
  a1[2] = swift_getWitnessTable();
  result = swift_getWitnessTable();
  a1[3] = result;
  return result;
}

uint64_t Measurement<>.FormatStyle.format(_:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = a2;
  v6 = 0;
  v266 = *MEMORY[0x1E69E9840];
  v7 = *(a1 + 8);
  v264 = *a1;
  v265 = v7;
  type metadata accessor for Measurement(0, a2[2], a3, a4);
  v8 = v264;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo17NSUnitTemperatureCGMd, &_s10Foundation11MeasurementVySo17NSUnitTemperatureCGMR);
  v259 = v4;
  v261 = v5;
  v260 = v8;
  if (!swift_dynamicCast())
  {
LABEL_9:
    v264 = v8;
    v265 = v7;
    v256 = Measurement<>.FormatStyle.skeleton(forMeasurement:)(&v264, v5);
    if (!v30)
    {
      v17 = v6;
      goto LABEL_105;
    }

    v31 = v30;
    v32 = *(v4 + 16);
    ObjectType = swift_getObjectType();
    v34 = *(v32 + 472);
    swift_unknownObjectRetain();

    *&v244 = v32 + 472;
    v35 = v34(ObjectType, v32);
    v37 = v36;
    v17 = v6;
    v38 = v31;
    if (one-time initialization token for cache != -1)
    {
      v65 = v35;
      swift_once();
      v35 = v65;
    }

    v39 = *algn_1EA7B1588;
    v241 = static ICUMeasurementNumberFormatter.cache;
    v5 = v256;
    v250 = v35;
    MEMORY[0x1EEE9AC00](v35);
    os_unfair_lock_lock(v39 + 6);
    closure #1 in FormatterCache.formatter(for:creator:)specialized partial apply(&v39[4], &v264);
    v247 = v39;
    os_unfair_lock_unlock(v39 + 6);
    v6 = v264;
    v22 = v38;
    if (v264 != 1)
    {
      goto LABEL_100;
    }

    v253 = v17;
    v23 = v34(ObjectType, v32);
    v4 = v40;
    type metadata accessor for ICUMeasurementNumberFormatter();
    v6 = swift_allocObject();
    v6[3] = v256;
    v6[4] = v38;

    v41 = MEMORY[0x1865CB200](v256, v38);
    if (v41)
    {
      v8 = v41;
      v21 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs6UInt16V_Tt1gq5(v41, 0);

      v9 = specialized Sequence._copySequenceContents(initializing:)(&v264, (v21 + 4), v8, v256, v22);

      v42 = v247;
      if (v9 != v8)
      {
        __break(1u);
        goto LABEL_16;
      }
    }

    else
    {
      v21 = MEMORY[0x1E69E7CC0];
      v42 = v247;
    }

    LODWORD(v264) = 0;
    isUniquelyReferenced_nonNull_native = v21[2];
    if (!(isUniquelyReferenced_nonNull_native >> 31))
    {
      String.utf8CString.getter();

      v45 = unumf_openForSkeletonAndLocale();

      if (v45)
      {
        if (v264 < 1)
        {
          v6[2] = v45;
LABEL_43:
          os_unfair_lock_lock((v42 + 24));
          v244 = *(v42 + 16);
          if (v241 < *(*&v244 + 16))
          {
            *(v42 + 16) = MEMORY[0x1E69E7CC8];
          }

          else
          {
          }

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v264 = *(v42 + 16);
          v23 = v264;
          *(v42 + 16) = 0x8000000000000000;
          v26 = specialized __RawDictionaryStorage.find<A>(_:)(v256, v22, v250, v37);
          v56 = v23[2];
          v57 = (v55 & 1) == 0;
          v58 = v56 + v57;
          if (!__OFADD__(v56, v57))
          {
            v59 = v55;
            if (v23[3] < v58)
            {
              specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v58, isUniquelyReferenced_nonNull_native);
              v60 = v264;
              v61 = specialized __RawDictionaryStorage.find<A>(_:)(v256, v22, v250, v37);
              if ((v59 & 1) != (v62 & 1))
              {
                goto LABEL_219;
              }

              v26 = v61;
LABEL_52:
              v17 = v253;
              if (v59)
              {
LABEL_53:
                v63 = v26;

                *(v60[7] + 8 * v63) = v6;

LABEL_99:
                *(v42 + 16) = v60;

                os_unfair_lock_unlock((v42 + 24));

                outlined consume of ICUMeasurementNumberFormatter??(1);
LABEL_100:
                swift_unknownObjectRelease();

                if (v6)
                {
                  v112 = v6[2];
                  type metadata accessor for ICUNumberFormatterBase.FormatResult();
                  swift_initStackObject();
                  v113 = ICUNumberFormatterBase.FormatResult.init(formatter:value:)(v112, v7);
                  v5 = v261;
                  if (!v17)
                  {
                    goto LABEL_113;
                  }

                  v17 = 0;
                  v4 = v259;
                }

                else
                {

                  v4 = v259;
                  v5 = v261;
                }

                v8 = v260;
                while (1)
                {
LABEL_105:
                  if ((Measurement<>.FormatStyle.shouldConvertToBestUnit.getter(v5) & 1) == 0)
                  {
                    goto LABEL_158;
                  }

                  v264 = v8;
                  v265 = v7;
                  v114 = Measurement<>.FormatStyle.skeletonForUsage(_:)(&v264, v5);
                  if (!v115)
                  {
                    goto LABEL_158;
                  }

                  v117 = v115;
                  v251 = v114;
                  v245 = v116;

                  v118 = *(v4 + 16);
                  v119 = swift_getObjectType();
                  v120 = v118 + 472;
                  v121 = *(v118 + 472);
                  swift_unknownObjectRetain();

                  v122 = v121(v119, v118);
                  if (one-time initialization token for cache != -1)
                  {
                    v142 = v122;
                    v143 = v123;
                    swift_once();
                    v122 = v142;
                    v123 = v143;
                  }

                  v124 = *algn_1EA7B1588;
                  v237 = static ICUMeasurementNumberFormatter.cache;
                  v125 = v251;
                  v248 = v122;
                  v257 = v123;
                  MEMORY[0x1EEE9AC00](v122);
                  os_unfair_lock_lock(v124 + 6);
                  closure #1 in FormatterCache.formatter(for:creator:)specialized partial apply(&v124[4], &v264);
                  v243 = v124;
                  os_unfair_lock_unlock(v124 + 6);
                  v5 = v264;
                  if (v264 != 1)
                  {
                    goto LABEL_153;
                  }

                  v254 = v17;
                  v126 = v121(v119, v118);
                  type metadata accessor for ICUMeasurementNumberFormatter();
                  v5 = swift_allocObject();
                  v5[3] = v251;
                  v5[4] = v117;

                  v127 = MEMORY[0x1865CB200](v251, v117);
                  if (!v127)
                  {
                    break;
                  }

                  v120 = v127;
                  v128 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs6UInt16V_Tt1gq5(v127, 0);

                  v17 = specialized Sequence._copySequenceContents(initializing:)(&v264, (v128 + 4), v120, v251, v117);

                  v129 = v243;
                  if (v17 == v120)
                  {
                    goto LABEL_116;
                  }

                  __break(1u);
LABEL_113:
                  v130 = v113;

                  v109 = specialized _withResizingUCharBuffer(initialSize:_:)(32, v130);
                  v132 = v131;

                  v4 = v259;
                  v8 = v260;
                  if (v132)
                  {
                    return v109;
                  }
                }

                v128 = MEMORY[0x1E69E7CC0];
                v129 = v243;
LABEL_116:
                LODWORD(v264) = 0;
                if (v128[2] >> 31)
                {
                  __break(1u);
                  goto LABEL_134;
                }

                String.utf8CString.getter();

                v133 = unumf_openForSkeletonAndLocale();

                if (v133)
                {
                  if (v264 < 1)
                  {
                    v5[2] = v133;
LABEL_122:
                    os_unfair_lock_lock(v129 + 6);
                    if (v237 >= *(*&v129[4]._os_unfair_lock_opaque + 16))
                    {
                    }

                    else
                    {
                      *&v129[4]._os_unfair_lock_opaque = MEMORY[0x1E69E7CC8];
                    }

                    v134 = swift_isUniquelyReferenced_nonNull_native();
                    v264 = *&v129[4]._os_unfair_lock_opaque;
                    v126 = v264;
                    *&v129[4]._os_unfair_lock_opaque = 0x8000000000000000;
                    v120 = specialized __RawDictionaryStorage.find<A>(_:)(v251, v117, v248, v257);
                    v136 = v126[2];
                    v137 = (v135 & 1) == 0;
                    v138 = v136 + v137;
                    if (!__OFADD__(v136, v137))
                    {
                      LOBYTE(v128) = v135;
                      if (v126[3] < v138)
                      {
                        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v138, v134);
                        v139 = v264;
                        v140 = specialized __RawDictionaryStorage.find<A>(_:)(v251, v117, v248, v257);
                        if ((v128 & 1) != (v141 & 1))
                        {
                          goto LABEL_219;
                        }

                        v120 = v140;
LABEL_131:
                        v17 = v254;
                        if (v128)
                        {
LABEL_132:

                          *(v139[7] + 8 * v120) = v5;

LABEL_152:
                          *&v129[4]._os_unfair_lock_opaque = v139;

                          os_unfair_lock_unlock(v129 + 6);

                          outlined consume of ICUMeasurementNumberFormatter??(1);
LABEL_153:
                          swift_unknownObjectRelease();

                          if (!v5)
                          {

                            goto LABEL_157;
                          }

                          v161 = v5[2];
                          type metadata accessor for ICUNumberFormatterBase.FormatResult();
                          swift_initStackObject();
                          v162 = ICUNumberFormatterBase.FormatResult.init(formatter:value:)(v161, v245);
                          if (v17)
                          {

                            v17 = 0;
                            goto LABEL_157;
                          }

                          v185 = v162;

                          v109 = specialized _withResizingUCharBuffer(initialSize:_:)(32, v185);
                          v187 = v186;

                          v4 = v259;
                          v5 = v261;
                          v8 = v260;
                          if (v187)
                          {
                            return v109;
                          }

                          goto LABEL_158;
                        }

LABEL_151:
                        specialized _NativeDictionary._insert(at:key:value:)(v120, v125, v117, v248, v257, v5, v139);
                        goto LABEL_152;
                      }

                      if (v134)
                      {
                        v139 = v126;
                        goto LABEL_131;
                      }

LABEL_135:
                      v234 = v120;
                      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation29ICUMeasurementNumberFormatterC9Signature33_1C58B5D80AA37B9371410D3343C91B53LLVAESgGMd, &_ss18_DictionaryStorageCy10Foundation29ICUMeasurementNumberFormatterC9Signature33_1C58B5D80AA37B9371410D3343C91B53LLVAESgGMR);
                      v144 = static _DictionaryStorage.copy(original:)();
                      v139 = v144;
                      if (v126[2])
                      {
                        v145 = (v144 + 64);
                        v146 = (v126 + 8);
                        v147 = ((1 << *(v139 + 32)) + 63) >> 6;
                        if (v139 != v126 || v145 >= &v146[8 * v147])
                        {
                          memmove(v145, v126 + 8, 8 * v147);
                        }

                        v148 = 0;
                        v139[2] = v126[2];
                        v149 = 1 << *(v126 + 32);
                        v150 = -1;
                        if (v149 < 64)
                        {
                          v150 = ~(-1 << v149);
                        }

                        v238 = v150 & v126[8];
                        v229 = (v149 + 63) >> 6;
                        while (v238)
                        {
                          v151 = __clz(__rbit64(v238));
                          v238 &= v238 - 1;
LABEL_149:
                          v154 = v151 | (v148 << 6);
                          v155 = (v126[6] + 32 * v154);
                          v156 = v155[1];
                          v157 = v155[2];
                          v158 = v155[3];
                          v159 = *(v126[7] + 8 * v154);
                          v160 = (v139[6] + 32 * v154);
                          *v160 = *v155;
                          v160[1] = v156;
                          v160[2] = v157;
                          v160[3] = v158;
                          *(v139[7] + 8 * v154) = v159;
                        }

                        v152 = v148;
                        while (1)
                        {
                          v148 = v152 + 1;
                          if (__OFADD__(v152, 1))
                          {
                            goto LABEL_218;
                          }

                          if (v148 >= v229)
                          {
                            break;
                          }

                          v153 = *&v146[8 * v148];
                          ++v152;
                          if (v153)
                          {
                            v151 = __clz(__rbit64(v153));
                            v238 = (v153 - 1) & v153;
                            goto LABEL_149;
                          }
                        }
                      }

                      v17 = v254;
                      v125 = v251;
                      v129 = v243;
                      v120 = v234;
                      if (v128)
                      {
                        goto LABEL_132;
                      }

                      goto LABEL_151;
                    }

LABEL_134:
                    __break(1u);
                    goto LABEL_135;
                  }

                  unumf_close();
                }

                type metadata accessor for ICUNumberFormatterBase();
                swift_deallocPartialClassInstance();
                v5 = 0;
                goto LABEL_122;
              }

LABEL_98:
              specialized _NativeDictionary._insert(at:key:value:)(v26, v5, v22, v250, v37, v6, v60);
              goto LABEL_99;
            }

            if (isUniquelyReferenced_nonNull_native)
            {
              v60 = v23;
              goto LABEL_52;
            }

            v242 = v26;
            v236 = v22;
            v233 = v6;
            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation29ICUMeasurementNumberFormatterC9Signature33_1C58B5D80AA37B9371410D3343C91B53LLVAESgGMd, &_ss18_DictionaryStorageCy10Foundation29ICUMeasurementNumberFormatterC9Signature33_1C58B5D80AA37B9371410D3343C91B53LLVAESgGMR);
            v86 = static _DictionaryStorage.copy(original:)();
            v60 = v86;
            if (!v23[2])
            {
LABEL_97:

              v17 = v253;
              v5 = v256;
              v6 = v233;
              v42 = v247;
              v22 = v236;
              v26 = v242;
              if (v59)
              {
                goto LABEL_53;
              }

              goto LABEL_98;
            }

            v87 = (v86 + 64);
            v88 = (v23 + 8);
            v89 = ((1 << *(v60 + 32)) + 63) >> 6;
            if (v60 != v23 || v87 >= &v88[8 * v89])
            {
              memmove(v87, v23 + 8, 8 * v89);
            }

            v90 = 0;
            v60[2] = v23[2];
            v91 = 1 << *(v23 + 32);
            v92 = v23[8];
            v93 = -1;
            if (v91 < 64)
            {
              v93 = ~(-1 << v91);
            }

            v94 = v93 & v92;
            v95 = (v91 + 63) >> 6;
            if ((v93 & v92) != 0)
            {
              do
              {
                v96 = __clz(__rbit64(v94));
                v94 &= v94 - 1;
LABEL_86:
                v99 = v96 | (v90 << 6);
                v100 = (v23[6] + 32 * v99);
                v101 = v100[1];
                v102 = v100[2];
                v103 = v100[3];
                v104 = *(v23[7] + 8 * v99);
                v105 = (v60[6] + 32 * v99);
                *v105 = *v100;
                v105[1] = v101;
                v105[2] = v102;
                v105[3] = v103;
                *(v60[7] + 8 * v99) = v104;
              }

              while (v94);
            }

            v97 = v90;
            while (1)
            {
              v90 = v97 + 1;
              if (__OFADD__(v97, 1))
              {
                break;
              }

              if (v90 >= v95)
              {
                goto LABEL_97;
              }

              v98 = *&v88[8 * v90];
              ++v97;
              if (v98)
              {
                v96 = __clz(__rbit64(v98));
                v94 = (v98 - 1) & v98;
                goto LABEL_86;
              }
            }

LABEL_216:
            __break(1u);
LABEL_217:
            __break(1u);
LABEL_218:
            __break(1u);
            goto LABEL_219;
          }

          goto LABEL_57;
        }

        unumf_close();
      }

      type metadata accessor for ICUNumberFormatterBase();
      swift_deallocPartialClassInstance();
      v6 = 0;
      goto LABEL_43;
    }

    goto LABEL_55;
  }

  v9 = v262;
  v264 = v262;
  v265 = v263;
  v256 = Measurement<>.FormatStyle.skeletonForUsage(_:)(&v264, v5);
  if (!v10)
  {
LABEL_16:

    v17 = v6;
    goto LABEL_158;
  }

  v12 = v10;
  v244 = v11;
  v250 = v262;
  v13 = *(v4 + 16);
  v14 = swift_getObjectType();
  v15 = *(v13 + 472);
  swift_unknownObjectRetain();

  v16 = v15(v14, v13);
  v17 = 0;
  v18 = v12;
  if (one-time initialization token for cache != -1)
  {
    v64 = v16;
    swift_once();
    v16 = v64;
  }

  v19 = *algn_1EA7B1588;
  v231 = static ICUMeasurementNumberFormatter.cache;
  v5 = v256;
  v247 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v6 = v20;
  os_unfair_lock_lock(v19 + 6);
  closure #1 in FormatterCache.formatter(for:creator:)specialized partial apply(&v19[4], &v264);
  v241 = v19;
  os_unfair_lock_unlock(v19 + 6);
  v21 = v264;
  v22 = v18;
  if (v264 == 1)
  {
    v253 = 0;
    v23 = v15(v14, v13);
    v4 = v24;
    type metadata accessor for ICUMeasurementNumberFormatter();
    v21 = swift_allocObject();
    v21[3] = v256;
    v21[4] = v18;

    v25 = MEMORY[0x1865CB200](v256, v18);
    if (v25)
    {
      v27 = v25;
      v28 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs6UInt16V_Tt1gq5(v25, 0);

      v8 = specialized Sequence._copySequenceContents(initializing:)(&v264, (v28 + 4), v27, v256, v18);

      v29 = v241;
      if (v8 != v27)
      {
        __break(1u);
        goto LABEL_9;
      }
    }

    else
    {
      v28 = MEMORY[0x1E69E7CC0];
      v29 = v241;
    }

    LODWORD(v264) = 0;
    isUniquelyReferenced_nonNull_native = v28[2];
    if (isUniquelyReferenced_nonNull_native >> 31)
    {
      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      v232 = v26;
      v228 = v22;
      v227 = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation29ICUMeasurementNumberFormatterC9Signature33_1C58B5D80AA37B9371410D3343C91B53LLVAESgGMd, &_ss18_DictionaryStorageCy10Foundation29ICUMeasurementNumberFormatterC9Signature33_1C58B5D80AA37B9371410D3343C91B53LLVAESgGMR);
      v66 = static _DictionaryStorage.copy(original:)();
      v51 = v66;
      if (v23[2])
      {
        v67 = (v66 + 64);
        v68 = (v23 + 8);
        v69 = ((1 << v51[32]) + 63) >> 6;
        if (v51 != v23 || v67 >= &v68[8 * v69])
        {
          memmove(v67, v23 + 8, 8 * v69);
        }

        v70 = 0;
        *(v51 + 2) = v23[2];
        v71 = 1 << *(v23 + 32);
        v72 = v23[8];
        v73 = -1;
        if (v71 < 64)
        {
          v73 = ~(-1 << v71);
        }

        v74 = v73 & v72;
        v75 = (v71 + 63) >> 6;
        if ((v73 & v72) != 0)
        {
          do
          {
            v76 = __clz(__rbit64(v74));
            v74 &= v74 - 1;
LABEL_71:
            v79 = v76 | (v70 << 6);
            v80 = (v23[6] + 32 * v79);
            v81 = v80[1];
            v82 = v80[2];
            v83 = v80[3];
            v84 = *(v23[7] + 8 * v79);
            v85 = (*(v51 + 6) + 32 * v79);
            *v85 = *v80;
            v85[1] = v81;
            v85[2] = v82;
            v85[3] = v83;
            *(*(v51 + 7) + 8 * v79) = v84;
          }

          while (v74);
        }

        v77 = v70;
        while (1)
        {
          v70 = v77 + 1;
          if (__OFADD__(v77, 1))
          {
            break;
          }

          if (v70 >= v75)
          {
            goto LABEL_88;
          }

          v78 = *&v68[8 * v70];
          ++v77;
          if (v78)
          {
            v76 = __clz(__rbit64(v78));
            v74 = (v78 - 1) & v78;
            goto LABEL_71;
          }
        }

        __break(1u);
        goto LABEL_216;
      }

LABEL_88:

      v21 = v227;
      v5 = v256;
      v29 = v241;
      v22 = v228;
      v26 = v232;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        goto LABEL_89;
      }

      goto LABEL_41;
    }

    String.utf8CString.getter();

    v44 = unumf_openForSkeletonAndLocale();

    if (v44)
    {
      if (v264 < 1)
      {
        v21[2] = v44;
LABEL_31:
        os_unfair_lock_lock((v29 + 24));
        if (v231 < *(*(v29 + 16) + 16))
        {
          *(v29 + 16) = MEMORY[0x1E69E7CC8];
        }

        else
        {
        }

        v46 = swift_isUniquelyReferenced_nonNull_native();
        v264 = *(v29 + 16);
        v23 = v264;
        *(v29 + 16) = 0x8000000000000000;
        v26 = specialized __RawDictionaryStorage.find<A>(_:)(v256, v22, v247, v6);
        v48 = v23[2];
        v49 = (v47 & 1) == 0;
        v50 = v48 + v49;
        if (!__OFADD__(v48, v49))
        {
          LOBYTE(isUniquelyReferenced_nonNull_native) = v47;
          if (v23[3] >= v50)
          {
            if ((v46 & 1) == 0)
            {
              goto LABEL_58;
            }

            v51 = v23;
          }

          else
          {
            specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v50, v46);
            v51 = v264;
            v52 = specialized __RawDictionaryStorage.find<A>(_:)(v256, v22, v247, v6);
            if ((isUniquelyReferenced_nonNull_native & 1) != (v53 & 1))
            {
              goto LABEL_219;
            }

            v26 = v52;
          }

          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
LABEL_89:
            specialized _NativeDictionary._insert(at:key:value:)(v26, v5, v22, v247, v6, v21, v51);
            goto LABEL_90;
          }

LABEL_41:
          v54 = v26;

          *(*(v51 + 7) + 8 * v54) = v21;

LABEL_90:
          *(v29 + 16) = v51;

          os_unfair_lock_unlock((v29 + 24));

          outlined consume of ICUMeasurementNumberFormatter??(1);
          v17 = v253;
          goto LABEL_91;
        }

        goto LABEL_56;
      }

      unumf_close();
    }

    type metadata accessor for ICUNumberFormatterBase();
    swift_deallocPartialClassInstance();
    v21 = 0;
    goto LABEL_31;
  }

LABEL_91:
  swift_unknownObjectRelease();

  if (v21)
  {
    v106 = v21[2];
    type metadata accessor for ICUNumberFormatterBase.FormatResult();
    swift_initStackObject();
    v107 = ICUNumberFormatterBase.FormatResult.init(formatter:value:)(v106, v244);
    v5 = v261;
    v8 = v260;
    if (v17)
    {

      v17 = 0;
      v4 = v259;
    }

    else
    {
      v108 = v107;

      v109 = specialized _withResizingUCharBuffer(initialSize:_:)(32, v108);
      v111 = v110;

      v17 = 0;

      v4 = v259;
      if (v111)
      {
        return v109;
      }
    }
  }

  else
  {

LABEL_157:
    v4 = v259;
    v5 = v261;
    v8 = v260;
  }

LABEL_158:
  if ((Measurement<>.FormatStyle.shouldConvertToBestUnit.getter(v5) & 1) == 0)
  {
    goto LABEL_211;
  }

  v264 = v8;
  v265 = v7;
  v163 = Measurement<>.FormatStyle.skeletonForBaseUnit(_:)(&v264, v5);
  if (!v164)
  {
    goto LABEL_211;
  }

  v166 = v164;
  v255 = v163;
  v249 = v165;

  v167 = *(v4 + 16);
  v168 = swift_getObjectType();
  v169 = *(v167 + 472);
  swift_unknownObjectRetain();

  v170 = v169(v168, v167);
  v172 = v171;
  v173 = v166;
  if (one-time initialization token for cache != -1)
  {
    v198 = v170;
    swift_once();
    v170 = v198;
  }

  v174 = *algn_1EA7B1588;
  v239 = static ICUMeasurementNumberFormatter.cache;
  v252 = v170;
  MEMORY[0x1EEE9AC00](v170);
  os_unfair_lock_lock(v174 + 6);
  partial apply for specialized closure #1 in FormatterCache.formatter(for:creator:)(&v174[4], &v264);
  v246 = v174;
  os_unfair_lock_unlock(v174 + 6);
  v175 = v264;
  v176 = v173;
  if (v264 != 1)
  {
LABEL_206:
    swift_unknownObjectRelease();

    if (v175)
    {
      v221 = v175[2];
      type metadata accessor for ICUNumberFormatterBase.FormatResult();
      swift_initStackObject();
      v222 = ICUNumberFormatterBase.FormatResult.init(formatter:value:)(v221, v249);
      if (!v17)
      {
        v224 = v222;

        v109 = specialized _withResizingUCharBuffer(initialSize:_:)(32, v224);
        v226 = v225;

        v5 = v261;
        v8 = v260;
        if (v226)
        {
          return v109;
        }

        goto LABEL_211;
      }
    }

    else
    {
    }

    v5 = v261;
    v8 = v260;
LABEL_211:
    v264 = v8;
    v265 = v7;
    v109 = Measurement<>.FormatStyle.formatAsDescription(_:)(&v264, v5);

    return v109;
  }

  v235 = v17;
  v258 = v172;
  v169(v168, v167);
  type metadata accessor for ICUMeasurementNumberFormatter();
  v177 = swift_allocObject();
  v177[3] = v255;
  v177[4] = v173;

  v178 = MEMORY[0x1865CB200](v255, v173);
  v179 = v255;
  if (v178)
  {
    v173 = v178;
    v180 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs6UInt16V_Tt1gq5(v178, 0);

    v181 = specialized Sequence._copySequenceContents(initializing:)(&v264, (v180 + 4), v173, v255, v176);

    v182 = v246;
    if (v181 == v173)
    {
      goto LABEL_167;
    }

    __break(1u);
  }

  v180 = MEMORY[0x1E69E7CC0];
  v182 = v246;
LABEL_167:
  LODWORD(v264) = 0;
  v183 = v180[2];
  if (v183 >> 31)
  {
    __break(1u);
LABEL_187:
    __break(1u);
LABEL_188:
    v240 = v173;
    v230 = v176;
    v199 = v177;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation29ICUMeasurementNumberFormatterC9Signature33_1C58B5D80AA37B9371410D3343C91B53LLVAESgGMd, &_ss18_DictionaryStorageCy10Foundation29ICUMeasurementNumberFormatterC9Signature33_1C58B5D80AA37B9371410D3343C91B53LLVAESgGMR);
    v200 = static _DictionaryStorage.copy(original:)();
    v193 = v200;
    if (!v180[2])
    {
LABEL_203:

      v179 = v255;
      v17 = v235;
      v177 = v199;
      v182 = v246;
      v176 = v230;
      v173 = v240;
      if (v183)
      {
        goto LABEL_185;
      }

      goto LABEL_204;
    }

    v201 = (v200 + 64);
    v202 = v180 + 8;
    v203 = ((1 << v193[32]) + 63) >> 6;
    if (v193 != v180 || v201 >= &v202[v203])
    {
      memmove(v201, v180 + 8, 8 * v203);
    }

    v204 = 0;
    *(v193 + 2) = v180[2];
    v205 = 1 << *(v180 + 32);
    v206 = v180[8];
    v207 = -1;
    if (v205 < 64)
    {
      v207 = ~(-1 << v205);
    }

    v208 = v207 & v206;
    v209 = (v205 + 63) >> 6;
    if ((v207 & v206) != 0)
    {
      do
      {
        v210 = __clz(__rbit64(v208));
        v208 &= v208 - 1;
LABEL_201:
        v213 = v210 | (v204 << 6);
        v214 = (v180[6] + 32 * v213);
        v215 = v214[1];
        v216 = v214[2];
        v217 = v214[3];
        v218 = *(v180[7] + 8 * v213);
        v219 = (*(v193 + 6) + 32 * v213);
        *v219 = *v214;
        v219[1] = v215;
        v219[2] = v216;
        v219[3] = v217;
        *(*(v193 + 7) + 8 * v213) = v218;
      }

      while (v208);
    }

    v211 = v204;
    while (1)
    {
      v204 = v211 + 1;
      if (__OFADD__(v211, 1))
      {
        goto LABEL_217;
      }

      if (v204 >= v209)
      {
        goto LABEL_203;
      }

      v212 = v202[v204];
      ++v211;
      if (v212)
      {
        v210 = __clz(__rbit64(v212));
        v208 = (v212 - 1) & v212;
        goto LABEL_201;
      }
    }
  }

  String.utf8CString.getter();

  v184 = unumf_openForSkeletonAndLocale();

  if (!v184)
  {
    goto LABEL_171;
  }

  if (v264 >= 1)
  {
    unumf_close();
LABEL_171:

    type metadata accessor for ICUNumberFormatterBase();
    swift_deallocPartialClassInstance();
    v177 = 0;
    goto LABEL_175;
  }

  v177[2] = v184;
LABEL_175:
  os_unfair_lock_lock(v182 + 6);
  if (v239 < *(*&v182[4]._os_unfair_lock_opaque + 16))
  {
    *&v182[4]._os_unfair_lock_opaque = MEMORY[0x1E69E7CC8];
  }

  else
  {
  }

  v188 = swift_isUniquelyReferenced_nonNull_native();
  v264 = *&v182[4]._os_unfair_lock_opaque;
  v180 = v264;
  *&v182[4]._os_unfair_lock_opaque = 0x8000000000000000;
  v173 = specialized __RawDictionaryStorage.find<A>(_:)(v255, v176, v252, v258);
  v190 = v180[2];
  v191 = (v189 & 1) == 0;
  v192 = v190 + v191;
  if (__OFADD__(v190, v191))
  {
    goto LABEL_187;
  }

  LOBYTE(v183) = v189;
  if (v180[3] >= v192)
  {
    if (v188)
    {
      v193 = v180;
LABEL_184:
      v17 = v235;
      if (v183)
      {
LABEL_185:

        v196 = v173;
        v197 = v177;
        *(*(v193 + 7) + 8 * v196) = v177;

LABEL_205:
        *&v182[4]._os_unfair_lock_opaque = v193;

        os_unfair_lock_unlock(v182 + 6);

        outlined consume of ICUMeasurementNumberFormatter??(1);
        v175 = v197;
        goto LABEL_206;
      }

LABEL_204:
      v220 = v173;
      v197 = v177;
      specialized _NativeDictionary._insert(at:key:value:)(v220, v179, v176, v252, v258, v177, v193);
      goto LABEL_205;
    }

    goto LABEL_188;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v192, v188);
  v193 = v264;
  v194 = specialized __RawDictionaryStorage.find<A>(_:)(v255, v176, v252, v258);
  if ((v183 & 1) == (v195 & 1))
  {
    v173 = v194;
    goto LABEL_184;
  }

LABEL_219:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t Measurement<>.formatted<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4[1];
  v7[0] = *v4;
  v7[1] = v5;
  return (*(a4 + 48))(v7, a3, a4);
}

uint64_t protocol witness for FormatStyle.format(_:) in conformance Measurement<A><>.FormatStyle@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  result = Measurement<>.FormatStyle.format(_:)(a1, a2, a3, a4);
  *a5 = result;
  a5[1] = v7;
  return result;
}

id NSDimension.skeleton.getter()
{
  v34[4] = *MEMORY[0x1E69E9840];
  result = [swift_getObjCClassFromObject() icuType];
  if (result)
  {
    v2 = result;
    isTaggedPointer = _objc_isTaggedPointer(result);
    v4 = v2;
    v5 = v4;
    if (!isTaggedPointer)
    {
LABEL_7:
      LOBYTE(v31) = 0;
      v34[0] = 0;
      if (__CFStringIsCF())
      {

LABEL_12:
        v7 = 0;
        v9 = 0xE000000000000000;
        goto LABEL_23;
      }

      v10 = v5;
      v11 = String.init(_nativeStorage:)();
      if (v12)
      {
        v7 = v11;
        v9 = v12;

        goto LABEL_23;
      }

      if (![v10 length])
      {

        goto LABEL_12;
      }

      v7 = String.init(_cocoaString:)();
      v9 = v15;
LABEL_22:

      goto LABEL_23;
    }

    TaggedPointerTag = _objc_getTaggedPointerTag(v4);
    if (TaggedPointerTag)
    {
      if (TaggedPointerTag != 22)
      {
        if (TaggedPointerTag == 2)
        {
          MEMORY[0x1EEE9AC00](TaggedPointerTag);
          v7 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
          v9 = v8;

LABEL_23:
          v16 = [v0 icuSubtype];
          if (!v16)
          {

            return 0;
          }

          v17 = v16;
          v18 = _objc_isTaggedPointer(v16);
          v19 = v17;
          v20 = v19;
          if (!v18)
          {
LABEL_29:
            v34[0] = 0;
            if (__CFStringIsCF())
            {
              v22 = v34[0];

              v24 = 0xE000000000000000;
              goto LABEL_44;
            }

            v25 = v20;
            v26 = String.init(_nativeStorage:)();
            if (v27)
            {
              v22 = v26;
              v24 = v27;

              goto LABEL_44;
            }

            if (![v25 length])
            {

              v22 = 0;
              v24 = 0xE000000000000000;
              goto LABEL_44;
            }

            v22 = String.init(_cocoaString:)();
            v24 = v30;
LABEL_43:

            goto LABEL_44;
          }

          v21 = _objc_getTaggedPointerTag(v19);
          if (!v21)
          {
            goto LABEL_37;
          }

          if (v21 != 22)
          {
            if (v21 == 2)
            {
              MEMORY[0x1EEE9AC00](v21);
              v22 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
              v24 = v23;

LABEL_44:
              v34[0] = 0;
              v34[1] = 0xE000000000000000;
              _StringGuts.grow(_:)(18);

              strcpy(v34, "measure-unit/");
              HIWORD(v34[1]) = -4864;
              MEMORY[0x1865CB0E0](v7, v9);

              MEMORY[0x1865CB0E0](45, 0xE100000000000000);
              MEMORY[0x1865CB0E0](v22, v24);

              return v34[0];
            }

            goto LABEL_29;
          }

          result = [v20 UTF8String];
          if (result)
          {
            v28 = String.init(utf8String:)(result);
            if (v29)
            {
LABEL_38:
              v22 = v28;
              v24 = v29;

              goto LABEL_43;
            }

            __break(1u);
LABEL_37:
            _CFIndirectTaggedPointerStringGetContents();
            v28 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
            if (!v29)
            {
              [v20 mutableCopy];
              _bridgeAnyObjectToAny(_:)();

              swift_unknownObjectRelease();
              swift_dynamicCast();
              v22 = v32;
              v24 = v33;
              goto LABEL_43;
            }

            goto LABEL_38;
          }

          goto LABEL_46;
        }

        goto LABEL_7;
      }

      result = [v5 UTF8String];
      if (!result)
      {
        __break(1u);
LABEL_46:
        __break(1u);
        return result;
      }

      v13 = String.init(utf8String:)(result);
      if (v14)
      {
LABEL_17:
        v7 = v13;
        v9 = v14;

        goto LABEL_22;
      }

      __break(1u);
    }

    _CFIndirectTaggedPointerStringGetContents();
    v13 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v14)
    {
      [v5 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v7 = v31;
      v9 = v33;
      goto LABEL_22;
    }

    goto LABEL_17;
  }

  return result;
}

uint64_t outlined init with copy of NumberFormatStyleConfiguration.Collection(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NumberFormatStyleConfiguration.Collection(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of NumberFormatStyleConfiguration.Collection(uint64_t a1)
{
  v2 = type metadata accessor for NumberFormatStyleConfiguration.Collection(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type ICUMeasurementNumberFormatter.Signature and conformance ICUMeasurementNumberFormatter.Signature()
{
  result = lazy protocol witness table cache variable for type ICUMeasurementNumberFormatter.Signature and conformance ICUMeasurementNumberFormatter.Signature;
  if (!lazy protocol witness table cache variable for type ICUMeasurementNumberFormatter.Signature and conformance ICUMeasurementNumberFormatter.Signature)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ICUMeasurementNumberFormatter.Signature and conformance ICUMeasurementNumberFormatter.Signature);
  }

  return result;
}

uint64_t specialized closure #1 in FormatterCache.formatter(for:creator:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  result = specialized closure #1 in FormatterCache.formatter(for:creator:)(a1, *a2, a2[1], a2[2], a2[3]);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

{
  result = specialized closure #1 in FormatterCache.formatter(for:creator:)(a1, *a2, a2[1], a2[2], a2[3]);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t Measurement.init(value:unit:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  *(a2 + 8) = a3;
  *a2 = result;
  return result;
}

uint64_t static FormatStyle.measurement<A>(width:usage:numberFormatStyle:)@<X0>(char *a1@<X0>, _BYTE *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation24FloatingPointFormatStyleVySdGSgMd, &_s10Foundation24FloatingPointFormatStyleVySdGSgMR);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v23 - v11;
  v13 = *a1;
  LOBYTE(a1) = *a2;
  outlined init with copy of FloatingPointRoundingRule?(a3, &v23 - v11, &_s10Foundation24FloatingPointFormatStyleVySdGSgMd, &_s10Foundation24FloatingPointFormatStyleVySdGSgMR);
  type metadata accessor for _LocaleAutoupdating();
  inited = swift_initStaticObject();
  v15 = _sSo15CFDictionaryRefaAB14CoreFoundation9_CFObjectSCWlTm_2(&lazy protocol witness table cache variable for type _LocaleAutoupdating and conformance _LocaleAutoupdating, type metadata accessor for _LocaleAutoupdating, &protocol conformance descriptor for _LocaleAutoupdating);
  v18 = type metadata accessor for Measurement<>.FormatStyle(0, a4, v16, v17);
  v19 = v18[8];
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation24FloatingPointFormatStyleVySdGMd, &_s10Foundation24FloatingPointFormatStyleVySdGMR);
  (*(*(v20 - 8) + 56))(a5 + v19, 1, 1, v20);
  v21 = v18[9];
  *(a5 + v21) = 14;
  *(a5 + v18[10]) = 0;
  *a5 = v13;
  *(a5 + 8) = inited;
  *(a5 + 16) = v15;
  *(a5 + v21) = a1;
  return outlined assign with take of FloatingPointFormatStyle<Double>?(v12, a5 + v19);
}

id Measurement<>.FormatStyle.skeleton(forMeasurement:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = type metadata accessor for NumberFormatStyleConfiguration.Collection(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation24FloatingPointFormatStyleVySdGSgMd, &_s10Foundation24FloatingPointFormatStyleVySdGSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v27 - v9;
  result = NSDimension.skeleton.getter();
  if (!v12)
  {
    return result;
  }

  v13 = *(a2 + 36);
  v28 = *(a2 + 32);
  v29 = result;
  v14 = v2[v13];
  v15 = *v2;
  v31 = 0;
  v32 = 0xE000000000000000;
  v30 = v12;

  MEMORY[0x1865CB0E0](32, 0xE100000000000000);
  v16 = "unit-width-iso-code";
  if (v15 == 1)
  {
    v17 = 0xD000000000000010;
  }

  else
  {
    v17 = 0xD000000000000011;
  }

  if (v15 != 1)
  {
    v16 = "unit-width-short";
  }

  if (v15)
  {
    v18 = v17;
  }

  else
  {
    v18 = 0xD000000000000014;
  }

  if (v15)
  {
    v19 = v16;
  }

  else
  {
    v19 = "Invalid Precision";
  }

  MEMORY[0x1865CB0E0](v18, v19 | 0x8000000000000000);

  MEMORY[0x1865CB0E0](v29, v30);

  if (v14 != 14)
  {
    if (Usage.rawValue.getter(v14) != 0x6469766F72507361 || v20 != 0xEA00000000006465)
    {
      v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v21 & 1) != 0 || ([swift_getObjCClassFromMetadata() supportsRegionalPreference] & 1) == 0)
      {
        goto LABEL_20;
      }

      v22 = Usage.rawValue.getter(v14);
      v29 = 0x2F656761737520;
      v30 = 0xE700000000000000;
      MEMORY[0x1865CB0E0](v22);

      MEMORY[0x1865CB0E0](v29, v30);
    }
  }

LABEL_20:
  outlined init with copy of FloatingPointRoundingRule?(&v3[v28], v10, &_s10Foundation24FloatingPointFormatStyleVySdGSgMd, &_s10Foundation24FloatingPointFormatStyleVySdGSgMR);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation24FloatingPointFormatStyleVySdGMd, &_s10Foundation24FloatingPointFormatStyleVySdGMR);
  if ((*(*(v23 - 8) + 48))(v10, 1, v23) == 1)
  {

    outlined destroy of TermOfAddress?(v10, &_s10Foundation24FloatingPointFormatStyleVySdGSgMd, &_s10Foundation24FloatingPointFormatStyleVySdGSgMR);
  }

  else
  {
    outlined init with copy of NumberFormatStyleConfiguration.Collection(&v10[*(v23 + 36)], v7);
    outlined destroy of TermOfAddress?(v10, &_s10Foundation24FloatingPointFormatStyleVySdGMd, &_s10Foundation24FloatingPointFormatStyleVySdGMR);
    v24 = NumberFormatStyleConfiguration.Collection.skeleton.getter();
    v26 = v25;
    outlined destroy of NumberFormatStyleConfiguration.Collection(v7);
    if (String.count.getter() > 0)
    {
      MEMORY[0x1865CB0E0](32, 0xE100000000000000);
    }

    MEMORY[0x1865CB0E0](v24, v26);
  }

  return v31;
}

unint64_t _sSn10FoundationSS5IndexVRszrlE_10_genericInSnyACGSgSo8_NSRangeV_qd__htcSyRd__lu33_47624EAB993F66D471315D8A006C0572LlfCSS_Tt1g5(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a1 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  v4 = (a4 & 0x2000000000000000) != 0 ? HIBYTE(a4) & 0xF : a3 & 0xFFFFFFFFFFFFLL;
  v5 = String.UTF16View.index(_:offsetBy:limitedBy:)();
  if (v6)
  {
    return 0;
  }

  v7 = v5;
  result = String.UTF16View.index(_:offsetBy:limitedBy:)();
  if ((v9 & 1) != 0 || result >> 14 > 4 * v4)
  {
    return 0;
  }

  if (result >> 14 >= v7 >> 14)
  {
    return v7;
  }

  __break(1u);
  return result;
}

id String.init(cString:encoding:)(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  if (*a2 == 7)
  {
LABEL_4:
    v4 = MEMORY[0x1865CAEB0](a1);
    if (v5)
    {
      v6 = v4;
      if (_StringGuts._isContiguousASCII.getter())
      {
        return v6;
      }
    }

    goto LABEL_10;
  }

  if (v3 != 4)
  {
    if (v3 != 1)
    {
      goto LABEL_10;
    }

    goto LABEL_4;
  }

  result = MEMORY[0x1865CAEB0](a1);
  if (v8)
  {
    return result;
  }

LABEL_10:
  result = [objc_allocWithZone(NSString) initWithCString:a1 encoding:v3];
  if (!result)
  {
    return result;
  }

  v9 = result;
  isTaggedPointer = _objc_isTaggedPointer(result);
  v11 = v9;
  v12 = v11;
  if (!isTaggedPointer)
  {
    goto LABEL_16;
  }

  TaggedPointerTag = _objc_getTaggedPointerTag(v11);
  if (!TaggedPointerTag)
  {
    _CFIndirectTaggedPointerStringGetContents();
    v21 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (v22)
    {
      v23 = v21;
    }

    else
    {
      [v12 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v23 = v24;
    }

LABEL_31:

    return v23;
  }

  if (TaggedPointerTag != 22)
  {
    if (TaggedPointerTag == 2)
    {
      MEMORY[0x1EEE9AC00](TaggedPointerTag);
      v14 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

      return v14;
    }

LABEL_16:
    if (__CFStringIsCF())
    {

      return 0;
    }

    v15 = v12;
    v16 = String.init(_nativeStorage:)();
    if (v17)
    {
      v18 = v16;

      return v18;
    }

    if (![v15 length])
    {

      return 0;
    }

    v23 = String.init(_cocoaString:)();
    goto LABEL_31;
  }

  result = [v12 UTF8String];
  if (result)
  {
    result = String.init(utf8String:)(result);
    if (v19)
    {
      v20 = result;

      return v20;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

__n128 Date.FormatStyle.calendar.setter(__n128 *a1)
{
  swift_unknownObjectRelease();
  result = *a1;
  *(v1 + 104) = *a1;
  return result;
}

NSCharacterSet __swiftcall CharacterSet._bridgeToObjectiveC()()
{
  [*(*v0 + 16) copy];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  type metadata accessor for NSCharacterSet();
  swift_dynamicCast();
  return v2;
}

unint64_t type metadata accessor for NSCharacterSet()
{
  result = lazy cache variable for type metadata for NSCharacterSet;
  if (!lazy cache variable for type metadata for NSCharacterSet)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSCharacterSet);
  }

  return result;
}

uint64_t initkUTTypePlainText()
{
  v0 = MobileCoreServicesLibrary_1();
  v1 = dlsym(v0, "kUTTypePlainText");
  if (!v1)
  {
    __assert_rtn("initkUTTypePlainText", "NSString+NSItemProvider.m", 22, "constant");
  }

  result = *v1;
  constantkUTTypePlainText = result;
  off_1ED439888[0] = kUTTypePlainTextFunction;
  return result;
}

__n128 protocol witness for FormatStyle.locale(_:) in conformance Date.FormatStyle@<Q0>(__n128 *a1@<X0>, _OWORD *a2@<X8>)
{
  v6 = v2[5];
  v18 = v2[4];
  v5 = v18;
  v19 = v6;
  v20[0] = v2[6];
  v7 = v20[0];
  *(v20 + 10) = *(v2 + 106);
  v8 = *(v20 + 10);
  v9 = v2[1];
  v15[0] = *v2;
  v15[1] = v9;
  v11 = v2[3];
  v16 = v2[2];
  v10 = v16;
  v17 = v11;
  *a2 = v15[0];
  a2[1] = v9;
  a2[2] = v10;
  a2[3] = v11;
  a2[4] = v5;
  a2[5] = v6;
  a2[6] = v7;
  *(a2 + 106) = v8;
  outlined init with copy of Date.FormatStyle(v15, v14);
  v13 = *a1;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  result = v13;
  *(a2 + 72) = v13;
  return result;
}

__n128 Date.FormatStyle.timeZone.setter(__n128 *a1)
{
  swift_unknownObjectRelease();
  result = *a1;
  *(v1 + 88) = *a1;
  return result;
}

void __CFBasicHashDeallocate(void *result)
{
  v1 = result[3];
  if ((v1 & 4) != 0)
  {
    __break(1u);
  }

  else
  {
    result[3] = v1 | 4;
    __CFBasicHashDrain(result, 1);
  }
}

void __CFBasicHashDrain(void *a1, int a2)
{
  v4 = a1[3];
  v5 = (a1[2] >> 16) & 0x3FLL;
  v6 = __CFBasicHashTableSizes[v5];
  v7 = CFGetAllocator(a1);
  v36 = 0;
  v8 = a1 + 5;
  ptr = a1[5];
  a1[5] = 0;
  v9 = a1[2];
  if ((v9 & 4) != 0)
  {
    v36 = a1[6];
    a1[6] = 0;
  }

  if ((v9 & 0x18) != 0)
  {
    v10 = (v9 >> 3) & 3;
    if (!v10)
    {
      goto LABEL_49;
    }

    v11 = v8[v10];
    v8[v10] = 0;
  }

  else
  {
    v11 = 0;
  }

  if ((v9 & 0x60) != 0)
  {
    v12 = (v9 >> 5) & 3;
    if (!v12)
    {
      goto LABEL_49;
    }

    v35 = v8[v12];
    v8[v12] = 0;
  }

  else
  {
    v35 = 0;
  }

  if ((v9 & 0x380) != 0)
  {
    v13 = (v9 >> 7) & 7;
    if (!v13)
    {
      goto LABEL_49;
    }

    v14 = v8[v13];
    v8[v13] = 0;
  }

  else
  {
    v14 = 0;
  }

  if ((v9 & 0x1C00) != 0)
  {
    v15 = (v9 >> 10) & 7;
    if (!v15)
    {
      goto LABEL_49;
    }

    v16 = v8[v15];
    v8[v15] = 0;
  }

  else
  {
    v16 = 0;
  }

  v33 = a2;
  v31 = v16;
  v32 = v14;
  if ((v9 & 0xE000) != 0)
  {
    v17 = v9 >> 13;
    if (v9 >> 13)
    {
      v30 = v8[v17];
      v8[v17] = 0;
      goto LABEL_23;
    }

LABEL_49:
    __break(1u);
    return;
  }

  v30 = 0;
LABEL_23:
  v18 = a1[4];
  v19 = (a1[3] & 0xFFFF0000000000FFLL) + 0x1000000000000;
  a1[2] = v9;
  a1[3] = v19;
  if (v18 != &CFBasicHashNullCallbacks)
  {
    v20 = v11 ? v11 : ptr;
    if (v5 && v5 != 63)
    {
      v21 = (v4 << 32) & 0xFFFFFF0000000000;
      if (v6 <= 1)
      {
        v22 = 1;
      }

      else
      {
        v22 = v6;
      }

      v23 = ptr;
      v24 = v35;
      v25 = v36;
      v26 = v11;
      do
      {
        v27 = *v20++;
        v28 = v27 ^ v21;
        if (v27 != v21 && v28 != -1)
        {
          (*a1[4])(a1, 14, *v23, 0);
          if (v36)
          {
            (*a1[4])(a1, 15, *v25, 0);
          }

          if (v11)
          {
            (*a1[4])(a1, 16, *v26, 0);
          }

          if (v35)
          {
            (*a1[4])(a1, 17, *v24, 0);
          }
        }

        ++v24;
        ++v26;
        ++v25;
        ++v23;
        --v22;
      }

      while (v22);
    }
  }

  if (v33)
  {
    (*a1[4])(a1, 9, 0, 0);
  }

  CFAllocatorDeallocate(v7, ptr);
  CFAllocatorDeallocate(v7, v36);
  CFAllocatorDeallocate(v7, v11);
  CFAllocatorDeallocate(v7, v35);
  CFAllocatorDeallocate(v7, v32);
  CFAllocatorDeallocate(v7, v31);

  CFAllocatorDeallocate(v7, v30);
}

uint64_t specialized static Date.FormatStyle.== infix(_:_:)(__int128 *a1, uint64_t a2)
{
  v2 = a1[2];
  v3 = *(a1 + 7);
  v4 = *(a1 + 64);
  v5 = *(a1 + 72);
  v6 = *(a1 + 88);
  v7 = *(a1 + 104);
  v8 = *(a1 + 120);
  v9 = *(a1 + 121);
  v10 = *(a2 + 32);
  v11 = *(a2 + 56);
  v12 = *(a2 + 64);
  v13 = *(a2 + 72);
  v14 = *(a2 + 88);
  v15 = *(a2 + 104);
  v16 = *(a2 + 120);
  v17.i64[0] = 0xFF000000000000;
  v17.i64[1] = 0xFF000000000000;
  v18 = *(a2 + 121);
  v19 = vmovn_s64(vceqq_s64(vandq_s8(vzip1q_s64(v10, v2), v17), vdupq_n_s64(0x3000000000000uLL)));
  if (v19.i8[4])
  {
    if ((v19.i8[0] & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (v19.i8[0])
    {
      return 0;
    }

    v20 = *a1;
    v21 = a1[1];
    v22 = *(a1 + 24);
    v32 = *(a1 + 104);
    v34 = *(a1 + 88);
    v36 = *(a2 + 104);
    v38 = *(a2 + 72);
    v23 = *(a2 + 16);
    v24 = *(a2 + 48);
    v45[0] = *a2;
    v45[1] = v23;
    v45[2] = v10;
    v46 = v24;
    v43[0] = v20;
    v43[1] = v21;
    v43[2] = v2;
    v44 = v22;
    v39 = v14;
    v31 = v5;
    v25 = specialized static Date.FormatStyle.DateFieldCollection.== infix(_:_:)(v43, v45);
    v13 = v38;
    v14 = v39;
    v5 = v31;
    v7 = v32;
    v6 = v34;
    v15 = v36;
    if (!v25)
    {
      return 0;
    }
  }

  if (v4)
  {
    if (!v12)
    {
      return 0;
    }
  }

  else
  {
    if (v3 == v11)
    {
      v26 = v12;
    }

    else
    {
      v26 = 1;
    }

    if (v26)
    {
      return 0;
    }
  }

  v40 = v14;
  v41 = v13;
  v35 = v6;
  v37 = v15;
  v33 = v7;
  v42 = v5;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v27 = specialized static Locale.== infix(_:_:)(&v42, &v41);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  if ((v27 & 1) == 0)
  {
    return 0;
  }

  v41 = v40;
  v42 = v35;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v28 = specialized static TimeZone.== infix(_:_:)(&v42, &v41);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  if ((v28 & 1) == 0)
  {
    return 0;
  }

  v41 = v37;
  v42 = v33;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v29 = specialized static Calendar.== infix(_:_:)(&v42, &v41);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  result = 0;
  if ((v29 & 1) != 0 && v8 == v16)
  {
    return v9 ^ v18 ^ 1u;
  }

  return result;
}

void *MobileCoreServicesLibrary()
{
  result = MobileCoreServicesLibrary_frameworkLibrary_0;
  if (!MobileCoreServicesLibrary_frameworkLibrary_0)
  {
    result = dlopen("/System/Library/Frameworks/MobileCoreServices.framework/MobileCoreServices", 2);
    MobileCoreServicesLibrary_frameworkLibrary_0 = result;
    if (!result)
    {
      __assert_rtn("MobileCoreServicesLibrary", "NSItemProvider.m", 24, "frameworkLibrary");
    }
  }

  return result;
}

void *MobileCoreServicesLibrary_0()
{
  result = MobileCoreServicesLibrary_frameworkLibrary_1;
  if (!MobileCoreServicesLibrary_frameworkLibrary_1)
  {
    result = dlopen("/System/Library/Frameworks/MobileCoreServices.framework/MobileCoreServices", 2);
    MobileCoreServicesLibrary_frameworkLibrary_1 = result;
    if (!result)
    {
      __assert_rtn("MobileCoreServicesLibrary", "_NSItemProviderUtilities_Internal.m", 32, "frameworkLibrary");
    }
  }

  return result;
}

void *MobileCoreServicesLibrary_1()
{
  result = MobileCoreServicesLibrary_frameworkLibrary_2;
  if (!MobileCoreServicesLibrary_frameworkLibrary_2)
  {
    result = dlopen("/System/Library/Frameworks/MobileCoreServices.framework/MobileCoreServices", 2);
    MobileCoreServicesLibrary_frameworkLibrary_2 = result;
    if (!result)
    {
      __assert_rtn("MobileCoreServicesLibrary", "NSString+NSItemProvider.m", 16, "frameworkLibrary");
    }
  }

  return result;
}

void *MobileCoreServicesLibrary_2()
{
  result = MobileCoreServicesLibrary_frameworkLibrary_3;
  if (!MobileCoreServicesLibrary_frameworkLibrary_3)
  {
    result = dlopen("/System/Library/Frameworks/MobileCoreServices.framework/MobileCoreServices", 2);
    MobileCoreServicesLibrary_frameworkLibrary_3 = result;
    if (!result)
    {
      __assert_rtn("MobileCoreServicesLibrary", "NSURL+NSItemProvider.m", 17, "frameworkLibrary");
    }
  }

  return result;
}

uint64_t initkUTTypeURL()
{
  v0 = CoreServicesLibrary();
  v1 = dlsym(v0, "kUTTypeURL");
  if (!v1)
  {
    __assert_rtn("initkUTTypeURL", "NSExtensionItem.m", 39, "constant");
  }

  result = *v1;
  constantkUTTypeURL = result;
  off_1ED439820[0] = kUTTypeURLFunction;
  return result;
}

uint64_t initkUTTypeURL_0()
{
  v0 = MobileCoreServicesLibrary();
  v1 = dlsym(v0, "kUTTypeURL");
  if (!v1)
  {
    __assert_rtn("initkUTTypeURL", "NSItemProvider.m", 30, "constant");
  }

  result = *v1;
  constantkUTTypeURL_0 = result;
  off_1ED439848[0] = kUTTypeURLFunction_0;
  return result;
}

uint64_t initkUTTypeURL_1()
{
  v0 = MobileCoreServicesLibrary_1();
  v1 = dlsym(v0, "kUTTypeURL");
  if (!v1)
  {
    __assert_rtn("initkUTTypeURL", "NSString+NSItemProvider.m", 17, "constant");
  }

  result = *v1;
  constantkUTTypeURL_1 = result;
  off_1ED439890 = kUTTypeURLFunction_1;
  return result;
}

uint64_t initkUTTypeURL_2()
{
  v0 = MobileCoreServicesLibrary_2();
  v1 = dlsym(v0, "kUTTypeURL");
  if (!v1)
  {
    __assert_rtn("initkUTTypeURL", "NSURL+NSItemProvider.m", 18, "constant");
  }

  result = *v1;
  constantkUTTypeURL_2 = result;
  _MergedGlobals_89 = kUTTypeURLFunction_2;
  return result;
}

uint64_t initkUTTypeUTF8PlainText()
{
  v0 = MobileCoreServicesLibrary_1();
  v1 = dlsym(v0, "kUTTypeUTF8PlainText");
  if (!v1)
  {
    __assert_rtn("initkUTTypeUTF8PlainText", "NSString+NSItemProvider.m", 19, "constant");
  }

  result = *v1;
  constantkUTTypeUTF8PlainText = result;
  _MergedGlobals_88 = kUTTypeUTF8PlainTextFunction;
  return result;
}

uint64_t initkUTTypeUTF16ExternalPlainText()
{
  v0 = MobileCoreServicesLibrary_1();
  v1 = dlsym(v0, "kUTTypeUTF16ExternalPlainText");
  if (!v1)
  {
    __assert_rtn("initkUTTypeUTF16ExternalPlainText", "NSString+NSItemProvider.m", 21, "constant");
  }

  result = *v1;
  constantkUTTypeUTF16ExternalPlainText = result;
  off_1ED439878 = kUTTypeUTF16ExternalPlainTextFunction;
  return result;
}

uint64_t initkUTTypeUTF16PlainText()
{
  v0 = MobileCoreServicesLibrary_1();
  v1 = dlsym(v0, "kUTTypeUTF16PlainText");
  if (!v1)
  {
    __assert_rtn("initkUTTypeUTF16PlainText", "NSString+NSItemProvider.m", 20, "constant");
  }

  result = *v1;
  constantkUTTypeUTF16PlainText = result;
  off_1ED439880 = kUTTypeUTF16PlainTextFunction;
  return result;
}

id localizedDescriptionForError(void *a1, uint64_t a2, uint64_t a3)
{
  if (objc_msgSend_isEqualToString_(a1, a2, @"NSURLErrorDomain"))
  {
    v5 = _CFNetworkErrorCopyLocalizedDescriptionWithHostname();

    return v5;
  }

  else
  {
    pthread_once(&initControl, WebNSErrorExtrasInit);
    result = [descriptions objectForKey:a1];
    if (result)
    {
      v7 = result;
      v8 = [NSNumber numberWithInteger:a2];

      return [v7 objectForKey:v8];
    }
  }

  return result;
}

uint64_t getter of attributeFixup #1 in String.LocalizationValue.FormatArgument.resolve<A>(attributed:with:including:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  if (v6 == 254)
  {
    if (a2)
    {
      String.LocalizationValue.FormatArgument.buildAttributeContainerForArgument()(v14);
      v8 = v14[0];
      v9 = v14[1];
      v10 = *(a1 + 16);
      v11 = *(a1 + 24);
      *(a1 + 16) = v14[0];
      *(a1 + 24) = v9;
      v12 = *(a1 + 32);
      *(a1 + 32) = 1;

      outlined consume of String.LocalizationValue.FormatArgument._AttributeFixup??(v10, v11, v12);
      *a3 = v8;
      *(a3 + 8) = v9;
      *(a3 + 16) = 1;
    }

    else
    {
      *(a1 + 16) = 0;
      *(a1 + 24) = 0;
      *(a1 + 32) = -1;
      outlined consume of String.LocalizationValue.FormatArgument._AttributeFixup??(v4, v5, 254);
      *a3 = 0;
      *(a3 + 8) = 0;
      *(a3 + 16) = -1;
    }
  }

  else
  {
    *a3 = v4;
    *(a3 + 8) = v5;
    *(a3 + 16) = v6;
  }

  return outlined copy of String.LocalizationValue.FormatArgument._AttributeFixup??(v4, v5, v6);
}

Swift::Void __swiftcall NSNotificationCenter.Notifications.teardown()()
{
  v1 = *(v0 + 24);
  os_unfair_lock_lock((v1 + 64));
  v2 = *(v1 + 40);
  v20 = *(v1 + 24);
  v21 = v2;
  *(v1 + 24) = 0u;
  *(v1 + 40) = 0u;
  v3 = *(v1 + 56);
  memset(v22 + 8, 0, 48);
  *&v22[0] = v3;

  outlined destroy of TermOfAddress?(v22 + 8, &_sSo20NSNotificationCenterC10FoundationE13NotificationsC19NotificationWrapperVSgMd, &_sSo20NSNotificationCenterC10FoundationE13NotificationsC19NotificationWrapperVSgMR);
  memset(v22 + 8, 0, 48);
  *(v1 + 56) = MEMORY[0x1E69E7CC0];

  os_unfair_lock_unlock((v1 + 64));
  v25[0] = v20;
  v25[1] = v21;
  v23[0] = v22[0];
  v23[1] = v22[1];
  v23[2] = v22[2];
  v24 = *&v22[3];
  outlined init with copy of FloatingPointRoundingRule?(v25, &v18, &_ss8Sendable_pSgMd, &_ss8Sendable_pSgMR);
  if (v19)
  {
    outlined init with take of Any(&v18, &v20);
    v4 = *(v0 + 16);
    v5 = *(&v21 + 1);
    v6 = __swift_project_boxed_opaque_existential_1(&v20, *(&v21 + 1));
    isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType();
    if (isClassOrObjCExistentialType)
    {
      if (*(*(v5 - 8) + 64) != 8)
      {
        __break(1u);
        return;
      }

      v8 = *v6;
      swift_unknownObjectRetain();
    }

    else
    {
      v15 = MEMORY[0x1EEE9AC00](isClassOrObjCExistentialType);
      (*(v17 + 16))(&v18 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v6, v5, v15);
      v8 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
    }

    [v4 removeObserver_];
    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1(&v20);
  }

  else
  {
    outlined destroy of TermOfAddress?(&v18, &_ss8Sendable_pSgMd, &_ss8Sendable_pSgMR);
  }

  v9 = *(*&v23[0] + 16);
  if (v9)
  {
    v10 = (*&v23[0] + 32);
    do
    {
      v11 = *v10++;
      outlined init with copy of FloatingPointRoundingRule?(v23 + 8, &v20, &_sSo20NSNotificationCenterC10FoundationE13NotificationsC19NotificationWrapperVSgMd, &_sSo20NSNotificationCenterC10FoundationE13NotificationsC19NotificationWrapperVSgMR);
      v12 = *(*(v11 + 64) + 40);
      v14 = v21;
      v13 = v22[0];
      *v12 = v20;
      v12[1] = v14;
      v12[2] = v13;
      swift_continuation_resume();
      --v9;
    }

    while (v9);
  }

  outlined destroy of TermOfAddress?(v25, &_ss8Sendable_pSgMd, &_ss8Sendable_pSgMR);
  outlined destroy of NSNotificationCenter.Notifications.Resumption(v23);
}

uint64_t NSNotificationCenter.Notifications.__deallocating_deinit()
{
  NSNotificationCenter.Notifications.teardown()();

  return swift_deallocClassInstance();
}

uint64_t outlined consume of String.LocalizationValue.FormatArgument._AttributeFixup??(uint64_t result, uint64_t a2, char a3)
{
  if (a3 != 254)
  {
    return outlined consume of String.LocalizationValue.FormatArgument._AttributeFixup?(result, a2, a3);
  }

  return result;
}

id String.LocalizationOptions._nsOptions.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 17);
  result = [objc_allocWithZone(_NSStringFormattingOptions) init];
  if (result)
  {
    v5 = result;
    if (v3)
    {
      [result setPluralizationNumber_];
    }

    else
    {
      v6 = objc_allocWithZone(NSNumber);
      if (v2)
      {
        v7 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v7 = v1;
      }

      v8 = [v6 initWithInteger_];
      [v5 setPluralizationNumber_];
    }

    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AttributeScopes.FoundationAttributes.DurationFieldAttribute.Field and conformance AttributeScopes.FoundationAttributes.DurationFieldAttribute.Field()
{
  result = lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.DurationFieldAttribute.Field and conformance AttributeScopes.FoundationAttributes.DurationFieldAttribute.Field;
  if (!lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.DurationFieldAttribute.Field and conformance AttributeScopes.FoundationAttributes.DurationFieldAttribute.Field)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.DurationFieldAttribute.Field and conformance AttributeScopes.FoundationAttributes.DurationFieldAttribute.Field);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.DurationFieldAttribute.Field and conformance AttributeScopes.FoundationAttributes.DurationFieldAttribute.Field;
  if (!lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.DurationFieldAttribute.Field and conformance AttributeScopes.FoundationAttributes.DurationFieldAttribute.Field)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.DurationFieldAttribute.Field and conformance AttributeScopes.FoundationAttributes.DurationFieldAttribute.Field);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.DurationFieldAttribute.Field and conformance AttributeScopes.FoundationAttributes.DurationFieldAttribute.Field;
  if (!lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.DurationFieldAttribute.Field and conformance AttributeScopes.FoundationAttributes.DurationFieldAttribute.Field)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.DurationFieldAttribute.Field and conformance AttributeScopes.FoundationAttributes.DurationFieldAttribute.Field);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.DurationFieldAttribute.Field and conformance AttributeScopes.FoundationAttributes.DurationFieldAttribute.Field;
  if (!lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.DurationFieldAttribute.Field and conformance AttributeScopes.FoundationAttributes.DurationFieldAttribute.Field)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.DurationFieldAttribute.Field and conformance AttributeScopes.FoundationAttributes.DurationFieldAttribute.Field);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.DurationFieldAttribute.Field and conformance AttributeScopes.FoundationAttributes.DurationFieldAttribute.Field;
  if (!lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.DurationFieldAttribute.Field and conformance AttributeScopes.FoundationAttributes.DurationFieldAttribute.Field)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.DurationFieldAttribute.Field and conformance AttributeScopes.FoundationAttributes.DurationFieldAttribute.Field);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [Character] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [Character] and conformance [A];
  if (!lazy protocol witness table cache variable for type [Character] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySJGMd, &_sSaySJGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [Character] and conformance [A]);
  }

  return result;
}

uint64_t outlined init with copy of Duration.TimeFormatStyle.Pattern.Fields(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with take of FloatingPointFormatStyle<Double>(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation24FloatingPointFormatStyleVySdGMd, &_s10Foundation24FloatingPointFormatStyleVySdGMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void outlined consume of Rope<AttributedString._InternalRun>._Item?(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
  }
}

double specialized Rope.Builder._insertBeforeTip(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v52 = a1;
  v53 = a2;
  v54 = a3;
  if (*(a1 + 18))
  {
    v8 = v3[4];
    v7 = v3[5];
    v9 = v3[6];
    v3[5] = 0;
    v3[6] = 0;
    v3[4] = 0;
    if (v7)
    {
      v10 = v3[1];
      v11 = *(v3 + 1);
      v3[2] = 0;
      v3[3] = 0;
      v3[1] = 0;
      if (v10)
      {
        v46 = v10;
        v49 = v11;
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s19CollectionsInternal4RopeV8_StorageCy10Foundation16AttributedStringV01_B3RunV_AC5_ItemVyAJ_GGMd, &_s19CollectionsInternal4RopeV8_StorageCy10Foundation16AttributedStringV01_B3RunV_AC5_ItemVyAJ_GGMR);
        v33 = swift_allocObject();
        *(v33 + 16) = 0;
        *(v33 + 18) = 0;
        v49 = 0uLL;
        v46 = v33;
      }

      specialized Rope._Node._appendItem(_:)(v8, v7, v9);
      if (*(v46 + 16) == 15)
      {
        v34 = swift_unknownObjectRetain();
        specialized Rope.Builder._appendNow(_:)(v34, v49, *(&v49 + 1));
        swift_unknownObjectRelease();
      }

      else
      {

        v3[1] = v46;
        *(v3 + 1) = v49;
      }
    }

    v35 = v3[1];
    v36 = v3[2];
    v37 = v3[3];
    v3[2] = 0;
    v3[3] = 0;
    v3[1] = 0;
    if (v35)
    {
      specialized Rope.Builder._appendNow(_:)(v35, v36, v37);
    }

    v38 = a1;
    v39 = a2;
    v40 = a3;
LABEL_20:

    specialized Rope.Builder._appendNow(_:)(v38, v39, v40);
    return *&v41;
  }

  if (*(a1 + 16) != 1)
  {
    v24 = v3[4];
    v23 = v3[5];
    v25 = v3[6];
    v3[5] = 0;
    v3[6] = 0;
    v3[4] = 0;
    if (v23)
    {

      v26 = specialized Rope._Node.insert(_:at:)(v24, v23, v25, 0);
      if (v26)
      {
        v29 = v26;
        v30 = v27;
        v31 = v28;
        v32 = swift_unknownObjectRetain();
        specialized Rope.Builder._insertBeforeTip(_:)(v32, v53, v54);
        specialized Rope.Builder._insertBeforeTip(_:)(v29, v30, v31);
        swift_unknownObjectRelease();

        goto LABEL_24;
      }
    }

    v42 = v3[1];
    v41 = *(v3 + 1);
    v3[2] = 0;
    v3[3] = 0;
    v3[1] = 0;
    if (v42)
    {
      v48 = v42;
      v51 = v41;
      if (specialized Rope._Node.rebalance(nextNeighbor:)(&v52) && *(v48 + 16) != 15)
      {
        swift_unknownObjectRelease();
        v3[1] = v48;
        *&v41 = v51;
        *(v3 + 1) = v51;
        return *&v41;
      }

      specialized Rope.Builder._appendNow(_:)(v48, v51, *(&v51 + 1));
    }

    v38 = v52;
    v39 = v53;
    v40 = v54;
    if (*(v52 + 16) != 15)
    {
      v3[1] = v52;
      v3[2] = v39;
      v3[3] = v40;
      return *&v41;
    }

    goto LABEL_20;
  }

  v12 = specialized Rope._Node.subscript.getter(0, a1);
  v14 = v13;
  v16 = v15;
  if (v12)
  {
    v17 = v12;
    v18 = v3[5];
    if (v18)
    {
      v19 = v3[4];
      v20 = v3[6];
      v21 = v3[1];
      v22 = *(v3 + 1);
      v3[2] = 0;
      v3[3] = 0;
      v3[1] = 0;
      if (v21)
      {
        v47 = v21;
        v50 = v22;
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s19CollectionsInternal4RopeV8_StorageCy10Foundation16AttributedStringV01_B3RunV_AC5_ItemVyAJ_GGMd, &_s19CollectionsInternal4RopeV8_StorageCy10Foundation16AttributedStringV01_B3RunV_AC5_ItemVyAJ_GGMR);
        v43 = swift_allocObject();
        *(v43 + 16) = 0;
        *(v43 + 18) = 0;
        v50 = 0uLL;
        v47 = v43;
      }

      specialized Rope._Node._appendItem(_:)(v19, v18, v20);
      if (*(v47 + 16) == 15)
      {
        v44 = swift_unknownObjectRetain();
        specialized Rope.Builder._appendNow(_:)(v44, v50, *(&v50 + 1));
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRelease();

        v3[1] = v47;
        *&v41 = v50;
        *(v3 + 1) = v50;
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }

    v3[4] = v17;
    v3[5] = v14;
    v3[6] = v16;
    return *&v41;
  }

  swift_unknownObjectRelease();

LABEL_24:

  return *&v41;
}

uint64_t Duration.TimeFormatStyle.Attributed.format(_:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = v3;
  v400 = a1;
  v401 = a2;
  v375 = a3;
  v439 = *MEMORY[0x1E69E9840];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation24FloatingPointFormatStyleVySdGMd, &_s10Foundation24FloatingPointFormatStyleVySdGMR);
  MEMORY[0x1EEE9AC00](v8);
  v368 = &v362 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v367 = &v362 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v373 = &v362 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v372 = &v362 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v371 = &v362 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v391 = &v362 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v398 = &v362 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v385 = &v362 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v362 - v25;
  v388 = type metadata accessor for FloatingPointRoundingRule();
  v27 = *(v388 - 8);
  MEMORY[0x1EEE9AC00](v388);
  v394 = &v362 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v379 = &v362 - v30;
  v31 = type metadata accessor for Duration.TimeFormatStyle.Pattern.Fields(0);
  MEMORY[0x1EEE9AC00](v31);
  v374 = (&v362 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v33);
  v380 = &v362 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v362 - v36;
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v362 - v39;
  v387 = type metadata accessor for Duration.TimeFormatStyle.Pattern(0);
  MEMORY[0x1EEE9AC00](v387);
  v370 = &v362 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v42);
  v376 = &v362 - v43;
  MEMORY[0x1EEE9AC00](v44);
  v46 = &v362 - v45;
  MEMORY[0x1EEE9AC00](v47);
  v49 = &v362 - v48;
  outlined init with copy of Duration.TimeFormatStyle.Pattern.Fields(v7, &v362 - v48, type metadata accessor for Duration.TimeFormatStyle.Pattern);
  outlined init with take of Duration.TimeFormatStyle.Pattern(v49, v40, type metadata accessor for Duration.TimeFormatStyle.Pattern.Fields);
  v383 = v31;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v377 = 0xEB00000000737327;
      v51 = 0x3A276D6D273A2768;
    }

    else
    {
      v377 = 0xE600000000000000;
      v51 = 0x7373273A276DLL;
    }

    countAndFlagsBits = v51;
    v40 += *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi23fractionalSecondsLength_s25FloatingPointRoundingRuleO015roundFractionalB0tMd, &_sSi23fractionalSecondsLength_s25FloatingPointRoundingRuleO015roundFractionalB0tMR) + 48);
  }

  else
  {
    v377 = 0xE600000000000000;
    countAndFlagsBits = 0x6D6D273A2768;
  }

  v381 = *(v27 + 8);
  v382 = v27 + 8;
  v381(v40, v388);
  LODWORD(v426) = 0;
  v52 = type metadata accessor for Duration.TimeFormatStyle.Attributed(0);
  v53 = *(v7 + *(v52 + 24) + 8);
  v395 = (v7 + *(v52 + 24));
  v396 = v52;
  ObjectType = swift_getObjectType();
  (*(v53 + 64))(ObjectType, v53);
  String.utf8CString.getter();

  TimePattern = uatmufmt_getTimePattern();

  if (v426 <= 0 && (specialized String.init(_utf16:)(v420, TimePattern), v56))
  {
    v57 = String.lowercased()();
    countAndFlagsBits = v57._countAndFlagsBits;
    object = v57._object;
  }

  else
  {
  }

  outlined init with copy of Duration.TimeFormatStyle.Pattern.Fields(v7, v46, type metadata accessor for Duration.TimeFormatStyle.Pattern);
  outlined init with take of Duration.TimeFormatStyle.Pattern(v46, v37, type metadata accessor for Duration.TimeFormatStyle.Pattern.Fields);
  v58 = swift_getEnumCaseMultiPayload();
  if (v58)
  {
    if (v58 == 1)
    {
      v59 = &outlined read-only object #1 of Duration.TimeFormatStyle.Attributed.format(_:);
    }

    else
    {
      v59 = &outlined read-only object #2 of Duration.TimeFormatStyle.Attributed.format(_:);
    }

    v60 = *v37;
    v37 += *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi23fractionalSecondsLength_s25FloatingPointRoundingRuleO015roundFractionalB0tMd, &_sSi23fractionalSecondsLength_s25FloatingPointRoundingRuleO015roundFractionalB0tMR) + 48);
  }

  else
  {
    v60 = 0;
    v59 = &outlined read-only object #0 of Duration.TimeFormatStyle.Attributed.format(_:);
  }

  v397 = v27;
  (*(v27 + 32))(v379, v37, v388);
  v61 = v59[2];
  v62 = MEMORY[0x1E69E7CC0];
  v392 = v8;
  v393 = v7;
  v384 = v26;
  *&v402 = v59;
  if (v61)
  {
    v63 = *(v59 + v61 + 31);
    if (v63 <= 4)
    {
      static Duration.interval(fractionalSecondsLength:)(v60);
      v426 = qword_18122B810[v63];
      lazy protocol witness table accessor for type Int64 and conformance Int64();
      v66 = static Duration.* infix<A>(_:_:)();
    }

    else
    {
      if ((v63 - 5) >= 3u)
      {
        __break(1u);
LABEL_356:
        v360 = swift_allocError();
        swift_willThrow();
        *&v411 = v360;
        v361 = v360;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
        if ((swift_dynamicCast() & 1) == 0)
        {
LABEL_359:
          swift_bridgeObjectRelease_n();
          swift_bridgeObjectRelease_n();

          swift_unexpectedError();
          __break(1u);
LABEL_360:
          KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
LABEL_361:
          KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
LABEL_362:
          result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
          return result;
        }

        v426 = 0;
        v427 = 0xE000000000000000;
        _StringGuts.grow(_:)(30);
        MEMORY[0x1865CB0E0](0xD00000000000001BLL, 0x800000018147F480);
        _print_unlocked<A, B>(_:_:)();
        MEMORY[0x1865CB0E0](39, 0xE100000000000000);
LABEL_358:
        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
        goto LABEL_359;
      }

      v64 = (3 * (v63 - 5) + 3);
      v65 = v64 ^ 0x7FFFFFFFFFFFFFFFLL;
      if ((v64 ^ 0x7FFFFFFFFFFFFFFFLL) >= v60)
      {
        v65 = v60;
      }

      if (__OFADD__(v64, v65))
      {
        goto LABEL_343;
      }

      v66 = static Duration.interval(fractionalSecondsLength:)(v64 + v65);
    }

    v68 = v66;
    v69 = v67;
    static Duration.zero.getter();
    v70 = static Duration.== infix(_:_:)();
    v71 = v400;
    if (v70)
    {
      goto LABEL_77;
    }

    static Duration.zero.getter();
    v72 = static Duration.< infix(_:_:)();
    v364 = v63;
    if (v72)
    {
      static Duration.zero.getter();
      v68 = static Duration.- infix(_:_:)();
      v69 = v73;
    }

    static Duration.zero.getter();
    if (static Duration.< infix(_:_:)())
    {
      static Duration.zero.getter();
      static Duration.- infix(_:_:)();
    }

    v74 = Duration.components.getter();
    static Duration.zero.getter();
    if (static Duration.< infix(_:_:)())
    {
      static Duration.zero.getter();
      static Duration.- infix(_:_:)();
    }

    j = v68;
    v75 = Duration.components.getter();
    v77 = v76;
    v369 = v69;
    if (v75)
    {
      if (!v76)
      {
        v83 = v75;
        if (v74 == 0x8000000000000000 && v75 == -1)
        {
          goto LABEL_351;
        }

        v84 = v74 / v75;
        v78 = Duration.init(secondsComponent:attosecondsComponent:)();
        *&v390 = v85;
        v26 = v384;
        if ((v83 * v84) >> 64 != (v83 * v84) >> 63)
        {
          goto LABEL_344;
        }

        v86 = Duration.init(secondsComponent:attosecondsComponent:)();
        v88 = v87;
        v8 = v392;
        goto LABEL_49;
      }

      if (static Duration.< infix(_:_:)())
      {
        v78 = static Duration.zero.getter();
        *&v390 = v79;
        v80 = static Duration.zero.getter();
      }

      else
      {
        static Duration./ infix(_:_:)();
        if ((*&v89 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
LABEL_345:
          __break(1u);
          goto LABEL_346;
        }

        if (v89 <= -1.0)
        {
LABEL_346:
          __break(1u);
          goto LABEL_347;
        }

        if (v89 >= 1.84467441e19)
        {
LABEL_347:
          __break(1u);
          goto LABEL_348;
        }

        v90 = v89;
        v426 = v89;
        v91 = lazy protocol witness table accessor for type UInt64 and conformance UInt64();
        static Duration.* infix<A>(_:_:)();
        static Duration.- infix(_:_:)();
        static Duration./ infix(_:_:)();
        if ((*&v92 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
LABEL_348:
          __break(1u);
          goto LABEL_349;
        }

        if (v92 <= -9.22337204e18)
        {
LABEL_349:
          __break(1u);
          goto LABEL_350;
        }

        if (v92 >= 9.22337204e18)
        {
LABEL_350:
          __break(1u);
LABEL_351:
          __break(1u);
LABEL_352:
          __break(1u);
LABEL_353:
          __break(1u);
LABEL_354:
          __break(1u);
        }

        v93 = v92;
        v386 = v92;
        Duration.init(secondsComponent:attosecondsComponent:)();
        v426 = v90;
        static Duration.* infix<A>(_:_:)();
        v389 = v91;
        Duration.init(secondsComponent:attosecondsComponent:)();
        v426 = v93;
        lazy protocol witness table accessor for type Int64 and conformance Int64();
        static Duration.* infix<A>(_:_:)();
        v94 = static Duration.+ infix(_:_:)();
        *&v390 = v95;
        v426 = v90;
        static Duration.* infix<A>(_:_:)();
        v426 = v386;
        static Duration.* infix<A>(_:_:)();
        v78 = v94;
        v80 = static Duration.+ infix(_:_:)();
      }
    }

    else
    {
      v426 = v76;
      lazy protocol witness table accessor for type Int64 and conformance Int64();
      v78 = static Duration./ infix<A>(_:_:)();
      v426 = v77;
      *&v390 = v82;
      v80 = static Duration.* infix<A>(_:_:)();
    }

    v86 = v80;
    v88 = v81;
    v8 = v392;
    v26 = v384;
LABEL_49:
    static Duration.zero.getter();
    v96 = static Duration.< infix(_:_:)() & 1;
    static Duration.zero.getter();
    if (v96 == (static Duration.< infix(_:_:)() & 1))
    {
      v97 = v86;
      v99 = v88;
    }

    else
    {
      static Duration.zero.getter();
      v97 = static Duration.- infix(_:_:)();
      v99 = v98;
      static Duration.zero.getter();
      v78 = static Duration.- infix(_:_:)();
      *&v390 = v100;
    }

    static Duration.zero.getter();
    v101 = static Duration.< infix(_:_:)();
    v389 = v97;
    v386 = v99;
    if (v101)
    {
      static Duration.zero.getter();
      static Duration.- infix(_:_:)();
    }

    v365 = v78;
    static Duration.zero.getter();
    if (static Duration.< infix(_:_:)())
    {
      static Duration.zero.getter();
      static Duration.- infix(_:_:)();
    }

    static Duration.- infix(_:_:)();
    static Duration.zero.getter();
    if (static Duration.< infix(_:_:)())
    {
      static Duration.zero.getter();
      static Duration.- infix(_:_:)();
    }

    static Duration.zero.getter();
    if (static Duration.== infix(_:_:)())
    {
      v426 = 2;
      lazy protocol witness table accessor for type Int64 and conformance Int64();
      static Duration./ infix<A>(_:_:)();
      v426 = 2;
      static Duration.* infix<A>(_:_:)();
      static Duration.- infix(_:_:)();
      static Duration.zero.getter();
      v71 = v400;
      static Duration.== infix(_:_:)();
LABEL_76:
      v59 = v402;
      LODWORD(v63) = v364;
LABEL_77:
      v62 = Duration.factor(intoUnits:)(v59, v71, v401);
      v115 = *(v62 + 2);
      v116 = Duration.components.getter();
      Duration.components.getter();
      v37 = v117;
      if (v63 > 3)
      {
        if (v63 > 5)
        {
          if (v63 == 6)
          {
            v119 = 6.0;
          }

          else
          {
            v119 = 9.0;
          }
        }

        else
        {
          v119 = 3.0;
          if (v63 == 4)
          {
            v120 = 1.0;
            goto LABEL_93;
          }
        }

        v120 = pow(0.1, v119);
      }

      else
      {
        if (v63 > 1)
        {
          if (v63 == 2)
          {
            *&v118 = 3600.0;
          }

          else
          {
            *&v118 = 60.0;
          }
        }

        else if (v63)
        {
          *&v118 = 86400.0;
        }

        else
        {
          *&v118 = 604800.0;
        }

        v120 = *&v118;
      }

LABEL_93:
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        if (v115)
        {
          goto LABEL_95;
        }
      }

      else
      {
        v62 = specialized _ArrayBuffer._consumeAndCreateNew()(v62);
        if (v115)
        {
LABEL_95:
          if (v115 <= *(v62 + 2))
          {
            *&v62[8 * v115 + 24] = (v37 * 1.0e-18 + v116) / v120 + *&v62[8 * v115 + 24];
            v7 = v393;
            goto LABEL_97;
          }

          goto LABEL_342;
        }
      }

      __break(1u);
LABEL_342:
      __break(1u);
LABEL_343:
      __break(1u);
LABEL_344:
      __break(1u);
      goto LABEL_345;
    }

    static Duration.zero.getter();
    if (static Duration.< infix(_:_:)())
    {
      static Duration.zero.getter();
      static Duration.- infix(_:_:)();
    }

    v102 = static Duration.+ infix(_:_:)();
    v104 = v103;
    static Duration.zero.getter();
    if (static Duration.< infix(_:_:)())
    {
      static Duration.zero.getter();
      static Duration.- infix(_:_:)();
    }

    v401 = v102;
    static Duration.zero.getter();
    v105 = static Duration.< infix(_:_:)();
    v369 = v104;
    if (v105)
    {
      static Duration.zero.getter();
      static Duration.- infix(_:_:)();
    }

    static Duration.- infix(_:_:)();
    static Duration.zero.getter();
    if (static Duration.< infix(_:_:)())
    {
      static Duration.zero.getter();
      static Duration.- infix(_:_:)();
    }

    v106 = v394;
    v107 = v397;
    v108 = v388;
    (*(v397 + 16))(v394, v379, v388);
    v109 = (*(v107 + 88))(v106, v108);
    if (v109 == *MEMORY[0x1E69E7038])
    {
      v110 = static Duration.< infix(_:_:)();
      v111 = (v110 & 1) == 0;
      if (v110)
      {
        v112 = v389;
      }

      else
      {
        v112 = v401;
      }

      goto LABEL_72;
    }

    v347 = v401;
    if (v109 == *MEMORY[0x1E69E7030])
    {
      v348 = static Duration.< infix(_:_:)();
      v112 = v389;
      v113 = v386;
      if ((v348 & 1) == 0)
      {
        v349 = static Duration.== infix(_:_:)();
        v112 = v347;
        v113 = v369;
        if (v349)
        {
          v426 = 2;
          lazy protocol witness table accessor for type Int64 and conformance Int64();
          static Duration./ infix<A>(_:_:)();
          v426 = 2;
          static Duration.* infix<A>(_:_:)();
          static Duration.- infix(_:_:)();
          static Duration.zero.getter();
          v350 = static Duration.== infix(_:_:)();
          v111 = (v350 & 1) == 0;
          if (v350)
          {
            v112 = v389;
          }

          else
          {
            v112 = v347;
          }

LABEL_72:
          v113 = v386;
          if (v111)
          {
            v113 = v369;
          }

          goto LABEL_75;
        }
      }

      goto LABEL_75;
    }

    if (v109 == *MEMORY[0x1E69E7040])
    {
      v351 = v369;
      v352 = v389;
      v353 = v386;
      v354 = static Duration.< infix(_:_:)();
      if (v354)
      {
        v112 = v352;
      }

      else
      {
        v112 = v347;
      }

      if (v354)
      {
        v113 = v353;
      }

      else
      {
        v113 = v351;
      }

      goto LABEL_75;
    }

    v355 = v389;
    if (v109 == *MEMORY[0x1E69E7048])
    {
      v356 = v401;
      v357 = v369;
      v358 = v386;
      v359 = static Duration.< infix(_:_:)();
      if (v359)
      {
        v112 = v356;
      }

      else
      {
        v112 = v355;
      }

      if (v359)
      {
        v113 = v357;
      }

      else
      {
        v113 = v358;
      }

      goto LABEL_75;
    }

    v112 = v389;
    v113 = v386;
    if (v109 == *MEMORY[0x1E69E7020] || (v112 = v401, v113 = v369, v109 == *MEMORY[0x1E69E7028]))
    {
LABEL_75:
      v426 = 2;
      v71 = v112;
      v114 = v113;
      lazy protocol witness table accessor for type Int64 and conformance Int64();
      static Duration./ infix<A>(_:_:)();
      v426 = 2;
      static Duration.* infix<A>(_:_:)();
      static Duration.- infix(_:_:)();
      static Duration.zero.getter();
      static Duration.== infix(_:_:)();
      v401 = v114;
      static Duration.== infix(_:_:)();
      v26 = v384;
      goto LABEL_76;
    }

    goto LABEL_358;
  }

LABEL_97:
  if (*(v62 + 2) >= v61)
  {
    v121 = v61;
  }

  else
  {
    v121 = *(v62 + 2);
  }

  if (v121)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys8DurationV10FoundationE16UnitsFormatStyleV4UnitVSdGMd, &_ss18_DictionaryStorageCys8DurationV10FoundationE16UnitsFormatStyleV4UnitVSdGMR);
    v122 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v122 = MEMORY[0x1E69E7CC8];
  }

  v123 = v7;
  v416[0] = v122;
  swift_bridgeObjectRetain_n();

  if (v61)
  {
    for (i = 0; v61 != i; ++i)
    {
      v125 = *(v62 + 2);
      if (i == v125)
      {
        break;
      }

      if (i >= v125)
      {
        __break(1u);
LABEL_332:
        __break(1u);
LABEL_333:
        __break(1u);
LABEL_334:
        __break(1u);
LABEL_335:
        __break(1u);
LABEL_336:
        __break(1u);
LABEL_337:
        __break(1u);
        goto LABEL_338;
      }

      v126 = *(v402 + i + 32);
      if (v126 == 8)
      {
        break;
      }

      v127 = *&v62[8 * i + 32];
      LOBYTE(v409[0]) = *(v402 + i + 32);
      v128 = specialized __RawDictionaryStorage.find<A>(_:)(v126);
      v130 = v122[2];
      v131 = (v129 & 1) == 0;
      v132 = __OFADD__(v130, v131);
      v133 = v130 + v131;
      if (v132)
      {
        goto LABEL_332;
      }

      v37 = v129;
      if (v122[3] < v133)
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v133, 1);
        v122 = v416[0];
        v128 = specialized __RawDictionaryStorage.find<A>(_:)(v409[0]);
        if ((v37 & 1) != (v134 & 1))
        {
          goto LABEL_360;
        }
      }

      if (v37)
      {
        goto LABEL_356;
      }

      v122[(v128 >> 6) + 8] |= 1 << v128;
      *(v122[6] + v128) = v409[0];
      *(v122[7] + 8 * v128) = v127;
      v135 = v122[2];
      v132 = __OFADD__(v135, 1);
      v136 = v135 + 1;
      if (v132)
      {
        goto LABEL_333;
      }

      v122[2] = v136;
    }
  }

  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();
  v62 = specialized static Duration.TimeFormatStyle.Attributed.componentsFromPatternString(_:patternSet:)(countAndFlagsBits, object, &outlined read-only object #3 of Duration.TimeFormatStyle.Attributed.format(_:));
  swift_arrayDestroy();
  if (v122[2])
  {
    v137 = specialized __RawDictionaryStorage.find<A>(_:)(2u);
    v5 = 0.0;
    v4 = 0.0;
    v138 = v397;
    if (v139)
    {
      v4 = *(v122[7] + 8 * v137);
    }

    if (v122[2])
    {
      v140 = specialized __RawDictionaryStorage.find<A>(_:)(3u);
      v6 = 0.0;
      if (v141)
      {
        v5 = *(v122[7] + 8 * v140);
      }

      if (v122[2])
      {
        v142 = specialized __RawDictionaryStorage.find<A>(_:)(4u);
        if (v143)
        {
          v6 = *(v122[7] + 8 * v142);
        }
      }
    }

    else
    {
      v6 = 0.0;
    }
  }

  else
  {
    v5 = 0.0;
    v4 = 0.0;
    v6 = 0.0;
    v138 = v397;
  }

  v144 = v26 + *(v8 + 36);
  *v144 = 0;
  *(v144 + 8) = 1;
  *(v144 + 16) = 0;
  *(v144 + 24) = 0;
  *(v144 + 32) = 0;
  *(v144 + 40) = 0x1FFFFFFFELL;
  *(v144 + 56) = 0;
  *(v144 + 64) = 0;
  *(v144 + 48) = 0;
  *(v144 + 72) = 131584;
  *(v144 + 76) = 512;
  v145 = type metadata accessor for NumberFormatStyleConfiguration.Collection(0);
  v146 = v145[9];
  v147 = *(v138 + 56);
  v402 = *v395;
  v147(v144 + v146, 1, 1, v388);
  v148 = v144 + v145[10];
  *v148 = 0;
  *(v148 + 8) = -1;
  *(v144 + v145[11]) = 3;
  *v26 = v402;
  *(v144 + 73) = *(&v123->_os_unfair_lock_opaque + *(v396 + 20));
  swift_unknownObjectRetain();
  BigString.init()();
  v426 = 0;
  MEMORY[0x1865D26B0](&v426, 8);
  i = v426;
  type metadata accessor for AttributedString.Guts();
  v37 = swift_allocObject();
  if ((BigString.isEmpty.getter() & 1) == 0)
  {
LABEL_338:
    __break(1u);
    goto LABEL_339;
  }

  if (one-time initialization token for _nextVersion != -1)
  {
LABEL_339:
    swift_once();
  }

  add_explicit = atomic_fetch_add_explicit(&static AttributedString.Guts._nextVersion, 1uLL, memory_order_relaxed);
  v150 = v422;
  *(v37 + 24) = v421;
  *(v37 + 16) = add_explicit;
  *(v37 + 40) = v150;
  *(v37 + 56) = v423;
  *(v37 + 72) = 0;
  *(v37 + 80) = 0;
  *(v37 + 88) = 0;
  *(v37 + 96) = i;
  *(v37 + 104) = MEMORY[0x1E69E7CC0];
  v406 = v37;
  LODWORD(v386) = fmin(fmin(v4, v5), v6) >= 0.0;
  v151 = *(v62 + 2);
  if (v151)
  {
    v152 = 0;
    *&v402 = 0;
    v369 = v62;
    v153 = v62 + 32;
    v400 = "butedString+_InternalRun.swift";
    v390 = xmmword_1812187D0;
    v389 = v151;
    v395 = v153;
    while (1)
    {
      v163 = &v153[32 * v152];
      v164 = *v163;
      if (v163[8] != 1)
      {
        v416[0] = *v163;

        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySJGMd, &_sSaySJGMR);
        lazy protocol witness table accessor for type [Character] and conformance [A]();
        String.init<A>(_:)();
LABEL_150:
        BigString.init(_:)();
        AttributedString.init(_:attributes:)(v425, MEMORY[0x1E69E7CC8], MEMORY[0x1E69E7CD0], v416);
        goto LABEL_132;
      }

      v165 = v164[2];
      if (!v165)
      {
        v153 = v395;
        goto LABEL_133;
      }

      v166 = v164[4];
      v167 = v164[5];
      v168 = v166 == 104 && v167 == 0xE100000000000000;
      v397 = v152;
      if (v168 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v179 = v166 == 109 && v167 == 0xE100000000000000;
      if (v179 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v180 = v376;
        outlined init with copy of Duration.TimeFormatStyle.Pattern.Fields(v123, v376, type metadata accessor for Duration.TimeFormatStyle.Pattern);
        outlined init with take of Duration.TimeFormatStyle.Pattern(v180, v380, type metadata accessor for Duration.TimeFormatStyle.Pattern.Fields);
        v181 = swift_getEnumCaseMultiPayload();
        if (!v181)
        {
          if (v165 >= 0x3E7)
          {
            v189 = 999;
          }

          else
          {
            v189 = v165;
          }

          LOBYTE(v416[0]) = 0;
          v172 = 1;
          LOBYTE(v411) = 1;
          LOBYTE(v409[0]) = 0;
          LOBYTE(v407[0]) = 0;
          v190 = v371;
          outlined init with take of FloatingPointFormatStyle<Double>(v26, v371);
          v191 = v190 + *(v8 + 36);
          *(v191 + 16) = v189;
          *(v191 + 24) = 0;
          *(v191 + 32) = 0;
          *(v191 + 40) = 1;
          *(v191 + 48) = 0;
          *(v191 + 56) = 0;
          *(v191 + 64) = 0;
          *(v191 + 72) = 0x80;
          outlined init with take of FloatingPointFormatStyle<Double>(v190, v26);
          v188 = v380;
          goto LABEL_171;
        }

        if (v181 == 1)
        {
          if (v165 >= 0x3E7)
          {
            v182 = 999;
          }

          else
          {
            v182 = v165;
          }

          v183 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi23fractionalSecondsLength_s25FloatingPointRoundingRuleO015roundFractionalB0tMd, &_sSi23fractionalSecondsLength_s25FloatingPointRoundingRuleO015roundFractionalB0tMR) + 48);
          LOBYTE(v416[0]) = 0;
          v172 = 1;
          LOBYTE(v411) = 1;
          LOBYTE(v409[0]) = 0;
          LOBYTE(v407[0]) = 0;
          v184 = v26;
          v185 = v372;
          outlined init with take of FloatingPointFormatStyle<Double>(v184, v372);
          v186 = v185 + *(v8 + 36);
          *(v186 + 16) = v182;
          *(v186 + 24) = 0;
          *(v186 + 32) = 0;
          *(v186 + 40) = 1;
          *(v186 + 48) = 0;
          *(v186 + 56) = 0;
          *(v186 + 64) = 0;
          *(v186 + 72) = 0x80;
          v187 = v185;
          v26 = v384;
          outlined init with take of FloatingPointFormatStyle<Double>(v187, v384);
          v188 = v380 + v183;
LABEL_171:
          v381(v188, v388);
          v175 = 256;
          LODWORD(v396) = 3;
LABEL_172:
          v176 = 0x10000;
          v177 = v5;
          goto LABEL_210;
        }

        v204 = v123 + *(v387 + 20);
        if (v204[8] != 1)
        {
          v205 = *v204;
          if (v165 <= v205)
          {
            v165 = v205;
          }
        }

        if (v165 >= 0x3E7)
        {
          v206 = 999;
        }

        else
        {
          v206 = v165;
        }

        v207 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi23fractionalSecondsLength_s25FloatingPointRoundingRuleO015roundFractionalB0tMd, &_sSi23fractionalSecondsLength_s25FloatingPointRoundingRuleO015roundFractionalB0tMR) + 48);
        LOBYTE(v416[0]) = 0;
        v172 = 1;
        LOBYTE(v411) = 1;
        LOBYTE(v409[0]) = 0;
        LOBYTE(v407[0]) = 0;
        v208 = v26;
        v209 = v373;
        outlined init with take of FloatingPointFormatStyle<Double>(v208, v373);
        v210 = v209 + *(v8 + 36);
        *(v210 + 16) = v206;
        *(v210 + 24) = 0;
        *(v210 + 32) = 0;
        *(v210 + 40) = 1;
        *(v210 + 48) = 0;
        *(v210 + 56) = 0;
        *(v210 + 64) = 0;
        *(v210 + 72) = 0x80;
        v211 = v209;
        v26 = v384;
        outlined init with take of FloatingPointFormatStyle<Double>(v211, v384);
        v381((v380 + v207), v388);
        LODWORD(v396) = 3;
        if (v386)
        {
          v175 = 256;
          goto LABEL_172;
        }

        v178 = v5;
        goto LABEL_153;
      }

      v192 = v166 == 115 && v167 == 0xE100000000000000;
      if (!v192 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        v416[0] = v164;

        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySJGMd, &_sSaySJGMR);
        lazy protocol witness table accessor for type [Character] and conformance [A]();
        String.init<A>(_:)();
        v153 = v395;
        goto LABEL_150;
      }

      v193 = v370;
      outlined init with copy of Duration.TimeFormatStyle.Pattern.Fields(v123, v370, type metadata accessor for Duration.TimeFormatStyle.Pattern);
      outlined init with take of Duration.TimeFormatStyle.Pattern(v193, v374, type metadata accessor for Duration.TimeFormatStyle.Pattern.Fields);
      v194 = swift_getEnumCaseMultiPayload();
      if (v194)
      {
        if (v194 == 1)
        {
          v195 = v374;
          v196 = *v374;
          v197 = 999;
          if (v165 < 0x3E7)
          {
            v197 = v165;
          }

          v396 = v197;
          if (v196 >= 998)
          {
            v198 = 998;
          }

          else
          {
            v198 = v196;
          }

          v199 = v198 & ~(v198 >> 63);
          v200 = v196 & ~(v196 >> 63);
          if (v200 >= 998)
          {
            v200 = 998;
          }

          countAndFlagsBits = v200;
          v401 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi23fractionalSecondsLength_s25FloatingPointRoundingRuleO015roundFractionalB0tMd, &_sSi23fractionalSecondsLength_s25FloatingPointRoundingRuleO015roundFractionalB0tMR) + 48);
          LOBYTE(v416[0]) = 0;
          v172 = 1;
          LOBYTE(v411) = 1;
          LOBYTE(v409[0]) = 0;
          LOBYTE(v407[0]) = 0;
          v26 = v384;
          v201 = v367;
          outlined init with take of FloatingPointFormatStyle<Double>(v384, v367);
          v202 = v201 + *(v8 + 36);
          *(v202 + 16) = v396;
          *(v202 + 24) = 0;
          *(v202 + 32) = 0;
          *(v202 + 40) = 1;
          *(v202 + 48) = v199;
          *(v202 + 56) = 0;
          *(v202 + 64) = countAndFlagsBits;
          *(v202 + 72) = 0x80;
          outlined init with take of FloatingPointFormatStyle<Double>(v201, v26);
          v203 = v195 + v401;
        }

        else
        {
          v212 = v374;
          v213 = *v374;
          v214 = 999;
          if (v165 < 0x3E7)
          {
            v214 = v165;
          }

          v396 = v214;
          if (v213 >= 998)
          {
            v215 = 998;
          }

          else
          {
            v215 = v213;
          }

          v401 = v215 & ~(v215 >> 63);
          v216 = v213 & ~(v213 >> 63);
          if (v216 >= 998)
          {
            v217 = 998;
          }

          else
          {
            v217 = v216;
          }

          countAndFlagsBits = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi23fractionalSecondsLength_s25FloatingPointRoundingRuleO015roundFractionalB0tMd, &_sSi23fractionalSecondsLength_s25FloatingPointRoundingRuleO015roundFractionalB0tMR) + 48);
          LOBYTE(v416[0]) = 0;
          v172 = 1;
          LOBYTE(v411) = 1;
          LOBYTE(v409[0]) = 0;
          LOBYTE(v407[0]) = 0;
          v26 = v384;
          v218 = v368;
          outlined init with take of FloatingPointFormatStyle<Double>(v384, v368);
          v219 = v218 + *(v8 + 36);
          *(v219 + 16) = v396;
          *(v219 + 24) = 0;
          *(v219 + 32) = 0;
          *(v219 + 40) = 1;
          *(v219 + 48) = v401;
          *(v219 + 56) = 0;
          *(v219 + 64) = v217;
          *(v219 + 72) = 0x80;
          outlined init with take of FloatingPointFormatStyle<Double>(v218, v26);
          v203 = v212 + countAndFlagsBits;
        }

        v381(v203, v388);
        v175 = 256;
        LODWORD(v396) = 4;
      }

      else
      {
        v381(v374, v388);
        v175 = 256;
        LODWORD(v396) = 4;
        v172 = 1;
      }

      v176 = 0x10000;
      v177 = v6;
LABEL_210:
      v220 = v26;
      v221 = v391;
      outlined init with copy of FloatingPointRoundingRule?(v26, v391, &_s10Foundation24FloatingPointFormatStyleVySdGMd, &_s10Foundation24FloatingPointFormatStyleVySdGMR);
      v222 = v398;
      outlined init with take of FloatingPointFormatStyle<Double>(v221, v398);
      v223 = v176 | v172 | v175;
      v224 = v222 + *(v8 + 36);
      *(v224 + 76) = BYTE2(v176);
      *(v224 + 74) = v223;
      v225 = NumberFormatStyleConfiguration.Collection.skeleton.getter();
      v62 = v226;
      v227 = *(v222 + 8);
      v228 = swift_getObjectType();
      v229 = (*(v227 + 472))(v228, v227);
      v231 = v230;
      if (one-time initialization token for cache != -1)
      {
        v276 = v229;
        swift_once();
        v229 = v276;
      }

      v123 = *algn_1EA7B1D98;
      v394 = static ICUNumberFormatter.cache;
      *&v411 = v225;
      *(&v411 + 1) = v62;
      countAndFlagsBits = v229;
      *&v412 = v229;
      *(&v412 + 1) = v231;
      MEMORY[0x1EEE9AC00](v229);
      os_unfair_lock_lock(v123 + 6);
      v232 = v402;
      partial apply for specialized closure #1 in FormatterCache.formatter(for:creator:)(&v123[4], v416);
      *&v402 = v232;
      os_unfair_lock_unlock(v123 + 6);
      v8 = v416[0];
      i = &_s10Foundation16AttributedStringV15_AttributeValueVSgMR;
      if (v416[0] == 1)
      {
        v401 = v231;
        type metadata accessor for ICUNumberFormatter();
        v8 = swift_allocObject();
        *(v8 + 24) = v225;
        *(v8 + 32) = v62;
        swift_bridgeObjectRetain_n();
        v233 = MEMORY[0x1865CB200](v225, v62);
        v26 = v225;
        if (v233)
        {
          v37 = v233;
          v234 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs6UInt16V_Tt1gq5(v233, 0);

          i = specialized Sequence._copySequenceContents(initializing:)(v416, (v234 + 4), v37, v225, v62);

          if (i != v37)
          {
            goto LABEL_337;
          }
        }

        else
        {

          v234 = MEMORY[0x1E69E7CC0];
        }

        LODWORD(v416[0]) = 0;
        v37 = v234[2];
        if (v37 >> 31)
        {
          goto LABEL_335;
        }

        String.utf8CString.getter();
        v235 = unumf_openForSkeletonAndLocale();

        v236 = MEMORY[0x1E69E7CC8];
        if (v235)
        {
          if (SLODWORD(v416[0]) >= 1)
          {
            unumf_close();
            goto LABEL_221;
          }

          *(v8 + 16) = v235;
        }

        else
        {
LABEL_221:

          type metadata accessor for ICUNumberFormatterBase();
          swift_deallocPartialClassInstance();
          v8 = 0;
        }

        os_unfair_lock_lock(v123 + 6);
        if (v394 >= *(*&v123[4]._os_unfair_lock_opaque + 16))
        {
        }

        else
        {
          *&v123[4]._os_unfair_lock_opaque = v236;
        }

        i = v401;

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v416[0] = *&v123[4]._os_unfair_lock_opaque;
        v37 = v416[0];
        *&v123[4]._os_unfair_lock_opaque = 0x8000000000000000;
        v394 = v225;
        v26 = specialized __RawDictionaryStorage.find<A>(_:)(v225, v62, countAndFlagsBits, i);
        v239 = *(v37 + 16);
        v240 = (v238 & 1) == 0;
        v241 = v239 + v240;
        if (__OFADD__(v239, v240))
        {
          goto LABEL_336;
        }

        v242 = v238;
        if (*(v37 + 24) >= v241)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            v243 = v37;
          }

          else
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation18ICUNumberFormatterC9Signature33_1C58B5D80AA37B9371410D3343C91B53LLVAESgGMd, &_ss18_DictionaryStorageCy10Foundation18ICUNumberFormatterC9Signature33_1C58B5D80AA37B9371410D3343C91B53LLVAESgGMR);
            v300 = static _DictionaryStorage.copy(original:)();
            v243 = v300;
            if (*(v37 + 16))
            {
              v301 = (v300 + 64);
              v302 = (v37 + 64);
              v303 = ((1 << *(v243 + 32)) + 63) >> 6;
              v362 = v37 + 64;
              if (v243 != v37 || v301 >= &v302[8 * v303])
              {
                memmove(v301, v302, 8 * v303);
              }

              v304 = 0;
              *(v243 + 16) = *(v37 + 16);
              v305 = 1 << *(v37 + 32);
              if (v305 < 64)
              {
                v306 = ~(-1 << v305);
              }

              else
              {
                v306 = -1;
              }

              v307 = v306 & *(v37 + 64);
              v308 = (v305 + 63) >> 6;
              v363 = v308;
              if (!v307)
              {
                goto LABEL_280;
              }

              while (1)
              {
                v309 = __clz(__rbit64(v307));
                for (j = (v307 - 1) & v307; ; j = (v311 - 1) & v311)
                {
                  v312 = v309 | (v304 << 6);
                  v313 = *(v37 + 56);
                  v314 = (*(v37 + 48) + 32 * v312);
                  v315 = *v314;
                  v317 = v314[2];
                  v318 = v314[3];
                  v364 = v314[1];
                  v316 = v364;
                  v365 = v318;
                  v319 = *(v313 + 8 * v312);
                  v320 = (*(v243 + 48) + 32 * v312);
                  *v320 = v315;
                  v320[1] = v316;
                  v320[2] = v317;
                  v320[3] = v318;
                  *(*(v243 + 56) + 8 * v312) = v319;

                  v308 = v363;
                  v307 = j;
                  if (j)
                  {
                    break;
                  }

LABEL_280:
                  v310 = v304;
                  do
                  {
                    v304 = v310 + 1;
                    if (__OFADD__(v310, 1))
                    {
                      goto LABEL_353;
                    }

                    if (v304 >= v308)
                    {
                      goto LABEL_287;
                    }

                    v311 = *(v362 + 8 * v304);
                    ++v310;
                  }

                  while (!v311);
                  v309 = __clz(__rbit64(v311));
                }
              }
            }

LABEL_287:
          }

          v244 = countAndFlagsBits;
          if (v242)
          {
            goto LABEL_230;
          }
        }

        else
        {
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v241, isUniquelyReferenced_nonNull_native);
          v243 = v416[0];
          v244 = countAndFlagsBits;
          v245 = specialized __RawDictionaryStorage.find<A>(_:)(v394, v62, countAndFlagsBits, v401);
          if ((v242 & 1) != (v246 & 1))
          {
            goto LABEL_362;
          }

          v26 = v245;
          if (v242)
          {
LABEL_230:

            *(*(v243 + 56) + 8 * v26) = v8;

LABEL_235:
            *&v123[4]._os_unfair_lock_opaque = v243;

            os_unfair_lock_unlock(v123 + 6);

            outlined consume of ICUNumberFormatter??(1);
            v220 = v384;
            i = &_s10Foundation16AttributedStringV15_AttributeValueVSgMR;
            goto LABEL_236;
          }
        }

        specialized _NativeDictionary._insert(at:key:value:)(v26, v394, v62, v244, v401, v8, v243);
        goto LABEL_235;
      }

LABEL_236:

      if (!v8)
      {
        v8 = v392;
        v250 = MEMORY[0x1E69E7CC8];
        v123 = &_s10Foundation16AttributedStringV15_AttributeValueVSgMd;
        v26 = v220;
        v152 = v397;
        goto LABEL_241;
      }

      v247 = *(v8 + 16);
      type metadata accessor for ICUNumberFormatterBase.FormatResult();
      swift_allocObject();
      v248 = v402;
      v249 = ICUNumberFormatterBase.FormatResult.init(formatter:value:)(v247, v177);
      v123 = &_s10Foundation16AttributedStringV15_AttributeValueVSgMd;
      v26 = v220;
      v152 = v397;
      if (v248)
      {

        *&v402 = 0;
LABEL_239:
        v8 = v392;
        v250 = MEMORY[0x1E69E7CC8];
LABEL_241:
        Double.description.getter();
        v62 = v251;
        goto LABEL_242;
      }

      *&v402 = 0;
      v274 = v249;

      specialized _withResizingUCharBuffer(initialSize:_:)(32, v274);
      v62 = v275;

      if (!v62)
      {
        goto LABEL_239;
      }

      v8 = v392;
      v250 = MEMORY[0x1E69E7CC8];
LABEL_242:
      outlined destroy of TermOfAddress?(v398, &_s10Foundation24FloatingPointFormatStyleVySdGMd, &_s10Foundation24FloatingPointFormatStyleVySdGMR);
      v404 = v250;
      v405 = MEMORY[0x1E69E7CD0];
      v416[3] = &type metadata for AttributeScopes.FoundationAttributes.DurationFieldAttribute.Field;
      v416[4] = lazy protocol witness table accessor for type AttributeScopes.FoundationAttributes.DurationFieldAttribute.Field and conformance AttributeScopes.FoundationAttributes.DurationFieldAttribute.Field();
      LOBYTE(v416[0]) = v396;
      v417 = v390;
      v418 = 1;
      v419 = 0;
      outlined init with copy of FloatingPointRoundingRule?(v416, &v411, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd, &_s10Foundation16AttributedStringV15_AttributeValueVSgMR);
      if (!*(&v412 + 1))
      {
        outlined destroy of TermOfAddress?(&v411, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd, &_s10Foundation16AttributedStringV15_AttributeValueVSgMR);
        v259 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000021, v400 | 0x8000000000000000);
        if (v260)
        {
          v261 = v259;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation16AttributedStringV15_AttributeValueVGMd, &_ss18_DictionaryStorageCySS10Foundation16AttributedStringV15_AttributeValueVGMR);
            v321 = v250;
            v322 = static _DictionaryStorage.copy(original:)();
            v250 = v322;
            v323 = *(v321 + 16);
            if (v323)
            {
              v324 = (v322 + 64);
              v325 = ((1 << *(v250 + 32)) + 63) >> 6;
              if (v250 != v321 || v324 >= v321 + 8 * v325 + 64)
              {
                v326 = *(v321 + 16);
                memmove(v324, (v321 + 64), 8 * v325);
                v323 = v326;
              }

              v327 = 0;
              *(v250 + 16) = v323;
              v328 = 1 << *(v321 + 32);
              if (v328 < 64)
              {
                v329 = ~(-1 << v328);
              }

              else
              {
                v329 = -1;
              }

              v330 = v329 & *(v321 + 64);
              v331 = (v328 + 63) >> 6;
              v396 = v331;
              if (v330)
              {
                do
                {
                  v401 = (v330 - 1) & v330;
                  v332 = __clz(__rbit64(v330)) | (v327 << 6);
LABEL_302:
                  v335 = 16 * v332;
                  v336 = *(MEMORY[0x1E69E7CC8] + 56);
                  v337 = (*(MEMORY[0x1E69E7CC8] + 48) + 16 * v332);
                  v338 = v337[1];
                  countAndFlagsBits = *v337;
                  v339 = 72 * v332;
                  outlined init with copy of AttributedString._AttributeValue(v336 + 72 * v332, &v411);
                  v340 = (*(v250 + 48) + v335);
                  *v340 = countAndFlagsBits;
                  v340[1] = v338;
                  v341 = *(v250 + 56) + v339;
                  *v341 = v411;
                  v342 = v412;
                  v343 = v413;
                  v344 = v414;
                  *(v341 + 64) = v415;
                  *(v341 + 32) = v343;
                  *(v341 + 48) = v344;
                  *(v341 + 16) = v342;

                  v8 = v392;
                  v26 = v384;
                  v331 = v396;
                  v330 = v401;
                }

                while (v401);
              }

              while (1)
              {
                v333 = v327 + 1;
                if (__OFADD__(v327, 1))
                {
                  goto LABEL_354;
                }

                if (v333 >= v331)
                {
                  break;
                }

                v334 = *(MEMORY[0x1E69E7CC8] + 8 * v333 + 64);
                ++v327;
                if (v334)
                {
                  v401 = (v334 - 1) & v334;
                  v332 = __clz(__rbit64(v334)) | (v333 << 6);
                  v327 = v333;
                  goto LABEL_302;
                }
              }
            }
          }

          v262 = *(v250 + 56) + 72 * v261;
          v411 = *v262;
          v264 = *(v262 + 32);
          v263 = *(v262 + 48);
          v265 = *(v262 + 64);
          v412 = *(v262 + 16);
          v413 = v264;
          v415 = v265;
          v414 = v263;
          specialized _NativeDictionary._delete(at:)(v261, v250);
          v404 = v250;
        }

        else
        {
          v415 = 0;
          v413 = 0u;
          v414 = 0u;
          v411 = 0u;
          v412 = 0u;
        }

        goto LABEL_131;
      }

      v409[2] = v413;
      v409[3] = v414;
      v410 = v415;
      v409[0] = v411;
      v409[1] = v412;
      outlined init with copy of AttributedString._AttributeValue(v409, v407);
      v37 = swift_isUniquelyReferenced_nonNull_native();
      v403 = v250;
      v252 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000021, v400 | 0x8000000000000000);
      v254 = *(v250 + 16);
      v255 = (v253 & 1) == 0;
      v132 = __OFADD__(v254, v255);
      v256 = v254 + v255;
      if (v132)
      {
        goto LABEL_334;
      }

      v257 = v253;
      if (*(v250 + 24) < v256)
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v256, v37);
        v250 = v403;
        v252 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000021, v400 | 0x8000000000000000);
        if ((v257 & 1) != (v258 & 1))
        {
          goto LABEL_361;
        }

LABEL_251:
        if (v257)
        {
          goto LABEL_252;
        }

        goto LABEL_129;
      }

      if (v37)
      {
        goto LABEL_251;
      }

      v394 = v252;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation16AttributedStringV15_AttributeValueVGMd, &_ss18_DictionaryStorageCySS10Foundation16AttributedStringV15_AttributeValueVGMR);
      v277 = v250;
      v278 = static _DictionaryStorage.copy(original:)();
      v250 = v278;
      v279 = *(v277 + 16);
      if (v279)
      {
        v280 = (v278 + 64);
        v281 = ((1 << *(v250 + 32)) + 63) >> 6;
        if (v250 != v277 || v280 >= v277 + 8 * v281 + 64)
        {
          memmove(v280, (v277 + 64), 8 * v281);
        }

        v282 = 0;
        *(v250 + 16) = v279;
        v283 = 1 << *(v277 + 32);
        if (v283 < 64)
        {
          v284 = ~(-1 << v283);
        }

        else
        {
          v284 = -1;
        }

        v285 = v284 & *(v277 + 64);
        v286 = (v283 + 63) >> 6;
        v396 = v286;
        while (v285)
        {
          v401 = (v285 - 1) & v285;
          v287 = __clz(__rbit64(v285)) | (v282 << 6);
LABEL_270:
          v290 = 16 * v287;
          v291 = *(MEMORY[0x1E69E7CC8] + 56);
          v292 = (*(MEMORY[0x1E69E7CC8] + 48) + 16 * v287);
          v293 = v292[1];
          countAndFlagsBits = *v292;
          v294 = 72 * v287;
          outlined init with copy of AttributedString._AttributeValue(v291 + 72 * v287, &v411);
          v295 = (*(v250 + 48) + v290);
          *v295 = countAndFlagsBits;
          v295[1] = v293;
          v296 = *(v250 + 56) + v294;
          *v296 = v411;
          v297 = v412;
          v298 = v413;
          v299 = v414;
          *(v296 + 64) = v415;
          *(v296 + 32) = v298;
          *(v296 + 48) = v299;
          *(v296 + 16) = v297;

          v26 = v384;
          v286 = v396;
          v285 = v401;
        }

        while (1)
        {
          v288 = v282 + 1;
          if (__OFADD__(v282, 1))
          {
            goto LABEL_352;
          }

          if (v288 >= v286)
          {
            break;
          }

          v289 = *(MEMORY[0x1E69E7CC8] + 8 * v288 + 64);
          ++v282;
          if (v289)
          {
            v401 = (v289 - 1) & v289;
            v287 = __clz(__rbit64(v289)) | (v288 << 6);
            v282 = v288;
            goto LABEL_270;
          }
        }

        v8 = v392;
      }

      v252 = v394;
      if (v257)
      {
LABEL_252:
        v266 = *(v250 + 56) + 72 * v252;
        v268 = *(v266 + 16);
        v267 = *(v266 + 32);
        v269 = *(v266 + 48);
        v415 = *(v266 + 64);
        v414 = v269;
        v411 = *v266;
        v412 = v268;
        v413 = v267;
        v270 = *(v250 + 56) + 72 * v252;
        v271 = v407[1];
        v272 = v407[2];
        v273 = v407[3];
        *(v270 + 64) = v408;
        *(v270 + 32) = v272;
        *(v270 + 48) = v273;
        *(v270 + 16) = v271;
        *v270 = v407[0];
        outlined destroy of AttributedString._AttributeValue(v409);
        goto LABEL_130;
      }

LABEL_129:
      specialized _NativeDictionary._insert(at:key:value:)(v252, 0xD000000000000021, v400 | 0x8000000000000000, v407, v250);
      outlined destroy of AttributedString._AttributeValue(v409);
      v411 = 0u;
      v412 = 0u;
      v413 = 0u;
      v414 = 0u;
      v415 = 0;
LABEL_130:
      v404 = v250;
LABEL_131:
      AttributedString._AttributeStorage._attributeModified(_:old:new:)(0xD000000000000021, v400 | 0x8000000000000000, &v411, v416);
      outlined destroy of TermOfAddress?(v416, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd, &_s10Foundation16AttributedStringV15_AttributeValueVSgMR);
      outlined destroy of TermOfAddress?(&v411, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd, &_s10Foundation16AttributedStringV15_AttributeValueVSgMR);
      v154 = v404;
      v155 = v405;
      BigString.init(_:)();
      AttributedString.init(_:attributes:)(v424, v154, v155, v416);
      v123 = v393;
      v151 = v389;
      v153 = v395;
LABEL_132:
      v156 = v406;
      v157 = *(v406 + 40);
      v436 = *(v406 + 24);
      v437 = v157;
      v438 = *(v406 + 56);
      v158 = BigString.endIndex.getter();
      v159 = *(v156 + 16);
      v426 = v158;
      v427 = v160;
      v428 = v161;
      v429 = v162;
      v430 = v159;
      v431 = v158;
      v432 = v160;
      v433 = v161;
      v434 = v162;
      v435 = v159;
      specialized AttributedString.replaceSubrange<A, B>(_:with:)();

LABEL_133:
      if (++v152 == v151)
      {
        goto LABEL_307;
      }
    }

    v169 = v123 + *(v387 + 20);
    if ((v169[8] & 1) == 0)
    {
      v170 = *v169;
      if (v165 <= v170)
      {
        v165 = v170;
      }
    }

    if (v165 >= 0x3E7)
    {
      v171 = 999;
    }

    else
    {
      v171 = v165;
    }

    LOBYTE(v416[0]) = 0;
    v172 = 1;
    LOBYTE(v411) = 1;
    LOBYTE(v409[0]) = 0;
    LOBYTE(v407[0]) = 0;
    v173 = v385;
    outlined init with take of FloatingPointFormatStyle<Double>(v26, v385);
    v174 = v173 + *(v8 + 36);
    *(v174 + 16) = v171;
    *(v174 + 24) = 0;
    *(v174 + 32) = 0;
    *(v174 + 40) = 1;
    *(v174 + 48) = 0;
    *(v174 + 56) = 0;
    *(v174 + 64) = 0;
    *(v174 + 72) = 0x80;
    outlined init with take of FloatingPointFormatStyle<Double>(v173, v26);
    LODWORD(v396) = 2;
    if (v386)
    {
      v175 = 256;
      v176 = 0x10000;
      v177 = v4;
      goto LABEL_210;
    }

    v178 = v4;
LABEL_153:
    v176 = 0;
    v172 = 0;
    v175 = 0;
    if (v178 == 0.0)
    {
      v177 = -0.1;
    }

    else
    {
      v177 = v178;
    }

    goto LABEL_210;
  }

LABEL_307:

  v345 = v375;
  outlined destroy of TermOfAddress?(v26, &_s10Foundation24FloatingPointFormatStyleVySdGMd, &_s10Foundation24FloatingPointFormatStyleVySdGMR);
  result = (v381)(v379, v388);
  *v345 = v406;
  return result;
}

uint64_t AttributedString.CharacterView.subscript.getter@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v4 = *(result + 40);
  if (*result >> 10 >= v2[1] >> 10 && v2[5] >> 10 >= v4 >> 10)
  {
    v6 = *v2;
    v7 = *(result + 64);
    v8 = *(result + 24);
    v20[14] = *result;
    v21 = *(result + 8);
    v22 = v8;
    v23 = v4;
    v24 = *(result + 48);
    v25 = v7;
    v9 = *(v6 + 24);
    v10 = *(v6 + 56);
    v26[1] = *(v6 + 40);
    v26[2] = v10;
    v26[0] = v9;

    outlined init with copy of BigString(v26, v20);
    BigString.subscript.getter();
    outlined destroy of BigString(v26);
    result = outlined destroy of BigSubstring(v20);
    v11 = v20[6];
    v12 = v20[7];
    v13 = v20[8];
    v14 = v20[9];
    v15 = v20[10];
    v16 = v20[11];
    v17 = v20[12];
    v18 = v20[13];
    v19 = *(v6 + 16);
    a2[10] = v6;
    a2[11] = v11;
    a2[12] = v12;
    a2[13] = v13;
    a2[14] = v14;
    a2[15] = v15;
    a2[16] = v16;
    a2[17] = v17;
    a2[18] = v18;
    a2[19] = 0;
    *a2 = v11;
    a2[1] = v12;
    a2[2] = v13;
    a2[3] = v14;
    a2[4] = v19;
    a2[5] = v15;
    a2[6] = v16;
    a2[7] = v17;
    a2[8] = v18;
    a2[9] = v19;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t specialized Collection.subscript.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 1);
  v3 = *(v1 + 3);
  v4 = *(v1 + 5);
  v5 = *(v1 + 7);
  v6 = *v1;
  v7 = *(v1 + 1);
  v8 = *(v1 + 3);
  v19 = *(v1 + 2);
  v20 = v8;
  v21 = *(v1 + 4);
  v17 = *v1;
  v18 = v7;
  v9 = vshrq_n_u64(vzip1q_s64(v4, v2), 0xAuLL);
  if (vmovn_s64(vcgtq_u64(vdupq_laneq_s64(v9, 1), v9)).u8[0])
  {
    __break(1u);
  }

  else
  {
    v10 = *(v6 + 16);
    v12[0] = v2;
    v12[1] = v3;
    v13 = v10;
    v14 = v4;
    v15 = v5;
    v16 = v10;
    return AttributedString.CharacterView.subscript.getter(v12, a1);
  }

  return result;
}

uint64_t Duration.TimeFormatStyle.format(_:)(char *a1, uint64_t a2)
{
  Duration.TimeFormatStyle.Attributed.format(_:)(a1, a2, &v17);
  v2 = v17;
  v3 = *(v17 + 40);
  v20 = *(v17 + 24);
  v21 = v3;
  v22 = *(v17 + 56);
  v4 = BigString.startIndex.getter();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = BigString.endIndex.getter();
  v19[0] = v2;
  v19[1] = v4;
  v19[2] = v6;
  v19[3] = v8;
  v19[4] = v10;
  v19[5] = v11;
  v19[6] = v12;
  v19[7] = v13;
  v19[8] = v14;
  v19[9] = 0;
  specialized Collection.subscript.getter(v16);
  outlined destroy of AttributedString.CharacterView(v19);
  v23[6] = v16[6];
  v23[7] = v16[7];
  v23[8] = v16[8];
  v23[9] = v16[9];
  v23[2] = v16[2];
  v23[3] = v16[3];
  v23[4] = v16[4];
  v23[5] = v16[5];
  v23[0] = v16[0];
  v23[1] = v16[1];
  Slice<>._characters.getter(v18);
  outlined destroy of TermOfAddress?(v23, &_ss5SliceVy10Foundation16AttributedStringV13CharacterViewVGMd, &_ss5SliceVy10Foundation16AttributedStringV13CharacterViewVGMR);
  return MEMORY[0x1865CAF70](v18);
}

double Slice<>._characters.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = v1[9];
  v26[3] = v1[8];
  v26[4] = v3;
  v4 = v1[7];
  v26[1] = v1[6];
  v26[2] = v4;
  v26[0] = v1[5];
  v5 = v1[1];
  v21 = *v1;
  v22 = v5;
  v6 = *(v1 + 56);
  v23 = *(v1 + 40);
  v24 = v6;
  v7 = *&v26[0];
  v8 = *(*&v26[0] + 40);
  v25[0] = *(*&v26[0] + 24);
  v25[1] = v8;
  v25[2] = *(*&v26[0] + 56);
  outlined init with copy of AttributedString.CharacterView(v26, v16);
  outlined init with copy of AttributedString.CharacterView(v26, v16);
  outlined init with copy of BigString(v25, v16);
  BigString.subscript.getter();
  outlined destroy of AttributedString.CharacterView(v26);
  outlined destroy of BigString(v25);
  outlined destroy of BigSubstring(v16);
  v31 = v20;
  v30 = v19;
  v29 = v18;
  v28 = v17;
  v27 = v7;
  v32 = 0;
  v9 = *(v7 + 56);
  v10 = *(v7 + 64);
  v14 = *(v7 + 24);
  v15 = *(v7 + 40);
  swift_unknownObjectRetain();
  outlined destroy of AttributedString.CharacterView(&v27);
  *a1 = v14;
  *(a1 + 16) = v15;
  *(a1 + 32) = v9;
  *(a1 + 40) = v10;
  v11 = v29;
  *(a1 + 48) = v28;
  *(a1 + 64) = v11;
  result = *&v30;
  v13 = v31;
  *(a1 + 80) = v30;
  *(a1 + 96) = v13;
  return result;
}

uint64_t outlined destroy of Duration.TimeFormatStyle(uint64_t a1)
{
  v2 = type metadata accessor for Duration.TimeFormatStyle(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

Swift::String __swiftcall Duration.formatted()()
{
  v2 = v1;
  v3 = v0;
  v4 = type metadata accessor for Duration.TimeFormatStyle(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi23fractionalSecondsLength_s25FloatingPointRoundingRuleO015roundFractionalB0tMd, &_sSi23fractionalSecondsLength_s25FloatingPointRoundingRuleO015roundFractionalB0tMR) + 48);
  *v6 = 0;
  v8 = *MEMORY[0x1E69E7030];
  v9 = type metadata accessor for FloatingPointRoundingRule();
  (*(*(v9 - 8) + 104))(&v6[v7], v8, v9);
  type metadata accessor for Duration.TimeFormatStyle.Pattern.Fields(0);
  swift_storeEnumTagMultiPayload();
  v10 = &v6[*(type metadata accessor for Duration.TimeFormatStyle.Pattern(0) + 20)];
  *v10 = 0;
  v10[8] = 1;
  type metadata accessor for _LocaleAutoupdating();
  inited = swift_initStaticObject();
  v12 = lazy protocol witness table accessor for type _LocaleAutoupdating and conformance _LocaleAutoupdating();
  v13 = type metadata accessor for Duration.TimeFormatStyle.Attributed(0);
  v6[*(v13 + 20)] = 0;
  v14 = &v6[*(v13 + 24)];
  *v14 = inited;
  v14[1] = v12;
  v15 = Duration.TimeFormatStyle.format(_:)(v3, v2);
  v17 = v16;
  outlined destroy of Duration.TimeFormatStyle(v6);
  v18 = v15;
  v19 = v17;
  result._object = v19;
  result._countAndFlagsBits = v18;
  return result;
}

uint64_t PredicateExpressions.NotEqual<>.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X4>, uint64_t a4@<X7>, uint64_t a5@<X8>)
{
  v34 = a4;
  v36 = a3;
  v32 = a5;
  v31 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v35 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = v13;
  v37[0] = v13;
  v37[1] = v14;
  v37[2] = v15;
  v38 = v16;
  v39 = v17;
  v18 = type metadata accessor for PredicateExpressions.NotEqual(0, v37);
  v30 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v26 - v19;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Decoder.unkeyedContainer()();
  if (v5)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v28 = v20;
  v29 = a1;
  v27 = v18;
  __swift_mutable_project_boxed_opaque_existential_1(v37, v38);
  v21 = v35;
  dispatch thunk of UnkeyedDecodingContainer.decode<A>(_:)();
  v22 = v28;
  (*(v33 + 32))(v28, v21, v40);
  __swift_mutable_project_boxed_opaque_existential_1(v37, v38);
  dispatch thunk of UnkeyedDecodingContainer.decode<A>(_:)();
  v23 = v27;
  (*(v31 + 32))(&v22[*(v27 + 60)], v9, a2);
  __swift_destroy_boxed_opaque_existential_1(v37);
  v24 = v30;
  (*(v30 + 16))(v32, v22, v23);
  __swift_destroy_boxed_opaque_existential_1(v29);
  return (*(v24 + 8))(v22, v23);
}

uint64_t PredicateExpressions.NotEqual.evaluate(_:)(uint64_t *a1, void *a2)
{
  v5 = a2[4];
  v6 = a2[2];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v21 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v20 - v12;
  v14 = *a1;
  v22 = v14;
  (*(v5 + 16))(&v22, v6, v5, v11);
  if (!v2)
  {
    v16 = v21;
    v22 = v14;
    (*(a2[5] + 16))(&v22, a2[3]);
    v18 = dispatch thunk of static Equatable.== infix(_:_:)();
    v19 = *(v16 + 8);
    v19(v9, AssociatedTypeWitness);
    v19(v13, AssociatedTypeWitness);
    v15 = v18 ^ 1;
  }

  return v15 & 1;
}

uint64_t static PredicateExpressions.build_NilCoalesce<A, B>(lhs:rhs:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  (*(*(a3 - 8) + 16))(a7, a1);
  v15[0] = a3;
  v15[1] = a4;
  v15[2] = a5;
  v15[3] = a6;
  v13 = type metadata accessor for PredicateExpressions.NilCoalesce(0, v15);
  return (*(*(a4 - 8) + 16))(a7 + *(v13 + 52), a2, a4);
}

__n128 String.LocalizationValue.init(stringInterpolation:)@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  result = *a1;
  v3 = a1[1].n128_u64[0];
  *a2 = *a1;
  a2[1].n128_u64[0] = v3;
  return result;
}

uint64_t _sSS10FoundationE17LocalizationValueV14FormatArgumentV7resolve10attributed4with9includings7CVarArg_p6vararg_AE15_AttributeFixupOSg11attrStrInfotSb_AA6LocaleVxmtAA0M5ScopeRzlFAA0M6ScopesO0A10AttributesV_Tt3B5(void *p_countAndFlagsBits, void *a2, int a3, uint64_t i, uint64_t a5)
{
  v393 = a5;
  v10 = &v411;
  v448 = *MEMORY[0x1E69E9840];
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  *(v11 + 24) = 0;
  *(v11 + 32) = -2;
  outlined init with copy of String.LocalizationValue.FormatArgument.Storage(v5, &v421);
  if (v426 <= 2u)
  {
    if (!v426)
    {
      outlined init with take of Any(&v421, &v411);
      outlined init with copy of Any(&v411, &v435);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8Sendable_pMd, &_ss8Sendable_pMR);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss7CVarArg_pMd, &_ss7CVarArg_pMR);
      swift_dynamicCast();
      getter of attributeFixup #1 in String.LocalizationValue.FormatArgument.resolve<A>(attributed:with:including:)(v11, a3 & 1, a2);
      __swift_destroy_boxed_opaque_existential_1(&v411);
    }

    if (v426 != 1)
    {
      v412[1] = v423;
      v413 = v424;
      v414[0] = *v425;
      v414[1] = *&v425[16];
      v411 = v421;
      v412[0] = v422;
      *&v435 = i;
      *(&v435 + 1) = v393;
      v102 = (v421)(&v435);
      v104 = v103;
      p_countAndFlagsBits[3] = MEMORY[0x1E69E6158];
      p_countAndFlagsBits[4] = lazy protocol witness table accessor for type String and conformance String();
      *p_countAndFlagsBits = v102;
      p_countAndFlagsBits[1] = v104;
      getter of attributeFixup #1 in String.LocalizationValue.FormatArgument.resolve<A>(attributed:with:including:)(v11, a3 & 1, a2);
      outlined destroy of String.LocalizationValue.FormatArgument.Storage.StringFormatWrapper(&v411);
    }

    v12 = v421;
    if (a3)
    {
      v13 = *(&v421 + 1);

      v15 = _sSo18NSAttributedStringC10FoundationE_9includingAbC010AttributedB0V_xmtKcAC14AttributeScopeRzlufCAC0F6ScopesO0C10AttributesV_Tt0t1B5(v14);
      p_countAndFlagsBits[3] = type metadata accessor for NSMorphologyPronoun(0, &lazy cache variable for type metadata for NSAttributedString, off_1E69EE1C0);
      p_countAndFlagsBits[4] = lazy protocol witness table accessor for type NSNumber and conformance NSObject(&lazy protocol witness table cache variable for type NSAttributedString and conformance NSObject, &lazy cache variable for type metadata for NSAttributedString, off_1E69EE1C0);
      *p_countAndFlagsBits = v15;

      *a2 = v12;
      a2[1] = v13;
      *(a2 + 16) = 0;
      return result;
    }

    v110 = *(v421 + 40);
    v411 = *(v421 + 24);
    v412[0] = v110;
    v412[1] = *(v421 + 56);
    lazy protocol witness table accessor for type BigString and conformance BigString();
    lazy protocol witness table accessor for type BigString and conformance BigString();
    swift_unknownObjectRetain();
    v111 = String.init<A>(_:)();
    v113 = v112;
    p_countAndFlagsBits[3] = MEMORY[0x1E69E6158];
    p_countAndFlagsBits[4] = lazy protocol witness table accessor for type String and conformance String();
    *p_countAndFlagsBits = v111;
    p_countAndFlagsBits[1] = v113;
LABEL_120:

    *a2 = 0;
    a2[1] = 0;
    *(a2 + 16) = -1;
    return result;
  }

  v387 = a3;
  v384 = a2;
  v385 = v11;
  v386 = p_countAndFlagsBits;
  v389 = i;
  if (v426 > 4u)
  {
    if (v426 != 5)
    {
      goto LABEL_398;
    }

    v20 = v421;
    v382 = BYTE8(v421);
    v21 = BYTE9(v421);
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    v22 = *(v20 + 16);
    v23 = v393;
    if (!v22)
    {

      v121 = 0;
      *&v395 = MEMORY[0x1E69E7CC0];
      if ((v387 & 1) == 0)
      {
        goto LABEL_129;
      }

      goto LABEL_124;
    }

    v381 = v21;
    v404 = MEMORY[0x1E69E7CC0];
    v24 = &v404;
    v391 = v22;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v22, 0);
    if (!*(v20 + 16))
    {
LABEL_307:
      __break(1u);
LABEL_308:
      __break(1u);
LABEL_309:
      __break(1u);
      goto LABEL_310;
    }

    v25 = 0;
    v26 = 0;
    v24 = v404;
    v392 = v20 + 32;
    v27 = 1;
    v390 = v20;
    while (1)
    {
      *&v395 = v24;
      v28 = v392 + 104 * v25;
      *&v394 = v27;
      v29 = *v28;
      v30 = *(v28 + 32);
      v416[0] = *(v28 + 16);
      v416[1] = v30;
      v415 = v29;
      v31 = *(v28 + 48);
      v32 = *(v28 + 64);
      v33 = *(v28 + 80);
      v420 = *(v28 + 96);
      v418 = v32;
      v419 = v33;
      v417 = v31;
      v430 = *v28;
      v431 = *(v28 + 16);
      v432 = *(v28 + 32);
      v433 = *(v28 + 48);
      v445 = *(v28 + 72);
      v446 = *(v28 + 88);
      outlined init with copy of LocalizedStringResource(&v415, &v411);
      swift_unknownObjectRetain();
      outlined init with copy of LocalizedStringResource(&v415, &v411);
      swift_unknownObjectRelease();
      v435 = v430;
      v436 = v431;
      v437 = v432;
      v441 = v445;
      v438 = v433;
      v439 = i;
      v440 = v23;
      v442 = v446;
      v402 = 1;
      v405 = 0uLL;
      LOWORD(v406) = 256;
      *(&v406 + 1) = 0;
      *&v407 = 0;
      BYTE8(v407) = 0;
      outlined init with copy of String.LocalizationOptions(&v405, &v411);
      outlined init with copy of LocalizedStringResource(&v435, &v411);
      p_countAndFlagsBits = specialized LocalizedStringResource._withExtensionForBundle<A>(_:)(&v435, &v405, &v435);
      v35 = v34;
      outlined destroy of LocalizedStringResource(&v435);
      outlined destroy of String.LocalizationOptions(&v405);
      v399 = v35;
      if (v35)
      {
        v396 = v26;
        outlined destroy of LocalizedStringResource(&v415);
        outlined destroy of String.LocalizationOptions(&v405);
LABEL_106:
        v24 = v395;
        goto LABEL_107;
      }

      v443 = v436;
      v36 = v437;
      v444 = v437;
      v38 = v439;
      v37 = v440;
      v39 = MEMORY[0x1E69E7CC0];
      if (v405)
      {
        v40 = v405;
      }

      else
      {
        v40 = MEMORY[0x1E69E7CC0];
      }

      v388 = *(&v443 + 1);
      v41 = v443;
      v427 = v40;
      swift_unknownObjectRetain_n();
      outlined init with copy of String.LocalizationValue(&v443, &v411);
      v399 = v36;

      v400 = v37;
      v42 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSaySS10FoundationE17LocalizationValueV14FormatArgumentVG_AJs5NeverOTg506_sSS10d3E17ef43V25argumentsWithReplacements_6localeSayAC14gH40VGSays7CVarArg_pGSg_AA6LocaleVtFA2GXEfU_s16IndexingIteratorVySays0tU0_pGGAF0X0VTf1cn_nTf4nng_n(v41, &v427, v38, v37);

      v401 = v38;
      swift_unknownObjectRelease();
      v43 = *(v42 + 16);
      v396 = v26;
      if (v43)
      {
        goto LABEL_24;
      }

      if ((BYTE1(v406) & 1) == 0)
      {
        break;
      }

      swift_unknownObjectRelease();
      outlined destroy of String.LocalizationOptions(&v405);
      outlined destroy of LocalizedStringResource(&v415);

      outlined destroy of String.LocalizationValue(&v443);
      p_countAndFlagsBits = v388;
      i = v389;
      v24 = v395;
      v23 = v393;
      v10 = &v411;
LABEL_107:
      v411 = v430;
      v412[0] = v431;
      v412[1] = v432;
      *&v413 = v433;
      *(&v413 + 1) = i;
      *&v414[0] = v23;
      *(v414 + 8) = v445;
      *(&v414[1] + 8) = v446;
      outlined destroy of LocalizedStringResource(&v411);
      v404 = v24;
      v99 = *(v24 + 16);
      v98 = *(v24 + 24);
      if (v99 >= v98 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v98 > 1), v99 + 1, 1);
        v24 = v404;
      }

      *(v24 + 16) = v99 + 1;
      v100 = (v24 + 16 * v99);
      v101 = v399;
      *(v100 + 4) = p_countAndFlagsBits;
      *(v100 + 5) = v101;
      v25 = v394;
      if (v394 == v391)
      {
        goto LABEL_128;
      }

      v27 = v394 + 1;
      v26 = v396;
      if (v394 >= *(v390 + 16))
      {
        goto LABEL_307;
      }
    }

    p_countAndFlagsBits = v388;
    String._bridgeToObjectiveCImpl()();
    v74 = _CFStringGetFormatSpecifierConfiguration();
    swift_unknownObjectRelease();
    v23 = v393;
    v10 = &v411;
    if (!v74)
    {
      swift_unknownObjectRelease();
      outlined destroy of String.LocalizationOptions(&v405);
      outlined destroy of LocalizedStringResource(&v415);

      outlined destroy of String.LocalizationValue(&v443);
      i = v389;
      goto LABEL_106;
    }

    v43 = *(v42 + 16);
    if (v43)
    {
LABEL_24:
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v43, 0);
      v23 = v39;
      v44 = v42 + 32;
      do
      {
        outlined init with copy of String.LocalizationValue.FormatArgument(v44, &v411);
        _sSS10FoundationE17LocalizationValueV14FormatArgumentV7resolve10attributed4with9includings7CVarArg_p6vararg_AE15_AttributeFixupOSg11attrStrInfotSb_AA6LocaleVxmtAA0M5ScopeRzlFAA0M6ScopesO0A10AttributesV_Tt3B5(&v427, v409, 0, v401, v400);
        outlined destroy of String.LocalizationValue.FormatArgument(&v411);
        outlined consume of String.LocalizationValue.FormatArgument._AttributeFixup?(v409[0], v409[1], v410);
        v403 = v23;
        v46 = *(v23 + 16);
        v45 = *(v23 + 24);
        if (v46 >= v45 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v45 > 1), v46 + 1, 1);
          v23 = v403;
        }

        *(v23 + 16) = v46 + 1;
        outlined init with take of Equatable(&v427, v23 + 40 * v46 + 32);
        v44 += 112;
        --v43;
      }

      while (v43);
    }

    else
    {

      v23 = v39;
    }

    type metadata accessor for __VaListBuilder();
    v47 = swift_allocObject();
    v47[2] = 8;
    v47[3] = 0;
    v48 = v47 + 3;
    v47[4] = 0;
    v47[5] = 0;
    v18 = *(v23 + 16);
    if (v18)
    {
      p_countAndFlagsBits = (v23 + 32);
      outlined init with copy of String.LocalizationOptions(&v405, &v411);
      swift_unknownObjectRetain();

      v49 = 0;
      v397 = (v23 + 32);
      v398 = v23;
      while (1)
      {
        v50 = &p_countAndFlagsBits[5 * v49];
        v10 = v50[4];
        v24 = __swift_project_boxed_opaque_existential_1(v50, v50[3]);
        v51 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
        i = *v48;
        v52 = *(v51 + 16);
        v53 = __OFADD__(*v48, v52);
        v54 = *v48 + v52;
        if (v53)
        {
          goto LABEL_288;
        }

        v24 = v47[4];
        if (v24 >= v54)
        {
          goto LABEL_46;
        }

        if (v24 + 0x4000000000000000 < 0)
        {
          goto LABEL_308;
        }

        v10 = v47[5];
        if (2 * v24 > v54)
        {
          v54 = 2 * v24;
        }

        v47[4] = v54;
        if ((v54 - 0x1000000000000000) >> 61 != 7)
        {
          goto LABEL_309;
        }

        v55 = v18;
        v56 = v51;
        v57 = swift_slowAlloc();
        v58 = v57;
        v47[5] = v57;
        if (v10)
        {
          break;
        }

        v51 = v56;
        v18 = v55;
        p_countAndFlagsBits = v397;
        v23 = v398;
        if (!v58)
        {
LABEL_339:
          __break(1u);
          goto LABEL_340;
        }

LABEL_47:
        v60 = *(v51 + 16);
        if (v60)
        {
          v61 = (v51 + 32);
          v62 = *v48;
          while (1)
          {
            v63 = *v61++;
            v58[v62] = v63;
            v62 = *v48 + 1;
            if (__OFADD__(*v48, 1))
            {
              break;
            }

            *v48 = v62;
            if (!--v60)
            {
              goto LABEL_31;
            }
          }

          __break(1u);
LABEL_128:
          *&v395 = v24;

          v21 = v381;
          v121 = v396;
          p_countAndFlagsBits = v386;
          if ((v387 & 1) == 0)
          {
LABEL_129:
            v396 = v121;
            p_countAndFlagsBits[3] = MEMORY[0x1E69E6158];
            p_countAndFlagsBits[4] = lazy protocol witness table accessor for type String and conformance String();
            ObjectType = swift_getObjectType();
            v129 = (*(v23 + 64))(ObjectType, v23);
            p_countAndFlagsBits = v129;
            i = v130;
            if (one-time initialization token for cache != -1)
            {
              v129 = swift_once();
            }

            v19 = &v380;
            v131 = qword_1EA822138;
            v400 = static ICUListFormatter.cache;
            *&v411 = p_countAndFlagsBits;
            *(&v411 + 1) = i;
            *&v412[0] = v21;
            isUniquelyReferenced_nonNull_native = v382;
            *(v10 + 24) = v382;
            MEMORY[0x1EEE9AC00](v129);
            os_unfair_lock_lock(v131 + 6);
            v126 = v21;
            partial apply for specialized closure #1 in FormatterCache.formatter(for:creator:)((v131 + 16), &v415);
            os_unfair_lock_unlock(v131 + 6);
            v18 = *(v10 + 112);
            if (v18)
            {
              goto LABEL_383;
            }

            v399 = v131;
            v401 = p_countAndFlagsBits;
            v381 = v126;
            type metadata accessor for ICUListFormatter();
            v168 = swift_allocObject();
            *(v10 + 112) = 0;
            if (isUniquelyReferenced_nonNull_native > 2)
            {
              goto LABEL_332;
            }

            v18 = v168;
            v19 = _s10Foundation16ICUListFormatterC9formatter3forAcA15ListFormatStyleVyxq_G_tAA0gH0RzSTR_7ElementQy_0G5InputRtzSS0G6OutputRtzr0_lFZAA06StringH0V_SaySSGTt0B5Tv0_r[isUniquelyReferenced_nonNull_native + 8];
            v131 = i;
            String.utf8CString.getter();
            v169 = ulistfmt_openForType();

            p_countAndFlagsBits = v399;
            if (!v169)
            {
              goto LABEL_395;
            }

            v126 = v400;
            if (v415 > 0)
            {
              goto LABEL_334;
            }

            v18[2] = v169;
            os_unfair_lock_lock(p_countAndFlagsBits + 6);
            v19 = p_countAndFlagsBits[2];
            if (v126 >= v19[2])
            {
            }

            else
            {
              p_countAndFlagsBits[2] = MEMORY[0x1E69E7CC8];
            }

            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *&v415 = p_countAndFlagsBits[2];
            v126 = v415;
            v251 = specialized __RawDictionaryStorage.find<A>(_:)(v401, i, v381, v382);
            v253 = v126[2];
            v254 = (v252 & 1) == 0;
            v53 = __OFADD__(v253, v254);
            v255 = v253 + v254;
            if (v53)
            {
              goto LABEL_336;
            }

            v256 = v252;
            if (v126[3] >= v255)
            {
              if (isUniquelyReferenced_nonNull_native)
              {
                v257 = v126;
                v23 = v382;
                v258 = v401;
                goto LABEL_255;
              }

              v397 = v251;
              __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation16ICUListFormatterC9SignatureVAEGMd, &_ss18_DictionaryStorageCy10Foundation16ICUListFormatterC9SignatureVAEGMR);
              v335 = static _DictionaryStorage.copy(original:)();
              v257 = v335;
              if (v126[2])
              {
                v336 = (v335 + 64);
                v337 = 1 << *(v257 + 32);
                v400 = v126 + 8;
                v338 = (v337 + 63) >> 6;
                if (v257 != v126 || v336 >= &v400[v338])
                {
                  memmove(v336, v400, 8 * v338);
                }

                v339 = 0;
                v257[2] = v126[2];
                v340 = 1 << *(v126 + 32);
                v341 = -1;
                if (v340 < 64)
                {
                  v341 = ~(-1 << v340);
                }

                v398 = v341 & v126[8];
                v342 = (v340 + 63) >> 6;
                if (!v398)
                {
                  goto LABEL_363;
                }

                while (1)
                {
                  v343 = __clz(__rbit64(v398));
                  for (v398 &= v398 - 1; ; v398 = (v345 - 1) & v345)
                  {
                    v346 = v343 | (v339 << 6);
                    v347 = v126[6] + 32 * v346;
                    v348 = *(v347 + 8);
                    v349 = *(v126[7] + 8 * v346);
                    v350 = v257[6] + 32 * v346;
                    v351 = *(v347 + 16);
                    *v350 = *v347;
                    *(v350 + 8) = v348;
                    *(v350 + 16) = v351;
                    *(v257[7] + 8 * v346) = v349;

                    if (v398)
                    {
                      break;
                    }

LABEL_363:
                    v344 = v339;
                    do
                    {
                      v339 = v344 + 1;
                      if (__OFADD__(v344, 1))
                      {
                        goto LABEL_391;
                      }

                      if (v339 >= v342)
                      {
                        goto LABEL_380;
                      }

                      v345 = v400[v339];
                      ++v344;
                    }

                    while (!v345);
                    v343 = __clz(__rbit64(v345));
                  }
                }
              }

LABEL_380:

              v251 = v397;
              v23 = v382;
              v131 = i;
              v258 = v401;
              p_countAndFlagsBits = v399;
              if ((v256 & 1) == 0)
              {
                goto LABEL_381;
              }

LABEL_256:
              *(v257[7] + 8 * v251) = v18;
            }

            else
            {
              specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v255, isUniquelyReferenced_nonNull_native);
              v257 = v415;
              v258 = v401;
              v23 = v382;
              v251 = specialized __RawDictionaryStorage.find<A>(_:)(v401, v131, v381, v382);
              if ((v256 & 1) != (v259 & 1))
              {
                goto LABEL_248;
              }

LABEL_255:
              if (v256)
              {
                goto LABEL_256;
              }

LABEL_381:
              specialized _NativeDictionary._insert(at:key:value:)(v251, v258, v131, v381, v23, v18, v257);
            }

            p_countAndFlagsBits[2] = v257;
            os_unfair_lock_unlock(p_countAndFlagsBits + 6);

LABEL_383:

            v369 = *(v395 + 16);
            *&v411 = MEMORY[0x1E69E7CC0];
            v370 = v395;
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v369, 0);
            v371._rawValue = v411;
            if (v369)
            {
              v372 = (v370 + 40);
              do
              {
                v374 = *(v372 - 1);
                v373 = *v372;
                *&v411 = v371;
                v376 = *(v371._rawValue + 2);
                v375 = *(v371._rawValue + 3);

                if (v376 >= v375 >> 1)
                {
                  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v375 > 1), v376 + 1, 1);
                  v371._rawValue = v411;
                }

                *(v371._rawValue + 2) = v376 + 1;
                v377 = v371._rawValue + 16 * v376;
                *(v377 + 4) = v374;
                *(v377 + 5) = v373;
                v372 += 2;
                --v369;
              }

              while (v369);
            }

            v378 = ICUListFormatter.format(strings:)(v371);

            *v386 = v378;

            result = swift_unknownObjectRelease();
            v379 = v384;
            *v384 = 0;
            v379[1] = 0;
            *(v379 + 16) = -1;
            return result;
          }

LABEL_124:
          v396 = v121;
          v122 = swift_getObjectType();
          v123 = (*(v23 + 64))(v122, v23);
          i = v123;
          p_countAndFlagsBits = v124;
          if (one-time initialization token for cache != -1)
          {
            goto LABEL_330;
          }

          goto LABEL_125;
        }

LABEL_31:

        if (++v49 == v18)
        {
          goto LABEL_57;
        }
      }

      if (v57 != v10 || v57 >= v10 + 8 * i)
      {
        memmove(v57, v10, 8 * i);
      }

      v24 = v47;
      __VaListBuilder.deallocStorage(wordCount:storage:)();
      v51 = v56;
      v18 = v55;
      p_countAndFlagsBits = v397;
      v23 = v398;
LABEL_46:
      v58 = v47[5];
      if (!v58)
      {
        goto LABEL_339;
      }

      goto LABEL_47;
    }

    outlined init with copy of String.LocalizationOptions(&v405, &v411);
    swift_unknownObjectRetain();

LABEL_57:
    v64 = __VaListBuilder.va_list()();
    v65 = String._bridgeToObjectiveCImpl()();
    v66 = swift_getObjectType();
    v67 = (v400[61])(v66);
    v68 = [objc_allocWithZone(_NSStringFormattingOptions) init];
    if (!v68)
    {
      __break(1u);
      goto LABEL_390;
    }

    v69 = v68;
    if (BYTE1(v406))
    {
      [v68 setPluralizationNumber_];
    }

    else
    {
      v70 = *(&v405 + 1);
      v71 = v406;
      v72 = objc_allocWithZone(NSNumber);
      if (v71)
      {
        v73 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v73 = v70;
      }

      v75 = [v72 initWithInteger_];
      [v69 setPluralizationNumber_];
    }

    v76 = [objc_opt_self() _stringWithFormat_locale_options_arguments_];

    swift_unknownObjectRelease();
    isTaggedPointer = _objc_isTaggedPointer(v76);
    v78 = v76;
    v79 = v78;
    v383 = v47;
    if (isTaggedPointer)
    {
      TaggedPointerTag = _objc_getTaggedPointerTag(v78);
      switch(TaggedPointerTag)
      {
        case 0:
          LOWORD(v409[0]) = 0;
          _CFIndirectTaggedPointerStringGetContents();
          v90 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
          i = v389;
          if (!v91)
          {
            [v79 mutableCopy];
            _bridgeAnyObjectToAny(_:)();

            swift_unknownObjectRelease();
            swift_dynamicCast();
            v94 = *(&v427 + 1);
            p_countAndFlagsBits = v427;

            outlined destroy of String.LocalizationOptions(&v405);

            swift_unknownObjectRelease();
            outlined destroy of LocalizedStringResource(&v415);
            swift_unknownObjectRelease();

            outlined destroy of String.LocalizationOptions(&v405);

            outlined destroy of String.LocalizationValue(&v443);
            v399 = v94;
            v10 = &v411;
LABEL_105:
            v23 = v393;
            goto LABEL_106;
          }

          p_countAndFlagsBits = v90;
          v82 = v91;

          v10 = &v411;
LABEL_104:

          outlined destroy of String.LocalizationOptions(&v405);

          swift_unknownObjectRelease();
          outlined destroy of LocalizedStringResource(&v415);
          swift_unknownObjectRelease();

          outlined destroy of String.LocalizationOptions(&v405);

          outlined destroy of String.LocalizationValue(&v443);
          v399 = v82;
          goto LABEL_105;
        case 0x16:
          v87 = [v79 UTF8String];
          i = v389;
          if (!v87)
          {
            goto LABEL_393;
          }

          v88 = String.init(utf8String:)(v87);
          v10 = &v411;
          if (!v89)
          {
            goto LABEL_392;
          }

          p_countAndFlagsBits = v88;
          v82 = v89;

          goto LABEL_103;
        case 2:
          MEMORY[0x1EEE9AC00](TaggedPointerTag);
          p_countAndFlagsBits = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
          v82 = v81;

          i = v389;
          v10 = &v411;
          goto LABEL_104;
      }
    }

    LOBYTE(v427) = 0;
    *&v411 = 0;
    LOBYTE(v409[0]) = 0;
    LOBYTE(v403) = 0;
    IsCF = __CFStringIsCF();
    if (IsCF)
    {
      i = v389;
      v10 = &v411;
      if (!v411)
      {

        p_countAndFlagsBits = 0;
        v82 = 0xE000000000000000;
        goto LABEL_104;
      }

      if (v403 == 1)
      {
        if (v427)
        {
          lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
        }

        else
        {
          lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
        }

        v92 = String.init<A>(_immortalCocoaString:count:encoding:)();
        goto LABEL_102;
      }

      if (v409[0])
      {
        if (v427 != 1)
        {
          IsCF = [v79 lengthOfBytesUsingEncoding_];
        }

        MEMORY[0x1EEE9AC00](IsCF);
        v95 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
        v82 = v96;
        v97 = (v96 >> 56) & 0xF;
        if ((v96 & 0x2000000000000000) == 0)
        {
          v97 = v95 & 0xFFFFFFFFFFFFLL;
        }

        if (v97)
        {
          p_countAndFlagsBits = v95;

          i = v389;
          goto LABEL_104;
        }

        i = v389;
      }
    }

    else
    {
      v84 = v79;
      v85 = String.init(_nativeStorage:)();
      i = v389;
      if (v86)
      {
        p_countAndFlagsBits = v85;
        v82 = v86;

        v10 = &v411;
        goto LABEL_104;
      }

      *&v411 = [v84 length];
      if (!v411)
      {

        p_countAndFlagsBits = 0;
        v82 = 0xE000000000000000;
        v10 = &v411;
        goto LABEL_104;
      }

      v10 = &v411;
    }

    v92 = String.init(_cocoaString:)();
LABEL_102:
    p_countAndFlagsBits = v92;
    v82 = v93;
LABEL_103:

    goto LABEL_104;
  }

  if (v426 != 3)
  {
    v405 = v421;
    v406 = v422;
    v407 = v423;
    v408 = v424;
    v445 = *&v425[8];
    v446 = *&v425[24];
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    if (v387)
    {
      v411 = v405;
      v412[0] = v406;
      v412[1] = v407;
      *(v414 + 8) = v445;
      *&v413 = v408;
      *(&v413 + 1) = i;
      *&v414[0] = v393;
      *(&v414[1] + 8) = v446;
      LOBYTE(v443) = 1;
      v430 = 0uLL;
      LOWORD(v431) = 1;
      *(&v431 + 1) = 0;
      LOWORD(v432) = 256;
      *(&v432 + 1) = 0;
      v433 = 0;
      v434 = 0;
      if (!*(&v446 + 1))
      {
        outlined init with copy of LocalizedStringResource(&v411, &v435);
        outlined init with copy of LocalizedStringResource(&v411, &v435);
        outlined init with copy of AttributedString.LocalizationOptions(&v430, &v435);
        if (one-time initialization token for localizedStringLogger != -1)
        {
          swift_once();
        }

        v132 = type metadata accessor for Logger();
        __swift_project_value_buffer(v132, localizedStringLogger);
        v133 = Logger.logObject.getter();
        v134 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v133, v134))
        {
          v135 = swift_slowAlloc();
          *v135 = 0;
          _os_log_impl(&dword_18075C000, v133, v134, "LocalizedStringResource did not contain a sandbox extension token. Proceeding to lookup localized string without consuming a sandbox extension.", v135, 2u);
          MEMORY[0x1865D2690](v135, -1, -1);
        }

        v399 = 0;
        v401 = 0;
        goto LABEL_178;
      }

      v105 = *&v414[1];
      v106 = *(&v414[0] + 1);
      v107 = swift_getObjectType();
      v108 = *(v105 + 296);
      outlined init with copy of LocalizedStringResource(&v411, &v435);
      outlined init with copy of LocalizedStringResource(&v411, &v435);
      outlined init with copy of AttributedString.LocalizationOptions(&v430, &v435);
      v400 = v106;
      v108(&v435, closure #1 in LocalizedStringResource._withExtensionForBundle<A>(_:), 0, MEMORY[0x1E69E72F0], v107, v105);
      v401 = 0;
      if (!v435)
      {
        goto LABEL_173;
      }

      String.utf8CString.getter();
      v109 = sandbox_extension_consume();

      if (v109 == -1)
      {
        if (one-time initialization token for localizedStringLogger != -1)
        {
          swift_once();
        }

        v212 = type metadata accessor for Logger();
        __swift_project_value_buffer(v212, localizedStringLogger);
        outlined init with copy of LocalizedStringResource(&v411, &v435);
        v213 = Logger.logObject.getter();
        v214 = static os_log_type_t.error.getter();
        outlined destroy of LocalizedStringResource(&v411);
        if (os_log_type_enabled(v213, v214))
        {
          v215 = swift_slowAlloc();
          v216 = swift_slowAlloc();
          *&v435 = v216;
          *v215 = 136315394;
          v217 = (*(v105 + 240))(v107, v105);
          v219 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v217, v218, &v435);

          *(v215 + 4) = v219;
          *(v215 + 12) = 1026;
          *(v215 + 14) = MEMORY[0x1865CA7A0](v220);
          _os_log_impl(&dword_18075C000, v213, v214, "Unable to consume sandbox extension for path '%s' (errno: %{public}d)", v215, 0x12u);
          __swift_destroy_boxed_opaque_existential_1(v216);
          MEMORY[0x1865D2690](v216, -1, -1);
          MEMORY[0x1865D2690](v215, -1, -1);
        }

        v399 = 0;
        LODWORD(v400) = 1;
      }

      else
      {
        v399 = v109;
        LODWORD(v400) = 0;
      }

      p_countAndFlagsBits = v386;
LABEL_226:
      v221 = *(&v414[0] + 1);
      v222 = *&v414[1];
      v223 = objc_allocWithZone(NSBundle);
      v224 = swift_getObjectType();
      v225 = *(v222 + 432);
      swift_unknownObjectRetain_n();
      v226 = v221;
      v227 = v225(v224, v222);
      v228 = [v223 initWithURL_];
      swift_unknownObjectRelease();

      if (!v228)
      {
        swift_unknownObjectRelease();
        v231 = 0;
        v232 = v384;
        goto LABEL_278;
      }

      v230 = *(&v432 + 1);
      v229 = v433;
      v427 = v430;
      v428 = v431;
      *&v429 = v432;
      v398 = v226;
      if (v433)
      {
        outlined init with copy of AttributedString.LocalizationOptions(&v430, &v435);
LABEL_277:
        v395 = v412[0];
        v396 = *(&v411 + 1);
        v277 = v411;
        v397 = v230;
        v415 = v427;
        v416[0] = v428;
        *&v416[1] = v429;
        *(&v416[1] + 1) = v230;
        *&v417 = v229;
        BYTE8(v417) = 1;
        v278 = v412[1];
        v279 = *(&v413 + 1);
        v280 = v413;
        v281 = *&v414[0];
        v282 = v228;
        v283 = v228;
        v284 = v282;
        _sSS10FoundationE17LocalizationValueV7resolve3key7options5table6bundle6locale5scope07performB0AA16AttributedStringVSSSg_AM0B7OptionsVANSo8NSBundleCSgAA6LocaleVxmSbtAA14AttributeScopeRzlFAA0Q6ScopesO0A10AttributesV_Tt5B5(v277, v396, &v415, *(&v278 + 1), v280, v283, v279, v281, 1u, v395, *(&v395 + 1), v278);

        v231 = v435;
        v435 = v427;
        v436 = v428;
        *&v437 = v429;
        *(&v437 + 1) = v230;
        v438 = v229;
        LOBYTE(v439) = 1;
        outlined destroy of AttributedString.LocalizationOptions(&v435);
        swift_unknownObjectRelease();
        v232 = v384;
        p_countAndFlagsBits = v386;
LABEL_278:
        v285 = v393;
        if ((v400 & 1) == 0)
        {
          sandbox_extension_release();
        }

        outlined destroy of AttributedString.LocalizationOptions(&v430);
        outlined destroy of LocalizedStringResource(&v411);
        if (v231)
        {
          outlined destroy of AttributedString.LocalizationOptions(&v430);
          outlined destroy of LocalizedStringResource(&v411);
        }

        else
        {
          v288 = *(&v412[0] + 1);
          v286 = *&v412[0];
          v287 = *&v412[1];
          v289 = *(&v413 + 1);
          v290 = *&v414[0];

          swift_unknownObjectRetain();
          _sSS10FoundationE17LocalizationValueV7resolve3key7options5table6bundle6locale5scope07performB0AA16AttributedStringVSSSg_AM0B7OptionsVANSo8NSBundleCSgAA6LocaleVxmSbtAA14AttributeScopeRzlFAA0Q6ScopesO0A10AttributesV_Tt5B5(0, 0, &v430, 0, 0, 0, v289, v290, 0, v286, v288, v287);
          outlined destroy of LocalizedStringResource(&v411);

          swift_unknownObjectRelease();
          outlined destroy of AttributedString.LocalizationOptions(&v430);
          v231 = v435;
        }

        v292 = _sSo18NSAttributedStringC10FoundationE_9includingAbC010AttributedB0V_xmtKcAC14AttributeScopeRzlufCAC0F6ScopesO0C10AttributesV_Tt0t1B5(v291);
        if (!v401)
        {
          v293 = v292;
          p_countAndFlagsBits[3] = type metadata accessor for NSMorphologyPronoun(0, &lazy cache variable for type metadata for NSAttributedString, off_1E69EE1C0);
          v294 = lazy protocol witness table accessor for type NSNumber and conformance NSObject(&lazy protocol witness table cache variable for type NSAttributedString and conformance NSObject, &lazy cache variable for type metadata for NSAttributedString, off_1E69EE1C0);
          v435 = v405;
          v436 = v406;
          v437 = v407;
          v295 = v446;
          v441 = v445;
          p_countAndFlagsBits[4] = v294;
          *p_countAndFlagsBits = v293;
          *v232 = v231;
          v232[1] = 0;
          *(v232 + 16) = 0;
          v438 = v408;
          v439 = v389;
          v440 = v285;
          v442 = v295;
          v296 = &v435;
          goto LABEL_324;
        }

LABEL_399:
        swift_unexpectedError();
        __break(1u);
        swift_unexpectedError();
        __break(1u);
        goto LABEL_400;
      }

      outlined init with copy of AttributedString.LocalizationOptions(&v430, &v435);
      v233 = v228;
      v234 = [v228 localizations];
      if (!v234)
      {
        v234 = _ContiguousArrayBuffer._asCocoaArray()();
      }

      v235 = objc_opt_self();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
      v236 = swift_allocObject();
      *(v236 + 16) = xmmword_181218E20;
      v237 = *&v414[0];
      v238 = swift_getObjectType();
      *(v236 + 32) = (*(v237 + 64))(v238, v237);
      *(v236 + 40) = v239;
      v240 = [v235 preferredLocalizationsFromArray:v234 forPreferences:_ContiguousArrayBuffer._asCocoaArray()()];

      swift_unknownObjectRelease();
      if (v240)
      {
        type metadata accessor for __SwiftDeferredNSArray();
        if (swift_dynamicCastClass())
        {
        }

        else
        {
          v274 = v240;
        }

        v228 = v233;
        v275 = swift_dynamicCastClass();
        if (!v275)
        {
          swift_unknownObjectRelease();
          [v240 copy];
          v276 = _bridgeCocoaArray<A>(_:)();
          swift_unknownObjectRelease();
          v273 = specialized _arrayForceCast<A, B>(_:)(v276);

          if (!*(v273 + 2))
          {
            goto LABEL_274;
          }

          goto LABEL_276;
        }

        v273 = v275;
      }

      else
      {
        v273 = MEMORY[0x1E69E7CC0];
        v228 = v233;
      }

      if (!*(v273 + 2))
      {
LABEL_274:

        v230 = 0;
        v229 = 0;
        goto LABEL_277;
      }

LABEL_276:
      v230 = *(v273 + 4);
      v229 = *(v273 + 5);

      goto LABEL_277;
    }

    v435 = v405;
    v436 = v406;
    v437 = v407;
    v441 = v445;
    v438 = v408;
    v439 = i;
    v440 = v393;
    v442 = v446;
    LOBYTE(v404) = 1;
    v415 = 0uLL;
    LOWORD(v416[0]) = 256;
    *(&v416[0] + 1) = 0;
    *&v416[1] = 0;
    BYTE8(v416[1]) = 0;
    outlined init with copy of String.LocalizationOptions(&v415, &v411);
    outlined init with copy of LocalizedStringResource(&v435, &v411);
    v397 = specialized LocalizedStringResource._withExtensionForBundle<A>(_:)(&v435, &v415, &v435);
    v119 = v118;
    outlined destroy of LocalizedStringResource(&v435);
    outlined destroy of String.LocalizationOptions(&v415);
    if (v119)
    {
      outlined destroy of String.LocalizationOptions(&v415);
      v120 = v397;
      goto LABEL_323;
    }

    v427 = v436;
    v136 = v437;
    *&v428 = v437;
    v138 = v439;
    v137 = v440;
    v139 = MEMORY[0x1E69E7CC0];
    if (v415)
    {
      v140 = v415;
    }

    else
    {
      v140 = MEMORY[0x1E69E7CC0];
    }

    v397 = *(&v427 + 1);
    v401 = v427;
    v430 = v140;
    swift_unknownObjectRetain_n();
    outlined init with copy of String.LocalizationValue(&v427, &v411);
    v396 = v136;

    v400 = v137;
    v141 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSaySS10FoundationE17LocalizationValueV14FormatArgumentVG_AJs5NeverOTg506_sSS10d3E17ef43V25argumentsWithReplacements_6localeSayAC14gH40VGSays7CVarArg_pGSg_AA6LocaleVtFA2GXEfU_s16IndexingIteratorVySays0tU0_pGGAF0X0VTf1cn_nTf4nng_n(v401, &v430, v138, v137);

    v401 = v138;
    swift_unknownObjectRelease();
    v142 = *(v141 + 16);
    if (v142)
    {
      goto LABEL_142;
    }

    if ((BYTE1(v416[0]) & 1) != 0 || (String._bridgeToObjectiveCImpl()(), v241 = _CFStringGetFormatSpecifierConfiguration(), swift_unknownObjectRelease(), !v241))
    {
      swift_unknownObjectRelease();
      outlined destroy of String.LocalizationOptions(&v415);

      outlined destroy of String.LocalizationValue(&v427);
      p_countAndFlagsBits = v386;
      i = v389;
      v10 = &v411;
      v119 = v396;
      v120 = v397;
      goto LABEL_323;
    }

    v142 = *(v141 + 16);
    if (v142)
    {
LABEL_142:
      *&v395 = 0;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v142, 0);
      v143 = v139;
      v144 = v141 + 32;
      do
      {
        outlined init with copy of String.LocalizationValue.FormatArgument(v144, &v411);
        _sSS10FoundationE17LocalizationValueV14FormatArgumentV7resolve10attributed4with9includings7CVarArg_p6vararg_AE15_AttributeFixupOSg11attrStrInfotSb_AA6LocaleVxmtAA0M5ScopeRzlFAA0M6ScopesO0A10AttributesV_Tt3B5(&v430, &v443, 0, v401, v400);
        outlined consume of String.LocalizationValue.FormatArgument._AttributeFixup?(v443, *(&v443 + 1), v444);
        outlined destroy of String.LocalizationValue.FormatArgument(&v411);
        v409[0] = v143;
        v146 = *(v143 + 16);
        v145 = *(v143 + 24);
        if (v146 >= v145 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v145 > 1), v146 + 1, 1);
          v143 = v409[0];
        }

        *(v143 + 16) = v146 + 1;
        outlined init with take of Equatable(&v430, v143 + 40 * v146 + 32);
        v144 += 112;
        --v142;
      }

      while (v142);
    }

    else
    {
      *&v395 = 0;

      v143 = MEMORY[0x1E69E7CC0];
    }

    type metadata accessor for __VaListBuilder();
    v147 = swift_allocObject();
    *(v147 + 16) = 8;
    *(v147 + 24) = 0;
    p_countAndFlagsBits = (v147 + 24);
    *(v147 + 32) = 0;
    *(v147 + 40) = 0;
    v399 = v147;
    i = *(v143 + 16);
    if (i)
    {
      v398 = v143 + 32;
      outlined init with copy of String.LocalizationOptions(&v415, &v411);
      swift_unknownObjectRetain();

      v10 = 0;
      while (1)
      {
        v24 = __swift_project_boxed_opaque_existential_1((v398 + 40 * v10), *(v398 + 40 * v10 + 24));
        v148 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
        v21 = *p_countAndFlagsBits;
        v149 = *(v148 + 16);
        v53 = __OFADD__(*p_countAndFlagsBits, v149);
        v150 = *p_countAndFlagsBits + v149;
        if (v53)
        {
          goto LABEL_327;
        }

        v151 = v399;
        v152 = *(v399 + 4);
        if (v152 >= v150)
        {
          goto LABEL_165;
        }

        if (v152 + 0x4000000000000000 < 0)
        {
          goto LABEL_328;
        }

        v153 = *(v399 + 5);
        if (2 * v152 > v150)
        {
          v150 = 2 * v152;
        }

        *(v399 + 4) = v150;
        if ((v150 - 0x1000000000000000) >> 61 != 7)
        {
          goto LABEL_329;
        }

        v154 = v148;
        v24 = v151;
        v155 = swift_slowAlloc();
        v156 = v155;
        *(v24 + 40) = v155;
        if (v153)
        {
          break;
        }

        v148 = v154;
        if (!v156)
        {
LABEL_172:
          __break(1u);
LABEL_173:
          if (one-time initialization token for localizedStringLogger != -1)
          {
            swift_once();
          }

          v162 = type metadata accessor for Logger();
          __swift_project_value_buffer(v162, localizedStringLogger);
          v163 = Logger.logObject.getter();
          v164 = static os_log_type_t.debug.getter();
          p_countAndFlagsBits = v386;
          if (os_log_type_enabled(v163, v164))
          {
            v165 = swift_slowAlloc();
            *v165 = 0;
            _os_log_impl(&dword_18075C000, v163, v164, "LocalizedStringResource contained a sandbox extension token but sandbox check passed without consuming the token. Proceeding to lookup localized string without consuming a sandbox extension.", v165, 2u);
            MEMORY[0x1865D2690](v165, -1, -1);
          }

          v399 = 0;
LABEL_178:
          LODWORD(v400) = 1;
          goto LABEL_226;
        }

LABEL_166:
        v158 = *(v148 + 16);
        if (v158)
        {
          v159 = (v148 + 32);
          v160 = *p_countAndFlagsBits;
          while (1)
          {
            v161 = *v159++;
            *&v156[8 * v160] = v161;
            v160 = *p_countAndFlagsBits + 1;
            if (__OFADD__(*p_countAndFlagsBits, 1))
            {
              break;
            }

            *p_countAndFlagsBits = v160;
            if (!--v158)
            {
              goto LABEL_150;
            }
          }

          __break(1u);
LABEL_288:
          __break(1u);
LABEL_289:

LABEL_290:
          v120 = 0;
          v271 = 0xE000000000000000;
LABEL_321:
          a2 = v384;
LABEL_322:

          outlined destroy of String.LocalizationOptions(&v415);

          swift_unknownObjectRelease_n();
          outlined destroy of String.LocalizationOptions(&v415);

          outlined destroy of String.LocalizationValue(&v427);
          v119 = v271;
LABEL_323:
          p_countAndFlagsBits[3] = MEMORY[0x1E69E6158];
          p_countAndFlagsBits[4] = lazy protocol witness table accessor for type String and conformance String();
          *p_countAndFlagsBits = v120;
          p_countAndFlagsBits[1] = v119;
          *a2 = 0;
          a2[1] = 0;
          *(a2 + 16) = -1;
          v411 = v405;
          v412[0] = v406;
          *(v10 + 32) = v407;
          *(v10 + 48) = v408;
          *(v10 + 56) = i;
          *(v10 + 64) = v393;
          v315 = v445;
          *(v10 + 88) = v446;
          *(v10 + 72) = v315;
          v296 = &v411;
LABEL_324:
          outlined destroy of LocalizedStringResource(v296);
        }

LABEL_150:

        if (++v10 == i)
        {
          goto LABEL_258;
        }
      }

      if (v155 != v153 || v155 >= &v153[8 * v21])
      {
        memmove(v155, v153, 8 * v21);
        v24 = v399;
      }

      __VaListBuilder.deallocStorage(wordCount:storage:)();
      v151 = v399;
      v148 = v154;
LABEL_165:
      v156 = *(v151 + 5);
      if (!v156)
      {
        goto LABEL_172;
      }

      goto LABEL_166;
    }

    outlined init with copy of String.LocalizationOptions(&v415, &v411);
    swift_unknownObjectRetain();

LABEL_258:
    v260 = __VaListBuilder.va_list()();
    v261 = objc_opt_self();
    v262 = String._bridgeToObjectiveCImpl()();
    v263 = swift_getObjectType();
    v264 = (v400[61])(v263);
    v10 = &v411;
    v411 = v415;
    v412[0] = v416[0];
    *(v412 + 9) = *(v416 + 9);
    v265 = String.LocalizationOptions._nsOptions.getter();
    v266 = [v261 _stringWithFormat_locale_options_arguments_];

    swift_unknownObjectRelease();
    LODWORD(v261) = _objc_isTaggedPointer(v266);
    v267 = v266;
    v24 = v267;
    i = v389;
    if (!v261)
    {
LABEL_263:
      LOBYTE(v430) = 0;
      *&v411 = 0;
      LOBYTE(v443) = 0;
      LOBYTE(v409[0]) = 0;
      v272 = __CFStringIsCF();
      if (!v272)
      {
        v297 = v24;
        v298 = String.init(_nativeStorage:)();
        p_countAndFlagsBits = v386;
        if (v299)
        {
          v120 = v298;
          v271 = v299;

          goto LABEL_321;
        }

        *&v411 = [v297 length];
        if (!v411)
        {

          goto LABEL_290;
        }

        goto LABEL_318;
      }

      p_countAndFlagsBits = v386;
      if (!v411)
      {
        goto LABEL_289;
      }

      if (LOBYTE(v409[0]) == 1)
      {
        if (v430)
        {
          lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
LABEL_311:
          v308 = String.init<A>(_immortalCocoaString:count:encoding:)();
LABEL_319:
          v120 = v308;
          v271 = v309;
          goto LABEL_320;
        }

LABEL_310:
        lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
        goto LABEL_311;
      }

      if ((v443 & 1) == 0)
      {
LABEL_318:
        v308 = String.init(_cocoaString:)();
        goto LABEL_319;
      }

      if (v430 == 1)
      {
        MEMORY[0x1EEE9AC00](v272);
        v305 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
        v271 = v306;
        v307 = HIBYTE(v306) & 0xF;
        if ((v306 & 0x2000000000000000) == 0)
        {
          v307 = v305 & 0xFFFFFFFFFFFFLL;
        }

        if (v307)
        {
          v120 = v305;

LABEL_320:
          goto LABEL_321;
        }

        goto LABEL_317;
      }

      v311 = [v24 lengthOfBytesUsingEncoding_];
      MEMORY[0x1EEE9AC00](v311);
      v312 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v271 = v313;
      v314 = HIBYTE(v313) & 0xF;
      if ((v313 & 0x2000000000000000) == 0)
      {
        v314 = v312 & 0xFFFFFFFFFFFFLL;
      }

      a2 = v384;
      if (!v314)
      {
LABEL_317:

        goto LABEL_318;
      }

      v120 = v312;
LABEL_294:

      goto LABEL_322;
    }

    v268 = _objc_getTaggedPointerTag(v267);
    if (!v268)
    {
      LOWORD(v443) = 0;
      _CFIndirectTaggedPointerStringGetContents();
      v303 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
      if (!v304)
      {
        [v24 mutableCopy];
        _bridgeAnyObjectToAny(_:)();

        swift_unknownObjectRelease();
        swift_dynamicCast();
        v310 = *(&v430 + 1);
        v120 = v430;

        outlined destroy of String.LocalizationOptions(&v415);

        swift_unknownObjectRelease_n();
        outlined destroy of String.LocalizationOptions(&v415);

        outlined destroy of String.LocalizationValue(&v427);
        v119 = v310;
        a2 = v384;
        p_countAndFlagsBits = v386;
        goto LABEL_323;
      }

      v120 = v303;
      v271 = v304;

LABEL_297:
      a2 = v384;
      p_countAndFlagsBits = v386;
      goto LABEL_322;
    }

    if (v268 != 22)
    {
      if (v268 == 2)
      {
        MEMORY[0x1EEE9AC00](v268);
        v269 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
        v271 = v270;

        v120 = v269;
        goto LABEL_297;
      }

      goto LABEL_263;
    }

    v300 = [v24 UTF8String];
    if (!v300)
    {
      goto LABEL_396;
    }

    v301 = String.init(utf8String:)(v300);
    a2 = v384;
    p_countAndFlagsBits = v386;
    if (v302)
    {
      v120 = v301;
      v271 = v302;
      goto LABEL_294;
    }

LABEL_397:
    __break(1u);
LABEL_398:
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    swift_unexpectedError();
    __break(1u);
    goto LABEL_399;
  }

  v412[1] = v423;
  v413 = v424;
  v414[0] = *v425;
  v414[1] = *&v425[16];
  v411 = v421;
  v412[0] = v422;
  *&v435 = i;
  *(&v435 + 1) = v393;
  (v421)(&v443, &v435);
  if ((v387 & 1) == 0)
  {
    v114 = *(v443 + 40);
    v435 = *(v443 + 24);
    v436 = v114;
    v437 = *(v443 + 56);
    lazy protocol witness table accessor for type BigString and conformance BigString();
    lazy protocol witness table accessor for type BigString and conformance BigString();
    swift_unknownObjectRetain();
    v115 = String.init<A>(_:)();
    v117 = v116;
    p_countAndFlagsBits[3] = MEMORY[0x1E69E6158];
    p_countAndFlagsBits[4] = lazy protocol witness table accessor for type String and conformance String();
    *p_countAndFlagsBits = v115;
    p_countAndFlagsBits[1] = v117;
    outlined destroy of String.LocalizationValue.FormatArgument.Storage.AttributedStringFormatWrapper(&v411);
    goto LABEL_120;
  }

  getter of attributeFixup #1 in String.LocalizationValue.FormatArgument.resolve<A>(attributed:with:including:)(v11, 1, &v435);
  if (v436 == 255)
  {
LABEL_219:
    v209 = v443;

    v211 = _sSo18NSAttributedStringC10FoundationE_9includingAbC010AttributedB0V_xmtKcAC14AttributeScopeRzlufCAC0F6ScopesO0C10AttributesV_Tt0t1B5(v210);
    p_countAndFlagsBits[3] = type metadata accessor for NSMorphologyPronoun(0, &lazy cache variable for type metadata for NSAttributedString, off_1E69EE1C0);
    p_countAndFlagsBits[4] = lazy protocol witness table accessor for type NSNumber and conformance NSObject(&lazy protocol witness table cache variable for type NSAttributedString and conformance NSObject, &lazy cache variable for type metadata for NSAttributedString, off_1E69EE1C0);
    *p_countAndFlagsBits = v211;

    outlined destroy of String.LocalizationValue.FormatArgument.Storage.AttributedStringFormatWrapper(&v411);

    *a2 = v209;
    a2[1] = 0;
    *(a2 + 16) = 0;
    return result;
  }

  if ((v436 & 1) == 0)
  {
    outlined consume of String.LocalizationValue.FormatArgument._AttributeFixup?(v435, *(&v435 + 1), v436);
    goto LABEL_219;
  }

  LODWORD(v393) = v436;
  v17 = v443;
  v18 = &unk_1EA7B2000;
  v19 = &static AttributedString.Guts._nextVersion;
  v400 = *(&v435 + 1);
  v401 = v435;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v170 = *(v17 + 40);
    v415 = *(v17 + 24);
    v416[0] = v170;
    v416[1] = *(v17 + 56);
    v126 = *(v17 + 72);
    isUniquelyReferenced_nonNull_native = *(v17 + 80);
    p_countAndFlagsBits = *(v17 + 88);
    v131 = *(v17 + 96);
    type metadata accessor for AttributedString.Guts();
    i = swift_allocObject();
    v171 = BigString.isEmpty.getter() & 1;
    outlined init with copy of BigString(&v415, &v435);
    v172 = swift_unknownObjectRetain();
    specialized Rope._endPath.getter(v172);
    if (v126)
    {
      v173 = p_countAndFlagsBits == 0;
    }

    else
    {
      v173 = 1;
    }

    v174 = v173;
    if (v174 != v171)
    {
      goto LABEL_337;
    }

    if (one-time initialization token for _nextVersion != -1)
    {
      goto LABEL_338;
    }

    goto LABEL_197;
  }

  for (i = v17; ; *&v443 = i)
  {
    if (v18[147] != -1)
    {
      swift_once();
    }

    *(i + 16) = atomic_fetch_add_explicit(v19, 1uLL, memory_order_relaxed);
    v177 = *(i + 24);
    v178 = *(i + 56);
    v431 = *(i + 40);
    v432 = v178;
    v430 = v177;
    v179 = *(i + 56);
    v180 = *(i + 64);
    v181 = *(i + 24);
    v394 = *(i + 40);
    v395 = v181;
    BigString.startIndex.getter();
    v182 = BigString.endIndex.getter();
    v398 = v183;
    v399 = v182;
    v396 = v185;
    v397 = v184;
    v405 = v395;
    v406 = v394;
    *&v407 = v179;
    *(&v407 + 1) = v180;
    v445 = v430;
    v446 = v431;
    v447 = v432;
    outlined init with copy of Rope<BigString._Chunk>._Node?(&v445, &v435);
    v186 = BigString.UnicodeScalarView.index(roundingDown:)();
    outlined destroy of BigString(&v430);
    v187 = *(i + 40);
    v427 = *(i + 24);
    v428 = v187;
    v429 = *(i + 56);
    swift_unknownObjectRetain();
    v188 = BigString.UnicodeScalarView.index(roundingDown:)();
    swift_unknownObjectRelease();
    v189 = v186 >> 11;
    v10 = v188 >> 11;
    v190 = v401;

    v191 = v400;

    specialized AttributedString._InternalRunsSlice.updateEach(with:)(i, v189, v10, v190, 0);

    if ((specialized AttributedString._AttributeStorage.hasConstrainedAttributes.getter(v190) & 1) == 0)
    {
      v206 = v190;
      v207 = v191;
LABEL_218:
      outlined consume of String.LocalizationValue.FormatArgument._AttributeFixup?(v206, v207, v393);
      a2 = v384;
      p_countAndFlagsBits = v386;
      goto LABEL_219;
    }

    v398 = v189;
    v21 = (v190 + 8);
    v192 = 1 << *(v190 + 32);
    v193 = -1;
    if (v192 < 64)
    {
      v193 = ~(-1 << v192);
    }

    v194 = v193 & v190[8];
    p_countAndFlagsBits = ((v192 + 63) >> 6);

    v195 = 0;
    v399 = MEMORY[0x1E69E7CC0];
    if (!v194)
    {
      goto LABEL_206;
    }

    do
    {
LABEL_204:
      while (1)
      {
        v196 = __clz(__rbit64(v194));
        v194 &= v194 - 1;
        outlined init with copy of AttributedString._AttributeValue(v401[7] + 72 * (v196 | (v195 << 6)), &v435);
        v197 = *(&v437 + 1);
        v198 = v438;
        outlined copy of AttributedString.AttributeRunBoundaries?(*(&v437 + 1), v438);
        outlined destroy of AttributedString._AttributeValue(&v435);
        if (v198 != 1)
        {
          break;
        }

        if (!v194)
        {
          goto LABEL_206;
        }
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v399 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v399 + 2) + 1, 1, v399);
      }

      v201 = *(v399 + 2);
      v200 = *(v399 + 3);
      v202 = (v201 + 1);
      if (v201 >= v200 >> 1)
      {
        v396 = *(v399 + 2);
        v397 = (v201 + 1);
        v205 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v200 > 1), v201 + 1, 1, v399);
        v201 = v396;
        v202 = v397;
        v399 = v205;
      }

      v203 = v399;
      *(v399 + 2) = v202;
      v204 = &v203[16 * v201];
      *(v204 + 4) = v197;
      *(v204 + 5) = v198;
    }

    while (v194);
LABEL_206:
    while (1)
    {
      v199 = v195 + 1;
      if (__OFADD__(v195, 1))
      {
        break;
      }

      if (v199 >= p_countAndFlagsBits)
      {
        v208 = v401;

        AttributedString.Guts.enforceAttributeConstraintsAfterMutation(in:type:constraintsInvolved:)(v398, v10, 0, v399);

        v206 = v208;
        v207 = v400;
        goto LABEL_218;
      }

      v194 = *(v21 + 8 * v199);
      ++v195;
      if (v194)
      {
        v195 = v199;
        goto LABEL_204;
      }
    }

    __break(1u);
LABEL_327:
    __break(1u);
LABEL_328:
    __break(1u);
LABEL_329:
    __break(1u);
LABEL_330:
    v123 = swift_once();
LABEL_125:
    isUniquelyReferenced_nonNull_native = qword_1EA822138;
    v399 = static ICUListFormatter.cache;
    *&v411 = i;
    *(&v411 + 1) = p_countAndFlagsBits;
    *&v412[0] = v21;
    v126 = v382;
    *(v10 + 24) = v382;
    MEMORY[0x1EEE9AC00](v123);
    os_unfair_lock_lock((isUniquelyReferenced_nonNull_native + 24));
    v19 = v21;
    v127 = v396;
    closure #1 in FormatterCache.formatter(for:creator:)specialized partial apply(isUniquelyReferenced_nonNull_native + 16, &v415);
    v401 = v127;
    os_unfair_lock_unlock((isUniquelyReferenced_nonNull_native + 24));
    v18 = *(v10 + 112);
    if (v18)
    {
      goto LABEL_373;
    }

    v131 = v399;
    v397 = isUniquelyReferenced_nonNull_native;
    v398 = i;
    v400 = p_countAndFlagsBits;
    v381 = v19;
    type metadata accessor for ICUListFormatter();
    v166 = swift_allocObject();
    *(v10 + 112) = 0;
    if (v126 > 2)
    {
      __break(1u);
LABEL_332:
      __break(1u);
LABEL_333:
      __break(1u);
LABEL_334:
      __break(1u);
      goto LABEL_335;
    }

    v18 = v166;
    i = v398;
    v126 = String.utf8CString.getter();
    v167 = ulistfmt_openForType();

    v19 = v397;
    if (!v167)
    {
      goto LABEL_394;
    }

    if (v415 > 0)
    {
      goto LABEL_333;
    }

    v18[2] = v167;
    os_unfair_lock_lock(v19 + 6);
    if (v131 >= *(v19[2] + 16))
    {
    }

    else
    {
      v19[2] = MEMORY[0x1E69E7CC8];
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v415 = v19[2];
    p_countAndFlagsBits = v415;
    v51 = specialized __RawDictionaryStorage.find<A>(_:)(i, v400, v381, v382);
    v243 = p_countAndFlagsBits[2];
    v244 = (v242 & 1) == 0;
    v53 = __OFADD__(v243, v244);
    v245 = v243 + v244;
    if (!v53)
    {
      break;
    }

LABEL_335:
    __break(1u);
LABEL_336:
    __break(1u);
LABEL_337:
    __break(1u);
LABEL_338:
    swift_once();
LABEL_197:
    add_explicit = atomic_fetch_add_explicit(v19, 1uLL, memory_order_relaxed);
    v176 = v416[0];
    *(i + 24) = v415;
    *(i + 16) = add_explicit;
    *(i + 40) = v176;
    *(i + 56) = v416[1];
    *(i + 72) = v126;
    *(i + 80) = isUniquelyReferenced_nonNull_native;
    *(i + 88) = p_countAndFlagsBits;
    *(i + 96) = v131;
    *(i + 104) = MEMORY[0x1E69E7CC0];
  }

  LOBYTE(v23) = v242;
  if (p_countAndFlagsBits[3] >= v245)
  {
    goto LABEL_249;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v245, isUniquelyReferenced_nonNull_native);
  v246 = v415;
  v247 = i;
  v248 = v400;
  v249 = v382;
  v51 = specialized __RawDictionaryStorage.find<A>(_:)(v247, v400, v381, v382);
  if ((v23 & 1) == (v250 & 1))
  {
LABEL_251:
    if ((v23 & 1) == 0)
    {
      goto LABEL_371;
    }
  }

  else
  {
LABEL_248:
    v51 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
LABEL_249:
    if (isUniquelyReferenced_nonNull_native)
    {
      v246 = p_countAndFlagsBits;
      v249 = v382;
      v248 = v400;
      goto LABEL_251;
    }

LABEL_340:
    v396 = v51;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation16ICUListFormatterC9SignatureVAEGMd, &_ss18_DictionaryStorageCy10Foundation16ICUListFormatterC9SignatureVAEGMR);
    v316 = static _DictionaryStorage.copy(original:)();
    v246 = v316;
    if (p_countAndFlagsBits[2])
    {
      v317 = (v316 + 64);
      v318 = 1 << *(v246 + 32);
      v399 = (p_countAndFlagsBits + 8);
      v319 = (v318 + 63) >> 6;
      if (v246 != p_countAndFlagsBits || v317 >= &v399[8 * v319])
      {
        memmove(v317, v399, 8 * v319);
      }

      v320 = 0;
      v246[2] = p_countAndFlagsBits[2];
      v321 = 1 << *(p_countAndFlagsBits + 32);
      v322 = p_countAndFlagsBits[8];
      v323 = -1;
      if (v321 < 64)
      {
        v323 = ~(-1 << v321);
      }

      v324 = v323 & v322;
      v325 = (v321 + 63) >> 6;
      if ((v323 & v322) != 0)
      {
        do
        {
          v326 = __clz(__rbit64(v324));
          v324 &= v324 - 1;
LABEL_353:
          v329 = v326 | (v320 << 6);
          v330 = p_countAndFlagsBits[6] + 32 * v329;
          v331 = *(v330 + 8);
          v332 = *(p_countAndFlagsBits[7] + 8 * v329);
          v333 = v246[6] + 32 * v329;
          v334 = *(v330 + 16);
          *v333 = *v330;
          *(v333 + 8) = v331;
          *(v333 + 16) = v334;
          *(v246[7] + 8 * v329) = v332;
        }

        while (v324);
      }

      v327 = v320;
      while (1)
      {
        v320 = v327 + 1;
        if (__OFADD__(v327, 1))
        {
          break;
        }

        if (v320 >= v325)
        {
          goto LABEL_370;
        }

        v328 = *&v399[8 * v320];
        ++v327;
        if (v328)
        {
          v326 = __clz(__rbit64(v328));
          v324 = (v328 - 1) & v328;
          goto LABEL_353;
        }
      }

LABEL_390:
      __break(1u);
LABEL_391:
      __break(1u);
LABEL_392:
      __break(1u);
LABEL_393:
      __break(1u);
LABEL_394:
      __break(1u);
LABEL_395:
      __break(1u);
LABEL_396:
      __break(1u);
      goto LABEL_397;
    }

LABEL_370:

    v51 = v396;
    v19 = v397;
    v249 = v382;
    v248 = v400;
    if ((v23 & 1) == 0)
    {
LABEL_371:
      specialized _NativeDictionary._insert(at:key:value:)(v51, v398, v248, v381, v249, v18, v246);

      goto LABEL_372;
    }
  }

  *(v246[7] + 8 * v51) = v18;

LABEL_372:
  v19[2] = v246;
  os_unfair_lock_unlock(v19 + 6);

LABEL_373:

  v352 = *(v395 + 16);
  *&v411 = MEMORY[0x1E69E7CC0];
  v353 = v395;
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v352, 0);
  v354._rawValue = v411;
  if (v352)
  {
    v355 = (v353 + 40);
    do
    {
      v357 = *(v355 - 1);
      v356 = *v355;
      *&v411 = v354;
      v359 = *(v354._rawValue + 2);
      v358 = *(v354._rawValue + 3);

      if (v359 >= v358 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v358 > 1), v359 + 1, 1);
        v354._rawValue = v411;
      }

      *(v354._rawValue + 2) = v359 + 1;
      v360 = v354._rawValue + 16 * v359;
      *(v360 + 4) = v357;
      *(v360 + 5) = v356;
      v355 += 2;
      --v352;
    }

    while (v352);
  }

  ICUListFormatter.format(strings:)(v354);

  BigString.init(_:)();
  AttributedString.init(_:attributes:)(&v411, MEMORY[0x1E69E7CC8], MEMORY[0x1E69E7CD0], &v415);
  v361 = v415;

  v363 = v401;
  v364 = _sSo18NSAttributedStringC10FoundationE_9includingAbC010AttributedB0V_xmtKcAC14AttributeScopeRzlufCAC0F6ScopesO0C10AttributesV_Tt0t1B5(v362);
  if (!v363)
  {
    v365 = v364;
    v366 = type metadata accessor for NSMorphologyPronoun(0, &lazy cache variable for type metadata for NSAttributedString, off_1E69EE1C0);
    v367 = v386;
    v386[3] = v366;
    v367[4] = lazy protocol witness table accessor for type NSNumber and conformance NSObject(&lazy protocol witness table cache variable for type NSAttributedString and conformance NSObject, &lazy cache variable for type metadata for NSAttributedString, off_1E69EE1C0);
    *v367 = v365;

    result = swift_unknownObjectRelease();
    v368 = v384;
    *v384 = v361;
    v368[1] = 0;
    *(v368 + 16) = 0;
    return result;
  }

LABEL_400:
  result = swift_unexpectedError();
  __break(1u);
  return result;
}