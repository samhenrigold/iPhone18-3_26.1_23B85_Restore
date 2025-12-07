NightingaleTraining::Cycle __swiftcall Cycle.init(start:end:)(Swift::Int start, Swift::Int end)
{
  result.end = end;
  result.start = start;
  return result;
}

uint64_t Cycle.attribute(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{

  v5 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("start", 5uLL, 1);
  v14 = MEMORY[0x25F889340](v5._countAndFlagsBits, v5._object, a1, a2);
  outlined destroy of DefaultStringInterpolation();
  if (v14)
  {

    a5[3] = MEMORY[0x277D83B88];
    *a5 = a3;
  }

  else
  {

    v7 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("end", 3uLL, 1);
    v8 = MEMORY[0x25F889340](v7._countAndFlagsBits, v7._object, a1, a2);
    outlined destroy of DefaultStringInterpolation();

    if (v8)
    {
      a5[3] = MEMORY[0x277D83B88];
      *a5 = a4;
    }

    else
    {
      *a5 = 0;
      a5[1] = 0;
      a5[2] = 0;
      a5[3] = 0;
    }
  }

  return result;
}

Swift::Bool __swiftcall Cycle.has(attribute:)(Swift::String attribute)
{
  v14 = attribute;
  v12 = v1;
  v13 = v2;
  v7 = MEMORY[0x277D837D0];
  _allocateUninitializedArray<A>(_:)();
  v5 = v3;
  *v3 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("start", 5uLL, 1);
  v5[1] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("end", 3uLL, 1);
  _finalizeUninitializedArray<A>(_:)();
  v8 = MEMORY[0x277D837E0];
  v11 = Set.init(arrayLiteral:)();
  v10 = attribute;
  v9 = MEMORY[0x25F8897F0](&v10, v11, v7, v8);

  return v9 & 1;
}

uint64_t Pregnancy.attribute(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (**a4)(void)@<X3>, uint64_t *a5@<X8>)
{

  v5 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("endDay", 6uLL, 1);
  v40 = MEMORY[0x25F889340](v5._countAndFlagsBits, v5._object, a1, a2);
  outlined destroy of DefaultStringInterpolation();
  if (v40)
  {

    result = a4[2](a3);
    a5[3] = MEMORY[0x277D83B88];
    *a5 = result;
  }

  else
  {

    v7 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("lmp", 3uLL, 1);
    v33 = MEMORY[0x25F889340](v7._countAndFlagsBits, v7._object, a1, a2);
    outlined destroy of DefaultStringInterpolation();
    if (v33)
    {

      result = a4[5](a3);
      a5[3] = MEMORY[0x277D83B88];
      *a5 = result;
    }

    else
    {

      v8 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("startDay", 8uLL, 1);
      v32 = MEMORY[0x25F889340](v8._countAndFlagsBits, v8._object, a1, a2);
      outlined destroy of DefaultStringInterpolation();
      if (v32)
      {

        result = a4[1](a3);
        a5[3] = MEMORY[0x277D83B88];
        *a5 = result;
      }

      else
      {

        v9 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("sliceAnchor", 0xBuLL, 1);
        v31 = MEMORY[0x25F889340](v9._countAndFlagsBits, v9._object, a1, a2);
        outlined destroy of DefaultStringInterpolation();
        if (v31)
        {

          result = a4[8](a3);
          a5[3] = MEMORY[0x277D83B88];
          *a5 = result;
        }

        else
        {

          v10 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("lmpDelta", 8uLL, 1);
          v30 = MEMORY[0x25F889340](v10._countAndFlagsBits, v10._object, a1, a2);
          outlined destroy of DefaultStringInterpolation();
          if (v30)
          {

            v27 = implicit closure #1 in Pregnancy.attribute(for:)(v37, a3, a4);
            v28 = v11;
            v29 = swift_allocObject();
            *(v29 + 16) = v27;
            *(v29 + 24) = v28;
            v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSiycMd, "J/");
            result = v29;
            a5[3] = v12;
            *a5 = partial apply for thunk for @escaping @callee_guaranteed () -> (@unowned Int);
            a5[1] = v29;
          }

          else
          {

            v13 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("duration", 8uLL, 1);
            v26 = MEMORY[0x25F889340](v13._countAndFlagsBits, v13._object, a1, a2);
            outlined destroy of DefaultStringInterpolation();
            if (v26)
            {

              result = a4[13](a3);
              a5[3] = MEMORY[0x277D83B88];
              *a5 = result;
            }

            else
            {

              v14 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("source", 6uLL, 1);
              v25 = MEMORY[0x25F889340](v14._countAndFlagsBits, v14._object, a1, a2);
              outlined destroy of DefaultStringInterpolation();
              if (v25)
              {

                v15 = a4[6](a3);
                result = PregnancySource.rawValue.getter(v15);
                a5[3] = MEMORY[0x277D837D0];
                *a5 = result;
                a5[1] = v16;
              }

              else
              {

                v17 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("inferredLMP", 0xBuLL, 1);
                v24 = MEMORY[0x25F889340](v17._countAndFlagsBits, v17._object, a1, a2);
                outlined destroy of DefaultStringInterpolation();
                if (v24)
                {

                  result = a4[9](a3);
                  a5[3] = MEMORY[0x277D839B0];
                  *a5 = result & 1;
                }

                else
                {

                  v18 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("isFactorType", 0xCuLL, 1);
                  v23 = MEMORY[0x25F889340](v18._countAndFlagsBits, v18._object, a1, a2);
                  outlined destroy of DefaultStringInterpolation();
                  if (v23)
                  {

                    a4[6](a3);
                    result = PregnancySource.isFactorType()();
                    a5[3] = MEMORY[0x277D839B0];
                    *a5 = result & 1;
                  }

                  else
                  {

                    v19 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("sliceAnchorType", 0xFuLL, 1);
                    v22 = MEMORY[0x25F889340](v19._countAndFlagsBits, v19._object, a1, a2);
                    outlined destroy of DefaultStringInterpolation();
                    if (v22)
                    {

                      v20 = a4[7](a3);
                      result = SliceDeltaAnchor.rawValue.getter(v20 & 1);
                      a5[3] = MEMORY[0x277D837D0];
                      *a5 = result;
                      a5[1] = v21;
                    }

                    else
                    {

                      *a5 = 0;
                      a5[1] = 0;
                      a5[2] = 0;
                      a5[3] = 0;
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t (*implicit closure #1 in Pregnancy.attribute(for:)(uint64_t a1, uint64_t a2, uint64_t a3))()
{
  v10 = a1;
  v19 = a2;
  v14 = a3;
  v21 = partial apply for implicit closure #2 in implicit closure #1 in Pregnancy.attribute(for:);
  v22 = 0;
  v23 = a2;
  v15 = *(a2 - 8);
  v16 = a2 - 8;
  v12 = v15;
  v13 = *(v15 + 64);
  v11 = (v13 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](a3, a1);
  v18 = &v10 - v11;
  v22 = v3;
  (*(v15 + 16))(&v10 - v11);
  v17 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v4 = swift_allocObject();
  v5 = v14;
  v6 = v15;
  v7 = v17;
  v8 = v18;
  v20 = v4;
  *(v4 + 16) = v19;
  *(v4 + 24) = v5;
  (*(v6 + 32))(v4 + v7, v8);
  return v21;
}

uint64_t thunk for @escaping @callee_guaranteed () -> (@unowned Int)@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

Swift::Bool __swiftcall Pregnancy.has(attribute:)(Swift::String attribute)
{
  v11 = 0;
  v13 = v1;
  v12 = attribute;
  v6 = MEMORY[0x277D837D0];
  _allocateUninitializedArray<A>(_:)();
  v4 = v2;
  *v2 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("endDay", 6uLL, 1);
  v4[1] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("lmp", 3uLL, 1);
  v4[2] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("startDay", 8uLL, 1);
  v4[3] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("sliceAnchor", 0xBuLL, 1);
  v4[4] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("lmpDelta", 8uLL, 1);
  v4[5] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("duration", 8uLL, 1);
  v4[6] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("source", 6uLL, 1);
  v4[7] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("inferredLMP", 0xBuLL, 1);
  v4[8] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("isFactorType", 0xCuLL, 1);
  v4[9] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("sliceAnchorType", 0xFuLL, 1);
  _finalizeUninitializedArray<A>(_:)();
  v7 = MEMORY[0x277D837E0];
  v10 = Set.init(arrayLiteral:)();
  v9 = attribute;
  v8 = MEMORY[0x25F8897F0](&v9, v10, v6, v7);

  return v8 & 1;
}

void HyperParams.attribute(for:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v317 = a3;
  v327 = a1;
  v328 = a2;
  v490 = 0;
  v491 = 0;
  v489 = 0;
  v319 = type metadata accessor for ShuffleMethod();
  v320 = *(v319 - 8);
  v321 = v319 - 8;
  v323 = *(v320 + 64);
  v322 = (v323 + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x28223BE20](v328, v4);
  v324 = &v203 - v322;
  v325 = v322;
  v6 = MEMORY[0x28223BE20](v5, &v203 - v322);
  v326 = &v203 - v325;
  v490 = v7;
  v491 = v6;
  v489 = v3;

  v8 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("outputPostProcThresholds", 0x18uLL, 1);
  v329 = &v488;
  v488 = v8;
  v486 = v327;
  v487 = v328;
  v330 = MEMORY[0x25F889340](v8._countAndFlagsBits, v8._object, v327, v328);
  outlined destroy of DefaultStringInterpolation();
  if (v330)
  {

    v316 = HyperParams.outputPostProcThresholds.getter();
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySfGMd, &_sSaySfGMR);
    v10 = v317;
    v11 = v9;
    v12 = v316;
    v317[3] = v11;
    *v10 = v12;
  }

  else
  {

    v13 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("latencyBuckets", 0xEuLL, 1);
    v314 = &v485;
    v485 = v13;
    v483 = v327;
    v484 = v328;
    v315 = MEMORY[0x25F889340](v13._countAndFlagsBits, v13._object, v327, v328);
    outlined destroy of DefaultStringInterpolation();
    if (v315)
    {

      v313 = HyperParams.latencyBuckets.getter();
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySfGMd, &_sSaySfGMR);
      v15 = v317;
      v16 = v14;
      v17 = v313;
      v317[3] = v16;
      *v15 = v17;
    }

    else
    {

      v18 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("maxFPRs", 7uLL, 1);
      v311 = &v482;
      v482 = v18;
      v480 = v327;
      v481 = v328;
      v312 = MEMORY[0x25F889340](v18._countAndFlagsBits, v18._object, v327, v328);
      outlined destroy of DefaultStringInterpolation();
      if (v312)
      {

        v310 = HyperParams.maxFPRs.getter();
        v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySfGMd, &_sSaySfGMR);
        v20 = v317;
        v21 = v19;
        v22 = v310;
        v317[3] = v21;
        *v20 = v22;
      }

      else
      {

        v23 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("confusionMatrixNumThresholds", 0x1CuLL, 1);
        v308 = &v479;
        v479 = v23;
        v477 = v327;
        v478 = v328;
        v309 = MEMORY[0x25F889340](v23._countAndFlagsBits, v23._object, v327, v328);
        outlined destroy of DefaultStringInterpolation();
        if (v309)
        {

          v24 = HyperParams.confusionMatrixNumThresholds.getter();
          v25 = v317;
          v317[3] = MEMORY[0x277D83B88];
          *v25 = v24;
        }

        else
        {

          v26 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("targetFPRs", 0xAuLL, 1);
          v306 = &v476;
          v476 = v26;
          v474 = v327;
          v475 = v328;
          v307 = MEMORY[0x25F889340](v26._countAndFlagsBits, v26._object, v327, v328);
          outlined destroy of DefaultStringInterpolation();
          if (v307)
          {

            v305 = HyperParams.targetFPRs.getter();
            v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySfGMd, &_sSaySfGMR);
            v28 = v317;
            v29 = v27;
            v30 = v305;
            v317[3] = v29;
            *v28 = v30;
          }

          else
          {

            v31 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("modelOutputNumberOfBuckets", 0x1AuLL, 1);
            v303 = &v473;
            v473 = v31;
            v471 = v327;
            v472 = v328;
            v304 = MEMORY[0x25F889340](v31._countAndFlagsBits, v31._object, v327, v328);
            outlined destroy of DefaultStringInterpolation();
            if (v304)
            {

              v32 = HyperParams.modelOutputNumberOfBuckets.getter();
              v33 = v317;
              v317[3] = MEMORY[0x277D83B88];
              *v33 = v32;
            }

            else
            {

              v34 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("sliceSize", 9uLL, 1);
              v301 = &v470;
              v470 = v34;
              v468 = v327;
              v469 = v328;
              v302 = MEMORY[0x25F889340](v34._countAndFlagsBits, v34._object, v327, v328);
              outlined destroy of DefaultStringInterpolation();
              if (v302)
              {

                v35 = HyperParams.sliceSize.getter();
                v36 = v317;
                v317[3] = MEMORY[0x277D83B88];
                *v36 = v35;
              }

              else
              {

                v37 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("excludeContraceptionSlices", 0x1AuLL, 1);
                v299 = &v467;
                v467 = v37;
                v465 = v327;
                v466 = v328;
                v300 = MEMORY[0x25F889340](v37._countAndFlagsBits, v37._object, v327, v328);
                outlined destroy of DefaultStringInterpolation();
                if (v300)
                {

                  v38 = HyperParams.excludeContraceptionSlices.getter();
                  v39 = v317;
                  v317[3] = MEMORY[0x277D839B0];
                  *v39 = v38 & 1;
                }

                else
                {

                  v40 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("excludeOtherPregnancySlices", 0x1BuLL, 1);
                  v297 = &v464;
                  v464 = v40;
                  v462 = v327;
                  v463 = v328;
                  v298 = MEMORY[0x25F889340](v40._countAndFlagsBits, v40._object, v327, v328);
                  outlined destroy of DefaultStringInterpolation();
                  if (v298)
                  {

                    v41 = HyperParams.excludeOtherPregnancySlices.getter();
                    v42 = v317;
                    v317[3] = MEMORY[0x277D839B0];
                    *v42 = v41 & 1;
                  }

                  else
                  {

                    v43 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("minSliceAnchorDelta", 0x13uLL, 1);
                    v295 = &v461;
                    v461 = v43;
                    v459 = v327;
                    v460 = v328;
                    v296 = MEMORY[0x25F889340](v43._countAndFlagsBits, v43._object, v327, v328);
                    outlined destroy of DefaultStringInterpolation();
                    if (v296)
                    {

                      v44 = HyperParams.minSliceAnchorDelta.getter();
                      v45 = v317;
                      v317[3] = MEMORY[0x277D83B88];
                      *v45 = v44;
                    }

                    else
                    {

                      v46 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("maxSliceAnchorDelta", 0x13uLL, 1);
                      v293 = &v458;
                      v458 = v46;
                      v456 = v327;
                      v457 = v328;
                      v294 = MEMORY[0x25F889340](v46._countAndFlagsBits, v46._object, v327, v328);
                      outlined destroy of DefaultStringInterpolation();
                      if (v294)
                      {

                        v47 = HyperParams.maxSliceAnchorDelta.getter();
                        v48 = v317;
                        v317[3] = MEMORY[0x277D83B88];
                        *v48 = v47;
                      }

                      else
                      {

                        v49 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("lmpMinSliceAnchorDelta", 0x16uLL, 1);
                        v291 = &v455;
                        v455 = v49;
                        v453 = v327;
                        v454 = v328;
                        v292 = MEMORY[0x25F889340](v49._countAndFlagsBits, v49._object, v327, v328);
                        outlined destroy of DefaultStringInterpolation();
                        if (v292)
                        {

                          v50 = HyperParams.lmpMinSliceAnchorDelta.getter();
                          v51 = v317;
                          v317[3] = MEMORY[0x277D83B88];
                          *v51 = v50;
                        }

                        else
                        {

                          v52 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("lmpMaxSliceAnchorDelta", 0x16uLL, 1);
                          v289 = &v452;
                          v452 = v52;
                          v450 = v327;
                          v451 = v328;
                          v290 = MEMORY[0x25F889340](v52._countAndFlagsBits, v52._object, v327, v328);
                          outlined destroy of DefaultStringInterpolation();
                          if (v290)
                          {

                            v53 = HyperParams.lmpMaxSliceAnchorDelta.getter();
                            v54 = v317;
                            v317[3] = MEMORY[0x277D83B88];
                            *v54 = v53;
                          }

                          else
                          {

                            v55 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("isCalendarPeriodPredictionRequired", 0x22uLL, 1);
                            v287 = &v449;
                            v449 = v55;
                            v447 = v327;
                            v448 = v328;
                            v288 = MEMORY[0x25F889340](v55._countAndFlagsBits, v55._object, v327, v328);
                            outlined destroy of DefaultStringInterpolation();
                            if (v288)
                            {

                              v56 = HyperParams.isCalendarPeriodPredictionRequired()();
                              v57 = v317;
                              v317[3] = MEMORY[0x277D839B0];
                              *v57 = v56;
                            }

                            else
                            {

                              v58 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("isDaysSinceLastPeriodStartRequired", 0x22uLL, 1);
                              v285 = &v446;
                              v446 = v58;
                              v444 = v327;
                              v445 = v328;
                              v286 = MEMORY[0x25F889340](v58._countAndFlagsBits, v58._object, v327, v328);
                              outlined destroy of DefaultStringInterpolation();
                              if (v286)
                              {

                                PeriodStart = HyperParams.isDaysSinceLastPeriodStartRequired()();
                                v60 = v317;
                                v317[3] = MEMORY[0x277D839B0];
                                *v60 = PeriodStart;
                              }

                              else
                              {

                                v61 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("isDaySHRRequired", 0x10uLL, 1);
                                v283 = &v443;
                                v443 = v61;
                                v441 = v327;
                                v442 = v328;
                                v284 = MEMORY[0x25F889340](v61._countAndFlagsBits, v61._object, v327, v328);
                                outlined destroy of DefaultStringInterpolation();
                                if (v284)
                                {

                                  v62 = HyperParams.isDaySHRRequired()();
                                  v63 = v317;
                                  v317[3] = MEMORY[0x277D839B0];
                                  *v63 = v62;
                                }

                                else
                                {

                                  v64 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("isNightSHRRequired", 0x12uLL, 1);
                                  v281 = &v440;
                                  v440 = v64;
                                  v438 = v327;
                                  v439 = v328;
                                  v282 = MEMORY[0x25F889340](v64._countAndFlagsBits, v64._object, v327, v328);
                                  outlined destroy of DefaultStringInterpolation();
                                  if (v282)
                                  {

                                    v65 = HyperParams.isNightSHRRequired()();
                                    v66 = v317;
                                    v317[3] = MEMORY[0x277D839B0];
                                    *v66 = v65;
                                  }

                                  else
                                  {

                                    v67 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("isSWTRequired", 0xDuLL, 1);
                                    v279 = &v437;
                                    v437 = v67;
                                    v435 = v327;
                                    v436 = v328;
                                    v280 = MEMORY[0x25F889340](v67._countAndFlagsBits, v67._object, v327, v328);
                                    outlined destroy of DefaultStringInterpolation();
                                    if (v280)
                                    {

                                      v68 = HyperParams.isSWTRequired()();
                                      v69 = v317;
                                      v317[3] = MEMORY[0x277D839B0];
                                      *v69 = v68;
                                    }

                                    else
                                    {

                                      v70 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("isHRVRequired", 0xDuLL, 1);
                                      v277 = &v434;
                                      v434 = v70;
                                      v432 = v327;
                                      v433 = v328;
                                      v278 = MEMORY[0x25F889340](v70._countAndFlagsBits, v70._object, v327, v328);
                                      outlined destroy of DefaultStringInterpolation();
                                      if (v278)
                                      {

                                        v71 = HyperParams.isHRVRequired()();
                                        v72 = v317;
                                        v317[3] = MEMORY[0x277D839B0];
                                        *v72 = v71;
                                      }

                                      else
                                      {

                                        v73 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("isRespiratoryRateRequired", 0x19uLL, 1);
                                        v275 = &v431;
                                        v431 = v73;
                                        v429 = v327;
                                        v430 = v328;
                                        v276 = MEMORY[0x25F889340](v73._countAndFlagsBits, v73._object, v327, v328);
                                        outlined destroy of DefaultStringInterpolation();
                                        if (v276)
                                        {

                                          v74 = HyperParams.isRespiratoryRateRequired()();
                                          v75 = v317;
                                          v317[3] = MEMORY[0x277D839B0];
                                          *v75 = v74;
                                        }

                                        else
                                        {

                                          v76 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("isSpO2Required", 0xEuLL, 1);
                                          v273 = &v428;
                                          v428 = v76;
                                          v426 = v327;
                                          v427 = v328;
                                          v274 = MEMORY[0x25F889340](v76._countAndFlagsBits, v76._object, v327, v328);
                                          outlined destroy of DefaultStringInterpolation();
                                          if (v274)
                                          {

                                            v77 = HyperParams.isSpO2Required()();
                                            v78 = v317;
                                            v317[3] = MEMORY[0x277D839B0];
                                            *v78 = v77;
                                          }

                                          else
                                          {

                                            v79 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("isPSMRequired", 0xDuLL, 1);
                                            v271 = &v425;
                                            v425 = v79;
                                            v423 = v327;
                                            v424 = v328;
                                            v272 = MEMORY[0x25F889340](v79._countAndFlagsBits, v79._object, v327, v328);
                                            outlined destroy of DefaultStringInterpolation();
                                            if (v272)
                                            {

                                              v80 = HyperParams.isPSMRequired()();
                                              v81 = v317;
                                              v317[3] = MEMORY[0x277D839B0];
                                              *v81 = v80;
                                            }

                                            else
                                            {

                                              v82 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("isPSSRequired", 0xDuLL, 1);
                                              v269 = &v422;
                                              v422 = v82;
                                              v420 = v327;
                                              v421 = v328;
                                              v270 = MEMORY[0x25F889340](v82._countAndFlagsBits, v82._object, v327, v328);
                                              outlined destroy of DefaultStringInterpolation();
                                              if (v270)
                                              {

                                                v83 = HyperParams.isPSSRequired()();
                                                v84 = v317;
                                                v317[3] = MEMORY[0x277D839B0];
                                                *v84 = v83;
                                              }

                                              else
                                              {

                                                v85 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("dropNegativeSlicesForInferredFactorLMP", 0x26uLL, 1);
                                                v267 = &v419;
                                                v419 = v85;
                                                v417 = v327;
                                                v418 = v328;
                                                v268 = MEMORY[0x25F889340](v85._countAndFlagsBits, v85._object, v327, v328);
                                                outlined destroy of DefaultStringInterpolation();
                                                if (v268)
                                                {

                                                  v86 = HyperParams.dropNegativeSlicesForInferredFactorLMP.getter();
                                                  v87 = v317;
                                                  v317[3] = MEMORY[0x277D83B88];
                                                  *v87 = v86;
                                                }

                                                else
                                                {

                                                  v88 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("dropNegativeSlicesForInferredTestLMP", 0x24uLL, 1);
                                                  v265 = &v416;
                                                  v416 = v88;
                                                  v414 = v327;
                                                  v415 = v328;
                                                  v266 = MEMORY[0x25F889340](v88._countAndFlagsBits, v88._object, v327, v328);
                                                  outlined destroy of DefaultStringInterpolation();
                                                  if (v266)
                                                  {

                                                    v89 = HyperParams.dropNegativeSlicesForInferredTestLMP.getter();
                                                    v90 = v317;
                                                    v317[3] = MEMORY[0x277D83B88];
                                                    *v90 = v89;
                                                  }

                                                  else
                                                  {

                                                    v91 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("minDaySHRAvailability", 0x15uLL, 1);
                                                    v263 = &v413;
                                                    v413 = v91;
                                                    v411 = v327;
                                                    v412 = v328;
                                                    v264 = MEMORY[0x25F889340](v91._countAndFlagsBits, v91._object, v327, v328);
                                                    outlined destroy of DefaultStringInterpolation();
                                                    if (v264)
                                                    {

                                                      v92 = HyperParams.minDaySHRAvailability.getter();
                                                      v93 = v317;
                                                      v317[3] = MEMORY[0x277D839F8];
                                                      *v93 = v92;
                                                    }

                                                    else
                                                    {

                                                      v94 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("minNightSHRAvailability", 0x17uLL, 1);
                                                      v261 = &v410;
                                                      v410 = v94;
                                                      v408 = v327;
                                                      v409 = v328;
                                                      v262 = MEMORY[0x25F889340](v94._countAndFlagsBits, v94._object, v327, v328);
                                                      outlined destroy of DefaultStringInterpolation();
                                                      if (v262)
                                                      {

                                                        v95 = HyperParams.minNightSHRAvailability.getter();
                                                        v96 = v317;
                                                        v317[3] = MEMORY[0x277D839F8];
                                                        *v96 = v95;
                                                      }

                                                      else
                                                      {

                                                        v97 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("minWristTempAvailability", 0x18uLL, 1);
                                                        v259 = &v407;
                                                        v407 = v97;
                                                        v405 = v327;
                                                        v406 = v328;
                                                        v260 = MEMORY[0x25F889340](v97._countAndFlagsBits, v97._object, v327, v328);
                                                        outlined destroy of DefaultStringInterpolation();
                                                        if (v260)
                                                        {

                                                          v98 = HyperParams.minWristTempAvailability.getter();
                                                          v99 = v317;
                                                          v317[3] = MEMORY[0x277D839F8];
                                                          *v99 = v98;
                                                        }

                                                        else
                                                        {

                                                          v100 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("minHRVAvailability", 0x12uLL, 1);
                                                          v257 = &v404;
                                                          v404 = v100;
                                                          v402 = v327;
                                                          v403 = v328;
                                                          v258 = MEMORY[0x25F889340](v100._countAndFlagsBits, v100._object, v327, v328);
                                                          outlined destroy of DefaultStringInterpolation();
                                                          if (v258)
                                                          {

                                                            v101 = HyperParams.minHRVAvailability.getter();
                                                            v102 = v317;
                                                            v317[3] = MEMORY[0x277D839F8];
                                                            *v102 = v101;
                                                          }

                                                          else
                                                          {

                                                            v103 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("minSpO2Availability", 0x13uLL, 1);
                                                            v255 = &v401;
                                                            v401 = v103;
                                                            v399 = v327;
                                                            v400 = v328;
                                                            v256 = MEMORY[0x25F889340](v103._countAndFlagsBits, v103._object, v327, v328);
                                                            outlined destroy of DefaultStringInterpolation();
                                                            if (v256)
                                                            {

                                                              v104 = HyperParams.minSpO2Availability.getter();
                                                              v105 = v317;
                                                              v317[3] = MEMORY[0x277D839F8];
                                                              *v105 = v104;
                                                            }

                                                            else
                                                            {

                                                              v106 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("minRespiratoryRateAvailability", 0x1EuLL, 1);
                                                              v253 = &v398;
                                                              v398 = v106;
                                                              v396 = v327;
                                                              v397 = v328;
                                                              v254 = MEMORY[0x25F889340](v106._countAndFlagsBits, v106._object, v327, v328);
                                                              outlined destroy of DefaultStringInterpolation();
                                                              if (v254)
                                                              {

                                                                v107 = HyperParams.minRespiratoryRateAvailability.getter();
                                                                v108 = v317;
                                                                v317[3] = MEMORY[0x277D839F8];
                                                                *v108 = v107;
                                                              }

                                                              else
                                                              {

                                                                v109 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("pregLabelStartAnchorDelta", 0x19uLL, 1);
                                                                v251 = &v395;
                                                                v395 = v109;
                                                                v393 = v327;
                                                                v394 = v328;
                                                                v252 = MEMORY[0x25F889340](v109._countAndFlagsBits, v109._object, v327, v328);
                                                                outlined destroy of DefaultStringInterpolation();
                                                                if (v252)
                                                                {

                                                                  started = HyperParams.pregLabelStartAnchorDelta.getter();
                                                                  v111 = v317;
                                                                  v317[3] = MEMORY[0x277D83B88];
                                                                  *v111 = started;
                                                                }

                                                                else
                                                                {

                                                                  v112 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("lmpPregLabelStartAnchorDelta", 0x1CuLL, 1);
                                                                  v249 = &v392;
                                                                  v392 = v112;
                                                                  v390 = v327;
                                                                  v391 = v328;
                                                                  v250 = MEMORY[0x25F889340](v112._countAndFlagsBits, v112._object, v327, v328);
                                                                  outlined destroy of DefaultStringInterpolation();
                                                                  if (v250)
                                                                  {

                                                                    v113 = HyperParams.lmpPregLabelStartAnchorDelta.getter();
                                                                    v114 = v317;
                                                                    v317[3] = MEMORY[0x277D83B88];
                                                                    *v114 = v113;
                                                                  }

                                                                  else
                                                                  {

                                                                    v115 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("daySHRStatsOption", 0x11uLL, 1);
                                                                    v247 = &v389;
                                                                    v389 = v115;
                                                                    v387 = v327;
                                                                    v388 = v328;
                                                                    v248 = MEMORY[0x25F889340](v115._countAndFlagsBits, v115._object, v327, v328);
                                                                    outlined destroy of DefaultStringInterpolation();
                                                                    if (v248)
                                                                    {

                                                                      v116 = HyperParams.daySHRStatsOption.getter();
                                                                      v117 = FeatureStatsOption.rawValue.getter(v116);
                                                                      v118 = v317;
                                                                      v317[3] = MEMORY[0x277D837D0];
                                                                      *v118 = v117;
                                                                      v118[1] = v119;
                                                                    }

                                                                    else
                                                                    {

                                                                      v120 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("nightSHRStatsOption", 0x13uLL, 1);
                                                                      v245 = &v386;
                                                                      v386 = v120;
                                                                      v384 = v327;
                                                                      v385 = v328;
                                                                      v246 = MEMORY[0x25F889340](v120._countAndFlagsBits, v120._object, v327, v328);
                                                                      outlined destroy of DefaultStringInterpolation();
                                                                      if (v246)
                                                                      {

                                                                        v121 = HyperParams.nightSHRStatsOption.getter();
                                                                        v122 = FeatureStatsOption.rawValue.getter(v121);
                                                                        v123 = v317;
                                                                        v317[3] = MEMORY[0x277D837D0];
                                                                        *v123 = v122;
                                                                        v123[1] = v124;
                                                                      }

                                                                      else
                                                                      {

                                                                        v125 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("pSMStatsOption", 0xEuLL, 1);
                                                                        v243 = &v383;
                                                                        v383 = v125;
                                                                        v381 = v327;
                                                                        v382 = v328;
                                                                        v244 = MEMORY[0x25F889340](v125._countAndFlagsBits, v125._object, v327, v328);
                                                                        outlined destroy of DefaultStringInterpolation();
                                                                        if (v244)
                                                                        {

                                                                          v126 = HyperParams.pSMStatsOption.getter();
                                                                          v127 = FeatureStatsOption.rawValue.getter(v126);
                                                                          v128 = v317;
                                                                          v317[3] = MEMORY[0x277D837D0];
                                                                          *v128 = v127;
                                                                          v128[1] = v129;
                                                                        }

                                                                        else
                                                                        {

                                                                          v130 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("pSSStatsOption", 0xEuLL, 1);
                                                                          v241 = &v380;
                                                                          v380 = v130;
                                                                          v378 = v327;
                                                                          v379 = v328;
                                                                          v242 = MEMORY[0x25F889340](v130._countAndFlagsBits, v130._object, v327, v328);
                                                                          outlined destroy of DefaultStringInterpolation();
                                                                          if (v242)
                                                                          {

                                                                            v131 = HyperParams.pSSStatsOption.getter();
                                                                            v132 = FeatureStatsOption.rawValue.getter(v131);
                                                                            v133 = v317;
                                                                            v317[3] = MEMORY[0x277D837D0];
                                                                            *v133 = v132;
                                                                            v133[1] = v134;
                                                                          }

                                                                          else
                                                                          {

                                                                            v135 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("daysSinceLastPeriodStartStatsOption", 0x23uLL, 1);
                                                                            v239 = &v377;
                                                                            v377 = v135;
                                                                            v375 = v327;
                                                                            v376 = v328;
                                                                            v240 = MEMORY[0x25F889340](v135._countAndFlagsBits, v135._object, v327, v328);
                                                                            outlined destroy of DefaultStringInterpolation();
                                                                            if (v240)
                                                                            {

                                                                              PeriodStartStats = HyperParams.daysSinceLastPeriodStartStatsOption.getter();
                                                                              v137 = FeatureStatsOption.rawValue.getter(PeriodStartStats);
                                                                              v138 = v317;
                                                                              v317[3] = MEMORY[0x277D837D0];
                                                                              *v138 = v137;
                                                                              v138[1] = v139;
                                                                            }

                                                                            else
                                                                            {

                                                                              v140 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("sWTStatsOption", 0xEuLL, 1);
                                                                              v237 = &v374;
                                                                              v374 = v140;
                                                                              v372 = v327;
                                                                              v373 = v328;
                                                                              v238 = MEMORY[0x25F889340](v140._countAndFlagsBits, v140._object, v327, v328);
                                                                              outlined destroy of DefaultStringInterpolation();
                                                                              if (v238)
                                                                              {

                                                                                v141 = HyperParams.sWTStatsOption.getter();
                                                                                v142 = FeatureStatsOption.rawValue.getter(v141);
                                                                                v143 = v317;
                                                                                v317[3] = MEMORY[0x277D837D0];
                                                                                *v143 = v142;
                                                                                v143[1] = v144;
                                                                              }

                                                                              else
                                                                              {

                                                                                v145 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("hrvStatsOption", 0xEuLL, 1);
                                                                                v235 = &v371;
                                                                                v371 = v145;
                                                                                v369 = v327;
                                                                                v370 = v328;
                                                                                v236 = MEMORY[0x25F889340](v145._countAndFlagsBits, v145._object, v327, v328);
                                                                                outlined destroy of DefaultStringInterpolation();
                                                                                if (v236)
                                                                                {

                                                                                  v146 = HyperParams.hrvStatsOption.getter();
                                                                                  v147 = FeatureStatsOption.rawValue.getter(v146);
                                                                                  v148 = v317;
                                                                                  v317[3] = MEMORY[0x277D837D0];
                                                                                  *v148 = v147;
                                                                                  v148[1] = v149;
                                                                                }

                                                                                else
                                                                                {

                                                                                  v150 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("respiratoryRateStatsOption", 0x1AuLL, 1);
                                                                                  v233 = &v368;
                                                                                  v368 = v150;
                                                                                  v366 = v327;
                                                                                  v367 = v328;
                                                                                  v234 = MEMORY[0x25F889340](v150._countAndFlagsBits, v150._object, v327, v328);
                                                                                  outlined destroy of DefaultStringInterpolation();
                                                                                  if (v234)
                                                                                  {

                                                                                    v151 = HyperParams.respiratoryRateStatsOption.getter();
                                                                                    v152 = FeatureStatsOption.rawValue.getter(v151);
                                                                                    v153 = v317;
                                                                                    v317[3] = MEMORY[0x277D837D0];
                                                                                    *v153 = v152;
                                                                                    v153[1] = v154;
                                                                                  }

                                                                                  else
                                                                                  {

                                                                                    v155 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("spO2StatsOption", 0xFuLL, 1);
                                                                                    v231 = &v365;
                                                                                    v365 = v155;
                                                                                    v363 = v327;
                                                                                    v364 = v328;
                                                                                    v232 = MEMORY[0x25F889340](v155._countAndFlagsBits, v155._object, v327, v328);
                                                                                    outlined destroy of DefaultStringInterpolation();
                                                                                    if (v232)
                                                                                    {

                                                                                      v156 = HyperParams.spO2StatsOption.getter();
                                                                                      v157 = FeatureStatsOption.rawValue.getter(v156);
                                                                                      v158 = v317;
                                                                                      v317[3] = MEMORY[0x277D837D0];
                                                                                      *v158 = v157;
                                                                                      v158[1] = v159;
                                                                                    }

                                                                                    else
                                                                                    {

                                                                                      v160 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("evalBeforeTrain", 0xFuLL, 1);
                                                                                      v229 = &v362;
                                                                                      v362 = v160;
                                                                                      v360 = v327;
                                                                                      v361 = v328;
                                                                                      v230 = MEMORY[0x25F889340](v160._countAndFlagsBits, v160._object, v327, v328);
                                                                                      outlined destroy of DefaultStringInterpolation();
                                                                                      if (v230)
                                                                                      {

                                                                                        v161 = HyperParams.evalBeforeTrain.getter();
                                                                                        v162 = v317;
                                                                                        v317[3] = MEMORY[0x277D839B0];
                                                                                        *v162 = v161 & 1;
                                                                                      }

                                                                                      else
                                                                                      {

                                                                                        v163 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("labelName", 9uLL, 1);
                                                                                        v227 = &v359;
                                                                                        v359 = v163;
                                                                                        v357 = v327;
                                                                                        v358 = v328;
                                                                                        v228 = MEMORY[0x25F889340](v163._countAndFlagsBits, v163._object, v327, v328);
                                                                                        outlined destroy of DefaultStringInterpolation();
                                                                                        if (v228)
                                                                                        {

                                                                                          v164 = HyperParams.labelName.getter();
                                                                                          v165 = v317;
                                                                                          v317[3] = MEMORY[0x277D837D0];
                                                                                          *v165 = v164;
                                                                                          v165[1] = v166;
                                                                                        }

                                                                                        else
                                                                                        {

                                                                                          v167 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("lossName", 8uLL, 1);
                                                                                          v225 = &v356;
                                                                                          v356 = v167;
                                                                                          v354 = v327;
                                                                                          v355 = v328;
                                                                                          v226 = MEMORY[0x25F889340](v167._countAndFlagsBits, v167._object, v327, v328);
                                                                                          outlined destroy of DefaultStringInterpolation();
                                                                                          if (v226)
                                                                                          {

                                                                                            v168 = HyperParams.lossName.getter();
                                                                                            v169 = v317;
                                                                                            v317[3] = MEMORY[0x277D837D0];
                                                                                            *v169 = v168;
                                                                                            v169[1] = v170;
                                                                                          }

                                                                                          else
                                                                                          {

                                                                                            v171 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("outputName", 0xAuLL, 1);
                                                                                            v223 = &v353;
                                                                                            v353 = v171;
                                                                                            v351 = v327;
                                                                                            v352 = v328;
                                                                                            v224 = MEMORY[0x25F889340](v171._countAndFlagsBits, v171._object, v327, v328);
                                                                                            outlined destroy of DefaultStringInterpolation();
                                                                                            if (v224)
                                                                                            {

                                                                                              v172 = HyperParams.outputName.getter();
                                                                                              v173 = v317;
                                                                                              v317[3] = MEMORY[0x277D837D0];
                                                                                              *v173 = v172;
                                                                                              v173[1] = v174;
                                                                                            }

                                                                                            else
                                                                                            {

                                                                                              v175 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("nightingaleDInputFeatureList", 0x1CuLL, 1);
                                                                                              v221 = &v350;
                                                                                              v350 = v175;
                                                                                              v348 = v327;
                                                                                              v349 = v328;
                                                                                              v222 = MEMORY[0x25F889340](v175._countAndFlagsBits, v175._object, v327, v328);
                                                                                              outlined destroy of DefaultStringInterpolation();
                                                                                              if (v222)
                                                                                              {

                                                                                                v219 = v331;
                                                                                                swift_beginAccess();
                                                                                                v220 = *(v318 + 24);

                                                                                                swift_endAccess();
                                                                                                v176 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
                                                                                                v177 = v317;
                                                                                                v178 = v220;
                                                                                                v317[3] = v176;
                                                                                                *v177 = v178;
                                                                                              }

                                                                                              else
                                                                                              {

                                                                                                v179 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("batchSize", 9uLL, 1);
                                                                                                v217 = &v347;
                                                                                                v347 = v179;
                                                                                                v345 = v327;
                                                                                                v346 = v328;
                                                                                                v218 = MEMORY[0x25F889340](v179._countAndFlagsBits, v179._object, v327, v328);
                                                                                                outlined destroy of DefaultStringInterpolation();
                                                                                                if (v218)
                                                                                                {

                                                                                                  v180 = HyperParams.batchSize.getter();
                                                                                                  v181 = v317;
                                                                                                  v317[3] = MEMORY[0x277D83B88];
                                                                                                  *v181 = v180;
                                                                                                }

                                                                                                else
                                                                                                {

                                                                                                  v182 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("weightNames", 0xBuLL, 1);
                                                                                                  v215 = &v344;
                                                                                                  v344 = v182;
                                                                                                  v342 = v327;
                                                                                                  v343 = v328;
                                                                                                  v216 = MEMORY[0x25F889340](v182._countAndFlagsBits, v182._object, v327, v328);
                                                                                                  outlined destroy of DefaultStringInterpolation();
                                                                                                  if (v216)
                                                                                                  {

                                                                                                    v214 = HyperParams.weightNames.getter();
                                                                                                    v183 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
                                                                                                    v184 = v317;
                                                                                                    v185 = v183;
                                                                                                    v186 = v214;
                                                                                                    v317[3] = v185;
                                                                                                    *v184 = v186;
                                                                                                  }

                                                                                                  else
                                                                                                  {

                                                                                                    v187 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("epochs", 6uLL, 1);
                                                                                                    v212 = &v341;
                                                                                                    v341 = v187;
                                                                                                    v339 = v327;
                                                                                                    v340 = v328;
                                                                                                    v213 = MEMORY[0x25F889340](v187._countAndFlagsBits, v187._object, v327, v328);
                                                                                                    outlined destroy of DefaultStringInterpolation();
                                                                                                    if (v213)
                                                                                                    {

                                                                                                      v188 = HyperParams.epochs.getter();
                                                                                                      v189 = v317;
                                                                                                      v317[3] = MEMORY[0x277D83B88];
                                                                                                      *v189 = v188;
                                                                                                    }

                                                                                                    else
                                                                                                    {

                                                                                                      v190 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("fullBatchTraining", 0x11uLL, 1);
                                                                                                      v210 = &v338;
                                                                                                      v338 = v190;
                                                                                                      v336 = v327;
                                                                                                      v337 = v328;
                                                                                                      v211 = MEMORY[0x25F889340](v190._countAndFlagsBits, v190._object, v327, v328);
                                                                                                      outlined destroy of DefaultStringInterpolation();
                                                                                                      if (v211)
                                                                                                      {

                                                                                                        v191 = HyperParams.fullBatchTraining.getter();
                                                                                                        v192 = v317;
                                                                                                        v317[3] = MEMORY[0x277D839B0];
                                                                                                        *v192 = v191 & 1;
                                                                                                      }

                                                                                                      else
                                                                                                      {

                                                                                                        v193 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("inputShuffleMethod", 0x12uLL, 1);
                                                                                                        v208 = &v335;
                                                                                                        v335 = v193;
                                                                                                        v333 = v327;
                                                                                                        v334 = v328;
                                                                                                        v209 = MEMORY[0x25F889340](v193._countAndFlagsBits, v193._object, v327, v328);
                                                                                                        outlined destroy of DefaultStringInterpolation();
                                                                                                        if (v209)
                                                                                                        {

                                                                                                          HyperParams.inputShuffleMethod.getter(v326);
                                                                                                          (*(v320 + 104))(v324, *MEMORY[0x277D41360], v319);
                                                                                                          lazy protocol witness table accessor for type ShuffleMethod and conformance ShuffleMethod();
                                                                                                          v207 = == infix<A>(_:_:)();
                                                                                                          v206 = *(v320 + 8);
                                                                                                          v205 = v320 + 8;
                                                                                                          v206(v324, v319);
                                                                                                          v206(v326, v319);
                                                                                                          if (v207)
                                                                                                          {
                                                                                                            v196 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("identity", 8uLL, 1);
                                                                                                            object = v196._object;
                                                                                                            countAndFlagsBits = v196._countAndFlagsBits;
                                                                                                          }

                                                                                                          else
                                                                                                          {
                                                                                                            v198 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("random", 6uLL, 1);
                                                                                                            object = v198._object;
                                                                                                            countAndFlagsBits = v198._countAndFlagsBits;
                                                                                                          }

                                                                                                          v197 = v317;
                                                                                                          v317[3] = MEMORY[0x277D837D0];
                                                                                                          *v197 = countAndFlagsBits;
                                                                                                          v197[1] = object;
                                                                                                        }

                                                                                                        else
                                                                                                        {

                                                                                                          v199 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("learningRate", 0xCuLL, 1);
                                                                                                          v203 = &v332;
                                                                                                          v332 = v199;
                                                                                                          v331[3] = v327;
                                                                                                          v331[4] = v328;
                                                                                                          v204 = MEMORY[0x25F889340](v199._countAndFlagsBits, v199._object, v327, v328);
                                                                                                          outlined destroy of DefaultStringInterpolation();
                                                                                                          if (v204)
                                                                                                          {

                                                                                                            v200 = HyperParams.learningRate.getter();
                                                                                                            v201 = v317;
                                                                                                            v317[3] = MEMORY[0x277D83A90];
                                                                                                            *v201 = v200;
                                                                                                          }

                                                                                                          else
                                                                                                          {

                                                                                                            v202 = v317;
                                                                                                            *v317 = 0;
                                                                                                            v202[1] = 0;
                                                                                                            v202[2] = 0;
                                                                                                            v202[3] = 0;
                                                                                                          }
                                                                                                        }
                                                                                                      }
                                                                                                    }
                                                                                                  }
                                                                                                }
                                                                                              }
                                                                                            }
                                                                                          }
                                                                                        }
                                                                                      }
                                                                                    }
                                                                                  }
                                                                                }
                                                                              }
                                                                            }
                                                                          }
                                                                        }
                                                                      }
                                                                    }
                                                                  }
                                                                }
                                                              }
                                                            }
                                                          }
                                                        }
                                                      }
                                                    }
                                                  }
                                                }
                                              }
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

Swift::Bool __swiftcall HyperParams.has(attribute:)(Swift::String attribute)
{
  v10 = 0;
  v11 = attribute;
  v5 = MEMORY[0x277D837D0];
  _allocateUninitializedArray<A>(_:)();
  v3 = v1;
  *v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("outputPostProcThresholds", 0x18uLL, 1);
  v3[1] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("latencyBuckets", 0xEuLL, 1);
  v3[2] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("maxFPRs", 7uLL, 1);
  v3[3] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("confusionMatrixNumThresholds", 0x1CuLL, 1);
  v3[4] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("targetFPRs", 0xAuLL, 1);
  v3[5] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("modelOutputNumberOfBuckets", 0x1AuLL, 1);
  v3[6] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("sliceSize", 9uLL, 1);
  v3[7] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("excludeContraceptionSlices", 0x1AuLL, 1);
  v3[8] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("excludeOtherPregnancySlices", 0x1BuLL, 1);
  v3[9] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("minSliceAnchorDelta", 0x13uLL, 1);
  v3[10] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("maxSliceAnchorDelta", 0x13uLL, 1);
  v3[11] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("isCalendarPeriodPredictionRequired", 0x22uLL, 1);
  v3[12] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("isDaysSinceLastPeriodStartRequired", 0x22uLL, 1);
  v3[13] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("isDaySHRRequired", 0x10uLL, 1);
  v3[14] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("isNightSHRRequired", 0x12uLL, 1);
  v3[15] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("isSWTRequired", 0xDuLL, 1);
  v3[16] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("isHRVRequired", 0xDuLL, 1);
  v3[17] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("isRespiratoryRateRequired", 0x19uLL, 1);
  v3[18] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("isSpO2Required", 0xEuLL, 1);
  v3[19] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("isPSMRequired", 0xDuLL, 1);
  v3[20] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("isPSSRequired", 0xDuLL, 1);
  v3[21] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("dropNegativeSlicesForInferredFactorLMP", 0x26uLL, 1);
  v3[22] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("dropNegativeSlicesForInferredTestLMP", 0x24uLL, 1);
  v3[23] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("minDaySHRAvailability", 0x15uLL, 1);
  v3[24] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("minNightSHRAvailability", 0x17uLL, 1);
  v3[25] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("minWristTempAvailability", 0x18uLL, 1);
  v3[26] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("minHRVAvailability", 0x12uLL, 1);
  v3[27] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("minSpO2Availability", 0x13uLL, 1);
  v3[28] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("minRespiratoryRateAvailability", 0x1EuLL, 1);
  v3[29] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("pregLabelStartAnchorDelta", 0x19uLL, 1);
  v3[30] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("daySHRStatsOption", 0x11uLL, 1);
  v3[31] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("nightSHRStatsOption", 0x13uLL, 1);
  v3[32] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("pSMStatsOption", 0xEuLL, 1);
  v3[33] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("pSSStatsOption", 0xEuLL, 1);
  v3[34] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("daysSinceLastPeriodStartStatsOption", 0x23uLL, 1);
  v3[35] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("sWTStatsOption", 0xEuLL, 1);
  v3[36] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("hrvStatsOption", 0xEuLL, 1);
  v3[37] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("respiratoryRateStatsOption", 0x1AuLL, 1);
  v3[38] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("spO2StatsOption", 0xFuLL, 1);
  v3[39] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("evalBeforeTrain", 0xFuLL, 1);
  v3[40] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("labelName", 9uLL, 1);
  v3[41] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("lossName", 8uLL, 1);
  v3[42] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("outputName", 0xAuLL, 1);
  v3[43] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("nightingaleDInputFeatureList", 0x1CuLL, 1);
  v3[44] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("batchSize", 9uLL, 1);
  v3[45] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("weightNames", 0xBuLL, 1);
  v3[46] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("epochs", 6uLL, 1);
  v3[47] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("fullBatchTraining", 0x11uLL, 1);
  v3[48] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("inputShuffleMethod", 0x12uLL, 1);
  v3[49] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("learningRate", 0xCuLL, 1);
  v3[50] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("lmpPregLabelStartAnchorDelta", 0x1CuLL, 1);
  v3[51] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("lmpMinSliceAnchorDelta", 0x16uLL, 1);
  v3[52] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("lmpMaxSliceAnchorDelta", 0x16uLL, 1);
  _finalizeUninitializedArray<A>(_:)();
  v6 = MEMORY[0x277D837E0];
  v9 = Set.init(arrayLiteral:)();
  v8 = attribute;
  v7 = MEMORY[0x25F8897F0](&v8, v9, v5, v6);

  return v7 & 1;
}

uint64_t Interval.attribute(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v26 = a4;
  v34 = a1;
  v35 = a2;
  v29 = a3;
  v49 = 0;
  v50 = 0;
  v48 = 0;
  v28 = *(a3 + 24);
  v51 = v28;
  v30 = type metadata accessor for Optional();
  v31 = (*(*(v30 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = MEMORY[0x28223BE20](v35, v5);
  v32 = v21 - v31;
  v49 = v7;
  v50 = v6;
  v48 = v4;
  v33 = *(v8 + 16);
  v47 = v33;

  v9 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("start", 5uLL, 1);
  v36 = &v46;
  v46 = v9;
  v44 = v34;
  v45 = v35;
  v37 = MEMORY[0x25F889340](v9._countAndFlagsBits, v9._object, v34, v35);
  outlined destroy of DefaultStringInterpolation();
  if (v37)
  {

    v10 = v26;
    v26[3] = v33;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v10);
    return (*(*(v33 - 8) + 16))(boxed_opaque_existential_0, v27);
  }

  else
  {

    v13 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("end", 3uLL, 1);
    v24 = &v43;
    v43 = v13;
    v41 = v34;
    v42 = v35;
    v25 = MEMORY[0x25F889340](v13._countAndFlagsBits, v13._object, v34, v35);
    outlined destroy of DefaultStringInterpolation();
    if (v25)
    {

      v14 = v26;
      v23 = v27 + *(v29 + 44);
      v26[3] = v33;
      v15 = __swift_allocate_boxed_opaque_existential_0(v14);
      return (*(*(v33 - 8) + 16))(v15, v23);
    }

    else
    {

      v16 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("context", 7uLL, 1);
      v21[2] = &v40;
      v40 = v16;
      v38 = v34;
      v39 = v35;
      v22 = MEMORY[0x25F889340](v16._countAndFlagsBits, v16._object, v34, v35);
      outlined destroy of DefaultStringInterpolation();
      if (v22)
      {

        outlined init with copy of B?((v27 + *(v29 + 48)), v32, v28, v30);
        v21[0] = *(v28 - 8);
        v21[1] = v28 - 8;
        if ((*(v21[0] + 48))(v32, 1) == 1)
        {
          result = outlined destroy of B?(v32, v28);
          v19 = v26;
          *v26 = 0;
          v19[1] = 0;
          v19[2] = 0;
          v19[3] = 0;
        }

        else
        {
          v17 = v26;
          v26[3] = v28;
          v18 = __swift_allocate_boxed_opaque_existential_0(v17);
          return (*(v21[0] + 32))(v18, v32, v28);
        }
      }

      else
      {

        v20 = v26;
        *v26 = 0;
        v20[1] = 0;
        v20[2] = 0;
        v20[3] = 0;
      }
    }
  }

  return result;
}

Swift::Bool __swiftcall Interval.has(attribute:)(Swift::String attribute)
{
  v13 = 0;
  v10 = 0;
  v14 = attribute;
  v12 = *(v1 + 16);
  v11 = *(v1 + 24);
  v6 = MEMORY[0x277D837D0];
  _allocateUninitializedArray<A>(_:)();
  v4 = v2;
  *v2 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("start", 5uLL, 1);
  v4[1] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("end", 3uLL, 1);
  v4[2] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("context", 7uLL, 1);
  _finalizeUninitializedArray<A>(_:)();
  v7 = MEMORY[0x277D837E0];
  v10 = Set.init(arrayLiteral:)();
  v9 = attribute;
  v8 = MEMORY[0x25F8897F0](&v9, v10, v6, v7);

  return v8 & 1;
}

uint64_t AugmentedIntervalTree<>.attribute(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v60 = a3;
  v67 = a1;
  v68 = a2;
  v61 = partial apply for closure #2 in AugmentedIntervalTree<>.attribute(for:);
  v62 = partial apply for closure #1 in AugmentedIntervalTree<>.attribute(for:);
  v79 = 0;
  v80 = 0;
  v78 = 0;
  v65 = *v3;
  v64 = (*(*(type metadata accessor for Arguments() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v66 = &v29 - v64;
  v79 = v67;
  v80 = MEMORY[0x28223BE20](v68, v4);
  v78 = v5;
  v77 = *(v65 + 88);

  v6 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("insert", 6uLL, 1);
  v69 = &v76;
  v76 = v6;
  v74 = v67;
  v75 = v68;
  v70 = MEMORY[0x25F889340](v6._countAndFlagsBits, v6._object, v67, v68);
  outlined destroy of DefaultStringInterpolation();
  if (v70)
  {

    v54 = 0;
    v59 = type metadata accessor for Function();
    v46 = 1;
    v7 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("AugmentedIntervalTree.insert", 0x1CuLL, 1);
    countAndFlagsBits = v7._countAndFlagsBits;
    object = v7._object;
    v45 = 3;
    v49 = MEMORY[0x277D837D0];
    v48 = _allocateUninitializedArray<A>(_:)();
    v47 = v8;
    v9 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("start", 5uLL, v46 & 1);
    v10 = v46;
    v11 = v45;
    *v47 = v9;
    v12 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("end", v11, v10 & 1);
    v13 = v46;
    v47[1] = v12;
    v14 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("context", 7uLL, v13 & 1);
    v47[2] = v14;
    _finalizeUninitializedArray<A>(_:)();
    v55 = v15;
    v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
    _allocateUninitializedArray<A>(_:)();
    *v16 = 0;
    v16[1] = 0;
    v16[2] = 0;
    v16[3] = 0;
    _finalizeUninitializedArray<A>(_:)();
    v53 = v17;
    v51 = default argument 1 of Arguments.init(args:posonlyargs:kwonlyargs:kwDefaults:defaults:vaargs:kwargs:)();
    v52 = default argument 1 of Arguments.init(args:posonlyargs:kwonlyargs:kwDefaults:defaults:vaargs:kwargs:)();
    default argument 3 of Arguments.init(args:posonlyargs:kwonlyargs:kwDefaults:defaults:vaargs:kwargs:)();
    Arguments.init(args:posonlyargs:kwonlyargs:kwDefaults:defaults:vaargs:kwargs:)();

    v57 = v63;
    default argument 2 of Function.init(name:arguments:attrs:body:)();
    result = Function.__allocating_init(name:arguments:attrs:body:)();
    v19 = v60;
    v60[3] = v59;
    *v19 = result;
  }

  else
  {

    v20 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("search", 6uLL, 1);
    v43 = &v73;
    v73 = v20;
    v71 = v67;
    v72 = v68;
    v44 = MEMORY[0x25F889340](v20._countAndFlagsBits, v20._object, v67, v68);
    outlined destroy of DefaultStringInterpolation();
    if (v44)
    {

      v37 = 0;
      v42 = type metadata accessor for Function();
      v30 = 1;
      v21 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("AugmentedIntervalTree.search", 0x1CuLL, 1);
      v41 = v21._countAndFlagsBits;
      v39 = v21._object;
      v33 = MEMORY[0x277D837D0];
      v32 = _allocateUninitializedArray<A>(_:)();
      v31 = v22;
      v23 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("start", 5uLL, v30 & 1);
      v24 = v30;
      *v31 = v23;
      v25 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("end", 3uLL, v24 & 1);
      v31[1] = v25;
      _finalizeUninitializedArray<A>(_:)();
      v38 = v26;
      v34 = default argument 1 of Arguments.init(args:posonlyargs:kwonlyargs:kwDefaults:defaults:vaargs:kwargs:)();
      v35 = default argument 1 of Arguments.init(args:posonlyargs:kwonlyargs:kwDefaults:defaults:vaargs:kwargs:)();
      v36 = default argument 3 of Arguments.init(args:posonlyargs:kwonlyargs:kwDefaults:defaults:vaargs:kwargs:)();
      default argument 3 of Arguments.init(args:posonlyargs:kwonlyargs:kwDefaults:defaults:vaargs:kwargs:)();
      Arguments.init(args:posonlyargs:kwonlyargs:kwDefaults:defaults:vaargs:kwargs:)();

      v40 = v63;
      default argument 2 of Function.init(name:arguments:attrs:body:)();
      result = Function.__allocating_init(name:arguments:attrs:body:)();
      v27 = v60;
      v60[3] = v42;
      *v27 = result;
    }

    else
    {

      v28 = v60;
      *v60 = 0;
      v28[1] = 0;
      v28[2] = 0;
      v28[3] = 0;
    }
  }

  return result;
}

uint64_t closure #1 in AugmentedIntervalTree<>.attribute(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v151 = a2;
  v155 = a1;
  v149 = a3;
  v186 = 0;
  v185 = 0;
  v150 = *(*a2 + 88);
  v187 = v150;
  v152 = type metadata accessor for Optional();
  v153 = (*(*(v152 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v154 = v43 - v153;
  v186 = MEMORY[0x28223BE20](v155, v151);
  v185 = v3;
  v175 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("start", 5uLL, 1);
  v156 = &v175;
  MEMORY[0x25F8891D0](v176);
  outlined destroy of DefaultStringInterpolation();
  if (v176[3])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSz_pMd, _sSz_pMR);
    if (!swift_dynamicCast())
    {
      v177 = 0;
      v178 = 0;
      v179 = 0;
      v180 = 0;
      v181 = 0;
    }
  }

  else
  {
    outlined destroy of Pregnancy?(v176);
    v177 = 0;
    v178 = 0;
    v179 = 0;
    v180 = 0;
    v181 = 0;
  }

  if (!v180)
  {
    outlined destroy of Pregnancy?(&v177);
LABEL_87:
    lazy protocol witness table accessor for type HIDPFLError and conformance HIDPFLError();
    v43[1] = 0;
    v44 = swift_allocError();
    *v42 = 34;
    swift_willThrow();
    result = v44;
    v45 = v44;
    return result;
  }

  outlined init with take of HealthDataQuery(&v177, __dst);
  v165 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("end", 3uLL, 1);
  v147 = &v165;
  MEMORY[0x25F8891D0](v166);
  outlined destroy of DefaultStringInterpolation();
  if (v166[3])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSz_pMd, _sSz_pMR);
    if (!swift_dynamicCast())
    {
      v167 = 0;
      v168 = 0;
      v169 = 0;
      v170 = 0;
      v171 = 0;
    }
  }

  else
  {
    outlined destroy of Pregnancy?(v166);
    v167 = 0;
    v168 = 0;
    v169 = 0;
    v170 = 0;
    v171 = 0;
  }

  if (!v170)
  {
    outlined destroy of Pregnancy?(&v167);
    __swift_destroy_boxed_opaque_existential_1(__dst);
    goto LABEL_87;
  }

  outlined init with take of HealthDataQuery(&v167, v172);
  v146 = v183;
  v135 = v183;
  v145 = v184;
  v136 = v184;
  v4 = __swift_project_boxed_opaque_existential_1(__dst, v183);
  v137 = *(v146 - 8);
  v141 = v137;
  v138 = v137;
  v139 = *(v137 + 64);
  v140 = v43;
  MEMORY[0x28223BE20](v43, v4);
  v142 = v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v143 = *(v141 + 16);
  v144 = (v141 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v143();
  if ((dispatch thunk of static BinaryInteger.isSigned.getter() & 1) != 0 && dispatch thunk of BinaryInteger.bitWidth.getter() > 64)
  {
    v157 = 0x8000000000000000;
    if (dispatch thunk of static BinaryInteger.isSigned.getter())
    {
      if (dispatch thunk of BinaryInteger.bitWidth.getter() < 64)
      {
        v133 = v43;
        MEMORY[0x28223BE20](v43, v142);
        v132 = v43 - ((v139 + 15) & 0xFFFFFFFFFFFFFFF0);
        v8(v132);
        dispatch thunk of BinaryInteger._lowWord.getter();
        (*(v138 + 8))(v132, v135);
        v134 = 0;
      }

      else
      {
        v130 = v43;
        MEMORY[0x28223BE20](v43, v6);
        v129 = v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
        lazy protocol witness table accessor for type Int and conformance Int();
        dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
        v131 = dispatch thunk of static Comparable.< infix(_:_:)();
        (*(v138 + 8))(v129, v135);
        v134 = v131;
      }
    }

    else
    {
      v7 = dispatch thunk of static BinaryInteger.isSigned.getter();
      if (v7)
      {
        if (dispatch thunk of BinaryInteger.bitWidth.getter() > 64)
        {
          v103 = v43;
          MEMORY[0x28223BE20](v43, v18);
          v102 = v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
          lazy protocol witness table accessor for type Int and conformance Int();
          dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
          v104 = dispatch thunk of static Comparable.< infix(_:_:)();
          (*(v138 + 8))(v102, v135);
          v134 = v104;
        }

        else
        {
          v95 = *(*(v136 + 24) + 16);
          v91 = MEMORY[0x277D846F0];
          AssociatedTypeWitness = swift_getAssociatedTypeWitness();
          v20 = *(*(AssociatedTypeWitness - 8) + 64);
          v100 = v43;
          v92 = (v20 + 15) & 0xFFFFFFFFFFFFFFF0;
          MEMORY[0x28223BE20](v95, v135);
          v94 = v43 - v92;
          swift_getAssociatedConformanceWitness();
          dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
          v99 = v43;
          MEMORY[0x28223BE20](v94, v135);
          v96 = v43 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
          dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
          v101 = dispatch thunk of static Comparable.< infix(_:_:)();
          v97 = *(v138 + 8);
          v98 = (v138 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
          v97(v96, v135);
          if (v101)
          {
LABEL_25:
            _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "Not enough bits to represent a signed value", 43, 2, "Swift/Integers.swift", 20, 2, 3262, 0);
            __break(1u);
            goto LABEL_26;
          }

          v90 = v43;
          MEMORY[0x28223BE20](v43, v142);
          v89 = v43 - ((v139 + 15) & 0xFFFFFFFFFFFFFFF0);
          v22(v89);
          dispatch thunk of BinaryInteger._lowWord.getter();
          v97(v89, v135);
          v134 = 0;
        }
      }

      else
      {
        if (dispatch thunk of BinaryInteger.bitWidth.getter() >= 64)
        {
          goto LABEL_26;
        }

        v88 = v43;
        MEMORY[0x28223BE20](v43, v142);
        v87 = v43 - ((v139 + 15) & 0xFFFFFFFFFFFFFFF0);
        v23(v87);
        dispatch thunk of BinaryInteger._lowWord.getter();
        (*(v138 + 8))(v87, v135);
        v134 = 0;
      }
    }

    if ((v134 & 1) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

LABEL_26:
  if (dispatch thunk of BinaryInteger.bitWidth.getter() >= 65 || dispatch thunk of BinaryInteger.bitWidth.getter() == 64 && (dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0)
  {
    v158 = 0x7FFFFFFFFFFFFFFFLL;
    if (dispatch thunk of static BinaryInteger.isSigned.getter())
    {
      if (dispatch thunk of BinaryInteger.bitWidth.getter() < 65)
      {
        v124 = v43;
        MEMORY[0x28223BE20](v43, v142);
        v123 = v43 - ((v139 + 15) & 0xFFFFFFFFFFFFFFF0);
        v12(v123);
        dispatch thunk of BinaryInteger._lowWord.getter();
        (*(v138 + 8))(v123, v135);
        v128 = 0;
      }

      else
      {
        v126 = v43;
        MEMORY[0x28223BE20](v43, v10);
        v125 = v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
        lazy protocol witness table accessor for type Int and conformance Int();
        dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
        v127 = dispatch thunk of static Comparable.< infix(_:_:)();
        (*(v138 + 8))(v125, v135);
        v128 = v127;
      }
    }

    else if (dispatch thunk of BinaryInteger.bitWidth.getter() > 63)
    {
      v106 = v43;
      MEMORY[0x28223BE20](v43, v15);
      v105 = v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
      lazy protocol witness table accessor for type Int and conformance Int();
      dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
      v107 = dispatch thunk of static Comparable.< infix(_:_:)();
      (*(v138 + 8))(v105, v135);
      v128 = v107;
    }

    else
    {
      v109 = v43;
      MEMORY[0x28223BE20](v43, v142);
      v108 = v43 - ((v139 + 15) & 0xFFFFFFFFFFFFFFF0);
      v16(v108);
      dispatch thunk of BinaryInteger._lowWord.getter();
      (*(v138 + 8))(v108, v135);
      v128 = 0;
    }

    if (v128)
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "Not enough bits to represent the passed value", 45, 2, "Swift/Integers.swift", 20, 2, 3268, 0);
      __break(1u);
    }
  }

  v110 = dispatch thunk of BinaryInteger._lowWord.getter();
  (*(v138 + 8))(v142, v135);
  v164 = v110;
  v122 = v173;
  v111 = v173;
  v121 = v174;
  v112 = v174;
  v13 = __swift_project_boxed_opaque_existential_1(v172, v173);
  v113 = *(v122 - 8);
  v117 = v113;
  v114 = v113;
  v115 = *(v113 + 64);
  v116 = v43;
  MEMORY[0x28223BE20](v43, v13);
  v118 = v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = *(v117 + 16);
  v120 = (v117 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v119();
  if ((dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0 || dispatch thunk of BinaryInteger.bitWidth.getter() <= 64)
  {
    goto LABEL_60;
  }

  v159 = 0x8000000000000000;
  if (dispatch thunk of static BinaryInteger.isSigned.getter())
  {
    if (dispatch thunk of BinaryInteger.bitWidth.getter() < 64)
    {
      v85 = v43;
      MEMORY[0x28223BE20](v43, v118);
      v84 = v43 - ((v115 + 15) & 0xFFFFFFFFFFFFFFF0);
      v26(v84);
      dispatch thunk of BinaryInteger._lowWord.getter();
      (*(v114 + 8))(v84, v111);
      v86 = 0;
    }

    else
    {
      v82 = v43;
      MEMORY[0x28223BE20](v43, v24);
      v81 = v43 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
      lazy protocol witness table accessor for type Int and conformance Int();
      dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
      v83 = dispatch thunk of static Comparable.< infix(_:_:)();
      (*(v114 + 8))(v81, v111);
      v86 = v83;
    }
  }

  else
  {
    v25 = dispatch thunk of static BinaryInteger.isSigned.getter();
    if (v25)
    {
      if (dispatch thunk of BinaryInteger.bitWidth.getter() > 64)
      {
        v65 = v43;
        MEMORY[0x28223BE20](v43, v34);
        v64 = v43 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
        lazy protocol witness table accessor for type Int and conformance Int();
        dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
        v66 = dispatch thunk of static Comparable.< infix(_:_:)();
        (*(v114 + 8))(v64, v111);
        v86 = v66;
      }

      else
      {
        v57 = *(*(v112 + 24) + 16);
        v53 = MEMORY[0x277D846F0];
        v55 = swift_getAssociatedTypeWitness();
        v36 = *(*(v55 - 8) + 64);
        v62 = v43;
        v54 = (v36 + 15) & 0xFFFFFFFFFFFFFFF0;
        MEMORY[0x28223BE20](v57, v111);
        v56 = v43 - v54;
        swift_getAssociatedConformanceWitness();
        dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
        v61 = v43;
        MEMORY[0x28223BE20](v56, v111);
        v58 = v43 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
        dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
        v63 = dispatch thunk of static Comparable.< infix(_:_:)();
        v59 = *(v114 + 8);
        v60 = (v114 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v59(v58, v111);
        if (v63)
        {
          goto LABEL_59;
        }

        v52 = v43;
        MEMORY[0x28223BE20](v43, v118);
        v51 = v43 - ((v115 + 15) & 0xFFFFFFFFFFFFFFF0);
        v38(v51);
        dispatch thunk of BinaryInteger._lowWord.getter();
        v59(v51, v111);
        v86 = 0;
      }
    }

    else
    {
      if (dispatch thunk of BinaryInteger.bitWidth.getter() >= 64)
      {
        goto LABEL_60;
      }

      v50 = v43;
      MEMORY[0x28223BE20](v43, v118);
      v49 = v43 - ((v115 + 15) & 0xFFFFFFFFFFFFFFF0);
      v39(v49);
      dispatch thunk of BinaryInteger._lowWord.getter();
      (*(v114 + 8))(v49, v111);
      v86 = 0;
    }
  }

  if (v86)
  {
LABEL_59:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "Not enough bits to represent a signed value", 43, 2, "Swift/Integers.swift", 20, 2, 3262, 0);
    __break(1u);
  }

LABEL_60:
  if (dispatch thunk of BinaryInteger.bitWidth.getter() >= 65 || dispatch thunk of BinaryInteger.bitWidth.getter() == 64 && (dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0)
  {
    v160 = 0x7FFFFFFFFFFFFFFFLL;
    if (dispatch thunk of static BinaryInteger.isSigned.getter())
    {
      if (dispatch thunk of BinaryInteger.bitWidth.getter() < 65)
      {
        v76 = v43;
        MEMORY[0x28223BE20](v43, v118);
        v75 = v43 - ((v115 + 15) & 0xFFFFFFFFFFFFFFF0);
        v30(v75);
        dispatch thunk of BinaryInteger._lowWord.getter();
        (*(v114 + 8))(v75, v111);
        v80 = 0;
      }

      else
      {
        v78 = v43;
        MEMORY[0x28223BE20](v43, v28);
        v77 = v43 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
        lazy protocol witness table accessor for type Int and conformance Int();
        dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
        v79 = dispatch thunk of static Comparable.< infix(_:_:)();
        (*(v114 + 8))(v77, v111);
        v80 = v79;
      }
    }

    else if (dispatch thunk of BinaryInteger.bitWidth.getter() > 63)
    {
      v68 = v43;
      MEMORY[0x28223BE20](v43, v31);
      v67 = v43 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
      lazy protocol witness table accessor for type Int and conformance Int();
      dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
      v69 = dispatch thunk of static Comparable.< infix(_:_:)();
      (*(v114 + 8))(v67, v111);
      v80 = v69;
    }

    else
    {
      v71 = v43;
      MEMORY[0x28223BE20](v43, v118);
      v70 = v43 - ((v115 + 15) & 0xFFFFFFFFFFFFFFF0);
      v32(v70);
      dispatch thunk of BinaryInteger._lowWord.getter();
      (*(v114 + 8))(v70, v111);
      v80 = 0;
    }

    if (v80)
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "Not enough bits to represent the passed value", 45, 2, "Swift/Integers.swift", 20, 2, 3268, 0);
      __break(1u);
    }
  }

  v72 = dispatch thunk of BinaryInteger._lowWord.getter();
  (*(v114 + 8))(v118, v111);
  v163 = v72;
  v161 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("context", 7uLL, 1);
  v74 = &v162;
  v73 = &v161;
  MEMORY[0x25F8891D0]();
  outlined destroy of DefaultStringInterpolation();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  if (swift_dynamicCast())
  {
    (*(*(v150 - 8) + 56))(v154, 0, 1);
  }

  else
  {
    (*(*(v150 - 8) + 56))(v154, 1);
  }

  v40 = v148;
  AugmentedIntervalTree.insert(start:end:context:)(&v164, &v163, v154);
  v47 = v40;
  v48 = v40;
  if (v40)
  {
    v43[0] = v48;
    outlined destroy of B?(v154, v150);
    __swift_destroy_boxed_opaque_existential_1(v172);
    __swift_destroy_boxed_opaque_existential_1(__dst);
    return v43[0];
  }

  else
  {
    v46 = 0;
    outlined destroy of B?(v154, v150);
    *(v149 + 24) = MEMORY[0x277D84F78] + 8;
    __swift_destroy_boxed_opaque_existential_1(v172);
    return __swift_destroy_boxed_opaque_existential_1(__dst);
  }
}

uint64_t closure #2 in AugmentedIntervalTree<>.attribute(for:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v156 = a2;
  v159 = a1;
  v157 = a3;
  v190 = 0;
  v189 = 0;
  v165 = 0;
  v3 = *a2;
  v190 = a1;
  v189 = a2;
  v158 = *(v3 + 88);
  v188 = v158;
  v178 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("start", 5uLL, 1);
  v160 = &v178;
  MEMORY[0x25F8891D0](v179);
  outlined destroy of DefaultStringInterpolation();
  if (v179[3])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSz_pMd, _sSz_pMR);
    if (!swift_dynamicCast())
    {
      v180 = 0;
      v181 = 0;
      v182 = 0;
      v183 = 0;
      v184 = 0;
    }
  }

  else
  {
    outlined destroy of Pregnancy?(v179);
    v180 = 0;
    v181 = 0;
    v182 = 0;
    v183 = 0;
    v184 = 0;
  }

  if (!v183)
  {
    outlined destroy of Pregnancy?(&v180);
LABEL_84:
    lazy protocol witness table accessor for type HIDPFLError and conformance HIDPFLError();
    v48[1] = 0;
    v49 = swift_allocError();
    *v47 = 35;
    swift_willThrow();
    result = v49;
    v50 = v49;
    return result;
  }

  outlined init with take of HealthDataQuery(&v180, __dst);
  v168 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("end", 3uLL, 1);
  v154 = &v168;
  MEMORY[0x25F8891D0](v169);
  outlined destroy of DefaultStringInterpolation();
  if (v169[3])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSz_pMd, _sSz_pMR);
    if (!swift_dynamicCast())
    {
      v170 = 0;
      v171 = 0;
      v172 = 0;
      v173 = 0;
      v174 = 0;
    }
  }

  else
  {
    outlined destroy of Pregnancy?(v169);
    v170 = 0;
    v171 = 0;
    v172 = 0;
    v173 = 0;
    v174 = 0;
  }

  if (!v173)
  {
    outlined destroy of Pregnancy?(&v170);
    __swift_destroy_boxed_opaque_existential_1(__dst);
    goto LABEL_84;
  }

  outlined init with take of HealthDataQuery(&v170, v175);
  v153 = v186;
  v142 = v186;
  v152 = v187;
  v143 = v187;
  v4 = __swift_project_boxed_opaque_existential_1(__dst, v186);
  v144 = *(v153 - 8);
  v148 = v144;
  v145 = v144;
  v146 = *(v144 + 64);
  v147 = v48;
  MEMORY[0x28223BE20](v48, v4);
  v149 = v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v150 = *(v148 + 16);
  v151 = (v148 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v150();
  if ((dispatch thunk of static BinaryInteger.isSigned.getter() & 1) != 0 && dispatch thunk of BinaryInteger.bitWidth.getter() > 64)
  {
    v161 = 0x8000000000000000;
    if (dispatch thunk of static BinaryInteger.isSigned.getter())
    {
      if (dispatch thunk of BinaryInteger.bitWidth.getter() < 64)
      {
        v140 = v48;
        MEMORY[0x28223BE20](v48, v149);
        v139 = v48 - ((v146 + 15) & 0xFFFFFFFFFFFFFFF0);
        v8(v139);
        dispatch thunk of BinaryInteger._lowWord.getter();
        (*(v145 + 8))(v139, v142);
        v141 = 0;
      }

      else
      {
        v137 = v48;
        MEMORY[0x28223BE20](v48, v6);
        v136 = v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
        lazy protocol witness table accessor for type Int and conformance Int();
        dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
        v138 = dispatch thunk of static Comparable.< infix(_:_:)();
        (*(v145 + 8))(v136, v142);
        v141 = v138;
      }
    }

    else
    {
      v7 = dispatch thunk of static BinaryInteger.isSigned.getter();
      if (v7)
      {
        if (dispatch thunk of BinaryInteger.bitWidth.getter() > 64)
        {
          v110 = v48;
          MEMORY[0x28223BE20](v48, v18);
          v109 = v48 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
          lazy protocol witness table accessor for type Int and conformance Int();
          dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
          v111 = dispatch thunk of static Comparable.< infix(_:_:)();
          (*(v145 + 8))(v109, v142);
          v141 = v111;
        }

        else
        {
          v102 = *(*(v143 + 24) + 16);
          v98 = MEMORY[0x277D846F0];
          AssociatedTypeWitness = swift_getAssociatedTypeWitness();
          v20 = *(*(AssociatedTypeWitness - 8) + 64);
          v107 = v48;
          v99 = (v20 + 15) & 0xFFFFFFFFFFFFFFF0;
          MEMORY[0x28223BE20](v102, v142);
          v101 = v48 - v99;
          swift_getAssociatedConformanceWitness();
          dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
          v106 = v48;
          MEMORY[0x28223BE20](v101, v142);
          v103 = v48 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
          dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
          v108 = dispatch thunk of static Comparable.< infix(_:_:)();
          v104 = *(v145 + 8);
          v105 = (v145 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
          v104(v103, v142);
          if (v108)
          {
LABEL_25:
            _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "Not enough bits to represent a signed value", 43, 2, "Swift/Integers.swift", 20, 2, 3262, 0);
            __break(1u);
            goto LABEL_26;
          }

          v97 = v48;
          MEMORY[0x28223BE20](v48, v149);
          v96 = v48 - ((v146 + 15) & 0xFFFFFFFFFFFFFFF0);
          v22(v96);
          dispatch thunk of BinaryInteger._lowWord.getter();
          v104(v96, v142);
          v141 = 0;
        }
      }

      else
      {
        if (dispatch thunk of BinaryInteger.bitWidth.getter() >= 64)
        {
          goto LABEL_26;
        }

        v95 = v48;
        MEMORY[0x28223BE20](v48, v149);
        v94 = v48 - ((v146 + 15) & 0xFFFFFFFFFFFFFFF0);
        v23(v94);
        dispatch thunk of BinaryInteger._lowWord.getter();
        (*(v145 + 8))(v94, v142);
        v141 = 0;
      }
    }

    if ((v141 & 1) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

LABEL_26:
  if (dispatch thunk of BinaryInteger.bitWidth.getter() >= 65 || dispatch thunk of BinaryInteger.bitWidth.getter() == 64 && (dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0)
  {
    v162 = 0x7FFFFFFFFFFFFFFFLL;
    if (dispatch thunk of static BinaryInteger.isSigned.getter())
    {
      if (dispatch thunk of BinaryInteger.bitWidth.getter() < 65)
      {
        v131 = v48;
        MEMORY[0x28223BE20](v48, v149);
        v130 = v48 - ((v146 + 15) & 0xFFFFFFFFFFFFFFF0);
        v12(v130);
        dispatch thunk of BinaryInteger._lowWord.getter();
        (*(v145 + 8))(v130, v142);
        v135 = 0;
      }

      else
      {
        v133 = v48;
        MEMORY[0x28223BE20](v48, v10);
        v132 = v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
        lazy protocol witness table accessor for type Int and conformance Int();
        dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
        v134 = dispatch thunk of static Comparable.< infix(_:_:)();
        (*(v145 + 8))(v132, v142);
        v135 = v134;
      }
    }

    else if (dispatch thunk of BinaryInteger.bitWidth.getter() > 63)
    {
      v113 = v48;
      MEMORY[0x28223BE20](v48, v15);
      v112 = v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
      lazy protocol witness table accessor for type Int and conformance Int();
      dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
      v114 = dispatch thunk of static Comparable.< infix(_:_:)();
      (*(v145 + 8))(v112, v142);
      v135 = v114;
    }

    else
    {
      v116 = v48;
      MEMORY[0x28223BE20](v48, v149);
      v115 = v48 - ((v146 + 15) & 0xFFFFFFFFFFFFFFF0);
      v16(v115);
      dispatch thunk of BinaryInteger._lowWord.getter();
      (*(v145 + 8))(v115, v142);
      v135 = 0;
    }

    if (v135)
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "Not enough bits to represent the passed value", 45, 2, "Swift/Integers.swift", 20, 2, 3268, 0);
      __break(1u);
    }
  }

  v117 = dispatch thunk of BinaryInteger._lowWord.getter();
  (*(v145 + 8))(v149, v142);
  v167 = v117;
  v129 = v176;
  v118 = v176;
  v128 = v177;
  v119 = v177;
  v13 = __swift_project_boxed_opaque_existential_1(v175, v176);
  v120 = *(v129 - 8);
  v124 = v120;
  v121 = v120;
  v122 = *(v120 + 64);
  v123 = v48;
  MEMORY[0x28223BE20](v48, v13);
  v125 = v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = *(v124 + 16);
  v127 = (v124 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v126();
  if ((dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0 || dispatch thunk of BinaryInteger.bitWidth.getter() <= 64)
  {
    goto LABEL_60;
  }

  v163 = 0x8000000000000000;
  if (dispatch thunk of static BinaryInteger.isSigned.getter())
  {
    if (dispatch thunk of BinaryInteger.bitWidth.getter() < 64)
    {
      v92 = v48;
      MEMORY[0x28223BE20](v48, v125);
      v91 = v48 - ((v122 + 15) & 0xFFFFFFFFFFFFFFF0);
      v26(v91);
      dispatch thunk of BinaryInteger._lowWord.getter();
      (*(v121 + 8))(v91, v118);
      v93 = 0;
    }

    else
    {
      v89 = v48;
      MEMORY[0x28223BE20](v48, v24);
      v88 = v48 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
      lazy protocol witness table accessor for type Int and conformance Int();
      dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
      v90 = dispatch thunk of static Comparable.< infix(_:_:)();
      (*(v121 + 8))(v88, v118);
      v93 = v90;
    }

    goto LABEL_58;
  }

  v25 = dispatch thunk of static BinaryInteger.isSigned.getter();
  if (v25)
  {
    if (dispatch thunk of BinaryInteger.bitWidth.getter() > 64)
    {
      v70 = v48;
      MEMORY[0x28223BE20](v48, v36);
      v69 = v48 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
      lazy protocol witness table accessor for type Int and conformance Int();
      dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
      v71 = dispatch thunk of static Comparable.< infix(_:_:)();
      (*(v121 + 8))(v69, v118);
      v93 = v71;
    }

    else
    {
      v62 = *(*(v119 + 24) + 16);
      v58 = MEMORY[0x277D846F0];
      v60 = swift_getAssociatedTypeWitness();
      v38 = *(*(v60 - 8) + 64);
      v67 = v48;
      v59 = (v38 + 15) & 0xFFFFFFFFFFFFFFF0;
      MEMORY[0x28223BE20](v62, v118);
      v61 = v48 - v59;
      swift_getAssociatedConformanceWitness();
      dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
      v66 = v48;
      MEMORY[0x28223BE20](v61, v118);
      v63 = v48 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
      dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
      v68 = dispatch thunk of static Comparable.< infix(_:_:)();
      v64 = *(v121 + 8);
      v65 = (v121 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v64(v63, v118);
      if (v68)
      {
LABEL_59:
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "Not enough bits to represent a signed value", 43, 2, "Swift/Integers.swift", 20, 2, 3262, 0);
        __break(1u);
        goto LABEL_60;
      }

      v57 = v48;
      MEMORY[0x28223BE20](v48, v125);
      v56 = v48 - ((v122 + 15) & 0xFFFFFFFFFFFFFFF0);
      v40(v56);
      dispatch thunk of BinaryInteger._lowWord.getter();
      v64(v56, v118);
      v93 = 0;
    }

LABEL_58:
    if ((v93 & 1) == 0)
    {
      goto LABEL_60;
    }

    goto LABEL_59;
  }

  if (dispatch thunk of BinaryInteger.bitWidth.getter() < 64)
  {
    v55 = v48;
    MEMORY[0x28223BE20](v48, v125);
    v54 = v48 - ((v122 + 15) & 0xFFFFFFFFFFFFFFF0);
    v41(v54);
    dispatch thunk of BinaryInteger._lowWord.getter();
    (*(v121 + 8))(v54, v118);
    v93 = 0;
    goto LABEL_58;
  }

LABEL_60:
  if (dispatch thunk of BinaryInteger.bitWidth.getter() >= 65 || dispatch thunk of BinaryInteger.bitWidth.getter() == 64 && (dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0)
  {
    v164 = 0x7FFFFFFFFFFFFFFFLL;
    if (dispatch thunk of static BinaryInteger.isSigned.getter())
    {
      if (dispatch thunk of BinaryInteger.bitWidth.getter() < 65)
      {
        v83 = v48;
        MEMORY[0x28223BE20](v48, v125);
        v82 = v48 - ((v122 + 15) & 0xFFFFFFFFFFFFFFF0);
        v30(v82);
        dispatch thunk of BinaryInteger._lowWord.getter();
        (*(v121 + 8))(v82, v118);
        v87 = 0;
      }

      else
      {
        v85 = v48;
        MEMORY[0x28223BE20](v48, v28);
        v84 = v48 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
        lazy protocol witness table accessor for type Int and conformance Int();
        dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
        v86 = dispatch thunk of static Comparable.< infix(_:_:)();
        (*(v121 + 8))(v84, v118);
        v87 = v86;
      }
    }

    else if (dispatch thunk of BinaryInteger.bitWidth.getter() > 63)
    {
      v73 = v48;
      MEMORY[0x28223BE20](v48, v33);
      v72 = v48 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
      lazy protocol witness table accessor for type Int and conformance Int();
      dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
      v74 = dispatch thunk of static Comparable.< infix(_:_:)();
      (*(v121 + 8))(v72, v118);
      v87 = v74;
    }

    else
    {
      v76 = v48;
      MEMORY[0x28223BE20](v48, v125);
      v75 = v48 - ((v122 + 15) & 0xFFFFFFFFFFFFFFF0);
      v34(v75);
      dispatch thunk of BinaryInteger._lowWord.getter();
      (*(v121 + 8))(v75, v118);
      v87 = 0;
    }

    if (v87)
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "Not enough bits to represent the passed value", 45, 2, "Swift/Integers.swift", 20, 2, 3268, 0);
      __break(1u);
    }
  }

  v78 = v155;
  v77 = dispatch thunk of BinaryInteger._lowWord.getter();
  (*(v121 + 8))(v125, v118);
  v31 = v78;
  v166 = v77;
  v32 = AugmentedIntervalTree.search(start:end:)(&v167, &v166);
  v79 = v31;
  v80 = v32;
  v81 = v31;
  if (v31)
  {
    v48[0] = v81;
    __swift_destroy_boxed_opaque_existential_1(v175);
    __swift_destroy_boxed_opaque_existential_1(__dst);
    return v48[0];
  }

  else
  {
    v52 = v80;
    v53 = 0;
    v165 = v80;

    v51 = type metadata accessor for Interval(255, MEMORY[0x277D83B88], v158, MEMORY[0x277D83BA0]);
    v42 = type metadata accessor for Array();
    v43 = v157;
    v44 = v42;
    v45 = v52;
    v157[3] = v44;
    *v43 = v45;

    __swift_destroy_boxed_opaque_existential_1(v175);
    return __swift_destroy_boxed_opaque_existential_1(__dst);
  }
}

uint64_t AugmentedIntervalTree<>.has(attribute:)(uint64_t a1, uint64_t a2)
{
  v16 = 0;
  v17 = 0;
  v15 = 0;
  v13 = 0;
  v3 = *v2;
  v16 = a1;
  v17 = a2;
  v15 = v2;
  v14 = *(v3 + 88);
  v9 = MEMORY[0x277D837D0];
  _allocateUninitializedArray<A>(_:)();
  v6 = v4;
  *v4 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("insert", 6uLL, 1);
  v6[1] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("search", 6uLL, 1);
  _finalizeUninitializedArray<A>(_:)();
  v10 = MEMORY[0x277D837E0];
  v13 = Set.init(arrayLiteral:)();
  v12[0] = a1;
  v12[1] = a2;
  v11 = MEMORY[0x25F8897F0](v12, v13, v9, v10);

  return v11 & 1;
}

uint64_t closure #1 in static HIDMorpheusExtensions.extendMorpheus()@<X0>(uint64_t *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19NightingaleTraining21AugmentedIntervalTreeCySiypGMd, &_s19NightingaleTraining21AugmentedIntervalTreeCySiypGMR);
  result = AugmentedIntervalTree.__allocating_init()();
  a1[3] = v2;
  *a1 = result;
  return result;
}

uint64_t closure #2 in static HIDMorpheusExtensions.extendMorpheus()@<X0>(uint64_t *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19NightingaleTraining21AugmentedIntervalTreeCySiAA9Pregnancy_pGMd, &_s19NightingaleTraining21AugmentedIntervalTreeCySiAA9Pregnancy_pGMR);
  result = AugmentedIntervalTree.__allocating_init()();
  a1[3] = v2;
  *a1 = result;
  return result;
}

uint64_t closure #3 in static HIDMorpheusExtensions.extendMorpheus()@<X0>(uint64_t a1@<X0>, NightingaleTraining::Cycle *a2@<X8>)
{
  v144 = a1;
  v143 = a2;
  v170 = a1;
  v160 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("start", 5uLL, 1);
  v145 = &v160;
  MEMORY[0x25F8891D0](v161);
  outlined destroy of DefaultStringInterpolation();
  if (v161[3])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSz_pMd, _sSz_pMR);
    if (!swift_dynamicCast())
    {
      v162 = 0;
      v163 = 0;
      v164 = 0;
      v165 = 0;
      v166 = 0;
    }
  }

  else
  {
    outlined destroy of Pregnancy?(v161);
    v162 = 0;
    v163 = 0;
    v164 = 0;
    v165 = 0;
    v166 = 0;
  }

  if (!v165)
  {
    outlined destroy of Pregnancy?(&v162);
LABEL_83:
    lazy protocol witness table accessor for type HIDPFLError and conformance HIDPFLError();
    v43 = 0;
    swift_allocError();
    *v41 = 37;
    swift_willThrow();
    return v43;
  }

  outlined init with take of HealthDataQuery(&v162, __dst);
  v150 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("end", 3uLL, 1);
  v141 = &v150;
  MEMORY[0x25F8891D0](v151);
  outlined destroy of DefaultStringInterpolation();
  if (v151[3])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSz_pMd, _sSz_pMR);
    if (!swift_dynamicCast())
    {
      v152 = 0;
      v153 = 0;
      v154 = 0;
      v155 = 0;
      v156 = 0;
    }
  }

  else
  {
    outlined destroy of Pregnancy?(v151);
    v152 = 0;
    v153 = 0;
    v154 = 0;
    v155 = 0;
    v156 = 0;
  }

  if (!v155)
  {
    outlined destroy of Pregnancy?(&v152);
    __swift_destroy_boxed_opaque_existential_1(__dst);
    goto LABEL_83;
  }

  outlined init with take of HealthDataQuery(&v152, v157);
  v140 = v168;
  v129 = v168;
  v139 = v169;
  v130 = v169;
  v2 = __swift_project_boxed_opaque_existential_1(__dst, v168);
  v131 = *(v140 - 8);
  v135 = v131;
  v132 = v131;
  v133 = *(v131 + 64);
  v134 = &v42;
  MEMORY[0x28223BE20](&v42, v2);
  v136 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v137 = *(v135 + 16);
  v138 = (v135 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v137();
  if ((dispatch thunk of static BinaryInteger.isSigned.getter() & 1) != 0 && dispatch thunk of BinaryInteger.bitWidth.getter() > 64)
  {
    v146 = 0x8000000000000000;
    if (dispatch thunk of static BinaryInteger.isSigned.getter())
    {
      if (dispatch thunk of BinaryInteger.bitWidth.getter() < 64)
      {
        v127 = &v42;
        MEMORY[0x28223BE20](&v42, v136);
        v126 = &v42 - ((v133 + 15) & 0xFFFFFFFFFFFFFFF0);
        v6(v126);
        dispatch thunk of BinaryInteger._lowWord.getter();
        (*(v132 + 8))(v126, v129);
        v128 = 0;
      }

      else
      {
        v124 = &v42;
        MEMORY[0x28223BE20](&v42, v4);
        v123 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
        lazy protocol witness table accessor for type Int and conformance Int();
        dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
        v125 = dispatch thunk of static Comparable.< infix(_:_:)();
        (*(v132 + 8))(v123, v129);
        v128 = v125;
      }
    }

    else
    {
      v5 = dispatch thunk of static BinaryInteger.isSigned.getter();
      if (v5)
      {
        if (dispatch thunk of BinaryInteger.bitWidth.getter() > 64)
        {
          v97 = &v42;
          MEMORY[0x28223BE20](&v42, v16);
          v96 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
          lazy protocol witness table accessor for type Int and conformance Int();
          dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
          v98 = dispatch thunk of static Comparable.< infix(_:_:)();
          (*(v132 + 8))(v96, v129);
          v128 = v98;
        }

        else
        {
          v89 = *(*(v130 + 24) + 16);
          v85 = MEMORY[0x277D846F0];
          AssociatedTypeWitness = swift_getAssociatedTypeWitness();
          v18 = *(*(AssociatedTypeWitness - 8) + 64);
          v94 = &v42;
          v86 = (v18 + 15) & 0xFFFFFFFFFFFFFFF0;
          MEMORY[0x28223BE20](v89, v129);
          v88 = &v42 - v86;
          swift_getAssociatedConformanceWitness();
          dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
          v93 = &v42;
          MEMORY[0x28223BE20](v88, v129);
          v90 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
          dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
          v95 = dispatch thunk of static Comparable.< infix(_:_:)();
          v91 = *(v132 + 8);
          v92 = (v132 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
          v91(v90, v129);
          if (v95)
          {
LABEL_25:
            _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "Not enough bits to represent a signed value", 43, 2, "Swift/Integers.swift", 20, 2, 3262, 0);
            __break(1u);
            goto LABEL_26;
          }

          v84 = &v42;
          MEMORY[0x28223BE20](&v42, v136);
          v83 = &v42 - ((v133 + 15) & 0xFFFFFFFFFFFFFFF0);
          v20(v83);
          dispatch thunk of BinaryInteger._lowWord.getter();
          v91(v83, v129);
          v128 = 0;
        }
      }

      else
      {
        if (dispatch thunk of BinaryInteger.bitWidth.getter() >= 64)
        {
          goto LABEL_26;
        }

        v82 = &v42;
        MEMORY[0x28223BE20](&v42, v136);
        v81 = &v42 - ((v133 + 15) & 0xFFFFFFFFFFFFFFF0);
        v21(v81);
        dispatch thunk of BinaryInteger._lowWord.getter();
        (*(v132 + 8))(v81, v129);
        v128 = 0;
      }
    }

    if ((v128 & 1) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

LABEL_26:
  if (dispatch thunk of BinaryInteger.bitWidth.getter() >= 65 || dispatch thunk of BinaryInteger.bitWidth.getter() == 64 && (dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0)
  {
    v147 = 0x7FFFFFFFFFFFFFFFLL;
    if (dispatch thunk of static BinaryInteger.isSigned.getter())
    {
      if (dispatch thunk of BinaryInteger.bitWidth.getter() < 65)
      {
        v118 = &v42;
        MEMORY[0x28223BE20](&v42, v136);
        v117 = &v42 - ((v133 + 15) & 0xFFFFFFFFFFFFFFF0);
        v10(v117);
        dispatch thunk of BinaryInteger._lowWord.getter();
        (*(v132 + 8))(v117, v129);
        v122 = 0;
      }

      else
      {
        v120 = &v42;
        MEMORY[0x28223BE20](&v42, v8);
        v119 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
        lazy protocol witness table accessor for type Int and conformance Int();
        dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
        v121 = dispatch thunk of static Comparable.< infix(_:_:)();
        (*(v132 + 8))(v119, v129);
        v122 = v121;
      }
    }

    else if (dispatch thunk of BinaryInteger.bitWidth.getter() > 63)
    {
      v100 = &v42;
      MEMORY[0x28223BE20](&v42, v13);
      v99 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
      lazy protocol witness table accessor for type Int and conformance Int();
      dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
      v101 = dispatch thunk of static Comparable.< infix(_:_:)();
      (*(v132 + 8))(v99, v129);
      v122 = v101;
    }

    else
    {
      v103 = &v42;
      MEMORY[0x28223BE20](&v42, v136);
      v102 = &v42 - ((v133 + 15) & 0xFFFFFFFFFFFFFFF0);
      v14(v102);
      dispatch thunk of BinaryInteger._lowWord.getter();
      (*(v132 + 8))(v102, v129);
      v122 = 0;
    }

    if (v122)
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "Not enough bits to represent the passed value", 45, 2, "Swift/Integers.swift", 20, 2, 3268, 0);
      __break(1u);
    }
  }

  v104 = dispatch thunk of BinaryInteger._lowWord.getter();
  (*(v132 + 8))(v136, v129);
  v116 = v158;
  v105 = v158;
  v115 = v159;
  v106 = v159;
  v11 = __swift_project_boxed_opaque_existential_1(v157, v158);
  v107 = *(v116 - 8);
  v111 = v107;
  v108 = v107;
  v109 = *(v107 + 64);
  v110 = &v42;
  MEMORY[0x28223BE20](&v42, v11);
  v112 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = *(v111 + 16);
  v114 = (v111 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v113();
  if ((dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0 || dispatch thunk of BinaryInteger.bitWidth.getter() <= 64)
  {
    goto LABEL_60;
  }

  v148 = 0x8000000000000000;
  if (dispatch thunk of static BinaryInteger.isSigned.getter())
  {
    if (dispatch thunk of BinaryInteger.bitWidth.getter() < 64)
    {
      v79 = &v42;
      MEMORY[0x28223BE20](&v42, v112);
      v78 = &v42 - ((v109 + 15) & 0xFFFFFFFFFFFFFFF0);
      v24(v78);
      dispatch thunk of BinaryInteger._lowWord.getter();
      (*(v108 + 8))(v78, v105);
      v80 = 0;
    }

    else
    {
      v76 = &v42;
      MEMORY[0x28223BE20](&v42, v22);
      v75 = &v42 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
      lazy protocol witness table accessor for type Int and conformance Int();
      dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
      v77 = dispatch thunk of static Comparable.< infix(_:_:)();
      (*(v108 + 8))(v75, v105);
      v80 = v77;
    }

    goto LABEL_58;
  }

  v23 = dispatch thunk of static BinaryInteger.isSigned.getter();
  if (v23)
  {
    if (dispatch thunk of BinaryInteger.bitWidth.getter() > 64)
    {
      v60 = &v42;
      MEMORY[0x28223BE20](&v42, v35);
      v59 = &v42 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
      lazy protocol witness table accessor for type Int and conformance Int();
      dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
      v61 = dispatch thunk of static Comparable.< infix(_:_:)();
      (*(v108 + 8))(v59, v105);
      v80 = v61;
    }

    else
    {
      v52 = *(*(v106 + 24) + 16);
      v48 = MEMORY[0x277D846F0];
      v50 = swift_getAssociatedTypeWitness();
      v37 = *(*(v50 - 8) + 64);
      v57 = &v42;
      v49 = (v37 + 15) & 0xFFFFFFFFFFFFFFF0;
      MEMORY[0x28223BE20](v52, v105);
      v51 = &v42 - v49;
      swift_getAssociatedConformanceWitness();
      dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
      v56 = &v42;
      MEMORY[0x28223BE20](v51, v105);
      v53 = &v42 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
      dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
      v58 = dispatch thunk of static Comparable.< infix(_:_:)();
      v54 = *(v108 + 8);
      v55 = (v108 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v54(v53, v105);
      if (v58)
      {
LABEL_59:
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "Not enough bits to represent a signed value", 43, 2, "Swift/Integers.swift", 20, 2, 3262, 0);
        __break(1u);
        goto LABEL_60;
      }

      v47 = &v42;
      MEMORY[0x28223BE20](&v42, v112);
      v46 = &v42 - ((v109 + 15) & 0xFFFFFFFFFFFFFFF0);
      v39(v46);
      dispatch thunk of BinaryInteger._lowWord.getter();
      v54(v46, v105);
      v80 = 0;
    }

LABEL_58:
    if ((v80 & 1) == 0)
    {
      goto LABEL_60;
    }

    goto LABEL_59;
  }

  if (dispatch thunk of BinaryInteger.bitWidth.getter() < 64)
  {
    v45 = &v42;
    MEMORY[0x28223BE20](&v42, v112);
    v44 = &v42 - ((v109 + 15) & 0xFFFFFFFFFFFFFFF0);
    v40(v44);
    dispatch thunk of BinaryInteger._lowWord.getter();
    (*(v108 + 8))(v44, v105);
    v80 = 0;
    goto LABEL_58;
  }

LABEL_60:
  if (dispatch thunk of BinaryInteger.bitWidth.getter() >= 65 || dispatch thunk of BinaryInteger.bitWidth.getter() == 64 && (dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0)
  {
    v149 = 0x7FFFFFFFFFFFFFFFLL;
    if (dispatch thunk of static BinaryInteger.isSigned.getter())
    {
      if (dispatch thunk of BinaryInteger.bitWidth.getter() < 65)
      {
        v70 = &v42;
        MEMORY[0x28223BE20](&v42, v112);
        v69 = &v42 - ((v109 + 15) & 0xFFFFFFFFFFFFFFF0);
        v28(v69);
        dispatch thunk of BinaryInteger._lowWord.getter();
        (*(v108 + 8))(v69, v105);
        v74 = 0;
      }

      else
      {
        v72 = &v42;
        MEMORY[0x28223BE20](&v42, v26);
        v71 = &v42 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
        lazy protocol witness table accessor for type Int and conformance Int();
        dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
        v73 = dispatch thunk of static Comparable.< infix(_:_:)();
        (*(v108 + 8))(v71, v105);
        v74 = v73;
      }
    }

    else if (dispatch thunk of BinaryInteger.bitWidth.getter() > 63)
    {
      v63 = &v42;
      MEMORY[0x28223BE20](&v42, v32);
      v62 = &v42 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
      lazy protocol witness table accessor for type Int and conformance Int();
      dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
      v64 = dispatch thunk of static Comparable.< infix(_:_:)();
      (*(v108 + 8))(v62, v105);
      v74 = v64;
    }

    else
    {
      v66 = &v42;
      MEMORY[0x28223BE20](&v42, v112);
      v65 = &v42 - ((v109 + 15) & 0xFFFFFFFFFFFFFFF0);
      v33(v65);
      dispatch thunk of BinaryInteger._lowWord.getter();
      (*(v108 + 8))(v65, v105);
      v74 = 0;
    }

    if (v74)
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "Not enough bits to represent the passed value", 45, 2, "Swift/Integers.swift", 20, 2, 3268, 0);
      __break(1u);
    }
  }

  v68 = v142;
  v67 = dispatch thunk of BinaryInteger._lowWord.getter();
  (*(v108 + 8))(v112, v105);
  v29 = Cycle.init(start:end:)(v104, v67);
  v30 = v143;
  v143[1].end = &type metadata for Cycle;
  *v30 = v29;
  __swift_destroy_boxed_opaque_existential_1(v157);
  return __swift_destroy_boxed_opaque_existential_1(__dst);
}

uint64_t closure #4 in static HIDMorpheusExtensions.extendMorpheus()@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v301 = a1;
  v299 = a2;
  v300 = 0;
  v349 = 0;
  v336 = 0;
  v335 = 0;
  v322 = 0;
  v321 = 0;
  v315 = 0;
  v314 = 0;
  v308 = 0;
  v307 = 0;
  v360 = a1;
  v350 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("values", 6uLL, 1);
  v302 = &v350;
  MEMORY[0x25F8891D0](v351);
  outlined destroy of DefaultStringInterpolation();
  if (v351[3])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s8Morpheus17AnyArrayContainer_pMd, &_s8Morpheus17AnyArrayContainer_pMR);
    if (!swift_dynamicCast())
    {
      v352 = 0;
      v353 = 0;
      v354 = 0;
      v355 = 0;
      v356 = 0;
    }
  }

  else
  {
    outlined destroy of Pregnancy?(v351);
    v352 = 0;
    v353 = 0;
    v354 = 0;
    v355 = 0;
    v356 = 0;
  }

  if (!v355)
  {
    outlined destroy of Pregnancy?(&v352);
LABEL_147:
    lazy protocol witness table accessor for type HIDPFLError and conformance HIDPFLError();
    v84[1] = 0;
    v85 = swift_allocError();
    *v83 = 38;
    swift_willThrow();
    result = v85;
    v89 = v85;
    return result;
  }

  v292 = __dst;
  outlined init with take of HealthDataQuery(&v352, __dst);
  v294 = v358;
  v293 = v359;
  __swift_project_boxed_opaque_existential_1(__dst, v358);
  v296 = dispatch thunk of AnyArrayContainer.anyArray.getter();
  v295 = v296;
  type metadata accessor for NSNumber();
  v297 = _arrayConditionalCast<A, B>(_:)();
  if (!v297)
  {

    __swift_destroy_boxed_opaque_existential_1(__dst);
    goto LABEL_147;
  }

  v291 = v297;
  v289 = v297;
  v349 = v297;

  v339 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("target", 6uLL, 1);
  v290 = &v339;
  MEMORY[0x25F8891D0](v340);
  outlined destroy of DefaultStringInterpolation();
  if (v340[3])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSz_pMd, _sSz_pMR);
    if (!swift_dynamicCast())
    {
      v341 = 0;
      v342 = 0;
      v343 = 0;
      v344 = 0;
      v345 = 0;
    }
  }

  else
  {
    outlined destroy of Pregnancy?(v340);
    v341 = 0;
    v342 = 0;
    v343 = 0;
    v344 = 0;
    v345 = 0;
  }

  if (!v344)
  {
    outlined destroy of Pregnancy?(&v341);

    __swift_destroy_boxed_opaque_existential_1(__dst);
    goto LABEL_147;
  }

  outlined init with take of HealthDataQuery(&v341, v346);
  v337 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("mode", 4uLL, 1);
  v288 = &v337;
  MEMORY[0x25F8891D0](v338);
  outlined destroy of DefaultStringInterpolation();
  if (v338[3])
  {
    if (swift_dynamicCast())
    {
      v284 = v303;
      v285 = v304;
    }

    else
    {
      v284 = 0;
      v285 = 0;
    }

    v286 = v284;
    v287 = v285;
  }

  else
  {
    outlined destroy of Pregnancy?(v338);
    v286 = 0;
    v287 = 0;
  }

  v282 = v287;
  v283 = v286;
  if (!v287)
  {
    __swift_destroy_boxed_opaque_existential_1(v346);

    __swift_destroy_boxed_opaque_existential_1(__dst);
    goto LABEL_147;
  }

  v280 = v283;
  v281 = v282;
  v278 = v282;
  v277 = v283;
  v335 = v283;
  v336 = v282;

  v334 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("ge", 2uLL, 1);
  v332 = v283;
  v333 = v282;
  v279 = MEMORY[0x25F889340](v334._countAndFlagsBits, v334._object, v283, v282);
  outlined destroy of DefaultStringInterpolation();
  if (v279)
  {
    v274 = v298;

    v309[1] = v289;
    v273 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8NSNumberCGMd, _sSaySo8NSNumberCGMR);
    v2 = lazy protocol witness table accessor for type [NSNumber] and conformance [A]();
    v275 = v298;
    v276 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(closure #1 in closure #4 in static HIDMorpheusExtensions.extendMorpheus(), 0, v273, MEMORY[0x277D83B88], MEMORY[0x277D84A98], v2, MEMORY[0x277D84AC0], v3);
    if (!v298)
    {
      v260 = v276;
      v272 = v347;
      v261 = v347;
      v271 = v348;
      v262 = v348;
      v4 = __swift_project_boxed_opaque_existential_1(v346, v347);
      v263 = *(v272 - 8);
      v267 = v263;
      v264 = v263;
      v265 = *(v263 + 64);
      v266 = v84;
      MEMORY[0x28223BE20](v84, v4);
      v268 = v84 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
      v269 = *(v267 + 16);
      v270 = (v267 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v269();
      if ((dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0 || dispatch thunk of BinaryInteger.bitWidth.getter() <= 64)
      {
        goto LABEL_40;
      }

      v305 = 0x8000000000000000;
      if (dispatch thunk of static BinaryInteger.isSigned.getter())
      {
        if (dispatch thunk of BinaryInteger.bitWidth.getter() < 64)
        {
          v258 = v84;
          MEMORY[0x28223BE20](v84, v268);
          v257 = v84 - ((v265 + 15) & 0xFFFFFFFFFFFFFFF0);
          v8(v257);
          dispatch thunk of BinaryInteger._lowWord.getter();
          (*(v264 + 8))(v257, v261);
          v259 = 0;
        }

        else
        {
          v255 = v84;
          MEMORY[0x28223BE20](v84, v6);
          v254 = v84 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
          lazy protocol witness table accessor for type Int and conformance Int();
          dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
          v256 = dispatch thunk of static Comparable.< infix(_:_:)();
          (*(v264 + 8))(v254, v261);
          v259 = v256;
        }
      }

      else
      {
        v7 = dispatch thunk of static BinaryInteger.isSigned.getter();
        if (v7)
        {
          if (dispatch thunk of BinaryInteger.bitWidth.getter() > 64)
          {
            v236 = v84;
            MEMORY[0x28223BE20](v84, v16);
            v235 = v84 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
            lazy protocol witness table accessor for type Int and conformance Int();
            dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
            v237 = dispatch thunk of static Comparable.< infix(_:_:)();
            (*(v264 + 8))(v235, v261);
            v259 = v237;
          }

          else
          {
            v228 = *(*(v262 + 24) + 16);
            v224 = MEMORY[0x277D846F0];
            AssociatedTypeWitness = swift_getAssociatedTypeWitness();
            v18 = *(*(AssociatedTypeWitness - 8) + 64);
            v233 = v84;
            v225 = (v18 + 15) & 0xFFFFFFFFFFFFFFF0;
            MEMORY[0x28223BE20](v228, v261);
            v227 = v84 - v225;
            swift_getAssociatedConformanceWitness();
            dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
            v232 = v84;
            MEMORY[0x28223BE20](v227, v261);
            v229 = v84 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
            dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
            v234 = dispatch thunk of static Comparable.< infix(_:_:)();
            v230 = *(v264 + 8);
            v231 = (v264 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
            v230(v229, v261);
            if (v234)
            {
LABEL_39:
              _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "Not enough bits to represent a signed value", 43, 2, "Swift/Integers.swift", 20, 2, 3262, 0);
              __break(1u);
              goto LABEL_40;
            }

            v223 = v84;
            MEMORY[0x28223BE20](v84, v268);
            v222 = v84 - ((v265 + 15) & 0xFFFFFFFFFFFFFFF0);
            v20(v222);
            dispatch thunk of BinaryInteger._lowWord.getter();
            v230(v222, v261);
            v259 = 0;
          }
        }

        else
        {
          if (dispatch thunk of BinaryInteger.bitWidth.getter() >= 64)
          {
LABEL_40:
            if (dispatch thunk of BinaryInteger.bitWidth.getter() >= 65 || dispatch thunk of BinaryInteger.bitWidth.getter() == 64 && (dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0)
            {
              v306 = 0x7FFFFFFFFFFFFFFFLL;
              if (dispatch thunk of static BinaryInteger.isSigned.getter())
              {
                if (dispatch thunk of BinaryInteger.bitWidth.getter() < 65)
                {
                  v249 = v84;
                  MEMORY[0x28223BE20](v84, v268);
                  v248 = v84 - ((v265 + 15) & 0xFFFFFFFFFFFFFFF0);
                  v12(v248);
                  dispatch thunk of BinaryInteger._lowWord.getter();
                  (*(v264 + 8))(v248, v261);
                  v253 = 0;
                }

                else
                {
                  v251 = v84;
                  MEMORY[0x28223BE20](v84, v10);
                  v250 = v84 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
                  lazy protocol witness table accessor for type Int and conformance Int();
                  dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
                  v252 = dispatch thunk of static Comparable.< infix(_:_:)();
                  (*(v264 + 8))(v250, v261);
                  v253 = v252;
                }
              }

              else if (dispatch thunk of BinaryInteger.bitWidth.getter() > 63)
              {
                v239 = v84;
                MEMORY[0x28223BE20](v84, v13);
                v238 = v84 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
                lazy protocol witness table accessor for type Int and conformance Int();
                dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
                v240 = dispatch thunk of static Comparable.< infix(_:_:)();
                (*(v264 + 8))(v238, v261);
                v253 = v240;
              }

              else
              {
                v242 = v84;
                MEMORY[0x28223BE20](v84, v268);
                v241 = v84 - ((v265 + 15) & 0xFFFFFFFFFFFFFFF0);
                v14(v241);
                dispatch thunk of BinaryInteger._lowWord.getter();
                (*(v264 + 8))(v241, v261);
                v253 = 0;
              }

              if (v253)
              {
                _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "Not enough bits to represent the passed value", 45, 2, "Swift/Integers.swift", 20, 2, 3268, 0);
                __break(1u);
              }
            }

            v245 = dispatch thunk of BinaryInteger._lowWord.getter();
            (*(v264 + 8))(v268, v261);
            v309[0] = v245;
            static HIDPFLUtils.findClosest<A>(_:greaterOrEqualThan:)(v260, v309, MEMORY[0x277D83B88], MEMORY[0x277D83BA0], v310);

            v246 = v310[0];
            v247 = v310[1];
            if ((v311 & 1) == 0)
            {
              v243 = v246;
              v244 = v247;
              v215 = v247;
              v214 = v246;
              v307 = v246;
              v308 = v247;
              v216 = MEMORY[0x277D83B88];
              _allocateUninitializedArray<A>(_:)();
              v22 = v215;
              *v23 = v214;
              v23[1] = v22;
              _finalizeUninitializedArray<A>(_:)();
              v217 = v24;
              v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySiGMd, &_sSaySiGMR);
              v26 = v299;
              v27 = v217;
              v299[3] = v25;
              *v26 = v27;

              __swift_destroy_boxed_opaque_existential_1(v346);

              result = __swift_destroy_boxed_opaque_existential_1(__dst);
              v218 = v275;
              return result;
            }

            v219 = v275;
LABEL_146:
            v82 = v299;
            v86 = v219;
            *v299 = 0;
            v82[1] = 0;
            v82[2] = 0;
            v82[3] = 0;

            __swift_destroy_boxed_opaque_existential_1(v346);

            __swift_destroy_boxed_opaque_existential_1(__dst);
            result = v86;
            v218 = v86;
            return result;
          }

          v221 = v84;
          MEMORY[0x28223BE20](v84, v268);
          v220 = v84 - ((v265 + 15) & 0xFFFFFFFFFFFFFFF0);
          v21(v220);
          dispatch thunk of BinaryInteger._lowWord.getter();
          (*(v264 + 8))(v220, v261);
          v259 = 0;
        }
      }

      if ((v259 & 1) == 0)
      {
        goto LABEL_40;
      }

      goto LABEL_39;
    }

    __break(1u);
    goto LABEL_149;
  }

  v331 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("le", 2uLL, 1);
  v329 = v277;
  v330 = v278;
  v213 = MEMORY[0x25F889340](v331._countAndFlagsBits, v331._object, v277, v278);
  outlined destroy of DefaultStringInterpolation();
  if ((v213 & 1) == 0)
  {

    v328 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("le-ge", 5uLL, 1);
    v326 = v277;
    v327 = v278;
    v151 = MEMORY[0x25F889340](v328._countAndFlagsBits, v328._object, v277, v278);
    outlined destroy of DefaultStringInterpolation();
    if ((v151 & 1) == 0)
    {

      lazy protocol witness table accessor for type HIDPFLError and conformance HIDPFLError();
      v87 = 0;
      v88 = swift_allocError();
      *v81 = 38;
      swift_willThrow();

      __swift_destroy_boxed_opaque_existential_1(v346);

      __swift_destroy_boxed_opaque_existential_1(__dst);
      result = v88;
      v89 = v88;
      return result;
    }

    v148 = v298;

    v323[1] = v289;
    v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8NSNumberCGMd, _sSaySo8NSNumberCGMR);
    v55 = lazy protocol witness table accessor for type [NSNumber] and conformance [A]();
    v149 = v298;
    v150 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(closure #1 in closure #4 in static HIDMorpheusExtensions.extendMorpheus(), 0, v147, MEMORY[0x277D83B88], MEMORY[0x277D84A98], v55, MEMORY[0x277D84AC0], v56);
    if (v298)
    {
      goto LABEL_150;
    }

    v134 = v150;
    v146 = v347;
    v135 = v347;
    v145 = v348;
    v136 = v348;
    v57 = __swift_project_boxed_opaque_existential_1(v346, v347);
    v137 = *(v146 - 8);
    v141 = v137;
    v138 = v137;
    v139 = *(v137 + 64);
    v140 = v84;
    MEMORY[0x28223BE20](v84, v57);
    v142 = v84 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
    v143 = *(v141 + 16);
    v144 = (v141 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v143();
    if ((dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0 || dispatch thunk of BinaryInteger.bitWidth.getter() <= 64)
    {
LABEL_120:
      if (dispatch thunk of BinaryInteger.bitWidth.getter() >= 65 || dispatch thunk of BinaryInteger.bitWidth.getter() == 64 && (dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0)
      {
        v320 = 0x7FFFFFFFFFFFFFFFLL;
        if (dispatch thunk of static BinaryInteger.isSigned.getter())
        {
          if (dispatch thunk of BinaryInteger.bitWidth.getter() < 65)
          {
            v123 = v84;
            MEMORY[0x28223BE20](v84, v142);
            v122 = v84 - ((v139 + 15) & 0xFFFFFFFFFFFFFFF0);
            v65(v122);
            dispatch thunk of BinaryInteger._lowWord.getter();
            (*(v138 + 8))(v122, v135);
            v127 = 0;
          }

          else
          {
            v125 = v84;
            MEMORY[0x28223BE20](v84, v63);
            v124 = v84 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
            lazy protocol witness table accessor for type Int and conformance Int();
            dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
            v126 = dispatch thunk of static Comparable.< infix(_:_:)();
            (*(v138 + 8))(v124, v135);
            v127 = v126;
          }
        }

        else if (dispatch thunk of BinaryInteger.bitWidth.getter() > 63)
        {
          v113 = v84;
          MEMORY[0x28223BE20](v84, v66);
          v112 = v84 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0);
          lazy protocol witness table accessor for type Int and conformance Int();
          dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
          v114 = dispatch thunk of static Comparable.< infix(_:_:)();
          (*(v138 + 8))(v112, v135);
          v127 = v114;
        }

        else
        {
          v116 = v84;
          MEMORY[0x28223BE20](v84, v142);
          v115 = v84 - ((v139 + 15) & 0xFFFFFFFFFFFFFFF0);
          v67(v115);
          dispatch thunk of BinaryInteger._lowWord.getter();
          (*(v138 + 8))(v115, v135);
          v127 = 0;
        }

        if (v127)
        {
          _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "Not enough bits to represent the passed value", 45, 2, "Swift/Integers.swift", 20, 2, 3268, 0);
          __break(1u);
        }
      }

      v119 = dispatch thunk of BinaryInteger._lowWord.getter();
      (*(v138 + 8))(v142, v135);
      v323[0] = v119;
      static HIDPFLUtils.findClosest<A>(_:target:)(v134, v323, MEMORY[0x277D83B88], MEMORY[0x277D83BA0], MEMORY[0x277D83BC0], v324);

      v120 = v324[0];
      v121 = v324[1];
      if ((v325 & 1) == 0)
      {
        v117 = v120;
        v118 = v121;
        v91 = v121;
        v90 = v120;
        v321 = v120;
        v322 = v121;
        v92 = MEMORY[0x277D83B88];
        _allocateUninitializedArray<A>(_:)();
        v75 = v91;
        *v76 = v90;
        v76[1] = v75;
        _finalizeUninitializedArray<A>(_:)();
        v93 = v77;
        v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySiGMd, &_sSaySiGMR);
        v79 = v299;
        v80 = v93;
        v299[3] = v78;
        *v79 = v80;

        __swift_destroy_boxed_opaque_existential_1(v346);

        __swift_destroy_boxed_opaque_existential_1(__dst);
        result = v149;
        v218 = v149;
        return result;
      }

      v219 = v149;
      goto LABEL_146;
    }

    v319 = 0x8000000000000000;
    if (dispatch thunk of static BinaryInteger.isSigned.getter())
    {
      if (dispatch thunk of BinaryInteger.bitWidth.getter() < 64)
      {
        v132 = v84;
        MEMORY[0x28223BE20](v84, v142);
        v131 = v84 - ((v139 + 15) & 0xFFFFFFFFFFFFFFF0);
        v61(v131);
        dispatch thunk of BinaryInteger._lowWord.getter();
        (*(v138 + 8))(v131, v135);
        v133 = 0;
      }

      else
      {
        v129 = v84;
        MEMORY[0x28223BE20](v84, v59);
        v128 = v84 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
        lazy protocol witness table accessor for type Int and conformance Int();
        dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
        v130 = dispatch thunk of static Comparable.< infix(_:_:)();
        (*(v138 + 8))(v128, v135);
        v133 = v130;
      }
    }

    else
    {
      v60 = dispatch thunk of static BinaryInteger.isSigned.getter();
      if (v60)
      {
        if (dispatch thunk of BinaryInteger.bitWidth.getter() > 64)
        {
          v110 = v84;
          MEMORY[0x28223BE20](v84, v69);
          v109 = v84 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
          lazy protocol witness table accessor for type Int and conformance Int();
          dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
          v111 = dispatch thunk of static Comparable.< infix(_:_:)();
          (*(v138 + 8))(v109, v135);
          v133 = v111;
        }

        else
        {
          v102 = *(*(v136 + 24) + 16);
          v98 = MEMORY[0x277D846F0];
          v100 = swift_getAssociatedTypeWitness();
          v71 = *(*(v100 - 8) + 64);
          v107 = v84;
          v99 = (v71 + 15) & 0xFFFFFFFFFFFFFFF0;
          MEMORY[0x28223BE20](v102, v135);
          v101 = v84 - v99;
          swift_getAssociatedConformanceWitness();
          dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
          v106 = v84;
          MEMORY[0x28223BE20](v101, v135);
          v103 = v84 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0);
          dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
          v108 = dispatch thunk of static Comparable.< infix(_:_:)();
          v104 = *(v138 + 8);
          v105 = (v138 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
          v104(v103, v135);
          if (v108)
          {
            goto LABEL_119;
          }

          v97 = v84;
          MEMORY[0x28223BE20](v84, v142);
          v96 = v84 - ((v139 + 15) & 0xFFFFFFFFFFFFFFF0);
          v73(v96);
          dispatch thunk of BinaryInteger._lowWord.getter();
          v104(v96, v135);
          v133 = 0;
        }
      }

      else
      {
        if (dispatch thunk of BinaryInteger.bitWidth.getter() >= 64)
        {
          goto LABEL_120;
        }

        v95 = v84;
        MEMORY[0x28223BE20](v84, v142);
        v94 = v84 - ((v139 + 15) & 0xFFFFFFFFFFFFFFF0);
        v74(v94);
        dispatch thunk of BinaryInteger._lowWord.getter();
        (*(v138 + 8))(v94, v135);
        v133 = 0;
      }
    }

    if ((v133 & 1) == 0)
    {
      goto LABEL_120;
    }

LABEL_119:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "Not enough bits to represent a signed value", 43, 2, "Swift/Integers.swift", 20, 2, 3262, 0);
    __break(1u);
    goto LABEL_120;
  }

  v210 = v298;

  v316[1] = v289;
  v209 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8NSNumberCGMd, _sSaySo8NSNumberCGMR);
  v29 = lazy protocol witness table accessor for type [NSNumber] and conformance [A]();
  v211 = v298;
  v212 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(closure #1 in closure #4 in static HIDMorpheusExtensions.extendMorpheus(), 0, v209, MEMORY[0x277D83B88], MEMORY[0x277D84A98], v29, MEMORY[0x277D84AC0], v30);
  if (!v298)
  {
    v196 = v212;
    v208 = v347;
    v197 = v347;
    v207 = v348;
    v198 = v348;
    v31 = __swift_project_boxed_opaque_existential_1(v346, v347);
    v199 = *(v208 - 8);
    v203 = v199;
    v200 = v199;
    v201 = *(v199 + 64);
    v202 = v84;
    MEMORY[0x28223BE20](v84, v31);
    v204 = v84 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
    v205 = *(v203 + 16);
    v206 = (v203 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v205();
    if ((dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0 || dispatch thunk of BinaryInteger.bitWidth.getter() <= 64)
    {
LABEL_80:
      if (dispatch thunk of BinaryInteger.bitWidth.getter() >= 65 || dispatch thunk of BinaryInteger.bitWidth.getter() == 64 && (dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0)
      {
        v313 = 0x7FFFFFFFFFFFFFFFLL;
        if (dispatch thunk of static BinaryInteger.isSigned.getter())
        {
          if (dispatch thunk of BinaryInteger.bitWidth.getter() < 65)
          {
            v185 = v84;
            MEMORY[0x28223BE20](v84, v204);
            v184 = v84 - ((v201 + 15) & 0xFFFFFFFFFFFFFFF0);
            v39(v184);
            dispatch thunk of BinaryInteger._lowWord.getter();
            (*(v200 + 8))(v184, v197);
            v189 = 0;
          }

          else
          {
            v187 = v84;
            MEMORY[0x28223BE20](v84, v37);
            v186 = v84 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
            lazy protocol witness table accessor for type Int and conformance Int();
            dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
            v188 = dispatch thunk of static Comparable.< infix(_:_:)();
            (*(v200 + 8))(v186, v197);
            v189 = v188;
          }
        }

        else if (dispatch thunk of BinaryInteger.bitWidth.getter() > 63)
        {
          v175 = v84;
          MEMORY[0x28223BE20](v84, v40);
          v174 = v84 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
          lazy protocol witness table accessor for type Int and conformance Int();
          dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
          v176 = dispatch thunk of static Comparable.< infix(_:_:)();
          (*(v200 + 8))(v174, v197);
          v189 = v176;
        }

        else
        {
          v178 = v84;
          MEMORY[0x28223BE20](v84, v204);
          v177 = v84 - ((v201 + 15) & 0xFFFFFFFFFFFFFFF0);
          v41(v177);
          dispatch thunk of BinaryInteger._lowWord.getter();
          (*(v200 + 8))(v177, v197);
          v189 = 0;
        }

        if (v189)
        {
          _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "Not enough bits to represent the passed value", 45, 2, "Swift/Integers.swift", 20, 2, 3268, 0);
          __break(1u);
        }
      }

      v181 = dispatch thunk of BinaryInteger._lowWord.getter();
      (*(v200 + 8))(v204, v197);
      v316[0] = v181;
      static HIDPFLUtils.findClosest<A>(_:lessOrEqualThan:)(v196, v316, MEMORY[0x277D83B88], MEMORY[0x277D83BA0], v317);

      v182 = v317[0];
      v183 = v317[1];
      if ((v318 & 1) == 0)
      {
        v179 = v182;
        v180 = v183;
        v153 = v183;
        v152 = v182;
        v314 = v182;
        v315 = v183;
        v154 = MEMORY[0x277D83B88];
        _allocateUninitializedArray<A>(_:)();
        v49 = v153;
        *v50 = v152;
        v50[1] = v49;
        _finalizeUninitializedArray<A>(_:)();
        v155 = v51;
        v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySiGMd, &_sSaySiGMR);
        v53 = v299;
        v54 = v155;
        v299[3] = v52;
        *v53 = v54;

        __swift_destroy_boxed_opaque_existential_1(v346);

        result = __swift_destroy_boxed_opaque_existential_1(__dst);
        v218 = v211;
        return result;
      }

      v219 = v211;
      goto LABEL_146;
    }

    v312 = 0x8000000000000000;
    if (dispatch thunk of static BinaryInteger.isSigned.getter())
    {
      if (dispatch thunk of BinaryInteger.bitWidth.getter() < 64)
      {
        v194 = v84;
        MEMORY[0x28223BE20](v84, v204);
        v193 = v84 - ((v201 + 15) & 0xFFFFFFFFFFFFFFF0);
        v35(v193);
        dispatch thunk of BinaryInteger._lowWord.getter();
        (*(v200 + 8))(v193, v197);
        v195 = 0;
      }

      else
      {
        v191 = v84;
        MEMORY[0x28223BE20](v84, v33);
        v190 = v84 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
        lazy protocol witness table accessor for type Int and conformance Int();
        dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
        v192 = dispatch thunk of static Comparable.< infix(_:_:)();
        (*(v200 + 8))(v190, v197);
        v195 = v192;
      }
    }

    else
    {
      v34 = dispatch thunk of static BinaryInteger.isSigned.getter();
      if (v34)
      {
        if (dispatch thunk of BinaryInteger.bitWidth.getter() > 64)
        {
          v172 = v84;
          MEMORY[0x28223BE20](v84, v43);
          v171 = v84 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
          lazy protocol witness table accessor for type Int and conformance Int();
          dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
          v173 = dispatch thunk of static Comparable.< infix(_:_:)();
          (*(v200 + 8))(v171, v197);
          v195 = v173;
        }

        else
        {
          v164 = *(*(v198 + 24) + 16);
          v160 = MEMORY[0x277D846F0];
          v162 = swift_getAssociatedTypeWitness();
          v45 = *(*(v162 - 8) + 64);
          v169 = v84;
          v161 = (v45 + 15) & 0xFFFFFFFFFFFFFFF0;
          MEMORY[0x28223BE20](v164, v197);
          v163 = v84 - v161;
          swift_getAssociatedConformanceWitness();
          dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
          v168 = v84;
          MEMORY[0x28223BE20](v163, v197);
          v165 = v84 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
          dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
          v170 = dispatch thunk of static Comparable.< infix(_:_:)();
          v166 = *(v200 + 8);
          v167 = (v200 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
          v166(v165, v197);
          if (v170)
          {
            goto LABEL_79;
          }

          v159 = v84;
          MEMORY[0x28223BE20](v84, v204);
          v158 = v84 - ((v201 + 15) & 0xFFFFFFFFFFFFFFF0);
          v47(v158);
          dispatch thunk of BinaryInteger._lowWord.getter();
          v166(v158, v197);
          v195 = 0;
        }
      }

      else
      {
        if (dispatch thunk of BinaryInteger.bitWidth.getter() >= 64)
        {
          goto LABEL_80;
        }

        v157 = v84;
        MEMORY[0x28223BE20](v84, v204);
        v156 = v84 - ((v201 + 15) & 0xFFFFFFFFFFFFFFF0);
        v48(v156);
        dispatch thunk of BinaryInteger._lowWord.getter();
        (*(v200 + 8))(v156, v197);
        v195 = 0;
      }
    }

    if ((v195 & 1) == 0)
    {
      goto LABEL_80;
    }

LABEL_79:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "Not enough bits to represent a signed value", 43, 2, "Swift/Integers.swift", 20, 2, 3262, 0);
    __break(1u);
    goto LABEL_80;
  }

LABEL_149:
  __break(1u);
LABEL_150:
  result = 0;
  __break(1u);
  return result;
}

id closure #1 in closure #4 in static HIDMorpheusExtensions.extendMorpheus()@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 integerValue];
  *a2 = result;
  return result;
}

uint64_t closure #5 in static HIDMorpheusExtensions.extendMorpheus()@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v22 = 0;
  v24[4] = a1;
  v23 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("value", 5uLL, 1);
  MEMORY[0x25F8891D0](v24);
  outlined destroy of DefaultStringInterpolation();
  if (v24[3])
  {
    type metadata accessor for NSNumber();
    if (swift_dynamicCast())
    {
      v10 = v14;
    }

    else
    {
      v10 = 0;
    }

    v11 = v10;
  }

  else
  {
    outlined destroy of Pregnancy?(v24);
    v11 = 0;
  }

  if (!v11)
  {
    goto LABEL_21;
  }

  v22 = v11;
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("buckets", 7uLL, 1);
  MEMORY[0x25F8891D0](v15);
  outlined destroy of DefaultStringInterpolation();
  if (v15[3])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s8Morpheus17AnyArrayContainer_pMd, &_s8Morpheus17AnyArrayContainer_pMR);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v19 = 0;
      v20 = 0;
    }
  }

  else
  {
    outlined destroy of Pregnancy?(v15);
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
  }

  if (!v19)
  {
    outlined destroy of Pregnancy?(&v16);
    MEMORY[0x277D82BD8](v11);
LABEL_21:
    lazy protocol witness table accessor for type HIDPFLError and conformance HIDPFLError();
    swift_allocError();
    *v5 = 39;
    return swift_willThrow();
  }

  outlined init with take of HealthDataQuery(&v16, __dst);
  __swift_project_boxed_opaque_existential_1(__dst, __dst[3]);
  dispatch thunk of AnyArrayContainer.anyArray.getter();
  type metadata accessor for NSNumber();
  if (!_arrayConditionalCast<A, B>(_:)())
  {

    __swift_destroy_boxed_opaque_existential_1(__dst);
    MEMORY[0x277D82BD8](v11);
    goto LABEL_21;
  }

  [v11 floatValue];
  v7 = v2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8NSNumberCGMd, _sSaySo8NSNumberCGMR);
  v3 = lazy protocol witness table accessor for type [NSNumber] and conformance [A]();
  result = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(closure #1 in closure #5 in static HIDMorpheusExtensions.extendMorpheus(), 0, v8, MEMORY[0x277D83A90], MEMORY[0x277D84A98], v3, MEMORY[0x277D84AC0], v9);
  if (v13)
  {
    __break(1u);
  }

  else
  {
    v6 = static MetricsUtils.bucketize(value:buckets:)(result, v7);

    a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySiGMd, &_sSaySiGMR);
    *a2 = v6;

    __swift_destroy_boxed_opaque_existential_1(__dst);
    return MEMORY[0x277D82BD8](v11);
  }

  return result;
}

id closure #1 in closure #5 in static HIDMorpheusExtensions.extendMorpheus()@<X0>(id *a1@<X0>, _DWORD *a2@<X8>)
{
  result = [*a1 floatValue];
  *a2 = v3;
  return result;
}

uint64_t closure #6 in static HIDMorpheusExtensions.extendMorpheus()@<X0>(uint64_t a1@<X0>, void (**a2)(void)@<X8>)
{
  v20 = 0;
  __dst[5] = a1;
  v21 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("values", 6uLL, 1);
  MEMORY[0x25F8891D0](v22);
  outlined destroy of DefaultStringInterpolation();
  if (v22[3])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s8Morpheus17AnyArrayContainer_pMd, &_s8Morpheus17AnyArrayContainer_pMR);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v23 = 0;
      v24 = 0;
      v25 = 0;
      v26 = 0;
      v27 = 0;
    }
  }

  else
  {
    outlined destroy of Pregnancy?(v22);
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v27 = 0;
  }

  if (!v26)
  {
    outlined destroy of Pregnancy?(&v23);
LABEL_21:
    lazy protocol witness table accessor for type HIDPFLError and conformance HIDPFLError();
    swift_allocError();
    *v3 = 39;
    return swift_willThrow();
  }

  outlined init with take of HealthDataQuery(&v23, __dst);
  __swift_project_boxed_opaque_existential_1(__dst, __dst[3]);
  dispatch thunk of AnyArrayContainer.anyArray.getter();
  type metadata accessor for NSNumber();
  v10 = _arrayConditionalCast<A, B>(_:)();
  if (!v10)
  {

    __swift_destroy_boxed_opaque_existential_1(__dst);
    goto LABEL_21;
  }

  v20 = v10;

  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("buckets", 7uLL, 1);
  MEMORY[0x25F8891D0](v13);
  outlined destroy of DefaultStringInterpolation();
  if (v13[3])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s8Morpheus17AnyArrayContainer_pMd, &_s8Morpheus17AnyArrayContainer_pMR);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v18 = 0;
    }
  }

  else
  {
    outlined destroy of Pregnancy?(v13);
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
  }

  if (!v17)
  {
    outlined destroy of Pregnancy?(&v14);

    __swift_destroy_boxed_opaque_existential_1(__dst);
    goto LABEL_21;
  }

  outlined init with take of HealthDataQuery(&v14, v19);
  __swift_project_boxed_opaque_existential_1(v19, v19[3]);
  dispatch thunk of AnyArrayContainer.anyArray.getter();
  if (!_arrayConditionalCast<A, B>(_:)())
  {

    __swift_destroy_boxed_opaque_existential_1(v19);

    __swift_destroy_boxed_opaque_existential_1(__dst);
    goto LABEL_21;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8NSNumberCGMd, _sSaySo8NSNumberCGMR);
  v8 = lazy protocol witness table accessor for type [NSNumber] and conformance [A]();
  result = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(closure #1 in closure #5 in static HIDMorpheusExtensions.extendMorpheus(), 0, v6, MEMORY[0x277D83A90], MEMORY[0x277D84A98], v8, MEMORY[0x277D84AC0], v7);
  v9 = result;
  if (v12)
  {
    __break(1u);
    __break(1u);
  }

  else
  {
    v5 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(closure #1 in closure #5 in static HIDMorpheusExtensions.extendMorpheus(), 0, v6, MEMORY[0x277D83A90], MEMORY[0x277D84A98], v8, MEMORY[0x277D84AC0], v7);
    v4 = static MetricsUtils.bucketize(values:buckets:)(v9, v5);

    a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySiGMd, &_sSaySiGMR);
    *a2 = v4;

    __swift_destroy_boxed_opaque_existential_1(v19);

    return __swift_destroy_boxed_opaque_existential_1(__dst);
  }

  return result;
}

uint64_t closure #7 in static HIDMorpheusExtensions.extendMorpheus()@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  __dst[5] = a1;
  v28 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("outputs", 7uLL, 1);
  MEMORY[0x25F8891D0](v29);
  outlined destroy of DefaultStringInterpolation();
  if (v29[3])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s8Morpheus17AnyArrayContainer_pMd, &_s8Morpheus17AnyArrayContainer_pMR);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v30 = 0;
      v31 = 0;
      v32 = 0;
      v33 = 0;
      v34 = 0;
    }
  }

  else
  {
    outlined destroy of Pregnancy?(v29);
    v30 = 0;
    v31 = 0;
    v32 = 0;
    v33 = 0;
    v34 = 0;
  }

  if (!v33)
  {
    outlined destroy of Pregnancy?(&v30);
LABEL_21:
    lazy protocol witness table accessor for type HIDPFLError and conformance HIDPFLError();
    swift_allocError();
    *v7 = 40;
    return swift_willThrow();
  }

  outlined init with take of HealthDataQuery(&v30, __dst);
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("labels", 6uLL, 1);
  MEMORY[0x25F8891D0](v21);
  outlined destroy of DefaultStringInterpolation();
  if (v21[3])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s8Morpheus17AnyArrayContainer_pMd, &_s8Morpheus17AnyArrayContainer_pMR);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v22 = 0;
      v23 = 0;
      v24 = 0;
      v25 = 0;
      v26 = 0;
    }
  }

  else
  {
    outlined destroy of Pregnancy?(v21);
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = 0;
  }

  if (!v25)
  {
    outlined destroy of Pregnancy?(&v22);
    __swift_destroy_boxed_opaque_existential_1(__dst);
    goto LABEL_21;
  }

  outlined init with take of HealthDataQuery(&v22, v27);
  __swift_project_boxed_opaque_existential_1(__dst, __dst[3]);
  dispatch thunk of AnyArrayContainer.anyArray.getter();
  type metadata accessor for NSNumber();
  if (!_arrayConditionalCast<A, B>(_:)())
  {

    __swift_destroy_boxed_opaque_existential_1(v27);
    __swift_destroy_boxed_opaque_existential_1(__dst);
    goto LABEL_21;
  }

  __swift_project_boxed_opaque_existential_1(v27, v27[3]);
  dispatch thunk of AnyArrayContainer.anyArray.getter();
  if (!_arrayConditionalCast<A, B>(_:)())
  {

    __swift_destroy_boxed_opaque_existential_1(v27);
    __swift_destroy_boxed_opaque_existential_1(__dst);
    goto LABEL_21;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8NSNumberCGMd, _sSaySo8NSNumberCGMR);
  v17 = lazy protocol witness table accessor for type [NSNumber] and conformance [A]();
  result = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(closure #1 in closure #5 in static HIDMorpheusExtensions.extendMorpheus(), 0, v15, MEMORY[0x277D83A90], MEMORY[0x277D84A98], v17, MEMORY[0x277D84AC0], v16);
  v18 = result;
  if (v20)
  {
    __break(1u);
    __break(1u);
  }

  else
  {
    v14 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(closure #1 in closure #5 in static HIDMorpheusExtensions.extendMorpheus(), 0, v15, MEMORY[0x277D83A90], MEMORY[0x277D84A98], v17, MEMORY[0x277D84AC0], v16);
    v11 = static AUC.rocCurve(outputs:labels:)(v18, v14);
    v12 = v3;
    v13 = v4;
    _allocateUninitializedArray<A>(_:)();
    v9 = v5;

    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySfGMd, &_sSaySfGMR);
    v9[3] = v8;
    *v9 = v11;

    v9[7] = v8;
    v9[4] = v12;

    v9[11] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySiGMd, &_sSaySiGMR);
    v9[8] = v13;
    _finalizeUninitializedArray<A>(_:)();
    v10 = v6;

    a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayypGMd, &_sSayypGMR);
    *a2 = v10;

    __swift_destroy_boxed_opaque_existential_1(v27);
    return __swift_destroy_boxed_opaque_existential_1(__dst);
  }

  return result;
}

uint64_t closure #8 in static HIDMorpheusExtensions.extendMorpheus()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v21 = 0;
  v20 = 0;
  __dst[5] = a1;
  v30 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("tpr", 3uLL, 1);
  MEMORY[0x25F8891D0](v31);
  outlined destroy of DefaultStringInterpolation();
  if (v31[3])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s8Morpheus17AnyArrayContainer_pMd, &_s8Morpheus17AnyArrayContainer_pMR);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v32 = 0;
      v33 = 0;
      v34 = 0;
      v35 = 0;
      v36 = 0;
    }
  }

  else
  {
    outlined destroy of Pregnancy?(v31);
    v32 = 0;
    v33 = 0;
    v34 = 0;
    v35 = 0;
    v36 = 0;
  }

  if (!v35)
  {
    outlined destroy of Pregnancy?(&v32);
LABEL_31:
    lazy protocol witness table accessor for type HIDPFLError and conformance HIDPFLError();
    v7 = swift_allocError();
    *v6 = 41;
    swift_willThrow();
    return v7;
  }

  outlined init with take of HealthDataQuery(&v32, __dst);
  v22 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("fpr", 3uLL, 1);
  MEMORY[0x25F8891D0](v23);
  outlined destroy of DefaultStringInterpolation();
  if (v23[3])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s8Morpheus17AnyArrayContainer_pMd, &_s8Morpheus17AnyArrayContainer_pMR);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v24 = 0;
      v25 = 0;
      v26 = 0;
      v27 = 0;
      v28 = 0;
    }
  }

  else
  {
    outlined destroy of Pregnancy?(v23);
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v27 = 0;
    v28 = 0;
  }

  if (!v27)
  {
    outlined destroy of Pregnancy?(&v24);
    __swift_destroy_boxed_opaque_existential_1(__dst);
    goto LABEL_31;
  }

  outlined init with take of HealthDataQuery(&v24, v29);
  __swift_project_boxed_opaque_existential_1(__dst, __dst[3]);
  dispatch thunk of AnyArrayContainer.anyArray.getter();
  type metadata accessor for NSNumber();
  v15 = _arrayConditionalCast<A, B>(_:)();
  if (!v15)
  {

    __swift_destroy_boxed_opaque_existential_1(v29);
    __swift_destroy_boxed_opaque_existential_1(__dst);
    goto LABEL_31;
  }

  v21 = v15;

  __swift_project_boxed_opaque_existential_1(v29, v29[3]);
  dispatch thunk of AnyArrayContainer.anyArray.getter();
  v2 = _arrayConditionalCast<A, B>(_:)();
  if (!v2)
  {

    __swift_destroy_boxed_opaque_existential_1(v29);
    __swift_destroy_boxed_opaque_existential_1(__dst);
    goto LABEL_31;
  }

  v20 = v2;

  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("maxFPR", 6uLL, 1);
  MEMORY[0x25F8891D0](v19);
  outlined destroy of DefaultStringInterpolation();
  if (v19[3])
  {
    if (swift_dynamicCast())
    {
      v13 = v18;
    }

    else
    {
      v13 = 0;
    }

    v14 = v13;
  }

  else
  {
    outlined destroy of Pregnancy?(v19);
    v14 = 0;
  }

  if (!v14)
  {

    __swift_destroy_boxed_opaque_existential_1(v29);
    __swift_destroy_boxed_opaque_existential_1(__dst);
    goto LABEL_31;
  }

  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8NSNumberCGMd, _sSaySo8NSNumberCGMR);
  v11 = lazy protocol witness table accessor for type [NSNumber] and conformance [A]();
  v12 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(closure #1 in closure #5 in static HIDMorpheusExtensions.extendMorpheus(), 0, v9, MEMORY[0x277D83A90], MEMORY[0x277D84A98], v11, MEMORY[0x277D84AC0], v10);
  if (v17)
  {
    __break(1u);
    __break(1u);
  }

  else
  {
    v8 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(closure #1 in closure #5 in static HIDMorpheusExtensions.extendMorpheus(), 0, v9, MEMORY[0x277D83A90], MEMORY[0x277D84A98], v11, MEMORY[0x277D84AC0], v10);
    [v14 floatValue];
    static AUC.rocAUCScore(tpr:fpr:maxFPR:)(v12, v8, v3);
    *(a2 + 24) = MEMORY[0x277D83A90];
    *a2 = v4;
  }

  MEMORY[0x277D82BD8](v14);

  __swift_destroy_boxed_opaque_existential_1(v29);
  return __swift_destroy_boxed_opaque_existential_1(__dst);
}

uint64_t closure #9 in static HIDMorpheusExtensions.extendMorpheus()@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  __dst[5] = a1;
  v30 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("outputs", 7uLL, 1);
  MEMORY[0x25F8891D0](v31);
  outlined destroy of DefaultStringInterpolation();
  if (v31[3])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s8Morpheus17AnyArrayContainer_pMd, &_s8Morpheus17AnyArrayContainer_pMR);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v32 = 0;
      v33 = 0;
      v34 = 0;
      v35 = 0;
      v36 = 0;
    }
  }

  else
  {
    outlined destroy of Pregnancy?(v31);
    v32 = 0;
    v33 = 0;
    v34 = 0;
    v35 = 0;
    v36 = 0;
  }

  if (!v35)
  {
    outlined destroy of Pregnancy?(&v32);
LABEL_21:
    lazy protocol witness table accessor for type HIDPFLError and conformance HIDPFLError();
    swift_allocError();
    *v8 = 42;
    return swift_willThrow();
  }

  outlined init with take of HealthDataQuery(&v32, __dst);
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("labels", 6uLL, 1);
  MEMORY[0x25F8891D0](v23);
  outlined destroy of DefaultStringInterpolation();
  if (v23[3])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s8Morpheus17AnyArrayContainer_pMd, &_s8Morpheus17AnyArrayContainer_pMR);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v24 = 0;
      v25 = 0;
      v26 = 0;
      v27 = 0;
      v28 = 0;
    }
  }

  else
  {
    outlined destroy of Pregnancy?(v23);
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v27 = 0;
    v28 = 0;
  }

  if (!v27)
  {
    outlined destroy of Pregnancy?(&v24);
    __swift_destroy_boxed_opaque_existential_1(__dst);
    goto LABEL_21;
  }

  outlined init with take of HealthDataQuery(&v24, v29);
  __swift_project_boxed_opaque_existential_1(__dst, __dst[3]);
  dispatch thunk of AnyArrayContainer.anyArray.getter();
  type metadata accessor for NSNumber();
  if (!_arrayConditionalCast<A, B>(_:)())
  {

    __swift_destroy_boxed_opaque_existential_1(v29);
    __swift_destroy_boxed_opaque_existential_1(__dst);
    goto LABEL_21;
  }

  __swift_project_boxed_opaque_existential_1(v29, v29[3]);
  dispatch thunk of AnyArrayContainer.anyArray.getter();
  if (!_arrayConditionalCast<A, B>(_:)())
  {

    __swift_destroy_boxed_opaque_existential_1(v29);
    __swift_destroy_boxed_opaque_existential_1(__dst);
    goto LABEL_21;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8NSNumberCGMd, _sSaySo8NSNumberCGMR);
  v19 = lazy protocol witness table accessor for type [NSNumber] and conformance [A]();
  result = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(closure #1 in closure #5 in static HIDMorpheusExtensions.extendMorpheus(), 0, v17, MEMORY[0x277D83A90], MEMORY[0x277D84A98], v19, MEMORY[0x277D84AC0], v18);
  v20 = result;
  if (v22)
  {
    __break(1u);
    __break(1u);
  }

  else
  {
    v16 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(closure #1 in closure #5 in static HIDMorpheusExtensions.extendMorpheus(), 0, v17, MEMORY[0x277D83A90], MEMORY[0x277D84A98], v19, MEMORY[0x277D84AC0], v18);
    v12 = static AUC.precisionRecallCurve(outputs:labels:)(v20, v16);
    v13 = v3;
    v14 = v4;
    v15 = v5;
    _allocateUninitializedArray<A>(_:)();
    v10 = v6;

    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySfGMd, &_sSaySfGMR);
    v10[3] = v9;
    *v10 = v12;

    v10[7] = v9;
    v10[4] = v13;

    v10[11] = v9;
    v10[8] = v14;

    v10[15] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySiGMd, &_sSaySiGMR);
    v10[12] = v15;
    _finalizeUninitializedArray<A>(_:)();
    v11 = v7;

    a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayypGMd, &_sSayypGMR);
    *a2 = v11;

    __swift_destroy_boxed_opaque_existential_1(v29);
    return __swift_destroy_boxed_opaque_existential_1(__dst);
  }

  return result;
}

