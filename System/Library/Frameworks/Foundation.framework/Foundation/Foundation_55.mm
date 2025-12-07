char *specialized AttributedString._InternalRunsSlice.updateEach(with:)(char *a1, uint64_t a2, uint64_t a3)
{
  return specialized AttributedString._InternalRunsSlice.updateEach(with:)(a1, a2, a3, &one-time initialization token for name, &static AttributeScopes.FoundationAttributes.InflectionAlternativeAttribute.name, qword_1EA7B25D8, one-time initialization function for name);
}

{
  return specialized AttributedString._InternalRunsSlice.updateEach(with:)(a1, a2, a3, &one-time initialization token for name, &static AttributeScopes.FoundationAttributes.MarkdownSourcePositionAttribute.name, &qword_1EA7B25B0, one-time initialization function for name);
}

{
  return specialized AttributedString._InternalRunsSlice.updateEach(with:)(a1, a2, a3, &one-time initialization token for name, &static AttributeScopes.FoundationAttributes.InflectionRuleAttribute.name, &qword_1EA7B2660, one-time initialization function for name);
}

{
  return specialized AttributedString._InternalRunsSlice.updateEach(with:)(a1, a2, a3, &one-time initialization token for name, &static AttributeScopes.FoundationAttributes.AgreementConceptAttribute.name, algn_1EA7B2628, one-time initialization function for name);
}

{
  return specialized AttributedString._InternalRunsSlice.updateEach(with:)(a1, a2, a3, &one-time initialization token for name, &static AttributeScopes.FoundationAttributes.AgreementArgumentAttribute.name, &qword_1EA7B2610, one-time initialization function for name);
}

{
  return specialized AttributedString._InternalRunsSlice.updateEach(with:)(a1, a2, a3, &one-time initialization token for name, &static AttributeScopes.FoundationAttributes.ReferentConceptAttribute.name, &qword_1EA7B2640, one-time initialization function for name);
}

{
  return specialized AttributedString._InternalRunsSlice.updateEach(with:)(a1, a2, a3, &one-time initialization token for name, &static AttributeScopes.FoundationAttributes.LocalizedNumberFormatAttribute.name, &qword_1EA7B24E0, one-time initialization function for name);
}

char *specialized AttributedString._InternalRunsSlice.updateEach(with:)(char *result, uint64_t a2, uint64_t a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t a7)
{
  v8 = (result + 72);
  v7 = *(result + 9);
  if (v7)
  {
    v9 = *(result + 11);
  }

  else
  {
    v9 = 0;
  }

  if (a2 < 0 || (v10 = a2, v9 < a2))
  {
LABEL_358:
    __break(1u);
LABEL_359:
    __break(1u);
    goto LABEL_360;
  }

  v11 = *(result + 10);
  v12 = *(result + 12);
  v242 = result;
  v239 = result + 72;
  if (!v7 || ((v13 = (v7 + 16), v14 = *(v7 + 16), *(v7 + 16)) ? (v15 = *(result + 11) <= a2) : (v15 = 1), v15))
  {
    v16 = swift_unknownObjectRetain();
    result = specialized Rope._endPath.getter(v16);
    v17 = result;
    v18 = 0;
    v19 = 0;
    if (!v7)
    {
      goto LABEL_40;
    }

    goto LABEL_13;
  }

  v243 = *(result + 10);
  v240 = *(result + 12);
  v20 = *(v7 + 18);
  result = swift_unknownObjectRetain_n();
  if (!v20)
  {
    v11 = 0;
    v21 = v10;
    v18 = v7;
    goto LABEL_31;
  }

  v21 = v10;
  v11 = v20;
  v22 = v7;
  do
  {
    v23 = *v13;
    if (*v13)
    {
      v24 = 0;
      v25 = v22 + 5;
      while (1)
      {
        v26 = *v25;
        v25 += 3;
        v27 = v21 - v26;
        if (__OFSUB__(v21, v26))
        {
          goto LABEL_321;
        }

        if (__OFADD__(v27, 1))
        {
          break;
        }

        if (v27 + 1 < 1)
        {
          v23 = v24;
          goto LABEL_17;
        }

        ++v24;
        v21 = v27;
        if (v23 == v24)
        {
          goto LABEL_26;
        }
      }

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
LABEL_328:
      __break(1u);
LABEL_329:
      __break(1u);
LABEL_330:
      __break(1u);
LABEL_331:
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
LABEL_338:
      __break(1u);
LABEL_339:
      __break(1u);
LABEL_340:
      __break(1u);
LABEL_341:
      __break(1u);
LABEL_342:
      __break(1u);
LABEL_343:
      __break(1u);
LABEL_344:
      __break(1u);
LABEL_345:
      __break(1u);
LABEL_346:
      __break(1u);
LABEL_347:
      __break(1u);
LABEL_348:
      __break(1u);
LABEL_349:
      __break(1u);
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
LABEL_355:
      __break(1u);
LABEL_356:
      __break(1u);
LABEL_357:
      __break(1u);
      goto LABEL_358;
    }

    v27 = v21;
LABEL_26:
    if (v27)
    {
      goto LABEL_347;
    }

    v21 = 0;
LABEL_17:
    v11 = (v23 << ((4 * v20 + 8) & 0x3C)) | ((-15 << ((4 * v20 + 8) & 0x3C)) - 1) & v11;
    v18 = v22[3 * v23 + 3];
    swift_unknownObjectRetain();
    result = swift_unknownObjectRelease();
    v13 = v18 + 2;
    LOBYTE(v20) = *(v18 + 18);
    v22 = v18;
  }

  while (v20);
  v14 = *v13;
  if (*v13)
  {
    v10 = a2;
LABEL_31:
    v28 = 0;
    v29 = 3;
    v19 = v21;
    v30 = v14;
    while (1)
    {
      v31 = v18[v29];
      v32 = v19 - v31;
      if (__OFSUB__(v19, v31))
      {
        goto LABEL_344;
      }

      if (__OFADD__(v32, 1))
      {
        goto LABEL_345;
      }

      if (v32 + 1 < 1)
      {
        break;
      }

      ++v28;
      v29 += 3;
      v19 -= v31;
      if (v14 == v28)
      {
        if (!v32)
        {
          goto LABEL_37;
        }

LABEL_320:
        __break(1u);
LABEL_321:
        __break(1u);
        goto LABEL_322;
      }
    }

    v30 = v28;
  }

  else
  {
LABEL_319:
    v30 = 0;
    v10 = a2;
    if (v21)
    {
      goto LABEL_320;
    }

LABEL_37:
    v19 = 0;
  }

  result = swift_unknownObjectRelease();
  v17 = v11 & 0xFFFFFFFFFFFFF0FFLL | (v30 << 8);
  v8 = v239;
  v12 = v240;
  v11 = v243;
  if (v7)
  {
LABEL_13:
    v241 = specialized Rope._Node.distanceFromStart<A>(to:in:)(v12, v17, v18, v7, v11);
    result = swift_unknownObjectRelease();
    goto LABEL_41;
  }

LABEL_40:
  v241 = 0;
LABEL_41:
  v33 = a3;
  if (!__OFSUB__(v10, v19))
  {
    v243 = v10 - v19;
    v34 = v242;
    while (1)
    {
      v35 = *v8;
      v240 = v12;
      if (v10 == v33)
      {
        v36 = v243;
        v231 = v17;
        if (v35)
        {
          v7 = *(v34 + 11);
          if (v7 < v10)
          {
            goto LABEL_346;
          }

          v225 = *(v34 + 12);
          v228 = *(v34 + 10);
          v38 = (v35 + 16);
          v37 = *(v35 + 16);
          v39 = *(v35 + 18);
          if (*(v35 + 16))
          {
            v40 = v7 <= v10;
          }

          else
          {
            v40 = 1;
          }

          if (!v40)
          {
            result = swift_unknownObjectRetain_n();
            if (!v39)
            {
              v44 = 0;
              v11 = v35;
LABEL_74:
              v50 = 0;
              v51 = 24;
              v42 = v10;
              while (1)
              {
                v52 = *(v11 + v51);
                v10 = v42 - v52;
                if (__OFSUB__(v42, v52))
                {
                  goto LABEL_323;
                }

                if (__OFADD__(v10, 1))
                {
                  goto LABEL_324;
                }

                if (v10 + 1 < 1)
                {
                  goto LABEL_82;
                }

                ++v50;
                v51 += 24;
                v42 -= v52;
                if (v37 == v50)
                {
                  v50 = v37;
                  goto LABEL_80;
                }
              }
            }

            v44 = v39;
            v21 = v35;
            do
            {
              v45 = *v38;
              if (*v38)
              {
                v46 = 0;
                v47 = (v21 + 40);
                while (1)
                {
                  v48 = *v47;
                  v47 += 3;
                  v49 = v10 - v48;
                  if (__OFSUB__(v10, v48))
                  {
                    break;
                  }

                  if (__OFADD__(v49, 1))
                  {
                    goto LABEL_314;
                  }

                  if (v49 + 1 < 1)
                  {
                    v45 = v46;
                    goto LABEL_60;
                  }

                  ++v46;
                  v10 = v49;
                  if (v45 == v46)
                  {
                    goto LABEL_69;
                  }
                }

                __break(1u);
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
                goto LABEL_319;
              }

              v49 = v10;
LABEL_69:
              if (v49)
              {
                goto LABEL_325;
              }

              v10 = 0;
LABEL_60:
              v44 = (v45 << ((4 * v39 + 8) & 0x3C)) | ((-15 << ((4 * v39 + 8) & 0x3C)) - 1) & v44;
              v11 = *(v21 + 24 + 24 * v45);
              swift_unknownObjectRetain();
              result = swift_unknownObjectRelease();
              v38 = (v11 + 16);
              LOBYTE(v39) = *(v11 + 18);
              v21 = v11;
            }

            while (v39);
            LODWORD(v37) = *v38;
            if (*v38)
            {
              goto LABEL_74;
            }

            v50 = 0;
LABEL_80:
            if (!v10)
            {
              v42 = 0;
LABEL_82:
              swift_unknownObjectRelease();
              v41 = v44 & 0xFFFFFFFFFFFFF0FFLL | (v50 << 8);
              v10 = a2;
              v34 = v242;
              goto LABEL_83;
            }

            goto LABEL_362;
          }

          v41 = ((-15 << ((4 * v39 + 8) & 0x3C)) - 1) & v39 | (v37 << ((4 * v39 + 8) & 0x3C));
          swift_unknownObjectRetain();
          v42 = 0;
          v11 = 0;
LABEL_83:
          specialized Rope._Node.distanceFromStart<A>(to:in:)(v225, v41, v11, v35, v228);
          result = swift_unknownObjectRelease();
          v8 = v239;
          v12 = v240;
        }

        else
        {
          if (v10 > 0)
          {
            goto LABEL_355;
          }

          v42 = 0;
        }

        v43 = v10 - v42;
        if (__OFSUB__(v10, v42))
        {
          goto LABEL_339;
        }

        v17 = v231;
      }

      else
      {
        v36 = v243;
        if (v35)
        {
          v43 = *(v34 + 11);
        }

        else
        {
          v43 = 0;
        }
      }

      if (v36 >= v43)
      {
        return result;
      }

      if (v12 != *(v34 + 12))
      {
        goto LABEL_328;
      }

      if (v18)
      {
        v53 = &v18[3 * ((v17 >> ((4 * *(v18 + 18) + 8) & 0x3C)) & 0xF)];
        v55 = v53[4];
        v54 = v53[5];
        v56 = v53[3];
        v57 = v36 + v56;
        v58 = __OFADD__(v36, v56);

        if (v58)
        {
          goto LABEL_337;
        }

        *&v256 = v55;
        *(&v256 + 1) = v54;
        v59 = v10;
        v60 = a3;
        if (v36 >= v10)
        {
          goto LABEL_94;
        }
      }

      else
      {
        v90 = *(v34 + 9);
        swift_unknownObjectRetain();
        specialized Rope._Node.subscript.getter(v17, v90);
        v92 = v91;
        v94 = v93;
        result = swift_unknownObjectRelease();
        if (v12 != *(v34 + 12))
        {
          goto LABEL_341;
        }

        v95 = *(v34 + 9);
        swift_unknownObjectRetain();
        v96 = specialized Rope._Node.subscript.getter(v17, v95);
        swift_unknownObjectRelease();

        v57 = v36 + v96;
        if (__OFADD__(v36, v96))
        {
          goto LABEL_342;
        }

        *&v256 = v92;
        *(&v256 + 1) = v94;
        v10 = a2;
        v59 = a2;
        v8 = v239;
        v60 = a3;
        if (v36 >= a2)
        {
LABEL_94:
          if (v36 >= v60)
          {
            v59 = v60;
          }

          else
          {
            v59 = v36;
          }
        }
      }

      if (v57 <= v10)
      {
        v61 = v10;
      }

      else
      {
        v61 = v57;
      }

      if (v57 <= v60)
      {
        v62 = v61;
      }

      else
      {
        v62 = v60;
      }

      if (v59 == v62)
      {
        goto LABEL_330;
      }

      if (v59 == v36 && v62 == v57)
      {
        v63 = v242;
        v64 = v240;
        if (v240 != *(v242 + 12))
        {
          goto LABEL_340;
        }

        if (!*v8)
        {
          goto LABEL_373;
        }

        specialized Rope._Node._prepareModify(at:)(v17, &v257);
        v272 = v258;
        v251 = v257;
        v252 = v258;
        v253 = v259;
        outlined destroy of TermOfAddress?(&v272, &_sSDySS10Foundation16AttributedStringV15_AttributeValueVGMd, &_sSDySS10Foundation16AttributedStringV15_AttributeValueVGMR);
        result = outlined destroy of TermOfAddress?(&v272 + 8, &_sShySSGMd, &_sShySSGMR);
        v252 = MEMORY[0x1E69E7CC8];
        v65 = v240 + 1;
        *(v242 + 12) = v240 + 1;
        if (!*(v242 + 9))
        {
          goto LABEL_374;
        }

        specialized Rope._Node._finalizeModify(_:)(&v246, &v251);

        if (*a4 != -1)
        {
          swift_once();
        }

        v66 = *a5;
        v67 = *a6;
        v68 = specialized __RawDictionaryStorage.find<A>(_:)(*a5, *a6);
        if (v69)
        {
          v70 = v68;
          v71 = v256;
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v72 = v71;
          }

          else
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation16AttributedStringV15_AttributeValueVGMd, &_ss18_DictionaryStorageCySS10Foundation16AttributedStringV15_AttributeValueVGMR);
            v199 = static _DictionaryStorage.copy(original:)();
            v72 = v199;
            if (*(v71 + 16))
            {
              result = (v199 + 64);
              v200 = (v71 + 64);
              v201 = ((1 << *(v72 + 32)) + 63) >> 6;
              if (v72 != v71 || result >= &v200[8 * v201])
              {
                result = memmove(result, v200, 8 * v201);
              }

              v202 = 0;
              *(v72 + 16) = *(v71 + 16);
              v203 = 1 << *(v71 + 32);
              if (v203 < 64)
              {
                v204 = ~(-1 << v203);
              }

              else
              {
                v204 = -1;
              }

              v205 = v204 & *(v71 + 64);
              v206 = (v203 + 63) >> 6;
              v233 = v17;
              v222 = v206;
              if (v205)
              {
                do
                {
                  v207 = __clz(__rbit64(v205));
                  v230 = (v205 - 1) & v205;
LABEL_308:
                  v210 = v207 | (v202 << 6);
                  v211 = 16 * v210;
                  v212 = (*(v71 + 48) + 16 * v210);
                  v227 = *v212;
                  v224 = v212[1];
                  v213 = 72 * v210;
                  outlined init with copy of AttributedString._AttributeValue(*(v71 + 56) + 72 * v210, &v251);
                  v214 = (*(v72 + 48) + v211);
                  *v214 = v227;
                  v214[1] = v224;
                  v215 = *(v72 + 56) + v213;
                  *v215 = v251;
                  v216 = v252;
                  v217 = v253;
                  v218 = v254;
                  *(v215 + 64) = v255;
                  *(v215 + 32) = v217;
                  *(v215 + 48) = v218;
                  *(v215 + 16) = v216;

                  v205 = v230;
                  v17 = v233;
                  v206 = v222;
                }

                while (v230);
              }

              v208 = v202;
              while (1)
              {
                v202 = v208 + 1;
                if (__OFADD__(v208, 1))
                {
                  goto LABEL_372;
                }

                if (v202 >= v206)
                {
                  break;
                }

                v209 = *(v71 + 64 + 8 * v202);
                ++v208;
                if (v209)
                {
                  v207 = __clz(__rbit64(v209));
                  v230 = (v209 - 1) & v209;
                  goto LABEL_308;
                }
              }
            }

            v63 = v242;
          }

          v73 = *(v72 + 56) + 72 * v70;
          v251 = *v73;
          v75 = *(v73 + 32);
          v74 = *(v73 + 48);
          v76 = *(v73 + 64);
          v252 = *(v73 + 16);
          v253 = v75;
          v255 = v76;
          v254 = v74;
          specialized _NativeDictionary._delete(at:)(v70, v72);
          *&v256 = v72;
          v64 = v240;
          v77 = 0uLL;
        }

        else
        {
          v255 = 0;
          v77 = 0uLL;
          v253 = 0u;
          v254 = 0u;
          v251 = 0u;
          v252 = 0u;
        }

        v250 = 0;
        v248 = v77;
        v249 = v77;
        v246 = v77;
        v247 = v77;
        AttributedString._AttributeStorage._attributeModified(_:old:new:)(v66, v67, &v251, &v246);
        outlined destroy of TermOfAddress?(&v246, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd, &_s10Foundation16AttributedStringV15_AttributeValueVSgMR);
        v110 = *(&v252 + 1);
        result = outlined destroy of TermOfAddress?(&v251, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd, &_s10Foundation16AttributedStringV15_AttributeValueVSgMR);
        if (v110)
        {
          if (v65 != v63[12])
          {
            goto LABEL_350;
          }

          if (!*v239)
          {
            goto LABEL_375;
          }

          specialized Rope._Node._prepareModify(at:)(v17, &v260);
          v269 = v261;
          v270 = v262;
          outlined destroy of TermOfAddress?(&v269, &_sSDySS10Foundation16AttributedStringV15_AttributeValueVGMd, &_sSDySS10Foundation16AttributedStringV15_AttributeValueVGMR);
          result = outlined destroy of TermOfAddress?(&v270, &_sShySSGMd, &_sShySSGMR);
          v251 = v260;
          v253 = v263;
          v111 = v256;
          v252 = v256;
          v63[12] = v240 + 2;
          if (!v63[9])
          {
            goto LABEL_376;
          }

          v18 = specialized Rope._Node._finalizeModify(_:)(&v245, &v251);

          v112 = v63[9];
          v113 = v63[12];
          *&v251 = v240 + 2;
          *(&v251 + 1) = v17;
          *&v252 = v18;
          if (v240 + 2 != v113)
          {
            goto LABEL_351;
          }

          v99 = v240 + 2;
          if (v112)
          {
            v114 = ((-15 << ((4 * *(v112 + 18) + 8) & 0x3C)) - 1) & *(v112 + 18) | (*(v112 + 16) << ((4 * *(v112 + 18) + 8) & 0x3C));
            result = swift_unknownObjectRetain();
          }

          else
          {
            v114 = 0;
          }

          if (v17 >= v114)
          {
            goto LABEL_352;
          }

          v117 = (4 * *(v18 + 18) + 8) & 0x3C;
          v118 = ((v17 >> v117) & 0xF) + 1;
          if (v118 >= *(v18 + 8))
          {
            v63 = v242;
            v36 = v243;
            if (specialized Rope._Node.formSuccessor(of:)(&v251, v112))
            {
              result = swift_unknownObjectRelease();
              v119 = *(&v251 + 1);
              v121 = v252;
              v120 = v251;
            }

            else
            {
              v119 = specialized Rope._endPath.getter(v112);
              result = swift_unknownObjectRelease();
              v121 = 0;
              *&v251 = v240 + 2;
              v120 = v240 + 2;
            }
          }

          else
          {
            v119 = (v118 << v117) | ((-15 << v117) - 1) & v17;
            result = swift_unknownObjectRelease();
            v120 = v240 + 2;
            v121 = v18;
            v63 = v242;
            v36 = v243;
          }

          v8 = v239;
          v122 = *v239;
          if (*v239)
          {
            if (v119 >= (((-15 << ((4 * *(v122 + 18) + 8) & 0x3C)) - 1) & *(v122 + 18) | (*(v122 + 16) << ((4 * *(v122 + 18) + 8) & 0x3C))))
            {
              goto LABEL_205;
            }

            if (v120 != v63[12])
            {
              goto LABEL_359;
            }

            if (v121)
            {
              v123 = &v121[3 * ((v119 >> ((4 * *(v121 + 18) + 8) & 0x3C)) & 0xF)];
              v124 = v123[4];
              v125 = v123[5];
            }

            else
            {
              specialized Rope._Node.subscript.getter(v119, v122);
              v124 = v131;
              v125 = v132;
            }

            if ((_sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_10Foundation16AttributedStringV15_AttributeValueVTt1g5(v124, v111) & 1) == 0)
            {

              goto LABEL_204;
            }

            v133 = _sSh2eeoiySbShyxG_ABtFZSS_Tt1g5(v125, *(&v111 + 1));

            if (v133)
            {
              v8 = v239;
              v17 = specialized Rope._remove(at:)(&v251, v99, v17);
              v134 = v63[12];
              if (v17 < specialized Rope._endPath.getter(v63[9]))
              {
                specialized Rope._Node.unmanagedLeaf(at:)(v17, v63[9]);
              }

              v135 = v251;

              if (v134 != v63[12])
              {
                goto LABEL_369;
              }

              if (!*v239)
              {
                goto LABEL_382;
              }

              result = specialized Rope._Node._prepareModify(at:)(v17, v264);
              v251 = v264[0];
              v252 = v264[1];
              v253 = v264[2];
              if (__OFADD__(*(&v264[0] + 1), v135))
              {
                goto LABEL_370;
              }

              *(&v251 + 1) = *(&v264[0] + 1) + v135;
              v99 = v134 + 1;
              v63[12] = v134 + 1;
              if (!v63[9])
              {
                goto LABEL_381;
              }

              v18 = specialized Rope._Node._finalizeModify(_:)(&v245, &v251);

LABEL_204:

LABEL_205:
              v126 = *v8;
              if (*v8)
              {
LABEL_206:
                v126 = *(v126 + 18);
              }
            }

            else
            {
              v8 = v239;
              v126 = *v239;
              if (*v239)
              {
                goto LABEL_206;
              }
            }
          }

          else
          {
            v126 = 0;
          }

          if (v126 < v17)
          {
            v136 = v63[9];
            v137 = v63[10];
            v138 = v63[11];
            v139 = v63[12];
            *&v251 = v99;
            *(&v251 + 1) = v17;
            *&v252 = *(&v111 + 1);
            swift_unknownObjectRetain();
            specialized Rope.formIndex(before:)(&v251, v136, v137, v138, v139);
            swift_unknownObjectRelease();
            specialized Rope.subscript.getter(v251, *(&v251 + 1), v252, v63[9], v63[10], v63[11], v63[12]);
            v141 = v140;
            if (_sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_10Foundation16AttributedStringV15_AttributeValueVTt1g5(v142, v111))
            {
              v143 = _sSh2eeoiySbShyxG_ABtFZSS_Tt1g5(v141, *(&v111 + 1));

              v8 = v239;
              if (v143)
              {
                v144 = specialized Rope._remove(at:)(&v251, v99, v17);
                v145 = v63[12];
                if (v144 >= specialized Rope._endPath.getter(v63[9]))
                {
                  v146 = 0;
                }

                else
                {
                  v146 = specialized Rope._Node.unmanagedLeaf(at:)(v144, v63[9]);
                }

                v147 = v63;
                *&v246 = v145;
                *(&v246 + 1) = v144;
                *&v247 = v146;
                v148 = v251;

                v149 = v147[9];
                v150 = v147[10];
                v151 = v147[11];
                v152 = v147[12];
                swift_unknownObjectRetain();
                specialized Rope.formIndex(before:)(&v246, v149, v150, v151, v152);
                result = swift_unknownObjectRelease();
                v153 = v246;
                if (v246 != v147[12])
                {
                  goto LABEL_364;
                }

                if (!*v239)
                {
                  goto LABEL_379;
                }

                v17 = *(&v246 + 1);
                result = specialized Rope._Node._prepareModify(at:)(*(&v246 + 1), v265);
                v251 = v265[0];
                v252 = v265[1];
                v253 = v265[2];
                v130 = __OFSUB__(v36, *(&v265[0] + 1));
                v36 -= *(&v265[0] + 1);
                if (v130)
                {
                  goto LABEL_365;
                }

                if (__OFADD__(*(&v265[0] + 1), v148))
                {
                  goto LABEL_366;
                }

                *(&v251 + 1) = *(&v265[0] + 1) + v148;
                v99 = v153 + 1;
                v63 = v242;
                *(v242 + 12) = v153 + 1;
                if (!*(v242 + 9))
                {
                  goto LABEL_380;
                }

                v18 = specialized Rope._Node._finalizeModify(_:)(&v245, &v251);

                v130 = __OFSUB__(v241--, 1);
                if (v130)
                {
                  goto LABEL_367;
                }
              }
            }

            else
            {

              v8 = v239;
            }
          }

          goto LABEL_222;
        }

        if (v65 != v63[12])
        {
          goto LABEL_356;
        }

        v8 = v239;
        if (!*v239)
        {
          goto LABEL_378;
        }

        specialized Rope._Node._prepareModify(at:)(v17, &v266);
        v271 = v267;
        v251 = v266;
        v252 = v267;
        v253 = v268;
        v115 = v256;

        outlined destroy of TermOfAddress?(&v271, &_sSDySS10Foundation16AttributedStringV15_AttributeValueVGMd, &_sSDySS10Foundation16AttributedStringV15_AttributeValueVGMR);
        result = outlined destroy of TermOfAddress?(&v271 + 8, &_sShySSGMd, &_sShySSGMR);
        v252 = v115;
        v99 = v64 + 2;
        v63[12] = v99;
        if (!v63[9])
        {
          goto LABEL_377;
        }

        v18 = specialized Rope._Node._finalizeModify(_:)(&v246, &v251);
      }

      else
      {
        if (*a4 != -1)
        {
          swift_once();
        }

        v78 = *a5;
        v79 = *a6;
        v80 = specialized __RawDictionaryStorage.find<A>(_:)(*a5, *a6);
        if (v81)
        {
          v82 = v80;
          v83 = v256;
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v84 = v83;
          }

          else
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation16AttributedStringV15_AttributeValueVGMd, &_ss18_DictionaryStorageCySS10Foundation16AttributedStringV15_AttributeValueVGMR);
            v180 = static _DictionaryStorage.copy(original:)();
            v84 = v180;
            v244 = v83;
            if (*(v83 + 16))
            {
              result = (v180 + 64);
              v181 = (v83 + 64);
              v182 = ((1 << *(v84 + 32)) + 63) >> 6;
              v219 = v83 + 64;
              if (v84 != v83 || result >= &v181[8 * v182])
              {
                result = memmove(result, v181, 8 * v182);
              }

              v183 = 0;
              *(v84 + 16) = *(v244 + 16);
              v184 = 1 << *(v244 + 32);
              if (v184 < 64)
              {
                v185 = ~(-1 << v184);
              }

              else
              {
                v185 = -1;
              }

              v186 = v185 & *(v244 + 64);
              v187 = (v184 + 63) >> 6;
              v232 = v17;
              v220 = v187;
              if (v186)
              {
                do
                {
                  v188 = __clz(__rbit64(v186));
                  v229 = (v186 - 1) & v186;
LABEL_292:
                  v191 = v188 | (v183 << 6);
                  v221 = 16 * v191;
                  v192 = (*(v244 + 48) + 16 * v191);
                  v226 = *v192;
                  v223 = v192[1];
                  v193 = 72 * v191;
                  outlined init with copy of AttributedString._AttributeValue(*(v244 + 56) + 72 * v191, &v251);
                  v194 = (*(v84 + 48) + v221);
                  *v194 = v226;
                  v194[1] = v223;
                  v195 = *(v84 + 56) + v193;
                  *v195 = v251;
                  v196 = v252;
                  v197 = v253;
                  v198 = v254;
                  *(v195 + 64) = v255;
                  *(v195 + 32) = v197;
                  *(v195 + 48) = v198;
                  *(v195 + 16) = v196;

                  v186 = v229;
                  v17 = v232;
                  v187 = v220;
                }

                while (v229);
              }

              v189 = v183;
              while (1)
              {
                v183 = v189 + 1;
                if (__OFADD__(v189, 1))
                {
                  goto LABEL_371;
                }

                if (v183 >= v187)
                {
                  break;
                }

                v190 = *(v219 + 8 * v183);
                ++v189;
                if (v190)
                {
                  v188 = __clz(__rbit64(v190));
                  v229 = (v190 - 1) & v190;
                  goto LABEL_292;
                }
              }
            }
          }

          v85 = *(v84 + 56) + 72 * v82;
          v251 = *v85;
          v87 = *(v85 + 32);
          v86 = *(v85 + 48);
          v88 = *(v85 + 64);
          v252 = *(v85 + 16);
          v253 = v87;
          v255 = v88;
          v254 = v86;
          specialized _NativeDictionary._delete(at:)(v82, v84);
          *&v256 = v84;
          v63 = v242;
          v89 = 0uLL;
        }

        else
        {
          v255 = 0;
          v89 = 0uLL;
          v253 = 0u;
          v254 = 0u;
          v251 = 0u;
          v252 = 0u;
          v63 = v242;
        }

        v250 = 0;
        v248 = v89;
        v249 = v89;
        v246 = v89;
        v247 = v89;
        AttributedString._AttributeStorage._attributeModified(_:old:new:)(v78, v79, &v251, &v246);
        outlined destroy of TermOfAddress?(&v246, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd, &_s10Foundation16AttributedStringV15_AttributeValueVSgMR);
        v97 = *(&v252 + 1);
        result = outlined destroy of TermOfAddress?(&v251, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd, &_s10Foundation16AttributedStringV15_AttributeValueVSgMR);
        if (v97)
        {
          v8 = v239;
          if (__OFSUB__(v62, v59))
          {
            goto LABEL_348;
          }

          result = specialized AttributedString._InternalRuns.replaceUTF8Subrange<A>(_:with:)(v59, v62, v62 - v59, v256, *(&v256 + 1));
          v11 = v63[9];
          v7 = v63[11];
          if (v11)
          {
            v98 = v63[11];
          }

          else
          {
            v98 = 0;
          }

          if (v36 < 0 || v98 < v36)
          {
            goto LABEL_349;
          }

          v99 = v63[12];
          if (v11)
          {
            v100 = (v11 + 16);
            v101 = *(v11 + 16);
            v102 = *(v11 + 18);
            v243 = v63[10];
            if (*(v11 + 16) && v36 < v7)
            {
              v240 = v63[12];
              result = swift_unknownObjectRetain_n();
              if (!v102)
              {
                v103 = 0;
                v21 = v36;
                v18 = v11;
LABEL_181:
                v127 = 0;
                v128 = 3;
                v116 = v21;
                while (1)
                {
                  v129 = v18[v128];
                  v21 = v116 - v129;
                  if (__OFSUB__(v116, v129))
                  {
                    goto LABEL_326;
                  }

                  if (__OFADD__(v21, 1))
                  {
                    goto LABEL_327;
                  }

                  if (v21 + 1 < 1)
                  {
                    goto LABEL_189;
                  }

                  ++v127;
                  v128 += 3;
                  v116 -= v129;
                  if (v101 == v127)
                  {
                    v127 = v101;
                    goto LABEL_187;
                  }
                }
              }

              v21 = v36;
              v103 = v102;
              v104 = v11;
              do
              {
                v105 = *v100;
                if (*v100)
                {
                  v106 = 0;
                  v107 = v104 + 5;
                  while (1)
                  {
                    v108 = *v107;
                    v107 += 3;
                    v109 = v21 - v108;
                    if (__OFSUB__(v21, v108))
                    {
                      goto LABEL_315;
                    }

                    if (__OFADD__(v109, 1))
                    {
                      goto LABEL_316;
                    }

                    if (v109 + 1 < 1)
                    {
                      v105 = v106;
                      goto LABEL_139;
                    }

                    ++v106;
                    v21 = v109;
                    if (v105 == v106)
                    {
                      goto LABEL_148;
                    }
                  }
                }

                v109 = v21;
LABEL_148:
                if (v109)
                {
                  goto LABEL_329;
                }

                v21 = 0;
LABEL_139:
                v103 = (v105 << ((4 * v102 + 8) & 0x3C)) | ((-15 << ((4 * v102 + 8) & 0x3C)) - 1) & v103;
                v18 = v104[3 * v105 + 3];
                swift_unknownObjectRetain();
                result = swift_unknownObjectRelease();
                v100 = v18 + 2;
                LOBYTE(v102) = *(v18 + 18);
                v104 = v18;
              }

              while (v102);
              LODWORD(v101) = *v100;
              if (*v100)
              {
                goto LABEL_181;
              }

              v127 = 0;
LABEL_187:
              if (!v21)
              {
                v116 = 0;
LABEL_189:
                swift_unknownObjectRelease();
                v17 = v103 & 0xFFFFFFFFFFFFF0FFLL | (v127 << 8);
                v8 = v239;
                v99 = v240;
                goto LABEL_190;
              }

              goto LABEL_363;
            }

            v17 = ((-15 << ((4 * v102 + 8) & 0x3C)) - 1) & v102 | (v101 << ((4 * v102 + 8) & 0x3C));
            swift_unknownObjectRetain();
            v116 = 0;
            v18 = 0;
LABEL_190:
            v241 = specialized Rope._Node.distanceFromStart<A>(to:in:)(v99, v17, v18, v11, v243);
            result = swift_unknownObjectRelease();
          }

          else
          {
            v116 = 0;
            v18 = 0;
            v17 = 0;
            v241 = 0;
          }

          v130 = __OFSUB__(v36, v116);
          v36 -= v116;
          if (v130)
          {
            goto LABEL_353;
          }

          v63 = v242;
        }

        else
        {
          v8 = v239;
          v99 = v240;
        }
      }