uint64_t closure #10 in static HIDMorpheusExtensions.extendMorpheus()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  __dst[5] = a1;
  v19 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("precision", 9uLL, 1);
  MEMORY[0x25F8891D0](v20);
  outlined destroy of DefaultStringInterpolation();
  if (v20[3])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s8Morpheus17AnyArrayContainer_pMd, &_s8Morpheus17AnyArrayContainer_pMR);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v21 = 0;
      v22 = 0;
      v23 = 0;
      v24 = 0;
      v25 = 0;
    }
  }

  else
  {
    outlined destroy of Pregnancy?(v20);
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
  }

  if (!v24)
  {
    outlined destroy of Pregnancy?(&v21);
LABEL_21:
    lazy protocol witness table accessor for type HIDPFLError and conformance HIDPFLError();
    swift_allocError();
    *v4 = 43;
    return swift_willThrow();
  }

  outlined init with take of HealthDataQuery(&v21, __dst);
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("recall", 6uLL, 1);
  MEMORY[0x25F8891D0](v12);
  outlined destroy of DefaultStringInterpolation();
  if (v12[3])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s8Morpheus17AnyArrayContainer_pMd, &_s8Morpheus17AnyArrayContainer_pMR);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
    }
  }

  else
  {
    outlined destroy of Pregnancy?(v12);
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
  }

  if (!v16)
  {
    outlined destroy of Pregnancy?(&v13);
    __swift_destroy_boxed_opaque_existential_1(__dst);
    goto LABEL_21;
  }

  outlined init with take of HealthDataQuery(&v13, v18);
  __swift_project_boxed_opaque_existential_1(__dst, __dst[3]);
  dispatch thunk of AnyArrayContainer.anyArray.getter();
  type metadata accessor for NSNumber();
  if (!_arrayConditionalCast<A, B>(_:)())
  {

    __swift_destroy_boxed_opaque_existential_1(v18);
    __swift_destroy_boxed_opaque_existential_1(__dst);
    goto LABEL_21;
  }

  __swift_project_boxed_opaque_existential_1(v18, v18[3]);
  dispatch thunk of AnyArrayContainer.anyArray.getter();
  if (!_arrayConditionalCast<A, B>(_:)())
  {

    __swift_destroy_boxed_opaque_existential_1(v18);
    __swift_destroy_boxed_opaque_existential_1(__dst);
    goto LABEL_21;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8NSNumberCGMd, _sSaySo8NSNumberCGMR);
  v8 = lazy protocol witness table accessor for type [NSNumber] and conformance [A]();
  result = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(closure #1 in closure #5 in static HIDMorpheusExtensions.extendMorpheus(), 0, v6, MEMORY[0x277D83A90], MEMORY[0x277D84A98], v8, MEMORY[0x277D84AC0], v7);
  v9 = result;
  if (v11)
  {
    __break(1u);
    __break(1u);
  }

  else
  {
    v5 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(closure #1 in closure #5 in static HIDMorpheusExtensions.extendMorpheus(), 0, v6, MEMORY[0x277D83A90], MEMORY[0x277D84A98], v8, MEMORY[0x277D84AC0], v7);
    static AUC.prAUCScore(precison:recall:)(v9, v5);
    *(a2 + 24) = MEMORY[0x277D83A90];
    *a2 = v3;

    __swift_destroy_boxed_opaque_existential_1(v18);
    return __swift_destroy_boxed_opaque_existential_1(__dst);
  }

  return result;
}

uint64_t closure #11 in static HIDMorpheusExtensions.extendMorpheus()@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v29 = 0;
  v28 = 0;
  __dst[5] = a1;
  v38 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("outputs", 7uLL, 1);
  MEMORY[0x25F8891D0](v39);
  outlined destroy of DefaultStringInterpolation();
  if (v39[3])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s8Morpheus17AnyArrayContainer_pMd, &_s8Morpheus17AnyArrayContainer_pMR);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v40 = 0;
      v41 = 0;
      v42 = 0;
      v43 = 0;
      v44 = 0;
    }
  }

  else
  {
    outlined destroy of Pregnancy?(v39);
    v40 = 0;
    v41 = 0;
    v42 = 0;
    v43 = 0;
    v44 = 0;
  }

  if (!v43)
  {
    outlined destroy of Pregnancy?(&v40);
LABEL_30:
    lazy protocol witness table accessor for type HIDPFLError and conformance HIDPFLError();
    swift_allocError();
    *v9 = 44;
    return swift_willThrow();
  }

  outlined init with take of HealthDataQuery(&v40, __dst);
  v30 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("labels", 6uLL, 1);
  MEMORY[0x25F8891D0](v31);
  outlined destroy of DefaultStringInterpolation();
  if (v31[3])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s8Morpheus17AnyArrayContainer_pMd, &_s8Morpheus17AnyArrayContainer_pMR);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v32 = 0;
      v33 = 0;
      v34 = 0;
      v35 = 0;
      v36 = 0;
    }
  }

  else
  {
    outlined destroy of Pregnancy?(v31);
    v32 = 0;
    v33 = 0;
    v34 = 0;
    v35 = 0;
    v36 = 0;
  }

  if (!v35)
  {
    outlined destroy of Pregnancy?(&v32);
    __swift_destroy_boxed_opaque_existential_1(__dst);
    goto LABEL_30;
  }

  outlined init with take of HealthDataQuery(&v32, v37);
  __swift_project_boxed_opaque_existential_1(__dst, __dst[3]);
  dispatch thunk of AnyArrayContainer.anyArray.getter();
  type metadata accessor for NSNumber();
  v23 = _arrayConditionalCast<A, B>(_:)();
  if (!v23)
  {

    __swift_destroy_boxed_opaque_existential_1(v37);
    __swift_destroy_boxed_opaque_existential_1(__dst);
    goto LABEL_30;
  }

  v29 = v23;

  __swift_project_boxed_opaque_existential_1(v37, v37[3]);
  dispatch thunk of AnyArrayContainer.anyArray.getter();
  v2 = _arrayConditionalCast<A, B>(_:)();
  if (!v2)
  {

    __swift_destroy_boxed_opaque_existential_1(v37);
    __swift_destroy_boxed_opaque_existential_1(__dst);
    goto LABEL_30;
  }

  v28 = v2;

  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("numThresholds", 0xDuLL, 1);
  MEMORY[0x25F8891D0](v27);
  outlined destroy of DefaultStringInterpolation();
  if (v27[3])
  {
    if (swift_dynamicCast())
    {
      v21 = v26;
    }

    else
    {
      v21 = 0;
    }

    v22 = v21;
  }

  else
  {
    outlined destroy of Pregnancy?(v27);
    v22 = 0;
  }

  if (!v22)
  {

    __swift_destroy_boxed_opaque_existential_1(v37);
    __swift_destroy_boxed_opaque_existential_1(__dst);
    goto LABEL_30;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8NSNumberCGMd, _sSaySo8NSNumberCGMR);
  v19 = lazy protocol witness table accessor for type [NSNumber] and conformance [A]();
  result = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(closure #1 in closure #5 in static HIDMorpheusExtensions.extendMorpheus(), 0, v17, MEMORY[0x277D83A90], MEMORY[0x277D84A98], v19, MEMORY[0x277D84AC0], v18);
  v20 = result;
  if (v25)
  {
    __break(1u);
    __break(1u);
  }

  else
  {
    v16 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(closure #1 in closure #5 in static HIDMorpheusExtensions.extendMorpheus(), 0, v17, MEMORY[0x277D83A90], MEMORY[0x277D84A98], v19, MEMORY[0x277D84AC0], v18);
    v12 = static AUC.bucketConfusionMatrix(outputs:labels:numThresholds:)(v20, v16, [v22 integerValue]);
    v13 = v4;
    v14 = v5;
    v15 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySfGMd, &_sSaySfGMR);
    _allocateUninitializedArray<A>(_:)();
    v10 = v7;

    *v10 = v12;

    v10[1] = v13;

    v10[2] = v14;

    v10[3] = v15;
    _finalizeUninitializedArray<A>(_:)();
    v11 = v8;

    a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySaySfGGMd, &_sSaySaySfGGMR);
    *a2 = v11;

    MEMORY[0x277D82BD8](v22);

    __swift_destroy_boxed_opaque_existential_1(v37);
    return __swift_destroy_boxed_opaque_existential_1(__dst);
  }

  return result;
}

uint64_t closure #12 in static HIDMorpheusExtensions.extendMorpheus()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v21 = 0;
  v20 = 0;
  __dst[5] = a1;
  v30 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("tpr", 3uLL, 1);
  MEMORY[0x25F8891D0](v31);
  outlined destroy of DefaultStringInterpolation();
  if (v31[3])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s8Morpheus17AnyArrayContainer_pMd, &_s8Morpheus17AnyArrayContainer_pMR);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v32 = 0;
      v33 = 0;
      v34 = 0;
      v35 = 0;
      v36 = 0;
    }
  }

  else
  {
    outlined destroy of Pregnancy?(v31);
    v32 = 0;
    v33 = 0;
    v34 = 0;
    v35 = 0;
    v36 = 0;
  }

  if (!v35)
  {
    outlined destroy of Pregnancy?(&v32);
LABEL_31:
    lazy protocol witness table accessor for type HIDPFLError and conformance HIDPFLError();
    v6 = swift_allocError();
    *v5 = 45;
    swift_willThrow();
    return v6;
  }

  outlined init with take of HealthDataQuery(&v32, __dst);
  v22 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("fpr", 3uLL, 1);
  MEMORY[0x25F8891D0](v23);
  outlined destroy of DefaultStringInterpolation();
  if (v23[3])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s8Morpheus17AnyArrayContainer_pMd, &_s8Morpheus17AnyArrayContainer_pMR);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v24 = 0;
      v25 = 0;
      v26 = 0;
      v27 = 0;
      v28 = 0;
    }
  }

  else
  {
    outlined destroy of Pregnancy?(v23);
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v27 = 0;
    v28 = 0;
  }

  if (!v27)
  {
    outlined destroy of Pregnancy?(&v24);
    __swift_destroy_boxed_opaque_existential_1(__dst);
    goto LABEL_31;
  }

  outlined init with take of HealthDataQuery(&v24, v29);
  __swift_project_boxed_opaque_existential_1(__dst, __dst[3]);
  dispatch thunk of AnyArrayContainer.anyArray.getter();
  type metadata accessor for NSNumber();
  v15 = _arrayConditionalCast<A, B>(_:)();
  if (!v15)
  {

    __swift_destroy_boxed_opaque_existential_1(v29);
    __swift_destroy_boxed_opaque_existential_1(__dst);
    goto LABEL_31;
  }

  v21 = v15;

  __swift_project_boxed_opaque_existential_1(v29, v29[3]);
  dispatch thunk of AnyArrayContainer.anyArray.getter();
  v2 = _arrayConditionalCast<A, B>(_:)();
  if (!v2)
  {

    __swift_destroy_boxed_opaque_existential_1(v29);
    __swift_destroy_boxed_opaque_existential_1(__dst);
    goto LABEL_31;
  }

  v20 = v2;

  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("targetFPR", 9uLL, 1);
  MEMORY[0x25F8891D0](v19);
  outlined destroy of DefaultStringInterpolation();
  if (v19[3])
  {
    if (swift_dynamicCast())
    {
      v13 = v18;
    }

    else
    {
      v13 = 0;
    }

    v14 = v13;
  }

  else
  {
    outlined destroy of Pregnancy?(v19);
    v14 = 0;
  }

  if (!v14)
  {

    __swift_destroy_boxed_opaque_existential_1(v29);
    __swift_destroy_boxed_opaque_existential_1(__dst);
    goto LABEL_31;
  }

  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8NSNumberCGMd, _sSaySo8NSNumberCGMR);
  v11 = lazy protocol witness table accessor for type [NSNumber] and conformance [A]();
  v12 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(closure #1 in closure #5 in static HIDMorpheusExtensions.extendMorpheus(), 0, v9, MEMORY[0x277D83A90], MEMORY[0x277D84A98], v11, MEMORY[0x277D84AC0], v10);
  if (v17)
  {
    __break(1u);
    __break(1u);
  }

  else
  {
    v8 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(closure #1 in closure #5 in static HIDMorpheusExtensions.extendMorpheus(), 0, v9, MEMORY[0x277D83A90], MEMORY[0x277D84A98], v11, MEMORY[0x277D84AC0], v10);
    [v14 floatValue];
    v7 = static AUC.tpr(at:tpr:fpr:)(v12, v8, v3);
    *(a2 + 24) = MEMORY[0x277D83A90];
    *a2 = v7;
  }

  MEMORY[0x277D82BD8](v14);

  __swift_destroy_boxed_opaque_existential_1(v29);
  return __swift_destroy_boxed_opaque_existential_1(__dst);
}

uint64_t closure #13 in static HIDMorpheusExtensions.extendMorpheus()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v21 = 0;
  v20 = 0;
  __dst[5] = a1;
  v30 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("precision", 9uLL, 1);
  MEMORY[0x25F8891D0](v31);
  outlined destroy of DefaultStringInterpolation();
  if (v31[3])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s8Morpheus17AnyArrayContainer_pMd, &_s8Morpheus17AnyArrayContainer_pMR);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v32 = 0;
      v33 = 0;
      v34 = 0;
      v35 = 0;
      v36 = 0;
    }
  }

  else
  {
    outlined destroy of Pregnancy?(v31);
    v32 = 0;
    v33 = 0;
    v34 = 0;
    v35 = 0;
    v36 = 0;
  }

  if (!v35)
  {
    outlined destroy of Pregnancy?(&v32);
LABEL_31:
    lazy protocol witness table accessor for type HIDPFLError and conformance HIDPFLError();
    v6 = swift_allocError();
    *v5 = 46;
    swift_willThrow();
    return v6;
  }

  outlined init with take of HealthDataQuery(&v32, __dst);
  v22 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("fpr", 3uLL, 1);
  MEMORY[0x25F8891D0](v23);
  outlined destroy of DefaultStringInterpolation();
  if (v23[3])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s8Morpheus17AnyArrayContainer_pMd, &_s8Morpheus17AnyArrayContainer_pMR);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v24 = 0;
      v25 = 0;
      v26 = 0;
      v27 = 0;
      v28 = 0;
    }
  }

  else
  {
    outlined destroy of Pregnancy?(v23);
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v27 = 0;
    v28 = 0;
  }

  if (!v27)
  {
    outlined destroy of Pregnancy?(&v24);
    __swift_destroy_boxed_opaque_existential_1(__dst);
    goto LABEL_31;
  }

  outlined init with take of HealthDataQuery(&v24, v29);
  __swift_project_boxed_opaque_existential_1(__dst, __dst[3]);
  dispatch thunk of AnyArrayContainer.anyArray.getter();
  type metadata accessor for NSNumber();
  v15 = _arrayConditionalCast<A, B>(_:)();
  if (!v15)
  {

    __swift_destroy_boxed_opaque_existential_1(v29);
    __swift_destroy_boxed_opaque_existential_1(__dst);
    goto LABEL_31;
  }

  v21 = v15;

  __swift_project_boxed_opaque_existential_1(v29, v29[3]);
  dispatch thunk of AnyArrayContainer.anyArray.getter();
  v2 = _arrayConditionalCast<A, B>(_:)();
  if (!v2)
  {

    __swift_destroy_boxed_opaque_existential_1(v29);
    __swift_destroy_boxed_opaque_existential_1(__dst);
    goto LABEL_31;
  }

  v20 = v2;

  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("targetFPR", 9uLL, 1);
  MEMORY[0x25F8891D0](v19);
  outlined destroy of DefaultStringInterpolation();
  if (v19[3])
  {
    if (swift_dynamicCast())
    {
      v13 = v18;
    }

    else
    {
      v13 = 0;
    }

    v14 = v13;
  }

  else
  {
    outlined destroy of Pregnancy?(v19);
    v14 = 0;
  }

  if (!v14)
  {

    __swift_destroy_boxed_opaque_existential_1(v29);
    __swift_destroy_boxed_opaque_existential_1(__dst);
    goto LABEL_31;
  }

  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8NSNumberCGMd, _sSaySo8NSNumberCGMR);
  v11 = lazy protocol witness table accessor for type [NSNumber] and conformance [A]();
  v12 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(closure #1 in closure #5 in static HIDMorpheusExtensions.extendMorpheus(), 0, v9, MEMORY[0x277D83A90], MEMORY[0x277D84A98], v11, MEMORY[0x277D84AC0], v10);
  if (v17)
  {
    __break(1u);
    __break(1u);
  }

  else
  {
    v8 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(closure #1 in closure #5 in static HIDMorpheusExtensions.extendMorpheus(), 0, v9, MEMORY[0x277D83A90], MEMORY[0x277D84A98], v11, MEMORY[0x277D84AC0], v10);
    [v14 floatValue];
    v7 = static AUC.tpr(at:tpr:fpr:)(v12, v8, v3);
    *(a2 + 24) = MEMORY[0x277D83A90];
    *a2 = v7;
  }

  MEMORY[0x277D82BD8](v14);

  __swift_destroy_boxed_opaque_existential_1(v29);
  return __swift_destroy_boxed_opaque_existential_1(__dst);
}

uint64_t closure #14 in static HIDMorpheusExtensions.extendMorpheus()@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v51 = a2;
  v59 = a1;
  v53 = closure #1 in closure #5 in static HIDMorpheusExtensions.extendMorpheus();
  v84 = 0;
  v73 = 0;
  v69 = 0;
  v70 = 0;
  v67 = 0;
  v63 = 0;
  v64 = 0;
  v54 = type metadata accessor for PFLStats.StdMethod();
  v55 = *(v54 - 8);
  v56 = v54 - 8;
  v57 = (*(v55 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v58 = &v19 - v57;
  v84 = MEMORY[0x28223BE20](v59, v2);
  v3 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("array", 5uLL, 1);
  v60 = &v74;
  v74 = v3;
  MEMORY[0x25F8891D0](v75);
  outlined destroy of DefaultStringInterpolation();
  if (v75[3])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s8Morpheus17AnyArrayContainer_pMd, &_s8Morpheus17AnyArrayContainer_pMR);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v76 = 0;
      v77 = 0;
      v78 = 0;
      v79 = 0;
      v80 = 0;
    }
  }

  else
  {
    outlined destroy of Pregnancy?(v75);
    v76 = 0;
    v77 = 0;
    v78 = 0;
    v79 = 0;
    v80 = 0;
  }

  if (!v79)
  {
    outlined destroy of Pregnancy?(&v76);
LABEL_24:
    lazy protocol witness table accessor for type HIDPFLError and conformance HIDPFLError();
    v19 = swift_allocError();
    *v18 = 46;
    return swift_willThrow();
  }

  v46 = __dst;
  outlined init with take of HealthDataQuery(&v76, __dst);
  v48 = v82;
  v47 = v83;
  __swift_project_boxed_opaque_existential_1(v46, v82);
  v49 = dispatch thunk of AnyArrayContainer.anyArray.getter();
  type metadata accessor for NSNumber();
  v50 = _arrayConditionalCast<A, B>(_:)();
  if (!v50 || ((v45 = v50, v43 = v50, v73 = v50, , v4 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("method", 6uLL, 1), v44 = &v71, v71 = v4, MEMORY[0x25F8891D0](v72), outlined destroy of DefaultStringInterpolation(), v72[3]) ? ((swift_dynamicCast() & 1) == 0 ? (v39 = 0, v40 = 0) : (v39 = v61, v40 = v62), v41 = v39, v42 = v40) : (outlined destroy of Pregnancy?(v72), v41 = 0, v42 = 0), v37 = v42, v38 = v41, !v42))
  {

    __swift_destroy_boxed_opaque_existential_1(__dst);
    goto LABEL_24;
  }

  v35 = v38;
  v36 = v37;
  v29 = v37;
  v30 = v38;
  v69 = v38;
  v70 = v37;
  v68 = v43;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8NSNumberCGMd, _sSaySo8NSNumberCGMR);
  v5 = lazy protocol witness table accessor for type [NSNumber] and conformance [A]();
  v6 = v52;
  result = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(v53, 0, v31, MEMORY[0x277D83A90], MEMORY[0x277D84A98], v5, MEMORY[0x277D84AC0], v32);
  v33 = v6;
  v34 = result;
  if (v6)
  {
    __break(1u);
  }

  else
  {
    v26 = v34;
    v67 = v34;
    v8 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("population", 0xAuLL, 1);
    object = v8._object;
    v28 = MEMORY[0x25F889340](v30, v29, v8._countAndFlagsBits);

    if (v28)
    {
      (*(v55 + 104))(v58, *MEMORY[0x277D41408], v54);
    }

    else
    {
      (*(v55 + 104))(v58, *MEMORY[0x277D41410], v54);
    }

    v65 = static PFLStats.meanAndStd(_:_:)();
    v66 = v9;
    v20 = v65;
    v21 = BYTE4(v65);
    v22 = v9;
    (*(v55 + 8))(v58, v54);
    LODWORD(v63) = v20;
    v23 = 1;
    BYTE4(v63) = v21 & 1;
    v64 = v22;
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSfSgMd, &_sSfSgMR);
    _allocateUninitializedArray<A>(_:)();
    v10 = v21;
    v11 = v22;
    v12 = v23;
    *v13 = v20;
    *(v13 + 4) = v10 & 1 & v12;
    *(v13 + 8) = v11;
    *(v13 + 12) = 0;
    _finalizeUninitializedArray<A>(_:)();
    v25 = v14;
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySfSgGMd, &_sSaySfSgGMR);
    v16 = v25;
    v17 = v51;
    v51[3] = v15;
    *v17 = v16;

    return __swift_destroy_boxed_opaque_existential_1(__dst);
  }

  return result;
}