LABEL_222:

      v154 = v63[9];
      v11 = v63[11];
      v155 = v63[12];
      *&v251 = v99;
      *(&v251 + 1) = v17;
      *&v252 = v18;
      if (__OFADD__(v241, 1))
      {
        goto LABEL_332;
      }

      if (v99 != v155)
      {
        goto LABEL_333;
      }

      if (v18)
      {
        v156 = v18[3 * ((v17 >> ((4 * *(v18 + 18) + 8) & 0x3C)) & 0xF) + 3];
        v130 = __OFADD__(v36, v156);
        v157 = v36 + v156;
        if (v130)
        {
          goto LABEL_338;
        }

        v243 = v157;
        if (!v154)
        {
          goto LABEL_331;
        }

        v158 = v99;
        result = swift_unknownObjectRetain();
      }

      else
      {
        v158 = v99;
        swift_unknownObjectRetain();
        v159 = specialized Rope._Node.subscript.getter(v17, v154);

        v243 = v36 + v159;
        if (__OFADD__(v36, v159))
        {
          goto LABEL_343;
        }

        v8 = v239;
        if (!v154)
        {
          goto LABEL_331;
        }
      }

      if (v17 >= (((-15 << ((4 * *(v154 + 18) + 8) & 0x3C)) - 1) & *(v154 + 18) | (*(v154 + 16) << ((4 * *(v154 + 18) + 8) & 0x3C))))
      {
        goto LABEL_331;
      }

      ++v241;
      if (v18 && (v160 = (4 * *(v18 + 18) + 8) & 0x3C, v161 = ((v17 >> v160) & 0xF) + 1, v161 < *(v18 + 8)))
      {
        result = swift_unknownObjectRelease();
        v17 = (v161 << v160) | ((-15 << v160) - 1) & v17;
      }

      else if (specialized Rope._Node.formSuccessor(of:)(&v251, v154))
      {
        result = swift_unknownObjectRelease();
        v17 = *(&v251 + 1);
      }

      else
      {
        v162 = *(v154 + 18);
        v163 = *(v154 + 16);
        result = swift_unknownObjectRelease();
        v17 = ((-15 << ((4 * v162 + 8) & 0x3C)) - 1) & v162 | (v163 << ((4 * v162 + 8) & 0x3C));
        *&v251 = v158;
        *(&v251 + 1) = v17;
        *&v252 = 0;
      }

      v34 = v242;
      v12 = v251;
      v18 = v252;
      v10 = a2;
      v33 = a3;
      if (v243 >= a3)
      {
        v164 = *v8;
        if (a2 == a3)
        {
          v12 = *(v242 + 12);
          if (v164)
          {
            v7 = *(v242 + 11);
            if (v7 < a2)
            {
              goto LABEL_357;
            }

            v11 = *(v242 + 10);
            v166 = (v164 + 16);
            v165 = *(v164 + 16);
            v167 = *(v164 + 18);
            if (*(v164 + 16) && v7 > a2)
            {
              v240 = *(v242 + 12);
              result = swift_unknownObjectRetain_n();
              if (!v167)
              {
                v168 = 0;
                v21 = a2;
                v18 = v164;
LABEL_265:
                v177 = 0;
                v178 = 3;
                v175 = v21;
                v176 = a3;
                while (1)
                {
                  v179 = v18[v178];
                  v21 = v175 - v179;
                  if (__OFSUB__(v175, v179))
                  {
                    goto LABEL_334;
                  }

                  if (__OFADD__(v21, 1))
                  {
                    goto LABEL_335;
                  }

                  if (v21 + 1 < 1)
                  {
                    goto LABEL_273;
                  }

                  ++v177;
                  v178 += 3;
                  v175 -= v179;
                  if (v165 == v177)
                  {
                    v177 = v165;
                    goto LABEL_271;
                  }
                }
              }

              v21 = a2;
              v168 = v167;
              v169 = v164;
              do
              {
                v170 = *v166;
                if (*v166)
                {
                  v171 = 0;
                  v172 = v169 + 5;
                  while (1)
                  {
                    v173 = *v172;
                    v172 += 3;
                    v174 = v21 - v173;
                    if (__OFSUB__(v21, v173))
                    {
                      goto LABEL_317;
                    }

                    if (__OFADD__(v174, 1))
                    {
                      goto LABEL_318;
                    }

                    if (v174 + 1 < 1)
                    {
                      v170 = v171;
                      goto LABEL_246;
                    }

                    ++v171;
                    v21 = v174;
                    if (v170 == v171)
                    {
                      goto LABEL_255;
                    }
                  }
                }

                v174 = v21;
LABEL_255:
                if (v174)
                {
                  goto LABEL_336;
                }

                v21 = 0;
LABEL_246:
                v168 = (v170 << ((4 * v167 + 8) & 0x3C)) | ((-15 << ((4 * v167 + 8) & 0x3C)) - 1) & v168;
                v18 = v169[3 * v170 + 3];
                swift_unknownObjectRetain();
                result = swift_unknownObjectRelease();
                v166 = v18 + 2;
                LOBYTE(v167) = *(v18 + 18);
                v169 = v18;
              }

              while (v167);
              LODWORD(v165) = *v166;
              if (*v166)
              {
                goto LABEL_265;
              }

              v177 = 0;
              v176 = a3;
LABEL_271:
              if (!v21)
              {
                v175 = 0;
LABEL_273:
                swift_unknownObjectRelease();
                v17 = v168 & 0xFFFFFFFFFFFFF0FFLL | (v177 << 8);
                v8 = v239;
                v12 = v240;
                goto LABEL_274;
              }

              goto LABEL_368;
            }

            v17 = ((-15 << ((4 * v167 + 8) & 0x3C)) - 1) & v167 | (v165 << ((4 * v167 + 8) & 0x3C));
            swift_unknownObjectRetain();
            v175 = 0;
            v18 = 0;
            v176 = a3;
LABEL_274:
            v241 = specialized Rope._Node.distanceFromStart<A>(to:in:)(v12, v17, v18, v164, v11);
            result = swift_unknownObjectRelease();
            v10 = a2;
            v33 = v176;
          }

          else
          {
            if (a2 > 0)
            {
              goto LABEL_361;
            }

            v175 = 0;
            v18 = 0;
            v17 = 0;
            v241 = 0;
          }

          v130 = __OFSUB__(v10, v175);
          v243 = v10 - v175;
          v34 = v242;
          if (v130)
          {
            goto LABEL_354;
          }
        }

        else
        {
          v243 = 0;
          v241 = 0;
          v18 = 0;
          v17 = 0;
          v12 = *(v242 + 12);
          if (v164)
          {
            v18 = 0;
            v243 = *(v242 + 11);
            v241 = *(v242 + 10);
            v17 = ((-15 << ((4 * *(v164 + 18) + 8) & 0x3C)) - 1) & *(v164 + 18) | (*(v164 + 16) << ((4 * *(v164 + 18) + 8) & 0x3C));
          }
        }
      }
    }
  }

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
  __break(1u);
LABEL_371:
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
LABEL_381:
  __break(1u);
LABEL_382:
  __break(1u);
  return result;
}

uint64_t (*AttributedString._InternalRunsSlice.updateEach(when:with:)(uint64_t (*result)(uint64_t, uint64_t), uint64_t a2, uint64_t (*a3)(uint64_t *, uint64_t, uint64_t), uint64_t a4, void *a5, uint64_t a6, uint64_t a7))(uint64_t, uint64_t)
{
  v104 = result;
  v7 = a5[9];
  if (v7)
  {
    v8 = a5[11];
  }

  else
  {
    v8 = 0;
  }

  if (a6 < 0)
  {
    goto LABEL_180;
  }

  v9 = a6;
  if (v8 < a6)
  {
    goto LABEL_180;
  }

  v10 = a5;
  v11 = a5[10];
  v103 = a5[12];
  if (v7)
  {
    v13 = (v7 + 16);
    LODWORD(v12) = *(v7 + 16);
    if (a5[11] > a6 && v12 != 0)
    {
      v20 = *(v7 + 18);
      result = swift_unknownObjectRetain_n();
      if (v20)
      {
        v108 = v11;
        v21 = a6;
        v22 = v20;
        v23 = v7;
        do
        {
          v24 = *v13;
          if (*v13)
          {
            v25 = 0;
            v26 = (v23 + 40);
            while (1)
            {
              v27 = *v26;
              v26 += 3;
              v28 = v21 - v27;
              if (__OFSUB__(v21, v27))
              {
                goto LABEL_158;
              }

              if (__OFADD__(v28, 1))
              {
                break;
              }

              if (v28 + 1 < 1)
              {
                v24 = v25;
                goto LABEL_17;
              }

              ++v25;
              v21 = v28;
              if (v24 == v25)
              {
                goto LABEL_26;
              }
            }

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
LABEL_169:
            __break(1u);
LABEL_170:
            __break(1u);
LABEL_171:
            __break(1u);
LABEL_172:
            __break(1u);
LABEL_173:
            __break(1u);
LABEL_174:
            __break(1u);
LABEL_175:
            __break(1u);
LABEL_176:
            __break(1u);
LABEL_177:
            __break(1u);
LABEL_178:
            __break(1u);
            goto LABEL_179;
          }

          v28 = v21;
LABEL_26:
          if (v28)
          {
            goto LABEL_175;
          }

          v21 = 0;
LABEL_17:
          v22 = (v24 << ((4 * v20 + 8) & 0x3C)) | ((-15 << ((4 * v20 + 8) & 0x3C)) - 1) & v22;
          v17 = *(v23 + 24 + 24 * v24);
          swift_unknownObjectRetain();
          result = swift_unknownObjectRelease();
          v13 = (v17 + 16);
          LOBYTE(v20) = *(v17 + 18);
          v23 = v17;
        }

        while (v20);
        LODWORD(v12) = *v13;
        if (!*v13)
        {
LABEL_156:
          v12 = 0;
          v9 = a6;
          v11 = v108;
          if (v21)
          {
            goto LABEL_157;
          }

LABEL_37:
          v18 = 0;
          goto LABEL_39;
        }

        v9 = a6;
      }

      else
      {
        v22 = 0;
        v9 = a6;
        v21 = a6;
        v17 = v7;
      }

      v29 = 0;
      v30 = 24;
      v18 = v21;
      v12 = v12;
      while (1)
      {
        v31 = *(v17 + v30);
        v32 = v18 - v31;
        if (__OFSUB__(v18, v31))
        {
          goto LABEL_173;
        }

        if (__OFADD__(v32, 1))
        {
          goto LABEL_174;
        }

        if (v32 + 1 < 1)
        {
          break;
        }

        ++v29;
        v30 += 24;
        v18 -= v31;
        if (v12 == v29)
        {
          if (!v32)
          {
            goto LABEL_37;
          }

LABEL_157:
          __break(1u);
LABEL_158:
          __break(1u);
          goto LABEL_159;
        }
      }

      v12 = v29;
LABEL_39:
      result = swift_unknownObjectRelease();
      v16 = v22 & 0xFFFFFFFFFFFFF0FFLL | (v12 << 8);
      v10 = a5;
      if (!v7)
      {
        goto LABEL_40;
      }

      goto LABEL_13;
    }
  }

  v15 = swift_unknownObjectRetain();
  result = specialized Rope._endPath.getter(v15);
  v16 = result;
  v17 = 0;
  v18 = 0;
  if (!v7)
  {
LABEL_40:
    v19 = v16;
    v108 = 0;
    goto LABEL_41;
  }

LABEL_13:
  v19 = v16;
  v108 = specialized Rope._Node.distanceFromStart<A>(to:in:)(v103, v16, v17, v7, v11);
  result = swift_unknownObjectRelease();
LABEL_41:
  v33 = a7;
  v34 = v9 - v18;
  if (__OFSUB__(v9, v18))
  {
    goto LABEL_181;
  }

  v22 = v103;
  v112 = v103;
  v113 = v19;
  for (i = v19; ; v113 = i)
  {
    v114 = v17;
    v115 = v108;
    v116 = v34;
    v36 = v10[9];
    if (v9 != v33)
    {
      if (v36)
      {
        v45 = v10[11];
      }

      else
      {
        v45 = 0;
      }

      goto LABEL_90;
    }

    if (!v36)
    {
      if (v9 > 0)
      {
        goto LABEL_176;
      }

      v44 = 0;
      goto LABEL_88;
    }

    v37 = v10[11];
    if (v37 < v9)
    {
      goto LABEL_172;
    }

    v102 = i;
    v103 = v22;
    v38 = v10[10];
    v101 = v10[12];
    v39 = v9;
    v41 = (v36 + 16);
    v40 = *(v36 + 16);
    v21 = *(v36 + 18);
    if (*(v36 + 16) && v37 > v39)
    {
      break;
    }

    v43 = ((-15 << ((4 * v21 + 8) & 0x3C)) - 1) & v21 | (v40 << ((4 * v21 + 8) & 0x3C));
    swift_unknownObjectRetain();
    v44 = 0;
    v22 = 0;
LABEL_87:
    specialized Rope._Node.distanceFromStart<A>(to:in:)(v101, v43, v22, v36, v38);
    result = swift_unknownObjectRelease();
    v10 = a5;
    i = v102;
    v22 = v103;
LABEL_88:
    v45 = a6 - v44;
    if (__OFSUB__(a6, v44))
    {
      goto LABEL_170;
    }

    v9 = a6;
LABEL_90:
    if (v34 >= v45)
    {
      return result;
    }

    if (v22 != v10[12])
    {
      goto LABEL_163;
    }

    v56 = v9;
    v57 = v22;
    if (v17)
    {
      v58 = i;
      v59 = v17 + 24 * ((i >> ((4 * *(v17 + 18) + 8) & 0x3C)) & 0xF);
      v60 = *(v59 + 32);
      v61 = *(v59 + 40);
    }

    else
    {
      v62 = v10[9];
      swift_unknownObjectRetain();
      v58 = i;
      specialized Rope._Node.subscript.getter(i, v62);
      v60 = v63;
      v61 = v64;
      swift_unknownObjectRelease();
    }

    v65 = v104(v60, v61);

    v66 = v58;
    v9 = v56;
    if (v65)
    {
      result = specialized AttributedString.Guts.updateRun(at:within:with:)(&v112, v56, a7, v10, a3);
      v57 = v112;
      v66 = v113;
      v17 = v114;
      v108 = v115;
      v34 = v116;
    }

    v67 = v10[9];
    v68 = v10[12];
    v109 = v57;
    v110 = v66;
    v111 = v17;
    v69 = __OFADD__(v108++, 1);
    if (v69)
    {
      goto LABEL_164;
    }

    if (v57 != v68)
    {
      goto LABEL_165;
    }

    if (v17)
    {
      v70 = *(v17 + 24 * ((v66 >> ((4 * *(v17 + 18) + 8) & 0x3C)) & 0xF) + 24);
      v69 = __OFADD__(v34, v70);
      v34 += v70;
      if (v69)
      {
        goto LABEL_169;
      }

      if (!v67)
      {
        goto LABEL_183;
      }

      result = swift_unknownObjectRetain();
      v71 = v66;
    }

    else
    {
      swift_unknownObjectRetain();
      v72 = v66;
      v73 = specialized Rope._Node.subscript.getter(v66, v67);

      v69 = __OFADD__(v34, v73);
      v34 += v73;
      if (v69)
      {
        goto LABEL_171;
      }

      v71 = v72;
      v9 = v56;
      if (!v67)
      {
        goto LABEL_183;
      }
    }

    if (v71 >= (((-15 << ((4 * *(v67 + 18) + 8) & 0x3C)) - 1) & *(v67 + 18) | (*(v67 + 16) << ((4 * *(v67 + 18) + 8) & 0x3C))))
    {
      goto LABEL_183;
    }

    v33 = a7;
    if (v17)
    {
      v74 = (4 * *(v17 + 18) + 8) & 0x3C;
      v75 = ((v71 >> v74) & 0xF) + 1;
      if (v75 < *(v17 + 16))
      {
        v76 = v71;
        result = swift_unknownObjectRelease();
        v77 = ((-15 << v74) - 1) & v76;
        v78 = v75 << v74;
        goto LABEL_113;
      }
    }

    if ((specialized Rope._Node.formSuccessor(of:)(&v109, v67) & 1) == 0)
    {
      v79 = *(v67 + 18);
      v80 = *(v67 + 16);
      result = swift_unknownObjectRelease();
      v17 = 0;
      v81 = (4 * v79 + 8) & 0x3C;
      v78 = ((-15 << v81) - 1) & v79;
      v77 = v80 << v81;
LABEL_113:
      i = v78 | v77;
      v10 = a5;
      v22 = v57;
      if (v34 < a7)
      {
        goto LABEL_45;
      }

      goto LABEL_114;
    }

    result = swift_unknownObjectRelease();
    v22 = v109;
    i = v110;
    v17 = v111;
    v10 = a5;
    if (v34 < a7)
    {
      goto LABEL_45;
    }

LABEL_114:
    v82 = v10[9];
    if (v9 == a7)
    {
      v22 = v10[12];
      if (v82)
      {
        v83 = v10[11];
        if (v83 < v9)
        {
          goto LABEL_177;
        }

        v84 = (v82 + 16);
        v85 = *(v82 + 16);
        v86 = *(v82 + 18);
        v108 = v10[10];
        if (*(v82 + 16) && v83 > a6)
        {
          result = swift_unknownObjectRetain_n();
          if (!v86)
          {
            v21 = 0;
            v7 = a6;
            v17 = v82;
LABEL_139:
            v95 = 0;
            v96 = 24;
            v94 = v7;
            v97 = v85;
            v9 = a6;
            while (1)
            {
              v98 = *(v17 + v96);
              v7 = v94 - v98;
              if (__OFSUB__(v94, v98))
              {
                goto LABEL_166;
              }

              if (__OFADD__(v7, 1))
              {
                goto LABEL_167;
              }

              if (v7 + 1 < 1)
              {
                goto LABEL_147;
              }

              ++v95;
              v96 += 24;
              v94 -= v98;
              if (v97 == v95)
              {
                v95 = v97;
                goto LABEL_145;
              }
            }
          }

          v7 = a6;
          v21 = v86;
          v87 = v82;
          do
          {
            v88 = *v84;
            if (*v84)
            {
              v89 = 0;
              v90 = (v87 + 40);
              while (1)
              {
                v91 = *v90;
                v90 += 3;
                v92 = v7 - v91;
                if (__OFSUB__(v7, v91))
                {
                  goto LABEL_154;
                }

                if (__OFADD__(v92, 1))
                {
                  goto LABEL_155;
                }

                if (v92 + 1 < 1)
                {
                  v88 = v89;
                  goto LABEL_122;
                }

                ++v89;
                v7 = v92;
                if (v88 == v89)
                {
                  goto LABEL_131;
                }
              }
            }

            v92 = v7;
LABEL_131:
            if (v92)
            {
              goto LABEL_168;
            }

            v7 = 0;
LABEL_122:
            v21 = (v88 << ((4 * v86 + 8) & 0x3C)) | ((-15 << ((4 * v86 + 8) & 0x3C)) - 1) & v21;
            v17 = *(v87 + 24 + 24 * v88);
            swift_unknownObjectRetain();
            result = swift_unknownObjectRelease();
            v84 = (v17 + 16);
            LOBYTE(v86) = *(v17 + 18);
            v87 = v17;
          }

          while (v86);
          LODWORD(v85) = *v84;
          if (*v84)
          {
            goto LABEL_139;
          }

          v95 = 0;
          v9 = a6;
LABEL_145:
          if (!v7)
          {
            v94 = 0;
LABEL_147:
            swift_unknownObjectRelease();
            v93 = v21 & 0xFFFFFFFFFFFFF0FFLL | (v95 << 8);
            v10 = a5;
            goto LABEL_148;
          }

          goto LABEL_182;
        }

        swift_unknownObjectRetain();
        v93 = ((-15 << ((4 * v86 + 8) & 0x3C)) - 1) & v86 | (v85 << ((4 * v86 + 8) & 0x3C));
        v94 = 0;
        v17 = 0;
        v9 = a6;
LABEL_148:
        i = v93;
        v108 = specialized Rope._Node.distanceFromStart<A>(to:in:)(v22, v93, v17, v82, v108);
        result = swift_unknownObjectRelease();
        v33 = a7;
        v34 = v9 - v94;
        if (__OFSUB__(v9, v94))
        {
          __break(1u);
          return result;
        }
      }

      else
      {
        if (v9 > 0)
        {
          goto LABEL_178;
        }

        v17 = 0;
        i = 0;
        v108 = 0;
        v34 = v9;
      }
    }

    else
    {
      v22 = v10[12];
      if (v82)
      {
        v17 = 0;
        v34 = v10[11];
        v108 = v10[10];
        i = ((-15 << ((4 * *(v82 + 18) + 8) & 0x3C)) - 1) & *(v82 + 18) | (*(v82 + 16) << ((4 * *(v82 + 18) + 8) & 0x3C));
      }

      else
      {
        i = 0;
        v17 = 0;
        v108 = 0;
        v34 = 0;
      }
    }

LABEL_45:
    v112 = v22;
  }

  v99 = v38;
  result = swift_unknownObjectRetain_n();
  if (!v21)
  {
    v46 = 0;
    v7 = a6;
    v22 = v36;
LABEL_78:
    v53 = 0;
    v54 = 24;
    v44 = v7;
    while (1)
    {
      v55 = *(v22 + v54);
      v7 = v44 - v55;
      if (__OFSUB__(v44, v55))
      {
        goto LABEL_160;
      }

      if (__OFADD__(v7, 1))
      {
        goto LABEL_161;
      }

      if (v7 + 1 < 1)
      {
        goto LABEL_86;
      }

      ++v53;
      v54 += 24;
      v44 -= v55;
      if (v40 == v53)
      {
        v53 = v40;
        goto LABEL_84;
      }
    }
  }

  v7 = a6;
  v46 = v21;
  v47 = v36;
  do
  {
    v48 = *v41;
    if (*v41)
    {
      v49 = 0;
      v50 = (v47 + 40);
      while (1)
      {
        v51 = *v50;
        v50 += 3;
        v52 = v7 - v51;
        if (__OFSUB__(v7, v51))
        {
          break;
        }

        if (__OFADD__(v52, 1))
        {
          goto LABEL_153;
        }

        if (v52 + 1 < 1)
        {
          v48 = v49;
          goto LABEL_63;
        }

        ++v49;
        v7 = v52;
        if (v48 == v49)
        {
          goto LABEL_72;
        }
      }

      __break(1u);
LABEL_153:
      __break(1u);
LABEL_154:
      __break(1u);
LABEL_155:
      __break(1u);
      goto LABEL_156;
    }

    v52 = v7;
LABEL_72:
    if (v52)
    {
      goto LABEL_162;
    }

    v7 = 0;
LABEL_63:
    v46 = (v48 << ((4 * v21 + 8) & 0x3C)) | ((-15 << ((4 * v21 + 8) & 0x3C)) - 1) & v46;
    v22 = *(v47 + 24 + 24 * v48);
    swift_unknownObjectRetain();
    result = swift_unknownObjectRelease();
    v41 = (v22 + 16);
    v21 = *(v22 + 18);
    v47 = v22;
  }

  while (*(v22 + 18));
  LODWORD(v40) = *v41;
  if (*v41)
  {
    goto LABEL_78;
  }

  v53 = 0;
LABEL_84:
  if (!v7)
  {
    v44 = 0;
LABEL_86:
    swift_unknownObjectRelease();
    v43 = v46 & 0xFFFFFFFFFFFFF0FFLL | (v53 << 8);
    v38 = v99;
    goto LABEL_87;
  }

LABEL_179:
  __break(1u);
LABEL_180:
  __break(1u);
LABEL_181:
  __break(1u);
LABEL_182:
  __break(1u);
LABEL_183:
  __break(1u);
  return result;
}