uint64_t closure #15 in static HIDMorpheusExtensions.extendMorpheus()@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v100 = 0;
  v97 = 0;
  v89 = 0;
  v81 = 0;
  v78 = 0;
  v70 = 0;
  v67 = 0;
  v64 = 0;
  v102[4] = a1;
  v101 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("task", 4uLL, 1);
  MEMORY[0x25F8891D0](v102);
  outlined destroy of DefaultStringInterpolation();
  if (v102[3])
  {
    type metadata accessor for PFLTask();
    if (swift_dynamicCast())
    {
      v52 = v56;
    }

    else
    {
      v52 = 0;
    }

    v53 = v52;
  }

  else
  {
    outlined destroy of Pregnancy?(v102);
    v53 = 0;
  }

  if (!v53)
  {
    goto LABEL_113;
  }

  v100 = v53;
  v98 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("hyperParams", 0xBuLL, 1);
  MEMORY[0x25F8891D0](v99);
  outlined destroy of DefaultStringInterpolation();
  if (v99[3])
  {
    type metadata accessor for HyperParams();
    if (swift_dynamicCast())
    {
      v50 = v57;
    }

    else
    {
      v50 = 0;
    }

    v51 = v50;
  }

  else
  {
    outlined destroy of Pregnancy?(v99);
    v51 = 0;
  }

  if (!v51)
  {

LABEL_113:
    lazy protocol witness table accessor for type HIDPFLError and conformance HIDPFLError();
    v7 = swift_allocError();
    *v6 = 46;
    swift_willThrow();
    return v7;
  }

  v97 = v51;
  v90 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("outputs", 7uLL, 1);
  MEMORY[0x25F8891D0](v91);
  outlined destroy of DefaultStringInterpolation();
  if (v91[3])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s8Morpheus17AnyArrayContainer_pMd, &_s8Morpheus17AnyArrayContainer_pMR);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v92 = 0;
      v93 = 0;
      v94 = 0;
      v95 = 0;
      v96 = 0;
    }
  }

  else
  {
    outlined destroy of Pregnancy?(v91);
    v92 = 0;
    v93 = 0;
    v94 = 0;
    v95 = 0;
    v96 = 0;
  }

  if (v95)
  {
    __swift_project_boxed_opaque_existential_1(&v92, v95);
    v48 = dispatch thunk of AnyArrayContainer.anyArray.getter();
    __swift_destroy_boxed_opaque_existential_1(&v92);
    v49 = v48;
  }

  else
  {
    outlined destroy of Pregnancy?(&v92);
    v49 = 0;
  }

  if (v49)
  {
    type metadata accessor for NSNumber();
    v46 = _arrayConditionalCast<A, B>(_:)();

    v47 = v46;
  }

  else
  {
    v47 = 0;
  }

  if (v47)
  {
    KeyPath = swift_getKeyPath();

    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8NSNumberCGMd, _sSaySo8NSNumberCGMR);
    v2 = lazy protocol witness table accessor for type [NSNumber] and conformance [A]();
    v43 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for implicit closure #1 in NightingaleDPFLRunner.runTraining(task:modelPath:hyperParams:historicalPeriods:pregnancies:today:features:existingMetrics:), KeyPath, v41, MEMORY[0x277D83A90], MEMORY[0x277D84A98], v2, MEMORY[0x277D84AC0], v42);
    if (v55)
    {

      __break(1u);
      goto LABEL_115;
    }

    outlined destroy of [(start: UInt32, end: UInt32)]();
    v44 = v43;
    v45 = 0;
  }

  else
  {
    v44 = 0;
    v45 = v55;
  }

  if (!v44)
  {

    goto LABEL_113;
  }

  v89 = v44;
  v82 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("labels", 6uLL, 1);
  MEMORY[0x25F8891D0](v83);
  outlined destroy of DefaultStringInterpolation();
  if (v83[3])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s8Morpheus17AnyArrayContainer_pMd, &_s8Morpheus17AnyArrayContainer_pMR);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v84 = 0;
      v85 = 0;
      v86 = 0;
      v87 = 0;
      v88 = 0;
    }
  }

  else
  {
    outlined destroy of Pregnancy?(v83);
    v84 = 0;
    v85 = 0;
    v86 = 0;
    v87 = 0;
    v88 = 0;
  }

  if (v87)
  {
    __swift_project_boxed_opaque_existential_1(&v84, v87);
    v38 = dispatch thunk of AnyArrayContainer.anyArray.getter();
    __swift_destroy_boxed_opaque_existential_1(&v84);
    v39 = v38;
  }

  else
  {
    outlined destroy of Pregnancy?(&v84);
    v39 = 0;
  }

  if (v39)
  {
    type metadata accessor for NSNumber();
    v36 = _arrayConditionalCast<A, B>(_:)();

    v37 = v36;
  }

  else
  {
    v37 = 0;
  }

  if (!v37)
  {
    v34 = 0;
    v35 = v45;
    goto LABEL_52;
  }

  v31 = swift_getKeyPath();

  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8NSNumberCGMd, _sSaySo8NSNumberCGMR);
  v3 = lazy protocol witness table accessor for type [NSNumber] and conformance [A]();
  v33 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for implicit closure #1 in NightingaleDPFLRunner.runTraining(task:modelPath:hyperParams:historicalPeriods:pregnancies:today:features:existingMetrics:), v31, v32, MEMORY[0x277D83A90], MEMORY[0x277D84A98], v3, MEMORY[0x277D84AC0], v42);
  if (v45)
  {
LABEL_115:

    __break(1u);
    goto LABEL_116;
  }

  outlined destroy of [(start: UInt32, end: UInt32)]();
  v34 = v33;
  v35 = 0;
LABEL_52:
  if (!v34)
  {

    goto LABEL_113;
  }

  v81 = v34;
  v79 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("historicalPeriods", 0x11uLL, 1);
  MEMORY[0x25F8891D0](v80);
  outlined destroy of DefaultStringInterpolation();
  if (v80[3])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays6UInt32V5start_AB3endtGMd, &_sSays6UInt32V5start_AB3endtGMR);
    if (swift_dynamicCast())
    {
      v29 = v58;
    }

    else
    {
      v29 = 0;
    }

    v30 = v29;
  }

  else
  {
    outlined destroy of Pregnancy?(v80);
    v30 = 0;
  }

  if (!v30)
  {

    goto LABEL_113;
  }

  v78 = v30;
  v71 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("sliceEndDays", 0xCuLL, 1);
  MEMORY[0x25F8891D0](v72);
  outlined destroy of DefaultStringInterpolation();
  if (v72[3])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s8Morpheus17AnyArrayContainer_pMd, &_s8Morpheus17AnyArrayContainer_pMR);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v73 = 0;
      v74 = 0;
      v75 = 0;
      v76 = 0;
      v77 = 0;
    }
  }

  else
  {
    outlined destroy of Pregnancy?(v72);
    v73 = 0;
    v74 = 0;
    v75 = 0;
    v76 = 0;
    v77 = 0;
  }

  if (v76)
  {
    __swift_project_boxed_opaque_existential_1(&v73, v76);
    v27 = dispatch thunk of AnyArrayContainer.anyArray.getter();
    __swift_destroy_boxed_opaque_existential_1(&v73);
    v28 = v27;
  }

  else
  {
    outlined destroy of Pregnancy?(&v73);
    v28 = 0;
  }

  if (v28)
  {
    type metadata accessor for NSNumber();
    v25 = _arrayConditionalCast<A, B>(_:)();

    v26 = v25;
  }

  else
  {
    v26 = 0;
  }

  if (!v26)
  {
    v23 = 0;
    v24 = v35;
    goto LABEL_79;
  }

  v20 = swift_getKeyPath();

  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8NSNumberCGMd, _sSaySo8NSNumberCGMR);
  v4 = lazy protocol witness table accessor for type [NSNumber] and conformance [A]();
  v22 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for implicit closure #1 in NightingaleDPFLRunner.runTraining(task:modelPath:hyperParams:historicalPeriods:pregnancies:today:features:existingMetrics:), v20, v21, MEMORY[0x277D84CC0], MEMORY[0x277D84A98], v4, MEMORY[0x277D84AC0], v42);
  if (v35)
  {
LABEL_116:

    __break(1u);
    goto LABEL_117;
  }

  outlined destroy of [(start: UInt32, end: UInt32)]();
  v23 = v22;
  v24 = 0;
LABEL_79:
  if (!v23)
  {

    goto LABEL_113;
  }

  v70 = v23;
  v68 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("pregnancies", 0xBuLL, 1);
  MEMORY[0x25F8891D0](v69);
  outlined destroy of DefaultStringInterpolation();
  if (v69[3])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay19NightingaleTraining9Pregnancy_pGMd, &_sSay19NightingaleTraining9Pregnancy_pGMR);
    if (swift_dynamicCast())
    {
      v18 = v59;
    }

    else
    {
      v18 = 0;
    }

    v19 = v18;
  }

  else
  {
    outlined destroy of Pregnancy?(v69);
    v19 = 0;
  }

  if (!v19)
  {

    goto LABEL_113;
  }

  v67 = v19;
  v65 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("today", 5uLL, 1);
  MEMORY[0x25F8891D0](v66);
  outlined destroy of DefaultStringInterpolation();
  if (v66[3])
  {
    type metadata accessor for NSNumber();
    if (swift_dynamicCast())
    {
      v16 = v60;
    }

    else
    {
      v16 = 0;
    }

    v17 = v16;
  }

  else
  {
    outlined destroy of Pregnancy?(v66);
    v17 = 0;
  }

  if (v17)
  {
    v13 = [v17 unsignedIntValue];
    MEMORY[0x277D82BD8](v17);
    v14 = v13;
    v15 = 0;
  }

  else
  {
    v14 = 0;
    v15 = 1;
  }

  if (v15)
  {

    goto LABEL_113;
  }

  v64 = v14;
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("metricPrefix", 0xCuLL, 1);
  MEMORY[0x25F8891D0](v63);
  outlined destroy of DefaultStringInterpolation();
  if (v63[3])
  {
    if (swift_dynamicCast())
    {
      v9 = v61;
      v10 = v62;
    }

    else
    {
      v9 = 0;
      v10 = 0;
    }

    v11 = v9;
    v12 = v10;
  }

  else
  {
    outlined destroy of Pregnancy?(v63);
    v11 = 0;
    v12 = 0;
  }

  if (!v12)
  {

    goto LABEL_113;
  }

  v8 = static NightingaleDMetricsProcessor.generateMetrics(task:hyperParams:outputs:labels:historicalPeriods:sliceEndDays:pregnancies:today:metricPrefix:)(v53, v51, v44, v34, v30, v23, v19, v14, v11, v12);
  if (!v24)
  {
    a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd, _sSDySSypGMR);
    *a2 = v8;
  }

LABEL_117:
}

uint64_t closure #16 in static HIDMorpheusExtensions.extendMorpheus()@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v32 = 0;
  v24 = 0;
  v23 = 0;
  v22[0] = 0;
  v40 = a1;
  v33 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("minuend", 7uLL, 1);
  MEMORY[0x25F8891D0](v34);
  outlined destroy of DefaultStringInterpolation();
  if (v34[3])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s8Morpheus17AnyArrayContainer_pMd, &_s8Morpheus17AnyArrayContainer_pMR);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v35 = 0;
      v36 = 0;
      v37 = 0;
      v38 = 0;
      v39 = 0;
    }
  }

  else
  {
    outlined destroy of Pregnancy?(v34);
    v35 = 0;
    v36 = 0;
    v37 = 0;
    v38 = 0;
    v39 = 0;
  }

  if (v38)
  {
    __swift_project_boxed_opaque_existential_1(&v35, v38);
    v18 = dispatch thunk of AnyArrayContainer.anyArray.getter();
    __swift_destroy_boxed_opaque_existential_1(&v35);
    v19 = v18;
  }

  else
  {
    outlined destroy of Pregnancy?(&v35);
    v19 = 0;
  }

  if (v19)
  {
    type metadata accessor for NSNumber();
    v16 = _arrayConditionalCast<A, B>(_:)();

    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  if (!v17)
  {
    goto LABEL_29;
  }

  v32 = v17;
  v25 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("subtrahend", 0xAuLL, 1);
  MEMORY[0x25F8891D0](v26);
  outlined destroy of DefaultStringInterpolation();
  if (v26[3])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s8Morpheus17AnyArrayContainer_pMd, &_s8Morpheus17AnyArrayContainer_pMR);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v27 = 0;
      v28 = 0;
      v29 = 0;
      v30 = 0;
      v31 = 0;
    }
  }

  else
  {
    outlined destroy of Pregnancy?(v26);
    v27 = 0;
    v28 = 0;
    v29 = 0;
    v30 = 0;
    v31 = 0;
  }

  if (v30)
  {
    __swift_project_boxed_opaque_existential_1(&v27, v30);
    v14 = dispatch thunk of AnyArrayContainer.anyArray.getter();
    __swift_destroy_boxed_opaque_existential_1(&v27);
    v15 = v14;
  }

  else
  {
    outlined destroy of Pregnancy?(&v27);
    v15 = 0;
  }

  if (v15)
  {
    type metadata accessor for NSNumber();
    v12 = _arrayConditionalCast<A, B>(_:)();

    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (!v13)
  {

LABEL_29:
    lazy protocol witness table accessor for type HIDPFLError and conformance HIDPFLError();
    swift_allocError();
    *v3 = 46;
    return swift_willThrow();
  }

  v24 = v13;
  v22[1] = v17;
  KeyPath = swift_getKeyPath();

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8NSNumberCGMd, _sSaySo8NSNumberCGMR);
  v10 = lazy protocol witness table accessor for type [NSNumber] and conformance [A]();
  v11 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for implicit closure #1 in NightingaleDPFLRunner.runTraining(task:modelPath:hyperParams:historicalPeriods:pregnancies:today:features:existingMetrics:), KeyPath, v8, MEMORY[0x277D83A90], MEMORY[0x277D84A98], v10, MEMORY[0x277D84AC0], v9);

  if (v21)
  {
    __break(1u);

    __break(1u);
  }

  else
  {

    v23 = v11;
    v5 = swift_getKeyPath();

    v6 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for implicit closure #1 in NightingaleDPFLRunner.runTraining(task:modelPath:hyperParams:historicalPeriods:pregnancies:today:features:existingMetrics:), v5, v8, MEMORY[0x277D83A90], MEMORY[0x277D84A98], v10, MEMORY[0x277D84AC0], v9);

    v22[0] = v6;
    static HIDPFLUtils.inplaceSub(_:_:)(&v23, v22);
    v4 = v23;

    a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySfGMd, &_sSaySfGMR);
    *a2 = v4;
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
  }

  return result;
}