void *AttributedString._InternalRunsSlice.startIndex.getter@<X0>(void *result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = result[9];
  if (v4)
  {
    v5 = result[11];
  }

  else
  {
    v5 = 0;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    v6 = a2;
    if (v5 >= a2)
    {
      v7 = result[12];
      v30 = result[10];
      if (v4)
      {
        v8 = (v4 + 16);
        LODWORD(v9) = *(v4 + 16);
        if (result[11] > a2 && v9 != 0)
        {
          v29 = result[12];
          v17 = *(v4 + 18);
          result = swift_unknownObjectRetain_n();
          v28 = v6;
          if (v17)
          {
            v18 = v17;
            v19 = v4;
            do
            {
              v20 = *v8;
              if (*v8)
              {
                v21 = 0;
                v22 = (v19 + 40);
                while (1)
                {
                  v23 = *v22;
                  v22 += 3;
                  v24 = v6 - v23;
                  if (__OFSUB__(v6, v23))
                  {
                    goto LABEL_44;
                  }

                  if (__OFADD__(v24, 1))
                  {
                    goto LABEL_45;
                  }

                  if (v24 + 1 < 1)
                  {
                    v20 = v21;
                    goto LABEL_18;
                  }

                  ++v21;
                  v6 = v24;
                  if (v20 == v21)
                  {
                    goto LABEL_27;
                  }
                }
              }

              v24 = v6;
LABEL_27:
              if (v24)
              {
                goto LABEL_48;
              }

              v6 = 0;
LABEL_18:
              v18 = (v20 << ((4 * v17 + 8) & 0x3C)) | ((-15 << ((4 * v17 + 8) & 0x3C)) - 1) & v18;
              v13 = *(v19 + 24 + 24 * v20);
              swift_unknownObjectRetain();
              result = swift_unknownObjectRelease();
              v8 = (v13 + 16);
              LOBYTE(v17) = *(v13 + 18);
              v19 = v13;
            }

            while (v17);
            LODWORD(v9) = *v8;
            if (*v8)
            {
              goto LABEL_32;
            }

            v9 = 0;
            v7 = v29;
LABEL_37:
            if (!v6)
            {
              v14 = 0;
LABEL_40:
              swift_unknownObjectRelease();
              v12 = (v18 & 0xFFFFFFFFFFFFF0FFLL | (v9 << 8));
              v6 = v28;
              goto LABEL_13;
            }

            goto LABEL_50;
          }

          v18 = 0;
          v13 = v4;
LABEL_32:
          v7 = v29;
          v25 = 0;
          v26 = 24;
          v14 = v6;
          v9 = v9;
          while (1)
          {
            v27 = *(v13 + v26);
            v6 = v14 - v27;
            if (__OFSUB__(v14, v27))
            {
              goto LABEL_46;
            }

            if (__OFADD__(v6, 1))
            {
              goto LABEL_47;
            }

            if (v6 + 1 < 1)
            {
              v9 = v25;
              goto LABEL_40;
            }

            ++v25;
            v26 += 24;
            v14 -= v27;
            if (v9 == v25)
            {
              goto LABEL_37;
            }
          }
        }
      }

      v11 = swift_unknownObjectRetain();
      result = specialized Rope._endPath.getter(v11);
      v12 = result;
      v13 = 0;
      v14 = 0;
      if (v4)
      {
LABEL_13:
        v15 = specialized Rope._Node.distanceFromStart<A>(to:in:)(v7, v12, v13, v4, v30);
        result = swift_unknownObjectRelease();
        v16 = v6 - v14;
        if (__OFSUB__(v6, v14))
        {
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
          goto LABEL_49;
        }
      }

      else
      {
        v15 = 0;
        v16 = v6;
      }

      *a3 = v7;
      a3[1] = v12;
      a3[2] = v13;
      a3[3] = v15;
      a3[4] = v16;
      return result;
    }
  }

LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
  return result;
}

void *AttributedString._InternalRunsSlice.endIndex.getter@<X0>(void *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v5 = result[9];
  v6 = result[10];
  v8 = result[11];
  v7 = result[12];
  if (a2 != a3)
  {
    v23 = swift_unknownObjectRetain();
    result = specialized Rope._endPath.getter(v23);
    v24 = result;
    if (v5)
    {
      result = swift_unknownObjectRelease();
      v18 = 0;
    }

    else
    {
      v18 = 0;
      v6 = 0;
      v8 = 0;
    }

    goto LABEL_44;
  }

  if (v5)
  {
    v10 = result[11];
  }

  else
  {
    v10 = 0;
  }

  if ((a2 & 0x8000000000000000) == 0 && v10 >= a2)
  {
    if (v5)
    {
      if (v8 > a2)
      {
        v11 = (v5 + 16);
        LODWORD(v12) = *(v5 + 16);
        if (*(v5 + 16))
        {
          v30 = result[10];
          v31 = result[12];
          v13 = *(v5 + 18);
          result = swift_unknownObjectRetain_n();
          if (v13)
          {
            v14 = a2;
            v15 = v13;
            v16 = v5;
            do
            {
              v17 = *v11;
              if (*v11)
              {
                v19 = 0;
                v20 = (v16 + 40);
                while (1)
                {
                  v21 = *v20;
                  v20 += 3;
                  v22 = v14 - v21;
                  if (__OFSUB__(v14, v21))
                  {
                    break;
                  }

                  if (__OFADD__(v22, 1))
                  {
                    goto LABEL_46;
                  }

                  if (v22 + 1 < 1)
                  {
                    v17 = v19;
                    goto LABEL_13;
                  }

                  ++v19;
                  v14 = v22;
                  if (v17 == v19)
                  {
                    goto LABEL_22;
                  }
                }

                __break(1u);
LABEL_46:
                __break(1u);
                goto LABEL_47;
              }

              v22 = v14;
LABEL_22:
              if (v22)
              {
                goto LABEL_49;
              }

              v14 = 0;
LABEL_13:
              v15 = (v17 << ((4 * v13 + 8) & 0x3C)) | ((-15 << ((4 * v13 + 8) & 0x3C)) - 1) & v15;
              v18 = *(v16 + 24 + 24 * v17);
              swift_unknownObjectRetain();
              result = swift_unknownObjectRelease();
              v11 = (v18 + 16);
              LOBYTE(v13) = *(v18 + 18);
              v16 = v18;
            }

            while (v13);
            LODWORD(v12) = *v11;
            if (*v11)
            {
              goto LABEL_34;
            }

            v12 = 0;
LABEL_39:
            if (!v14)
            {
              v26 = 0;
LABEL_42:
              swift_unknownObjectRelease();
              v24 = (v15 & 0xFFFFFFFFFFFFF0FFLL | (v12 << 8));
              v6 = v30;
              v7 = v31;
              goto LABEL_27;
            }

            goto LABEL_52;
          }

          v15 = 0;
          v14 = a2;
          v18 = v5;
LABEL_34:
          v27 = 0;
          v28 = 24;
          v26 = v14;
          v12 = v12;
          while (1)
          {
            v29 = *(v18 + v28);
            v14 = v26 - v29;
            if (__OFSUB__(v26, v29))
            {
              break;
            }

            if (__OFADD__(v14, 1))
            {
              goto LABEL_48;
            }

            if (v14 + 1 < 1)
            {
              v12 = v27;
              goto LABEL_42;
            }

            ++v27;
            v28 += 24;
            v26 -= v29;
            if (v12 == v27)
            {
              goto LABEL_39;
            }
          }

LABEL_47:
          __break(1u);
LABEL_48:
          __break(1u);
LABEL_49:
          __break(1u);
          goto LABEL_50;
        }
      }
    }

    v25 = swift_unknownObjectRetain();
    result = specialized Rope._endPath.getter(v25);
    v24 = result;
    v18 = 0;
    v26 = 0;
    if (v5)
    {
LABEL_27:
      v6 = specialized Rope._Node.distanceFromStart<A>(to:in:)(v7, v24, v18, v5, v6);
      result = swift_unknownObjectRelease();
      v8 = a2 - v26;
      if (__OFSUB__(a2, v26))
      {
        goto LABEL_51;
      }
    }

    else
    {
      v6 = 0;
      v8 = a2;
    }

LABEL_44:
    *a4 = v7;
    a4[1] = v24;
    a4[2] = v18;
    a4[3] = v6;
    a4[4] = v8;
    return result;
  }

LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
  return result;
}

uint64_t AttributedString._InternalRunsSlice.subscript.getter(unint64_t *a1, void *a2, int64_t a3, int64_t a4)
{
  v8 = a2[9];
  v7 = a2[10];
  v9 = a2[11];
  v10 = a2[12];
  v11 = *a1;
  v12 = a1[1];
  v13 = a1[2];
  swift_unknownObjectRetain();
  specialized Rope.subscript.getter(v11, v12, v13, v8, v7, v9, v10);
  swift_unknownObjectRelease();
  v14 = a2[9];
  v15 = a2[10];
  v16 = a2[11];
  v17 = a2[12];
  swift_unknownObjectRetain();
  v18 = specialized Rope.subscript.getter(v11, v12, v13, v14, v15, v16, v17);
  swift_unknownObjectRelease();

  v20 = a1[4];
  v21 = v20 + v18;
  if (__OFADD__(v20, v18))
  {
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v20 >= a4)
  {
    v22 = a4;
  }

  else
  {
    v22 = a1[4];
  }

  if (v20 >= a3)
  {
    v23 = v22;
  }

  else
  {
    v23 = a3;
  }

  if (v21 <= a3)
  {
    v24 = a3;
  }

  else
  {
    v24 = v21;
  }

  if (v21 <= a4)
  {
    v25 = v24;
  }

  else
  {
    v25 = a4;
  }

  if (v23 == v25)
  {
    goto LABEL_18;
  }

  result = v25 - v23;
  if (__OFSUB__(v25, v23))
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

unint64_t *AttributedString._InternalRunsSlice.index(after:)@<X0>(unint64_t *result@<X0>, void *a2@<X1>, uint64_t a3@<X2>, int64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v5 = a2[9];
  v6 = a2[10];
  v8 = a2[11];
  v7 = a2[12];
  v10 = *result;
  v9 = result[1];
  v12 = result[2];
  v11 = result[3];
  v13 = result[4];
  v51 = *result;
  v52 = v9;
  v53 = v12;
  v14 = __OFADD__(v11, 1);
  v15 = v11 + 1;
  if (v14)
  {
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  v48 = v15;
  swift_unknownObjectRetain();
  v17 = specialized Rope.subscript.getter(v10, v9, v12, v5, v6, v8, v7);

  v14 = __OFADD__(v13, v17);
  v18 = v13 + v17;
  if (v14)
  {
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  if (v10 != v7)
  {
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  result = specialized Rope._endPath.getter(v5);
  if (v9 >= result)
  {
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  v19 = v7;
  if (v12 && (v20 = (4 * *(v12 + 18) + 8) & 0x3C, v21 = ((v9 >> v20) & 0xF) + 1, v21 < *(v12 + 16)))
  {
    result = swift_unknownObjectRelease();
    v22 = ((v21 << v20) | ((-15 << v20) - 1) & v9);
    v23 = v19;
  }

  else if (specialized Rope._Node.formSuccessor(of:)(&v51, v5))
  {
    result = swift_unknownObjectRelease();
    v23 = v51;
    v22 = v52;
    v12 = v53;
  }

  else
  {
    v23 = v19;
    v22 = specialized Rope._endPath.getter(v5);
    result = swift_unknownObjectRelease();
    v12 = 0;
  }

  v25 = a4;
  v24 = v48;
  if (v18 < a4)
  {
    goto LABEL_55;
  }

  v26 = a2[9];
  v24 = a2[10];
  v18 = a2[11];
  v23 = a2[12];
  if (a3 != a4)
  {
    v38 = swift_unknownObjectRetain();
    result = specialized Rope._endPath.getter(v38);
    v22 = result;
    if (v26)
    {
      result = swift_unknownObjectRelease();
      v12 = 0;
    }

    else
    {
      v12 = 0;
      v24 = 0;
      v18 = 0;
    }

    goto LABEL_55;
  }

  if (v26)
  {
    v27 = a2[11];
  }

  else
  {
    v27 = 0;
  }

  if ((a4 & 0x8000000000000000) == 0 && v27 >= a4)
  {
    if (v26)
    {
      v28 = (v26 + 16);
      LODWORD(v29) = *(v26 + 16);
      if (*(v26 + 16))
      {
        if (v18 > a4)
        {
          v49 = a2[10];
          v30 = a2[12];
          v31 = *(v26 + 18);
          result = swift_unknownObjectRetain_n();
          v50 = v26;
          if (v31)
          {
            v32 = v31;
            do
            {
              v33 = *v28;
              if (*v28)
              {
                v34 = 0;
                v35 = (v26 + 40);
                while (1)
                {
                  v36 = *v35;
                  v35 += 3;
                  v37 = v25 - v36;
                  if (__OFSUB__(v25, v36))
                  {
                    break;
                  }

                  if (__OFADD__(v37, 1))
                  {
                    goto LABEL_57;
                  }

                  if (v37 + 1 < 1)
                  {
                    v33 = v34;
                    goto LABEL_24;
                  }

                  ++v34;
                  v25 = v37;
                  if (v33 == v34)
                  {
                    goto LABEL_33;
                  }
                }

                __break(1u);
LABEL_57:
                __break(1u);
                goto LABEL_58;
              }

              v37 = v25;
LABEL_33:
              if (v37)
              {
                goto LABEL_64;
              }

              v25 = 0;
LABEL_24:
              v32 = (v33 << ((4 * v31 + 8) & 0x3C)) | ((-15 << ((4 * v31 + 8) & 0x3C)) - 1) & v32;
              v12 = *(v26 + 24 + 24 * v33);
              swift_unknownObjectRetain();
              result = swift_unknownObjectRelease();
              v28 = (v12 + 16);
              LOBYTE(v31) = *(v12 + 18);
              v26 = v12;
            }

            while (v31);
            LODWORD(v29) = *v28;
            if (*v28)
            {
              goto LABEL_45;
            }

            v29 = 0;
LABEL_50:
            if (!v25)
            {
              v41 = 0;
LABEL_53:
              swift_unknownObjectRelease();
              v22 = (v32 & 0xFFFFFFFFFFFFF0FFLL | (v29 << 8));
              v23 = v30;
              v25 = a4;
              v24 = v49;
              v40 = v50;
              goto LABEL_38;
            }

            goto LABEL_67;
          }

          v32 = 0;
          v12 = v26;
LABEL_45:
          v42 = 0;
          v43 = 24;
          v41 = v25;
          v29 = v29;
          while (1)
          {
            v44 = *(v12 + v43);
            v25 = v41 - v44;
            if (__OFSUB__(v41, v44))
            {
              goto LABEL_62;
            }

            if (__OFADD__(v25, 1))
            {
              goto LABEL_63;
            }

            if (v25 + 1 < 1)
            {
              v29 = v42;
              goto LABEL_53;
            }

            ++v42;
            v43 += 24;
            v41 -= v44;
            if (v29 == v42)
            {
              goto LABEL_50;
            }
          }
        }
      }
    }

    v39 = swift_unknownObjectRetain();
    result = specialized Rope._endPath.getter(v39);
    v22 = result;
    v12 = 0;
    v40 = v26;
    v41 = 0;
    if (v40)
    {
LABEL_38:
      v24 = specialized Rope._Node.distanceFromStart<A>(to:in:)(v23, v22, v12, v40, v24);
      result = swift_unknownObjectRelease();
      v18 = v25 - v41;
      if (__OFSUB__(v25, v41))
      {
        goto LABEL_66;
      }
    }

    else
    {
      v24 = 0;
      v18 = a4;
    }

LABEL_55:
    *a5 = v23;
    a5[1] = v22;
    a5[2] = v12;
    a5[3] = v24;
    a5[4] = v18;
    return result;
  }

LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
LABEL_67:
  __break(1u);
  return result;
}

uint64_t AttributedString._InternalRunsSlice.index(before:)@<X0>(__int128 *a1@<X0>, void *a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v6 = a2;
  v9 = a2[9];
  v10 = a2[11];
  v11 = swift_unknownObjectRetain();
  result = specialized Rope._endPath.getter(v11);
  if (!v9)
  {
    goto LABEL_19;
  }

  result = swift_unknownObjectRelease();
  v13 = *(a1 + 4);
  if (v13 == v10)
  {
    goto LABEL_3;
  }

LABEL_20:
  v37 = a4;
  a3 = v6[9];
  v24 = v6[10];
  v4 = v6[11];
  a4 = v6[12];
  v38 = *a1;
  v25 = *(a1 + 3);
  v39 = *(a1 + 2);
  v26 = v25 - 1;
  if (__OFSUB__(v25, 1))
  {
LABEL_41:
    __break(1u);
  }

  else
  {
    swift_unknownObjectRetain();
    specialized Rope.formIndex(before:)(&v38, a3, v24, v4, a4);
    v27 = *(&v38 + 1);
    v6 = v38;
    v20 = v39;
    a1 = specialized Rope.subscript.getter(v38, *(&v38 + 1), v39, a3, v24, v4, a4);
    v4 = v28;
    swift_unknownObjectRelease();

    v29 = v13 - a1;
    if (!__OFSUB__(v13, a1))
    {
      a4 = v37;
LABEL_25:
      *a4 = v6;
      *(a4 + 8) = v27;
      *(a4 + 16) = v20;
      *(a4 + 24) = v26;
      *(a4 + 32) = v29;
      return result;
    }
  }

  __break(1u);
LABEL_43:
  __break(1u);
  while (v4)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    v13 = *(a1 + 4);
    if (v13)
    {
      goto LABEL_20;
    }

LABEL_3:
    a1 = v6[9];
    if (a1)
    {
      v14 = v6[11];
    }

    else
    {
      v14 = 0;
    }

    if (a3 < 0 || v14 < a3)
    {
      goto LABEL_43;
    }

    v15 = v6[10];
    v6 = v6[12];
    v35 = v15;
    if (!a1 || (v16 = (a1 + 1), v17 = *(a1 + 8), !*(a1 + 8)))
    {
      v30 = swift_unknownObjectRetain();
      result = specialized Rope._endPath.getter(v30);
      v27 = result;
      v20 = 0;
      v4 = 0;
      if (!a1)
      {
        v26 = 0;
        v29 = a3;
        goto LABEL_25;
      }

LABEL_24:
      v26 = specialized Rope._Node.distanceFromStart<A>(to:in:)(v6, v27, v20, a1, v35);
      result = swift_unknownObjectRelease();
      v29 = a3 - v4;
      if (!__OFSUB__(a3, v4))
      {
        goto LABEL_25;
      }

      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    v36 = a4;
    a4 = *(a1 + 18);
    result = swift_unknownObjectRetain_n();
    if (!a4)
    {
LABEL_29:
      v18 = 0;
      v4 = a3;
      v20 = a1;
LABEL_30:
      a4 = v36;
      v16 = 0;
      v31 = 24;
      while (1)
      {
        v32 = *(v20 + v31);
        v33 = __OFSUB__(v4, v32);
        v34 = v4 - v32;
        if (v33)
        {
          goto LABEL_40;
        }

        if (v34 < 1)
        {
          goto LABEL_35;
        }

        v16 += 256;
        v31 += 24;
        v4 = v34;
        if (v17 << 8 == v16)
        {
          goto LABEL_34;
        }
      }
    }

    v4 = a3;
    v18 = a4;
    v19 = a1;
LABEL_13:
    if (*v16)
    {
      v21 = 0;
      v22 = (v19 + 40);
      while (1)
      {
        v23 = v4 - *v22;
        if (__OFSUB__(v4, *v22))
        {
          goto LABEL_39;
        }

        if (v23 < 1)
        {
          v18 = (v21 << ((4 * a4 + 8) & 0x3C)) | ((-15 << ((4 * a4 + 8) & 0x3C)) - 1) & v18;
          v20 = *(v22 - 2);
          swift_unknownObjectRetain();
          result = swift_unknownObjectRelease();
          v16 = v20 + 16;
          a4 = *(v20 + 18);
          v19 = v20;
          if (*(v20 + 18))
          {
            goto LABEL_13;
          }

          v17 = *v16;
          if (*v16)
          {
            goto LABEL_30;
          }

          if (!v4)
          {
            __break(1u);
            goto LABEL_29;
          }

LABEL_34:
          __break(1u);
LABEL_35:
          swift_unknownObjectRelease();
          v27 = v16 | v18 & 0xFFFFFFFFFFFFF0FFLL;
          goto LABEL_24;
        }

        ++v21;
        v22 += 3;
        v4 = v23;
        if (*v16 == v21)
        {
          goto LABEL_18;
        }
      }
    }
  }

  __break(1u);
  return result;
}

double protocol witness for BidirectionalCollection.index(before:) in conformance AttributedString._InternalRunsSlice@<D0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  AttributedString._InternalRunsSlice.index(before:)(a1, *v2, *(v2 + 16), v6);
  result = *v6;
  v5 = v6[1];
  *a2 = v6[0];
  *(a2 + 16) = v5;
  *(a2 + 32) = v7;
  return result;
}

uint64_t protocol witness for BidirectionalCollection.formIndex(before:) in conformance AttributedString._InternalRunsSlice(unint64_t *a1)
{
  v3 = *v1;
  v4 = v1[2];
  v6 = *a1;
  v5 = a1[1];
  v31 = a1[3];
  v32 = a1[2];
  v7 = a1[4];
  v8 = *(*v1 + 72);
  v9 = *(*v1 + 88);
  v10 = swift_unknownObjectRetain();
  result = specialized Rope._endPath.getter(v10);
  if (v8)
  {
    result = swift_unknownObjectRelease();
    if (v7 == v9)
    {
      goto LABEL_3;
    }

LABEL_9:
    v30 = v7;
    v4 = v3[9];
    v24 = v3[10];
    v25 = v5;
    v26 = v3[11];
    v27 = v3[12];
    v33 = v6;
    v34 = v25;
    v35 = v32;
    v22 = v31 - 1;
    if (!__OFSUB__(v31, 1))
    {
      swift_unknownObjectRetain();
      specialized Rope.formIndex(before:)(&v33, v4, v24, v26, v27);
      v14 = v33;
      v19 = v34;
      v20 = v35;
      v28 = specialized Rope.subscript.getter(v33, v34, v35, v4, v24, v26, v27);
      v21 = v29;
      swift_unknownObjectRelease();

      v23 = v30 - v28;
      if (!__OFSUB__(v30, v28))
      {
        goto LABEL_14;
      }

      __break(1u);
      goto LABEL_13;
    }

    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v7)
  {
    goto LABEL_9;
  }

LABEL_3:
  v13 = v3[9];
  v12 = v3[10];
  v15 = v3[11];
  v14 = v3[12];
  swift_unknownObjectRetain();
  result = specialized Rope.find<A>(at:in:preferEnd:)(v4, 1, v13, v12, v15, v14);
  if (result != v14)
  {
    goto LABEL_16;
  }

  v19 = v16;
  v20 = v17;
  v21 = v18;
  if (v13)
  {
    v22 = specialized Rope._Node.distanceFromStart<A>(to:in:)(v14, v16, v17, v13, v12);
    result = swift_unknownObjectRelease();
    v23 = v4 - v21;
    if (!__OFSUB__(v4, v21))
    {
      goto LABEL_14;
    }

    goto LABEL_17;
  }

LABEL_13:
  v22 = 0;
  v23 = v4 - v21;
  if (!__OFSUB__(v4, v21))
  {
LABEL_14:
    *a1 = v14;
    a1[1] = v19;
    a1[2] = v20;
    a1[3] = v22;
    a1[4] = v23;
    return result;
  }

LABEL_17:
  __break(1u);
  return result;
}

char *specialized BidirectionalCollection.index(_:offsetBy:)@<X0>(char **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char **a4@<X8>)
{
  v5 = a2;
  v6 = a1;
  v8 = a1[4];
  if (a2 < 0)
  {
LABEL_20:
    v17 = 0;
    v10 = *v6;
    result = v6[1];
    v11 = v6[2];
    v12 = v6[3];
    v18 = v12;
    v19 = v10;
    while (1)
    {
      if (v19 == result)
      {
        if (!v18)
        {
          v19 = result;
          goto LABEL_23;
        }

        v12 = v18 - 1;
        if (__OFSUB__(v18, 1))
        {
          goto LABEL_43;
        }

        v20 = *(a3 + 24);
        result = [*(a3 + 16) rangeAtIndex_];
        v11 = &result[v21];
        v22 = __OFADD__(result, v21);
        if (v20)
        {
          if (v22)
          {
            goto LABEL_46;
          }

          if (v11 < result)
          {
            goto LABEL_48;
          }
        }

        else
        {
          if (v22)
          {
            goto LABEL_45;
          }

          if (v11 < result)
          {
            goto LABEL_47;
          }
        }

        v10 = v11 - 1;
        if (__OFSUB__(v11, 1))
        {
          goto LABEL_44;
        }

        v18 = v12;
      }

      else
      {
        v10 = v19 - 1;
        if (__OFSUB__(v19, 1))
        {
          goto LABEL_42;
        }
      }

      v19 = v10;
LABEL_23:
      if (--v17 <= v5)
      {
        goto LABEL_39;
      }
    }
  }

  v10 = *a1;
  result = a1[1];
  v11 = v6[2];
  v12 = v6[3];
  if (a2)
  {
    while (!__OFADD__(v10++, 1))
    {
      if (v10 == v11)
      {
        v14 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          goto LABEL_41;
        }

        v10 = v11;
        if (v14 != v8)
        {
          v15 = *(a3 + 24);
          result = [*(a3 + 16) rangeAtIndex_];
          v11 = &result[v16];
          v6 = __OFADD__(result, v16);
          if (v15)
          {
            if (v6)
            {
              goto LABEL_50;
            }

            if (v11 < result)
            {
              goto LABEL_51;
            }
          }

          else
          {
            if (v6)
            {
              goto LABEL_49;
            }

            if (v11 < result)
            {
              __break(1u);
              goto LABEL_20;
            }
          }

          v12 = v14;
          v10 = result;
        }
      }

      if (!--v5)
      {
        goto LABEL_39;
      }
    }

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
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
  }

  else
  {
LABEL_39:
    *a4 = v10;
    a4[1] = result;
    a4[2] = v11;
    a4[3] = v12;
    a4[4] = v8;
  }

  return result;
}

void specialized BidirectionalCollection.index(_:offsetBy:)(unint64_t *a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v311 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GMd, &_ss8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GMR);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v302 - v10;
  if ((a2 & 0x8000000000000000) == 0)
  {
    v12 = *(a1 + 1);
    v361 = *a1;
    v362 = v12;
    for (i = a1[4]; a2; --a2)
    {
      specialized Collection.formIndex(after:)(&v361);
    }

    v13 = i;
    v14 = v362;
    v15 = v311;
    *v311 = v361;
    v15[1] = v14;
    goto LABEL_5;
  }

  v350 = v11;
  v351 = v9;
  v16 = a1[1];
  v339 = *a1;
  v17 = a1[3];
  v331 = a1[2];
  v332 = v16;
  v330 = v17;
  v18 = type metadata accessor for AttributedString.Runs.NSAttributesSlice(0);
  v19 = 0;
  v316 = *(v18 + 20);
  v349 = (v8 + 8);
  v352 = v4;
  v314 = a2;
  while (1)
  {
    v347 = *(v4 + v316);
    v341 = *(v347 + 16);
    if (!v341)
    {
      goto LABEL_295;
    }

    v325 = v19;
    v20 = v4[23];
    v21 = v4[26];
    v346 = type metadata accessor for AttributedString.Runs(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetVy19CollectionsInternal9BigStringV5IndexVGMd, &_ss8RangeSetVy19CollectionsInternal9BigStringV5IndexVGMR);
    v22 = v350;
    RangeSet.ranges.getter();
    v23 = v351;
    v24 = RangeSet.Ranges.count.getter();
    v348 = *v349;
    (v348)(v22, v23);
    if (v21 != 2 && (v20 ^ v339) < 0x400)
    {
      v25 = v24;
LABEL_20:
      if (v25 < 1)
      {
        goto LABEL_299;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetVy19CollectionsInternal9BigStringV5IndexVGMd, &_ss8RangeSetVy19CollectionsInternal9BigStringV5IndexVGMR);
      v31 = v350;
      RangeSet.ranges.getter();
      v32 = v351;
      RangeSet.Ranges.subscript.getter();
      (v348)(v31, v32);
      v339 = v361;
      v331 = v362;
      v332 = *(&v361 + 1);
      v330 = *(&v362 + 1);
      v30 = i;
      v33 = v364;
      v34 = v365;
      v35 = v366;
      goto LABEL_23;
    }

    if (v24 < 1)
    {
      goto LABEL_287;
    }

    v26 = 0;
    v27 = v339 >> 10;
    while (1)
    {
      while (1)
      {
        if (__OFADD__(v26, v24))
        {
          goto LABEL_288;
        }

        v25 = (v26 + v24) / 2;
        v28 = v350;
        RangeSet.ranges.getter();
        v29 = v351;
        RangeSet.Ranges.subscript.getter();
        (v348)(v28, v29);
        if (v27 >= v361 >> 10)
        {
          break;
        }

        v24 = (v26 + v24) / 2;
        if (v26 >= v25)
        {
          goto LABEL_287;
        }
      }

      if (v27 < i >> 10)
      {
        break;
      }

      v26 = v25 + 1;
      if (v25 + 1 >= v24)
      {
        goto LABEL_287;
      }
    }

    v30 = v339;
    v4 = v352;
    if ((v361 ^ v339) <= 0x3FF)
    {
      goto LABEL_20;
    }

    v34 = v331;
    v33 = v332;
    v35 = v330;
    v339 = v361;
    v331 = v362;
    v332 = *(&v361 + 1);
    v330 = *(&v362 + 1);
LABEL_23:
    v36 = *v4;
    v37 = *(*v4 + 24);
    v324 = (*v4 + 24);
    v38 = *(v36 + 5);
    v418[6] = v37;
    v418[7] = v38;
    v418[8] = *(v36 + 7);
    swift_unknownObjectRetain();
    v334 = v30;
    v328 = v35;
    v329 = v33;
    v327 = v34;
    v39 = BigString.UTF8View.index(before:)();
    v319 = v41;
    v320 = v40;
    v318 = v42;
    swift_unknownObjectRelease();
    v43 = v36[9];
    v44 = v36[11];
    v321 = v39;
    v45 = v39 >> 11;
    if (v43)
    {
      v46 = v44;
    }

    else
    {
      v46 = 0;
    }

    if (v46 < v45)
    {
      goto LABEL_296;
    }

    v47 = v36[12];
    v336 = v36;
    *&v337 = v47;
    v326 = v39 >> 11;
    if (!v43)
    {
      v60 = 0;
      v61 = 0;
      *(&v337 + 1) = 0;
      v333 = 0;
      goto LABEL_59;
    }

    v48 = v36[10];
    v50 = (v43 + 16);
    v49 = *(v43 + 16);
    v51 = *(v43 + 18);
    if (v45 >= v44 || !*(v43 + 16))
    {
      swift_unknownObjectRetain();
      v62 = ((-15 << ((4 * v51 + 8) & 0x3C)) - 1) & v51 | (v49 << ((4 * v51 + 8) & 0x3C));
      v60 = 0;
      v61 = 0;
      v4 = v352;
      goto LABEL_58;
    }

    swift_unknownObjectRetain_n();
    if (!v51)
    {
      v53 = 0;
      v52 = v326;
      v63 = v43;
      goto LABEL_49;
    }

    v52 = v326;
    v53 = v51;
    v54 = v43;
    do
    {
      v55 = *v50;
      if (*v50)
      {
        v56 = 0;
        v57 = (v54 + 40);
        while (1)
        {
          v58 = *v57;
          v57 += 3;
          v59 = v52 - v58;
          if (__OFSUB__(v52, v58))
          {
            break;
          }

          if (__OFADD__(v59, 1))
          {
            goto LABEL_286;
          }

          if ((v59 + 1) < 1)
          {
            v55 = v56;
            goto LABEL_33;
          }

          ++v56;
          v52 = v59;
          if (v55 == v56)
          {
            goto LABEL_42;
          }
        }

        __break(1u);
LABEL_286:
        __break(1u);
LABEL_287:
        __break(1u);
LABEL_288:
        __break(1u);
LABEL_289:
        __break(1u);
        goto LABEL_290;
      }

      v59 = v52;
LABEL_42:
      if (v59)
      {
        goto LABEL_294;
      }

      v52 = 0;
LABEL_33:
      v53 = (v55 << ((4 * v51 + 8) & 0x3C)) | ((-15 << ((4 * v51 + 8) & 0x3C)) - 1) & v53;
      v49 = *(v54 + 24 + 24 * v55);
      swift_unknownObjectRetain();
      swift_unknownObjectRelease();
      v50 = (v49 + 16);
      LOBYTE(v51) = *(v49 + 18);
      v54 = v49;
    }

    while (v51);
    v63 = v49;
    LODWORD(v49) = *v50;
    if (!*v50)
    {
      v64 = 0;
      v4 = v352;
      v61 = v63;
      goto LABEL_55;
    }

LABEL_49:
    v4 = v352;
    v64 = 0;
    v65 = 24;
    v60 = v52;
    v66 = v49;
    v61 = v63;
    do
    {
      v67 = *(v61 + v65);
      v52 = v60 - v67;
      if (__OFSUB__(v60, v67))
      {
        goto LABEL_292;
      }

      if (__OFADD__(v52, 1))
      {
        goto LABEL_293;
      }

      if ((v52 + 1) < 1)
      {
        goto LABEL_57;
      }

      ++v64;
      v65 += 24;
      v60 -= v67;
    }

    while (v66 != v64);
    v64 = v66;
LABEL_55:
    if (v52)
    {
      goto LABEL_309;
    }

    v60 = 0;
LABEL_57:
    swift_unknownObjectRelease();
    v62 = v53 & 0xFFFFFFFFFFFFF0FFLL | (v64 << 8);
LABEL_58:
    *(&v337 + 1) = v62;
    v333 = specialized Rope._Node.distanceFromStart<A>(to:in:)(v337, v62, v61, v43, v48);
    swift_unknownObjectRelease();
    v36 = v336;
    v45 = v326;
LABEL_59:
    v68 = v45 - v60;
    v69 = v327;
    if (__OFSUB__(v45, v60))
    {
      goto LABEL_297;
    }

    if (v337 != v36[12])
    {
      goto LABEL_298;
    }

    v335 = v61;
    if (v61)
    {
      v70 = v61 + 24 * ((*(&v337 + 1) >> ((4 * *(v61 + 18) + 8) & 0x3C)) & 0xFLL);
      v72 = *(v70 + 32);
      v71 = *(v70 + 40);

      v323 = v71;
    }

    else
    {
      v73 = v36[9];
      swift_unknownObjectRetain();
      specialized Rope._Node.subscript.getter(*(&v337 + 1), v73);
      v72 = v74;
      v323 = v75;
      swift_unknownObjectRelease();
    }

    v76 = v4[1];
    if (v76 >= v333)
    {

      goto LABEL_199;
    }

    v315 = (v347 + 40);
    v340 = v72;
    v312 = v76;
    while (2)
    {
      v77 = v336[9];
      v78 = v336[12];
      v361 = v337;
      v79 = *(&v337 + 1);
      *&v362 = v335;
      if (v337 != v78)
      {
        goto LABEL_300;
      }

      if (v77)
      {
        v80 = *(v77 + 18);
        swift_unknownObjectRetain();
        v79 = *(&v337 + 1);
        if (v80 >= *(&v337 + 1))
        {
LABEL_301:
          __break(1u);
LABEL_302:
          __break(1u);
LABEL_303:
          __break(1u);
          goto LABEL_304;
        }
      }

      else if (!*(&v337 + 1))
      {
        goto LABEL_301;
      }

      v322 = v68;
      if (v335)
      {
        v81 = (4 * *(v335 + 18) + 8) & 0x3C;
        if (((v79 >> v81) & 0xF) != 0)
        {
          v82 = ((((v79 >> v81) & 0xF) - 1) << v81) | ((-15 << v81) - 1) & v79;
          goto LABEL_135;
        }
      }

      v83 = (4 * *(v77 + 18) + 8) & 0x3C;
      v84 = (v79 >> v83) & 0xF;
      if (!*(v77 + 18))
      {
        if (v84)
        {
          v82 = ((v84 - 1) << v83) | v79 & 0xFFFFFFFFFFFFF0FFLL;
          *(&v361 + 1) = v82;
          *&v362 = v77;
          v72 = v340;
          v335 = v77;
          if (v77)
          {
            goto LABEL_135;
          }

          goto LABEL_94;
        }

LABEL_310:
        __break(1u);
LABEL_311:
        __break(1u);
LABEL_312:
        __break(1u);
LABEL_313:
        __break(1u);
LABEL_314:
        __break(1u);
LABEL_315:
        __break(1u);
        goto LABEL_316;
      }

      if (v84 >= *(v77 + 16))
      {
        swift_unknownObjectRetain();
        if (!v84)
        {
LABEL_308:
          swift_unknownObjectRelease();
          __break(1u);
LABEL_309:
          __break(1u);
          goto LABEL_310;
        }

LABEL_131:
        *(&v361 + 1) = *(&v361 + 1) & ((-15 << v83) - 1) | ((v84 - 1) << v83);
        v131 = *(v77 + 24 * v84);
        swift_unknownObjectRetain();
        v68 = v322;
        v132 = specialized Rope._Node.descendToLastItem(under:)(&v361 + 1, v131);
        swift_unknownObjectRelease();
        v116 = v132;
        *&v362 = v132;
LABEL_132:
        v72 = v340;
        goto LABEL_133;
      }

      v85 = *(v77 + 24 * ((v79 >> v83) & 0xF) + 24);
      v86 = (4 * *(v85 + 18) + 8) & 0x3C;
      v87 = (v79 >> v86) & 0xF;
      if (!*(v85 + 18))
      {
        if (v87)
        {
          *(&v361 + 1) = ((v87 - 1) << v86) | v79 & 0xFFFFFFFFFFFFF0FFLL;
          *&v362 = v85;
          swift_unknownObjectRetain();
          v116 = v85;
          goto LABEL_132;
        }

        swift_unknownObjectRetain();
LABEL_130:
        if (!v84)
        {
          goto LABEL_308;
        }

        goto LABEL_131;
      }

      if (v87 >= *(v85 + 8))
      {
        goto LABEL_106;
      }

      v88 = v85[3 * ((v79 >> v86) & 0xF) + 3];
      v89 = (4 * *(v88 + 18) + 8) & 0x3C;
      v90 = (v79 >> v89) & 0xF;
      if (!*(v88 + 18))
      {
        if (v90)
        {
          *(&v361 + 1) = ((v90 - 1) << v89) | v79 & 0xFFFFFFFFFFFFF0FFLL;
          *&v362 = v88;
          v116 = v88;
          swift_unknownObjectRetain();
          v348 = v85;
          swift_unknownObjectRetain();
LABEL_110:
          v72 = v340;
          goto LABEL_191;
        }

LABEL_106:
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        if (v87)
        {
LABEL_107:
          *(&v361 + 1) = *(&v361 + 1) & ((-15 << v86) - 1) | ((v87 - 1) << v86);
          v122 = v85[3 * v87];
          swift_unknownObjectRetain();
          v68 = v322;
          v123 = specialized Rope._Node.descendToLastItem(under:)(&v361 + 1, v122);
          swift_unknownObjectRelease();
          v116 = v123;
          *&v362 = v123;
          swift_unknownObjectRelease();
          goto LABEL_132;
        }

LABEL_129:
        swift_unknownObjectRelease();
        goto LABEL_130;
      }

      v91 = *(v88 + 16);
      v348 = *(v77 + 24 * ((v79 >> v83) & 0xF) + 24);
      v346 = v88;
      if (v90 >= v91)
      {
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        if (v90)
        {
LABEL_109:
          *(&v361 + 1) = *(&v361 + 1) & ((-15 << v89) - 1) | ((v90 - 1) << v89);
          v124 = v346[3 * v90];
          swift_unknownObjectRetain();
          v68 = v322;
          v125 = specialized Rope._Node.descendToLastItem(under:)(&v361 + 1, v124);
          swift_unknownObjectRelease();
          v116 = v125;
          *&v362 = v125;
          swift_unknownObjectRelease();
          goto LABEL_110;
        }

LABEL_128:
        swift_unknownObjectRelease();
        if (v87)
        {
          goto LABEL_107;
        }

        goto LABEL_129;
      }

      v92 = *(v88 + 24 * ((v79 >> v89) & 0xF) + 24);
      v93 = (4 * *(v92 + 18) + 8) & 0x3C;
      v94 = (v79 >> v93) & 0xF;
      if (!*(v92 + 18))
      {
        if (!v94)
        {
          swift_unknownObjectRetain();
          v85 = v348;
          swift_unknownObjectRetain();
          swift_unknownObjectRetain();
          if (v90)
          {
            goto LABEL_109;
          }

          goto LABEL_128;
        }

        *(&v361 + 1) = ((v94 - 1) << v93) | v79 & 0xFFFFFFFFFFFFF0FFLL;
        *&v362 = v92;
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        v116 = v92;
LABEL_116:
        v68 = v322;
        v72 = v340;
        goto LABEL_190;
      }

      v95 = *(v92 + 8);
      v345 = *(v88 + 24 * ((v79 >> v89) & 0xF) + 24);
      if (v94 >= v95)
      {
        v344 = v93;
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        v92 = v345;
        goto LABEL_114;
      }

      v96 = v92[3 * ((v79 >> v93) & 0xF) + 3];
      v97 = (4 * *(v96 + 18) + 8) & 0x3C;
      v98 = (v79 >> v97) & 0xF;
      if (!*(v96 + 18))
      {
        if (v98)
        {
          *(&v361 + 1) = ((v98 - 1) << v97) | v79 & 0xFFFFFFFFFFFFF0FFLL;
          *&v362 = v96;
          v116 = v96;
          swift_unknownObjectRetain();
          swift_unknownObjectRetain();
          swift_unknownObjectRetain();
          swift_unknownObjectRetain();
LABEL_125:
          v68 = v322;
          v72 = v340;
          goto LABEL_189;
        }

        v344 = v93;
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
LABEL_114:
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        v126 = v344;
        if (v94)
        {
LABEL_115:
          *(&v361 + 1) = *(&v361 + 1) & ((-15 << v126) - 1) | ((v94 - 1) << v126);
          v127 = v92[3 * v94];
          swift_unknownObjectRetain();
          v128 = specialized Rope._Node.descendToLastItem(under:)(&v361 + 1, v127);
          swift_unknownObjectRelease();
          v116 = v128;
          *&v362 = v128;
          swift_unknownObjectRelease();
          goto LABEL_116;
        }

LABEL_127:
        swift_unknownObjectRelease();
        v85 = v348;
        if (v90)
        {
          goto LABEL_109;
        }

        goto LABEL_128;
      }

      v99 = *(v96 + 16);
      v343 = v92[3 * ((v79 >> v93) & 0xF) + 3];
      if (v98 >= v99)
      {
        v338 = v97;
        v342 = (v79 >> v97) & 0xF;
        v344 = v93;
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        v92 = v345;
        goto LABEL_122;
      }

      v100 = *(v96 + 24 * ((v79 >> v97) & 0xF) + 24);
      v101 = (4 * *(v100 + 18) + 8) & 0x3C;
      v102 = (v79 >> v101) & 0xF;
      if (!*(v100 + 18))
      {
        if (v102)
        {
          *(&v361 + 1) = ((v102 - 1) << v101) | v79 & 0xFFFFFFFFFFFFF0FFLL;
          *&v362 = v100;
          v116 = v100;
          swift_unknownObjectRetain();
          swift_unknownObjectRetain();
          swift_unknownObjectRetain();
          swift_unknownObjectRetain();
          swift_unknownObjectRetain();
LABEL_176:
          v68 = v322;
          v72 = v340;
          goto LABEL_188;
        }

        v338 = v97;
        v342 = (v79 >> v97) & 0xF;
        v344 = v93;
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
LABEL_122:
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
LABEL_123:
        if (v342)
        {
          *(&v361 + 1) = *(&v361 + 1) & ((-15 << v338) - 1) | ((v342 - 1) << v338);
          v129 = *(v343 + 24 * v342);
          swift_unknownObjectRetain();
          v130 = specialized Rope._Node.descendToLastItem(under:)(&v361 + 1, v129);
          swift_unknownObjectRelease();
          v116 = v130;
          *&v362 = v130;
          swift_unknownObjectRelease();
          goto LABEL_125;
        }

        swift_unknownObjectRelease();
        v126 = v344;
        if (v94)
        {
          goto LABEL_115;
        }

        goto LABEL_127;
      }

      v103 = *(v100 + 16);
      *(&v337 + 1) = *(v96 + 24 * ((v79 >> v97) & 0xF) + 24);
      if (v102 >= v103)
      {
        goto LABEL_173;
      }

      v104 = *(v100 + 24 * ((v79 >> v101) & 0xF) + 24);
      v105 = (4 * *(v104 + 18) + 8) & 0x3C;
      v106 = (v79 >> v105) & 0xF;
      if (!*(v104 + 18))
      {
        if (v106)
        {
          *(&v361 + 1) = ((v106 - 1) << v105) | v79 & 0xFFFFFFFFFFFFF0FFLL;
          *&v362 = v104;
          v116 = v104;
          swift_unknownObjectRetain();
          swift_unknownObjectRetain();
          swift_unknownObjectRetain();
          swift_unknownObjectRetain();
          swift_unknownObjectRetain();
          swift_unknownObjectRetain();
LABEL_182:
          v68 = v322;
          v72 = v340;
          goto LABEL_187;
        }

LABEL_173:
        v317 = v101;
        v335 = (v79 >> v101) & 0xF;
        v338 = v97;
        v342 = (v79 >> v97) & 0xF;
        v344 = v93;
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
LABEL_174:
        if (v335)
        {
          *(&v361 + 1) = *(&v361 + 1) & ((-15 << v317) - 1) | ((v335 - 1) << v317);
          v166 = *(*(&v337 + 1) + 24 * v335);
          swift_unknownObjectRetain();
          v167 = specialized Rope._Node.descendToLastItem(under:)(&v361 + 1, v166);
          swift_unknownObjectRelease();
          v116 = v167;
          *&v362 = v167;
          swift_unknownObjectRelease();
          goto LABEL_176;
        }

        swift_unknownObjectRelease();
        goto LABEL_123;
      }

      v107 = *(v104 + 16);
      v344 = v93;
      v342 = (v79 >> v97) & 0xF;
      v338 = v97;
      v313 = v104;
      v335 = (v79 >> v101) & 0xF;
      v317 = v101;
      v309 = v105;
      v310 = (v79 >> v105) & 0xF;
      if (v106 >= v107)
      {
        goto LABEL_180;
      }

      v108 = *(v104 + 24 * ((v79 >> v105) & 0xF) + 24);
      v109 = (4 * *(v108 + 18) + 8) & 0x3C;
      v110 = (v79 >> v109) & 0xF;
      if (!*(v108 + 18))
      {
        if (v110)
        {
          *(&v361 + 1) = ((v110 - 1) << v109) | v79 & 0xFFFFFFFFFFFFF0FFLL;
          *&v362 = v108;
          v116 = v108;
          swift_unknownObjectRetain();
          swift_unknownObjectRetain();
          swift_unknownObjectRetain();
          swift_unknownObjectRetain();
          swift_unknownObjectRetain();
          swift_unknownObjectRetain();
          swift_unknownObjectRetain();
          goto LABEL_186;
        }

LABEL_180:
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        v169 = v309;
        v168 = v310;
        if (v310)
        {
          goto LABEL_181;
        }

        goto LABEL_193;
      }

      v306 = (4 * *(v108 + 18) + 8) & 0x3C;
      v307 = (v79 >> v109) & 0xF;
      v111 = *(v108 + 16);
      v308 = v108;
      if (v110 >= v111)
      {
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
      }

      else
      {
        v112 = (v108 + 24 * ((v79 >> v109) & 0xF));
        v113 = v112[3];
        v305 = v112[4];
        v114 = v112[5];
        v303 = v113;
        v304 = v114;
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        v115 = v303;
        swift_unknownObjectRetain();
        LODWORD(v305) = specialized Rope._Node.formPredecessor(of:)(&v361, v115);
        swift_unknownObjectRelease();
        if (v305)
        {
          swift_unknownObjectRelease();
          v116 = v362;
          goto LABEL_186;
        }
      }

      if (!v307)
      {
        swift_unknownObjectRelease();
        v92 = v345;
        v169 = v309;
        v168 = v310;
        if (v310)
        {
LABEL_181:
          *(&v361 + 1) = *(&v361 + 1) & ((-15 << v169) - 1) | ((v168 - 1) << v169);
          v170 = *(v313 + 24 * v168);
          swift_unknownObjectRetain();
          v171 = specialized Rope._Node.descendToLastItem(under:)(&v361 + 1, v170);
          swift_unknownObjectRelease();
          v116 = v171;
          *&v362 = v171;
          swift_unknownObjectRelease();
          goto LABEL_182;
        }

LABEL_193:
        swift_unknownObjectRelease();
        goto LABEL_174;
      }

      *(&v361 + 1) = *(&v361 + 1) & ((-15 << v306) - 1) | ((v307 - 1) << v306);
      v172 = *(v308 + 24 * v307);
      swift_unknownObjectRetain();
      v173 = specialized Rope._Node.descendToLastItem(under:)(&v361 + 1, v172);
      swift_unknownObjectRelease();
      v116 = v173;
      *&v362 = v173;
      swift_unknownObjectRelease();
LABEL_186:
      v68 = v322;
      v72 = v340;
      swift_unknownObjectRelease();
LABEL_187:
      swift_unknownObjectRelease();
LABEL_188:
      swift_unknownObjectRelease();
LABEL_189:
      swift_unknownObjectRelease();
LABEL_190:
      swift_unknownObjectRelease();
LABEL_191:
      swift_unknownObjectRelease();
LABEL_133:
      swift_unknownObjectRelease();
      if (v361 != v337)
      {
        goto LABEL_302;
      }

      v82 = *(&v361 + 1);
      v335 = v116;
      if (v116)
      {
LABEL_135:
        v133 = (4 * *(v335 + 18) + 8) & 0x3C;
        *(&v337 + 1) = v82;
        v120 = *(v335 + 24 * ((v82 >> v133) & 0xF) + 24);

        swift_unknownObjectRelease();
        v121 = 0;
        goto LABEL_136;
      }

LABEL_94:
      v117 = *(v77 + 18);
      if (((v82 >> ((4 * v117 + 8) & 0x3C)) & 0xF) >= *(v77 + 16))
      {
        goto LABEL_311;
      }

      *(&v337 + 1) = v82;
      v118 = v77 + 24;
      if (v117)
      {
        v119 = *(v118 + 24 * ((v82 >> ((4 * v117 + 8) & 0x3C)) & 0xF));
        swift_unknownObjectRetain();
        v120 = specialized Rope._Node.subscript.getter(*(&v337 + 1), v119);
        swift_unknownObjectRelease();
      }

      else
      {
        v120 = *(v118 + 24 * ((v82 >> ((4 * v117 + 8) & 0x3C)) & 0xF));
      }

      swift_unknownObjectRelease();

      v335 = 0;
      v121 = 1;
      v68 = v322;
LABEL_136:
      if (__OFSUB__(v68, v120))
      {
        goto LABEL_303;
      }

      if (v337 != v336[12])
      {
LABEL_304:
        __break(1u);
LABEL_305:
        __break(1u);
LABEL_306:
        __break(1u);
LABEL_307:
        __break(1u);
        goto LABEL_308;
      }

      v313 = v68 - v120;
      if ((v121 & 1) == 0)
      {
        v140 = v335 + 24 * ((*(&v337 + 1) >> ((4 * *(v335 + 18) + 8) & 0x3C)) & 0xFLL);
        v138 = *(v140 + 32);
        v141 = *(v140 + 40);
        goto LABEL_144;
      }

      v134 = v336[9];
      if (((*(&v337 + 1) >> ((4 * *(v134 + 18) + 8) & 0x3C)) & 0xFuLL) >= *(v134 + 16))
      {
        goto LABEL_307;
      }

      v135 = v134 + 24;
      if (*(v134 + 18))
      {
        v136 = *(v135 + 24 * ((*(&v337 + 1) >> ((4 * *(v134 + 18) + 8) & 0x3C)) & 0xFLL));
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        specialized Rope._Node.subscript.getter(*(&v337 + 1), v136);
        v138 = v137;
        v317 = v139;
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        goto LABEL_145;
      }

      v142 = v135 + 24 * ((*(&v337 + 1) >> ((4 * *(v134 + 18) + 8) & 0x3C)) & 0xFLL);
      v138 = *(v142 + 8);
      v141 = *(v142 + 16);
LABEL_144:

      v317 = v141;

LABEL_145:
      v143 = 0;
      --v333;
      v144 = v315;
      v338 = v138;
      while (2)
      {
        if (v143 >= *(v347 + 16))
        {
          goto LABEL_289;
        }

        v146 = *(v144 - 1);
        v145 = *v144;
        v348 = v144;
        if (*(v72 + 16))
        {

          v147 = specialized __RawDictionaryStorage.find<A>(_:)(v146, v145);
          if (v148)
          {
            outlined init with copy of AttributedString._AttributeValue(*(v72 + 56) + 72 * v147, &v374);
            if (!*(v138 + 16))
            {
LABEL_156:

LABEL_157:
              v373 = 0;
              memset(v372, 0, sizeof(v372));
              goto LABEL_158;
            }
          }

          else
          {
            v378 = 0;
            v376 = 0u;
            v377 = 0u;
            v374 = 0u;
            v375 = 0u;
            if (!*(v138 + 16))
            {
              goto LABEL_156;
            }
          }
        }

        else
        {
          v378 = 0;
          v376 = 0u;
          v377 = 0u;
          v374 = 0u;
          v375 = 0u;

          if (!*(v138 + 16))
          {
            goto LABEL_156;
          }
        }

        v149 = specialized __RawDictionaryStorage.find<A>(_:)(v146, v145);
        v151 = v150;

        if ((v151 & 1) == 0)
        {
          goto LABEL_157;
        }

        outlined init with copy of AttributedString._AttributeValue(*(v138 + 56) + 72 * v149, v372);
LABEL_158:
        outlined init with copy of AttributedString._AttributeValue?(&v374, &v361);
        outlined init with copy of AttributedString._AttributeValue?(v372, &v367);
        if (*(&v362 + 1))
        {
          outlined init with copy of AttributedString._AttributeValue?(&v361, v358);
          if (!*(&v368 + 1))
          {
            outlined destroy of TermOfAddress?(v372, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd, &_s10Foundation16AttributedStringV15_AttributeValueVSgMR);
            outlined destroy of TermOfAddress?(&v374, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd, &_s10Foundation16AttributedStringV15_AttributeValueVSgMR);
            outlined destroy of AttributedString._AttributeValue(v358);
LABEL_196:
            outlined destroy of TermOfAddress?(&v361, &_s10Foundation16AttributedStringV15_AttributeValueVSg_AFtMd, &_s10Foundation16AttributedStringV15_AttributeValueVSg_AFtMR);
LABEL_198:

            v36 = v336;
            v69 = v327;
            v68 = v322;
            goto LABEL_199;
          }

          v355 = v369;
          v356 = v370;
          v357 = v371;
          v353 = v367;
          v354 = v368;
          v152 = v359;
          v343 = v360;
          v344 = v143;
          v342 = __swift_project_boxed_opaque_existential_1(v358, v359);
          v153 = __swift_project_boxed_opaque_existential_1(&v353, *(&v354 + 1));
          v346 = &v302;
          v154 = *(v152 - 8);
          MEMORY[0x1EEE9AC00](v153);
          v156 = &v302 - ((v155 + 15) & 0xFFFFFFFFFFFFFFF0);
          v345 = &v302;
          v158 = MEMORY[0x1EEE9AC00](v157);
          (*(v160 + 16))(&v302 - ((v159 + 15) & 0xFFFFFFFFFFFFFFF0), v158);
          v161 = type metadata accessor for Optional();
          v162 = *(v161 - 8);
          MEMORY[0x1EEE9AC00](v161);
          v164 = &v302 - v163;
          if ((swift_dynamicCast() & 1) == 0)
          {
            outlined destroy of TermOfAddress?(v372, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd, &_s10Foundation16AttributedStringV15_AttributeValueVSgMR);
            outlined destroy of TermOfAddress?(&v374, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd, &_s10Foundation16AttributedStringV15_AttributeValueVSgMR);
            (*(v154 + 56))(v164, 1, 1, v152);
            (*(v162 + 8))(v164, v161);
            outlined destroy of AttributedString._AttributeValue(&v353);
            outlined destroy of AttributedString._AttributeValue(v358);
            outlined destroy of TermOfAddress?(&v361, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd, &_s10Foundation16AttributedStringV15_AttributeValueVSgMR);
            goto LABEL_198;
          }

          (*(v154 + 56))(v164, 0, 1, v152);
          (*(v154 + 32))(v156, v164, v152);
          v165 = dispatch thunk of static Equatable.== infix(_:_:)();
          (*(v154 + 8))(v156, v152);
          outlined destroy of TermOfAddress?(v372, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd, &_s10Foundation16AttributedStringV15_AttributeValueVSgMR);
          outlined destroy of TermOfAddress?(&v374, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd, &_s10Foundation16AttributedStringV15_AttributeValueVSgMR);
          outlined destroy of AttributedString._AttributeValue(&v353);
          outlined destroy of AttributedString._AttributeValue(v358);
          outlined destroy of TermOfAddress?(&v361, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd, &_s10Foundation16AttributedStringV15_AttributeValueVSgMR);
          v72 = v340;
          v138 = v338;
          v143 = v344;
          if ((v165 & 1) == 0)
          {
            goto LABEL_198;
          }
        }

        else
        {
          outlined destroy of TermOfAddress?(v372, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd, &_s10Foundation16AttributedStringV15_AttributeValueVSgMR);
          outlined destroy of TermOfAddress?(&v374, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd, &_s10Foundation16AttributedStringV15_AttributeValueVSgMR);
          if (*(&v368 + 1))
          {
            goto LABEL_196;
          }

          outlined destroy of TermOfAddress?(&v361, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd, &_s10Foundation16AttributedStringV15_AttributeValueVSgMR);
        }

        ++v143;
        v144 = (v348 + 16);
        if (v341 != v143)
        {
          continue;
        }

        break;
      }

      v68 = v313;
      if (v312 < v333)
      {
        continue;
      }

      break;
    }

    v68 = v313;

    v36 = v336;
    v69 = v327;
LABEL_199:
    v174 = (v334 >> 10);
    if (v68 >= (v339 >> 11))
    {
      v198 = *(v36 + 5);
      v418[3] = *(v36 + 3);
      v418[4] = v198;
      v418[5] = *(v36 + 7);
      swift_unknownObjectRetain();
      v199 = BigString.UTF8View.index(_:offsetBy:)();
      v201 = v200;
      v203 = v202;
      v205 = v204;
      swift_unknownObjectRelease();
      v206 = *v324;
      v207 = v324[1];
      v418[2] = v324[2];
      v418[1] = v207;
      v418[0] = v206;
      if (v174 < v199 >> 10)
      {
        goto LABEL_306;
      }

      v208 = v36;
      v210 = v36[3];
      v209 = v36[4];
      v211 = v208[5];
      v212 = v208[6];
      v213 = v208[7];
      v214 = v208[8];
      v339 = v199;
      v417[8] = v199;
      v331 = v203;
      v332 = v201;
      v417[9] = v201;
      v417[10] = v203;
      v330 = v205;
      v417[11] = v205;
      v417[12] = v334;
      v417[13] = v329;
      v417[14] = v69;
      v417[15] = v328;
      if ((v199 >> 10) == v174)
      {
        goto LABEL_261;
      }

      v346 = v211;
      v347 = v214;
      v348 = v213;
      v215 = v324[1];
      v419[0] = *v324;
      v419[1] = v215;
      v420 = *(v324 + 4);
      outlined init with copy of Rope<BigString._Chunk>._Node?(v419, &v361);
      v216 = MEMORY[0x1E69E7CD0];
      if (specialized Set.contains(_:)(0, 0, MEMORY[0x1E69E7CD0]))
      {
        if (v174 > BigString.startIndex.getter() >> 10)
        {
          v343 = v209;
          v344 = v210;
          v417[16] = v210;
          v417[17] = v209;
          v417[18] = v346;
          v342 = v212;
          v417[19] = v212;
          v417[20] = v348;
          v417[21] = v347;
          v217 = v334;
          v218 = v69;
          v219 = v329;
          v345 = v174;
          v220 = v328;
          v221 = BigString.UTF8View.index(before:)();
          v223 = v222;
          v225 = v224;
          v227 = v226;
          BigString.UTF8View.subscript.getter();
          if (v345 < v221 >> 10)
          {
            goto LABEL_313;
          }

          v417[0] = v221;
          v417[1] = v223;
          v417[2] = v225;
          v417[3] = v227;
          v417[4] = v217;
          v417[5] = v219;
          v417[6] = v218;
          v417[7] = v220;
          specialized BidirectionalCollection<>._getBlock(for:in:)(1, v417, &v361);
          outlined destroy of BigSubstring.UTF8View(&v383);
          v216 = MEMORY[0x1E69E7CD0];
          v228 = v332;
          v69 = v218;
          v210 = v344;
          v174 = v345;
          v212 = v342;
          v209 = v343;
          if (*(&v362 + 1) != 2)
          {
            v339 = v361;
            if (v345 < v361 >> 10)
            {
              goto LABEL_317;
            }

            v228 = *(&v361 + 1);
            v330 = *(&v362 + 1);
            v331 = v362;
          }

          goto LABEL_240;
        }

        v216 = MEMORY[0x1E69E7CD0];
      }

      v228 = v332;
LABEL_240:
      v403 = v339;
      v332 = v228;
      v404 = v228;
      v405 = v331;
      v406 = v330;
      v407 = v334;
      v408 = v329;
      v409 = v69;
      v410 = v328;
      if (specialized Collection<>._containsScalarConstraint.getter(v216))
      {
        v248 = v212;
        v249 = 0;
        v250 = 1 << *(v216 + 32);
        if (v250 < 64)
        {
          v251 = ~(-1 << v250);
        }

        else
        {
          v251 = -1;
        }

        v252 = v251 & *(v216 + 56);
        v253 = (v250 + 63) >> 6;
        v254 = MEMORY[0x1E69E7CC0];
        while (v252)
        {
LABEL_250:
          v256 = __clz(__rbit64(v252));
          v252 &= v252 - 1;
          v257 = (*(v216 + 48) + ((v249 << 10) | (16 * v256)));
          v258 = v257[1];
          if (v258 >= 2)
          {
            v259 = specialized Collection.first.getter(*v257, v258);
            if ((v259 & 0x100000000) == 0)
            {
              v345 = v259;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v254 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v254 + 2) + 1, 1, v254);
              }

              v261 = *(v254 + 2);
              v260 = *(v254 + 3);
              v262 = v261 + 1;
              v263 = v345;
              if (v261 >= v260 >> 1)
              {
                v344 = v261 + 1;
                v264 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v260 > 1), v261 + 1, 1, v254);
                v262 = v344;
                v263 = v345;
                v254 = v264;
              }

              *(v254 + 2) = v262;
              *&v254[4 * v261 + 32] = v263;
              v216 = MEMORY[0x1E69E7CD0];
            }
          }
        }

        while (1)
        {
          v255 = v249 + 1;
          if (__OFADD__(v249, 1))
          {
            break;
          }

          if (v255 >= v253)
          {

            v411 = v210;
            v412 = v209;
            v413 = v346;
            v414 = v248;
            v415 = v348;
            v416 = v347;
            BigString.UnicodeScalarView.subscript.getter();
            v265 = v385 >> 10;
            if (v385 >> 10 == v386 >> 10)
            {

              outlined destroy of BigSubstring.UnicodeScalarView(v384);
              goto LABEL_259;
            }

            v275 = BigSubstring.UnicodeScalarView.index(before:)();
            v277 = v276;
            v279 = v278;
            v281 = v280;
            v282 = BigSubstring.UnicodeScalarView.subscript.getter();
            if (!specialized Sequence<>.contains(_:)(v282, v254))
            {
              while (v265 < v275 >> 10)
              {
                v291 = v281;
                v346 = v275;
                v347 = v277;
                v348 = v279;
                v275 = BigSubstring.UnicodeScalarView.index(before:)();
                v277 = v292;
                v279 = v293;
                v281 = v294;
                v295 = BigSubstring.UnicodeScalarView.subscript.getter();
                v296 = *(v254 + 2);
                v297 = 32;
                while (v296)
                {
                  v298 = *&v254[v297];
                  v297 += 4;
                  --v296;
                  if (v298 == v295)
                  {
                    outlined destroy of BigString(v418);

                    outlined destroy of BigSubstring.UnicodeScalarView(v384);
                    v275 = v346;
                    v277 = v347;
                    v279 = v348;
                    v281 = v291;
                    goto LABEL_280;
                  }
                }
              }

              outlined destroy of BigString(v418);

              v299 = v384;
LABEL_284:
              outlined destroy of BigSubstring.UnicodeScalarView(v299);
              goto LABEL_261;
            }

            outlined destroy of BigSubstring.UnicodeScalarView(v384);
            outlined destroy of BigString(v418);
LABEL_280:
            v339 = v275;
            v331 = v279;
            v332 = v277;
            v330 = v281;
            v266 = v325;
            if (v174 >= v275 >> 10)
            {
              goto LABEL_262;
            }

            goto LABEL_315;
          }

          v252 = *(v216 + 8 * v255 + 56);
          ++v249;
          if (v252)
          {
            v249 = v255;
            goto LABEL_250;
          }
        }

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
        goto LABEL_301;
      }