uint64_t default argument 1 of Function.init(name:arguments:attrs:body:)()
{
  _sSa22_allocateUninitializedySayxG_SpyxGtSiFZSS_Tt0gq5(0);
  _sSa22_allocateUninitializedySayxG_SpyxGtSiFZSS_Tt0gq5(0);
  _sSa22_allocateUninitializedySayxG_SpyxGtSiFZSS_Tt0gq5(0);
  _sSa22_allocateUninitializedySayxG_SpyxGtSiFZypSg_Tt0gq5(0);
  _sSa22_allocateUninitializedySayxG_SpyxGtSiFZypSg_Tt0gq5(0);
  return Arguments.init(args:posonlyargs:kwonlyargs:kwDefaults:defaults:vaargs:kwargs:)();
}

unint64_t lazy protocol witness table accessor for type ShuffleMethod and conformance ShuffleMethod()
{
  v2 = lazy protocol witness table cache variable for type ShuffleMethod and conformance ShuffleMethod;
  if (!lazy protocol witness table cache variable for type ShuffleMethod and conformance ShuffleMethod)
  {
    type metadata accessor for ShuffleMethod();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type ShuffleMethod and conformance ShuffleMethod);
    return WitnessTable;
  }

  return v2;
}

void *outlined init with copy of B?(const void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a3 - 8);
  if ((*(v9 + 48))(a1, 1))
  {
    memcpy(a2, a1, *(*(a4 - 8) + 64));
  }

  else
  {
    (*(v9 + 16))(a2, a1, a3);
    (*(v9 + 56))(a2, 0, 1, a3);
  }

  return a2;
}

uint64_t outlined destroy of B?(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 - 8);
  if (!(*(v5 + 48))(a1, 1))
  {
    (*(v5 + 8))(a1, a2);
  }

  return a1;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for Cycle(uint64_t a1, int a2)
{
  if (a2)
  {
    if (*(a1 + 16))
    {
      v3 = *a1;
    }

    else
    {
      v3 = -1;
    }
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t storeEnumTagSinglePayload for Cycle(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    if (a3)
    {
      *(result + 16) = 1;
    }
  }

  else if (a3)
  {
    *(result + 16) = 0;
  }

  return result;
}

uint64_t static String._createEmpty(withInitialCapacity:)(Swift::Int a1)
{

  if (a1 > 15)
  {
    _StringGuts.grow(_:)(a1);
  }

  return 0;
}

uint64_t _sSa22_allocateUninitializedySayxG_SpyxGtSiFZSS_Tt0gq5(uint64_t result)
{
  v3 = result;
  if (result < 0)
  {
    __break(1u);
  }

  else
  {

    if (v3 <= 0)
    {
      return MEMORY[0x277D84F90];
    }

    v1 = static Array._allocateBufferUninitialized(minimumCapacity:)();

    *(v1 + 16) = v3;

    return v1;
  }

  return result;
}

uint64_t _sSa22_allocateUninitializedySayxG_SpyxGtSiFZypSg_Tt0gq5(uint64_t result)
{
  v3 = result;
  if (result < 0)
  {
    __break(1u);
  }

  else
  {

    if (v3 <= 0)
    {
      return MEMORY[0x277D84F90];
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
    v1 = static Array._allocateBufferUninitialized(minimumCapacity:)();

    *(v1 + 16) = v3;

    return v1;
  }

  return result;
}

uint64_t _sSa22_allocateUninitializedySayxG_SpyxGtSiFZSS_ypt_Tt0gq5(uint64_t result)
{
  v3 = result;
  if (result < 0)
  {
    __break(1u);
  }

  else
  {

    if (v3 <= 0)
    {
      return MEMORY[0x277D84F90];
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd, &_sSS_yptMR);
    v1 = static Array._allocateBufferUninitialized(minimumCapacity:)();

    *(v1 + 16) = v3;

    return v1;
  }

  return result;
}

void _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0gq5(uint64_t a1, __n128 a2)
{
  if (specialized Array.count.getter(a1, a2))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd, &_ss18_DictionaryStorageCySSypGMR);
    v13 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v12 = MEMORY[0x277D84F98];

    v13 = v12;
  }

  v11 = specialized Array._getCount()(a1);
  if (v11)
  {
    if (v11 <= 0)
    {
      __break(1u);
    }

    else
    {
      for (i = 0; ; ++i)
      {
        IsNativeType = specialized Array._hoistableIsNativeTypeChecked()();
        specialized Array._getElement(_:wasNativeTypeChecked:matchingSubscriptCheck:)(i, IsNativeType & 1, a1, &v15);
        v9 = specialized __RawDictionaryStorage.find<A>(_:)(v15, v16);
        if (v3)
        {
          break;
        }

        v13[v9 / 0x40 + 8] |= 1 << ((v9 % 0x40) & 0x3F);
        v4 = (v13[6] + 16 * v9);
        v5 = v16;
        *v4 = v15;
        v4[1] = v5;
        outlined init with take of Any(&v17, v13[7] + 32 * v9);
        v6 = v13[2];
        v8 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          goto LABEL_18;
        }

        v13[2] = v8;
        if (i + 1 == v11)
        {

          return;
        }
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
  }

  else
  {
  }
}

void *specialized Array._getElement(_:wasNativeTypeChecked:matchingSubscriptCheck:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  if (a2)
  {
    return outlined init with copy of (String, Any)((a3 + 32 + 48 * a1), a4);
  }

  result = specialized _ArrayBuffer._getElementSlowPath(_:)(a1, a3);
  __break(1u);
  return result;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  memcpy(__dst, v7, sizeof(__dst));
  String.hash(into:)();
  v2 = Hasher._finalize()();
  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, a2, v2);
}

__n128 outlined init with take of Any(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  result = *(a1 + 16);
  *(a2 + 16) = result;
  return result;
}

uint64_t specialized _ArrayBuffer._getElementSlowPath(_:)(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (result >= *(a2 + 16))
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v7 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x20 + 8 * result);
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v11 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd, &_sSS_yptMR);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v8 = static String._createEmpty(withInitialCapacity:)(82);
    v9 = v2;
    countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Down-casted Array element failed to match the target type\nExpected ", 0x43uLL, 1)._countAndFlagsBits;
    MEMORY[0x25F889370](countAndFlagsBits);

    v4 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("(String, Any)", 0xDuLL, 1)._countAndFlagsBits;
    MEMORY[0x25F889370](v4);

    v5 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" but found ", 0xBuLL, 1)._countAndFlagsBits;
    MEMORY[0x25F889370](v5);

    swift_getObjectType();
    v6 = _typeName(_:qualified:)();
    MEMORY[0x25F889370](v6);

    MEMORY[0x25F889320](v8, v9);
    _assertionFailure(_:_:flags:)();
    __break(1u);
  }

  outlined destroy of (String, Any)(v10);
  return v7;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13 = (1 << (*(v3 + 32) & 0x3F)) - 1;
  for (i = a3 & v13; (*(v12 + 64 + 8 * (i / 0x40)) & (1 << ((i % 0x40) & 0x3F))) != 0; i = (i + 1) & v13)
  {
    v4 = (*(v12 + 48) + 16 * i);
    v7 = *v4;
    v8 = v4[1];

    v9 = MEMORY[0x25F889340](v7, v8, a1, a2);

    if (v9)
    {
      return i;
    }
  }

  return i;
}

void *outlined init with copy of (String, Any)(void *a1, void *a2)
{
  *a2 = *a1;
  v4 = a1[1];

  a2[1] = v4;
  v2 = a1[5];
  a2[5] = v2;
  (**(v2 - 8))(a2 + 2, a1 + 2);
  return a2;
}

uint64_t outlined destroy of (String, Any)(uint64_t a1)
{

  __swift_destroy_boxed_opaque_existential_1((a1 + 16));
  return a1;
}

uint64_t static MetricsUtils.bucketize(value:buckets:)(uint64_t a1, float a2)
{
  v17 = 0;
  v19 = a2;
  v18 = a1;
  v16 = 0;
  result = MEMORY[0x25F8895B0]();
  if (__OFADD__(result, 1))
  {
    __break(1u);
  }

  else
  {
    v17 = Array.init(repeating:count:)();
    v12 = a2;
    result = static HIDPFLUtils.findClosest<A>(_:lessOrEqualThan:)(a1, &v12, MEMORY[0x277D83A90], MEMORY[0x277D83AB8], v13);
    if (v15)
    {
      v8 = 0;
      v9 = 1;
    }

    else
    {
      v8 = v14;
      v9 = 0;
    }

    if ((v9 & 1) != 0 || (!__OFADD__(v8, 1) ? (v4 = 0) : (v4 = 1), (v4 & 1) == 0))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySiGMd, &_sSaySiGMR);
      v5 = Array.subscript.modify();
      *v6 = 1;
      v5();
      v7 = v17;

      outlined destroy of [(start: UInt32, end: UInt32)]();
      return v7;
    }
  }

  __break(1u);
  return result;
}

void (*static MetricsUtils.bucketize(values:buckets:)(uint64_t a1, uint64_t a2))(void)
{
  v24 = 0;
  v21 = 0;
  v22 = 0;
  v17 = 0;
  v26 = a1;
  v25 = a2;
  v23 = 0;
  result = MEMORY[0x25F8895B0](a2, MEMORY[0x277D83A90]);
  if (__OFADD__(result, 1))
  {
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
  }

  else
  {
    v24 = Array.init(repeating:count:)();

    v20 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySfGMd, &_sSaySfGMR);
    lazy protocol witness table accessor for type [Float] and conformance [A]();
    Collection<>.makeIterator()();
    while (1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVySaySfGGMd, &_ss16IndexingIteratorVySaySfGGMR);
      IndexingIterator.next()();
      if (v19)
      {
        break;
      }

      v17 = v18;
      v13 = v18;
      result = static HIDPFLUtils.findClosest<A>(_:lessOrEqualThan:)(a2, &v13, MEMORY[0x277D83A90], MEMORY[0x277D83AB8], v14);
      if (v16)
      {
        v9 = 0;
        v10 = 1;
      }

      else
      {
        v9 = v15;
        v10 = 0;
      }

      if (v10)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySiGMd, &_sSaySiGMR);
        result = Array.subscript.modify();
        if (__OFADD__(*v5, 1))
        {
          goto LABEL_27;
        }
      }

      else
      {
        if (__OFADD__(v9, 1))
        {
          goto LABEL_28;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySiGMd, &_sSaySiGMR);
        result = Array.subscript.modify();
        if (__OFADD__(*v5, 1))
        {
          goto LABEL_29;
        }
      }

      ++*v5;
      result();
    }

    outlined destroy of [(start: UInt32, end: UInt32)]();
    v8 = v24;

    outlined destroy of [(start: UInt32, end: UInt32)]();
    return v8;
  }

  return result;
}

uint64_t static AUC.rocCurve(outputs:labels:)(uint64_t a1, uint64_t a2)
{
  v131 = 0;
  v163 = 0;
  v162 = 0;
  v132 = 0;
  v154[0] = 0;
  v151 = 0;
  v140 = 0;
  v169[2] = a1;
  v169[1] = a2;
  v135 = static AUC.binaryClassificationCurve(outputs:labels:)(a1, a2);
  v133 = v2;
  v134 = v3;

  v169[0] = v135;
  v168 = v133;
  v167 = v134;
  v136 = MEMORY[0x25F8895B0]();

  if (v136 < 3)
  {
    v89 = v132;
  }

  else
  {
    v4 = v132;
    v107 = v169[0];

    v153 = v169[0];
    v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySfGMd, &_sSaySfGMR);
    v115 = lazy protocol witness table accessor for type [Float] and conformance [A]();
    v116 = MEMORY[0x277D83AD0];
    v108 = &v153;
    v109 = Collection<>.diff()(v123, v115, MEMORY[0x277D83AD0]);
    outlined destroy of [(start: UInt32, end: UInt32)]();
    v152 = v109;
    v110 = &v152;
    v111 = Collection<>.diff()(v123, v115, v116);
    outlined destroy of [(start: UInt32, end: UInt32)]();
    v154[0] = v111;
    v112 = v168;

    v150 = v112;
    v113 = &v150;
    v114 = Collection<>.diff()(v123, v115, v116);
    outlined destroy of [(start: UInt32, end: UInt32)]();
    v149 = v114;
    v117 = &v149;
    v118 = Collection<>.diff()(v123, v115, v116);
    outlined destroy of [(start: UInt32, end: UInt32)]();
    v151 = v118;
    v120 = 1065353216;
    v148 = 1065353216;
    v119 = v154;
    Array.append(_:)();
    v147 = 1065353216;
    v121 = 0;
    Array.insert(_:at:)();
    v146 = 1065353216;
    v125 = &v151;
    Array.append(_:)();
    v145 = 1065353216;
    Array.insert(_:at:)();
    v122 = v154[0];

    v143 = v122;
    v5 = lazy protocol witness table accessor for type [Float] and conformance [A]();
    v124 = &v143;
    MEMORY[0x25F889420](&v144, v123, v5);
    outlined destroy of [(start: UInt32, end: UInt32)]();
    v142 = v144;
    v126 = v47;
    MEMORY[0x28223BE20](v47, v6);
    v127 = v46;
    v46[2] = v7;
    v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18EnumeratedSequenceVySaySfGGMd, &_ss18EnumeratedSequenceVySaySfGGMR);
    lazy protocol witness table accessor for type EnumeratedSequence<[Float]> and conformance EnumeratedSequence<A>();
    v8 = Sequence.filter(_:)();
    v129 = v4;
    v130 = v8;
    v141 = v8;
    v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySi6offset_Sf7elementtGMd, &_sSaySi6offset_Sf7elementtGMR);
    v9 = lazy protocol witness table accessor for type [(offset: Int, element: Float)] and conformance [A]();
    v11 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(closure #3 in static AUC.binaryClassificationCurve(outputs:labels:), 0, v104, MEMORY[0x277D83B88], MEMORY[0x277D84A98], v9, MEMORY[0x277D84AC0], v10);
    v105 = 0;
    v106 = v11;
    v96 = v11;
    outlined destroy of [(start: UInt32, end: UInt32)]();
    v140 = v96;
    v139 = v96;
    v97 = v46;
    MEMORY[0x28223BE20](v46, v12);
    v99 = &v44;
    v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySiGMd, &_sSaySiGMR);
    v98 = v100;
    v101 = lazy protocol witness table accessor for type [Int] and conformance [A]();
    v14 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #3 in static AUC.rocCurve(outputs:labels:), v99, v100, MEMORY[0x277D83A90], MEMORY[0x277D84A98], v101, MEMORY[0x277D84AC0], v13);
    v102 = 0;
    v103 = v14;
    v169[0] = v14;

    v138 = v96;
    v93 = v46;
    MEMORY[0x28223BE20](v46, v15);
    v19 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #3 in static AUC.rocCurve(outputs:labels:), &v44, v16, MEMORY[0x277D83A90], MEMORY[0x277D84A98], v17, MEMORY[0x277D84AC0], v18);
    v94 = 0;
    v95 = v19;
    v168 = v19;

    v137 = v96;
    v90 = v46;
    MEMORY[0x28223BE20](v46, v20);
    v45 = &v167;
    v24 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #5 in static AUC.rocCurve(outputs:labels:), &v44, v21, MEMORY[0x277D83B88], MEMORY[0x277D84A98], v22, MEMORY[0x277D84AC0], v23);
    v91 = 0;
    v92 = v24;
    v167 = v24;

    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    v89 = v91;
  }

  v79 = v89;
  v81 = 0;
  v166 = 0;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySfGMd, &_sSaySfGMR);
  v80 = v84;
  v82 = 0;
  Array.insert(_:at:)();
  v165 = v81;
  Array.insert(_:at:)();
  v164 = 0x7FFFFFFFFFFFFFFFLL;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySiGMd, &_sSaySiGMR);
  Array.insert(_:at:)();
  v83 = MEMORY[0x277D83A90];
  v163 = Array.init()();
  v162 = Array.init()();
  v86 = v169[0];

  v161 = v86;
  v85 = lazy protocol witness table accessor for type [Float] and conformance [A]();
  BidirectionalCollection.last.getter();
  v87 = v159;
  v88 = v160;

  if (v88)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "Unexpectedly found nil while unwrapping an Optional value", 57, 2, "NightingaleTraining/MetricsUtils.swift", 38, 2, 143, 0);
    __break(1u);
  }

  else
  {
    v78 = v87;
  }

  if (v78 <= 0.0)
  {
    v25 = v79;
    v75 = v169[0];

    v154[1] = v75;
    v26 = lazy protocol witness table accessor for type [Float] and conformance [A]();
    v28 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(closure #6 in static AUC.rocCurve(outputs:labels:), 0, v80, MEMORY[0x277D83A90], MEMORY[0x277D84A98], v26, MEMORY[0x277D84AC0], v27);
    v76 = v25;
    v77 = v28;
    if (!v25)
    {
      v72 = v77;
      outlined destroy of [(start: UInt32, end: UInt32)]();

      v163 = v72;

      v73 = v72;
      v74 = 0;
      goto LABEL_12;
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v29 = v79;
  v67 = v169[0];

  v158 = v67;
  v68 = v46;
  MEMORY[0x28223BE20](v46, v30);
  v69 = &v44;
  v45 = v169;
  v31 = lazy protocol witness table accessor for type [Float] and conformance [A]();
  v33 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #7 in static AUC.rocCurve(outputs:labels:), v69, v80, MEMORY[0x277D83A90], MEMORY[0x277D84A98], v31, MEMORY[0x277D84AC0], v32);
  v70 = v29;
  v71 = v33;
  if (v29)
  {
    goto LABEL_22;
  }

  v66 = v71;
  outlined destroy of [(start: UInt32, end: UInt32)]();

  v163 = v66;

  v73 = v66;
  v74 = v70;
LABEL_12:
  v61 = v74;
  v62 = v73;
  v63 = v168;

  v157 = v63;
  BidirectionalCollection.last.getter();
  v64 = v155;
  v65 = v156;

  if (v65)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "Unexpectedly found nil while unwrapping an Optional value", 57, 2, "NightingaleTraining/MetricsUtils.swift", 38, 2, 148, 0);
    __break(1u);
  }

  else
  {
    v60 = v64;
  }

  if (v60 <= 0.0)
  {
    v34 = v61;
    v57 = v168;

    v154[2] = v57;
    v35 = lazy protocol witness table accessor for type [Float] and conformance [A]();
    v37 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(closure #6 in static AUC.rocCurve(outputs:labels:), 0, v80, MEMORY[0x277D83A90], MEMORY[0x277D84A98], v35, MEMORY[0x277D84AC0], v36);
    v58 = v34;
    v59 = v37;
    if (!v34)
    {
      v54 = v59;
      outlined destroy of [(start: UInt32, end: UInt32)]();

      v162 = v54;

      v55 = v54;
      v56 = 0;
LABEL_20:
      v47[1] = v55;
      v47[2] = v167;

      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      return v62;
    }

    goto LABEL_23;
  }

  v38 = v61;
  v49 = v168;

  v154[3] = v49;
  v50 = v46;
  MEMORY[0x28223BE20](v46, v39);
  v51 = &v44;
  v45 = &v168;
  v40 = lazy protocol witness table accessor for type [Float] and conformance [A]();
  v42 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #9 in static AUC.rocCurve(outputs:labels:), v51, v80, MEMORY[0x277D83A90], MEMORY[0x277D84A98], v40, MEMORY[0x277D84AC0], v41);
  v52 = v38;
  v53 = v42;
  if (!v38)
  {
    v48 = v53;
    outlined destroy of [(start: UInt32, end: UInt32)]();

    v162 = v48;

    v55 = v48;
    v56 = v52;
    goto LABEL_20;
  }

LABEL_24:
  result = 0;
  __break(1u);
  return result;
}

uint64_t static AUC.rocAUCScore(tpr:fpr:maxFPR:)(uint64_t a1, uint64_t a2, float a3)
{
  v61 = a3;
  v62 = a2;
  v63 = a1;
  v100 = 0;
  v93 = 0.0;
  v92 = 0;
  v80 = 0;
  v68 = 0.0;
  v67 = 0.0;
  v66 = 0.0;
  v107 = a1;
  v106 = a2;
  *&v105[2] = a3;
  *&v105[1] = a3;
  v105[0] = 1065353216;
  v65 = lazy protocol witness table accessor for type Float and conformance Float();
  v64 = MEMORY[0x277D83A90];
  default argument 1 of FloatingPoint.isNearlyEqual(to:absoluteTolerance:)();
  v104[0] = v104[1];
  if ((FloatingPoint.isNearlyEqual(to:absoluteTolerance:)(v105, v104, v64, v65) & 1) == 0)
  {
    if (v61 >= 1.0 || v61 <= 0.0)
    {
      lazy protocol witness table accessor for type HIDPFLError and conformance HIDPFLError();
      v17[1] = 0;
      v18 = swift_allocError();
      *v15 = 65;
      swift_willThrow();
      result = v18;
      v19 = v18;
      return result;
    }

    v52 = v60;
    v101 = v62;
    v48 = v17;
    MEMORY[0x28223BE20](v17, v3);
    v50 = v16;
    v16[4] = v6;
    v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySfGMd, &_sSaySfGMR);
    v49 = v51;
    v7 = lazy protocol witness table accessor for type [Float] and conformance [A]();
    v8 = v52;
    v53 = v7;
    Collection.firstIndex(where:)();
    v54 = v8;
    if (v8)
    {
      __break(1u);
LABEL_31:
      v17[0] = v33;

      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      result = v17[0];
      v19 = v17[0];
      return result;
    }

    v47 = v102;
    if (v103)
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "Unexpectedly found nil while unwrapping an Optional value", 57, 2, "NightingaleTraining/MetricsUtils.swift", 38, 2, 360, 0);
      __break(1u);
    }

    else
    {
      v46 = v47;
    }

    v44 = v46;
    v100 = v46;
    result = v46 - 1;
    v9 = __OFSUB__(v46, 1);
    v45 = v46 - 1;
    if (v9)
    {
      __break(1u);
    }

    else
    {
      Array.subscript.getter();
      v42 = v99;
      result = v44 - 1;
      v10 = __OFSUB__(v44, 1);
      v43 = v44 - 1;
      if (!v10)
      {
        v38 = MEMORY[0x277D83A90];
        Array.subscript.getter();
        v39 = v61 - v98;
        Array.subscript.getter();
        v40 = v97;
        result = v44 - 1;
        v11 = __OFSUB__(v44, 1);
        v41 = v44 - 1;
        if (!v11)
        {
          v34 = MEMORY[0x277D83A90];
          Array.subscript.getter();
          v35 = v39 / (v40 - v96);
          Array.subscript.getter();
          v36 = v95;
          result = v44 - 1;
          v12 = __OFSUB__(v44, 1);
          v37 = v44 - 1;
          if (!v12)
          {
            v26 = v54;
            v23 = MEMORY[0x277D83A90];
            Array.subscript.getter();
            v22 = v42 + (v35 * (v36 - v94));
            v93 = v22;

            v87 = v63;
            v86 = v44;
            Collection.prefix(upTo:)();
            v82 = v88;
            v83 = v89;
            v84 = v90;
            v85 = v91;
            v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss10ArraySliceVySfGMd, &_ss10ArraySliceVySfGMR);
            v25 = lazy protocol witness table accessor for type ArraySlice<Float> and conformance ArraySlice<A>();
            v92 = Array.init<A>(_:)();
            v81 = v22;
            Array.append(_:)();

            v75 = v62;
            v74 = v44;
            Collection.prefix(upTo:)();
            v70 = v76;
            v71 = v77;
            v72 = v78;
            v73 = v79;
            v80 = Array.init<A>(_:)();
            v69 = v61;
            Array.append(_:)();
            v13 = v26;
            v29 = v80;
            v27 = v80;

            v30 = v92;
            v28 = v92;

            static AUC.auc(x:y:)(v29, v30);
            v31 = v13;
            v32 = v14;
            v33 = v13;
            if (!v13)
            {
              v20 = v32;

              v68 = v20;
              v67 = powf(v61, 2.0) * 0.5;
              v66 = v61;
              v21 = (((v20 - v67) / (v61 - v67)) + 1.0) * 0.5;
              outlined destroy of [(start: UInt32, end: UInt32)]();
              outlined destroy of [(start: UInt32, end: UInt32)]();
              result = v31;
              v55 = v21;
              v56 = v31;
              return result;
            }

            goto LABEL_31;
          }

LABEL_35:
          __break(1u);
          return result;
        }

LABEL_34:
        __break(1u);
        goto LABEL_35;
      }
    }

    __break(1u);
    goto LABEL_34;
  }

  static AUC.auc(x:y:)(v62, v63);
  v57 = v60;
  result = v60;
  v58 = v5;
  v59 = v60;
  if (v60)
  {
    result = v59;
    v19 = v59;
  }

  else
  {
    v55 = v58;
    v56 = 0;
  }

  return result;
}

uint64_t static AUC.precisionRecallCurve(outputs:labels:)(uint64_t a1, uint64_t a2)
{
  v156 = 0;
  v202 = 0;
  v157 = 0;
  v194 = 0;
  v189 = 0;
  v187 = 0;
  v177[0] = 0;
  v175 = 0;
  v165 = 0;
  v205[2] = a1;
  v205[1] = a2;
  v160 = static AUC.binaryClassificationCurve(outputs:labels:)(a1, a2);
  v158 = v2;
  v159 = v3;

  v205[0] = v160;
  v204 = v158;
  v203 = v159;
  v161 = MEMORY[0x25F8895B0]();

  if (v161 < 3)
  {
    v115 = v157;
  }

  else
  {
    v4 = v157;
    v133 = v205[0];

    v176[5] = v205[0];
    v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySfGMd, &_sSaySfGMR);
    v140 = lazy protocol witness table accessor for type [Float] and conformance [A]();
    default argument 0 of Collection.dropFirst(_:)();
    Collection.dropLast(_:)();
    v176[1] = v176[6];
    v176[2] = v176[7];
    v176[3] = v176[8];
    v176[4] = v176[9];
    v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss10ArraySliceVySfGMd, &_ss10ArraySliceVySfGMR);
    v139 = lazy protocol witness table accessor for type ArraySlice<Float> and conformance ArraySlice<A>();
    v137 = MEMORY[0x277D83A90];
    v176[0] = Array.init<A>(_:)();
    v141 = MEMORY[0x277D83AD0];
    v134 = v176;
    v135 = Collection<>.diff()(v148, v140, MEMORY[0x277D83AD0]);
    outlined destroy of [(start: UInt32, end: UInt32)]();
    v177[0] = v135;
    v136 = v204;

    v174[5] = v136;
    default argument 0 of Collection.dropFirst(_:)();
    Collection.dropFirst(_:)();
    v174[1] = v174[6];
    v174[2] = v174[7];
    v174[3] = v174[8];
    v174[4] = v174[9];
    v174[0] = Array.init<A>(_:)();
    v142 = v174;
    v143 = Collection<>.diff()(v148, v140, v141);
    outlined destroy of [(start: UInt32, end: UInt32)]();
    v175 = v143;
    v145 = 1065353216;
    v173 = 1065353216;
    v144 = v177;
    Array.append(_:)();
    v172 = 1065353216;
    v146 = 0;
    Array.insert(_:at:)();
    v171 = 1065353216;
    v150 = &v175;
    Array.append(_:)();
    v170 = 1065353216;
    Array.insert(_:at:)();
    v147 = v177[0];

    v168 = v147;
    v5 = lazy protocol witness table accessor for type [Float] and conformance [A]();
    v149 = &v168;
    MEMORY[0x25F889420](&v169, v148, v5);
    outlined destroy of [(start: UInt32, end: UInt32)]();
    v167 = v169;
    v151 = v57;
    MEMORY[0x28223BE20](v57, v6);
    v152 = v56;
    v56[2] = v7;
    v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18EnumeratedSequenceVySaySfGGMd, &_ss18EnumeratedSequenceVySaySfGGMR);
    lazy protocol witness table accessor for type EnumeratedSequence<[Float]> and conformance EnumeratedSequence<A>();
    v8 = Sequence.filter(_:)();
    v154 = v4;
    v155 = v8;
    v166 = v8;
    v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySi6offset_Sf7elementtGMd, &_sSaySi6offset_Sf7elementtGMR);
    v9 = lazy protocol witness table accessor for type [(offset: Int, element: Float)] and conformance [A]();
    v11 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(closure #3 in static AUC.binaryClassificationCurve(outputs:labels:), 0, v130, MEMORY[0x277D83B88], MEMORY[0x277D84A98], v9, MEMORY[0x277D84AC0], v10);
    v131 = 0;
    v132 = v11;
    v122 = v11;
    outlined destroy of [(start: UInt32, end: UInt32)]();
    v165 = v122;
    v164 = v122;
    v123 = v56;
    MEMORY[0x28223BE20](v56, v12);
    v125 = &v53;
    v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySiGMd, &_sSaySiGMR);
    v124 = v126;
    v127 = lazy protocol witness table accessor for type [Int] and conformance [A]();
    v14 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #3 in static AUC.rocCurve(outputs:labels:), v125, v126, MEMORY[0x277D83A90], MEMORY[0x277D84A98], v127, MEMORY[0x277D84AC0], v13);
    v128 = 0;
    v129 = v14;
    v205[0] = v14;

    v163 = v122;
    v119 = v56;
    MEMORY[0x28223BE20](v56, v15);
    v19 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #3 in static AUC.rocCurve(outputs:labels:), &v53, v16, MEMORY[0x277D83A90], MEMORY[0x277D84A98], v17, MEMORY[0x277D84AC0], v18);
    v120 = 0;
    v121 = v19;
    v204 = v19;

    v162 = v122;
    v116 = v56;
    MEMORY[0x28223BE20](v56, v20);
    v54 = &v203;
    v24 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #5 in static AUC.rocCurve(outputs:labels:), &v53, v21, MEMORY[0x277D83B88], MEMORY[0x277D84A98], v22, MEMORY[0x277D84AC0], v23);
    v117 = 0;
    v118 = v24;
    v203 = v24;

    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    v115 = v117;
  }

  v108 = v115;
  v202 = Array.init()();
  v112 = v204;

  v201 = v112;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySfGMd, &_sSaySfGMR);
  v109 = v110;
  v111 = lazy protocol witness table accessor for type [Float] and conformance [A]();
  BidirectionalCollection.last.getter();
  v113 = v199;
  v114 = v200;

  if (v114)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "Unexpectedly found nil while unwrapping an Optional value", 57, 2, "NightingaleTraining/MetricsUtils.swift", 38, 2, 194, 0);
    __break(1u);
  }

  else
  {
    v107 = v113;
  }

  if (v107 <= 0.0)
  {
    v25 = v108;
    v104 = v204;

    v177[1] = v104;
    v26 = lazy protocol witness table accessor for type [Float] and conformance [A]();
    v28 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(closure #6 in static AUC.rocCurve(outputs:labels:), 0, v109, MEMORY[0x277D83A90], MEMORY[0x277D84A98], v26, MEMORY[0x277D84AC0], v27);
    v105 = v25;
    v106 = v28;
    if (!v25)
    {
      v101 = v106;
      outlined destroy of [(start: UInt32, end: UInt32)]();

      v202 = v101;

      v102 = v101;
      v103 = 0;
      goto LABEL_12;
    }

    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v29 = v108;
  v96 = v204;

  v198[4] = v96;
  v97 = v56;
  MEMORY[0x28223BE20](v56, v30);
  v98 = &v53;
  v54 = &v204;
  v31 = lazy protocol witness table accessor for type [Float] and conformance [A]();
  v33 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #7 in static AUC.precisionRecallCurve(outputs:labels:), v98, v109, MEMORY[0x277D83A90], MEMORY[0x277D84A98], v31, MEMORY[0x277D84AC0], v32);
  v99 = v29;
  v100 = v33;
  if (v29)
  {
    goto LABEL_15;
  }

  v95 = v100;
  outlined destroy of [(start: UInt32, end: UInt32)]();

  v202 = v95;

  v102 = v95;
  v103 = v99;
LABEL_12:
  v34 = v103;
  v81 = v102;
  v83 = v205[0];
  v82 = v205[0];

  v198[0] = v83;
  v84 = v204;

  v197 = v84;
  v85 = lazy protocol witness table accessor for type [Float] and conformance [A]();
  v87 = v198;
  v86 = &v197;
  zip<A, B>(_:_:)();
  outlined destroy of [(start: UInt32, end: UInt32)]();
  outlined destroy of [(start: UInt32, end: UInt32)]();
  v195 = v198[1];
  v196 = v198[2];
  v88 = v56;
  MEMORY[0x28223BE20](v56, v35);
  v90 = &v53;
  v54 = implicit closure #1 in static AUC.precisionRecallCurve(outputs:labels:);
  v55 = 0;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss12Zip2SequenceVySaySfGACGMd, &_ss12Zip2SequenceVySaySfGACGMR);
  v89 = v91;
  v92 = lazy protocol witness table accessor for type Zip2Sequence<[Float], [Float]> and conformance Zip2Sequence<A, B>();
  v37 = _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for thunk for @escaping @callee_guaranteed (@unowned Float, @unowned Float) -> (@unowned Float), v90, v91, MEMORY[0x277D83A90], MEMORY[0x277D84A98], v92, MEMORY[0x277D84AC0], v36);
  v93 = v34;
  v94 = v37;
  if (!v34)
  {
    v76 = v94;
    outlined destroy of Zip2Sequence<[Float], [Float]>();
    v194 = v76;

    v193[0] = v82;
    v192 = v76;
    v77 = v193;
    zip<A, B>(_:_:)();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    v190 = v193[1];
    v191 = v193[2];
    v78 = v56;
    MEMORY[0x28223BE20](v56, v38);
    v55 = 0;
    v42 = _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for thunk for @escaping @callee_guaranteed (@unowned Float, @unowned Float) -> (@unowned Float), &v53, v39, MEMORY[0x277D83A90], MEMORY[0x277D84A98], v40, MEMORY[0x277D84AC0], v41);
    v79 = 0;
    v80 = v42;
    v72 = v42;
    outlined destroy of Zip2Sequence<[Float], [Float]>();
    v189 = v72;
    v188 = v82;
    v73 = v56;
    MEMORY[0x28223BE20](v56, v43);
    v74 = &v53;
    v54 = v205;
    v44 = lazy protocol witness table accessor for type [Float] and conformance [A]();
    v75 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #9 in static AUC.precisionRecallCurve(outputs:labels:), v74, v109, MEMORY[0x277D83A90], MEMORY[0x277D84A98], v44, MEMORY[0x277D84AC0], v45);
    v67 = v75;
    outlined destroy of [(start: UInt32, end: UInt32)]();
    v187 = v67;

    v185[1] = v72;
    MEMORY[0x25F889240](v186, v109, v111);
    v185[0] = v186[0];
    v59 = MEMORY[0x277D83A90];
    v57[5] = 1;
    _allocateUninitializedArray<A>(_:)();
    *v46 = 1065353216;
    _finalizeUninitializedArray<A>(_:)();
    v184 = v47;
    v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18ReversedCollectionVySaySfGGMd, &_ss18ReversedCollectionVySaySfGGMR);
    v61 = lazy protocol witness table accessor for type [Float] and conformance [A]();
    v62 = lazy protocol witness table accessor for type ReversedCollection<[Float]> and conformance ReversedCollection<A>();
    v57[2] = v185;
    v57[1] = &v184;
    static RangeReplaceableCollection.+ infix<A>(_:_:)();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    v71 = v186[1];

    v182[1] = v67;
    MEMORY[0x25F889240](v183, v109, v111);
    v182[0] = v183[0];
    _allocateUninitializedArray<A>(_:)();
    v58 = 0;
    *v48 = 0;
    _finalizeUninitializedArray<A>(_:)();
    v181 = v49;
    v57[4] = v182;
    v57[3] = &v181;
    static RangeReplaceableCollection.+ infix<A>(_:_:)();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    v68 = v183[1];
    v179[1] = v81;
    MEMORY[0x25F889240](v180, v109, v111);
    v179[0] = v180[0];
    _allocateUninitializedArray<A>(_:)();
    *v50 = v58;
    _finalizeUninitializedArray<A>(_:)();
    v178 = v51;
    v64 = v179;
    v63 = &v178;
    static RangeReplaceableCollection.+ infix<A>(_:_:)();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    v69 = v180[1];
    v65 = v203;

    v177[2] = v65;
    v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySiGMd, &_sSaySiGMR);
    lazy protocol witness table accessor for type [Int] and conformance [A]();
    v70 = Sequence.reversed()();

    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    return v71;
  }