LABEL_259:
      v247 = v418;
      goto LABEL_260;
    }

    v175 = *v324;
    v176 = v324[1];
    v402[2] = v324[2];
    v402[1] = v176;
    v402[0] = v175;
    v177 = MEMORY[0x1E69E7CD0];
    if (v174 < v339 >> 10)
    {
      goto LABEL_305;
    }

    v179 = v36[3];
    v178 = v36[4];
    v180 = v36;
    v181 = v36[5];
    v182 = v36[6];
    v184 = v180[7];
    v183 = v180[8];
    v401[8] = v339;
    v401[9] = v332;
    v401[10] = v331;
    v401[11] = v330;
    v401[12] = v334;
    v401[13] = v329;
    v401[14] = v69;
    v401[15] = v328;
    if ((v339 >> 10) == v174)
    {
      goto LABEL_261;
    }

    v185 = v324[1];
    v421[0] = *v324;
    v421[1] = v185;
    v422 = *(v324 + 4);
    outlined init with copy of Rope<BigString._Chunk>._Node?(v421, &v361);
    if (specialized Set.contains(_:)(0, 0, v177))
    {
      break;
    }

LABEL_217:
    v197 = v332;
LABEL_218:
    v387 = v339;
    v332 = v197;
    v388 = v197;
    v389 = v331;
    v390 = v330;
    v391 = v334;
    v392 = v329;
    v393 = v69;
    v394 = v328;
    if (specialized Collection<>._containsScalarConstraint.getter(v177))
    {
      v229 = v179;
      v346 = v178;
      v347 = v181;
      v348 = v183;
      v230 = 0;
      v231 = 1 << *(v177 + 32);
      if (v231 < 64)
      {
        v232 = ~(-1 << v231);
      }

      else
      {
        v232 = -1;
      }

      v233 = v232 & *(v177 + 56);
      v234 = (v231 + 63) >> 6;
      v235 = MEMORY[0x1E69E7CC0];
      while (v233)
      {
LABEL_228:
        v237 = __clz(__rbit64(v233));
        v233 &= v233 - 1;
        v238 = (*(v177 + 48) + ((v230 << 10) | (16 * v237)));
        v239 = v238[1];
        if (v239 >= 2)
        {
          v240 = specialized Collection.first.getter(*v238, v239);
          if ((v240 & 0x100000000) == 0)
          {
            v345 = v240;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v235 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v235 + 2) + 1, 1, v235);
            }

            v242 = *(v235 + 2);
            v241 = *(v235 + 3);
            v243 = v242 + 1;
            v244 = v345;
            if (v242 >= v241 >> 1)
            {
              v344 = v242 + 1;
              v245 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v241 > 1), v242 + 1, 1, v235);
              v243 = v344;
              v244 = v345;
              v235 = v245;
            }

            *(v235 + 2) = v243;
            *&v235[4 * v242 + 32] = v244;
            v177 = MEMORY[0x1E69E7CD0];
          }
        }
      }

      while (1)
      {
        v236 = v230 + 1;
        if (__OFADD__(v230, 1))
        {
          goto LABEL_291;
        }

        if (v236 >= v234)
        {

          v395 = v229;
          v396 = v346;
          v397 = v347;
          v398 = v182;
          v399 = v184;
          v400 = v348;
          BigString.UnicodeScalarView.subscript.getter();
          v246 = v381 >> 10;
          if (v381 >> 10 == v382 >> 10)
          {

            outlined destroy of BigSubstring.UnicodeScalarView(v380);
            break;
          }

          v267 = BigSubstring.UnicodeScalarView.index(before:)();
          v269 = v268;
          v271 = v270;
          v273 = v272;
          v274 = BigSubstring.UnicodeScalarView.subscript.getter();
          if (!specialized Sequence<>.contains(_:)(v274, v235))
          {
            while (v246 < v267 >> 10)
            {
              v283 = v273;
              v346 = v267;
              v347 = v269;
              v348 = v271;
              v267 = BigSubstring.UnicodeScalarView.index(before:)();
              v269 = v284;
              v271 = v285;
              v273 = v286;
              v287 = BigSubstring.UnicodeScalarView.subscript.getter();
              v288 = *(v235 + 2);
              v289 = 32;
              while (v288)
              {
                v290 = *&v235[v289];
                v289 += 4;
                --v288;
                if (v290 == v287)
                {
                  outlined destroy of BigString(v402);

                  outlined destroy of BigSubstring.UnicodeScalarView(v380);
                  v267 = v346;
                  v269 = v347;
                  v271 = v348;
                  v273 = v283;
                  goto LABEL_273;
                }
              }
            }

            outlined destroy of BigString(v402);

            v299 = v380;
            goto LABEL_284;
          }

          outlined destroy of BigSubstring.UnicodeScalarView(v380);
          outlined destroy of BigString(v402);
LABEL_273:
          v339 = v267;
          v331 = v271;
          v332 = v269;
          v330 = v273;
          v266 = v325;
          if (v174 >= v267 >> 10)
          {
            goto LABEL_262;
          }

          goto LABEL_314;
        }

        v233 = *(v177 + 8 * v236 + 56);
        ++v230;
        if (v233)
        {
          v230 = v236;
          goto LABEL_228;
        }
      }
    }

    v247 = v402;
LABEL_260:
    outlined destroy of BigString(v247);
LABEL_261:
    v266 = v325;
LABEL_262:
    v19 = v266 - 1;
    v4 = v352;
    if (v19 <= v314)
    {
      v13 = v336[2];
      v15 = v311;
      v300 = v332;
      *v311 = v339;
      *(v15 + 1) = v300;
      v301 = v330;
      *(v15 + 2) = v331;
      *(v15 + 3) = v301;
LABEL_5:
      *(v15 + 4) = v13;
      return;
    }
  }

  if (v174 <= BigString.startIndex.getter() >> 10)
  {
    v177 = MEMORY[0x1E69E7CD0];
    goto LABEL_217;
  }

  v342 = v179;
  v343 = v184;
  v401[16] = v179;
  v346 = v178;
  v347 = v181;
  v401[17] = v178;
  v401[18] = v181;
  v344 = v182;
  v345 = v174;
  v401[19] = v182;
  v401[20] = v184;
  v348 = v183;
  v401[21] = v183;
  v186 = v334;
  v187 = v69;
  v188 = v328;
  v189 = v329;
  v190 = BigString.UTF8View.index(before:)();
  v192 = v191;
  v194 = v193;
  v196 = v195;
  BigString.UTF8View.subscript.getter();
  if (v345 < v190 >> 10)
  {
    goto LABEL_312;
  }

  v401[0] = v190;
  v401[1] = v192;
  v401[2] = v194;
  v401[3] = v196;
  v401[4] = v186;
  v401[5] = v189;
  v401[6] = v187;
  v401[7] = v188;
  specialized BidirectionalCollection<>._getBlock(for:in:)(1, v401, &v361);
  outlined destroy of BigSubstring.UTF8View(&v379);
  v177 = MEMORY[0x1E69E7CD0];
  v197 = v332;
  v69 = v187;
  v182 = v344;
  v174 = v345;
  v179 = v342;
  v184 = v343;
  v181 = v347;
  v183 = v348;
  v178 = v346;
  if (*(&v362 + 1) == 2)
  {
    goto LABEL_218;
  }

  v339 = v361;
  if (v345 >= v361 >> 10)
  {
    v197 = *(&v361 + 1);
    v330 = *(&v362 + 1);
    v331 = v362;
    goto LABEL_218;
  }

LABEL_316:
  __break(1u);
LABEL_317:
  __break(1u);
}

uint64_t *specialized BidirectionalCollection.index(_:offsetBy:)@<X0>(uint64_t *result@<X0>, unint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, int64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v8 = *result;
  v7 = result[1];
  v10 = result[2];
  v9 = result[3];
  v11 = result[4];
  v104 = a3;
  if ((a2 & 0x8000000000000000) == 0)
  {
    if (!a2)
    {
LABEL_152:
      *a6 = v8;
      a6[1] = v7;
      a6[2] = v10;
      a6[3] = v9;
      a6[4] = v11;
      return result;
    }

    v6 = 0;
    while (1)
    {
      v12 = a3[9];
      v13 = a3[12];
      v111 = v8;
      v112 = v7;
      v113 = v10;
      v14 = __OFADD__(v9, 1);
      v15 = v9 + 1;
      if (v14)
      {
        goto LABEL_158;
      }

      if (v8 != v13)
      {
        goto LABEL_159;
      }

      v105 = v6;
      if (v10)
      {
        v16 = v10[3 * ((v7 >> ((4 * *(v10 + 18) + 8) & 0x3C)) & 0xF) + 3];
        v14 = __OFADD__(v11, v16);
        v11 += v16;
        if (v14)
        {
          goto LABEL_163;
        }

        if (!v12)
        {
          goto LABEL_157;
        }

        v6 = v15;
        v17 = v8;
        v18 = v7;
        swift_unknownObjectRetain();
        v19 = v18;
      }

      else
      {
        v6 = v15;
        v17 = v8;
        v20 = v7;
        swift_unknownObjectRetain();
        v21 = v20;
        v22 = specialized Rope._Node.subscript.getter(v20, v12);

        v14 = __OFADD__(v11, v22);
        v11 += v22;
        if (v14)
        {
          goto LABEL_164;
        }

        v19 = v21;
        if (!v12)
        {
          goto LABEL_157;
        }
      }

      if (v19 >= (((-15 << ((4 * *(v12 + 18) + 8) & 0x3C)) - 1) & *(v12 + 18) | (*(v12 + 16) << ((4 * *(v12 + 18) + 8) & 0x3C))))
      {
        goto LABEL_157;
      }

      if (v10 && (v23 = (4 * *(v10 + 18) + 8) & 0x3C, v24 = ((v19 >> v23) & 0xF) + 1, v24 < *(v10 + 8)))
      {
        v25 = v19;
        result = swift_unknownObjectRelease();
        v26 = ((-15 << v23) - 1) & v25;
        v27 = v24 << v23;
      }

      else
      {
        if (specialized Rope._Node.formSuccessor(of:)(&v111, v12))
        {
          result = swift_unknownObjectRelease();
          v8 = v111;
          v7 = v112;
          v10 = v113;
          goto LABEL_22;
        }

        v28 = *(v12 + 18);
        v29 = *(v12 + 16);
        result = swift_unknownObjectRelease();
        v10 = 0;
        v30 = (4 * v28 + 8) & 0x3C;
        v27 = ((-15 << v30) - 1) & v28;
        v26 = v29 << v30;
      }

      v7 = v27 | v26;
      v8 = v17;
LABEL_22:
      a3 = v104;
      if (v11 < a5)
      {
        v9 = v6;
        v6 = v105;
      }

      else
      {
        v31 = v104[9];
        v32 = a4;
        v6 = v105;
        if (a4 == a5)
        {
          if (v31)
          {
            v33 = v104[11];
          }

          else
          {
            v33 = 0;
          }

          if (a4 < 0 || v33 < a4)
          {
            goto LABEL_172;
          }

          v108 = v104[12];
          if (v31)
          {
            v34 = v104[10];
            v35 = (v31 + 16);
            v36 = *(v31 + 16);
            v37 = *(v31 + 18);
            if (*(v31 + 16) && v104[11] > a4)
            {
              v96 = v104[10];
              result = swift_unknownObjectRetain_n();
              if (!v37)
              {
                v38 = 0;
                v10 = v31;
LABEL_54:
                v48 = 0;
                v49 = 3;
                v45 = v32;
                while (1)
                {
                  v50 = v10[v49];
                  v32 = v45 - v50;
                  if (__OFSUB__(v45, v50))
                  {
                    goto LABEL_160;
                  }

                  if (__OFADD__(v32, 1))
                  {
                    goto LABEL_161;
                  }

                  if (v32 + 1 < 1)
                  {
                    goto LABEL_62;
                  }

                  ++v48;
                  v49 += 3;
                  v45 -= v50;
                  if (v36 == v48)
                  {
                    v48 = v36;
                    goto LABEL_60;
                  }
                }
              }

              v38 = v37;
              v39 = v31;
              do
              {
                v40 = *v35;
                if (*v35)
                {
                  v41 = 0;
                  v42 = (v39 + 40);
                  while (1)
                  {
                    v43 = *v42;
                    v42 += 3;
                    v44 = v32 - v43;
                    if (__OFSUB__(v32, v43))
                    {
                      goto LABEL_154;
                    }

                    if (__OFADD__(v44, 1))
                    {
                      goto LABEL_155;
                    }

                    if (v44 + 1 < 1)
                    {
                      v40 = v41;
                      goto LABEL_35;
                    }

                    ++v41;
                    v32 = v44;
                    if (v40 == v41)
                    {
                      goto LABEL_44;
                    }
                  }
                }

                v44 = v32;
LABEL_44:
                if (v44)
                {
                  goto LABEL_162;
                }

                v32 = 0;
LABEL_35:
                v38 = (v40 << ((4 * v37 + 8) & 0x3C)) | ((-15 << ((4 * v37 + 8) & 0x3C)) - 1) & v38;
                v10 = *(v39 + 24 + 24 * v40);
                swift_unknownObjectRetain();
                result = swift_unknownObjectRelease();
                v35 = v10 + 2;
                LOBYTE(v37) = *(v10 + 18);
                v39 = v10;
              }

              while (v37);
              LODWORD(v36) = *v35;
              if (*v35)
              {
                goto LABEL_54;
              }

              v48 = 0;
LABEL_60:
              if (!v32)
              {
                v45 = 0;
LABEL_62:
                swift_unknownObjectRelease();
                v47 = v38 & 0xFFFFFFFFFFFFF0FFLL | (v48 << 8);
                v32 = a4;
                v34 = v96;
                goto LABEL_63;
              }

              goto LABEL_177;
            }

            swift_unknownObjectRetain();
            v47 = ((-15 << ((4 * v37 + 8) & 0x3C)) - 1) & v37 | (v36 << ((4 * v37 + 8) & 0x3C));
            v45 = 0;
            v10 = 0;
LABEL_63:
            v46 = v47;
            v9 = specialized Rope._Node.distanceFromStart<A>(to:in:)(v108, v47, v10, v31, v34);
            result = swift_unknownObjectRelease();
            a3 = v104;
          }

          else
          {
            v45 = 0;
            v10 = 0;
            v46 = 0;
            v9 = 0;
          }

          v14 = __OFSUB__(v32, v45);
          v11 = v32 - v45;
          if (v14)
          {
            goto LABEL_173;
          }

          v8 = v108;
          v7 = v46;
        }

        else
        {
          v8 = v104[12];
          if (v31)
          {
            v10 = 0;
            v9 = v104[10];
            v11 = v104[11];
            v7 = ((-15 << ((4 * *(v31 + 18) + 8) & 0x3C)) - 1) & *(v31 + 18) | (*(v31 + 16) << ((4 * *(v31 + 18) + 8) & 0x3C));
          }

          else
          {
            v7 = 0;
            v10 = 0;
            v9 = 0;
            v11 = 0;
          }
        }
      }

      if (++v6 == a2)
      {
        goto LABEL_152;
      }
    }
  }

  v51 = a5;
  v52 = 0;
  while (1)
  {
    v56 = a3[9];
    if (v56)
    {
      if (v11 != a3[11])
      {
        goto LABEL_90;
      }
    }

    else if (v11)
    {
LABEL_90:
      v67 = a3[12];
      v111 = v8;
      v112 = v7;
      v113 = v10;
      v14 = __OFSUB__(v9--, 1);
      if (v14)
      {
        goto LABEL_165;
      }

      if (v8 != v67)
      {
        goto LABEL_166;
      }

      v109 = v8;
      if (v56)
      {
        v6 = *(v56 + 18);
        v68 = v11;
        v69 = v7;
        result = swift_unknownObjectRetain();
        v7 = v69;
        v11 = v68;
        if (v6 >= v7)
        {
          goto LABEL_167;
        }
      }

      else
      {
        v6 = 0;
        if (!v7)
        {
          goto LABEL_167;
        }
      }

      if (v10)
      {
        v70 = (4 * *(v10 + 18) + 8) & 0x3C;
        if (((v7 >> v70) & 0xF) != 0)
        {
          v53 = ((((v7 >> v70) & 0xF) - 1) << v70) | ((-15 << v70) - 1) & v7;
          v6 = a2;
          goto LABEL_68;
        }
      }

      v71 = (4 * *(v56 + 18) + 8) & 0x3C;
      v6 = (v7 >> v71) & 0xF;
      if (!*(v56 + 18))
      {
        if (!v6)
        {
          goto LABEL_175;
        }

        v53 = ((v6 - 1) << v71) | v7 & 0xFFFFFFFFFFFFF0FFLL;
        v10 = v56;
        v51 = a5;
        v6 = a2;
        if (!v56)
        {
          goto LABEL_132;
        }

        goto LABEL_68;
      }

      if (v6 < *(v56 + 16))
      {
        v72 = *(v56 + 24 * ((v7 >> v71) & 0xF) + 24);
        v73 = (4 * *(v72 + 18) + 8) & 0x3C;
        v74 = (v7 >> v73) & 0xF;
        if (*(v72 + 18))
        {
          if (v74 >= *(v72 + 16))
          {
            v107 = (4 * *(v72 + 18) + 8) & 0x3C;
            swift_unknownObjectRetain();
            swift_unknownObjectRetain();
            goto LABEL_135;
          }

          v100 = (v7 >> v73) & 0xF;
          v10 = *(v72 + 24 * v100 + 24);
          v75 = (4 * *(v10 + 18) + 8) & 0x3C;
          v76 = (v7 >> v75) & 0xF;
          if (*(v10 + 18))
          {
            if (v76 < *(v10 + 8))
            {
              v77 = *(v72 + 24 * ((v7 >> v73) & 0xF) + 24);
              v10 = v10[3 * ((v7 >> v75) & 0xF) + 3];
              v78 = *(v10 + 18);
              v79 = (4 * v78 + 8) & 0x3C;
              v80 = (v7 >> v79) & 0xF;
              v110 = v80;
              v93 = v77;
              if (v78)
              {
                v94 = v75;
                v95 = (v7 >> v75) & 0xF;
                v107 = v73;
                v92 = v78;
                swift_unknownObjectRetain();
                v97 = v72;
                swift_unknownObjectRetain();
                swift_unknownObjectRetain();
                swift_unknownObjectRetain();
                v81 = specialized closure #1 in Rope._Node.formPredecessor(of:)(v10 + 8, (v10 + 3), &v110, &v111, v92);
                swift_unknownObjectRelease();
                v10 = v93;
                if (v81)
                {
                  v10 = v113;
                  goto LABEL_144;
                }

LABEL_148:
                if (v95)
                {
                  v112 = v112 & ((-15 << v94) - 1) | ((v95 - 1) << v94);
                  v91 = v10[3 * v95];
                  swift_unknownObjectRetain();
                  v10 = specialized Rope._Node.descendToLastItem(under:)(&v112, v91);
                  swift_unknownObjectRelease();
                  v113 = v10;
                  swift_unknownObjectRelease();
                  v51 = a5;
                  v6 = a2;
LABEL_150:
                  swift_unknownObjectRelease();
LABEL_130:
                  swift_unknownObjectRelease();
                  if (v111 != v109)
                  {
                    goto LABEL_168;
                  }

                  v53 = v112;
                  if (!v10)
                  {
LABEL_132:
                    v54 = v53;
                    v89 = specialized Rope._Node.subscript.getter(v53, v56);
                    swift_unknownObjectRelease();

                    v14 = __OFSUB__(v11, v89);
                    v11 -= v89;
                    if (v14)
                    {
                      goto LABEL_176;
                    }

                    v10 = 0;
                    v51 = a5;
                    goto LABEL_69;
                  }

LABEL_68:
                  v54 = v53;
                  v55 = v10[3 * ((v53 >> ((4 * *(v10 + 18) + 8) & 0x3C)) & 0xF) + 3];

                  result = swift_unknownObjectRelease();
                  v14 = __OFSUB__(v11, v55);
                  v11 -= v55;
                  if (v14)
                  {
                    goto LABEL_170;
                  }

LABEL_69:
                  a3 = v104;
                  goto LABEL_70;
                }

                swift_unknownObjectRelease();
                v72 = v97;
                v74 = v100;
LABEL_135:
                if (v74)
                {
                  v112 = v112 & ((-15 << v107) - 1) | ((v74 - 1) << v107);
                  v90 = *(v72 + 24 * v74);
                  swift_unknownObjectRetain();
                  v10 = specialized Rope._Node.descendToLastItem(under:)(&v112, v90);
                  swift_unknownObjectRelease();
LABEL_128:
                  swift_unknownObjectRelease();
LABEL_129:
                  v51 = a5;
                  v6 = a2;
                  goto LABEL_130;
                }

                swift_unknownObjectRelease();
                if (!v6)
                {
                  goto LABEL_174;
                }

LABEL_127:
                v112 = v112 & ((-15 << v71) - 1) | ((v6 - 1) << v71);
                v88 = *(v56 + 24 * v6);
                swift_unknownObjectRetain();
                v10 = specialized Rope._Node.descendToLastItem(under:)(&v112, v88);
                goto LABEL_128;
              }

              if (v80)
              {
                v112 = ((v80 - 1) << v79) | v7 & 0xFFFFFFFFFFFFF0FFLL;
                v113 = v10;
                swift_unknownObjectRetain();
                swift_unknownObjectRetain();
                swift_unknownObjectRetain();
LABEL_144:
                swift_unknownObjectRelease();
                goto LABEL_145;
              }

              v10 = v77;
            }

            v94 = v75;
            v95 = (v7 >> v75) & 0xF;
            v107 = v73;
            swift_unknownObjectRetain();
            v97 = v72;
            swift_unknownObjectRetain();
            swift_unknownObjectRetain();
            goto LABEL_148;
          }

          if (!v76)
          {
            v107 = (4 * *(v72 + 18) + 8) & 0x3C;
            swift_unknownObjectRetain();
            swift_unknownObjectRetain();
            v74 = v100;
            goto LABEL_135;
          }

          v112 = ((v76 - 1) << v75) | v7 & 0xFFFFFFFFFFFFF0FFLL;
          v113 = v10;
          swift_unknownObjectRetain();
          swift_unknownObjectRetain();
LABEL_145:
          v51 = a5;
          v6 = a2;
          goto LABEL_150;
        }

        if (v74)
        {
          v112 = ((v74 - 1) << v73) | v7 & 0xFFFFFFFFFFFFF0FFLL;
          swift_unknownObjectRetain();
          v10 = v72;
          goto LABEL_129;
        }
      }

      swift_unknownObjectRetain();
      if (!v6)
      {
        goto LABEL_174;
      }

      goto LABEL_127;
    }

    if (v56)
    {
      v57 = a3[11];
    }

    else
    {
      v57 = 0;
    }

    if (v51 < 0 || v57 < v51)
    {
      goto LABEL_169;
    }

    v109 = a3[12];
    if (v56)
    {
      break;
    }

    v6 = 0;
    v10 = 0;
    v54 = 0;
    v9 = 0;
LABEL_122:
    v11 = v51 - v6;
    if (__OFSUB__(v51, v6))
    {
      goto LABEL_171;
    }

    v6 = a2;
LABEL_70:
    --v52;
    v8 = v109;
    v7 = v54;
    if (v52 <= v6)
    {
      goto LABEL_152;
    }
  }

  v58 = a3[10];
  v60 = (v56 + 16);
  v59 = *(v56 + 16);
  v61 = *(v56 + 18);
  if (!*(v56 + 16))
  {
    swift_unknownObjectRetain();
    v82 = ((-15 << ((4 * v61 + 8) & 0x3C)) - 1) & v61;
    v6 = 0;
    v10 = 0;
LABEL_121:
    v54 = v82;
    v9 = specialized Rope._Node.distanceFromStart<A>(to:in:)(v109, v82, v10, v56, v58);
    result = swift_unknownObjectRelease();
    a3 = v104;
    goto LABEL_122;
  }

  v106 = a3[10];
  result = swift_unknownObjectRetain_n();
  if (!v61)
  {
    v62 = 0;
    v6 = v51;
    v10 = v56;
    goto LABEL_115;
  }

  v6 = v51;
  v62 = v61;
  v63 = v56;
  while (2)
  {
    if (!*v60)
    {
      goto LABEL_178;
    }

    v64 = 0;
    v65 = (v63 + 40);
    while (1)
    {
      v66 = v6 - *v65;
      if (__OFSUB__(v6, *v65))
      {
        __break(1u);
LABEL_154:
        __break(1u);
LABEL_155:
        __break(1u);
        goto LABEL_156;
      }

      if (v66 < 1)
      {
        break;
      }

      ++v64;
      v65 += 3;
      v6 = v66;
      if (*v60 == v64)
      {
        goto LABEL_180;
      }
    }

    v62 = (v64 << ((4 * v61 + 8) & 0x3C)) | ((-15 << ((4 * v61 + 8) & 0x3C)) - 1) & v62;
    v10 = *(v65 - 2);
    swift_unknownObjectRetain();
    result = swift_unknownObjectRelease();
    v60 = v10 + 2;
    LOBYTE(v61) = *(v10 + 18);
    v63 = v10;
    if (v61)
    {
      continue;
    }

    break;
  }

  v59 = *v60;
  if (*v60)
  {
LABEL_115:
    v83 = 0;
    v84 = v59;
    v85 = 3;
    while (1)
    {
      v86 = v10[v85];
      v14 = __OFSUB__(v6, v86);
      v87 = v6 - v86;
      if (v14)
      {
        break;
      }

      if (v87 < 1)
      {
        swift_unknownObjectRelease();
        v82 = v83 | v62 & 0xFFFFFFFFFFFFF0FFLL;
        v51 = a5;
        v58 = v106;
        goto LABEL_121;
      }

      v83 += 256;
      v85 += 3;
      v6 = v87;
      if (!--v84)
      {
        goto LABEL_183;
      }
    }

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
LABEL_169:
    __break(1u);
LABEL_170:
    __break(1u);
LABEL_171:
    __break(1u);
LABEL_172:
    __break(1u);
LABEL_173:
    __break(1u);
LABEL_174:
    result = swift_unknownObjectRelease();
    __break(1u);
LABEL_175:
    __break(1u);
LABEL_176:
    __break(1u);
LABEL_177:
    __break(1u);
LABEL_178:
    if (!v6)
    {
      __break(1u);
    }

LABEL_180:
    __break(1u);
  }

  if (!v6)
  {
    __break(1u);
  }

LABEL_183:
  __break(1u);
  return result;
}

char *specialized BidirectionalCollection.index(_:offsetBy:limitedBy:)@<X0>(char **a1@<X0>, uint64_t a2@<X1>, char **a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = a2;
  v9 = a1[4];
  if (a2 < 0)
  {
    v19 = 0;
    v20 = *a1;
    result = a1[1];
    v21 = a1[2];
    v22 = a1[3];
    v23 = *a3;
    v24 = v22;
    v25 = v20;
    while (1)
    {
      if (v25 == v23)
      {
        goto LABEL_42;
      }

      if (v25 == result)
      {
        if (!v24)
        {
          v25 = result;
          goto LABEL_25;
        }

        v22 = v24 - 1;
        if (__OFSUB__(v24, 1))
        {
          goto LABEL_48;
        }

        v26 = *(a4 + 24);
        result = [*(a4 + 16) rangeAtIndex_];
        v21 = &result[v27];
        v28 = __OFADD__(result, v27);
        if (v26)
        {
          if (v28)
          {
            goto LABEL_51;
          }

          if (v21 < result)
          {
            goto LABEL_52;
          }
        }

        else
        {
          if (v28)
          {
            goto LABEL_50;
          }

          if (v21 < result)
          {
            goto LABEL_53;
          }
        }

        v20 = v21 - 1;
        if (__OFSUB__(v21, 1))
        {
          goto LABEL_49;
        }

        v24 = v22;
      }

      else
      {
        v20 = v25 - 1;
        if (__OFSUB__(v25, 1))
        {
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
LABEL_53:
          __break(1u);
LABEL_54:
          __break(1u);
LABEL_55:
          __break(1u);
LABEL_56:
          __break(1u);
          return result;
        }
      }

      v25 = v20;
LABEL_25:
      if (--v19 <= v6)
      {
        *a5 = v20;
        *(a5 + 8) = result;
        *(a5 + 16) = v21;
        *(a5 + 24) = v22;
        goto LABEL_44;
      }
    }
  }

  result = *a1;
  v11 = a1[1];
  v12 = a1[2];
  v13 = a1[3];
  if (a2)
  {
    v14 = *a3;
    while (result != v14)
    {
      if (__OFADD__(result++, 1))
      {
        __break(1u);
LABEL_46:
        __break(1u);
        goto LABEL_47;
      }

      if (result == v12)
      {
        v16 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          goto LABEL_46;
        }

        result = v12;
        if (v16 != v9)
        {
          v17 = *(a4 + 24);
          result = [*(a4 + 16) rangeAtIndex_];
          v12 = &result[v18];
          v13 = __OFADD__(result, v18);
          if (v17)
          {
            if (v13)
            {
              goto LABEL_55;
            }

            if (v12 < result)
            {
              goto LABEL_56;
            }
          }

          else
          {
            if (v13)
            {
              goto LABEL_54;
            }

            if (v12 < result)
            {
              __break(1u);
              goto LABEL_21;
            }
          }

          v11 = result;
          v13 = v16;
        }
      }

      if (!--v6)
      {
        goto LABEL_21;
      }
    }

LABEL_42:
    *(a5 + 32) = 0;
    *a5 = 0u;
    *(a5 + 16) = 0u;
    *(a5 + 40) = 1;
  }

  else
  {
LABEL_21:
    *a5 = result;
    *(a5 + 8) = v11;
    *(a5 + 16) = v12;
    *(a5 + 24) = v13;
LABEL_44:
    *(a5 + 32) = v9;
    *(a5 + 40) = 0;
  }

  return result;
}