LABEL_16:
  __break(1u);
  __break(1u);
  result = 0;
  __break(1u);
  return result;
}

void static AUC.prAUCScore(precison:recall:)(uint64_t a1, uint64_t a2)
{
  v33 = v44;
  v37 = a1;
  v34 = 0;
  v44[7] = a1;
  v44[6] = a2;
  v43[1] = a2;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySfGMd, &_sSaySfGMR);
  v35 = v36;
  v2 = lazy protocol witness table accessor for type [Float] and conformance [A]();
  v43[0] = Collection<>.diff()(v36, v2, MEMORY[0x277D83AD0]);
  v3 = MEMORY[0x25F8895B0](v37, MEMORY[0x277D83A90]);
  v4 = __OFSUB__(v3, 1);
  v38 = v3 - 1;
  if (v4)
  {
    __break(1u);
  }

  else
  {
    if (v38 < 0)
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "Range requires lowerBound <= upperBound", 39, 2, "Swift/Range.swift", 17, 2, 760, 0);
      __break(1u);
    }

    v5 = v34;
    v30 = MEMORY[0x277D83A90];
    v26 = 0;
    v42[0] = Array.subscript.getter();
    v42[1] = v6;
    v42[2] = v7;
    v42[3] = v8;
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss10ArraySliceVySfGMd, &_ss10ArraySliceVySfGMR);
    v23 = lazy protocol witness table accessor for type [Float] and conformance [A]();
    v21 = v23;
    lazy protocol witness table accessor for type ArraySlice<Float> and conformance ArraySlice<A>();
    v25 = v43;
    v24 = v42;
    zip<A, B>(_:_:)();
    outlined destroy of IndexingIterator<ArraySlice<(start: UInt32, end: UInt32)>>(v42);
    outlined destroy of [(start: UInt32, end: UInt32)]();
    v9 = v33[3];
    v10 = v33[4];
    v41[0] = v44[0];
    v41[1] = v44[1];
    v41[2] = v44[2];
    v41[3] = v9;
    v41[4] = v10;
    v27 = &v19;
    MEMORY[0x28223BE20](&v19, v11);
    v28 = &v16;
    v17 = implicit closure #1 in static AUC.prAUCScore(precison:recall:);
    v18 = v12;
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss12Zip2SequenceVySaySfGs10ArraySliceVySfGGMd, &_ss12Zip2SequenceVySaySfGs10ArraySliceVySfGGMR);
    v13 = lazy protocol witness table accessor for type Zip2Sequence<[Float], ArraySlice<Float>> and conformance Zip2Sequence<A, B>();
    v15 = _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for thunk for @escaping @callee_guaranteed (@unowned Float, @unowned Float) -> (@unowned Float), v28, v29, v30, MEMORY[0x277D84A98], v13, MEMORY[0x277D84AC0], v14);
    v31 = v5;
    v32 = v15;
    v20 = v15;
    outlined destroy of Zip2Sequence<[Float], ArraySlice<Float>>(v41);
    v40 = v20;
    v39 = 0;
    Sequence.reduce<A>(_:_:)();
    outlined destroy of [(start: UInt32, end: UInt32)]();
  }
}

uint64_t static AUC.bucketConfusionMatrix(outputs:labels:numThresholds:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v53 = a3;
  v55 = a2;
  v54 = a1;
  v57 = 0;
  v88 = 0;
  v87 = 0;
  v86 = 0;
  v80 = 0;
  v74 = 0;
  v70 = 0;
  v66 = 0;
  v64 = 0;
  v62 = 0;
  v95 = a1;
  v94 = a2;
  v93 = a3;

  v92 = v55;
  v91 = v55;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySfGMd, &_sSaySfGMR);
  v56 = v58;
  v59 = lazy protocol witness table accessor for type [Float] and conformance [A]();
  v60 = 0;
  v61 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(closure #1 in static AUC.bucketConfusionMatrix(outputs:labels:numThresholds:), 0, v58, MEMORY[0x277D83A90], MEMORY[0x277D84A98], v59, MEMORY[0x277D84AC0], v3);
  v49 = v61;
  v90 = v61;
  v89 = v54;
  v50 = v23;
  MEMORY[0x28223BE20](v23, v4);
  v22[2] = v5;
  v9 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #2 in static AUC.bucketConfusionMatrix(outputs:labels:numThresholds:), v22, v6, MEMORY[0x277D83B88], MEMORY[0x277D84A98], v7, MEMORY[0x277D84AC0], v8);
  v51 = 0;
  v52 = v9;
  v30 = v9;
  v88 = v9;
  v33 = static AUC.gatherBucket(labels:bucketIndex:numThresholds:)(v55, v9, v53);
  v31 = v33;
  v87 = v33;
  v37 = static AUC.gatherBucket(labels:bucketIndex:numThresholds:)(v49, v30, v53);
  v32 = v37;
  v86 = v37;

  v83[1] = v33;
  v42 = lazy protocol witness table accessor for type [Float] and conformance [A]();
  MEMORY[0x25F889240](&v84, v56);
  v83[0] = v84;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18ReversedCollectionVySaySfGGMd, &_ss18ReversedCollectionVySaySfGGMR);
  v38 = lazy protocol witness table accessor for type ReversedCollection<[Float]> and conformance ReversedCollection<A>();
  v39 = MEMORY[0x277D83AD0];
  v34 = v83;
  v35 = Collection<>.cumSum()(v43, v38, MEMORY[0x277D83AD0]);
  outlined destroy of [(start: UInt32, end: UInt32)]();
  v82 = v35;
  MEMORY[0x25F889240](&v85, v56, v42);
  v81 = v85;
  v44 = lazy protocol witness table accessor for type ReversedCollection<[Float]> and conformance ReversedCollection<A>();
  v46 = MEMORY[0x277D83A90];
  v36 = Array.init<A>(_:)();
  v80 = v36;

  v77[1] = v37;
  MEMORY[0x25F889240](&v78, v56, v42);
  v77[0] = v78;
  v40 = v77;
  v41 = Collection<>.cumSum()(v43, v38, v39);
  outlined destroy of [(start: UInt32, end: UInt32)]();
  v76 = v41;
  MEMORY[0x25F889240](&v79, v56, v42);
  v75 = v79;
  v45 = Array.init<A>(_:)();
  v74 = v45;
  v72 = v55;
  v71 = 0;
  v47 = lazy protocol witness table accessor for type [Float] and conformance [A]();
  Sequence.reduce<A>(_:_:)();
  v48 = 0;
  v28 = v73;
  v70 = v73;
  v68 = v49;
  v67 = 0;
  Sequence.reduce<A>(_:_:)();
  v29 = 0;
  v66 = v69;
  v65 = v45;
  v25 = v22;
  MEMORY[0x28223BE20](v22, v10);
  LODWORD(v22[-2]) = v11;
  v15 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #3 in static AUC.bucketConfusionMatrix(outputs:labels:numThresholds:), &v22[-4], v12, MEMORY[0x277D83A90], MEMORY[0x277D84A98], v13, MEMORY[0x277D84AC0], v14);
  v26 = 0;
  v27 = v15;
  v23[1] = v15;
  v64 = v15;
  v63 = v36;
  v23[2] = v22;
  MEMORY[0x28223BE20](v22, v16);
  LODWORD(v22[-2]) = v17;
  v24 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #3 in static AUC.bucketConfusionMatrix(outputs:labels:numThresholds:), &v22[-4], v18, MEMORY[0x277D83A90], MEMORY[0x277D84A98], v19, MEMORY[0x277D84AC0], v20);
  v23[0] = v24;
  v62 = v24;

  return v36;
}

float static AUC.tpr(at:tpr:fpr:)(uint64_t a1, uint64_t a2, float a3)
{
  static AUC.metric(at:metrics:fpr:)(a1, a2, a3);
  if (v3)
  {
    return v5;
  }

  return result;
}

uint64_t Collection<>.diff()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v29 = a1;
  v30 = a2;
  v31 = a3;
  v32 = partial apply for implicit closure #1 in Collection<>.diff();
  v33 = MEMORY[0x277D84120];
  v39 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed A.Sequence.Element, @in_guaranteed A.Sequence.Element) -> (@out A.Sequence.Element);
  v47 = 0;
  v52 = a1;
  v19 = *(a1 - 8);
  v17 = a1 - 8;
  v14 = (*(v19 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](a1, a2);
  v3 = &v13 - v14;
  v27 = 0;
  v15 = MEMORY[0x277D83CB0];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v23 = *(AssociatedTypeWitness - 8);
  v24 = AssociatedTypeWitness - 8;
  v16 = (*(v23 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v30, v29);
  v25 = &v13 - v16;
  v22 = *(swift_getAssociatedConformanceWitness() + 8);
  v28 = *(v30 + 8);
  v48 = AssociatedTypeWitness;
  v49 = v29;
  v50 = v22;
  v51 = v28;
  v36 = type metadata accessor for Zip2Sequence();
  v18 = (*(*(v36 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v36, v21);
  v20 = &v13 - v18;
  v47 = v4;
  (*(v19 + 16))(v3);
  default argument 0 of Collection.dropFirst(_:)();
  Collection.dropFirst(_:)();
  zip<A, B>(_:_:)();
  (*(v23 + 8))(v25, AssociatedTypeWitness);
  v37 = swift_getAssociatedTypeWitness();
  v5 = swift_allocObject();
  v6 = v29;
  v7 = v30;
  v8 = v31;
  v9 = v32;
  v10 = v37;
  v34 = v5;
  v5[2] = v29;
  v5[3] = v7;
  v5[4] = v8;
  v5[5] = v10;
  v35 = &v41;
  v42 = v6;
  v43 = v7;
  v44 = v8;
  v45 = v9;
  v46 = v5;
  WitnessTable = swift_getWitnessTable();
  v40 = _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(v39, v35, v36, v37, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v38);
  v13 = v40;

  outlined destroy of Zip2Sequence<A.SubSequence, A>(v20, AssociatedTypeWitness, v29, v36);
  return v13;
}

uint64_t thunk for @escaping @callee_guaranteed (@in_guaranteed A.Sequence.Element, @in_guaranteed A.Sequence.Element) -> (@out A.Sequence.Element)(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return a2(a1, a1 + *(TupleTypeMetadata2 + 48));
}

uint64_t _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v41 = a1;
  v42 = a2;
  v87 = a3;
  v78 = a4;
  v51 = a5;
  v86 = a6;
  v44 = a8;
  v45 = "Fatal error";
  v46 = "Unexpectedly found nil while unwrapping an Optional value";
  v47 = "Swift/Sequence.swift";
  v48 = "Range requires lowerBound <= upperBound";
  v49 = "Swift/Range.swift";
  v50 = "Index out of range";
  v92 = a3;
  v91 = a4;
  v90 = a5;
  v79 = 0;
  v63 = MEMORY[0x277D83880];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v53 = *(AssociatedTypeWitness - 8);
  v54 = AssociatedTypeWitness - 8;
  v55 = (*(v53 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = MEMORY[0x28223BE20](0, AssociatedTypeWitness);
  v56 = &v29 - v55;
  v57 = *(v9 - 8);
  v58 = v9 - 8;
  v59 = (*(v57 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v11 = MEMORY[0x28223BE20](v8, v10);
  v60 = &v29 - v59;
  v61 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v11, v13);
  v62 = &v29 - v61;
  v64 = type metadata accessor for Optional();
  v65 = (*(*(v64 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v14 = MEMORY[0x28223BE20](v79, v86);
  v66 = &v29 - v65;
  v67 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = MEMORY[0x28223BE20](v14, v16);
  v68 = &v29 - v67;
  v69 = (*(*(v78 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v19 = MEMORY[0x28223BE20](v17, v18);
  v70 = &v29 - v69;
  v71 = (v20 + 15) & 0xFFFFFFFFFFFFFFF0;
  v22 = MEMORY[0x28223BE20](v19, v21);
  v72 = &v29 - v71;
  v82 = *(v23 - 8);
  v83 = v23 - 8;
  v73 = (*(v82 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v22, v24);
  v81 = &v29 - v73;
  v74 = swift_getAssociatedTypeWitness();
  v75 = *(v74 - 8);
  v76 = v74 - 8;
  v77 = (*(v75 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v87, v86);
  v85 = &v29 - v77;
  v88 = dispatch thunk of Sequence.underestimatedCount.getter();
  v89 = ContiguousArray.init()();
  v80 = type metadata accessor for ContiguousArray();
  ContiguousArray.reserveCapacity(_:)(v88);
  (*(v82 + 16))(v81, v84, v87);
  dispatch thunk of Sequence.makeIterator()();
  result = v88;
  if (v88 < 0)
  {
    result = _assertionFailure(_:_:file:line:flags:)(v45, 11, 2, v48, 39, 2, v49, 17, 2, 760, 0);
    __break(1u);
LABEL_29:
    __break(1u);
  }

  else
  {
    if (v88)
    {
      v39 = 0;
      for (i = v43; ; i = v35)
      {
        v37 = i;
        v38 = v39;
        if (v39 < 0 || v38 >= v88)
        {
          break;
        }

        if (v88 < 0)
        {
          _assertionFailure(_:_:file:line:flags:)(v45, 11, 2, v48, 39, 2, v49, 17, 2, 760, 0);
          __break(1u);
          break;
        }

        v36 = v38 + 1;
        if (__OFADD__(v38, 1))
        {
          goto LABEL_29;
        }

        swift_getAssociatedConformanceWitness();
        dispatch thunk of IteratorProtocol.next()();
        if ((*(v53 + 48))(v68, 1, AssociatedTypeWitness) == 1)
        {
          _assertionFailure(_:_:file:line:flags:)(v45, 11, 2, v46, 57, 2, v47, 20, 2, 699, 0);
          __break(1u);
        }

        v27 = v37;
        v41(v68, v62);
        v35 = v27;
        if (v27)
        {
          (*(v75 + 8))(v85, v74);
          outlined destroy of ContiguousArray<A1>();
          (*(v57 + 32))(v44, v62, v51);
          (*(v53 + 8))(v68, AssociatedTypeWitness);
          return v29;
        }

        (*(v53 + 8))(v68, AssociatedTypeWitness);
        ContiguousArray.append(_:)();
        if (v36 == v88)
        {
          v34 = v35;
          goto LABEL_21;
        }

        result = v35;
        v39 = v36;
      }

      _fatalErrorMessage(_:_:file:line:flags:)();
      __break(1u);
    }

    v34 = v43;
LABEL_21:
    for (j = v34; ; j = v30)
    {
      v32 = j;
      swift_getAssociatedConformanceWitness();
      dispatch thunk of IteratorProtocol.next()();
      if ((*(v53 + 48))(v66, 1, AssociatedTypeWitness) == 1)
      {
        (*(v75 + 8))(v85, v74);
        outlined destroy of A.Element?(v66, AssociatedTypeWitness);
        v31 = v89;

        return v31;
      }

      (*(v53 + 32))(v56, v66, AssociatedTypeWitness);
      v28 = v32;
      v41(v56, v60);
      v30 = v28;
      if (v28)
      {
        break;
      }

      (*(v53 + 8))(v56, AssociatedTypeWitness);
      ContiguousArray.append(_:)();
    }

    (*(v53 + 8))(v56, AssociatedTypeWitness);
    (*(v75 + 8))(v85, v74);
    outlined destroy of ContiguousArray<A1>();
    (*(v57 + 32))(v44, v60, v51);
    return v29;
  }

  return result;
}

uint64_t Collection<>.cumSum()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v14 = a1;
  v16 = a2;
  v11 = a3;
  v13 = partial apply for closure #1 in Collection<>.cumSum();
  v25 = 0;
  v24 = 0;
  v26 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = AssociatedTypeWitness - 8;
  v10 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](AssociatedTypeWitness, v4);
  v12 = &v6 - v10;
  v25 = &v6 - v10;
  v24 = v3;
  dispatch thunk of static AdditiveArithmetic.zero.getter();
  v20 = v14;
  v21 = v16;
  v22 = v11;
  v23 = v12;
  v18 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(v13, v19, v14, AssociatedTypeWitness, MEMORY[0x277D84A98], v16, MEMORY[0x277D84AC0], v17);
  v7 = v18;
  (*(v8 + 8))(v12, AssociatedTypeWitness);
  return v7;
}

uint64_t closure #1 in Collection<>.cumSum()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v16 = a5;
  v9 = a1;
  v11 = a2;
  v8[1] = a4;
  v18 = 0;
  v17 = 0;
  v19 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = *(AssociatedTypeWitness - 8);
  v13 = AssociatedTypeWitness - 8;
  v10 = (*(v12 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x28223BE20](v11, v9);
  v14 = v8 - v10;
  v18 = v6;
  v17 = v5;
  dispatch thunk of static AdditiveArithmetic.+= infix(_:_:)();
  (*(v12 + 16))(v14, v11, AssociatedTypeWitness);
  return (*(v12 + 32))(v16, v14, AssociatedTypeWitness);
}

uint64_t FloatingPoint.isNearlyEqual(to:absoluteTolerance:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a1;
  v20 = a2;
  v22 = a3;
  v15 = a4;
  v29 = 0;
  v28 = 0;
  v27 = 0;
  v30 = a3;
  v17 = *(a3 - 8);
  v18 = a3 - 8;
  v13 = *(v17 + 64);
  v12 = (v13 + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x28223BE20](v4, a1);
  v19 = &v11 - v12;
  v14 = v12;
  v7 = MEMORY[0x28223BE20](v5, v6);
  v25 = &v11 - v14;
  v29 = v8;
  v28 = v20;
  v27 = v7;
  v16 = *(v9 + 16);
  dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
  v21 = *(*(v15 + 24) + 8);
  abs<A>(_:)();
  v24 = *(v17 + 8);
  v23 = v17 + 8;
  v24(v19, v22);
  v26 = dispatch thunk of static Comparable.<= infix(_:_:)();
  v24(v25, v22);
  return v26 & 1;
}

uint64_t static AUC.binaryClassificationCurve(outputs:labels:)(uint64_t a1, uint64_t a2)
{
  v65 = a2;
  v70 = 0;
  v91 = 0;
  v89 = 0;
  v88 = 0;
  v81 = 0;
  v79 = 0;
  v75 = 0;
  v100[2] = a1;
  v100[1] = a2;
  v99 = a1;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySfGMd, &_sSaySfGMR);
  v66 = v67;
  v68 = lazy protocol witness table accessor for type [Float] and conformance [A]();
  MEMORY[0x25F889420](v100, v67);
  v98 = v100[0];
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18EnumeratedSequenceVySaySfGGMd, &_ss18EnumeratedSequenceVySaySfGGMR);
  v69 = v71;
  v72 = lazy protocol witness table accessor for type EnumeratedSequence<[Float]> and conformance EnumeratedSequence<A>();
  v73 = 0;
  v74 = Sequence.sorted(by:)();
  v59 = v74;
  outlined destroy of [(start: UInt32, end: UInt32)]();
  v97 = v74;
  v96 = v74;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySi6offset_Sf7elementtGMd, &_sSaySi6offset_Sf7elementtGMR);
  v60 = v61;
  v62 = lazy protocol witness table accessor for type [(offset: Int, element: Float)] and conformance [A]();
  v63 = 0;
  v64 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(closure #2 in static AUC.binaryClassificationCurve(outputs:labels:), 0, v61, MEMORY[0x277D83A90], MEMORY[0x277D84A98], v62, MEMORY[0x277D84AC0], v2);
  v56 = v64;
  v95 = v64;
  v94 = v74;
  v57 = 0;
  v58 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(closure #3 in static AUC.binaryClassificationCurve(outputs:labels:), 0, v61, MEMORY[0x277D83B88], MEMORY[0x277D84A98], v62, MEMORY[0x277D84AC0], v3);
  v48 = v58;
  v93 = v58;
  v92 = v58;

  v49 = &v24;
  MEMORY[0x28223BE20](&v24, v4);
  v51 = v23;
  v23[2] = v5;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySiGMd, &_sSaySiGMR);
  v50 = v52;
  v53 = lazy protocol witness table accessor for type [Int] and conformance [A]();
  v7 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #4 in static AUC.binaryClassificationCurve(outputs:labels:), v51, v52, MEMORY[0x277D83A90], MEMORY[0x277D84A98], v53, MEMORY[0x277D84AC0], v6);
  v54 = 0;
  v55 = v7;
  v43 = v7;

  v91 = v43;
  v90 = v56;
  v44 = lazy protocol witness table accessor for type [Float] and conformance [A]();
  v45 = Collection<>.diff()(v66, v44, MEMORY[0x277D83AD0]);
  v89 = v45;
  v86 = v45;
  MEMORY[0x25F889420](&v87, v66, v68);
  v85 = v87;
  v8 = Sequence.filter(_:)();
  v46 = 0;
  v47 = v8;
  v84 = v8;
  v10 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(closure #3 in static AUC.binaryClassificationCurve(outputs:labels:), 0, v60, MEMORY[0x277D83B88], MEMORY[0x277D84A98], v62, MEMORY[0x277D84AC0], v9);
  v41 = 0;
  v42 = v10;
  v39 = v10;
  outlined destroy of [(start: UInt32, end: UInt32)]();
  v88 = v39;
  result = MEMORY[0x25F8895B0](v43, MEMORY[0x277D83A90]);
  v12 = __OFSUB__(result, 1);
  v40 = result - 1;
  if (!v12)
  {
    v13 = v41;
    v83 = v40;
    Array.append(_:)();
    v82 = v43;
    v35 = Collection<>.cumSum()(v66, v44, MEMORY[0x277D83AD0]);
    v32 = v35;
    v81 = v35;
    v34 = v88;
    v33 = v88;

    v80 = v34;

    v36 = v23;
    v23[-2] = MEMORY[0x28223BE20](v35, v23);
    v17 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #4 in static AUC.binaryClassificationCurve(outputs:labels:), &v23[-4], v14, MEMORY[0x277D83A90], MEMORY[0x277D84A98], v15, MEMORY[0x277D84AC0], v16);
    v37 = v13;
    v38 = v17;
    if (!v13)
    {
      v27 = v38;

      outlined destroy of [(start: UInt32, end: UInt32)]();
      v79 = v27;

      v77 = v33;
      v18 = lazy protocol witness table accessor for type [Int] and conformance [A]();
      v26 = &v77;
      MEMORY[0x25F889420](&v78, v50, v18);
      outlined destroy of [(start: UInt32, end: UInt32)]();
      v76 = v78;

      v28 = v23;
      MEMORY[0x28223BE20](v23, v19);
      v29 = &v23[-4];
      v23[-2] = v20;
      v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18EnumeratedSequenceVySaySiGGMd, &_ss18EnumeratedSequenceVySaySiGGMR);
      v21 = lazy protocol witness table accessor for type EnumeratedSequence<[Int]> and conformance <> EnumeratedSequence<A>();
      v31 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #8 in static AUC.binaryClassificationCurve(outputs:labels:), v29, v30, MEMORY[0x277D83A90], MEMORY[0x277D84A98], v21, MEMORY[0x277D84AC0], v22);
      v25 = v31;

      outlined destroy of [(start: UInt32, end: UInt32)]();
      v75 = v25;

      outlined destroy of [(start: UInt32, end: UInt32)]();

      return v27;
    }

    __break(1u);

    __break(1u);
  }

  __break(1u);
  return result;
}

float closure #2 in static AUC.binaryClassificationCurve(outputs:labels:)@<S0>(uint64_t a1@<X0>, float *a2@<X8>)
{
  result = *(a1 + 8);
  *a2 = result;
  return result;
}

float closure #3 in static AUC.binaryClassificationCurve(outputs:labels:)@<S0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = *(a1 + 8);
  *a2 = *a1;
  return result;
}

BOOL closure #5 in static AUC.binaryClassificationCurve(outputs:labels:)(float *a1)
{
  abs<A>(_:)();
  static Float.ulpOfOne.getter();
  return v1 < v3;
}

float closure #8 in static AUC.binaryClassificationCurve(outputs:labels:)@<S0>(void *a1@<X0>, float *a3@<X8>)
{
  v4 = a1[1] + 1.0;
  Array.subscript.getter();
  result = v4 - v6;
  *a3 = v4 - v6;
  return result;
}

uint64_t closure #1 in static AUC.rocCurve(outputs:labels:)(uint64_t *a1, void *a2)
{
  v13 = 0;
  v14 = 0;
  v12 = 0;
  v2 = *(a1 + 2);
  v13 = *a1;
  v14 = v2;
  v12 = a2;
  v11[1] = v2;
  v11[0] = 0;
  v7 = lazy protocol witness table accessor for type Float and conformance Float();
  v6 = MEMORY[0x277D83A90];
  default argument 1 of FloatingPoint.isNearlyEqual(to:absoluteTolerance:)();
  v10[0] = v10[1];
  if (FloatingPoint.isNearlyEqual(to:absoluteTolerance:)(v11, v10, v6, v7))
  {
    v4 = MEMORY[0x277D83A90];
    Array.subscript.getter();
    v9[1] = v9[2];
    v9[0] = 0;
    default argument 1 of FloatingPoint.isNearlyEqual(to:absoluteTolerance:)();
    v8[0] = v8[1];
    v5 = FloatingPoint.isNearlyEqual(to:absoluteTolerance:)(v9, v8, v4, v7) ^ 1;
  }

  else
  {
    LOBYTE(v5) = 1;
  }

  return v5 & 1;
}

float closure #7 in static AUC.rocCurve(outputs:labels:)@<S0>(float *a1@<X0>, float *a3@<X8>)
{
  v6 = *a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySfGMd, &_sSaySfGMR);
  lazy protocol witness table accessor for type [Float] and conformance [A]();
  BidirectionalCollection.last.getter();

  if (v8)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "Unexpectedly found nil while unwrapping an Optional value", 57, 2, "NightingaleTraining/MetricsUtils.swift", 38, 2, 146, 0);
    __break(1u);
  }

  else
  {
    v4 = v7;
  }

  result = v6 / v4;
  *a3 = v6 / v4;
  return result;
}

float closure #9 in static AUC.rocCurve(outputs:labels:)@<S0>(float *a1@<X0>, float *a3@<X8>)
{
  v6 = *a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySfGMd, &_sSaySfGMR);
  lazy protocol witness table accessor for type [Float] and conformance [A]();
  BidirectionalCollection.last.getter();

  if (v8)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "Unexpectedly found nil while unwrapping an Optional value", 57, 2, "NightingaleTraining/MetricsUtils.swift", 38, 2, 151, 0);
    __break(1u);
  }

  else
  {
    v4 = v7;
  }

  result = v6 / v4;
  *a3 = v6 / v4;
  return result;
}

unint64_t lazy protocol witness table accessor for type EnumeratedSequence<[Float]> and conformance EnumeratedSequence<A>()
{
  v2 = lazy protocol witness table cache variable for type EnumeratedSequence<[Float]> and conformance EnumeratedSequence<A>;
  if (!lazy protocol witness table cache variable for type EnumeratedSequence<[Float]> and conformance EnumeratedSequence<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss18EnumeratedSequenceVySaySfGGMd, &_ss18EnumeratedSequenceVySaySfGGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type EnumeratedSequence<[Float]> and conformance EnumeratedSequence<A>);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type [Int] and conformance [A]()
{
  v2 = lazy protocol witness table cache variable for type [Int] and conformance [A];
  if (!lazy protocol witness table cache variable for type [Int] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySiGMd, &_sSaySiGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [Int] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type [Int] and conformance [A];
  if (!lazy protocol witness table cache variable for type [Int] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySiGMd, &_sSaySiGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [Int] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type Float and conformance Float()
{
  v2 = lazy protocol witness table cache variable for type Float and conformance Float;
  if (!lazy protocol witness table cache variable for type Float and conformance Float)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type Float and conformance Float);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type Float and conformance Float;
  if (!lazy protocol witness table cache variable for type Float and conformance Float)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type Float and conformance Float);
    return WitnessTable;
  }

  return v2;
}

float closure #7 in static AUC.precisionRecallCurve(outputs:labels:)@<S0>(float *a1@<X0>, float *a3@<X8>)
{
  v6 = *a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySfGMd, &_sSaySfGMR);
  lazy protocol witness table accessor for type [Float] and conformance [A]();
  BidirectionalCollection.last.getter();

  if (v8)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "Unexpectedly found nil while unwrapping an Optional value", 57, 2, "NightingaleTraining/MetricsUtils.swift", 38, 2, 197, 0);
    __break(1u);
  }

  else
  {
    v4 = v7;
  }

  result = v6 / v4;
  *a3 = v6 / v4;
  return result;
}

float closure #8 in static AUC.precisionRecallCurve(outputs:labels:)(float a1, float a2)
{
  *&v9[4] = a1;
  *&v9[2] = a2;
  *&v9[1] = a2;
  v9[0] = 0;
  v7 = lazy protocol witness table accessor for type Float and conformance Float();
  v6 = MEMORY[0x277D83A90];
  default argument 1 of FloatingPoint.isNearlyEqual(to:absoluteTolerance:)();
  v8[0] = v8[1];
  if (FloatingPoint.isNearlyEqual(to:absoluteTolerance:)(v9, v8, v6, v7))
  {
    return 0.0;
  }

  else
  {
    return a1 / a2;
  }
}

float closure #9 in static AUC.precisionRecallCurve(outputs:labels:)@<S0>(float *a1@<X0>, void *a2@<X1>, float *a3@<X8>)
{
  v18 = 0;
  v17 = 0;
  v9 = *a1;
  v18 = *a1;
  v17 = a2;
  v10 = *a2;

  v16 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySfGMd, &_sSaySfGMR);
  lazy protocol witness table accessor for type [Float] and conformance [A]();
  BidirectionalCollection.last.getter();

  if (v15)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "Unexpectedly found nil while unwrapping an Optional value", 57, 2, "NightingaleTraining/MetricsUtils.swift", 38, 2, 212, 0);
    __break(1u);
  }

  else
  {
    v7 = v14[2];
  }

  v14[1] = v7;
  v14[0] = 0;
  v6 = lazy protocol witness table accessor for type Float and conformance Float();
  v5 = MEMORY[0x277D83A90];
  default argument 1 of FloatingPoint.isNearlyEqual(to:absoluteTolerance:)();
  v13[0] = v13[1];
  if (FloatingPoint.isNearlyEqual(to:absoluteTolerance:)(v14, v13, v5, v6))
  {
    result = 1.0;
    *a3 = 1.0;
  }

  else
  {

    BidirectionalCollection.last.getter();

    if (v12)
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "Unexpectedly found nil while unwrapping an Optional value", 57, 2, "NightingaleTraining/MetricsUtils.swift", 38, 2, 215, 0);
      __break(1u);
    }

    else
    {
      v4 = v11;
    }

    result = v9 / v4;
    *a3 = v9 / v4;
  }

  return result;
}

uint64_t static AUC.metric(at:metrics:fpr:)(uint64_t a1, uint64_t a2, float a3)
{
  v25 = MEMORY[0x277D83A90];
  v27 = MEMORY[0x25F8895B0]();
  if (v27 != MEMORY[0x25F8895B0](a2, v25) || (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySfGMd, &_sSaySfGMR), lazy protocol witness table accessor for type [Float] and conformance [A](), (Collection.isEmpty.getter() & 1) != 0))
  {
    lazy protocol witness table accessor for type HIDPFLError and conformance HIDPFLError();
    v15 = swift_allocError();
    *v14 = 71;
    swift_willThrow();
    return v15;
  }

  if (Float.isNaN.getter())
  {
    lazy protocol witness table accessor for type HIDPFLError and conformance HIDPFLError();
    v22 = swift_allocError();
    *v3 = 107;
    swift_willThrow();
    return v22;
  }

  lazy protocol witness table accessor for type [Float] and conformance [A]();
  result = Sequence.contains(where:)();
  if (v24)
  {
    __break(1u);
    __break(1u);
    return result;
  }

  if (result)
  {
    lazy protocol witness table accessor for type HIDPFLError and conformance HIDPFLError();
    v21 = swift_allocError();
    *v5 = 108;
    swift_willThrow();
    return v21;
  }

  if (Sequence.contains(where:)())
  {
    lazy protocol witness table accessor for type HIDPFLError and conformance HIDPFLError();
    v20 = swift_allocError();
    *v6 = 109;
    swift_willThrow();
    return v20;
  }

  if (MEMORY[0x25F8895B0](a2, MEMORY[0x277D83A90]) < 1)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "Range requires lowerBound <= upperBound", 39, 2, "Swift/Range.swift", 17, 2, 760, 0);
    __break(1u);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSnySiGMd, &_sSnySiGMR);
  lazy protocol witness table accessor for type Range<Int> and conformance <> Range<A>();
  Collection<>.makeIterator()();
  while (1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVySnySiGGMd, &_ss16IndexingIteratorVySnySiGGMR);
    IndexingIterator.next()();
    if (v41)
    {
      break;
    }

    result = Array.subscript.getter();
    if (__OFSUB__(v40, 1))
    {
      goto LABEL_66;
    }

    Array.subscript.getter();
    if (v29 < v28)
    {
      lazy protocol witness table accessor for type HIDPFLError and conformance HIDPFLError();
      v19 = swift_allocError();
      *v8 = 70;
      swift_willThrow();
      return v19;
    }
  }

  Collection.first.getter();
  if (v39)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "Unexpectedly found nil while unwrapping an Optional value", 57, 2, "NightingaleTraining/MetricsUtils.swift", 38, 2, 278, 0);
    __break(1u);
  }

  else
  {
    v18 = v38;
  }

  if (a3 <= v18)
  {
    Collection.first.getter();
    if (v30)
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "Unexpectedly found nil while unwrapping an Optional value", 57, 2, "NightingaleTraining/MetricsUtils.swift", 38, 2, 279, 0);
      __break(1u);
    }

    return 0;
  }

  lazy protocol witness table accessor for type [Float] and conformance [A]();
  BidirectionalCollection.last.getter();
  if (v37)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "Unexpectedly found nil while unwrapping an Optional value", 57, 2, "NightingaleTraining/MetricsUtils.swift", 38, 2, 283, 0);
    __break(1u);
  }

  else
  {
    v17 = v36;
  }

  if (v17 > a3)
  {
    result = MEMORY[0x25F8895B0](a2, MEMORY[0x277D83A90], v17);
    if (__OFSUB__(result, 1))
    {
      __break(1u);
LABEL_63:
      __break(1u);
    }

    else
    {
      if (result - 1 < 0)
      {
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "Range requires lowerBound <= upperBound", 39, 2, "Swift/Range.swift", 17, 2, 760, 0);
        __break(1u);
      }

      Collection<>.makeIterator()();
      while (1)
      {
        IndexingIterator.next()();
        if (v35)
        {
          lazy protocol witness table accessor for type HIDPFLError and conformance HIDPFLError();
          v16 = swift_allocError();
          *v13 = 104;
          swift_willThrow();
          return v16;
        }

        result = Array.subscript.getter();
        if (v33 <= a3)
        {
          if (__OFADD__(v34, 1))
          {
            goto LABEL_63;
          }

          result = Array.subscript.getter();
          if (a3 <= v32)
          {
            break;
          }
        }
      }

      if (!__OFADD__(v34, 1))
      {
        Array.subscript.getter();
        result = Array.subscript.getter();
        if (!__OFADD__(v34, 1))
        {
          Array.subscript.getter();
          Array.subscript.getter();
          Array.subscript.getter();
          Array.subscript.getter();
          return 0;
        }

        goto LABEL_65;
      }
    }

    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
    return result;
  }

  BidirectionalCollection.last.getter();
  if (v31)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "Unexpectedly found nil while unwrapping an Optional value", 57, 2, "NightingaleTraining/MetricsUtils.swift", 38, 2, 284, 0);
    __break(1u);
  }

  return 0;
}