void specialized BidirectionalCollection.index(_:offsetBy:limitedBy:)(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, unint64_t *a4@<X8>)
{
  v5 = v4;
  v325 = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GMd, &_ss8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GMR);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v315 - v12;
  if ((a2 & 0x8000000000000000) == 0)
  {
    v14 = a1[1];
    v375 = *a1;
    v376 = v14;
    v377 = *(a1 + 4);
    if (a2)
    {
      v15 = *a3;
      while ((v375 ^ v15) > 0x3FF)
      {
        specialized Collection.formIndex(after:)(&v375);
        if (!--a2)
        {
          goto LABEL_6;
        }
      }

LABEL_295:
      v314 = v325;
      *v325 = 0;
      v314[1] = 0;
      v314[2] = 0;
      *(v314 + 3) = xmmword_18121D490;
      return;
    }

LABEL_6:
    v16 = v377;
    v17 = v376;
    v18 = v325;
    *v325 = v375;
    *(v18 + 1) = v17;
LABEL_7:
    v18[4] = v16;
    return;
  }

  v19 = 0;
  v329 = *a3 >> 10;
  v364 = (v11 + 8);
  v365 = v10;
  v20 = *a1;
  v22 = *(a1 + 2);
  v21 = *(a1 + 3);
  v347 = *(a1 + 1);
  v348 = v21;
  v366 = v5;
  v363 = &v315 - v12;
  v327 = a2;
  while (1)
  {
    v345 = v22;
    v23 = v20 >> 10;
    if (v20 >> 10 == v329)
    {
      goto LABEL_295;
    }

    v350 = v20;
    v360 = *(v5 + *(type metadata accessor for AttributedString.Runs.NSAttributesSlice(0) + 20));
    v355 = *(v360 + 16);
    if (!v355)
    {
      goto LABEL_306;
    }

    v338 = v19;
    v24 = v5[23];
    v25 = v24 >> 10;
    v343 = v5[26];
    if (v343 != 2 && v23 == v25)
    {
      v34 = v5[24];
      v341 = v5[25];
      v342 = v34;
      type metadata accessor for AttributedString.Runs(0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetVy19CollectionsInternal9BigStringV5IndexVGMd, &_ss8RangeSetVy19CollectionsInternal9BigStringV5IndexVGMR);
      RangeSet.ranges.getter();
      v35 = v365;
      v30 = RangeSet.Ranges.count.getter();
      v362 = *v364;
      (v362)(v13, v35);
      v33 = v24;
      if (v25 == v23)
      {
        goto LABEL_26;
      }
    }

    else
    {
      type metadata accessor for AttributedString.Runs(0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetVy19CollectionsInternal9BigStringV5IndexVGMd, &_ss8RangeSetVy19CollectionsInternal9BigStringV5IndexVGMR);
      RangeSet.ranges.getter();
      v27 = v365;
      v28 = RangeSet.Ranges.count.getter();
      v362 = *v364;
      (v362)(v13, v27);
      if (v28 < 1)
      {
        goto LABEL_298;
      }

      v29 = 0;
      while (1)
      {
        while (1)
        {
          if (__OFADD__(v29, v28))
          {
            goto LABEL_299;
          }

          v30 = (v29 + v28) / 2;
          v31 = v363;
          RangeSet.ranges.getter();
          v32 = v365;
          RangeSet.Ranges.subscript.getter();
          (v362)(v31, v32);
          v33 = v375;
          if (v23 >= v375 >> 10)
          {
            break;
          }

          v28 = (v29 + v28) / 2;
          if (v29 >= v30)
          {
            goto LABEL_298;
          }
        }

        if (v23 < v377 >> 10)
        {
          break;
        }

        v29 = v30 + 1;
        if (v30 + 1 >= v28)
        {
          goto LABEL_298;
        }
      }

      v341 = v376;
      v342 = *(&v375 + 1);
      v343 = *(&v376 + 1);
      v5 = v366;
      v13 = v363;
      if (v375 >> 10 == v23)
      {
LABEL_26:
        if (v30 < 1)
        {
          goto LABEL_315;
        }

        type metadata accessor for AttributedString.Runs(0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetVy19CollectionsInternal9BigStringV5IndexVGMd, &_ss8RangeSetVy19CollectionsInternal9BigStringV5IndexVGMR);
        RangeSet.ranges.getter();
        v36 = v365;
        RangeSet.Ranges.subscript.getter();
        (v362)(v13, v36);
        v33 = v375;
        v341 = v376;
        v342 = *(&v375 + 1);
        v343 = *(&v376 + 1);
        v350 = v377;
        v345 = v379;
        v347 = v378;
        v348 = v380;
      }
    }

    v340 = v33;
    v37 = *v5;
    v38 = *(*v5 + 24);
    v337 = (*v5 + 24);
    v39 = *(v37 + 40);
    v432[6] = v38;
    v432[7] = v39;
    v432[8] = *(v37 + 56);
    swift_unknownObjectRetain();
    v40 = BigString.UTF8View.index(before:)();
    v42 = v41;
    v44 = v43;
    v46 = v45;
    swift_unknownObjectRelease();
    v47 = *(v37 + 72);
    v48 = *(v37 + 88);
    v49 = v40 >> 11;
    if (v47)
    {
      v50 = *(v37 + 88);
    }

    else
    {
      v50 = 0;
    }

    if (v50 < v49)
    {
      goto LABEL_307;
    }

    v331 = v46;
    v332 = v44;
    v333 = v42;
    v334 = v40;
    v349 = *(v37 + 96);
    v351 = v37;
    v339 = v40 >> 11;
    if (!v47)
    {
      v63 = 0;
      v64 = 0;
      v352 = 0;
      v344 = 0;
      goto LABEL_64;
    }

    v51 = *(v37 + 80);
    v53 = (v47 + 16);
    v52 = *(v47 + 16);
    v54 = *(v47 + 18);
    if (v49 >= v48 || !*(v47 + 16))
    {
      swift_unknownObjectRetain();
      v65 = ((-15 << ((4 * v54 + 8) & 0x3C)) - 1) & v54 | (v52 << ((4 * v54 + 8) & 0x3C));
      v63 = 0;
      v64 = 0;
      goto LABEL_63;
    }

    swift_unknownObjectRetain_n();
    if (!v54)
    {
      v56 = 0;
      v55 = v339;
      v66 = v47;
      goto LABEL_54;
    }

    v55 = v339;
    v56 = v54;
    v57 = v47;
    do
    {
      v58 = *v53;
      if (*v53)
      {
        v59 = 0;
        v60 = (v57 + 40);
        while (1)
        {
          v61 = *v60;
          v60 += 3;
          v62 = v55 - v61;
          if (__OFSUB__(v55, v61))
          {
            break;
          }

          if (__OFADD__(v62, 1))
          {
            goto LABEL_297;
          }

          if ((v62 + 1) < 1)
          {
            v58 = v59;
            goto LABEL_38;
          }

          ++v59;
          v55 = v62;
          if (v58 == v59)
          {
            goto LABEL_47;
          }
        }

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
        swift_unknownObjectRelease();
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
        goto LABEL_327;
      }

      v62 = v55;
LABEL_47:
      if (v62)
      {
        goto LABEL_305;
      }

      v55 = 0;
LABEL_38:
      v56 = (v58 << ((4 * v54 + 8) & 0x3C)) | ((-15 << ((4 * v54 + 8) & 0x3C)) - 1) & v56;
      v52 = *(v57 + 24 + 24 * v58);
      swift_unknownObjectRetain();
      swift_unknownObjectRelease();
      v53 = (v52 + 16);
      LOBYTE(v54) = *(v52 + 18);
      v57 = v52;
    }

    while (v54);
    v66 = v52;
    LODWORD(v52) = *v53;
    if (!*v53)
    {
      v67 = 0;
      v64 = v66;
      goto LABEL_60;
    }

LABEL_54:
    v67 = 0;
    v68 = 24;
    v63 = v55;
    v69 = v52;
    v64 = v66;
    do
    {
      v70 = *(v64 + v68);
      v55 = v63 - v70;
      if (__OFSUB__(v63, v70))
      {
        goto LABEL_303;
      }

      if (__OFADD__(v55, 1))
      {
        goto LABEL_304;
      }

      if ((v55 + 1) < 1)
      {
        goto LABEL_62;
      }

      ++v67;
      v68 += 24;
      v63 -= v70;
    }

    while (v69 != v67);
    v67 = v69;
LABEL_60:
    if (v55)
    {
      goto LABEL_320;
    }

    v63 = 0;
LABEL_62:
    swift_unknownObjectRelease();
    v65 = v56 & 0xFFFFFFFFFFFFF0FFLL | (v67 << 8);
LABEL_63:
    v352 = v65;
    v344 = specialized Rope._Node.distanceFromStart<A>(to:in:)(v349, v65, v64, v47, v51);
    swift_unknownObjectRelease();
    v5 = v366;
    v49 = v339;
LABEL_64:
    v71 = v49 - v63;
    if (__OFSUB__(v49, v63))
    {
      goto LABEL_308;
    }

    if (v349 != *(v351 + 96))
    {
      goto LABEL_309;
    }

    v346 = v64;
    if (v64)
    {
      v72 = v64 + 24 * ((v352 >> ((4 * *(v64 + 18) + 8) & 0x3C)) & 0xF);
      v74 = *(v72 + 32);
      v73 = *(v72 + 40);

      v336 = v73;
    }

    else
    {
      v75 = *(v351 + 72);
      swift_unknownObjectRetain();
      specialized Rope._Node.subscript.getter(v352, v75);
      v74 = v76;
      v336 = v77;
      swift_unknownObjectRelease();
    }

    v78 = v5[1];
    if (v78 >= v344)
    {
      goto LABEL_199;
    }

    v328 = (v360 + 40);
    v353 = v74;
    v324 = v78;
    while (2)
    {
      v79 = v352;
      v80 = *(v351 + 72);
      v81 = *(v351 + 96);
      *&v375 = v349;
      *(&v375 + 1) = v352;
      *&v376 = v346;
      if (v349 != v81)
      {
        goto LABEL_310;
      }

      v335 = v71;
      if (v80)
      {
        v82 = *(v80 + 18);
        swift_unknownObjectRetain();
        v79 = v352;
        if (v82 >= v352)
        {
          goto LABEL_311;
        }
      }

      else if (!v352)
      {
        goto LABEL_311;
      }

      if (v346)
      {
        v83 = (4 * *(v346 + 18) + 8) & 0x3C;
        if (((v79 >> v83) & 0xF) != 0)
        {
          v84 = ((((v79 >> v83) & 0xF) - 1) << v83) | ((-15 << v83) - 1) & v79;
          goto LABEL_124;
        }
      }

      v85 = (4 * *(v80 + 18) + 8) & 0x3C;
      v86 = (v79 >> v85) & 0xF;
      if (!*(v80 + 18))
      {
        if (!v86)
        {
          goto LABEL_321;
        }

        v84 = ((v86 - 1) << v85) | v79 & 0xFFFFFFFFFFFFF0FFLL;
        *(&v375 + 1) = v84;
        *&v376 = v80;
        v346 = v80;
        if (v80)
        {
          goto LABEL_124;
        }

        goto LABEL_99;
      }

      if (v86 >= *(v80 + 16))
      {
        swift_unknownObjectRetain();
        if (!v86)
        {
          goto LABEL_319;
        }

LABEL_121:
        *(&v375 + 1) = *(&v375 + 1) & ((-15 << v85) - 1) | ((v86 - 1) << v85);
        v128 = *(v80 + 24 * v86);
        swift_unknownObjectRetain();
        v129 = specialized Rope._Node.descendToLastItem(under:)(&v375 + 1, v128);
        swift_unknownObjectRelease();
        v98 = v129;
        *&v376 = v129;
        goto LABEL_122;
      }

      v87 = *(v80 + 24 * ((v79 >> v85) & 0xF) + 24);
      v88 = (4 * *(v87 + 18) + 8) & 0x3C;
      v89 = (v79 >> v88) & 0xF;
      if (!*(v87 + 18))
      {
        if (v89)
        {
          *(&v375 + 1) = ((v89 - 1) << v88) | v79 & 0xFFFFFFFFFFFFF0FFLL;
          *&v376 = v87;
          swift_unknownObjectRetain();
          v98 = v87;
LABEL_113:
          v74 = v353;
          goto LABEL_122;
        }

        swift_unknownObjectRetain();
LABEL_120:
        v74 = v353;
        if (!v86)
        {
          goto LABEL_319;
        }

        goto LABEL_121;
      }

      if (v89 >= *(v87 + 16))
      {
        goto LABEL_111;
      }

      v90 = *(v87 + 24 * ((v79 >> v88) & 0xF) + 24);
      v91 = (4 * *(v90 + 18) + 8) & 0x3C;
      v92 = (v79 >> v91) & 0xF;
      if (!*(v90 + 18))
      {
        if (v92)
        {
          *(&v375 + 1) = ((v92 - 1) << v91) | v79 & 0xFFFFFFFFFFFFF0FFLL;
          *&v376 = v90;
          v98 = v90;
          swift_unknownObjectRetain();
          swift_unknownObjectRetain();
LABEL_117:
          v74 = v353;
          goto LABEL_196;
        }

LABEL_111:
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        if (v89)
        {
LABEL_112:
          *(&v375 + 1) = *(&v375 + 1) & ((-15 << v88) - 1) | ((v89 - 1) << v88);
          v124 = *(v87 + 24 * v89);
          swift_unknownObjectRetain();
          v125 = specialized Rope._Node.descendToLastItem(under:)(&v375 + 1, v124);
          swift_unknownObjectRelease();
          v98 = v125;
          *&v376 = v125;
          swift_unknownObjectRelease();
          goto LABEL_113;
        }

LABEL_119:
        swift_unknownObjectRelease();
        goto LABEL_120;
      }

      v93 = *(v90 + 16);
      v362 = *(v87 + 24 * ((v79 >> v88) & 0xF) + 24);
      if (v92 >= v93)
      {
        v361 = v88;
        v88 = (v79 >> v91) & 0xF;
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        v92 = v88;
        LOBYTE(v88) = v361;
        swift_unknownObjectRetain();
        goto LABEL_115;
      }

      v361 = v87;
      v94 = *(v90 + 24 * ((v79 >> v91) & 0xF) + 24);
      v95 = (4 * *(v94 + 18) + 8) & 0x3C;
      v96 = (v79 >> v95) & 0xF;
      if (!*(v94 + 18))
      {
        if (v96)
        {
          *(&v375 + 1) = ((v96 - 1) << v95) | v79 & 0xFFFFFFFFFFFFF0FFLL;
          *&v376 = v94;
          swift_unknownObjectRetain();
          swift_unknownObjectRetain();
          swift_unknownObjectRetain();
          v98 = v94;
          v5 = v366;
          v74 = v353;
          goto LABEL_195;
        }

        swift_unknownObjectRetain();
        v87 = v361;
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        v5 = v366;
        goto LABEL_115;
      }

      v97 = *(v94 + 8);
      v359 = *(v90 + 24 * ((v79 >> v91) & 0xF) + 24);
      if (v96 >= v97)
      {
        v358 = v95;
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        v94 = v359;
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
LABEL_159:
        if (v96)
        {
          *(&v375 + 1) = *(&v375 + 1) & ((-15 << v358) - 1) | ((v96 - 1) << v358);
          v163 = v94[3 * v96];
          swift_unknownObjectRetain();
          v164 = specialized Rope._Node.descendToLastItem(under:)(&v375 + 1, v163);
          swift_unknownObjectRelease();
          v98 = v164;
          *&v376 = v164;
          swift_unknownObjectRelease();
          v5 = v366;
          v74 = v353;
          goto LABEL_195;
        }

        swift_unknownObjectRelease();
        v5 = v366;
        v87 = v361;
LABEL_115:
        if (v92)
        {
          *(&v375 + 1) = *(&v375 + 1) & ((-15 << v91) - 1) | ((v92 - 1) << v91);
          v126 = *&v362[24 * v92];
          swift_unknownObjectRetain();
          v127 = specialized Rope._Node.descendToLastItem(under:)(&v375 + 1, v126);
          swift_unknownObjectRelease();
          v98 = v127;
          *&v376 = v127;
          swift_unknownObjectRelease();
          goto LABEL_117;
        }

        swift_unknownObjectRelease();
        if (v89)
        {
          goto LABEL_112;
        }

        goto LABEL_119;
      }

      v357 = v91;
      v98 = v94[3 * ((v79 >> v95) & 0xF) + 3];
      v99 = (4 * *(v98 + 18) + 8) & 0x3C;
      v100 = (v79 >> v99) & 0xF;
      if (!*(v98 + 18))
      {
        if (v100)
        {
          *(&v375 + 1) = ((v100 - 1) << v99) | v79 & 0xFFFFFFFFFFFFF0FFLL;
          *&v376 = v98;
          swift_unknownObjectRetain();
          swift_unknownObjectRetain();
          swift_unknownObjectRetain();
          swift_unknownObjectRetain();
          v5 = v366;
          v74 = v353;
          goto LABEL_194;
        }

        v358 = v95;
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        LOBYTE(v91) = v357;
        goto LABEL_159;
      }

      v101 = *(v98 + 8);
      v356 = v94[3 * ((v79 >> v95) & 0xF) + 3];
      if (v100 >= v101)
      {
        v352 = v99;
        v354 = (v79 >> v99) & 0xF;
        v358 = v95;
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        v94 = v359;
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        goto LABEL_166;
      }

      v102 = v98[3 * ((v79 >> v99) & 0xF) + 3];
      v103 = (4 * *(v102 + 18) + 8) & 0x3C;
      v104 = (v79 >> v103) & 0xF;
      if (!*(v102 + 18))
      {
        if (v104)
        {
          *(&v375 + 1) = ((v104 - 1) << v103) | v79 & 0xFFFFFFFFFFFFF0FFLL;
          *&v376 = v102;
          v98 = v102;
          swift_unknownObjectRetain();
          swift_unknownObjectRetain();
          swift_unknownObjectRetain();
          swift_unknownObjectRetain();
          swift_unknownObjectRetain();
          v5 = v366;
          v74 = v353;
          goto LABEL_193;
        }

        v352 = v99;
        v354 = (v79 >> v99) & 0xF;
        v358 = v95;
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
LABEL_166:
        swift_unknownObjectRetain();
        LOBYTE(v91) = v357;
LABEL_167:
        if (v354)
        {
          *(&v375 + 1) = *(&v375 + 1) & ((-15 << v352) - 1) | ((v354 - 1) << v352);
          v165 = v356[3 * v354];
          swift_unknownObjectRetain();
          v166 = specialized Rope._Node.descendToLastItem(under:)(&v375 + 1, v165);
          swift_unknownObjectRelease();
          v98 = v166;
          *&v376 = v166;
          swift_unknownObjectRelease();
          v5 = v366;
          v74 = v353;
          goto LABEL_194;
        }

        swift_unknownObjectRelease();
        goto LABEL_159;
      }

      v105 = *(v102 + 16);
      v346 = v98[3 * ((v79 >> v99) & 0xF) + 3];
      if (v104 >= v105)
      {
        goto LABEL_173;
      }

      v106 = *(v102 + 24 * ((v79 >> v103) & 0xF) + 24);
      v107 = (4 * *(v106 + 18) + 8) & 0x3C;
      v108 = (v79 >> v107) & 0xF;
      if (!*(v106 + 18))
      {
        if (v108)
        {
          *(&v375 + 1) = ((v108 - 1) << v107) | v79 & 0xFFFFFFFFFFFFF0FFLL;
          *&v376 = v106;
          v98 = v106;
          swift_unknownObjectRetain();
          swift_unknownObjectRetain();
          swift_unknownObjectRetain();
          swift_unknownObjectRetain();
          swift_unknownObjectRetain();
          swift_unknownObjectRetain();
          v5 = v366;
          v74 = v353;
          goto LABEL_192;
        }

LABEL_173:
        v326 = v103;
        v330 = (v79 >> v103) & 0xF;
        v352 = v99;
        v354 = (v79 >> v99) & 0xF;
        v358 = v95;
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        LOBYTE(v91) = v357;
        goto LABEL_174;
      }

      v109 = *(v106 + 16);
      v358 = v95;
      v354 = (v79 >> v99) & 0xF;
      v352 = v99;
      v322 = (v79 >> v107) & 0xF;
      v323 = v106;
      v330 = (v79 >> v103) & 0xF;
      v326 = v103;
      v321 = v107;
      if (v108 >= v109)
      {
        goto LABEL_180;
      }

      v110 = *(v106 + 24 * ((v79 >> v107) & 0xF) + 24);
      v111 = *(v110 + 18);
      v112 = (4 * v111 + 8) & 0x3C;
      v113 = (v79 >> v112) & 0xF;
      if (!v111)
      {
        if (v113)
        {
          *(&v375 + 1) = ((v113 - 1) << v112) | v79 & 0xFFFFFFFFFFFFF0FFLL;
          v98 = v110;
          *&v376 = v110;
          swift_unknownObjectRetain();
          swift_unknownObjectRetain();
          swift_unknownObjectRetain();
          swift_unknownObjectRetain();
          swift_unknownObjectRetain();
          swift_unknownObjectRetain();
          swift_unknownObjectRetain();
          v5 = v366;
          v74 = v353;
          goto LABEL_191;
        }

LABEL_180:
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        goto LABEL_181;
      }

      v319 = (4 * v111 + 8) & 0x3C;
      v320 = (v79 >> v112) & 0xF;
      v114 = v110;
      if (v113 >= *(v110 + 16))
      {
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
      }

      else
      {
        v115 = (v110 + 24 * ((v79 >> v112) & 0xF));
        v116 = v115[3];
        v318 = v115[4];
        v117 = v115[5];
        v316 = v116;
        v317 = v117;
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        v118 = v316;
        swift_unknownObjectRetain();
        LODWORD(v318) = specialized Rope._Node.formPredecessor(of:)(&v375, v118);
        swift_unknownObjectRelease();
        if (v318)
        {
          swift_unknownObjectRelease();
          v98 = v376;
          v5 = v366;
          goto LABEL_190;
        }
      }

      if (!v320)
      {
        swift_unknownObjectRelease();
        v94 = v359;
LABEL_181:
        LOBYTE(v91) = v357;
        if (v322)
        {
          *(&v375 + 1) = *(&v375 + 1) & ((-15 << v321) - 1) | ((v322 - 1) << v321);
          v169 = *(v323 + 24 * v322);
          swift_unknownObjectRetain();
          v170 = specialized Rope._Node.descendToLastItem(under:)(&v375 + 1, v169);
          swift_unknownObjectRelease();
          v98 = v170;
          *&v376 = v170;
          swift_unknownObjectRelease();
          v5 = v366;
          v74 = v353;
          goto LABEL_192;
        }

        swift_unknownObjectRelease();
LABEL_174:
        if (v330)
        {
          *(&v375 + 1) = *(&v375 + 1) & ((-15 << v326) - 1) | ((v330 - 1) << v326);
          v167 = *(v346 + 24 * v330);
          swift_unknownObjectRetain();
          v168 = specialized Rope._Node.descendToLastItem(under:)(&v375 + 1, v167);
          swift_unknownObjectRelease();
          v98 = v168;
          *&v376 = v168;
          swift_unknownObjectRelease();
          v5 = v366;
          v74 = v353;
          goto LABEL_193;
        }

        swift_unknownObjectRelease();
        goto LABEL_167;
      }

      *(&v375 + 1) = *(&v375 + 1) & ((-15 << v319) - 1) | ((v320 - 1) << v319);
      v171 = *(v114 + 24 * v320);
      swift_unknownObjectRetain();
      v172 = specialized Rope._Node.descendToLastItem(under:)(&v375 + 1, v171);
      swift_unknownObjectRelease();
      v98 = v172;
      *&v376 = v172;
      swift_unknownObjectRelease();
      v5 = v366;
LABEL_190:
      v74 = v353;
LABEL_191:
      swift_unknownObjectRelease();
LABEL_192:
      swift_unknownObjectRelease();
LABEL_193:
      swift_unknownObjectRelease();
LABEL_194:
      swift_unknownObjectRelease();
LABEL_195:
      swift_unknownObjectRelease();
LABEL_196:
      swift_unknownObjectRelease();
LABEL_122:
      swift_unknownObjectRelease();
      if (v375 != v349)
      {
        goto LABEL_312;
      }

      v84 = *(&v375 + 1);
      v346 = v98;
      if (v98)
      {
LABEL_124:
        v130 = (4 * *(v346 + 18) + 8) & 0x3C;
        v352 = v84;
        v122 = *(v346 + 24 * ((v84 >> v130) & 0xF) + 24);

        swift_unknownObjectRelease();
        v123 = 0;
        goto LABEL_125;
      }

LABEL_99:
      v119 = *(v80 + 18);
      if (((v84 >> ((4 * v119 + 8) & 0x3C)) & 0xF) >= *(v80 + 16))
      {
        goto LABEL_322;
      }

      v352 = v84;
      v120 = v80 + 24;
      if (v119)
      {
        v121 = *(v120 + 24 * ((v84 >> ((4 * v119 + 8) & 0x3C)) & 0xF));
        swift_unknownObjectRetain();
        v122 = specialized Rope._Node.subscript.getter(v352, v121);
        swift_unknownObjectRelease();
      }

      else
      {
        v122 = *(v120 + 24 * ((v84 >> ((4 * v119 + 8) & 0x3C)) & 0xF));
      }

      swift_unknownObjectRelease();

      v346 = 0;
      v123 = 1;
LABEL_125:
      if (__OFSUB__(v335, v122))
      {
        goto LABEL_313;
      }

      if (v349 != *(v351 + 96))
      {
        goto LABEL_314;
      }

      v326 = v335 - v122;
      if (v123)
      {
        v131 = *(v351 + 72);
        if (((v352 >> ((4 * *(v131 + 18) + 8) & 0x3C)) & 0xF) >= *(v131 + 16))
        {
          goto LABEL_318;
        }

        v132 = v131 + 24;
        if (*(v131 + 18))
        {
          v133 = *(v132 + 24 * ((v352 >> ((4 * *(v131 + 18) + 8) & 0x3C)) & 0xF));
          swift_unknownObjectRetain();
          swift_unknownObjectRetain();
          specialized Rope._Node.subscript.getter(v352, v133);
          v135 = v134;
          v330 = v136;
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          goto LABEL_134;
        }

        v139 = v132 + 24 * ((v352 >> ((4 * *(v131 + 18) + 8) & 0x3C)) & 0xF);
        v135 = *(v139 + 8);
        v138 = *(v139 + 16);
      }

      else
      {
        v137 = v346 + 24 * ((v352 >> ((4 * *(v346 + 18) + 8) & 0x3C)) & 0xF);
        v135 = *(v137 + 32);
        v138 = *(v137 + 40);
      }

      v330 = v138;

LABEL_134:
      v140 = 0;
      --v344;
      v141 = v328;
      v354 = v135;
LABEL_136:
      if (v140 >= *(v360 + 16))
      {
        goto LABEL_300;
      }

      v361 = v141;
      v362 = v140;
      v143 = *(v141 - 1);
      v142 = *v141;
      if (*(v74 + 16))
      {

        v144 = specialized __RawDictionaryStorage.find<A>(_:)(v143, v142);
        if (v145)
        {
          outlined init with copy of AttributedString._AttributeValue(*(v74 + 56) + 72 * v144, &v388);
          if (!*(v135 + 16))
          {
LABEL_145:

LABEL_146:
            v387 = 0;
            memset(v386, 0, sizeof(v386));
            goto LABEL_147;
          }
        }

        else
        {
          v392 = 0;
          v390 = 0u;
          v391 = 0u;
          v388 = 0u;
          v389 = 0u;
          if (!*(v135 + 16))
          {
            goto LABEL_145;
          }
        }
      }

      else
      {
        v392 = 0;
        v390 = 0u;
        v391 = 0u;
        v388 = 0u;
        v389 = 0u;

        if (!*(v135 + 16))
        {
          goto LABEL_145;
        }
      }

      v146 = specialized __RawDictionaryStorage.find<A>(_:)(v143, v142);
      v148 = v147;

      if ((v148 & 1) == 0)
      {
        goto LABEL_146;
      }

      outlined init with copy of AttributedString._AttributeValue(*(v135 + 56) + 72 * v146, v386);
LABEL_147:
      outlined init with copy of AttributedString._AttributeValue?(&v388, &v375);
      outlined init with copy of AttributedString._AttributeValue?(v386, &v381);
      if (!*(&v376 + 1))
      {
        outlined destroy of TermOfAddress?(v386, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd, &_s10Foundation16AttributedStringV15_AttributeValueVSgMR);
        outlined destroy of TermOfAddress?(&v388, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd, &_s10Foundation16AttributedStringV15_AttributeValueVSgMR);
        if (*(&v382 + 1))
        {
          goto LABEL_201;
        }

        outlined destroy of TermOfAddress?(&v375, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd, &_s10Foundation16AttributedStringV15_AttributeValueVSgMR);
        goto LABEL_135;
      }

      outlined init with copy of AttributedString._AttributeValue?(&v375, v372);
      if (*(&v382 + 1))
      {
        v369 = v383;
        v370 = v384;
        v371 = v385;
        v367 = v381;
        v368 = v382;
        v149 = v373;
        v357 = v374;
        v356 = __swift_project_boxed_opaque_existential_1(v372, v373);
        v150 = __swift_project_boxed_opaque_existential_1(&v367, *(&v368 + 1));
        v359 = &v315;
        v151 = *(v149 - 8);
        MEMORY[0x1EEE9AC00](v150);
        v153 = &v315 - ((v152 + 15) & 0xFFFFFFFFFFFFFFF0);
        v358 = &v315;
        v155 = MEMORY[0x1EEE9AC00](v154);
        (*(v157 + 16))(&v315 - ((v156 + 15) & 0xFFFFFFFFFFFFFFF0), v155);
        v158 = type metadata accessor for Optional();
        v159 = *(v158 - 8);
        MEMORY[0x1EEE9AC00](v158);
        v161 = &v315 - v160;
        if ((swift_dynamicCast() & 1) == 0)
        {
          outlined destroy of TermOfAddress?(v386, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd, &_s10Foundation16AttributedStringV15_AttributeValueVSgMR);
          outlined destroy of TermOfAddress?(&v388, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd, &_s10Foundation16AttributedStringV15_AttributeValueVSgMR);
          (*(v151 + 56))(v161, 1, 1, v149);
          (*(v159 + 8))(v161, v158);
          outlined destroy of AttributedString._AttributeValue(&v367);
          outlined destroy of AttributedString._AttributeValue(v372);
          outlined destroy of TermOfAddress?(&v375, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd, &_s10Foundation16AttributedStringV15_AttributeValueVSgMR);
          v5 = v366;
          goto LABEL_203;
        }

        (*(v151 + 56))(v161, 0, 1, v149);
        (*(v151 + 32))(v153, v161, v149);
        v162 = dispatch thunk of static Equatable.== infix(_:_:)();
        (*(v151 + 8))(v153, v149);
        outlined destroy of TermOfAddress?(v386, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd, &_s10Foundation16AttributedStringV15_AttributeValueVSgMR);
        outlined destroy of TermOfAddress?(&v388, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd, &_s10Foundation16AttributedStringV15_AttributeValueVSgMR);
        outlined destroy of AttributedString._AttributeValue(&v367);
        outlined destroy of AttributedString._AttributeValue(v372);
        outlined destroy of TermOfAddress?(&v375, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd, &_s10Foundation16AttributedStringV15_AttributeValueVSgMR);
        v5 = v366;
        v74 = v353;
        v135 = v354;
        if ((v162 & 1) == 0)
        {
          goto LABEL_203;
        }

LABEL_135:
        v140 = v362 + 1;
        v141 = (v361 + 16);
        if (v355 == v362 + 1)
        {

          v71 = v326;
          if (v324 >= v344)
          {
            v71 = v326;
LABEL_199:

            goto LABEL_204;
          }

          continue;
        }

        goto LABEL_136;
      }

      break;
    }

    outlined destroy of TermOfAddress?(v386, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd, &_s10Foundation16AttributedStringV15_AttributeValueVSgMR);
    outlined destroy of TermOfAddress?(&v388, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd, &_s10Foundation16AttributedStringV15_AttributeValueVSgMR);
    outlined destroy of AttributedString._AttributeValue(v372);
LABEL_201:
    outlined destroy of TermOfAddress?(&v375, &_s10Foundation16AttributedStringV15_AttributeValueVSg_AFtMd, &_s10Foundation16AttributedStringV15_AttributeValueVSg_AFtMR);
LABEL_203:

    v71 = v335;
LABEL_204:
    v173 = v351;
    v174 = v350 >> 10;
    v20 = v340;
    v175 = v343;
    if (v71 < (v340 >> 11))
    {
      break;
    }

    v188 = *(v351 + 40);
    v432[3] = *(v351 + 24);
    v432[4] = v188;
    v432[5] = *(v351 + 56);
    swift_unknownObjectRetain();
    v189 = BigString.UTF8View.index(_:offsetBy:)();
    v191 = v190;
    v362 = v192;
    v194 = v193;
    swift_unknownObjectRelease();
    v195 = *v337;
    v196 = v337[1];
    v432[2] = v337[2];
    v432[1] = v196;
    v432[0] = v195;
    if (v174 < v189 >> 10)
    {
      goto LABEL_317;
    }

    v197 = v173[3];
    v198 = v173[4];
    v199 = v173[5];
    v200 = v173[6];
    v201 = v173[7];
    v202 = v173[8];
    v431[8] = v189;
    v431[9] = v191;
    v431[10] = v362;
    v431[11] = v194;
    v431[12] = v350;
    v203 = v347;
    v431[13] = v347;
    v204 = v345;
    v431[14] = v345;
    v431[15] = v348;
    if (v189 >> 10 == v174)
    {
      v20 = v189;
      v347 = v191;
      v348 = v194;
      v22 = v362;
      goto LABEL_288;
    }

    v356 = v202;
    v357 = v201;
    v358 = v200;
    v359 = v199;
    v361 = v191;
    v222 = v337[1];
    v433[0] = *v337;
    v433[1] = v222;
    v434 = *(v337 + 4);
    outlined init with copy of Rope<BigString._Chunk>._Node?(v433, &v375);
    v223 = MEMORY[0x1E69E7CD0];
    v224 = specialized Set.contains(_:)(0, 0, MEMORY[0x1E69E7CD0]);
    v354 = v198;
    v355 = v197;
    if (v224)
    {
      if (v174 > BigString.startIndex.getter() >> 10)
      {
        v431[16] = v197;
        v431[17] = v198;
        v431[18] = v359;
        v431[19] = v358;
        v431[20] = v357;
        v431[21] = v356;
        v225 = v348;
        v226 = BigString.UTF8View.index(before:)();
        v345 = v204;
        v228 = v227;
        v347 = v203;
        v230 = v229;
        v231 = v174;
        v233 = v232;
        BigString.UTF8View.subscript.getter();
        v360 = v231;
        if (v231 < v226 >> 10)
        {
          goto LABEL_324;
        }

        v431[0] = v226;
        v431[1] = v228;
        v431[2] = v230;
        v431[3] = v233;
        v234 = v350;
        v431[4] = v350;
        v203 = v347;
        v431[5] = v347;
        v235 = v345;
        v431[6] = v345;
        v431[7] = v225;
        specialized BidirectionalCollection<>._getBlock(for:in:)(1, v431, &v375);
        outlined destroy of BigSubstring.UTF8View(&v397);
        v5 = v366;
        v223 = MEMORY[0x1E69E7CD0];
        v236 = v234;
        v204 = v235;
        v174 = v360;
        if (*(&v376 + 1) != 2)
        {
          v189 = v375;
          if (v360 < v375 >> 10)
          {
            goto LABEL_328;
          }

          v361 = *(&v375 + 1);
          v194 = *(&v376 + 1);
          v362 = v376;
        }

        goto LABEL_248;
      }

      v223 = MEMORY[0x1E69E7CD0];
    }

    v236 = v350;
LABEL_248:
    v417 = v189;
    v256 = v194;
    v257 = v361;
    v418 = v361;
    v419 = v362;
    v420 = v256;
    v421 = v236;
    v422 = v203;
    v423 = v204;
    v424 = v348;
    if (specialized Collection<>._containsScalarConstraint.getter(v223))
    {
      v360 = v174;
      v258 = 0;
      v259 = 1 << *(v223 + 32);
      if (v259 < 64)
      {
        v260 = ~(-1 << v259);
      }

      else
      {
        v260 = -1;
      }

      v261 = v260 & *(v223 + 56);
      v262 = (v259 + 63) >> 6;
      v263 = MEMORY[0x1E69E7CC0];
      v353 = v256;
      v265 = v354;
      v264 = v355;
      while (v261)
      {
LABEL_258:
        v267 = __clz(__rbit64(v261));
        v261 &= v261 - 1;
        v268 = (*(v223 + 48) + ((v258 << 10) | (16 * v267)));
        v269 = v268[1];
        if (v269 >= 2)
        {
          v270 = specialized Collection.first.getter(*v268, v269);
          if ((v270 & 0x100000000) == 0)
          {
            v352 = v270;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v263 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v263 + 2) + 1, 1, v263);
            }

            v272 = *(v263 + 2);
            v271 = *(v263 + 3);
            v273 = v352;
            if (v272 >= v271 >> 1)
            {
              v263 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v271 > 1), v272 + 1, 1, v263);
              v273 = v352;
            }

            *(v263 + 2) = v272 + 1;
            *&v263[4 * v272 + 32] = v273;
            v5 = v366;
            v223 = MEMORY[0x1E69E7CD0];
          }
        }
      }

      while (1)
      {
        v266 = v258 + 1;
        if (__OFADD__(v258, 1))
        {
          goto LABEL_301;
        }

        if (v266 >= v262)
        {
          break;
        }

        v261 = *(v223 + 8 * v266 + 56);
        ++v258;
        if (v261)
        {
          v258 = v266;
          goto LABEL_258;
        }
      }

      v425 = v264;
      v426 = v265;
      v427 = v359;
      v428 = v358;
      v429 = v357;
      v430 = v356;
      BigString.UnicodeScalarView.subscript.getter();
      v274 = v399 >> 10;
      if (v399 >> 10 == v400 >> 10)
      {

        outlined destroy of BigSubstring.UnicodeScalarView(v398);
        outlined destroy of BigString(v432);
LABEL_287:
        v20 = v189;
        v22 = v362;
        v347 = v361;
        v348 = v353;
        goto LABEL_288;
      }

      v284 = BigSubstring.UnicodeScalarView.index(before:)();
      v347 = v285;
      v348 = v286;
      v288 = v287;
      v289 = BigSubstring.UnicodeScalarView.subscript.getter();
      if (!specialized Sequence<>.contains(_:)(v289, v263))
      {
        if (v274 < v284 >> 10)
        {
          do
          {
            v303 = v284;
            v304 = v348;
            v305 = v288;
            v358 = v303;
            v359 = v347;
            v306 = BigSubstring.UnicodeScalarView.index(before:)();
            v347 = v307;
            v348 = v308;
            v288 = v309;
            v310 = BigSubstring.UnicodeScalarView.subscript.getter();
            v311 = *(v263 + 2);
            v312 = 32;
            while (v311)
            {
              v313 = *&v263[v312];
              v312 += 4;
              --v311;
              if (v313 == v310)
              {
                outlined destroy of BigString(v432);

                outlined destroy of BigSubstring.UnicodeScalarView(v398);
                v20 = v358;
                v347 = v359;
                v348 = v304;
                v22 = v305;
                goto LABEL_293;
              }
            }

            v284 = v306;
          }

          while (v274 < v306 >> 10);
        }

        outlined destroy of BigString(v432);

        outlined destroy of BigSubstring.UnicodeScalarView(v398);
        goto LABEL_287;
      }

      outlined destroy of BigSubstring.UnicodeScalarView(v398);
      outlined destroy of BigString(v432);
      v20 = v284;
      v22 = v288;
LABEL_293:
      v282 = v327;
      v13 = v363;
      v283 = v338;
      if (v360 < v20 >> 10)
      {
        goto LABEL_326;
      }

      goto LABEL_289;
    }

    outlined destroy of BigString(v432);
    v20 = v189;
    v347 = v257;
    v348 = v256;
    v22 = v362;
LABEL_288:
    v282 = v327;
    v13 = v363;
    v283 = v338;