uint64_t static AUC.auc(x:y:)(uint64_t a1, uint64_t a2)
{
  v70 = v90;
  v71 = a2;
  v74 = 0;
  v100 = 0;
  v89 = 0;
  v104 = a1;
  v103 = a2;
  v102 = 1065353216;
  v101 = a1;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySfGMd, &_sSaySfGMR);
  v72 = v75;
  v2 = lazy protocol witness table accessor for type [Float] and conformance [A]();
  v73 = Collection<>.diff()(v75, v2, MEMORY[0x277D83AD0]);
  v100 = v73;
  v97 = v73;
  v77 = lazy protocol witness table accessor for type [Float] and conformance [A]();
  Sequence.first(where:)();
  v78 = v76;
  if (v76)
  {
    __break(1u);
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v69 = v98;
  if (v99)
  {
    v67 = 1.0;
    v68 = v78;
  }

  else
  {
    v79 = v73;
    v3 = Sequence.allSatisfy(_:)();
    v65 = v78;
    v66 = v3;
    if ((v66 & 1) == 0)
    {
      lazy protocol witness table accessor for type HIDPFLError and conformance HIDPFLError();
      v63 = 0;
      v64 = swift_allocError();
      *v4 = 64;
      swift_willThrow();
    }

    v102 = -1082130432;
    v67 = -1.0;
    v68 = v65;
  }

  v60 = v68;
  v61 = v67;
  v62 = MEMORY[0x25F8895B0](v71, MEMORY[0x277D83A90]);
  if (v62 <= 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "Range requires lowerBound <= upperBound", 39, 2, "Swift/Range.swift", 17, 2, 760, 0);
    __break(1u);
  }

  v58 = MEMORY[0x277D83A90];
  v92[0] = Array.subscript.getter();
  v92[1] = v6;
  v92[2] = v7;
  v92[3] = v8;
  result = MEMORY[0x25F8895B0](v71, v58);
  v9 = __OFSUB__(result, 1);
  v59 = result - 1;
  if (v9)
  {
    goto LABEL_26;
  }

  if (v59 < 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "Range requires lowerBound <= upperBound", 39, 2, "Swift/Range.swift", 17, 2, 760, 0);
    __break(1u);
  }

  v55 = v60;
  v54 = MEMORY[0x277D83A90];
  v50 = 0;
  v91[0] = Array.subscript.getter();
  v91[1] = v10;
  v91[2] = v11;
  v91[3] = v12;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss10ArraySliceVySfGMd, &_ss10ArraySliceVySfGMR);
  lazy protocol witness table accessor for type ArraySlice<Float> and conformance ArraySlice<A>();
  v49 = v92;
  v48 = v91;
  zip<A, B>(_:_:)();
  outlined destroy of IndexingIterator<ArraySlice<(start: UInt32, end: UInt32)>>(v91);
  outlined destroy of IndexingIterator<ArraySlice<(start: UInt32, end: UInt32)>>(v92);
  v13 = v70;
  v14 = v93;
  v15 = v94;
  v16 = v95;
  v70[9] = v96;
  v13[8] = v16;
  v13[7] = v15;
  v13[6] = v14;
  v17 = v13[6];
  v18 = v13[7];
  v19 = v13[8];
  v13[3] = v13[9];
  v90[2] = v19;
  v90[1] = v18;
  v90[0] = v17;
  v51 = v35;
  MEMORY[0x28223BE20](v35, v20);
  v52 = &v32;
  v33 = closure #3 in static AUC.auc(x:y:);
  v34 = v21;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss12Zip2SequenceVys10ArraySliceVySfGAEGMd, &_ss12Zip2SequenceVys10ArraySliceVySfGAEGMR);
  v22 = lazy protocol witness table accessor for type Zip2Sequence<ArraySlice<Float>, ArraySlice<Float>> and conformance Zip2Sequence<A, B>();
  v23 = v55;
  v25 = _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for thunk for @escaping @callee_guaranteed (@unowned Float, @unowned Float) -> (@unowned Float), v52, v53, v54, MEMORY[0x277D84A98], v22, MEMORY[0x277D84AC0], v24);
  v56 = v23;
  v57 = v25;
  if (v23)
  {
    goto LABEL_23;
  }

  v40 = v57;
  v44 = 0;
  outlined destroy of Zip2Sequence<ArraySlice<Float>, ArraySlice<Float>>(v90);
  v89 = v40;
  v85 = v40;
  v84 = v73;
  zip<A, B>(_:_:)();
  v82 = v86;
  v83 = v87;
  v41 = &v32;
  MEMORY[0x28223BE20](&v32, v26);
  v42 = &v32 - 32;
  *(&v32 - 2) = implicit closure #1 in static AUC.prAUCScore(precison:recall:);
  *(&v32 - 1) = 0;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss12Zip2SequenceVySaySfGACGMd, &_ss12Zip2SequenceVySaySfGACGMR);
  v27 = lazy protocol witness table accessor for type Zip2Sequence<[Float], [Float]> and conformance Zip2Sequence<A, B>();
  v28 = v44;
  v30 = _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for thunk for @escaping @callee_guaranteed (@unowned Float, @unowned Float) -> (@unowned Float), v42, v43, MEMORY[0x277D83A90], MEMORY[0x277D84A98], v27, MEMORY[0x277D84AC0], v29);
  v45 = v28;
  v46 = v30;
  if (!v28)
  {
    v37 = v46;
    v38 = 0;
    outlined destroy of Zip2Sequence<[Float], [Float]>();
    v31 = v38;
    v81 = v37;
    v80 = 0;
    Sequence.reduce<A>(_:_:)();
    v39 = v31;
    if (!v31)
    {
      v36 = 0;
      outlined destroy of [(start: UInt32, end: UInt32)]();
      v35[1] = v61 * v88;
    }

    goto LABEL_25;
  }

LABEL_24:
  __break(1u);
LABEL_25:
  result = 0;
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type ArraySlice<Float> and conformance ArraySlice<A>()
{
  v2 = lazy protocol witness table cache variable for type ArraySlice<Float> and conformance ArraySlice<A>;
  if (!lazy protocol witness table cache variable for type ArraySlice<Float> and conformance ArraySlice<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss10ArraySliceVySfGMd, &_ss10ArraySliceVySfGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type ArraySlice<Float> and conformance ArraySlice<A>);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type ArraySlice<Float> and conformance ArraySlice<A>;
  if (!lazy protocol witness table cache variable for type ArraySlice<Float> and conformance ArraySlice<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss10ArraySliceVySfGMd, &_ss10ArraySliceVySfGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type ArraySlice<Float> and conformance ArraySlice<A>);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type Zip2Sequence<[Float], [Float]> and conformance Zip2Sequence<A, B>()
{
  v2 = lazy protocol witness table cache variable for type Zip2Sequence<[Float], [Float]> and conformance Zip2Sequence<A, B>;
  if (!lazy protocol witness table cache variable for type Zip2Sequence<[Float], [Float]> and conformance Zip2Sequence<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss12Zip2SequenceVySaySfGACGMd, &_ss12Zip2SequenceVySaySfGACGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type Zip2Sequence<[Float], [Float]> and conformance Zip2Sequence<A, B>);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type ReversedCollection<[Float]> and conformance ReversedCollection<A>()
{
  v2 = lazy protocol witness table cache variable for type ReversedCollection<[Float]> and conformance ReversedCollection<A>;
  if (!lazy protocol witness table cache variable for type ReversedCollection<[Float]> and conformance ReversedCollection<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss18ReversedCollectionVySaySfGGMd, &_ss18ReversedCollectionVySaySfGGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type ReversedCollection<[Float]> and conformance ReversedCollection<A>);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type ReversedCollection<[Float]> and conformance ReversedCollection<A>;
  if (!lazy protocol witness table cache variable for type ReversedCollection<[Float]> and conformance ReversedCollection<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss18ReversedCollectionVySaySfGGMd, &_ss18ReversedCollectionVySaySfGGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type ReversedCollection<[Float]> and conformance ReversedCollection<A>);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type Zip2Sequence<[Float], ArraySlice<Float>> and conformance Zip2Sequence<A, B>()
{
  v2 = lazy protocol witness table cache variable for type Zip2Sequence<[Float], ArraySlice<Float>> and conformance Zip2Sequence<A, B>;
  if (!lazy protocol witness table cache variable for type Zip2Sequence<[Float], ArraySlice<Float>> and conformance Zip2Sequence<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss12Zip2SequenceVySaySfGs10ArraySliceVySfGGMd, &_ss12Zip2SequenceVySaySfGs10ArraySliceVySfGGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type Zip2Sequence<[Float], ArraySlice<Float>> and conformance Zip2Sequence<A, B>);
    return WitnessTable;
  }

  return v2;
}

float closure #1 in static AUC.bucketConfusionMatrix(outputs:labels:numThresholds:)@<S0>(float *a1@<X0>, float *a2@<X8>)
{
  result = 1.0 - *a1;
  *a2 = result;
  return result;
}

float *closure #2 in static AUC.bucketConfusionMatrix(outputs:labels:numThresholds:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v14 = a3;
  v21 = a1;
  v20 = a2;
  v15 = "Fatal error";
  v16 = "Float value cannot be converted to Int because it is either infinite or NaN";
  v17 = "Swift/IntegerTypes.swift";
  v18 = "Float value cannot be converted to Int because the result would be less than Int.min";
  v19 = "Float value cannot be converted to Int because the result would be greater than Int.max";
  v35 = 0.0;
  v34 = 0;
  v22 = type metadata accessor for FloatingPointRoundingRule();
  v23 = *(v22 - 8);
  v24 = v22 - 8;
  v25 = (*(v23 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x28223BE20](v21, v20);
  v26 = &v10 - v25;
  v27 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  result = MEMORY[0x28223BE20](v3, v5);
  v28 = &v10 - v27;
  v29 = *result;
  v35 = v29;
  v34 = v7;
  v30 = v7 - 1;
  if (__OFSUB__(v7, 1))
  {
    __break(1u);
    goto LABEL_32;
  }

  v12 = v29 * v30;
  (*(v23 + 104))(v28, *MEMORY[0x277D84680], v22);
  v33 = v12;
  (*(v23 + 16))(v26, v28, v22);
  v13 = (*(v23 + 88))(v26, v22);
  if (v13 == *MEMORY[0x277D84678])
  {
    v33 = roundf(v12);
    goto LABEL_19;
  }

  if (v13 == *MEMORY[0x277D84670])
  {
    v33 = rintf(v12);
    goto LABEL_19;
  }

  if (v13 == *MEMORY[0x277D84680])
  {
    goto LABEL_16;
  }

  if (v13 == *MEMORY[0x277D84688])
  {
    goto LABEL_18;
  }

  if (v13 == *MEMORY[0x277D84660])
  {
    v33 = truncf(v12);
    goto LABEL_19;
  }

  if (v13 != *MEMORY[0x277D84668])
  {
    Float._roundSlowPath(_:)();
    (*(v23 + 8))(v26, v22);
    goto LABEL_19;
  }

  if ((Float.sign.getter() & 1) == 1)
  {
LABEL_18:
    v33 = floorf(v12);
  }

  else
  {
LABEL_16:
    v33 = ceilf(v12);
  }

LABEL_19:
  v11 = v33;
  result = (*(v23 + 8))(v28, v22);
  if ((LODWORD(v11) >> 23) == 255)
  {
    result = _assertionFailure(_:_:file:line:flags:)(v15, 11, 2, v16, 75, 2, v17, 24, 2, 8763, 0);
    __break(1u);
  }

  if (v11 <= -9.2234e18)
  {
    result = _assertionFailure(_:_:file:line:flags:)(v15, 11, 2, v18, 84, 2, v17, 24, 2, 8766, 0);
    __break(1u);
  }

  if (v11 >= 9.2234e18)
  {
    result = _assertionFailure(_:_:file:line:flags:)(v15, 11, 2, v19, 87, 2, v17, 24, 2, 8769, 0);
    __break(1u);
  }

  v10 = v11 - 1;
  if (!__OFSUB__(v11, 1))
  {
    v32 = v10;
    v31 = 0;
    return max<A>(_:_:)();
  }

LABEL_32:
  __break(1u);
  return result;
}

uint64_t static AUC.gatherBucket(labels:bucketIndex:numThresholds:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = 0;
  v12 = a1;
  v11 = a2;
  v10 = a3;
  v8 = 0;
  v9 = Array.init(repeating:count:)();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySiGMd, &_sSaySiGMR);
  v3 = lazy protocol witness table accessor for type [Int] and conformance [A]();
  MEMORY[0x25F889420](&v7, v6, v3);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18EnumeratedSequenceVySaySiGGMd, &_ss18EnumeratedSequenceVySaySiGGMR);
  lazy protocol witness table accessor for type EnumeratedSequence<[Int]> and conformance EnumeratedSequence<A>();
  Sequence.forEach(_:)();

  outlined destroy of [(start: UInt32, end: UInt32)]();
  v5 = v9;

  outlined destroy of [(start: UInt32, end: UInt32)]();
  return v5;
}

float closure #3 in static AUC.bucketConfusionMatrix(outputs:labels:numThresholds:)@<S0>(float *a1@<X0>, float *a2@<X8>, float a3@<S0>)
{
  result = a3 - *a1;
  *a2 = result;
  return result;
}

uint64_t outlined destroy of Zip2Sequence<A.SubSequence, A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  (*(*(a2 - 8) + 8))();
  (*(*(a3 - 8) + 8))(a1 + *(a4 + 52));
  return a1;
}

unint64_t lazy protocol witness table accessor for type EnumeratedSequence<[Int]> and conformance <> EnumeratedSequence<A>()
{
  v2 = lazy protocol witness table cache variable for type EnumeratedSequence<[Int]> and conformance <> EnumeratedSequence<A>;
  if (!lazy protocol witness table cache variable for type EnumeratedSequence<[Int]> and conformance <> EnumeratedSequence<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss18EnumeratedSequenceVySaySiGGMd, &_ss18EnumeratedSequenceVySaySiGGMR);
    lazy protocol witness table accessor for type [Int] and conformance [A]();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type EnumeratedSequence<[Int]> and conformance <> EnumeratedSequence<A>);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type Zip2Sequence<ArraySlice<Float>, ArraySlice<Float>> and conformance Zip2Sequence<A, B>()
{
  v2 = lazy protocol witness table cache variable for type Zip2Sequence<ArraySlice<Float>, ArraySlice<Float>> and conformance Zip2Sequence<A, B>;
  if (!lazy protocol witness table cache variable for type Zip2Sequence<ArraySlice<Float>, ArraySlice<Float>> and conformance Zip2Sequence<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss12Zip2SequenceVys10ArraySliceVySfGAEGMd, &_ss12Zip2SequenceVys10ArraySliceVySfGAEGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type Zip2Sequence<ArraySlice<Float>, ArraySlice<Float>> and conformance Zip2Sequence<A, B>);
    return WitnessTable;
  }

  return v2;
}

uint64_t closure #1 in static AUC.gatherBucket(labels:bucketIndex:numThresholds:)(uint64_t *a1, void *a2, uint64_t a3)
{
  Array.subscript.getter();
  Array.subscript.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySfGMd, &_sSaySfGMR);
  v3 = Array.subscript.modify();
  *v4 = v7 + v6;
  return v3();
}

unint64_t lazy protocol witness table accessor for type EnumeratedSequence<[Int]> and conformance EnumeratedSequence<A>()
{
  v2 = lazy protocol witness table cache variable for type EnumeratedSequence<[Int]> and conformance EnumeratedSequence<A>;
  if (!lazy protocol witness table cache variable for type EnumeratedSequence<[Int]> and conformance EnumeratedSequence<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss18EnumeratedSequenceVySaySiGGMd, &_ss18EnumeratedSequenceVySaySiGGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type EnumeratedSequence<[Int]> and conformance EnumeratedSequence<A>);
    return WitnessTable;
  }

  return v2;
}

uint64_t outlined destroy of A.Element?(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 - 8);
  if (!(*(v5 + 48))(a1, 1))
  {
    (*(v5 + 8))(a1, a2);
  }

  return a1;
}

unint64_t lazy protocol witness table accessor for type ImputationStrategy and conformance ImputationStrategy()
{
  v2 = lazy protocol witness table cache variable for type ImputationStrategy and conformance ImputationStrategy;
  if (!lazy protocol witness table cache variable for type ImputationStrategy and conformance ImputationStrategy)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type ImputationStrategy and conformance ImputationStrategy);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type ImputationStrategy and conformance ImputationStrategy;
  if (!lazy protocol witness table cache variable for type ImputationStrategy and conformance ImputationStrategy)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type ImputationStrategy and conformance ImputationStrategy);
    return WitnessTable;
  }

  return v2;
}

uint64_t static Imputation.imputeFlow(flow:day:days:flowImputed:imputeValue:)(unsigned int a1, int a2, void *a3, unsigned __int8 a4, unsigned int a5)
{
  v18 = a1;
  v17 = a2;
  v16 = a3;
  v15 = a4;
  v14 = a5;
  v11 = *a3;

  v13 = a2;
  v12 = MEMORY[0x25F8897F0](&v13, v11, MEMORY[0x277D84CC0], MEMORY[0x277D84CD0]);

  if ((v12 & 1) != 0 && a1 == a4)
  {
    return a5;
  }

  else
  {
    return a1;
  }
}

void static Imputation.impute(required:available:target:strategy:imputedDay:)(uint64_t result, uint64_t a2, int a3, char a4, uint64_t a5)
{
  v20 = result & 1;
  v19 = a2;
  v18 = a3;
  v17 = a4 & 1;
  v16 = a5;
  if (result)
  {
    if (a4)
    {
      v13 = a3;
      static HIDPFLUtils.findClosest<A>(_:target:)(a2, &v13, MEMORY[0x277D84CC0], MEMORY[0x277D84CD8], MEMORY[0x277D84CF8], &v14);
      if (v15)
      {
        v5 = 0;
        v6 = 1;
      }

      else
      {
        v5 = v14;
        v6 = 0;
      }

      *a5 = v5;
      *(a5 + 4) = v6 & 1;
    }

    else
    {
      v10 = a3;
      static HIDPFLUtils.findClosest<A>(_:lessOrEqualThan:)(a2, &v10, MEMORY[0x277D84CC0], MEMORY[0x277D84CD8], &v11);
      if (v12)
      {
        v7 = 0;
        v8 = 1;
      }

      else
      {
        v7 = v11;
        v8 = 0;
      }

      *a5 = v7;
      *(a5 + 4) = v8 & 1;
    }
  }
}

void static Imputation.ensureImputation(required:available:target:strategy:missingCounter:imputedDay:)(char a1, uint64_t a2, int a3, char a4, void *a5, uint64_t a6)
{
  if (a1)
  {
    static Imputation.impute(required:available:target:strategy:imputedDay:)(1, a2, a3, a4 & 1, a6);
    if (*(a6 + 4))
    {
      if (__OFADD__(*a5, 1))
      {
        __break(1u);
      }

      else
      {
        ++*a5;
      }
    }
  }
}

float static Imputation.imputeCalendarPrediction(calendarPeriodPredictions:target:lastPredictionDay:)(uint64_t a1, int a2, _DWORD *a3)
{
  v21 = 0;
  v20 = 0;
  v24 = a1;
  v23 = a2;
  v22 = a3;
  v17 = *a3;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSf15periodStartMean_Sf0aB3StdtMd, &_sSf15periodStartMean_Sf0aB3StdtMR);
  MEMORY[0x25F8891D0](&v18, &v17, a1, MEMORY[0x277D84CC0]);
  if (v19)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "Unexpectedly found nil while unwrapping an Optional value", 57, 2, "NightingaleTraining/Imputation.swift", 36, 2, 77, 0);
    __break(1u);
  }

  else
  {
    v9 = v18;
  }

  v20 = HIDWORD(v9);
  v21 = v9;
  v14 = a2;
  MEMORY[0x25F8891D0](&v15, &v14, a1, MEMORY[0x277D84CC0], v13, MEMORY[0x277D84CD0]);
  v8 = *&v15;
  if (v16)
  {
    v7 = *&v9;
  }

  else
  {
    v20 = HIDWORD(v15);
    v21 = v15;
    *a3 = a2;
    v7 = v8;
  }

  lazy protocol witness table accessor for type UInt32 and conformance UInt32();
  Float.init<A>(_:)();
  v6 = v3;
  Float.init<A>(_:)();
  return v7 - (v6 - v4);
}

uint64_t getEnumTagSinglePayload for ImputationStrategy(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 <= 0xFE)
    {
      goto LABEL_15;
    }

    v7 = ((a2 + 1) >> 8) + 1;
    v8 = 1;
    if (v7 >= 0x100)
    {
      if (v7 >= 0x10000)
      {
        v2 = 4;
      }

      else
      {
        v2 = 2;
      }

      v8 = v2;
    }

    if (v8 == 1)
    {
      v6 = a1[1];
    }

    else
    {
      v6 = v8 == 2 ? *(a1 + 1) : *(a1 + 1);
    }

    if (v6)
    {
      v5 = (*a1 | ((v6 - 1) << 8)) + 254;
    }

    else
    {
LABEL_15:
      v3 = *a1 - 2;
      if (v3 < 0)
      {
        v3 = -1;
      }

      v5 = v3;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ImputationStrategy(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (a3 > 0xFE)
  {
    v5 = ((a3 + 1) >> 8) + 1;
    v6 = 1;
    if (v5 >= 0x100)
    {
      if (v5 >= 0x10000)
      {
        v3 = 4;
      }

      else
      {
        v3 = 2;
      }

      v6 = v3;
    }

    v7 = v6;
  }

  if (a2 > 0xFE)
  {
    v4 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = v4;
      }

      else if (v7 == 2)
      {
        *(result + 1) = v4;
      }

      else
      {
        *(result + 1) = v4;
      }
    }
  }

  else
  {
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = 0;
      }

      else if (v7 == 2)
      {
        *(result + 1) = 0;
      }

      else
      {
        *(result + 1) = 0;
      }
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void __swiftcall AggMetrics.init(from:)(NightingaleTraining::AggMetrics *__return_ptr retstr, Swift::OpaquePointer from)
{
  memset(__b, 0, sizeof(__b));
  rawValue = from._rawValue;
  v21 = MEMORY[0x25F8895B0]();
  v38 = v21;
  __b[17] = MEMORY[0x25F8895B0](from._rawValue, &type metadata for PerSliceMetrics);
  v37 = from._rawValue;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay19NightingaleTraining15PerSliceMetricsVGMd, &_sSay19NightingaleTraining15PerSliceMetricsVGMR);
  v25 = lazy protocol witness table accessor for type [PerSliceMetrics] and conformance [A]();
  v36 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(closure #1 in AggMetrics.init(from:), 0, v23, MEMORY[0x277D83A90], MEMORY[0x277D84A98], v25, MEMORY[0x277D84AC0], v24);
  v35 = from._rawValue;
  v34 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(closure #2 in AggMetrics.init(from:), 0, v23, MEMORY[0x277D83A90], MEMORY[0x277D84A98], v25, MEMORY[0x277D84AC0], v24);
  v33 = from._rawValue;
  v32 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(closure #3 in AggMetrics.init(from:), 0, v23, MEMORY[0x277D83A90], MEMORY[0x277D84A98], v25, MEMORY[0x277D84AC0], v24);
  v31 = 3.0;
  v16 = static PFLStats.lessEqual<A>(vector:value:)();
  v17 = Array<A>.sum.getter(v16);

  __b[1] = v17;
  *__b = v17 / v21;
  v30 = 6.0;
  v18 = static PFLStats.greater<A>(vector:value:)();
  v19 = Array<A>.sum.getter(v18);

  __b[3] = v19;
  *&__b[2] = v19 / v21;
  static PFLStats.mean(_:)();
  LODWORD(__b[4]) = v2;
  static PFLStats.sum(_:)();
  HIDWORD(__b[4]) = v3;
  v28 = from._rawValue;
  v27 = 0;
  lazy protocol witness table accessor for type [PerSliceMetrics] and conformance [A]();
  Sequence.reduce<A>(_:_:)();
  __b[6] = v29;
  *&__b[5] = v29 / v21;
  static PFLStats.sum(_:)();
  HIDWORD(__b[7]) = v4;
  static PFLStats.mean(_:)();
  LODWORD(__b[7]) = v5;
  v8 = static PFLStats.greater<A>(vector:value:)();
  v9 = Array<A>.sum.getter(v8);

  __b[9] = v9;
  *&__b[8] = v9 / v21;
  static PFLStats.sum(_:)();
  HIDWORD(__b[10]) = v6;
  static PFLStats.mean(_:)();
  LODWORD(__b[10]) = v7;
  v10 = static PFLStats.greaterEqual<A>(vector:value:)();
  v11 = Array<A>.sum.getter(v10);

  __b[12] = v11;
  *&__b[11] = v11 / v21;
  v12 = static PFLStats.greaterEqual<A>(vector:value:)();
  v13 = Array<A>.sum.getter(v12);

  __b[14] = v13;
  *&__b[13] = v13 / v21;
  v14 = static PFLStats.greaterEqual<A>(vector:value:)();
  v15 = Array<A>.sum.getter(v14);

  __b[16] = v15;
  *&__b[15] = v15 / v21;

  memcpy(__dst, __b, sizeof(__dst));

  memcpy(retstr, __dst, sizeof(NightingaleTraining::AggMetrics));
}

float closure #1 in AggMetrics.init(from:)@<S0>(uint64_t *a1@<X0>, float *a2@<X8>)
{
  result = *a1;
  *a2 = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type [PerSliceMetrics] and conformance [A]()
{
  v2 = lazy protocol witness table cache variable for type [PerSliceMetrics] and conformance [A];
  if (!lazy protocol witness table cache variable for type [PerSliceMetrics] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay19NightingaleTraining15PerSliceMetricsVGMd, &_sSay19NightingaleTraining15PerSliceMetricsVGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [PerSliceMetrics] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type [PerSliceMetrics] and conformance [A];
  if (!lazy protocol witness table cache variable for type [PerSliceMetrics] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay19NightingaleTraining15PerSliceMetricsVGMd, &_sSay19NightingaleTraining15PerSliceMetricsVGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [PerSliceMetrics] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

float closure #2 in AggMetrics.init(from:)@<S0>(uint64_t a1@<X0>, float *a2@<X8>)
{
  result = *(a1 + 16);
  *a2 = result;
  return result;
}

float closure #3 in AggMetrics.init(from:)@<S0>(uint64_t a1@<X0>, float *a2@<X8>)
{
  result = *(a1 + 24);
  *a2 = result;
  return result;
}

BOOL closure #4 in AggMetrics.init(from:)@<W0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = *a1;
  result = Bool.intValue.getter(*(a2 + 8) & 1);
  if (__OFADD__(v6, result))
  {
    __break(1u);
  }

  else
  {
    *a3 = v6 + result;
  }

  return result;
}

uint64_t AggMetrics.toDictionary(prefix:)(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd, &_sSS_yptMR);
  _allocateUninitializedArray<A>(_:)();
  v91 = v2;
  v132 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
  v133 = v3;
  countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
  MEMORY[0x25F889DE0](countAndFlagsBits);

  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v5 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("_ep3", 4uLL, 1)._countAndFlagsBits;
  MEMORY[0x25F889DE0](v5);

  outlined destroy of DefaultStringInterpolation();
  *v91 = MEMORY[0x25F889320](v132, v133);
  *(v91 + 8) = v6;
  v154 = *v89;
  v88 = MEMORY[0x277D83A90];
  *(v91 + 40) = MEMORY[0x277D83A90];
  *(v91 + 16) = v154;
  v130 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
  v131 = v7;
  v8 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
  MEMORY[0x25F889DE0](v8);

  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v9 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("_ep3Num", 7uLL, 1)._countAndFlagsBits;
  MEMORY[0x25F889DE0](v9);

  outlined destroy of DefaultStringInterpolation();
  *(v91 + 48) = MEMORY[0x25F889320](v130, v131);
  *(v91 + 56) = v10;
  v153 = *(v89 + 1);
  v90 = MEMORY[0x277D83B88];
  *(v91 + 88) = MEMORY[0x277D83B88];
  *(v91 + 64) = v153;
  v128 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
  v129 = v11;
  v12 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
  MEMORY[0x25F889DE0](v12);

  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v13 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("_nep6", 5uLL, 1)._countAndFlagsBits;
  MEMORY[0x25F889DE0](v13);

  outlined destroy of DefaultStringInterpolation();
  *(v91 + 96) = MEMORY[0x25F889320](v128, v129);
  *(v91 + 104) = v14;
  v152 = v89[4];
  *(v91 + 136) = v88;
  *(v91 + 112) = v152;
  v126 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
  v127 = v15;
  v16 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
  MEMORY[0x25F889DE0](v16);

  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v17 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("_nep6Num", 8uLL, 1)._countAndFlagsBits;
  MEMORY[0x25F889DE0](v17);

  outlined destroy of DefaultStringInterpolation();
  *(v91 + 144) = MEMORY[0x25F889320](v126, v127);
  *(v91 + 152) = v18;
  v151 = *(v89 + 3);
  *(v91 + 184) = v90;
  *(v91 + 160) = v151;
  v124 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
  v125 = v19;
  v20 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
  MEMORY[0x25F889DE0](v20);

  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v21 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("_mae", 4uLL, 1)._countAndFlagsBits;
  MEMORY[0x25F889DE0](v21);

  outlined destroy of DefaultStringInterpolation();
  *(v91 + 192) = MEMORY[0x25F889320](v124, v125);
  *(v91 + 200) = v22;
  v150 = v89[8];
  *(v91 + 232) = v88;
  *(v91 + 208) = v150;
  v122 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
  v123 = v23;
  v24 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
  MEMORY[0x25F889DE0](v24);

  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v25 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("_sae", 4uLL, 1)._countAndFlagsBits;
  MEMORY[0x25F889DE0](v25);

  outlined destroy of DefaultStringInterpolation();
  *(v91 + 240) = MEMORY[0x25F889320](v122, v123);
  *(v91 + 248) = v26;
  v149 = v89[9];
  *(v91 + 280) = v88;
  *(v91 + 256) = v149;
  v120 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
  v121 = v27;
  v28 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
  MEMORY[0x25F889DE0](v28);

  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v29 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("_coverage", 9uLL, 1)._countAndFlagsBits;
  MEMORY[0x25F889DE0](v29);

  outlined destroy of DefaultStringInterpolation();
  *(v91 + 288) = MEMORY[0x25F889320](v120, v121);
  *(v91 + 296) = v30;
  v148 = v89[10];
  *(v91 + 328) = v88;
  *(v91 + 304) = v148;
  v118 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
  v119 = v31;
  v32 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
  MEMORY[0x25F889DE0](v32);

  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v33 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("_coverageNum", 0xCuLL, 1)._countAndFlagsBits;
  MEMORY[0x25F889DE0](v33);

  outlined destroy of DefaultStringInterpolation();
  *(v91 + 336) = MEMORY[0x25F889320](v118, v119);
  *(v91 + 344) = v34;
  v147 = *(v89 + 6);
  *(v91 + 376) = v90;
  *(v91 + 352) = v147;
  v116 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
  v117 = v35;
  v36 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
  MEMORY[0x25F889DE0](v36);

  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v37 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("_meanWidth", 0xAuLL, 1)._countAndFlagsBits;
  MEMORY[0x25F889DE0](v37);

  outlined destroy of DefaultStringInterpolation();
  *(v91 + 384) = MEMORY[0x25F889320](v116, v117);
  *(v91 + 392) = v38;
  v146 = v89[14];
  *(v91 + 424) = v88;
  *(v91 + 400) = v146;
  v114 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
  v115 = v39;
  v40 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
  MEMORY[0x25F889DE0](v40);

  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v41 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("_sumWidth", 9uLL, 1)._countAndFlagsBits;
  MEMORY[0x25F889DE0](v41);

  outlined destroy of DefaultStringInterpolation();
  *(v91 + 432) = MEMORY[0x25F889320](v114, v115);
  *(v91 + 440) = v42;
  v145 = v89[15];
  *(v91 + 472) = v88;
  *(v91 + 448) = v145;
  v112 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
  v113 = v43;
  v44 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
  MEMORY[0x25F889DE0](v44);

  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v45 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("_uxWidthTolerable", 0x11uLL, 1)._countAndFlagsBits;
  MEMORY[0x25F889DE0](v45);

  outlined destroy of DefaultStringInterpolation();
  *(v91 + 480) = MEMORY[0x25F889320](v112, v113);
  *(v91 + 488) = v46;
  v144 = v89[16];
  *(v91 + 520) = v88;
  *(v91 + 496) = v144;
  v110 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
  v111 = v47;
  v48 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
  MEMORY[0x25F889DE0](v48);

  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v49 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("_uxWidthTolerableNum", 0x14uLL, 1)._countAndFlagsBits;
  MEMORY[0x25F889DE0](v49);

  outlined destroy of DefaultStringInterpolation();
  *(v91 + 528) = MEMORY[0x25F889320](v110, v111);
  *(v91 + 536) = v50;
  v143 = *(v89 + 9);
  *(v91 + 568) = v90;
  *(v91 + 544) = v143;
  v108 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
  v109 = v51;
  v52 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
  MEMORY[0x25F889DE0](v52);

  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v53 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("_uxOverallMean", 0xEuLL, 1)._countAndFlagsBits;
  MEMORY[0x25F889DE0](v53);

  outlined destroy of DefaultStringInterpolation();
  *(v91 + 576) = MEMORY[0x25F889320](v108, v109);
  *(v91 + 584) = v54;
  v142 = v89[20];
  *(v91 + 616) = v88;
  *(v91 + 592) = v142;
  v106 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
  v107 = v55;
  v56 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
  MEMORY[0x25F889DE0](v56);

  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v57 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("_uxOverallSum", 0xDuLL, 1)._countAndFlagsBits;
  MEMORY[0x25F889DE0](v57);

  outlined destroy of DefaultStringInterpolation();
  *(v91 + 624) = MEMORY[0x25F889320](v106, v107);
  *(v91 + 632) = v58;
  v141 = v89[21];
  *(v91 + 664) = v88;
  *(v91 + 640) = v141;
  v104 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
  v105 = v59;
  v60 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
  MEMORY[0x25F889DE0](v60);

  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v61 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("_uxOverallGood", 0xEuLL, 1)._countAndFlagsBits;
  MEMORY[0x25F889DE0](v61);

  outlined destroy of DefaultStringInterpolation();
  *(v91 + 672) = MEMORY[0x25F889320](v104, v105);
  *(v91 + 680) = v62;
  v140 = v89[22];
  *(v91 + 712) = v88;
  *(v91 + 688) = v140;
  v102 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
  v103 = v63;
  v64 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
  MEMORY[0x25F889DE0](v64);

  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v65 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("_uxOverallGoodNum", 0x11uLL, 1)._countAndFlagsBits;
  MEMORY[0x25F889DE0](v65);

  outlined destroy of DefaultStringInterpolation();
  *(v91 + 720) = MEMORY[0x25F889320](v102, v103);
  *(v91 + 728) = v66;
  v139 = *(v89 + 12);
  *(v91 + 760) = v90;
  *(v91 + 736) = v139;
  v100 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
  v101 = v67;
  v68 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
  MEMORY[0x25F889DE0](v68);

  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v69 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("_uxOverallOk", 0xCuLL, 1)._countAndFlagsBits;
  MEMORY[0x25F889DE0](v69);

  outlined destroy of DefaultStringInterpolation();
  *(v91 + 768) = MEMORY[0x25F889320](v100, v101);
  *(v91 + 776) = v70;
  v138 = v89[26];
  *(v91 + 808) = v88;
  *(v91 + 784) = v138;
  v98 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
  v99 = v71;
  v72 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
  MEMORY[0x25F889DE0](v72);

  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v73 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("_uxOverallOkNum", 0xFuLL, 1)._countAndFlagsBits;
  MEMORY[0x25F889DE0](v73);

  outlined destroy of DefaultStringInterpolation();
  *(v91 + 816) = MEMORY[0x25F889320](v98, v99);
  *(v91 + 824) = v74;
  v137 = *(v89 + 14);
  *(v91 + 856) = v90;
  *(v91 + 832) = v137;
  v96 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
  v97 = v75;
  v76 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
  MEMORY[0x25F889DE0](v76);

  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v77 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("_uxOverallTolerable", 0x13uLL, 1)._countAndFlagsBits;
  MEMORY[0x25F889DE0](v77);

  outlined destroy of DefaultStringInterpolation();
  *(v91 + 864) = MEMORY[0x25F889320](v96, v97);
  *(v91 + 872) = v78;
  v136 = v89[30];
  *(v91 + 904) = v88;
  *(v91 + 880) = v136;
  v94 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
  v95 = v79;
  v80 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
  MEMORY[0x25F889DE0](v80);

  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v81 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("_uxOverallTolerableNum", 0x16uLL, 1)._countAndFlagsBits;
  MEMORY[0x25F889DE0](v81);

  outlined destroy of DefaultStringInterpolation();
  *(v91 + 912) = MEMORY[0x25F889320](v94, v95);
  *(v91 + 920) = v82;
  v135 = *(v89 + 16);
  *(v91 + 952) = v90;
  *(v91 + 928) = v135;
  v92 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
  v93 = v83;
  v84 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
  MEMORY[0x25F889DE0](v84);

  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v85 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("_nSlices", 8uLL, 1)._countAndFlagsBits;
  MEMORY[0x25F889DE0](v85);

  outlined destroy of DefaultStringInterpolation();
  *(v91 + 960) = MEMORY[0x25F889320](v92, v93);
  *(v91 + 968) = v86;
  v134 = *(v89 + 17);
  *(v91 + 1000) = v90;
  *(v91 + 976) = v134;
  _finalizeUninitializedArray<A>(_:)();
  return Dictionary.init(dictionaryLiteral:)();
}