LABEL_289:
    v19 = v283 - 1;
    if (v19 <= v282)
    {
      v16 = *(v351 + 16);
      v18 = v325;
      *v325 = v20;
      v18[1] = v347;
      v18[2] = v22;
      v18[3] = v348;
      goto LABEL_7;
    }
  }

  v176 = *v337;
  v177 = v337[1];
  v416[2] = v337[2];
  v416[1] = v177;
  v416[0] = v176;
  v178 = MEMORY[0x1E69E7CD0];
  v179 = v345;
  if (v174 < v340 >> 10)
  {
    goto LABEL_316;
  }

  v181 = *(v351 + 24);
  v180 = *(v351 + 32);
  v182 = *(v351 + 40);
  v183 = *(v351 + 48);
  v184 = *(v351 + 56);
  v185 = *(v351 + 64);
  v415[8] = v340;
  v415[9] = v342;
  v415[10] = v341;
  v415[11] = v343;
  v415[12] = v350;
  v186 = v347;
  v187 = v348;
  v415[13] = v347;
  v415[14] = v345;
  v415[15] = v348;
  if (v340 >> 10 == v174)
  {
    v347 = v342;
    v22 = v341;
    goto LABEL_245;
  }

  v359 = v181;
  v361 = v180;
  v362 = v182;
  v205 = v337[1];
  v435[0] = *v337;
  v435[1] = v205;
  v436 = *(v337 + 4);
  outlined init with copy of Rope<BigString._Chunk>._Node?(v435, &v375);
  v206 = specialized Set.contains(_:)(0, 0, v178);
  v357 = v184;
  v358 = v185;
  if ((v206 & 1) == 0)
  {
    goto LABEL_224;
  }

  if (v174 <= BigString.startIndex.getter() >> 10)
  {
    v178 = MEMORY[0x1E69E7CD0];
LABEL_224:
    v218 = v350;
    v219 = v340;
    v220 = v341;
    v221 = v342;
LABEL_225:
    v401 = v219;
    v402 = v221;
    v403 = v220;
    v404 = v175;
    v405 = v218;
    v406 = v186;
    v407 = v179;
    v408 = v187;
    v237 = v219;
    v238 = v221;
    v239 = v220;
    if (specialized Collection<>._containsScalarConstraint.getter(v178))
    {
      v360 = v174;
      v341 = v239;
      v342 = v238;
      v340 = v237;
      v240 = 0;
      v241 = 1 << *(v178 + 32);
      if (v241 < 64)
      {
        v242 = ~(-1 << v241);
      }

      else
      {
        v242 = -1;
      }

      v243 = v242 & *(v178 + 56);
      v244 = (v241 + 63) >> 6;
      v245 = MEMORY[0x1E69E7CC0];
      v246 = v358;
      while (v243)
      {
LABEL_235:
        v248 = __clz(__rbit64(v243));
        v243 &= v243 - 1;
        v249 = (*(v178 + 48) + ((v240 << 10) | (16 * v248)));
        v250 = v249[1];
        if (v250 >= 2)
        {
          v251 = specialized Collection.first.getter(*v249, v250);
          if ((v251 & 0x100000000) == 0)
          {
            v356 = v251;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v245 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v245 + 2) + 1, 1, v245);
            }

            v253 = *(v245 + 2);
            v252 = *(v245 + 3);
            v254 = v356;
            if (v253 >= v252 >> 1)
            {
              v245 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v252 > 1), v253 + 1, 1, v245);
              v254 = v356;
            }

            *(v245 + 2) = v253 + 1;
            *&v245[4 * v253 + 32] = v254;
            v178 = MEMORY[0x1E69E7CD0];
          }
        }
      }

      while (1)
      {
        v247 = v240 + 1;
        if (__OFADD__(v240, 1))
        {
          goto LABEL_302;
        }

        if (v247 >= v244)
        {

          v409 = v359;
          v410 = v361;
          v411 = v362;
          v412 = v183;
          v413 = v357;
          v414 = v246;
          BigString.UnicodeScalarView.subscript.getter();
          v255 = v395 >> 10;
          if (v395 >> 10 == v396 >> 10)
          {

            outlined destroy of BigSubstring.UnicodeScalarView(v394);
            outlined destroy of BigString(v416);
            v20 = v340;
            v22 = v341;
            v347 = v342;
            goto LABEL_245;
          }

          v275 = BigSubstring.UnicodeScalarView.index(before:)();
          v347 = v276;
          v348 = v277;
          v279 = v278;
          v280 = BigSubstring.UnicodeScalarView.subscript.getter();
          v281 = specialized Sequence<>.contains(_:)(v280, v245);
          v5 = v366;
          v282 = v327;
          v283 = v338;
          if (!v281)
          {
            if (v255 < v275 >> 10)
            {
              do
              {
                v343 = v175;
                v290 = v275;
                v292 = v347;
                v291 = v348;
                v293 = v279;
                v294 = BigSubstring.UnicodeScalarView.index(before:)();
                v347 = v295;
                v348 = v296;
                v279 = v297;
                v298 = BigSubstring.UnicodeScalarView.subscript.getter();
                v299 = *(v245 + 2);
                v300 = 32;
                while (v299)
                {
                  v301 = *&v245[v300];
                  v300 += 4;
                  --v299;
                  if (v301 == v298)
                  {
                    outlined destroy of BigString(v416);

                    outlined destroy of BigSubstring.UnicodeScalarView(v394);
                    v20 = v290;
                    v347 = v292;
                    v348 = v291;
                    v22 = v293;
                    v5 = v366;
                    v282 = v327;
                    v13 = v363;
                    v283 = v338;
                    goto LABEL_291;
                  }
                }

                v275 = v294;
                v302 = v255 >= v294 >> 10;
                v5 = v366;
                v282 = v327;
                v283 = v338;
                v175 = v343;
              }

              while (!v302);
            }

            outlined destroy of BigString(v416);

            outlined destroy of BigSubstring.UnicodeScalarView(v394);
            v20 = v340;
            v22 = v341;
            v347 = v342;
            v348 = v175;
            v13 = v363;
            goto LABEL_289;
          }

          outlined destroy of BigSubstring.UnicodeScalarView(v394);
          outlined destroy of BigString(v416);
          v13 = v363;
          v20 = v275;
          v22 = v279;
LABEL_291:
          if (v360 >= v20 >> 10)
          {
            goto LABEL_289;
          }

          goto LABEL_325;
        }

        v243 = *(v178 + 8 * v247 + 56);
        ++v240;
        if (v243)
        {
          v240 = v247;
          goto LABEL_235;
        }
      }
    }

    outlined destroy of BigString(v416);
    v20 = v237;
    v347 = v238;
    v22 = v239;
LABEL_245:
    v348 = v175;
    v5 = v366;
    goto LABEL_288;
  }

  v415[16] = v359;
  v415[17] = v361;
  v415[18] = v362;
  v356 = v183;
  v415[19] = v183;
  v415[20] = v184;
  v415[21] = v185;
  v207 = v174;
  v208 = BigString.UTF8View.index(before:)();
  v210 = v209;
  v211 = v179;
  v213 = v212;
  v214 = v186;
  v216 = v215;
  BigString.UTF8View.subscript.getter();
  v360 = v207;
  if (v207 < v208 >> 10)
  {
    goto LABEL_323;
  }

  v415[0] = v208;
  v415[1] = v210;
  v415[2] = v213;
  v415[3] = v216;
  v217 = v350;
  v415[4] = v350;
  v186 = v214;
  v415[5] = v214;
  v415[6] = v211;
  v415[7] = v187;
  specialized BidirectionalCollection<>._getBlock(for:in:)(1, v415, &v375);
  outlined destroy of BigSubstring.UTF8View(&v393);
  v178 = MEMORY[0x1E69E7CD0];
  v218 = v217;
  v179 = v211;
  v219 = v340;
  v220 = v341;
  v221 = v342;
  v175 = v343;
  v174 = v360;
  v183 = v356;
  if (*(&v376 + 1) == 2)
  {
    goto LABEL_225;
  }

  v219 = v375;
  if (v360 >= v375 >> 10)
  {
    v221 = *(&v375 + 1);
    v175 = *(&v376 + 1);
    v220 = v376;
    goto LABEL_225;
  }

LABEL_327:
  __break(1u);
LABEL_328:
  __break(1u);
}

uint64_t *specialized BidirectionalCollection.index(_:offsetBy:limitedBy:)@<X0>(uint64_t *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, int64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v105 = a4;
  v106 = *(a3 + 32);
  v9 = *result;
  v8 = result[1];
  v11 = result[2];
  v10 = result[3];
  v12 = result[4];
  v104 = a2;
  if ((a2 & 0x8000000000000000) == 0)
  {
    if (!a2)
    {
LABEL_154:
      *a7 = v9;
      a7[1] = v8;
      a7[2] = v11;
      a7[3] = v10;
      a7[4] = v12;
      return result;
    }

    v7 = 0;
    while (1)
    {
      if (v12 == v106)
      {
        goto LABEL_153;
      }

      v13 = a4[9];
      v14 = a4[12];
      v113 = v9;
      v114 = v8;
      v115 = v11;
      v15 = __OFADD__(v10, 1);
      v16 = v10 + 1;
      if (v15)
      {
        goto LABEL_160;
      }

      if (v9 != v14)
      {
        goto LABEL_161;
      }

      v107 = v7;
      if (v11)
      {
        v17 = *(v11 + 24 * ((v8 >> ((4 * *(v11 + 18) + 8) & 0x3C)) & 0xF) + 24);
        v15 = __OFADD__(v12, v17);
        v12 += v17;
        if (v15)
        {
          goto LABEL_165;
        }

        if (!v13)
        {
          goto LABEL_159;
        }

        v7 = v16;
        v18 = v9;
        v19 = v8;
        swift_unknownObjectRetain();
        v20 = v19;
      }

      else
      {
        v7 = v16;
        v18 = v9;
        v21 = v8;
        swift_unknownObjectRetain();
        v22 = v21;
        v23 = specialized Rope._Node.subscript.getter(v21, v13);

        v15 = __OFADD__(v12, v23);
        v12 += v23;
        if (v15)
        {
          goto LABEL_170;
        }

        v20 = v22;
        if (!v13)
        {
          goto LABEL_159;
        }
      }

      if (v20 >= (((-15 << ((4 * *(v13 + 18) + 8) & 0x3C)) - 1) & *(v13 + 18) | (*(v13 + 16) << ((4 * *(v13 + 18) + 8) & 0x3C))))
      {
        goto LABEL_159;
      }

      if (v11 && (v24 = (4 * *(v11 + 18) + 8) & 0x3C, v25 = ((v20 >> v24) & 0xF) + 1, v25 < *(v11 + 16)))
      {
        v26 = v20;
        result = swift_unknownObjectRelease();
        v27 = ((-15 << v24) - 1) & v26;
        v28 = v25 << v24;
      }

      else
      {
        if (specialized Rope._Node.formSuccessor(of:)(&v113, v13))
        {
          result = swift_unknownObjectRelease();
          v9 = v113;
          v8 = v114;
          v11 = v115;
          goto LABEL_23;
        }

        v29 = *(v13 + 18);
        v30 = *(v13 + 16);
        result = swift_unknownObjectRelease();
        v11 = 0;
        v31 = (4 * v29 + 8) & 0x3C;
        v28 = ((-15 << v31) - 1) & v29;
        v27 = v30 << v31;
      }

      v8 = v28 | v27;
      v9 = v18;
LABEL_23:
      v32 = v104;
      a4 = v105;
      if (v12 < a6)
      {
        v10 = v7;
        v7 = v107;
      }

      else
      {
        v33 = v105[9];
        v34 = a5;
        v7 = v107;
        if (a5 == a6)
        {
          if (v33)
          {
            v35 = v105[11];
          }

          else
          {
            v35 = 0;
          }

          if (a5 < 0 || v35 < a5)
          {
            goto LABEL_174;
          }

          v110 = v105[12];
          if (v33)
          {
            v36 = v105[10];
            v37 = (v33 + 16);
            v38 = *(v33 + 16);
            v39 = *(v33 + 18);
            if (*(v33 + 16) && v105[11] > a5)
            {
              v98 = v105[10];
              result = swift_unknownObjectRetain_n();
              if (!v39)
              {
                v40 = 0;
                v11 = v33;
LABEL_55:
                v50 = 0;
                v51 = 24;
                v47 = v34;
                while (1)
                {
                  v52 = *(v11 + v51);
                  v34 = v47 - v52;
                  if (__OFSUB__(v47, v52))
                  {
                    goto LABEL_162;
                  }

                  if (__OFADD__(v34, 1))
                  {
                    goto LABEL_163;
                  }

                  if (v34 + 1 < 1)
                  {
                    goto LABEL_63;
                  }

                  ++v50;
                  v51 += 24;
                  v47 -= v52;
                  if (v38 == v50)
                  {
                    v50 = v38;
                    goto LABEL_61;
                  }
                }
              }

              v40 = v39;
              v41 = v33;
              do
              {
                v42 = *v37;
                if (*v37)
                {
                  v43 = 0;
                  v44 = (v41 + 40);
                  while (1)
                  {
                    v45 = *v44;
                    v44 += 3;
                    v46 = v34 - v45;
                    if (__OFSUB__(v34, v45))
                    {
                      goto LABEL_156;
                    }

                    if (__OFADD__(v46, 1))
                    {
                      goto LABEL_157;
                    }

                    if (v46 + 1 < 1)
                    {
                      v42 = v43;
                      goto LABEL_36;
                    }

                    ++v43;
                    v34 = v46;
                    if (v42 == v43)
                    {
                      goto LABEL_45;
                    }
                  }
                }

                v46 = v34;
LABEL_45:
                if (v46)
                {
                  goto LABEL_164;
                }

                v34 = 0;
LABEL_36:
                v40 = (v42 << ((4 * v39 + 8) & 0x3C)) | ((-15 << ((4 * v39 + 8) & 0x3C)) - 1) & v40;
                v11 = *(v41 + 24 + 24 * v42);
                swift_unknownObjectRetain();
                result = swift_unknownObjectRelease();
                v37 = (v11 + 16);
                LOBYTE(v39) = *(v11 + 18);
                v41 = v11;
              }

              while (v39);
              LODWORD(v38) = *v37;
              if (*v37)
              {
                goto LABEL_55;
              }

              v50 = 0;
LABEL_61:
              if (!v34)
              {
                v47 = 0;
LABEL_63:
                swift_unknownObjectRelease();
                v49 = v40 & 0xFFFFFFFFFFFFF0FFLL | (v50 << 8);
                v34 = a5;
                v36 = v98;
                goto LABEL_64;
              }

              goto LABEL_179;
            }

            swift_unknownObjectRetain();
            v49 = ((-15 << ((4 * v39 + 8) & 0x3C)) - 1) & v39 | (v38 << ((4 * v39 + 8) & 0x3C));
            v47 = 0;
            v11 = 0;
LABEL_64:
            v48 = v49;
            v10 = specialized Rope._Node.distanceFromStart<A>(to:in:)(v110, v49, v11, v33, v36);
            result = swift_unknownObjectRelease();
            v32 = v104;
            a4 = v105;
          }

          else
          {
            v47 = 0;
            v11 = 0;
            v48 = 0;
            v10 = 0;
          }

          v15 = __OFSUB__(v34, v47);
          v12 = v34 - v47;
          if (v15)
          {
            goto LABEL_175;
          }

          v9 = v110;
          v8 = v48;
        }

        else
        {
          v9 = v105[12];
          if (v33)
          {
            v11 = 0;
            v10 = v105[10];
            v12 = v105[11];
            v8 = ((-15 << ((4 * *(v33 + 18) + 8) & 0x3C)) - 1) & *(v33 + 18) | (*(v33 + 16) << ((4 * *(v33 + 18) + 8) & 0x3C));
          }

          else
          {
            v8 = 0;
            v11 = 0;
            v10 = 0;
            v12 = 0;
          }
        }
      }

      if (++v7 == v32)
      {
        goto LABEL_154;
      }
    }
  }

  v53 = a6;
  v54 = 0;
  while (1)
  {
    if (v12 == v106)
    {
LABEL_153:
      v9 = 0;
      v8 = 0;
      v10 = 0;
      v12 = 0;
      v11 = 1;
      goto LABEL_154;
    }

    v56 = a4[9];
    if (v56)
    {
      if (v12 != a4[11])
      {
        goto LABEL_90;
      }
    }

    else if (v12)
    {
LABEL_90:
      v67 = a4[12];
      v113 = v9;
      v114 = v8;
      v115 = v11;
      v15 = __OFSUB__(v10--, 1);
      if (v15)
      {
        goto LABEL_166;
      }

      if (v9 != v67)
      {
        goto LABEL_167;
      }

      v111 = v9;
      if (v56)
      {
        v7 = *(v56 + 18);
        v68 = v12;
        v69 = v8;
        result = swift_unknownObjectRetain();
        v8 = v69;
        v12 = v68;
        if (v7 >= v8)
        {
          goto LABEL_168;
        }
      }

      else
      {
        v7 = 0;
        if (!v8)
        {
          goto LABEL_168;
        }
      }

      if (v11)
      {
        v70 = (4 * *(v11 + 18) + 8) & 0x3C;
        if (((v8 >> v70) & 0xF) != 0)
        {
          v71 = ((((v8 >> v70) & 0xF) - 1) << v70) | ((-15 << v70) - 1) & v8;
LABEL_133:
          v55 = v71;
          v91 = *(v11 + 24 * ((v71 >> ((4 * *(v11 + 18) + 8) & 0x3C)) & 0xF) + 24);

          result = swift_unknownObjectRelease();
          v15 = __OFSUB__(v12, v91);
          v12 -= v91;
          if (v15)
          {
            goto LABEL_172;
          }

LABEL_134:
          a2 = v104;
          a4 = v105;
          goto LABEL_69;
        }
      }

      v72 = (4 * *(v56 + 18) + 8) & 0x3C;
      v7 = (v8 >> v72) & 0xF;
      if (!*(v56 + 18))
      {
        if (!v7)
        {
          goto LABEL_177;
        }

        v71 = ((v7 - 1) << v72) | v8 & 0xFFFFFFFFFFFFF0FFLL;
        v11 = v56;
        v53 = a6;
        if (v56)
        {
          goto LABEL_133;
        }

        goto LABEL_110;
      }

      if (v7 < *(v56 + 16))
      {
        v73 = *(v56 + 24 * ((v8 >> v72) & 0xF) + 24);
        v74 = (4 * *(v73 + 18) + 8) & 0x3C;
        v75 = (v8 >> v74) & 0xF;
        if (*(v73 + 18))
        {
          if (v75 >= *(v73 + 16))
          {
            v109 = (4 * *(v73 + 18) + 8) & 0x3C;
            swift_unknownObjectRetain();
            swift_unknownObjectRetain();
            goto LABEL_136;
          }

          v102 = (v8 >> v74) & 0xF;
          v11 = *(v73 + 24 * v102 + 24);
          v76 = (4 * *(v11 + 18) + 8) & 0x3C;
          v77 = (v8 >> v76) & 0xF;
          if (*(v11 + 18))
          {
            if (v77 < *(v11 + 16))
            {
              v78 = *(v73 + 24 * ((v8 >> v74) & 0xF) + 24);
              v11 = *(v11 + 24 * ((v8 >> v76) & 0xF) + 24);
              v79 = *(v11 + 18);
              v80 = (4 * v79 + 8) & 0x3C;
              v81 = (v8 >> v80) & 0xF;
              v112 = v81;
              v95 = v78;
              if (v79)
              {
                v96 = v76;
                v97 = (v8 >> v76) & 0xF;
                v109 = v74;
                v94 = v79;
                swift_unknownObjectRetain();
                v99 = v73;
                swift_unknownObjectRetain();
                swift_unknownObjectRetain();
                swift_unknownObjectRetain();
                v82 = specialized closure #1 in Rope._Node.formPredecessor(of:)((v11 + 16), v11 + 24, &v112, &v113, v94);
                swift_unknownObjectRelease();
                v11 = v95;
                if (v82)
                {
                  v11 = v115;
                  goto LABEL_145;
                }

LABEL_149:
                if (v97)
                {
                  v114 = v114 & ((-15 << v96) - 1) | ((v97 - 1) << v96);
                  v7 = v11;
                  v93 = *(v11 + 24 * v97);
                  swift_unknownObjectRetain();
                  v11 = specialized Rope._Node.descendToLastItem(under:)(&v114, v93);
                  swift_unknownObjectRelease();
                  v115 = v11;
                  swift_unknownObjectRelease();
                  v53 = a6;
LABEL_151:
                  swift_unknownObjectRelease();
LABEL_131:
                  swift_unknownObjectRelease();
                  if (v113 != v111)
                  {
                    goto LABEL_169;
                  }

                  v71 = v114;
                  if (v11)
                  {
                    goto LABEL_133;
                  }

LABEL_110:
                  v55 = v71;
                  v83 = specialized Rope._Node.subscript.getter(v71, v56);
                  swift_unknownObjectRelease();

                  v15 = __OFSUB__(v12, v83);
                  v12 -= v83;
                  if (v15)
                  {
                    goto LABEL_178;
                  }

                  v11 = 0;
                  v53 = a6;
                  goto LABEL_134;
                }

                swift_unknownObjectRelease();
                v73 = v99;
                v75 = v102;
LABEL_136:
                if (v75)
                {
                  v114 = v114 & ((-15 << v109) - 1) | ((v75 - 1) << v109);
                  v92 = *(v73 + 24 * v75);
                  v7 = v73;
                  swift_unknownObjectRetain();
                  v11 = specialized Rope._Node.descendToLastItem(under:)(&v114, v92);
                  swift_unknownObjectRelease();
LABEL_129:
                  swift_unknownObjectRelease();
LABEL_130:
                  v53 = a6;
                  goto LABEL_131;
                }

                swift_unknownObjectRelease();
                if (!v7)
                {
                  goto LABEL_176;
                }

LABEL_128:
                v114 = v114 & ((-15 << v72) - 1) | ((v7 - 1) << v72);
                v90 = *(v56 + 24 * v7);
                swift_unknownObjectRetain();
                v11 = specialized Rope._Node.descendToLastItem(under:)(&v114, v90);
                goto LABEL_129;
              }

              if (v81)
              {
                v114 = ((v81 - 1) << v80) | v8 & 0xFFFFFFFFFFFFF0FFLL;
                v115 = v11;
                swift_unknownObjectRetain();
                swift_unknownObjectRetain();
                swift_unknownObjectRetain();
LABEL_145:
                swift_unknownObjectRelease();
                goto LABEL_146;
              }

              v11 = v78;
            }

            v96 = v76;
            v97 = (v8 >> v76) & 0xF;
            v109 = v74;
            swift_unknownObjectRetain();
            v99 = v73;
            swift_unknownObjectRetain();
            swift_unknownObjectRetain();
            goto LABEL_149;
          }

          if (!v77)
          {
            v109 = (4 * *(v73 + 18) + 8) & 0x3C;
            swift_unknownObjectRetain();
            swift_unknownObjectRetain();
            v75 = v102;
            goto LABEL_136;
          }

          v114 = ((v77 - 1) << v76) | v8 & 0xFFFFFFFFFFFFF0FFLL;
          v115 = v11;
          swift_unknownObjectRetain();
          swift_unknownObjectRetain();
LABEL_146:
          v53 = a6;
          goto LABEL_151;
        }

        if (v75)
        {
          v114 = ((v75 - 1) << v74) | v8 & 0xFFFFFFFFFFFFF0FFLL;
          swift_unknownObjectRetain();
          v11 = v73;
          goto LABEL_130;
        }
      }

      swift_unknownObjectRetain();
      if (!v7)
      {
        goto LABEL_176;
      }

      goto LABEL_128;
    }

    if (v56)
    {
      v57 = a4[11];
    }

    else
    {
      v57 = 0;
    }

    if (v53 < 0 || v57 < v53)
    {
      goto LABEL_171;
    }

    v111 = a4[12];
    if (!v56)
    {
      v7 = 0;
      v11 = 0;
      v55 = 0;
      v10 = 0;
      v12 = v53;
      goto LABEL_69;
    }

    v58 = a4[10];
    v60 = (v56 + 16);
    v59 = *(v56 + 16);
    v61 = *(v56 + 18);
    if (*(v56 + 16))
    {
      break;
    }

    swift_unknownObjectRetain();
    v84 = ((-15 << ((4 * v61 + 8) & 0x3C)) - 1) & v61;
    v7 = 0;
    v11 = 0;
LABEL_122:
    v55 = v84;
    v10 = specialized Rope._Node.distanceFromStart<A>(to:in:)(v111, v84, v11, v56, v58);
    result = swift_unknownObjectRelease();
    a2 = v104;
    a4 = v105;
    v12 = v53 - v7;
    if (__OFSUB__(v53, v7))
    {
      goto LABEL_173;
    }

LABEL_69:
    --v54;
    v9 = v111;
    v8 = v55;
    if (v54 <= a2)
    {
      goto LABEL_154;
    }
  }

  v108 = a4[10];
  result = swift_unknownObjectRetain_n();
  if (!v61)
  {
    v62 = 0;
    v7 = v53;
    v11 = v56;
    goto LABEL_116;
  }

  v7 = v53;
  v62 = v61;
  v63 = v56;
  while (2)
  {
    if (!*v60)
    {
      goto LABEL_180;
    }

    v64 = 0;
    v65 = (v63 + 40);
    while (1)
    {
      v66 = v7 - *v65;
      if (__OFSUB__(v7, *v65))
      {
        __break(1u);
LABEL_156:
        __break(1u);
LABEL_157:
        __break(1u);
        goto LABEL_158;
      }

      if (v66 < 1)
      {
        break;
      }

      ++v64;
      v65 += 3;
      v7 = v66;
      if (*v60 == v64)
      {
        goto LABEL_182;
      }
    }

    v62 = (v64 << ((4 * v61 + 8) & 0x3C)) | ((-15 << ((4 * v61 + 8) & 0x3C)) - 1) & v62;
    v11 = *(v65 - 2);
    swift_unknownObjectRetain();
    result = swift_unknownObjectRelease();
    v60 = (v11 + 16);
    LOBYTE(v61) = *(v11 + 18);
    v63 = v11;
    if (v61)
    {
      continue;
    }

    break;
  }

  v59 = *v60;
  if (*v60)
  {
LABEL_116:
    v85 = 0;
    v86 = v59;
    v87 = 24;
    while (1)
    {
      v88 = *(v11 + v87);
      v15 = __OFSUB__(v7, v88);
      v89 = v7 - v88;
      if (v15)
      {
        break;
      }

      if (v89 < 1)
      {
        swift_unknownObjectRelease();
        v84 = v85 | v62 & 0xFFFFFFFFFFFFF0FFLL;
        v53 = a6;
        v58 = v108;
        goto LABEL_122;
      }

      v85 += 256;
      v87 += 24;
      v7 = v89;
      if (!--v86)
      {
        goto LABEL_185;
      }
    }

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
LABEL_169:
    __break(1u);
LABEL_170:
    __break(1u);
LABEL_171:
    __break(1u);
LABEL_172:
    __break(1u);
LABEL_173:
    __break(1u);
LABEL_174:
    __break(1u);
LABEL_175:
    __break(1u);
LABEL_176:
    result = swift_unknownObjectRelease();
    __break(1u);
LABEL_177:
    __break(1u);
LABEL_178:
    __break(1u);
LABEL_179:
    __break(1u);
LABEL_180:
    if (!v7)
    {
      __break(1u);
    }

LABEL_182:
    __break(1u);
  }

  if (!v7)
  {
    __break(1u);
  }

LABEL_185:
  __break(1u);
  return result;
}

uint64_t protocol witness for Collection.startIndex.getter in conformance AttributedString._InternalRunsSlice@<X0>(unint64_t *a1@<X8>)
{
  v3 = v1[1];
  v4 = *(*v1 + 72);
  v5 = *(*v1 + 80);
  v7 = *(*v1 + 88);
  v6 = *(*v1 + 96);
  swift_unknownObjectRetain();
  result = specialized Rope.find<A>(at:in:preferEnd:)(v3, 0, v4, v5, v7, v6);
  if (result == v6)
  {
    v12 = v9;
    v13 = v10;
    v14 = v11;
    if (v4)
    {
      v15 = specialized Rope._Node.distanceFromStart<A>(to:in:)(v6, v9, v10, v4, v5);
      result = swift_unknownObjectRelease();
      v16 = v3 - v14;
      if (!__OFSUB__(v3, v14))
      {
LABEL_4:
        *a1 = v6;
        a1[1] = v12;
        a1[2] = v13;
        a1[3] = v15;
        a1[4] = v16;
        return result;
      }
    }

    else
    {
      v15 = 0;
      v16 = v3 - v11;
      if (!__OFSUB__(v3, v11))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

double protocol witness for Collection.endIndex.getter in conformance AttributedString._InternalRunsSlice@<D0>(uint64_t a1@<X8>)
{
  AttributedString._InternalRunsSlice.endIndex.getter(*v1, *(v1 + 8), *(v1 + 16), v5);
  result = *v5;
  v4 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v4;
  *(a1 + 32) = v6;
  return result;
}

void (*protocol witness for Collection.subscript.read in conformance AttributedString._InternalRunsSlice(uint64_t **a1, unint64_t *a2))(void **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x28uLL);
  }

  v6 = v5;
  *a1 = v5;
  v7 = AttributedString._InternalRunsSlice.subscript.getter(a2, *v2, *(v2 + 8), *(v2 + 16));
  v6[3] = v8;
  v6[4] = v9;
  *v6 = v7;
  v6[1] = v8;
  v6[2] = v9;
  return protocol witness for Collection.subscript.read in conformance AttributedString._InternalRuns;
}

uint64_t protocol witness for Collection.subscript.getter in conformance AttributedString._InternalRunsSlice@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v6[2] = a1[2];
  v6[3] = v3;
  v6[4] = a1[4];
  v4 = a1[1];
  v6[0] = *a1;
  v6[1] = v4;
  return specialized Collection<>.subscript.getter(v6, *v2, *(v2 + 8), *(v2 + 16), a2);
}

double protocol witness for BidirectionalCollection.index(_:offsetBy:) in conformance AttributedString._InternalRunsSlice@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 16);
  v10[0] = *a1;
  v10[1] = v5;
  v11 = *(a1 + 32);
  specialized BidirectionalCollection.index(_:offsetBy:)(v10, a2, *v3, *(v3 + 8), *(v3 + 16), v8);
  result = *v8;
  v7 = v8[1];
  *a3 = v8[0];
  *(a3 + 16) = v7;
  *(a3 + 32) = v9;
  return result;
}

double protocol witness for BidirectionalCollection.index(_:offsetBy:limitedBy:) in conformance AttributedString._InternalRunsSlice@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *(a1 + 16);
  v12[0] = *a1;
  v12[1] = v6;
  v13 = *(a1 + 32);
  v7 = *(a3 + 16);
  v14[0] = *a3;
  v14[1] = v7;
  v15 = *(a3 + 32);
  specialized BidirectionalCollection.index(_:offsetBy:limitedBy:)(v12, a2, v14, *v4, *(v4 + 8), *(v4 + 16), v10);
  result = *v10;
  v9 = v10[1];
  *a4 = v10[0];
  *(a4 + 16) = v9;
  *(a4 + 32) = v11;
  return result;
}